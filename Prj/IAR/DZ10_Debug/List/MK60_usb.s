///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      11/May/2017  11:14:04
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\@@@@@@@\Car\Chip\src\MK60_usb.c
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EW44E4.tmp
//        (D:\@@@@@@@\Car\Chip\src\MK60_usb.c -D DEBUG -D
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
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\MK60_usb.s
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
// D:\@@@@@@@\Car\Chip\src\MK60_usb.c
//    1 ///*!
//    2 // *     COPYRIGHT NOTICE
//    3 // *     Copyright (c) 2013,山外科技
//    4 // *     All rights reserved.
//    5 // *     技术讨论：山外论坛 http://www.vcan123.com
//    6 // *
//    7 // *     除注明出处外，以下所有内容版权均属山外科技所有，未经允许，不得用于商业用途，
//    8 // *     修改内容时必须保留山外科技的版权声明。
//    9 // *
//   10 // * @file       MK60_usb.c
//   11 // * @brief      USB 代码库(目前 仅 有 虚拟 串口 )
//   12 // * @author     山外科技
//   13 // * @version    v5.0
//   14 // * @date       2013-09-26
//   15 // * @note       本例程 移植 飞思卡尔公司 提供的 K60 参考代码
//   16 // */
//   17 //
//   18 //
//   19 //#include "common.h"
//   20 //#include "usb.h"
//   21 //#include "MK60_usb.h"
//   22 //
//   23 //
//   24 ///*!
//   25 // *  @brief      USB模块 初始化
//   26 // *  @since      v5.0
//   27 // */
//   28 //void usb_init(void)
//   29 //{
//   30 //    /* 软件配置 */
//   31 //    Setup_Pkt = (tUSB_Setup *)BufferPointer[bEP0OUT_ODD];
//   32 //    gu8USB_State = uPOWER;                          //标记状态为上电状态
//   33 //    /* MPU 配置 */
//   34 //    MPU_CESR = 0;                                   // MPU is disable. All accesses from all bus masters are allowed
//   35 //
//   36 //    /* SIM 配置 */
//   37 //#ifdef USB_CLOCK_CLKIN
//   38 //    FLAG_SET(SIM_SCGC5_PORTE_SHIFT, SIM_SCGC5);
//   39 //    PORTE_PCR26 = (0 | PORT_PCR_MUX(7));            // Enabling PTE26 as CLK input
//   40 //
//   41 //#endif
//   42 //
//   43 //
//   44 //#if defined(MK60DZ10)
//   45 //#ifdef USB_CLOCK_PLL
//   46 //    FLAG_SET(SIM_SOPT2_PLLFLLSEL_SHIFT, SIM_SOPT2); // Select PLL output
//   47 //#endif
//   48 //
//   49 //
//   50 //#ifndef USB_CLOCK_CLKIN
//   51 //    FLAG_SET(SIM_SOPT2_USBSRC_SHIFT, SIM_SOPT2);    // PLL/FLL selected as CLK source
//   52 //#endif
//   53 //
//   54 //    SIM_CLKDIV2 = ((SIM_CLKDIV2 & ~( SIM_CLKDIV2_USBDIV_MASK | SIM_CLKDIV2_USBFRAC_MASK ))
//   55 //                   | SIM_CLKDIV2_USBDIV(USB_CLK_DIV)                    //USB 分频因子
//   56 //                   | (USB_CLK_FRAC << SIM_CLKDIV2_USBFRAC_SHIFT)        //USB 倍频因子
//   57 //                   //USB clk = PLL × [ (USBFRAC+1) / (USBDIV+1) ]
//   58 //                  );
//   59 //    SIM_SCGC4 |= SIM_SCGC4_USBOTG_MASK;             //USB Clock Gating
//   60 //                                                    //开启USB模块的时钟源
//   61 //#elif defined(MK60F15)
//   62 //#ifdef USB_CLOCK_PLL
//   63 //    SIM_SOPT2 |=(0
//   64 //                | SIM_SOPT2_PLLFLLSEL(1)       /** PLL0 reference */   
//   65 //                | SIM_SOPT2_USBFSRC(0)         /** MCGPLLCLK as CLKC source */
//   66 //                | SIM_SOPT2_USBF_CLKSEL_MASK   /** USB fractional divider like USB reference clock */  
//   67 //                );
//   68 //
//   69 //#endif
//   70 //
//   71 //
//   72 //#ifndef USB_CLOCK_CLKIN
//   73 //    FLAG_SET(SIM_SOPT2_USBHSRC_SHIFT, SIM_SOPT2);    // PLL/FLL selected as CLK source
//   74 //#endif
//   75 //
//   76 //    SIM_CLKDIV2 = ((SIM_CLKDIV2 & ~( SIM_CLKDIV2_USBFSDIV_MASK | SIM_CLKDIV2_USBFSFRAC_MASK ))
//   77 //                   | SIM_CLKDIV2_USBFSDIV(USB_CLK_DIV)                  //USB 分频因子
//   78 //                   | (USB_CLK_FRAC << SIM_CLKDIV2_USBFSFRAC_SHIFT)      //USB 倍频因子
//   79 //                   //USB clk = PLL × [ (USBFRAC+1) / (USBDIV+1) ]
//   80 //                  );
//   81 //
//   82 //    //SIM_SCGC6 |= SIM_SCGC6_USB2OTG_MASK;
//   83 //    SIM_SCGC4 |= SIM_SCGC4_USBFS_MASK;             //USB Clock Gating
//   84 //                                                    //开启USB模块的时钟源
//   85 //#endif
//   86 //
//   87 //
//   88 //    /* NVIC模块配置 */
//   89 //    set_vector_handler(USB0_VECTORn, USB_ISR);
//   90 //    enable_irq(USB0_IRQn);                          //使能NVIC中的USB OTG中断
//   91 //
//   92 //    /* USB模块配置 */
//   93 //    USB0_USBTRC0 |= USB_USBTRC0_USBRESET_MASK;      //复位USB模块
//   94 //    while(FLAG_CHK(USB_USBTRC0_USBRESET_SHIFT, USB0_USBTRC0));
//   95 //    USB0_BDTPAGE1 = (uint8)((uint32)tBDTtable >> 8); //配置当前缓冲描述符表BDT
//   96 //    USB0_BDTPAGE2 = (uint8)((uint32)tBDTtable >> 16);
//   97 //    USB0_BDTPAGE3 = (uint8)((uint32)tBDTtable >> 24);
//   98 //
//   99 //    // 清 USB 复位标记
//  100 //    FLAG_SET(USB_ISTAT_USBRST_MASK, USB0_ISTAT);
//  101 //
//  102 //    // 使能 USB 复位中断
//  103 //    FLAG_SET(USB_INTEN_USBRSTEN_SHIFT, USB0_INTEN);
//  104 //
//  105 //    // Enable weak pull downs
//  106 //    USB0_USBCTRL = 0x40;
//  107 //
//  108 //    USB0_USBTRC0 |= 0x40;
//  109 //
//  110 //    USB0_CTL |= 0x01;
//  111 //
//  112 //    // 上拉使能
//  113 //    FLAG_SET(USB_CONTROL_DPPULLUPNONOTG_SHIFT, USB0_CONTROL);
//  114 //}
//  115 //
//  116 //
//  117 ///*!
//  118 // *  @brief      USB 虚拟串口 初始化
//  119 // *  @since      v5.0
//  120 // */
//  121 //void usb_com_init(void)
//  122 //{
//  123 //    usb_init(); //初始化USB模块
//  124 //
//  125 //    CDC_Init(); //初始化USB CDC模式
//  126 //}
//  127 //
//  128 //
//  129 ///*!
//  130 // *  @brief      USB 等待枚举
//  131 // *  @since      v5.0
//  132 // */
//  133 //void usb_enum_wait(void)
//  134 //{
//  135 //    while(gu8USB_State != uENUMERATED);//等待USB设备被枚举
//  136 //}
//  137 //
//  138 ///*!
//  139 // *  @brief      USB 虚拟串口 接收
//  140 // *  @param      rx_buf          数据接收缓冲区
//  141 // *  @return     接收到的长度
//  142 // *  @since      v5.0
//  143 // */
//  144 //uint8 usb_com_rx(uint8_t *rx_buf)
//  145 //{
//  146 //    uint8 len;
//  147 //    uint8 temp = 0;
//  148 //    uint8 *pu8EPBuffer;
//  149 //
//  150 //    if(FLAG_CHK(EP_OUT, gu8USB_Flags)) // 如果有数据到来
//  151 //    {
//  152 //        len = USB_EP_OUT_SizeCheck(EP_OUT);
//  153 //        temp = len;
//  154 //        pu8EPBuffer = gu8EP3_OUT_ODD_Buffer;
//  155 //
//  156 //        while(len--)
//  157 //            *rx_buf++ = *pu8EPBuffer++;
//  158 //
//  159 //        usbEP_Reset(EP_OUT);
//  160 //        usbSIE_CONTROL(EP_OUT);
//  161 //        FLAG_CLR(EP_OUT, gu8USB_Flags);
//  162 //    }
//  163 //    return temp;
//  164 //}
//  165 //
//  166 //
//  167 ///*!
//  168 // *  @brief      USB 虚拟串口 发送
//  169 // *  @param      tx_buf          数据发送缓冲区
//  170 // *  @param      需要发送的数据长度
//  171 // *  @since      v5.0
//  172 // */
//  173 //void usb_com_tx(uint8 *tx_buf, uint8 len)
//  174 //{
//  175 //    EP_IN_Transfer(EP_IN, tx_buf, len);
//  176 //}
//  177 //
//  178 //
//  179 //
//  180 //
// 
//
// 
//
//
//Errors: none
//Warnings: none
