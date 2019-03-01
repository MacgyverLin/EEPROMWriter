#include <Windows.h>
#include <stdio.h>

typedef enum
{
	INITIAL = 0,
	CONNECTING,
	CONNECTED,
	PROGRAM_EEPROM_PAGE,
	VERIFY_EEPROM_PAGE,
	FAILED,
	DONE
}State;

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

int serialInitialize(int baud, int port = 4)
{
	BOOL   status;
	char   comPortName[256];
	sprintf(comPortName, "\\\\.\\COM%d", port);

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
	timeouts.ReadIntervalTimeout = 100;
	timeouts.ReadTotalTimeoutConstant = 1000;
	timeouts.ReadTotalTimeoutMultiplier = 100;
	timeouts.WriteTotalTimeoutConstant = 2000;
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
		return 0;
	}

	dcb.DCBlength = sizeof(dcb);
	if (!BuildCommDCB("9600,n,8,1", &dcb))
	{
		CloseHandle(hComm);

		return 0;
	}

	if (!SetCommState(hComm, &dcb))
		return 0;

	return -1;
}

void serialTerminate()
{
	if (hComm)
	{
		CloseHandle(hComm); //Closing the Serial Port
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

char serialSendData(const char *buffer, unsigned int size, unsigned int timeout)
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

	/*
	if (!SetCommMask(hComm, EV_TXEMPTY))
	{
		return 0;
	}

	if (!WaitCommEvent(hComm, &evtMask, 0))
	{
		return 0;
	}
	*/

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

// https://blog.csdn.net/zhuyonghao123/article/details/8162250
char* serialReceiveData(unsigned int size, int timeout)
{
	DWORD error;
	DWORD byteRead = 0;
	DWORD evtMask = 0;
	int i;
	BYTE crc;

	//if(ClearCommError(hComm, &error, NULL))
	//{
		//PurgeComm(hComm, PURGE_RXABORT | PURGE_RXCLEAR);
	//}

	if (!SetCommMask(hComm, EV_RXCHAR))
	{
		return 0;
	}

	if (!WaitCommEvent(hComm, &evtMask, 0))
	{
		return 0;
	}

	if (!ReadFile(hComm, rxBuffer, size, &byteRead, NULL))
	{
		return 0;
	}

	if (byteRead == 0)
	{
		byteRead = 0;
	}

	return rxBuffer;
}

void readPageFromFile(char *txBuffer, int size)
{
	memset(txBuffer, 0xff, size);
	for (int i = 0; i < size; i++)
	{
		txBuffer[i] = i % 255;
	}
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

void main()
{
	State state = INITIAL;
	char* rxBuffer;
	char txBuffer[256];

	while (1)
	{
		switch (state)
		{
		case INITIAL:
			serialTerminate();
			if (serialInitialize(9600))
			{
				state = CONNECTING;
			}
			break;

		case CONNECTING:
		{
			serialSendData("C", 1, 500); // send Command C
			rxBuffer = serialReceiveData(1, 500); // wait for ack C
			if (rxBuffer && *rxBuffer == 'c')
			{
				state = CONNECTED;	 // connected
			}
			else
			{
				state = INITIAL; 	// set next baud
			}
		}
		break;

		case CONNECTED:
		{
			char c;
			printf("(P)rogram? (V)erify? (D)one?");
			scanf("%c", &c);
			c = toupper(c);

			if (c == 'P')
			{
				serialSendData("P", 1, 500); // send Command C
				rxBuffer = serialReceiveData(1, 500); // wait for ack C
				if (rxBuffer && *rxBuffer == 'p')
				{
					state = PROGRAM_EEPROM_PAGE;	 // connected
				}
				else
				{
					state = CONNECTED; 	// set next baud
				}
			}
			else if (c == 'V')
			{
				serialSendData("V", 1, 500); // send Command C
				rxBuffer = serialReceiveData(1, 500); // wait for ack C
				if (rxBuffer && *rxBuffer == 'v')
				{
					state = VERIFY_EEPROM_PAGE;	 // connected
				}
				else
				{
					state = CONNECTED; 	// set next baud
				}
			}
			else if (c == 'D')
			{
				serialSendData("D", 1, 500); // send Command C
				rxBuffer = serialReceiveData(1, 500); // wait for ack C
				if (rxBuffer && *rxBuffer == 'd')
				{
					state = DONE;	 // connected
				}
				else
				{
					state = CONNECTED; 	// set next baud
				}
			}
		}
		break;

		case PROGRAM_EEPROM_PAGE:
		{
			unsigned int address = 0;
			unsigned int size = 128;

			for (int i = 0; i < 10; i++)
			{
				printf("Programming: [%08x %08x]", address, address + size);
				address = i * size;
				if (i == 9)
				{
					// fill buffer
					txBuffer[0] = 'D';
					*(unsigned int *)(&txBuffer[1]) = 0;
					*(unsigned int *)(&txBuffer[1 + 4]) = 0;
					serialSendData(txBuffer, 1 + 4 + 4, 500); // send V, address, size

					rxBuffer = serialReceiveData(1, 500); // wait for ack
					if (rxBuffer && *rxBuffer == 'd')
					{
						state = DONE;
					}
				}
				else
				{
					// fill buffer
					txBuffer[0] = 'P';
					*(unsigned int *)(&txBuffer[1]) = address;
					*(unsigned int *)(&txBuffer[1 + 4]) = size;
					serialSendData(txBuffer, 1 + 4 + 4, 500); // send V, address, size

					readPageFromFile(txBuffer, size);
					serialSendData(txBuffer, size, 500); // send data

					rxBuffer = serialReceiveData(1, 500); // wait for ack
					if (rxBuffer && *rxBuffer == 's')
					{
						state = PROGRAM_EEPROM_PAGE;    	 // success again
					}
					else if (rxBuffer && *rxBuffer == 'f')
					{
						state = FAILED; 	 // failed, display error
					}
					else
					{
						state = FAILED;	    // unknown, consider as failed, display error
					}
				}
			}
		}
		break;

		case VERIFY_EEPROM_PAGE:
		{
			unsigned int address = 0;
			unsigned int size = 128;

			for (int i = 0; i < 10; i++)
			{
				printf("Verify: [%08x %08x]", address, address + size);
				address = i * size;
				if (i == 9)
				{
					// fill buffer
					txBuffer[0] = 'D';
					*(unsigned int *)(&txBuffer[1]) = 0;
					*(unsigned int *)(&txBuffer[1 + 4]) = 0;
					serialSendData(txBuffer, 1 + 4 + 4, 500); // send V, address, size

					rxBuffer = serialReceiveData(1, 500); // wait for ack
					if (rxBuffer && *rxBuffer == 'd')
					{
						state = DONE;
					}
				}
				else
				{
					// fill buffer
					txBuffer[0] = 'V';
					*(unsigned int *)(&txBuffer[1]) = address;
					*(unsigned int *)(&txBuffer[1 + 4]) = size;
					serialSendData(txBuffer, 1 + 4 + 4, 500); // send V, address, size

					readPageFromFile(txBuffer, size);
					serialSendData(txBuffer, size, 500); // send data

					rxBuffer = serialReceiveData(1, 500); // wait for ack
					if (rxBuffer && *rxBuffer == 's')
					{
						state = PROGRAM_EEPROM_PAGE;    	 // success again
					}
					else if (rxBuffer && *rxBuffer == 'f')
					{
						state = FAILED; 	 // failed, display error
					}
					else
					{
						state = FAILED;	    // unknown, consider as failed, display error
					}
				}
			}
		}
		break;

		case FAILED:
		{
		}
		break;

		case DONE:
		{
		}
		break;
		}
	}
}