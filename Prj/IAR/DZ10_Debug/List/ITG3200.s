///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      12/Jun/2017  17:32:50
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\@@@@@@@\Car\Drivers\IIC_Angle\ITG3200.c
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EWC864.tmp
//        (D:\@@@@@@@\Car\Drivers\IIC_Angle\ITG3200.c -D DEBUG -D
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
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\ITG3200.s
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

        EXTERN IIC_start
        EXTERN IIC_stop
        EXTERN read_byte
        EXTERN send_byte

        PUBLIC ITG3200_readbyte
        PUBLIC ITG3200_writebyte
        
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
        
// D:\@@@@@@@\Car\Drivers\IIC_Angle\ITG3200.c
//    1 #include "common.h"
//    2 #include "MMA8451.h"
//    3 #include "ITG3200.h"
//    4 #include "IIC.h"
//    5 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function ITG3200_readbyte
        THUMB
//    6 unsigned char ITG3200_readbyte(u8 address)
//    7 {
ITG3200_readbyte:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
//    8 unsigned char ret = 100;
        MOVS     R5,#+100
//    9 	IIC_start();		//启动
          CFI FunCall IIC_start
        BL       IIC_start
//   10 	send_byte(ITG3200_IIC_ADDR<<1);	//写入设备ID及写信号
        MOVS     R0,#+208
          CFI FunCall send_byte
        BL       send_byte
//   11 	send_byte(address);	//X地址
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall send_byte
        BL       send_byte
//   12 	IIC_start();		//重新发送开始
          CFI FunCall IIC_start
        BL       IIC_start
//   13 	send_byte((ITG3200_IIC_ADDR<<1)+1);	//写入设备ID及读信
        MOVS     R0,#+209
          CFI FunCall send_byte
        BL       send_byte
//   14 	ret = read_byte();	//读取一字节
          CFI FunCall read_byte
        BL       read_byte
        MOVS     R5,R0
//   15 	IIC_stop();
          CFI FunCall IIC_stop
        BL       IIC_stop
//   16 
//   17 	return ret;
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return
//   18 }
          CFI EndBlock cfiBlock0
//   19 
//   20 //写入

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function ITG3200_writebyte
        THUMB
//   21 void ITG3200_writebyte(unsigned char address, unsigned char thedata)
//   22 {
ITG3200_writebyte:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
//   23 	IIC_start();		//启动
          CFI FunCall IIC_start
        BL       IIC_start
//   24 	send_byte(ITG3200_IIC_ADDR<<1);	//写入设备ID及写信号
        MOVS     R0,#+208
          CFI FunCall send_byte
        BL       send_byte
//   25 	send_byte(address);	//X地址
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall send_byte
        BL       send_byte
//   26 	send_byte(thedata);	//写入设备ID及读信
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall send_byte
        BL       send_byte
//   27 	IIC_stop();
          CFI FunCall IIC_stop
        BL       IIC_stop
//   28 }
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock1

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//   29 
//   30 //初始化
//   31 //初始化为指定模式
//   32 /*void ITG3200_init()
//   33 {	
//   34   gpio_init (PORTE,1,GPO,0);
//   35   gpio_init (PORTE,2,GPO,0);
//   36 	MMA845x_writebyte(CTRL_REG1,ASLP_RATE_20MS+DATA_RATE_5MS);	
//   37 	delaymm();
//   38 	MMA845x_writebyte(XYZ_DATA_CFG_REG, FULL_SCALE_2G); //2G
//   39 	delaymm();
//   40 	MMA845x_writebyte(CTRL_REG1, ACTIVE_MASK);          //激活状态
//   41 	delaymm();
//   42 }*/
// 
// 88 bytes in section .text
// 
// 88 bytes of CODE memory
//
//Errors: none
//Warnings: none
