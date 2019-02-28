#ifndef _VSSCANF_H_
#define _VSSCANF_H_

#include <stdarg.h>

extern int atob(long *vp, char *p, int base);
extern int vsscanf(const char *buf, const char *s, va_list ap);

#endif