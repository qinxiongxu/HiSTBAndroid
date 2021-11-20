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

#include "libavutil/avstring.h"
#include "libavutil/intreadwrite.h"
#include "avformat.h"
#include "internal.h"
#include <unistd.h>
#include "avio.h"
#include "url.h"
#include "hls_read.h"
#include "libavutil/opt.h"
#include "hls_key_decrypt.h"

#if defined (ANDROID_VERSION)
#include "libclientadp.h"
#include "cutils/properties.h"
#endif

#define DISCONTINUE_MAX_TIME    (90000LL*8)
#define DEFAULT_PTS_ADDON       (1)         // 1 sec

#define INITIAL_BUFFER_SIZE     (32768 * 16) //512K
#define __FILE_NAME__           av_filename(__FILE__)

#define TRACE(...) av_log(NULL, AV_LOG_DEBUG, "Trace [%s, %d]\n", __FUNCTION__, __LINE__)
#define ABORT() do {\
    TRACE();\
    *((char*)0) = 0;\
} while (0)
#define hls_log(...)
#define DELAY_OPENING 1
/*******************************************************************************
 * Local prototypes
 ******************************************************************************/
enum HLS_KEY_TYPE {
    KEY_NONE,
    KEY_AES_128,
};

enum HLS_DISCONTINUITY_STATUS {
    DISCONTINUITY_EMPTY = 0,
    DISCONTINUITY_PADDING,
    DISCONTINUITY_PROCESSING,
    DISCONTINUITY_PROCESSED,
};

typedef struct hls_ext_stream_attr_s {
    /**
     * The value is a quoted-string containing a URI that identifies the
     * Playlist file. This attribute is optional; see Section 3.4.10.1.
     */
    char uri[INITIAL_URL_SIZE];

    /* valid strings are AUDIO, VIDEO and SUBTITLES */
    char type[10];

    /*The value is a quoted-string identifying a mutually-exclusive group of renditions.*/
    char group_id[HLS_TAG_LEN];

    /**
     * The value is a quoted-string containing an RFC 5646 [RFC5646]
     * language tag that identifies the primary language used in the
     * rendition. This attribute is optional.
     */
    char language[4];

    /**
     * NAME The value is a quoted-string containing a human-readable description
     * of the rendition. If the LANGUAGE attribute is present then this
     * description SHOULD be in that language.
     */
    char name[HLS_TAG_LEN];

    /**
     * The value is an enumerated-string; valid strings are YES and NO.
     * If the value is YES, then the client SHOULD play this rendition of the
     * content in the absence of information from the user indicating a different choice.
     * This attribute is optional. Its absence indicates an implicit value of NO.
     */
    char is_default[4];

    /**
     * The value is an enumerated-string; valid strings are YES and NO.
     * This attribute is optional. If it is present, its value MUST be YES
     * if the value of the DEFAULT attribute is YES. If the value is YES,
     * then the client MAY choose to play this rendition in the absence of
     * explicit user preference because it matches the current playback
     * environment, such as chosen system language.
     */
    char autoselect[4];

    /**
     * The value is an enumerated-string; valid strings are YES and NO.
     * This attribute is optional. Its absence indicates an implicit value
     * of NO. The FORCED attribute MUST NOT be present unless the TYPE is SUBTITLES.
     */
    char forced[10];

    /**
     * The value is a quoted-string containing one or more Uniform Type
     * Identifiers [UTI] separated by comma (,) characters. This attribute
     * is optional. Each UTI indicates an individual characteristic of the
     * rendition.
     */
    char characteristics[1024];
} hls_ext_stream_attr_t;

typedef struct hls_stream_attr_s {
    char bandwidth[20];
    char program_id[HLS_TAG_LEN];
    char codecs[HLS_TAG_LEN];
    char resolution[20];
    char aud[HLS_TAG_LEN]; /*video group id*/
    char vid[HLS_TAG_LEN]; /*audio group id*/
    char sub[HLS_TAG_LEN]; /*subtitle group id*/
} hls_stream_attr_t;

typedef struct hls_iframe_info_s {
    hls_stream_attr_t info;
    char uri[INITIAL_URL_SIZE];
} hls_iframe_info_t;

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

typedef enum tagHLS_MEDIA_TYPE_E
{
    HLS_MEDIA_AUDIO = 0,
    HLS_MEDIA_VIDEO,
    HLS_MEDIA_SUBTITLE,
    HLS_MEDIA_BUTT
} HLS_MEDIA_TYPE_E;

static const char* s_media_type_desc[HLS_MEDIA_BUTT] = {
        "hls audio",
        "hls video",
        "hls subtitle",
};

/* use this time base to sync between different stream */
static AVRational s_timebase = {1, 90000};

typedef struct HLSMasterContext {
    HLSContext              variant_ctx;
    HLSContext              **alternate_ctx[HLS_MEDIA_BUTT];
    int                     alternate_nb[HLS_MEDIA_BUTT];
    int64_t                 stream_played_time;
    int                     vid_stream_index;
    int                     aud_stream_index;
    int                     sub_stream_index;
    int                     is_vod;
    hls_group_array_t       groups;
    int                     download_speed_collect_freq_ms;
} HLSMasterContext;


static const AVOption options[] = {
    { "vid_stream_index", "selected video stream index", offsetof(HLSMasterContext, vid_stream_index), AV_OPT_TYPE_INT, { .i64 = -1}, -1, INT_MAX, AV_OPT_FLAG_DECODING_PARAM },
    { "aud_stream_index", "selected audio stream index", offsetof(HLSMasterContext, aud_stream_index), AV_OPT_TYPE_INT, { .i64 = -1}, -1, INT_MAX, AV_OPT_FLAG_DECODING_PARAM },
    { "sub_stream_index", "selected subti stream index", offsetof(HLSMasterContext, sub_stream_index), AV_OPT_TYPE_INT, { .i64 = -1}, -1, INT_MAX, AV_OPT_FLAG_DECODING_PARAM },
    { "stream_played_time", "stream played time ",   offsetof(HLSMasterContext, stream_played_time), AV_OPT_TYPE_INT64, { .i64 = -1}, -1, INT_MAX, AV_OPT_FLAG_DECODING_PARAM },
    { "download_speed_collect_freq_ms",  "download speed collect freq", offsetof(HLSMasterContext, download_speed_collect_freq_ms), AV_OPT_TYPE_INT, {.i64 = 0}, 0, INT_MAX, AV_OPT_FLAG_DECODING_PARAM},
    { NULL },
};


static const AVClass hls_class = {
    .class_name = "hls demuxer",
    .item_name  = av_default_item_name,
    .option     = options,
    .version    = LIBAVUTIL_VERSION_INT,
};

#define LOG_TAG "hls"

/*******************************************************************************
 * local function declaration
 *******************************************************************************/
static int hlsGetIndex(HLSContext *c);
static int hlsGetDefaultIndex(HLSContext *c, HLS_START_MODE_E mode);
static int hlsReadDataCb(void *opaque, uint8_t *buf, int buf_size);
static void hls_close_input(hls_stream_info_t *v);
static int hlsParseM3U8(HLSContext *c, char *url,
        hls_stream_info_t *hls, AVIOContext *in);
/*******************************************************************************
 * Local protofunctions
 ******************************************************************************/

static inline int64_t hls_get_lasttime(HLSContext* c)
{
    return c->seg_demux.latest_read_pts;
}

static int hls_fresh_headers(HLSContext *c)
{
    URLContext* u = NULL;
    char *pheaders = NULL;

    if (c->parent->pb)
        u = (URLContext*)c->parent->pb->opaque;
    else
        return -1;

    if (u && !u->is_streamed)
    {
        return 0;
    }

    av_opt_get(u->priv_data, "user-agent", 0, (uint8_t**)&(pheaders));
    if (pheaders && !strlen(pheaders)) {
        av_freep(&pheaders);
    } else {
        av_freep(&c->user_agent);
        c->user_agent = pheaders;
        pheaders = NULL;
        av_log(NULL, AV_LOG_WARNING, "[%s:%d] New UA: %s \n",
            __FILE_NAME__, __LINE__, c->user_agent);
    }

    av_opt_get(u->priv_data, "referer", 0, (uint8_t**)&(pheaders));
    if (pheaders && !strlen(pheaders)) {
        av_freep(&pheaders);
    } else {
        av_freep(&c->referer);
        c->referer = pheaders;
        pheaders = NULL;
        av_log(NULL, AV_LOG_ERROR, "[%s:%d] New referer: %s \n",
            __FILE_NAME__, __LINE__, c->referer);
    }

    av_opt_get(u->priv_data, "cookies", 0, (uint8_t**)&(pheaders));
    if (pheaders && !strlen(pheaders)) {
        av_freep(&pheaders);
    } else {
        av_freep(&c->cookies);
        c->cookies = pheaders;
        pheaders = NULL;
        av_log(NULL, AV_LOG_ERROR, "[%s:%d] New cookies: %s \n",
            __FILE_NAME__, __LINE__, c->cookies);
    }

    av_opt_get(u->priv_data, "headers", 0, (uint8_t**)&(pheaders));
    if (pheaders && !strlen(pheaders)) {
        av_freep(&pheaders);
    } else {
        av_freep(&c->headers);
        c->headers = pheaders;
        pheaders = NULL;
        av_log(NULL, AV_LOG_ERROR, "[%s:%d] New headers: %s \n",
            __FILE_NAME__, __LINE__, c->headers);
    }

    return 0;
}

static int hls_set_option(HLSContext *c, AVDictionary **pm)
{
    if (NULL == c || NULL == pm)
        return -1;

    if (c->user_agent && strlen(c->user_agent) > 0) {
        av_dict_set(pm, "user-agent", c->user_agent, 0);
    }

    if (c->referer && strlen(c->referer) > 0) {
        av_dict_set(pm, "referer", c->referer, 0);
    }

    if (c->cookies && strlen(c->cookies) > 0) {
        av_dict_set(pm, "cookies", c->cookies, 0);
    }

    if (c->headers && strlen(c->headers) > 0) {
        av_dict_set(pm, "headers", c->headers, 0);
    }

    return 0;
}

static HLSContext* hls_get_by_xstream(HLSMasterContext* m, hls_ext_stream_info_t* x_stream)
{
    int type = x_stream->media_type;
    int n = m->alternate_nb[type];
    int i;
    HLSContext** ctxs = m->alternate_ctx[type];
    for (i = 0; i < n; i++) {
        if (0 == av_strcmp(ctxs[i]->ext_stream_name, x_stream->name)) {
            return ctxs[i];
        }
    }
    return NULL;
}
static void hls_close_ctx(HLSContext *c)
{
    av_freep(&c->seg_demux.last_time_array);
    av_free_packet(&c->seg_demux.pkt);
    av_free(c->IO_pb.buffer);
    if (c->cur_hls) {
        hls_close_input(c->cur_hls);
    }
    if (c->seg_demux.ctx) {
        avformat_close_input(&c->seg_demux.ctx);
    }
    if (c->playlist_io) {
        url_fclose(c->playlist_io);
        c->playlist_io = NULL;
    }
}

static int hls_open_ctx(HLSContext *c, hls_stream_info_t *hls)
{
    int ret, j;
    AVInputFormat *in_fmt = NULL;
    struct AVIOContext *pb = NULL;
    AVStream *st;
    AVFormatContext *s = c->parent;
    AVDictionary *opts = NULL;

    if (!(c->seg_demux.ctx = avformat_alloc_context())) {
        ret = AVERROR(ENOMEM);
        goto fail;
    }

    c->IO_buf = av_mallocz(INITIAL_BUFFER_SIZE);
    if (!c->IO_buf) {
        ret = AVERROR(ENOMEM);
        goto fail;
    }

    init_put_byte(&c->IO_pb,
            c->IO_buf,
            INITIAL_BUFFER_SIZE, 0, c,
            hlsReadDataCb, NULL, NULL);
    // d00198887 can not seek in every segment
    c->IO_pb.seekable = 0;
    pb = &c->IO_pb;

    ret = av_probe_input_buffer(pb, &in_fmt, c->cur_seg->url, NULL, 0, 0, &(c->interrupt_callback));
    if (ret < 0) {
        av_log(s, AV_LOG_ERROR, "av_probe_input_buffer failed\n");
        goto fail;
    }

    c->seg_demux.ctx->pb = pb;
    av_log(s, AV_LOG_DEBUG, "open %s with format %s", c->cur_seg->url, in_fmt->name);

    hls_fresh_headers(c);
    hls_set_option(c, &opts);

    ret = avformat_open_input(&c->seg_demux.ctx, c->cur_seg->url, in_fmt, &opts);
    av_dict_free(&opts);

    if (ret < 0) {
        av_log(s, AV_LOG_ERROR, "av_open_input_stream failed\n");
        goto fail;
    }
    /**
     * Note: if open alternate stream later, we must find all stream info
     * before add streaming to ensure all codec parameter visible to player
     */
//    ret = avformat_find_stream_info(c->seg_demux.ctx, NULL);
//    if (ret < 0) {
//        av_log(s, AV_LOG_ERROR, "avformat_find_stream_info failed\n");
//        goto fail;
//    }
//    av_dump_format(c->seg_demux.ctx, 0, c->seg_demux.ctx->filename, 0);
fail:
    return ret;
}

static hls_group_t* hls_get_group(hls_group_array_t *c, const char* group_id)
{
    int i;
    if (!group_id || !group_id[0]) {
        return NULL;
    }
    for (i = 0; i < c->hls_grp_nb; i++) {
        if (!av_strcmp(group_id, c->hls_groups[i]->group_id)) {
            return c->hls_groups[i];
        }
    }
    return NULL;
}

static hls_group_t* hls_set_group(hls_group_array_t *c, const char* group_id)
{
    int i;
    int ret = 0;
    hls_group_t* grp = av_mallocz(sizeof(hls_group_t));
    if (!grp) {
        return NULL;
    }
    av_strlcpy(grp->group_id, group_id, sizeof(grp->group_id));
    dynarray_add_noverify(&c->hls_groups, &c->hls_grp_nb, grp, &ret);
    return grp;
}

static void hls_free_group(hls_group_array_t* c)
{
    int i, j;
    hls_group_t* tmp;
    hls_ext_stream_info_t* x;
    for (i = 0; i < c->hls_grp_nb; i++) {
        tmp = c->hls_groups[i];
        //do not need free, because x->stream_info freed by hls_close_main
//        for (j = 0; j < tmp->ext_stream_nb; j++) {
//            x = tmp->ext_streams[j];
//            av_free(x);
//        }
        av_freep(&tmp->ext_streams);
    }
    av_freep(&c->hls_groups);
}

static hls_ext_stream_info_t* hls_get_xstream(hls_group_t* grp, char* name)
{
    int i;
    hls_ext_stream_info_t* x = NULL;
    for (i = 0; i < grp->ext_stream_nb; i++) {
        x = grp->ext_streams[i];
        if (0 == strncmp(x->name, name, sizeof(x->name))) {
            return x;
        }
    }
    return x;
}

static int hls_check_discontinuity(HLSContext *c)
{
    int ret;
    int need_flush = 0;
    int i;
    AVFormatContext *parent = c->parent;
    struct AVInputFormat *previous_format = c->seg_demux.ctx->iformat;
    /* close the previous ctx */
    hls_close_ctx(c);
    /* open next ctx */
    ret = hls_open_ctx(c, c->cur_hls);
    if (ret < 0) {
        return ret;
    }

    /* demux handle is static, so we check the demux handle */
    if (previous_format != c->seg_demux.ctx->iformat) {
        av_log(NULL, AV_LOG_DEBUG, "file format changed from %s to %s",
                previous_format->name, c->seg_demux.ctx->iformat->name);
        need_flush = 1;
    }
    if (parent->nb_streams != c->seg_demux.ctx->nb_streams) {
        av_log(NULL, AV_LOG_DEBUG, "number of tracks changed from %d to %d",
                parent->nb_streams, c->seg_demux.ctx->nb_streams);
        need_flush = 1;
    } else {
        for (i = 0; i < parent->nb_streams; i++) {
            if (parent->streams[i]->codec->codec_id != c->seg_demux.ctx->streams[i]->codec->codec_id) {
                av_log(NULL, AV_LOG_DEBUG, "stream %d code type changed", i);
                need_flush = 1;
                break;
            }
        }
    }
    if (need_flush) {
        c->discontinuity_status = DISCONTINUITY_PROCESSING;
    } else {
        av_log(NULL, AV_LOG_DEBUG, "this discontinuity do not need to notify player");
        c->discontinuity_status = DISCONTINUITY_PROCESSED;
    }

    return 0;
}

static int hls_next_segment(HLSContext *c)
{
    int i;
    hls_stream_info_t *v = c->cur_hls;
    int pos=0;
    int stream_num = 0;
    for(i = 0; i < c->hls_stream_nb; i++)
    {
        c->hls_stream[i]->has_read = 0;
    }
    v->seg_list.hls_seg_cur++;

    if (v->seg_list.hls_finished && v->seg_list.hls_seg_cur >=
        v->seg_list.hls_segment_nb + v->seg_list.hls_seg_start) {
        av_log(c->parent, AV_LOG_ERROR, "no segment left\n");
        return AVERROR_EOF;
    }
    v->seg_list.needed = 0;
    stream_num = hlsGetIndex(c);
    hls_stream_info_t *hls_next = c->hls_stream[stream_num];
    pos = hls_next->seg_list.hls_seg_start + (v->seg_list.hls_seg_cur - v->seg_list.hls_seg_start);
    if (hls_next->seg_list.hls_segment_nb > 0)
    {
        if(v->seg_list.hls_finished)
        {
            if((pos+1) <= hls_next->seg_list.hls_segment_nb+hls_next->seg_list.hls_seg_start)
            {
                c->cur_seg = hls_next->seg_list.segments[pos-hls_next->seg_list.hls_seg_start];
                c->cur_hls = hls_next;
                c->cur_stream_no = stream_num;
                c->cur_seg_no = pos - hls_next->seg_list.hls_seg_start;
                av_log(c->parent, AV_LOG_DEBUG, "hls slide switch to %s\n", c->cur_seg->url);
            }
        }
        else
        {
            c->cur_hls = hls_next;
            c->cur_stream_no = stream_num;
        }
    }
    c->segment_stream_eof = 1;
    c->hls_stream_cur = v->seg_list.hls_seg_cur;
    hls_next->seg_list.hls_seg_cur = v->seg_list.hls_seg_cur;
    av_log(c->parent, AV_LOG_DEBUG, "switch to segment %d\n", hls_next->seg_list.hls_seg_cur);
    c->cur_hls->seg_list.needed = 1;
    return 0;
}

static int hls_setup_info(HLSContext *c, hls_stream_info_t *hls)
{
    int i, j;
    hls_group_t* grp[HLS_MEDIA_BUTT];
    hls_ext_stream_info_t* x = NULL;
    char* default_aud_language = NULL;

    if (!c->cur_hls->seg_list.hls_finished) {
        av_log(c->parent, AV_LOG_DEBUG, "live stream, do not delay opening stream");
        return 0;
    }
    for (i = 0; i < HLS_MEDIA_BUTT; i++) {
        grp[i] = NULL;
        grp[i] = hls_get_group(c->group_array, hls->groups[i]);
        if (!grp[i]) {
            continue;
        }
        for (j = 0; j < grp[i]->ext_stream_nb; j++) {
            x = grp[i]->ext_streams[j];
            if (x->is_default) {
                default_aud_language = x->language;
            }
            x = NULL;
        }
    }

    for (i = 0; i < c->seg_demux.ctx->nb_streams; i++) {
        AVCodecContext *codec = c->seg_demux.ctx->streams[i]->codec;
        if (!codec)
            continue;
        if (AVMEDIA_TYPE_AUDIO == codec->codec_type) {
            if (default_aud_language) {
                av_dict_set(&c->seg_demux.ctx->streams[i]->metadata, "language",
                        default_aud_language, 0);
            }
//            if (grp[HLS_MEDIA_AUDIO]) {
//                grp[HLS_MEDIA_AUDIO]->has_codec = 1;
//                grp[HLS_MEDIA_AUDIO]->stream_index = i;
//            }
        }  else if (AVMEDIA_TYPE_VIDEO == codec->codec_type) {
            if (grp[HLS_MEDIA_VIDEO]) {
                grp[HLS_MEDIA_VIDEO]->has_codec = 1;
                grp[HLS_MEDIA_VIDEO]->stream_index = i;
            }
        }
        else if (AVMEDIA_TYPE_SUBTITLE == codec->codec_type)
        {
            if (grp[HLS_MEDIA_SUBTITLE]) {
                grp[HLS_MEDIA_SUBTITLE]->has_codec = 1;
                grp[HLS_MEDIA_SUBTITLE]->stream_index = i;
            }
        }
    }
    return 0;
}

static int hls_add_stream(HLSContext *c)
{
    int i, ret;
    hls_stream_info_t *hls = c->cur_hls;
    hls_stream_info_t *v = hls;
    AVFormatContext *s = c->parent;
    hls_group_t* grp = NULL;
    int j;
    if (c->seg_demux.ctx) {
        v->seg_list.needed = 0;

//        if(c->seg_demux.ctx->nb_streams > c->parent->nb_streams)
        {
            av_log(NULL, AV_LOG_INFO, "hls_add_stream ==== offset %d nb %d p_nb %d==== \n",
                c->stream_offset, c->seg_demux.ctx->nb_streams, c->parent->nb_streams);


            int64_t* lasttime = (int64_t*)av_mallocz(sizeof(int64_t) * c->seg_demux.ctx->nb_streams);

            if (NULL == lasttime)
            {
                ret = AVERROR(ENOMEM);
                return ret;
            }
            if (c->seg_demux.last_time_array) {
                memcpy(lasttime, c->seg_demux.last_time_array, sizeof(int64_t) * c->seg_demux.ctx->nb_streams);
                av_free(c->seg_demux.last_time_array);
            }
            c->seg_demux.last_time_array = lasttime;
            av_log(c->seg_demux.ctx, AV_LOG_DEBUG, "There are %d streams found\n", c->seg_demux.ctx->nb_streams);
            for (j = 0; j < c->seg_demux.ctx->nb_streams; j++) {
                /* j is index of internal streams */
                AVStream *st = av_new_stream(s, j);
                if (!st) {
                    ret = AVERROR(ENOMEM);
                    return ret;
                }

                st->time_base = c->seg_demux.ctx->streams[j]->time_base;
                st->start_time = c->seg_demux.ctx->streams[j]->start_time;
                st->pts_wrap_bits = c->seg_demux.ctx->streams[j]->pts_wrap_bits;
                av_log(c->seg_demux.ctx, AV_LOG_DEBUG, "add new stream, time base:(%d/%d), start time:%lld pts_wrap_bits:%d\n",
                        st->time_base.num,
                        st->time_base.den,
                        st->start_time,
                        st->pts_wrap_bits);

                avcodec_copy_context(st->codec, c->seg_demux.ctx->streams[j]->codec);
                av_dict_copy(&st->metadata, c->seg_demux.ctx->streams[j]->metadata, 0);
            }
        }

        for (i = c->stream_offset; i < c->stream_offset + c->seg_demux.ctx->nb_streams; i++) {
            if (c->parent->streams[i]->discard < AVDISCARD_ALL)
                v->seg_list.needed = 1;
        }
    } else {
        grp = hls_get_group(c->group_array, c->ext_group_id);
        if (!grp) {
            av_log(s, AV_LOG_ERROR, "get group by %s failed", c->ext_group_id);
            return -1;
        }
        hls_ext_stream_info_t* x = hls_get_xstream(grp, c->ext_stream_name);
        if (!x) {
            av_log(s, AV_LOG_ERROR, "get xstream by %s failed", c->ext_stream_name);
            return -1;
        }
        av_log(s, AV_LOG_DEBUG, "Context is not open yet, add first stream info of group:%s, name:%s\n",
                c->ext_group_id, c->ext_stream_name);
        j = grp->stream_index;
        /* Only one stream can add here */
        AVStream *st = av_new_stream(s, c->stream_offset);
        if (!st) {
            ret = AVERROR(ENOMEM);
            return ret;
        }

        st->time_base = s->streams[j]->time_base;
        st->start_time = s->streams[j]->start_time;
        av_log(s, AV_LOG_DEBUG, "add new stream, time base:(%d/%d), start time:%lld\n",
                st->time_base.num,
                st->time_base.den,
                st->start_time);
        av_dict_set(&st->metadata, "language", x->language, 0);
        avcodec_copy_context(st->codec, s->streams[j]->codec);

    }
    return 0;
}

static void hls_set_appoint_id(HLSContext *c)
{
    int i;
    for(i = 0; i < c->hls_stream_nb; i++)
    {
        hls_stream_info_t* hls = c->hls_stream[i];
        hls->seg_list.hls_seg_cur = hls->seg_list.hls_seg_start;
        if (!hls->seg_list.hls_finished && hls->seg_list.hls_segment_nb > 3)
            hls->seg_list.hls_seg_cur =
                hls->seg_list.hls_seg_start + hls->seg_list.hls_segment_nb - 3; //wKF34645 for live stream, if there are more than 3 segments in the list, only read the last 3 segments.
    }
    if((c->appoint_id >= 0) && (c->appoint_id < c->hls_stream_nb) && (c->hls_stream[c->appoint_id]->seg_list.hls_segment_nb > 0)){
        c->cur_seg = c->hls_stream[c->appoint_id]->seg_list.segments[0];
        c->cur_hls = c->hls_stream[c->appoint_id];
        c->cur_stream_no = c->appoint_id;
        c->cur_seg_no = 0;
        av_log(c->parent, AV_LOG_ERROR, "use appoint id:%d\n", c->appoint_id);
    }
    else
    {
        int default_video_bw_stream_nb = hlsGetDefaultIndex(c, (HLS_START_MODE_E)c->parent->hls_start_mode);
        c->cur_seg = c->hls_stream[default_video_bw_stream_nb]->seg_list.segments[0];
        c->cur_hls = c->hls_stream[default_video_bw_stream_nb];
        c->cur_stream_no = default_video_bw_stream_nb;
        c->cur_seg_no = 0;
        av_log(c->parent, AV_LOG_ERROR, "use default stream:%d, hls_start_mode:%d\n", default_video_bw_stream_nb, c->parent->hls_start_mode);
    }
}

static int hls_seek_segment(HLSContext *c, int64_t timestamp, int flags)
{
    int j;
    hls_stream_info_t *hls = c->cur_hls;
    int ret = -1;
    int64_t pos = 0;

    for (j = 0; j < hls->seg_list.hls_segment_nb; j++) {
        if (timestamp >= pos &&
            timestamp < pos + hls->seg_list.segments[j]->total_time) {
            hls->seg_list.hls_seg_cur = hls->seg_list.hls_seg_start + j;

            /* Set flag to update pts offset time*/
            c->seg_demux.set_offset = 0;
            c->seg_demux.pts_offset = 0;

            memset(c->seg_demux.last_time_array, 0, c->seg_demux.ctx->nb_streams * sizeof(int64_t));

            ret = 0;
            break;
        }
        pos += hls->seg_list.segments[j]->total_time;
    }

    if (j >= hls->seg_list.hls_segment_nb && timestamp >= pos)
    {
        av_log(NULL, AV_LOG_ERROR, "file:%s, line:%d, timestamp=%lld, pos=%lld, duration=%lld\n",
            __FILE__, __LINE__, timestamp, pos, c->parent->duration);
        c->hls_file_eof = 1;
    }

    if(!ret)
    {
        hls_stream_info_t *hls = c->hls_stream[c->cur_stream_no];
        c->cur_seg = hls->seg_list.segments[j];
        c->cur_hls = hls;
        //c->cur_stream_no = stream_id;
        c->cur_seg_no = j;
    }
    return ret;
}

static int hls_reload_playlist(HLSContext *c, hls_stream_info_t *v, int need_reload)
{
    int64_t time_diff;
    int64_t time_wait;
    int ret;
    int has_reload;
    AVFormatContext* s = c->parent;
reload:
    time_diff = av_gettime() - v->seg_list.hls_last_load_time;
    time_wait = v->seg_list.hls_target_duration * AV_TIME_BASE;

    /* If this is a live stream and target_duration has elapsed since
     * the last playlist reload, reload the variant playlists now. */
    if (!v->seg_list.hls_finished && ((time_diff >= time_wait) || need_reload)) {
reparse:

        ret = hlsParseM3U8(c, v->url, v, NULL);
        if (ret < 0) {
            if (ff_check_interrupt(&c->interrupt_callback))
                return ret;

            usleep(1000*1000);
            av_log(s, AV_LOG_ERROR, "[%s:%d] redo hlsParseM3U8\n",
                    __FILE__, __LINE__);
            goto reparse;
        }

        need_reload = 0;
        has_reload = 1;

        av_log(s, AV_LOG_DEBUG, "reload live playlist successes\n");
    }

    if (v->seg_list.hls_seg_cur < v->seg_list.hls_seg_start) {
        av_log(s, AV_LOG_ERROR, "[%s:%d] skipping %d segments ahead, expired from playlists",
                __FUNCTION__, __LINE__,
                v->seg_list.hls_seg_start - v->seg_list.hls_seg_cur);
        v->seg_list.hls_seg_cur = v->seg_list.hls_seg_start;
    }

    if (v->seg_list.hls_seg_cur >= v->seg_list.hls_seg_start + v->seg_list.hls_segment_nb) {
        if (v->seg_list.hls_finished)
            return AVERROR_EOF;

        time_diff = av_gettime() - v->seg_list.hls_last_load_time;
        time_wait = v->seg_list.hls_target_duration * AV_TIME_BASE;

        while (time_diff < time_wait) {
            if (ff_check_interrupt(&c->interrupt_callback))
                return AVERROR_EOF;

            usleep(100*1000);

            time_diff = av_gettime() - v->seg_list.hls_last_load_time;
            time_wait = v->seg_list.hls_target_duration * AV_TIME_BASE;
        }

        /* Enough time has elapsed since the last reload */
        if (ff_check_interrupt(&c->interrupt_callback))
            return AVERROR_EOF;
        goto reload;
    }

    if(!v->seg_list.hls_finished)
    {
        if(has_reload && (c->cur_stream_no != v->seg_list.hls_index))
        {
reparse2:
            ret = hlsParseM3U8(c, c->cur_hls->url, c->cur_hls, NULL);
            if (ret < 0) {
                if (ff_check_interrupt(&c->interrupt_callback))
                    return ret;

                usleep(1000*1000);
                av_log(s, AV_LOG_ERROR, "[%s:%d] redo hlsParseM3U8\n",__FILE__, __LINE__);
                goto reparse2;
            }
        }
        has_reload = 0;
        if(c->cur_hls->seg_list.hls_seg_start + c->cur_hls->seg_list.hls_segment_nb - 1 < v->seg_list.hls_seg_cur)
        {
            goto reparse2;
        }

        if(v->seg_list.hls_seg_cur >= c->cur_hls->seg_list.hls_seg_start)
        {
            c->cur_seg = c->cur_hls->seg_list.segments[v->seg_list.hls_seg_cur - c->cur_hls->seg_list.hls_seg_start];
            c->cur_seg_no = v->seg_list.hls_seg_cur - c->cur_hls->seg_list.hls_seg_start;
        }
        else
        {
            c->cur_seg = c->cur_hls->seg_list.segments[0];
            c->cur_seg_no = 0;
        }
    }
    return 0;
}

static void hls_close_input(hls_stream_info_t *v)
{
    TRACE();
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
}

static int hlsGetLine(AVIOContext *s, char *buf, int maxlen, AVIOInterruptCB *interrupt_callback)
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
        if(ff_check_interrupt(interrupt_callback))
        {
            return AVERROR_EOF;
        }
    } while (c != '\r' && c != '\n' && (char)URL_EOF != c);

    buf[i] = 0;
    return i;
}

static int hlsReadLine(AVIOContext *s, char *buf, int maxlen, AVIOInterruptCB *interrupt_callback)
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
    for (i = 0; i < hls->seg_list.hls_segment_nb; i++)
        av_free(hls->seg_list.segments[i]);

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
        hls_close_input(hls);

        if (hls->seg_stream.headers) {
            av_freep(&hls->seg_stream.headers);
            hls->seg_stream.headers = NULL;
        }

        av_free(hls);
    }
    av_freep(&c->hls_stream);
    c->hls_stream_nb = 0;
}

static inline void hls_init_stream(hls_stream_info_t *hls,  int bandwidth,
        const char *url, const char *base, const char *headers)
{
    hls->bandwidth = bandwidth;

    if (headers)
        hls->seg_stream.headers = av_strdup(headers);

    hlsMakeAbsoluteUrl(hls->url, sizeof(hls->url), base, url);
}

static inline hls_stream_info_t *hls_new_stream(HLSContext *c, int bandwidth,
        const char *url, const char *base, const char *headers)
{
    hls_stream_info_t *hls = av_mallocz(sizeof(hls_stream_info_t));

    if (!hls) return NULL;

    av_log(c->parent, AV_LOG_INFO, "[%s:%d]: NEW HLS stream info ==> bandwidth=%d url=%s base=%s headers=%s\n",
            __FUNCTION__, __LINE__,
            bandwidth, url, base, headers);
    hls_init_stream(hls, bandwidth, url, base, headers);
    hlsResetPacket(&c->seg_demux.pkt);
    return hls;
}

static inline void hls_del_stream(hls_stream_info_t *hls)
{
    int i;
    if (hls) {
        av_freep(&hls->seg_stream.headers);
        av_free(hls);
    }
}

static hls_stream_info_t *hlsNewHlsStream(HLSContext *c, int bandwidth,
        const char *url, const char *base, const char *headers)
{
    int add_ret;
    hls_stream_info_t *hls = hls_new_stream(c, bandwidth, url, base, headers);
    if (!hls)
        return NULL;

    dynarray_add_noverify(&c->hls_stream, &c->hls_stream_nb, hls, &add_ret);
    if (add_ret < 0){
        hls_del_stream(hls);
        hls = NULL;
    }
    return hls;
}

static void handle_extstream_args(hls_ext_stream_attr_t* x_info, const char *key, int key_len, char ** dest, int *dest_len)
{
    if (!strncmp(key, "TYPE=", key_len)) {
        *dest       =       x_info->type;
        *dest_len   =       sizeof(x_info->type);
    } else if (!strncmp(key, "GROUP-ID=", key_len)) {
        *dest       =       x_info->group_id;
        *dest_len   =       sizeof(x_info->group_id);
    } else if (!strncmp(key, "LANGUAGE=", key_len)) {
        *dest       =       x_info->language;
        *dest_len   =       sizeof(x_info->language);
    } else if (!strncmp(key, "NAME=", key_len)) {
        *dest       =       x_info->name;
        *dest_len   =       sizeof(x_info->name);
    } else if (!strncmp(key, "DEFAULT=", key_len)) {
        *dest       =       x_info->is_default;
        *dest_len   =       sizeof(x_info->is_default);
    } else if (!strncmp(key, "AUTOSELECT=", key_len)) {
        *dest       =       x_info->autoselect;
        *dest_len   =       sizeof(x_info->autoselect);
    } else if (!strncmp(key, "FORCED=", key_len)) {
        *dest       =       x_info->forced;
        *dest_len   =       sizeof(x_info->forced);
    } else if (!strncmp(key, "CHARACTERISTICS=", key_len)) {
        *dest       =       x_info->characteristics;
        *dest_len   =       sizeof(x_info->characteristics);
    } else if (!strncmp(key, "URI=", key_len)) {
        *dest       =       x_info->uri;
        *dest_len   =       sizeof(x_info->uri);
    } else {
        av_log(NULL, AV_LOG_ERROR, "unexpected tag:%s", key);
    }
}

static void hlsHandleArgs(hls_stream_attr_t *info, const char *key, int key_len, char **dest, int *dest_len)
{
    if (!strncmp(key, "BANDWIDTH=", key_len)) {
        *dest     =        info->bandwidth;
        *dest_len = sizeof(info->bandwidth);
    }else if(!strncmp(key, "PROGRAM-ID=", key_len)){
        *dest      =        info->program_id;
        *dest_len = sizeof(info->program_id);
    }else if(!strncmp(key, "CODECS=", key_len)){
        *dest      =        info->codecs;
        *dest_len = sizeof(info->codecs);
    }else if(!strncmp(key, "RESOLUTION=", key_len)){
        *dest      =        info->resolution;
        *dest_len = sizeof(info->resolution);
    } else if (!strncmp(key, "VIDEO=", key_len)){
        *dest       =       info->vid;
        *dest_len   =       sizeof(info->vid);
    } else if (!strncmp(key, "AUDIO=", key_len)){
        *dest       =       info->aud;
        *dest_len   =       sizeof(info->aud);
    } else if (!strncmp(key, "SUBTITLES=", key_len)){
        *dest       =        info->sub;
        *dest_len   =        sizeof(info->sub);
    }
}

static void handle_iframe_info(hls_iframe_info_t *info, const char *key,
        int key_len, char **dest, int *dest_len)
{
    hlsHandleArgs(&info->info, key, key_len, dest, dest_len);

    if (!strncmp(key, "URI=", key_len)) {
        *dest     =        info->uri;
        *dest_len = sizeof(info->uri);
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
        hls_stream_info_t *hls, AVIOContext *in)
{
    av_log(c->parent, AV_LOG_DEBUG, "parse m3u8 file:%s\n", url);
    int ret = 0, duration = 0, is_segment = 0, is_hls = 0, bandwidth = 0, video_codec = 0, audio_codec = 0;
    int is_byterange = 0;
    int byterange_off = -1, byterange_len = -1, last_byterange_off = -1;
    char line[1024];
    const char *ptr;
    int close_in = 0;
    hls_group_t *vid = NULL, *aud = NULL, *sub = NULL;
    int discontinuity = 0, iframe_only = 0;
    AVFormatContext *s = c->parent;

    enum HLS_KEY_TYPE key_type = KEY_NONE;
    uint8_t iv[16] = "";
    int has_iv = 0;
    char key[INITIAL_URL_SIZE];
    AVDictionary *opts = NULL;
    URLContext *uc = NULL;

    if (!in && c->playlist_io) {
        /* use persist connection */
        in = (AVIOContext*)c->playlist_io;
        av_log(s, AV_LOG_DEBUG, "reuse previous connection:%p", in);
        uc = in->opaque;
        /* different playlist file, the same server */
        if (!strncmp(uc->filename, url,
            strstr(url+sizeof("http://"), "/") - url)) {
            av_log(s, AV_LOG_DEBUG, "connect url from:%s to %s", uc->filename, url);
            av_strlcpy(uc->filename, url, strlen(url) + 1);

            hls_fresh_headers(c);
            hls_set_option(c, &opts);

            /* request persist connection */
            av_dict_set(&opts, "multiple_requests", "1", 0);

            ret = ffurl_connect(uc, &opts);
            av_dict_free(&opts);
            if (ret) {
                av_log(s, AV_LOG_ERROR, "connect url failed\n");
                goto close_persist;
            }
            avio_flush(in);
            avio_seek(in, 0, SEEK_SET);
        } else {
close_persist:
            /* close previous connection */
            av_log(s, AV_LOG_DEBUG, "close previous connection:%p", in);
            ret = avio_close(in);
            if (ret < 0) {
                av_log(s, AV_LOG_ERROR, "close previous connection failed\n");
                return ret;
            }
            in = NULL;
            c->playlist_io = NULL;
        }
    }
    /**make resolution change available from 3716c-0.6.3 r41002 changed by duanqingpeng**/
    if (!in) {
        hls_fresh_headers(c);
        hls_set_option(c, &opts);

        /* request persist connection */
        //av_dict_set(&opts, "multiple_requests", "1", 0);

        ret = avio_open_h(&in, url, URL_RDONLY, &c->interrupt_callback, &opts);
        av_dict_free(&opts);

        if (ret < 0)
            return ret;
        //c->playlist_io = in;
        uc = in->opaque;

        /* Set url to http location url. */

        if (uc && uc->moved_url) {
            memset(url, 0, INITIAL_URL_SIZE);
            snprintf(url, INITIAL_URL_SIZE, "%s", uc->moved_url);
        }
    }

    hlsReadLine(in, line, sizeof(line), &c->interrupt_callback);
    if (av_strlcmp(line, "#EXTM3U", 7)) {
        ret = AVERROR_INVALIDDATA;
        av_log(NULL, AV_LOG_ERROR, "[%s:%d] line:%s\n", __FILE_NAME__, __LINE__, line);
        goto fail;
    }

    if (hls) {
        hlsFreeSegmentList(hls);
        hls->seg_list.hls_finished = 0;
    }

    while (!url_feof(in)) {
        hlsReadLine(in, line, sizeof(line), &c->interrupt_callback);

        if(ff_check_interrupt(&c->interrupt_callback))
        {
            ret = AVERROR_EOF;
            goto fail;
        }

        if (av_strstart(line, "#EXTM3U", &ptr)) { // Allow only one m3u8 playlist
            break;
        }
        if (av_strstart(line, "#EXT-X-MEDIA:", &ptr)) {
            hls_group_t* grp = NULL;
            hls_ext_stream_info_t* x_stream = av_mallocz(sizeof(hls_ext_stream_info_t));
            if (!x_stream) {
                ret = AVERROR(ENOMEM);
                goto fail;
            }
            hls_ext_stream_attr_t x_info;
            memset(&x_info, 0, sizeof(x_info));
            ff_parse_key_value(ptr, (ff_parse_key_val_cb)handle_extstream_args, &x_info);
            if (x_info.uri[0]) {
//                 av_strlcpy(x_stream->uri, x_info.uri, sizeof(x_stream->uri));
                hlsMakeAbsoluteUrl(x_stream->uri, sizeof(x_stream->uri), url, x_info.uri);
            }
            if (x_info.group_id[0]) {
                av_strlcpy(x_stream->group_id, x_info.group_id, sizeof(x_stream->group_id));
                grp = hls_get_group(c->group_array, x_info.group_id);
                if (!grp) {
                    grp = hls_set_group(c->group_array, x_info.group_id);
                    if (!grp) {
                        ret = AVERROR(ENOMEM);
                        goto fail;
                    }
                }
            }
            if (!strncmp(x_info.forced, "YES", 3)) {
                x_stream->forced = 1;
            }
            if (!strncmp(x_info.is_default, "YES", 3)) {
                x_stream->is_default = 1;
            }
            if (x_info.language[0]) {
                av_strlcpy(x_stream->language, x_info.language, sizeof(x_stream->language));
            }
            if (x_info.name[0]) {
                hls_log(s, AV_LOG_DEBUG, "name=%s, len:%d\n", x_info.name, strlen(x_info.name));
                av_strlcpy(x_stream->name, x_info.name, sizeof(x_stream->name));
            }
            if (!strncmp(x_info.type, "AUDIO", 5)) {
                x_stream->media_type = HLS_MEDIA_AUDIO;
            } else if (!strncmp(x_info.type, "VIDEO", 5)) {
                x_stream->media_type = HLS_MEDIA_VIDEO;
            } else if (!strncmp(x_info.type, "SUBTITLES", 9)) {
                x_stream->media_type = HLS_MEDIA_SUBTITLE;
            } else {
                x_stream->media_type = HLS_MEDIA_BUTT;
            }
            if (x_info.uri[0]) {
                hls_init_stream(&x_stream->stream_info, 0, x_stream->uri, NULL, c->headers);
                av_log(s, AV_LOG_DEBUG, "x media stream %s created\n", x_stream->uri);
            }

            /* set default stream for this group */
            if (x_stream->is_default) {
                grp->ext_stream_cur = grp->ext_stream_nb - 1;
            }
            dynarray_add_noverify(&grp->ext_streams, &grp->ext_stream_nb, x_stream, &ret);
            if (ret < 0) {
                ret = AVERROR(ENOMEM);
                goto fail;
            }

            av_log(c->parent, AV_LOG_DEBUG, "add x stream, name:%s, type:%s, group:%s, url:%s\n",
                    x_info.name, x_info.type, x_info.group_id, x_info.uri);
        } else if (av_strstart(line, "#EXT-X-STREAM-INF:", &ptr)) {
            hls_stream_attr_t info;
            memset(&info, 0, sizeof(info));
            is_hls = 1;
            hlsParseKeyValue(ptr, (hlsParseKeyValCb) hlsHandleArgs, &info);
            bandwidth = atoi(info.bandwidth);

            /*audiocodecs description:
                        // generic for MPEG-2 Part 7 & MPEG-4 Part 2 AAC
                        "mp4a",
                        // MPEG-2 Part 7 & MPEG-4 Part 2 AAC, Low-Complexity Profile
                        "mp4a.40.2",
                        "mp4a.40.5",
                        "mp4a.40.34"
                    */
            if(strstr(info.codecs, "mp4a."))
            {
                audio_codec = 1;
            }
            /* videocodecs description:
                        // generic for MPEG-4 Part 10 H.264/AVC
                        "avc1",
                        // MPEG-4 Part 10 H.264/AVC, Baseline Profile
                        "avc1.42e00a", // level 1.0
                        "avc1.42e00b", // level 1.1
                        "avc1.42e00c", // level 1.2
                        "avc1.42e00d", // level 1.3
                        "avc1.42e014", // level 2.0
                        "avc1.42e015", // level 2.1
                        "avc1.42e016", // level 2.2
                        "avc1.42e01e", // level 3.0
                        "avc1.42e01f", // level 3.1
                        "avc1.42e020", // level 3.2
                        "avc1.42e028", // level 4.0
                        // MPEG-4 Part 10 H.264/AVC, Main Profile
                        "avc1.4d400a", // level 1.0
                        "avc1.4d400b", // level 1.1
                        "avc1.4d400c", // level 1.2
                        "avc1.4d400d", // level 1.3
                        "avc1.4d4014", // level 2.0
                        "avc1.4d4015", // level 2.1
                        "avc1.4d4016", // level 2.2
                        "avc1.4d401e", // level 3.0
                        "avc1.4d401f", // level 3.1
                        "avc1.4d4020", // level 3.2
                        "avc1.4d4028", // level 4.0
                        // MPEG-4 Part 10 H.264/AVC, High Profile
                        "avc1.64000a", // level 1.0
                        "avc1.64000b", // level 1.1
                        "avc1.64000c", // level 1.2
                        "avc1.64000d", // level 1.3
                        "avc1.640014", // level 2.0
                        "avc1.640015", // level 2.1
                        "avc1.640016", // level 2.2
                        "avc1.64001e", // level 3.0
                        "avc1.64001f", // level 3.1
                        "avc1.640020", // level 3.2
                        "avc1.640028", // level 4.0
                        // MPEG-4 Part 2 Visual Simple Profile
                        "mp4v.20.9", // level 0
                        // MPEG-4 Part 2 Visual Advanced Simple Profile
                        "mp4v.20.240"  // level 0
                  */
            if(strstr(info.codecs, "avc1.") || strstr(info.codecs, "mp4v."))
            {
                video_codec = 1;
            }
            vid = aud = sub = NULL;
            if (info.vid[0]) {
                vid = hls_get_group(c->group_array, info.vid);
                if (!vid) {
                    av_log(s, AV_LOG_ERROR, "get group %s failed", info.vid);
                    ret = AVERROR_INVALIDDATA;
                    goto fail;
                }
            }
            if (info.aud[0]) {
                aud = hls_get_group(c->group_array, info.aud);
                if (!aud) {
                    av_log(s, AV_LOG_ERROR, "get group %s failed", info.aud);
                    ret = AVERROR_INVALIDDATA;
                    goto fail;
                }
            }
            if (info.sub[0]) {
                sub = hls_get_group(c->group_array, info.sub);
                if (!sub) {
                    av_log(s, AV_LOG_ERROR, "get group %s failed", info.sub);
                    ret = AVERROR_INVALIDDATA;
                    goto fail;
                }
            }
            av_log(c->parent, AV_LOG_DEBUG, "hls stream info, program id:%s, bandwidth:%s\n",
                    info.program_id, info.bandwidth);
        } else if (av_strstart(line, "#EXT-X-I-FRAME-STREAM-INF:", &ptr)) {
            hls_iframe_info_t iframe_info;
            memset(&iframe_info, 0, sizeof(iframe_info));
            ff_parse_key_value(ptr, (ff_parse_key_val_cb)handle_iframe_info, &iframe_info);
            bandwidth = atoi(iframe_info.info.bandwidth);

            hls_stream_info_t *i_hls_stream = hls_new_stream(c, bandwidth, iframe_info.uri, url, c->headers);

            if (!i_hls_stream) {
                ret = AVERROR(ENOMEM);
                goto fail;
            }
            dynarray_add_noverify(&c->hls_iframe_stream, &c->hls_iframe_nb, i_hls_stream, &ret);
            if (ret < 0) {
                ret = AVERROR(ENOMEM);
                goto fail;
            }
            i_hls_stream->iframe_only = 1;
            av_log(c->parent, AV_LOG_DEBUG, "i-frame stream, uri:%s, program id:%s, bandwidth:%s\n",
                    iframe_info.uri, iframe_info.info.program_id, iframe_info.info.bandwidth);
        } else if (av_strstart(line, "#EXT-X-KEY:", &ptr)) {
            hls_key_info_t info;
            memset(&info, 0, sizeof(info));
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
        } else if (av_strstart(line, "#EXT-X-MEDIA-SEQUENCE:", &ptr)) {
            if (!hls) {
                hls = hlsNewHlsStream(c, 0, url, NULL, c->headers);
                if (!hls) {
                    ret = AVERROR(ENOMEM);
                    goto fail;
                }
            }

            hls->seg_list.hls_seg_start = atoi(ptr);
        } else if (av_strstart(line, "#EXT-X-PLAYLIST-TYPE:", &ptr)) {
            if (!hls) {
                hls = hlsNewHlsStream(c, 0, url, NULL, c->headers);
                if (!hls) {
                    ret = AVERROR(ENOMEM);
                    goto fail;
                }
            }

            if (strncmp(ptr, "EVENT", 5)) {
                hls->seg_list.play_list_type = PLAYLIST_TYPE_EVENT;
            } else if (strncmp(ptr, "VOD", 3)) {
                hls->seg_list.play_list_type = PLAYLIST_TYPE_VOD;
            }
        }
        else if (av_strstart(line, "#EXT-X-ENDLIST", &ptr)) {
            if (hls) {
                hls->seg_list.hls_finished = 1;
                av_log(s, AV_LOG_DEBUG, "total %d segment parsed\n", hls->seg_list.hls_segment_nb);
                int i;
                int64_t starttime = 0;
                for (i = 0; i < hls->seg_list.hls_segment_nb; i++) {
                    hls->seg_list.segments[i]->start_time = starttime;
                    starttime += hls->seg_list.segments[i]->total_time;
                }
            }
        } else if (av_strstart(line, "#EXTINF:", &ptr)) {
            is_segment = 1;
            duration   = atof(ptr) * 1000;
        } else if (av_strstart(line, "#EXT-X-BYTERANGE:", &ptr)) {
            is_byterange = 1;
            sscanf(ptr, "%d@%d", &byterange_len, &byterange_off);
//            av_log(s, AV_LOG_DEBUG, "byte range:%d@%d", byterange_len, byterange_off);
        } else if (av_strstart(line, "#EXT-X-DISCONTINUITY", NULL)) {
            discontinuity = 1;
        } else if (av_strstart(line, "#EXT-X-I-FRAMES-ONLY", NULL)) {
            iframe_only = 1;
        } else if (av_strstart(line, "#EXT-X-VERSION:", &ptr)) {
            c->hls_version = atoi(ptr);
            av_log(s, AV_LOG_INFO, "HLS playlist version:%d", c->hls_version);
        } else if (av_strstart(line, "#", NULL)) {
            continue;
        } else if (line[0]) {
            if (is_hls) {
                hls_stream_info_t *hls = hlsNewHlsStream(c, bandwidth, line, url, c->headers);

                if (!hls) {
                    ret = AVERROR(ENOMEM);
                    goto fail;
                }

                if(audio_codec || video_codec)
                {
                    hls->audio_codec = audio_codec;
                    hls->video_codec = video_codec;
                }
                if(!audio_codec && !video_codec)
                {
                    hls->audio_codec = 1;
                    hls->video_codec = 1;
                }

                if(!c->has_video_stream && hls->video_codec)
                {
                    c->has_video_stream = 1;
                }
                hls->iframe_only = iframe_only;
                if (aud) {
                    av_strlcpy(hls->groups[HLS_MEDIA_AUDIO], aud->group_id, sizeof(hls->groups[HLS_MEDIA_AUDIO]));
                }
                if (vid) {
                    av_strlcpy(hls->groups[HLS_MEDIA_VIDEO], vid->group_id, sizeof(hls->groups[HLS_MEDIA_VIDEO]));
                }
                if (sub) {
                    av_strlcpy(hls->groups[HLS_MEDIA_SUBTITLE], sub->group_id, sizeof(hls->groups[HLS_MEDIA_SUBTITLE]));
                }

                iframe_only = 0;
                is_hls = 0;
                bandwidth  = 0;
                audio_codec = 0;
                video_codec = 0;
            }

            if (is_segment) {
                int seq;
                int add_ret;
                hls_segment_t *seg;
                is_segment = 0;
                if (!hls) {
                    hls = hlsNewHlsStream(c, 0, url, NULL, c->headers);
                    if (!hls) {
                        ret = AVERROR(ENOMEM);
                        goto fail;
                    }
                }

                seg = av_mallocz(sizeof(hls_segment_t));
                if (!seg) {
                    ret = AVERROR(ENOMEM);
                    goto fail;
                }

                seg->total_time = duration;
                seg->key_type   = key_type;
                seg->discontinuity = discontinuity;
                discontinuity = 0;

                if (is_byterange) {
                    byterange_off = byterange_off == -1 ? last_byterange_off : byterange_off;
                    seg->byterange_len = byterange_len;
                    seg->byterange_off = byterange_off;
                    if (last_byterange_off != byterange_off) {
                        av_log(s, AV_LOG_WARNING, "byte range %d is not equal to expected %d",
                                byterange_off, last_byterange_off);
                    }
                    /* if next offset is not present, use last segment's byte range */
                    last_byterange_off = byterange_off + byterange_len;
                    is_byterange = 0;
                } else {
                    seg->byterange_len = -1;
                    seg->byterange_off = -1;
                }

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

                if (add_ret < 0){
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
    if (close_in) avio_close(in);
    if(hls)
    {
        /*
        //z00180556 set default playback HLS and segment
        c->cur_seg=c->hls_stream[0]->seg_list.segments[0];
        c->cur_hls=c->hls_stream[0];
        c->cur_stream_no = 0;
        c->cur_seg_no = 0;
        */
    }
    return ret;
}

static int hlsGetDefaultIndex(HLSContext *c, HLS_START_MODE_E mode)
{
    int default_video_bw_stream_nb = -1, i = 0;
    // d00198887 select the lowest or maxvideo bitrate stream to play
    // accord the mode
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
        av_log(c->parent, AV_LOG_INFO, "all stream is audio stream\n");
        default_video_bw_stream_nb = 0;
    }
    av_log(c->parent, AV_LOG_INFO, "default hls stream is %d\n", default_video_bw_stream_nb);
    return default_video_bw_stream_nb;
}

static int hlsSetDownLoadSpeed(HLSContext *c, unsigned int read_size, unsigned int read_time
    , int64_t starttime, int64_t endtime)
{
    int64_t download_interval = 0;
    AVFormatContext *ic = c->parent;
    HLSMasterContext *m = ic->priv_data;
    if (NULL == c)
    {
        return -1;
    }

    DownSpeed *downspeed = &(c->downspeed);
    DownNode *node = (DownNode *)av_mallocz(sizeof(DownNode));
    if(NULL == node)
    {
        return -1;
    }

    node->down_size = read_size;
    node->down_time = read_time;
    node->down_starttime = starttime;
    node->down_endtime = endtime;
    node->next = NULL;

    if(NULL == downspeed->head)
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

    while(SPEED_SIZE < downspeed->down_size && downspeed->head != downspeed->tail)
    {
        node = downspeed->head;
        downspeed->head = downspeed->head->next;
        downspeed->down_size -= node->down_size;
        downspeed->down_time -= node->down_time;
        av_free(node);
        node = NULL;
    }

    if (m->download_speed_collect_freq_ms > 0)
    {
        if (0 == c->last_get_speed_time)
        {
            c->last_get_speed_time = av_gettime();
        }

        if (m->download_speed_collect_freq_ms * 1000 > (av_gettime() - c->last_get_speed_time))
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
    AVFormatContext *s = (AVFormatContext *)c->parent;

    if ((c->appoint_id >= 0) && (c->appoint_id < c->hls_stream_nb) &&
            (c->hls_stream[c->appoint_id]->seg_list.hls_segment_nb > 0)){
        return c->appoint_id;
    }

    for(i = 0; i < c->hls_stream_nb; i++)
    {
        if(c->hls_stream[i]->bandwidth ==cur_bw)
        {
            cur_index=i;
        }
    }

    for(i = 0; i < c->hls_stream_nb; i++)
    {
        if((c->hls_stream[i]->bandwidth < net_bw) && (net_bw - c->hls_stream[i]->bandwidth < bw_diff)
                && (c->hls_stream[i]->seg_list.hls_segment_nb > 0))
        {
            bw_diff = net_bw - c->hls_stream[i]->bandwidth;
            target_index = i;
        }
    }

    if(-1 == target_index)
    {
        bw_diff = 0xFFFFFFFF;
        for(i = 0; i < c->hls_stream_nb; i++)
        {
            if(c->hls_stream[i]->bandwidth < bw_diff && (c->hls_stream[i]->seg_list.hls_segment_nb > 0))
            {
                bw_diff = c->hls_stream[i]->bandwidth;
                target_index = i;
            }
        }
    }

    target_bw = c->hls_stream[target_index]->bandwidth;
    bw_diff = 0xFFFFFFFF;
    if(cur_index != target_index)
    {
        if(target_bw < cur_bw)
        {
            /* bandwidth down, clear count */
            c->hls_bw_up_num = 1;
        }
        else if(target_bw > cur_bw)
        {
            if (c->hls_bw_up_num < c->hls_bw_up_num_max)
            {
                c->hls_bw_up_num++;
                av_log(NULL, AV_LOG_ERROR, "[%s:%d] try to swich up bandwidth from %d to %d %d times\n", __FILE_NAME__, __LINE__,cur_bw,target_bw,c->hls_bw_up_num);
                return cur_index;
            }
            else
            {
                for(i = 0; i < c->hls_stream_nb; i++)
                {
                    if((c->hls_stream[i]->bandwidth > cur_bw) && (c->hls_stream[i]->bandwidth - cur_bw < bw_diff)
                            && (c->hls_stream[i]->seg_list.hls_segment_nb > 0))
                    {
                        bw_diff = c->hls_stream[i]->bandwidth - cur_bw;
                        target_index = i;
                    }
                }
            }
        }
    }

    /* force min bandwidth */
    if (HLS_MODE_FAST == s->hls_start_mode && c->hls_force_min_bw_count < c->hls_force_min_bw_max)
    {
        bw_diff = 0xFFFFFFFF;
        for(i = 0; i < c->hls_stream_nb; i++)
        {
            if(c->hls_stream[i]->bandwidth < bw_diff && (c->hls_stream[i]->seg_list.hls_segment_nb > 0))
            {
                bw_diff = c->hls_stream[i]->bandwidth;
                target_index = i;
            }
        }

        av_log(NULL, AV_LOG_ERROR, "[%s:%d] force min bandwidth target_bw:%d\n", __FILE_NAME__, __LINE__,target_bw);
        return target_index;
    }

    av_log(NULL, AV_LOG_ERROR, "[%s:%d] net_bw =%llu  current: %d %d  target: %d %d \n",
        __FILE_NAME__, __LINE__, net_bw, cur_index, cur_bw, target_index,c->hls_stream[target_index]->bandwidth);
    return target_index;
}

static int hlsOpenSegment(HLSContext *c, hls_stream_info_t *hls)
{
    int pos;
    int cur = hls->seg_list.hls_seg_cur;
    int start = hls->seg_list.hls_seg_start;
    int ret = 0;
    AVDictionary *opts = NULL;
    char tmp[32];
    int64_t url_handle = 0;
    int use_customer_client = 1;

    pos = cur - start;
    //hls_segment_t *seg = hls->seg_list.segments[pos];
    hls_segment_t *seg=c->cur_seg;

    hls_fresh_headers(c);
    hls_set_option(c, &opts);

    if (c->parent->pb) {
        URLContext *uc = (URLContext *) c->parent->pb->opaque;
        if (uc->is_streamed && av_strlcmp(uc->prot->name, "cache", 5) == 0) {
            ret = av_opt_get_int(uc->priv_data, "url_handle", 0, &url_handle);
        }
    }

    if (url_handle && !c->disable_cache) {
        av_log(NULL, AV_LOG_INFO, "use hicache to open:%s", seg->url);
        snprintf(tmp, sizeof(tmp), "%lld", url_handle);
        ret = av_dict_set(&opts, "url_handle", tmp, 0);
        ret = av_dict_set(&opts, "use_cache", "1", 0);

        snprintf(tmp, sizeof(tmp), "%d", cur);
        av_dict_set(&opts, "segment", tmp, 0);
        av_dict_set(&opts, "url", seg->url, 0);
        if (cur + 1 < hls->seg_list.hls_segment_nb) {
            av_dict_set(&opts, "url_next",
                hls->seg_list.segments[cur + 1]->url, 0);
        }
    }
    if (seg->key_type == KEY_NONE) {
        av_log(NULL, AV_LOG_INFO, "[%s:%d] open segment noKey url=%s pos=%d hls->bandwidth=%d \n",
            __FILE_NAME__, __LINE__, seg->url, pos,c->cur_hls->bandwidth);

        ret = hls_open_h(&hls->seg_stream.input, seg->url, URL_RDONLY,&(c->interrupt_callback), &opts);
        av_dict_free(&opts);
        hls->seg_stream.offset = 0;
    } else if (seg->key_type == KEY_AES_128) {
        av_log(NULL, AV_LOG_ERROR, "[%s:%d] open segment with Keyurl=%s \n url=%s\n",
            __FILE_NAME__, __LINE__, seg->key, seg->url);

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

                if (ret == 0) {
                    ret = hls_read_complete(uc, offset, hls->seg_key.key, sizeof(hls->seg_key.key));
                    if (ret != sizeof(hls->seg_key.key)) {
                        av_log(NULL, AV_LOG_ERROR, "[%s:%d] Unable to read key file %s\n", __FILE_NAME__, __LINE__, seg->key);
                        av_log(NULL, AV_LOG_ERROR, "Unable to read key file %s\n", seg->key);
                    }
                    if(ret > 0)
                        offset += ret;
                    hls_close(uc);
                } else {
                    av_log(NULL, AV_LOG_ERROR, "[%s:%d] Unable to open key file %s\n", __FILE_NAME__, __LINE__, seg->key);
                    av_log(NULL, AV_LOG_ERROR, "Unable to open key file %s\n", seg->key);
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
                               hls->seg_key.key,
                               sizeof(hls->seg_key.key),
                               seg->iv,
                               sizeof(seg->iv));
        av_dict_free(&opts);
    }
    else
    {
        /* If reached here, invalid key type */
         return AVERROR(EINVAL);
    }
    if (ret == 0)
    {
        if (c->current_bw != c->cur_hls->bandwidth)
        {
            c->current_bw = c->cur_hls->bandwidth;
            url_errorcode_cb(c->interrupt_callback.opaque, c->current_bw, "hls_bw");
            av_log(NULL, AV_LOG_ERROR, "notify hls bw:%d", c->current_bw);
        }
        if (c->hls_force_min_bw_count < c->hls_force_min_bw_max)
        {
            c->hls_force_min_bw_count++;
        }
    }
    return ret;

}

static int hlsReadDataCb(void *opaque, uint8_t *buf, int buf_size)
{
    HLSContext *c = opaque;
    hls_stream_info_t *v = c->cur_hls;
    AVFormatContext *s = c->parent;
    int ret, i;
    int need_reload = 0;
    int open_fail = 0;

restart:
    if (!v->seg_stream.input) {
reload:
        ret = hls_reload_playlist(c, v, need_reload);
        if (ret < 0) {
            av_log(s, AV_LOG_DEBUG, "hls reload playlist failed\n");
            return ret;
        }
        #if 0  /* TODO: we should check discontinuity flag */
        /* discontinuity detected, return EOF to flush the demux */
        if (c->cur_seg->discontinuity) {
            if (c->discontinuity_status == DISCONTINUITY_EMPTY) {
                av_log(s, AV_LOG_DEBUG, "segment %d discontinuity detected", c->cur_seg_no);
                c->discontinuity_status = DISCONTINUITY_PADDING;
                return AVERROR_EOF;
            } else {
                /* clear discontinuity status for normal segment */
                c->discontinuity_status = DISCONTINUITY_EMPTY;
            }
        }
        #endif
        //c->read_time = 500*1000;
        int64_t open_start = av_gettime();
reopen:

        ret = hlsOpenSegment(c, v);

        int64_t open_end = av_gettime();
        if (ret < 0) {
            open_fail = 1;
            av_log(s, AV_LOG_ERROR, "%s %s %d ret = %d \n", __FILE__, __func__, __LINE__, ret);
            if (ff_check_interrupt(&c->interrupt_callback) || ret == AVERROR(ENOMEM))
            {
                av_log(s, AV_LOG_ERROR, "[%s:%d],return EOF, hls Open Segment = %d \n",__FILE__, __LINE__, ret);
                return AVERROR_EOF;
            }
            if (v->seg_list.hls_finished) { // Reload item for metadata stream
                if(ret == AVERROR(EAGAIN))
                {
                    usleep(100*1000);
                    goto reopen;
                }
#if 1
                if(c->hls_stream_nb > 1)
                {
                    c->cur_hls->has_read = 1;
                    unsigned int min_bw_diff = 0xffffffff;
                    int temp_stream_num = 0;
                    hls_stream_info_t *temp_stream = NULL;
                    for(i = 0; i < c->hls_stream_nb; i++)
                    {
                        if((FFABS((c->hls_stream[i]->bandwidth - c->cur_hls->bandwidth)) < min_bw_diff)
                                && c->hls_stream[i]->has_read == 0 && (c->hls_stream[i]->seg_list.hls_segment_nb > 0))
                        {
                            temp_stream = c->hls_stream[i];
                            temp_stream_num = i;
                            min_bw_diff = FFABS(c->hls_stream[i]->bandwidth - c->cur_hls->bandwidth);
                        }
                    }
                    if(NULL == temp_stream)
                    {
                        goto load_next;
                    }
                    else
                    {
                        c->cur_hls = temp_stream;
                        c->cur_seg = c->cur_hls->seg_list.segments[c->cur_seg_no];
                        c->cur_stream_no = temp_stream_num;
                    }
                }
                else
                {
                    goto load_next;
                }
#else
                usleep(500*1000);
                goto reopen;
#endif

                //usleep(500*1000);
                goto reload;
            } else { // Reload playlist for live stream
                v->seg_list.hls_seg_cur++;
                need_reload = 1;
                goto reload;
            }
        }
        else {
            if(v->seg_stream.input)
            {
                v->seg_stream.input->parent = s->pb;
                if(open_fail && !strncmp(v->seg_stream.input->filename, "http://", strlen("http://")))
                {
                    av_log(s, AV_LOG_ERROR, "%s,%d\n",__FILE__,__LINE__);
                    url_errorcode_cb(c->interrupt_callback.opaque, NETWORK_NORMAL, "http");
                    open_fail = 0;
                }
            }
            if(v->seg_key.IO_decrypt && v->seg_key.IO_decrypt->hd)
            {
                v->seg_key.IO_decrypt->hd->parent = s->pb;
                if(open_fail && !strncmp(v->seg_key.IO_decrypt->hd->filename, "http://", strlen("http://")))
                {
                    av_log(s, AV_LOG_ERROR, "%s,%d\n",__FILE__,__LINE__);
                    url_errorcode_cb(c->interrupt_callback.opaque, NETWORK_NORMAL, "http");
                    open_fail = 0;
                }
            }
        }
    }

    /**
     * byte range support
     * 1.check if the segment url equal to stream url
     * 2.change protocol position to segment offset
     * 3.change buf_size to segment size
     */
    const char* filename = NULL;
    if (v->seg_stream.input) {
        filename = v->seg_stream.input->filename;
    } else if (v->seg_key.IO_decrypt->hd) {
        filename = v->seg_key.IO_decrypt->hd->filename;
    }
    if (strncmp(c->cur_seg->url, filename, INITIAL_URL_SIZE) != 0 ) {
        av_log(s, AV_LOG_WARNING, "input url %s is not segment url:%s, try to open segment url\n",
                filename, c->cur_seg->url);
        hls_close_input(v);
        goto restart;
    }

    if (c->cur_seg->byterange_off >= 0) {

//        av_log(s, AV_LOG_DEBUG, "segment read pos:%lld, segment offset:%d\n",
//                v->seg_stream.offset, c->cur_seg->byterange_off);
        if (v->seg_stream.offset < c->cur_seg->byterange_off || (c->cur_seg->byterange_len > 0 &&
            v->seg_stream.offset > c->cur_seg->byterange_off + c->cur_seg->byterange_len)) {
            /* read position is ahead of segment offset */
            int64_t res = ffurl_seek(v->seg_stream.input, c->cur_seg->byterange_off, SEEK_SET);
            if (res != c->cur_seg->byterange_off) {
                av_log(s, AV_LOG_ERROR, "seek segment %d to %lld failed",
                        c->cur_seg_no, v->seg_stream.offset);
                return -1;
            }
            av_log(s, AV_LOG_DEBUG, "change stream %d segment %d pos from :%lld to %d\n",
                    c->cur_stream_no, c->cur_seg_no, v->seg_stream.offset, c->cur_seg->byterange_off);
            v->seg_stream.offset = c->cur_seg->byterange_off;
        }
    }
    if (c->cur_seg->byterange_len > 0) {
        int remain_size = c->cur_seg->byterange_len - (v->seg_stream.offset - c->cur_seg->byterange_off);
        buf_size = FFMIN(remain_size, buf_size);
        hls_log(s, AV_LOG_DEBUG, "read segment data size:%d, segment size:%d, remain size:%d\n",
                buf_size, c->cur_seg->byterange_len, remain_size);
    }

    int64_t  start = av_gettime();
    if (v->seg_key.IO_decrypt) {  // Encrypted stream
        if (!v->seg_stream.input)
            v->seg_stream.input = v->seg_key.IO_decrypt->hd;
        ret = hls_decrypt_read(v->seg_key.IO_decrypt, buf, buf_size);
    } else {  // Normal stream
        ret = hls_read(v->seg_stream.input, v->seg_stream.offset, buf, buf_size);
        if(ret >= 0) {
            hls_log(s, AV_LOG_DEBUG, "read offset:%lld, size:%d\n", v->seg_stream.offset, ret);
            v->seg_stream.offset += ret;
        }
    }

    int64_t  end = av_gettime();
    if (ret > 0)
    {
        unsigned int read_size = ret;
        unsigned int read_time = end - start;
        hlsSetDownLoadSpeed(c, read_size, read_time, start, end);
        if (v->seg_stream.offset == c->cur_seg->byterange_off + c->cur_seg->byterange_len) {
            /*segment read finished, switch to next segment*/
            if (hls_next_segment(c)) {
                return AVERROR_EOF;
            }
            if (c->cur_hls != v) {
                av_log(s, AV_LOG_DEBUG, "hls variant changed, close last input\n");
                hls_close_input(v);
            }
        }

        return ret;
    }
    if (ret < 0 && ret != AVERROR_EOF) {
        char err_buf[1024];
        av_strerror(ret, err_buf, sizeof(err_buf));
        av_log(s, AV_LOG_ERROR, "hls read data error:%s\n", err_buf);
        TRACE();
        return ret;
    }

    hls_close_input(v);

load_next:
    if (hls_next_segment(c)) {
        return AVERROR_EOF;
    }

//    hls_add_stream(c);
    v = c->cur_hls;
    if (!v->seg_list.needed) {
        av_log(s, AV_LOG_INFO, "No longer receiving variant %d\n",v->seg_list.hls_index);
        return AVERROR_EOF;
    }
    goto restart;
    return 0;
}

static int hlsRecheckDiscardFlags(HLSContext *c, int first)
{

    AVFormatContext *s = c->parent;
    int i, changed = 0;
    //disable checking because we do not used
#if 0
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
            hls->seg_list.hls_seg_cur = c->cur_seg_no;
            c->IO_pb.eof_reached = 0;
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
#endif
    return changed;

}

/*******************************************************************************
 * Implementation of HLS demuxer modules
 ******************************************************************************/
static int hls_probe(AVProbeData *p)
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

static int hlsGetProperty(AVFormatContext *s)
{
    int ret = 0;

#if defined (ANDROID_VERSION)
    HLSContext *c = NULL;
    const char *key_bw_up = "media.hls.bw.up.max";
    char value_bw_up[PROPERTY_VALUE_MAX];
    const char *key_bw_force = "media.hls.bw.force.max";
    char value_bw_force[PROPERTY_VALUE_MAX];

    if (NULL == s || NULL == s->priv_data)
    {
        return -1;
    }

    c = (HLSContext *)s->priv_data;

    memset(value_bw_up, 0, sizeof(value_bw_up));
    ret = property_get(key_bw_up, value_bw_up, "5");
    if (0 < ret)
    {
        c->hls_bw_up_num_max = atoi(value_bw_up);
        av_log(NULL, AV_LOG_ERROR, "[%s:%d] hls_bw_up_num_max:%d", __FUNCTION__, __LINE__,c->hls_bw_up_num_max);
    }

    memset(value_bw_force, 0, sizeof(value_bw_force));
    ret = property_get(key_bw_force, value_bw_force, "0");
    if (0 < ret)
    {
        c->hls_force_min_bw_max = atoi(value_bw_force);
        av_log(NULL, AV_LOG_ERROR, "[%s:%d] hls_force_min_bw_max:%d", __FUNCTION__, __LINE__,c->hls_force_min_bw_max);
    }
#endif

    return ret;
}

static int hls_read_header_main(HLSContext *c, AVFormatParameters *ap)
{
    int ret = 0, i, j, stream_offset = 0;
    AVFormatContext *s = c->parent;
    URLContext *uc = (URLContext *) s->pb->opaque;

    av_log(s, AV_LOG_DEBUG, "begin read hls header...\n");
    if (NULL != c)
        c->reset_appoint_id = 0;
    /* Get headers context */

    #if 0 //YLL, we get headers by call av_opt_get function
    if (uc && uc->headers) {
        av_log(NULL, AV_LOG_ERROR, "[%s:%d] headers=%s\n", __FILE_NAME__, __LINE__, uc->headers);
        if (c->headers) {
            av_free(c->headers);
            c->headers = NULL;
        }

        c->headers = av_strdup(uc->headers);
    }
    #endif

    if (uc && uc->is_streamed) {
        hls_fresh_headers(c);
    }

    if (uc) {
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
    c->current_bw = 0;
    c->hls_force_min_bw_count = 0;
    c->hls_force_min_bw_max = 0;
    c->hls_bw_up_num = 1;
    c->hls_bw_up_num_max = 0;

    hlsGetProperty(s);

    /* Get host name string */
    if (uc && uc->moved_url) {
        ret = hlsParseM3U8(c, uc->moved_url, NULL, s->pb);
    } else {
        ret = hlsParseM3U8(c, s->filename, NULL, s->pb);
    }

    if (ret < 0) {
        goto fail;
    }
    av_log(s, AV_LOG_DEBUG, "hls stream:%d, i-frame stream:%d, groups:%d\n",
            c->hls_stream_nb, c->hls_iframe_nb, c->group_array->hls_grp_nb);
    if (c->hls_stream_nb == 0) {
        av_log(NULL, AV_LOG_WARNING, "Empty playlist\n");
        ret = AVERROR_EOF;
        goto fail;
    }

    /* If the playlist only contained variants, parse each individual
     * variant playlist. */
    if (c->hls_stream_nb > 1 || c->hls_stream[0]->seg_list.hls_segment_nb == 0) {
        int valid_stream_nb = 0;
        for (i = 0; i < c->hls_stream_nb; i++) {
            hls_stream_info_t *hls = c->hls_stream[i];
            if ((ret = hlsParseM3U8(c, hls->url, hls, NULL)) < 0)
                continue;
            else {
                valid_stream_nb = 1;
                //break;    //zzg continue parse rest list
            }
            av_log(s, AV_LOG_DEBUG, "hls stream:%d have segments:%d, playlist type:%d, "
                    "max duration:%d, sequence:%d", i,
                    hls->seg_list.hls_segment_nb,
                    hls->seg_list.play_list_type,
                    hls->seg_list.hls_target_duration,
                    hls->seg_list.hls_seg_start);
        }

        if (valid_stream_nb == 0) {
            ret = AVERROR_EOF;
            goto fail;
        }
    }

    if(c->has_video_stream)
    {
        for(i = 0; i < c->hls_stream_nb; i++)
        {
            hls_stream_info_t *hls = c->hls_stream[i];
            if(!hls->video_codec)
            {
                av_log(c->parent, AV_LOG_DEBUG, "remove only audio stream\n");
                hlsFreeSegmentList(hls);
                hls_close_input(hls);
                av_free(hls);

                if(i == c->hls_stream_nb - 1)
                {
                    c->hls_stream[i] = NULL;
                    c->hls_stream_nb--;
                }
                else
                {
                    int j = i;
                    for(j = i; j < c->hls_stream_nb - 1; j++)
                    {
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

    /* If this isn't a live stream, calculate the total duration of the
     * stream. */
    if (c->hls_stream[0]->seg_list.hls_finished) {
        int64_t duration = 0;
        for (i = 0; i < c->hls_stream[0]->seg_list.hls_segment_nb; i++) {
            c->hls_stream[0]->seg_list.segments[i]->start_time = duration;
            duration += c->hls_stream[0]->seg_list.segments[i]->total_time;
        }
        s->duration = duration * (AV_TIME_BASE / 1000);
        s->is_live_stream = 0;
    } else {
        s->duration = 10 * AV_TIME_BASE; // If no duration, HiPlayer will continuously seek to 0
        s->is_live_stream = 1;
        c->disable_cache = 1;
    }

    for(i = 0; i < c->hls_stream_nb; i++)
    {
        c->hls_stream[i]->has_read = 0;
        c->hls_stream[i]->seg_list.hls_index = i;
    }

    if(c->hls_stream_nb && !strncmp("http", c->hls_stream[0]->seg_list.segments[0]->url, 4))
    {
        s->pb->downspeedable = 1;
        DownSpeed *downspeed = &(s->pb->downspeed);
        downspeed->down_size = 0;
        downspeed->down_time = 0;
        downspeed->speed = 0;
        downspeed->head = NULL;
        downspeed->tail = NULL;
    }
    else
    {
        s->pb->downspeedable = 0;
        DownSpeed *downspeed = &(s->pb->downspeed);
        downspeed->down_size = 0;
        downspeed->down_time = 0;
        downspeed->speed = 0;
        downspeed->head = NULL;
        downspeed->tail = NULL;
    }

    /* choice default variant and segment */
    c->appoint_id = -1;
    c->real_bw = 0;
    c->netdata_read_speed = 0;
    if(c->hls_stream_nb > 0){
        hls_set_appoint_id(c);
    }

    /* Open the demuxer for current variant */
    hls_stream_info_t *hls = c->cur_hls;

    char bitrate_str[20];

    /* Get headers context */
    if (c->headers)
    {
        hls->seg_stream.headers = av_strdup(c->headers);
    }

    hls->seg_list.needed = 1;

    /* If this is a live stream with more than 3 segments, start at the
     * third last segment. */
    hls->seg_list.hls_seg_cur = hls->seg_list.hls_seg_start;
    if (!hls->seg_list.hls_finished && hls->seg_list.hls_segment_nb > 3)
    {
        if(s->hls_live_start_num >= 1 && s->hls_live_start_num <= hls->seg_list.hls_segment_nb)
        {
            hls->seg_list.hls_seg_cur = hls->seg_list.hls_seg_start + s->hls_live_start_num - 1;
        }
        else
        {
            hls->seg_list.hls_seg_cur = hls->seg_list.hls_seg_start + hls->seg_list.hls_segment_nb - 3;
        }
        av_log(NULL, AV_LOG_ERROR,"[%s:%d]: hls live stream first play seg is %d \n", __FILE__, __LINE__, hls->seg_list.hls_seg_cur);
    }
    /**make resolution change available from 3716c-0.6.3 r41002 changed by duanqingpeng**/
    ret = hls_open_ctx(c, hls);
    if (ret < 0)
        goto fail;

    ret = hls_setup_info(c, hls);
    if (ret < 0)
        goto fail;

    if (hls_add_stream(c)) {
        av_log(s, AV_LOG_ERROR, "add hls stream failed\n");
        goto fail;
    }

    /* sync with demux context */
    s->ctx_flags = c->seg_demux.ctx->ctx_flags;

    /* if find stream number >= hls_find_stream_max_nb, avformat_find_stream_info could break quickly */
    s->hls_find_stream_max_nb = hls->audio_codec + hls->video_codec;

    c->stream_offset = 0;
    snprintf(bitrate_str, sizeof(bitrate_str), "%d", hls->bandwidth);

    c->first_packet = 1;
    c->read_size = 0;

    av_log(s, AV_LOG_DEBUG, "hls read header done\n");

    return 0;

fail:
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

static void hls_make_pts_continous(HLSContext *c, AVPacket *pkt)
{
    AVFormatContext *s = c->parent;
    hls_stream_info_t *hls = c->cur_hls;

    if (NULL == c->seg_demux.last_time_array)
        av_log(NULL, AV_LOG_ERROR, "[%s:%d], time_array invalid = 0x%x ", __FILE_NAME__, __LINE__, c->seg_demux.last_time_array);

    /* Cacaulate pts offset to make pts continuously */
    if (c->seg_demux.pkt.dts != AV_NOPTS_VALUE && c->seg_demux.pkt.stream_index < s->nb_streams) {
        int64_t diff;
        diff = c->seg_demux.last_time_array[c->seg_demux.pkt.stream_index]
            - (c->seg_demux.pkt.dts + c->seg_demux.pts_offset);

        if (llabs(diff) >= DISCONTINUE_MAX_TIME) {
            c->seg_demux.set_offset = 0;
            av_log(c->seg_demux.ctx, AV_LOG_ERROR, "DISCONTINUOUSLY last_time:%lld new pts:%lld new dts:%lld, diff:%lld\n",
                    c->seg_demux.last_time_array[c->seg_demux.pkt.stream_index],
                    c->seg_demux.pkt.pts,
                    c->seg_demux.pkt.dts,
                    diff);
        }

        if (!c->seg_demux.set_offset) {
            c->seg_demux.pts_offset = c->seg_demux.last_time_array[c->seg_demux.pkt.stream_index] - c->seg_demux.pkt.dts;
            c->seg_demux.set_offset = 1;
            av_log(c->seg_demux.ctx, AV_LOG_ERROR, "[%s:%d]: NEW PTS OFFSET(%lld)\n",
                    __FILE__,__LINE__,
                    c->seg_demux.pts_offset);
        }
    }

    if (c->seg_demux.set_offset) {
        /* Correct pts value */
        if (pkt->pts != AV_NOPTS_VALUE  && pkt->stream_index < s->nb_streams) {
            pkt->pts += c->seg_demux.pts_offset;
            if ((pkt->pts > c->seg_demux.last_time_array[c->seg_demux.pkt.stream_index])
                || hls->seg_list.hls_finished) {
                c->seg_demux.last_time_array[c->seg_demux.pkt.stream_index] = pkt->pts;
                hls_log(c->seg_demux.ctx, AV_LOG_DEBUG, "last time:%lld", pkt->pts);
            }

            pkt->pts += c->seg_demux.seek_offset;
            hls_log(c->seg_demux.ctx, AV_LOG_DEBUG, "read packet, pts:%lld, stream:%d\n",
                    pkt->pts, pkt->stream_index);
            if (pkt->pts < 0)
            {
                av_log(c->seg_demux.ctx, AV_LOG_ERROR, "[%s:%d]: invalid pts:%lld\n",
                    __FILE__,__LINE__,
                    pkt->pts);
                pkt->pts = AV_NOPTS_VALUE;
            }
        }

        /* Correct dts value */
        if (pkt->dts != AV_NOPTS_VALUE) {
            pkt->dts += c->seg_demux.pts_offset;
            pkt->dts += c->seg_demux.seek_offset;
        }
    }
}

static int hls_update_codec_info(HLSContext *c)
{
    AVFormatContext *hls = NULL, *seg = NULL;
    AVCodecContext *hls_codec = NULL, *seg_codec = NULL;
    int stream_index = 0;

    if (NULL == c)
    {
        av_log(NULL, AV_LOG_ERROR, "[%s:%d] hls context is null\n", __FILE_NAME__, __LINE__);
        return -1;
    }

    hls = c->parent;
    if (NULL == hls)
    {
        av_log(NULL, AV_LOG_ERROR, "[%s:%d] hls format context is null\n", __FILE_NAME__, __LINE__);
        return -1;
    }

    seg = c->seg_demux.ctx;
    if (NULL == seg)
    {
        av_log(hls, AV_LOG_ERROR, "[%s:%d] seg format context is null\n", __FILE_NAME__, __LINE__);
        return -1;
    }

    stream_index = c->seg_demux.pkt.stream_index;
    if (stream_index >= hls->nb_streams || stream_index >= seg->nb_streams)
    {
        av_log(hls, AV_LOG_ERROR, "[%s:%d] invalid stream_index:%d\n", __FILE_NAME__, __LINE__,stream_index);
        return -1;
    }

    hls_codec = hls->streams[stream_index]->codec;
    seg_codec = seg->streams[stream_index]->codec;
    if (NULL == hls_codec || NULL == seg_codec)
    {
        av_log(hls, AV_LOG_ERROR, "[%s:%d] codec is null\n", __FILE_NAME__, __LINE__);
        return -1;
    }

    /* update width and height of hls from segment */
    if (AVMEDIA_TYPE_VIDEO == hls_codec->codec_type && 0 >= hls_codec->width && 0 >= hls_codec->height)
    {
        if (0 < seg_codec->width && 0 < seg_codec->height)
        {
            hls_codec->width = seg_codec->width;
            hls_codec->height = seg_codec->height;
            av_log(hls, AV_LOG_INFO, "[%s:%d] update hls WxH:%dx%d\n", __FILE_NAME__, __LINE__,hls_codec->width,hls_codec->height);
        }
    }

    /* update codec_type of hls from segment */
    if (AVMEDIA_TYPE_UNKNOWN == hls_codec->codec_type && AVMEDIA_TYPE_UNKNOWN != seg_codec->codec_type)
    {
        hls_codec->codec_type = seg_codec->codec_type;
        av_log(hls, AV_LOG_INFO, "[%s:%d] update hls codec_type:%x of stream:%d\n", __FILE_NAME__, __LINE__,hls_codec->codec_type,stream_index);
    }

    /* update codec_id of hls from segment */
    if (CODEC_ID_NONE == hls_codec->codec_id && CODEC_ID_NONE != seg_codec->codec_id)
    {
        hls_codec->codec_id = seg_codec->codec_id;
        av_log(hls, AV_LOG_INFO, "[%s:%d] update hls codec_id:%x of stream:%d\n", __FILE_NAME__, __LINE__,hls_codec->codec_id,stream_index);
    }

    return 0;
}

static int hls_read_packet_main(HLSContext *c, AVPacket *pkt)
{
    AVFormatContext *s = c->parent;
    int ret, i, minvariant = -1;
    hls_stream_info_t *hls = c->cur_hls;

    if (c->hls_file_eof)
        return AVERROR_EOF;

    if (c->first_packet) {
        hlsRecheckDiscardFlags(c, 1);
        c->first_packet = 0;
    }

    if (c->reset_appoint_id)
    {
        hls_close_ctx(c);
        hls_set_appoint_id(c);
        ret = hls_open_ctx(c, c->cur_hls);
        if (ret < 0) {
            return ret;
        }
        c->reset_appoint_id = 0;
    }
    if (c->discontinuity_status == DISCONTINUITY_PROCESSING) {
        hls_add_stream(c);
        c->discontinuity_status = DISCONTINUITY_PROCESSED;
    }

start:
    c->segment_stream_eof = 0;

    /* Make sure we've got one buffered packet from each open variant
     * stream */
    ret = av_read_frame(c->seg_demux.ctx, &c->seg_demux.pkt);
    if (ret < 0 && c->discontinuity_status == DISCONTINUITY_PADDING) {
        if (hls_check_discontinuity(c)) {
            return ret;
        }
        if (c->discontinuity_status == DISCONTINUITY_PROCESSED) {
            av_log(s, AV_LOG_DEBUG, "discontinuity processed inner demux\n");
            goto start;
        } else if (c->discontinuity_status == DISCONTINUITY_PROCESSING) {
            /* return flush packet */
            av_init_packet(pkt);
            pkt->data = NULL;
            pkt->size = 0;
            pkt->flags |= AV_PKT_FLAG_FLUSH;
            return 0;
        }
    }
    if (ret < 0) {
        if (!url_feof(&c->IO_pb))
            return AVERROR_EOF;

        hlsResetPacket(&c->seg_demux.pkt);
        return ret;
    }

    /* Create new AVStreams for new stream */
    if (s->nb_streams < c->seg_demux.ctx->nb_streams)
    {
        int j = 0;
        for (j = s->nb_streams; j < c->seg_demux.ctx->nb_streams; j++) {
            AVStream *st = av_new_stream(s, j);
            if (!st) {
                ret = AVERROR(ENOMEM);
                return ret;
            }

            st->time_base = c->seg_demux.ctx->streams[j]->time_base;
            st->start_time = c->seg_demux.ctx->streams[j]->start_time;
            st->pts_wrap_bits = c->seg_demux.ctx->streams[j]->pts_wrap_bits;
            av_log(c->seg_demux.ctx, AV_LOG_DEBUG, "add new stream, time base:(%d/%d), start time:%lld pts_wrap_bits:%d\n",
                    st->time_base.num,
                    st->time_base.den,
                    st->start_time,
                    st->pts_wrap_bits);

            avcodec_copy_context(st->codec, c->seg_demux.ctx->streams[j]->codec);
            av_dict_copy(&st->metadata, c->seg_demux.ctx->streams[j]->metadata, 0);
        }
    }

    if (c->segment_stream_eof) {
        if (hlsRecheckDiscardFlags(c, 0))
            goto start;
    }
    /* If we got a packet, return it */
    *pkt = c->seg_demux.pkt;
    pkt->stream_index += c->stream_offset;

    hls_make_pts_continous(c, pkt);

    if (pkt->pts != AV_NOPTS_VALUE) {
        c->seg_demux.latest_read_pts = av_rescale_q(pkt->pts, c->seg_demux.ctx->streams[c->seg_demux.pkt.stream_index]->time_base,
                AV_TIME_BASE_Q);
    }

    (void)hls_update_codec_info(c);

    hlsResetPacket(&c->seg_demux.pkt);

    return 0;
}

static int hls_close_main(HLSContext *c)
{
    AVFormatContext *s = c->parent;

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
    hls_close_ctx(c);
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

    return 0;
}

static int hls_read_seek_main(HLSContext *c, int stream_index,
                               int64_t timestamp, int flags)
{
    AVFormatContext *s = c->parent;
    int i, j, ret;
    av_log(c->seg_demux.ctx, AV_LOG_DEBUG, "hls seek in, timestamp:%lld\n", timestamp);

    if ((flags & AVSEEK_FLAG_BYTE) || !c->hls_stream[0]->seg_list.hls_finished)
        return AVERROR(ENOSYS);

    timestamp = av_rescale_rnd(timestamp, 1, stream_index >= 0 ?
                               s->streams[stream_index]->time_base.den :
                               AV_TIME_BASE, flags & AVSEEK_FLAG_BACKWARD ?
                               AV_ROUND_DOWN : AV_ROUND_UP);
    ret = AVERROR(EIO);
    /* Reset reading */
    hls_stream_info_t *hls = c->cur_hls;
    int64_t pos = 0;

    hls_close_input(hls);
    av_free_packet(&c->seg_demux.pkt);
    hlsResetPacket(&c->seg_demux.pkt);

    c->hls_file_eof = 0;
    c->IO_pb.eof_reached = 0;
    c->IO_pb.pos = 0;
    c->IO_pb.buf_ptr = c->IO_pb.buf_end = c->IO_pb.buffer;
    timestamp *= 1000;
    av_log(c->seg_demux.ctx, AV_LOG_DEBUG, "hls seek in, timestamp:%lld\n", timestamp);
    /* Locate the segment that contains the target timestamp */
    if (hls_seek_segment(c, timestamp, flags)) {
        av_log(s, AV_LOG_ERROR, "hls seek current stream failed\n");
        return -1;
    }

    c->seg_demux.seek_offset = 90 * (c->cur_seg->start_time);

    av_log(c->seg_demux.ctx, AV_LOG_DEBUG, "next pts will start at (%lld) for seeking \n",
            c->seg_demux.seek_offset);
    ff_read_frame_flush(c->seg_demux.ctx);

    c->seg_demux.latest_read_pts = 0;
    return 0;
}

/*******************************************************************************
 * hls interface implementation
 *******************************************************************************/
static int hls_open_subtitle(HLSContext *c)
{
    int ret;
    AVInputFormat *in_fmt = av_find_input_format("webvtt");
    AVDictionary* opts = NULL;;
    URLContext* u = NULL;
    int j;
    for (j = 0; j < c->hls_stream_nb; j++) {
        hls_stream_info_t* hls = c->hls_stream[j];
        if (!hls->seg_list.hls_segment_nb) {
            ret = hlsParseM3U8(c, hls->url, hls, NULL);
            if (ret < 0) {
                av_log(c->parent, AV_LOG_ERROR, "parse hls playlist failed\n");
            }
            c->cur_seg = hls->seg_list.segments[0];
        }
        c->cur_hls = hls;
    }

    if (c->parent->pb) {
        u = c->parent->pb->opaque;
    }

    hls_fresh_headers(c);
    hls_set_option(c, &opts);

    av_log(c->parent, AV_LOG_DEBUG, "open subtitle:%s\n", c->cur_seg->url);
    ret = avformat_open_input(&c->seg_demux.ctx, c->cur_seg->url, in_fmt, &opts);
    av_dict_free(&opts);
    if (ret < 0) {
        av_log(c->seg_demux.ctx, AV_LOG_ERROR, "avformat open subtitle failed\n");
        return ret;
    }

    hls_group_t* grp = hls_get_group(c->group_array, c->ext_group_id);
    hls_ext_stream_info_t* x = hls_get_xstream(grp, c->ext_stream_name);
    if (x && c->seg_demux.ctx->nb_streams) {
        av_dict_set(&c->seg_demux.ctx->streams[c->seg_demux.ctx->nb_streams - 1]->metadata,
                "language", x->language, 0);
    }
    if (c->seg_demux.last_time_array) {
        av_freep(&c->seg_demux.last_time_array);
    }
    c->seg_demux.last_time_array = av_mallocz(c->seg_demux.ctx->nb_streams * sizeof(int64_t));
    return ret;
}

static void hls_close_subtitle(HLSContext *c)
{
    return avformat_close_input(&c->seg_demux.ctx);
}

static int hls_open_alternate(HLSContext* c)
{
    int j, ret;
    AVFormatContext *s = c->parent;
    for (j = 0; j < c->hls_stream_nb; j++) {
        hls_stream_info_t* hls = c->hls_stream[j];
        ret = hlsParseM3U8(c, hls->url, hls, NULL);//parse segment file
        if (ret < 0)
            av_log(s, AV_LOG_ERROR, "parse hls playlist failed\n");
    }
    hls_set_appoint_id(c);

    ret = hls_open_ctx(c, c->cur_hls);

    if (ret) {
        av_log(s, AV_LOG_ERROR, "hls open failed\n");
        return ret;
    }
    hls_group_t* grp = hls_get_group(c->group_array, c->ext_group_id);
    if (!grp) {
        av_log(s, AV_LOG_ERROR, "get group %s failed\n", c->ext_group_id);
        return -1;
    }
    hls_ext_stream_info_t* x = hls_get_xstream(grp, c->ext_stream_name);
    if (x && c->seg_demux.ctx->nb_streams) {
        av_dict_set(&c->seg_demux.ctx->streams[c->seg_demux.ctx->nb_streams - 1]->metadata,
                "language", x->language, 0);
    }
    return 0;
}

static void hls_close_alternate(HLSContext* c)
{
    return hls_close_ctx(c);
}

static int hls_read_seek_subtitle(HLSContext *c, int stream_index,
                               int64_t timestamp, int flags)
{
    int ret;

    hls_stream_info_t * hls = c->cur_hls;
    if (!c->seg_demux.ctx) {
        av_log(c->parent, AV_LOG_DEBUG, "subtitle not open, do not perform seek\n");
        return 0;
    }
    av_log(c->parent, AV_LOG_DEBUG, "seek subtitle, time %lld\n", timestamp);

    if (timestamp < c->cur_seg->start_time ||
        timestamp > c->cur_seg->start_time + c->cur_seg->total_time) {
        av_log(c->parent, AV_LOG_DEBUG, "seek outof current segment %d\n", c->cur_seg_no);
        if (hls_seek_segment(c, timestamp, flags)) {
            av_log(c->parent, AV_LOG_ERROR, "hls seek current stream failed\n");
            return -1;
        }
        c->seg_demux.seek_offset = timestamp;

        av_log(c->seg_demux.ctx, AV_LOG_DEBUG, "next pts will start at (%lld) for seeking \n",
                c->seg_demux.seek_offset);

        hls_close_subtitle(c);
        if (hls_open_subtitle(c)) {
            av_log(c->parent, AV_LOG_ERROR, "open subtitle conext failed\n");
            return -1;
        }
    }
    /**
     * Note: webvtt only support avformat_seek_file
     */
    int64_t ts = timestamp + c->seg_demux.ctx->streams[0]->start_time;
    int64_t min_ts = c->cur_seg->start_time + c->seg_demux.ctx->streams[0]->start_time;
    int64_t max_ts = c->cur_seg->start_time + c->cur_seg->total_time + c->seg_demux.ctx->streams[0]->start_time;
    av_log(c->parent, AV_LOG_DEBUG, "seek subtitle, time %lld < %lld < %lld\n",
            min_ts, ts, max_ts);
    ret = avformat_seek_file(c->seg_demux.ctx, 0, min_ts, ts, max_ts, flags);
    if (ret < 0) {
        av_log(c->seg_demux.ctx, AV_LOG_ERROR, "seek internal subtitle failed\n");
        return ret;
    }
    return 0;
}

static int hls_read_packet_subtitle(HLSContext *c, AVPacket *pkt)
{
    int ret = 0;
    int64_t start_time = 0;

retry:
    av_init_packet(&c->seg_demux.pkt);

    if (c->seg_demux.ctx)
    {
        ret = av_read_frame(c->seg_demux.ctx, &c->seg_demux.pkt);
    }
    else
    {
        ret = -1;
    }

    if (ret) {
        av_log(c->parent, AV_LOG_DEBUG, "subtitle segment read finished, open next\n");

        if (hls_reload_playlist(c, c->cur_hls, 0) < 0) {
            av_log(c->parent, AV_LOG_ERROR, "hls reload subtitle playlist failed\n");
            return AVERROR_EOF;
        }
        if (hls_next_segment(c)) {
            av_log(c->parent, AV_LOG_ERROR, "hls change to next subtitle segment failed\n");
            return AVERROR_EOF;
        }
        //open next subtitle segment
        hls_close_subtitle(c);
        if (hls_open_subtitle(c)) {
            av_log(c->parent, AV_LOG_ERROR, "open subtitle conext failed\n");
            return -1;
        }
        goto retry;
    }
    *pkt = c->seg_demux.pkt;
    pkt->stream_index += c->stream_offset;

    start_time = c->seg_demux.ctx->streams[c->seg_demux.pkt.stream_index]->start_time;
    if (start_time != AV_NOPTS_VALUE)
    {
        if (pkt->pts != AV_NOPTS_VALUE && pkt->pts >= start_time)
        {
            pkt->pts -= start_time;
        }

        if (pkt->dts != AV_NOPTS_VALUE && pkt->dts >= start_time)
        {
            pkt->dts -= start_time;
        }
    }

#if 0
    AVCodecContext *codec_ctx = c->seg_demux.ctx->streams[0]->codec;
    if (!codec_ctx->codec) {
        //when to close decoder?
        av_log(c->parent, AV_LOG_DEBUG, "open subtitle decoder\n");
        if(avcodec_open2(codec_ctx, avcodec_find_decoder(AV_CODEC_ID_WEBVTT), NULL) < 0) {
            av_log(c->parent, AV_LOG_ERROR, "open codec failed\n");
            return -1; // Could not open codec
        }
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
        }
    AVSubtitle sub;
    int got_subtitle = 0;
    avcodec_decode_subtitle2(codec_ctx, &sub, &got_subtitle, &c->seg_demux.pkt);
    if (got_subtitle) {
        pkt->data = strdup(sub.rects[0]->ass);
        pkt->size = strlen(sub.rects[0]->ass);
        av_free_packet(&c->seg_demux.pkt);
        av_log(c->seg_demux.ctx, AV_LOG_DEBUG, "SUBTITLE:%s\n", pkt->data);
    }
    avsubtitle_free(&sub);
#endif
    if (pkt->pts != AV_NOPTS_VALUE) {
        c->seg_demux.latest_read_pts =
                av_rescale_q(pkt->pts, c->seg_demux.ctx->streams[c->seg_demux.pkt.stream_index]->time_base,
                        AV_TIME_BASE_Q);
    }

    hlsResetPacket(&c->seg_demux.pkt);
    return ret;
}

static int (*hls_read_header_fn[HLS_MEDIA_BUTT])(HLSContext *c) = {
        hls_open_alternate,
        hls_open_alternate,
        hls_open_subtitle,
};

static int (*hls_read_seek_fn[HLS_MEDIA_BUTT])(HLSContext *c, int stream_index,
        int64_t timestamp, int flags) = {
        hls_read_seek_main,
        hls_read_seek_main,
        hls_read_seek_subtitle,
};

static int (*hls_read_packet_fn[HLS_MEDIA_BUTT])(HLSContext *c, AVPacket *pkt) = {
        hls_read_packet_main,
        hls_read_packet_main,
        hls_read_packet_subtitle,
};

static void (*hls_read_close_fn[HLS_MEDIA_BUTT])(HLSContext *c) = {
        hls_close_alternate,
        hls_close_alternate,
        hls_close_subtitle,
};

static inline void hls_select_stream(HLSMasterContext *m, int index, int type)
{
    int i;
    int ret;
    HLSContext *tmp = NULL;
    for (i = 0; i < m->alternate_nb[type]; i++) {
        tmp = m->alternate_ctx[type][i];
        if (index == tmp->stream_offset) {
            if (!tmp->seg_demux.ctx) {
                av_log(tmp->parent, AV_LOG_DEBUG, "context does not open yet, try to open\n");
                ret = hls_read_header_fn[type](tmp);
                if (ret) {
                    av_log(tmp->parent, AV_LOG_ERROR, "open context failed");
                    return;
                }
            }
            int64_t ts = av_rescale_q(m->stream_played_time,
                    (AVRational){1, 1000},
                    tmp->seg_demux.ctx->streams[0]->time_base);
            av_log(tmp->seg_demux.ctx, AV_LOG_DEBUG, "select stream, seek to %lld", ts);
            ret = hls_read_seek_fn[type](tmp, 0, ts, 0);
            if (ret) {
                av_log(tmp->parent, AV_LOG_ERROR, " hls seek stream failed\n");
            }
            tmp->seg_demux.latest_read_pts = 0;//make sure read at next time
        } else {
            tmp->seg_demux.latest_read_pts = INT64_MAX;
            hls_read_close_fn[type](tmp);
        }
    }
}

static void hls_select_streams(HLSMasterContext *m)
{
    //disable audio switch
//    if (m->aud_stream_index != -1) {
//        hls_select_stream(m, m->aud_stream_index, HLS_MEDIA_AUDIO);
//    }

    if (m->sub_stream_index != -1) {
        hls_select_stream(m, m->sub_stream_index, HLS_MEDIA_SUBTITLE);
    }
}

/**
 * if there are multiple audio variants in one context,
 * switch between those variant according EXT-X-STREAM-INF's group id
 */
static void hls_select_alternate_variant(HLSMasterContext *m)
{
    HLSContext* c = &m->variant_ctx;
    int i, j;
    const char* audio_grp_id = NULL;

    if (!c->cur_hls || !c->cur_hls->groups[HLS_MEDIA_AUDIO][0]) {
        hls_log(c->parent, AV_LOG_ERROR, "current hls variant is empty\n");
        return;
    }

    audio_grp_id = c->cur_hls->groups[HLS_MEDIA_AUDIO];
    for (i = 0; i < m->alternate_nb[HLS_MEDIA_AUDIO]; i++) {
        HLSContext* tmp = m->alternate_ctx[HLS_MEDIA_AUDIO][i];
        if (1 == tmp->hls_stream_nb) {
            /* only one variant, no need to switch */
            continue;
        }
        for (j = 0; j < tmp->hls_stream_nb; j++) {
            hls_ext_stream_info_t* x = (hls_ext_stream_info_t*) tmp->hls_stream[j];
            if (!av_strlcmp(x->group_id, audio_grp_id, sizeof(x->group_id))) {
                /* change variant according EXT-X-STREAM-INF group id */
                if (tmp->appoint_id != j) {
                    av_log(tmp->seg_demux.ctx, AV_LOG_DEBUG, "change appoint id to %d\n", j);
                    tmp->appoint_id = j;
                }
                break;
            }
            hls_log(tmp->seg_demux.ctx, AV_LOG_DEBUG, "stream group:%s, expected group id:%s\n",
                    x->group_id, audio_grp_id);
        }
    }
}

static int hls_read_packet(AVFormatContext *s, AVPacket *pkt)
{
    HLSMasterContext *m = s->priv_data;
    HLSContext* c = &m->variant_ctx;
    HLSContext *tmp = NULL;
    int i,j;
    int ret;
    int64_t last_time = hls_get_lasttime(c);
    int ctx_type = 0;
#ifdef DELAY_OPENING
    /* stream id change? */
    if (m->stream_played_time != AV_NOPTS_VALUE && m->is_vod) {
        av_log(s, AV_LOG_DEBUG, "select stream,vid:%d,aid:%d,sid:%d, time:%lld",
                m->vid_stream_index,
                m->aud_stream_index,
                m->sub_stream_index,
                m->stream_played_time);
        hls_select_streams(m);
        m->stream_played_time = AV_NOPTS_VALUE;
    }
#endif
    /* tell is variant changed in main stream */
    hls_select_alternate_variant(m);

    /* Find best variant to read */
    for (i = 0; i < HLS_MEDIA_BUTT; i++) {
        if (!m->alternate_ctx[i])
            continue;
        for (j = 0; j < m->alternate_nb[i]; j++) {
            tmp = m->alternate_ctx[i][j];
            int64_t last_time_tmp = hls_get_lasttime(tmp);

            if (last_time_tmp < last_time) {
                hls_log(s, AV_LOG_DEBUG, "##select alternate stream [%d %d], %lld %lld\n",
                                    i, j, last_time_tmp, last_time);
                c = tmp;
                last_time = last_time_tmp;
                ctx_type = i;
            }
        }
    }
    ret = hls_read_packet_fn[ctx_type](c, pkt);
//    av_log(s, AV_LOG_DEBUG, "read packet, index:%d, pts:%lld, type:%s, dur:%d\n",
//            pkt->stream_index, pkt->pts, s_media_type_desc[ctx_type], pkt->duration);

    return ret;
}

static int hls_read_header(AVFormatContext *s, AVFormatParameters *ap)
{
    int ret = -1;
    int i, j;
    HLSMasterContext *m = s->priv_data;
    HLSContext* c = &m->variant_ctx;
    HLSContext* tmp = NULL;
    hls_ext_stream_info_t* x_stream = NULL;
    hls_group_array_t* g = &m->groups;

    c->parent = s;
    c->group_array = g;
    ret = hls_read_header_main(c, ap);
    if (ret) {
        return ret;
    }
    m->is_vod = c->cur_hls->seg_list.hls_finished;

    av_log(s, AV_LOG_DEBUG, "find alternate streams\n");
    for (i = 0; i < g->hls_grp_nb; i++) {
        for (j = 0; j < g->hls_groups[i]->ext_stream_nb; j++) {
            x_stream = g->hls_groups[i]->ext_streams[j];
            if (x_stream->media_type > HLS_MEDIA_BUTT) {
                av_log(s, AV_LOG_ERROR, "Invalid stream type:%d, skiped\n", x_stream->media_type);
                continue;
            }
            av_log(s, AV_LOG_DEBUG, "add alternate stream, group id:%s, type:%d, name:%s\n",
                    c->group_array->hls_groups[i]->group_id, x_stream->media_type, x_stream->name);
            if (!x_stream->uri[0]) {
                av_log(s, AV_LOG_INFO, "This stream is contained in master stream\n");
                continue;
            }
            tmp = hls_get_by_xstream(m, x_stream);
            if (!tmp) {
                tmp = av_mallocz(sizeof(HLSContext));
                if (!tmp) {
                    ret = AVERROR(ENOMEM);
                    goto fail;
                }
                tmp->parent = s;
                tmp->group_array = g;
                tmp->file_name = m->variant_ctx.file_name;
                tmp->disable_cache = 1;//do not use cache for alternate streaming
                av_strlcpy(tmp->ext_group_id, x_stream->group_id, sizeof(tmp->ext_group_id));
                dynarray_add_noverify(&m->alternate_ctx[x_stream->media_type],
                        &m->alternate_nb[x_stream->media_type], tmp, &ret);
                if (ret) {
                    ret = AVERROR(ENOMEM);
                    goto fail;
                }
            }
            av_strlcpy(tmp->ext_stream_name, x_stream->name, sizeof(tmp->ext_stream_name));
            dynarray_add_noverify(&tmp->hls_stream,
                    &tmp->hls_stream_nb,
                    &x_stream->stream_info, &ret);
            if (ret) {
                ret = AVERROR(ENOMEM);
                goto fail;
            }
        }
    }
    av_log(s, AV_LOG_DEBUG, "Alternate stream, vid nb:%d, audio nb:%d, sub nb:%d\n",
            m->alternate_nb[HLS_MEDIA_VIDEO],
            m->alternate_nb[HLS_MEDIA_AUDIO],
            m->alternate_nb[HLS_MEDIA_SUBTITLE]);

    /* open all alternate audio stream */
    i = HLS_MEDIA_AUDIO;
    for (j = 0; j < m->alternate_nb[i]; j++) {
        c = m->alternate_ctx[i][j];

        ret = hls_read_header_fn[i](c);
        if (ret) {
            goto fail;
        }
        c->stream_offset = s->nb_streams;
        hls_add_stream(c);
        av_log(s, AV_LOG_DEBUG, "Open alternate audio, type:%s, %d, stream nb:%d, offset:%d\n",
                s_media_type_desc[i], j, c->hls_stream_nb, c->stream_offset);
    }
    /* do not open alternate video stream, just add stream info here */
    i = HLS_MEDIA_VIDEO;
    for (j = 0; j < m->alternate_nb[i]; j++) {
        c = m->alternate_ctx[i][j];
        c->stream_offset = s->nb_streams;
        hls_add_stream(c);
        av_log(s, AV_LOG_DEBUG, "Open alternate video, type:%s, %d, stream nb:%d, offset:%d\n",
                s_media_type_desc[i], j, c->hls_stream_nb, c->stream_offset);
    }
    /* only open first alternate subtitle */
    i = HLS_MEDIA_SUBTITLE;
    for (j = 0; j < m->alternate_nb[i]; j++) {
        c = m->alternate_ctx[i][j];

        if (j == 0) {
            ret = hls_read_header_fn[i](c);
            if (ret) {
                goto fail;
            }
        }

        c->stream_offset = s->nb_streams;
        hls_add_stream(c);
        av_log(s, AV_LOG_DEBUG, "Open alternate subtitle, type:%s, %d, stream nb:%d, offset:%d\n",
                s_media_type_desc[i], j, c->hls_stream_nb, c->stream_offset);
        hls_group_t* grp = hls_get_group(c->group_array, c->ext_group_id);
        if (grp && !grp->has_codec) {
            grp->has_codec = 1;
            grp->stream_index = c->stream_offset;
        }
    }

    //set default stream index at first time
    m->vid_stream_index = m->aud_stream_index = m->sub_stream_index = -1;
    for (i = 0; i < s->nb_streams; i++) {
        if (m->vid_stream_index == -1) {
            if (s->streams[i]->codec &&
                    s->streams[i]->codec->codec_type == AVMEDIA_TYPE_VIDEO) {
                m->vid_stream_index = i;
            }
        }

        if (m->aud_stream_index == -1) {
            if (s->streams[i]->codec &&
                    s->streams[i]->codec->codec_type == AVMEDIA_TYPE_AUDIO) {
                m->aud_stream_index = i;
            }
        }

        if (m->sub_stream_index == -1) {
            if (s->streams[i]->codec &&
                    s->streams[i]->codec->codec_type == AVMEDIA_TYPE_SUBTITLE) {
                m->sub_stream_index = i;
            }
        }
    }
    av_log(s, AV_LOG_DEBUG, "default stream index:%d %d %d\n",
            m->vid_stream_index, m->aud_stream_index, m->sub_stream_index);
#ifdef DELAY_OPENING
    if (m->is_vod) {
        hls_select_streams(m);
    }
#endif
#if 0
    c = m->alternate_ctx[HLS_MEDIA_SUBTITLE][0];
//    c = m->alternate_ctx[HLS_MEDIA_AUDIO][0];
//    c = &m->variant_ctx;
    AVPacket pkt;
//    hls_read_seek_main(c, 0, 10*60*90*1000, 0);
    for (i = 0; i < 100; i++) {
//    while (1) {
        if (ff_check_interrupt(&c->interrupt_callback))
            return -1;
        av_init_packet(&pkt);
        ret = hls_read_packet_subtitle(c, &pkt);
//        ret = hls_read_packet_main(c, &pkt);
        if (ret) {
            av_log(s, AV_LOG_ERROR, "read packet failed");
            break;
        }
        av_log(c->seg_demux.ctx, AV_LOG_DEBUG, "Read Packet, index:%d, pts:%lld, dts:%lld, size:%d, dur:%d\n",
                pkt.stream_index, pkt.pts, pkt.dts, pkt.size, pkt.duration);
        if (pkt.pts < 0) {
            ABORT();
        }
//        static FILE* file = NULL;
//        if (!file) file = fopen("/sdcard/aud.aac", "wb+");
//        if (file) {
//            fwrite(pkt.data, pkt.size, 1, file);
//        }
        av_free_packet(&pkt);
    }
    ABORT();
#endif
    return ret;
fail:
    //todo: release ctx here
    return ret;
}

static int hls_switch_min_bandwidth(HLSContext *c)
{
    hls_stream_info_t *hls_next = NULL;
    int stream_num = 0;
    int target_bw = 0x7FFFFFFF;
    int i = 0;
    AVFormatContext *s = NULL;

    if (NULL == c || 0 > c->cur_seg_no)
    {
        av_log(NULL, AV_LOG_ERROR, "[%s:%d] invalid param\n", __FUNCTION__, __LINE__);
        return -1;
    }

    s = (AVFormatContext *)c->parent;

    if ((s && HLS_MODE_FAST != s->hls_start_mode) || 0 >= c->hls_force_min_bw_max)
    {
        av_log(NULL, AV_LOG_ERROR, "[%s:%d] hls_start_mode:%d, hls_force_min_bw_max:%d\n",
            __FUNCTION__, __LINE__,s->hls_start_mode, c->hls_force_min_bw_max);
        return 0;
    }

    av_log(NULL, AV_LOG_ERROR, "[%s:%d] switch min bandwidth\n", __FUNCTION__, __LINE__);

    for (i = 0; i < c->hls_stream_nb; i++)
    {
        if (target_bw > c->hls_stream[i]->bandwidth && 0 < c->hls_stream[i]->seg_list.hls_segment_nb)
        {
            target_bw = c->hls_stream[i]->bandwidth;
            stream_num = i;
        }
    }

    hls_next = c->hls_stream[stream_num];

    if (c->cur_seg_no >= hls_next->seg_list.hls_segment_nb)
    {
        c->cur_seg_no = hls_next->seg_list.hls_segment_nb - 1;
    }

    c->cur_seg = hls_next->seg_list.segments[c->cur_seg_no];
    c->cur_hls = hls_next;
    c->cur_stream_no = stream_num;

    av_log(c->parent, AV_LOG_ERROR, "switch to stream:%d segment %d\n", stream_num, c->cur_hls->seg_list.hls_seg_cur);

    return 0;
}

static int hls_read_seek(AVFormatContext *s, int stream_index,
                               int64_t timestamp, int flags)
{
    av_log(s, AV_LOG_DEBUG, "Seeking, index:%d, ts:%lld", stream_index, timestamp);
    HLSMasterContext *m = s->priv_data;
    HLSContext* c = &m->variant_ctx;
    int64_t ts = -1;
    int i, j;
    int ret;
    ret = hls_read_seek_main(c, stream_index, timestamp, flags);
    if (ret) {
        av_log(s, AV_LOG_ERROR, "hls seek failed\n");
        return ret;
    }
    for (i = 0; i < HLS_MEDIA_BUTT; i++) {
        if (!m->alternate_ctx[i])
            continue;

        for (j = 0; j < m->alternate_nb[i]; j++) {
            c = m->alternate_ctx[i][j];
            if (c->seg_demux.ctx) {
                ts = av_rescale_q(timestamp,
                        s->streams[stream_index]->time_base,
                        c->seg_demux.ctx->streams[0]->time_base);
                ret = hls_read_seek_fn[i](c, 0, ts, flags);
                if (ret) {
                    av_log(s, AV_LOG_ERROR, "hls seek failed\n");
                    return ret;
                }
                c->seg_demux.latest_read_pts = 0;
            }
        }
    }

    (void)hls_switch_min_bandwidth(c);
    c->hls_force_min_bw_count = 0;
    c->hls_bw_up_num = 1;
    return ret;
}

static int hls_read_close(AVFormatContext *s)
{
    HLSMasterContext *m = s->priv_data;
    HLSContext* c = NULL;
    int ret, i, j;

    for (i = 0; i < HLS_MEDIA_BUTT; i++) {
        if (!m->alternate_ctx[i])
            continue;
        for (j = 0; j < m->alternate_nb[i]; j++) {
            c = m->alternate_ctx[i][j];
            ret = hls_close_main(c);
            if (ret) {
                av_log(s, AV_LOG_ERROR, "hls close failed\n");
            }
            av_freep(&m->alternate_ctx[i][j]);
        }
        av_freep(&m->alternate_ctx[i]);
    }
    ret = hls_close_main(&m->variant_ctx);
    if (ret) {
        av_log(s, AV_LOG_ERROR, "hls close failed\n");
    }
    hls_free_group(&m->groups);
    return ret;
}
/*******************************************************************************
 * HLS demuxer module descriptor
 ******************************************************************************/
AVInputFormat ff_hls_demuxer = {
    .name           = "hls",
    .long_name      = NULL,
    .priv_data_size = sizeof(HLSMasterContext),
    .read_probe     = hls_probe,
    .read_header    = hls_read_header,
    .read_packet    = hls_read_packet,
    .read_close     = hls_read_close,
    .read_seek      = hls_read_seek,
    .priv_class     = &hls_class,
};
