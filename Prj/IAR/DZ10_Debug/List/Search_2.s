///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      16/Jun/2017  18:57:11
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\@@@@@@@\Car\Drivers\Search\Search_2.c
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EW1D39.tmp
//        (D:\@@@@@@@\Car\Drivers\Search\Search_2.c -D DEBUG -D
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
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\Search_2.s
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

        EXTERN Beep
        EXTERN Debug_Button_WhatisBeep
        EXTERN Left_FLine
        EXTERN Mid_FLine
        EXTERN PID_TURN
        EXTERN Pic
        EXTERN Right_FLine
        EXTERN Search_1_Line_center
        EXTERN ShiZiFind
        EXTERN __aeabi_cdcmple
        EXTERN __aeabi_cfcmple
        EXTERN __aeabi_cfrcmple
        EXTERN __aeabi_d2f
        EXTERN __aeabi_d2iz
        EXTERN __aeabi_dadd
        EXTERN __aeabi_ddiv
        EXTERN __aeabi_dmul
        EXTERN __aeabi_dsub
        EXTERN __aeabi_f2d
        EXTERN __aeabi_f2iz
        EXTERN __aeabi_fmul
        EXTERN __aeabi_fsub
        EXTERN __aeabi_i2d
        EXTERN __aeabi_i2f
        EXTERN __aeabi_memclr4

        PUBLIC Cross_Find
        PUBLIC Effective_Point_Mid
        PUBLIC FindCrossTimes
        PUBLIC Get_Mid
        PUBLIC Give_Line
        PUBLIC HowMuch_Ring_Finds
        PUBLIC How_Much_To_Find_Ring
        PUBLIC In_Ring_Flag
        PUBLIC L_dx
        PUBLIC L_dy
        PUBLIC L_ux
        PUBLIC L_uy
        PUBLIC Last_Ring
        PUBLIC Left_line
        PUBLIC Mid_X
        PUBLIC Mid_Y
        PUBLIC Mid_line
        PUBLIC Pic_Find
        PUBLIC Pic_Give
        PUBLIC R_dx
        PUBLIC R_dy
        PUBLIC R_ux
        PUBLIC R_uy
        PUBLIC Right_line
        PUBLIC Rode_Cross
        PUBLIC Rode_Ring
        PUBLIC Seagull_Left
        PUBLIC Seagull_Mid
        PUBLIC Seagull_Num
        PUBLIC Seagull_Right
        PUBLIC Search_HO
        
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
        
// D:\@@@@@@@\Car\Drivers\Search\Search_2.c
//    1  //Search 3
//    2 
//    3 #include "ALL_Init.h"
//    4 #include "Search_2.h"
//    5 
//    6 
//    7 
//    8 #define PIC_ROW          60
//    9 #define PIC_COL          80
//   10 #define P_BLACK           1
//   11 #define P_WHITE           0
//   12 
//   13 #define SEARCH_2_PIC Pic
//   14 #define YWH_ABV(x,y) (x>y?x-y:y-x)
//   15 
//   16 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   17 int Left_line[60]={0};
Left_line:
        DS8 240

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   18 int Right_line[60]={0};
Right_line:
        DS8 240

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   19 int Mid_line[60]={0};
Mid_line:
        DS8 240
//   20 
//   21 //图像校准数组
//   22 //400 的角度

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   23 int Pic_Give[60]={
Pic_Give:
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 11, 11, 12, 12, 13, 13, 14, 14
        DC32 15, 15, 16, 16, 17, 17, 18, 18, 19, 19, 20, 20, 21, 21, 22, 23, 23
        DC32 24, 24, 25, 25, 26, 26, 27, 27, 28, 28, 29, 29, 30, 30, 31, 31, 32
        DC32 32, 33, 33, 34, 34, 35, 36
//   24  0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
//   25 10,11,11,12,12,13,13,14,14,15,
//   26 15,16,16,17,17,18,18,19,19,20,
//   27 20,21,21,22,23,23,24,24,25,25,
//   28 26,26,27,27,28,28,29,29,30,30,
//   29 31,31,32,32,33,33,34,34,35,36,
//   30 };
//   31 
//   32 //海鸥算法

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   33 int Seagull_Left  =0 ; //海鸥左标志
Seagull_Left:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   34 int Seagull_Right =0 ; //海鸥右标志
Seagull_Right:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   35 int Seagull_Mid   =25 ; //海鸥中标志
Seagull_Mid:
        DC32 25

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   36 int Seagull_Num   =0 ; //竖向数目
Seagull_Num:
        DS8 4
//   37 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   38 int HowMuch_Ring_Finds=0;//记录发现了多少次环路才算真环路
HowMuch_Ring_Finds:
        DS8 4
//   39 //Debug_Button_WhatisBeep
//   40 
//   41 
//   42 
//   43 //环路标志位
//   44 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   45 int Rode_Ring=0;
Rode_Ring:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   46 int Last_Ring=0;
Last_Ring:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   47 int In_Ring_Flag=0;
In_Ring_Flag:
        DS8 4
//   48 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   49 int How_Much_To_Find_Ring=0;
How_Much_To_Find_Ring:
        DS8 4
//   50 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   51 int Rode_Cross=0;
Rode_Cross:
        DS8 4
//   52 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   53 int Effective_Point_Mid=0; //记录有效中心点数
Effective_Point_Mid:
        DS8 4
//   54 
//   55 typedef struct 
//   56 {
//   57   int x;
//   58   int y;
//   59   int m;
//   60 }Point;
//   61 
//   62 
//   63 #define Cross_Find_Pic Pic
//   64 
//   65 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function Give_Line
        THUMB
//   66 void Give_Line(int x_d,int y_d,int x_u,int y_u )
//   67 {
Give_Line:
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
        MOV      R10,R0
        MOVS     R6,R1
        MOV      R11,R2
        MOVS     R7,R3
//   68   float K=0.00001;
        LDR.W    R4,??DataTable4  ;; 0x3727c5ac
//   69   K=((x_u-x_d)/(y_u-y_d==0?0.01:y_u-y_d))*100;
        SUBS     R0,R7,R6
        CMP      R0,#+0
        BNE.N    ??Give_Line_0
        LDR.W    R4,??DataTable4_1  ;; 0x47ae147b
        LDR.W    R5,??DataTable4_2  ;; 0x3f847ae1
        B.N      ??Give_Line_1
??Give_Line_0:
        SUBS     R0,R7,R6
          CFI FunCall __aeabi_i2d
        BL       __aeabi_i2d
        MOVS     R4,R0
        MOVS     R5,R1
??Give_Line_1:
        SUBS     R0,R11,R10
          CFI FunCall __aeabi_i2d
        BL       __aeabi_i2d
        MOVS     R2,R4
        MOVS     R3,R5
          CFI FunCall __aeabi_ddiv
        BL       __aeabi_ddiv
        MOVS     R2,#+0
        LDR.W    R3,??DataTable4_3  ;; 0x40590000
          CFI FunCall __aeabi_dmul
        BL       __aeabi_dmul
          CFI FunCall __aeabi_d2f
        BL       __aeabi_d2f
        MOVS     R4,R0
//   70   for(int t=y_d;t>=y_u;t--)
        MOVS     R5,R6
??Give_Line_2:
        CMP      R5,R7
        BLT.N    ??Give_Line_3
//   71   {
//   72          Cross_Find_Pic[t][(int)((t-y_d)*K*0.01+x_d)] = P_BLACK;
        SUBS     R0,R5,R6
          CFI FunCall __aeabi_i2f
        BL       __aeabi_i2f
        MOVS     R1,R4
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
          CFI FunCall __aeabi_f2d
        BL       __aeabi_f2d
        MOVS     R2,R0
        MOVS     R3,R1
        LDR.W    R0,??DataTable4_1  ;; 0x47ae147b
        LDR.W    R1,??DataTable4_2  ;; 0x3f847ae1
          CFI FunCall __aeabi_dmul
        BL       __aeabi_dmul
        MOV      R8,R0
        MOV      R9,R1
        MOV      R0,R10
          CFI FunCall __aeabi_i2d
        BL       __aeabi_i2d
        MOV      R2,R8
        MOV      R3,R9
          CFI FunCall __aeabi_dadd
        BL       __aeabi_dadd
          CFI FunCall __aeabi_d2iz
        BL       __aeabi_d2iz
        LDR.W    R1,??DataTable4_4
        MOVS     R2,#+80
        MUL      R2,R2,R5
        ADD      R1,R1,R2
        MOVS     R2,#+1
        STRB     R2,[R1, R0]
//   73   }
        SUBS     R5,R5,#+1
        B.N      ??Give_Line_2
//   74   
//   75   return ;
??Give_Line_3:
        POP      {R0,R4-R11,PC}   ;; return
//   76 }
          CFI EndBlock cfiBlock0
//   77 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   78 int R_ux=0,R_uy=0,R_dx=0,R_dy=0,L_dx=0,L_dy=0,L_ux=0,L_uy=0;
R_ux:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
R_uy:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
R_dx:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
R_dy:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
L_dx:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
L_dy:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
L_ux:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
L_uy:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   79 int Mid_X=0;
Mid_X:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   80 int Mid_Y=0;
Mid_Y:
        DS8 4
//   81 
//   82 //十字查找并补线
//   83 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   84 int FindCrossTimes=0;
FindCrossTimes:
        DS8 4

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function Cross_Find
        THUMB
//   85 void Cross_Find(void)
//   86 {
Cross_Find:
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
        SUB      SP,SP,#+916
          CFI CFA R13+952
//   87   int G_RD_Flag=0;
        MOVS     R0,#+0
        STR      R0,[SP, #+100]
//   88   int G_RU_Flag=0;
        MOVS     R0,#+0
        STR      R0,[SP, #+96]
//   89   int G_LD_Flag=0;
        MOVS     R0,#+0
        STR      R0,[SP, #+92]
//   90   int G_LU_Flag=0;
        MOVS     R0,#+0
        STR      R0,[SP, #+88]
//   91   
//   92   Point G_RD={0,0,0};
        ADD      R0,SP,#+12
        MOVS     R1,#+0
        MOVS     R2,#+0
        MOVS     R3,#+0
        STM      R0,{R1-R3}
//   93   Point G_RU={0,0,0};
        ADD      R0,SP,#+48
        MOVS     R1,#+0
        MOVS     R2,#+0
        MOVS     R3,#+0
        STM      R0,{R1-R3}
//   94   Point G_LD={0,0,0};
        MOV      R0,SP
        MOVS     R1,#+0
        MOVS     R2,#+0
        MOVS     R3,#+0
        STM      R0,{R1-R3}
//   95   Point G_LU={0,0,0};
        ADD      R0,SP,#+36
        MOVS     R1,#+0
        MOVS     R2,#+0
        MOVS     R3,#+0
        STM      R0,{R1-R3}
//   96   
//   97   Point Max_High={0,60,0};//记录最高的列在哪
        ADD      R0,SP,#+104
        LDR.W    R1,??DataTable4_5
        LDM      R1,{R2-R4}
        STM      R0,{R2-R4}
//   98   
//   99   
//  100   
//  101   
//  102   int Left_Find=0;     //左侧查找
        MOVS     R0,#+0
        STR      R0,[SP, #+84]
//  103   int Right_Find=0;    //右侧查找
        MOVS     R0,#+0
        STR      R0,[SP, #+80]
//  104   int Left_Line[60]={0}; //左侧边线
        ADD      R0,SP,#+676
        MOVS     R1,#+240
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
//  105   int Right_Line[60]={0};//右侧边线
        ADD      R0,SP,#+436
        MOVS     R1,#+240
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
//  106   int Line_Jump[80]={0}; //
        ADD      R0,SP,#+116
        MOV      R1,#+320
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
//  107   
//  108   
//  109   
//  110   int HowMuchMid=0;//有效中心点个数
        MOVS     R0,#+0
        STR      R0,[SP, #+76]
//  111   
//  112   
//  113 //  //辅助显示图像清空
//  114 //  for(int i=59;i>=0;i--)
//  115 //  {
//  116 //    for(int j=0;j<80;j++)
//  117 //      Pic_show[i][j] =P_BLACK;
//  118 //  }
//  119 //  
//  120   //竖向扫描，找到每行竖线的高度
//  121   for(int j=0;j<80;j++)
        MOVS     R0,#+0
??Cross_Find_0:
        CMP      R0,#+80
        BGE.N    ??Cross_Find_1
//  122   {  
//  123      for(int i=59;i>=0;i--)
        MOVS     R1,#+59
??Cross_Find_2:
        CMP      R1,#+0
        BMI.N    ??Cross_Find_3
//  124      {
//  125          if(Cross_Find_Pic[i][j]==P_BLACK)
        LDR.W    R2,??DataTable4_4
        MOVS     R3,#+80
        MUL      R3,R3,R1
        ADD      R2,R2,R3
        LDRB     R2,[R2, R0]
        CMP      R2,#+1
        BEQ.N    ??Cross_Find_3
//  126          {
//  127             break; 
//  128          }
//  129          else
//  130          {
//  131             Line_Jump[j]++;
??Cross_Find_4:
        ADD      R2,SP,#+116
        LDR      R2,[R2, R0, LSL #+2]
        ADDS     R2,R2,#+1
        ADD      R3,SP,#+116
        STR      R2,[R3, R0, LSL #+2]
//  132             //Pic_show[i][j] =P_WHITE;
//  133          }
//  134      }
        SUBS     R1,R1,#+1
        B.N      ??Cross_Find_2
//  135   }
??Cross_Find_3:
        ADDS     R0,R0,#+1
        B.N      ??Cross_Find_0
//  136   
//  137   //如果最近两个点左右是白色，说明进入十字 ，算作两个拐点
//  138   
//  139   if(Line_Jump[0]>=10)
??Cross_Find_1:
        LDR      R0,[SP, #+116]
        CMP      R0,#+10
        BLT.N    ??Cross_Find_5
//  140   {
//  141      G_LD.x=0;
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
//  142      G_LD.y=59;
        MOVS     R0,#+59
        STR      R0,[SP, #+4]
//  143      G_LD.m=1;
        MOVS     R0,#+1
        STR      R0,[SP, #+8]
        B.N      ??Cross_Find_6
//  144   }
//  145   else
//  146   {
//  147      G_LD.m=0;
??Cross_Find_5:
        MOVS     R0,#+0
        STR      R0,[SP, #+8]
//  148   }
//  149   
//  150   if(Line_Jump[79]>=10)
??Cross_Find_6:
        LDR      R0,[SP, #+432]
        CMP      R0,#+10
        BLT.N    ??Cross_Find_7
//  151   {
//  152      G_RD.x=79;
        MOVS     R0,#+79
        STR      R0,[SP, #+12]
//  153      G_RD.y=59;
        MOVS     R0,#+59
        STR      R0,[SP, #+16]
//  154      G_RD.m=1;
        MOVS     R0,#+1
        STR      R0,[SP, #+20]
        B.N      ??Cross_Find_8
//  155   }
//  156   else
//  157   {
//  158      G_RD.m=0;
??Cross_Find_7:
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//  159   }
//  160   
//  161   //如果刚才没找到拐点，就通过纵向的跳变来找到拐点
//  162   int Jump_L=0;//临时变量，记录斜率变化
??Cross_Find_8:
        MOVS     R0,#+0
        STR      R0,[SP, #+32]
//  163   int Jump_R=0; 
        MOVS     R0,#+0
        STR      R0,[SP, #+28]
//  164   int A=0; //变化率
        MOVS     R8,#+0
//  165   int B=0;
        MOVS     R4,#+0
//  166   
//  167   
//  168   for(int j=0;j<50;j++)
        MOVS     R1,#+0
??Cross_Find_9:
        CMP      R1,#+50
        BGE.N    ??Cross_Find_10
//  169   {
//  170     if(G_LD.m!=1)
        LDR      R0,[SP, #+8]
        CMP      R0,#+1
        BEQ.N    ??Cross_Find_11
//  171     {
//  172         A= Line_Jump[j+1]-Line_Jump[j]; //变化率
        ADD      R0,SP,#+116
        ADD      R0,R0,R1, LSL #+2
        LDR      R2,[R0, #+4]
        ADD      R0,SP,#+116
        LDR      R0,[R0, R1, LSL #+2]
        SUBS     R2,R2,R0
        MOV      R8,R2
//  173         if(A-Jump_L>10)//说明找到一个左拐点//
        LDR      R0,[SP, #+32]
        SUBS     R0,R8,R0
        CMP      R0,#+11
        BLT.N    ??Cross_Find_12
//  174         {
//  175            G_LD.x=j;
        STR      R1,[SP, #+0]
//  176            G_LD.y=59-Line_Jump[j];
        ADD      R0,SP,#+116
        LDR      R0,[R0, R1, LSL #+2]
        RSBS     R0,R0,#+59
        STR      R0,[SP, #+4]
//  177            G_LD.m=1;
        MOVS     R0,#+1
        STR      R0,[SP, #+8]
//  178         }
//  179         Jump_L=A;
??Cross_Find_12:
        STR      R8,[SP, #+32]
//  180     }
//  181   }
??Cross_Find_11:
        ADDS     R1,R1,#+1
        B.N      ??Cross_Find_9
//  182   
//  183   for(int j=0;j<50;j++)
??Cross_Find_10:
        MOVS     R1,#+0
??Cross_Find_13:
        CMP      R1,#+50
        BGE.N    ??Cross_Find_14
//  184   {
//  185     if(G_RD.m!=1)
        LDR      R0,[SP, #+20]
        CMP      R0,#+1
        BEQ.N    ??Cross_Find_15
//  186     {
//  187         B= Line_Jump[78-j]-Line_Jump[79-j]; //变化率
        ADD      R0,SP,#+116
        RSBS     R2,R1,#+0
        ADD      R0,R0,R2, LSL #+2
        LDR      R2,[R0, #+312]
        ADD      R0,SP,#+116
        RSBS     R3,R1,#+0
        ADD      R0,R0,R3, LSL #+2
        LDR      R0,[R0, #+316]
        SUBS     R2,R2,R0
        MOVS     R4,R2
//  188         if(B-Jump_R>10)//说明找到一个右拐点//
        LDR      R0,[SP, #+28]
        SUBS     R0,R4,R0
        CMP      R0,#+11
        BLT.N    ??Cross_Find_16
//  189         {
//  190            G_RD.x=79-j;
        RSBS     R0,R1,#+79
        STR      R0,[SP, #+12]
//  191            G_RD.y=59-Line_Jump[79-j];
        ADD      R0,SP,#+116
        RSBS     R2,R1,#+0
        ADD      R0,R0,R2, LSL #+2
        LDR      R0,[R0, #+316]
        RSBS     R0,R0,#+59
        STR      R0,[SP, #+16]
//  192            G_RD.m=1;
        MOVS     R0,#+1
        STR      R0,[SP, #+20]
//  193         }
//  194         Jump_R=B;
??Cross_Find_16:
        STR      R4,[SP, #+28]
//  195     }
//  196   }
??Cross_Find_15:
        ADDS     R1,R1,#+1
        B.N      ??Cross_Find_13
//  197   
//  198   /**************这个地方负责让UI显示拐点的位置，球***************/
//  199   if(G_LD.m==1)
??Cross_Find_14:
        LDR      R0,[SP, #+8]
        CMP      R0,#+1
        BNE.N    ??Cross_Find_17
//  200   {
//  201      L_dx=G_LD.x;
        LDR      R0,[SP, #+0]
        LDR.W    R1,??DataTable4_6
        STR      R0,[R1, #+0]
//  202      L_dy=G_LD.y;
        LDR      R0,[SP, #+4]
        LDR.W    R1,??DataTable4_7
        STR      R0,[R1, #+0]
        B.N      ??Cross_Find_18
//  203   }
//  204   else
//  205   {
//  206      L_dx =-1;
??Cross_Find_17:
        MOVS     R0,#-1
        LDR.W    R1,??DataTable4_6
        STR      R0,[R1, #+0]
//  207      L_dy =90;
        MOVS     R0,#+90
        LDR.W    R1,??DataTable4_7
        STR      R0,[R1, #+0]
//  208   }
//  209   
//  210   
//  211   if(G_RD.m==1)
??Cross_Find_18:
        LDR      R0,[SP, #+20]
        CMP      R0,#+1
        BNE.N    ??Cross_Find_19
//  212   {
//  213      R_dx=G_RD.x;
        LDR      R0,[SP, #+12]
        LDR.W    R1,??DataTable4_8
        STR      R0,[R1, #+0]
//  214      R_dy=G_RD.y;
        LDR      R0,[SP, #+16]
        LDR.W    R1,??DataTable4_9
        STR      R0,[R1, #+0]
        B.N      ??Cross_Find_20
//  215   }
//  216   else
//  217   {
//  218      R_dx =-1;
??Cross_Find_19:
        MOVS     R0,#-1
        LDR.W    R1,??DataTable4_8
        STR      R0,[R1, #+0]
//  219      R_dy =90;
        MOVS     R0,#+90
        LDR.W    R1,??DataTable4_9
        STR      R0,[R1, #+0]
//  220   } 
//  221   
//  222   
//  223   
//  224   //找到最高的列
//  225  
//  226  
//  227   int X_Find= (int)((G_LD.x+G_RD.x)*0.5);
??Cross_Find_20:
        LDR      R0,[SP, #+0]
        LDR      R1,[SP, #+12]
        ADDS     R0,R1,R0
          CFI FunCall __aeabi_i2d
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable4_10  ;; 0x3fe00000
          CFI FunCall __aeabi_dmul
        BL       __aeabi_dmul
          CFI FunCall __aeabi_d2iz
        BL       __aeabi_d2iz
        STR      R0,[SP, #+24]
//  228   int Lie_Max_Num=0;
        MOVS     R5,#+0
//  229   int Lie_Max_Where=0;
        MOVS     R6,#+0
//  230   for(int i=X_Find;i<80&&Line_Jump[i]>0;i++)
        LDR      R0,[SP, #+24]
??Cross_Find_21:
        CMP      R0,#+80
        BGE.N    ??Cross_Find_22
        ADD      R1,SP,#+116
        LDR      R1,[R1, R0, LSL #+2]
        CMP      R1,#+1
        BLT.N    ??Cross_Find_22
//  231   {
//  232     if(Lie_Max_Num<Line_Jump[i])
        ADD      R1,SP,#+116
        LDR      R1,[R1, R0, LSL #+2]
        CMP      R5,R1
        BGE.N    ??Cross_Find_23
//  233     {
//  234        Lie_Max_Num=Line_Jump[i];
        ADD      R1,SP,#+116
        LDR      R1,[R1, R0, LSL #+2]
        MOVS     R5,R1
//  235        Lie_Max_Where=i;
        MOVS     R6,R0
//  236     }
//  237   }
??Cross_Find_23:
        ADDS     R0,R0,#+1
        B.N      ??Cross_Find_21
//  238   for(int i=X_Find;i>=0&&Line_Jump[i]>0;i--)
??Cross_Find_22:
        LDR      R0,[SP, #+24]
??Cross_Find_24:
        CMP      R0,#+0
        BMI.N    ??Cross_Find_25
        ADD      R1,SP,#+116
        LDR      R1,[R1, R0, LSL #+2]
        CMP      R1,#+1
        BLT.N    ??Cross_Find_25
//  239   {
//  240      if(Lie_Max_Num<Line_Jump[i])
        ADD      R1,SP,#+116
        LDR      R1,[R1, R0, LSL #+2]
        CMP      R5,R1
        BGE.N    ??Cross_Find_26
//  241      {
//  242         Lie_Max_Num= Line_Jump[i];
        ADD      R1,SP,#+116
        LDR      R1,[R1, R0, LSL #+2]
        MOVS     R5,R1
//  243         Lie_Max_Where=i;
        MOVS     R6,R0
//  244      }
//  245   }
??Cross_Find_26:
        SUBS     R0,R0,#+1
        B.N      ??Cross_Find_24
//  246   
//  247   Mid_X=Lie_Max_Where;
??Cross_Find_25:
        LDR.W    R0,??DataTable4_11
        STR      R6,[R0, #+0]
//  248   Mid_Y=59-Lie_Max_Num;
        RSBS     R0,R5,#+59
        LDR.W    R1,??DataTable4_12
        STR      R0,[R1, #+0]
//  249   
//  250   if(G_RD.m==1&&G_LD.m==1&&G_RD.y>=30&&G_LD.y>=30)
        LDR      R0,[SP, #+20]
        CMP      R0,#+1
        BNE.W    ??Cross_Find_27
        LDR      R0,[SP, #+8]
        CMP      R0,#+1
        BNE.W    ??Cross_Find_27
        LDR      R0,[SP, #+16]
        CMP      R0,#+30
        BLT.W    ??Cross_Find_27
        LDR      R0,[SP, #+4]
        CMP      R0,#+30
        BLT.W    ??Cross_Find_27
//  251   {
//  252     if(G_RD.x-G_LD.x<0) return ;
        LDR      R1,[SP, #+12]
        LDR      R0,[SP, #+0]
        SUBS     R1,R1,R0
        CMP      R1,#+0
        BMI.W    ??Cross_Find_28
//  253     
//  254            //以刚才的两点中间点作为稳定的中点，向上查找，找最远距离
//  255            int X_FindtoLong=(G_RD.x+G_LD.x )*0.5;
??Cross_Find_29:
        LDR      R0,[SP, #+12]
        LDR      R1,[SP, #+0]
        ADDS     R0,R1,R0
          CFI FunCall __aeabi_i2d
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable4_10  ;; 0x3fe00000
          CFI FunCall __aeabi_dmul
        BL       __aeabi_dmul
          CFI FunCall __aeabi_d2iz
        BL       __aeabi_d2iz
        STR      R0,[SP, #+68]
//  256            int Y_FindtoLong=(G_RD.y+G_LD.y )*0.5;
        LDR      R0,[SP, #+16]
        LDR      R1,[SP, #+4]
        ADDS     R0,R1,R0
          CFI FunCall __aeabi_i2d
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable4_10  ;; 0x3fe00000
          CFI FunCall __aeabi_dmul
        BL       __aeabi_dmul
          CFI FunCall __aeabi_d2iz
        BL       __aeabi_d2iz
        MOVS     R7,R0
//  257            
//  258            while(Cross_Find_Pic[--Y_FindtoLong][X_FindtoLong]==P_WHITE&&Y_FindtoLong>10);
??Cross_Find_30:
        SUBS     R7,R7,#+1
        LDR.W    R0,??DataTable4_4
        MOVS     R1,#+80
        MUL      R1,R1,R7
        ADD      R0,R0,R1
        LDR      R1,[SP, #+68]
        LDRB     R0,[R0, R1]
        CMP      R0,#+0
        BNE.N    ??Cross_Find_31
        CMP      R7,#+11
        BGE.N    ??Cross_Find_30
//  259            //检查一下最远点和俩拐点的关系
//  260            
//  261            if(((int)(G_RD.y+G_LD.y )*0.5-Y_FindtoLong)<10)
??Cross_Find_31:
        LDR      R0,[SP, #+16]
        LDR      R1,[SP, #+4]
        ADDS     R0,R1,R0
          CFI FunCall __aeabi_i2d
        BL       __aeabi_i2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,#+0
        LDR.W    R1,??DataTable4_10  ;; 0x3fe00000
          CFI FunCall __aeabi_dmul
        BL       __aeabi_dmul
        MOV      R10,R0
        MOV      R11,R1
        MOVS     R0,R7
          CFI FunCall __aeabi_i2d
        BL       __aeabi_i2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOV      R0,R10
        MOV      R1,R11
          CFI FunCall __aeabi_dsub
        BL       __aeabi_dsub
        MOVS     R2,#+0
        LDR.W    R3,??DataTable4_13  ;; 0x40240000
          CFI FunCall __aeabi_cdcmple
        BL       __aeabi_cdcmple
        BCC.W    ??Cross_Find_28
//  262              return;
//  263            //说明是环路
//  264 //           if(Y_FindtoLong-(int)((G_RD.y+G_LD.y )*0.5)>-25&&G_LD.y>50&&G_RD.y>50)
//  265 //           {
//  266 //             if(Debug_Button_WhatisBeep==1)   Beep(10);
//  267 //             
//  268 ////               FindCrossTimes++;
//  269 ////               FindCrossTimes%=0;
//  270 //               
//  271 //               //if(FindCrossTimes)
//  272 //               //Give_Line(G_LD.x,G_LD.y,G_RD.x-15,G_RD.y-10);//斜着补线，左下补到右上更平滑一些
//  273 ////               else
//  274 ////               {
//  275 //               Give_Line(G_RD.x,G_RD.y,G_LD.x+15,G_LD.y+10);//斜着补线，左下补到右上更平滑一些
//  276 ////               }
//  277 //           }
//  278 //           else
//  279            {
//  280               //找到最远点了
//  281               //然后从下面两个拐点纵坐标开始想上找，直到宽度小于拐点的距离
//  282               
//  283               int Find_Minx=80;
??Cross_Find_32:
        MOVS     R0,#+80
        STR      R0,[SP, #+72]
//  284               int Find_Start=(int)((G_LD.y+G_RD.y)*0.5) ;
        LDR      R0,[SP, #+4]
        LDR      R1,[SP, #+16]
        ADDS     R0,R1,R0
          CFI FunCall __aeabi_i2d
        BL       __aeabi_i2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,#+0
        LDR.W    R1,??DataTable4_10  ;; 0x3fe00000
          CFI FunCall __aeabi_dmul
        BL       __aeabi_dmul
          CFI FunCall __aeabi_d2iz
        BL       __aeabi_d2iz
        MOV      R9,R0
//  285               int NumWhitePoint=0;
        MOVS     R10,#+0
//  286               
//  287               for(;Find_Start>0&&Find_Start>59-Lie_Max_Num;Find_Start--)
??Cross_Find_33:
        CMP      R9,#+1
        BLT.W    ??Cross_Find_27
        RSBS     R0,R5,#+59
        CMP      R0,R9
        BGE.W    ??Cross_Find_27
//  288               {
//  289                 int i= Lie_Max_Where;
        MOV      R11,R6
//  290                 NumWhitePoint=0;
        MOVS     R0,#+0
        MOV      R10,R0
//  291                 while(Cross_Find_Pic[Find_Start][++i]==P_WHITE)NumWhitePoint++;
??Cross_Find_34:
        ADDS     R11,R11,#+1
        LDR.W    R0,??DataTable4_4
        MOVS     R1,#+80
        MUL      R1,R1,R9
        ADD      R0,R0,R1
        LDRB     R0,[R0, R11]
        CMP      R0,#+0
        BNE.N    ??Cross_Find_35
        ADDS     R10,R10,#+1
        B.N      ??Cross_Find_34
//  292                 i= Lie_Max_Where;
??Cross_Find_35:
        MOV      R11,R6
//  293                 while(Cross_Find_Pic[Find_Start][--i]==P_WHITE)NumWhitePoint++;
??Cross_Find_36:
        SUBS     R11,R11,#+1
        LDR.W    R0,??DataTable4_4
        MOVS     R1,#+80
        MUL      R1,R1,R9
        ADD      R0,R0,R1
        LDRB     R0,[R0, R11]
        CMP      R0,#+0
        BNE.N    ??Cross_Find_37
        ADDS     R10,R10,#+1
        B.N      ??Cross_Find_36
//  294                 //得到这一行的宽度
//  295                 
//  296                 if(NumWhitePoint*NumWhitePoint<(G_LD.y-G_RD.y)*(G_LD.y-G_RD.y)+(G_LD.x-G_RD.x)*(G_LD.x-G_RD.x)&&NumWhitePoint*NumWhitePoint<625)
??Cross_Find_37:
        MUL      R2,R10,R10
        LDR      R1,[SP, #+4]
        LDR      R0,[SP, #+16]
        SUBS     R1,R1,R0
        LDR      R3,[SP, #+4]
        LDR      R0,[SP, #+16]
        SUBS     R3,R3,R0
        LDR      R12,[SP, #+0]
        LDR      R0,[SP, #+12]
        SUBS     R12,R12,R0
        LDR      LR,[SP, #+0]
        LDR      R0,[SP, #+12]
        SUBS     LR,LR,R0
        MUL      R12,LR,R12
        MLA      R1,R3,R1,R12
        CMP      R2,R1
        BGE.N    ??Cross_Find_38
        MUL      R0,R10,R10
        MOVW     R1,#+625
        CMP      R0,R1
        BGE.N    ??Cross_Find_38
//  297                 {
//  298                   //得到两个拐点行
//  299                   G_LU.x =i+1;
        ADDS     R0,R11,#+1
        STR      R0,[SP, #+36]
//  300                   G_LU.y =Find_Start;
        STR      R9,[SP, #+40]
//  301                   G_LU.m=1;
        MOVS     R0,#+1
        STR      R0,[SP, #+44]
//  302                  
//  303                   G_RU.x =i+NumWhitePoint;
        ADDS     R0,R10,R11
        STR      R0,[SP, #+48]
//  304                   G_RU.y =Find_Start;
        STR      R9,[SP, #+52]
//  305                   G_RU.m=1;
        MOVS     R0,#+1
        STR      R0,[SP, #+56]
//  306                   //开始补线
//  307                   
//  308                   int Left_Long=(G_LD.y-G_LU.y)*(G_LD.y-G_LU.y)+(G_LD.x-G_LU.x)*(G_LD.x-G_LU.x);
        LDR      R1,[SP, #+4]
        LDR      R0,[SP, #+40]
        SUBS     R1,R1,R0
        LDR      R2,[SP, #+4]
        LDR      R0,[SP, #+40]
        SUBS     R2,R2,R0
        LDR      R3,[SP, #+0]
        LDR      R0,[SP, #+36]
        SUBS     R3,R3,R0
        LDR      R12,[SP, #+0]
        LDR      R0,[SP, #+36]
        SUBS     R12,R12,R0
        MUL      R3,R12,R3
        MLA      R1,R2,R1,R3
        STR      R1,[SP, #+64]
//  309                   int Right_Long=(G_RD.y-G_RU.y)*(G_RD.y-G_RU.y)+(G_RD.x-G_RU.x)*(G_RD.x-G_RU.x);
        LDR      R1,[SP, #+16]
        LDR      R0,[SP, #+52]
        SUBS     R1,R1,R0
        LDR      R2,[SP, #+16]
        LDR      R0,[SP, #+52]
        SUBS     R2,R2,R0
        LDR      R3,[SP, #+12]
        LDR      R0,[SP, #+48]
        SUBS     R3,R3,R0
        LDR      R12,[SP, #+12]
        LDR      R0,[SP, #+48]
        SUBS     R12,R12,R0
        MUL      R3,R12,R3
        MLA      R1,R2,R1,R3
        STR      R1,[SP, #+60]
//  310                   
//  311                   
//  312                   
//  313                   if(Left_Long>225&&Right_Long>225&& G_LD.y>45&&G_RD.y>45)
        LDR      R0,[SP, #+64]
        CMP      R0,#+226
        BLT.N    ??Cross_Find_39
        LDR      R0,[SP, #+60]
        CMP      R0,#+226
        BLT.N    ??Cross_Find_39
        LDR      R0,[SP, #+4]
        CMP      R0,#+46
        BLT.N    ??Cross_Find_39
        LDR      R0,[SP, #+16]
        CMP      R0,#+46
        BLT.N    ??Cross_Find_39
//  314                   {
//  315                     Give_Line(G_LD.x,G_LD.y,G_LU.x,G_LU.y);//斜着补线，左下补到右上更平滑一些
        LDR      R3,[SP, #+40]
        LDR      R2,[SP, #+36]
        LDR      R1,[SP, #+4]
        LDR      R0,[SP, #+0]
          CFI FunCall Give_Line
        BL       Give_Line
//  316                     Give_Line(G_RD.x,G_RD.y,G_RU.x,G_RU.y);//斜着补线，左下补到右上更平滑一些
        LDR      R3,[SP, #+52]
        LDR      R2,[SP, #+48]
        LDR      R1,[SP, #+16]
        LDR      R0,[SP, #+12]
          CFI FunCall Give_Line
        BL       Give_Line
//  317                     
//  318                     if(!Debug_Button_WhatisBeep)   Beep(50);
        LDR.W    R0,??DataTable4_14
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Cross_Find_39
        MOVS     R0,#+50
          CFI FunCall Beep
        BL       Beep
//  319                   }
//  320                   break;
??Cross_Find_39:
        B.N      ??Cross_Find_27
//  321                 }
//  322               }
??Cross_Find_38:
        SUBS     R9,R9,#+1
        B.N      ??Cross_Find_33
//  323            
//  324            }
//  325   }
//  326   
//  327   
//  328   
//  329   
//  330 
//  331 return ;
??Cross_Find_27:
??Cross_Find_28:
        ADD      SP,SP,#+916
          CFI CFA R13+36
        POP      {R4-R11,PC}      ;; return
//  332 }
          CFI EndBlock cfiBlock1
//  333 
//  334 
//  335 
//  336 #define  Seagull_Pic Pic
//  337 
//  338 //搜线示意图

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function Search_HO
        THUMB
//  339 void Search_HO(void)
//  340 {
Search_HO:
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
        SUB      SP,SP,#+188
          CFI CFA R13+224
//  341      Seagull_Left=0 ;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable4_15
        STR      R0,[R1, #+0]
//  342      Seagull_Right=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable4_16
        STR      R0,[R1, #+0]
//  343      Seagull_Mid=0  ;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable4_17
        STR      R0,[R1, #+0]
//  344      
//  345      
//  346      int Search_Mid=40;   //搜线的起始点
        MOVS     R0,#+40
        STR      R0,[SP, #+12]
//  347      
//  348      
//  349      int CrossLeft=0;
        MOVS     R8,#+0
//  350      int CrossRight=0;
        MOVS     R4,#+0
//  351      
//  352      
//  353 //     for(int a=0;a<60;a++)
//  354 //     {
//  355 //       for(int b=0;b<80;b++)
//  356 //       {
//  357 //          Pic_show[a][b]=Pic[a][b];
//  358 //       }     
//  359 //     }
//  360      for(int i=0;i<40;i++)
        MOVS     R1,#+0
??Search_HO_0:
        CMP      R1,#+40
        BGE.N    ??Search_HO_1
//  361      {
//  362           //Pic_show[Right_FLine[i][0]-ShiZiFind][Right_FLine[i][1]]=!Pic_show[Right_FLine[i][0]-ShiZiFind][Right_FLine[i][1]];
//  363           if(Seagull_Pic[Right_FLine[i][0]-ShiZiFind][Right_FLine[i][1]]==P_WHITE)
        LDR.W    R2,??DataTable4_4
        LDR.W    R0,??DataTable4_18
        LDR      R3,[R0, R1, LSL #+3]
        LDR.W    R0,??DataTable4_19
        LDR      R0,[R0, #+0]
        SUBS     R3,R3,R0
        MOVS     R0,#+80
        MULS     R3,R0,R3
        ADD      R0,R2,R3
        LDR.W    R2,??DataTable4_18
        ADD      R2,R2,R1, LSL #+3
        LDR      R2,[R2, #+4]
        LDRB     R0,[R0, R2]
        CMP      R0,#+0
        BNE.N    ??Search_HO_2
//  364           {
//  365              Seagull_Right++;
        LDR.W    R0,??DataTable4_16
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R2,??DataTable4_16
        STR      R0,[R2, #+0]
//  366              //Pic_show[Right_FLine[i][0]-ShiZiFind][Right_FLine[i][1]]=!Pic_show[Right_FLine[i][0]-ShiZiFind][Right_FLine[i][1]];
//  367           }
        ADDS     R1,R1,#+1
        B.N      ??Search_HO_0
//  368           else
//  369           {
//  370              break;
//  371           }
//  372      }
//  373      for(int i=0;i<40;i++)
??Search_HO_2:
??Search_HO_1:
        MOVS     R1,#+0
??Search_HO_3:
        CMP      R1,#+40
        BGE.N    ??Search_HO_4
//  374      {
//  375           if(Seagull_Pic[Left_FLine[i][0]-ShiZiFind][Left_FLine[i][1]]==P_WHITE)
        LDR.W    R2,??DataTable4_4
        LDR.W    R0,??DataTable4_20
        LDR      R3,[R0, R1, LSL #+3]
        LDR.W    R0,??DataTable4_19
        LDR      R0,[R0, #+0]
        SUBS     R3,R3,R0
        MOVS     R0,#+80
        MULS     R3,R0,R3
        ADD      R0,R2,R3
        LDR.W    R2,??DataTable4_20
        ADD      R2,R2,R1, LSL #+3
        LDR      R2,[R2, #+4]
        LDRB     R0,[R0, R2]
        CMP      R0,#+0
        BNE.N    ??Search_HO_5
//  376           {
//  377              Seagull_Left++;
        LDR.W    R0,??DataTable4_15
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R2,??DataTable4_15
        STR      R0,[R2, #+0]
//  378              //Pic_show[Left_FLine[i][0]-ShiZiFind][Left_FLine[i][1]]=!Pic_show[Left_FLine[i][0]-ShiZiFind][Left_FLine[i][1]];
//  379           }
        ADDS     R1,R1,#+1
        B.N      ??Search_HO_3
//  380           else
//  381           {
//  382              break;
//  383           }  
//  384      }
//  385      for(int i=3;i<50&&i+ShiZiFind<59;i++)
??Search_HO_5:
??Search_HO_4:
        MOVS     R1,#+3
??Search_HO_6:
        CMP      R1,#+50
        BGE.N    ??Search_HO_7
        LDR.W    R0,??DataTable4_19
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,R1
        CMP      R0,#+59
        BGE.N    ??Search_HO_7
//  386      {
//  387           if(Seagull_Pic[Mid_FLine[i][0]-ShiZiFind][Mid_FLine[i][1]]==P_WHITE)
        LDR.W    R2,??DataTable4_4
        LDR.W    R0,??DataTable4_21
        LDR      R3,[R0, R1, LSL #+3]
        LDR.W    R0,??DataTable4_19
        LDR      R0,[R0, #+0]
        SUBS     R3,R3,R0
        MOVS     R0,#+80
        MULS     R3,R0,R3
        ADD      R0,R2,R3
        LDR.W    R2,??DataTable4_21
        ADD      R2,R2,R1, LSL #+3
        LDR      R2,[R2, #+4]
        LDRB     R0,[R0, R2]
        CMP      R0,#+0
        BNE.N    ??Search_HO_8
//  388           {
//  389              Seagull_Mid++;
        LDR.W    R0,??DataTable4_17
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R2,??DataTable4_17
        STR      R0,[R2, #+0]
//  390              //Pic_show[Mid_FLine[i][0]-ShiZiFind][Mid_FLine[i][1]]=!Pic_show[Mid_FLine[i][0]-ShiZiFind][Mid_FLine[i][1]];
//  391           }
        ADDS     R1,R1,#+1
        B.N      ??Search_HO_6
//  392           else
//  393           {
//  394              break;
//  395           }
//  396           
//  397           
//  398           //Pic_show[Mid_FLine[i][0]-ShiZiFind][Mid_FLine[i][1]]=!Pic_show[Mid_FLine[i][0]-ShiZiFind][Mid_FLine[i][1]];
//  399      }
//  400      
//  401      
//  402 
//  403      
//  404       Effective_Point_Mid=0;    //记录有效中心点数
??Search_HO_8:
??Search_HO_7:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable4_22
        STR      R0,[R1, #+0]
//  405       for(int j=59;j>0;j--)
        MOVS     R5,#+59
??Search_HO_9:
        CMP      R5,#+1
        BLT.N    ??Search_HO_10
//  406       {
//  407           CrossLeft=0;
        MOVS     R0,#+0
        MOV      R8,R0
//  408           CrossRight=0;
        MOVS     R0,#+0
        MOVS     R4,R0
//  409         
//  410           if(Seagull_Pic[j-1][Search_Mid]==P_WHITE)
        LDR.W    R0,??DataTable4_4
        MOVS     R1,#+80
        MUL      R1,R1,R5
        ADD      R0,R0,R1
        LDR      R1,[SP, #+12]
        ADD      R0,R0,R1
        LDRB     R0,[R0, #-80]
        CMP      R0,#+0
        BNE.N    ??Search_HO_11
//  411           {
//  412               Effective_Point_Mid ++;
        LDR.W    R0,??DataTable4_22
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable4_22
        STR      R0,[R1, #+0]
//  413           }
//  414           else
//  415           {
//  416               break;
//  417           }
//  418           
//  419           
//  420           for(int i=Search_Mid;i<80;i++)
        LDR      R1,[SP, #+12]
        B.N      ??Search_HO_12
??Search_HO_11:
        B.N      ??Search_HO_10
??Search_HO_12:
        CMP      R1,#+80
        BGE.N    ??Search_HO_13
//  421           {
//  422                if(Seagull_Pic[j][i]==P_WHITE)
        LDR.W    R0,??DataTable4_4
        MOVS     R2,#+80
        MUL      R2,R2,R5
        ADD      R0,R0,R2
        LDRB     R0,[R0, R1]
        CMP      R0,#+0
        BNE.N    ??Search_HO_14
//  423                {
//  424                   CrossRight++;
        ADDS     R4,R4,#+1
//  425                   //Pic_show[Left_FLine[i][0]-ShiZiFind][Left_FLine[i][1]]=!Pic_show[Left_FLine[i][0]-ShiZiFind][Left_FLine[i][1]];
//  426                }
        ADDS     R1,R1,#+1
        B.N      ??Search_HO_12
//  427                else
//  428                {
//  429                   Left_line[j] = i;
??Search_HO_14:
        LDR.W    R0,??DataTable4_23
        STR      R1,[R0, R5, LSL #+2]
//  430                   break;
//  431                }  
//  432           }
//  433      
//  434           for(int i=Search_Mid-1;i>=0;i--)
??Search_HO_13:
        LDR      R1,[SP, #+12]
        SUBS     R1,R1,#+1
??Search_HO_15:
        CMP      R1,#+0
        BMI.N    ??Search_HO_16
//  435           {
//  436                if(Seagull_Pic[j][i]==P_WHITE)
        LDR.W    R0,??DataTable4_4
        MOVS     R2,#+80
        MUL      R2,R2,R5
        ADD      R0,R0,R2
        LDRB     R0,[R0, R1]
        CMP      R0,#+0
        BNE.N    ??Search_HO_17
//  437                {
//  438                   CrossLeft++;
        ADDS     R8,R8,#+1
//  439                   //Left_line[]
//  440                   //Pic_show[Left_FLine[i][0]-ShiZiFind][Left_FLine[i][1]]=!Pic_show[Left_FLine[i][0]-ShiZiFind][Left_FLine[i][1]];
//  441                }
        SUBS     R1,R1,#+1
        B.N      ??Search_HO_15
//  442                else
//  443                {
//  444                  Right_line[j]=i;
??Search_HO_17:
        LDR.W    R0,??DataTable4_24
        STR      R1,[R0, R5, LSL #+2]
//  445                   break;
//  446                }  
//  447           }
//  448           
//  449           Search_Mid=(int) (Right_line[j]+Left_line[j])*0.5;
??Search_HO_16:
        LDR.W    R0,??DataTable4_24
        LDR      R0,[R0, R5, LSL #+2]
        LDR.W    R1,??DataTable4_23
        LDR      R1,[R1, R5, LSL #+2]
        ADDS     R0,R1,R0
          CFI FunCall __aeabi_i2d
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable4_10  ;; 0x3fe00000
          CFI FunCall __aeabi_dmul
        BL       __aeabi_dmul
          CFI FunCall __aeabi_d2iz
        BL       __aeabi_d2iz
        STR      R0,[SP, #+12]
//  450           
//  451           
//  452       }
        SUBS     R5,R5,#+1
        B.N      ??Search_HO_9
//  453      
//  454      
//  455 
//  456      
//  457       //接下来十字补线
//  458       //找跳变沿
//  459       //分两种情况 1:车头就是全白行 2:还没进十字
//  460           
//  461      int Jump_Left_Flag=0;
??Search_HO_10:
        MOVS     R0,#+0
        STR      R0,[SP, #+8]
//  462      int Jump_Right_Flag=0;
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
//  463      
//  464      
//  465       if(Right_line[0]>74)
        LDR.W    R0,??DataTable4_24
        LDR      R0,[R0, #+0]
        CMP      R0,#+75
        BLT.N    ??Search_HO_18
//  466       {
//  467          Jump_Right_Flag=1;  //找到右边跳变
        MOVS     R0,#+1
        STR      R0,[SP, #+4]
//  468       }
//  469       if(Left_line[0]<5)
??Search_HO_18:
        LDR.W    R0,??DataTable4_23
        LDR      R0,[R0, #+0]
        CMP      R0,#+5
        BGE.N    ??Search_HO_19
//  470       {
//  471          Jump_Left_Flag=1;   //找到左面跳变
        MOVS     R0,#+1
        STR      R0,[SP, #+8]
//  472       }
//  473      
//  474       int Left_Jump_Num=0;   //左侧跳变计数
??Search_HO_19:
        MOVS     R0,#+0
        STR      R0,[SP, #+24]
//  475       int Right_Jump_Num=0;  //右侧跳变计数
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//  476       
//  477       int JUMP_LEFT_WHERE[10][2]={0};
        ADD      R0,SP,#+108
        MOVS     R1,#+80
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
//  478       int JUMP_RIGHT_WHERE[10][2]={0};
        ADD      R0,SP,#+28
        MOVS     R1,#+80
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
//  479       
//  480       int Jump_Left_Times=0;
        MOVS     R11,#+0
//  481       int Jump_Right_Times=0;
        MOVS     R10,#+0
//  482      
//  483       for(int j=56;j>=0;j-=3)
        MOVS     R1,#+56
??Search_HO_20:
        CMP      R1,#+0
        BMI.N    ??Search_HO_21
//  484       {
//  485         /////////////////////////寻找左边跳变/////////////////////////////////
//  486         if((Left_line[j]-Left_line[j+3])<-10&&Jump_Left_Flag==0)
        LDR.W    R0,??DataTable4_23
        LDR      R2,[R0, R1, LSL #+2]
        LDR.W    R0,??DataTable4_23
        ADD      R0,R0,R1, LSL #+2
        LDR      R0,[R0, #+12]
        SUBS     R2,R2,R0
        CMN      R2,#+10
        BGE.N    ??Search_HO_22
        LDR      R0,[SP, #+8]
        CMP      R0,#+0
        BNE.N    ??Search_HO_22
//  487         {
//  488            Jump_Left_Flag=1;
        MOVS     R0,#+1
        STR      R0,[SP, #+8]
//  489            JUMP_LEFT_WHERE[Jump_Left_Times][0]=j;
        ADD      R0,SP,#+108
        STR      R1,[R0, R11, LSL #+3]
//  490         }
//  491         
//  492         if((Left_line[j]-Left_line[j+3])>10&&Jump_Left_Flag==1)
??Search_HO_22:
        LDR.W    R0,??DataTable4_23
        LDR      R2,[R0, R1, LSL #+2]
        LDR.N    R0,??DataTable4_23
        ADD      R0,R0,R1, LSL #+2
        LDR      R0,[R0, #+12]
        SUBS     R2,R2,R0
        CMP      R2,#+11
        BLT.N    ??Search_HO_23
        LDR      R0,[SP, #+8]
        CMP      R0,#+1
        BNE.N    ??Search_HO_23
//  493         {
//  494            Jump_Left_Flag=0;
        MOVS     R0,#+0
        STR      R0,[SP, #+8]
//  495            JUMP_LEFT_WHERE[Jump_Left_Times][1]=j;
        ADD      R0,SP,#+108
        ADD      R0,R0,R11, LSL #+3
        STR      R1,[R0, #+4]
//  496            Jump_Left_Times++;
        ADDS     R11,R11,#+1
//  497         }
//  498         
//  499         if(Jump_Left_Flag && ( j-JUMP_LEFT_WHERE[Jump_Left_Times][0] )>30)
??Search_HO_23:
        LDR      R0,[SP, #+8]
        CMP      R0,#+0
        BEQ.N    ??Search_HO_24
        ADD      R0,SP,#+108
        LDR      R0,[R0, R11, LSL #+3]
        SUBS     R0,R1,R0
        CMP      R0,#+31
        BLT.N    ??Search_HO_24
//  500            Jump_Left_Flag=0;
        MOVS     R0,#+0
        STR      R0,[SP, #+8]
//  501         
//  502         
//  503         ///////////////////////////////////////////////////////////////////////
//  504         
//  505         ////////////////////////寻找右边跳变///////////////////////////////////
//  506         
//  507         if((Right_line[j]-Right_line[j+3])>10&&Jump_Right_Flag==0)
??Search_HO_24:
        LDR.N    R0,??DataTable4_24
        LDR      R2,[R0, R1, LSL #+2]
        LDR.N    R0,??DataTable4_24
        ADD      R0,R0,R1, LSL #+2
        LDR      R0,[R0, #+12]
        SUBS     R2,R2,R0
        CMP      R2,#+11
        BLT.N    ??Search_HO_25
        LDR      R0,[SP, #+4]
        CMP      R0,#+0
        BNE.N    ??Search_HO_25
//  508         {
//  509            Jump_Right_Flag=1;
        MOVS     R0,#+1
        STR      R0,[SP, #+4]
//  510            JUMP_RIGHT_WHERE[Jump_Right_Times][0]=j;
        ADD      R0,SP,#+28
        STR      R1,[R0, R10, LSL #+3]
//  511         
//  512         }
//  513         
//  514         if((Right_line[j]-Right_line[j+3])<-10&&Jump_Right_Flag==1)
??Search_HO_25:
        LDR.N    R0,??DataTable4_24
        LDR      R2,[R0, R1, LSL #+2]
        LDR.N    R0,??DataTable4_24
        ADD      R0,R0,R1, LSL #+2
        LDR      R0,[R0, #+12]
        SUBS     R2,R2,R0
        CMN      R2,#+10
        BGE.N    ??Search_HO_26
        LDR      R0,[SP, #+4]
        CMP      R0,#+1
        BNE.N    ??Search_HO_26
//  515         {
//  516            Jump_Right_Flag=0;
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
//  517            JUMP_RIGHT_WHERE[Jump_Right_Times][0]=j;
        ADD      R0,SP,#+28
        STR      R1,[R0, R10, LSL #+3]
//  518            Jump_Right_Times++;
        ADDS     R10,R10,#+1
//  519         }
//  520         if(Jump_Right_Flag && ( j-JUMP_RIGHT_WHERE[Jump_Right_Times][0] )>30)
??Search_HO_26:
        LDR      R0,[SP, #+4]
        CMP      R0,#+0
        BEQ.N    ??Search_HO_27
        ADD      R0,SP,#+28
        LDR      R0,[R0, R10, LSL #+3]
        SUBS     R0,R1,R0
        CMP      R0,#+31
        BLT.N    ??Search_HO_27
//  521            Jump_Right_Flag=0;
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
//  522       
//  523         
//  524         ///////////////////////////////////////////////////////////////////////
//  525       }
??Search_HO_27:
        SUBS     R1,R1,#+3
        B.N      ??Search_HO_20
//  526        
//  527       //补全左跳变
//  528       
//  529       for(int i=0;i<Jump_Left_Times;i++)
??Search_HO_21:
        MOVS     R9,#+0
??Search_HO_28:
        CMP      R9,R11
        BGE.N    ??Search_HO_29
//  530       {
//  531         int  Jin=0,Yuan=0;
        MOVS     R5,#+0
        MOVS     R6,#+0
//  532         float  K=0;
        MOVS     R0,#+0
        STR      R0,[SP, #+16]
//  533         
//  534         
//  535         Jin= JUMP_LEFT_WHERE[i][0]+3;
        ADD      R0,SP,#+108
        LDR      R0,[R0, R9, LSL #+3]
        ADDS     R0,R0,#+3
        MOVS     R5,R0
//  536         Jin= Jin>59?59:Jin;
        CMP      R5,#+60
        BLT.N    ??Search_HO_30
        MOVS     R5,#+59
        B.N      ??Search_HO_31
//  537         
//  538         Yuan=  JUMP_LEFT_WHERE[i][1]-3;
??Search_HO_30:
??Search_HO_31:
        ADD      R0,SP,#+108
        ADD      R0,R0,R9, LSL #+3
        LDR      R0,[R0, #+4]
        SUBS     R0,R0,#+3
        MOVS     R6,R0
//  539         Yuan=  Yuan<0?0:Yuan;
        CMP      R6,#+0
        BPL.N    ??Search_HO_32
        MOVS     R6,#+0
        B.N      ??Search_HO_33
//  540       
//  541         K= ((Left_line[Yuan] - Left_line[Jin])*1000) / ( Yuan-Jin );
??Search_HO_32:
??Search_HO_33:
        LDR.N    R0,??DataTable4_23
        LDR      R1,[R0, R6, LSL #+2]
        LDR.N    R0,??DataTable4_23
        LDR      R0,[R0, R5, LSL #+2]
        SUBS     R1,R1,R0
        MOV      R0,#+1000
        MULS     R1,R0,R1
        SUBS     R0,R6,R5
        SDIV     R0,R1,R0
          CFI FunCall __aeabi_i2f
        BL       __aeabi_i2f
        STR      R0,[SP, #+16]
//  542         
//  543         for(int j=Jin;j>Yuan;j--)
        MOVS     R7,R5
??Search_HO_34:
        CMP      R6,R7
        BGE.N    ??Search_HO_35
//  544         {
//  545            Left_line[j]=Left_line[Jin]+(int)(((Jin - j)*K)*0.001);
        LDR.N    R0,??DataTable4_23
        LDR      R0,[R0, R5, LSL #+2]
        STR      R0,[SP, #+0]
        SUBS     R0,R5,R7
          CFI FunCall __aeabi_i2f
        BL       __aeabi_i2f
        LDR      R1,[SP, #+16]
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
          CFI FunCall __aeabi_f2d
        BL       __aeabi_f2d
        MOVS     R2,R0
        MOVS     R3,R1
        LDR.N    R0,??DataTable4_25  ;; 0xd2f1a9fc
        LDR.N    R1,??DataTable4_26  ;; 0x3f50624d
          CFI FunCall __aeabi_dmul
        BL       __aeabi_dmul
          CFI FunCall __aeabi_d2iz
        BL       __aeabi_d2iz
        LDR      R1,[SP, #+0]
        ADDS     R0,R0,R1
        LDR.N    R1,??DataTable4_23
        STR      R0,[R1, R7, LSL #+2]
//  546         }
        SUBS     R7,R7,#+1
        B.N      ??Search_HO_34
//  547       }
??Search_HO_35:
        ADDS     R9,R9,#+1
        B.N      ??Search_HO_28
//  548       
//  549        #if 1
//  550       for(int i=0;i<Jump_Right_Times;i++)
??Search_HO_29:
        MOVS     R9,#+0
??Search_HO_36:
        CMP      R9,R10
        BGE.N    ??Search_HO_37
//  551       {
//  552         int  Jin=0,Yuan=0;
        MOVS     R5,#+0
        MOVS     R6,#+0
//  553         float  K=0;
        MOVS     R0,#+0
        STR      R0,[SP, #+16]
//  554         
//  555         
//  556         Jin= JUMP_RIGHT_WHERE[i][0]+3;
        ADD      R0,SP,#+28
        LDR      R0,[R0, R9, LSL #+3]
        ADDS     R0,R0,#+3
        MOVS     R5,R0
//  557         Jin= Jin>59?59:Jin;
        CMP      R5,#+60
        BLT.N    ??Search_HO_38
        MOVS     R5,#+59
        B.N      ??Search_HO_39
//  558         
//  559         Yuan=  JUMP_RIGHT_WHERE[i][1]-3;
??Search_HO_38:
??Search_HO_39:
        ADD      R0,SP,#+28
        ADD      R0,R0,R9, LSL #+3
        LDR      R0,[R0, #+4]
        SUBS     R0,R0,#+3
        MOVS     R6,R0
//  560         Yuan=  Yuan<0?0:Yuan;
        CMP      R6,#+0
        BPL.N    ??Search_HO_40
        MOVS     R6,#+0
        B.N      ??Search_HO_41
//  561       
//  562         K= ((Right_line[Yuan] - Right_line[Jin])*1000) / ( Yuan-Jin ) ;
??Search_HO_40:
??Search_HO_41:
        LDR.N    R0,??DataTable4_24
        LDR      R1,[R0, R6, LSL #+2]
        LDR.N    R0,??DataTable4_24
        LDR      R0,[R0, R5, LSL #+2]
        SUBS     R1,R1,R0
        MOV      R0,#+1000
        MULS     R1,R0,R1
        SUBS     R0,R6,R5
        SDIV     R0,R1,R0
          CFI FunCall __aeabi_i2f
        BL       __aeabi_i2f
        STR      R0,[SP, #+16]
//  563         
//  564         for(int j=Jin;j>Yuan;j--)
        MOVS     R7,R5
??Search_HO_42:
        CMP      R6,R7
        BGE.N    ??Search_HO_43
//  565         {
//  566            Right_line[j]=(Right_line[Jin]-(int)(((Jin - j)*K)*0.001));
        LDR.N    R0,??DataTable4_24
        LDR      R0,[R0, R5, LSL #+2]
        STR      R0,[SP, #+0]
        SUBS     R0,R5,R7
          CFI FunCall __aeabi_i2f
        BL       __aeabi_i2f
        LDR      R1,[SP, #+16]
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
          CFI FunCall __aeabi_f2d
        BL       __aeabi_f2d
        MOVS     R2,R0
        MOVS     R3,R1
        LDR.N    R0,??DataTable4_25  ;; 0xd2f1a9fc
        LDR.N    R1,??DataTable4_26  ;; 0x3f50624d
          CFI FunCall __aeabi_dmul
        BL       __aeabi_dmul
          CFI FunCall __aeabi_d2iz
        BL       __aeabi_d2iz
        LDR      R1,[SP, #+0]
        SUBS     R0,R1,R0
        LDR.N    R1,??DataTable4_24
        STR      R0,[R1, R7, LSL #+2]
//  567         }
        SUBS     R7,R7,#+1
        B.N      ??Search_HO_42
//  568       }
??Search_HO_43:
        ADDS     R9,R9,#+1
        B.N      ??Search_HO_36
//  569       
//  570 #endif      
//  571      
//  572 }
??Search_HO_37:
        ADD      SP,SP,#+188
          CFI CFA R13+36
        POP      {R4-R11,PC}      ;; return
          CFI EndBlock cfiBlock2
//  573 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function Pic_Find
        THUMB
//  574 void Pic_Find(void)
//  575 {
Pic_Find:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  576   
//  577   static int HowMuch_Cross=0;   //记录遇到了多少次
//  578   static int HowMuch_Ring =0;
//  579   register float AA=0;
        MOVS     R4,#+0
//  580   
//  581   Search_HO();
          CFI FunCall Search_HO
        BL       Search_HO
//  582   if(Seagull_Left>How_Much_To_Find_Ring&&Seagull_Right>How_Much_To_Find_Ring)
        LDR.N    R0,??DataTable4_27
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable4_15
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??Pic_Find_0
        LDR.N    R0,??DataTable4_27
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable4_16
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??Pic_Find_0
//  583   {
//  584        if(Seagull_Mid<Seagull_Num)  //发现环路
        LDR.N    R0,??DataTable4_17
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable4_28
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??Pic_Find_1
//  585        {
//  586             HowMuch_Ring++;
        LDR.N    R0,??DataTable4_29
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable4_29
        STR      R0,[R1, #+0]
//  587          
//  588             if(HowMuch_Ring>= HowMuch_Ring_Finds )
        LDR.N    R0,??DataTable4_29
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable4_30
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BLT.N    ??Pic_Find_1
//  589             {
//  590               Rode_Cross=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_31
        STR      R0,[R1, #+0]
//  591               Rode_Ring=1;  
        MOVS     R0,#+1
        LDR.N    R1,??DataTable4_32
        STR      R0,[R1, #+0]
//  592               if(Debug_Button_WhatisBeep)
        LDR.N    R0,??DataTable4_14
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Pic_Find_1
//  593               Beep(100);
        MOVS     R0,#+100
          CFI FunCall Beep
        BL       Beep
        B.N      ??Pic_Find_1
//  594             }   
//  595        }
//  596 //       else //if(Seagull_Mid>32)  //发现十字
//  597 //       {
//  598 //         Rode_Cross=1; 
//  599 //         Rode_Ring =0;
//  600 //         HowMuch_Ring=0;
//  601 //         if(!Debug_Button_WhatisBeep)
//  602 //            Beep(100);
//  603 //       }
//  604   }
//  605   else
//  606   {
//  607          Rode_Cross=0; 
??Pic_Find_0:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_31
        STR      R0,[R1, #+0]
//  608          Rode_Ring =0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_32
        STR      R0,[R1, #+0]
//  609          HowMuch_Ring=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_29
        STR      R0,[R1, #+0]
//  610          AA=( (Seagull_Right-Seagull_Left)*0.1);
        LDR.N    R0,??DataTable4_16
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable4_15
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
          CFI FunCall __aeabi_i2d
        BL       __aeabi_i2d
        LDR.N    R2,??DataTable4_33  ;; 0x9999999a
        LDR.N    R3,??DataTable4_34  ;; 0x3fb99999
          CFI FunCall __aeabi_dmul
        BL       __aeabi_dmul
          CFI FunCall __aeabi_d2f
        BL       __aeabi_d2f
        MOVS     R4,R0
//  611          AA=AA>3?3:AA<-3?-3:AA;
        MOVS     R0,R4
        LDR.N    R1,??DataTable4_35  ;; 0x40400001
          CFI FunCall __aeabi_cfrcmple
        BL       __aeabi_cfrcmple
        BHI.N    ??Pic_Find_2
        LDR.N    R4,??DataTable4_36  ;; 0x40400000
        B.N      ??Pic_Find_1
??Pic_Find_2:
        MOVS     R0,R4
        LDR.N    R1,??DataTable4_37  ;; 0xc0400000
          CFI FunCall __aeabi_cfcmple
        BL       __aeabi_cfcmple
        BCS.N    ??Pic_Find_3
        LDR.N    R4,??DataTable4_37  ;; 0xc0400000
        B.N      ??Pic_Find_1
//  612   }   
//  613 }
??Pic_Find_3:
??Pic_Find_1:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock3

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`Pic_Find::HowMuch_Ring`:
        DS8 4
//  614 
//  615 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function Get_Mid
        THUMB
//  616 int Get_Mid(void)
//  617 {
Get_Mid:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  618 
//  619    int i=0;
        MOVS     R0,#+0
//  620    int sum=0;
        MOVS     R1,#+0
//  621    
//  622    for(int j=40;j>30;j--)
        MOVS     R2,#+40
??Get_Mid_0:
        CMP      R2,#+31
        BLT.N    ??Get_Mid_1
//  623    {
//  624       sum+=Search_1_Line_center[j];
        LDR.N    R3,??DataTable4_38
        LDRSH    R3,[R3, R2, LSL #+1]
        ADDS     R1,R1,R3
//  625       i++;
        ADDS     R0,R0,#+1
//  626    }
        SUBS     R2,R2,#+1
        B.N      ??Get_Mid_0
//  627    return (int)sum/i - PID_TURN.I ;
??Get_Mid_1:
        SDIV     R0,R1,R0
          CFI FunCall __aeabi_i2f
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable4_39
        LDR      R1,[R1, #+8]
          CFI FunCall __aeabi_fsub
        BL       __aeabi_fsub
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        POP      {R1,PC}          ;; return
//  628 }
          CFI EndBlock cfiBlock4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     0x3727c5ac

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     0x47ae147b

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     0x3f847ae1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     0x40590000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     Pic

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     ?_4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_6:
        DC32     L_dx

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_7:
        DC32     L_dy

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_8:
        DC32     R_dx

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_9:
        DC32     R_dy

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_10:
        DC32     0x3fe00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_11:
        DC32     Mid_X

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_12:
        DC32     Mid_Y

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_13:
        DC32     0x40240000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_14:
        DC32     Debug_Button_WhatisBeep

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_15:
        DC32     Seagull_Left

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_16:
        DC32     Seagull_Right

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_17:
        DC32     Seagull_Mid

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_18:
        DC32     Right_FLine

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_19:
        DC32     ShiZiFind

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_20:
        DC32     Left_FLine

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_21:
        DC32     Mid_FLine

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_22:
        DC32     Effective_Point_Mid

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_23:
        DC32     Left_line

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_24:
        DC32     Right_line

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_25:
        DC32     0xd2f1a9fc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_26:
        DC32     0x3f50624d

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_27:
        DC32     How_Much_To_Find_Ring

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_28:
        DC32     Seagull_Num

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_29:
        DC32     `Pic_Find::HowMuch_Ring`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_30:
        DC32     HowMuch_Ring_Finds

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_31:
        DC32     Rode_Cross

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_32:
        DC32     Rode_Ring

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_33:
        DC32     0x9999999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_34:
        DC32     0x3fb99999

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_35:
        DC32     0x40400001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_36:
        DC32     0x40400000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_37:
        DC32     0xc0400000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_38:
        DC32     Search_1_Line_center

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_39:
        DC32     PID_TURN

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_4:
        DC32 0, 60, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        END
//  629 
//  630 
//  631 
//  632 
//  633 
// 
//   808 bytes in section .bss
//   244 bytes in section .data
// 1 020 bytes in section .rodata
// 2 720 bytes in section .text
// 
// 2 720 bytes of CODE  memory
// 1 020 bytes of CONST memory
// 1 052 bytes of DATA  memory
//
//Errors: none
//Warnings: 18
