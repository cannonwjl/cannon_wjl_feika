///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      12/Jun/2017  17:32:52
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\@@@@@@@\Car\Chip\src\MK60_dac.c
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EWD205.tmp
//        (D:\@@@@@@@\Car\Chip\src\MK60_dac.c -D DEBUG -D
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
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\MK60_dac.s
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

        EXTERN assert_failed

        PUBLIC DACN
        PUBLIC dac_init
        PUBLIC dac_out
        
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
        
// D:\@@@@@@@\Car\Chip\src\MK60_dac.c
//    1 /*!
//    2  *     COPYRIGHT NOTICE
//    3  *     Copyright (c) 2013,山外科技
//    4  *     All rights reserved.
//    5  *     技术讨论：山外论坛 http://www.vcan123.com
//    6  *
//    7  *     除注明出处外，以下所有内容版权均属山外科技所有，未经允许，不得用于商业用途，
//    8  *     修改内容时必须保留山外科技的版权声明。
//    9  *
//   10  * @file       MK60_dac.c
//   11  * @brief      DAC函数
//   12  * @author     山外科技
//   13  * @version    v5.0
//   14  * @date       2013-08-28
//   15  */
//   16 
//   17 #include "common.h"
//   18 #include "MK60_dac.h"
//   19 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   20 DAC_MemMapPtr DACN[2] = {DAC0_BASE_PTR, DAC1_BASE_PTR}; //定义两个指针数组保存 DACN 的地址
DACN:
        DC32 400CC000H, 400CD000H
//   21 
//   22 
//   23 /*!
//   24  *  @brief      DAC初始化
//   25  *  @param      DACn_e      DAC模块号
//   26  *  @since      v5.0
//   27  *  Sample usage:       dac_init (DAC1 );    //初始化 DAC1
//   28  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function dac_init
          CFI NoCalls
        THUMB
//   29 void dac_init(DACn_e dacn)
//   30 {
//   31     /* 使能时钟 */
//   32     SIM_SCGC2 |= (SIM_SCGC2_DAC0_MASK << dacn) ;    //使能DAC模块
dac_init:
        LDR.N    R1,??DataTable1  ;; 0x4004802c
        LDR      R1,[R1, #+0]
        MOV      R2,#+4096
        LSLS     R2,R2,R0
        ORRS     R1,R2,R1
        LDR.N    R2,??DataTable1  ;; 0x4004802c
        STR      R1,[R2, #+0]
//   33 
//   34     /*  配置DAC寄存器  */
//   35 
//   36     //配置DAC_C0寄存器
//   37     DAC_C0_REG(DACN[dacn])  = ( 0
//   38                                 |  DAC_C0_DACTRGSEL_MASK                //选择软件触发
//   39                                 |  DAC_C0_DACRFS_MASK                   //选择参考VDD电压(3.3V)
//   40                                 |  DAC_C0_DACEN_MASK                    //使能DAC模块
//   41                               );
        MOVS     R1,#+224
        LDR.N    R2,??DataTable1_1
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LDR      R2,[R2, R0, LSL #+2]
        STRB     R1,[R2, #+33]
//   42 
//   43     //配置DAC_C1寄存器
//   44     DAC_C1_REG(DACN[dacn]) = ( 0
//   45                              ) ;
        MOVS     R1,#+0
        LDR.N    R2,??DataTable1_1
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LDR      R2,[R2, R0, LSL #+2]
        STRB     R1,[R2, #+34]
//   46     //配置DAC_C2寄存器
//   47     DAC_C2_REG(DACN[dacn]) = ( 0
//   48                                | DAC_C2_DACBFRP(0)             //设置缓冲区读指针指向0
//   49                              );
        MOVS     R1,#+0
        LDR.N    R2,??DataTable1_1
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LDR      R2,[R2, R0, LSL #+2]
        STRB     R1,[R2, #+35]
//   50 
//   51     DAC_DATH_REG(DACN[dacn], 0) = 0;   //默认输出最低电压
        MOVS     R1,#+0
        LDR.N    R2,??DataTable1_1
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LDR      R2,[R2, R0, LSL #+2]
        STRB     R1,[R2, #+1]
//   52     DAC_DATL_REG(DACN[dacn], 0) = 0;
        MOVS     R1,#+0
        LDR.N    R2,??DataTable1_1
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LDR      R2,[R2, R0, LSL #+2]
        STRB     R1,[R2, #+0]
//   53 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//   54 
//   55 /*!
//   56  *  @brief      DAC输出
//   57  *  @param      DACn_e      DAC模块号
//   58  *  @param      val         输出模拟量所对应的数字量（12bit）
//   59  *  @since      v5.0
//   60  *  Sample usage:       dac_out (DAC1 ,0x100);    //初始化 DAC1 输出 0x100 数字量对应的模拟量
//   61  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function dac_out
        THUMB
//   62 void dac_out(DACn_e dacn, uint16 val)
//   63 {
dac_out:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
//   64     ASSERT(val < 0x1000);               //val 为 12bit
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+4096
        BLT.N    ??dac_out_0
        MOVS     R1,#+64
        LDR.N    R0,??DataTable1_2
          CFI FunCall assert_failed
        BL       assert_failed
//   65 
//   66     DAC_DATH_REG(DACN[dacn], 0) = (val >> 8);   //输出电压
??dac_out_0:
        MOVS     R0,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+8
        LDR.N    R1,??DataTable1_1
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        STRB     R0,[R1, #+1]
//   67     DAC_DATL_REG(DACN[dacn], 0) = (val & 0xFF);
        LDR.N    R0,??DataTable1_1
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        STRB     R5,[R0, #+0]
//   68 }
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     0x4004802c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     DACN

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     ?_0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_0:
        DC8 "D:\\\347\254\254\345\215\201\344\272\214\345\261\212\347\224\265\347\243\201\347\273\204\\Car\\Chip\\src\\MK60_dac.c"
        DC8 0, 0, 0

        END
// 
//   8 bytes in section .data
//  52 bytes in section .rodata
// 146 bytes in section .text
// 
// 146 bytes of CODE  memory
//  52 bytes of CONST memory
//   8 bytes of DATA  memory
//
//Errors: none
//Warnings: none
