///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      12/Jun/2017  17:32:49
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\@@@@@@@\Car\Drivers\ZLG_GUI\GUI_BASIC.C
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EWC449.tmp
//        (D:\@@@@@@@\Car\Drivers\ZLG_GUI\GUI_BASIC.C -D DEBUG -D
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
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\GUI_BASIC.s
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

        EXTERN GUI_HLine
        EXTERN GUI_Point
        EXTERN GUI_RLine
        EXTERN GUI_ReadPoint

        PUBLIC GUI_Circle
        PUBLIC GUI_CircleFill
        PUBLIC GUI_CmpPointColor
        PUBLIC GUI_FloodFill
        PUBLIC GUI_Line
        PUBLIC GUI_LineS
        PUBLIC GUI_ReadLeftPoint
        PUBLIC GUI_ReadRightPoint
        PUBLIC GUI_Rectangle
        PUBLIC GUI_RectangleFill
        PUBLIC GUI_Square
        
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
        
// D:\@@@@@@@\Car\Drivers\ZLG_GUI\GUI_BASIC.C
//    1 /****************************************************************************************
//    2 * 文件名：GUI_BASIC.C
//    3 * 功能：GUI基本绘图函数。进行基本绘图运算，并调用相应的刷新程序更新LCD显示。
//    4 * 作者：黄绍斌
//    5 * 日期：2004.02.26
//    6 * 备注：图形操作层，进行各种图形运算操作。
//    7 ****************************************************************************************/
//    8 #include "config.h"
//    9 #include <math.h>
//   10 
//   11 
//   12 /****************************************************************************
//   13 * 名称：GUI_Rectangle()
//   14 * 功能：画矩形。
//   15 * 入口参数： x0		矩形左上角的x坐标值
//   16 *           y0		矩形左上角的y坐标值
//   17 *           x1      矩形右下角的x坐标值
//   18 *           y1      矩形右下角的y坐标值
//   19 *           color	显示颜色
//   20 * 出口参数：无
//   21 * 说明：操作失败原因是指定地址超出有效范围。
//   22 ****************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function GUI_Rectangle
        THUMB
//   23 void  GUI_Rectangle(uint32 x0, uint32 y0, uint32 x1, uint32 y1, TCOLOR color)
//   24 {  GUI_HLine(x0, y0, x1, color);
GUI_Rectangle:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
        MOVS     R5,R0
        MOVS     R6,R1
        MOVS     R7,R2
        MOV      R8,R3
        LDR      R4,[SP, #+24]
        MOVS     R3,R4
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,R7
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_HLine
        BL       GUI_HLine
//   25    GUI_HLine(x0, y1, x1, color);
        MOVS     R3,R4
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,R7
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOV      R1,R8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_HLine
        BL       GUI_HLine
//   26    GUI_RLine(x0, y0, y1, color);
        MOVS     R3,R4
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOV      R2,R8
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_RLine
        BL       GUI_RLine
//   27    GUI_RLine(x1, y0, y1, color);
        MOVS     R3,R4
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOV      R2,R8
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R7
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_RLine
        BL       GUI_RLine
//   28 }
        POP      {R4-R8,PC}       ;; return
          CFI EndBlock cfiBlock0
//   29 
//   30 
//   31 /****************************************************************************
//   32 * 名称：GUI_RectangleFill()
//   33 * 功能：填充矩形。画一个填充的矩形，填充色与边框色一样。
//   34 * 入口参数： x0		矩形左上角的x坐标值
//   35 *           y0		矩形左上角的y坐标值
//   36 *           x1      矩形右下角的x坐标值
//   37 *           y1      矩形右下角的y坐标值
//   38 *           color	填充颜色
//   39 * 出口参数：无
//   40 * 说明：操作失败原因是指定地址超出有效范围。
//   41 ****************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function GUI_RectangleFill
        THUMB
//   42 void  GUI_RectangleFill(uint32 x0, uint32 y0, uint32 x1, uint32 y1, TCOLOR color)
//   43 {  uint32  i;
GUI_RectangleFill:
        PUSH     {R3-R9,LR}
          CFI R14 Frame(CFA, -4)
          CFI R9 Frame(CFA, -8)
          CFI R8 Frame(CFA, -12)
          CFI R7 Frame(CFA, -16)
          CFI R6 Frame(CFA, -20)
          CFI R5 Frame(CFA, -24)
          CFI R4 Frame(CFA, -28)
          CFI CFA R13+32
        MOVS     R5,R0
        MOVS     R6,R1
        MOVS     R7,R2
        MOV      R8,R3
        LDR      R4,[SP, #+32]
//   44 
//   45    /* 先找出矩形左上角与右下角的两个点，保存在(x0,y0)，(x1,y1) */
//   46    if(x0>x1) 						// 若x0>x1，则x0与x1交换
        CMP      R7,R5
        BCS.N    ??GUI_RectangleFill_0
//   47    {  i = x0;
        MOV      R9,R5
//   48       x0 = x1;
        MOVS     R5,R7
//   49       x1 = i;
        MOV      R7,R9
//   50    }
//   51    if(y0>y1)						// 若y0>y1，则y0与y1交换
??GUI_RectangleFill_0:
        CMP      R8,R6
        BCS.N    ??GUI_RectangleFill_1
//   52    {  i = y0;
        MOV      R9,R6
//   53       y0 = y1;
        MOV      R6,R8
//   54       y1 = i;
        MOV      R8,R9
//   55    }
//   56    
//   57    /* 判断是否只是直线 */
//   58    if(y0==y1) 
??GUI_RectangleFill_1:
        CMP      R6,R8
        BNE.N    ??GUI_RectangleFill_2
//   59    {  GUI_HLine(x0, y0, x1, color);
        MOVS     R3,R4
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,R7
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_HLine
        BL       GUI_HLine
//   60       return;
        B.N      ??GUI_RectangleFill_3
//   61    }
//   62    if(x0==x1) 
??GUI_RectangleFill_2:
        CMP      R5,R7
        BNE.N    ??GUI_RectangleFill_4
//   63    {  GUI_RLine(x0, y0, y1, color);
        MOVS     R3,R4
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOV      R2,R8
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_RLine
        BL       GUI_RLine
//   64       return;
        B.N      ??GUI_RectangleFill_3
//   65    }
//   66 
//   67    while(y0<=y1)						
??GUI_RectangleFill_4:
        CMP      R8,R6
        BCC.N    ??GUI_RectangleFill_5
//   68    {  GUI_HLine(x0, y0, x1, color);	// 当前画水平线
        MOVS     R3,R4
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,R7
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_HLine
        BL       GUI_HLine
//   69       y0++;							// 下一行
        ADDS     R6,R6,#+1
        B.N      ??GUI_RectangleFill_4
//   70    }
//   71 }
??GUI_RectangleFill_5:
??GUI_RectangleFill_3:
        POP      {R0,R4-R9,PC}    ;; return
          CFI EndBlock cfiBlock1
//   72 
//   73 
//   74 /****************************************************************************
//   75 * 名称：GUI_Square()
//   76 * 功能：画正方形。
//   77 * 入口参数： x0		正方形左上角的x坐标值
//   78 *           y0		正方形左上角的y坐标值
//   79 *           with    正方形的边长
//   80 *           color	显示颜色
//   81 * 出口参数：无
//   82 * 说明：操作失败原因是指定地址超出有效范围。
//   83 ****************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function GUI_Square
        THUMB
//   84 void  GUI_Square(uint32 x0, uint32 y0, uint32  with, TCOLOR  color)
//   85 {   if(with==0) return;
GUI_Square:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOVS     R5,R0
        MOVS     R6,R1
        MOVS     R4,R2
        MOVS     R7,R3
        CMP      R4,#+0
        BEQ.N    ??GUI_Square_0
//   86 	if( (x0+with) > GUI_LCM_XMAX ) return;
??GUI_Square_1:
        ADDS     R0,R4,R5
        CMP      R0,#+129
        BCS.N    ??GUI_Square_0
//   87 	if( (y0+with) > GUI_LCM_YMAX ) return;
??GUI_Square_2:
        ADDS     R0,R4,R6
        CMP      R0,#+65
        BCS.N    ??GUI_Square_0
//   88 	GUI_Rectangle(x0, y0, x0+with, y0+with, color);
??GUI_Square_3:
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R0,[SP, #+0]
        ADDS     R3,R4,R6
        ADDS     R2,R4,R5
        MOVS     R1,R6
        MOVS     R0,R5
          CFI FunCall GUI_Rectangle
        BL       GUI_Rectangle
//   89 }
??GUI_Square_0:
        POP      {R0,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock2
//   90 
//   91 
//   92 
//   93 /****************************************************************************
//   94 * 名称：GUI_Line()
//   95 * 功能：画任意两点之间的直线。
//   96 * 入口参数： x0		直线起点的x坐标值
//   97 *           y0		直线起点的y坐标值
//   98 *           x1      直线终点的x坐标值
//   99 *           y1      直线终点的y坐标值
//  100 *           color	显示颜色(对于黑白色LCM，为0时灭，为1时显示)
//  101 * 出口参数：无
//  102 * 说明：操作失败原因是指定地址超出有效范围。
//  103 ****************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function GUI_Line
        THUMB
//  104 void  GUI_Line(uint32 x0, uint32 y0, uint32 x1, uint32 y1, TCOLOR color)
//  105 {  int32   dx;						// 直线x轴差值变量
GUI_Line:
        PUSH     {R1-R11,LR}
          CFI R14 Frame(CFA, -4)
          CFI R11 Frame(CFA, -8)
          CFI R10 Frame(CFA, -12)
          CFI R9 Frame(CFA, -16)
          CFI R8 Frame(CFA, -20)
          CFI R7 Frame(CFA, -24)
          CFI R6 Frame(CFA, -28)
          CFI R5 Frame(CFA, -32)
          CFI R4 Frame(CFA, -36)
          CFI CFA R13+48
        MOV      R9,R0
        MOV      R10,R1
        MOVS     R5,R2
        MOVS     R6,R3
        LDR      R4,[SP, #+48]
//  106    int32   dy;          			// 直线y轴差值变量
//  107    int8    dx_sym;					// x轴增长方向，为-1时减值方向，为1时增值方向
//  108    int8    dy_sym;					// y轴增长方向，为-1时减值方向，为1时增值方向
//  109    int32   dx_x2;					// dx*2值变量，用于加快运算速度
//  110    int32   dy_x2;					// dy*2值变量，用于加快运算速度
//  111    int32   di;						// 决策变量
//  112    
//  113    
//  114    dx = x1-x0;						// 求取两点之间的差值
        SUBS     R0,R5,R9
        MOVS     R7,R0
//  115    dy = y1-y0;
        SUBS     R0,R6,R10
        MOV      R8,R0
//  116    
//  117    /* 判断增长方向，或是否为水平线、垂直线、点 */
//  118    if(dx>0)							// 判断x轴方向
        CMP      R7,#+1
        BLT.N    ??GUI_Line_0
//  119    {  dx_sym = 1;					// dx>0，设置dx_sym=1
        MOVS     R0,#+1
        STRB     R0,[SP, #+1]
        B.N      ??GUI_Line_1
//  120    }
//  121    else
//  122    {  if(dx<0)
??GUI_Line_0:
        CMP      R7,#+0
        BPL.N    ??GUI_Line_2
//  123       {  dx_sym = -1;				// dx<0，设置dx_sym=-1
        MOVS     R0,#-1
        STRB     R0,[SP, #+1]
        B.N      ??GUI_Line_1
//  124       }
//  125       else
//  126       {  // dx==0，画垂直线，或一点
//  127          GUI_RLine(x0, y0, y1, color);
??GUI_Line_2:
        MOVS     R3,R4
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOV      R1,R10
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R9
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_RLine
        BL       GUI_RLine
//  128       	 return;
        B.N      ??GUI_Line_3
//  129       }
//  130    }
//  131    
//  132    if(dy>0)							// 判断y轴方向
??GUI_Line_1:
        CMP      R8,#+1
        BLT.N    ??GUI_Line_4
//  133    {  dy_sym = 1;					// dy>0，设置dy_sym=1
        MOVS     R0,#+1
        STRB     R0,[SP, #+0]
        B.N      ??GUI_Line_5
//  134    }
//  135    else
//  136    {  if(dy<0)
??GUI_Line_4:
        CMP      R8,#+0
        BPL.N    ??GUI_Line_6
//  137       {  dy_sym = -1;				// dy<0，设置dy_sym=-1
        MOVS     R0,#-1
        STRB     R0,[SP, #+0]
        B.N      ??GUI_Line_5
//  138       }
//  139       else
//  140       {  // dy==0，画水平线，或一点
//  141          GUI_HLine(x0, y0, x1, color);
??GUI_Line_6:
        MOVS     R3,R4
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,R5
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOV      R1,R10
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R9
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_HLine
        BL       GUI_HLine
//  142       	 return;
        B.N      ??GUI_Line_3
//  143       }
//  144    }
//  145     
//  146    /* 将dx、dy取绝对值 */
//  147    dx = dx_sym * dx;
??GUI_Line_5:
        LDRSB    R0,[SP, #+1]
        MULS     R7,R0,R7
//  148    dy = dy_sym * dy;
        LDRSB    R0,[SP, #+0]
        MUL      R8,R0,R8
//  149  
//  150    /* 计算2倍的dx及dy值 */
//  151    dx_x2 = dx*2;
        LSLS     R0,R7,#+1
        STR      R0,[SP, #+8]
//  152    dy_x2 = dy*2;
        LSLS     R0,R8,#+1
        STR      R0,[SP, #+4]
//  153    
//  154    /* 使用Bresenham法进行画直线 */
//  155    if(dx>=dy)						// 对于dx>=dy，则使用x轴为基准
        CMP      R7,R8
        BLT.N    ??GUI_Line_7
//  156    {  di = dy_x2 - dx;
        LDR      R0,[SP, #+4]
        SUBS     R0,R0,R7
        MOV      R11,R0
//  157       while(x0!=x1)
??GUI_Line_8:
        CMP      R9,R5
        BEQ.N    ??GUI_Line_9
//  158       {  GUI_Point(x0, y0, color);
        MOVS     R2,R4
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOV      R1,R10
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R9
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_Point
        BL       GUI_Point
//  159          x0 += dx_sym;
        LDRSB    R0,[SP, #+1]
        SXTAB    R9,R9,R0
//  160          if(di<0)
        CMP      R11,#+0
        BPL.N    ??GUI_Line_10
//  161          {  di += dy_x2;			// 计算出下一步的决策值
        LDR      R0,[SP, #+4]
        ADDS     R11,R0,R11
        B.N      ??GUI_Line_8
//  162          }
//  163          else
//  164          {  di += dy_x2 - dx_x2;
??GUI_Line_10:
        LDR      R0,[SP, #+4]
        ADDS     R11,R0,R11
        MOV      R0,R11
        LDR      R11,[SP, #+8]
        SUBS     R11,R0,R11
//  165             y0 += dy_sym;
        LDRSB    R0,[SP, #+0]
        SXTAB    R10,R10,R0
        B.N      ??GUI_Line_8
//  166          }
//  167       }
//  168       GUI_Point(x0, y0, color);		// 显示最后一点
??GUI_Line_9:
        MOVS     R2,R4
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOV      R1,R10
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R9
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_Point
        BL       GUI_Point
        B.N      ??GUI_Line_11
//  169    }
//  170    else								// 对于dx<dy，则使用y轴为基准
//  171    {  di = dx_x2 - dy;
??GUI_Line_7:
        LDR      R0,[SP, #+8]
        SUBS     R0,R0,R8
        MOV      R11,R0
//  172       while(y0!=y1)
??GUI_Line_12:
        CMP      R10,R6
        BEQ.N    ??GUI_Line_13
//  173       {  GUI_Point(x0, y0, color);
        MOVS     R2,R4
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOV      R1,R10
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R9
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_Point
        BL       GUI_Point
//  174          y0 += dy_sym;
        LDRSB    R0,[SP, #+0]
        SXTAB    R10,R10,R0
//  175          if(di<0)
        CMP      R11,#+0
        BPL.N    ??GUI_Line_14
//  176          {  di += dx_x2;
        LDR      R0,[SP, #+8]
        ADDS     R11,R0,R11
        B.N      ??GUI_Line_12
//  177          }
//  178          else
//  179          {  di += dx_x2 - dy_x2;
??GUI_Line_14:
        LDR      R0,[SP, #+8]
        ADDS     R11,R0,R11
        MOV      R0,R11
        LDR      R11,[SP, #+4]
        SUBS     R11,R0,R11
//  180             x0 += dx_sym;
        LDRSB    R0,[SP, #+1]
        SXTAB    R9,R9,R0
        B.N      ??GUI_Line_12
//  181          }
//  182       }
//  183       GUI_Point(x0, y0, color);		// 显示最后一点
??GUI_Line_13:
        MOVS     R2,R4
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOV      R1,R10
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R9
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_Point
        BL       GUI_Point
//  184    } 
//  185   
//  186 }
??GUI_Line_11:
??GUI_Line_3:
        POP      {R0-R2,R4-R11,PC}  ;; return
          CFI EndBlock cfiBlock3
//  187 
//  188 
//  189 #if	GUI_LineWith_EN==1
//  190 /****************************************************************************
//  191 * 名称：GUI_LineWith()
//  192 * 功能：画任意两点之间的直线，并且可设置线的宽度。
//  193 * 入口参数： x0		直线起点的x坐标值
//  194 *           y0		直线起点的y坐标值
//  195 *           x1      直线终点的x坐标值
//  196 *           y1      直线终点的y坐标值
//  197 *           with    线宽(0-50)
//  198 *           color	显示颜色
//  199 * 出口参数：无
//  200 * 说明：操作失败原因是指定地址超出有效范围。
//  201 ****************************************************************************/
//  202 void  GUI_LineWith(uint32 x0, uint32 y0, uint32 x1, uint32 y1, uint8 with, TCOLOR color)
//  203 {  int32   dx;						// 直线x轴差值变量
//  204    int32   dy;          			// 直线y轴差值变量
//  205    int8    dx_sym;					// x轴增长方向，为-1时减值方向，为1时增值方向
//  206    int8    dy_sym;					// y轴增长方向，为-1时减值方向，为1时增值方向
//  207    int32   dx_x2;					// dx*2值变量，用于加快运算速度
//  208    int32   dy_x2;					// dy*2值变量，用于加快运算速度
//  209    int32   di;						// 决策变量
//  210    
//  211    int32   wx, wy;					// 线宽变量
//  212    int32   draw_a, draw_b;
//  213    
//  214    /* 参数过滤 */
//  215    if(with==0) return;
//  216    if(with>50) with = 50;
//  217    
//  218    dx = x1-x0;						// 求取两点之间的差值
//  219    dy = y1-y0;
//  220    
//  221    wx = with/2;
//  222    wy = with-wx-1;
//  223    
//  224    /* 判断增长方向，或是否为水平线、垂直线、点 */
//  225    if(dx>0)							// 判断x轴方向
//  226    {  dx_sym = 1;					// dx>0，设置dx_sym=1
//  227    }
//  228    else
//  229    {  if(dx<0)
//  230       {  dx_sym = -1;				// dx<0，设置dx_sym=-1
//  231       }
//  232       else
//  233       {  /* dx==0，画垂直线，或一点 */
//  234          wx = x0-wx;
//  235          if(wx<0) wx = 0;
//  236          wy = x0+wy;
//  237          
//  238          while(1)
//  239          {  x0 = wx;
//  240             GUI_RLine(x0, y0, y1, color);
//  241             if(wx>=wy) break;
//  242             wx++;
//  243          }
//  244          
//  245       	 return;
//  246       }
//  247    }
//  248    
//  249    if(dy>0)							// 判断y轴方向
//  250    {  dy_sym = 1;					// dy>0，设置dy_sym=1
//  251    }
//  252    else
//  253    {  if(dy<0)
//  254       {  dy_sym = -1;				// dy<0，设置dy_sym=-1
//  255       }
//  256       else
//  257       {  /* dy==0，画水平线，或一点 */
//  258          wx = y0-wx;
//  259          if(wx<0) wx = 0;
//  260          wy = y0+wy;
//  261          
//  262          while(1)
//  263          {  y0 = wx;
//  264             GUI_HLine(x0, y0, x1, color);
//  265             if(wx>=wy) break;
//  266             wx++;
//  267          }
//  268       	 return;
//  269       }
//  270    }
//  271     
//  272    /* 将dx、dy取绝对值 */
//  273    dx = dx_sym * dx;
//  274    dy = dy_sym * dy;
//  275  
//  276    /* 计算2倍的dx及dy值 */
//  277    dx_x2 = dx*2;
//  278    dy_x2 = dy*2;
//  279    
//  280    /* 使用Bresenham法进行画直线 */
//  281    if(dx>=dy)						// 对于dx>=dy，则使用x轴为基准
//  282    {  di = dy_x2 - dx;
//  283       while(x0!=x1)
//  284       {  /* x轴向增长，则宽度在y方向，即画垂直线 */
//  285          draw_a = y0-wx;
//  286          if(draw_a<0) draw_a = 0;
//  287          draw_b = y0+wy;
//  288          GUI_RLine(x0, draw_a, draw_b, color);
//  289          
//  290          x0 += dx_sym;				
//  291          if(di<0)
//  292          {  di += dy_x2;			// 计算出下一步的决策值
//  293          }
//  294          else
//  295          {  di += dy_x2 - dx_x2;
//  296             y0 += dy_sym;
//  297          }
//  298       }
//  299       draw_a = y0-wx;
//  300       if(draw_a<0) draw_a = 0;
//  301       draw_b = y0+wy;
//  302       GUI_RLine(x0, draw_a, draw_b, color);
//  303    }
//  304    else								// 对于dx<dy，则使用y轴为基准
//  305    {  di = dx_x2 - dy;
//  306       while(y0!=y1)
//  307       {  /* y轴向增长，则宽度在x方向，即画水平线 */
//  308          draw_a = x0-wx;
//  309          if(draw_a<0) draw_a = 0;
//  310          draw_b = x0+wy;
//  311          GUI_HLine(draw_a, y0, draw_b, color);
//  312          
//  313          y0 += dy_sym;
//  314          if(di<0)
//  315          {  di += dx_x2;
//  316          }
//  317          else
//  318          {  di += dx_x2 - dy_x2;
//  319             x0 += dx_sym;
//  320          }
//  321       }
//  322       draw_a = x0-wx;
//  323       if(draw_a<0) draw_a = 0;
//  324       draw_b = x0+wy;
//  325       GUI_HLine(draw_a, y0, draw_b, color);
//  326    } 
//  327   
//  328 }
//  329 #endif
//  330 
//  331 
//  332 
//  333 /****************************************************************************
//  334 * 名称：GUI_LineS()
//  335 * 功能：多个点之间的连续连线。从第一点连到第二点，再连到第三点...
//  336 * 入口参数： points  多个点坐标数据的指针，数据排列为(x0,y0)、(x1,y1)、(x2,y2)...
//  337 *           no      点数目，至少要大于1
//  338 *           color	显示颜色
//  339 * 出口参数：无
//  340 * 说明：操作失败原因是指定地址超出有效范围。
//  341 ****************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function GUI_LineS
        THUMB
//  342 void  GUI_LineS(uint32 const *points, uint8 no, TCOLOR color)
//  343 {  uint32  x0, y0;
GUI_LineS:
        PUSH     {R3-R11,LR}
          CFI R14 Frame(CFA, -4)
          CFI R11 Frame(CFA, -8)
          CFI R10 Frame(CFA, -12)
          CFI R9 Frame(CFA, -16)
          CFI R8 Frame(CFA, -20)
          CFI R7 Frame(CFA, -24)
          CFI R6 Frame(CFA, -28)
          CFI R5 Frame(CFA, -32)
          CFI R4 Frame(CFA, -36)
          CFI CFA R13+40
        MOVS     R5,R0
        MOVS     R4,R1
        MOVS     R6,R2
//  344    uint32  x1, y1;
//  345    uint8  i;
//  346 
//  347    /* 入口参数过滤 */
//  348    if(0==no) return;
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??GUI_LineS_0
//  349    if(1==no)						// 单点
??GUI_LineS_1:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.N    ??GUI_LineS_2
//  350    {  x0 = *points++;
        LDR      R0,[R5, #+0]
        MOVS     R7,R0
        ADDS     R5,R5,#+4
//  351       y0 = *points;
        LDR      R0,[R5, #+0]
        MOV      R8,R0
//  352       GUI_Point(x0, y0, color);
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOV      R1,R8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R7
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_Point
        BL       GUI_Point
//  353    }
//  354    
//  355    /* 画多条线条 */
//  356    x0 = *points++;					// 取出第一点坐标值，作为原起点坐标值
??GUI_LineS_2:
        LDR      R0,[R5, #+0]
        MOVS     R7,R0
        ADDS     R5,R5,#+4
//  357    y0 = *points++;
        LDR      R0,[R5, #+0]
        MOV      R8,R0
        ADDS     R5,R5,#+4
//  358    for(i=1; i<no; i++)
        MOVS     R0,#+1
        MOV      R11,R0
??GUI_LineS_3:
        MOV      R0,R11
        MOVS     R1,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R0,R1
        BCS.N    ??GUI_LineS_4
//  359    {  x1 = *points++;				// 取出下一点坐标值
        LDR      R0,[R5, #+0]
        MOV      R9,R0
        ADDS     R5,R5,#+4
//  360       y1 = *points++;
        LDR      R0,[R5, #+0]
        MOV      R10,R0
        ADDS     R5,R5,#+4
//  361       GUI_Line(x0, y0, x1, y1, color);
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R0,[SP, #+0]
        MOV      R3,R10
        MOV      R2,R9
        MOV      R1,R8
        MOVS     R0,R7
          CFI FunCall GUI_Line
        BL       GUI_Line
//  362       x0 = x1;						// 更新原起点坐标
        MOV      R7,R9
//  363       y0 = y1;
        MOV      R8,R10
//  364    }
        ADDS     R11,R11,#+1
        B.N      ??GUI_LineS_3
//  365 }
??GUI_LineS_4:
??GUI_LineS_0:
        POP      {R0,R4-R11,PC}   ;; return
          CFI EndBlock cfiBlock4
//  366 
//  367 
//  368 
//  369 #if  GUI_CircleX_EN==1
//  370 /****************************************************************************
//  371 * 名称：GUI_Circle()
//  372 * 功能：指定圆心位置及半径，画圆。
//  373 * 入口参数： x0		圆心的x坐标值
//  374 *           y0		圆心的y坐标值
//  375 *           r       圆的半径
//  376 *           color	显示颜色
//  377 * 出口参数：无
//  378 * 说明：操作失败原因是指定地址超出有效范围。
//  379 ****************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function GUI_Circle
        THUMB
//  380 void  GUI_Circle(uint32 x0, uint32 y0, uint32 r, TCOLOR color)
//  381 {  int32  draw_x0, draw_y0;			// 刽图点坐标变量
GUI_Circle:
        PUSH     {R0,R1,R4-R11,LR}
          CFI R14 Frame(CFA, -4)
          CFI R11 Frame(CFA, -8)
          CFI R10 Frame(CFA, -12)
          CFI R9 Frame(CFA, -16)
          CFI R8 Frame(CFA, -20)
          CFI R7 Frame(CFA, -24)
          CFI R6 Frame(CFA, -28)
          CFI R5 Frame(CFA, -32)
          CFI R4 Frame(CFA, -36)
          CFI CFA R13+44
        SUB      SP,SP,#+52
          CFI CFA R13+96
        MOVS     R4,R2
        MOVS     R5,R3
//  382    int32  draw_x1, draw_y1;	
//  383    int32  draw_x2, draw_y2;	
//  384    int32  draw_x3, draw_y3;	
//  385    int32  draw_x4, draw_y4;	
//  386    int32  draw_x5, draw_y5;	
//  387    int32  draw_x6, draw_y6;	
//  388    int32  draw_x7, draw_y7;	
//  389    int32  xx, yy;					// 画圆控制变量
//  390  
//  391    int32  di;						// 决策变量
//  392    
//  393    /* 参数过滤 */
//  394    if(0==r) return;
        CMP      R4,#+0
        BEQ.W    ??GUI_Circle_0
//  395    
//  396    /* 计算出8个特殊点(0、45、90、135、180、225、270度)，进行显示 */
//  397    draw_x0 = draw_x1 = x0;
??GUI_Circle_1:
        LDR      R0,[SP, #+52]
        STR      R0,[SP, #+40]
        LDR      R0,[SP, #+40]
        STR      R0,[SP, #+44]
//  398    draw_y0 = draw_y1 = y0 + r;
        LDR      R0,[SP, #+56]
        ADDS     R0,R4,R0
        STR      R0,[SP, #+36]
        LDR      R0,[SP, #+36]
        MOVS     R7,R0
//  399    if(draw_y0<GUI_LCM_YMAX) GUI_Point(draw_x0, draw_y0, color);	// 90度
        CMP      R7,#+64
        BGE.N    ??GUI_Circle_2
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R0,R7
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR      R0,[SP, #+44]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_Point
        BL       GUI_Point
//  400 	
//  401    draw_x2 = draw_x3 = x0;
??GUI_Circle_2:
        LDR      R0,[SP, #+52]
        STR      R0,[SP, #+28]
        LDR      R0,[SP, #+28]
        STR      R0,[SP, #+32]
//  402    draw_y2 = draw_y3 = y0 - r;
        LDR      R0,[SP, #+56]
        SUBS     R0,R0,R4
        STR      R0,[SP, #+24]
        LDR      R0,[SP, #+24]
        MOV      R8,R0
//  403    if(draw_y2>=0) GUI_Point(draw_x2, draw_y2, color);			// 270度
        CMP      R8,#+0
        BMI.N    ??GUI_Circle_3
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOV      R0,R8
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR      R0,[SP, #+32]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_Point
        BL       GUI_Point
//  404    
//  405 	
//  406    draw_x4 = draw_x6 = x0 + r;
??GUI_Circle_3:
        LDR      R0,[SP, #+52]
        ADDS     R0,R4,R0
        STR      R0,[SP, #+12]
        LDR      R0,[SP, #+12]
        MOV      R9,R0
//  407    draw_y4 = draw_y6 = y0;
        LDR      R0,[SP, #+56]
        STR      R0,[SP, #+8]
        LDR      R0,[SP, #+8]
        STR      R0,[SP, #+20]
//  408    if(draw_x4<GUI_LCM_XMAX) GUI_Point(draw_x4, draw_y4, color);	// 0度
        CMP      R9,#+128
        BGE.N    ??GUI_Circle_4
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR      R0,[SP, #+20]
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R9
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_Point
        BL       GUI_Point
//  409    
//  410    draw_x5 = draw_x7 = x0 - r;
??GUI_Circle_4:
        LDR      R0,[SP, #+52]
        SUBS     R0,R0,R4
        STR      R0,[SP, #+4]
        LDR      R0,[SP, #+4]
        MOV      R10,R0
//  411    draw_y5 = draw_y7 = y0;
        LDR      R0,[SP, #+56]
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
        STR      R0,[SP, #+16]
//  412    if(draw_x5>=0) GUI_Point(draw_x5, draw_y5, color);			// 180度   
        CMP      R10,#+0
        BMI.N    ??GUI_Circle_5
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR      R0,[SP, #+16]
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R10
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_Point
        BL       GUI_Point
//  413    if(1==r) return;					// 若半径为1，则已圆画完
??GUI_Circle_5:
        CMP      R4,#+1
        BEQ.W    ??GUI_Circle_0
//  414    
//  415    
//  416    /* 使用Bresenham法进行画圆 */
//  417    di = 3 - 2*r;					// 初始化决策变量
??GUI_Circle_6:
        LSLS     R0,R4,#+1
        RSBS     R0,R0,#+3
        MOVS     R6,R0
//  418    
//  419    xx = 0;
        MOVS     R0,#+0
        MOV      R11,R0
//  420    yy = r;	
        STR      R4,[SP, #+48]
//  421    while(xx<yy)
??GUI_Circle_7:
        LDR      R0,[SP, #+48]
        CMP      R11,R0
        BGE.W    ??GUI_Circle_8
//  422    {  if(di<0)
        CMP      R6,#+0
        BPL.N    ??GUI_Circle_9
//  423 	  {  di += 4*xx + 6;	      
        LSLS     R0,R11,#+2
        ADDS     R0,R0,#+6
        ADDS     R6,R0,R6
        B.N      ??GUI_Circle_10
//  424 	  }
//  425 	  else
//  426 	  {  di += 4*(xx - yy) + 10;
??GUI_Circle_9:
        LDR      R0,[SP, #+48]
        SUBS     R0,R11,R0
        LSLS     R0,R0,#+2
        ADDS     R0,R0,#+10
        ADDS     R6,R0,R6
//  427 	  
//  428 	     yy--;	  
        LDR      R0,[SP, #+48]
        SUBS     R0,R0,#+1
        STR      R0,[SP, #+48]
//  429 		 draw_y0--;
        SUBS     R7,R7,#+1
//  430 		 draw_y1--;
        LDR      R0,[SP, #+36]
        SUBS     R0,R0,#+1
        STR      R0,[SP, #+36]
//  431 		 draw_y2++;
        ADDS     R8,R8,#+1
//  432 		 draw_y3++;
        LDR      R0,[SP, #+24]
        ADDS     R0,R0,#+1
        STR      R0,[SP, #+24]
//  433 		 draw_x4--;
        SUBS     R9,R9,#+1
//  434 		 draw_x5++;
        ADDS     R10,R10,#+1
//  435 		 draw_x6--;
        LDR      R0,[SP, #+12]
        SUBS     R0,R0,#+1
        STR      R0,[SP, #+12]
//  436 		 draw_x7++;	 	
        LDR      R0,[SP, #+4]
        ADDS     R0,R0,#+1
        STR      R0,[SP, #+4]
//  437 	  }
//  438 	  
//  439 	  xx++;   
??GUI_Circle_10:
        ADDS     R11,R11,#+1
//  440 	  draw_x0++;
        LDR      R0,[SP, #+44]
        ADDS     R0,R0,#+1
        STR      R0,[SP, #+44]
//  441 	  draw_x1--;
        LDR      R0,[SP, #+40]
        SUBS     R0,R0,#+1
        STR      R0,[SP, #+40]
//  442 	  draw_x2++;
        LDR      R0,[SP, #+32]
        ADDS     R0,R0,#+1
        STR      R0,[SP, #+32]
//  443 	  draw_x3--;
        LDR      R0,[SP, #+28]
        SUBS     R0,R0,#+1
        STR      R0,[SP, #+28]
//  444 	  draw_y4++;
        LDR      R0,[SP, #+20]
        ADDS     R0,R0,#+1
        STR      R0,[SP, #+20]
//  445 	  draw_y5++;
        LDR      R0,[SP, #+16]
        ADDS     R0,R0,#+1
        STR      R0,[SP, #+16]
//  446 	  draw_y6--;
        LDR      R0,[SP, #+8]
        SUBS     R0,R0,#+1
        STR      R0,[SP, #+8]
//  447 	  draw_y7--;
        LDR      R0,[SP, #+0]
        SUBS     R0,R0,#+1
        STR      R0,[SP, #+0]
//  448 		
//  449 	
//  450 	  /* 要判断当前点是否在有效范围内 */
//  451 	  if( (draw_x0<=GUI_LCM_XMAX)&&(draw_y0>=0) )	
        LDR      R0,[SP, #+44]
        CMP      R0,#+129
        BGE.N    ??GUI_Circle_11
        CMP      R7,#+0
        BMI.N    ??GUI_Circle_11
//  452 	  {  GUI_Point(draw_x0, draw_y0, color);
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R0,R7
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR      R0,[SP, #+44]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_Point
        BL       GUI_Point
//  453 	  }	    
//  454 	  if( (draw_x1>=0)&&(draw_y1>=0) )	
??GUI_Circle_11:
        LDR      R0,[SP, #+40]
        CMP      R0,#+0
        BMI.N    ??GUI_Circle_12
        LDR      R0,[SP, #+36]
        CMP      R0,#+0
        BMI.N    ??GUI_Circle_12
//  455 	  {  GUI_Point(draw_x1, draw_y1, color);
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR      R0,[SP, #+36]
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR      R0,[SP, #+40]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_Point
        BL       GUI_Point
//  456 	  }
//  457 	  if( (draw_x2<=GUI_LCM_XMAX)&&(draw_y2<=GUI_LCM_YMAX) )	
??GUI_Circle_12:
        LDR      R0,[SP, #+32]
        CMP      R0,#+129
        BGE.N    ??GUI_Circle_13
        CMP      R8,#+65
        BGE.N    ??GUI_Circle_13
//  458 	  {  GUI_Point(draw_x2, draw_y2, color);   
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOV      R0,R8
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR      R0,[SP, #+32]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_Point
        BL       GUI_Point
//  459 	  }
//  460 	  if( (draw_x3>=0)&&(draw_y3<=GUI_LCM_YMAX) )	
??GUI_Circle_13:
        LDR      R0,[SP, #+28]
        CMP      R0,#+0
        BMI.N    ??GUI_Circle_14
        LDR      R0,[SP, #+24]
        CMP      R0,#+65
        BGE.N    ??GUI_Circle_14
//  461 	  {  GUI_Point(draw_x3, draw_y3, color);
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR      R0,[SP, #+24]
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR      R0,[SP, #+28]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_Point
        BL       GUI_Point
//  462 	  }
//  463 	  if( (draw_x4<=GUI_LCM_XMAX)&&(draw_y4>=0) )	
??GUI_Circle_14:
        CMP      R9,#+129
        BGE.N    ??GUI_Circle_15
        LDR      R0,[SP, #+20]
        CMP      R0,#+0
        BMI.N    ??GUI_Circle_15
//  464 	  {  GUI_Point(draw_x4, draw_y4, color);
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR      R0,[SP, #+20]
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R9
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_Point
        BL       GUI_Point
//  465 	  }
//  466 	  if( (draw_x5>=0)&&(draw_y5>=0) )	
??GUI_Circle_15:
        CMP      R10,#+0
        BMI.N    ??GUI_Circle_16
        LDR      R0,[SP, #+16]
        CMP      R0,#+0
        BMI.N    ??GUI_Circle_16
//  467 	  {  GUI_Point(draw_x5, draw_y5, color);
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR      R0,[SP, #+16]
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R10
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_Point
        BL       GUI_Point
//  468 	  }
//  469 	  if( (draw_x6<=GUI_LCM_XMAX)&&(draw_y6<=GUI_LCM_YMAX) )	
??GUI_Circle_16:
        LDR      R0,[SP, #+12]
        CMP      R0,#+129
        BGE.N    ??GUI_Circle_17
        LDR      R0,[SP, #+8]
        CMP      R0,#+65
        BGE.N    ??GUI_Circle_17
//  470 	  {  GUI_Point(draw_x6, draw_y6, color);
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR      R0,[SP, #+8]
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR      R0,[SP, #+12]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_Point
        BL       GUI_Point
//  471 	  }
//  472 	  if( (draw_x7>=0)&&(draw_y7<=GUI_LCM_YMAX) )	
??GUI_Circle_17:
        LDR      R0,[SP, #+4]
        CMP      R0,#+0
        BMI.W    ??GUI_Circle_7
        LDR      R0,[SP, #+0]
        CMP      R0,#+65
        BGE.W    ??GUI_Circle_7
//  473 	  {  GUI_Point(draw_x7, draw_y7, color);
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR      R0,[SP, #+0]
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR      R0,[SP, #+4]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_Point
        BL       GUI_Point
        B.N      ??GUI_Circle_7
//  474 	  }
//  475    }
//  476 }
??GUI_Circle_8:
??GUI_Circle_0:
        ADD      SP,SP,#+60
          CFI CFA R13+36
        POP      {R4-R11,PC}      ;; return
          CFI EndBlock cfiBlock5
//  477 
//  478 
//  479 /****************************************************************************
//  480 * 名称：GUI_CircleFill()
//  481 * 功能：指定圆心位置及半径，画圆并填充，填充色与边框色一样。
//  482 * 入口参数： x0		圆心的x坐标值
//  483 *           y0		圆心的y坐标值
//  484 *           r       圆的半径
//  485 *           color	填充颜色
//  486 * 出口参数：无
//  487 * 说明：操作失败原因是指定地址超出有效范围。
//  488 ****************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function GUI_CircleFill
        THUMB
//  489 void  GUI_CircleFill(uint32 x0, uint32 y0, uint32 r, TCOLOR color)
//  490 {  int32  draw_x0, draw_y0;			// 刽图点坐标变量
GUI_CircleFill:
        PUSH     {R1,R2,R4-R11,LR}
          CFI R14 Frame(CFA, -4)
          CFI R11 Frame(CFA, -8)
          CFI R10 Frame(CFA, -12)
          CFI R9 Frame(CFA, -16)
          CFI R8 Frame(CFA, -20)
          CFI R7 Frame(CFA, -24)
          CFI R6 Frame(CFA, -28)
          CFI R5 Frame(CFA, -32)
          CFI R4 Frame(CFA, -36)
          CFI CFA R13+44
        SUB      SP,SP,#+68
          CFI CFA R13+112
        MOVS     R4,R0
        MOVS     R5,R3
//  491    int32  draw_x1, draw_y1;	
//  492    int32  draw_x2, draw_y2;	
//  493    int32  draw_x3, draw_y3;	
//  494    int32  draw_x4, draw_y4;	
//  495    int32  draw_x5, draw_y5;	
//  496    int32  draw_x6, draw_y6;	
//  497    int32  draw_x7, draw_y7;	
//  498    int32  fill_x0, fill_y0;			// 填充所需的变量，使用垂直线填充
//  499    int32  fill_x1;
//  500    int32  xx, yy;					// 画圆控制变量
//  501  
//  502    int32  di;						// 决策变量
//  503    
//  504    /* 参数过滤 */
//  505    if(0==r) return;
        LDR      R0,[SP, #+72]
        CMP      R0,#+0
        BEQ.W    ??GUI_CircleFill_0
//  506    
//  507    /* 计算出4个特殊点(0、90、180、270度)，进行显示 */
//  508    draw_x0 = draw_x1 = x0;
??GUI_CircleFill_1:
        STR      R4,[SP, #+0]
        LDR      R0,[SP, #+0]
        STR      R0,[SP, #+56]
//  509    draw_y0 = draw_y1 = y0 + r;
        LDR      R1,[SP, #+68]
        LDR      R0,[SP, #+72]
        ADDS     R1,R0,R1
        STR      R1,[SP, #+24]
        LDR      R0,[SP, #+24]
        STR      R0,[SP, #+28]
//  510    if(draw_y0<GUI_LCM_YMAX)
        LDR      R0,[SP, #+28]
        CMP      R0,#+64
        BGE.N    ??GUI_CircleFill_2
//  511    {  GUI_Point(draw_x0, draw_y0, color);	// 90度
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR      R0,[SP, #+28]
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR      R0,[SP, #+56]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_Point
        BL       GUI_Point
//  512    }
//  513     	
//  514    draw_x2 = draw_x3 = x0;
??GUI_CircleFill_2:
        MOV      R11,R4
        STR      R11,[SP, #+52]
//  515    draw_y2 = draw_y3 = y0 - r;
        LDR      R1,[SP, #+68]
        LDR      R0,[SP, #+72]
        SUBS     R1,R1,R0
        STR      R1,[SP, #+16]
        LDR      R0,[SP, #+16]
        STR      R0,[SP, #+20]
//  516    if(draw_y2>=0)
        LDR      R0,[SP, #+20]
        CMP      R0,#+0
        BMI.N    ??GUI_CircleFill_3
//  517    {  GUI_Point(draw_x2, draw_y2, color);	// 270度
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR      R0,[SP, #+20]
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR      R0,[SP, #+52]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_Point
        BL       GUI_Point
//  518    }
//  519   	
//  520    draw_x4 = draw_x6 = x0 + r;
??GUI_CircleFill_3:
        LDR      R0,[SP, #+72]
        ADDS     R0,R0,R4
        STR      R0,[SP, #+44]
        LDR      R0,[SP, #+44]
        STR      R0,[SP, #+4]
//  521    draw_y4 = draw_y6 = y0;
        LDR      R0,[SP, #+68]
        STR      R0,[SP, #+40]
        LDR      R0,[SP, #+40]
        STR      R0,[SP, #+48]
//  522    if(draw_x4<GUI_LCM_XMAX) 
        LDR      R0,[SP, #+4]
        CMP      R0,#+128
        BGE.N    ??GUI_CircleFill_4
//  523    {  GUI_Point(draw_x4, draw_y4, color);	// 0度
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR      R0,[SP, #+48]
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR      R0,[SP, #+4]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_Point
        BL       GUI_Point
//  524       fill_x1 = draw_x4;
        LDR      R0,[SP, #+4]
        MOV      R8,R0
        B.N      ??GUI_CircleFill_5
//  525    }
//  526    else
//  527    {  fill_x1 = GUI_LCM_XMAX;
??GUI_CircleFill_4:
        MOVS     R0,#+128
        MOV      R8,R0
//  528    }
//  529    fill_y0 = y0;							// 设置填充线条起始点fill_x0
??GUI_CircleFill_5:
        LDR      R0,[SP, #+68]
        MOVS     R7,R0
//  530    fill_x0 = x0 - r;						// 设置填充线条结束点fill_y1
        LDR      R0,[SP, #+72]
        SUBS     R0,R4,R0
        MOVS     R6,R0
//  531    if(fill_x0<0) fill_x0 = 0;
        CMP      R6,#+0
        BPL.N    ??GUI_CircleFill_6
        MOVS     R0,#+0
        MOVS     R6,R0
//  532    GUI_HLine(fill_x0, fill_y0, fill_x1, color);
??GUI_CircleFill_6:
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOV      R0,R8
        MOVS     R2,R0
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R0,R7
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R6
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_HLine
        BL       GUI_HLine
//  533    
//  534    draw_x5 = draw_x7 = x0 - r;
        LDR      R0,[SP, #+72]
        SUBS     R0,R4,R0
        MOV      R10,R0
        MOV      R9,R10
//  535    draw_y5 = draw_y7 = y0;
        LDR      R0,[SP, #+68]
        STR      R0,[SP, #+8]
        LDR      R0,[SP, #+8]
        STR      R0,[SP, #+12]
//  536    if(draw_x5>=0) 
        CMP      R9,#+0
        BMI.N    ??GUI_CircleFill_7
//  537    {  GUI_Point(draw_x5, draw_y5, color);	// 180度
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR      R0,[SP, #+12]
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R9
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_Point
        BL       GUI_Point
//  538    }
//  539    if(1==r) return;
??GUI_CircleFill_7:
        LDR      R0,[SP, #+72]
        CMP      R0,#+1
        BEQ.W    ??GUI_CircleFill_0
//  540    
//  541    
//  542    /* 使用Bresenham法进行画圆 */
//  543    di = 3 - 2*r;							// 初始化决策变量
??GUI_CircleFill_8:
        LDR      R0,[SP, #+72]
        LSLS     R0,R0,#+1
        RSBS     R0,R0,#+3
        STR      R0,[SP, #+32]
//  544    
//  545    xx = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+36]
//  546    yy = r;
        LDR      R0,[SP, #+72]
        STR      R0,[SP, #+60]
//  547    while(xx<yy)
??GUI_CircleFill_9:
        LDR      R0,[SP, #+36]
        LDR      R1,[SP, #+60]
        CMP      R0,R1
        BGE.W    ??GUI_CircleFill_10
//  548    {  if(di<0)
        LDR      R0,[SP, #+32]
        CMP      R0,#+0
        BPL.N    ??GUI_CircleFill_11
//  549 	  {  di += 4*xx + 6;
        LDR      R0,[SP, #+32]
        LDR      R1,[SP, #+36]
        LSLS     R1,R1,#+2
        ADDS     R1,R1,#+6
        ADDS     R0,R1,R0
        STR      R0,[SP, #+32]
        B.N      ??GUI_CircleFill_12
//  550 	  }
//  551 	  else
//  552 	  {  di += 4*(xx - yy) + 10;
??GUI_CircleFill_11:
        LDR      R1,[SP, #+32]
        LDR      R2,[SP, #+36]
        LDR      R0,[SP, #+60]
        SUBS     R2,R2,R0
        LSLS     R0,R2,#+2
        ADDS     R0,R0,#+10
        ADDS     R1,R0,R1
        STR      R1,[SP, #+32]
//  553 	  
//  554 	     yy--;	  
        LDR      R0,[SP, #+60]
        SUBS     R0,R0,#+1
        STR      R0,[SP, #+60]
//  555 		 draw_y0--;
        LDR      R0,[SP, #+28]
        SUBS     R0,R0,#+1
        STR      R0,[SP, #+28]
//  556 		 draw_y1--;
        LDR      R0,[SP, #+24]
        SUBS     R0,R0,#+1
        STR      R0,[SP, #+24]
//  557 		 draw_y2++;
        LDR      R0,[SP, #+20]
        ADDS     R0,R0,#+1
        STR      R0,[SP, #+20]
//  558 		 draw_y3++;
        LDR      R0,[SP, #+16]
        ADDS     R0,R0,#+1
        STR      R0,[SP, #+16]
//  559 		 draw_x4--;
        LDR      R0,[SP, #+4]
        SUBS     R0,R0,#+1
        STR      R0,[SP, #+4]
//  560 		 draw_x5++;
        ADDS     R9,R9,#+1
//  561 		 draw_x6--;
        LDR      R0,[SP, #+44]
        SUBS     R0,R0,#+1
        STR      R0,[SP, #+44]
//  562 		 draw_x7++;		 
        ADDS     R10,R10,#+1
//  563 	  }
//  564 	  
//  565 	  xx++;   
??GUI_CircleFill_12:
        LDR      R0,[SP, #+36]
        ADDS     R0,R0,#+1
        STR      R0,[SP, #+36]
//  566 	  draw_x0++;
        LDR      R0,[SP, #+56]
        ADDS     R0,R0,#+1
        STR      R0,[SP, #+56]
//  567 	  draw_x1--;
        LDR      R0,[SP, #+0]
        SUBS     R0,R0,#+1
        STR      R0,[SP, #+0]
//  568 	  draw_x2++;
        LDR      R0,[SP, #+52]
        ADDS     R0,R0,#+1
        STR      R0,[SP, #+52]
//  569 	  draw_x3--;
        SUBS     R11,R11,#+1
//  570 	  draw_y4++;
        LDR      R0,[SP, #+48]
        ADDS     R0,R0,#+1
        STR      R0,[SP, #+48]
//  571 	  draw_y5++;
        LDR      R0,[SP, #+12]
        ADDS     R0,R0,#+1
        STR      R0,[SP, #+12]
//  572 	  draw_y6--;
        LDR      R0,[SP, #+40]
        SUBS     R0,R0,#+1
        STR      R0,[SP, #+40]
//  573 	  draw_y7--;
        LDR      R0,[SP, #+8]
        SUBS     R0,R0,#+1
        STR      R0,[SP, #+8]
//  574 		
//  575 	
//  576 	  /* 要判断当前点是否在有效范围内 */
//  577 	  if( (draw_x0<=GUI_LCM_XMAX)&&(draw_y0>=0) )	
        LDR      R0,[SP, #+56]
        CMP      R0,#+129
        BGE.N    ??GUI_CircleFill_13
        LDR      R0,[SP, #+28]
        CMP      R0,#+0
        BMI.N    ??GUI_CircleFill_13
//  578 	  {  GUI_Point(draw_x0, draw_y0, color);
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR      R0,[SP, #+28]
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR      R0,[SP, #+56]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_Point
        BL       GUI_Point
//  579 	  }	    
//  580 	  if( (draw_x1>=0)&&(draw_y1>=0) )	
??GUI_CircleFill_13:
        LDR      R0,[SP, #+0]
        CMP      R0,#+0
        BMI.N    ??GUI_CircleFill_14
        LDR      R0,[SP, #+24]
        CMP      R0,#+0
        BMI.N    ??GUI_CircleFill_14
//  581 	  {  GUI_Point(draw_x1, draw_y1, color);
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR      R0,[SP, #+24]
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR      R0,[SP, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_Point
        BL       GUI_Point
//  582 	  }
//  583 	  
//  584 	  /* 第二点水直线填充(下半圆的点) */
//  585 	  if(draw_x1>=0)
??GUI_CircleFill_14:
        LDR      R0,[SP, #+0]
        CMP      R0,#+0
        BMI.N    ??GUI_CircleFill_15
//  586 	  {  /* 设置填充线条起始点fill_x0 */
//  587 	     fill_x0 = draw_x1;
        LDR      R0,[SP, #+0]
        MOVS     R6,R0
//  588 	     /* 设置填充线条起始点fill_y0 */
//  589 	     fill_y0 = draw_y1;
        LDR      R0,[SP, #+24]
        MOVS     R7,R0
//  590          if(fill_y0>GUI_LCM_YMAX) fill_y0 = GUI_LCM_YMAX;
        CMP      R7,#+65
        BLT.N    ??GUI_CircleFill_16
        MOVS     R0,#+64
        MOVS     R7,R0
//  591          if(fill_y0<0) fill_y0 = 0; 
??GUI_CircleFill_16:
        CMP      R7,#+0
        BPL.N    ??GUI_CircleFill_17
        MOVS     R0,#+0
        MOVS     R7,R0
//  592          /* 设置填充线条结束点fill_x1 */									
//  593          fill_x1 = x0*2 - draw_x1;				
??GUI_CircleFill_17:
        LDR      R0,[SP, #+0]
        RSBS     R0,R0,R4, LSL #+1
        MOV      R8,R0
//  594          if(fill_x1>GUI_LCM_XMAX) fill_x1 = GUI_LCM_XMAX;
        CMP      R8,#+129
        BLT.N    ??GUI_CircleFill_18
        MOVS     R0,#+128
        MOV      R8,R0
//  595          GUI_HLine(fill_x0, fill_y0, fill_x1, color);
??GUI_CircleFill_18:
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOV      R0,R8
        MOVS     R2,R0
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R0,R7
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R6
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_HLine
        BL       GUI_HLine
//  596       }
//  597 	  
//  598 	  
//  599 	  if( (draw_x2<=GUI_LCM_XMAX)&&(draw_y2<=GUI_LCM_YMAX) )	
??GUI_CircleFill_15:
        LDR      R0,[SP, #+52]
        CMP      R0,#+129
        BGE.N    ??GUI_CircleFill_19
        LDR      R0,[SP, #+20]
        CMP      R0,#+65
        BGE.N    ??GUI_CircleFill_19
//  600 	  {  GUI_Point(draw_x2, draw_y2, color);   
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR      R0,[SP, #+20]
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR      R0,[SP, #+52]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_Point
        BL       GUI_Point
//  601 	  }
//  602 	    	  
//  603 	  if( (draw_x3>=0)&&(draw_y3<=GUI_LCM_YMAX) )	
??GUI_CircleFill_19:
        CMP      R11,#+0
        BMI.N    ??GUI_CircleFill_20
        LDR      R0,[SP, #+16]
        CMP      R0,#+65
        BGE.N    ??GUI_CircleFill_20
//  604 	  {  GUI_Point(draw_x3, draw_y3, color);
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR      R0,[SP, #+16]
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R11
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_Point
        BL       GUI_Point
//  605 	  }
//  606 	  
//  607 	  /* 第四点垂直线填充(上半圆的点) */
//  608 	  if(draw_x3>=0)
??GUI_CircleFill_20:
        CMP      R11,#+0
        BMI.N    ??GUI_CircleFill_21
//  609 	  {  /* 设置填充线条起始点fill_x0 */
//  610 	     fill_x0 = draw_x3;
        MOV      R6,R11
//  611 	     /* 设置填充线条起始点fill_y0 */
//  612 	     fill_y0 = draw_y3;
        LDR      R0,[SP, #+16]
        MOVS     R7,R0
//  613          if(fill_y0>GUI_LCM_YMAX) fill_y0 = GUI_LCM_YMAX;
        CMP      R7,#+65
        BLT.N    ??GUI_CircleFill_22
        MOVS     R0,#+64
        MOVS     R7,R0
//  614          if(fill_y0<0) fill_y0 = 0;
??GUI_CircleFill_22:
        CMP      R7,#+0
        BPL.N    ??GUI_CircleFill_23
        MOVS     R0,#+0
        MOVS     R7,R0
//  615          /* 设置填充线条结束点fill_x1 */									
//  616          fill_x1 = x0*2 - draw_x3;				
??GUI_CircleFill_23:
        RSBS     R0,R11,R4, LSL #+1
        MOV      R8,R0
//  617          if(fill_x1>GUI_LCM_XMAX) fill_x1 = GUI_LCM_XMAX;
        CMP      R8,#+129
        BLT.N    ??GUI_CircleFill_24
        MOVS     R0,#+128
        MOV      R8,R0
//  618          GUI_HLine(fill_x0, fill_y0, fill_x1, color);
??GUI_CircleFill_24:
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOV      R0,R8
        MOVS     R2,R0
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R0,R7
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R6
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_HLine
        BL       GUI_HLine
//  619       }
//  620 	  
//  621 	  	  
//  622 	  if( (draw_x4<=GUI_LCM_XMAX)&&(draw_y4>=0) )	
??GUI_CircleFill_21:
        LDR      R0,[SP, #+4]
        CMP      R0,#+129
        BGE.N    ??GUI_CircleFill_25
        LDR      R0,[SP, #+48]
        CMP      R0,#+0
        BMI.N    ??GUI_CircleFill_25
//  623 	  {  GUI_Point(draw_x4, draw_y4, color);
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR      R0,[SP, #+48]
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR      R0,[SP, #+4]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_Point
        BL       GUI_Point
//  624 	  }
//  625 	  if( (draw_x5>=0)&&(draw_y5>=0) )	
??GUI_CircleFill_25:
        CMP      R9,#+0
        BMI.N    ??GUI_CircleFill_26
        LDR      R0,[SP, #+12]
        CMP      R0,#+0
        BMI.N    ??GUI_CircleFill_26
//  626 	  {  GUI_Point(draw_x5, draw_y5, color);
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR      R0,[SP, #+12]
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R9
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_Point
        BL       GUI_Point
//  627 	  }
//  628 	  
//  629 	  /* 第六点垂直线填充(上半圆的点) */
//  630 	  if(draw_x5>=0)
??GUI_CircleFill_26:
        CMP      R9,#+0
        BMI.N    ??GUI_CircleFill_27
//  631 	  {  /* 设置填充线条起始点fill_x0 */
//  632 	     fill_x0 = draw_x5;
        MOV      R6,R9
//  633 	     /* 设置填充线条起始点fill_y0 */
//  634 	     fill_y0 = draw_y5;
        LDR      R0,[SP, #+12]
        MOVS     R7,R0
//  635          if(fill_y0>GUI_LCM_YMAX) fill_y0 = GUI_LCM_YMAX;
        CMP      R7,#+65
        BLT.N    ??GUI_CircleFill_28
        MOVS     R0,#+64
        MOVS     R7,R0
//  636          if(fill_y0<0) fill_y0 = 0;
??GUI_CircleFill_28:
        CMP      R7,#+0
        BPL.N    ??GUI_CircleFill_29
        MOVS     R0,#+0
        MOVS     R7,R0
//  637          /* 设置填充线条结束点fill_x1 */									
//  638          fill_x1 = x0*2 - draw_x5;				
??GUI_CircleFill_29:
        RSBS     R0,R9,R4, LSL #+1
        MOV      R8,R0
//  639          if(fill_x1>GUI_LCM_XMAX) fill_x1 = GUI_LCM_XMAX;
        CMP      R8,#+129
        BLT.N    ??GUI_CircleFill_30
        MOVS     R0,#+128
        MOV      R8,R0
//  640          GUI_HLine(fill_x0, fill_y0, fill_x1, color);
??GUI_CircleFill_30:
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOV      R0,R8
        MOVS     R2,R0
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R0,R7
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R6
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_HLine
        BL       GUI_HLine
//  641       }
//  642 	  
//  643 	  
//  644 	  if( (draw_x6<=GUI_LCM_XMAX)&&(draw_y6<=GUI_LCM_YMAX) )	
??GUI_CircleFill_27:
        LDR      R0,[SP, #+44]
        CMP      R0,#+129
        BGE.N    ??GUI_CircleFill_31
        LDR      R0,[SP, #+40]
        CMP      R0,#+65
        BGE.N    ??GUI_CircleFill_31
//  645 	  {  GUI_Point(draw_x6, draw_y6, color);
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR      R0,[SP, #+40]
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR      R0,[SP, #+44]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_Point
        BL       GUI_Point
//  646 	  }
//  647 	  
//  648 	  if( (draw_x7>=0)&&(draw_y7<=GUI_LCM_YMAX) )	
??GUI_CircleFill_31:
        CMP      R10,#+0
        BMI.N    ??GUI_CircleFill_32
        LDR      R0,[SP, #+8]
        CMP      R0,#+65
        BGE.N    ??GUI_CircleFill_32
//  649 	  {  GUI_Point(draw_x7, draw_y7, color);
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR      R0,[SP, #+8]
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R10
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_Point
        BL       GUI_Point
//  650 	  }
//  651 	  
//  652 	  /* 第八点垂直线填充(上半圆的点) */
//  653 	  if(draw_x7>=0)
??GUI_CircleFill_32:
        CMP      R10,#+0
        BMI.W    ??GUI_CircleFill_9
//  654 	  {  /* 设置填充线条起始点fill_x0 */
//  655 	     fill_x0 = draw_x7;
        MOV      R6,R10
//  656 	     /* 设置填充线条起始点fill_y0 */
//  657 	     fill_y0 = draw_y7;
        LDR      R0,[SP, #+8]
        MOVS     R7,R0
//  658          if(fill_y0>GUI_LCM_YMAX) fill_y0 = GUI_LCM_YMAX;
        CMP      R7,#+65
        BLT.N    ??GUI_CircleFill_33
        MOVS     R0,#+64
        MOVS     R7,R0
//  659          if(fill_y0<0) fill_y0 = 0;
??GUI_CircleFill_33:
        CMP      R7,#+0
        BPL.N    ??GUI_CircleFill_34
        MOVS     R0,#+0
        MOVS     R7,R0
//  660          /* 设置填充线条结束点fill_x1 */									
//  661          fill_x1 = x0*2 - draw_x7;				
??GUI_CircleFill_34:
        RSBS     R0,R10,R4, LSL #+1
        MOV      R8,R0
//  662          if(fill_x1>GUI_LCM_XMAX) fill_x1 = GUI_LCM_XMAX;
        CMP      R8,#+129
        BLT.N    ??GUI_CircleFill_35
        MOVS     R0,#+128
        MOV      R8,R0
//  663          GUI_HLine(fill_x0, fill_y0, fill_x1, color);
??GUI_CircleFill_35:
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOV      R0,R8
        MOVS     R2,R0
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R0,R7
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R6
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_HLine
        BL       GUI_HLine
        B.N      ??GUI_CircleFill_9
//  664       }
//  665 	  
//  666    }
//  667 }
??GUI_CircleFill_10:
??GUI_CircleFill_0:
        ADD      SP,SP,#+76
          CFI CFA R13+36
        POP      {R4-R11,PC}      ;; return
          CFI EndBlock cfiBlock6
//  668 #endif
//  669 
//  670 
//  671 
//  672 
//  673 #if	 GUI_EllipseX_EN==1
//  674 /****************************************************************************
//  675 * 名称：GUI_Ellipse()
//  676 * 功能：画正椭圆。给定椭圆的四个点的参数，最左、最右点的x轴坐标值为x0、x1，最上、最下点
//  677 *      的y轴坐标为y0、y1。
//  678 * 入口参数： x0		最左点的x坐标值
//  679 *           x1		最右点的x坐标值
//  680 *           y0		最上点的y坐标值
//  681 *           y1      最下点的y坐标值
//  682 *           color	显示颜色
//  683 * 出口参数：无
//  684 * 说明：操作失败原因是指定地址超出有效范围。
//  685 ****************************************************************************/
//  686 void  GUI_Ellipse(uint32 x0, uint32 x1, uint32 y0, uint32 y1, TCOLOR color)
//  687 {  int32  draw_x0, draw_y0;			// 刽图点坐标变量
//  688    int32  draw_x1, draw_y1;
//  689    int32  draw_x2, draw_y2;
//  690    int32  draw_x3, draw_y3;
//  691    int32  xx, yy;					// 画图控制变量
//  692     
//  693    int32  center_x, center_y;		// 椭圆中心点坐标变量
//  694    int32  radius_x, radius_y;		// 椭圆的半径，x轴半径和y轴半径
//  695    int32  radius_xx, radius_yy;		// 半径乘平方值
//  696    int32  radius_xx2, radius_yy2;	// 半径乘平方值的两倍
//  697    int32  di;						// 定义决策变量
//  698 	
//  699    /* 参数过滤 */
//  700    if( (x0==x1) || (y0==y1) ) return;
//  701    	
//  702    /* 计算出椭圆中心点坐标 */
//  703    center_x = (x0 + x1) >> 1;			
//  704    center_y = (y0 + y1) >> 1;
//  705    
//  706    /* 计算出椭圆的半径，x轴半径和y轴半径 */
//  707    if(x0 > x1)
//  708    {  radius_x = (x0 - x1) >> 1;
//  709    }
//  710    else
//  711    {  radius_x = (x1 - x0) >> 1;
//  712    }
//  713    if(y0 > y1)
//  714    {  radius_y = (y0 - y1) >> 1;
//  715    }
//  716    else
//  717    {  radius_y = (y1 - y0) >> 1;
//  718    }
//  719 		
//  720    /* 计算半径平方值 */
//  721    radius_xx = radius_x * radius_x;
//  722    radius_yy = radius_y * radius_y;
//  723 	
//  724    /* 计算半径平方值乘2值 */
//  725    radius_xx2 = radius_xx<<1;
//  726    radius_yy2 = radius_yy<<1;
//  727 	
//  728    /* 初始化画图变量 */
//  729    xx = 0;
//  730    yy = radius_y;
//  731   
//  732    di = radius_yy2 + radius_xx - radius_xx2*radius_y ;	// 初始化决策变量 
//  733 	
//  734    /* 计算出椭圆y轴上的两个端点坐标，作为作图起点 */
//  735    draw_x0 = draw_x1 = draw_x2 = draw_x3 = center_x;
//  736    draw_y0 = draw_y1 = center_y + radius_y;
//  737    draw_y2 = draw_y3 = center_y - radius_y;
//  738   
//  739 	 
//  740    GUI_Point(draw_x0, draw_y0, color);					// 画y轴上的两个端点 
//  741    GUI_Point(draw_x2, draw_y2, color);
//  742 	
//  743    while( (radius_yy*xx) < (radius_xx*yy) ) 
//  744    {  if(di<0)
//  745 	  {  di+= radius_yy2*(2*xx+3);
//  746 	  }
//  747 	  else
//  748 	  {  di += radius_yy2*(2*xx+3) + 4*radius_xx - 4*radius_xx*yy;
//  749 	 	  
//  750 	     yy--;
//  751 		 draw_y0--;
//  752 		 draw_y1--;
//  753 		 draw_y2++;
//  754 		 draw_y3++;				 
//  755 	  }
//  756 	  
//  757 	  xx ++;						// x轴加1
//  758 	 		
//  759 	  draw_x0++;
//  760 	  draw_x1--;
//  761 	  draw_x2++;
//  762 	  draw_x3--;
//  763 		
//  764 	  GUI_Point(draw_x0, draw_y0, color);
//  765 	  GUI_Point(draw_x1, draw_y1, color);
//  766 	  GUI_Point(draw_x2, draw_y2, color);
//  767 	  GUI_Point(draw_x3, draw_y3, color);
//  768    }
//  769   
//  770    di = radius_xx2*(yy-1)*(yy-1) + radius_yy2*xx*xx + radius_yy + radius_yy2*xx - radius_xx2*radius_yy;
//  771    while(yy>=0) 
//  772    {  if(di<0)
//  773 	  {  di+= radius_xx2*3 + 4*radius_yy*xx + 4*radius_yy - 2*radius_xx2*yy;
//  774 	 	  
//  775 	     xx ++;						// x轴加1	 		
//  776 	     draw_x0++;
//  777 	     draw_x1--;
//  778 	     draw_x2++;
//  779 	     draw_x3--;  
//  780 	  }
//  781 	  else
//  782 	  {  di += radius_xx2*3 - 2*radius_xx2*yy;	 	 		     			 
//  783 	  }
//  784 	  
//  785 	  yy--;
//  786  	  draw_y0--;
//  787 	  draw_y1--;
//  788 	  draw_y2++;
//  789 	  draw_y3++;	
//  790 		
//  791 	  GUI_Point(draw_x0, draw_y0, color);
//  792 	  GUI_Point(draw_x1, draw_y1, color);
//  793 	  GUI_Point(draw_x2, draw_y2, color);
//  794 	  GUI_Point(draw_x3, draw_y3, color);
//  795    }     
//  796 }
//  797 
//  798 
//  799 /****************************************************************************
//  800 * 名称：GUI_EllipseFill()
//  801 * 功能：画正椭圆，并填充。给定椭圆的四个点的参数，最左、最右点的x轴坐标值为x0、x1，最上、最下点
//  802 *      的y轴坐标为y0、y1。
//  803 * 入口参数： x0		最左点的x坐标值
//  804 *           x1		最右点的x坐标值
//  805 *           y0		最上点的y坐标值
//  806 *           y1      最下点的y坐标值
//  807 *           color	填充颜色
//  808 * 出口参数：无
//  809 * 说明：操作失败原因是指定地址超出有效范围。
//  810 ****************************************************************************/
//  811 void  GUI_EllipseFill(uint32 x0, uint32 x1, uint32 y0, uint32 y1, TCOLOR color)
//  812 {  int32  draw_x0, draw_y0;			// 刽图点坐标变量
//  813    int32  draw_x1, draw_y1;
//  814    int32  draw_x2, draw_y2;
//  815    int32  draw_x3, draw_y3;
//  816    int32  xx, yy;					// 画图控制变量
//  817     
//  818    int32  center_x, center_y;		// 椭圆中心点坐标变量
//  819    int32  radius_x, radius_y;		// 椭圆的半径，x轴半径和y轴半径
//  820    int32  radius_xx, radius_yy;		// 半径乘平方值
//  821    int32  radius_xx2, radius_yy2;	// 半径乘平方值的两倍
//  822    int32  di;						// 定义决策变量
//  823 	
//  824    /* 参数过滤 */
//  825    if( (x0==x1) || (y0==y1) ) return;
//  826    
//  827    /* 计算出椭圆中心点坐标 */
//  828    center_x = (x0 + x1) >> 1;			
//  829    center_y = (y0 + y1) >> 1;
//  830    
//  831    /* 计算出椭圆的半径，x轴半径和y轴半径 */
//  832    if(x0 > x1)
//  833    {  radius_x = (x0 - x1) >> 1;
//  834    }
//  835    else
//  836    {  radius_x = (x1 - x0) >> 1;
//  837    }
//  838    if(y0 > y1)
//  839    {  radius_y = (y0 - y1) >> 1;
//  840    }
//  841    else
//  842    {  radius_y = (y1 - y0) >> 1;
//  843    }
//  844 		
//  845    /* 计算半径乘平方值 */
//  846    radius_xx = radius_x * radius_x;
//  847    radius_yy = radius_y * radius_y;
//  848 	
//  849    /* 计算半径乘4值 */
//  850    radius_xx2 = radius_xx<<1;
//  851    radius_yy2 = radius_yy<<1;
//  852    
//  853     /* 初始化画图变量 */
//  854    xx = 0;
//  855    yy = radius_y;
//  856   
//  857    di = radius_yy2 + radius_xx - radius_xx2*radius_y ;	// 初始化决策变量 
//  858 	
//  859    /* 计算出椭圆y轴上的两个端点坐标，作为作图起点 */
//  860    draw_x0 = draw_x1 = draw_x2 = draw_x3 = center_x;
//  861    draw_y0 = draw_y1 = center_y + radius_y;
//  862    draw_y2 = draw_y3 = center_y - radius_y;
//  863   
//  864 	 
//  865    GUI_Point(draw_x0, draw_y0, color);					// 画y轴上的两个端点
//  866    GUI_Point(draw_x2, draw_y2, color);
//  867 	
//  868    while( (radius_yy*xx) < (radius_xx*yy) ) 
//  869    {  if(di<0)
//  870 	  {  di+= radius_yy2*(2*xx+3);
//  871 	  }
//  872 	  else
//  873 	  {  di += radius_yy2*(2*xx+3) + 4*radius_xx - 4*radius_xx*yy;
//  874 	 	  
//  875 	     yy--;
//  876 		 draw_y0--;
//  877 		 draw_y1--;
//  878 		 draw_y2++;
//  879 		 draw_y3++;				 
//  880 	  }
//  881 	  
//  882 	  xx ++;						// x轴加1
//  883 	 		
//  884 	  draw_x0++;
//  885 	  draw_x1--;
//  886 	  draw_x2++;
//  887 	  draw_x3--;
//  888 		
//  889 	  GUI_Point(draw_x0, draw_y0, color);
//  890 	  GUI_Point(draw_x1, draw_y1, color);
//  891 	  GUI_Point(draw_x2, draw_y2, color);
//  892 	  GUI_Point(draw_x3, draw_y3, color);
//  893 	  
//  894 	  /* 若y轴已变化，进行填充 */
//  895 	  if(di>=0)
//  896 	  {  GUI_HLine(draw_x0, draw_y0, draw_x1, color);
//  897 	     GUI_HLine(draw_x2, draw_y2, draw_x3, color);
//  898 	  }
//  899    }
//  900   
//  901    di = radius_xx2*(yy-1)*(yy-1) + radius_yy2*xx*xx + radius_yy + radius_yy2*xx - radius_xx2*radius_yy;
//  902    while(yy>=0) 
//  903    {  if(di<0)
//  904 	  {  di+= radius_xx2*3 + 4*radius_yy*xx + 4*radius_yy - 2*radius_xx2*yy;
//  905 	 	  
//  906 	     xx ++;						// x轴加1	 		
//  907 	     draw_x0++;
//  908 	     draw_x1--;
//  909 	     draw_x2++;
//  910 	     draw_x3--;  
//  911 	  }
//  912 	  else
//  913 	  {  di += radius_xx2*3 - 2*radius_xx2*yy;	 	 		     			 
//  914 	  }
//  915 	  
//  916 	  yy--;
//  917  	  draw_y0--;
//  918 	  draw_y1--;
//  919 	  draw_y2++;
//  920 	  draw_y3++;	
//  921 		
//  922 	  GUI_Point(draw_x0, draw_y0, color);
//  923 	  GUI_Point(draw_x1, draw_y1, color);
//  924 	  GUI_Point(draw_x2, draw_y2, color);
//  925 	  GUI_Point(draw_x3, draw_y3, color);
//  926 	  
//  927 	  /* y轴已变化，进行填充 */
//  928 	  GUI_HLine(draw_x0, draw_y0, draw_x1, color);
//  929 	  GUI_HLine(draw_x2, draw_y2, draw_x3, color); 
//  930    }     
//  931 }
//  932 #endif
//  933 
//  934 
//  935 
//  936 
//  937 #if  GUI_FloodFill_EN==1
//  938 /****************************************************************************
//  939 * 名称：GUI_ReadLeftPoint()
//  940 * 功能：找出指定点左边最近的非color点。
//  941 * 入口参数： x0		指定点的x坐标值
//  942 *           y0		指定点的y坐标值
//  943 *           color	指定颜色值
//  944 * 出口参数：返回该点的x轴坐标值。
//  945 * 说明：若没有找出，则返回最左的x坐标0。
//  946 ****************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function GUI_ReadLeftPoint
        THUMB
//  947 uint32  GUI_ReadLeftPoint(uint32 x0, uint32 y0, TCOLOR color)
//  948 {  uint32  i;
GUI_ReadLeftPoint:
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
//  949    TCOLOR  bakc;
//  950    
//  951    for(i=x0-1; i>0; i--)
        SUBS     R0,R5,#+1
        MOVS     R4,R0
??GUI_ReadLeftPoint_0:
        CMP      R4,#+0
        BEQ.N    ??GUI_ReadLeftPoint_1
//  952    {  GUI_ReadPoint(i, y0, &bakc);
        MOV      R2,SP
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_ReadPoint
        BL       GUI_ReadPoint
//  953       if( GUI_CmpColor(bakc,color)==0 ) return(i+1);	// 若找到，则返回
        LDRB     R0,[SP, #+0]
        ANDS     R0,R0,#0x1
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        ANDS     R1,R7,#0x1
        CMP      R0,R1
        BEQ.N    ??GUI_ReadLeftPoint_2
        ADDS     R4,R4,#+1
        MOVS     R0,R4
        B.N      ??GUI_ReadLeftPoint_3
//  954    }
??GUI_ReadLeftPoint_2:
        SUBS     R4,R4,#+1
        B.N      ??GUI_ReadLeftPoint_0
//  955    GUI_ReadPoint(i, y0, &bakc);
??GUI_ReadLeftPoint_1:
        MOV      R2,SP
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_ReadPoint
        BL       GUI_ReadPoint
//  956    if( GUI_CmpColor(bakc,color)==0 ) return(1);		// 若找到，则返回
        LDRB     R0,[SP, #+0]
        ANDS     R0,R0,#0x1
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        ANDS     R1,R7,#0x1
        CMP      R0,R1
        BEQ.N    ??GUI_ReadLeftPoint_4
        MOVS     R0,#+1
        B.N      ??GUI_ReadLeftPoint_3
//  957    
//  958    return(0);
??GUI_ReadLeftPoint_4:
        MOVS     R0,#+0
??GUI_ReadLeftPoint_3:
        POP      {R1,R4-R7,PC}    ;; return
//  959 }
          CFI EndBlock cfiBlock7
//  960 
//  961 
//  962 /****************************************************************************
//  963 * 名称：GUI_ReadRightPoint()
//  964 * 功能：找出指定点右边最近的非color点。
//  965 * 入口参数： x0		指定点的x轴坐标值
//  966 *           y0		指定点的y轴坐标值
//  967 *           color	指定颜色值
//  968 * 出口参数：返回该点的x轴坐标值。
//  969 * 说明：若没有找出，则返回最右的x坐标GUI_LCM_XMAX。
//  970 ****************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function GUI_ReadRightPoint
        THUMB
//  971 uint32  GUI_ReadRightPoint(uint32 x0, uint32 y0, TCOLOR color)
//  972 {  uint32  i;
GUI_ReadRightPoint:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  973    TCOLOR  bakc;
//  974    
//  975    for(i=x0+1; i<GUI_LCM_XMAX; i++)
        ADDS     R0,R4,#+1
        MOVS     R7,R0
??GUI_ReadRightPoint_0:
        CMP      R7,#+128
        BCS.N    ??GUI_ReadRightPoint_1
//  976    {  GUI_ReadPoint(i, y0, &bakc);
        MOV      R2,SP
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R7
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_ReadPoint
        BL       GUI_ReadPoint
//  977       if( GUI_CmpColor(bakc,color)==0 ) return(i-1);	// 若找到，则返回
        LDRB     R0,[SP, #+0]
        ANDS     R0,R0,#0x1
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ANDS     R1,R6,#0x1
        CMP      R0,R1
        BEQ.N    ??GUI_ReadRightPoint_2
        SUBS     R7,R7,#+1
        MOVS     R0,R7
        B.N      ??GUI_ReadRightPoint_3
//  978    }
??GUI_ReadRightPoint_2:
        ADDS     R7,R7,#+1
        B.N      ??GUI_ReadRightPoint_0
//  979    return(GUI_LCM_XMAX);
??GUI_ReadRightPoint_1:
        MOVS     R0,#+128
??GUI_ReadRightPoint_3:
        POP      {R1,R4-R7,PC}    ;; return
//  980 }
          CFI EndBlock cfiBlock8
//  981 
//  982 
//  983 /****************************************************************************
//  984 * 名称：GUI_CmpPointColor()
//  985 * 功能：判断指定点上的颜色是否为某种颜色。
//  986 * 入口参数：x			指定点的x轴坐标值
//  987 *		   y		指定点的y轴坐标值
//  988 *          color	颜色值
//  989 * 出口参数：返回1表示相同，返回0表示不相同。
//  990 * 说明：
//  991 ****************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function GUI_CmpPointColor
        THUMB
//  992 int  GUI_CmpPointColor(uint32 x, uint32 y, TCOLOR color)
//  993 {  TCOLOR  bakc;
GUI_CmpPointColor:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        SUB      SP,SP,#+8
          CFI CFA R13+24
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  994    
//  995    GUI_ReadPoint(x, y, &bakc);
        MOV      R2,SP
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_ReadPoint
        BL       GUI_ReadPoint
//  996    return( GUI_CmpColor(bakc,color) );	
        LDRB     R0,[SP, #+0]
        ANDS     R0,R0,#0x1
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ANDS     R6,R6,#0x1
        CMP      R0,R6
        BNE.N    ??GUI_CmpPointColor_0
        MOVS     R0,#+1
        B.N      ??GUI_CmpPointColor_1
??GUI_CmpPointColor_0:
        MOVS     R0,#+0
??GUI_CmpPointColor_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4-R6,PC}  ;; return
//  997 }
          CFI EndBlock cfiBlock9
//  998 
//  999 
// 1000 /* 定义折点个数 */
// 1001 #ifndef  DOWNP_N
// 1002 #define  DOWNP_N		20
// 1003 #endif
// 1004 #ifndef	 UPP_N
// 1005 #define  UPP_N			20
// 1006 #endif
// 1007 /****************************************************************************
// 1008 * 名称：GUI_FloodFill()
// 1009 * 功能：图形填充，将指定点内的封闭图形进行填充。对指定点的颜色区域进行填充，即不是该颜色
// 1010 *      的像素为边界(如，指定点上的颜色为红色，则其它颜色像素均为边界)。
// 1011 * 入口参数： x0		指定点的x坐标值
// 1012 *           y0		指定点的y坐标值
// 1013 *           color	填充颜色
// 1014 * 出口参数：无
// 1015 * 说明：操作失败原因是指定地址超出有效范围、指定点不在封闭图形内。
// 1016 ****************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function GUI_FloodFill
        THUMB
// 1017 void  GUI_FloodFill(uint32 x0, uint32 y0, TCOLOR color)
// 1018 {  PointXY  down_point[DOWNP_N];	// 定义向下填充转折点缓冲区
GUI_FloodFill:
        PUSH     {R2,R4-R11,LR}
          CFI R14 Frame(CFA, -4)
          CFI R11 Frame(CFA, -8)
          CFI R10 Frame(CFA, -12)
          CFI R9 Frame(CFA, -16)
          CFI R8 Frame(CFA, -20)
          CFI R7 Frame(CFA, -24)
          CFI R6 Frame(CFA, -28)
          CFI R5 Frame(CFA, -32)
          CFI R4 Frame(CFA, -36)
          CFI CFA R13+40
        SUB      SP,SP,#+344
          CFI CFA R13+384
        MOVS     R6,R0
        MOVS     R7,R1
// 1019    uint8    down_no;				// 向下折点个数
// 1020    PointXY  up_point[UPP_N];		// 定义向上填充转折点缓冲区
// 1021    uint8    up_no;					// 向上折点个数
// 1022    TCOLOR   fcolor;					// 填充点上的颜色
// 1023    
// 1024    uint32  xx, yy;					// 填充临时x，y变量 (当前填充行的中点)
// 1025    uint32  xx0;						// 当前填充行的左x值变量
// 1026    uint32  xx1;						// 当前填充行的右y值变量
// 1027    uint32  i;
// 1028    
// 1029    uint32  x0_bak, y0_bak;
// 1030    uint32  x1_bak;
// 1031    
// 1032    /* 参数过滤 */
// 1033    if(x0>=GUI_LCM_XMAX) return;
        CMP      R6,#+128
        BCS.W    ??GUI_FloodFill_0
// 1034    if(y0>=GUI_LCM_YMAX) return;
??GUI_FloodFill_1:
        CMP      R7,#+64
        BCS.W    ??GUI_FloodFill_0
// 1035    
// 1036    /* 判断指定点是否为填充颜色，若是则直接返回 */
// 1037    GUI_ReadPoint(x0, y0, &fcolor);						// 取得填充点的颜色
??GUI_FloodFill_2:
        MOV      R2,SP
        MOVS     R1,R7
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R6
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_ReadPoint
        BL       GUI_ReadPoint
// 1038    if( GUI_CmpColor(fcolor,color)!=0 ) return;
        LDRB     R0,[SP, #+0]
        ANDS     R0,R0,#0x1
        LDRB     R1,[SP, #+344]
        ANDS     R1,R1,#0x1
        CMP      R0,R1
        BEQ.W    ??GUI_FloodFill_0
// 1039    
// 1040    y0_bak = y0;
??GUI_FloodFill_3:
        STR      R7,[SP, #+12]
// 1041    x0_bak = xx0 = GUI_ReadLeftPoint(x0, y0, fcolor);				// 找出当前y坐标上的最左边的点
        LDRB     R2,[SP, #+0]
        MOVS     R1,R7
        MOVS     R0,R6
          CFI FunCall GUI_ReadLeftPoint
        BL       GUI_ReadLeftPoint
        STR      R0,[SP, #+4]
        STR      R0,[SP, #+16]
// 1042    x1_bak = xx1 = GUI_ReadRightPoint(x0, y0, fcolor);			// 找出当前y坐标上的最右边的点
        LDRB     R2,[SP, #+0]
        MOVS     R1,R7
        MOVS     R0,R6
          CFI FunCall GUI_ReadRightPoint
        BL       GUI_ReadRightPoint
        MOV      R9,R0
        STR      R0,[SP, #+8]
// 1043    down_point[0].x = up_point[0].x = (xx1 + xx0)/2;
        LDR      R0,[SP, #+4]
        ADDS     R0,R0,R9
        LSRS     R0,R0,#+1
        STR      R0,[SP, #+20]
        LDR      R0,[SP, #+20]
        STR      R0,[SP, #+180]
// 1044    down_point[0].y = up_point[0].y = y0;
        STR      R7,[SP, #+24]
        LDR      R0,[SP, #+24]
        STR      R0,[SP, #+184]
// 1045    down_no = 1;
        MOVS     R0,#+1
        MOVS     R5,R0
// 1046    up_no = 1;
        MOVS     R0,#+1
        MOVS     R4,R0
// 1047    					
// 1048    /* 开始向上填充 */
// 1049 FILL_UP:  
// 1050    if(0==up_no) goto FILL_DOWN;							// 若向下扫描已完成，则退出
??GUI_FloodFill_4:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.W    ??GUI_FloodFill_5
// 1051    xx = up_point[up_no-1].x;							// 否则取出下一折点
??GUI_FloodFill_6:
        ADD      R0,SP,#+20
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADD      R0,R0,R4, LSL #+3
        LDR      R0,[R0, #-8]
        MOV      R8,R0
// 1052    yy = up_point[up_no-1].y;
        ADD      R0,SP,#+20
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADD      R0,R0,R4, LSL #+3
        LDR      R0,[R0, #-4]
        MOV      R10,R0
// 1053    up_no--; 
        SUBS     R4,R4,#+1
// 1054    xx0 = GUI_ReadLeftPoint(xx, yy, fcolor);
        LDRB     R2,[SP, #+0]
        MOV      R1,R10
        MOV      R0,R8
          CFI FunCall GUI_ReadLeftPoint
        BL       GUI_ReadLeftPoint
        STR      R0,[SP, #+4]
// 1055    xx1 = GUI_ReadRightPoint(xx, yy, fcolor);
        LDRB     R2,[SP, #+0]
        MOV      R1,R10
        MOV      R0,R8
          CFI FunCall GUI_ReadRightPoint
        BL       GUI_ReadRightPoint
        MOV      R9,R0
// 1056    while(1) 
// 1057    {  yy += 1;											// 中心点向上一点
??GUI_FloodFill_7:
        ADDS     R10,R10,#+1
// 1058        
// 1059       if( GUI_CmpPointColor(xx, yy, fcolor)==0 )					
        LDRB     R2,[SP, #+0]
        MOV      R1,R10
        MOV      R0,R8
          CFI FunCall GUI_CmpPointColor
        BL       GUI_CmpPointColor
        CMP      R0,#+0
        BNE.N    ??GUI_FloodFill_8
// 1060       {  /* 判断此点是否为终点，若是则退出此次循环 */
// 1061          for(i=xx0; i<=xx1; i++)     					// 查找此行是否有需填充点
        LDR      R0,[SP, #+4]
        MOV      R11,R0
??GUI_FloodFill_9:
        CMP      R9,R11
        BCC.N    ??GUI_FloodFill_10
// 1062          {  if( GUI_CmpPointColor(i, yy, fcolor)!=0 ) break;
        LDRB     R2,[SP, #+0]
        MOV      R1,R10
        MOV      R0,R11
          CFI FunCall GUI_CmpPointColor
        BL       GUI_CmpPointColor
        CMP      R0,#+0
        BNE.N    ??GUI_FloodFill_10
// 1063          }
??GUI_FloodFill_11:
        ADDS     R11,R11,#+1
        B.N      ??GUI_FloodFill_9
// 1064          if(i>xx1) goto FILL_UP; 
??GUI_FloodFill_10:
        CMP      R9,R11
        BCC.N    ??GUI_FloodFill_4
// 1065          
// 1066          /* 找出新一行中最右边的点 */
// 1067          xx = i;										// 更新xx到要填充的有效区域内
??GUI_FloodFill_12:
        MOV      R8,R11
// 1068          xx1 = GUI_ReadRightPoint(xx, yy, fcolor);
        LDRB     R2,[SP, #+0]
        MOV      R1,R10
        MOV      R0,R8
          CFI FunCall GUI_ReadRightPoint
        BL       GUI_ReadRightPoint
        MOV      R9,R0
        B.N      ??GUI_FloodFill_13
// 1069       }
// 1070       else
// 1071       {  /* 找出新一行中最右边的点 */
// 1072          xx1 = GUI_ReadRightPoint(xx, yy, fcolor);
??GUI_FloodFill_8:
        LDRB     R2,[SP, #+0]
        MOV      R1,R10
        MOV      R0,R8
          CFI FunCall GUI_ReadRightPoint
        BL       GUI_ReadRightPoint
        MOV      R9,R0
// 1073       }
// 1074       xx0 = GUI_ReadLeftPoint(xx, yy, fcolor);
??GUI_FloodFill_13:
        LDRB     R2,[SP, #+0]
        MOV      R1,R10
        MOV      R0,R8
          CFI FunCall GUI_ReadLeftPoint
        BL       GUI_ReadLeftPoint
        STR      R0,[SP, #+4]
// 1075       
// 1076       /* 向下折点。使用y0作为折点变量，x0作为上一折点变量 */
// 1077       if(down_no<DOWNP_N)
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+20
        BGE.N    ??GUI_FloodFill_14
// 1078       {  y0 = xx0;
        LDR      R0,[SP, #+4]
        MOVS     R7,R0
// 1079          x0 = y0-1;
        SUBS     R0,R7,#+1
        MOVS     R6,R0
// 1080          for(i=y0; i<=xx1; i++)
        MOV      R11,R7
??GUI_FloodFill_15:
        CMP      R9,R11
        BCC.N    ??GUI_FloodFill_14
// 1081          {  if( GUI_CmpPointColor(i, yy-1, fcolor)==0 )	// 更新折点
        LDRB     R2,[SP, #+0]
        SUBS     R1,R10,#+1
        MOV      R0,R11
          CFI FunCall GUI_CmpPointColor
        BL       GUI_CmpPointColor
        CMP      R0,#+0
        BNE.N    ??GUI_FloodFill_16
// 1082             {  y0 = i;										
        MOV      R7,R11
        B.N      ??GUI_FloodFill_17
// 1083             }
// 1084             else
// 1085             {  if(x0!=y0)								// 找到新的折点
??GUI_FloodFill_16:
        CMP      R6,R7
        BEQ.N    ??GUI_FloodFill_17
// 1086                {  x0 = y0;
        MOVS     R6,R7
// 1087                   down_point[down_no].x = i;
        ADD      R0,SP,#+180
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STR      R11,[R0, R5, LSL #+3]
// 1088                   down_point[down_no].y = yy;
        ADD      R0,SP,#+180
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R0,R0,R5, LSL #+3
        STR      R10,[R0, #+4]
// 1089                   down_no++;
        ADDS     R5,R5,#+1
// 1090                }
// 1091             }
// 1092             if(down_no>=DOWNP_N) break;					// 若缓冲区已保存满，则退出
??GUI_FloodFill_17:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+20
        BGE.N    ??GUI_FloodFill_14
// 1093          } // end  of for(i=y0+1; i<xx1; i++)
??GUI_FloodFill_18:
        ADDS     R11,R11,#+1
        B.N      ??GUI_FloodFill_15
// 1094       } // end of if(down_no<DOWNP_N)
// 1095       
// 1096       xx = (xx1 + xx0)/2;								// 更新中心点
??GUI_FloodFill_14:
        LDR      R0,[SP, #+4]
        ADDS     R0,R0,R9
        LSRS     R0,R0,#+1
        MOV      R8,R0
// 1097       GUI_HLine(xx0, yy, xx1, color);					// 填充一行
        LDRB     R3,[SP, #+344]
        MOV      R2,R9
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOV      R1,R10
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR      R0,[SP, #+4]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_HLine
        BL       GUI_HLine
// 1098       
// 1099       /* 向上折点。使用y0作为折点变量，x0作为上一折点变量 */
// 1100       if(up_no<UPP_N)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+20
        BGE.N    ??GUI_FloodFill_7
// 1101       {  y0 = xx0;
        LDR      R0,[SP, #+4]
        MOVS     R7,R0
// 1102          x0 = y0-1;
        SUBS     R0,R7,#+1
        MOVS     R6,R0
// 1103          for(i=y0; i<=xx1; i++)
        MOV      R11,R7
??GUI_FloodFill_19:
        CMP      R9,R11
        BCC.N    ??GUI_FloodFill_7
// 1104          {  if( GUI_CmpPointColor(i, yy+1, fcolor)==0 )	// 更新折点
        LDRB     R2,[SP, #+0]
        ADDS     R1,R10,#+1
        MOV      R0,R11
          CFI FunCall GUI_CmpPointColor
        BL       GUI_CmpPointColor
        CMP      R0,#+0
        BNE.N    ??GUI_FloodFill_20
// 1105             {  y0 = i;										
        MOV      R7,R11
        B.N      ??GUI_FloodFill_21
// 1106             }
// 1107             else
// 1108             {  if(x0!=y0)								// 找到新的折点
??GUI_FloodFill_20:
        CMP      R6,R7
        BEQ.N    ??GUI_FloodFill_21
// 1109                {  x0 = y0;
        MOVS     R6,R7
// 1110                   up_point[up_no].x = i;
        ADD      R0,SP,#+20
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R11,[R0, R4, LSL #+3]
// 1111                   up_point[up_no].y = yy;
        ADD      R0,SP,#+20
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADD      R0,R0,R4, LSL #+3
        STR      R10,[R0, #+4]
// 1112                   up_no++;
        ADDS     R4,R4,#+1
// 1113                }
// 1114             }
// 1115             if(up_no>=UPP_N) break;						// 若缓冲区已保存满，则退出
??GUI_FloodFill_21:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+20
        BGE.W    ??GUI_FloodFill_7
// 1116          }
??GUI_FloodFill_22:
        ADDS     R11,R11,#+1
        B.N      ??GUI_FloodFill_19
// 1117       } // end of if(up_no<UPP_N)
// 1118       
// 1119    } // end of while(1) 
// 1120 
// 1121    /* 向下填充 */
// 1122 FILL_DOWN: 
// 1123    if(0==down_no) 
??GUI_FloodFill_5:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.N    ??GUI_FloodFill_23
// 1124    {  if(0==up_no) 
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??GUI_FloodFill_24
// 1125       {  GUI_HLine(x0_bak, y0_bak, x1_bak, color);
        LDRB     R3,[SP, #+344]
        LDR      R2,[SP, #+8]
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        LDR      R1,[SP, #+12]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR      R0,[SP, #+16]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_HLine
        BL       GUI_HLine
// 1126          return;								// 若向下扫描已完成，且没有发现新的向上折点，则退出
        B.N      ??GUI_FloodFill_0
// 1127       }
// 1128       else
// 1129       {  goto FILL_UP;
??GUI_FloodFill_24:
        B.N      ??GUI_FloodFill_4
// 1130       }
// 1131    }
// 1132    xx = down_point[down_no-1].x;						// 否则取出下一折点
??GUI_FloodFill_23:
        ADD      R0,SP,#+180
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R0,R0,R5, LSL #+3
        LDR      R0,[R0, #-8]
        MOV      R8,R0
// 1133    yy = down_point[down_no-1].y;
        ADD      R0,SP,#+180
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R0,R0,R5, LSL #+3
        LDR      R0,[R0, #-4]
        MOV      R10,R0
// 1134    down_no--;
        SUBS     R5,R5,#+1
// 1135    xx0 = GUI_ReadLeftPoint(xx, yy, fcolor);
        LDRB     R2,[SP, #+0]
        MOV      R1,R10
        MOV      R0,R8
          CFI FunCall GUI_ReadLeftPoint
        BL       GUI_ReadLeftPoint
        STR      R0,[SP, #+4]
// 1136    xx1 = GUI_ReadRightPoint(xx, yy, fcolor);
        LDRB     R2,[SP, #+0]
        MOV      R1,R10
        MOV      R0,R8
          CFI FunCall GUI_ReadRightPoint
        BL       GUI_ReadRightPoint
        MOV      R9,R0
// 1137    
// 1138    while(1) 
// 1139    {  yy -= 1;											// 中心点向上一点 
??GUI_FloodFill_25:
        SUBS     R10,R10,#+1
// 1140       if( GUI_CmpPointColor(xx, yy, fcolor)==0 )					
        LDRB     R2,[SP, #+0]
        MOV      R1,R10
        MOV      R0,R8
          CFI FunCall GUI_CmpPointColor
        BL       GUI_CmpPointColor
        CMP      R0,#+0
        BNE.N    ??GUI_FloodFill_26
// 1141       {  /* 判断此点是否为终点，若是则退出此次循环 */
// 1142          for(i=xx0; i<=xx1; i++)     					// 查找下一行是否有需填充点
        LDR      R0,[SP, #+4]
        MOV      R11,R0
??GUI_FloodFill_27:
        CMP      R9,R11
        BCC.N    ??GUI_FloodFill_28
// 1143          {  if( GUI_CmpPointColor(i, yy, fcolor)!=0 ) break;
        LDRB     R2,[SP, #+0]
        MOV      R1,R10
        MOV      R0,R11
          CFI FunCall GUI_CmpPointColor
        BL       GUI_CmpPointColor
        CMP      R0,#+0
        BNE.N    ??GUI_FloodFill_28
// 1144          }
??GUI_FloodFill_29:
        ADDS     R11,R11,#+1
        B.N      ??GUI_FloodFill_27
// 1145          if(i>xx1) goto FILL_DOWN; 
??GUI_FloodFill_28:
        CMP      R9,R11
        BCC.N    ??GUI_FloodFill_5
// 1146          
// 1147          /* 找出新一行中最右边的点 */
// 1148          xx = i;
??GUI_FloodFill_30:
        MOV      R8,R11
// 1149          xx1 = GUI_ReadRightPoint(xx, yy, fcolor);
        LDRB     R2,[SP, #+0]
        MOV      R1,R10
        MOV      R0,R8
          CFI FunCall GUI_ReadRightPoint
        BL       GUI_ReadRightPoint
        MOV      R9,R0
        B.N      ??GUI_FloodFill_31
// 1150       }
// 1151       else
// 1152       {  /* 找出新一行中最右边的点 */
// 1153          xx1 = GUI_ReadRightPoint(xx, yy, fcolor);
??GUI_FloodFill_26:
        LDRB     R2,[SP, #+0]
        MOV      R1,R10
        MOV      R0,R8
          CFI FunCall GUI_ReadRightPoint
        BL       GUI_ReadRightPoint
        MOV      R9,R0
// 1154       }
// 1155       xx0 = GUI_ReadLeftPoint(xx, yy, fcolor);
??GUI_FloodFill_31:
        LDRB     R2,[SP, #+0]
        MOV      R1,R10
        MOV      R0,R8
          CFI FunCall GUI_ReadLeftPoint
        BL       GUI_ReadLeftPoint
        STR      R0,[SP, #+4]
// 1156             
// 1157       /* 向上折点。使用y0作为折点变量，x0作为上一折点变量 */
// 1158       if(up_no<UPP_N)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+20
        BGE.N    ??GUI_FloodFill_32
// 1159       {  y0 = xx0;
        LDR      R0,[SP, #+4]
        MOVS     R7,R0
// 1160          x0 = y0-1;
        SUBS     R0,R7,#+1
        MOVS     R6,R0
// 1161          for(i=y0; i<=xx1; i++)
        MOV      R11,R7
??GUI_FloodFill_33:
        CMP      R9,R11
        BCC.N    ??GUI_FloodFill_32
// 1162          {  if( GUI_CmpPointColor(i, yy+1, fcolor)==0 )	// 更新折点
        LDRB     R2,[SP, #+0]
        ADDS     R1,R10,#+1
        MOV      R0,R11
          CFI FunCall GUI_CmpPointColor
        BL       GUI_CmpPointColor
        CMP      R0,#+0
        BNE.N    ??GUI_FloodFill_34
// 1163             {  y0 = i;										
        MOV      R7,R11
        B.N      ??GUI_FloodFill_35
// 1164             }
// 1165             else
// 1166             {  if(x0!=y0)								// 找到新的折点
??GUI_FloodFill_34:
        CMP      R6,R7
        BEQ.N    ??GUI_FloodFill_35
// 1167                {  x0 = y0;
        MOVS     R6,R7
// 1168                   up_point[up_no].x = i;
        ADD      R0,SP,#+20
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R11,[R0, R4, LSL #+3]
// 1169                   up_point[up_no].y = yy;
        ADD      R0,SP,#+20
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADD      R0,R0,R4, LSL #+3
        STR      R10,[R0, #+4]
// 1170                   up_no++;
        ADDS     R4,R4,#+1
// 1171                }
// 1172             }
// 1173             if(up_no>=UPP_N) break;						// 若缓冲区已保存满，则退出
??GUI_FloodFill_35:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+20
        BGE.N    ??GUI_FloodFill_32
// 1174          }
??GUI_FloodFill_36:
        ADDS     R11,R11,#+1
        B.N      ??GUI_FloodFill_33
// 1175       }
// 1176             
// 1177       xx = (xx1 + xx0)/2; 
??GUI_FloodFill_32:
        LDR      R0,[SP, #+4]
        ADDS     R0,R0,R9
        LSRS     R0,R0,#+1
        MOV      R8,R0
// 1178       GUI_HLine(xx0, yy, xx1, color);					// 填充一行
        LDRB     R3,[SP, #+344]
        MOV      R2,R9
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOV      R1,R10
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR      R0,[SP, #+4]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_HLine
        BL       GUI_HLine
// 1179       
// 1180       /* 向下折点。使用y0作为折点变量，x0作为上一折点变量 */
// 1181       if(down_no<DOWNP_N)
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+20
        BGE.N    ??GUI_FloodFill_25
// 1182       {  y0 = xx0;
        LDR      R0,[SP, #+4]
        MOVS     R7,R0
// 1183          x0 = y0-1;
        SUBS     R0,R7,#+1
        MOVS     R6,R0
// 1184          for(i=y0; i<=xx1; i++)
        MOV      R11,R7
??GUI_FloodFill_37:
        CMP      R9,R11
        BCC.N    ??GUI_FloodFill_25
// 1185          {  if( GUI_CmpPointColor(i, yy-1, fcolor)==0 )	// 更新折点
        LDRB     R2,[SP, #+0]
        SUBS     R1,R10,#+1
        MOV      R0,R11
          CFI FunCall GUI_CmpPointColor
        BL       GUI_CmpPointColor
        CMP      R0,#+0
        BNE.N    ??GUI_FloodFill_38
// 1186             {  y0 = i;										
        MOV      R7,R11
        B.N      ??GUI_FloodFill_39
// 1187             }
// 1188             else
// 1189             {  if(x0!=y0)								// 找到新的折点
??GUI_FloodFill_38:
        CMP      R6,R7
        BEQ.N    ??GUI_FloodFill_39
// 1190                {  x0 = y0;
        MOVS     R6,R7
// 1191                   down_point[down_no].x = i;
        ADD      R0,SP,#+180
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STR      R11,[R0, R5, LSL #+3]
// 1192                   down_point[down_no].y = yy;
        ADD      R0,SP,#+180
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R0,R0,R5, LSL #+3
        STR      R10,[R0, #+4]
// 1193                   down_no++;
        ADDS     R5,R5,#+1
// 1194                }
// 1195             }
// 1196             if(down_no>=DOWNP_N) break;					// 若缓冲区已保存满，则退出
??GUI_FloodFill_39:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+20
        BGE.W    ??GUI_FloodFill_25
// 1197          }
??GUI_FloodFill_40:
        ADDS     R11,R11,#+1
        B.N      ??GUI_FloodFill_37
// 1198       } // end of if(down_no<DOWNP_N)
// 1199       
// 1200    } // end of while(1)
??GUI_FloodFill_0:
        ADD      SP,SP,#+348
          CFI CFA R13+36
        POP      {R4-R11,PC}      ;; return
// 1201    
// 1202   GUI_HLine(x0_bak, y0_bak, x1_bak, color);
// 1203    
// 1204 }
          CFI EndBlock cfiBlock10

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 1205 
// 1206 #endif
// 1207 
// 1208 
// 1209 
// 1210 
// 1211 
// 1212 #if  GUI_ArcX_EN==1
// 1213 /****************************************************************************
// 1214 * 名称：GUI_Arc4()
// 1215 * 功能：画弧。起点及终点只能为0度-90度、90度-180度、180度-270度、270度-0度等。即分别
// 1216 *      为第1-4像限的90度弧。
// 1217 * 入口参数： x0		圆心的x坐标值
// 1218 *           y0		圆心的y坐标值
// 1219 *           r       圆弧的半径
// 1220 *           angle	画弧的像限(1-4)
// 1221 *           color	显示颜色
// 1222 * 出口参数：无
// 1223 * 说明：操作失败原因是指定地址超出有效范围。
// 1224 ****************************************************************************/
// 1225 void  GUI_Arc4(uint32 x, uint32 y, uint32 r, uint8 angle, TCOLOR color)
// 1226 {  int32  draw_x, draw_y;
// 1227 
// 1228    int32  op_x, op_y;
// 1229    int32  op_2rr;
// 1230    
// 1231    if(r==0) return;
// 1232    
// 1233    op_2rr = 2*r*r;										// 计算r平方乖以2
// 1234    
// 1235    switch(angle)
// 1236    {  case  1:
// 1237             draw_x = x+r;
// 1238             draw_y = y;
// 1239             
// 1240             op_x = r;
// 1241             op_y = 0;
// 1242  
// 1243             while(1)
// 1244             {  GUI_Point(draw_x, draw_y, color);		// 开始画图
// 1245                  
// 1246                /* 计算下一点 */
// 1247                op_y++;
// 1248                draw_y++;
// 1249                if( (2*op_x*op_x + 2*op_y*op_y - op_2rr - 2*op_x +1)>0 ) 	// 使用逐点比较法实现画圆弧
// 1250                {  op_x--;
// 1251                   draw_x--;
// 1252                }
// 1253                if(op_y>=op_x) break;
// 1254             }
// 1255             while(1)
// 1256             {  GUI_Point(draw_x, draw_y, color);		// 开始画图
// 1257                  
// 1258                /* 计算下一点 */
// 1259                op_x--;
// 1260                draw_x--;
// 1261                if( (2*op_x*op_x + 2*op_y*op_y - op_2rr + 2*op_y +1)<=0 ) 	// 使用逐点比较法实现画圆弧
// 1262                {  op_y++;
// 1263                   draw_y++;
// 1264                }
// 1265                if(op_x<=0)
// 1266                {  GUI_Point(draw_x, draw_y, color);		// 开始画图
// 1267                   break;
// 1268                }
// 1269             }
// 1270    
// 1271             break;      
// 1272    				
// 1273       case  2:
// 1274             draw_x = x-r;
// 1275             draw_y = y;
// 1276             
// 1277             op_x = r;
// 1278             op_y = 0;
// 1279  
// 1280             while(1)
// 1281             {  GUI_Point(draw_x, draw_y, color);		// 开始画图
// 1282                  
// 1283                /* 计算下一点 */
// 1284                op_y++;
// 1285                draw_y++;
// 1286                if( (2*op_x*op_x + 2*op_y*op_y - op_2rr - 2*op_x +1)>0 ) 	// 使用逐点比较法实现画圆弧
// 1287                {  op_x--;
// 1288                   draw_x++;
// 1289                }
// 1290                if(op_y>=op_x) break;
// 1291             }
// 1292             while(1)
// 1293             {  GUI_Point(draw_x, draw_y, color);		// 开始画图
// 1294                  
// 1295                /* 计算下一点 */
// 1296                op_x--;
// 1297                draw_x++;
// 1298                if( (2*op_x*op_x + 2*op_y*op_y - op_2rr + 2*op_y +1)<=0 ) 	// 使用逐点比较法实现画圆弧
// 1299                {  op_y++;
// 1300                   draw_y++;
// 1301                }
// 1302                if(op_x<=0)
// 1303                {  GUI_Point(draw_x, draw_y, color);		// 开始画图
// 1304                   break;
// 1305                }
// 1306             }
// 1307   
// 1308             break;
// 1309             
// 1310       case  3:
// 1311             draw_x = x-r;
// 1312             draw_y = y;
// 1313             
// 1314             op_x = r;
// 1315             op_y = 0;
// 1316  
// 1317             while(1)
// 1318             {  GUI_Point(draw_x, draw_y, color);		// 开始画图
// 1319                  
// 1320                /* 计算下一点 */
// 1321                op_y++;
// 1322                draw_y--;
// 1323                if( (2*op_x*op_x + 2*op_y*op_y - op_2rr - 2*op_x +1)>0 ) 	// 使用逐点比较法实现画圆弧
// 1324                {  op_x--;
// 1325                   draw_x++;
// 1326                }
// 1327                if(op_y>=op_x) break;
// 1328             }
// 1329             while(1)
// 1330             {  GUI_Point(draw_x, draw_y, color);		// 开始画图
// 1331                  
// 1332                /* 计算下一点 */
// 1333                op_x--;
// 1334                draw_x++;
// 1335                if( (2*op_x*op_x + 2*op_y*op_y - op_2rr + 2*op_y +1)<=0 ) 	// 使用逐点比较法实现画圆弧
// 1336                {  op_y++;
// 1337                   draw_y--;
// 1338                }
// 1339                if(op_x<=0)
// 1340                {  GUI_Point(draw_x, draw_y, color);		// 开始画图
// 1341                   break;
// 1342                }
// 1343             }
// 1344       
// 1345             break;
// 1346             
// 1347       case  4:
// 1348             draw_x = x+r;
// 1349             draw_y = y;
// 1350             
// 1351             op_x = r;
// 1352             op_y = 0;
// 1353  
// 1354             while(1)
// 1355             {  GUI_Point(draw_x, draw_y, color);		// 开始画图
// 1356                  
// 1357                /* 计算下一点 */
// 1358                op_y++;
// 1359                draw_y--;
// 1360                if( (2*op_x*op_x + 2*op_y*op_y - op_2rr - 2*op_x +1)>0 ) 	// 使用逐点比较法实现画圆弧
// 1361                {  op_x--;
// 1362                   draw_x--;
// 1363                }
// 1364                if(op_y>=op_x) break;
// 1365             }
// 1366             while(1)
// 1367             {  GUI_Point(draw_x, draw_y, color);		// 开始画图
// 1368                  
// 1369                /* 计算下一点 */
// 1370                op_x--;
// 1371                draw_x--;
// 1372                if( (2*op_x*op_x + 2*op_y*op_y - op_2rr + 2*op_y +1)<=0 ) 	// 使用逐点比较法实现画圆弧
// 1373                {  op_y++;
// 1374                   draw_y--;
// 1375                }
// 1376                if(op_x<=0)
// 1377                {  GUI_Point(draw_x, draw_y, color);		// 开始画图
// 1378                   break;
// 1379                }
// 1380             }
// 1381             break;
// 1382             
// 1383       default:
// 1384             break;
// 1385       
// 1386    }
// 1387 
// 1388 }
// 1389 
// 1390 /****************************************************************************
// 1391 * 名称：GUI_Arc()
// 1392 * 功能：指定起点、终点及半径画弧(不能画圆)。使用的是顺时针方向画图。
// 1393 * 入口参数： x			圆心的x轴坐标值
// 1394 *           y			圆心的y轴坐标值
// 1395 *           stangle 	起始角度(0-359度)
// 1396 *           endangle	终止角度(0-359度)
// 1397 *           r  			圆的半径终点
// 1398 *           color		显示颜色
// 1399 * 出口参数：无
// 1400 * 说明：操作失败原因是指定地址超出有效范围。
// 1401 ****************************************************************************/
// 1402 void  GUI_Arc(uint32 x, uint32 y, uint32 r, uint32 stangle, uint32 endangle, TCOLOR color)
// 1403 {  int32  draw_x, draw_y;					// 画图坐标变量
// 1404    int32  op_x, op_y;						// 操作坐标
// 1405    int32  op_2rr;							// 2*r*r值变量
// 1406    
// 1407    int32  pno_angle;						// 度角点的个数
// 1408    uint8  draw_on;							// 画点开关，为1时画点，为0时不画
// 1409    
// 1410    
// 1411    /* 参数过滤 */
// 1412    if(r==0) return;							// 半径为0则直接退出
// 1413    if(stangle==endangle) return;			// 起始角度与终止角度相同，退出
// 1414    if( (stangle>=360) || (endangle>=360) ) return;
// 1415 
// 1416    op_2rr = 2*r*r;							// 计算r平方乖以2
// 1417    pno_angle = 0;
// 1418    /* 先计算出在此半径下的45度的圆弧的点数 */       
// 1419    op_x = r;
// 1420    op_y = 0;
// 1421    while(1)
// 1422    {  pno_angle++; 							// 画点计数         
// 1423       /* 计算下一点 */
// 1424       op_y++;
// 1425       if( (2*op_x*op_x + 2*op_y*op_y - op_2rr - 2*op_x +1)>0 ) 	// 使用逐点比较法实现画圆弧
// 1426       {  op_x--;
// 1427       }
// 1428       if(op_y>=op_x) break;
// 1429    }
// 1430    
// 1431    draw_on = 0;								// 最开始关画点开关
// 1432    /* 设置起始点及终点 */
// 1433    if(endangle>stangle) draw_on = 1;		// 若终点大于起点，则从一开始即画点(359)
// 1434    stangle = (360-stangle)*pno_angle/45;
// 1435    endangle = (360-endangle)*pno_angle/45;
// 1436    if(stangle==0) stangle=1;
// 1437    if(endangle==0) endangle=1;
// 1438    
// 1439    /* 开始顺时针画弧，从359度开始(第4像限) */
// 1440    pno_angle = 0;
// 1441    
// 1442    draw_x = x+r;
// 1443    draw_y = y;         
// 1444    op_x = r;
// 1445    op_y = 0;
// 1446    while(1)
// 1447    {  /* 计算下一点 */
// 1448       op_y++;
// 1449       draw_y--;
// 1450       if( (2*op_x*op_x + 2*op_y*op_y - op_2rr - 2*op_x +1)>0 ) 	// 使用逐点比较法实现画圆弧
// 1451       {  op_x--;
// 1452          draw_x--;
// 1453       }
// 1454       if(draw_on==1) GUI_Point(draw_x, draw_y, color);			// 开始画图
// 1455       pno_angle++;
// 1456       if( (pno_angle==stangle)||(pno_angle==endangle) )			// 若遇到起点或终点，画点开关取反
// 1457       {  draw_on = 1-draw_on;
// 1458          if(draw_on==1) GUI_Point(draw_x, draw_y, color);
// 1459       } 
// 1460       if(op_y>=op_x)
// 1461       {  if(draw_on==1) GUI_Point(draw_x, draw_y, color);
// 1462          break;
// 1463       }
// 1464    }
// 1465    
// 1466    while(1)
// 1467    {  /* 计算下一点 */
// 1468       op_x--;
// 1469       draw_x--;
// 1470       if( (2*op_x*op_x + 2*op_y*op_y - op_2rr + 2*op_y +1)<=0 ) // 使用逐点比较法实现画圆弧
// 1471       {  op_y++;
// 1472          draw_y--;
// 1473       }
// 1474       if(draw_on==1) GUI_Point(draw_x, draw_y, color);			// 开始画图
// 1475       pno_angle++;
// 1476       if( (pno_angle==stangle)||(pno_angle==endangle) )			// 若遇到起点或终点，画点开关取反
// 1477       {  draw_on = 1-draw_on;
// 1478          if(draw_on==1) GUI_Point(draw_x, draw_y, color);
// 1479       } 
// 1480       
// 1481       if(op_x<=0)
// 1482       {  if(draw_on==1) GUI_Point(draw_x, draw_y, color);		// 开始画图
// 1483          break;
// 1484       }
// 1485    }
// 1486     
// 1487     
// 1488    /* 开始顺时针画弧，从269度开始(第3像限) */
// 1489    draw_y = y-r;
// 1490    draw_x = x;         
// 1491    op_y = r;
// 1492    op_x = 0;
// 1493    while(1)
// 1494    {  /* 计算下一点 */
// 1495       op_x++;
// 1496       draw_x--;
// 1497       if( (2*op_x*op_x + 2*op_y*op_y - op_2rr - 2*op_y +1)>0 ) // 使用逐点比较法实现画圆弧
// 1498       {  op_y--;
// 1499          draw_y++;
// 1500       }
// 1501       if(draw_on==1) GUI_Point(draw_x, draw_y, color);			// 开始画图
// 1502       pno_angle++;
// 1503       if( (pno_angle==stangle)||(pno_angle==endangle) )			// 若遇到起点或终点，画点开关取反
// 1504       {  draw_on = 1-draw_on;
// 1505          if(draw_on==1) GUI_Point(draw_x, draw_y, color);
// 1506       } 
// 1507       
// 1508       if(op_x>=op_y)
// 1509       {  if(draw_on==1) GUI_Point(draw_x, draw_y, color);		// 开始画图
// 1510          break;
// 1511       }
// 1512    }
// 1513    
// 1514    while(1)
// 1515    {  /* 计算下一点 */
// 1516       op_y--;
// 1517       draw_y++;
// 1518       if( (2*op_x*op_x + 2*op_y*op_y - op_2rr + 2*op_x +1)<=0 ) // 使用逐点比较法实现画圆弧
// 1519       {  op_x++;
// 1520          draw_x--;
// 1521       }
// 1522       if(draw_on==1) GUI_Point(draw_x, draw_y, color);			// 开始画图
// 1523       pno_angle++;
// 1524       if( (pno_angle==stangle)||(pno_angle==endangle) )			// 若遇到起点或终点，画点开关取反
// 1525       {  draw_on = 1-draw_on;
// 1526          if(draw_on==1) GUI_Point(draw_x, draw_y, color);
// 1527       } 
// 1528       if(op_y<=0)
// 1529       {  if(draw_on==1) GUI_Point(draw_x, draw_y, color);
// 1530          break;
// 1531       }
// 1532    }
// 1533    
// 1534    
// 1535    /* 开始顺时针画弧，从179度开始(第2像限) */
// 1536    draw_x = x-r;
// 1537    draw_y = y;         
// 1538    op_x = r;
// 1539    op_y = 0;
// 1540    while(1)
// 1541    {  /* 计算下一点 */
// 1542       op_y++;
// 1543       draw_y++;
// 1544       if( (2*op_x*op_x + 2*op_y*op_y - op_2rr - 2*op_x +1)>0 ) 	// 使用逐点比较法实现画圆弧
// 1545       {  op_x--;
// 1546          draw_x++;
// 1547       }
// 1548       if(draw_on==1) GUI_Point(draw_x, draw_y, color);			// 开始画图
// 1549       pno_angle++;
// 1550       if( (pno_angle==stangle)||(pno_angle==endangle) )			// 若遇到起点或终点，画点开关取反
// 1551       {  draw_on = 1-draw_on;
// 1552          if(draw_on==1) GUI_Point(draw_x, draw_y, color);
// 1553       } 
// 1554       if(op_y>=op_x)
// 1555       {  if(draw_on==1) GUI_Point(draw_x, draw_y, color);
// 1556          break;
// 1557       }
// 1558    }
// 1559    
// 1560    while(1)
// 1561    {  /* 计算下一点 */
// 1562       op_x--;
// 1563       draw_x++;
// 1564       if( (2*op_x*op_x + 2*op_y*op_y - op_2rr + 2*op_y +1)<=0 ) // 使用逐点比较法实现画圆弧
// 1565       {  op_y++;
// 1566          draw_y++;
// 1567       }
// 1568       if(draw_on==1) GUI_Point(draw_x, draw_y, color);			// 开始画图
// 1569       pno_angle++;
// 1570       if( (pno_angle==stangle)||(pno_angle==endangle) )			// 若遇到起点或终点，画点开关取反
// 1571       {  draw_on = 1-draw_on;
// 1572          if(draw_on==1) GUI_Point(draw_x, draw_y, color);
// 1573       } 
// 1574       
// 1575       if(op_x<=0)
// 1576       {  if(draw_on==1) GUI_Point(draw_x, draw_y, color);		// 开始画图
// 1577          break;
// 1578       }
// 1579    }
// 1580   
// 1581   
// 1582    /* 开始顺时针画弧，从89度开始(第1像限) */
// 1583    draw_y = y+r;
// 1584    draw_x = x;         
// 1585    op_y = r;
// 1586    op_x = 0;
// 1587    while(1)
// 1588    {  /* 计算下一点 */
// 1589       op_x++;
// 1590       draw_x++;
// 1591       if( (2*op_x*op_x + 2*op_y*op_y - op_2rr - 2*op_y +1)>0 ) // 使用逐点比较法实现画圆弧
// 1592       {  op_y--;
// 1593          draw_y--;
// 1594       }
// 1595       if(draw_on==1) GUI_Point(draw_x, draw_y, color);			// 开始画图
// 1596       pno_angle++;
// 1597       if( (pno_angle==stangle)||(pno_angle==endangle) )			// 若遇到起点或终点，画点开关取反
// 1598       {  draw_on = 1-draw_on;
// 1599          if(draw_on==1) GUI_Point(draw_x, draw_y, color);
// 1600       } 
// 1601       
// 1602       if(op_x>=op_y)
// 1603       {  if(draw_on==1) GUI_Point(draw_x, draw_y, color);		// 开始画图
// 1604          break;
// 1605       }
// 1606    }
// 1607    
// 1608    while(1)
// 1609    {  /* 计算下一点 */
// 1610       op_y--;
// 1611       draw_y--;
// 1612       if( (2*op_x*op_x + 2*op_y*op_y - op_2rr + 2*op_x +1)<=0 ) // 使用逐点比较法实现画圆弧
// 1613       {  op_x++;
// 1614          draw_x++;
// 1615       }
// 1616       if(draw_on==1) GUI_Point(draw_x, draw_y, color);			// 开始画图
// 1617       pno_angle++;
// 1618       if( (pno_angle==stangle)||(pno_angle==endangle) )			// 若遇到起点或终点，画点开关取反
// 1619       {  draw_on = 1-draw_on;
// 1620          if(draw_on==1) GUI_Point(draw_x, draw_y, color);
// 1621       } 
// 1622       if(op_y<=0)
// 1623       {  if(draw_on==1) GUI_Point(draw_x, draw_y, color);
// 1624          break;
// 1625       }
// 1626    }
// 1627    
// 1628 }
// 1629 #endif
// 1630 
// 1631 
// 1632 
// 1633 
// 1634 #if  GUI_Pieslice_EN==1
// 1635 /****************************************************************************
// 1636 * 名称：GUI_Pieslice()
// 1637 * 功能：指定起点、终点及半径扇形(不能画圆)。使用的是顺时针方向画图。
// 1638 * 入口参数： x			圆心的x轴坐标值
// 1639 *           y			圆心的y轴坐标值
// 1640 *           stangle 	起始角度(0-359度)
// 1641 *           endangle	终止角度(0-359度)
// 1642 *           r  			圆的半径终点
// 1643 *           color		显示颜色
// 1644 * 出口参数：无
// 1645 * 说明：操作失败原因是指定地址超出有效范围。
// 1646 ****************************************************************************/
// 1647 void  GUI_Pieslice(uint32 x, uint32 y, uint32 r, uint32 stangle, uint32 endangle, TCOLOR color)
// 1648 {  int32  draw_x, draw_y;					// 画图坐标变量
// 1649    int32  op_x, op_y;						// 操作坐标
// 1650    int32  op_2rr;							// 2*r*r值变量
// 1651    
// 1652    int32  pno_angle;						// 度角点的个数
// 1653    uint8  draw_on;							// 画点开关，为1时画点，为0时不画
// 1654    
// 1655    
// 1656    /* 参数过滤 */
// 1657    if(r==0) return;							// 半径为0则直接退出
// 1658    if(stangle==endangle) return;			// 起始角度与终止角度相同，退出
// 1659    if( (stangle>=360) || (endangle>=360) ) return;
// 1660 
// 1661    op_2rr = 2*r*r;							// 计算r平方乖以2
// 1662    pno_angle = 0;
// 1663    /* 先计算出在此半径下的45度的圆弧的点数 */       
// 1664    op_x = r;
// 1665    op_y = 0;
// 1666    while(1)
// 1667    {  pno_angle++; 							// 画点计数         
// 1668       /* 计算下一点 */
// 1669       op_y++;
// 1670       if( (2*op_x*op_x + 2*op_y*op_y - op_2rr - 2*op_x +1)>0 ) 	// 使用逐点比较法实现画圆弧
// 1671       {  op_x--;
// 1672       }
// 1673       if(op_y>=op_x) break;
// 1674    }
// 1675    
// 1676    draw_on = 0;								// 最开始关画点开关
// 1677    /* 设置起始点及终点 */
// 1678    if(endangle>stangle) draw_on = 1;		// 若终点大于起点，则从一开始即画点(359)
// 1679    stangle = (360-stangle)*pno_angle/45;
// 1680    endangle = (360-endangle)*pno_angle/45;
// 1681    if(stangle==0) stangle=1;
// 1682    if(endangle==0) endangle=1;
// 1683    
// 1684    /* 开始顺时针画弧，从359度开始(第4像限) */
// 1685    pno_angle = 0;
// 1686    
// 1687    draw_x = x+r;
// 1688    draw_y = y;         
// 1689    op_x = r;
// 1690    op_y = 0;
// 1691    while(1)
// 1692    {  /* 计算下一点 */
// 1693       op_y++;
// 1694       draw_y--;
// 1695       if( (2*op_x*op_x + 2*op_y*op_y - op_2rr - 2*op_x +1)>0 ) 	// 使用逐点比较法实现画圆弧
// 1696       {  op_x--;
// 1697          draw_x--;
// 1698       }
// 1699       if(draw_on==1) GUI_Point(draw_x, draw_y, color);			// 开始画图
// 1700       pno_angle++;
// 1701       if( (pno_angle==stangle)||(pno_angle==endangle) )			// 若遇到起点或终点，画点开关取反
// 1702       {  draw_on = 1-draw_on;
// 1703          if(draw_on==1) GUI_Point(draw_x, draw_y, color);
// 1704          GUI_Line(x, y, draw_x, draw_y, color);
// 1705       } 
// 1706       if(op_y>=op_x)
// 1707       {  if(draw_on==1) GUI_Point(draw_x, draw_y, color);
// 1708          break;
// 1709       }
// 1710    }
// 1711    
// 1712    while(1)
// 1713    {  /* 计算下一点 */
// 1714       op_x--;
// 1715       draw_x--;
// 1716       if( (2*op_x*op_x + 2*op_y*op_y - op_2rr + 2*op_y +1)<=0 ) // 使用逐点比较法实现画圆弧
// 1717       {  op_y++;
// 1718          draw_y--;
// 1719       }
// 1720       if(draw_on==1) GUI_Point(draw_x, draw_y, color);			// 开始画图
// 1721       pno_angle++;
// 1722       if( (pno_angle==stangle)||(pno_angle==endangle) )			// 若遇到起点或终点，画点开关取反
// 1723       {  draw_on = 1-draw_on;
// 1724          if(draw_on==1) GUI_Point(draw_x, draw_y, color);
// 1725          GUI_Line(x, y, draw_x, draw_y, color);
// 1726       } 
// 1727       
// 1728       if(op_x<=0)
// 1729       {  if(draw_on==1) GUI_Point(draw_x, draw_y, color);		// 开始画图
// 1730          break;
// 1731       }
// 1732    }
// 1733     
// 1734     
// 1735    /* 开始顺时针画弧，从269度开始(第3像限) */
// 1736    draw_y = y-r;
// 1737    draw_x = x;         
// 1738    op_y = r;
// 1739    op_x = 0;
// 1740    while(1)
// 1741    {  /* 计算下一点 */
// 1742       op_x++;
// 1743       draw_x--;
// 1744       if( (2*op_x*op_x + 2*op_y*op_y - op_2rr - 2*op_y +1)>0 ) // 使用逐点比较法实现画圆弧
// 1745       {  op_y--;
// 1746          draw_y++;
// 1747       }
// 1748       if(draw_on==1) GUI_Point(draw_x, draw_y, color);			// 开始画图
// 1749       pno_angle++;
// 1750       if( (pno_angle==stangle)||(pno_angle==endangle) )			// 若遇到起点或终点，画点开关取反
// 1751       {  draw_on = 1-draw_on;
// 1752          if(draw_on==1) GUI_Point(draw_x, draw_y, color);
// 1753          GUI_Line(x, y, draw_x, draw_y, color);
// 1754       } 
// 1755       
// 1756       if(op_x>=op_y)
// 1757       {  if(draw_on==1) GUI_Point(draw_x, draw_y, color);		// 开始画图
// 1758          break;
// 1759       }
// 1760    }
// 1761    
// 1762    while(1)
// 1763    {  /* 计算下一点 */
// 1764       op_y--;
// 1765       draw_y++;
// 1766       if( (2*op_x*op_x + 2*op_y*op_y - op_2rr + 2*op_x +1)<=0 ) // 使用逐点比较法实现画圆弧
// 1767       {  op_x++;
// 1768          draw_x--;
// 1769       }
// 1770       if(draw_on==1) GUI_Point(draw_x, draw_y, color);			// 开始画图
// 1771       pno_angle++;
// 1772       if( (pno_angle==stangle)||(pno_angle==endangle) )			// 若遇到起点或终点，画点开关取反
// 1773       {  draw_on = 1-draw_on;
// 1774          if(draw_on==1) GUI_Point(draw_x, draw_y, color);
// 1775          GUI_Line(x, y, draw_x, draw_y, color);
// 1776       } 
// 1777       if(op_y<=0)
// 1778       {  if(draw_on==1) GUI_Point(draw_x, draw_y, color);
// 1779          break;
// 1780       }
// 1781    }
// 1782    
// 1783    
// 1784    /* 开始顺时针画弧，从179度开始(第2像限) */
// 1785    draw_x = x-r;
// 1786    draw_y = y;         
// 1787    op_x = r;
// 1788    op_y = 0;
// 1789    while(1)
// 1790    {  /* 计算下一点 */
// 1791       op_y++;
// 1792       draw_y++;
// 1793       if( (2*op_x*op_x + 2*op_y*op_y - op_2rr - 2*op_x +1)>0 ) 	// 使用逐点比较法实现画圆弧
// 1794       {  op_x--;
// 1795          draw_x++;
// 1796       }
// 1797       if(draw_on==1) GUI_Point(draw_x, draw_y, color);			// 开始画图
// 1798       pno_angle++;
// 1799       if( (pno_angle==stangle)||(pno_angle==endangle) )			// 若遇到起点或终点，画点开关取反
// 1800       {  draw_on = 1-draw_on;
// 1801          if(draw_on==1) GUI_Point(draw_x, draw_y, color);
// 1802          GUI_Line(x, y, draw_x, draw_y, color);
// 1803       } 
// 1804       if(op_y>=op_x)
// 1805       {  if(draw_on==1) GUI_Point(draw_x, draw_y, color);
// 1806          break;
// 1807       }
// 1808    }
// 1809    
// 1810    while(1)
// 1811    {  /* 计算下一点 */
// 1812       op_x--;
// 1813       draw_x++;
// 1814       if( (2*op_x*op_x + 2*op_y*op_y - op_2rr + 2*op_y +1)<=0 ) // 使用逐点比较法实现画圆弧
// 1815       {  op_y++;
// 1816          draw_y++;
// 1817       }
// 1818       if(draw_on==1) GUI_Point(draw_x, draw_y, color);			// 开始画图
// 1819       pno_angle++;
// 1820       if( (pno_angle==stangle)||(pno_angle==endangle) )			// 若遇到起点或终点，画点开关取反
// 1821       {  draw_on = 1-draw_on;
// 1822          if(draw_on==1) GUI_Point(draw_x, draw_y, color);
// 1823          GUI_Line(x, y, draw_x, draw_y, color);
// 1824       } 
// 1825       
// 1826       if(op_x<=0)
// 1827       {  if(draw_on==1) GUI_Point(draw_x, draw_y, color);		// 开始画图
// 1828          break;
// 1829       }
// 1830    }
// 1831   
// 1832   
// 1833    /* 开始顺时针画弧，从89度开始(第1像限) */
// 1834    draw_y = y+r;
// 1835    draw_x = x;         
// 1836    op_y = r;
// 1837    op_x = 0;
// 1838    while(1)
// 1839    {  /* 计算下一点 */
// 1840       op_x++;
// 1841       draw_x++;
// 1842       if( (2*op_x*op_x + 2*op_y*op_y - op_2rr - 2*op_y +1)>0 ) // 使用逐点比较法实现画圆弧
// 1843       {  op_y--;
// 1844          draw_y--;
// 1845       }
// 1846       if(draw_on==1) GUI_Point(draw_x, draw_y, color);			// 开始画图
// 1847       pno_angle++;
// 1848       if( (pno_angle==stangle)||(pno_angle==endangle) )			// 若遇到起点或终点，画点开关取反
// 1849       {  draw_on = 1-draw_on;
// 1850          if(draw_on==1) GUI_Point(draw_x, draw_y, color);
// 1851          GUI_Line(x, y, draw_x, draw_y, color);
// 1852       } 
// 1853       
// 1854       if(op_x>=op_y)
// 1855       {  if(draw_on==1) GUI_Point(draw_x, draw_y, color);		// 开始画图
// 1856          break;
// 1857       }
// 1858    }
// 1859    
// 1860    while(1)
// 1861    {  /* 计算下一点 */
// 1862       op_y--;
// 1863       draw_y--;
// 1864       if( (2*op_x*op_x + 2*op_y*op_y - op_2rr + 2*op_x +1)<=0 ) // 使用逐点比较法实现画圆弧
// 1865       {  op_x++;
// 1866          draw_x++;
// 1867       }
// 1868       if(draw_on==1) GUI_Point(draw_x, draw_y, color);			// 开始画图
// 1869       pno_angle++;
// 1870       if( (pno_angle==stangle)||(pno_angle==endangle) )			// 若遇到起点或终点，画点开关取反
// 1871       {  draw_on = 1-draw_on;
// 1872          if(draw_on==1) GUI_Point(draw_x, draw_y, color);
// 1873          GUI_Line(x, y, draw_x, draw_y, color);
// 1874       } 
// 1875       if(op_y<=0)
// 1876       {  if(draw_on==1) GUI_Point(draw_x, draw_y, color);
// 1877          break;
// 1878       }
// 1879    }
// 1880 }
// 1881 #endif
// 
// 3 332 bytes in section .text
// 
// 3 332 bytes of CODE memory
//
//Errors: none
//Warnings: 1
