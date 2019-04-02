#ifndef _SIODISK_H_
#define _SIODISK_H_

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
#define SIODISK_SECTOR_SIZE 512

extern void sioDiskWriteData(char device, unsigned char d);
extern char sioDiskReadData(char device);
extern void sioDiskWriteFeatures(char device, unsigned char d);
extern char sioDiskReadError(char device);
extern void sioDiskWriteSectorCount(char device, unsigned char d);
extern void sioDiskWriteLBA0(char device, unsigned char d);
extern void sioDiskWriteLBA1(char device, unsigned char d);
extern void sioDiskWriteLBA2(char device, unsigned char d);
extern void sioDiskWriteLBA3(char device, unsigned char d);
extern void sioDiskWriteCommand(char device, unsigned char d);
extern char sioDiskReadStatus(char device);

extern void sioDiskInit(char device);
extern void sioDiskWaitIdle(char device);
extern void sioDiskWaitCommandReady(char device);
extern void sioDiskWaitDataReady(char device);
#if 0
extern void sioDiskReadSector(char device, char* buf, unsigned int sectorCount);
#else
extern void sioDiskReadSector(char device, char* buf, unsigned long LBA, unsigned int sectorCount);
#endif
extern void sioDiskWriteSector(char device, const char* buf, unsigned long LBA, unsigned int sectorCount);
extern unsigned long sioDiskGetSectorCount(char device);

extern void sioDiskTest(char device, char* buf);

#ifdef __cplusplus
};
#endif

#endif // _SIODISK_H_
