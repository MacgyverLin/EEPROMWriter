#ifndef _SERIAL_H_
#define _SERIAL_H_

typedef enum
{
	SB_110 = 0,
	SB_300,
	SB_600,
	SB_1200,
	SB_2400,
	SB_4800,
	SB_9600,
	SB_14400,
	SB_19200,
	SB_38400,
	SB_56000,
	SB_115200,
	SB_128000,
	SB_256000
}Baud;

typedef enum
{
	SP_NONE = 0,
	SP_ODD,
	SP_EVEN,
	SP_MARK,
	SP_SPACE
}Parity;

typedef enum
{
	SS_ONE = 0,
	SS_ONE5,
	SS_TWO
}Stopbits;

extern int serialInitialize(Baud baud, int bits, Parity parity, Stopbits stopbits);
extern void serialTerminate();

extern void serialSendDataAsync(const char* buffer, unsigned int size);
extern char serialIsSendDataDone();
extern char serialSendData(const char* buffer, unsigned int size);

extern void serialReceiveDataAsync(unsigned int size);
extern char serialIsReceiveDataDone();
extern char* serialReceiveData(unsigned int size);

extern int serialPrintf(char* buffer, const char *fmt, ...);
extern int serialScanf(char* buffer, const char *fmt, ...);

#endif