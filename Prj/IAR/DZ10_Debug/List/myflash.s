///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      12/Jun/2017  17:32:56
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\@@@@@@@\Car\Drivers\myflash\myflash.c
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EWE090.tmp
//        (D:\@@@@@@@\Car\Drivers\myflash\myflash.c -D DEBUG -D
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
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\myflash.s
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

        EXTERN flash_erase_sector
        EXTERN flash_write

        PUBLIC flash_read_string
        PUBLIC flash_write_string
        
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
        
// D:\@@@@@@@\Car\Drivers\myflash\myflash.c
//    1 /**************************************************************************
//    2 *	
//    3 **************************************************************************/
//    4 
//    5 #include "myflash.h"
//    6 
//    7 /*************************************************************************
//    8 *	函数名:flash_read_string()
//    9 *	功能:flash读取
//   10 *	*data输出数据buff   长度30
//   11 *	plan方案(1~6)
//   12 *	作者   郭鑫书
//   13 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function flash_read_string
          CFI NoCalls
        THUMB
//   14 void flash_read_string(uint32 * data,uint16 plan)
//   15 {
flash_read_string:
        PUSH     {R4}
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+4
//   16     uint16 i = 0;
        MOVS     R2,#+0
//   17     for(i=0;i<10;i++)                                    //读取公共变量
        MOVS     R3,#+0
        MOVS     R2,R3
??flash_read_string_0:
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        CMP      R2,#+10
        BGE.N    ??flash_read_string_1
//   18     {
//   19         data[i] = flash_read(SECTOR_COM,i*4,uint16);     //读取4字节
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        LSLS     R3,R2,#+2
        ADDS     R3,R3,#+313344
        LDRH     R3,[R3, #+0]
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        STR      R3,[R0, R2, LSL #+2]
//   20 	}
        ADDS     R2,R2,#+1
        B.N      ??flash_read_string_0
//   21 		switch (plan)
??flash_read_string_1:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+1
        BEQ.N    ??flash_read_string_2
        BCC.N    ??flash_read_string_3
        CMP      R1,#+3
        BEQ.N    ??flash_read_string_4
        BCC.N    ??flash_read_string_5
        CMP      R1,#+5
        BEQ.N    ??flash_read_string_6
        BCC.N    ??flash_read_string_7
        CMP      R1,#+6
        BEQ.N    ??flash_read_string_8
        B.N      ??flash_read_string_3
//   22 		{
//   23 		case 1:
//   24  		{
//   25   			for(i=0;i<20;i++)                                    //读取计划1
??flash_read_string_2:
        MOVS     R3,#+0
        MOVS     R2,R3
??flash_read_string_9:
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        CMP      R2,#+20
        BGE.N    ??flash_read_string_10
//   26  			{
//   27  				data[i+10] = flash_read(SECTOR_PLAN1,i*4,uint16);     //读取4字节
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        LSLS     R3,R2,#+2
        ADDS     R3,R3,#+307200
        LDRH     R3,[R3, #+0]
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        ADD      R4,R0,R2, LSL #+2
        STR      R3,[R4, #+40]
//   28 			}		
        ADDS     R2,R2,#+1
        B.N      ??flash_read_string_9
//   29 		}break;
??flash_read_string_10:
        B.N      ??flash_read_string_11
//   30 		case 2:
//   31 		{
//   32 			for(i=0;i<20;i++)                                    //读取计划2
??flash_read_string_5:
        MOVS     R3,#+0
        MOVS     R2,R3
??flash_read_string_12:
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        CMP      R2,#+20
        BGE.N    ??flash_read_string_13
//   33 			{
//   34 				data[i+10] = flash_read(SECTOR_PLAN2,i*4,uint16);     //读取4字节
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        LSLS     R3,R2,#+2
        ADDS     R3,R3,#+309248
        LDRH     R3,[R3, #+0]
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        ADD      R4,R0,R2, LSL #+2
        STR      R3,[R4, #+40]
//   35 			}			
        ADDS     R2,R2,#+1
        B.N      ??flash_read_string_12
//   36 		}break;
??flash_read_string_13:
        B.N      ??flash_read_string_11
//   37 		case 3:
//   38 		{
//   39 			for(i=0;i<20;i++)                                    //读取计划3
??flash_read_string_4:
        MOVS     R3,#+0
        MOVS     R2,R3
??flash_read_string_14:
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        CMP      R2,#+20
        BGE.N    ??flash_read_string_15
//   40 			{
//   41 				data[i+10] = flash_read(SECTOR_PLAN3,i*4,uint16);     //读取4字节
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        LSLS     R3,R2,#+2
        ADDS     R3,R3,#+311296
        LDRH     R3,[R3, #+0]
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        ADD      R4,R0,R2, LSL #+2
        STR      R3,[R4, #+40]
//   42 			}			
        ADDS     R2,R2,#+1
        B.N      ??flash_read_string_14
//   43 		}break;
??flash_read_string_15:
        B.N      ??flash_read_string_11
//   44 		case 4:
//   45 		{
//   46 			for(i=0;i<20;i++)                                    //读取计划4
??flash_read_string_7:
        MOVS     R3,#+0
        MOVS     R2,R3
??flash_read_string_16:
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        CMP      R2,#+20
        BGE.N    ??flash_read_string_17
//   47 			{
//   48 				data[i+10] = flash_read(SECTOR_PLAN4,i*4,uint16);     //读取4字节
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        LSLS     R3,R2,#+2
        ADDS     R3,R3,#+315392
        LDRH     R3,[R3, #+0]
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        ADD      R4,R0,R2, LSL #+2
        STR      R3,[R4, #+40]
//   49 			}			
        ADDS     R2,R2,#+1
        B.N      ??flash_read_string_16
//   50 		}break;
??flash_read_string_17:
        B.N      ??flash_read_string_11
//   51 		case 5:
//   52 		{
//   53 			for(i=0;i<20;i++)                                    //读取计划5
??flash_read_string_6:
        MOVS     R3,#+0
        MOVS     R2,R3
??flash_read_string_18:
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        CMP      R2,#+20
        BGE.N    ??flash_read_string_19
//   54 			{
//   55 				data[i+10] = flash_read(SECTOR_PLAN5,i*4,uint16);     //读取4字节
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        LSLS     R3,R2,#+2
        ADDS     R3,R3,#+317440
        LDRH     R3,[R3, #+0]
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        ADD      R4,R0,R2, LSL #+2
        STR      R3,[R4, #+40]
//   56 			}			
        ADDS     R2,R2,#+1
        B.N      ??flash_read_string_18
//   57 		}break;
??flash_read_string_19:
        B.N      ??flash_read_string_11
//   58 		case 6:
//   59 		{
//   60 			for(i=0;i<20;i++)                                    //读取计划6
??flash_read_string_8:
        MOVS     R3,#+0
        MOVS     R2,R3
??flash_read_string_20:
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        CMP      R2,#+20
        BGE.N    ??flash_read_string_21
//   61 			{
//   62 				data[i+10] = flash_read(SECTOR_PLAN6,i*4,uint16);     //读取4字节
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        LSLS     R3,R2,#+2
        ADDS     R3,R3,#+319488
        LDRH     R3,[R3, #+0]
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        ADD      R4,R0,R2, LSL #+2
        STR      R3,[R4, #+40]
//   63 			}			
        ADDS     R2,R2,#+1
        B.N      ??flash_read_string_20
//   64 		}break;
??flash_read_string_21:
        B.N      ??flash_read_string_11
//   65         default:break;
//   66 	}
//   67 }
??flash_read_string_3:
??flash_read_string_11:
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//   68 
//   69 
//   70 /*************************************************************************
//   71 *	函数名:flash_write_string()
//   72 *	功能:flash写入
//   73 *	*data输入数据buff
//   74 *	plan方案(1~6)
//   75 *	作者   郭鑫书
//   76 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function flash_write_string
        THUMB
//   77 void flash_write_string(uint32 * data,uint16 plan)
//   78 {
flash_write_string:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
//   79     uint16 i = 0;
        MOVS     R6,#+0
//   80 	flash_erase_sector(SECTOR_COM); 
        MOVS     R0,#+153
          CFI FunCall flash_erase_sector
        BL       flash_erase_sector
//   81 	for(i=0;i<10;i++)
        MOVS     R0,#+0
        MOVS     R6,R0
??flash_write_string_0:
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+10
        BGE.N    ??flash_write_string_1
//   82 	{
//   83 		flash_write(SECTOR_COM,i*4,data[i]);
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        LDR      R2,[R4, R6, LSL #+2]
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        LSLS     R1,R6,#+2
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+153
          CFI FunCall flash_write
        BL       flash_write
//   84 	}
        ADDS     R6,R6,#+1
        B.N      ??flash_write_string_0
//   85 	switch (plan)
??flash_write_string_1:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+1
        BEQ.N    ??flash_write_string_2
        BCC.W    ??flash_write_string_3
        CMP      R5,#+3
        BEQ.N    ??flash_write_string_4
        BCC.N    ??flash_write_string_5
        CMP      R5,#+5
        BEQ.N    ??flash_write_string_6
        BCC.N    ??flash_write_string_7
        CMP      R5,#+6
        BEQ.N    ??flash_write_string_8
        B.N      ??flash_write_string_3
//   86 	{
//   87 		case 1:
//   88 		{
//   89 			flash_erase_sector(SECTOR_PLAN1);  //擦除PLAN1扇区
??flash_write_string_2:
        MOVS     R0,#+150
          CFI FunCall flash_erase_sector
        BL       flash_erase_sector
//   90 			for(i=0;i<20;i++)                                    //存储计划1
        MOVS     R0,#+0
        MOVS     R6,R0
??flash_write_string_9:
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+20
        BGE.N    ??flash_write_string_10
//   91 			{
//   92 				flash_write(SECTOR_PLAN1,i*4,data[i+10]);         //存储4字节
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        ADD      R0,R4,R6, LSL #+2
        LDR      R2,[R0, #+40]
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        LSLS     R1,R6,#+2
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+150
          CFI FunCall flash_write
        BL       flash_write
//   93 			}		
        ADDS     R6,R6,#+1
        B.N      ??flash_write_string_9
//   94 		}break;
??flash_write_string_10:
        B.N      ??flash_write_string_11
//   95 		case 2:
//   96 		{
//   97 			flash_erase_sector(SECTOR_PLAN2);
??flash_write_string_5:
        MOVS     R0,#+151
          CFI FunCall flash_erase_sector
        BL       flash_erase_sector
//   98 			for(i=0;i<20;i++)                                    //存储计划2
        MOVS     R0,#+0
        MOVS     R6,R0
??flash_write_string_12:
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+20
        BGE.N    ??flash_write_string_13
//   99 			{
//  100 				flash_write(SECTOR_PLAN2,i*4,data[i+10]);       //存储4字节
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        ADD      R0,R4,R6, LSL #+2
        LDR      R2,[R0, #+40]
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        LSLS     R1,R6,#+2
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+151
          CFI FunCall flash_write
        BL       flash_write
//  101 			}			
        ADDS     R6,R6,#+1
        B.N      ??flash_write_string_12
//  102 		}break;
??flash_write_string_13:
        B.N      ??flash_write_string_11
//  103 		case 3:
//  104 		{
//  105 			flash_erase_sector(SECTOR_PLAN3);
??flash_write_string_4:
        MOVS     R0,#+152
          CFI FunCall flash_erase_sector
        BL       flash_erase_sector
//  106 			for(i=0;i<20;i++)                                    //存储计划3
        MOVS     R0,#+0
        MOVS     R6,R0
??flash_write_string_14:
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+20
        BGE.N    ??flash_write_string_15
//  107 			{
//  108 				flash_write(SECTOR_PLAN3,i*4,data[i+10]);       //存储4字节
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        ADD      R0,R4,R6, LSL #+2
        LDR      R2,[R0, #+40]
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        LSLS     R1,R6,#+2
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+152
          CFI FunCall flash_write
        BL       flash_write
//  109 			}			
        ADDS     R6,R6,#+1
        B.N      ??flash_write_string_14
//  110 		}break;
??flash_write_string_15:
        B.N      ??flash_write_string_11
//  111 		case 4:
//  112 		{
//  113 			flash_erase_sector(SECTOR_PLAN4);
??flash_write_string_7:
        MOVS     R0,#+154
          CFI FunCall flash_erase_sector
        BL       flash_erase_sector
//  114 			for(i=0;i<20;i++)                                    //存储计划4
        MOVS     R0,#+0
        MOVS     R6,R0
??flash_write_string_16:
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+20
        BGE.N    ??flash_write_string_17
//  115 			{
//  116 				flash_write(SECTOR_PLAN4,i*4,data[i+10]);       //存储4字节
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        ADD      R0,R4,R6, LSL #+2
        LDR      R2,[R0, #+40]
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        LSLS     R1,R6,#+2
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+154
          CFI FunCall flash_write
        BL       flash_write
//  117 			}			
        ADDS     R6,R6,#+1
        B.N      ??flash_write_string_16
//  118 		}break;
??flash_write_string_17:
        B.N      ??flash_write_string_11
//  119 		case 5:
//  120 		{
//  121 			flash_erase_sector(SECTOR_PLAN5);
??flash_write_string_6:
        MOVS     R0,#+155
          CFI FunCall flash_erase_sector
        BL       flash_erase_sector
//  122 			for(i=0;i<20;i++)                                    //存储计划5
        MOVS     R0,#+0
        MOVS     R6,R0
??flash_write_string_18:
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+20
        BGE.N    ??flash_write_string_19
//  123 			{
//  124 				flash_write(SECTOR_PLAN5,i*4,data[i+10]);       //存储4字节
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        ADD      R0,R4,R6, LSL #+2
        LDR      R2,[R0, #+40]
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        LSLS     R1,R6,#+2
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+155
          CFI FunCall flash_write
        BL       flash_write
//  125 			}			
        ADDS     R6,R6,#+1
        B.N      ??flash_write_string_18
//  126 		}break;
??flash_write_string_19:
        B.N      ??flash_write_string_11
//  127 		case 6:
//  128 		{
//  129 			flash_erase_sector(SECTOR_PLAN6);
??flash_write_string_8:
        MOVS     R0,#+156
          CFI FunCall flash_erase_sector
        BL       flash_erase_sector
//  130 			for(i=0;i<20;i++)                                    //存储计划6
        MOVS     R0,#+0
        MOVS     R6,R0
??flash_write_string_20:
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+20
        BGE.N    ??flash_write_string_21
//  131 			{
//  132 				flash_write(SECTOR_PLAN6,i*4,data[i+10]);       //存储4字节
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        ADD      R0,R4,R6, LSL #+2
        LDR      R2,[R0, #+40]
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        LSLS     R1,R6,#+2
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+156
          CFI FunCall flash_write
        BL       flash_write
//  133 			}			
        ADDS     R6,R6,#+1
        B.N      ??flash_write_string_20
//  134 		}break;
??flash_write_string_21:
        B.N      ??flash_write_string_11
//  135         default:break;
//  136 	}
//  137 }
??flash_write_string_3:
??flash_write_string_11:
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock1

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  138 
//  139 
// 
// 610 bytes in section .text
// 
// 610 bytes of CODE memory
//
//Errors: none
//Warnings: none
