#ifndef __LED_H__
#define __LED_H__

#include "common.h"
#include "MK60_port.h"
#include "MK60_gpio.h"

#define LEDCTRL  
#define BEEP_ON  
#define BEEP_OFF 


extern int  BEEP_TIMES;


void LedBeep_init(void);
void Beep(int Times );
void Led(int State );
void Beep_A(int Times );

#endif  //__LED_H__


