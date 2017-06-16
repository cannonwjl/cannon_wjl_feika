
/*************************************
@�ļ�˵��: ��������ʼ���ļ�
@����:          Dr_6�� 
@ʱ��:   2017��4��5��14:44:39
@�汾:           V0.1
@��ע:    ��һ�汾��δ��֤
**************************************/

#include  "All_Init.h"
#include  "AS5040.H"


#define PROG_Port PTE4
#define CSN_Port  PTE5
#define CLK_Port  PTE6

#define PROG_Port_Out    PTE4_OUT      //оƬPin8
#define CSN_Port_OUT     PTE5_OUT      //Pin11
#define CLK_Port_OUT     PTE6_OUT      //Pin10

/*************************************
@�ļ�˵��:    IOʼ������
@����:          Dr_6�� 
@ʱ��:   2017��4��5��14:45:53
@�汾:           V0.1
@��ע:    
**************************************/
void AS5040_Portinit(void)
{  
	gpio_init ( PROG_Port , GPO,0);//PROG_Port
	gpio_init ( CSN_Port  , GPO,0);//CSN_Port
    gpio_init ( CLK_Port  , GPO,0);//CLK_Port
}


void delay_400ns(void)
{
    asm("nop");asm("nop");asm("nop");asm("nop");
    asm("nop");asm("nop");asm("nop");asm("nop");
    asm("nop");asm("nop");asm("nop");asm("nop");
    asm("nop");asm("nop");asm("nop");asm("nop");
    asm("nop");asm("nop");asm("nop");asm("nop");
    asm("nop");asm("nop");asm("nop");asm("nop");
    asm("nop");asm("nop");asm("nop");asm("nop");
    asm("nop");asm("nop");asm("nop");asm("nop");
    asm("nop");asm("nop");asm("nop");asm("nop");
    asm("nop");asm("nop");asm("nop");asm("nop");
}


void delay_900ns(void)
{
    asm("nop");asm("nop");asm("nop");asm("nop");
    asm("nop");asm("nop");asm("nop");asm("nop");
    asm("nop");asm("nop");asm("nop");asm("nop");
    asm("nop");asm("nop");asm("nop");asm("nop");
    asm("nop");asm("nop");asm("nop");asm("nop");
    asm("nop");asm("nop");asm("nop");asm("nop");
    asm("nop");asm("nop");asm("nop");asm("nop");
    asm("nop");asm("nop");asm("nop");asm("nop");
    asm("nop");asm("nop");asm("nop");asm("nop");
    asm("nop");asm("nop");asm("nop");asm("nop");
    asm("nop");asm("nop");asm("nop");asm("nop");
    asm("nop");asm("nop");asm("nop");asm("nop");
    asm("nop");asm("nop");asm("nop");asm("nop");
    asm("nop");asm("nop");asm("nop");asm("nop");
    asm("nop");asm("nop");asm("nop");asm("nop");
    asm("nop");asm("nop");asm("nop");asm("nop");
    asm("nop");asm("nop");asm("nop");asm("nop");
    asm("nop");asm("nop");asm("nop");asm("nop");
    asm("nop");asm("nop");asm("nop");asm("nop");
    asm("nop");asm("nop");asm("nop");asm("nop");
    asm("nop");asm("nop");asm("nop");asm("nop");
    asm("nop");asm("nop");asm("nop");asm("nop");
    asm("nop");asm("nop");asm("nop");asm("nop");
    asm("nop");asm("nop");asm("nop");asm("nop");
    asm("nop");asm("nop");asm("nop");asm("nop");
    asm("nop");asm("nop");asm("nop");asm("nop");
    asm("nop");asm("nop");asm("nop");asm("nop");
    asm("nop");asm("nop");asm("nop");asm("nop");
    asm("nop");asm("nop");asm("nop");asm("nop");
    asm("nop");asm("nop");asm("nop");asm("nop");
    asm("nop");asm("nop");asm("nop");asm("nop");
}


/*************************************
@�ļ�˵��:    ��ʼ������
@����:          Dr_6�� 
@ʱ��:   2017��4��5��14:46:16
@�汾:           V0.1
@��ע:    ��һ�汾��δ��֤
**************************************/
void AS5040_Init(void)
{
    AS5040_Portinit();//IO��ʼ��
    DELAY_MS(10);
    
    PROG_Port_Out=1;  //Prog H      Min-Max
    DELAY_US(2);      //Tprog 2us  (1.8-2.2)us
    CSN_Port_OUT=1 ;  //CS H Hold
    DELAY_US(2);      //Tdatain    (250-   )ns 
    
    
    
    PROG_Port_Out=0;  //CCW 0
    delay_400ns();
    CLK_Port_OUT=1 ;  //A_CLOCK
    delay_900ns();
    CLK_Port_OUT=0 ;  //A_CLOCK
    delay_900ns();
    
    PROG_Port_Out=0;  //Z9 0
    CLK_Port_OUT=1 ;  //A_CLOCK
    delay_900ns();
    CLK_Port_OUT=0 ;  //A_CLOCK
    delay_900ns();    
    
    PROG_Port_Out=0;  //Z8 0
    CLK_Port_OUT=1 ;  //A_CLOCK
    delay_900ns();
    CLK_Port_OUT=0 ;  //A_CLOCK
    delay_900ns(); 
   
    PROG_Port_Out=0;  //Z7 0
    CLK_Port_OUT=1 ;  //A_CLOCK
    delay_900ns();
    CLK_Port_OUT=0 ;  //A_CLOCK
    delay_900ns();     

    PROG_Port_Out=0;  //Z6 0
    CLK_Port_OUT=1 ;  //A_CLOCK
    delay_900ns();
    CLK_Port_OUT=0 ;  //A_CLOCK
    delay_900ns();     
    
    PROG_Port_Out=0;  //Z5 0
    CLK_Port_OUT=1 ;  //A_CLOCK
    delay_900ns();
    CLK_Port_OUT=0 ;  //A_CLOCK
    delay_900ns();     

    PROG_Port_Out=0;  //Z4 0
    CLK_Port_OUT=1 ;  //A_CLOCK
    delay_900ns();
    CLK_Port_OUT=0 ;  //A_CLOCK
    delay_900ns();     
    
    PROG_Port_Out=0;  //Z3 0
    CLK_Port_OUT=1 ;  //A_CLOCK
    delay_900ns();
    CLK_Port_OUT=0 ;  //A_CLOCK
    delay_900ns();     

    PROG_Port_Out=0;  //Z2 0
    CLK_Port_OUT=1 ;  //A_CLOCK
    delay_900ns();
    CLK_Port_OUT=0 ;  //A_CLOCK
    delay_900ns(); 

    PROG_Port_Out=0;  //Z1 0
    CLK_Port_OUT=1 ;  //A_CLOCK
    delay_900ns();
    CLK_Port_OUT=0 ;  //A_CLOCK
    delay_900ns(); 

    PROG_Port_Out=0;  //Z0 0
    CLK_Port_OUT=1 ;  //A_CLOCK
    delay_900ns();
    CLK_Port_OUT=0 ;  //A_CLOCK
    delay_900ns(); 

    PROG_Port_Out=0;  //Index 0
    CLK_Port_OUT=1 ;  //A_CLOCK
    delay_900ns();
    CLK_Port_OUT=0 ;  //A_CLOCK
    delay_900ns(); 
    
    PROG_Port_Out=0;  //Div1 0
    CLK_Port_OUT=1 ;  //A_CLOCK
    delay_900ns();
    CLK_Port_OUT=0 ;  //A_CLOCK
    delay_900ns(); 
    
    PROG_Port_Out=0;  //Div0 0
    CLK_Port_OUT=1 ;  //A_CLOCK
    delay_900ns();
    CLK_Port_OUT=0 ;  //A_CLOCK
    PROG_Port_Out=1;  //MD1 1
    delay_900ns(); 
    
    //delay_400ns();
    CLK_Port_OUT=1 ;  //A_CLOCK
    delay_900ns();
    PROG_Port_Out=0;
    CLK_Port_OUT=0 ;  //A_CLOCK
    delay_900ns(); 
    
    //PROG_Port_Out=0;
    //PROG_Port_Out=0;  //MD0 0
    CLK_Port_OUT=1 ;  //A_CLOCK
    delay_900ns();
    CLK_Port_OUT=0 ;  //A_CLOCK
    delay_900ns(); 

    CLK_Port_OUT=0 ;  //Clock L
    PROG_Port_Out=0;  //Prog  L
    delay_900ns();
    CSN_Port_OUT=0 ;  //CS L Hold
    
}








