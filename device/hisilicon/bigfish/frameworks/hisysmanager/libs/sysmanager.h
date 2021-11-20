#ifndef _HI_SYSMANAGER_H_
#define _HI_SYSMANAGER_H_

#include <sys/types.h>
__BEGIN_DECLS
/* sysmanager context struct */
int do_upgrade(const char* path);
int do_reset();
int do_updateLogo(const char* path);
int do_EnterSmartStandby();
int do_QuitSmartStandby();
int do_setFlashInfo(const char* flag,int offset,int offlen,const char* info);
int do_getFlashInfo(const char* flag,int offset,int offlen);
int do_enableInterface(const char* interfacename);
int do_disableInterface(const char* interfacename);
int do_addRoute(const char* interfacename,const char* dst,int length,const char* gw);
int do_removeRoute(const char* interfacename,const char* dst,int length,const char* gw);
int do_setDefaultRoute(const char* interfacename, int gw);
int do_removeDefaultRoute(const char* interfacename);
int do_removeNetRoute(const char* interfacename);
int do_setHdmiHDCPKey(const char* tdname,int offset,const char* filename,int datasize);
int do_getHdmiHDCPKey(const char* tdname,int offset,const char* filename,int datasize);
int do_setHDCPKey(const char* tdname,int offset,const char* filename,int datasize);
int do_getHDCPKey(const char* tdname,int offset,const char* filename,int datasize);
int do_setDRMKey(const char* tdname,int offset,const char* filename,int datasize);
int do_getDRMKey(const char* tdname,int offset,const char* filename,int datasize);
__END_DECLS
#endif
