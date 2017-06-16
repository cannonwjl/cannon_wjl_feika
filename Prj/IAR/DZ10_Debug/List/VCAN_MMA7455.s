///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      11/May/2017  11:14:10
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\@@@@@@@\Car\Board\src\VCAN_MMA7455.c
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EW5AF2.tmp
//        (D:\@@@@@@@\Car\Board\src\VCAN_MMA7455.c -D DEBUG -D
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
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\VCAN_MMA7455.s
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
// D:\@@@@@@@\Car\Board\src\VCAN_MMA7455.c
//    1 ///*!
//    2 // *     COPYRIGHT NOTICE
//    3 // *     Copyright (c) 2013,ɽ��Ƽ�
//    4 // *     All rights reserved.
//    5 // *     �������ۣ�ɽ����̳ http://www.vcan123.com
//    6 // *
//    7 // *     ��ע�������⣬�����������ݰ�Ȩ����ɽ��Ƽ����У�δ����������������ҵ��;��
//    8 // *     �޸�����ʱ���뱣��ɽ��Ƽ��İ�Ȩ������
//    9 // *
//   10 // * @file       VCAN_MMA7455.c
//   11 // * @brief      MMA7455��������ʵ��
//   12 // * @author     ɽ��Ƽ�
//   13 // * @version    v5.0
//   14 // * @date       2013-07-9
//   15 // */
//   16 //
//   17 //#include "common.h"
//   18 //#include "MK60_port.h"
//   19 //#include "MK60_i2c.h"
//   20 //#include "VCAN_MMA7455.h"
//   21 //
//   22 ////�궨����õײ��I2C�ӿ�
//   23 //#define MMA7455_OPEN(baud)      i2c_init(MMA7455_DEVICE,baud)
//   24 //#define MMA7455_WR(reg,value)   i2c_write_reg(MMA7455_DEVICE,MMA7455_ADRESS,reg,value)  //mma7455 д�Ĵ���
//   25 //#define MMA7455_RD(reg)         i2c_read_reg(MMA7455_DEVICE,MMA7455_ADRESS,reg)         //mma7455 ���Ĵ���
//   26 //
//   27 ///*!
//   28 // *  @brief      MMA7455��ʼ�������� 2g ���̲���ģʽ
//   29 // *  @since      v5.0
//   30 // *  Sample usage:            mma7455_init();    //��ʼ�� MMA7455
//   31 // */
//   32 //void mma7455_init(void)
//   33 //{
//   34 //    MMA7455_OPEN(400 * 1000);           //��ʼ��mma7455�ӿڣ����ò����� 400k
//   35 //
//   36 //    /*MMA���� 2g ���̲���ģʽ*/
//   37 //    MMA7455_WR(MMA7455_MCTL, 0x05);
//   38 //
//   39 //    /*DRDY����λ,�ȴ��������*/
//   40 //    while(!(MMA7455_RD(MMA7455_STATUS) & 0x01));
//   41 //}
//   42 //
//   43 ///*!
//   44 // *  @brief      MMA7455д�Ĵ���
//   45 // *  @param      reg         �Ĵ���
//   46 // *  @param      dat         ��Ҫд������ݵļĴ�����ַ
//   47 // *  @since      v5.0
//   48 // *  Sample usage:       mma7455_write_reg(MMA7455_XOFFL,0);   // д�Ĵ��� MMA7455_XOFFL Ϊ 0
//   49 // */
//   50 //void mma7455_write_reg(uint8 reg, uint8 Data)
//   51 //{
//   52 //    MMA7455_WR(reg, Data);
//   53 //}
//   54 //
//   55 ///*!
//   56 // *  @brief      MMA7455���Ĵ���
//   57 // *  @param      reg         �Ĵ���
//   58 // *  @param      dat         ��Ҫ��ȡ���ݵļĴ�����ַ
//   59 // *  @since      v5.0
//   60 // *  Sample usage:       uint8 data = mma7455_read_reg(MMA7455_XOFFL);    // ���Ĵ��� MMA7455_XOFFL
//   61 // */
//   62 //uint8 mma7455_read_reg(uint8 reg)
//   63 //{
//   64 //    return MMA7455_RD(reg);
//   65 //}
//   66 //
//   67 //
// 
//
// 
//
//
//Errors: none
//Warnings: none
