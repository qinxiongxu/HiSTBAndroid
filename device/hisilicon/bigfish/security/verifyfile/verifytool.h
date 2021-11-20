#ifndef __VERIFYTOOL_H__
#define __VERIFYTOOL_H__

#ifdef __cplusplus
extern "C"{
#endif
int verifySignRSA(unsigned char* hash, unsigned char* sign, unsigned char* rsaKey);

void SHA256( const unsigned char *input, int len, unsigned char* output);

#ifdef __cplusplus
}
#endif

#endif