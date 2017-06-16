///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      12/Jun/2017  17:33:03
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\@@@@@@@\Car\Drivers\ZLG_GUI\windows.c
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EWFA34.tmp
//        (D:\@@@@@@@\Car\Drivers\ZLG_GUI\windows.c -D DEBUG -D
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
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\windows.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        RTMODEL "__dlib_full_locale_support", "1"
        RTMODEL "__dlib_version", "6"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1


        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// D:\@@@@@@@\Car\Drivers\ZLG_GUI\windows.c
//    1 /****************************************************************************************
//    2 * 文件名：WINDOW.C
//    3 * 功能：窗口管理。将进行各种窗口的给制及窗口内部控制。
//    4 * 作者：黄绍斌
//    5 * 日期：2004.02.26
//    6 * 备注：
//    7 ****************************************************************************************/
//    8 #include "config.h"
//    9 
//   10 #if  GUI_WINDOW_EN==1
//   11 /****************************************************************************
//   12 * 名称：GUI_WindowsDraw()
//   13 * 功能：显示窗口。根据提供的窗口参数进行画窗口。
//   14 * 入口参数：win		窗口句柄
//   15 * 出口参数：返回0表示操作失败，返回1表示操作成功
//   16 ****************************************************************************/
//   17 uint8  GUI_WindowsDraw(WINDOWS *win)
//   18 {  uint8  *str;
//   19    int32  bak, bak1, bak2;
//   20    
//   21    /* 参数过滤，若窗口起出范围，则返回0 */
//   22    if( ( (win->with)<20 ) || ( (win->hight)<20 ) ) return(0);		// 宽度、高度检查，限制最小窗口
//   23    if( (win->x + win->with ) > GUI_LCM_XMAX ) return(0);			// 窗口宽度是否溢出
//   24    if( (win->y + win->hight ) > GUI_LCM_YMAX ) return(0);			// 窗口高度是否溢出
//   25     
//   26    /* 开始画窗口 */
//   27    GUI_RectangleFill(win->x, win->y, win->x + win->with - 1, win->y + win->hight - 1, back_color);
//   28    GUI_Rectangle(win->x, win->y, win->x + win->with - 1, win->y + win->hight - 1, disp_color);	// 画窗口
//   29    GUI_HLine(win->x, win->y + 12, win->x + win->with - 1, disp_color);							// 画标题目栏
//   30    GUI_RLine(win->x + 12, win->y, win->y + 12, disp_color);										// 画关闭窗号按钮
//   31    GUI_Line(win->x, win->y, win->x + 12, win->y + 12, disp_color);
//   32    GUI_Line(win->x + 12, win->y, win->x, win->y + 12, disp_color);
//   33    
//   34 
//   35    /* 写标题 */
//   36    if( win->title != NULL ) 
//   37    {  str = win->title;
//   38       bak = win->x + 15;
//   39       bak1 = win->y + 3;
//   40       bak2 = win->x + win->with -1;
//   41      
//   42       while(1)						
//   43       {  if( (bak+8) > bak2 ) break;								// 判断标题是否溢出
//   44          if(*str=='\0') break;										// 判断字符串是否结束
//   45          
//   46          GUI_PutChar(bak, bak1, *str++);							// 显示标题
//   47          bak += 6;
//   48       }
//   49    }
//   50 
//   51 
//   52    /* 写状态栏 */
//   53    if( win->state != NULL )
//   54    {  if( win->hight < 60) return(0);								// 判断是否可以画状态栏
//   55       /* 画状态栏 */
//   56       GUI_HLine(win->x, win->y + win->hight - 11, win->x + win->with - 1, disp_color);
//   57       
//   58       str = win->state;
//   59       bak = win->x + 3;
//   60       bak1 = win->y + win->hight - 9;
//   61       bak2 = win->x + win->with -1;
//   62       
//   63       while(1)						
//   64       {  if( (bak+8) > bak2 ) break;								// 判断标题是否溢出
//   65          if(*str=='\0') break;										// 判断字符串是否结束
//   66          
//   67          GUI_PutChar(bak, bak1, *str++);							// 显示标题
//   68          bak += 6;
//   69       }      
//   70    }
//   71    return(1);
//   72 }
//   73 
//   74 
//   75 /****************************************************************************
//   76 * 名称：GUI_WindowsHide()
//   77 * 功能：消隐窗口。
//   78 * 入口参数：win		窗口句柄
//   79 * 出口参数：返回0表示操作失败，返回1表示操作成功
//   80 ****************************************************************************/
//   81 uint8  GUI_WindowsHide(WINDOWS *win)
//   82 {  /* 参数过滤，若窗口超出范围，则返回0 */
//   83    if( ( (win->with)<20 ) || ( (win->hight)<20 ) ) return(0);		// 宽度、高度检查，限制最小窗口
//   84    if( (win->x + win->with ) > GUI_LCM_XMAX ) return(0);			// 窗口宽度是否溢出
//   85    if( (win->y + win->hight ) > GUI_LCM_YMAX ) return(0);			// 窗口高度是否溢出
//   86     
//   87    /* 消隐窗口 */
//   88    GUI_RectangleFill(win->x, win->y, win->x + win->with - 1, win->y + win->hight - 1, back_color);
//   89    return(1);
//   90 }
//   91 
//   92 
//   93 
//   94 /****************************************************************************
//   95 * 名称：GUI_WindowsClr()
//   96 * 功能：清屏窗口。
//   97 * 入口参数：win		窗口句柄
//   98 * 出口参数：无
//   99 * 说明：使用此函数前要先使用GUI_WindowsDraw()将窗口画出。
//  100 ****************************************************************************/
//  101 void  GUI_WindowsClr(WINDOWS *win)
//  102 {  uint8  x0, y0;
//  103    uint8  x1, y1;
//  104  
//  105    /* 设置要清屏的区域 */
//  106    x0 = win->x + 1;
//  107    x1 = win->x + win->with - 2;
//  108    y0 = win->y + 13;
//  109    y1 = win->y + win->hight - 2;
//  110    if( win->state != NULL )			// 判断是否有状态栏				
//  111    {  if( win->hight >= 60)
//  112       {  y1 = win->y + win->hight - 12;
//  113       }
//  114    }
//  115 
//  116    /* 使用填充矩形实现清屏 */
//  117    GUI_RectangleFill(x0, y0, x1, y1, back_color);
//  118 }
//  119 #endif
//  120 
//  121 
//  122 
//  123 
//  124 
//  125 
//  126 
//  127 
//  128 
//  129 
//  130 
//  131 
// 
//
// 
//
//
//Errors: none
//Warnings: none
