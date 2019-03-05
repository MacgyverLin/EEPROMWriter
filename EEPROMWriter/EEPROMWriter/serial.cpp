#include <Windows.h>
#include <stdio.h>
#include "serial.h"

HANDLE hComm = 0;
int getBaud(int baud)
{
	switch (baud)
	{
	case 110:
		return CBR_110;
	case 300:
		return CBR_300;
	case 600:
		return CBR_600;
	case 1200:
		return CBR_1200;
	case 2400:
		return CBR_2400;
	case 4800:
		return CBR_4800;
	case 9600:
		return CBR_9600;
	case 14400:
		return CBR_14400;
	case 19200:
		return CBR_19200;
	case 38400:
		return CBR_38400;
	case 56000:
		return CBR_56000;
	case 57600:
		return CBR_57600;
	case 115200:
		return CBR_115200;
	case 128000:
		return CBR_128000;
	case 256000:
		return CBR_256000;
	default:
		return 0;
	};
}

int serialInitialize(Baud baud, int bits, Parity parity, Stopbits stopbits)
{
	BOOL   status;
	char   comPortName[256];
	sprintf(comPortName, "\\\\.\\COM%d", 6);

	hComm = CreateFile(comPortName,            //port name 
		GENERIC_READ | GENERIC_WRITE, //Read/Write   				 
		0,            // No Sharing                               
		NULL,         // No Security                              
		OPEN_EXISTING,// Open existing port only                     
		0,            // Non Overlapped I/O                           
		NULL);        // Null for Comm Devices

	if (hComm == INVALID_HANDLE_VALUE)
		return 0;

	/*------------------------------------ Buufer Size --------------------------------------------------*/
	if (!SetupComm(hComm, 1024, 1024))
	{
		CloseHandle(hComm);
		return 0;
	}

	/*------------------------------------ Setting Timeouts --------------------------------------------------*/
	COMMTIMEOUTS timeouts;
	memset(&timeouts, 0, sizeof(timeouts));
	timeouts.ReadIntervalTimeout = 1000;
	timeouts.ReadTotalTimeoutConstant = 1000;
	timeouts.ReadTotalTimeoutMultiplier = 50;
	timeouts.WriteTotalTimeoutConstant = 1000;
	timeouts.WriteTotalTimeoutMultiplier = 50;
	if (SetCommTimeouts(hComm, &timeouts) == FALSE)
	{
		CloseHandle(hComm);
		return 0;
	}
	PurgeComm(hComm, PURGE_TXCLEAR | PURGE_RXCLEAR);

	/*------------------------------- Setting the Parameters for the SerialPort ------------------------------*/
	DCB dcb = { 0 };
	if (!GetCommState(hComm, &dcb))
	{
		CloseHandle(hComm);
		return 0;
	}

	dcb.DCBlength = sizeof(dcb);
	if (!BuildCommDCB("9600,n,8,1", &dcb))
	{
		CloseHandle(hComm);
		return 0;
	}

	if (!SetCommState(hComm, &dcb))
	{
		CloseHandle(hComm);
		return 0;
	}

	return -1;
}

void serialTerminate()
{
	if (hComm)
	{
		CloseHandle(hComm); // closing the Serial Port
		hComm = 0;
	}
}

void serialSendDataAsync(const char* buffer, unsigned int size)
{
	// TODO
}

char serialIsSendDataDone()
{
	return -1;
}

char serialSendData(const char *buffer, unsigned int size)
{
	DWORD error;
	DWORD evtMask = 0;
	DWORD byteSent = 0;

	if (ClearCommError(hComm, &error, NULL))
	{
		PurgeComm(hComm, PURGE_TXABORT | PURGE_TXCLEAR);
	}

	if (!WriteFile(hComm, buffer, size, &byteSent, NULL))
	{
		return 0;
	}

	return -1;
}

char rxBuffer[128];

void serialReceiveDataAsync(unsigned int size)
{
	// TODO
}

char serialIsReceiveDataDone()
{
	return -1;
}

char* serialReceiveData(unsigned int size)
{
	DWORD error;
	DWORD byteRead = 0;
	DWORD evtMask = 0;
	int i;
	BYTE crc;

	if (!ReadFile(hComm, rxBuffer, size, &byteRead, NULL))
	{
		return 0;
	}

	if (byteRead != size)
	{
		return 0;
	}

	return rxBuffer;
}

void delay()
{
	for (int i = 0; i < 50000; i++)
	{
		for (int j = 0; j < 100; j++)
		{
		}
	}
}
