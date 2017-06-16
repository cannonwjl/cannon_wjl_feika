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
//    3 // *     Copyright (c) 2013,ɽ��Ƽ�
//    4 // *     All rights reserved.
//    5 // *     �������ۣ�ɽ����̳ http://www.vcan123.com
//    6 // *
//    7 // *     ��ע�������⣬�����������ݰ�Ȩ����ɽ��Ƽ����У�δ����������������ҵ��;��
//    8 // *     �޸�����ʱ���뱣��ɽ��Ƽ��İ�Ȩ������
//    9 // *
//   10 // * @file       MK60_usb.c
//   11 // * @brief      USB �����(Ŀǰ �� �� ���� ���� )
//   12 // * @author     ɽ��Ƽ�
//   13 // * @version    v5.0
//   14 // * @date       2013-09-26
//   15 // * @note       ������ ��ֲ ��˼������˾ �ṩ�� K60 �ο�����
//   16 // */
//   17 //
//   18 //
//   19 //#include "common.h"
//   20 //#include "usb.h"
//   21 //#include "MK60_usb.h"
//   22 //
//   23 //
//   24 ///*!
//   25 // *  @brief      USBģ�� ��ʼ��
//   26 // *  @since      v5.0
//   27 // */
//   28 //void usb_init(void)
//   29 //{
//   30 //    /* ������� */
//   31 //    Setup_Pkt = (tUSB_Setup *)BufferPointer[bEP0OUT_ODD];
//   32 //    gu8USB_State = uPOWER;                          //���״̬Ϊ�ϵ�״̬
//   33 //    /* MPU ���� */
//   34 //    MPU_CESR = 0;                                   // MPU is disable. All accesses from all bus masters are allowed
//   35 //
//   36 //    /* SIM ���� */
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
//   55 //                   | SIM_CLKDIV2_USBDIV(USB_CLK_DIV)                    //USB ��Ƶ����
//   56 //                   | (USB_CLK_FRAC << SIM_CLKDIV2_USBFRAC_SHIFT)        //USB ��Ƶ����
//   57 //                   //USB clk = PLL �� [ (USBFRAC+1) / (USBDIV+1) ]
//   58 //                  );
//   59 //    SIM_SCGC4 |= SIM_SCGC4_USBOTG_MASK;             //USB Clock Gating
//   60 //                                                    //����USBģ���ʱ��Դ
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
//   77 //                   | SIM_CLKDIV2_USBFSDIV(USB_CLK_DIV)                  //USB ��Ƶ����
//   78 //                   | (USB_CLK_FRAC << SIM_CLKDIV2_USBFSFRAC_SHIFT)      //USB ��Ƶ����
//   79 //                   //USB clk = PLL �� [ (USBFRAC+1) / (USBDIV+1) ]
//   80 //                  );
//   81 //
//   82 //    //SIM_SCGC6 |= SIM_SCGC6_USB2OTG_MASK;
//   83 //    SIM_SCGC4 |= SIM_SCGC4_USBFS_MASK;             //USB Clock Gating
//   84 //                                                    //����USBģ���ʱ��Դ
//   85 //#endif
//   86 //
//   87 //
//   88 //    /* NVICģ������ */
//   89 //    set_vector_handler(USB0_VECTORn, USB_ISR);
//   90 //    enable_irq(USB0_IRQn);                          //ʹ��NVIC�е�USB OTG�ж�
//   91 //
//   92 //    /* USBģ������ */
//   93 //    USB0_USBTRC0 |= USB_USBTRC0_USBRESET_MASK;      //��λUSBģ��
//   94 //    while(FLAG_CHK(USB_USBTRC0_USBRESET_SHIFT, USB0_USBTRC0));
//   95 //    USB0_BDTPAGE1 = (uint8)((uint32)tBDTtable >> 8); //���õ�ǰ������������BDT
//   96 //    USB0_BDTPAGE2 = (uint8)((uint32)tBDTtable >> 16);
//   97 //    USB0_BDTPAGE3 = (uint8)((uint32)tBDTtable >> 24);
//   98 //
//   99 //    // �� USB ��λ���
//  100 //    FLAG_SET(USB_ISTAT_USBRST_MASK, USB0_ISTAT);
//  101 //
//  102 //    // ʹ�� USB ��λ�ж�
//  103 //    FLAG_SET(USB_INTEN_USBRSTEN_SHIFT, USB0_INTEN);
//  104 //
//  105 //    // Enable weak pull downs
//  106 //    USB0_USBCTRL = 0x40;
//  107 //
//  108 //    USB0_USBTRC0 |= 0x40;
//  109 //
//  110 //    USB0_CTL |= 0x01;
//  111 //
//  112 //    // ����ʹ��
//  113 //    FLAG_SET(USB_CONTROL_DPPULLUPNONOTG_SHIFT, USB0_CONTROL);
//  114 //}
//  115 //
//  116 //
//  117 ///*!
//  118 // *  @brief      USB ���⴮�� ��ʼ��
//  119 // *  @since      v5.0
//  120 // */
//  121 //void usb_com_init(void)
//  122 //{
//  123 //    usb_init(); //��ʼ��USBģ��
//  124 //
//  125 //    CDC_Init(); //��ʼ��USB CDCģʽ
//  126 //}
//  127 //
//  128 //
//  129 ///*!
//  130 // *  @brief      USB �ȴ�ö��
//  131 // *  @since      v5.0
//  132 // */
//  133 //void usb_enum_wait(void)
//  134 //{
//  135 //    while(gu8USB_State != uENUMERATED);//�ȴ�USB�豸��ö��
//  136 //}
//  137 //
//  138 ///*!
//  139 // *  @brief      USB ���⴮�� ����
//  140 // *  @param      rx_buf          ���ݽ��ջ�����
//  141 // *  @return     ���յ��ĳ���
//  142 // *  @since      v5.0
//  143 // */
//  144 //uint8 usb_com_rx(uint8_t *rx_buf)
//  145 //{
//  146 //    uint8 len;
//  147 //    uint8 temp = 0;
//  148 //    uint8 *pu8EPBuffer;
//  149 //
//  150 //    if(FLAG_CHK(EP_OUT, gu8USB_Flags)) // ��������ݵ���
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
//  168 // *  @brief      USB ���⴮�� ����
//  169 // *  @param      tx_buf          ���ݷ��ͻ�����
//  170 // *  @param      ��Ҫ���͵����ݳ���
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
