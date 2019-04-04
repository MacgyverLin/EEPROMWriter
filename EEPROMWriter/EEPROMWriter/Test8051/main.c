#include "sysctrl.h"
#include "test.h"

// C:\Program Files (x86)\SDCC\lib\large
unsigned char PSBANK = 0;

void main()
{
    /************************ Don Change this part START */
    char res;
    unsigned int br;

    P1 = 0x01;
    // sysLoadProgram();
    /************************ Don Change this part END*/
    // sysCopyBIOS(0x0000, 0x0000, 0x8000);
    // res = 0;
    if(1)
    {
        sysEnterNormalMode();

        ledTest();

        // sysEnterISPMode();
        // sysColdBoot();
        //pioTest(0);

        //pioTest(1);

        //sioTest1(0);

        //sioTest2(0);

        //sioTest3(0);

        // cfTest(0);

        FATTest(0);
        //FATTest(0);

        //SIOFATFSTest(0);

        //P1 = 0x81;
    }
    else
    {
        P1 = 0x82;
    }

    while(1);
}
