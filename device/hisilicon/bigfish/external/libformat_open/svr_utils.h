#ifndef SVR_UTILS_H
#define SVR_UTILS_H

typedef struct DataPacket {
    uint8_t              *data;     /**< ponit of data *//**< CNcomment:TS��������*/
    void                 *priv;   /**< private *//**< CNcomment:˽��*/
    int                   data_size;/**< data size *//**< CNcomment:���ݳ��� */
    int                   buf_size; /**< data buf size *//**< CNcomment:���峤�� */
    int                   rd_idx;   /**< read index *//**< CNcomment:��ȡָ�� */
    struct DataPacket      *next;
} DataPacket;

//create a pkt queue
//@max_buf_size : the max limit buffer size of the queue.
//@forbidden_size: when queue is full, pktq_put_pkt() is allowed
//                 only after actual buffer size <= (@max_buf_size - @forbidden_size)
int pktq_create(void **handle, int max_buf_size, int forbidden_size);

int pktq_destroy(void *handle);

//read data, maybe not a complete pkt
//@return the data size readed or < 0 when error occured.
//@timeout_ms:<0,blocked until there is data;==0, if no data return immediately
//            > 0, blocked unitl there is data, or time_ms passed.
int pktq_read(void *handle, uint8_t *buf, int len, int timeout_ms);

//put a pkt into queue, you can put a null pkt to wake up && interrupt
//pktq_get_pkt() or pktq_read().return immediately, time out is not supported yet.
//@pkt->data_size=0 means put a empty buffer into the queue.
//@pkt->next must be null.
//@return the data size of this pkt(may be 0),or < 0 for error.
int pktq_put_pkt(void *handle , DataPacket *pkt, int timeout_ms);

//get a complete pkt.
//@return the data size of returned pkt(may be 0),or < 0 for error.
//@timeout_ms:<0,blocked until there is data;==0, if no data return immediately
//            > 0, blocked unitl there is data, or time_ms passed.
int pktq_get_pkt(void *handle, DataPacket *pkt, int timeout_ms);
int pktq_get_data_size(void *handle);
int pktq_get_buf_size(void *handle);
int pktq_clear(void *handle);
void pktq_free_data_packet(DataPacket *node);
#endif

