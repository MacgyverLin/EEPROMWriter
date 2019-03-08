#ifndef _SERIAL_H_
#define _SERIAL_H_

extern int serialInitialize(int baud);

extern void serialSendDataAsync(const char* buffer, unsigned int size);
extern char serialIsSendDataDone();
extern void serialSendData(const char* buffer, unsigned int size);

extern void serialReceiveDataAsync(unsigned int size);
extern char serialIsReceiveDataDone();
extern char* serialReceiveData(unsigned int size);

extern int serialPrintf(char* buffer, const char *fmt, ...);
extern int serialScanf(char* buffer, const char *fmt, ...);

#endif