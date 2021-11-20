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

/**
 * @file    hls.c
 * @brief   Apple HTTP Live Streaming demuxer
 *          http://tools.ietf.org/html/draft-pantos-http-live-streaming
 */
#if defined (ANDROID_VERSION)
#include "cutils/properties.h"
#endif
#include <pthread.h>
#include "libavutil/avstring.h"
#include "libavutil/intreadwrite.h"
#include "avformat.h"
#include "internal.h"
#include <unistd.h>
#include "avio.h"
#include "url.h"
#include "hls_read.h"
#include "libavutil/opt.h"

#if defined (ANDROID_VERSION)
#include "libclientadp.h"
#endif

#include "hls_key_decrypt.h"

#define DISCONTINUE_MAX_TIME    (90000*3)
#define DEFAULT_PTS_ADDON       (1)         // 1 sec

#define INITIAL_BUFFER_SIZE     (32768 * 16) //512K
#define HLS_MAX_WAITE_TIME      (5 * AV_TIME_BASE)  // 5s
#define HLS_MAX_REFRESH_TIME      (9 * AV_TIME_BASE)  // 9s

#define HLS_REFRESH_TIME1 (1 * AV_TIME_BASE)
#define HLS_REFRESH_TIME2 (2 * AV_TIME_BASE)
#define HLS_REFRESH_TIME3 (5 * AV_TIME_BASE)
#define HLS_REFRESH_TIME4 (10 * AV_TIME_BASE)
#define M3U8_UNREFRESH_TIMES1 (3)
#define M3U8_UNREFRESH_TIMES2 (4)
#define M3U8_UNREFRESH_TIMES3 (5)
#define M3U8_UNREFRESH_TIMES4 (10)
#define M3U8_REFRESH_SLICE_SLEEP_TIME (50*1000) //50ms

#define __FILE_NAME__           av_filename(__FILE__)

#define DEC AV_OPT_FLAG_DECODING_PARAM
#define ENC AV_OPT_FLAG_ENCODING_PARAM
#define OFFSET(x) offsetof(HLSContext, x)

#ifndef HI_ADVCA_FUNCTION_RELEASE
const AVOption ff_hls_options[] = {
    { "download_speed_collect_freq_ms",  "download speed collect freq", OFFSET(download_speed_collect_freq_ms), AV_OPT_TYPE_INT, {.i64 = 0}, 0, INT_MAX, DEC|ENC},
    { NULL },
};
#else
const AVOption ff_hls_options[] = {
    { "download_speed_collect_freq_ms", "",  OFFSET(download_speed_collect_freq_ms), AV_OPT_TYPE_INT, {.i64 = 0}, 0, INT_MAX, DEC|ENC},
    { NULL },
};
#endif

/*******************************************************************************
 * Local prototypes
 ******************************************************************************/
enum HLS_KEY_TYPE {
    KEY_NONE,
    KEY_AES_128,
};

typedef struct hls_info_s {
    char bandwidth[20];
    char program_id[10];
    char codecs[30];
    char resolution[20];
} hls_info_t;

typedef struct hls_key_info_s {
    char    uri[INITIAL_URL_SIZE];
    char    method[10];
    char    iv[35];
} hls_key_info_t;

typedef enum HLS_START_MODE
{
    HLS_MODE_NORMAL,
    HLS_MODE_FAST,
    HLS_MODE_BUTT
} HLS_START_MODE_E;
#define LOG_TAG "hls"

/*******************************************************************************
 * Local protofunctions
 ******************************************************************************/
static int hlsGetLine(ByteIOContext *s, char *buf, int maxlen, AVIOInterruptCB *interrupt_callback)
{
    char c;
    int i = 0;

    do {
        if (s->eof_reached) // Stream eof
            return 0;

        c = url_fgetc(s);
        if ((char)URL_EOF != c && i < maxlen-1)
            buf[i++] = c;
        //if(url_interrupt_cb(userdata))
        if (ff_check_interrupt(interrupt_callback)) {
            return AVERROR_EOF;
        }
    } while (c != '\r' && c != '\n' && (char)URL_EOF != c);

    buf[i] = 0;
    return i;
}
static int copy_m3u8_info(hls_stream_info_t *dest_hls, hls_stream_info_t *src_hls)
{
    int i;
    int add_ret;
    hls_segment_t *seg = NULL;
    if (src_hls == NULL || dest_hls == NULL)
        return -1;
    //refresh variants
    dest_hls->bandwidth = src_hls->bandwidth;
    memcpy(dest_hls->url,src_hls->url,INITIAL_URL_SIZE);
    memcpy(dest_hls->second_level_url,src_hls->second_level_url,INITIAL_URL_SIZE);

    dest_hls->video_codec= src_hls->video_codec;
    dest_hls->audio_codec= src_hls->audio_codec;
    //copy seg_list
    dest_hls->seg_list.hls_finished = src_hls->seg_list.hls_finished;
    dest_hls->seg_list.hls_target_duration = src_hls->seg_list.hls_target_duration;
    dest_hls->seg_list.hls_seg_start = src_hls->seg_list.hls_seg_start;
    dest_hls->seg_list.hls_last_load_time = src_hls->seg_list.hls_last_load_time;

    if (dest_hls->seg_list.segments == NULL && src_hls->seg_list.hls_segment_nb != 0)
        dest_hls->seg_list.segments = (hls_segment_t **)av_malloc(src_hls->seg_list.hls_segment_nb * sizeof(hls_segment_t));

    //copy segments
    for (i = 0; i < src_hls->seg_list.hls_segment_nb;i++){
        seg = av_mallocz(sizeof(hls_segment_t));
        if (!seg){
            return AVERROR(ENOMEM);
        }
        memcpy(seg,src_hls->seg_list.segments[i],sizeof(hls_segment_t));
        dynarray_add_noverify(&dest_hls->seg_list.segments, &dest_hls->seg_list.hls_segment_nb, seg, &add_ret);
        if (add_ret < 0) {
            av_free(seg);
            seg = NULL;
            return  AVERROR(ENOMEM);
        }
    }
    return 0;
}

static int hlsReadLine(ByteIOContext *s, char *buf, int maxlen, AVIOInterruptCB *interrupt_callback)
{
    memset(buf, 0, maxlen);
    int len = hlsGetLine(s, buf, maxlen, interrupt_callback);
    while (len > 0 && isspace(buf[len - 1]))
        buf[--len] = '\0';

    return len;
}

static void hlsMakeAbsoluteUrl(char *buf, int size, const char *base,
        const char *rel)
{
    char *sep;

    /* Absolute path, relative to the current server */
    if (base && strstr(base, "://") && rel[0] == '/') {
        if (base != buf)
            av_strlcpy(buf, base, size);
        sep = strstr(buf, "://");
        if (sep) {
            sep += 3;
            sep = strchr(sep, '/');
            if (sep)
                *sep = '\0';
        }
        av_strlcat(buf, rel, size);
        return;
    }

    /* If rel actually is an absolute url, just copy it */
    if (!base || strstr(rel, "://") || rel[0] == '/') {
        av_strlcpy(buf, rel, size);
        return;
    }

    if (base != buf) av_strlcpy(buf, base, size);

    /* Remove the para from the base url */
    sep = strstr(buf, "?");
    if (sep)
        *sep = '\0';

    /* Remove the file name from the base url */
    sep = strrchr(buf, '/');
    if (sep)
        sep[1] = '\0';
    else
        buf[0] = '\0';

    while (av_strstart(rel, "../", NULL) && sep) {
        /* Remove the path delimiter at the end */
        sep[0] = '\0';
        sep = strrchr(buf, '/');
        /* If the next directory name to pop off is "..", break here */
        if (!av_strcmp(sep ? &sep[1] : buf, "..")) {
            /* Readd the slash we just removed */
            av_strlcat(buf, "/", size);
            break;
        }
        /* Cut off the directory name */
        if (sep)
            sep[1] = '\0';
        else
            buf[0] = '\0';
        rel += 3;
    }

    av_strlcat(buf, rel, size);
}

typedef void (*hlsParseKeyValCb)(void *context, const char *key,
                                 int key_len, char **dest, int *dest_len);
static void hlsParseKeyValue(const char *str, hlsParseKeyValCb callback_get_buf, void *context)
{
    const char *ptr = str;

    /* Parse key=value pairs. */
    for (;;) {
        const char *key;
        char *dest = NULL, *dest_end;
        int key_len, dest_len = 0;

        /* Skip whitespace and potential commas. */
        while (*ptr && (isspace(*ptr) || *ptr == ','))
            ptr++;
        if (!*ptr)
            break;

        key = ptr;

        if (!(ptr = strchr(key, '=')))
            break;
        ptr++;
        key_len = ptr - key;

        callback_get_buf(context, key, key_len, &dest, &dest_len);
        dest_end = dest + dest_len - 1;

        if (*ptr == '\"') {
            ptr++;
            while (*ptr && *ptr != '\"') {
                if (*ptr == '\\') {
                    if (!ptr[1])
                        break;
                    if (dest && dest < dest_end)
                        *dest++ = ptr[1];
                    ptr += 2;
                } else {
                    if (dest && dest < dest_end)
                        *dest++ = *ptr;
                    ptr++;
                }
            }
            if (*ptr == '\"')
                ptr++;
        } else {
            for (; *ptr && !(isspace(*ptr) || *ptr == ','); ptr++)
                if (dest && dest < dest_end)
                    *dest++ = *ptr;
        }
        if (dest)
            *dest = 0;
    }
}

static void hlsResetPacket(AVPacket *pkt)
{
    av_init_packet(pkt);
    pkt->data = NULL;
}

/* Free all segments context of hls_stream */
static void hlsFreeSegmentList(hls_stream_info_t *hls)
{
    int i;
    for (i = 0; i < hls->seg_list.hls_segment_nb; i++){
        if (hls->seg_list.segments == NULL)
            return;
        if (hls->seg_list.segments[i])
            av_free(hls->seg_list.segments[i]);
    }

    hls->seg_list.hls_segment_nb = 0;
    av_freep(&hls->seg_list.segments);
}

/* Free all hls_stream context of hls_context */
static void hlsFreeHlsList(HLSContext *c)
{
    int i;
    for (i = 0; i < c->hls_stream_nb; i++) {
        hls_stream_info_t *hls = c->hls_stream[i];

        hlsFreeSegmentList(hls);

        av_free(hls->seg_demux.last_time);
        av_free_packet(&hls->seg_demux.pkt);
        av_free(hls->seg_stream.IO_pb.buffer);

        if (hls->seg_stream.headers) {
            av_free(hls->seg_stream.headers);
            hls->seg_stream.headers = NULL;
        }

        if (hls->seg_key.IO_decrypt) {
            hls_decrypt_close(hls->seg_key.IO_decrypt);
            av_freep(&hls->seg_key.IO_decrypt);
            hls->seg_key.IO_decrypt = NULL;
            hls->seg_stream.input = NULL; // already freed in hls_decrypt_close
        }

        if (hls->seg_stream.input) {
            hls_close(hls->seg_stream.input);
            hls->seg_stream.input = NULL;
            hls->seg_stream.offset = 0;
        }

        if (hls->seg_demux.ctx) {
            hls->seg_demux.ctx->pb = NULL;
            av_close_input_file(hls->seg_demux.ctx);
        }

        av_free(hls);
    }

    av_freep(&c->hls_stream);
    c->hls_stream_nb = 0;
}

static hls_stream_info_t *hlsNewHlsStream(HLSContext *c, int bandwidth,
        const char *url, const char *base, const char *headers)
{
    hls_stream_info_t *hls = av_mallocz(sizeof(hls_stream_info_t));
    int add_ret;
    if (!hls) return NULL;

    av_log(NULL, AV_LOG_ERROR, "[%s:%d] HLS stream info ==> bandwidth=%d url=%s base=%s headers=%s\n",
            __FILE_NAME__, __LINE__, bandwidth, url, base, headers);

    hls->bandwidth = bandwidth;
    // if base is null c->file_name is the second level url because the url arg passed in maybe
    // moved location url.if the base is not null,the url must be original second url(not moved).
    if (NULL != base)
    {
        snprintf(hls->second_level_url, INITIAL_URL_SIZE, "%s", url);
    }
    else
    {
        snprintf(hls->second_level_url, INITIAL_URL_SIZE, "%s", c->file_name);
    }
    if (headers)
        hls->seg_stream.headers = av_strdup(headers);
    hlsResetPacket(&hls->seg_demux.pkt);

    hlsMakeAbsoluteUrl(hls->url, sizeof(hls->url), base, url);

    dynarray_add_noverify(&c->hls_stream, &c->hls_stream_nb, hls, &add_ret);
    if (add_ret < 0) {
        av_free(hls);
        hls = NULL;
    }
    return hls;
}

static void hlsHandleArgs(hls_info_t *info, const char *key, int key_len, char **dest, int *dest_len)
{
    if (!strncmp(key, "BANDWIDTH=", key_len)) {
        *dest     =        info->bandwidth;
        *dest_len = sizeof(info->bandwidth);
    } else if (!strncmp(key, "PROGRAM-ID=", key_len)) {
        *dest     =        info->program_id;
        *dest_len = sizeof(info->program_id);
    } else if (!strncmp(key, "CODECS=", key_len)) {
        *dest     =        info->codecs;
        *dest_len = sizeof(info->codecs);
    } else if (!strncmp(key, "RESOLUTION=", key_len)) {
        *dest     =        info->resolution;
        *dest_len = sizeof(info->resolution);
    }
}

static void hlsHandleKeyArgs(hls_key_info_t *info, const char *key,
        int key_len, char **dest, int *dest_len)
{
    if (!strncmp(key, "METHOD=", key_len)) {
        *dest     =        info->method;
        *dest_len = sizeof(info->method);
    } else if (!strncmp(key, "URI=", key_len)) {
        *dest     =        info->uri;
        *dest_len = sizeof(info->uri);
    } else if (!strncmp(key, "IV=", key_len)) {
        *dest     =        info->iv;
        *dest_len = sizeof(info->iv);
    }
}

static int hlsParseM3U8(HLSContext *c, char *url,
        hls_stream_info_t *hls, ByteIOContext *in)
{
    int ret = 0, duration = 0, is_segment = 0, is_hls = 0, bandwidth = 0, video_codec = 0, audio_codec = 0;
    char line[1024];
    const char *ptr;
    int close_in = 0;
    int segs_duration = 0;
    enum HLS_KEY_TYPE key_type = KEY_NONE;
    uint8_t iv[16] = "";
    int has_iv = 0;
    char key[INITIAL_URL_SIZE];
    AVDictionary *opts = NULL;
    char event_info[16];
    int  hls_finished = 0;
    int consume_ms;
    int64_t download_start_time;
    int duration_in_second = 0;

    /**make resolution change available from 3716c-0.6.3 r41002 changed by duanqingpeng**/
    /*HLSContext *hls_c = NULL;

    if (NULL != hls && NULL != hls->seg_demux.parent)
        hls_c = hls->seg_demux.parent->priv_data;
    */
    if (url && (!strncmp(url, "http://", strlen("http://")) || !strncmp(url, "https://", strlen("https://")))){
        av_log(0, AV_LOG_ERROR, "hls m3u8 %s download start...\n", url);
        download_start_time =  av_gettime();
        snprintf(c->cur_download_url, sizeof(c->cur_download_url), "%s", url);
        snprintf(event_info, sizeof(event_info), "%d",  -1);
        url_errorcode_cb(c->interrupt_callback.opaque, HLS_EVENT_SEGMENT_DOWNLOAD_START, event_info);
    }

    if (!in) {
        close_in = 1;

        if (c->user_agent && strlen(c->user_agent) > 0)
            av_dict_set(&opts, "user-agent", c->user_agent, 0);

        if (c->referer && strlen(c->referer) > 0)
            av_dict_set(&opts, "referer", c->referer, 0);

        if (c->cookies && strlen(c->cookies) > 0)
            av_dict_set(&opts, "cookies", c->cookies, 0);

        if (c->headers && strlen(c->headers) > 0)
            av_dict_set(&opts, "headers", c->headers, 0);

        ret = avio_open_h(&in, url, URL_RDONLY, &c->interrupt_callback, &opts);
        av_dict_free(&opts);

        if (ret < 0)
            return ret;

        /* Set url to http location url. */
        URLContext *uc = in->opaque;
        if (uc && uc->moved_url) {
            memset(url, 0, INITIAL_URL_SIZE);
            snprintf(url, INITIAL_URL_SIZE, "%s", uc->moved_url);
        }
    }

    hlsReadLine(in, line, sizeof(line), &c->interrupt_callback);
    if (av_strcmp(line, "#EXTM3U")) {
        ret = AVERROR_INVALIDDATA;
        goto fail;
    }

    pthread_mutex_lock(&c->stRefreshMutex);
    if (hls) {
        hlsFreeSegmentList(hls);
        hls->seg_list.hls_finished = 0;
    }

    while (!url_feof(in)) {
        hlsReadLine(in, line, sizeof(line), &c->interrupt_callback);
        if (ff_check_interrupt(&c->interrupt_callback)) {
            ret = AVERROR_EOF;
            goto fail;
        }

        if (av_strstart(line, "#EXTM3U", &ptr)) { // Allow only one m3u8 playlist
            break;
        } if (av_strstart(line, "#EXT-X-STREAM-INF:", &ptr)) {
            hls_info_t info = {{0}};
            is_hls = 1;
            hlsParseKeyValue(ptr, (hlsParseKeyValCb) hlsHandleArgs, &info);
            bandwidth = atoi(info.bandwidth);
            if(strstr(info.codecs, "mp4a.40.2") || strstr(info.codecs, "mp4a.40.5") || strstr(info.codecs, "mp4a.40.34")) {
                audio_codec = 1;
            }
            if(strstr(info.codecs, "avc1.42001e") || strstr(info.codecs, "avc1.66.30")
                    || strstr(info.codecs, "avc1.4d001e") || strstr(info.codecs, "avc1.77.30")
                    || strstr(info.codecs, "avc1.4d401f") || strstr(info.codecs, "avc1.4d401e")
                    || strstr(info.codecs, "avc1.42e015") || strstr(info.codecs, "avc1.4d4016")
                    || strstr(info.codecs, "avc1.42e016"))
            {
                video_codec = 1;
            }

        } else if (av_strstart(line, "#EXT-X-KEY:", &ptr)) {
            hls_key_info_t info = {{0}};
            hlsParseKeyValue(ptr, (hlsParseKeyValCb) hlsHandleKeyArgs, &info);

            key_type = KEY_NONE;
            has_iv = 0;

            if (!av_strcmp(info.method, "AES-128"))
                key_type = KEY_AES_128;
            if (!strncmp(info.iv, "0x", 2) || !strncmp(info.iv, "0X", 2)) {
                ff_hex_to_data(iv, info.iv + 2);
                has_iv = 1;
            }
            av_strlcpy(key, info.uri, sizeof(key));
        } else if (av_strstart(line, "#EXT-X-TARGETDURATION:", &ptr)) {
            if (!hls) {
                hls = hlsNewHlsStream(c, 0, url, NULL, c->headers);
                if (!hls) {
                    ret = AVERROR(ENOMEM);
                    goto fail;
                }
            }

            hls->seg_list.hls_target_duration = atoi(ptr);
            hls->seg_list.hls_package_duration = atoi(ptr);
        } else if (av_strstart(line, "#EXT-X-MEDIA-SEQUENCE:", &ptr)) {
            if (!hls) {
                hls = hlsNewHlsStream(c, 0, url, NULL, c->headers);
                if (!hls) {
                    ret = AVERROR(ENOMEM);
                    goto fail;
                }
            }

            hls->seg_list.hls_seg_start = atoi(ptr);
            av_log(NULL, AV_LOG_ERROR, "[%s:%d], hls_seg_start = %d \n",
                __FUNCTION__, __LINE__, hls->seg_list.hls_seg_start);
        } else if (av_strstart(line, "#EXT-X-ENDLIST", &ptr)) {
            if(strstr(url, "livemode=2")){
                hls->need_refresh_url = 1;
                av_log(NULL, AV_LOG_ERROR, "[%s:%d][m3u8]set need_refresh_url\n", __FUNCTION__, __LINE__);
                break;
            }
            if (hls)
                hls->seg_list.hls_finished = 1;
            hls_finished = 1;
            av_log(NULL, AV_LOG_ERROR, "[%s:%d], find endlist tag \n", __FUNCTION__, __LINE__);
            break;
        } else if (av_strstart(line, "#EXTINF:", &ptr)) {
            is_segment = 1;
            duration   = atof(ptr) * 1000;
            duration_in_second = duration / 1000;
            hls->seg_list.hls_last_seg_duration = duration_in_second;
            if (duration_in_second > 0 && duration_in_second < hls->seg_list.hls_target_duration)
                hls->seg_list.hls_target_duration = duration_in_second;
            else if (duration_in_second == 0)
                hls->seg_list.hls_target_duration = hls->seg_list.hls_target_duration;

            //av_log(NULL, AV_LOG_ERROR, "#EXTINF:%d ,fresh target duraion = %d \n",
            //    duration, hls->seg_list.hls_target_duration);
        } else if (av_strstart(line, "#", NULL)) {
            continue;
        } else if (line[0]) {
            if (is_hls) {
                // Select hls stream with max bandwidth

                /* //z00180556 parse all list
                   if (c->hls_stream_nb > 0) {
                   if (bandwidth > c->hls_stream[0]->bandwidth) {
                // Release last hls stream
                hlsFreeHlsList(c);
                } else {
                // Keep last hls stream
                is_hls     = 0;
                bandwidth  = 0;
                continue;
                }
                }
                */
                hls_stream_info_t *hls = hlsNewHlsStream(c, bandwidth, line, url, c->headers);

                if (!hls) {
                    ret = AVERROR(ENOMEM);
                    goto fail;
                }

                if (audio_codec || video_codec) {
                    hls->audio_codec = audio_codec;
                    hls->video_codec = video_codec;
                }

                if (!audio_codec && !video_codec) {
                    hls->audio_codec = 1;
                    hls->video_codec = 1;
                }

                if (!c->has_video_stream && hls->video_codec) {
                    c->has_video_stream = 1;
                }

                is_hls = 0;
                bandwidth  = 0;
                audio_codec = 0;
                video_codec = 0;

            }

            if (is_segment) {
                int seq;
                int add_ret;
                hls_segment_t *seg;
                if (!hls) {
                    hls = hlsNewHlsStream(c, 0, url, NULL, c->headers);
                    if (!hls) {
                        ret = AVERROR(ENOMEM);
                        goto fail;
                    }
                }

                seg = av_malloc(sizeof(hls_segment_t));
                if (!seg) {
                    ret = AVERROR(ENOMEM);
                    goto fail;
                }
                seg->start_time  = segs_duration;
                seg->total_time = duration;
                segs_duration += duration;
                seg->key_type   = key_type;

                if (has_iv) {
                    memcpy(seg->iv, iv, sizeof(iv));
                } else {
                    seq = hls->seg_list.hls_seg_start + hls->seg_list.hls_segment_nb;
                    memset(seg->iv, 0, sizeof(seg->iv));
                    AV_WB32(seg->iv + 12, seq);
                }

                hlsMakeAbsoluteUrl(seg->key, sizeof(seg->key), url, key);
                hlsMakeAbsoluteUrl(seg->url, sizeof(seg->url), url, line);
                dynarray_add_noverify(&hls->seg_list.segments, &hls->seg_list.hls_segment_nb, seg, &add_ret);
                is_segment = 0;
                if (add_ret < 0) {
                    av_free(seg);
                    seg = NULL;
                    ret = AVERROR(ENOMEM);
                    goto fail;
                }
            }
        }
    }

    if (hls)
        hls->seg_list.hls_last_load_time = av_gettime();

fail:
    pthread_mutex_unlock(&c->stRefreshMutex);
    if ((hls_finished || url_feof(in)) && url && (!strncmp(url, "http://", strlen("http://")) || !strncmp(url, "https://", strlen("https://")))) {
        consume_ms = (int)((av_gettime() - download_start_time)/1000);
        if (consume_ms < 0) {
            av_log(0, AV_LOG_ERROR, "[%s,%d] warning:consume_ms(%d) < 0?, actual time consume:%lld\n",
                __FUNCTION__, __LINE__, consume_ms, (av_gettime() - c->cur_seg_download_start_time)/1000);
            consume_ms = 0;
        }
        snprintf(event_info, sizeof(event_info), "%d", consume_ms);
        av_log(0, AV_LOG_ERROR, "hls m3u8 %s download finished!consume %d\n", url, consume_ms);
        url_errorcode_cb(c->interrupt_callback.opaque, HLS_EVENT_SEGMENT_DOWNLOAD_END, event_info);
        c->cur_download_url[0] = 0;
    }

    if (close_in) url_fclose(in);
    if (hls) {
        /*
        //z00180556 set default playback HLS and segment
        c->cur_seg=c->hls_stream[0]->seg_list.segments[0];
        c->cur_hls=c->hls_stream[0];
        c->cur_stream_seq = 0;
        c->cur_seq_num = 0;
        */
    }
    return ret;
}

static int hlsGetDefaultIndex(HLSContext *c, HLS_START_MODE_E mode)
{
    int default_video_bw_stream_nb = -1, i = 0;
    // d00198887 select the lowest or maxvideo bitrate stream to play
    // accord the mode
    if (c->stream_mode == HLS_STREAM_MODE_QUALITY_FIRST)
    {
        mode = HLS_MODE_NORMAL;
    }
    else  if (c->stream_mode == HLS_STREAM_MODE_FLUENT_FIRST)
    {
        mode = HLS_MODE_FAST;
    }

    for (i = 0; i < c->hls_stream_nb; i++)
    {
        if (0 != c->hls_stream[i]->video_codec)
        {
            if (-1 == default_video_bw_stream_nb)
            {
               default_video_bw_stream_nb = i;
               continue;
            }
            if (HLS_MODE_FAST == mode)
            {
                if ((c->hls_stream[i]->seg_list.hls_segment_nb) &&
                    (c->hls_stream[i]->bandwidth < c->hls_stream[default_video_bw_stream_nb]->bandwidth))
                {
                    default_video_bw_stream_nb = i;
                }
            }
            else
            {
                if ((c->hls_stream[i]->seg_list.hls_segment_nb) &&
                    (c->hls_stream[i]->bandwidth > c->hls_stream[default_video_bw_stream_nb]->bandwidth))
                {
                    default_video_bw_stream_nb = i;
                }
            }

        }
    }
    // d0198887 all is audio stream
    if (-1 == default_video_bw_stream_nb)
    {
        av_log(NULL, AV_LOG_INFO, "all stream is audio stream\n");
        default_video_bw_stream_nb = 0;
    }
    av_log(NULL, AV_LOG_INFO, "default hls stream is %d\n", default_video_bw_stream_nb);
    return default_video_bw_stream_nb;
}

static int hlsSetDownLoadSpeed(HLSContext *c, unsigned int read_size, unsigned int read_time
    , int64_t starttime, int64_t endtime)
{
    int64_t download_interval = 0;
    if (NULL == c)
    {
        return -1;
    }

    DownSpeed *downspeed = &(c->downspeed);
    DownNode *node = (DownNode *)av_malloc(sizeof(DownNode));
    if (NULL == node)
    {
        return -1;
    }

    node->down_size = read_size;
    node->down_time = read_time;
    node->down_starttime = starttime;
    node->down_endtime = endtime;
    node->next = NULL;

    if (NULL == downspeed->head)
    {
        downspeed->head = node;
        downspeed->tail = node;
        downspeed->down_size += node->down_size;
        downspeed->down_time += node->down_time;
        node = NULL;
    }
    else
    {
        downspeed->tail->next = node;
        downspeed->tail = node;
        downspeed->down_size += node->down_size;
        downspeed->down_time += node->down_time;
        node = NULL;
    }

    while (SPEED_SIZE < downspeed->down_size && downspeed->head != downspeed->tail)
    {
        node = downspeed->head;
        downspeed->head = downspeed->head->next;
        downspeed->down_size -= node->down_size;
        downspeed->down_time -= node->down_time;
        av_free(node);
        node = NULL;
    }

    if (c->download_speed_collect_freq_ms > 0)
    {
        if (0 == c->last_get_speed_time)
        {
            c->last_get_speed_time = av_gettime();
        }

        if (c->download_speed_collect_freq_ms * 1000 > (av_gettime() - c->last_get_speed_time))
        {
            return 0;
        }
    }


    if (downspeed->down_time != 0)
    {
        if (NULL == downspeed->tail || NULL == downspeed->head)
            return -1;
        download_interval = downspeed->tail->down_endtime - downspeed->head->down_starttime;
        if (0 == download_interval)
            return -1;
        downspeed->speed = (downspeed->down_size * 1000000 * 8) / download_interval;
        c->real_bw = downspeed->speed;
        c->netdata_read_speed = (downspeed->down_size * 1000000 * 8) / downspeed->down_time;
        c->last_get_speed_time = av_gettime();
    }

    return 0;
}

/*z00180556
 * function:    Get HLS Index by average band width
 * in:     HLS Context
 * out:    HLS index for next playback
 */
static int hlsGetIndex(HLSContext *c)
{
    uint64_t net_bw = c->netdata_read_speed;
    int    cur_bw=c->cur_hls->bandwidth;
    int    target_index=-1;
    int    target_bw = 0;
    int    cur_index=0;
    int    i=0;
    unsigned int bw_diff = 0xFFFFFFFF;

    if ((c->appoint_id >= 0) && (c->appoint_id < c->hls_stream_nb) &&
            (c->hls_stream[c->appoint_id]->seg_list.hls_segment_nb > 0)) {
        return c->appoint_id;
    }

    if (c->stream_mode == HLS_STREAM_MODE_QUALITY_FIRST ||
        c->stream_mode == HLS_STREAM_MODE_FLUENT_FIRST)
    {
        return hlsGetDefaultIndex(c, HLS_MODE_FAST);
    }

    for(i = 0; i < c->hls_stream_nb; i++)
    {
        if(c->hls_stream[i]->bandwidth ==cur_bw)
        {
            cur_index=i;
        }
    }

    for (i = 0; i < c->hls_stream_nb; i++) {
        if ((c->hls_stream[i]->bandwidth < net_bw)
                && (net_bw - c->hls_stream[i]->bandwidth < bw_diff)
                && (c->hls_stream[i]->seg_list.hls_segment_nb > 0)) {
            bw_diff = net_bw - c->hls_stream[i]->bandwidth;
            target_index = i;
        }
    }

    if (-1 == target_index) {
        bw_diff = 0xFFFFFFFF;
        for (i = 0; i < c->hls_stream_nb; i++) {
            if (c->hls_stream[i]->bandwidth < bw_diff
                    && (c->hls_stream[i]->seg_list.hls_segment_nb > 0)) {
                bw_diff = c->hls_stream[i]->bandwidth;
                target_index = i;
            }
        }
    }

    target_bw = c->hls_stream[target_index]->bandwidth;
    bw_diff = 0xFFFFFFFF;

    if (cur_index != target_index) {
        if (target_bw < cur_bw) {
            for (i = 0; i < c->hls_stream_nb; i++) {
                if ((c->hls_stream[i]->bandwidth < cur_bw)
                        && (cur_bw - c->hls_stream[i]->bandwidth < bw_diff)
                        && (c->hls_stream[i]->seg_list.hls_segment_nb > 0)) {
                    bw_diff = cur_bw - c->hls_stream[i]->bandwidth;
                    target_index = i;
                }
            }
        } else if (target_bw > cur_bw) {
            for (i = 0; i < c->hls_stream_nb; i++) {
                if ((c->hls_stream[i]->bandwidth > cur_bw)
                        && (c->hls_stream[i]->bandwidth - cur_bw < bw_diff)
                        && (c->hls_stream[i]->seg_list.hls_segment_nb > 0)) {
                    bw_diff = c->hls_stream[i]->bandwidth - cur_bw;
                    target_index = i;
                }
            }
        }
    }
    av_log(NULL, AV_LOG_ERROR, "[%s:%d] net_bw =%llu  current: %d %d  target: %d %d \n",
        __FILE_NAME__, __LINE__, net_bw, cur_index, cur_bw, target_index,c->hls_stream[target_index]->bandwidth);
    return target_index;
}

static int hlsUpdateUrlInfo(HLSContext *c, URLContext *uc)
{
    if (NULL == c)
    {
        av_log(NULL,AV_LOG_ERROR,"#[%s:%d] hlsUpdateUrlInfo invalid param#\n",__FUNCTION__,__LINE__);
        return -1;
    }

    memset(&c->stHlsUrlInfo, 0, sizeof(HLS_URL_INFO_S));

    if (NULL == uc)
    {
        if (c->cur_seg)
        {
            av_strlcpy(c->stHlsUrlInfo.url, c->cur_seg->url, sizeof(c->stHlsUrlInfo.url));
            c->stHlsUrlInfo.enable = 1;
        }
    }
    else
    {
        if (uc->moved_url)
        {
            av_strlcpy(c->stHlsUrlInfo.url, uc->moved_url, sizeof(c->stHlsUrlInfo.url));
        }
        else
        {
            av_strlcpy(c->stHlsUrlInfo.url, c->cur_seg->url, sizeof(c->stHlsUrlInfo.url));
        }

        c->stHlsUrlInfo.port = uc->port;
        av_strlcpy(c->stHlsUrlInfo.ipaddr, uc->ipaddr, sizeof(c->stHlsUrlInfo.ipaddr));
        c->stHlsUrlInfo.enable = 1;
    }

    return 0;
}

static int hlsOpenSegment(hls_stream_info_t *hls)
{
    int pos;
    int cur = hls->seg_list.hls_seg_cur;
    int start = hls->seg_list.hls_seg_start;
    HLSContext *c = hls->seg_demux.parent->priv_data;
    int ret = 0;
    AVDictionary *opts = NULL;
    char event_info[16];

    pos = cur - start;
    //hls_segment_t *seg = hls->seg_list.segments[pos];
    hls_segment_t *seg = c->cur_seg;
    if (!seg)
    {
        av_log(NULL, AV_LOG_ERROR, "[%s:%d] hlsOpenSegment fail, seg is null\n",__FILE_NAME__, __LINE__);
        return -1;
    }

    if (c->user_agent && strlen(c->user_agent) > 0)
        av_dict_set(&opts, "user-agent", c->user_agent, 0);

    if (c->referer && strlen(c->referer) > 0)
        av_dict_set(&opts, "referer", c->referer, 0);

    if (c->cookies && strlen(c->cookies) > 0)
        av_dict_set(&opts, "cookies", c->cookies, 0);

    if (c->headers && strlen(c->headers) > 0)
        av_dict_set(&opts, "headers", c->headers, 0);
    if ((seg->key_type == KEY_NONE || seg->key_type == KEY_AES_128)) {
        if (!strncmp(seg->url, "http://", strlen("http://")) || !strncmp(seg->url, "https://", strlen("https://"))) {
            av_log(0, AV_LOG_ERROR, "hls segment %d download start...\n", cur);
            snprintf(c->cur_download_url, sizeof(c->cur_download_url), "%s", seg->url);
            snprintf(event_info, sizeof(event_info), "%d",  cur);
            url_errorcode_cb(c->interrupt_callback.opaque, HLS_EVENT_SEGMENT_DOWNLOAD_START, event_info);
            c->cur_seg_download_start_time = av_gettime();
        }
    } else {
        /* If reached here, invalid type */
        return AVERROR(EINVAL);
    }

    if (seg->key_type == KEY_NONE) {
        av_log(NULL, AV_LOG_ERROR, "[%s:%d] open segment noKey url=%s pos=%d hls->bandwidth=%d \n",
            __FILE_NAME__, __LINE__, seg->url, pos,c->cur_hls->bandwidth);

        if (!strncmp(c->file_name, "hicache", 7) && seg->url) {
            av_log(NULL, AV_LOG_INFO, "use hicache to open:%s", seg->url);
            AVDictionary *options = NULL;
            char tmp[32];
            snprintf(tmp, sizeof(tmp), "%d", cur);

            if (c->user_agent && strlen(c->user_agent) > 0)
                av_dict_set(&options, "user-agent", c->user_agent, 0);
            if (c->referer && strlen(c->referer) > 0)
                av_dict_set(&options, "referer", c->referer, 0);
            if (c->cookies && strlen(c->cookies) > 0)
                av_dict_set(&options, "cookies", c->cookies, 0);
            if (c->headers && strlen(c->headers) > 0)
                av_dict_set(&options, "headers", c->headers, 0);

            av_dict_set(&options, "segment", tmp, 0);
            av_dict_set(&options, "url", strstr(seg->url, "http"), 0);

            if (pos + 1 < hls->seg_list.hls_segment_nb) {
                av_dict_set(&options, "url_next",
                    strstr(hls->seg_list.segments[pos + 1]->url, "http"), 0);
            }

            ret = hls_open_h(&hls->seg_stream.input, c->file_name, URL_RDONLY,
                &(c->interrupt_callback), &options);
            if (0 == ret)
            {
                hlsUpdateUrlInfo(c, hls->seg_stream.input);
            }
            else
            {
                hlsUpdateUrlInfo(c, NULL);
            }

            hls->seg_stream.offset = 0;
            av_dict_free(&options);
            av_dict_free(&opts);
            return ret;
        }

        av_log(NULL, AV_LOG_ERROR, "nocache open:%s", seg->url);//TODO:remove on release

        ret = hls_open_h(&hls->seg_stream.input, seg->url, URL_RDONLY, &(c->interrupt_callback), &opts);
        if (0 == ret)
        {
            hlsUpdateUrlInfo(c, hls->seg_stream.input);
        }
        else
        {
            hlsUpdateUrlInfo(c, NULL);
        }

        hls->seg_stream.offset = 0;
        av_dict_free(&opts);
        return ret;
    } else {
        av_log(NULL, AV_LOG_ERROR, "[%s:%d] open segment with Keyurl=%s \n url=%s\n",
            __FILE_NAME__, __LINE__, seg->key, seg->url);

        int ret, use_customer_client = 1;

        /* Read key context */
        if (av_strcmp(seg->key, hls->seg_key.key_url)) {
            #if defined (ANDROID_VERSION)
            if (use_customer_client) {
                // call customer client get key info
                unsigned int client_handle = 0;

                av_log(NULL, AV_LOG_ERROR, "[CLIENT] %s:%d, call CLIENT_Init \n", __FILE_NAME__, __LINE__);

                ret = CLIENT_Init(&client_handle);

                if (CLIENT_SUCCESS != ret) {
                    av_log(NULL, AV_LOG_ERROR, "[CLIENT] %s:%d, client init fail \n", __FILE_NAME__, __LINE__);
                    use_customer_client = 0;
                } else {
                    av_log(NULL, AV_LOG_ERROR, "[CLIENT] %s:%d, call CLIENT_GetKey \n", __FILE_NAME__, __LINE__);
                    ret = CLIENT_GetKey(client_handle, seg->key, hls->seg_key.key, sizeof(hls->seg_key.key), NULL);

                    if (CLIENT_SUCCESS != ret) {
                        av_log(NULL, AV_LOG_ERROR, "[CLIENT] %s:%d, call get key fail \n", __FILE_NAME__, __LINE__);
                        use_customer_client = 0;
                    }
                }

                av_log(NULL, AV_LOG_ERROR, "[CLIENT] %s:%d, call CLIENT_Deinit \n", __FILE_NAME__, __LINE__);
                CLIENT_Deinit(client_handle);
                client_handle = 0;
            }
            #else
            use_customer_client = 0;
            #endif

            if (!use_customer_client) {
                URLContext *uc;
                int64_t offset;

                /* Open key url to get key context */
                ret = hls_open_h(&uc, seg->key, URL_RDONLY, &(c->interrupt_callback), &opts);
                offset = 0;
                if (0 == ret)
                {
                    hlsUpdateUrlInfo(c, uc);
                }
                else
                {
                    hlsUpdateUrlInfo(c, NULL);
                }

                if (ret == 0) {
                    ret = hls_read_complete(uc, offset, hls->seg_key.key, sizeof(hls->seg_key.key));
                    if (ret != sizeof(hls->seg_key.key)) {
                        av_log(NULL, AV_LOG_ERROR, "[%s:%d] Unable to read key file %s\n", __FILE_NAME__, __LINE__, seg->key);
                    }

                    if(ret > 0)
                        offset += ret;

                    hls_close(uc);
                } else {
                    av_log(NULL, AV_LOG_ERROR, "[%s:%d] Unable to open key file %s\n", __FILE_NAME__, __LINE__, seg->key);
                }
            }

            av_strlcpy(hls->seg_key.key_url, seg->key, sizeof(hls->seg_key.key_url));
        }

        if (hls->seg_key.IO_decrypt) {
            hls_decrypt_close(hls->seg_key.IO_decrypt);
            av_freep(&hls->seg_key.IO_decrypt);
            hls->seg_key.IO_decrypt = NULL;
        }

        hls->seg_key.IO_decrypt = av_mallocz(sizeof(Hls_CryptoContext));
        if (!hls->seg_key.IO_decrypt) {
            av_dict_free(&opts);
            return AVERROR(ENOMEM);
        }

        //hls->seg_key.IO_decrypt->userdata = userdata;
        hls->seg_key.IO_decrypt->interrupt_callback.callback = c->interrupt_callback.callback;
        hls->seg_key.IO_decrypt->interrupt_callback.opaque = c->interrupt_callback.opaque;
        hls->seg_key.IO_decrypt->file_name = c->file_name;
        hls->seg_key.IO_decrypt->cur_segment = cur;
        ret = hls_decrypt_open(hls->seg_key.IO_decrypt,
                               seg->url,
                               &opts,
                               hls->seg_stream.headers,
                               hls->seg_key.key,
                               sizeof(hls->seg_key.key),
                               seg->iv,
                               sizeof(seg->iv));
        av_dict_free(&opts);
        return ret;
    }

    /* If reached here, invalid type */
    return AVERROR(EINVAL);
}

#undef time

static int hlsFreshUrl(hls_stream_info_t *v)
{
    char    *pTmp = NULL;
    char    *pDate = NULL;
    char    *pTime = NULL;
    char    *pEnd  = NULL;
    unsigned int duration = 0, i = 0;
    unsigned int date_old = 0, time_old = 0, time_new = 0, date_new = 0;
    int tm_sec = 0, tm_min = 0, tm_hour = 0, tm_mday = 0, tm_mon = 0, tm_year = 0;

    time_t timeSec, timeSystem;
    struct tm ptm[1];
    struct tm *tmp = NULL;
    char startTime[128];

    //char *url_temp ="http://10.67.225.126/0_0_3736680_0.m3u8?id=3736680&scId=&isChannel=true&time=300&serviceRegionIds
    //=&codec=ALL&quality=100&vSiteCode=&offset=0&livemode=2&starttime=20130906T134439Z";
    av_log(NULL, AV_LOG_ERROR, "%s,%d, ### last URL:%s \n",__FILE__,__LINE__, v->url);

    if (pTmp = strstr(v->url, "starttime=")) {
        pDate = pTmp + strlen("starttime=");
        date_old = atoi(pDate);
        tm_year = date_old / 10000 - 1900;
        tm_mon  = (date_old % 10000) / 100 - 1;
        tm_mday = date_old % 100;

        pTmp = strstr(pDate, "T");

        if (!pTmp) {
            av_log(NULL, AV_LOG_ERROR, "%s,%d,\n",__FILE__,__LINE__);
            return 0;
        }

        pTime    = pTmp + 1;
        time_old = atoi(pTime);
        tm_hour  = time_old / 10000;
        tm_min   = (time_old % 10000) / 100;
        tm_sec   = time_old % 100;

        for (i = 0; i < v->seg_list.hls_segment_nb; i++) {
            duration += v->seg_list.segments[i]->total_time;
        }

        memset(ptm, 0, sizeof(ptm));
        ptm[0].tm_sec  = tm_sec;
        ptm[0].tm_min  = tm_min;
        ptm[0].tm_hour = tm_hour;
        ptm[0].tm_mday = tm_mday;
        ptm[0].tm_mon  = tm_mon;
        ptm[0].tm_year = tm_year;

        #if 0
        timeSec = mktime(ptm);
        timeSec += duration;
        tmp = localtime(&timeSec);
        #else
        timeSec = mktime(ptm);
        timeSec += duration / 1000;
        timeSystem = time(0);

        av_log(NULL, AV_LOG_ERROR, "INFO: timeSec = %d, timeSystem = %d, duration = %d \n", timeSec, timeSystem, duration);

        if (timeSystem <= timeSec)
            timeSec = timeSystem - 1;
        timeSec -= 20;
        av_log(NULL, AV_LOG_ERROR, "INFO1: timeSec = %d, timeSystem = %d, duration = %d \n", timeSec, timeSystem, duration);
        tmp = localtime(&timeSec);
        #endif

        //time_new = tmp->tm_hour * 10000 + tmp->tm_min * 100 + tmp->tm_sec;
        //date_new = (1900 + tmp->tm_year) * 10000 + (1 + tmp->tm_mon) * 100 + tmp->tm_mday;

        memset(startTime, 0, 128);
        strftime(startTime, 100, "%Y%m%dT%H%M%S.00Z", tmp);
        //snprintf(startTime, 100, "%04d%02d%02dT%02d%02d%02d.00Z",
        //        (1900 + tmp->tm_year), (1 + tmp->tm_mon), tmp->tm_mday,
        //        tmp->tm_hour, tmp->tm_min, tmp->tm_sec);
        av_log(NULL, AV_LOG_ERROR, "#:%d-%d-%d %d:%d:%d\n",(1900 + tmp->tm_year), (1 + tmp->tm_mon), tmp->tm_mday,
                tmp->tm_hour, tmp->tm_min, tmp->tm_sec);
        av_log(NULL, AV_LOG_ERROR, "caculate time = %s \n", startTime);

        pEnd = strstr(pDate, ".00Z");

        if (pEnd > pDate && pEnd + strlen(".00Z") < v->url + strlen(v->url))
        {
            av_log(NULL, AV_LOG_ERROR, "%s,%d, ### EndStr:%s \n",__FILE__,__LINE__, pEnd);
            snprintf(pDate, INITIAL_URL_SIZE - (pDate - v->url), "%s%s", startTime, pEnd + strlen(".00Z"));
        }
        else
        {
            //TimeSample:20140423T110600.00Z
            //memset(pDate, 0, INITIAL_URL_SIZE - (pDate - v->url));
            //snprintf(pDate, INITIAL_URL_SIZE - (pDate - v->url), "%08dT%06d.00Z", date_new, time_new);
            snprintf(pDate, INITIAL_URL_SIZE - (pDate - v->url), "%s", startTime);
        }

        av_log(NULL, AV_LOG_ERROR, "%s,%d, ### New URL:%s \n",__FILE__,__LINE__, v->url);
    }
    else
    {
        return -1;
    }

    return 0;
}

static int hlsLiveToTimeSeek(hls_stream_info_t *v)
{
    // count on the offset,make sure that we can continue the play after timeseek.
    // the m3u8 must be continuous from the one that is before timeseek.
    const int OFFSET_TIMESEEK = 6*60;
    char    *pTmp = NULL;
    char    *pEnd  = NULL;
    unsigned int duration = 0;
    char    *end_suffix[INITIAL_URL_SIZE];
    char    start_time[128];
    char    livemode_string[INITIAL_URL_SIZE];
    char    *temp_string;
    int i = 0;

    if (pTmp = strstr(v->url, "livemode=1")) {
        av_log(NULL, AV_LOG_ERROR, "live now seg %d seg num %d end seg %d", v->seg_list.hls_seg_cur,
            v->seg_list.hls_segment_nb, v->seg_list.hls_seg_start + v->seg_list.hls_segment_nb - 1);

        // cal time seek interval to latest beijingtime
        for (i = v->seg_list.hls_seg_cur + 1; i <v->seg_list.hls_seg_start+ v->seg_list.hls_segment_nb;
            i++)
        {
            duration += v->seg_list.segments[i - v->seg_list.hls_seg_start]->total_time;
        }
        av_log(NULL,AV_LOG_ERROR,"time seek interval is %u", duration);

        memset(livemode_string, 0, INITIAL_URL_SIZE);
        memset(start_time, 0, 128);
        time_t lt = time(0) - duration/1000 - OFFSET_TIMESEEK;
        struct tm *ptr = localtime(&lt);
        strftime(start_time, 100, "%Y%m%dT%H%M%S.00Z", ptr);
        temp_string =  av_asnprintf("livemode=2&starttime=%s", start_time);
        av_log(NULL,AV_LOG_ERROR,"livemode string is %s",temp_string);
        av_strlcpy(livemode_string, temp_string, INITIAL_URL_SIZE);
        av_freep(&temp_string);
        pEnd = pTmp + strlen("livemode=1");
        memset(end_suffix,0 ,INITIAL_URL_SIZE);
        av_strlcpy(end_suffix, pEnd, INITIAL_URL_SIZE);
        av_log(NULL, AV_LOG_ERROR, "end suffix is %s",end_suffix);

        if (pEnd < v->url + strlen(v->url))
        {
            snprintf(pTmp, INITIAL_URL_SIZE - (pTmp - v->url), "%s%s", livemode_string, end_suffix);
            av_log(NULL, AV_LOG_ERROR, "fresh temp url %s", pTmp);
        }
        else
        {
            //TimeSample:20140423T110600.00Z
            //memset(pDate, 0, INITIAL_URL_SIZE - (pDate - v->url));
            //snprintf(pDate, INITIAL_URL_SIZE - (pDate - v->url), "%08dT%06d.00Z", date_new, time_new);
            snprintf(pTmp, INITIAL_URL_SIZE - (pTmp - v->url), "%s", livemode_string);
            av_log(NULL,AV_LOG_ERROR,"fresh temp url1 %s", pTmp);
        }

        av_log(NULL, AV_LOG_ERROR, "%s,%d, ### New URL:%s \n",__FILE__,__LINE__, v->url);
    }
    else
    {
        av_log(NULL,AV_LOG_ERROR,"now is not live play,do not time seek");
        return -1;
    }

    return 0;
}
static int hlsReadDataCb(void *opaque, uint8_t *buf, int buf_size)
{
    hls_stream_info_t *v = opaque;
    HLSContext *c = v->seg_demux.parent->priv_data;
    int ret, i;
    int need_reload = 0;
    int64_t time_diff;
    int64_t time_wait;
    int open_fail = 0;
    int64_t seg_consume_begin = 0, seg_consume_end = 0;

restart:
    if (!v->seg_stream.input) {
reload:
        time_diff = av_gettime() - v->seg_list.hls_last_load_time;
        time_wait = v->seg_list.hls_target_duration * AV_TIME_BASE;

        if (time_wait > HLS_MAX_WAITE_TIME)
            time_wait = HLS_MAX_WAITE_TIME;
        if (!v->seg_list.hls_finished)
        {
            pthread_mutex_lock(&c->stRefreshMutex);
            if (c->m3u8_refresh_info){
                hlsFreeSegmentList(v);
                ret = copy_m3u8_info(v,c->m3u8_refresh_info);
                av_log(NULL, AV_LOG_ERROR, "[%s:%d][ref_m3u8]copy_m3u8_info,S:%d,C:%d,N:%d\n",__FILE_NAME__, __LINE__,v->seg_list.hls_seg_start,v->seg_list.hls_seg_cur,v->seg_list.hls_segment_nb);
                if (ret != 0)
                    av_log(NULL, AV_LOG_ERROR, "[%s:%d][ref_m3u8]copy_hls_segments faile\n",__FILE_NAME__, __LINE__);
            }
            pthread_mutex_unlock(&c->stRefreshMutex);
        }

        if (v->seg_list.hls_seg_cur < v->seg_list.hls_seg_start) {
            av_log(NULL, AV_LOG_ERROR, "[%s:%d] skipping %d segments ahead, expired from playlists",
                    __FILE_NAME__, __LINE__,
                    v->seg_list.hls_seg_start - v->seg_list.hls_seg_cur);
            v->seg_list.hls_seg_cur = v->seg_list.hls_seg_start;
        }

        if (c->need_fresh_url)
        {
            av_log(NULL,AV_LOG_ERROR,"fresh live url to timeseek url");
            if (0 == hlsLiveToTimeSeek(v))
            {
                av_log(NULL, AV_LOG_ERROR, "[%s:%d]fresh live url to timeseek url:%s\n",
                    __FILE_NAME__, __LINE__, v->url);
                pthread_mutex_lock(&c->stRefreshMutex);
                memcpy(c->cur_hls->url,v->url,INITIAL_URL_SIZE);
                pthread_mutex_unlock(&c->stRefreshMutex);
                //need_reload = 1;
                c->need_fresh_url =0;
                c->need_fresh_currentidx = 1;
                av_log(NULL, AV_LOG_ERROR, "[%s:%d]fresh live url to timeseek url,c->cur_hls->url:%s\n",
                    __FILE_NAME__, __LINE__, c->cur_hls->url);

                while(c->need_fresh_currentidx)
                {
                    if (ff_check_interrupt(&c->interrupt_callback))
                    {
                        av_log(NULL, AV_LOG_ERROR, "[%s:%d]exit, return eof\n", __FILE_NAME__, __LINE__);
                        return AVERROR_EOF;
                    }
                    usleep(100*1000);
                }

                av_log(NULL, AV_LOG_ERROR, "[%s:%d]fresh live url to timeseek url end\n", __FILE_NAME__, __LINE__);
                goto reload;
            }
            c->need_fresh_url = 0;
            time_diff = av_gettime() - v->seg_list.hls_last_load_time;
            time_wait = v->seg_list.hls_target_duration * AV_TIME_BASE;

            if (time_wait > HLS_MAX_WAITE_TIME)
                time_wait = HLS_MAX_WAITE_TIME;

            while (llabs(time_diff) < time_wait) {
                if (ff_check_interrupt(&c->interrupt_callback))
                    return AVERROR_EOF;

                usleep(100*1000);

                time_diff = av_gettime() - v->seg_list.hls_last_load_time;
                time_wait = v->seg_list.hls_target_duration * AV_TIME_BASE;

                if (time_wait > HLS_MAX_WAITE_TIME)
                    time_wait = HLS_MAX_WAITE_TIME;
            }

            /* Enough time has elapsed since the last reload */
            if (ff_check_interrupt(&c->interrupt_callback))
                return AVERROR_EOF;
            goto reload;
        }

        if (v->seg_list.hls_seg_cur >= v->seg_list.hls_seg_start + v->seg_list.hls_segment_nb) {
            if (v->seg_list.hls_finished
               || (!v->seg_list.hls_finished && ((AVFormatContext*)c->parent)->duration > MAX_LIVE_CACHE_DURATION * AV_TIME_BASE
                   && !strstr(v->url, "livemode=2"))){
            return AVERROR_EOF;
        }else if(ff_check_interrupt(&c->interrupt_callback)) {
            av_log(NULL, AV_LOG_ERROR, "[%s:%d] return EOF, force exit\n",__FILE_NAME__, __LINE__);
            return AVERROR_EOF;
        }else {
            goto reload;
        }
#if 0
            #if defined (ANDROID_VERSION)
            /* add for china mobile iptv */
            char value[1024] = {0};
            int is_china_mobile_iptv = 0;

            memset(value, 0, 1024);

            /* client.apk.name
                   1. iptv.china.mobile
                   2. iptv.china.telecom
                   set apk.name by using "setprop iptv.project.name iptv.china.mobile" command.
                   */

            if (property_get("iptv.project.name", value, NULL) > 0) {
                if (!strncmp(value, "iptv.china.mobile", 17)) {
                    is_china_mobile_iptv = 1;
                    av_log(NULL, AV_LOG_ERROR, "[%s:%d] find china mobile iptv flag \n", __FILE_NAME__, __LINE__);
                }
            }

            if (1 == is_china_mobile_iptv) {
                int ret_t = hlsFreshUrl(v);

                if (0 == ret_t) {
                    //need_reload = 1;
                    goto reload;
                }
            }
            /* iptv end */
            #endif

            time_diff = av_gettime() - v->seg_list.hls_last_load_time;
            time_wait = v->seg_list.hls_target_duration * AV_TIME_BASE;

            if (time_wait > HLS_MAX_WAITE_TIME)
                time_wait = HLS_MAX_WAITE_TIME;

            while (llabs(time_diff) < time_wait) {
                if (ff_check_interrupt(&c->interrupt_callback))
                    return AVERROR_EOF;

                usleep(100*1000);

                time_diff = av_gettime() - v->seg_list.hls_last_load_time;
                time_wait = v->seg_list.hls_target_duration * AV_TIME_BASE;

                if (time_wait > HLS_MAX_WAITE_TIME)
                    time_wait = HLS_MAX_WAITE_TIME;
            }

            /* Enough time has elapsed since the last reload */
            if (ff_check_interrupt(&c->interrupt_callback))
                return AVERROR_EOF;
            goto reload;
#endif
        }
        if (!v->seg_list.hls_finished) {
#if 0
            int64_t time_parseM3U8 = av_gettime();
            if (c->cur_stream_seq != v->seg_list.hls_index) {
reparse2:
                time_parseM3U8 = av_gettime();
                ret = hlsParseM3U8(c, c->cur_hls->url, c->cur_hls, NULL);
                if (ret < 0) {
                    if (ff_check_interrupt(&c->interrupt_callback))
                        return ret;

                    usleep(1000*1000);
                    av_log(NULL, AV_LOG_ERROR, "[%s:%d] redo hlsParseM3U8\n", __FILE_NAME__, __LINE__);
                    goto reparse2;
                }
            }
#if 0
            if (c->cur_hls->seg_list.hls_seg_start+ c->cur_hls->seg_list.hls_segment_nb - 1 < v->seg_list.hls_seg_cur) {
                goto reparse2;
            }
#else
            av_log(NULL, AV_LOG_ERROR, "[%s:%d] Sequence ReCount, v.seg_start:%d, v.seg_cur:%d, cur_hls.seg_start:%d, cur_hls.seg_cur:%d, cur_hls.segment_nb:%d",
                __FUNCTION__, __LINE__, v->seg_list.hls_seg_start, v->seg_list.hls_seg_cur,
                c->cur_hls->seg_list.hls_seg_start, c->cur_hls->seg_list.hls_seg_cur, c->cur_hls->seg_list.hls_segment_nb);

            if (c->use_offset_seq) {
                av_log(NULL, AV_LOG_ERROR, "[%s:%d] v->first_seg_number:%d, cur_hls->first_seg_number:%d",
                    __FUNCTION__, __LINE__, v->first_seg_number, c->cur_hls->first_seg_number);

                if (v->seg_list.hls_seg_cur - v->first_seg_number + c->cur_hls->first_seg_number
                    <= c->cur_hls->seg_list.hls_seg_start + c->cur_hls->seg_list.hls_segment_nb - 1) {
                    c->cur_hls->seg_list.hls_seg_cur
                        = v->seg_list.hls_seg_cur - v->first_seg_number + c->cur_hls->first_seg_number;
                } else {
                    c->cur_hls->seg_list.hls_seg_cur
                        = v->seg_list.hls_seg_cur - v->seg_list.hls_seg_start + c->cur_hls->seg_list.hls_seg_start;
                }
            } else {
                if (c->cur_hls->seg_list.hls_seg_start + c->cur_hls->seg_list.hls_segment_nb - 1 < v->seg_list.hls_seg_cur) {
                    if (c->cur_hls->need_refresh_url) {
                        av_log(NULL, AV_LOG_ERROR, "[%s:%d]c->cur_hls->url:%s\n", __FILE_NAME__, __LINE__, c->cur_hls->url);
                        pthread_mutex_lock(&c->stRefreshMutex);
                        hlsFreshUrl(c->cur_hls);
                        pthread_mutex_unlock(&c->stRefreshMutex);
                        c->need_fresh_currentidx = 1;
                    }

                    if (llabs(av_gettime() - time_parseM3U8) < 1000*1000) {
                        usleep(1000*1000);
                    }
                    goto reparse2;
                }
            }
            #if 0
            else {
                if ((c->cur_hls->seg_list.hls_seg_start + c->cur_hls->seg_list.hls_segment_nb - 1) < v->seg_list.hls_seg_cur) {
                    v->seg_list.hls_seg_cur = v->seg_list.hls_seg_cur - v->seg_list.hls_seg_start
                        + c->cur_hls->seg_list.hls_seg_start;
                } else if (c->cur_hls->seg_list.hls_seg_start > v->seg_list.hls_seg_start + v->seg_list.hls_segment_nb - 1) {
                    v->seg_list.hls_seg_cur = v->seg_list.hls_seg_cur - v->seg_list.hls_seg_start
                        + c->cur_hls->seg_list.hls_seg_start;
                }
            }
            #endif
#endif
#endif
            //c->cur_seg = c->cur_hls->seg_list.segments[v->seg_list.hls_seg_cur - v->seg_list.hls_seg_start];
            //c->cur_seq_num = v->seg_list.hls_seg_cur - v->seg_list.hls_seg_start;
            #if 0  /* yll:cur_hls.hls_seg_cur is wrong, because the new m3u8 not fresh when caculate the hls_seg_cur value at the function end */
            if (c->cur_hls->seg_list.hls_seg_cur >= c->cur_hls->seg_list.hls_seg_start) {
                c->cur_seg = c->cur_hls->seg_list.segments[c->cur_hls->seg_list.hls_seg_cur - c->cur_hls->seg_list.hls_seg_start];
                c->cur_seq_num = c->cur_hls->seg_list.hls_seg_cur - c->cur_hls->seg_list.hls_seg_start;
                av_log(NULL, AV_LOG_ERROR, "[%s:%d], cur_seq_num = %d ", __FUNCTION__, __LINE__, c->cur_seq_num);
            } else {
                c->cur_seg = c->cur_hls->seg_list.segments[0];
                c->cur_seq_num = 0;
                av_log(NULL, AV_LOG_ERROR, "[%s:%d], cur_seq_num = %d ", __FUNCTION__, __LINE__, c->cur_seq_num);
            }
            #else
            if (v->seg_list.hls_seg_cur >= c->cur_hls->seg_list.hls_seg_start) {
                c->cur_seg = c->cur_hls->seg_list.segments[v->seg_list.hls_seg_cur - c->cur_hls->seg_list.hls_seg_start];
                c->cur_seq_num = v->seg_list.hls_seg_cur - c->cur_hls->seg_list.hls_seg_start;
                av_log(NULL, AV_LOG_ERROR, "[%s:%d], cur_seq_num = %d ", __FUNCTION__, __LINE__, c->cur_seq_num);
            } else {
                c->cur_seg = c->cur_hls->seg_list.segments[0];
                c->cur_seq_num = 0;
                av_log(NULL, AV_LOG_ERROR, "[%s:%d], cur_seq_num = %d ", __FUNCTION__, __LINE__, c->cur_seq_num);
            }
            #endif
        }

        //c->read_time = 500*1000;
        int64_t open_start = av_gettime();
reopen:
        if (!c->cur_seg)
        {
            av_log(NULL, AV_LOG_ERROR, "[%s:%d] return EOF, c->cur_seg is null\n",__FILE_NAME__, __LINE__);
            return AVERROR_EOF;
        }

        seg_consume_begin = av_gettime();
        ret = hlsOpenSegment(v);
        c->seg_download_consume += (av_gettime() - seg_consume_begin);
        if (ret < 0) {
            open_fail = 1;
            av_log(NULL, AV_LOG_ERROR, "[%s:%d] ret = %d \n", __FILE_NAME__, __LINE__, ret);
            if (ff_check_interrupt(&c->interrupt_callback) || ret == AVERROR(ENOMEM)) {
                av_log(NULL, AV_LOG_ERROR, "[%s:%d] return EOF, hlsOpenSegment = %d \n",__FILE_NAME__, __LINE__, ret);
                c->seg_download_consume = 0;
                return AVERROR_EOF;
            }
            if (v->seg_list.hls_finished) { // Reload item for metadata stream
                if (ret == AVERROR(EAGAIN)) {
                    usleep(100*1000);
                    goto reopen;
                }

                if (c->hls_stream_nb > 1) {
                    c->cur_hls->has_read = 1;
                    unsigned int min_bw_diff = 0xffffffff;
                    int temp_stream_num = 0;
                    hls_stream_info_t *temp_stream = NULL;
                    for (i = 0; i < c->hls_stream_nb; i++) {
                        if ((FFABS((c->hls_stream[i]->bandwidth - c->cur_hls->bandwidth)) < min_bw_diff)
                                && c->hls_stream[i]->has_read == 0 && (c->hls_stream[i]->seg_list.hls_segment_nb > 0)) {
                            temp_stream = c->hls_stream[i];
                            temp_stream_num = i;
                            min_bw_diff = FFABS(c->hls_stream[i]->bandwidth - c->cur_hls->bandwidth);
                        }
                    }
                    if (NULL == temp_stream) {
                        c->seg_download_consume = 0;
                        goto load_next;
                    } else {
                        c->cur_hls = temp_stream;
                        c->cur_seg = c->cur_hls->seg_list.segments[c->cur_seq_num];
                        c->cur_stream_seq = temp_stream_num;
                    }
                } else {
                    c->seg_download_consume = 0;
                    goto load_next;
                }

                //usleep(500*1000);
                goto reload;
            } else { // Reload playlist for live stream
                v->seg_list.hls_seg_cur++;
                goto reload;
            }
        } else {
            AVFormatContext *s = c->parent;
            if (v->seg_stream.input) {
                v->seg_stream.input->parent = s->pb;
                if (open_fail && !strncmp(v->seg_stream.input->filename, "http://", strlen("http://"))) {
                    av_log(NULL, AV_LOG_ERROR, "[%s:%d] network normal\n",__FILE_NAME__,__LINE__);
                    url_errorcode_cb(c->interrupt_callback.opaque, NETWORK_NORMAL, "http");
                    open_fail = 0;
                }
            }
            if (v->seg_key.IO_decrypt) {
                v->seg_key.IO_decrypt->hd->parent = s->pb;
                if (open_fail && !strncmp(v->seg_key.IO_decrypt->hd->filename, "http://", strlen("http://"))) {
                    av_log(NULL, AV_LOG_ERROR, "[%s:%d] network normal\n",__FILE_NAME__,__LINE__);
                    url_errorcode_cb(c->interrupt_callback.opaque, NETWORK_NORMAL, "http");
                    open_fail = 0;
                }
            }

            c->cur_seg->filesize = url_filesize(v->seg_stream.input);
            url_errorcode_cb(c->interrupt_callback.opaque, HLS_EVENT_TS_SEGMENT_DOWNLOAD_START, (void *)c);
        }
    }

    int64_t  start = av_gettime();
    seg_consume_begin = av_gettime();
    if (v->seg_key.IO_decrypt) {  // Encrypted stream
        if (!v->seg_stream.input)
            v->seg_stream.input = v->seg_key.IO_decrypt->hd;
        ret = hls_decrypt_read(v->seg_key.IO_decrypt, buf, buf_size);
    } else {  // Normal stream
        ret = hls_read(v->seg_stream.input, v->seg_stream.offset, buf, buf_size);
        if(ret > 0)
            v->seg_stream.offset += ret;
    }
    c->seg_download_consume += (av_gettime() - seg_consume_begin);
    int64_t  end = av_gettime();
    if (ret > 0) {
        unsigned int read_size = ret;
        unsigned int read_time = end - start;
        hlsSetDownLoadSpeed(c, read_size, read_time, start, end);
        return ret;
    }

    if (ret < 0 && ret != AVERROR_EOF)
        return ret;

    if ((v->seg_stream.input  && v->seg_stream.input->is_streamed)  ||
        (v->seg_key.IO_decrypt && v->seg_key.IO_decrypt->hd && v->seg_key.IO_decrypt->hd->is_streamed)){
        char event_info[16];
        //int  consume_ms;
        //consume_ms = (int)((av_gettime() - c->cur_seg_download_start_time)/1000);
        if (c->seg_download_consume < 0) {
            av_log(0, AV_LOG_ERROR, "[%s,%d] warning:consume_ms(%lld) < 0?, maybe systemtime error\n",
                __FUNCTION__, __LINE__, c->seg_download_consume);
            //consume_ms = 0;
        }
        snprintf(event_info, sizeof(event_info), "%lld",  c->seg_download_consume / 1000);
        av_log(0, AV_LOG_ERROR, "hls segment %d download finish, consume:%lld\n", v->seg_list.hls_seg_cur, c->seg_download_consume / 1000);
        url_errorcode_cb(c->interrupt_callback.opaque, HLS_EVENT_SEGMENT_DOWNLOAD_END, event_info);
        url_errorcode_cb(c->interrupt_callback.opaque, HLS_EVENT_TS_SEGMENT_DOWNLOAD_END, (void *)c);
        c->cur_download_url[0] = 0;
    }
    c->seg_download_consume = 0;
    if (v->seg_key.IO_decrypt) {
        hls_decrypt_close(v->seg_key.IO_decrypt);
        av_freep(&v->seg_key.IO_decrypt);
        v->seg_key.IO_decrypt = NULL;
        v->seg_stream.input = NULL;
    }

    if (v->seg_stream.input) {
        hls_close(v->seg_stream.input);
        v->seg_stream.input = NULL;
        v->seg_stream.offset = 0;
    }

load_next:
    for (i = 0; i < c->hls_stream_nb; i++) {
        c->hls_stream[i]->has_read = 0;
    }

    v->seg_list.hls_seg_cur++;
    int pos=0;
    int stream_num = 0;
    hls_stream_info_t *hls = c->hls_stream[0];
    stream_num = hlsGetIndex(c);
    hls_stream_info_t *hls_next = c->hls_stream[stream_num];
    pos = hls_next->seg_list.hls_seg_start + (hls->seg_list.hls_seg_cur - hls->seg_list.hls_seg_start);

    av_log(NULL, AV_LOG_ERROR, "[%s:%d] hls_next.seg_start = %d, hls.seg_cur = %d hls.seg_start = %d, pos = %d\n",
        __FUNCTION__, __LINE__,
        hls_next->seg_list.hls_seg_start,
        hls->seg_list.hls_seg_cur,
        hls->seg_list.hls_seg_start, pos);

    if (hls_next->seg_list.hls_segment_nb > 0) {
        if (v->seg_list.hls_finished) {
            if (pos < hls_next->seg_list.hls_segment_nb + hls_next->seg_list.hls_seg_start) {
                if (c->cur_stream_seq != stream_num)
                    need_reload = 1;

                c->cur_seg = hls_next->seg_list.segments[pos-hls_next->seg_list.hls_seg_start];
                c->cur_hls = hls_next;
                c->cur_stream_seq = stream_num;
                c->cur_seq_num = pos-hls_next->seg_list.hls_seg_start;
            }
        } else {
            if (c->cur_stream_seq != stream_num)
                need_reload = 1;

            c->cur_hls = hls_next;
            c->cur_stream_seq = stream_num;
            if (pos < hls_next->seg_list.hls_segment_nb + hls_next->seg_list.hls_seg_start) {
                c->cur_hls->seg_list.hls_seg_cur = pos;
                av_log(NULL, AV_LOG_ERROR, "[%s:%d] set cur_hls.seg_cur = %d \n", __FUNCTION__, __LINE__, pos);
            }
        }
    }

    c->segment_stream_eof = 1;
    c->hls_stream_cur = v->seg_list.hls_seg_cur;

    if (v->seg_demux.ctx) {
        v->seg_list.needed = 0;

        if (v->seg_demux.ctx->nb_streams > v->seg_demux.parent->nb_streams) {
            av_log(NULL, AV_LOG_ERROR, "[%s:%d] offset %d nb %d p_nb %d \n", __FILE_NAME__, __LINE__,
                v->seg_list.hls_stream_offset, v->seg_demux.ctx->nb_streams, v->seg_demux.parent->nb_streams);
            int j = 0;

            int64_t* lasttime = (int64_t*)av_mallocz(sizeof(int64_t) * hls->seg_demux.ctx->nb_streams);

            if (NULL == lasttime) {
                ret = AVERROR(ENOMEM);
                return ret;
            }

            memcpy(lasttime, hls->seg_demux.last_time, sizeof(int64_t) * v->seg_demux.parent->nb_streams);
            av_free(hls->seg_demux.last_time);
            hls->seg_demux.last_time  = lasttime;

            for (j = v->seg_demux.parent->nb_streams; j < hls->seg_demux.ctx->nb_streams; j++) {
                AVStream *st = av_new_stream(v->seg_demux.parent, 0);
                if (!st) {
                    ret = AVERROR(ENOMEM);
                    return ret;
                }
                avcodec_copy_context(st->codec, hls->seg_demux.ctx->streams[j]->codec);
            }
        }

        for (i = v->seg_list.hls_stream_offset; i < v->seg_list.hls_stream_offset + v->seg_demux.ctx->nb_streams; i++) {
            if (v->seg_demux.parent->streams[i]->discard < AVDISCARD_ALL)
                v->seg_list.needed = 1;
        }
    }

    if (!v->seg_list.needed) {
        av_log(v->seg_demux.parent, AV_LOG_INFO, "No longer receiving variant %d\n",v->seg_list.hls_index);
        return AVERROR_EOF;
    }
    goto restart;
}

static int hlsRecheckDiscardFlags(AVFormatContext *s, int first)
{
    HLSContext *c = s->priv_data;
    int i, changed = 0;

    /* Check if any new streams are needed */
    for (i = 0; i < c->hls_stream_nb; i++)
        c->hls_stream[i]->seg_list.cur_needed = 0;

    for (i = 0; i < s->nb_streams; i++) {
        AVStream *st = s->streams[i];
        hls_stream_info_t *hls = c->hls_stream[s->streams[i]->id];
        if (st->discard < AVDISCARD_ALL)
            hls->seg_list.cur_needed = 1;
    }

    for (i = 0; i < c->hls_stream_nb; i++) {
        hls_stream_info_t *hls = c->hls_stream[i];
        if (hls->seg_list.cur_needed && !hls->seg_list.needed) {
            hls->seg_list.needed = 1;
            changed = 1;
            hls->seg_list.hls_seg_cur = c->hls_stream_cur;
            hls->seg_stream.IO_pb.eof_reached = 0;
            av_log(s, AV_LOG_INFO, "Now receiving variant %d\n", i);
        } else if (first && !hls->seg_list.cur_needed && hls->seg_list.needed) {
            if (hls->seg_stream.input)
                hls_close(hls->seg_stream.input);
            hls->seg_stream.input = NULL;
            hls->seg_stream.offset = 0;
            hls->seg_list.needed = 0;
            changed = 1;
            av_log(s, AV_LOG_INFO, "No longer receiving variant %d\n", i);
        }
    }

    return changed;
}

/*******************************************************************************
 * Implementation of HLS demuxer modules
 ******************************************************************************/
static int HLS_probe(AVProbeData *p)
{
    /* Require #EXTM3U at the start, and either one of the ones below
     * somewhere for a proper match. */
    if (strncmp(p->buf, "#EXTM3U", 7))
        return 0;
    if (strstr(p->buf, "#EXT-X-STREAM-INF:")     ||
        strstr(p->buf, "#EXT-X-TARGETDURATION:") ||
        strstr(p->buf, "#EXT-X-MEDIA-SEQUENCE:") ||
        strstr(p->buf, "#EXTINF:"))
        return AVPROBE_SCORE_MAX;

    return 0;
}

static void* hlsRefreshM3u8(void *pArg)
{
    if (pArg  == NULL)
        return NULL;
    AVFormatContext *s = (AVFormatContext *)pArg;
    HLSContext *c = s->priv_data;
    URLContext *uc = (URLContext *) s->pb->opaque;
    hls_stream_info_t *v = c->hls_stream[0];
    int ret;
    int target_duration = 0;
    int64_t interval_time = HLS_MAX_REFRESH_TIME;
    int last_position = 0;
    int unrefresh_times = 0;
    int64_t start = 0;
    int64_t down_load_time = 0;
    int64_t wait_time = 0;
    int64_t start_wait = 0;
    int64_t m3u8_first_refresh_duration = 0;
    int is_china_mobile_iptv = 0;
    int freshing_url = 0;
    interval_time = interval_time <= (v->seg_list.hls_package_duration * AV_TIME_BASE) ?\
        interval_time : (v->seg_list.hls_package_duration * AV_TIME_BASE);
    interval_time = interval_time <= (v->seg_list.hls_last_seg_duration * AV_TIME_BASE) ?\
        interval_time : (v->seg_list.hls_last_seg_duration * AV_TIME_BASE);

    m3u8_first_refresh_duration =  av_gettime() - c->m3u8_first_get_time;
    if (m3u8_first_refresh_duration >= 0 && m3u8_first_refresh_duration <= interval_time){
        interval_time = interval_time - m3u8_first_refresh_duration;
    }else if(m3u8_first_refresh_duration > interval_time) {
        interval_time = 0;
    }
    av_log(NULL, AV_LOG_ERROR, "[%s:%d][ref_m3u8]interval_time:%lld,package_duration:%d,last_seg_duration:%d,m3u8_first_refresh_duration:%lld\n",__FILE_NAME__, __LINE__,\
        interval_time,v->seg_list.hls_package_duration,v->seg_list.hls_last_seg_duration,m3u8_first_refresh_duration);
#if defined (ANDROID_VERSION)
    /* add for china mobile iptv */
    char value[1024] = {0};
    memset(value, 0, 1024);
    /* client.apk.name
           1. iptv.china.mobile
           2. iptv.china.telecom
           set apk.name by using "setprop iptv.project.name iptv.china.mobile" command.
           */
    if (property_get("iptv.project.name", value, NULL) > 0) {
        if (!strncmp(value, "iptv.china.mobile", 17)) {
            is_china_mobile_iptv = 1;
            av_log(NULL, AV_LOG_ERROR, "[%s:%d] find china mobile iptv flag \n", __FILE_NAME__, __LINE__);
        }
    }
    /* iptv end */
#endif

    c->m3u8_refresh_info = av_mallocz(sizeof(hls_stream_info_t));
    if (c->m3u8_refresh_info == NULL)
        goto end;
    hls_stream_info_t *hls_stream = c->m3u8_refresh_info;

    hls_stream_info_t *cur_hls = av_mallocz(sizeof(hls_stream_info_t));
    if (cur_hls == NULL)
        goto end;
    ret = copy_m3u8_info(hls_stream,v);
    if (ret != 0)
        goto end;
    while(1)
    {
        if (ff_check_interrupt(&c->interrupt_callback)) {
            break;
        }
        if (interval_time != 0 && (interval_time > down_load_time) && !c->need_fresh_currentidx){
            av_log(NULL,AV_LOG_ERROR,"[ref_m3u8]interval_time:%lld,down_load_time:%lld,wait_time:%lld\n",interval_time,down_load_time,(interval_time - down_load_time));
            if (down_load_time > 0){
                wait_time = interval_time - down_load_time;
            }else{
                wait_time = interval_time;
            }
            start_wait = av_gettime();
            av_log(NULL,AV_LOG_ERROR,"[ref_m3u8]wait start time:%lld\n",start_wait);
            while ((av_gettime() - start_wait) < wait_time)
            {
                if (ff_check_interrupt(&c->interrupt_callback)) {
                    goto end;
                }
                usleep(M3U8_REFRESH_SLICE_SLEEP_TIME);
            }
            av_log(NULL,AV_LOG_ERROR,"[ref_m3u8]wait end time:%lld\n",av_gettime());
        }else {
            //No sleep
            av_log(NULL,AV_LOG_ERROR,"[ref_m3u8]interval_time:%lld,< down_load_time:%lld,No sleep\n",interval_time,down_load_time);
        }
        if (!hls_stream->seg_list.hls_finished) {
reparse:
            start = av_gettime();
            if (c->need_fresh_currentidx) {
                av_log(NULL, AV_LOG_ERROR, "[%s:%d][ref_m3u8]fresh live url to timeseek url,c->cur_hls->url:%s\n",
                    __FILE_NAME__, __LINE__, c->cur_hls->url);
                av_log(NULL, AV_LOG_ERROR, "[%s:%d][ref_m3u8]fresh live url to timeseek url, hls_stream->url:%s\n",
                    __FILE_NAME__, __LINE__, hls_stream->url);

                pthread_mutex_lock(&c->stRefreshMutex);
                memcpy(hls_stream->url, c->cur_hls->url, INITIAL_URL_SIZE);
                pthread_mutex_unlock(&c->stRefreshMutex);
                freshing_url = 1;
            }

            ret = hlsParseM3U8(c, hls_stream->url, hls_stream, NULL);
            if (ret < 0) {
                if (ff_check_interrupt(&c->interrupt_callback)) {
                    goto end;
                }

                usleep(1000*1000);
                av_log(NULL, AV_LOG_ERROR, "[%s:%d][ref_m3u8] redo hlsParseM3U8\n",
                        __FILE_NAME__, __LINE__);
                goto reparse;
            }

            if(freshing_url) {
                av_log(NULL, AV_LOG_ERROR, "[%s:%d][ref_m3u8] fresh live url to timeseek url end\n",
                        __FILE_NAME__, __LINE__);
                freshing_url = 0;
                c->need_fresh_currentidx = 0;
            }

            if (c->cur_hls->seg_list.hls_seg_cur >= hls_stream->seg_list.hls_seg_start + hls_stream->seg_list.hls_segment_nb) {
#if 0
                if (((AVFormatContext*)c->parent)->duration > MAX_LIVE_CACHE_DURATION * AV_TIME_BASE && !strstr(hls_stream->url, "livemode=2")){
                    ;
                }else
#endif
                {
                    if (1 == is_china_mobile_iptv || hls_stream->need_refresh_url == 1) {
                        hlsFreshUrl(hls_stream);
                        av_log(NULL, AV_LOG_ERROR, "[%s:%d][ref_m3u8] hls_stream->url:%s, cur_hls->url:%s\n", __FILE_NAME__, __LINE__, hls_stream->url, cur_hls->url);
                        pthread_mutex_lock(&c->stRefreshMutex);
                        memcpy(c->cur_hls->url,hls_stream->url,INITIAL_URL_SIZE);
                        pthread_mutex_unlock(&c->stRefreshMutex);
                    }
                }
            }
            av_log(NULL, AV_LOG_ERROR, "[%s:%d][ref_m3u8]hlsRefreshM3u8 Info:start:%d,segment_nb:%d cur,v:%d,c:%d\n",__FILE_NAME__, __LINE__, \
                hls_stream->seg_list.hls_seg_start,hls_stream->seg_list.hls_segment_nb,v->seg_list.hls_seg_cur,c->cur_hls->seg_list.hls_seg_cur);
            if (c->cur_stream_seq != hls_stream->seg_list.hls_index) {
                av_log(NULL,AV_LOG_ERROR,"[ref_m3u8]hls stream changed\n");
                hlsFreeSegmentList(cur_hls);
                ret = copy_m3u8_info(cur_hls,c->cur_hls);
reparse2:
                ret = hlsParseM3U8(c, cur_hls->url, cur_hls, NULL);
                if (ret < 0) {
                    if (ff_check_interrupt(&c->interrupt_callback)) {
                        goto end;
                    }

                    usleep(1000*1000);
                    av_log(NULL, AV_LOG_ERROR, "[%s:%d][ref_m3u8] redo hlsParseM3U8\n", __FILE_NAME__, __LINE__);
                    goto reparse2;
                }

                hlsFreeSegmentList(c->cur_hls);
                ret = copy_m3u8_info(c->cur_hls,cur_hls);
                if (ret != 0)
                    av_log(NULL, AV_LOG_ERROR, "[%s:%d][ref_m3u8]copy_hls_segments faile\n",__FILE_NAME__, __LINE__);
            }
            down_load_time = av_gettime()-start;

            if (last_position == hls_stream->seg_list.hls_seg_start + hls_stream->seg_list.hls_segment_nb) {
                unrefresh_times++;
                if (unrefresh_times <= M3U8_UNREFRESH_TIMES1){
                    interval_time = HLS_REFRESH_TIME1;
                }else if (unrefresh_times == M3U8_UNREFRESH_TIMES2){
                    interval_time = HLS_REFRESH_TIME2;
                }else if (unrefresh_times == M3U8_UNREFRESH_TIMES3){
                    interval_time = HLS_REFRESH_TIME3;
                }else{
                    interval_time = HLS_REFRESH_TIME4;
                    if (unrefresh_times > M3U8_UNREFRESH_TIMES4)
                        unrefresh_times = M3U8_UNREFRESH_TIMES4;
                }
            }else{
                unrefresh_times = 0;
                last_position = hls_stream->seg_list.hls_seg_start + hls_stream->seg_list.hls_segment_nb;
                av_log(NULL, AV_LOG_ERROR, "[%s:%d][ref_m3u8]package_duration:%d,last_seg_duration:%d\n",__FILE_NAME__, __LINE__,hls_stream->seg_list.hls_package_duration,hls_stream->seg_list.hls_last_seg_duration);
                target_duration = hls_stream->seg_list.hls_package_duration <= hls_stream->seg_list.hls_last_seg_duration ? hls_stream->seg_list.hls_package_duration : hls_stream->seg_list.hls_last_seg_duration;
                target_duration = target_duration * AV_TIME_BASE;
                interval_time = (int64_t)(target_duration <= HLS_MAX_REFRESH_TIME ? target_duration : HLS_MAX_REFRESH_TIME);
            }
        }
        else
        {
            break;
        }
    }
end:
    av_log(NULL,AV_LOG_ERROR,"[ref_m3u8]Exit refresh m3u8 thread\n");
    if (hls_stream != NULL)
    {
        pthread_mutex_lock(&c->stRefreshMutex);
        hlsFreeSegmentList(hls_stream);
        av_free(hls_stream);
        hls_stream = NULL;
        pthread_mutex_unlock(&c->stRefreshMutex);
    }
    if (cur_hls != NULL)
    {
        pthread_mutex_lock(&c->stRefreshMutex);
        hlsFreeSegmentList(cur_hls);
        av_free(cur_hls);
        cur_hls = NULL;
        pthread_mutex_unlock(&c->stRefreshMutex);
    }
    return NULL;
}


static int HLS_read_header(AVFormatContext *s, AVFormatParameters *ap)
{
    HLSContext *c = s->priv_data;
    int ret = 0, i, j, stream_offset = 0;
    URLContext *uc = (URLContext *) s->pb->opaque;
    const char *cache_name = "hicache";
#if defined (ANDROID_VERSION)
    char   str_value[PROPERTY_VALUE_MAX];
    int    stream_mode;
    int64_t segs_duration = 0;
#endif
    av_log(NULL,AV_LOG_ERROR,"DQP HH");
    if(NULL != c)
        c->reset_appoint_id = 0;

    #if 0
    /* Get headers context */
    if (uc && uc->headers) {
        av_log(NULL, AV_LOG_ERROR, "[%s:%d] headers=%s\n", __FILE_NAME__, __LINE__, uc->headers);
        if (c->headers) {
            av_free(c->headers);
            c->headers = NULL;
        }

        c->headers = av_strdup(uc->headers);
    }
    #endif

    av_log(NULL, AV_LOG_ERROR, "[%s:%d]%s\n", __FILE_NAME__, __LINE__, __FUNCTION__);

    if (uc && uc->is_streamed)
    {
        if (c->user_agent)
            av_freep(&c->user_agent);

        if (uc && uc->priv_data && (av_opt_get(uc->priv_data, "user-agent", 0, &c->user_agent) >= 0))
            av_log(NULL, AV_LOG_ERROR, "[%s:%d] user-agent: %s\n", __FILE_NAME__, __LINE__, c->user_agent);

        if (c->referer)
            av_freep(&c->referer);

        if (uc && uc->priv_data && (av_opt_get(uc->priv_data, "referer", 0, &c->referer) >= 0))
            av_log(NULL, AV_LOG_ERROR, "[%s:%d] referer: %s\n", __FILE_NAME__, __LINE__, c->referer);

        if (c->cookies)
            av_freep(&c->cookies);

        if (uc && uc->priv_data && (av_opt_get(uc->priv_data, "cookies", 0, &c->cookies) >= 0))
            av_log(NULL, AV_LOG_ERROR, "[%s:%d] cookies: %s\n", __FILE_NAME__, __LINE__, c->cookies);

        if (c->headers)
            av_freep(&c->headers);

        if (uc && uc->priv_data && (av_opt_get(uc->priv_data, "headers", 0, &c->headers) >= 0))
            av_log(NULL, AV_LOG_ERROR, "[%s:%d] headers: %s\n", __FILE_NAME__, __LINE__, c->headers);
    }

    if (uc)
    {
        c->interrupt_callback.callback = uc->interrupt_callback.callback;
        c->interrupt_callback.opaque = uc->interrupt_callback.opaque;
    }

    c->file_name = s->filename;
    c->has_video_stream = 0;

    c->downspeed.down_size = 0;
    c->downspeed.down_time = 0;
    c->downspeed.speed = 0;
    c->downspeed.head = NULL;
    c->downspeed.tail = NULL;
    c->use_offset_seq = 0;
    c->cur_download_url[0] = 0;
    c->stHlsUrlInfo.enable = 0;
    c->need_fresh_currentidx = 0;
    c->m3u8_first_get_time = av_gettime();
    /* Get host name string */
    if (uc && uc->moved_url)
    {
        av_log(NULL, AV_LOG_ERROR, "[%s:%d], moved_url:%s\n", __FILE_NAME__, __LINE__, uc->moved_url);
        ret = hlsParseM3U8(c, uc->moved_url, NULL, s->pb);
    }
    else
    {
        if (!strncmp(c->file_name, cache_name, 7))
            ret = hlsParseM3U8(c, strstr(s->filename, "http"), NULL, s->pb);
        else
            ret = hlsParseM3U8(c, s->filename, NULL, s->pb);
    }

    if (ret < 0)
    {
        av_log(NULL, AV_LOG_ERROR, "[%s:%d], ret:%d\n", __FILE_NAME__, __LINE__, ret);
        goto fail;
    }

    if (c->hls_stream_nb == 0) {
        av_log(NULL, AV_LOG_WARNING, "Empty playlist\n");
        ret = AVERROR_EOF;
        goto fail;
    }

    /* If the playlist only contained variants, parse each individual
     * variant playlist. */
    if (c->hls_stream_nb > 1 || c->hls_stream[0]->seg_list.hls_segment_nb == 0) {
        int valid_stream_nb = 0;
        int last_seg_start = 0;
        int min_segment_nb = 0;
        for (i = 0; i < c->hls_stream_nb; i++) {
            hls_stream_info_t *hls = c->hls_stream[i];
            if ((ret = hlsParseM3U8(c, hls->url, hls, NULL)) < 0) {
                continue;
            } else {
                hls->first_seg_number = hls->seg_list.hls_seg_start;
                /* if the segment start number is not equal, we use offset caculate next segment sequence */
                valid_stream_nb = 1;

                if (0 == i || hls->seg_list.hls_segment_nb < min_segment_nb) {
                    min_segment_nb = hls->seg_list.hls_segment_nb;
                }

                if (i > 0 && min_segment_nb > 1
                    && abs(last_seg_start - hls->seg_list.hls_seg_start) >= (min_segment_nb - 1)
                    && 0 == hls->seg_list.hls_finished) {
                    c->use_offset_seq = 1;
                    av_log(NULL, AV_LOG_ERROR, "hls live Stream, use offset sequence number refresh list\n");
                }

                last_seg_start = hls->seg_list.hls_seg_start;
                //break;    //zzg continue parse rest list
            }
        }

        if (valid_stream_nb == 0) {
            ret = AVERROR_EOF;
            goto fail;
        }
    }

    int bVodStream = 0;

    for (i = 0; i < c->hls_stream_nb; i++) {
        hls_stream_info_t *hls = c->hls_stream[i];

        if (1 == hls->seg_list.hls_finished) {
            bVodStream = 1;
            break;
        }
    }

    if (c->has_video_stream) {
        for (i = 0; i < c->hls_stream_nb; i++) {
            hls_stream_info_t *hls = c->hls_stream[i];
            if (!hls->video_codec || (0 == hls->seg_list.hls_finished && 1 == bVodStream)) {
                hlsFreeSegmentList(hls);

                av_free_packet(&hls->seg_demux.pkt);
                av_free(hls->seg_stream.IO_pb.buffer);

                if (hls->seg_stream.headers) {
                    av_free(hls->seg_stream.headers);
                    hls->seg_stream.headers = NULL;
                }

                if (hls->seg_key.IO_decrypt) {
                    hls_decrypt_close(hls->seg_key.IO_decrypt);
                    av_freep(&hls->seg_key.IO_decrypt);
                    hls->seg_key.IO_decrypt = NULL;
                    hls->seg_stream.input = NULL; // already freed in hls_decrypt_close
                }

                if (hls->seg_stream.input) {
                    hls_close(hls->seg_stream.input);
                    hls->seg_stream.input = NULL;
                    hls->seg_stream.offset = 0;
                }

                if (hls->seg_demux.ctx) {
                    hls->seg_demux.ctx->pb = NULL;
                    av_close_input_file(hls->seg_demux.ctx);
                }

                av_free(hls);

                if (i == c->hls_stream_nb - 1) {
                    c->hls_stream[i] = NULL;
                    c->hls_stream_nb--;
                } else {
                    int j = i;
                    for (j = i; j < c->hls_stream_nb - 1; j++) {
                        c->hls_stream[j] = c->hls_stream[j + 1];
                    }
                    c->hls_stream[c->hls_stream_nb - 1] = NULL;
                    c->hls_stream_nb--;
                }
                i--;
            }
        }
    }

    if (c->hls_stream[0]->seg_list.hls_segment_nb == 0) {
        av_log(NULL, AV_LOG_WARNING, "Empty playlist\n");
        ret = AVERROR_EOF;
        goto fail;
    }

    c->appoint_id = -1;
    c->real_bw = 0;
    c->netdata_read_speed = 0;

    if (c->hls_stream_nb > 1 && c->hls_stream[0]->seg_list.hls_finished)
    {
        int maxnb = c->hls_stream[0]->seg_list.hls_segment_nb, minnb = c->hls_stream[0]->seg_list.hls_segment_nb;
        int fixed_index = 0, maxband = 0;

        av_log(NULL,AV_LOG_ERROR,"#[%s:%d] judgement for ragged segments between diffrent streams. #\n",__FUNCTION__,__LINE__);

        for (i = 0; i < c->hls_stream_nb; i++)
        {
            if (0 >= c->hls_stream[i]->seg_list.hls_segment_nb)
            {
                av_log(NULL,AV_LOG_ERROR,"#[%s:%d] stream:%d has invalid hls_segment_nb:%d #\n"
                        ,__FUNCTION__,__LINE__,i,c->hls_stream[i]->seg_list.hls_segment_nb);
                continue;
            }

            if (c->hls_stream[i]->seg_list.hls_segment_nb > maxnb)
            {
                fixed_index = i;
            }
            else if (c->hls_stream[i]->seg_list.hls_segment_nb == maxnb)
            {
                if (c->hls_stream[i]->bandwidth >= maxband)
                {
                    fixed_index = i;
                }
            }

            maxnb = FFMAX(c->hls_stream[i]->seg_list.hls_segment_nb, maxnb);
            minnb = FFMIN(c->hls_stream[i]->seg_list.hls_segment_nb, minnb);
            maxband = FFMAX(c->hls_stream[i]->bandwidth, maxband);

            av_log(NULL,AV_LOG_ERROR,"#[%s:%d] maxnb:%d minnb:%d maxband:%d fixed_index:%d#\n",
                __FUNCTION__,__LINE__,maxnb,minnb,maxband,fixed_index);
        }

        if ((maxnb - minnb) > 10)
        {
            hls_stream_info_t *tmp = c->hls_stream[0];
            c->hls_stream[0] = c->hls_stream[fixed_index];
            c->hls_stream[fixed_index] = tmp;
            c->appoint_id = 0;

            av_log(NULL,AV_LOG_ERROR,"#[%s:%d] maxnb:%d minnb:%d ragged segments, fixed stream's bandwidth:%d.#\n",
                __FUNCTION__,__LINE__,maxnb,minnb,c->hls_stream[0]->bandwidth);
        }
    }

    /* If this isn't a live stream, calculate the total duration of the
     * stream. */
    for (i = 0; i < c->hls_stream[0]->seg_list.hls_segment_nb; i++) {
        c->hls_stream[0]->seg_list.segments[i]->start_time = segs_duration;
        segs_duration += c->hls_stream[0]->seg_list.segments[i]->total_time;
    }

    if (c->hls_stream[0]->seg_list.hls_finished) {
        s->is_live_stream = 0;
        s->duration = segs_duration * (AV_TIME_BASE / 1000);
    }
    else
    {
        // if no endlist,but cache in server exceed MAX_LIVE_CACHE_DURATION
        // we modify it to vod.to solve bestv,some vod stream do not have endlist
        if (segs_duration / 1000 > MAX_LIVE_CACHE_DURATION)
        {
            s->duration = segs_duration * (AV_TIME_BASE / 1000);
            av_log(s, AV_LOG_INFO, "no endlist,but server cache exceed one hour,we modify it to vod");
        }
        else
        {
            s->duration = 10 * AV_TIME_BASE;
        }
        s->is_live_stream = 1;
    }
/*
    if (uc)
    {
        c->interrupt_callback.callback = uc->interrupt_callback.callback;
        c->interrupt_callback.opaque = uc->interrupt_callback.opaque;
    }
*/

    c->parent = s;
    if (c->hls_stream_nb && !strncmp("http", c->hls_stream[0]->seg_list.segments[0]->url, 4)) {
        s->pb->downspeedable = 1;
        DownSpeed *downspeed = &(s->pb->downspeed);
        downspeed->down_size = 0;
        downspeed->down_time = 0;
        downspeed->speed = 0;
        downspeed->head = NULL;
        downspeed->tail = NULL;
    } else {
        s->pb->downspeedable = 0;
        DownSpeed *downspeed = &(s->pb->downspeed);
        downspeed->down_size = 0;
        downspeed->down_time = 0;
        downspeed->speed = 0;
        downspeed->head = NULL;
        downspeed->tail = NULL;
    }
    c->stream_mode = HLS_STREAM_MODE_QUALITY_FIRST;
#if defined (ANDROID_VERSION)
    memset(str_value, 0, sizeof(str_value));
    if (property_get("persist.sys.video.quality", str_value, NULL) > 0)
    {
        stream_mode = atoi((char *)str_value);
        if (stream_mode == HLS_STREAM_MODE_FLUENT_FIRST ||
            stream_mode == HLS_STREAM_MODE_QUALITY_FIRST ||
            stream_mode == HLS_STREAM_MODE_AUTO) {
            c->stream_mode = stream_mode;
            av_log(0, AV_LOG_ERROR, "[%s,%d] set hls stream_mode to %d\n", __FUNCTION__, __LINE__, stream_mode);
        } else {
            av_log(0, AV_LOG_ERROR, "[%s,%d] invalid stream_mode %d,use default %d\n", __FUNCTION__, __LINE__, stream_mode, c->stream_mode);
        }
    } else {
            av_log(0, AV_LOG_ERROR, "[%s,%d] property not set use default stream_mode %d\n", __FUNCTION__, __LINE__, c->stream_mode);
    }
#endif

    if (c->hls_stream_nb > 0) {
        if ((c->appoint_id >= 0) && (c->appoint_id < c->hls_stream_nb) && (c->hls_stream[c->appoint_id]->seg_list.hls_segment_nb > 0)) {
            c->cur_seg = c->hls_stream[c->appoint_id]->seg_list.segments[0];
            c->cur_hls = c->hls_stream[c->appoint_id];
            c->cur_stream_seq = c->appoint_id;
            c->cur_seq_num = 0;
        } else {
            int default_video_bw_stream_nb = hlsGetDefaultIndex(c, (HLS_START_MODE_E)s->hls_start_mode);
            #if 1
            hls_stream_info_t *hls_tmp = c->hls_stream[default_video_bw_stream_nb];
            c->hls_stream[default_video_bw_stream_nb] = c->hls_stream[0];
            c->hls_stream[0] = hls_tmp;

            int64_t duration = 0;
            for (i = 0; i < c->hls_stream[0]->seg_list.hls_segment_nb; i++) {
                c->hls_stream[0]->seg_list.segments[i]->start_time = duration;
                duration += c->hls_stream[0]->seg_list.segments[i]->total_time;
            }
            default_video_bw_stream_nb = 0;
            #endif

            c->cur_seg = c->hls_stream[default_video_bw_stream_nb]->seg_list.segments[0];
            c->cur_hls = c->hls_stream[default_video_bw_stream_nb];
            c->cur_stream_seq = default_video_bw_stream_nb;
            c->cur_seq_num = 0;
        }
    }

    /* Open the demuxer for each variant */
    //for (i = 0; i < c->hls_stream_nb; i++) {
    for (i = 0; i < 1; i++) { //z00180556 only open one demuxer
        hls_stream_info_t *hls = c->hls_stream[i];
        AVInputFormat *in_fmt = NULL;
        struct ByteIOContext *pb = NULL;
        char bitrate_str[20];

        /* Get headers context */
        if (c && c->headers) {
            hls->seg_stream.headers = av_strdup(c->headers);
        }

        //if (uc)
        //{
        //    hls->seg_stream.userdata = uc->userdata;
        //}

        if (hls->seg_list.hls_segment_nb == 0)
            continue;

        if (!(hls->seg_demux.ctx = avformat_alloc_context())) {
            ret = AVERROR(ENOMEM);
            goto fail;
        }

        hls->seg_list.hls_index  = i;
        hls->seg_list.needed = 1;

        hls->seg_demux.parent = s;

        /* If this is a live stream with more than 3 segments, start at the third last segment. */
        hls->seg_list.hls_seg_cur = hls->seg_list.hls_seg_start;
        if (!hls->seg_list.hls_finished && hls->seg_list.hls_segment_nb > 3) {
            if (s->hls_live_start_num >= 1 && s->hls_live_start_num <= hls->seg_list.hls_segment_nb) {
                hls->seg_list.hls_seg_cur = hls->seg_list.hls_seg_start + s->hls_live_start_num - 1;
            } else {
                hls->seg_list.hls_seg_cur = hls->seg_list.hls_seg_start + hls->seg_list.hls_segment_nb - 3;
            }
            av_log(NULL, AV_LOG_ERROR,"[%s:%d]: hls live stream first play seg is %d \n", __FILE_NAME__, __LINE__, hls->seg_list.hls_seg_cur);
        }
        /**make resolution change available from 3716c-0.6.3 r41002 changed by duanqingpeng**/
        //hls->seg_stream.IO_buf = av_malloc(INITIAL_BUFFER_SIZE);
        hls->seg_stream.IO_buf = av_mallocz(INITIAL_BUFFER_SIZE);
        init_put_byte(&hls->seg_stream.IO_pb,
                hls->seg_stream.IO_buf,
                INITIAL_BUFFER_SIZE, 0, hls,
                hlsReadDataCb, NULL, NULL);
        // d00198887 can not seek in every segment
        hls->seg_stream.IO_pb.seekable = 0;
        pb = &hls->seg_stream.IO_pb;
        //ret = ff_probe_input_buffer(&pb, &in_fmt, hls->seg_list.segments[0]->url, NULL, 0, 0, NULL);
        ret = av_probe_input_buffer(pb, &in_fmt, c->cur_seg->url, NULL, 0, 0, &(c->interrupt_callback));
        if (ret < 0)
            goto fail;

        hls->seg_demux.ctx->pb = &hls->seg_stream.IO_pb;
        //ret = av_open_input_stream(&hls->seg_demux.ctx, &hls->seg_stream.IO_pb, hls->seg_list.segments[0]->url, in_fmt, NULL);
        for (j = 0; j < c->cur_hls->seg_list.hls_segment_nb; j++)
        {
            avio_flush(pb);
            ret = av_open_input_stream(&hls->seg_demux.ctx, &hls->seg_stream.IO_pb, c->cur_seg->url, in_fmt, NULL);
            if (ret < 0)
            {
                av_log(NULL, AV_LOG_ERROR, "[%s:%d], av_open_input_stream fail, cur_seg->url:%s\n", __FILE_NAME__, __LINE__, c->cur_seg->url);
                c->cur_seq_num++;

                if (c->cur_seq_num < c->cur_hls->seg_list.hls_segment_nb)
                {
                    c->cur_seg = c->cur_hls->seg_list.segments[c->cur_seq_num];
                    continue;
                }
            }

            break;
        }

        if (ret < 0)
        {
            av_log(NULL, AV_LOG_ERROR, "[%s:%d], av_open_input_stream fail, cur_seg->url:%s\n", __FILE_NAME__, __LINE__, c->cur_seg->url);
            goto fail;
        }

        hls->seg_list.hls_stream_offset = stream_offset;
        snprintf(bitrate_str, sizeof(bitrate_str), "%d", hls->bandwidth);
        /* Create new AVStreams for each stream in this variant */
        for (j = 0; j < hls->seg_demux.ctx->nb_streams; j++) {
            AVStream *st = av_new_stream(s, i);
            if (!st) {
                ret = AVERROR(ENOMEM);
                goto fail;
            }
            avcodec_copy_context(st->codec, hls->seg_demux.ctx->streams[j]->codec);
        }

        if (NULL == hls->seg_demux.last_time) {
            hls->seg_demux.last_time = av_mallocz(sizeof(int64_t) * hls->seg_demux.ctx->nb_streams);

            if (NULL == hls->seg_demux.last_time) {
                ret = AVERROR(ENOMEM);
                goto fail;
            }
        }
        stream_offset += hls->seg_demux.ctx->nb_streams;
    }

    for (i = 0; i < c->hls_stream_nb; i++) {
        c->hls_stream[i]->has_read = 0;
        c->hls_stream[i]->seg_list.hls_index = i;
    }
    pthread_mutex_init(&c->stRefreshMutex, NULL);
    ret = pthread_create(&c->hRefreashThread, NULL,
                            hlsRefreshM3u8, (void*)s);
    if (0 != ret){
        av_log(NULL, AV_LOG_ERROR, "[%s:%d],Create hlsRefreshM3u8 fail\n", __FILE_NAME__, __LINE__);
    }

    c->first_packet = 1;
    c->read_size = 0;
    c->read_time = 0;
    return 0;

fail:
    av_log(NULL, AV_LOG_ERROR, "[%s:%d], HLS_read_header fail\n", __FILE_NAME__, __LINE__);

    hlsFreeHlsList(c);

    if (c->headers) {
        av_free(c->headers);
        c->headers = NULL;
    }

    if (c->cookies) {
        av_free(c->cookies);
        c->cookies = NULL;
    }

    if (c->user_agent) {
        av_free(c->user_agent);
        c->user_agent = NULL;
    }

    if (c->referer) {
        av_free(c->referer);
        c->referer = NULL;
    }

    return ret;
}

static int HLS_read_packet(AVFormatContext *s, AVPacket *pkt)
{
    HLSContext *c = s->priv_data;
    int ret, i, minvariant = -1;

    if (c->first_packet) {
        hlsRecheckDiscardFlags(s, 1);
        c->first_packet = 0;
    }

    if (c->reset_appoint_id) {
        av_free_packet(&c->hls_stream[0]->seg_demux.pkt);
        av_free(c->hls_stream[0]->seg_stream.IO_pb.buffer);
        if (c->hls_stream[0]->seg_key.IO_decrypt) {
            hls_decrypt_close(c->hls_stream[0]->seg_key.IO_decrypt);
            av_freep(&c->hls_stream[0]->seg_key.IO_decrypt);
            c->hls_stream[0]->seg_key.IO_decrypt = NULL;
            c->hls_stream[0]->seg_stream.input = NULL; // already freed in hls_decrypt_close
        }
        if (c->hls_stream[0]->seg_stream.input) {
            hls_close(c->hls_stream[0]->seg_stream.input);
            c->hls_stream[0]->seg_stream.input = NULL;
            c->hls_stream[0]->seg_stream.offset = 0;
        }
        if (c->hls_stream[0]->seg_demux.ctx) {
            c->hls_stream[0]->seg_demux.ctx->pb = NULL;
            av_close_input_file(c->hls_stream[0]->seg_demux.ctx);
        }
        for (i = 0; i < c->hls_stream_nb; i++) {
            hls_stream_info_t* hls = c->hls_stream[i];
            hls->seg_list.hls_seg_cur = hls->seg_list.hls_seg_start;
            if (!hls->seg_list.hls_finished && hls->seg_list.hls_segment_nb > 3) {
                //wKF34645 for live stream, if there are more than 3 segments in the list, only read the last 3 segments.
                hls->seg_list.hls_seg_cur =
                    hls->seg_list.hls_seg_start + hls->seg_list.hls_segment_nb - 3;
            }
        }
        if ((c->appoint_id >= 0) && (c->appoint_id < c->hls_stream_nb) && (c->hls_stream[c->appoint_id]->seg_list.hls_segment_nb > 0)) {
            c->cur_seg = c->hls_stream[c->appoint_id]->seg_list.segments[0];
            c->cur_hls = c->hls_stream[c->appoint_id];
            c->cur_stream_seq = c->appoint_id;
            c->cur_seq_num = 0;
        } else {
            int default_video_bw_stream_nb = hlsGetDefaultIndex(c, (HLS_START_MODE_E)s->hls_start_mode);
            c->cur_seg = c->hls_stream[default_video_bw_stream_nb]->seg_list.segments[0];
            c->cur_hls = c->hls_stream[default_video_bw_stream_nb];
            c->cur_stream_seq = default_video_bw_stream_nb;
            c->cur_seq_num = 0;
        }

        struct ByteIOContext *pb = NULL;
        AVInputFormat *in_fmt = NULL;
        c->hls_stream[0]->seg_stream.IO_buf = av_mallocz(INITIAL_BUFFER_SIZE);
        init_put_byte(&c->hls_stream[0]->seg_stream.IO_pb,
                c->hls_stream[0]->seg_stream.IO_buf,
                INITIAL_BUFFER_SIZE, 0, c->hls_stream[0],
                hlsReadDataCb, NULL, NULL);

        pb = &c->hls_stream[0]->seg_stream.IO_pb;
        // d00198887 can not seek in every segment
        c->hls_stream[0]->seg_stream.IO_pb.seekable = 0;
        //ret = ff_probe_input_buffer(&pb, &in_fmt, c->hls_stream[0]->seg_list.segments[0]->url, NULL, 0, 0, NULL);
        ret = av_probe_input_buffer(pb, &in_fmt, c->cur_seg->url, NULL, 0, 0, &(c->interrupt_callback));
        if (ret < 0)
            return ret;

        c->hls_stream[0]->seg_demux.ctx->pb = &c->hls_stream[0]->seg_stream.IO_pb;
        ret = av_open_input_stream(&c->hls_stream[0]->seg_demux.ctx, &c->hls_stream[0]->seg_stream.IO_pb, c->cur_seg->url, in_fmt, NULL);
        if (ret < 0)
            return ret;

        c->reset_appoint_id = 0;
    }

start:
    c->segment_stream_eof = 0;
    //for (i = 0; i < c->hls_stream_nb; i++) {
    for (i = 0; i < 1; i++) {    //z00180556 Only use first list for playback
        hls_stream_info_t *hls = c->hls_stream[i];
        /* Make sure we've got one buffered packet from each open variant
         * stream */
        if (hls->seg_list.needed && !hls->seg_demux.pkt.data) {
            ret = av_read_frame(hls->seg_demux.ctx, &hls->seg_demux.pkt);
            if (ret < 0) {
                av_log(NULL, AV_LOG_ERROR, "[%s:%d] av_read_frame fail, ret = %d, AVEOF = 0x%x \m",
                    __FILE_NAME__, __LINE__, ret, AVERROR_EOF);
                if (!url_feof(&hls->seg_stream.IO_pb)) {
                    av_log(NULL, AV_LOG_ERROR, "[%s:%d] read packet return fail, ret =%d, eof = 0x%x \n",
                        __FILE_NAME__, __LINE__, ret, AVERROR_EOF);

                    if (NULL != hls && !hls->seg_list.hls_finished) {
                        return AVERROR(EAGAIN);
                    }

                    return ret;
                }

                hlsResetPacket(&hls->seg_demux.pkt);
            }
        }

        /* Check if this stream has the packet with the lowest dts */
        if (hls->seg_demux.pkt.data) {
            if (minvariant < 0 ||
                hls->seg_demux.pkt.dts < c->hls_stream[minvariant]->seg_demux.pkt.dts)
                minvariant = i;
        }

        /* Cacaulate pts offset to make pts continuously */
        if (hls->seg_demux.pkt.dts != AV_NOPTS_VALUE &&
            hls->seg_demux.pkt.stream_index < s->nb_streams &&
            hls->seg_demux.last_time[hls->seg_demux.pkt.stream_index] != AV_NOPTS_VALUE) {
            int64_t diff;
            diff =
                hls->seg_demux.last_time[hls->seg_demux.pkt.stream_index]
                - (hls->seg_demux.pkt.dts + hls->seg_demux.pts_offset);

            if (llabs(diff) >= DISCONTINUE_MAX_TIME) {
                hls->seg_demux.set_offset = 0;
                av_log(NULL, AV_LOG_ERROR, "[%s:%d] DISCONTINUOUSLY last_time(%lld) new_time(%lld)\n",
                        __FILE_NAME__,__LINE__,
                        hls->seg_demux.last_time[hls->seg_demux.pkt.stream_index],
                        hls->seg_demux.pkt.dts);
            }

            if (!hls->seg_demux.set_offset) {
                hls->seg_demux.pts_offset
                    = hls->seg_demux.last_time[hls->seg_demux.pkt.stream_index] - hls->seg_demux.pkt.dts;
                hls->seg_demux.set_offset = 1;
                av_log(NULL, AV_LOG_ERROR, "[%s:%d] stream idx[%d] NEW PTS OFFSET(%lld)\n",
                        __FILE_NAME__,__LINE__,
                        hls->seg_demux.pkt.stream_index,
                        hls->seg_demux.pts_offset);
            }
        }
    }
    if (c->segment_stream_eof) {
        if (hlsRecheckDiscardFlags(s, 0))
            goto start;
    }
    /* If we got a packet, return it */
    if (minvariant >= 0) {
        *pkt = c->hls_stream[minvariant]->seg_demux.pkt;
        pkt->stream_index += c->hls_stream[minvariant]->seg_list.hls_stream_offset;

        if (c->hls_stream[minvariant]->seg_demux.set_offset) {
            AVStream *stream_tmp = NULL;

            /* Correct pts value */
            if (pkt->pts != AV_NOPTS_VALUE  && pkt->stream_index < s->nb_streams) {
                stream_tmp = s->streams[pkt->stream_index];

                #if 0
                if (NULL != stream_tmp) {
                    av_log(NULL, AV_LOG_ERROR, "stream idx = %d, pts =   %lld    , dts =   %lld    , pts1 =    %lld    , dts1 =   %lld   , pts_offset = %lld, seek_offset = %lld \n",
                        pkt->stream_index,
                        (pkt->pts * 1000 * stream_tmp->time_base.num) / stream_tmp->time_base.den,
                        (pkt->dts * 1000 * stream_tmp->time_base.num) / stream_tmp->time_base.den,
                        ((pkt->pts + c->hls_stream[minvariant]->seg_demux.pts_offset[pkt->stream_index]) * 1000 * stream_tmp->time_base.num) / stream_tmp->time_base.den,
                        ((pkt->dts + c->hls_stream[minvariant]->seg_demux.pts_offset[pkt->stream_index]) * 1000 * stream_tmp->time_base.num) / stream_tmp->time_base.den,
                        c->hls_stream[minvariant]->seg_demux.pts_offset[pkt->stream_index],
                        c->hls_stream[minvariant]->seg_demux.seek_offset);
                }
                #endif
                pkt->pts += c->hls_stream[minvariant]->seg_demux.pts_offset;

                if ((pkt->pts > c->hls_stream[minvariant]->seg_demux.last_time[c->hls_stream[minvariant]->seg_demux.pkt.stream_index])
                    || c->hls_stream[minvariant]->seg_list.hls_finished)
                    c->hls_stream[minvariant]->seg_demux.last_time[c->hls_stream[minvariant]->seg_demux.pkt.stream_index] = pkt->pts;

                pkt->pts += c->hls_stream[minvariant]->seg_demux.seek_offset;
            }

            /* Correct dts value */
            if (pkt->dts != AV_NOPTS_VALUE) {
                pkt->dts += c->hls_stream[minvariant]->seg_demux.pts_offset;
                pkt->dts += c->hls_stream[minvariant]->seg_demux.seek_offset;
            }
        }

        hlsResetPacket(&c->hls_stream[minvariant]->seg_demux.pkt);
        return 0;
    } else {
        hls_stream_info_t *hls = c->hls_stream[0];

        if (NULL != hls && !hls->seg_list.hls_finished && (s->duration < MAX_LIVE_CACHE_DURATION * AV_TIME_BASE
            || strstr(hls->url, "livemode=2"))) {
            av_log(NULL, AV_LOG_ERROR, "[%s:%d] read_frame fail, but is live stream, close current stream, return eagain \n",
                __FILE_NAME__, __LINE__);
            if (hls->seg_stream.input) {
                hls_close(hls->seg_stream.input);
                hls->seg_stream.input  = NULL;
                hls->seg_stream.offset = 0;
            }

            return AVERROR(EAGAIN);
        }
    }

    av_log(NULL, AV_LOG_ERROR, "[%s:%d] read packet return eof \n", __FILE_NAME__, __LINE__);

    return AVERROR_EOF;
}

static int HLS_close(AVFormatContext *s)
{
    HLSContext *c = s->priv_data;

    if(s->pb && s->pb->downspeedable)
    {
        s->pb->downspeedable = 0;
        DownSpeed *downspeed = &(s->pb->downspeed);
        downspeed->down_size = 0;
        downspeed->down_time = 0;
        downspeed->speed = 0;
        DownNode *node = NULL;
        while(downspeed->head)
        {
            node = downspeed->head;
            downspeed->head = downspeed->head->next;
            av_free(node);
        }
        downspeed->head = NULL;
        downspeed->tail = NULL;
    }

    hlsFreeHlsList(c);

    if (c->headers) {
        av_free(c->headers);
        c->headers = NULL;
    }

    if (c->cookies) {
        av_free(c->cookies);
        c->cookies = NULL;
    }

    if (c->user_agent) {
        av_free(c->user_agent);
        c->user_agent = NULL;
    }

    if (c->referer) {
        av_free(c->referer);
        c->referer = NULL;
    }

    if (NULL !=c && c->downspeed.head)
    {
        DownNode *node = NULL;
        DownSpeed *downspeed = &(c->downspeed);
        while(downspeed->head)
        {
            node = downspeed->head;
            downspeed->head = downspeed->head->next;
            av_free(node);
        }
        downspeed->head = NULL;
        downspeed->tail = NULL;
    }
    (void)pthread_join(c->hRefreashThread, NULL);
    (void)pthread_mutex_destroy(&c->stRefreshMutex);

    return 0;
}

static int HLS_read_seek(AVFormatContext *s, int stream_index,
                               int64_t timestamp, int flags)
{
    HLSContext *c = s->priv_data;
    int i, j, ret;
    if ((flags & AVSEEK_FLAG_BYTE) || (!c->hls_stream[0]->seg_list.hls_finished &&
        s->duration < MAX_LIVE_CACHE_DURATION * AV_TIME_BASE))
        return AVERROR(ENOSYS);

    timestamp = av_rescale_rnd(timestamp, 1, stream_index >= 0 ?
                               s->streams[stream_index]->time_base.den :
                               AV_TIME_BASE, flags & AVSEEK_FLAG_BACKWARD ?
                               AV_ROUND_DOWN : AV_ROUND_UP);
    ret = AVERROR(EIO);
    //for (i = 0; i < c->hls_stream_nb; i++) {
    for (i = 0; i < 1; i++) {    //z00180556 Only use first list for playback and seek
        /* Reset reading */
        hls_stream_info_t *hls = c->hls_stream[i];
        int64_t pos = 0;

        if (hls->seg_key.IO_decrypt) {
            hls_decrypt_close(hls->seg_key.IO_decrypt);
            av_freep(&hls->seg_key.IO_decrypt);
            hls->seg_key.IO_decrypt = NULL;
            hls->seg_stream.input = NULL; // already freed in hls_decrypt_close
        }

        if (hls->seg_stream.input) {
            hls_close(hls->seg_stream.input);
            hls->seg_stream.input = NULL;
            hls->seg_stream.offset = 0;
        }

        av_free_packet(&hls->seg_demux.pkt);
        hlsResetPacket(&hls->seg_demux.pkt);

        hls->seg_stream.IO_pb.eof_reached = 0;
        hls->seg_stream.IO_pb.pos = 0;
        hls->seg_stream.IO_pb.buf_ptr = hls->seg_stream.IO_pb.buf_end = hls->seg_stream.IO_pb.buffer;
        timestamp *= 1000;
        /* Locate the segment that contains the target timestamp */
        for (j = 0; j < hls->seg_list.hls_segment_nb; j++) {
            if (timestamp >= pos &&
                timestamp < pos + hls->seg_list.segments[j]->total_time) {
                hls->seg_list.hls_seg_cur = hls->seg_list.hls_seg_start + j;

                /* Set flag to update pts offset time*/
                hls->seg_demux.set_offset = 0;
                hls->seg_demux.pts_offset = 0;
                //hls->seg_demux.last_time = 0;
                memset(hls->seg_demux.last_time, 0, s->nb_streams * sizeof(int64_t));
                hls->seg_demux.seek_offset = 90 * (hls->seg_list.segments[j]->start_time);

                av_log(NULL, AV_LOG_ERROR, "[%s:%d] next pts will start at (%lld) for seeking \n",
                        __FILE_NAME__,__LINE__,
                        hls->seg_demux.seek_offset);
                //c->cur_seg=hls->seg_list.segments[j];
                //c->cur_hls=hls;
                ret = 0;
                break;
            }
            pos += hls->seg_list.segments[j]->total_time;
        }
        if (ret)
        {
            if (timestamp >= pos && j == hls->seg_list.hls_segment_nb)
            {
                j = hls->seg_list.hls_segment_nb;
                av_log(NULL, AV_LOG_ERROR, "seek exceed last seg number %d ", j);
                hls->seg_list.hls_seg_cur = hls->seg_list.hls_seg_start + j;
                hls->seg_demux.set_offset = 0;
                hls->seg_demux.pts_offset = 0;
                memset(hls->seg_demux.last_time, 0, s->nb_streams * sizeof(int64_t));
                hls->seg_demux.seek_offset = 0;
                c->cur_seg = NULL;
                c->cur_seq_num = j;
                ff_read_frame_flush(hls->seg_demux.ctx);
                return 0;
            }
        }
        ff_read_frame_flush(hls->seg_demux.ctx);
    }
    /*
    int stream_id = 0;
    if((c->appoint_id >= 0)
            && (c->hls_stream[c->appoint_id]->seg_list.hls_segment_nb > j))
    {
        stream_id = c->appoint_id;
    }
    else
    {
        stream_id = 0;
        for(i = 1; i < c->hls_stream_nb; i++)
        {
            if((c->hls_stream[i]->bandwidth < c->hls_stream[stream_id]->bandwidth)
                    && (c->hls_stream[i]->seg_list.hls_segment_nb > j))
            {
                stream_id = i;
            }
        }
    }
    */

    if(!ret)
    {
        hls_stream_info_t *hls = c->hls_stream[c->cur_stream_seq];
        c->cur_seg = hls->seg_list.segments[j];
        c->cur_hls = hls;
        //c->cur_stream_seq = stream_id;
        c->cur_seq_num = j;
    }
    return ret;
}

/*******************************************************************************
 * HLS demuxer module descriptor
 ******************************************************************************/
const AVClass hls_demuxer_class = {
    .class_name     = "hls demuxer",
    .item_name      = av_default_item_name,
    .option         = ff_hls_options,
    .version        = LIBAVUTIL_VERSION_INT,
};

AVInputFormat ff_hls_demuxer = {
    .name = "hls",
    .long_name = NULL,
    .priv_data_size = sizeof(HLSContext),
    .read_probe = HLS_probe,
    .read_header = HLS_read_header,
    .read_packet = HLS_read_packet,
    .read_close = HLS_close,
    .read_seek = HLS_read_seek,
    .priv_class = &hls_demuxer_class,
};
