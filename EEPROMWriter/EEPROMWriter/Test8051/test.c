#include "test.h"
#include "delay.h"
#include "pio.h"
#include "compactflash.h"

#ifdef USE_PFF
#include "pff.h"
#else
#include "ff.h"
#endif

#ifdef USE_KEIL_ISD
#else
#include "sio.h"
#endif

//////////////////////////////////////////////////////////////////////////////
//
void ledTest()
{
    P1 = (unsigned char)(~0x01);
    //delay_ms(100);

    P1 = (unsigned char)(~0x02);
    //delay_ms(100);

    P1 = (unsigned char)(~0x04);
    //delay_ms(100);

    P1 = (unsigned char)(~0x08);
    //delay_ms(100);

    P1 = (unsigned char)(~0x10);
    //delay_ms(100);

    P1 = (unsigned char)(~0x20);
    //delay_ms(100);

    P1 = (unsigned char)(~0x40);
    //delay_ms(100);

    P1 = (unsigned char)(~0x80);
    //delay_ms(100);
}

//////////////////////////////////////////////////////////////////////////////
//
void pioTest(char device)
{
    char v;
    pioWriteCtrl(device, 0x80);

    v = 255;
    do
    {
        delay_ms(50);
        pioWritePortA(device, v);
    }while(v--);

    v = 255;
    do
    {
        delay_ms(50);
        pioWritePortB(device, v);
    }while(v--);

    v = 255;
    do
    {
        delay_ms(50);
        pioWritePortC(device, v);
    }while(v--);
}

//////////////////////////////////////////////////////////////////////////////
//
char cfTestBuf[CF_SECTOR_SIZE];
void cfTest(char device)
{
    cfInit(device);

    cfReadSector(device, cfTestBuf, 0, 1);

    cfReadSector(device, cfTestBuf, 1, 1);
}

#ifdef USE_PFF
//////////////////////////////////////////////////////////////////////////////
//
void pffTest(char device)
{
	FATFS fs;
	DIR dj;
	FILINFO filInfo;
	unsigned char res;
    UINT br;
    UINT bw;

	#if USE_KEIL_ISD
	#else
    sioInit(0);
	#endif

	sioTXStr(0, "pffTest1\n");
    pf_mount(&fs);
	sioTXStr(0, "pffTest1.1\n");
    if(res!=FR_OK)
    {
		sioTXStr(0, "pffTest1.2\n");
        return;
    }

	sioTXStr(0, "pffTest2\n");
    res = pf_open("1.txt");
	sioTXStr(0, "pffTest2.1\n");
    if(res!=FR_OK)
    {
		sioTXStr(0, "pffTest2.2\n");
        return;
    }

#if PF_USE_READ
	sioTXStr(0, "pffTest3\n");
    pf_read(cfTestBuf, CF_SECTOR_SIZE, &br);
	sioTXStr(0, "pffTest3.1\n");
    if(res!=FR_OK)
    {
		sioTXStr(0, "pffTest3.2\n");
        return;
    }

	sioTXStr(0, "pffTest4\n");
	sioTXBuf(0, cfTestBuf, br);
#endif

#if PF_USE_LSEEK
    pf_lseek(10);
    if(res!=FR_OK)
        return;
#endif

#if PF_USE_READ
    pf_read(cfTestBuf, CF_SECTOR_SIZE, &br);
    if(res!=FR_OK)
        return;
#endif

#if PF_USE_DIR
    pf_opendir(&dj, "test");
    if(res!=FR_OK)
        return;

    pf_readdir(&dj, &filInfo);
    if(res!=FR_OK)
        return;
#endif

#if PF_USE_WRITE
    pf_write(cfTestBuf, CF_SECTOR_SIZE, &bw);
#endif

	sioTXStr(0, "pffTest10\n");
}

#else

void fatfsTest(char device)
{
	FATFS fs;
	FIL fp;
	DIR dj;
	FILINFO filInfo;
	unsigned char res;
    UINT br;
    UINT bw;

	#if USE_KEIL_ISD
	#else
    sioInit(0);
	#endif

	sioTXStr(0, "fatfsTest1\n");
	res = f_mount(&fs, "0:", 0); /* Mount/Unmount a logical drive */
	sioTXStr(0, "fatfsTest1.1\n");
    if(res!=FR_OK)
	{
		sioTXStr(0, "fatfsTest1.2\n");
        return;
	}

	sioTXStr(0, "fatfsTest2\n");
	res = f_open(&fp, "0:/1.txt", FA_READ | FA_OPEN_EXISTING);	/* Open or create a file */
	sioTXStr(0, "fatfsTest2.1\n");
    if(res!=FR_OK)
	{
		sioTXStr(0, "fatfsTest2.2\n");
        return;
	}

	sioTXStr(0, "fatfsTest3\n");
	res = f_read (&fp, cfTestBuf, CF_SECTOR_SIZE, &br);			/* Read data from the file */
	sioTXStr(0, "fatfsTest3.1\n");
    if(res!=FR_OK)
	{
		sioTXStr(0, "fatfsTest3.2\n");
        return;
	}
	sioTXBuf(0, cfTestBuf, br);

	sioTXStr(0, "fatfsTest4\n");
    f_lseek(10);
	sioTXStr(0, "fatfsTest4.1\n");
    if(res!=FR_OK)
	{
		sioTXStr(0, "fatfsTest4.2\n");
        return;
	}

	sioTXStr(0, "fatfsTest5\n");
	res = f_read (&fp, cfTestBuf, CF_SECTOR_SIZE, &br);			/* Read data from the file */
	sioTXStr(0, "fatfsTest5.1\n");
    if(res!=FR_OK)
	{
		sioTXStr(0, "fatfsTest5.2\n");
        return;
	}
	sioTXBuf(0, cfTestBuf, br);

	sioTXStr(0, "fatfsTest6\n");
	res = f_close(&fp);	/* Close an open file object */
	sioTXStr(0, "fatfsTest6.1\n");
    if(res!=FR_OK)
	{
		sioTXStr(0, "fatfsTest6.2\n");
        return;
	}
}
#endif

//////////////////////////////////////////////////////////////////////////////
//
#ifdef USE_KEIL_ISD
#else
void sioTest1(char device)
{
	sioInit(device);
    while(1)
    {
		sioTX(device, sioRX(device));
    };
}

const char testdata[] =
{
    'a','b','c','d','e','f','g','h',
    'i','j','k','l','m','n','o','p',
    'q','r','s','t','u','v','w','x','y','z',
    'A','B','C','D','E','F','G','H',
    'I','J','K','L','M','N','O','P',
    'Q','R','S','T','U','V','W','X','Y','Z'
};
void sioTest2(char device)
{
	sioInit(device);
    while(1)
    {
        sioTXStr(device, "sioTXStr Test!!!!\r\n");
        sioTXBuf(device, testdata, 26*2);
    };
}

void sioTest3(char device)
{
    sioInit(device);
}
#endif
