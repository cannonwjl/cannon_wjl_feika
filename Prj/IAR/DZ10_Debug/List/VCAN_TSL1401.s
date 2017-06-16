///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      11/May/2017  11:14:11
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\@@@@@@@\Car\Board\src\VCAN_TSL1401.c
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EW6098.tmp
//        (D:\@@@@@@@\Car\Board\src\VCAN_TSL1401.c -D DEBUG -D
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
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\VCAN_TSL1401.s
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
// D:\@@@@@@@\Car\Board\src\VCAN_TSL1401.c
//    1 ///*!
//    2 // *     COPYRIGHT NOTICE
//    3 // *     Copyright (c) 2013,ɽ��Ƽ�
//    4 // *     All rights reserved.
//    5 // *     �������ۣ�ɽ����̳ http://www.vcan123.com
//    6 // *
//    7 // *     ��ע�������⣬�����������ݰ�Ȩ����ɽ��Ƽ����У�δ����������������ҵ��;��
//    8 // *     �޸�����ʱ���뱣��ɽ��Ƽ��İ�Ȩ������
//    9 // *
//   10 // * @file       VCAN_TSL1401.c
//   11 // * @brief      ����CCD������
//   12 // * @author     ɽ��Ƽ�
//   13 // * @version    v5.0
//   14 // * @date       2014-01-04
//   15 // */
//   16 //
//   17 //#include "common.h"
//   18 //#include "math.h"
//   19 //#include <stdarg.h>
//   20 //#include "MK60_port.h"
//   21 //#include "MK60_gpio.h"
//   22 //#include "MK60_adc.h"
//   23 //#include "MK60_pit.h"
//   24 //#include "VCAN_TSL1401.h"
//   25 //
//   26 //
//   27 //static volatile tsl1401_status_e  tsl1401_flag = tsl1401_noint;
//   28 //static volatile uint32            tsl1401_time;
//   29 //
//   30 //
//   31 //static void tsl1401_restet();
//   32 //static void tsl1401_delay(volatile uint32 time );
//   33 //static void tsl1401_gather(void);
//   34 //
//   35 ////����CCD�ܽ�
//   36 ////                          CCD1            CCD2        CCD3
//   37 //
//   38 //#if 1             //����������ѡ��ͬ���ź�����
//   39 //ADCn_Ch_e   tsl1401_ch[] = {ADC0_DP1,     ADC0_DP0,    ADC1_DP1};       //CCD���õ� ADCͨ��(ԭʼ�ź�)
//   40 //#else
//   41 //ADCn_Ch_e   tsl1401_ch[] = {ADC0_DM1,     ADC0_DM0,    ADC1_DM1};       //CCD���õ� ADCͨ��(�Ŵ��ź�)
//   42 //#endif
//   43 //PTXn_e      tsl1401_si[] = {PTE6 ,        PTE8 ,       PTE10};          //CCD���õ� SI�ܽ�
//   44 //PTXn_e      tsl1401_clk[] = {PTE7 ,        PTE9 ,       PTE12};         //CCD���õ� SI�ܽ�
//   45 //PTXn_e      tsl1401_led[] = {PTA8 ,        PTA9 ,       PTD15};         //CCD ���� ���õ� LED_EN �ܽ�
//   46 //
//   47 ////CCD �ɼ������Ĵ洢�ռ�ָ������
//   48 //uint8 *tsl1401_addr[TSL1401_MAX] = {0};                                 //CCD �ɼ�ͼ��ĵ�ַ����
//   49 //
//   50 ////ȫ��CCD��SI�ܽ��������
//   51 //void tsl1401_si_out(uint8 data)
//   52 //{
//   53 //    uint8   i = TSL1401_MAX;
//   54 //
//   55 //    ASSERT(data < 2);
//   56 //
//   57 //    while(i--)
//   58 //    {
//   59 //        gpio_set(tsl1401_si[i], data);
//   60 //    }
//   61 //}
//   62 //
//   63 ////ȫ��CCD��CLK�ܽ��������
//   64 //void tsl1401_clk_out(uint8 data)
//   65 //{
//   66 //    uint8   i = TSL1401_MAX;
//   67 //
//   68 //    ASSERT(data < 2);
//   69 //
//   70 //    while(i--)
//   71 //    {
//   72 //        gpio_set(tsl1401_clk[i], data);
//   73 //    }
//   74 //}
//   75 //
//   76 ////tsl1401,����CCD��ʼ����timeΪ�ع�ʱ�䣬��λ�� TSL1401_INT_TIME ������һ�£���ʼ����������tsl1401_set_addrs �����ô洢��ַ�����������ô洢ͼ���ַ��
//   77 //void tsl1401_init(uint32 time)
//   78 //{
//   79 //    uint8 i = TSL1401_MAX;
//   80 //
//   81 //    while(i)
//   82 //    {
//   83 //        i--;
//   84 //        adc_init(tsl1401_ch[i]); //��ʼ�� CCD ���õ� ADCͨ��
//   85 //
//   86 //        //��ʼ�� CCD �Ŀ��ƹܽ� CLK �� SI
//   87 //        gpio_init (tsl1401_clk[i], GPO, 0);
//   88 //        gpio_init (tsl1401_si[i] , GPO, 0);
//   89 //    }
//   90 //
//   91 //    tsl1401_time = time;
//   92 //    TSL1401_INT_TIME(tsl1401_time);         //  �����ж�ʱ��
//   93 //
//   94 //    tsl1401_restet();                       //  ������һ֡�����ݣ��ҵģ�
//   95 //}
//   96 //
//   97 ////���òɼ�ͼ��ĵ�ַ
//   98 ////num Ϊ TSL1401_MAX ʱ������ȫ����ַ����������ָ���ĵ�ַ
//   99 //void tsl1401_set_addrs(TSL1401_e num, uint8 *addr, ... )
//  100 //{
//  101 //    ASSERT(num <= TSL1401_MAX);
//  102 //
//  103 //    va_list ap;                                 //����ջָ��ap
//  104 //    uint8_t *value;
//  105 //    uint8_t n = 0;
//  106 //
//  107 //    if(num < TSL1401_MAX)
//  108 //    {
//  109 //        tsl1401_addr[num] = addr;
//  110 //    }
//  111 //    else if(num == TSL1401_MAX)
//  112 //    {
//  113 //        va_start(ap, addr);                         //��ȡ�ɱ�����б�ĵ�һ�������ĵ�ַ
//  114 //        value = addr;
//  115 //        while(num--)
//  116 //        {
//  117 //            tsl1401_addr[n++] = value;
//  118 //            value = va_arg(ap, uint8_t * );             //��ȡ�ɱ�����ĵ�ǰ����������ָ�����Ͳ���ָ��ָ����һ����
//  119 //        }
//  120 //
//  121 //        va_end(ap);                                 //���va_list�ɱ�����б�
//  122 //    }
//  123 //}
//  124 //
//  125 //
//  126 ////num Ϊ TSL1401_MAX ʱ������ȫ��LED����������Ӧ�� LED
//  127 //void tsl1401_led_en(TSL1401_e num)
//  128 //{
//  129 //    ASSERT(num <= TSL1401_MAX);
//  130 //
//  131 //    if(num < TSL1401_MAX)
//  132 //    {
//  133 //        gpio_init(tsl1401_led[num], GPO, 0);
//  134 //    }
//  135 //    else if(num == TSL1401_MAX)
//  136 //    {
//  137 //
//  138 //        while(num--)
//  139 //        {
//  140 //            gpio_init(tsl1401_led[num], GPO, 0);
//  141 //        }
//  142 //    }
//  143 //}
//  144 //
//  145 ////num Ϊ TSL1401_MAX ʱ������ȫ��LED����������Ӧ�� LED
//  146 //void tsl1401_led_dis(TSL1401_e num)
//  147 //{
//  148 //    ASSERT(num <= TSL1401_MAX);
//  149 //
//  150 //    if(num < TSL1401_MAX)
//  151 //    {
//  152 //        gpio_init(tsl1401_led[num], GPI, 1);
//  153 //    }
//  154 //    else if(num == TSL1401_MAX)
//  155 //    {
//  156 //
//  157 //        while(num--)
//  158 //        {
//  159 //            gpio_init(tsl1401_led[num], GPI, 1);
//  160 //        }
//  161 //    }
//  162 //}
//  163 //
//  164 ////tsl1401,����CCD�ɼ�ͼ��
//  165 //void tsl1401_get_img(void)
//  166 //{
//  167 //    tsl1401_flag = tsl1401_start;           //�����ɼ�
//  168 //    while(tsl1401_flag != tsl1401_finish);  //�ȴ��ɼ����
//  169 //}
//  170 //
//  171 ////��ȡ tsl1401,����CCD �ع�ʱ��
//  172 //uint32 tsl1401_get_time(void)
//  173 //{
//  174 //    return tsl1401_time;
//  175 //}
//  176 //
//  177 ////���� tsl1401,����CCD �ع�ʱ��
//  178 //void tsl1401_set_time(uint32 time)
//  179 //{
//  180 //    tsl1401_time = time;
//  181 //    TSL1401_INT_TIME(tsl1401_time);         //  �����ж�ʱ��
//  182 //}
//  183 //
//  184 ////���붨ʱ�ж���Ա��ڶ�ʱ��λ�ع�ʱ��
//  185 //void tsl1401_time_isr()
//  186 //{
//  187 //    //ֻ�ж��Ƿ�ʼ�ɼ����Ƿ�ɼ����
//  188 //    if(tsl1401_flag == tsl1401_start)
//  189 //    {
//  190 //        tsl1401_gather();
//  191 //        tsl1401_flag = tsl1401_finish;
//  192 //    }
//  193 //    else
//  194 //    {
//  195 //        tsl1401_restet();                   // ��λ
//  196 //    }
//  197 //}
//  198 //
//  199 //void tsl1401_delay( uint32 time )
//  200 //{
//  201 //    volatile uint32 i = time;
//  202 //
//  203 //    while(i--);
//  204 //}
//  205 //
//  206 //
//  207 ////�ɼ�ͼ��
//  208 //void tsl1401_gather(void)
//  209 //{
//  210 //#define TSL1401_TIME   10   //��ʱʱ��
//  211 //
//  212 //    uint8_t n = TSL1401_SIZE, k = 0;
//  213 //    uint8_t i;
//  214 //
//  215 //    tsl1401_clk_out(0);             //CLK = 0
//  216 //    tsl1401_delay(TSL1401_TIME);
//  217 //    tsl1401_si_out(1);              //SI  = 1
//  218 //    tsl1401_delay(TSL1401_TIME);
//  219 //    tsl1401_clk_out(1);             //CLK = 1
//  220 //    tsl1401_delay(TSL1401_TIME);
//  221 //
//  222 //    tsl1401_si_out(0);              //SI  = 0
//  223 //    tsl1401_delay(TSL1401_TIME);
//  224 //
//  225 //    while(n--)
//  226 //    {
//  227 //
//  228 //        tsl1401_clk_out(0);        //CLK = 0
//  229 //
//  230 //        i = TSL1401_MAX;
//  231 //        while(i--)
//  232 //        {
//  233 //            (tsl1401_addr[i])[k] = (uint8_t)adc_once(tsl1401_ch[i], ADC_8bit);
//  234 //            //*img++ =  adc_once(ADC1_AD8, ADC_8bit);
//  235 //        }
//  236 //
//  237 //        tsl1401_clk_out(1);        //CLK = 1
//  238 //        tsl1401_delay(TSL1401_TIME);
//  239 //        k++;
//  240 //    }
//  241 //#undef TSL1401_TIME
//  242 //}
//  243 //
//  244 ////���ڵ����ع�ʱ��
//  245 //void tsl1401_restet()
//  246 //{
//  247 //#define TSL1401_RETIME   1
//  248 //
//  249 //    uint8 n = TSL1401_SIZE;
//  250 //
//  251 //    tsl1401_clk_out(0);             //CLK = 0
//  252 //    tsl1401_delay(TSL1401_RETIME);
//  253 //    tsl1401_si_out(1);              //SI  = 1
//  254 //    tsl1401_delay(TSL1401_RETIME);
//  255 //    tsl1401_clk_out(1);             //CLK = 1
//  256 //    tsl1401_delay(TSL1401_RETIME);
//  257 //
//  258 //    tsl1401_si_out(0);              //SI  = 0
//  259 //    tsl1401_delay(TSL1401_RETIME);
//  260 //
//  261 //    while(n--)
//  262 //    {
//  263 //        tsl1401_clk_out(0);             //CLK = 0
//  264 //        tsl1401_delay(TSL1401_RETIME);
//  265 //        tsl1401_clk_out(1);             //CLK = 1
//  266 //        tsl1401_delay(TSL1401_RETIME);
//  267 //    }
//  268 //#undef TSL1401_RETIME
//  269 //}
//  270 //
//  271 //
// 
//
// 
//
//
//Errors: none
//Warnings: none
