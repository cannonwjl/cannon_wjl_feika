///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      12/Jun/2017  17:32:55
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\@@@@@@@\Car\Chip\src\MK60_rtc.c
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EWDB39.tmp
//        (D:\@@@@@@@\Car\Chip\src\MK60_rtc.c -D DEBUG -D
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
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\MK60_rtc.s
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

        PUBLIC rtc_close_alarm
        PUBLIC rtc_get_time
        PUBLIC rtc_init
        PUBLIC rtc_set_alarm
        PUBLIC rtc_set_time
        PUBLIC rtc_test_handler
        
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
        
// D:\@@@@@@@\Car\Chip\src\MK60_rtc.c
//    1 /*!
//    2  *     COPYRIGHT NOTICE
//    3  *     Copyright (c) 2013,ɽ��Ƽ�
//    4  *     All rights reserved.
//    5  *     �������ۣ�ɽ����̳ http://www.vcan123.com
//    6  *
//    7  *     ��ע�������⣬�����������ݰ�Ȩ����ɽ��Ƽ����У�δ����������������ҵ��;��
//    8  *     �޸�����ʱ���뱣��ɽ��Ƽ��İ�Ȩ������
//    9  *
//   10  * @file       MK60_rtc.c
//   11  * @brief      rtcģ�麯��
//   12  * @author     ɽ��Ƽ�
//   13  * @version    v5.1
//   14  * @date       2014-04-25
//   15  */
//   16 
//   17 #include "common.h"
//   18 #include "MK60_rtc.h"
//   19 
//   20 /*!
//   21  *  @brief      RTC��ʼ��
//   22  *  @since      v5.0
//   23  *  Sample usage:       rtc_init();    //RTC��ʼ��
//   24  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function rtc_init
          CFI NoCalls
        THUMB
//   25 void rtc_init(void)
//   26 {
rtc_init:
        SUB      SP,SP,#+4
          CFI CFA R13+4
//   27     volatile uint32 delay;
//   28 
//   29     SIM_SCGC6 |= SIM_SCGC6_RTC_MASK;    //���� RTC ʱ��
        LDR.N    R0,??DataTable5  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x20000000
        LDR.N    R1,??DataTable5  ;; 0x4004803c
        STR      R0,[R1, #+0]
//   30 
//   31     RTC_CR  = RTC_CR_SWR_MASK;          //��λ RTC �Ĵ������� SWR�� RTC_WAR �� RTC_RAR ��
        MOVS     R0,#+1
        LDR.N    R1,??DataTable5_1  ;; 0x4003d010
        STR      R0,[R1, #+0]
//   32     RTC_CR  &= ~RTC_CR_SWR_MASK;        //��ո�λ��־λ
        LDR.N    R0,??DataTable5_1  ;; 0x4003d010
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.N    R1,??DataTable5_1  ;; 0x4003d010
        STR      R0,[R1, #+0]
//   33     RTC_CR  = (0
//   34                | RTC_CR_OSCE_MASK       //32.768 kHz ���� ʹ��
//   35                //| RTC_CR_SC2P_MASK     //���� 2p ����
//   36                //| RTC_CR_SC4P_MASK     //���� 4p ����
//   37                //| RTC_CR_SC8P_MASK     //���� 8p ����
//   38                | RTC_CR_SC16P_MASK      //���� 16p ����
//   39                | RTC_CR_CLKO_MASK       //RTC_CLKOUT ��� 32k ʹ�� (0��ʾ�����1��ʾ��ֹ)
//   40               );
        MOV      R0,#+1792
        LDR.N    R1,??DataTable5_1  ;; 0x4003d010
        STR      R0,[R1, #+0]
//   41 
//   42     delay = 0x600000;
        MOVS     R0,#+6291456
        STR      R0,[SP, #+0]
//   43     while(delay--);                     //�ȴ� 32K �����ȶ�������ʱ����Ҫ�������ֲᣩ
??rtc_init_0:
        LDR      R0,[SP, #+0]
        SUBS     R1,R0,#+1
        STR      R1,[SP, #+0]
        CMP      R0,#+0
        BNE.N    ??rtc_init_0
//   44 
//   45     //����ʱ�䲹��
//   46     RTC_TCR = (0
//   47                | RTC_TCR_CIR(0)         //�������(���Դ�1��(0X0)��256(0xFF)�ķ�Χ��),8bit
//   48                | RTC_TCR_TCR(0)         //����ֵ�ķ�Χ�� 32*1024Hz -127 �����ڵ� 32*1024Hz +128 ���ڣ��� TCR ��ΧΪ (int8)-127 ~ (int8)128
//   49               );
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5_2  ;; 0x4003d00c
        STR      R0,[R1, #+0]
//   50 
//   51     RTC_SR &= RTC_SR_TCE_MASK;          //����RTC �����������ں������üĴ���  TSR �� TPR
        LDR.N    R0,??DataTable5_3  ;; 0x4003d014
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x10
        LDR.N    R1,??DataTable5_3  ;; 0x4003d014
        STR      R0,[R1, #+0]
//   52 
//   53     //ʱ�����������
//   54     RTC_TSR = 0;                        //��ǰʱ��
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5_4  ;; 0x4003d000
        STR      R0,[R1, #+0]
//   55     RTC_TAR = 0;                        //����ʱ��
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5_5  ;; 0x4003d008
        STR      R0,[R1, #+0]
//   56 
//   57     //�ж�����
//   58     RTC_IER = (0
//   59                //| RTC_IER_TAIE_MASK    //�����ж�ʹ�ܣ�0��ʾ��ֹ��1��ʾʹ�ܣ�
//   60                //| RTC_IER_TOIE_MASK    //����ж�ʹ�ܣ�0��ʾ��ֹ��1��ʾʹ�ܣ�
//   61                //| RTC_IER_TIIE_MASK    //��Чʱ���ж�ʹ�ܣ�0��ʾ��ֹ��1��ʾʹ�ܣ�
//   62               );
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5_6  ;; 0x4003d01c
        STR      R0,[R1, #+0]
//   63 
//   64     RTC_SR |= RTC_SR_TCE_MASK;          //ʹ��RTC ������
        LDR.N    R0,??DataTable5_3  ;; 0x4003d014
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10
        LDR.N    R1,??DataTable5_3  ;; 0x4003d014
        STR      R0,[R1, #+0]
//   65 }
        ADD      SP,SP,#+4
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//   66 
//   67 /*!
//   68  *  @brief      ���õ�ǰʱ��
//   69  *  @since      v5.0
//   70  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function rtc_set_time
          CFI NoCalls
        THUMB
//   71 void rtc_set_time(uint32 seconds)
//   72 {
//   73     RTC_SR &= ~RTC_SR_TCE_MASK;         //����RTC �����������ں������üĴ���  TSR �� TPR
rtc_set_time:
        LDR.N    R1,??DataTable5_3  ;; 0x4003d014
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x10
        LDR.N    R2,??DataTable5_3  ;; 0x4003d014
        STR      R1,[R2, #+0]
//   74     RTC_TSR = seconds;                  //��ǰʱ��
        LDR.N    R1,??DataTable5_4  ;; 0x4003d000
        STR      R0,[R1, #+0]
//   75     RTC_SR |= RTC_SR_TCE_MASK;          //ʹ��RTC ������
        LDR.N    R1,??DataTable5_3  ;; 0x4003d014
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x10
        LDR.N    R2,??DataTable5_3  ;; 0x4003d014
        STR      R1,[R2, #+0]
//   76 
//   77 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//   78 
//   79 /*!
//   80  *  @brief      ��ȡ��ǰʱ��
//   81  *  @since      v5.0
//   82  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function rtc_get_time
          CFI NoCalls
        THUMB
//   83 uint32 rtc_get_time(void)
//   84 {
//   85     return RTC_TSR;
rtc_get_time:
        LDR.N    R0,??DataTable5_4  ;; 0x4003d000
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
//   86 }
          CFI EndBlock cfiBlock2
//   87 
//   88 
//   89 /*!
//   90  *  @brief      ����RTC����ʱ�䣬ʹ�������ж�
//   91  *  @param      alarm    ����ʱ��
//   92  *  @return     �������ӽ��(0��ʾʧ�ܣ�1��ʾ�ɹ�)
//   93  *  @since      v5.0
//   94  *  Sample usage:       if( rtc_set_alarm(sec) == 0 )       //��������ʱ�� Ϊ sec
//   95                         {
//   96                             printf("\n��������ʧ�ܣ��������ù�ȥ��ʱ��Ϊ����ʱ��!");
//   97                         }
//   98  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function rtc_set_alarm
          CFI NoCalls
        THUMB
//   99 uint8 rtc_set_alarm(uint32 alarm)
//  100 {
rtc_set_alarm:
        MOVS     R1,R0
//  101     if(alarm < RTC_TSR)                 //����ʱ�䲻��Ϊ��ȥʱ��
        LDR.N    R0,??DataTable5_4  ;; 0x4003d000
        LDR      R0,[R0, #+0]
        CMP      R1,R0
        BCS.N    ??rtc_set_alarm_0
//  102     {
//  103         return 0;
        MOVS     R0,#+0
        B.N      ??rtc_set_alarm_1
//  104     }
//  105 
//  106     RTC_SR &= ~RTC_SR_TCE_MASK;         //����RTC �����������ں������üĴ���  TSR �� TPR
??rtc_set_alarm_0:
        LDR.N    R0,??DataTable5_3  ;; 0x4003d014
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x10
        LDR.N    R2,??DataTable5_3  ;; 0x4003d014
        STR      R0,[R2, #+0]
//  107 
//  108     RTC_TAR = alarm;                    //����ʱ��
        LDR.N    R0,??DataTable5_5  ;; 0x4003d008
        STR      R1,[R0, #+0]
//  109     RTC_SR |= RTC_SR_TCE_MASK;          //ʹ��RTC ������
        LDR.N    R0,??DataTable5_3  ;; 0x4003d014
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10
        LDR.N    R2,??DataTable5_3  ;; 0x4003d014
        STR      R0,[R2, #+0]
//  110 
//  111     RTC_IER |= RTC_IER_TAIE_MASK;       //ʹ�������ж�
        LDR.N    R0,??DataTable5_6  ;; 0x4003d01c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.N    R2,??DataTable5_6  ;; 0x4003d01c
        STR      R0,[R2, #+0]
//  112 
//  113     return 1;
        MOVS     R0,#+1
??rtc_set_alarm_1:
        BX       LR               ;; return
//  114 }
          CFI EndBlock cfiBlock3
//  115 
//  116 /*!
//  117  *  @brief      �ر������ж�
//  118  *  @since      v5.0
//  119  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function rtc_close_alarm
          CFI NoCalls
        THUMB
//  120 void rtc_close_alarm()
//  121 {
//  122     RTC_IER &= ~RTC_IER_TAIE_MASK;      //��ֹ�����ж�
rtc_close_alarm:
        LDR.N    R0,??DataTable5_6  ;; 0x4003d01c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x4
        LDR.N    R1,??DataTable5_6  ;; 0x4003d01c
        STR      R0,[R1, #+0]
//  123 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock4
//  124 
//  125 /*!
//  126  *  @brief      RTC�����жϷ�����
//  127  *  @since      v5.0
//  128  *  @warning    �˺�����Ҫ�û������Լ�������ɣ�����������ṩһ��ģ��
//  129  *  Sample usage:       set_vector_handler(RTC_VECTORn , rtc_test_handler);    //�� rtc_test_handler ������ӵ��ж�����������Ҫ�����ֶ�����
//  130  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function rtc_test_handler
          CFI NoCalls
        THUMB
//  131 void rtc_test_handler(void)
//  132 {
//  133     uint32 sr = RTC_SR;
rtc_test_handler:
        LDR.N    R0,??DataTable5_3  ;; 0x4003d014
        LDR      R0,[R0, #+0]
//  134 
//  135     if(sr & RTC_SR_TIF_MASK) //��Ч����
        LSLS     R1,R0,#+31
        BPL.N    ??rtc_test_handler_0
//  136     {
//  137         //��TIF��TOFλ�����ü���ʱдTSR�Ĵ����ͻ���մ�λ
//  138         RTC_SR = (0
//  139                   //| RTC_SR_TCE_MASK    //����ʹ��(0Ϊ��ֹ��1Ϊʹ��)
//  140                   );
        MOVS     R1,#+0
        LDR.N    R2,??DataTable5_3  ;; 0x4003d014
        STR      R1,[R2, #+0]
//  141         RTC_TSR = 0;  //������Ĵ�����д���������TIFλ
        MOVS     R1,#+0
        LDR.N    R2,??DataTable5_4  ;; 0x4003d000
        STR      R1,[R2, #+0]
//  142 
//  143         //�������û������Լ��Ĵ���
//  144         //printf("\nRTC��Ч����");
//  145     }
//  146 
//  147     if(sr & RTC_SR_TOF_MASK)  //���
??rtc_test_handler_0:
        LSLS     R1,R0,#+30
        BPL.N    ??rtc_test_handler_1
//  148     {
//  149 
//  150         //��TIF��TOFλ�����ü���ʱдTSR�Ĵ����ͻ���մ�λ
//  151         RTC_SR = (0
//  152                   //| RTC_SR_TCE_MASK    //����ʹ��(0Ϊ��ֹ��1Ϊʹ��)
//  153                   );
        MOVS     R1,#+0
        LDR.N    R2,??DataTable5_3  ;; 0x4003d014
        STR      R1,[R2, #+0]
//  154         RTC_TSR = 0;  //������Ĵ�����д���������TIFλ
        MOVS     R1,#+0
        LDR.N    R2,??DataTable5_4  ;; 0x4003d000
        STR      R1,[R2, #+0]
//  155 
//  156         //�������û������Լ��Ĵ���
//  157         //printf("\nRTC���");
//  158     }
//  159 
//  160     if(sr & RTC_SR_TAF_MASK)  //����
??rtc_test_handler_1:
        LSLS     R1,R0,#+29
        BPL.N    ??rtc_test_handler_2
//  161     {
//  162         //д TAR ����� SR_TAF
//  163         RTC_TAR = 0;
        MOVS     R1,#+0
        LDR.N    R2,??DataTable5_5  ;; 0x4003d008
        STR      R1,[R2, #+0]
//  164 
//  165         //�������û������Լ��Ĵ���
//  166         //printf("\nRTC����");
//  167     }
//  168 
//  169 
//  170 
//  171 
//  172 }
??rtc_test_handler_2:
        BX       LR               ;; return
          CFI EndBlock cfiBlock5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DC32     0x4003d010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_2:
        DC32     0x4003d00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_3:
        DC32     0x4003d014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_4:
        DC32     0x4003d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_5:
        DC32     0x4003d008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_6:
        DC32     0x4003d01c

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
// 292 bytes in section .text
// 
// 292 bytes of CODE memory
//
//Errors: none
//Warnings: none
