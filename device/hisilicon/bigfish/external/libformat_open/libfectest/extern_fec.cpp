#include <stdio.h>
#include "RS_fec.h"

static RS_fec* p = NULL;

extern "C" void fec_init_adp(int data_pkt_num, int fec_pkt_num, int data_len){
	if( NULL == p ){
		p = new RS_fec();
    }
    return p->fec_init(data_pkt_num, fec_pkt_num, data_len);
}
extern "C" void fec_cleanup_adp(){
	if( NULL != p){
        p->fec_cleanup();
        delete p;
        p = NULL;
	}
}
extern "C" int fec_decode_adp(unsigned char **data, unsigned char **fec_data, int lost_map[]){
	if( NULL != p){
        return p->fec_decode(data,fec_data,lost_map);
	} else {
        return -1;
    }
}


