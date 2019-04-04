#ifndef _RAMDISKIO_H_
#define _RAMDISKIO_H_

#include "diskio.h"

#ifdef __cplusplus
extern "C" {
#endif
	
extern int RAM_disk_status(char device);
extern int RAM_disk_initialize(char device);
extern int RAM_disk_read(char device, char* buff, unsigned long sector, unsigned int count);
extern int RAM_disk_write(char device, const char* buff, unsigned long sector, unsigned int count);
extern int RAM_disk_ioctl(char device, BYTE cmd, void *buff);

#ifdef __cplusplus
};
#endif

#endif