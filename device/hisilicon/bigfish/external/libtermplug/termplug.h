/*
 * [ libtermplug ]
 * [����]��У����
 * [��;]���������ʵ��У��
 * [ע���]�� libtermplug.so�����Ԥװ��/system/libĿ¼�£�
 * 20150317 ��ʽ�汾
 */


#ifndef LIBTERMPLUG_H
#define LIBTERMPLUG_H

#ifdef __cplusplus
extern "C" {
#endif

	/*
	 * �������ʵ��У��
	 * ���룺url, ip
	 * �����0,У��ɹ�; -93001��У��ʧ�ܡ�
	 */
	int verify(const char*url, int urlLen, const char *ip, int ipLen);

#ifdef __cplusplus
}
#endif
#endif
