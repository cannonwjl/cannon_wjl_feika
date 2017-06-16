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
//    2 * �ļ�����WINDOW.C
//    3 * ���ܣ����ڹ��������и��ִ��ڵĸ��Ƽ������ڲ����ơ�
//    4 * ���ߣ����ܱ�
//    5 * ���ڣ�2004.02.26
//    6 * ��ע��
//    7 ****************************************************************************************/
//    8 #include "config.h"
//    9 
//   10 #if  GUI_WINDOW_EN==1
//   11 /****************************************************************************
//   12 * ���ƣ�GUI_WindowsDraw()
//   13 * ���ܣ���ʾ���ڡ������ṩ�Ĵ��ڲ������л����ڡ�
//   14 * ��ڲ�����win		���ھ��
//   15 * ���ڲ���������0��ʾ����ʧ�ܣ�����1��ʾ�����ɹ�
//   16 ****************************************************************************/
//   17 uint8  GUI_WindowsDraw(WINDOWS *win)
//   18 {  uint8  *str;
//   19    int32  bak, bak1, bak2;
//   20    
//   21    /* �������ˣ������������Χ���򷵻�0 */
//   22    if( ( (win->with)<20 ) || ( (win->hight)<20 ) ) return(0);		// ��ȡ��߶ȼ�飬������С����
//   23    if( (win->x + win->with ) > GUI_LCM_XMAX ) return(0);			// ���ڿ���Ƿ����
//   24    if( (win->y + win->hight ) > GUI_LCM_YMAX ) return(0);			// ���ڸ߶��Ƿ����
//   25     
//   26    /* ��ʼ������ */
//   27    GUI_RectangleFill(win->x, win->y, win->x + win->with - 1, win->y + win->hight - 1, back_color);
//   28    GUI_Rectangle(win->x, win->y, win->x + win->with - 1, win->y + win->hight - 1, disp_color);	// ������
//   29    GUI_HLine(win->x, win->y + 12, win->x + win->with - 1, disp_color);							// ������Ŀ��
//   30    GUI_RLine(win->x + 12, win->y, win->y + 12, disp_color);										// ���رմ��Ű�ť
//   31    GUI_Line(win->x, win->y, win->x + 12, win->y + 12, disp_color);
//   32    GUI_Line(win->x + 12, win->y, win->x, win->y + 12, disp_color);
//   33    
//   34 
//   35    /* д���� */
//   36    if( win->title != NULL ) 
//   37    {  str = win->title;
//   38       bak = win->x + 15;
//   39       bak1 = win->y + 3;
//   40       bak2 = win->x + win->with -1;
//   41      
//   42       while(1)						
//   43       {  if( (bak+8) > bak2 ) break;								// �жϱ����Ƿ����
//   44          if(*str=='\0') break;										// �ж��ַ����Ƿ����
//   45          
//   46          GUI_PutChar(bak, bak1, *str++);							// ��ʾ����
//   47          bak += 6;
//   48       }
//   49    }
//   50 
//   51 
//   52    /* д״̬�� */
//   53    if( win->state != NULL )
//   54    {  if( win->hight < 60) return(0);								// �ж��Ƿ���Ի�״̬��
//   55       /* ��״̬�� */
//   56       GUI_HLine(win->x, win->y + win->hight - 11, win->x + win->with - 1, disp_color);
//   57       
//   58       str = win->state;
//   59       bak = win->x + 3;
//   60       bak1 = win->y + win->hight - 9;
//   61       bak2 = win->x + win->with -1;
//   62       
//   63       while(1)						
//   64       {  if( (bak+8) > bak2 ) break;								// �жϱ����Ƿ����
//   65          if(*str=='\0') break;										// �ж��ַ����Ƿ����
//   66          
//   67          GUI_PutChar(bak, bak1, *str++);							// ��ʾ����
//   68          bak += 6;
//   69       }      
//   70    }
//   71    return(1);
//   72 }
//   73 
//   74 
//   75 /****************************************************************************
//   76 * ���ƣ�GUI_WindowsHide()
//   77 * ���ܣ��������ڡ�
//   78 * ��ڲ�����win		���ھ��
//   79 * ���ڲ���������0��ʾ����ʧ�ܣ�����1��ʾ�����ɹ�
//   80 ****************************************************************************/
//   81 uint8  GUI_WindowsHide(WINDOWS *win)
//   82 {  /* �������ˣ������ڳ�����Χ���򷵻�0 */
//   83    if( ( (win->with)<20 ) || ( (win->hight)<20 ) ) return(0);		// ��ȡ��߶ȼ�飬������С����
//   84    if( (win->x + win->with ) > GUI_LCM_XMAX ) return(0);			// ���ڿ���Ƿ����
//   85    if( (win->y + win->hight ) > GUI_LCM_YMAX ) return(0);			// ���ڸ߶��Ƿ����
//   86     
//   87    /* �������� */
//   88    GUI_RectangleFill(win->x, win->y, win->x + win->with - 1, win->y + win->hight - 1, back_color);
//   89    return(1);
//   90 }
//   91 
//   92 
//   93 
//   94 /****************************************************************************
//   95 * ���ƣ�GUI_WindowsClr()
//   96 * ���ܣ��������ڡ�
//   97 * ��ڲ�����win		���ھ��
//   98 * ���ڲ�������
//   99 * ˵����ʹ�ô˺���ǰҪ��ʹ��GUI_WindowsDraw()�����ڻ�����
//  100 ****************************************************************************/
//  101 void  GUI_WindowsClr(WINDOWS *win)
//  102 {  uint8  x0, y0;
//  103    uint8  x1, y1;
//  104  
//  105    /* ����Ҫ���������� */
//  106    x0 = win->x + 1;
//  107    x1 = win->x + win->with - 2;
//  108    y0 = win->y + 13;
//  109    y1 = win->y + win->hight - 2;
//  110    if( win->state != NULL )			// �ж��Ƿ���״̬��				
//  111    {  if( win->hight >= 60)
//  112       {  y1 = win->y + win->hight - 12;
//  113       }
//  114    }
//  115 
//  116    /* ʹ��������ʵ������ */
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
