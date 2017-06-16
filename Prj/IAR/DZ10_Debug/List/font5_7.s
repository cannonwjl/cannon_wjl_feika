///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      12/Jun/2017  17:32:48
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\@@@@@@@\Car\Drivers\ZLG_GUI\font5_7.c
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EWC12A.tmp
//        (D:\@@@@@@@\Car\Drivers\ZLG_GUI\font5_7.c -D DEBUG -D
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
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\font5_7.s
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
        #define SHF_WRITE 0x1
        #define SHF_EXECINSTR 0x4

        EXTERN DCB2HEX_TAB
        EXTERN GUI_Point
        EXTERN back_color
        EXTERN disp_color

        PUBLIC FONT5x7ASCII
        PUBLIC GUI_PutChar
        PUBLIC GUI_PutNoStr
        PUBLIC GUI_PutString
        
          CFI Names cfiNames0
          CFI StackFrame CFA R13 DATA
          CFI Resource R0:32, R1:32, R2:32, R3:32, R4:32, R5:32, R6:32, R7:32
          CFI Resource R8:32, R9:32, R10:32, R11:32, R12:32, R13:32, R14:32
          CFI EndNames cfiNames0
        
          CFI Common cfiCommon0 Using cfiNames0
          CFI CodeAlign 2
          CFI DataAlign 4
          CFI ReturnAddress R14 CODE
          CFI CFA R13+0
          CFI R0 Undefined
          CFI R1 Undefined
          CFI R2 Undefined
          CFI R3 Undefined
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI R8 SameValue
          CFI R9 SameValue
          CFI R10 SameValue
          CFI R11 SameValue
          CFI R12 Undefined
          CFI R14 SameValue
          CFI EndCommon cfiCommon0
        
// D:\@@@@@@@\Car\Drivers\ZLG_GUI\font5_7.c
//    1 /****************************************************************************************
//    2 * 文件名：FONT5_7.C
//    3 * 功能：5*7 ASCII码字体及显示函数。
//    4 * 作者：黄绍斌
//    5 * 日期：2004.02.26
//    6 * 备注：使用GUI_SetColor()函数设置前景颜色及背景色。
//    7 ****************************************************************************************/
//    8 #include  "config.h"
//    9 
//   10 #if  FONT5x7_EN==1
//   11 
//   12 /* 5*7字体定义 */

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
//   13 const uint8 FONT5x7ASCII[][8] = {
FONT5x7ASCII:
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 128, 128, 128, 128, 128, 0, 128, 0, 160
        DC8 160, 160, 0, 0, 0, 0, 0, 80, 80, 248, 80, 248, 80, 80, 0, 32, 120
        DC8 160, 112, 40, 240, 32, 0, 192, 200, 16, 32, 64, 152, 24, 0, 96, 144
        DC8 160, 64, 168, 144, 104, 0, 192, 64, 128, 0, 0, 0, 0, 0, 32, 64, 128
        DC8 128, 128, 64, 32, 0, 128, 64, 32, 32, 32, 64, 128, 0, 0, 80, 32
        DC8 248, 32, 80, 0, 0, 0, 32, 32, 248, 32, 32, 0, 0, 0, 0, 0, 0, 0, 192
        DC8 64, 128, 0, 0, 0, 248, 0, 0, 0, 0, 0, 0, 0, 0, 0, 192, 192, 0, 0, 8
        DC8 16, 32, 64, 128, 0, 0, 112, 136, 152, 168, 200, 136, 112, 0, 32, 96
        DC8 32, 32, 32, 32, 112, 0, 112, 136, 8, 48, 64, 128, 248, 0, 112, 136
        DC8 8, 48, 8, 136, 112, 0, 16, 48, 80, 144, 248, 16, 16, 0, 248, 128
        DC8 240, 8, 8, 136, 112, 0, 48, 64, 128, 240, 136, 136, 112, 0, 248, 8
        DC8 16, 32, 64, 64, 64, 0, 112, 136, 136, 112, 136, 136, 112, 0, 112
        DC8 136, 136, 120, 8, 16, 96, 0, 0, 192, 192, 0, 192, 192, 0, 0, 0, 0
        DC8 192, 192, 0, 192, 64, 128, 16, 32, 64, 128, 64, 32, 16, 0, 0, 0
        DC8 248, 0, 248, 0, 0, 0, 128, 64, 32, 16, 32, 64, 128, 0, 112, 136, 8
        DC8 16, 32, 0, 32, 0, 112, 136, 8, 104, 168, 168, 112, 0, 112, 136, 136
        DC8 248, 136, 136, 136, 0, 240, 136, 136, 240, 136, 136, 240, 0, 112
        DC8 136, 128, 128, 128, 136, 112, 0, 224, 144, 136, 136, 136, 144, 224
        DC8 0, 248, 128, 128, 240, 128, 128, 248, 0, 248, 128, 128, 240, 128
        DC8 128, 128, 0, 112, 136, 128, 128, 152, 136, 120, 0, 136, 136, 136
        DC8 248, 136, 136, 136, 0, 224, 64, 64, 64, 64, 64, 224, 0, 56, 16, 16
        DC8 16, 16, 144, 96, 0, 136, 144, 160, 192, 160, 144, 136, 0, 128, 128
        DC8 128, 128, 128, 128, 248, 0, 136, 216, 168, 168, 136, 136, 136, 0
        DC8 136, 136, 200, 168, 152, 136, 136, 0, 112, 136, 136, 136, 136, 136
        DC8 112, 0, 240, 136, 136, 240, 128, 128, 128, 0, 112, 136, 136, 136
        DC8 168, 144, 104, 0, 240, 136, 136, 240, 160, 144, 136, 0, 112, 136
        DC8 128, 112, 8, 136, 112, 0, 248, 32, 32, 32, 32, 32, 32, 0, 136, 136
        DC8 136, 136, 136, 136, 112, 0, 136, 136, 136, 136, 136, 80, 32, 0, 136
        DC8 136, 136, 168, 168, 168, 80, 0, 136, 136, 80, 32, 80, 136, 136, 0
        DC8 136, 136, 80, 32, 32, 32, 32, 0, 248, 8, 16, 32, 64, 128, 248, 0
        DC8 224, 128, 128, 128, 128, 128, 224, 0, 0, 128, 64, 32, 16, 8, 0, 0
        DC8 224, 32, 32, 32, 32, 32, 224, 0, 32, 80, 136, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 248, 128, 64, 32, 0, 0, 0, 0, 0, 0, 0, 112, 8, 120
        DC8 136, 120, 0, 128, 128, 176, 200, 136, 136, 240, 0, 0, 0, 96, 144
        DC8 128, 144, 96, 0, 8, 8, 104, 152, 136, 136, 120, 0, 0, 0, 112, 136
        DC8 248, 128, 112, 0, 32, 80, 64, 224, 64, 64, 64, 0, 0, 0, 120, 136
        DC8 136, 120, 8, 112, 128, 128, 176, 200, 136, 136, 136, 0, 64, 0, 64
        DC8 64, 64, 64, 64, 0, 32, 0, 96, 32, 32, 32, 32, 192, 128, 128, 144
        DC8 160, 192, 160, 144, 0, 192, 64, 64, 64, 64, 64, 224, 0, 0, 0, 208
        DC8 168, 168, 136, 136, 0, 0, 0, 176, 208, 144, 144, 144, 0, 0, 0, 96
        DC8 144, 144, 144, 96, 0, 0, 0, 224, 144, 144, 224, 128, 128, 0, 0, 112
        DC8 144, 144, 112, 16, 16, 0, 0, 80, 96, 64, 64, 64, 0, 0, 0, 112, 128
        DC8 96, 16, 224, 0, 64, 64, 224, 64, 64, 64, 96, 0, 0, 0, 144, 144, 144
        DC8 144, 112, 0, 0, 0, 136, 136, 136, 80, 32, 0, 0, 0, 136, 136, 168
        DC8 168, 80, 0, 0, 0, 136, 80, 32, 80, 136, 0, 0, 0, 144, 144, 144, 112
        DC8 16, 96, 0, 0, 248, 16, 32, 64, 248, 0, 32, 64, 64, 128, 64, 64, 32
        DC8 0, 64, 64, 64, 64, 64, 64, 64, 0, 128, 64, 64, 32, 64, 64, 128, 0
        DC8 104, 144, 0, 0, 0, 0, 0, 0, 248, 248, 248, 248, 248, 248, 248, 0
//   14 /* 空格 */  
//   15   {
//   16    ________,
//   17    ________,
//   18    ________,
//   19    ________,
//   20    ________,
//   21    ________,
//   22    ________,
//   23    ________}
//   24 
//   25 /*  !  */
//   26  ,{
//   27    X_______,
//   28    X_______,
//   29    X_______,
//   30    X_______,
//   31    X_______,
//   32    ________,
//   33    X_______,
//   34    ________}
//   35 
//   36 
//   37 /*  "  */
//   38  ,{
//   39    X_X_____,
//   40    X_X_____,
//   41    X_X_____,
//   42    ________,
//   43    ________,
//   44    ________,
//   45    ________,
//   46    ________}
//   47 
//   48 /* #  */
//   49  ,{
//   50    _X_X____,
//   51    _X_X____,
//   52    XXXXX___,
//   53    _X_X____,
//   54    XXXXX___,
//   55    _X_X____,
//   56    _X_X____,
//   57    ________}
//   58 
//   59 /*  $  */
//   60  ,{
//   61    __X_____,
//   62    _XXXX___,
//   63    X_X_____,
//   64    _XXX____,
//   65    __X_X___,
//   66    XXXX____,
//   67    __X_____}
//   68 
//   69 /*  %  */
//   70  ,{
//   71    XX______,
//   72    XX__X___,
//   73    ___X____,
//   74    __X_____,
//   75    _X______,
//   76    X__XX___,
//   77    ___XX___,
//   78    ________}
//   79 
//   80 /*  &  */
//   81  ,{
//   82    _XX_____,
//   83    X__X____,
//   84    X_X_____,
//   85    _X______,
//   86    X_X_X___,
//   87    X__X____,
//   88    _XX_X___,
//   89    ________}
//   90 
//   91 /*  '  */
//   92  ,{
//   93    XX______,
//   94    _X______,
//   95    X_______,
//   96    ________,
//   97    ________,
//   98    ________,
//   99    ________,
//  100    ________}
//  101 
//  102 /*  (  */
//  103  ,{
//  104    __X_____,
//  105    _X______,
//  106    X_______,
//  107    X_______,
//  108    X_______,
//  109    _X______,
//  110    __X_____,
//  111    ________}
//  112 
//  113 /*  )  */
//  114  ,{
//  115    X_______,
//  116    _X______,
//  117    __X_____,
//  118    __X_____,
//  119    __X_____,
//  120    _X______,
//  121    X_______,
//  122    ________}
//  123 
//  124 /*  *  */
//  125  ,{
//  126    ________,
//  127    _X_X____,
//  128    __X_____,
//  129    XXXXX___,
//  130    __X_____,
//  131    _X_X____,
//  132    ________,
//  133    ________}
//  134 
//  135  ,{
//  136    ________,
//  137    __X_____,
//  138    __X_____,
//  139    XXXXX___,
//  140    __X_____,
//  141    __X_____,
//  142    ________,
//  143    ________}
//  144 
//  145  ,{
//  146    ________,
//  147    ________,
//  148    ________,
//  149    ________,
//  150    ________,
//  151    XX______,
//  152    _X______,
//  153    X_______}
//  154 
//  155  ,{
//  156    ________,
//  157    ________,
//  158    ________,
//  159    XXXXX___,
//  160    ________,
//  161    ________,
//  162    ________,
//  163    ________}
//  164 
//  165  ,{
//  166    ________,
//  167    ________,
//  168    ________,
//  169    ________,
//  170    ________,
//  171    XX______,
//  172    XX______,
//  173    ________}
//  174 
//  175  ,{
//  176    ________,
//  177    ____X___,
//  178    ___X____,
//  179    __X_____,
//  180    _X______,
//  181    X_______,
//  182    ________,
//  183    ________}
//  184 
//  185 /* 0 */
//  186  ,{
//  187    _XXX____,
//  188    X___X___,
//  189    X__XX___,
//  190    X_X_X___,
//  191    XX__X___,
//  192    X___X___,
//  193    _XXX____,
//  194    ________}
//  195 
//  196 /* 1 */
//  197  ,{
//  198    __X_____,
//  199    _XX_____,
//  200    __X_____,
//  201    __X_____,
//  202    __X_____,
//  203    __X_____,
//  204    _XXX____,
//  205    ________}
//  206 
//  207 /* 2 */
//  208  ,{
//  209    _XXX____,
//  210    X___X___,
//  211    ____X___,
//  212    __XX____,
//  213    _X______,
//  214    X_______,
//  215    XXXXX___,
//  216    ________}
//  217 
//  218 /* 3 */
//  219  ,{
//  220    _XXX____,
//  221    X___X___,
//  222    ____X___,
//  223    __XX____,
//  224    ____X___,
//  225    X___X___,
//  226    _XXX____,
//  227    ________}
//  228 
//  229 /* 4 */
//  230  ,{
//  231    ___X____,
//  232    __XX____,
//  233    _X_X____,
//  234    X__X____,
//  235    XXXXX___,
//  236    ___X____,
//  237    ___X____,
//  238    ________}
//  239 
//  240 /* 5 */
//  241  ,{
//  242    XXXXX___,
//  243    X_______,
//  244    XXXX____,
//  245    ____X___,
//  246    ____X___,
//  247    X___X___,
//  248    _XXX____,
//  249    ________}
//  250 
//  251 /* 6 */
//  252  ,{
//  253    __XX____,
//  254    _X______,
//  255    X_______,
//  256    XXXX____,
//  257    X___X___,
//  258    X___X___,
//  259    _XXX____,
//  260    ________}
//  261 
//  262 /* 7 */
//  263  ,{
//  264    XXXXX___,
//  265    ____X___,
//  266    ___X____,
//  267    __X_____,
//  268    _X______,
//  269    _X______,
//  270    _X______,
//  271    ________}
//  272 
//  273 /* 8 */
//  274  ,{
//  275    _XXX____,
//  276    X___X___,
//  277    X___X___,
//  278    _XXX____,
//  279    X___X___,
//  280    X___X___,
//  281    _XXX____,
//  282    ________}
//  283 
//  284 /* 9 */
//  285  ,{
//  286    _XXX____,
//  287    X___X___,
//  288    X___X___,
//  289    _XXXX___,
//  290    ____X___,
//  291    ___X____,
//  292    _XX_____,
//  293    ________}
//  294 
//  295 /* ':' 3a */
//  296  ,{
//  297    ________,
//  298    XX______,
//  299    XX______,
//  300    ________,
//  301    XX______,
//  302    XX______,
//  303    ________,
//  304    ________}
//  305 
//  306 /* ';' 3b */
//  307  ,{
//  308    ________,
//  309    ________,
//  310    XX______,
//  311    XX______,
//  312    ________,
//  313    XX______,
//  314    _X______,
//  315    X_______}
//  316 
//  317 
//  318 /* '<' 3c */
//  319  ,{
//  320    ___X____,
//  321    __X_____,
//  322    _X______,
//  323    X_______,
//  324    _X______,
//  325    __X_____,
//  326    ___X____,
//  327    ________}
//  328 
//  329 /* '=' 3d */
//  330  ,{
//  331    ________,
//  332    ________,
//  333    XXXXX___,
//  334    ________,
//  335    XXXXX___,
//  336    ________,
//  337    ________,
//  338    ________}
//  339 
//  340 /* '>' */
//  341  ,{
//  342    X_______,
//  343    _X______,
//  344    __X_____,
//  345    ___X____,
//  346    __X_____,
//  347    _X______,
//  348    X_______,
//  349    ________}
//  350 
//  351 /* '?' */
//  352  ,{
//  353    _XXX____,
//  354    X___X___,
//  355    ____X___,
//  356    ___X____,
//  357    __X_____,
//  358    ________,
//  359    __X_____,
//  360    ________}
//  361 
//  362 /* @ */
//  363  ,{
//  364    _XXX____,
//  365    X___X___,
//  366    ____X___,
//  367    _XX_X___,
//  368    X_X_X___,
//  369    X_X_X___,
//  370    _XXX____,
//  371    ________}
//  372 
//  373 /* A */
//  374  ,{
//  375    _XXX____,
//  376    X___X___,
//  377    X___X___,
//  378    XXXXX___,
//  379    X___X___,
//  380    X___X___,
//  381    X___X___,
//  382    ________}
//  383 
//  384 /* B */
//  385  ,{
//  386    XXXX____,
//  387    X___X___,
//  388    X___X___,
//  389    XXXX____,
//  390    X___X___,
//  391    X___X___,
//  392    XXXX____,
//  393    ________}
//  394 
//  395 /* C */
//  396  ,{
//  397    _XXX____,
//  398    X___X___,
//  399    X_______,
//  400    X_______,
//  401    X_______,
//  402    X___X___,
//  403    _XXX____,
//  404    ________}
//  405 
//  406 /* D */
//  407  ,{
//  408    XXX_____,
//  409    X__X____,
//  410    X___X___,
//  411    X___X___,
//  412    X___X___,
//  413    X__X____,
//  414    XXX_____,
//  415    ________}
//  416 
//  417 /* E */
//  418  ,{
//  419    XXXXX___,
//  420    X_______,
//  421    X_______,
//  422    XXXX____,
//  423    X_______,
//  424    X_______,
//  425    XXXXX___,
//  426    ________}
//  427 
//  428 /* F */
//  429  ,{
//  430    XXXXX___,
//  431    X_______,
//  432    X_______,
//  433    XXXX____,
//  434    X_______,
//  435    X_______,
//  436    X_______,
//  437    ________}
//  438 
//  439 /* G */
//  440  ,{
//  441    _XXX____,
//  442    X___X___,
//  443    X_______,
//  444    X_______,
//  445    X__XX___,
//  446    X___X___,
//  447    _XXXX___,
//  448    ________}
//  449 
//  450 /* H */
//  451  ,{
//  452    X___X___,
//  453    X___X___,
//  454    X___X___,
//  455    XXXXX___,
//  456    X___X___,
//  457    X___X___,
//  458    X___X___,
//  459    ________}
//  460 
//  461 /* I */
//  462  ,{
//  463    XXX_____,
//  464    _X______,
//  465    _X______,
//  466    _X______,
//  467    _X______,
//  468    _X______,
//  469    XXX_____,
//  470    ________}
//  471 
//  472 /* J */
//  473  ,{
//  474    __XXX___,
//  475    ___X____,
//  476    ___X____,
//  477    ___X____,
//  478    ___X____,
//  479    X__X____,
//  480    _XX_____,
//  481    ________}
//  482 
//  483 /* K */
//  484  ,{
//  485    X___X___,
//  486    X__X____,
//  487    X_X_____,
//  488    XX______,
//  489    X_X_____,
//  490    X__X____,
//  491    X___X___,
//  492    ________}
//  493 
//  494 /* L */
//  495  ,{
//  496    X_______,
//  497    X_______,
//  498    X_______,
//  499    X_______,
//  500    X_______,
//  501    X_______,
//  502    XXXXX___,
//  503    ________}
//  504 
//  505 /* M */
//  506  ,{
//  507    X___X___,
//  508    XX_XX___,
//  509    X_X_X___,
//  510    X_X_X___,
//  511    X___X___,
//  512    X___X___,
//  513    X___X___,
//  514    ________}
//  515 
//  516 /* N */
//  517  ,{
//  518    X___X___,
//  519    X___X___,
//  520    XX__X___,
//  521    X_X_X___,
//  522    X__XX___,
//  523    X___X___,
//  524    X___X___,
//  525    ________}
//  526 
//  527 /* O */
//  528  ,{
//  529    _XXX____,
//  530    X___X___,
//  531    X___X___,
//  532    X___X___,
//  533    X___X___,
//  534    X___X___,
//  535    _XXX____,
//  536    ________}
//  537 
//  538 /* P */
//  539  ,{
//  540    XXXX____,
//  541    X___X___,
//  542    X___X___,
//  543    XXXX____,
//  544    X_______,
//  545    X_______,
//  546    X_______,
//  547    ________}
//  548 
//  549 /* Q */
//  550  ,{
//  551    _XXX____,
//  552    X___X___,
//  553    X___X___,
//  554    X___X___,
//  555    X_X_X___,
//  556    X__X____,
//  557    _XX_X___,
//  558    ________}
//  559 
//  560 /* R */
//  561  ,{
//  562    XXXX____,
//  563    X___X___,
//  564    X___X___,
//  565    XXXX____,
//  566    X_X_____,
//  567    X__X____,
//  568    X___X___,
//  569    ________}
//  570 
//  571 /* S */
//  572  ,{
//  573    _XXX____,
//  574    X___X___,
//  575    X_______,
//  576    _XXX____,
//  577    ____X___,
//  578    X___X___,
//  579    _XXX____,
//  580    ________}
//  581 
//  582 /* T */
//  583  ,{
//  584    XXXXX___,
//  585    __X_____,
//  586    __X_____,
//  587    __X_____,
//  588    __X_____,
//  589    __X_____,
//  590    __X_____,
//  591    ________}
//  592 
//  593 /* U */
//  594  ,{
//  595    X___X___,
//  596    X___X___,
//  597    X___X___,
//  598    X___X___,
//  599    X___X___,
//  600    X___X___,
//  601    _XXX____,
//  602    ________}
//  603 
//  604 /* V */
//  605  ,{
//  606    X___X___,
//  607    X___X___,
//  608    X___X___,
//  609    X___X___,
//  610    X___X___,
//  611    _X_X____,
//  612    __X_____,
//  613    ________}
//  614 
//  615 /* W */
//  616  ,{
//  617    X___X___,
//  618    X___X___,
//  619    X___X___,
//  620    X_X_X___,
//  621    X_X_X___,
//  622    X_X_X___,
//  623    _X_X____,
//  624    ________}
//  625 
//  626 /* X */
//  627  ,{
//  628    X___X___,
//  629    X___X___,
//  630    _X_X____,
//  631    __X_____,
//  632    _X_X____,
//  633    X___X___,
//  634    X___X___,
//  635    ________}
//  636 
//  637 /* Y */
//  638  ,{
//  639    X___X___,
//  640    X___X___,
//  641    _X_X____,
//  642    __X_____,
//  643    __X_____,
//  644    __X_____,
//  645    __X_____,
//  646    ________}
//  647 
//  648 /* Z */
//  649  ,{
//  650    XXXXX___,
//  651    ____X___,
//  652    ___X____,
//  653    __X_____,
//  654    _X______,
//  655    X_______,
//  656    XXXXX___,
//  657    ________}
//  658 
//  659 /* 5b */
//  660  ,{
//  661    XXX_____,
//  662    X_______,
//  663    X_______,
//  664    X_______,
//  665    X_______,
//  666    X_______,
//  667    XXX_____,
//  668    ________}
//  669 
//  670 /* 5c */
//  671  ,{
//  672    ________,
//  673    X_______,
//  674    _X______,
//  675    __X_____,
//  676    ___X____,
//  677    ____X___,
//  678    ________,
//  679    ________}
//  680 
//  681 /* 5d */
//  682  ,{
//  683    XXX_____,
//  684    __X_____,
//  685    __X_____,
//  686    __X_____,
//  687    __X_____,
//  688    __X_____,
//  689    XXX_____,
//  690    ________}
//  691 
//  692 /* 5e */
//  693  ,{
//  694    __X_____,
//  695    _X_X____,
//  696    X___X___,
//  697    ________,
//  698    ________,
//  699    ________,
//  700    ________,
//  701    ________}
//  702 
//  703 /* 5f */
//  704  ,{
//  705    ________,
//  706    ________,
//  707    ________,
//  708    ________,
//  709    ________,
//  710    ________,
//  711    ________,
//  712    XXXXX___}
//  713 
//  714 /* 60 */
//  715  ,{
//  716    X_______,
//  717    _X______,
//  718    __X_____,
//  719    ________,
//  720    ________,
//  721    ________,
//  722    ________,
//  723    ________}
//  724 
//  725 /* a */
//  726  ,{
//  727    ________,
//  728    ________,
//  729    _XXX____,
//  730    ____X___,
//  731    _XXXX___,
//  732    X___X___,
//  733    _XXXX___,
//  734    ________}
//  735 
//  736 /* b */
//  737  ,{
//  738    X_______,
//  739    X_______,
//  740    X_XX____,
//  741    XX__X___,
//  742    X___X___,
//  743    X___X___,
//  744    XXXX____,
//  745    ________}
//  746 
//  747 /* c */
//  748  ,{
//  749    ________,
//  750    ________,
//  751    _XX_____,
//  752    X__X____,
//  753    X_______,
//  754    X__X____,
//  755    _XX_____,
//  756    ________}
//  757 
//  758 /* d */
//  759  ,{
//  760    ____X___,
//  761    ____X___,
//  762    _XX_X___,
//  763    X__XX___,
//  764    X___X___,
//  765    X___X___,
//  766    _XXXX___,
//  767    ________}
//  768 
//  769 /* e */
//  770  ,{
//  771    ________,
//  772    ________,
//  773    _XXX____,
//  774    X___X___,
//  775    XXXXX___,
//  776    X_______,
//  777    _XXX____,
//  778    ________}
//  779 
//  780 /* f */
//  781  ,{
//  782    __X_____,
//  783    _X_X____,
//  784    _X______,
//  785    XXX_____,
//  786    _X______,
//  787    _X______,
//  788    _X______,
//  789    ________}
//  790 
//  791 /* g */
//  792  ,{
//  793    ________,
//  794    ________,
//  795    _XXXX___,
//  796    X___X___,
//  797    X___X___,
//  798    _XXXX___,
//  799    ____X___,
//  800    _XXX____}
//  801 
//  802 /* h */
//  803  ,{
//  804    X_______,
//  805    X_______,
//  806    X_XX____,
//  807    XX__X___,
//  808    X___X___,
//  809    X___X___,
//  810    X___X___,
//  811    ________}
//  812 
//  813 /* i */
//  814  ,{
//  815    _X______,
//  816    ________,
//  817    _X______,
//  818    _X______,
//  819    _X______,
//  820    _X______,
//  821    _X______,
//  822    ________}
//  823 
//  824 /* j */
//  825  ,{
//  826    __X_____,
//  827    ________,
//  828    _XX_____,
//  829    __X_____,
//  830    __X_____,
//  831    __X_____,
//  832    __X_____,
//  833    XX______}
//  834 
//  835 /* k */
//  836  ,{
//  837    X_______,
//  838    X_______,
//  839    X__X____,
//  840    X_X_____,
//  841    XX______,
//  842    X_X_____,
//  843    X__X____,
//  844    ________}
//  845 
//  846 /* l */
//  847  ,{
//  848    XX______,
//  849    _X______,
//  850    _X______,
//  851    _X______,
//  852    _X______,
//  853    _X______,
//  854    XXX_____,
//  855    ________}
//  856 
//  857 /* m */
//  858  ,{
//  859    ________,
//  860    ________,
//  861    XX_X____,
//  862    X_X_X___,
//  863    X_X_X___,
//  864    X___X___,
//  865    X___X___,
//  866    ________}
//  867 
//  868 /* n */
//  869  ,{
//  870    ________,
//  871    ________,
//  872    X_XX____,
//  873    XX_X____,
//  874    X__X____,
//  875    X__X____,
//  876    X__X____,
//  877    ________}
//  878 
//  879 /* o */
//  880  ,{
//  881    ________,
//  882    ________,
//  883    _XX_____,
//  884    X__X____,
//  885    X__X____,
//  886    X__X____,
//  887    _XX_____,
//  888    ________}
//  889 
//  890 /* p */
//  891  ,{
//  892    ________,
//  893    ________,
//  894    XXX_____,
//  895    X__X____,
//  896    X__X____,
//  897    XXX_____,
//  898    X_______,
//  899    X_______}
//  900 
//  901 /* q */
//  902  ,{
//  903    ________,
//  904    ________,
//  905    _XXX____,
//  906    X__X____,
//  907    X__X____,
//  908    _XXX____,
//  909    ___X____,
//  910    ___X____}
//  911 
//  912 /* r */
//  913  ,{
//  914    ________,
//  915    ________,
//  916    _X_X____,
//  917    _XX_____,
//  918    _X______,
//  919    _X______,
//  920    _X______,
//  921    ________}
//  922 
//  923 /* s */
//  924  ,{
//  925    ________,
//  926    ________,
//  927    _XXX____,
//  928    X_______,
//  929    _XX_____,
//  930    ___X____,
//  931    XXX_____,
//  932    ________}
//  933 
//  934 /* t */
//  935  ,{
//  936    _X______,
//  937    _X______,
//  938    XXX_____,
//  939    _X______,
//  940    _X______,
//  941    _X______,
//  942    _XX_____,
//  943    ________}
//  944 
//  945 /* u */
//  946  ,{
//  947    ________,
//  948    ________,
//  949    X__X____,
//  950    X__X____,
//  951    X__X____,
//  952    X__X____,
//  953    _XXX____,
//  954    ________}
//  955 
//  956 /* v */
//  957  ,{
//  958    ________,
//  959    ________,
//  960    X___X___,
//  961    X___X___,
//  962    X___X___,
//  963    _X_X____,
//  964    __X_____,
//  965    ________}
//  966 
//  967 /* w */
//  968  ,{
//  969    ________,
//  970    ________,
//  971    X___X___,
//  972    X___X___,
//  973    X_X_X___,
//  974    X_X_X___,
//  975    _X_X____,
//  976    ________}
//  977 
//  978 /* X */
//  979  ,{
//  980    ________,
//  981    ________,
//  982    X___X___,
//  983    _X_X____,
//  984    __X_____,
//  985    _X_X____,
//  986    X___X___,
//  987    ________}
//  988 
//  989 /* y */
//  990  ,{
//  991    ________,
//  992    ________,
//  993    X__X____,
//  994    X__X____,
//  995    X__X____,
//  996    _XXX____,
//  997    ___X____,
//  998    _XX_____}
//  999 
// 1000 /* z */
// 1001  ,{
// 1002    ________,
// 1003    ________,
// 1004    XXXXX___,
// 1005    ___X____,
// 1006    __X_____,
// 1007    _X______,
// 1008    XXXXX___,
// 1009    ________}
// 1010 
// 1011 /* 0x7b */
// 1012  ,{
// 1013    __X_____,
// 1014    _X______,
// 1015    _X______,
// 1016    X_______,
// 1017    _X______,
// 1018    _X______,
// 1019    __X_____,
// 1020    ________}
// 1021 
// 1022 /* 0x7c */
// 1023  ,{
// 1024    _X______,
// 1025    _X______,
// 1026    _X______,
// 1027    _X______,
// 1028    _X______,
// 1029    _X______,
// 1030    _X______,
// 1031    ________}
// 1032 
// 1033 /* 0x7d */
// 1034  ,{
// 1035    X_______,
// 1036    _X______,
// 1037    _X______,
// 1038    __X_____,
// 1039    _X______,
// 1040    _X______,
// 1041    X_______,
// 1042    ________}
// 1043 
// 1044 /* 0x7e */
// 1045  ,{
// 1046    _XX_X___,
// 1047    X__X____,
// 1048    ________,
// 1049    ________,
// 1050    ________,
// 1051    ________,
// 1052    ________,
// 1053    ________}
// 1054    
// 1055 /* 0x7f */
// 1056  ,{
// 1057    XXXXX___,
// 1058    XXXXX___,
// 1059    XXXXX___,
// 1060    XXXXX___,
// 1061    XXXXX___,
// 1062    XXXXX___,
// 1063    XXXXX___,
// 1064    ________}
// 1065    
// 1066 };
// 1067 
// 1068 
// 1069 /****************************************************************************
// 1070 * 名称：GUI_PutChar()
// 1071 * 功能：显示ASCII码，显示值为20H-7FH(若为其它值，则显示' ')。
// 1072 * 入口参数： x		指定显示位置，x坐标
// 1073 *           y		指定显示位置，y坐标
// 1074 *           ch		要显示的ASCII码值。
// 1075 * 出口参数：返回值为1时表示操作成功，为0时表示操作失败。
// 1076 * 说明：操作失败原因是指定地址超出有效范围。(显示格式为6*8)
// 1077 ****************************************************************************/

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function GUI_PutChar
        THUMB
// 1078 __ramfunc uint8  GUI_PutChar(uint32 x, uint32 y, uint8 ch)
// 1079 {  uint8   font_dat;
GUI_PutChar:
        PUSH     {R4-R10,LR}
          CFI R14 Frame(CFA, -4)
          CFI R10 Frame(CFA, -8)
          CFI R9 Frame(CFA, -12)
          CFI R8 Frame(CFA, -16)
          CFI R7 Frame(CFA, -20)
          CFI R6 Frame(CFA, -24)
          CFI R5 Frame(CFA, -28)
          CFI R4 Frame(CFA, -32)
          CFI CFA R13+32
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
// 1080    uint8   i, j;
// 1081    TCOLOR  bakc;
// 1082 
// 1083    /* 参数过滤 */
// 1084    if( x>(GUI_LCM_XMAX-8) ) return(0);
        CMP      R4,#+121
        BCC.N    ??GUI_PutChar_0
        MOVS     R0,#+0
        B.N      ??GUI_PutChar_1
// 1085    if( y>(GUI_LCM_YMAX-8) ) return(0);
??GUI_PutChar_0:
        CMP      R5,#+57
        BCC.N    ??GUI_PutChar_2
        MOVS     R0,#+0
        B.N      ??GUI_PutChar_1
// 1086    if( (ch<0x20) || (ch>0x7f) ) ch = 0x20;
??GUI_PutChar_2:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+32
        BLT.N    ??GUI_PutChar_3
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+128
        BLT.N    ??GUI_PutChar_4
??GUI_PutChar_3:
        MOVS     R0,#+32
        MOVS     R6,R0
// 1087    
// 1088    ch -= 0x20; 
??GUI_PutChar_4:
        SUBS     R6,R6,#+32
// 1089    for(i=0; i<8; i++)
        MOVS     R0,#+0
        MOV      R8,R0
??GUI_PutChar_5:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+8
        BGE.N    ??GUI_PutChar_6
// 1090    {  /* 读取点阵数据 */
// 1091       font_dat = FONT5x7ASCII[ch][i];
        LDR.N    R0,??DataTable0
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADD      R0,R0,R6, LSL #+3
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        LDRB     R0,[R0, R8]
        MOVS     R7,R0
// 1092       
// 1093       for(j=0; j<6; j++)
        MOVS     R0,#+0
        MOV      R9,R0
??GUI_PutChar_7:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+6
        BGE.N    ??GUI_PutChar_8
// 1094       {  /* 设置相应的点为color或为back_color */
// 1095          if( (font_dat&DCB2HEX_TAB[j])==0 ) GUI_CopyColor(&bakc, back_color);
        LDR.N    R0,??DataTable0_1
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        LDRB     R1,[R0, R9]
        TST      R7,R1
        BNE.N    ??GUI_PutChar_9
        LDR.N    R0,??DataTable0_2
        LDRB     R0,[R0, #+0]
        MOV      R10,R0
        B.N      ??GUI_PutChar_10
// 1096             else  GUI_CopyColor(&bakc, disp_color);
??GUI_PutChar_9:
        LDR.N    R0,??DataTable0_3
        LDRB     R0,[R0, #+0]
        MOV      R10,R0
// 1097          GUI_Point(x, y, bakc);       
??GUI_PutChar_10:
        MOV      R2,R10
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_Point
        BL       GUI_Point
// 1098          x++;
        ADDS     R4,R4,#+1
// 1099       }
        ADDS     R9,R9,#+1
        B.N      ??GUI_PutChar_7
// 1100       
// 1101       y++;									// 指向下一行
??GUI_PutChar_8:
        ADDS     R5,R5,#+1
// 1102       x -= 6;								// 恢复x值
        SUBS     R4,R4,#+6
// 1103    }
        ADDS     R8,R8,#+1
        B.N      ??GUI_PutChar_5
// 1104    
// 1105    return(1);
??GUI_PutChar_6:
        MOVS     R0,#+1
??GUI_PutChar_1:
        POP      {R4-R10,PC}      ;; return
// 1106 }
          CFI EndBlock cfiBlock0

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable0:
        DC32     FONT5x7ASCII

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable0_1:
        DC32     DCB2HEX_TAB

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable0_2:
        DC32     back_color

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable0_3:
        DC32     disp_color
// 1107 
// 1108 
// 1109 
// 1110 /****************************************************************************
// 1111 * 名称：GUI_PutString()
// 1112 * 功能：输出显示字符串(没有自动换行功能)。
// 1113 * 入口参数： x		指定显示位置，x坐标
// 1114 *           y		指定显示位置，y坐标
// 1115 *           str		要显示的ASCII码字符串
// 1116 * 出口参数：无
// 1117 * 说明：操作失败原因是指定地址超出有效范围。
// 1118 ****************************************************************************/

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function GUI_PutString
        THUMB
// 1119 __ramfunc void  GUI_PutString(uint32 x, uint32 y, char *str)
// 1120 {  while(1)
GUI_PutString:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
// 1121    {  if( (*str)=='\0' ) break;
??GUI_PutString_0:
        LDRSB    R0,[R6, #+0]
        CMP      R0,#+0
        BEQ.N    ??GUI_PutString_1
// 1122       if( GUI_PutChar(x, y, *str++)==0 ) break;
??GUI_PutString_2:
        LDRB     R0,[R6, #+0]
        MOVS     R2,R0
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        MOVS     R0,R4
          CFI FunCall GUI_PutChar
        BL       GUI_PutChar
        ADDS     R6,R6,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??GUI_PutString_1
// 1123       x += 6;								// 下一个字符显示位置，y不变(即不换行)
??GUI_PutString_3:
        ADDS     R4,R4,#+6
        B.N      ??GUI_PutString_0
// 1124    }
// 1125 }
??GUI_PutString_1:
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock1
// 1126 
// 1127 
// 1128 /****************************************************************************
// 1129 * 名称：GUI_PutNoStr()
// 1130 * 功能：输出显示字符串(没有自动换行功能)，若显示的字符个数大于指定个数，则直接退出。
// 1131 * 入口参数： x		指定显示位置，x坐标
// 1132 *           y		指定显示位置，y坐标
// 1133 *           str		要显示的ASCII码字符串。
// 1134 *           no      最大显示字符的个数
// 1135 * 出口参数：无
// 1136 * 说明：操作失败原因是指定地址超出有效范围。
// 1137 ****************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function GUI_PutNoStr
        THUMB
// 1138 void  GUI_PutNoStr(uint32 x, uint32 y, char *str, uint8 no)
// 1139 {  if(no==0) return;
GUI_PutNoStr:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOVS     R5,R0
        MOVS     R6,R1
        MOVS     R7,R2
        MOVS     R4,R3
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??GUI_PutNoStr_0
// 1140    for(; no>0; no--)
??GUI_PutNoStr_1:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??GUI_PutNoStr_2
// 1141    {  if( (*str)=='\0' ) break;
        LDRSB    R0,[R7, #+0]
        CMP      R0,#+0
        BEQ.N    ??GUI_PutNoStr_2
// 1142       if( GUI_PutChar(x, y, *str++)==0 ) break;
??GUI_PutNoStr_3:
        LDRB     R0,[R7, #+0]
        MOVS     R2,R0
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R6
        MOVS     R0,R5
          CFI FunCall GUI_PutChar
        BL       GUI_PutChar
        ADDS     R7,R7,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??GUI_PutNoStr_2
// 1143       x += 6;								// 下一个字符显示位置，y不变(即不换行)
??GUI_PutNoStr_4:
        ADDS     R5,R5,#+6
// 1144    }
        SUBS     R4,R4,#+1
        B.N      ??GUI_PutNoStr_1
// 1145 }
??GUI_PutNoStr_2:
??GUI_PutNoStr_0:
        POP      {R0,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock2

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 1146 
// 1147 #endif
// 
// 768 bytes in section .rodata
//  60 bytes in section .text
// 218 bytes in section .textrw
// 
// 278 bytes of CODE  memory
// 768 bytes of CONST memory
//
//Errors: none
//Warnings: 3
