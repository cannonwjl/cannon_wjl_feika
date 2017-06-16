///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      12/Jun/2017  17:32:59
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\@@@@@@@\Car\Lib\USB\USB_CDC.c
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EWED79.tmp
//        (D:\@@@@@@@\Car\Lib\USB\USB_CDC.c -D DEBUG -D
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
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\USB_CDC.s
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

        EXTERN EP_IN_Transfer
        EXTERN EP_OUT_Transfer
        EXTERN Setup_Pkt
        EXTERN gu8Interface
        EXTERN gu8USB_Flags
        EXTERN gu8USB_State

        PUBLIC CDC_Engine
        PUBLIC CDC_Init
        PUBLIC CDC_InterfaceReq_Handler
        PUBLIC CDC_OUT_Data
        PUBLIC com_cfg
        PUBLIC u8CDCState
        
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
        
// D:\@@@@@@@\Car\Lib\USB\USB_CDC.c
//    1 #include"USB_CDC.h"
//    2 
//    3 
//    4 
//    5 /* CDC Global Structures */

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    6 CDC_Line_Coding com_cfg;
com_cfg:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//    7 uint8 u8CDCState    = WAITING_FOR_ENUMERATION;
u8CDCState:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    8 uint8 CDC_OUT_Data[CDC_BUFFER_SIZE];
CDC_OUT_Data:
        DS8 128
//    9 
//   10 
//   11 
//   12 /*!
//   13  *  @brief      CDC���ʼ������
//   14  *  @since      v5.0
//   15  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function CDC_Init
          CFI NoCalls
        THUMB
//   16 void CDC_Init(void)
//   17 {
//   18     //���ô�������
//   19     com_cfg.DTERate      = 9600;                //������
CDC_Init:
        MOV      R0,#+9600
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+0]
//   20     com_cfg.CharFormat   = 0;                   //�ַ���ʽ
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2
        STRB     R0,[R1, #+4]
//   21     com_cfg.ParityType   = 0;                   //��������
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2
        STRB     R0,[R1, #+5]
//   22     com_cfg.Databits     = 0x08;                //����λ��
        MOVS     R0,#+8
        LDR.N    R1,??DataTable2
        STRB     R0,[R1, #+6]
//   23 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//   24 
//   25 /**********************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function CDC_Engine
        THUMB
//   26 void CDC_Engine(void)
//   27 {
CDC_Engine:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   28     //uint16 u8RecData;
//   29     /* control Stage */
//   30     switch(u8CDCState)
        LDR.N    R0,??DataTable2_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??CDC_Engine_0
        CMP      R0,#+32
        BEQ.N    ??CDC_Engine_1
        CMP      R0,#+34
        BEQ.N    ??CDC_Engine_2
        B.N      ??CDC_Engine_3
//   31     {
//   32     case WAITING_FOR_ENUMERATION:
//   33         /* �ȴ� USB ö�� */
//   34         while(gu8USB_State != uENUMERATED)
??CDC_Engine_0:
        LDR.N    R0,??DataTable2_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??CDC_Engine_0
//   35         {
//   36             (void)u8CDCState;
//   37         };
//   38 
//   39 
//   40         u8CDCState = 0;
??CDC_Engine_4:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_1
        STRB     R0,[R1, #+0]
//   41         break;
        B.N      ??CDC_Engine_3
//   42 
//   43     case SET_LINE_CODING:
//   44         if(FLAG_CHK(EP0, gu8USB_Flags))
??CDC_Engine_1:
        LDR.N    R0,??DataTable2_3
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??CDC_Engine_5
//   45         {
//   46             FLAG_CLR(EP0, gu8USB_Flags);
        LDR.N    R0,??DataTable2_3
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0xFE
        LDR.N    R1,??DataTable2_3
        STRB     R0,[R1, #+0]
//   47             (void)EP_OUT_Transfer(EP0, (uint8 *)&com_cfg);
        LDR.N    R1,??DataTable2
        MOVS     R0,#+0
          CFI FunCall EP_OUT_Transfer
        BL       EP_OUT_Transfer
//   48             EP_IN_Transfer(EP0, 0, 0);
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall EP_IN_Transfer
        BL       EP_IN_Transfer
//   49         }
//   50         break;
??CDC_Engine_5:
        B.N      ??CDC_Engine_3
//   51 
//   52     case SET_CONTROL_LINE_STATE:
//   53         EP_IN_Transfer(EP0, 0, 0);
??CDC_Engine_2:
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall EP_IN_Transfer
        BL       EP_IN_Transfer
//   54         break;
//   55 
//   56     }
//   57 }
??CDC_Engine_3:
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock1
//   58 
//   59 /*!
//   60  *  @brief      ��ǰ�ӿ�����ΪCDC������ �� �жϷ�����
//   61  *  @note       �� USB_Setup_Handler �ж������
//   62  *  @since      v5.0
//   63  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function CDC_InterfaceReq_Handler
        THUMB
//   64 uint8 CDC_InterfaceReq_Handler(void)
//   65 {
CDC_InterfaceReq_Handler:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//   66     uint8 u8State = uSETUP;
        MOVS     R4,#+0
//   67 
//   68     switch(Setup_Pkt->bRequest)
        LDR.N    R0,??DataTable2_4
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+1]
        CMP      R0,#+10
        BEQ.N    ??CDC_InterfaceReq_Handler_0
        CMP      R0,#+32
        BEQ.N    ??CDC_InterfaceReq_Handler_1
        CMP      R0,#+33
        BEQ.N    ??CDC_InterfaceReq_Handler_2
        CMP      R0,#+34
        BEQ.N    ??CDC_InterfaceReq_Handler_3
        CMP      R0,#+170
        BEQ.N    ??CDC_InterfaceReq_Handler_4
        B.N      ??CDC_InterfaceReq_Handler_5
//   69     {
//   70     case GET_INTERFACE:
//   71         EP_IN_Transfer(EP0, &gu8Interface, 1);
??CDC_InterfaceReq_Handler_0:
        MOVS     R2,#+1
        LDR.N    R1,??DataTable2_5
        MOVS     R0,#+0
          CFI FunCall EP_IN_Transfer
        BL       EP_IN_Transfer
//   72         break;
        B.N      ??CDC_InterfaceReq_Handler_6
//   73 
//   74     case GET_LINE_CODING:
//   75         EP_IN_Transfer(EP0, (uint8 *)&com_cfg, 7);
??CDC_InterfaceReq_Handler_2:
        MOVS     R2,#+7
        LDR.N    R1,??DataTable2
        MOVS     R0,#+0
          CFI FunCall EP_IN_Transfer
        BL       EP_IN_Transfer
//   76         break;
        B.N      ??CDC_InterfaceReq_Handler_6
//   77 
//   78     case SET_LINE_CODING:
//   79         u8CDCState = SET_LINE_CODING;
??CDC_InterfaceReq_Handler_1:
        MOVS     R0,#+32
        LDR.N    R1,??DataTable2_1
        STRB     R0,[R1, #+0]
//   80         u8State = uDATA;
        MOVS     R0,#+1
        MOVS     R4,R0
//   81         break;
        B.N      ??CDC_InterfaceReq_Handler_6
//   82 
//   83     case SET_CONTROL_LINE_STATE:
//   84         u8CDCState = SET_CONTROL_LINE_STATE;
??CDC_InterfaceReq_Handler_3:
        MOVS     R0,#+34
        LDR.N    R1,??DataTable2_1
        STRB     R0,[R1, #+0]
//   85         u8State = uSETUP;
        MOVS     R0,#+0
        MOVS     R4,R0
//   86         break;
        B.N      ??CDC_InterfaceReq_Handler_6
//   87 
//   88     case LOADER_MODE:
//   89         FLAG_SET(LOADER, gu8USB_Flags);
??CDC_InterfaceReq_Handler_4:
        LDR.N    R0,??DataTable2_3
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.N    R1,??DataTable2_3
        STRB     R0,[R1, #+0]
//   90         CDC_OUT_Data[0] = 0xFF;
        MOVS     R0,#+255
        LDR.N    R1,??DataTable2_6
        STRB     R0,[R1, #+0]
//   91         break;
        B.N      ??CDC_InterfaceReq_Handler_6
//   92     default:
//   93         break;
//   94     }
//   95     return(u8State);
??CDC_InterfaceReq_Handler_5:
??CDC_InterfaceReq_Handler_6:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4,PC}          ;; return
//   96 }
          CFI EndBlock cfiBlock2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     com_cfg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     u8CDCState

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     gu8USB_State

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     gu8USB_Flags

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     Setup_Pkt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DC32     gu8Interface

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_6:
        DC32     CDC_OUT_Data

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//   97 
// 
// 137 bytes in section .bss
// 250 bytes in section .text
// 
// 250 bytes of CODE memory
// 137 bytes of DATA memory
//
//Errors: none
//Warnings: none
