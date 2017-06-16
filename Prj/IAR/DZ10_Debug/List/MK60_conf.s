///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      12/Jun/2017  17:32:52
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\@@@@@@@\Car\App\MK60_conf.c
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EWD0CC.tmp
//        (D:\@@@@@@@\Car\App\MK60_conf.c -D DEBUG -D
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
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\MK60_conf.s
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

        EXTERN systick_delay_ms
        EXTERN uart_putchar

        PUBLIC ASSERT_FAILED_STR
        PUBLIC assert_failed
        PUBLIC default_isr
        PUBLIC fputc
        PUBLIC start_check
        PUBLIC vector_str
        
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
        
// D:\@@@@@@@\Car\App\MK60_conf.c
//    1 /****************************************************************************************
//    2  * @brief      山外K60 平台配置功能实现文件
//    3  * @author     山外科技
//    4  * @version    v5.1
//    5  * @date       2013-06-26
//    6 ****************************************************************************************/
//    7 
//    8 #include    "common.h"
//    9 #include    "stdio.h"
//   10 #include    "MK60_uart.h"
//   11 //#include    "VCAN_KEY.h"
//   12 //#include    "VCAN_LED.h"
//   13 #include    "MK60_flash.h"
//   14 
//   15 /*****************************************************************************************
//   16  *  @brief      断言失败所执行的函数
//   17  *  @param      file    文件路径地址
//   18  *  @param      line    行数
//   19  *  @since      v5.0
//   20  *  Sample usage:       assert_failed(__FILE__, __LINE__);
//   21 *****************************************************************************************/

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
//   22 const char ASSERT_FAILED_STR[] = "Assertion failed in %s at line %d\n";
ASSERT_FAILED_STR:
        DC8 "Assertion failed in %s at line %d\012"
        DC8 0
//   23 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function assert_failed
          CFI NoCalls
        THUMB
//   24 void assert_failed(char *file, int line)
//   25 {
//   26   #if 0
//   27     led_init(LED0);
//   28     while (1)
//   29     {
//   30         DEBUG_PRINTF(ASSERT_FAILED_STR, file, line); //通过串口提示断言失败
//   31 
//   32         //死循环等待程序员检测为何断言失败
//   33         led_turn(LED0);
//   34         DELAY_MS(1000);
//   35     }
//   36   #endif
//   37 }
assert_failed:
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//   38 
//   39 /*****************************************************************************************
//   40  *  @brief      重定义printf 到串口
//   41  *  @param      ch      需要打印的字节
//   42  *  @param      stream  数据流
//   43  *  @since      v5.0
//   44  *  @note       此函数由编译器自带库里的printf所调用
//   45 *****************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function fputc
        THUMB
//   46 int fputc(int ch, FILE *stream)
//   47 {
fputc:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
//   48     uart_putchar(VCAN_PORT, (char)ch);
        MOVS     R1,R4
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        MOVS     R0,#+3
          CFI FunCall uart_putchar
        BL       uart_putchar
//   49     return(ch);
        MOVS     R0,R4
        POP      {R1,R4,R5,PC}    ;; return
//   50 }
          CFI EndBlock cfiBlock1
//   51 
//   52 /*****************************************************************************************
//   53  *  @brief      启动前进行检测（检测按键是否按下，按下则进入死循环，防止进入 main 函数,松开按键后再按下则进行解锁）
//   54  *  @since      v5.0
//   55  *  @note       此函数可避免 下载口在 main 前 复用了导致无法下载等问题
//   56 *****************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function start_check
          CFI NoCalls
        THUMB
//   57 void start_check()
//   58 {
//   59 #if 0
//   60     uint8 flag = 0;
//   61 
//   62     key_init(KEY_A);
//   63 
//   64     if(key_check(KEY_A) == KEY_DOWN )
//   65     {
//   66         //按键按下
//   67 
//   68         led_init(LED0);
//   69 
//   70         while(1)
//   71         {
//   72 
//   73             if(key_check(KEY_A) == KEY_UP)
//   74             {
//   75                 flag = 1;
//   76             }
//   77 
//   78             led_turn(LED0);
//   79             printf("\n进入死循环等待！");
//   80             DELAY_MS(500);                          //此处的延时，可起到 按键 消抖的功能
//   81 
//   82             //如果 送开按键后，再按下 按键，则 进行解锁 操作
//   83             if((flag == 1)  && (key_check(KEY_A) == KEY_DOWN ))
//   84             {
//   85                 while(key_check(KEY_A) == KEY_DOWN)         //等待按键 弹起
//   86                 {
//   87                     led_turn(LED0);
//   88                     DELAY_MS(100);                          //此处的延时，可起到 按键 消抖的功能
//   89                 }
//   90 
//   91                 while(key_check(KEY_A) == KEY_UP)         //等待按键 弹起后 再 进行解锁
//   92                 {
//   93                     led_turn(LED0);
//   94                     DELAY_MS(50);                          //此处的延时，可起到 按键 消抖的功能
//   95                 }
//   96 
//   97                 printf("\n进行解锁操作，请重新刷入固件");
//   98 
//   99                 //解锁单片机
//  100                 flash_init();
//  101                 DELAY_MS(100);
//  102                 flash_erase_sector(0);        //擦除扇区 0  (解锁)
//  103                 NVIC_SystemReset();           //复位单片机
//  104             }
//  105         }
//  106     }
//  107 #endif
//  108 }
start_check:
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//  109 
//  110 #ifdef  DEBUG
//  111 // VECTOR_TABLE end
//  112 static char vector_str[][15];
//  113 #endif
//  114 
//  115 /*****************************************************************************************
//  116  *  @brief      默认中断服务函数
//  117  *  @since      v5.0
//  118  *  @note       此函数写入中断向量表里，不需要用户执行
//  119 *****************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function default_isr
        THUMB
//  120 void default_isr(void)
//  121 {
default_isr:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  122 #ifdef  DEBUG
//  123 #define VECTORNUM    ((SCB_ICSR & SCB_ICSR_VECTACTIVE_MASK)>>SCB_ICSR_VECTACTIVE_SHIFT)
//  124                             //等效于 (*(volatile uint8_t*)(0xE000ED04))
//  125     uint8 vtr = VECTORNUM;
        LDR.N    R0,??DataTable1  ;; 0xe000ed04
        LDR      R4,[R0, #+0]
//  126     //led_init(LED1);
//  127 
//  128     while(1)
//  129     {
//  130         //led_turn(LED1);
//  131         DEBUG_PRINTF("\n****default_isr entered on vector %d*****\n\n%s Interrupt", vtr, vector_str[vtr]);
//  132 
//  133         DELAY_MS(1000);
??default_isr_0:
        MOV      R0,#+1000
          CFI FunCall systick_delay_ms
        BL       systick_delay_ms
        B.N      ??default_isr_0
//  134     }
//  135 #else
//  136     return;
//  137 #endif
//  138 }
          CFI EndBlock cfiBlock3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     0xe000ed04
//  139 
//  140 #ifdef DEBUG
//  141 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//  142 char vector_str[][15] =
vector_str:
        DC8 ""
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 ""
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "NonMaskable"
        DC8 0, 0, 0
        DC8 "HardFault"
        DC8 0, 0, 0, 0, 0
        DC8 "MemManagement"
        DC8 0
        DC8 "BusFault"
        DC8 0, 0, 0, 0, 0, 0
        DC8 "UsageFault"
        DC8 0, 0, 0, 0
        DC8 ""
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 ""
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 ""
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 ""
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "SVCall"
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "DebugMonitor"
        DC8 0, 0
        DC8 ""
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "PendSV"
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "SysTick"
        DC8 0, 0, 0, 0, 0, 0, 0
        DC8 "DMA0"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "DMA1"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "DMA2"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "DMA3"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "DMA4"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "DMA5"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "DMA6"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "DMA7"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "DMA8"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "DMA9"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "DMA10"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "DMA11"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "DMA12"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "DMA13"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "DMA14"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "DMA15"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "DMA_Error"
        DC8 0, 0, 0, 0, 0
        DC8 "MCM"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "FTFL"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "Read_Collision"
        DC8 "LVD_LVW"
        DC8 0, 0, 0, 0, 0, 0, 0
        DC8 "LLW"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "Watchdog"
        DC8 0, 0, 0, 0, 0, 0
        DC8 "RNG"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "I2C0"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "I2C1"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "SPI0"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "SPI1"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "SPI2"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "CAN0_OR_MB_buf"
        DC8 "CAN0_Bus_Off"
        DC8 0, 0
        DC8 "CAN0_Error"
        DC8 0, 0, 0, 0
        DC8 43H, 41H, 4EH, 30H, 5FH, 54H, 78H, 5FH
        DC8 57H, 61H, 72H, 6EH, 69H, 6EH, 67H
        DC8 43H, 41H, 4EH, 30H, 5FH, 52H, 78H, 5FH
        DC8 57H, 61H, 72H, 6EH, 69H, 6EH, 67H
        DC8 "CAN0_Wake_Up"
        DC8 0, 0
        DC8 "Reserved51"
        DC8 0, 0, 0, 0
        DC8 "Reserved52"
        DC8 0, 0, 0, 0
        DC8 "CAN1_OR_MB_buf"
        DC8 "CAN1_Bus_Off"
        DC8 0, 0
        DC8 "CAN1_Error"
        DC8 0, 0, 0, 0
        DC8 43H, 41H, 4EH, 31H, 5FH, 54H, 78H, 5FH
        DC8 57H, 61H, 72H, 6EH, 69H, 6EH, 67H
        DC8 43H, 41H, 4EH, 31H, 5FH, 52H, 78H, 5FH
        DC8 57H, 61H, 72H, 6EH, 69H, 6EH, 67H
        DC8 "CAN1_Wake_Up"
        DC8 0, 0
        DC8 "Reserved59"
        DC8 0, 0, 0, 0
        DC8 "Reserved60"
        DC8 0, 0, 0, 0
        DC8 "UART0_RX_TX"
        DC8 0, 0, 0
        DC8 "UART0_ERR"
        DC8 0, 0, 0, 0, 0
        DC8 "UART1_RX_TX"
        DC8 0, 0, 0
        DC8 "UART1_ERR"
        DC8 0, 0, 0, 0, 0
        DC8 "UART2_RX_TX"
        DC8 0, 0, 0
        DC8 "UART2_ERR"
        DC8 0, 0, 0, 0, 0
        DC8 "UART3_RX_TX"
        DC8 0, 0, 0
        DC8 "UART3_ERR"
        DC8 0, 0, 0, 0, 0
        DC8 "UART4_RX_TX"
        DC8 0, 0, 0
        DC8 "UART4_ERR"
        DC8 0, 0, 0, 0, 0
        DC8 "UART5_RX_TX"
        DC8 0, 0, 0
        DC8 "UART5_ERR"
        DC8 0, 0, 0, 0, 0
        DC8 "ADC0"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "ADC1"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "CMP0"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "CMP1"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "CMP2"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "FTM0"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "FTM1"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "FTM2"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "CMT"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "RTC"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "Reserved83"
        DC8 0, 0, 0, 0
        DC8 "PIT0"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "PIT1"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "PIT2"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "PIT3"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "PDB0"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "USB0"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "USBDCD"
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 45H, 4EH, 45H, 54H, 5FH, 31H, 35H, 38H
        DC8 38H, 5FH, 54H, 69H, 6DH, 65H, 72H
        DC8 "ENET_Transmit"
        DC8 0
        DC8 "ENET_Receive"
        DC8 0, 0
        DC8 "ENET_Error"
        DC8 0, 0, 0, 0
        DC8 "I2S0"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "SDHC"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "DAC0"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "DAC1"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "TSI0"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "MCG"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "LPTimer"
        DC8 0, 0, 0, 0, 0, 0, 0
        DC8 "Reserved102"
        DC8 0, 0, 0
        DC8 "PORTA"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "PORTB"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "PORTC"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "PORTD"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "PORTE"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "Reserved108"
        DC8 0, 0, 0
        DC8 "Reserved109"
        DC8 0, 0, 0
        DC8 "Reserved110"
        DC8 0, 0, 0
        DC8 "Reserved111"
        DC8 0, 0, 0
        DC8 "Reserved112"
        DC8 0, 0, 0
        DC8 "Reserved113"
        DC8 0, 0, 0
        DC8 "Reserved114"
        DC8 0, 0, 0
        DC8 "Reserved115"
        DC8 0, 0, 0
        DC8 "Reserved116"
        DC8 0, 0, 0
        DC8 "Reserved117"
        DC8 0, 0, 0
        DC8 "Reserved118"
        DC8 0, 0, 0
        DC8 "Reserved119"
        DC8 0, 0, 0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  143 {
//  144     /******  Cortex-M4 Processor Exceptions Numbers ****************************************************************/
//  145     "",                         //0
//  146     "",
//  147     "NonMaskable"               , /*!< 2 Non Maskable Interrupt                              */
//  148     "HardFault"                 , /*!< 3 Hard Fault                                          */
//  149     "MemManagement"             , /*!< 4 Cortex-M4 Memory Management Interrupt               */
//  150     "BusFault"                  , /*!< 5 Cortex-M4 Bus Fault Interrupt                       */
//  151     "UsageFault"                , /*!< 6 Cortex-M4 Usage Fault Interrupt                     */
//  152     "",                         //7
//  153     "",
//  154     "",                         //9
//  155     "",
//  156     "SVCall"                    , /*!< 11 Cortex-M4 SV Call Interrupt                        */
//  157     "DebugMonitor"              , /*!< 12 Cortex-M4 Debug Monitor Interrupt                  */
//  158     "",
//  159     "PendSV"                    , /*!< 14 Cortex-M4 Pend SV Interrupt                        */
//  160     "SysTick"                   , /*!< 15 Cortex-M4 System Tick Interrupt                    */
//  161     /******  Kinetis 60 specific Interrupt Numbers **********************************************************************/
//  162     "DMA0"                      , // DMA Channel 0 Transfer Complete
//  163     "DMA1"                      , // DMA Channel 1 Transfer Complete
//  164     "DMA2"                      , // DMA Channel 2 Transfer Complete
//  165     "DMA3"                      , // DMA Channel 3 Transfer Complete
//  166     "DMA4"                      , // DMA Channel 4 Transfer Complete
//  167     "DMA5"                      , // DMA Channel 5 Transfer Complete
//  168     "DMA6"                      , // DMA Channel 6 Transfer Complete
//  169     "DMA7"                      , // DMA Channel 7 Transfer Complete
//  170     "DMA8"                      , // DMA Channel 8 Transfer Complete
//  171     "DMA9"                      , // DMA Channel 9 Transfer Complete
//  172     "DMA10"                     , // DMA Channel 10 Transfer Complete
//  173     "DMA11"                     , // DMA Channel 11 Transfer Complete
//  174     "DMA12"                     , // DMA Channel 12 Transfer Complete
//  175     "DMA13"                     , // DMA Channel 13 Transfer Complete
//  176     "DMA14"                     , // DMA Channel 14 Transfer Complete
//  177     "DMA15"                     , // DMA Channel 15 Transfer Complete
//  178     "DMA_Error"                 , // DMA Error Interrupt
//  179     "MCM"                       , // Normal Interrupt
//  180     "FTFL"                      , // FTFL Interrupt
//  181     "Read_Collision"            , // Read Collision Interrupt
//  182     "LVD_LVW"                   , // Low Voltage Detect, Low Voltage Warning
//  183     "LLW"                       , // Low Leakage Wakeup
//  184     "Watchdog"                  , // WDOG Interrupt
//  185     "RNG"                       , // RNGB Interrupt
//  186     "I2C0"                      , // I2C0 interrupt
//  187     "I2C1"                      , // I2C1 interrupt
//  188     "SPI0"                      , // SPI0 Interrupt
//  189     "SPI1"                      , // SPI1 Interrupt
//  190     "SPI2"                      , // SPI2 Interrupt
//  191     "CAN0_OR_MB_buf"            , // CAN0 OR'd Message Buffers Interrupt
//  192     "CAN0_Bus_Off"              , // CAN0 Bus Off Interrupt
//  193     "CAN0_Error"                , // CAN0 Error Interrupt
//  194     "CAN0_Tx_Warning"           , // CAN0 Tx Warning Interrupt
//  195     "CAN0_Rx_Warning"           , // CAN0 Rx Warning Interrupt
//  196     "CAN0_Wake_Up"              , // CAN0 Wake Up Interrupt
//  197     "Reserved51"                , // 保留 interrupt 51
//  198     "Reserved52"                , // 保留 interrupt 52
//  199     "CAN1_OR_MB_buf"            , // CAN1 OR'd Message Buffers Interrupt
//  200     "CAN1_Bus_Off"              , // CAN1 Bus Off Interrupt
//  201     "CAN1_Error"                , // CAN1 Error Interrupt
//  202     "CAN1_Tx_Warning"           , // CAN1 Tx Warning Interrupt
//  203     "CAN1_Rx_Warning"           , // CAN1 Rx Warning Interrupt
//  204     "CAN1_Wake_Up"              , // CAN1 Wake Up Interrupt
//  205     "Reserved59"                , // 保留 interrupt 59
//  206     "Reserved60"                , // 保留 interrupt 60
//  207     "UART0_RX_TX"               , // UART0 Receive/Transmit interrupt
//  208     "UART0_ERR"                 , // UART0 Error interrupt
//  209     "UART1_RX_TX"               , // UART1 Receive/Transmit interrupt
//  210     "UART1_ERR"                 , // UART1 Error interrupt
//  211     "UART2_RX_TX"               , // UART2 Receive/Transmit interrupt
//  212     "UART2_ERR"                 , // UART2 Error interrupt
//  213     "UART3_RX_TX"               , // UART3 Receive/Transmit interrupt
//  214     "UART3_ERR"                 , // UART3 Error interrupt
//  215     "UART4_RX_TX"               , // UART4 Receive/Transmit interrupt
//  216     "UART4_ERR"                 , // UART4 Error interrupt
//  217     "UART5_RX_TX"               , // UART5 Receive/Transmit interrupt
//  218     "UART5_ERR"                 , // UART5 Error interrupt
//  219     "ADC0"                      , // ADC0 interrupt
//  220     "ADC1"                      , // ADC1 interrupt
//  221     "CMP0"                      , // CMP0 interrupt
//  222     "CMP1"                      , // CMP1 interrupt
//  223     "CMP2"                      , // CMP2 interrupt
//  224     "FTM0"                      , // FTM0 fault, overflow and channels interrupt
//  225     "FTM1"                      , // FTM1 fault, overflow and channels interrupt
//  226     "FTM2"                      , // FTM2 fault, overflow and channels interrupt
//  227     "CMT"                       , // CMT interrupt
//  228     "RTC"                       , // RTC interrupt
//  229     "Reserved83"                , // 保留 interrupt 83
//  230     "PIT0"                      , // PIT timer channel 0 interrupt
//  231     "PIT1"                      , // PIT timer channel 1 interrupt
//  232     "PIT2"                      , // PIT timer channel 2 interrupt
//  233     "PIT3"                      , // PIT timer channel 3 interrupt
//  234     "PDB0"                      , // PDB0 Interrupt
//  235     "USB0"                      , // USB0 interrupt
//  236     "USBDCD"                    , // USBDCD Interrupt
//  237     "ENET_1588_Timer"           , // Ethernet MAC IEEE 1588 Timer Interrupt
//  238     "ENET_Transmit"             , // Ethernet MAC Transmit Interrupt
//  239     "ENET_Receive"              , // Ethernet MAC Receive Interrupt
//  240     "ENET_Error"                , // Ethernet MAC Error and miscelaneous Interrupt
//  241     "I2S0"                      , // I2S0 Interrupt
//  242     "SDHC"                      , // SDHC Interrupt
//  243     "DAC0"                      , // DAC0 interrupt
//  244     "DAC1"                      , // DAC1 interrupt
//  245     "TSI0"                      , // TSI0 Interrupt
//  246     "MCG"                       , // MCG Interrupt
//  247     "LPTimer"                   , // LPTimer interrupt
//  248     "Reserved102"               , // 保留 interrupt 102
//  249     "PORTA"                     , // Port A interrupt
//  250     "PORTB"                     , // Port B interrupt
//  251     "PORTC"                     , // Port C interrupt
//  252     "PORTD"                     , // Port D interrupt
//  253     "PORTE"                     , // Port E interrupt
//  254     "Reserved108"               , // 保留 interrupt 108
//  255     "Reserved109"               , // 保留 interrupt 109
//  256     "Reserved110"               , // 保留 interrupt 110
//  257     "Reserved111"               , // 保留 interrupt 111
//  258     "Reserved112"               , // 保留 interrupt 112
//  259     "Reserved113"               , // 保留 interrupt 113
//  260     "Reserved114"               , // 保留 interrupt 114
//  261     "Reserved115"               , // 保留 interrupt 115
//  262     "Reserved116"               , // 保留 interrupt 116
//  263     "Reserved117"               , // 保留 interrupt 117
//  264     "Reserved118"               , // 保留 interrupt 118
//  265     "Reserved119"               , // 保留 interrupt 119
//  266 };
//  267 #endif
//  268 
//  269 
//  270 
//  271 
//  272 
//  273 
//  274 
// 
// 1 800 bytes in section .data
//    36 bytes in section .rodata
//    44 bytes in section .text
// 
//    44 bytes of CODE  memory
//    36 bytes of CONST memory
// 1 800 bytes of DATA  memory
//
//Errors: none
//Warnings: none
