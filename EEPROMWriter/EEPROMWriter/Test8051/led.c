#include "led.h"
#include "delay.h"

//////////////////////////////////////////////////////////////////////////////
//
void ledTest()
{
    P1 = (unsigned char)(~0x01);
    delay_ms(500);

    P1 = (unsigned char)(~0x02);
    delay_ms(500);

    P1 = (unsigned char)(~0x04);
    delay_ms(500);

    P1 = (unsigned char)(~0x08);
    delay_ms(500);

    P1 = (unsigned char)(~0x10);
    delay_ms(500);

    P1 = (unsigned char)(~0x20);
    delay_ms(500);

    P1 = (unsigned char)(~0x40);
    delay_ms(500);

    P1 = (unsigned char)(~0x80);
    delay_ms(500);
}
