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
//    3 // *     Copyright (c) 2013,山外科技
//    4 // *     All rights reserved.
//    5 // *     技术讨论：山外论坛 http://www.vcan123.com
//    6 // *
//    7 // *     除注明出处外，以下所有内容版权均属山外科技所有，未经允许，不得用于商业用途，
//    8 // *     修改内容时必须保留山外科技的版权声明。
//    9 // *
//   10 // * @file       VCAN_KEY.c
//   11 // * @brief      KEY驱动函数实现
//   12 // * @author     山外科技
//   13 // * @version    v5.0
//   14 // * @date       2013-07-10
//   15 // */
//   16 //
//   17 //
//   18 ///*
//   19 // * 包含头文件
//   20 // */
//   21 //#include "common.h"
//   22 //#include "MK60_port.h"
//   23 //#include "MK60_gpio.h"
//   24 //#include "VCAN_key.h"
//   25 //
//   26 //
//   27 ///*
//   28 // * 定义 KEY 编号对应的管脚
//   29 // */
//   30 //PTXn_e KEY_PTxn[KEY_MAX] = {PTD10, PTD14, PTD11, PTD12, PTD7, PTD13, PTC14, PTC15};
//   31 //
//   32 //
//   33 ///*!
//   34 // *  @brief      初始化key端口(key 小于 KEY_MAX 时初始化 对应端口，否则初始化全部端口)
//   35 // *  @param      KEY_e    KEY编号
//   36 // *  @since      v5.0
//   37 // *  Sample usage:       key_init (KEY_U);    //初始化 KEY_U
//   38 // */
//   39 //void    key_init(KEY_e key)
//   40 //{
//   41 //    if(key < KEY_MAX)
//   42 //    {
//   43 //        gpio_init(KEY_PTxn[key], GPI, 0);
//   44 //        port_init_NoALT(KEY_PTxn[key], PULLUP);         //保持复用不变，仅仅改变配置选项
//   45 //    }
//   46 //    else
//   47 //    {
//   48 //        key = KEY_MAX;
//   49 //
//   50 //        //初始化全部 按键
//   51 //        while(key--)
//   52 //        {
//   53 //            gpio_init(KEY_PTxn[key], GPI, 0);
//   54 //            port_init_NoALT(KEY_PTxn[key], PULLUP);         //保持复用不变，仅仅改变配置选项
//   55 //        }
//   56 //
//   57 //    }
//   58 //}
//   59 //
//   60 ///*!
//   61 // *  @brief      获取key状态（不带延时消抖）
//   62 // *  @param      KEY_e           KEY编号
//   63 // *  @return     KEY_STATUS_e    KEY状态（KEY_DOWN、KEY_DOWN）
//   64 // *  @since      v5.0
//   65 // *  Sample usage:
//   66 //                    if(key_get(KEY_U) ==  KEY_DOWN)
//   67 //                    {
//   68 //                        printf("\n按键按下")
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
//   82 // *  @brief      检测key状态（带延时消抖）
//   83 // *  @param      KEY_e           KEY编号
//   84 // *  @return     KEY_STATUS_e    KEY状态（KEY_DOWN、KEY_DOWN）
//   85 // *  @since      v5.0
//   86 // *  Sample usage:
//   87 //                    if(key_check(KEY_U) ==  KEY_DOWN)
//   88 //                    {
//   89 //                        printf("\n按键按下")
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
//  106 ///*********************  如下代码是实现按键定时扫描，发送消息到FIFO  ********************/
//  107 ///*
//  108 // * 定义按键消息FIFO状态
//  109 // */
//  110 //typedef enum
//  111 //{
//  112 //    KEY_MSG_EMPTY,      //没有按键消息
//  113 //    KEY_MSG_NORMAL,     //正常，有按键消息，但不满
//  114 //    KEY_MSG_FULL,       //按键消息满
//  115 //} key_msg_e;
//  116 //
//  117 ///*
//  118 // * 定义按键消息FIFO相关的变量
//  119 // */
//  120 //KEY_MSG_t           key_msg[KEY_MSG_FIFO_SIZE];             //按键消息FIFO
//  121 //volatile uint8      key_msg_front = 0, key_msg_rear = 0;    //接收FIFO的指针
//  122 //volatile uint8      key_msg_flag = KEY_MSG_EMPTY;           //按键消息FIFO状态
//  123 //
//  124 //
//  125 ///*!
//  126 // *  @brief      发送按键消息到FIFO
//  127 // *  @param      KEY_MSG_t       按键消息
//  128 // *  @since      v5.0
//  129 // *  Sample usage:
//  130 //                    KEY_MSG_t *keymsg;
//  131 //                    keymsg.key      = KEY_U;
//  132 //                    keymsg.status   = KEY_HOLD;
//  133 //                    send_key_msg(keymsg);                   //发送
//  134 // */
//  135 //void send_key_msg(KEY_MSG_t keymsg)
//  136 //{
//  137 //    uint8 tmp;
//  138 //    //保存在FIFO里
//  139 //    if(key_msg_flag == KEY_MSG_FULL)
//  140 //    {
//  141 //        //满了直接不处理
//  142 //        return ;
//  143 //    }
//  144 //    key_msg[key_msg_rear].key = keymsg.key;
//  145 //    key_msg[key_msg_rear].status = keymsg.status;
//  146 //
//  147 //    key_msg_rear++;
//  148 //
//  149 //    if(key_msg_rear >= KEY_MSG_FIFO_SIZE)
//  150 //    {
//  151 //        key_msg_rear = 0;                       //重头开始
//  152 //    }
//  153 //
//  154 //    tmp = key_msg_rear;
//  155 //    if(tmp == key_msg_front)                   //追到屁股了，满了
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
//  167 // *  @brief      从FIFO里获取按键消息
//  168 // *  @param      KEY_MSG_t       按键消息
//  169 // *  @return     是否获取按键消息（1为获取成功，0为没获取到按键消息）
//  170 // *  @since      v5.0
//  171 // *  Sample usage:
//  172 //                    KEY_MSG_t keymsg;
//  173 //                    if(get_key_msg(&keymsg) == 1)
//  174 //                    {
//  175 //                        printf("\n按下按键KEY%d,类型为%d（0为按下，1为弹起，2为长按）",keymsg.key,keymsg.status);
//  176 //                    }
//  177 // */
//  178 //uint8 get_key_msg(KEY_MSG_t *keymsg)
//  179 //{
//  180 //    uint8 tmp;
//  181 //
//  182 //    if(key_msg_flag == KEY_MSG_EMPTY)               //按键消息FIFO为空，直接返回0
//  183 //    {
//  184 //        return 0;
//  185 //    }
//  186 //
//  187 //    keymsg->key = key_msg[key_msg_front].key;       //从FIFO队首中获取按键值
//  188 //    keymsg->status = key_msg[key_msg_front].status; //从FIFO队首中获取按键类型
//  189 //
//  190 //    key_msg_front++;                                //FIFO队首指针加1，指向下一个消息
//  191 //
//  192 //    if(key_msg_front >= KEY_MSG_FIFO_SIZE)          //FIFO指针队首溢出则从0开始计数
//  193 //    {
//  194 //        key_msg_front = 0;                          //重头开始计数（循环利用数组）
//  195 //    }
//  196 //
//  197 //    tmp = key_msg_rear;
//  198 //    if(key_msg_front == tmp)                        //比较队首和队尾是否一样，一样则表示FIFO已空了
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
//  211 // *  @brief      定时检测key状态
//  212 // *  @since      v5.0
//  213 // *  @note       此函数需要放入 定时中断服务函数里，定时10ms执行一次
//  214 // */
//  215 //void key_IRQHandler(void)
//  216 //{
//  217 //
//  218 //    KEY_e   keynum;
//  219 //    static uint8 keytime[KEY_MAX];                          //静态数组，保存各数组按下时间
//  220 //
//  221 //    KEY_MSG_t keymsg;                                       //按键消息
//  222 //
//  223 //    for(keynum = (KEY_e)0 ; keynum < KEY_MAX; keynum ++)    //每个按键轮询
//  224 //    {
//  225 //        if(key_get(keynum) == KEY_DOWN)                     //判断按键是否按下
//  226 //        {
//  227 //            keytime[keynum]++;                              //按下时间累加
//  228 //
//  229 //            if(keytime[keynum] <= KEY_DOWN_TIME)            //判断时间是否没超过消抖确认按下时间
//  230 //            {
//  231 //                continue;                                   //没达到，则继续等待
//  232 //            }
//  233 //            else if(keytime[keynum] == KEY_DOWN_TIME + 1 )  //判断时间是否为消抖确认按下时间
//  234 //            {
//  235 //                //确认按键按下
//  236 //                keymsg.key = keynum;
//  237 //                keymsg.status = KEY_DOWN;
//  238 //                send_key_msg(keymsg);                       //把按键值和按键类型发送消息到FIFO
//  239 //            }
//  240 //            else if(keytime[keynum] <= KEY_HOLD_TIME)       //是否没超过长按HOLD按键确认时间
//  241 //            {
//  242 //                continue;                                   //没超过，则继续等待
//  243 //            }
//  244 //            else if(keytime[keynum]  == KEY_HOLD_TIME + 1)  //是否为长按hold确认时间
//  245 //            {
//  246 //                //确认长按HOLD
//  247 //                keymsg.key = keynum;
//  248 //                keymsg.status = KEY_HOLD;
//  249 //                send_key_msg(keymsg);                       //发送
//  250 //                keytime[keynum] = KEY_DOWN_TIME + 1;
//  251 //            }
//  252 //            else
//  253 //            {
//  254 //                keytime[keynum] = KEY_DOWN_TIME + 1;        //继续重复检测 hold 状态
//  255 //            }
//  256 //        }
//  257 //        else
//  258 //        {
//  259 //            if(keytime[keynum] > KEY_DOWN_TIME)             //如果确认过按下按键
//  260 //            {
//  261 //                keymsg.key = keynum;
//  262 //                keymsg.status = KEY_UP;
//  263 //                send_key_msg(keymsg);                       //发送按键弹起消息
//  264 //            }
//  265 //
//  266 //            keytime[keynum] = 0;                            //时间累计清0
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
