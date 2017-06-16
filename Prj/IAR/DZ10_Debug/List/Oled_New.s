///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      16/Jun/2017  18:57:10
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\@@@@@@@\Car\Drivers\OLED_NEW\Oled_New.c
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EW19BB.tmp
//        (D:\@@@@@@@\Car\Drivers\OLED_NEW\Oled_New.c -D DEBUG -D
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
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\Oled_New.s
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

        EXTERN gpio_init

        PUBLIC Draw_BMP
        PUBLIC F6x8
        PUBLIC OLED_Clear
        PUBLIC OLED_DLY_ms
        PUBLIC OLED_Display_Off
        PUBLIC OLED_Display_On
        PUBLIC OLED_DrawPoint
        PUBLIC OLED_Fill
        PUBLIC OLED_Fill_OLD
        PUBLIC OLED_GRAM
        PUBLIC OLED_Init
        PUBLIC OLED_P6x8Char
        PUBLIC OLED_P6x8Str
        PUBLIC OLED_P6x8Str_Back
        PUBLIC OLED_PutPixel
        PUBLIC OLED_Refresh_Gram
        PUBLIC OLED_Set_Pos
        PUBLIC OLED_WR_Byte
        PUBLIC OLED_WrCmd
        PUBLIC OLED_WrDat
        
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
        
// D:\@@@@@@@\Car\Drivers\OLED_NEW\Oled_New.c
//    1 
//    2 #include "All_Init.h"
//    3 #include "oled_new.h"
//    4 #include "stdlib.h"	 
//    5 //#include "timer.h"
//    6 #include "common.h"
//    7 
//    8 
//    9 //////////////////////////////////////////////////////////////////////////////////	 
//   10 //本程序只供学习使用，未经作者许可，不得用于其它任何用途
//   11 //Mini STM32开发板
//   12 //SSD1306 OLED 驱动IC驱动代码
//   13 //驱动方式:8080并口/4线串口
//   14 //正点原子@ALIENTEK
//   15 //技术论坛:www.openedv.com
//   16 //修改日期:2010/6/3
//   17 //版本：V1.0
//   18 //版权所有，盗版必究。
//   19 //Copyright(C) 正点原子 2009-2019
//   20 //All rights reserved
//   21 ////////////////////////////////////////////////////////////////////////////////// 	  
//   22  
//   23 
//   24 
//   25 /********************************************
//   26 函数名称:OLED各显示函数
//   27 功能描述:
//   28 版本    :1.0
//   29 作者    :于文海移植
//   30 编译时间:2016/6/13
//   31 备注事项:
//   32 ********************************************/
//   33 
//   34 
//   35 //OLED的显存
//   36 //存放格式如下.
//   37 //[0]0 1 2 3 ... 127	
//   38 //[1]0 1 2 3 ... 127	
//   39 //[2]0 1 2 3 ... 127	
//   40 //[3]0 1 2 3 ... 127	
//   41 //[4]0 1 2 3 ... 127	
//   42 //[5]0 1 2 3 ... 127	
//   43 //[6]0 1 2 3 ... 127	
//   44 //[7]0 1 2 3 ... 127 		   

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   45 u8 OLED_GRAM[132][8];	 
OLED_GRAM:
        DS8 1056

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
//   46 const u8 F6x8[][6] =
F6x8:
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 47, 0, 0, 0, 0, 7, 0, 7, 0, 0, 20, 127
        DC8 20, 127, 20, 0, 36, 42, 127, 42, 18, 0, 98, 100, 8, 19, 35, 0, 54
        DC8 73, 85, 34, 80, 0, 0, 5, 3, 0, 0, 0, 0, 28, 34, 65, 0, 0, 0, 65, 34
        DC8 28, 0, 0, 20, 8, 62, 8, 20, 0, 8, 8, 62, 8, 8, 0, 0, 0, 160, 96, 0
        DC8 0, 8, 8, 8, 8, 8, 0, 0, 96, 96, 0, 0, 0, 32, 16, 8, 4, 2, 0, 62, 81
        DC8 73, 69, 62, 0, 0, 66, 127, 64, 0, 0, 66, 97, 81, 73, 70, 0, 33, 65
        DC8 69, 75, 49, 0, 24, 20, 18, 127, 16, 0, 39, 69, 69, 69, 57, 0, 60
        DC8 74, 73, 73, 48, 0, 1, 113, 9, 5, 3, 0, 54, 73, 73, 73, 54, 0, 6, 73
        DC8 73, 41, 30, 0, 0, 54, 54, 0, 0, 0, 0, 86, 54, 0, 0, 0, 8, 20, 34
        DC8 65, 0, 0, 20, 20, 20, 20, 20, 0, 0, 65, 34, 20, 8, 0, 2, 1, 81, 9
        DC8 6, 0, 50, 73, 89, 81, 62, 0, 124, 18, 17, 18, 124, 0, 127, 73, 73
        DC8 73, 54, 0, 62, 65, 65, 65, 34, 0, 127, 65, 65, 34, 28, 0, 127, 73
        DC8 73, 73, 65, 0, 127, 9, 9, 9, 1, 0, 62, 65, 73, 73, 122, 0, 127, 8
        DC8 8, 8, 127, 0, 0, 65, 127, 65, 0, 0, 32, 64, 65, 63, 1, 0, 127, 8
        DC8 20, 34, 65, 0, 127, 64, 64, 64, 64, 0, 127, 2, 12, 2, 127, 0, 127
        DC8 4, 8, 16, 127, 0, 62, 65, 65, 65, 62, 0, 127, 9, 9, 9, 6, 0, 62, 65
        DC8 81, 33, 94, 0, 127, 9, 25, 41, 70, 0, 70, 73, 73, 73, 49, 0, 1, 1
        DC8 127, 1, 1, 0, 63, 64, 64, 64, 63, 0, 31, 32, 64, 32, 31, 0, 63, 64
        DC8 56, 64, 63, 0, 99, 20, 8, 20, 99, 0, 7, 8, 112, 8, 7, 0, 97, 81, 73
        DC8 69, 67, 0, 0, 127, 65, 65, 0, 0, 85, 42, 85, 42, 85, 0, 0, 65, 65
        DC8 127, 0, 0, 4, 2, 1, 2, 4, 0, 64, 64, 64, 64, 64, 0, 0, 1, 2, 4, 0
        DC8 0, 32, 84, 84, 84, 120, 0, 127, 72, 68, 68, 56, 0, 56, 68, 68, 68
        DC8 32, 0, 56, 68, 68, 72, 127, 0, 56, 84, 84, 84, 24, 0, 8, 126, 9, 1
        DC8 2, 0, 24, 164, 164, 164, 124, 0, 127, 8, 4, 4, 120, 0, 0, 68, 125
        DC8 64, 0, 0, 64, 128, 132, 125, 0, 0, 127, 16, 40, 68, 0, 0, 0, 65
        DC8 127, 64, 0, 0, 124, 4, 24, 4, 120, 0, 124, 8, 4, 4, 120, 0, 56, 68
        DC8 68, 68, 56, 0, 252, 36, 36, 36, 24, 0, 24, 36, 36, 24, 252, 0, 124
        DC8 8, 4, 4, 8, 0, 72, 84, 84, 84, 32, 0, 4, 63, 68, 64, 32, 0, 60, 64
        DC8 64, 32, 124, 0, 28, 32, 64, 32, 28, 0, 60, 64, 48, 64, 60, 0, 68
        DC8 40, 16, 40, 68, 0, 28, 160, 160, 160, 124, 0, 68, 100, 84, 76, 68
        DC8 20, 20, 20, 20, 20, 20
//   47 {
//   48     { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 },   // sp
//   49     { 0x00, 0x00, 0x00, 0x2f, 0x00, 0x00 },   // !
//   50     { 0x00, 0x00, 0x07, 0x00, 0x07, 0x00 },   // "
//   51     { 0x00, 0x14, 0x7f, 0x14, 0x7f, 0x14 },   // #
//   52     { 0x00, 0x24, 0x2a, 0x7f, 0x2a, 0x12 },   // $
//   53     { 0x00, 0x62, 0x64, 0x08, 0x13, 0x23 },   // %
//   54     { 0x00, 0x36, 0x49, 0x55, 0x22, 0x50 },   // &
//   55     { 0x00, 0x00, 0x05, 0x03, 0x00, 0x00 },   // '
//   56     { 0x00, 0x00, 0x1c, 0x22, 0x41, 0x00 },   // (
//   57     { 0x00, 0x00, 0x41, 0x22, 0x1c, 0x00 },   // )
//   58     { 0x00, 0x14, 0x08, 0x3E, 0x08, 0x14 },   // *
//   59     { 0x00, 0x08, 0x08, 0x3E, 0x08, 0x08 },   // +
//   60     { 0x00, 0x00, 0x00, 0xA0, 0x60, 0x00 },   // ,
//   61     { 0x00, 0x08, 0x08, 0x08, 0x08, 0x08 },   // -
//   62     { 0x00, 0x00, 0x60, 0x60, 0x00, 0x00 },   // .
//   63     { 0x00, 0x20, 0x10, 0x08, 0x04, 0x02 },   // /
//   64     { 0x00, 0x3E, 0x51, 0x49, 0x45, 0x3E },   // 0
//   65     { 0x00, 0x00, 0x42, 0x7F, 0x40, 0x00 },   // 1
//   66     { 0x00, 0x42, 0x61, 0x51, 0x49, 0x46 },   // 2
//   67     { 0x00, 0x21, 0x41, 0x45, 0x4B, 0x31 },   // 3
//   68     { 0x00, 0x18, 0x14, 0x12, 0x7F, 0x10 },   // 4
//   69     { 0x00, 0x27, 0x45, 0x45, 0x45, 0x39 },   // 5
//   70     { 0x00, 0x3C, 0x4A, 0x49, 0x49, 0x30 },   // 6
//   71     { 0x00, 0x01, 0x71, 0x09, 0x05, 0x03 },   // 7
//   72     { 0x00, 0x36, 0x49, 0x49, 0x49, 0x36 },   // 8
//   73     { 0x00, 0x06, 0x49, 0x49, 0x29, 0x1E },   // 9
//   74     { 0x00, 0x00, 0x36, 0x36, 0x00, 0x00 },   // :
//   75     { 0x00, 0x00, 0x56, 0x36, 0x00, 0x00 },   // ;
//   76     { 0x00, 0x08, 0x14, 0x22, 0x41, 0x00 },   // <
//   77     { 0x00, 0x14, 0x14, 0x14, 0x14, 0x14 },   // =
//   78     { 0x00, 0x00, 0x41, 0x22, 0x14, 0x08 },   // >
//   79     { 0x00, 0x02, 0x01, 0x51, 0x09, 0x06 },   // ?
//   80     { 0x00, 0x32, 0x49, 0x59, 0x51, 0x3E },   // @
//   81     { 0x00, 0x7C, 0x12, 0x11, 0x12, 0x7C },   // A
//   82     { 0x00, 0x7F, 0x49, 0x49, 0x49, 0x36 },   // B
//   83     { 0x00, 0x3E, 0x41, 0x41, 0x41, 0x22 },   // C
//   84     { 0x00, 0x7F, 0x41, 0x41, 0x22, 0x1C },   // D
//   85     { 0x00, 0x7F, 0x49, 0x49, 0x49, 0x41 },   // E
//   86     { 0x00, 0x7F, 0x09, 0x09, 0x09, 0x01 },   // F
//   87     { 0x00, 0x3E, 0x41, 0x49, 0x49, 0x7A },   // G
//   88     { 0x00, 0x7F, 0x08, 0x08, 0x08, 0x7F },   // H
//   89     { 0x00, 0x00, 0x41, 0x7F, 0x41, 0x00 },   // I
//   90     { 0x00, 0x20, 0x40, 0x41, 0x3F, 0x01 },   // J
//   91     { 0x00, 0x7F, 0x08, 0x14, 0x22, 0x41 },   // K
//   92     { 0x00, 0x7F, 0x40, 0x40, 0x40, 0x40 },   // L
//   93     { 0x00, 0x7F, 0x02, 0x0C, 0x02, 0x7F },   // M
//   94     { 0x00, 0x7F, 0x04, 0x08, 0x10, 0x7F },   // N
//   95     { 0x00, 0x3E, 0x41, 0x41, 0x41, 0x3E },   // O
//   96     { 0x00, 0x7F, 0x09, 0x09, 0x09, 0x06 },   // P
//   97     { 0x00, 0x3E, 0x41, 0x51, 0x21, 0x5E },   // Q
//   98     { 0x00, 0x7F, 0x09, 0x19, 0x29, 0x46 },   // R
//   99     { 0x00, 0x46, 0x49, 0x49, 0x49, 0x31 },   // S
//  100     { 0x00, 0x01, 0x01, 0x7F, 0x01, 0x01 },   // T
//  101     { 0x00, 0x3F, 0x40, 0x40, 0x40, 0x3F },   // U
//  102     { 0x00, 0x1F, 0x20, 0x40, 0x20, 0x1F },   // V
//  103     { 0x00, 0x3F, 0x40, 0x38, 0x40, 0x3F },   // W
//  104     { 0x00, 0x63, 0x14, 0x08, 0x14, 0x63 },   // X
//  105     { 0x00, 0x07, 0x08, 0x70, 0x08, 0x07 },   // Y
//  106     { 0x00, 0x61, 0x51, 0x49, 0x45, 0x43 },   // Z
//  107     { 0x00, 0x00, 0x7F, 0x41, 0x41, 0x00 },   // [
//  108     { 0x00, 0x55, 0x2A, 0x55, 0x2A, 0x55 },   // 55
//  109     { 0x00, 0x00, 0x41, 0x41, 0x7F, 0x00 },   // ]
//  110     { 0x00, 0x04, 0x02, 0x01, 0x02, 0x04 },   // ^
//  111     { 0x00, 0x40, 0x40, 0x40, 0x40, 0x40 },   // _
//  112     { 0x00, 0x00, 0x01, 0x02, 0x04, 0x00 },   // '
//  113     { 0x00, 0x20, 0x54, 0x54, 0x54, 0x78 },   // a
//  114     { 0x00, 0x7F, 0x48, 0x44, 0x44, 0x38 },   // b
//  115     { 0x00, 0x38, 0x44, 0x44, 0x44, 0x20 },   // c
//  116     { 0x00, 0x38, 0x44, 0x44, 0x48, 0x7F },   // d
//  117     { 0x00, 0x38, 0x54, 0x54, 0x54, 0x18 },   // e
//  118     { 0x00, 0x08, 0x7E, 0x09, 0x01, 0x02 },   // f
//  119     { 0x00, 0x18, 0xA4, 0xA4, 0xA4, 0x7C },   // g
//  120     { 0x00, 0x7F, 0x08, 0x04, 0x04, 0x78 },   // h
//  121     { 0x00, 0x00, 0x44, 0x7D, 0x40, 0x00 },   // i
//  122     { 0x00, 0x40, 0x80, 0x84, 0x7D, 0x00 },   // j
//  123     { 0x00, 0x7F, 0x10, 0x28, 0x44, 0x00 },   // k
//  124     { 0x00, 0x00, 0x41, 0x7F, 0x40, 0x00 },   // l
//  125     { 0x00, 0x7C, 0x04, 0x18, 0x04, 0x78 },   // m
//  126     { 0x00, 0x7C, 0x08, 0x04, 0x04, 0x78 },   // n
//  127     { 0x00, 0x38, 0x44, 0x44, 0x44, 0x38 },   // o
//  128     { 0x00, 0xFC, 0x24, 0x24, 0x24, 0x18 },   // p
//  129     { 0x00, 0x18, 0x24, 0x24, 0x18, 0xFC },   // q
//  130     { 0x00, 0x7C, 0x08, 0x04, 0x04, 0x08 },   // r
//  131     { 0x00, 0x48, 0x54, 0x54, 0x54, 0x20 },   // s
//  132     { 0x00, 0x04, 0x3F, 0x44, 0x40, 0x20 },   // t
//  133     { 0x00, 0x3C, 0x40, 0x40, 0x20, 0x7C },   // u
//  134     { 0x00, 0x1C, 0x20, 0x40, 0x20, 0x1C },   // v
//  135     { 0x00, 0x3C, 0x40, 0x30, 0x40, 0x3C },   // w
//  136     { 0x00, 0x44, 0x28, 0x10, 0x28, 0x44 },   // x
//  137     { 0x00, 0x1C, 0xA0, 0xA0, 0xA0, 0x7C },   // y
//  138     { 0x00, 0x44, 0x64, 0x54, 0x4C, 0x44 },   // z
//  139     { 0x14, 0x14, 0x14, 0x14, 0x14, 0x14 }    // horiz lines
//  140 };
//  141 
//  142 
//  143 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function OLED_DLY_ms
          CFI NoCalls
        THUMB
//  144 void OLED_DLY_ms(u16 ms)
//  145 {
//  146   u16 a;
//  147   while(ms)
OLED_DLY_ms:
??OLED_DLY_ms_0:
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+0
        BEQ.N    ??OLED_DLY_ms_1
//  148   {
//  149     a=16000;
        MOV      R1,#+16000
        MOVS     R2,R1
//  150     while(a--);
??OLED_DLY_ms_2:
        MOVS     R1,R2
        SUBS     R2,R1,#+1
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+0
        BNE.N    ??OLED_DLY_ms_2
//  151     ms--;
        SUBS     R0,R0,#+1
        B.N      ??OLED_DLY_ms_0
//  152   }
//  153   return;
??OLED_DLY_ms_1:
        BX       LR               ;; return
//  154 }
          CFI EndBlock cfiBlock0
//  155 
//  156 //void OLED_Port_Init(void)
//  157 //{
//  158 //	LPC_SYSCON->SYSAHBCLKCTRL|=(1<<6);//使能时钟
//  159 //	//OLED_CS_LOW();
//  160 //	LPC_GPIO2->DIR|=(1<<0);
//  161 //	LPC_GPIO2->DIR|=(1<<1);
//  162 //	LPC_GPIO2->DIR|=(1<<2);	
//  163 //	LPC_GPIO2->DIR|=(1<<3);	
//  164 //	
//  165 //	
//  166 //	OLED_CS_HIGH();
//  167 //	OLDE_SCL_HIGH();//LPC_GPIO2->DATA|=(1<<1);//OLED_SCL=1  //
//  168 //	OLED_DC_HIGH();//LPC_GPIO2->DATA|=(1<<3);//OLED_DC=1
//  169 //	OLED_SDA_HIGH();//LPC_GPIO2->DATA|=(1<<2);//OLED_SDA=1
//  170 //    
//  171 
//  172 //	OLDE_SCL_HIGH();;//LPC_GPIO2->DATA|=(1<<1);//OLED_SCL=1	   //OLED_SCL=1;
//  173 //	OLED_CS_LOW();
//  174 
//  175 //}
//  176 //更新显存到LCD		 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function OLED_Refresh_Gram
        THUMB
//  177 void OLED_Refresh_Gram(void)
//  178 {
OLED_Refresh_Gram:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
//  179 	u8 i,n;		    
//  180 	for(i=0;i<8;i++)  
        MOVS     R0,#+0
        MOVS     R4,R0
??OLED_Refresh_Gram_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+8
        BGE.N    ??OLED_Refresh_Gram_1
//  181 	{  
//  182 		OLED_WR_Byte (0xb0+i,OLED_CMD);    //设置页地址（0~7）
        MOVS     R1,#+0
        SUBS     R0,R4,#+80
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall OLED_WR_Byte
        BL       OLED_WR_Byte
//  183 		OLED_WR_Byte (0x00,OLED_CMD);      //设置显示位置—列低地址
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall OLED_WR_Byte
        BL       OLED_WR_Byte
//  184 		OLED_WR_Byte (0x10,OLED_CMD);      //设置显示位置—列高地址   
        MOVS     R1,#+0
        MOVS     R0,#+16
          CFI FunCall OLED_WR_Byte
        BL       OLED_WR_Byte
//  185 		for(n=0;n<128;n++)OLED_WR_Byte(OLED_GRAM[n][i],OLED_DATA); 
        MOVS     R0,#+0
        MOVS     R5,R0
??OLED_Refresh_Gram_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+128
        BGE.N    ??OLED_Refresh_Gram_3
        MOVS     R1,#+1
        LDR.W    R0,??DataTable10
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R0,R0,R5, LSL #+3
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDRB     R0,[R0, R4]
          CFI FunCall OLED_WR_Byte
        BL       OLED_WR_Byte
        ADDS     R5,R5,#+1
        B.N      ??OLED_Refresh_Gram_2
//  186 	}   
??OLED_Refresh_Gram_3:
        ADDS     R4,R4,#+1
        B.N      ??OLED_Refresh_Gram_0
//  187 }
??OLED_Refresh_Gram_1:
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock1
//  188 
//  189 
//  190 //向SSD1306写入一个字节。
//  191 //dat:要写入的数据/命令
//  192 //cmd:数据/命令标志 0,表示命令;1,表示数据;

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function OLED_WR_Byte
          CFI NoCalls
        THUMB
//  193 void OLED_WR_Byte(u8 dat,u8 cmd)
//  194 {	
OLED_WR_Byte:
        PUSH     {R4}
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+4
        MOVS     R2,R0
//  195 //	u8 i;			  
//  196 //	//OLED_RS=cmd; //写命令 
//  197 //	//OLED_CS=0;
//  198 //	OLED_CS_LOW();
//  199 //	
//  200 //	for(i=0;i<8;i++)
//  201 //	{			  
//  202 //		OLDE_SCL_HIGH();
//  203 //		if(dat&0x80)OLED_SDA_HIGH();
//  204 //		else OLED_SDA_LOW();;
//  205 //		OLDE_SCL_HIGH();
//  206 //		dat<<=1;   
//  207 //	}				 
//  208 //	OLED_CS_HIGH();		
//  209 	
//  210 	u8 i=8;
        MOVS     R3,#+8
//  211 	
//  212 	if (cmd==0)//写数据
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BNE.N    ??OLED_WR_Byte_0
//  213 	{
//  214 		OLED_DC_LOW();
        MOVS     R0,#+0
        LDR.W    R4,??DataTable10_1  ;; 0x43fe2064
        STR      R0,[R4, #+0]
//  215 		OLED_SCL_LOW();
        MOVS     R0,#+0
        LDR.W    R4,??DataTable10_2  ;; 0x43fe2070
        STR      R0,[R4, #+0]
//  216 		while(i--)
??OLED_WR_Byte_1:
        MOVS     R0,R3
        SUBS     R3,R0,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??OLED_WR_Byte_2
//  217 	  {
//  218 		if(dat&0x80)
        LSLS     R0,R2,#+24
        BPL.N    ??OLED_WR_Byte_3
//  219 		{
//  220 			OLED_SDA_HIGH();//LPC_GPIO2->DATA|=(1<<2);	//OLED_SDA=1		//OLED_SDA=1;
        MOVS     R0,#+1
        LDR.W    R4,??DataTable10_3  ;; 0x43fe206c
        STR      R0,[R4, #+0]
        B.N      ??OLED_WR_Byte_4
//  221 		}
//  222 		else
//  223 		{
//  224 			OLED_SDA_LOW();//LPC_GPIO2->DATA&=~(1<<2);	//OLED_SDA=0    //OLED_SDA=0;
??OLED_WR_Byte_3:
        MOVS     R0,#+0
        LDR.W    R4,??DataTable10_3  ;; 0x43fe206c
        STR      R0,[R4, #+0]
//  225 		}
//  226 		OLDE_SCL_HIGH();//LPC_GPIO2->DATA|=(1<<1);	//OLED_SCL=1	   //OLED_SCL=1;;
??OLED_WR_Byte_4:
        MOVS     R0,#+1
        LDR.W    R4,??DataTable10_2  ;; 0x43fe2070
        STR      R0,[R4, #+0]
//  227 
//  228 		OLED_SCL_LOW() ;//LPC_GPIO2->DATA&=~(1<<1);	//OLED_SCL=0   //OLED_SCL=0;;
        MOVS     R0,#+0
        LDR.W    R4,??DataTable10_2  ;; 0x43fe2070
        STR      R0,[R4, #+0]
//  229 		dat<<=1;;
        LSLS     R2,R2,#+1
        B.N      ??OLED_WR_Byte_1
//  230 	  }
//  231 	}
//  232 	else if(cmd)
??OLED_WR_Byte_0:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??OLED_WR_Byte_2
//  233 	{
//  234 		OLED_DC_HIGH();// LPC_GPIO2->DATA|=(1<<3);//OLED_DC=1		//  OLED_DC=1;
        MOVS     R0,#+1
        LDR.W    R4,??DataTable10_1  ;; 0x43fe2064
        STR      R0,[R4, #+0]
//  235 		OLED_SCL_LOW();//  LPC_GPIO2->DATA&=~(1<<1);//OLED_SCL=0     // OLED_SCL=0;
        MOVS     R0,#+0
        LDR.W    R4,??DataTable10_2  ;; 0x43fe2070
        STR      R0,[R4, #+0]
//  236 	
//  237 		while(i--)
??OLED_WR_Byte_5:
        MOVS     R0,R3
        SUBS     R3,R0,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??OLED_WR_Byte_2
//  238 		  {
//  239 			if(dat&0x80)
        LSLS     R0,R2,#+24
        BPL.N    ??OLED_WR_Byte_6
//  240 			{
//  241 			OLED_SDA_HIGH();//LPC_GPIO2->DATA|=(1<<2);//OLED_SDA=1		//OLED_SDA=1;
        MOVS     R0,#+1
        LDR.W    R4,??DataTable10_3  ;; 0x43fe206c
        STR      R0,[R4, #+0]
        B.N      ??OLED_WR_Byte_7
//  242 			}
//  243 			else
//  244 			{
//  245 			 OLED_SDA_LOW();//LPC_GPIO2->DATA&=~(1<<2);//OLED_SDA=0    //OLED_SDA=0;
??OLED_WR_Byte_6:
        MOVS     R0,#+0
        LDR.W    R4,??DataTable10_3  ;; 0x43fe206c
        STR      R0,[R4, #+0]
//  246 			}
//  247 			OLDE_SCL_HIGH();//LPC_GPIO2->DATA|=(1<<1);//OLED_SCL=1	   //OLED_SCL=1;
??OLED_WR_Byte_7:
        MOVS     R0,#+1
        LDR.W    R4,??DataTable10_2  ;; 0x43fe2070
        STR      R0,[R4, #+0]
//  248 			//_asm("nop");;
//  249 				//asm("nop");
//  250 			OLED_SCL_LOW();// LPC_GPIO2->DATA&=~(1<<1);//OLED_SCL=0   //OLED_SCL=0;;
        MOVS     R0,#+0
        LDR.W    R4,??DataTable10_2  ;; 0x43fe2070
        STR      R0,[R4, #+0]
//  251 			dat<<=1;
        LSLS     R2,R2,#+1
        B.N      ??OLED_WR_Byte_5
//  252 		  }
//  253 	}
//  254 } 
??OLED_WR_Byte_2:
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//  255 	  	  
//  256 //开启OLED显示    

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function OLED_Display_On
        THUMB
//  257 void OLED_Display_On(void)
//  258 {
OLED_Display_On:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  259 	OLED_WR_Byte(0X8D,OLED_CMD);  //SET DCDC命令
        MOVS     R1,#+0
        MOVS     R0,#+141
          CFI FunCall OLED_WR_Byte
        BL       OLED_WR_Byte
//  260 	OLED_WR_Byte(0X14,OLED_CMD);  //DCDC ON
        MOVS     R1,#+0
        MOVS     R0,#+20
          CFI FunCall OLED_WR_Byte
        BL       OLED_WR_Byte
//  261 	OLED_WR_Byte(0XAF,OLED_CMD);  //DISPLAY ON
        MOVS     R1,#+0
        MOVS     R0,#+175
          CFI FunCall OLED_WR_Byte
        BL       OLED_WR_Byte
//  262 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock3
//  263 //关闭OLED显示     

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function OLED_Display_Off
        THUMB
//  264 void OLED_Display_Off(void)
//  265 {
OLED_Display_Off:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  266 	OLED_WR_Byte(0X8D,OLED_CMD);  //SET DCDC命令
        MOVS     R1,#+0
        MOVS     R0,#+141
          CFI FunCall OLED_WR_Byte
        BL       OLED_WR_Byte
//  267 	OLED_WR_Byte(0X10,OLED_CMD);  //DCDC OFF
        MOVS     R1,#+0
        MOVS     R0,#+16
          CFI FunCall OLED_WR_Byte
        BL       OLED_WR_Byte
//  268 	OLED_WR_Byte(0XAE,OLED_CMD);  //DISPLAY OFF
        MOVS     R1,#+0
        MOVS     R0,#+174
          CFI FunCall OLED_WR_Byte
        BL       OLED_WR_Byte
//  269 }		   			 
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock4
//  270 //清屏函数,清完屏,整个屏幕是黑色的!和没点亮一样!!!	  

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function OLED_Clear
        THUMB
//  271 void OLED_Clear(void)  
//  272 {  
OLED_Clear:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
//  273 	u8 i,n;  
//  274 	for(i=0;i<8;i++)for(n=0;n<128;n++)OLED_GRAM[n][i]=0X00;  
        MOVS     R0,#+0
        MOVS     R4,R0
??OLED_Clear_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+8
        BGE.N    ??OLED_Clear_1
        MOVS     R0,#+0
        MOVS     R5,R0
??OLED_Clear_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+128
        BGE.N    ??OLED_Clear_3
        LDR.W    R0,??DataTable10
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R0,R0,R5, LSL #+3
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R1,#+0
        STRB     R1,[R0, R4]
        ADDS     R5,R5,#+1
        B.N      ??OLED_Clear_2
??OLED_Clear_3:
        ADDS     R4,R4,#+1
        B.N      ??OLED_Clear_0
//  275 	OLED_Refresh_Gram();//更新显示
??OLED_Clear_1:
          CFI FunCall OLED_Refresh_Gram
        BL       OLED_Refresh_Gram
//  276 }
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock5
//  277 //画点 
//  278 //x:0~127
//  279 //y:0~63
//  280 //t:1 填充 0,清空				   

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function OLED_DrawPoint
          CFI NoCalls
        THUMB
//  281 void OLED_DrawPoint(u8 x,u8 y,u8 t)
//  282 {
OLED_DrawPoint:
        PUSH     {R4-R7}
          CFI R7 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
//  283 	u8 pos,bx,temp=0;
        MOVS     R6,#+0
//  284 	if(x>127||y>63)return;//超出范围了.
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+128
        BGE.N    ??OLED_DrawPoint_0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+64
        BLT.N    ??OLED_DrawPoint_1
??OLED_DrawPoint_0:
        B.N      ??OLED_DrawPoint_2
//  285 	pos=7-y/8;
??OLED_DrawPoint_1:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R3,#+8
        SDIV     R3,R1,R3
        RSBS     R3,R3,#+7
        MOVS     R4,R3
//  286 	bx=y%8;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R3,#+8
        SDIV     R7,R1,R3
        MLS      R3,R3,R7,R1
        MOVS     R5,R3
//  287 	temp=1<<(7-bx);
        MOVS     R7,#+1
        RSBS     R3,R5,#+7
        LSLS     R7,R7,R3
        MOVS     R6,R7
//  288 	if(t)OLED_GRAM[x][pos]|=temp;
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BEQ.N    ??OLED_DrawPoint_3
        LDR.W    R3,??DataTable10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R3,R3,R0, LSL #+3
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R7,??DataTable10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R7,R7,R0, LSL #+3
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDRB     R7,[R7, R4]
        ORRS     R7,R6,R7
        STRB     R7,[R3, R4]
        B.N      ??OLED_DrawPoint_4
//  289 	else OLED_GRAM[x][pos]&=~temp;	    
??OLED_DrawPoint_3:
        LDR.W    R3,??DataTable10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R3,R3,R0, LSL #+3
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R7,??DataTable10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R7,R7,R0, LSL #+3
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDRB     R7,[R7, R4]
        BICS     R7,R7,R6
        STRB     R7,[R3, R4]
//  290 }
??OLED_DrawPoint_4:
??OLED_DrawPoint_2:
        POP      {R4-R7}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock6
//  291 
//  292 
//  293 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function OLED_WrCmd
          CFI NoCalls
        THUMB
//  294 void OLED_WrCmd(u8 cmd)
//  295 {
OLED_WrCmd:
        MOVS     R1,R0
//  296 	u8 i=8;
        MOVS     R2,#+8
//  297 	
//  298 	
//  299 	OLED_DC_LOW();//LPC_GPIO2->DATA&=~(1<<3);	//OLED_DC=0    OLED_DC=0;;
        MOVS     R0,#+0
        LDR.W    R3,??DataTable10_1  ;; 0x43fe2064
        STR      R0,[R3, #+0]
//  300     OLED_SCL_LOW();//LPC_GPIO2->DATA&=~(1<<1);	//OLED_SCL=0   OLED_SCL=0;;
        MOVS     R0,#+0
        LDR.W    R3,??DataTable10_2  ;; 0x43fe2070
        STR      R0,[R3, #+0]
//  301 	
//  302 	
//  303 	while(i--)
??OLED_WrCmd_0:
        MOVS     R0,R2
        SUBS     R2,R0,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??OLED_WrCmd_1
//  304 	  {
//  305 		if(cmd&0x80)
        LSLS     R0,R1,#+24
        BPL.N    ??OLED_WrCmd_2
//  306 		{
//  307 			OLED_SDA_HIGH();//LPC_GPIO2->DATA|=(1<<2);	//OLED_SDA=1		//OLED_SDA=1;
        MOVS     R0,#+1
        LDR.W    R3,??DataTable10_3  ;; 0x43fe206c
        STR      R0,[R3, #+0]
        B.N      ??OLED_WrCmd_3
//  308 		}
//  309 		else
//  310 		{
//  311 			OLED_SDA_LOW();//LPC_GPIO2->DATA&=~(1<<2);	//OLED_SDA=0    //OLED_SDA=0;
??OLED_WrCmd_2:
        MOVS     R0,#+0
        LDR.W    R3,??DataTable10_3  ;; 0x43fe206c
        STR      R0,[R3, #+0]
//  312 		}
//  313 		OLDE_SCL_HIGH();//LPC_GPIO2->DATA|=(1<<1);	//OLED_SCL=1	   //OLED_SCL=1;;
??OLED_WrCmd_3:
        MOVS     R0,#+1
        LDR.W    R3,??DataTable10_2  ;; 0x43fe2070
        STR      R0,[R3, #+0]
//  314 
//  315 		OLED_SCL_LOW() ;//LPC_GPIO2->DATA&=~(1<<1);	//OLED_SCL=0   //OLED_SCL=0;;
        MOVS     R0,#+0
        LDR.W    R3,??DataTable10_2  ;; 0x43fe2070
        STR      R0,[R3, #+0]
//  316 		cmd<<=1;;
        LSLS     R1,R1,#+1
        B.N      ??OLED_WrCmd_0
//  317 	  }
//  318 
//  319 }
??OLED_WrCmd_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock7
//  320 
//  321 
//  322 
//  323 //x1,y1,x2,y2 填充区域的对角坐标
//  324 //确保x1<=x2;y1<=y2 0<=x1<=127 0<=y1<=63	 	 
//  325 //dot:0,清空;1,填充	  

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function OLED_Fill
        THUMB
//  326 void OLED_Fill(u8 x1,u8 y1,u8 x2,u8 y2,u8 dot)  
//  327 {  
OLED_Fill:
        PUSH     {R4-R10,LR}
          CFI R14 Frame(CFA, -4)
          CFI R10 Frame(CFA, -8)
          CFI R9 Frame(CFA, -12)
          CFI R8 Frame(CFA, -16)
          CFI R7 Frame(CFA, -20)
          CFI R6 Frame(CFA, -24)
          CFI R5 Frame(CFA, -28)
          CFI R4 Frame(CFA, -32)
          CFI CFA R13+32
        MOVS     R5,R0
        MOVS     R6,R1
        MOVS     R7,R2
        MOV      R8,R3
        LDR      R4,[SP, #+32]
//  328 	u8 x,y;  
//  329 	for(x=x1;x<=x2;x++)
        MOV      R10,R5
??OLED_Fill_0:
        MOVS     R0,R7
        MOV      R1,R10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R0,R1
        BCC.N    ??OLED_Fill_1
//  330 	{
//  331 		for(y=y1;y<=y2;y++)OLED_DrawPoint(x,y,dot);
        MOV      R9,R6
??OLED_Fill_2:
        MOV      R0,R8
        MOV      R1,R9
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R0,R1
        BCC.N    ??OLED_Fill_3
        MOVS     R2,R4
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOV      R1,R9
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall OLED_DrawPoint
        BL       OLED_DrawPoint
        ADDS     R9,R9,#+1
        B.N      ??OLED_Fill_2
//  332 	}													    
??OLED_Fill_3:
        ADDS     R10,R10,#+1
        B.N      ??OLED_Fill_0
//  333 	OLED_Refresh_Gram();//更新显示
??OLED_Fill_1:
          CFI FunCall OLED_Refresh_Gram
        BL       OLED_Refresh_Gram
//  334 }
        POP      {R4-R10,PC}      ;; return
          CFI EndBlock cfiBlock8

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function OLED_WrDat
          CFI NoCalls
        THUMB
//  335 void OLED_WrDat(u8 data)
//  336 {
OLED_WrDat:
        MOVS     R1,R0
//  337   u8 i=8;
        MOVS     R2,#+8
//  338 //LCD_CS=0;;
//  339 OLED_DC_HIGH();// LPC_GPIO2->DATA|=(1<<3);//OLED_DC=1		//  OLED_DC=1;
        MOVS     R0,#+1
        LDR.W    R3,??DataTable10_1  ;; 0x43fe2064
        STR      R0,[R3, #+0]
//  340 OLED_SCL_LOW();//  LPC_GPIO2->DATA&=~(1<<1);//OLED_SCL=0     // OLED_SCL=0;
        MOVS     R0,#+0
        LDR.W    R3,??DataTable10_2  ;; 0x43fe2070
        STR      R0,[R3, #+0]
//  341   //asm("nop");
//  342   while(i--)
??OLED_WrDat_0:
        MOVS     R0,R2
        SUBS     R2,R0,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??OLED_WrDat_1
//  343   {
//  344     if(data&0x80)
        LSLS     R0,R1,#+24
        BPL.N    ??OLED_WrDat_2
//  345 	{
//  346 	OLED_SDA_HIGH();//LPC_GPIO2->DATA|=(1<<2);//OLED_SDA=1		//OLED_SDA=1;
        MOVS     R0,#+1
        LDR.W    R3,??DataTable10_3  ;; 0x43fe206c
        STR      R0,[R3, #+0]
        B.N      ??OLED_WrDat_3
//  347 	}
//  348     else
//  349 	{
//  350 	 OLED_SDA_LOW();//LPC_GPIO2->DATA&=~(1<<2);//OLED_SDA=0    //OLED_SDA=0;
??OLED_WrDat_2:
        MOVS     R0,#+0
        LDR.W    R3,??DataTable10_3  ;; 0x43fe206c
        STR      R0,[R3, #+0]
//  351 	}
//  352     OLDE_SCL_HIGH();//LPC_GPIO2->DATA|=(1<<1);//OLED_SCL=1	   //OLED_SCL=1;
??OLED_WrDat_3:
        MOVS     R0,#+1
        LDR.W    R3,??DataTable10_2  ;; 0x43fe2070
        STR      R0,[R3, #+0]
//  353     //_asm("nop");;
//  354 		//asm("nop");
//  355     OLED_SCL_LOW();// LPC_GPIO2->DATA&=~(1<<1);//OLED_SCL=0   //OLED_SCL=0;;
        MOVS     R0,#+0
        LDR.W    R3,??DataTable10_2  ;; 0x43fe2070
        STR      R0,[R3, #+0]
//  356     data<<=1;
        LSLS     R1,R1,#+1
        B.N      ??OLED_WrDat_0
//  357   }
//  358 	//LCD_CS=1;
//  359 }
??OLED_WrDat_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock9
//  360 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function OLED_Fill_OLD
        THUMB
//  361 void OLED_Fill_OLD(u8 bmp_data)
//  362 {
OLED_Fill_OLD:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
//  363 	u8 y,x;
//  364 
//  365 	for(y=0;y<8;y++)
        MOVS     R0,#+0
        MOVS     R5,R0
??OLED_Fill_OLD_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+8
        BGE.N    ??OLED_Fill_OLD_1
//  366 	{
//  367 		OLED_WrCmd(0xb0+y);
        SUBS     R0,R5,#+80
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall OLED_WrCmd
        BL       OLED_WrCmd
//  368 		OLED_WrCmd(0x01);
        MOVS     R0,#+1
          CFI FunCall OLED_WrCmd
        BL       OLED_WrCmd
//  369 		OLED_WrCmd(0x10);
        MOVS     R0,#+16
          CFI FunCall OLED_WrCmd
        BL       OLED_WrCmd
//  370 		for(x=0;x<128;x++)
        MOVS     R0,#+0
        MOVS     R6,R0
??OLED_Fill_OLD_2:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+128
        BGE.N    ??OLED_Fill_OLD_3
//  371 		OLED_WrDat(bmp_data);
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall OLED_WrDat
        BL       OLED_WrDat
        ADDS     R6,R6,#+1
        B.N      ??OLED_Fill_OLD_2
//  372 	}
??OLED_Fill_OLD_3:
        ADDS     R5,R5,#+1
        B.N      ??OLED_Fill_OLD_0
//  373 }
??OLED_Fill_OLD_1:
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock10
//  374 
//  375 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function OLED_Init
        THUMB
//  376 void OLED_Init(void)
//  377 { 	 				 	 	
OLED_Init:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  378 
//  379         gpio_init (PTE26 , GPO,LOW); 
        MOVS     R2,#+0
        MOVS     R1,#+1
        MOVS     R0,#+154
          CFI FunCall gpio_init
        BL       gpio_init
//  380         gpio_init (PTE27, GPO,HIGH); 
        MOVS     R2,#+1
        MOVS     R1,#+1
        MOVS     R0,#+155
          CFI FunCall gpio_init
        BL       gpio_init
//  381         gpio_init (PTE25, GPO,HIGH); 
        MOVS     R2,#+1
        MOVS     R1,#+1
        MOVS     R0,#+153
          CFI FunCall gpio_init
        BL       gpio_init
//  382         gpio_init (PTE28, GPO,HIGH ); 
        MOVS     R2,#+1
        MOVS     R1,#+1
        MOVS     R0,#+156
          CFI FunCall gpio_init
        BL       gpio_init
//  383         
//  384         
//  385  //#define OLED_SCL  PTE28_OUT //PTD1_OUT  ->  //B9     D0
//  386  //#define OLED_SDA  PTE27_OUT //PTD3_OUT  -> //B10     D1
//  387  //#define OLED_RST  PTE26_OUT  //PTD0_OUT  -> //B11     D5
//  388  //#define OLED_DC   PTE25_OUT //PTD2_OUT  -> //B16     D4
//  389  //#define OLED_CS   PTE24_OUT  
//  390         
//  391         
//  392 	
//  393         
//  394 //        
//  395 // #define OLED_SCL  PTB11_OUT //PTD1_OUT  ->  //B9     D0
//  396 // #define OLED_SDA  PTB16_OUT //PTD3_OUT  -> //B10     D1
//  397 // #define OLED_RST  PTB9_OUT  //PTD0_OUT  -> //B11     D5
//  398 // #define OLED_DC   PTB10_OUT //PTD2_OUT  -> //B16     D4
//  399 
//  400 	
//  401 //	OLED_CS_HIGH();
//  402 //	OLDE_SCL_HIGH();//LPC_GPIO2->DATA|=(1<<1);//OLED_SCL=1  //
//  403 //	OLED_DC_HIGH();//LPC_GPIO2->DATA|=(1<<3);//OLED_DC=1
//  404 //	OLED_SDA_HIGH();//LPC_GPIO2->DATA|=(1<<2);//OLED_SDA=1
//  405 //    
//  406 //
//  407 //	OLDE_SCL_HIGH();;//LPC_GPIO2->DATA|=(1<<1);//OLED_SCL=1	   //OLED_SCL=1;
//  408 //	OLED_CS_LOW();
//  409 //        
//  410         
//  411         
//  412         
//  413         
//  414         OLED_SCL=1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_2  ;; 0x43fe2070
        STR      R0,[R1, #+0]
//  415 	
//  416 	//OLED_CS = 0 ; ///使能信号端，拉低时正常使用
//  417 	OLED_RST=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_4  ;; 0x43fe2068
        STR      R0,[R1, #+0]
//  418 	OLED_DLY_ms(50);
        MOVS     R0,#+50
          CFI FunCall OLED_DLY_ms
        BL       OLED_DLY_ms
//  419 	OLED_RST=1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_4  ;; 0x43fe2068
        STR      R0,[R1, #+0]
//  420 	  
//  421 	OLED_WR_Byte(0xAE,OLED_CMD); //关闭显示
        MOVS     R1,#+0
        MOVS     R0,#+174
          CFI FunCall OLED_WR_Byte
        BL       OLED_WR_Byte
//  422 	OLED_WR_Byte(0xD5,OLED_CMD); //设置时钟分频因子,震荡频率
        MOVS     R1,#+0
        MOVS     R0,#+213
          CFI FunCall OLED_WR_Byte
        BL       OLED_WR_Byte
//  423 	OLED_WR_Byte(0x80,OLED_CMD);   //[3:0],分频因子;[7:4],震荡频率
        MOVS     R1,#+0
        MOVS     R0,#+128
          CFI FunCall OLED_WR_Byte
        BL       OLED_WR_Byte
//  424 	OLED_WR_Byte(0xA8,OLED_CMD); //设置驱动路数
        MOVS     R1,#+0
        MOVS     R0,#+168
          CFI FunCall OLED_WR_Byte
        BL       OLED_WR_Byte
//  425 	OLED_WR_Byte(0X3F,OLED_CMD); //默认0X3F(1/64) 
        MOVS     R1,#+0
        MOVS     R0,#+63
          CFI FunCall OLED_WR_Byte
        BL       OLED_WR_Byte
//  426 	OLED_WR_Byte(0xD3,OLED_CMD); //设置显示偏移
        MOVS     R1,#+0
        MOVS     R0,#+211
          CFI FunCall OLED_WR_Byte
        BL       OLED_WR_Byte
//  427 	OLED_WR_Byte(0X00,OLED_CMD); //默认为0
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall OLED_WR_Byte
        BL       OLED_WR_Byte
//  428 
//  429 	OLED_WR_Byte(0x40,OLED_CMD); //设置显示开始行 [5:0],行数.
        MOVS     R1,#+0
        MOVS     R0,#+64
          CFI FunCall OLED_WR_Byte
        BL       OLED_WR_Byte
//  430 													    
//  431 	OLED_WR_Byte(0x8D,OLED_CMD); //电荷泵设置
        MOVS     R1,#+0
        MOVS     R0,#+141
          CFI FunCall OLED_WR_Byte
        BL       OLED_WR_Byte
//  432 	OLED_WR_Byte(0x14,OLED_CMD); //bit2，开启/关闭
        MOVS     R1,#+0
        MOVS     R0,#+20
          CFI FunCall OLED_WR_Byte
        BL       OLED_WR_Byte
//  433 	OLED_WR_Byte(0x20,OLED_CMD); //设置内存地址模式
        MOVS     R1,#+0
        MOVS     R0,#+32
          CFI FunCall OLED_WR_Byte
        BL       OLED_WR_Byte
//  434 	OLED_WR_Byte(0x02,OLED_CMD); //[1:0],00，列地址模式;01，行地址模式;10,页地址模式;默认10;
        MOVS     R1,#+0
        MOVS     R0,#+2
          CFI FunCall OLED_WR_Byte
        BL       OLED_WR_Byte
//  435 	OLED_WR_Byte(0xA1,OLED_CMD); //段重定义设置,bit0:0,0->0;1,0->127;
        MOVS     R1,#+0
        MOVS     R0,#+161
          CFI FunCall OLED_WR_Byte
        BL       OLED_WR_Byte
//  436     
//  437 	OLED_WR_Byte(0xC0,OLED_CMD); //设置COM扫描方向;bit3:0,普通模式;1,重定义模式 COM[N-1]->COM0;N:驱动路数
        MOVS     R1,#+0
        MOVS     R0,#+192
          CFI FunCall OLED_WR_Byte
        BL       OLED_WR_Byte
//  438 	OLED_WR_Byte(0xDA,OLED_CMD); //设置COM硬件引脚配置
        MOVS     R1,#+0
        MOVS     R0,#+218
          CFI FunCall OLED_WR_Byte
        BL       OLED_WR_Byte
//  439 	OLED_WR_Byte(0x12,OLED_CMD); //[5:4]配置
        MOVS     R1,#+0
        MOVS     R0,#+18
          CFI FunCall OLED_WR_Byte
        BL       OLED_WR_Byte
//  440 		 
//  441 	OLED_WR_Byte(0x81,OLED_CMD); //对比度设置
        MOVS     R1,#+0
        MOVS     R0,#+129
          CFI FunCall OLED_WR_Byte
        BL       OLED_WR_Byte
//  442 	OLED_WR_Byte(0xEF,OLED_CMD); //1~255;默认0X7F (亮度设置,越大越亮)
        MOVS     R1,#+0
        MOVS     R0,#+239
          CFI FunCall OLED_WR_Byte
        BL       OLED_WR_Byte
//  443 	OLED_WR_Byte(0xD9,OLED_CMD); //设置预充电周期
        MOVS     R1,#+0
        MOVS     R0,#+217
          CFI FunCall OLED_WR_Byte
        BL       OLED_WR_Byte
//  444 	OLED_WR_Byte(0xf1,OLED_CMD); //[3:0],PHASE 1;[7:4],PHASE 2;
        MOVS     R1,#+0
        MOVS     R0,#+241
          CFI FunCall OLED_WR_Byte
        BL       OLED_WR_Byte
//  445 	OLED_WR_Byte(0xDB,OLED_CMD); //设置VCOMH 电压倍率
        MOVS     R1,#+0
        MOVS     R0,#+219
          CFI FunCall OLED_WR_Byte
        BL       OLED_WR_Byte
//  446 	OLED_WR_Byte(0x30,OLED_CMD); //[6:4] 000,0.65*vcc;001,0.77*vcc;011,0.83*vcc;
        MOVS     R1,#+0
        MOVS     R0,#+48
          CFI FunCall OLED_WR_Byte
        BL       OLED_WR_Byte
//  447 
//  448 	OLED_WR_Byte(0xA4,OLED_CMD); //全局显示开启;bit0:1,开启;0,关闭;(白屏/黑屏)
        MOVS     R1,#+0
        MOVS     R0,#+164
          CFI FunCall OLED_WR_Byte
        BL       OLED_WR_Byte
//  449 	OLED_WR_Byte(0xA6,OLED_CMD); //设置显示方式;bit0:1,反相显示;0,正常显示	    						   
        MOVS     R1,#+0
        MOVS     R0,#+166
          CFI FunCall OLED_WR_Byte
        BL       OLED_WR_Byte
//  450 	OLED_WR_Byte(0xAF,OLED_CMD); //开启显示	 
        MOVS     R1,#+0
        MOVS     R0,#+175
          CFI FunCall OLED_WR_Byte
        BL       OLED_WR_Byte
//  451 	OLED_Clear();
          CFI FunCall OLED_Clear
        BL       OLED_Clear
//  452 }  
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock11
//  453 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function OLED_PutPixel
        THUMB
//  454 void OLED_PutPixel(u8 x,u8 y,u8 data1)
//  455 {
OLED_PutPixel:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  456 	//data1当前点的数据
//  457 	data1 = data1<<(y%8);
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R0,#+8
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        SDIV     R1,R5,R0
        MLS      R0,R0,R1,R5
        LSLS     R6,R6,R0
//  458 	OLED_WrCmd(0xb0+(y>>3));
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+3
        SUBS     R0,R0,#+80
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall OLED_WrCmd
        BL       OLED_WrCmd
//  459 	OLED_WrCmd(((x&0xf0)>>4)|0x10);
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+4
        ORRS     R0,R0,#0x10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall OLED_WrCmd
        BL       OLED_WrCmd
//  460 	OLED_WrCmd((x&0x0f)|0x00);
        ANDS     R0,R4,#0xF
          CFI FunCall OLED_WrCmd
        BL       OLED_WrCmd
//  461 	OLED_WrDat(data1);
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall OLED_WrDat
        BL       OLED_WrDat
//  462 }
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock12
//  463 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function OLED_Set_Pos
        THUMB
//  464 void OLED_Set_Pos(u8 x, u8 y)
//  465 {
OLED_Set_Pos:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
//  466   OLED_WrCmd(0xb0+y);
        SUBS     R0,R5,#+80
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall OLED_WrCmd
        BL       OLED_WrCmd
//  467   OLED_WrCmd(((x&0xf0)>>4)|0x10);
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+4
        ORRS     R0,R0,#0x10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall OLED_WrCmd
        BL       OLED_WrCmd
//  468   OLED_WrCmd((x&0x0f)|0x01);
        ANDS     R0,R4,#0xF
        ORRS     R0,R0,#0x1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall OLED_WrCmd
        BL       OLED_WrCmd
//  469 }
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock13
//  470 //==============================================================
//  471 //函数名：LCD_P6x8Str(u8 x,u8 y,u8 *p)
//  472 //功能描述：写入一组标准ASCII字符串
//  473 //参数：显示的位置（x,y），y为页范围0～7，要显示的字符串
//  474 //返回：无
//  475 //==============================================================

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock14 Using cfiCommon0
          CFI Function OLED_P6x8Str
        THUMB
//  476 void OLED_P6x8Str(u8 x,u8 y,u8 ch[])
//  477 {
OLED_P6x8Str:
        PUSH     {R3-R11,LR}
          CFI R14 Frame(CFA, -4)
          CFI R11 Frame(CFA, -8)
          CFI R10 Frame(CFA, -12)
          CFI R9 Frame(CFA, -16)
          CFI R8 Frame(CFA, -20)
          CFI R7 Frame(CFA, -24)
          CFI R6 Frame(CFA, -28)
          CFI R5 Frame(CFA, -32)
          CFI R4 Frame(CFA, -36)
          CFI CFA R13+40
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  478   int A,S;
//  479   u8 c=0,i=0,j=0;
        MOVS     R9,#+0
        MOVS     R10,#+0
        MOVS     R11,#+0
//  480   while (ch[j]!='\0')
??OLED_P6x8Str_0:
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        LDRB     R0,[R6, R11]
        CMP      R0,#+0
        BEQ.N    ??OLED_P6x8Str_1
//  481   {
//  482     c =ch[j]-32;
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        LDRB     R0,[R6, R11]
        SUBS     R0,R0,#+32
        MOV      R9,R0
//  483     if(x>128){x=0;y++;}
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+129
        BLT.N    ??OLED_P6x8Str_2
        MOVS     R0,#+0
        MOVS     R4,R0
        ADDS     R5,R5,#+1
//  484     
//  485     OLED_Set_Pos(x,7-y);
??OLED_P6x8Str_2:
        RSBS     R1,R5,#+7
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall OLED_Set_Pos
        BL       OLED_Set_Pos
//  486   	for(i=0;i<6;i++)
        MOVS     R0,#+0
        MOV      R10,R0
??OLED_P6x8Str_3:
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        CMP      R10,#+6
        BGE.N    ??OLED_P6x8Str_4
//  487     {
//  488       A=F6x8[c][i];
        LDR.N    R0,??DataTable10_5
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        MOVS     R1,#+6
        MUL      R1,R1,R9
        ADD      R0,R0,R1
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        LDRB     R0,[R0, R10]
        MOVS     R7,R0
//  489       S=((A>>0)&1)<<7|((A>>1)&1)<<6|((A>>2)&1)<<5|((A>>3)&1)<<4|((A>>4)&1)<<3|((A>>5)&1)<<2|((A>>6)&1)<<1|((A>>7)&1)<<0;
        LSLS     R1,R7,#+7
        ANDS     R1,R1,#0x80
        LSLS     R0,R7,#+5
        ANDS     R0,R0,#0x40
        ORRS     R1,R0,R1
        LSLS     R0,R7,#+3
        ANDS     R0,R0,#0x20
        ORRS     R1,R0,R1
        LSLS     R0,R7,#+1
        ANDS     R0,R0,#0x10
        ORRS     R1,R0,R1
        MOVS     R0,R7
        ASRS     R0,R0,#+1
        ANDS     R0,R0,#0x8
        ORRS     R1,R0,R1
        MOVS     R0,R7
        ASRS     R0,R0,#+3
        ANDS     R0,R0,#0x4
        ORRS     R1,R0,R1
        MOVS     R0,R7
        ASRS     R0,R0,#+5
        ANDS     R0,R0,#0x2
        ORRS     R1,R0,R1
        UBFX     R0,R7,#+7,#+1
        ORRS     R1,R0,R1
        MOV      R8,R1
//  490   	  OLED_WrDat(S);
        MOV      R0,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall OLED_WrDat
        BL       OLED_WrDat
//  491     }
        ADDS     R10,R10,#+1
        B.N      ??OLED_P6x8Str_3
//  492   	x+=6;
??OLED_P6x8Str_4:
        ADDS     R4,R4,#+6
//  493   	j++;
        ADDS     R11,R11,#+1
        B.N      ??OLED_P6x8Str_0
//  494   }
//  495 }
??OLED_P6x8Str_1:
        POP      {R0,R4-R11,PC}   ;; return
          CFI EndBlock cfiBlock14
//  496 
//  497 //反向显示

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock15 Using cfiCommon0
          CFI Function OLED_P6x8Str_Back
        THUMB
//  498 void OLED_P6x8Str_Back(u8 x,u8 y,u8 ch[])
//  499 {
OLED_P6x8Str_Back:
        PUSH     {R3-R11,LR}
          CFI R14 Frame(CFA, -4)
          CFI R11 Frame(CFA, -8)
          CFI R10 Frame(CFA, -12)
          CFI R9 Frame(CFA, -16)
          CFI R8 Frame(CFA, -20)
          CFI R7 Frame(CFA, -24)
          CFI R6 Frame(CFA, -28)
          CFI R5 Frame(CFA, -32)
          CFI R4 Frame(CFA, -36)
          CFI CFA R13+40
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  500   int A,S;
//  501   u8 c=0,i=0,j=0;
        MOVS     R9,#+0
        MOVS     R10,#+0
        MOVS     R11,#+0
//  502   while (ch[j]!='\0')
??OLED_P6x8Str_Back_0:
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        LDRB     R0,[R6, R11]
        CMP      R0,#+0
        BEQ.N    ??OLED_P6x8Str_Back_1
//  503   {
//  504     c =ch[j]-32;
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        LDRB     R0,[R6, R11]
        SUBS     R0,R0,#+32
        MOV      R9,R0
//  505     if(x>128){x=0;y++;}
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+129
        BLT.N    ??OLED_P6x8Str_Back_2
        MOVS     R0,#+0
        MOVS     R4,R0
        ADDS     R5,R5,#+1
//  506     
//  507     OLED_Set_Pos(x,7-y);
??OLED_P6x8Str_Back_2:
        RSBS     R1,R5,#+7
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall OLED_Set_Pos
        BL       OLED_Set_Pos
//  508   	for(i=0;i<6;i++)
        MOVS     R0,#+0
        MOV      R10,R0
??OLED_P6x8Str_Back_3:
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        CMP      R10,#+6
        BGE.N    ??OLED_P6x8Str_Back_4
//  509     {
//  510       A=~F6x8[c][i];
        LDR.N    R0,??DataTable10_5
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        MOVS     R1,#+6
        MUL      R1,R1,R9
        ADD      R0,R0,R1
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        LDRB     R0,[R0, R10]
        MVNS     R0,R0
        MOVS     R7,R0
//  511       S=((A>>0)&1)<<7|((A>>1)&1)<<6|((A>>2)&1)<<5|((A>>3)&1)<<4|((A>>4)&1)<<3|((A>>5)&1)<<2|((A>>6)&1)<<1|((A>>7)&1)<<0;
        LSLS     R1,R7,#+7
        ANDS     R1,R1,#0x80
        LSLS     R0,R7,#+5
        ANDS     R0,R0,#0x40
        ORRS     R1,R0,R1
        LSLS     R0,R7,#+3
        ANDS     R0,R0,#0x20
        ORRS     R1,R0,R1
        LSLS     R0,R7,#+1
        ANDS     R0,R0,#0x10
        ORRS     R1,R0,R1
        MOVS     R0,R7
        ASRS     R0,R0,#+1
        ANDS     R0,R0,#0x8
        ORRS     R1,R0,R1
        MOVS     R0,R7
        ASRS     R0,R0,#+3
        ANDS     R0,R0,#0x4
        ORRS     R1,R0,R1
        MOVS     R0,R7
        ASRS     R0,R0,#+5
        ANDS     R0,R0,#0x2
        ORRS     R1,R0,R1
        UBFX     R0,R7,#+7,#+1
        ORRS     R1,R0,R1
        MOV      R8,R1
//  512   	  OLED_WrDat(S);
        MOV      R0,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall OLED_WrDat
        BL       OLED_WrDat
//  513     }
        ADDS     R10,R10,#+1
        B.N      ??OLED_P6x8Str_Back_3
//  514   	x+=6;
??OLED_P6x8Str_Back_4:
        ADDS     R4,R4,#+6
//  515   	j++;
        ADDS     R11,R11,#+1
        B.N      ??OLED_P6x8Str_Back_0
//  516   }
//  517 }
??OLED_P6x8Str_Back_1:
        POP      {R0,R4-R11,PC}   ;; return
          CFI EndBlock cfiBlock15
//  518 
//  519 
//  520 
//  521 
//  522 
//  523 
//  524 
//  525 
//  526 
//  527 
//  528 
//  529 
//  530 
//  531 
//  532 
//  533 ////==============================================================
//  534 ////函数名：LCD_P6x8Str(u8 x,u8 y,u8 *p)
//  535 ////功能描述：写入一组标准ASCII字符串
//  536 ////参数：显示的位置（x,y），y为页范围0～7，要显示的字符串
//  537 ////返回：无
//  538 ////==============================================================
//  539 //void OLED_P6x8Str(u8 x,u8 y,u8 ch[])
//  540 //{
//  541 //  u8 c=0,i=0,j=0;
//  542 //  while (ch[j]!='\0')
//  543 //  {
//  544 //    c =ch[j]-32;
//  545 //    if(x>X_WIDTH){x=0;y++;}
//  546 //    OLED_Set_Pos(x,y);
//  547 //  	for(i=0;i<6;i++)
//  548 //  	  OLED_WrDat(F6x8[c][i]);
//  549 //  	x+=6;
//  550 //  	j++;
//  551 //  }
//  552 //}
//  553 
//  554 
//  555 
//  556 
//  557 
//  558 
//  559 
//  560 
//  561 
//  562 
//  563 
//  564 
//  565 
//  566 //==============================================================
//  567 //函数名： void Draw_BMP(u8 x,u8 y)
//  568 //功能描述：显示BMP图片128×64
//  569 //参数：起始点坐标(x,y),x的范围0～127，y为页的范围0～7
//  570 //返回：无
//  571 //==============================================================

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock16 Using cfiCommon0
          CFI Function Draw_BMP
        THUMB
//  572 void Draw_BMP(u8 x0,u8 y0,u8 x1,u8 y1,u8 bmp[])
//  573 {
Draw_BMP:
        PUSH     {R3-R11,LR}
          CFI R14 Frame(CFA, -4)
          CFI R11 Frame(CFA, -8)
          CFI R10 Frame(CFA, -12)
          CFI R9 Frame(CFA, -16)
          CFI R8 Frame(CFA, -20)
          CFI R7 Frame(CFA, -24)
          CFI R6 Frame(CFA, -28)
          CFI R5 Frame(CFA, -32)
          CFI R4 Frame(CFA, -36)
          CFI CFA R13+40
        MOVS     R5,R0
        MOVS     R6,R1
        MOVS     R7,R2
        MOVS     R4,R3
        LDR      R8,[SP, #+40]
//  574   u16 ii=0;
        MOVS     R9,#+0
//  575   u8 x,y;
//  576 
//  577   if(y1%8==0) y=y1/8;
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,R4
        MOVS     R1,#+8
        SDIV     R2,R0,R1
        MLS      R0,R1,R2,R0
        CMP      R0,#+0
        BNE.N    ??Draw_BMP_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,#+8
        SDIV     R0,R4,R0
        MOV      R11,R0
        B.N      ??Draw_BMP_1
//  578   else y=y1/8+1;
??Draw_BMP_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,#+8
        SDIV     R0,R4,R0
        ADDS     R0,R0,#+1
        MOV      R11,R0
//  579 	for(y=y0;y<=y1;y++)
??Draw_BMP_1:
        MOV      R11,R6
??Draw_BMP_2:
        MOVS     R0,R4
        MOV      R1,R11
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R0,R1
        BCC.N    ??Draw_BMP_3
//  580 	{
//  581 		OLED_Set_Pos(x0,y);
        MOV      R1,R11
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall OLED_Set_Pos
        BL       OLED_Set_Pos
//  582 		for(x=x0;x<x1;x++)
        MOV      R10,R5
??Draw_BMP_4:
        MOV      R0,R10
        MOVS     R1,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R0,R1
        BCS.N    ??Draw_BMP_5
//  583 	    {
//  584 	    	OLED_WrDat(bmp[ii++]);
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        LDRB     R0,[R8, R9]
          CFI FunCall OLED_WrDat
        BL       OLED_WrDat
        ADDS     R9,R9,#+1
//  585 	    }
        ADDS     R10,R10,#+1
        B.N      ??Draw_BMP_4
//  586 	}
??Draw_BMP_5:
        ADDS     R11,R11,#+1
        B.N      ??Draw_BMP_2
//  587 }
??Draw_BMP_3:
        POP      {R0,R4-R11,PC}   ;; return
          CFI EndBlock cfiBlock16
//  588 
//  589 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock17 Using cfiCommon0
          CFI Function OLED_P6x8Char
        THUMB
//  590 void OLED_P6x8Char(unsigned char ch)
//  591 {
OLED_P6x8Char:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
//  592 	 unsigned char c=0,i=0;       
        MOVS     R5,#+0
        MOVS     R6,#+0
//  593 	c =ch-32;
        SUBS     R0,R4,#+32
        MOVS     R5,R0
//  594 	for(i=0;i<6;i++)
        MOVS     R0,#+0
        MOVS     R6,R0
??OLED_P6x8Char_0:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+6
        BGE.N    ??OLED_P6x8Char_1
//  595 	{     
//  596               OLED_WrDat(F6x8[c][i]);  
        LDR.N    R0,??DataTable10_5
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R1,#+6
        MUL      R1,R1,R5
        ADD      R0,R0,R1
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDRB     R0,[R0, R6]
          CFI FunCall OLED_WrDat
        BL       OLED_WrDat
//  597 	}
        ADDS     R6,R6,#+1
        B.N      ??OLED_P6x8Char_0
//  598 }
??OLED_P6x8Char_1:
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock17

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10:
        DC32     OLED_GRAM

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_1:
        DC32     0x43fe2064

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_2:
        DC32     0x43fe2070

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_3:
        DC32     0x43fe206c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_4:
        DC32     0x43fe2068

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_5:
        DC32     F6x8

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  599 
//  600 
//  601 
//  602 
//  603 
//  604 
// 
// 1 056 bytes in section .bss
//   552 bytes in section .rodata
// 1 808 bytes in section .text
// 
// 1 808 bytes of CODE  memory
//   552 bytes of CONST memory
// 1 056 bytes of DATA  memory
//
//Errors: none
//Warnings: 27
