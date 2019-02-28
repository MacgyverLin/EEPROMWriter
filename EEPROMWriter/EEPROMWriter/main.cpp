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

int serialInitialize(int baud, int port = 1)
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
	{
		// printf("Error in opening Serial port");
		return 0;
	}
	else
	{
		// printf("\nopening serial port successful\n");
	}

	/*------------------------------- Setting the Parameters for the SerialPort ------------------------------*/
	DCB dcbSerialParams = { 0 };                        // Initializing DCB structure
	dcbSerialParams.DCBlength = sizeof(dcbSerialParams);

	status = GetCommState(hComm, &dcbSerialParams);     //retreives  the current settings

	if (status == FALSE)
	{
		// printf("\n   Error! in GetCommState()");
		return 0;
	}

	dcbSerialParams.BaudRate = baud;			// Setting BaudRate = 9600
	dcbSerialParams.ByteSize = 8;				// Setting ByteSize = 8
	dcbSerialParams.StopBits = 1;				// Setting StopBits = 1
	dcbSerialParams.Parity = NOPARITY;			// Setting Parity = None 

	status = SetCommState(hComm, &dcbSerialParams);  //Configuring the port according to settings in DCB 
	if (status == FALSE)
	{
		// printf("\n   Error! in Setting DCB Structure");
		return 0;
	}
	else
	{
		// printf("\n   Setting DCB Structure Successfull\n");
		// printf("\n       Baudrate = %d", dcbSerialParams.BaudRate);
		// printf("\n       ByteSize = %d", dcbSerialParams.ByteSize);
		// printf("\n       StopBits = %d", dcbSerialParams.StopBits);
		// printf("\n       Parity   = %d", dcbSerialParams.Parity);
	}

	/*------------------------------------ Setting Timeouts --------------------------------------------------*/
	COMMTIMEOUTS timeouts = { 0 };
	timeouts.ReadIntervalTimeout = 50;
	timeouts.ReadTotalTimeoutConstant = 50;
	timeouts.ReadTotalTimeoutMultiplier = 10;
	timeouts.WriteTotalTimeoutConstant = 50;
	timeouts.WriteTotalTimeoutMultiplier = 10;

	if (SetCommTimeouts(hComm, &timeouts) == FALSE)
	{
		// printf("\n   Error! in Setting Time Outs");
		return 0;
	}
	else
	{
		// printf("\n\n   Setting Serial Port Timeouts Successfull");
	}

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

void serialSendData(const char* buffer, unsigned int size, int timeout)
{
	BOOL   status;
	DWORD  numBytesWritten;					// No of bytes to write into the port

	status = WriteFile(hComm,               // Handle to the Serialport
		buffer,					// Data to be written to the port 
		size,				// No of bytes to write into the port
		&numBytesWritten,	// No of bytes written to the port
		0);
}

void serialReceiveDataAsync(unsigned int size)
{
	// TODO
}

char serialIsReceiveDataDone()
{
	return -1;
}

void serialReceiveData(char* buffer, unsigned int size, int timeout)
{
	int i = 0;
	BOOL	status;
	DWORD	dwEventMask;                     // Event mask to trigger
	char	tempChar;                        // Temperory Character
	DWORD	numBytesRead;                    // Bytes read by ReadFile()

	status = SetCommMask(hComm, EV_RXCHAR); //Configure Windows to Monitor the serial device for Character Reception
	if (!status)
		return;

	/*------------------------------------ Setting WaitComm() Event   ----------------------------------------*/
	// printf("\n\n    Waiting for Data Reception");

	/*-------------------------- Program will Wait here till a Character is received ------------------------*/
	if (!status)
		return;

	// printf("\n\n    Characters Received");
	for (int i = 0; i < size; i++)
	{
		status = WaitCommEvent(hComm, &dwEventMask, NULL); //Wait for the character to be received
		if (!status)
			return;

		status = ReadFile(hComm, &tempChar, sizeof(tempChar), &numBytesRead, NULL);
		if (!status)
			return;

		buffer[i] = tempChar;
	}

	//return true;
}

void serialGetReceivedData(char* buffer, unsigned int size)
{
}

void main()
{
	int a = sizeof(unsigned int);
	int b = sizeof(unsigned long);

	State state = INITIAL;
	char rxBuffer[128];
	char txBuffer[128];

	while (1)
	{
		switch (state)
		{
		case INITIAL:
			serialTerminate();
			serialInitialize(9600);

			state = CONNECTING;
			break;

		case CONNECTING:
		{
			serialSendData("C", 1, 500); // send Command C

			serialReceiveData(rxBuffer, 1, 500); // wait for ack C
			if (*rxBuffer == 'c')
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
			serialSendData("P", 1, 500); // send Command C
			serialReceiveData(rxBuffer, 1, 500); // wait for ack C
			if (*rxBuffer == 'p')
			{
				state = PROGRAM_EEPROM_PAGE;	 // connected
			}
			else
			{
				state = CONNECTED; 	// set next baud
			}

			serialSendData("V", 1, 500); // send Command C
			serialReceiveData(rxBuffer, 1, 500); // wait for ack C
			if (*rxBuffer == 'v')
			{
				state = VERIFY_EEPROM_PAGE;	 // connected
			}
			else
			{
				state = CONNECTED; 	// set next baud
			}

			serialSendData("D", 1, 500); // send Command C
			serialReceiveData(rxBuffer, 1, 500); // wait for ack C
			if (*rxBuffer == 'd')
			{
				state = DONE;	 // connected
			}
			else
			{
				state = CONNECTED; 	// set next baud
			}
		}
		break;

		case PROGRAM_EEPROM_PAGE:
		{
			unsigned long address = 0;
			unsigned long size = 128;

			// fill buffer
			txBuffer[0] = 'P';
			*(unsigned int *)(&(txBuffer[1])) = address;
			*(unsigned int *)(&(txBuffer[1 + 4])) = size;
			memset(&(txBuffer[1 + 4 + 4]), 0, size);

			serialSendData(txBuffer, 1 + 4 + 4 + 128, 500); // send Command C
			serialReceiveData(rxBuffer, 1, 500); // wait for ack C
			if (*rxBuffer == 's')
			{
				state = CONNECTED;	 // connected
			}
			else if (*rxBuffer == 'f')
			{
				state = FAILED; 	// set next baud
			}
			else
			{
				state = CONNECTED;	 // unknown
			}
		}
		break;

		case VERIFY_EEPROM_PAGE:
		{
			unsigned long address = 0;
			unsigned long size = 128;

			// fill buffer
			txBuffer[0] = 'V';
			*(unsigned int *)(&(txBuffer[1])) = address;
			*(unsigned int *)(&(txBuffer[1 + 4])) = size;
			memset(&(txBuffer[1 + 4 + 4]), 0, size);

			serialSendData(txBuffer, 1 + 4 + 4 + 128, 500); // send Command C
			serialReceiveData(rxBuffer, 1, 500); // wait for ack C
			if (*rxBuffer == 's')
			{
				state = CONNECTED;	 // connected
			}
			else if (*rxBuffer == 'f')
			{
				state = FAILED; 	// set next baud
			}
			else
			{
				state = CONNECTED;	 // unknown
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