///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      16/Jun/2017  18:57:12
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\@@@@@@@\Car\Chip\src\IAR\system_MK60DZ10.c
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EW2028.tmp
//        (D:\@@@@@@@\Car\Chip\src\IAR\system_MK60DZ10.c -D DEBUG
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
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\system_MK60DZ10.s
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

        SECTION `.bss`:DATA:NOALLOC:NOROOT(0)
        SECTION `.data`:DATA:NOALLOC:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0
        SECTION `.data_init`:DATA:NOALLOC:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0
        SECTION CodeRelocate:DATA:NOALLOC:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0
        SECTION CodeRelocateRam:DATA:NOALLOC:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        EXTERN Dr_6
        EXTERN __VECTOR_RAM
        EXTERN __VECTOR_TABLE
        EXTERN gpio_init
        EXTERN gpio_turn
        EXTERN main
        EXTERN pll_init
        EXTERN systick_delay_ms
        EXTERN uart_init
        EXTERN wdog_disable
        EXTERN write_vtor

        PUBLIC bus_clk_khz
        PUBLIC common_startup
        PUBLIC core_clk_khz
        PUBLIC core_clk_mhz
        PUBLIC fb_clk_init
        PUBLIC start
        PUBLIC sysinit
        PUBLIC trace_clk_init
        
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
        
// D:\@@@@@@@\Car\Chip\src\IAR\system_MK60DZ10.c
//    1 /*!
//    2  *     COPYRIGHT NOTICE
//    3  *     Copyright (c) 2013,山外科技
//    4  *     All rights reserved.
//    5  *     技术讨论：山外论坛 http://www.vcan123.com
//    6  *
//    7  *     除注明出处外，以下所有内容版权均属山外科技所有，未经允许，不得用于商业用途，
//    8  *     修改内容时必须保留山外科技的版权声明。
//    9  *
//   10  * @file       system_MK60DZ10.c
//   11  * @brief      系统启动相关函数
//   12  * @author     山外科技
//   13  * @version    v5.2
//   14  * @date       2014-10-09
//   15  */
//   16 
//   17 #include "common.h"
//   18 #include "system_MK60DZ10.h"
//   19 #include "MK60_uart.h"
//   20 #include "MK60_wdog.h"
//   21 #include "MK60_gpio.h"
//   22 
//   23 #include "All_Init.h"
//   24 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   25 int core_clk_khz;
core_clk_khz:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   26 int core_clk_mhz;
core_clk_mhz:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   27 int bus_clk_khz;
bus_clk_khz:
        DS8 4

        SECTION `.bss`:DATA:NOALLOC:NOROOT(0)
//   28 
//   29 extern void main(void);
//   30 
//   31 /*!
//   32  *  @brief      kinetis 启动函数
//   33  *  @since      v5.0
//   34  *  @author     飞思卡尔公司
//   35  *  @note       此函数是系统启动初期由汇编函数调用，然后执行main函数
//   36  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function start
        THUMB
//   37 void start(void)
//   38 {
start:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   39     wdog_disable();     // 关闭看门狗
          CFI FunCall wdog_disable
        BL       wdog_disable
//   40     common_startup();   // 复制中断向量表 和 必要的数据到 RAM里
          CFI FunCall common_startup
        BL       common_startup
//   41     sysinit();          // 系统初始化，设置系统频率，初始化printf端口
          CFI FunCall sysinit
        BL       sysinit
//   42 
//   43     //为了防止 main 函数 里 复用了 下载口，导致 下载失败，此处增加 按下 KEY_A 就进入死循环
//   44     //SRART_CHECK();
//   45 
//   46     gpio_init(PTA4,GPO,1);  //初始化为输出1，即 禁用了 NMI 中断
        MOVS     R2,#+1
        MOVS     R1,#+1
        MOVS     R0,#+4
          CFI FunCall gpio_init
        BL       gpio_init
//   47 
//   48     main();             // 执行用户主函数
          CFI FunCall main
        BL       main
//   49     Dr_6 ();   
          CFI FunCall Dr_6
        BL       Dr_6
//   50     
//   51     while(1)          //程序异常跑飞进这里
//   52     {
//   53         gpio_turn (PTC2);//LED	反转
??start_0:
        MOVS     R0,#+66
          CFI FunCall gpio_turn
        BL       gpio_turn
//   54         DELAY_MS(50);
        MOVS     R0,#+50
          CFI FunCall systick_delay_ms
        BL       systick_delay_ms
        B.N      ??start_0
//   55     }  
//   56       
//   57       
//   58 }
          CFI EndBlock cfiBlock0
//   59 
//   60 /*!
//   61  *  @brief      系统初始化，设置系统频率，初始化printf端口
//   62  *  @since      v5.0
//   63  *  @note       此函数是系统启动初期由汇编函数调用，然后执行main函数
//   64  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function sysinit
        THUMB
//   65 void sysinit (void)
//   66 {
sysinit:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   67     core_clk_mhz = pll_init(CORE_CLK);     //设置系统时钟
        MOVS     R0,#+13
          CFI FunCall pll_init
        BL       pll_init
        LDR.N    R1,??DataTable4
        STR      R0,[R1, #+0]
//   68 
//   69     core_clk_khz = core_clk_mhz * 1000;     //把配置好的时钟都保存在全局变量里，以便后续使用
        LDR.N    R0,??DataTable4
        LDR      R1,[R0, #+0]
        MOV      R0,#+1000
        MULS     R1,R0,R1
        LDR.N    R0,??DataTable4_1
        STR      R1,[R0, #+0]
//   70     bus_clk_khz = core_clk_khz / (((SIM_CLKDIV1 & SIM_CLKDIV1_OUTDIV2_MASK) >> 24) + 1);
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable4_2  ;; 0x40048044
        LDR      R1,[R1, #+0]
        UBFX     R1,R1,#+24,#+4
        ADDS     R1,R1,#+1
        UDIV     R0,R0,R1
        LDR.N    R1,??DataTable4_3
        STR      R0,[R1, #+0]
//   71 
//   72     uart_init (VCAN_PORT, VCAN_BAUD);   //初始化printf用到的管脚
        MOVS     R1,#+115200
        MOVS     R0,#+3
          CFI FunCall uart_init
        BL       uart_init
//   73 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock1
//   74 
//   75 /*!
//   76  *  @brief      trace 时钟输出 初始化
//   77  *  @since      v5.0
//   78  *  @note       可用来校验时钟输出是否正确
//   79  *  @author     飞思卡尔公司
//   80  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function trace_clk_init
          CFI NoCalls
        THUMB
//   81 void trace_clk_init(void)
//   82 {
//   83     /* Set the trace clock to the core clock frequency */
//   84     SIM_SOPT2 |= SIM_SOPT2_TRACECLKSEL_MASK;
trace_clk_init:
        LDR.N    R0,??DataTable4_4  ;; 0x40048004
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000
        LDR.N    R1,??DataTable4_4  ;; 0x40048004
        STR      R0,[R1, #+0]
//   85 
//   86     /* Enable the TRACE_CLKOUT pin function on PTA6 (alt7 function) */
//   87     PORTA_PCR6 = ( PORT_PCR_MUX(0x7));
        MOV      R0,#+1792
        LDR.N    R1,??DataTable4_5  ;; 0x40049018
        STR      R0,[R1, #+0]
//   88 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//   89 
//   90 /*!
//   91  *  @brief      fb 时钟输出 初始化
//   92  *  @since      v5.0
//   93  *  @note       可用来校验时钟输出是否正确
//   94  *  @author     飞思卡尔公司
//   95  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function fb_clk_init
          CFI NoCalls
        THUMB
//   96 void fb_clk_init(void)
//   97 {
//   98     /* Enable the clock to the FlexBus module */
//   99     SIM_SCGC7 |= SIM_SCGC7_FLEXBUS_MASK;
fb_clk_init:
        LDR.N    R0,??DataTable4_6  ;; 0x40048040
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable4_6  ;; 0x40048040
        STR      R0,[R1, #+0]
//  100 
//  101     /* Enable the FB_CLKOUT function on PTC3 (alt5 function) */
//  102     PORTC_PCR3 = ( PORT_PCR_MUX(0x5));
        MOV      R0,#+1280
        LDR.N    R1,??DataTable4_7  ;; 0x4004b00c
        STR      R0,[R1, #+0]
//  103 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock3
//  104 
//  105 
//  106 /*!
//  107  *  @brief      复制中断向量表 和 必要的数据到 RAM里
//  108  *  @since      v5.0
//  109  *  @author     飞思卡尔公司
//  110  */
//  111 #pragma section = ".data"
//  112 #pragma section = ".data_init"
//  113 #pragma section = ".bss"
//  114 #pragma section = "CodeRelocate"
//  115 #pragma section = "CodeRelocateRam"
//  116 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function common_startup
        THUMB
//  117 void common_startup(void)
//  118 {
common_startup:
        PUSH     {R3-R9,LR}
          CFI R14 Frame(CFA, -4)
          CFI R9 Frame(CFA, -8)
          CFI R8 Frame(CFA, -12)
          CFI R7 Frame(CFA, -16)
          CFI R6 Frame(CFA, -20)
          CFI R5 Frame(CFA, -24)
          CFI R4 Frame(CFA, -28)
          CFI CFA R13+32
//  119     /* Declare a counter we'll use in all of the copy loops */
//  120     uint32 n;
//  121 
//  122     /* Declare pointers for various data sections. These pointers
//  123      * are initialized using values pulled in from the linker file
//  124      */
//  125     uint8 *data_ram, * data_rom, * data_rom_end;
//  126     uint8 *bss_start, * bss_end;
//  127 
//  128 
//  129     /*  VECTOR_TABLE 和 VECTOR_RAM 的地址从  linker 文件里获得 （*.icf） */
//  130     extern uint32 __VECTOR_TABLE[];
//  131     extern uint32 __VECTOR_RAM[];
//  132 
//  133     /* 复制ROM里的中断向量表到RAM里 */
//  134     if (__VECTOR_RAM != __VECTOR_TABLE)             //如果不是RAM启动，则需要复制中断向量表
        LDR.N    R0,??DataTable4_8
        LDR.N    R1,??DataTable4_9
        CMP      R0,R1
        BEQ.N    ??common_startup_0
//  135     {
//  136         for (n = 0; n < 0x410; n++)                 //逐个复制
        MOVS     R0,#+0
        MOV      R9,R0
??common_startup_1:
        CMP      R9,#+1040
        BCS.N    ??common_startup_0
//  137             __VECTOR_RAM[n] = __VECTOR_TABLE[n];
        LDR.N    R0,??DataTable4_9
        LDR      R0,[R0, R9, LSL #+2]
        LDR.N    R1,??DataTable4_8
        STR      R0,[R1, R9, LSL #+2]
        ADDS     R9,R9,#+1
        B.N      ??common_startup_1
//  138     }
//  139     /* 指定新的中断向量表地址为 __VECTOR_RAM */
//  140     write_vtor((uint32)__VECTOR_RAM);
??common_startup_0:
        LDR.N    R0,??DataTable4_8
          CFI FunCall write_vtor
        BL       write_vtor
//  141 
//  142     /* 把已赋初值的变量从ROM里复制数据到RAM里 */
//  143     data_ram = __section_begin(".data");            //已赋初值的变量的地址在RAM里
        LDR.N    R0,??DataTable4_10
        MOVS     R4,R0
//  144     data_rom = __section_begin(".data_init");       //已赋初值的变量的数据存放在ROM里，需要赋值到RAM里
        LDR.N    R0,??DataTable4_11
        MOVS     R5,R0
//  145     data_rom_end = __section_end(".data_init");
        LDR.N    R0,??DataTable4_12
        MOVS     R6,R0
//  146     n = data_rom_end - data_rom;
        SUBS     R0,R6,R5
        MOV      R9,R0
//  147 
//  148     /* 复制初始化数据到RAM里 */
//  149     while (n--)
??common_startup_2:
        MOV      R0,R9
        SUBS     R9,R0,#+1
        CMP      R0,#+0
        BEQ.N    ??common_startup_3
//  150         *data_ram++ = *data_rom++;
        LDRB     R0,[R5, #+0]
        STRB     R0,[R4, #+0]
        ADDS     R5,R5,#+1
        ADDS     R4,R4,#+1
        B.N      ??common_startup_2
//  151 
//  152     /* 没赋初值或者初值为0的变量，需要清除其RAM里的数据，确保值为0 */
//  153     bss_start = __section_begin(".bss");
??common_startup_3:
        LDR.N    R0,??DataTable4_13
        MOVS     R7,R0
//  154     bss_end = __section_end(".bss");
        LDR.N    R0,??DataTable4_14
        MOV      R8,R0
//  155 
//  156     /* 清除没赋初值或者初值为0的变量数据值 */
//  157     n = bss_end - bss_start;
        SUBS     R0,R8,R7
        MOV      R9,R0
//  158     while(n--)
??common_startup_4:
        MOV      R0,R9
        SUBS     R9,R0,#+1
        CMP      R0,#+0
        BEQ.N    ??common_startup_5
//  159         *bss_start++ = 0;
        MOVS     R0,#+0
        STRB     R0,[R7, #+0]
        ADDS     R7,R7,#+1
        B.N      ??common_startup_4
//  160 
//  161     /* 赋值用 __ramfunc 声明的函数的的代码段到 RAM，可以加快代码的运行        */
//  162     uint8 *code_relocate_ram = __section_begin("CodeRelocateRam");
??common_startup_5:
        LDR.N    R1,??DataTable4_15
//  163     uint8 *code_relocate = __section_begin("CodeRelocate");
        LDR.N    R2,??DataTable4_16
//  164     uint8 *code_relocate_end = __section_end("CodeRelocate");
        LDR.N    R3,??DataTable4_17
//  165 
//  166     /* 从ROM里复制函数代码到RAM里 */
//  167     n = code_relocate_end - code_relocate;
        SUBS     R0,R3,R2
        MOV      R9,R0
//  168     while (n--)
??common_startup_6:
        MOV      R0,R9
        SUBS     R9,R0,#+1
        CMP      R0,#+0
        BEQ.N    ??common_startup_7
//  169         *code_relocate_ram++ = *code_relocate++;
        LDRB     R0,[R2, #+0]
        STRB     R0,[R1, #+0]
        ADDS     R2,R2,#+1
        ADDS     R1,R1,#+1
        B.N      ??common_startup_6
//  170 
//  171 }
??common_startup_7:
        POP      {R0,R4-R9,PC}    ;; return
          CFI EndBlock cfiBlock4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     core_clk_mhz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     core_clk_khz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     0x40048044

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     bus_clk_khz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     0x40048004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     0x40049018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_6:
        DC32     0x40048040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_7:
        DC32     0x4004b00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_8:
        DC32     __VECTOR_RAM

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_9:
        DC32     __VECTOR_TABLE

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_10:
        DC32     SFB(`.data`)

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_11:
        DC32     SFB(`.data_init`)

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_12:
        DC32     SFE(`.data_init`)

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_13:
        DC32     SFB(`.bss`)

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_14:
        DC32     SFE(`.bss`)

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_15:
        DC32     SFB(CodeRelocateRam)

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_16:
        DC32     SFB(CodeRelocate)

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_17:
        DC32     SFE(CodeRelocate)

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.data`:DATA:NOALLOC:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.data_init`:DATA:NOALLOC:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION CodeRelocate:DATA:NOALLOC:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION CodeRelocateRam:DATA:NOALLOC:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 
//  12 bytes in section .bss
// 370 bytes in section .text
// 
// 370 bytes of CODE memory
//  12 bytes of DATA memory
//
//Errors: none
//Warnings: none
