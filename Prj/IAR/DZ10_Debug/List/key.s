///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      16/Jun/2017  18:57:09
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\@@@@@@@\Car\Drivers\key\key.c
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EW140A.tmp
//        (D:\@@@@@@@\Car\Drivers\key\key.c -D DEBUG -D
//        ARM_MATH_CM4 -D MK60DZ10 -lA
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List -o
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\Obj --no_cse
//        --no_unroll --no_inline --no_code_motion --no_tbaa --no_clustering
//        --no_scheduling --debug --endian=little --cpu=Cortex-M4 -e
//        --char_is_signed --fpu=None --dlib_config "C:\Program Files (x86)\IAR
//        Systems\Embedded Workbench 8.0\arm\INC\c\DLib_Config_Full.h" -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\App\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\App\Inc\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Board\Inc\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Chip\inc\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Chip\inc\IAR\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Chip\inc\kinetis\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Lib\CMSIS\Inc\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Lib\FatFs\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Lib\USB\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Drivers\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Drivers\All_Init\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Drivers\OLED_NEW\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Drivers\OLED\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Drivers\lptmr\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Drivers\IIC_Angle\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Drivers\ZLG_GUI\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Drivers\key\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Drivers\Led\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Drivers\UI\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Drivers\Control\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Drivers\Search\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Drivers\Fuzzy\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Drivers\BianMaqi\ -On -I
//        "C:\Program Files (x86)\IAR Systems\Embedded Workbench
//        8.0\arm\CMSIS\Include\" -D ARM_MATH_CM4)
//    Locale       =  C
//    List file    =  
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\key.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        RTMODEL "__dlib_full_locale_support", "1"
        RTMODEL "__dlib_version", "6"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN Key_Beep
        EXTERN Key_Change_Botton
        EXTERN gpio_get
        EXTERN gpio_init
        EXTERN port_init_NoALT
        EXTERN systick_delay_ms

        PUBLIC Get_Press
        PUBLIC KEY
        PUBLIC KEY_check
        PUBLIC KEY_init
        PUBLIC LAST_PRESS
        PUBLIC Press
        
          CFI Names cfiNames0
          CFI StackFrame CFA R13 DATA
          CFI Resource R0:32, R1:32, R2:32, R3:32, R4:32, R5:32, R6:32, R7:32
          CFI Resource R8:32, R9:32, R10:32, R11:32, R12:32, R13:32, R14:32
          CFI EndNames cfiNames0
        
          CFI Common cfiCommon0 Using cfiNames0
          CFI CodeAlign 2
          CFI DataAlign 4
          CFI ReturnAddress R14 CODE
          CFI CFA R13+0
          CFI R0 Undefined
          CFI R1 Undefined
          CFI R2 Undefined
          CFI R3 Undefined
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI R8 SameValue
          CFI R9 SameValue
          CFI R10 SameValue
          CFI R11 SameValue
          CFI R12 Undefined
          CFI R14 SameValue
          CFI EndCommon cfiCommon0
        
// D:\@@@@@@@\Car\Drivers\key\key.c
//    1 /*************************************************************************
//    2 *                             电子DIY工作室
//    3 *
//    4 * 文件名       ：key.c
//    5 * 描述         ：key函数定义
//    6 *
//    7 *
//    8 **********************************************************************************/	
//    9 #include "ALL_INIT.h"
//   10 #include "key.h"
//   11 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   12 int Press=0;//全局按键变量
Press:
        DS8 4
//   13 
//   14 /*************************************************************************
//   15 *                             电子DIY工作室
//   16 *
//   17 *  函数名称：key_init
//   18 *  功能说明：初始化key端口，设置IO口为输入方向，上拉，按下为0
//   19 *  参数说明：按键类型
//   20 *  函数返回：无
//   21 *  修改时间：2015-3-24   已测试
//   22 *  备    注：
//   23 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function KEY_init
        THUMB
//   24 void    KEY_init(void)                                               // KEY初始化 函数
//   25 {
KEY_init:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   26   
//   27 //  port_init(UP,IRQ_RISING | PF | PULLUP );
//   28 //  port_init(DOWN,IRQ_RISING | PF | PULLUP );
//   29 //  port_init(LEFT,IRQ_RISING | PF | PULLUP );
//   30 //  port_init(RIGHT,IRQ_RISING | PF | PULLUP );
//   31 //  port_init(CENTER,IRQ_RISING | PF | PULLUP );
//   32     gpio_init (UP, GPI ,0); 
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,#+13
          CFI FunCall gpio_init
        BL       gpio_init
//   33     port_init_NoALT (UP,PULLUP ); 
        MOVS     R1,#+3
        MOVS     R0,#+13
          CFI FunCall port_init_NoALT
        BL       port_init_NoALT
//   34     gpio_init (DOWN, GPI ,0); 
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,#+10
          CFI FunCall gpio_init
        BL       gpio_init
//   35     port_init_NoALT (DOWN,PULLUP ); 
        MOVS     R1,#+3
        MOVS     R0,#+10
          CFI FunCall port_init_NoALT
        BL       port_init_NoALT
//   36     gpio_init (LEFT, GPI ,0); 
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,#+14
          CFI FunCall gpio_init
        BL       gpio_init
//   37     port_init_NoALT (LEFT,PULLUP ); 
        MOVS     R1,#+3
        MOVS     R0,#+14
          CFI FunCall port_init_NoALT
        BL       port_init_NoALT
//   38     gpio_init (RIGHT, GPI ,0); 
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,#+11
          CFI FunCall gpio_init
        BL       gpio_init
//   39     port_init_NoALT (RIGHT,PULLUP ); 
        MOVS     R1,#+3
        MOVS     R0,#+11
          CFI FunCall port_init_NoALT
        BL       port_init_NoALT
//   40     gpio_init (CENTER,GPI ,0); 
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,#+12
          CFI FunCall gpio_init
        BL       gpio_init
//   41     port_init_NoALT (CENTER, PULLUP ); 
        MOVS     R1,#+3
        MOVS     R0,#+12
          CFI FunCall port_init_NoALT
        BL       port_init_NoALT
//   42 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock0
//   43     //UP           C0
//   44     //DOWN         C1
//   45     //LEFT         C2
//   46     //RIGHT        C3
//   47     //CENTER       B23
//   48 /*************************************************************************
//   49 *                             电子DIY工作室
//   50 *
//   51 *  函数名称：key_check
//   52 *  功能说明：检测key状态
//   53 *  参数说明：按键类型
//   54 *  函数返回：按键状态
//   55 *  修改时间：2012-10-7   已测试
//   56 *  备    注：
//   57 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function KEY_check
        THUMB
//   58 int KEY_check(void)
//   59 {
KEY_check:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//   60   int get_key=0;
        MOVS     R4,#+0
//   61   if(gpio_get(UP)==0)
        MOVS     R0,#+13
          CFI FunCall gpio_get
        BL       gpio_get
        CMP      R0,#+0
        BNE.N    ??KEY_check_0
//   62   get_key|=0x01;
        ORRS     R4,R4,#0x1
//   63   if(gpio_get(DOWN)==0)
??KEY_check_0:
        MOVS     R0,#+10
          CFI FunCall gpio_get
        BL       gpio_get
        CMP      R0,#+0
        BNE.N    ??KEY_check_1
//   64   get_key|=0x02;
        ORRS     R4,R4,#0x2
//   65   if(gpio_get(LEFT)==0)
??KEY_check_1:
        MOVS     R0,#+14
          CFI FunCall gpio_get
        BL       gpio_get
        CMP      R0,#+0
        BNE.N    ??KEY_check_2
//   66   get_key|=0x04;
        ORRS     R4,R4,#0x4
//   67   if(gpio_get(RIGHT)==0)
??KEY_check_2:
        MOVS     R0,#+11
          CFI FunCall gpio_get
        BL       gpio_get
        CMP      R0,#+0
        BNE.N    ??KEY_check_3
//   68   get_key|=0x08;
        ORRS     R4,R4,#0x8
//   69   if(gpio_get(CENTER)==0)
??KEY_check_3:
        MOVS     R0,#+12
          CFI FunCall gpio_get
        BL       gpio_get
        CMP      R0,#+0
        BNE.N    ??KEY_check_4
//   70   get_key|=0x10;
        ORRS     R4,R4,#0x10
//   71   return get_key;
??KEY_check_4:
        MOVS     R0,R4
        POP      {R4,PC}          ;; return
//   72 }
          CFI EndBlock cfiBlock1
//   73 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function KEY
        THUMB
//   74 int KEY(void)
//   75 {
KEY:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//   76   int get_key=0;
        MOVS     R4,#+0
//   77   if(gpio_get(UP)==0)
        MOVS     R0,#+13
          CFI FunCall gpio_get
        BL       gpio_get
        CMP      R0,#+0
        BNE.N    ??KEY_0
//   78   get_key=1;
        MOVS     R0,#+1
        MOVS     R4,R0
//   79   if(gpio_get(DOWN)==0)
??KEY_0:
        MOVS     R0,#+10
          CFI FunCall gpio_get
        BL       gpio_get
        CMP      R0,#+0
        BNE.N    ??KEY_1
//   80   get_key=2;
        MOVS     R0,#+2
        MOVS     R4,R0
//   81   if(gpio_get(LEFT)==0)
??KEY_1:
        MOVS     R0,#+14
          CFI FunCall gpio_get
        BL       gpio_get
        CMP      R0,#+0
        BNE.N    ??KEY_2
//   82   get_key=3;
        MOVS     R0,#+3
        MOVS     R4,R0
//   83   if(gpio_get(RIGHT)==0)
??KEY_2:
        MOVS     R0,#+11
          CFI FunCall gpio_get
        BL       gpio_get
        CMP      R0,#+0
        BNE.N    ??KEY_3
//   84   get_key=4;
        MOVS     R0,#+4
        MOVS     R4,R0
//   85   if(gpio_get(CENTER)==0)
??KEY_3:
        MOVS     R0,#+12
          CFI FunCall gpio_get
        BL       gpio_get
        CMP      R0,#+0
        BNE.N    ??KEY_4
//   86   get_key=5;
        MOVS     R0,#+5
        MOVS     R4,R0
//   87   return get_key;
??KEY_4:
        MOVS     R0,R4
        POP      {R4,PC}          ;; return
//   88 }
          CFI EndBlock cfiBlock2
//   89 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   90 int LAST_PRESS=0;
LAST_PRESS:
        DS8 4

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function Get_Press
        THUMB
//   91 int  Get_Press (void)
//   92 {	
Get_Press:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//   93     int Key_Time=250;
        MOVS     R4,#+250
//   94     static int Key_Time2=50;
//   95 	Press=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1
        STR      R0,[R1, #+0]
//   96 	Press=KEY();
          CFI FunCall KEY
        BL       KEY
        LDR.N    R1,??DataTable1
        STR      R0,[R1, #+0]
//   97     DELAY_MS(5);
        MOVS     R0,#+5
          CFI FunCall systick_delay_ms
        BL       systick_delay_ms
//   98     
//   99 	while(KEY()!=0&&Press==KEY())       //加入300毫秒长按
??Get_Press_0:
          CFI FunCall KEY
        BL       KEY
        CMP      R0,#+0
        BEQ.N    ??Get_Press_1
          CFI FunCall KEY
        BL       KEY
        LDR.N    R1,??DataTable1
        LDR      R1,[R1, #+0]
        CMP      R1,R0
        BNE.N    ??Get_Press_1
//  100     {
//  101       if(Key_Change_Botton==1)
        LDR.N    R0,??DataTable1_1
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Get_Press_2
//  102       {
//  103        if(LAST_PRESS==KEY())
          CFI FunCall KEY
        BL       KEY
        LDR.N    R1,??DataTable1_2
        LDR      R1,[R1, #+0]
        CMP      R1,R0
        BNE.N    ??Get_Press_3
//  104        {
//  105          
//  106          Key_Time2--;
        LDR.N    R0,??DataTable1_3
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.N    R1,??DataTable1_3
        STR      R0,[R1, #+0]
//  107          
//  108          if(Key_Time2<=0)
        LDR.N    R0,??DataTable1_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BGE.N    ??Get_Press_4
//  109          {
//  110             Key_Change_Botton=2;
        MOVS     R0,#+2
        LDR.N    R1,??DataTable1_1
        STR      R0,[R1, #+0]
//  111             Key_Time2=50;
        MOVS     R0,#+50
        LDR.N    R1,??DataTable1_3
        STR      R0,[R1, #+0]
//  112          }
//  113          
//  114          if(Press!=0)Key_Beep(1);
??Get_Press_4:
        LDR.N    R0,??DataTable1
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Get_Press_5
        MOVS     R0,#+1
          CFI FunCall Key_Beep
        BL       Key_Beep
//  115          DELAY_MS(15);
??Get_Press_5:
        MOVS     R0,#+15
          CFI FunCall systick_delay_ms
        BL       systick_delay_ms
//  116          return Press;
        LDR.N    R0,??DataTable1
        LDR      R0,[R0, #+0]
        B.N      ??Get_Press_6
//  117        }
//  118        else 
//  119        {
//  120          Key_Change_Botton=0;
??Get_Press_3:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_1
        STR      R0,[R1, #+0]
//  121          LAST_PRESS=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_2
        STR      R0,[R1, #+0]
//  122          Key_Time2=50;
        MOVS     R0,#+50
        LDR.N    R1,??DataTable1_3
        STR      R0,[R1, #+0]
//  123        }
//  124       }
//  125       
//  126       
//  127       if(Key_Change_Botton==2)
??Get_Press_2:
        LDR.N    R0,??DataTable1_1
        LDR      R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??Get_Press_7
//  128       {
//  129        if(LAST_PRESS==KEY())
          CFI FunCall KEY
        BL       KEY
        LDR.N    R1,??DataTable1_2
        LDR      R1,[R1, #+0]
        CMP      R1,R0
        BNE.N    ??Get_Press_8
//  130        {
//  131          if(Press!=0)Key_Beep(1);
        LDR.N    R0,??DataTable1
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Get_Press_9
        MOVS     R0,#+1
          CFI FunCall Key_Beep
        BL       Key_Beep
//  132          //DELAY_MS(1);
//  133          return Press;
??Get_Press_9:
        LDR.N    R0,??DataTable1
        LDR      R0,[R0, #+0]
        B.N      ??Get_Press_6
//  134        }
//  135        else 
//  136        {
//  137          Key_Change_Botton=0;
??Get_Press_8:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_1
        STR      R0,[R1, #+0]
//  138          LAST_PRESS=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_2
        STR      R0,[R1, #+0]
//  139          Key_Time2=50;
        MOVS     R0,#+50
        LDR.N    R1,??DataTable1_3
        STR      R0,[R1, #+0]
//  140        }
//  141       }
//  142       
//  143         --Key_Time;
??Get_Press_7:
        SUBS     R4,R4,#+1
//  144       if(Key_Time<=0)
        CMP      R4,#+1
        BGE.N    ??Get_Press_10
//  145       {
//  146             Key_Change_Botton=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_1
        STR      R0,[R1, #+0]
//  147             LAST_PRESS=KEY();
          CFI FunCall KEY
        BL       KEY
        LDR.N    R1,??DataTable1_2
        STR      R0,[R1, #+0]
//  148             Key_Time=Key_Time<0?0:Key_Time;
        CMP      R4,#+0
        BPL.N    ??Get_Press_11
        MOVS     R4,#+0
        B.N      ??Get_Press_12
??Get_Press_11:
        B.N      ??Get_Press_12
//  149       }
//  150       else 
//  151       {
//  152             Key_Change_Botton=0;
??Get_Press_10:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_1
        STR      R0,[R1, #+0]
//  153             Key_Time2=50;
        MOVS     R0,#+50
        LDR.N    R1,??DataTable1_3
        STR      R0,[R1, #+0]
//  154       }
//  155       DELAY_MS(1);//消抖
??Get_Press_12:
        MOVS     R0,#+1
          CFI FunCall systick_delay_ms
        BL       systick_delay_ms
        B.N      ??Get_Press_0
//  156     }
//  157     Key_Change_Botton=0;
??Get_Press_1:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_1
        STR      R0,[R1, #+0]
//  158     //Key_Time2=300;
//  159     Key_Time2=50;
        MOVS     R0,#+50
        LDR.N    R1,??DataTable1_3
        STR      R0,[R1, #+0]
//  160     if(Press!=0)Key_Beep(1);
        LDR.N    R0,??DataTable1
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Get_Press_13
        MOVS     R0,#+1
          CFI FunCall Key_Beep
        BL       Key_Beep
//  161 	return Press;
??Get_Press_13:
        LDR.N    R0,??DataTable1
        LDR      R0,[R0, #+0]
??Get_Press_6:
        POP      {R4,PC}          ;; return
//  162 }
          CFI EndBlock cfiBlock3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     Press

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     Key_Change_Botton

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     LAST_PRESS

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     `Get_Press::Key_Time2`

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
`Get_Press::Key_Time2`:
        DC32 50

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  163 
// 
//   8 bytes in section .bss
//   4 bytes in section .data
// 544 bytes in section .text
// 
// 544 bytes of CODE memory
//  12 bytes of DATA memory
//
//Errors: none
//Warnings: 3
