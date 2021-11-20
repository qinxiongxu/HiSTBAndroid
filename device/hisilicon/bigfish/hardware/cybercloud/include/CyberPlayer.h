/**
 * @brief    播放Porting头文件
 * @author   邱亭
 * @version
 * @date     2016.04.11
 */

typedef void* CyberCloud_AVHandle;

typedef enum
{
    CyberCloud_ES = 1,
    CyberCloud_TS = 2,
} CyberCloud_DateType;

typedef struct
{
    int uFrequency;        ///<频率，单位：MHz
    int uSymbolRate;       ///<符号率，单位：KSymbol/s
    int uModulationType;   ///<调制方式
} Freq_Param;

typedef struct
{
    int uVideoType;                ///<视频类型
    int uVideoPid;                 ///<视频PID
    int uAudioType;                ///<音频类型
    int uAudioPid;                 ///<音频PID
    int uPcrPid;                   ///<PCR PID
} Pid_Param;

/// 调制方式
typedef enum
{
    SDK_ModType_QAM16 = 1,     ///<16 QAM
    SDK_ModType_QAM32,          ///<32 QAM
    SDK_ModType_QAM64,         ///<64 QAM
    SDK_ModType_QAM128,        ///<128 QAM
    SDK_ModType_QAM256         ///<256 QAM
} C_SDK_ModulationType;

/// 视频类型
typedef enum
{
    SDK_VideoType_NONE  = -1,
    SDK_VideoType_MPEG2 = 1,
    SDK_VideoType_H264 = 2,
    SDK_VideoType_HEVC = 3
} C_SDK_VideoType;

/// 音频类型
typedef enum
{
    SDK_AudioType_NONE  = -1,
    SDK_AudioType_MPEG2 = 1,
    SDK_AudioType_MP3 = 2,
    SDK_AudioType_MPEG2_AAC = 3,
    SDK_AudioType_AC3 = 4
} C_SDK_AudioType;

typedef enum
{
	SDK_FMT_1080P_60 = 0,     /**<1080p 60 Hz*/
    SDK_FMT_1080P_50,         /**<1080p 50 Hz*/
    SDK_FMT_1080P_30,         /**<1080p 30 Hz*/
    SDK_FMT_1080P_25,         /**<1080p 25 Hz*/
    SDK_FMT_1080P_24,         /**<1080p 24 Hz*/

    SDK_FMT_1080i_60,         /**<1080i 60 Hz*/
    SDK_FMT_1080i_50,         /**<1080i 60 Hz*/

    SDK_FMT_720P_60,          /**<720p 60 Hz*/
    SDK_FMT_720P_50,          /**<720p 50 Hz */

    SDK_FMT_576P_50,          /**<576p 50 Hz*/
    SDK_FMT_480P_60,          /**<480p 60 Hz*/
}C_SDK_DISP_FORMAT;
/*
 * note: 播放初始化接口
 * param:
 * return：
 *		返回值为空:代表播放器创建失败
 *		非空:播放器句柄
 */
CyberCloud_AVHandle CyberAVInit(CyberCloud_DateType type, C_SDK_DISP_FORMAT format);

/*
 *	note:播放器去初始化接口
 *	return:
 *		0:   成功
 *		非0: 失败
 */
int CyberAVUnInit(CyberCloud_AVHandle handle);

/*
 *	note:设置屏幕的位置
 *	param:
 *		x: x坐标
 *		y: y坐标
 *		width:宽度
 *		heigth:高度
 *	return:
 *		0:	 成功
 *		非0：失败
 */
int CyberSetScreen(CyberCloud_AVHandle handle, int x, int y, int width, int height);

/*
*	note:设置handle为Top窗口(相对于其他视频窗口，如果只有一个视频窗口，该接口可直接返回)
*	param: handle
*	return:
*		0:	 成功
*		非0：失败
*/
int CyberAVSetFrontWindow(CyberCloud_AVHandle handle);
/*
 * note: 设置TS参数接口
 * param：
 *	   videoType:视频格式
 *			1：Mpeg2格式
 *			2：H264格式
 *	   audioType：音频格式
 *			1：Mpeg2格式
 *			2：Mp3格式
 *			3：AAC格式
 *	   videoPID：视频PID
 *	   audioPID: 音频PID
 * return：
 *		0：   成功
 *		非0： 失败
 */
int CyberAVTsSetParam(CyberCloud_AVHandle handle, C_SDK_VideoType videoType, int videoPID, C_SDK_AudioType audioType,
                                      int audioPID);

/*
 * note: Ts数据播放接口
 * param：
 *	   data:Ts数据内容
 *	   len:Ts数据长度
 * return：
 *		非0:代表成功
 *		0：代表数据处理失败
 */
int CyberAVPlayTs(CyberCloud_AVHandle handle, void* data, int len);

/*
 * note: 停止播放接口
 * param：
 *	   gClearIframe：是否保留最后一帧。
 *			0:清除最后一帧
 *			1:保留最后一帧
 * return:
 *		0:   成功
 *		非0：失败
 */
int CyberAVStop(CyberCloud_AVHandle handle, int gClearIframe);

/*
 *note：通过节目号播放接口
 *param:
 *	pTs:    频点信息
 *	uProgNo:播放的节目号
 *return:
 *	0:	 播放成功
 *	非0：播放失败
 *
 */
int CyberAVPlayByProNo(CyberCloud_AVHandle handle, Freq_Param const *pTs, int uProgNo);

/*
 *note：通过Pid播放接口
 *param:
 *	pTs:     频点信息
 *	pidParam:Pid参数信息
 *return:
 *	0:	 播放成功
 *	非0：播放失败
 *
 */
int CyberAVPlayByPid(CyberCloud_AVHandle handle, Freq_Param const *pTs, Pid_Param* pidParam);

/*
 *note:设置VideoEs参数接口
 *param:
 *	video_pid: 视频pid
 *	videoType:视频类型
 *		1：Mpeg2格式
 *		2：H264格式
 *return:
 *		0:   成功
 *       非0：失败
 */
int CyberAVEsSetVideoParam(CyberCloud_AVHandle handle, C_SDK_VideoType videoType);

/*
 * note: VideoEs数据播放接口
 * param：
 *	   data:Es数据内容
 *	   len:Es数据长度
 * return：
 *		0:代表成功
 *		非0：代表数据处理失败
 */
int CyberAVPlayEsVideo(CyberCloud_AVHandle handle, void* data, int len);

/*
 *note:设置AudioEs参数接口
 *param:
 *	audio_pid:音频pid
 *	audioType:音频类型
 *			1：Mpeg2格式
 *			2：Mp3格式
 *			3：AAC格式
 *	其他参数不需要处理
 *	width: 视频宽
 *	height:视频高
 *return:
 *		0:   成功
 *       非0：失败
 */
int CyberAVEsSetAudioParam(CyberCloud_AVHandle handle, C_SDK_AudioType audioType, int sampleRateInHz,
                                           int channelConfig,
                                           int audioFormat);

/*
 * note: AudioEs数据播放接口
 * param：
 *	   data:Es数据内容
 *	   len:Es数据长度
 * return：
 *		0:代表成功
 *		非0：代表数据处理失败
 */
int CyberAVPlayEsAudio(CyberCloud_AVHandle handle, void* data, int len);

/*
 * note:
 * param：
 *	   uDecoderType 解码器类型。1：视频；２：音频。(目前只会获取视频的解码状态)
 * return：
 *		0:代表解码正常
 *		非0:代表解码异常
 */
int CyberAVGetStatus(CyberCloud_AVHandle handle, int uDecoderType);
