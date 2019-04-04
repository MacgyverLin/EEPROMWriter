#ifndef _SIOFS_H_
#define _SIOFS_H_

#include "sysctrl.h"

#ifdef __cplusplus
extern "C"
{
#endif

#define _USE_LFN 1

#if _LFN_UNICODE			/* Unicode string */
#if !_USE_LFN
#error _LFN_UNICODE must be 0 in non-LFN cfg.
#endif
#ifndef _INC_TCHAR
	typedef WCHAR TCHAR;
#define _T(x) L ## x
#define _TEXT(x) L ## x
#endif

#else						/* ANSI/OEM string */
#ifndef _INC_TCHAR
	typedef char TCHAR;
#define _T(x) x
#define _TEXT(x) x
#endif

typedef struct
{
	unsigned int id;
}SIOFILE;

typedef struct
{
	unsigned int id;
}SIOFATFS;

typedef struct
{
	unsigned int id;
}SIODIR;

typedef struct {
	DWORD	fsize;			/* File size */
	WORD	fdate;			/* Last modified date */
	WORD	ftime;			/* Last modified time */
	BYTE	fattrib;		/* Attribute */
	TCHAR	fname[13];		/* Short file name (8.3 format) */
#if _USE_LFN
	TCHAR*	lfname;			/* Pointer to the LFN buffer */
	UINT 	lfsize;			/* Size of LFN buffer in TCHAR */
#endif
} SIOFILEINFO;

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
}SIOFRESULT;

extern SIOFRESULT sioFS_open (SIOFILE* fp, const TCHAR* path, BYTE mode);				/* Open or create a file */
extern SIOFRESULT sioFS_close (SIOFILE* fp);											/* Close an open file object */
extern SIOFRESULT sioFS_read (SIOFILE* fp, void* buff, UINT btr, UINT* br);			/* Read data from a file */
extern SIOFRESULT sioFS_write (SIOFILE* fp, const void* buff, UINT btw, UINT* bw);	/* Write data to a file */
extern SIOFRESULT sioFS_forward (SIOFILE* fp, UINT(*func)(const BYTE*,UINT), UINT btf, UINT* bf);	/* Forward data to the stream */
extern SIOFRESULT sioFS_lseek (SIOFILE* fp, DWORD ofs);								/* Move file pointer of a file object */
extern SIOFRESULT sioFS_truncate (SIOFILE* fp);										/* Truncate file */
extern SIOFRESULT sioFS_sync (SIOFILE* fp);											/* Flush cached data of a writing file */
extern SIOFRESULT sioFS_opendir (SIODIR* dp, const TCHAR* path);						/* Open a directory */
extern SIOFRESULT sioFS_closedir (SIODIR* dp);										/* Close an open directory */
extern SIOFRESULT sioFS_readdir (SIODIR* dp, SIOFILEINFO* fno);							/* Read a directory item */
extern SIOFRESULT sioFS_mkdir (const TCHAR* path);								/* Create a sub directory */
extern SIOFRESULT sioFS_unlink (const TCHAR* path);								/* Delete an existing file or directory */
extern SIOFRESULT sioFS_rename (const TCHAR* path_old, const TCHAR* path_new);	/* Rename/Move a file or directory */
extern SIOFRESULT sioFS_stat (const TCHAR* path, SIOFILEINFO* fno);					/* Get file status */
extern SIOFRESULT sioFS_chmod (const TCHAR* path, BYTE value, BYTE mask);			/* Change attribute of the file/dir */
extern SIOFRESULT sioFS_utime (const TCHAR* path, const SIOFILEINFO* fno);			/* Change times-tamp of the file/dir */
extern SIOFRESULT sioFS_chdir (const TCHAR* path);								/* Change current directory */
extern SIOFRESULT sioFS_chdrive (const TCHAR* path);								/* Change current drive */
extern SIOFRESULT sioFS_getcwd (TCHAR* buff, UINT len);							/* Get current directory */
extern SIOFRESULT sioFS_getfree (const TCHAR* path, DWORD* nclst, FATFS** fatfs);	/* Get number of free clusters on the drive */
extern SIOFRESULT sioFS_getlabel (const TCHAR* path, TCHAR* label, DWORD* sn);	/* Get volume label */
extern SIOFRESULT sioFS_setlabel (const TCHAR* label);							/* Set volume label */
extern SIOFRESULT sioFS_mount (SIOFATFS* fs, const TCHAR* path, BYTE opt);			/* Mount/Unmount a logical drive */
extern SIOFRESULT sioFS_mkfs (const TCHAR* path, BYTE sfd, UINT au);				/* Create a file system on the volume */
extern SIOFRESULT sioFS_fdisk (BYTE pdrv, const DWORD szt[], void* work);			/* Divide a physical drive into some partitions */
extern int sioFS_putc (TCHAR c, SIOFILE* fp);										/* Put a character to the file */
extern int sioFS_puts (const TCHAR* str, SIOFILE* cp);								/* Put a string to the file */
extern int sioFS_printf (SIOFILE* fp, const TCHAR* str, ...);						/* Put a formatted string to the file */
extern TCHAR* sioFS_gets (TCHAR* buff, int len, SIOFILE* fp);						/* Get a string from the file */
extern char sioFS_eof(SIOFILE* fp);
extern char sioFS_error(SIOFILE* fp);
extern char sioFS_tell(SIOFILE* fp);
extern char sioFS_size(SIOFILE* fp);

#ifdef __cplusplus
};
#endif

#endif // _SIODISK_H_
