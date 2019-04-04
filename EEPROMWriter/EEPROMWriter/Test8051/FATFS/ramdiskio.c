#include "ramdiskio.h"

int RAM_disk_status(char device)
{
	return 0;
}

int RAM_disk_initialize(char device)
{
	return 0;
}

int RAM_disk_read(char device, char* buff, unsigned long sector, unsigned int count)
{
	return 0;
}

int RAM_disk_write(char device, const char* buff, unsigned long sector, unsigned int count)
{
	return 0;
}

int RAM_disk_ioctl(char device, BYTE cmd, void *buff)
{
	return 0;
}