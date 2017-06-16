///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      16/Jun/2017  19:26:03
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\@@@@@@@\Car\Drivers\All_Init\All_Init.c
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EW8E10.tmp
//        (D:\@@@@@@@\Car\Drivers\All_Init\All_Init.c -D DEBUG -D
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
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\All_Init.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        RTMODEL "__dlib_full_locale_support", "1"
        RTMODEL "__dlib_version", "6"
        RTMODEL "__iar_require _Printf", ""
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1
        #define SHF_WRITE 0x1
        #define SHF_EXECINSTR 0x4

        EXTERN Backward_Safe_Angle
        EXTERN DMA_count_Init
        EXTERN Flash_Read_Plan
        EXTERN Flash_Write_Pub
        EXTERN Forward_Safe_Angle
        EXTERN GUI_Exec
        EXTERN GUI_PutString
        EXTERN GUI_SetColor
        EXTERN HowMuch_Ring_Finds
        EXTERN How_Much_To_Find_Ring
        EXTERN KEY_init
        EXTERN OLED_Init
        EXTERN PIT0_IRQHandler
        EXTERN PIT1_IRQHandler
        EXTERN PIT3_IRQHandler
        EXTERN Seagull_Num
        EXTERN SpeedMid
        EXTERN SpeedMini
        EXTERN __aeabi_d2f
        EXTERN __aeabi_dmul
        EXTERN __aeabi_ui2d
        EXTERN __aeabi_ui2f
        EXTERN adc_init
        EXTERN bus_clk_khz
        EXTERN ftm_pwm_init
        EXTERN gpio_init
        EXTERN pit_init
        EXTERN set_vector_handler
        EXTERN sprintf

        PUBLIC AAngleArrySCI
        PUBLIC All_Init
        PUBLIC CarSpeed
        PUBLIC Car_Run
        PUBLIC Car_Run_Ui_Show_How_Long
        PUBLIC Car_Run_Ui_Show_Long
        PUBLIC Control_Para
        PUBLIC Data_Get
        PUBLIC Data_Public_Get
        PUBLIC Data_Public_Save
        PUBLIC Debug_Bluetooth
        PUBLIC Debug_Button_Led
        PUBLIC Debug_Button_V
        PUBLIC Debug_Button_WhatisBeep
        PUBLIC Debug_CarAngPrt
        PUBLIC Debug_Protect
        PUBLIC Distance
        PUBLIC Flash_Data_Plan
        PUBLIC Flash_Data_Public
        PUBLIC HardwareInit
        PUBLIC Key_Change_Botton
        PUBLIC LastTime_Car_Run_Distance
        PUBLIC Left_FLine
        PUBLIC MID_ERROR
        PUBLIC Mid_FLine
        PUBLIC OLED_OPEN
        PUBLIC PID_ANGLE
        PUBLIC PID_SPEED
        PUBLIC PID_TURN
        PUBLIC ParInit
        PUBLIC Pic
        PUBLIC Pic_show
        PUBLIC Pit1_Start
        PUBLIC Plan_Num
        PUBLIC QianZhan
        PUBLIC Ran_Erase_Speed_I
        PUBLIC Right_FLine
        PUBLIC SetSpeed
        PUBLIC ShiZiFind
        PUBLIC SpeedControlIntegral
        PUBLIC SpeedControlOutNew
        PUBLIC SpeedControlOutOld
        PUBLIC Speed_Ang
        PUBLIC Speed_Filter_Times
        PUBLIC Str_View
        PUBLIC Ui_Show_Get_Speed
        PUBLIC anglenum
        PUBLIC angular
        PUBLIC img
        PUBLIC imgbuff
        PUBLIC result
        
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
        
// D:\@@@@@@@\Car\Drivers\All_Init\All_Init.c
//    1 /**************************************************************************************
//    2 *
//    3 **************************************************************************************/
//    4 
//    5 #include "All_Init.h"

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function NVIC_EnableIRQ
          CFI NoCalls
        THUMB
// static __ramfunc __interwork __softfp void NVIC_EnableIRQ(IRQn_Type)
NVIC_EnableIRQ:
        MOVS     R2,#+1
        ANDS     R1,R0,#0x1F
        LSLS     R2,R2,R1
        LDR.N    R1,??DataTable1  ;; 0xe000e100
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        MOVS     R3,R0
        LSRS     R3,R3,#+5
        STR      R2,[R1, R3, LSL #+2]
        BX       LR               ;; return
          CFI EndBlock cfiBlock0

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function NVIC_SetPriority
          CFI NoCalls
        THUMB
// static __interwork __softfp void NVIC_SetPriority(IRQn_Type, uint32_t)
NVIC_SetPriority:
        PUSH     {R4}
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+4
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BPL.N    ??NVIC_SetPriority_0
        LSLS     R2,R1,#+4
        LDR.N    R3,??DataTable24  ;; 0xe000ed18
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        ANDS     R4,R0,#0xF
        ADD      R3,R3,R4
        STRB     R2,[R3, #-4]
        B.N      ??NVIC_SetPriority_1
??NVIC_SetPriority_0:
        LSLS     R2,R1,#+4
        LDR.N    R3,??DataTable24_1  ;; 0xe000e400
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        STRB     R2,[R3, R0]
??NVIC_SetPriority_1:
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//    6 
//    7 __ramfunc void DMA0_IRQHandler();
//    8 __ramfunc void PORTC_IRQHandler();
//    9 __ramfunc void PIT0_IRQHandler();
//   10 __ramfunc void PIT1_IRQHandler();
//   11 __ramfunc void PIT2_IRQHandler();
//   12 __ramfunc void PIT3_IRQHandler();
//   13 
//   14 /*全局辅助*/

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   15 char Str_View[30];//全局通用字符串显示数组
Str_View:
        DS8 32
//   16 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   17 uint32 Flash_Data_Public[30]={0};//公共变量
Flash_Data_Public:
        DS8 120

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   18 uint32 Flash_Data_Plan[30]  ={0};  //方案独自的变量
Flash_Data_Plan:
        DS8 120

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   19 uint32 Plan_Num=0;//暂存方案选择
Plan_Num:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   20 uint32 Debug_Button_V=0;//调试开关
Debug_Button_V:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   21 uint8 Debug_Button_Led=0;//LED开关
Debug_Button_Led:
        DS8 1
//   22 //uint8 Debug_Button_KEY_BEEP=0; //按键音开关

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   23 uint8 Debug_Bluetooth=0;   //蓝牙调试开关
Debug_Bluetooth:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   24 uint8 Debug_Protect=0;     //车体保护开关
Debug_Protect:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   25 uint8 Debug_CarAngPrt=0;//角度保护开关
Debug_CarAngPrt:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   26 uint8 Debug_Button_WhatisBeep=0;//啥玩意Beep
Debug_Button_WhatisBeep:
        DS8 1
//   27 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   28 int Ran_Erase_Speed_I=0;//清积分标志位
Ran_Erase_Speed_I:
        DS8 4
//   29 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   30 volatile uint32 Pit1_Start;//UI里面显示代码运行时间的变量
Pit1_Start:
        DS8 4
//   31 
//   32 
//   33 //UI显示车体运行路程

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   34 int Car_Run_Ui_Show_Long    =0;
Car_Run_Ui_Show_Long:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   35 int Car_Run_Ui_Show_How_Long=0;
Car_Run_Ui_Show_How_Long:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   36 int LastTime_Car_Run_Distance=0;
LastTime_Car_Run_Distance:
        DS8 4
//   37 
//   38 
//   39 //

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   40 int ShiZiFind=0;  //十字前瞻
ShiZiFind:
        DS8 4
//   41 
//   42 //串口相关

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   43 float Control_Para[15];
Control_Para:
        DS8 60
//   44 
//   45 /*图像处理*/

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   46 uint8 Pic[60][80]={0};     //保存图像的二维数组
Pic:
        DS8 4800

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   47 uint8 Pic_show[60][80];
Pic_show:
        DS8 4800
//   48 
//   49 //搜线标志数组

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   50 int Left_FLine[40][2]=
Left_FLine:
        DC32 58, 39, 56, 38, 54, 37, 53, 36, 51, 35, 50, 34, 49, 33, 48, 32, 47
        DC32 31, 46, 30, 46, 29, 45, 28, 44, 27, 44, 26, 43, 25, 43, 24, 42, 23
        DC32 42, 22, 41, 21, 41, 20, 41, 19, 40, 18, 40, 17, 40, 16, 39, 15, 39
        DC32 14, 39, 13, 39, 12, 38, 11, 38, 10, 38, 9, 38, 8, 38, 7, 38, 6, 38
        DC32 5, 38, 4, 38, 3, 38, 2, 38, 1, 38, 0
//   51 {
//   52   {58,39},{56,38},{54,37},{53,36},{51,35},
//   53   {50,34},{49,33},{48,32},{47,31},{46,30},
//   54   {46,29},{45,28},{44,27},{44,26},{43,25},
//   55   {43,24},{42,23},{42,22},{41,21},{41,20},
//   56   {41,19},{40,18},{40,17},{40,16},{39,15},
//   57   {39,14},{39,13},{39,12},{38,11},{38,10},
//   58   {38, 9},{38, 8},{38, 7},{38, 6},{38, 5},
//   59   {38, 4},{38, 3},{38, 2},{38, 1},{38, 0},
//   60 };
//   61 //搜线标志数组

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   62 int Right_FLine[40][2]=
Right_FLine:
        DC32 58, 40, 56, 41, 54, 42, 53, 43, 51, 44, 50, 45, 49, 46, 48, 47, 47
        DC32 48, 46, 49, 46, 50, 45, 51, 44, 52, 44, 53, 43, 54, 43, 55, 42, 56
        DC32 42, 57, 41, 58, 41, 59, 41, 60, 40, 61, 40, 62, 40, 63, 39, 64, 39
        DC32 65, 39, 66, 39, 67, 38, 68, 38, 69, 38, 70, 38, 71, 38, 72, 38, 73
        DC32 38, 74, 38, 75, 38, 76, 38, 77, 38, 78, 38, 79
//   63 {
//   64   {58,40},{56,41},{54,42},{53,43},{51,44},
//   65   {50,45},{49,46},{48,47},{47,48},{46,49},
//   66   {46,50},{45,51},{44,52},{44,53},{43,54},
//   67   {43,55},{42,56},{42,57},{41,58},{41,59},
//   68   {41,60},{40,61},{40,62},{40,63},{39,64},
//   69   {39,65},{39,66},{39,67},{38,68},{38,69},
//   70   {38,70},{38,71},{38,72},{38,73},{38,74},
//   71   {38,75},{38,76},{38,77},{38,78},{38,79},
//   72 };
//   73 //搜线标志数组

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   74 int Mid_FLine[50][2]=
Mid_FLine:
        DC32 60, 40, 59, 40, 58, 40, 57, 40, 56, 40, 55, 40, 54, 40, 53, 40, 52
        DC32 40, 51, 40, 50, 40, 49, 40, 48, 40, 47, 40, 46, 40, 45, 40, 44, 40
        DC32 43, 40, 42, 40, 41, 40, 40, 40, 39, 40, 38, 40, 37, 40, 36, 40, 35
        DC32 40, 34, 40, 33, 40, 32, 40, 31, 40, 30, 40, 29, 40, 28, 40, 27, 40
        DC32 26, 40, 25, 40, 24, 40, 23, 40, 22, 40, 21, 40, 20, 40, 19, 40, 18
        DC32 40, 17, 40, 16, 40, 15, 40, 14, 40, 13, 40, 12, 40, 11, 40
//   75 {
//   76     {60,40},{59,40},{58,40},{57,40},{56,40},
//   77     {55,40},{54,40},{53,40},{52,40},{51,40},
//   78     {50,40},{49,40},{48,40},{47,40},{46,40},
//   79     {45,40},{44,40},{43,40},{42,40},{41,40},
//   80     {40,40},{39,40},{38,40},{37,40},{36,40},
//   81     {35,40},{34,40},{33,40},{32,40},{31,40},
//   82     {30,40},{29,40},{28,40},{27,40},{26,40},
//   83     {25,40},{24,40},{23,40},{22,40},{21,40},
//   84     {20,40},{19,40},{18,40},{17,40},{16,40},
//   85     {15,40},{14,40},{13,40},{12,40},{11,40},
//   86 };
//   87 
//   88 

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
//   89 uint8 QianZhan=25;    //计算中线的前瞻
QianZhan:
        DC8 25
//   90 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   91 uint8 imgbuff[CAMERA_SIZE];//定义存储接收图像的数组
imgbuff:
        DS8 600

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   92 uint8 img[CAMERA_W*CAMERA_H];//保存图像的一维数组
img:
        DS8 4800
//   93 
//   94 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   95 float MID_ERROR=0;//
MID_ERROR:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   96 float Speed_Ang=0;
Speed_Ang:
        DS8 4
//   97 
//   98 
//   99 /*速度控制*/

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  100 float AAngleArrySCI[3]={0};//陀螺仪数组
AAngleArrySCI:
        DS8 12

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  101 int  angular =0;//开机设置的加速度值
angular:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  102 int  anglenum=0;//开机设置的角度值
anglenum:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  103 int  SetSpeed=0;
SetSpeed:
        DS8 4
//  104 
//  105 
//  106 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  107 float  SpeedControlIntegral=0;//速度积分
SpeedControlIntegral:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  108 int  SpeedControlOutOld;
SpeedControlOutOld:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  109 int  SpeedControlOutNew;
SpeedControlOutNew:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//  110 int  Speed_Filter_Times=10;//平滑输出等级
Speed_Filter_Times:
        DC32 10
//  111 
//  112 //int Speed_Filter_Times=20;

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  113 int CarSpeed=0; //真实车速
CarSpeed:
        DS8 4
//  114 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  115 int Ui_Show_Get_Speed=0;
Ui_Show_Get_Speed:
        DS8 4
//  116 
//  117 /*直立控制*/

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  118 PID PID_ANGLE,PID_SPEED,PID_TURN;
PID_ANGLE:
        DS8 28

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
PID_SPEED:
        DS8 28

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
PID_TURN:
        DS8 28
//  119 
//  120 
//  121 /*按键处理*/
//  122 
//  123 
//  124 /*其他*/
//  125 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//  126 int OLED_OPEN=1;
OLED_OPEN:
        DC32 1
//  127 
//  128 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  129 int result=0;
result:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  130 int Car_Run=0;
Car_Run:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  131 int Key_Change_Botton=0;//按键连按标志
Key_Change_Botton:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  132 float Distance=0.0;
Distance:
        DS8 4
//  133 
//  134 /*************************************************************************************
//  135 *	hardware Init
//  136 *	author YU
//  137 *	Time 2016.11.26 
//  138 **************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function HardwareInit
        THUMB
//  139 void HardwareInit(void)
//  140 {    
HardwareInit:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  141 	DisableInterrupts;	//关闭中断
        CPSID    I
//  142 //	/*陀螺仪加速度计初始化*/
//  143 //    
//  144 //    /*配置中断服务函数*/
//  145 //    //set_vector_handler(DMA0_VECTORn , DMA0_IRQHandler);  //设置DMA0_VECTORn的中断服务函数为 DMA0_IRQHandler
//  146 //    //set_vector_handler(PORTC_VECTORn , PORTC_IRQHandler);//设置PORTC_VECTORn的中断服务函数为 PORTC_IRQHandler
//  147     set_vector_handler(PIT0_VECTORn ,PIT0_IRQHandler);
        LDR.N    R1,??DataTable24_2
        MOVS     R0,#+84
          CFI FunCall set_vector_handler
        BL       set_vector_handler
//  148     set_vector_handler(PIT1_VECTORn ,PIT1_IRQHandler);
        LDR.N    R1,??DataTable24_3
        MOVS     R0,#+85
          CFI FunCall set_vector_handler
        BL       set_vector_handler
//  149     //set_vector_handler(PIT2_VECTORn ,PIT2_IRQHandler);
//  150     set_vector_handler(PIT3_VECTORn ,PIT3_IRQHandler);
        LDR.N    R1,??DataTable24_4
        MOVS     R0,#+87
          CFI FunCall set_vector_handler
        BL       set_vector_handler
//  151  	
//  152     DMA_count_Init(DMA_CH4, PTA6 , 0x7FFF, DMA_rising); //E26  dma初始化编码器用
        MOVS     R3,#+1
        MOVW     R2,#+32767
        MOVS     R1,#+6
        MOVS     R0,#+4
          CFI FunCall DMA_count_Init
        BL       DMA_count_Init
//  153 //   
//  154 //    
//  155     adc_init(ADC1_SE4a);//e0
        MOVS     R0,#+36
          CFI FunCall adc_init
        BL       adc_init
//  156     adc_init(ADC1_SE5a);
        MOVS     R0,#+37
          CFI FunCall adc_init
        BL       adc_init
//  157     adc_init(ADC1_SE6a);
        MOVS     R0,#+38
          CFI FunCall adc_init
        BL       adc_init
//  158     adc_init(ADC1_SE7a);//e4
        MOVS     R0,#+39
          CFI FunCall adc_init
        BL       adc_init
//  159   
//  160     pit_init_ms(PIT0,1);    //1ms定时中断   
        LDR.N    R0,??DataTable24_5
        LDR      R1,[R0, #+0]
        MOVS     R0,#+0
          CFI FunCall pit_init
        BL       pit_init
//  161     enable_irq (PIT0_IRQn);
        MOVS     R0,#+68
          CFI FunCall NVIC_EnableIRQ
        BL       NVIC_EnableIRQ
//  162     pit_init_ms(PIT1,20);   //20ms定时中断   
        LDR.N    R0,??DataTable24_5
        LDR      R1,[R0, #+0]
        MOVS     R0,#+20
        MULS     R1,R0,R1
        MOVS     R0,#+1
          CFI FunCall pit_init
        BL       pit_init
//  163     enable_irq (PIT1_IRQn);
        MOVS     R0,#+69
          CFI FunCall NVIC_EnableIRQ
        BL       NVIC_EnableIRQ
//  164     //pit_init_ms(PIT2,500); //500ms定时中断   
//  165     //enable_irq (PIT2_IRQn);
//  166     pit_init_ms(PIT3,1000); //1s定时中断    
        LDR.N    R0,??DataTable24_5
        LDR      R1,[R0, #+0]
        MOV      R0,#+1000
        MULS     R1,R0,R1
        MOVS     R0,#+3
          CFI FunCall pit_init
        BL       pit_init
//  167     enable_irq (PIT3_IRQn);
        MOVS     R0,#+71
          CFI FunCall NVIC_EnableIRQ
        BL       NVIC_EnableIRQ
//  168  
//  169     NVIC_SetPriority(PIT0_IRQn,0);//1 ms  设置中断优先级
        MOVS     R1,#+0
        MOVS     R0,#+68
          CFI FunCall NVIC_SetPriority
        BL       NVIC_SetPriority
//  170     NVIC_SetPriority(PIT1_IRQn,1);//20ms  设置中断优先级
        MOVS     R1,#+1
        MOVS     R0,#+69
          CFI FunCall NVIC_SetPriority
        BL       NVIC_SetPriority
//  171  	//NVIC_SetPriority(PIT2_IRQn,1);//500ms 设置中断优先级
//  172     NVIC_SetPriority(PIT3_IRQn,2);//1s    设置中断优先级
        MOVS     R1,#+2
        MOVS     R0,#+71
          CFI FunCall NVIC_SetPriority
        BL       NVIC_SetPriority
//  173     
//  174     
//  175     ftm_pwm_init(FTM0, FTM_CH3,10000, 0);   
        MOVS     R3,#+0
        MOVW     R2,#+10000
        MOVS     R1,#+3
        MOVS     R0,#+0
          CFI FunCall ftm_pwm_init
        BL       ftm_pwm_init
//  176     ftm_pwm_init(FTM0, FTM_CH2,10000, 0); 
        MOVS     R3,#+0
        MOVW     R2,#+10000
        MOVS     R1,#+2
        MOVS     R0,#+0
          CFI FunCall ftm_pwm_init
        BL       ftm_pwm_init
//  177     
//  178     
//  179     gpio_init (PTC2, GPO,1);//电机使能
        MOVS     R2,#+1
        MOVS     R1,#+1
        MOVS     R0,#+66
          CFI FunCall gpio_init
        BL       gpio_init
//  180 ////    gpio_init (PTC4, GPO,0);//电机使能  
//  181     //ftm_pwm_init(FTM0, FTM_CH1,10000, 800);   
//  182     
//  183 
//  184     ftm_pwm_init(FTM1, FTM_CH1,200, 2250);  
        MOVW     R3,#+2250
        MOVS     R2,#+200
        MOVS     R1,#+1
        MOVS     R0,#+1
          CFI FunCall ftm_pwm_init
        BL       ftm_pwm_init
//  185     KEY_init();
          CFI FunCall KEY_init
        BL       KEY_init
//  186     OLED_Init();              //OLED初始化
          CFI FunCall OLED_Init
        BL       OLED_Init
//  187     GUI_SetColor(1,0);        //此时是正常显示，若(0,1)则反色显示	
        MOVS     R1,#+0
        MOVS     R0,#+1
          CFI FunCall GUI_SetColor
        BL       GUI_SetColor
//  188     sprintf(Str_View,"OLED_OK");
        LDR.N    R1,??DataTable24_6
        LDR.N    R0,??DataTable24_7
          CFI FunCall sprintf
        BL       sprintf
//  189     GUI_PutString(0,0,Str_View);
        LDR.N    R2,??DataTable24_7
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_PutString
        BL       GUI_PutString
//  190     GUI_Exec();               //更新一次屏幕缓冲
          CFI FunCall GUI_Exec
        BL       GUI_Exec
//  191     
//  192     //uart_init(UART0,115200);   //串口0初始化
//  193 
//  194     EnableInterrupts;	//打开中断
        CPSIE    I
//  195 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock2
//  196 
//  197 /*************************************************************************
//  198 *	Parameters Init
//  199 *	author YU
//  200 *	Time 2016.11.26 
//  201 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function ParInit
        THUMB
//  202 void ParInit(int Way)
//  203 {
ParInit:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//  204    Data_Public_Get();
          CFI FunCall Data_Public_Get
        BL       Data_Public_Get
//  205    //按照公共部分的参数 初始化接下来的参数
//  206    
//  207    Data_Get();//更新数据
          CFI FunCall Data_Get
        BL       Data_Get
//  208 
//  209 	return ;
        POP      {R4,PC}          ;; return
//  210 }
          CFI EndBlock cfiBlock3
//  211 
//  212 

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function Data_Get
        THUMB
//  213 __ramfunc void Data_Get(void)
//  214 {
Data_Get:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  215            Flash_Read_Plan(Flash_Data_Plan,Plan_Num,-1);                  //读取Flash部分变量
        MOVS     R2,#-1
        LDR.N    R0,??DataTable1_1
        LDR      R1,[R0, #+0]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.N    R0,??DataTable1_2
          CFI FunCall Flash_Read_Plan
        BL       Flash_Read_Plan
//  216            
//  217 		   PID_ANGLE.P = Flash_Data_Plan[0]*0.1;                          //直立P
        LDR.N    R0,??DataTable1_2
        LDR      R0,[R0, #+0]
          CFI FunCall __aeabi_ui2d
        BL       __aeabi_ui2d
        LDR.N    R2,??DataTable1_3  ;; 0x9999999a
        LDR.N    R3,??DataTable1_4  ;; 0x3fb99999
          CFI FunCall __aeabi_dmul
        BL       __aeabi_dmul
          CFI FunCall __aeabi_d2f
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable1_5
        STR      R0,[R1, #+0]
//  218 		   PID_ANGLE.D = Flash_Data_Plan[1]*0.01;                         //直立D
        LDR.N    R0,??DataTable1_2
        LDR      R0,[R0, #+4]
          CFI FunCall __aeabi_ui2d
        BL       __aeabi_ui2d
        LDR.N    R2,??DataTable1_6  ;; 0x47ae147b
        LDR.N    R3,??DataTable1_7  ;; 0x3f847ae1
          CFI FunCall __aeabi_dmul
        BL       __aeabi_dmul
          CFI FunCall __aeabi_d2f
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable1_5
        STR      R0,[R1, #+16]
//  219                                                                           
//  220            PID_TURN.P  = Flash_Data_Plan[2];                              //转弯P
        LDR.N    R0,??DataTable1_2
        LDR      R0,[R0, #+8]
          CFI FunCall __aeabi_ui2f
        BL       __aeabi_ui2f
        LDR.N    R1,??DataTable1_8
        STR      R0,[R1, #+0]
//  221            PID_TURN.I  = Flash_Data_Plan[3];                              //中线补偿
        LDR.N    R0,??DataTable1_2
        LDR      R0,[R0, #+12]
          CFI FunCall __aeabi_ui2f
        BL       __aeabi_ui2f
        LDR.N    R1,??DataTable1_8
        STR      R0,[R1, #+8]
//  222            PID_TURN.D  = Flash_Data_Plan[4];                              //转弯D
        LDR.N    R0,??DataTable1_2
        LDR      R0,[R0, #+16]
          CFI FunCall __aeabi_ui2f
        BL       __aeabi_ui2f
        LDR.N    R1,??DataTable1_8
        STR      R0,[R1, #+16]
//  223                                                                           
//  224            PID_SPEED.P = Flash_Data_Plan[5]*0.1;                          //速度P
        LDR.N    R0,??DataTable1_2
        LDR      R0,[R0, #+20]
          CFI FunCall __aeabi_ui2d
        BL       __aeabi_ui2d
        LDR.N    R2,??DataTable1_3  ;; 0x9999999a
        LDR.N    R3,??DataTable1_4  ;; 0x3fb99999
          CFI FunCall __aeabi_dmul
        BL       __aeabi_dmul
          CFI FunCall __aeabi_d2f
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable1_9
        STR      R0,[R1, #+0]
//  225            PID_SPEED.I = Flash_Data_Plan[6]*0.1;                              //速度I
        LDR.N    R0,??DataTable1_2
        LDR      R0,[R0, #+24]
          CFI FunCall __aeabi_ui2d
        BL       __aeabi_ui2d
        LDR.N    R2,??DataTable1_3  ;; 0x9999999a
        LDR.N    R3,??DataTable1_4  ;; 0x3fb99999
          CFI FunCall __aeabi_dmul
        BL       __aeabi_dmul
          CFI FunCall __aeabi_d2f
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable1_9
        STR      R0,[R1, #+8]
//  226            SetSpeed    = Flash_Data_Plan[7];                              //设定的速度(高速)
        LDR.N    R0,??DataTable1_2
        LDR      R0,[R0, #+28]
        LDR.N    R1,??DataTable1_10
        STR      R0,[R1, #+0]
//  227                                                                        
//  228            SpeedMini   = Flash_Data_Plan[8];                              //设定的中速
        LDR.N    R0,??DataTable1_2
        LDR      R0,[R0, #+32]
        LDR.N    R1,??DataTable1_11
        STR      R0,[R1, #+0]
//  229            SpeedMid    = Flash_Data_Plan[9];                              //设定的低速
        LDR.N    R0,??DataTable1_2
        LDR      R0,[R0, #+36]
        LDR.N    R1,??DataTable1_12
        STR      R0,[R1, #+0]
//  230            
//  231            QianZhan    = Flash_Data_Plan[10]>50?50:Flash_Data_Plan[10];  //摄像头提取前瞻
        LDR.N    R0,??DataTable1_2
        LDR      R0,[R0, #+40]
        CMP      R0,#+51
        BCC.N    ??Data_Get_0
        MOVS     R0,#+50
        LDR.N    R1,??DataTable1_13
        STRB     R0,[R1, #+0]
        B.N      ??Data_Get_1
??Data_Get_0:
        LDR.N    R0,??DataTable1_2
        LDR      R0,[R0, #+40]
        LDR.N    R1,??DataTable1_13
        STRB     R0,[R1, #+0]
//  232            ShiZiFind   = Flash_Data_Plan[11];                            //十字和环路识别前瞻
??Data_Get_1:
        LDR.N    R0,??DataTable1_2
        LDR      R0,[R0, #+44]
        LDR.N    R1,??DataTable1_14
        STR      R0,[R1, #+0]
//  233            
//  234            Seagull_Num = Flash_Data_Plan[12]; 
        LDR.N    R0,??DataTable1_2
        LDR      R0,[R0, #+48]
        LDR.N    R1,??DataTable1_15
        STR      R0,[R1, #+0]
//  235            
//  236            HowMuch_Ring_Finds= Flash_Data_Plan[13];                      //识别多少次环路算真环路
        LDR.N    R0,??DataTable1_2
        LDR      R0,[R0, #+52]
        LDR.N    R1,??DataTable1_16
        STR      R0,[R1, #+0]
//  237            How_Much_To_Find_Ring = Flash_Data_Plan[14];                  //海鸥阈值
        LDR.N    R0,??DataTable1_2
        LDR      R0,[R0, #+56]
        LDR.N    R1,??DataTable1_17
        STR      R0,[R1, #+0]
//  238            
//  239            Forward_Safe_Angle  = Flash_Data_Plan[15];                    //前保护角度限值
        LDR.N    R0,??DataTable1_2
        LDR      R0,[R0, #+60]
        LDR.N    R1,??DataTable1_18
        STR      R0,[R1, #+0]
//  240            Backward_Safe_Angle = Flash_Data_Plan[16] ;                   //后保护角度限值
        LDR.N    R0,??DataTable1_2
        LDR      R0,[R0, #+64]
        LDR.N    R1,??DataTable1_19
        STR      R0,[R1, #+0]
//  241            
//  242 
//  243 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock4

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable1:
        DC32     0xe000e100

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable1_1:
        DC32     Plan_Num

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable1_2:
        DC32     Flash_Data_Plan

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable1_3:
        DC32     0x9999999a

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable1_4:
        DC32     0x3fb99999

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable1_5:
        DC32     PID_ANGLE

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable1_6:
        DC32     0x47ae147b

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable1_7:
        DC32     0x3f847ae1

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable1_8:
        DC32     PID_TURN

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable1_9:
        DC32     PID_SPEED

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable1_10:
        DC32     SetSpeed

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable1_11:
        DC32     SpeedMini

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable1_12:
        DC32     SpeedMid

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable1_13:
        DC32     QianZhan

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable1_14:
        DC32     ShiZiFind

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable1_15:
        DC32     Seagull_Num

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable1_16:
        DC32     HowMuch_Ring_Finds

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable1_17:
        DC32     How_Much_To_Find_Ring

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable1_18:
        DC32     Forward_Safe_Angle

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable1_19:
        DC32     Backward_Safe_Angle
//  244 
//  245 //公共变量更新

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function Data_Public_Get
        THUMB
//  246 void Data_Public_Get(void)
//  247 {
Data_Public_Get:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  248    Flash_Read_Plan(Flash_Data_Public,0,-1);         //读取Flash公共部分变量
        MOVS     R2,#-1
        MOVS     R1,#+0
        LDR.N    R0,??DataTable24_8
          CFI FunCall Flash_Read_Plan
        BL       Flash_Read_Plan
//  249 
//  250    //公共部分第0位 初始方案号码
//  251    Plan_Num=Flash_Data_Public[28];                  //获取当前的方案号
        LDR.N    R0,??DataTable24_8
        LDR      R0,[R0, #+112]
        LDR.N    R1,??DataTable24_9
        STR      R0,[R1, #+0]
//  252    Plan_Num=Plan_Num<1?1:Plan_Num>6?6:Plan_Num;
        LDR.N    R0,??DataTable24_9
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Data_Public_Get_0
        MOVS     R0,#+1
        LDR.N    R1,??DataTable24_9
        STR      R0,[R1, #+0]
        B.N      ??Data_Public_Get_1
??Data_Public_Get_0:
        LDR.N    R0,??DataTable24_9
        LDR      R0,[R0, #+0]
        CMP      R0,#+7
        BCC.N    ??Data_Public_Get_2
        MOVS     R0,#+6
        LDR.N    R1,??DataTable24_9
        STR      R0,[R1, #+0]
        B.N      ??Data_Public_Get_1
??Data_Public_Get_2:
        LDR.N    R0,??DataTable24_9
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable24_9
        STR      R0,[R1, #+0]
//  253    Flash_Data_Public[28]=Plan_Num;
??Data_Public_Get_1:
        LDR.N    R0,??DataTable24_9
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable24_8
        STR      R0,[R1, #+112]
//  254    
//  255    //公共部分第一位 debug开关选择
//  256    Debug_Button_V=Flash_Data_Public[29]>65530?0:Flash_Data_Public[29];            //更新整体调试信息
        LDR.N    R0,??DataTable24_8
        LDR      R0,[R0, #+116]
        MOVW     R1,#+65531
        CMP      R0,R1
        BCC.N    ??Data_Public_Get_3
        MOVS     R0,#+0
        LDR.N    R1,??DataTable24_10
        STR      R0,[R1, #+0]
        B.N      ??Data_Public_Get_4
??Data_Public_Get_3:
        LDR.N    R0,??DataTable24_8
        LDR      R0,[R0, #+116]
        LDR.N    R1,??DataTable24_10
        STR      R0,[R1, #+0]
//  257    
//  258    Debug_Button_Led      =(Debug_Button_V>> 0)&0x01;       //Led_灯开关
??Data_Public_Get_4:
        LDR.N    R0,??DataTable24_10
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0x1
        LDR.N    R1,??DataTable24_11
        STRB     R0,[R1, #+0]
//  259    //Debug_Button_KEY_BEEP =(Debug_Button_V>> 1)&0x01;       //按键声音开关
//  260    Debug_Bluetooth       =(Debug_Button_V>> 2)&0x01;       //蓝牙调试开关
        LDR.N    R0,??DataTable24_10
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+2,#+1
        LDR.N    R1,??DataTable24_12
        STRB     R0,[R1, #+0]
//  261    Debug_Protect         =(Debug_Button_V>> 3)&0x01;       //车体防止其他人乱动开关
        LDR.N    R0,??DataTable24_10
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+3,#+1
        LDR.N    R1,??DataTable24_13
        STRB     R0,[R1, #+0]
//  262    Debug_CarAngPrt       =(Debug_Button_V>> 4)&0x01;
        LDR.N    R0,??DataTable24_10
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+4,#+1
        LDR.N    R1,??DataTable24_14
        STRB     R0,[R1, #+0]
//  263    Debug_Button_WhatisBeep =(Debug_Button_V>> 5)&0x01;     //啥玩意Beep
        LDR.N    R0,??DataTable24_10
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+5,#+1
        LDR.N    R1,??DataTable24_15
        STRB     R0,[R1, #+0]
//  264 
//  265    //公共部分第二位 第三位 陀螺仪加速度计
//  266 
//  267    //anglenum =Flash_Data_Public[0];                  //陀螺仪值
//  268    angular  =Flash_Data_Public[1];                  //加速度计值
        LDR.N    R0,??DataTable24_8
        LDR      R0,[R0, #+4]
        LDR.N    R1,??DataTable24_16
        STR      R0,[R1, #+0]
//  269    
//  270 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock5
//  271 //公共变量保存到Flash

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function Data_Public_Save
        THUMB
//  272 void Data_Public_Save(void)
//  273 {
Data_Public_Save:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  274    //Flash_Read_Plan(Flash_Data_Public,0,-1);//读取Flash公共部分变量
//  275    //公共部分第0位 初始方案号码
//  276    Flash_Data_Public[28]=Plan_Num;//
        LDR.N    R0,??DataTable24_9
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable24_8
        STR      R0,[R1, #+112]
//  277    
//  278    
//  279    //公共部分第一位 debug开关选择
//  280    Flash_Data_Public[29]=Debug_Button_V;  //调试开关
        LDR.N    R0,??DataTable24_10
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable24_8
        STR      R0,[R1, #+116]
//  281    
//  282    Debug_Button_Led      =(Debug_Button_V>> 0)&0x01;       //Led_灯开关
        LDR.N    R0,??DataTable24_10
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0x1
        LDR.N    R1,??DataTable24_11
        STRB     R0,[R1, #+0]
//  283    //Debug_Button_KEY_BEEP =(Debug_Button_V>> 1)&0x01;       //按键声音开关
//  284    Debug_Bluetooth       =(Debug_Button_V>> 2)&0x01;       //蓝牙调试开关
        LDR.N    R0,??DataTable24_10
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+2,#+1
        LDR.N    R1,??DataTable24_12
        STRB     R0,[R1, #+0]
//  285    Debug_Protect         =(Debug_Button_V>> 3)&0x01;       //车体防止其他人乱动开关
        LDR.N    R0,??DataTable24_10
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+3,#+1
        LDR.N    R1,??DataTable24_13
        STRB     R0,[R1, #+0]
//  286    Debug_CarAngPrt       =(Debug_Button_V>> 4)&0x01;
        LDR.N    R0,??DataTable24_10
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+4,#+1
        LDR.N    R1,??DataTable24_14
        STRB     R0,[R1, #+0]
//  287    
//  288    Debug_Button_WhatisBeep =(Debug_Button_V>> 5)&0x01;     //啥玩意Beep
        LDR.N    R0,??DataTable24_10
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+5,#+1
        LDR.N    R1,??DataTable24_15
        STRB     R0,[R1, #+0]
//  289    //公共部分第二位 第三位 陀螺仪加速度计
//  290    
//  291    Flash_Data_Public[0]=anglenum ;
        LDR.N    R0,??DataTable24_17
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable24_8
        STR      R0,[R1, #+0]
//  292    Flash_Data_Public[1]=angular  ;
        LDR.N    R0,??DataTable24_16
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable24_8
        STR      R0,[R1, #+4]
//  293    
//  294    
//  295    Flash_Write_Pub(Flash_Data_Public);
        LDR.N    R0,??DataTable24_8
          CFI FunCall Flash_Write_Pub
        BL       Flash_Write_Pub
//  296 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24:
        DC32     0xe000ed18

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_1:
        DC32     0xe000e400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_2:
        DC32     PIT0_IRQHandler

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_3:
        DC32     PIT1_IRQHandler

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_4:
        DC32     PIT3_IRQHandler

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_5:
        DC32     bus_clk_khz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_6:
        DC32     ?_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_7:
        DC32     Str_View

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_8:
        DC32     Flash_Data_Public

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_9:
        DC32     Plan_Num

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_10:
        DC32     Debug_Button_V

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_11:
        DC32     Debug_Button_Led

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_12:
        DC32     Debug_Bluetooth

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_13:
        DC32     Debug_Protect

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_14:
        DC32     Debug_CarAngPrt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_15:
        DC32     Debug_Button_WhatisBeep

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_16:
        DC32     angular

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_17:
        DC32     anglenum
//  297 
//  298 
//  299 /*************************************************************************
//  300 *	author YU
//  301 *	Time 2016.11.26 
//  302 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function All_Init
        THUMB
//  303 void All_Init(int Way)
//  304 {
All_Init:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//  305 	HardwareInit();	//硬件初始化
          CFI FunCall HardwareInit
        BL       HardwareInit
//  306 	ParInit(Way);	//参数初始化
        MOVS     R0,R4
          CFI FunCall ParInit
        BL       ParInit
//  307 	return ;
        POP      {R4,PC}          ;; return
//  308 }
          CFI EndBlock cfiBlock7

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_0:
        DC8 "OLED_OK"

        END
//  309 
//  310 
//  311 
// 
// 15 521 bytes in section .bss
//  1 049 bytes in section .data
//      8 bytes in section .rodata
//    652 bytes in section .text
//    350 bytes in section .textrw
// 
//  1 002 bytes of CODE  memory
//      8 bytes of CONST memory
// 16 570 bytes of DATA  memory
//
//Errors: none
//Warnings: 1
