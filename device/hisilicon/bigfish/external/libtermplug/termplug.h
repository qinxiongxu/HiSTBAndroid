/*
 * [ libtermplug ]
 * [名称]：校验插件
 * [用途]：服务端真实性校验
 * [注意点]： libtermplug.so库必须预装在/system/lib目录下；
 * 20150317 正式版本
 */


#ifndef LIBTERMPLUG_H
#define LIBTERMPLUG_H

#ifdef __cplusplus
extern "C" {
#endif

	/*
	 * 服务端真实性校验
	 * 输入：url, ip
	 * 输出：0,校验成功; -93001，校验失败。
	 */
	int verify(const char*url, int urlLen, const char *ip, int ipLen);

#ifdef __cplusplus
}
#endif
#endif
