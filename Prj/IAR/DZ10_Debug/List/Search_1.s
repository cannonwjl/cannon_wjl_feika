///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      16/Jun/2017  18:57:11
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\@@@@@@@\Car\Drivers\Search\Search_1.c
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EW1CBB.tmp
//        (D:\@@@@@@@\Car\Drivers\Search\Search_1.c -D DEBUG -D
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
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\Search_1.s
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

        EXTERN Cross_Find
        EXTERN Line_center
        EXTERN Pic
        EXTERN Pic_Give
        EXTERN QianZhan
        EXTERN Rode_Cross
        EXTERN Rode_Ring
        EXTERN Speed_Ang
        EXTERN __aeabi_cfcmple
        EXTERN __aeabi_cfrcmple
        EXTERN __aeabi_d2f
        EXTERN __aeabi_d2iz
        EXTERN __aeabi_dadd
        EXTERN __aeabi_dmul
        EXTERN __aeabi_f2d
        EXTERN __aeabi_f2iz
        EXTERN __aeabi_fadd
        EXTERN __aeabi_fdiv
        EXTERN __aeabi_fmul
        EXTERN __aeabi_i2d
        EXTERN __aeabi_i2f

        PUBLIC Ang_XZ_Give
        PUBLIC Calculate_Blackline_Average_2
        PUBLIC Find_Shizi_YuanZhan
        PUBLIC Huan_Rode_Flag
        PUBLIC Make_Line
        PUBLIC Mid_Make
        PUBLIC RoadType
        PUBLIC RodeType_Get
        PUBLIC Search_1
        PUBLIC Search_1_Line_center
        PUBLIC Search_1_Rode_Wide
        PUBLIC Search_1_Shizi
        PUBLIC Search_1_left_center
        PUBLIC Search_1_right_center
        PUBLIC ShiZi_Bu
        PUBLIC Shizi_Rode_Flag
        PUBLIC Sqrt
        PUBLIC XZ
        
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
        
// D:\@@@@@@@\Car\Drivers\Search\Search_1.c
//    1 #include "ALL_Init.h"
//    2 #include "Search_1.h"
//    3 
//    4 
//    5 
//    6 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//    7 uint8 RoadType;//赛道类型确认
RoadType:
        DS8 1
//    8 
//    9 //返回如下几种情况
//   10 //1 1: 十字
//   11 //2 2:环岛
//   12 //3 3:障碍
//   13 //4 4:坡道
//   14 //5 5:普通
//   15 
//   16 
//   17 
//   18 //更改赛道类型

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function RodeType_Get
          CFI NoCalls
        THUMB
//   19 void RodeType_Get(void)
//   20 {
//   21 
//   22 
//   23 
//   24 return ;
RodeType_Get:
        BX       LR               ;; return
//   25 }
          CFI EndBlock cfiBlock0
//   26 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function Mid_Make
          CFI NoCalls
        THUMB
//   27 void Mid_Make(void)
//   28 {
//   29 switch(RoadType)
Mid_Make:
        LDR.N    R0,??DataTable1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Mid_Make_0
        CMP      R0,#+2
        BEQ.N    ??Mid_Make_1
        BCC.N    ??Mid_Make_2
        CMP      R0,#+4
        BEQ.N    ??Mid_Make_3
        BCC.N    ??Mid_Make_4
        B.N      ??Mid_Make_5
//   30 {
//   31         case 0:
//   32         {
//   33              break;
??Mid_Make_0:
        B.N      ??Mid_Make_5
//   34         }
//   35         case 1:
//   36         {
//   37             break;
??Mid_Make_2:
        B.N      ??Mid_Make_5
//   38         }
//   39         case 2:
//   40         {
//   41             break;
??Mid_Make_1:
        B.N      ??Mid_Make_5
//   42         }
//   43         case 3:
//   44         {
//   45             break;
??Mid_Make_4:
        B.N      ??Mid_Make_5
//   46         }
//   47         case 4:
//   48         {
//   49             break;
//   50         }
//   51 }
//   52 
//   53 return ;
??Mid_Make_3:
??Mid_Make_5:
        BX       LR               ;; return
//   54 }
          CFI EndBlock cfiBlock1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     RoadType
//   55 //////////////////////////////////从这开始//////////////////////////////////////
//   56 
//   57 
//   58 #define SEARCH_1_PIC     Pic
//   59 #define aPic             Pic
//   60 #define SEARCH_1_ROW     60
//   61 #define SEARCH_2_COL     80
//   62 #define PIC_BLACK        1
//   63 #define PIC_WHITE        0
//   64 
//   65 
//   66 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   67 int Huan_Rode_Flag=0;//环路出现标志
Huan_Rode_Flag:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   68 int Shizi_Rode_Flag=0;//十字标志
Shizi_Rode_Flag:
        DS8 4
//   69 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   70 int XZ[SEARCH_1_ROW]={
XZ:
        DC32 15, 15, 15, 15, 16, 16, 16, 16, 17, 17, 17, 17, 18, 18, 18, 18, 19
        DC32 19, 19, 19, 20, 20, 20, 20, 21, 21, 21, 21, 22, 22, 22, 22, 23, 23
        DC32 23, 23, 23, 24, 24, 24, 25, 25, 25, 26, 26, 27, 27, 28, 28, 29, 29
        DC32 30, 30, 31, 31, 32, 32, 33, 33, 34
//   71 15,15,15,15,16,16,16,16,17,17,
//   72 17,17,18,18,18,18,19,19,19,19,
//   73 20,20,20,20,21,21,21,21,22,22,
//   74 22,22,23,23,23,23,23,24,24,24,
//   75 25,25,25,26,26,27,27,28,28,29,
//   76 29,30,30,31,31,32,32,33,33,34,
//   77 };
//   78 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   79 int Ang_XZ_Give=-5;
Ang_XZ_Give:
        DC32 -5
//   80 //Car_Angle-anglenum
//   81 

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function Make_Line
          CFI NoCalls
        THUMB
//   82 __ramfunc void Make_Line(int i)
//   83 {
Make_Line:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
        MOVS     R1,R0
//   84 register    int e=0;
        MOVS     R2,#+0
//   85 register    int I=0,Num=2,d=0,Sign=0,Same_number=0,num=0;//i 最近行的选择
        MOVS     R3,#+0
        MOVS     R4,#+2
        MOVS     R5,#+0
        MOVS     R6,#+0
        MOVS     R7,#+0
        MOVS     R12,#+0
//   86     
//   87     if(i>60||i<0)
        CMP      R1,#+61
        BGE.N    ??Make_Line_0
        CMP      R1,#+0
        BPL.N    ??Make_Line_1
//   88       return ;
??Make_Line_0:
        B.N      ??Make_Line_2
//   89     
//   90       for (e=0;e<SEARCH_2_COL;e++)
??Make_Line_1:
        MOVS     R0,#+0
        MOVS     R2,R0
??Make_Line_3:
        CMP      R2,#+80
        BGE.N    ??Make_Line_4
//   91       {
//   92           if(aPic[i][e]==PIC_WHITE)
        LDR.N    R0,??DataTable3
        MOVS     LR,#+80
        MUL      LR,LR,R1
        ADD      R0,R0,LR
        LDRB     R0,[R0, R2]
        CMP      R0,#+0
        BNE.N    ??Make_Line_5
//   93           {
//   94               aPic[i][e]=Num;
        LDR.N    R0,??DataTable3
        MOVS     LR,#+80
        MUL      LR,LR,R1
        ADD      R0,R0,LR
        STRB     R4,[R0, R2]
//   95               if(aPic[i][e+1]==PIC_BLACK)
        LDR.N    R0,??DataTable3
        MOVS     LR,#+80
        MUL      LR,LR,R1
        ADD      R0,R0,LR
        ADD      R0,R0,R2
        LDRB     R0,[R0, #+1]
        CMP      R0,#+1
        BNE.N    ??Make_Line_6
//   96               {
//   97                   aPic[i][e+1]=Num;
        LDR.N    R0,??DataTable3
        MOVS     LR,#+80
        MUL      LR,LR,R1
        ADD      R0,R0,LR
        ADD      R0,R0,R2
        STRB     R4,[R0, #+1]
//   98                   Num++;
        ADDS     R4,R4,#+1
        B.N      ??Make_Line_6
//   99               }
//  100           }
//  101           else 
//  102           {
//  103               Sign=0;
??Make_Line_5:
        MOVS     R0,#+0
        MOVS     R6,R0
//  104           }
//  105       }
??Make_Line_6:
        ADDS     R2,R2,#+1
        B.N      ??Make_Line_3
//  106       for(e=0;e<SEARCH_2_COL;e++)
??Make_Line_4:
        MOVS     R0,#+0
        MOVS     R2,R0
??Make_Line_7:
        CMP      R2,#+80
        BGE.N    ??Make_Line_8
//  107       {
//  108           if(aPic[i][e]!=0&&aPic[i][e]!=1)
        LDR.N    R0,??DataTable3
        MOVS     LR,#+80
        MUL      LR,LR,R1
        ADD      R0,R0,LR
        LDRB     R0,[R0, R2]
        CMP      R0,#+0
        BEQ.N    ??Make_Line_9
        LDR.N    R0,??DataTable3
        MOVS     LR,#+80
        MUL      LR,LR,R1
        ADD      R0,R0,LR
        LDRB     R0,[R0, R2]
        CMP      R0,#+1
        BEQ.N    ??Make_Line_9
//  109           {
//  110               d=aPic[i][e];
        LDR.N    R0,??DataTable3
        MOVS     LR,#+80
        MUL      LR,LR,R1
        ADD      R0,R0,LR
        LDRB     R0,[R0, R2]
        MOVS     R5,R0
//  111               Same_number=0; 
        MOVS     R0,#+0
        MOVS     R7,R0
//  112               for (I=e;I<SEARCH_2_COL;I++)
        MOVS     R3,R2
??Make_Line_10:
        CMP      R3,#+80
        BGE.N    ??Make_Line_11
//  113               {
//  114                   if(aPic[i][I]==d)Same_number++;
        LDR.N    R0,??DataTable3
        MOVS     LR,#+80
        MUL      LR,LR,R1
        ADD      R0,R0,LR
        LDRB     R0,[R0, R3]
        CMP      R0,R5
        BNE.N    ??Make_Line_12
        ADDS     R7,R7,#+1
//  115               }
??Make_Line_12:
        ADDS     R3,R3,#+1
        B.N      ??Make_Line_10
//  116               for (I=0;I<Same_number;I++)
??Make_Line_11:
        MOVS     R0,#+0
        MOVS     R3,R0
??Make_Line_13:
        CMP      R3,R7
        BGE.N    ??Make_Line_14
//  117               {
//  118                   aPic[i][I+e]=Same_number;
        LDR.N    R0,??DataTable3
        MOVS     LR,#+80
        MUL      LR,LR,R1
        ADD      R0,R0,LR
        ADDS     LR,R2,R3
        STRB     R7,[R0, LR]
//  119               }
        ADDS     R3,R3,#+1
        B.N      ??Make_Line_13
//  120               e+=Same_number;
??Make_Line_14:
        ADDS     R2,R7,R2
        B.N      ??Make_Line_15
//  121           }
//  122           else 
//  123           {
//  124               d=0;
??Make_Line_9:
        MOVS     R0,#+0
        MOVS     R5,R0
//  125           }
//  126       }
??Make_Line_15:
        ADDS     R2,R2,#+1
        B.N      ??Make_Line_7
//  127       for (e=0;e<SEARCH_2_COL;e++)
??Make_Line_8:
        MOVS     R0,#+0
        MOVS     R2,R0
??Make_Line_16:
        CMP      R2,#+80
        BGE.N    ??Make_Line_17
//  128       {
//  129           d=aPic[i][e]>d?aPic[i][e]:d;
        LDR.N    R0,??DataTable3
        MOVS     LR,#+80
        MUL      LR,LR,R1
        ADD      R0,R0,LR
        LDRB     R0,[R0, R2]
        CMP      R5,R0
        BGE.N    ??Make_Line_18
        LDR.N    R0,??DataTable3
        MOVS     R5,#+80
        MUL      R5,R5,R1
        ADD      R0,R0,R5
        LDRB     R5,[R0, R2]
        B.N      ??Make_Line_19
//  130       }
??Make_Line_18:
??Make_Line_19:
        ADDS     R2,R2,#+1
        B.N      ??Make_Line_16
//  131       for (e=0;e<SEARCH_2_COL;e++)
??Make_Line_17:
        MOVS     R0,#+0
        MOVS     R2,R0
??Make_Line_20:
        CMP      R2,#+80
        BGE.N    ??Make_Line_21
//  132         {
//  133                 if(aPic[i][e]<d)
        LDR.N    R0,??DataTable3
        MOVS     LR,#+80
        MUL      LR,LR,R1
        ADD      R0,R0,LR
        LDRB     R0,[R0, R2]
        CMP      R0,R5
        BGE.N    ??Make_Line_22
//  134                 {
//  135                        aPic[i][e]=1;
        MOVS     R0,#+1
        LDR.W    LR,??DataTable3
        MOVS     R8,#+80
        MUL      R8,R8,R1
        ADD      LR,LR,R8
        STRB     R0,[LR, R2]
//  136                 }
//  137                 
//  138                 if(aPic[i][e]==d)
??Make_Line_22:
        LDR.N    R0,??DataTable3
        MOVS     LR,#+80
        MUL      LR,LR,R1
        ADD      R0,R0,LR
        LDRB     R0,[R0, R2]
        CMP      R0,R5
        BNE.N    ??Make_Line_23
//  139                 {
//  140                         while(e<80&&aPic[i][e]==d)
??Make_Line_24:
        CMP      R2,#+80
        BGE.N    ??Make_Line_25
        LDR.N    R0,??DataTable3
        MOVS     LR,#+80
        MUL      LR,LR,R1
        ADD      R0,R0,LR
        LDRB     R0,[R0, R2]
        CMP      R0,R5
        BNE.N    ??Make_Line_25
//  141                         {
//  142                                 aPic[i][e]=0;
        MOVS     R0,#+0
        LDR.W    LR,??DataTable3
        MOVS     R8,#+80
        MUL      R8,R8,R1
        ADD      LR,LR,R8
        STRB     R0,[LR, R2]
//  143                                 e++;
        ADDS     R2,R2,#+1
        B.N      ??Make_Line_24
//  144                         }
//  145                         while(e<80)
??Make_Line_25:
        CMP      R2,#+80
        BGE.N    ??Make_Line_26
//  146                         {
//  147                                 aPic[i][e]=1;
        MOVS     R0,#+1
        LDR.W    LR,??DataTable3
        MOVS     R8,#+80
        MUL      R8,R8,R1
        ADD      LR,LR,R8
        STRB     R0,[LR, R2]
//  148                                 e++;
        ADDS     R2,R2,#+1
        B.N      ??Make_Line_25
//  149                         }
//  150                         break;
??Make_Line_26:
        B.N      ??Make_Line_21
//  151                 }
//  152         }
??Make_Line_23:
        ADDS     R2,R2,#+1
        B.N      ??Make_Line_20
//  153 }
??Make_Line_21:
??Make_Line_2:
        POP      {R4-R8,PC}       ;; return
          CFI EndBlock cfiBlock2
//  154 
//  155 
//  156 
//  157 #define Search_1_SZ Pic

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  158 int16 Search_1_Rode_Wide[SEARCH_1_ROW];       //赛道宽度记录
Search_1_Rode_Wide:
        DS8 120
//  159 //先找到底部稳定的59-54中点
//  160 //取出Mid
//  161 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  162 int16 Search_1_Line_center[SEARCH_1_ROW];     //记录黑线中心数组
Search_1_Line_center:
        DS8 120

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  163 int16 Search_1_right_center[SEARCH_1_ROW];    //右边数组
Search_1_right_center:
        DS8 120

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  164 int16 Search_1_left_center[SEARCH_1_ROW];     //左边数组
Search_1_left_center:
        DS8 120
//  165 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  166 int Find_Shizi_YuanZhan;  //十字和环路查找的远瞻
Find_Shizi_YuanZhan:
        DS8 4
//  167 
//  168 
//  169 //从上往下搜索5行空白的情况
//  170 //搜索十字和环路并补线程序

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function Search_1_Shizi
        THUMB
//  171 __ramfunc void Search_1_Shizi(void)
//  172 {
Search_1_Shizi:
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
//  173   
//  174 register  int Normal_where=60;  //异常结束的位置
        MOVS     R4,#+60
//  175 register  int Normal_flag=0;    //记录异常数据个数
        MOVS     R9,#+0
//  176   
//  177 register  int Point_A_Left=0,Point_A_Right=0;       //如果是十字弯，对最前面一行线数据进行提取
        MOVS     R5,#+0
        MOVS     R6,#+0
//  178 register  int Point_B_Left=0,Point_B_Right=0;       //同理 最近处数据提取
        MOVS     R7,#+0
        MOVS     R8,#+0
//  179   
//  180    for(register int col=59;col>=Find_Shizi_YuanZhan;col--)    //Find_Shizi_YuanZhan通常取20
        MOVS     R0,#+59
??Search_1_Shizi_0:
        LDR.W    R1,??DataTable4
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BLT.N    ??Search_1_Shizi_1
//  181    {
//  182       Search_1_Rode_Wide[col]=0;
        MOVS     R1,#+0
        LDR.W    R2,??DataTable5
        STRH     R1,[R2, R0, LSL #+1]
//  183    }
        SUBS     R0,R0,#+1
        B.N      ??Search_1_Shizi_0
//  184    
//  185    for(register int col=59;col>=Find_Shizi_YuanZhan;col--)
??Search_1_Shizi_1:
        MOVS     R1,#+59
??Search_1_Shizi_2:
        LDR.W    R0,??DataTable4
        LDR      R0,[R0, #+0]
        CMP      R1,R0
        BLT.N    ??Search_1_Shizi_3
//  186    {               
//  187      
//  188      for(register int row1=40;row1<80;row1++)
        MOVS     R2,#+40
??Search_1_Shizi_4:
        CMP      R2,#+80
        BGE.N    ??Search_1_Shizi_5
//  189      {
//  190       if(Search_1_SZ [col][row1] ==PIC_WHITE)
        LDR.N    R0,??DataTable3
        MOVS     R3,#+80
        MUL      R3,R3,R1
        ADD      R0,R0,R3
        LDRB     R0,[R0, R2]
        CMP      R0,#+0
        BNE.N    ??Search_1_Shizi_6
//  191       {
//  192          Search_1_Rode_Wide[col]++;
        LDR.W    R0,??DataTable5
        LDRH     R0,[R0, R1, LSL #+1]
        ADDS     R0,R0,#+1
        LDR.W    R3,??DataTable5
        STRH     R0,[R3, R1, LSL #+1]
//  193       }
        ADDS     R2,R2,#+1
        B.N      ??Search_1_Shizi_4
//  194       else break;
//  195      }
//  196      
//  197     for(register int row2=40;row2>=0;row2--)         //从中间向左边搜索，寻找跳变沿
??Search_1_Shizi_6:
??Search_1_Shizi_5:
        MOVS     R2,#+40
??Search_1_Shizi_7:
        CMP      R2,#+0
        BMI.N    ??Search_1_Shizi_8
//  198     {
//  199       
//  200       if(Search_1_SZ [col][row2] ==PIC_WHITE)
        LDR.N    R0,??DataTable3
        MOVS     R3,#+80
        MUL      R3,R3,R1
        ADD      R0,R0,R3
        LDRB     R0,[R0, R2]
        CMP      R0,#+0
        BNE.N    ??Search_1_Shizi_9
//  201       {
//  202          Search_1_Rode_Wide[col]++;
        LDR.W    R0,??DataTable5
        LDRH     R0,[R0, R1, LSL #+1]
        ADDS     R0,R0,#+1
        LDR.W    R3,??DataTable5
        STRH     R0,[R3, R1, LSL #+1]
//  203       }
        SUBS     R2,R2,#+1
        B.N      ??Search_1_Shizi_7
//  204       else break;
//  205       
//  206     }
//  207    }
??Search_1_Shizi_9:
??Search_1_Shizi_8:
        SUBS     R1,R1,#+1
        B.N      ??Search_1_Shizi_2
//  208    //赛道宽度记录完毕开始处理
//  209    for(register int col=59;col>=Find_Shizi_YuanZhan;col--) 
??Search_1_Shizi_3:
        MOVS     R0,#+59
??Search_1_Shizi_10:
        LDR.W    R1,??DataTable4
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BLT.N    ??Search_1_Shizi_11
//  210    {
//  211       if(Search_1_Rode_Wide[col]>(78))  //检测异常宽度
        LDR.W    R1,??DataTable5
        LDRSH    R1,[R1, R0, LSL #+1]
        CMP      R1,#+79
        BLT.N    ??Search_1_Shizi_12
//  212       {
//  213         Search_1_Rode_Wide[col]=1;
        MOVS     R1,#+1
        LDR.W    R2,??DataTable5
        STRH     R1,[R2, R0, LSL #+1]
//  214         Normal_flag++;
        ADDS     R9,R9,#+1
//  215         Normal_where=col;
        MOVS     R4,R0
//  216       }
//  217    }
??Search_1_Shizi_12:
        SUBS     R0,R0,#+1
        B.N      ??Search_1_Shizi_10
//  218    
//  219    //先判断是否有异常
//  220    if(Normal_flag>0)        //存在异常需要处理
??Search_1_Shizi_11:
        CMP      R9,#+1
        BLT.N    ??Search_1_Shizi_13
//  221    {
//  222      //查看异常结束的位置 ,并检测到底是什么异常
//  223      if(Search_1_SZ[Normal_where>10?Normal_where-10:10][40]==PIC_BLACK          ||\ 
//  224         Search_1_SZ[Normal_where>15?Normal_where-15:15][40]==PIC_BLACK  )//        ||\ 
        CMP      R4,#+11
        BLT.N    ??Search_1_Shizi_14
        SUBS     R1,R4,#+10
        B.N      ??Search_1_Shizi_15
??Search_1_Shizi_14:
        MOVS     R1,#+10
??Search_1_Shizi_15:
        LDR.N    R2,??DataTable3
        MOVS     R0,#+80
        MULS     R1,R0,R1
        ADD      R0,R2,R1
        LDRB     R0,[R0, #+40]
        CMP      R0,#+1
        BEQ.N    ??Search_1_Shizi_16
        CMP      R4,#+16
        BLT.N    ??Search_1_Shizi_17
        SUBS     R1,R4,#+15
        B.N      ??Search_1_Shizi_18
??Search_1_Shizi_17:
        MOVS     R1,#+15
??Search_1_Shizi_18:
        LDR.N    R2,??DataTable3
        MOVS     R0,#+80
        MULS     R1,R0,R1
        ADD      R0,R2,R1
        LDRB     R0,[R0, #+40]
        CMP      R0,#+1
        BNE.N    ??Search_1_Shizi_19
//  225         //Search_1_SZ[Normal_where>20?Normal_where-20:20][40]==PIC_BLACK )         //||\ 
//  226         //Search_1_SZ[Normal_where>25?Normal_where-25:25][40]==PIC_BLACK )
//  227      {  //只要满足本条件，就可以断定是环路，就不补线了，直接丢一侧开始扫线
//  228         Huan_Rode_Flag=1;    //确定是环路，交给后面处理
??Search_1_Shizi_16:
        MOVS     R0,#+1
        LDR.W    R1,??DataTable5_1
        STR      R0,[R1, #+0]
//  229         
//  230         for(register int i=Normal_where;i<=Normal_where+Normal_flag;i++)
        MOVS     R0,R4
??Search_1_Shizi_20:
        ADDS     R1,R9,R4
        CMP      R1,R0
        BLT.N    ??Search_1_Shizi_13
//  231         {
//  232          //Search_1_SZ[i][40]=!Search_1_SZ[i][40];            //这句话可以用来把中线显示出来
//  233          //Line_center[i]= - Line_center[i];                   //把中线取反作为丢线的标记
//  234           
//  235           
//  236 //          A_X_B_X=(((i-Normal_where)+1)/Normal_flag)*(Search_1_Line_center[Normal_where-1])\ 
//  237 //            +(1-((i-Normal_where)+1)/Normal_flag)/Search_1_Line_center[Normal_where+Normal_flag+1]; 
//  238           
//  239           
//  240           
//  241           Search_1_Line_center[i]=Search_1_Line_center[Normal_where+Normal_flag]+(Normal_where+Normal_flag-i); 
        LDR.W    R1,??DataTable6
        ADDS     R2,R9,R4
        LDRH     R1,[R1, R2, LSL #+1]
        ADDS     R1,R4,R1
        ADDS     R1,R9,R1
        SUBS     R1,R1,R0
        LDR.W    R2,??DataTable6
        STRH     R1,[R2, R0, LSL #+1]
//  242           
//  243         } 
        ADDS     R0,R0,#+1
        B.N      ??Search_1_Shizi_20
//  244      }    
//  245      else 
//  246      {  
//  247         //已经可以稳定的找到十字丢线，此时需要看是近处丢线还是远处丢线
//  248         Shizi_Rode_Flag=1;
??Search_1_Shizi_19:
        MOVS     R0,#+1
        LDR.W    R1,??DataTable5_2
        STR      R0,[R1, #+0]
//  249         
//  250         
//  251 register    float A_X_B_X=0.0;
        MOVS     R10,#+0
//  252         
//  253         for(register int i=Normal_where;i<=Normal_where+Normal_flag;i++)
        MOV      R11,R4
??Search_1_Shizi_21:
        ADDS     R0,R9,R4
        CMP      R0,R11
        BLT.N    ??Search_1_Shizi_13
//  254         {
//  255          //Search_1_SZ[i][40]=!Search_1_SZ[i][40];            //这句话可以用来把中线显示出来
//  256          //Line_center[i]= - Line_center[i];                   //把中线取反作为丢线的标记
//  257           
//  258           
//  259 //          A_X_B_X=(((i-Normal_where)+1)/Normal_flag)*(Search_1_Line_center[Normal_where-1])\ 
//  260 //            +(1-((i-Normal_where)+1)/Normal_flag)/Search_1_Line_center[Normal_where+Normal_flag+1]; 
//  261           
//  262           A_X_B_X=Search_1_Line_center[59];
        LDR.W    R0,??DataTable6
        LDRSH    R0,[R0, #+118]
          CFI FunCall __aeabi_i2f
        BL       __aeabi_i2f
        MOV      R10,R0
//  263           
//  264           Search_1_Line_center[i]=(int)A_X_B_X; 
        MOV      R0,R10
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable6
        STRH     R0,[R1, R11, LSL #+1]
//  265           
//  266         }
        ADDS     R11,R11,#+1
        B.N      ??Search_1_Shizi_21
//  267         //先判断一下十字补线结束的位置
//  268         //如果是近处十字，则通过远处的边线反向延伸来补
//  269         //如果是远处十字，则通过近处向远处延伸补线      
//  270      }
//  271 
//  272    }
//  273 }
??Search_1_Shizi_13:
        POP      {R0,R4-R11,PC}   ;; return
          CFI EndBlock cfiBlock3

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable3:
        DC32     Pic
//  274 
//  275 
//  276 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function ShiZi_Bu
          CFI NoCalls
        THUMB
//  277 void ShiZi_Bu(void )
//  278 {
//  279   //把所有宽度异常的地方中线都清零
//  280   
//  281   //先找到拐点
//  282   
//  283 
//  284 }
ShiZi_Bu:
        BX       LR               ;; return
          CFI EndBlock cfiBlock4
//  285 
//  286 

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function Search_1
        THUMB
//  287 __ramfunc void Search_1(void)
//  288 {
Search_1:
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
//  289    static int Left_point=0;      //左边跳变沿位置
//  290    static int Right_point=79;    //右边跳变沿位置
//  291    static int Left_last_find=0;  //上一次左边是否找到
//  292    static int Right_last_find=0; //上一次右边是否找到
//  293    static int How_Much_Find=0;   //找到了几个边
//  294    static int Last_How_Much_Find=0;//上一次找到了几个边沿
//  295    
//  296    static int Search_starst=0;   //从中间向两边搜索起始点
//  297    static int Left_find_flag=0 ; //左面是否找到
//  298    static int Right_find_flag=0; //右面是否找到
//  299    
//  300    int Flag_Cross=0;//十字
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  301    int Flag_Ring=0; //环路
        MOVS     R0,#+0
        STR      R0,[SP, #+8]
//  302    int White_Nums=0;//长白行的行数
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
//  303    int LLL=0,MMM=0,RRR=0;
        MOVS     R11,#+0
        MOVS     R10,#+0
        MOVS     R9,#+0
//  304    int What_Road=0;//正常路况
        MOVS     R8,#+0
//  305    
//  306    Left_find_flag=0 ;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_1
        STR      R0,[R1, #+0]
//  307    Right_find_flag=0; 
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_2
        STR      R0,[R1, #+0]
//  308    Left_point=0;      //左边跳变沿位置
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_3
        STR      R0,[R1, #+0]
//  309    Right_point=79;    //右边跳变沿位置
        MOVS     R0,#+79
        LDR.W    R1,??DataTable6_4
        STR      R0,[R1, #+0]
//  310    How_Much_Find=0;   //找到了几个边
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_5
        STR      R0,[R1, #+0]
//  311    Search_starst=0;   //从中间向两边搜索起始点
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_6
        STR      R0,[R1, #+0]
//  312 
//  313   //UI显示图像初始化
//  314   //只用来显示扫描的区域，没扫描的区域一概黑色
//  315 //   for(register int i=0;i<60;i++)
//  316 //   {
//  317 //     for(register int j=0;j<80;j++)
//  318 //     Pic_show[i][j]=1;
//  319 //   }
//  320    
//  321    //Search_1_Shizi();  //注意 十字处理会把十字弯丢线用虚线补充出来
//  322    //return ;
//  323    
//  324    
//  325    
//  326    Cross_Find();
          CFI FunCall Cross_Find
        BL       Cross_Find
//  327    
//  328    //Pic_Find();   //查找环路和十字
//  329    
//  330 
//  331    Search_starst=ABS(Search_1_Line_center[59]);//59存放前上一次中点的信息
        LDR.W    R0,??DataTable6
        LDRSH    R0,[R0, #+118]
        CMP      R0,#+1
        BLT.N    ??Search_1_0
        LDR.W    R0,??DataTable6
        LDRSH    R0,[R0, #+118]
        LDR.W    R1,??DataTable6_6
        STR      R0,[R1, #+0]
        B.N      ??Search_1_1
??Search_1_0:
        LDR.W    R0,??DataTable6
        LDRSH    R0,[R0, #+118]
        RSBS     R0,R0,#+0
        LDR.W    R1,??DataTable6_6
        STR      R0,[R1, #+0]
//  332    Search_starst=Search_starst<15?15:Search_starst>65?65:Search_starst; //给中间起始\ 
??Search_1_1:
        LDR.W    R0,??DataTable6_6
        LDR      R0,[R0, #+0]
        CMP      R0,#+15
        BGE.N    ??Search_1_2
        MOVS     R0,#+15
        LDR.W    R1,??DataTable6_6
        STR      R0,[R1, #+0]
        B.N      ??Search_1_3
??Search_1_2:
        LDR.W    R0,??DataTable6_6
        LDR      R0,[R0, #+0]
        CMP      R0,#+66
        BLT.N    ??Search_1_4
        MOVS     R0,#+65
        LDR.W    R1,??DataTable6_6
        STR      R0,[R1, #+0]
        B.N      ??Search_1_3
??Search_1_4:
        LDR.W    R0,??DataTable6_6
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable6_6
        STR      R0,[R1, #+0]
//  333    点限值，防止出现不合理
//  334    
//  335    int White_Point_Nums=0;          //每行白点计数
??Search_1_3:
        MOVS     R4,#+0
//  336    int White_Point_Nums_Lie=0;      //白行所在位置
        MOVS     R5,#+0
//  337    int White_Point_Nums_Lie_Times=0;//白行个数
        MOVS     R6,#+0
//  338 
//  339    for(register int col=58;col>=55;col--)
        MOVS     R7,#+58
??Search_1_5:
        CMP      R7,#+55
        BLT.W    ??Search_1_6
//  340    {
//  341     //Make_Line(col);      //处理个单行 保证是最稳定的单行    
//  342     for(register int row=Search_starst;row>=0;row--)         //从中间向左边搜索，寻找跳变沿
        LDR.W    R0,??DataTable6_6
        LDR      R0,[R0, #+0]
??Search_1_7:
        CMP      R0,#+0
        BMI.N    ??Search_1_8
//  343     {
//  344       if(SEARCH_1_PIC [col][row] == PIC_BLACK )
        LDR.W    R1,??DataTable5_3
        MOVS     R2,#+80
        MUL      R2,R2,R7
        ADD      R1,R1,R2
        LDRB     R1,[R1, R0]
        CMP      R1,#+1
        BNE.N    ??Search_1_9
//  345       {
//  346          Left_find_flag=1;
        MOVS     R1,#+1
        LDR.W    R2,??DataTable6_1
        STR      R1,[R2, #+0]
//  347          Left_point=row; //找到位置
        LDR.W    R1,??DataTable6_3
        STR      R0,[R1, #+0]
//  348          break;
        B.N      ??Search_1_8
//  349       }
//  350       //Pic_show[col][row]=0;
//  351     }
??Search_1_9:
        SUBS     R0,R0,#+1
        B.N      ??Search_1_7
//  352     
//  353     
//  354     for(register int row=Search_starst;row<=79;row++)         //从中间向右边搜索，寻找跳变沿
??Search_1_8:
        LDR.W    R0,??DataTable6_6
        LDR      R0,[R0, #+0]
??Search_1_10:
        CMP      R0,#+80
        BGE.N    ??Search_1_11
//  355     {
//  356       if(SEARCH_1_PIC [col][row] ==  PIC_BLACK )
        LDR.W    R1,??DataTable5_3
        MOVS     R2,#+80
        MUL      R2,R2,R7
        ADD      R1,R1,R2
        LDRB     R1,[R1, R0]
        CMP      R1,#+1
        BNE.N    ??Search_1_12
//  357       {
//  358          Right_find_flag=1;
        MOVS     R1,#+1
        LDR.W    R2,??DataTable6_2
        STR      R1,[R2, #+0]
//  359          Right_point=row; //找到位置
        LDR.W    R1,??DataTable6_4
        STR      R0,[R1, #+0]
//  360          break;
        B.N      ??Search_1_11
//  361       }
//  362       //Pic_show[col][row]=0;
//  363     }
??Search_1_12:
        ADDS     R0,R0,#+1
        B.N      ??Search_1_10
//  364     //以上完成粗略搜索，找到中间点，然后从中间点向上找，看看竖向能找到多远，作为之后的参数
//  365     How_Much_Find=Right_find_flag+Left_find_flag;//找到的数量
??Search_1_11:
        LDR.W    R0,??DataTable6_2
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable6_1
        LDR      R0,[R0, #+0]
        ADDS     R1,R0,R1
        LDR.W    R0,??DataTable6_5
        STR      R1,[R0, #+0]
//  366 
//  367    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////// 
//  368  
//  369    if(Rode_Ring==1)
        LDR.W    R0,??DataTable6_7
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.W    ??Search_1_13
//  370     {
//  371       if(How_Much_Find==2)//如果找到了两个边沿)
        LDR.W    R0,??DataTable6_5
        LDR      R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??Search_1_14
//  372       {
//  373        Search_1_Line_center[col]=Right_point-Pic_Give[col]+5;//中线数组
        LDR.W    R0,??DataTable6_4
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable6_8
        LDR      R0,[R0, R7, LSL #+2]
        SUBS     R1,R1,R0
        ADDS     R1,R1,#+5
        LDR.W    R0,??DataTable6
        STRH     R1,[R0, R7, LSL #+1]
//  374        Search_starst=Search_1_Line_center[col];  //下一次搜索变量开始的位置
        LDR.W    R0,??DataTable6
        LDRSH    R0,[R0, R7, LSL #+1]
        LDR.W    R1,??DataTable6_6
        STR      R0,[R1, #+0]
//  375        if(Search_1_left_center[col]>Search_1_left_center[col+1])  //折线
        LDR.W    R0,??DataTable6_9
        ADD      R0,R0,R7, LSL #+1
        LDRSH    R0,[R0, #+2]
        LDR.W    R1,??DataTable6_9
        LDRSH    R1,[R1, R7, LSL #+1]
        CMP      R0,R1
        BGE.N    ??Search_1_14
//  376        {
//  377           Search_1_left_center[col]=Search_1_left_center[col+1];
        LDR.W    R0,??DataTable6_9
        ADD      R0,R0,R7, LSL #+1
        LDRH     R0,[R0, #+2]
        LDR.W    R1,??DataTable6_9
        STRH     R0,[R1, R7, LSL #+1]
//  378        }
//  379       }
//  380       if(How_Much_Find==1)//如果找到了1个边沿
??Search_1_14:
        LDR.W    R0,??DataTable6_5
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Search_1_15
//  381       {
//  382         {
//  383            if(Left_find_flag) //如果左边找到了
        LDR.W    R0,??DataTable6_1
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Search_1_16
//  384            {
//  385                if(Left_point<40)
        LDR.W    R0,??DataTable6_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+40
        BGE.N    ??Search_1_17
//  386                {
//  387                 Left_point=40;
        MOVS     R0,#+40
        LDR.W    R1,??DataTable6_3
        STR      R0,[R1, #+0]
//  388                }
//  389                Search_1_Line_center[col]=(Left_point+Pic_Give[col])+5;//中线数组
??Search_1_17:
        LDR.W    R0,??DataTable6_3
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable6_8
        LDR      R0,[R0, R7, LSL #+2]
        ADDS     R1,R0,R1
        ADDS     R1,R1,#+5
        LDR.W    R0,??DataTable6
        STRH     R1,[R0, R7, LSL #+1]
//  390                Search_starst=Search_1_Line_center[col];  //下一次搜索变量开始的位置
        LDR.W    R0,??DataTable6
        LDRSH    R0,[R0, R7, LSL #+1]
        LDR.W    R1,??DataTable6_6
        STR      R0,[R1, #+0]
//  391                
//  392                if(Search_1_left_center[col]<Search_1_left_center[col+1])  //折线
        LDR.W    R0,??DataTable6_9
        LDRSH    R0,[R0, R7, LSL #+1]
        LDR.W    R1,??DataTable6_9
        ADD      R1,R1,R7, LSL #+1
        LDRSH    R1,[R1, #+2]
        CMP      R0,R1
        BGE.N    ??Search_1_15
//  393                {
//  394                   Search_1_left_center[col]=Search_1_left_center[col+1];
        LDR.W    R0,??DataTable6_9
        ADD      R0,R0,R7, LSL #+1
        LDRH     R0,[R0, #+2]
        LDR.W    R1,??DataTable6_9
        STRH     R0,[R1, R7, LSL #+1]
        B.N      ??Search_1_15
//  395                }
//  396            }
//  397            else
//  398            {
//  399                Search_1_Line_center[col]=Right_point -Pic_Give[col]+5;//中线数组
??Search_1_16:
        LDR.W    R0,??DataTable6_4
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable6_8
        LDR      R0,[R0, R7, LSL #+2]
        SUBS     R1,R1,R0
        ADDS     R1,R1,#+5
        LDR.W    R0,??DataTable6
        STRH     R1,[R0, R7, LSL #+1]
//  400                Search_starst=Search_1_Line_center[col];  //下一次搜索变量开始的位置
        LDR.W    R0,??DataTable6
        LDRSH    R0,[R0, R7, LSL #+1]
        LDR.W    R1,??DataTable6_6
        STR      R0,[R1, #+0]
//  401                if(Search_1_left_center[col]>Search_1_left_center[col+1])  //折线
        LDR.W    R0,??DataTable6_9
        ADD      R0,R0,R7, LSL #+1
        LDRSH    R0,[R0, #+2]
        LDR.W    R1,??DataTable6_9
        LDRSH    R1,[R1, R7, LSL #+1]
        CMP      R0,R1
        BGE.N    ??Search_1_15
//  402                {
//  403                   Search_1_left_center[col]=Search_1_left_center[col+1];
        LDR.W    R0,??DataTable6_9
        ADD      R0,R0,R7, LSL #+1
        LDRH     R0,[R0, #+2]
        LDR.W    R1,??DataTable6_9
        STRH     R0,[R1, R7, LSL #+1]
//  404                }
//  405            }
//  406         }
//  407       }
//  408       if(How_Much_Find==0)
??Search_1_15:
        LDR.W    R0,??DataTable6_5
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.W    ??Search_1_18
//  409       {
//  410          Rode_Ring=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_7
        STR      R0,[R1, #+0]
//  411          
//  412          Search_1_Line_center[col]=Search_1_Line_center[col+1]+5;//中线数组
        LDR.W    R0,??DataTable6
        ADD      R0,R0,R7, LSL #+1
        LDRH     R0,[R0, #+2]
        ADDS     R0,R0,#+5
        LDR.W    R1,??DataTable6
        STRH     R0,[R1, R7, LSL #+1]
//  413          Search_starst=Search_1_Line_center[col];  //下一次搜索变量开始的位置
        LDR.W    R0,??DataTable6
        LDRSH    R0,[R0, R7, LSL #+1]
        LDR.W    R1,??DataTable6_6
        STR      R0,[R1, #+0]
//  414          if(Search_1_left_center[col]>Search_1_left_center[col+1])  //折线
        LDR.W    R0,??DataTable6_9
        ADD      R0,R0,R7, LSL #+1
        LDRSH    R0,[R0, #+2]
        LDR.W    R1,??DataTable6_9
        LDRSH    R1,[R1, R7, LSL #+1]
        CMP      R0,R1
        BGE.W    ??Search_1_18
//  415          {
//  416             Search_1_left_center[col]=Search_1_left_center[col+1];
        LDR.W    R0,??DataTable6_9
        ADD      R0,R0,R7, LSL #+1
        LDRH     R0,[R0, #+2]
        LDR.W    R1,??DataTable6_9
        STRH     R0,[R1, R7, LSL #+1]
        B.N      ??Search_1_18
//  417          } 
//  418       }
//  419     }
//  420     else if( Rode_Cross )
??Search_1_13:
        LDR.W    R0,??DataTable6_10
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.W    ??Search_1_19
//  421     {
//  422        if(How_Much_Find==2)//如果找到了两个边沿)
        LDR.W    R0,??DataTable6_5
        LDR      R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??Search_1_20
//  423       {
//  424        Search_1_Line_center[col]=(int)((Right_point +Left_point)*0.5);//中线数组
        LDR.W    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable6_3
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
          CFI FunCall __aeabi_i2d
        BL       __aeabi_i2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_11  ;; 0x3fe00000
          CFI FunCall __aeabi_dmul
        BL       __aeabi_dmul
          CFI FunCall __aeabi_d2iz
        BL       __aeabi_d2iz
        LDR.W    R1,??DataTable6
        STRH     R0,[R1, R7, LSL #+1]
//  425        Search_starst=Search_1_Line_center[col];  //下一次搜索变量开始的位置
        LDR.W    R0,??DataTable6
        LDRSH    R0,[R0, R7, LSL #+1]
        LDR.W    R1,??DataTable6_6
        STR      R0,[R1, #+0]
//  426        if(Search_1_left_center[col]>Search_1_left_center[col+1])  //折线
        LDR.W    R0,??DataTable6_9
        ADD      R0,R0,R7, LSL #+1
        LDRSH    R0,[R0, #+2]
        LDR.W    R1,??DataTable6_9
        LDRSH    R1,[R1, R7, LSL #+1]
        CMP      R0,R1
        BGE.N    ??Search_1_20
//  427        {
//  428           Search_1_left_center[col]=Search_1_left_center[col+1];
        LDR.W    R0,??DataTable6_9
        ADD      R0,R0,R7, LSL #+1
        LDRH     R0,[R0, #+2]
        LDR.W    R1,??DataTable6_9
        STRH     R0,[R1, R7, LSL #+1]
//  429        }
//  430       }
//  431     
//  432        if(How_Much_Find==1)//如果找到了1个边沿
??Search_1_20:
        LDR.W    R0,??DataTable6_5
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Search_1_21
//  433       {
//  434         {
//  435            if(Left_find_flag) //如果左边找到了
        LDR.W    R0,??DataTable6_1
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Search_1_22
//  436            {
//  437                
//  438                Search_1_Line_center[col]=(Search_1_Line_center[col+1]);//中线数组
        LDR.W    R0,??DataTable6
        ADD      R0,R0,R7, LSL #+1
        LDRH     R0,[R0, #+2]
        LDR.W    R1,??DataTable6
        STRH     R0,[R1, R7, LSL #+1]
//  439                
//  440                Search_starst=Search_1_Line_center[col];  //下一次搜索变量开始的位置
        LDR.W    R0,??DataTable6
        LDRSH    R0,[R0, R7, LSL #+1]
        LDR.W    R1,??DataTable6_6
        STR      R0,[R1, #+0]
//  441                
//  442                if(Search_1_left_center[col]<Search_1_left_center[col+1])  //折线
        LDR.W    R0,??DataTable6_9
        LDRSH    R0,[R0, R7, LSL #+1]
        LDR.W    R1,??DataTable6_9
        ADD      R1,R1,R7, LSL #+1
        LDRSH    R1,[R1, #+2]
        CMP      R0,R1
        BGE.N    ??Search_1_21
//  443                {
//  444                   Search_1_left_center[col]=Search_1_left_center[col+1];
        LDR.W    R0,??DataTable6_9
        ADD      R0,R0,R7, LSL #+1
        LDRH     R0,[R0, #+2]
        LDR.W    R1,??DataTable6_9
        STRH     R0,[R1, R7, LSL #+1]
        B.N      ??Search_1_21
//  445                }
//  446            }
//  447            else
//  448            {
//  449                Search_1_Line_center[col]=(Search_1_Line_center[col+1]);//中线数组
??Search_1_22:
        LDR.W    R0,??DataTable6
        ADD      R0,R0,R7, LSL #+1
        LDRH     R0,[R0, #+2]
        LDR.W    R1,??DataTable6
        STRH     R0,[R1, R7, LSL #+1]
//  450                Search_starst=Search_1_Line_center[col];  //下一次搜索变量开始的位置
        LDR.W    R0,??DataTable6
        LDRSH    R0,[R0, R7, LSL #+1]
        LDR.W    R1,??DataTable6_6
        STR      R0,[R1, #+0]
//  451                if(Search_1_left_center[col]>Search_1_left_center[col+1])  //折线
        LDR.W    R0,??DataTable6_9
        ADD      R0,R0,R7, LSL #+1
        LDRSH    R0,[R0, #+2]
        LDR.W    R1,??DataTable6_9
        LDRSH    R1,[R1, R7, LSL #+1]
        CMP      R0,R1
        BGE.N    ??Search_1_21
//  452                {
//  453                   Search_1_left_center[col]=Search_1_left_center[col+1];
        LDR.W    R0,??DataTable6_9
        ADD      R0,R0,R7, LSL #+1
        LDRH     R0,[R0, #+2]
        LDR.W    R1,??DataTable6_9
        STRH     R0,[R1, R7, LSL #+1]
//  454                }
//  455            }
//  456         }
//  457       }
//  458     
//  459       if(How_Much_Find==0)
??Search_1_21:
        LDR.W    R0,??DataTable6_5
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.W    ??Search_1_18
//  460       {
//  461          //Rode_Cross=0;
//  462          Search_1_Line_center[col]=(int)(Search_1_Line_center[col+1]);//中线数组
        LDR.W    R0,??DataTable6
        ADD      R0,R0,R7, LSL #+1
        LDRH     R0,[R0, #+2]
        LDR.W    R1,??DataTable6
        STRH     R0,[R1, R7, LSL #+1]
//  463          Search_starst=Search_1_Line_center[col];  //下一次搜索变量开始的位置
        LDR.W    R0,??DataTable6
        LDRSH    R0,[R0, R7, LSL #+1]
        LDR.W    R1,??DataTable6_6
        STR      R0,[R1, #+0]
//  464          if(Search_1_left_center[col]>Search_1_left_center[col+1])  //折线
        LDR.W    R0,??DataTable6_9
        ADD      R0,R0,R7, LSL #+1
        LDRSH    R0,[R0, #+2]
        LDR.W    R1,??DataTable6_9
        LDRSH    R1,[R1, R7, LSL #+1]
        CMP      R0,R1
        BGE.W    ??Search_1_18
//  465          {
//  466             Search_1_left_center[col]=Search_1_left_center[col+1];
        LDR.W    R0,??DataTable6_9
        ADD      R0,R0,R7, LSL #+1
        LDRH     R0,[R0, #+2]
        LDR.W    R1,??DataTable6_9
        STRH     R0,[R1, R7, LSL #+1]
        B.N      ??Search_1_18
//  467          } 
//  468       }
//  469     }  
//  470     else
//  471     {
//  472       
//  473     if(How_Much_Find==2)//如果找到了两个边沿
??Search_1_19:
        LDR.W    R0,??DataTable6_5
        LDR      R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??Search_1_23
//  474     {
//  475         Search_1_Line_center[col]=(int)((Right_point+Left_point)*0.5);//中线数组
        LDR.W    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable6_3
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
          CFI FunCall __aeabi_i2d
        BL       __aeabi_i2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_11  ;; 0x3fe00000
          CFI FunCall __aeabi_dmul
        BL       __aeabi_dmul
          CFI FunCall __aeabi_d2iz
        BL       __aeabi_d2iz
        LDR.W    R1,??DataTable6
        STRH     R0,[R1, R7, LSL #+1]
//  476         Search_starst=Search_1_Line_center[col];  //下一次搜索变量开始的位置
        LDR.W    R0,??DataTable6
        LDRSH    R0,[R0, R7, LSL #+1]
        LDR.W    R1,??DataTable6_6
        STR      R0,[R1, #+0]
//  477     }
//  478 
//  479     if(How_Much_Find==1)//如果找到了1个边沿
??Search_1_23:
        LDR.W    R0,??DataTable6_5
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Search_1_24
//  480     {
//  481           if(Left_find_flag) //如果左边找到了
        LDR.W    R0,??DataTable6_1
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Search_1_25
//  482           {
//  483               Search_1_Line_center[col]=Left_point+Pic_Give[col];//中线数组
        LDR.W    R0,??DataTable6_3
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable6_8
        LDR      R0,[R0, R7, LSL #+2]
        ADDS     R1,R0,R1
        LDR.W    R0,??DataTable6
        STRH     R1,[R0, R7, LSL #+1]
//  484               Search_starst=Search_1_Line_center[col];  //下一次搜索变量开始的位置
        LDR.W    R0,??DataTable6
        LDRSH    R0,[R0, R7, LSL #+1]
        LDR.W    R1,??DataTable6_6
        STR      R0,[R1, #+0]
//  485               
//  486               if(Search_1_left_center[col]<Search_1_left_center[col+1])  //折线
        LDR.W    R0,??DataTable6_9
        LDRSH    R0,[R0, R7, LSL #+1]
        LDR.W    R1,??DataTable6_9
        ADD      R1,R1,R7, LSL #+1
        LDRSH    R1,[R1, #+2]
        CMP      R0,R1
        BGE.N    ??Search_1_24
//  487               {
//  488                  Search_1_left_center[col]=Search_1_left_center[col+1];
        LDR.W    R0,??DataTable6_9
        ADD      R0,R0,R7, LSL #+1
        LDRH     R0,[R0, #+2]
        LDR.W    R1,??DataTable6_9
        STRH     R0,[R1, R7, LSL #+1]
        B.N      ??Search_1_24
//  489               }
//  490           }
//  491           else
//  492           {
//  493               Search_1_Line_center[col]=Right_point-Pic_Give[col];//中线数组
??Search_1_25:
        LDR.W    R0,??DataTable6_4
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable6_8
        LDR      R0,[R0, R7, LSL #+2]
        SUBS     R1,R1,R0
        LDR.W    R0,??DataTable6
        STRH     R1,[R0, R7, LSL #+1]
//  494               Search_starst=Search_1_Line_center[col];  //下一次搜索变量开始的位置
        LDR.W    R0,??DataTable6
        LDRSH    R0,[R0, R7, LSL #+1]
        LDR.W    R1,??DataTable6_6
        STR      R0,[R1, #+0]
//  495               if(Search_1_left_center[col]>Search_1_left_center[col+1])  //折线
        LDR.W    R0,??DataTable6_9
        ADD      R0,R0,R7, LSL #+1
        LDRSH    R0,[R0, #+2]
        LDR.W    R1,??DataTable6_9
        LDRSH    R1,[R1, R7, LSL #+1]
        CMP      R0,R1
        BGE.N    ??Search_1_24
//  496               {
//  497                  Search_1_left_center[col]=Search_1_left_center[col+1];
        LDR.W    R0,??DataTable6_9
        ADD      R0,R0,R7, LSL #+1
        LDRH     R0,[R0, #+2]
        LDR.W    R1,??DataTable6_9
        STRH     R0,[R1, R7, LSL #+1]
//  498               }
//  499           }
//  500     }
//  501       
//  502      if(How_Much_Find==0)    //说明此时处于懵逼状态//需要根据上次情况来判断
??Search_1_24:
        LDR.W    R0,??DataTable6_5
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Search_1_18
//  503      {
//  504                Search_1_Line_center[col]=(Search_1_Line_center[col+1]);
        LDR.W    R0,??DataTable6
        ADD      R0,R0,R7, LSL #+1
        LDRH     R0,[R0, #+2]
        LDR.W    R1,??DataTable6
        STRH     R0,[R1, R7, LSL #+1]
//  505                Search_starst=Search_1_Line_center[col];
        LDR.W    R0,??DataTable6
        LDRSH    R0,[R0, R7, LSL #+1]
        LDR.W    R1,??DataTable6_6
        STR      R0,[R1, #+0]
//  506      }
//  507     }
//  508     
//  509     if(Search_1_right_center[col] >79)
??Search_1_18:
        LDR.W    R0,??DataTable6_12
        LDRSH    R0,[R0, R7, LSL #+1]
        CMP      R0,#+80
        BLT.N    ??Search_1_26
//  510        Search_1_right_center[col] =79;
        MOVS     R0,#+79
        LDR.W    R1,??DataTable6_12
        STRH     R0,[R1, R7, LSL #+1]
//  511     if(Search_1_left_center[col]<0)  
??Search_1_26:
        LDR.W    R0,??DataTable6_9
        LDRSH    R0,[R0, R7, LSL #+1]
        CMP      R0,#+0
        BPL.N    ??Search_1_27
//  512        Search_1_left_center[col]=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_9
        STRH     R0,[R1, R7, LSL #+1]
//  513    }
??Search_1_27:
        SUBS     R7,R7,#+1
        B.N      ??Search_1_5
//  514    
//  515    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////// 
//  516 
//  517    
//  518    //前5行寻找完毕
//  519     Search_1_Line_center[59]=(ABS(Search_1_Line_center[58])+ABS(Search_1_Line_center[57])+ABS(Search_1_Line_center[56])+ABS(Search_1_Line_center[55])) /4; //下次就从刚才找到的中点开始
??Search_1_6:
        LDR.W    R0,??DataTable6
        LDRSH    R0,[R0, #+116]
        CMP      R0,#+1
        BLT.N    ??Search_1_28
        LDR.W    R0,??DataTable6
        LDRSH    R0,[R0, #+116]
        B.N      ??Search_1_29
??Search_1_28:
        LDR.W    R0,??DataTable6
        LDRSH    R0,[R0, #+116]
        RSBS     R0,R0,#+0
??Search_1_29:
        LDR.W    R1,??DataTable6
        LDRSH    R1,[R1, #+114]
        CMP      R1,#+1
        BLT.N    ??Search_1_30
        LDR.W    R1,??DataTable6
        LDRSH    R1,[R1, #+114]
        B.N      ??Search_1_31
??Search_1_30:
        LDR.W    R1,??DataTable6
        LDRSH    R1,[R1, #+114]
        RSBS     R1,R1,#+0
??Search_1_31:
        LDR.W    R2,??DataTable6
        LDRSH    R2,[R2, #+112]
        CMP      R2,#+1
        BLT.N    ??Search_1_32
        LDR.W    R2,??DataTable6
        LDRSH    R2,[R2, #+112]
        B.N      ??Search_1_33
??Search_1_32:
        LDR.W    R2,??DataTable6
        LDRSH    R2,[R2, #+112]
        RSBS     R2,R2,#+0
??Search_1_33:
        LDR.W    R3,??DataTable6
        LDRSH    R3,[R3, #+110]
        CMP      R3,#+1
        BLT.N    ??Search_1_34
        LDR.W    R3,??DataTable6
        LDRSH    R3,[R3, #+110]
        B.N      ??Search_1_35
??Search_1_34:
        LDR.W    R3,??DataTable6
        LDRSH    R3,[R3, #+110]
        RSBS     R3,R3,#+0
??Search_1_35:
        ADDS     R0,R1,R0
        ADDS     R0,R2,R0
        ADDS     R0,R3,R0
        MOVS     R1,#+4
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable6
        STRH     R0,[R1, #+118]
//  520   
//  521   
//  522    /******************************************************/
//  523    //此时该竖向向上找，最好找3个波折的，
//  524    
//  525 register   int Last_5_Mid=ABS(Line_center[59]);
        LDR.W    R0,??DataTable6_13
        LDRSH    R0,[R0, #+118]
        CMP      R0,#+1
        BLT.N    ??Search_1_36
        LDR.W    R0,??DataTable6_13
        LDRSH    R0,[R0, #+118]
        STR      R0,[SP, #+0]
        B.N      ??Search_1_37
??Search_1_36:
        LDR.W    R0,??DataTable6_13
        LDRSH    R0,[R0, #+118]
        RSBS     R0,R0,#+0
        STR      R0,[SP, #+0]
//  526    
//  527 
//  528    
//  529    /******************************************************/
//  530    
//  531    //已经找到了这么多行，可以竖向开始寻找
//  532    for( register int col=55;col>=10 ;col--)
??Search_1_37:
        MOVS     R7,#+55
??Search_1_38:
        CMP      R7,#+10
        BLT.W    ??Search_1_39
//  533    {
//  534      
//  535    
//  536      for(register int row=Search_starst;row>=0;row--)         //从中间向左边搜索，寻找跳变沿
        LDR.W    R0,??DataTable6_6
        LDR      R0,[R0, #+0]
??Search_1_40:
        CMP      R0,#+0
        BMI.N    ??Search_1_41
//  537     {
//  538       if(SEARCH_1_PIC [col][row] == PIC_BLACK )
        LDR.W    R1,??DataTable5_3
        MOVS     R2,#+80
        MUL      R2,R2,R7
        ADD      R1,R1,R2
        LDRB     R1,[R1, R0]
        CMP      R1,#+1
        BNE.N    ??Search_1_42
//  539       {
//  540          Left_find_flag=1;
        MOVS     R1,#+1
        LDR.W    R2,??DataTable6_1
        STR      R1,[R2, #+0]
//  541          Left_point=row; //找到位置
        LDR.W    R1,??DataTable6_3
        STR      R0,[R1, #+0]
//  542          break;
        B.N      ??Search_1_41
//  543       }
//  544       //Pic_show[col][row]=0;
//  545     }
??Search_1_42:
        SUBS     R0,R0,#+1
        B.N      ??Search_1_40
//  546     
//  547     
//  548     for(register int row=Search_starst;row<=79;row++)         //从中间向右边搜索，寻找跳变沿
??Search_1_41:
        LDR.W    R0,??DataTable6_6
        LDR      R0,[R0, #+0]
??Search_1_43:
        CMP      R0,#+80
        BGE.N    ??Search_1_44
//  549     {
//  550       if(SEARCH_1_PIC [col][row] ==  PIC_BLACK )
        LDR.W    R1,??DataTable5_3
        MOVS     R2,#+80
        MUL      R2,R2,R7
        ADD      R1,R1,R2
        LDRB     R1,[R1, R0]
        CMP      R1,#+1
        BNE.N    ??Search_1_45
//  551       {
//  552          Right_find_flag=1;
        MOVS     R1,#+1
        LDR.W    R2,??DataTable6_2
        STR      R1,[R2, #+0]
//  553          Right_point=row; //找到位置
        LDR.W    R1,??DataTable6_4
        STR      R0,[R1, #+0]
//  554          break;
        B.N      ??Search_1_44
//  555       }
//  556 //      Pic_show[col][row]=0;
//  557     }
??Search_1_45:
        ADDS     R0,R0,#+1
        B.N      ??Search_1_43
//  558    
//  559     How_Much_Find=Right_find_flag+Left_find_flag;//找到的数量
??Search_1_44:
        LDR.W    R0,??DataTable6_2
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable6_1
        LDR      R0,[R0, #+0]
        ADDS     R1,R0,R1
        LDR.W    R0,??DataTable6_5
        STR      R1,[R0, #+0]
//  560   
//  561 
//  562       ///////////////////////////////////////////////////////////////////////////////////////////////////////////////// 
//  563  
//  564    if(Rode_Ring==1)
        LDR.W    R0,??DataTable6_7
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.W    ??Search_1_46
//  565     {
//  566       if(How_Much_Find==2)//如果找到了两个边沿)
        LDR.W    R0,??DataTable6_5
        LDR      R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??Search_1_47
//  567       {
//  568        Search_1_Line_center[col]=Right_point-Pic_Give[col];//中线数组
        LDR.W    R0,??DataTable6_4
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable6_8
        LDR      R0,[R0, R7, LSL #+2]
        SUBS     R1,R1,R0
        LDR.W    R0,??DataTable6
        STRH     R1,[R0, R7, LSL #+1]
//  569        Search_starst=Search_1_Line_center[col];  //下一次搜索变量开始的位置
        LDR.W    R0,??DataTable6
        LDRSH    R0,[R0, R7, LSL #+1]
        LDR.W    R1,??DataTable6_6
        STR      R0,[R1, #+0]
//  570        if(Search_1_left_center[col]>Search_1_left_center[col+1])  //折线
        LDR.W    R0,??DataTable6_9
        ADD      R0,R0,R7, LSL #+1
        LDRSH    R0,[R0, #+2]
        LDR.W    R1,??DataTable6_9
        LDRSH    R1,[R1, R7, LSL #+1]
        CMP      R0,R1
        BGE.N    ??Search_1_47
//  571        {
//  572           Search_1_left_center[col]=Search_1_left_center[col+1];
        LDR.W    R0,??DataTable6_9
        ADD      R0,R0,R7, LSL #+1
        LDRH     R0,[R0, #+2]
        LDR.W    R1,??DataTable6_9
        STRH     R0,[R1, R7, LSL #+1]
//  573        }
//  574       }
//  575        
//  576       
//  577       if(How_Much_Find==1)//如果找到了1个边沿
??Search_1_47:
        LDR.W    R0,??DataTable6_5
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Search_1_48
//  578       {
//  579         {
//  580            if(Left_find_flag) //如果左边找到了
        LDR.W    R0,??DataTable6_1
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Search_1_49
//  581            {
//  582                Search_1_Line_center[col]=(Left_point+Pic_Give[col]+80)*0.5;//中线数组
        LDR.W    R0,??DataTable6_3
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable6_8
        LDR      R1,[R1, R7, LSL #+2]
        ADDS     R0,R1,R0
        ADDS     R0,R0,#+80
          CFI FunCall __aeabi_i2d
        BL       __aeabi_i2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_11  ;; 0x3fe00000
          CFI FunCall __aeabi_dmul
        BL       __aeabi_dmul
          CFI FunCall __aeabi_d2iz
        BL       __aeabi_d2iz
        LDR.W    R1,??DataTable6
        STRH     R0,[R1, R7, LSL #+1]
//  583                Search_starst=Search_1_Line_center[col];  //下一次搜索变量开始的位置
        LDR.W    R0,??DataTable6
        LDRSH    R0,[R0, R7, LSL #+1]
        LDR.W    R1,??DataTable6_6
        STR      R0,[R1, #+0]
//  584                
//  585                if(Search_1_left_center[col]<Search_1_left_center[col+1])  //折线
        LDR.W    R0,??DataTable6_9
        LDRSH    R0,[R0, R7, LSL #+1]
        LDR.W    R1,??DataTable6_9
        ADD      R1,R1,R7, LSL #+1
        LDRSH    R1,[R1, #+2]
        CMP      R0,R1
        BGE.N    ??Search_1_48
//  586                {
//  587                   Search_1_left_center[col]=Search_1_left_center[col+1];
        LDR.W    R0,??DataTable6_9
        ADD      R0,R0,R7, LSL #+1
        LDRH     R0,[R0, #+2]
        LDR.W    R1,??DataTable6_9
        STRH     R0,[R1, R7, LSL #+1]
        B.N      ??Search_1_48
//  588                }
//  589            }
//  590            else
//  591            {
//  592                Search_1_Line_center[col]=Right_point -Pic_Give[col];//中线数组
??Search_1_49:
        LDR.W    R0,??DataTable6_4
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable6_8
        LDR      R0,[R0, R7, LSL #+2]
        SUBS     R1,R1,R0
        LDR.W    R0,??DataTable6
        STRH     R1,[R0, R7, LSL #+1]
//  593                Search_starst=Search_1_Line_center[col];  //下一次搜索变量开始的位置
        LDR.W    R0,??DataTable6
        LDRSH    R0,[R0, R7, LSL #+1]
        LDR.W    R1,??DataTable6_6
        STR      R0,[R1, #+0]
//  594                if(Search_1_left_center[col]>Search_1_left_center[col+1])  //折线
        LDR.W    R0,??DataTable6_9
        ADD      R0,R0,R7, LSL #+1
        LDRSH    R0,[R0, #+2]
        LDR.W    R1,??DataTable6_9
        LDRSH    R1,[R1, R7, LSL #+1]
        CMP      R0,R1
        BGE.N    ??Search_1_48
//  595                {
//  596                   Search_1_left_center[col]=Search_1_left_center[col+1];
        LDR.W    R0,??DataTable6_9
        ADD      R0,R0,R7, LSL #+1
        LDRH     R0,[R0, #+2]
        LDR.W    R1,??DataTable6_9
        STRH     R0,[R1, R7, LSL #+1]
//  597                }
//  598            }
//  599         }
//  600       }
//  601       if(How_Much_Find==0)
??Search_1_48:
        LDR.W    R0,??DataTable6_5
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.W    ??Search_1_50
//  602       {
//  603          Rode_Ring=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_7
        STR      R0,[R1, #+0]
//  604          
//  605          Search_1_Line_center[col]=Search_1_Line_center[col+1];//中线数组
        LDR.W    R0,??DataTable6
        ADD      R0,R0,R7, LSL #+1
        LDRH     R0,[R0, #+2]
        LDR.W    R1,??DataTable6
        STRH     R0,[R1, R7, LSL #+1]
//  606          Search_starst=Search_1_Line_center[col];  //下一次搜索变量开始的位置
        LDR.W    R0,??DataTable6
        LDRSH    R0,[R0, R7, LSL #+1]
        LDR.W    R1,??DataTable6_6
        STR      R0,[R1, #+0]
//  607          if(Search_1_left_center[col]>Search_1_left_center[col+1])  //折线
        LDR.W    R0,??DataTable6_9
        ADD      R0,R0,R7, LSL #+1
        LDRSH    R0,[R0, #+2]
        LDR.W    R1,??DataTable6_9
        LDRSH    R1,[R1, R7, LSL #+1]
        CMP      R0,R1
        BGE.W    ??Search_1_50
//  608          {
//  609             Search_1_left_center[col]=Search_1_left_center[col+1];
        LDR.W    R0,??DataTable6_9
        ADD      R0,R0,R7, LSL #+1
        LDRH     R0,[R0, #+2]
        LDR.W    R1,??DataTable6_9
        STRH     R0,[R1, R7, LSL #+1]
        B.N      ??Search_1_50
//  610          } 
//  611       }
//  612     }
//  613     else if( Rode_Cross )
??Search_1_46:
        LDR.W    R0,??DataTable6_10
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.W    ??Search_1_51
//  614     {
//  615        if(How_Much_Find==2)//如果找到了两个边沿)
        LDR.W    R0,??DataTable6_5
        LDR      R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??Search_1_52
//  616       {
//  617        Search_1_Line_center[col]=(int)((Right_point +Left_point)*0.5);//中线数组
        LDR.W    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable6_3
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
          CFI FunCall __aeabi_i2d
        BL       __aeabi_i2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_11  ;; 0x3fe00000
          CFI FunCall __aeabi_dmul
        BL       __aeabi_dmul
          CFI FunCall __aeabi_d2iz
        BL       __aeabi_d2iz
        LDR.W    R1,??DataTable6
        STRH     R0,[R1, R7, LSL #+1]
//  618        Search_starst=Search_1_Line_center[col];  //下一次搜索变量开始的位置
        LDR.W    R0,??DataTable6
        LDRSH    R0,[R0, R7, LSL #+1]
        LDR.W    R1,??DataTable6_6
        STR      R0,[R1, #+0]
//  619        if(Search_1_left_center[col]>Search_1_left_center[col+1])  //折线
        LDR.W    R0,??DataTable6_9
        ADD      R0,R0,R7, LSL #+1
        LDRSH    R0,[R0, #+2]
        LDR.W    R1,??DataTable6_9
        LDRSH    R1,[R1, R7, LSL #+1]
        CMP      R0,R1
        BGE.N    ??Search_1_52
//  620        {
//  621           Search_1_left_center[col]=Search_1_left_center[col+1];
        LDR.W    R0,??DataTable6_9
        ADD      R0,R0,R7, LSL #+1
        LDRH     R0,[R0, #+2]
        LDR.W    R1,??DataTable6_9
        STRH     R0,[R1, R7, LSL #+1]
//  622        }
//  623       }
//  624     
//  625        if(How_Much_Find==1)//如果找到了1个边沿
??Search_1_52:
        LDR.W    R0,??DataTable6_5
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Search_1_53
//  626       {
//  627         {
//  628            if(Left_find_flag) //如果左边找到了
        LDR.W    R0,??DataTable6_1
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Search_1_54
//  629            {
//  630                
//  631                Search_1_Line_center[col]=(Search_1_Line_center[col+1]);//中线数组
        LDR.W    R0,??DataTable6
        ADD      R0,R0,R7, LSL #+1
        LDRH     R0,[R0, #+2]
        LDR.W    R1,??DataTable6
        STRH     R0,[R1, R7, LSL #+1]
//  632                
//  633                Search_starst=Search_1_Line_center[col];  //下一次搜索变量开始的位置
        LDR.W    R0,??DataTable6
        LDRSH    R0,[R0, R7, LSL #+1]
        LDR.W    R1,??DataTable6_6
        STR      R0,[R1, #+0]
//  634                
//  635                if(Search_1_left_center[col]<Search_1_left_center[col+1])  //折线
        LDR.W    R0,??DataTable6_9
        LDRSH    R0,[R0, R7, LSL #+1]
        LDR.W    R1,??DataTable6_9
        ADD      R1,R1,R7, LSL #+1
        LDRSH    R1,[R1, #+2]
        CMP      R0,R1
        BGE.N    ??Search_1_53
//  636                {
//  637                   Search_1_left_center[col]=Search_1_left_center[col+1];
        LDR.W    R0,??DataTable6_9
        ADD      R0,R0,R7, LSL #+1
        LDRH     R0,[R0, #+2]
        LDR.W    R1,??DataTable6_9
        STRH     R0,[R1, R7, LSL #+1]
        B.N      ??Search_1_53
//  638                }
//  639            }
//  640            else
//  641            {
//  642                Search_1_Line_center[col]=(Search_1_Line_center[col+1]);//中线数组
??Search_1_54:
        LDR.W    R0,??DataTable6
        ADD      R0,R0,R7, LSL #+1
        LDRH     R0,[R0, #+2]
        LDR.W    R1,??DataTable6
        STRH     R0,[R1, R7, LSL #+1]
//  643                Search_starst=Search_1_Line_center[col];  //下一次搜索变量开始的位置
        LDR.W    R0,??DataTable6
        LDRSH    R0,[R0, R7, LSL #+1]
        LDR.W    R1,??DataTable6_6
        STR      R0,[R1, #+0]
//  644                if(Search_1_left_center[col]>Search_1_left_center[col+1])  //折线
        LDR.W    R0,??DataTable6_9
        ADD      R0,R0,R7, LSL #+1
        LDRSH    R0,[R0, #+2]
        LDR.W    R1,??DataTable6_9
        LDRSH    R1,[R1, R7, LSL #+1]
        CMP      R0,R1
        BGE.N    ??Search_1_53
//  645                {
//  646                   Search_1_left_center[col]=Search_1_left_center[col+1];
        LDR.W    R0,??DataTable6_9
        ADD      R0,R0,R7, LSL #+1
        LDRH     R0,[R0, #+2]
        LDR.W    R1,??DataTable6_9
        STRH     R0,[R1, R7, LSL #+1]
//  647                }
//  648            }
//  649         }
//  650       }
//  651     
//  652       if(How_Much_Find==0)
??Search_1_53:
        LDR.W    R0,??DataTable6_5
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.W    ??Search_1_50
//  653       {
//  654          //Rode_Cross=0;
//  655          Search_1_Line_center[col]=(int)(Search_1_Line_center[col+1]);//中线数组
        LDR.N    R0,??DataTable6
        ADD      R0,R0,R7, LSL #+1
        LDRH     R0,[R0, #+2]
        LDR.N    R1,??DataTable6
        STRH     R0,[R1, R7, LSL #+1]
//  656          Search_starst=Search_1_Line_center[col];  //下一次搜索变量开始的位置
        LDR.N    R0,??DataTable6
        LDRSH    R0,[R0, R7, LSL #+1]
        LDR.N    R1,??DataTable6_6
        STR      R0,[R1, #+0]
//  657          if(Search_1_left_center[col]>Search_1_left_center[col+1])  //折线
        LDR.N    R0,??DataTable6_9
        ADD      R0,R0,R7, LSL #+1
        LDRSH    R0,[R0, #+2]
        LDR.N    R1,??DataTable6_9
        LDRSH    R1,[R1, R7, LSL #+1]
        CMP      R0,R1
        BGE.N    ??Search_1_50
//  658          {
//  659             Search_1_left_center[col]=Search_1_left_center[col+1];
        LDR.N    R0,??DataTable6_9
        ADD      R0,R0,R7, LSL #+1
        LDRH     R0,[R0, #+2]
        LDR.N    R1,??DataTable6_9
        STRH     R0,[R1, R7, LSL #+1]
        B.N      ??Search_1_50
//  660          } 
//  661       }
//  662     }  
//  663     else
//  664     {
//  665       
//  666           if(How_Much_Find==2)//如果找到了两个边沿
??Search_1_51:
        LDR.N    R0,??DataTable6_5
        LDR      R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??Search_1_55
//  667           {
//  668               Search_1_Line_center[col]=(int)((Right_point+Left_point)*0.5);//中线数组
        LDR.N    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable6_3
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
          CFI FunCall __aeabi_i2d
        BL       __aeabi_i2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6_11  ;; 0x3fe00000
          CFI FunCall __aeabi_dmul
        BL       __aeabi_dmul
          CFI FunCall __aeabi_d2iz
        BL       __aeabi_d2iz
        LDR.N    R1,??DataTable6
        STRH     R0,[R1, R7, LSL #+1]
//  669               Search_starst=Search_1_Line_center[col];  //下一次搜索变量开始的位置
        LDR.N    R0,??DataTable6
        LDRSH    R0,[R0, R7, LSL #+1]
        LDR.N    R1,??DataTable6_6
        STR      R0,[R1, #+0]
//  670           }
//  671 
//  672           if(How_Much_Find==1)//如果找到了1个边沿
??Search_1_55:
        LDR.N    R0,??DataTable6_5
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Search_1_56
//  673           {
//  674           if(Left_find_flag) //如果左边找到了
        LDR.N    R0,??DataTable6_1
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Search_1_57
//  675           {
//  676               Search_1_Line_center[col]=Left_point+Pic_Give[col];//中线数组
        LDR.N    R0,??DataTable6_3
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable6_8
        LDR      R0,[R0, R7, LSL #+2]
        ADDS     R1,R0,R1
        LDR.N    R0,??DataTable6
        STRH     R1,[R0, R7, LSL #+1]
//  677               Search_starst=Search_1_Line_center[col];  //下一次搜索变量开始的位置
        LDR.N    R0,??DataTable6
        LDRSH    R0,[R0, R7, LSL #+1]
        LDR.N    R1,??DataTable6_6
        STR      R0,[R1, #+0]
//  678               
//  679               if(Search_1_left_center[col]<Search_1_left_center[col+1])  //折线
        LDR.N    R0,??DataTable6_9
        LDRSH    R0,[R0, R7, LSL #+1]
        LDR.N    R1,??DataTable6_9
        ADD      R1,R1,R7, LSL #+1
        LDRSH    R1,[R1, #+2]
        CMP      R0,R1
        BGE.N    ??Search_1_56
//  680               {
//  681                  Search_1_left_center[col]=Search_1_left_center[col+1];
        LDR.N    R0,??DataTable6_9
        ADD      R0,R0,R7, LSL #+1
        LDRH     R0,[R0, #+2]
        LDR.N    R1,??DataTable6_9
        STRH     R0,[R1, R7, LSL #+1]
        B.N      ??Search_1_56
//  682               }
//  683           }
//  684           else
//  685           {
//  686               Search_1_Line_center[col]=Right_point-Pic_Give[col];//中线数组
??Search_1_57:
        LDR.N    R0,??DataTable6_4
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable6_8
        LDR      R0,[R0, R7, LSL #+2]
        SUBS     R1,R1,R0
        LDR.N    R0,??DataTable6
        STRH     R1,[R0, R7, LSL #+1]
//  687               Search_starst=Search_1_Line_center[col];  //下一次搜索变量开始的位置
        LDR.N    R0,??DataTable6
        LDRSH    R0,[R0, R7, LSL #+1]
        LDR.N    R1,??DataTable6_6
        STR      R0,[R1, #+0]
//  688               if(Search_1_left_center[col]>Search_1_left_center[col+1])  //折线
        LDR.N    R0,??DataTable6_9
        ADD      R0,R0,R7, LSL #+1
        LDRSH    R0,[R0, #+2]
        LDR.N    R1,??DataTable6_9
        LDRSH    R1,[R1, R7, LSL #+1]
        CMP      R0,R1
        BGE.N    ??Search_1_56
//  689               {
//  690                  Search_1_left_center[col]=Search_1_left_center[col+1];
        LDR.N    R0,??DataTable6_9
        ADD      R0,R0,R7, LSL #+1
        LDRH     R0,[R0, #+2]
        LDR.N    R1,??DataTable6_9
        STRH     R0,[R1, R7, LSL #+1]
//  691               }
//  692           }
//  693           }
//  694       
//  695           if(How_Much_Find==0)    //说明此时处于懵逼状态//需要根据上次情况来判断
??Search_1_56:
        LDR.N    R0,??DataTable6_5
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Search_1_50
//  696           {
//  697                      Search_1_Line_center[col]=(Search_1_Line_center[col+1]);
        LDR.N    R0,??DataTable6
        ADD      R0,R0,R7, LSL #+1
        LDRH     R0,[R0, #+2]
        LDR.N    R1,??DataTable6
        STRH     R0,[R1, R7, LSL #+1]
//  698                      Search_starst=Search_1_Line_center[col];
        LDR.N    R0,??DataTable6
        LDRSH    R0,[R0, R7, LSL #+1]
        LDR.N    R1,??DataTable6_6
        STR      R0,[R1, #+0]
//  699           }
//  700     }
//  701     
//  702     if(Search_1_right_center[col] >79)
??Search_1_50:
        LDR.N    R0,??DataTable6_12
        LDRSH    R0,[R0, R7, LSL #+1]
        CMP      R0,#+80
        BLT.N    ??Search_1_58
//  703        Search_1_right_center[col] =79;
        MOVS     R0,#+79
        LDR.N    R1,??DataTable6_12
        STRH     R0,[R1, R7, LSL #+1]
//  704     if(Search_1_left_center[col]<0)  
??Search_1_58:
        LDR.N    R0,??DataTable6_9
        LDRSH    R0,[R0, R7, LSL #+1]
        CMP      R0,#+0
        BPL.N    ??Search_1_59
//  705        Search_1_left_center[col]=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6_9
        STRH     R0,[R1, R7, LSL #+1]
//  706 
//  707    }
??Search_1_59:
        SUBS     R7,R7,#+1
        B.N      ??Search_1_38
//  708 
//  709 }
??Search_1_39:
        ADD      SP,SP,#+20
          CFI CFA R13+36
        POP      {R4-R11,PC}      ;; return
          CFI EndBlock cfiBlock5

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable4:
        DC32     Find_Shizi_YuanZhan

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`Search_1::Left_point`:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
`Search_1::Right_point`:
        DC32 79

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`Search_1::How_Much_Find`:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`Search_1::Search_starst`:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`Search_1::Left_find_flag`:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`Search_1::Right_find_flag`:
        DS8 4
//  710    
//  711 
//  712 

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function Sqrt
        THUMB
//  713 __ramfunc float Sqrt(float A)
//  714 {
Sqrt:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
//  715 register float i=0;
        MOVS     R5,#+0
//  716 for(;i<80;)
??Sqrt_0:
        MOVS     R0,R5
        LDR.N    R1,??DataTable6_14  ;; 0x42a00000
          CFI FunCall __aeabi_cfcmple
        BL       __aeabi_cfcmple
        BCS.N    ??Sqrt_1
//  717 	{
//  718 	i+=0.5;
        MOVS     R0,R5
          CFI FunCall __aeabi_f2d
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable6_11  ;; 0x3fe00000
          CFI FunCall __aeabi_dadd
        BL       __aeabi_dadd
          CFI FunCall __aeabi_d2f
        BL       __aeabi_d2f
        MOVS     R5,R0
//  719 
//  720 	if(i*i>=A)
        MOVS     R0,R5
        MOVS     R1,R5
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
        MOVS     R1,R4
          CFI FunCall __aeabi_cfrcmple
        BL       __aeabi_cfrcmple
        BHI.N    ??Sqrt_0
//  721 	    return i;
        MOVS     R0,R5
        B.N      ??Sqrt_2
//  722 	}
//  723 }
??Sqrt_1:
??Sqrt_2:
        POP      {R1,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock6

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable5:
        DC32     Search_1_Rode_Wide

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable5_1:
        DC32     Huan_Rode_Flag

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable5_2:
        DC32     Shizi_Rode_Flag

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable5_3:
        DC32     Pic
//  724 
//  725 /******************************************************************
//  726  - 功能描述：计算中心黑线的平均值
//  727  - 参数说明：*process：存放中心黑线坐标值的数组名，
//  728              num：     进行统计的数据个数。
//  729  - 示例：	 
//  730  - 返回说明：返回平均值
//  731  - 修改记录：
//  732  - 注意事项：
//  733 ******************************************************************/
//  734 
//  735 
//  736 
//  737 
//  738 

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function Calculate_Blackline_Average_2
        THUMB
//  739 __ramfunc int Calculate_Blackline_Average_2(void)
//  740 {
Calculate_Blackline_Average_2:
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
//  741 register uint8 i = 0;
        MOVS     R7,#+0
//  742 register float sum = 0;
        MOVS     R4,#+0
//  743 register int16 availableCounter = 0;
        MOVS     R5,#+0
//  744 register float Average=0;        //平均中线值
        MOVS     R10,#+0
//  745 int Error_PingHua[5]={0};   //平滑搜索最近范围内连续5个极大值的情况然后进行补线
        MOV      R0,SP
        MOVS     R1,#+0
        MOVS     R2,#+20
??Calculate_Blackline_Average_2_0:
        SUBS     R2,R2,#+4
        STR      R1,[R0, R2]
        BNE.N    ??Calculate_Blackline_Average_2_0
//  746 
//  747 register int Pic_Qian_Zhan=QianZhan;
        LDR.N    R0,??DataTable6_15
        LDRB     R6,[R0, #+0]
//  748 
//  749 if(Pic_Qian_Zhan>=55)
        CMP      R6,#+55
        BLT.N    ??Calculate_Blackline_Average_2_1
//  750    Pic_Qian_Zhan=55;
        MOVS     R0,#+55
        MOVS     R6,R0
//  751 if(Pic_Qian_Zhan<=10)
??Calculate_Blackline_Average_2_1:
        CMP      R6,#+11
        BGE.N    ??Calculate_Blackline_Average_2_2
//  752    Pic_Qian_Zhan=10;
        MOVS     R0,#+10
        MOVS     R6,R0
//  753 
//  754 //求中值
//  755 //for (i=55; i>=Pic_Qian_Zhan; i--)     //QianZhan 默认25
//  756 //{ 
//  757 //     sum += (*(Search_1_Line_center+i));
//  758 //     availableCounter++;
//  759 //  
//  760 //}
//  761 //Average=sum/availableCounter;
//  762 
//  763 //离散转连续
//  764 for (i=Pic_Qian_Zhan; i>=20; i--)
??Calculate_Blackline_Average_2_2:
        MOVS     R0,R6
        MOVS     R7,R0
??Calculate_Blackline_Average_2_3:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+20
        BLT.N    ??Calculate_Blackline_Average_2_4
//  765 { 
//  766        (*(Search_1_Line_center+i))=
//  767        (*(Search_1_Line_center+i))>(*(Search_1_Line_center+i+1))+2?
//  768        (*(Search_1_Line_center+i+1))+2:
//  769        (*(Search_1_Line_center+i))<(*(Search_1_Line_center+i+1))-2?
//  770        (*(Search_1_Line_center+i+1))-2:
//  771        (*(Search_1_Line_center+i));  
        LDR.N    R0,??DataTable6
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        ADD      R0,R0,R7, LSL #+1
        LDRSH    R0,[R0, #+2]
        ADDS     R0,R0,#+2
        LDR.N    R1,??DataTable6
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDRSH    R1,[R1, R7, LSL #+1]
        CMP      R0,R1
        BGE.N    ??Calculate_Blackline_Average_2_5
        LDR.N    R0,??DataTable6
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        ADD      R0,R0,R7, LSL #+1
        LDRH     R0,[R0, #+2]
        ADDS     R0,R0,#+2
        B.N      ??Calculate_Blackline_Average_2_6
??Calculate_Blackline_Average_2_5:
        LDR.N    R0,??DataTable6
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDRSH    R0,[R0, R7, LSL #+1]
        LDR.N    R1,??DataTable6
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        ADD      R1,R1,R7, LSL #+1
        LDRSH    R1,[R1, #+2]
        SUBS     R1,R1,#+2
        CMP      R0,R1
        BGE.N    ??Calculate_Blackline_Average_2_7
        LDR.N    R0,??DataTable6
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        ADD      R0,R0,R7, LSL #+1
        LDRH     R0,[R0, #+2]
        SUBS     R0,R0,#+2
        B.N      ??Calculate_Blackline_Average_2_6
??Calculate_Blackline_Average_2_7:
        LDR.N    R0,??DataTable6
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDRSH    R0,[R0, R7, LSL #+1]
??Calculate_Blackline_Average_2_6:
        LDR.N    R1,??DataTable6
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        STRH     R0,[R1, R7, LSL #+1]
//  772 }
        SUBS     R7,R7,#+1
        B.N      ??Calculate_Blackline_Average_2_3
//  773 
//  774 sum=0;
??Calculate_Blackline_Average_2_4:
        MOVS     R0,#+0
        MOVS     R4,R0
//  775 availableCounter=0;
        MOVS     R0,#+0
        MOVS     R5,R0
//  776 
//  777 //Speed_Ang
//  778 
//  779 
//  780 float Speed_Ang_Turn=0;
        MOVS     R11,#+0
//  781 int HH=0;
        MOVS     R8,#+0
//  782 float ASD=0;
        MOVS     R9,#+0
//  783 
//  784 Speed_Ang_Turn=Speed_Ang<0?0:Speed_Ang>70?70:Speed_Ang;
        LDR.N    R0,??DataTable6_16
        LDR      R0,[R0, #+0]
        MOVS     R1,#+0
          CFI FunCall __aeabi_cfcmple
        BL       __aeabi_cfcmple
        BCS.N    ??Calculate_Blackline_Average_2_8
        MOVS     R11,#+0
        B.N      ??Calculate_Blackline_Average_2_9
??Calculate_Blackline_Average_2_8:
        LDR.N    R0,??DataTable6_16
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable6_17  ;; 0x428c0001
          CFI FunCall __aeabi_cfrcmple
        BL       __aeabi_cfrcmple
        BHI.N    ??Calculate_Blackline_Average_2_10
        LDR.W    R11,??DataTable6_18  ;; 0x428c0000
        B.N      ??Calculate_Blackline_Average_2_9
??Calculate_Blackline_Average_2_10:
        LDR.N    R0,??DataTable6_16
        LDR      R11,[R0, #+0]
//  785 
//  786 Speed_Ang_Turn*=0.12;
??Calculate_Blackline_Average_2_9:
        MOV      R0,R11
          CFI FunCall __aeabi_f2d
        BL       __aeabi_f2d
        MOVS     R2,R0
        MOVS     R3,R1
        LDR.N    R0,??DataTable6_19  ;; 0xeb851eb8
        LDR.N    R1,??DataTable6_20  ;; 0x3fbeb851
          CFI FunCall __aeabi_dmul
        BL       __aeabi_dmul
          CFI FunCall __aeabi_d2f
        BL       __aeabi_d2f
        MOV      R11,R0
//  787 
//  788 Speed_Ang_Turn=Speed_Ang_Turn>10?10:Speed_Ang_Turn<0?0:Speed_Ang_Turn;
        MOV      R0,R11
        LDR.N    R1,??DataTable6_21  ;; 0x41200001
          CFI FunCall __aeabi_cfrcmple
        BL       __aeabi_cfrcmple
        BHI.N    ??Calculate_Blackline_Average_2_11
        LDR.W    R11,??DataTable6_22  ;; 0x41200000
        B.N      ??Calculate_Blackline_Average_2_12
??Calculate_Blackline_Average_2_11:
        MOV      R0,R11
        MOVS     R1,#+0
          CFI FunCall __aeabi_cfcmple
        BL       __aeabi_cfcmple
        BCS.N    ??Calculate_Blackline_Average_2_13
        MOVS     R11,#+0
        B.N      ??Calculate_Blackline_Average_2_12
//  789 
//  790 HH=0;//((int)Speed_Ang_Turn);
??Calculate_Blackline_Average_2_13:
??Calculate_Blackline_Average_2_12:
        MOVS     R0,#+0
        MOV      R8,R0
//  791 
//  792 
//  793 for (i=50; i>=Pic_Qian_Zhan; i--)
        MOVS     R0,#+50
        MOVS     R7,R0
??Calculate_Blackline_Average_2_14:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,R6
        BLT.N    ??Calculate_Blackline_Average_2_15
//  794 { 
//  795      sum += (*(Search_1_Line_center+i));
        LDR.N    R0,??DataTable6
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDRSH    R0,[R0, R7, LSL #+1]
          CFI FunCall __aeabi_i2f
        BL       __aeabi_i2f
        MOVS     R1,R4
          CFI FunCall __aeabi_fadd
        BL       __aeabi_fadd
        MOVS     R4,R0
//  796      availableCounter++;
        ADDS     R5,R5,#+1
//  797 }
        SUBS     R7,R7,#+1
        B.N      ??Calculate_Blackline_Average_2_14
//  798 sum/=availableCounter;
??Calculate_Blackline_Average_2_15:
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        MOVS     R0,R5
          CFI FunCall __aeabi_i2f
        BL       __aeabi_i2f
        MOVS     R1,R0
        MOVS     R0,R4
          CFI FunCall __aeabi_fdiv
        BL       __aeabi_fdiv
        MOVS     R4,R0
//  799 
//  800 
//  801 
//  802 
//  803 //Search_1_Line_center[55]-=Xielu_K  ;
//  804 //Search_1_Line_center[54]=(sum/availableCounter)  ;
//  805 
//  806    return (int)(sum);
        MOVS     R0,R4
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        ADD      SP,SP,#+20
          CFI CFA R13+36
        POP      {R4-R11,PC}      ;; return
//  807 }
          CFI EndBlock cfiBlock7

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable6:
        DC32     Search_1_Line_center

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable6_1:
        DC32     `Search_1::Left_find_flag`

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable6_2:
        DC32     `Search_1::Right_find_flag`

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable6_3:
        DC32     `Search_1::Left_point`

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable6_4:
        DC32     `Search_1::Right_point`

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable6_5:
        DC32     `Search_1::How_Much_Find`

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable6_6:
        DC32     `Search_1::Search_starst`

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable6_7:
        DC32     Rode_Ring

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable6_8:
        DC32     Pic_Give

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable6_9:
        DC32     Search_1_left_center

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable6_10:
        DC32     Rode_Cross

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable6_11:
        DC32     0x3fe00000

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable6_12:
        DC32     Search_1_right_center

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable6_13:
        DC32     Line_center

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable6_14:
        DC32     0x42a00000

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable6_15:
        DC32     QianZhan

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable6_16:
        DC32     Speed_Ang

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable6_17:
        DC32     0x428c0001

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable6_18:
        DC32     0x428c0000

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable6_19:
        DC32     0xeb851eb8

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable6_20:
        DC32     0x3fbeb851

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable6_21:
        DC32     0x41200001

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable6_22:
        DC32     0x41200000

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0, 0, 0, 0, 0

        END
//  808 
//  809 
//  810 
// 
//   513 bytes in section .bss
//   248 bytes in section .data
//    20 bytes in section .rodata
//    40 bytes in section .text
// 4 134 bytes in section .textrw
// 
// 4 174 bytes of CODE  memory
//    20 bytes of CONST memory
//   761 bytes of DATA  memory
//
//Errors: none
//Warnings: 33
