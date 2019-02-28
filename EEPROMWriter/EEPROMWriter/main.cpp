#include <Windows.h>
#include <stdio.h>

HANDLE hComm;

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

bool initRS232(int port, int baud, int bit, int parity, int stop)
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
		return false;
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
		return false;
	}

	dcbSerialParams.BaudRate = baud;			// Setting BaudRate = 9600
	dcbSerialParams.ByteSize = 8;				// Setting ByteSize = 8
	dcbSerialParams.StopBits = 1;				// Setting StopBits = 1
	dcbSerialParams.Parity = NOPARITY;			// Setting Parity = None 

	status = SetCommState(hComm, &dcbSerialParams);  //Configuring the port according to settings in DCB 
	if (status == FALSE)
	{
		// printf("\n   Error! in Setting DCB Structure");
		return false;
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
		return false;
	}
	else
	{
		// printf("\n\n   Setting Serial Port Timeouts Successfull");
	}

	return true;
}

enum State
{
	INITIAL = 0,
	CONNECTING_TO_HOST,
	CONNECTED_TO_HOST,
	RECEIVING_ADDRESS,
	RECEIVING_DATA,
	WRITING_DATA,
	DONE,
	TIMEOUT,
	WRITE_FAILED,
};

bool sendData(const char* dat, int size)
{
	BOOL   status;

	DWORD  numBytesWritten;					// No of bytes to write into the port
	status = WriteFile(hComm,               // Handle to the Serialport
		dat,					// Data to be written to the port 
		size,				// No of bytes to write into the port
		&numBytesWritten,	// No of bytes written to the port
		0);

	return status;
}

bool receiveData(char* dat, int size)
{
	int i = 0;
	BOOL	status;
	DWORD	dwEventMask;                     // Event mask to trigger
	char	tempChar;                        // Temperory Character
	DWORD	numBytesRead;                    // Bytes read by ReadFile()

	status = SetCommMask(hComm, EV_RXCHAR); //Configure Windows to Monitor the serial device for Character Reception
	if (!status)
		return false;

	/*------------------------------------ Setting WaitComm() Event   ----------------------------------------*/
	// printf("\n\n    Waiting for Data Reception");

	/*-------------------------- Program will Wait here till a Character is received ------------------------*/
	if (!status)
		return false;

	// printf("\n\n    Characters Received");
	for (int i = 0; i < size; i++)
	{
		status = WaitCommEvent(hComm, &dwEventMask, NULL); //Wait for the character to be received
		if (!status)
			return false;

		status = ReadFile(hComm, &tempChar, sizeof(tempChar), &numBytesRead, NULL);
		if (!status)
			return false;

		dat[i] = tempChar;
	}

	return true;
}

int serial_printf(const char *fmt, ...)
{
	char buffer[256];
	BOOL   status;
	DWORD  numBytesWritten;					// No of bytes to write into the port

	va_list argptr;
	int cnt;
	va_start(argptr, fmt);

	cnt = vsprintf(buffer, fmt, argptr);

	va_end(argptr);

	status = WriteFile(hComm,               // Handle to the Serialport
		buffer,								// Data to be written to the port 
		strlen(buffer) + 1,					// No of bytes to write into the port
		&numBytesWritten,					// No of bytes written to the port
		0);

	if (!status)
		return -1;

	return cnt;
}

int serial_scanf(const char *fmt, ...)
{
	int i = 0;
	BOOL	status;
	DWORD	dwEventMask;                     // Event mask to trigger
	char	tempChar;                        // Temperory Character
	DWORD	numBytesRead;                    // Bytes read by ReadFile()
	char buffer[256];

	status = SetCommMask(hComm, EV_RXCHAR); //Configure Windows to Monitor the serial device for Character Reception
	if (!status)
		return -1;

	do
	{
		status = WaitCommEvent(hComm, &dwEventMask, NULL); //Wait for the character to be received
		if (!status)
			return -1;

		status = ReadFile(hComm, &tempChar, sizeof(tempChar), &numBytesRead, NULL);
		if (!status)
			return -1;

		buffer[i] = tempChar;
	}while(i<256 && tempChar!=0);

	va_list argptr;
	int cnt;

	va_start(argptr, fmt);

	cnt = vsscanf(buffer, fmt, argptr);

	va_end(argptr);

	return cnt;
}

#define MAXLN 16
#define ISSPACE " \t\n\r\f\v"

static int atob(long long *vp, char *p, int base)
{
	long long value, v1, v2;
	char *q, tmp[20];
	int digit;
	int sign = 1;

	if (p[0] == '0' && (p[1] == 'x' || p[1] == 'X')) {
		base = 16;
		p += 2;
	}

	if (base == 16 && (q = strchr(p, '.')) != 0) {
		if (q - p > sizeof(tmp) - 1)
			return (0);

		strncpy(tmp, p, q - p);
		tmp[q - p] = '\0';
		if (!atob(&v1, tmp, 16))
			return (0);

		q++;
		if (strchr(q, '.'))
			return (0);

		if (!atob(&v2, q, 16))
			return (0);
		*vp = (v1 << 16) + v2;
		return (1);
	}


	if(*p=='-')
	{
		sign = -1;
		p++;
	}

	value = *vp = 0;
	for (; *p; p++)
	{
		if (*p >= '0' && *p <= '9')
			digit = *p - '0';
		else if (*p >= 'a' && *p <= 'f')
			digit = *p - 'a' + 10;
		else if (*p >= 'A' && *p <= 'F')
			digit = *p - 'A' + 10;
		else
			return (0);

		if (digit >= base)
			return (0);

		value *= base;
		value += digit;
	}

	*vp = value * sign;
	return (1);
}

static int vsscanf1(const char *buf, const char *s, va_list ap)
{
	int             count, noassign, width, base, lflag;
	const char     *tc;
	char           *t, tmp[MAXLN];
	long long		tmpl;

	count = noassign = width = lflag = 0;
	while (*s && *buf) {
		while (isspace(*s))
			s++;
		if (*s == '%') {
			s++;
			for (; *s; s++) {
				if (strchr("dibouxcsefe%", *s))
					break;
				if (*s == '*')
					noassign = 1;
				else if (*s == 'l' || *s == 'L')
					lflag = 1;
				else if (*s >= '1' && *s <= '9') {
					for (tc = s; isdigit(*s); s++);
					strncpy(tmp, tc, s - tc);
					tmp[s - tc] = '\0';
					atob(&tmpl, tmp, 10);
					width = tmpl;
					s--;
				}
			}
			if (*s == 's') {
				//while (isspace(*buf))
					//buf++;
				if (!width)
					width = strcspn(buf, ISSPACE);
				if (!noassign) {
					strncpy(t = va_arg(ap, char *), buf, width);
					t[width] = '\0';
				}
				buf += width;
			}
			else if (*s == 'c') {
				while (isspace(*buf))
					buf++;
				if (!width)
					width = 1;
				if (!noassign) {
					*va_arg(ap, char *) = buf[0];
					//strncpy(t = va_arg(ap, char *), buf, width);
					//t[width] = '\0';
				}
				buf += width;
			}
			else if (strchr("dobxui", *s)) {
				while (isspace(*buf))
					buf++;
				if (*s == 'd' || *s == 'u' || *s == 'i')
					base = 10;
				else if (*s == 'x')
					base = 16;
				else if (*s == 'o')
					base = 8;
				else if (*s == 'b')
					base = 2;
				if (!width) {
					if (isspace(*(s + 1)) || *(s + 1) == 0)
						width = strcspn(buf, ISSPACE);
					else
						width = strchr(buf, *(s + 1)) - buf;
				}
				strncpy(tmp, buf, width);
				tmp[width] = '\0';
				buf += width;
				if (!noassign)
				{
					atob(&tmpl, tmp, base);
					*va_arg(ap, int *) = tmpl;
				}
			}
			else if (strchr("fe", *s)) {
				while (isspace(*buf))
					buf++;
				if (!width) {
					if (isspace(*(s + 1)) || *(s + 1) == 0)
						width = strcspn(buf, ISSPACE);
					else
						width = strchr(buf, *(s + 1)) - buf;
				}
				strncpy(tmp, buf, width);
				tmp[width] = '\0';
				buf += width;
				if (!noassign)
				{
					*va_arg(ap, float *) = atof(tmp);
				}
			}
			if (!noassign)
				count++;
			width = noassign = lflag = 0;
			s++;
		}
		else {
			while (isspace(*buf))
				buf++;
			if (*s != *buf)
				break;
			else
				s++, buf++;
		}
	}
	return (count);
}

int serial_printf(char* buffer, const char *fmt, ...)
{
	//char buffer[16];

	va_list argptr;
	int cnt;
	va_start(argptr, fmt);

	cnt = vsprintf(buffer, fmt, argptr);

	va_end(argptr);

	return cnt;
}

int serial_scanf(char* buffer, const char *fmt, ...)
{
	//char buffer[16];

	va_list argptr;
	int cnt;
	va_start(argptr, fmt);

	cnt = vsscanf1(buffer, fmt, argptr);

	va_end(argptr);

	return cnt;
}

bool update()
{
	int sendStatus;
	int receStatus;
	int retry;
	int testd = -11;
	int testi = 22;
	int testo = 33;
	int testu = 44;
	int testx = 55;
	float testf = 3.141592654f;
	float teste = 1.4141;
	char testc = 'y';
	const char* tests = "a string";
	char buffer[32];
	char ack[32];
	int cnt = 0;

	char testBuf[256];
	cnt = serial_printf(testBuf, "%d %i %o %u %x %f %e %c %s", testd, testi, testo, testu, testx, testf, teste, testc, tests);
	//cnt = serial_scanf(testBuf, "%d %i %o %u %x %f %e %c %s", &testd, &testi, &testo, &testu, &testx, &testf, &teste, &testc, &tests);

	cnt = serial_printf(testBuf, "Connect %d %i %o %u %x %f %e %c%s", testd+1, testi + 1, testo + 1, testu + 1, testx + 1, testf + 1, teste + 1, testc + 1, tests);
	//cnt = sscanf(testBuf, "Connect %d %i %o %u %x %f %e %c%s", &testd, &testi, &testo, &testu, &testx, &testf, &teste, &testc, buffer);
	cnt = serial_scanf(testBuf, "Connect %d %i %o %u %x %f %e %c%s", &testd, &testi, &testo, &testu, &testx, &testf, &teste, &testc, buffer);
	cnt = serial_scanf(testBuf, "Connect %d %i %o %u %x %f %e %c %s", ack, &testd, &testi, &testo, &testu, &testx, &testf, &teste, &testc, &tests);

	retry = 0;
	while (retry++ < 10)
	{
		sendStatus = serial_printf("Connect, %d, %d", testd, testi);
		if (sendStatus == -1)
			continue;

		receStatus = serial_scanf("%s, %d, %d", ack, &testd, &testi);
		if (receStatus == -1)
			continue;
		else
			break;
	}

	retry = 0;
	while (retry++ < 10)
	{
		sendStatus = serial_printf("NextPage, %d, %d", 0x0000, 128);
		if (sendStatus == -1)
			continue;

		receStatus = serial_scanf("%s, %d, %d", ack, &testd, &testi);
		if (receStatus == -1)
			continue;
		else
			break;
	}

	retry = 0;
	while (retry++ < 10)
	{
		sendStatus = serial_printf("%s");
		if (sendStatus == -1)
			continue;

		receStatus = serial_scanf("%s", ack);
		if (receStatus == -1)
			continue;
		else
			break;
	}


	return true;
}

void terminateRS232()
{
	CloseHandle(hComm);//Closing the Serial Port
}

int main()
{
	if (initRS232(6, 9600, 8, 0, 1))
	{
		update();

		terminateRS232();
		return false;
	}

	return 0;
}