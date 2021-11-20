/*
 * HTTP authentication
 * Copyright (c) 2010 Martin Storsjo
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

#ifndef AVFORMAT_HTTPAUTH_H
#define AVFORMAT_HTTPAUTH_H

#include "internal.h"
#include "url.h"

/**
 * Authentication types, ordered from weakest to strongest.
 */
typedef enum HTTPAuthType {
    HTTP_AUTH_NONE = 0,    /**< No authentication specified */
    HTTP_AUTH_BASIC,       /**< HTTP 1.0 Basic auth from RFC 1945
                             *  (also in RFC 2617) */
    HTTP_AUTH_DIGEST,      /**< HTTP 1.1 Digest auth from RFC 2617 */
} HTTPAuthType;

typedef struct {
    char nonce[300];       /**< Server specified nonce */
    char algorithm[10];    /**< Server specified digest algorithm */
    char qop[30];          /**< Quality of protection, containing the one
                             *  that we've chosen to use, from the
                             *  alternatives that the server offered. */
    char opaque[300];      /**< A server-specified string that should be
                             *  included in authentication responses, not
                             *  included in the actual digest calculation. */
    int nc;                /**< Nonce count, the number of earlier replies
                             *  where this particular nonce has been used. */
} DigestParams;

/**
 * HTTP Authentication state structure. Must be zero-initialized
 * before used with the functions below.
 */
typedef struct {
    /**
     * The currently chosen auth type.
     */
    HTTPAuthType auth_type;
    /**
     * Authentication realm
     */
    char realm[200];
    /**
     * The parameters specifiec to digest authentication.
     */
    DigestParams digest_params;
} HTTPAuthState;

#define BUFFER_SIZE 4096

typedef struct {
    const AVClass *class;
    URLContext *hd;
    unsigned char buffer[BUFFER_SIZE], *buf_ptr, *buf_end;
    int line_count;
    int http_code;
    int64_t chunksize;      /**< Used if "Transfer-Encoding: chunked" otherwise -1. */
    char *user_agent;
    char *referer;
    int64_t off, end, discard_off, filesize;
    int one_connect_limited_size;
    char location[MAX_URL_SIZE];
    HTTPAuthState auth_state;
    HTTPAuthState proxy_auth_state;
    char *headers;
    char *cookies;          ///< holds newline (\n) delimited Set-Cookie header field values (without the "Set-Cookie: " field name)
    int willclose;          /**< Set if the server correctly handles Connection: close and will close the connection after feeding us the content. */
    int chunked_post;
    int seek_flag;
    int change_seek_flag; //h00186041 change seek_flag or not
    int errtag;
    int seekable;
    int reconnect; //h00186041, used for network connect or reconnect status in sohu video
    int willtry; //h00186041, used for AD/DNS hijacked
    int is_chunks_finished;
    int has_reconnect;  // 0 for use http reconnect function, 1 for use upper protocol reconnect function
    int hls_connection; // 0 not hls connection,1 is hls connection
    int multiple_requests;  /**< A flag which indicates if we use persistent connections. */
    uint8_t *post_data;
    int post_datalen;// make sure post_datalen is next to post_data in HTTPContext, so that av_opt_set_bin can set its value
    char* not_support_byte_range;
    int download_speed_collect_freq_ms;
    int download_size_once; //Bytes
    int64_t last_get_speed_time;
    char *cdn_error;
    char *traceId;
} HTTPContext;

void ff_http_auth_handle_header(HTTPAuthState *state, const char *key,
                                const char *value);
char *ff_http_auth_create_response(HTTPAuthState *state, const char *auth,
                                   const char *path, const char *method);

/**
 * Initialize the authentication state based on another HTTP URLContext.
 * This can be used to pre-initialize the authentication parameters if
 * they are known beforehand, to avoid having to do an initial failing
 * request just to get the parameters.
 *
 * @param dest URL context whose authentication state gets updated
 * @param src URL context whose authentication state gets copied
 */
void ff_http_init_auth_state(URLContext *dest, const URLContext *src);

#endif /* AVFORMAT_HTTPAUTH_H */
