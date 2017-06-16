///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      16/Jun/2017  18:57:07
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\@@@@@@@\Car\Drivers\BianMaqi\As5040.c
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EWACE.tmp
//        (D:\@@@@@@@\Car\Drivers\BianMaqi\As5040.c -D DEBUG -D
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
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\As5040.s
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

        EXTERN core_clk_khz
        EXTERN gpio_init
        EXTERN systick_delay
        EXTERN systick_delay_ms

        PUBLIC AS5040_Init
        PUBLIC AS5040_Portinit
        PUBLIC delay_400ns
        PUBLIC delay_900ns
        
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
        
// D:\@@@@@@@\Car\Drivers\BianMaqi\As5040.c
//    1 
//    2 /*************************************
//    3 @文件说明: 编码器初始化文件
//    4 @作者:          Dr_6队 
//    5 @时间:   2017年4月5日14:44:39
//    6 @版本:           V0.1
//    7 @备注:    第一版本，未验证
//    8 **************************************/
//    9 
//   10 #include  "All_Init.h"
//   11 #include  "AS5040.H"
//   12 
//   13 
//   14 #define PROG_Port PTE4
//   15 #define CSN_Port  PTE5
//   16 #define CLK_Port  PTE6
//   17 
//   18 #define PROG_Port_Out    PTE4_OUT      //芯片Pin8
//   19 #define CSN_Port_OUT     PTE5_OUT      //Pin11
//   20 #define CLK_Port_OUT     PTE6_OUT      //Pin10
//   21 
//   22 /*************************************
//   23 @文件说明:    IO始化函数
//   24 @作者:          Dr_6队 
//   25 @时间:   2017年4月5日14:45:53
//   26 @版本:           V0.1
//   27 @备注:    
//   28 **************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function AS5040_Portinit
        THUMB
//   29 void AS5040_Portinit(void)
//   30 {  
AS5040_Portinit:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   31 	gpio_init ( PROG_Port , GPO,0);//PROG_Port
        MOVS     R2,#+0
        MOVS     R1,#+1
        MOVS     R0,#+132
          CFI FunCall gpio_init
        BL       gpio_init
//   32 	gpio_init ( CSN_Port  , GPO,0);//CSN_Port
        MOVS     R2,#+0
        MOVS     R1,#+1
        MOVS     R0,#+133
          CFI FunCall gpio_init
        BL       gpio_init
//   33     gpio_init ( CLK_Port  , GPO,0);//CLK_Port
        MOVS     R2,#+0
        MOVS     R1,#+1
        MOVS     R0,#+134
          CFI FunCall gpio_init
        BL       gpio_init
//   34 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock0
//   35 
//   36 

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function delay_400ns
          CFI NoCalls
        THUMB
//   37 void delay_400ns(void)
//   38 {
//   39     asm("nop");asm("nop");asm("nop");asm("nop");
delay_400ns:
        nop
        nop
        nop
        nop
//   40     asm("nop");asm("nop");asm("nop");asm("nop");
        nop
        nop
        nop
        nop
//   41     asm("nop");asm("nop");asm("nop");asm("nop");
        nop
        nop
        nop
        nop
//   42     asm("nop");asm("nop");asm("nop");asm("nop");
        nop
        nop
        nop
        nop
//   43     asm("nop");asm("nop");asm("nop");asm("nop");
        nop
        nop
        nop
        nop
//   44     asm("nop");asm("nop");asm("nop");asm("nop");
        nop
        nop
        nop
        nop
//   45     asm("nop");asm("nop");asm("nop");asm("nop");
        nop
        nop
        nop
        nop
//   46     asm("nop");asm("nop");asm("nop");asm("nop");
        nop
        nop
        nop
        nop
//   47     asm("nop");asm("nop");asm("nop");asm("nop");
        nop
        nop
        nop
        nop
//   48     asm("nop");asm("nop");asm("nop");asm("nop");
        nop
        nop
        nop
        nop
//   49 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//   50 
//   51 

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function delay_900ns
          CFI NoCalls
        THUMB
//   52 void delay_900ns(void)
//   53 {
//   54     asm("nop");asm("nop");asm("nop");asm("nop");
delay_900ns:
        nop
        nop
        nop
        nop
//   55     asm("nop");asm("nop");asm("nop");asm("nop");
        nop
        nop
        nop
        nop
//   56     asm("nop");asm("nop");asm("nop");asm("nop");
        nop
        nop
        nop
        nop
//   57     asm("nop");asm("nop");asm("nop");asm("nop");
        nop
        nop
        nop
        nop
//   58     asm("nop");asm("nop");asm("nop");asm("nop");
        nop
        nop
        nop
        nop
//   59     asm("nop");asm("nop");asm("nop");asm("nop");
        nop
        nop
        nop
        nop
//   60     asm("nop");asm("nop");asm("nop");asm("nop");
        nop
        nop
        nop
        nop
//   61     asm("nop");asm("nop");asm("nop");asm("nop");
        nop
        nop
        nop
        nop
//   62     asm("nop");asm("nop");asm("nop");asm("nop");
        nop
        nop
        nop
        nop
//   63     asm("nop");asm("nop");asm("nop");asm("nop");
        nop
        nop
        nop
        nop
//   64     asm("nop");asm("nop");asm("nop");asm("nop");
        nop
        nop
        nop
        nop
//   65     asm("nop");asm("nop");asm("nop");asm("nop");
        nop
        nop
        nop
        nop
//   66     asm("nop");asm("nop");asm("nop");asm("nop");
        nop
        nop
        nop
        nop
//   67     asm("nop");asm("nop");asm("nop");asm("nop");
        nop
        nop
        nop
        nop
//   68     asm("nop");asm("nop");asm("nop");asm("nop");
        nop
        nop
        nop
        nop
//   69     asm("nop");asm("nop");asm("nop");asm("nop");
        nop
        nop
        nop
        nop
//   70     asm("nop");asm("nop");asm("nop");asm("nop");
        nop
        nop
        nop
        nop
//   71     asm("nop");asm("nop");asm("nop");asm("nop");
        nop
        nop
        nop
        nop
//   72     asm("nop");asm("nop");asm("nop");asm("nop");
        nop
        nop
        nop
        nop
//   73     asm("nop");asm("nop");asm("nop");asm("nop");
        nop
        nop
        nop
        nop
//   74     asm("nop");asm("nop");asm("nop");asm("nop");
        nop
        nop
        nop
        nop
//   75     asm("nop");asm("nop");asm("nop");asm("nop");
        nop
        nop
        nop
        nop
//   76     asm("nop");asm("nop");asm("nop");asm("nop");
        nop
        nop
        nop
        nop
//   77     asm("nop");asm("nop");asm("nop");asm("nop");
        nop
        nop
        nop
        nop
//   78     asm("nop");asm("nop");asm("nop");asm("nop");
        nop
        nop
        nop
        nop
//   79     asm("nop");asm("nop");asm("nop");asm("nop");
        nop
        nop
        nop
        nop
//   80     asm("nop");asm("nop");asm("nop");asm("nop");
        nop
        nop
        nop
        nop
//   81     asm("nop");asm("nop");asm("nop");asm("nop");
        nop
        nop
        nop
        nop
//   82     asm("nop");asm("nop");asm("nop");asm("nop");
        nop
        nop
        nop
        nop
//   83     asm("nop");asm("nop");asm("nop");asm("nop");
        nop
        nop
        nop
        nop
//   84     asm("nop");asm("nop");asm("nop");asm("nop");
        nop
        nop
        nop
        nop
//   85 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//   86 
//   87 
//   88 /*************************************
//   89 @文件说明:    初始化函数
//   90 @作者:          Dr_6队 
//   91 @时间:   2017年4月5日14:46:16
//   92 @版本:           V0.1
//   93 @备注:    第一版本，未验证
//   94 **************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function AS5040_Init
        THUMB
//   95 void AS5040_Init(void)
//   96 {
AS5040_Init:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   97     AS5040_Portinit();//IO初始化
          CFI FunCall AS5040_Portinit
        BL       AS5040_Portinit
//   98     DELAY_MS(10);
        MOVS     R0,#+10
          CFI FunCall systick_delay_ms
        BL       systick_delay_ms
//   99     
//  100     PROG_Port_Out=1;  //Prog H      Min-Max
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1  ;; 0x43fe2010
        STR      R0,[R1, #+0]
//  101     DELAY_US(2);      //Tprog 2us  (1.8-2.2)us
        LDR.N    R0,??DataTable1_1
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+1
        MOV      R1,#+1000
        SDIV     R0,R0,R1
          CFI FunCall systick_delay
        BL       systick_delay
//  102     CSN_Port_OUT=1 ;  //CS H Hold
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_2  ;; 0x43fe2014
        STR      R0,[R1, #+0]
//  103     DELAY_US(2);      //Tdatain    (250-   )ns 
        LDR.N    R0,??DataTable1_1
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+1
        MOV      R1,#+1000
        SDIV     R0,R0,R1
          CFI FunCall systick_delay
        BL       systick_delay
//  104     
//  105     
//  106     
//  107     PROG_Port_Out=0;  //CCW 0
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1  ;; 0x43fe2010
        STR      R0,[R1, #+0]
//  108     delay_400ns();
          CFI FunCall delay_400ns
        BL       delay_400ns
//  109     CLK_Port_OUT=1 ;  //A_CLOCK
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_3  ;; 0x43fe2018
        STR      R0,[R1, #+0]
//  110     delay_900ns();
          CFI FunCall delay_900ns
        BL       delay_900ns
//  111     CLK_Port_OUT=0 ;  //A_CLOCK
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_3  ;; 0x43fe2018
        STR      R0,[R1, #+0]
//  112     delay_900ns();
          CFI FunCall delay_900ns
        BL       delay_900ns
//  113     
//  114     PROG_Port_Out=0;  //Z9 0
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1  ;; 0x43fe2010
        STR      R0,[R1, #+0]
//  115     CLK_Port_OUT=1 ;  //A_CLOCK
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_3  ;; 0x43fe2018
        STR      R0,[R1, #+0]
//  116     delay_900ns();
          CFI FunCall delay_900ns
        BL       delay_900ns
//  117     CLK_Port_OUT=0 ;  //A_CLOCK
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_3  ;; 0x43fe2018
        STR      R0,[R1, #+0]
//  118     delay_900ns();    
          CFI FunCall delay_900ns
        BL       delay_900ns
//  119     
//  120     PROG_Port_Out=0;  //Z8 0
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1  ;; 0x43fe2010
        STR      R0,[R1, #+0]
//  121     CLK_Port_OUT=1 ;  //A_CLOCK
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_3  ;; 0x43fe2018
        STR      R0,[R1, #+0]
//  122     delay_900ns();
          CFI FunCall delay_900ns
        BL       delay_900ns
//  123     CLK_Port_OUT=0 ;  //A_CLOCK
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_3  ;; 0x43fe2018
        STR      R0,[R1, #+0]
//  124     delay_900ns(); 
          CFI FunCall delay_900ns
        BL       delay_900ns
//  125    
//  126     PROG_Port_Out=0;  //Z7 0
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1  ;; 0x43fe2010
        STR      R0,[R1, #+0]
//  127     CLK_Port_OUT=1 ;  //A_CLOCK
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_3  ;; 0x43fe2018
        STR      R0,[R1, #+0]
//  128     delay_900ns();
          CFI FunCall delay_900ns
        BL       delay_900ns
//  129     CLK_Port_OUT=0 ;  //A_CLOCK
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_3  ;; 0x43fe2018
        STR      R0,[R1, #+0]
//  130     delay_900ns();     
          CFI FunCall delay_900ns
        BL       delay_900ns
//  131 
//  132     PROG_Port_Out=0;  //Z6 0
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1  ;; 0x43fe2010
        STR      R0,[R1, #+0]
//  133     CLK_Port_OUT=1 ;  //A_CLOCK
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_3  ;; 0x43fe2018
        STR      R0,[R1, #+0]
//  134     delay_900ns();
          CFI FunCall delay_900ns
        BL       delay_900ns
//  135     CLK_Port_OUT=0 ;  //A_CLOCK
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_3  ;; 0x43fe2018
        STR      R0,[R1, #+0]
//  136     delay_900ns();     
          CFI FunCall delay_900ns
        BL       delay_900ns
//  137     
//  138     PROG_Port_Out=0;  //Z5 0
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1  ;; 0x43fe2010
        STR      R0,[R1, #+0]
//  139     CLK_Port_OUT=1 ;  //A_CLOCK
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_3  ;; 0x43fe2018
        STR      R0,[R1, #+0]
//  140     delay_900ns();
          CFI FunCall delay_900ns
        BL       delay_900ns
//  141     CLK_Port_OUT=0 ;  //A_CLOCK
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_3  ;; 0x43fe2018
        STR      R0,[R1, #+0]
//  142     delay_900ns();     
          CFI FunCall delay_900ns
        BL       delay_900ns
//  143 
//  144     PROG_Port_Out=0;  //Z4 0
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1  ;; 0x43fe2010
        STR      R0,[R1, #+0]
//  145     CLK_Port_OUT=1 ;  //A_CLOCK
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_3  ;; 0x43fe2018
        STR      R0,[R1, #+0]
//  146     delay_900ns();
          CFI FunCall delay_900ns
        BL       delay_900ns
//  147     CLK_Port_OUT=0 ;  //A_CLOCK
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_3  ;; 0x43fe2018
        STR      R0,[R1, #+0]
//  148     delay_900ns();     
          CFI FunCall delay_900ns
        BL       delay_900ns
//  149     
//  150     PROG_Port_Out=0;  //Z3 0
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1  ;; 0x43fe2010
        STR      R0,[R1, #+0]
//  151     CLK_Port_OUT=1 ;  //A_CLOCK
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_3  ;; 0x43fe2018
        STR      R0,[R1, #+0]
//  152     delay_900ns();
          CFI FunCall delay_900ns
        BL       delay_900ns
//  153     CLK_Port_OUT=0 ;  //A_CLOCK
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_3  ;; 0x43fe2018
        STR      R0,[R1, #+0]
//  154     delay_900ns();     
          CFI FunCall delay_900ns
        BL       delay_900ns
//  155 
//  156     PROG_Port_Out=0;  //Z2 0
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1  ;; 0x43fe2010
        STR      R0,[R1, #+0]
//  157     CLK_Port_OUT=1 ;  //A_CLOCK
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_3  ;; 0x43fe2018
        STR      R0,[R1, #+0]
//  158     delay_900ns();
          CFI FunCall delay_900ns
        BL       delay_900ns
//  159     CLK_Port_OUT=0 ;  //A_CLOCK
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_3  ;; 0x43fe2018
        STR      R0,[R1, #+0]
//  160     delay_900ns(); 
          CFI FunCall delay_900ns
        BL       delay_900ns
//  161 
//  162     PROG_Port_Out=0;  //Z1 0
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1  ;; 0x43fe2010
        STR      R0,[R1, #+0]
//  163     CLK_Port_OUT=1 ;  //A_CLOCK
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_3  ;; 0x43fe2018
        STR      R0,[R1, #+0]
//  164     delay_900ns();
          CFI FunCall delay_900ns
        BL       delay_900ns
//  165     CLK_Port_OUT=0 ;  //A_CLOCK
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_3  ;; 0x43fe2018
        STR      R0,[R1, #+0]
//  166     delay_900ns(); 
          CFI FunCall delay_900ns
        BL       delay_900ns
//  167 
//  168     PROG_Port_Out=0;  //Z0 0
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1  ;; 0x43fe2010
        STR      R0,[R1, #+0]
//  169     CLK_Port_OUT=1 ;  //A_CLOCK
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_3  ;; 0x43fe2018
        STR      R0,[R1, #+0]
//  170     delay_900ns();
          CFI FunCall delay_900ns
        BL       delay_900ns
//  171     CLK_Port_OUT=0 ;  //A_CLOCK
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_3  ;; 0x43fe2018
        STR      R0,[R1, #+0]
//  172     delay_900ns(); 
          CFI FunCall delay_900ns
        BL       delay_900ns
//  173 
//  174     PROG_Port_Out=0;  //Index 0
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1  ;; 0x43fe2010
        STR      R0,[R1, #+0]
//  175     CLK_Port_OUT=1 ;  //A_CLOCK
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_3  ;; 0x43fe2018
        STR      R0,[R1, #+0]
//  176     delay_900ns();
          CFI FunCall delay_900ns
        BL       delay_900ns
//  177     CLK_Port_OUT=0 ;  //A_CLOCK
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_3  ;; 0x43fe2018
        STR      R0,[R1, #+0]
//  178     delay_900ns(); 
          CFI FunCall delay_900ns
        BL       delay_900ns
//  179     
//  180     PROG_Port_Out=0;  //Div1 0
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1  ;; 0x43fe2010
        STR      R0,[R1, #+0]
//  181     CLK_Port_OUT=1 ;  //A_CLOCK
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_3  ;; 0x43fe2018
        STR      R0,[R1, #+0]
//  182     delay_900ns();
          CFI FunCall delay_900ns
        BL       delay_900ns
//  183     CLK_Port_OUT=0 ;  //A_CLOCK
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_3  ;; 0x43fe2018
        STR      R0,[R1, #+0]
//  184     delay_900ns(); 
          CFI FunCall delay_900ns
        BL       delay_900ns
//  185     
//  186     PROG_Port_Out=0;  //Div0 0
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1  ;; 0x43fe2010
        STR      R0,[R1, #+0]
//  187     CLK_Port_OUT=1 ;  //A_CLOCK
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_3  ;; 0x43fe2018
        STR      R0,[R1, #+0]
//  188     delay_900ns();
          CFI FunCall delay_900ns
        BL       delay_900ns
//  189     CLK_Port_OUT=0 ;  //A_CLOCK
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_3  ;; 0x43fe2018
        STR      R0,[R1, #+0]
//  190     PROG_Port_Out=1;  //MD1 1
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1  ;; 0x43fe2010
        STR      R0,[R1, #+0]
//  191     delay_900ns(); 
          CFI FunCall delay_900ns
        BL       delay_900ns
//  192     
//  193     //delay_400ns();
//  194     CLK_Port_OUT=1 ;  //A_CLOCK
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_3  ;; 0x43fe2018
        STR      R0,[R1, #+0]
//  195     delay_900ns();
          CFI FunCall delay_900ns
        BL       delay_900ns
//  196     PROG_Port_Out=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1  ;; 0x43fe2010
        STR      R0,[R1, #+0]
//  197     CLK_Port_OUT=0 ;  //A_CLOCK
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_3  ;; 0x43fe2018
        STR      R0,[R1, #+0]
//  198     delay_900ns(); 
          CFI FunCall delay_900ns
        BL       delay_900ns
//  199     
//  200     //PROG_Port_Out=0;
//  201     //PROG_Port_Out=0;  //MD0 0
//  202     CLK_Port_OUT=1 ;  //A_CLOCK
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_3  ;; 0x43fe2018
        STR      R0,[R1, #+0]
//  203     delay_900ns();
          CFI FunCall delay_900ns
        BL       delay_900ns
//  204     CLK_Port_OUT=0 ;  //A_CLOCK
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_3  ;; 0x43fe2018
        STR      R0,[R1, #+0]
//  205     delay_900ns(); 
          CFI FunCall delay_900ns
        BL       delay_900ns
//  206 
//  207     CLK_Port_OUT=0 ;  //Clock L
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_3  ;; 0x43fe2018
        STR      R0,[R1, #+0]
//  208     PROG_Port_Out=0;  //Prog  L
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1  ;; 0x43fe2010
        STR      R0,[R1, #+0]
//  209     delay_900ns();
          CFI FunCall delay_900ns
        BL       delay_900ns
//  210     CSN_Port_OUT=0 ;  //CS L Hold
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_2  ;; 0x43fe2014
        STR      R0,[R1, #+0]
//  211     
//  212 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     0x43fe2010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     core_clk_khz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     0x43fe2014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     0x43fe2018

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  213 
//  214 
//  215 
//  216 
//  217 
//  218 
//  219 
//  220 
// 
// 886 bytes in section .text
// 
// 886 bytes of CODE memory
//
//Errors: none
//Warnings: 53
