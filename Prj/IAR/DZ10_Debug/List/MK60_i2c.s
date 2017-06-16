///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      12/Jun/2017  17:32:54
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\@@@@@@@\Car\Chip\src\MK60_i2c.c
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EWD73D.tmp
//        (D:\@@@@@@@\Car\Chip\src\MK60_i2c.c -D DEBUG -D
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
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\MK60_i2c.s
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

        EXTERN __aeabi_memcpy4
        EXTERN abs
        EXTERN assert_failed
        EXTERN bus_clk_khz
        EXTERN port_init

        PUBLIC I2CN
        PUBLIC MasterTransmission
        PUBLIC SlaveID
        PUBLIC i2c_delay
        PUBLIC i2c_init
        PUBLIC i2c_read_reg
        PUBLIC i2c_write_reg
        
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
        
// D:\@@@@@@@\Car\Chip\src\MK60_i2c.c
//    1 /*!
//    2  *     COPYRIGHT NOTICE
//    3  *     Copyright (c) 2013,ɽ��Ƽ�
//    4  *     All rights reserved.
//    5  *     �������ۣ�ɽ����̳ http://www.vcan123.com
//    6  *
//    7  *     ��ע�������⣬�����������ݰ�Ȩ����ɽ��Ƽ����У�δ����������������ҵ��;��
//    8  *     �޸�����ʱ���뱣��ɽ��Ƽ��İ�Ȩ������
//    9  *
//   10  * @file       MK60_i2c.c
//   11  * @brief      i2c��������
//   12  * @author     ɽ��Ƽ�
//   13  * @version    v5.0
//   14  * @date       2013-07-12
//   15  */
//   16 
//   17 #include "common.h"
//   18 #include "MK60_port.h"
//   19 #include "MK60_i2c.h"
//   20 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   21 unsigned char MasterTransmission;
MasterTransmission:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   22 unsigned char SlaveID;
SlaveID:
        DS8 1
//   23 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   24 I2C_MemMapPtr I2CN[2] = {I2C0_BASE_PTR, I2C1_BASE_PTR}; //��������ָ�����鱣�� I2CN �ĵ�ַ
I2CN:
        DC32 40066000H, 40067000H
//   25 
//   26 
//   27 /*
//   28  *  ��I2Cͨ�ŵ�ÿ��С���趼�ú궨����ʵ�֣������д���㺯��
//   29  *  �˺궨��ο���˼������˾�����޸�����
//   30  */
//   31 //�����ź�
//   32 #define i2c_Start(I2Cn)             I2C_C1_REG(I2CN[I2Cn]) |= (I2C_C1_TX_MASK | I2C_C1_MST_MASK)    //MST ��0��1��������ʼ�źţ�TX = 1 ���뷢��ģʽ
//   33 
//   34 //ֹͣ�ź�
//   35 #define i2c_Stop(I2Cn)              I2C_C1_REG(I2CN[I2Cn]) &= ~(I2C_C1_MST_MASK | I2C_C1_TX_MASK)   //MST ��1��0������ֹͣ�źţ�TX = 0 �������ģʽ
//   36 
//   37 //�ظ�����
//   38 #define i2c_RepeatedStart(I2Cn)     I2C_C1_REG(I2CN[I2Cn]) |= I2C_C1_RSTA_MASK
//   39 
//   40 //�������ģʽ(Ӧ��,��Ҫ���ն�����ݣ��������һ���ֽ�ǰ��Ҫ����Ӧ��i2c_DisableAck)
//   41 #define i2c_EnterRxMode(I2Cn)       I2C_C1_REG(I2CN[I2Cn]) &= ~(I2C_C1_TX_MASK | I2C_C1_TXAK_MASK)  //
//   42 
//   43 //�������ģʽ(��Ӧ��,ֻ����һ���ֽ�)
//   44 #define i2c_PutinRxMode(I2Cn)       I2C_C1_REG(I2CN[I2Cn]) &= ~I2C_C1_TX_MASK;I2C_C1_REG(I2CN[I2Cn]) |= I2C_C1_TXAK_MASK
//   45 
//   46 //����Ӧ��(�������һ���ֽ�)
//   47 #define i2c_DisableAck(I2Cn)        I2C_C1_REG(I2CN[I2Cn]) |= I2C_C1_TXAK_MASK
//   48 
//   49 //�ȴ� I2C_S
//   50 #define i2c_Wait(I2Cn)              while(( I2C_S_REG(I2CN[I2Cn]) & I2C_S_IICIF_MASK)==0) {} \ 
//   51                                     I2C_S_REG(I2CN[I2Cn]) |= I2C_S_IICIF_MASK;
//   52 
//   53 //дһ���ֽ�
//   54 #define i2c_write_byte(I2Cn,data)   (I2C_D_REG(I2CN[I2Cn]) = (data));i2c_Wait(I2Cn)
//   55 
//   56 /*!
//   57  *  @brief      I2C��ʼ�������ò�����
//   58  *  @param      I2Cn_e      I2Cģ��(I2C0��I2C1)
//   59  *  @param      baud        �ڴ��Ĳ�����
//   60  *  @return                 ʵ�ʵĲ�����
//   61  *  @since      v5.0
//   62  *  Sample usage:       i2c_init(I2C0,400*1000);     // ��ʼ��I2C0���ڴ��Ĳ�����Ϊ400k
//   63  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function i2c_init
        THUMB
//   64 uint32 i2c_init(I2Cn_e i2cn, uint32 baud)
//   65 {
i2c_init:
        PUSH     {R4-R11,LR}
          CFI R14 Frame(CFA, -4)
          CFI R11 Frame(CFA, -8)
          CFI R10 Frame(CFA, -12)
          CFI R9 Frame(CFA, -16)
          CFI R8 Frame(CFA, -20)
          CFI R7 Frame(CFA, -24)
          CFI R6 Frame(CFA, -28)
          CFI R5 Frame(CFA, -32)
          CFI R4 Frame(CFA, -36)
          CFI CFA R13+36
        SUB      SP,SP,#+132
          CFI CFA R13+168
        MOVS     R6,R0
        MOV      R8,R1
//   66     if(i2cn == I2C0)
        SXTB     R6,R6            ;; SignExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BNE.N    ??i2c_init_0
//   67     {
//   68         /* ����ʱ�� */
//   69 #if defined(MK60DZ10)
//   70         SIM_SCGC4 |= SIM_SCGC4_I2C0_MASK;           //���� I2C0ʱ��
        LDR.W    R0,??DataTable2  ;; 0x40048034
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40
        LDR.W    R1,??DataTable2  ;; 0x40048034
        STR      R0,[R1, #+0]
//   71 #elif defined( MK60F15)
//   72         SIM_SCGC4 |= SIM_SCGC4_IIC0_MASK;           //���� I2C0ʱ��
//   73 #endif
//   74 
//   75         /* ���� I2C0���ܵ� GPIO �ӿ� */
//   76         if((I2C0_SCL_PIN == PTB0) || (I2C0_SCL_PIN == PTB2) || (I2C0_SCL_PIN == PTD8) )
//   77         {
//   78             port_init (I2C0_SCL_PIN, ALT2 | ODO | PULLUP );
        MOVW     R1,#+547
        MOVS     R0,#+104
          CFI FunCall port_init
        BL       port_init
//   79         }
//   80         else
//   81             ASSERT(0);                              //���������������㣬ֱ�Ӷ���ʧ���ˣ����ùܽ�����
//   82 
//   83         if((I2C0_SDA_PIN == PTB1) || (I2C0_SDA_PIN == PTB3) || (I2C0_SDA_PIN == PTD9) )
//   84             port_init (I2C0_SDA_PIN, ALT2 | ODO | PULLUP );
        MOVW     R1,#+547
        MOVS     R0,#+105
          CFI FunCall port_init
        BL       port_init
        B.N      ??i2c_init_1
//   85         else
//   86             ASSERT(0);                              //���������������㣬ֱ�Ӷ���ʧ���ˣ����ùܽ�����
//   87     }
//   88     else
//   89     {
//   90         /* ����ʱ�� */
//   91 #if defined(MK60DZ10)
//   92         SIM_SCGC4 |= SIM_SCGC4_I2C1_MASK;           //���� I2C1ʱ��
??i2c_init_0:
        LDR.W    R0,??DataTable2  ;; 0x40048034
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.W    R1,??DataTable2  ;; 0x40048034
        STR      R0,[R1, #+0]
//   93 #elif defined(MK60F15)
//   94         SIM_SCGC4 |= SIM_SCGC4_IIC1_MASK;           //���� I2C1ʱ��
//   95 #endif
//   96         /* ���� I2C1���ܵ� GPIO �ӿ� */
//   97         if(I2C1_SCL_PIN == PTE1)
//   98             port_init (I2C1_SCL_PIN, ALT6 | ODO | PULLUP );
//   99         else if(I2C1_SCL_PIN == PTC10)
//  100             port_init (I2C1_SCL_PIN, ALT2 | ODO | PULLUP );
        MOVW     R1,#+547
        MOVS     R0,#+74
          CFI FunCall port_init
        BL       port_init
//  101         else
//  102             ASSERT(0);                          //���������������㣬ֱ�Ӷ���ʧ���ˣ����ùܽ�����
//  103 
//  104         if(I2C1_SDA_PIN == PTE0)
//  105             port_init (I2C1_SDA_PIN, ALT6 | ODO | PULLUP );
//  106         else if (I2C1_SDA_PIN == PTC11)
//  107             port_init (I2C1_SDA_PIN, ALT2 | ODO | PULLUP );
        MOVW     R1,#+547
        MOVS     R0,#+75
          CFI FunCall port_init
        BL       port_init
//  108         else
//  109             ASSERT(0);                          //���������������㣬ֱ�Ӷ���ʧ���ˣ����ùܽ�����
//  110     }
//  111 
//  112     /* ����Ƶ�� */
//  113 
//  114     // I2C baud rate = bus speed (Hz)/(mul �� SCL divider)  ������ 50MHz/(1 ��128)=390.625kHz
//  115     // SDA hold time = bus period (s) �� mul �� SDA hold value
//  116     // SCL start hold time = bus period (s) �� mul �� SCL start hold value
//  117     // SCL stop hold time = bus period (s) �� mul �� SCL stop hold value
//  118 
//  119     //��� ICR ��Ӧ��  SCL_divider ���� ��K60P144M100SF2RM.pdf����1468ҳ�� I2C Divider and Hold Values
//  120     uint16 ICR_2_SCL_divider[0x40]  =
//  121     {
//  122         20, 22, 24, 26, 28, 30, 34, 40, 28, 32, 36, 40, 44, 48, 56, 68,
//  123         48, 56, 64, 72, 80, 88, 104, 128, 80, 96, 112, 128, 144, 160, 192, 240,
//  124         160, 192, 224, 256, 288, 320, 384, 480, 320, 384, 448, 512, 576, 640, 768, 960,
//  125         640, 768, 896, 1024, 1152, 1280, 1536, 1920, 1280, 1536, 1792, 2048, 2304, 2560, 3072, 3840
//  126     };
??i2c_init_1:
        MOV      R0,SP
        LDR.N    R1,??DataTable2_1
        MOVS     R2,#+128
          CFI FunCall __aeabi_memcpy4
        BL       __aeabi_memcpy4
//  127 
//  128     uint8 mult;
//  129     if(bus_clk_khz <= 50000)mult = 0;         //bus һ��Ƶ
        LDR.N    R0,??DataTable2_2
        LDR      R0,[R0, #+0]
        MOVW     R1,#+50001
        CMP      R0,R1
        BGE.N    ??i2c_init_2
        MOVS     R0,#+0
        MOVS     R7,R0
        B.N      ??i2c_init_3
//  130     else  if(bus_clk_khz <= 100000)mult = 1;  //bus ����Ƶ
??i2c_init_2:
        LDR.N    R0,??DataTable2_2
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_3  ;; 0x186a1
        CMP      R0,R1
        BGE.N    ??i2c_init_4
        MOVS     R0,#+1
        MOVS     R7,R0
        B.N      ??i2c_init_3
//  131     else      mult = 2;                       //bus �ķ�Ƶ
??i2c_init_4:
        MOVS     R0,#+2
        MOVS     R7,R0
//  132 
//  133     uint16 scldiv =  bus_clk_khz * 1000 / ( (1<<mult) * baud );  //��ѵķ�Ƶϵ��
??i2c_init_3:
        LDR.N    R0,??DataTable2_2
        LDR      R1,[R0, #+0]
        MOV      R0,#+1000
        MULS     R1,R0,R1
        MOVS     R0,#+1
        LSLS     R0,R0,R7
        MUL      R0,R8,R0
        UDIV     R9,R1,R0
//  134 
//  135     //��Ҫ�� ICR_2_SCL_divider ���ҵ� ����ѷ�Ƶϵ��scldiv������� ��Ƶϵ��
//  136     uint8 icr, n = 0x40;
        MOVS     R5,#+64
//  137     uint16 min_Dvalue = ~0, Dvalue;
        MOVW     R11,#+65535
//  138 
//  139     while(n)                                            //ѭ�������ɨ�裬�ҳ���ӽ��� ��Ƶϵ��
??i2c_init_5:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??i2c_init_6
//  140     {
//  141         n--;
        SUBS     R5,R5,#+1
//  142         Dvalue = abs(scldiv - ICR_2_SCL_divider[n]);
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        MOV      R0,SP
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDRH     R0,[R0, R5, LSL #+1]
        SUBS     R0,R9,R0
          CFI FunCall abs
        BL       abs
        MOVS     R4,R0
//  143         if(Dvalue == 0)
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+0
        BNE.N    ??i2c_init_7
//  144         {
//  145             icr = n;
        MOV      R10,R5
//  146             break;                                      //�˳�whileѭ��
        B.N      ??i2c_init_6
//  147         }
//  148 
//  149         if(Dvalue < min_Dvalue)
??i2c_init_7:
        MOVS     R0,R4
        MOV      R1,R11
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BCS.N    ??i2c_init_5
//  150         {
//  151             icr = n;
        MOV      R10,R5
//  152             min_Dvalue = Dvalue;
        MOV      R11,R4
        B.N      ??i2c_init_5
//  153         }
//  154     }
//  155 
//  156     I2C_F_REG(I2CN[i2cn])  = ( 0                        // I2C Frequency Divider register (I2Cx_F)  I2C��Ƶ�Ĵ���   I2C�������Ϊ 400k
//  157                                | I2C_F_MULT(mult)        // �������� mul =  1<<MULT
//  158                                | I2C_F_ICR(icr)          // ʱ������ = ICR_2_SCL_divider[ICR] ������� ICR �� SCL_divider ӳ���ϵ
//  159                              );
??i2c_init_6:
        ANDS     R0,R10,#0x3F
        ORRS     R0,R0,R7, LSL #+6
        LDR.N    R1,??DataTable2_4
        SXTB     R6,R6            ;; SignExt  R6,R6,#+24,#+24
        LDR      R1,[R1, R6, LSL #+2]
        STRB     R0,[R1, #+1]
//  160 
//  161     /* ʹ�� I2C */
//  162     I2C_C1_REG(I2CN[i2cn]) = ( 0
//  163                                | I2C_C1_IICEN_MASK       //ʹ��I2C
//  164                                //| I2C_C1_IICIE_MASK       //ʹ���ж�
//  165                              );
        MOVS     R0,#+128
        LDR.N    R1,??DataTable2_4
        SXTB     R6,R6            ;; SignExt  R6,R6,#+24,#+24
        LDR      R1,[R1, R6, LSL #+2]
        STRB     R0,[R1, #+2]
//  166 
//  167     return (  bus_clk_khz * 1000 / ( (1<<mult) * ICR_2_SCL_divider[icr])  );
        LDR.N    R0,??DataTable2_2
        LDR      R1,[R0, #+0]
        MOV      R0,#+1000
        MULS     R1,R0,R1
        MOVS     R2,#+1
        LSLS     R2,R2,R7
        MOV      R0,SP
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        LDRH     R0,[R0, R10, LSL #+1]
        MULS     R2,R0,R2
        SDIV     R0,R1,R2
        ADD      SP,SP,#+132
          CFI CFA R13+36
        POP      {R4-R11,PC}      ;; return
//  168 }
          CFI EndBlock cfiBlock0
//  169 
//  170 
//  171 /*!
//  172  *  @brief      I2Cͨ�Ž�������Ҫ���õĺ�������
//  173  *  @since      v5.0
//  174  *  @note       ���ͨ��ʧ�ܣ��ɳ����������ʱֵ��ȷ���Ƿ���ʱ���µ�
//  175  */

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function i2c_delay
          CFI NoCalls
        THUMB
//  176 void i2c_delay(void)
//  177 {
i2c_delay:
        SUB      SP,SP,#+4
          CFI CFA R13+4
//  178     volatile uint16 n = 80;     //ע�⣬�������̫С���ᵼ�¶�ȡ����
        MOVS     R0,#+80
        STRH     R0,[SP, #+0]
//  179 
//  180     while(n--)
??i2c_delay_0:
        LDRH     R0,[SP, #+0]
        SUBS     R1,R0,#+1
        STRH     R1,[SP, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+0
        BEQ.N    ??i2c_delay_1
//  181     {
//  182         asm("nop");
        nop
        B.N      ??i2c_delay_0
//  183     }
//  184 }
??i2c_delay_1:
        ADD      SP,SP,#+4
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//  185 
//  186 /*!
//  187  *  @brief      ��ȡI2C�豸ָ����ַ�Ĵ���������
//  188  *  @param      I2Cn_e        I2Cģ��(I2C0��I2C1)
//  189  *  @param      SlaveID     �ӻ���ַ(7λ��ַ)
//  190  *  @param      reg         �ӻ��Ĵ�����ַ
//  191  *  @return                 ��ȡ�ļĴ���ֵ
//  192  *  @since      v5.0
//  193  *  Sample usage:       uint8 value = i2c_read_reg(I2C0, 0x1D, 1);
//  194  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function i2c_read_reg
        THUMB
//  195 uint8 i2c_read_reg(I2Cn_e i2cn, uint8 SlaveID, uint8 reg)
//  196 {
i2c_read_reg:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  197 
//  198     //��д��Ĵ�����ַ,�ٶ�ȡ����,��˴˹����� I2C �ĸ��ϸ�ʽ,�ı����ݷ���ʱ��Ҫ��������
//  199     uint8 result;
//  200 
//  201     ASSERT((SlaveID & 0x80) == 0);                      //���ԣ�����Ҫ���7λ��ַ��ֵ������7bit,����ͨ��ʱҪ��ĸ�7λ
        LSLS     R0,R5,#+24
        BPL.N    ??i2c_read_reg_0
        MOVS     R1,#+201
        LDR.N    R0,??DataTable2_5
          CFI FunCall assert_failed
        BL       assert_failed
//  202     //��Щ�ֲᣬ������7λ��ַָ����8bit��ĸ�7λ
//  203     //��Щ�ֲᣬ������7λ��ַָ����7bit
//  204     //������ȷ�ϣ����Գ����Ƿ�ͨ��������ȷ��
//  205 
//  206     i2c_Start(i2cn);                                    //���������ź�
??i2c_read_reg_0:
        LDR.N    R0,??DataTable2_4
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R0,[R0, #+2]
        ORRS     R0,R0,#0x30
        LDR.N    R1,??DataTable2_4
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        STRB     R0,[R1, #+2]
//  207 
//  208     i2c_write_byte(i2cn, ( SlaveID << 1 ) | MWSR);      //���ʹӻ���ַ��дλ
        LSLS     R0,R5,#+1
        LDR.N    R1,??DataTable2_4
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        STRB     R0,[R1, #+4]
??i2c_read_reg_1:
        LDR.N    R0,??DataTable2_4
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R0,[R0, #+3]
        LSLS     R0,R0,#+30
        BPL.N    ??i2c_read_reg_1
        LDR.N    R0,??DataTable2_4
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R0,[R0, #+3]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable2_4
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        STRB     R0,[R1, #+3]
//  209 
//  210     i2c_write_byte(i2cn, reg);                          //���ʹӻ���ļĴ�����ַ
        LDR.N    R0,??DataTable2_4
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        STRB     R6,[R0, #+4]
??i2c_read_reg_2:
        LDR.N    R0,??DataTable2_4
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R0,[R0, #+3]
        LSLS     R0,R0,#+30
        BPL.N    ??i2c_read_reg_2
        LDR.N    R0,??DataTable2_4
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R0,[R0, #+3]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable2_4
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        STRB     R0,[R1, #+3]
//  211 
//  212     i2c_RepeatedStart(i2cn);                            //���ϸ�ʽ���������������ź�
        LDR.N    R0,??DataTable2_4
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R0,[R0, #+2]
        ORRS     R0,R0,#0x4
        LDR.N    R1,??DataTable2_4
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        STRB     R0,[R1, #+2]
//  213 
//  214     i2c_write_byte(i2cn, ( SlaveID << 1) | MRSW );      //���ʹӻ���ַ�Ͷ�λ
        LSLS     R0,R5,#+1
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable2_4
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        STRB     R0,[R1, #+4]
??i2c_read_reg_3:
        LDR.N    R0,??DataTable2_4
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R0,[R0, #+3]
        LSLS     R0,R0,#+30
        BPL.N    ??i2c_read_reg_3
        LDR.N    R0,??DataTable2_4
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R0,[R0, #+3]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable2_4
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        STRB     R0,[R1, #+3]
//  215 
//  216     i2c_PutinRxMode(i2cn);                              //�������ģʽ(��Ӧ��,ֻ����һ���ֽ�)
        LDR.N    R0,??DataTable2_4
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R0,[R0, #+2]
        ANDS     R0,R0,#0xEF
        LDR.N    R1,??DataTable2_4
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        STRB     R0,[R1, #+2]
        LDR.N    R0,??DataTable2_4
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R0,[R0, #+2]
        ORRS     R0,R0,#0x8
        LDR.N    R1,??DataTable2_4
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        STRB     R0,[R1, #+2]
//  217     result = I2C_D_REG(I2CN[i2cn]);                     //��ٶ�ȡһ�Σ�������������
        LDR.N    R0,??DataTable2_4
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R0,[R0, #+4]
        MOVS     R7,R0
//  218     i2c_Wait(i2cn);                                     //�ȴ��������
??i2c_read_reg_4:
        LDR.N    R0,??DataTable2_4
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R0,[R0, #+3]
        LSLS     R0,R0,#+30
        BPL.N    ??i2c_read_reg_4
        LDR.N    R0,??DataTable2_4
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R0,[R0, #+3]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable2_4
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        STRB     R0,[R1, #+3]
//  219 
//  220     i2c_Stop(i2cn);                                     //����ֹͣ�ź�
        LDR.N    R0,??DataTable2_4
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R0,[R0, #+2]
        ANDS     R0,R0,#0xCF
        LDR.N    R1,??DataTable2_4
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        STRB     R0,[R1, #+2]
//  221 
//  222     result = I2C_D_REG(I2CN[i2cn]);                     //��ȡ����
        LDR.N    R0,??DataTable2_4
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R0,[R0, #+4]
        MOVS     R7,R0
//  223 
//  224     i2c_delay();                                        //������ʱһ�£��������
          CFI FunCall i2c_delay
        BL       i2c_delay
//  225 
//  226     return result;
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4-R7,PC}    ;; return
//  227 }
          CFI EndBlock cfiBlock2
//  228 
//  229 
//  230 /*!
//  231  *  @brief      д��һ���ֽ����ݵ�I2C�豸ָ���Ĵ�����ַ
//  232  *  @param      I2Cn_e        I2Cģ��(I2C0��I2C1)
//  233  *  @param      SlaveID     �ӻ���ַ(7λ��ַ)
//  234  *  @param      reg         �ӻ��Ĵ�����ַ
//  235  *  @param      Data        ����
//  236  *  @since      v5.0
//  237  *  Sample usage:       i2c_write_reg(I2C0, 0x1D, 1,2);     //��ӻ�0x1D �ļĴ��� 1 д������ 2
//  238  */
//  239 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function i2c_write_reg
        THUMB
//  240 void i2c_write_reg(I2Cn_e i2cn, uint8 SlaveID, uint8 reg, uint8 Data)
//  241 {
i2c_write_reg:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
//  242 
//  243     i2c_Start(i2cn);                                    //���������ź�
        LDR.N    R0,??DataTable2_4
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R0,[R0, #+2]
        ORRS     R0,R0,#0x30
        LDR.N    R1,??DataTable2_4
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        STRB     R0,[R1, #+2]
//  244 
//  245     i2c_write_byte(i2cn, ( SlaveID << 1 ) | MWSR);      //���ʹӻ���ַ��дλ
        LSLS     R0,R5,#+1
        LDR.N    R1,??DataTable2_4
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        STRB     R0,[R1, #+4]
??i2c_write_reg_0:
        LDR.N    R0,??DataTable2_4
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R0,[R0, #+3]
        LSLS     R0,R0,#+30
        BPL.N    ??i2c_write_reg_0
        LDR.N    R0,??DataTable2_4
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R0,[R0, #+3]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable2_4
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        STRB     R0,[R1, #+3]
//  246 
//  247     i2c_write_byte(i2cn, reg);                          //���ʹӻ���ļĴ�����ַ
        LDR.N    R0,??DataTable2_4
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        STRB     R6,[R0, #+4]
??i2c_write_reg_1:
        LDR.N    R0,??DataTable2_4
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R0,[R0, #+3]
        LSLS     R0,R0,#+30
        BPL.N    ??i2c_write_reg_1
        LDR.N    R0,??DataTable2_4
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R0,[R0, #+3]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable2_4
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        STRB     R0,[R1, #+3]
//  248 
//  249     i2c_write_byte(i2cn, Data);                         //������Ҫд�������
        LDR.N    R0,??DataTable2_4
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        STRB     R7,[R0, #+4]
??i2c_write_reg_2:
        LDR.N    R0,??DataTable2_4
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R0,[R0, #+3]
        LSLS     R0,R0,#+30
        BPL.N    ??i2c_write_reg_2
        LDR.N    R0,??DataTable2_4
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R0,[R0, #+3]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable2_4
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        STRB     R0,[R1, #+3]
//  250 
//  251     i2c_Stop(i2cn);
        LDR.N    R0,??DataTable2_4
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R0,[R0, #+2]
        ANDS     R0,R0,#0xCF
        LDR.N    R1,??DataTable2_4
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        STRB     R0,[R1, #+2]
//  252 
//  253     i2c_delay();                                        //��ʱ̫�̵Ļ�������д����
          CFI FunCall i2c_delay
        BL       i2c_delay
//  254 }
        POP      {R0,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     0x40048034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     ?_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     bus_clk_khz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     0x186a1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     I2CN

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DC32     ?_0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_0:
        DC8 "D:\\\347\254\254\345\215\201\344\272\214\345\261\212\347\224\265\347\243\201\347\273\204\\Car\\Chip\\src\\MK60_i2c.c"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_1:
        DC16 20, 22, 24, 26, 28, 30, 34, 40, 28, 32, 36, 40, 44, 48, 56, 68, 48
        DC16 56, 64, 72, 80, 88, 104, 128, 80, 96, 112, 128, 144, 160, 192, 240
        DC16 160, 192, 224, 256, 288, 320, 384, 480, 320, 384, 448, 512, 576
        DC16 640, 768, 960, 640, 768, 896, 1024, 1152, 1280, 1536, 1920, 1280
        DC16 1536, 1792, 2048, 2304, 2560, 3072, 3840

        END
//  255 
// 
//   2 bytes in section .bss
//   8 bytes in section .data
// 180 bytes in section .rodata
// 920 bytes in section .text
// 
// 920 bytes of CODE  memory
// 180 bytes of CONST memory
//  10 bytes of DATA  memory
//
//Errors: none
//Warnings: none
