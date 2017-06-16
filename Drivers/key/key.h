#ifndef __KEY_H__
#define __KEY_H__
#include "common.h"
#include "MK60_port.h"
#include "MK60_gpio.h"

#define RIGHT      PTA11
#define CENTER     PTA12
#define UP         PTA13
#define LEFT       PTA14
#define DOWN       PTA10   

void    KEY_init(void);          // KEY³õÊ¼»¯    º¯Êý
int     KEY_check(void);
int     Get_Press (void);
#endif  //__KEY_H__