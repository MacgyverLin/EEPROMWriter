#ifndef _PIO_H_
#define _PIO_H_

#include "sysctrl.h"

#ifdef __cplusplus
extern "C"
{
#endif

//////////////////////////////////////////////////////////////////////////////
//
#define PIO0_BASE          0xFF00
#define PIO0_PORT_A        (PIO0_BASE+0)
#define PIO0_PORT_B        (PIO0_BASE+1)
#define PIO0_PORT_C        (PIO0_BASE+2)
#define PIO0_PORT_CTRL     (PIO0_BASE+3)

#define PIO1_BASE          0xFF10
#define PIO1_PORT_A        (PIO1_BASE+0)
#define PIO1_PORT_B        (PIO1_BASE+1)
#define PIO1_PORT_C        (PIO1_BASE+2)
#define PIO1_PORT_CTRL     (PIO1_BASE+3)

#define pioWriteCtrl(device, d)  IOWRITE((PIO0_PORT_CTRL + (device)<<4), d)
#define pioWritePortA(device, d) IOWRITE((PIO0_PORT_A + (device)<<4), d)
#define pioWritePortB(device, d) IOWRITE((PIO0_PORT_B + (device)<<4), d)
#define pioWritePortC(device, d) IOWRITE((PIO0_PORT_C + (device)<<4), d)
#define pioReadCtrl(device)   IOREAD((PIO0_PORT_CTRL + (device)<<4))
#define pioReadPortA(device)  IOREAD((PIO0_PORT_A + (device)<<4))
#define pioReadPortB(device)  IOREAD((PIO0_PORT_B + (device)<<4))
#define pioReadPortC(device)  IOREAD((PIO0_PORT_C + (device)<<4))

#ifdef __cplusplus
};
#endif

#endif
