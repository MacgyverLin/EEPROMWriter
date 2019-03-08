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
	READ_EEPROM_PAGE,
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
		//memset(&txBuffer[0], 0x00, size);
		return true;
	}

	//memset(&txBuffer[0], 0x00, size);

	return false;
}

void main()
{
	State state = INITIAL;
	char* rxBuffer;
	char txBuffer[256];
	unsigned int address = 0;
	unsigned int pageSize = 128;
	bool done = false;
	unsigned char* data = (unsigned char *)malloc(0x10000);
	memset(data, 0, 0x10000);
	unsigned int dataSize = 0x10000;

	int port = 4;
	char filename[256];
	strncpy(filename, "test.bin", 256);

	while (1)
	{
		switch (state)
		{
		case INITIAL:
			printf("Opening port at %d baud...\n", 9600);

			serialTerminate();
			if (serialInitialize(port, SB_9600, 8, SP_NONE, SS_ONE))
			{
				state = CONNECTING;
			}
			else
			{
				printf("Failed to Open port at %d baud...\n", 9600);
				Sleep(500);
				state = INITIAL;
			}
			break;

		case CONNECTING:
		{
			printf("Connecting...\n");

			serialSendData("C", 1);				 // send Command C
			rxBuffer = serialReceiveData(1);	 // wait for ack c
			if (!rxBuffer)
			{
				state = TIMEOUT; // try next baud rate
			}
			else
			{
				if (*rxBuffer == 'c')
				{
					printf("Connected...\n");
					state = CONNECTED;	 // connected
				}
				else
				{
					state = TIMEOUT;	 // failed 
				}
			}
		}
		break;

		case CONNECTED:
		{
			char c;
			printf("(P)rogram? (R)ead? (V)erify? (L)oad? (S)ave?\n");
			scanf("%c", &c);
			c = toupper(c);

			if (c == 'P')
			{
				if (data != 0)
				{
					serialSendData("P", 1);			 // send Command P
					rxBuffer = serialReceiveData(1); // wait for ack P
					if (!rxBuffer)
					{
						state = TIMEOUT;
					}
					else
					{
						if (*rxBuffer == 'p')
						{
							address = 0x0000;
							done = false;

							state = PROGRAM_EEPROM_PAGE;	 // program mode
						}
						else
						{
							state = CONNECTED;
						}
					}
				}
				else
				{
					printf("Data must be loaded before programming!!\n");
					state = CONNECTED;
				}
			}
			else if (c == 'V')
			{
				if (data != 0)
				{
					serialSendData("V", 1); // send Command V
					rxBuffer = serialReceiveData(1); // wait for ack V
					if (!rxBuffer)
					{
						state = TIMEOUT;
					}
					else
					{
						if (*rxBuffer == 'v')
						{
							address = 0x0000;
							done = false;
							state = VERIFY_EEPROM_PAGE;	 // connected
						}
						else
						{
							state = CONNECTED; 	// set next baud
						}
					}
				}
				else
				{
					printf("Data must be loaded before programming!!\n");
					state = CONNECTED;
				}
			}
			else if (c == 'R')
			{
				serialSendData("R", 1); // send Command V
				rxBuffer = serialReceiveData(1); // wait for ack V
				if (!rxBuffer)
				{
					state = TIMEOUT;
				}
				else
				{
					if (*rxBuffer == 'r')
					{
						address = 0x0000;
						done = false;
						state = READ_EEPROM_PAGE;	 // connected
					}
					else
					{
						state = CONNECTED; 	// set next baud
					}
				}
			}
			else if (c == 'L')
			{
				printf("Input File to Load\n");
				scanf("%s", filename);

				FILE* fptr = fopen(filename, "rb");
				if (!fptr)
				{
					printf("Cannot open file %s\n", filename);
					state = CONNECTED;
				}
				else
				{
					fseek(fptr, 0, SEEK_END);
					dataSize = ftell(fptr);
					fseek(fptr, 0, SEEK_SET);

					if (dataSize == 0)
					{
						printf("Invalid: File size is 0!!\n");
						state = CONNECTED;
					}
					else
					{
						if (dataSize % pageSize != 0)
						{
							dataSize += (pageSize - dataSize % pageSize);
						}

						printf("Loading..........\n");
						fread(data, 1, dataSize, fptr);
						fclose(fptr);
						printf("Loaded..........\n");
					}
				}
			}
			else if (c == 'S')
			{
				printf("Input File to Save\n");
				scanf("%s", filename);

				FILE* fptr = fopen(filename, "wb");
				if (!fptr)
				{
					printf("Cannot open file %s\n", filename);
					state = CONNECTED;
				}
				else
				{
					printf("Saving..........\n");
					fwrite(data, 1, dataSize, fptr);
					fclose(fptr);
					printf("Saved..........\n");
				}
			}
			else if (c == 'C')
			{
				printf("Clearing Buffer..........\n");

				dataSize = 0x10000;
				memset(data, 0, dataSize);

				printf("Cleared Buffer..........\n");
			}
		}
		break;

		case PROGRAM_EEPROM_PAGE:
		{
			if (!done)
			{
				printf("---------------------------------\n");
				printf("Programming: address: %08x-%08x\n", address, address + pageSize - 1);

				// fill buffer
				txBuffer[0] = 'A';
				*(unsigned short *)(&txBuffer[1]) = address;
				*(unsigned short *)(&txBuffer[1 + 2]) = pageSize;
				serialSendData(txBuffer, 1 + 2 + 2);		// send A, address, size

				rxBuffer = serialReceiveData(1);			// wait for ack A
				if (!rxBuffer)
				{
					state = TIMEOUT;
				}
				else
				{
					if (*rxBuffer != 'a')
					{
						state = TIMEOUT; 	 // failed, display error
					}
					else
					{
						int i = 0;
						do
						{
							for (int j = 0; j < 16; j++)
							{
								printf("%02X ", (unsigned char)data[address + i + j]);
							}
							printf("  |  ");
							for (int j = 0; j < 16; j++)
							{
								unsigned char c = (unsigned char)data[address + i + j];
								if (c < 32)
									printf(" ");
								else
									printf("%c", c);
							}
							printf("\n");

							i += 16;
						} while (i < pageSize);

						serialSendData((char*)(&data[address]), pageSize);
						rxBuffer = serialReceiveData(1); // wait for ack success or fail
						if (!rxBuffer)
						{
							state = TIMEOUT;
						}
						else
						{
							if (*rxBuffer == 's')
							{
								address += pageSize;
								if (address >= dataSize)
								{
									done = true;
								}
								state = PROGRAM_EEPROM_PAGE;    	 // success again
							}
							else if (*rxBuffer == 'f')
							{
								state = FAILED; 					// failed, display error
							}
							else
							{
								state = TIMEOUT;					// unknown, timeout
							}
						}
					}
				}
			}
			else
			{
				// fill buffer
				txBuffer[0] = 'D';
				*(unsigned short *)(&txBuffer[1]) = 0;
				*(unsigned short *)(&txBuffer[1 + 2]) = 0;
				serialSendData(txBuffer, 1 + 2 + 2); // send V, address, size

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
						state = TIMEOUT;
					}
				}
			}
		}
		break;

		case VERIFY_EEPROM_PAGE:
		{
			if (!done)
			{
				printf("---------------------------------\n");
				printf("Verifying: address: %08x-%08x\n", address, address + pageSize - 1);

				// fill buffer
				txBuffer[0] = 'A';
				*(unsigned short *)(&txBuffer[1]) = address;
				*(unsigned short *)(&txBuffer[1 + 2]) = pageSize;
				serialSendData(txBuffer, 1 + 2 + 2); // send V, address, size

				rxBuffer = serialReceiveData(1); // wait for ack A
				if (!rxBuffer)
				{
					state = TIMEOUT;
				}
				else
				{
					if (*rxBuffer != 'a')
					{
						state = TIMEOUT; 	 // failed, display error
					}
					else
					{
						int i = 0;
						do
						{
							for (int j = 0; j < 16; j++)
							{
								printf("%02X ", (unsigned char)data[address + i + j]);
							}
							printf("  |  ");
							for (int j = 0; j < 16; j++)
							{
								unsigned char c = (unsigned char)data[address + i + j];
								if (c < 32)
									printf(" ");
								else
									printf("%c", c);
							}
							printf("\n");

							i += 16;
						} while (i < pageSize);


						serialSendData((char*)(&data[address]), pageSize);
						rxBuffer = serialReceiveData(1);
						if (!rxBuffer)
						{
							state = TIMEOUT;
						}
						else
						{
							if (*rxBuffer == 's')
							{
								address += pageSize;
								if (address >= dataSize)
								{
									done = true;
								}
								state = VERIFY_EEPROM_PAGE;    	 // success again
							}
							else if (*rxBuffer == 'f')
							{
								state = FAILED; 	 // failed, display error
							}
							else
							{
								state = TIMEOUT;	    // unknown, consider as timeout
							}
						}
					}
				}
			}
			else
			{
				// fill buffer
				txBuffer[0] = 'D';
				*(unsigned short *)(&txBuffer[1]) = 0;
				*(unsigned short *)(&txBuffer[1 + 2]) = 0;
				serialSendData(txBuffer, 1 + 2 + 2);		// send D, address, size

				rxBuffer = serialReceiveData(1);			// wait for ack d
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
						state = TIMEOUT;
					}
				}
			}
		}
		break;

		case READ_EEPROM_PAGE:
		{
			if (!done)
			{
				printf("---------------------------------\n");
				printf("Reading: address: %08x-%08x\n", address, address + pageSize - 1);

				// fill buffer
				txBuffer[0] = 'A';
				*(unsigned short *)(&txBuffer[1]) = address;
				*(unsigned short *)(&txBuffer[1 + 2]) = pageSize;
				serialSendData(txBuffer, 1 + 2 + 2);

				rxBuffer = serialReceiveData(1); // wait for ack A
				if (!rxBuffer)
				{
					state = TIMEOUT;
				}
				else
				{
					if (*rxBuffer != 'a')
					{
						state = TIMEOUT; 	 // failed, display error
					}
					else
					{
						rxBuffer = serialReceiveData(pageSize); // wait for ack success or fail
						if (!rxBuffer)
						{
							state = TIMEOUT;
						}
						else
						{
							int i = 0;
							do
							{
								for (int j = 0; j < 16; j++)
								{
									printf("%02X ", (unsigned char)rxBuffer[i + j]);
								}
								printf("  |  ");
								for (int j = 0; j < 16; j++)
								{
									unsigned char c = (unsigned char)rxBuffer[i + j];
									if (c < 32)
										printf(" ");
									else
										printf("%c", c);
								}
								printf("\n");

								i += 16;
							} while (i < pageSize);

							memcpy(&data[address], rxBuffer, pageSize);
							address += pageSize;
							if (address >= 0x10000)
							{
								done = true;
							}
						}
					}
				}
			}
			else
			{
				// fill buffer
				txBuffer[0] = 'D';
				*(unsigned short *)(&txBuffer[1]) = 0;
				*(unsigned short *)(&txBuffer[1 + 2]) = 0;
				serialSendData(txBuffer, 1 + 2 + 2); // send V, address, size

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
		}
		break;

		case FAILED:
		{
			printf("FAILED!!!\n");
			state = CONNECTED;
		}
		break;

		case DONE:
		{
			printf("DONE!!!\n");
			state = CONNECTED;
		}
		break;

		case TIMEOUT:
		{
			printf("TIMEOUT.........\n");
			state = INITIAL;
		}
		break;
		}
	}
}