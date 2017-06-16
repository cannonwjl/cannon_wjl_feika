///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      11/May/2017  11:14:09
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\@@@@@@@\Car\Board\src\VCAN_key.c
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EW5997.tmp
//        (D:\@@@@@@@\Car\Board\src\VCAN_key.c -D DEBUG -D
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
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\VCAN_key.s
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
// D:\@@@@@@@\Car\Board\src\VCAN_key.c
//    1 ///*!
//    2 // *     COPYRIGHT NOTICE
//    3 // *     Copyright (c) 2013,ɽ��Ƽ�
//    4 // *     All rights reserved.
//    5 // *     �������ۣ�ɽ����̳ http://www.vcan123.com
//    6 // *
//    7 // *     ��ע�������⣬�����������ݰ�Ȩ����ɽ��Ƽ����У�δ����������������ҵ��;��
//    8 // *     �޸�����ʱ���뱣��ɽ��Ƽ��İ�Ȩ������
//    9 // *
//   10 // * @file       VCAN_KEY.c
//   11 // * @brief      KEY��������ʵ��
//   12 // * @author     ɽ��Ƽ�
//   13 // * @version    v5.0
//   14 // * @date       2013-07-10
//   15 // */
//   16 //
//   17 //
//   18 ///*
//   19 // * ����ͷ�ļ�
//   20 // */
//   21 //#include "common.h"
//   22 //#include "MK60_port.h"
//   23 //#include "MK60_gpio.h"
//   24 //#include "VCAN_key.h"
//   25 //
//   26 //
//   27 ///*
//   28 // * ���� KEY ��Ŷ�Ӧ�Ĺܽ�
//   29 // */
//   30 //PTXn_e KEY_PTxn[KEY_MAX] = {PTD10, PTD14, PTD11, PTD12, PTD7, PTD13, PTC14, PTC15};
//   31 //
//   32 //
//   33 ///*!
//   34 // *  @brief      ��ʼ��key�˿�(key С�� KEY_MAX ʱ��ʼ�� ��Ӧ�˿ڣ������ʼ��ȫ���˿�)
//   35 // *  @param      KEY_e    KEY���
//   36 // *  @since      v5.0
//   37 // *  Sample usage:       key_init (KEY_U);    //��ʼ�� KEY_U
//   38 // */
//   39 //void    key_init(KEY_e key)
//   40 //{
//   41 //    if(key < KEY_MAX)
//   42 //    {
//   43 //        gpio_init(KEY_PTxn[key], GPI, 0);
//   44 //        port_init_NoALT(KEY_PTxn[key], PULLUP);         //���ָ��ò��䣬�����ı�����ѡ��
//   45 //    }
//   46 //    else
//   47 //    {
//   48 //        key = KEY_MAX;
//   49 //
//   50 //        //��ʼ��ȫ�� ����
//   51 //        while(key--)
//   52 //        {
//   53 //            gpio_init(KEY_PTxn[key], GPI, 0);
//   54 //            port_init_NoALT(KEY_PTxn[key], PULLUP);         //���ָ��ò��䣬�����ı�����ѡ��
//   55 //        }
//   56 //
//   57 //    }
//   58 //}
//   59 //
//   60 ///*!
//   61 // *  @brief      ��ȡkey״̬��������ʱ������
//   62 // *  @param      KEY_e           KEY���
//   63 // *  @return     KEY_STATUS_e    KEY״̬��KEY_DOWN��KEY_DOWN��
//   64 // *  @since      v5.0
//   65 // *  Sample usage:
//   66 //                    if(key_get(KEY_U) ==  KEY_DOWN)
//   67 //                    {
//   68 //                        printf("\n��������")
//   69 //                    }
//   70 // */
//   71 //KEY_STATUS_e key_get(KEY_e key)
//   72 //{
//   73 //    if(gpio_get(KEY_PTxn[key]) == KEY_DOWN)
//   74 //    {
//   75 //        return KEY_DOWN;
//   76 //    }
//   77 //    return KEY_UP;
//   78 //}
//   79 //
//   80 //
//   81 ///*!
//   82 // *  @brief      ���key״̬������ʱ������
//   83 // *  @param      KEY_e           KEY���
//   84 // *  @return     KEY_STATUS_e    KEY״̬��KEY_DOWN��KEY_DOWN��
//   85 // *  @since      v5.0
//   86 // *  Sample usage:
//   87 //                    if(key_check(KEY_U) ==  KEY_DOWN)
//   88 //                    {
//   89 //                        printf("\n��������")
//   90 //                    }
//   91 // */
//   92 //KEY_STATUS_e key_check(KEY_e key)
//   93 //{
//   94 //    if(key_get(key) == KEY_DOWN)
//   95 //    {
//   96 //        DELAY_MS(10);
//   97 //        if( key_get(key) == KEY_DOWN)
//   98 //        {
//   99 //            return KEY_DOWN;
//  100 //        }
//  101 //    }
//  102 //    return KEY_UP;
//  103 //}
//  104 //
//  105 //
//  106 ///*********************  ���´�����ʵ�ְ�����ʱɨ�裬������Ϣ��FIFO  ********************/
//  107 ///*
//  108 // * ���尴����ϢFIFO״̬
//  109 // */
//  110 //typedef enum
//  111 //{
//  112 //    KEY_MSG_EMPTY,      //û�а�����Ϣ
//  113 //    KEY_MSG_NORMAL,     //�������а�����Ϣ��������
//  114 //    KEY_MSG_FULL,       //������Ϣ��
//  115 //} key_msg_e;
//  116 //
//  117 ///*
//  118 // * ���尴����ϢFIFO��صı���
//  119 // */
//  120 //KEY_MSG_t           key_msg[KEY_MSG_FIFO_SIZE];             //������ϢFIFO
//  121 //volatile uint8      key_msg_front = 0, key_msg_rear = 0;    //����FIFO��ָ��
//  122 //volatile uint8      key_msg_flag = KEY_MSG_EMPTY;           //������ϢFIFO״̬
//  123 //
//  124 //
//  125 ///*!
//  126 // *  @brief      ���Ͱ�����Ϣ��FIFO
//  127 // *  @param      KEY_MSG_t       ������Ϣ
//  128 // *  @since      v5.0
//  129 // *  Sample usage:
//  130 //                    KEY_MSG_t *keymsg;
//  131 //                    keymsg.key      = KEY_U;
//  132 //                    keymsg.status   = KEY_HOLD;
//  133 //                    send_key_msg(keymsg);                   //����
//  134 // */
//  135 //void send_key_msg(KEY_MSG_t keymsg)
//  136 //{
//  137 //    uint8 tmp;
//  138 //    //������FIFO��
//  139 //    if(key_msg_flag == KEY_MSG_FULL)
//  140 //    {
//  141 //        //����ֱ�Ӳ�����
//  142 //        return ;
//  143 //    }
//  144 //    key_msg[key_msg_rear].key = keymsg.key;
//  145 //    key_msg[key_msg_rear].status = keymsg.status;
//  146 //
//  147 //    key_msg_rear++;
//  148 //
//  149 //    if(key_msg_rear >= KEY_MSG_FIFO_SIZE)
//  150 //    {
//  151 //        key_msg_rear = 0;                       //��ͷ��ʼ
//  152 //    }
//  153 //
//  154 //    tmp = key_msg_rear;
//  155 //    if(tmp == key_msg_front)                   //׷��ƨ���ˣ�����
//  156 //    {
//  157 //        key_msg_flag = KEY_MSG_FULL;
//  158 //    }
//  159 //    else
//  160 //    {
//  161 //        key_msg_flag = KEY_MSG_NORMAL;
//  162 //    }
//  163 //}
//  164 //
//  165 //
//  166 ///*!
//  167 // *  @brief      ��FIFO���ȡ������Ϣ
//  168 // *  @param      KEY_MSG_t       ������Ϣ
//  169 // *  @return     �Ƿ��ȡ������Ϣ��1Ϊ��ȡ�ɹ���0Ϊû��ȡ��������Ϣ��
//  170 // *  @since      v5.0
//  171 // *  Sample usage:
//  172 //                    KEY_MSG_t keymsg;
//  173 //                    if(get_key_msg(&keymsg) == 1)
//  174 //                    {
//  175 //                        printf("\n���°���KEY%d,����Ϊ%d��0Ϊ���£�1Ϊ����2Ϊ������",keymsg.key,keymsg.status);
//  176 //                    }
//  177 // */
//  178 //uint8 get_key_msg(KEY_MSG_t *keymsg)
//  179 //{
//  180 //    uint8 tmp;
//  181 //
//  182 //    if(key_msg_flag == KEY_MSG_EMPTY)               //������ϢFIFOΪ�գ�ֱ�ӷ���0
//  183 //    {
//  184 //        return 0;
//  185 //    }
//  186 //
//  187 //    keymsg->key = key_msg[key_msg_front].key;       //��FIFO�����л�ȡ����ֵ
//  188 //    keymsg->status = key_msg[key_msg_front].status; //��FIFO�����л�ȡ��������
//  189 //
//  190 //    key_msg_front++;                                //FIFO����ָ���1��ָ����һ����Ϣ
//  191 //
//  192 //    if(key_msg_front >= KEY_MSG_FIFO_SIZE)          //FIFOָ�����������0��ʼ����
//  193 //    {
//  194 //        key_msg_front = 0;                          //��ͷ��ʼ������ѭ���������飩
//  195 //    }
//  196 //
//  197 //    tmp = key_msg_rear;
//  198 //    if(key_msg_front == tmp)                        //�Ƚ϶��׺Ͷ�β�Ƿ�һ����һ�����ʾFIFO�ѿ���
//  199 //    {
//  200 //        key_msg_flag = KEY_MSG_EMPTY;
//  201 //    }
//  202 //    else
//  203 //    {
//  204 //        key_msg_flag = KEY_MSG_NORMAL;
//  205 //    }
//  206 //
//  207 //    return 1;
//  208 //}
//  209 //
//  210 ///*!
//  211 // *  @brief      ��ʱ���key״̬
//  212 // *  @since      v5.0
//  213 // *  @note       �˺�����Ҫ���� ��ʱ�жϷ��������ʱ10msִ��һ��
//  214 // */
//  215 //void key_IRQHandler(void)
//  216 //{
//  217 //
//  218 //    KEY_e   keynum;
//  219 //    static uint8 keytime[KEY_MAX];                          //��̬���飬��������鰴��ʱ��
//  220 //
//  221 //    KEY_MSG_t keymsg;                                       //������Ϣ
//  222 //
//  223 //    for(keynum = (KEY_e)0 ; keynum < KEY_MAX; keynum ++)    //ÿ��������ѯ
//  224 //    {
//  225 //        if(key_get(keynum) == KEY_DOWN)                     //�жϰ����Ƿ���
//  226 //        {
//  227 //            keytime[keynum]++;                              //����ʱ���ۼ�
//  228 //
//  229 //            if(keytime[keynum] <= KEY_DOWN_TIME)            //�ж�ʱ���Ƿ�û��������ȷ�ϰ���ʱ��
//  230 //            {
//  231 //                continue;                                   //û�ﵽ��������ȴ�
//  232 //            }
//  233 //            else if(keytime[keynum] == KEY_DOWN_TIME + 1 )  //�ж�ʱ���Ƿ�Ϊ����ȷ�ϰ���ʱ��
//  234 //            {
//  235 //                //ȷ�ϰ�������
//  236 //                keymsg.key = keynum;
//  237 //                keymsg.status = KEY_DOWN;
//  238 //                send_key_msg(keymsg);                       //�Ѱ���ֵ�Ͱ������ͷ�����Ϣ��FIFO
//  239 //            }
//  240 //            else if(keytime[keynum] <= KEY_HOLD_TIME)       //�Ƿ�û��������HOLD����ȷ��ʱ��
//  241 //            {
//  242 //                continue;                                   //û������������ȴ�
//  243 //            }
//  244 //            else if(keytime[keynum]  == KEY_HOLD_TIME + 1)  //�Ƿ�Ϊ����holdȷ��ʱ��
//  245 //            {
//  246 //                //ȷ�ϳ���HOLD
//  247 //                keymsg.key = keynum;
//  248 //                keymsg.status = KEY_HOLD;
//  249 //                send_key_msg(keymsg);                       //����
//  250 //                keytime[keynum] = KEY_DOWN_TIME + 1;
//  251 //            }
//  252 //            else
//  253 //            {
//  254 //                keytime[keynum] = KEY_DOWN_TIME + 1;        //�����ظ���� hold ״̬
//  255 //            }
//  256 //        }
//  257 //        else
//  258 //        {
//  259 //            if(keytime[keynum] > KEY_DOWN_TIME)             //���ȷ�Ϲ����°���
//  260 //            {
//  261 //                keymsg.key = keynum;
//  262 //                keymsg.status = KEY_UP;
//  263 //                send_key_msg(keymsg);                       //���Ͱ���������Ϣ
//  264 //            }
//  265 //
//  266 //            keytime[keynum] = 0;                            //ʱ���ۼ���0
//  267 //        }
//  268 //    }
//  269 //}
//  270 //
//  271 //
//  272 //
// 
//
// 
//
//
//Errors: none
//Warnings: none
