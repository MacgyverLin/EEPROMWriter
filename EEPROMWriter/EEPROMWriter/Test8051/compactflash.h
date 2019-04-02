#ifndef _COMPACTFLASH_H_
#define _COMPACTFLASH_H_

#include <mcs51/8051.h>
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

#define CF1_BASE                        0x0FF30
#define CF1_PORT_DATA                   (CF1_BASE+0)
#define CF1_PORT_ERROR                  (CF1_BASE+1)
#define CF1_PORT_FEATURES               (CF1_BASE+1)
#define CF1_PORT_SECTOR_COUNT           (CF1_BASE+2)
#define CF1_PORT_LBA_0                  (CF1_BASE+3)
#define CF1_PORT_LBA_1                  (CF1_BASE+4)
#define CF1_PORT_LBA_2                  (CF1_BASE+5)
#define CF1_PORT_LBA_3                  (CF1_BASE+6)
#define CF1_PORT_STATUS                 (CF1_BASE+7)
#define CF1_PORT_COMMAND                (CF1_BASE+7)

#define cfWriteData(device, d)          IOWRITE((CF0_PORT_DATA + ((device)<<4)), d)
#define cfReadData(device)              IOREAD(CF0_PORT_DATA + ((device)<<4))
#define cfWriteFeatures(device, d)      IOWRITE(CF0_PORT_FEATURES + ((device)<<4), d)
#define cfReadError(device)             IOREAD(CF0_PORT_ERROR + ((device)<<4))
#define cfWriteSectorCount(device, d)   IOWRITE(CF0_PORT_SECTOR_COUNT + ((device)<<4), d)
#define cfWriteLBA0(device, d)          IOWRITE(CF0_PORT_LBA_0 + ((device)<<4), d)
#define cfWriteLBA1(device, d)          IOWRITE(CF0_PORT_LBA_1 + ((device)<<4), d)
#define cfWriteLBA2(device, d)          IOWRITE(CF0_PORT_LBA_2 + ((device)<<4), d)
#define cfWriteLBA3(device, d)          IOWRITE(CF0_PORT_LBA_3 + ((device)<<4), d)
#define cfWriteCommand(device, d)       IOWRITE(CF0_PORT_COMMAND + ((device)<<4), d)
#define cfReadStatus(device)            IOREAD(CF0_PORT_STATUS + ((device)<<4))

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
