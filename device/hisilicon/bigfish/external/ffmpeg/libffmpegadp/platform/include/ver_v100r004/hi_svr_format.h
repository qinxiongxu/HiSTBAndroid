/**
 \file
 \brief File demutiplexer (DEMUX), protocol structure. CNcomment:�ļ���������Э��ṹ��
 \author HiSilicon Technologies Co., Ltd.
 \date 2008-2018
 \version 1.0
 \author
 \date 2010-02-10
 */

#ifndef __HI_SVR_FORMAT_H__
#define __HI_SVR_FORMAT_H__

#include "hi_type.h"

#ifdef __cplusplus
#if __cplusplus
extern "C" {
#endif
#endif /* __cplusplus */

/*************************** Macro Definition ****************************/
/** \addtogroup     HiPlayer */
/** @{ */  /** <!-- [HiPlayer] */

/** Reach the end of a file. CNcomment:�����ļ�����λ�� */
#define HI_FORMAT_ERRO_ENDOFFILE            (HI_FAILURE - 1)

/** Return the file size(byte). CNcomment:�����ļ�ʵ�ʴ�С����λbyte */
#define HI_FORMAT_SEEK_FILESIZE             (65536)

/** Maximum number of programs. For example, if the number of programs in the transport stream (TS) media file is greater than 5, the player stores only five programs at most and plays one of the programs at a time. */
/** CNcomment:����Ŀ��������tsý���ļ�����Ŀ�����������5�����򲥷������ֻ�ܴ洢����ĳ5����Ŀ��Ϣ�����������е�ĳһ�� */
#define HI_FORMAT_MAX_PROGRAM_NUM           (5)
/** Length of the uniform resource locator (URL) character */
/** CNcomment:·���ַ����� */
#define HI_FORMAT_MAX_URL_LEN               (1024)
/** Length of the file name */
/** CNcomment:�ļ����Ƴ��� */
#define HI_FORMAT_MAX_FILE_NAME_LEN         (512)
/** Maximum number of characters in the information such as the file title and author */
/** CNcomment:�ļ����⡢���ߵ�����ַ��� */
#define HI_FORMAT_TITLE_MAX_LEN             (512)
/** Number of language characters */
/** CNcomment:�����ַ��� */
#define HI_FORMAT_LANG_LEN                  (4)
/** Length of the subtitle title */
/** CNcomment:��Ļ���ⳤ�� */
#define HI_FORMAT_SUB_TITLE_LEN             (32)
/** Bytes of year */
/** CNcomment:����ֽ��� */
#define HI_FORMAT_TIME_LEN                  (8)
/** Number of streams */
/** CNcomment:������ */
#define HI_FORMAT_MAX_STREAM_NUM            (32)
/** Maximum number of supported languages */
/** CNcomment:֧�ֵ��������������� */
#define HI_FORMAT_MAX_LANG_NUM              (32)
/** No presentation time stamp (PTS) */
/** CNcomment:û��pts */
#define HI_FORMAT_NO_PTS                    (-1)
/** The value of the position is invalid */
/** CNcomment:û��pos */
#define HI_FORMAT_NO_POS                    (-1)
/** Invalid stream ID */
/** CNcomment:�Ƿ�streamid */
#define HI_FORMAT_INVALID_STREAM_ID         (-1)
/** Bytes of palette, rgb+a */
/** CNcomment:��ɫ���ֽ�����rgb+a */
#define HI_FORMAT_PALETTE_LEN               (4 * 256)
/** Maximum planar surface for saving the data of the thumbnail */
/** CNcomment:�������ͼͼ��������������ƽ���� */
#define HI_FORMAT_THUMBNAIL_PLANAR          (4)
/** Length of the protocol name */
/** CNcomment: Э�����ֳ��� */
#define HI_FORMAT_PROTOCAL_NAME_LEN         (32)
/** Length of the string that the hls segment stores url */
/** CNcomment: hls ��Ƭ���url���ַ������� */
#define HI_FORMAT_HLS_URL_SIZE              (2048)
/** Type of subtitle */
/** CNcomment: ��Ļ������Ϣ */
#define HI_FORMAT_SUB_TYPE_LEN              (32)
#define HI_FORMAT_SUBTITLE_PGS              "PGS"
#define HI_FORMAT_SUBTITLE_ASS              "ASS"
#define HI_FORMAT_SUBTITLE_SSA              "SSA"
#define HI_FORMAT_SUBTITLE_SMI              "SMI"
#define HI_FORMAT_SUBTITLE_SRT              "SRT"
#define HI_FORMAT_SUBTITLE_LRC              "LRC"
#define HI_FORMAT_SUBTITLE_SUB              "SUB"
#define HI_FORMAT_SUBTITLE_DVDSUB           "DVD_SUB"
#define HI_FORMAT_SUBTITLE_DVBSUB           "DVB_SUB"
#define HI_FORMAT_SUBTITLE_UTF8_TEXT        "UTF8_TEXT"

/** @} */  /*! <!-- Macro Definition End */

/*************************** Structure Definition ****************************/
/** \addtogroup     HiPlayer */
/** @{ */  /** <!-- [HiPlayer] */

/** log level */
/** CNcomment:��־�ȼ� */
typedef enum hiFORMAT_LOG_LEVEL_E
{
    HI_FORMAT_LOG_QUITE = 0,    /**< no log output */
    HI_FORMAT_LOG_FATAL,        /**< something went wrong and recovery is not possible. */
    HI_FORMAT_LOG_ERROR,        /**< something went wrong and cannot losslessly be recovered. */
    HI_FORMAT_LOG_WARNING,      /**< something does not look correct. This may or may not lead to problems. */
    HI_FORMAT_LOG_INFO,         /**< level is info */
    HI_FORMAT_LOG_DEBUG,        /**< level is debug */
} HI_FORMAT_LOG_LEVEL_E;

/** hls start mode */
/** CNcomment:hls ����ģʽ */
typedef enum hiFORMAT_HLS_START_MODE_E
{
    HI_FORMAT_HLS_MODE_NORMAL,  /**< manual mode *//**< CNcomment:��ͨģʽ,������Ƭ��ʼ�� */
    HI_FORMAT_HLS_MODE_FAST,    /**< auto mode,switch by the bandwidth *//**< CNcomment:��������,����С��Ƭ��ʼ�� */
    HI_FORMAT_HLS_MODE_BUTT
} HI_FORMAT_HLS_START_MODE_E;

/** Version number definition */
/** CNcomment:�汾�Ŷ��� */
typedef struct hiFORMAT_LIB_VERSION_S
{
    HI_U8 u8VersionMajor;    /**< Major version accessor element */
    HI_U8 u8VersionMinor;    /**< Minor version accessor element */
    HI_U8 u8Revision;        /**< Revision version accessor element */
    HI_U8 u8Step;            /**< Step version accessor element */
} HI_FORMAT_LIB_VERSION_S;

/** File opening mode */
/** CNcomment:�ļ��򿪷�ʽ */
typedef enum hiFORMAT_URL_OPENFLAG_E
{
    HI_FORMAT_URL_OPEN_RDONLY = 0x0,   /**< Read-only mode *//**< CNcomment:ֻ����ʽ */
    HI_FORMAT_URL_OPEN_RDWR,           /**< Read/Write mode *//**< CNcomment:��/д��ʽ */
    HI_FORMAT_URL_OPEN_BUTT
} HI_FORMAT_URL_OPENFLAG_E;

/** File seeking flag */
/** CNcomment:�ļ�SEEK��� */
typedef enum hiFORMAT_SEEK_FLAG_E
{
    HI_FORMAT_AVSEEK_FLAG_NORMAL = 0x0,     /**< Seek the key frame that is closest to the current frame in a sequence from the current frame to end of the file. *//**< CNcomment:�ӵ�ǰ֡���ļ�βseek���ҵ��뵱ǰ֡����Ĺؼ�֡ */
    HI_FORMAT_AVSEEK_FLAG_BACKWARD,         /**< Seek the key frame that is closest to the current frame in a sequence from the current frame to the file header. *//**< CNComment:�ӵ�ǰ֡���ļ�ͷseek���ҵ��뵱ǰ֡����Ĺؼ�֡ */
    HI_FORMAT_AVSEEK_FLAG_BYTE,             /**< Seek the key frame based on bytes. *//**< CNcomment:���ֽ�seek */
    HI_FORMAT_AVSEEK_FLAG_ANY,              /**< Seek the key frame that is closest to the current frame regardless of the sequence from the current frame to the file header or from the current frame to the end of the file. *//**< CNcomment:���������ļ�ͷ�����ļ�β���ҵ��뵱ǰ֡����Ĺؼ�֡ */
    HI_FORMAT_AVSEEK_FLAG_BUTT
} HI_FORMAT_SEEK_FLAG_E;

/** Type of the stream data that is parsed by the file DEMUX */
/** CNcomment:�����ͣ��ļ��������������������������� */
typedef enum hiFORMAT_DATA_TYPE_E
{
    HI_FORMAT_DATA_NULL = 0x0,
    HI_FORMAT_DATA_AUD,          /**< Audio stream *//**< CNcomment:��Ƶ�� */
    HI_FORMAT_DATA_VID,          /**< Video stream *//**< CNcomment:��Ƶ�� */
    HI_FORMAT_DATA_SUB,          /**< Subtitle stream *//**< CNcomment:��Ļ�� */
    HI_FORMAT_DATA_RAW,          /**< Byte stream *//**< CNcomment:�ֽ��� */
    HI_FORMAT_DATA_BUTT
} HI_FORMAT_DATA_TYPE_E;

/** Stream type of the file to be played */
/** CNcomment:�ļ������ͣ����ŵ��ļ����� */
typedef enum hiFORMAT_STREAM_TYPE_E
{
    HI_FORMAT_STREAM_ES = 0x0,    /**< Element stream (ES) file *//**< CNcomment:es���ļ� */
    HI_FORMAT_STREAM_TS,          /**< TS file *//**< CNcomment:ts���ļ� */
    HI_FORMAT_STREAM_NORMAL,      /**< Common files *//**< CNcomment:��ͨ�ļ�����idx,lrc,srt����Ļ�ļ� */
    HI_FORMAT_STREAM_NET,         /**< network stream file *//**< CNcomment:�������ļ� */
    HI_FORMAT_STREAM_LIVE,        /**< live streams *//**< CNcomment:ֱ���������ļ�������Ϣ */
    HI_FPRMAT_STREAM_BUTT
} HI_FORMAT_STREAM_TYPE_E;

/** Subtitle data type */
/** CNcomment:��Ļ�������� */
typedef enum hiFORMAT_SUBTITLE_DATA_TYPE_E
{
    HI_FORMAT_SUBTITLE_DATA_TEXT = 0x0,    /**< Character string *//**< CNcomment:�ַ��� */
    HI_FORMAT_SUBTITLE_DATA_BMP,           /**< BMP picture *//**< CNcomment:bmpͼƬ����������Ч */
    HI_FORMAT_SUBTITLE_DATA_ASS,           /**< ASS subtitle *//**< CNcomment:ass��Ļ */
    HI_FORMAT_SUBTITLE_DATA_HDMV_PGS,      /**< pgs subtitle *//**< CNcomment:pgs��Ļ */
    HI_FORMAT_SUBTITLE_DATA_BMP_SUB,       /**< idx+sub subtitle *//**< CNcomment:sub��Ļ */
    HI_FORMAT_SUBTITLE_DATA_DVB_SUB,       /**< DVB subtitle *//**< CNcomment:DVBsub��Ļ */
    HI_FORMAT_SUBTITLE_DATA_BUTT
} HI_FORMAT_SUBTITLE_DATA_TYPE_E;

/** User operation command, the commands should be sent to the DEMUX */
/** CNcomment:�û��������������Щ��������������Ҫ֪���ϲ��û��������� */
typedef enum hiFORMAT_USER_CMD_E
{
    HI_FORMAT_CMD_PLAY  =0,   /**< play */
    HI_FORMAT_CMD_FORWARD,    /**< forward */
    HI_FORMAT_CMD_BACKWARD,   /**< backward */
    HI_FORMAT_CMD_PAUSE,      /**< pause */
    HI_FORMAT_CMD_RESUME,     /**< resume */
    HI_FORMAT_CMD_STOP,       /**< stop */
    HI_FORMAT_CMD_SEEK,       /**< seek */
    HI_FORMAT_CMD_BUTT
} HI_FORMAT_USER_CMD_E;

/** Stream information of the hls file */
/** CNcomment:hls�ļ���stream����Ϣ */
typedef struct hiFORMAT_HLS_STREAM_INFO_S
{
    HI_S32     stream_nb;                    /**< Input parameter, index of the stream to be obtained *//**< CNcomment:Ҫ��ȡ�����������ţ�������� */
    HI_S32     hls_segment_nb;              /**< Output parameter, total segments of this stream *//**< CNcomment:��·�����ܹ��ж��ٸ���Ƭ��������� */
    HI_S64     bandwidth;                    /**< Output parameter, minimum bandwidth of the stream to be obtained*//**<  CNcomment:��ȡ������Ҫ�����ʹ��������������λbits/s */
    HI_CHAR    url[HI_FORMAT_HLS_URL_SIZE];   /**< Output parameter, url of the index file of the stream to be obtained *//**< CNcomment:��ȡ�������������ļ���url��������� */
} HI_SVR_HLS_STREAM_INFO_S;

/** The information of the currently played segment */
/** CNcomment:hls�ļ���ǰ���ŵķ�Ƭ����Ϣ */
typedef struct hiFORMAT_HLS_SEGMENT_INFO_S
{
    HI_S32    stream_num;                    /**< output parameter, which stream of the currently played segment *//**< CNcomment:��ǰ���ŵķ�Ƭ������һ·stream��������� */
    HI_S32    total_time;                    /**< output parameter, the duration of the currently played segment *//**< CNcomment:��ǰ���ŵķ�Ƭ��ʱ����������� */
    HI_S32    seq_num;                       /**< output parameter, the serial number of the current segment *//**< CNcomment:��ǰ��Ƭ�����кţ�������� */
    HI_S64    bandwidth;                     /**< output parameter, the bandwidth demands of the current segment *//**< CNcomment:��ǰ��ƬҪ��Ĵ��������������λbits/s */
    HI_CHAR   url[HI_FORMAT_HLS_URL_SIZE];   /**< output parameter, the url of the current segment *//**< CNcomment:��ǰ��Ƭ��url��������� */
} HI_SVR_HLS_SEGMENG_INFO_S;

/** CNcomment: Command of the invoking */
/** CNcomment:invoke�������� */
typedef enum hiFORMAT_INVOKE_ID_E
{
    HI_FORMAT_INVOKE_PRE_CLOSE_FILE = 0x0, /**< the command of the file to be closed, no parameter*//**< CNcomment:Ԥ�ر��ļ����޲��� */
    HI_FORMAT_INVOKE_USER_OPE,             /**< the command of the user operation, the parameter is ::HI_FORMAT_USER_CMD_E *//**< CNcomment:�û����������������::HI_FORMAT_USER_CMD_E */
    HI_FORMAT_INVOKE_SUB_SET_LANTYPE,      /**< the command of setting the language type of the external subtitle. The parameter is ::LanguageType *//**< CNcomment:���������Ļ�������࣬��������Ч */
    HI_FORMAT_INVOKE_SUB_SET_CODETYPE,     /**< the command of setting the encoding type of the external subtitle. The parameter is ::HI_CHARSET_CODETYPE_E *//**< CNcomment:���������Ļ�ַ��������ͣ���������::HI_CHARSET_CODETYPE_E */
    HI_FORMAT_INVOKE_GET_METADATA,         /**< the command of getting the metadata of the media file, the parameter is ::HI_SVR_PLAYER_METADATA_S *//**< CNcomment:��ȡý���ļ�Ԫ���ݣ���������::HI_SVR_PLAYER_METADATA_S */
    HI_FORMAT_INVOKE_SET_USERDATA,         /**< the command of setting the user data. The parameter is the value of the u32UserData attribute pf the ::HI_SVR_PLAYER_MEDIA_S structure. *//**< CNcomment:͸���û����ݣ�����Ϊ::HI_SVR_PLAYER_MEDIA_S�ṹ��u32UserData���Ե�ַ */
    HI_FORMAT_INVOKE_CHARSETMGR_FUNC,      /**< the command of setting the function of the char manager, the parameter is ::HI_CHARSET_FUN_S *//**< CNcomment:�����ַ����������ӿ�.��������::HI_CHARSET_FUN_S *charsetmgr */
    HI_FORMAT_INVOKE_DEST_CODETYPE,        /**< the command of setting the encoding type of the ext subtitle to be transferred, the parameter is ::HI_S32 *//**< CNcomment:�����ַ���ת��Ŀ���������,��������::HI_CHARSET_CODETYPE_E */
    HI_FORMAT_INVOKE_GET_THUMBNAIL,        /**< the command of getting the thumbnail, the parameter is ::HI_FORMAT_THUMBNAIL_PARAM_S *//**< CNcomment:��ȡ����ͼ������Ϊ::HI_FORMAT_THUMBNAIL_PARAM_S */
    HI_FORMAT_INVOKE_CHECK_VIDEOSUPPORT,   /**< the command of obtaining the capability set of the video. Check whether the decoding is supported. The parameter is ::HI_FORMAT_VID_CHECK_RESULT_S *//**< CNcomment:��ȡ��Ƶ��������������жϽ����Ƿ�֧�֣�����Ϊ::HI_FORMAT_VID_CHECK_RESULT_S */
    HI_FORMAT_INVOKE_GET_BANDWIDTH,        /**< the command of getting the bandwidth, the parameter is ::HI_S64 *//**< CNcomment:���粥�ŵ�ʱ���ȡ��ǰ���������λΪbps����������::HI_S64 */
    HI_FORMAT_INVOKE_GET_HLS_STREAM_NUM,   /**< the command of getting the numbers of streams in the hls file, the parameter is ::HI_S32*//**< CNcomment:��ȡhls�ļ����ܹ��м�·��������������::HI_S32* */
    HI_FORMAT_INVOKE_GET_HLS_STREAM_INFO,  /**< the command of getting the information of the selected segment, the parameter is ::HI_SVR_HLS_STREAM_INFO_S *//**< CNcomment:��ȡhls�ļ���ָ����ĳһ·����Ϣ����������::HI_SVR_HLS_STREAM_INFO_S* */
    HI_FORMAT_INVOKE_GET_HLS_SEGMENT_INFO, /**< the command of getting the information of the currently played segment, the parameter is ::HI_SVR_HLS_SEGMENG_INFO_S *//**< CNcomment:��ȡ���ڲ��ŵķ�Ƭ����Ϣ����������::HI_SVR_HLS_SEGMENG_INFO_S* */
    HI_FORMAT_INVOKE_GET_HLS_BANDWIDTH,    /**< the command of getting the current bandwidth, the parameter is ::HI_S64* *//**< CNcomment:��ȡhls���ŵ�ʵ�ʴ�����������::HI_S64����λbps */
    HI_FORMAT_INVOKE_SET_HLS_STREAM,       /**< the command of selecting a specified stream, the parameter is ::HI_S32, not support *//**< CNcomment:ָ��hls�ļ���ĳһ·���Ų�������::HI_S32,�ݲ�֧�� */
    HI_FORMAT_INVOKE_BUFFER_SETCONFIG,     /**< the command of setting the configuration information of the buffer, the parameter is ::HI_FORMAT_BUFFER_CONFIG_S *//**< CNcomment:���û���������Ϣ, ����Ϊ::HI_FORMAT_BUFFER_CONFIG_S */
    HI_FORMAT_INVOKE_BUFFER_GETCONFIG,     /**< the command of obtaining the configuration information of the buffer, the parameter is ::HI_FORMAT_BUFFER_CONFIG_S *//**< CNcomment:����type::HI_FORMAT_BUFFER_CONFIG_TYPE_E��ȡ����������Ϣ, ����Ϊ::HI_FORMAT_BUFFER_CONFIG_S */
    HI_FORMAT_INVOKE_BUFFER_STATUS,        /**< the command of reading buffer status, the parameter is ::HI_FORMAT_BUFFER_STATUS_S *//**< CNcomment:Read Buffer status ����Ϊ::HI_FORMAT_BUFFER_STATUS_S */
    HI_FORMAT_INVOKE_BUFFER_LAST_PTS,      /**< the command of getting buffer last PTS, param is ::HI_S64 */
    HI_FORMAT_INVOKE_BUFFER_SET_MAX_SIZE,  /**< the command of setting the maximum value of the buffer. The parameter is ::HI_S64. The maximum value of the buffer is 10 MB by default and cannot be less than 5 MB.*//**< CNcomment:���û�������ֵ(bytes) ����Ϊ::HI_S64,Ĭ��ֵΪ10MB,����С�ڻ������ֵ5MB */
    HI_FORMAT_INVOKE_BUFFER_GET_MAX_SIZE,  /**< the command of obtaining the maximum value of the buffer. The parameter is ::HI_S64. The maximum value of the buffer is 10 MB by default. *//**< CNcomment:��ȡ��������ֵ(bytes) ����Ϊ::HI_S64,Ĭ��ֵΪ10MB */
    HI_FORMAT_INVOKE_GET_MSG_EVENT,        /**< the command of obtaining the packets of the events, the parameter is ::HI_FORMAT_MSG_S *//**< CNcomment:��ȡ��Ϣ�¼��������ݣ�����Ϊ::HI_FORMAT_MSG_S */
    HI_FORMAT_INVOKE_GET_FIRST_IFRAME,     /**< the command of obtaining the first I frame, the parameter is ::HI_FORMAT_FRAME_S *//**< CNcomment:��ȡ��������е�I֡��Ϣ,����Ϊ::HI_FORMAT_FRAME_S */
    HI_FORMAT_INVOKE_SET_DRM,              /**< the command of setting DRM clietn handle mode,the parameter is ::HI_HANDLE *//**< CNcomment:DRM ����DRM���,��������::HI_HANDLE */
    HI_FORMAT_INVOKE_SET_HLS_START_MODE,   /**< the command of setting hls switch mode,the parameter is ::HI_FORMAT_HLS_START_MODE_E *//**< CNcomment:hls ����ģʽ����,����ģʽ,����С��Ƭ��ʼ��::HI_FORMAT_HLS_START_MODE_E */
    HI_FORMAT_INVOKE_SET_LOCALTIME,        /**< the command of setting IStreamSource demux of AVPLAY LocalTime,the parameter is ::HI_S64* *//**< CNcomment:IStreamSource ���õ�ǰAVPLAY�е�Localtime��demux,��λms,�������� :: HI_S64* */
    HI_FORMAT_INVOKE_SET_LOG_LEVEL,        /**< the command of setting log level,the parameter is::HI_FORMAT_LOG_LEVEL_E *//**< CNcomment:������־�ȼ�������::HI_FORMAT_LOG_LEVEL_E */
    HI_FORMAT_INVOKE_SET_TPLAY_MODE,       /**< the command of setting Tplay mode,the parameter is::HI_SVR_PLAYER_TPLAY_MODE_E *//**< CNcomment:���ÿ������ģʽ������::HI_SVR_PLAYER_TPLAY_MODE_E */

    /* if hisilicon invoke command, please defined before USER */
    HI_FORMAT_INVOKE_PROTOCOL_USER=100,    /**< the command of setting data to user protocol *//**< CNcomment:�����û�Э������ */

    HI_FORMAT_INVOKE_BUTT
} HI_FORMAT_INVOKE_ID_E;

/** The format of the thumbnail */
/** CNcomment:����ͼ��ͼ���ʽ */
typedef enum hiFORMAT_THUMB_PIXEL_FORMAT_E
{
    HI_FORMAT_PIX_FMT_YUV420P = 0x0,       /**< planar YUV 4:2:0, 12bpp, (1 Cr & Cb sample per 2x2 Y samples) */
    HI_FORMAT_PIX_FMT_YUYV422,             /**< packed YUV 4:2:2, 16bpp, Y0 Cb Y1 Cr */
    HI_FORMAT_PIX_FMT_RGB24,               /**< packed RGB 8:8:8, 24bpp, RGBRGB... */
    HI_FORMAT_PIX_FMT_BGR24,               /**< packed RGB 8:8:8, 24bpp, BGRBGR... */
    HI_FORMAT_PIX_FMT_YUV422P,             /**< planar YUV 4:2:2, 16bpp, (1 Cr & Cb sample per 2x1 Y samples) */
    HI_FORMAT_PIX_FMT_YUV444P,             /**< planar YUV 4:4:4, 24bpp, (1 Cr & Cb sample per 1x1 Y samples) */
    HI_FORMAT_PIX_FMT_YUV410P,             /**< planar YUV 4:1:0,  9bpp, (1 Cr & Cb sample per 4x4 Y samples) */
    HI_FORMAT_PIX_FMT_YUV411P,             /**< planar YUV 4:1:1, 12bpp, (1 Cr & Cb sample per 4x1 Y samples) */

    HI_FORMAT_PIX_FMT_RGB565BE = 0x2B,     /**< packed RGB 5:6:5, 16bpp, (msb)   5R 6G 5B(lsb), big-endian */
    HI_FORMAT_PIX_FMT_RGB565LE,            /**< packed RGB 5:6:5, 16bpp, (msb)   5R 6G 5B(lsb), little-endian */
    HI_FORMAT_PIX_FMT_RGB555BE,            /**< packed RGB 5:5:5, 16bpp, (msb)1A 5R 5G 5B(lsb), big-endian, most significant bit to 0 */
    HI_FORMAT_PIX_FMT_RGB555LE,            /**< packed RGB 5:5:5, 16bpp, (msb)1A 5R 5G 5B(lsb), little-endian, most significant bit to 0 */
} HI_FORMAT_THUMB_PIXEL_FORMAT_E;

/*===============================Buffer NetWork================================================*/

/** Type of the buffer configuration */
/** CNcomment:�������õ����� */
typedef enum hiFORMAT_BUFFER_CONFIG_TYPE_E
{
    HI_FORMAT_BUFFER_CONFIG_NONE = 0x0, /**< No Config */
    HI_FORMAT_BUFFER_CONFIG_TIME,  /**< Configure Buffer at Time */
    HI_FORMAT_BUFFER_CONFIG_SIZE,  /**< Configure Buffer at size */
    HI_FORMAT_BUFFER_CONFIG_BULT
} HI_FORMAT_BUFFER_CONFIG_TYPE_E;

/** Configuration information of the buffer. You are advised to consider the current buffer size when configuring the buffer.
causes oom-killer problem. The internal buffer size must be less than or equal to 5 MB.
If the buffer size is too great, the system memory may be used up  */
/** CNcomment:����������Ϣ:
    ��s64Total�������ϣ����鿼�ǵ�ǰ�ڴ�ռ䣬�����ڴ����ϵͳ�ڴ�ľ���
    �����ϵͳoom-killer�����⡣��˵�ǰ�ڲ�����������5M bytes����. ���
    ����Ϊʱ�䷽ʽ,����5MB�����,�ᶯ̬�����е����ϱ��¼�ʱ��
    Ĭ������:
    eType:          HI_FORMAT_BUFFER_CONFIG_SIZE
    s64TimeOut:     2*60*1000   ms
    s64ToTal:       5*1024*1024 bytes
    s64EventStart:  512*1024    bytes
    s64EventEnough: 4*1024*1024 bytes
 */
typedef struct hiFORMAT_BUFFER_CONFIG_S
{
    HI_FORMAT_BUFFER_CONFIG_TYPE_E eType; /**< Config Type ::HI_FORMAT_BUFFER_CONFIG_TYPE_E */
    HI_S64 s64TimeOut;      /**< network link time out(ms),default:120000ms (2 minute) */
    HI_S64 s64Total;        /**< length of the whole Buffer size(bytes) or time(ms) */
    HI_S64 s64EventStart;   /**< The First Event start at size(bytes) or time(ms), it is less than s64EventEnough */
    HI_S64 s64EventEnough;  /**< The Enough Event at size(bytes) or time(ms), it is less than s64Total */
} HI_FORMAT_BUFFER_CONFIG_S;

/** Buffer status query */
/** CNcomment:����״̬��ѯ */
typedef struct hiFORMAT_BUFFER_STATUS_S
{
    HI_S64 s64Size;    /**< The size(bytes) of the Buffer */
    HI_S64 s64Duration;    /**< The time(ms) of the Buffer */
} HI_FORMAT_BUFFER_STATUS_S;

/** Type of network errors */
/** CNcomment:������������ */
typedef enum hiFORMAT_MSG_NETWORK_E
{
    HI_FORMAT_MSG_NETWORK_ERROR_UNKNOW = 0,         /**< unknown error *//**< CNcomment:δ֪���� */
    HI_FORMAT_MSG_NETWORK_ERROR_CONNECT_FAILED, /**< connection error *//**< CNcomment:����ʧ�� */
    HI_FORMAT_MSG_NETWORK_ERROR_TIMEOUT,        /**< operation timeout *//**< CNcomment:��ȡ��ʱ */
    HI_FORMAT_MSG_NETWORK_ERROR_DISCONNECT,        /**< net work disconnect *//**< CNcomment:���� */
    HI_FORMAT_MSG_NETWORK_ERROR_NOT_FOUND,      /**< file not found *//**< CNcomment:��Դ������ */
    HI_FORMAT_MSG_NETWORK_NORMAL,               /**< status of network is normal *//**< CNcomment:����״̬���� */
    HI_FORMAT_MSG_NETWORK_ERROR_BUTT,
} HI_FORMAT_MSG_NETWORK_E;

/** Network status*/
/** CNcomment:����״̬��Ϣ */
typedef struct hiFORMAT_NET_STATUS_S
{
    HI_CHAR cProtocals[HI_FORMAT_PROTOCAL_NAME_LEN];/**< network protocol, for example http *//**< CNcomment:����Э�飬��http */
    HI_S32  s32ErrorCode;                           /**< error code of the network protocol, for example 404 *//**< CNcomment:����Э������룬��404 */
    HI_FORMAT_MSG_NETWORK_E eType;                  /**< type of network errors *//**< CNcomment:����������::HI_FORMAT_MSG_NETWORK_ERROR_E */
} HI_FORMAT_NET_STATUS_S;

/** Type of the message packets */
/** CNcomment:��Ϣ�¼��������� */
typedef enum hiFORMAT_MSG_TYPE_E
{
    HI_FORMAT_MSG_NONE = 0x0,      /**< no message *//**< CNcomment:����Ϣ */
    HI_FORMAT_MSG_UNKNOW,          /**< unknown messages *//**< CNcomment:�����쳣 */
    HI_FORMAT_MSG_BUFFER_EMPTY,    /**< the buffer is empty *//**< CNcomment:����Ϊ��    ::HI_FORMAT_BUFFER_STATUS_S */
    HI_FORMAT_MSG_BUFFER_FULL,     /**< the buffer is full *//**< CNcomment:������      ::HI_FORMAT_BUFFER_STATUS_S */
    HI_FORMAT_MSG_DOWNLOAD_FIN,    /**< the download is complete *//**< CNcomment:�������    ::HI_FORMAT_BUFFER_STATUS_S */
    HI_FORMAT_MSG_BUFFER_START,    /**< start buffering *//**< CNcomment:���忪ʼ    ::HI_FORMAT_BUFFER_STATUS_S */
    HI_FORMAT_MSG_BUFFER_END,      /**< The buffering is complete *//**< CNcomment:�������    ::HI_FORMAT_BUFFER_STATUS_S */
    HI_FORMAT_MSG_TIME_OUT,        /**< timeout *//**< CNcomment:��ʱ        ::HI_FORMAT_NET_STATUS_S */
    HI_FORMAT_MSG_NETWORK,         /**< network error *//**< CNcomment:�������    ::HI_FORMAT_NET_STATUS_S */
    HI_FORMAT_MSG_NOT_SUPPORT,     /**< the unsupported protocol/encoding and decoding *//**< CNcomment:��֧�ֵ�Э��/����� */
    HI_FORMAT_MSG_DISCONTINUITY_SEEK,       /**< The data interrupt by Seek *//**< CNcomment:�����жϣ��������ڲ�����Seek���� */
    HI_FORMAT_MSG_DISCONTINUITY_AUD_FORMAT, /**< The data interrupt by audio format change *//**< CNcomment:�����жϣ���Ƶ���ݸ�ʽ�仯 */
    HI_FORMAT_MSG_DISCONTINUITY_VID_FORMAT, /**< The data interrupt by video format change *//**< CNcomment:�����жϣ���Ƶ���ݸ�ʽ�仯 */
    HI_FORMAT_MSG_USER_PRIVATE = 100,       /**< private message *//**< CNcomment:�û�˽����Ϣ���� */
    HI_FORMAT_MSG_BUTT,
} HI_FORMAT_MSG_TYPE_E;

/** Message of the DEMUX */
/** CNcomment:Hiplayer��ȡDEMUX��Ϣ�¼��������� */
typedef struct hiFORMAT_MSG_S
{
    HI_FORMAT_MSG_TYPE_E      eMsgType; /**< type of the message *//**< CNcomment:��Ϣ���::HI_FORMAT_MSG_TYPE_E */
    HI_FORMAT_BUFFER_STATUS_S stBuf;    /**< buffering status *//**< CNcomment:����״̬::HI_FORMAT_BUFFER_STATUS_S */
    HI_FORMAT_NET_STATUS_S    stNet;    /**< network status *//**< CNcomment:����״̬::HI_FORMAT_NET_STATUS_S */
} HI_FORMAT_MSG_S;

/*===============================Buffer NetWork End=============================================*/

/** Data type of the video decoding capability detection result */
/** CNcomment:��������������������� */
typedef enum hiFORMAT_CHECK_INFO_E
{
    HI_FORMAT_SUPPORT = 0x0,    /**< Decoding is supported *//**< CNcomment:֧�ֽ��� */
    HI_FORMAT_NO_SUPPORT,       /**< Decoding is not supported. *//**< CNcomment:��֧�ֽ��� */
    HI_FORMAT_BUTT
} HI_FORMAT_CHECK_INFO_E;

/** Detection information of the video capability set */
/** CNcomment:��Ƶ�����������Ϣ */
typedef struct hiFORMAT_VID_CHECK_RESULT_S
{
    HI_S32 s32StreamIndex;                   /**< input parameter, index of the stream to be queried. For details, see ::HI_FORMAT_VID_INFO_S:s32StreamIndex *//**< CNcomment:Ҫ��ѯ�����������������::HI_FORMAT_VID_INFO_S:s32StreamIndex��������� */
    HI_FORMAT_CHECK_INFO_E eSupportInfo;     /**< output parameter, result of detecting the video capability set*//**< CNcomment:��Ƶ�������������������� */
} HI_FORMAT_VID_CHECK_RESULT_S;

/** Audio stream information */
/** CNcomment:��Ƶ����Ϣ */
typedef struct hiFORMAT_AUD_INFO_S
{
    HI_S32 s32StreamIndex;                   /**< Stream index. The value is the stream PID for TS streams. The invalid value is ::HI_FORMAT_INVALID_STREAM_ID. *//**< CNcomment:������������ts������ֵΪ��pid���Ƿ�ֵΪ::HI_FORMAT_INVALID_STREAM_ID */
    HI_U32 u32Format;                        /**< Audio encoding format. For details about the value definition, see ::HA_FORMAT_E. *//**< CNcomment:��Ƶ�����ʽ��ֵ����ο�::HA_FORMAT_E */
    HI_U32 u32Version;                       /**< Audio encoding version, such as 0x160(WMAV1) and 0x161 (WMAV2). It is valid only for WMA encoding. *//**< CNcomment:��Ƶ����汾������wma���룬0x160(WMAV1), 0x161 (WMAV2) */
    HI_U32 u32SampleRate;                    /**< 8000,11025,441000,... */
    HI_U16 u16BitPerSample;                  /**< Number of bits occupied by each audio sampling point such as 8 bits or 16 bits. *//**< CNcomment:��Ƶÿ����������ռ�ı�������8bit,16bit */
    HI_U16 u16Channels;                      /**< Number of channels, 1 or 2. *//**< CNcomment:������, 1 or 2 */
    HI_U32 u32BlockAlign;                    /**< Number of bytes contained in a packet *//**< CNcomment:packet�������ֽ��� */
    HI_U32 u32Bps;                           /**< Audio bit rate, in the unit of bit/s. *//**< CNcomment:��Ƶ���ʣ�bit/s */
    HI_BOOL bBigEndian;                      /**< Big endian or little endian. It is valid only for the PCM format *//**< CNcomment:��С�ˣ���pcm��ʽ��Ч */
    HI_CHAR aszAudLang[HI_FORMAT_LANG_LEN];  /**< Audio stream language *//**< CNcomment:��Ƶ������ */
    HI_U32 u32ExtradataSize;                 /**< Length of the extended data *//**< CNcomment:��չ���ݳ��� */
    HI_S64 s64Duration;                      /**< Duration of audio stream, in the unit of ms. *//**< CNcomment:��Ƶ��ʱ������λms */
    HI_U8  *pu8Extradata;                    /**< Extended data *//**< CNcomment:��չ���� */
    HI_VOID  *pCodecContext;                 /**< Audio decode context *//**< CNcomment:��Ƶ���������� */
    HI_S32 s32SubStreamID;                   /**< Sub audio stream ID *//**< CNcomment:����Ƶ��ID,���ΪTrueHD��Ƶ������ܺ���һ·ac3���� ����ǰ�������Ϊ�����������뿪�������ô��ֶ�����¼��ϵ */
} HI_FORMAT_AUD_INFO_S;

/** Video stream information */
/** CNcomment:��Ƶ����Ϣ */
typedef struct hiFORMAT_VID_INFO_S
{
    HI_S32 s32StreamIndex;        /**< Stream index. The value is the stream PID for TS streams. The invalid value is ::HI_FORMAT_INVALID_STREAM_ID. *//**< CNcomment:������������ts������ֵΪ��pid���Ƿ�ֵΪ::HI_FORMAT_INVALID_STREAM_ID */
    HI_U32 u32Format;             /**< Video encoding format. For details about the value definition, see ::HI_UNF_VCODEC_TYPE_E. *//**< CNcomment:��Ƶ�����ʽ��ֵ����ο�::HI_UNF_VCODEC_TYPE_E */
    HI_U16 u16Width;              /**< Width, in the unit of pixel. *//**< CNcomment:��ȣ���λ���� */
    HI_U16 u16Height;             /**< Height, in the unit of pixel. *//**< CNcomment:�߶ȣ���λ���� */
    HI_U16 u16FpsInteger;         /**< Integer part of the frame rate *//**< CNcomment:֡�ʣ��������� */
    HI_U16 u16FpsDecimal;         /**< Decimal part of the frame rate *//**< CNcomment:֡�ʣ�С������ */
    HI_U32 u32Bps;                /**< Video bit rate, in the unit of bit/s. *//**< CNcomment:��Ƶ���ʣ�bit/s */
    HI_U32 u32ExtradataSize;      /**< Length of the extended data *//**< CNcomment:��չ���ݳ��� */
    HI_S64 s64Duration;           /**< Duration of video stream, in the unit of ms. *//**< CNcomment:��Ƶ��ʱ������λms */
    HI_U8  *pu8Extradata;         /**< Extended data *//**< CNcomment:��չ���� */
    HI_VOID  *pCodecContext;      /**< video decode context *//**< CNcomment:��Ƶ���������� */
} HI_FORMAT_VID_INFO_S;

/** Subtitle information */
/** CNcomment:��Ļ��Ϣ */
typedef struct hiFORMAT_SUBTITLE_INFO_S
{
    HI_S32  s32StreamIndex;                            /**< Stream index. The value is the stream PID for TS streams. The invalid value is ::HI_FORMAT_INVALID_STREAM_ID. *//**< CNcomment:������������ts������ֵΪ��pid���Ƿ�ֵΪ::HI_FORMAT_INVALID_STREAM_ID */
    HI_BOOL bExtSubTitle;                              /**< Whether subtitles are external subtitles. When bExtSubTitle is HI_TRUE, the subtitles are external. When bExtSubTitle is HI_FALSE, the subtitles are internal. *//**< CNcomment:�Ƿ�Ϊ�����Ļ, HI_TRUEΪ�����Ļ��HI_FALSEΪ������Ļ */
    HI_FORMAT_SUBTITLE_DATA_TYPE_E eSubtitileType;     /**< Subtitle format, such as BMP and string *//**< CNcomment:��Ļ��ʽ����bmp,string */
    HI_CHAR aszSubTitleName[HI_FORMAT_SUB_TITLE_LEN];  /**< Subtitle title *//**< CNcomment:��Ļ���� */
    HI_U16  u16OriginalFrameWidth;                     /**< Width of the original image *//**< CNcomment:ԭʼͼ���� */
    HI_U16  u16OriginalFrameHeight;                    /**< Height of the original image *//**< CNcomment:ԭʼͼ��߶� */
    HI_U16  u16HorScale;                               /**< Horizontal scaling ratio. The value ranges from 0 to 100. *//**< CNcomment:ˮƽ���űȣ�0-100 */
    HI_U16  u16VerScale;                               /**< Vertical scaling ratio. The value ranges from 0 to 100. *//**< CNcomment:��ֱ���űȣ�0-100 */
    HI_U32  u32ExtradataSize;                          /**< Length of the extended data *//**< CNcomment:��չ���ݳ��� */
    HI_U8   *pu8Extradata;                             /**< Extended data *//**< CNcomment:��չ���� */
    HI_U32  u32SubTitleCodeType;                       /**< Encoding type of the subtitle, the value range is as follows:
                                                            1. The default value is 0.
                                                            2. The value of the u32SubTitleCodeType is the identified byte encoding value if the IdentStream byte encoding function (for details about the definition, see hi_charset_common.h) is set.
                                                            3. If the ConvStream function (for details about the definition, see hi_charset_common.h) is set and the invoke interface is called to set the encoding type to be converted by implementing HI_FORMAT_INVOKE_SUB_SET_CODETYPE, the value of the u32SubTitleCodeType is the configured encoding type */
                                                       /**< CNcomment:��Ļ�������ͣ�ȡֵ��Χ����:
                                                            1. Ĭ��ֵΪ0
                                                            2. ���������IdentStream�ַ�����ʶ����
                                                               (�ο�hi_charset_common.h)���������ֵΪʶ������ַ�����ֵ
                                                            3. ���������ConvStreamת�뺯�� (�ο�hi_charset_common.h)��
                                                              ���ҵ���Invoke�ӿ�ִ��HI_FORMAT_INVOKE_SUB_SET_CODETYPE��
                                                              ��Ҫת���ɵı������ͣ���ֵΪ���õı�������*/
    HI_CHAR aszSubtType[HI_FORMAT_SUB_TYPE_LEN];       /**< Type of subtitle. e.g. pgs,srt etc. *//**< CNcomment:��Ļ����,��pgs,srt�ȵ� */
} HI_FORMAT_SUBTITLE_INFO_S;

/** Program information. If a file contains internal subtitles and external subtitles, add the external subtitles to the end of the internal subtitles.
    Note: If a media file does not contain video streams, set videstreamindex to HI_FORMAT_INVALID_STREAM_ID. */
/** CNcomment:��Ŀ��Ϣ������ļ��ȴ�������ĻҲ��������Ļ����������Ļ��Ϣ׷����������Ļ��
    ע: ���ý���ļ�������Ƶ�����轫videstreamindex����ΪHI_FORMAT_INVALID_STREAM_ID */
typedef struct hiFORMAT_PROGRAM_INFO_S
{
    HI_FORMAT_VID_INFO_S stVidStream;                                  /**< Video stream information *//**< CNcomment:��Ƶ����Ϣ */
    HI_U32 u32AudStreamNum;                                            /**< Number of audio streams *//**< CNcomment:��Ƶ������ */
    HI_FORMAT_AUD_INFO_S astAudStream[HI_FORMAT_MAX_STREAM_NUM];       /**< Audio stream information *//**< CNcomment:��Ƶ����Ϣ */
    HI_U32 u32SubTitleNum;                                             /**< Number of subtitles *//**< CNcomment:��Ļ���� */
    HI_FORMAT_SUBTITLE_INFO_S astSubTitle[HI_FORMAT_MAX_LANG_NUM];     /**< Subtitle information *//**< CNcomment:��Ļ��Ϣ */
} HI_FORMAT_PROGRAM_INFO_S;

/** Media file information */
/** CNcomment:ý���ļ���Ϣ */
typedef struct hiFORMAT_FILE_INFO_S
{
    HI_FORMAT_STREAM_TYPE_E eStreamType;                /**< File stream type *//**< CNcomment:�ļ������� */
    HI_S64  s64FileSize;                                /**< File size, in the unit of byte. *//**< CNcomment:�ļ���С����λ�ֽ� */
    HI_S64  s64StartTime;                               /**< Start time of playing a file, in the unit is ms. *//**< CNcomment:�ļ�������ʼʱ�䣬��λms */
    HI_S64  s64Duration;                                /**< Total duration of a file, in the unit of ms. *//**< CNcomment:�ļ���ʱ������λms */
    HI_U32  u32Bps;                                     /**< File bit rate, in the unit of bit/s. *//**< CNcomment:�ļ����ʣ�bit/s */
    HI_CHAR aszFileName[HI_FORMAT_MAX_FILE_NAME_LEN];   /**< File name *//**< CNcomment:�ļ����� */
    HI_CHAR aszAlbum[HI_FORMAT_TITLE_MAX_LEN];          /**< Album *//**< CNcomment:ר�� */
    HI_CHAR aszTitle[HI_FORMAT_TITLE_MAX_LEN];          /**< Title *//**< CNcomment:���� */
    HI_CHAR aszArtist[HI_FORMAT_TITLE_MAX_LEN];         /**< Artist, author *//**< CNcomment:�����ң����� */
    HI_CHAR aszGenre[HI_FORMAT_TITLE_MAX_LEN];          /**< Genre *//**< CNcomment:��� */
    HI_CHAR aszComments[HI_FORMAT_TITLE_MAX_LEN];       /**< Comments *//**< CNcomment:��ע */
    HI_CHAR aszTime[HI_FORMAT_TIME_LEN];                /**< Created time *//**< CNcomment:������� */
    HI_U32  u32ProgramNum;                              /**< Actual number of programs *//**< CNcomment:ʵ�ʽ�Ŀ���� */
    HI_FORMAT_PROGRAM_INFO_S astProgramInfo[HI_FORMAT_MAX_PROGRAM_NUM];    /**< Program information *//**< CNcomment:��Ŀ��Ϣ */
} HI_FORMAT_FILE_INFO_S;

/** Frame data */
/** CNcomment:֡���� */
typedef struct hiFORMAT_FRAME_S
{
    HI_FORMAT_DATA_TYPE_E eType;          /**< Data type *//**< CNcomment:�������� */
    HI_S32  s32StreamIndex;               /**< Stream index *//**< CNcomment:������ */
    HI_BOOL bKeyFrame;                    /**< Whether the frame is a key frame *//**< CNcomment:�Ƿ�Ϊ�ؼ�֡ */
    HI_U32  u32Len;                       /**< Length of frame data, in the unit of byte. This parameter is an input or output parameter in RAW mode. It indicates the number of bytes to be read if it is an input parameter, and indicates the number of
                                                                  bytes that are actually read if it is an output parameter. */
                                          /**< CNcomment:֡���ݳ��ȣ���λ�ֽڣ�����raw��ʽ���ò���Ϊ����/���������
                                                                 ����ΪҪ��ȡ���ֽ��������Ϊʵ�ʶ�ȡ���ֽ��� */
    HI_U8   *pu8Addr;                     /**< Address of the frame data *//**< CNcomment:֡���ݵ�ַ */
    HI_U8   *pu8FrameHeader;              /**< Frame data header address *//**< CNcomment:֡����ǰ��ͷ���ݵ�ַ���������Ҫ��������ΪNULL */
    HI_U32  u32FrameHeaderLen;            /**< Frame data header data length  *//**< CNcomment:֡����ǰ��ͷ���ݳ��� */
    HI_S64  s64Pts;                       /**< Presentation time stamp (PTS), IN the unit of ms. If there is no PTS, it is set to ::HI_FORMAT_NO_PTS. *//**< CNcomment:ʱ�������λms�����û��ʱ���������Ϊ::HI_FORMAT_NO_PTS */
    HI_S64  s64Pos;                       /**< position of this frame in the media file.*//**< CNcomment:��֡������ý���ļ��е��ֽ�ƫ��λ�� */
    HI_U32  u32Duration;                  /**< Display duration, in the unit of ms. It is set to 0 if there is no duration. *//**< CNcomment:��ʾʱ������λms��û��duration������Ϊ0 */
    HI_U32  u32UserData;                  /**< Private data. The DEMUX can transparently transmit private data by using this parameter. *//**< CNcomment:˽�����ݣ�����������ͨ���ò����ش�˽������ */
} HI_FORMAT_FRAME_S;

/** Parameters of the thumbnail */
/** CNcomment:����ͼ���� */
typedef struct hiFORMAT_THUMBNAIL_PARAM_S
{
    HI_FORMAT_THUMB_PIXEL_FORMAT_E thumbPixelFormat;    /**< It is an input parameter. It specifies the picture format of the obtained thumbnail. *//**< CNcomment:�������������ָ����ȡ��������ͼ��ͼ���ʽ */
    HI_S32 thumbnailSize;                               /**< It is an input parameter. It specifies the larger value between the width (tw) and height (th) of the obtained thumbnail.
                                                             Note: The value of thumbnailSize cannot be 0 in rule 1 and rule 2.
                                                             1. If the source video width (w) is greater than height (h), the width (tw) of the obtained thumbnail is thumbnailSize,
                                                               and the height (th) of the obtained thumbnail is (tw x w)/h.
                                                             2. If the source video height (h) is greater than the source picture width (w), the height (th) of the obtained thumbnail is thumbnailSize,
                                                               and the width (tw) of the obtained thumbnail is (th x h)/w.
                                                             3. If thumbnailSize is 0, the width (tw) of the obtained thumbnail is the source video width (w),
                                                               and the height (th) of the obtained thumbnail is the source video height (h).*/
                                                        /**< CNcomment:�������������ָ����ȡ��������ͼ�Ŀ�(tw)�͸�(th)�еĽϴ�ֵ��
                                                             ˵��(����1��2�е�thumbnailSize��ȡֵ��Ϊ0)��
                                                             1.���ԭʼ��Ƶ�Ŀ�(w)���ڸ�(h)�����ȡ��������ͼ�Ŀ�(tw)ΪthumbnailSize,
                                                               ��ȡ��������ͼ�ĸ�(th)Ϊ(tw*w)/h��
                                                             2.���ԭʼ��Ƶ�ĸ�(h)���ڿ�(w)�����ȡ��������ͼ�ĸ�(th)ΪthumbnailSize,
                                                               ��ȡ��������ͼ�Ŀ�(tw)Ϊ(th*h)/w��
                                                             3.�����thumbnailSize��Ϊ0�����ȡ��������ͼ�Ŀ�(tw)Ϊԭʼ��Ƶ�Ŀ�(w)��
                                                               ��ȡ��������ͼ�ĸ�(th)Ϊԭʼ��Ƶ�ĸ�(h). */

    HI_S32 width;                                       /**< It is an output parameter. The width of the obtained thumbnail is returned.*//**< CNcomment:������������ػ�ȡ��������ͼ�Ŀ�� */
    HI_S32 height;                                      /**< It is an output parameter. The height of the obtained thumbnail is returned.*//**< CNcomment:������������ػ�ȡ��������ͼ�ĸ߶� */
    HI_S32 lineSize[HI_FORMAT_THUMBNAIL_PLANAR];        /**<CNcomment: It is an output parameter. The width (in byte) of the block for storing the thumbnail data is returned.
                                                             Note:
                                                             1. For the current picture formats, a maximum of four blocks (HI_FORMAT_THUMBNAIL_PLANAR) are required for storing the picture data.
                                                               lineSize[0] to lineSize[HI_FORMAT_THUMBNAIL_PLANAR-1] indicate the
                                                               block widths (in byte) of block 0 to block (HI_FORMAT_THUMBNAIL_PLANAR-1) respectively.
                                                             2. For the RGB picture, only one block (block 0) is used. In this case, pay attention only to lineSize[0].
                                                             3. For the YUV picture, if the Y, U, and V components are stored in blocks, they are separately stored in a block.
                                                               lineSize[0] to lineSize[2] indicate the width of the blocks that store the Y, U, and V components respectively. */
                                                        /**< CNcomment:����������������ڴ������ͼͼ�����ݵĸ���ƽ��һ����ռ���ֽ�����
                                                             ˵��:
                                                             1.����Ŀǰ���е�ͼ���ʽ�������ҪHI_FORMAT_THUMBNAIL_PLANAR(��4)��ƽ����ͼ�����ݣ�
                                                               lineSize[0]~lineSize[HI_FORMAT_THUMBNAIL_PLANAR-1]�ֱ��ʾ��0~(HI_FORMAT_THUMBNAIL_PLANAR-1)
                                                               ��ƽ��һ����ռ���ֽ�����
                                                             2.����RGB���ͼ���ʽ��ֻʹ����1��ƽ�棬����0��ƽ�棬���ֻ���עlineSize[0]���ɣ�
                                                             3.����YUV���ͼ���ʽ���������ƽ�淽ʽ�洢����Y����������һ��ƽ��洢��U������V����Ҳ����
                                                               ��һ��ƽ��洢����lineSize[0]~lineSize[2]�ֱ��ʾY,U��V����ƽ��һ����ռ���ֽ���. */
    HI_U8  *frameData[HI_FORMAT_THUMBNAIL_PLANAR];      /**< CNcomment: It is an output parameter. The storage address of the thumbnail data in each block is returned.
                                                             Note:
                                                             1. For the current picture formats, a maximum of four blocks (HI_FORMAT_THUMBNAIL_PLANAR) are required for storing the picture data.
                                                               frameData[0] to frameData[HI_FORMAT_THUMBNAIL_PLANAR-1] indicate the storage addresses of the thumbnail data
                                                               in block 0 to block (HI_FORMAT_THUMBNAIL_PLANAR-1) respectively.
                                                             2. For the RGB picture, only one block (block 0) is used. In this case, pay attention only to frameData[0].
                                                             3. For the YUV picture, if the Y, U, and V components are stored in blocks, they are separately stored in a block.
                                                               frameData[0] to frameData[2] indicate the storage addresses of the thumbnail data in the blocks that store the Y, U, and V components respectively.
                                                             4. The storage space for frameData is allocated by the bottom software. After data in the storage space is used up by a program,
                                                               the storage space pointed by frameData must be released by calling the corresponding free interface. If the address of a storage space block is NULL,
                                                               the address is not allocated. You need to check whether the address is NULL before calling the free interface. */
                                                        /**< CNcomment:�����������������ͼͼ�������ڸ���ƽ��Ĵ洢��ַ;
                                                             ˵��:
                                                             1.����Ŀǰ���е�ͼ���ʽ�������ҪHI_FORMAT_THUMBNAIL_PLANAR(��4)��ƽ����ͼ�����ݣ�
                                                               frameData[0]~frameData[HI_FORMAT_THUMBNAIL_PLANAR-1]�ֱ��ʾ����ͼͼ��������
                                                               ��0~(HI_FORMAT_THUMBNAIL_PLANAR-1)��ƽ���ϵĴ洢��ַ��
                                                             2.����RGB���ͼ���ʽ��ֻʹ����1��ƽ�棬����0��ƽ�棬���ֻ���עframeData[0]���ɣ�
                                                             3.����YUV���ͼ���ʽ���������ƽ�淽ʽ�洢����Y����������һ��ƽ��洢��U������V����Ҳ����
                                                               ��һ��ƽ��洢����frameData[0]~frameData[2]�ֱ��ʾ����ͼͼ��������Y,U��V����ƽ���ϵĴ洢��ַ;
                                                             4.frameData�Ĵ洢�ռ����ɵײ����ģ��û�������ʹ����frameData����Ҫʹ��free�ͷ�frameDataָ���
                                                               �洢�ռ䣻frameData��û��ʹ�õĲ���ΪNULL�����freeǰ������ж��Ƿ�ΪNULL. */
} HI_FORMAT_THUMBNAIL_PARAM_S;

/** Protocol (such as file protocol and HTTP) API */
/** CNcomment:Э�飨�磺file��http��API */
typedef struct hiFORMAT_PROTOCOL_FUN_S
{
    /**
    \brief Check whether the entered protocol is supported. CNcomment:���������Э���Ƿ�֧�� CNend
    \attention \n
    None
    \param[in] pszUrl file URL, such as http://. CNcomment:�ļ�url����http:// CNend

    \retval ::HI_SUCCESS The protocol is supported. CNcomment:֧�ָ�Э�� CNend
    \retval ::HI_FAILURE The protocol is not supported. CNcomment:��֧�ָ�Э�� CNend

    \see \n
    None
    */
    HI_S32 (*url_find)(const HI_CHAR *pszUrl);

    /**
    \brief Open a file. CNcomment:���ļ� CNend
    \attention \n
    None
    \param [in]  pszUrl URL address. CNcomment:url��ַ CNend
    \param [in]  eFlag open mode. CNcomment:�򿪷�ʽ CNend
    \param [out] pUrlHandle protocol handle. CNcomment:Э���� CNend

    \retval ::HI_SUCCESS The file is successfully opened and the handle is valid. CNcomment:�ļ��򿪳ɹ��������Ч CNend
    \retval ::HI_FAILURE The file fails to be opened. CNcomment:�ļ���ʧ�� CNend

    \see \n
    None
    */
    HI_S32 (*url_open)(const HI_CHAR *pszUrl, HI_FORMAT_URL_OPENFLAG_E eFlag, HI_HANDLE *pUrlHandle);

    /**
    \brief Read data of the specified size. CNcomment:��ȡָ����С���� CNend
    \attention \n
    None
    \param [in] urlHandle file handle. CNcomment:�ļ���� CNend
    \param [in] s32Size size of the read data, in the unit of byte. CNcomment:��ȡ�����ݴ�С���ֽ�Ϊ��λ CNend
    \param [out] pu8Buf data storage buffer. CNcomment:���ݴ洢���� CNend

    \retval ::Number greater than 0: The returned value indicates the number of read bytes, if less than s32Size, indicate the file ends.
                CNcomment:>0 ���ص�ֵ�Ƕ�ȡ���ֽ��������ʵ�ʶ�ȡ���ֽ���С��s32Size�������ļ����� CNend
    \retval ::HI_FAILURE The file ends. CNcomment:�ļ����� CNend

    \see \n
    None
    */
    HI_S32 (*url_read)(HI_HANDLE urlHandle, HI_U8 *pu8Buf, HI_S32 s32Size);

    /**
    \brief Seek to a specified location. HI_FAILURE is returned if the file does not support seek operations. CNcomment:seek��ָ��λ�ã����ڲ�֧��seek���ļ�������HI_FAILURE�� CNend
    \attention \n
    None
    \param [in] urlHandle file handle. CNcomment:�ļ���� CNend
    \param [in] s64Offsets number of sought bytes. CNcomment:seek�ֽ��� CNend
    \param [in] s32Whence seeking flag. SEEK_CUR indicates seeking after s64Offsets is deviated from the current location,
                SEEK_SET indicates seeking from the start location, SEEK_END indicates seeking from the end location and HI_FORMAT_SEEK_FILESIZE return the file size.
                CNcomment:seek��ʾ��SEEK_CUR�ӵ�ǰλ��ƫ��s64Offsets,SEEK_SET����ʼλ��ƫ��s64Offsets, SEEK_END���ļ�βƫ��s64Offsets,
                HI_FORMAT_SEEK_FILESIZE�����ļ���С�� CNend
    \retval ::Value other than HI_FAILURE: It indicates the number of start offset bytes in the file . CNcomment:��HI_FAILURE �ļ���ʼƫ���ֽ��� CNend
    \retval ::HI_FAILURE The seeking fails. CNcomment:seekʧ�� CNend

    \see \n
    None
    */
    HI_S64 (*url_seek)(HI_HANDLE urlHandle, HI_S64 s64Offsets, HI_S32 s32Whence);

    /**
    \brief Destroy the file handle. CNcomment:�����ļ���� CNend
    \attention \n
    None
    \param [in] urlHandle file handle. CNcomment:�ļ���� CNend

    \retval ::HI_SUCCESS The file handle is destroyed. CNcomment:�ļ�������ٳɹ� CNend
    \retval ::HI_FAILURE The parameter is invalid. CNcomment:�����Ƿ� CNend

    \see \n
    None
    */
    HI_S32 (*url_close)(HI_HANDLE urlHandle);

    /**
    \brief Seek a specified stream.  CNcomment:seekָ������ CNend
    \attention \n
    None
    \param [in] urlHandle file handle. CNcomment:�ļ���� CNend
    \param [in] s32StreamIndex stream index. CNcomment:������ CNend
    \param [in] s64Timestamp PTS, in the unit of ms. CNcomment:ʱ�������λms CNend
    \param [in] eFlags seeking flag. CNcomment:seek��� CNend

    \retval ::HI_SUCCESS The seeking is successful. CNcomment:seek�ɹ� CNend
    \retval ::HI_FAILURE The seeking fails. CNcomment:seekʧ�� CNend

    \see \n
    None
    */
    HI_S32 (*url_read_seek)(HI_HANDLE urlHandle, HI_S32 s32StreamIndex, HI_S64 s64Timestamp, HI_FORMAT_SEEK_FLAG_E eFlags);
    /**
    \brief invoke operation. CNcomment:invoke���� CNend
    \attention \n
    None
    \param [in] urlHandle file handle. CNcomment:�ļ���� CNend
    \param [in] u32InvokeId The value of the command is the type of HI_FORMAT_INVOKE_ID_E. The type of HI_FORMAT_INVOKE_ID_E only supports HI_FORMAT_INVOKE_PRE_CLOSE_FILE and HI_FORMAT_INVOKE_USER_OPE.
                CNcomment:ֵΪ::HI_FORMAT_INVOKE_ID_E����, ��֧��HI_FORMAT_INVOKE_PRE_CLOSE_FILE/HI_FORMAT_INVOKE_USER_OPE CNend
    \param [in] pArg the parameter corresponding to the invoke operation. CNcomment:invoke�������Ĳ��� CNend

    \retval ::HI_SUCCESS The operation is successful. CNcomment:�ɹ� CNend
    \retval ::HI_FAILURE The operation fails. CNcomment:ʧ�� CNend

    \see \n
    None
    */
    HI_S32 (*url_invoke)(HI_HANDLE urlHandle, HI_U32 u32InvokeId, HI_VOID *pArg);
} HI_FORMAT_PROTOCOL_FUN_S;

/** File DEMUX application programming interface (API) */
/** CNcomment:�ļ�������API */
typedef struct hiFORMAT_DEMUXER_FUN_S
{
    /**
    \brief Check whether the entered file format is supported. The value 0 indicates that the file format is supported and other values indicate that the file format is not supported.
           CNcomment:����������ļ���ʽ�Ƿ�֧�֣�����0֧�֣�������֧�� CNend
    \attention \n
    None
    \param [in] pszFileName file name, that is, path+file name. CNcomment:�ļ����ƣ�·��+�ļ��� CNend
    \param [in] pstProtocol interface of the protocol. The URL can be open and the file data can be read by using this interface. CNcomment:Э������ӿڣ�ͨ���ýӿڿ��Դ�url����ȡ�ļ����� CNend

    \retval ::HI_SUCCESS The file format is supported. CNcomment:֧�ָ��ļ���ʽ CNend
    \retval ::HI_FAILURE The file format is not supported. CNcomment:��֧�ָ��ļ���ʽ CNend

    \see \n
    None
    */
    HI_S32 (*fmt_find)(const HI_CHAR *pszFileName, const HI_FORMAT_PROTOCOL_FUN_S *pstProtocol);

    /**
    \brief Open a specified file. CNcomment:��ָ���ļ� CNend
    \attention \n
    None
    \param [in] pszFileName file path. CNcomment:�ļ�·�� CNend
    \param [in] pstProtocol protocol operation interface. You can specify the protocol operation interface by using this parameter if no protocol operation interface is configured for a registered dynamic link library (DLL).
                CNcomment:Э������ӿڣ�ע��Ķ�̬�����û��Э������ӿڿ���ͨ���÷�ʽָ�� CNend
    \param [out] pFmtHandle handle of the output file DEMUX. CNcomment:����ļ���������� CNend

    \retval ::HI_SUCCESS The file is opened successfully and the DEMUX handle is valid. CNcomment:�ļ��򿪳ɹ��������������Ч CNend
    \retval ::HI_FAILURE The file fails to be opened. CNcomment:�ļ���ʧ�� CNend

    \see \n
    None
    */
    HI_S32 (*fmt_open)(const HI_CHAR *pszFileName, const HI_FORMAT_PROTOCOL_FUN_S *pstProtocol, HI_HANDLE *pFmtHandle);

    /**
    \brief Look up the streams in the file. CNcomment:�����ļ��е�����Ϣ CNend
    \attention \n
    the function must return success if do nothing.  its calling process will be:
    1. Open a file by calling the fmt_open function.
    2. Look up the streams information by calling the fmt_find_stream.
    3. The file can be opened successfully only when the functions return HI_SUCCESS.
    CNcomment:�ýӿ������ʵ�֣��������ر���ΪHI_SUCCESS��HiPlayer������������:
    1. �ȵ���fmt_open������һ���ļ����
    2. �ٵ���fmt_find_stream�����ļ�����Ϣ
    3. ֻ��fmt_open,fmt_find_stream����������HI_SUCCESS������Ϊ�ļ��򿪳ɹ� CNend

    \param [in] fmtHandle file handle returned by the functions. CNcomment:fmt_open�������ص��ļ���� CNend
    \param [in] pArg expand parameter. CNcomment:��չ���� CNend

    \retval ::HI_SUCCESS get the valid stream information successfully. CNcomment:�ļ�������Ч������Ƶ����Ļ����Ϣ CNend
    \retval ::HI_FAILURE no stream in the file. The file cannot be played. CNcomment:�ļ���û���κ�����Ϣ�����ļ����ɲ��� CNend

    \see \n
    None
    */
    HI_S32 (*fmt_find_stream)(HI_HANDLE fmtHandle, HI_VOID *pArg);

    /**
    \brief Obtain the file information. Set streamindex to HI_FORMAT_INVALID_STREAM_ID if a media file does not contain video streams.
           CNcomment:��ȡ�ļ���Ϣ�����ý���ļ�������Ƶ�������轫��Ƶstreamindex����ΪHI_FORMAT_INVALID_STREAM_ID CNend
    \attention \n
    None
    \param [in] fmtHandle file handle. CNcomment:�ļ���� CNend
    \param [out] pstFmtInfo file information. CNcomment:�ļ���Ϣ CNend

    \retval ::HI_SUCCESS The operation is successful. CNcomment:�����ɹ� CNend
    \retval ::HI_FAILURE The parameters are invalid. CNcomment:�����Ƿ� CNend

    \see \n
    None
    */
    HI_S32 (*fmt_getinfo)(HI_HANDLE fmtHandle, HI_FORMAT_FILE_INFO_S *pstFmtInfo);

    /**
    \brief Read one frame data. The read data must be released by calling the fmt_free interface. CNcomment:��ȡһ֡���ݣ���ȡ���ݱ������fmt_free�ͷ� CNend
    \attention \n
    If the read frame data has no PTS, set the PTS to HI_FORMAT_NO_PTS.  CNcomment:��ȡ��֡�������û��ʱ�������ʱ���ֵ����ΪHI_FORMAT_NO_PTS CNend
    \param [in] fmtHandle file DEMUX handle. CNcomment:�ļ���������� CNend
    \param [in/out] pstFmtFrame media data. CNcomment:ý��������Ϣ CNend

    \retval ::HI_SUCCESS The operation is successful. CNcomment:�����ɹ� CNend
    \retval ::HI_FAILURE The parameters are invalid. CNcomment:�����Ƿ� CNend
    \retval ::HI_FORMAT_ERRO_ENDOFFILE The file ends. CNcomment:�ļ����� CNend

    \see \n
    None
    */
    HI_S32 (*fmt_read)(HI_HANDLE fmtHandle, HI_FORMAT_FRAME_S *pstFmtFrame);

    /**
    \brief Release frame data. CNcomment:�ͷ�֡���� CNend
    \attention \n
    None
    \param [in] fmtHandle file DEMUX handle. CNcomment:�ļ���������� CNend
    \param [in] pstFmtFrame media data read by the fmt_read interface. CNcomment:fmt_read�ӿڶ�ȡ��ý��������Ϣ CNend

    \retval ::HI_SUCCESS The operation is successful. CNcomment:�����ɹ� CNend
    \retval ::HI_FAILURE The parameters are invalid. CNcomment:�����Ƿ� CNend

    \see \n
    None
    */
    HI_S32 (*fmt_free)(HI_HANDLE fmtHandle, HI_FORMAT_FRAME_S *pstFmtFrame);

    /**
    \brief Invoke the interface with the DEMUX and protocol. CNcomment:���������Э�齻�������ӿ� CNend
    \attention \n
    None
    \param [in] fmtHandle handle of the DEMUX. CNcomment:�ļ���������� CNend
    \param [in] u32InvokeId command of invoking. The value is HI_FORMAT_INVOKE_ID_E. CNcomment:�������ֵΪHI_FORMAT_INVOKE_ID_E CNend
    \param [in/out] pArg the parameter corresponding to the command. CNcomment:�����Ӧ�Ĳ��� CNend

    \retval ::HI_SUCCESS The invoke operation is successful. CNcomment:�����ɹ� CNend
    \retval ::HI_FAILURE The parameter is invalid. CNcomment:�����Ƿ� CNend

    \see \n
    None
    */
    HI_S32 (*fmt_invoke)(HI_HANDLE fmtHandle, HI_U32 u32InvokeId, HI_VOID *pArg);

    /**
    \brief Seek frame data in a file based on the entered PTS. Seek frame data in a sequence from the current location to the file header if s64pts is set to 0.
           CNcomment:seek��ָ��pts��s64ptsΪ0��ʾseek���ļ�ͷ CNend
    \attention \n
    None
    \param [in] fmtHandle file DEMUX handle. CNcomment:�ļ���������� CNend
    \param [in] s32StreamIndex stream index. CNcomment:������ CNend
    \param [in] s64Pts PTS, in the unit of ms. CNcomment:ʱ�������λms CNend
    \param [in] eFlag seeking flag. CNcomment:seek��� CNend

    \retval ::HI_SUCCESS The operation is successful. CNcomment:�����ɹ� CNend
    \retval ::HI_FAILURE The seeking operation is not supported. CNcomment:��֧��seek���� CNend
    \retval ::HI_FORMAT_ERRO_ENDOFFILE end of file. CNcomment:�ļ����� CNend

    \see \n
    None
    */
    HI_S32 (*fmt_seek_pts)(HI_HANDLE fmtHandle, HI_S32 s32StreamIndex, HI_S64 s64Pts, HI_FORMAT_SEEK_FLAG_E eFlag);

    /**
    \brief Seek frame data in a file by deviating s64Offsets from the current location if s32Whence is set to SEEK_CUR, by deviating s64Offsets from the file header if
s32Whence is set to SEEK_SET, and by deviating s64Offsets from the end of the file if s32Whence is set to SEEK_END. Jumping can be implemented by using this interface for pure audio or video files.
CNcomment:seek��ָ��λ�ֽ�����λ�ã������������ļ�������ͨ���ýӿ�ʵ����Ծ CNend
    \attention \n
    None
    \param [in] fmtHandle file DEMUX handle. CNcomment:�ļ���������� CNend
    \param [in] s64Offsets number of sought bytes. CNcomment:seek�ֽ��� CNend
    \param [in] s32Whence seek flag, such as SEEK_CUR. CNcomment:seek��ʾ����SEEK_CUR CNend

    \retval ::Value other than HI_FAILURE: It indicates the number of bytes deviated by the file pointer after seeking. CNcomment:��HI_FAILURE seek���ļ�ָ��ƫ���ֽ��� CNend
    \retval ::HI_FAILURE The seeking operation is not supported. CNcomment:��֧��seek���� CNend
    \retval ::HI_FORMAT_ERRO_ENDOFFILE end of file. CNcomment:�ļ����� CNend

    \see \n
    None
    */
    HI_S64 (*fmt_seek_pos)(HI_HANDLE fmtHandle, HI_S64 s64Offsets, HI_S32 s32Whence);

    /**
    \brief Disable the file DEMUX. CNcomment:�ر��ļ������� CNend
    \attention \n
    None
    \param [in] fmtHandle file DEMUX handle. CNcomment:�ļ���������� CNend

    \retval ::HI_SUCCESS The operation is successful. CNcomment:�����ɹ� CNend
    \retval ::HI_FAILURE The parameter is invalid. CNcomment:�����Ƿ� CNend

    \see \n
    None
    */
    HI_S32 (*fmt_close)(HI_HANDLE fmtHandle);
} HI_FORMAT_DEMUXER_FUN_S;

/** The file parsing component, protocol component parameters, file DEMUX, and protocol components must implement functions defined in the structure.
  * Attributes such as the DEMUX name, supported file format, and version number must be specified.
  * The dlsym system function can be used to
  * Export the global symbol of the structure defined in the file DEMUX.
  * The attribute value of the symbol cannot be changed externally.
  * Example: The following variables are defined in the DEMUX:
  * HI_FORMAT_S g_stFormat_entry = {
  *     .pszDllName           = (const HI_PCHAR )"libavformat.so",
  *     .pszFormatName        = "asf,mp4,avi,smi,srt",
  *     .pszProtocolName      = "http,udp,file",
  *     .pszFmtDesc           = (const HI_PCHAR)"hisilicon avformat",
  *     .u32Merit             = 0;
  *     .stDEMUXFun.fmt_open             = ... ,
  *     .stDEMUXFun.fmt_getinfo          = ... ,
  *     .stDEMUXFun.fmt_read             = ... ,
  *     .stDEMUXFun.fmt_free             = ... ,
  *     .stDEMUXFun.fmt_close            = ... ,
  *     .stDEMUXFun.fmt_seek_pts         = ... ,
  *     .stDEMUXFun.fmt_seek_pos         = ... ,
  *
  *     .stProtocolFun.url_open            = ... ,
  *     .stProtocolFun.url_read            = ... ,
  *     .stProtocolFun.url_seek            = ... ,
  *     .stProtocolFun.url_close           = ... ,
  *     .stProtocolFun.url_read_seek       = ... ,
  * };
  *
  * Application (APP) loading mode:
  *
  * HI_FORMAT_S *pstEntry = NULL;
  * pstEntry = dlsym(pDllModule, "g_stFormat_entry");
  *
  * Calling mode:
  * pstEntry->fmt_open();
  *
  */

/** CNcomment:�ļ����������Э������������ļ���������Э���������ʵ��
  * �ṹ���ж���ĺ�������ָ�����������ƣ�
  * ֧�ֵ��ļ���ʽ���汾�ŵ����ԣ�ͨ��dlsym
  * ϵͳ�����ܵ����ļ��������ж���ĸý�
  * ����ȫ�ַ��ţ��ⲿ�����޸ĸ÷��ŵ�����ֵ��
  * ����ʾ��: �������ж������±�����
  * HI_FORMAT_S g_stFormat_entry = {
  *     .pszDllName           = (const HI_PCHAR )"libavformat.so",
  *     .pszFormatName        = "asf,mp4,avi,smi,srt",
  *     .pszProtocolName      = "http,udp,file",
  *     .pszFmtDesc           = (const HI_PCHAR)"hisilicon avformat",
  *     .u32Merit             = 0;
  *     .stDemuxerFun.fmt_open             = ... ,
  *     .stDemuxerFun.fmt_getinfo          = ... ,
  *     .stDemuxerFun.fmt_read             = ... ,
  *     .stDemuxerFun.fmt_free             = ... ,
  *     .stDemuxerFun.fmt_close            = ... ,
  *     .stDemuxerFun.fmt_seek_pts         = ... ,
  *     .stDemuxerFun.fmt_seek_pos         = ... ,
  *
  *     .stProtocolFun.url_open            = ... ,
  *     .stProtocolFun.url_read            = ... ,
  *     .stProtocolFun.url_seek            = ... ,
  *     .stProtocolFun.url_close           = ... ,
  *     .stProtocolFun.url_read_seek       = ... ,
  * };
  *
  * APP���ط�ʽ����:
  *
  * HI_FORMAT_S *pstEntry = NULL;
  * pstEntry = dlsym(pDllModule, "g_stFormat_entry");
  *
  * ���÷�ʽ:
  * pstEntry->fmt_open();
  * 
  */

/** File DEMUX attributes */
/** CNcomment:�ļ����������� */
typedef struct hiFORMAT_S
{
    /**< DEMUX name */
    /**< CNcomment:���������� */
    const HI_CHAR *pszDllName;

    /**< File formats supported by the DEMUX. The file formats are separated by commas (,). */
    /**< CNcomment:������֧�ֵ��ļ���ʽ�������ļ���ʽ��","Ϊ��� */
    const HI_CHAR *pszFormatName;

    /**< Supported protocols. The protocols are separated by commas (,). */
    /**< CNcomment:֧�ֵ�Э�飬����Э����","Ϊ��� */
    const HI_CHAR *pszProtocolName;

    /**< DEMUX version */
    /**< CNcomment:�������汾�� */
    const HI_FORMAT_LIB_VERSION_S stLibVersion;

    /**< DEMUX description */
    /**< CNcomment:���������� */
    const HI_CHAR *pszFmtDesc;

    /**< Priority. The value ranges from 0x0 to 0xFFFFFFFF. 0xFFFFFFFF indicates the highest priority. This attribute is invalid. */
    /**< CNcomment:���ȼ�����0x0 - 0xFFFFFFFF��0xFFFFFFFF���ȼ���ߣ���������Ч */
    HI_U32 u32Merit;

   /**< Access interface of the file DEMUX. The implementation of the file DEMUX must comply with the following rules:
          1. For operations, such as opening, reading, and closing a file (fopen or fclose on local files).
             the access interface of the file DEMUX can be specified externally and can be adapted by using the following URL operation interface. */
    /**< CNcomment:�ļ����������ʽӿڣ��ļ�������ʵ�ֱ�����ѭ���¹���:
         1�������ļ��򿪡���ȡ���رյȲ���������ڱ����ļ���fopen/fclose�ȣ�
            �������ⲿָ�����ҿ������·���url�����ӿ����� */

    HI_FORMAT_DEMUXER_FUN_S stDemuxerFun;

    /**< Protocol access interface. The interface complies with the following rules:
         1. This parameter must be set to NULL if the file DEMUX does not implement the protocol access interface.
         2. This parameter can be specified externally. That is, the file DEMUX does not need to implement this interface.
            An interface specified externally is used for file operations during parsing. */
    /**< CNcomment:Э����ʽӿڣ��ýӿ���ѭ���¹���:
         1������ļ�������û��ʵ�ָýӿڣ����뽫�ò�������ΪNULL;
         2���ò����������ⲿָ������: �ļ����������Բ�ʵ�ָýӿڣ�
            �ڽ������̶��ļ��Ĳ���ʹ���ⲿָ���ӿ�; */

    HI_FORMAT_PROTOCOL_FUN_S stProtocolFun;

    struct hiFORMAT_S *next;

    /**< DLL handle of the DEMUX */
    /**< CNcomment:��������̬���� */
    HI_VOID  *pDllModule;

    /**< Private data */
    /**< CNcomment:˽������ */
    HI_U32 u32PrivateData;
} HI_FORMAT_S;

/** @}*/  /** <!-- ==== Structure Definition End ====*/

#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif /* __cplusplus */

#endif /* __HI_SVR_FORMAT_H__ */
