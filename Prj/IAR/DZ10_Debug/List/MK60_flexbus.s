///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      12/Jun/2017  17:32:53
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\@@@@@@@\Car\Chip\src\MK60_flexbus.c
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EWD4F7.tmp
//        (D:\@@@@@@@\Car\Chip\src\MK60_flexbus.c -D DEBUG -D
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
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\MK60_flexbus.s
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

        EXTERN port_init

        PUBLIC flexbus_8080_init
        
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
        
// D:\@@@@@@@\Car\Chip\src\MK60_flexbus.c
//    1 /*!
//    2  *     COPYRIGHT NOTICE
//    3  *     Copyright (c) 2013,ɽ��Ƽ�
//    4  *     All rights reserved.
//    5  *     �������ۣ�ɽ����̳ http://www.vcan123.com
//    6  *
//    7  *     ��ע�������⣬�����������ݰ�Ȩ����ɽ��Ƽ����У�δ����������������ҵ��;��
//    8  *     �޸�����ʱ���뱣��ɽ��Ƽ��İ�Ȩ������
//    9  *
//   10  * @file       MK60_flexbus.c
//   11  * @brief      flexbus������
//   12  * @author     ɽ��Ƽ�
//   13  * @version    v5.0
//   14  * @date       2013-09-02
//   15  */
//   16 
//   17 #include "common.h"
//   18 #include "MK60_flexbus.h"
//   19 
//   20 
//   21 /*!
//   22  *  @brief      flexbus��ʼ��Ϊ8080Э��
//   23  *  @since      v5.0
//   24  */

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function flexbus_8080_init
        THUMB
//   25 void flexbus_8080_init()
//   26 {
flexbus_8080_init:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   27     //flexbus ����ֱ��֧�� 8080Э�飬����֧�� 6800Э��
//   28     //���ǿ������� cmd �� data ���ݵĵ�ַ��ͬ���Ӷ�ͨ����ַ�����������������
//   29 
//   30     SIM_SOPT2 |= SIM_SOPT2_FBSL(3);             //FlexBus��ȫˮƽ:����ָ������ݷ���
        LDR.N    R0,??flexbus_8080_init_0  ;; 0x40048004
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x300
        LDR.N    R1,??flexbus_8080_init_0  ;; 0x40048004
        STR      R0,[R1, #+0]
//   31     SIM_SCGC7 |= SIM_SCGC7_FLEXBUS_MASK;        //ʹ��ʱ��
        LDR.N    R0,??flexbus_8080_init_0+0x4  ;; 0x40048040
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??flexbus_8080_init_0+0x4  ;; 0x40048040
        STR      R0,[R1, #+0]
//   32 
//   33     //�������ݹܽŸ���
//   34     port_init(PTD6  , ALT5 | HDS);              //PTD6 ����Ϊ fb_ad[0] ,����Ϊ �������������
        MOV      R1,#+1344
        MOVS     R0,#+102
          CFI FunCall port_init
        BL       port_init
//   35     port_init(PTD5  , ALT5 | HDS);              //PTD5 ����Ϊ fb_ad[1] ,����Ϊ �������������
        MOV      R1,#+1344
        MOVS     R0,#+101
          CFI FunCall port_init
        BL       port_init
//   36     port_init(PTD4  , ALT5 | HDS);              //PTD4 ����Ϊ fb_ad[2] ,����Ϊ �������������
        MOV      R1,#+1344
        MOVS     R0,#+100
          CFI FunCall port_init
        BL       port_init
//   37     port_init(PTD3  , ALT5 | HDS);              //PTD3 ����Ϊ fb_ad[3] ,����Ϊ �������������
        MOV      R1,#+1344
        MOVS     R0,#+99
          CFI FunCall port_init
        BL       port_init
//   38     port_init(PTD2  , ALT5 | HDS);              //PTD2 ����Ϊ fb_ad[4] ,����Ϊ �������������
        MOV      R1,#+1344
        MOVS     R0,#+98
          CFI FunCall port_init
        BL       port_init
//   39     port_init(PTC10 , ALT5 | HDS);              //PTC10����Ϊ fb_ad[5] ,����Ϊ �������������
        MOV      R1,#+1344
        MOVS     R0,#+74
          CFI FunCall port_init
        BL       port_init
//   40     port_init(PTC9  , ALT5 | HDS);              //PTC9 ����Ϊ fb_ad[6] ,����Ϊ �������������
        MOV      R1,#+1344
        MOVS     R0,#+73
          CFI FunCall port_init
        BL       port_init
//   41     port_init(PTC8  , ALT5 | HDS);              //PTC8 ����Ϊ fb_ad[7] ,����Ϊ �������������
        MOV      R1,#+1344
        MOVS     R0,#+72
          CFI FunCall port_init
        BL       port_init
//   42     port_init(PTC7  , ALT5 | HDS);              //PTC7 ����Ϊ fb_ad[8] ,����Ϊ �������������
        MOV      R1,#+1344
        MOVS     R0,#+71
          CFI FunCall port_init
        BL       port_init
//   43     port_init(PTC6  , ALT5 | HDS);              //PTC6 ����Ϊ fb_ad[9] ,����Ϊ �������������
        MOV      R1,#+1344
        MOVS     R0,#+70
          CFI FunCall port_init
        BL       port_init
//   44     port_init(PTC5  , ALT5 | HDS);              //PTC5 ����Ϊ fb_ad[10],����Ϊ �������������
        MOV      R1,#+1344
        MOVS     R0,#+69
          CFI FunCall port_init
        BL       port_init
//   45     port_init(PTC4  , ALT5 | HDS);              //PTC4 ����Ϊ fb_ad[11],����Ϊ �������������
        MOV      R1,#+1344
        MOVS     R0,#+68
          CFI FunCall port_init
        BL       port_init
//   46     port_init(PTC2  , ALT5 | HDS);              //PTC2 ����Ϊ fb_ad[12],����Ϊ �������������
        MOV      R1,#+1344
        MOVS     R0,#+66
          CFI FunCall port_init
        BL       port_init
//   47     port_init(PTC1  , ALT5 | HDS);              //PTC1 ����Ϊ fb_ad[13],����Ϊ �������������
        MOV      R1,#+1344
        MOVS     R0,#+65
          CFI FunCall port_init
        BL       port_init
//   48     port_init(PTC0  , ALT5 | HDS);              //PTC0 ����Ϊ fb_ad[14],����Ϊ �������������
        MOV      R1,#+1344
        MOVS     R0,#+64
          CFI FunCall port_init
        BL       port_init
//   49     port_init(PTB18 , ALT5 | HDS);              //PTB18����Ϊ fb_ad[15],����Ϊ �������������
        MOV      R1,#+1344
        MOVS     R0,#+50
          CFI FunCall port_init
        BL       port_init
//   50 
//   51     //���ÿ��ƹܽŸ���
//   52     //8080����,��Intel����,��Ҫ�ĸ��߿����ߣ�RDдʹ��, WR��ʹ��, RS����/ָ��ѡ��, CSƬѡ
//   53     port_init(PTB19 , ALT5 | HDS);              //PTB19����Ϊ fb_oe_b  ,����Ϊ ������������� , fb_oe_b ʱ����� 8080 ���ߵ� RDдʹ��
        MOV      R1,#+1344
        MOVS     R0,#+51
          CFI FunCall port_init
        BL       port_init
//   54     port_init(PTD1  , ALT5 | HDS);              //PTD1 ����Ϊ fb_cs0_b ,����Ϊ ������������� , fb_cs0_bʱ����� 8080 ���ߵ� CSƬѡ
        MOV      R1,#+1344
        MOVS     R0,#+97
          CFI FunCall port_init
        BL       port_init
//   55     port_init(PTC11 , ALT5 | HDS);              //PTC11����Ϊ fb_r/w   ,����Ϊ ������������� , fb_r/w  ʱ����� 8080 ���ߵ� WR��ʹ��
        MOV      R1,#+1344
        MOVS     R0,#+75
          CFI FunCall port_init
        BL       port_init
//   56 
//   57     //Ŀǰ��ȱ 8080 ���ߵ� RS����/ָ��ѡ����
//   58     //flexbus�����ó������ַ�������Ŀ飨��16λ��ַ����ͬ�����Ӷ����õ�ַ�������� 8080 ���ߵ� RS����/ָ��ѡ����
//   59     //��16λ�ĵ�ַ��FB_BA ��������Ϊ 0x6000 �������ѡ��� ��ַ���� fb_ad[16] ~ fb_ad[28]
//   60     //FB_BAM����Ϊ 0x0800 ����ѡ�� fb_ad[27] ��Ϊ RS ��(0x0800 0000 == 1<<27 )
//   61     // RS == 1 ʱ �������ݣ�RS == 0 ʱ��������
//   62     //��� 0x6000 0000 Ϊ �����ַ �� 0x6800 0000 Ϊ���ݶ˿�
//   63     port_init(PTC12 , ALT5 | HDS);              //PTC12����Ϊ fb_ad[27],����Ϊ ������������� , fb_ad[27]��Ϊ8080 ���ߵ� RS����/ָ��ѡ����
        MOV      R1,#+1344
        MOVS     R0,#+76
          CFI FunCall port_init
        BL       port_init
//   64 
//   65     FB_CSAR(0) = FB_CSAR_BA(FB_BA);             // ����ַ Base address
        MOVS     R0,#+1610612736
        LDR.N    R1,??flexbus_8080_init_0+0x8  ;; 0x4000c000
        STR      R0,[R1, #+0]
//   66     FB_CSMR(0) =  ( 0
//   67                     | FB_CSMR_BAM(FB_BAM)       // BAM = 0x0800 ,���ص�ַ���� Ϊ 0x,800 FFFF ,�� Ƭѡ��Ч�ĵ�ַΪ ����ַ ~ ������ַ + ���ص�ַ���룩 ,0x0800 0000 ��Ӧ�� FB_AD27
//   68                     | FB_CSMR_V_MASK            // ʹ��Ƭѡ�ź� FB_CS0
//   69                   );
        LDR.N    R0,??flexbus_8080_init_0+0xC  ;; 0x8000001
        LDR.N    R1,??flexbus_8080_init_0+0x10  ;; 0x4000c004
        STR      R0,[R1, #+0]
//   70     FB_CSCR(0) =    FB_CSCR_BLS_MASK            //�Ҷ���
//   71                     | FB_CSCR_PS(2)             //16Byte����
//   72                     | FB_CSCR_AA_MASK           // �Զ�Ӧ��
//   73                     ;
        MOV      R0,#+896
        LDR.N    R1,??flexbus_8080_init_0+0x14  ;; 0x4000c008
        STR      R0,[R1, #+0]
//   74 
//   75 }
        POP      {R0,PC}          ;; return
        Nop      
        DATA
??flexbus_8080_init_0:
        DC32     0x40048004
        DC32     0x40048040
        DC32     0x4000c000
        DC32     0x8000001
        DC32     0x4000c004
        DC32     0x4000c008
          CFI EndBlock cfiBlock0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
// 276 bytes in section .text
// 
// 276 bytes of CODE memory
//
//Errors: none
//Warnings: none
