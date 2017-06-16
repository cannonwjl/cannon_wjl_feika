///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      11/May/2017  11:14:09
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\@@@@@@@\Car\Board\src\VCAN_computer.c
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EW5918.tmp
//        (D:\@@@@@@@\Car\Board\src\VCAN_computer.c -D DEBUG -D
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
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\VCAN_computer.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1


        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// D:\@@@@@@@\Car\Board\src\VCAN_computer.c
//    1 ///*!
//    2 // *     COPYRIGHT NOTICE
//    3 // *     Copyright (c) 2015,山外科技
//    4 // *     All rights reserved.
//    5 // *     技术讨论：山外论坛 http://www.vcan123.com
//    6 // *
//    7 // *     除注明出处外，以下所有内容版权均属山外科技所有，未经允许，不得用于商业用途，
//    8 // *     修改内容时必须保留山外科技的版权声明。
//    9 // *
//   10 // * @file       VCAN_computer.c
//   11 // * @brief      山外多功能调试助手上位机驱动代码
//   12 // * @author     山外科技
//   13 // * @version    v5.2.2
//   14 // * @date       2015-03-24
//   15 // */
//   16 //
//   17 //
//   18 ///*
//   19 // * 包含头文件
//   20 // */
//   21 //#include "common.h"
//   22 //#include "MK60_uart.h"
//   23 //#include "VCAN_computer.h"
//   24 //
//   25 //
//   26 //
//   27 ///*!
//   28 // *  @brief      山外多功能调试助手上位机，摄像头显示函数
//   29 // *  @param      imgaddr    图像起始地址
//   30 // *  @param      imgsize    图像占用空间的大小
//   31 // *  @since      v5.0
//   32 //*  Sample usage:
//   33 //             具体用法参考这帖子:
//   34 //            【山外摄像头】鹰眼上位机例程和微焦效果 - 智能车资料区
//   35 //             http://vcan123.com/forum.php?mod=viewthread&tid=6242&ctid=27
//   36 // */
//   37 //void vcan_sendimg(void *imgaddr, uint32_t imgsize)
//   38 //{
//   39 //#define CMD_IMG     1
//   40 //    uint8_t cmdf[2] = {CMD_IMG, ~CMD_IMG};    //山外上位机 使用的命令
//   41 //    uint8_t cmdr[2] = {~CMD_IMG, CMD_IMG};    //山外上位机 使用的命令
//   42 //
//   43 //    uart_putbuff(VCAN_PORT, cmdf, sizeof(cmdf));    //先发送命令
//   44 //
//   45 //    uart_putbuff(VCAN_PORT, (uint8_t *)imgaddr, imgsize); //再发送图像
//   46 //
//   47 //    uart_putbuff(VCAN_PORT, cmdr, sizeof(cmdr));    //先发送命令
//   48 //}
//   49 //
//   50 //
//   51 ///*!
//   52 // *  @brief      山外多功能调试助手上位机，线性CCD显示函数
//   53 // *  @param      ccdaddr    CCD图像起始地址
//   54 // *  @param      ccdsize    CCD图像占用空间的大小
//   55 // *  @since      v5.0
//   56 //*  Sample usage:
//   57 //             具体用法参考这帖子:
//   58 //            【山外线性CCD】上位机显示例程和超广角采集效果 - 智能车资料区
//   59 //             http://vcan123.com/forum.php?mod=viewthread&tid=6340&ctid=27
//   60 // */
//   61 //void vcan_sendccd(void *ccdaddr, uint32_t ccdsize)
//   62 //{
//   63 //#define CMD_CCD     2
//   64 //    uint8_t cmdf[2] = {CMD_CCD, ~CMD_CCD};    //开头命令
//   65 //    uint8_t cmdr[2] = {~CMD_CCD, CMD_CCD};    //结尾命令
//   66 //
//   67 //    uart_putbuff(VCAN_PORT, cmdf, sizeof(cmdf));    //先发送命令
//   68 //
//   69 //    uart_putbuff(VCAN_PORT, (uint8_t *)ccdaddr, ccdsize); //再发送图像
//   70 //
//   71 //    uart_putbuff(VCAN_PORT, cmdr, sizeof(cmdr));    //再发送命令
//   72 //}
//   73 //
//   74 //
//   75 ///*!
//   76 // *  @brief      山外多功能调试助手上位机，虚拟示波器显示函数
//   77 // *  @param      wareaddr    波形数组起始地址
//   78 // *  @param      waresize    波形数组占用空间的大小
//   79 // *  @since      v5.0
//   80 //*  Sample usage:
//   81 //             具体用法参考这帖子:
//   82 //            【山外资料】陀螺仪和加速度 上位机显示例程 - 智能车资料区
//   83 //             http://vcan123.com/forum.php?mod=viewthread&tid=6253&ctid=27
//   84 // */
//   85 //void vcan_sendware(void *wareaddr, uint32_t waresize)
//   86 //{
//   87 //#define CMD_WARE     3
//   88 //    uint8_t cmdf[2] = {CMD_WARE, ~CMD_WARE};    //串口调试 使用的前命令
//   89 //    uint8_t cmdr[2] = {~CMD_WARE, CMD_WARE};    //串口调试 使用的后命令
//   90 //
//   91 //    uart_putbuff(VCAN_PORT, cmdf, sizeof(cmdf));    //先发送前命令
//   92 //    uart_putbuff(VCAN_PORT, (uint8_t *)wareaddr, waresize);    //发送数据
//   93 //    uart_putbuff(VCAN_PORT, cmdr, sizeof(cmdr));    //发送后命令
//   94 //
//   95 //}
// 
//
// 
//
//
//Errors: none
//Warnings: none
