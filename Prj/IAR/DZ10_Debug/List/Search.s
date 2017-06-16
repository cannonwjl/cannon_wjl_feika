///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      16/Jun/2017  18:57:10
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\@@@@@@@\Car\Drivers\Search\Search.c
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EW1A49.tmp
//        (D:\@@@@@@@\Car\Drivers\Search\Search.c -D DEBUG -D
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
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\Search.s
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

        EXTERN Pic
        EXTERN Pic_show
        EXTERN __aeabi_f2iz
        EXTERN __aeabi_fadd
        EXTERN __aeabi_fdiv
        EXTERN __aeabi_fsub
        EXTERN __aeabi_i2f

        PUBLIC Calculate_Blackline_Average
        PUBLIC Line_center
        PUBLIC Search_3_Line
        PUBLIC blackline
        PUBLIC left_center
        PUBLIC left_lost
        PUBLIC okst
        PUBLIC right_center
        PUBLIC right_lost
        PUBLIC stop_car
        PUBLIC xiuzheng
        
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
        
// D:\@@@@@@@\Car\Drivers\Search\Search.c
//    1 #include "ALL_Init.h"
//    2 #include "Search.h"
//    3 
//    4 
//    5 
//    6 
//    7 //以下全是基友号代码所需变量
//    8 
//    9 #define  processArray         Pic
//   10 #define  ROW                  60
//   11 #define  COLUMN               79  
//   12 #define  PIC_BLACK            1
//   13 #define  PIC_WHITE            0
//   14 
//   15 
//   16 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   17 float xiuzheng[ROW]={ 
xiuzheng:
        DC32 41900000H, 41940000H, 41980000H, 419C0000H, 41A00000H, 41A40000H
        DC32 41A40000H, 41AC0000H, 41B00000H, 41B40000H, 41B80000H, 41BC0000H
        DC32 41C00000H, 41C40000H, 41CC0000H, 41CC0000H, 41D40000H, 41D40000H
        DC32 41D40000H, 41DC0000H, 41E40000H, 41E40000H, 41E80000H, 41EC0000H
        DC32 41F00000H, 41F40000H, 41F80000H, 41FC0000H, 42000000H, 42020000H
        DC32 42040000H, 42060000H, 42080000H, 420A0000H, 420C0000H, 420E0000H
        DC32 420E0000H, 42120000H, 42120000H, 42160000H, 421A0000H, 421A0000H
        DC32 421E0000H, 42220000H, 42260000H, 422A0000H, 422E0000H, 42300000H
        DC32 42320000H, 42380000H, 423C0000H, 42400000H, 42440000H, 42480000H
        DC32 424C0000H, 42500000H, 42540000H, 42580000H, 425E0000H, 42620000H
//   18 18.0, 18.5, 19.0, 19.5, 20.0, 20.5, 20.5, 21.5, 22.0, 22.5,
//   19 23.0, 23.5, 24.0, 24.5, 25.5, 25.5, 26.5, 26.5, 26.5, 27.5,
//   20 28.5, 28.5, 29.0, 29.5, 30.0, 30.5, 31.0, 31.5, 32.0, 32.5,
//   21 33.0, 33.5, 34.0, 34.5, 35.0, 35.5, 35.5, 36.5, 36.5, 37.5,
//   22 38.5, 38.5, 39.5, 40.5, 41.5, 42.5, 43.5, 44.0, 44.5, 46.0,
//   23 47.0, 48.0, 49.0, 50.0, 51.0, 52.0, 53.0, 54.0, 55.5, 56.5};
//   24 
//   25 
//   26 // 150的图像宽度修正范围是20-50
//   27 //30  占1/5
//   28 //80的宽度 修正16
//   29 //16分给60行
//   30 //起始占
//   31 //算了直接给他们的拿来整体/2
//   32 
//   33 
//   34 
//   35 
//   36 /****************************************/

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   37 int16 Line_center[ROW];     // 记录黑线中心数组
Line_center:
        DS8 120

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   38 int16 right_center[ROW];
right_center:
        DS8 120

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   39 int16 left_center[ROW];
left_center:
        DS8 120

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   40 uint8 left_lost[ROW];
left_lost:
        DS8 60

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   41 uint8 right_lost[ROW];
right_lost:
        DS8 60
//   42 // 存放中心黑线坐标位置

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   43 int blackline[ROW];
blackline:
        DS8 240

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   44 int okst=0;//起跑线识别
okst:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   45 int stop_car=0;//停车标志位
stop_car:
        DS8 4
//   46 
//   47 #define MID_G 3
//   48 
//   49 /******************************************/
//   50 
//   51 
//   52 //参考基友号图像处理                      
//   53 //void Search_images(uint8 (*processArray)[COLUMN])

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function Search_3_Line
        THUMB
//   54 void Search_3_Line(void)
//   55 {
Search_3_Line:
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
//   56    int16 right,left;
//   57    int16 column,lk_flag,row_lost;
//   58    uint8 left_flag,right_flag;//左右找跳变 标志位
//   59    int16 column_i;
//   60    
//   61    //初始化参考位置,以后将会跟随
//   62    Line_center[ROW]=COLUMN/2;
        MOVS     R0,#+39
        LDR.W    R1,??DataTable1
        STRH     R0,[R1, #+120]
//   63    Line_center[ROW-1]=COLUMN/2;
        MOVS     R0,#+39
        LDR.W    R1,??DataTable1
        STRH     R0,[R1, #+118]
//   64    Line_center[ROW-5]=COLUMN/2;
        MOVS     R0,#+39
        LDR.W    R1,??DataTable1
        STRH     R0,[R1, #+110]
//   65    
//   66    left=0;
        MOVS     R0,#+0
        MOVS     R7,R0
//   67    right=COLUMN-1;   
        MOVS     R0,#+78
        MOV      R8,R0
//   68    if(Line_center[ROW]>COLUMN*0.9)//中线限值
        LDR.W    R0,??DataTable1
        LDRSH    R0,[R0, #+120]
        CMP      R0,#+72
        BLT.N    ??Search_3_Line_0
//   69       Line_center[ROW]=COLUMN*0.9;
        MOVS     R0,#+71
        LDR.W    R1,??DataTable1
        STRH     R0,[R1, #+120]
        B.N      ??Search_3_Line_1
//   70    else if(Line_center[ROW]<COLUMN*0.1)
??Search_3_Line_0:
        LDR.W    R0,??DataTable1
        LDRSH    R0,[R0, #+120]
        CMP      R0,#+8
        BGE.N    ??Search_3_Line_1
//   71       Line_center[ROW]=COLUMN*0.1;
        MOVS     R0,#+7
        LDR.W    R1,??DataTable1
        STRH     R0,[R1, #+120]
//   72    //以上进行中线限值
//   73    
//   74    for(int i=0;i<60;i++)
??Search_3_Line_1:
        MOVS     R0,#+0
??Search_3_Line_2:
        CMP      R0,#+60
        BGE.N    ??Search_3_Line_3
//   75    {
//   76      for(int j=0;j<80;j++)
        MOVS     R1,#+0
??Search_3_Line_4:
        CMP      R1,#+80
        BGE.N    ??Search_3_Line_5
//   77      Pic_show[i][j]=1;
        MOVS     R2,#+1
        LDR.W    R3,??DataTable1_1
        MOVS     R12,#+80
        MUL      R12,R12,R0
        ADD      R3,R3,R12
        STRB     R2,[R3, R1]
        ADDS     R1,R1,#+1
        B.N      ??Search_3_Line_4
//   78    }
??Search_3_Line_5:
        ADDS     R0,R0,#+1
        B.N      ??Search_3_Line_2
//   79    
//   80    
//   81    for(column = ROW-1; column >= ROW-5; column--)//5行
??Search_3_Line_3:
        MOVS     R0,#+59
        MOV      R10,R0
??Search_3_Line_6:
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        CMP      R10,#+55
        BLT.W    ??Search_3_Line_7
//   82    {
//   83      left_flag =0;
        MOVS     R0,#+0
        MOVS     R5,R0
//   84      right_flag=0;
        MOVS     R0,#+0
        MOVS     R6,R0
//   85      left=left-2; 
        SUBS     R7,R7,#+2
//   86      right=right+2;
        ADDS     R8,R8,#+2
//   87      if(left<0)
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        CMP      R7,#+0
        BPL.N    ??Search_3_Line_8
//   88      {
//   89       left=0; 
        MOVS     R0,#+0
        MOVS     R7,R0
//   90      }
//   91      if(right>COLUMN-1) 
??Search_3_Line_8:
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        CMP      R8,#+79
        BLT.N    ??Search_3_Line_9
//   92      {
//   93        right=COLUMN-1;
        MOVS     R0,#+78
        MOV      R8,R0
//   94      }
//   95      for(column_i=Line_center[column+1];column_i>left;column_i--)//中间往左
??Search_3_Line_9:
        LDR.W    R0,??DataTable1
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        ADD      R0,R0,R10, LSL #+1
        LDRSH    R0,[R0, #+2]
        MOV      R11,R0
??Search_3_Line_10:
        MOVS     R0,R7
        MOV      R1,R11
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BGE.N    ??Search_3_Line_11
//   96      {
//   97        Pic_show[column][column_i] =0;
        LDR.W    R0,??DataTable1_1
        MOVS     R1,#+80
        SMULBB   R1,R10,R1
        ADD      R0,R0,R1
        SXTH     R11,R11          ;; SignExt  R11,R11,#+16,#+16
        MOVS     R1,#+0
        STRB     R1,[R0, R11]
//   98        
//   99        if(processArray[column][column_i] == PIC_BLACK)
        LDR.W    R0,??DataTable1_2
        MOVS     R1,#+80
        SMULBB   R1,R10,R1
        ADD      R0,R0,R1
        SXTH     R11,R11          ;; SignExt  R11,R11,#+16,#+16
        LDRB     R0,[R0, R11]
        CMP      R0,#+1
        BNE.N    ??Search_3_Line_12
//  100        {
//  101           left_flag=1;
        MOVS     R0,#+1
        MOVS     R5,R0
//  102 	      left=column_i;
        MOV      R7,R11
//  103 	  break;
        B.N      ??Search_3_Line_11
//  104        }
//  105        left_flag=0;
??Search_3_Line_12:
        MOVS     R0,#+0
        MOVS     R5,R0
//  106        left=0;
        MOVS     R0,#+0
        MOVS     R7,R0
//  107      }
        SUBS     R11,R11,#+1
        B.N      ??Search_3_Line_10
//  108      for(column_i=Line_center[column+1];column_i<right;column_i++)//中间往右
??Search_3_Line_11:
        LDR.W    R0,??DataTable1
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        ADD      R0,R0,R10, LSL #+1
        LDRSH    R0,[R0, #+2]
        MOV      R11,R0
??Search_3_Line_13:
        MOV      R0,R11
        MOV      R1,R8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BGE.N    ??Search_3_Line_14
//  109      {
//  110        
//  111        Pic_show[column][column_i] =0;
        LDR.W    R0,??DataTable1_1
        MOVS     R1,#+80
        SMULBB   R1,R10,R1
        ADD      R0,R0,R1
        SXTH     R11,R11          ;; SignExt  R11,R11,#+16,#+16
        MOVS     R1,#+0
        STRB     R1,[R0, R11]
//  112        if(processArray[column][column_i] == PIC_BLACK)
        LDR.W    R0,??DataTable1_2
        MOVS     R1,#+80
        SMULBB   R1,R10,R1
        ADD      R0,R0,R1
        SXTH     R11,R11          ;; SignExt  R11,R11,#+16,#+16
        LDRB     R0,[R0, R11]
        CMP      R0,#+1
        BNE.N    ??Search_3_Line_15
//  113        {
//  114           right_flag=1;
        MOVS     R0,#+1
        MOVS     R6,R0
//  115 	      right=column_i;
        MOV      R8,R11
//  116 	  break;
        B.N      ??Search_3_Line_14
//  117        }
//  118        right_flag=0;
??Search_3_Line_15:
        MOVS     R0,#+0
        MOVS     R6,R0
//  119        right=78;
        MOVS     R0,#+78
        MOV      R8,R0
//  120      }
        ADDS     R11,R11,#+1
        B.N      ??Search_3_Line_13
//  121      
//  122      
//  123      if((right_flag+left_flag)==2)//两条黑线都找到了
??Search_3_Line_14:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTAB    R0,R5,R6
        CMP      R0,#+2
        BNE.N    ??Search_3_Line_16
//  124      {
//  125 //      if((right-left)<10) //可能检测到了起跑线
//  126 //      {
//  127 //         Line_center[column]=  Line_center[column+1]; 
//  128 //         left= Line_center[column]-COLUMN/3;
//  129 //	     right= Line_center[column]+COLUMN/3;
//  130 //         if(left<0) left=0;
//  131 //	     if(right>COLUMN-1) right=COLUMN-1;
//  132 //	     continue;//放弃这次循环
//  133 //      }
//  134 //      else
//  135       {
//  136        right_center[column]= right;
        LDR.W    R0,??DataTable1_3
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        STRH     R8,[R0, R10, LSL #+1]
//  137        left_center[column]= left;
        LDR.W    R0,??DataTable1_4
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        STRH     R7,[R0, R10, LSL #+1]
//  138        Line_center[column] = (right + left)/2; 
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        SXTAH    R0,R7,R8
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable1
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        STRH     R0,[R1, R10, LSL #+1]
//  139       }
//  140       right_lost[column] = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable1_5
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        STRB     R0,[R1, R10]
//  141       left_lost[column] = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable1_6
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        STRB     R0,[R1, R10]
        B.N      ??Search_3_Line_17
//  142      }
//  143      else if((right_flag+left_flag)==1)
??Search_3_Line_16:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTAB    R0,R5,R6
        CMP      R0,#+1
        BNE.W    ??Search_3_Line_18
//  144      {
//  145        if(left_flag==1)//左边有
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BNE.N    ??Search_3_Line_19
//  146        {
//  147          Line_center[column]  = (int16)(left +MID_G+ xiuzheng[column]/2);
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        ADDS     R0,R7,#+3
          CFI FunCall __aeabi_i2f
        BL       __aeabi_i2f
        STR      R0,[SP, #+0]
        LDR.W    R0,??DataTable1_7
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        LDR      R0,[R0, R10, LSL #+2]
        MOVS     R1,#+1073741824
          CFI FunCall __aeabi_fdiv
        BL       __aeabi_fdiv
        LDR      R1,[SP, #+0]
          CFI FunCall __aeabi_fadd
        BL       __aeabi_fadd
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable1
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        STRH     R0,[R1, R10, LSL #+1]
//  148          right_lost[column] = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable1_5
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        STRB     R0,[R1, R10]
//  149          left_lost[column] = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable1_6
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        STRB     R0,[R1, R10]
//  150          right_center[column]= 78;
        MOVS     R0,#+78
        LDR.W    R1,??DataTable1_3
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        STRH     R0,[R1, R10, LSL #+1]
//  151          left_center[column]= left;
        LDR.W    R0,??DataTable1_4
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        STRH     R7,[R0, R10, LSL #+1]
//  152          if( Line_center[column] <  Line_center[column+1] ) //是折线
        LDR.W    R0,??DataTable1
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        LDRSH    R0,[R0, R10, LSL #+1]
        LDR.W    R1,??DataTable1
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        ADD      R1,R1,R10, LSL #+1
        LDRSH    R1,[R1, #+2]
        CMP      R0,R1
        BGE.N    ??Search_3_Line_19
//  153          {
//  154          Line_center[column] = Line_center[column+1];         
        LDR.W    R0,??DataTable1
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        ADD      R0,R0,R10, LSL #+1
        LDRH     R0,[R0, #+2]
        LDR.W    R1,??DataTable1
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        STRH     R0,[R1, R10, LSL #+1]
//  155          }
//  156          
//  157        }
//  158        if(right_flag==1)//右边有
??Search_3_Line_19:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BNE.W    ??Search_3_Line_17
//  159         {
//  160          Line_center[column]  =(int16)(right -MID_G- xiuzheng[column]/2);
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        SUBS     R0,R8,#+3
          CFI FunCall __aeabi_i2f
        BL       __aeabi_i2f
        STR      R0,[SP, #+0]
        LDR.W    R0,??DataTable1_7
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        LDR      R0,[R0, R10, LSL #+2]
        MOVS     R1,#+1073741824
          CFI FunCall __aeabi_fdiv
        BL       __aeabi_fdiv
        MOVS     R1,R0
        LDR      R0,[SP, #+0]
          CFI FunCall __aeabi_fsub
        BL       __aeabi_fsub
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable1
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        STRH     R0,[R1, R10, LSL #+1]
//  161          right_lost[column] = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable1_5
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        STRB     R0,[R1, R10]
//  162          left_lost[column] = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable1_6
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        STRB     R0,[R1, R10]
//  163          right_center[column]= right;
        LDR.W    R0,??DataTable1_3
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        STRH     R8,[R0, R10, LSL #+1]
//  164          left_center[column]= 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable1_4
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        STRH     R0,[R1, R10, LSL #+1]
//  165         if( Line_center[column]  >  Line_center[column+1] ) //是折线
        LDR.W    R0,??DataTable1
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        ADD      R0,R0,R10, LSL #+1
        LDRSH    R0,[R0, #+2]
        LDR.W    R1,??DataTable1
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        LDRSH    R1,[R1, R10, LSL #+1]
        CMP      R0,R1
        BGE.N    ??Search_3_Line_17
//  166       {
//  167         Line_center[column] = Line_center[column+1];
        LDR.W    R0,??DataTable1
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        ADD      R0,R0,R10, LSL #+1
        LDRH     R0,[R0, #+2]
        LDR.W    R1,??DataTable1
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        STRH     R0,[R1, R10, LSL #+1]
        B.N      ??Search_3_Line_17
//  168        }
//  169        
//  170         }
//  171       }
//  172      else//跳变木有
//  173      {
//  174       row_lost++;
??Search_3_Line_18:
        ADDS     R9,R9,#+1
//  175       Line_center[column]=(Line_center[column+1]+40)>>2;
        LDR.W    R0,??DataTable1
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        ADD      R0,R0,R10, LSL #+1
        LDRSH    R0,[R0, #+2]
        ADDS     R0,R0,#+40
        ASRS     R0,R0,#+2
        LDR.W    R1,??DataTable1
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        STRH     R0,[R1, R10, LSL #+1]
//  176       right_center[column]= 78;
        MOVS     R0,#+78
        LDR.W    R1,??DataTable1_3
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        STRH     R0,[R1, R10, LSL #+1]
//  177       left_center[column]= 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable1_4
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        STRH     R0,[R1, R10, LSL #+1]
//  178       right_lost[column] = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable1_5
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        STRB     R0,[R1, R10]
//  179       left_lost[column] = 0;  
        MOVS     R0,#+0
        LDR.W    R1,??DataTable1_6
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        STRB     R0,[R1, R10]
//  180       
//  181       
//  182       
//  183      }
//  184     if(Line_center[column]>COLUMN-1)
??Search_3_Line_17:
        LDR.W    R0,??DataTable1
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        LDRSH    R0,[R0, R10, LSL #+1]
        CMP      R0,#+79
        BLT.N    ??Search_3_Line_20
//  185      {
//  186         Line_center[column]=COLUMN-1;;
        MOVS     R0,#+78
        LDR.W    R1,??DataTable1
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        STRH     R0,[R1, R10, LSL #+1]
        B.N      ??Search_3_Line_21
//  187       }
//  188      else if(Line_center[column]<0)
??Search_3_Line_20:
        LDR.W    R0,??DataTable1
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        LDRSH    R0,[R0, R10, LSL #+1]
        CMP      R0,#+0
        BPL.N    ??Search_3_Line_21
//  189       {
//  190        Line_center[column]=0; 
        MOVS     R0,#+0
        LDR.W    R1,??DataTable1
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        STRH     R0,[R1, R10, LSL #+1]
//  191       }
//  192       lk_flag=left_flag+right_flag;
??Search_3_Line_21:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        UXTAB    R0,R6,R5
        MOVS     R4,R0
//  193     }
        SUBS     R10,R10,#+1
        B.N      ??Search_3_Line_6
//  194    
//  195 //以上是处理最近的5行
//  196 
//  197    row_lost=0;
??Search_3_Line_7:
        MOVS     R0,#+0
        MOV      R9,R0
//  198    for(column = ROW-6; column >=0; column--) 
        MOVS     R0,#+54
        MOV      R10,R0
??Search_3_Line_22:
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        CMP      R10,#+0
        BMI.W    ??Search_3_Line_23
//  199    {
//  200        //左右标志位清空
//  201        left_flag =0;
        MOVS     R0,#+0
        MOVS     R5,R0
//  202        right_flag=0;
        MOVS     R0,#+0
        MOVS     R6,R0
//  203        
//  204        //当前的根据上次找到的状态赋值
//  205        left =(int16)(Line_center[column+1]-15);//后面的值跟距离有关!!!
        LDR.W    R0,??DataTable1
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        ADD      R0,R0,R10, LSL #+1
        LDRH     R0,[R0, #+2]
        SUBS     R0,R0,#+15
        MOVS     R7,R0
//  206        right=(int16)(Line_center[column+1]+15);//后面的值跟距离有关!!!
        LDR.W    R0,??DataTable1
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        ADD      R0,R0,R10, LSL #+1
        LDRH     R0,[R0, #+2]
        ADDS     R0,R0,#+15
        MOV      R8,R0
//  207 
//  208        //左右限值
//  209        if(left<0) 
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        CMP      R7,#+0
        BPL.N    ??Search_3_Line_24
//  210        {
//  211          left=0;
        MOVS     R0,#+0
        MOVS     R7,R0
//  212        }
//  213        if(right>COLUMN-1) 
??Search_3_Line_24:
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        CMP      R8,#+79
        BLT.N    ??Search_3_Line_25
//  214        {
//  215          right=COLUMN-1;
        MOVS     R0,#+78
        MOV      R8,R0
//  216        }
//  217 
//  218       //从上面的代码 找到Left和Right的位置
//  219 
//  220         
//  221       //从中间往左扫描
//  222 	  
//  223       for(column_i=Line_center[column+1];column_i>left;column_i--)//中间往左
??Search_3_Line_25:
        LDR.W    R0,??DataTable1
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        ADD      R0,R0,R10, LSL #+1
        LDRSH    R0,[R0, #+2]
        MOV      R11,R0
??Search_3_Line_26:
        MOVS     R0,R7
        MOV      R1,R11
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BGE.N    ??Search_3_Line_27
//  224       {
//  225         Pic_show[column][column_i] =0;
        LDR.W    R0,??DataTable1_1
        MOVS     R1,#+80
        SMULBB   R1,R10,R1
        ADD      R0,R0,R1
        SXTH     R11,R11          ;; SignExt  R11,R11,#+16,#+16
        MOVS     R1,#+0
        STRB     R1,[R0, R11]
//  226        if(processArray[column][column_i] == PIC_BLACK)
        LDR.W    R0,??DataTable1_2
        MOVS     R1,#+80
        SMULBB   R1,R10,R1
        ADD      R0,R0,R1
        SXTH     R11,R11          ;; SignExt  R11,R11,#+16,#+16
        LDRB     R0,[R0, R11]
        CMP      R0,#+1
        BNE.N    ??Search_3_Line_28
//  227        {
//  228           left_flag=1;
        MOVS     R0,#+1
        MOVS     R5,R0
//  229 	      left=column_i;
        MOV      R7,R11
//  230 	      break;
        B.N      ??Search_3_Line_27
//  231        }
//  232        left_flag=0;
??Search_3_Line_28:
        MOVS     R0,#+0
        MOVS     R5,R0
//  233        left=0;
        MOVS     R0,#+0
        MOVS     R7,R0
//  234       }
        SUBS     R11,R11,#+1
        B.N      ??Search_3_Line_26
//  235 
//  236 	  //从中间往右扫描
//  237      for(column_i=Line_center[column+1];column_i<right;column_i++)//中间往右
??Search_3_Line_27:
        LDR.W    R0,??DataTable1
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        ADD      R0,R0,R10, LSL #+1
        LDRSH    R0,[R0, #+2]
        MOV      R11,R0
??Search_3_Line_29:
        MOV      R0,R11
        MOV      R1,R8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BGE.N    ??Search_3_Line_30
//  238      {
//  239        Pic_show[column][column_i] =0;
        LDR.W    R0,??DataTable1_1
        MOVS     R1,#+80
        SMULBB   R1,R10,R1
        ADD      R0,R0,R1
        SXTH     R11,R11          ;; SignExt  R11,R11,#+16,#+16
        MOVS     R1,#+0
        STRB     R1,[R0, R11]
//  240        if(processArray[column][column_i] == PIC_BLACK)
        LDR.W    R0,??DataTable1_2
        MOVS     R1,#+80
        SMULBB   R1,R10,R1
        ADD      R0,R0,R1
        SXTH     R11,R11          ;; SignExt  R11,R11,#+16,#+16
        LDRB     R0,[R0, R11]
        CMP      R0,#+1
        BNE.N    ??Search_3_Line_31
//  241        {
//  242           right_flag=1;
        MOVS     R0,#+1
        MOVS     R6,R0
//  243 	      right=column_i;
        MOV      R8,R11
//  244 	      break;
        B.N      ??Search_3_Line_30
//  245        }
//  246        right_flag=0;
??Search_3_Line_31:
        MOVS     R0,#+0
        MOVS     R6,R0
//  247        right=78;
        MOVS     R0,#+78
        MOV      R8,R0
//  248      }
        ADDS     R11,R11,#+1
        B.N      ??Search_3_Line_29
//  249 
//  250      //根据上面扫描的情况判断(Left和Right)
//  251 
//  252      if((right_flag+left_flag)==2)//两条黑线都找到了
??Search_3_Line_30:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTAB    R0,R5,R6
        CMP      R0,#+2
        BNE.W    ??Search_3_Line_32
//  253      {
//  254 //      if((column <= 54)&&(column >= 48)&&(lk_flag ==2)&&(ABS(Line_center[column+5]-40)<10))
//  255 //       {
//  256 //        if(((right - left) < 25)&&(okst==1)) //可能是起跑线
//  257 //        {
//  258 //           stop_car =1; 
//  259 //        }
//  260 //       } 
//  261 
//  262      if((right_lost[column+1]==1)&&(left_lost[column+1] == 0))
        LDR.W    R0,??DataTable1_5
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        ADD      R0,R0,R10
        LDRB     R0,[R0, #+1]
        CMP      R0,#+1
        BNE.N    ??Search_3_Line_33
        LDR.W    R0,??DataTable1_6
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        ADD      R0,R0,R10
        LDRB     R0,[R0, #+1]
        CMP      R0,#+0
        BNE.N    ??Search_3_Line_33
//  263       {
//  264         right_center[column]= right;
        LDR.W    R0,??DataTable1_3
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        STRH     R8,[R0, R10, LSL #+1]
//  265         left_center[column]= 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable1_4
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        STRH     R0,[R1, R10, LSL #+1]
//  266         Line_center[column]  =(int16)((right) -MID_G- xiuzheng[column]/2);
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        SUBS     R0,R8,#+3
          CFI FunCall __aeabi_i2f
        BL       __aeabi_i2f
        STR      R0,[SP, #+0]
        LDR.W    R0,??DataTable1_7
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        LDR      R0,[R0, R10, LSL #+2]
        MOVS     R1,#+1073741824
          CFI FunCall __aeabi_fdiv
        BL       __aeabi_fdiv
        MOVS     R1,R0
        LDR      R0,[SP, #+0]
          CFI FunCall __aeabi_fsub
        BL       __aeabi_fsub
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable1
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        STRH     R0,[R1, R10, LSL #+1]
//  267         right_lost[column]=1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable1_5
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        STRB     R0,[R1, R10]
//  268         left_lost[column] = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable1_6
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        STRB     R0,[R1, R10]
        B.N      ??Search_3_Line_34
//  269       }
//  270 	 
//  271      else if((right_lost[column+1]==0)&&(left_lost[column+1] == 1))
??Search_3_Line_33:
        LDR.W    R0,??DataTable1_5
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        ADD      R0,R0,R10
        LDRB     R0,[R0, #+1]
        CMP      R0,#+0
        BNE.N    ??Search_3_Line_35
        LDR.W    R0,??DataTable1_6
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        ADD      R0,R0,R10
        LDRB     R0,[R0, #+1]
        CMP      R0,#+1
        BNE.N    ??Search_3_Line_35
//  272        {
//  273          right_center[column]= 78;
        MOVS     R0,#+78
        LDR.W    R1,??DataTable1_3
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        STRH     R0,[R1, R10, LSL #+1]
//  274          left_center[column]= left;
        LDR.W    R0,??DataTable1_4
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        STRH     R7,[R0, R10, LSL #+1]
//  275          Line_center[column]  =(int16)((left)+ MID_G+ xiuzheng[column]/2); 
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        ADDS     R0,R7,#+3
          CFI FunCall __aeabi_i2f
        BL       __aeabi_i2f
        STR      R0,[SP, #+0]
        LDR.W    R0,??DataTable1_7
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        LDR      R0,[R0, R10, LSL #+2]
        MOVS     R1,#+1073741824
          CFI FunCall __aeabi_fdiv
        BL       __aeabi_fdiv
        LDR      R1,[SP, #+0]
          CFI FunCall __aeabi_fadd
        BL       __aeabi_fadd
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable1
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        STRH     R0,[R1, R10, LSL #+1]
//  276          right_lost[column]=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable1_5
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        STRB     R0,[R1, R10]
//  277          left_lost[column] = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable1_6
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        STRB     R0,[R1, R10]
        B.N      ??Search_3_Line_34
//  278       }
//  279 	 
//  280       else
//  281       {
//  282          right_center[column]= right;
??Search_3_Line_35:
        LDR.N    R0,??DataTable1_3
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        STRH     R8,[R0, R10, LSL #+1]
//  283          left_center[column]= left;
        LDR.N    R0,??DataTable1_4
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        STRH     R7,[R0, R10, LSL #+1]
//  284          Line_center[column] = (right + left)/2; 
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        SXTAH    R0,R7,R8
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        LDR.N    R1,??DataTable1
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        STRH     R0,[R1, R10, LSL #+1]
//  285          right_lost[column]=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_5
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        STRB     R0,[R1, R10]
//  286          left_lost[column] = 1;          
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_6
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        STRB     R0,[R1, R10]
//  287       }
//  288 	  
//  289        lk_flag =2;
??Search_3_Line_34:
        MOVS     R0,#+2
        MOVS     R4,R0
        B.N      ??Search_3_Line_36
//  290      } 
//  291 
//  292 
//  293 
//  294      else if((right_flag+left_flag)==1)
??Search_3_Line_32:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTAB    R0,R5,R6
        CMP      R0,#+1
        BNE.W    ??Search_3_Line_37
//  295      {
//  296        if(left_flag==1)//左边有
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BNE.N    ??Search_3_Line_38
//  297        {
//  298        /*
//  299         if((column <= 54)&&(column >= 48)&&(AbS(Line_center[column+5]-40)<10)&& ((right_lost[column+1]==1)|| (right_lost[column+2]==1)||(right_lost[column+3]==1)))
//  300         {
//  301          if(((((right_center[column+1] - left) < 25)||((right_center[column+2] - left) < 25)||((right_center[column+3] - left) < 25)))&&(okst==1)) //可能是起跑线
//  302          {
//  303            stop_car =1; 
//  304          }
//  305         }
//  306         */
//  307          right_lost[column]=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_5
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        STRB     R0,[R1, R10]
//  308          left_lost[column] = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_6
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        STRB     R0,[R1, R10]
//  309          right_center[column]= 78;
        MOVS     R0,#+78
        LDR.N    R1,??DataTable1_3
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        STRH     R0,[R1, R10, LSL #+1]
//  310          left_center[column]= left;
        LDR.N    R0,??DataTable1_4
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        STRH     R7,[R0, R10, LSL #+1]
//  311          Line_center[column]  = (int16)(left +MID_G+ xiuzheng[column]/2);
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        ADDS     R0,R7,#+3
          CFI FunCall __aeabi_i2f
        BL       __aeabi_i2f
        STR      R0,[SP, #+0]
        LDR.N    R0,??DataTable1_7
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        LDR      R0,[R0, R10, LSL #+2]
        MOVS     R1,#+1073741824
          CFI FunCall __aeabi_fdiv
        BL       __aeabi_fdiv
        LDR      R1,[SP, #+0]
          CFI FunCall __aeabi_fadd
        BL       __aeabi_fadd
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        LDR.N    R1,??DataTable1
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        STRH     R0,[R1, R10, LSL #+1]
//  312          
//  313         if( Line_center[column] <  Line_center[column+1] ) //是折线
        LDR.N    R0,??DataTable1
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        LDRSH    R0,[R0, R10, LSL #+1]
        LDR.N    R1,??DataTable1
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        ADD      R1,R1,R10, LSL #+1
        LDRSH    R1,[R1, #+2]
        CMP      R0,R1
        BGE.N    ??Search_3_Line_39
//  314          {
//  315           Line_center[column]=Line_center[column+1]+(Line_center[column+2]-Line_center[column+3]);
        LDR.N    R0,??DataTable1
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        ADD      R0,R0,R10, LSL #+1
        LDRH     R1,[R0, #+2]
        LDR.N    R0,??DataTable1
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        ADD      R0,R0,R10, LSL #+1
        LDRH     R0,[R0, #+4]
        ADDS     R1,R0,R1
        LDR.N    R0,??DataTable1
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        ADD      R0,R0,R10, LSL #+1
        LDRH     R0,[R0, #+6]
        SUBS     R1,R1,R0
        LDR.N    R0,??DataTable1
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        STRH     R1,[R0, R10, LSL #+1]
//  316          }
//  317         
//  318         if(lk_flag==2)//上一次是两边都有的!!!
??Search_3_Line_39:
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        CMP      R4,#+2
        BNE.N    ??Search_3_Line_40
//  319 	   	 {
//  320 	   	 Line_center[column+1]=Line_center[column];
        LDR.N    R0,??DataTable1
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        LDRH     R0,[R0, R10, LSL #+1]
        LDR.N    R1,??DataTable1
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        ADD      R1,R1,R10, LSL #+1
        STRH     R0,[R1, #+2]
//  321 	   	 Line_center[column+2]=Line_center[column];
        LDR.N    R0,??DataTable1
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        LDRH     R0,[R0, R10, LSL #+1]
        LDR.N    R1,??DataTable1
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        ADD      R1,R1,R10, LSL #+1
        STRH     R0,[R1, #+4]
//  322 	   	 }
//  323          
//  324 	     lk_flag=1;
??Search_3_Line_40:
        MOVS     R0,#+1
        MOVS     R4,R0
//  325        }
//  326        
//  327 	   
//  328        if(right_flag==1)//左边有
??Search_3_Line_38:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BNE.W    ??Search_3_Line_36
//  329         {
//  330         /*
//  331          if((column <= 54)&&(column >= 48)&&(Abs_Int16(Line_center[column+5],74)<20)&& ((left_lost[column+1]==1)|| (left_lost[column+2]==1)||(left_lost[column+3]==1)))
//  332         {
//  333          if(((((right- left_center[column+1]) < 25)||((right - left_center[column+2]) < 25)||((right - left_center[column+3]) < 25)))&&(okst==1)) //可能是起跑线
//  334          {
//  335            stop_car =1; 
//  336          }
//  337         }
//  338         */
//  339 		 
//  340          right_lost[column]=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_5
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        STRB     R0,[R1, R10]
//  341          left_lost[column] = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_6
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        STRB     R0,[R1, R10]
//  342          right_center[column]= right;
        LDR.N    R0,??DataTable1_3
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        STRH     R8,[R0, R10, LSL #+1]
//  343          left_center[column]= 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_4
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        STRH     R0,[R1, R10, LSL #+1]
//  344          Line_center[column]  =(int16)(right -MID_G- xiuzheng[column]/2);      
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        SUBS     R0,R8,#+3
          CFI FunCall __aeabi_i2f
        BL       __aeabi_i2f
        STR      R0,[SP, #+0]
        LDR.N    R0,??DataTable1_7
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        LDR      R0,[R0, R10, LSL #+2]
        MOVS     R1,#+1073741824
          CFI FunCall __aeabi_fdiv
        BL       __aeabi_fdiv
        MOVS     R1,R0
        LDR      R0,[SP, #+0]
          CFI FunCall __aeabi_fsub
        BL       __aeabi_fsub
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        LDR.N    R1,??DataTable1
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        STRH     R0,[R1, R10, LSL #+1]
//  345        if(Line_center[column]  >  Line_center[column+1] ) //是折线
        LDR.N    R0,??DataTable1
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        ADD      R0,R0,R10, LSL #+1
        LDRSH    R0,[R0, #+2]
        LDR.N    R1,??DataTable1
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        LDRSH    R1,[R1, R10, LSL #+1]
        CMP      R0,R1
        BGE.N    ??Search_3_Line_41
//  346         {
//  347         Line_center[column]=Line_center[column+1]+(Line_center[column+2]-Line_center[column+3]);
        LDR.N    R0,??DataTable1
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        ADD      R0,R0,R10, LSL #+1
        LDRH     R1,[R0, #+2]
        LDR.N    R0,??DataTable1
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        ADD      R0,R0,R10, LSL #+1
        LDRH     R0,[R0, #+4]
        ADDS     R1,R0,R1
        LDR.N    R0,??DataTable1
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        ADD      R0,R0,R10, LSL #+1
        LDRH     R0,[R0, #+6]
        SUBS     R1,R1,R0
        LDR.N    R0,??DataTable1
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        STRH     R1,[R0, R10, LSL #+1]
//  348         }        
//  349      
//  350           if(lk_flag==2)//上一次是两边都有的!!!
??Search_3_Line_41:
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        CMP      R4,#+2
        BNE.N    ??Search_3_Line_42
//  351 	  {
//  352 	  Line_center[column+1]=Line_center[column];
        LDR.N    R0,??DataTable1
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        LDRH     R0,[R0, R10, LSL #+1]
        LDR.N    R1,??DataTable1
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        ADD      R1,R1,R10, LSL #+1
        STRH     R0,[R1, #+2]
//  353 	  Line_center[column+2]=Line_center[column];
        LDR.N    R0,??DataTable1
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        LDRH     R0,[R0, R10, LSL #+1]
        LDR.N    R1,??DataTable1
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        ADD      R1,R1,R10, LSL #+1
        STRH     R0,[R1, #+4]
//  354 	  }
//  355           
//  356 	  lk_flag=1;
??Search_3_Line_42:
        MOVS     R0,#+1
        MOVS     R4,R0
        B.N      ??Search_3_Line_36
//  357          }
//  358       }
//  359 
//  360 	 
//  361       else
//  362       {
//  363        right_lost[column]=0;
??Search_3_Line_37:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_5
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        STRB     R0,[R1, R10]
//  364        left_lost[column] = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_6
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        STRB     R0,[R1, R10]
//  365        right_center[column]= 78;
        MOVS     R0,#+78
        LDR.N    R1,??DataTable1_3
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        STRH     R0,[R1, R10, LSL #+1]
//  366        left_center[column]= 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_4
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        STRH     R0,[R1, R10, LSL #+1]
//  367        Line_center[column]=Line_center[column+1]+((Line_center[column+1]-Line_center[column+2])+(Line_center[column+2]-Line_center[column+3]))/2;
        LDR.N    R0,??DataTable1
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        ADD      R0,R0,R10, LSL #+1
        LDRH     R1,[R0, #+2]
        LDR.N    R0,??DataTable1
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        ADD      R0,R0,R10, LSL #+1
        LDRSH    R2,[R0, #+2]
        LDR.N    R0,??DataTable1
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        ADD      R0,R0,R10, LSL #+1
        LDRSH    R0,[R0, #+4]
        SUBS     R2,R2,R0
        LDR.N    R0,??DataTable1
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        ADD      R0,R0,R10, LSL #+1
        LDRSH    R0,[R0, #+4]
        SXTAH    R2,R2,R0
        LDR.N    R0,??DataTable1
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        ADD      R0,R0,R10, LSL #+1
        LDRSH    R0,[R0, #+6]
        SUBS     R2,R2,R0
        MOVS     R0,#+2
        SDIV     R0,R2,R0
        ADDS     R1,R0,R1
        LDR.N    R0,??DataTable1
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        STRH     R1,[R0, R10, LSL #+1]
//  368        lk_flag=0; 
        MOVS     R0,#+0
        MOVS     R4,R0
//  369       }
//  370 
//  371 
//  372 	  //左右限值
//  373       if(Line_center[column]>COLUMN-1)
??Search_3_Line_36:
        LDR.N    R0,??DataTable1
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        LDRSH    R0,[R0, R10, LSL #+1]
        CMP      R0,#+79
        BLT.N    ??Search_3_Line_43
//  374        {
//  375         Line_center[column]=COLUMN-1;
        MOVS     R0,#+78
        LDR.N    R1,??DataTable1
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        STRH     R0,[R1, R10, LSL #+1]
        B.N      ??Search_3_Line_44
//  376        }
//  377       else if(Line_center[column]<0)
??Search_3_Line_43:
        LDR.N    R0,??DataTable1
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        LDRSH    R0,[R0, R10, LSL #+1]
        CMP      R0,#+0
        BPL.N    ??Search_3_Line_44
//  378        {
//  379        Line_center[column]=0; 
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1
        SXTH     R10,R10          ;; SignExt  R10,R10,#+16,#+16
        STRH     R0,[R1, R10, LSL #+1]
//  380        }
//  381      }
??Search_3_Line_44:
        SUBS     R10,R10,#+1
        B.N      ??Search_3_Line_22
//  382    
//  383 }
??Search_3_Line_23:
        POP      {R0,R4-R11,PC}   ;; return
          CFI EndBlock cfiBlock0
//  384 
//  385 /******************************************************************
//  386  - 功能描述：计算中心黑线的平均值
//  387  - 参数说明：*process：存放中心黑线坐标值的数组名，
//  388              num：     进行统计的数据个数。
//  389  - 示例：	 
//  390  - 返回说明：返回平均值
//  391  - 修改记录：
//  392  - 注意事项：
//  393 ******************************************************************/
//  394 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function Calculate_Blackline_Average
          CFI NoCalls
        THUMB
//  395 int Calculate_Blackline_Average(void)
//  396 {
Calculate_Blackline_Average:
        PUSH     {R4}
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+4
//  397 uint8 i = 0;
        MOVS     R1,#+0
//  398 int16 sum = 0;
        MOVS     R2,#+0
//  399 int16 availableCounter = 0;
        MOVS     R3,#+0
//  400 int Average=0;        //平均中线值
        MOVS     R4,#+0
//  401 
//  402 
//  403 
//  404 for (i=53; i>35; i--)
        MOVS     R0,#+53
        MOVS     R1,R0
??Calculate_Blackline_Average_0:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+36
        BLT.N    ??Calculate_Blackline_Average_1
//  405 { 
//  406      sum += (*(Line_center+i));
        LDR.N    R0,??DataTable1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDRH     R0,[R0, R1, LSL #+1]
        ADDS     R2,R0,R2
//  407      availableCounter++;
        ADDS     R3,R3,#+1
//  408 }
        SUBS     R1,R1,#+1
        B.N      ??Calculate_Blackline_Average_0
//  409 Average=sum/availableCounter;
??Calculate_Blackline_Average_1:
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        SDIV     R0,R2,R3
        MOVS     R4,R0
//  410   /*
//  411 for (i=50; i>0; i--)
//  412 { 
//  413      //*(Line_center+i)=(Average+*(Line_center+i))>>2;
//  414      
//  415      if(*(Line_center+i)>(*(Line_center+i+1)) +1)
//  416      {
//  417         *(Line_center+i)   = *(Line_center+i+1)+1;
//  418      }
//  419      if(*(Line_center+i)<(*(Line_center+i+1)) -1)
//  420      {
//  421      
//  422         *(Line_center+i)   = *(Line_center+i+1)-1;
//  423      }
//  424      //availableCounter++;
//  425 }
//  426 
//  427 availableCounter=0;
//  428 sum=0;
//  429 for (i=50; i>30; i--)
//  430 { 
//  431      sum += (*(Line_center+i));
//  432      availableCounter++;
//  433 }
//  434 
//  435       */
//  436    return (sum/availableCounter);
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        SDIV     R0,R2,R3
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
//  437 }
          CFI EndBlock cfiBlock1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     Line_center

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     Pic_show

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     Pic

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     right_center

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DC32     left_center

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_5:
        DC32     right_lost

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_6:
        DC32     left_lost

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_7:
        DC32     xiuzheng

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  438 
//  439 
//  440 
//  441 
//  442 
// 
//   728 bytes in section .bss
//   240 bytes in section .data
// 2 434 bytes in section .text
// 
// 2 434 bytes of CODE memory
//   968 bytes of DATA memory
//
//Errors: none
//Warnings: 9
