#include "PIT.h"

void PIT0_Init(U32 COUNT) // ×ÜÏßÊ±ÖÓ
{
 
    SIM_SCGC6 |= (1<<23);
    
    PIT_MCR = 0;
     
    PIT_LDVAL0 =  COUNT;
    
    PIT_TCTRL0 |= (3);  
    
    enable_irq(68);
    
}
