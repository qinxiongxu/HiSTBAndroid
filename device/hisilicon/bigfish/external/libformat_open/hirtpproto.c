
#include "libavutil/parseutils.h"
#include "libavutil/avstring.h"
#include "libavcodec/get_bits.h"
#include "avformat.h"
#include "avio_internal.h"
#include "url.h"
#include "rtpdec.h"
#include "svr_utils.h"

#include <unistd.h>
#include <stdarg.h>
#include "internal.h"
#include "network.h"
#include "os_support.h"
#include <fcntl.h>
#if HAVE_POLL_H
#include <sys/poll.h>
#endif
#include <sys/time.h>
#include <pthread.h>

#define HIRTP_RTPQUE_BUF_MAX_SIZE (20971520)//20M
#define HIRTP_RTPQUE_BUF_FORBIDDEN_SIZE (4194304)//4M

#define HIRTP_TSQUE_BUF_MAX_SIZE        (2097152)
#define HIRTP_TSQUE_BUF_FORBIDDEN_SIZE  (0)

#define HIRTP_MAX_PKT_SIZE    (1472)//(600*188)
#define HIRTP_DEFAULT_PKT_SIZE 1472
#define HIRTP_SEQ_MOD (1<<16)
#define HIRTP_READ_TIME_OUT   (5000000) // 5 second
#define HIRTP_RECONNECT_CYCLE (1000000) // 1000ms
#define HIRTP_CHECK_RECONNECT_MAX_CNT (10)

typedef struct HiRTPContext {
    URLContext *parent;
    char       *url;
    URLContext *rtp_hd, *rtcp_hd;
    int rtp_fd, rtcp_fd;
    void  *ts_queue;
    void  *rtp_queue;
    void  *empty_buf_queue;//+ performance 3%
    RTPDemuxContext  *rtpdmx;/*use to parse rtp/rtcp packet*/
    pthread_t stream_thread_tid;
    pthread_t dgram_thread_tid;
    int is_exit;
    int max_pkt_size;
    int flags;
    AVIOInterruptCB interrupt_callback;
} HiRTPContext;


#define APPEND_TO_QUE(list, tail, node) \
    if (tail == NULL) { \
        tail = node; \
        list = tail; \
    } else { \
        (tail)->next = node; \
        tail = node; \
    } \
    (node)->next = NULL;


#define DEL_HEAD_FROM_QUE(list, tail, head) \
    if (list == NULL) { \
        head = NULL; \
    } else { \
        head = list; \
        list = (list)->next; \
        if (list == NULL) { \
            tail = NULL;\
        } \
    }


/**
 * add option to url of the form:
 * "http://host:port/path?option1=val1&option2=val2...
 */
static av_printf_format(3, 4) void _url_add_option(char *buf, int buf_size, const char *fmt, ...)
{
    char buf1[1024];
    va_list ap;

    va_start(ap, fmt);
    if (strchr(buf, '?'))
        av_strlcat(buf, "&", buf_size);
    else
        av_strlcat(buf, "?", buf_size);
    vsnprintf(buf1, sizeof(buf1), fmt, ap);
    av_strlcat(buf, buf1, buf_size);
    va_end(ap);
}

static void _build_udp_url(char *buf, int buf_size,
                          const char *hostname, int port,
                          int local_port, int ttl,
                          int max_packet_size, int connect)
{
    ff_url_join(buf, buf_size, "udp", NULL, hostname, port, NULL);
    if (local_port >= 0)
        _url_add_option(buf, buf_size, "localport=%d", local_port);
    if (ttl >= 0)
        _url_add_option(buf, buf_size, "ttl=%d", ttl);
    if (max_packet_size >=0)
        _url_add_option(buf, buf_size, "pkt_size=%d", max_packet_size);
    if (connect)
        _url_add_option(buf, buf_size, "connect=1");
    _url_add_option(buf, buf_size, "fifo_size=0");
}

static int _close_connection(HiRTPContext *s)
{
    if (s->rtp_hd) {
        ffurl_close(s->rtp_hd);
        s->rtp_hd = NULL;
        s->rtp_fd = -1;
    }
    if (s->rtcp_hd) {
        ffurl_close(s->rtcp_hd);
        s->rtcp_hd = NULL;
        s->rtcp_fd = -1;
    }

    return 0;
}

static int _open_connection(HiRTPContext *s, const char *uri, int flags)
{
    int rtp_port, rtcp_port,
        ttl, connect,
        local_rtp_port, local_rtcp_port, max_packet_size;
    char hostname[256];
    char buf[1024];
    char path[1024];
    const char *p;

    av_url_split(NULL, 0, NULL, 0, hostname, sizeof(hostname), &rtp_port,
                 path, sizeof(path), uri);
    /* extract parameters */
    ttl = -1;
    rtcp_port = rtp_port+1;
    local_rtp_port = -1;
    local_rtcp_port = -1;
    max_packet_size = -1;
    connect = 0;

    p = strchr(uri, '?');
    if (p) {
        if (av_find_info_tag(buf, sizeof(buf), "ttl", p)) {
            ttl = strtol(buf, NULL, 10);
        }
        if (av_find_info_tag(buf, sizeof(buf), "rtcpport", p)) {
            rtcp_port = strtol(buf, NULL, 10);
        }
        if (av_find_info_tag(buf, sizeof(buf), "localport", p)) {
            local_rtp_port = strtol(buf, NULL, 10);
        }
        if (av_find_info_tag(buf, sizeof(buf), "localrtpport", p)) {
            local_rtp_port = strtol(buf, NULL, 10);
        }
        if (av_find_info_tag(buf, sizeof(buf), "localrtcpport", p)) {
            local_rtcp_port = strtol(buf, NULL, 10);
        }
        if (av_find_info_tag(buf, sizeof(buf), "pkt_size", p)) {
            max_packet_size = strtol(buf, NULL, 10);
        }
        if (av_find_info_tag(buf, sizeof(buf), "connect", p)) {
            connect = strtol(buf, NULL, 10);
        }
    }

    _build_udp_url(buf, sizeof(buf),
                  hostname, rtp_port, local_rtp_port, ttl, max_packet_size,
                  connect);

    av_log(NULL, AV_LOG_INFO, "[%s:%d][HIRTP] build rtp url(%s, %d)\n", __FUNCTION__, __LINE__, buf, (flags | AVIO_FLAG_NONBLOCK));
    if (ffurl_open(&s->rtp_hd, buf, (flags | AVIO_FLAG_NONBLOCK), &s->interrupt_callback, NULL) < 0){
        av_log(0, AV_LOG_ERROR, "[%s,%d][HIRTP] ffurl_open return error!\n", __FUNCTION__, __LINE__);
        goto fail;
    }

   // if (local_rtp_port>=0 && local_rtcp_port<0)
   //     local_rtcp_port = ff_udp_get_local_port(s->rtp_hd) + 1;

    _build_udp_url(buf, sizeof(buf),
                  hostname, rtcp_port, local_rtcp_port, ttl, max_packet_size,
                  connect);

    av_log(NULL, AV_LOG_INFO, "[%s:%d][HIRTP] build rtcp url(%s, %d)\n", __FUNCTION__, __LINE__, buf, (flags | AVIO_FLAG_NONBLOCK | AVIO_FLAG_WRITE));

    if (ffurl_open(&s->rtcp_hd, buf, (flags | AVIO_FLAG_NONBLOCK | AVIO_FLAG_READ_WRITE), &s->interrupt_callback, NULL) < 0) {
        av_log(0, AV_LOG_ERROR, "[%s,%d][HIRTP] ffurl_open return error!\n", __FUNCTION__, __LINE__);
    }

    /* just to ease handle access. XXX: need to suppress direct handle
       access */
    s->rtp_fd = ffurl_get_file_handle(s->rtp_hd);
    if (s->rtcp_hd)
    {
        s->rtcp_fd = ffurl_get_file_handle(s->rtcp_hd);
    }
    else
    {
        s->rtcp_fd = -1;
    }

    return 0;

fail:
    _close_connection(s);

    return -1;
}

static int  _rtp_test_max_pkt_size(HiRTPContext *s)
{
    int ret, len, fd_max, nb_pkt = 0;
    URLContext *h = s->parent;
    unsigned char rcv_buf[HIRTP_MAX_PKT_SIZE];
    fd_set rfds;
    struct timeval tv;
    unsigned start = av_getsystemtime();

    while(s->is_exit == 0)
    {
        if (ff_check_interrupt(&h->interrupt_callback)) {
            s->is_exit = 1;
            break;
        }

        if (av_getsystemtime() - start >= 50 && nb_pkt>= 2) {
            break;
        } else if (nb_pkt >= 10) {
            break;
        }

        fd_max = s->rtp_fd;
        FD_ZERO(&rfds);
        FD_SET(s->rtp_fd, &rfds);
        tv.tv_sec = 0;
        tv.tv_usec = 50 * 1000;
        ret = select(fd_max + 1, &rfds, NULL, NULL, &tv);
        if (ret > 0 && FD_ISSET(s->rtp_fd, &rfds)) {
            len = recv(s->rtp_fd, rcv_buf, HIRTP_MAX_PKT_SIZE, 0);
            if (len > 0) {
                nb_pkt ++;
                if (len > s->max_pkt_size) {
                    s->max_pkt_size = len;
                }
            }
        }
    }

    if (s->max_pkt_size <= 0) {
        s->max_pkt_size = HIRTP_DEFAULT_PKT_SIZE;
        ret = -1;
    } else {
        ret = 0;
    }
    s->max_pkt_size ++;
    av_log(0, AV_LOG_INFO, "[%s,%d][HIRTP] test max_pkt_size=%d, nb_pkt=%d, consume=%u ms\n",
        __FUNCTION__, __LINE__, s->max_pkt_size, nb_pkt, (av_getsystemtime() - start));

    return ret;
}

static int _make_fd_array(HiRTPContext *s, int fds[2], int *fd_num, int *fd_max)
{
    int num, max;

    if (s->rtp_fd < 0) {
        av_log(0, AV_LOG_ERROR, "[%s,%d][HIRTP] rtp_fd=%d invalid\n", __FUNCTION__, __LINE__, s->rtp_fd);
        return -1;
    }

    fds[0] = s->rtp_fd;
    fds[1] = s->rtcp_fd;
    *fd_max = FFMAX(s->rtp_fd, s->rtcp_fd);
    if (s->rtcp_fd >= 0) {
        *fd_num = 2;
    } else {
        *fd_num = 1;
    }

    return 0;
}

static void *_rtp_stream_thread_process(void *arg)
{
    HiRTPContext *s = (HiRTPContext *)arg;
    URLContext *h = s->parent;
    uint8_t *rcv_buf = NULL;
    DataPacket rtppkt = {0}, emptypkt = {0};
    int len, ret, fd_max = -1, bufsize = 0, rcv_max_pkt_size = 0;
    int fd[2], i, fd_num = 0, check_reconnect_cnt = 0;
    fd_set rfds;
    struct timeval tv;
    int64_t timeout_start_time;//set <=0 to disable check timeout
    int64_t last_pkt_recv_time  = -1;
    int64_t last_reconnect_time = -1, now_time;

    av_log(0, AV_LOG_INFO, "[%s,%d][HIRTP] _rtp_stream_thread_process thread enter...22\n", __FUNCTION__, __LINE__);

    //_rtp_test_max_pkt_size(s);
    s->max_pkt_size = HIRTP_MAX_PKT_SIZE;
    _make_fd_array(s, fd, &fd_num, &fd_max);
    timeout_start_time = av_gettime();
    while(s->is_exit == 0)
    {
        if (ff_check_interrupt(&h->interrupt_callback)) {
            av_log(0, AV_LOG_ERROR, "[%s,%d][HIRTP] rtp thread interrupted\n", __FUNCTION__, __LINE__);
            s->is_exit = 1;
            break;
        }

       if (timeout_start_time > 0 && llabs(av_gettime() - timeout_start_time) > HIRTP_READ_TIME_OUT) {
           av_log(NULL, AV_LOG_ERROR, "[%s,%d] HiRtp no data received for %d us, return error !\n",
            __FUNCTION__, __LINE__, HIRTP_READ_TIME_OUT);
           s->is_exit = 1;
           break;
       }

        if (check_reconnect_cnt >= HIRTP_CHECK_RECONNECT_MAX_CNT) {
            now_time = av_gettime();
            if (timeout_start_time < 0 &&
                last_pkt_recv_time > 0 &&
                (now_time - last_pkt_recv_time) >= HIRTP_READ_TIME_OUT &&
                (now_time - last_reconnect_time >= HIRTP_RECONNECT_CYCLE)) {
                 av_log(0, AV_LOG_INFO, "[%s,%d][HIRTP] haven't received pkts for %lld ms, do reconnecting...\n",
                    __FUNCTION__, __LINE__, (now_time - last_pkt_recv_time)/1000);
                _close_connection(s);
                fd_num = 0;
                last_reconnect_time = now_time;
                if (0 == _open_connection(s, s->url, s->flags)) {
                    _make_fd_array(s, fd, &fd_num, &fd_max);
                    check_reconnect_cnt = 0;
                    last_pkt_recv_time = now_time;
                }
            }
        }

        if (fd_num <= 0) {
            usleep(10000);
            continue;
        }

        FD_ZERO(&rfds);
        FD_SET(fd[0], &rfds);

        if (fd[1] >= 0)
            FD_SET(fd[1], &rfds);

        tv.tv_sec = 0;
        tv.tv_usec = 50 * 1000;
        ret = select(fd_max + 1, &rfds, NULL, NULL, &tv);
        if (ret > 0) {
            for (i = 0; i < fd_num; i++)
            {
                if (FD_ISSET(fd[i], &rfds)) {
                    //get buffer
                    if (rcv_buf == NULL) {
                        if (pktq_get_pkt(s->empty_buf_queue, &emptypkt, 0) >= 0) {
                            rcv_buf = emptypkt.data;
                            bufsize = emptypkt.buf_size;
                        } else {
                            rcv_buf = av_malloc(HIRTP_MAX_PKT_SIZE);
                            bufsize = HIRTP_MAX_PKT_SIZE;
                            if (rcv_buf == NULL) {
                                av_log(0, AV_LOG_ERROR, "[%s,%d][HIRTP] no memory...\n", __FUNCTION__, __LINE__);
                                s->is_exit = 1;
                                break;
                            }
                        }
                    }
                    len = recv(fd[i], rcv_buf, bufsize, 0);
                    if (len > 0) {
                        check_reconnect_cnt = 0;
                        last_pkt_recv_time = av_gettime();
                        if (timeout_start_time > 0) {
                            timeout_start_time = -1;
                            av_log(0, AV_LOG_INFO, "[%s,%d][HIRTP] first pkt received, disable timeout checking!seq=%u\n",
                                __FUNCTION__, __LINE__, (unsigned)((unsigned)rcv_buf[2]<<8|rcv_buf[3]));
                        }
                        if (len > rcv_max_pkt_size)
                            rcv_max_pkt_size = len;
                        rtppkt.data = rcv_buf;
                        rtppkt.data_size = len;
                        rtppkt.buf_size = bufsize;
                        if (pktq_put_pkt(s->rtp_queue, &rtppkt, 0) > 0) {
                            rcv_buf = NULL;
                        }

                        if (len >= bufsize) {
                            av_log(0, AV_LOG_FATAL, "[%s,%d][HIRTP] len %d > bufsize %d is too small\n",
                                __FUNCTION__, __LINE__, len, bufsize);
                        }
                    }
                }
            }
        } else if (ret <= 0) {
            if (ret < 0) {
                av_log(0, AV_LOG_ERROR, "[%s,%d][HIRTP] select return error=%d(errno=%d,%s)\n",
                    __FUNCTION__, __LINE__, ret, errno, strerror(errno));
            }
            check_reconnect_cnt ++;
        }
    }

    pktq_put_pkt(s->ts_queue, NULL, 0);
    pktq_put_pkt(s->rtp_queue, NULL, 0);
    pktq_put_pkt(s->empty_buf_queue, NULL, 0);
    if (rcv_buf != NULL) {
        av_free(rcv_buf);
        rcv_buf = NULL;
    }

    av_log(0, AV_LOG_INFO, "[%s,%d][HIRTP] _rtp_stream_thread_process thread exit,rcv_max_pkt_size=%d\n",
        __FUNCTION__, __LINE__, rcv_max_pkt_size);

    return NULL;
}

static int hirtp_open(URLContext *h, const char *uri, int flags)
{
    HiRTPContext *s = h->priv_data;
    int ret;

    av_log(NULL, AV_LOG_INFO, "[%s:%d][HIRTP] hirtp_open(%s, %d)\n", __FUNCTION__, __LINE__, uri, flags);

    s->url   = av_strdup(uri);
    if (!s->url) {
        av_log(NULL, AV_LOG_ERROR, "[%s:%d][HIRTP] malloc for uri='%s' error\n", __FUNCTION__, __LINE__, uri);
        return AVERROR(ENOMEM);
    }
    s->parent = h;
    s->flags  = flags;
    s->interrupt_callback = h->interrupt_callback;

    if (_open_connection(s, uri, flags) < 0) {
        goto fail;
    }

    s->ts_queue = NULL;
    if (pktq_create(&s->ts_queue, HIRTP_TSQUE_BUF_MAX_SIZE, HIRTP_TSQUE_BUF_FORBIDDEN_SIZE) < 0) {
        av_log(0, AV_LOG_ERROR, "[%s,%d][HIRTP] create ts queue return error!\n", __FUNCTION__, __LINE__);
        goto fail;
    }

    s->rtp_queue = NULL;
    if (pktq_create(&s->rtp_queue, HIRTP_RTPQUE_BUF_MAX_SIZE, HIRTP_RTPQUE_BUF_FORBIDDEN_SIZE) < 0) {
        av_log(0, AV_LOG_ERROR, "[%s,%d][HIRTP] create rtp queue return error!\n", __FUNCTION__, __LINE__);
        goto fail;
    }

    s->empty_buf_queue = NULL;
    if (pktq_create(&s->empty_buf_queue, -1, -1) < 0) {
        av_log(0, AV_LOG_ERROR, "[%s,%d][HIRTP] create empty buffer queue return error!\n", __FUNCTION__, __LINE__);
        goto fail;
    }

    //set @max_packet_size to 0 for using avio buffer seek(seek backward, or forward).
    h->max_packet_size = 0;//s->rtp_hd->max_packet_size;
    h->is_streamed = 1;

    s->rtpdmx = ff_rtp_parse_open(NULL, NULL, s->rtcp_hd, 33, 10, 0);
    if (s->rtpdmx == NULL) {
        av_log(0, AV_LOG_ERROR, "[%s,%d][HIRTP] ff_rtp_parse_open error!\n",
            __FUNCTION__, __LINE__);
        goto fail;
    }

    s->is_exit = 0;
    ret = pthread_create(&s->stream_thread_tid, NULL, _rtp_stream_thread_process, (void *)s);
    if (ret < 0) {
        av_log(0, AV_LOG_ERROR, "[%s,%d][HIRTP] pthread_create return  error=%d\n",
            __FUNCTION__, __LINE__, ret);
        goto fail;
    }

    return 0;

 fail:
    s->is_exit = 1;
    if (s->stream_thread_tid)
        pthread_join(s->stream_thread_tid, NULL);
    if (s->dgram_thread_tid)
        pthread_join(s->dgram_thread_tid, NULL);
    if (s->rtpdmx) {
        ff_rtp_parse_close(s->rtpdmx);
        s->rtpdmx = NULL;
    }
    _close_connection(s);
    if (s->ts_queue) {
        pktq_destroy(s->ts_queue);
        s->ts_queue = NULL;
    }
    if (s->rtp_queue) {
        pktq_destroy(s->rtp_queue);
        s->rtp_queue = NULL;
    }
    if (s->empty_buf_queue) {
        pktq_destroy(s->empty_buf_queue);
        s->empty_buf_queue = NULL;
    }
    if (s->url) {
        av_freep(&s->url);
    }

    return AVERROR(EIO);
}

static int hirtp_read(URLContext *h, uint8_t *buf, int size)
{
    HiRTPContext *s = h->priv_data;
    DataPacket rtppkt, data_tspkt = {0};
    AVPacket av_tspkt;
    int ret;
    int timeout_ms;

    if (s->is_exit) {
        return AVERROR_EOF;
    }
    //try to parse more rtp packet if ts data not enough.
    while(pktq_get_data_size(s->ts_queue) < size)
    {
        if (ff_check_interrupt(&h->interrupt_callback)) {
            av_log(0, AV_LOG_ERROR, "[%s,%d][HIRTP] read interrupted\n", __FUNCTION__, __LINE__);
            s->is_exit = 1;
            return AVERROR_EOF;
        }

        //if there are pkts in ts queue, do not block to get rtp pkt from rtp_queue.
        if (pktq_get_data_size(s->ts_queue) > 0) {
            timeout_ms = 0;
        } else {
            timeout_ms = -1;
        }
        //get a rtp pkt.
        ret = pktq_get_pkt(s->rtp_queue, &rtppkt, timeout_ms);
        if (ret <= 0) {
            //no rtp packet, if there are packets in ts_queue,break and try to read.
            if (pktq_get_data_size(s->ts_queue) > 0) {
                break;
            }
            return ret;
        }

        //ff_rtp_check_and_send_back_rr(s->rtpdmx, ret);

        ret = ff_rtp_parse_packet(s->rtpdmx, &av_tspkt, &rtppkt.data, rtppkt.data_size);
        if (rtppkt.data != NULL) {
            if (pktq_put_pkt(s->empty_buf_queue, &rtppkt, 0) < 0) {
                av_free(rtppkt.data);
            }
            rtppkt.data = NULL;
            rtppkt.data_size = 0;
        }
        if (ret == 0 || ret == 1) {
            //write ts packet to ts_queue.
            data_tspkt.data = av_tspkt.data;
            data_tspkt.data_size = av_tspkt.size;
            data_tspkt.buf_size  = av_tspkt.size;
            if (pktq_put_pkt(s->ts_queue, &data_tspkt, 0) < 0) {
                av_free(data_tspkt.data);
            }

            //have some more packets waiting.
            if (ret == 1) {
                do {
                    ret = ff_rtp_parse_packet(s->rtpdmx, &av_tspkt, NULL, 0);
                    if (ret == 0 || ret == 1) {
                        data_tspkt.data = av_tspkt.data;
                        data_tspkt.data_size = av_tspkt.size;
                        data_tspkt.buf_size  = av_tspkt.size;
                        if (pktq_put_pkt(s->ts_queue, &data_tspkt, 0) < 0) {
                            av_free(data_tspkt.data);
                        }
                    }
                } while(ret == 1);
            }
        }
    }

    ret = pktq_read(s->ts_queue, buf, size, 0);
    return ret;
}

static int hirtp_write(URLContext *h, const uint8_t *buf, int size)
{
    HiRTPContext *s = h->priv_data;
    int ret = -1;
    URLContext *hd;

    if (buf[1] >= RTCP_SR && buf[1] <= RTCP_APP) {
        /* RTCP payload type */
        hd = s->rtcp_hd;
    } else {
        /* RTP payload type */
        hd = s->rtp_hd;
    }

    if (hd)
    {
        ret = ffurl_write(hd, buf, size);
    }

    return ret;
}

static int hirtp_close(URLContext *h)
{
    HiRTPContext *s = h->priv_data;

    s->is_exit = 1;
    //exit thread first
    if (s->stream_thread_tid)
        pthread_join(s->stream_thread_tid, NULL);
    if (s->dgram_thread_tid)
        pthread_join(s->dgram_thread_tid, NULL);
    //close rtp packet parser then,
    if (s->rtpdmx)
        ff_rtp_parse_close(s->rtpdmx);
    //close udp connection at the last.
    _close_connection(s);
    if (s->ts_queue)
        pktq_destroy(s->ts_queue);
    if (s->rtp_queue)
        pktq_destroy(s->rtp_queue);
    if (s->empty_buf_queue)
        pktq_destroy(s->empty_buf_queue);
    if (s->url) {
        av_freep(&s->url);
    }
    return 0;
}

static int hirtp_get_file_handle(URLContext *h)
{
    HiRTPContext *s = h->priv_data;
    return s->rtp_fd;
}


///#################no function :ff_rtp_get_rtcp_file_handle£¬this "hirtp" protocol can't be used by rtsp##########
URLProtocol
ff_hirtp_protocol = {
    .name                = "hirtp",
    .url_open            = hirtp_open,
    .url_read            = hirtp_read,
    .url_write           = hirtp_write,
    .url_close           = hirtp_close,
    .url_get_file_handle = hirtp_get_file_handle,
    .priv_data_size      = sizeof(HiRTPContext),
    .flags               = URL_PROTOCOL_FLAG_NETWORK,
};

