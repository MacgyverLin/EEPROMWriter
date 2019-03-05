#include <Windows.h>
#include <stdio.h>
#include "serial.h"

typedef enum
{
	INITIAL = 0,
	CONNECTING,
	CONNECTED,
	PROGRAM_EEPROM_PAGE,
	VERIFY_EEPROM_PAGE,
	FAILED,
	DONE,
	TIMEOUT
}State;

bool readDataFromFile(FILE* fptr, char *txBuffer, int size)
{
	int readsize = fread(txBuffer, 1, size, fptr);
	if (readsize < size)
	{
		memset(&txBuffer[readsize], 0xff, size - readsize);
		return true;
	}

	return false;
}

void main()
{
	State state = INITIAL;
	char* rxBuffer;
	char txBuffer[256];
	FILE * fptr = fopen("test.bin", "rb");
	unsigned int address = 0;
	unsigned int size = 128;
	bool done = false;

	while (1)
	{
		switch (state)
		{
		case INITIAL:
			serialTerminate();
			if (serialInitialize(SB_9600, 8, SP_NONE, SS_ONE))
			{
				state = CONNECTING;
			}
			break;

		case CONNECTING:
		{
			printf("Connecting...\n");
			serialSendData("C", 1); // send Command C
			rxBuffer = serialReceiveData(1); // wait for ack c
			if (!rxBuffer)
			{
				state = INITIAL; // try next baud rate
			}
			else
			{
				if (*rxBuffer == 'c')
				{
					state = CONNECTED;	 // connected
				}
				else
				{
					state = INITIAL; // wrong ack try again
				}
			}
		}
		break;

		case CONNECTED:
		{
			char c;
			printf("(P)rogram? (R)ead? (V)erify? (D)one?");
			scanf("%c", &c);
			c = toupper(c);

			if (c == 'P')
			{
				serialSendData("P", 1); // send Command C
				rxBuffer = serialReceiveData(1); // wait for ack C
				if (!rxBuffer)
				{
					state = TIMEOUT;
				}
				else
				{
					if (*rxBuffer == 'p')
					{
						address = 0;
						done = false;
						state = PROGRAM_EEPROM_PAGE;	 // program mode
					}
					else
					{
						state = CONNECTED;
					}
				}
			}
			else if (c == 'V')
			{
				serialSendData("V", 1); // send Command C
				rxBuffer = serialReceiveData(1); // wait for ack V
				if (!rxBuffer)
				{
					state = TIMEOUT;
				}
				else
				{
					if (*rxBuffer == 'v')
					{
						address = 0;
						done = false;
						state = VERIFY_EEPROM_PAGE;	 // connected
					}
					else
					{
						state = CONNECTED; 	// set next baud
					}
				}
			}
			else if (c == 'D')
			{
				serialSendData("D", 1); // send Command D
				rxBuffer = serialReceiveData(1); // wait for ack D
				if (!rxBuffer)
				{
					state = TIMEOUT;
				}
				else
				{
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
		}
		break;

		case PROGRAM_EEPROM_PAGE:
		{
			printf("Writing: address: %08x-%08x\n", address, address + size);
			if (done)
			{
				// fill buffer
				txBuffer[0] = 'D';
				*(unsigned int *)(&txBuffer[1]) = 0;
				*(unsigned int *)(&txBuffer[1 + 4]) = 0;
				serialSendData(txBuffer, 1 + 4 + 4); // send V, address, size

				rxBuffer = serialReceiveData(1); // wait for ack d
				if (!rxBuffer)
				{
					state = TIMEOUT;
				}
				else
				{
					if(*rxBuffer == 'd')
					{
						state = DONE;
					}
					else
					{
						state = FAILED;
					}
				}
			}
			else
			{
				// fill buffer
				txBuffer[0] = 'A';
				*(unsigned int *)(&txBuffer[1]) = address;
				*(unsigned int *)(&txBuffer[1 + 4]) = size;
				serialSendData(txBuffer, 1 + 4 + 4); // send V, address, size
				address += size;

				rxBuffer = serialReceiveData(1); // wait for ack A
				if (!rxBuffer)
				{
					state = TIMEOUT;
				}
				else
				{
					if (*rxBuffer == 'a')
					{
						done = readDataFromFile(fptr, txBuffer, size);
						serialSendData(txBuffer, size); // send data

						rxBuffer = serialReceiveData(1); // wait for ack success or fail
						if (!rxBuffer)
						{
							state = TIMEOUT;
						}
						else
						{
							if (*rxBuffer == 's')
							{
								state = PROGRAM_EEPROM_PAGE;    	 // success again
							}
							else if (*rxBuffer == 'f')
							{
								fclose(fptr);
								state = FAILED; 	 // failed, display error
							}
							else
							{
								fclose(fptr);
								state = FAILED;	    // unknown, consider as failed, display error
							}
						}
					}
					else
					{
						fclose(fptr);
						state = FAILED; 	 // failed, display error
					}
				}
			}
		}
		break;

		case VERIFY_EEPROM_PAGE:
		{
			printf("Verifying: address: %08x-%08x\n", address, address + size);
			if (done)
			{
				// fill buffer
				txBuffer[0] = 'D';
				*(unsigned int *)(&txBuffer[1]) = 0;
				*(unsigned int *)(&txBuffer[1 + 4]) = 0;
				serialSendData(txBuffer, 1 + 4 + 4); // send V, address, size

				rxBuffer = serialReceiveData(1); // wait for ack d
				if (!rxBuffer)
				{
					state = TIMEOUT;
				}
				else
				{
					if (*rxBuffer == 'd')
					{
						state = DONE;
					}
					else
					{
						state = FAILED;
					}
				}
			}
			else
			{
				// fill buffer
				txBuffer[0] = 'A';
				*(unsigned int *)(&txBuffer[1]) = address;
				*(unsigned int *)(&txBuffer[1 + 4]) = size;
				serialSendData(txBuffer, 1 + 4 + 4); // send V, address, size
				address += size;

				rxBuffer = serialReceiveData(1); // wait for ack A
				if (!rxBuffer)
				{
					state = TIMEOUT;
				}
				else
				{
					if (*rxBuffer == 'a')
					{
						done = readDataFromFile(fptr, txBuffer, size);
						serialSendData(txBuffer, size); // send data

						rxBuffer = serialReceiveData(1); // wait for ack success or fail
						if (!rxBuffer)
						{
							state = TIMEOUT;
						}
						else
						{
							if (*rxBuffer == 's')
							{
								state = VERIFY_EEPROM_PAGE;    	 // success again
							}
							else if (*rxBuffer == 'f')
							{
								fclose(fptr);
								state = FAILED; 	 // failed, display error
							}
							else
							{
								fclose(fptr);
								state = FAILED;	    // unknown, consider as failed, display error
							}
						}
					}
					else
					{
						fclose(fptr);
						state = FAILED; 	 // failed, display error
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

		case TIMEOUT:
		{
			int a = 0;
		}
		break;
		}
	}
}