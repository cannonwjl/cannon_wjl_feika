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
//    2 * 文件名：MENU.C
//    3 * 功能：菜单显示及操作(下拉式菜单)。
//    4 * 作者：黄绍斌
//    5 * 日期：2004.02.26
//    6 * 备注：使用GUI_SetBackColor()函数设置显示颜色及背景色。
//    7 ****************************************************************************************/
//    8 #include "config.h"
//    9 
//   10 
//   11 #if  GUI_MenuDown_EN==1
//   12 /****************************************************************************
//   13 * 名称：GUI_MMenuDraw()
//   14 * 功能：显示主菜单，加上边框。
//   15 * 入口参数：men		主菜单句柄
//   16 * 出口参数：返回0表示操作失败，返回1表示操作成功
//   17 ****************************************************************************/
//   18 uint8  GUI_MMenuDraw(MMENU *men)
//   19 {  WINDOWS  *mwin;
//   20    uint8  i;
//   21    uint8  xx;
//   22 
//   23    /* 参数过滤 */
//   24    if( (men->no)==0 ) return(0);
//   25    
//   26    mwin = men->win;						// 取得窗口句柄
//   27    /* 判断是否可以显示主菜单 */
//   28    if( (mwin->hight)<50 ) return(0);
//   29    if( (mwin->with)<50 ) return(0);
//   30    
//   31    /* 画菜单条，并显示菜主单 */
//   32    GUI_HLine(mwin->x, mwin->y + 22, mwin->x + mwin->with - 1, disp_color);
//   33    
//   34    xx = mwin->x;
//   35    for(i=0; i<(men->no); i++)
//   36    {  if( (xx+MMENU_WIDTH) > (mwin->x + mwin->with) ) return(0);
//   37       
//   38       GUI_PutNoStr(xx+2, mwin->y + 14, men->str[i], 4);			// 书写主菜单文字
//   39       xx += MMENU_WIDTH;
//   40       GUI_RLine(xx, mwin->y + 12, mwin->y + 22, disp_color);	// 显示主菜单分界线      
//   41    }
//   42    
//   43    return(1);
//   44 }
//   45 
//   46 
//   47 /****************************************************************************
//   48 * 名称：GUI_MMenuSelect()
//   49 * 功能：当前主菜单，加下划线，表示当前主菜单。
//   50 * 入口参数：men		主菜单句柄
//   51 *          no		所选的主菜单项
//   52 * 出口参数：无
//   53 ****************************************************************************/
//   54 void  GUI_MMenuSelect(MMENU *men, uint8 no)
//   55 {  WINDOWS  *mwin;
//   56    uint8  xx;
//   57 
//   58    /* 参数过滤 */
//   59    if( (men->no)==0 ) return;
//   60    if( no>(men->no) ) return;
//   61   
//   62    mwin = men->win;						// 取得窗口句柄
//   63    /* 判断是否可以显示主菜单 */
//   64    if( (mwin->hight)<50 ) return;
//   65    if( (mwin->with)<50 ) return;
//   66    
//   67    /* 显示下划线 */
//   68    xx = mwin->x + no*MMENU_WIDTH;
//   69    GUI_HLine(xx+1, mwin->y + 22-1, xx+MMENU_WIDTH- 1, disp_color);
//   70 }
//   71 
//   72 
//   73 /****************************************************************************
//   74 * 名称：GUI_MMenuNSelect()
//   75 * 功能：取消当前主菜单，去除下划线。
//   76 * 入口参数：men		主菜单句柄
//   77 *          no		所选的主菜单项
//   78 * 出口参数：无
//   79 ****************************************************************************/
//   80 void  GUI_MMenuNSelect(MMENU *men, uint8 no)
//   81 {  WINDOWS  *mwin;
//   82    uint8  xx;
//   83 
//   84    /* 参数过滤 */
//   85    if( (men->no)==0 ) return;
//   86    if( no>(men->no) ) return;
//   87   
//   88    mwin = men->win;						// 取得窗口句柄
//   89    /* 判断是否可以显示主菜单 */
//   90    if( (mwin->hight)<50 ) return;
//   91    if( (mwin->with)<50 ) return;
//   92    
//   93    /* 显示下划线 */
//   94    xx = mwin->x + no*MMENU_WIDTH;
//   95    GUI_HLine(xx+1, mwin->y + 22-1, xx+MMENU_WIDTH- 1, back_color);
//   96 }
//   97 
//   98 
//   99 
//  100 /****************************************************************************
//  101 * 名称：GUI_SMenuDraw()
//  102 * 功能：显示子菜单，加上边框。
//  103 * 入口参数：men		子菜单句柄
//  104 * 出口参数：返回0表示操作失败，返回1表示操作成功
//  105 ****************************************************************************/
//  106 uint8  GUI_SMenuDraw(SMENU *men)
//  107 {  WINDOWS  *mwin;
//  108    uint32   xx, yy;
//  109    uint8    i;
//  110 
//  111    mwin = men->win;
//  112    /* 判断是否可以显示主菜单 */
//  113    if( (mwin->hight)<50 ) return(0);
//  114    if( (mwin->with)<50 ) return(0);
//  115     
//  116    /* 画菜子单项。下拉子菜单，以向左下拉为原则，若右边溢出则以右下拉显示 */
//  117    xx = mwin->x;
//  118    xx += (men->mmenu_no)*MMENU_WIDTH;
//  119    yy = mwin->y + 22;
//  120    yy +=  (men->no) * 11 + 2;
//  121    if( (xx+SMENU_WIDTH) <= (mwin->x + mwin->with - 1) ) 
//  122    {  /* 以左下拉为原则显示子菜单 */
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
//  134    {  /* 以右下拉为原则 */
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
//  148    /* 显示菜单文字 */
//  149    xx++;
//  150    yy = mwin->y + 22 + 2;
//  151    for(i=0; i<(men->no); i++)
//  152    {  if( i == (men->state) )								// 判断所选择的菜单项
//  153       {  /* 显示背景色 */
//  154          GUI_RectangleFill(xx, yy, xx+SMENU_WIDTH-2, yy+10, disp_color);
//  155          /* 显示菜单字符 */
//  156          GUI_ExchangeColor();
//  157          GUI_PutNoStr(xx+1, yy+1, men->str[i], 8);			// 书写子菜单文字
//  158          GUI_ExchangeColor();
//  159       }
//  160       else
//  161       {  /* 显示背景色 */
//  162          GUI_RectangleFill(xx, yy, xx+SMENU_WIDTH-2, yy+10, back_color);
//  163          /* 显示菜单字符 */
//  164          GUI_PutNoStr(xx+1, yy+1, men->str[i], 8);			// 书写子菜单文字
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
//  176 * 名称：GUI_SMenuSelect()
//  177 * 功能：选择新的子菜单。
//  178 * 入口参数：men		子菜单句柄
//  179 *          old_no	原先选择的子菜单项
//  180 *		   new_no	现要选择的子菜单项
//  181 * 出口参数：无
//  182 ****************************************************************************/
//  183 void  GUI_SMenuSelect(SMENU *men, uint8 old_no, uint8 new_no)
//  184 {  WINDOWS  *mwin;
//  185    uint8  xx, yy;
//  186 
//  187    /* 参数过滤 */ 
//  188    if(old_no==new_no) return;
//  189    xx = men->no;
//  190    if( (old_no>xx) || (new_no>xx) ) return;
//  191    
//  192    /* 设置新的选择的子菜单项 */
//  193    men->state = new_no;
//  194    
//  195    /* 进行菜单反相显示 */
//  196    mwin = men->win;	 
//  197    xx = mwin->x;
//  198    xx +=  (men->mmenu_no)*MMENU_WIDTH;
//  199    if( (xx+SMENU_WIDTH) > (mwin->x + mwin->with - 1) ) 
//  200    {  /* 以右下拉为原则显示子菜单，所以xx设置在左端 */
//  201       xx = xx-(SMENU_WIDTH-MMENU_WIDTH);
//  202    }
//  203    xx++;
//  204  
//  205    /* 取消原子菜单选择 */  
//  206    yy = mwin->y + 22 + 2;
//  207    yy += old_no*11;
//  208    GUI_RectangleFill(xx, yy, xx+SMENU_WIDTH-2, yy+10, back_color);
//  209    GUI_PutNoStr(xx+1, yy+1, men->str[old_no], 8);
//  210    /* 选择新的子菜单 */
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
//  222 * 名称：GUI_SMenuHide()
//  223 * 功能：消隐子菜单项。
//  224 * 入口参数：men		子菜单句柄
//  225 * 出口参数：返回0表示操作失败，返回1表示操作成功
//  226 ****************************************************************************/
//  227 uint8  GUI_SMenuHide(SMENU *men)
//  228 {  WINDOWS  *mwin;
//  229    uint8    xx, yy;
//  230 
//  231    mwin = men->win;
//  232    /* 判断是否可以显示主菜单 */
//  233    if( (mwin->hight)<50 ) return(0);
//  234    if( (mwin->with)<50 ) return(0);
//  235     
//  236    /* 画菜子单项。下拉子菜单，以向左下拉为原则，若右边溢出则以右下拉显示 */
//  237    xx = mwin->x;
//  238    xx +=  (men->mmenu_no)*MMENU_WIDTH;
//  239    yy = mwin->y + 22;
//  240    yy +=  (men->no) * 11 + 2;
//  241    if( (xx+SMENU_WIDTH) <= (mwin->x + mwin->with - 1) ) 
//  242    {  /* 以左下拉为原则显示子菜单 */
//  243       if( (men->mmenu_no) == 0 )
//  244       {  GUI_RectangleFill(xx+1, mwin->y + 22+1, xx+SMENU_WIDTH, yy, back_color);
//  245       }
//  246       else
//  247       {  GUI_RectangleFill(xx, mwin->y + 22+1, xx+SMENU_WIDTH, yy, back_color);
//  248       }
//  249       GUI_HLine(xx+1, mwin->y + 22, xx+MMENU_WIDTH-1, disp_color);
//  250    }
//  251    else
//  252    {  /* 以右下拉为原则 */
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
//  271 /*--  调入了一幅图像：C:\WINDOWS\Desktop\OK.bmp  --*/
//  272 /*--  宽度x高度=49x14  --*/
//  273 /*--  宽度不是8的倍数，现调整为：宽度x高度=56x14  --*/
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
//  287 /*--  调入了一幅图像：C:\WINDOWS\Desktop\OK1.bmp  --*/
//  288 /*--  宽度x高度=49x14  --*/
//  289 /*--  宽度不是8的倍数，现调整为：宽度x高度=56x14  --*/
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
//  303 /*--  调入了一幅图像：C:\WINDOWS\Desktop\Cancle.bmp  --*/
//  304 /*--  宽度x高度=49x14  --*/
//  305 /*--  宽度不是8的倍数，现调整为：宽度x高度=56x14  --*/
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
//  320 /*--  调入了一幅图像：C:\WINDOWS\Desktop\Cancle1.bmp  --*/
//  321 /*--  宽度x高度=49x14  --*/
//  322 /*--  宽度不是8的倍数，现调整为：宽度x高度=56x14  --*/
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
//  338 * 名称：GUI_Button49x14()
//  339 * 功能：显示49*14按钮。
//  340 * 入口参数： x		指定显示位置，x坐标
//  341 *           y		指定显示位置，y坐标
//  342 *           dat		显示的数据地址
//  343 * 出口参数：无
//  344 ****************************************************************************/
//  345 void  GUI_Button49x14(uint32 x, uint32 y, uint8 *dat)
//  346 {  GUI_LoadPic(x, y, (uint8 *)dat, 49, 14);
//  347 }
//  348 
//  349 
//  350 
//  351 /****************************************************************************
//  352 * 名称：GUI_Button_OK()
//  353 * 功能：显示49*14按钮"OK"。
//  354 * 入口参数： x		指定显示位置，x坐标
//  355 *           y		指定显示位置，y坐标
//  356 * 出口参数：无
//  357 ****************************************************************************/
//  358 void  GUI_Button_OK(uint32 x, uint32 y)
//  359 {  GUI_LoadPic(x, y, (uint8 *) button_ok, 49, 14);
//  360 }
//  361 
//  362 
//  363 /****************************************************************************
//  364 * 名称：GUI_Button_OK1()
//  365 * 功能：显示49*14按钮，选择状态的"OK"。
//  366 * 入口参数： x		指定显示位置，x坐标
//  367 *           y		指定显示位置，y坐标
//  368 * 出口参数：无
//  369 ****************************************************************************/
//  370 void  GUI_Button_OK1(uint32 x, uint32 y)
//  371 {  GUI_LoadPic(x, y, (uint8 *) button_ok1, 49, 14);
//  372 }
//  373 
//  374 
//  375 /****************************************************************************
//  376 * 名称：GUI_Button_Cancle()
//  377 * 功能：显示49*14按钮"Cancle"。
//  378 * 入口参数： x		指定显示位置，x坐标
//  379 *           y		指定显示位置，y坐标
//  380 * 出口参数：无
//  381 ****************************************************************************/
//  382 void  GUI_Button_Cancle(uint32 x, uint32 y)
//  383 {  GUI_LoadPic(x, y, (uint8 *) button_cancle, 49, 14);
//  384 }
//  385 
//  386 
//  387 /****************************************************************************
//  388 * 名称：GUI_Button_Cancle1()
//  389 * 功能：显示49*14按钮，选择状态的"Cancle"。
//  390 * 入口参数： x		指定显示位置，x坐标
//  391 *           y		指定显示位置，y坐标
//  392 * 出口参数：无
//  393 ****************************************************************************/
//  394 void  GUI_Button_Cancle1(uint32 x, uint32 y)
//  395 {  GUI_LoadPic(x, y, (uint8 *) button_cancle1, 49, 14);
//  396 }
//  397 
//  398 
//  399 
//  400 /****************************************************************************
//  401 * 名称：GUI_MenuIcoDraw()
//  402 * 功能：显示图标菜单。
//  403 * 入口参数：ico		图标菜单句柄
//  404 * 出口参数：返回0表示操作失败，返回1表示操作成功
//  405 ****************************************************************************/
//  406 uint8  GUI_MenuIcoDraw(MENUICO *ico)
//  407 {  
//  408    /* 参数过滤 */
//  409    if( ( (ico->x)<5 ) || ( (ico->x)>(GUI_LCM_XMAX-37 ) ) ) return(0);	// 显示起始地址判断
//  410    if( ( (ico->icodat)==NULL ) || ( (ico->title)==NULL ) ) return(0);	// 显示数据内容判断
//  411    
//  412    GUI_LoadPic(ico->x, ico->y, (uint8 *) ico->icodat, 32, 32);			// 显示ICO图
//  413    GUI_HLine(ico->x-5, ico->y+32, ico->x+37, back_color);				// 显示一空行
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
