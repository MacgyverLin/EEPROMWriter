#ifndef _DELAY_h_
#define _DELAY_h_

#include <mcs51/8051.h>

#ifdef __cplusplus
extern "C"
{
#endif

extern void delay_us(unsigned int us);
extern void delay_ms(unsigned int ms);

#ifdef __cplusplus
};
#endif

#endif // _DELAY_h_
