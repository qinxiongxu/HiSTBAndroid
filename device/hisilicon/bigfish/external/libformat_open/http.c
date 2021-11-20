/*
 * HTTP protocol for ffmpeg client
 * Copyright (c) 2000, 2001 Fabrice Bellard
 *
 * This file is part of FFmpeg.
 *
 * FFmpeg is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * FFmpeg is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with FFmpeg; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
 */

#if defined (ANDROID_VERSION)
#include "cutils/properties.h"
#endif

#include "libavutil/avstring.h"
#include "avformat.h"
#include <unistd.h>
#include "internal.h"
#include "network.h"
#include "http.h"
#include "os_support.h"
#include "httpauth.h"
#include "url.h"
#include "libavutil/opt.h"
#include <libgen.h>

/* XXX: POST protocol is not completely implemented because ffmpeg uses
   only a subset of it. */

/* used for protocol handling */
#define MAX_REDIRECTS 8

#define MAX_RETRYHTTP_NUM 3
#define HTTP_MAX_STREAM_FILE_SIZE   (128849018880)   //120 G
#define HTTP_READ_TIMEOUT           (15000000) //15s
#define HTTP_CONNECT_TIMEOUT        (60000000) //2 minutes

#define __FILE_NAME__           av_filename(__FILE__)

#define ISDIGIT(x)  (isdigit((int)  ((unsigned char)x)))

//h00182012, to be compatible with videos in "vimeo.com" by ANDROID_UA.
const char* IPAD_UA    = "AppleCoreMedia/1.0.0.7B367 (iPad; U; CPU OS 4_3_3 like Mac OS X)";
const char* ANDROID_UA = "Mozilla/5.0 (Linux; U; Android 2.2; en-us) AppleWebKit/522+ (KHTML, like Gecko) Safari/419.3";
const char* VIMEO_DN   = "vimeo.com";
/*it's a workaround solution for pptv playing,It's a valid user-agent for pptv.com*/
const char* PPTV_UA = "stagefright/1.2 (Linux;Android 4.4.2)";
const char* PPTV_KEY = "pptv";

#define OFFSET(x) offsetof(HTTPContext, x)
#define D AV_OPT_FLAG_DECODING_PARAM
#define E AV_OPT_FLAG_ENCODING_PARAM
#define DEC AV_OPT_FLAG_DECODING_PARAM

#ifndef HI_ADVCA_FUNCTION_RELEASE
static const AVOption options[] = {
{"chunked_post", "use chunked transfer-encoding for posts", OFFSET(chunked_post), AV_OPT_TYPE_INT, {.dbl = 1}, 0, 1, E},
{"headers", "custom HTTP headers, can override built in default headers", OFFSET(headers), AV_OPT_TYPE_STRING, { 0 }, 0, 0, D|E},
{"user-agent", "override User-Agent header", OFFSET(user_agent), AV_OPT_TYPE_STRING, {.str = NULL}, 0, 0, DEC},
{"post_data", "set custom HTTP post data", OFFSET(post_data), AV_OPT_TYPE_BINARY, .flags = D|E},
{"multiple_requests", "use persistent connections", OFFSET(multiple_requests), AV_OPT_TYPE_INT, {.i64 = 0}, 0, 1, D|E},
{"has_reconnect", "upper protocol has reconnect function or not", OFFSET(has_reconnect), AV_OPT_TYPE_INT, {.i64 = 0}, 0,1, D|E},
{"hls_connection", "",  OFFSET(hls_connection), AV_OPT_TYPE_INT, {.i64 = 0}, 0,1, D|E},
{"referer", "override referer header", OFFSET(referer), AV_OPT_TYPE_STRING, {.str = NULL}, 0, 0, DEC},
{"cookies", "set cookies to be sent in applicable future requests, use newline delimited Set-Cookie HTTP field value syntax", OFFSET(cookies), AV_OPT_TYPE_STRING, {.str = NULL}, 0, 0, DEC},
{"not_support_byte_range", "not support byte range", OFFSET(not_support_byte_range), AV_OPT_TYPE_STRING, {.str = NULL}, 0, 0, DEC},
{"download_speed_collect_freq_ms", "download speed collect freq", OFFSET(download_speed_collect_freq_ms), AV_OPT_TYPE_INT, {.i64 = 0}, 0, INT_MAX, D|E},
/* add for jiangsu telecom */
{"cdn_error", "",  OFFSET(cdn_error), AV_OPT_TYPE_STRING, {.str = NULL}, 0, 0, DEC},
/* end */
{"download_size_once", "download size each connection, in MB", OFFSET(download_size_once), AV_OPT_TYPE_INT, {.i64 = 0}, 0, INT_MAX, D|E},
{"traceId", "",  OFFSET(traceId), AV_OPT_TYPE_STRING, { 0 }, 0, 0, D|E},
{ "offset", "initial byte offset", OFFSET(off), AV_OPT_TYPE_INT64, { .i64 = 0 }, 0, INT64_MAX, D },
{ "end_offset", "try to limit the request to bytes preceding this offset", OFFSET(end), AV_OPT_TYPE_INT64, { .i64 = 0 }, 0, INT64_MAX, D },
{NULL}
};
#else

static const AVOption options[] = {
{"chunked_post", "",  OFFSET(chunked_post), AV_OPT_TYPE_INT, {.dbl = 1}, 0, 1, E},
{"headers", "",  OFFSET(headers), AV_OPT_TYPE_STRING, { 0 }, 0, 0, D|E},
{"user-agent", "",  OFFSET(user_agent), AV_OPT_TYPE_STRING, {.str = NULL}, 0, 0, DEC},
{"post_data", "",  OFFSET(post_data), AV_OPT_TYPE_BINARY, .flags = D|E},
{"multiple_requests", "",  OFFSET(multiple_requests), AV_OPT_TYPE_INT, {.i64 = 0}, 0, 1, D|E},
{"has_reconnect", "",  OFFSET(has_reconnect), AV_OPT_TYPE_INT, {.i64 = 0}, 0,1, D|E},
{"hls_connection", "",  OFFSET(hls_connection), AV_OPT_TYPE_INT, {.i64 = 0}, 0,1, D|E},
{"referer", "",  OFFSET(referer), AV_OPT_TYPE_STRING, {.str = NULL}, 0, 0, DEC},
{"cookies", "", OFFSET(cookies), AV_OPT_TYPE_STRING, {.str = NULL}, 0, 0, DEC},
{"not_support_byte_range", "",  OFFSET(not_support_byte_range), AV_OPT_TYPE_STRING, {.str = NULL}, 0, 0, DEC},
{"download_speed_collect_freq_ms", "",  OFFSET(download_speed_collect_freq_ms), AV_OPT_TYPE_INT, {.i64 = 0}, 0, INT_MAX, D|E},
/* add for jiangsu telecom */
{"cdn_error", "",  OFFSET(cdn_error), AV_OPT_TYPE_STRING, {.str = NULL}, 0, 0, DEC},
/* end */
{"download_size_once", "download size each connection, in MB", OFFSET(download_size_once), AV_OPT_TYPE_INT, {.i64 = 0}, 0, INT_MAX, D|E},
{"traceId", "",  OFFSET(traceId), AV_OPT_TYPE_STRING, { 0 }, 0, 0, D|E},
{ "offset", "initial byte offset", OFFSET(off), AV_OPT_TYPE_INT64, { .i64 = 0 }, 0, INT64_MAX, D },
{ "end_offset", "try to limit the request to bytes preceding this offset", OFFSET(end), AV_OPT_TYPE_INT64, { .i64 = 0 }, 0, INT64_MAX, D },
{NULL}
};
#endif

#define HTTP_CLASS(flavor)\
static const AVClass flavor ## _context_class = {\
    .class_name     = #flavor,\
    .item_name      = av_default_item_name,\
    .option         = options,\
    .version        = LIBAVUTIL_VERSION_INT,\
}

HTTP_CLASS(http);
HTTP_CLASS(https);

static int http_connect(URLContext *h, const char *path, const char *local_path,
                        const char *hoststr, const char *auth,
                        const char *proxyauth, int *new_location);

extern char *strcasestr(const char *haystack, const char *needle);

//wkf34645 get download speed, bit/second
static void get_downspeed(URLContext *h, int len, int64_t time, int64_t starttime,
    int64_t endtime)
{
    if (len < 0)
    {
        return;
    }
    int64_t download_interval = 0;
    HTTPContext *s = h->priv_data;
    AVIOContext *pb = h->parent;
    if (NULL == pb)
        return;
    DownSpeed *downspeed = &(pb->downspeed);
    if (NULL == downspeed)
        return;
    if(pb->downspeedable == 0)
    {
        pb->downspeedable = 1;
        downspeed->down_size = 0;
        downspeed->down_time = 0;
        downspeed->speed = 0;
        downspeed->head = NULL;
        downspeed->tail = NULL;
    }

    DownNode *node = av_malloc(sizeof(DownNode));
    if(NULL == node)
        return;

    node->down_size = len;
    node->down_time = time;
    node->down_starttime = starttime;
    node->down_endtime = endtime;
    node->next = NULL;
    if(NULL == downspeed->head)
    {
        downspeed->head = node;
        downspeed->tail = node;
        downspeed->down_size = node->down_size;
        downspeed->down_time = node->down_time;
    }
    else
    {
        downspeed->tail->next = node;
        downspeed->tail = node;
        downspeed->down_size += node->down_size;
        downspeed->down_time += node->down_time;
    }

    while(SPEED_SIZE < downspeed->down_size)
    {
        node = downspeed->head;
        downspeed->head = downspeed->head->next;
        downspeed->down_size -= node->down_size;
        downspeed->down_time -= node->down_time;
        av_free(node);
        node = NULL;
    }

    if (s->download_speed_collect_freq_ms > 0)
    {
        if (0 == s->last_get_speed_time)
        {
            s->last_get_speed_time = av_gettime();
        }

        if (s->download_speed_collect_freq_ms * 1000 > (av_gettime() - s->last_get_speed_time))
        {
            return;
        }
    }

    if(downspeed->down_time != 0)
    {
        if (NULL == downspeed->tail || NULL == downspeed->head)
            return;
        download_interval = downspeed->tail->down_endtime - downspeed->head->down_starttime;
        if (0 == download_interval)
            return;
        downspeed->speed = (downspeed->down_size * 1000000 * 8) / download_interval;
        s->last_get_speed_time = av_gettime();
    }
}
//wkf34645, reset to 0 while disconnection
static void reset_downspeed(URLContext *h)
{
    AVIOContext *pb = h->parent;
    if (NULL == pb)
        return;
    DownSpeed *downspeed = &(pb->downspeed);

    if (NULL == downspeed)
        return;
    downspeed->down_size = 0;
    downspeed->down_time = 0;
    downspeed->speed = 0;
    DownNode *node = NULL;

    while(NULL != downspeed->head)
    {
        node = downspeed->head;
        downspeed->head = downspeed->head->next;
        av_free(node);
    }
    downspeed->head = NULL;
    downspeed->tail = NULL;
}

/* return non zero if error */
static int http_open_cnx(URLContext *h)
{
    const char *path, *proxy_path, *lower_proto = "tcp", *local_path;
    char *basenamestr = NULL;
    char hostname[MAX_URL_SIZE], hoststr[MAX_URL_SIZE], proto[10];
    char auth[MAX_URL_SIZE], proxyauth[MAX_URL_SIZE] = "";
    char path1[MAX_URL_SIZE];
    char buf[MAX_URL_SIZE], urlbuf[MAX_URL_SIZE];
    char old_location[MAX_URL_SIZE];
    int port, use_proxy, err, location_changed = 0, redirects = 0,willtry = 0, try_max_count = 1;
    HTTPAuthType cur_auth_type, cur_proxy_auth_type;
    HTTPContext *s = h->priv_data;
    URLContext *hd = NULL;
    int64_t old_off = s->off;

    AVDictionary *opts = NULL;

#if defined (ANDROID_VERSION)
    // 'http.proxy' should be the same name as in android framework
    char value[PROPERTY_VALUE_MAX];
    property_get("http.proxy", value, "null");
    proxy_path = (char*)value;
#else
    proxy_path = getenv("http_proxy");
#endif
    use_proxy = (proxy_path != NULL) && !getenv("no_proxy") &&
        av_strstart(proxy_path, "http://", NULL);

    memset(old_location, 0, MAX_URL_SIZE);
    memcpy(old_location, s->location, sizeof(s->location));
    willtry = 0;
    /* fill the dest addr */
 redo:
     hd = NULL;
    /* needed in any case to build the host string */
    s->willtry = 0;
    av_url_split(proto, sizeof(proto), auth, sizeof(auth),
                 hostname, sizeof(hostname), &port,
                 path1, sizeof(path1), s->location);
    ff_url_join(hoststr, sizeof(hoststr), NULL, NULL, hostname, port, NULL);

    if (!av_strncasecmp(proto, "https", 5)) {
        lower_proto = "tls";
        use_proxy = 0;
        if (port < 0)
            port = 443;
    }

    if (port < 0)
        port = 80;

    if (path1[0] == '\0')
        path = "/";
    else
        path = path1;

    local_path = path;

    if (use_proxy) {
        /* Reassemble the request URL without auth string - we don't
         * want to leak the auth to the proxy. */
        ff_url_join(urlbuf, sizeof(urlbuf), proto, NULL, hostname, port, "%s",
                    path1);
        path = urlbuf;
        av_url_split(NULL, 0, proxyauth, sizeof(proxyauth),
                     hostname, sizeof(hostname), &port, NULL, 0, proxy_path);
        //z00228123 add for proxyauth,try basic type first,
        //it may fail then use certain type that defined by the server
        s->proxy_auth_state.auth_type = HTTP_AUTH_BASIC;
    }

    ff_url_join(buf, sizeof(buf), lower_proto, NULL, hostname, port, NULL);
    av_dict_set(&opts, "stream_uri", s->location, 0);

    if (!s->hd) {
        err = ffurl_open(&hd, buf, AVIO_FLAG_READ_WRITE,
                         &h->interrupt_callback, &opts);
        av_dict_free(&opts);
        if (err < 0)
        {
            av_log(NULL, AV_LOG_WARNING,"[%s:%d]: url_open_h ret='%d',errno:%d\n",__FILE_NAME__, __LINE__, err, ff_neterrno());
            if ((err == AVERROR(ENETUNREACH) || err == AVERROR(EAGAIN))
                && !ff_check_interrupt(&(h->interrupt_callback)))
            {
                goto redo;
            }
            s->http_code = err;
            if (s->has_reconnect && !ff_check_interrupt(&(h->interrupt_callback)))
            {
                return err;
            }
            goto fail;
        }

        s->hd = hd;
    } else {
        av_log(NULL, AV_LOG_ERROR, "use keep-alive mode %s \n", path);
        av_dict_free(&opts);
    }

    cur_auth_type = s->auth_state.auth_type;
    cur_proxy_auth_type = s->auth_state.auth_type;
    basenamestr = NULL;

    if (NULL != path) {
        basenamestr = basename(path);
    }

    err = http_connect(h, path, local_path, hoststr, auth, proxyauth, &location_changed);

    if (err < 0)
    {
        av_log(NULL, AV_LOG_ERROR, "[%s:%d] connect failed,ret=%d,http code:%d\n",
            __FILE_NAME__,__LINE__,err, s->http_code);

        if (NULL != s->cdn_error && NULL != url_errorcode_cb)
        {
            url_errorcode_cb(h->interrupt_callback.opaque, NETWORK_PRIVATE, s->cdn_error);
        }

        if (s->has_reconnect && !ff_check_interrupt(&(h->interrupt_callback)))
        {
            return AVERROR(ECONNRESET);
        }

        /* shipinjidi: when seek quickly and many times, the player may exit play,
         * it is because server not return data, the tcp_read function do timeout and return 0,
         * then http_getc return "AVERROR(ETIMEDOUT)". we should reconnect when connect timeout */
        if (CHECK_NET_INTERRUPT(err) && err != AVERROR(ETIMEDOUT))
        {
            goto fail;
        }
        /*if err is EPIPE,reset connect*/
        if (err == AVERROR(EPIPE))
        {
            err = AVERROR(ECONNRESET);
            goto fail;
        }

        /* case 1: FIXME, if server doesn't support Range request, connection will fail, we can't fix this issue now.
         * case 2: when first connection timeout, if we set seek_flag to 0, reconnection will without Range request,
         * server will not return Content-range to us, we can't get filesize, and read will timeout when eof.
         * So we can't set seek_flag to 0 here.
         * case 3: when read timeout, if we set seek_flag to 0, reconnection will without Range request, we can't continue
         * read the data from old position, this may cause eof. So we can't set seek_flag to 0 here. */
        #if 0
        if (s->change_seek_flag ==1 && s->seek_flag != 0
            && (s->http_code == 416 || s->http_code == 406 || s->http_code == 403 || s->http_code == 400 || s->http_code == 0 || s->http_code == 500))
        {
            if (s->http_code == 500)
            {
                av_log(0, AV_LOG_ERROR, "[%s:%d] http_connect return 500, s->off:%lld, filesize: %lld \n",
                    __FILE_NAME__, __LINE__, s->discard_off, s->filesize);
            }

            s->seek_flag = 0;

            url_close(hd);
            s->hd = NULL;
            goto redo;
        }
        #endif

        //*add by liangwei for test
        //if (s->http_code < 400 || s->http_code >= 500)
        if (!s->willtry && willtry < try_max_count && 0 == s->http_code)
        {
            av_log(0, AV_LOG_WARNING, "[%s:%d]  retry http connect \n", __FILE_NAME__, __LINE__);
            s->willtry = 1;
            try_max_count = 5;
            goto retry;
        }
        goto fail;
    }
    if (s->http_code == 401) {
        if (cur_auth_type == HTTP_AUTH_NONE && s->auth_state.auth_type != HTTP_AUTH_NONE) {
            ffurl_close(hd);
            s->hd = NULL;
            goto redo;
        } else {
            err = -1;
            goto fail;
        }
    }
    if (s->http_code == 407) {
        if (cur_proxy_auth_type == HTTP_AUTH_NONE &&
            s->proxy_auth_state.auth_type != HTTP_AUTH_NONE) {
            ffurl_close(hd);
            s->hd = NULL;
            goto redo;
        } else {
            err = -1;
            goto fail;
        }
    }
    if ((s->http_code == 301 || s->http_code == 302 || s->http_code == 303 || s->http_code == 307)
        && location_changed == 1)
    {
        /* url moved, get next */
        ffurl_close(hd);
        s->hd = NULL;
        if (redirects++ >= MAX_REDIRECTS)
            return AVERROR(EIO);
        location_changed = 0;
        s->filesize  = -1;   /* filesize changed */
        s->chunksize = -1;  /* chunksize changed */

        char tmp[MAX_URL_SIZE];
        memset(tmp, 0, sizeof(tmp));

        // free last host name string
        if (h->moved_url) {
            av_free(h->moved_url);
            h->moved_url = NULL;
        }

        snprintf(tmp, sizeof(tmp), "%s", s->location);
        h->moved_url = av_strdup(tmp);
        s->off = old_off;

        av_log(NULL, AV_LOG_ERROR, "[%s:%d] http_code:%d, http reconnect to :%s, s->off:%d \n", __FILE_NAME__, __LINE__,
            s->http_code, h->moved_url, s->off);
        goto redo;
    }//end if

retry:
    if (s->willtry && location_changed && willtry < try_max_count)
    {
        av_log(NULL, AV_LOG_ERROR, "[%s:%d] %s is hijacked by AD, read again\n", __FILE_NAME__, __LINE__, old_location);
        willtry++;
        s->seek_flag = 1;
        s->willtry = 0;
        s->off = old_off;
        s->change_seek_flag = 1;
        memcpy(s->location, old_location, MAX_URL_SIZE);
        s->buf_ptr = s->buffer;
        s->buf_end = s->buffer;
        ffurl_close(hd);
        s->hd = NULL;
        goto redo;
    }

    h->port = port;
    av_strlcpy(&h->ipaddr, &s->hd->ipaddr, sizeof(h->ipaddr));
    av_log(NULL, AV_LOG_ERROR, "[%s:%d] port=%d, s->hd->ipaddr=%s \n", __FILE_NAME__, __LINE__, port, s->hd->ipaddr);

    if (err >= 0)
    {
        return 0;
    }
 fail:
    if (hd)
        ffurl_close(hd);
    s->hd = NULL;
    return err;
}

int ff_http_do_new_request(URLContext *h, const char *uri)
{
    HTTPContext *s = h->priv_data;

    s->off = 0;
    av_strlcpy(s->location, uri, sizeof(s->location));

    return http_open_cnx(h);
}

static int http_open(URLContext *h, const char *uri, int flags)
{
    HTTPContext *s = h->priv_data;
    int retryTimes = 0;
    int ret;
    int64_t   start_time = 0;
    char hoststr[MAX_URL_SIZE];

    av_log(NULL, AV_LOG_ERROR, "[%s:%d] http_open(%s, %d)\n", __FILE_NAME__, __LINE__,uri,flags);
    h->is_streamed = 1;

    s->filesize = -1;
    s->seek_flag = 1;   /* changed by taijie */
    //s->off = 0;//set offset to 0 while connecting
    s->one_connect_limited_size = 0;

#if defined (ANDROID_VERSION)
        /* assign http download size per connection.
         * FIXME: only support 'connection:close' */
        char buffer[PROPERTY_VALUE_MAX];
        memset(buffer, 0, PROPERTY_VALUE_MAX);
        if(property_get("media.http.limitedsize", buffer, NULL)
            && atoi(buffer) > 0 && (!s->hls_connection))
        {
            s->one_connect_limited_size = atoi(buffer)*1024*1024;
            if (0 > s->one_connect_limited_size)
            {
                s->one_connect_limited_size = 0;
            }
        }
        else if (0 < s->download_size_once && (!s->hls_connection))
        {
            s->one_connect_limited_size = s->download_size_once * 1024 * 1024;
            if (0 > s->one_connect_limited_size)
            {
                s->one_connect_limited_size = 0;
            }
        }
        else
        {
            s->one_connect_limited_size = 0;
        }

        av_log(NULL, AV_LOG_ERROR, "one connect limited size: %dMB", s->one_connect_limited_size/(1024*1024));
#endif

    //s->end = s->one_connect_limited_size;

    //h00186041 can not resume play when reconnect the network in suho sometimes
    s->reconnect = 0; /* init, connect status. */
    s->http_code = 0;
    s->errtag = 0;
    s->change_seek_flag = 1;//can be changed
    av_strlcpy(s->location, uri, sizeof(s->location));
    start_time = av_gettime();

    if (s->headers) {
        int len = strlen(s->headers);
        if (len < 2 || av_strcmp("\r\n", s->headers + len - 2))
            av_log(h, AV_LOG_WARNING, "No trailing CRLF found in HTTP header.\n");
    }
    else if (NULL == s->user_agent) //UA is specified in headers
    {
        av_url_split(NULL, 0, NULL, 0, hoststr, sizeof(hoststr), NULL, NULL, 0, uri);
        const char* ua = IPAD_UA;
        if (NULL != strstr(hoststr, VIMEO_DN))
           ua = ANDROID_UA;
        else if (NULL != strcasestr(uri,PPTV_KEY))
           ua = PPTV_UA;/*it's a workaround solution for pptv playing*/

        av_log(NULL,AV_LOG_ERROR, "[%s:%d] set UA = %s!\n", __FILE_NAME__, __LINE__, ua);
        av_opt_set(s, "user-agent", ua, 0);
    }

    ret = http_open_cnx(h);
    while (!s->has_reconnect && CHECK_NET_INTERRUPT(ret)  && abs(av_gettime() - start_time) <= HTTP_CONNECT_TIMEOUT)
    {
        if (ff_check_interrupt(&(h->interrupt_callback)) > 0)
        {
            av_log(NULL, AV_LOG_ERROR, "[%s:%d] interrupt exit \n", __FILE_NAME__, __LINE__);
            break;
        }

        if (s->http_code >= 400 &&  s->http_code < 1000)
        {
            url_errorcode_cb(h->interrupt_callback.opaque, s->http_code, "http");
        }
        else
        {
            url_errorcode_cb(h->interrupt_callback.opaque, ret, "http");
        }

        s->errtag = 1;
        ret = http_open_cnx(h);
        usleep(10*1000);
        av_log(NULL, AV_LOG_ERROR, "[%s:%d] ret=%d\n", __FILE_NAME__, __LINE__,ret);
    }

    if (ret < 0)
    {
        if (s->http_code >= 400 &&  s->http_code < 1000)
        {
            url_errorcode_cb(h->interrupt_callback.opaque, s->http_code, "http");
        }
        else
        {
            url_errorcode_cb(h->interrupt_callback.opaque, ret, "http");
        }
        s->errtag = 1;
    }
    //s->seek_flag = 0;   /* changed by taijie */
    av_log(NULL, AV_LOG_ERROR, "[%s:%d] http_open s->seek_flag=%d\n", __FILE_NAME__, __LINE__,s->seek_flag);
    if (abs(av_gettime() - start_time) > HTTP_CONNECT_TIMEOUT)
    {
        url_errorcode_cb(h->interrupt_callback.opaque, NETWORK_TIMEOUT, "http");
    }

    if (s->errtag > 0 && ret == 0)
    {
        url_errorcode_cb(h->interrupt_callback.opaque, NETWORK_NORMAL, "http");
        s->errtag   = 0;
    }

    return ret;
}
static int http_getc(HTTPContext *s)
{
    int len;
    if (s->buf_ptr >= s->buf_end) {
        len = ffurl_read(s->hd, s->buffer, BUFFER_SIZE);
        if (len < 0) {
           av_log(NULL, AV_LOG_ERROR, "[%s:%d] url_read='%d'\n", __FILE_NAME__, __LINE__, len);
            return len;
        } else if (len == 0) {
            av_log(NULL, AV_LOG_ERROR, "[%s:%d] tcp read error, len:%d\n", __FILE_NAME__, __LINE__, len);
            return AVERROR(ETIMEDOUT);
        } else {
            s->buf_ptr = s->buffer;
            s->buf_end = s->buffer + len;
        }
    }
    return *s->buf_ptr++;
}

static int http_get_line(URLContext *h, char *line, int line_size)
{
    int ch;
    char *q;
    HTTPContext *s = h->priv_data;

    q = line;
    for(;;) {
        if (ff_check_interrupt(&(h->interrupt_callback)) > 0)
        {
            av_log(NULL, AV_LOG_ERROR, "[%s:%d] interrupt exit \n", __FILE_NAME__, __LINE__);
            return -1;
        }

        ch = http_getc(s);
        if (ch < 0)
            return ch;
        if (ch == '\n') {
            /* process line */
            if (q > line && q[-1] == '\r')
                q--;
            *q = '\0';

            return 0;
        } else {
            if ((q - line) < line_size - 1)
                *q++ = ch;
        }
    }
}

static int process_line(URLContext *h, char *line, int line_count, int new_connection,
                        int *new_location, int *new_cookies)
{
    HTTPContext *s = h->priv_data;
    char *tag, *p, *end;
    char redirected_location[MAX_URL_SIZE];

    /* end of header */
    if (line[0] == '\0')
        return 0;

    p = line;
    if (line_count == 0) {
        while (!isspace(*p) && *p != '\0')
            p++;
        while (isspace(*p))
            p++;
        s->http_code = strtol(p, &end, 10);

        av_dlog(NULL, "http_code=%d\n", s->http_code);

        /* error codes are 4xx and 5xx, but regard 401 as a success, so we
         * don't abort until all headers have been parsed. */
        if (s->http_code >= 400 && s->http_code < 600
            && (s->http_code != 401 || s->auth_state.auth_type != HTTP_AUTH_NONE)
            && (s->http_code != 407 || s->proxy_auth_state.auth_type != HTTP_AUTH_NONE)) {
            end += strspn(end, SPACE_CHARS);
            av_log(h, AV_LOG_ERROR, "[%s:%d] HTTP error %d %s\n", __FILE_NAME__, __LINE__, s->http_code, end);
            return -1;
        }
    } else {
        while (*p != '\0' && *p != ':')
            p++;
        if (*p != ':')
            return 1;

        *p = '\0';
        tag = line;
        p++;
        while (isspace(*p))
            p++;
        if (!av_strcasecmp(tag, "Location")) {
            memset(redirected_location, 0, sizeof(redirected_location));
            ff_make_absolute_url(redirected_location, sizeof(redirected_location), s->location, p);

            av_log(NULL, AV_LOG_ERROR, "[%s:%d] make location url: %s \n",
                __FILE_NAME__, __LINE__, redirected_location);
            av_strlcpy(s->location, redirected_location, sizeof(s->location));
            *new_location = 1;
            #if 0
            //YLL: make absolute url and copy to s->location
            av_strlcpy(s->location, p, sizeof(s->location));
            *new_location = 1;
            #endif
        }else if(!av_strcasecmp(tag, "Pragma")){
            if(strstr(p,"seekable"))
            {
                s->seekable = 1;
            }
        } else if (!av_strcasecmp (tag, "Content-Length") && s->filesize == -1) {
            s->filesize = atoll(p);

            if (s->filesize > HTTP_MAX_STREAM_FILE_SIZE || 0 == s->filesize)
            {
                av_log(NULL, AV_LOG_ERROR, "[%s:%d] file size invalid, set to -1 \n", __FILE_NAME__, __LINE__);
                s->filesize = -1;
            }
        } else if (!av_strcasecmp (tag, "Content-Range")) {
            /* "bytes $from-$to/$document_size" */
            const char *slash;
            /* Content-Range: bytes [num]-
                        Content-Range: bytes: [num]-
                        Content-Range: [num]-
                        Content-Range: bytes=[num]-
                   The second format was added since Sun's webserver
                   JavaWebServer/1.1.1 obviously sends the header this way!
                   The third added since some servers use that!
                   */
            while (*p && !ISDIGIT(*p))
              p++;

            s->off = atoll(p);
            if ((slash = strchr(p, '/')) && strlen(slash) > 0) {
                s->filesize = atoll(slash+1);
                av_log(NULL, AV_LOG_ERROR, "[%s:%d] set file size = %lld \n", __FILE_NAME__, __LINE__, s->filesize);
            }
            #if 0  //YLL: ffmpeg2.0 is like this, why?
            if (s->seekable == -1 && (!s->is_akamai || s->filesize != 2147483647))
                h->is_streamed = 0; /* we _can_ in fact seek */
            #endif
            h->is_streamed = 1; /* we _can_ in fact seek */
            s->seekable = 1;
        } else if (!av_strcasecmp(tag, "Accept-Ranges") && !strncmp(p, "bytes", 5)) {
            h->is_streamed = 1; //h00212929 临时规避
            s->seekable = 1;
        } else if (!av_strcasecmp(tag, "Transfer-Encoding") && !av_strncasecmp(p, "chunked", 7)) {
            /* some server may return content-length and transfer-encoding, we should save filesize value */
            //s->filesize = -1;
            s->chunksize = 0;
            av_log(NULL, AV_LOG_ERROR, "[%s:%d] Transfer-Encoding style, set filesize -1 \n", __FILE_NAME__, __LINE__);
            // open new chunks file,reset is_chunks_finished
            s->is_chunks_finished = 0;
        } else if (!av_strcasecmp (tag, "WWW-Authenticate")) {
            ff_http_auth_handle_header(&s->auth_state, tag, p);
        } else if (!av_strcasecmp (tag, "Authentication-Info")) {
            ff_http_auth_handle_header(&s->auth_state, tag, p);
        } else if (!av_strcasecmp (tag, "Proxy-Authenticate")) {
            ff_http_auth_handle_header(&s->proxy_auth_state, tag, p);
        } else if (!av_strcasecmp (tag, "Connection")) {
            if (!av_strcmp(p, "close"))
                s->willclose = 1;
        } else if (!av_strcasecmp (tag, "Set-Cookie")) {
            //h00186041 set cookie, sina/youku/ need cookie
            #if 0
            char cookie_tmp[BUFFER_SIZE] = {0,};
            snprintf(cookie_tmp, sizeof(cookie_tmp), "Cookie: %s\r\n", p);
            if (h->headers) {
                av_free(h->headers);
                h->headers = NULL;
            }

            h->headers = av_strdup(cookie_tmp);
            #endif

            if (new_connection && s->cookies) {
                av_freep(&s->cookies);
            }

            if (!s->cookies) {
                if (!(s->cookies = av_strdup(p)))
                    return AVERROR(ENOMEM);
            } else {
                char *tmp = s->cookies;
                size_t str_size = strlen(tmp) + strlen(p) + 2;
                if (!(s->cookies = av_malloc(str_size))) {
                    s->cookies = tmp;
                    return AVERROR(ENOMEM);
                }
                snprintf(s->cookies, str_size, "%s\n%s", tmp, p);
                av_free(tmp);
            }

            *new_cookies = 1;
        } else if (!av_strcasecmp(tag,"Content-Type") && NULL != strstr(p,"text/html")) {
            // h00186041, record html type
            s->willtry = 1;
            //YLL: ffmpeg2.0 used this, av_free(s->mime_type); s->mime_type = av_strdup(p);
        } else if (!av_strcasecmp (tag, "Server") && !av_strcasecmp (p, "AkamaiGHost")) {
            //YLL: ffmpeg2.0 used this,  s->is_akamai = 1;
        } else if (!av_strcasecmp (tag, "Icy-MetaInt")) {
            //YLL: ffmpeg2.0 used this, s->icy_metaint = strtoll(p, NULL, 10);
        } else if (!av_strncasecmp(tag, "Icy-", 4)) {
            //YLL: ffmpeg2.0 used this,
            // Concat all Icy- header lines
            //char *buf = av_asprintf("%s%s: %s\n",
            //    s->icy_metadata_headers ? s->icy_metadata_headers : "", tag, p);
            //if (!buf)
            //    return AVERROR(ENOMEM);
            //av_freep(&s->icy_metadata_headers);
            //s->icy_metadata_headers = buf;
        } else if (!av_strcasecmp (tag, "CDN_error")) {
            if (s->cdn_error)
                av_freep(&s->cdn_error);

            if (!(s->cdn_error = av_strdup(p)))
                return AVERROR(ENOMEM);
        }else if (!av_strcasecmp(tag,"UPlay-type")) {
            if(strstr(p,"multiple")) {
                h->is_multiple = URL_PROTOCOL_NETWORK_MULTIPLE;
            }
            else {
                h->is_multiple = URL_PROTOCOL_NETWORK_SINGLE;
            }
        }
    }

    return 1;
}

/**
 * Create a string containing cookie values for use as a HTTP cookie header
 * field value for a particular path and domain from the cookie values stored in
 * the HTTP protocol context. The cookie string is stored in *cookies.
 *
 * @return a negative value if an error condition occurred, 0 otherwise
 */
static int get_cookies(HTTPContext *s, char **cookies, const char *path,
                       const char *domain)
{
    // cookie strings will look like Set-Cookie header field values.  Multiple
    // Set-Cookie fields will result in multiple values delimited by a newline
    int ret = 0;
    char *next, *cookie, *set_cookies = av_strdup(s->cookies), *cset_cookies = set_cookies;

    if (!set_cookies) return AVERROR(EINVAL);

    *cookies = NULL;
    while ((cookie = av_strtok_ex(set_cookies, "\n", &next))) {
        int domain_offset = 0;
        char *param, *next_param, *cdomain = NULL, *cpath = NULL, *cvalue = NULL;
        set_cookies = NULL;
        while ((param = av_strtok_ex(cookie, ";", &next_param))) {
            /* skip space */
            if (NULL != next_param && *next_param == ' ') {
                next_param += 1;
            }

            cookie = NULL;
            if        (!av_strncasecmp("path=",   param, 5)) {
                av_free(cpath);
                cpath = av_strdup(&param[5]);
            } else if (!av_strncasecmp("domain=", param, 7)) {
                av_free(cdomain);
                cdomain = av_strdup(&param[7]);
            } else if (!av_strncasecmp("secure",  param, 6) ||
                       !av_strncasecmp("comment", param, 7) ||
                       !av_strncasecmp("max-age", param, 7) ||
                       !av_strncasecmp("version", param, 7) ||
                       !av_strncasecmp("expires", param, 7)) {
                // ignore Comment, Max-Age, Secure and Version
            } else {
                av_free(cvalue);
                cvalue = av_strdup(param);
            }
            cookie = next_param;
        }

        if (!cdomain)
            cdomain = av_strdup(domain);

        if (NULL != cdomain)
            av_log(NULL, AV_LOG_INFO, "find domain = %s ", cdomain);
        if (NULL != cpath)
            av_log(NULL, AV_LOG_INFO, "find path = %s ", cpath);
        if (NULL != cvalue)
            av_log(NULL, AV_LOG_INFO, "find value = %s ", cvalue);

        // ensure all of the necessary values are valid
        if (!cdomain || !cpath || !cvalue) {
            av_log(s, AV_LOG_ERROR,
                   "Invalid cookie found, no value, path or domain specified\n");
            goto done_cookie;
        }

        av_log(NULL, AV_LOG_ERROR, "[LINE:%d] path = %s, cpath = %s, cpath len = %d \n",
            __LINE__, path, cpath, strlen(cpath));

        // check if the request path matches the cookie path
        if (!(1 == strlen(cpath) && cpath[0] == '/') && av_strncasecmp(path, cpath, strlen(cpath)))
        {
            goto done_cookie;
        }

        av_log(NULL, AV_LOG_ERROR, "[LINE:%d] domain = %s, cdomain = %s \n",
            __LINE__, domain, cdomain);

        // the domain should be at least the size of our cookie domain
        domain_offset = strlen(domain) - strlen(cdomain);
        if (domain_offset < 0)
        {
            goto done_cookie;
        }

        av_log(NULL, AV_LOG_ERROR, "[LINE:%d] domain_offset = %d \n",
            __LINE__, domain_offset);

        // match the cookie domain
        if (av_strcasecmp(&domain[domain_offset], cdomain))
        {
            goto done_cookie;
        }

        // cookie parameters match, so copy the value
        if (!*cookies) {
            if (!(*cookies = av_strdup(cvalue))) {
                ret = AVERROR(ENOMEM);
                goto done_cookie;
            }
        } else {
            char *tmp = *cookies;
            size_t str_size = strlen(cvalue) + strlen(*cookies) + 3;
            if (!(*cookies = av_malloc(str_size))) {
                ret = AVERROR(ENOMEM);
                goto done_cookie;
            }
            snprintf(*cookies, str_size, "%s; %s", tmp, cvalue);
            av_free(tmp);
        }

done_cookie:
        av_free(cdomain);
        av_free(cpath);
        av_free(cvalue);
        if (ret < 0) {
            if (*cookies) av_freep(cookies);
            av_free(cset_cookies);
            return ret;
        }
    }

    av_free(cset_cookies);

    if (NULL == *cookies)
        return -1;

    return 0;
}

static inline int has_header(const char *str, const char *header)
{
    /* header + 2 to skip over CRLF prefix. (make sure you have one!) */
    if (!str)
        return 0;
    return av_stristart(str, header + 2, NULL) || av_stristr(str, header);
}

static int http_connect(URLContext *h, const char *path, const char *local_path,
                        const char *hoststr, const char *auth,
                        const char *proxyauth, int *new_location)
{
    HTTPContext *s = h->priv_data;
    int post, err;
    char line[BUFFER_SIZE];
    char headers[MAX_URL_SIZE] = "";
    char *authstr = NULL, *proxyauthstr = NULL;
    int64_t off = s->off;
    int len = 0;
    int not_support_byte_range = 0;
    const char *method;

    s->seekable = 0;

    /* send http header */
    post = h->flags & AVIO_FLAG_WRITE;

    if (s->post_data) {
        /* force POST method and disable chunked encoding when
         * custom HTTP post data is set */
        post = 1;
        s->chunked_post = 0;
    }

    method = post ? "POST" : "GET";
    authstr = ff_http_auth_create_response(&s->auth_state, auth, local_path, method);
    proxyauthstr = ff_http_auth_create_response(&s->proxy_auth_state, proxyauth,
                                            local_path, method);
    const char* ua = IPAD_UA;
    if (NULL != strstr(hoststr, VIMEO_DN)) {
        ua = ANDROID_UA;
    }

    if (!has_header(s->headers, "\r\nUser-Agent: "))
        len += av_strlcatf(headers + len, sizeof(headers) - len,
                           "User-Agent: %s\r\n",
                           s->user_agent ? s->user_agent : ua);
    if (!has_header(s->headers, "\r\nReferer: ") && s->referer && strlen(s->referer) > 0)
        len += av_strlcatf(headers + len, sizeof(headers) - len,
                           "Referer: %s\r\n", s->referer);
    #if 0
    /* fill http headers */
    //YLL: why add at this place
    if (h->headers) {
        len += av_strlcatf(headers + len, sizeof(headers) - len, "%s", h->headers);
    }
    #endif

    /* Ysten apk will connect failed if UA stand at last line in the headers */
    /* now add in custom headers */
    if (s->headers) {
        av_log(NULL, AV_LOG_ERROR, "[%s:%d] set headers: \n%s\n", __FILE_NAME__, __LINE__, s->headers);
        len += av_strlcpy(headers + len, s->headers, sizeof(headers) - len);
    }

    if (!has_header(s->headers, "\r\nAccept: "))
        len += av_strlcpy(headers + len, "Accept: */*\r\n",
                sizeof(headers) - len);

    //Range is specified in headers, not all protocol need this field
    if (s->not_support_byte_range) {
        not_support_byte_range = atoi(s->not_support_byte_range);
    }

    if (!has_header(s->headers, "\r\nRange: ") && !post && s->seek_flag == 1 && !not_support_byte_range) {
        if (s->end > s->off && s->end > 0) {
            len += av_strlcatf(headers + len, sizeof(headers) - len,
                "Range: bytes=%"PRId64"-%"PRId64"\r\n", s->off, s->end);
        }
        else {
            len += av_strlcatf(headers + len, sizeof(headers) - len,
                "Range: bytes=%"PRId64"-\r\n", s->off);
        }
    }

    if (!has_header(s->headers, "\r\nConnection: ")) {
        if (s->multiple_requests) {
            len += av_strlcpy(headers + len, "Connection: keep-alive\r\n",
                          sizeof(headers) - len);
        } else {
            len += av_strlcpy(headers + len, "Connection: close\r\n",
                          sizeof(headers) - len);
        }
    }

    if (NULL != s->traceId) {
        av_log(NULL, AV_LOG_ERROR, "[%s:%d] set traceId: %s\n", __FUNCTION__, __LINE__, s->traceId);
        len += av_strlcatf(headers + len, sizeof(headers) - len,
            "EagleEye-TraceId: %s\r\n", s->traceId);
    }

    if (!has_header(s->headers, "\r\nHost: "))
        len += av_strlcatf(headers + len, sizeof(headers) - len,
                "Host: %s\r\n", hoststr);

    if (!has_header(s->headers, "\r\nContent-Length: ") && s->post_data)
        len += av_strlcatf(headers + len, sizeof(headers) - len,
                "Content-Length: %d\r\n", s->post_datalen);

    if (!has_header(s->headers, "\r\nCookie: ") && s->cookies) {
        char *cookies = NULL;
        av_log(NULL, AV_LOG_ERROR, "[%s:%d] cookie info: \n%s \n",
            __FILE_NAME__, __LINE__, s->cookies);
        if (!get_cookies(s, &cookies, path, hoststr)) {
            len += av_strlcatf(headers + len, sizeof(headers) - len,
                               "Cookie: %s\r\n", cookies);
            av_free(cookies);
        }
    }

    #if 0 //YLL: ffmpeg2.0 had this
    if (!has_header(s->headers, "\r\nContent-Type: ") && s->content_type)
        len += av_strlcatf(headers + len, sizeof(headers) - len,
                           "Content-Type: %s\r\n", s->content_type);
    if (!has_header(s->headers, "\r\nIcy-MetaData: ") && s->icy) {
        len += av_strlcatf(headers + len, sizeof(headers) - len,
                           "Icy-MetaData: %d\r\n", 1);
    }
    #endif

    /* Ysten apk will connect failed if UA stand at last line in the headers */
    #if 0
    /* now add in custom headers */
    if (s->headers)
        len += av_strlcpy(headers + len, s->headers, sizeof(headers) - len);
    #endif

    if (NULL != s->headers)
        av_log(NULL, AV_LOG_ERROR, "[%s:%d] set headers: \n %s \n", __FILE_NAME__, __LINE__, s->headers);
    else
        av_log(NULL, AV_LOG_ERROR, "[%s:%d] set headers: is null \n", __FILE_NAME__, __LINE__);

    snprintf(s->buffer, sizeof(s->buffer),
             "%s %s HTTP/1.1\r\n"
             "%s"
             "%s"
             "%s"
             "%s%s"
             "\r\n",
             method,
             path,
             post && s->chunked_post ? "Transfer-Encoding: chunked\r\n" : "",
             headers,
             authstr ? authstr : "",
             proxyauthstr ? "Proxy-" : "", proxyauthstr ? proxyauthstr : "");
    if (NULL != s->traceId) {
        av_strlcpy(h->http_res, s->buffer, strlen(s->buffer));
    }
    av_log(NULL, AV_LOG_ERROR, "[%s:%d] %s\n", __FILE_NAME__, __LINE__, s->buffer);
    av_freep(&authstr);
    av_freep(&proxyauthstr);

    err = ffurl_write(s->hd, s->buffer, strlen(s->buffer));
    if (err < 0) {
        av_log(NULL, AV_LOG_ERROR, "[%s,%d] ret=%d\n",__FILE_NAME__,__LINE__,err);
        return err;//AVERROR(EIO);
    }

    if (s->post_data) {
        if ((err = ffurl_write(s->hd, s->post_data, s->post_datalen)) < 0) {
            av_log(NULL,AV_LOG_ERROR,"[%s,%d] ret=%d\n",__FILE_NAME__,__LINE__,err);
            return err;
        }
    }

    /* init input buffer */
    s->buf_ptr = s->buffer;
    s->buf_end = s->buffer;
    s->line_count = 0;
    s->off = 0;
    s->filesize = -1;
    s->http_code = 0;
    s->willclose = 0;
    if (post && !s->post_data) {
        /* Pretend that it did work. We didn't read any header yet, since
         * we've still to send the POST data, but the code calling this
         * function will check http_code after we return. */
        s->http_code = 200;
        return 0;
    }

    s->chunksize = -1;
    int new_cookies = 0;

    /* wait for header */
    for (;;) {
        if (ff_check_interrupt(&(h->interrupt_callback)) > 0) {
            av_log(NULL, AV_LOG_ERROR, "[%s:%d] interrupt exit \n", __FILE_NAME__, __LINE__);
            break;
        }

        if ((err = http_get_line(h, line, sizeof(line))) < 0) {
            av_log(h, AV_LOG_ERROR, "[%s:%d] http get line failed, error:%d\n", __FILE_NAME__, __LINE__, err);
            return err;//AVERROR(EIO);
        }

        av_log(NULL, AV_LOG_ERROR, "[%s:%d] header='%s'\n",
            __FILE_NAME__, __LINE__, line);

        if (0 == new_cookies)
            err = process_line(h, line, s->line_count, 1, new_location, &new_cookies);
        else
            err = process_line(h, line, s->line_count, 0, new_location, &new_cookies);

        if (err < 0) {
            av_log(h, AV_LOG_ERROR, "[%s:%d] http process line failed, error:%d\n", __FILE_NAME__, __LINE__, err);
            return err;
        }

        if (err == 0)
            break;
        s->line_count++;
    }

    if (s->reconnect == 1 && (s->http_code == 200 || s->http_code == 206)) {
        av_log(NULL, AV_LOG_ERROR, "[%s,%d] http_connect Transfer-Encoding connect return 0\n",
            __FILE_NAME__,__LINE__);
        return 0;
    }

    if (not_support_byte_range)
        return 0;

    av_log(NULL, AV_LOG_ERROR, "[%s:%d] off = %lld, s->off = %lld \n",
        __FILE_NAME__, __LINE__, off, s->off);

    return (off == s->off || *new_location) ? 0 : -1;
}

//wkf34645 reconnect while read
static int http_reconnect(URLContext *h,HTTPContext *old, int flag)
{
    HTTPContext *s = NULL;
    URLContext *old_hd = NULL;
    int ret;
    int bufsize =0;

    h->is_streamed = 1;

    s = av_mallocz(sizeof(HTTPContext));
    if (!s) {
        url_errorcode_cb(h->interrupt_callback.opaque, NETWORK_DISCONNECT, "http");
        old->errtag   = 1;
        return AVERROR(ENOMEM);
    }

    h->priv_data = s;
    s->user_agent = av_strdup(old->user_agent);
    s->headers = av_strdup(old->headers);
    s->referer = av_strdup(old->referer);
    s->not_support_byte_range = av_strdup(old->not_support_byte_range);
    s->cdn_error  = av_strdup(old->cdn_error);
    s->filesize = -1;
    s->chunksize = -1;
    s->off = old->off;
    s->end = old->end;
    s->one_connect_limited_size = old->one_connect_limited_size;
    s->seek_flag = old->seek_flag;
    s->class = old->class;
    s->http_code = 0;
    //can not resume play when reconnect the network in suho sometimes
    s->reconnect = 1;
    s->change_seek_flag = 1;
    memcpy(&s->auth_state, &old->auth_state, sizeof(old->auth_state));
    memcpy(&s->proxy_auth_state, &old->proxy_auth_state, sizeof(old->proxy_auth_state));
    av_strlcpy(s->location, old->location, MAX_URL_SIZE);

    ret = http_open_cnx(h);
    av_log(NULL, AV_LOG_ERROR, "[%s:%d] http_reconnect ret='%d', http_code=%d, localtion:%s\n",
        __FILE_NAME__, __LINE__, ret,s->http_code,s->location);
    //can not resume play when reconnect the network in suho sometimes
    s->reconnect = 0;
    if (ret != 0){
        old->http_code= s->http_code;
        av_free(s->user_agent);
        s->user_agent = NULL;
        av_free(s->headers);
        s->headers = NULL;
        av_freep(&s->referer);
        av_freep(&s->not_support_byte_range);
        av_freep(&s->cdn_error);
        av_free (s);
        s = NULL;
        return ret;
    }
    return 0;
}

static int http_buf_read(URLContext *h, uint8_t *buf, int size)
{
    HTTPContext *s = h->priv_data;
    int len;
    /* read bytes from input buffer first */
    len = s->buf_end - s->buf_ptr;
    if (len > 0) {
        if (len > size)
            len = size;
        memcpy(buf, s->buf_ptr, len);
        s->buf_ptr += len;
    } else {
        if (!s->willclose && s->filesize >= 0 && s->off >= s->filesize)
            return AVERROR_EOF;
        if (s->filesize >= 0 && s->off >= s->filesize)
        {
            len = 0;
        }
        else
        {
            len = ffurl_read(s->hd, buf, size);
            if (len < 0)
            {
                av_log(NULL, AV_LOG_ERROR, "[%s:%d] url_read='%d'\n", __FILE_NAME__, __LINE__, len);
            }
        }
    }
    if (len > 0) {
        s->off += len;
        if (s->chunksize > 0)
            s->chunksize -= len;
    }
    return len;
}

static int http_read(URLContext *h, uint8_t *buf, int size)
{
    HTTPContext *s = h->priv_data;
    int ret = 0;

    if (!s->hd) {
        return -1;
    }

    if (s->chunksize >= 0) {
        if (!s->chunksize) {
            char line[32];

            for(;;) {
                if (s->is_chunks_finished) {
                    av_log(NULL, AV_LOG_ERROR, "[%s,%d] chunks was finished,do not read again\n", __FILE_NAME__, __LINE__);
                    return 0;
                }

                do {
                    if ((ret = http_get_line(h, line, sizeof(line))) < 0)
                        return ret;
                } while (!*line);    /* skip CR LF from last chunk */

                s->chunksize = strtoll(line, NULL, 16);

                av_dlog(NULL, "Chunked encoding data size: %"PRId64"'\n", s->chunksize);

                if (!s->chunksize) {
                    av_log(NULL, AV_LOG_ERROR, "[%s,%d] the last finish chunk come,chunks read finish\n",
                        __FILE_NAME__, __LINE__);
                    s->is_chunks_finished = 1;
                    return 0;
                }
                break;
            }
        }
        size = FFMIN(size, s->chunksize);
    }
    return http_buf_read(h, buf, size);
}

static int http_main_read(URLContext *h, uint8_t *buf, int size)
{
    int ret = 0;
    int len = 0, /* svr_err = 0, */ size1;
    int tag = 0, count = 0, reconnect = 0;
    HTTPContext *s = h->priv_data;
    int64_t start,end; /* connect_begin; */
    int report_event = 0, http_code = 0;

HTTP_READ_AGAIN:
    start = av_gettime();
    ret = http_read(h, buf, size);
    end = av_gettime();

    if (ret == 0 && (s->end <= 0 || s->end > s->off))
    {
        /* (0 >= s->filesize && 0 == s->is_chunks_finished): if the stream is live stream or chunk mode.
               * (s->filesize > 0 && s->off < s->filesize): if file is normal file and offset is in filesize, use range mode.
              */
        /* reback http://10.141.105.210:8080/#/c/1640/ patch */
        //if ((s->filesize > 0 && s->off < s->filesize) || (0 >= s->filesize && 0 == s->is_chunks_finished))
        if (s->filesize > 0 && s->off < s->filesize)
        {
            av_log(NULL, AV_LOG_ERROR, "[%s:%d] set reconnect = 1, filesize = %lld \n",
                __FILE_NAME__, __LINE__, s->filesize);
            reconnect = 1;
        }
    }
    else if (s->end < (s->filesize - 1) && s->filesize > 0 && s->one_connect_limited_size > 0
        && s->one_connect_limited_size < s->filesize && (AVERROR_EOF == ret || s->off >= s->end || ret == 0))
    {
        if(AVERROR_EOF == ret || ret == 0)
        {
            if (s->download_size_once != 0)
            {
                s->one_connect_limited_size = s->download_size_once * 1024 * 1024;
                av_log(NULL, AV_LOG_ERROR, "[%s:%d] one_connect_limited_size: %d \n",
                __FILE_NAME__, __LINE__, s->one_connect_limited_size);
            }

            av_log(NULL, AV_LOG_ERROR, "[%s:%d] set reconnect = 1, reconnect at once, filesize = %lld, ret:%d, s->off:%lld, s->end:%lld, size:%d\n",
                __FILE_NAME__, __LINE__, s->filesize, ret, s->off, s->end, size);
            reconnect = 1;
            s->off = s->end + 1;
            s->end = s->off + s->one_connect_limited_size;
            s->end = s->end > s->filesize ? s->filesize - 1 : s->end;
        }
        else
        {
            av_log(NULL, AV_LOG_INFO, "[%s:%d] need reconnect next time, filesize = %lld, ret:%d, s->off:%lld, s->end:%lld, size:%d\n",
                __FILE_NAME__, __LINE__, s->filesize, ret, s->off, s->end, size);
        }
    }

    if (reconnect == 1 || (CHECK_NET_INTERRUPT(ret)))
    {
        s->errtag = 1;
        reconnect = 0;
        av_log(NULL, AV_LOG_ERROR, "[%s:%d] http_main_read, start reconnect, ret=%d,off:%lld,filesize:%lld\n",
            __FILE_NAME__, __LINE__, ret, s->off, s->filesize);

        if (s->http_code >= 400 &&  s->http_code < 1000)
        {
            url_errorcode_cb(h->interrupt_callback.opaque, s->http_code, "http");
        }
        else
        {
            if (ret == 0)
            {
                url_errorcode_cb(h->interrupt_callback.opaque, NETWORK_TIMEOUT, "http");
            }
            else if (ret < 0)
            {
                url_errorcode_cb(h->interrupt_callback.opaque, ret, "http");
            }
        }

        reset_downspeed(h);

        start = av_gettime();
        //svr_err = 0;
        report_event = 0;
        http_code = 0;

        if(s->has_reconnect)
        {
            av_log(NULL,AV_LOG_ERROR,"Upper protocol has reconnect function, return ret:%d\n",ret);
            av_opt_free(s);
            return ret;
        }

        while (1)
        {
            ret = ff_check_interrupt(&(h->interrupt_callback));
            if (ret > 0)
            {
                s->buf_ptr = s->buffer;
                s->buf_end = s->buffer;
                h->priv_data = s;
                av_log(NULL, AV_LOG_WARNING,"[%s:%d] err_code:%d, AVERROR_EOF \n",__FILE_NAME__,__LINE__, ret);
                return AVERROR_EOF;
            }

            /*time out Error*/
            end = av_gettime();

            if (abs(end - start) > HTTP_READ_TIMEOUT)
            {
                url_errorcode_cb(h->interrupt_callback.opaque, NETWORK_TIMEOUT, "http");
                s->errtag = 1;
                start = end;
            }

            ret = http_reconnect(h, s, tag);

            if (ret == 0)
            {
                break;
            }

            av_log(NULL, AV_LOG_ERROR, "[%s:%d] http_code:%d, s->http_code:%d, report_event:%d,\n",
                __FILE_NAME__,__LINE__, http_code, s->http_code, report_event);

            if (report_event == 0 || (http_code != s->http_code && s->http_code != 0))
            {
                av_log(NULL, AV_LOG_ERROR, "[%s:%d] http_code:%d, s->http_code:%d, report_event:%d,\n",
                    __FILE_NAME__,__LINE__, http_code, s->http_code, report_event);
                report_event = 1;
                url_errorcode_cb(h->interrupt_callback.opaque, s->http_code, "http");
                s->errtag = 1;
                http_code = s->http_code;
            }

            if ((s->http_code >= 500 && s->http_code <= 510) || s->http_code == 404)
            {
                av_log(NULL, AV_LOG_ERROR, "[%s:%d] http_code:%d, return EOF and exiting ..., ret = %d\n",
                    __FILE_NAME__,__LINE__,s->http_code,ret);
                s->buf_ptr = s->buffer;
                s->buf_end = s->buffer;
                h->priv_data = s;
                url_errorcode_cb(h->interrupt_callback.opaque, NETWORK_DISCONNECT, "http");
                return ret;
            }

            usleep(100*1000);
        }//end while 1

        HTTPContext *tmp = h->priv_data;//new connection
        av_log(NULL, AV_LOG_ERROR, "[%s:%d] connect ok! old off:%lld,new off:%lld, filesize:%lld\n",
            __FILE_NAME__, __LINE__, s->off,tmp->off,s->filesize);
        tmp->filesize = s->filesize;
        tmp->errtag |= s->errtag;
        /* reback http://10.141.105.210:8080/#/c/1640/ patch */
        //if (0 < s->filesize && tmp->off != s->off)
        if (tmp->off != s->off && s->end <= 0)
        {
            av_log(NULL, AV_LOG_ERROR, "[%s:%d] offset is not right,off=%lld read and discard data\n",
                __FILE_NAME__,__LINE__, tmp->off);
            ret = AVERROR(ECONNRESET);
            ffurl_close(s->hd);
            av_free(s->user_agent);
            s->user_agent = NULL;
            av_freep(&s->referer);
            av_freep(&s->not_support_byte_range);
            av_freep(&s->cdn_error);
            av_free(s);
            s = tmp;
        }
        else
        {
            int lentmp = 0;
            len = 0;
            //new link buffer size
            lentmp = ((tmp->buf_end - tmp->buf_ptr) < BUFFER_SIZE)?
                (tmp->buf_end - tmp->buf_ptr) : BUFFER_SIZE;
            lentmp = (lentmp <= 0)? 0 : lentmp;

            //old link buffer size
            len = ((s->buf_end - s->buf_ptr) < BUFFER_SIZE)?
                (s->buf_end - s->buf_ptr) : BUFFER_SIZE;
            len = (len <= 0)? 0 : len;

            if (len > 0)
            {
                if (lentmp + len > BUFFER_SIZE)
                {
                    av_log(NULL, AV_LOG_ERROR, "[%s:%d] memory is not enough\n",__FILE_NAME__,__LINE__);
                    lentmp = BUFFER_SIZE - len;
                }
                memmove(tmp->buffer + len, tmp->buf_ptr, lentmp);
                memcpy(tmp->buffer, s->buf_ptr, len);
                tmp->buf_ptr = tmp->buffer;
                tmp->buf_end = tmp->buffer + len + lentmp;
            }

            ffurl_close(s->hd);
            av_free(s->user_agent);
            s->user_agent = NULL;
            av_freep(&s->referer);
            av_freep(&s->not_support_byte_range);
            av_freep(&s->cdn_error);
            av_free(s);
            s = tmp;
            goto HTTP_READ_AGAIN;
        }
    }
    else
    {
        get_downspeed(h, ret, (end - start), start, end);
    }

READ_RET:
    if (s->errtag > 0 && ret > 0)
    {
        url_errorcode_cb(h->interrupt_callback.opaque, NETWORK_NORMAL, "http");
        s->errtag   = 0;
    }

    if (0 == ret && 0 == s->errtag)
    {
        reset_downspeed(h);
    }

    return ret;
}

/* used only when posting data */
static int http_write(URLContext *h, const uint8_t *buf, int size)
{
    char temp[11] = "";  /* 32-bit hex + CRLF + nul */
    int ret;
    char crlf[] = "\r\n";
    HTTPContext *s = h->priv_data;

    if (!s->hd) {
        return -1;
    }

    if (!s->chunked_post) {
        /* non-chunked data is sent without any special encoding */
        return ffurl_write(s->hd, buf, size);
    }

    /* silently ignore zero-size data since chunk encoding that would
     * signal EOF */
    if (size > 0) {
        /* upload data using chunked encoding */
        snprintf(temp, sizeof(temp), "%x\r\n", size);

        if ((ret = ffurl_write(s->hd, temp, strlen(temp))) < 0 ||
            (ret = ffurl_write(s->hd, buf, size)) < 0 ||
            (ret = ffurl_write(s->hd, crlf, sizeof(crlf) - 1)) < 0)
            return ret;
    }
    return size;
}

static int http_close(URLContext *h)
{
    int ret = 0;
    char footer[] = "0\r\n\r\n";
    HTTPContext *s = h->priv_data;

    /* signal end of chunked encoding if used */
    if (s->hd && (h->flags & AVIO_FLAG_WRITE) && s->chunked_post) {
        ret = ffurl_write(s->hd, footer, sizeof(footer) - 1);
        ret = ret > 0 ? 0 : ret;
    }

    if (s->hd)
        ffurl_close(s->hd);
    av_free(s->user_agent);
    s->user_agent = NULL;
    av_freep(&s->referer);
    av_freep(&s->not_support_byte_range);
    av_freep(&s->cdn_error);
    return ret;
}

static int64_t http_seek(URLContext *h, int64_t off, int whence)
{
    HTTPContext *s = h->priv_data;
    URLContext *old_hd = s->hd;
    int64_t old_off = s->off;
    uint8_t old_buf[BUFFER_SIZE];
    int old_buf_size;
    int old_seek_flag = s->seek_flag;
    int old_seekable = s->seekable;
    int64_t old_filesize = s->filesize;
    int ret = 0;

    if (whence == AVSEEK_SIZE)
        return s->filesize;
    else if ((s->filesize == -1 && whence == SEEK_END)/* || h->is_streamed*/) //h00212929 临时规避
        return -1;

    /* Get current position, do not need to connect */
    if (whence == SEEK_CUR && off ==0) {
        return s->off;
    }

    if (whence == SEEK_SET && off == s->off) {
        return off;
    }

    //not allow seek otherwise seek 0
    if (!s->seekable && !(whence == SEEK_SET && off == 0)) {
        av_log(s, AV_LOG_ERROR, "[%s:%d] http connection is not seekable,return fail.\n", __FILE_NAME__, __LINE__);
        return -1;
    }
    //if (s->willclose)
    {
        av_log(s, AV_LOG_ERROR, "close previous connections\n");
        ffurl_close(old_hd);
        old_hd = NULL;
        s->hd = NULL;
    }
    /* we save the old context in case the seek fails */
    old_buf_size = s->buf_end - s->buf_ptr;
    if (old_buf_size > 0)
        memcpy(old_buf, s->buf_ptr, old_buf_size);
    s->hd = NULL;
    if (whence == SEEK_CUR)
        off += s->off;
    else if (whence == SEEK_END)
        off += s->filesize;
    s->off = off;
    av_log(NULL, AV_LOG_ERROR, "[%s:%d] seek off=%lld,seek_flag=%d, filesize:%lld\n",
        __FILE_NAME__,__LINE__,off,s->seek_flag, s->filesize);
    if (off < 0 || (off > s->filesize && s->filesize > 0))
    {
        s->off = s->filesize > 0 ? s->filesize : 0;
        off = s->filesize > 0 ? s->filesize : 0;
    }
    s->seek_flag = 1;
    s->change_seek_flag = 0;
    if (s->one_connect_limited_size > 0) {
        s->end = s->off + s->one_connect_limited_size;
        s->end = s->end > s->filesize ? s->filesize - 1 : s->end;
        av_log(h, AV_LOG_INFO, "seek end:%lld\n", s->end);
    }

    /* if it fails, continue on old connection */
    ret = http_open_cnx(h);

    if (AVERROR(EAGAIN) == ret) {
        av_log(h, AV_LOG_ERROR, "eagain returned, we should try to connect again\n");
    }
    if (ret < 0 || s->off < 0 || (s->off >= s->filesize && s->filesize > 0))
    {
        if (ret < 0 && ((s->off < s->filesize && s->filesize > 0)))
        {
            if (s->http_code >= 400 &&  s->http_code < 1000)
            {
                url_errorcode_cb(h->interrupt_callback.opaque, s->http_code, "http");
            }
            else
            {
                url_errorcode_cb(h->interrupt_callback.opaque, ret, "http");
            }
        }
        else
        {
            av_log(NULL, AV_LOG_ERROR, "[%s:%d] http server seek pos: %lld\n",__FILE_NAME__,__LINE__, s->off);
        }

        s->errtag = 1;
        if (old_buf_size > 0)
            memcpy(s->buffer, old_buf, old_buf_size);
        s->buf_ptr = s->buffer;
        s->buf_end = s->buffer + old_buf_size;
        s->hd = old_hd;
        s->off = old_off;
        s->seek_flag = old_seek_flag;
        s->filesize = old_filesize;
        s->seekable = old_seekable;
        av_log(NULL, AV_LOG_ERROR, "[%s:%d] http_seek  s->seek_flag=%d\n",__FILE_NAME__,__LINE__, s->seek_flag);

        /* open old connection */
        ret = http_open_cnx(h);
        if (ret < 0)
        {
            av_log(NULL, AV_LOG_ERROR, "[%s:%d] http_seek open old connection fail ret=%d\n", __FILE_NAME__, __LINE__, ret);
        }

        return -1;
    }

    av_log(NULL, AV_LOG_ERROR, "[%s:%d] http_seek  s->seek_flag=%d\n",__FILE_NAME__,__LINE__, s->seek_flag);

    return off;
}

static int
http_get_file_handle(URLContext *h)
{
    HTTPContext *s = h->priv_data;

    if (!s->hd) {
        return -1;
    }

    return ffurl_get_file_handle(s->hd);
}

static int http_read_pause(URLContext *h, int pause)
{
    HTTPContext *s = h->priv_data;

    if (!s->hd || NULL == s || NULL == h || NULL == h->prot)
        return 0;
    if (s->hd)
        return h->prot->url_read_pause(s->hd, pause);
    return 0;
}

static int http_get_seekable(URLContext * h)
{
    HTTPContext *s = h->priv_data;
    if( NULL == s || NULL == h)
        return -1;

    if (s->filesize == -1)
        return 0;

    return s->seekable;
}
#if CONFIG_HTTP_PROTOCOL
URLProtocol ff_http_protocol = {
    .name                = "http",
    .url_open            = http_open,
    .url_read            = http_main_read, //h00186041 http_main_read call http_read
    .url_write           = http_write,
    .url_seek            = http_seek,
    .url_close           = http_close,
    .url_read_pause      = http_read_pause,
    .url_get_file_handle = http_get_file_handle,
    .url_get_seekable    = http_get_seekable,
    .priv_data_size      = sizeof(HTTPContext),
    .priv_data_class     = &http_context_class,
    .flags               = URL_PROTOCOL_FLAG_NETWORK,
};
#endif
#if CONFIG_HTTPS_PROTOCOL
URLProtocol ff_https_protocol = {
    .name                = "https",
    .url_open            = http_open,
    .url_read            = http_read,
    .url_write           = http_write,
    .url_seek            = http_seek,
    .url_close           = http_close,
    .url_get_file_handle = http_get_file_handle,
    .priv_data_size      = sizeof(HTTPContext),
    .priv_data_class     = &https_context_class,
    .flags               = URL_PROTOCOL_FLAG_NETWORK,
};
#endif

static int lpcmhttp_open(URLContext *h, const char *uri, int flags)
{
    char url[MAX_URL_SIZE];
    char *http, *question;
    size_t size;

    av_log(0, AV_LOG_INFO, "[%s:%d] lpcm-http open %s, %d",
            __FILE_NAME__, __LINE__, uri, flags);
    if (uri == NULL){
        return -1;
    }

    http = strcasestr(uri, "http://");
    if (!http){
        return -1;
    }
    memset(url, 0, sizeof(url));
    question = strchr(http, '?');
    if (question){
        size = question - http;
    } else{
        size = strlen(http);
    }
    if (size >= sizeof(url)){
        av_log(0, AV_LOG_ERROR, "[%s:%d] url size too small(%u,%u)\n",
                __FILE_NAME__, __LINE__, sizeof(url), size);
        return -1;
    }
    memcpy(url, http, size);

    return http_open(h, url, flags);
}

#if CONFIG_LPCMHTTP_PROTOCOL
URLProtocol ff_lpcmhttp_protocol = {
    .name                = "lpcm-http",
    .url_open            = lpcmhttp_open,
    .url_read            = http_main_read, //h00186041 http_main_read call http_read
    .url_write           = http_write,
    .url_seek            = http_seek,
    .url_close           = http_close,
    .url_read_pause      = http_read_pause,
    .url_get_file_handle = http_get_file_handle,
    .url_get_seekable    = http_get_seekable,
    .priv_data_size      = sizeof(HTTPContext),
    .priv_data_class     = &http_context_class,
    .flags               = URL_PROTOCOL_FLAG_NETWORK,
};
#endif

#if CONFIG_HTTPSEX_PROTOCOL
URLProtocol ff_httpsex_protocol = {
    .name                = "https",
    .url_open            = http_open,
    .url_read            = http_main_read,
    .url_write           = http_write,
    .url_seek            = http_seek,
    .url_close           = http_close,
    .url_get_file_handle = http_get_file_handle,
    .priv_data_size      = sizeof(HTTPContext),
    .priv_data_class     = &https_context_class,
    .flags               = URL_PROTOCOL_FLAG_NETWORK,
};
#endif
#if CONFIG_HTTPPROXY_PROTOCOL
static int http_proxy_close(URLContext *h)
{
    HTTPContext *s = h->priv_data;
    if (s->hd)
        ffurl_close(s->hd);
    return 0;
}

static int http_proxy_open(URLContext *h, const char *uri, int flags)
{
    HTTPContext *s = h->priv_data;
    char hostname[1024], hoststr[1024];
    char auth[1024], pathbuf[1024], *path;
    char line[1024], lower_url[100];
    int port, ret = 0;
    HTTPAuthType cur_auth_type;
    char *authstr;

    h->is_streamed = 1;

    av_url_split(NULL, 0, auth, sizeof(auth), hostname, sizeof(hostname), &port,
                 pathbuf, sizeof(pathbuf), uri);
    ff_url_join(hoststr, sizeof(hoststr), NULL, NULL, hostname, port, NULL);
    path = pathbuf;
    if (*path == '/')
        path++;

    ff_url_join(lower_url, sizeof(lower_url), "tcp", NULL, hostname, port,
                NULL);
redo:
    ret = ffurl_open(&s->hd, lower_url, AVIO_FLAG_READ_WRITE,
                     &h->interrupt_callback, NULL);
    if (ret < 0)
        return ret;

    authstr = ff_http_auth_create_response(&s->proxy_auth_state, auth,
                                           path, "CONNECT");
    snprintf(s->buffer, sizeof(s->buffer),
             "CONNECT %s HTTP/1.1\r\n"
             "Host: %s\r\n"
             "Connection: close\r\n"
             "%s%s"
             "\r\n",
             path,
             hoststr,
             authstr ? "Proxy-" : "", authstr ? authstr : "");
    av_freep(&authstr);

    if ((ret = ffurl_write(s->hd, s->buffer, strlen(s->buffer))) < 0)
        goto fail;

    s->buf_ptr = s->buffer;
    s->buf_end = s->buffer;
    s->line_count = 0;
    s->filesize = -1;
    cur_auth_type = s->proxy_auth_state.auth_type;
    int new_cookies = 0;

    for (;;) {
        int new_loc;
        // Note: This uses buffering, potentially reading more than the
        // HTTP header. If tunneling a protocol where the server starts
        // the conversation, we might buffer part of that here, too.
        // Reading that requires using the proper ffurl_read() function
        // on this URLContext, not using the fd directly (as the tls
        // protocol does). This shouldn't be an issue for tls though,
        // since the client starts the conversation there, so there
        // is no extra data that we might buffer up here.
        if ((ret =http_get_line(h, line, sizeof(line))) < 0) {
            goto fail;
        }

        av_dlog(h, "header='%s'\n", line);

        if (0 == new_cookies)
            ret = process_line(h, line, s->line_count, 1, &new_loc, &new_cookies);
        else
            ret = process_line(h, line, s->line_count, 0, &new_loc, &new_cookies);

        if (ret < 0)
            goto fail;
        if (ret == 0)
            break;
        s->line_count++;
    }
    if (s->http_code == 407 && cur_auth_type == HTTP_AUTH_NONE &&
        s->proxy_auth_state.auth_type != HTTP_AUTH_NONE) {
        ffurl_close(s->hd);
        s->hd = NULL;
        goto redo;
    }

    if (s->http_code < 400)
        return 0;
    ret = AVERROR(EIO);

fail:
    http_proxy_close(h);
    return ret;
}

static int http_proxy_write(URLContext *h, const uint8_t *buf, int size)
{
    HTTPContext *s = h->priv_data;
    return ffurl_write(s->hd, buf, size);
}

URLProtocol ff_httpproxy_protocol = {
    .name                = "httpproxy",
    .url_open            = http_proxy_open,
    .url_read            = http_buf_read,
    .url_write           = http_proxy_write,
    .url_close           = http_proxy_close,
    .url_read_pause      = http_read_pause,
    .url_get_file_handle = http_get_file_handle,
    .priv_data_size      = sizeof(HTTPContext),
    .flags               = URL_PROTOCOL_FLAG_NETWORK,
};
#endif
