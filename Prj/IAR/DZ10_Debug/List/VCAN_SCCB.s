///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      16/Jun/2017  18:54:22
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\@@@@@@@\Car\Board\src\VCAN_SCCB.c
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EW874B.tmp
//        (D:\@@@@@@@\Car\Board\src\VCAN_SCCB.c -D DEBUG -D
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
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\VCAN_SCCB.s
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

        EXTERN gpio_init
        EXTERN port_init_NoALT

        PUBLIC SCCB_GPIO_init
        PUBLIC SCCB_ReadByte
        PUBLIC SCCB_WriteByte
        
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
        
// D:\@@@@@@@\Car\Board\src\VCAN_SCCB.c
//    1 /*!
//    2  *     COPYRIGHT NOTICE
//    3  *     Copyright (c) 2013,山外科技
//    4  *     All rights reserved.
//    5  *     技术讨论：山外论坛 http://www.vcan123.com
//    6  *
//    7  *     除注明出处外，以下所有内容版权均属山外科技所有，未经允许，不得用于商业用途，
//    8  *     修改内容时必须保留山外科技的版权声明。
//    9  *
//   10  * @file       VCAN_SCCB.c
//   11  * @brief      OV摄像头配置总线SCCB函数库
//   12  * @author     山外科技
//   13  * @version    v5.0
//   14  * @date       2013-09-01
//   15  */
//   16 
//   17 
//   18 #include "common.h"
//   19 #include "MK60_gpio.h"
//   20 #include "VCAN_SCCB.h"
//   21 
//   22 #include "OLED.h"
//   23 static void SCCB_delay(uint16 i);
//   24 
//   25 /*!
//   26  *  @brief      SCCB延迟函数
//   27  *  @param      time    延时时间
//   28  *  @since      v5.0
//   29  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function SCCB_delay
          CFI NoCalls
        THUMB
//   30 static void SCCB_delay(volatile uint16 time)
//   31 {
SCCB_delay:
        PUSH     {R0}
          CFI CFA R13+4
//   32     while(time)
??SCCB_delay_0:
        LDRH     R0,[SP, #+0]
        CMP      R0,#+0
        BEQ.N    ??SCCB_delay_1
//   33     {
//   34         time--;
        LDRH     R0,[SP, #+0]
        SUBS     R0,R0,#+1
        STRH     R0,[SP, #+0]
        B.N      ??SCCB_delay_0
//   35     }
//   36 }
??SCCB_delay_1:
        ADD      SP,SP,#+4
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//   37 
//   38 /*!
//   39  *  @brief      SCCB管脚配置
//   40  *  @since      v5.0
//   41  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function SCCB_GPIO_init
        THUMB
//   42 void SCCB_GPIO_init(void)
//   43 {
SCCB_GPIO_init:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   44     gpio_init  (SCCB_SCL, GPO, 1); //初始化SCL
        MOVS     R2,#+1
        MOVS     R1,#+1
        MOVS     R0,#+82
          CFI FunCall gpio_init
        BL       gpio_init
//   45     gpio_init  (SCCB_SDA, GPO, 1); //初始化SDA
        MOVS     R2,#+1
        MOVS     R1,#+1
        MOVS     R0,#+78
          CFI FunCall gpio_init
        BL       gpio_init
//   46 
//   47     port_init_NoALT(SCCB_SCL,ODO | PULLUP);
        MOVS     R1,#+35
        MOVS     R0,#+82
          CFI FunCall port_init_NoALT
        BL       port_init_NoALT
//   48     port_init_NoALT(SCCB_SDA,ODO | PULLUP);
        MOVS     R1,#+35
        MOVS     R0,#+78
          CFI FunCall port_init_NoALT
        BL       port_init_NoALT
//   49 
//   50 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock1
//   51 
//   52 /*!
//   53  *  @brief      SCCB起始信号
//   54  *  @since      v5.0
//   55  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function SCCB_Start
        THUMB
//   56 static uint8 SCCB_Start(void)
//   57 {
SCCB_Start:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   58     SDA_H();
        MOVS     R0,#+1
        LDR.N    R1,??DataTable7  ;; 0x43fe1038
        STR      R0,[R1, #+0]
//   59     SCL_H();
        MOVS     R0,#+1
        LDR.N    R1,??DataTable7_1  ;; 0x43fe1048
        STR      R0,[R1, #+0]
//   60     SCCB_DELAY();
        MOV      R0,#+400
          CFI FunCall SCCB_delay
        BL       SCCB_delay
//   61 
//   62     SDA_DDR_IN();
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_2  ;; 0x43fe12b8
        STR      R0,[R1, #+0]
//   63     if(!SDA_IN())
        LDR.N    R0,??DataTable7_3  ;; 0x43fe1238
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??SCCB_Start_0
//   64     {
//   65         SDA_DDR_OUT();
        MOVS     R0,#+1
        LDR.N    R1,??DataTable7_2  ;; 0x43fe12b8
        STR      R0,[R1, #+0]
//   66         return 0;   /* SDA线为低电平则总线忙,退出 */
        MOVS     R0,#+0
        B.N      ??SCCB_Start_1
//   67     }
//   68     SDA_DDR_OUT();
??SCCB_Start_0:
        MOVS     R0,#+1
        LDR.N    R1,??DataTable7_2  ;; 0x43fe12b8
        STR      R0,[R1, #+0]
//   69     SDA_L();
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7  ;; 0x43fe1038
        STR      R0,[R1, #+0]
//   70 
//   71     SCCB_DELAY();
        MOV      R0,#+400
          CFI FunCall SCCB_delay
        BL       SCCB_delay
//   72     SCL_L();
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_1  ;; 0x43fe1048
        STR      R0,[R1, #+0]
//   73 
//   74     if(SDA_IN())
        LDR.N    R0,??DataTable7_3  ;; 0x43fe1238
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??SCCB_Start_2
//   75     {
//   76         SDA_DDR_OUT();
        MOVS     R0,#+1
        LDR.N    R1,??DataTable7_2  ;; 0x43fe12b8
        STR      R0,[R1, #+0]
//   77         return 0;   /* SDA线为高电平则总线出错,退出 */
        MOVS     R0,#+0
        B.N      ??SCCB_Start_1
//   78     }
//   79     //SDA_DDR_OUT();
//   80     //SDA_L();
//   81     //SCCB_delay();
//   82     return 1;
??SCCB_Start_2:
        MOVS     R0,#+1
??SCCB_Start_1:
        POP      {R1,PC}          ;; return
//   83 }
          CFI EndBlock cfiBlock2
//   84 
//   85 /*!
//   86  *  @brief      SCCB停止信号
//   87  *  @since      v5.0
//   88  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function SCCB_Stop
        THUMB
//   89 static void SCCB_Stop(void)
//   90 {
SCCB_Stop:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   91     SCL_L();
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_1  ;; 0x43fe1048
        STR      R0,[R1, #+0]
//   92     //SCCB_DELAY();
//   93     SDA_L();
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7  ;; 0x43fe1038
        STR      R0,[R1, #+0]
//   94     SCCB_DELAY();
        MOV      R0,#+400
          CFI FunCall SCCB_delay
        BL       SCCB_delay
//   95     SCL_H();
        MOVS     R0,#+1
        LDR.N    R1,??DataTable7_1  ;; 0x43fe1048
        STR      R0,[R1, #+0]
//   96     SCCB_DELAY();
        MOV      R0,#+400
          CFI FunCall SCCB_delay
        BL       SCCB_delay
//   97     SDA_H();
        MOVS     R0,#+1
        LDR.N    R1,??DataTable7  ;; 0x43fe1038
        STR      R0,[R1, #+0]
//   98     SCCB_DELAY();
        MOV      R0,#+400
          CFI FunCall SCCB_delay
        BL       SCCB_delay
//   99 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock3
//  100 
//  101 /*!
//  102  *  @brief      SCCB应答信号
//  103  *  @since      v5.0
//  104  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function SCCB_Ack
        THUMB
//  105 static void SCCB_Ack(void)
//  106 {
SCCB_Ack:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  107     SCL_L();
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_1  ;; 0x43fe1048
        STR      R0,[R1, #+0]
//  108     SCCB_DELAY();
        MOV      R0,#+400
          CFI FunCall SCCB_delay
        BL       SCCB_delay
//  109     SDA_L();
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7  ;; 0x43fe1038
        STR      R0,[R1, #+0]
//  110     SCCB_DELAY();
        MOV      R0,#+400
          CFI FunCall SCCB_delay
        BL       SCCB_delay
//  111     SCL_H();
        MOVS     R0,#+1
        LDR.N    R1,??DataTable7_1  ;; 0x43fe1048
        STR      R0,[R1, #+0]
//  112     SCCB_DELAY();
        MOV      R0,#+400
          CFI FunCall SCCB_delay
        BL       SCCB_delay
//  113     SCL_L();
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_1  ;; 0x43fe1048
        STR      R0,[R1, #+0]
//  114     SCCB_DELAY();
        MOV      R0,#+400
          CFI FunCall SCCB_delay
        BL       SCCB_delay
//  115 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock4
//  116 
//  117 /*!
//  118  *  @brief      SCCB无应答信号
//  119  *  @since      v5.0
//  120  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function SCCB_NoAck
        THUMB
//  121 static void SCCB_NoAck(void)
//  122 {
SCCB_NoAck:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  123     SCL_L();
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_1  ;; 0x43fe1048
        STR      R0,[R1, #+0]
//  124     SCCB_DELAY();
        MOV      R0,#+400
          CFI FunCall SCCB_delay
        BL       SCCB_delay
//  125     SDA_H();
        MOVS     R0,#+1
        LDR.N    R1,??DataTable7  ;; 0x43fe1038
        STR      R0,[R1, #+0]
//  126     SCCB_DELAY();
        MOV      R0,#+400
          CFI FunCall SCCB_delay
        BL       SCCB_delay
//  127     SCL_H();
        MOVS     R0,#+1
        LDR.N    R1,??DataTable7_1  ;; 0x43fe1048
        STR      R0,[R1, #+0]
//  128     SCCB_DELAY();
        MOV      R0,#+400
          CFI FunCall SCCB_delay
        BL       SCCB_delay
//  129     SCL_L();
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_1  ;; 0x43fe1048
        STR      R0,[R1, #+0]
//  130     SCCB_DELAY();
        MOV      R0,#+400
          CFI FunCall SCCB_delay
        BL       SCCB_delay
//  131 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock5
//  132 
//  133 /*!
//  134  *  @brief      SCCB 等待应答
//  135  *  @return     应答结果（0表示无应答，1表示有应答）
//  136  *  @since      v5.0
//  137  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function SCCB_WaitAck
        THUMB
//  138 static int SCCB_WaitAck(void)
//  139 {
SCCB_WaitAck:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  140     SCL_L();
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_1  ;; 0x43fe1048
        STR      R0,[R1, #+0]
//  141     //SDA_H();
//  142     SDA_DDR_IN();
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_2  ;; 0x43fe12b8
        STR      R0,[R1, #+0]
//  143 
//  144     SCCB_DELAY();
        MOV      R0,#+400
          CFI FunCall SCCB_delay
        BL       SCCB_delay
//  145     SCL_H();
        MOVS     R0,#+1
        LDR.N    R1,??DataTable7_1  ;; 0x43fe1048
        STR      R0,[R1, #+0]
//  146 
//  147     SCCB_DELAY();
        MOV      R0,#+400
          CFI FunCall SCCB_delay
        BL       SCCB_delay
//  148 
//  149     if(SDA_IN())           //应答为高电平，异常，通信失败
        LDR.N    R0,??DataTable7_3  ;; 0x43fe1238
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??SCCB_WaitAck_0
//  150     {
//  151         SDA_DDR_OUT();
        MOVS     R0,#+1
        LDR.N    R1,??DataTable7_2  ;; 0x43fe12b8
        STR      R0,[R1, #+0]
//  152         SCL_L();
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_1  ;; 0x43fe1048
        STR      R0,[R1, #+0]
//  153         return 0;
        MOVS     R0,#+0
        B.N      ??SCCB_WaitAck_1
//  154     }
//  155     SDA_DDR_OUT();
??SCCB_WaitAck_0:
        MOVS     R0,#+1
        LDR.N    R1,??DataTable7_2  ;; 0x43fe12b8
        STR      R0,[R1, #+0]
//  156     SCL_L();
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_1  ;; 0x43fe1048
        STR      R0,[R1, #+0]
//  157     return 1;
        MOVS     R0,#+1
??SCCB_WaitAck_1:
        POP      {R1,PC}          ;; return
//  158 }
          CFI EndBlock cfiBlock6
//  159 
//  160 /*!
//  161  *  @brief      SCCB 发送的数据
//  162  *  @param      SendByte    需要发送的数据
//  163  *  @since      v5.0
//  164  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function SCCB_SendByte
        THUMB
//  165 static void SCCB_SendByte(uint8 SendByte)
//  166 {
SCCB_SendByte:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R5,R0
//  167     uint8 i = 8;
        MOVS     R4,#+8
//  168     while(i--)
??SCCB_SendByte_0:
        MOVS     R0,R4
        SUBS     R4,R0,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??SCCB_SendByte_1
//  169     {
//  170 
//  171         if(SendByte & 0x80)     //SDA 输出数据
        LSLS     R0,R5,#+24
        BPL.N    ??SCCB_SendByte_2
//  172         {
//  173             SDA_H();
        MOVS     R0,#+1
        LDR.N    R1,??DataTable7  ;; 0x43fe1038
        STR      R0,[R1, #+0]
        B.N      ??SCCB_SendByte_3
//  174         }
//  175         else
//  176         {
//  177             SDA_L();
??SCCB_SendByte_2:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7  ;; 0x43fe1038
        STR      R0,[R1, #+0]
//  178         }
//  179         SendByte <<= 1;
??SCCB_SendByte_3:
        LSLS     R5,R5,#+1
//  180         SCCB_DELAY();
        MOV      R0,#+400
          CFI FunCall SCCB_delay
        BL       SCCB_delay
//  181         SCL_H();                //SCL 拉高，采集信号
        MOVS     R0,#+1
        LDR.N    R1,??DataTable7_1  ;; 0x43fe1048
        STR      R0,[R1, #+0]
//  182         SCCB_DELAY();
        MOV      R0,#+400
          CFI FunCall SCCB_delay
        BL       SCCB_delay
//  183         SCL_L();                //SCL 时钟线拉低
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_1  ;; 0x43fe1048
        STR      R0,[R1, #+0]
        B.N      ??SCCB_SendByte_0
//  184         //SCCB_DELAY();
//  185     }
//  186     //SCL_L();
//  187 }
??SCCB_SendByte_1:
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock7
//  188 
//  189 /*!
//  190  *  @brief      接收SCCB总线的数据
//  191  *  @return     接收到的数据
//  192  *  @since      v5.0
//  193  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function SCCB_ReceiveByte
        THUMB
//  194 static int SCCB_ReceiveByte(void)
//  195 {
SCCB_ReceiveByte:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
//  196     uint8 i = 8;
        MOVS     R4,#+8
//  197     uint8 ReceiveByte = 0;
        MOVS     R5,#+0
//  198 
//  199     //SDA_H();
//  200     //SCCB_DELAY();
//  201     SDA_DDR_IN();
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_2  ;; 0x43fe12b8
        STR      R0,[R1, #+0]
//  202 
//  203     while(i--)
??SCCB_ReceiveByte_0:
        MOVS     R0,R4
        SUBS     R4,R0,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??SCCB_ReceiveByte_1
//  204     {
//  205         ReceiveByte <<= 1;
        LSLS     R5,R5,#+1
//  206         SCL_L();
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_1  ;; 0x43fe1048
        STR      R0,[R1, #+0]
//  207         SCCB_DELAY();
        MOV      R0,#+400
          CFI FunCall SCCB_delay
        BL       SCCB_delay
//  208         SCL_H();
        MOVS     R0,#+1
        LDR.N    R1,??DataTable7_1  ;; 0x43fe1048
        STR      R0,[R1, #+0]
//  209         SCCB_DELAY();
        MOV      R0,#+400
          CFI FunCall SCCB_delay
        BL       SCCB_delay
//  210 
//  211         if(SDA_IN())
        LDR.N    R0,??DataTable7_3  ;; 0x43fe1238
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??SCCB_ReceiveByte_0
//  212         {
//  213             ReceiveByte |= 0x01;
        ORRS     R5,R5,#0x1
        B.N      ??SCCB_ReceiveByte_0
//  214         }
//  215 
//  216 
//  217     }
//  218     SDA_DDR_OUT();
??SCCB_ReceiveByte_1:
        MOVS     R0,#+1
        LDR.N    R1,??DataTable7_2  ;; 0x43fe12b8
        STR      R0,[R1, #+0]
//  219     SCL_L();
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_1  ;; 0x43fe1048
        STR      R0,[R1, #+0]
//  220     return ReceiveByte;
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R0,R5
        POP      {R1,R4,R5,PC}    ;; return
//  221 }
          CFI EndBlock cfiBlock8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DC32     0x43fe1038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_1:
        DC32     0x43fe1048

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_2:
        DC32     0x43fe12b8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_3:
        DC32     0x43fe1238
//  222 
//  223 /*****************************************************************************************
//  224 * 函数名：SCCB_WriteByte
//  225 * 描述  ：写一字节数据
//  226 * 输入  ：- WriteAddress: 待写入地址    - SendByte: 待写入数据  - DeviceAddress: 器件类型
//  227 * 输出  ：返回为:=1成功写入,=0失败
//  228 * 注意  ：无
//  229 *****************************************************************************************/
//  230 static int SCCB_WriteByte_one( uint16 WriteAddress , uint8 SendByte );
//  231 
//  232 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function SCCB_WriteByte
        THUMB
//  233 int SCCB_WriteByte( uint16 WriteAddress , uint8 SendByte )            //考虑到用sccb的管脚模拟，比较容易失败，因此多试几次
//  234 {
SCCB_WriteByte:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
//  235     uint8 i = 0;
        MOVS     R6,#+0
//  236     while( 0 == SCCB_WriteByte_one ( WriteAddress, SendByte ) )
??SCCB_WriteByte_0:
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall SCCB_WriteByte_one
        BL       SCCB_WriteByte_one
        CMP      R0,#+0
        BNE.N    ??SCCB_WriteByte_1
//  237     {
//  238         i++;
        ADDS     R6,R6,#+1
//  239         if(i == 20)
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+20
        BNE.N    ??SCCB_WriteByte_0
//  240         {
//  241             return 0 ;
        MOVS     R0,#+0
        B.N      ??SCCB_WriteByte_2
//  242         }
//  243     }
//  244     return 1;
??SCCB_WriteByte_1:
        MOVS     R0,#+1
??SCCB_WriteByte_2:
        POP      {R4-R6,PC}       ;; return
//  245 }
          CFI EndBlock cfiBlock9
//  246 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function SCCB_WriteByte_one
        THUMB
//  247 int SCCB_WriteByte_one( uint16 WriteAddress , uint8 SendByte )
//  248 {
SCCB_WriteByte_one:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
//  249     if(!SCCB_Start())
          CFI FunCall SCCB_Start
        BL       SCCB_Start
        CMP      R0,#+0
        BNE.N    ??SCCB_WriteByte_one_0
//  250     {
//  251         return 0;
        MOVS     R0,#+0
        B.N      ??SCCB_WriteByte_one_1
//  252     }
//  253     SCCB_SendByte( DEV_ADR );                    /* 器件地址 */
??SCCB_WriteByte_one_0:
        MOVS     R0,#+66
          CFI FunCall SCCB_SendByte
        BL       SCCB_SendByte
//  254     if( !SCCB_WaitAck() )
          CFI FunCall SCCB_WaitAck
        BL       SCCB_WaitAck
        CMP      R0,#+0
        BNE.N    ??SCCB_WriteByte_one_2
//  255     {
//  256         SCCB_Stop();
          CFI FunCall SCCB_Stop
        BL       SCCB_Stop
//  257         return 0;
        MOVS     R0,#+0
        B.N      ??SCCB_WriteByte_one_1
//  258     }
//  259     SCCB_SendByte((uint8)(WriteAddress & 0x00FF));   /* 设置低起始地址 */
??SCCB_WriteByte_one_2:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall SCCB_SendByte
        BL       SCCB_SendByte
//  260     SCCB_WaitAck();
          CFI FunCall SCCB_WaitAck
        BL       SCCB_WaitAck
//  261     SCCB_SendByte(SendByte);
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall SCCB_SendByte
        BL       SCCB_SendByte
//  262     SCCB_WaitAck();
          CFI FunCall SCCB_WaitAck
        BL       SCCB_WaitAck
//  263     SCCB_Stop();
          CFI FunCall SCCB_Stop
        BL       SCCB_Stop
//  264     return 1;
        MOVS     R0,#+1
??SCCB_WriteByte_one_1:
        POP      {R1,R4,R5,PC}    ;; return
//  265 }
          CFI EndBlock cfiBlock10
//  266 
//  267 
//  268 
//  269 
//  270 /******************************************************************************************************************
//  271  * 函数名：SCCB_ReadByte
//  272  * 描述  ：读取一串数据
//  273  * 输入  ：- pBuffer: 存放读出数据  - length: 待读出长度    - ReadAddress: 待读出地址        - DeviceAddress: 器件类型
//  274  * 输出  ：返回为:=1成功读入,=0失败
//  275  * 注意  ：无
//  276  **********************************************************************************************************************/
//  277 static int SCCB_ReadByte_one(uint8 *pBuffer,   uint16 length,   uint8 ReadAddress);
//  278 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function SCCB_ReadByte
        THUMB
//  279 int SCCB_ReadByte(uint8 *pBuffer,   uint16 length,   uint8 ReadAddress)
//  280 {
SCCB_ReadByte:
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
//  281     uint8 i = 0;
        MOVS     R7,#+0
//  282     while( 0 == SCCB_ReadByte_one(pBuffer, length, ReadAddress) )
??SCCB_ReadByte_0:
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R4
          CFI FunCall SCCB_ReadByte_one
        BL       SCCB_ReadByte_one
        CMP      R0,#+0
        BNE.N    ??SCCB_ReadByte_1
//  283     {
//  284         i++;
        ADDS     R7,R7,#+1
//  285         if(i == 30)
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+30
        BNE.N    ??SCCB_ReadByte_0
//  286         {
//  287             return 0 ;
        MOVS     R0,#+0
        B.N      ??SCCB_ReadByte_2
//  288         }
//  289     }
//  290     return 1;
??SCCB_ReadByte_1:
        MOVS     R0,#+1
??SCCB_ReadByte_2:
        POP      {R1,R4-R7,PC}    ;; return
//  291 }
          CFI EndBlock cfiBlock11
//  292 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function SCCB_ReadByte_one
        THUMB
//  293 int SCCB_ReadByte_one(uint8 *pBuffer,   uint16 length,   uint8 ReadAddress)
//  294 {
SCCB_ReadByte_one:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R5,R0
        MOVS     R4,R1
        MOVS     R6,R2
//  295     if(!SCCB_Start())
          CFI FunCall SCCB_Start
        BL       SCCB_Start
        CMP      R0,#+0
        BNE.N    ??SCCB_ReadByte_one_0
//  296     {
//  297         return 0;
        MOVS     R0,#+0
        B.N      ??SCCB_ReadByte_one_1
//  298     }
//  299     SCCB_SendByte( DEV_ADR );         /* 器件地址 */
??SCCB_ReadByte_one_0:
        MOVS     R0,#+66
          CFI FunCall SCCB_SendByte
        BL       SCCB_SendByte
//  300     if( !SCCB_WaitAck() )
          CFI FunCall SCCB_WaitAck
        BL       SCCB_WaitAck
        CMP      R0,#+0
        BNE.N    ??SCCB_ReadByte_one_2
//  301     {
//  302         SCCB_Stop();
          CFI FunCall SCCB_Stop
        BL       SCCB_Stop
//  303         return 0;
        MOVS     R0,#+0
        B.N      ??SCCB_ReadByte_one_1
//  304     }
//  305     SCCB_SendByte( ReadAddress );           /* 设置低起始地址 */
??SCCB_ReadByte_one_2:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall SCCB_SendByte
        BL       SCCB_SendByte
//  306     SCCB_WaitAck();
          CFI FunCall SCCB_WaitAck
        BL       SCCB_WaitAck
//  307     SCCB_Stop();
          CFI FunCall SCCB_Stop
        BL       SCCB_Stop
//  308 
//  309     if(!SCCB_Start())
          CFI FunCall SCCB_Start
        BL       SCCB_Start
        CMP      R0,#+0
        BNE.N    ??SCCB_ReadByte_one_3
//  310     {
//  311         return 0;
        MOVS     R0,#+0
        B.N      ??SCCB_ReadByte_one_1
//  312     }
//  313     SCCB_SendByte( DEV_ADR + 1 );               /* 器件地址 */
??SCCB_ReadByte_one_3:
        MOVS     R0,#+67
          CFI FunCall SCCB_SendByte
        BL       SCCB_SendByte
//  314 
//  315     if(!SCCB_WaitAck())
          CFI FunCall SCCB_WaitAck
        BL       SCCB_WaitAck
        CMP      R0,#+0
        BNE.N    ??SCCB_ReadByte_one_4
//  316     {
//  317         SCCB_Stop();
          CFI FunCall SCCB_Stop
        BL       SCCB_Stop
//  318         return 0;
        MOVS     R0,#+0
        B.N      ??SCCB_ReadByte_one_1
//  319     }
//  320     while(length)
??SCCB_ReadByte_one_4:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+0
        BEQ.N    ??SCCB_ReadByte_one_5
//  321     {
//  322         *pBuffer = SCCB_ReceiveByte();
          CFI FunCall SCCB_ReceiveByte
        BL       SCCB_ReceiveByte
        STRB     R0,[R5, #+0]
//  323         if(length == 1)
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+1
        BNE.N    ??SCCB_ReadByte_one_6
//  324         {
//  325             SCCB_NoAck();
          CFI FunCall SCCB_NoAck
        BL       SCCB_NoAck
        B.N      ??SCCB_ReadByte_one_7
//  326         }
//  327         else
//  328         {
//  329             SCCB_Ack();
??SCCB_ReadByte_one_6:
          CFI FunCall SCCB_Ack
        BL       SCCB_Ack
//  330         }
//  331         pBuffer++;
??SCCB_ReadByte_one_7:
        ADDS     R5,R5,#+1
//  332         length--;
        SUBS     R4,R4,#+1
        B.N      ??SCCB_ReadByte_one_4
//  333     }
//  334     SCCB_Stop();
??SCCB_ReadByte_one_5:
          CFI FunCall SCCB_Stop
        BL       SCCB_Stop
//  335     return 1;
        MOVS     R0,#+1
??SCCB_ReadByte_one_1:
        POP      {R4-R6,PC}       ;; return
//  336 }
          CFI EndBlock cfiBlock12

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  337 
//  338 
//  339 
//  340 
// 
// 866 bytes in section .text
// 
// 866 bytes of CODE memory
//
//Errors: none
//Warnings: 40
