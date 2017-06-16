///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      11/May/2017  11:14:11
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\@@@@@@@\Car\Board\src\Vcan_touch.c
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EW601A.tmp
//        (D:\@@@@@@@\Car\Board\src\Vcan_touch.c -D DEBUG -D
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
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\Vcan_touch.s
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
// D:\@@@@@@@\Car\Board\src\Vcan_touch.c
//    1 //#include "common.h"
//    2 //#include "MK60_port.h"
//    3 //#include "MK60_gpio.h"
//    4 //#include "MK60_spi.h"
//    5 //
//    6 //#include "VCAN_LCD.h"
//    7 //#include "Vcan_touch.h"
//    8 //
//    9 //
//   10 //#define XPT2046_INT_IN    PTX_T(TOUCH_INT_PTXn,IN)
//   11 //
//   12 //#define USE_TSLIB       1
//   13 //
//   14 //#if (USE_TSLIB )
//   15 //#define  TOUCH_COUNT    5
//   16 //
//   17 //typedef struct {
//   18 //    //x[5]/y[5] 是触摸值，xfb[5]/yfb[5] 是LCD坐标。a[7]是校正参数
//   19 //    int x[TOUCH_COUNT], xfb[TOUCH_COUNT];
//   20 //    int y[TOUCH_COUNT], yfb[TOUCH_COUNT];
//   21 //    int a[7];
//   22 //} calibration;
//   23 //
//   24 //#else
//   25 //#define  TOUCH_COUNT    4
//   26 //
//   27 //typedef struct {
//   28 //    //x[5]/y[5] 是触摸值，xfb[5]/yfb[5] 是LCD坐标。a[7]是校正参数
//   29 //    int x[TOUCH_COUNT], xfb[TOUCH_COUNT];
//   30 //    int y[TOUCH_COUNT], yfb[TOUCH_COUNT];
//   31 //    float a[7];
//   32 //} calibration;
//   33 //
//   34 //#endif
//   35 //
//   36 //
//   37 //static uint32 touch_baud;
//   38 //static uint32 touch_delay;
//   39 //
//   40 //static calibration cal;
//   41 //
//   42 //
//   43 //static int perform_calibration(calibration *cal);
//   44 //
//   45 //
//   46 ///*
//   47 // * 触摸模拟SPI IO 和 中断 IO 初始化
//   48 // */
//   49 //void touch_init(void)
//   50 //{
//   51 //    touch_baud = spi_init(TOUCH_SPI, TOUCH_CS, MASTER,150*1000);               //初始化SPI,主机模式
//   52 //
//   53 //    port_init(TOUCH_INT_PTXn,ALT1  | PULLUP | IRQ_FALLING);         //上拉、下降沿触发中断
//   54 //
//   55 //    touch_delay = 8*1000*1000 / touch_baud;
//   56 //
//   57 //    //gpio_init(TOUCH_CS_PTXn,GPO,0);
//   58 //}
//   59 //
//   60 ///******************************************************
//   61 //* 函数名：Touchl_Calibrate
//   62 //* 描述  ：触摸屏校正函数
//   63 //* 输入  : 无
//   64 //* 输出  ：1 --- 校正成功
//   65 //                    0   --- 校正失败
//   66 //* 举例  ：无
//   67 //* 注意  ：无
//   68 //*********************************************************/
//   69 //int touch_calibrate(void)
//   70 //{
//   71 //    uint16 lcd_h = LCD_H;
//   72 //    uint16 lcd_w = LCD_W;
//   73 //    uint8 i;
//   74 //    Site_t site;
//   75 //
//   76 //    //设置触摸屏校验点的位置
//   77 //    cal.xfb[0] = 40;
//   78 //    cal.yfb[0] = 40;
//   79 //
//   80 //    cal.xfb[1] = 40;
//   81 //    cal.yfb[1] = lcd_h - 40;
//   82 //
//   83 //    cal.xfb[2] = lcd_w - 40;
//   84 //    cal.yfb[2] = lcd_h - 40;
//   85 //
//   86 //    cal.xfb[3] = lcd_w -40;
//   87 //    cal.yfb[3] = 40;
//   88 //
//   89 //#if (USE_TSLIB )
//   90 //    cal.xfb[4] = lcd_w/2;
//   91 //    cal.yfb[4] = lcd_h/2;
//   92 //#endif
//   93 //
//   94 //    //循环显示5个触摸校验点，并获取触摸值
//   95 //    for(i = 0; i< TOUCH_COUNT;i++)
//   96 //    {
//   97 //        LCD_clear(BCOLOUR);                     //清屏
//   98 //
//   99 //        DELAY_MS(500);                          //延时，否则按得太快，导致触摸失败
//  100 //
//  101 //        site.x = cal.xfb[i];            //LCD显示触摸点十字图案
//  102 //        site.y = cal.yfb[i];
//  103 //        LCD_cross(site,10,FCOLOUR);
//  104 //
//  105 //        while(!xpt2046_read(&site));            //等待获取触摸点位置
//  106 //        cal.x[i] = site.x;
//  107 //        cal.y[i] = site.y;
//  108 //    }
//  109 //
//  110 //    LCD_clear(BCOLOUR);                     //清屏
//  111 //
//  112 //
//  113 //    //进行触摸校正
//  114 //    if( perform_calibration(&cal) )
//  115 //    {
//  116 //        return 1;
//  117 //    }
//  118 //    else
//  119 //    {
//  120 //        return 0;
//  121 //    }
//  122 //}
//  123 //
//  124 //int touch_get_point(Site_t *site)
//  125 //{
//  126 //    Site_t sitetmp;
//  127 //
//  128 //    if(xpt2046_read(&sitetmp))
//  129 //    {
//  130 //#if (USE_TSLIB )
//  131 //        site->x =( cal.a[0]
//  132 //                 + cal.a[1] * sitetmp.x
//  133 //                 + cal.a[2] * sitetmp.y)/cal.a[6];
//  134 //        site->y =( cal.a[3]
//  135 //                 + cal.a[4] * sitetmp.x
//  136 //                 + cal.a[5] * sitetmp.y)/cal.a[6];
//  137 //#else
//  138 //        site->x =( cal.a[0] * sitetmp.x
//  139 //                 + cal.a[1] * sitetmp.y
//  140 //                 + cal.a[2]             )/cal.a[6];
//  141 //        site->y =( cal.a[3] * sitetmp.x
//  142 //                 + cal.a[4] * sitetmp.y
//  143 //                 + cal.a[5]             )/cal.a[6];
//  144 //
//  145 //#endif
//  146 //        if((int16)site->x < 0)site->x = 0;
//  147 //        else if(site->x >= LCD_W ) site->x = LCD_W-1;
//  148 //        if((int16)site->y < 0)site->y = 0;
//  149 //        else if(site->y >= LCD_H ) site->y = LCD_H-1;
//  150 //        return 1;
//  151 //    }
//  152 //    else
//  153 //    {
//  154 //        return 0;
//  155 //    }
//  156 //
//  157 //}
//  158 //
//  159 //int touch_load(touch_call_back_func func)
//  160 //{
//  161 //    return func((uint8 *)&(cal.a[0]),sizeof(int)*7);
//  162 //}
//  163 //
//  164 //int touch_save(touch_call_back_func func)
//  165 //{
//  166 //    return func((uint8 *)&(cal.a[0]),sizeof(int)*7);
//  167 //}
//  168 //
//  169 //
//  170 ////tslib (touchscreen library)
//  171 //int perform_calibration(calibration *cal) {
//  172 //#if (USE_TSLIB )
//  173 //
//  174 //    int j;
//  175 //    float n, x, y, x2, y2, xy, z, zx, zy;
//  176 //    float det, a, b, c, e, f, i;
//  177 //    float scaling = 65536.0;
//  178 //
//  179 //// Get sums for matrix
//  180 //    n = x = y = x2 = y2 = xy = 0;
//  181 //    for(j=0;j<5;j++) {
//  182 //        n += 1.0;
//  183 //        x += (float)cal->x[j];
//  184 //        y += (float)cal->y[j];
//  185 //        x2 += (float)(cal->x[j]*cal->x[j]);
//  186 //        y2 += (float)(cal->y[j]*cal->y[j]);
//  187 //        xy += (float)(cal->x[j]*cal->y[j]);
//  188 //    }
//  189 //
//  190 //// Get determinant of matrix -- check if determinant is too small
//  191 //    det = n*(x2*y2 - xy*xy) + x*(xy*y - x*y2) + y*(x*xy - y*x2);
//  192 //    if(det < 0.1 && det > -0.1) {
//  193 //        //printf("ts_calibrate: determinant is too small -- %f\n",det);
//  194 //        return 0;
//  195 //    }
//  196 //
//  197 //// Get elements of inverse matrix
//  198 //    a = (x2*y2 - xy*xy)/det;
//  199 //    b = (xy*y - x*y2)/det;
//  200 //    c = (x*xy - y*x2)/det;
//  201 //    e = (n*y2 - y*y)/det;
//  202 //    f = (x*y - n*xy)/det;
//  203 //    i = (n*x2 - x*x)/det;
//  204 //
//  205 //// Get sums for x calibration
//  206 //    z = zx = zy = 0;
//  207 //    for(j=0;j<5;j++) {
//  208 //        z += (float)cal->xfb[j];
//  209 //        zx += (float)(cal->xfb[j]*cal->x[j]);
//  210 //        zy += (float)(cal->xfb[j]*cal->y[j]);
//  211 //    }
//  212 //
//  213 //// Now multiply out to get the calibration for framebuffer x coord
//  214 //    cal->a[0] = (int)((a*z + b*zx + c*zy)*(scaling));
//  215 //    cal->a[1] = (int)((b*z + e*zx + f*zy)*(scaling));
//  216 //    cal->a[2] = (int)((c*z + f*zx + i*zy)*(scaling));
//  217 //
//  218 ////    printf("%f %f %f\n",(a*z + b*zx + c*zy),
//  219 ////                (b*z + e*zx + f*zy),
//  220 ////                (c*z + f*zx + i*zy));
//  221 //
//  222 //// Get sums for y calibration
//  223 //    z = zx = zy = 0;
//  224 //    for(j=0;j<5;j++) {
//  225 //        z += (float)cal->yfb[j];
//  226 //        zx += (float)(cal->yfb[j]*cal->x[j]);
//  227 //        zy += (float)(cal->yfb[j]*cal->y[j]);
//  228 //    }
//  229 //
//  230 //// Now multiply out to get the calibration for framebuffer y coord
//  231 //    cal->a[3] = (int)((a*z + b*zx + c*zy)*(scaling));
//  232 //    cal->a[4] = (int)((b*z + e*zx + f*zy)*(scaling));
//  233 //    cal->a[5] = (int)((c*z + f*zx + i*zy)*(scaling));
//  234 //
//  235 ////    printf("%f %f %f\n",(a*z + b*zx + c*zy),
//  236 ////                (b*z + e*zx + f*zy),
//  237 ////                (c*z + f*zx + i*zy));
//  238 //
//  239 //// If we got here, we're OK, so assign scaling to a[6] and return
//  240 //    cal->a[6] = (int)scaling;
//  241 //    return 1;
//  242 ///*
//  243 //// This code was here originally to just insert default values
//  244 //    for(j=0;j<7;j++) {
//  245 //        c->a[j]=0;
//  246 //    }
//  247 //    c->a[1] = c->a[5] = c->a[6] = 1;
//  248 //    return 1;
//  249 //*/
//  250 //
//  251 //#else
//  252 ////#define  TOUXCH_DIV    (65536.0)
//  253 //
//  254 //    uint16 test_x=0, test_y=0;
//  255 //    uint16 gap_x=0, gap_y=0;
//  256 //
//  257 //
//  258 //    /* K＝(X0－X2) (Y1－Y2)－(X1－X2) (Y0－Y2) */
//  259 //    cal->a[6] = ((cal->x[0] - cal->x[2]) * (cal->y[1] - cal->y[2])) -
//  260 //                    ((cal->x[1] - cal->x[2]) * (cal->y[0] - cal->y[2])) ;
//  261 //
//  262 //    if( cal->a[6]  == 0 )
//  263 //    {
//  264 //        return 0;
//  265 //    }
//  266 //    else
//  267 //    {
//  268 //        /* A＝((XD0－XD2) (Y1－Y2)－(XD1－XD2) (Y0－Y2))／K */
//  269 //        cal->a[0] = (((cal->xfb[0] - cal->xfb[2]) * (cal->y[1] - cal->y[2])) -
//  270 //                   ((cal->xfb[1] - cal->xfb[2]) * (cal->y[0] - cal->y[2])));
//  271 //
//  272 //        /* B＝((X0－X2) (XD1－XD2)－(XD0－XD2) (X1－X2))／K */
//  273 //        cal->a[1] = (((cal->x[0] - cal->x[2]) * (cal->xfb[1] - cal->xfb[2])) -
//  274 //                   ((cal->xfb[0] - cal->xfb[2]) * (cal->x[1] - cal->x[2])));
//  275 //
//  276 //        /* C＝(Y0(X2XD1－X1XD2)+Y1(X0XD2－X2XD0)+Y2(X1XD0－X0XD1))／K */
//  277 //        cal->a[2] = ((cal->x[2] * cal->xfb[1] - cal->x[1] * cal->xfb[2]) * cal->y[0] +
//  278 //                   (cal->x[0] * cal->xfb[2] - cal->x[2] * cal->xfb[0]) * cal->y[1] +
//  279 //                   (cal->x[1] * cal->xfb[0] - cal->x[0] * cal->xfb[1]) * cal->y[2]);
//  280 //
//  281 //        /* D＝((YD0－YD2) (Y1－Y2)－(YD1－YD2) (Y0－Y2))／K */
//  282 //        cal->a[3] = (((cal->yfb[0] - cal->yfb[2]) * (cal->y[1] - cal->y[2])) -
//  283 //                   ((cal->yfb[1] - cal->yfb[2]) * (cal->y[0] - cal->y[2]))) ;
//  284 //
//  285 //        /* E＝((X0－X2) (YD1－YD2)－(YD0－YD2) (X1－X2))／K */
//  286 //        cal->a[4] = (((cal->x[0] - cal->x[2]) * (cal->yfb[1] - cal->yfb[2])) -
//  287 //                   ((cal->yfb[0] - cal->yfb[2]) * (cal->x[1] - cal->x[2]))) ;
//  288 //
//  289 //
//  290 //        /* F＝(Y0(X2YD1－X1YD2)+Y1(X0YD2－X2YD0)+Y2(X1YD0－X0YD1))／K */
//  291 //        cal->a[5] = ((cal->x[2] * cal->yfb[1] - cal->x[1] * cal->yfb[2]) * cal->y[0] +
//  292 //                   (cal->x[0] * cal->yfb[2] - cal->x[2] * cal->yfb[0]) * cal->y[1] +
//  293 //                   (cal->x[1] * cal->yfb[0] - cal->x[0] * cal->yfb[1]) * cal->y[2]);
//  294 //
//  295 //        //校验第4个点
//  296 //            /*取一个点计算X值*/
//  297 //        test_x = (( (cal->a[0] * cal->x[3]) +
//  298 //                   (cal->a[1] * cal->y[3]) +
//  299 //                    cal->a[2]
//  300 //                 )) / cal->a[6] ;
//  301 //
//  302 //            /*取一个点计算Y值*/
//  303 //        test_y = (( (cal->a[3] * cal->x[3]) +
//  304 //                   (cal->a[4] * cal->y[3]) +
//  305 //                   cal->a[5]
//  306 //                 )) / cal->a[6] ;
//  307 //
//  308 //        /* 实际坐标与计算坐标的差 */
//  309 //        gap_x = abs(test_x - cal->xfb[3]);
//  310 //        if(gap_x > 10)return 0;
//  311 //        gap_y = abs(test_y - cal->yfb[3]);
//  312 //        if(gap_y > 10)return 0;
//  313 //
//  314 //    }
//  315 //    return 1 ;
//  316 //
//  317 //#endif
//  318 //
//  319 //}
//  320 //
//  321 //
//  322 ///*
//  323 //*********************************************************************************************************
//  324 //*   函 数 名: TSC2046_ReadAdc
//  325 //*   功能说明: 选择一个模拟通道，启动ADC，并返回ADC采样结果
//  326 //*   形    参：_ucCh = 0x90 表示Y通道； 0xd0 表示X通道
//  327 //*   返 回 值: 12位ADC值
//  328 //*********************************************************************************************************
//  329 //*/
//  330 //uint16 xpt2046_read_ch(uint8_t _ucCh)
//  331 //{
//  332 //    uint16 tmp;
//  333 //    uint8 buff[2]={0,0};
//  334 //    spi_mosi_cmd(TOUCH_SPI,TOUCH_CS, &_ucCh ,NULL ,buff, buff, 1 , 2); //SPI发送接收函数
//  335 //                                                                                //发送命令 _ucCh ，读2个数据
//  336 //
//  337 //#if 1
//  338 //    //if(_ucCh == 0x90)
//  339 //    {
//  340 //        //tmp =  (buff[0]<<5);
//  341 //        //tmp |= (buff[1]>>3);
//  342 //        //tmp >>= 4;
//  343 //        tmp = buff[0] <<8;
//  344 //        tmp |= buff[1];
//  345 //        tmp >>= 3;
//  346 //
//  347 //        return tmp ;
//  348 //    }
//  349 ////    else
//  350 ////    {
//  351 ////        return (buff[0]<<4) | (buff[1]>>4);
//  352 ////    }
//  353 //#else
//  354 //
//  355 //#endif
//  356 //
//  357 //
//  358 //}
//  359 //
//  360 //
//  361 ///*
//  362 // * 读取TP x y 的AD值(12bit，最大是4096)
//  363 // */
//  364 //void xpt2046_get_xy(Site_t * site)
//  365 //{
//  366 //    DELAY_US(touch_delay);
//  367 //
//  368 //    site->x= xpt2046_read_ch(TOUCH_XCh_12bit);
//  369 //
//  370 //    DELAY_US(touch_delay);
//  371 //
//  372 //    site->y = xpt2046_read_ch(TOUCH_YCh_12bit);
//  373 //}
//  374 //
//  375 //
//  376 ///******************************************************
//  377 //* 函数名：Read_2046
//  378 //* 描述  ：得到简单滤波之后的X Y
//  379 //* 输入  ：Coordinate结构体地址
//  380 //* 输出  ：1成功，0失败
//  381 //* 举例  ：无
//  382 //* 注意  ：”画板应用实例"专用,不是很精准，但是速度比较快
//  383 //*********************************************************/
//  384 //
//  385 //uint8 xpt2046_read(Site_t * site )
//  386 //{
//  387 //#define READ_COUNT      3
//  388 //#define XPT2046_ERROR   40
//  389 //    //static Site_t screen;
//  390 //    uint8 count=0,i;
//  391 //    Site_t  sitexy;
//  392 //
//  393 //    uint32 sumx,sumy;
//  394 //
//  395 //    int buffer[2][READ_COUNT]={{0},{0}};  /*坐标X和Y进行多次采样*/
//  396 //
//  397 //    /* 循环采样 READ_COUNT 次 */
//  398 //    do{
//  399 //        xpt2046_get_xy(&sitexy);
//  400 //        if((sitexy.x == 0) || (sitexy.y == 0xFFF))return 0;//松手
//  401 //        buffer[0][count]=sitexy.x;
//  402 //        buffer[1][count]=sitexy.y;
//  403 //        count++;
//  404 //    }while(count<READ_COUNT); //用户点击触摸屏时即TP_INT_IN信号为低 并且 count<10
//  405 //
//  406 //    if(count == READ_COUNT)
//  407 //    {
//  408 //        //去掉最小值 和 最大值 ,并求平均值
//  409 //        sumx = buffer[0][0];
//  410 //        sumy = buffer[1][0];
//  411 //        for(i=1;i<READ_COUNT;i++)
//  412 //        {
//  413 //            sumx += buffer[0][i];
//  414 //            sumy += buffer[1][i];
//  415 //        }
//  416 //        site->x = sumx /READ_COUNT;
//  417 //        site->y = sumy /READ_COUNT;
//  418 //
//  419 //
//  420 //        //校验。判断有没有其他点超过 误差值
//  421 //        for(i=1;i<READ_COUNT;i++)
//  422 //        {
//  423 //            if(abs(buffer[0][i] -site->x ) > XPT2046_ERROR)
//  424 //            {
//  425 //                return 0;
//  426 //            }
//  427 //            if(abs(buffer[1][i] -site->y ) > XPT2046_ERROR)
//  428 //            {
//  429 //                return 0;
//  430 //            }
//  431 //
//  432 //        }
//  433 //
//  434 //        return 1;
//  435 //
//  436 //        //
//  437 //    }
//  438 //    return 0;
//  439 //
//  440 //}
//  441 //
//  442 //
//  443 //
//  444 //
//  445 //
//  446 //
//  447 //
//  448 //
//  449 //
// 
//
// 
//
//
//Errors: none
//Warnings: none
