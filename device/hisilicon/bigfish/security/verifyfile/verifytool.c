#include <stdio.h>
#include "sha256.h"
#include "rsa.h"
#include "verifytool.h"

#define SHA256_LEN    (0x20)
#if 0
#define LOGI(...) fprintf(stdout, "I:" __VA_ARGS__)
#define LOGE(...) fprintf(stdout, "E:" __VA_ARGS__)
#else
#define LOGI(...)
#define LOGE(...) fprintf(stdout, "E:" __VA_ARGS__)
#endif

static int setRsaKey(rsa_context *rsa, unsigned char* rsaKey)
{
    int ret = 0;
    rsa_init( rsa, RSA_PKCS_V15, 0 );
    /* get N and E */
    ret = mpi_read_binary( &rsa->N, rsaKey, 0x100);
    ret |= mpi_read_binary( &rsa->E, rsaKey + 0x100, 0x100);
    rsa->len = ( mpi_msb( &rsa->N ) + 7 ) >> 3;
    return ret;
}

int verifySignRSA(unsigned char* hash, unsigned char* sign, unsigned char* rsaKey)
{
    int i = 0;
    int ret = -1;
    rsa_context key = {0};
    ret = setRsaKey(&key, rsaKey);
    if (ret != 0) {
        LOGE("set rsa key fail.\n");
        return -1;
    }
    LOGI("verifySignRSA begin\n");
    ret = rsa_pkcs1_verify( &key, RSA_PUBLIC, SIG_RSA_SHA256, SHA256_LEN, hash, sign);
    if (ret != 0){
        LOGE("rsa_pkcs1_verify fail.\n");
        return -1;
    }
    LOGI("verifySignRSA end, ret = %d\n", ret);
    return ret;
}

void SHA256( const unsigned char *input, int len, unsigned char* output)
{
    sha256(input, len, output, 0);
    return;
}