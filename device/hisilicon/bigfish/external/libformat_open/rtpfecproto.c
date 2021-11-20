#if defined (ANDROID_VERSION)
#include "cutils/properties.h"
#endif
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
//#include "os_support.h"
#include <fcntl.h>
#if HAVE_POLL_H
#include <sys/poll.h>
#endif
#include <sys/time.h>
#include <pthread.h>
//#include "fecdec.h"
#include "extern_fec.h"


//#define MYTEST
static int tmpseq = -1;

static FILE *fp1 = NULL;
static FILE *fp2 = NULL;

#define HIRTP_RTPQUE_BUF_MAX_SIZE (20971520)//20M
#define HIRTP_RTPQUE_BUF_FORBIDDEN_SIZE (4194304)//4M

#define HIRTP_TSQUE_BUF_MAX_SIZE        (2097152)
#define HIRTP_TSQUE_BUF_FORBIDDEN_SIZE  (0)

#define RTP_FEC_GROUP_PKT_NUM_RTP    (255)   //rtp pkt number of every group.
#define RTP_FEC_GROUP_PKT_NUM_FEC    (20)     //fec pkt number of every group.
#define RTP_FEC_GROUP_PKT_NUM        (RTP_FEC_GROUP_PKT_NUM_RTP + RTP_FEC_GROUP_PKT_NUM_FEC)
#define RTP_FEC_RTP_HEAD_LEN         (12)
#define RTP_FEC_FEC_HEAD_LEN         (12)
#define RTP_FEC_CHECK_MISS_COUNT_MAX (10)

typedef struct RTPFECPktGroup {
    char *paPktRtp[RTP_FEC_GROUP_PKT_NUM_RTP];
    int aPktRtpLen[RTP_FEC_GROUP_PKT_NUM_RTP];
    char *paPktFec[RTP_FEC_GROUP_PKT_NUM_FEC];
    int lost_map[RTP_FEC_GROUP_PKT_NUM];
    int pkt_read_pos;
    int rtp_pkt_size;
    int rtp_seq_start;
    int rtp_seq_end;
    int seq_reverse;
} RTPFECPktGroup;

typedef struct RTPFECContext {
    URLContext *parent;
    URLContext *rtp_hd, *fec_hd;
    int rtp_fd, fec_fd;
    void  *ts_queue;
    void  *rtp_queue;
    void  *fec_queue;
    void  *empty_buf_queue;//+ performance 3%
    RTPDemuxContext  *rtpdmx;/*use to parse rtp/rtcp packet*/
    pthread_t stream_thread_tid;
    int is_exit;
    int max_pkt_size;
    RTPFECPktGroup *GroupDone;
    RTPFECPktGroup *GroupCheckMiss;
    RTPFECPktGroup *GroupDownLoading;
    int have_fec;
    int rtp_seq_next;
    int rtp_seq_lost;
    int check_count;
    int fec_init;
    int fec_dec_len;
    int rtp_pkt_num;    /* how many rtp packets each group */
    int fec_pkt_num;    /* how many fec packets each group */
    int test_lost_rtp;
} RTPFECContext;

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

static void _rtpfec_group_done_release(RTPFECContext *s)
{
    int i = 0;
    av_log(NULL, AV_LOG_ERROR, "TEST [%s:%d] _rtpfec_group_done_release", __FUNCTION__, __LINE__);

    for (i = 0; i < s->fec_pkt_num; i++)
    {
        av_free(s->GroupDone->paPktFec[i]);
        s->GroupDone->paPktFec[i] = NULL;
    }

    for (i = 0; i < s->rtp_pkt_num; i++)
    {
        av_free(s->GroupDone->paPktRtp[i]);
        s->GroupDone->paPktRtp[i] = NULL;
    }

    av_free(s->GroupDone);
    s->GroupDone = NULL;
}

static int _rtpfec_group_checkmiss_to_done(RTPFECContext *s)
{
    av_log(NULL, AV_LOG_ERROR, "TEST [%s:%d] _rtpfec_group_checkmiss_to_done", __FUNCTION__, __LINE__);

    if (s->GroupDone)
    {
        av_log(NULL, AV_LOG_ERROR, "TEST [%s:%d] GroupDone is not empty", __FUNCTION__, __LINE__);
        return -1;
    }

    s->GroupDone = s->GroupCheckMiss;
    s->GroupCheckMiss = NULL;

    return 0;
}

static int _rtpfec_create_group_downloading(RTPFECContext *s, int seq_start)
{
    int i = 0;

    if (NULL == s)
    {
        av_log(NULL, AV_LOG_ERROR, "[%s:%d] RTPFECContext is null", __FUNCTION__, __LINE__);
        return -1;
    }

    if (s->GroupDownLoading)
    {
        av_log(NULL, AV_LOG_ERROR, "[%s:%d] GroupDownLoading already exist", __FUNCTION__, __LINE__);
        return 0;
    }

    s->GroupDownLoading = (RTPFECPktGroup *)av_mallocz(sizeof(RTPFECPktGroup));
    if (!s->GroupDownLoading)
    {
        av_log(NULL, AV_LOG_ERROR, "[%s:%d] NOMEM", __FUNCTION__, __LINE__);
        return AVERROR(ENOMEM);
    }

    for (i = 0; i < s->rtp_pkt_num; i++)
    {
        s->GroupDownLoading->paPktRtp[i] = (char *)av_mallocz(s->fec_dec_len);
        if (!s->GroupDownLoading->paPktRtp[i])
        {
            av_log(NULL, AV_LOG_ERROR, "[%s:%d] NOMEM", __FUNCTION__, __LINE__);
            return AVERROR(ENOMEM);
        }
    }

    for (i = 0; i < s->fec_pkt_num; i++)
    {
        s->GroupDownLoading->paPktFec[i] = (char *)av_mallocz(s->fec_dec_len);
        if (!s->GroupDownLoading->paPktFec[i])
        {
            av_log(NULL, AV_LOG_ERROR, "[%s:%d] NOMEM", __FUNCTION__, __LINE__);
            return AVERROR(ENOMEM);
        }
    }

    s->GroupDownLoading->rtp_seq_start = seq_start;
    s->GroupDownLoading->rtp_seq_end = (seq_start + s->rtp_pkt_num - 1) & 0xFFFF;
    if (s->GroupDownLoading->rtp_seq_end < s->GroupDownLoading->rtp_seq_start)
    {
        s->GroupDownLoading->seq_reverse = 1;
    }

    return 0;
}

static int _rtpfec_group_downloading_to_checkmiss(RTPFECContext *s)
{
    int ret = 0;

    av_log(NULL, AV_LOG_ERROR, "TEST [%s:%d] _rtpfec_group_downloading_to_checkmiss", __FUNCTION__, __LINE__);

    if (s->GroupCheckMiss)
    {
        av_log(NULL, AV_LOG_ERROR, "TEST [%s:%d] GroupCheckMiss is not empty", __FUNCTION__, __LINE__);
        return -1;
    }

    s->GroupCheckMiss = s->GroupDownLoading;
    s->GroupDownLoading = NULL;
    s->check_count = 0;

    //ret = _rtpfec_create_group_downloading(s, (s->GroupCheckMiss->rtp_seq_end + 1) & 0xFFFF);

    return ret;
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

static void _rtpfec_group_free(RTPFECPktGroup *Group)
{
    int i = 0;

    if (Group)
    {
        for (i = 0; i < RTP_FEC_GROUP_PKT_NUM_RTP; i++)
        {
            if (Group->paPktRtp[i])
            {
                av_free(Group->paPktRtp[i]);
                Group->paPktRtp[i] = NULL;
            }
        }

        for (i = 0; i < RTP_FEC_GROUP_PKT_NUM_FEC; i++)
        {
            if (Group->paPktFec[i])
            {
                av_free(Group->paPktFec[i]);
                Group->paPktFec[i] = NULL;
            }
        }

        av_free(Group);
    }
}

static void *_rtp_stream_thread_process(void *arg)
{
    RTPFECContext *s = (RTPFECContext *)arg;
    URLContext *rtp_hd = s->rtp_hd;
    URLContext *fec_hd = s->fec_hd;
    URLContext *h = s->parent;
    uint8_t *rcv_buf = NULL;
    DataPacket rtppkt, emptypkt;
    int len, ret, bufsize = 0, rcv_max_pkt_size = 0, n = 0;
    int i;
    struct pollfd p[2] = {{s->rtp_fd, POLLIN, 0}, {s->fec_fd, POLLIN, 0}};
    int poll_delay = 0;
    int mycnt = 0;

    av_log(0, AV_LOG_ERROR, "[%s,%d][HIRTP] _rtp_stream_thread_process thread enter...22\n", __FUNCTION__, __LINE__);

    s->max_pkt_size = RTP_MAX_PACKET_LENGTH;
    memset(&rtppkt, 0, sizeof(DataPacket));
    memset(&emptypkt, 0, sizeof(DataPacket));

    while (s->is_exit == 0)
    {
        if (ff_check_interrupt(&h->interrupt_callback)) {
            av_log(0, AV_LOG_ERROR, "[%s,%d][HIRTP] rtp thread interrupted\n", __FUNCTION__, __LINE__);
            s->is_exit = 1;
            break;
        }

        n = poll(&p[1], 1, poll_delay);
        if (n > 0) {
            /* first try FEC, then RTP */
#ifndef MYTEST
            if (rcv_buf == NULL) {
                if (pktq_get_pkt(s->empty_buf_queue, &emptypkt, 0) >= 0) {
                    rcv_buf = emptypkt.data;
                    bufsize = emptypkt.buf_size;
                } else {
                    rcv_buf = av_malloc(RTP_MAX_PACKET_LENGTH);
                    bufsize = RTP_MAX_PACKET_LENGTH;
                    if (rcv_buf == NULL) {
                        av_log(0, AV_LOG_ERROR, "[%s,%d][HIRTP] no memory...\n", __FUNCTION__, __LINE__);
                        s->is_exit = 1;
                        break;
                    }
                }
            }
            len = ffurl_read(fec_hd, rcv_buf, bufsize);
            if (len > 0) {
                av_log(NULL, AV_LOG_ERROR, "TEST [%s:%d] url_read fec seqstart:%d seqin:%d len:%d", __FUNCTION__, __LINE__, AV_RB16(rcv_buf+12),AV_RB8(rcv_buf+17),len);
                if (len > rcv_max_pkt_size)
                    rcv_max_pkt_size = len;
                rtppkt.data = rcv_buf;
                rtppkt.data_size = len;
                rtppkt.buf_size = bufsize;
                if (pktq_put_pkt(s->fec_queue, &rtppkt, 0) > 0) {
                    rcv_buf = NULL;
                }

                if (len >= bufsize) {
                    av_log(0, AV_LOG_FATAL, "[%s,%d][HIRTP] len %d > bufsize %d is too small\n",
                        __FUNCTION__, __LINE__, len, bufsize);
                }
            }
        }
#endif
        n = poll(&p[0], 1, poll_delay);
        if (n > 0) {
            if (rcv_buf == NULL) {
                if (pktq_get_pkt(s->empty_buf_queue, &emptypkt, 0) >= 0) {
                    rcv_buf = emptypkt.data;
                    bufsize = emptypkt.buf_size;
                } else {
                    rcv_buf = av_malloc(RTP_MAX_PACKET_LENGTH);
                    bufsize = RTP_MAX_PACKET_LENGTH;
                    if (rcv_buf == NULL) {
                        av_log(0, AV_LOG_ERROR, "[%s,%d][HIRTP] no memory...\n", __FUNCTION__, __LINE__);
                        s->is_exit = 1;
                        break;
                    }
                }
            }
            len = ffurl_read(rtp_hd, rcv_buf, bufsize);
            if (len > 0) {
                int seq = 0;
                seq = AV_RB16(rcv_buf + 2);
                av_log(NULL, AV_LOG_ERROR, "TEST [%s:%d] url_read rtp seq:%d len:%d", __FUNCTION__, __LINE__,seq,len);

                if (len > rcv_max_pkt_size)
                    rcv_max_pkt_size = len;
                rtppkt.data = rcv_buf;
                rtppkt.data_size = len;
                rtppkt.buf_size = bufsize;

                if (0 != s->test_lost_rtp)
                {
                    /* testing pkts lost */
                    if (seq % 100 == 0)
                    {
                        mycnt++;
                        if (mycnt > 10)
                        {
#if 0
                            if (NULL == fp1)
                            {
                                fp1 = fopen("/sdcard/before", "w+b");
                            }

                            if (fp1)
                            {
                                av_log(NULL, AV_LOG_ERROR, "TEST [%s:%d] fwrite %02x %02x %02x %02x", __FUNCTION__, __LINE__
                                    ,rcv_buf[0],rcv_buf[1],rcv_buf[2],rcv_buf[3]);
                                fwrite(rcv_buf, 1, s->fec_dec_len, fp1);
                                fflush(fp1);
                            }
#endif
                            av_log(NULL, AV_LOG_ERROR, "TEST [%s:%d] drop rtp pkt seq:%d [%02x %02x %02x %02x]", __FUNCTION__, __LINE__,seq,rcv_buf[0],rcv_buf[1],rcv_buf[2],rcv_buf[3]);
                            pktq_free_data_packet(&rtppkt);
                            rcv_buf = NULL;
                            continue;
                        }
                    }
                }
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

    pktq_put_pkt(s->ts_queue, NULL, 0);
    pktq_put_pkt(s->rtp_queue, NULL, 0);
    pktq_put_pkt(s->fec_queue, NULL, 0);
    pktq_put_pkt(s->empty_buf_queue, NULL, 0);
    if (rcv_buf != NULL) {
        av_free(rcv_buf);
        rcv_buf = NULL;
    }

    av_log(0, AV_LOG_INFO, "[%s,%d][HIRTP] _rtp_stream_thread_process thread exit,rcv_max_pkt_size=%d\n",
        __FUNCTION__, __LINE__, rcv_max_pkt_size);

    return NULL;
}

static int _rtpfec_get_index(int seq_start, int seq_end, int seq_target, int over)
{
    int index = -1;

    if (seq_end < seq_start)
    {
        if (seq_target >= seq_start)
        {
            index = seq_target - seq_start;
        }
        else if (seq_target <= seq_end)
        {
            index = over + 1 + seq_target - seq_start;
        }
    }
    else
    {
        if (seq_target >= seq_start && seq_target <= seq_end)
        {
            index = seq_target - seq_start;
        }
    }

    return index;
}

static int rtpfec_open(URLContext *h, const char *uri, int flags)
{
    RTPFECContext *s = h->priv_data;
    int rtp_port, ttl, connect,
        local_rtp_port, max_packet_size;
    char hostname[256];
    char buf[1024];
    char path[1024];
    const char *p;
    int ret;
    int fec_port = 0;

    av_log(NULL, AV_LOG_ERROR, "TEST [%s:%d][HIRTP] rtpfec_open(%s, %d)\n", __FUNCTION__, __LINE__, uri, flags);
#ifdef MYTEST
    av_log(NULL, AV_LOG_ERROR, "TEST [%s:%d][HIRTP] MYTEST is open\n", __FUNCTION__, __LINE__);
#endif

    s->have_fec = 0;
    s->check_count = 0;
    s->rtp_seq_lost = 0;
    s->rtp_seq_next = -1;
    s->fec_init = 0;
    s->test_lost_rtp = 0;
    s->rtp_pkt_num = 0;
    s->fec_pkt_num = 0;
    s->fec_dec_len = 0;

#if defined (ANDROID_VERSION)
{
    char value[1024];
    if (property_get("media.hiplayer.lostrtp", value, "0") > 0) {
        s->test_lost_rtp = atoi(value);
        av_log(NULL, AV_LOG_ERROR, "[%s:%d] test_lost_rtp:%d \n", __FUNCTION__, __LINE__,s->test_lost_rtp);
    }
}
#endif

    s->parent = h;
    av_url_split(NULL, 0, NULL, 0, hostname, sizeof(hostname), &rtp_port,
                 path, sizeof(path), uri);
    /* extract parameters */
    ttl = -1;
    local_rtp_port = -1;
    max_packet_size = -1;
    connect = 0;

    p = strchr(uri, '?');
    if (p) {
        if (av_find_info_tag(buf, sizeof(buf), "ttl", p)) {
            ttl = strtol(buf, NULL, 10);
        }
        if (av_find_info_tag(buf, sizeof(buf), "localport", p)) {
            local_rtp_port = strtol(buf, NULL, 10);
        }
        if (av_find_info_tag(buf, sizeof(buf), "localrtpport", p)) {
            local_rtp_port = strtol(buf, NULL, 10);
        }
        if (av_find_info_tag(buf, sizeof(buf), "pkt_size", p)) {
            max_packet_size = strtol(buf, NULL, 10);
        }
        if (av_find_info_tag(buf, sizeof(buf), "connect", p)) {
            connect = strtol(buf, NULL, 10);
        }
        if (av_find_info_tag(buf, sizeof(buf), "ChannelFECPort", p)) {
            fec_port = strtol(buf, NULL, 10);
            if (!fec_port)
            {
                av_log(h, AV_LOG_ERROR, "[%s:%d] invalid fec_port", __FUNCTION__, __LINE__);
                goto fail;
            }
            else
            {
                av_log(NULL, AV_LOG_ERROR, "TEST [%s:%d] fec_port:%d", __FUNCTION__, __LINE__,fec_port);
            }
        }
    }

    _build_udp_url(buf, sizeof(buf),
                  hostname, rtp_port, local_rtp_port, ttl, max_packet_size,
                  connect);

    av_log(NULL, AV_LOG_ERROR, "[%s:%d][HIRTP] build rtp url(%s, %d)\n", __FUNCTION__, __LINE__, buf, (flags | AVIO_FLAG_NONBLOCK));
    if (ffurl_open(&s->rtp_hd, buf, (flags | AVIO_FLAG_NONBLOCK), &h->interrupt_callback, NULL) < 0){
        av_log(0, AV_LOG_ERROR, "[%s,%d][HIRTP] ffurl_open return error!\n", __FUNCTION__, __LINE__);
        goto fail;
    }

    _build_udp_url(buf, sizeof(buf),
                  hostname, fec_port, local_rtp_port, ttl, max_packet_size,
                  connect);

    av_log(NULL, AV_LOG_ERROR, "[%s:%d][HIRTP] build fec url(%s, %d)\n", __FUNCTION__, __LINE__, buf, (flags | AVIO_FLAG_NONBLOCK));
    if (ffurl_open(&s->fec_hd, buf, (flags | AVIO_FLAG_NONBLOCK), &h->interrupt_callback, NULL) < 0) {
        av_log(0, AV_LOG_ERROR, "[%s,%d][HIRTP] ffurl_open return error!\n", __FUNCTION__, __LINE__);
        goto fail;
    }

    /* just to ease handle access. XXX: need to suppress direct handle
       access */
    s->rtp_fd = ffurl_get_file_handle(s->rtp_hd);
    s->fec_fd = ffurl_get_file_handle(s->fec_hd);
    s->ts_queue = NULL;
    av_log(NULL, AV_LOG_ERROR, "TEST [%s:%d] create ts_queue", __FUNCTION__, __LINE__);
    if (pktq_create(&s->ts_queue, HIRTP_TSQUE_BUF_MAX_SIZE, HIRTP_TSQUE_BUF_FORBIDDEN_SIZE) < 0) {
        av_log(0, AV_LOG_ERROR, "[%s,%d][HIRTP] create ts queue return error!\n", __FUNCTION__, __LINE__);
        goto fail;
    }

    s->rtp_queue = NULL;
    av_log(NULL, AV_LOG_ERROR, "TEST [%s:%d] create rtp_queue", __FUNCTION__, __LINE__);
    if (pktq_create(&s->rtp_queue, HIRTP_RTPQUE_BUF_MAX_SIZE, HIRTP_RTPQUE_BUF_FORBIDDEN_SIZE) < 0) {
        av_log(0, AV_LOG_ERROR, "[%s,%d][HIRTP] create rtp queue return error!\n", __FUNCTION__, __LINE__);
        goto fail;
    }

    s->fec_queue = NULL;
    av_log(NULL, AV_LOG_ERROR, "TEST [%s:%d] create fec_queue", __FUNCTION__, __LINE__);
    if (pktq_create(&s->fec_queue, HIRTP_RTPQUE_BUF_MAX_SIZE, HIRTP_RTPQUE_BUF_FORBIDDEN_SIZE) < 0) {
        av_log(0, AV_LOG_ERROR, "[%s,%d][HIRTP] create fec queue return error!\n", __FUNCTION__, __LINE__);
        goto fail;
    }

    s->empty_buf_queue = NULL;
    av_log(NULL, AV_LOG_ERROR, "TEST [%s:%d] create empty_buf_queue", __FUNCTION__, __LINE__);
    if (pktq_create(&s->empty_buf_queue, HIRTP_RTPQUE_BUF_MAX_SIZE, -1) < 0) {
        av_log(0, AV_LOG_ERROR, "[%s,%d][HIRTP] create empty buffer queue return error!\n", __FUNCTION__, __LINE__);
        goto fail;
    }

    h->max_packet_size = s->rtp_hd->max_packet_size;
    h->is_streamed = 1;

    s->rtpdmx = ff_rtp_parse_open(NULL, NULL, NULL, 33, 10, 0);
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
    if (s->rtpdmx) {
        ff_rtp_parse_close(s->rtpdmx);
        s->rtpdmx = NULL;
    }
    if (s->rtp_hd) {
        ffurl_close(s->rtp_hd);
        s->rtp_hd = NULL;
    }
    if (s->fec_hd) {
        ffurl_close(s->fec_hd);
        s->fec_hd = NULL;
    }
    if (s->ts_queue) {
        pktq_destroy(s->ts_queue);
        s->ts_queue = NULL;
    }
    if (s->rtp_queue) {
        pktq_destroy(s->rtp_queue);
        s->rtp_queue = NULL;
    }
    if (s->fec_queue) {
        pktq_destroy(s->fec_queue);
        s->fec_queue = NULL;
    }
    if (s->empty_buf_queue) {
        pktq_destroy(s->empty_buf_queue);
        s->empty_buf_queue = NULL;
    }

    return AVERROR(EIO);
}

static int _rtpfec_group_rtppkt_in(RTPFECContext *s, DataPacket *rtppkt, int pktseq)
{
    int index = -1;
    int ret = 0;

    if (s->GroupCheckMiss)
    {
        index = _rtpfec_get_index(s->GroupCheckMiss->rtp_seq_start, s->GroupCheckMiss->rtp_seq_end, pktseq, 0xFFFF);
        if (0 <= index && index < s->rtp_pkt_num)
        {
            /* in check miss */
            av_log(NULL, AV_LOG_ERROR, "TEST [%s:%d] put in GroupCheckMiss seq:%d", __FUNCTION__, __LINE__,pktseq);
            memcpy(s->GroupCheckMiss->paPktRtp[index], rtppkt->data, rtppkt->data_size);
            s->GroupCheckMiss->aPktRtpLen[index] = rtppkt->data_size;
            s->GroupCheckMiss->lost_map[index] = 1;
            av_log(NULL, AV_LOG_ERROR, "TEST [%s:%d] data:%p data:[%02x %02x %02x %02x %02x %02x %02x %02x %02x %02x] len:%d", __FUNCTION__, __LINE__
                    ,s->GroupCheckMiss->paPktRtp[index]
                    ,s->GroupCheckMiss->paPktRtp[index][0],s->GroupCheckMiss->paPktRtp[index][1],s->GroupCheckMiss->paPktRtp[index][2],s->GroupCheckMiss->paPktRtp[index][3],s->GroupCheckMiss->paPktRtp[index][4]
                    ,s->GroupCheckMiss->paPktRtp[index][5],s->GroupCheckMiss->paPktRtp[index][6],s->GroupCheckMiss->paPktRtp[index][7],s->GroupCheckMiss->paPktRtp[index][8],s->GroupCheckMiss->paPktRtp[index][9]
                    ,s->GroupCheckMiss->aPktRtpLen[index]);

            if (rtppkt->data_size > s->GroupCheckMiss->rtp_pkt_size)
            {
                s->GroupCheckMiss->rtp_pkt_size = rtppkt->data_size;
            }

            return 0;
        }
    }

    if (!s->GroupDownLoading)
    {
        av_log(NULL, AV_LOG_ERROR, "TEST [%s:%d] GroupDownLoading is null", __FUNCTION__, __LINE__);
        return -1;
    }

    index = _rtpfec_get_index((s->GroupDownLoading->rtp_seq_end + 1) & 0xFFFF, (s->GroupDownLoading->rtp_seq_end + s->rtp_pkt_num) & 0xFFFF, pktseq, 0xFFFF);
    if (0 <= index && index < s->rtp_pkt_num)
    {
        /* in next group */
        if (s->GroupCheckMiss)
        {
            _rtpfec_group_checkmiss_to_done(s);
        }

        ret = _rtpfec_group_downloading_to_checkmiss(s);
        if (0 != ret)
        {
            return ret;
        }

        ret = _rtpfec_create_group_downloading(s, (s->GroupCheckMiss->rtp_seq_end+1)&0xFFFF);
        if (0 != ret)
        {
            return ret;
        }

        /* in downloading */
        av_log(NULL, AV_LOG_ERROR, "TEST [%s:%d] put in GroupDownLoading seq:%d index:%d", __FUNCTION__, __LINE__,pktseq,index);
        memcpy(s->GroupDownLoading->paPktRtp[index], rtppkt->data, rtppkt->data_size);
        s->GroupDownLoading->aPktRtpLen[index] = rtppkt->data_size;
        s->GroupDownLoading->lost_map[index] = 1;
        av_log(NULL, AV_LOG_ERROR, "TEST 1 data:%p data:[%02x %02x %02x %02x %02x %02x %02x %02x %02x %02x] len:%d"
                ,s->GroupDownLoading->paPktRtp[index]
                ,s->GroupDownLoading->paPktRtp[index][0],s->GroupDownLoading->paPktRtp[index][1],s->GroupDownLoading->paPktRtp[index][2],s->GroupDownLoading->paPktRtp[index][3],s->GroupDownLoading->paPktRtp[index][4]
                ,s->GroupDownLoading->paPktRtp[index][5],s->GroupDownLoading->paPktRtp[index][6],s->GroupDownLoading->paPktRtp[index][7],s->GroupDownLoading->paPktRtp[index][8],s->GroupDownLoading->paPktRtp[index][9]
                ,s->GroupDownLoading->aPktRtpLen[index]);

        if (rtppkt->data_size > s->GroupDownLoading->rtp_pkt_size)
        {
            s->GroupDownLoading->rtp_pkt_size = rtppkt->data_size;
        }

        return 0;
    }

    index = _rtpfec_get_index(s->GroupDownLoading->rtp_seq_start, s->GroupDownLoading->rtp_seq_end, pktseq, 0xFFFF);
    if (0 <= index && index < s->rtp_pkt_num)
    {
        /* in downloading */
        av_log(NULL, AV_LOG_ERROR, "TEST [%s:%d] put in GroupDownLoading seq:%d index:%d", __FUNCTION__, __LINE__,pktseq,index);
        memcpy(s->GroupDownLoading->paPktRtp[index], rtppkt->data, rtppkt->data_size);
        s->GroupDownLoading->aPktRtpLen[index] = rtppkt->data_size;
        s->GroupDownLoading->lost_map[index] = 1;
        av_log(NULL, AV_LOG_ERROR, "TEST 1 data:%p data:[%02x %02x %02x %02x %02x %02x %02x %02x %02x %02x] len:%d"
                ,s->GroupDownLoading->paPktRtp[index]
                ,s->GroupDownLoading->paPktRtp[index][0],s->GroupDownLoading->paPktRtp[index][1],s->GroupDownLoading->paPktRtp[index][2],s->GroupDownLoading->paPktRtp[index][3],s->GroupDownLoading->paPktRtp[index][4]
                ,s->GroupDownLoading->paPktRtp[index][5],s->GroupDownLoading->paPktRtp[index][6],s->GroupDownLoading->paPktRtp[index][7],s->GroupDownLoading->paPktRtp[index][8],s->GroupDownLoading->paPktRtp[index][9]
                ,s->GroupDownLoading->aPktRtpLen[index]);

        if (rtppkt->data_size > s->GroupDownLoading->rtp_pkt_size)
        {
            s->GroupDownLoading->rtp_pkt_size = rtppkt->data_size;
        }

        return 0;
    }
    else
    {
        av_log(NULL, AV_LOG_ERROR, "TEST [%s:%d] discontinue have_fec = 0", __FUNCTION__, __LINE__);
        if (s->GroupCheckMiss)
        {
            _rtpfec_group_checkmiss_to_done(s);
        }

        _rtpfec_group_downloading_to_checkmiss(s);
        s->have_fec = 0;
        return 0;
    }

    return -1;
}

static int _rtpfec_group_fecpkt_in(RTPFECContext *s, DataPacket *fecpkt, int pktseq, int fec_seq)
{
    int ret = 0;

    if (s->GroupCheckMiss && pktseq == s->GroupCheckMiss->rtp_seq_start)
    {
        av_log(NULL, AV_LOG_ERROR, "TEST [%s:%d] fec put in GroupCheckMiss fec_seq:%d", __FUNCTION__, __LINE__,fec_seq);

        memcpy(s->GroupCheckMiss->paPktFec[fec_seq], fecpkt->data + 24, s->fec_dec_len);
        s->GroupCheckMiss->lost_map[s->rtp_pkt_num + fec_seq] = 1;
        av_log(NULL, AV_LOG_ERROR, "TEST [%s:%d] fec data [%02x %02x %02x %02x]", __FUNCTION__, __LINE__
            ,s->GroupCheckMiss->paPktFec[fec_seq][0],s->GroupCheckMiss->paPktFec[fec_seq][1]
            ,s->GroupCheckMiss->paPktFec[fec_seq][2],s->GroupCheckMiss->paPktFec[fec_seq][3]);

        return 0;
    }

    if (!s->GroupDownLoading)
    {
        av_log(NULL, AV_LOG_ERROR, "TEST [%s:%d] GroupDownLoading is null", __FUNCTION__, __LINE__);
        return -1;
    }

    if (pktseq == s->GroupDownLoading->rtp_seq_start)
    {
        av_log(NULL, AV_LOG_ERROR, "TEST [%s:%d] fec put in GroupDownLoading fec_seq:%d", __FUNCTION__, __LINE__,fec_seq);

        memcpy(s->GroupDownLoading->paPktFec[fec_seq], fecpkt->data + 24, s->fec_dec_len);
        s->GroupDownLoading->lost_map[s->rtp_pkt_num + fec_seq] = 1;
        av_log(NULL, AV_LOG_ERROR, "TEST [%s:%d] fec data [%02x %02x %02x %02x]", __FUNCTION__, __LINE__
            ,s->GroupDownLoading->paPktFec[fec_seq][0],s->GroupDownLoading->paPktFec[fec_seq][1]
            ,s->GroupDownLoading->paPktFec[fec_seq][2],s->GroupDownLoading->paPktFec[fec_seq][3]);

        return 0;
    }
    else if (pktseq == ((s->GroupDownLoading->rtp_seq_start + s->rtp_pkt_num) & 0xFFFF))
    {
        ret = _rtpfec_group_downloading_to_checkmiss(s);
        ret = _rtpfec_create_group_downloading(s, (s->GroupCheckMiss->rtp_seq_end + 1) & 0xFFFF);
        if (0 != ret)
        {
            return ret;
        }

        av_log(NULL, AV_LOG_ERROR, "TEST [%s:%d] fec put in next GroupDownLoading fec_seq:%d", __FUNCTION__, __LINE__,fec_seq);

        memcpy(s->GroupDownLoading->paPktFec[fec_seq], fecpkt->data + 24, s->fec_dec_len);
        s->GroupDownLoading->lost_map[s->rtp_pkt_num + fec_seq] = 1;
        av_log(NULL, AV_LOG_ERROR, "TEST [%s:%d] fec data [%02x %02x %02x %02x]", __FUNCTION__, __LINE__
            ,s->GroupDownLoading->paPktFec[fec_seq][0],s->GroupDownLoading->paPktFec[fec_seq][1]
            ,s->GroupDownLoading->paPktFec[fec_seq][2],s->GroupDownLoading->paPktFec[fec_seq][3]);

        return 0;
    }
    else if (pktseq == ((s->GroupDownLoading->rtp_seq_start - s->rtp_pkt_num) & 0xFFFF))
    {
        av_log(NULL, AV_LOG_ERROR, "TEST [%s:%d] free first fec group", __FUNCTION__, __LINE__);

        return 0;
    }
    else
    {
        av_log(NULL, AV_LOG_ERROR, "TEST [%s:%d] discontinue", __FUNCTION__, __LINE__);
        return 0;
        //discontinue;
    }

    return -1;
}

static int _rtpfec_check_miss(RTPFECContext *s)
{
    int i = 0;
    int need_dec = 0;
    int lost_pkt_count = 0;
    int lost_pkt_idx[RTP_FEC_GROUP_PKT_NUM_FEC];
    int lost_fec_count = 0;

    if (!s->GroupCheckMiss)
    {
        return 0;
    }

    for (i = 0; i < s->rtp_pkt_num; i++)
    {
        if (!s->GroupCheckMiss->lost_map[i])
        {
            av_log(NULL, AV_LOG_ERROR, "TEST [%s:%d] rtp seq:%d missed", __FUNCTION__, __LINE__, s->GroupCheckMiss->rtp_seq_start + i);
            need_dec = 1;
            if (lost_pkt_count >= (s->fec_pkt_num - 1))
            {
                av_log(NULL, AV_LOG_ERROR, "TEST [%s:%d] lost too many pkt, don't decode", __FUNCTION__, __LINE__);
                need_dec = 0;
                return 0;
            }

            lost_pkt_idx[lost_pkt_count++] = i;
        }
    }

    av_log(NULL, AV_LOG_ERROR, "TEST [%s:%d] lost_pkt_count:%d", __FUNCTION__, __LINE__,lost_pkt_count);

    for (i = 0; i < s->fec_pkt_num; i++)
    {
        if (!s->GroupCheckMiss->lost_map[s->rtp_pkt_num + i])
        {
            av_log(NULL, AV_LOG_ERROR, "TEST [%s:%d] fec seq:%d missed", __FUNCTION__, __LINE__, i);
            lost_fec_count++;
            if (lost_pkt_count + lost_fec_count >= (s->fec_pkt_num - 1))
            {
                av_log(NULL, AV_LOG_ERROR, "TEST [%s:%d] lost too many pkt, don't decode", __FUNCTION__, __LINE__);
                need_dec = 0;
                return 0;
            }
        }
    }

    if (need_dec)
    {
        for (i = 0; i < lost_pkt_count; i++)
        {
            s->GroupCheckMiss->aPktRtpLen[lost_pkt_idx[i]] = s->fec_dec_len;
        }
    }

    return need_dec;
}

static int _rtpfec_get_fecpkt(RTPFECContext *s)
{
    DataPacket fecpkt, *fecpkt_noheader = NULL;
    int rtp_seq_start = 0, rtp_seq_end = 0, fec_num = 0, fec_seq = 0, dec_len = 0, rtp_num = 0;
    char *p = NULL;
    int ret = 0;

    if (NULL == s)
    {
        av_log(NULL, AV_LOG_ERROR, "[%s:%d] RTPFECContext is null", __FUNCTION__, __LINE__);
        return -1;
    }

#ifndef MYTEST
    memset(&fecpkt, 0, sizeof(DataPacket));

    ret = pktq_get_pkt(s->fec_queue, &fecpkt, 0);
    if (0 >= ret)
    {
        return 0;
    }

    if (0 == s->rtp_seq_lost)
    {
        pktq_free_data_packet(&fecpkt);
        return 0;
    }

    if (RTP_FEC_RTP_HEAD_LEN + RTP_FEC_FEC_HEAD_LEN >= fecpkt.data_size)
    {
        av_log(NULL, AV_LOG_ERROR, "[%s:%d] invalid fec pkt size %d", __FUNCTION__, __LINE__, fecpkt.data_size);
        pktq_free_data_packet(&fecpkt);
        return -1;
    }

    p = fecpkt.data;

    p += RTP_FEC_RTP_HEAD_LEN;
    rtp_seq_start = AV_RB16(p);
    p += 2;
    rtp_seq_end = AV_RB16(p);
    rtp_num = (rtp_seq_end + 1 - rtp_seq_start) & 0xFFFF;
    if (RTP_FEC_GROUP_PKT_NUM_RTP < rtp_num ||
        (s->have_fec && rtp_num != s->rtp_pkt_num))
    {
        av_log(NULL, AV_LOG_ERROR, "[%s:%d] invalid rtp pkt num %d", __FUNCTION__, __LINE__,rtp_num);
        pktq_free_data_packet(&fecpkt);
        return -1;
    }
    p += 2;
    fec_num = AV_RB8(p);
    if (RTP_FEC_GROUP_PKT_NUM_FEC < fec_num ||
        (s->have_fec && fec_num != s->fec_pkt_num))
    {
        av_log(NULL, AV_LOG_ERROR, "[%s:%d] invalid fec pkt num %d", __FUNCTION__, __LINE__,fec_num);
        pktq_free_data_packet(&fecpkt);
        return -1;
    }

    p += 1;
    fec_seq = AV_RB8(p);
    if (fec_num <= fec_seq)
    {
        av_log(NULL, AV_LOG_ERROR, "[%s:%d] invalid fec pkt seq %d", __FUNCTION__, __LINE__,fec_seq);
        pktq_free_data_packet(&fecpkt);
        return -1;
    }

    p += 3;
    dec_len = AV_RB16(p);

    av_log(NULL, AV_LOG_ERROR, "TEST [%s:%d] rtp_seq_start:%d rtp_seq_end:%d fec_num:%d fec_seq:%d dec_len:%d", __FUNCTION__, __LINE__,rtp_seq_start,rtp_seq_end,fec_num,fec_seq,dec_len);
#endif
    /* get start sequence of first group */
    if (0 == s->have_fec)
    {
#ifdef MYTEST
if (-1 != tmpseq)
rtp_seq_end = tmpseq;

if (-1 != tmpseq)
{
#endif
        s->have_fec = 1;
        s->fec_dec_len = dec_len;
        s->rtp_pkt_num = rtp_num;
        s->fec_pkt_num = fec_num;
        av_log(NULL, AV_LOG_ERROR, "TEST [%s:%d] get first fec, first group seq_start:%d dec_len:%d rtpnum:%d fecnum:%d", __FUNCTION__, __LINE__,(rtp_seq_end + 1) & 0xFFFF,dec_len,s->rtp_pkt_num ,s->fec_pkt_num);

        if (s->GroupDownLoading)
        {
            av_log(NULL, AV_LOG_ERROR, "TEST [%s:%d] GroupDownLoading is not empty before getting first fec", __FUNCTION__, __LINE__);
            _rtpfec_group_free(s->GroupDownLoading);
        }

        ret = _rtpfec_create_group_downloading(s, (rtp_seq_end + 1) & 0xFFFF);
        if (0 != ret)
        {
            return ret;
        }
#ifdef MYTEST
}
#endif
    }
#ifndef MYTEST

    ret = _rtpfec_group_fecpkt_in(s, &fecpkt, rtp_seq_start, fec_seq);
    pktq_free_data_packet(&fecpkt);
#endif
    return ret;
}

static int rtpfec_read(URLContext *h, uint8_t *buf, int size)
{
    RTPFECContext *s = h->priv_data;
    DataPacket rtppkt, data_tspkt;
    AVPacket av_tspkt;
    int ret;
    int timeout_ms;
    int rtp_seq_end = 0;
    int rtp_seq = 0;
    int i = 0;
    int need_dec = 0;

    if (s->is_exit) {
        return AVERROR_EOF;
    }

    memset(&rtppkt, 0, sizeof(DataPacket));
    memset(&data_tspkt, 0, sizeof(DataPacket));
    memset(&av_tspkt, 0, sizeof(AVPacket));

    //try to parse more rtp packet if ts data not enough.
    while (pktq_get_data_size(s->ts_queue) < size)
    {
        if (ff_check_interrupt(&h->interrupt_callback)) {
            av_log(0, AV_LOG_ERROR, "[%s,%d][HIRTP] read interrupted\n", __FUNCTION__, __LINE__);
            s->is_exit = 1;
            return AVERROR_EOF;
        }

        if (s->GroupDone)
        {
            av_log(NULL, AV_LOG_ERROR, "TEST [%s:%d] group done pos:%d", __FUNCTION__, __LINE__,s->GroupDone->pkt_read_pos);
            if (s->GroupDone->pkt_read_pos >= s->rtp_pkt_num)
            {
                _rtpfec_group_done_release(s);
                continue;
            }

            if (0 < s->GroupDone->aPktRtpLen[s->GroupDone->pkt_read_pos] && s->GroupDone->paPktRtp[s->GroupDone->pkt_read_pos])
            {
                rtppkt.data = s->GroupDone->paPktRtp[s->GroupDone->pkt_read_pos];
                rtppkt.data_size = s->GroupDone->aPktRtpLen[s->GroupDone->pkt_read_pos];
                av_log(NULL, AV_LOG_ERROR, "TEST 2 data:%p data:[%02x %02x %02x %02x %02x %02x %02x %02x %02x %02x] len:%d"
                        ,rtppkt.data
                        ,rtppkt.data[0],rtppkt.data[1],rtppkt.data[2],rtppkt.data[3],rtppkt.data[4]
                        ,rtppkt.data[5],rtppkt.data[6],rtppkt.data[7],rtppkt.data[8],rtppkt.data[9]
                        ,rtppkt.data_size);
                ret = ff_rtp_parse_packet(s->rtpdmx, &av_tspkt, &rtppkt.data, rtppkt.data_size);
                if (rtppkt.data == NULL)
                {
                    s->GroupDone->paPktRtp[s->GroupDone->pkt_read_pos] = NULL;
                    s->GroupDone->aPktRtpLen[s->GroupDone->pkt_read_pos] = 0;
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

            s->GroupDone->pkt_read_pos++;
            continue;
        }

        if (0 == s->have_fec && s->GroupCheckMiss)
        {
            _rtpfec_group_checkmiss_to_done(s);
            continue;
        }

        ret = _rtpfec_get_fecpkt(s);
        if (0 != ret)
        {
            return ret;
        }

        if (s->have_fec)
        {
            if (s->GroupCheckMiss && RTP_FEC_CHECK_MISS_COUNT_MAX < s->check_count)
            {
                av_log(NULL, AV_LOG_ERROR, "TEST [%s:%d] checking miss", __FUNCTION__, __LINE__);

                need_dec = _rtpfec_check_miss(s);
                av_log(NULL, AV_LOG_ERROR, "TEST [%s:%d] need_dec:%d", __FUNCTION__, __LINE__,need_dec);
#ifdef MYTEST
need_dec= 0;
#endif
                if (need_dec)
                {
                    if (!s->fec_init)
                    {
                        fec_init_adp(s->rtp_pkt_num, s->fec_pkt_num, s->fec_dec_len);
                        av_log(NULL, AV_LOG_ERROR, "TEST [%s:%d] fec_init_adp", __FUNCTION__, __LINE__);
                        s->fec_init = 1;
                    }

                    ret = fec_decode_adp(s->GroupCheckMiss->paPktRtp, s->GroupCheckMiss->paPktFec, s->GroupCheckMiss->lost_map);
                    if (0 != ret)
                    {
                        av_log(NULL, AV_LOG_ERROR, "TEST [%s:%d] fec dec failed ret:%d", __FUNCTION__, __LINE__,ret);
                        return ret;
                    }

                    if (0 != s->test_lost_rtp)
                    {
                        for (i = 0; i < s->rtp_pkt_num; i++)
                        {
                            int seq = 0;
                            seq = i + s->GroupCheckMiss->rtp_seq_start;
                            if (seq % 100 == 0)
                            {
#if 0
                                if (NULL == fp2)
                                {
                                    fp2 = fopen("/sdcard/after", "w+b");
                                }

                                if (fp2)
                                {
                                    av_log(NULL, AV_LOG_ERROR, "TEST [%s:%d] seq:%d fwrite %02x %02x %02x %02x", __FUNCTION__, __LINE__,seq
                                        ,s->GroupCheckMiss->paPktRtp[i][0],s->GroupCheckMiss->paPktRtp[i][1]
                                        ,s->GroupCheckMiss->paPktRtp[i][2],s->GroupCheckMiss->paPktRtp[i][3]);
                                    fwrite(s->GroupCheckMiss->paPktRtp[i], 1, s->fec_dec_len, fp2);
                                    fflush(fp2);
                                }
#endif
                                av_log(NULL, AV_LOG_ERROR, "TEST [%s:%d] dec rtp pkt seq:%d [%02x %02x %02x %02x]", __FUNCTION__, __LINE__,seq
                                        ,s->GroupCheckMiss->paPktRtp[i][0],s->GroupCheckMiss->paPktRtp[i][1]
                                        ,s->GroupCheckMiss->paPktRtp[i][2],s->GroupCheckMiss->paPktRtp[i][3]);
                            }
                        }
                    }
                }

                ret = _rtpfec_group_checkmiss_to_done(s);
                if (0 != ret)
                {
                    return -1;
                }

                continue;
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


            rtp_seq = AV_RB16(rtppkt.data+2);
            s->check_count++;
            av_log(NULL, AV_LOG_ERROR, "TEST [%s:%d] have fec rtp_seq:%d", __FUNCTION__, __LINE__, rtp_seq);
            av_log(NULL, AV_LOG_ERROR, "TEST 0 data:%p data:[%02x %02x %02x %02x %02x %02x %02x %02x %02x %02x] len:%d"
                    ,rtppkt.data
                    ,rtppkt.data[0],rtppkt.data[1],rtppkt.data[2],rtppkt.data[3],rtppkt.data[4]
                    ,rtppkt.data[5],rtppkt.data[6],rtppkt.data[7],rtppkt.data[8],rtppkt.data[9]
                    ,rtppkt.data_size);

            ret = _rtpfec_group_rtppkt_in(s, &rtppkt, rtp_seq);
            if (0 != ret)
            {
                ret = ff_rtp_parse_packet(s->rtpdmx, &av_tspkt, &rtppkt.data, rtppkt.data_size);
                if (rtppkt.data != NULL) {
                    if (pktq_put_pkt(s->empty_buf_queue, &rtppkt, 0) < 0) {
                        av_free(rtppkt.data);
                    }
                    rtppkt.data = NULL;
                    rtppkt.data_size = 0;
                }
            }
            else
            {
                pktq_free_data_packet(&rtppkt);
                continue;
            }
        }
        else
        {
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

            rtp_seq = AV_RB16(rtppkt.data+2);

            /* before sequence discontine, we send rtp org way like rtpprotocol.c */
            if (0 == s->rtp_seq_lost)
            {
                if (-1 != s->rtp_seq_next)
                {
                    if (s->rtp_seq_next != rtp_seq)
                    {
                        s->rtp_seq_lost = 1;
                        av_log(NULL, AV_LOG_ERROR, "TEST [%s:%d] fec enable", __FUNCTION__, __LINE__);
                    }
                }

                s->rtp_seq_next = (rtp_seq + 1) & 0xFFFF;
            }

#ifdef MYTEST
            if (tmpseq == -1)
                tmpseq = rtp_seq;
#endif
            av_log(NULL, AV_LOG_ERROR, "TEST [%s:%d] no fec rtp_seq:%d", __FUNCTION__, __LINE__, rtp_seq);

            ret = ff_rtp_parse_packet(s->rtpdmx, &av_tspkt, &rtppkt.data, rtppkt.data_size);
            if (rtppkt.data != NULL) {
                if (pktq_put_pkt(s->empty_buf_queue, &rtppkt, 0) < 0) {
                    av_free(rtppkt.data);
                }
                rtppkt.data = NULL;
                rtppkt.data_size = 0;
            }
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

static int rtpfec_close(URLContext *h)
{
    RTPFECContext *s = h->priv_data;

    s->is_exit = 1;
    //exit thread first
    if (s->stream_thread_tid)
        pthread_join(s->stream_thread_tid, NULL);
    _rtpfec_group_free(s->GroupDone);
    s->GroupDone = NULL;
    _rtpfec_group_free(s->GroupCheckMiss);
    s->GroupCheckMiss = NULL;
    _rtpfec_group_free(s->GroupDownLoading);
    s->GroupDownLoading = NULL;
    //close rtp packet parser then,
    if (s->rtpdmx)
        ff_rtp_parse_close(s->rtpdmx);
    //close udp connection at the last.
    if (s->rtp_hd)
        ffurl_close(s->rtp_hd);
    if (s->fec_hd)
        ffurl_close(s->fec_hd);
    if (s->ts_queue)
        pktq_destroy(s->ts_queue);
    if (s->rtp_queue)
        pktq_destroy(s->rtp_queue);
    if (s->fec_queue)
        pktq_destroy(s->fec_queue);
    if (s->empty_buf_queue)
        pktq_destroy(s->empty_buf_queue);

    if (s->fec_init)
    {
        fec_cleanup_adp();
        s->fec_init = 0;
    }

    if (fp1)
    {
        fclose(fp1);
    }
    if (fp2)
    {
        fclose(fp2);
    }

    return 0;
}

static int rtpfec_get_file_handle(URLContext *h)
{
    RTPFECContext *s = h->priv_data;
    return s->rtp_fd;
}

///#################no function :ff_rtp_get_rtcp_file_handle£¬this "hirtp" protocol can't be used by rtsp##########
URLProtocol
ff_rtpfec_protocol = {
    .name                = "rtpfec",
    .url_open            = rtpfec_open,
    .url_read            = rtpfec_read,
    .url_write           = NULL,
    .url_close           = rtpfec_close,
    .url_get_file_handle = rtpfec_get_file_handle,
    .priv_data_size      = sizeof(RTPFECContext),
    .flags               = URL_PROTOCOL_FLAG_NETWORK,
};

