#ifndef _SIO_h_
#define _SIO_h_

#include <mcs51/8051.h>

#ifdef __cplusplus
extern "C"
{
#endif

extern void sioInit(char device);
extern void sioClose(char device);
extern void sioWaitTXDone(char device);
extern void sioTX(char device, char d);
extern void sioTXStr(char device, const char* s);
extern void sioTXBuf(char device, const char* buf, unsigned int size);
extern void sioWaitRXDone(char device);
extern char sioRX(char device);
extern void sioRXStr(char device, char* s, unsigned int size);
extern void sioRXBuf(char device, char* buf, unsigned int size);

#ifdef __cplusplus
};
#endif

#endif // _LED_h_
