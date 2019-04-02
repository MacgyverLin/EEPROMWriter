#include "sioFS.h"
#include "sio.h"

#define SIOFS_MSG_MASK			0x3f

#define SIOFS_MSG_CMDBIT		0x80
#define SIOFS_MSG_ACKBIT		0x40
#define SIOFS_MSG_OPEN			0x00
#define SIOFS_MSG_CLOSE			0x01
#define SIOFS_MSG_READ			0x02
#define SIOFS_MSG_WRITE			0x03
#define SIOFS_MSG_FORWARD		0x04
#define SIOFS_MSG_LSEEK			0x05
#define SIOFS_MSG_TRUNCATE		0x06
#define SIOFS_MSG_SYNC			0x07
#define SIOFS_MSG_OPENDIR		0x08
#define SIOFS_MSG_CLOSEDIR		0x09
#define SIOFS_MSG_READDIR		0x0A
#define SIOFS_MSG_MKDIR			0x0B
#define SIOFS_MSG_UNLINK		0x0C
#define SIOFS_MSG_RENAME		0x0D
#define SIOFS_MSG_STAT			0x0E
#define SIOFS_MSG_CHMOD			0x0F
#define SIOFS_MSG_UTIME			0x10
#define SIOFS_MSG_CHDIR			0x11
#define SIOFS_MSG_CHDRIVE		0x12
#define SIOFS_MSG_GETCWD		0x13
#define SIOFS_MSG_GETFREE		0x14
#define SIOFS_MSG_GETLABEL		0x15
#define SIOFS_MSG_SETLABEL		0x16
#define SIOFS_MSG_MOUNT			0x17
#define SIOFS_MSG_MKFS			0x18
#define SIOFS_MSG_FDISK			0x19
#define SIOFS_MSG_PUTC			0x1A
#define SIOFS_MSG_PUTS			0x1B
#define SIOFS_MSG_PRINTF		0x1C
#define SIOFS_MSG_GETS			0x1D
#define SIOFS_MSG_EOF			0x1E
#define SIOFS_MSG_ERROR			0x1F
#define SIOFS_MSG_TELL			0x2F
#define SIOFS_MSG_SIZE			0x2F

#define SIOFS_IS_ACKED(cmd, ack) ((ack.type==(SIOFS_MSG_ACKBIT | (cmd.type & SIOFS_MSG_MASK))) /*&& (cmd.timeStamp==ack.timeStamp)*/ )

SIOFRESULT sioFS_init()
{
	sioInit(0);

	return SIOR_OK;
}

typedef struct
{
	unsigned char type;
	unsigned int pathLen;
	unsigned char mode;
}SIOFSOpenCmd;
typedef struct
{
	unsigned char type;
	unsigned int id;
	unsigned char result;
}SIOFSOpenAck;
SIOFRESULT sioFS_open(SIOFILE* fp, const TCHAR* path, unsigned char mode)
{
	SIOFSOpenCmd sioFSOpenCmd;
	SIOFSOpenAck sioFSOpenAck;
	sioFSOpenCmd.type = SIOFS_MSG_CMDBIT | SIOFS_MSG_OPEN;
	sioFSOpenCmd.pathLen = strlen(path) + 1;
	sioFSOpenCmd.mode = mode;

	sioTXBuf(0, &sioFSOpenCmd, sizeof(sioFSOpenCmd));
	sioTXBuf(0, path, sioFSOpenCmd.pathLen);
	sioRXBuf(0, &sioFSOpenAck, sizeof(sioFSOpenAck));
	if(!SIOFS_IS_ACKED(sioFSOpenCmd, sioFSOpenAck))
	{
		return SIOR_TIMEOUT;
	}
	else
	{
		fp->id = id;
		return sioFSOpenAck.result;
	}
}

typedef struct
{
	unsigned char type;
	unsigned char id;
}SIOFSCloseCmd;
typedef struct
{
	unsigned char type;
	unsigned char result;
}SIOFSCloseAck;
SIOFRESULT sioFS_close(SIOFILE* fp)
{
	SIOFSCloseCmd sioFSCloseCmd;
	SIOFSCloseAck sioFSCloseAck;
	sioFSCloseCmd.type = SIOFS_MSG_CMDBIT | SIOFS_MSG_CLOSE;
	sioFSCloseCmd.id = fp->id;

	sioTXBuf(0, &sioFSCloseCmd, sizeof(sioFSCloseCmd));
	sioRXBuf(0, &sioFSCloseAck, sizeof(sioFSCloseAck));
	if(!SIOFS_IS_ACKED(sioFSCloseCmd, sioFSCloseAck))
		return SIOR_TIMEOUT;
	else
		return sioFSCloseAck.result;
}

typedef struct
{
	unsigned char type;
	unsigned char id;

	unsigned int btr;
}SIOFSReadCmd;
typedef struct
{
	unsigned char type;
	unsigned char result;
	unsigned int br;
}SIOFSReadAck;
SIOFRESULT sioFS_read(SIOFILE* fp, void* buff, unsigned int btr, unsigned int* br)
{
	SIOFSReadCmd sioFSReadCmd;
	SIOFSReadAck sioFSReadAck;
	sioFSReadCmd.type = SIOFS_MSG_CMDBIT | SIOFS_MSG_READ;
	sioFSReadCmd.id = fp->id;
	sioFSReadCmd.btr = btr;

	sioTXBuf(0, &sioFSReadCmd, sizeof(sioFSReadCmd));
	sioRXBuf(0, &sioFSReadAck, sizeof(sioFSReadAck));
	if(!SIOFS_IS_ACKED(sioFSReadCmd, sioFSReadAck))
		return SIOR_TIMEOUT;
	else
	{
		*br = sioFSReadAck.br;
		sioRXBuf(0, buff, *br);
		return sioFSReadAck.result;
	}
}

typedef struct
{
	unsigned char type;
	unsigned char id;

	unsigned int btw;
}SIOFSWriteCmd;
typedef struct
{
	unsigned char type;
	unsigned char result;
}SIOFSWriteAck;
SIOFRESULT sioFS_write(SIOFILE* fp, const void* buff, UINT btw, UINT* bw)
{
	SIOFSWriteCmd sioFSWriteCmd;
	SIOFSWriteAck sioFSWriteAck;
	sioFSWriteCmd.type = SIOFS_MSG_CMDBIT | SIOFS_MSG_WRITE;
	sioFSWriteCmd.id = fp->id;
	sioFSWriteCmd.btw = btw;

	sioTXBuf(0, &sioFSWriteCmd, sizeof(sioFSWriteCmd));
	sioTXBuf(0, buff, sioFSWriteCmd.btw);

	sioRXBuf(0, &sioFSWriteAck, sizeof(sioFSWriteAck));
	if(!SIOFS_IS_ACKED(sioFSWriteCmd, sioFSWriteAck))
		return SIOR_TIMEOUT;
	else
	{
		return sioFSReadAck.result;
	}
}

/*
SIOFRESULT sioFS_forward(SIOFILE* fp, UINT(*func)(const BYTE*, UINT), UINT btf, UINT* bf)
{
}
*/

typedef struct
{
	unsigned char type;
	unsigned char id;

	unsigned long ofs;
}SIOFSLSeekCmd;
typedef struct
{
	unsigned char type;
	unsigned char result;
}SIOFSLSeekAck;
SIOFRESULT sioFS_lseek(SIOFILE* fp, DWORD ofs)
{
	SIOFSLSeekCmd sioFSLSeekCmd;
	SIOFSLSeekAck sioFSLSeekAck;
	sioFSLSeekCmd.type = SIOFS_MSG_CMDBIT | SIOFS_MSG_LSEEK;
	sioFSLSeekCmd.id = fp->id;
	sioFSLSeekCmd.ofs = ofs;

	sioTXBuf(0, &sioFSLSeekCmd, sizeof(sioFSLSeekCmd));

	sioRXBuf(0, &sioFSLSeekAck, sizeof(sioFSLSeekAck));
	if (!SIOFS_IS_ACKED(sioFSLSeekCmd, sioFSLSeekAck))
		return SIOR_TIMEOUT;
	else
	{
		return sioFSLSeekAck.result;
	}
}

typedef struct
{
	unsigned char type;
	unsigned char id;
}SIOFSLTruncateCmd;
typedef struct
{
	unsigned char type;
	unsigned char result;
}SIOFSLTruncateAck;
SIOFRESULT sioFS_truncate(SIOFILE* fp)
{
	SIOFSLTruncateCmd sioFSLTruncateCmd;
	SIOFSLTruncateAck sioFSLTruncateAck;
	sioFSLTruncateCmd.type = SIOFS_MSG_CMDBIT | SIOFS_MSG_TRUNCATE;
	sioFSLTruncateCmd.id = fp->id;

	sioTXBuf(0, &sioFSLTruncateCmd, sizeof(sioFSLTruncateCmd));

	sioRXBuf(0, &sioFSLTruncateAck, sizeof(sioFSLTruncateAck));
	if (!SIOFS_IS_ACKED(sioFSLTruncateCmd, sioFSLTruncateAck))
		return SIOR_TIMEOUT;
	else
	{
		return sioFSLTruncateAck.result;
	}
}

typedef struct
{
	unsigned char type;
	unsigned char id;
}SIOFSLSyncCmd;
typedef struct
{
	unsigned char type;
	unsigned char result;
}SIOFSLSyncAck;
SIOFRESULT sioFS_sync(SIOFILE* fp)
{
	SIOFSLSyncCmd sioFSLSyncCmd;
	SIOFSLSyncAck sioFSLSyncAck;
	sioFSLSyncCmd.type = SIOFS_MSG_CMDBIT | SIOFS_MSG_SYNC;
	sioFSLSyncCmd.id = fp->id;

	sioTXBuf(0, &sioFSLSyncCmd, sizeof(sioFSLSyncCmd));

	sioRXBuf(0, &sioFSLSyncAck, sizeof(sioFSLSyncAck));
	if (!SIOFS_IS_ACKED(sioFSLSyncCmd, sioFSLSyncAck))
		return SIOR_TIMEOUT;
	else
	{
		return sioFSLSyncAck.result;
	}
}

typedef struct
{
	unsigned char type;
	unsigned char id;
	unsigned int pathLen;
}SIOFSOpenDirCmd;
typedef struct
{
	unsigned char type;
	unsigned char result;
}SIOFSOpenDirAck;
SIOFRESULT sioFS_opendir(SIODIR* dp, const TCHAR* path)
{
	SIOFSOpenDirCmd sioFSOpenDirCmd;
	SIOFSOpenDirAck sioFSOpenDirAck;
	sioFSOpenDirCmd.type = SIOFS_MSG_CMDBIT | SIOFS_MSG_OPENDIR;
	sioFSOpenDirCmd.id = dp->id;
	sioFSOpenDirCmd.pathLen = strlen(path) + 1;

	sioTXBuf(0, &sioFSOpenDirCmd, sizeof(sioFSOpenDirCmd));
	sioTXBuf(0, path, sioFSOpenDirCmd.pathLen);
	sioRXBuf(0, &sioFSOpenDirAck, sizeof(sioFSOpenDirAck));
	if (!SIOFS_IS_ACKED(sioFSOpenDirCmd, sioFSOpenDirAck))
		return SIOR_TIMEOUT;
	else
		return sioFSOpenDirAck.result;
}

typedef struct
{
	unsigned char type;
	unsigned char id;
}SIOFSCloseDirCmd;
typedef struct
{
	unsigned char type;
	unsigned char result;
}SIOFSCloseDirAck;
SIOFRESULT sioFS_closedir(SIODIR* dp)
{
	SIOFSCloseDirCmd sioFSCloseDirCmd;
	SIOFSCloseDirAck sioFSCloseDirAck;
	sioFSCloseDirCmd.type = SIOFS_MSG_CMDBIT | SIOFS_MSG_CLOSEDIR;
	sioFSCloseDirCmd.id = dp->id;

	sioTXBuf(0, &sioFSCloseDirCmd, sizeof(sioFSCloseDirCmd));
	sioRXBuf(0, &sioFSCloseDirAck, sizeof(sioFSCloseDirAck));
	if (!SIOFS_IS_ACKED(sioFSCloseDirCmd, sioFSCloseDirAck))
		return SIOR_TIMEOUT;
	else
		return sioFSCloseDirAck.result;
}

typedef struct
{
	unsigned char type;
	unsigned char id;
}SIOFSReadDirCmd;
typedef struct
{
	unsigned char type;
	SIOFILEINFO finfo
	unsigned char result;
}SIOFSReadDirAck;
SIOFRESULT sioFS_readdir(DIR* dp, SIOFILEINFO* fno)
{
}

typedef struct
{
	unsigned char type;
	unsigned char id;
	unsigned int pathLen;
}SIOFSReadDirCmd;
typedef struct
{
	unsigned char type;
	unsigned char id;
	unsigned char result;
	SIOFILEINFO finfo;
}SIOFSReadDirAck;
SIOFRESULT sioFS_readdir(DIR* dp, SIOFILEINFO* fno)
{
	SIOFSReadDirCmd sioFSReadDirCmd;
	SIOFSReadDirAck sioFSReadDirAck;
	sioFSReadDirCmd.type = SIOFS_MSG_CMDBIT | SIOFS_MSG_READDIR;
	sioFSReadDirCmd.id = dp->id;
	sioFSReadDirCmd.pathLen = strlen(fno->lfname) + 1;

	sioTXBuf(0, &sioFSReadDirCmd, sizeof(sioFSReadDirCmd));
	sioTXBuf(0, fno->lfname, sioFSReadDirCmd.pathLen);
	sioRXBuf(0, &sioFSReadDirAck, sizeof(sioFSReadDirAck));
	if (!SIOFS_IS_ACKED(sioFSReadDirCmd, sioFSReadDirAck))
		return SIOR_TIMEOUT;
	else
	{
		fno = sioFSReadDirAck.finfo;
		return sioFSReadDirAck.result;
	}
}

typedef struct
{
	unsigned char type;
	unsigned char id;
	unsigned int pathLen;
}SIOFSMakeDirCmd;
typedef struct
{
	unsigned char type;
	unsigned char id;
	unsigned char result;
}SIOFSMakeDirAck;
SIOFRESULT sioFS_mkdir(const TCHAR* path)
{
	SIOFSMakeDirCmd sioFSMakeDirCmd;
	SIOFSMakeDirAck sioFSMakeDirAck;
	sioFSMakeDirCmd.type = SIOFS_MSG_CMDBIT | SIOFS_MSG_MKDIR;
	sioFSMakeDirCmd.id = dp->id;
	sioFSMakeDirCmd.pathLen = strlen(path) + 1;

	sioTXBuf(0, &sioFSMakeDirCmd, sizeof(sioFSMakeDirCmd));
	sioTXBuf(0, path, sioFSMakeDirCmd.pathLen);
	sioRXBuf(0, &sioFSMakeDirAck, sizeof(sioFSMakeDirAck));
	if (!SIOFS_IS_ACKED(sioFSMakeDirCmd, sioFSMakeDirAck))
		return SIOR_TIMEOUT;
	else
	{
		return sioFSMakeDirAck.result;
	}
}

typedef struct
{
	unsigned char type;
	unsigned char id;
	unsigned int pathLen;
}SIOFSUnlinkCmd;
typedef struct
{
	unsigned char type;
	unsigned char id;
	unsigned char result;
}SIOFSUnlinkAck;
SIOFRESULT sioFS_unlink(const TCHAR* path)
{
	SIOFSUnlinkCmd sioFSUnlinkDirCmd;
	SIOFSUnlinkAck sioFSUnlinkDirAck;
	sioFSUnlinkCmd.type = SIOFS_MSG_CMDBIT | SIOFS_MSG_UNLINK;
	sioFSUnlinkCmd.id = dp->id;
	sioFSUnlinkCmd.pathLen = strlen(path) + 1;

	sioTXBuf(0, &sioFSUnlinkDirCmd, sizeof(sioFSUnlinkDirCmd));
	sioTXBuf(0, path, sioFSUnlinkDirCmd.pathLen);
	sioRXBuf(0, &sioFSUnlinkDirAck, sizeof(sioFSUnlinkDirAck));
	if (!SIOFS_IS_ACKED(sioFSUnlinkDirCmd, sioFSUnlinkDirAck))
		return SIOR_TIMEOUT;
	else
	{
		return sioFSUnlinkDirAck.result;
	}
}

typedef struct
{
	unsigned char type;
	unsigned char id;
	unsigned int oldPathLen;
	unsigned int newPathLen;
}SIOFSRenameCmd;
typedef struct
{
	unsigned char type;
	unsigned char id;
	unsigned char result;
}SIOFSRenameAck;
SIOFRESULT sioFS_rename(const TCHAR* path_old, const TCHAR* path_new)
{
	SIOFSRenameCmd sioFSRenameCmd;
	SIOFSRenameAck sioFSRenameAck;
	sioFSRenameCmd.type = SIOFS_MSG_CMDBIT | SIOFS_MSG_RENAME;
	sioFSRenameCmd.id = dp->id;
	sioFSRenameCmd.oldPathLen = strlen(path_old) + 1;
	sioFSRenameCmd.newPathLen = strlen(path_new) + 1;

	sioTXBuf(0, &sioFSRenameCmd, sizeof(sioFSRenameCmd));
	sioTXBuf(0, path_old, sioFSUnlinkDirCmd.oldPathLen);
	sioTXBuf(0, path_new, sioFSUnlinkDirCmd.newPathLen);
	sioRXBuf(0, &sioFSRenameAck, sizeof(sioFSRenameAck));
	if (!SIOFS_IS_ACKED(sioFSRenameCmd, sioFSRenameAck))
		return SIOR_TIMEOUT;
	else
	{
		return sioFSRenameAck.result;
	}
}

typedef struct
{
	unsigned char type;
	unsigned char id;
	unsigned int pathLen;
}SIOFSStatCmd;
typedef struct
{
	unsigned char type;
	unsigned char id;
	unsigned char result;
	SIOFILEINFO finfo;
}SIOFSStatAck;
SIOFRESULT sioFS_stat(const TCHAR* path, SIOFILEINFO* fno)
{
	SIOFSStatCmd sioFSStatCmd;
	SIOFSStatAck sioFSStatAck;
	sioFSStatCmd.type = SIOFS_MSG_CMDBIT | SIOFS_MSG_STAT;
	sioFSStatCmd.id = dp->id;
	sioFSStatCmd.pathLen = strlen(path) + 1;

	sioTXBuf(0, &sioFSStatCmd, sizeof(sioFSStatCmd));
	sioTXBuf(0, path, sioFSStatCmd.pathLen);
	sioRXBuf(0, &sioFSStatAck, sizeof(sioFSStatAck));
	if (!SIOFS_IS_ACKED(sioFSStatCmd, sioFSStatAck))
		return SIOR_TIMEOUT;
	else
	{
		*fno = sioFSStatAck.finfo;
		return sioFSStatAck.result;
	}
}

typedef struct
{
	unsigned char type;
	unsigned char id;
	unsigned int pathLen;
	unsigned char value;
	unsigned char mask;
}SIOFSChmodCmd;
typedef struct
{
	unsigned char type;
	unsigned char id;
	unsigned char result;
}SIOFSChmodAck;
SIOFRESULT sioFS_chmod(const TCHAR* path, BYTE value, BYTE mask)
{
	SIOFSChmodCmd sioFSChmodCmd;
	SIOFSChmodAck sioFSChmodAck;
	sioFSChmodCmd.type = SIOFS_MSG_CMDBIT | SIOFS_MSG_CHMOD;
	sioFSChmodCmd.id = dp->id;
	sioFSChmodCmd.pathLen = strlen(path) + 1;
	sioFSChmodCmd.value = value;
	sioFSChmodCmd.mask = mask;

	sioTXBuf(0, &sioFSChmodCmd, sizeof(sioFSChmodCmd));
	sioTXBuf(0, path, sioFSChmodCmd.pathLen);
	sioRXBuf(0, &sioFSChmodAck, sizeof(sioFSChmodAck));
	if (!SIOFS_IS_ACKED(sioFSChmodCmd, sioFSChmodAck))
		return SIOR_TIMEOUT;
	else
	{
		return sioFSChmodAck.result;
	}
}

typedef struct
{
	unsigned char type;
	unsigned int pathLen;
	SIOFILEINFO finfo;
}SIOFSUTimeCmd;
typedef struct
{
	unsigned char type;
	unsigned char result;
}SIOFSUTimeAck;
SIOFRESULT sioFS_utime(const TCHAR* path, const SIOFILEINFO* fno)
{
	SIOFSUTimeCmd sioFSUTimeCmd;
	SIOFSUTimeAck sioFSUTimeAck;
	sioFSUTimeCmd.type = SIOFS_MSG_CMDBIT | SIOFS_MSG_UTIME;
	sioFSUTimeCmd.pathLen = strlen(path) + 1;
	sioFSUTimeCmd.finfo = *fno;

	sioTXBuf(0, &sioFSUTimeCmd, sizeof(sioFSUTimeCmd));
	sioTXBuf(0, path, sioFSUTimeCmd.pathLen);
	sioRXBuf(0, &sioFSUTimeAck, sizeof(sioFSUTimeAck));
	if (!SIOFS_IS_ACKED(sioFSUTimeCmd, sioFSUTimeAck))
		return SIOR_TIMEOUT;
	else
	{
		return sioFSUTimeAck.result;
	}
}

typedef struct
{
	unsigned char type;
	unsigned int pathLen;
}SIOFSChdirCmd;
typedef struct
{
	unsigned char type;
	unsigned char result;
}SIOFSChdirAck;
SIOFRESULT sioFS_chdir(const TCHAR* path)
{
	SIOFSChdirCmd sioFSChdirCmd;
	SIOFSChdirAck sioFSChdirAck;
	sioFSChdirCmd.type = SIOFS_MSG_CMDBIT | SIOFS_MSG_CHDIR;
	sioFSChdirCmd.pathLen = strlen(path) + 1;

	sioTXBuf(0, &sioFSChdirCmd, sizeof(sioFSChdirCmd));
	sioTXBuf(0, path, sioFSChdirCmd.pathLen);
	sioRXBuf(0, &sioFSChdirAck, sizeof(sioFSChdirAck));
	if (!SIOFS_IS_ACKED(sioFSChdirCmd, sioFSChdirAck))
		return SIOR_TIMEOUT;
	else
	{
		return sioFSChdirAck.result;
	}
}

typedef struct
{
	unsigned char type;
	unsigned int pathLen;
}SIOFSChdriveCmd;
typedef struct
{
	unsigned char type;
	unsigned char result;
}SIOFSChdriveAck;
SIOFRESULT sioFS_chdrive(const TCHAR* path)
{
	SIOFSChdriveCmd sioFSChdriveCmd;
	SIOFSChdriveAck sioFSChdriveAck;
	sioFSChdriveCmd.type = SIOFS_MSG_CMDBIT | SIOFS_MSG_CHDRIVE;
	sioFSChdriveCmd.pathLen = strlen(path) + 1;

	sioTXBuf(0, &sioFSChdriveCmd, sizeof(sioFSChdriveCmd));
	sioTXBuf(0, path, sioFSChdriveCmd.pathLen);
	sioRXBuf(0, &sioFSChdriveAck, sizeof(sioFSChdriveAck));
	if (!SIOFS_IS_ACKED(sioFSChdriveCmd, sioFSChdriveAck))
		return SIOR_TIMEOUT;
	else
	{
		return sioFSChdriveAck.result;
	}
}

/*
SIOFRESULT sioFS_getcwd(TCHAR* buff, UINT len)
{
}
*/

SIOFRESULT sioFS_getfree(const TCHAR* path, DWORD* nclst, FATFS** fatfs)
{
}

SIOFRESULT sioFS_getlabel(const TCHAR* path, TCHAR* label, DWORD* sn)
{
}

SIOFRESULT sioFS_setlabel(const TCHAR* label)
{
}

SIOFRESULT sioFS_mount(SIOFATFS* fs, const TCHAR* path, BYTE opt)
{
}

SIOFRESULT sioFS_mkfs(const TCHAR* path, BYTE sfd, UINT au)
{
}

SIOFRESULT sioFS_fdisk(BYTE pdrv, const DWORD szt[], void* work)
{
}

int f_putc(TCHAR c, SIOFILE* fp)
{
}

int f_puts(const TCHAR* str, SIOFILE* cp)
{
}

int f_printf(SIOFILE* fp, const TCHAR* str, ...)
{
}

TCHAR* f_gets(TCHAR* buff, int len, SIOFILE* fp)
{
}

char f_eof(SIOFILE* fp)
{
}

char f_error(SIOFILE* fp)
{
}

char f_tell(SIOFILE* fp)
{
}

char f_size(SIOFILE* fp)
{
}