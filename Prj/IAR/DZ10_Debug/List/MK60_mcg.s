///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      12/Jun/2017  17:32:54
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\@@@@@@@\Car\Chip\src\MK60_mcg.c
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EWD8E4.tmp
//        (D:\@@@@@@@\Car\Chip\src\MK60_mcg.c -D DEBUG -D
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
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\MK60_mcg.s
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
        #define SHF_WRITE 0x1
        #define SHF_EXECINSTR 0x4

        PUBLIC mcg_cfg
        PUBLIC mcg_div
        PUBLIC mcg_div_count
        PUBLIC pll_init
        PUBLIC set_sys_dividers
        
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
        
// D:\@@@@@@@\Car\Chip\src\MK60_mcg.c
//    1 /*!
//    2  *     COPYRIGHT NOTICE
//    3  *     Copyright (c) 2013,ɽ��Ƽ�
//    4  *     All rights reserved.
//    5  *     �������ۣ�ɽ����̳ http://www.vcan123.com
//    6  *
//    7  *     ��ע�������⣬�����������ݰ�Ȩ����ɽ��Ƽ����У�δ����������������ҵ��;��
//    8  *     �޸�����ʱ���뱣��ɽ��Ƽ��İ�Ȩ������
//    9  *
//   10  * @file       MK60_mcg.c
//   11  * @brief      MCG PLL����
//   12  * @author     ɽ��Ƽ�
//   13  * @version    v5.0
//   14  * @date       2013-06-29
//   15  */
//   16 
//   17 
//   18 #include "common.h"
//   19 #include "MK60_mcg.h"
//   20 #include "MK60_lptmr.h"
//   21 
//   22 #if defined(MK60DZ10)

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   23 mcg_cfg_t mcg_cfg[PLL_MAX] =
mcg_cfg:
        DC16 240
        DC8 10, 29
        DC16 48
        DC8 24, 0
        DC16 50
        DC8 24, 1
        DC16 96
        DC8 24, 24
        DC16 100
        DC8 24, 26
        DC16 110
        DC8 24, 31
        DC16 120
        DC8 19, 24
        DC16 125
        DC8 19, 26
        DC16 130
        DC8 19, 28
        DC16 140
        DC8 14, 18
        DC16 150
        DC8 14, 21
        DC16 160
        DC8 14, 24
        DC16 170
        DC8 14, 27
        DC16 180
        DC8 14, 30
        DC16 200
        DC8 12, 28
        DC16 225
        DC8 11, 30
        DC16 250
        DC8 10, 31
//   24 {
//   25     {EXTAL_IN_MHz*(VDIV + 24) / (PRDIV + 1), PRDIV, VDIV}, //PLLUSR
//   26     {48,    24,     0       },                          //PLL48
//   27     {50,    24,     1       },                          //PLL50
//   28     {96,    24,     24      },                          //PLL96
//   29     {100,   24,     26      },                          //PLL100
//   30     {110,   24,     31      },                          //PLL110
//   31     {120,   19,     24      },                          //PLL120
//   32     {125,   19,     26      },                          //PLL125
//   33     {130,   19,     28      },                          //PLL130
//   34     {140,   14,     18      },                          //PLL140
//   35     {150,   14,     21      },                          //PLL150
//   36     {160,   14,     24      },                          //PLL160
//   37     {170,   14,     27      },                          //PLL170
//   38     {180,   14,     30      },                          //PLL180
//   39     {200,   12,     28      },                          //PLL200
//   40     {225,   11,     30      },                          //PLL225
//   41     {250,   10,     31      },                          //PLL250
//   42 };
//   43 
//   44 #elif defined(MK60F15)
//   45 
//   46 mcg_cfg_t mcg_cfg[PLL_MAX] =
//   47 {
//   48     {EXTAL_IN_MHz*(VDIV + 16) / (PRDIV + 1) /2, PRDIV, VDIV}, //PLLUSR
//   49     {50,    7 ,     1       },                          //PLL50
//   50     {100,   7,      16      },                          //PLL100
//   51     {110,   4 ,     6       },                          //PLL110
//   52     {120,   4 ,     8       },                          //PLL120
//   53     {130,   4 ,     10      },                          //PLL130
//   54     {140,   4 ,     12      },                          //PLL140
//   55     {150,   4 ,     14      },                          //PLL150
//   56     {160,   4 ,     16      },                          //PLL160
//   57     {170,   4 ,     18      },                          //PLL170
//   58     {180,   4 ,     20      },                          //PLL180
//   59     {190,   4 ,     22      },                          //PLL190
//   60     {200,   4 ,     24      },                          //PLL200
//   61     {210,   4 ,     26      },                          //PLL210
//   62     {220,   4 ,     28      },                          //PLL220
//   63     {225,   4 ,     29      },                          //PLL225
//   64     {230,   4 ,     30      },                          //PLL230
//   65     {235,   4 ,     31      },                          //PLL235
//   66     {244,   3 ,     23      },                          //PLL244
//   67     {250,   3 ,     24      },                          //PLL250
//   68     {275,   1 ,     6       },                          //PLL275
//   69     {300,   2 ,     20      },                          //PLL300
//   70 };
//   71 #endif

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   72 mcg_div_t mcg_div = {CORE_DIV, BUS_DIV, FLEX_DIV, FLASH_DIV};
mcg_div:
        DC8 0, 1, 9, 8
//   73 
//   74 
//   75 /*!
//   76  *  @brief      MCG ��Ƶ����
//   77  *  @param      PLL_e       Ƶ�����ò���
//   78  *  @since      v5.0
//   79  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function mcg_div_count
          CFI NoCalls
        THUMB
//   80 void mcg_div_count(PLL_e pll)
//   81 {
//   82     uint16 clk = mcg_cfg[pll].clk;
mcg_div_count:
        LDR.W    R1,??DataTable1
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LDRH     R1,[R1, R0, LSL #+2]
//   83     if( (pll > PLLUSR) && (pll < PLL_MAX) )
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BLT.W    ??mcg_div_count_0
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        CMP      R0,#+17
        BGE.W    ??mcg_div_count_0
//   84     {
//   85         //���÷�Ƶ
//   86         mcg_div.core_div    = 0;                                        // core = MCG
        MOVS     R2,#+0
        LDR.W    R3,??DataTable1_1
        STRB     R2,[R3, #+0]
//   87 
//   88         if     (clk <= 1 * MAX_BUS_CLK)   mcg_div.bus_div = 0;          // bus  = MCG
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+26
        BGE.N    ??mcg_div_count_1
        MOVS     R2,#+0
        LDR.W    R3,??DataTable1_1
        STRB     R2,[R3, #+1]
        B.N      ??mcg_div_count_2
//   89         else if(clk <= 2 * MAX_BUS_CLK)   mcg_div.bus_div = 1;          // bus  = MCG/2
??mcg_div_count_1:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+51
        BGE.N    ??mcg_div_count_3
        MOVS     R2,#+1
        LDR.W    R3,??DataTable1_1
        STRB     R2,[R3, #+1]
        B.N      ??mcg_div_count_2
//   90         else if(clk <= 3 * MAX_BUS_CLK)   mcg_div.bus_div = 2;          // bus  = MCG/3
??mcg_div_count_3:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+76
        BGE.N    ??mcg_div_count_4
        MOVS     R2,#+2
        LDR.W    R3,??DataTable1_1
        STRB     R2,[R3, #+1]
        B.N      ??mcg_div_count_2
//   91         else if(clk <= 4 * MAX_BUS_CLK)   mcg_div.bus_div = 3;          // bus  = MCG/4
??mcg_div_count_4:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+101
        BGE.N    ??mcg_div_count_5
        MOVS     R2,#+3
        LDR.W    R3,??DataTable1_1
        STRB     R2,[R3, #+1]
        B.N      ??mcg_div_count_2
//   92         else if(clk <= 5 * MAX_BUS_CLK)   mcg_div.bus_div = 4;          // bus  = MCG/5
??mcg_div_count_5:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+126
        BGE.N    ??mcg_div_count_6
        MOVS     R2,#+4
        LDR.W    R3,??DataTable1_1
        STRB     R2,[R3, #+1]
        B.N      ??mcg_div_count_2
//   93         else if(clk <= 6 * MAX_BUS_CLK)   mcg_div.bus_div = 5;          // bus  = MCG/6
??mcg_div_count_6:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+151
        BGE.N    ??mcg_div_count_7
        MOVS     R2,#+5
        LDR.W    R3,??DataTable1_1
        STRB     R2,[R3, #+1]
        B.N      ??mcg_div_count_2
//   94         else if(clk <= 7 * MAX_BUS_CLK)   mcg_div.bus_div = 6;          // bus  = MCG/7
??mcg_div_count_7:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+176
        BGE.N    ??mcg_div_count_8
        MOVS     R2,#+6
        LDR.W    R3,??DataTable1_1
        STRB     R2,[R3, #+1]
        B.N      ??mcg_div_count_2
//   95         else if(clk <= 8 * MAX_BUS_CLK)   mcg_div.bus_div = 7;          // bus  = MCG/8
??mcg_div_count_8:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+201
        BGE.N    ??mcg_div_count_9
        MOVS     R2,#+7
        LDR.W    R3,??DataTable1_1
        STRB     R2,[R3, #+1]
        B.N      ??mcg_div_count_2
//   96         else if(clk <= 9 * MAX_BUS_CLK)   mcg_div.bus_div = 8;          // bus  = MCG/9
??mcg_div_count_9:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+226
        BGE.N    ??mcg_div_count_10
        MOVS     R2,#+8
        LDR.W    R3,??DataTable1_1
        STRB     R2,[R3, #+1]
        B.N      ??mcg_div_count_2
//   97         else if(clk <= 10 * MAX_BUS_CLK)   mcg_div.bus_div = 9;         // bus  = MCG/10
??mcg_div_count_10:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+251
        BGE.N    ??mcg_div_count_11
        MOVS     R2,#+9
        LDR.W    R3,??DataTable1_1
        STRB     R2,[R3, #+1]
        B.N      ??mcg_div_count_2
//   98         else if(clk <= 11 * MAX_BUS_CLK)   mcg_div.bus_div = 10;        // bus  = MCG/11
??mcg_div_count_11:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+276
        BGE.N    ??mcg_div_count_12
        MOVS     R2,#+10
        LDR.W    R3,??DataTable1_1
        STRB     R2,[R3, #+1]
        B.N      ??mcg_div_count_2
//   99         else if(clk <= 12 * MAX_BUS_CLK)   mcg_div.bus_div = 11;        // bus  = MCG/12
??mcg_div_count_12:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVW     R2,#+301
        CMP      R1,R2
        BGE.N    ??mcg_div_count_13
        MOVS     R2,#+11
        LDR.W    R3,??DataTable1_1
        STRB     R2,[R3, #+1]
        B.N      ??mcg_div_count_2
//  100         else if(clk <= 13 * MAX_BUS_CLK)   mcg_div.bus_div = 12;        // bus  = MCG/13
??mcg_div_count_13:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+326
        BGE.N    ??mcg_div_count_14
        MOVS     R2,#+12
        LDR.W    R3,??DataTable1_1
        STRB     R2,[R3, #+1]
        B.N      ??mcg_div_count_2
//  101         else if(clk <= 14 * MAX_BUS_CLK)   mcg_div.bus_div = 13;        // bus  = MCG/14
??mcg_div_count_14:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVW     R2,#+351
        CMP      R1,R2
        BGE.N    ??mcg_div_count_15
        MOVS     R2,#+13
        LDR.N    R3,??DataTable1_1
        STRB     R2,[R3, #+1]
        B.N      ??mcg_div_count_2
//  102         else if(clk <= 15 * MAX_BUS_CLK)   mcg_div.bus_div = 14;        // bus  = MCG/15
??mcg_div_count_15:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+376
        BGE.N    ??mcg_div_count_16
        MOVS     R2,#+14
        LDR.N    R3,??DataTable1_1
        STRB     R2,[R3, #+1]
        B.N      ??mcg_div_count_2
//  103         else                              mcg_div.bus_div = 15;         // bus  = MCG/16
??mcg_div_count_16:
        MOVS     R2,#+15
        LDR.N    R3,??DataTable1_1
        STRB     R2,[R3, #+1]
//  104 
//  105         if     (clk <= 1 * MAX_FLEXBUS_CLK)   mcg_div.flex_div = 0;     // flex bus  = MCG
??mcg_div_count_2:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+26
        BGE.N    ??mcg_div_count_17
        MOVS     R2,#+0
        LDR.N    R3,??DataTable1_1
        STRB     R2,[R3, #+2]
        B.N      ??mcg_div_count_18
//  106         else if(clk <= 2 * MAX_FLEXBUS_CLK)   mcg_div.flex_div = 1;     // flex bus  = MCG/2
??mcg_div_count_17:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+51
        BGE.N    ??mcg_div_count_19
        MOVS     R2,#+1
        LDR.N    R3,??DataTable1_1
        STRB     R2,[R3, #+2]
        B.N      ??mcg_div_count_18
//  107         else if(clk <= 3 * MAX_FLEXBUS_CLK)   mcg_div.flex_div = 2;     // flex bus  = MCG/3
??mcg_div_count_19:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+76
        BGE.N    ??mcg_div_count_20
        MOVS     R2,#+2
        LDR.N    R3,??DataTable1_1
        STRB     R2,[R3, #+2]
        B.N      ??mcg_div_count_18
//  108         else if(clk <= 4 * MAX_FLEXBUS_CLK)   mcg_div.flex_div = 3;     // flex bus  = MCG/4
??mcg_div_count_20:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+101
        BGE.N    ??mcg_div_count_21
        MOVS     R2,#+3
        LDR.N    R3,??DataTable1_1
        STRB     R2,[R3, #+2]
        B.N      ??mcg_div_count_18
//  109         else if(clk <= 5 * MAX_FLEXBUS_CLK)   mcg_div.flex_div = 4;     // flex bus  = MCG/5
??mcg_div_count_21:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+126
        BGE.N    ??mcg_div_count_22
        MOVS     R2,#+4
        LDR.N    R3,??DataTable1_1
        STRB     R2,[R3, #+2]
        B.N      ??mcg_div_count_18
//  110         else if(clk <= 6 * MAX_FLEXBUS_CLK)   mcg_div.flex_div = 5;     // flex bus  = MCG/6
??mcg_div_count_22:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+151
        BGE.N    ??mcg_div_count_23
        MOVS     R2,#+5
        LDR.N    R3,??DataTable1_1
        STRB     R2,[R3, #+2]
        B.N      ??mcg_div_count_18
//  111         else if(clk <= 7 * MAX_FLEXBUS_CLK)   mcg_div.flex_div = 6;     // flex bus  = MCG/7
??mcg_div_count_23:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+176
        BGE.N    ??mcg_div_count_24
        MOVS     R2,#+6
        LDR.N    R3,??DataTable1_1
        STRB     R2,[R3, #+2]
        B.N      ??mcg_div_count_18
//  112         else if(clk <= 8 * MAX_FLEXBUS_CLK)   mcg_div.flex_div = 7;     // flex bus  = MCG/8
??mcg_div_count_24:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+201
        BGE.N    ??mcg_div_count_25
        MOVS     R2,#+7
        LDR.N    R3,??DataTable1_1
        STRB     R2,[R3, #+2]
        B.N      ??mcg_div_count_18
//  113         else if(clk <= 9 * MAX_FLEXBUS_CLK)   mcg_div.flex_div = 8;     // flex bus  = MCG/9
??mcg_div_count_25:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+226
        BGE.N    ??mcg_div_count_26
        MOVS     R2,#+8
        LDR.N    R3,??DataTable1_1
        STRB     R2,[R3, #+2]
        B.N      ??mcg_div_count_18
//  114         else if(clk <= 10 * MAX_FLEXBUS_CLK)   mcg_div.flex_div = 9;    // flex bus  = MCG/10
??mcg_div_count_26:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+251
        BGE.N    ??mcg_div_count_27
        MOVS     R2,#+9
        LDR.N    R3,??DataTable1_1
        STRB     R2,[R3, #+2]
        B.N      ??mcg_div_count_18
//  115         else if(clk <= 11 * MAX_FLEXBUS_CLK)   mcg_div.flex_div = 10;   // flex bus  = MCG/11
??mcg_div_count_27:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+276
        BGE.N    ??mcg_div_count_28
        MOVS     R2,#+10
        LDR.N    R3,??DataTable1_1
        STRB     R2,[R3, #+2]
        B.N      ??mcg_div_count_18
//  116         else if(clk <= 12 * MAX_FLEXBUS_CLK)   mcg_div.flex_div = 11;   // flex bus  = MCG/12
??mcg_div_count_28:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVW     R2,#+301
        CMP      R1,R2
        BGE.N    ??mcg_div_count_29
        MOVS     R2,#+11
        LDR.N    R3,??DataTable1_1
        STRB     R2,[R3, #+2]
        B.N      ??mcg_div_count_18
//  117         else if(clk <= 13 * MAX_FLEXBUS_CLK)   mcg_div.flex_div = 12;   // flex bus  = MCG/13
??mcg_div_count_29:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+326
        BGE.N    ??mcg_div_count_30
        MOVS     R2,#+12
        LDR.N    R3,??DataTable1_1
        STRB     R2,[R3, #+2]
        B.N      ??mcg_div_count_18
//  118         else if(clk <= 14 * MAX_FLEXBUS_CLK)   mcg_div.flex_div = 13;   // flex bus  = MCG/14
??mcg_div_count_30:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVW     R2,#+351
        CMP      R1,R2
        BGE.N    ??mcg_div_count_31
        MOVS     R2,#+13
        LDR.N    R3,??DataTable1_1
        STRB     R2,[R3, #+2]
        B.N      ??mcg_div_count_18
//  119         else if(clk <= 15 * MAX_FLEXBUS_CLK)   mcg_div.flex_div = 14;   // flex bus  = MCG/15
??mcg_div_count_31:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+376
        BGE.N    ??mcg_div_count_32
        MOVS     R2,#+14
        LDR.N    R3,??DataTable1_1
        STRB     R2,[R3, #+2]
        B.N      ??mcg_div_count_18
//  120         else                                  mcg_div.flex_div = 15;    // flex bus  = MCG/16
??mcg_div_count_32:
        MOVS     R2,#+15
        LDR.N    R3,??DataTable1_1
        STRB     R2,[R3, #+2]
//  121 
//  122         if     (clk <= 1 * MAX_FLASH_CLK)   mcg_div.flash_div = 0;      // flash  = MCG
??mcg_div_count_18:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+26
        BGE.N    ??mcg_div_count_33
        MOVS     R2,#+0
        LDR.N    R3,??DataTable1_1
        STRB     R2,[R3, #+3]
        B.N      ??mcg_div_count_0
//  123         else if(clk <= 2 * MAX_FLASH_CLK)   mcg_div.flash_div = 1;      // flash  = MCG/2
??mcg_div_count_33:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+51
        BGE.N    ??mcg_div_count_34
        MOVS     R2,#+1
        LDR.N    R3,??DataTable1_1
        STRB     R2,[R3, #+3]
        B.N      ??mcg_div_count_0
//  124         else if(clk <= 3 * MAX_FLASH_CLK)   mcg_div.flash_div = 2;      // flash  = MCG/3
??mcg_div_count_34:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+76
        BGE.N    ??mcg_div_count_35
        MOVS     R2,#+2
        LDR.N    R3,??DataTable1_1
        STRB     R2,[R3, #+3]
        B.N      ??mcg_div_count_0
//  125         else if(clk <= 4 * MAX_FLASH_CLK)   mcg_div.flash_div = 3;      // flash  = MCG/4
??mcg_div_count_35:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+101
        BGE.N    ??mcg_div_count_36
        MOVS     R2,#+3
        LDR.N    R3,??DataTable1_1
        STRB     R2,[R3, #+3]
        B.N      ??mcg_div_count_0
//  126         else if(clk <= 5 * MAX_FLASH_CLK)   mcg_div.flash_div = 4;      // flash  = MCG/5
??mcg_div_count_36:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+126
        BGE.N    ??mcg_div_count_37
        MOVS     R2,#+4
        LDR.N    R3,??DataTable1_1
        STRB     R2,[R3, #+3]
        B.N      ??mcg_div_count_0
//  127         else if(clk <= 6 * MAX_FLASH_CLK)   mcg_div.flash_div = 5;      // flash  = MCG/6
??mcg_div_count_37:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+151
        BGE.N    ??mcg_div_count_38
        MOVS     R2,#+5
        LDR.N    R3,??DataTable1_1
        STRB     R2,[R3, #+3]
        B.N      ??mcg_div_count_0
//  128         else if(clk <= 7 * MAX_FLASH_CLK)   mcg_div.flash_div = 6;      // flash  = MCG/7
??mcg_div_count_38:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+176
        BGE.N    ??mcg_div_count_39
        MOVS     R2,#+6
        LDR.N    R3,??DataTable1_1
        STRB     R2,[R3, #+3]
        B.N      ??mcg_div_count_0
//  129         else if(clk <= 8 * MAX_FLASH_CLK)   mcg_div.flash_div = 7;      // flash  = MCG/8
??mcg_div_count_39:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+201
        BGE.N    ??mcg_div_count_40
        MOVS     R2,#+7
        LDR.N    R3,??DataTable1_1
        STRB     R2,[R3, #+3]
        B.N      ??mcg_div_count_0
//  130         else if(clk <= 9 * MAX_FLASH_CLK)   mcg_div.flash_div = 8;      // flash  = MCG/9
??mcg_div_count_40:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+226
        BGE.N    ??mcg_div_count_41
        MOVS     R2,#+8
        LDR.N    R3,??DataTable1_1
        STRB     R2,[R3, #+3]
        B.N      ??mcg_div_count_0
//  131         else if(clk <= 10 * MAX_FLASH_CLK)   mcg_div.flash_div = 9;     // flash  = MCG/10
??mcg_div_count_41:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+251
        BGE.N    ??mcg_div_count_42
        MOVS     R2,#+9
        LDR.N    R3,??DataTable1_1
        STRB     R2,[R3, #+3]
        B.N      ??mcg_div_count_0
//  132         else if(clk <= 11 * MAX_FLASH_CLK)   mcg_div.flash_div = 10;    // flash  = MCG/11
??mcg_div_count_42:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+276
        BGE.N    ??mcg_div_count_43
        MOVS     R2,#+10
        LDR.N    R3,??DataTable1_1
        STRB     R2,[R3, #+3]
        B.N      ??mcg_div_count_0
//  133         else if(clk <= 12 * MAX_FLASH_CLK)   mcg_div.flash_div = 11;    // flash  = MCG/12
??mcg_div_count_43:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVW     R2,#+301
        CMP      R1,R2
        BGE.N    ??mcg_div_count_44
        MOVS     R2,#+11
        LDR.N    R3,??DataTable1_1
        STRB     R2,[R3, #+3]
        B.N      ??mcg_div_count_0
//  134         else if(clk <= 13 * MAX_FLASH_CLK)   mcg_div.flash_div = 12;    // flash  = MCG/13
??mcg_div_count_44:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+326
        BGE.N    ??mcg_div_count_45
        MOVS     R2,#+12
        LDR.N    R3,??DataTable1_1
        STRB     R2,[R3, #+3]
        B.N      ??mcg_div_count_0
//  135         else if(clk <= 14 * MAX_FLASH_CLK)   mcg_div.flash_div = 13;    // flash  = MCG/14
??mcg_div_count_45:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVW     R2,#+351
        CMP      R1,R2
        BGE.N    ??mcg_div_count_46
        MOVS     R2,#+13
        LDR.N    R3,??DataTable1_1
        STRB     R2,[R3, #+3]
        B.N      ??mcg_div_count_0
//  136         else if(clk <= 15 * MAX_FLASH_CLK)   mcg_div.flash_div = 14;    // flash  = MCG/15
??mcg_div_count_46:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+376
        BGE.N    ??mcg_div_count_47
        MOVS     R2,#+14
        LDR.N    R3,??DataTable1_1
        STRB     R2,[R3, #+3]
        B.N      ??mcg_div_count_0
//  137         else                                mcg_div.flash_div = 15;     // flash  = MCG/16
??mcg_div_count_47:
        MOVS     R2,#+15
        LDR.N    R3,??DataTable1_1
        STRB     R2,[R3, #+3]
//  138     }
//  139 }
??mcg_div_count_0:
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//  140 
//  141 /*!
//  142  *  @brief      PLL��Ƶ
//  143  *  @param      PLL_e       Ƶ�����ò���
//  144  *  @return     ��ƵƵ�ʣ�MHz��
//  145  *  @since      v5.0
//  146  *  @warning    �˺���ֻ���� ��λ��û�����κ�Ƶ����������µ��ã���MCG��FEIģʽ�²ſɵ���
//  147  *  Sample usage:       uint8 clk = pll_init(PLL100);        //��Ƶ
//  148  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function pll_init
        THUMB
//  149 uint8 pll_init(PLL_e pll)
//  150 {
pll_init:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//  151 
//  152     mcg_div_count( pll);
        MOVS     R0,R4
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
          CFI FunCall mcg_div_count
        BL       mcg_div_count
//  153 
//  154     //�ϵ縴λ�󣬵�Ƭ�����Զ����� FEI ģʽ��ʹ�� �ڲ��ο�ʱ��
//  155 
//  156     //FEI -> FBE
//  157     MCG_C2 &= ~MCG_C2_LP_MASK;
        LDR.N    R0,??DataTable1_2  ;; 0x40064001
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0xFD
        LDR.N    R1,??DataTable1_2  ;; 0x40064001
        STRB     R0,[R1, #+0]
//  158     MCG_C2 |= MCG_C2_RANGE(1);
        LDR.N    R0,??DataTable1_2  ;; 0x40064001
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x10
        LDR.N    R1,??DataTable1_2  ;; 0x40064001
        STRB     R0,[R1, #+0]
//  159 
//  160     MCG_C1 = MCG_C1_CLKS(2) | MCG_C1_FRDIV(7);
        MOVS     R0,#+184
        LDR.N    R1,??DataTable1_3  ;; 0x40064000
        STRB     R0,[R1, #+0]
//  161 
//  162     while (MCG_S & MCG_S_IREFST_MASK) {};                       //�ȴ�FLL�ο�ʱ�� Ϊ �ⲿ�ο�ʱ�ӣ�S[IREFST]=0����ʾʹ���ⲿ�ο�ʱ�ӣ���
??pll_init_0:
        LDR.N    R0,??DataTable1_4  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+27
        BMI.N    ??pll_init_0
//  163 
//  164     while (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x2) {}; //�ȴ�ѡ���ⲿ�ο�ʱ��
??pll_init_1:
        LDR.N    R0,??DataTable1_4  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UBFX     R0,R0,#+2,#+2
        CMP      R0,#+2
        BNE.N    ??pll_init_1
//  165 
//  166     //�����Ѿ������� FBEģʽ
//  167 
//  168     //FBE -> PBE
//  169     set_sys_dividers(mcg_div.core_div, mcg_div.bus_div, mcg_div.flex_div, mcg_div.flash_div); //����ϵͳ��Ƶ����ѡ��
        LDR.N    R0,??DataTable1_1
        LDRB     R3,[R0, #+3]
        LDR.N    R0,??DataTable1_1
        LDRB     R2,[R0, #+2]
        LDR.N    R0,??DataTable1_1
        LDRB     R1,[R0, #+1]
        LDR.N    R0,??DataTable1_1
        LDRB     R0,[R0, #+0]
          CFI FunCall set_sys_dividers
        BL       set_sys_dividers
//  170 
//  171     MCG_C5 = MCG_C5_PRDIV(mcg_cfg[pll].prdiv);                      //��Ƶ�� EXTAL_IN_MHz/( PRDIV+1)
        LDR.N    R0,??DataTable1
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        ADD      R0,R0,R4, LSL #+2
        LDRB     R0,[R0, #+2]
        ANDS     R0,R0,#0x1F
        LDR.N    R1,??DataTable1_5  ;; 0x40064004
        STRB     R0,[R1, #+0]
//  172     MCG_C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(mcg_cfg[pll].vdiv) ;    //��Ƶ�� EXTAL_IN_MHz/( PRDIV+1)  * (VDIV+24)
        LDR.N    R0,??DataTable1
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        ADD      R0,R0,R4, LSL #+2
        LDRB     R0,[R0, #+3]
        ANDS     R0,R0,#0x1F
        ORRS     R0,R0,#0x40
        LDR.N    R1,??DataTable1_6  ;; 0x40064005
        STRB     R0,[R1, #+0]
//  173 
//  174     while (!(MCG_S & MCG_S_PLLST_MASK)) {};                         //�ȴ�ʱ��Դѡ��PLL
??pll_init_2:
        LDR.N    R0,??DataTable1_4  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??pll_init_2
//  175 
//  176     while (!(MCG_S & MCG_S_LOCK_MASK)) {};                          //�ȴ� PLL���ˣ����໷��
??pll_init_3:
        LDR.N    R0,??DataTable1_4  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+25
        BPL.N    ??pll_init_3
//  177 
//  178     // �����Ѿ������� PBE ģʽ
//  179 
//  180     // PBE -> PEE
//  181     MCG_C1 &= ~MCG_C1_CLKS_MASK;
        LDR.N    R0,??DataTable1_3  ;; 0x40064000
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0x3F
        LDR.N    R1,??DataTable1_3  ;; 0x40064000
        STRB     R0,[R1, #+0]
//  182 
//  183     while (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x3) {};//�ȴ�ѡ�����PLL
??pll_init_4:
        LDR.N    R0,??DataTable1_4  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UBFX     R0,R0,#+2,#+2
        CMP      R0,#+3
        BNE.N    ??pll_init_4
//  184 
//  185     // �����Ѿ������� PEE ģʽ
//  186 
//  187     return mcg_cfg[pll].clk;
        LDR.N    R0,??DataTable1
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDRH     R0,[R0, R4, LSL #+2]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4,PC}          ;; return
//  188 } //pll_init
          CFI EndBlock cfiBlock1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     mcg_cfg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     mcg_div

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     0x40064001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     0x40064000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DC32     0x40064006

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_5:
        DC32     0x40064004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_6:
        DC32     0x40064005
//  189 
//  190 
//  191 /*!
//  192  *  @brief      ʱ�ӷ�Ƶ���ú���
//  193  *  @param      outdiv1    �ں˷�Ƶϵ����       core    clk = MCG / (outdiv1 +1)
//  194  *  @param      outdiv2    bus��Ƶϵ����        bus     clk = MCG / (outdiv2 +1)
//  195  *  @param      outdiv3    flexbus��Ƶϵ����    flexbus clk = MCG / (outdiv3 +1)
//  196  *  @param      outdiv4    flash��Ƶϵ����      flash   clk = MCG / (outdiv4 +1)
//  197  *  @since      v1.0
//  198  *  @author     ��˼������˾
//  199  *  Sample usage:       set_sys_dividers(0,1, 9,3);     // core clk = MCG ; bus clk = MCG / 2 ; flexbus clk = MCG /10 ; flash clk = MCG / 4;
//  200  */

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function set_sys_dividers
          CFI NoCalls
        THUMB
//  201 __RAMFUNC  void set_sys_dividers(uint32 outdiv1, uint32 outdiv2, uint32 outdiv3, uint32 outdiv4)
//  202 {
set_sys_dividers:
        PUSH     {R4-R7}
          CFI R7 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
//  203     /*
//  204     * This routine must be placed in RAM. It is a workaround for errata e2448.
//  205     * Flash prefetch must be disabled when the flash clock divider is changed.
//  206     * This cannot be performed while executing out of flash.
//  207     * There must be a short delay after the clock dividers are changed before prefetch
//  208     * can be re-enabled.
//  209     */
//  210     uint32 temp_reg;
//  211     uint8 i;
//  212 
//  213     temp_reg = FMC_PFAPR; // store present value of FMC_PFAPR
        LDR.N    R6,??set_sys_dividers_0  ;; 0x4001f000
        LDR      R6,[R6, #+0]
        MOVS     R4,R6
//  214 
//  215     // set M0PFD through M7PFD to 1 to disable prefetch
//  216     FMC_PFAPR |= FMC_PFAPR_M7PFD_MASK | FMC_PFAPR_M6PFD_MASK | FMC_PFAPR_M5PFD_MASK
//  217                  | FMC_PFAPR_M4PFD_MASK | FMC_PFAPR_M3PFD_MASK | FMC_PFAPR_M2PFD_MASK
//  218                  | FMC_PFAPR_M1PFD_MASK | FMC_PFAPR_M0PFD_MASK;
        LDR.N    R6,??set_sys_dividers_0  ;; 0x4001f000
        LDR      R6,[R6, #+0]
        ORRS     R6,R6,#0xFF0000
        LDR.N    R7,??set_sys_dividers_0  ;; 0x4001f000
        STR      R6,[R7, #+0]
//  219 
//  220     // set clock dividers to desired value
//  221     SIM_CLKDIV1 = SIM_CLKDIV1_OUTDIV1(outdiv1) | SIM_CLKDIV1_OUTDIV2(outdiv2)
//  222                   | SIM_CLKDIV1_OUTDIV3(outdiv3) | SIM_CLKDIV1_OUTDIV4(outdiv4);
        LSLS     R6,R1,#+24
        ANDS     R6,R6,#0xF000000
        ORRS     R6,R6,R0, LSL #+28
        LSLS     R7,R2,#+20
        ANDS     R7,R7,#0xF00000
        ORRS     R6,R7,R6
        LSLS     R7,R3,#+16
        ANDS     R7,R7,#0xF0000
        ORRS     R6,R7,R6
        LDR.N    R7,??set_sys_dividers_0+0x4  ;; 0x40048044
        STR      R6,[R7, #+0]
//  223 
//  224     // wait for dividers to change
//  225     for (i = 0 ; i < outdiv4 ; i++)
        MOVS     R6,#+0
        MOVS     R5,R6
??set_sys_dividers_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,R3
        BCS.N    ??set_sys_dividers_2
        ADDS     R5,R5,#+1
        B.N      ??set_sys_dividers_1
//  226         {}
//  227 
//  228     FMC_PFAPR = temp_reg; // re-store original value of FMC_PFAPR
??set_sys_dividers_2:
        LDR.N    R6,??set_sys_dividers_0  ;; 0x4001f000
        STR      R4,[R6, #+0]
//  229 
//  230     return;
        POP      {R4-R7}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
        DATA
??set_sys_dividers_0:
        DC32     0x4001f000
        DC32     0x40048044
//  231 } // set_sys_dividers
          CFI EndBlock cfiBlock2

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
//  72 bytes in section .data
// 958 bytes in section .text
//  80 bytes in section .textrw
// 
// 1 038 bytes of CODE memory
//    72 bytes of DATA memory
//
//Errors: none
//Warnings: none
