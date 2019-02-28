#ifndef _SERIAL_H_
#define _SERIAL_H_

extern int serialInitialize(int baud);

extern void serialInitSendBuffer();
extern void serialSendDataAsync(unsigned char* buffer, unsigned int size);
extern char serialIsSendDataDone();
extern void serialSendData(unsigned char* buffer, unsigned int size, int timeout);

extern void serialInitReceiveBuffer();
extern void serialReceiveDataAsync(unsigned int size);
extern char serialIsReceiveDataDone();
extern void serialReceiveData(unsigned char* buffer, unsigned int size, int timeout);

extern void serialGetReceivedData(unsigned char* buffer, unsigned int size);

extern int serialPrintf(char* buffer, const char *fmt, ...);
extern int serialScanf(char* buffer, const char *fmt, ...);

#endif