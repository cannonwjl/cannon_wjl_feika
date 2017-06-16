///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      12/Jun/2017  17:32:54
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\@@@@@@@\Car\Chip\src\MK60_lptmr.c
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EWD818.tmp
//        (D:\@@@@@@@\Car\Chip\src\MK60_lptmr.c -D DEBUG -D
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
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\MK60_lptmr.s
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
        EXTERN port_init

        PUBLIC lptmr_delay_ms
        PUBLIC lptmr_delay_us
        PUBLIC lptmr_pulse_clean
        PUBLIC lptmr_pulse_get
        PUBLIC lptmr_pulse_init
        PUBLIC lptmr_test_handler
        PUBLIC lptmr_time_close
        PUBLIC lptmr_time_get_ms
        PUBLIC lptmr_time_get_us
        PUBLIC lptmr_time_start_ms
        PUBLIC lptmr_time_start_us
        PUBLIC lptmr_timing_ms
        PUBLIC lptmr_timing_us
        
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
        
// D:\@@@@@@@\Car\Chip\src\MK60_lptmr.c
//    1 /*!
//    2  *     COPYRIGHT NOTICE
//    3  *     Copyright (c) 2013,ɽ��Ƽ�
//    4  *     All rights reserved.
//    5  *     �������ۣ�ɽ����̳ http://www.vcan123.com
//    6  *
//    7  *     ��ע�������⣬�����������ݰ�Ȩ����ɽ��Ƽ����У�δ����������������ҵ��;��
//    8  *     �޸�����ʱ���뱣��ɽ��Ƽ��İ�Ȩ������
//    9  *
//   10  * @file       MK60_lptmr.c
//   11  * @brief      lptmr����������������ʱ�������������ʱ���ܴ�ʵ�֣�
//   12  * @author     ɽ��Ƽ�
//   13  * @version    v5.0
//   14  * @date       2013-06-26
//   15  */
//   16 
//   17 
//   18 #include "common.h"
//   19 #include "MK60_lptmr.h"
//   20 
//   21 /*!
//   22  *  @brief      LPTMR���������ʼ��
//   23  *  @param      LPT0_ALTn   LPTMR��������ܽ�
//   24  *  @param      count       LPTMR����Ƚ�ֵ
//   25  *  @param      LPT_CFG     LPTMR���������ʽ�������ؼ������½��ؼ���
//   26  *  @since      v5.0
//   27  *  Sample usage:       lptmr_pulse_init(LPT0_ALT1,0xFFFF,LPT_Rising);     // LPTMR �������������0xFFFF�󴥷��ж�������Ҫ���жϲ�ִ���жϷ��������������ز�׽
//   28  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function lptmr_pulse_init
        THUMB
//   29 void lptmr_pulse_init(LPT0_ALTn altn, uint16 count, LPT_CFG cfg)
//   30 {
lptmr_pulse_init:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//   31 
//   32 #if  defined(MK60F15)
//   33     OSC0_CR |= OSC_CR_ERCLKEN_MASK;                              //ʹ�� OSCERCLK
//   34 #endif
//   35 
//   36     // ����ģ��ʱ��
//   37     SIM_SCGC5 |= SIM_SCGC5_LPTIMER_MASK;                        //ʹ��LPTģ��ʱ��
        LDR.N    R0,??DataTable12  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable12  ;; 0x40048038
        STR      R0,[R1, #+0]
//   38 
//   39     //��������ܽ�
//   40     if(altn == LPT0_ALT1)
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.N    ??lptmr_pulse_init_0
//   41     {
//   42         port_init(PTA19, ALT6 );            //��PTA19��ʹ�� ALT6
        MOV      R1,#+1536
        MOVS     R0,#+19
          CFI FunCall port_init
        BL       port_init
        B.N      ??lptmr_pulse_init_1
//   43     }
//   44     else if(altn == LPT0_ALT2)
??lptmr_pulse_init_0:
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+2
        BNE.N    ??lptmr_pulse_init_2
//   45     {
//   46         port_init(PTC5, ALT4 );             //��PTC5��ʹ�� ALT4
        MOV      R1,#+1024
        MOVS     R0,#+69
          CFI FunCall port_init
        BL       port_init
        B.N      ??lptmr_pulse_init_1
//   47     }
//   48     else                                    //�����ܷ����¼�
//   49     {
//   50         ASSERT((altn == LPT0_ALT1 ) || (altn == LPT0_ALT2 ));   //���ùܽ�����
??lptmr_pulse_init_2:
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??lptmr_pulse_init_1
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+2
        BEQ.N    ??lptmr_pulse_init_1
        MOVS     R1,#+50
        LDR.N    R0,??DataTable12_1
          CFI FunCall assert_failed
        BL       assert_failed
//   51     }
//   52 
//   53     // ��״̬�Ĵ���
//   54     LPTMR0_CSR = 0x00;                                          //�ȹ���LPT��������������ʱ�ӷ�Ƶ,��ռ���ֵ��
??lptmr_pulse_init_1:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable12_2  ;; 0x40040000
        STR      R0,[R1, #+0]
//   55 
//   56 #if defined(MK60DZ10)
//   57     //ѡ��ʱ��Դ
//   58     LPTMR0_PSR  =   ( 0
//   59                       | LPTMR_PSR_PCS(1)                  //ѡ��ʱ��Դ�� 0 Ϊ MCGIRCLK ��1Ϊ LPO��1KHz�� ��2Ϊ ERCLK32K ��3Ϊ OSCERCLK
//   60                       | LPTMR_PSR_PBYP_MASK               //��· Ԥ��Ƶ/�����˲��� ,������ Ԥ��Ƶ/�����˲���(ע���˱�ʾʹ��Ԥ��Ƶ/�����˲���)
//   61                       //| LPTMR_PSR_PRESCALE(1)           //Ԥ��Ƶֵ = 2^(n+1) ,n = 0~ 0xF
//   62                     );
        MOVS     R0,#+5
        LDR.N    R1,??DataTable12_3  ;; 0x40040004
        STR      R0,[R1, #+0]
//   63 #elif defined(MK60F15)
//   64     //ѡ��ʱ��Դ
//   65     LPTMR0_PSR  =   ( 0
//   66                       | LPTMR_PSR_PCS(3)          //ѡ��ʱ��Դ�� 0 Ϊ MCGIRCLK ��1Ϊ LPO��1KHz�� ��2Ϊ ERCLK32K ��3Ϊ OSCERCLK
//   67                       //| LPTMR_PSR_PBYP_MASK     //��· Ԥ��Ƶ/�����˲��� ,������ Ԥ��Ƶ/�����˲���(ע���˱�ʾʹ��Ԥ��Ƶ/�����˲���)
//   68                       | LPTMR_PSR_PRESCALE(4)     //Ԥ��Ƶֵ = 2^(n+1) ,n = 0~ 0xF
//   69                     );
//   70 #endif
//   71 
//   72     // �����ۼӼ���ֵ
//   73     LPTMR0_CMR  =   LPTMR_CMR_COMPARE(count);                   //���ñȽ�ֵ
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        LDR.N    R0,??DataTable12_4  ;; 0x40040008
        STR      R5,[R0, #+0]
//   74 
//   75     // �ܽ����á�ʹ���ж�
//   76     LPTMR0_CSR  =  (0
//   77                     | LPTMR_CSR_TPS(altn)       // ѡ������ܽ� ѡ��
//   78                     | LPTMR_CSR_TMS_MASK        // ѡ��������� (ע���˱�ʾʱ�����ģʽ)
//   79                     | ( cfg == LPT_Falling ?  LPTMR_CSR_TPP_MASK :   0  )  //���������������ʽѡ��0Ϊ�ߵ�ƽ��Ч�������ؼ�1
//   80                     | LPTMR_CSR_TEN_MASK        //ʹ��LPT(ע���˱�ʾ����)
//   81                     | LPTMR_CSR_TIE_MASK        //�ж�ʹ��
//   82                     //| LPTMR_CSR_TFC_MASK      //0:����ֵ���ڱȽ�ֵ�͸�λ��1�������λ��ע�ͱ�ʾ0��
//   83                    );
        SXTB     R6,R6            ;; SignExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BNE.N    ??lptmr_pulse_init_3
        MOVS     R0,#+8
        B.N      ??lptmr_pulse_init_4
??lptmr_pulse_init_3:
        MOVS     R0,#+0
??lptmr_pulse_init_4:
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LSLS     R1,R4,#+4
        ANDS     R1,R1,#0x30
        ORRS     R0,R0,R1
        ORRS     R0,R0,#0x43
        LDR.N    R1,??DataTable12_2  ;; 0x40040000
        STR      R0,[R1, #+0]
//   84 }
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock0
//   85 
//   86 /*!
//   87  *  @brief      ��ȡLPTMR�������ֵ
//   88  *  @return     �������ֵ
//   89  *  @since      v5.0
//   90  *  Sample usage:       uint16 data = lptmr_pulse_get();  //��ȡ�������ֵ
//   91  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function lptmr_pulse_get
          CFI NoCalls
        THUMB
//   92 uint16 lptmr_pulse_get(void)
//   93 {
//   94     uint16 data;
//   95     if(LPTMR0_CSR & LPTMR_CSR_TCF_MASK)     //�Ѿ������
lptmr_pulse_get:
        LDR.N    R1,??DataTable12_2  ;; 0x40040000
        LDR      R1,[R1, #+0]
        LSLS     R1,R1,#+24
        BPL.N    ??lptmr_pulse_get_0
//   96     {
//   97 
//   98         data = ~0;                          //���� 0xffffffff ��ʾ����
        MOVW     R1,#+65535
        MOVS     R0,R1
        B.N      ??lptmr_pulse_get_1
//   99     }
//  100     else
//  101     {
//  102 #if defined(MK60F15)
//  103         LPTMR0_CNR = 0;
//  104 #endif
//  105         data = LPTMR0_CNR;
??lptmr_pulse_get_0:
        LDR.N    R1,??DataTable12_5  ;; 0x4004000c
        LDR      R1,[R1, #+0]
        MOVS     R0,R1
//  106     }
//  107     return data;
??lptmr_pulse_get_1:
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BX       LR               ;; return
//  108 }
          CFI EndBlock cfiBlock1
//  109 
//  110 
//  111 /*!
//  112  *  @brief      ���LPTMR�������
//  113  *  @since      v5.0
//  114  *  Sample usage:       lptmr_counter_clean();          //���LPTMR�������
//  115  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function lptmr_pulse_clean
          CFI NoCalls
        THUMB
//  116 void lptmr_pulse_clean(void)
//  117 {
//  118     LPTMR0_CSR  &= ~LPTMR_CSR_TEN_MASK;     //����LPT��ʱ��ͻ��Զ����������ֵ
lptmr_pulse_clean:
        LDR.N    R0,??DataTable12_2  ;; 0x40040000
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.N    R1,??DataTable12_2  ;; 0x40040000
        STR      R0,[R1, #+0]
//  119     LPTMR0_CSR  |= LPTMR_CSR_TEN_MASK;
        LDR.N    R0,??DataTable12_2  ;; 0x40040000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable12_2  ;; 0x40040000
        STR      R0,[R1, #+0]
//  120 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//  121 
//  122 /*!
//  123  *  @brief      LPTMR��ʱ������ms��
//  124  *  @param      ms          LPTMR��ʱʱ��(0~65535)
//  125  *  @since      v5.0
//  126  *  Sample usage:       lptmr_delay_ms(32);     // LPTMR ��ʱ32ms
//  127  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function lptmr_delay_ms
          CFI NoCalls
        THUMB
//  128 void lptmr_delay_ms(uint16 ms)
//  129 {
//  130     if(ms == 0)
lptmr_delay_ms:
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+0
        BEQ.N    ??lptmr_delay_ms_0
//  131     {
//  132         return;
//  133     }
//  134 
//  135     SIM_SCGC5 |= SIM_SCGC5_LPTIMER_MASK;    //ʹ��LPTģ��ʱ��
??lptmr_delay_ms_1:
        LDR.N    R1,??DataTable12  ;; 0x40048038
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x1
        LDR.N    R2,??DataTable12  ;; 0x40048038
        STR      R1,[R2, #+0]
//  136 
//  137     LPTMR0_CSR = 0x00;                      //�ȹ���LPT���Զ����������ֵ
        MOVS     R1,#+0
        LDR.N    R2,??DataTable12_2  ;; 0x40040000
        STR      R1,[R2, #+0]
//  138 
//  139     LPTMR0_CMR = ms;                        //���ñȽ�ֵ������ʱʱ��
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LDR.N    R1,??DataTable12_4  ;; 0x40040008
        STR      R0,[R1, #+0]
//  140 
//  141     //ѡ��ʱ��Դ
//  142     LPTMR0_PSR  =   ( 0
//  143                       | LPTMR_PSR_PCS(1)                  //ѡ��ʱ��Դ�� 0 Ϊ MCGIRCLK ��1Ϊ LPO��1KHz�� ��2Ϊ ERCLK32K ��3Ϊ OSCERCLK
//  144                       | LPTMR_PSR_PBYP_MASK               //��· Ԥ��Ƶ/�����˲��� ,������ Ԥ��Ƶ/�����˲���(ע���˱�ʾʹ��Ԥ��Ƶ/�����˲���)
//  145                       //| LPTMR_PSR_PRESCALE(1)           //Ԥ��Ƶֵ = 2^(n+1) ,n = 0~ 0xF
//  146                     );
        MOVS     R1,#+5
        LDR.N    R2,??DataTable12_3  ;; 0x40040004
        STR      R1,[R2, #+0]
//  147 
//  148     //ʹ�� LPT
//  149     LPTMR0_CSR  =  (0
//  150                     //| LPTMR_CSR_TPS(1)        // ѡ������ܽ� ѡ��
//  151                     //| LPTMR_CSR_TMS_MASK      // ѡ��������� (ע���˱�ʾʱ�����ģʽ)
//  152                     //| ( cfg == LPT_Falling ?  LPTMR_CSR_TPP_MASK :   0  )  //���������������ʽѡ��0Ϊ�ߵ�ƽ��Ч�������ؼ�1
//  153                     | LPTMR_CSR_TEN_MASK        //ʹ��LPT(ע���˱�ʾ����)
//  154                     //| LPTMR_CSR_TIE_MASK      //�ж�ʹ��
//  155                     //| LPTMR_CSR_TFC_MASK      //0:����ֵ���ڱȽ�ֵ�͸�λ��1�������λ��ע�ͱ�ʾ0��
//  156                    );
        MOVS     R1,#+1
        LDR.N    R2,??DataTable12_2  ;; 0x40040000
        STR      R1,[R2, #+0]
//  157 
//  158     while (!(LPTMR0_CSR & LPTMR_CSR_TCF_MASK)); //�ȴ��Ƚ�ֵ�����ֵ��ȣ���ʱ�䵽��
??lptmr_delay_ms_2:
        LDR.N    R1,??DataTable12_2  ;; 0x40040000
        LDR      R1,[R1, #+0]
        LSLS     R1,R1,#+24
        BPL.N    ??lptmr_delay_ms_2
//  159 
//  160     LPTMR0_CSR &= ~LPTMR_CSR_TEN_MASK;          //����Ƚϱ�־λ
        LDR.N    R1,??DataTable12_2  ;; 0x40040000
        LDR      R1,[R1, #+0]
        LSRS     R1,R1,#+1
        LSLS     R1,R1,#+1
        LDR.N    R2,??DataTable12_2  ;; 0x40040000
        STR      R1,[R2, #+0]
//  161 
//  162     return;
??lptmr_delay_ms_0:
        BX       LR               ;; return
//  163 }
          CFI EndBlock cfiBlock3
//  164 
//  165 /*!
//  166  *  @brief      LPTMR��ʱ������ms��
//  167  *  @param      ms          LPTMR��ʱʱ��(0~65535)
//  168  *  @since      v5.0
//  169  *  Sample usage:
//  170                     lptmr_timing_ms(32);                                // LPTMR ��ʱ 32ms
//  171                     set_vector_handler(LPTimer_VECTORn,lptmr_hander);   // �����жϷ��������ж���������
//  172                     enable_irq(LPTimer_IRQn);                           // ʹ��LPTMR�ж�
//  173  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function lptmr_timing_ms
          CFI NoCalls
        THUMB
//  174 void lptmr_timing_ms(uint16 ms)
//  175 {
//  176     if(ms == 0)
lptmr_timing_ms:
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+0
        BEQ.N    ??lptmr_timing_ms_0
//  177     {
//  178         return;
//  179     }
//  180 
//  181     SIM_SCGC5 |= SIM_SCGC5_LPTIMER_MASK;    //ʹ��LPTģ��ʱ��
??lptmr_timing_ms_1:
        LDR.N    R1,??DataTable12  ;; 0x40048038
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x1
        LDR.N    R2,??DataTable12  ;; 0x40048038
        STR      R1,[R2, #+0]
//  182 
//  183     LPTMR0_CSR = 0x00;                      //�ȹ���LPT���Զ����������ֵ
        MOVS     R1,#+0
        LDR.N    R2,??DataTable12_2  ;; 0x40040000
        STR      R1,[R2, #+0]
//  184 
//  185     LPTMR0_CMR = ms;                        //���ñȽ�ֵ������ʱʱ��
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LDR.N    R1,??DataTable12_4  ;; 0x40040008
        STR      R0,[R1, #+0]
//  186 
//  187     //ѡ��ʱ��Դ
//  188     LPTMR0_PSR  =   ( 0
//  189                       | LPTMR_PSR_PCS(1)                  //ѡ��ʱ��Դ�� 0 Ϊ MCGIRCLK ��1Ϊ LPO��1KHz�� ��2Ϊ ERCLK32K ��3Ϊ OSCERCLK
//  190                       | LPTMR_PSR_PBYP_MASK               //��· Ԥ��Ƶ/�����˲��� ,������ Ԥ��Ƶ/�����˲���(ע���˱�ʾʹ��Ԥ��Ƶ/�����˲���)
//  191                       //| LPTMR_PSR_PRESCALE(1)           //Ԥ��Ƶֵ = 2^(n+1) ,n = 0~ 0xF
//  192                     );
        MOVS     R1,#+5
        LDR.N    R2,??DataTable12_3  ;; 0x40040004
        STR      R1,[R2, #+0]
//  193 
//  194     //ʹ�� LPT
//  195     LPTMR0_CSR  =  (0
//  196                     //| LPTMR_CSR_TPS(1)        // ѡ������ܽ� ѡ��
//  197                     //| LPTMR_CSR_TMS_MASK      // ѡ��������� (ע���˱�ʾʱ�����ģʽ)
//  198                     //| ( cfg == LPT_Falling ?  LPTMR_CSR_TPP_MASK :   0  )  //���������������ʽѡ��0Ϊ�ߵ�ƽ��Ч�������ؼ�1
//  199                     | LPTMR_CSR_TEN_MASK        //ʹ��LPT(ע���˱�ʾ����)
//  200                     | LPTMR_CSR_TIE_MASK        //�ж�ʹ��
//  201                     //| LPTMR_CSR_TFC_MASK      //0:����ֵ���ڱȽ�ֵ�͸�λ��1�������λ��ע�ͱ�ʾ0��
//  202                    );
        MOVS     R1,#+65
        LDR.N    R2,??DataTable12_2  ;; 0x40040000
        STR      R1,[R2, #+0]
//  203 
//  204     return;
??lptmr_timing_ms_0:
        BX       LR               ;; return
//  205 }
          CFI EndBlock cfiBlock4
//  206 
//  207 /*!
//  208  *  @brief      LPTMR��ʱ������us��
//  209  *  @param      ms          LPTMR��ʱʱ��(0~41942)
//  210  *  @since      v5.0
//  211  *  Sample usage:       lptmr_delay_us(32);     // LPTMR ��ʱ32us
//  212  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function lptmr_delay_us
        THUMB
//  213 void lptmr_delay_us(uint16 us)
//  214 {
lptmr_delay_us:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//  215     ASSERT( ( (us * EXTAL_IN_MHz + 16) /  32 )  <= 0xFFFF );    //���ԣ�ȷ���Ĵ��������
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        MOVS     R0,#+50
        MUL      R0,R0,R4
        ADDS     R0,R0,#+16
        MOVS     R1,#+32
        SDIV     R0,R0,R1
        CMP      R0,#+65536
        BLT.N    ??lptmr_delay_us_0
        MOVS     R1,#+215
        LDR.N    R0,??DataTable12_1
          CFI FunCall assert_failed
        BL       assert_failed
//  216     //us * ����Ƶ��  /32 <= 0xFFFF
//  217     //���� 32 ��������ļ��������� ��Ƶ
//  218     //���� 16��Ϊ�� ��������
//  219 
//  220     if(us == 0)
??lptmr_delay_us_0:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+0
        BEQ.N    ??lptmr_delay_us_1
//  221     {
//  222         return;
//  223     }
//  224 #if defined(MK60DZ10)
//  225     OSC_CR |= OSC_CR_ERCLKEN_MASK;                              //ʹ�� OSCERCLK
??lptmr_delay_us_2:
        LDR.N    R0,??DataTable12_6  ;; 0x40065000
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.N    R1,??DataTable12_6  ;; 0x40065000
        STRB     R0,[R1, #+0]
//  226 #elif defined(MK60F15)
//  227     OSC0_CR |= OSC_CR_ERCLKEN_MASK;                              //ʹ�� OSCERCLK
//  228 #endif
//  229 
//  230     SIM_SCGC5 |= SIM_SCGC5_LPTIMER_MASK;                        //ʹ��LPTģ��ʱ��
        LDR.N    R0,??DataTable12  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable12  ;; 0x40048038
        STR      R0,[R1, #+0]
//  231 
//  232     LPTMR0_CSR = 0x00;                                          //�ȹ���LPT���Զ����������ֵ
        MOVS     R0,#+0
        LDR.N    R1,??DataTable12_2  ;; 0x40040000
        STR      R0,[R1, #+0]
//  233 
//  234     LPTMR0_CMR = (us * EXTAL_IN_MHz + 16) / 32;                 //���ñȽ�ֵ������ʱʱ��
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        MOVS     R0,#+50
        MUL      R0,R0,R4
        ADDS     R0,R0,#+16
        MOVS     R1,#+32
        SDIV     R0,R0,R1
        LDR.N    R1,??DataTable12_4  ;; 0x40040008
        STR      R0,[R1, #+0]
//  235 
//  236     //ѡ��ʱ��Դ
//  237     LPTMR0_PSR  =   ( 0
//  238                       | LPTMR_PSR_PCS(3)          //ѡ��ʱ��Դ�� 0 Ϊ MCGIRCLK ��1Ϊ LPO��1KHz�� ��2Ϊ ERCLK32K ��3Ϊ OSCERCLK
//  239                       //| LPTMR_PSR_PBYP_MASK     //��· Ԥ��Ƶ/�����˲��� ,������ Ԥ��Ƶ/�����˲���(ע���˱�ʾʹ��Ԥ��Ƶ/�����˲���)
//  240                       | LPTMR_PSR_PRESCALE(4)     //Ԥ��Ƶֵ = 2^(n+1) ,n = 0~ 0xF
//  241                     );
        MOVS     R0,#+35
        LDR.N    R1,??DataTable12_3  ;; 0x40040004
        STR      R0,[R1, #+0]
//  242 
//  243     //ʹ�� LPT
//  244     LPTMR0_CSR  =  (0
//  245                     //| LPTMR_CSR_TPS(1)        // ѡ������ܽ� ѡ��
//  246                     //| LPTMR_CSR_TMS_MASK      // ѡ��������� (ע���˱�ʾʱ�����ģʽ)
//  247                     //| ( cfg == LPT_Falling ?  LPTMR_CSR_TPP_MASK :   0  )  //���������������ʽѡ��0Ϊ�ߵ�ƽ��Ч�������ؼ�1
//  248                     | LPTMR_CSR_TEN_MASK        //ʹ��LPT(ע���˱�ʾ����)
//  249                     //| LPTMR_CSR_TIE_MASK      //�ж�ʹ��
//  250                     //| LPTMR_CSR_TFC_MASK      //0:����ֵ���ڱȽ�ֵ�͸�λ��1�������λ��ע�ͱ�ʾ0��
//  251                    );
        MOVS     R0,#+1
        LDR.N    R1,??DataTable12_2  ;; 0x40040000
        STR      R0,[R1, #+0]
//  252 
//  253     while (!(LPTMR0_CSR & LPTMR_CSR_TCF_MASK)); //�ȴ��Ƚ�ֵ�����ֵ��ȣ���ʱ�䵽��
??lptmr_delay_us_3:
        LDR.N    R0,??DataTable12_2  ;; 0x40040000
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??lptmr_delay_us_3
//  254 
//  255     LPTMR0_CSR &= ~LPTMR_CSR_TEN_MASK;          //����Ƚϱ�־λ
        LDR.N    R0,??DataTable12_2  ;; 0x40040000
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.N    R1,??DataTable12_2  ;; 0x40040000
        STR      R0,[R1, #+0]
//  256 
//  257     return;
??lptmr_delay_us_1:
        POP      {R4,PC}          ;; return
//  258 }
          CFI EndBlock cfiBlock5
//  259 
//  260 
//  261 
//  262 /*!
//  263  *  @brief      LPTMR��ʱ������us��
//  264  *  @param      ms          LPTMR��ʱʱ��(0~41942)
//  265  *  @since      v5.0
//  266  *  Sample usage:
//  267                     lptmr_timing_us(32);     // LPTMR ��ʱ32us
//  268                     set_vector_handler(LPTimer_VECTORn,lptmr_hander);   // �����жϷ��������ж���������
//  269                     enable_irq(LPTimer_IRQn);                           // ʹ��LPTMR�ж�
//  270  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function lptmr_timing_us
        THUMB
//  271 void lptmr_timing_us(uint16 us)
//  272 {
lptmr_timing_us:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//  273     ASSERT( ( (us * EXTAL_IN_MHz + 16) /  32 )  <= 0xFFFF );    //���ԣ�ȷ���Ĵ��������
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        MOVS     R0,#+50
        MUL      R0,R0,R4
        ADDS     R0,R0,#+16
        MOVS     R1,#+32
        SDIV     R0,R0,R1
        CMP      R0,#+65536
        BLT.N    ??lptmr_timing_us_0
        MOVW     R1,#+273
        LDR.N    R0,??DataTable12_1
          CFI FunCall assert_failed
        BL       assert_failed
//  274     //us * ����Ƶ��  /32 <= 0xFFFF
//  275     //���� 32 ��������ļ��������� ��Ƶ
//  276     //���� 16��Ϊ�� ��������
//  277 
//  278     if(us == 0)
??lptmr_timing_us_0:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+0
        BEQ.N    ??lptmr_timing_us_1
//  279     {
//  280         return;
//  281     }
//  282 
//  283 #if defined(MK60DZ10)
//  284     OSC_CR |= OSC_CR_ERCLKEN_MASK;                              //ʹ�� OSCERCLK
??lptmr_timing_us_2:
        LDR.N    R0,??DataTable12_6  ;; 0x40065000
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.N    R1,??DataTable12_6  ;; 0x40065000
        STRB     R0,[R1, #+0]
//  285 #elif defined(MK60F15)
//  286     OSC0_CR |= OSC_CR_ERCLKEN_MASK;                              //ʹ�� OSCERCLK
//  287 #endif
//  288 
//  289     SIM_SCGC5 |= SIM_SCGC5_LPTIMER_MASK;                        //ʹ��LPTģ��ʱ��
        LDR.N    R0,??DataTable12  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable12  ;; 0x40048038
        STR      R0,[R1, #+0]
//  290 
//  291     LPTMR0_CSR = 0x00;                                          //�ȹ���LPT���Զ����������ֵ
        MOVS     R0,#+0
        LDR.N    R1,??DataTable12_2  ;; 0x40040000
        STR      R0,[R1, #+0]
//  292 
//  293     LPTMR0_CMR = (us * EXTAL_IN_MHz + 16) / 32;                 //���ñȽ�ֵ������ʱʱ��
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        MOVS     R0,#+50
        MUL      R0,R0,R4
        ADDS     R0,R0,#+16
        MOVS     R1,#+32
        SDIV     R0,R0,R1
        LDR.N    R1,??DataTable12_4  ;; 0x40040008
        STR      R0,[R1, #+0]
//  294 
//  295     //ѡ��ʱ��Դ
//  296     LPTMR0_PSR  =   ( 0
//  297                       | LPTMR_PSR_PCS(3)          //ѡ��ʱ��Դ�� 0 Ϊ MCGIRCLK ��1Ϊ LPO��1KHz�� ��2Ϊ ERCLK32K ��3Ϊ OSCERCLK
//  298                       //| LPTMR_PSR_PBYP_MASK     //��· Ԥ��Ƶ/�����˲��� ,������ Ԥ��Ƶ/�����˲���(ע���˱�ʾʹ��Ԥ��Ƶ/�����˲���)
//  299                       | LPTMR_PSR_PRESCALE(4)     //Ԥ��Ƶֵ = 2^(n+1) ,n = 0~ 0xF
//  300                     );
        MOVS     R0,#+35
        LDR.N    R1,??DataTable12_3  ;; 0x40040004
        STR      R0,[R1, #+0]
//  301 
//  302     //ʹ�� LPT
//  303     LPTMR0_CSR  =  (0
//  304                     //| LPTMR_CSR_TPS(1)        // ѡ������ܽ� ѡ��
//  305                     //| LPTMR_CSR_TMS_MASK      // ѡ��������� (ע���˱�ʾʱ�����ģʽ)
//  306                     //| ( cfg == LPT_Falling ?  LPTMR_CSR_TPP_MASK :   0  )  //���������������ʽѡ��0Ϊ�ߵ�ƽ��Ч�������ؼ�1
//  307                     | LPTMR_CSR_TEN_MASK        //ʹ��LPT(ע���˱�ʾ����)
//  308                     | LPTMR_CSR_TIE_MASK      //�ж�ʹ��
//  309                     //| LPTMR_CSR_TFC_MASK      //0:����ֵ���ڱȽ�ֵ�͸�λ��1�������λ��ע�ͱ�ʾ0��
//  310                    );
        MOVS     R0,#+65
        LDR.N    R1,??DataTable12_2  ;; 0x40040000
        STR      R0,[R1, #+0]
//  311 
//  312     return;
??lptmr_timing_us_1:
        POP      {R4,PC}          ;; return
//  313 }
          CFI EndBlock cfiBlock6
//  314 
//  315 
//  316 
//  317 /*!
//  318  *  @brief      LPTMR��ʱ������ms,��ʱʱ�����Ϊ65534ms��
//  319  *  @since      v5.0
//  320  *  Sample usage:
//  321                     void my_delay(uint32 time)
//  322                     {
//  323                         volatile uint32 i = time;
//  324                         while(i--);
//  325 
//  326                     }
//  327 
//  328 
//  329                     lptmr_time_start_ms();
//  330 
//  331                     my_delay(600000);
//  332                     i = lptmr_time_get_ms();
//  333                     if(i == ~0)
//  334                     {
//  335                         printf("\n��ʱʱ�䳬ʱ");
//  336                     }
//  337                     else
//  338                     {
//  339                         printf("\n��ʱʱ��Ϊ��%dms",i);
//  340                     }
//  341  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function lptmr_time_start_ms
          CFI NoCalls
        THUMB
//  342 void lptmr_time_start_ms(void)
//  343 {
//  344     SIM_SCGC5 |= SIM_SCGC5_LPTIMER_MASK;    //ʹ��LPTģ��ʱ��
lptmr_time_start_ms:
        LDR.N    R0,??DataTable12  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable12  ;; 0x40048038
        STR      R0,[R1, #+0]
//  345 
//  346     LPTMR0_CSR = 0x00;                      //�ȹ���LPT���Զ����������ֵ
        MOVS     R0,#+0
        LDR.N    R1,??DataTable12_2  ;; 0x40040000
        STR      R0,[R1, #+0]
//  347 
//  348     LPTMR0_CMR = ~0;                        //���ñȽ�ֵ������ʱʱ��
        MOVS     R0,#-1
        LDR.N    R1,??DataTable12_4  ;; 0x40040008
        STR      R0,[R1, #+0]
//  349 
//  350     //ѡ��ʱ��Դ
//  351     LPTMR0_PSR  =   ( 0
//  352                       | LPTMR_PSR_PCS(1)                  //ѡ��ʱ��Դ�� 0 Ϊ MCGIRCLK ��1Ϊ LPO��1KHz�� ��2Ϊ ERCLK32K ��3Ϊ OSCERCLK
//  353                       | LPTMR_PSR_PBYP_MASK               //��· Ԥ��Ƶ/�����˲��� ,������ Ԥ��Ƶ/�����˲���(ע���˱�ʾʹ��Ԥ��Ƶ/�����˲���)
//  354                       //| LPTMR_PSR_PRESCALE(1)           //Ԥ��Ƶֵ = 2^(n+1) ,n = 0~ 0xF
//  355                     );
        MOVS     R0,#+5
        LDR.N    R1,??DataTable12_3  ;; 0x40040004
        STR      R0,[R1, #+0]
//  356 
//  357     //ʹ�� LPT
//  358     LPTMR0_CSR  =  (0
//  359                     //| LPTMR_CSR_TPS(1)        // ѡ������ܽ� ѡ��
//  360                     //| LPTMR_CSR_TMS_MASK      // ѡ��������� (ע���˱�ʾʱ�����ģʽ)
//  361                     //| ( cfg == LPT_Falling ?  LPTMR_CSR_TPP_MASK :   0  )  //���������������ʽѡ��0Ϊ�ߵ�ƽ��Ч�������ؼ�1
//  362                     | LPTMR_CSR_TEN_MASK        //ʹ��LPT(ע���˱�ʾ����)
//  363                     //| LPTMR_CSR_TIE_MASK      //�ж�ʹ��
//  364                     //| LPTMR_CSR_TFC_MASK      //0:����ֵ���ڱȽ�ֵ�͸�λ��1�������λ��ע�ͱ�ʾ0��
//  365                    );
        MOVS     R0,#+1
        LDR.N    R1,??DataTable12_2  ;; 0x40040000
        STR      R0,[R1, #+0]
//  366     return;
        BX       LR               ;; return
//  367 }
          CFI EndBlock cfiBlock7
//  368 
//  369 
//  370 
//  371 
//  372 /*!
//  373  *  @brief      ��ȡLPTMR��ʱʱ�䣨ms��
//  374 *   @return     ��ʱʱ�䣨����ֵΪ ~0 ��ʾ��ʱ��ʱ������ֵ�� 0~ 65534ms ������ ��
//  375  *  @since      v5.0
//  376  *  Sample usage:   �ο� lptmr_time_start_ms �ĵ�������
//  377  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function lptmr_time_get_ms
          CFI NoCalls
        THUMB
//  378 uint32 lptmr_time_get_ms(void)
//  379 {
//  380     uint32 data;
//  381 
//  382     if(LPTMR0_CSR & LPTMR_CSR_TCF_MASK)     //�Ѿ������
lptmr_time_get_ms:
        LDR.N    R1,??DataTable12_2  ;; 0x40040000
        LDR      R1,[R1, #+0]
        LSLS     R1,R1,#+24
        BPL.N    ??lptmr_time_get_ms_0
//  383     {
//  384 
//  385         data = ~0;                          //���� 0xffffffff ��ʾ����
        MOVS     R1,#-1
        MOVS     R0,R1
        B.N      ??lptmr_time_get_ms_1
//  386     }
//  387     else
//  388     {
//  389 #if defined(MK60F15)
//  390         LPTMR0_CNR = 0;
//  391 #endif
//  392         data = LPTMR0_CNR;                  //���ؼ�ʱʱ��(��ֵ���Ϊ 0xffff)
??lptmr_time_get_ms_0:
        LDR.N    R1,??DataTable12_5  ;; 0x4004000c
        LDR      R1,[R1, #+0]
        MOVS     R0,R1
//  393     }
//  394 
//  395     return data;
??lptmr_time_get_ms_1:
        BX       LR               ;; return
//  396 }
          CFI EndBlock cfiBlock8
//  397 
//  398 /*!
//  399  *  @brief      �ر� LPTMR��ʱ
//  400  *  @since      v5.0
//  401  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function lptmr_time_close
          CFI NoCalls
        THUMB
//  402 void lptmr_time_close()
//  403 {
//  404     LPTMR0_CSR = 0x00;                                          //�ȹ���LPT���Զ����������ֵ�����������
lptmr_time_close:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable12_2  ;; 0x40040000
        STR      R0,[R1, #+0]
//  405 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock9
//  406 
//  407 /*!
//  408  *  @brief      LPTMR��ʱ������us,��ʱʱ�����Ϊ41942us��
//  409  *  @since      v5.0
//  410  *  Sample usage:
//  411                     void my_delay(uint32 time)
//  412                     {
//  413                         volatile uint32 i = time;
//  414                         while(i--);
//  415 
//  416                     }
//  417 
//  418                     uint32 i;
//  419                     lptmr_time_start_us();
//  420 
//  421                     my_delay(5894);
//  422 
//  423                     i = lptmr_time_get_us();
//  424                     if(i == ~0)
//  425                     {
//  426                         printf("\n��ʱʱ�䳬ʱ");
//  427                     }
//  428                     else
//  429                     {
//  430                         printf("\n��ʱʱ��Ϊ��%dus",i);
//  431                     }
//  432  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function lptmr_time_start_us
          CFI NoCalls
        THUMB
//  433 void lptmr_time_start_us(void)
//  434 {
//  435 
//  436 #if defined(MK60DZ10)
//  437     OSC_CR |= OSC_CR_ERCLKEN_MASK;                              //ʹ�� OSCERCLK
lptmr_time_start_us:
        LDR.N    R0,??DataTable12_6  ;; 0x40065000
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.N    R1,??DataTable12_6  ;; 0x40065000
        STRB     R0,[R1, #+0]
//  438 #elif defined(MK60F15)
//  439     OSC0_CR |= OSC_CR_ERCLKEN_MASK;                              //ʹ�� OSCERCLK
//  440 #endif
//  441 
//  442     SIM_SCGC5 |= SIM_SCGC5_LPTIMER_MASK;                        //ʹ��LPTģ��ʱ��
        LDR.N    R0,??DataTable12  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable12  ;; 0x40048038
        STR      R0,[R1, #+0]
//  443 
//  444     LPTMR0_CSR = 0x00;                                          //�ȹ���LPT���Զ����������ֵ
        MOVS     R0,#+0
        LDR.N    R1,??DataTable12_2  ;; 0x40040000
        STR      R0,[R1, #+0]
//  445 
//  446     LPTMR0_CMR = ~0;                                            //���ñȽ�ֵΪ���ֵ
        MOVS     R0,#-1
        LDR.N    R1,??DataTable12_4  ;; 0x40040008
        STR      R0,[R1, #+0]
//  447 
//  448     //ѡ��ʱ��Դ
//  449     LPTMR0_PSR  =   ( 0
//  450                       | LPTMR_PSR_PCS(3)          //ѡ��ʱ��Դ�� 0 Ϊ MCGIRCLK ��1Ϊ LPO��1KHz�� ��2Ϊ ERCLK32K ��3Ϊ OSCERCLK
//  451                       //| LPTMR_PSR_PBYP_MASK     //��· Ԥ��Ƶ/�����˲��� ,������ Ԥ��Ƶ/�����˲���(ע���˱�ʾʹ��Ԥ��Ƶ/�����˲���)
//  452                       | LPTMR_PSR_PRESCALE(4)     //Ԥ��Ƶֵ = 2^(n+1) ,n = 0~ 0xF
//  453                     );
        MOVS     R0,#+35
        LDR.N    R1,??DataTable12_3  ;; 0x40040004
        STR      R0,[R1, #+0]
//  454 
//  455     //ʹ�� LPT
//  456     LPTMR0_CSR  =  (0
//  457                     //| LPTMR_CSR_TPS(1)        // ѡ������ܽ� ѡ��
//  458                     //| LPTMR_CSR_TMS_MASK      // ѡ��������� (ע���˱�ʾʱ�����ģʽ)
//  459                     //| ( cfg == LPT_Falling ?  LPTMR_CSR_TPP_MASK :   0  )  //���������������ʽѡ��0Ϊ�ߵ�ƽ��Ч�������ؼ�1
//  460                     | LPTMR_CSR_TEN_MASK        //ʹ��LPT(ע���˱�ʾ����)
//  461                     //| LPTMR_CSR_TIE_MASK      //�ж�ʹ��
//  462                     //| LPTMR_CSR_TFC_MASK      //0:����ֵ���ڱȽ�ֵ�͸�λ��1�������λ��ע�ͱ�ʾ0��
//  463                    );
        MOVS     R0,#+1
        LDR.N    R1,??DataTable12_2  ;; 0x40040000
        STR      R0,[R1, #+0]
//  464 
//  465     return;
        BX       LR               ;; return
//  466 }
          CFI EndBlock cfiBlock10
//  467 
//  468 /*!
//  469  *  @brief      ��ȡLPTMR��ʱʱ�䣨us��
//  470 *   @return     ��ʱʱ�䣨����ֵΪ ~0 ��ʾ��ʱ��ʱ������ֵ�� 0~ 41942us ������ ��
//  471  *  @since      v5.0
//  472  *  Sample usage:   �ο� lptmr_time_start_us �ĵ�������
//  473  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function lptmr_time_get_us
          CFI NoCalls
        THUMB
//  474 uint32 lptmr_time_get_us(void)
//  475 {
//  476     uint32 data;
//  477 
//  478     if(LPTMR0_CSR & LPTMR_CSR_TCF_MASK)     //�Ѿ������
lptmr_time_get_us:
        LDR.N    R1,??DataTable12_2  ;; 0x40040000
        LDR      R1,[R1, #+0]
        LSLS     R1,R1,#+24
        BPL.N    ??lptmr_time_get_us_0
//  479     {
//  480 
//  481         data = ~0;                          //���� 0xffffffff ��ʾ����
        MOVS     R1,#-1
        MOVS     R0,R1
        B.N      ??lptmr_time_get_us_1
//  482     }
//  483     else
//  484     {
//  485 #if defined(MK60F15)
//  486         LPTMR0_CNR = 0;
//  487 #endif
//  488         data = (LPTMR0_CNR * 32) / EXTAL_IN_MHz; //���е�λ����
??lptmr_time_get_us_0:
        LDR.N    R1,??DataTable12_5  ;; 0x4004000c
        LDR      R1,[R1, #+0]
        LSLS     R1,R1,#+5
        MOVS     R2,#+50
        UDIV     R1,R1,R2
        MOVS     R0,R1
//  489     }
//  490 
//  491     return data;
??lptmr_time_get_us_1:
        BX       LR               ;; return
//  492 }
          CFI EndBlock cfiBlock11
//  493 
//  494 
//  495 /*!
//  496  *  @brief      LPTMR�жϷ�����
//  497  *  @since      v5.0
//  498  *  @warning    �˺�����Ҫ�û������Լ�������ɣ�����������ṩһ��ģ��
//  499  *  Sample usage:       set_vector_handler(LPTimer_VECTORn , lptmr_handler);    //�� lptmr_handler ������ӵ��ж�����������Ҫ�����ֶ�����
//  500  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function lptmr_test_handler
          CFI NoCalls
        THUMB
//  501 void lptmr_test_handler(void)
//  502 {
//  503     LPTMR_Flag_Clear();
lptmr_test_handler:
        LDR.N    R0,??DataTable12_2  ;; 0x40040000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.N    R1,??DataTable12_2  ;; 0x40040000
        STR      R0,[R1, #+0]
//  504 
//  505     //�������û����ʵ�ִ���
//  506 
//  507 
//  508 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock12

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_1:
        DC32     ?_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_2:
        DC32     0x40040000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_3:
        DC32     0x40040004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_4:
        DC32     0x40040008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_5:
        DC32     0x4004000c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_6:
        DC32     0x40065000

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
        DC8 36H, 30H, 5FH, 6CH, 70H, 74H, 6DH, 72H
        DC8 2EH, 63H, 0
        DC8 0

        END
//  509 
// 
//  52 bytes in section .rodata
// 714 bytes in section .text
// 
// 714 bytes of CODE  memory
//  52 bytes of CONST memory
//
//Errors: none
//Warnings: none
