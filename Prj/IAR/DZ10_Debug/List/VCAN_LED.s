///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      11/May/2017  11:14:10
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\@@@@@@@\Car\Board\src\VCAN_LED.C
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EW5A83.tmp
//        (D:\@@@@@@@\Car\Board\src\VCAN_LED.C -D DEBUG -D
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
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\VCAN_LED.s
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
// D:\@@@@@@@\Car\Board\src\VCAN_LED.C
//    1 // /*!
//    2 //  *     COPYRIGHT NOTICE
//    3 //  *     Copyright (c) 2014,ɽ��Ƽ�
//    4 //  *     All rights reserved.
//    5 //  *     �������ۣ�ɽ����̳ http://www.vcan123.com
//    6 //  *
//    7 //  *     ��ע�������⣬�����������ݰ�Ȩ����ɽ��Ƽ����У�δ����������������ҵ��;��
//    8 //  *     �޸�����ʱ���뱣��ɽ��Ƽ��İ�Ȩ������
//    9 //  *
//   10 //  * @file       VCAN_LED.c
//   11 //  * @brief      led��������ʵ��
//   12 //  * @author     ɽ��Ƽ�
//   13 //  * @version    v5.2
//   14 //  * @date       2014-10-4
//   15 //  */
//   16 //
//   17 ///*
//   18 // * ����ͷ�ļ�
//   19 // */
//   20 //#include "common.h"
//   21 //#include "MK60_port.h"
//   22 //#include "MK60_gpio.h"
//   23 //#include "VCAN_LED.H"
//   24 //
//   25 //
//   26 ///*
//   27 // * ����LED ��Ŷ�Ӧ�Ĺܽ�
//   28 // */
//   29 //PTXn_e LED_PTxn[LED_MAX] = {PTB20,PTB21,PTB22,PTB23};
//   30 //
//   31 //
//   32 ///*!
//   33 // *  @brief      ��ʼ��LED�˿�
//   34 // *  @param      LED_e    LED���
//   35 // *  @since      v5.0
//   36 // *  Sample usage:       led_init (LED0);    //��ʼ�� LED0
//   37 // */
//   38 //void    led_init(LED_e ledn)
//   39 //{
//   40 //    if(ledn < LED_MAX)
//   41 //    {
//   42 //        gpio_init(LED_PTxn[ledn],GPO,LED_OFF);
//   43 //    }
//   44 //    else
//   45 //    {
//   46 //        ledn = LED_MAX;
//   47 //        while(ledn--)
//   48 //        {
//   49 //            gpio_init(LED_PTxn[ledn],GPO,LED_OFF);
//   50 //        }
//   51 //
//   52 //    }
//   53 //}
//   54 //
//   55 //
//   56 //
//   57 ///*!
//   58 // *  @brief      ����LED������
//   59 // *  @param      LED_e           LED��ţ�LED0��LED1��LED2��LED3��
//   60 // *  @param      LED_status      LED����״̬��LED_ON��LED_OFF��
//   61 // *  @since      v5.2
//   62 // *  Sample usage:       led (LED0,LED_ON);    //���� LED0
//   63 // */
//   64 //void    led(LED_e ledn,LED_status status)
//   65 //{
//   66 //    if(ledn < LED_MAX)
//   67 //    {
//   68 //        gpio_set(LED_PTxn[ledn],status);
//   69 //    }
//   70 //    else
//   71 //    {
//   72 //        ledn = LED_MAX;
//   73 //        while(ledn--)
//   74 //        {
//   75 //            gpio_set(LED_PTxn[ledn],status);
//   76 //        }
//   77 //    }
//   78 //}
//   79 //
//   80 ///*!
//   81 // *  @brief      ����LED������ת
//   82 // *  @param      LED_e           LED��ţ�LED0��LED1��LED2��LED3��
//   83 // *  @since      v5.2
//   84 // *  Sample usage:       led_turn (LED0);    // LED0������ת
//   85 // */
//   86 //void led_turn(LED_e ledn)
//   87 //{
//   88 //    if(ledn < LED_MAX)
//   89 //    {
//   90 //        gpio_turn(LED_PTxn[ledn]);
//   91 //    }
//   92 //    else
//   93 //    {
//   94 //        ledn = LED_MAX;
//   95 //        while(ledn--)
//   96 //        {
//   97 //            gpio_turn(LED_PTxn[ledn]);
//   98 //        }
//   99 //    }
//  100 //}
// 
//
// 
//
//
//Errors: none
//Warnings: none
