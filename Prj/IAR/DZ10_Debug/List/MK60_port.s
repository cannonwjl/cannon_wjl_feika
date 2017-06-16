///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      12/Jun/2017  17:32:55
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\@@@@@@@\Car\Chip\src\MK60_port.c
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EWDA6D.tmp
//        (D:\@@@@@@@\Car\Chip\src\MK60_port.c -D DEBUG -D
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
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\MK60_port.s
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

        PUBLIC PORTX
        PUBLIC port_init
        PUBLIC port_init_NoALT
        PUBLIC porta_handler
        
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
        
// D:\@@@@@@@\Car\Chip\src\MK60_port.c
//    1 /*!
//    2  *     COPYRIGHT NOTICE
//    3  *     Copyright (c) 2013,ɽ��Ƽ�
//    4  *     All rights reserved.
//    5  *     �������ۣ�ɽ����̳ http://www.vcan123.com
//    6  *
//    7  *     ��ע�������⣬�����������ݰ�Ȩ����ɽ��Ƽ����У�δ����������������ҵ��;��
//    8  *     �޸�����ʱ���뱣��ɽ��Ƽ��İ�Ȩ������
//    9  *
//   10  * @file       MK60_port.c
//   11  * @brief      port�������ú͸��ֹ�������
//   12  * @author     ɽ��Ƽ�
//   13  * @version    v5.1
//   14  * @date       2014-04-25
//   15  */
//   16 
//   17 #include "common.h"
//   18 #include "MK60_port.h"
//   19 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   20 PORT_MemMapPtr PORTX[PTX_MAX] = {PORTA_BASE_PTR, PORTB_BASE_PTR, PORTC_BASE_PTR, PORTD_BASE_PTR, PORTE_BASE_PTR};
PORTX:
        DC32 40049000H, 4004A000H, 4004B000H, 4004C000H, 4004D000H
//   21 
//   22 /*!
//   23  *  @brief      PORT��ʼ��
//   24  *  @param      PTxn    �˿�
//   25  *  @param      cfg     �˿��������ã��紥��ѡ�����������ѡ��
//   26  *  @since      v5.0
//   27  *  @note       ��port_init_NoALT��ͬ���ǣ��˺�����Ҫ���� MUX ���ù��ܣ�
//   28                 ���� MUX = ALT0
//   29  *  Sample usage:       port_init (PTA8, IRQ_RISING | PF | ALT1 | PULLUP );    //��ʼ�� PTA8 �ܽţ������ش����жϣ�����Դ�˲��������ù���ΪGPIO ����������
//   30  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function port_init
          CFI NoCalls
        THUMB
//   31 void  port_init(PTXn_e ptxn, uint32 cfg )
//   32 {
port_init:
        PUSH     {R4}
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+4
//   33     SIM_SCGC5 |= (SIM_SCGC5_PORTA_MASK << PTX(ptxn));                           //����PORTx�˿�
        LDR.N    R2,??DataTable2  ;; 0x40048038
        LDR      R3,[R2, #+0]
        MOV      R4,#+512
        MOVS     R2,R0
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSRS     R2,R2,#+5
        LSLS     R4,R4,R2
        ORRS     R3,R4,R3
        LDR.N    R2,??DataTable2  ;; 0x40048038
        STR      R3,[R2, #+0]
//   34 
//   35     PORT_ISFR_REG(PORTX_BASE(ptxn)) = (1<<PTn(ptxn));                           // ��ձ�־λ
        LDR.N    R2,??DataTable2_1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R3,R0
        ASRS     R3,R3,#+5
        LDR      R3,[R2, R3, LSL #+2]
        MOVS     R4,#+1
        ANDS     R2,R0,#0x1F
        LSLS     R4,R4,R2
        STR      R4,[R3, #+160]
//   36 
//   37     PORT_PCR_REG(PORTX_BASE(ptxn), PTn(ptxn)) = cfg;                            // ���ù��� , ȷ������ģʽ ,������������������
        LDR.N    R2,??DataTable2_1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R3,R0
        ASRS     R3,R3,#+5
        LDR      R2,[R2, R3, LSL #+2]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ANDS     R3,R0,#0x1F
        STR      R1,[R2, R3, LSL #+2]
//   38 }
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//   39 
//   40 /*!
//   41  *  @brief      PORT��ʼ��
//   42  *  @param      PTxn    �˿�
//   43  *  @param      cfg     �˿��������ã��紥��ѡ�����������ѡ��
//   44  *  @since      v5.0
//   45  *  @note       ��port_init��ͬ���ǣ��˺�������Ҫ���� MUX ���ù��ܣ���ʹ������Ҳ����Ч����
//   46                 MUX ���� Ϊԭ�ȼĴ������õ�ֵ
//   47  *  Sample usage:       port_init_NoALT (PTA8, IRQ_RISING | PF | PULLUP );    //��ʼ�� PTA8 �ܽţ������ش����жϣ�����Դ�˲���������ԭ�ȸ��ù��ܣ���������
//   48  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function port_init_NoALT
          CFI NoCalls
        THUMB
//   49 void  port_init_NoALT(PTXn_e ptxn, uint32 cfg)
//   50 {
port_init_NoALT:
        PUSH     {R4}
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+4
//   51     SIM_SCGC5 |= (SIM_SCGC5_PORTA_MASK << PTX(ptxn));                           //����PORTx�˿�
        LDR.N    R2,??DataTable2  ;; 0x40048038
        LDR      R3,[R2, #+0]
        MOV      R4,#+512
        MOVS     R2,R0
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSRS     R2,R2,#+5
        LSLS     R4,R4,R2
        ORRS     R3,R4,R3
        LDR.N    R2,??DataTable2  ;; 0x40048038
        STR      R3,[R2, #+0]
//   52 
//   53     PORT_ISFR_REG(PORTX_BASE(ptxn)) = (1<<PTn(ptxn));                           // ��ձ�־λ
        LDR.N    R2,??DataTable2_1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R3,R0
        ASRS     R3,R3,#+5
        LDR      R3,[R2, R3, LSL #+2]
        MOVS     R4,#+1
        ANDS     R2,R0,#0x1F
        LSLS     R4,R4,R2
        STR      R4,[R3, #+160]
//   54 
//   55     //���cfg���MUX�����ؼĴ������MUX
//   56     cfg &= ~PORT_PCR_MUX_MASK;                      //����MUX �ֶΣ�������Ҫ����ALT������ԭ����ALT��
        BICS     R1,R1,#0x700
//   57     cfg |=  (PORT_PCR_REG(PORTX_BASE(ptxn), PTn(ptxn)) & PORT_PCR_MUX_MASK);    //��ȡ�Ĵ��������õ� MUX
        LDR.N    R2,??DataTable2_1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R3,R0
        ASRS     R3,R3,#+5
        LDR      R2,[R2, R3, LSL #+2]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ANDS     R3,R0,#0x1F
        LDR      R2,[R2, R3, LSL #+2]
        ANDS     R2,R2,#0x700
        ORRS     R1,R2,R1
//   58 
//   59     PORT_PCR_REG(PORTX_BASE(ptxn), PTn(ptxn)) = cfg;            // ���ù��� , ȷ������ģʽ ,������������������
        LDR.N    R2,??DataTable2_1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R3,R0
        ASRS     R3,R3,#+5
        LDR      R2,[R2, R3, LSL #+2]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ANDS     R3,R0,#0x1F
        STR      R1,[R2, R3, LSL #+2]
//   60 }
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//   61 
//   62 /*!
//   63  *  @brief      PORTA�Ĳο��жϷ�����
//   64  *  @since      v5.0
//   65  *  @warning    �˺�����Ҫ�û������Լ�������ɣ�����������ṩһ��ģ��
//   66  *  Sample usage:       set_vector_handler(PORTA_VECTORn , porta_handler);    //�� porta_handler ������ӵ��ж�����������Ҫ�����ֶ�����
//   67  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function porta_handler
          CFI NoCalls
        THUMB
//   68 void porta_handler(void)
//   69 {
//   70     uint8  n = 0;    //���ź�
porta_handler:
        MOVS     R0,#+0
//   71 
//   72     //PTA6
//   73     n = 6;
        MOVS     R1,#+6
        MOVS     R0,R1
//   74     if(PORTA_ISFR & (1 << n))           //PTA6�����ж�
        LDR.N    R1,??DataTable2_2  ;; 0x400490a0
        LDR      R1,[R1, #+0]
        LSRS     R1,R1,R0
        LSLS     R1,R1,#+31
        BPL.N    ??porta_handler_0
//   75     {
//   76         PORTA_ISFR  = (1 << n);        //д1���жϱ�־λ
        MOVS     R1,#+1
        LSLS     R1,R1,R0
        LDR.N    R2,??DataTable2_2  ;; 0x400490a0
        STR      R1,[R2, #+0]
//   77 
//   78         /*  ����Ϊ�û�����  */
//   79 
//   80 
//   81         /*  ����Ϊ�û�����  */
//   82     }
//   83 
//   84     //���� PTA7 ��Ҫִ�е��û�������Ϊ func() �������ֱ�ӵ������º궨�壺
//   85     //PORT_FUNC(A,7,func);
//   86     //���������������� PTA6 ��Ч����һ���ģ�ֻ�����Ǽ����û�������
//   87 }
??porta_handler_0:
        BX       LR               ;; return
          CFI EndBlock cfiBlock2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     PORTX

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     0x400490a0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
//  20 bytes in section .data
// 218 bytes in section .text
// 
// 218 bytes of CODE memory
//  20 bytes of DATA memory
//
//Errors: none
//Warnings: none
