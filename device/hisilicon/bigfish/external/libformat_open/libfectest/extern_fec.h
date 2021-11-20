#ifndef __SVR_EXTERN_FEC_H__
#define __SVR_EXTERN_FEC_H__


#ifdef __cplusplus
#if __cplusplus
extern "C" {
#endif
#endif /* __cplusplus */

void fec_init_adp(int data_pkt_num, int fec_pkt_num, int data_len);
void fec_cleanup_adp();
int fec_decode_adp(unsigned char **data, unsigned char **fec_data, int lost_map[]);

#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif /* __cplusplus */

#endif

