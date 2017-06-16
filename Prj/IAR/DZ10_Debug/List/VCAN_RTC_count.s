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
//    3 //  *     Copyright (c) 2013,山外科技
//    4 //  *     All rights reserved.
//    5 //  *     技术讨论：山外论坛 http://www.vcan123.com
//    6 //  *
//    7 //  *     除注明出处外，以下所有内容版权均属山外科技所有，未经允许，不得用于商业用途，
//    8 //  *     修改内容时必须保留山外科技的版权声明。
//    9 //  *
//   10 //  * @file       VCAN_RTC_count.c
//   11 //  * @brief      rtc数据计算函数实现(以1970-01-01 为基准，到2099-12-31)
//   12 //  * @author     山外科技
//   13 //  * @version    v5.1
//   14 //  * @date       2014-01-12
//   15 //  */
//   16 //
//   17 //
//   18 ///*
//   19 // * 包含头文件
//   20 // */
//   21 //#include "common.h"
//   22 //#include "VCAN_RTC_count.h"
//   23 //
//   24 //
//   25 //
//   26 //const uint8     mon_t[12]   ={ 31,28,31,30,31,30,31,31,30,31,30,31};                //平年的月份
//   27 //const uint8     mon2_t[12]  ={ 31,29,31,30,31,30,31,31,30,31,30,31};
//   28 //
//   29 //const uint16    momoff_t[]  ={ 0,31,59,90,120,151,181,212,243,273,304,334,365 };    //平年的每月1日的累加天数
//   30 //const uint16    momoff2_t[] ={ 0,31,60,91,121,152,182,213,244,274,305,335,366 };    //闰年的每月1日的累加天数
//   31 //
//   32 //
//   33 ///*!
//   34 // *  @brief      检测是否为闰年
//   35 // *  @param      year    年份
//   36 // *  @return     是否为闰年(0表示平年，1表示闰年)
//   37 // *  @since      v5.0
//   38 // *  Sample usage:       if( Is_LeapYear(2013) )         //检测 2013 是否为闰年
//   39 //                        {
//   40 //                            printf("\n闰年!");          //
//   41 //                        }else
//   42 //                        {
//   43 //                            printf("\n不是闰年！");
//   44 //                        }
//   45 // */
//   46 //uint8 Is_LeapYear(uint32 year)
//   47 //{
//   48 //    if(year%4 == 0)
//   49 //    {
//   50 //        if((year%100 != 0) || (year%400 == 0))
//   51 //        {
//   52 //            //闰年
//   53 //            return 1;
//   54 //        }
//   55 //    }
//   56 //
//   57 //    //不是闰年
//   58 //    return 0;
//   59 //}
//   60 //
//   61 ///*!
//   62 // *  @brief      求年份的天数
//   63 // *  @param      year    年份
//   64 // *  @return     指定年份的天数
//   65 // *  @since      v5.0
//   66 // *  Sample usage:       uint32 days = year2day(2013);
//   67 //                        printf("2013年共%d天!",days);
//   68 // */
//   69 //uint32 year2day(uint32 year)
//   70 //{
//   71 //    return (365 + Is_LeapYear(year));
//   72 //}
//   73 //
//   74 ///*!
//   75 // *  @brief      从1970-01-01 0:0:0 至 指定时间的年月日时分秒格式转为总秒数
//   76 // *  @param      time    时间结构体
//   77 // *  @return     从1970-01-01 0:0:0 至 指定时间的总秒数
//   78 // *  @since      v5.0
//   79 // *  Sample usage:       time_s time = {2013,9,1,0,0,0};  //时间为 2013-09-01 0:0:0
//   80 //                        printf("共%d秒!",time2sec(time));
//   81 // */
//   82 //uint32 time2sec(time_s time)
//   83 //{
//   84 //    //参考 linux内核代码 include/linux/time.h 里的函数 mktime()
//   85 //    //根据高斯算法将以year/mon/day/hour/min/sec（如1980－12－31 23：59：59）
//   86 //    //格式表示的时间转换为相对于1970－01－01 00：00：00
//   87 //    //这个UNIX时间基准以来的相对秒数
//   88 //
//   89 //    //注意一点，闰年的二月份是29天，非闰年则为28天
//   90 //    //四年一闰，百年不闰，四百年再闰
//   91 //
//   92 //    //检测时间是否有效
//   93 //    ASSERT(time.year >= 1970);     //断言，以 1970 为基准，年份最小为 1970
//   94 //    ASSERT(time.year < 2100);      //断言，32位的秒计数器可保存136年的时间，我们此处限定最大年份为2099，实际上是可计时到 2105年12月31日
//   95 //    ASSERT(time.mon  <= 12);       //断言，月份最多为12月
//   96 //    ASSERT(     ((Is_LeapYear(time.year) == 0) &&                    (time.day <= mon_t[time.mon-1])) //平年
//   97 //           ||   ((Is_LeapYear(time.year) == 1) && (time.mon != 2) && (time.day <= mon_t[time.mon-1]))               //闰年的非2月
//   98 //           ||   ((Is_LeapYear(time.year) == 1) && (time.mon == 2) && (time.day <= 29))
//   99 //           );
//  100 //
//  101 //
//  102 //               //ASSERT((time.mon != 2) || ((time.mon == 2) && (time.day  <= 29)));   //二月份天数不超过 29天。
//  103 //    //ASSERT((time.mon == 2) && (time.year%4 ！= 0)); //年份非4的倍数，则是普通年份
//  104 //
//  105 //
//  106 //    if (0 >= (int8) (time.mon -= 2)) /* 1..12 -> 11,12,1..10 */
//  107 //    {
//  108 //        time.mon += 12; /* Puts Feb last since it has leap day */
//  109 //        time.year -= 1;
//  110 //    }
//  111 //
//  112 //    return (((
//  113 //            (uint32) (time.year/4 - time.year/100 + time.year/400 + 367*(time.mon)/12 + time.day) + time.year*365 - 719499 /* 现有的总日数 */
//  114 //            )*24 + time.hour /* 现有的总小时数 */
//  115 //            )*60 + time.min  /* 现有的总分钟数 */
//  116 //            )*60 + time.sec; /* 最终的总秒数   */
//  117 //}
//  118 //
//  119 ///*!
//  120 // *  @brief      以1970-01-01 为基准的总秒数 转为年月日时分秒格式
//  121 // *  @param      sec     总秒数
//  122 // *  @param      time    时间结构体
//  123 // *  @since      v5.0
//  124 // *  Sample usage:       time_s time;
//  125 //                        sec2time(1000,&time);   //求1000秒对应的时间
//  126 //                        printf("\n时间是：%d-%02d-%02d %02d:%02d:%02d",
//  127 //                                                time.year,time.mon,time.day,
//  128 //                                                time.hour,time.min,time.sec);
//  129 // */
//  130 //void sec2time(uint32 sec, time_s * time)
//  131 //{
//  132 //#define DAYSEC  (60*60*24)      //定义每天的总秒数
//  133 //    //uint32 i;
//  134 //    uint32  hms                //一天剩下的秒数
//  135 //            ,day                //秒数共有的天数
//  136 //            ,tmp;
//  137 //
//  138 //    uint16 const* dayoff ;
//  139 //    uint8  const* monoff;
//  140 //
//  141 //    if(sec > 0xf48656ff)    //时间超过 2099-12-31 23:59:59后，会从 1970-1-1 0:0:0 开始计时
//  142 //    {
//  143 //        sec -= 0xf48656ff;
//  144 //    }
//  145 //
//  146 //    day = sec / DAYSEC;
//  147 //    hms = sec % DAYSEC;
//  148 //
//  149 //    //先求时分秒
//  150 //    time->hour = (uint8) (hms / (60*60));         //时
//  151 //    hms = hms % (60*60);
//  152 //    time->min = (uint8) (hms / 60);  //分
//  153 //    time->sec = (uint8) (hms % 60);   //秒
//  154 //
//  155 //    /*算出当前年份，起始的计数年份为1970年*/
//  156 //    time->year  =  (uint16)(day/366 );          //粗略求出 年份(还没加 1970)
//  157 //
//  158 //    day = day
//  159 //            -  365*(time->year)    //天数
//  160 //            - ((time->year +1)/4)  //4年一闰年
//  161 //            //+ (time->year/(2101-1970) )      //2100不是闰年，由于最大年份是 2099，不考虑2100，因而此处注释
//  162 //            ;
//  163 //
//  164 //    time->year += 1970;
//  165 //    tmp = 365 + Is_LeapYear(time->year);        //指定年份的 天数
//  166 //    if(day >= tmp)
//  167 //    {
//  168 //        time->year++;
//  169 //        day -=  tmp;
//  170 //    }
//  171 //
//  172 //    time->mon = (uint8)(day/31 +1);                 //粗略算月份，可能需要加1
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
