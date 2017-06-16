///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      11/May/2017  11:14:10
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\@@@@@@@\Car\Board\src\VCAN_key_event.c
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EW5A05.tmp
//        (D:\@@@@@@@\Car\Board\src\VCAN_key_event.c -D DEBUG -D
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
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\VCAN_key_event.s
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
// D:\@@@@@@@\Car\Board\src\VCAN_key_event.c
//    1 ///*!
//    2 // *     COPYRIGHT NOTICE
//    3 // *     Copyright (c) 2013,山外科技
//    4 // *     All rights reserved.
//    5 // *     技术讨论：山外论坛 http://www.vcan123.com
//    6 // *
//    7 // *     除注明出处外，以下所有内容版权均属山外科技所有，未经允许，不得用于商业用途，
//    8 // *     修改内容时必须保留山外科技的版权声明。
//    9 // *
//   10 // * @file       VCAN_key_event.h
//   11 // * @brief      KEY 事件函数实现
//   12 // * @author     山外科技
//   13 // * @version    v5.0
//   14 // * @date       2014-01-04
//   15 // */
//   16 //
//   17 //#include "VCAN_key_event.h"
//   18 //#include "VCAN_UI_VAR.h"
//   19 ////#include "NRF24L0.h"
//   20 ////#include "NRF24L0_MSG.h"
//   21 //
//   22 //
//   23 //void key_event_init()
//   24 //{
//   25 //    //初始化 全部 按键
//   26 //    key_init(KEY_MAX);
//   27 //
//   28 //    //初始化临时变量
//   29 //    var_init();
//   30 //
//   31 //    //同步全部数据并显示
//   32 //    var_syn(VAR_MAX);       //同步全部 ,必须先同步再显示全部，因为有可能同步失败。
//   33 //    var_display(VAR_MAX);   //显示全部
//   34 //}
//   35 //
//   36 //void deal_key_event()
//   37 //{
//   38 //    KEY_MSG_t keymsg;
//   39 //
//   40 //    while(get_key_msg(& keymsg))     //获得按键就进行处理
//   41 //    {
//   42 //        if(keymsg.status == KEY_DOWN)
//   43 //        {
//   44 //            switch(keymsg.key)
//   45 //            {
//   46 //            case KEY_U:
//   47 //                var_value(VAR_ADD);
//   48 //                break;
//   49 //
//   50 //            case KEY_D:
//   51 //                var_value(VAR_SUB);
//   52 //                break;
//   53 //
//   54 //            case KEY_L:
//   55 //                var_select(VAR_PREV);
//   56 //                break;
//   57 //
//   58 //            case KEY_R:
//   59 //                var_select(VAR_NEXT);
//   60 //                break;
//   61 //
//   62 //            case KEY_B:
//   63 //                var_ok();
//   64 //                break;
//   65 //
//   66 //            case KEY_A:
//   67 //                val_cancel();
//   68 //                break;
//   69 //
//   70 //            case KEY_START:
//   71 //                save_var(CAR_CTRL,CAR_START);
//   72 //                var_syn(CAR_CTRL);
//   73 //                var_display(CAR_CTRL);
//   74 //                break;
//   75 //            case KEY_STOP:
//   76 //                save_var(CAR_CTRL,CAR_STOP);
//   77 //                var_syn(CAR_CTRL);
//   78 //                var_display(CAR_CTRL);
//   79 //                break;
//   80 //
//   81 //            default:
//   82 //                break;
//   83 //            }
//   84 //        }
//   85 //        else if(keymsg.status == KEY_HOLD)
//   86 //        {
//   87 //            switch(keymsg.key)
//   88 //            {
//   89 //            case KEY_U:
//   90 //                var_value(VAR_ADD_HOLD);
//   91 //                break;
//   92 //
//   93 //            case KEY_D:
//   94 //                var_value(VAR_SUB_HOLD);
//   95 //                break;
//   96 //
//   97 //            case KEY_L:
//   98 //                var_select(VAR_PREV_HOLD);
//   99 //                break;
//  100 //
//  101 //            case KEY_R:
//  102 //                var_select(VAR_NEXT_HOLD);
//  103 //                break;
//  104 //
//  105 //            case KEY_B:                //长按 OK 键 同步全部数据并显示
//  106 //                var_syn(VAR_MAX);       //同步全部 ,必须先同步再显示全部，因为有可能同步失败。
//  107 //                var_display(VAR_MAX);   //显示全部
//  108 //                break;
//  109 //
//  110 //            case KEY_START:
//  111 //                save_var(CAR_CTRL,CAR_START);
//  112 //                while(var_syn(CAR_CTRL)==0);
//  113 //                var_display(CAR_CTRL);
//  114 //                break;
//  115 //
//  116 //            case KEY_STOP:
//  117 //                save_var(CAR_CTRL,CAR_STOP);
//  118 //                while(var_syn(CAR_CTRL)==0);
//  119 //                var_display(CAR_CTRL);
//  120 //
//  121 //            default:            //不需要处理 cancel
//  122 //                break;
//  123 //            }
//  124 //        }
//  125 //        else
//  126 //        {
//  127 //            //KEY_UP ,不进行处理
//  128 //        }
//  129 //    }
//  130 //}
//  131 //
//  132 //
//  133 //
//  134 //
//  135 //
// 
//
// 
//
//
//Errors: none
//Warnings: none
