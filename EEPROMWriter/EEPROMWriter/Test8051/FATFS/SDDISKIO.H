#ifndef _SDDISKIO_H_
#define _SDDISKIO_H_

#include "diskio.h"

#ifdef __cplusplus
extern "C" {
#endif
	
extern int SD_disk_status(char device);
extern int SD_disk_initialize(char device);
extern int SD_disk_read(char device, char* buff, unsigned long sector, unsigned int count);
extern int SD_disk_write(char device, const char* buff, unsigned long sector, unsigned int count);
extern int SD_disk_ioctl(char device, BYTE cmd, void *buff);

#ifdef __cplusplus
};
#endif

#endif