///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      12/Jun/2017  17:32:55
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\@@@@@@@\Car\Chip\src\MK60_SysTick.c
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EWDDAD.tmp
//        (D:\@@@@@@@\Car\Chip\src\MK60_SysTick.c -D DEBUG -D
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
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\MK60_SysTick.s
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
        EXTERN core_clk_khz

        PUBLIC systick_delay
        PUBLIC systick_delay_ms
        PUBLIC systick_timing
        
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
        
// D:\@@@@@@@\Car\Chip\src\MK60_SysTick.c
//    1 /*!
//    2  *     COPYRIGHT NOTICE
//    3  *     Copyright (c) 2013,ɽ��Ƽ�
//    4  *     All rights reserved.
//    5  *     �������ۣ�ɽ����̳ http://www.vcan123.com
//    6  *
//    7  *     ��ע�������⣬�����������ݰ�Ȩ����ɽ��Ƽ����У�δ����������������ҵ��;��
//    8  *     �޸�����ʱ���뱣��ɽ��Ƽ��İ�Ȩ������
//    9  *
//   10  * @file       MK60_SysTick.c
//   11  * @brief      SysTick ����������������ʱ
//   12  * @author     ɽ��Ƽ�
//   13  * @version    v5.0
//   14  * @date       2013-10-08
//   15  */
//   16 
//   17 
//   18 #include "common.h"

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
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
        LDR.N    R3,??DataTable3  ;; 0xe000ed18
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        ANDS     R4,R0,#0xF
        ADD      R3,R3,R4
        STRB     R2,[R3, #-4]
        B.N      ??NVIC_SetPriority_1
??NVIC_SetPriority_0:
        LSLS     R2,R1,#+4
        LDR.N    R3,??DataTable3_1  ;; 0xe000e400
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        STRB     R2,[R3, R0]
??NVIC_SetPriority_1:
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//   19 #include "MK60_SysTick.h"
//   20 /*
//   21 Cortex-M4 ���ں��а���һ�� SysTick ʱ�ӡ�SysTick?Ϊһ��?24?λ�ݼ���������
//   22 SysTick �趨��ֵ��ʹ�ܺ�ÿ���� 1 ��ϵͳʱ�����ڣ�����ֵ�ͼ� 1��
//   23 ������ 0 ʱ��SysTick �������Զ���װ��ֵ������������
//   24 ͬʱ�ڲ��� COUNTFLAG ��־����λ�������ж�(����ж�ʹ�������)��
//   25 */
//   26 
//   27 
//   28 /*!
//   29  *  @brief      SysTick��ʱ����
//   30  *  @param      time          LPTMR��ʱʱ��(0~65535)
//   31  *  @since      v5.0
//   32  *  Sample usage:       systick_delay(32);     // systick ��ʱ32 ��ϵͳ����
//   33  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function systick_delay
        THUMB
//   34 void systick_delay(uint32 time)
//   35 {
systick_delay:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//   36     if(time == 0)
        CMP      R4,#+0
        BEQ.N    ??systick_delay_0
//   37     {
//   38         return;
//   39     }
//   40 
//   41     ASSERT(time <= (SysTick_RVR_RELOAD_MASK >> SysTick_RVR_RELOAD_SHIFT));  //24λ
??systick_delay_1:
        CMP      R4,#+16777216
        BCC.N    ??systick_delay_2
        MOVS     R1,#+41
        LDR.N    R0,??DataTable3_2
          CFI FunCall assert_failed
        BL       assert_failed
//   42 
//   43     SYST_CSR = 0x00;                        //�ȹ��� systick ,���־λ
??systick_delay_2:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_3  ;; 0xe000e010
        STR      R0,[R1, #+0]
//   44 
//   45     SYST_RVR = time;                        //������ʱʱ��
        LDR.N    R0,??DataTable3_4  ;; 0xe000e014
        STR      R4,[R0, #+0]
//   46 
//   47     SYST_CVR = 0x00;                        //��ռ�����
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_5  ;; 0xe000e018
        STR      R0,[R1, #+0]
//   48 
//   49     SYST_CSR = ( 0
//   50                  | SysTick_CSR_ENABLE_MASK       //ʹ�� systick
//   51                  //| SysTick_CSR_TICKINT_MASK    //ʹ���ж� (ע���˱�ʾ�ر��ж�)
//   52                  | SysTick_CSR_CLKSOURCE_MASK    //ʱ��Դѡ�� ( core clk)
//   53                );
        MOVS     R0,#+5
        LDR.N    R1,??DataTable3_3  ;; 0xe000e010
        STR      R0,[R1, #+0]
//   54 
//   55     while( !(SYST_CSR & SysTick_CSR_COUNTFLAG_MASK));   //�ȴ�ʱ�䵽
??systick_delay_3:
        LDR.N    R0,??DataTable3_3  ;; 0xe000e010
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+15
        BPL.N    ??systick_delay_3
//   56 }
??systick_delay_0:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock1
//   57 
//   58 /*!
//   59  *  @brief      SysTick��ʱ����
//   60  *  @param      ms          ��ʱʱ��
//   61  *  @since      v5.0
//   62  *  Sample usage:       systick_delay_ms(32);     // systick ��ʱ32 ms
//   63  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function systick_delay_ms
        THUMB
//   64 void systick_delay_ms(uint32 ms)
//   65 {
systick_delay_ms:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//   66     while(ms--)
??systick_delay_ms_0:
        MOVS     R0,R4
        SUBS     R4,R0,#+1
        CMP      R0,#+0
        BEQ.N    ??systick_delay_ms_1
//   67     {
//   68         systick_delay(SYSTICK_CLK_KHZ);
        LDR.N    R0,??DataTable3_6
        LDR      R0,[R0, #+0]
          CFI FunCall systick_delay
        BL       systick_delay
        B.N      ??systick_delay_ms_0
//   69     }
//   70 }
??systick_delay_ms_1:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock2
//   71 
//   72 /*!
//   73  *  @brief      SysTick��ʱ����
//   74  *  @param      time          ��ʱʱ��(0~65535)
//   75  *  @since      v5.0
//   76  *  Sample usage:       systick_timing(32);     // systick ��ʱ 32 ��ϵͳ����
//   77  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function systick_timing
        THUMB
//   78 void systick_timing(uint32 time)
//   79 {
systick_timing:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//   80 
//   81     ASSERT(time <= (SysTick_RVR_RELOAD_MASK >> SysTick_RVR_RELOAD_SHIFT));  //24λ
        CMP      R4,#+16777216
        BCC.N    ??systick_timing_0
        MOVS     R1,#+81
        LDR.N    R0,??DataTable3_2
          CFI FunCall assert_failed
        BL       assert_failed
//   82 
//   83     SYST_RVR = time;                        //������ʱʱ��
??systick_timing_0:
        LDR.N    R0,??DataTable3_4  ;; 0xe000e014
        STR      R4,[R0, #+0]
//   84 
//   85     //�������ȼ�
//   86     NVIC_SetPriority (SysTick_IRQn, (1 << __NVIC_PRIO_BITS) - 1); /* set Priority for Cortex-M4 System Interrupts */
        MOVS     R1,#+15
        MOVS     R0,#-1
          CFI FunCall NVIC_SetPriority
        BL       NVIC_SetPriority
//   87 
//   88     SYST_CVR = 0x00;                        //��ռ�����
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_5  ;; 0xe000e018
        STR      R0,[R1, #+0]
//   89 
//   90     SYST_CSR = ( 0
//   91                  | SysTick_CSR_ENABLE_MASK       //ʹ�� systick
//   92                  | SysTick_CSR_TICKINT_MASK      //ʹ���ж� (ע���˱�ʾ�ر��ж�)
//   93                  | SysTick_CSR_CLKSOURCE_MASK    //ʱ��Դѡ�� ( core clk)
//   94                );
        MOVS     R0,#+7
        LDR.N    R1,??DataTable3_3  ;; 0xe000e010
        STR      R0,[R1, #+0]
//   95 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     0xe000ed18

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     0xe000e400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     ?_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     0xe000e010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DC32     0xe000e014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_5:
        DC32     0xe000e018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_6:
        DC32     core_clk_khz

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_0:
        DC8 44H, 3AH, 5CH, 0E7H, 0ACH, 0ACH, 0E5H, 8DH
        DC8 81H, 0E4H, 0BAH, 8CH, 0E5H, 0B1H, 8AH, 0E7H
        DC8 94H, 0B5H, 0E7H, 0A3H, 81H, 0E7H, 0BBH, 84H
        DC8 5CH, 43H, 61H, 72H, 5CH, 43H, 68H, 69H
        DC8 70H, 5CH, 73H, 72H, 63H, 5CH, 4DH, 4BH
        DC8 36H, 30H, 5FH, 53H, 79H, 73H, 54H, 69H
        DC8 63H, 6BH, 2EH, 63H, 0
        DC8 0, 0, 0

        END
//   96 
//   97 
//   98 
//   99 
// 
//  56 bytes in section .rodata
// 190 bytes in section .text
// 
// 190 bytes of CODE  memory
//  56 bytes of CONST memory
//
//Errors: none
//Warnings: none
