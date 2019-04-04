#include "test.h"
#include "delay.h"
#include "pio.h"
#include "compactflash.h"
#include "pff.h"
#ifdef TEST_SIO
#include "sio.h"
#include "sioFATFS.h"
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

//////////////////////////////////////////////////////////////////////////////
//
void FATTest(char device)
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

	//sioTXStr(0, "FATTest1\n");
    pf_mount(&fs);
	//sioTXStr(0, "FATTest1.1\n");
    if(res!=FR_OK)
    {
		//sioTXStr(0, "FATTest1.2\n");
        return;
    }

	//sioTXStr(0, "FATTest2\n");
    res = pf_open("1.txt");
	//sioTXStr(0, "FATTest2.1\n");
    if(res!=FR_OK)
    {
		//sioTXStr(0, "FATTest2.2\n");
        return;
    }

#if PF_USE_READ
	//sioTXStr(0, "FATTest3\n");
    pf_read(cfTestBuf, CF_SECTOR_SIZE, &br);
	//sioTXStr(0, "FATTest3.1\n");
    if(res!=FR_OK)
    {
		//sioTXStr(0, "FATTest3.2\n");
        return;
    }
	
	//sioTXStr(0, "FATTest4\n");
	#if USE_KEIL_ISD
	#else
	sioTXBuf(0, cfTestBuf, br);
	#endif
	//sioTXStr(0, "FATTest4\n");
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
	// sioTXStr(0, "FATTest 10\n");
}

//////////////////////////////////////////////////////////////////////////////
//
#ifdef TEST_SIO
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

#if 0
void SIOFATFSTest(char device)
{
	SIOFATFS siofs;
	SIOFILE siofile;
	SIODIR siodir;	
    unsigned char res;
    unsigned char br;
    unsigned char bw;

    sioInit(device);

    siof_mount(&siofs, "0:", 0);
    if(res!=FR_OK)
    {
        return;
    }

    res = siof_open(&siofile, "1.txt", 0);
    if(res!=FR_OK)
    {
        return;
    }

    res = siof_read(&cfTestBuf, cfTestBuf, CF_SECTOR_SIZE, &br);
    if(res!=FR_OK)
    {
        return;
    }

    sioTXBuf(0, cfTestBuf, br);

    res = siof_lseek(&siofile, 10);
    if(res!=FR_OK)
        return;

    res = siof_read(&siofile, cfTestBuf, CF_SECTOR_SIZE, &br);
    if(res!=FR_OK)
        return;

/*
    res = siof_opendir(&siodir, "test");
    if(res!=FR_OK)
        return;

    res = siof_readdir(&siodir, &filInfo);
    if(res!=FR_OK)
        return;
*/
    res = siof_write(&siofile, cfTestBuf, CF_SECTOR_SIZE, &bw);
    if(res!=FR_OK)
        return;
}
#endif