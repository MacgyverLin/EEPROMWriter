#ifndef _TEST_h_
#define _TEST_h_

#ifdef __cplusplus
extern "C"
{
#endif

#include "test.h"
#include "compactflash.h"
#include "pio.h"
#include "sio.h"

//////////////////////////////////////////////////////////////////////////////
//
extern void ledTest();
extern void cfTest(char device);
extern void pioTest(char device);
extern void sioTest1(char device);
extern void sioTest2(char device);
extern void sioTest3(char device);
extern void FATTest(char device);
extern void SIOFATFSTest(char device);

#ifdef __cplusplus
};
#endif

#endif // _DELAY_h_
