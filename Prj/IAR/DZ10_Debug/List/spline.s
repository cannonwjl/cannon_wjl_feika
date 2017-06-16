///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      12/Jun/2017  17:32:58
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\@@@@@@@\Car\Drivers\ZLG_GUI\spline.c
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EWE836.tmp
//        (D:\@@@@@@@\Car\Drivers\ZLG_GUI\spline.c -D DEBUG -D
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
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\spline.s
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

        EXTERN GUI_LineS
        EXTERN __aeabi_d2f
        EXTERN __aeabi_d2iz
        EXTERN __aeabi_ddiv
        EXTERN __aeabi_f2d
        EXTERN __aeabi_f2iz
        EXTERN __aeabi_fadd
        EXTERN __aeabi_fdiv
        EXTERN __aeabi_fmul
        EXTERN __aeabi_fsub
        EXTERN __aeabi_i2d
        EXTERN __aeabi_i2f
        EXTERN __aeabi_ui2f
        EXTERN abs
        EXTERN sqrt

        PUBLIC CURVE_GetCount
        PUBLIC CURVE_GetCurve
        PUBLIC CURVE_SetCurve
        PUBLIC GUI_Spline
        PUBLIC SPLINE_Generate
        PUBLIC SPLINE_GetCurve
        PUBLIC SPLINE_GetCurveCount
        PUBLIC SPLINE_MatrixSolve
        PUBLIC SPLINE_SetSpline
        PUBLIC max
        
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
        
// D:\@@@@@@@\Car\Drivers\ZLG_GUI\spline.c
//    1 /****************************************************************************************
//    2 * 文件名：SPLINE.C
//    3 * 功能：二次参数样条曲线生成程序。
//    4 * 作者：黄绍斌
//    5 * 日期：2003.09.09
//    6 ****************************************************************************************/
//    7 #include  "config.h"
//    8 #include  "math.h"
//    9 
//   10 
//   11 /****************************************************************************
//   12 * 名称：max()
//   13 * 功能：求两个整数中最大的整数值。
//   14 * 入口参数：a			整数1
//   15 *          b		整数2
//   16 * 出口参数：返回最大的整数值
//   17 ****************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function max
          CFI NoCalls
        THUMB
//   18 int  max(int a, int b)
//   19 {  if(a>b) return(a);
max:
        MOVS     R2,R0
        CMP      R1,R2
        BGE.N    ??max_0
        MOVS     R0,R2
        B.N      ??max_1
//   20      else  return(b);
??max_0:
        MOVS     R0,R1
??max_1:
        BX       LR               ;; return
//   21 }
          CFI EndBlock cfiBlock0
//   22 
//   23 ///****************************************************************************
//   24 //* 名称：abs()
//   25 //* 功能：求一个整数的绝对值。
//   26 //* 入口参数：a			取绝对值的数据
//   27 //* 出口参数：返回a的绝对值
//   28 //****************************************************************************/
//   29 //int  abs(int a)
//   30 //{  if(a>0) return(a);
//   31 //     else  return(-a);
//   32 //}
//   33 
//   34 
//   35 
//   36 /* 曲线类变量及相关函数 */
//   37 typedef  struct
//   38 {  float  	Ax, Ay;			// 定义A、B、C点坐标变量
//   39    float  	Bx, By;
//   40    float  	Cx, Cy;
//   41    
//   42    int    	Ndiv;			// 定义曲线平滑参数变量     
//   43 } CURVE;  
//   44 
//   45 #define  DIV_FACTOR 		8.0				/* 平滑控制参数 */
//   46 /****************************************************************************
//   47 * 名称：CURVE_SetCurve()
//   48 * 功能：设置三点曲线参数。
//   49 * 入口参数：	cl		要操作的曲线对象，CURVE结构
//   50 *           ax		a点x坐标值
//   51 *           ay		a点y坐标值
//   52 *			bx		b点x坐标值
//   53 *           by		b点y坐标值
//   54 *			cx		c点x坐标值
//   55 *           cy		c点y坐标值
//   56 * 出口参数：无
//   57 * 说明：
//   58 ****************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function CURVE_SetCurve
        THUMB
//   59 void  CURVE_SetCurve(CURVE *cl,
//   60                      float ax, float ay, 
//   61                		 float bx, float by,
//   62                		 float cx, float cy) 
//   63 {  cl->Ax = ax;
CURVE_SetCurve:
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
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOV      R10,R3
        LDR      R9,[SP, #+40]
        LDR      R8,[SP, #+44]
        LDR      R7,[SP, #+48]
        STR      R5,[R4, #+0]
//   64    cl->Ay = ay;
        STR      R6,[R4, #+4]
//   65    cl->Bx = bx; 
        STR      R10,[R4, #+8]
//   66    cl->By = by;
        STR      R9,[R4, #+12]
//   67    cl->Cx = cx; 
        STR      R8,[R4, #+16]
//   68    cl->Cy = cy;
        STR      R7,[R4, #+20]
//   69    
//   70    cl->Ndiv = (int)(max( abs((int)ax), abs((int)ay) ) / DIV_FACTOR);
        MOVS     R0,R6
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
          CFI FunCall abs
        BL       abs
        MOV      R11,R0
        MOVS     R0,R5
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
          CFI FunCall abs
        BL       abs
        MOV      R1,R11
          CFI FunCall max
        BL       max
          CFI FunCall __aeabi_i2d
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable3  ;; 0x40200000
          CFI FunCall __aeabi_ddiv
        BL       __aeabi_ddiv
          CFI FunCall __aeabi_d2iz
        BL       __aeabi_d2iz
        STR      R0,[R4, #+24]
//   71 }
        POP      {R0,R4-R11,PC}   ;; return
          CFI EndBlock cfiBlock1
//   72 
//   73 
//   74 /****************************************************************************
//   75 * 名称：CURVE_GetCount()
//   76 * 功能：取出平滑参数Ndiv+1的值。
//   77 * 入口参数：cl		要操作的曲线对象，CURVE结构
//   78 * 出口参数：返回Ndiv+1的值
//   79 * 说明：若Ndiv为0，则先设置其为1。
//   80 ****************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function CURVE_GetCount
          CFI NoCalls
        THUMB
//   81 int  CURVE_GetCount(CURVE *cl)
//   82 {  if(0 == cl->Ndiv) cl->Ndiv=1;
CURVE_GetCount:
        LDR      R1,[R0, #+24]
        CMP      R1,#+0
        BNE.N    ??CURVE_GetCount_0
        MOVS     R1,#+1
        STR      R1,[R0, #+24]
//   83 
//   84    return(cl->Ndiv+1);
??CURVE_GetCount_0:
        LDR      R0,[R0, #+24]
        ADDS     R0,R0,#+1
        BX       LR               ;; return
//   85 }
          CFI EndBlock cfiBlock2
//   86 
//   87 
//   88 /****************************************************************************
//   89 * 名称：CURVE_GetCurve()
//   90 * 功能：增加曲线点到points。
//   91 * 入口参数：cl			要操作的曲线对象，CURVE结构
//   92 *          x			新增点的x坐标值
//   93 *		   y 			新增点的y坐标值
//   94 *		   points		曲线点缓冲区
//   95 *          PointCount	缓冲区的当前指针
//   96 * 出口参数：无
//   97 * 说明：
//   98 ****************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function CURVE_GetCurve
        THUMB
//   99 void  CURVE_GetCurve(CURVE *cl, float x, float y, PointXY points[], int *PointCount)
//  100 {  int    X, Y;
CURVE_GetCurve:
        PUSH     {R4-R11,LR}
          CFI R14 Frame(CFA, -4)
          CFI R11 Frame(CFA, -8)
          CFI R10 Frame(CFA, -12)
          CFI R9 Frame(CFA, -16)
          CFI R8 Frame(CFA, -20)
          CFI R7 Frame(CFA, -24)
          CFI R6 Frame(CFA, -28)
          CFI R5 Frame(CFA, -32)
          CFI R4 Frame(CFA, -36)
          CFI CFA R13+36
        SUB      SP,SP,#+20
          CFI CFA R13+56
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        LDR      R8,[SP, #+56]
//  101    float  t, f, g, h;
//  102    int    i;
//  103 
//  104    if(cl->Ndiv==0)  cl->Ndiv = 1;
        LDR      R0,[R4, #+24]
        CMP      R0,#+0
        BNE.N    ??CURVE_GetCurve_0
        MOVS     R0,#+1
        STR      R0,[R4, #+24]
//  105 
//  106     /* 新增一个点到结构 */
//  107 	X = (int)x; 
??CURVE_GetCurve_0:
        MOVS     R0,R5
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        STR      R0,[SP, #+4]
//  108 	Y = (int)y;
        MOVS     R0,R6
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        STR      R0,[SP, #+0]
//  109 	points[*PointCount].x = X;
        LDR      R0,[SP, #+4]
        LDR      R1,[R8, #+0]
        STR      R0,[R7, R1, LSL #+3]
//  110 	points[*PointCount].y = Y;
        LDR      R0,[SP, #+0]
        LDR      R1,[R8, #+0]
        ADD      R1,R7,R1, LSL #+3
        STR      R0,[R1, #+4]
//  111 	(*PointCount)++;
        LDR      R0,[R8, #+0]
        ADDS     R0,R0,#+1
        STR      R0,[R8, #+0]
//  112 
//  113     /* 变换出ndiv个点 */
//  114 	for(i=1; i<=cl->Ndiv; i++)
        MOVS     R0,#+1
        MOV      R10,R0
??CURVE_GetCurve_1:
        LDR      R0,[R4, #+24]
        CMP      R0,R10
        BLT.W    ??CURVE_GetCurve_2
//  115 	{  t = 1.0f / (float)cl->Ndiv * (float)i;
        LDR      R0,[R4, #+24]
          CFI FunCall __aeabi_i2f
        BL       __aeabi_i2f
        MOVS     R1,R0
        MOVS     R0,#+1065353216
          CFI FunCall __aeabi_fdiv
        BL       __aeabi_fdiv
        MOV      R11,R0
        MOV      R0,R10
          CFI FunCall __aeabi_i2f
        BL       __aeabi_i2f
        MOV      R1,R11
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
        MOV      R9,R0
//  116 	   f = t * t * (3.0f - 2.0f * t);
        MOV      R0,R9
        MOV      R1,R9
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
        MOV      R11,R0
        MOVS     R0,#+1073741824
        MOV      R1,R9
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR.W    R0,??DataTable3_1  ;; 0x40400000
          CFI FunCall __aeabi_fsub
        BL       __aeabi_fsub
        MOV      R1,R11
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
        STR      R0,[SP, #+16]
//  117 	   g = t * (t - 1.0f) * (t-1.0f);
        LDR.W    R0,??DataTable3_2  ;; 0xbf800000
        MOV      R1,R9
          CFI FunCall __aeabi_fadd
        BL       __aeabi_fadd
        MOV      R1,R9
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
        MOV      R11,R0
        LDR.W    R0,??DataTable3_2  ;; 0xbf800000
        MOV      R1,R9
          CFI FunCall __aeabi_fadd
        BL       __aeabi_fadd
        MOV      R1,R11
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
        STR      R0,[SP, #+12]
//  118 	   h = t * t * (t-1.0f);
        MOV      R0,R9
        MOV      R1,R9
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
        MOV      R11,R0
        LDR.W    R0,??DataTable3_2  ;; 0xbf800000
        MOV      R1,R9
          CFI FunCall __aeabi_fadd
        BL       __aeabi_fadd
        MOV      R1,R11
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
        STR      R0,[SP, #+8]
//  119 		
//  120 	   X = (int)(x + cl->Ax*f + cl->Bx*g + cl->Cx*h);
        LDR      R0,[R4, #+0]
        LDR      R1,[SP, #+16]
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
        MOVS     R1,R5
          CFI FunCall __aeabi_fadd
        BL       __aeabi_fadd
        MOV      R11,R0
        LDR      R0,[R4, #+8]
        LDR      R1,[SP, #+12]
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
        MOV      R1,R11
          CFI FunCall __aeabi_fadd
        BL       __aeabi_fadd
        MOV      R11,R0
        LDR      R0,[R4, #+16]
        LDR      R1,[SP, #+8]
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
        MOV      R1,R11
          CFI FunCall __aeabi_fadd
        BL       __aeabi_fadd
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        STR      R0,[SP, #+4]
//  121 	   Y = (int)(y + cl->Ay*f + cl->By*g + cl->Cy*h);
        LDR      R0,[R4, #+4]
        LDR      R1,[SP, #+16]
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
        MOVS     R1,R6
          CFI FunCall __aeabi_fadd
        BL       __aeabi_fadd
        MOV      R11,R0
        LDR      R0,[R4, #+12]
        LDR      R1,[SP, #+12]
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
        MOV      R1,R11
          CFI FunCall __aeabi_fadd
        BL       __aeabi_fadd
        MOV      R11,R0
        LDR      R0,[R4, #+20]
        LDR      R1,[SP, #+8]
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
        MOV      R1,R11
          CFI FunCall __aeabi_fadd
        BL       __aeabi_fadd
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        STR      R0,[SP, #+0]
//  122 		
//  123 	   points[*PointCount].x = X;
        LDR      R0,[SP, #+4]
        LDR      R1,[R8, #+0]
        STR      R0,[R7, R1, LSL #+3]
//  124 	   points[*PointCount].y = Y;
        LDR      R0,[SP, #+0]
        LDR      R1,[R8, #+0]
        ADD      R1,R7,R1, LSL #+3
        STR      R0,[R1, #+4]
//  125 	   (*PointCount)++;
        LDR      R0,[R8, #+0]
        ADDS     R0,R0,#+1
        STR      R0,[R8, #+0]
//  126 	}
        ADDS     R10,R10,#+1
        B.N      ??CURVE_GetCurve_1
//  127 }
??CURVE_GetCurve_2:
        ADD      SP,SP,#+20
          CFI CFA R13+36
        POP      {R4-R11,PC}      ;; return
          CFI EndBlock cfiBlock3
//  128 
//  129 
//  130 
//  131 /***************************************************************************/
//  132 
//  133 
//  134 /****************************************************************************
//  135 * 名称：SPLINE_Spline()
//  136 * 功能：样条曲线初始化函数，将特征点输入到样条曲线对象中。
//  137 * 入口参数：sl			要操作的样条曲线对象，SPLINE结构
//  138 *		   pt			特征点数据		
//  139 *          np			特征点个数
//  140 * 出口参数：无
//  141 * 说明：
//  142 ****************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function SPLINE_SetSpline
        THUMB
//  143 void  SPLINE_SetSpline(SPLINE *sl, PointXY pt[], int np)
//  144 {  int  i;
SPLINE_SetSpline:
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
//  145 
//  146    sl->Np = np;
        STR      R6,[R4, #+440]
//  147 
//  148    /* 将点数据复制到sl对象 */
//  149    for(i=0; i<sl->Np; i++) 
        MOVS     R0,#+0
        MOVS     R7,R0
??SPLINE_SetSpline_0:
        LDR      R0,[R4, #+440]
        CMP      R7,R0
        BGE.N    ??SPLINE_SetSpline_1
//  150    {  sl->Px[i] = (float)pt[i].x;  
        LDR      R0,[R5, R7, LSL #+3]
          CFI FunCall __aeabi_ui2f
        BL       __aeabi_ui2f
        STR      R0,[R4, R7, LSL #+2]
//  151 	  sl->Py[i] = (float)pt[i].y;
        ADD      R0,R5,R7, LSL #+3
        LDR      R0,[R0, #+4]
          CFI FunCall __aeabi_ui2f
        BL       __aeabi_ui2f
        ADD      R1,R4,R7, LSL #+2
        STR      R0,[R1, #+40]
//  152    }
        ADDS     R7,R7,#+1
        B.N      ??SPLINE_SetSpline_0
//  153 }
??SPLINE_SetSpline_1:
        POP      {R0,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock4
//  154 
//  155 
//  156 
//  157 /****************************************************************************
//  158 * 名称：SPLINE_MatrixSolve()
//  159 * 功能：求解矩阵。
//  160 * 入口参数：sl		要操作的样条曲线对象，SPLINE结构
//  161 *          B		需操作B点数据(数组)
//  162 * 出口参数：无
//  163 * 说明：由SPLINE_Generate()调用，计算值保存在B返回。
//  164 ****************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function SPLINE_MatrixSolve
        THUMB
//  165 void  SPLINE_MatrixSolve(SPLINE *sl, float B[]) 
//  166 {  float  Work[NPMAX];
SPLINE_MatrixSolve:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
        SUB      SP,SP,#+80
          CFI CFA R13+104
        MOVS     R4,R0
        MOVS     R5,R1
//  167    float  WorkB[NPMAX];
//  168    int    i, j;
//  169 		
//  170    for(i=0; i<=(sl->Np-1); i++) 
        MOVS     R0,#+0
        MOVS     R6,R0
??SPLINE_MatrixSolve_0:
        LDR      R0,[R4, #+440]
        SUBS     R0,R0,#+1
        CMP      R0,R6
        BLT.N    ??SPLINE_MatrixSolve_1
//  171    {  Work[i] = B[i] / sl->Mat[1][i];
        LDR      R0,[R5, R6, LSL #+2]
        ADD      R1,R4,R6, LSL #+2
        LDR      R1,[R1, #+360]
          CFI FunCall __aeabi_fdiv
        BL       __aeabi_fdiv
        ADD      R1,SP,#+40
        STR      R0,[R1, R6, LSL #+2]
//  172 	  WorkB[i] = Work[i];
        ADD      R0,SP,#+40
        LDR      R0,[R0, R6, LSL #+2]
        MOV      R1,SP
        STR      R0,[R1, R6, LSL #+2]
//  173    }
        ADDS     R6,R6,#+1
        B.N      ??SPLINE_MatrixSolve_0
//  174 
//  175    for(j=0; j<10; j++) 
??SPLINE_MatrixSolve_1:
        MOVS     R0,#+0
        MOVS     R7,R0
??SPLINE_MatrixSolve_2:
        CMP      R7,#+10
        BGE.N    ??SPLINE_MatrixSolve_3
//  176    {  Work[0] = (B[0] - sl->Mat[2][0] * WorkB[1]) / sl->Mat[1][0];
        LDR      R1,[R4, #+400]
        LDR      R0,[SP, #+4]
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR      R0,[R5, #+0]
          CFI FunCall __aeabi_fsub
        BL       __aeabi_fsub
        LDR      R1,[R4, #+360]
          CFI FunCall __aeabi_fdiv
        BL       __aeabi_fdiv
        STR      R0,[SP, #+40]
//  177 	  for(i=1; i<(sl->Np-1); i++ ) 
        MOVS     R0,#+1
        MOVS     R6,R0
??SPLINE_MatrixSolve_4:
        LDR      R0,[R4, #+440]
        SUBS     R0,R0,#+1
        CMP      R6,R0
        BGE.N    ??SPLINE_MatrixSolve_5
//  178   	  {  Work[i] = (B[i] - sl->Mat[0][i] * WorkB[i-1] - sl->Mat[2][i] * WorkB[i+1]) / sl->Mat[1][i];
        ADD      R0,R4,R6, LSL #+2
        LDR      R0,[R0, #+320]
        MOV      R1,SP
        ADD      R1,R1,R6, LSL #+2
        LDR      R1,[R1, #-4]
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR      R0,[R5, R6, LSL #+2]
          CFI FunCall __aeabi_fsub
        BL       __aeabi_fsub
        MOV      R8,R0
        ADD      R0,R4,R6, LSL #+2
        LDR      R0,[R0, #+400]
        MOV      R1,SP
        ADD      R1,R1,R6, LSL #+2
        LDR      R1,[R1, #+4]
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOV      R0,R8
          CFI FunCall __aeabi_fsub
        BL       __aeabi_fsub
        ADD      R1,R4,R6, LSL #+2
        LDR      R1,[R1, #+360]
          CFI FunCall __aeabi_fdiv
        BL       __aeabi_fdiv
        ADD      R1,SP,#+40
        STR      R0,[R1, R6, LSL #+2]
//  179 	  }
        ADDS     R6,R6,#+1
        B.N      ??SPLINE_MatrixSolve_4
//  180 	  Work[sl->Np-1] = (B[sl->Np-1] - sl->Mat[0][sl->Np-1] * WorkB[sl->Np-2]) / sl->Mat[1][sl->Np-1];
??SPLINE_MatrixSolve_5:
        ADD      R0,SP,#+40
        LDR      R1,[R4, #+440]
        ADD      R8,R0,R1, LSL #+2
        LDR      R0,[R4, #+440]
        ADD      R0,R4,R0, LSL #+2
        LDR      R1,[R0, #+316]
        MOV      R0,SP
        LDR      R2,[R4, #+440]
        ADD      R0,R0,R2, LSL #+2
        LDR      R0,[R0, #-8]
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR      R0,[R4, #+440]
        ADD      R0,R5,R0, LSL #+2
        LDR      R0,[R0, #-4]
          CFI FunCall __aeabi_fsub
        BL       __aeabi_fsub
        LDR      R1,[R4, #+440]
        ADD      R1,R4,R1, LSL #+2
        LDR      R1,[R1, #+356]
          CFI FunCall __aeabi_fdiv
        BL       __aeabi_fdiv
        STR      R0,[R8, #-4]
//  181 
//  182 	  for(i=0; i<=(sl->Np-1); i++) 
        MOVS     R0,#+0
        MOVS     R6,R0
??SPLINE_MatrixSolve_6:
        LDR      R0,[R4, #+440]
        SUBS     R0,R0,#+1
        CMP      R0,R6
        BLT.N    ??SPLINE_MatrixSolve_7
//  183 	  {  WorkB[i] = Work[i];
        ADD      R0,SP,#+40
        LDR      R0,[R0, R6, LSL #+2]
        MOV      R1,SP
        STR      R0,[R1, R6, LSL #+2]
//  184 	  }
        ADDS     R6,R6,#+1
        B.N      ??SPLINE_MatrixSolve_6
//  185    }
??SPLINE_MatrixSolve_7:
        ADDS     R7,R7,#+1
        B.N      ??SPLINE_MatrixSolve_2
//  186    
//  187    for(i=0; i<=(sl->Np-1); i++) 
??SPLINE_MatrixSolve_3:
        MOVS     R0,#+0
        MOVS     R6,R0
??SPLINE_MatrixSolve_8:
        LDR      R0,[R4, #+440]
        SUBS     R0,R0,#+1
        CMP      R0,R6
        BLT.N    ??SPLINE_MatrixSolve_9
//  188    {  B[i] = Work[i];
        ADD      R0,SP,#+40
        LDR      R0,[R0, R6, LSL #+2]
        STR      R0,[R5, R6, LSL #+2]
//  189    }
        ADDS     R6,R6,#+1
        B.N      ??SPLINE_MatrixSolve_8
//  190    
//  191 }
??SPLINE_MatrixSolve_9:
        ADD      SP,SP,#+80
          CFI CFA R13+24
        POP      {R4-R8,PC}       ;; return
          CFI EndBlock cfiBlock5
//  192 
//  193 
//  194 
//  195 /****************************************************************************
//  196 * 名称：SPLINE_Generate()
//  197 * 功能：产生样条曲线图形。产生的各个端点保存到sl的结构内。
//  198 * 入口参数：sl		要操作的样条曲线对象，SPLINE结构
//  199 * 出口参数：无
//  200 * 说明：sl要先使用SPLINE_SetSpline()设置各个特征点。
//  201 ****************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function SPLINE_Generate
        THUMB
//  202 void  SPLINE_Generate(SPLINE *sl) 
//  203 {  float  k[NPMAX];
SPLINE_Generate:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
        SUB      SP,SP,#+40
          CFI CFA R13+64
        MOVS     R4,R0
//  204    float  AMag , AMagOld;
//  205    int    i;
//  206 
//  207    /* 设置A点值 */
//  208    for(i=0 ; i<=(sl->Np-2); i++ ) 
        MOVS     R0,#+0
        MOVS     R7,R0
??SPLINE_Generate_0:
        LDR      R0,[R4, #+440]
        SUBS     R0,R0,#+2
        CMP      R0,R7
        BLT.N    ??SPLINE_Generate_1
//  209    {  sl->Ax[i] = sl->Px[i+1] - sl->Px[i];
        ADD      R0,R4,R7, LSL #+2
        LDR      R0,[R0, #+4]
        LDR      R1,[R4, R7, LSL #+2]
          CFI FunCall __aeabi_fsub
        BL       __aeabi_fsub
        ADD      R1,R4,R7, LSL #+2
        STR      R0,[R1, #+80]
//  210 	  sl->Ay[i] = sl->Py[i+1] - sl->Py[i];
        ADD      R0,R4,R7, LSL #+2
        LDR      R0,[R0, #+44]
        ADD      R1,R4,R7, LSL #+2
        LDR      R1,[R1, #+40]
          CFI FunCall __aeabi_fsub
        BL       __aeabi_fsub
        ADD      R1,R4,R7, LSL #+2
        STR      R0,[R1, #+120]
//  211    }
        ADDS     R7,R7,#+1
        B.N      ??SPLINE_Generate_0
//  212 		
//  213    /* 计算k变量 */
//  214    AMagOld = (float)sqrt(sl->Ax[0] * sl->Ax[0] + sl->Ay[0] * sl->Ay[0]);
??SPLINE_Generate_1:
        LDR      R1,[R4, #+80]
        LDR      R0,[R4, #+80]
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
        MOV      R8,R0
        LDR      R1,[R4, #+120]
        LDR      R0,[R4, #+120]
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
        MOV      R1,R8
          CFI FunCall __aeabi_fadd
        BL       __aeabi_fadd
          CFI FunCall __aeabi_f2d
        BL       __aeabi_f2d
          CFI FunCall sqrt
        BL       sqrt
          CFI FunCall __aeabi_d2f
        BL       __aeabi_d2f
        MOVS     R6,R0
//  215    for(i=0 ; i<=(sl->Np-3); i++) 
        MOVS     R0,#+0
        MOVS     R7,R0
??SPLINE_Generate_2:
        LDR      R0,[R4, #+440]
        SUBS     R0,R0,#+3
        CMP      R0,R7
        BLT.N    ??SPLINE_Generate_3
//  216    {  AMag = (float)sqrt(sl->Ax[i+1] * sl->Ax[i+1] + sl->Ay[i+1] * sl->Ay[i+1]);
        ADD      R0,R4,R7, LSL #+2
        LDR      R0,[R0, #+84]
        ADD      R1,R4,R7, LSL #+2
        LDR      R1,[R1, #+84]
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
        MOV      R8,R0
        ADD      R0,R4,R7, LSL #+2
        LDR      R0,[R0, #+124]
        ADD      R1,R4,R7, LSL #+2
        LDR      R1,[R1, #+124]
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
        MOV      R1,R8
          CFI FunCall __aeabi_fadd
        BL       __aeabi_fadd
          CFI FunCall __aeabi_f2d
        BL       __aeabi_f2d
          CFI FunCall sqrt
        BL       sqrt
          CFI FunCall __aeabi_d2f
        BL       __aeabi_d2f
        MOVS     R5,R0
//  217 	  k[i] = AMagOld / AMag;
        MOVS     R0,R6
        MOVS     R1,R5
          CFI FunCall __aeabi_fdiv
        BL       __aeabi_fdiv
        MOV      R1,SP
        STR      R0,[R1, R7, LSL #+2]
//  218 	  AMagOld = AMag;
        MOVS     R6,R5
//  219    }
        ADDS     R7,R7,#+1
        B.N      ??SPLINE_Generate_2
//  220    k[sl->Np-2] = 1.0f;
??SPLINE_Generate_3:
        MOV      R0,SP
        LDR      R1,[R4, #+440]
        ADD      R0,R0,R1, LSL #+2
        MOVS     R1,#+1065353216
        STR      R1,[R0, #-8]
//  221 
//  222    /* 矩阵计算 */
//  223    for(i=1; i<=(sl->Np-2); i++) 
        MOVS     R0,#+1
        MOVS     R7,R0
??SPLINE_Generate_4:
        LDR      R0,[R4, #+440]
        SUBS     R0,R0,#+2
        CMP      R0,R7
        BLT.N    ??SPLINE_Generate_5
//  224    {  sl->Mat[0][i] = 1.0f;
        MOVS     R0,#+1065353216
        ADD      R1,R4,R7, LSL #+2
        STR      R0,[R1, #+320]
//  225 	  sl->Mat[1][i] = 2.0f * k[i-1] * (1.0f + k[i-1]);
        MOV      R0,SP
        ADD      R0,R0,R7, LSL #+2
        LDR      R0,[R0, #-4]
        MOVS     R1,#+1073741824
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
        MOV      R8,R0
        MOV      R0,SP
        ADD      R0,R0,R7, LSL #+2
        LDR      R0,[R0, #-4]
        MOVS     R1,#+1065353216
          CFI FunCall __aeabi_fadd
        BL       __aeabi_fadd
        MOV      R1,R8
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
        ADD      R1,R4,R7, LSL #+2
        STR      R0,[R1, #+360]
//  226 	  sl->Mat[2][i] = k[i-1] * k[i-1] * k[i];
        MOV      R0,SP
        ADD      R0,R0,R7, LSL #+2
        LDR      R0,[R0, #-4]
        MOV      R1,SP
        ADD      R1,R1,R7, LSL #+2
        LDR      R1,[R1, #-4]
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
        MOV      R1,SP
        LDR      R1,[R1, R7, LSL #+2]
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
        ADD      R1,R4,R7, LSL #+2
        STR      R0,[R1, #+400]
//  227    }
        ADDS     R7,R7,#+1
        B.N      ??SPLINE_Generate_4
//  228    sl->Mat[1][0] = 2.0f;
??SPLINE_Generate_5:
        MOVS     R0,#+1073741824
        STR      R0,[R4, #+360]
//  229    sl->Mat[2][0] = k[0];
        LDR      R0,[SP, #+0]
        STR      R0,[R4, #+400]
//  230    sl->Mat[0][sl->Np-1] = 1.0f;
        LDR      R0,[R4, #+440]
        ADD      R0,R4,R0, LSL #+2
        MOVS     R1,#+1065353216
        STR      R1,[R0, #+316]
//  231    sl->Mat[1][sl->Np-1] = 2.0f * k[sl->Np-2];
        LDR      R0,[R4, #+440]
        ADD      R8,R4,R0, LSL #+2
        MOV      R0,SP
        LDR      R1,[R4, #+440]
        ADD      R0,R0,R1, LSL #+2
        LDR      R1,[R0, #-8]
        MOVS     R0,#+1073741824
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
        STR      R0,[R8, #+356]
//  232  
//  233    for(i=1; i<=(sl->Np-2);i++) 
        MOVS     R0,#+1
        MOVS     R7,R0
??SPLINE_Generate_6:
        LDR      R0,[R4, #+440]
        SUBS     R0,R0,#+2
        CMP      R0,R7
        BLT.N    ??SPLINE_Generate_7
//  234    {  sl->Bx[i] = 3.0f*(sl->Ax[i-1] + k[i-1] * k[i-1] * sl->Ax[i]);
        MOV      R0,SP
        ADD      R0,R0,R7, LSL #+2
        LDR      R0,[R0, #-4]
        MOV      R1,SP
        ADD      R1,R1,R7, LSL #+2
        LDR      R1,[R1, #-4]
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
        ADD      R1,R4,R7, LSL #+2
        LDR      R1,[R1, #+80]
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
        ADD      R1,R4,R7, LSL #+2
        LDR      R1,[R1, #+76]
          CFI FunCall __aeabi_fadd
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable3_1  ;; 0x40400000
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
        ADD      R1,R4,R7, LSL #+2
        STR      R0,[R1, #+160]
//  235 	  sl->By[i] = 3.0f*(sl->Ay[i-1] + k[i-1] * k[i-1] * sl->Ay[i]);
        MOV      R0,SP
        ADD      R0,R0,R7, LSL #+2
        LDR      R0,[R0, #-4]
        MOV      R1,SP
        ADD      R1,R1,R7, LSL #+2
        LDR      R1,[R1, #-4]
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
        ADD      R1,R4,R7, LSL #+2
        LDR      R1,[R1, #+120]
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
        ADD      R1,R4,R7, LSL #+2
        LDR      R1,[R1, #+116]
          CFI FunCall __aeabi_fadd
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable3_1  ;; 0x40400000
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
        ADD      R1,R4,R7, LSL #+2
        STR      R0,[R1, #+200]
//  236    }
        ADDS     R7,R7,#+1
        B.N      ??SPLINE_Generate_6
//  237    sl->Bx[0] = 3.0f * sl->Ax[0];
??SPLINE_Generate_7:
        LDR      R1,[R4, #+80]
        LDR.N    R0,??DataTable3_1  ;; 0x40400000
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
        STR      R0,[R4, #+160]
//  238    sl->By[0] = 3.0f * sl->Ay[0];
        LDR      R1,[R4, #+120]
        LDR.N    R0,??DataTable3_1  ;; 0x40400000
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
        STR      R0,[R4, #+200]
//  239    sl->Bx[sl->Np-1] = 3.0f * sl->Ax[sl->Np-2];
        LDR      R0,[R4, #+440]
        ADD      R8,R4,R0, LSL #+2
        LDR      R0,[R4, #+440]
        ADD      R0,R4,R0, LSL #+2
        LDR      R1,[R0, #+72]
        LDR.N    R0,??DataTable3_1  ;; 0x40400000
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
        STR      R0,[R8, #+156]
//  240    sl->By[sl->Np-1] = 3.0f * sl->Ay[sl->Np-2];
        LDR      R0,[R4, #+440]
        ADD      R8,R4,R0, LSL #+2
        LDR      R0,[R4, #+440]
        ADD      R0,R4,R0, LSL #+2
        LDR      R1,[R0, #+112]
        LDR.N    R0,??DataTable3_1  ;; 0x40400000
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
        STR      R0,[R8, #+196]
//  241 
//  242    SPLINE_MatrixSolve(sl, sl->Bx);
        ADDS     R1,R4,#+160
        MOVS     R0,R4
          CFI FunCall SPLINE_MatrixSolve
        BL       SPLINE_MatrixSolve
//  243    SPLINE_MatrixSolve(sl, sl->By);
        ADDS     R1,R4,#+200
        MOVS     R0,R4
          CFI FunCall SPLINE_MatrixSolve
        BL       SPLINE_MatrixSolve
//  244 
//  245    for(i=0 ; i<=sl->Np-2 ; i++ ) 
        MOVS     R0,#+0
        MOVS     R7,R0
??SPLINE_Generate_8:
        LDR      R0,[R4, #+440]
        SUBS     R0,R0,#+2
        CMP      R0,R7
        BLT.N    ??SPLINE_Generate_9
//  246    {  sl->Cx[i] = k[i] * sl->Bx[i+1];
        MOV      R0,SP
        LDR      R0,[R0, R7, LSL #+2]
        ADD      R1,R4,R7, LSL #+2
        LDR      R1,[R1, #+164]
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
        ADD      R1,R4,R7, LSL #+2
        STR      R0,[R1, #+240]
//  247 	  sl->Cy[i] = k[i] * sl->By[i+1];
        MOV      R0,SP
        LDR      R0,[R0, R7, LSL #+2]
        ADD      R1,R4,R7, LSL #+2
        LDR      R1,[R1, #+204]
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
        ADD      R1,R4,R7, LSL #+2
        STR      R0,[R1, #+280]
//  248    }
        ADDS     R7,R7,#+1
        B.N      ??SPLINE_Generate_8
//  249 }
??SPLINE_Generate_9:
        ADD      SP,SP,#+40
          CFI CFA R13+24
        POP      {R4-R8,PC}       ;; return
          CFI EndBlock cfiBlock6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     0x40200000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     0x40400000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     0xbf800000
//  250 
//  251 
//  252 
//  253 
//  254 
//  255 /****************************************************************************
//  256 * 名称：SPLINE_GetCurveCount()
//  257 * 功能：取得样条曲线上端点个数值。
//  258 * 入口参数：sl		要操作的样条曲线对象，SPLINE结构
//  259 * 出口参数：返回值即是样条曲线各个端点个数
//  260 * 说明：sl要先使用SPLINE_SetSpline()设置各个特征点。
//  261 ****************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function SPLINE_GetCurveCount
        THUMB
//  262 int  SPLINE_GetCurveCount(SPLINE *sl)
//  263 {  CURVE  curve_bak;
SPLINE_GetCurveCount:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        SUB      SP,SP,#+40
          CFI CFA R13+56
        MOVS     R4,R0
//  264    int    count = 0;
        MOVS     R5,#+0
//  265    int    i;
//  266    
//  267    for(i=0; i<(sl->Np - 1); i++)	// 历遍所有特征点 
        MOVS     R0,#+0
        MOVS     R6,R0
??SPLINE_GetCurveCount_0:
        LDR      R0,[R4, #+440]
        SUBS     R0,R0,#+1
        CMP      R6,R0
        BGE.N    ??SPLINE_GetCurveCount_1
//  268    {  /* 设置样条曲线(三点)curve_bak */
//  269       CURVE_SetCurve(&curve_bak, 
//  270                      sl->Ax[i], sl->Ay[i], 
//  271                      sl->Bx[i], sl->By[i], 
//  272                      sl->Cx[i], sl->Cy[i]);
        ADD      R0,R4,R6, LSL #+2
        LDR      R0,[R0, #+280]
        STR      R0,[SP, #+8]
        ADD      R0,R4,R6, LSL #+2
        LDR      R0,[R0, #+240]
        STR      R0,[SP, #+4]
        ADD      R0,R4,R6, LSL #+2
        LDR      R0,[R0, #+200]
        STR      R0,[SP, #+0]
        ADD      R0,R4,R6, LSL #+2
        LDR      R3,[R0, #+160]
        ADD      R0,R4,R6, LSL #+2
        LDR      R2,[R0, #+120]
        ADD      R0,R4,R6, LSL #+2
        LDR      R1,[R0, #+80]
        ADD      R0,SP,#+12
          CFI FunCall CURVE_SetCurve
        BL       CURVE_SetCurve
//  273       /* 取得曲线curve_bak上端点的个数 */
//  274 	  count += CURVE_GetCount(&curve_bak);
        ADD      R0,SP,#+12
          CFI FunCall CURVE_GetCount
        BL       CURVE_GetCount
        ADDS     R0,R0,R5
        MOVS     R5,R0
//  275    }
        ADDS     R6,R6,#+1
        B.N      ??SPLINE_GetCurveCount_0
//  276    
//  277    return(count);
??SPLINE_GetCurveCount_1:
        MOVS     R0,R5
        ADD      SP,SP,#+40
          CFI CFA R13+16
        POP      {R4-R6,PC}       ;; return
//  278 }
          CFI EndBlock cfiBlock7
//  279 
//  280 
//  281 
//  282 /****************************************************************************
//  283 * 名称：SPLINE_GetCurve()
//  284 * 功能：取出样条曲线上各个端点，以便于使用GUI_Line()函数画出曲线。
//  285 * 入口参数：sl			要操作的样条曲线对象，SPLINE结构
//  286 *          points		用于接收曲线点的缓冲区，PointXY数组
//  287 *          PointCount	用于接收曲线点个数的指针
//  288 * 出口参数：无
//  289 * 说明：接收曲线点由points返回，曲线点个数由PointCount返回；
//  290 *      sl要先使用SPLINE_SetSpline()设置各个特征点。
//  291 ****************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function SPLINE_GetCurve
        THUMB
//  292 void  SPLINE_GetCurve(SPLINE *sl, PointXY points[], int *PointCount)
//  293 {  CURVE  curve_bak;
SPLINE_GetCurve:
        PUSH     {R4-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+20
        SUB      SP,SP,#+44
          CFI CFA R13+64
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  294    int    i;
//  295 
//  296    *PointCount = 0;						// 初始化点计数器为0
        MOVS     R0,#+0
        STR      R0,[R6, #+0]
//  297    for(i=0; i<(sl->Np-1); i++) 			// 历遍所有特征点
        MOVS     R0,#+0
        MOVS     R7,R0
??SPLINE_GetCurve_0:
        LDR      R0,[R4, #+440]
        SUBS     R0,R0,#+1
        CMP      R7,R0
        BGE.N    ??SPLINE_GetCurve_1
//  298    {  /* 设置样条曲线(三点)curve_bak */
//  299    	  CURVE_SetCurve(&curve_bak, 
//  300    					 sl->Ax[i], sl->Ay[i],
//  301                      sl->Bx[i], sl->By[i], 
//  302                      sl->Cx[i], sl->Cy[i]);
        ADD      R0,R4,R7, LSL #+2
        LDR      R0,[R0, #+280]
        STR      R0,[SP, #+8]
        ADD      R0,R4,R7, LSL #+2
        LDR      R0,[R0, #+240]
        STR      R0,[SP, #+4]
        ADD      R0,R4,R7, LSL #+2
        LDR      R0,[R0, #+200]
        STR      R0,[SP, #+0]
        ADD      R0,R4,R7, LSL #+2
        LDR      R3,[R0, #+160]
        ADD      R0,R4,R7, LSL #+2
        LDR      R2,[R0, #+120]
        ADD      R0,R4,R7, LSL #+2
        LDR      R1,[R0, #+80]
        ADD      R0,SP,#+12
          CFI FunCall CURVE_SetCurve
        BL       CURVE_SetCurve
//  303                      
//  304       /* 取得样条曲线curve_bak的端点数据及个数 */               
//  305 	  CURVE_GetCurve(&curve_bak, 
//  306 	                 sl->Px[i], sl->Py[i], 
//  307 	                 points, 
//  308 	                 PointCount);
        STR      R6,[SP, #+0]
        MOVS     R3,R5
        ADD      R0,R4,R7, LSL #+2
        LDR      R2,[R0, #+40]
        LDR      R1,[R4, R7, LSL #+2]
        ADD      R0,SP,#+12
          CFI FunCall CURVE_GetCurve
        BL       CURVE_GetCurve
//  309    }
        ADDS     R7,R7,#+1
        B.N      ??SPLINE_GetCurve_0
//  310 }
??SPLINE_GetCurve_1:
        ADD      SP,SP,#+44
          CFI CFA R13+20
        POP      {R4-R7,PC}       ;; return
          CFI EndBlock cfiBlock8
//  311 
//  312 
//  313 /****************************************************************************
//  314 * 名称：GUI_Spline()
//  315 * 功能：作出多个特征点(3个以上)样条曲线。
//  316 * 入口参数points		特征点数组
//  317 *          no			特征点的个数
//  318 * 出口参数：无
//  319 ****************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function GUI_Spline
        THUMB
//  320 void  GUI_Spline(PointXY points[], int no, TCOLOR color)
//  321 {  SPLINE   sl;
GUI_Spline:
        PUSH     {R1,R4,R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        SUB      SP,SP,#+1088
          CFI CFA R13+1104
        MOVS     R4,R0
        MOVS     R5,R2
//  322    PointXY  sl_points[NPMAX * (int)DIV_FACTOR];
//  323    
//  324    if( (no<3)||(no>NPMAX) ) return;
        LDR      R0,[SP, #+1088]
        CMP      R0,#+3
        BLT.N    ??GUI_Spline_0
        LDR      R0,[SP, #+1088]
        CMP      R0,#+11
        BLT.N    ??GUI_Spline_1
??GUI_Spline_0:
        B.N      ??GUI_Spline_2
//  325    
//  326    SPLINE_SetSpline(&sl, points, no);
??GUI_Spline_1:
        LDR      R2,[SP, #+1088]
        MOVS     R1,R4
        ADD      R0,SP,#+640
          CFI FunCall SPLINE_SetSpline
        BL       SPLINE_SetSpline
//  327    SPLINE_Generate(&sl);
        ADD      R0,SP,#+640
          CFI FunCall SPLINE_Generate
        BL       SPLINE_Generate
//  328    SPLINE_GetCurve(&sl, sl_points, &no);
        ADD      R2,SP,#+1088
        MOV      R1,SP
        ADD      R0,SP,#+640
          CFI FunCall SPLINE_GetCurve
        BL       SPLINE_GetCurve
//  329 
//  330    GUI_LineS((uint32 *)sl_points, no, color);
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR      R0,[SP, #+1088]
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,SP
          CFI FunCall GUI_LineS
        BL       GUI_LineS
//  331 }
??GUI_Spline_2:
        ADD      SP,SP,#+1024
          CFI CFA R13+80
        ADD      SP,SP,#+68
          CFI CFA R13+12
        POP      {R4,R5,PC}       ;; return
          CFI EndBlock cfiBlock9

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  332 
//  333 
//  334 
//  335 	
//  336 
//  337 
// 
// 1 908 bytes in section .text
// 
// 1 908 bytes of CODE memory
//
//Errors: none
//Warnings: none
