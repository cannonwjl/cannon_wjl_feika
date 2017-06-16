///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      12/Jun/2017  17:32:54
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\@@@@@@@\Car\Chip\src\MK60_gpio.c
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EWD661.tmp
//        (D:\@@@@@@@\Car\Chip\src\MK60_gpio.c -D DEBUG -D
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
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\MK60_gpio.s
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

        PUBLIC GPIOX
        PUBLIC gpio_ddr
        PUBLIC gpio_get
        PUBLIC gpio_init
        PUBLIC gpio_set
        PUBLIC gpio_turn
        
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
        
// D:\@@@@@@@\Car\Chip\src\MK60_gpio.c
//    1 /*!
//    2  *     COPYRIGHT NOTICE
//    3  *     Copyright (c) 2013,山外科技
//    4  *     All rights reserved.
//    5  *     技术讨论：山外论坛 http://www.vcan123.com
//    6  *
//    7  *     除注明出处外，以下所有内容版权均属山外科技所有，未经允许，不得用于商业用途，
//    8  *     修改内容时必须保留山外科技的版权声明。
//    9  *
//   10  * @file       MK60_gpio.c
//   11  * @brief      gpio驱动函数
//   12  * @author     山外科技
//   13  * @version    v5.0
//   14  * @date       2013-06-26
//   15  */
//   16 
//   17 /*
//   18  * 包含头文件
//   19  */
//   20 #include "common.h"
//   21 #include "MK60_port.h"
//   22 #include "MK60_gpio.h"
//   23 #include "MK60DZ10.h"
//   24 
//   25 //volatile struct GPIO_MemMap *GPIOx[5] = {PTA_BASE_PTR, PTB_BASE_PTR, PTC_BASE_PTR, PTD_BASE_PTR, PTE_BASE_PTR}; //定义五个指针数组保存 GPIOx 的地址
//   26 //volatile struct PORT_MemMap *PORTX[5] = {PORTA_BASE_PTR, PORTB_BASE_PTR, PORTC_BASE_PTR, PORTD_BASE_PTR, PORTE_BASE_PTR};
//   27 
//   28 /*
//   29  * 定义数组
//   30  */

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   31 GPIO_MemMapPtr GPIOX[PTX_MAX] = {PTA_BASE_PTR, PTB_BASE_PTR, PTC_BASE_PTR, PTD_BASE_PTR, PTE_BASE_PTR}; //定义五个指针数组保存 GPIOX 的地址
GPIOX:
        DC32 400FF000H, 400FF040H, 400FF080H, 400FF0C0H, 400FF100H
//   32 
//   33 /*!
//   34  *  @brief      初始化gpio
//   35  *  @param      PTxn    端口
//   36  *  @param      cfg     引脚方向,0=输入,1=输出
//   37  *  @param      data    输出初始状态,0=低电平,1=高电平 （对输入无效）
//   38  *  @since      v5.0
//   39  *  Sample usage:       gpio_init (PTA8, GPI,0);    //初始化 PTA8 管脚为输入
//   40  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function gpio_init
        THUMB
//   41 void gpio_init (PTXn_e ptxn, GPIO_CFG cfg, uint8 data)
//   42 {
gpio_init:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R6,R0
        MOVS     R4,R1
        MOVS     R5,R2
//   43     //复用管脚为GPIO功能
//   44     port_init( ptxn, ALT1);
        MOV      R1,#+256
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall port_init
        BL       port_init
//   45     
//   46     //选择功能脚 PORTx_PCRx ，每个端口都有个寄存器 PORTx_PCRx
//   47     
//   48     
//   49     //端口方向控制输入还是输出
//   50     if(  cfg == GPI )
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??gpio_init_0
//   51     {
//   52         //设置端口方向为输入
//   53         GPIO_PDDR_REG(GPIOX_BASE(ptxn)) &= ~(1 << PTn(ptxn));       // GPIO PDDR 管脚号 清0，即对应管脚配置为端口方向输入
        LDR.N    R0,??DataTable4
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R1,R6
        ASRS     R1,R1,#+5
        LDR      R1,[R0, R1, LSL #+2]
        LDR.N    R0,??DataTable4
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R2,R6
        ASRS     R2,R2,#+5
        LDR      R0,[R0, R2, LSL #+2]
        LDR      R2,[R0, #+20]
        MOVS     R3,#+1
        ANDS     R0,R6,#0x1F
        LSLS     R3,R3,R0
        BICS     R2,R2,R3
        STR      R2,[R1, #+20]
        B.N      ??gpio_init_1
//   54     }
//   55     else
//   56     {
//   57         //设置端口方向为输出
//   58         GPIO_PDDR_REG(GPIOX_BASE(ptxn)) |= (1 << PTn(ptxn));        // GPIO PDDR 管脚号 置1，即对应管脚配置为端口方向输出
??gpio_init_0:
        LDR.N    R0,??DataTable4
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R1,R6
        ASRS     R1,R1,#+5
        LDR      R1,[R0, R1, LSL #+2]
        LDR.N    R0,??DataTable4
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R2,R6
        ASRS     R2,R2,#+5
        LDR      R0,[R0, R2, LSL #+2]
        LDR      R2,[R0, #+20]
        MOVS     R3,#+1
        ANDS     R0,R6,#0x1F
        LSLS     R3,R3,R0
        ORRS     R2,R3,R2
        STR      R2,[R1, #+20]
//   59 
//   60         //端口输出数据
//   61         if(data == 0)
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.N    ??gpio_init_2
//   62         {
//   63             GPIO_PDOR_REG(GPIOX_BASE(ptxn)) &= ~(1 << PTn(ptxn));   // GPIO PDOR 管脚号 清0，即对应管脚配置为端口输出低电平
        LDR.N    R0,??DataTable4
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R1,R6
        ASRS     R1,R1,#+5
        LDR      R0,[R0, R1, LSL #+2]
        LDR      R1,[R0, #+0]
        MOVS     R2,#+1
        ANDS     R0,R6,#0x1F
        LSLS     R2,R2,R0
        BICS     R1,R1,R2
        LDR.N    R0,??DataTable4
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R2,R6
        ASRS     R2,R2,#+5
        LDR      R0,[R0, R2, LSL #+2]
        STR      R1,[R0, #+0]
        B.N      ??gpio_init_1
//   64         }
//   65         else
//   66         {
//   67             GPIO_PDOR_REG(GPIOX_BASE(ptxn))  |= (1 << PTn(ptxn));   // GPIO PDOR 管脚号 置1，即对应管脚配置为端口输出高电平
??gpio_init_2:
        LDR.N    R0,??DataTable4
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R1,R6
        ASRS     R1,R1,#+5
        LDR      R0,[R0, R1, LSL #+2]
        LDR      R1,[R0, #+0]
        MOVS     R2,#+1
        ANDS     R0,R6,#0x1F
        LSLS     R2,R2,R0
        ORRS     R1,R2,R1
        LDR.N    R0,??DataTable4
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R2,R6
        ASRS     R2,R2,#+5
        LDR      R0,[R0, R2, LSL #+2]
        STR      R1,[R0, #+0]
//   68         }
//   69     }
//   70 }
??gpio_init_1:
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock0
//   71 
//   72 
//   73 
//   74 /*!
//   75  *  @brief      设置引脚数据方向
//   76  *  @param      PTxn    端口
//   77  *  @param      cfg     引脚方向,0=输入,1=输出
//   78  *  @since      v5.0
//   79  *  Sample usage:       gpio_ddr (PTA8, GPI);    //设置 PTA8 管脚为输入
//   80  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function gpio_ddr
          CFI NoCalls
        THUMB
//   81 void    gpio_ddr   (PTXn_e ptxn, GPIO_CFG cfg)
//   82 {
gpio_ddr:
        PUSH     {R4,R5}
          CFI R5 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//   83     //端口方向控制输入还是输出
//   84     if(  cfg == GPI )
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BNE.N    ??gpio_ddr_0
//   85     {
//   86         //设置端口方向为输入
//   87         GPIO_PDDR_REG(GPIOX_BASE(ptxn)) &= ~(1 << PTn(ptxn));           // GPIO PDDR 管脚号 清0，即对应管脚配置为端口方向输入
        LDR.N    R2,??DataTable4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R3,R0
        ASRS     R3,R3,#+5
        LDR      R3,[R2, R3, LSL #+2]
        LDR.N    R2,??DataTable4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R4,R0
        ASRS     R4,R4,#+5
        LDR      R2,[R2, R4, LSL #+2]
        LDR      R4,[R2, #+20]
        MOVS     R5,#+1
        ANDS     R2,R0,#0x1F
        LSLS     R5,R5,R2
        BICS     R4,R4,R5
        STR      R4,[R3, #+20]
        B.N      ??gpio_ddr_1
//   88     }
//   89     else
//   90     {
//   91         //设置端口方向为输出
//   92         GPIO_PDDR_REG(GPIOX_BASE(ptxn)) |= (1 << PTn(ptxn));            // GPIO PDDR 管脚号 置1，即对应管脚配置为端口方向输出
??gpio_ddr_0:
        LDR.N    R2,??DataTable4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R3,R0
        ASRS     R3,R3,#+5
        LDR      R3,[R2, R3, LSL #+2]
        LDR.N    R2,??DataTable4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R4,R0
        ASRS     R4,R4,#+5
        LDR      R2,[R2, R4, LSL #+2]
        LDR      R4,[R2, #+20]
        MOVS     R5,#+1
        ANDS     R2,R0,#0x1F
        LSLS     R5,R5,R2
        ORRS     R4,R5,R4
        STR      R4,[R3, #+20]
//   93     }
//   94 }
??gpio_ddr_1:
        POP      {R4,R5}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//   95 
//   96 /*!
//   97  *  @brief      设置引脚状态
//   98  *  @param      PTxn    端口
//   99  *  @param      data    输出初始状态,0=低电平,1=高电平 （对输入无效）
//  100  *  @since      v5.0
//  101  *  @warning    务必保证数据方向为输出（DEBUG模式下，有断言进行检测）
//  102  *  Sample usage:       gpio_set (PTA8, 1);    // PTA8 管脚 输出 1
//  103  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function gpio_set
        THUMB
//  104 void gpio_set (PTXn_e ptxn, uint8 data)
//  105 {
gpio_set:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R5,R0
        MOVS     R4,R1
//  106     ASSERT( BIT_GET( GPIO_PDDR_REG(GPIOX_BASE(ptxn)) , PTn(ptxn)) == GPO ); // 断言，检测 输出方向是否为输出
        LDR.N    R0,??DataTable4
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R1,R5
        ASRS     R1,R1,#+5
        LDR      R0,[R0, R1, LSL #+2]
        LDR      R0,[R0, #+20]
        ANDS     R1,R5,#0x1F
        LSRS     R0,R0,R1
        LSLS     R0,R0,#+31
        BMI.N    ??gpio_set_0
        MOVS     R1,#+106
        LDR.N    R0,??DataTable4_1
          CFI FunCall assert_failed
        BL       assert_failed
//  107                                                                             // 获取 GPIO PDDR 管脚号 ，比较是否为输出
//  108 
//  109     //端口输出数据
//  110     if(data == 0)
??gpio_set_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??gpio_set_1
//  111     {
//  112         GPIO_PDOR_REG(GPIOX_BASE(ptxn)) &= ~(1 << PTn(ptxn));   // GPIO PDOR 管脚号 清0，即对应管脚配置为端口输出低电平
        LDR.N    R0,??DataTable4
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R1,R5
        ASRS     R1,R1,#+5
        LDR      R0,[R0, R1, LSL #+2]
        LDR      R1,[R0, #+0]
        MOVS     R2,#+1
        ANDS     R0,R5,#0x1F
        LSLS     R2,R2,R0
        BICS     R1,R1,R2
        LDR.N    R0,??DataTable4
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R2,R5
        ASRS     R2,R2,#+5
        LDR      R0,[R0, R2, LSL #+2]
        STR      R1,[R0, #+0]
        B.N      ??gpio_set_2
//  113     }
//  114     else
//  115     {
//  116         GPIO_PDOR_REG(GPIOX_BASE(ptxn))  |= (1 << PTn(ptxn));   // GPIO PDOR 管脚号 置1，即对应管脚配置为端口输出高电平
??gpio_set_1:
        LDR.N    R0,??DataTable4
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R1,R5
        ASRS     R1,R1,#+5
        LDR      R0,[R0, R1, LSL #+2]
        LDR      R1,[R0, #+0]
        MOVS     R2,#+1
        ANDS     R0,R5,#0x1F
        LSLS     R2,R2,R0
        ORRS     R1,R2,R1
        LDR.N    R0,??DataTable4
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R2,R5
        ASRS     R2,R2,#+5
        LDR      R0,[R0, R2, LSL #+2]
        STR      R1,[R0, #+0]
//  117     }
//  118 }
??gpio_set_2:
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock2
//  119 
//  120 
//  121 /*!
//  122  *  @brief      反转引脚状态
//  123  *  @param      PTxn    端口
//  124  *  @since      v5.0
//  125  *  @warning    务必保证数据方向为输出（DEBUG模式下，有断言进行检测）
//  126  *  Sample usage:       gpio_turn (PTA8);    // PTA8 管脚 输出 反转
//  127  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function gpio_turn
        THUMB
//  128 void gpio_turn (PTXn_e ptxn)
//  129 {
gpio_turn:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//  130     ASSERT( BIT_GET( GPIO_PDDR_REG(GPIOX_BASE(ptxn)) , PTn(ptxn)) == GPO ); // 断言，检测 输出方向是否为输出
        LDR.N    R0,??DataTable4
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R1,R4
        ASRS     R1,R1,#+5
        LDR      R0,[R0, R1, LSL #+2]
        LDR      R0,[R0, #+20]
        ANDS     R1,R4,#0x1F
        LSRS     R0,R0,R1
        LSLS     R0,R0,#+31
        BMI.N    ??gpio_turn_0
        MOVS     R1,#+130
        LDR.N    R0,??DataTable4_1
          CFI FunCall assert_failed
        BL       assert_failed
//  131                                                                             // 获取 GPIO PDDR 管脚号 ，比较是否为输出
//  132 
//  133     GPIO_PTOR_REG( GPIOX_BASE(ptxn))  =  1 << (PTn(ptxn ));                 // GPIO PTOR ptxn 置1，其他清0 ，即对应管脚配置为端口输出反转，其他位不变
??gpio_turn_0:
        LDR.N    R0,??DataTable4
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R1,R4
        ASRS     R1,R1,#+5
        LDR      R1,[R0, R1, LSL #+2]
        MOVS     R2,#+1
        ANDS     R0,R4,#0x1F
        LSLS     R2,R2,R0
        STR      R2,[R1, #+12]
//  134                                                                             // 此处不能用 BIT_SET 这个宏来置1 ，因为必须保证其他位 不变，其他位直接清0即可
//  135 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock3
//  136 
//  137 /*!
//  138  *  @brief      读取引脚输入状态
//  139  *  @param      PTxn    端口
//  140  *  @return     管脚的状态，1为高电平，0为低电平
//  141  *  @since      v5.0
//  142  *  @warning    务必保证数据方向为输入（DEBUG模式下，有断言进行检测）
//  143  *  Sample usage:       uint8 pta8_data = gpio_get (PTA8);    // 获取 PTA8 管脚 输入电平
//  144  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function gpio_get
        THUMB
//  145 uint8 gpio_get(PTXn_e ptxn)
//  146 {
gpio_get:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//  147     ASSERT( BIT_GET( GPIO_PDDR_REG(GPIOX_BASE(ptxn)) , PTn(ptxn)) == GPI ); // 断言，检测 输出方向是否为输入
        LDR.N    R0,??DataTable4
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R1,R4
        ASRS     R1,R1,#+5
        LDR      R0,[R0, R1, LSL #+2]
        LDR      R0,[R0, #+20]
        ANDS     R1,R4,#0x1F
        LSRS     R0,R0,R1
        LSLS     R0,R0,#+31
        BPL.N    ??gpio_get_0
        MOVS     R1,#+147
        LDR.N    R0,??DataTable4_1
          CFI FunCall assert_failed
        BL       assert_failed
//  148                                                                             // 获取 GPIO PDDR 管脚号 ，比较是否为输入
//  149 
//  150     return ((GPIO_PDIR_REG(GPIOX_BASE(ptxn)) >> PTn(ptxn )) & 0x01);        // 获取 GPIO PDIR ptxn 状态，即读取管脚输入电平
??gpio_get_0:
        LDR.N    R0,??DataTable4
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R1,R4
        ASRS     R1,R1,#+5
        LDR      R0,[R0, R1, LSL #+2]
        LDR      R0,[R0, #+16]
        ANDS     R4,R4,#0x1F
        LSRS     R0,R0,R4
        ANDS     R0,R0,#0x1
        POP      {R4,PC}          ;; return
//  151 }
          CFI EndBlock cfiBlock4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     GPIOX

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     ?_0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_0:
        DC8 "D:\\\347\254\254\345\215\201\344\272\214\345\261\212\347\224\265\347\243\201\347\273\204\\Car\\Chip\\src\\MK60_gpio.c"
        DC8 0, 0

        END
// 
//  20 bytes in section .data
//  52 bytes in section .rodata
// 534 bytes in section .text
// 
// 534 bytes of CODE  memory
//  52 bytes of CONST memory
//  20 bytes of DATA  memory
//
//Errors: none
//Warnings: none
