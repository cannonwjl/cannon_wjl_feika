///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      16/Jun/2017  18:57:13
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\@@@@@@@\Car\Board\src\VCAN_camera.c
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EW22DA.tmp
//        (D:\@@@@@@@\Car\Board\src\VCAN_camera.c -D DEBUG -D
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
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\VCAN_camera.s
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

        PUBLIC img_extract
        
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
        
// D:\@@@@@@@\Car\Board\src\VCAN_camera.c
//    1 #include "common.h"
//    2 #include "All_Init.h"
//    3 
//    4 //压缩二值化图像解压（空间 换 时间 解压）
//    5 //srclen 是二值化图像的占用空间大小
//    6 //【鹰眼解压】鹰眼图像解压，转为 二维数组 - 智能车资料区 - 山外论坛 http://vcan123.com/forum.php?mod=viewthread&tid=17&ctid=6
//    7 //解压的时候，里面有个数组，配置黑、白对应的值是多少。

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function img_extract
          CFI NoCalls
        THUMB
//    8 __ramfunc void img_extract(void *dst, void *src, uint32_t srclen)
//    9 {
img_extract:
        PUSH     {R4-R7}
          CFI R7 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R3,R0
//   10   
//   11  static uint8_t colour[2] = {0, 1}; //0 和 1 分别对应的颜色
//   12  uint8_t * mdst = dst;
        MOVS     R6,R3
//   13  uint8_t * msrc = src;
        MOVS     R5,R1
//   14     //注：山外的摄像头 0 表示 白色，1表示 黑色
//   15     uint8_t tmpsrc;
//   16     while(srclen --)
??img_extract_0:
        MOVS     R0,R2
        SUBS     R2,R0,#+1
        CMP      R0,#+0
        BEQ.N    ??img_extract_1
//   17     {
//   18         tmpsrc = *msrc++;
        LDRB     R0,[R5, #+0]
        MOVS     R4,R0
        ADDS     R5,R5,#+1
//   19         *mdst++ = colour[ (tmpsrc >> 7 ) & 0x01 ];
        LDR.N    R0,??img_extract_2
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R7,R4
        ASRS     R7,R7,#+7
        LDRB     R0,[R0, R7]
        STRB     R0,[R6, #+0]
        ADDS     R6,R6,#+1
//   20         *mdst++ = colour[ (tmpsrc >> 6 ) & 0x01 ];
        LDR.N    R0,??img_extract_2
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        UBFX     R7,R4,#+6,#+1
        LDRB     R0,[R0, R7]
        STRB     R0,[R6, #+0]
        ADDS     R6,R6,#+1
//   21         *mdst++ = colour[ (tmpsrc >> 5 ) & 0x01 ];
        LDR.N    R0,??img_extract_2
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        UBFX     R7,R4,#+5,#+1
        LDRB     R0,[R0, R7]
        STRB     R0,[R6, #+0]
        ADDS     R6,R6,#+1
//   22         *mdst++ = colour[ (tmpsrc >> 4 ) & 0x01 ];
        LDR.N    R0,??img_extract_2
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        UBFX     R7,R4,#+4,#+1
        LDRB     R0,[R0, R7]
        STRB     R0,[R6, #+0]
        ADDS     R6,R6,#+1
//   23         *mdst++ = colour[ (tmpsrc >> 3 ) & 0x01 ];
        LDR.N    R0,??img_extract_2
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        UBFX     R7,R4,#+3,#+1
        LDRB     R0,[R0, R7]
        STRB     R0,[R6, #+0]
        ADDS     R6,R6,#+1
//   24         *mdst++ = colour[ (tmpsrc >> 2 ) & 0x01 ];
        LDR.N    R0,??img_extract_2
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        UBFX     R7,R4,#+2,#+1
        LDRB     R0,[R0, R7]
        STRB     R0,[R6, #+0]
        ADDS     R6,R6,#+1
//   25         *mdst++ = colour[ (tmpsrc >> 1 ) & 0x01 ];
        LDR.N    R0,??img_extract_2
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        UBFX     R7,R4,#+1,#+1
        LDRB     R0,[R0, R7]
        STRB     R0,[R6, #+0]
        ADDS     R6,R6,#+1
//   26         *mdst++ = colour[ (tmpsrc >> 0 ) & 0x01 ];
        LDR.N    R0,??img_extract_2
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ANDS     R7,R4,#0x1
        LDRB     R0,[R0, R7]
        STRB     R0,[R6, #+0]
        ADDS     R6,R6,#+1
        B.N      ??img_extract_0
//   27     }
//   28     
//   29 
//   30 }
??img_extract_1:
        POP      {R4-R7}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
        DATA
??img_extract_2:
        DC32     `img_extract::colour`
          CFI EndBlock cfiBlock0

        SECTION `.data`:DATA:REORDER:NOROOT(1)
        DATA
`img_extract::colour`:
        DC8 0, 1

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
//   2 bytes in section .data
// 144 bytes in section .textrw
// 
// 144 bytes of CODE memory
//   2 bytes of DATA memory
//
//Errors: none
//Warnings: none
