///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      12/Jun/2017  17:32:52
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\@@@@@@@\Car\Chip\src\misc.c
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EWCED5.tmp
//        (D:\@@@@@@@\Car\Chip\src\misc.c -D DEBUG -D
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
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\misc.s
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

        EXTERN __VECTOR_RAM
        EXTERN assert_failed

        PUBLIC set_vector_handler
        PUBLIC vcan_cpy
        PUBLIC write_vtor
        
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
        
// D:\@@@@@@@\Car\Chip\src\misc.c
//    1 /*!
//    2  *     COPYRIGHT NOTICE
//    3  *     Copyright (c) 2013,ɽ��Ƽ�
//    4  *     All rights reserved.
//    5  *     �������ۣ�ɽ����̳ http://www.vcan123.com
//    6  *
//    7  *     ��ע�������⣬�����������ݰ�Ȩ����ɽ��Ƽ����У�δ����������������ҵ��;��
//    8  *     �޸�����ʱ���뱣��ɽ��Ƽ��İ�Ȩ������
//    9  *
//   10  * @file       misc.c
//   11  * @brief      ɽ��K60 ƽ̨������Ҫ�õ��ĺ�����ʵ��
//   12  * @author     ɽ��Ƽ�
//   13  * @version    v5.0
//   14  * @date       2013-06-26
//   15  */
//   16 
//   17 #include "common.h"
//   18 #include "MK60_uart.h"
//   19 
//   20 
//   21 /*!
//   22  *  @brief      �����ж��������ַ
//   23  *  @param      vtor    �µ��ж��������ַ
//   24  *  @since      v5.0
//   25  *  @author     ��˼������˾
//   26  *  Sample usage:       write_vtor ((uint32)__VECTOR_RAM);  //�µ��ж�������ַ
//   27  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function write_vtor
        THUMB
//   28 void write_vtor (int vtor)
//   29 {
write_vtor:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//   30     ASSERT(vtor % 0x200 == 0);   //Vector Table base offset field. This value must be a multiple of 0x200.
        MOV      R0,#+512
        SDIV     R1,R4,R0
        MLS      R0,R0,R1,R4
        CMP      R0,#+0
        BEQ.N    ??write_vtor_0
        MOVS     R1,#+30
        LDR.N    R0,??DataTable1
          CFI FunCall assert_failed
        BL       assert_failed
//   31 
//   32     /* Write the VTOR with the new value */
//   33     SCB->VTOR = vtor;
??write_vtor_0:
        LDR.N    R0,??DataTable1_1  ;; 0xe000ed08
        STR      R4,[R0, #+0]
//   34 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock0
//   35 
//   36 
//   37 
//   38 /*!
//   39  *  @brief      �����ж�����������жϷ�����
//   40  *  @since      v5.0
//   41  *  @warning    ֻ���ж�������λ��icfָ����RAM����ʱ���˺�������Ч
//   42  *  Sample usage:       set_vector_handler(UART3_RX_TX_VECTORn , uart3_handler);    //�� uart3_handler ������ӵ��ж�������
//   43  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function set_vector_handler
        THUMB
//   44 void set_vector_handler(VECTORn_t vector , void pfunc_handler(void))
//   45 {
set_vector_handler:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
//   46     extern uint32 __VECTOR_RAM[];
//   47 
//   48     ASSERT(SCB->VTOR == (uint32)__VECTOR_RAM);  //���ԣ�����ж��������Ƿ��� RAM ��
        LDR.N    R0,??DataTable1_1  ;; 0xe000ed08
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable1_2
        CMP      R0,R1
        BEQ.N    ??set_vector_handler_0
        MOVS     R1,#+48
        LDR.N    R0,??DataTable1
          CFI FunCall assert_failed
        BL       assert_failed
//   49 
//   50     __VECTOR_RAM[vector] = (uint32)pfunc_handler;
??set_vector_handler_0:
        LDR.N    R0,??DataTable1_2
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        STR      R5,[R0, R4, LSL #+2]
//   51 }
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     ?_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     0xe000ed08

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     __VECTOR_RAM
//   52 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function vcan_cpy
          CFI NoCalls
        THUMB
//   53 void vcan_cpy( uint8 *dst, uint8 *src, uint32 count)
//   54 {
vcan_cpy:
        PUSH     {R4}
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+4
//   55     uint32 n;
//   56     if(count != 0)
        CMP      R2,#+0
        BEQ.N    ??vcan_cpy_0
//   57     {
//   58         //printf("-");
//   59 
//   60         n = (count + 7 ) / 8 ;
        ADDS     R4,R2,#+7
        LSRS     R4,R4,#+3
        MOVS     R3,R4
//   61         switch (count % 8 )
        ANDS     R4,R2,#0x7
        CMP      R4,#+0
        BEQ.N    ??vcan_cpy_1
        CMP      R4,#+2
        BEQ.N    ??vcan_cpy_2
        BCC.N    ??vcan_cpy_3
        CMP      R4,#+4
        BEQ.N    ??vcan_cpy_4
        BCC.N    ??vcan_cpy_5
        CMP      R4,#+6
        BEQ.N    ??vcan_cpy_6
        BCC.N    ??vcan_cpy_7
        CMP      R4,#+7
        BEQ.N    ??vcan_cpy_8
        B.N      ??vcan_cpy_0
//   62         {
//   63             do
//   64             {
//   65             case 0 :
//   66                 * dst ++ = * src ++ ;
??vcan_cpy_1:
        LDRB     R4,[R1, #+0]
        STRB     R4,[R0, #+0]
        ADDS     R1,R1,#+1
        ADDS     R0,R0,#+1
//   67             case 7 :
//   68                 * dst ++ = * src ++ ;
??vcan_cpy_8:
        LDRB     R4,[R1, #+0]
        STRB     R4,[R0, #+0]
        ADDS     R1,R1,#+1
        ADDS     R0,R0,#+1
//   69             case 6 :
//   70                 * dst ++ = * src ++ ;
??vcan_cpy_6:
        LDRB     R4,[R1, #+0]
        STRB     R4,[R0, #+0]
        ADDS     R1,R1,#+1
        ADDS     R0,R0,#+1
//   71             case 5 :
//   72                 * dst ++ = * src ++ ;
??vcan_cpy_7:
        LDRB     R4,[R1, #+0]
        STRB     R4,[R0, #+0]
        ADDS     R1,R1,#+1
        ADDS     R0,R0,#+1
//   73             case 4 :
//   74                 * dst ++ = * src ++ ;
??vcan_cpy_4:
        LDRB     R4,[R1, #+0]
        STRB     R4,[R0, #+0]
        ADDS     R1,R1,#+1
        ADDS     R0,R0,#+1
//   75             case 3 :
//   76                 * dst ++ = * src ++ ;
??vcan_cpy_5:
        LDRB     R4,[R1, #+0]
        STRB     R4,[R0, #+0]
        ADDS     R1,R1,#+1
        ADDS     R0,R0,#+1
//   77             case 2 :
//   78                 * dst ++ = * src ++ ;
??vcan_cpy_2:
        LDRB     R4,[R1, #+0]
        STRB     R4,[R0, #+0]
        ADDS     R1,R1,#+1
        ADDS     R0,R0,#+1
//   79             case 1 :
//   80                 * dst ++ = * src ++ ;
??vcan_cpy_3:
        LDRB     R4,[R1, #+0]
        STRB     R4,[R0, #+0]
        ADDS     R1,R1,#+1
        ADDS     R0,R0,#+1
//   81             }
//   82             while ( -- n >    0 );
        SUBS     R3,R3,#+1
        CMP      R3,#+0
        BNE.N    ??vcan_cpy_1
//   83         }
//   84     }
//   85 }
??vcan_cpy_0:
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock2

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_0:
        DC8 "D:\\\347\254\254\345\215\201\344\272\214\345\261\212\347\224\265\347\243\201\347\273\204\\Car\\Chip\\src\\misc.c"
        DC8 0, 0, 0

        END
//   86 
// 
//  48 bytes in section .rodata
// 198 bytes in section .text
// 
// 198 bytes of CODE  memory
//  48 bytes of CONST memory
//
//Errors: none
//Warnings: none
