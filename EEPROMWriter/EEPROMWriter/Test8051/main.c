#include "sysctrl.h"
#include "test.h"

#if USE_KEIL_ISD
#include "Isd51.h"

void init_Keil_ISD()
{
	T2CON   = 0x34;      /* Use Timer 2 as baudrate generator  */

#if 0
	RCAP2H  = 0xFF;      /*  9615 baud @ 20MHz with X2 Mode off */
	RCAP2L  = 0xBF;      /* 19230 baud @ 20MHz with X2 Mode on  */
#endif
	RCAP2H  = 0xFF;
	RCAP2L  = 0xD9;      /* 19230 baud @ 12MHz                  */
						 /* 38460 baud @ 24MHz                  */

	SCON    = 0x50;      /* enable serial uart & receiver      */
	EA = 1;              /* Enable global interrupt flag       */


	ISDwait ();        // wait for connection to uVision2 Debugger
}
#endif

void main()
{
	P1 = 0xA5;
	#if USE_KEIL_ISD
		init_Keil_ISD();
    #endif
	
    P1 = 0x01;
    // sysLoadProgram();
    //sysCopyBIOS(0x0000, 0x0000, 0x8000);
    // res = 0;
    if(1)
    {
		#if USE_KEIL_ISD
			ISDcheck();
		#endif		
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
#ifdef USE_PFF
		pffTest(0);
#else
        fatfsTest(0);
#endif
        //P1 = 0x81;
    }
    else
    {
        P1 = 0x82;
    }

    while(1);
}
