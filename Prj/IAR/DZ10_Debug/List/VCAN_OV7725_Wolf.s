///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      16/Jun/2017  18:57:14
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\@@@@@@@\Car\Board\src\VCAN_OV7725_Wolf.c
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EW278F.tmp
//        (D:\@@@@@@@\Car\Board\src\VCAN_OV7725_Wolf.c -D DEBUG
//        -D ARM_MATH_CM4 -D MK60DZ10 -lA
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
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\VCAN_OV7725_Wolf.s
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

        EXTERN SCCB_GPIO_init
        EXTERN SCCB_ReadByte
        EXTERN SCCB_WriteByte
        EXTERN dma_portx2buff_init
        EXTERN port_init
        EXTERN systick_delay_ms

        PUBLIC ov7725_wolf_cfgnum
        PUBLIC ov7725_wolf_dma
        PUBLIC ov7725_wolf_get_img
        PUBLIC ov7725_wolf_img_buff
        PUBLIC ov7725_wolf_img_flag
        PUBLIC ov7725_wolf_init
        PUBLIC ov7725_wolf_reg
        PUBLIC ov7725_wolf_vsync
        
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
        
// D:\@@@@@@@\Car\Board\src\VCAN_OV7725_Wolf.c
//    1 /*!
//    2  *     COPYRIGHT NOTICE
//    3  *     Copyright (c) 2013,ɽ��Ƽ�
//    4  *     All rights reserved.
//    5  *     �������ۣ�ɽ����̳ http://www.vcan123.com
//    6  *
//    7  *     ��ע�������⣬�����������ݰ�Ȩ����ɽ��Ƽ����У�δ����������������ҵ��;��
//    8  *     �޸�����ʱ���뱣��ɽ��Ƽ��İ�Ȩ������
//    9  *
//   10  * @file       VCAN_OV7725_Wolf.c
//   11  * @brief      ����ov7725��������
//   12  * @author     ɽ��Ƽ�
//   13  * @version    v5.0
//   14  * @date       2013-09-07
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
//   18 #include "MK60_gpio.h"
//   19 #include "MK60_port.h"
//   20 #include "MK60_dma.h"
//   21 #include "VCAN_camera.h"
//   22 
//   23 #define OV7725_WOLF_Delay_ms(time)  DELAY_MS(time)
//   24 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   25 uint8   *ov7725_wolf_img_buff;
ov7725_wolf_img_buff:
        DS8 4
//   26 

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
//   27 volatile IMG_STATUS_e      ov7725_wolf_img_flag = IMG_FINISH;   //ͼ��״̬
ov7725_wolf_img_flag:
        DC8 1
//   28 
//   29 
//   30 //�ڲ���������
//   31 static uint8 ov7725_wolf_reg_init(void);
//   32 static void ov7725_wolf_port_init();
//   33 
//   34 
//   35 /*!
//   36  *  @brief      ӥ��ov7725��ʼ��
//   37  *  @since      v5.0
//   38  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function ov7725_wolf_init
        THUMB
//   39 uint8 ov7725_wolf_init(uint8 *imgaddr)
//   40 {
ov7725_wolf_init:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//   41     ov7725_wolf_img_buff = imgaddr;
        LDR.N    R0,??DataTable8
        STR      R4,[R0, #+0]
//   42     while(ov7725_wolf_reg_init() == 0);
??ov7725_wolf_init_0:
          CFI FunCall ov7725_wolf_reg_init
        BL       ov7725_wolf_reg_init
        CMP      R0,#+0
        BEQ.N    ??ov7725_wolf_init_0
//   43     ov7725_wolf_port_init();
          CFI FunCall ov7725_wolf_port_init
        BL       ov7725_wolf_port_init
//   44     return 0;
        MOVS     R0,#+0
        POP      {R4,PC}          ;; return
//   45 }
          CFI EndBlock cfiBlock2
//   46 
//   47 /*!
//   48  *  @brief      ӥ��ov7725�ܽų�ʼ�����ڲ����ã�
//   49  *  @since      v5.0
//   50  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function ov7725_wolf_port_init
        THUMB
//   51 void ov7725_wolf_port_init()
//   52 {
ov7725_wolf_port_init:
        PUSH     {R5-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+16
//   53     //DMAͨ��0��ʼ����PTA27����Դ(Ĭ��������)��Դ��ַΪPTB_B0_IN��Ŀ�ĵ�ַΪ��IMG_BUFF��ÿ�δ���1Byte
//   54     dma_portx2buff_init(CAMERA_DMA_CH, (void *)&PTB_B0_IN, (void *)ov7725_wolf_img_buff, PTA27, DMA_BYTE1, CAMERA_DMA_NUM, DADDR_KEEPON);
        MOVS     R0,#+1
        STR      R0,[SP, #+8]
        MOV      R0,#+600
        STR      R0,[SP, #+4]
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+27
        LDR.N    R0,??DataTable8
        LDR      R2,[R0, #+0]
        LDR.N    R1,??DataTable8_1  ;; 0x400ff050
        MOVS     R0,#+0
          CFI FunCall dma_portx2buff_init
        BL       dma_portx2buff_init
//   55 
//   56     DMA_DIS(CAMERA_DMA_CH);
        LDR.N    R0,??DataTable8_2  ;; 0x4000800c
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.N    R1,??DataTable8_2  ;; 0x4000800c
        STR      R0,[R1, #+0]
//   57     disable_irq(PORTA_IRQn);                        //�ر�PTA���ж�
        MOVS     R0,#+87
          CFI FunCall NVIC_DisableIRQ
        BL       NVIC_DisableIRQ
//   58     DMA_IRQ_CLEAN(CAMERA_DMA_CH);                   //���ͨ�������жϱ�־λ
        LDR.N    R0,??DataTable8_3  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable8_3  ;; 0x40008024
        STR      R0,[R1, #+0]
//   59     DMA_IRQ_EN(CAMERA_DMA_CH);
        MOVS     R0,#+0
          CFI FunCall NVIC_EnableIRQ
        BL       NVIC_EnableIRQ
//   60 
//   61     port_init(PTA27, ALT1 | DMA_FALLING | PULLUP );         //PCLK
        LDR.N    R1,??DataTable8_4  ;; 0x20103
        MOVS     R0,#+27
          CFI FunCall port_init
        BL       port_init
//   62 
//   63     port_init(PTA29, ALT1 | IRQ_RISING | PULLUP | PF);     //���жϣ��������Ͻ��ش����жϣ����˲�
        LDR.N    R1,??DataTable8_5  ;; 0x90113
        MOVS     R0,#+29
          CFI FunCall port_init
        BL       port_init
//   64 
//   65 }
        POP      {R0-R2,PC}       ;; return
          CFI EndBlock cfiBlock3
//   66 
//   67 /*!
//   68  *  @brief      ӥ��ov7725���жϷ�����
//   69  *  @since      v5.0
//   70  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function ov7725_wolf_vsync
        THUMB
//   71 void ov7725_wolf_vsync(void)
//   72 {
ov7725_wolf_vsync:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   73 
//   74     //���ж���Ҫ�ж��ǳ��������ǳ���ʼ
//   75     if(ov7725_wolf_img_flag == IMG_START)                   //��Ҫ��ʼ�ɼ�ͼ��
        LDR.N    R0,??DataTable8_6
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+4
        BNE.N    ??ov7725_wolf_vsync_0
//   76     {
//   77         ov7725_wolf_img_flag = IMG_GATHER;                  //���ͼ��ɼ���
        MOVS     R0,#+3
        LDR.N    R1,??DataTable8_6
        STRB     R0,[R1, #+0]
//   78         disable_irq(PORTA_IRQn);
        MOVS     R0,#+87
          CFI FunCall NVIC_DisableIRQ
        BL       NVIC_DisableIRQ
//   79 
//   80         DMA_EN(CAMERA_DMA_CH);                  //ʹ��ͨ��CHn Ӳ������
        LDR.N    R0,??DataTable8_2  ;; 0x4000800c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable8_2  ;; 0x4000800c
        STR      R0,[R1, #+0]
//   81         DMA_DADDR(CAMERA_DMA_CH) = (uint32)ov7725_wolf_img_buff;    //�ָ���ַ
        LDR.N    R0,??DataTable8
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable8_7  ;; 0x40009010
        STR      R0,[R1, #+0]
        B.N      ??ov7725_wolf_vsync_1
//   82     }
//   83     else                                        //ͼ��ɼ�����
//   84     {
//   85         disable_irq(PORTA_IRQn);                        //�ر�PTA���ж�
??ov7725_wolf_vsync_0:
        MOVS     R0,#+87
          CFI FunCall NVIC_DisableIRQ
        BL       NVIC_DisableIRQ
//   86         ov7725_wolf_img_flag = IMG_FAIL;                    //���ͼ��ɼ�ʧ��
        MOVS     R0,#+2
        LDR.N    R1,??DataTable8_6
        STRB     R0,[R1, #+0]
//   87     }
//   88 }
??ov7725_wolf_vsync_1:
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock4
//   89 
//   90 /*!
//   91  *  @brief      ӥ��ov7725 DMA�жϷ�����
//   92  *  @since      v5.0
//   93  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function ov7725_wolf_dma
          CFI NoCalls
        THUMB
//   94 void ov7725_wolf_dma()
//   95 {
//   96     ov7725_wolf_img_flag = IMG_FINISH ;
ov7725_wolf_dma:
        MOVS     R0,#+1
        LDR.N    R1,??DataTable8_6
        STRB     R0,[R1, #+0]
//   97     DMA_IRQ_CLEAN(CAMERA_DMA_CH);           //���ͨ�������жϱ�־λ
        LDR.N    R0,??DataTable8_3  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable8_3  ;; 0x40008024
        STR      R0,[R1, #+0]
//   98 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock5
//   99 
//  100 /*!
//  101  *  @brief      ӥ��ov7725�ɼ�ͼ�񣨲ɼ��������ݴ洢�� ��ʼ��ʱ���õĵ�ַ�ϣ�
//  102  *  @since      v5.0
//  103  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function ov7725_wolf_get_img
        THUMB
//  104 void ov7725_wolf_get_img()
//  105 {
ov7725_wolf_get_img:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  106     ov7725_wolf_img_flag = IMG_START;                    //��ʼ�ɼ�ͼ��
        MOVS     R0,#+4
        LDR.N    R1,??DataTable8_6
        STRB     R0,[R1, #+0]
//  107     PORTA_ISFR = ~0;                                    //д1���жϱ�־λ(����ģ���Ȼ�ص���һ���жϾ����ϴ����ж�)
        MOVS     R0,#-1
        LDR.N    R1,??DataTable8_8  ;; 0x400490a0
        STR      R0,[R1, #+0]
//  108     enable_irq(PORTA_IRQn);                             //����PTA���ж�
        MOVS     R0,#+87
          CFI FunCall NVIC_EnableIRQ
        BL       NVIC_EnableIRQ
//  109     while(ov7725_wolf_img_flag != IMG_FINISH)            //�ȴ�ͼ��ɼ����
??ov7725_wolf_get_img_0:
        LDR.N    R0,??DataTable8_6
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??ov7725_wolf_get_img_1
//  110     {
//  111         if(ov7725_wolf_img_flag == IMG_FAIL)             //����ͼ��ɼ����������¿�ʼ�ɼ�
        LDR.N    R0,??DataTable8_6
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??ov7725_wolf_get_img_0
//  112         {
//  113             ov7725_wolf_img_flag = IMG_START;            //��ʼ�ɼ�ͼ��
        MOVS     R0,#+4
        LDR.N    R1,??DataTable8_6
        STRB     R0,[R1, #+0]
//  114             PORTA_ISFR = ~0;                            //д1���жϱ�־λ(����ģ���Ȼ�ص���һ���жϾ����ϴ����ж�)
        MOVS     R0,#-1
        LDR.N    R1,??DataTable8_8  ;; 0x400490a0
        STR      R0,[R1, #+0]
//  115             enable_irq(PORTA_IRQn);                     //����PTA���ж�
        MOVS     R0,#+87
          CFI FunCall NVIC_EnableIRQ
        BL       NVIC_EnableIRQ
        B.N      ??ov7725_wolf_get_img_0
//  116         }
//  117     }
//  118 }
??ov7725_wolf_get_img_1:
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock6
//  119 
//  120 
//  121 /*OV7725��ʼ�����ñ�*/

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//  122 reg_s ov7725_wolf_reg[] =
ov7725_wolf_reg:
        DC8 13, 129, 17, 2, 9, 3, 12, 208, 18, 64, 23, 63, 24, 80, 25, 3, 26
        DC8 120, 50, 0, 160, 10, 99, 224, 172, 255, 101, 12, 102, 0, 103, 0, 41
        DC8 20, 44, 30, 42, 0, 126, 12, 127, 22, 128, 42, 129, 78, 130, 97, 131
        DC8 111, 132, 123, 133, 134, 134, 142, 135, 151, 136, 164, 137, 175
        DC8 138, 197, 139, 215, 140, 232, 141, 32, 74, 0, 73, 19, 71, 8, 75, 20
        DC8 76, 23, 70, 5, 34, 153, 35, 3, 166, 4, 155, 0, 156, 32, 171, 6, 158
        DC8 17, 159, 2, 0, 0
//  123 {
//  124     //�Ĵ������Ĵ���ֵ��
//  125     {OV7725_COM4         , 0x81},
//  126     {OV7725_CLKRC        , 0x02},
//  127     {OV7725_COM2         , 0x03},
//  128     {OV7725_COM3         , 0xD0},
//  129     {OV7725_COM7         , 0x40},
//  130     {OV7725_HSTART       , 0x3F},
//  131     {OV7725_HSIZE        , 0x50},
//  132     {OV7725_VSTRT        , 0x03},
//  133     {OV7725_VSIZE        , 0x78},
//  134     {OV7725_HREF         , 0x00},
//  135     {OV7725_SCAL0        , 0x0A},
//  136     {OV7725_AWB_Ctrl0    , 0xE0},
//  137     {OV7725_DSPAuto      , 0xff},
//  138     {OV7725_DSP_Ctrl2    , 0x0C},
//  139     {OV7725_DSP_Ctrl3    , 0x00},
//  140     {OV7725_DSP_Ctrl4    , 0x00},
//  141 
//  142 #if (CAMERA_W == 80)
//  143     {OV7725_HOutSize     , 0x14},
//  144 #elif (CAMERA_W == 160)
//  145     {OV7725_HOutSize     , 0x28},
//  146 #elif (CAMERA_W == 240)
//  147     {OV7725_HOutSize     , 0x3c},
//  148 #elif (CAMERA_W == 320)
//  149     {OV7725_HOutSize     , 0x50},
//  150 #else
//  151 
//  152 #endif
//  153 
//  154 #if (CAMERA_H == 60 )
//  155     {OV7725_VOutSize     , 0x1E},
//  156 #elif (CAMERA_H == 120 )
//  157     {OV7725_VOutSize     , 0x3c},
//  158 #elif (CAMERA_H == 180 )
//  159     {OV7725_VOutSize     , 0x5a},
//  160 #elif (CAMERA_H == 240 )
//  161     {OV7725_VOutSize     , 0x78},
//  162 #else
//  163 
//  164 #endif
//  165 
//  166     {OV7725_EXHCH        , 0x00},
//  167     {OV7725_GAM1         , 0x0c},
//  168     {OV7725_GAM2         , 0x16},
//  169     {OV7725_GAM3         , 0x2a},
//  170     {OV7725_GAM4         , 0x4e},
//  171     {OV7725_GAM5         , 0x61},
//  172     {OV7725_GAM6         , 0x6f},
//  173     {OV7725_GAM7         , 0x7b},
//  174     {OV7725_GAM8         , 0x86},
//  175     {OV7725_GAM9         , 0x8e},
//  176     {OV7725_GAM10        , 0x97},
//  177     {OV7725_GAM11        , 0xa4},
//  178     {OV7725_GAM12        , 0xaf},
//  179     {OV7725_GAM13        , 0xc5},
//  180     {OV7725_GAM14        , 0xd7},
//  181     {OV7725_GAM15        , 0xe8},
//  182     {OV7725_SLOP         , 0x20},
//  183     {OV7725_LC_RADI      , 0x00},
//  184     {OV7725_LC_COEF      , 0x13},
//  185     {OV7725_LC_XC        , 0x08},
//  186     {OV7725_LC_COEFB     , 0x14},
//  187     {OV7725_LC_COEFR     , 0x17},
//  188     {OV7725_LC_CTR       , 0x05},
//  189     {OV7725_BDBase       , 0x99},
//  190     {OV7725_BDMStep      , 0x03},
//  191     {OV7725_SDE          , 0x04},
//  192     {OV7725_BRIGHT       , 0x00},
//  193     {OV7725_CNST         , 0x20},
//  194     {OV7725_SIGN         , 0x06},
//  195     {OV7725_UVADJ0       , 0x11},
//  196     {OV7725_UVADJ1       , 0x02},
//  197 
//  198 };
//  199 

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
//  200 uint8 ov7725_wolf_cfgnum = ARR_SIZE( ov7725_wolf_reg ) ; /*�ṹ�������Ա��Ŀ*/
ov7725_wolf_cfgnum:
        DC8 49
//  201 
//  202 
//  203 /*!
//  204  *  @brief      ӥ��ov7725�Ĵ��� ��ʼ��
//  205  *  @return     ��ʼ�������0��ʾʧ�ܣ�1��ʾ�ɹ���
//  206  *  @since      v5.0
//  207  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function ov7725_wolf_reg_init
        THUMB
//  208 uint8 ov7725_wolf_reg_init(void)
//  209 {
ov7725_wolf_reg_init:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        SUB      SP,SP,#+8
          CFI CFA R13+16
//  210     uint16 i = 0;
        MOVS     R4,#+0
//  211     uint8 Sensor_IDCode = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//  212     SCCB_GPIO_init();
          CFI FunCall SCCB_GPIO_init
        BL       SCCB_GPIO_init
//  213 
//  214     //OV7725_Delay_ms(50);
//  215     if( 0 == SCCB_WriteByte ( OV7725_COM7, 0x80 ) ) /*��λsensor */
        MOVS     R1,#+128
        MOVS     R0,#+18
          CFI FunCall SCCB_WriteByte
        BL       SCCB_WriteByte
        CMP      R0,#+0
        BNE.N    ??ov7725_wolf_reg_init_0
//  216     {
//  217         DEBUG_PRINTF("\n����:SCCBд���ݴ���");
//  218         return 0 ;
        MOVS     R0,#+0
        B.N      ??ov7725_wolf_reg_init_1
//  219     }
//  220 
//  221     OV7725_WOLF_Delay_ms(50);
??ov7725_wolf_reg_init_0:
        MOVS     R0,#+50
          CFI FunCall systick_delay_ms
        BL       systick_delay_ms
//  222 
//  223     if( 0 == SCCB_ReadByte( &Sensor_IDCode, 1, OV7725_VER ) )    /* ��ȡsensor ID��*/
        MOVS     R2,#+11
        MOVS     R1,#+1
        MOV      R0,SP
          CFI FunCall SCCB_ReadByte
        BL       SCCB_ReadByte
        CMP      R0,#+0
        BNE.N    ??ov7725_wolf_reg_init_2
//  224     {
//  225         DEBUG_PRINTF("\n����:��ȡIDʧ��");
//  226         return 0;
        MOVS     R0,#+0
        B.N      ??ov7725_wolf_reg_init_1
//  227     }
//  228     DEBUG_PRINTF("\nGet ID success��SENSOR ID is 0x%x", Sensor_IDCode);
//  229     DEBUG_PRINTF("\nConfig Register Number is %d ", ov7725_wolf_cfgnum);
//  230     if(Sensor_IDCode == OV7725_ID)
??ov7725_wolf_reg_init_2:
        LDRB     R0,[SP, #+0]
        CMP      R0,#+33
        BNE.N    ??ov7725_wolf_reg_init_3
//  231     {
//  232         for( i = 0 ; i < ov7725_wolf_cfgnum ; i++ )
        MOVS     R0,#+0
        MOVS     R4,R0
??ov7725_wolf_reg_init_4:
        MOVS     R0,R4
        LDR.N    R1,??DataTable8_9
        LDRB     R1,[R1, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BCS.N    ??ov7725_wolf_reg_init_5
//  233         {
//  234             if( 0 == SCCB_WriteByte(ov7725_wolf_reg[i].addr, ov7725_wolf_reg[i].val) )
        LDR.N    R0,??DataTable8_10
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        ADD      R0,R0,R4, LSL #+1
        LDRB     R1,[R0, #+1]
        LDR.N    R0,??DataTable8_10
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LDRB     R0,[R0, R4, LSL #+1]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall SCCB_WriteByte
        BL       SCCB_WriteByte
        CMP      R0,#+0
        BNE.N    ??ov7725_wolf_reg_init_6
//  235             {
//  236                 DEBUG_PRINTF("\n����:д�Ĵ���0x%xʧ��", ov7725_wolf_reg[i].addr);
//  237                 return 0;
        MOVS     R0,#+0
        B.N      ??ov7725_wolf_reg_init_1
//  238             }
//  239         }
??ov7725_wolf_reg_init_6:
        ADDS     R4,R4,#+1
        B.N      ??ov7725_wolf_reg_init_4
//  240     }
//  241     else
//  242     {
//  243         return 0;
//  244     }
//  245     DEBUG_PRINTF("\nOV7725 Register Config Success!");
//  246     return 1;
??ov7725_wolf_reg_init_5:
        MOVS     R0,#+1
        B.N      ??ov7725_wolf_reg_init_1
??ov7725_wolf_reg_init_3:
        MOVS     R0,#+0
??ov7725_wolf_reg_init_1:
        POP      {R1,R2,R4,PC}    ;; return
//  247 }
          CFI EndBlock cfiBlock7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8:
        DC32     ov7725_wolf_img_buff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_1:
        DC32     0x400ff050

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_2:
        DC32     0x4000800c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_3:
        DC32     0x40008024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_4:
        DC32     0x20103

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_5:
        DC32     0x90113

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_6:
        DC32     ov7725_wolf_img_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_7:
        DC32     0x40009010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_8:
        DC32     0x400490a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_9:
        DC32     ov7725_wolf_cfgnum

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_10:
        DC32     ov7725_wolf_reg

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  248 
//  249 
// 
//   4 bytes in section .bss
// 102 bytes in section .data
// 424 bytes in section .text
//  52 bytes in section .textrw
// 
// 476 bytes of CODE memory
// 106 bytes of DATA memory
//
//Errors: none
//Warnings: 1
