/*
 * svr_allformat.c
 *
 *  Created on: 2014Äê6ÔÂ23ÈÕ
 *      Author: z00187490
 */
#include <pthread.h>
#include "config.h"
#include <libavformat/avformat.h>

static pthread_once_t  s_once = PTHREAD_ONCE_INIT;
static void init()
{
    av_register_all();
    avformat_network_init();
#ifndef UDF_NOTSUPPORT
//    extern AVInputFormat svr_iso_demuxer;
//    av_register_input_format(&svr_iso_demuxer);//bluray iso demuxer
#endif
    extern AVInputFormat ff_hls_demuxer;
    av_register_input_format(&ff_hls_demuxer);//hls demuxer

#if(CONFIG_RTP_MUXER)
    extern URLProtocol ff_rtp_muxer;
    av_register_output_format(&ff_rtp_muxer);
#endif

#if(CONFIG_RTP_DEMUXER)
    extern URLProtocol ff_rtp_demuxer;
    av_register_input_format(&ff_rtp_demuxer);
#endif

#if(CONFIG_RTSP_MUXER)
    extern URLProtocol ff_rtsp_muxer;
    av_register_output_format(&ff_rtsp_muxer);
#endif

#if(CONFIG_RTSP_DEMUXER)
    extern URLProtocol ff_rtsp_demuxer;
    av_register_input_format(&ff_rtsp_demuxer);
#endif

#if(CONFIG_SDP_DEMUXER)
    extern URLProtocol ff_sdp_demuxer;
    av_register_input_format(&ff_sdp_demuxer);
#endif

#if CONFIG_RTPDEC
    av_register_rtp_dynamic_payload_handlers();
    av_register_rdt_dynamic_payload_handlers();
#endif

#ifndef UDF_NOTSUPPORT
    extern URLProtocol svr_udf_protocol;
    av_register_protocol2(&svr_udf_protocol, sizeof(svr_udf_protocol));
#endif

    extern URLProtocol ff_http_protocol;
    av_register_protocol2(&ff_http_protocol, sizeof(ff_http_protocol));
#ifndef HTTPSEX_NOTSUPPORT
    extern URLProtocol ff_httpsex_protocol;
    av_register_protocol2(&ff_httpsex_protocol, sizeof(ff_httpsex_protocol));
#endif

#ifndef HTTPPROXY_NOTSUPPORT
    extern URLProtocol ff_httpproxy_protocol;
    av_register_protocol2(&ff_httpproxy_protocol, sizeof(ff_httpproxy_protocol));
#endif

    extern URLProtocol ff_tcp_protocol;
    av_register_protocol2(&ff_tcp_protocol, sizeof(ff_tcp_protocol));

#ifndef LPCMHTTP_NOTSUPPORT
    extern URLProtocol ff_lpcmhttp_protocol;
    av_register_protocol2(&ff_lpcmhttp_protocol, sizeof(ff_lpcmhttp_protocol));
#endif

#if defined (ANDROID_VERSION)
    extern URLProtocol ff_hirtp_protocol;
    av_register_protocol2(&ff_hirtp_protocol, sizeof(ff_hirtp_protocol));
    
    extern URLProtocol ff_rtpfec_protocol;
    av_register_protocol2(&ff_rtpfec_protocol, sizeof(ff_rtpfec_protocol));
#endif

#if(CONFIG_RTP_PROTOCOL)
    extern URLProtocol ff_rtp_protocol;
    av_register_protocol2(&ff_rtp_protocol, sizeof(ff_rtp_protocol));
#endif
#if(CONFIG_UDP_PROTOCOL)
    extern URLProtocol ff_udp_protocol;
    av_register_protocol2(&ff_udp_protocol, sizeof(ff_udp_protocol));
#endif

#if defined (ANDROID_VERSION)
    extern URLProtocol ff_ftp_protocol;
    av_register_protocol2(&ff_ftp_protocol, sizeof(ff_ftp_protocol));
#endif
    //av_log_set_callback(svr_ffmpeg_callback);
}

void svr_register_allformat()
{
    pthread_once(&s_once, init);
}
