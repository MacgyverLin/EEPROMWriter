#include "siofatfs.h"
#include "sio.h"
#include <string.h>

#define SIOF_MSG_MASK		0x7f
#define SIOF_MSG_CMD		0x80

#define SIOF_MSG_OPEN		0x01
#define SIOF_MSG_CLOSE		0x02
#define SIOF_MSG_READ		0x04
#define SIOF_MSG_WRITE		0x05
#define SIOF_MSG_LSEEK		0x06
#define SIOF_MSG_MKDIR		0x07
#define SIOF_MSG_RENAME		0x08
#define SIOF_MSG_MOUNT		0x09
#define SIOF_MSG_UNLINK		0x01
#define SIOF_MSG_OPENDIR	0x02
#define SIOF_MSG_CLOSEDIR	0x04
#define SIOF_MSG_FORWARD	0x05
#define SIOF_MSG_TRUNCATE	0x06
#define SIOF_MSG_SYNC		0x07
#define SIOF_MSG_READDIR	0x08
#define SIOF_MSG_STAT		0x09
#define SIOF_MSG_CHMOD		0x0A
#define SIOF_MSG_UTIME		0x0B
#define SIOF_MSG_CHDIR		0x0C
#define SIOF_MSG_CHDRIVE	0x0D
#define SIOF_MSG_GETCWD		0x0E
#define SIOF_MSG_GETFREE	0x0F
#define SIOF_MSG_GETLABEL	0x10
#define SIOF_MSG_SETLABEL	0x11
#define SIOF_MSG_MKFS		0x12
#define SIOF_MSG_FDISK		0x13
#define SIOF_MSG_PUTC		0x14
#define SIOF_MSG_PUTS		0x15
#define SIOF_MSG_PRINTF		0x16
#define SIOF_MSG_GETS		0x17
#define SIOF_MSG_EOF		0x18
#define SIOF_MSG_ERROR		0x19
#define SIOF_MSG_TELL		0x1A
#define SIOF_MSG_SIZE		0x1B

#define VALID_ACK(cmd, ack) (((cmd.msgType) & SIOF_MSG_MASK)==ack.msgType)

#pragma pack (1)
typedef struct
{
    BYTE msgType;
	DWORD pathLen;
    BYTE opt;
}SIOF_MOUNT_CMD;
typedef struct
{
    BYTE msgType;
    BYTE hashCode;
	BYTE res;
}SIOF_MOUNT_ACK;
SIOF_RESULT siof_mount(SIOFATFS* fs, const TCHAR* path, BYTE opt)
{
    SIOF_RESULT res;
	SIOF_MOUNT_CMD cmd;
    SIOF_MOUNT_ACK ack;

	cmd.msgType = SIOF_MSG_CMD | SIOF_MSG_MOUNT;
	cmd.pathLen = strlen(path)+1;
    cmd.opt = opt;
    sioTXBuf(0, (void *)&cmd, sizeof(cmd));
	sioTXBuf(0, path, cmd.pathLen);
	sioRXBuf(0, (void *)&ack, sizeof(ack));

	if (VALID_ACK(cmd, ack))
	{
		fs->hashCode = ack.hashCode;
		return ack.res;
	}
	else
	{
		return SIOR_TIMEOUT;
	}
}

typedef struct
{
	BYTE msgType;
	DWORD pathLen;
	BYTE mode;
}SIOF_OPEN_CMD;
typedef struct
{
	BYTE msgType;
	BYTE hashCode;
	BYTE res;
}SIOF_OPEN_ACK;
SIOF_RESULT siof_open(SIOFILE* fp, const TCHAR* path, BYTE mode)
{
	SIOF_RESULT res;
	SIOF_OPEN_CMD cmd;
	SIOF_OPEN_ACK ack;

	cmd.msgType = SIOF_MSG_CMD | SIOF_MSG_OPEN;
	cmd.pathLen = strlen(path)+1;
    cmd.mode = mode;
	sioTXBuf(0, (void *)&cmd, sizeof(cmd));
	sioTXBuf(0, path, cmd.pathLen);
	sioRXBuf(0, (void *)&ack, sizeof(ack));
	if (VALID_ACK(cmd, ack))
	{
		fp->hashCode = ack.hashCode;
		return ack.res;
	}
	else
	{
		return SIOR_TIMEOUT;
	}
}

typedef struct
{
	BYTE msgType;
	DWORD hashCode;
}SIOF_CLOSE_CMD;
typedef struct
{
	BYTE msgType;
	BYTE res;
}SIOF_CLOSE_ACK;
SIOF_RESULT siof_close(SIOFILE* fp)
{
	SIOF_RESULT res;
	SIOF_CLOSE_CMD cmd = { SIOF_MSG_CMD | SIOF_MSG_CLOSE, fp->hashCode };
	SIOF_CLOSE_ACK ack;

	sioTXBuf(0, (void *)&cmd, sizeof(cmd));
	sioRXBuf(0, (void *)&ack, sizeof(ack));
	if(VALID_ACK(cmd, ack))
	{
		return ack.res;
	}
	else
	{
		return SIOR_TIMEOUT;
	}
}

typedef struct
{
	BYTE msgType;
	DWORD hashCode;
	DWORD btr;
}SIOF_READ_CMD;
typedef struct
{
	BYTE msgType;
	BYTE br;
	BYTE res;
}SIOF_READ_ACK;
SIOF_RESULT siof_read(SIOFILE* fp, void* buff, UINT btr, UINT* br)
{
	SIOF_RESULT res;
	SIOF_READ_CMD cmd = { SIOF_MSG_CMD | SIOF_MSG_READ, fp->hashCode, btr };
	SIOF_READ_ACK ack;

	sioTXBuf(0, (void *)&cmd, sizeof(cmd));
	sioRXBuf(0, (void *)&ack, sizeof(ack));
	if(VALID_ACK(cmd, ack))
	{
		sioRXBuf(0, buff, ack.br);
		*br = ack.br;
		return ack.res;
	}
	else
	{
		return SIOR_TIMEOUT;
	}
}

typedef struct
{
	BYTE msgType;
	DWORD hashCode;
	DWORD btw;
}SIOF_WRITE_CMD;
typedef struct
{
	BYTE msgType;
	BYTE bw;
	BYTE res;
}SIOF_WRITE_ACK;
SIOF_RESULT siof_write(SIOFILE* fp, const void* buff, UINT btw, UINT* bw)
{
	SIOF_RESULT res;
	SIOF_WRITE_CMD cmd = { SIOF_MSG_CMD | SIOF_MSG_WRITE, fp->hashCode, btw };
	SIOF_WRITE_ACK ack;

	sioTXBuf(0, (void *)&cmd, sizeof(cmd));
	sioTXBuf(0, (void *)buff, btw);
	sioRXBuf(0, (void *)&ack, sizeof(ack));
	if (VALID_ACK(cmd, ack))
	{
		*bw = ack.bw;
		return ack.res;
	}
	else
	{
		return SIOR_TIMEOUT;
	}
}

typedef struct
{
	BYTE msgType;
	DWORD hashCode;
	DWORD ofs;
}SIOF_LSEEK_CMD;
typedef struct
{
	BYTE msgType;
	BYTE res;
}SIOF_LSEEK_ACK;
SIOF_RESULT siof_lseek(SIOFILE* fp, DWORD ofs)
{
	SIOF_RESULT res;
	SIOF_LSEEK_CMD cmd = { SIOF_MSG_CMD | SIOF_MSG_LSEEK, fp->hashCode, ofs };
	SIOF_LSEEK_ACK ack;

	sioTXBuf(0, (void *)&cmd, sizeof(cmd));
	sioRXBuf(0, (void *)&ack, sizeof(ack));
	if (VALID_ACK(cmd, ack))
	{
		return ack.res;
	}
	else
	{
		return SIOR_TIMEOUT;
	}
}

typedef struct
{
	BYTE msgType;
	DWORD pathLen;
}SIOF_MKDIR_CMD;
typedef struct
{
	BYTE msgType;
	BYTE res;
}SIOF_MKDIR_ACK;
SIOF_RESULT siof_mkdir(const TCHAR* path)
{
	SIOF_RESULT res;
	SIOF_MKDIR_CMD cmd = { SIOF_MSG_CMD | SIOF_MSG_MKDIR, strlen(path) + 1 };
	SIOF_MKDIR_ACK ack;

	sioTXBuf(0, (void *)&cmd, sizeof(cmd));
	sioTXBuf(0, (void *)path, cmd.pathLen);
	sioRXBuf(0, (void *)&ack, sizeof(ack));
	if (VALID_ACK(cmd, ack))
	{
		return ack.res;
	}
	else
	{
		return SIOR_TIMEOUT;
	}
}

typedef struct
{
	BYTE msgType;
	DWORD oldPathLen;
	DWORD newPathLen;
}SIOF_RENAME_CMD;
typedef struct
{
	BYTE msgType;
	BYTE res;
}SIOF_RENAME_ACK;
SIOF_RESULT siof_rename(const TCHAR* path_old, const TCHAR* path_new)
{
	SIOF_RESULT res;
	SIOF_RENAME_CMD cmd = { SIOF_MSG_CMD | SIOF_MSG_RENAME, strlen(path_old) + 1, strlen(path_new) + 1 };
	SIOF_RENAME_ACK ack;

	sioTXBuf(0, (void *)&cmd, sizeof(cmd));
	sioTXBuf(0, (void *)path_old, cmd.oldPathLen);
	sioTXBuf(0, (void *)path_new, cmd.newPathLen);
	sioRXBuf(0, (void *)&ack, sizeof(ack));
	if (VALID_ACK(cmd, ack))
	{
		return ack.res;
	}
	else
	{
		return SIOR_TIMEOUT;
	}
}

typedef struct
{
	BYTE msgType;
	BYTE c;
	DWORD hashCode;
}SIOF_PUTC_CMD;
typedef struct
{
	BYTE msgType;
	BYTE res;
}SIOF_PUTC_ACK;
int siof_putc(TCHAR c, SIOFILE* fp)
{
	SIOF_RESULT res;
	SIOF_PUTC_CMD cmd = { SIOF_MSG_CMD | SIOF_MSG_PUTC, c, fp->hashCode };
	SIOF_PUTC_ACK ack;

	sioTXBuf(0, (void *)&cmd, sizeof(cmd));
	sioRXBuf(0, (void *)&ack, sizeof(ack));
	if (VALID_ACK(cmd, ack))
	{
		return ack.res;
	}
	else
	{
		return -1;
	}
}

typedef struct
{
	BYTE msgType;
	DWORD strLen;
	DWORD hashCode;
}SIOF_PUTS_CMD;
typedef struct
{
	BYTE msgType;
	BYTE res;
}SIOF_PUTS_ACK;
int siof_puts(const TCHAR* str, SIOFILE* cp)
{
	SIOF_RESULT res;
	SIOF_PUTS_CMD cmd = { SIOF_MSG_CMD | SIOF_MSG_PUTS, strlen(str) + 1, cp->hashCode };
	SIOF_PUTS_ACK ack;

	sioTXBuf(0, (void *)&cmd, sizeof(cmd));
	sioTXBuf(0, (void *)str, cmd.strLen);
	sioRXBuf(0, (void *)&ack, sizeof(ack));
	if (VALID_ACK(cmd, ack))
	{
		return ack.res;
	}
	else
	{
		return -1;
	}
}

/*
int siof_printf(SIOFILE* fp, const TCHAR* str, ...)
{
    SIOF_RESULT res;

    res = SIOR_OK;
}
*/

typedef struct
{
	BYTE msgType;
	DWORD strLen;
	DWORD hashCode;
}SIOF_GETS_CMD;
typedef struct
{
	BYTE msgType;
	BYTE res;
}SIOF_GETS_ACK;
TCHAR* siof_gets(TCHAR* buff, int len, SIOFILE* fp)
{
	SIOF_RESULT res;
	SIOF_GETS_CMD cmd = { SIOF_MSG_CMD | SIOF_MSG_GETS, len, fp->hashCode };
	SIOF_GETS_ACK ack;

	sioTXBuf(0, (void *)&cmd, sizeof(cmd));
	sioRXBuf(0, (void *)&ack, sizeof(ack));
	if (VALID_ACK(cmd, ack))
	{
		sioRXBuf(0, buff, len);
		return buff;
	}
	else
	{
		return 0;
	}
}

typedef struct
{
	BYTE msgType;
	DWORD hashCode;
}SIOF_EOF_CMD;
typedef struct
{
	BYTE msgType;
	DWORD status;
}SIOF_EOF_ACK;
int siof_eof(SIOFILE* fp)
{
	SIOF_RESULT res;
	SIOF_EOF_CMD cmd = { SIOF_MSG_CMD | SIOF_MSG_EOF, fp->hashCode };
	SIOF_EOF_ACK ack;

	sioTXBuf(0, (void *)&cmd, sizeof(cmd));
	sioRXBuf(0, (void *)&ack, sizeof(ack));
	if (VALID_ACK(cmd, ack))
	{
		return ack.status;
	}
	else
	{
		return -1;
	}
}

typedef struct
{
	BYTE msgType;
	DWORD hashCode;
}SIOF_ERROR_CMD;
typedef struct
{
	BYTE msgType;
	DWORD status;
}SIOF_ERROR_ACK;
int siof_error(SIOFILE* fp)
{
	SIOF_RESULT res;
	SIOF_ERROR_CMD cmd = { SIOF_MSG_CMD | SIOF_MSG_ERROR, fp->hashCode };
	SIOF_ERROR_ACK ack;

	sioTXBuf(0, (void *)&cmd, sizeof(cmd));
	sioRXBuf(0, (void *)&ack, sizeof(ack));
	if (VALID_ACK(cmd, ack))
	{
		return ack.status;
	}
	else
	{
		return -1;
	}
}

typedef struct
{
	BYTE msgType;
	DWORD hashCode;
}SIOF_TELL_CMD;
typedef struct
{
	BYTE msgType;
	DWORD pos;
}SIOF_TELL_ACK;
int siof_tell(SIOFILE* fp)
{
	SIOF_RESULT res;
	SIOF_TELL_CMD cmd = { SIOF_MSG_CMD | SIOF_MSG_TELL, fp->hashCode };
	SIOF_TELL_ACK ack;

	sioTXBuf(0, (void *)&cmd, sizeof(cmd));
	sioRXBuf(0, (void *)&ack, sizeof(ack));
	if (VALID_ACK(cmd, ack))
	{
		return ack.pos;
	}
	else
	{
		return -1;
	}
}

typedef struct
{
	BYTE msgType;
	DWORD hashCode;
}SIOF_SIZE_CMD;
typedef struct
{
	BYTE msgType;
	DWORD size;
}SIOF_SIZE_ACK;
int siof_size(SIOFILE* fp)
{
	SIOF_RESULT res;
	SIOF_SIZE_CMD cmd = { SIOF_MSG_CMD | SIOF_MSG_SIZE, fp->hashCode };
	SIOF_SIZE_ACK ack;

	sioTXBuf(0, (void *)&cmd, sizeof(cmd));
	sioRXBuf(0, (void *)&ack, sizeof(ack));
	if (VALID_ACK(cmd, ack))
	{
		return ack.size;
	}
	else
	{
		return -1;
	}
}

#pragma pack (
