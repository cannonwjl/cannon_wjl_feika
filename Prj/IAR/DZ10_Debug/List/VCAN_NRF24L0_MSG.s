///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      11/May/2017  11:14:10
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\@@@@@@@\Car\Board\src\VCAN_NRF24L0_MSG.c
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EW5B61.tmp
//        (D:\@@@@@@@\Car\Board\src\VCAN_NRF24L0_MSG.c -D DEBUG
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
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\VCAN_NRF24L0_MSG.s
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
// D:\@@@@@@@\Car\Board\src\VCAN_NRF24L0_MSG.c
//    1 //#include "common.h"
//    2 //#include "MK60_gpio.h"
//    3 //#include "MK60_port.h"
//    4 //#include "MK60_spi.h"
//    5 //#include "VCAN_camera.h"
//    6 //#include "VCAN_NRF24L0.h"
//    7 //#include "VCAN_NRF24L0_MSG.h"
//    8 //#include "VCAN_TSL1401.h"
//    9 //
//   10 ///**************************** ���������뷢�� **********************************/
//   11 //
//   12 //
//   13 //
//   14 //
//   15 ///**************************** ���������뷢�� **********************************/
//   16 //
//   17 //uint32 rxbuflen = 0;           //���ڽ��շ����ؽ��յ��������ݡ���������һ�δ��ݽ�ȥ���Ǹ�����С��
//   18 //
//   19 //
//   20 //const uint32 nrf_com_size[COM_MAX] = {CAMERA_SIZE , TSL1401_MAX *TSL1401_SIZE , 8, 0};
//   21 //
//   22 //uint32 nrf_com_totalsize[COM_MAX];                                                                  // ��ռ�� �� �� �� ռ�ÿռ�
//   23 //
//   24 //void nrf_msg_init()
//   25 //{
//   26 //    uint32 i = COM_MAX;
//   27 //
//   28 //    while(i--)
//   29 //    {
//   30 //        nrf_com_totalsize[i] = (( nrf_com_size[i] + 2 * COM_LEN + DATA_PACKET - 1 ) / DATA_PACKET)  //��ð�����Ŀ
//   31 //                               *DATA_PACKET;                                                      //�ܹ�ռ�õĿռ�
//   32 //    }
//   33 //
//   34 //}
//   35 //
//   36 //
//   37 ////�������ǰ�����ֽ���������ʶ�𣬺��������Ҫ���������
//   38 //nrf_result_e nrf_msg_tx(com_e  com, uint8 *sendbuf)
//   39 //{
//   40 //    ASSERT(com < COM_MAX);          //����ܳ���������Ŀ
//   41 //
//   42 //    //������д�����ݻ�����
//   43 //    sendbuf[0] =  com;
//   44 //    sendbuf[1] = ~com;
//   45 //    sendbuf[nrf_com_size[com] + 2 * COM_LEN - 2] = ~com;
//   46 //    sendbuf[nrf_com_size[com] + 2 * COM_LEN - 1] = com;
//   47 //
//   48 //    while( !nrf_tx(sendbuf , nrf_com_size[com] + 2 * COM_LEN)); //��������
//   49 //
//   50 //    return NRF_RESULT_NULL;
//   51 //}
//   52 //
//   53 ////��ѯ�Ƿ��н������ݣ������д���rebuf Ϊ�ɹ�ʹ�õĻ�����
//   54 ////
//   55 //nrf_result_e nrf_msg_rx(com_e  *com, uint8 *rebuf)
//   56 //{
//   57 //    com_e   comtmp;
//   58 //    uint32  len;
//   59 //    uint32  tmplen;
//   60 //    uint32  relen;                              //���յ������ݳ���
//   61 //    uint8   *buftemp;
//   62 //
//   63 //    uint32  totallen ;                          //����Ҫ���հ�����Ŀ(����������)
//   64 //    uint16  tmpcheck;
//   65 //
//   66 //RE_LOOP:
//   67 //    buftemp = rebuf;                            //������ʼ��ַ
//   68 //
//   69 //    relen = nrf_rx(buftemp, DATA_PACKET);       //���� ��һ����
//   70 //    if(relen == 0)
//   71 //    {
//   72 //        //����� ԤУ�� ʧ�ܣ���ô �϶����Խ��յ����ݣ��������˴�
//   73 //
//   74 //        //ֻ�� һ��ʼ ���뺯�� ��һ�ν��յ�ʱ�򣬲ų��ֽ���ʧ��
//   75 //
//   76 //        return NRF_RESULT_RX_NO;                //û���յ�����
//   77 //    }
//   78 //
//   79 //    comtmp = (com_e)buftemp[0];
//   80 //    if(((uint8)comtmp < (uint8)COM_MAX) && (buftemp[1] ==  (uint8)~comtmp) && (comtmp != COM_RETRAN) )
//   81 //    {
//   82 //        //У����ȷ,��������ʣ�� ������
//   83 //
//   84 //        totallen = nrf_com_totalsize[comtmp];   //�ܽ��ղ���
//   85 //
//   86 //        if(totallen > relen )                   //���ݳ��� ���� �ѽ��ճ���
//   87 //        {
//   88 //            //��Ҫ��������
//   89 //            len = totallen - relen;             //ʣ����յ� ����
//   90 //
//   91 //            //�ȴ�����FIFO�������У����ȷ�Ž���
//   92 //            while( !nrf_rx_fifo_check(nrf_com_size[comtmp] + 2 * COM_LEN - relen,&tmpcheck)  );   //�ȴ�����
//   93 //            if( tmpcheck !=  (uint16)((uint8)~comtmp + (comtmp<<8)))
//   94 //            {
//   95 //                goto RE_LOOP;                   //У��ʧ�� �������ղŽ��յ� ��һ�� �� �����½������ݣ�
//   96 //            }
//   97 //
//   98 //            tmplen = relen;
//   99 //            do
//  100 //            {
//  101 //                buftemp += tmplen;              //�ƶ�����δ�������ݵĻ�����
//  102 //                tmplen = nrf_rx(buftemp, len);  //��������
//  103 //                //relen += tmplen;
//  104 //                len -= tmplen;
//  105 //            }
//  106 //            while(len);
//  107 //        }
//  108 //
//  109 //        //У��β�������Ƿ���ȷ
//  110 //        if(
//  111 //            (rebuf[nrf_com_size[comtmp] + 2 * COM_LEN - 2] ==   (uint8)~comtmp)
//  112 //            &&  (rebuf[nrf_com_size[comtmp] + 2 * COM_LEN - 1] ==   (uint8) comtmp)   )
//  113 //        {
//  114 //            *com = comtmp;                          //�洢����
//  115 //
//  116 //            //�� ���� ���ݽ��� ����
//  117 //            switch(*com)
//  118 //            {
//  119 //            case COM_VAR:
//  120 //                last_tab = *((uint32 *)&rebuf[COM_LEN]);                                    //��ȡ�������
//  121 //                if(last_tab < VAR_MAX)
//  122 //                {
//  123 //                    save_var((var_tab_e)last_tab, *((uint32 *)&rebuf[COM_LEN + sizeof(uint32)]));          //�洢 ����
//  124 //                    var_display(last_tab);                                                  //��ʾ ����
//  125 //                }
//  126 //                else
//  127 //                {
//  128 //                    return NRF_RESULT_RX_NOVALID;
//  129 //                }
//  130 //                break;
//  131 //            default:
//  132 //                break;
//  133 //            }
//  134 //
//  135 //            return NRF_RESULT_RX_VALID;             //������Ч����
//  136 //        }
//  137 //    }
//  138 //
//  139 //    //�н��յ����ݣ�������������Ч
//  140 //    return NRF_RESULT_RX_NOVALID;
//  141 //}
//  142 //
//  143 //
//  144 //
// 
//
// 
//
//
//Errors: none
//Warnings: none
