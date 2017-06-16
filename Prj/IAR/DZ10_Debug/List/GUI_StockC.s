///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      12/Jun/2017  17:32:49
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\@@@@@@@\Car\Drivers\ZLG_GUI\GUI_StockC.C
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EWC516.tmp
//        (D:\@@@@@@@\Car\Drivers\ZLG_GUI\GUI_StockC.C -D DEBUG
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
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\GUI_StockC.s
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

        PUBLIC DCB2HEX_TAB
        PUBLIC GUI_ExchangeColor
        PUBLIC GUI_GetBackColor
        PUBLIC GUI_GetDispColor
        PUBLIC GUI_SetColor
        PUBLIC back_color
        PUBLIC disp_color
        
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
        
// D:\@@@@@@@\Car\Drivers\ZLG_GUI\GUI_StockC.C
//    1 /****************************************************************************************
//    2 * 文件名：GUI_STOCKC.C
//    3 * 功能：设置前景色及背景色变量，用于ASCII码、汉字、窗口、单色位图显示。
//    4 * 作者：黄绍斌
//    5 * 日期：2004.02.28
//    6 * 备注：
//    7 ****************************************************************************************/
//    8 #include  "config.h"
//    9 
//   10 #if  (GUI_WINDOW_EN==1)|(GUI_MenuIco_EN==1)|(GUI_MenuDown_EN==1)|(GUI_LoadPic_EN==1)|(GUI_PutHZ_EN==1)|(FONT5x7_EN==1)|(FONT8x8_EN==1)|(FONT24x32_EN==1)
//   11 
//   12 /* 定义十进制(0-7)==>十六进制位转换表，由于显示点数据是由左到右，所以十六进制位顺序是倒的 */

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
//   13 uint8 const  DCB2HEX_TAB[8] = {0x80, 0x40, 0x20, 0x10, 0x08, 0x04, 0x02, 0x01};
DCB2HEX_TAB:
        DC8 128, 64, 32, 16, 8, 4, 2, 1
//   14 
//   15 
//   16 /* 定义前景色及背景色变量，用于ASCII码、汉字、窗口、单色位图显示 */

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   17 TCOLOR  disp_color;
disp_color:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   18 TCOLOR	back_color;
back_color:
        DS8 1
//   19 
//   20 /****************************************************************************
//   21 * 名称：GUI_SetColor()
//   22 * 功能：设置显示色及背景色。用于ASCII字符显示及汉字显示。
//   23 * 入口参数：color1	显示色的值
//   24 *          color2	背景色的值
//   25 * 出口参数：无
//   26 * 说明：
//   27 ****************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function GUI_SetColor
          CFI NoCalls
        THUMB
//   28 void  GUI_SetColor(TCOLOR color1, TCOLOR color2)
//   29 {  GUI_CopyColor(&disp_color, color1);
GUI_SetColor:
        LDR.N    R2,??DataTable3
        STRB     R0,[R2, #+0]
//   30    GUI_CopyColor(&back_color, color2);  
        LDR.N    R2,??DataTable3_1
        STRB     R1,[R2, #+0]
//   31 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//   32 
//   33 
//   34 /****************************************************************************
//   35 * 名称：GUI_GetBackColor()
//   36 * 功能：最得当前背景色。
//   37 * 入口参数：bakc		保存颜色的变量地址
//   38 * 出口参数：无
//   39 * 说明：
//   40 ****************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function GUI_GetBackColor
          CFI NoCalls
        THUMB
//   41 void  GUI_GetBackColor(TCOLOR  *bakc)
//   42 {  GUI_CopyColor(bakc, back_color);  
GUI_GetBackColor:
        LDR.N    R1,??DataTable3_1
        LDRB     R1,[R1, #+0]
        STRB     R1,[R0, #+0]
//   43 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//   44 
//   45 
//   46 /****************************************************************************
//   47 * 名称：GUI_GetDispColor()
//   48 * 功能：最得当前前景色。
//   49 * 入口参数：bakc		保存颜色的变量地址
//   50 * 出口参数：无
//   51 * 说明：
//   52 ****************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function GUI_GetDispColor
          CFI NoCalls
        THUMB
//   53 void  GUI_GetDispColor(TCOLOR  *bakc)
//   54 {  GUI_CopyColor(bakc, disp_color);  
GUI_GetDispColor:
        LDR.N    R1,??DataTable3
        LDRB     R1,[R1, #+0]
        STRB     R1,[R0, #+0]
//   55 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//   56 
//   57 
//   58 /****************************************************************************
//   59 * 名称：GUI_ExchangeColor()
//   60 * 功能：交换前景色与背景色。用于反相显示。
//   61 * 入口参数：无
//   62 * 出口参数：无
//   63 * 说明：
//   64 ****************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function GUI_ExchangeColor
          CFI NoCalls
        THUMB
//   65 void  GUI_ExchangeColor(void)
//   66 {  TCOLOR  bakc;
//   67 
//   68    GUI_CopyColor(&bakc, disp_color);
GUI_ExchangeColor:
        LDR.N    R1,??DataTable3
        LDRB     R1,[R1, #+0]
        MOVS     R0,R1
//   69    GUI_CopyColor(&disp_color, back_color);
        LDR.N    R1,??DataTable3_1
        LDRB     R1,[R1, #+0]
        LDR.N    R2,??DataTable3
        STRB     R1,[R2, #+0]
//   70    GUI_CopyColor(&back_color, bakc);
        LDR.N    R1,??DataTable3_1
        STRB     R0,[R1, #+0]
//   71 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     disp_color

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     back_color

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//   72 
//   73 #endif
// 
//  2 bytes in section .bss
//  8 bytes in section .rodata
// 54 bytes in section .text
// 
// 54 bytes of CODE  memory
//  8 bytes of CONST memory
//  2 bytes of DATA  memory
//
//Errors: none
//Warnings: none
