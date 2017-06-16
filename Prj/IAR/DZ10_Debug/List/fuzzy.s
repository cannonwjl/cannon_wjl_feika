///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      16/Jun/2017  18:57:07
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\@@@@@@@\Car\Drivers\Fuzzy\fuzzy.c
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EWE5A.tmp
//        (D:\@@@@@@@\Car\Drivers\Fuzzy\fuzzy.c -D DEBUG -D
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
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\fuzzy.s
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

        EXTERN __aeabi_cfcmple
        EXTERN __aeabi_cfrcmple
        EXTERN __aeabi_fadd
        EXTERN __aeabi_fdiv
        EXTERN __aeabi_fmul
        EXTERN __aeabi_fsub

        PUBLIC Fuzzy
        
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
        
// D:\@@@@@@@\Car\Drivers\Fuzzy\fuzzy.c
//    1 #include "All_Init.h"
//    2 
//    3 

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function Fuzzy
        THUMB
//    4 __ramfunc float Fuzzy(float P,float D)
//    5 {
Fuzzy:
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
        SUB      SP,SP,#+284
          CFI CFA R13+320
        MOVS     R4,R0
        MOVS     R5,R1
//    6 /*输入量P语言值特征点*/ 
//    7 float PFF[7]={-24,-12,-6,0,6,12,24};
        ADD      R0,SP,#+84
        LDR.W    R1,??Fuzzy_0
        MOVS     R3,#+28
??Fuzzy_1:
        SUBS     R3,R3,#+4
        LDR      R2,[R1, R3]
        STR      R2,[R0, R3]
        BNE.N    ??Fuzzy_1
//    8 /*输入量D语言值特征点*/ 
//    9 float DFF[5]={-6.5,-3,0,3,6.5};
        ADD      R0,SP,#+64
        LDR.W    R1,??Fuzzy_0+0x4
        MOVS     R3,#+20
??Fuzzy_2:
        SUBS     R3,R3,#+4
        LDR      R2,[R1, R3]
        STR      R2,[R0, R3]
        BNE.N    ??Fuzzy_2
//   10 /*输出量U语言值特征点(根据赛道类型选择不同的输出值)*/
//   11 float UFF[7]={0,15,20,35,50,80,120};
        ADD      R0,SP,#+112
        LDR.W    R1,??Fuzzy_0+0x8
        MOVS     R3,#+28
??Fuzzy_3:
        SUBS     R3,R3,#+4
        LDR      R2,[R1, R3]
        STR      R2,[R0, R3]
        BNE.N    ??Fuzzy_3
//   12 
//   13 int rule[7][5]={
//   14 //  -2  -1   0   1   2 ec    e
//   15   { 1,  1,  1,  0,  0}, //  -3
//   16   { 4,  2,  1,  0,  0}, //  -2
//   17   { 6,  4,  1,  1,  0}, //  -1
//   18   { 3,  3,  0,  3,  3}, //   0
//   19   { 0,  1,  1,  4,  6}, //   1
//   20   { 0,  0,  1,  2,  4}, //   2
//   21   { 0,  0,  1,  1,  1}  //   3
//   22 };
        ADD      R0,SP,#+140
        LDR.W    R1,??Fuzzy_0+0xC
        MOVS     R3,#+140
??Fuzzy_4:
        SUBS     R3,R3,#+4
        LDR      R2,[R1, R3]
        STR      R2,[R0, R3]
        BNE.N    ??Fuzzy_4
//   23 
//   24 
//   25 float U=0;  /*偏差,偏差微分以及输出值的精确量*/ 
        MOVS     R6,#+0
//   26 float PF[2]={0},DF[2]={0},UF[4]={0};
        ADD      R0,SP,#+20
        MOVS     R1,#+0
        MOVS     R2,#+0
        STRD     R1,R2,[R0, #+0]
        ADD      R0,SP,#+28
        MOVS     R1,#+0
        MOVS     R2,#+0
        STRD     R1,R2,[R0, #+0]
        ADD      R0,SP,#+4
        MOVS     R1,#+0
        MOVS     R2,#+16
??Fuzzy_5:
        SUBS     R2,R2,#+4
        STR      R1,[R0, R2]
        BNE.N    ??Fuzzy_5
//   27  /*偏差,偏差微分以及输出值的隶属度*/ 
//   28 int Pn=0,Dn=0,Un[4]={0};
        MOVS     R7,#+0
        MOVS     R8,#+0
        ADD      R0,SP,#+36
        MOVS     R1,#+0
        MOVS     R2,#+16
??Fuzzy_6:
        SUBS     R2,R2,#+4
        STR      R1,[R0, R2]
        BNE.N    ??Fuzzy_6
//   29 float t1=0,t2=0,t3=0,t4=0,temp1=0,temp2=0;
        MOVS     R0,#+0
        STR      R0,[SP, #+60]
        MOVS     R0,#+0
        STR      R0,[SP, #+56]
        MOVS     R0,#+0
        STR      R0,[SP, #+52]
        MOVS     R9,#+0
        MOVS     R10,#+0
        MOVS     R11,#+0
//   30 /*隶属度的确定*/ 
//   31 /*根据PD的指定语言值获得有效隶属度*/ 
//   32  if(P>PFF[0] && P<PFF[6])
        LDR      R0,[SP, #+84]
        MOVS     R1,R4
          CFI FunCall __aeabi_cfcmple
        BL       __aeabi_cfcmple
        BCS.W    ??Fuzzy_7
        MOVS     R0,R4
        LDR      R1,[SP, #+108]
          CFI FunCall __aeabi_cfcmple
        BL       __aeabi_cfcmple
        BCS.W    ??Fuzzy_7
//   33 {
//   34  if(P<=PFF[1])
        LDR      R0,[SP, #+88]
        MOVS     R1,R4
          CFI FunCall __aeabi_cfrcmple
        BL       __aeabi_cfrcmple
        BHI.N    ??Fuzzy_8
//   35  {
//   36   Pn=-2;
        MVNS     R0,#+1
        MOVS     R7,R0
//   37   PF[0]=(PFF[1]-P)/(PFF[1]-PFF[0]);
        LDR      R0,[SP, #+88]
        MOVS     R1,R4
          CFI FunCall __aeabi_fsub
        BL       __aeabi_fsub
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+88]
        LDR      R1,[SP, #+84]
          CFI FunCall __aeabi_fsub
        BL       __aeabi_fsub
        MOVS     R1,R0
        LDR      R0,[SP, #+0]
          CFI FunCall __aeabi_fdiv
        BL       __aeabi_fdiv
        STR      R0,[SP, #+20]
        B.N      ??Fuzzy_9
//   38  }
//   39  else if(P<=PFF[2])
??Fuzzy_8:
        LDR      R0,[SP, #+92]
        MOVS     R1,R4
          CFI FunCall __aeabi_cfrcmple
        BL       __aeabi_cfrcmple
        BHI.N    ??Fuzzy_10
//   40  {
//   41   Pn=-1;
        MOVS     R0,#-1
        MOVS     R7,R0
//   42   PF[0]=(PFF[2]-P)/(PFF[2]-PFF[1]);
        LDR      R0,[SP, #+92]
        MOVS     R1,R4
          CFI FunCall __aeabi_fsub
        BL       __aeabi_fsub
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+92]
        LDR      R1,[SP, #+88]
          CFI FunCall __aeabi_fsub
        BL       __aeabi_fsub
        MOVS     R1,R0
        LDR      R0,[SP, #+0]
          CFI FunCall __aeabi_fdiv
        BL       __aeabi_fdiv
        STR      R0,[SP, #+20]
        B.N      ??Fuzzy_9
//   43  }
//   44  else if(P<=PFF[3])
??Fuzzy_10:
        LDR      R0,[SP, #+96]
        MOVS     R1,R4
          CFI FunCall __aeabi_cfrcmple
        BL       __aeabi_cfrcmple
        BHI.N    ??Fuzzy_11
//   45  {
//   46   Pn=0;
        MOVS     R0,#+0
        MOVS     R7,R0
//   47   PF[0]=(PFF[3]-P)/(PFF[3]-PFF[2]);
        LDR      R0,[SP, #+96]
        MOVS     R1,R4
          CFI FunCall __aeabi_fsub
        BL       __aeabi_fsub
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+96]
        LDR      R1,[SP, #+92]
          CFI FunCall __aeabi_fsub
        BL       __aeabi_fsub
        MOVS     R1,R0
        LDR      R0,[SP, #+0]
          CFI FunCall __aeabi_fdiv
        BL       __aeabi_fdiv
        STR      R0,[SP, #+20]
        B.N      ??Fuzzy_9
//   48  }
//   49  else if(P<=PFF[4])
??Fuzzy_11:
        LDR      R0,[SP, #+100]
        MOVS     R1,R4
          CFI FunCall __aeabi_cfrcmple
        BL       __aeabi_cfrcmple
        BHI.N    ??Fuzzy_12
//   50  {
//   51   Pn=1;
        MOVS     R0,#+1
        MOVS     R7,R0
//   52   PF[0]=(PFF[4]-P)/(PFF[4]-PFF[3]);
        LDR      R0,[SP, #+100]
        MOVS     R1,R4
          CFI FunCall __aeabi_fsub
        BL       __aeabi_fsub
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+100]
        LDR      R1,[SP, #+96]
          CFI FunCall __aeabi_fsub
        BL       __aeabi_fsub
        MOVS     R1,R0
        LDR      R0,[SP, #+0]
          CFI FunCall __aeabi_fdiv
        BL       __aeabi_fdiv
        STR      R0,[SP, #+20]
        B.N      ??Fuzzy_9
//   53  }
//   54  else if(P<=PFF[5])
??Fuzzy_12:
        LDR      R0,[SP, #+104]
        MOVS     R1,R4
          CFI FunCall __aeabi_cfrcmple
        BL       __aeabi_cfrcmple
        BHI.N    ??Fuzzy_13
//   55  {
//   56   Pn=2;
        MOVS     R0,#+2
        MOVS     R7,R0
//   57   PF[0]=(PFF[5]-P)/(PFF[5]-PFF[4]);
        LDR      R0,[SP, #+104]
        MOVS     R1,R4
          CFI FunCall __aeabi_fsub
        BL       __aeabi_fsub
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+104]
        LDR      R1,[SP, #+100]
          CFI FunCall __aeabi_fsub
        BL       __aeabi_fsub
        MOVS     R1,R0
        LDR      R0,[SP, #+0]
          CFI FunCall __aeabi_fdiv
        BL       __aeabi_fdiv
        STR      R0,[SP, #+20]
        B.N      ??Fuzzy_9
//   58  }
//   59  else if(P<=PFF[6])
??Fuzzy_13:
        LDR      R0,[SP, #+108]
        MOVS     R1,R4
          CFI FunCall __aeabi_cfrcmple
        BL       __aeabi_cfrcmple
        BHI.N    ??Fuzzy_9
//   60  {
//   61   Pn=3;
        MOVS     R0,#+3
        MOVS     R7,R0
//   62   PF[0]=(PFF[6]-P)/(PFF[6]-PFF[5]);
        LDR      R0,[SP, #+108]
        MOVS     R1,R4
          CFI FunCall __aeabi_fsub
        BL       __aeabi_fsub
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+108]
        LDR      R1,[SP, #+104]
          CFI FunCall __aeabi_fsub
        BL       __aeabi_fsub
        MOVS     R1,R0
        LDR      R0,[SP, #+0]
          CFI FunCall __aeabi_fdiv
        BL       __aeabi_fdiv
        STR      R0,[SP, #+20]
        B.N      ??Fuzzy_9
//   63  }
//   64 }
//   65  
//   66  else if(P<=PFF[0])
??Fuzzy_7:
        LDR      R0,[SP, #+84]
        MOVS     R1,R4
          CFI FunCall __aeabi_cfrcmple
        BL       __aeabi_cfrcmple
        BHI.N    ??Fuzzy_14
//   67  {
//   68   Pn=-2;
        MVNS     R0,#+1
        MOVS     R7,R0
//   69   PF[0]=1;
        MOVS     R0,#+1065353216
        STR      R0,[SP, #+20]
        B.N      ??Fuzzy_9
//   70  }
//   71  else if(P>=PFF[6])
??Fuzzy_14:
        MOVS     R0,R4
        LDR      R1,[SP, #+108]
          CFI FunCall __aeabi_cfrcmple
        BL       __aeabi_cfrcmple
        BHI.N    ??Fuzzy_9
//   72  {
//   73   Pn=3;
        MOVS     R0,#+3
        MOVS     R7,R0
//   74   PF[0]=0;
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//   75  }
//   76 
//   77 PF[1]=1-PF[0];
??Fuzzy_9:
        MOVS     R0,#+1065353216
        LDR      R1,[SP, #+20]
          CFI FunCall __aeabi_fsub
        BL       __aeabi_fsub
        STR      R0,[SP, #+24]
//   78 
//   79 
//   80 //判断D的隶属度
//   81  if(D>DFF[0]&&D<DFF[4])
        LDR      R0,[SP, #+64]
        MOVS     R1,R5
          CFI FunCall __aeabi_cfcmple
        BL       __aeabi_cfcmple
        BCS.N    ??Fuzzy_15
        MOVS     R0,R5
        LDR      R1,[SP, #+80]
          CFI FunCall __aeabi_cfcmple
        BL       __aeabi_cfcmple
        BCS.N    ??Fuzzy_15
//   82  {
//   83   if(D<=DFF[1])
        LDR      R0,[SP, #+68]
        MOVS     R1,R5
          CFI FunCall __aeabi_cfrcmple
        BL       __aeabi_cfrcmple
        BHI.N    ??Fuzzy_16
//   84   {
//   85    Dn=-2;
        MVNS     R0,#+1
        MOV      R8,R0
//   86    DF[0]=(DFF[1]-D)/(DFF[1]-DFF[0]);
        LDR      R0,[SP, #+68]
        MOVS     R1,R5
          CFI FunCall __aeabi_fsub
        BL       __aeabi_fsub
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+68]
        LDR      R1,[SP, #+64]
          CFI FunCall __aeabi_fsub
        BL       __aeabi_fsub
        MOVS     R1,R0
        LDR      R0,[SP, #+0]
          CFI FunCall __aeabi_fdiv
        BL       __aeabi_fdiv
        STR      R0,[SP, #+28]
        B.N      ??Fuzzy_17
//   87   }
//   88  else if(D<=DFF[2])
??Fuzzy_16:
        LDR      R0,[SP, #+72]
        MOVS     R1,R5
          CFI FunCall __aeabi_cfrcmple
        BL       __aeabi_cfrcmple
        BHI.N    ??Fuzzy_18
//   89  {
//   90   Dn=-1;
        MOVS     R0,#-1
        MOV      R8,R0
//   91   DF[0]=(DFF[2]-D)/(DFF[2]-DFF[1]);
        LDR      R0,[SP, #+72]
        MOVS     R1,R5
          CFI FunCall __aeabi_fsub
        BL       __aeabi_fsub
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+72]
        LDR      R1,[SP, #+68]
          CFI FunCall __aeabi_fsub
        BL       __aeabi_fsub
        MOVS     R1,R0
        LDR      R0,[SP, #+0]
          CFI FunCall __aeabi_fdiv
        BL       __aeabi_fdiv
        STR      R0,[SP, #+28]
        B.N      ??Fuzzy_17
//   92   }
//   93  else if(D<=DFF[3])
??Fuzzy_18:
        LDR      R0,[SP, #+76]
        MOVS     R1,R5
          CFI FunCall __aeabi_cfrcmple
        BL       __aeabi_cfrcmple
        BHI.N    ??Fuzzy_19
//   94  {
//   95   Dn=0;
        MOVS     R0,#+0
        MOV      R8,R0
//   96   DF[0]=(DFF[3]-D)/(DFF[3]-DFF[2]);
        LDR      R0,[SP, #+76]
        MOVS     R1,R5
          CFI FunCall __aeabi_fsub
        BL       __aeabi_fsub
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+76]
        LDR      R1,[SP, #+72]
          CFI FunCall __aeabi_fsub
        BL       __aeabi_fsub
        MOVS     R1,R0
        LDR      R0,[SP, #+0]
          CFI FunCall __aeabi_fdiv
        BL       __aeabi_fdiv
        STR      R0,[SP, #+28]
        B.N      ??Fuzzy_17
//   97   }
//   98  else if(D<=DFF[4])
??Fuzzy_19:
        LDR      R0,[SP, #+80]
        MOVS     R1,R5
          CFI FunCall __aeabi_cfrcmple
        BL       __aeabi_cfrcmple
        BHI.N    ??Fuzzy_17
//   99  {
//  100   Dn=1;
        MOVS     R0,#+1
        MOV      R8,R0
//  101   DF[0]=(DFF[4]-D)/(DFF[4]-DFF[3]);
        LDR      R0,[SP, #+80]
        MOVS     R1,R5
          CFI FunCall __aeabi_fsub
        BL       __aeabi_fsub
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+80]
        LDR      R1,[SP, #+76]
          CFI FunCall __aeabi_fsub
        BL       __aeabi_fsub
        MOVS     R1,R0
        LDR      R0,[SP, #+0]
          CFI FunCall __aeabi_fdiv
        BL       __aeabi_fdiv
        STR      R0,[SP, #+28]
        B.N      ??Fuzzy_17
//  102  }
//  103  }
//  104  //不在给定的区间内
//  105  else if (D<=DFF[0])
??Fuzzy_15:
        LDR      R0,[SP, #+64]
        MOVS     R1,R5
          CFI FunCall __aeabi_cfrcmple
        BL       __aeabi_cfrcmple
        BHI.N    ??Fuzzy_20
//  106  {
//  107   Dn=-2;
        MVNS     R0,#+1
        MOV      R8,R0
//  108   DF[0]=1;
        MOVS     R0,#+1065353216
        STR      R0,[SP, #+28]
        B.N      ??Fuzzy_17
//  109  }
//  110  else if(D>=DFF[4])
??Fuzzy_20:
        MOVS     R0,R5
        LDR      R1,[SP, #+80]
          CFI FunCall __aeabi_cfrcmple
        BL       __aeabi_cfrcmple
        BHI.N    ??Fuzzy_17
//  111  {
//  112   Dn=1;
        MOVS     R0,#+1
        MOV      R8,R0
//  113   DF[0]=0;
        MOVS     R0,#+0
        STR      R0,[SP, #+28]
//  114  }
//  115 
//  116 DF[1]=1-DF[0];
??Fuzzy_17:
        MOVS     R0,#+1065353216
        LDR      R1,[SP, #+28]
          CFI FunCall __aeabi_fsub
        BL       __aeabi_fsub
        STR      R0,[SP, #+32]
//  117 
//  118  /*使用误差范围优化后的规则表rule[7][7]*/ 
//  119  /*输出值使用13个隶属函数,中心值由UFF[7]指定*/ 
//  120  /*一般都是四个规则有效*/ 
//  121 Un[0]=rule[Pn-1+3][Dn-1+3]; 
        ADD      R0,SP,#+140
        MOVS     R1,#+20
        MUL      R1,R1,R7
        ADD      R0,R0,R1
        ADD      R0,R0,R8, LSL #+2
        LDR      R0,[R0, #+48]
        STR      R0,[SP, #+36]
//  122 Un[1]=rule[Pn+3][Dn-1+3]; 
        ADD      R0,SP,#+140
        MOVS     R1,#+20
        MUL      R1,R1,R7
        ADD      R0,R0,R1
        ADD      R0,R0,R8, LSL #+2
        LDR      R0,[R0, #+68]
        STR      R0,[SP, #+40]
//  123 Un[2]=rule[Pn-1+3][Dn+3]; 
        ADD      R0,SP,#+140
        MOVS     R1,#+20
        MUL      R1,R1,R7
        ADD      R0,R0,R1
        ADD      R0,R0,R8, LSL #+2
        LDR      R0,[R0, #+52]
        STR      R0,[SP, #+44]
//  124 Un[3]=rule[Pn+3][Dn+3]; 
        ADD      R0,SP,#+140
        MOVS     R1,#+20
        MUL      R1,R1,R7
        ADD      R0,R0,R1
        ADD      R0,R0,R8, LSL #+2
        LDR      R0,[R0, #+72]
        STR      R0,[SP, #+48]
//  125  
//  126  if(PF[0]<=DF[0])    //求小   
        LDR      R0,[SP, #+28]
        LDR      R1,[SP, #+20]
          CFI FunCall __aeabi_cfrcmple
        BL       __aeabi_cfrcmple
        BHI.N    ??Fuzzy_21
//  127   UF[0]=PF[0];
        LDR      R0,[SP, #+20]
        STR      R0,[SP, #+4]
        B.N      ??Fuzzy_22
//  128  else
//  129   UF[0]=DF[0];
??Fuzzy_21:
        LDR      R0,[SP, #+28]
        STR      R0,[SP, #+4]
//  130  if(PF[1]<=DF[0])
??Fuzzy_22:
        LDR      R0,[SP, #+28]
        LDR      R1,[SP, #+24]
          CFI FunCall __aeabi_cfrcmple
        BL       __aeabi_cfrcmple
        BHI.N    ??Fuzzy_23
//  131   UF[1]=PF[1];
        LDR      R0,[SP, #+24]
        STR      R0,[SP, #+8]
        B.N      ??Fuzzy_24
//  132  else
//  133   UF[1]=DF[0];
??Fuzzy_23:
        LDR      R0,[SP, #+28]
        STR      R0,[SP, #+8]
//  134  if(PF[0]<=DF[1])
??Fuzzy_24:
        LDR      R0,[SP, #+32]
        LDR      R1,[SP, #+20]
          CFI FunCall __aeabi_cfrcmple
        BL       __aeabi_cfrcmple
        BHI.N    ??Fuzzy_25
//  135   UF[2]=PF[0];
        LDR      R0,[SP, #+20]
        STR      R0,[SP, #+12]
        B.N      ??Fuzzy_26
//  136  else
//  137   UF[2]=DF[1];
??Fuzzy_25:
        LDR      R0,[SP, #+32]
        STR      R0,[SP, #+12]
//  138  if(PF[1]<=DF[1])
??Fuzzy_26:
        LDR      R0,[SP, #+32]
        LDR      R1,[SP, #+24]
          CFI FunCall __aeabi_cfrcmple
        BL       __aeabi_cfrcmple
        BHI.N    ??Fuzzy_27
//  139   UF[3]=PF[1];
        LDR      R0,[SP, #+24]
        STR      R0,[SP, #+16]
        B.N      ??Fuzzy_28
//  140  else
//  141   UF[3]=DF[1];
??Fuzzy_27:
        LDR      R0,[SP, #+32]
        STR      R0,[SP, #+16]
//  142 /*同隶属函数输出语言值求大*/ 
//  143  if(Un[0]==Un[1])
??Fuzzy_28:
        LDR      R0,[SP, #+36]
        LDR      R1,[SP, #+40]
        CMP      R0,R1
        BNE.N    ??Fuzzy_29
//  144  {
//  145   if(UF[0]>UF[1])
        LDR      R0,[SP, #+8]
        LDR      R1,[SP, #+4]
          CFI FunCall __aeabi_cfcmple
        BL       __aeabi_cfcmple
        BCS.N    ??Fuzzy_30
//  146   UF[1]=0;
        MOVS     R0,#+0
        STR      R0,[SP, #+8]
        B.N      ??Fuzzy_29
//  147   else
//  148   UF[0]=0;
??Fuzzy_30:
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
//  149  }
//  150  if(Un[0]==Un[2])
??Fuzzy_29:
        LDR      R0,[SP, #+36]
        LDR      R1,[SP, #+44]
        CMP      R0,R1
        BNE.N    ??Fuzzy_31
//  151  {
//  152   if(UF[0]>UF[2])
        LDR      R0,[SP, #+12]
        LDR      R1,[SP, #+4]
          CFI FunCall __aeabi_cfcmple
        BL       __aeabi_cfcmple
        BCS.N    ??Fuzzy_32
//  153   UF[2]=0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
        B.N      ??Fuzzy_31
//  154   else
//  155   UF[0]=0;
??Fuzzy_32:
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
//  156  }
//  157  if(Un[0]==Un[3])
??Fuzzy_31:
        LDR      R0,[SP, #+36]
        LDR      R1,[SP, #+48]
        CMP      R0,R1
        BNE.N    ??Fuzzy_33
//  158  {
//  159   if(UF[0]>UF[3])
        LDR      R0,[SP, #+16]
        LDR      R1,[SP, #+4]
          CFI FunCall __aeabi_cfcmple
        BL       __aeabi_cfcmple
        BCS.N    ??Fuzzy_34
//  160   UF[3]=0;
        MOVS     R0,#+0
        STR      R0,[SP, #+16]
        B.N      ??Fuzzy_33
//  161   else
//  162   UF[0]=0;
??Fuzzy_34:
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
//  163  }
//  164  if(Un[1]==Un[2])
??Fuzzy_33:
        LDR      R0,[SP, #+40]
        LDR      R1,[SP, #+44]
        CMP      R0,R1
        BNE.N    ??Fuzzy_35
//  165  {
//  166   if(UF[1]>UF[2])
        LDR      R0,[SP, #+12]
        LDR      R1,[SP, #+8]
          CFI FunCall __aeabi_cfcmple
        BL       __aeabi_cfcmple
        BCS.N    ??Fuzzy_36
//  167   UF[2]=0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
        B.N      ??Fuzzy_35
//  168   else
//  169   UF[1]=0;
??Fuzzy_36:
        MOVS     R0,#+0
        STR      R0,[SP, #+8]
//  170  }
//  171  if(Un[1]==Un[3])
??Fuzzy_35:
        LDR      R0,[SP, #+40]
        LDR      R1,[SP, #+48]
        CMP      R0,R1
        BNE.N    ??Fuzzy_37
//  172  {
//  173   if(UF[1]>UF[3])
        LDR      R0,[SP, #+16]
        LDR      R1,[SP, #+8]
          CFI FunCall __aeabi_cfcmple
        BL       __aeabi_cfcmple
        BCS.N    ??Fuzzy_38
//  174   UF[3]=0;
        MOVS     R0,#+0
        STR      R0,[SP, #+16]
        B.N      ??Fuzzy_37
//  175   else
//  176   UF[1]=0;
??Fuzzy_38:
        MOVS     R0,#+0
        STR      R0,[SP, #+8]
//  177  } 
//  178  if(Un[2]==Un[3])
??Fuzzy_37:
        LDR      R0,[SP, #+44]
        LDR      R1,[SP, #+48]
        CMP      R0,R1
        BNE.N    ??Fuzzy_39
//  179  {
//  180   if(UF[2]>UF[3])
        LDR      R0,[SP, #+16]
        LDR      R1,[SP, #+12]
          CFI FunCall __aeabi_cfcmple
        BL       __aeabi_cfcmple
        BCS.N    ??Fuzzy_40
//  181   UF[3]=0;
        MOVS     R0,#+0
        STR      R0,[SP, #+16]
        B.N      ??Fuzzy_39
//  182   else
//  183   UF[2]=0;
??Fuzzy_40:
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  184  }
//  185  t1=UF[0]*UFF[Un[0]];  
??Fuzzy_39:
        LDR      R1,[SP, #+4]
        ADD      R0,SP,#+112
        LDR      R2,[SP, #+36]
        LDR      R0,[R0, R2, LSL #+2]
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
        STR      R0,[SP, #+60]
//  186  t2=UF[1]*UFF[Un[1]];
        LDR      R1,[SP, #+8]
        ADD      R0,SP,#+112
        LDR      R2,[SP, #+40]
        LDR      R0,[R0, R2, LSL #+2]
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
        STR      R0,[SP, #+56]
//  187  t3=UF[2]*UFF[Un[2]];
        LDR      R1,[SP, #+12]
        ADD      R0,SP,#+112
        LDR      R2,[SP, #+44]
        LDR      R0,[R0, R2, LSL #+2]
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
        STR      R0,[SP, #+52]
//  188  t4=UF[3]*UFF[Un[3]];
        LDR      R1,[SP, #+16]
        ADD      R0,SP,#+112
        LDR      R2,[SP, #+48]
        LDR      R0,[R0, R2, LSL #+2]
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
        MOV      R9,R0
//  189  temp1=t1+t2+t3+t4;
        LDR      R1,[SP, #+60]
        LDR      R0,[SP, #+56]
          CFI FunCall __aeabi_fadd
        BL       __aeabi_fadd
        LDR      R1,[SP, #+52]
          CFI FunCall __aeabi_fadd
        BL       __aeabi_fadd
        MOV      R1,R9
          CFI FunCall __aeabi_fadd
        BL       __aeabi_fadd
        MOV      R10,R0
//  190  temp2=UF[0]+UF[1]+UF[2]+UF[3];//模糊量输出
        LDR      R1,[SP, #+4]
        LDR      R0,[SP, #+8]
          CFI FunCall __aeabi_fadd
        BL       __aeabi_fadd
        LDR      R1,[SP, #+12]
          CFI FunCall __aeabi_fadd
        BL       __aeabi_fadd
        LDR      R1,[SP, #+16]
          CFI FunCall __aeabi_fadd
        BL       __aeabi_fadd
        MOV      R11,R0
//  191  U=temp1/temp2;
        MOV      R0,R10
        MOV      R1,R11
          CFI FunCall __aeabi_fdiv
        BL       __aeabi_fdiv
        MOVS     R6,R0
//  192  return U;
        MOVS     R0,R6
        ADD      SP,SP,#+284
          CFI CFA R13+36
        POP      {R4-R11,PC}      ;; return
        DATA
??Fuzzy_0:
        DC32     ?_2
        DC32     ?_3
        DC32     ?_4
        DC32     ?_0
//  193 }
          CFI EndBlock cfiBlock0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_0:
        DC32 1, 1, 1, 0, 0, 4, 2, 1, 0, 0, 6, 4, 1, 1, 0, 3, 3, 0, 3, 3, 0, 1
        DC32 1, 4, 6, 0, 0, 1, 2, 4, 0, 0, 1, 1, 1

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_2:
        DC32 0C1C00000H, 0C1400000H, 0C0C00000H, 0H, 40C00000H, 41400000H
        DC32 41C00000H

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_3:
        DC32 0C0D00000H, 0C0400000H, 0H, 40400000H, 40D00000H

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_4:
        DC32 0H, 41700000H, 41A00000H, 420C0000H, 42480000H, 42A00000H
        DC32 42F00000H

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0H
        DC8 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0H
        DC8 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0H
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  194 
// 
//   264 bytes in section .rodata
// 1 212 bytes in section .textrw
// 
// 1 212 bytes of CODE  memory
//   264 bytes of CONST memory
//
//Errors: none
//Warnings: 32
