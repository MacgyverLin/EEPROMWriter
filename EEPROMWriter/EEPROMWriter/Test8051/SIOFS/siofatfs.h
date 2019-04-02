#ifndef _SIOFATFS_H_
#define _SIOFATFS_H_

#ifdef __cplusplus
extern "C" {
#endif

#include "pff.h"

typedef char TCHAR;

/* File system object structure (FATFS) */
typedef struct {
    BYTE hashCode;
}SIOFATFS;

/* File object structure (FIL) */
typedef struct {
    BYTE hashCode;
}SIOFILE;

/* Directory object structure (DIR) */
typedef struct {
    BYTE hashCode;
}SIODIR;

/* File function return code (FRESULT) */
typedef enum {
	SIOR_OK = 0,				/* (0) Succeeded */
	SIOR_DISK_ERR,				/* (1) A hard error occurred in the low level disk I/O layer */
	SIOR_INT_ERR,				/* (2) Assertion failed */
	SIOR_NOT_READY,				/* (3) The physical drive cannot work */
	SIOR_NO_FILE,				/* (4) Could not find the file */
	SIOR_NO_PATH,				/* (5) Could not find the path */
	SIOR_INVALID_NAME,			/* (6) The path name format is invalid */
	SIOR_DENIED,				/* (7) Access denied due to prohibited access or directory full */
	SIOR_EXIST,					/* (8) Access denied due to prohibited access */
	SIOR_INVALID_OBJECT,		/* (9) The file/directory object is invalid */
	SIOR_WRITE_PROTECTED,		/* (10) The physical drive is write protected */
	SIOR_INVALID_DRIVE,			/* (11) The logical drive number is invalid */
	SIOR_NOT_ENABLED,			/* (12) The volume has no work area */
	SIOR_NO_FILESYSTEM,			/* (13) There is no valid FAT volume */
	SIOR_MKFS_ABORTED,			/* (14) The f_mkfs() aborted due to any parameter error */
	SIOR_TIMEOUT,				/* (15) Could not get a grant to access the volume within defined period */
	SIOR_LOCKED,				/* (16) The operation is rejected according to the file sharing policy */
	SIOR_NOT_ENOUGH_CORE,		/* (17) LFN working buffer could not be allocated */
	SIOR_TOO_MANY_OPEN_FILES,	/* (18) Number of open files > _FS_SHARE */
	SIOR_INVALID_PARAMETER		/* (19) Given parameter is invalid */
} SIOF_RESULT;

/*--------------------------------------------------------------*/
/* FatFs module application interface                           */
SIOF_RESULT siof_open (SIOFILE* fp, const TCHAR* path, BYTE mode);				/* Open or create a file */
SIOF_RESULT siof_close (SIOFILE* fp);											/* Close an open file object */
SIOF_RESULT siof_read (SIOFILE* fp, void* buff, UINT btr, UINT* br);			/* Read data from a file */
SIOF_RESULT siof_write (SIOFILE* fp, const void* buff, UINT btw, UINT* bw);	/* Write data to a file */
SIOF_RESULT siof_lseek (SIOFILE* fp, DWORD ofs);								/* Move file pointer of a file object */
SIOF_RESULT siof_mkdir(const TCHAR* path);									    /* Create a sub directory */
SIOF_RESULT siof_rename(const TCHAR* path_old, const TCHAR* path_new);		    /* Rename/Move a file or directory */
SIOF_RESULT siof_mount(SIOFATFS* fs, const TCHAR* path, BYTE opt);				/* Mount/Unmount a logical drive */
SIOF_RESULT siof_unlink(const TCHAR* path);									/* Delete an existing file or directory */
SIOF_RESULT siof_opendir(SIODIR* dp, const TCHAR* path);							/* Open a directory */
SIOF_RESULT siof_closedir(SIODIR* dp);											/* Close an open directory */
SIOF_RESULT siof_forward(SIOFILE* fp, UINT(*func)(const BYTE*, UINT), UINT btf, UINT* bf);	/* Forward data to the stream */
SIOF_RESULT siof_truncate(SIOFILE* fp);										/* Truncate file */
SIOF_RESULT siof_sync(SIOFILE* fp);											/* Flush cached data of a writing file */
SIOF_RESULT siof_readdir(SIODIR* dp, FILINFO* fno);								/* Read a directory item */
SIOF_RESULT siof_stat(const TCHAR* path, FILINFO* fno);						/* Get file status */
SIOF_RESULT siof_chmod(const TCHAR* path, BYTE value, BYTE mask);				/* Change attribute of the file/dir */
SIOF_RESULT siof_utime(const TCHAR* path, const FILINFO* fno);				/* Change times-tamp of the file/dir */
SIOF_RESULT siof_chdir(const TCHAR* path);									/* Change current directory */
SIOF_RESULT siof_chdrive(const TCHAR* path);									/* Change current drive */
SIOF_RESULT siof_getcwd(TCHAR* buff, UINT len);								/* Get current directory */
SIOF_RESULT siof_getfree(const TCHAR* path, DWORD* nclst, FATFS** fatfs);		/* Get number of free clusters on the drive */
SIOF_RESULT siof_getlabel(const TCHAR* path, TCHAR* label, DWORD* sn);		/* Get volume label */
SIOF_RESULT siof_setlabel(const TCHAR* label);								/* Set volume label */
SIOF_RESULT siof_mkfs(const TCHAR* path, BYTE sfd, UINT au);					/* Create a file system on the volume */
SIOF_RESULT siof_fdisk(BYTE pdrv, const DWORD szt[], void* work);				/* Divide a physical drive into some partitions */
int siof_putc(TCHAR c, SIOFILE* fp);										/* Put a character to the file */
int siof_puts(const TCHAR* str, SIOFILE* cp);								/* Put a string to the file */
int siof_printf(SIOFILE* fp, const TCHAR* str, ...);						/* Put a formatted string to the file */
TCHAR* siof_gets(TCHAR* buff, int len, SIOFILE* fp);						/* Get a string from the file */
int siof_eof(SIOFILE* fp);
int siof_error(SIOFILE* fp);
int siof_tell(SIOFILE* fp);
int siof_size(SIOFILE* fp);

#ifdef __cplusplus
}
#endif

#endif /* _FATFS */
