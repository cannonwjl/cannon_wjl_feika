///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      11/May/2017  11:14:11
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\@@@@@@@\Car\Board\src\VCAN_RTC_count.C
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EW5DC5.tmp
//        (D:\@@@@@@@\Car\Board\src\VCAN_RTC_count.C -D DEBUG -D
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
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\VCAN_RTC_count.s
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
// D:\@@@@@@@\Car\Board\src\VCAN_RTC_count.C
//    1 // /*!
//    2 //  *     COPYRIGHT NOTICE
//    3 //  *     Copyright (c) 2013,ɽ��Ƽ�
//    4 //  *     All rights reserved.
//    5 //  *     �������ۣ�ɽ����̳ http://www.vcan123.com
//    6 //  *
//    7 //  *     ��ע�������⣬�����������ݰ�Ȩ����ɽ��Ƽ����У�δ����������������ҵ��;��
//    8 //  *     �޸�����ʱ���뱣��ɽ��Ƽ��İ�Ȩ������
//    9 //  *
//   10 //  * @file       VCAN_RTC_count.c
//   11 //  * @brief      rtc���ݼ��㺯��ʵ��(��1970-01-01 Ϊ��׼����2099-12-31)
//   12 //  * @author     ɽ��Ƽ�
//   13 //  * @version    v5.1
//   14 //  * @date       2014-01-12
//   15 //  */
//   16 //
//   17 //
//   18 ///*
//   19 // * ����ͷ�ļ�
//   20 // */
//   21 //#include "common.h"
//   22 //#include "VCAN_RTC_count.h"
//   23 //
//   24 //
//   25 //
//   26 //const uint8     mon_t[12]   ={ 31,28,31,30,31,30,31,31,30,31,30,31};                //ƽ����·�
//   27 //const uint8     mon2_t[12]  ={ 31,29,31,30,31,30,31,31,30,31,30,31};
//   28 //
//   29 //const uint16    momoff_t[]  ={ 0,31,59,90,120,151,181,212,243,273,304,334,365 };    //ƽ���ÿ��1�յ��ۼ�����
//   30 //const uint16    momoff2_t[] ={ 0,31,60,91,121,152,182,213,244,274,305,335,366 };    //�����ÿ��1�յ��ۼ�����
//   31 //
//   32 //
//   33 ///*!
//   34 // *  @brief      ����Ƿ�Ϊ����
//   35 // *  @param      year    ���
//   36 // *  @return     �Ƿ�Ϊ����(0��ʾƽ�꣬1��ʾ����)
//   37 // *  @since      v5.0
//   38 // *  Sample usage:       if( Is_LeapYear(2013) )         //��� 2013 �Ƿ�Ϊ����
//   39 //                        {
//   40 //                            printf("\n����!");          //
//   41 //                        }else
//   42 //                        {
//   43 //                            printf("\n�������꣡");
//   44 //                        }
//   45 // */
//   46 //uint8 Is_LeapYear(uint32 year)
//   47 //{
//   48 //    if(year%4 == 0)
//   49 //    {
//   50 //        if((year%100 != 0) || (year%400 == 0))
//   51 //        {
//   52 //            //����
//   53 //            return 1;
//   54 //        }
//   55 //    }
//   56 //
//   57 //    //��������
//   58 //    return 0;
//   59 //}
//   60 //
//   61 ///*!
//   62 // *  @brief      ����ݵ�����
//   63 // *  @param      year    ���
//   64 // *  @return     ָ����ݵ�����
//   65 // *  @since      v5.0
//   66 // *  Sample usage:       uint32 days = year2day(2013);
//   67 //                        printf("2013�깲%d��!",days);
//   68 // */
//   69 //uint32 year2day(uint32 year)
//   70 //{
//   71 //    return (365 + Is_LeapYear(year));
//   72 //}
//   73 //
//   74 ///*!
//   75 // *  @brief      ��1970-01-01 0:0:0 �� ָ��ʱ���������ʱ�����ʽתΪ������
//   76 // *  @param      time    ʱ��ṹ��
//   77 // *  @return     ��1970-01-01 0:0:0 �� ָ��ʱ���������
//   78 // *  @since      v5.0
//   79 // *  Sample usage:       time_s time = {2013,9,1,0,0,0};  //ʱ��Ϊ 2013-09-01 0:0:0
//   80 //                        printf("��%d��!",time2sec(time));
//   81 // */
//   82 //uint32 time2sec(time_s time)
//   83 //{
//   84 //    //�ο� linux�ں˴��� include/linux/time.h ��ĺ��� mktime()
//   85 //    //���ݸ�˹�㷨����year/mon/day/hour/min/sec����1980��12��31 23��59��59��
//   86 //    //��ʽ��ʾ��ʱ��ת��Ϊ�����1970��01��01 00��00��00
//   87 //    //���UNIXʱ���׼�������������
//   88 //
//   89 //    //ע��һ�㣬����Ķ��·���29�죬��������Ϊ28��
//   90 //    //����һ�򣬰��겻���İ�������
//   91 //
//   92 //    //���ʱ���Ƿ���Ч
//   93 //    ASSERT(time.year >= 1970);     //���ԣ��� 1970 Ϊ��׼�������СΪ 1970
//   94 //    ASSERT(time.year < 2100);      //���ԣ�32λ����������ɱ���136���ʱ�䣬���Ǵ˴��޶�������Ϊ2099��ʵ�����ǿɼ�ʱ�� 2105��12��31��
//   95 //    ASSERT(time.mon  <= 12);       //���ԣ��·����Ϊ12��
//   96 //    ASSERT(     ((Is_LeapYear(time.year) == 0) &&                    (time.day <= mon_t[time.mon-1])) //ƽ��
//   97 //           ||   ((Is_LeapYear(time.year) == 1) && (time.mon != 2) && (time.day <= mon_t[time.mon-1]))               //����ķ�2��
//   98 //           ||   ((Is_LeapYear(time.year) == 1) && (time.mon == 2) && (time.day <= 29))
//   99 //           );
//  100 //
//  101 //
//  102 //               //ASSERT((time.mon != 2) || ((time.mon == 2) && (time.day  <= 29)));   //���·����������� 29�졣
//  103 //    //ASSERT((time.mon == 2) && (time.year%4 ��= 0)); //��ݷ�4�ı�����������ͨ���
//  104 //
//  105 //
//  106 //    if (0 >= (int8) (time.mon -= 2)) /* 1..12 -> 11,12,1..10 */
//  107 //    {
//  108 //        time.mon += 12; /* Puts Feb last since it has leap day */
//  109 //        time.year -= 1;
//  110 //    }
//  111 //
//  112 //    return (((
//  113 //            (uint32) (time.year/4 - time.year/100 + time.year/400 + 367*(time.mon)/12 + time.day) + time.year*365 - 719499 /* ���е������� */
//  114 //            )*24 + time.hour /* ���е���Сʱ�� */
//  115 //            )*60 + time.min  /* ���е��ܷ����� */
//  116 //            )*60 + time.sec; /* ���յ�������   */
//  117 //}
//  118 //
//  119 ///*!
//  120 // *  @brief      ��1970-01-01 Ϊ��׼�������� תΪ������ʱ�����ʽ
//  121 // *  @param      sec     ������
//  122 // *  @param      time    ʱ��ṹ��
//  123 // *  @since      v5.0
//  124 // *  Sample usage:       time_s time;
//  125 //                        sec2time(1000,&time);   //��1000���Ӧ��ʱ��
//  126 //                        printf("\nʱ���ǣ�%d-%02d-%02d %02d:%02d:%02d",
//  127 //                                                time.year,time.mon,time.day,
//  128 //                                                time.hour,time.min,time.sec);
//  129 // */
//  130 //void sec2time(uint32 sec, time_s * time)
//  131 //{
//  132 //#define DAYSEC  (60*60*24)      //����ÿ���������
//  133 //    //uint32 i;
//  134 //    uint32  hms                //һ��ʣ�µ�����
//  135 //            ,day                //�������е�����
//  136 //            ,tmp;
//  137 //
//  138 //    uint16 const* dayoff ;
//  139 //    uint8  const* monoff;
//  140 //
//  141 //    if(sec > 0xf48656ff)    //ʱ�䳬�� 2099-12-31 23:59:59�󣬻�� 1970-1-1 0:0:0 ��ʼ��ʱ
//  142 //    {
//  143 //        sec -= 0xf48656ff;
//  144 //    }
//  145 //
//  146 //    day = sec / DAYSEC;
//  147 //    hms = sec % DAYSEC;
//  148 //
//  149 //    //����ʱ����
//  150 //    time->hour = (uint8) (hms / (60*60));         //ʱ
//  151 //    hms = hms % (60*60);
//  152 //    time->min = (uint8) (hms / 60);  //��
//  153 //    time->sec = (uint8) (hms % 60);   //��
//  154 //
//  155 //    /*�����ǰ��ݣ���ʼ�ļ������Ϊ1970��*/
//  156 //    time->year  =  (uint16)(day/366 );          //������� ���(��û�� 1970)
//  157 //
//  158 //    day = day
//  159 //            -  365*(time->year)    //����
//  160 //            - ((time->year +1)/4)  //4��һ����
//  161 //            //+ (time->year/(2101-1970) )      //2100�������꣬������������ 2099��������2100������˴�ע��
//  162 //            ;
//  163 //
//  164 //    time->year += 1970;
//  165 //    tmp = 365 + Is_LeapYear(time->year);        //ָ����ݵ� ����
//  166 //    if(day >= tmp)
//  167 //    {
//  168 //        time->year++;
//  169 //        day -=  tmp;
//  170 //    }
//  171 //
//  172 //    time->mon = (uint8)(day/31 +1);                 //�������·ݣ�������Ҫ��1
//  173 //
//  174 //    tmp = Is_LeapYear(time->year);
//  175 //    dayoff  = tmp ? momoff2_t : momoff_t;
//  176 //    monoff  = tmp ? mon2_t : mon_t;
//  177 //
//  178 //    time->day = (uint8)(day +1 - dayoff[time->mon -1]);
//  179 //
//  180 //    if(time->day > monoff[time->mon-1 ] )
//  181 //    {
//  182 //        time->mon++;
//  183 //        time->day = (uint8)(day +1 - dayoff[time->mon -1]);
//  184 //    }
//  185 //}
// 
//
// 
//
//
//Errors: none
//Warnings: none
