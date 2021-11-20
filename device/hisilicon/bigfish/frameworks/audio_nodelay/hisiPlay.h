#ifndef _HME_HISIPLAY
#define _HME_HISIPLAY

int HiSiSnd_Init(int SampleRate);
int HiSiSnd_Start();
int HiSiSnd_Stop();
int HiSiSnd_Destroy();
unsigned int HiSiSnd_GetDelay();
void HiSiSnd_SendTrackData(int* src_buf);

int HiSiSnd_SetTrackPriority(int bEnable);


int hisi_alsa_deinit();
int hisi_alsa_start();
int hisi_alsa_init(int DesiredSampleRate);
int hisi_alsa_read(void* buf, int read_size);


#endif
