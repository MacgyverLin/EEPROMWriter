#ifndef _COMPACTFLASH_H_
#define _COMPACTFLASH_H_

#include "sysctrl.h"

#ifdef __cplusplus
extern "C"
{
#endif

//////////////////////////////////////////////////////////////////////////////
//
/****************************************************************
;    7       6       5       4       3       2       1       0
;+-------+-------+-------+-------+-------+-------+-------+-------+
;|  BSY  | DRDY  |  DWF  |  DSC  |  DRQ  | CORR  |  IDX  |  ERR  |
;+-------+-------+-------+-------+-------+-------+-------+-------+
;****************************************************************/
 //0 1 0 1 0 0 0 0
 //1 1 1 0 1 0 1 0

#define CF_SECTOR_SIZE 512

#define CF0_BASE                        0x0FF20
#define CF0_PORT_DATA                   (CF0_BASE+0)
#define CF0_PORT_ERROR                  (CF0_BASE+1)
#define CF0_PORT_FEATURES               (CF0_BASE+1)
#define CF0_PORT_SECTOR_COUNT           (CF0_BASE+2)
#define CF0_PORT_LBA_0                  (CF0_BASE+3)
#define CF0_PORT_LBA_1                  (CF0_BASE+4)
#define CF0_PORT_LBA_2                  (CF0_BASE+5)
#define CF0_PORT_LBA_3                  (CF0_BASE+6)
#define CF0_PORT_STATUS                 (CF0_BASE+7)
#define CF0_PORT_COMMAND                (CF0_BASE+7)

#define cfWriteData(device, d)          IOWRITE(CF0_PORT_DATA, d)
#define cfReadData(device)              IOREAD(CF0_PORT_DATA)
#define cfWriteFeatures(device, d)      IOWRITE(CF0_PORT_FEATURES, d)
#define cfReadError(device)             IOREAD(CF0_PORT_ERROR)
#define cfWriteSectorCount(device, d)   IOWRITE(CF0_PORT_SECTOR_COUNT, d)
#define cfWriteLBA0(device, d)          IOWRITE(CF0_PORT_LBA_0, d)
#define cfWriteLBA1(device, d)          IOWRITE(CF0_PORT_LBA_1, d)
#define cfWriteLBA2(device, d)          IOWRITE(CF0_PORT_LBA_2, d)
#define cfWriteLBA3(device, d)          IOWRITE(CF0_PORT_LBA_3, d)
#define cfWriteCommand(device, d)       IOWRITE(CF0_PORT_COMMAND, d)
#define cfReadStatus(device)            IOREAD(CF0_PORT_STATUS)

extern void cfInit(char device);
extern void cfWaitIdle(char device);
extern void cfWaitCommandReady(char device);
extern void cfWaitDataReady(char device);
extern void cfReadSector(char device, char* buf, unsigned long LBA, unsigned int sectorCount);
extern void cfWriteSector(char device, const char* buf, unsigned long LBA, unsigned int sectorCount);
extern unsigned long cfDiskGetSectorCount(char device);

#ifdef __cplusplus
};
#endif

#endif
