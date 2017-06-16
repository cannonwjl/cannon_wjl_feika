///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      12/Jun/2017  17:32:52
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\@@@@@@@\Car\Chip\src\MK60_can.c
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EWD03E.tmp
//        (D:\@@@@@@@\Car\Chip\src\MK60_can.c -D DEBUG -D
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
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\MK60_can.s
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

        EXTERN assert_failed
        EXTERN bus_clk_khz
        EXTERN port_init

        PUBLIC CANN
        PUBLIC can_band_cfg_50000K
        PUBLIC can_band_cfg_60000K
        PUBLIC can_clear_flag
        PUBLIC can_get_flag
        PUBLIC can_init
        PUBLIC can_irq_dis
        PUBLIC can_irq_en
        PUBLIC can_rx
        PUBLIC can_rxbuff_enble
        PUBLIC can_rxbuff_mask
        PUBLIC can_setband
        PUBLIC can_tx
        
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
        
// D:\@@@@@@@\Car\Chip\src\MK60_can.c
//    1 /*!
//    2  *     COPYRIGHT NOTICE
//    3  *     Copyright (c) 2013,ɽ��Ƽ�
//    4  *     All rights reserved.
//    5  *     �������ۣ�ɽ����̳ http://www.vcan123.com
//    6  *
//    7  *     ��ע�������⣬�����������ݰ�Ȩ����ɽ��Ƽ����У�δ����������������ҵ��;��
//    8  *     �޸�����ʱ���뱣��ɽ��Ƽ��İ�Ȩ������
//    9  *
//   10  * @file       MK60_can.c
//   11  * @brief      CAN����
//   12  * @author     ɽ��Ƽ�
//   13  * @version    v5.1
//   14  * @date       2014-04-25
//   15  */
//   16 
//   17 #include "common.h"

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

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function NVIC_DisableIRQ
          CFI NoCalls
        THUMB
// static __ramfunc __interwork __softfp void NVIC_DisableIRQ(IRQn_Type)
NVIC_DisableIRQ:
        MOVS     R2,#+1
        ANDS     R1,R0,#0x1F
        LSLS     R2,R2,R1
        LDR.N    R1,??DataTable1_1  ;; 0xe000e180
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        MOVS     R3,R0
        LSRS     R3,R3,#+5
        STR      R2,[R1, R3, LSL #+2]
        BX       LR               ;; return
          CFI EndBlock cfiBlock1

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable1:
        DC32     0xe000e100

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable1_1:
        DC32     0xe000e180
//   18 #include "MK60_port.h"
//   19 #include "MK60_can.h"
//   20 
//   21 
//   22 // CAN IDֵԽ�ͣ��������ȼ�Խ��
//   23 // CAN ������������
//   24 
//   25 
//   26 // ���ڷ��ͻ������ı��Ļ���������
//   27 #define CAN_CS_CODE_TX_INACTIVE     B8(1000)            //MB ���ڷǼ���״̬
//   28 #define CAN_CS_CODE_TX_ABORT        B8(1001)            //MB ������
//   29 #define CAN_CS_CODE_TX_DATA         B8(1100)            //MB Ϊһ����������֡��MB �� RTR λΪ 0��
//   30 #define CAN_CS_CODE_TX_REMOTE       B8(1100)            //MB Ϊһ������Զ������֡��MB �� RTR λΪ 1��
//   31 #define CAN_CS_CODE_TX_TANSWER      B8(1110)            //MB Ϊ��Զ������֡��һ�����ͻ�Ӧ֡
//   32 
//   33 // ���ڽ��ջ������ı��Ļ���������
//   34 #define CAN_CS_CODE_RX_INACTIVE     B8(0000)            //MB ���ڷǼ���״̬
//   35 #define CAN_CS_CODE_RX_EMPTY        B8(0100)            //MB �����Ϊ��
//   36 #define CAN_CS_CODE_RX_FULL         B8(0010)            //MB Ϊ��
//   37 #define CAN_CS_CODE_RX_OVERRUN      B8(0110)            //д�뵽һ���������� ���� MB ������
//   38 #define CAN_CS_CODE_RX_RANSWER      B8(1010)            //һ����֡������Ϊȷ��һ��Զ������֡���ҷ���һ���ظ�֡��
//   39 #define CAN_CS_CODE_RX_BUSY         B8(0001)            //���ڸ��� MB �����ݡ�CPU ���������MB
//   40 
//   41 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   42 CAN_MemMapPtr CANN[] = {CAN0_BASE_PTR, CAN1_BASE_PTR};
CANN:
        DC32 40024000H, 400A4000H
//   43 
//   44 
//   45 //��������CANʱ��ԴΪ 50.00MHz

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   46 CAN_band_cfg_t can_band_cfg_50000K[CAN_BAUD_MAX] =
can_band_cfg_50000K:
        DC32 10
        DC16 624
        DC8 4, 0, 0, 0, 0, 0
        DC32 20
        DC16 124
        DC8 12, 2, 2, 2, 0, 0
        DC32 50
        DC16 124
        DC8 4, 0, 0, 0, 0, 0
        DC32 100
        DC16 24
        DC8 12, 2, 2, 2, 0, 0
        DC32 125
        DC16 24
        DC8 10, 1, 1, 1, 0, 0
        DC32 250
        DC16 24
        DC8 4, 0, 0, 0, 0, 0
        DC32 500
        DC16 4
        DC8 12, 2, 2, 2, 0, 0
        DC32 1000
        DC16 1
        DC8 9, 6, 6, 3, 0, 0
//   47 {
//   48     //BAND, PRESDIV, PROP_SEG, PSEG1,   PSEG2, RJW
//   49     {10,    624,    4,          0,      0,      0},         //������:87.50%
//   50     {20,    124,    12,         2,      2,      2},         //������:85.00%
//   51     {50,    124,    4,          0,      0,      0},         //������:87.50%
//   52     {100,   24,     12,         2,      2,      2},         //������:85.00%
//   53     {125,   24,     10,         1,      1,      1},         //������:87.50%
//   54     {250,   24,     4,          0,      0,      0},         //������:87.50%
//   55     {500,   4,      12,         2,      2,      2},         //������:85.00%
//   56     {1000,  1,      9,          6,      6,      3},         //������:72.00%
//   57 };
//   58 //��������CANʱ��ԴΪ 60.00MHz

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   59 CAN_band_cfg_t can_band_cfg_60000K[CAN_BAUD_MAX] =
can_band_cfg_60000K:
        DC32 10
        DC16 249
        DC8 16, 2, 2, 2, 0, 0
        DC32 20
        DC16 124
        DC8 16, 2, 2, 2, 0, 0
        DC32 50
        DC16 49
        DC8 16, 2, 2, 2, 0, 0
        DC32 100
        DC16 24
        DC8 16, 2, 2, 2, 0, 0
        DC32 125
        DC16 19
        DC8 16, 2, 2, 2, 0, 0
        DC32 250
        DC16 9
        DC8 16, 2, 2, 2, 0, 0
        DC32 500
        DC16 4
        DC8 16, 2, 2, 2, 0, 0
        DC32 1000
        DC16 2
        DC8 8, 4, 4, 3, 0, 0
//   60 {
//   61     //BAND, PRESDIV, PROP_SEG, PSEG1,   PSEG2, RJW
//   62     {10,    249,    16,         2,      2,      2},		//������:87.50%
//   63     {20,    124,    16,         2,      2,      2},		//������:87.50%
//   64     {50,    49,     16,         2,      2,      2},		//������:87.50%
//   65     {100,   24,     16,         2,      2,      2},		//������:87.50%
//   66     {125,   19,     16,         2,      2,      2},		//������:87.50%
//   67     {250,   9,      16,         2,      2,      2},		//������:87.50%
//   68     {500,   4,      16,         2,      2,      2},		//������:87.50%
//   69     {1000,  2,      8,          4,      4,      3},		//������:75.00%
//   70 };
//   71 
//   72 /*!
//   73  *  @brief      CAN ��ʼ��
//   74  *  @param      CANn_e          CAN ģ���
//   75  *  @param      CAN_BAUD_e      �����ʱ��
//   76  *  @param      CAN_mode_e      CAN ģʽ( ���� �� �ػ� ģʽ)
//   77  *  @param      CAN_CLKSRC_e    CAN ʱ��Դ( bus �� �ⲿ����)
//   78  *  @since      v5.0
//   79  *  Sample usage:       can_init(CAN1,CAN_BAUD_20K,CAN_LOOPBACK);   //��ʼ�� CAN1 �������� 20Kb/s �� �ػ�ģʽ
//   80  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function can_init
        THUMB
//   81 void can_init(CANn_e cann, CAN_BAUD_e band, CAN_mode_e mode,CAN_CLKSRC_e clksrc)
//   82 {
can_init:
        PUSH     {R3-R9,LR}
          CFI R14 Frame(CFA, -4)
          CFI R9 Frame(CFA, -8)
          CFI R8 Frame(CFA, -12)
          CFI R7 Frame(CFA, -16)
          CFI R6 Frame(CFA, -20)
          CFI R5 Frame(CFA, -24)
          CFI R4 Frame(CFA, -28)
          CFI CFA R13+32
        MOVS     R6,R0
        MOVS     R7,R1
        MOV      R8,R2
        MOVS     R5,R3
//   83     uint8 i;
//   84     CAN_MemMapPtr canptr = CANN[cann];
        LDR.W    R0,??DataTable12
        SXTB     R6,R6            ;; SignExt  R6,R6,#+24,#+24
        LDR      R9,[R0, R6, LSL #+2]
//   85 
//   86     switch(cann)
        SXTB     R6,R6            ;; SignExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??can_init_0
        CMP      R6,#+1
        BEQ.N    ??can_init_1
        B.N      ??can_init_2
//   87     {
//   88     case CAN0:
//   89         SIM_SCGC6 |= SIM_SCGC6_FLEXCAN0_MASK ;                  //���� CAN0 ʱ��
??can_init_0:
        LDR.W    R0,??DataTable12_1  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10
        LDR.W    R1,??DataTable12_1  ;; 0x4004803c
        STR      R0,[R1, #+0]
//   90         port_init(CAN0_TX_PIN, ALT2);
        MOV      R1,#+512
        MOVS     R0,#+12
          CFI FunCall port_init
        BL       port_init
//   91         port_init(CAN0_RX_PIN, ALT2);
        MOV      R1,#+512
        MOVS     R0,#+13
          CFI FunCall port_init
        BL       port_init
//   92         break;
        B.N      ??can_init_3
//   93     case CAN1:
//   94         SIM_SCGC3 |= SIM_SCGC3_FLEXCAN1_MASK;                   //���� CAN1 ʱ��
??can_init_1:
        LDR.W    R0,??DataTable12_2  ;; 0x40048030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10
        LDR.W    R1,??DataTable12_2  ;; 0x40048030
        STR      R0,[R1, #+0]
//   95         port_init(CAN1_TX_PIN, ALT2);
        MOV      R1,#+512
        MOVS     R0,#+152
          CFI FunCall port_init
        BL       port_init
//   96         port_init(CAN1_RX_PIN, ALT2);
        MOV      R1,#+512
        MOVS     R0,#+153
          CFI FunCall port_init
        BL       port_init
//   97         break;
        B.N      ??can_init_3
//   98     default:
//   99         ASSERT(0);                                              //���ԣ�cannֵ����
??can_init_2:
        MOVS     R1,#+99
        LDR.W    R0,??DataTable12_3
          CFI FunCall assert_failed
        BL       assert_failed
//  100     }
//  101 
//  102     //ѡ��ʱ��Դ
//  103     if(clksrc == CAN_CLKSRC_BUS)
??can_init_3:
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.N    ??can_init_4
//  104     {
//  105         CAN_CTRL1_REG(canptr)   |= CAN_CTRL1_CLKSRC_MASK;           //ѡ��Ϊbus ʱ��
        LDR      R0,[R9, #+4]
        ORRS     R0,R0,#0x2000
        STR      R0,[R9, #+4]
        B.N      ??can_init_5
//  106     }
//  107     else
//  108     {
//  109 #if defined(MK60DZ10)
//  110         OSC_CR |= OSC_CR_ERCLKEN_MASK;                              //ʹ�� OSCERCLK
??can_init_4:
        LDR.W    R0,??DataTable12_4  ;; 0x40065000
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.W    R1,??DataTable12_4  ;; 0x40065000
        STRB     R0,[R1, #+0]
//  111 #elif  defined(MK60F15)
//  112         OSC0_CR |= OSC_CR_ERCLKEN_MASK;                              //ʹ�� OSCERCLK
//  113 #endif
//  114         CAN_CTRL1_REG(canptr)   &= ~CAN_CTRL1_CLKSRC_MASK;
        LDR      R0,[R9, #+4]
        BICS     R0,R0,#0x2000
        STR      R0,[R9, #+4]
//  115     }
//  116 
//  117     CAN_MCR_REG(canptr) &= ~CAN_MCR_MDIS_MASK;                  //ʹ��CANģ��
??can_init_5:
        LDR      R0,[R9, #+0]
        BIC      R0,R0,#0x80000000
        STR      R0,[R9, #+0]
//  118 
//  119     CAN_MCR_REG(canptr) |=  CAN_MCR_FRZ_MASK;                   //ʹ�ܶ���ģʽ
        LDR      R0,[R9, #+0]
        ORRS     R0,R0,#0x40000000
        STR      R0,[R9, #+0]
//  120 
//  121     while((CAN_MCR_REG(canptr) & CAN_MCR_LPMACK_MASK ));        //�ȴ���λ���͹���ģʽ�޷���λ�ɹ���
??can_init_6:
        LDR      R0,[R9, #+0]
        LSLS     R0,R0,#+11
        BMI.N    ??can_init_6
//  122 
//  123     CAN_MCR_REG(canptr) |= CAN_MCR_SOFTRST_MASK;                //�����λ
        LDR      R0,[R9, #+0]
        ORRS     R0,R0,#0x2000000
        STR      R0,[R9, #+0]
//  124 
//  125     while(!(CAN_MCR_REG(canptr) & CAN_MCR_FRZACK_MASK));        //�ȴ����붳��ģʽ
??can_init_7:
        LDR      R0,[R9, #+0]
        LSLS     R0,R0,#+7
        BPL.N    ??can_init_7
//  126 
//  127     //������仺����������0
//  128     i = 16;
        MOVS     R0,#+16
        MOVS     R4,R0
//  129     while(i)
??can_init_8:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??can_init_9
//  130     {
//  131         i--;
        SUBS     R4,R4,#+1
//  132         CAN_CS_REG(canptr, i) = 0;
        MOVS     R0,#+0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSLS     R1,R4,#+4
        ADD      R1,R9,R1
        STR      R0,[R1, #+128]
//  133         CAN_ID_REG(canptr, i) = 0;
        MOVS     R0,#+0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSLS     R1,R4,#+4
        ADD      R1,R9,R1
        STR      R0,[R1, #+132]
//  134         CAN_WORD0_REG(canptr, i) = 0;
        MOVS     R0,#+0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSLS     R1,R4,#+4
        ADD      R1,R9,R1
        STR      R0,[R1, #+136]
//  135         CAN_WORD1_REG(canptr, i) = 0;
        MOVS     R0,#+0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSLS     R1,R4,#+4
        ADD      R1,R9,R1
        STR      R0,[R1, #+140]
        B.N      ??can_init_8
//  136     }
//  137 
//  138     CAN_CTRL2_REG(canptr) = (0
//  139                              //| CAN_CTRL2_EACEN_MASK            //�����������IDEƥ�䣬RTR��ƥ��
//  140                              //| CAN_CTRL2_RRS_MASK              //���Զ�����Զ������֡
//  141                              //| CAN_CTRL2_MRP_MASK              //�������ȴӽ���FIFO����ƥ��Ȼ������������ƥ��
//  142                              | CAN_CTRL2_TASD(22)                //Tx Arbitration Start Delay
//  143                             );
??can_init_9:
        MOVS     R0,#+11534336
        STR      R0,[R9, #+52]
//  144 
//  145     //ʹ��һ��32λ������
//  146     CAN_MCR_REG(canptr) = (CAN_MCR_REG(canptr) & (~CAN_MCR_IDAM_MASK)) | CAN_MCR_IDAM(0);
        LDR      R0,[R9, #+0]
        BICS     R0,R0,#0x300
        STR      R0,[R9, #+0]
//  147 
//  148     //���ò�����
//  149     can_setband(cann, band);
        MOVS     R1,R7
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        MOVS     R0,R6
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
          CFI FunCall can_setband
        BL       can_setband
//  150 
//  151     //�ػ�ģʽ
//  152     if(mode == CAN_LOOPBACK)
        SXTB     R8,R8            ;; SignExt  R8,R8,#+24,#+24
        CMP      R8,#+1
        BNE.N    ??can_init_10
//  153     {
//  154         CAN_CTRL1_REG(canptr) |= CAN_CTRL1_LPB_MASK;//ʹ�ûػ�ģʽ
        LDR      R0,[R9, #+4]
        ORRS     R0,R0,#0x1000
        STR      R0,[R9, #+4]
//  155     }
//  156 
//  157     //Ĭ��ʹ�� ���� ����
//  158     CAN_MCR_REG(canptr) |= CAN_MCR_IRMQ_MASK;
??can_init_10:
        LDR      R0,[R9, #+0]
        ORRS     R0,R0,#0x10000
        STR      R0,[R9, #+0]
//  159 
//  160     //��ʼ������Ĵ���
//  161     i = NUMBER_OF_MB;
        MOVS     R0,#+16
        MOVS     R4,R0
//  162     while(i)
??can_init_11:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??can_init_12
//  163     {
//  164         i--;
        SUBS     R4,R4,#+1
//  165         CAN_RXIMR_REG(canptr, i) = 0x0;
        MOVS     R0,#+0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADD      R1,R9,R4, LSL #+2
        STR      R0,[R1, #+2176]
        B.N      ??can_init_11
//  166     }
//  167 
//  168     CAN_RXMGMASK_REG(canptr) = 0x0;
??can_init_12:
        MOVS     R0,#+0
        STR      R0,[R9, #+16]
//  169     CAN_RX14MASK_REG(canptr) = 0x0;
        MOVS     R0,#+0
        STR      R0,[R9, #+20]
//  170     CAN_RX15MASK_REG(canptr) = 0x0;
        MOVS     R0,#+0
        STR      R0,[R9, #+24]
//  171 
//  172     //ֻ���ڶ���ģʽ�²������� �������˳�����ģʽ
//  173     CAN_MCR_REG(canptr) &= ~(CAN_MCR_HALT_MASK);
        LDR      R0,[R9, #+0]
        BICS     R0,R0,#0x10000000
        STR      R0,[R9, #+0]
//  174 
//  175     //�ȴ�ģ���Ƴ�����ģʽ
//  176     while( CAN_MCR_REG(canptr) & CAN_MCR_FRZACK_MASK);
??can_init_13:
        LDR      R0,[R9, #+0]
        LSLS     R0,R0,#+7
        BMI.N    ??can_init_13
//  177 
//  178     //�ȴ�ͬ��
//  179     //�ȵ����ڶ���ģʽ������ģʽ����ֹͣģʽ
//  180     while(CAN_MCR_REG(canptr) & CAN_MCR_NOTRDY_MASK);
??can_init_14:
        LDR      R0,[R9, #+0]
        LSLS     R0,R0,#+4
        BMI.N    ??can_init_14
//  181 }
        POP      {R0,R4-R9,PC}    ;; return
          CFI EndBlock cfiBlock2
//  182 
//  183 
//  184 /*!
//  185  *  @brief      CAN ��������
//  186  *  @param      CANn_e          CAN ģ���
//  187  *  @param      mb_num_e        ���������
//  188  *  @param      CAN_USR_ID_t    ID���
//  189  *  @param      len             ���ݳ���
//  190  *  @param      buff            ��������ַ
//  191  *  @since      v5.0
//  192  *  Sample usage:       can_tx(CAN1,CAN_TX_MB,can_tx_id,DATA_LEN, txbuff);  //CAN�������ݡ�������CAN_TX_MB������ID:tx_ID�����ݻ�����txbuff������ DATA_LEN
//  193  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function can_tx
        THUMB
//  194 void can_tx(CANn_e cann, mb_num_e nMB, CAN_USR_ID_t id, uint8 len, void *buff)
//  195 {
can_tx:
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
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        LDR      R8,[SP, #+32]
//  196     uint32 word;
//  197     CAN_MemMapPtr canptr = CANN[cann];
        LDR.W    R0,??DataTable12
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R10,[R0, R4, LSL #+2]
//  198 
//  199 
//  200     ASSERT(len <= 8 );       //���ԣ�һ�η�����󳤶�Ϊ 8�ֽ�
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+9
        BLT.N    ??can_tx_0
        MOVS     R1,#+200
        LDR.W    R0,??DataTable12_3
          CFI FunCall assert_failed
        BL       assert_failed
//  201 
//  202 
//  203     //�����Ĳ���Ϊ���͹���
//  204     CAN_CS_REG(canptr, nMB)   = ( 0
//  205                                   | CAN_CS_CODE(CAN_CS_CODE_TX_INACTIVE)    //������д�Ǽ������
//  206                                   | (id.IDE << CAN_CS_IDE_SHIFT)            //������дIDEλ
//  207                                   | (id.RTR << CAN_CS_RTR_SHIFT)            //������дRTRλ
//  208                                   | CAN_CS_DLC(len)                         //������д���ݳ���
//  209                                 );
??can_tx_0:
        UBFX     R0,R6,#+29,#+1
        UBFX     R1,R6,#+30,#+1
        LSLS     R1,R1,#+20
        ORRS     R1,R1,R0, LSL #+21
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LSLS     R0,R7,#+16
        ANDS     R0,R0,#0xF0000
        ORRS     R1,R0,R1
        ORRS     R1,R1,#0x8000000
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        LSLS     R0,R5,#+4
        ADD      R0,R10,R0
        STR      R1,[R0, #+128]
//  210 
//  211     //������дID
//  212     if(id.IDE)
        UBFX     R0,R6,#+29,#+1
        CMP      R0,#+0
        BEQ.N    ??can_tx_1
//  213     {
//  214         //��չ֡
//  215         CAN_ID_REG(canptr, nMB)   = ( 0
//  216                                       | CAN_ID_PRIO(1)
//  217                                       | CAN_ID_EXT(id.ID)
//  218                                     );
        LSLS     R0,R6,#+14       ;; ZeroExtS R0,R6,#+14,#+14
        LSRS     R0,R0,#+14
        ORRS     R0,R0,#0x20000000
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        LSLS     R1,R5,#+4
        ADD      R1,R10,R1
        STR      R0,[R1, #+132]
        B.N      ??can_tx_2
//  219     }
//  220     else
//  221     {
//  222         //��׼֡
//  223         CAN_ID_REG(canptr, nMB)   = ( 0
//  224                                       | CAN_ID_PRIO(1)
//  225                                       | CAN_ID_STD(id.ID)
//  226                                     );
??can_tx_1:
        LDR.W    R0,??DataTable12_5  ;; 0x1ffc0000
        ANDS     R0,R0,R6, LSL #+18
        ORRS     R0,R0,#0x20000000
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        LSLS     R1,R5,#+4
        ADD      R1,R10,R1
        STR      R0,[R1, #+132]
//  227     }
//  228 
//  229     //������д����
//  230     word = *(uint32 *)buff;
??can_tx_2:
        LDR      R0,[R8, #+0]
        MOV      R9,R0
//  231     CAN_WORD0_REG(canptr, nMB) = SWAP32(word);
        REV      R0,R9
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        LSLS     R1,R5,#+4
        ADD      R1,R10,R1
        STR      R0,[R1, #+136]
//  232 
//  233     word = *((uint32 *)buff + 1);
        LDR      R0,[R8, #+4]
        MOV      R9,R0
//  234     CAN_WORD1_REG(canptr, nMB) = SWAP32(word);
        REV      R0,R9
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        LSLS     R1,R5,#+4
        ADD      R1,R10,R1
        STR      R0,[R1, #+140]
//  235 
//  236     //��ʼ����
//  237     CAN_CS_REG(canptr, nMB)   =   ( 0
//  238                                     | CAN_CS_CODE(CAN_CS_CODE_TX_DATA)              //д������룬MB Ϊһ����������֡��MB �� RTR λΪ 0��
//  239                                     //| CAN_CS_RTR_MASK
//  240                                     | CAN_CS_DLC(len)                               //������д���ݳ���
//  241                                   );
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LSLS     R0,R7,#+16
        ANDS     R0,R0,#0xF0000
        ORRS     R0,R0,#0xC000000
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        LSLS     R1,R5,#+4
        ADD      R1,R10,R1
        STR      R0,[R1, #+128]
//  242 
//  243     //��ʱ�ȴ�������ɣ����ʹ���ж�����ʱ�ȴ�����ɾ����
//  244     while(!(CAN_IFLAG1_REG(canptr) & (1 << nMB)));
??can_tx_3:
        LDR      R0,[R10, #+48]
        LSRS     R0,R0,R5
        LSLS     R0,R0,#+31
        BPL.N    ??can_tx_3
//  245 
//  246 
//  247     //�屨�Ļ������жϱ�־
//  248     CAN_IFLAG1_REG(canptr)  = (1 << nMB);
        MOVS     R0,#+1
        LSLS     R0,R0,R5
        STR      R0,[R10, #+48]
//  249 
//  250 }
        POP      {R4-R10,PC}      ;; return
          CFI EndBlock cfiBlock3
//  251 
//  252 /*!
//  253  *  @brief      ʹ�� CAN ���ջ�����
//  254  *  @param      CANn_e          CAN ģ���
//  255  *  @param      mb_num_e        ���������
//  256  *  @param      CAN_USR_ID_t    ID���
//  257  *  @since      v5.0
//  258  *  Sample usage:      can_rxbuff_enble(CAN1,CAN_RX_MB,can_my_id);
//  259  *                                   //ʹ�ܽ��ջ�����
//  260  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function can_rxbuff_enble
          CFI NoCalls
        THUMB
//  261 void can_rxbuff_enble(CANn_e cann, mb_num_e nMB, CAN_USR_ID_t id)
//  262 {
can_rxbuff_enble:
        PUSH     {R4,R5}
          CFI R5 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  263     CAN_MemMapPtr canptr = CANN[cann];
        LDR.W    R3,??DataTable12
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LDR      R4,[R3, R0, LSL #+2]
//  264 
//  265     //��MB����Ϊ�Ǽ���״̬
//  266     CAN_CS_REG(canptr, nMB) = CAN_CS_CODE(CAN_CS_CODE_RX_INACTIVE);
        MOVS     R3,#+0
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LSLS     R5,R1,#+4
        ADD      R5,R4,R5
        STR      R3,[R5, #+128]
//  267 
//  268 
//  269     if(id.IDE )         //��չ֡
        UBFX     R3,R2,#+29,#+1
        CMP      R3,#+0
        BEQ.N    ??can_rxbuff_enble_0
//  270     {
//  271         CAN_ID_REG(canptr, nMB) =   ( 0
//  272                                       | CAN_ID_EXT( id.ID)
//  273                                     );
        LSLS     R3,R2,#+14       ;; ZeroExtS R3,R2,#+14,#+14
        LSRS     R3,R3,#+14
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LSLS     R5,R1,#+4
        ADD      R5,R4,R5
        STR      R3,[R5, #+132]
//  274         CAN_CS_REG(canptr, nMB) = CAN_CS_IDE_MASK;
        MOVS     R3,#+2097152
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LSLS     R5,R1,#+4
        ADD      R5,R4,R5
        STR      R3,[R5, #+128]
//  275 
//  276         CAN_CS_REG(canptr, nMB) = (0
//  277                                    | CAN_CS_IDE_MASK
//  278                                    | (id.RTR << CAN_CS_IDE_SHIFT)
//  279                                    | CAN_CS_CODE(CAN_CS_CODE_RX_EMPTY)//������ջ�����
//  280                                   );
        MOVS     R3,#+69206016
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LSLS     R5,R1,#+4
        ADD      R5,R4,R5
        STR      R3,[R5, #+128]
        B.N      ??can_rxbuff_enble_1
//  281     }
//  282     else
//  283     {
//  284         //��׼֡
//  285         CAN_ID_REG(canptr, nMB) =   ( 0
//  286                                       | CAN_ID_STD( id.ID)
//  287                                     );
??can_rxbuff_enble_0:
        LDR.N    R3,??DataTable12_5  ;; 0x1ffc0000
        ANDS     R3,R3,R2, LSL #+18
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LSLS     R5,R1,#+4
        ADD      R5,R4,R5
        STR      R3,[R5, #+132]
//  288 
//  289         CAN_CS_REG(canptr, nMB) = (0
//  290                                    | (id.RTR << CAN_CS_IDE_SHIFT)
//  291                                    | CAN_CS_CODE(CAN_CS_CODE_RX_EMPTY)//������ջ�����
//  292                                   );
        UBFX     R3,R2,#+30,#+1
        LSLS     R3,R3,#+21
        ORRS     R3,R3,#0x4000000
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LSLS     R5,R1,#+4
        ADD      R5,R4,R5
        STR      R3,[R5, #+128]
//  293 
//  294     }
//  295 }
??can_rxbuff_enble_1:
        POP      {R4,R5}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock4
//  296 
//  297 /*!
//  298  *  @brief      CAN ������������
//  299  *  @param      CANn_e          CAN ģ���
//  300  *  @param      mb_num_e        ���������
//  301  *  @param      mask            ����
//  302  *  @param      isIRMQ          �Ƿ�ѡ��������루0Ϊȫ�����룬����Ϊ�������룩
//  303  *  @since      v5.0
//  304  *  Sample usage:      can_rxbuff_mask(CAN1,CAN_RX_MB,0x00FF,1);
//  305  *                              //CAN1 ��CAN_RX_MB ������ ��������Ϊ 0x00FF
//  306  */
//  307 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function can_rxbuff_mask
          CFI NoCalls
        THUMB
//  308 void can_rxbuff_mask(CANn_e cann, mb_num_e nMB, uint32 mask,uint8 isIRMQ)
//  309 {
can_rxbuff_mask:
        PUSH     {R4-R6}
          CFI R6 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+12
//  310     uint8           bFreezeMode;
//  311     CAN_MemMapPtr   canptr = CANN[cann];
        LDR.N    R5,??DataTable12
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LDR      R5,[R5, R0, LSL #+2]
//  312 
//  313     //���붳��ģʽ
//  314     if(!(CAN_MCR_REG(canptr) & CAN_MCR_HALT_MASK))
        LDR      R6,[R5, #+0]
        LSLS     R6,R6,#+3
        BMI.N    ??can_rxbuff_mask_0
//  315     {
//  316         CAN_MCR_REG(canptr)  |= (CAN_MCR_HALT_MASK);
        LDR      R6,[R5, #+0]
        ORRS     R6,R6,#0x10000000
        STR      R6,[R5, #+0]
//  317 
//  318         // �ȴ����� ���붳��ģʽ
//  319         while(!(CAN_MCR_REG(canptr) & CAN_MCR_FRZACK_MASK));
??can_rxbuff_mask_1:
        LDR      R6,[R5, #+0]
        LSLS     R6,R6,#+7
        BPL.N    ??can_rxbuff_mask_1
//  320 
//  321         bFreezeMode = 0;
        MOVS     R6,#+0
        MOVS     R4,R6
        B.N      ??can_rxbuff_mask_2
//  322     }
//  323     else
//  324     {
//  325         bFreezeMode = 1;
??can_rxbuff_mask_0:
        MOVS     R6,#+1
        MOVS     R4,R6
//  326     }
//  327 
//  328     if(isIRMQ != 0)       //ʹ�ö�������
??can_rxbuff_mask_2:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+0
        BEQ.N    ??can_rxbuff_mask_3
//  329     {
//  330         CAN_MCR_REG(canptr) |=  CAN_MCR_IRMQ_MASK;
        LDR      R6,[R5, #+0]
        ORRS     R6,R6,#0x10000
        STR      R6,[R5, #+0]
//  331 
//  332         // ��������
//  333         CAN_RXIMR_REG(canptr, nMB) = mask;
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        ADD      R6,R5,R1, LSL #+2
        STR      R2,[R6, #+2176]
        B.N      ??can_rxbuff_mask_4
//  334     }
//  335     else
//  336     {
//  337         CAN_MCR_REG(canptr) &=  ~CAN_MCR_IRMQ_MASK;
??can_rxbuff_mask_3:
        LDR      R6,[R5, #+0]
        BICS     R6,R6,#0x10000
        STR      R6,[R5, #+0]
//  338 
//  339         // 14/15 ��ʹ�ö�����
//  340         if(nMB == MB_NUM_14)
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        CMP      R1,#+14
        BNE.N    ??can_rxbuff_mask_5
//  341         {
//  342             CAN_RX14MASK_REG(canptr)  = mask;
        STR      R2,[R5, #+20]
        B.N      ??can_rxbuff_mask_4
//  343         }
//  344         else if (nMB == MB_NUM_15)
??can_rxbuff_mask_5:
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        CMP      R1,#+15
        BNE.N    ??can_rxbuff_mask_6
//  345         {
//  346             CAN_RX15MASK_REG(canptr)  = mask;
        STR      R2,[R5, #+24]
        B.N      ??can_rxbuff_mask_4
//  347         }
//  348         else
//  349         {
//  350             // ʣ���֧��ȫ������
//  351             CAN_RXMGMASK_REG(canptr)  = mask;
??can_rxbuff_mask_6:
        STR      R2,[R5, #+16]
//  352         }
//  353     }
//  354     // �ָ�CAN ����ģʽ
//  355     if(!bFreezeMode)
??can_rxbuff_mask_4:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??can_rxbuff_mask_7
//  356     {
//  357         // De-assert Freeze Mode
//  358         CAN_MCR_REG(canptr)  &= ~ (CAN_MCR_HALT_MASK);
        LDR      R6,[R5, #+0]
        BICS     R6,R6,#0x10000000
        STR      R6,[R5, #+0]
//  359 
//  360         // Wait till exit of freeze mode
//  361         while( CAN_MCR_REG(canptr)  & CAN_MCR_FRZACK_MASK);
??can_rxbuff_mask_8:
        LDR      R6,[R5, #+0]
        LSLS     R6,R6,#+7
        BMI.N    ??can_rxbuff_mask_8
//  362 
//  363         // Wait till ready
//  364         while( CAN_MCR_REG(canptr) & CAN_MCR_NOTRDY_MASK);
??can_rxbuff_mask_9:
        LDR      R6,[R5, #+0]
        LSLS     R6,R6,#+4
        BMI.N    ??can_rxbuff_mask_9
//  365     }
//  366 }
??can_rxbuff_mask_7:
        POP      {R4-R6}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock5
//  367 
//  368 /*!
//  369  *  @brief      CAN ��������
//  370  *  @param      CANn_e          CAN ģ���
//  371  *  @param      mb_num_e        ���������
//  372  *  @param      CAN_USR_ID_t    ID���
//  373  *  @param      len             ���ݳ���
//  374  *  @param      buff            ��������ַ
//  375  *  @since      v5.0
//  376  *  Sample usage:       can_rx(CAN1,CAN_RX_MB,&can_rx_id,&can_rx_len,can_rx_data);  //CAN �� CAN_RX_MB �������� �����յ��� ID ������ can_rx_id ����ȱ����� can_rx_len�����ݱ����� can_rx_data
//  377  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function can_rx
          CFI NoCalls
        THUMB
//  378 void can_rx(CANn_e cann, mb_num_e nMB, CAN_USR_ID_t *id, uint8 *len, void   *buff)
//  379 {
can_rx:
        PUSH     {R4-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+20
        LDR      R5,[SP, #+20]
//  380     uint8  length;
//  381     uint32 word;
//  382 
//  383     CAN_MemMapPtr canptr = CANN[cann];
        LDR.N    R7,??DataTable12
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LDR      R7,[R7, R0, LSL #+2]
//  384 
//  385     *(uint32 *)id = 0;
        MOVS     R12,#+0
        STR      R12,[R2, #+0]
//  386 
//  387     if((CAN_CS_REG(canptr, nMB)  & CAN_CS_CODE_MASK) != CAN_CS_CODE(CAN_CS_CODE_RX_FULL) ) //������û�н��յ����ݣ����ش���
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LSLS     R12,R1,#+4
        ADD      R12,R7,R12
        LDR      R12,[R12, #+128]
        ANDS     R12,R12,#0xF000000
        CMP      R12,#+33554432
        BEQ.N    ??can_rx_0
//  388     {
//  389         *len = 0;
        MOVS     R12,#+0
        STRB     R12,[R3, #+0]
//  390         return;
        B.N      ??can_rx_1
//  391     }
//  392 
//  393     length = ( CAN_CS_REG(canptr, nMB) & CAN_CS_DLC_MASK ) >> CAN_CS_DLC_SHIFT;
??can_rx_0:
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LSLS     R12,R1,#+4
        ADD      R12,R7,R12
        LDR      R12,[R12, #+128]
        LSRS     R12,R12,#+16
        ANDS     R12,R12,#0xF
        MOV      R4,R12
//  394 
//  395     if(length < 1) //���յ������ݳ���С��1�����ش���
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??can_rx_2
//  396     {
//  397         *len = 0;
        MOVS     R12,#+0
        STRB     R12,[R3, #+0]
//  398         return;
        B.N      ??can_rx_1
//  399     }
//  400 
//  401     //�ж��Ǳ�׼֡������չ֡
//  402     if(! ( CAN_CS_REG(canptr, nMB) & CAN_CS_IDE_MASK ) )
??can_rx_2:
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LSLS     R12,R1,#+4
        ADD      R12,R7,R12
        LDR      R12,[R12, #+128]
        LSLS     R12,R12,#+10
        BMI.N    ??can_rx_3
//  403     {
//  404         id->ID = ( CAN_ID_REG(canptr, nMB) & CAN_ID_STD_MASK ) >> CAN_ID_STD_SHIFT; // ��ñ�׼ID
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LSLS     R12,R1,#+4
        ADD      R12,R7,R12
        LDR      R12,[R12, #+132]
        UBFX     R12,R12,#+18,#+11
        LDR      LR,[R2, #+0]
        BFI      LR,R12,#+0,#+29
        STR      LR,[R2, #+0]
        B.N      ??can_rx_4
//  405     }
//  406     else
//  407     {
//  408         id->ID = ( CAN_ID_REG(canptr, nMB) & CAN_ID_EXT_MASK ) >> CAN_ID_EXT_SHIFT; // ��ȡ ��չID
??can_rx_3:
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LSLS     R12,R1,#+4
        ADD      R12,R7,R12
        LDR      R12,[R12, #+132]
        LSLS     R12,R12,#+14     ;; ZeroExtS R12,R12,#+14,#+14
        LSRS     R12,R12,#+14
        LDR      LR,[R2, #+0]
        BFI      LR,R12,#+0,#+29
        STR      LR,[R2, #+0]
//  409         id->IDE = 1 ; //�����չ��ID
        LDR      R12,[R2, #+0]
        ORRS     R12,R12,#0x20000000
        STR      R12,[R2, #+0]
//  410     }
//  411 
//  412     if(CAN_CS_REG(canptr, nMB) & CAN_CS_RTR_MASK)
??can_rx_4:
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LSLS     R12,R1,#+4
        ADD      R12,R7,R12
        LDR      R12,[R12, #+128]
        LSLS     R12,R12,#+11
        BPL.N    ??can_rx_5
//  413     {
//  414         id->RTR = 1; //���ΪԶ��֡����
        LDR      R12,[R2, #+0]
        ORRS     R12,R12,#0x40000000
        STR      R12,[R2, #+0]
//  415     }
//  416 
//  417     word = CAN_WORD0_REG(canptr, nMB);
??can_rx_5:
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LSLS     R12,R1,#+4
        ADD      R12,R7,R12
        LDR      R12,[R12, #+136]
        MOV      R6,R12
//  418     *((uint32 *)buff) = SWAP32(word);
        REV      R12,R6
        STR      R12,[R5, #+0]
//  419 
//  420     word = CAN_WORD1_REG(canptr, nMB);
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LSLS     R12,R1,#+4
        ADD      R12,R7,R12
        LDR      R12,[R12, #+140]
        MOV      R6,R12
//  421     *((uint32 *)buff + 1) = SWAP32(word);
        REV      R12,R6
        STR      R12,[R5, #+4]
//  422 
//  423     *len = length;
        STRB     R4,[R3, #+0]
//  424 
//  425     CAN_TIMER_REG(canptr);      //���� MB
        LDR      R12,[R7, #+8]
//  426 }
??can_rx_1:
        POP      {R4-R7,PC}       ;; return
          CFI EndBlock cfiBlock6
//  427 
//  428 /*!
//  429  *  @brief      ʹ�� CAN ���������պͷ����ж�
//  430  *  @param      CANn_e          CAN ģ���
//  431  *  @param      mb_num_e        ���������
//  432  *  @since      v5.0
//  433  *  Sample usage:       can_irq_en(CAN1,MB_NUM_5);
//  434  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function can_irq_en
        THUMB
//  435 void can_irq_en(CANn_e cann, mb_num_e nMB)
//  436 {
can_irq_en:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
//  437     CAN_MemMapPtr canptr = CANN[cann];
        LDR.N    R0,??DataTable12
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R6,[R0, R4, LSL #+2]
//  438 
//  439 
//  440     CAN_IMASK1_REG(canptr) = (1 << nMB);
        MOVS     R0,#+1
        LSLS     R0,R0,R5
        STR      R0,[R6, #+40]
//  441 
//  442     if(cann == CAN0)
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??can_irq_en_0
//  443     {
//  444         enable_irq(CAN0_ORed_MB_IRQn);
        MOVS     R0,#+29
          CFI FunCall NVIC_EnableIRQ
        BL       NVIC_EnableIRQ
        B.N      ??can_irq_en_1
//  445     }
//  446     else if(cann == CAN1)
??can_irq_en_0:
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.N    ??can_irq_en_1
//  447     {
//  448         enable_irq(CAN1_ORed_MB_IRQn);
        MOVS     R0,#+37
          CFI FunCall NVIC_EnableIRQ
        BL       NVIC_EnableIRQ
//  449     }
//  450 }
??can_irq_en_1:
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock7
//  451 
//  452 /*!
//  453  *  @brief      ��ֹ CAN ���������պͷ����ж�
//  454  *  @param      CANn_e          CAN ģ���
//  455  *  @param      mb_num_e        ���������
//  456  *  @since      v5.0
//  457  *  Sample usage:       can_irq_dis(CAN1,MB_NUM_5);
//  458  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function can_irq_dis
        THUMB
//  459 void can_irq_dis(CANn_e cann, mb_num_e nMB)
//  460 {
can_irq_dis:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
//  461     CAN_MemMapPtr canptr = CANN[cann];
        LDR.N    R0,??DataTable12
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R6,[R0, R4, LSL #+2]
//  462 
//  463     CAN_IMASK1_REG(canptr) &= ~ (1 << nMB);
        LDR      R0,[R6, #+40]
        MOVS     R1,#+1
        LSLS     R1,R1,R5
        BICS     R0,R0,R1
        STR      R0,[R6, #+40]
//  464 
//  465     if(cann == CAN0)
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??can_irq_dis_0
//  466     {
//  467         disable_irq(CAN0_ORed_MB_IRQn);
        MOVS     R0,#+29
          CFI FunCall NVIC_DisableIRQ
        BL       NVIC_DisableIRQ
        B.N      ??can_irq_dis_1
//  468     }
//  469     else if(cann == CAN1)
??can_irq_dis_0:
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.N    ??can_irq_dis_1
//  470     {
//  471         disable_irq(CAN1_ORed_MB_IRQn);
        MOVS     R0,#+37
          CFI FunCall NVIC_DisableIRQ
        BL       NVIC_DisableIRQ
//  472     }
//  473 }
??can_irq_dis_1:
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock8
//  474 
//  475 /*!
//  476  *  @brief      �� CAN �������жϱ�־
//  477  *  @param      CANn_e          CAN ģ���
//  478  *  @param      mb_num_e        ���������
//  479  *  @since      v5.0
//  480  *  Sample usage:       can_clear_flag(CAN1,MB_NUM_5);
//  481  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function can_clear_flag
          CFI NoCalls
        THUMB
//  482 void can_clear_flag(CANn_e cann, mb_num_e nMB)
//  483 {
//  484     CAN_MemMapPtr canptr = CANN[cann];
can_clear_flag:
        LDR.N    R2,??DataTable12
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LDR      R2,[R2, R0, LSL #+2]
//  485 
//  486     CAN_IFLAG1_REG(canptr) = (1 << nMB);
        MOVS     R3,#+1
        LSLS     R3,R3,R1
        STR      R3,[R2, #+48]
//  487 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock9
//  488 
//  489 
//  490 /*!
//  491  *  @brief      ��� CAN �������жϱ�־
//  492  *  @param      CANn_e          CAN ģ���
//  493  *  @param      mb_num_e        ���������
//  494  *  @since      v5.0
//  495  *  Sample usage:       can_get_flag(CAN1,MB_NUM_5);
//  496  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function can_get_flag
          CFI NoCalls
        THUMB
//  497 uint32 can_get_flag(CANn_e cann, mb_num_e nMB)
//  498 {
can_get_flag:
        MOVS     R2,R0
//  499     CAN_MemMapPtr canptr = CANN[cann];
        LDR.N    R0,??DataTable12
        SXTB     R2,R2            ;; SignExt  R2,R2,#+24,#+24
        LDR      R0,[R0, R2, LSL #+2]
//  500 
//  501     return (CAN_IFLAG1_REG(canptr) & (1 << nMB));
        LDR      R0,[R0, #+48]
        MOVS     R3,#+1
        LSLS     R1,R3,R1
        ANDS     R1,R1,R0
        MOVS     R0,R1
        BX       LR               ;; return
//  502 }
          CFI EndBlock cfiBlock10
//  503 
//  504 
//  505 /*!
//  506  *  @brief      ���� CAN �Ĳ�����
//  507  *  @param      CANn_e          CAN ģ���
//  508  *  @param      CAN_BAUD_e      �����ʱ��
//  509  *  @since      v5.0
//  510  *  Sample usage:       can_setband(CAN1, CAN_BAUD_20K)
//  511  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function can_setband
        THUMB
//  512 void can_setband(CANn_e cann, CAN_BAUD_e band)
//  513 {
can_setband:
        PUSH     {R3-R9,LR}
          CFI R14 Frame(CFA, -4)
          CFI R9 Frame(CFA, -8)
          CFI R8 Frame(CFA, -12)
          CFI R7 Frame(CFA, -16)
          CFI R6 Frame(CFA, -20)
          CFI R5 Frame(CFA, -24)
          CFI R4 Frame(CFA, -28)
          CFI CFA R13+32
        MOVS     R5,R0
        MOVS     R6,R1
//  514     CAN_MemMapPtr canptr = CANN[cann];
        LDR.N    R0,??DataTable12
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        LDR      R7,[R0, R5, LSL #+2]
//  515     CAN_band_cfg_t *pcan_ban_cfg;
//  516     uint32  can_clk_khz;
//  517     uint8   bFreezeMode;
//  518 
//  519     if(CAN_CTRL1_REG(canptr) & CAN_CTRL1_CLKSRC_MASK)     //busʱ��
        LDR      R0,[R7, #+4]
        LSLS     R0,R0,#+18
        BPL.N    ??can_setband_0
//  520     {
//  521         can_clk_khz =  bus_clk_khz;
        LDR.N    R0,??DataTable12_6
        LDR      R0,[R0, #+0]
        MOV      R9,R0
        B.N      ??can_setband_1
//  522     }
//  523     else                                                //�ⲿ����ʱ��
//  524     {
//  525         can_clk_khz = EXTAL_IN_MHz *1000;
??can_setband_0:
        MOVW     R0,#+50000
        MOV      R9,R0
//  526     }
//  527 
//  528     if(can_clk_khz == 50000)
??can_setband_1:
        MOVW     R0,#+50000
        CMP      R9,R0
        BNE.N    ??can_setband_2
//  529     {
//  530          pcan_ban_cfg = &can_band_cfg_50000K[band];
        LDR.N    R0,??DataTable12_7
        SXTB     R6,R6            ;; SignExt  R6,R6,#+24,#+24
        MOVS     R1,#+12
        SMULBB   R1,R6,R1
        ADD      R0,R0,R1
        MOV      R8,R0
        B.N      ??can_setband_3
//  531     }
//  532     else if(bus_clk_khz == 60000)
??can_setband_2:
        LDR.N    R0,??DataTable12_6
        LDR      R0,[R0, #+0]
        MOVW     R1,#+60000
        CMP      R0,R1
        BNE.N    ??can_setband_4
//  533     {
//  534          pcan_ban_cfg = &can_band_cfg_60000K[band];
        LDR.N    R0,??DataTable12_8
        SXTB     R6,R6            ;; SignExt  R6,R6,#+24,#+24
        MOVS     R1,#+12
        SMULBB   R1,R6,R1
        ADD      R0,R0,R1
        MOV      R8,R0
        B.N      ??can_setband_3
//  535     }
//  536     else
//  537     {
//  538         ASSERT(0);          //��֧�� bus ʱ��Ϊ 50M �� 60M
??can_setband_4:
        MOVW     R1,#+538
        LDR.N    R0,??DataTable12_3
          CFI FunCall assert_failed
        BL       assert_failed
//  539     }
//  540 
//  541     //���붳��ģʽ
//  542     if(!(CAN_MCR_REG(canptr) & CAN_MCR_HALT_MASK))
??can_setband_3:
        LDR      R0,[R7, #+0]
        LSLS     R0,R0,#+3
        BMI.N    ??can_setband_5
//  543     {
//  544         CAN_MCR_REG(canptr)  |= (CAN_MCR_HALT_MASK);
        LDR      R0,[R7, #+0]
        ORRS     R0,R0,#0x10000000
        STR      R0,[R7, #+0]
//  545 
//  546         // �ȴ����� ���붳��ģʽ
//  547         while(!(CAN_MCR_REG(canptr) & CAN_MCR_FRZACK_MASK));
??can_setband_6:
        LDR      R0,[R7, #+0]
        LSLS     R0,R0,#+7
        BPL.N    ??can_setband_6
//  548 
//  549         bFreezeMode = 0;
        MOVS     R0,#+0
        MOVS     R4,R0
        B.N      ??can_setband_7
//  550     }
//  551     else
//  552     {
//  553         bFreezeMode = 1;
??can_setband_5:
        MOVS     R0,#+1
        MOVS     R4,R0
//  554     }
//  555 
//  556     //�����Ҫ���õ�λ
//  557     CAN_CTRL1_REG(canptr) &= ~(0
//  558                                | CAN_CTRL1_PROPSEG_MASK
//  559                                | CAN_CTRL1_RJW_MASK
//  560                                | CAN_CTRL1_PSEG1_MASK
//  561                                | CAN_CTRL1_PSEG2_MASK
//  562                                | CAN_CTRL1_PRESDIV_MASK
//  563                                );
??can_setband_7:
        LDR      R1,[R7, #+4]
        MOVW     R0,#+65528
        ANDS     R1,R0,R1
        STR      R1,[R7, #+4]
//  564     //���ò�����
//  565     CAN_CTRL1_REG(canptr) |= (0
//  566                              | CAN_CTRL1_PROPSEG(pcan_ban_cfg->prop_seg)
//  567                              | CAN_CTRL1_RJW(pcan_ban_cfg->rjw)
//  568                              | CAN_CTRL1_PSEG1(pcan_ban_cfg->pseg1)
//  569                              | CAN_CTRL1_PSEG2(pcan_ban_cfg->pseg2)
//  570                              | CAN_CTRL1_PRESDIV(pcan_ban_cfg->presdiv)
//  571                             );
        LDR      R0,[R7, #+4]
        LDRB     R1,[R8, #+6]
        ANDS     R1,R1,#0x7
        LDRB     R2,[R8, #+9]
        LSLS     R2,R2,#+22
        ANDS     R2,R2,#0xC00000
        ORRS     R1,R2,R1
        LDRB     R2,[R8, #+7]
        LSLS     R2,R2,#+19
        ANDS     R2,R2,#0x380000
        ORRS     R1,R2,R1
        LDRB     R2,[R8, #+8]
        LSLS     R2,R2,#+16
        ANDS     R2,R2,#0x70000
        ORRS     R1,R2,R1
        LDRH     R2,[R8, #+4]
        ORRS     R1,R1,R2, LSL #+24
        ORRS     R0,R1,R0
        STR      R0,[R7, #+4]
//  572 
//  573     // �ָ�CAN ����ģʽ
//  574     if(!bFreezeMode)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??can_setband_8
//  575     {
//  576         // De-assert Freeze Mode
//  577         CAN_MCR_REG(canptr)  &= ~ (CAN_MCR_HALT_MASK);
        LDR      R0,[R7, #+0]
        BICS     R0,R0,#0x10000000
        STR      R0,[R7, #+0]
//  578 
//  579         // Wait till exit of freeze mode
//  580         while( CAN_MCR_REG(canptr)  & CAN_MCR_FRZACK_MASK);
??can_setband_9:
        LDR      R0,[R7, #+0]
        LSLS     R0,R0,#+7
        BMI.N    ??can_setband_9
//  581 
//  582         // Wait till ready
//  583         while( CAN_MCR_REG(canptr) & CAN_MCR_NOTRDY_MASK);
??can_setband_10:
        LDR      R0,[R7, #+0]
        LSLS     R0,R0,#+4
        BMI.N    ??can_setband_10
//  584     }
//  585 }
??can_setband_8:
        POP      {R0,R4-R9,PC}    ;; return
          CFI EndBlock cfiBlock11

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12:
        DC32     CANN

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_1:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_2:
        DC32     0x40048030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_3:
        DC32     ?_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_4:
        DC32     0x40065000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_5:
        DC32     0x1ffc0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_6:
        DC32     bus_clk_khz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_7:
        DC32     can_band_cfg_50000K

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_8:
        DC32     can_band_cfg_60000K

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_0:
        DC8 "D:\\\347\254\254\345\215\201\344\272\214\345\261\212\347\224\265\347\243\201\347\273\204\\Car\\Chip\\src\\MK60_can.c"
        DC8 0, 0, 0

        END
//  586 
//  587 
//  588 
//  589 
//  590 
//  591 
//  592 
//  593 
//  594 
// 
//   200 bytes in section .data
//    52 bytes in section .rodata
// 1 546 bytes in section .text
//    52 bytes in section .textrw
// 
// 1 598 bytes of CODE  memory
//    52 bytes of CONST memory
//   200 bytes of DATA  memory
//
//Errors: none
//Warnings: none
