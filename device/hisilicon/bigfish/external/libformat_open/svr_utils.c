#include <sys/time.h>
#if HAVE_POLL_H
#include <poll.h>
#endif
#include <unistd.h>
#include <sys/select.h>
#include <pthread.h>
#include "libavutil/log.h"
#include "libavutil/mem.h"
#include "svr_utils.h"

typedef struct PKTQueue {
    DataPacket *fill_head;/*list of nodes those have data of ts packet*/
    DataPacket *fill_tail;
    DataPacket *free_head;/*list of free nodes*/
    DataPacket *free_tail;
    pthread_mutex_t lock;
    pthread_cond_t  fill_cond;/*data writed */
    int max_buf_size;   /*buffer max size limit, if set <=0, no limit*/
    int cur_buf_size;   /*current buffer size;*/
    int forbidden_size; /*if ::full, data writing is allowed only when buffer free size is more than ::forbidden_size*/
    int data_size; /*current data size*/
    int full;      /*buffer full flag*/
    int exit;      /*if reading blocked, call pktq_put_pkt with null pkt to force quit reading*/
    int nb_fill_node; /* for debug */
    int nb_free_node; /* for debug */
    int peak_buf_size;/* for debug */
    int peak_data_size;/* for debug */
} PKTQueue;

#define APPEND_TO_QUE(list, tail, node) \
    if (tail == NULL) { \
        tail = node; \
        list = tail; \
    } else { \
        (tail)->next = node; \
        tail = node; \
    } \
    (node)->next = NULL;


#define DEL_HEAD_FROM_QUE(list, tail, head) \
    if (list == NULL) { \
        head = NULL; \
    } else { \
        head = list; \
        list = (list)->next; \
        if (list == NULL) { \
            tail = NULL;\
        } \
    }


//create a pkt queue
//@max_buf_size : the max limit buffer size of the queue.
//@forbidden_size: when queue is full, pktq_put_pkt() is allowed
//                 only after actual buffer size <= (@max_buf_size - @forbidden_size)
int pktq_create(void **handle, int max_buf_size, int forbidden_size)
{
    int ret;
    PKTQueue *q;

    if (handle == NULL || (forbidden_size > max_buf_size && max_buf_size > 0))
        return -1;

    *handle = NULL;
    q = av_mallocz(sizeof(PKTQueue));
    if (q == NULL) {
        av_log(0, AV_LOG_ERROR, "[%s,%d][PKTQ] malloc for PKTQueue error, no memory!\n",
            __FUNCTION__, __LINE__);
        return AVERROR(ENOMEM);
    }

    q->fill_head = q->fill_tail = NULL;
    q->free_head = q->free_tail = NULL;
    q->cur_buf_size = 0;
    q->data_size    = 0;
    q->max_buf_size   = max_buf_size;
    q->forbidden_size = forbidden_size;
    q->nb_fill_node = 0;
    q->nb_free_node = 0;
    q->exit = 0;
    q->full = 0;
    ret = pthread_mutex_init(&q->lock, NULL);
    if (ret != 0) {
        av_log(0, AV_LOG_ERROR, "[%s,%d][PKTQ] pthread_mutex_init return error %d\n",
            __FUNCTION__, __LINE__, ret);
        goto fail;
    }
    ret = pthread_cond_init(&q->fill_cond, NULL);
    if (ret != 0) {
        av_log(0, AV_LOG_ERROR, "[%s,%d][PKTQ] pthread_cond_init return error %d\n",
            __FUNCTION__, __LINE__, ret);
        pthread_mutex_destroy(&q->lock);
        goto fail;
    }

    *handle = (void *)q;
    av_log(0, AV_LOG_ERROR, "[%s,%d][PKTQ] create pkt queue ok, max_buf_size:%d, forbidden_size:%d\n",
        __FUNCTION__, __LINE__, q->max_buf_size, q->forbidden_size);

    return 0;

fail:

    av_free(q);
    return -1;
}

//read data, maybe not a complete pkt
//@return the data size readed or < 0 when error occured.
//@timeout_ms:<0,blocked until there is data;==0, if no data return immediately
//> 0, blocked unitl there is data, or time_ms passed.
int pktq_read(void *handle, uint8_t *buf, int len, int timeout_ms)
{
    PKTQueue *q = (PKTQueue *)handle;
    DataPacket *node;
    int w_idx = 0;
    int left = len;
    int cplen;

    if (q == NULL || buf == NULL || len <= 0)
        return -1;

    pthread_mutex_lock(&q->lock);
    while(1) {
        if (q->exit) {
            av_log(0, AV_LOG_ERROR, "[%s,%d][PKTQ] reading quited\n", __FUNCTION__, __LINE__);
            pthread_mutex_unlock(&q->lock);
            return AVERROR(EINTR);
        }
        else if (q->data_size > 0) {
           do {
             node = q->fill_head;
             cplen = (node->data_size > left?left:node->data_size);
             memcpy((buf + w_idx), (node->data + node->rd_idx), cplen);
             w_idx += cplen;
             node->data_size -= cplen;
             node->rd_idx += cplen;
             q->data_size -= cplen;
             left -= cplen;
             //this node has been finished.
             if (node->data_size <= 0) {
                DEL_HEAD_FROM_QUE(q->fill_head, q->fill_tail, node);
                q->nb_fill_node --;
                q->cur_buf_size -= node->buf_size;
                av_free(node->data);
                node->data = NULL;
                node->data_size = 0;
                node->buf_size = 0;
                node->next = NULL;
                node->rd_idx = 0;
                APPEND_TO_QUE(q->free_head, q->free_tail, node);
                q->nb_free_node ++;
                node = NULL;
             }
           }while(left > 0 && q->data_size > 0);
         //  av_log(0, AV_LOG_ERROR, "[%s,%d][PKTQ] read len =%d, return=%d, q->cur_buf_size:%d, data_size:%d, nb_fill_node:%d, nb_free_node:%d\n",
          //  __FUNCTION__, __LINE__, len, (len - left), q->cur_buf_size, q->data_size,q->nb_fill_node, q->nb_free_node);
           pthread_mutex_unlock(&q->lock);
           return (len - left);
        } else if (timeout_ms == 0) {
            pthread_mutex_unlock(&q->lock);
            return AVERROR(EAGAIN);
        } else if (timeout_ms < 0){
            pthread_cond_wait(&q->fill_cond, &q->lock);
        } else {
            struct timespec outtime;
            struct timeval now;
            int64_t ns;

            gettimeofday(&now, NULL);
            ns = ((now.tv_usec + timeout_ms * 1000) * 1000);
            outtime.tv_sec  = now.tv_sec + ns/1000000000;
            outtime.tv_nsec = ns%1000000000;
            pthread_cond_timedwait(&q->fill_cond, &q->lock, &outtime);
            if (q->data_size <= 0) {
                av_log(0, AV_LOG_ERROR, "[PKTQ] %d ms timeout but no data.\n", timeout_ms);
                pthread_mutex_unlock(&q->lock);
                return AVERROR(EAGAIN);
            }
        }
    }
    pthread_mutex_unlock(&q->lock);

    return (len - left);
}

//put a pkt into queue, you can put a null pkt to wake up && interrupt
//pktq_get_pkt() or pktq_read().return immediately, time out is not supported yet.
//@pkt->data_size=0 means put a empty buffer into the queue.
//@pkt->next must be null.
//@return the data size of this pkt(may be 0),or < 0 for error.
int pktq_put_pkt(void *handle , DataPacket *pkt, int timeout_ms)
{
    PKTQueue *q = (PKTQueue *)handle;
    DataPacket *node = NULL;

    if (q == NULL ||
         (pkt != NULL &&
         (pkt->buf_size <= 0 ||
          pkt->data_size > pkt->buf_size ||
          pkt->rd_idx > pkt->data_size ||
          (pkt->rd_idx == pkt->data_size && pkt->data_size > 0) ||
          pkt->rd_idx < 0))) {
        av_log(0, AV_LOG_ERROR, "[%s,%d][PKTQ] pktq_put_pkt fail.\n",
            __FUNCTION__, __LINE__);
        return -1;
    }

    pthread_mutex_lock(&q->lock);
    if (pkt == NULL) {
        av_log(0, AV_LOG_ERROR, "[%s,%d][PKTQ] write null pkt, force reading to quit.\n",
            __FUNCTION__, __LINE__);
        q->exit = 1;
        pthread_cond_signal(&q->fill_cond);//wakeup reading.
        pthread_mutex_unlock(&q->lock);
        return 0;
    }

    if (q->full != 0 && q->cur_buf_size < q->max_buf_size &&
        q->max_buf_size - q->cur_buf_size <= q->forbidden_size) {
        av_log(0, AV_LOG_ERROR, "[%s,%d][PKTQ] writing is forbidden, free size %d, forbidden_size:%d\n",
            __FUNCTION__, __LINE__, (q->max_buf_size - q->cur_buf_size), q->forbidden_size);
        pthread_mutex_unlock(&q->lock);
        return -1;
    }

    if (q->cur_buf_size > q->max_buf_size && q->max_buf_size > 0) {
        av_log(0, AV_LOG_ERROR, "[%s,%d][PKTQ] buffer full %d(max %d)!\n",
            __FUNCTION__, __LINE__, q->cur_buf_size, q->max_buf_size);
        q->full = 1;
        pthread_mutex_unlock(&q->lock);
        return -1;
    } else {
        q->full = 0;
    }

    if (q->free_head != NULL) {
        DEL_HEAD_FROM_QUE(q->free_head, q->free_tail, node);
        q->nb_free_node --;
    } else {
        node = av_malloc(sizeof(DataPacket));
        if (node == NULL) {
            av_log(0, AV_LOG_ERROR, "[%s,%d] malloc for pkt node error!\n", __FUNCTION__, __LINE__);
            pthread_mutex_unlock(&q->lock);
            return AVERROR(ENOMEM);
        }
    }

    *node = *pkt;
    node->next = NULL;

    APPEND_TO_QUE(q->fill_head, q->fill_tail, node);
    q->nb_fill_node ++;
    q->cur_buf_size += pkt->buf_size;
    q->data_size += pkt->data_size;
    if (q->cur_buf_size > q->peak_buf_size) {
        q->peak_buf_size = q->cur_buf_size;
    }
    if (q->data_size > q->peak_data_size) {
        q->peak_data_size = q->data_size;
    }

   // av_log(0, AV_LOG_ERROR, "[%s,%d][PKTQ] write111 len =%d,  q->cur_buf_size:%d, data_size:%d, nb_fill_node:%d, nb_free_node:%d\n",
   //  __FUNCTION__, __LINE__, len, q->cur_buf_size, q->data_size, q->nb_fill_node, q->nb_free_node);

    pthread_cond_signal(&q->fill_cond);
    pthread_mutex_unlock(&q->lock);

    return pkt->data_size;
}

//get a complete pkt.
//@return the data size of returned pkt(may be 0),or < 0 for error.
//@timeout_ms:<0,blocked until there is data;==0, if no data return immediately
//            > 0, blocked unitl there is data, or time_ms passed.
int pktq_get_pkt(void *handle, DataPacket *pkt, int timeout_ms)
{
    PKTQueue *q = (PKTQueue *)handle;
    DataPacket *node;

    if (q == NULL || pkt == NULL)
        return -1;

    pthread_mutex_lock(&q->lock);
    while(1) {
        if (q->exit) {
            av_log(0, AV_LOG_ERROR, "[%s,%d][PKTQ] reading quited\n", __FUNCTION__, __LINE__);
            pthread_mutex_unlock(&q->lock);
            return AVERROR(EINTR);
        }
        else if (q->fill_head != NULL) {
            node = q->fill_head;
            *pkt = *node;
            pkt->next = NULL;
            DEL_HEAD_FROM_QUE(q->fill_head, q->fill_tail, node);
            q->nb_fill_node --;
            q->cur_buf_size -= node->buf_size;
            q->data_size -= node->data_size;
            node->data_size = 0;
            node->data = NULL;
            node->data_size = 0;
            node->buf_size = 0;
            node->next = NULL;
            node->rd_idx = 0;
            APPEND_TO_QUE(q->free_head, q->free_tail, node);
            q->nb_free_node ++;
            node = NULL;
         //  av_log(0, AV_LOG_ERROR, "[%s,%d][PKTQ] read len =%d, return=%d, q->cur_buf_size:%d, data_size:%d, nb_fill_node:%d, nb_free_node:%d\n",
          //  __FUNCTION__, __LINE__, len, (len - left), q->cur_buf_size, q->data_size,q->nb_fill_node, q->nb_free_node);
           pthread_mutex_unlock(&q->lock);
           return (pkt->data_size);
        } else if (timeout_ms == 0) {
            pthread_mutex_unlock(&q->lock);
            return AVERROR(EAGAIN);
        } else if (timeout_ms < 0) {
            pthread_cond_wait(&q->fill_cond, &q->lock);
        } else {
            struct timespec outtime;
            struct timeval now;
            int64_t ns;

            gettimeofday(&now, NULL);
            ns = ((now.tv_usec + timeout_ms * 1000) * 1000);
            outtime.tv_sec  = now.tv_sec + ns/1000000000;
            outtime.tv_nsec = ns%1000000000;
            pthread_cond_timedwait(&q->fill_cond, &q->lock, &outtime);
            if (q->fill_head == NULL) {
                av_log(0, AV_LOG_WARNING, "[PKTQ] %d ms timeout but no pkts.\n", timeout_ms);
                pthread_mutex_unlock(&q->lock);
                return AVERROR(EAGAIN);
            }
        }
    }
    pthread_mutex_unlock(&q->lock);

    return (pkt->data_size);
}

int pktq_get_data_size(void *handle)
{
    PKTQueue *q = (PKTQueue *)handle;

    if (q == NULL)
        return -1;

    return q->data_size;
}

int pktq_get_buf_size(void *handle)
{
    PKTQueue *q = (PKTQueue *)handle;

    if (q == NULL)
        return -1;

    return q->cur_buf_size;
}

void pktq_free_data_packet(DataPacket *node)
{
    if (node)
    {
        av_free(node->data);
        av_free(node->priv);
        memset(node, 0, sizeof(DataPacket));
    }
}

int pktq_clear(void *handle)
{
    PKTQueue *q = (PKTQueue *)handle;
    DataPacket *node;

    if (q == NULL)
        return -1;

    av_log(0, AV_LOG_INFO, "[%s,%d] start to clear pktq ,data size=%d, buf size=%d, nb_fill_node=%d, nb_free_node=%d\n",
        __FUNCTION__, __LINE__, q->data_size, q->cur_buf_size, q->nb_fill_node, q->nb_free_node);
    pthread_mutex_lock(&q->lock);
    while(q->fill_head != NULL)
    {
        DEL_HEAD_FROM_QUE(q->fill_head, q->fill_tail, node);
        q->nb_fill_node --;
        q->cur_buf_size -= node->buf_size;
        q->data_size -= node->data_size;
        if (node->data != NULL)
            av_free(node->data);
        node->data = NULL;
        node->data_size = 0;
        node->buf_size = 0;
        node->next = NULL;
        node->rd_idx = 0;
        APPEND_TO_QUE(q->free_head, q->free_tail, node);
        q->nb_free_node ++;
        node = NULL;
    }
    pthread_mutex_unlock(&q->lock);
    av_log(0, AV_LOG_INFO, "[%s,%d] after clear pktq ,data size=%d, buf size=%d, nb_fill_node=%d, nb_free_node=%d\n",
        __FUNCTION__, __LINE__, q->data_size, q->cur_buf_size, q->nb_fill_node, q->nb_free_node);

    return 0;
}

int pktq_destroy(void *handle)
{
    PKTQueue *q = (PKTQueue *)handle;
    DataPacket *node = NULL;

    if (q == NULL)
        return -1;

    pktq_put_pkt(handle, NULL, 0);//force to quit
    pthread_mutex_lock(&q->lock);
    while(q->fill_head != NULL) {
        node = q->fill_head;
        q->fill_head = q->fill_head->next;
        q->cur_buf_size -= node->buf_size;
        q->data_size -= node->data_size;
        av_free(node->data);
        av_free(node);
        q->nb_fill_node --;
    }
    q->fill_tail = NULL;

    while(q->free_head != NULL) {
        node = q->free_head;
        q->free_head = q->free_head->next;
        av_free(node);
        q->nb_free_node --;
    }
    q->free_tail = NULL;
    av_log(0, AV_LOG_ERROR, "[%s,%d][PKTQ] peak_buf_size=%d, peak_data_size=%d,"
        "after destroyed, cur_buf_size:%d, data_size:%d, nb_fill_node:%d, nb_free_node:%d\n",
     __FUNCTION__, __LINE__, q->peak_buf_size, q->peak_data_size, q->cur_buf_size,
     q->data_size, q->nb_fill_node, q->nb_free_node);

    pthread_mutex_unlock(&q->lock);

    pthread_cond_destroy(&q->fill_cond);
    pthread_mutex_destroy(&q->lock);
    av_free(q);

    return 0;
}

