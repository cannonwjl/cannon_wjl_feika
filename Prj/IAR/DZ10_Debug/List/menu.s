///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      12/Jun/2017  17:32:51
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\@@@@@@@\Car\Drivers\ZLG_GUI\menu.c
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EWCDBB.tmp
//        (D:\@@@@@@@\Car\Drivers\ZLG_GUI\menu.c -D DEBUG -D
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
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\menu.s
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
// D:\@@@@@@@\Car\Drivers\ZLG_GUI\menu.c
//    1 /****************************************************************************************
//    2 * �ļ�����MENU.C
//    3 * ���ܣ��˵���ʾ������(����ʽ�˵�)��
//    4 * ���ߣ����ܱ�
//    5 * ���ڣ�2004.02.26
//    6 * ��ע��ʹ��GUI_SetBackColor()����������ʾ��ɫ������ɫ��
//    7 ****************************************************************************************/
//    8 #include "config.h"
//    9 
//   10 
//   11 #if  GUI_MenuDown_EN==1
//   12 /****************************************************************************
//   13 * ���ƣ�GUI_MMenuDraw()
//   14 * ���ܣ���ʾ���˵������ϱ߿�
//   15 * ��ڲ�����men		���˵����
//   16 * ���ڲ���������0��ʾ����ʧ�ܣ�����1��ʾ�����ɹ�
//   17 ****************************************************************************/
//   18 uint8  GUI_MMenuDraw(MMENU *men)
//   19 {  WINDOWS  *mwin;
//   20    uint8  i;
//   21    uint8  xx;
//   22 
//   23    /* �������� */
//   24    if( (men->no)==0 ) return(0);
//   25    
//   26    mwin = men->win;						// ȡ�ô��ھ��
//   27    /* �ж��Ƿ������ʾ���˵� */
//   28    if( (mwin->hight)<50 ) return(0);
//   29    if( (mwin->with)<50 ) return(0);
//   30    
//   31    /* ���˵���������ʾ������ */
//   32    GUI_HLine(mwin->x, mwin->y + 22, mwin->x + mwin->with - 1, disp_color);
//   33    
//   34    xx = mwin->x;
//   35    for(i=0; i<(men->no); i++)
//   36    {  if( (xx+MMENU_WIDTH) > (mwin->x + mwin->with) ) return(0);
//   37       
//   38       GUI_PutNoStr(xx+2, mwin->y + 14, men->str[i], 4);			// ��д���˵�����
//   39       xx += MMENU_WIDTH;
//   40       GUI_RLine(xx, mwin->y + 12, mwin->y + 22, disp_color);	// ��ʾ���˵��ֽ���      
//   41    }
//   42    
//   43    return(1);
//   44 }
//   45 
//   46 
//   47 /****************************************************************************
//   48 * ���ƣ�GUI_MMenuSelect()
//   49 * ���ܣ���ǰ���˵������»��ߣ���ʾ��ǰ���˵���
//   50 * ��ڲ�����men		���˵����
//   51 *          no		��ѡ�����˵���
//   52 * ���ڲ�������
//   53 ****************************************************************************/
//   54 void  GUI_MMenuSelect(MMENU *men, uint8 no)
//   55 {  WINDOWS  *mwin;
//   56    uint8  xx;
//   57 
//   58    /* �������� */
//   59    if( (men->no)==0 ) return;
//   60    if( no>(men->no) ) return;
//   61   
//   62    mwin = men->win;						// ȡ�ô��ھ��
//   63    /* �ж��Ƿ������ʾ���˵� */
//   64    if( (mwin->hight)<50 ) return;
//   65    if( (mwin->with)<50 ) return;
//   66    
//   67    /* ��ʾ�»��� */
//   68    xx = mwin->x + no*MMENU_WIDTH;
//   69    GUI_HLine(xx+1, mwin->y + 22-1, xx+MMENU_WIDTH- 1, disp_color);
//   70 }
//   71 
//   72 
//   73 /****************************************************************************
//   74 * ���ƣ�GUI_MMenuNSelect()
//   75 * ���ܣ�ȡ����ǰ���˵���ȥ���»��ߡ�
//   76 * ��ڲ�����men		���˵����
//   77 *          no		��ѡ�����˵���
//   78 * ���ڲ�������
//   79 ****************************************************************************/
//   80 void  GUI_MMenuNSelect(MMENU *men, uint8 no)
//   81 {  WINDOWS  *mwin;
//   82    uint8  xx;
//   83 
//   84    /* �������� */
//   85    if( (men->no)==0 ) return;
//   86    if( no>(men->no) ) return;
//   87   
//   88    mwin = men->win;						// ȡ�ô��ھ��
//   89    /* �ж��Ƿ������ʾ���˵� */
//   90    if( (mwin->hight)<50 ) return;
//   91    if( (mwin->with)<50 ) return;
//   92    
//   93    /* ��ʾ�»��� */
//   94    xx = mwin->x + no*MMENU_WIDTH;
//   95    GUI_HLine(xx+1, mwin->y + 22-1, xx+MMENU_WIDTH- 1, back_color);
//   96 }
//   97 
//   98 
//   99 
//  100 /****************************************************************************
//  101 * ���ƣ�GUI_SMenuDraw()
//  102 * ���ܣ���ʾ�Ӳ˵������ϱ߿�
//  103 * ��ڲ�����men		�Ӳ˵����
//  104 * ���ڲ���������0��ʾ����ʧ�ܣ�����1��ʾ�����ɹ�
//  105 ****************************************************************************/
//  106 uint8  GUI_SMenuDraw(SMENU *men)
//  107 {  WINDOWS  *mwin;
//  108    uint32   xx, yy;
//  109    uint8    i;
//  110 
//  111    mwin = men->win;
//  112    /* �ж��Ƿ������ʾ���˵� */
//  113    if( (mwin->hight)<50 ) return(0);
//  114    if( (mwin->with)<50 ) return(0);
//  115     
//  116    /* �����ӵ�������Ӳ˵�������������Ϊԭ�����ұ����������������ʾ */
//  117    xx = mwin->x;
//  118    xx += (men->mmenu_no)*MMENU_WIDTH;
//  119    yy = mwin->y + 22;
//  120    yy +=  (men->no) * 11 + 2;
//  121    if( (xx+SMENU_WIDTH) <= (mwin->x + mwin->with - 1) ) 
//  122    {  /* ��������Ϊԭ����ʾ�Ӳ˵� */
//  123       if( (men->mmenu_no) == 0 )
//  124       {  GUI_RLine(xx+SMENU_WIDTH, mwin->y + 22, yy, disp_color);
//  125          GUI_HLine(xx, yy, xx+SMENU_WIDTH, disp_color);
//  126       }
//  127       else
//  128       {  GUI_Rectangle(xx, mwin->y + 22, xx+SMENU_WIDTH, yy, disp_color);
//  129       }
//  130       GUI_HLine(xx+1, mwin->y + 22, xx+MMENU_WIDTH-1, back_color);
//  131       
//  132    }
//  133    else
//  134    {  /* ��������Ϊԭ�� */
//  135       if( (xx+MMENU_WIDTH) == (mwin->x + mwin->with - 1) )
//  136       {  GUI_RLine(xx-(SMENU_WIDTH-MMENU_WIDTH), mwin->y + 22, yy, disp_color);
//  137          GUI_HLine(xx-(SMENU_WIDTH-MMENU_WIDTH), yy, xx+MMENU_WIDTH, disp_color);
//  138          
//  139       }
//  140       else
//  141       {  GUI_Rectangle(xx-(SMENU_WIDTH-MMENU_WIDTH), mwin->y + 22, xx+MMENU_WIDTH, yy, disp_color);
//  142       }
//  143       GUI_HLine(xx+1, mwin->y + 22, xx+MMENU_WIDTH-1, back_color);
//  144       
//  145       xx = xx-(SMENU_WIDTH-MMENU_WIDTH);
//  146    }
//  147    
//  148    /* ��ʾ�˵����� */
//  149    xx++;
//  150    yy = mwin->y + 22 + 2;
//  151    for(i=0; i<(men->no); i++)
//  152    {  if( i == (men->state) )								// �ж���ѡ��Ĳ˵���
//  153       {  /* ��ʾ����ɫ */
//  154          GUI_RectangleFill(xx, yy, xx+SMENU_WIDTH-2, yy+10, disp_color);
//  155          /* ��ʾ�˵��ַ� */
//  156          GUI_ExchangeColor();
//  157          GUI_PutNoStr(xx+1, yy+1, men->str[i], 8);			// ��д�Ӳ˵�����
//  158          GUI_ExchangeColor();
//  159       }
//  160       else
//  161       {  /* ��ʾ����ɫ */
//  162          GUI_RectangleFill(xx, yy, xx+SMENU_WIDTH-2, yy+10, back_color);
//  163          /* ��ʾ�˵��ַ� */
//  164          GUI_PutNoStr(xx+1, yy+1, men->str[i], 8);			// ��д�Ӳ˵�����
//  165       }   
//  166       
//  167       yy += 11;
//  168    }
//  169     
//  170    return(1);
//  171 }
//  172 
//  173 
//  174 
//  175 /****************************************************************************
//  176 * ���ƣ�GUI_SMenuSelect()
//  177 * ���ܣ�ѡ���µ��Ӳ˵���
//  178 * ��ڲ�����men		�Ӳ˵����
//  179 *          old_no	ԭ��ѡ����Ӳ˵���
//  180 *		   new_no	��Ҫѡ����Ӳ˵���
//  181 * ���ڲ�������
//  182 ****************************************************************************/
//  183 void  GUI_SMenuSelect(SMENU *men, uint8 old_no, uint8 new_no)
//  184 {  WINDOWS  *mwin;
//  185    uint8  xx, yy;
//  186 
//  187    /* �������� */ 
//  188    if(old_no==new_no) return;
//  189    xx = men->no;
//  190    if( (old_no>xx) || (new_no>xx) ) return;
//  191    
//  192    /* �����µ�ѡ����Ӳ˵��� */
//  193    men->state = new_no;
//  194    
//  195    /* ���в˵�������ʾ */
//  196    mwin = men->win;	 
//  197    xx = mwin->x;
//  198    xx +=  (men->mmenu_no)*MMENU_WIDTH;
//  199    if( (xx+SMENU_WIDTH) > (mwin->x + mwin->with - 1) ) 
//  200    {  /* ��������Ϊԭ����ʾ�Ӳ˵�������xx��������� */
//  201       xx = xx-(SMENU_WIDTH-MMENU_WIDTH);
//  202    }
//  203    xx++;
//  204  
//  205    /* ȡ��ԭ�Ӳ˵�ѡ�� */  
//  206    yy = mwin->y + 22 + 2;
//  207    yy += old_no*11;
//  208    GUI_RectangleFill(xx, yy, xx+SMENU_WIDTH-2, yy+10, back_color);
//  209    GUI_PutNoStr(xx+1, yy+1, men->str[old_no], 8);
//  210    /* ѡ���µ��Ӳ˵� */
//  211    yy = mwin->y + 22 + 2;
//  212    yy += new_no*11;
//  213    GUI_RectangleFill(xx, yy, xx+SMENU_WIDTH-2, yy+10, disp_color);
//  214    GUI_ExchangeColor();
//  215    GUI_PutNoStr(xx+1, yy+1, men->str[new_no], 8);
//  216    GUI_ExchangeColor();
//  217 }
//  218 
//  219 
//  220 
//  221 /****************************************************************************
//  222 * ���ƣ�GUI_SMenuHide()
//  223 * ���ܣ������Ӳ˵��
//  224 * ��ڲ�����men		�Ӳ˵����
//  225 * ���ڲ���������0��ʾ����ʧ�ܣ�����1��ʾ�����ɹ�
//  226 ****************************************************************************/
//  227 uint8  GUI_SMenuHide(SMENU *men)
//  228 {  WINDOWS  *mwin;
//  229    uint8    xx, yy;
//  230 
//  231    mwin = men->win;
//  232    /* �ж��Ƿ������ʾ���˵� */
//  233    if( (mwin->hight)<50 ) return(0);
//  234    if( (mwin->with)<50 ) return(0);
//  235     
//  236    /* �����ӵ�������Ӳ˵�������������Ϊԭ�����ұ����������������ʾ */
//  237    xx = mwin->x;
//  238    xx +=  (men->mmenu_no)*MMENU_WIDTH;
//  239    yy = mwin->y + 22;
//  240    yy +=  (men->no) * 11 + 2;
//  241    if( (xx+SMENU_WIDTH) <= (mwin->x + mwin->with - 1) ) 
//  242    {  /* ��������Ϊԭ����ʾ�Ӳ˵� */
//  243       if( (men->mmenu_no) == 0 )
//  244       {  GUI_RectangleFill(xx+1, mwin->y + 22+1, xx+SMENU_WIDTH, yy, back_color);
//  245       }
//  246       else
//  247       {  GUI_RectangleFill(xx, mwin->y + 22+1, xx+SMENU_WIDTH, yy, back_color);
//  248       }
//  249       GUI_HLine(xx+1, mwin->y + 22, xx+MMENU_WIDTH-1, disp_color);
//  250    }
//  251    else
//  252    {  /* ��������Ϊԭ�� */
//  253       if( (xx+MMENU_WIDTH) == (mwin->x + mwin->with - 1) )
//  254       {  GUI_RectangleFill(xx-(SMENU_WIDTH-MMENU_WIDTH), mwin->y + 22+1, xx+MMENU_WIDTH-1, yy, back_color);
//  255       }
//  256       else
//  257       {  GUI_RectangleFill(xx-(SMENU_WIDTH-MMENU_WIDTH), mwin->y + 22+1, xx+MMENU_WIDTH, yy, back_color);
//  258       }
//  259       GUI_HLine(xx+1, mwin->y + 22, xx+MMENU_WIDTH-1, disp_color);
//  260    }
//  261     
//  262    return(1);
//  263 }
//  264 #endif
//  265 
//  266 
//  267 
//  268 
//  269 #if  GUI_MenuIco_EN==1
//  270 
//  271 /*--  ������һ��ͼ��C:\WINDOWS\Desktop\OK.bmp  --*/
//  272 /*--  ���x�߶�=49x14  --*/
//  273 /*--  ��Ȳ���8�ı������ֵ���Ϊ�����x�߶�=56x14  --*/
//  274 uint8  const  button_ok[] = 
//  275 {
//  276 0x07,0xFF,0xFF,0xFF,0xFF,0xF0,0x00,0x18,0x00,0x00,0x00,0x00,0x0C,0x00,0x20,0x00,
//  277 0x00,0x00,0x00,0x02,0x00,0x40,0x00,0x0E,0x76,0x00,0x01,0x00,0x80,0x00,0x11,0x24,
//  278 0x00,0x00,0x80,0x80,0x00,0x11,0x28,0x00,0x00,0x80,0x80,0x00,0x11,0x30,0x00,0x00,
//  279 0x80,0x80,0x00,0x11,0x28,0x00,0x00,0x80,0x80,0x00,0x11,0x28,0x00,0x00,0x80,0x80,
//  280 0x00,0x11,0x24,0x00,0x00,0x80,0x40,0x00,0x0E,0x76,0x00,0x01,0x00,0x20,0x00,0x00,
//  281 0x00,0x00,0x02,0x00,0x18,0x00,0x00,0x00,0x00,0x0C,0x00,0x07,0xFF,0xFF,0xFF,0xFF,
//  282 0xF0,0x00
//  283 };
//  284 
//  285 
//  286 
//  287 /*--  ������һ��ͼ��C:\WINDOWS\Desktop\OK1.bmp  --*/
//  288 /*--  ���x�߶�=49x14  --*/
//  289 /*--  ��Ȳ���8�ı������ֵ���Ϊ�����x�߶�=56x14  --*/
//  290 uint8  const  button_ok1[] = 
//  291 {
//  292 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x07,0xFF,0xFF,0xFF,0xFF,0xF0,0x00,0x1F,0xFF,
//  293 0xFF,0xFF,0xFF,0xFC,0x00,0x3F,0xFF,0xF1,0x89,0xFF,0xFE,0x00,0x7F,0xFF,0xEE,0xDB,
//  294 0xFF,0xFF,0x00,0x7F,0xFF,0xEE,0xD7,0xFF,0xFF,0x00,0x7F,0xFF,0xEE,0xCF,0xFF,0xFF,
//  295 0x00,0x7F,0xFF,0xEE,0xD7,0xFF,0xFF,0x00,0x7F,0xFF,0xEE,0xD7,0xFF,0xFF,0x00,0x7F,
//  296 0xFF,0xEE,0xDB,0xFF,0xFF,0x00,0x3F,0xFF,0xF1,0x89,0xFF,0xFE,0x00,0x1F,0xFF,0xFF,
//  297 0xFF,0xFF,0xFC,0x00,0x07,0xFF,0xFF,0xFF,0xFF,0xF0,0x00,0x00,0x00,0x00,0x00,0x00,
//  298 0x00,0x00
//  299 };
//  300 
//  301 
//  302 
//  303 /*--  ������һ��ͼ��C:\WINDOWS\Desktop\Cancle.bmp  --*/
//  304 /*--  ���x�߶�=49x14  --*/
//  305 /*--  ��Ȳ���8�ı������ֵ���Ϊ�����x�߶�=56x14  --*/
//  306 uint8  const  button_cancle[] =
//  307 {
//  308 0x07,0xFF,0xFF,0xFF,0xFF,0xF0,0x00,0x18,0x00,0x00,0x00,0x00,0x0C,0x00,0x20,0x00,
//  309 0x00,0x00,0x00,0x02,0x00,0x40,0xF0,0x00,0x00,0x07,0x01,0x00,0x81,0x10,0x00,0x00,
//  310 0x01,0x00,0x80,0x81,0x00,0x00,0x00,0x01,0x00,0x80,0x81,0x01,0x9E,0x1C,0x61,0x00,
//  311 0x80,0x81,0x02,0x49,0x24,0x91,0x00,0x80,0x81,0x01,0xC9,0x20,0xF1,0x00,0x80,0x81,
//  312 0x12,0x49,0x20,0x81,0x00,0x80,0x40,0xE1,0xFD,0x9C,0x77,0xC1,0x00,0x20,0x00,0x00,
//  313 0x00,0x00,0x02,0x00,0x18,0x00,0x00,0x00,0x00,0x0C,0x00,0x07,0xFF,0xFF,0xFF,0xFF,
//  314 0xF0,0x00
//  315 };
//  316 
//  317 
//  318 
//  319 
//  320 /*--  ������һ��ͼ��C:\WINDOWS\Desktop\Cancle1.bmp  --*/
//  321 /*--  ���x�߶�=49x14  --*/
//  322 /*--  ��Ȳ���8�ı������ֵ���Ϊ�����x�߶�=56x14  --*/
//  323 uint8  const  button_cancle1[] =
//  324 {
//  325 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x07,0xFF,0xFF,0xFF,0xFF,0xF0,0x00,0x1F,0xFF,
//  326 0xFF,0xFF,0xFF,0xFC,0x00,0x3F,0x0F,0xFF,0xFF,0xF8,0xFE,0x00,0x7E,0xEF,0xFF,0xFF,
//  327 0xFE,0xFF,0x00,0x7E,0xFF,0xFF,0xFF,0xFE,0xFF,0x00,0x7E,0xFE,0x61,0xE3,0x9E,0xFF,
//  328 0x00,0x7E,0xFD,0xB6,0xDB,0x6E,0xFF,0x00,0x7E,0xFE,0x36,0xDF,0x0E,0xFF,0x00,0x7E,
//  329 0xED,0xB6,0xDF,0x7E,0xFF,0x00,0x3F,0x1E,0x02,0x63,0x88,0x3E,0x00,0x1F,0xFF,0xFF,
//  330 0xFF,0xFF,0xFC,0x00,0x07,0xFF,0xFF,0xFF,0xFF,0xF0,0x00,0x00,0x00,0x00,0x00,0x00,
//  331 0x00,0x00
//  332 };
//  333 
//  334 
//  335 
//  336 
//  337 /****************************************************************************
//  338 * ���ƣ�GUI_Button49x14()
//  339 * ���ܣ���ʾ49*14��ť��
//  340 * ��ڲ����� x		ָ����ʾλ�ã�x����
//  341 *           y		ָ����ʾλ�ã�y����
//  342 *           dat		��ʾ�����ݵ�ַ
//  343 * ���ڲ�������
//  344 ****************************************************************************/
//  345 void  GUI_Button49x14(uint32 x, uint32 y, uint8 *dat)
//  346 {  GUI_LoadPic(x, y, (uint8 *)dat, 49, 14);
//  347 }
//  348 
//  349 
//  350 
//  351 /****************************************************************************
//  352 * ���ƣ�GUI_Button_OK()
//  353 * ���ܣ���ʾ49*14��ť"OK"��
//  354 * ��ڲ����� x		ָ����ʾλ�ã�x����
//  355 *           y		ָ����ʾλ�ã�y����
//  356 * ���ڲ�������
//  357 ****************************************************************************/
//  358 void  GUI_Button_OK(uint32 x, uint32 y)
//  359 {  GUI_LoadPic(x, y, (uint8 *) button_ok, 49, 14);
//  360 }
//  361 
//  362 
//  363 /****************************************************************************
//  364 * ���ƣ�GUI_Button_OK1()
//  365 * ���ܣ���ʾ49*14��ť��ѡ��״̬��"OK"��
//  366 * ��ڲ����� x		ָ����ʾλ�ã�x����
//  367 *           y		ָ����ʾλ�ã�y����
//  368 * ���ڲ�������
//  369 ****************************************************************************/
//  370 void  GUI_Button_OK1(uint32 x, uint32 y)
//  371 {  GUI_LoadPic(x, y, (uint8 *) button_ok1, 49, 14);
//  372 }
//  373 
//  374 
//  375 /****************************************************************************
//  376 * ���ƣ�GUI_Button_Cancle()
//  377 * ���ܣ���ʾ49*14��ť"Cancle"��
//  378 * ��ڲ����� x		ָ����ʾλ�ã�x����
//  379 *           y		ָ����ʾλ�ã�y����
//  380 * ���ڲ�������
//  381 ****************************************************************************/
//  382 void  GUI_Button_Cancle(uint32 x, uint32 y)
//  383 {  GUI_LoadPic(x, y, (uint8 *) button_cancle, 49, 14);
//  384 }
//  385 
//  386 
//  387 /****************************************************************************
//  388 * ���ƣ�GUI_Button_Cancle1()
//  389 * ���ܣ���ʾ49*14��ť��ѡ��״̬��"Cancle"��
//  390 * ��ڲ����� x		ָ����ʾλ�ã�x����
//  391 *           y		ָ����ʾλ�ã�y����
//  392 * ���ڲ�������
//  393 ****************************************************************************/
//  394 void  GUI_Button_Cancle1(uint32 x, uint32 y)
//  395 {  GUI_LoadPic(x, y, (uint8 *) button_cancle1, 49, 14);
//  396 }
//  397 
//  398 
//  399 
//  400 /****************************************************************************
//  401 * ���ƣ�GUI_MenuIcoDraw()
//  402 * ���ܣ���ʾͼ��˵���
//  403 * ��ڲ�����ico		ͼ��˵����
//  404 * ���ڲ���������0��ʾ����ʧ�ܣ�����1��ʾ�����ɹ�
//  405 ****************************************************************************/
//  406 uint8  GUI_MenuIcoDraw(MENUICO *ico)
//  407 {  
//  408    /* �������� */
//  409    if( ( (ico->x)<5 ) || ( (ico->x)>(GUI_LCM_XMAX-37 ) ) ) return(0);	// ��ʾ��ʼ��ַ�ж�
//  410    if( ( (ico->icodat)==NULL ) || ( (ico->title)==NULL ) ) return(0);	// ��ʾ���������ж�
//  411    
//  412    GUI_LoadPic(ico->x, ico->y, (uint8 *) ico->icodat, 32, 32);			// ��ʾICOͼ
//  413    GUI_HLine(ico->x-5, ico->y+32, ico->x+37, back_color);				// ��ʾһ����
//  414    if( (ico->state)==0 )
//  415    {  GUI_LoadPic(ico->x-5, ico->y+33, (uint8 *) ico->title, 42, 13);
//  416    }
//  417    else
//  418    {  GUI_LoadPic1(ico->x-5, ico->y+33, (uint8 *) ico->title, 42, 13);
//  419    }
//  420    
//  421    return(1);
//  422 }
//  423 #endif
// 
//
// 
//
//
//Errors: none
//Warnings: none
