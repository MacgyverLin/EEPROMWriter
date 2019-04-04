#include "test.h"
#include "compactflash.h"
#include "pio.h"
#include "sio.h"
#include "delay.h"

#define TEST_PFF
#ifdef TEST_PFF
#include "pff.h"
#endif

#include "sioFATFS.h"

//////////////////////////////////////////////////////////////////////////////
//
void ledTest()
{
    P1 = (unsigned char)(~0x01);
    delay_ms(100);

    P1 = (unsigned char)(~0x02);
    delay_ms(100);

    P1 = (unsigned char)(~0x04);
    delay_ms(100);

    P1 = (unsigned char)(~0x08);
    delay_ms(100);

    P1 = (unsigned char)(~0x10);
    delay_ms(100);

    P1 = (unsigned char)(~0x20);
    delay_ms(100);

    P1 = (unsigned char)(~0x40);
    delay_ms(100);

    P1 = (unsigned char)(~0x80);
    delay_ms(100);
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
void sioTest1(char device)
{
	sioInit(device);
    while(1)
    {
		sioTX(device, sioRX(device));
    };
}

const char data[] =
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
        sioTXBuf(device, data, 26*2);
    };
}

void sioTest3(char device)
{
    sioInit(device);
}

char buf[CF_SECTOR_SIZE];
//////////////////////////////////////////////////////////////////////////////
//
void cfTest(char device)
{
    sioInit(0);

    sioTXStr(0, "cfTest1\r\n");
    cfInit(device);

    sioTXStr(0, "cfTest2\r\n");
    cfReadSector(device, buf, 0, 1);

    sioTXStr(0, "cfTest3\r\n");
    sioTXBuf(0, buf, CF_SECTOR_SIZE);

    sioTXStr(0, "cfTest4\r\n");
    cfReadSector(device, buf, 1, 1);

    sioTXBuf(0, buf, CF_SECTOR_SIZE);
}

#ifdef TEST_PFF
FATFS fs;
DIR dj;
FILINFO filInfo;
void FATTest(char device)
{
    unsigned char res;
    unsigned char br;
    unsigned char bw;

    sioInit(0);

    sioTXStr(0, "FATTest1\n");
    pf_mount(&fs);
    if(res!=FR_OK)
    {
        sioTXStr(0, "FATTest2\n");
        return;
    }

    sioTXStr(0, "FATTest3\n");
    res = pf_open("1.txt");
    if(res!=FR_OK)
    {
        sioTXStr(0, "FATTest4\n");
        return;
    }

#if PF_USE_READ
    sioTXStr(0, "FATTest5\n");
    pf_read(buf, CF_SECTOR_SIZE, &br);
    if(res!=FR_OK)
    {
        sioTXStr(0, "FATTest6\n");
        return;
    }

    sioTXStr(0, "FATTest7\n");
    sioTXBuf(0, buf, br);

    sioTXStr(0, "FATTest8\n");
#endif

#if PF_USE_LSEEK
    pf_lseek(10);
    if(res!=FR_OK)
        return;
#endif

#if PF_USE_READ
    pf_read(buf, CF_SECTOR_SIZE, &br);
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
    pf_write(buf, CF_SECTOR_SIZE, &bw);
#endif
}

#endif

SIOFATFS siofs;
SIOFILE siofile;
SIODIR siodir;
void SIOFATFSTest(char device)
{
    unsigned char res;
    unsigned char br;
    unsigned char bw;

    sioInit(device);

    P1 = 0xd1;
    siof_mount(&siofs, "0:", 0);
    if(res!=FR_OK)
    {
        P1 = 0xd2;
        return;
    }

    P1 = 0xd3;
    res = siof_open(&siofile, "1.txt", 0);
    if(res!=FR_OK)
    {
        P1 = 0xd4;
        return;
    }

    P1 = 0xd5;
    res = siof_read(&siofile, buf, CF_SECTOR_SIZE, &br);
    if(res!=FR_OK)
    {
        P1 = 0xd6;
        return;
    }

    P1 = 0xd7;
    sioTXBuf(0, buf, br);

    P1 = 0xd8;
    res = siof_lseek(&siofile, 10);
    if(res!=FR_OK)
        return;

    res = siof_read(&siofile, buf, CF_SECTOR_SIZE, &br);
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
    res = siof_write(&siofile, buf, CF_SECTOR_SIZE, &bw);
    if(res!=FR_OK)
        return;
}
