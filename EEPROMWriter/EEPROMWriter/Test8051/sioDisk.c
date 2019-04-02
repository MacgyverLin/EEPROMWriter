#include "sioDisk.h"
#include "sio.h"

#define SIODISK_MSG_ACK                    (0x80)
#define SIODISK_MSG_WRITE                  (0x40)
#define SIODISK_MSG_READ                   (0x20)
#define SIODISK_MSG_BASE                   (0x00)
#define SIODISK_MSG_DATA                   (SIODISK_MSG_BASE+0)
#define SIODISK_MSG_ERROR                  (SIODISK_MSG_BASE+1)
#define SIODISK_MSG_FEATURES               (SIODISK_MSG_BASE+1)
#define SIODISK_MSG_SECTOR_COUNT           (SIODISK_MSG_BASE+2)
#define SIODISK_MSG_LBA_0                  (SIODISK_MSG_BASE+3)
#define SIODISK_MSG_LBA_1                  (SIODISK_MSG_BASE+4)
#define SIODISK_MSG_LBA_2                  (SIODISK_MSG_BASE+5)
#define SIODISK_MSG_LBA_3                  (SIODISK_MSG_BASE+6)
#define SIODISK_MSG_STATUS                 (SIODISK_MSG_BASE+7)
#define SIODISK_MSG_COMMAND                (SIODISK_MSG_BASE+7)

#define SIO_DEVICE 0
typedef struct
{
    unsigned char msg;
    unsigned char deviceid;
    unsigned char data;
}SIODiskWriteCmd;

typedef struct
{
    unsigned char msg;
    unsigned char deviceid;
}SIODiskWriteAck;

typedef struct
{
    unsigned char msg;
    unsigned char deviceid;
}SIODiskReadCmd;

typedef struct
{
    unsigned char msg;
    unsigned char deviceid;
    unsigned char data;
}SIODiskReadAck;

void sioDiskWriteData(char deviceid, unsigned char d)
{
    SIODiskWriteCmd cmd = { SIODISK_MSG_WRITE | SIODISK_MSG_DATA, deviceid, d };
    SIODiskWriteAck ack;

    sioTXBuf(SIO_DEVICE, (const char*)&cmd, sizeof(cmd));
    sioRXBuf(SIO_DEVICE, (char*)&ack, sizeof(ack));
}

char sioDiskReadData(char deviceid)
{
    SIODiskReadCmd cmd = { SIODISK_MSG_READ | SIODISK_MSG_DATA, deviceid };
    SIODiskReadAck ack;

    sioTXBuf(SIO_DEVICE, (const char*)&cmd, sizeof(cmd));
    sioRXBuf(SIO_DEVICE, (char*)&ack, sizeof(ack));

    return ack.data;
}

void sioDiskWriteFeatures(char deviceid, unsigned char d)
{
    SIODiskWriteCmd cmd = { SIODISK_MSG_WRITE | SIODISK_MSG_FEATURES, deviceid, d };
    SIODiskWriteAck ack;

    P1 = 0x04;
    sioTXBuf(SIO_DEVICE, (const char*)&cmd, sizeof(cmd));

    P1 = 0x05;
    sioRXBuf(SIO_DEVICE, (char*)&ack, sizeof(ack));

    P1 = 0x06;
}

char sioDiskReadError(char deviceid)
{
    SIODiskReadCmd cmd = { SIODISK_MSG_READ | SIODISK_MSG_ERROR, deviceid };
    SIODiskReadAck ack;

    sioTXBuf(SIO_DEVICE, (const char*)&cmd, sizeof(cmd));
    sioRXBuf(SIO_DEVICE, (char*)&ack, sizeof(ack));

    return ack.data;
}

void sioDiskWriteSectorCount(char deviceid, unsigned char d)
{
    SIODiskWriteCmd cmd = { SIODISK_MSG_WRITE | SIODISK_MSG_SECTOR_COUNT, deviceid, d };
    SIODiskWriteAck ack;

    sioTXBuf(SIO_DEVICE, (const char*)&cmd, sizeof(cmd));
    sioRXBuf(SIO_DEVICE, (char*)&ack, sizeof(ack));
}

void sioDiskWriteLBA0(char deviceid, unsigned char d)
{
    SIODiskWriteCmd cmd = { SIODISK_MSG_WRITE | SIODISK_MSG_LBA_0, deviceid, d };
    SIODiskWriteAck ack;

    sioTXBuf(SIO_DEVICE, (const char*)&cmd, sizeof(cmd));
    sioRXBuf(SIO_DEVICE, (char*)&ack, sizeof(ack));
}

void sioDiskWriteLBA1(char deviceid, unsigned char d)
{
    SIODiskWriteCmd cmd = { SIODISK_MSG_WRITE | SIODISK_MSG_LBA_1, deviceid, d };
    SIODiskWriteAck ack;

    sioTXBuf(SIO_DEVICE, (const char*)&cmd, sizeof(cmd));
    sioRXBuf(SIO_DEVICE, (char*)&ack, sizeof(ack));
}

void sioDiskWriteLBA2(char deviceid, unsigned char d)
{
    SIODiskWriteCmd cmd = { SIODISK_MSG_WRITE | SIODISK_MSG_LBA_2, deviceid, d };
    SIODiskWriteAck ack;

    sioTXBuf(SIO_DEVICE, (const char*)&cmd, sizeof(cmd));
    sioRXBuf(SIO_DEVICE, (char*)&ack, sizeof(ack));
}

void sioDiskWriteLBA3(char deviceid, unsigned char d)
{
    SIODiskWriteCmd cmd = { SIODISK_MSG_WRITE | SIODISK_MSG_LBA_3, deviceid, d };
    SIODiskWriteAck ack;

    sioTXBuf(SIO_DEVICE, (const char*)&cmd, sizeof(cmd));
    sioRXBuf(SIO_DEVICE, (char*)&ack, sizeof(ack));
}

void sioDiskWriteCommand(char deviceid, unsigned char d)
{
    SIODiskWriteCmd cmd = { SIODISK_MSG_WRITE | SIODISK_MSG_COMMAND, deviceid, d };
    SIODiskWriteAck ack;

    sioTXBuf(SIO_DEVICE, (const char*)&cmd, sizeof(cmd));
    sioRXBuf(SIO_DEVICE, (char*)&ack, sizeof(ack));
}

char sioDiskReadStatus(char deviceid)
{
    SIODiskReadCmd cmd = { SIODISK_MSG_READ | SIODISK_MSG_STATUS, deviceid };
    SIODiskReadAck ack;

    sioTXBuf(SIO_DEVICE, (const char*)&cmd, sizeof(cmd));
    sioRXBuf(SIO_DEVICE, (char*)&ack, sizeof(ack));

    return ack.data;
}

void sioDiskInit(char device)
{
    P1 = 0x02;
    sioInit(SIO_DEVICE);

    P1 = 0x03;
    sioDiskWriteFeatures(device, 0x01); //  set 8 bit mode to features port

    P1 = 0x04;
    sioDiskWriteCommand(device, 0xef);  // command 'set features'
}

void sioDiskWaitIdle(char device)
{
    char status;
    do
    {
        status = sioDiskReadStatus(device);
    }
    while((status & 0x80)!=0);
}

void sioDiskWaitCommandReady(char device)
{
    char status;

    do
    {
        status = sioDiskReadStatus(device);
    }
    while((status & 0xc0)!=0x40);
}

void sioDiskWaitDataReady(char device)
{
    char status;
    do
    {
        status = sioDiskReadStatus(device);
    }
    while((status & 0x88)!=0x08);
}

#if 0
void sioDiskReadSector(char device, char* buf, unsigned int sectorCount)
{
    char status;
    unsigned int i;
    unsigned int idx;

    sectorCount;

    P1 = 0xe1;
    sioDiskWaitIdle(device);

    P1 = 0xe2;
    sioDiskWriteSectorCount(device, 0x01);

    P1 = 0xe3;
    sioDiskWaitIdle(device);

    P1 = 0xe4;
    sioDiskWriteLBA0(device, 0x00);

    P1 = 0xe5;
    sioDiskWaitIdle(device);

    P1 = 0xe6;
    sioDiskWriteLBA1(device, 0x00);

    P1 = 0xe7;
    sioDiskWaitIdle(device);

    P1 = 0xe8;
    sioDiskWriteLBA2(device, 0x00);

    P1 = 0xe9;
    sioDiskWaitIdle(device);

    P1 = 0xea;
    sioDiskWriteLBA3(device, 0xe0);

    idx = 0;
    //while(sectorCount--)
    //{
        do
        {
            P1 = 0xeb;
            sioDiskWaitCommandReady(device);

            P1 = 0xec;
            sioDiskWriteCommand(device, 0x20);

            P1 = 0xed;
            sioDiskWaitDataReady(device);

            P1 = 0xee;
            status = sioDiskReadStatus(device);

            P1 = 0xef;
        }
        while((status & 0x01)!=0);

        i = 0;
        while(i++ < SIODISK_SECTOR_SIZE)
        {
            P1 = 0xf0;
            sioDiskWaitDataReady(device);

            P1 = 0xf1;
            buf[i+idx] = sioDiskReadData(device);

            P1 = 0xf2;
        }
        idx += SIODISK_SECTOR_SIZE;
    //};

    P1 = 0xf3;
}
#else
void sioDiskReadSector(char device, char* buf, unsigned long LBA, unsigned int sectorCount)
{
    char status;
    unsigned int i;
    unsigned int idx;

    sectorCount;

    P1 = 0xe1;
    sioDiskWaitIdle(device);

    P1 = 0xe2;
    sioDiskWriteSectorCount(device, sectorCount);

    P1 = 0xe3;
    sioDiskWaitIdle(device);

    P1 = 0xe4;
    sioDiskWriteLBA0(device, ((LBA   ) & 0xff) );

    P1 = 0xe5;
    sioDiskWaitIdle(device);

    P1 = 0xe6;
    sioDiskWriteLBA1(device, ((LBA>>8) & 0xff) );

    P1 = 0xe7;
    sioDiskWaitIdle(device);

    P1 = 0xe8;
    sioDiskWriteLBA2(device, ((LBA>>16) & 0xff) );

    P1 = 0xe9;
    sioDiskWaitIdle(device);

    P1 = 0xea;
    sioDiskWriteLBA3(device, (((LBA>>24) | 0xe0) & 0xff) );

    idx = 0;
    //while(sectorCount--)
    //{
        do
        {
            P1 = 0xeb;
            sioDiskWaitCommandReady(device);

            P1 = 0xec;
            sioDiskWriteCommand(device, 0x20);

            P1 = 0xed;
            sioDiskWaitDataReady(device);

            P1 = 0xee;
            status = sioDiskReadStatus(device);

            P1 = 0xef;
        }
        while((status & 0x01)!=0);

        i = 0;
        while(i++ < SIODISK_SECTOR_SIZE)
        {
            P1 = 0xf0;
            sioDiskWaitDataReady(device);

            P1 = 0xf1;
            buf[i+idx] = sioDiskReadData(device);

            P1 = 0xf2;
        }
        idx += SIODISK_SECTOR_SIZE;
    //};

    P1 = 0xf3;
}
#endif

void sioDiskWriteSector(char device, const char* buf, unsigned long LBA, unsigned int sectorCount)
{
}

unsigned long sioDiskGetSectorCount(char device)
{
    return 10000;
}

//////////////////////////////////////////////////////////////////////////////
//
void sioDiskTest(char device, char* buf)
{
    P1 = 0x01;
    sioDiskInit(device);

    sioDiskReadSector(device, buf, 0, 1);
}
