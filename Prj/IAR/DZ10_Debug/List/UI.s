///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      16/Jun/2017  19:20:37
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\@@@@@@@\Car\Drivers\UI\UI.c
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EW903D.tmp
//        (D:\@@@@@@@\Car\Drivers\UI\UI.c -D DEBUG -D
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
//    List file    =  D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\UI.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        RTMODEL "__dlib_full_locale_support", "1"
        RTMODEL "__dlib_version", "6"
        RTMODEL "__iar_require _Printf", "flags,floats,widths"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1
        #define SHF_WRITE 0x1
        #define SHF_EXECINSTR 0x4

        EXTERN Angle_Speed
        EXTERN Beep
        EXTERN Calculate_Blackline_Average_2
        EXTERN Car_Angle
        EXTERN Car_Run
        EXTERN Car_Run_Ui_Show_How_Long
        EXTERN Car_Run_Ui_Show_Long
        EXTERN CoL
        EXTERN CoR
        EXTERN Control_Para
        EXTERN Data_Get
        EXTERN Data_Public_Get
        EXTERN Data_Public_Save
        EXTERN Debug_Bluetooth
        EXTERN Debug_Button_Led
        EXTERN Debug_Button_V
        EXTERN Debug_Button_WhatisBeep
        EXTERN Debug_CarAngPrt
        EXTERN Debug_Protect
        EXTERN Flash_Data_Plan
        EXTERN Flash_Data_Public
        EXTERN Flash_Read_Plan
        EXTERN Flash_Write_Plan
        EXTERN Flash_Write_Pub
        EXTERN Fuzzy
        EXTERN GUI_Circle
        EXTERN GUI_CircleFill
        EXTERN GUI_LoadPic
        EXTERN GUI_Point
        EXTERN GUI_PutChar24_32
        EXTERN GUI_PutString
        EXTERN GUI_Rectangle
        EXTERN GUI_RectangleFill
        EXTERN Get_Press
        EXTERN In_Ring_Flag
        EXTERN KEY
        EXTERN L_dx
        EXTERN L_dy
        EXTERN LastTime_Car_Run_Distance
        EXTERN Last_Ring
        EXTERN MID_ERROR
        EXTERN Mid_X
        EXTERN Mid_Y
        EXTERN OLED_Display_Off
        EXTERN OLED_Display_On
        EXTERN OLED_Init
        EXTERN OLED_OPEN
        EXTERN Pic
        EXTERN Pic_show
        EXTERN Pit1_Start
        EXTERN Plan_Num
        EXTERN Press
        EXTERN QianZhan
        EXTERN R_dx
        EXTERN R_dy
        EXTERN Ran_Erase_Speed_I
        EXTERN Rode_Ring
        EXTERN Seagull_Left
        EXTERN Seagull_Mid
        EXTERN Seagull_Right
        EXTERN Search_1_Line_center
        EXTERN Send_Begin
        EXTERN Send_Para
        EXTERN Send_Variable
        EXTERN SetSpeed
        EXTERN Str_View
        EXTERN Ui_Show_Get_Speed
        EXTERN XZ
        EXTERN __aeabi_cfcmple
        EXTERN __aeabi_cfrcmple
        EXTERN __aeabi_d2iz
        EXTERN __aeabi_dmul
        EXTERN __aeabi_f2d
        EXTERN __aeabi_f2iz
        EXTERN __aeabi_f2uiz
        EXTERN __aeabi_fadd
        EXTERN __aeabi_fsub
        EXTERN __aeabi_i2d
        EXTERN __aeabi_i2f
        EXTERN __aeabi_memclr4
        EXTERN __aeabi_memcpy4
        EXTERN __aeabi_ui2f
        EXTERN anglenum
        EXTERN back_color
        EXTERN gpio_set
        EXTERN img_extract
        EXTERN imgbuff
        EXTERN pit_time_get
        EXTERN pit_time_start
        EXTERN result
        EXTERN sendimg
        EXTERN sprintf
        EXTERN systick_delay_ms

        PUBLIC AAngleArrySCIi
        PUBLIC AD
        PUBLIC AD_Bettery
        PUBLIC ANGSIAL
        PUBLIC ANGULAR
        PUBLIC Beep_Software_Button
        PUBLIC Car_Ctrl
        PUBLIC Car_Protect
        PUBLIC Case_UI
        PUBLIC Debug_Button
        PUBLIC Get_ShiBoQi_Button
        PUBLIC Led_Software_Button
        PUBLIC Num
        PUBLIC Plan_Choose
        PUBLIC Read_ShiBoQi2_Save
        PUBLIC Set
        PUBLIC Set_Ang
        PUBLIC ShiBoQi
        PUBLIC ShiBoQi2_Point
        PUBLIC ShiBoQi2_Save
        PUBLIC ShiBoQi_2
        PUBLIC ShiBoQi_View
        PUBLIC Show_Pic
        PUBLIC Show_Pic_Filter
        PUBLIC Show_Pic_T
        PUBLIC StandDnum
        PUBLIC StandPnum
        PUBLIC UI_Pic_X_Line
        PUBLIC UI_Pic_Y_Line
        PUBLIC Updata
        PUBLIC Vellue_Plan_Choose
        PUBLIC View
        PUBLIC View_1
        PUBLIC View_2
        PUBLIC View_3
        PUBLIC View_Plan
        PUBLIC View_Set
        PUBLIC Write_ShiBoQi2_Save
        PUBLIC X_LINE
        PUBLIC Y_LINE
        
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
        
// D:\@@@@@@@\Car\Drivers\UI\UI.c
//    1 /*****************************************************************
//    2 *
//    3 *****************************************************************/
//    4 
//    5 #include "All_Init.h"
//    6 
//    7 //按键对应的键值
//    8 #define K_DOWN       2
//    9 #define K_UP         1
//   10 #define K_RIGHT      4
//   11 #define K_LEFT       3
//   12 #define K_MID        5
//   13 
//   14 /*模拟要修改的变量*/
//   15 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   16 float Vellue_Plan_Choose[31]={0};
Vellue_Plan_Choose:
        DS8 124
//   17 
//   18 /*模拟4个变量*/

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   19 int StandPnum=0;
StandPnum:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   20 int ANGULAR=0;
ANGULAR:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   21 int StandDnum=0;
StandDnum:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   22 int ANGSIAL=0;
ANGSIAL:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   23 int Num=0;
Num:
        DS8 4
//   24 
//   25 /********************************显示摄像头采集的图片********************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function Show_Pic
        THUMB
//   26 int Show_Pic(void)
//   27 {
Show_Pic:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        SUB      SP,SP,#+8
          CFI CFA R13+16
//   28   int Show_Pic_Now_Ang=0;
        MOVS     R4,#+0
//   29 
//   30   GUI_RectangleFill(0, 0, 128, 64, back_color);//画矩形
        LDR.W    R0,??DataTable2
        LDRB     R0,[R0, #+0]
        STR      R0,[SP, #+0]
        MOVS     R3,#+64
        MOVS     R2,#+128
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_RectangleFill
        BL       GUI_RectangleFill
//   31   sprintf(Str_View,"Original");
        LDR.W    R1,??DataTable2_1
        LDR.W    R0,??DataTable2_2
          CFI FunCall sprintf
        BL       sprintf
//   32   GUI_PutString(82,0,Str_View);
        LDR.W    R2,??DataTable2_2
        MOVS     R1,#+0
        MOVS     R0,#+82
          CFI FunCall GUI_PutString
        BL       GUI_PutString
//   33 
//   34   while(1)
//   35   {
//   36 	
//   37     //camera_get_img(); //采集图像
//   38     //img_extract((u8*)Pic,(uint8*)imgbuff,600);//解压为二维数组
//   39     
//   40     //Search_3_Line();
//   41     //Pic_Filter(Pic,1);
//   42     
//   43     
//   44 //    
//   45 //    Show_Pic_Now_Ang=Car_Angle-anglenum;
//   46 //    sprintf(Str_View,"A:%3d",Show_Pic_Now_Ang);
//   47 //    GUI_PutString(82,50,Str_View);
//   48 //    
//   49 //    sprintf(Str_View,"E:%3d",MID_ERROR);
//   50 //    GUI_PutString(82,20,Str_View);
//   51 //    
//   52     Get_Press();
??Show_Pic_0:
          CFI FunCall Get_Press
        BL       Get_Press
//   53     if (Press==K_LEFT)
        LDR.W    R0,??DataTable2_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+3
        BNE.N    ??Show_Pic_1
//   54     {
//   55     	GUI_RectangleFill(0, 0, 128, 64, back_color);
        LDR.W    R0,??DataTable2
        LDRB     R0,[R0, #+0]
        STR      R0,[SP, #+0]
        MOVS     R3,#+64
        MOVS     R2,#+128
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_RectangleFill
        BL       GUI_RectangleFill
//   56     	return 0;
        MOVS     R0,#+0
        B.N      ??Show_Pic_2
//   57     }
//   58     if (Press==K_UP)
??Show_Pic_1:
        LDR.W    R0,??DataTable2_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Show_Pic_3
//   59     {
//   60     	GUI_RectangleFill(0, 0, 128, 64, back_color);
        LDR.W    R0,??DataTable2
        LDRB     R0,[R0, #+0]
        STR      R0,[SP, #+0]
        MOVS     R3,#+64
        MOVS     R2,#+128
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_RectangleFill
        BL       GUI_RectangleFill
//   61     	return 4;
        MOVS     R0,#+4
        B.N      ??Show_Pic_2
//   62     }
//   63     
//   64     if (Press==K_DOWN)
??Show_Pic_3:
        LDR.W    R0,??DataTable2_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??Show_Pic_4
//   65     {
//   66     	GUI_RectangleFill(0, 0, 128, 64, back_color);
        LDR.W    R0,??DataTable2
        LDRB     R0,[R0, #+0]
        STR      R0,[SP, #+0]
        MOVS     R3,#+64
        MOVS     R2,#+128
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_RectangleFill
        BL       GUI_RectangleFill
//   67     	return 6;
        MOVS     R0,#+6
        B.N      ??Show_Pic_2
//   68     }
//   69     GUI_LoadPic(0,0,imgbuff,80,60);
??Show_Pic_4:
        MOVS     R0,#+60
        STR      R0,[SP, #+0]
        MOVS     R3,#+80
        LDR.W    R2,??DataTable2_4
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_LoadPic
        BL       GUI_LoadPic
        B.N      ??Show_Pic_0
//   70     
//   71     
//   72     
//   73     
//   74 //    if(Old!=Time&&OLED_OPEN)//统计帧率
//   75 //    {
//   76 //      
//   77 //      sprintf(Str_View,"T:%4d",Time);
//   78 //      GUI_PutString(82,30,Str_View);
//   79 // 
//   80 //      Old=Time;
//   81 //    }
//   82   }
??Show_Pic_2:
        POP      {R1,R2,R4,PC}    ;; return
//   83 }
          CFI EndBlock cfiBlock0
//   84 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   85 int UI_Pic_X_Line=40;
UI_Pic_X_Line:
        DC32 40

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   86 int UI_Pic_Y_Line=30;
UI_Pic_Y_Line:
        DC32 30
//   87 
//   88 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function Show_Pic_Filter
        THUMB
//   89 int Show_Pic_Filter(void)
//   90 {
Show_Pic_Filter:
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
        SUB      SP,SP,#+140
          CFI CFA R13+176
//   91   int  Show_Lx=L_dx;
        LDR.W    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        STR      R0,[SP, #+12]
//   92   int  Sowh_Ly=L_dy;
        LDR.W    R0,??DataTable2_6
        LDR      R0,[R0, #+0]
        STR      R0,[SP, #+8]
//   93   int  Show_Rx=R_dx;
        LDR.W    R0,??DataTable2_7
        LDR      R6,[R0, #+0]
//   94   int  Sowh_Ry=R_dy;
        LDR.W    R0,??DataTable2_8
        LDR      R7,[R0, #+0]
//   95   
//   96  // int R_ux=0,R_uy=0,R_dx=0,R_dy=0,L_dx=0,L_dy=0,L_ux=0,L_uy=0; 
//   97   int  Show_Mx=Mid_X;
        LDR.W    R0,??DataTable2_9
        LDR      R8,[R0, #+0]
//   98   int  Show_My=Mid_Y;
        LDR.W    R0,??DataTable2_10
        LDR      R9,[R0, #+0]
//   99   
//  100   
//  101   
//  102   
//  103   int Move_Mode=0;
        MOVS     R4,#+0
//  104   int Show_Pic_Now_Ang=0;
        MOVS     R0,#+0
        STR      R0,[SP, #+16]
//  105   
//  106   int16 Show_Line_center[60];     //记录黑线中心数组
//  107   int Show_Error=0;
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
//  108   
//  109   GUI_RectangleFill(0, 0, 128, 64, back_color);//画矩形
        LDR.W    R0,??DataTable2
        LDRB     R0,[R0, #+0]
        STR      R0,[SP, #+0]
        MOVS     R3,#+64
        MOVS     R2,#+128
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_RectangleFill
        BL       GUI_RectangleFill
//  110   sprintf(Str_View,"Filter");
        LDR.W    R1,??DataTable2_11
        LDR.W    R0,??DataTable2_2
          CFI FunCall sprintf
        BL       sprintf
//  111   GUI_PutString(85,0,Str_View);
        LDR.W    R2,??DataTable2_2
        MOVS     R1,#+0
        MOVS     R0,#+85
          CFI FunCall GUI_PutString
        BL       GUI_PutString
//  112 
//  113   int Key_Stop=0;
        MOVS     R5,#+0
//  114   
//  115   while(1)
//  116   {
//  117     if(!Key_Stop)    //右键暂停采集图像
??Show_Pic_Filter_0:
        CMP      R5,#+0
        BNE.N    ??Show_Pic_Filter_1
//  118     {
//  119   	  //camera_get_img(); //采集图像
//  120       //img_extract((u8*)Pic,(uint8*)imgbuff,600);
//  121       
//  122       for(int i=60;i>=0;i--)
        MOVS     R0,#+60
??Show_Pic_Filter_2:
        CMP      R0,#+0
        BMI.N    ??Show_Pic_Filter_3
//  123       Show_Line_center[i]=Search_1_Line_center[i];   //更新数组
        LDR.W    R1,??DataTable2_12
        LDRH     R1,[R1, R0, LSL #+1]
        ADD      R2,SP,#+20
        STRH     R1,[R2, R0, LSL #+1]
        SUBS     R0,R0,#+1
        B.N      ??Show_Pic_Filter_2
//  124       Show_Error= MID_ERROR;
??Show_Pic_Filter_3:
        LDR.W    R0,??DataTable2_13
        LDR      R0,[R0, #+0]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        STR      R0,[SP, #+4]
//  125     }
//  126     //Pic_Find();  //搜线
//  127     //Search_1();
//  128     Show_Pic_Now_Ang=Car_Angle-anglenum;
??Show_Pic_Filter_1:
        LDR.W    R0,??DataTable2_14
        LDR      R0,[R0, #+0]
          CFI FunCall __aeabi_i2f
        BL       __aeabi_i2f
        MOVS     R1,R0
        LDR.W    R0,??DataTable2_15
        LDR      R0,[R0, #+0]
          CFI FunCall __aeabi_fsub
        BL       __aeabi_fsub
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        STR      R0,[SP, #+16]
//  129     sprintf(Str_View,"E:%5d",(int)MID_ERROR);
        LDR.W    R0,??DataTable2_13
        LDR      R0,[R0, #+0]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable2_16
        LDR.W    R0,??DataTable2_2
          CFI FunCall sprintf
        BL       sprintf
//  130     GUI_PutString(84,50,Str_View);
        LDR.W    R2,??DataTable2_2
        MOVS     R1,#+50
        MOVS     R0,#+84
          CFI FunCall GUI_PutString
        BL       GUI_PutString
//  131     
//  132     if(!Move_Mode)
        CMP      R4,#+0
        BNE.N    ??Show_Pic_Filter_4
//  133     {
//  134     sprintf(Str_View,"E:%5d ",Show_Error);
        LDR      R2,[SP, #+4]
        LDR.W    R1,??DataTable2_17
        LDR.W    R0,??DataTable2_2
          CFI FunCall sprintf
        BL       sprintf
//  135     GUI_PutString(84,40,Str_View);
        LDR.W    R2,??DataTable2_2
        MOVS     R1,#+40
        MOVS     R0,#+84
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        B.N      ??Show_Pic_Filter_5
//  136     }
//  137     else
//  138     {
//  139     sprintf(Str_View,"E:%5d ",Show_Line_center[UI_Pic_Y_Line]-40);
??Show_Pic_Filter_4:
        ADD      R0,SP,#+20
        LDR.W    R1,??DataTable2_18
        LDR      R1,[R1, #+0]
        LDRSH    R2,[R0, R1, LSL #+1]
        SUBS     R2,R2,#+40
        LDR.W    R1,??DataTable2_17
        LDR.W    R0,??DataTable2_2
          CFI FunCall sprintf
        BL       sprintf
//  140     GUI_PutString(84,40,Str_View);
        LDR.W    R2,??DataTable2_2
        MOVS     R1,#+40
        MOVS     R0,#+84
          CFI FunCall GUI_PutString
        BL       GUI_PutString
//  141     }
//  142     
//  143     sprintf(Str_View,"X:%5d ",UI_Pic_X_Line);
??Show_Pic_Filter_5:
        LDR.W    R0,??DataTable2_19
        LDR      R2,[R0, #+0]
        LDR.W    R1,??DataTable2_20
        LDR.W    R0,??DataTable2_2
          CFI FunCall sprintf
        BL       sprintf
//  144     GUI_PutString(84,20,Str_View);
        LDR.W    R2,??DataTable2_2
        MOVS     R1,#+20
        MOVS     R0,#+84
          CFI FunCall GUI_PutString
        BL       GUI_PutString
//  145     
//  146     sprintf(Str_View,"Y:%5d ",UI_Pic_Y_Line);
        LDR.W    R0,??DataTable2_18
        LDR      R2,[R0, #+0]
        LDR.W    R1,??DataTable2_21
        LDR.W    R0,??DataTable2_2
          CFI FunCall sprintf
        BL       sprintf
//  147     GUI_PutString(84,30,Str_View);
        LDR.W    R2,??DataTable2_2
        MOVS     R1,#+30
        MOVS     R0,#+84
          CFI FunCall GUI_PutString
        BL       GUI_PutString
//  148     
//  149 
//  150     Get_Press();
          CFI FunCall Get_Press
        BL       Get_Press
//  151 
//  152     if (Press==K_LEFT&&!Move_Mode)
        LDR.W    R0,??DataTable2_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+3
        BNE.N    ??Show_Pic_Filter_6
        CMP      R4,#+0
        BNE.N    ??Show_Pic_Filter_6
//  153     {
//  154         Press=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable2_3
        STR      R0,[R1, #+0]
//  155     	GUI_RectangleFill(0, 0, 128, 64, back_color);
        LDR.W    R0,??DataTable2
        LDRB     R0,[R0, #+0]
        STR      R0,[SP, #+0]
        MOVS     R3,#+64
        MOVS     R2,#+128
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_RectangleFill
        BL       GUI_RectangleFill
//  156     	return 0;
        MOVS     R0,#+0
        B.N      ??Show_Pic_Filter_7
//  157     }
//  158     if (Press==K_RIGHT&&!Move_Mode)
??Show_Pic_Filter_6:
        LDR.W    R0,??DataTable2_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+4
        BNE.N    ??Show_Pic_Filter_8
        CMP      R4,#+0
        BNE.N    ??Show_Pic_Filter_8
//  159     {
//  160         Press=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable2_3
        STR      R0,[R1, #+0]
//  161     	Key_Stop++;
        ADDS     R5,R5,#+1
//  162         Key_Stop%=2;
        MOVS     R0,#+2
        SDIV     R1,R5,R0
        MLS      R5,R0,R1,R5
//  163         
//  164         if(Key_Stop==1)
        CMP      R5,#+1
        BNE.N    ??Show_Pic_Filter_8
//  165         sendimg(imgbuff,600); 
        MOV      R1,#+600
        LDR.W    R0,??DataTable2_4
          CFI FunCall sendimg
        BL       sendimg
//  166         
//  167     }
//  168     if (Press==K_UP&&!Move_Mode)
??Show_Pic_Filter_8:
        LDR.W    R0,??DataTable2_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Show_Pic_Filter_9
        CMP      R4,#+0
        BNE.N    ??Show_Pic_Filter_9
//  169     {
//  170         Press=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable2_3
        STR      R0,[R1, #+0]
//  171     	GUI_RectangleFill(0, 0, 128, 64, back_color);
        LDR.W    R0,??DataTable2
        LDRB     R0,[R0, #+0]
        STR      R0,[SP, #+0]
        MOVS     R3,#+64
        MOVS     R2,#+128
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_RectangleFill
        BL       GUI_RectangleFill
//  172     	return 5;
        MOVS     R0,#+5
        B.N      ??Show_Pic_Filter_7
//  173     }
//  174     if (Press==K_DOWN&&!Move_Mode)
??Show_Pic_Filter_9:
        LDR.W    R0,??DataTable2_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??Show_Pic_Filter_10
        CMP      R4,#+0
        BNE.N    ??Show_Pic_Filter_10
//  175     {
//  176         Press=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable2_3
        STR      R0,[R1, #+0]
//  177     	GUI_RectangleFill(0, 0, 128, 64, back_color);
        LDR.W    R0,??DataTable2
        LDRB     R0,[R0, #+0]
        STR      R0,[SP, #+0]
        MOVS     R3,#+64
        MOVS     R2,#+128
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_RectangleFill
        BL       GUI_RectangleFill
//  178     	return 7;
        MOVS     R0,#+7
        B.N      ??Show_Pic_Filter_7
//  179     }
//  180     if (Press==K_MID&&!Move_Mode)
??Show_Pic_Filter_10:
        LDR.W    R0,??DataTable2_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+5
        BNE.N    ??Show_Pic_Filter_11
        CMP      R4,#+0
        BNE.N    ??Show_Pic_Filter_11
//  181     {
//  182        Press=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable2_3
        STR      R0,[R1, #+0]
//  183        GUI_PutString(85,10," MOVE ");
        LDR.W    R2,??DataTable2_22
        MOVS     R1,#+10
        MOVS     R0,#+85
          CFI FunCall GUI_PutString
        BL       GUI_PutString
//  184        Move_Mode=1;//变成移动游标的模式
        MOVS     R0,#+1
        MOVS     R4,R0
//  185     }
//  186     //////////////////////////////////////
//  187     if (Press==K_LEFT&&Move_Mode)
??Show_Pic_Filter_11:
        LDR.W    R0,??DataTable2_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+3
        BNE.N    ??Show_Pic_Filter_12
        CMP      R4,#+0
        BEQ.N    ??Show_Pic_Filter_12
//  188     {
//  189     	Press=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable2_3
        STR      R0,[R1, #+0]
//  190         UI_Pic_X_Line=UI_Pic_X_Line==0?79:UI_Pic_X_Line-1;
        LDR.W    R0,??DataTable2_19
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Show_Pic_Filter_13
        MOVS     R0,#+79
        LDR.W    R1,??DataTable2_19
        STR      R0,[R1, #+0]
        B.N      ??Show_Pic_Filter_12
??Show_Pic_Filter_13:
        LDR.W    R0,??DataTable2_19
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable2_19
        STR      R0,[R1, #+0]
//  191     }
//  192     if (Press==K_RIGHT&&Move_Mode)
??Show_Pic_Filter_12:
        LDR.W    R0,??DataTable2_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+4
        BNE.N    ??Show_Pic_Filter_14
        CMP      R4,#+0
        BEQ.N    ??Show_Pic_Filter_14
//  193     {
//  194     	Press=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable2_3
        STR      R0,[R1, #+0]
//  195         UI_Pic_X_Line=UI_Pic_X_Line==79?0:UI_Pic_X_Line+1;
        LDR.W    R0,??DataTable2_19
        LDR      R0,[R0, #+0]
        CMP      R0,#+79
        BNE.N    ??Show_Pic_Filter_15
        MOVS     R0,#+0
        LDR.W    R1,??DataTable2_19
        STR      R0,[R1, #+0]
        B.N      ??Show_Pic_Filter_14
??Show_Pic_Filter_15:
        LDR.W    R0,??DataTable2_19
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable2_19
        STR      R0,[R1, #+0]
//  196     }
//  197     if (Press==K_UP&&Move_Mode)
??Show_Pic_Filter_14:
        LDR.W    R0,??DataTable2_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Show_Pic_Filter_16
        CMP      R4,#+0
        BEQ.N    ??Show_Pic_Filter_16
//  198     {
//  199     	Press=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable2_3
        STR      R0,[R1, #+0]
//  200         UI_Pic_Y_Line=UI_Pic_Y_Line==1?59:UI_Pic_Y_Line-1;
        LDR.W    R0,??DataTable2_18
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Show_Pic_Filter_17
        MOVS     R0,#+59
        LDR.W    R1,??DataTable2_18
        STR      R0,[R1, #+0]
        B.N      ??Show_Pic_Filter_16
??Show_Pic_Filter_17:
        LDR.W    R0,??DataTable2_18
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable2_18
        STR      R0,[R1, #+0]
//  201     }
//  202     if (Press==K_DOWN&&Move_Mode)
??Show_Pic_Filter_16:
        LDR.W    R0,??DataTable2_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??Show_Pic_Filter_18
        CMP      R4,#+0
        BEQ.N    ??Show_Pic_Filter_18
//  203     {
//  204     	Press=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable2_3
        STR      R0,[R1, #+0]
//  205         UI_Pic_Y_Line=UI_Pic_Y_Line==59?1:UI_Pic_Y_Line+1;
        LDR.W    R0,??DataTable2_18
        LDR      R0,[R0, #+0]
        CMP      R0,#+59
        BNE.N    ??Show_Pic_Filter_19
        MOVS     R0,#+1
        LDR.W    R1,??DataTable2_18
        STR      R0,[R1, #+0]
        B.N      ??Show_Pic_Filter_18
??Show_Pic_Filter_19:
        LDR.W    R0,??DataTable2_18
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable2_18
        STR      R0,[R1, #+0]
//  206     }
//  207     if (Press==K_MID&&Move_Mode)
??Show_Pic_Filter_18:
        LDR.W    R0,??DataTable2_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+5
        BNE.N    ??Show_Pic_Filter_20
        CMP      R4,#+0
        BEQ.N    ??Show_Pic_Filter_20
//  208     {
//  209        Press=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable2_3
        STR      R0,[R1, #+0]
//  210        Move_Mode=0;//变成正常模式
        MOVS     R0,#+0
        MOVS     R4,R0
//  211        GUI_PutString(85,10,"      ");  
        LDR.W    R2,??DataTable2_23
        MOVS     R1,#+10
        MOVS     R0,#+85
          CFI FunCall GUI_PutString
        BL       GUI_PutString
//  212     }
//  213     
//  214 //    if(Old!=Time&&OLED_OPEN)//统计帧率
//  215 //    {
//  216 ////      sprintf(Str_View,"Pic:%3d",picMany);
//  217 ////      GUI_PutString(82,20,Str_View);
//  218 //      sprintf(Str_View,"Time:%2d",Time);
//  219 //      GUI_PutString(82,30,Str_View);
//  220 //      Old=Time;
//  221 //    }
//  222    // GUI_CircleFill(L_dx,L_dy,4,0);
//  223     //GUI_CircleFill
//  224     
//  225 //    Show_Lx ,Sowh_Ly
//  226 //    Show_Rx ,Sowh_Ry
//  227     
//  228     
//  229     
//  230     GUI_Circle(Show_Lx ,Sowh_Ly,4,0); 
??Show_Pic_Filter_20:
        MOVS     R3,#+0
        MOVS     R2,#+4
        LDR      R1,[SP, #+8]
        LDR      R0,[SP, #+12]
          CFI FunCall GUI_Circle
        BL       GUI_Circle
//  231     GUI_Circle(Show_Rx ,Sowh_Ry,4,0); 
        MOVS     R3,#+0
        MOVS     R2,#+4
        MOVS     R1,R7
        MOVS     R0,R6
          CFI FunCall GUI_Circle
        BL       GUI_Circle
//  232     GUI_Circle(Show_Mx ,Show_My,4,0);
        MOVS     R3,#+0
        MOVS     R2,#+4
        MOV      R1,R9
        MOV      R0,R8
          CFI FunCall GUI_Circle
        BL       GUI_Circle
//  233     
//  234 
//  235      for(int i=0;i<60;i++)
        MOVS     R10,#+0
??Show_Pic_Filter_21:
        CMP      R10,#+60
        BGE.W    ??Show_Pic_Filter_0
//  236     {
//  237       if(i>=QianZhan)        //显示进行运算的中线
        LDR.W    R0,??DataTable2_24
        LDRB     R0,[R0, #+0]
        CMP      R10,R0
        BLT.N    ??Show_Pic_Filter_22
//  238       {
//  239       Pic[i][(Show_Line_center[i])]=1;
        LDR.W    R0,??DataTable2_25
        MOVS     R1,#+80
        MUL      R1,R1,R10
        ADD      R0,R0,R1
        ADD      R1,SP,#+20
        LDRSH    R1,[R1, R10, LSL #+1]
        MOVS     R2,#+1
        STRB     R2,[R0, R1]
//  240       }
//  241       
//  242       for(int j=0;j<80;j++)
??Show_Pic_Filter_22:
        MOVS     R11,#+0
??Show_Pic_Filter_23:
        CMP      R11,#+80
        BGE.N    ??Show_Pic_Filter_24
//  243       {
//  244         
//  245 //        if(i==UI_Pic_Y_Line||j==UI_Pic_X_Line)
//  246 //        {
//  247 //          Pic[i][j]=(i%2)?(j%2)?!Pic[i][j]:Pic[i][j]:(j%2)?Pic[i][j]:!Pic[i][j];
//  248 //        }
//  249         
//  250         
//  251         GUI_Point(j,i,(i>=QianZhan&&j==(Show_Line_center[i]))?1: 
//  252                   (i==UI_Pic_Y_Line||j==UI_Pic_X_Line)?((i%2)?(j%2)?
//  253                   !Pic[i][j]:Pic[i][j]:(j%2)?
//  254                   Pic[i][j]:!Pic[i][j]):Pic[i][j]);
        LDR.W    R0,??DataTable2_24
        LDRB     R0,[R0, #+0]
        CMP      R10,R0
        BLT.N    ??Show_Pic_Filter_25
        ADD      R0,SP,#+20
        LDRSH    R0,[R0, R10, LSL #+1]
        CMP      R11,R0
        BNE.N    ??Show_Pic_Filter_25
        MOVS     R2,#+1
        B.N      ??Show_Pic_Filter_26
??Show_Pic_Filter_25:
        LDR.W    R0,??DataTable2_18
        LDR      R0,[R0, #+0]
        CMP      R10,R0
        BEQ.N    ??Show_Pic_Filter_27
        LDR.W    R0,??DataTable2_19
        LDR      R0,[R0, #+0]
        CMP      R11,R0
        BNE.N    ??Show_Pic_Filter_28
??Show_Pic_Filter_27:
        MOVS     R0,#+2
        SDIV     R1,R10,R0
        MLS      R0,R0,R1,R10
        CMP      R0,#+0
        BEQ.N    ??Show_Pic_Filter_29
        MOVS     R0,#+2
        SDIV     R1,R11,R0
        MLS      R0,R0,R1,R11
        CMP      R0,#+0
        BEQ.N    ??Show_Pic_Filter_30
        LDR.W    R0,??DataTable2_25
        MOVS     R1,#+80
        MUL      R1,R1,R10
        ADD      R0,R0,R1
        LDRB     R0,[R0, R11]
        CMP      R0,#+0
        BNE.N    ??Show_Pic_Filter_31
        MOVS     R2,#+1
        B.N      ??Show_Pic_Filter_32
??Show_Pic_Filter_31:
        MOVS     R2,#+0
        B.N      ??Show_Pic_Filter_32
??Show_Pic_Filter_30:
        LDR.W    R0,??DataTable2_25
        MOVS     R1,#+80
        MUL      R1,R1,R10
        ADD      R0,R0,R1
        LDRB     R2,[R0, R11]
??Show_Pic_Filter_32:
        B.N      ??Show_Pic_Filter_33
??Show_Pic_Filter_29:
        MOVS     R0,#+2
        SDIV     R1,R11,R0
        MLS      R0,R0,R1,R11
        CMP      R0,#+0
        BEQ.N    ??Show_Pic_Filter_34
        LDR.W    R0,??DataTable2_25
        MOVS     R1,#+80
        MUL      R1,R1,R10
        ADD      R0,R0,R1
        LDRB     R2,[R0, R11]
        B.N      ??Show_Pic_Filter_35
??Show_Pic_Filter_34:
        LDR.W    R0,??DataTable2_25
        MOVS     R1,#+80
        MUL      R1,R1,R10
        ADD      R0,R0,R1
        LDRB     R0,[R0, R11]
        CMP      R0,#+0
        BNE.N    ??Show_Pic_Filter_36
        MOVS     R2,#+1
        B.N      ??Show_Pic_Filter_35
??Show_Pic_Filter_36:
        MOVS     R2,#+0
??Show_Pic_Filter_35:
        B.N      ??Show_Pic_Filter_33
??Show_Pic_Filter_28:
        LDR.W    R0,??DataTable2_25
        MOVS     R1,#+80
        MUL      R1,R1,R10
        ADD      R0,R0,R1
        LDRB     R2,[R0, R11]
??Show_Pic_Filter_33:
??Show_Pic_Filter_26:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOV      R0,R10
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R11
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_Point
        BL       GUI_Point
//  255         
//  256          
//  257          
//  258       }
        ADDS     R11,R11,#+1
        B.N      ??Show_Pic_Filter_23
//  259       
//  260       
//  261       
//  262      
//  263       
//  264       GUI_Circle(Mid_X,Mid_Y,4,1);
??Show_Pic_Filter_24:
        MOVS     R3,#+1
        MOVS     R2,#+4
        LDR.W    R0,??DataTable2_10
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable2_9
        LDR      R0,[R0, #+0]
          CFI FunCall GUI_Circle
        BL       GUI_Circle
//  265       GUI_Circle(L_dx,L_dy,4,1);
        MOVS     R3,#+1
        MOVS     R2,#+4
        LDR.W    R0,??DataTable2_6
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
          CFI FunCall GUI_Circle
        BL       GUI_Circle
//  266       //GUI_CircleFill
//  267       GUI_Circle(R_dx,R_dy,4,1);
        MOVS     R3,#+1
        MOVS     R2,#+4
        LDR.W    R0,??DataTable2_8
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable2_7
        LDR      R0,[R0, #+0]
          CFI FunCall GUI_Circle
        BL       GUI_Circle
//  268       
//  269       Show_Lx=L_dx;
        LDR.W    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        STR      R0,[SP, #+12]
//  270       Sowh_Ly=L_dy;
        LDR.W    R0,??DataTable2_6
        LDR      R0,[R0, #+0]
        STR      R0,[SP, #+8]
//  271       Show_Rx=R_dx;
        LDR.W    R0,??DataTable2_7
        LDR      R0,[R0, #+0]
        MOVS     R6,R0
//  272       Sowh_Ry=R_dy;
        LDR.W    R0,??DataTable2_8
        LDR      R0,[R0, #+0]
        MOVS     R7,R0
//  273       
//  274       Show_Mx=Mid_X;
        LDR.W    R0,??DataTable2_9
        LDR      R0,[R0, #+0]
        MOV      R8,R0
//  275       Show_My=Mid_Y;
        LDR.W    R0,??DataTable2_10
        LDR      R0,[R0, #+0]
        MOV      R9,R0
//  276       
//  277       
//  278       
//  279     }
        ADDS     R10,R10,#+1
        B.N      ??Show_Pic_Filter_21
//  280     
//  281   }
??Show_Pic_Filter_7:
        ADD      SP,SP,#+140
          CFI CFA R13+36
        POP      {R4-R11,PC}      ;; return
//  282 }
          CFI EndBlock cfiBlock1
//  283 
//  284 
//  285 
//  286 
//  287 /********************************显示处理后的图片********************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function Show_Pic_T
        THUMB
//  288 int Show_Pic_T(void)
//  289 {
Show_Pic_T:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
//  290   GUI_RectangleFill(0, 0, 128, 64, back_color);//画矩形
        LDR.W    R0,??DataTable2
        LDRB     R0,[R0, #+0]
        STR      R0,[SP, #+0]
        MOVS     R3,#+64
        MOVS     R2,#+128
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_RectangleFill
        BL       GUI_RectangleFill
//  291   
//  292   sprintf(Str_View,"PicShow");
        LDR.W    R1,??DataTable2_26
        LDR.W    R0,??DataTable2_2
          CFI FunCall sprintf
        BL       sprintf
//  293   GUI_PutString(81,0,Str_View);
        LDR.W    R2,??DataTable2_2
        MOVS     R1,#+0
        MOVS     R0,#+81
          CFI FunCall GUI_PutString
        BL       GUI_PutString
//  294   int Show_Pic_Now_Ang=0;
        MOVS     R5,#+0
//  295   
//  296   int Move_Mode=0;
        MOVS     R4,#+0
//  297   while(1)
//  298   {
//  299     //camera_get_img(); //采集图像
//  300     //img_extract((u8*)Pic,(uint8*)imgbuff,600);
//  301     //Search_1();
//  302     //Pic_Search_Vertical();
//  303     //Handle_Pic();
//  304     //Search_HO();
//  305     //Pic_Find();
//  306     //Search_1();
//  307 //    Seagull_Left=0 ;
//  308 //    Seagull_Right=0;
//  309 //    Seagull_Mid=0  ;
//  310 //    Show_Pic_Now_Ang=Car_Angle-anglenum;
//  311     
//  312     sprintf(Str_View,"%02d %d %02d",Seagull_Left,In_Ring_Flag,Seagull_Right);      //
??Show_Pic_T_0:
        LDR.W    R0,??DataTable2_27
        LDR      R0,[R0, #+0]
        STR      R0,[SP, #+0]
        LDR.W    R0,??DataTable2_28
        LDR      R3,[R0, #+0]
        LDR.W    R0,??DataTable2_29
        LDR      R2,[R0, #+0]
        LDR.W    R1,??DataTable2_30
        LDR.W    R0,??DataTable2_2
          CFI FunCall sprintf
        BL       sprintf
//  313     GUI_PutString(84,50,Str_View);
        LDR.W    R2,??DataTable2_2
        MOVS     R1,#+50
        MOVS     R0,#+84
          CFI FunCall GUI_PutString
        BL       GUI_PutString
//  314     
//  315 //    if(!Move_Mode)
//  316 //    {
//  317 //    sprintf(Str_View,"E:%5d ",MID_ERROR);
//  318 //    GUI_PutString(84,40,Str_View);
//  319 //    }
//  320 //    else
//  321     {
//  322     sprintf(Str_View,"%d %02d %d",Last_Ring,Seagull_Mid,Rode_Ring);//Search_1_Line_center[UI_Pic_Y_Line]-40);
        LDR.W    R0,??DataTable2_31
        LDR      R0,[R0, #+0]
        STR      R0,[SP, #+0]
        LDR.W    R0,??DataTable2_32
        LDR      R3,[R0, #+0]
        LDR.W    R0,??DataTable2_33
        LDR      R2,[R0, #+0]
        LDR.W    R1,??DataTable2_34
        LDR.W    R0,??DataTable2_2
          CFI FunCall sprintf
        BL       sprintf
//  323     GUI_PutString(87,40,Str_View);
        LDR.W    R2,??DataTable2_2
        MOVS     R1,#+40
        MOVS     R0,#+87
          CFI FunCall GUI_PutString
        BL       GUI_PutString
//  324     }
//  325 //    
//  326     sprintf(Str_View,"X:%5d ",UI_Pic_X_Line);
        LDR.W    R0,??DataTable2_19
        LDR      R2,[R0, #+0]
        LDR.W    R1,??DataTable2_20
        LDR.W    R0,??DataTable2_2
          CFI FunCall sprintf
        BL       sprintf
//  327     GUI_PutString(84,20,Str_View);
        LDR.W    R2,??DataTable2_2
        MOVS     R1,#+20
        MOVS     R0,#+84
          CFI FunCall GUI_PutString
        BL       GUI_PutString
//  328     
//  329     sprintf(Str_View,"Y:%5d ",UI_Pic_Y_Line);
        LDR.W    R0,??DataTable2_18
        LDR      R2,[R0, #+0]
        LDR.W    R1,??DataTable2_21
        LDR.W    R0,??DataTable2_2
          CFI FunCall sprintf
        BL       sprintf
//  330     GUI_PutString(84,30,Str_View);
        LDR.W    R2,??DataTable2_2
        MOVS     R1,#+30
        MOVS     R0,#+84
          CFI FunCall GUI_PutString
        BL       GUI_PutString
//  331     
//  332     
//  333     Get_Press();
          CFI FunCall Get_Press
        BL       Get_Press
//  334    
//  335     if (Press==K_LEFT&&!Move_Mode)
        LDR.W    R0,??DataTable2_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+3
        BNE.N    ??Show_Pic_T_1
        CMP      R4,#+0
        BNE.N    ??Show_Pic_T_1
//  336     {
//  337         Press=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable2_3
        STR      R0,[R1, #+0]
//  338     	GUI_RectangleFill(0, 0, 128, 64, back_color);
        LDR.W    R0,??DataTable2
        LDRB     R0,[R0, #+0]
        STR      R0,[SP, #+0]
        MOVS     R3,#+64
        MOVS     R2,#+128
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_RectangleFill
        BL       GUI_RectangleFill
//  339     	return 0;
        MOVS     R0,#+0
        B.N      ??Show_Pic_T_2
//  340     }
//  341     if (Press==K_UP&&!Move_Mode)
??Show_Pic_T_1:
        LDR.W    R0,??DataTable2_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Show_Pic_T_3
        CMP      R4,#+0
        BNE.N    ??Show_Pic_T_3
//  342     {
//  343         Press=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable2_3
        STR      R0,[R1, #+0]
//  344     	GUI_RectangleFill(0, 0, 128, 64, back_color);
        LDR.W    R0,??DataTable2
        LDRB     R0,[R0, #+0]
        STR      R0,[SP, #+0]
        MOVS     R3,#+64
        MOVS     R2,#+128
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_RectangleFill
        BL       GUI_RectangleFill
//  345     	return 6;
        MOVS     R0,#+6
        B.N      ??Show_Pic_T_2
//  346     }
//  347     if (Press==K_DOWN&&!Move_Mode)
??Show_Pic_T_3:
        LDR.W    R0,??DataTable2_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??Show_Pic_T_4
        CMP      R4,#+0
        BNE.N    ??Show_Pic_T_4
//  348     {
//  349         Press=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable2_3
        STR      R0,[R1, #+0]
//  350     	GUI_RectangleFill(0, 0, 128, 64, back_color);
        LDR.W    R0,??DataTable2
        LDRB     R0,[R0, #+0]
        STR      R0,[SP, #+0]
        MOVS     R3,#+64
        MOVS     R2,#+128
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_RectangleFill
        BL       GUI_RectangleFill
//  351     	return 1;
        MOVS     R0,#+1
        B.N      ??Show_Pic_T_2
//  352     }
//  353     if (Press==K_MID&&!Move_Mode)
??Show_Pic_T_4:
        LDR.W    R0,??DataTable2_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+5
        BNE.N    ??Show_Pic_T_5
        CMP      R4,#+0
        BNE.N    ??Show_Pic_T_5
//  354     {
//  355        Press=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable2_3
        STR      R0,[R1, #+0]
//  356        GUI_PutString(85,10," MOVE ");
        LDR.W    R2,??DataTable2_22
        MOVS     R1,#+10
        MOVS     R0,#+85
          CFI FunCall GUI_PutString
        BL       GUI_PutString
//  357        Move_Mode=1;//变成移动游标的模式
        MOVS     R0,#+1
        MOVS     R4,R0
//  358     }
//  359     ////////////////////////////////////
//  360     if (Press==K_LEFT&&Move_Mode)
??Show_Pic_T_5:
        LDR.W    R0,??DataTable2_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+3
        BNE.N    ??Show_Pic_T_6
        CMP      R4,#+0
        BEQ.N    ??Show_Pic_T_6
//  361     {
//  362     	Press=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable2_3
        STR      R0,[R1, #+0]
//  363         UI_Pic_X_Line=UI_Pic_X_Line==0?79:UI_Pic_X_Line-1;
        LDR.W    R0,??DataTable2_19
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Show_Pic_T_7
        MOVS     R0,#+79
        LDR.W    R1,??DataTable2_19
        STR      R0,[R1, #+0]
        B.N      ??Show_Pic_T_6
??Show_Pic_T_7:
        LDR.W    R0,??DataTable2_19
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable2_19
        STR      R0,[R1, #+0]
//  364     }
//  365     if (Press==K_RIGHT&&Move_Mode)
??Show_Pic_T_6:
        LDR.W    R0,??DataTable2_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+4
        BNE.N    ??Show_Pic_T_8
        CMP      R4,#+0
        BEQ.N    ??Show_Pic_T_8
//  366     {
//  367     	Press=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable2_3
        STR      R0,[R1, #+0]
//  368         UI_Pic_X_Line=UI_Pic_X_Line==79?0:UI_Pic_X_Line+1;
        LDR.W    R0,??DataTable2_19
        LDR      R0,[R0, #+0]
        CMP      R0,#+79
        BNE.N    ??Show_Pic_T_9
        MOVS     R0,#+0
        LDR.W    R1,??DataTable2_19
        STR      R0,[R1, #+0]
        B.N      ??Show_Pic_T_8
??Show_Pic_T_9:
        LDR.W    R0,??DataTable2_19
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable2_19
        STR      R0,[R1, #+0]
//  369     }
//  370     if (Press==K_UP&&Move_Mode)
??Show_Pic_T_8:
        LDR.W    R0,??DataTable2_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Show_Pic_T_10
        CMP      R4,#+0
        BEQ.N    ??Show_Pic_T_10
//  371     {
//  372     	Press=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable2_3
        STR      R0,[R1, #+0]
//  373         UI_Pic_Y_Line=UI_Pic_Y_Line==1?59:UI_Pic_Y_Line-1;
        LDR.W    R0,??DataTable2_18
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Show_Pic_T_11
        MOVS     R0,#+59
        LDR.W    R1,??DataTable2_18
        STR      R0,[R1, #+0]
        B.N      ??Show_Pic_T_10
??Show_Pic_T_11:
        LDR.W    R0,??DataTable2_18
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable2_18
        STR      R0,[R1, #+0]
//  374     }
//  375     
//  376     if (Press==K_DOWN&&Move_Mode)
??Show_Pic_T_10:
        LDR.N    R0,??DataTable2_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??Show_Pic_T_12
        CMP      R4,#+0
        BEQ.N    ??Show_Pic_T_12
//  377     {
//  378     	Press=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_3
        STR      R0,[R1, #+0]
//  379         UI_Pic_Y_Line=UI_Pic_Y_Line==59?1:UI_Pic_Y_Line+1;
        LDR.W    R0,??DataTable2_18
        LDR      R0,[R0, #+0]
        CMP      R0,#+59
        BNE.N    ??Show_Pic_T_13
        MOVS     R0,#+1
        LDR.N    R1,??DataTable2_18
        STR      R0,[R1, #+0]
        B.N      ??Show_Pic_T_12
??Show_Pic_T_13:
        LDR.N    R0,??DataTable2_18
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable2_18
        STR      R0,[R1, #+0]
//  380     }
//  381     
//  382     if (Press==K_MID&&Move_Mode)
??Show_Pic_T_12:
        LDR.N    R0,??DataTable2_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+5
        BNE.N    ??Show_Pic_T_14
        CMP      R4,#+0
        BEQ.N    ??Show_Pic_T_14
//  383     {
//  384        Press=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_3
        STR      R0,[R1, #+0]
//  385        GUI_PutString(85,10,"      ");
        LDR.N    R2,??DataTable2_23
        MOVS     R1,#+10
        MOVS     R0,#+85
          CFI FunCall GUI_PutString
        BL       GUI_PutString
//  386        
//  387        Move_Mode=0;//变成移动游标的模式
        MOVS     R0,#+0
        MOVS     R4,R0
//  388     }
//  389 
//  390     for(int i=0;i<60;i++)
??Show_Pic_T_14:
        MOVS     R6,#+0
??Show_Pic_T_15:
        CMP      R6,#+60
        BGE.W    ??Show_Pic_T_0
//  391     {
//  392       if(i>=QianZhan)
        LDR.N    R0,??DataTable2_24
        LDRB     R0,[R0, #+0]
        CMP      R6,R0
        BLT.N    ??Show_Pic_T_16
//  393       Pic_show[i][(Search_1_Line_center[i])]=1;
        LDR.N    R0,??DataTable2_35
        MOVS     R1,#+80
        MUL      R1,R1,R6
        ADD      R0,R0,R1
        LDR.N    R1,??DataTable2_12
        LDRSH    R1,[R1, R6, LSL #+1]
        MOVS     R2,#+1
        STRB     R2,[R0, R1]
//  394       
//  395       if(i%5==0)
??Show_Pic_T_16:
        MOVS     R0,#+5
        SDIV     R1,R6,R0
        MLS      R0,R0,R1,R6
        CMP      R0,#+0
        BNE.N    ??Show_Pic_T_17
//  396       {
//  397       Pic_show[i][70]=!Pic_show[i][70];
        LDR.N    R0,??DataTable2_35
        MOVS     R1,#+80
        MUL      R1,R1,R6
        ADD      R0,R0,R1
        LDRB     R0,[R0, #+70]
        CMP      R0,#+0
        BNE.N    ??Show_Pic_T_18
        MOVS     R0,#+1
        B.N      ??Show_Pic_T_19
??Show_Pic_T_18:
        MOVS     R0,#+0
??Show_Pic_T_19:
        LDR.N    R1,??DataTable2_35
        MOVS     R2,#+80
        MUL      R2,R2,R6
        ADD      R1,R1,R2
        STRB     R0,[R1, #+70]
//  398       Pic_show[i][10]=!Pic_show[i][10];
        LDR.N    R0,??DataTable2_35
        MOVS     R1,#+80
        MUL      R1,R1,R6
        ADD      R0,R0,R1
        LDRB     R0,[R0, #+10]
        CMP      R0,#+0
        BNE.N    ??Show_Pic_T_20
        MOVS     R0,#+1
        B.N      ??Show_Pic_T_21
??Show_Pic_T_20:
        MOVS     R0,#+0
??Show_Pic_T_21:
        LDR.N    R1,??DataTable2_35
        MOVS     R2,#+80
        MUL      R2,R2,R6
        ADD      R1,R1,R2
        STRB     R0,[R1, #+10]
//  399       }
//  400       if(i%10==0)
??Show_Pic_T_17:
        MOVS     R0,#+10
        SDIV     R1,R6,R0
        MLS      R0,R0,R1,R6
        CMP      R0,#+0
        BNE.N    ??Show_Pic_T_22
//  401       {
//  402       Pic_show[i][69]=!Pic_show[i][69];
        LDR.N    R0,??DataTable2_35
        MOVS     R1,#+80
        MUL      R1,R1,R6
        ADD      R0,R0,R1
        LDRB     R0,[R0, #+69]
        CMP      R0,#+0
        BNE.N    ??Show_Pic_T_23
        MOVS     R0,#+1
        B.N      ??Show_Pic_T_24
??Show_Pic_T_23:
        MOVS     R0,#+0
??Show_Pic_T_24:
        LDR.N    R1,??DataTable2_35
        MOVS     R2,#+80
        MUL      R2,R2,R6
        ADD      R1,R1,R2
        STRB     R0,[R1, #+69]
//  403       Pic_show[i][68]=!Pic_show[i][68];
        LDR.N    R0,??DataTable2_35
        MOVS     R1,#+80
        MUL      R1,R1,R6
        ADD      R0,R0,R1
        LDRB     R0,[R0, #+68]
        CMP      R0,#+0
        BNE.N    ??Show_Pic_T_25
        MOVS     R0,#+1
        B.N      ??Show_Pic_T_26
??Show_Pic_T_25:
        MOVS     R0,#+0
??Show_Pic_T_26:
        LDR.N    R1,??DataTable2_35
        MOVS     R2,#+80
        MUL      R2,R2,R6
        ADD      R1,R1,R2
        STRB     R0,[R1, #+68]
//  404       Pic_show[i][11]=!Pic_show[i][11];
        LDR.N    R0,??DataTable2_35
        MOVS     R1,#+80
        MUL      R1,R1,R6
        ADD      R0,R0,R1
        LDRB     R0,[R0, #+11]
        CMP      R0,#+0
        BNE.N    ??Show_Pic_T_27
        MOVS     R0,#+1
        B.N      ??Show_Pic_T_28
??Show_Pic_T_27:
        MOVS     R0,#+0
??Show_Pic_T_28:
        LDR.N    R1,??DataTable2_35
        MOVS     R2,#+80
        MUL      R2,R2,R6
        ADD      R1,R1,R2
        STRB     R0,[R1, #+11]
//  405       Pic_show[i][12]=!Pic_show[i][12];
        LDR.N    R0,??DataTable2_35
        MOVS     R1,#+80
        MUL      R1,R1,R6
        ADD      R0,R0,R1
        LDRB     R0,[R0, #+12]
        CMP      R0,#+0
        BNE.N    ??Show_Pic_T_29
        MOVS     R0,#+1
        B.N      ??Show_Pic_T_30
??Show_Pic_T_29:
        MOVS     R0,#+0
??Show_Pic_T_30:
        LDR.N    R1,??DataTable2_35
        MOVS     R2,#+80
        MUL      R2,R2,R6
        ADD      R1,R1,R2
        STRB     R0,[R1, #+12]
//  406       }
//  407       
//  408     
//  409       
//  410 
//  411       
//  412       for(int j=0;j<80;j++)
??Show_Pic_T_22:
        MOVS     R7,#+0
??Show_Pic_T_31:
        CMP      R7,#+80
        BGE.W    ??Show_Pic_T_32
//  413       {
//  414         
//  415         if((i==10||i==50)&&j%5==0)
        CMP      R6,#+10
        BEQ.N    ??Show_Pic_T_33
        CMP      R6,#+50
        BNE.N    ??Show_Pic_T_34
??Show_Pic_T_33:
        MOVS     R0,#+5
        SDIV     R1,R7,R0
        MLS      R0,R0,R1,R7
        CMP      R0,#+0
        BNE.N    ??Show_Pic_T_34
//  416         {
//  417           Pic_show[i][j]=!Pic_show[i][j];
        LDR.N    R0,??DataTable2_35
        MOVS     R1,#+80
        MUL      R1,R1,R6
        ADD      R0,R0,R1
        LDRB     R0,[R0, R7]
        CMP      R0,#+0
        BNE.N    ??Show_Pic_T_35
        MOVS     R0,#+1
        B.N      ??Show_Pic_T_36
??Show_Pic_T_35:
        MOVS     R0,#+0
??Show_Pic_T_36:
        LDR.N    R1,??DataTable2_35
        MOVS     R2,#+80
        MUL      R2,R2,R6
        ADD      R1,R1,R2
        STRB     R0,[R1, R7]
//  418         }
//  419         
//  420         if((i==10||i==50)&&j%10==0)
??Show_Pic_T_34:
        CMP      R6,#+10
        BEQ.N    ??Show_Pic_T_37
        CMP      R6,#+50
        BNE.N    ??Show_Pic_T_38
??Show_Pic_T_37:
        MOVS     R0,#+10
        SDIV     R1,R7,R0
        MLS      R0,R0,R1,R7
        CMP      R0,#+0
        BNE.N    ??Show_Pic_T_38
//  421         {
//  422           Pic_show[i-1][j]=!Pic_show[i-1][j];
        LDR.N    R0,??DataTable2_35
        MOVS     R1,#+80
        MUL      R1,R1,R6
        ADD      R0,R0,R1
        ADD      R0,R0,R7
        LDRB     R0,[R0, #-80]
        CMP      R0,#+0
        BNE.N    ??Show_Pic_T_39
        MOVS     R0,#+1
        B.N      ??Show_Pic_T_40
??Show_Pic_T_39:
        MOVS     R0,#+0
??Show_Pic_T_40:
        LDR.N    R1,??DataTable2_35
        MOVS     R2,#+80
        MUL      R2,R2,R6
        ADD      R1,R1,R2
        ADD      R1,R1,R7
        STRB     R0,[R1, #-80]
//  423           Pic_show[i-2][j]=!Pic_show[i-2][j];
        LDR.N    R0,??DataTable2_35
        MOVS     R1,#+80
        MUL      R1,R1,R6
        ADD      R0,R0,R1
        ADD      R0,R0,R7
        LDRB     R0,[R0, #-160]
        CMP      R0,#+0
        BNE.N    ??Show_Pic_T_41
        MOVS     R0,#+1
        B.N      ??Show_Pic_T_42
??Show_Pic_T_41:
        MOVS     R0,#+0
??Show_Pic_T_42:
        LDR.N    R1,??DataTable2_35
        MOVS     R2,#+80
        MUL      R2,R2,R6
        ADD      R1,R1,R2
        ADD      R1,R1,R7
        STRB     R0,[R1, #-160]
//  424         }
//  425         
//  426         
//  427         
//  428         if(i==UI_Pic_Y_Line||j==UI_Pic_X_Line)
??Show_Pic_T_38:
        LDR.N    R0,??DataTable2_18
        LDR      R0,[R0, #+0]
        CMP      R6,R0
        BEQ.N    ??Show_Pic_T_43
        LDR.N    R0,??DataTable2_19
        LDR      R0,[R0, #+0]
        CMP      R7,R0
        BNE.N    ??Show_Pic_T_44
//  429         {
//  430           Pic_show[i][j]=(i%2)?(j%2)?!Pic_show[i][j]:Pic[i][j]:(j%2)?Pic_show[i][j]:!Pic[i][j];
??Show_Pic_T_43:
        MOVS     R0,#+2
        SDIV     R1,R6,R0
        MLS      R0,R0,R1,R6
        CMP      R0,#+0
        BEQ.N    ??Show_Pic_T_45
        MOVS     R0,#+2
        SDIV     R1,R7,R0
        MLS      R0,R0,R1,R7
        CMP      R0,#+0
        BEQ.N    ??Show_Pic_T_46
        LDR.N    R0,??DataTable2_35
        MOVS     R1,#+80
        MUL      R1,R1,R6
        ADD      R0,R0,R1
        LDRB     R0,[R0, R7]
        CMP      R0,#+0
        BNE.N    ??Show_Pic_T_47
        MOVS     R0,#+1
        B.N      ??Show_Pic_T_48
??Show_Pic_T_47:
        MOVS     R0,#+0
        B.N      ??Show_Pic_T_48
??Show_Pic_T_46:
        LDR.N    R0,??DataTable2_25
        MOVS     R1,#+80
        MUL      R1,R1,R6
        ADD      R0,R0,R1
        LDRB     R0,[R0, R7]
??Show_Pic_T_48:
        B.N      ??Show_Pic_T_49
??Show_Pic_T_45:
        MOVS     R0,#+2
        SDIV     R1,R7,R0
        MLS      R0,R0,R1,R7
        CMP      R0,#+0
        BEQ.N    ??Show_Pic_T_50
        LDR.N    R0,??DataTable2_35
        MOVS     R1,#+80
        MUL      R1,R1,R6
        ADD      R0,R0,R1
        LDRB     R0,[R0, R7]
        B.N      ??Show_Pic_T_51
??Show_Pic_T_50:
        LDR.N    R0,??DataTable2_25
        MOVS     R1,#+80
        MUL      R1,R1,R6
        ADD      R0,R0,R1
        LDRB     R0,[R0, R7]
        CMP      R0,#+0
        BNE.N    ??Show_Pic_T_52
        MOVS     R0,#+1
        B.N      ??Show_Pic_T_51
??Show_Pic_T_52:
        MOVS     R0,#+0
??Show_Pic_T_51:
??Show_Pic_T_49:
        LDR.N    R1,??DataTable2_35
        MOVS     R2,#+80
        MUL      R2,R2,R6
        ADD      R1,R1,R2
        STRB     R0,[R1, R7]
//  431         }
//  432         
//  433         GUI_Point(j,i,Pic_show[i][j]);
??Show_Pic_T_44:
        LDR.N    R0,??DataTable2_35
        MOVS     R1,#+80
        MUL      R1,R1,R6
        ADD      R0,R0,R1
        LDRB     R2,[R0, R7]
        MOVS     R0,R6
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R7
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_Point
        BL       GUI_Point
//  434       }
        ADDS     R7,R7,#+1
        B.N      ??Show_Pic_T_31
//  435               
//  436       for(int j=0;j<80;j++)
??Show_Pic_T_32:
        MOVS     R0,#+0
??Show_Pic_T_53:
        CMP      R0,#+80
        BGE.N    ??Show_Pic_T_54
//  437      {
//  438       Pic_show[i][j]=1;
        MOVS     R1,#+1
        LDR.N    R2,??DataTable2_35
        MOVS     R3,#+80
        MUL      R3,R3,R6
        ADD      R2,R2,R3
        STRB     R1,[R2, R0]
//  439       }
        ADDS     R0,R0,#+1
        B.N      ??Show_Pic_T_53
//  440       
//  441     }
??Show_Pic_T_54:
        ADDS     R6,R6,#+1
        B.N      ??Show_Pic_T_15
//  442 
//  443   }
??Show_Pic_T_2:
        POP      {R1,R4-R7,PC}    ;; return
//  444 }
          CFI EndBlock cfiBlock2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     back_color

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     ?_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     Str_View

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     Press

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     imgbuff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DC32     L_dx

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_6:
        DC32     L_dy

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_7:
        DC32     R_dx

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_8:
        DC32     R_dy

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_9:
        DC32     Mid_X

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_10:
        DC32     Mid_Y

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_11:
        DC32     ?_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_12:
        DC32     Search_1_Line_center

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_13:
        DC32     MID_ERROR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_14:
        DC32     anglenum

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_15:
        DC32     Car_Angle

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_16:
        DC32     ?_2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_17:
        DC32     ?_3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_18:
        DC32     UI_Pic_Y_Line

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_19:
        DC32     UI_Pic_X_Line

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_20:
        DC32     ?_4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_21:
        DC32     ?_5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_22:
        DC32     ?_6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_23:
        DC32     ?_7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_24:
        DC32     QianZhan

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_25:
        DC32     Pic

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_26:
        DC32     ?_8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_27:
        DC32     Seagull_Right

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_28:
        DC32     In_Ring_Flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_29:
        DC32     Seagull_Left

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_30:
        DC32     ?_9

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_31:
        DC32     Rode_Ring

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_32:
        DC32     Seagull_Mid

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_33:
        DC32     Last_Ring

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_34:
        DC32     ?_10

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_35:
        DC32     Pic_show
//  445 

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function Plan_Choose
        THUMB
//  446 int Plan_Choose(void)
//  447 {
Plan_Choose:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
        SUB      SP,SP,#+712
          CFI CFA R13+736
//  448 
//  449   /*保存参数字符串*/
//  450     int Biu_Where=5;//变量修改箭头的位置
        MOVS     R5,#+5
//  451     int How_Much=29;//变量个数
        MOVS     R6,#+29
//  452     
//  453     static int  Copy_Plan_Value=1;//变量复制方案号
//  454     
//  455     static	int Plan_Choose_Case1=0;//界面指针(菜单滚动)
//  456     static	int Plan_Choose_Case2=0;//隐藏指针(指针滚动)
//  457     static	int Plan_Choose_Case3=0;//箭头指针(要修改的那个变量标志)
//  458 	int Sign1=0;//正在修改变量过程的标志
        MOVS     R4,#+0
//  459 	char Str1[31][20];//字符串
//  460 
//  461     char Text_Title[50]={0};
        ADD      R0,SP,#+4
        MOVS     R1,#+52
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
//  462 	char Head[][30]=
//  463 	{
//  464       "PLAN:",
//  465 	};
        ADD      R0,SP,#+56
        LDR.W    R1,??DataTable3_2
        MOVS     R2,#+32
          CFI FunCall __aeabi_memcpy4
        BL       __aeabi_memcpy4
//  466     
//  467     Data_Public_Get();//更新公共变量，获取方案号
          CFI FunCall Data_Public_Get
        BL       Data_Public_Get
//  468     
//  469     sprintf(Head[0],"PLAN:  %d",Plan_Num);
        LDR.W    R0,??DataTable3_3
        LDR      R2,[R0, #+0]
        LDR.W    R1,??DataTable3_4
        ADD      R0,SP,#+56
          CFI FunCall sprintf
        BL       sprintf
//  470     
//  471 	GUI_RectangleFill(0, 0, 128, 64, back_color);//画矩形
        LDR.W    R0,??DataTable3_5
        LDRB     R0,[R0, #+0]
        STR      R0,[SP, #+0]
        MOVS     R3,#+64
        MOVS     R2,#+128
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_RectangleFill
        BL       GUI_RectangleFill
//  472 	GUI_Rectangle(0,0,127,63,1);
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,#+63
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_Rectangle
        BL       GUI_Rectangle
//  473 	GUI_Rectangle(0,0,127,10,1);	
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,#+10
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_Rectangle
        BL       GUI_Rectangle
//  474 	GUI_PutString(53,2,Head[0]);
        ADD      R2,SP,#+56
        MOVS     R1,#+2
        MOVS     R0,#+53
          CFI FunCall GUI_PutString
        BL       GUI_PutString
//  475 	//GUI_PutString(2,54,HEAD);
//  476 	GUI_PutString(Biu_Where,(Plan_Choose_Case3+1)*10+4," > ");//第一次进来需要
        ADR.N    R2,??Plan_Choose_0  ;; " > "
        LDR.W    R0,??DataTable3_6
        LDR      R1,[R0, #+0]
        MOVS     R0,#+10
        MULS     R1,R0,R1
        ADDS     R1,R1,#+14
        MOVS     R0,R5
          CFI FunCall GUI_PutString
        BL       GUI_PutString
//  477 	Press=0;//清除按键键位
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_7
        STR      R0,[R1, #+0]
//  478 	/////////////////////////////////////
//  479     Flash_Read_Plan(Flash_Data_Plan,Plan_Num,-1);    //根据方案号来获取相应的变量
        MOVS     R2,#-1
        LDR.W    R0,??DataTable3_3
        LDR      R1,[R0, #+0]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.W    R0,??DataTable3_8
          CFI FunCall Flash_Read_Plan
        BL       Flash_Read_Plan
//  480     
//  481     for(int i=0;i<30;i++)    //从flash里更新出来的变量保存在Flash_Data_Plan数组内，接下来转存到Vellue_Plan_Choose
        MOVS     R7,#+0
??Plan_Choose_1:
        CMP      R7,#+30
        BGE.N    ??Plan_Choose_2
//  482     {
//  483       Vellue_Plan_Choose[i] =  Flash_Data_Plan[i] >65530?0:Flash_Data_Plan[i];
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, R7, LSL #+2]
        MOVW     R1,#+65531
        CMP      R0,R1
        BCC.N    ??Plan_Choose_3
        MOVS     R0,#+0
        B.N      ??Plan_Choose_4
??Plan_Choose_3:
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, R7, LSL #+2]
??Plan_Choose_4:
          CFI FunCall __aeabi_ui2f
        BL       __aeabi_ui2f
        LDR.W    R1,??DataTable3_9
        STR      R0,[R1, R7, LSL #+2]
//  484     }
        ADDS     R7,R7,#+1
        B.N      ??Plan_Choose_1
//  485 	 /////////////////////////////////////
//  486 	while(1)
//  487 	{
//  488        //按右键，进入copy界面
//  489        if(Press==K_RIGHT&&Sign1==0)
??Plan_Choose_2:
        LDR.W    R0,??DataTable3_7
        LDR      R0,[R0, #+0]
        CMP      R0,#+4
        BNE.N    ??Plan_Choose_5
        CMP      R4,#+0
        BNE.N    ??Plan_Choose_5
//  490        {
//  491          int Copy_Plan=1;
        MOVS     R7,#+1
//  492          while(1)
//  493          {
//  494            Get_Press();//获取按键值
??Plan_Choose_6:
          CFI FunCall Get_Press
        BL       Get_Press
//  495            
//  496            if(Press==K_LEFT||Press==K_RIGHT)//左键右键都退出，不保存
        LDR.W    R0,??DataTable3_7
        LDR      R0,[R0, #+0]
        CMP      R0,#+3
        BEQ.N    ??Plan_Choose_7
        LDR.W    R0,??DataTable3_7
        LDR      R0,[R0, #+0]
        CMP      R0,#+4
        BNE.N    ??Plan_Choose_8
//  497            {
//  498              sprintf(Text_Title,"       ");
??Plan_Choose_7:
        LDR.W    R1,??DataTable3_10
        ADD      R0,SP,#+4
          CFI FunCall sprintf
        BL       sprintf
//  499              GUI_PutString(10,2,Text_Title);
        ADD      R2,SP,#+4
        MOVS     R1,#+2
        MOVS     R0,#+10
          CFI FunCall GUI_PutString
        BL       GUI_PutString
//  500              
//  501              Press=0;//清除按键键位
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_7
        STR      R0,[R1, #+0]
//  502              break;
        B.N      ??Plan_Choose_5
//  503            }
//  504            
//  505            if(Press==K_UP)
??Plan_Choose_8:
        LDR.W    R0,??DataTable3_7
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Plan_Choose_9
//  506            {
//  507            
//  508              if(Copy_Plan==1)
        CMP      R7,#+1
        BNE.N    ??Plan_Choose_10
//  509                Copy_Plan=6;
        MOVS     R0,#+6
        MOVS     R7,R0
        B.N      ??Plan_Choose_9
//  510              else 
//  511                Copy_Plan--;
??Plan_Choose_10:
        SUBS     R7,R7,#+1
//  512            }
//  513            if(Press==K_DOWN)
??Plan_Choose_9:
        LDR.W    R0,??DataTable3_7
        LDR      R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??Plan_Choose_11
//  514            {
//  515              if(Copy_Plan==6)
        CMP      R7,#+6
        BNE.N    ??Plan_Choose_12
//  516                Copy_Plan=1;
        MOVS     R0,#+1
        MOVS     R7,R0
        B.N      ??Plan_Choose_11
//  517              else 
//  518                Copy_Plan++;
??Plan_Choose_12:
        ADDS     R7,R7,#+1
//  519            }
//  520            sprintf(Text_Title,"Cp:%d ->",Copy_Plan);
??Plan_Choose_11:
        MOVS     R2,R7
        LDR.W    R1,??DataTable3_11
        ADD      R0,SP,#+4
          CFI FunCall sprintf
        BL       sprintf
//  521            GUI_PutString(10,2,Text_Title);
        ADD      R2,SP,#+4
        MOVS     R1,#+2
        MOVS     R0,#+10
          CFI FunCall GUI_PutString
        BL       GUI_PutString
//  522            
//  523            if(Press ==K_MID)
        LDR.W    R0,??DataTable3_7
        LDR      R0,[R0, #+0]
        CMP      R0,#+5
        BNE.N    ??Plan_Choose_6
//  524            {
//  525                 Flash_Read_Plan(Flash_Data_Plan,Copy_Plan,-1);
        MOVS     R2,#-1
        MOVS     R0,R7
        MOVS     R1,R0
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.W    R0,??DataTable3_8
          CFI FunCall Flash_Read_Plan
        BL       Flash_Read_Plan
//  526                 for(int i=0;i<30;i++)
        MOVS     R8,#+0
??Plan_Choose_13:
        CMP      R8,#+30
        BGE.N    ??Plan_Choose_14
//  527                 {
//  528                   Vellue_Plan_Choose[i] =  Flash_Data_Plan[i] >65530?0:Flash_Data_Plan[i];
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, R8, LSL #+2]
        MOVW     R1,#+65531
        CMP      R0,R1
        BCC.N    ??Plan_Choose_15
        MOVS     R0,#+0
        B.N      ??Plan_Choose_16
??Plan_Choose_15:
        LDR.W    R0,??DataTable3_8
        LDR      R0,[R0, R8, LSL #+2]
??Plan_Choose_16:
          CFI FunCall __aeabi_ui2f
        BL       __aeabi_ui2f
        LDR.W    R1,??DataTable3_9
        STR      R0,[R1, R8, LSL #+2]
//  529                 }
        ADDS     R8,R8,#+1
        B.N      ??Plan_Choose_13
//  530              sprintf(Text_Title,"  Well ");
??Plan_Choose_14:
        LDR.W    R1,??DataTable3_12
        ADD      R0,SP,#+4
          CFI FunCall sprintf
        BL       sprintf
//  531              GUI_PutString(10,2,Text_Title);
        ADD      R2,SP,#+4
        MOVS     R1,#+2
        MOVS     R0,#+10
          CFI FunCall GUI_PutString
        BL       GUI_PutString
//  532              Press=0;//清除按键键位
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_7
        STR      R0,[R1, #+0]
//  533              break;
//  534            }
//  535          }
//  536        }
//  537 		if ((Press== K_LEFT )&&Sign1==0)//当不在变量修改模式时，左键可退出，并保存参数
??Plan_Choose_5:
        LDR.W    R0,??DataTable3_7
        LDR      R0,[R0, #+0]
        CMP      R0,#+3
        BNE.N    ??Plan_Choose_17
        CMP      R4,#+0
        BNE.N    ??Plan_Choose_17
//  538 		{
//  539 		   GUI_RectangleFill(0, 0, 128, 64, back_color);
        LDR.W    R0,??DataTable3_5
        LDRB     R0,[R0, #+0]
        STR      R0,[SP, #+0]
        MOVS     R3,#+64
        MOVS     R2,#+128
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_RectangleFill
        BL       GUI_RectangleFill
//  540 	
//  541            Press=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_7
        STR      R0,[R1, #+0]
//  542            for(int i=0;i<30;i++)
        MOVS     R7,#+0
??Plan_Choose_18:
        CMP      R7,#+30
        BGE.N    ??Plan_Choose_19
//  543            {
//  544               Flash_Data_Plan[i]  =(uint32) Vellue_Plan_Choose[i];
        LDR.W    R0,??DataTable3_9
        LDR      R0,[R0, R7, LSL #+2]
          CFI FunCall __aeabi_f2uiz
        BL       __aeabi_f2uiz
        LDR.W    R1,??DataTable3_8
        STR      R0,[R1, R7, LSL #+2]
//  545            }
        ADDS     R7,R7,#+1
        B.N      ??Plan_Choose_18
//  546            Flash_Write_Plan(Flash_Data_Plan,Plan_Num);//存入flash
??Plan_Choose_19:
        LDR.W    R0,??DataTable3_3
        LDR      R1,[R0, #+0]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.W    R0,??DataTable3_8
          CFI FunCall Flash_Write_Plan
        BL       Flash_Write_Plan
//  547            
//  548            Data_Get();//从flash里面更新数据
          CFI FunCall Data_Get
        BL       Data_Get
//  549            
//  550 		return 0;
        MOVS     R0,#+0
        B.W      ??Plan_Choose_20
        DATA
??Plan_Choose_0:
        DC8      " > "
        THUMB
//  551 		}
//  552        
//  553        
//  554          //方案UI显示
//  555 		{
//  556           sprintf(Str1[0],  "0 :Angle_P:%5d\0",(int)Vellue_Plan_Choose[0]);
??Plan_Choose_17:
        LDR.W    R0,??DataTable3_9
        LDR      R0,[R0, #+0]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable3_13
        ADD      R0,SP,#+88
          CFI FunCall sprintf
        BL       sprintf
//  557           sprintf(Str1[1],  "1 :Angle_D:%5d\0",(int)Vellue_Plan_Choose[1]);
        LDR.W    R0,??DataTable3_9
        LDR      R0,[R0, #+4]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable3_14
        ADD      R0,SP,#+108
          CFI FunCall sprintf
        BL       sprintf
//  558           sprintf(Str1[2],  "2 :Turn__P:%5d\0",(int)Vellue_Plan_Choose[2]);
        LDR.W    R0,??DataTable3_9
        LDR      R0,[R0, #+8]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable3_15
        ADD      R0,SP,#+128
          CFI FunCall sprintf
        BL       sprintf
//  559           sprintf(Str1[3],  "3 :Turn__G:%5d\0",(int)Vellue_Plan_Choose[3]);
        LDR.W    R0,??DataTable3_9
        LDR      R0,[R0, #+12]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable3_16
        ADD      R0,SP,#+148
          CFI FunCall sprintf
        BL       sprintf
//  560           sprintf(Str1[4],  "4 :Turn__D:%5d\0",(int)Vellue_Plan_Choose[4]);
        LDR.W    R0,??DataTable3_9
        LDR      R0,[R0, #+16]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable3_17
        ADD      R0,SP,#+168
          CFI FunCall sprintf
        BL       sprintf
//  561           sprintf(Str1[5],  "5 :Speed_P:%5d\0",(int)Vellue_Plan_Choose[5]);
        LDR.W    R0,??DataTable3_9
        LDR      R0,[R0, #+20]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable3_18
        ADD      R0,SP,#+188
          CFI FunCall sprintf
        BL       sprintf
//  562           sprintf(Str1[6],  "6 :Speed_I:%5d\0",(int)Vellue_Plan_Choose[6]);
        LDR.W    R0,??DataTable3_9
        LDR      R0,[R0, #+24]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable3_19
        ADD      R0,SP,#+208
          CFI FunCall sprintf
        BL       sprintf
//  563           sprintf(Str1[7],  "7 :speed_h:%5d\0",(int)Vellue_Plan_Choose[7]);
        LDR.W    R0,??DataTable3_9
        LDR      R0,[R0, #+28]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable3_20
        ADD      R0,SP,#+228
          CFI FunCall sprintf
        BL       sprintf
//  564           sprintf(Str1[8],  "8 :speed_m:%5d\0",(int)Vellue_Plan_Choose[8]);
        LDR.W    R0,??DataTable3_9
        LDR      R0,[R0, #+32]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable3_21
        ADD      R0,SP,#+248
          CFI FunCall sprintf
        BL       sprintf
//  565           sprintf(Str1[9],  "9 :speed_L:%5d\0",(int)Vellue_Plan_Choose[9]);
        LDR.W    R0,??DataTable3_9
        LDR      R0,[R0, #+36]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable3_22
        ADD      R0,SP,#+268
          CFI FunCall sprintf
        BL       sprintf
//  566           sprintf(Str1[10], "10:QZ_find:%5d\0",(int)Vellue_Plan_Choose[10]);  //前瞻
        LDR.W    R0,??DataTable3_9
        LDR      R0,[R0, #+40]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable3_23
        ADD      R0,SP,#+288
          CFI FunCall sprintf
        BL       sprintf
//  567           sprintf(Str1[11], "11:Sh_Find:%5d\0",(int)Vellue_Plan_Choose[11]);  //前瞻十字环路
        LDR.W    R0,??DataTable3_9
        LDR      R0,[R0, #+44]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable3_24
        ADD      R0,SP,#+308
          CFI FunCall sprintf
        BL       sprintf
//  568           sprintf(Str1[12], "12:SH_Lnum:%5d\0",(int)Vellue_Plan_Choose[12]);
        LDR.W    R0,??DataTable3_9
        LDR      R0,[R0, #+48]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable3_25
        ADD      R0,SP,#+328
          CFI FunCall sprintf
        BL       sprintf
//  569           sprintf(Str1[13], "13:RingNum:%5d\0",(int)Vellue_Plan_Choose[13]);
        LDR.W    R0,??DataTable3_9
        LDR      R0,[R0, #+52]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable3_26
        ADD      R0,SP,#+348
          CFI FunCall sprintf
        BL       sprintf
//  570           sprintf(Str1[14], "14:RingLr :%5d\0",(int)Vellue_Plan_Choose[14]);
        LDR.W    R0,??DataTable3_9
        LDR      R0,[R0, #+56]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable3_27
        ADD      R0,SP,#+368
          CFI FunCall sprintf
        BL       sprintf
//  571           sprintf(Str1[15], "15:PA__Hou:%5d\0",(int)Vellue_Plan_Choose[15]);
        LDR.W    R0,??DataTable3_9
        LDR      R0,[R0, #+60]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable3_28
        ADD      R0,SP,#+388
          CFI FunCall sprintf
        BL       sprintf
//  572           sprintf(Str1[16], "16:PA_Qian:%5d\0",(int)Vellue_Plan_Choose[16]);
        LDR.W    R0,??DataTable3_9
        LDR      R0,[R0, #+64]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable3_29
        ADD      R0,SP,#+408
          CFI FunCall sprintf
        BL       sprintf
//  573           sprintf(Str1[17], "17:Nothin5:%5d\0",(int)Vellue_Plan_Choose[17]);
        LDR.W    R0,??DataTable3_9
        LDR      R0,[R0, #+68]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable3_30
        ADD      R0,SP,#+428
          CFI FunCall sprintf
        BL       sprintf
//  574           sprintf(Str1[18], "18:Nothin5:%5d\0",(int)Vellue_Plan_Choose[18]);
        LDR.W    R0,??DataTable3_9
        LDR      R0,[R0, #+72]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable3_31
        ADD      R0,SP,#+448
          CFI FunCall sprintf
        BL       sprintf
//  575           sprintf(Str1[19], "19:Nothin5:%5d\0",(int)Vellue_Plan_Choose[19]);
        LDR.W    R0,??DataTable3_9
        LDR      R0,[R0, #+76]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable3_32
        ADD      R0,SP,#+468
          CFI FunCall sprintf
        BL       sprintf
//  576           sprintf(Str1[20], "20:Nothin5:%5d\0",(int)Vellue_Plan_Choose[20]);
        LDR.W    R0,??DataTable3_9
        LDR      R0,[R0, #+80]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable3_33
        ADD      R0,SP,#+488
          CFI FunCall sprintf
        BL       sprintf
//  577           sprintf(Str1[21], "21:Nothin5:%5d\0",(int)Vellue_Plan_Choose[21]);
        LDR.W    R0,??DataTable3_9
        LDR      R0,[R0, #+84]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable3_34
        ADD      R0,SP,#+508
          CFI FunCall sprintf
        BL       sprintf
//  578           sprintf(Str1[22], "22:Nothin5:%5d\0",(int)Vellue_Plan_Choose[22]);
        LDR.W    R0,??DataTable3_9
        LDR      R0,[R0, #+88]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable3_35
        ADD      R0,SP,#+528
          CFI FunCall sprintf
        BL       sprintf
//  579           sprintf(Str1[23], "23:Nothin5:%5d\0",(int)Vellue_Plan_Choose[23]);
        LDR.W    R0,??DataTable3_9
        LDR      R0,[R0, #+92]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable3_36
        ADD      R0,SP,#+548
          CFI FunCall sprintf
        BL       sprintf
//  580           sprintf(Str1[24], "24:Nothin5:%5d\0",(int)Vellue_Plan_Choose[24]);
        LDR.W    R0,??DataTable3_9
        LDR      R0,[R0, #+96]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable3_37
        ADD      R0,SP,#+568
          CFI FunCall sprintf
        BL       sprintf
//  581           sprintf(Str1[25], "25:Nothin5:%5d\0",(int)Vellue_Plan_Choose[25]);
        LDR.W    R0,??DataTable3_9
        LDR      R0,[R0, #+100]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable3_38
        ADD      R0,SP,#+588
          CFI FunCall sprintf
        BL       sprintf
//  582           sprintf(Str1[26], "26:Nothin5:%5d\0",(int)Vellue_Plan_Choose[26]);
        LDR.W    R0,??DataTable3_9
        LDR      R0,[R0, #+104]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable4_1
        ADD      R0,SP,#+608
          CFI FunCall sprintf
        BL       sprintf
//  583           sprintf(Str1[27], "27:Nothin5:%5d\0",(int)Vellue_Plan_Choose[27]);
        LDR.W    R0,??DataTable3_9
        LDR      R0,[R0, #+108]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable4_2
        ADD      R0,SP,#+628
          CFI FunCall sprintf
        BL       sprintf
//  584           sprintf(Str1[28], "28:Nothin5:%5d\0",(int)Vellue_Plan_Choose[28]);
        LDR.W    R0,??DataTable3_9
        LDR      R0,[R0, #+112]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable4_4
        ADD      R0,SP,#+648
          CFI FunCall sprintf
        BL       sprintf
//  585           sprintf(Str1[29], "29:Nothin5:%5d\0",(int)Vellue_Plan_Choose[29]);
        LDR.W    R0,??DataTable3_9
        LDR      R0,[R0, #+116]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable4_6
        ADD      R0,SP,#+668
          CFI FunCall sprintf
        BL       sprintf
//  586 			               
//  587 			if (Press == K_UP)/*向上移动菜单*/
        LDR.W    R0,??DataTable3_7
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.W    ??Plan_Choose_21
//  588 			{
//  589 				if(Sign1==0) //菜单滚动模式
        CMP      R4,#+0
        BNE.W    ??Plan_Choose_22
//  590 				{
//  591 				  GUI_PutString(Biu_Where,(Plan_Choose_Case3+1)*10+4,"   "); //描空上次的>
        ADR.N    R2,??Plan_Choose_23  ;; "   "
        LDR.W    R0,??DataTable3_6
        LDR      R1,[R0, #+0]
        MOVS     R0,#+10
        MULS     R1,R0,R1
        ADDS     R1,R1,#+14
        MOVS     R0,R5
          CFI FunCall GUI_PutString
        BL       GUI_PutString
//  592                   
//  593                   do
//  594                   {
//  595                     if(Plan_Choose_Case2==0&&Plan_Choose_Case3==0&&Plan_Choose_Case1==0)
        LDR.W    R0,??DataTable4_7
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable3_6
        LDR      R1,[R1, #+0]
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable4_8
        LDR      R1,[R1, #+0]
        ORRS     R0,R1,R0
        CMP      R0,#+0
        BNE.N    ??Plan_Choose_24
//  596                     {
//  597                       Plan_Choose_Case3=4;
        MOVS     R0,#+4
        LDR.W    R1,??DataTable3_6
        STR      R0,[R1, #+0]
//  598                       Plan_Choose_Case2=How_Much;
        LDR.W    R0,??DataTable4_7
        STR      R6,[R0, #+0]
//  599                       Plan_Choose_Case1=How_Much-4;
        SUBS     R0,R6,#+4
        LDR.W    R1,??DataTable4_8
        STR      R0,[R1, #+0]
//  600                       break;
        B.N      ??Plan_Choose_25
//  601                     }
//  602                     
//  603                     Plan_Choose_Case2=Plan_Choose_Case2<=0?0:Plan_Choose_Case2-1;               //数据标志限位
??Plan_Choose_24:
        LDR.W    R0,??DataTable4_7
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BGE.N    ??Plan_Choose_26
        MOVS     R0,#+0
        LDR.W    R1,??DataTable4_7
        STR      R0,[R1, #+0]
        B.N      ??Plan_Choose_27
??Plan_Choose_26:
        LDR.W    R0,??DataTable4_7
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable4_7
        STR      R0,[R1, #+0]
//  604                     if(Plan_Choose_Case3==0)                            //只有当箭头在最高层的时候，才允许菜单滚动
??Plan_Choose_27:
        LDR.W    R0,??DataTable3_6
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Plan_Choose_28
//  605                       Plan_Choose_Case1=Plan_Choose_Case1<=0?0:Plan_Choose_Case1-1;             //菜单滚动限位
        LDR.W    R0,??DataTable4_8
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BGE.N    ??Plan_Choose_29
        MOVS     R0,#+0
        LDR.W    R1,??DataTable4_8
        STR      R0,[R1, #+0]
        B.N      ??Plan_Choose_28
??Plan_Choose_29:
        LDR.W    R0,??DataTable4_8
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable4_8
        STR      R0,[R1, #+0]
//  606                     Plan_Choose_Case3=Plan_Choose_Case3<=0?0:Plan_Choose_Case3-1;               //箭头滚动限位
??Plan_Choose_28:
        LDR.W    R0,??DataTable3_6
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BGE.N    ??Plan_Choose_30
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_6
        STR      R0,[R1, #+0]
        B.N      ??Plan_Choose_31
??Plan_Choose_30:
        LDR.W    R0,??DataTable3_6
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable3_6
        STR      R0,[R1, #+0]
//  607                     Plan_Choose_Case2=Plan_Choose_Case2<0?0:Plan_Choose_Case2>How_Much?How_Much:Plan_Choose_Case2;      //再次限位
??Plan_Choose_31:
        LDR.W    R0,??DataTable4_7
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BPL.N    ??Plan_Choose_32
        MOVS     R0,#+0
        LDR.W    R1,??DataTable4_7
        STR      R0,[R1, #+0]
        B.N      ??Plan_Choose_33
??Plan_Choose_32:
        LDR.W    R0,??DataTable4_7
        LDR      R0,[R0, #+0]
        CMP      R6,R0
        BGE.N    ??Plan_Choose_34
        LDR.W    R0,??DataTable4_7
        STR      R6,[R0, #+0]
        B.N      ??Plan_Choose_33
??Plan_Choose_34:
        LDR.W    R0,??DataTable4_7
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable4_7
        STR      R0,[R1, #+0]
//  608                   }while(0);
//  609 				  GUI_PutString(Biu_Where,(Plan_Choose_Case3+1)*10+4," > "); //描绘箭头
??Plan_Choose_33:
??Plan_Choose_25:
        ADR.N    R2,??Plan_Choose_35  ;; " > "
        LDR.W    R0,??DataTable3_6
        LDR      R1,[R0, #+0]
        MOVS     R0,#+10
        MULS     R1,R0,R1
        ADDS     R1,R1,#+14
        MOVS     R0,R5
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        B.N      ??Plan_Choose_36
//  610 				}
//  611 				else 				        //修改变量模式
//  612 				{
//  613                   
//  614                   if(Plan_Choose_Case2==4)
??Plan_Choose_22:
        LDR.W    R0,??DataTable4_7
        LDR      R0,[R0, #+0]
        CMP      R0,#+4
        BNE.N    ??Plan_Choose_37
//  615                   {
//  616                   Vellue_Plan_Choose[Plan_Choose_Case2]+=1;
        LDR.W    R0,??DataTable3_9
        LDR.W    R1,??DataTable4_7
        LDR      R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        MOVS     R1,#+1065353216
          CFI FunCall __aeabi_fadd
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable3_9
        LDR.W    R2,??DataTable4_7
        LDR      R2,[R2, #+0]
        STR      R0,[R1, R2, LSL #+2]
        B.N      ??Plan_Choose_38
//  617                   }
//  618 				  else 
//  619                   Vellue_Plan_Choose[Plan_Choose_Case2]++;                        //此处可修改变量增减步伐
??Plan_Choose_37:
        LDR.W    R0,??DataTable3_9
        LDR.W    R1,??DataTable4_7
        LDR      R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        MOVS     R1,#+1065353216
          CFI FunCall __aeabi_fadd
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable3_9
        LDR.W    R2,??DataTable4_7
        LDR      R2,[R2, #+0]
        STR      R0,[R1, R2, LSL #+2]
//  620                   if(Vellue_Plan_Choose[Plan_Choose_Case2]<0)
??Plan_Choose_38:
        LDR.W    R0,??DataTable3_9
        LDR.W    R1,??DataTable4_7
        LDR      R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        MOVS     R1,#+0
          CFI FunCall __aeabi_cfcmple
        BL       __aeabi_cfcmple
        BCS.N    ??Plan_Choose_39
//  621                      Vellue_Plan_Choose[Plan_Choose_Case2]=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_9
        LDR.W    R2,??DataTable4_7
        LDR      R2,[R2, #+0]
        STR      R0,[R1, R2, LSL #+2]
//  622                   if(Vellue_Plan_Choose[Plan_Choose_Case2]>65530)
??Plan_Choose_39:
        LDR.W    R0,??DataTable3_9
        LDR.W    R1,??DataTable4_7
        LDR      R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        LDR.W    R1,??DataTable4_9  ;; 0x477ffa01
          CFI FunCall __aeabi_cfrcmple
        BL       __aeabi_cfrcmple
        BHI.N    ??Plan_Choose_36
//  623                      Vellue_Plan_Choose[Plan_Choose_Case2]=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_9
        LDR.W    R2,??DataTable4_7
        LDR      R2,[R2, #+0]
        STR      R0,[R1, R2, LSL #+2]
//  624 				}
//  625                 Press=0;
??Plan_Choose_36:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_7
        STR      R0,[R1, #+0]
//  626 			}
//  627 			if (Press == K_DOWN)/*向下移动菜单*/
??Plan_Choose_21:
        LDR.W    R0,??DataTable3_7
        LDR      R0,[R0, #+0]
        CMP      R0,#+2
        BNE.W    ??Plan_Choose_40
//  628 			{
//  629 				if (Sign1==0)//菜单滚动模式
        CMP      R4,#+0
        BNE.N    ??Plan_Choose_41
//  630 				{
//  631 					GUI_PutString(Biu_Where,(Plan_Choose_Case3+1)*10+4,"   "); //描空上次的>
        ADR.N    R2,??Plan_Choose_23  ;; "   "
        LDR.W    R0,??DataTable3_6
        LDR      R1,[R0, #+0]
        MOVS     R0,#+10
        MULS     R1,R0,R1
        ADDS     R1,R1,#+14
        MOVS     R0,R5
          CFI FunCall GUI_PutString
        BL       GUI_PutString
//  632                     do
//  633                     {
//  634                       if(Plan_Choose_Case2==How_Much&&Plan_Choose_Case3==4&&Plan_Choose_Case1==How_Much-4)
        LDR.W    R0,??DataTable4_7
        LDR      R0,[R0, #+0]
        CMP      R0,R6
        BNE.N    ??Plan_Choose_42
        LDR.W    R0,??DataTable3_6
        LDR      R0,[R0, #+0]
        CMP      R0,#+4
        BNE.N    ??Plan_Choose_42
        LDR.W    R0,??DataTable4_8
        LDR      R0,[R0, #+0]
        SUBS     R1,R6,#+4
        CMP      R0,R1
        BNE.N    ??Plan_Choose_42
//  635                       {
//  636                         Plan_Choose_Case3=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_6
        STR      R0,[R1, #+0]
//  637                         Plan_Choose_Case2=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable4_7
        STR      R0,[R1, #+0]
//  638                         Plan_Choose_Case1=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable4_8
        STR      R0,[R1, #+0]
//  639                         break;
        B.N      ??Plan_Choose_43
//  640                       }
//  641                       Plan_Choose_Case2=Plan_Choose_Case2>=How_Much?How_Much:Plan_Choose_Case2+1;             //数据标志限位
??Plan_Choose_42:
        LDR.W    R0,??DataTable4_7
        LDR      R0,[R0, #+0]
        CMP      R0,R6
        BLT.N    ??Plan_Choose_44
        LDR.W    R0,??DataTable4_7
        STR      R6,[R0, #+0]
        B.N      ??Plan_Choose_45
??Plan_Choose_44:
        LDR.W    R0,??DataTable4_7
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable4_7
        STR      R0,[R1, #+0]
//  642                       if(Plan_Choose_Case3==4)                            //只有当箭头在最底层的时候，才允许菜单滚动
??Plan_Choose_45:
        LDR.W    R0,??DataTable3_6
        LDR      R0,[R0, #+0]
        CMP      R0,#+4
        BNE.N    ??Plan_Choose_46
//  643                         Plan_Choose_Case1=Plan_Choose_Case1>=How_Much-4?How_Much-4:Plan_Choose_Case1+1;           //菜单滚动限位
        LDR.W    R0,??DataTable4_8
        LDR      R0,[R0, #+0]
        SUBS     R1,R6,#+4
        CMP      R0,R1
        BLT.N    ??Plan_Choose_47
        SUBS     R0,R6,#+4
        LDR.W    R1,??DataTable4_8
        STR      R0,[R1, #+0]
        B.N      ??Plan_Choose_46
??Plan_Choose_47:
        LDR.W    R0,??DataTable4_8
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable4_8
        STR      R0,[R1, #+0]
//  644                       Plan_Choose_Case3=Plan_Choose_Case3>=4?4:Plan_Choose_Case3+1;               //箭头滚动限位
??Plan_Choose_46:
        LDR.N    R0,??DataTable3_6
        LDR      R0,[R0, #+0]
        CMP      R0,#+4
        BLT.N    ??Plan_Choose_48
        MOVS     R0,#+4
        LDR.N    R1,??DataTable3_6
        STR      R0,[R1, #+0]
        B.N      ??Plan_Choose_49
??Plan_Choose_48:
        LDR.N    R0,??DataTable3_6
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable3_6
        STR      R0,[R1, #+0]
//  645                       Plan_Choose_Case2=Plan_Choose_Case2<0?0:Plan_Choose_Case2>How_Much?How_Much:Plan_Choose_Case2;      //再次限位
??Plan_Choose_49:
        LDR.W    R0,??DataTable4_7
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BPL.N    ??Plan_Choose_50
        MOVS     R0,#+0
        LDR.W    R1,??DataTable4_7
        STR      R0,[R1, #+0]
        B.N      ??Plan_Choose_51
??Plan_Choose_50:
        LDR.W    R0,??DataTable4_7
        LDR      R0,[R0, #+0]
        CMP      R6,R0
        BGE.N    ??Plan_Choose_52
        LDR.W    R0,??DataTable4_7
        STR      R6,[R0, #+0]
        B.N      ??Plan_Choose_51
??Plan_Choose_52:
        LDR.W    R0,??DataTable4_7
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable4_7
        STR      R0,[R1, #+0]
//  646                     }while(0);
//  647 					GUI_PutString(Biu_Where,(Plan_Choose_Case3+1)*10+4," > "); //描绘箭头
??Plan_Choose_51:
??Plan_Choose_43:
        ADR.N    R2,??Plan_Choose_35  ;; " > "
        LDR.N    R0,??DataTable3_6
        LDR      R1,[R0, #+0]
        MOVS     R0,#+10
        MULS     R1,R0,R1
        ADDS     R1,R1,#+14
        MOVS     R0,R5
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        B.N      ??Plan_Choose_53
//  648 			  	}
//  649 				else                                      //修改变量模式
//  650 				{
//  651                   if(Plan_Choose_Case2==4)
??Plan_Choose_41:
        LDR.W    R0,??DataTable4_7
        LDR      R0,[R0, #+0]
        CMP      R0,#+4
        BNE.N    ??Plan_Choose_54
//  652                   {
//  653                   Vellue_Plan_Choose[Plan_Choose_Case2]-=1;
        LDR.N    R0,??DataTable3_9
        LDR.W    R1,??DataTable4_7
        LDR      R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        LDR.W    R1,??DataTable4_10  ;; 0xbf800000
          CFI FunCall __aeabi_fadd
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable3_9
        LDR.W    R2,??DataTable4_7
        LDR      R2,[R2, #+0]
        STR      R0,[R1, R2, LSL #+2]
        B.N      ??Plan_Choose_55
        Nop      
        DATA
??Plan_Choose_23:
        DC8      "   "
        THUMB
//  654                   }
//  655                   else 
//  656 				  Vellue_Plan_Choose[Plan_Choose_Case2]--;                       //此处可修改变量增减步伐
??Plan_Choose_54:
        LDR.N    R0,??DataTable3_9
        LDR.W    R1,??DataTable4_7
        LDR      R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        LDR.W    R1,??DataTable4_10  ;; 0xbf800000
          CFI FunCall __aeabi_fadd
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable3_9
        LDR.W    R2,??DataTable4_7
        LDR      R2,[R2, #+0]
        STR      R0,[R1, R2, LSL #+2]
//  657                   
//  658                   if(Vellue_Plan_Choose[Plan_Choose_Case2]<0)
??Plan_Choose_55:
        LDR.N    R0,??DataTable3_9
        LDR.W    R1,??DataTable4_7
        LDR      R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        MOVS     R1,#+0
          CFI FunCall __aeabi_cfcmple
        BL       __aeabi_cfcmple
        BCS.N    ??Plan_Choose_56
//  659                      Vellue_Plan_Choose[Plan_Choose_Case2]=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_9
        LDR.W    R2,??DataTable4_7
        LDR      R2,[R2, #+0]
        STR      R0,[R1, R2, LSL #+2]
//  660                   if(Vellue_Plan_Choose[Plan_Choose_Case2]>65530)
??Plan_Choose_56:
        LDR.N    R0,??DataTable3_9
        LDR.W    R1,??DataTable4_7
        LDR      R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        LDR.W    R1,??DataTable4_9  ;; 0x477ffa01
          CFI FunCall __aeabi_cfrcmple
        BL       __aeabi_cfrcmple
        BHI.N    ??Plan_Choose_53
//  661                      Vellue_Plan_Choose[Plan_Choose_Case2]=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_9
        LDR.W    R2,??DataTable4_7
        LDR      R2,[R2, #+0]
        STR      R0,[R1, R2, LSL #+2]
//  662 				}
//  663                 
//  664                 Press=0;
??Plan_Choose_53:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_7
        STR      R0,[R1, #+0]
//  665 			}
//  666 			if((Press ==K_MID)&&Sign1==0)/*按中间键进入变量修改模式*/
??Plan_Choose_40:
        LDR.N    R0,??DataTable3_7
        LDR      R0,[R0, #+0]
        CMP      R0,#+5
        BNE.N    ??Plan_Choose_57
        CMP      R4,#+0
        BNE.N    ??Plan_Choose_57
//  667 			{
//  668 				Sign1=1;                                      //变量修改标志
        MOVS     R0,#+1
        MOVS     R4,R0
//  669                 Press=0;                                      //清空键值
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_7
        STR      R0,[R1, #+0]
//  670 				GUI_PutString(Biu_Where,(Plan_Choose_Case3+1)*10+4,"   ");       //清空箭头
        ADR.N    R2,??DataTable3  ;; "   "
        LDR.N    R0,??DataTable3_6
        LDR      R1,[R0, #+0]
        MOVS     R0,#+10
        MULS     R1,R0,R1
        ADDS     R1,R1,#+14
        MOVS     R0,R5
          CFI FunCall GUI_PutString
        BL       GUI_PutString
//  671 				GUI_PutString(Biu_Where,(Plan_Choose_Case3+1)*10+4,"-> ");       //变量修改指示
        ADR.N    R2,??DataTable3_1  ;; "-> "
        LDR.N    R0,??DataTable3_6
        LDR      R1,[R0, #+0]
        MOVS     R0,#+10
        MULS     R1,R0,R1
        ADDS     R1,R1,#+14
        MOVS     R0,R5
          CFI FunCall GUI_PutString
        BL       GUI_PutString
//  672 			}
//  673 			if ((Press ==K_MID )&&Sign1==1)/*变量修改模式下*/
??Plan_Choose_57:
        LDR.N    R0,??DataTable3_7
        LDR      R0,[R0, #+0]
        CMP      R0,#+5
        BNE.N    ??Plan_Choose_58
        CMP      R4,#+1
        BNE.N    ??Plan_Choose_58
//  674 			{
//  675                 sprintf(Text_Title,"       \0");
        LDR.W    R1,??DataTable4_11
        ADD      R0,SP,#+4
          CFI FunCall sprintf
        BL       sprintf
//  676                 GUI_PutString(10,2,Text_Title);
        ADD      R2,SP,#+4
        MOVS     R1,#+2
        MOVS     R0,#+10
          CFI FunCall GUI_PutString
        BL       GUI_PutString
//  677 				GUI_PutString(Biu_Where,(Plan_Choose_Case3+1)*10+4,"   ");
        ADR.N    R2,??DataTable3  ;; "   "
        LDR.N    R0,??DataTable3_6
        LDR      R1,[R0, #+0]
        MOVS     R0,#+10
        MULS     R1,R0,R1
        ADDS     R1,R1,#+14
        MOVS     R0,R5
          CFI FunCall GUI_PutString
        BL       GUI_PutString
//  678 			    GUI_PutString(Biu_Where,(Plan_Choose_Case3+1)*10+4," > ");    
        ADR.N    R2,??Plan_Choose_35  ;; " > "
        LDR.N    R0,??DataTable3_6
        LDR      R1,[R0, #+0]
        MOVS     R0,#+10
        MULS     R1,R0,R1
        ADDS     R1,R1,#+14
        MOVS     R0,R5
          CFI FunCall GUI_PutString
        BL       GUI_PutString
//  679                 Sign1=0;                                //复位修改模式标志位
        MOVS     R0,#+0
        MOVS     R4,R0
//  680                 Press=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_7
        STR      R0,[R1, #+0]
//  681 			}			
//  682             if((Press ==K_RIGHT )&&Sign1==1)//在修改变量模式下，向右按，进入复制模式
??Plan_Choose_58:
        LDR.N    R0,??DataTable3_7
        B.N      ??Plan_Choose_59
        DATA
??Plan_Choose_35:
        DC8      " > "
        THUMB
??Plan_Choose_59:
        LDR      R0,[R0, #+0]
        CMP      R0,#+4
        BNE.N    ??Plan_Choose_60
        CMP      R4,#+1
        BNE.N    ??Plan_Choose_60
//  683             {
//  684                 Copy_Plan_Value++;
        LDR.W    R0,??DataTable5
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable5
        STR      R0,[R1, #+0]
//  685                 Copy_Plan_Value%=6;
        MOVS     R0,#+6
        LDR.W    R1,??DataTable5
        LDR      R1,[R1, #+0]
        LDR.W    R2,??DataTable5
        LDR      R2,[R2, #+0]
        SDIV     R2,R2,R0
        MLS      R0,R0,R2,R1
        LDR.W    R1,??DataTable5
        STR      R0,[R1, #+0]
//  686                 
//  687                 sprintf(Text_Title,"cp:%d ->",Copy_Plan_Value+1);
        LDR.W    R0,??DataTable5
        LDR      R2,[R0, #+0]
        ADDS     R2,R2,#+1
        LDR.W    R1,??DataTable5_1
        ADD      R0,SP,#+4
          CFI FunCall sprintf
        BL       sprintf
//  688                 GUI_PutString(10,2,Text_Title);
        ADD      R2,SP,#+4
        MOVS     R1,#+2
        MOVS     R0,#+10
          CFI FunCall GUI_PutString
        BL       GUI_PutString
//  689                 Vellue_Plan_Choose[Plan_Choose_Case2] = Flash_Read_Plan(Flash_Data_Plan,Copy_Plan_Value+1,Plan_Choose_Case2) ;
        LDR.W    R0,??DataTable4_7
        LDR      R2,[R0, #+0]
        LDR.W    R0,??DataTable5
        LDR      R1,[R0, #+0]
        ADDS     R1,R1,#+1
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.N    R0,??DataTable3_8
          CFI FunCall Flash_Read_Plan
        BL       Flash_Read_Plan
          CFI FunCall __aeabi_ui2f
        BL       __aeabi_ui2f
        LDR.N    R1,??DataTable3_9
        LDR.W    R2,??DataTable4_7
        LDR      R2,[R2, #+0]
        STR      R0,[R1, R2, LSL #+2]
//  690               
//  691                 Press=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_7
        STR      R0,[R1, #+0]
//  692             }
//  693             if((Press ==K_LEFT )&&Sign1==1)//在修改变量模式下，向左按，进入复制模式
??Plan_Choose_60:
        LDR.N    R0,??DataTable3_7
        LDR      R0,[R0, #+0]
        CMP      R0,#+3
        BNE.N    ??Plan_Choose_61
        CMP      R4,#+1
        BNE.N    ??Plan_Choose_61
//  694             {
//  695               
//  696               if(Copy_Plan_Value<=0)
        LDR.W    R0,??DataTable5
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BGE.N    ??Plan_Choose_62
//  697                 Copy_Plan_Value=5;
        MOVS     R0,#+5
        LDR.W    R1,??DataTable5
        STR      R0,[R1, #+0]
        B.N      ??Plan_Choose_63
//  698               else 
//  699                 Copy_Plan_Value--;
??Plan_Choose_62:
        LDR.W    R0,??DataTable5
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable5
        STR      R0,[R1, #+0]
//  700               
//  701                 sprintf(Text_Title,"cp:%d ->",Copy_Plan_Value+1);
??Plan_Choose_63:
        LDR.W    R0,??DataTable5
        LDR      R2,[R0, #+0]
        ADDS     R2,R2,#+1
        LDR.W    R1,??DataTable5_1
        ADD      R0,SP,#+4
          CFI FunCall sprintf
        BL       sprintf
//  702                 GUI_PutString(10,2,Text_Title);
        ADD      R2,SP,#+4
        MOVS     R1,#+2
        MOVS     R0,#+10
          CFI FunCall GUI_PutString
        BL       GUI_PutString
//  703                 Vellue_Plan_Choose[Plan_Choose_Case2] = Flash_Read_Plan(Flash_Data_Plan,Copy_Plan_Value+1,Plan_Choose_Case2) ;
        LDR.W    R0,??DataTable4_7
        LDR      R2,[R0, #+0]
        LDR.W    R0,??DataTable5
        LDR      R1,[R0, #+0]
        ADDS     R1,R1,#+1
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.N    R0,??DataTable3_8
          CFI FunCall Flash_Read_Plan
        BL       Flash_Read_Plan
          CFI FunCall __aeabi_ui2f
        BL       __aeabi_ui2f
        LDR.N    R1,??DataTable3_9
        LDR.W    R2,??DataTable4_7
        LDR      R2,[R2, #+0]
        STR      R0,[R1, R2, LSL #+2]
//  704                 Press=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_7
        STR      R0,[R1, #+0]
//  705             }    
//  706             
//  707 			GUI_PutString(23,14,Str1[0+Plan_Choose_Case1]);//菜单显示
??Plan_Choose_61:
        ADD      R1,SP,#+88
        LDR.W    R0,??DataTable4_8
        LDR      R2,[R0, #+0]
        MOVS     R0,#+20
        MULS     R2,R0,R2
        ADD      R2,R1,R2
        MOVS     R1,#+14
        MOVS     R0,#+23
          CFI FunCall GUI_PutString
        BL       GUI_PutString
//  708 			GUI_PutString(23,24,Str1[1+Plan_Choose_Case1]);//
        ADD      R1,SP,#+88
        LDR.W    R0,??DataTable4_8
        LDR      R2,[R0, #+0]
        MOVS     R0,#+20
        MULS     R2,R0,R2
        ADD      R0,R1,R2
        ADDS     R2,R0,#+20
        MOVS     R1,#+24
        MOVS     R0,#+23
          CFI FunCall GUI_PutString
        BL       GUI_PutString
//  709 			GUI_PutString(23,34,Str1[2+Plan_Choose_Case1]);//
        ADD      R1,SP,#+88
        LDR.W    R0,??DataTable4_8
        LDR      R2,[R0, #+0]
        MOVS     R0,#+20
        MULS     R2,R0,R2
        ADD      R0,R1,R2
        ADDS     R2,R0,#+40
        MOVS     R1,#+34
        MOVS     R0,#+23
          CFI FunCall GUI_PutString
        BL       GUI_PutString
//  710 			GUI_PutString(23,44,Str1[3+Plan_Choose_Case1]);//
        ADD      R1,SP,#+88
        LDR.W    R0,??DataTable4_8
        LDR      R2,[R0, #+0]
        MOVS     R0,#+20
        MULS     R2,R0,R2
        ADD      R0,R1,R2
        ADDS     R2,R0,#+60
        MOVS     R1,#+44
        MOVS     R0,#+23
          CFI FunCall GUI_PutString
        BL       GUI_PutString
//  711 			GUI_PutString(23,54,Str1[4+Plan_Choose_Case1]);//
        ADD      R1,SP,#+88
        LDR.W    R0,??DataTable4_8
        LDR      R2,[R0, #+0]
        MOVS     R0,#+20
        MULS     R2,R0,R2
        ADD      R0,R1,R2
        ADDS     R2,R0,#+80
        MOVS     R1,#+54
        MOVS     R0,#+23
          CFI FunCall GUI_PutString
        BL       GUI_PutString
//  712 		}//else
//  713 		Get_Press();//获取按键值
          CFI FunCall Get_Press
        BL       Get_Press
        B.W      ??Plan_Choose_2
//  714 	}//while(1)
??Plan_Choose_20:
        ADD      SP,SP,#+712
          CFI CFA R13+24
        POP      {R4-R8,PC}       ;; return
//  715 }
          CFI EndBlock cfiBlock3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC8      "   "

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC8      "-> "

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     ?_175

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     Plan_Num

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DC32     ?_12

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_5:
        DC32     back_color

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_6:
        DC32     `Plan_Choose::Plan_Choose_Case3`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_7:
        DC32     Press

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_8:
        DC32     Flash_Data_Plan

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_9:
        DC32     Vellue_Plan_Choose

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_10:
        DC32     ?_14

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_11:
        DC32     ?_15

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_12:
        DC32     ?_16

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_13:
        DC32     ?_17

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_14:
        DC32     ?_18

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_15:
        DC32     ?_19

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_16:
        DC32     ?_20

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_17:
        DC32     ?_21

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_18:
        DC32     ?_22

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_19:
        DC32     ?_23

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_20:
        DC32     ?_24

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_21:
        DC32     ?_25

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_22:
        DC32     ?_26

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_23:
        DC32     ?_27

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_24:
        DC32     ?_28

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_25:
        DC32     ?_29

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_26:
        DC32     ?_30

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_27:
        DC32     ?_31

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_28:
        DC32     ?_32

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_29:
        DC32     ?_33

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_30:
        DC32     ?_34

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_31:
        DC32     ?_35

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_32:
        DC32     ?_36

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_33:
        DC32     ?_37

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_34:
        DC32     ?_38

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_35:
        DC32     ?_39

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_36:
        DC32     ?_40

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_37:
        DC32     ?_41

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_38:
        DC32     ?_42

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
`Plan_Choose::Copy_Plan_Value`:
        DC32 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`Plan_Choose::Plan_Choose_Case1`:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`Plan_Choose::Plan_Choose_Case2`:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`Plan_Choose::Plan_Choose_Case3`:
        DS8 4

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_0:
        DC8 "Original"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_1:
        DC8 "Filter"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_2:
        DC8 "E:%5d"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_3:
        DC8 "E:%5d "
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_4:
        DC8 "X:%5d "
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_5:
        DC8 "Y:%5d "
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_6:
        DC8 " MOVE "
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_7:
        DC8 "      "
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_8:
        DC8 "PicShow"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_9:
        DC8 "%02d %d %02d"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_10:
        DC8 "%d %02d %d"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_12:
        DC8 "PLAN:  %d"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 " > "

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_14:
        DC8 "       "

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_15:
        DC8 "Cp:%d ->"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_16:
        DC8 "  Well "

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_17:
        DC8 30H, 20H, 3AH, 41H, 6EH, 67H, 6CH, 65H
        DC8 5FH, 50H, 3AH, 25H, 35H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_18:
        DC8 31H, 20H, 3AH, 41H, 6EH, 67H, 6CH, 65H
        DC8 5FH, 44H, 3AH, 25H, 35H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_19:
        DC8 32H, 20H, 3AH, 54H, 75H, 72H, 6EH, 5FH
        DC8 5FH, 50H, 3AH, 25H, 35H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_20:
        DC8 33H, 20H, 3AH, 54H, 75H, 72H, 6EH, 5FH
        DC8 5FH, 47H, 3AH, 25H, 35H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_21:
        DC8 34H, 20H, 3AH, 54H, 75H, 72H, 6EH, 5FH
        DC8 5FH, 44H, 3AH, 25H, 35H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_22:
        DC8 35H, 20H, 3AH, 53H, 70H, 65H, 65H, 64H
        DC8 5FH, 50H, 3AH, 25H, 35H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_23:
        DC8 36H, 20H, 3AH, 53H, 70H, 65H, 65H, 64H
        DC8 5FH, 49H, 3AH, 25H, 35H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_24:
        DC8 37H, 20H, 3AH, 73H, 70H, 65H, 65H, 64H
        DC8 5FH, 68H, 3AH, 25H, 35H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_25:
        DC8 38H, 20H, 3AH, 73H, 70H, 65H, 65H, 64H
        DC8 5FH, 6DH, 3AH, 25H, 35H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_26:
        DC8 39H, 20H, 3AH, 73H, 70H, 65H, 65H, 64H
        DC8 5FH, 4CH, 3AH, 25H, 35H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_27:
        DC8 31H, 30H, 3AH, 51H, 5AH, 5FH, 66H, 69H
        DC8 6EH, 64H, 3AH, 25H, 35H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_28:
        DC8 31H, 31H, 3AH, 53H, 68H, 5FH, 46H, 69H
        DC8 6EH, 64H, 3AH, 25H, 35H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_29:
        DC8 31H, 32H, 3AH, 53H, 48H, 5FH, 4CH, 6EH
        DC8 75H, 6DH, 3AH, 25H, 35H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_30:
        DC8 31H, 33H, 3AH, 52H, 69H, 6EH, 67H, 4EH
        DC8 75H, 6DH, 3AH, 25H, 35H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_31:
        DC8 31H, 34H, 3AH, 52H, 69H, 6EH, 67H, 4CH
        DC8 72H, 20H, 3AH, 25H, 35H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_32:
        DC8 31H, 35H, 3AH, 50H, 41H, 5FH, 5FH, 48H
        DC8 6FH, 75H, 3AH, 25H, 35H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_33:
        DC8 31H, 36H, 3AH, 50H, 41H, 5FH, 51H, 69H
        DC8 61H, 6EH, 3AH, 25H, 35H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_34:
        DC8 31H, 37H, 3AH, 4EH, 6FH, 74H, 68H, 69H
        DC8 6EH, 35H, 3AH, 25H, 35H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_35:
        DC8 31H, 38H, 3AH, 4EH, 6FH, 74H, 68H, 69H
        DC8 6EH, 35H, 3AH, 25H, 35H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_36:
        DC8 31H, 39H, 3AH, 4EH, 6FH, 74H, 68H, 69H
        DC8 6EH, 35H, 3AH, 25H, 35H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_37:
        DC8 32H, 30H, 3AH, 4EH, 6FH, 74H, 68H, 69H
        DC8 6EH, 35H, 3AH, 25H, 35H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_38:
        DC8 32H, 31H, 3AH, 4EH, 6FH, 74H, 68H, 69H
        DC8 6EH, 35H, 3AH, 25H, 35H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_39:
        DC8 32H, 32H, 3AH, 4EH, 6FH, 74H, 68H, 69H
        DC8 6EH, 35H, 3AH, 25H, 35H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_40:
        DC8 32H, 33H, 3AH, 4EH, 6FH, 74H, 68H, 69H
        DC8 6EH, 35H, 3AH, 25H, 35H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_41:
        DC8 32H, 34H, 3AH, 4EH, 6FH, 74H, 68H, 69H
        DC8 6EH, 35H, 3AH, 25H, 35H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_42:
        DC8 32H, 35H, 3AH, 4EH, 6FH, 74H, 68H, 69H
        DC8 6EH, 35H, 3AH, 25H, 35H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_43:
        DC8 32H, 36H, 3AH, 4EH, 6FH, 74H, 68H, 69H
        DC8 6EH, 35H, 3AH, 25H, 35H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_44:
        DC8 32H, 37H, 3AH, 4EH, 6FH, 74H, 68H, 69H
        DC8 6EH, 35H, 3AH, 25H, 35H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_45:
        DC8 32H, 38H, 3AH, 4EH, 6FH, 74H, 68H, 69H
        DC8 6EH, 35H, 3AH, 25H, 35H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_46:
        DC8 32H, 39H, 3AH, 4EH, 6FH, 74H, 68H, 69H
        DC8 6EH, 35H, 3AH, 25H, 35H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "   "

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "-> "

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_49:
        DC8 20H, 20H, 20H, 20H, 20H, 20H, 20H, 0
        DC8 0
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_50:
        DC8 "cp:%d ->"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_51:
        DC8 30H, 20H, 3AH, 5FH, 5FH, 4CH, 65H, 64H
        DC8 5FH, 5FH, 3AH, 0, 0
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_52:
        DC8 31H, 20H, 3AH, 4BH, 65H, 79H, 42H, 65H
        DC8 65H, 70H, 3AH, 0, 0
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_53:
        DC8 32H, 20H, 3AH, 42H, 6CH, 75H, 65H, 74H
        DC8 68H, 5FH, 3AH, 0, 0
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_54:
        DC8 33H, 20H, 3AH, 50H, 72H, 6FH, 74H, 65H
        DC8 63H, 74H, 3AH, 0, 0
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_55:
        DC8 34H, 20H, 3AH, 50H, 72H, 74H, 5FH, 43H
        DC8 61H, 72H, 3AH, 0, 0
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_56:
        DC8 35H, 20H, 3AH, 57H, 68H, 61H, 74H, 42H
        DC8 65H, 65H, 3AH, 0, 0
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_57:
        DC8 36H, 20H, 3AH, 4EH, 6FH, 74H, 68H, 69H
        DC8 6EH, 67H, 3AH, 0, 0
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_58:
        DC8 37H, 20H, 3AH, 4EH, 6FH, 74H, 68H, 69H
        DC8 6EH, 67H, 3AH, 0, 0
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_59:
        DC8 38H, 20H, 3AH, 4EH, 6FH, 74H, 68H, 69H
        DC8 6EH, 67H, 3AH, 0, 0
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_60:
        DC8 39H, 20H, 3AH, 4EH, 6FH, 74H, 68H, 69H
        DC8 6EH, 67H, 3AH, 0, 0
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_61:
        DC8 31H, 30H, 3AH, 4EH, 6FH, 74H, 68H, 69H
        DC8 6EH, 67H, 3AH, 0, 0
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_62:
        DC8 31H, 31H, 3AH, 4EH, 6FH, 74H, 68H, 69H
        DC8 6EH, 67H, 3AH, 0, 0
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_63:
        DC8 31H, 32H, 3AH, 4EH, 6FH, 74H, 68H, 69H
        DC8 6EH, 67H, 3AH, 0, 0
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "ON "

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "OFF"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_66:
        DC8 " <Run     in    Ang>"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_67:
        DC8 " <p-      in     p+>"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_68:
        DC8 " <vp      in     vs>"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_69:
        DC8 " <Lock    in     S->"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_70:
        DC8 "2:   Pln < %d >"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_71:
        DC8 " <Lock    in     S->"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_72:
        DC8 " <        in     S->"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_73:
        DC8 "VIEW"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_74:
        DC8 "Speed_Left:%04d"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_75:
        DC8 "Speed_Righ:%04d"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_76:
        DC8 "Speed_Now :%04d"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_77:
        DC8 "Speed_Set :%04d"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_78:
        DC8 "Angle:0 "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_79:
        DC8 "Gyro_B:0 "
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_80:
        DC8 43H, 6FH, 64H, 65H, 5FH, 52H, 75H, 6EH
        DC8 54H, 69H, 6DH, 65H, 20H, 0, 0
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_81:
        DC8 "  Search_1:%05dus"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_82:
        DC8 "  Fuzzy   :%05dus"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_83:
        DC8 "  GetMid  :%05dus"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_84:
        DC8 "1:Search_1:%05dus"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_85:
        DC8 "2:Fuzzy   :%05dus"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_86:
        DC8 "3:GetMid  :%05dus"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "  "
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_88:
        DC8 30H, 20H, 3AH, 41H, 6EH, 67H, 6CH, 65H
        DC8 5FH, 61H, 3AH, 25H, 35H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_89:
        DC8 31H, 20H, 3AH, 41H, 6EH, 67H, 6CH, 65H
        DC8 5FH, 73H, 3AH, 25H, 35H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_90:
        DC8 32H, 20H, 3AH, 4EH, 6FH, 74H, 68H, 69H
        DC8 6EH, 67H, 3AH, 25H, 35H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_91:
        DC8 33H, 20H, 3AH, 4EH, 6FH, 74H, 68H, 69H
        DC8 6EH, 67H, 3AH, 25H, 35H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_92:
        DC8 34H, 20H, 3AH, 4EH, 6FH, 74H, 68H, 69H
        DC8 6EH, 67H, 3AH, 25H, 35H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_93:
        DC8 35H, 20H, 3AH, 4EH, 6FH, 74H, 68H, 69H
        DC8 6EH, 67H, 3AH, 25H, 35H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_94:
        DC8 36H, 20H, 3AH, 4EH, 6FH, 74H, 68H, 69H
        DC8 6EH, 67H, 3AH, 25H, 35H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_95:
        DC8 37H, 20H, 3AH, 4EH, 6FH, 74H, 68H, 69H
        DC8 6EH, 67H, 3AH, 25H, 35H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_96:
        DC8 38H, 20H, 3AH, 4EH, 6FH, 74H, 68H, 69H
        DC8 6EH, 67H, 3AH, 25H, 35H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_97:
        DC8 39H, 20H, 3AH, 4EH, 6FH, 74H, 68H, 69H
        DC8 6EH, 67H, 3AH, 25H, 35H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_98:
        DC8 31H, 30H, 3AH, 4EH, 6FH, 74H, 68H, 69H
        DC8 6EH, 67H, 3AH, 25H, 35H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_99:
        DC8 31H, 31H, 3AH, 4EH, 6FH, 74H, 68H, 69H
        DC8 6EH, 67H, 3AH, 25H, 35H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_100:
        DC8 31H, 32H, 3AH, 4EH, 6FH, 74H, 68H, 69H
        DC8 6EH, 67H, 3AH, 25H, 35H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_101:
        DC8 31H, 33H, 3AH, 4EH, 6FH, 74H, 68H, 69H
        DC8 6EH, 67H, 3AH, 25H, 35H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_102:
        DC8 31H, 34H, 3AH, 4EH, 6FH, 74H, 68H, 69H
        DC8 6EH, 67H, 3AH, 25H, 35H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_103:
        DC8 31H, 35H, 3AH, 4EH, 6FH, 74H, 68H, 69H
        DC8 6EH, 67H, 3AH, 25H, 35H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_104:
        DC8 31H, 36H, 3AH, 4EH, 6FH, 74H, 68H, 69H
        DC8 6EH, 67H, 3AH, 25H, 35H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_105:
        DC8 31H, 37H, 3AH, 4EH, 6FH, 74H, 68H, 69H
        DC8 6EH, 67H, 3AH, 25H, 35H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_106:
        DC8 31H, 38H, 3AH, 4EH, 6FH, 74H, 68H, 69H
        DC8 6EH, 67H, 3AH, 25H, 35H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_107:
        DC8 31H, 39H, 3AH, 4EH, 6FH, 74H, 68H, 69H
        DC8 6EH, 67H, 3AH, 25H, 35H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_108:
        DC8 32H, 30H, 3AH, 4EH, 6FH, 74H, 68H, 69H
        DC8 6EH, 67H, 3AH, 25H, 35H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_109:
        DC8 32H, 31H, 3AH, 4EH, 6FH, 74H, 68H, 69H
        DC8 6EH, 67H, 3AH, 25H, 35H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_110:
        DC8 32H, 32H, 3AH, 4EH, 6FH, 74H, 68H, 69H
        DC8 6EH, 67H, 3AH, 25H, 35H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_111:
        DC8 32H, 33H, 3AH, 4EH, 6FH, 74H, 68H, 69H
        DC8 6EH, 67H, 3AH, 25H, 35H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_112:
        DC8 32H, 34H, 3AH, 4EH, 6FH, 74H, 68H, 69H
        DC8 6EH, 67H, 3AH, 25H, 35H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_113:
        DC8 32H, 35H, 3AH, 4EH, 6FH, 74H, 68H, 69H
        DC8 6EH, 67H, 3AH, 25H, 35H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_114:
        DC8 32H, 36H, 3AH, 4EH, 6FH, 74H, 68H, 69H
        DC8 6EH, 67H, 3AH, 25H, 35H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_115:
        DC8 32H, 37H, 3AH, 4EH, 6FH, 74H, 68H, 69H
        DC8 6EH, 67H, 3AH, 25H, 35H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_116:
        DC8 32H, 38H, 3AH, 4EH, 6FH, 74H, 68H, 69H
        DC8 6EH, 67H, 3AH, 25H, 35H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_117:
        DC8 32H, 39H, 3AH, 4EH, 6FH, 74H, 68H, 69H
        DC8 6EH, 67H, 3AH, 25H, 35H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_118:
        DC32 48, 49, 50, 51, 52, 53

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_119:
        DC8 "ctrl"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_120:
        DC8 "         run       >"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_121:
        DC8 "Rode:%4d"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_122:
        DC8 "Time:%4d"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_123:
        DC8 "SetPg"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_124:
        DC8 "PicOK"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_125:
        DC8 "     "
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_126:
        DC8 "Ad_View"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_127:
        DC8 20H, 3CH, 20H, 20H, 20H, 20H, 20H, 20H
        DC8 20H, 20H, 20H, 41H, 64H, 20H, 20H, 20H
        DC8 20H, 20H, 20H, 20H, 20H, 0, 0
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_128:
        DC8 41H, 64H, 30H, 3AH, 25H, 30H, 34H, 64H
        DC8 0, 0
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_129:
        DC8 41H, 64H, 31H, 3AH, 25H, 30H, 34H, 64H
        DC8 0, 0
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_130:
        DC8 41H, 64H, 32H, 3AH, 25H, 30H, 34H, 64H
        DC8 0, 0
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_131:
        DC8 41H, 64H, 33H, 3AH, 25H, 30H, 34H, 64H
        DC8 0, 0
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_132:
        DC8 4DH, 49H, 44H, 3AH, 25H, 34H, 64H, 20H
        DC8 20H, 20H, 25H, 34H, 2EH, 32H, 66H, 0
        DC8 0
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_134:
        DC8 41H, 6CH, 3AH, 25H, 33H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_135:
        DC8 41H, 53H, 3AH, 25H, 33H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_136:
        DC8 4CH, 62H, 3AH, 25H, 33H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_137:
        DC8 5AH, 61H, 3AH, 25H, 33H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_138:
        DC8 54H, 44H, 3AH, 25H, 33H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_139:
        DC8 53H, 50H, 3AH, 25H, 33H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_140:
        DC8 53H, 49H, 3AH, 25H, 33H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_141:
        DC8 53H, 20H, 3AH, 25H, 33H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_142:
        DC8 41H, 74H, 3AH, 25H, 33H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_143:
        DC8 5FH, 5FH, 3AH, 25H, 33H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_144:
        DC8 4EH, 6FH, 3AH, 25H, 33H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_145:
        DC8 53H, 74H, 3AH, 25H, 33H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_146:
        DC8 54H, 75H, 3AH, 25H, 33H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_147:
        DC8 53H, 70H, 3AH, 25H, 33H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_148:
        DC8 5FH, 53H, 3AH, 25H, 33H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_149:
        DC8 41H, 6EH, 3AH, 25H, 33H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_150:
        DC8 41H, 67H, 3AH, 25H, 33H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_152:
        DC8 50H, 4CH, 3AH, 25H, 33H, 64H, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_153:
        DC8 "LOCK"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_154:
        DC8 "Plan:%2d"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_160:
        DC8 "%3dx"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_161:
        DC8 "%3dy"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_162:
        DC8 "%5dv"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "M0"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "M2"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_165:
        DC8 "%3dX"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_166:
        DC8 "%3dY"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "M1"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_168:
        DC8 "A:%2d"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_169:
        DC8 "T:%2d"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_174:
        DC8 "%05d/%05d"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_175:
        DC8 "PLAN:"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
//  716 
//  717 

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function Debug_Button
        THUMB
//  718 int Debug_Button(void)
//  719 {
Debug_Button:
        PUSH     {R4-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+20
        SUB      SP,SP,#+300
          CFI CFA R13+320
//  720 //Debug_Button_V
//  721     int Biu_Where=5;//变量修改箭头的位置
        MOVS     R5,#+5
//  722     int How_Much=12;//变量个数
        MOVS     R6,#+12
//  723     
//  724     static	int Debug_Button_Case1=0;//界面指针(菜单滚动)
//  725     static	int Debug_Button_Case2=0;//隐藏指针(指针滚动)
//  726     static	int Debug_Button_Case3=0;//箭头指针(要修改的那个变量标志)
//  727     
//  728 	int Sign1=0;//正在修改变量过程的标志
        MOVS     R4,#+0
//  729 	char Str1[13][20];//字符串
//  730 
//  731     uint32 Debug_Button_Compare=0;//用来比较是否修改了变量
        MOVS     R7,#+0
//  732     
//  733 	char Head[][30]=
//  734 	{
//  735       "Button",
//  736 	};
        ADD      R0,SP,#+4
        LDR.W    R1,??DataTable7
        MOVS     R2,#+32
          CFI FunCall __aeabi_memcpy4
        BL       __aeabi_memcpy4
//  737     
//  738 	GUI_RectangleFill(0, 0, 128, 64, back_color);//画矩形
        LDR.W    R0,??DataTable7_1
        LDRB     R0,[R0, #+0]
        STR      R0,[SP, #+0]
        MOVS     R3,#+64
        MOVS     R2,#+128
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_RectangleFill
        BL       GUI_RectangleFill
//  739 	GUI_Rectangle(0,0,127,63,1);
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,#+63
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_Rectangle
        BL       GUI_Rectangle
//  740 	GUI_Rectangle(0,0,127,10,1);	
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,#+10
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_Rectangle
        BL       GUI_Rectangle
//  741 	GUI_PutString(53,2,Head[0]);
        ADD      R2,SP,#+4
        MOVS     R1,#+2
        MOVS     R0,#+53
          CFI FunCall GUI_PutString
        BL       GUI_PutString
//  742 	//GUI_PutString(2,54,HEAD);
//  743 	GUI_PutString(Biu_Where,(Debug_Button_Case3+1)*10+4," > ");//第一次进来需要
        ADR.N    R2,??Debug_Button_0  ;; " > "
        LDR.W    R0,??DataTable7_2
        LDR      R1,[R0, #+0]
        MOVS     R0,#+10
        MULS     R1,R0,R1
        ADDS     R1,R1,#+14
        MOVS     R0,R5
          CFI FunCall GUI_PutString
        BL       GUI_PutString
//  744 				
//  745 	Press=0;//清除按键键位
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7_3
        STR      R0,[R1, #+0]
//  746 	/////////////////////////////////////
//  747     Debug_Button_V= Flash_Read_Plan(Flash_Data_Public,0,29);//读取Flash公共部分变量
        MOVS     R2,#+29
        MOVS     R1,#+0
        LDR.W    R0,??DataTable7_4
          CFI FunCall Flash_Read_Plan
        BL       Flash_Read_Plan
        LDR.W    R1,??DataTable7_5
        STR      R0,[R1, #+0]
//  748     Debug_Button_Compare=Debug_Button_V;
        LDR.W    R0,??DataTable7_5
        LDR      R0,[R0, #+0]
        MOVS     R7,R0
//  749     sprintf(Str1[0],  "0 :__Led__:\0");         // //Led_灯开关
        LDR.W    R1,??DataTable7_6
        ADD      R0,SP,#+36
          CFI FunCall sprintf
        BL       sprintf
//  750     sprintf(Str1[1],  "1 :KeyBeep:\0");         // //按键声音开关
        LDR.W    R1,??DataTable7_7
        ADD      R0,SP,#+56
          CFI FunCall sprintf
        BL       sprintf
//  751     sprintf(Str1[2],  "2 :Blueth_:\0");         // //蓝牙调试开关
        LDR.W    R1,??DataTable7_8
        ADD      R0,SP,#+76
          CFI FunCall sprintf
        BL       sprintf
//  752     sprintf(Str1[3],  "3 :Protect:\0");         // //车体防止其他人乱动开关
        LDR.W    R1,??DataTable7_9
        ADD      R0,SP,#+96
          CFI FunCall sprintf
        BL       sprintf
//  753     sprintf(Str1[4],  "4 :Prt_Car:\0");         //
        LDR.W    R1,??DataTable7_10
        ADD      R0,SP,#+116
          CFI FunCall sprintf
        BL       sprintf
//  754     
//  755     sprintf(Str1[5],  "5 :WhatBee:\0");         //
        LDR.W    R1,??DataTable7_11
        ADD      R0,SP,#+136
          CFI FunCall sprintf
        BL       sprintf
//  756     sprintf(Str1[6],  "6 :Nothing:\0");         //
        LDR.W    R1,??DataTable7_12
        ADD      R0,SP,#+156
          CFI FunCall sprintf
        BL       sprintf
//  757     sprintf(Str1[7],  "7 :Nothing:\0");         //
        LDR.W    R1,??DataTable7_13
        ADD      R0,SP,#+176
          CFI FunCall sprintf
        BL       sprintf
//  758     sprintf(Str1[8],  "8 :Nothing:\0");         //
        LDR.W    R1,??DataTable7_14
        ADD      R0,SP,#+196
          CFI FunCall sprintf
        BL       sprintf
//  759     sprintf(Str1[9],  "9 :Nothing:\0");         //
        LDR.W    R1,??DataTable7_15
        ADD      R0,SP,#+216
          CFI FunCall sprintf
        BL       sprintf
//  760     sprintf(Str1[10], "10:Nothing:\0");         //
        LDR.W    R1,??DataTable7_16
        ADD      R0,SP,#+236
          CFI FunCall sprintf
        BL       sprintf
//  761     sprintf(Str1[11], "11:Nothing:\0");         //
        LDR.W    R1,??DataTable7_17
        ADD      R0,SP,#+256
          CFI FunCall sprintf
        BL       sprintf
//  762     sprintf(Str1[12], "12:Nothing:\0");         //
        LDR.W    R1,??DataTable7_18
        ADD      R0,SP,#+276
          CFI FunCall sprintf
        BL       sprintf
//  763 	/////////////////////////////////////
//  764 	while(1)
//  765 	{
//  766 		if((Press== K_LEFT )||(Press==K_RIGHT))//当不在变量修改模式时，左键可退出
??Debug_Button_1:
        LDR.W    R0,??DataTable7_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+3
        BEQ.N    ??Debug_Button_2
        LDR.W    R0,??DataTable7_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+4
        BNE.N    ??Debug_Button_3
//  767 		{
//  768 		   GUI_RectangleFill(0, 0, 128, 64, back_color);
??Debug_Button_2:
        LDR.W    R0,??DataTable7_1
        LDRB     R0,[R0, #+0]
        STR      R0,[SP, #+0]
        MOVS     R3,#+64
        MOVS     R2,#+128
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_RectangleFill
        BL       GUI_RectangleFill
//  769 	       Press=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7_3
        STR      R0,[R1, #+0]
//  770            if(Debug_Button_Compare!=Debug_Button_V)
        LDR.W    R0,??DataTable7_5
        LDR      R0,[R0, #+0]
        CMP      R7,R0
        BEQ.N    ??Debug_Button_4
//  771 		   {
//  772              Flash_Data_Public[29]=Debug_Button_V;
        LDR.W    R0,??DataTable7_5
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_4
        STR      R0,[R1, #+116]
//  773              Flash_Write_Pub(Flash_Data_Public);
        LDR.W    R0,??DataTable7_4
          CFI FunCall Flash_Write_Pub
        BL       Flash_Write_Pub
//  774              
//  775            }
//  776           return 0;
??Debug_Button_4:
        MOVS     R0,#+0
        B.N      ??Debug_Button_5
//  777 		}
//  778      
//  779 			if (Press == K_UP)
??Debug_Button_3:
        LDR.W    R0,??DataTable7_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.W    ??Debug_Button_6
//  780 			{
//  781 				if(Sign1==0) //菜单滚动模式
        CMP      R4,#+0
        BNE.N    ??Debug_Button_7
//  782 				{
//  783 				  GUI_PutString(Biu_Where,(Debug_Button_Case3+1)*10+4,"   "); //描空上次的>
        ADR.N    R2,??Debug_Button_8  ;; "   "
        LDR.W    R0,??DataTable7_2
        LDR      R1,[R0, #+0]
        MOVS     R0,#+10
        MULS     R1,R0,R1
        ADDS     R1,R1,#+14
        MOVS     R0,R5
          CFI FunCall GUI_PutString
        BL       GUI_PutString
//  784                   
//  785                   do
//  786                   {
//  787                     if(Debug_Button_Case2==0&&Debug_Button_Case3==0&&Debug_Button_Case1==0)
        LDR.W    R0,??DataTable7_19
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_2
        LDR      R1,[R1, #+0]
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable7_20
        LDR      R1,[R1, #+0]
        ORRS     R0,R1,R0
        CMP      R0,#+0
        BNE.N    ??Debug_Button_9
//  788                     {
//  789                       Debug_Button_Case3=4;
        MOVS     R0,#+4
        LDR.W    R1,??DataTable7_2
        STR      R0,[R1, #+0]
//  790                       Debug_Button_Case2=How_Much;
        LDR.W    R0,??DataTable7_19
        STR      R6,[R0, #+0]
//  791                       Debug_Button_Case1=How_Much-4;
        SUBS     R0,R6,#+4
        LDR.W    R1,??DataTable7_20
        STR      R0,[R1, #+0]
//  792                       break;
        B.N      ??Debug_Button_10
//  793                     }
//  794                     Debug_Button_Case2=Debug_Button_Case2<=0?0:Debug_Button_Case2-1;               //数据标志限位
??Debug_Button_9:
        LDR.W    R0,??DataTable7_19
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BGE.N    ??Debug_Button_11
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7_19
        STR      R0,[R1, #+0]
        B.N      ??Debug_Button_12
??Debug_Button_11:
        LDR.W    R0,??DataTable7_19
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable7_19
        STR      R0,[R1, #+0]
//  795                     if(Debug_Button_Case3==0)                            //只有当箭头在最高层的时候，才允许菜单滚动
??Debug_Button_12:
        LDR.W    R0,??DataTable7_2
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Debug_Button_13
//  796                       Debug_Button_Case1=Debug_Button_Case1<=0?0:Debug_Button_Case1-1;             //菜单滚动限位
        LDR.W    R0,??DataTable7_20
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BGE.N    ??Debug_Button_14
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7_20
        STR      R0,[R1, #+0]
        B.N      ??Debug_Button_13
??Debug_Button_14:
        LDR.W    R0,??DataTable7_20
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable7_20
        STR      R0,[R1, #+0]
//  797                     Debug_Button_Case3=Debug_Button_Case3<=0?0:Debug_Button_Case3-1;               //箭头滚动限位
??Debug_Button_13:
        LDR.W    R0,??DataTable7_2
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BGE.N    ??Debug_Button_15
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7_2
        STR      R0,[R1, #+0]
        B.N      ??Debug_Button_16
??Debug_Button_15:
        LDR.W    R0,??DataTable7_2
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable7_2
        STR      R0,[R1, #+0]
//  798                     Debug_Button_Case2=Debug_Button_Case2<0?0:Debug_Button_Case2>How_Much?How_Much:Debug_Button_Case2;      //再次限位
??Debug_Button_16:
        LDR.W    R0,??DataTable7_19
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BPL.N    ??Debug_Button_17
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7_19
        STR      R0,[R1, #+0]
        B.N      ??Debug_Button_18
??Debug_Button_17:
        LDR.W    R0,??DataTable7_19
        LDR      R0,[R0, #+0]
        CMP      R6,R0
        BGE.N    ??Debug_Button_19
        LDR.W    R0,??DataTable7_19
        STR      R6,[R0, #+0]
        B.N      ??Debug_Button_18
??Debug_Button_19:
        LDR.W    R0,??DataTable7_19
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_19
        STR      R0,[R1, #+0]
//  799                   }while(0);
//  800 				  GUI_PutString(Biu_Where,(Debug_Button_Case3+1)*10+4," > "); //描绘箭头
??Debug_Button_18:
??Debug_Button_10:
        ADR.N    R2,??Debug_Button_0  ;; " > "
        LDR.W    R0,??DataTable7_2
        LDR      R1,[R0, #+0]
        MOVS     R0,#+10
        MULS     R1,R0,R1
        ADDS     R1,R1,#+14
        MOVS     R0,R5
          CFI FunCall GUI_PutString
        BL       GUI_PutString
//  801 				}
//  802 				
//  803                 Press=0;
??Debug_Button_7:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7_3
        STR      R0,[R1, #+0]
//  804 			}
//  805         
//  806         
//  807 			if (Press == K_DOWN)
??Debug_Button_6:
        LDR.W    R0,??DataTable7_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+2
        BNE.W    ??Debug_Button_20
//  808 			{
//  809 				if (Sign1==0)//菜单滚动模式
        CMP      R4,#+0
        BNE.W    ??Debug_Button_21
//  810 				{
//  811 					GUI_PutString(Biu_Where,(Debug_Button_Case3+1)*10+4,"   "); //描空上次的>
        ADR.N    R2,??Debug_Button_8  ;; "   "
        LDR.W    R0,??DataTable7_2
        LDR      R1,[R0, #+0]
        MOVS     R0,#+10
        MULS     R1,R0,R1
        ADDS     R1,R1,#+14
        MOVS     R0,R5
          CFI FunCall GUI_PutString
        BL       GUI_PutString
//  812                     
//  813                     do
//  814                     {
//  815                       if(Debug_Button_Case2==How_Much&&Debug_Button_Case3==4&&Debug_Button_Case1==How_Much-4)
        LDR.W    R0,??DataTable7_19
        LDR      R0,[R0, #+0]
        CMP      R0,R6
        BNE.N    ??Debug_Button_22
        LDR.W    R0,??DataTable7_2
        LDR      R0,[R0, #+0]
        CMP      R0,#+4
        BNE.N    ??Debug_Button_22
        LDR.W    R0,??DataTable7_20
        LDR      R0,[R0, #+0]
        SUBS     R1,R6,#+4
        CMP      R0,R1
        BNE.N    ??Debug_Button_22
//  816                       {
//  817                         Debug_Button_Case3=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7_2
        STR      R0,[R1, #+0]
//  818                         Debug_Button_Case2=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7_19
        STR      R0,[R1, #+0]
//  819                         Debug_Button_Case1=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7_20
        STR      R0,[R1, #+0]
//  820                         break;
        B.N      ??Debug_Button_23
//  821                       }
//  822                       
//  823                       Debug_Button_Case2=Debug_Button_Case2>=How_Much?How_Much:Debug_Button_Case2+1;             //数据标志限位
??Debug_Button_22:
        LDR.W    R0,??DataTable7_19
        LDR      R0,[R0, #+0]
        CMP      R0,R6
        BLT.N    ??Debug_Button_24
        LDR.W    R0,??DataTable7_19
        STR      R6,[R0, #+0]
        B.N      ??Debug_Button_25
??Debug_Button_24:
        LDR.W    R0,??DataTable7_19
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable7_19
        STR      R0,[R1, #+0]
//  824                       if(Debug_Button_Case3==4)                            //只有当箭头在最底层的时候，才允许菜单滚动
??Debug_Button_25:
        LDR.W    R0,??DataTable7_2
        LDR      R0,[R0, #+0]
        CMP      R0,#+4
        BNE.N    ??Debug_Button_26
//  825                         Debug_Button_Case1=Debug_Button_Case1>=How_Much-4?How_Much-4:Debug_Button_Case1+1;           //菜单滚动限位
        LDR.W    R0,??DataTable7_20
        LDR      R0,[R0, #+0]
        SUBS     R1,R6,#+4
        CMP      R0,R1
        BLT.N    ??Debug_Button_27
        SUBS     R0,R6,#+4
        LDR.W    R1,??DataTable7_20
        STR      R0,[R1, #+0]
        B.N      ??Debug_Button_26
??Debug_Button_27:
        LDR.W    R0,??DataTable7_20
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable7_20
        STR      R0,[R1, #+0]
//  826                       Debug_Button_Case3=Debug_Button_Case3>=4?4:Debug_Button_Case3+1;               //箭头滚动限位
??Debug_Button_26:
        LDR.W    R0,??DataTable7_2
        LDR      R0,[R0, #+0]
        CMP      R0,#+4
        BLT.N    ??Debug_Button_28
        MOVS     R0,#+4
        LDR.W    R1,??DataTable7_2
        STR      R0,[R1, #+0]
        B.N      ??Debug_Button_29
??Debug_Button_28:
        LDR.W    R0,??DataTable7_2
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable7_2
        STR      R0,[R1, #+0]
//  827                       Debug_Button_Case2=Debug_Button_Case2<0?0:Debug_Button_Case2>How_Much?How_Much:Debug_Button_Case2;      //再次限位
??Debug_Button_29:
        LDR.W    R0,??DataTable7_19
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BPL.N    ??Debug_Button_30
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7_19
        STR      R0,[R1, #+0]
        B.N      ??Debug_Button_31
??Debug_Button_30:
        LDR.W    R0,??DataTable7_19
        LDR      R0,[R0, #+0]
        CMP      R6,R0
        BGE.N    ??Debug_Button_32
        LDR.W    R0,??DataTable7_19
        STR      R6,[R0, #+0]
        B.N      ??Debug_Button_31
        Nop      
        DATA
??Debug_Button_0:
        DC8      " > "
        THUMB
??Debug_Button_32:
        LDR.W    R0,??DataTable7_19
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_19
        STR      R0,[R1, #+0]
//  828                     }while(0);
//  829 					GUI_PutString(Biu_Where,(Debug_Button_Case3+1)*10+4," > "); //描绘箭头
??Debug_Button_31:
??Debug_Button_23:
        ADR.N    R2,??DataTable4  ;; " > "
        LDR.W    R0,??DataTable7_2
        LDR      R1,[R0, #+0]
        MOVS     R0,#+10
        MULS     R1,R0,R1
        ADDS     R1,R1,#+14
        MOVS     R0,R5
          CFI FunCall GUI_PutString
        BL       GUI_PutString
//  830 			  	}
//  831                 Press=0;
??Debug_Button_21:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7_3
        STR      R0,[R1, #+0]
//  832 			}
//  833 			if((Press ==K_MID))
??Debug_Button_20:
        LDR.W    R0,??DataTable7_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+5
        BNE.N    ??Debug_Button_33
//  834 			{
//  835                Debug_Button_V=((Debug_Button_V>>Debug_Button_Case2)&0x01)?\ 
//  836                  Debug_Button_V&~(1<<Debug_Button_Case2):Debug_Button_V|(1<<Debug_Button_Case2);
        LDR.W    R0,??DataTable7_5
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_19
        LDR      R1,[R1, #+0]
        LSRS     R0,R0,R1
        LSLS     R0,R0,#+31
        BPL.N    ??Debug_Button_34
        LDR.W    R0,??DataTable7_5
        LDR      R1,[R0, #+0]
        MOVS     R2,#+1
        LDR.W    R0,??DataTable7_19
        LDR      R0,[R0, #+0]
        LSLS     R2,R2,R0
        BICS     R1,R1,R2
        LDR.W    R0,??DataTable7_5
        STR      R1,[R0, #+0]
        B.N      ??Debug_Button_35
        Nop      
        DATA
??Debug_Button_8:
        DC8      "   "
        THUMB
??Debug_Button_34:
        LDR.W    R0,??DataTable7_5
        LDR      R1,[R0, #+0]
        MOVS     R2,#+1
        LDR.W    R0,??DataTable7_19
        LDR      R0,[R0, #+0]
        LSLS     R2,R2,R0
        ORRS     R1,R2,R1
        LDR.W    R0,??DataTable7_5
        STR      R1,[R0, #+0]
//  837                 
//  838                Press=0;                                      //清空键值
??Debug_Button_35:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7_3
        STR      R0,[R1, #+0]
//  839 			}
//  840         
//  841         
//  842         
//  843             if((Debug_Button_V>>(0+Debug_Button_Case1))&0x01)
??Debug_Button_33:
        LDR.W    R0,??DataTable7_5
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_20
        LDR      R1,[R1, #+0]
        LSRS     R0,R0,R1
        LSLS     R0,R0,#+31
        BPL.N    ??Debug_Button_36
//  844             {
//  845                 GUI_PutString(100,14,"ON ");//菜单显示
        ADR.N    R2,??DataTable4_3  ;; "ON "
        MOVS     R1,#+14
        MOVS     R0,#+100
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        B.N      ??Debug_Button_37
//  846             }
//  847             else
//  848             {
//  849                 GUI_PutString(100,14,"OFF");//菜单显示
??Debug_Button_36:
        ADR.N    R2,??DataTable4_5  ;; "OFF"
        MOVS     R1,#+14
        MOVS     R0,#+100
          CFI FunCall GUI_PutString
        BL       GUI_PutString
//  850             }
//  851             
//  852             if((Debug_Button_V>>(1+Debug_Button_Case1))&0x01)
??Debug_Button_37:
        LDR.W    R0,??DataTable7_5
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_20
        LDR      R1,[R1, #+0]
        ADDS     R1,R1,#+1
        LSRS     R0,R0,R1
        LSLS     R0,R0,#+31
        BPL.N    ??Debug_Button_38
//  853             {
//  854                 GUI_PutString(100,24,"ON ");//菜单显示
        ADR.N    R2,??DataTable4_3  ;; "ON "
        MOVS     R1,#+24
        MOVS     R0,#+100
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        B.N      ??Debug_Button_39
//  855             }
//  856             else
//  857             {
//  858                 GUI_PutString(100,24,"OFF");//菜单显示
??Debug_Button_38:
        ADR.N    R2,??DataTable4_5  ;; "OFF"
        MOVS     R1,#+24
        MOVS     R0,#+100
          CFI FunCall GUI_PutString
        BL       GUI_PutString
//  859             }
//  860         
//  861             if((Debug_Button_V>>(2+Debug_Button_Case1))&0x01)
??Debug_Button_39:
        LDR.W    R0,??DataTable7_5
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_20
        LDR      R1,[R1, #+0]
        ADDS     R1,R1,#+2
        LSRS     R0,R0,R1
        LSLS     R0,R0,#+31
        BPL.N    ??Debug_Button_40
//  862             {
//  863                 GUI_PutString(100,34,"ON ");//菜单显示
        ADR.N    R2,??DataTable4_3  ;; "ON "
        MOVS     R1,#+34
        MOVS     R0,#+100
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        B.N      ??Debug_Button_41
//  864             }
//  865             else
//  866             {
//  867                 GUI_PutString(100,34,"OFF");//菜单显示
??Debug_Button_40:
        ADR.N    R2,??DataTable4_5  ;; "OFF"
        MOVS     R1,#+34
        MOVS     R0,#+100
          CFI FunCall GUI_PutString
        BL       GUI_PutString
//  868             }
//  869         
//  870             
//  871             if((Debug_Button_V>>(3+Debug_Button_Case1))&0x01)
??Debug_Button_41:
        LDR.W    R0,??DataTable7_5
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_20
        LDR      R1,[R1, #+0]
        ADDS     R1,R1,#+3
        LSRS     R0,R0,R1
        LSLS     R0,R0,#+31
        BPL.N    ??Debug_Button_42
//  872             {
//  873                 GUI_PutString(100,44,"ON ");//菜单显示
        ADR.N    R2,??DataTable4_3  ;; "ON "
        MOVS     R1,#+44
        MOVS     R0,#+100
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        B.N      ??Debug_Button_43
//  874             }
//  875             else
//  876             {
//  877                 GUI_PutString(100,44,"OFF");//菜单显示
??Debug_Button_42:
        ADR.N    R2,??DataTable4_5  ;; "OFF"
        MOVS     R1,#+44
        MOVS     R0,#+100
          CFI FunCall GUI_PutString
        BL       GUI_PutString
//  878             }
//  879         
//  880 			if((Debug_Button_V>>(4+Debug_Button_Case1))&0x01)
??Debug_Button_43:
        LDR.W    R0,??DataTable7_5
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_20
        LDR      R1,[R1, #+0]
        ADDS     R1,R1,#+4
        LSRS     R0,R0,R1
        LSLS     R0,R0,#+31
        BPL.N    ??Debug_Button_44
//  881             {
//  882                 GUI_PutString(100,54,"ON ");//菜单显示
        ADR.N    R2,??DataTable4_3  ;; "ON "
        MOVS     R1,#+54
        MOVS     R0,#+100
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        B.N      ??Debug_Button_45
//  883             }
//  884             else
//  885             {
//  886                 GUI_PutString(100,54,"OFF");//菜单显示
??Debug_Button_44:
        ADR.N    R2,??DataTable4_5  ;; "OFF"
        MOVS     R1,#+54
        MOVS     R0,#+100
          CFI FunCall GUI_PutString
        BL       GUI_PutString
//  887             }
//  888         
//  889         
//  890         
//  891 			GUI_PutString(23,14,Str1[0+Debug_Button_Case1]);//菜单显示
??Debug_Button_45:
        ADD      R1,SP,#+36
        LDR.W    R0,??DataTable7_20
        LDR      R2,[R0, #+0]
        MOVS     R0,#+20
        MULS     R2,R0,R2
        ADD      R2,R1,R2
        MOVS     R1,#+14
        MOVS     R0,#+23
          CFI FunCall GUI_PutString
        BL       GUI_PutString
//  892 			GUI_PutString(23,24,Str1[1+Debug_Button_Case1]);//
        ADD      R1,SP,#+36
        LDR.W    R0,??DataTable7_20
        LDR      R2,[R0, #+0]
        MOVS     R0,#+20
        MULS     R2,R0,R2
        ADD      R0,R1,R2
        ADDS     R2,R0,#+20
        MOVS     R1,#+24
        MOVS     R0,#+23
          CFI FunCall GUI_PutString
        BL       GUI_PutString
//  893 			GUI_PutString(23,34,Str1[2+Debug_Button_Case1]);//
        ADD      R1,SP,#+36
        LDR.W    R0,??DataTable7_20
        LDR      R2,[R0, #+0]
        MOVS     R0,#+20
        MULS     R2,R0,R2
        ADD      R0,R1,R2
        ADDS     R2,R0,#+40
        MOVS     R1,#+34
        MOVS     R0,#+23
          CFI FunCall GUI_PutString
        BL       GUI_PutString
//  894 			GUI_PutString(23,44,Str1[3+Debug_Button_Case1]);//
        ADD      R1,SP,#+36
        LDR.W    R0,??DataTable7_20
        LDR      R2,[R0, #+0]
        MOVS     R0,#+20
        MULS     R2,R0,R2
        ADD      R0,R1,R2
        ADDS     R2,R0,#+60
        MOVS     R1,#+44
        MOVS     R0,#+23
          CFI FunCall GUI_PutString
        BL       GUI_PutString
//  895 			GUI_PutString(23,54,Str1[4+Debug_Button_Case1]);//
        ADD      R1,SP,#+36
        LDR.W    R0,??DataTable7_20
        LDR      R2,[R0, #+0]
        MOVS     R0,#+20
        MULS     R2,R0,R2
        ADD      R0,R1,R2
        ADDS     R2,R0,#+80
        MOVS     R1,#+54
        MOVS     R0,#+23
          CFI FunCall GUI_PutString
        BL       GUI_PutString
//  896 
//  897             
//  898             /*************在此更新开关值***************/
//  899             Debug_Button_Led      =(Debug_Button_V>> 0)&0x01;       //Led_灯开关
        LDR.W    R0,??DataTable7_5
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0x1
        LDR.W    R1,??DataTable9_1
        STRB     R0,[R1, #+0]
//  900             //Debug_Button_KEY_BEEP =(Debug_Button_V>> 1)&0x01;       //按键声音开关
//  901             Debug_Bluetooth       =(Debug_Button_V>> 2)&0x01;       //蓝牙调试开关
        LDR.W    R0,??DataTable7_5
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+2,#+1
        LDR.W    R1,??DataTable9_2
        STRB     R0,[R1, #+0]
//  902             Debug_Protect         =(Debug_Button_V>> 3)&0x01;       //车体防止其他人乱动开关
        LDR.W    R0,??DataTable7_5
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+3,#+1
        LDR.W    R1,??DataTable9_3
        STRB     R0,[R1, #+0]
//  903             Debug_CarAngPrt       =(Debug_Button_V>> 4)&0x01;
        LDR.W    R0,??DataTable7_5
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+4,#+1
        LDR.W    R1,??DataTable9_4
        STRB     R0,[R1, #+0]
//  904             Debug_Button_WhatisBeep =(Debug_Button_V>> 5)&0x01;
        LDR.W    R0,??DataTable7_5
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+5,#+1
        LDR.W    R1,??DataTable9_5
        STRB     R0,[R1, #+0]
//  905             
//  906             
//  907 		Get_Press();//获取按键值
          CFI FunCall Get_Press
        BL       Get_Press
        B.N      ??Debug_Button_1
//  908 	}//while(1)
??Debug_Button_5:
        ADD      SP,SP,#+300
          CFI CFA R13+20
        POP      {R4-R7,PC}       ;; return
//  909 }
          CFI EndBlock cfiBlock4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC8      " > "

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     ?_43

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     ?_44

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC8      "ON "

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     ?_45

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC8      "OFF"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_6:
        DC32     ?_46

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_7:
        DC32     `Plan_Choose::Plan_Choose_Case2`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_8:
        DC32     `Plan_Choose::Plan_Choose_Case1`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_9:
        DC32     0x477ffa01

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_10:
        DC32     0xbf800000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_11:
        DC32     ?_49

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`Debug_Button::Debug_Button_Case1`:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`Debug_Button::Debug_Button_Case2`:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`Debug_Button::Debug_Button_Case3`:
        DS8 4

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_176:
        DC8 "Button"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0
//  910 
//  911 
//  912 
//  913 /************************************************
//  914 *	主菜单
//  915 ************************************************/
//  916 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  917 int AD_Bettery=0;
AD_Bettery:
        DS8 4

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function Case_UI
        THUMB
//  918 int Case_UI (void)
//  919 {
Case_UI:
        PUSH     {R4,R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+12
        SUB      SP,SP,#+236
          CFI CFA R13+248
//  920 	
//  921     static int menu=0;
//  922     int time=50;
        MOVS     R4,#+50
//  923    
//  924 	char Head[][10]=
//  925 	{
//  926 		"Juju",
//  927         "    ",
//  928         "    ",
//  929 	};
        ADD      R0,SP,#+200
        LDR.W    R1,??DataTable9_6
        MOVS     R2,#+32
          CFI FunCall __aeabi_memcpy4
        BL       __aeabi_memcpy4
//  930 	char HEAD1[]=" <Run     in    Ang>";
        ADD      R0,SP,#+76
        LDR.W    R1,??DataTable9_7
        MOVS     R2,#+24
          CFI FunCall __aeabi_memcpy4
        BL       __aeabi_memcpy4
//  931     char HEAD2[]=" <p-      in     p+>";
        ADD      R0,SP,#+52
        LDR.W    R1,??DataTable9_8
        MOVS     R2,#+24
          CFI FunCall __aeabi_memcpy4
        BL       __aeabi_memcpy4
//  932     char HEAD3[]=" <vp      in     vs>";//vp是看Plan的参数，vs是看set的参数
        ADD      R0,SP,#+28
        LDR.W    R1,??DataTable9_9
        MOVS     R2,#+24
          CFI FunCall __aeabi_memcpy4
        BL       __aeabi_memcpy4
//  933     char HEAD4[]=" <Lock    in     S->";
        ADD      R0,SP,#+4
        LDR.W    R1,??DataTable9_10
        MOVS     R2,#+24
          CFI FunCall __aeabi_memcpy4
        BL       __aeabi_memcpy4
//  934     
//  935 
//  936 
//  937     
//  938 	char Str[][25]=
//  939 	{    
//  940 		"1:  Infor",
//  941 		"2:   Pln",
//  942 		"3:   Set",
//  943 		"4:  Debug"
//  944 	};
        ADD      R0,SP,#+100
        LDR.W    R1,??DataTable9_11
        MOVS     R2,#+100
          CFI FunCall __aeabi_memcpy4
        BL       __aeabi_memcpy4
//  945 	
//  946     
//  947     //sprintf(Str[1],"2:   Pln : %d",Plan_Num);
//  948     sprintf(Str[1],"2:   Pln < %d >",Plan_Num);
        LDR.W    R0,??DataTable9_12
        LDR      R2,[R0, #+0]
        LDR.W    R1,??DataTable9_13
        ADD      R0,SP,#+125
          CFI FunCall sprintf
        BL       sprintf
//  949     
//  950     
//  951     
//  952 	GUI_RectangleFill(0, 0, 128, 64, back_color);//画矩形
        LDR.W    R0,??DataTable7_1
        LDRB     R0,[R0, #+0]
        STR      R0,[SP, #+0]
        MOVS     R3,#+64
        MOVS     R2,#+128
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_RectangleFill
        BL       GUI_RectangleFill
//  953 	GUI_Rectangle(0,0,127,63,1);
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,#+63
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_Rectangle
        BL       GUI_Rectangle
//  954 	GUI_Rectangle(0,0,127,10,1);	
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,#+10
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_Rectangle
        BL       GUI_Rectangle
//  955 	GUI_Rectangle(0,0,127,52,1);
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,#+52
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_Rectangle
        BL       GUI_Rectangle
//  956 	GUI_PutString(40,14,Str[0]);
        ADD      R2,SP,#+100
        MOVS     R1,#+14
        MOVS     R0,#+40
          CFI FunCall GUI_PutString
        BL       GUI_PutString
//  957 	GUI_PutString(40,24,Str[1]);
        ADD      R2,SP,#+125
        MOVS     R1,#+24
        MOVS     R0,#+40
          CFI FunCall GUI_PutString
        BL       GUI_PutString
//  958 	GUI_PutString(40,34,Str[2]);
        ADD      R2,SP,#+150
        MOVS     R1,#+34
        MOVS     R0,#+40
          CFI FunCall GUI_PutString
        BL       GUI_PutString
//  959 	GUI_PutString(40,44,Str[3]);	
        ADD      R2,SP,#+175
        MOVS     R1,#+44
        MOVS     R0,#+40
          CFI FunCall GUI_PutString
        BL       GUI_PutString
//  960 	GUI_PutString(53,2,Head[0]);
        ADD      R2,SP,#+200
        MOVS     R1,#+2
        MOVS     R0,#+53
          CFI FunCall GUI_PutString
        BL       GUI_PutString
//  961     
//  962 	while(1)
//  963 	{
//  964 //      Send_Begin();
//  965 //      Send_Variable();
//  966  
//  967       ///////////////////////////针对不同的菜单显示左右信息/////////////////////
//  968       
//  969       if(Debug_Protect)
??Case_UI_0:
        LDR.W    R0,??DataTable9_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Case_UI_1
//  970       sprintf(HEAD4," <Lock    in     S->");  
        LDR.W    R1,??DataTable9_14
        ADD      R0,SP,#+4
          CFI FunCall sprintf
        BL       sprintf
        B.N      ??Case_UI_2
//  971       else
//  972       sprintf(HEAD4," <        in     S->");
??Case_UI_1:
        LDR.W    R1,??DataTable9_15
        ADD      R0,SP,#+4
          CFI FunCall sprintf
        BL       sprintf
//  973     
//  974     
//  975       switch(menu)
??Case_UI_2:
        LDR.W    R0,??DataTable9_16
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Case_UI_3
        CMP      R0,#+2
        BEQ.N    ??Case_UI_4
        BCC.N    ??Case_UI_5
        CMP      R0,#+3
        BEQ.N    ??Case_UI_6
        B.N      ??Case_UI_7
//  976       {
//  977       case 0: GUI_PutString(2,54,HEAD1);break;
??Case_UI_3:
        ADD      R2,SP,#+76
        MOVS     R1,#+54
        MOVS     R0,#+2
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        B.N      ??Case_UI_8
//  978       case 1: GUI_PutString(2,54,HEAD2);break;
??Case_UI_5:
        ADD      R2,SP,#+52
        MOVS     R1,#+54
        MOVS     R0,#+2
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        B.N      ??Case_UI_8
//  979       case 2: GUI_PutString(2,54,HEAD3);break;
??Case_UI_4:
        ADD      R2,SP,#+28
        MOVS     R1,#+54
        MOVS     R0,#+2
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        B.N      ??Case_UI_8
//  980       case 3: GUI_PutString(2,54,HEAD4);break;
??Case_UI_6:
        ADD      R2,SP,#+4
        MOVS     R1,#+54
        MOVS     R0,#+2
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        B.N      ??Case_UI_8
//  981       default:GUI_PutString(2,54,HEAD4);break;
??Case_UI_7:
        ADD      R2,SP,#+4
        MOVS     R1,#+54
        MOVS     R0,#+2
          CFI FunCall GUI_PutString
        BL       GUI_PutString
//  982       }
//  983       //////////////////////////上下运动绘制UI//////////////////////////////////
//  984       
//  985 		Get_Press();	
??Case_UI_8:
          CFI FunCall Get_Press
        BL       Get_Press
//  986 	    if (Press ==K_UP)
        LDR.W    R0,??DataTable7_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Case_UI_9
//  987         {
//  988 			menu-=1;
        LDR.W    R0,??DataTable9_16
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable9_16
        STR      R0,[R1, #+0]
//  989             menu=menu<0?3:menu>3?0:menu;
        LDR.W    R0,??DataTable9_16
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BPL.N    ??Case_UI_10
        MOVS     R0,#+3
        LDR.W    R1,??DataTable9_16
        STR      R0,[R1, #+0]
        B.N      ??Case_UI_9
??Case_UI_10:
        LDR.W    R0,??DataTable9_16
        LDR      R0,[R0, #+0]
        CMP      R0,#+4
        BLT.N    ??Case_UI_11
        MOVS     R0,#+0
        LDR.W    R1,??DataTable9_16
        STR      R0,[R1, #+0]
        B.N      ??Case_UI_9
??Case_UI_11:
        LDR.W    R0,??DataTable9_16
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable9_16
        STR      R0,[R1, #+0]
//  990         }
//  991         
//  992         if (Press ==K_DOWN)
??Case_UI_9:
        LDR.W    R0,??DataTable7_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??Case_UI_12
//  993 		{
//  994             menu+=1;
        LDR.W    R0,??DataTable9_16
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable9_16
        STR      R0,[R1, #+0]
//  995             menu=menu<0?3:menu>3?0:menu;
        LDR.W    R0,??DataTable9_16
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BPL.N    ??Case_UI_13
        MOVS     R0,#+3
        LDR.W    R1,??DataTable9_16
        STR      R0,[R1, #+0]
        B.N      ??Case_UI_12
??Case_UI_13:
        LDR.W    R0,??DataTable9_16
        LDR      R0,[R0, #+0]
        CMP      R0,#+4
        BLT.N    ??Case_UI_14
        MOVS     R0,#+0
        LDR.W    R1,??DataTable9_16
        STR      R0,[R1, #+0]
        B.N      ??Case_UI_12
??Case_UI_14:
        LDR.W    R0,??DataTable9_16
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable9_16
        STR      R0,[R1, #+0]
//  996         }
//  997         
//  998         if (menu==0)				    //画圆
??Case_UI_12:
        LDR.W    R0,??DataTable9_16
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Case_UI_15
//  999 			GUI_CircleFill(27,17,4,1);
        MOVS     R3,#+1
        MOVS     R2,#+4
        MOVS     R1,#+17
        MOVS     R0,#+27
          CFI FunCall GUI_CircleFill
        BL       GUI_CircleFill
        B.N      ??Case_UI_16
// 1000 		else 
// 1001 			GUI_CircleFill(27,17,4,0);
??Case_UI_15:
        MOVS     R3,#+0
        MOVS     R2,#+4
        MOVS     R1,#+17
        MOVS     R0,#+27
          CFI FunCall GUI_CircleFill
        BL       GUI_CircleFill
// 1002 		if (menu==1)
??Case_UI_16:
        LDR.W    R0,??DataTable9_16
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Case_UI_17
// 1003 			GUI_CircleFill(27,27,4,1);
        MOVS     R3,#+1
        MOVS     R2,#+4
        MOVS     R1,#+27
        MOVS     R0,#+27
          CFI FunCall GUI_CircleFill
        BL       GUI_CircleFill
        B.N      ??Case_UI_18
// 1004 		else 
// 1005 			GUI_CircleFill(27,27,4,0);
??Case_UI_17:
        MOVS     R3,#+0
        MOVS     R2,#+4
        MOVS     R1,#+27
        MOVS     R0,#+27
          CFI FunCall GUI_CircleFill
        BL       GUI_CircleFill
// 1006 		if (menu==2)
??Case_UI_18:
        LDR.W    R0,??DataTable9_16
        LDR      R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??Case_UI_19
// 1007 			GUI_CircleFill(27,37,4,1);
        MOVS     R3,#+1
        MOVS     R2,#+4
        MOVS     R1,#+37
        MOVS     R0,#+27
          CFI FunCall GUI_CircleFill
        BL       GUI_CircleFill
        B.N      ??Case_UI_20
// 1008 		else 
// 1009 			GUI_CircleFill(27,37,4,0);
??Case_UI_19:
        MOVS     R3,#+0
        MOVS     R2,#+4
        MOVS     R1,#+37
        MOVS     R0,#+27
          CFI FunCall GUI_CircleFill
        BL       GUI_CircleFill
// 1010 		if (menu==3)
??Case_UI_20:
        LDR.W    R0,??DataTable9_16
        LDR      R0,[R0, #+0]
        CMP      R0,#+3
        BNE.N    ??Case_UI_21
// 1011 			GUI_CircleFill(27,47,4,1);
        MOVS     R3,#+1
        MOVS     R2,#+4
        MOVS     R1,#+47
        MOVS     R0,#+27
          CFI FunCall GUI_CircleFill
        BL       GUI_CircleFill
        B.N      ??Case_UI_22
// 1012 		else 
// 1013 			GUI_CircleFill(27,47,4,0);
??Case_UI_21:
        MOVS     R3,#+0
        MOVS     R2,#+4
        MOVS     R1,#+47
        MOVS     R0,#+27
          CFI FunCall GUI_CircleFill
        BL       GUI_CircleFill
// 1014 		/////////////////////////////确认进入///////////////////////////////////
// 1015         if (Press==K_MID)									//确认进入相应的功能
??Case_UI_22:
        LDR.N    R0,??DataTable7_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+5
        BNE.N    ??Case_UI_23
// 1016 		{
// 1017 			GUI_RectangleFill(0, 0, 128, 64, back_color);	//清屏
        LDR.N    R0,??DataTable7_1
        LDRB     R0,[R0, #+0]
        STR      R0,[SP, #+0]
        MOVS     R3,#+64
        MOVS     R2,#+128
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_RectangleFill
        BL       GUI_RectangleFill
// 1018 			return menu+1;									//迁移
        LDR.W    R0,??DataTable9_16
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        B.N      ??Case_UI_24
// 1019 		}
// 1020         
// 1021         /////////////////////////////左右模式处理///////////////////////////////
// 1022         
// 1023 //                                     菜单逻辑                                    //
// 1024 //*********************************************************************************//
// 1025 //                                                                                 //
// 1026 //                                                                                 //
// 1027 //                      //     主菜单    电池电压              //                  //
// 1028 //      发车界面    <-  //   1:   view (图像预览，中线预览)    // ->陀螺仪界面     //      
// 1029 //     选择上一个   <-  //   2:   plan (方案选择)              // ->选择下一个方案 //
// 1030 //     上一个方案   <-  //   3:   set  (公共参数选择)          // ->下一个方案     //       
// 1031 //                      //   4:  button(调试按钮)              //                  //   
// 1032 //                      //                                     //                  //
// 1033 /*
// 1034         	case 0:		CASE = Case_UI(); break;	//主菜单
// 1035         	case 1:		CASE = View();    break;	//参数预览菜单
// 1036         	case 2:		CASE = Set();     break;	//参数设置
// 1037         	case 3:		CASE = Car_Ctrl();break;	//发车
// 1038         	case 4:		CASE = Updata();  break;	//升级界面
// 1039         	case 5:		CASE = Set_Ang(); break;	//调整中值
// 1040         	default :	CASE = 0;         break;	//纠错
// 1041 */
// 1042         
// 1043         
// 1044         
// 1045 		if (Press == K_LEFT)//进入左键模式
??Case_UI_23:
        LDR.N    R0,??DataTable7_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+3
        BNE.N    ??Case_UI_25
// 1046 		{
// 1047 //			GUI_RectangleFill(0, 0, 128, 64, back_color);//画矩形
// 1048             switch(menu)
        LDR.W    R0,??DataTable9_16
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Case_UI_26
        CMP      R0,#+2
        BEQ.N    ??Case_UI_27
        BCC.N    ??Case_UI_28
        CMP      R0,#+3
        BEQ.N    ??Case_UI_29
        B.N      ??Case_UI_30
// 1049             {
// 1050             case 0:  return 5;//进入发车界面
??Case_UI_26:
        MOVS     R0,#+5
        B.N      ??Case_UI_24
// 1051             case 1:  
// 1052             {
// 1053               Plan_Num--;
??Case_UI_28:
        LDR.W    R0,??DataTable9_12
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable9_12
        STR      R0,[R1, #+0]
// 1054               Plan_Num=Plan_Num==0?6:Plan_Num;
        LDR.W    R0,??DataTable9_12
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Case_UI_31
        MOVS     R0,#+6
        LDR.W    R1,??DataTable9_12
        STR      R0,[R1, #+0]
        B.N      ??Case_UI_32
??Case_UI_31:
        LDR.W    R0,??DataTable9_12
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable9_12
        STR      R0,[R1, #+0]
// 1055               Data_Get();
??Case_UI_32:
          CFI FunCall Data_Get
        BL       Data_Get
// 1056               //sprintf(Str[1],"2:   Pln   <%d>",Plan_Num);
// 1057                sprintf(Str[1],"2:   Pln < %d >",Plan_Num);
        LDR.W    R0,??DataTable9_12
        LDR      R2,[R0, #+0]
        LDR.W    R1,??DataTable9_13
        ADD      R0,SP,#+125
          CFI FunCall sprintf
        BL       sprintf
// 1058               GUI_PutString(40,24,Str[1]);
        ADD      R2,SP,#+125
        MOVS     R1,#+24
        MOVS     R0,#+40
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 1059               Data_Public_Save();
          CFI FunCall Data_Public_Save
        BL       Data_Public_Save
// 1060               break;
        B.N      ??Case_UI_25
// 1061             }
// 1062             case 2:  return 9 ;
??Case_UI_27:
        MOVS     R0,#+9
        B.N      ??Case_UI_24
// 1063             case 3:  return Car_Protect();break;
??Case_UI_29:
          CFI FunCall Car_Protect
        BL       Car_Protect
        B.N      ??Case_UI_24
// 1064             default: break;
// 1065             }
// 1066             
// 1067             
// 1068 			//return 4;
// 1069 		}
// 1070         
// 1071         
// 1072         
// 1073         
// 1074 		if (Press == K_RIGHT)//进入调平衡参数界面
??Case_UI_30:
??Case_UI_25:
        LDR.N    R0,??DataTable7_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+4
        BNE.W    ??Case_UI_0
// 1075 		{
// 1076             switch(menu)
        LDR.W    R0,??DataTable9_16
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Case_UI_33
        CMP      R0,#+2
        BEQ.N    ??Case_UI_34
        BCC.N    ??Case_UI_35
        CMP      R0,#+3
        BEQ.N    ??Case_UI_36
        B.N      ??Case_UI_37
// 1077             {
// 1078             case 0:  return 7;//进入调节平衡界面
??Case_UI_33:
        MOVS     R0,#+7
        B.N      ??Case_UI_24
// 1079             case 1:  
// 1080             {
// 1081               Plan_Num=(Plan_Num)%6+1;
??Case_UI_35:
        MOVS     R0,#+6
        LDR.W    R1,??DataTable9_12
        LDR      R1,[R1, #+0]
        LDR.W    R2,??DataTable9_12
        LDR      R2,[R2, #+0]
        UDIV     R2,R2,R0
        MLS      R0,R0,R2,R1
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable9_12
        STR      R0,[R1, #+0]
// 1082               Data_Get();
          CFI FunCall Data_Get
        BL       Data_Get
// 1083               //sprintf(Str[1],"2:   Pln : %d",Plan_Num);
// 1084               sprintf(Str[1],"2:   Pln < %d >",Plan_Num);
        LDR.W    R0,??DataTable9_12
        LDR      R2,[R0, #+0]
        LDR.W    R1,??DataTable9_13
        ADD      R0,SP,#+125
          CFI FunCall sprintf
        BL       sprintf
// 1085               GUI_PutString(40,24,Str[1]);
        ADD      R2,SP,#+125
        MOVS     R1,#+24
        MOVS     R0,#+40
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 1086               Data_Public_Save();
          CFI FunCall Data_Public_Save
        BL       Data_Public_Save
// 1087               break;
        B.N      ??Case_UI_0
// 1088             }
// 1089             case 2: return 8;  //进入SET参数预览界面
??Case_UI_34:
        MOVS     R0,#+8
        B.N      ??Case_UI_24
// 1090             case 3:  
// 1091             {//发送当前的参数到生危机
// 1092               
// 1093               
// 1094                 for(int i=0;i<15;i++)
??Case_UI_36:
        MOVS     R5,#+0
??Case_UI_38:
        CMP      R5,#+15
        BGE.N    ??Case_UI_39
// 1095                 {
// 1096                     Control_Para[i]=Flash_Data_Plan[i];
        LDR.W    R0,??DataTable9_17
        LDR      R0,[R0, R5, LSL #+2]
          CFI FunCall __aeabi_ui2f
        BL       __aeabi_ui2f
        LDR.W    R1,??DataTable10
        STR      R0,[R1, R5, LSL #+2]
// 1097                 }
        ADDS     R5,R5,#+1
        B.N      ??Case_UI_38
// 1098                 Send_Begin();
??Case_UI_39:
          CFI FunCall Send_Begin
        BL       Send_Begin
// 1099 				Send_Para();
          CFI FunCall Send_Para
        BL       Send_Para
// 1100                  
// 1101             }
// 1102 				break;
        B.N      ??Case_UI_0
// 1103             default: break;
??Case_UI_37:
        B.N      ??Case_UI_0
// 1104             }
// 1105 			//GUI_RectangleFill(0, 0, 128, 64, back_color);//画矩形
// 1106 			//return 5;
// 1107 		}
// 1108 	}	
??Case_UI_24:
        ADD      SP,SP,#+236
          CFI CFA R13+12
        POP      {R4,R5,PC}       ;; return
// 1109 }
          CFI EndBlock cfiBlock5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     `Plan_Choose::Copy_Plan_Value`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DC32     ?_50

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`Case_UI::menu`:
        DS8 4

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_177:
        DC8 "Juju"
        DC8 0, 0, 0, 0, 0
        DC8 "    "
        DC8 0, 0, 0, 0, 0
        DC8 "    "
        DC8 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_178:
        DC8 "1:  Infor"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "2:   Pln"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "3:   Set"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "4:  Debug"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
// 1110 
// 1111 /*****************************************************
// 1112 *	
// 1113 ******************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function View_1
        THUMB
// 1114 int View_1(void)
// 1115 {
View_1:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        SUB      SP,SP,#+136
          CFI CFA R13+144
// 1116     char Str1 [30];
// 1117     char Str2 [30];
// 1118     char Str3 [30];
// 1119     char Str4 [30];
// 1120     
// 1121     
// 1122     int Velue=0;
        MOVS     R4,#+0
// 1123     Press=0;//清除按键残留
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_3
        STR      R0,[R1, #+0]
// 1124 	
// 1125     GUI_PutString(50,0 ,"VIEW");
        LDR.W    R2,??DataTable9_18
        MOVS     R1,#+0
        MOVS     R0,#+50
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 1126 	
// 1127     while(1)
// 1128 	{
// 1129 		if (Press==K_LEFT)
??View_1_0:
        LDR.N    R0,??DataTable7_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+3
        BNE.N    ??View_1_1
// 1130 		{
// 1131 			GUI_RectangleFill(0, 0, 128, 64, back_color);
        LDR.N    R0,??DataTable7_1
        LDRB     R0,[R0, #+0]
        STR      R0,[SP, #+0]
        MOVS     R3,#+64
        MOVS     R2,#+128
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_RectangleFill
        BL       GUI_RectangleFill
// 1132             MOTO_OFF;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable9_19  ;; 0x43fe1008
        STR      R0,[R1, #+0]
// 1133 			return 0;
        MOVS     R0,#+0
        B.N      ??View_1_2
// 1134 		}
// 1135 		if (Press==K_UP)
??View_1_1:
        LDR.N    R0,??DataTable7_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??View_1_3
// 1136 		{
// 1137 			GUI_RectangleFill(0, 0, 128, 64, back_color);
        LDR.N    R0,??DataTable7_1
        LDRB     R0,[R0, #+0]
        STR      R0,[SP, #+0]
        MOVS     R3,#+64
        MOVS     R2,#+128
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_RectangleFill
        BL       GUI_RectangleFill
// 1138             MOTO_OFF;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable9_19  ;; 0x43fe1008
        STR      R0,[R1, #+0]
// 1139 			return 7;
        MOVS     R0,#+7
        B.N      ??View_1_2
// 1140 		}
// 1141 		if (Press==K_DOWN)
??View_1_3:
        LDR.N    R0,??DataTable7_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??View_1_4
// 1142 		{
// 1143 			GUI_RectangleFill(0, 0, 128, 64, back_color);
        LDR.N    R0,??DataTable7_1
        LDRB     R0,[R0, #+0]
        STR      R0,[SP, #+0]
        MOVS     R3,#+64
        MOVS     R2,#+128
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_RectangleFill
        BL       GUI_RectangleFill
// 1144             MOTO_OFF;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable9_19  ;; 0x43fe1008
        STR      R0,[R1, #+0]
// 1145 			return 2;
        MOVS     R0,#+2
        B.N      ??View_1_2
// 1146 		}
// 1147         if (Press == K_RIGHT)
??View_1_4:
        LDR.N    R0,??DataTable7_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+4
        BNE.N    ??View_1_5
// 1148         {
// 1149             MOTO_ON;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable9_19  ;; 0x43fe1008
        STR      R0,[R1, #+0]
// 1150         }
// 1151         
// 1152 
// 1153         //获取编码器当前数值															
// 1154         //Much+=CarSpeed;
// 1155 
// 1156         sprintf(Str1 ,"Speed_Left:%04d",CoL);
??View_1_5:
        LDR.W    R0,??DataTable9_20
        LDR      R2,[R0, #+0]
        LDR.W    R1,??DataTable9_21
        ADD      R0,SP,#+100
          CFI FunCall sprintf
        BL       sprintf
// 1157         sprintf(Str2 ,"Speed_Righ:%04d",CoR);
        LDR.W    R0,??DataTable9_22
        LDR      R2,[R0, #+0]
        LDR.W    R1,??DataTable9_23
        ADD      R0,SP,#+68
          CFI FunCall sprintf
        BL       sprintf
// 1158         sprintf(Str3 ,"Speed_Now :%04d",(int)((CoL+CoR)*0.5));
        LDR.W    R0,??DataTable9_20
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable9_22
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
          CFI FunCall __aeabi_i2d
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable9_24  ;; 0x3fe00000
          CFI FunCall __aeabi_dmul
        BL       __aeabi_dmul
          CFI FunCall __aeabi_d2iz
        BL       __aeabi_d2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable9_25
        ADD      R0,SP,#+36
          CFI FunCall sprintf
        BL       sprintf
// 1159         sprintf(Str4 ,"Speed_Set :%04d",SetSpeed);
        LDR.W    R0,??DataTable9_26
        LDR      R2,[R0, #+0]
        LDR.W    R1,??DataTable9_27
        ADD      R0,SP,#+4
          CFI FunCall sprintf
        BL       sprintf
// 1160         
// 1161         
// 1162         
// 1163         
// 1164         Ui_Show_Get_Speed=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_1
        STR      R0,[R1, #+0]
// 1165         GUI_PutString(0,10 ,Str1);
        ADD      R2,SP,#+100
        MOVS     R1,#+10
        MOVS     R0,#+0
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 1166         GUI_PutString(0,20 ,Str2);
        ADD      R2,SP,#+68
        MOVS     R1,#+20
        MOVS     R0,#+0
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 1167         GUI_PutString(0,30 ,Str3);
        ADD      R2,SP,#+36
        MOVS     R1,#+30
        MOVS     R0,#+0
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 1168         GUI_PutString(0,40 ,Str4);
        ADD      R2,SP,#+4
        MOVS     R1,#+40
        MOVS     R0,#+0
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 1169         
// 1170 //        Velue=Get_Z_Gyro();
// 1171 //        sprintf(Str1 ,"Car_S:%5d",Velue/10);
// 1172 //        GUI_PutString(0,40 ,Str1);
// 1173 		Get_Press();
          CFI FunCall Get_Press
        BL       Get_Press
        B.N      ??View_1_0
// 1174 	}	
??View_1_2:
        ADD      SP,SP,#+136
          CFI CFA R13+8
        POP      {R4,PC}          ;; return
// 1175 }
          CFI EndBlock cfiBlock6
// 1176 
// 1177 /**********************************************************
// 1178 *
// 1179 **********************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function View_2
        THUMB
// 1180 int View_2(void)
// 1181 {
View_2:
        PUSH     {LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+4
        SUB      SP,SP,#+68
          CFI CFA R13+72
// 1182 	char PITCH [30];
// 1183 	char ROLL  [30];
// 1184 	char YAW   [30];
// 1185 	char GYROX [30];
// 1186   
// 1187 	Press=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_3
        STR      R0,[R1, #+0]
// 1188 	while(1)
// 1189 	{
// 1190         Get_Press();
??View_2_0:
          CFI FunCall Get_Press
        BL       Get_Press
// 1191       
// 1192 		if (Press==K_LEFT)
        LDR.N    R0,??DataTable7_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+3
        BNE.N    ??View_2_1
// 1193 		{
// 1194 			GUI_RectangleFill(0, 0, 128, 64, back_color);
        LDR.N    R0,??DataTable7_1
        LDRB     R0,[R0, #+0]
        STR      R0,[SP, #+0]
        MOVS     R3,#+64
        MOVS     R2,#+128
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_RectangleFill
        BL       GUI_RectangleFill
// 1195 			return 0;
        MOVS     R0,#+0
        B.N      ??View_2_2
// 1196 		}
// 1197 		if (Press==K_UP)
??View_2_1:
        LDR.N    R0,??DataTable7_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??View_2_3
// 1198 		{
// 1199 			GUI_RectangleFill(0, 0, 128, 64, back_color);
        LDR.N    R0,??DataTable7_1
        LDRB     R0,[R0, #+0]
        STR      R0,[SP, #+0]
        MOVS     R3,#+64
        MOVS     R2,#+128
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_RectangleFill
        BL       GUI_RectangleFill
// 1200 			return 1;
        MOVS     R0,#+1
        B.N      ??View_2_2
// 1201 		}
// 1202 		if (Press==K_DOWN)
??View_2_3:
        LDR.N    R0,??DataTable7_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??View_2_4
// 1203 		{
// 1204 			GUI_RectangleFill(0, 0, 128, 64, back_color);
        LDR.N    R0,??DataTable7_1
        LDRB     R0,[R0, #+0]
        STR      R0,[SP, #+0]
        MOVS     R3,#+64
        MOVS     R2,#+128
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_RectangleFill
        BL       GUI_RectangleFill
// 1205 			return 3;
        MOVS     R0,#+3
        B.N      ??View_2_2
// 1206 		}
// 1207 		
// 1208 
// 1209 	   //参数观察列表
// 1210 		
// 1211 	  sprintf(PITCH,"Angle:0 ");//滤波之后的陀螺仪
??View_2_4:
        LDR.W    R1,??DataTable10_2
        ADD      R0,SP,#+36
          CFI FunCall sprintf
        BL       sprintf
// 1212 	  sprintf(ROLL ,"Gyro_B:0 ");
        LDR.W    R1,??DataTable10_3
        ADD      R0,SP,#+4
          CFI FunCall sprintf
        BL       sprintf
// 1213 	  GUI_PutString(0,0 ,PITCH  );
        ADD      R2,SP,#+36
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 1214 	  GUI_PutString(0,8 ,ROLL   );
        ADD      R2,SP,#+4
        MOVS     R1,#+8
        MOVS     R0,#+0
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        B.N      ??View_2_0
// 1215 //	  GUI_PutString(0,16,YAW    ); 			
// 1216 //	  GUI_PutString(0,24,GYROX  );
// 1217 
// 1218 	}
??View_2_2:
        ADD      SP,SP,#+68
          CFI CFA R13+4
        POP      {PC}             ;; return
// 1219 }
          CFI EndBlock cfiBlock7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DC32     ?_176

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_1:
        DC32     back_color

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_2:
        DC32     `Debug_Button::Debug_Button_Case3`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_3:
        DC32     Press

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_4:
        DC32     Flash_Data_Public

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_5:
        DC32     Debug_Button_V

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_6:
        DC32     ?_51

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_7:
        DC32     ?_52

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_8:
        DC32     ?_53

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_9:
        DC32     ?_54

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_10:
        DC32     ?_55

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_11:
        DC32     ?_56

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_12:
        DC32     ?_57

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_13:
        DC32     ?_58

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_14:
        DC32     ?_59

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_15:
        DC32     ?_60

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_16:
        DC32     ?_61

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_17:
        DC32     ?_62

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_18:
        DC32     ?_63

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_19:
        DC32     `Debug_Button::Debug_Button_Case2`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_20:
        DC32     `Debug_Button::Debug_Button_Case1`
// 1220 
// 1221 /**********************************************************
// 1222 *
// 1223 **********************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function View_3
        THUMB
// 1224 int View_3(void)
// 1225 {
View_3:
        PUSH     {R4,R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+12
        SUB      SP,SP,#+36
          CFI CFA R13+48
// 1226     
// 1227 	Press=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_6
        STR      R0,[R1, #+0]
// 1228     
// 1229 	char View3_Str_View[30];
// 1230     GUI_PutString(27,0,"Code_RunTime \0");
        LDR.W    R2,??DataTable10_7
        MOVS     R1,#+0
        MOVS     R0,#+27
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 1231     
// 1232     int Key_Get=0;
        MOVS     R5,#+0
// 1233     int Show_Stop=0;//暂停按钮
        MOVS     R4,#+0
// 1234     
// 1235     
// 1236      //先采集一遍，让UI好看点
// 1237      pit_time_start(PIT2) ;//代码执行时间计时
        MOVS     R0,#+2
          CFI FunCall pit_time_start
        BL       pit_time_start
// 1238      //Search_1();
// 1239      //Handle_Pic();
// 1240      Pit1_Start=pit_time_get(PIT2);
        MOVS     R0,#+2
          CFI FunCall pit_time_get
        BL       pit_time_get
        LDR.W    R1,??DataTable10_8
        STR      R0,[R1, #+0]
// 1241      sprintf(View3_Str_View,"  Search_1:%05dus",Pit1_Start/100);
        LDR.W    R0,??DataTable10_8
        LDR      R0,[R0, #+0]
        MOVS     R1,#+100
        UDIV     R2,R0,R1
        LDR.W    R1,??DataTable10_9
        ADD      R0,SP,#+4
          CFI FunCall sprintf
        BL       sprintf
// 1242      GUI_PutString(5,10,View3_Str_View);
        ADD      R2,SP,#+4
        MOVS     R1,#+10
        MOVS     R0,#+5
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 1243     
// 1244      pit_time_start(PIT2) ;//代码执行时间计时
        MOVS     R0,#+2
          CFI FunCall pit_time_start
        BL       pit_time_start
// 1245      Fuzzy(1,2);
        MOVS     R1,#+1073741824
        MOVS     R0,#+1065353216
          CFI FunCall Fuzzy
        BL       Fuzzy
// 1246      Pit1_Start=pit_time_get(PIT2);
        MOVS     R0,#+2
          CFI FunCall pit_time_get
        BL       pit_time_get
        LDR.W    R1,??DataTable10_8
        STR      R0,[R1, #+0]
// 1247      sprintf(View3_Str_View,"  Fuzzy   :%05dus",Pit1_Start/100);
        LDR.W    R0,??DataTable10_8
        LDR      R0,[R0, #+0]
        MOVS     R1,#+100
        UDIV     R2,R0,R1
        LDR.W    R1,??DataTable10_10
        ADD      R0,SP,#+4
          CFI FunCall sprintf
        BL       sprintf
// 1248      GUI_PutString(5,20,View3_Str_View);
        ADD      R2,SP,#+4
        MOVS     R1,#+20
        MOVS     R0,#+5
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 1249     
// 1250      pit_time_start(PIT2) ;//代码执行时间计时
        MOVS     R0,#+2
          CFI FunCall pit_time_start
        BL       pit_time_start
// 1251      Calculate_Blackline_Average_2();//Calculate_Blackline_Average_2
          CFI FunCall Calculate_Blackline_Average_2
        BL       Calculate_Blackline_Average_2
// 1252      Pit1_Start=pit_time_get(PIT2);
        MOVS     R0,#+2
          CFI FunCall pit_time_get
        BL       pit_time_get
        LDR.W    R1,??DataTable10_8
        STR      R0,[R1, #+0]
// 1253      sprintf(View3_Str_View,"  GetMid  :%05dus",Pit1_Start/100);
        LDR.W    R0,??DataTable10_8
        LDR      R0,[R0, #+0]
        MOVS     R1,#+100
        UDIV     R2,R0,R1
        LDR.W    R1,??DataTable10_11
        ADD      R0,SP,#+4
          CFI FunCall sprintf
        BL       sprintf
// 1254      GUI_PutString(5,30,View3_Str_View);
        ADD      R2,SP,#+4
        MOVS     R1,#+30
        MOVS     R0,#+5
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 1255 
// 1256 	while(1)
// 1257 	{
// 1258 //        camera_get_img(); //采集图像
// 1259 //        img_extract((u8*)Pic,(uint8*)imgbuff,600);//解压为二维数组
// 1260         //Pic_Filter(Pic,1);
// 1261         
// 1262         switch(Key_Get)
??View_3_0:
        CMP      R5,#+0
        BEQ.N    ??View_3_1
        CMP      R5,#+2
        BEQ.N    ??View_3_2
        BCC.N    ??View_3_3
        B.N      ??View_3_4
// 1263         {
// 1264           case 0:
// 1265           {
// 1266             if(Show_Stop==0)
??View_3_1:
        CMP      R4,#+0
        BNE.N    ??View_3_5
// 1267             {
// 1268               pit_time_start(PIT2) ;//代码执行时间计时
        MOVS     R0,#+2
          CFI FunCall pit_time_start
        BL       pit_time_start
// 1269               //Search_1();
// 1270               //Handle_Pic();
// 1271               //Pic_Search_Vertical();
// 1272               Pit1_Start=pit_time_get(PIT2);
        MOVS     R0,#+2
          CFI FunCall pit_time_get
        BL       pit_time_get
        LDR.W    R1,??DataTable10_8
        STR      R0,[R1, #+0]
// 1273             
// 1274               sprintf(View3_Str_View,"1:Search_1:%05dus",Pit1_Start/100);
        LDR.W    R0,??DataTable10_8
        LDR      R0,[R0, #+0]
        MOVS     R1,#+100
        UDIV     R2,R0,R1
        LDR.W    R1,??DataTable10_12
        ADD      R0,SP,#+4
          CFI FunCall sprintf
        BL       sprintf
// 1275               GUI_PutString(5,10,View3_Str_View);
        ADD      R2,SP,#+4
        MOVS     R1,#+10
        MOVS     R0,#+5
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 1276             }  
// 1277               break;
??View_3_5:
        B.N      ??View_3_4
// 1278           }
// 1279           case 1:
// 1280           {
// 1281             if(Show_Stop==0)
??View_3_3:
        CMP      R4,#+0
        BNE.N    ??View_3_6
// 1282             {
// 1283               pit_time_start(PIT2) ;//代码执行时间计时
        MOVS     R0,#+2
          CFI FunCall pit_time_start
        BL       pit_time_start
// 1284               Fuzzy(1,2);
        MOVS     R1,#+1073741824
        MOVS     R0,#+1065353216
          CFI FunCall Fuzzy
        BL       Fuzzy
// 1285               Pit1_Start=pit_time_get(PIT2);
        MOVS     R0,#+2
          CFI FunCall pit_time_get
        BL       pit_time_get
        LDR.W    R1,??DataTable10_8
        STR      R0,[R1, #+0]
// 1286               sprintf(View3_Str_View,"2:Fuzzy   :%05dus",Pit1_Start/100);
        LDR.W    R0,??DataTable10_8
        LDR      R0,[R0, #+0]
        MOVS     R1,#+100
        UDIV     R2,R0,R1
        LDR.W    R1,??DataTable10_13
        ADD      R0,SP,#+4
          CFI FunCall sprintf
        BL       sprintf
// 1287               GUI_PutString(5,20,View3_Str_View);
        ADD      R2,SP,#+4
        MOVS     R1,#+20
        MOVS     R0,#+5
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 1288              } 
// 1289               break;
??View_3_6:
        B.N      ??View_3_4
// 1290           }   
// 1291           case 2:
// 1292           {
// 1293             if(Show_Stop==0)
??View_3_2:
        CMP      R4,#+0
        BNE.N    ??View_3_7
// 1294             {
// 1295               pit_time_start(PIT2) ;//代码执行时间计时
        MOVS     R0,#+2
          CFI FunCall pit_time_start
        BL       pit_time_start
// 1296               Calculate_Blackline_Average_2();
          CFI FunCall Calculate_Blackline_Average_2
        BL       Calculate_Blackline_Average_2
// 1297               Pit1_Start=pit_time_get(PIT2);
        MOVS     R0,#+2
          CFI FunCall pit_time_get
        BL       pit_time_get
        LDR.W    R1,??DataTable10_8
        STR      R0,[R1, #+0]
// 1298               sprintf(View3_Str_View,"3:GetMid  :%05dus",Pit1_Start/100);
        LDR.W    R0,??DataTable10_8
        LDR      R0,[R0, #+0]
        MOVS     R1,#+100
        UDIV     R2,R0,R1
        LDR.W    R1,??DataTable10_14
        ADD      R0,SP,#+4
          CFI FunCall sprintf
        BL       sprintf
// 1299               GUI_PutString(5,30,View3_Str_View);
        ADD      R2,SP,#+4
        MOVS     R1,#+30
        MOVS     R0,#+5
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 1300             }  
// 1301               break;
// 1302           }
// 1303         }
// 1304         
// 1305        // while(!Pit1_Start);
// 1306         
// 1307         if(Press==K_MID)
??View_3_7:
??View_3_4:
        LDR.W    R0,??DataTable10_6
        LDR      R0,[R0, #+0]
        CMP      R0,#+5
        BNE.N    ??View_3_8
// 1308         {
// 1309           Key_Get++;
        ADDS     R5,R5,#+1
// 1310           Key_Get%=3;
        MOVS     R0,#+3
        SDIV     R1,R5,R0
        MLS      R5,R0,R1,R5
// 1311           GUI_PutString(5,10,"  ");
        ADR.N    R2,??DataTable9  ;; 0x20, 0x20, 0x00, 0x00
        MOVS     R1,#+10
        MOVS     R0,#+5
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 1312           GUI_PutString(5,20,"  ");
        ADR.N    R2,??DataTable9  ;; 0x20, 0x20, 0x00, 0x00
        MOVS     R1,#+20
        MOVS     R0,#+5
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 1313           GUI_PutString(5,30,"  ");
        ADR.N    R2,??DataTable9  ;; 0x20, 0x20, 0x00, 0x00
        MOVS     R1,#+30
        MOVS     R0,#+5
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 1314         }
// 1315         
// 1316         if(Press==K_RIGHT)
??View_3_8:
        LDR.W    R0,??DataTable10_6
        LDR      R0,[R0, #+0]
        CMP      R0,#+4
        BNE.N    ??View_3_9
// 1317         {
// 1318          Show_Stop++;
        ADDS     R4,R4,#+1
// 1319          Show_Stop%=2;
        MOVS     R0,#+2
        SDIV     R1,R4,R0
        MLS      R4,R0,R1,R4
// 1320         }
// 1321         
// 1322         
// 1323         
// 1324 		if (Press==K_LEFT)
??View_3_9:
        LDR.W    R0,??DataTable10_6
        LDR      R0,[R0, #+0]
        CMP      R0,#+3
        BNE.N    ??View_3_10
// 1325 		{
// 1326 			GUI_RectangleFill(0, 0, 128, 64, back_color);
        LDR.W    R0,??DataTable11
        LDRB     R0,[R0, #+0]
        STR      R0,[SP, #+0]
        MOVS     R3,#+64
        MOVS     R2,#+128
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_RectangleFill
        BL       GUI_RectangleFill
// 1327 			return 0;
        MOVS     R0,#+0
        B.N      ??View_3_11
// 1328 		}
// 1329 		if (Press==K_UP)
??View_3_10:
        LDR.W    R0,??DataTable10_6
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??View_3_12
// 1330 		{
// 1331 			GUI_RectangleFill(0, 0, 128, 64, back_color);
        LDR.W    R0,??DataTable11
        LDRB     R0,[R0, #+0]
        STR      R0,[SP, #+0]
        MOVS     R3,#+64
        MOVS     R2,#+128
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_RectangleFill
        BL       GUI_RectangleFill
// 1332 			return 1;
        MOVS     R0,#+1
        B.N      ??View_3_11
// 1333 		}
// 1334 		
// 1335 		if (Press==K_DOWN)
??View_3_12:
        LDR.W    R0,??DataTable10_6
        LDR      R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??View_3_13
// 1336 		{
// 1337 			GUI_RectangleFill(0, 0, 128, 64, back_color);
        LDR.W    R0,??DataTable11
        LDRB     R0,[R0, #+0]
        STR      R0,[SP, #+0]
        MOVS     R3,#+64
        MOVS     R2,#+128
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_RectangleFill
        BL       GUI_RectangleFill
// 1338 			return 3;
        MOVS     R0,#+3
        B.N      ??View_3_11
// 1339 		}
// 1340 		
// 1341 		//参数观察界面
// 1342 		
// 1343 		//GUI_PutString(27,0,"Code_RunTime\0");
// 1344 		Get_Press();
??View_3_13:
          CFI FunCall Get_Press
        BL       Get_Press
        B.N      ??View_3_0
// 1345 	}
??View_3_11:
        ADD      SP,SP,#+36
          CFI CFA R13+12
        POP      {R4,R5,PC}       ;; return
// 1346 }
          CFI EndBlock cfiBlock8
// 1347 
// 1348 /**********************************************************
// 1349 *
// 1350 **********************************************************/
// 1351 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function View
        THUMB
// 1352 int View(void)
// 1353 {   
View:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
// 1354     static int Last_Menu=1; //
// 1355 	int MENU=Last_Menu;
        LDR.W    R0,??DataTable11_1
        LDR      R4,[R0, #+0]
// 1356     
// 1357 	Press=0;//清除按键残留
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_6
        STR      R0,[R1, #+0]
// 1358 	
// 1359     if(Last_Menu<=0||Last_Menu>6)Last_Menu=1;//防止出现问题
        LDR.W    R0,??DataTable11_1
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BLT.N    ??View_0
        LDR.W    R0,??DataTable11_1
        LDR      R0,[R0, #+0]
        CMP      R0,#+7
        BLT.N    ??View_1
??View_0:
        MOVS     R0,#+1
        LDR.W    R1,??DataTable11_1
        STR      R0,[R1, #+0]
// 1360     
// 1361 	while(1)
// 1362 	{
// 1363       Press=0;//清除按键残留
??View_1:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_6
        STR      R0,[R1, #+0]
// 1364 		switch(MENU)
        CMP      R4,#+0
        BEQ.N    ??View_2
        CMP      R4,#+2
        BEQ.N    ??View_3
        BCC.N    ??View_4
        CMP      R4,#+4
        BEQ.N    ??View_5
        BCC.N    ??View_6
        CMP      R4,#+6
        BEQ.N    ??View_7
        BCC.N    ??View_8
        CMP      R4,#+7
        BEQ.N    ??View_9
        B.N      ??View_10
// 1365 		{
// 1366 			case 0:return 0;
??View_2:
        MOVS     R0,#+0
        B.N      ??View_11
// 1367 			case 1:MENU=View_1(),Last_Menu=1;break;
??View_4:
          CFI FunCall View_1
        BL       View_1
        MOVS     R4,R0
        MOVS     R0,#+1
        LDR.W    R1,??DataTable11_1
        STR      R0,[R1, #+0]
        B.N      ??View_1
// 1368 			case 2:MENU=View_3(),Last_Menu=2;break;
??View_3:
          CFI FunCall View_3
        BL       View_3
        MOVS     R4,R0
        MOVS     R0,#+2
        LDR.W    R1,??DataTable11_1
        STR      R0,[R1, #+0]
        B.N      ??View_1
// 1369 			case 3:MENU=ShiBoQi(),Last_Menu=3;break;
??View_6:
          CFI FunCall ShiBoQi
        BL       ShiBoQi
        MOVS     R4,R0
        MOVS     R0,#+3
        LDR.W    R1,??DataTable11_1
        STR      R0,[R1, #+0]
        B.N      ??View_1
// 1370                         case 4:MENU=ShiBoQi_2(),Last_Menu=4;break;
??View_5:
          CFI FunCall ShiBoQi_2
        BL       ShiBoQi_2
        MOVS     R4,R0
        MOVS     R0,#+4
        LDR.W    R1,??DataTable11_1
        STR      R0,[R1, #+0]
        B.N      ??View_1
// 1371                         case 5:MENU=Show_Pic(),Last_Menu=5;break;
??View_8:
          CFI FunCall Show_Pic
        BL       Show_Pic
        MOVS     R4,R0
        MOVS     R0,#+5
        LDR.W    R1,??DataTable11_1
        STR      R0,[R1, #+0]
        B.N      ??View_1
// 1372                         case 6:MENU=Show_Pic_Filter(),Last_Menu=6;break;
??View_7:
          CFI FunCall Show_Pic_Filter
        BL       Show_Pic_Filter
        MOVS     R4,R0
        MOVS     R0,#+6
        LDR.W    R1,??DataTable11_1
        STR      R0,[R1, #+0]
        B.N      ??View_1
// 1373                         case 7:MENU=Show_Pic_T(),Last_Menu=7;break;
??View_9:
          CFI FunCall Show_Pic_T
        BL       Show_Pic_T
        MOVS     R4,R0
        MOVS     R0,#+7
        LDR.W    R1,??DataTable11_1
        STR      R0,[R1, #+0]
        B.N      ??View_1
// 1374                         
// 1375             
// 1376 			default :MENU=1,Last_Menu=1;break;
??View_10:
        MOVS     R0,#+1
        MOVS     R4,R0
        MOVS     R0,#+1
        LDR.W    R1,??DataTable11_1
        STR      R0,[R1, #+0]
        B.N      ??View_1
// 1377 		}
// 1378 	}	
??View_11:
        POP      {R4,PC}          ;; return
// 1379 }
          CFI EndBlock cfiBlock9

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9:
        DC8      0x20, 0x20, 0x00, 0x00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_1:
        DC32     Debug_Button_Led

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_2:
        DC32     Debug_Bluetooth

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_3:
        DC32     Debug_Protect

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_4:
        DC32     Debug_CarAngPrt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_5:
        DC32     Debug_Button_WhatisBeep

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_6:
        DC32     ?_177

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_7:
        DC32     ?_66

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_8:
        DC32     ?_67

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_9:
        DC32     ?_68

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_10:
        DC32     ?_69

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_11:
        DC32     ?_178

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_12:
        DC32     Plan_Num

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_13:
        DC32     ?_70

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_14:
        DC32     ?_71

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_15:
        DC32     ?_72

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_16:
        DC32     `Case_UI::menu`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_17:
        DC32     Flash_Data_Plan

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_18:
        DC32     ?_73

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_19:
        DC32     0x43fe1008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_20:
        DC32     CoL

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_21:
        DC32     ?_74

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_22:
        DC32     CoR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_23:
        DC32     ?_75

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_24:
        DC32     0x3fe00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_25:
        DC32     ?_76

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_26:
        DC32     SetSpeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_27:
        DC32     ?_77

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
`View::Last_Menu`:
        DC32 1
// 1380 
// 1381 /********************************************************
// 1382 *	参数设置界面
// 1383 ********************************************************/
// 1384 
// 1385 
// 1386 

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function Set
        THUMB
// 1387 int Set(void)
// 1388 {	
Set:
        PUSH     {R4-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+20
        SUB      SP,SP,#+764
          CFI CFA R13+784
// 1389   /*保存参数字符串*/
// 1390   
// 1391     float Vellue[31]={0};
        ADD      R0,SP,#+4
        MOVS     R1,#+124
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
// 1392     int Biu_Where=5;//变量修改箭头的位置
        MOVS     R5,#+5
// 1393     int How_Much=27;//变量个数
        MOVS     R6,#+27
// 1394     
// 1395     static	int Set_Case1=0;//界面指针(菜单滚动)
// 1396     static	int Set_Case2=0;//隐藏指针(指针滚动)
// 1397     static	int Set_Case3=0;//箭头指针(要修改的那个变量标志)
// 1398 	int Sign1=0;//正在修改变量过程的标志
        MOVS     R4,#+0
// 1399 	char Str1[31][20];//字符串
// 1400 
// 1401 	char Head[][10]=
// 1402 	{
// 1403 		"SET",
// 1404 	};
        ADD      R0,SP,#+128
        LDR.W    R1,??DataTable11_2
        LDM      R1,{R2,R3,R7}
        STM      R0,{R2,R3,R7}
// 1405 	
// 1406 	GUI_RectangleFill(0, 0, 128, 64, back_color);//画矩形
        LDR.W    R0,??DataTable11
        LDRB     R0,[R0, #+0]
        STR      R0,[SP, #+0]
        MOVS     R3,#+64
        MOVS     R2,#+128
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_RectangleFill
        BL       GUI_RectangleFill
// 1407 	GUI_Rectangle(0,0,127,63,1);
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,#+63
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_Rectangle
        BL       GUI_Rectangle
// 1408 	GUI_Rectangle(0,0,127,10,1);	
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,#+10
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_Rectangle
        BL       GUI_Rectangle
// 1409 	GUI_PutString(53,2,Head[0]);
        ADD      R2,SP,#+128
        MOVS     R1,#+2
        MOVS     R0,#+53
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 1410 	//GUI_PutString(2,54,HEAD);
// 1411 	GUI_PutString(Biu_Where,(Set_Case3+1)*10+4," > ");//第一次进来需要
        ADR.N    R2,??Set_0       ;; " > "
        LDR.W    R0,??DataTable12
        LDR      R1,[R0, #+0]
        MOVS     R0,#+10
        MULS     R1,R0,R1
        ADDS     R1,R1,#+14
        MOVS     R0,R5
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 1412 				
// 1413 	Press=0;//清除按键键位
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_6
        STR      R0,[R1, #+0]
// 1414 
// 1415 	/////////////////////////////////////
// 1416     
// 1417     Flash_Read_Plan(Flash_Data_Public,0,-1);
        MOVS     R2,#-1
        MOVS     R1,#+0
        LDR.W    R0,??DataTable11_3
          CFI FunCall Flash_Read_Plan
        BL       Flash_Read_Plan
// 1418     
// 1419     for(int i=0;i<30;i++)
        MOVS     R7,#+0
??Set_1:
        CMP      R7,#+30
        BGE.N    ??Set_2
// 1420     {
// 1421       Vellue[i] =  Flash_Data_Public[i] >65530?0:Flash_Data_Public[i];
        LDR.W    R0,??DataTable11_3
        LDR      R0,[R0, R7, LSL #+2]
        MOVW     R1,#+65531
        CMP      R0,R1
        BCC.N    ??Set_3
        MOVS     R0,#+0
        B.N      ??Set_4
??Set_3:
        LDR.W    R0,??DataTable11_3
        LDR      R0,[R0, R7, LSL #+2]
??Set_4:
          CFI FunCall __aeabi_ui2f
        BL       __aeabi_ui2f
        ADD      R1,SP,#+4
        STR      R0,[R1, R7, LSL #+2]
// 1422     }
        ADDS     R7,R7,#+1
        B.N      ??Set_1
// 1423     
// 1424       
// 1425 	 /////////////////////////////////////
// 1426 	
// 1427 	while(1)
// 1428 	{
// 1429 		if ((Press== K_LEFT || Press==K_RIGHT)&&Sign1==0)//当不在变量修改模式时，左键可退出
??Set_2:
        LDR.W    R0,??DataTable10_6
        LDR      R0,[R0, #+0]
        CMP      R0,#+3
        BEQ.N    ??Set_5
        LDR.W    R0,??DataTable10_6
        LDR      R0,[R0, #+0]
        CMP      R0,#+4
        BNE.N    ??Set_6
??Set_5:
        CMP      R4,#+0
        BNE.N    ??Set_6
// 1430 		{
// 1431 		   GUI_RectangleFill(0, 0, 128, 64, back_color);
        LDR.W    R0,??DataTable11
        LDRB     R0,[R0, #+0]
        STR      R0,[SP, #+0]
        MOVS     R3,#+64
        MOVS     R2,#+128
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_RectangleFill
        BL       GUI_RectangleFill
// 1432 	
// 1433            
// 1434            
// 1435 //		   PID_ANGLE.P = Vellue[0];  //更新变量
// 1436 //		   PID_ANGLE.D = Vellue[1];  //更新变量
// 1437 //         PID_TURN.P  = Vellue[2];  //更新变量
// 1438 //         PID_TURN.I  = Vellue[3];  //更新变量
// 1439 //         PID_TURN.D  = Vellue[4];  //更新变量
// 1440 //         PID_SPEED.P = Vellue[5];  //更新变量
// 1441 //         PID_SPEED.I = Vellue[6];  //更新变量
// 1442 //         SetSpeed    = Vellue[7];  //更新变量
// 1443 //		   angular     = Vellue[9];	 //更新变量
// 1444 //         anglenum    = Vellue[8];  //更新变量
// 1445 //		   LOOK        = Vellue[10]; //更新变量
// 1446 //           
// 1447            
// 1448            
// 1449            for(int i=0;i<30;i++)
        MOVS     R7,#+0
??Set_7:
        CMP      R7,#+30
        BGE.N    ??Set_8
// 1450            {
// 1451            Flash_Data_Public[i]  =(uint32) Vellue[i];
        ADD      R0,SP,#+4
        LDR      R0,[R0, R7, LSL #+2]
          CFI FunCall __aeabi_f2uiz
        BL       __aeabi_f2uiz
        LDR.W    R1,??DataTable11_3
        STR      R0,[R1, R7, LSL #+2]
// 1452            }
        ADDS     R7,R7,#+1
        B.N      ??Set_7
// 1453            Flash_Write_Plan(Flash_Data_Public,0);//存入flash
??Set_8:
        MOVS     R1,#+0
        LDR.W    R0,??DataTable11_3
          CFI FunCall Flash_Write_Plan
        BL       Flash_Write_Plan
// 1454     
// 1455            Data_Public_Get();//重新读flash
          CFI FunCall Data_Public_Get
        BL       Data_Public_Get
// 1456 
// 1457 		return 0;
        MOVS     R0,#+0
        B.N      ??Set_9
        DATA
??Set_0:
        DC8      " > "
        THUMB
// 1458 		}
// 1459 		else 
// 1460 		{
// 1461           sprintf(Str1[0],  "0 :Angle_a:%5d\0",(int)Vellue[0]);   //
??Set_6:
        LDR      R0,[SP, #+4]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable12_1
        ADD      R0,SP,#+140
          CFI FunCall sprintf
        BL       sprintf
// 1462           sprintf(Str1[1],  "1 :Angle_s:%5d\0",(int)Vellue[1]);
        LDR      R0,[SP, #+8]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable12_2
        ADD      R0,SP,#+160
          CFI FunCall sprintf
        BL       sprintf
// 1463           sprintf(Str1[2],  "2 :Nothing:%5d\0",(int)Vellue[2]);
        LDR      R0,[SP, #+12]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable12_3
        ADD      R0,SP,#+180
          CFI FunCall sprintf
        BL       sprintf
// 1464           sprintf(Str1[3],  "3 :Nothing:%5d\0",(int)Vellue[3]);
        LDR      R0,[SP, #+16]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable12_4
        ADD      R0,SP,#+200
          CFI FunCall sprintf
        BL       sprintf
// 1465           sprintf(Str1[4],  "4 :Nothing:%5d\0",(int)Vellue[4]);
        LDR      R0,[SP, #+20]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable12_5
        ADD      R0,SP,#+220
          CFI FunCall sprintf
        BL       sprintf
// 1466           sprintf(Str1[5],  "5 :Nothing:%5d\0",(int)Vellue[5]);
        LDR      R0,[SP, #+24]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable12_6
        ADD      R0,SP,#+240
          CFI FunCall sprintf
        BL       sprintf
// 1467           sprintf(Str1[6],  "6 :Nothing:%5d\0",(int)Vellue[6]);
        LDR      R0,[SP, #+28]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable12_7
        ADD      R0,SP,#+260
          CFI FunCall sprintf
        BL       sprintf
// 1468           sprintf(Str1[7],  "7 :Nothing:%5d\0",(int)Vellue[7]);
        LDR      R0,[SP, #+32]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable12_8
        ADD      R0,SP,#+280
          CFI FunCall sprintf
        BL       sprintf
// 1469           sprintf(Str1[8],  "8 :Nothing:%5d\0",(int)Vellue[8]);
        LDR      R0,[SP, #+36]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable12_9
        ADD      R0,SP,#+300
          CFI FunCall sprintf
        BL       sprintf
// 1470           sprintf(Str1[9],  "9 :Nothing:%5d\0",(int)Vellue[9]);
        LDR      R0,[SP, #+40]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable12_10
        ADD      R0,SP,#+320
          CFI FunCall sprintf
        BL       sprintf
// 1471           sprintf(Str1[10], "10:Nothing:%5d\0",(int)Vellue[10]);
        LDR      R0,[SP, #+44]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable12_11
        ADD      R0,SP,#+340
          CFI FunCall sprintf
        BL       sprintf
// 1472           sprintf(Str1[11], "11:Nothing:%5d\0",(int)Vellue[11]);
        LDR      R0,[SP, #+48]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable12_12
        ADD      R0,SP,#+360
          CFI FunCall sprintf
        BL       sprintf
// 1473           sprintf(Str1[12], "12:Nothing:%5d\0",(int)Vellue[12]);
        LDR      R0,[SP, #+52]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable12_13
        ADD      R0,SP,#+380
          CFI FunCall sprintf
        BL       sprintf
// 1474           sprintf(Str1[13], "13:Nothing:%5d\0",(int)Vellue[13]);
        LDR      R0,[SP, #+56]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable12_14
        ADD      R0,SP,#+400
          CFI FunCall sprintf
        BL       sprintf
// 1475           sprintf(Str1[14], "14:Nothing:%5d\0",(int)Vellue[14]);
        LDR      R0,[SP, #+60]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable12_15
        ADD      R0,SP,#+420
          CFI FunCall sprintf
        BL       sprintf
// 1476           sprintf(Str1[15], "15:Nothing:%5d\0",(int)Vellue[15]);
        LDR      R0,[SP, #+64]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable13
        ADD      R0,SP,#+440
          CFI FunCall sprintf
        BL       sprintf
// 1477                                 
// 1478           sprintf(Str1[16], "16:Nothing:%5d\0",(int)Vellue[16]);
        LDR      R0,[SP, #+68]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable13_1
        ADD      R0,SP,#+460
          CFI FunCall sprintf
        BL       sprintf
// 1479           sprintf(Str1[17], "17:Nothing:%5d\0",(int)Vellue[17]);
        LDR      R0,[SP, #+72]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable13_2
        ADD      R0,SP,#+480
          CFI FunCall sprintf
        BL       sprintf
// 1480           sprintf(Str1[18], "18:Nothing:%5d\0",(int)Vellue[18]);
        LDR      R0,[SP, #+76]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable13_3
        ADD      R0,SP,#+500
          CFI FunCall sprintf
        BL       sprintf
// 1481           sprintf(Str1[19], "19:Nothing:%5d\0",(int)Vellue[19]);
        LDR      R0,[SP, #+80]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable13_4
        ADD      R0,SP,#+520
          CFI FunCall sprintf
        BL       sprintf
// 1482           sprintf(Str1[20], "20:Nothing:%5d\0",(int)Vellue[20]);
        LDR      R0,[SP, #+84]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable13_5
        ADD      R0,SP,#+540
          CFI FunCall sprintf
        BL       sprintf
// 1483           sprintf(Str1[21], "21:Nothing:%5d\0",(int)Vellue[21]);
        LDR      R0,[SP, #+88]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable13_6
        ADD      R0,SP,#+560
          CFI FunCall sprintf
        BL       sprintf
// 1484           sprintf(Str1[22], "22:Nothing:%5d\0",(int)Vellue[22]);
        LDR      R0,[SP, #+92]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable13_7
        ADD      R0,SP,#+580
          CFI FunCall sprintf
        BL       sprintf
// 1485           sprintf(Str1[23], "23:Nothing:%5d\0",(int)Vellue[23]);
        LDR      R0,[SP, #+96]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable13_8
        ADD      R0,SP,#+600
          CFI FunCall sprintf
        BL       sprintf
// 1486           sprintf(Str1[24], "24:Nothing:%5d\0",(int)Vellue[24]);
        LDR      R0,[SP, #+100]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable13_9
        ADD      R0,SP,#+620
          CFI FunCall sprintf
        BL       sprintf
// 1487           sprintf(Str1[25], "25:Nothing:%5d\0",(int)Vellue[25]);
        LDR      R0,[SP, #+104]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable13_10
        ADD      R0,SP,#+640
          CFI FunCall sprintf
        BL       sprintf
// 1488           sprintf(Str1[26], "26:Nothing:%5d\0",(int)Vellue[26]);
        LDR      R0,[SP, #+108]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable13_11
        ADD      R0,SP,#+660
          CFI FunCall sprintf
        BL       sprintf
// 1489           sprintf(Str1[27], "27:Nothing:%5d\0",(int)Vellue[27]);
        LDR      R0,[SP, #+112]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable13_12
        ADD      R0,SP,#+680
          CFI FunCall sprintf
        BL       sprintf
// 1490           sprintf(Str1[28], "28:Nothing:%5d\0",(int)Vellue[28]);
        LDR      R0,[SP, #+116]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable13_13
        ADD      R0,SP,#+700
          CFI FunCall sprintf
        BL       sprintf
// 1491           sprintf(Str1[29], "29:Nothing:%5d\0",(int)Vellue[29]);
        LDR      R0,[SP, #+120]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R2,R0
        LDR.W    R1,??DataTable13_14
        ADD      R0,SP,#+720
          CFI FunCall sprintf
        BL       sprintf
// 1492 			               
// 1493 			
// 1494 			if (Press == K_UP)/*向上移动菜单*/
        LDR.W    R0,??DataTable10_6
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.W    ??Set_10
// 1495 			{
// 1496 				if(Sign1==0) //菜单滚动模式
        CMP      R4,#+0
        BNE.W    ??Set_11
// 1497 				{
// 1498 				  GUI_PutString(Biu_Where,(Set_Case3+1)*10+4,"   "); //描空上次的>
        ADR.N    R2,??Set_12      ;; "   "
        LDR.W    R0,??DataTable12
        LDR      R1,[R0, #+0]
        MOVS     R0,#+10
        MULS     R1,R0,R1
        ADDS     R1,R1,#+14
        MOVS     R0,R5
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 1499                   
// 1500                   do
// 1501                   {
// 1502                     if(Set_Case2==0&&Set_Case3==0&&Set_Case1==0)
        LDR.W    R0,??DataTable13_15
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable12
        LDR      R1,[R1, #+0]
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable13_16
        LDR      R1,[R1, #+0]
        ORRS     R0,R1,R0
        CMP      R0,#+0
        BNE.N    ??Set_13
// 1503                     {
// 1504                       Set_Case3=4;
        MOVS     R0,#+4
        LDR.W    R1,??DataTable12
        STR      R0,[R1, #+0]
// 1505                       Set_Case2=How_Much;
        LDR.W    R0,??DataTable13_15
        STR      R6,[R0, #+0]
// 1506                       Set_Case1=How_Much-4;
        SUBS     R0,R6,#+4
        LDR.W    R1,??DataTable13_16
        STR      R0,[R1, #+0]
// 1507                       break;
        B.N      ??Set_14
// 1508                     }
// 1509                     
// 1510                     Set_Case2=Set_Case2<=0?0:Set_Case2-1;               //数据标志限位
??Set_13:
        LDR.W    R0,??DataTable13_15
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BGE.N    ??Set_15
        MOVS     R0,#+0
        LDR.W    R1,??DataTable13_15
        STR      R0,[R1, #+0]
        B.N      ??Set_16
??Set_15:
        LDR.W    R0,??DataTable13_15
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable13_15
        STR      R0,[R1, #+0]
// 1511                     if(Set_Case3==0)                            //只有当箭头在最高层的时候，才允许菜单滚动
??Set_16:
        LDR.W    R0,??DataTable12
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Set_17
// 1512                       Set_Case1=Set_Case1<=0?0:Set_Case1-1;             //菜单滚动限位
        LDR.W    R0,??DataTable13_16
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BGE.N    ??Set_18
        MOVS     R0,#+0
        LDR.W    R1,??DataTable13_16
        STR      R0,[R1, #+0]
        B.N      ??Set_17
??Set_18:
        LDR.W    R0,??DataTable13_16
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable13_16
        STR      R0,[R1, #+0]
// 1513                     Set_Case3=Set_Case3<=0?0:Set_Case3-1;               //箭头滚动限位
??Set_17:
        LDR.W    R0,??DataTable12
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BGE.N    ??Set_19
        MOVS     R0,#+0
        LDR.W    R1,??DataTable12
        STR      R0,[R1, #+0]
        B.N      ??Set_20
??Set_19:
        LDR.W    R0,??DataTable12
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable12
        STR      R0,[R1, #+0]
// 1514                     Set_Case2=Set_Case2<0?0:Set_Case2>How_Much?How_Much:Set_Case2;      //再次限位
??Set_20:
        LDR.W    R0,??DataTable13_15
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BPL.N    ??Set_21
        MOVS     R0,#+0
        LDR.W    R1,??DataTable13_15
        STR      R0,[R1, #+0]
        B.N      ??Set_22
??Set_21:
        LDR.W    R0,??DataTable13_15
        LDR      R0,[R0, #+0]
        CMP      R6,R0
        BGE.N    ??Set_23
        LDR.W    R0,??DataTable13_15
        STR      R6,[R0, #+0]
        B.N      ??Set_22
??Set_23:
        LDR.W    R0,??DataTable13_15
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable13_15
        STR      R0,[R1, #+0]
// 1515                   }while(0);
// 1516 				  GUI_PutString(Biu_Where,(Set_Case3+1)*10+4," > "); //描绘箭头
??Set_22:
??Set_14:
        ADR.N    R2,??Set_24      ;; " > "
        LDR.W    R0,??DataTable12
        LDR      R1,[R0, #+0]
        MOVS     R0,#+10
        MULS     R1,R0,R1
        ADDS     R1,R1,#+14
        MOVS     R0,R5
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        B.N      ??Set_10
// 1517 				}
// 1518 				else 				        //修改变量模式
// 1519 				{
// 1520                   
// 1521                   if(Set_Case2==4)
??Set_11:
        LDR.W    R0,??DataTable13_15
        LDR      R0,[R0, #+0]
        CMP      R0,#+4
        BNE.N    ??Set_25
// 1522                   {
// 1523                   Vellue[Set_Case2]+=10;
        ADD      R0,SP,#+4
        LDR.W    R1,??DataTable13_15
        LDR      R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        LDR.W    R1,??DataTable13_17  ;; 0x41200000
          CFI FunCall __aeabi_fadd
        BL       __aeabi_fadd
        ADD      R1,SP,#+4
        LDR.W    R2,??DataTable13_15
        LDR      R2,[R2, #+0]
        STR      R0,[R1, R2, LSL #+2]
        B.N      ??Set_26
// 1524                   }
// 1525 				  else 
// 1526                   Vellue[Set_Case2]++;                        //此处可修改变量增减步伐
??Set_25:
        ADD      R0,SP,#+4
        LDR.W    R1,??DataTable13_15
        LDR      R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        MOVS     R1,#+1065353216
          CFI FunCall __aeabi_fadd
        BL       __aeabi_fadd
        ADD      R1,SP,#+4
        LDR.W    R2,??DataTable13_15
        LDR      R2,[R2, #+0]
        STR      R0,[R1, R2, LSL #+2]
// 1527                   
// 1528                   
// 1529                   if(Vellue[Set_Case2]<0)
??Set_26:
        ADD      R0,SP,#+4
        LDR.W    R1,??DataTable13_15
        LDR      R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        MOVS     R1,#+0
          CFI FunCall __aeabi_cfcmple
        BL       __aeabi_cfcmple
        BCS.N    ??Set_27
// 1530                      Vellue[Set_Case2]=0;
        MOVS     R0,#+0
        ADD      R1,SP,#+4
        LDR.W    R2,??DataTable13_15
        LDR      R2,[R2, #+0]
        STR      R0,[R1, R2, LSL #+2]
// 1531                   if(Vellue[Set_Case2]>65530)
??Set_27:
        ADD      R0,SP,#+4
        LDR.W    R1,??DataTable13_15
        LDR      R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        LDR.W    R1,??DataTable13_18  ;; 0x477ffa01
          CFI FunCall __aeabi_cfrcmple
        BL       __aeabi_cfrcmple
        BHI.N    ??Set_10
// 1532                      Vellue[Set_Case2]=0;
        MOVS     R0,#+0
        ADD      R1,SP,#+4
        LDR.W    R2,??DataTable13_15
        LDR      R2,[R2, #+0]
        STR      R0,[R1, R2, LSL #+2]
// 1533 
// 1534 				}
// 1535 			}
// 1536 			
// 1537 			if (Press == K_DOWN)/*向下移动菜单*/
??Set_10:
        LDR.N    R0,??DataTable10_6
        LDR      R0,[R0, #+0]
        CMP      R0,#+2
        BNE.W    ??Set_28
// 1538 			{
// 1539 				if (Sign1==0)//菜单滚动模式
        CMP      R4,#+0
        BNE.W    ??Set_29
// 1540 				{
// 1541 					GUI_PutString(Biu_Where,(Set_Case3+1)*10+4,"   "); //描空上次的>
        ADR.N    R2,??Set_12      ;; "   "
        LDR.W    R0,??DataTable12
        LDR      R1,[R0, #+0]
        MOVS     R0,#+10
        MULS     R1,R0,R1
        ADDS     R1,R1,#+14
        MOVS     R0,R5
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 1542                     
// 1543                     do
// 1544                     {
// 1545                       if(Set_Case2==How_Much&&Set_Case3==4&&Set_Case1==How_Much-4)
        LDR.W    R0,??DataTable13_15
        LDR      R0,[R0, #+0]
        CMP      R0,R6
        BNE.N    ??Set_30
        LDR.W    R0,??DataTable12
        LDR      R0,[R0, #+0]
        CMP      R0,#+4
        BNE.N    ??Set_30
        LDR.W    R0,??DataTable13_16
        LDR      R0,[R0, #+0]
        SUBS     R1,R6,#+4
        CMP      R0,R1
        BNE.N    ??Set_30
// 1546                       {
// 1547                         Set_Case3=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable12
        STR      R0,[R1, #+0]
// 1548                         Set_Case2=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable13_15
        STR      R0,[R1, #+0]
// 1549                         Set_Case1=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable13_16
        STR      R0,[R1, #+0]
// 1550                         break;
        B.N      ??Set_31
// 1551                       }
// 1552                       
// 1553                       Set_Case2=Set_Case2>=How_Much?How_Much:Set_Case2+1;             //数据标志限位
??Set_30:
        LDR.W    R0,??DataTable13_15
        LDR      R0,[R0, #+0]
        CMP      R0,R6
        BLT.N    ??Set_32
        LDR.W    R0,??DataTable13_15
        STR      R6,[R0, #+0]
        B.N      ??Set_33
??Set_32:
        LDR.W    R0,??DataTable13_15
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable13_15
        STR      R0,[R1, #+0]
// 1554                       if(Set_Case3==4)                            //只有当箭头在最底层的时候，才允许菜单滚动
??Set_33:
        LDR.W    R0,??DataTable12
        LDR      R0,[R0, #+0]
        CMP      R0,#+4
        BNE.N    ??Set_34
// 1555                         Set_Case1=Set_Case1>=How_Much-4?How_Much-4:Set_Case1+1;           //菜单滚动限位
        LDR.W    R0,??DataTable13_16
        LDR      R0,[R0, #+0]
        SUBS     R1,R6,#+4
        CMP      R0,R1
        BLT.N    ??Set_35
        SUBS     R0,R6,#+4
        LDR.W    R1,??DataTable13_16
        STR      R0,[R1, #+0]
        B.N      ??Set_34
??Set_35:
        LDR.W    R0,??DataTable13_16
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable13_16
        STR      R0,[R1, #+0]
// 1556                       Set_Case3=Set_Case3>=4?4:Set_Case3+1;               //箭头滚动限位
??Set_34:
        LDR.W    R0,??DataTable12
        LDR      R0,[R0, #+0]
        CMP      R0,#+4
        BLT.N    ??Set_36
        MOVS     R0,#+4
        LDR.W    R1,??DataTable12
        STR      R0,[R1, #+0]
        B.N      ??Set_37
??Set_36:
        LDR.W    R0,??DataTable12
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable12
        STR      R0,[R1, #+0]
// 1557                       Set_Case2=Set_Case2<0?0:Set_Case2>How_Much?How_Much:Set_Case2;      //再次限位
??Set_37:
        LDR.W    R0,??DataTable13_15
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BPL.N    ??Set_38
        MOVS     R0,#+0
        LDR.W    R1,??DataTable13_15
        STR      R0,[R1, #+0]
        B.N      ??Set_39
??Set_38:
        LDR.W    R0,??DataTable13_15
        LDR      R0,[R0, #+0]
        CMP      R6,R0
        BGE.N    ??Set_40
        LDR.W    R0,??DataTable13_15
        STR      R6,[R0, #+0]
        B.N      ??Set_39
??Set_40:
        LDR.W    R0,??DataTable13_15
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable13_15
        STR      R0,[R1, #+0]
// 1558                     }while(0);
// 1559 					GUI_PutString(Biu_Where,(Set_Case3+1)*10+4," > "); //描绘箭头
??Set_39:
??Set_31:
        ADR.N    R2,??Set_24      ;; " > "
        LDR.W    R0,??DataTable12
        LDR      R1,[R0, #+0]
        MOVS     R0,#+10
        MULS     R1,R0,R1
        ADDS     R1,R1,#+14
        MOVS     R0,R5
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        B.N      ??Set_28
// 1560                     
// 1561 			  	}
// 1562 				else                                      //修改变量模式
// 1563 				{
// 1564                   if(Set_Case2==4)
??Set_29:
        LDR.W    R0,??DataTable13_15
        LDR      R0,[R0, #+0]
        CMP      R0,#+4
        BNE.N    ??Set_41
// 1565                   {
// 1566                   Vellue[Set_Case2]-=10;
        ADD      R0,SP,#+4
        LDR.W    R1,??DataTable13_15
        LDR      R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        LDR.W    R1,??DataTable13_19  ;; 0xc1200000
          CFI FunCall __aeabi_fadd
        BL       __aeabi_fadd
        ADD      R1,SP,#+4
        LDR.W    R2,??DataTable13_15
        LDR      R2,[R2, #+0]
        STR      R0,[R1, R2, LSL #+2]
        B.N      ??Set_42
        DATA
??Set_12:
        DC8      "   "
        THUMB
// 1567                   }
// 1568                   else 
// 1569 				  Vellue[Set_Case2]--;                       //此处可修改变量增减步伐
??Set_41:
        ADD      R0,SP,#+4
        LDR.W    R1,??DataTable13_15
        LDR      R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        LDR.W    R1,??DataTable13_20  ;; 0xbf800000
          CFI FunCall __aeabi_fadd
        BL       __aeabi_fadd
        ADD      R1,SP,#+4
        LDR.W    R2,??DataTable13_15
        LDR      R2,[R2, #+0]
        STR      R0,[R1, R2, LSL #+2]
// 1570                   
// 1571                   if(Vellue[Set_Case2]<0)
??Set_42:
        ADD      R0,SP,#+4
        LDR.W    R1,??DataTable13_15
        LDR      R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        MOVS     R1,#+0
          CFI FunCall __aeabi_cfcmple
        BL       __aeabi_cfcmple
        BCS.N    ??Set_43
// 1572                      Vellue[Set_Case2]=0;
        MOVS     R0,#+0
        ADD      R1,SP,#+4
        LDR.W    R2,??DataTable13_15
        LDR      R2,[R2, #+0]
        STR      R0,[R1, R2, LSL #+2]
// 1573                   if(Vellue[Set_Case2]>65530)
??Set_43:
        ADD      R0,SP,#+4
        LDR.W    R1,??DataTable13_15
        LDR      R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        LDR.W    R1,??DataTable13_18  ;; 0x477ffa01
          CFI FunCall __aeabi_cfrcmple
        BL       __aeabi_cfrcmple
        BHI.N    ??Set_28
// 1574                      Vellue[Set_Case2]=0;
        MOVS     R0,#+0
        ADD      R1,SP,#+4
        LDR.W    R2,??DataTable13_15
        LDR      R2,[R2, #+0]
        STR      R0,[R1, R2, LSL #+2]
// 1575 				}
// 1576 			}
// 1577 			
// 1578 			if((Press ==K_MID)&&Sign1==0)/*按中间键进入变量修改模式*/
??Set_28:
        LDR.N    R0,??DataTable10_6
        LDR      R0,[R0, #+0]
        CMP      R0,#+5
        BNE.N    ??Set_44
        CMP      R4,#+0
        BNE.N    ??Set_44
// 1579 			{
// 1580 				Sign1=1;                                      //变量修改标志
        MOVS     R0,#+1
        MOVS     R4,R0
// 1581 				GUI_PutString(Biu_Where,(Set_Case3+1)*10+4,"   ");       //清空箭头
        ADR.N    R2,??DataTable10_4  ;; "   "
        LDR.W    R0,??DataTable12
        LDR      R1,[R0, #+0]
        MOVS     R0,#+10
        MULS     R1,R0,R1
        ADDS     R1,R1,#+14
        MOVS     R0,R5
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 1582 				GUI_PutString(Biu_Where,(Set_Case3+1)*10+4,"-> ");       //变量修改指示
        ADR.N    R2,??DataTable10_5  ;; "-> "
        LDR.W    R0,??DataTable12
        LDR      R1,[R0, #+0]
        MOVS     R0,#+10
        MULS     R1,R0,R1
        ADDS     R1,R1,#+14
        MOVS     R0,R5
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 1583 			}
// 1584 			
// 1585 			if ((Press ==K_LEFT ||Press ==K_RIGHT)&&Sign1==1)/*变量修改模式下，左键或右键可退出*/
??Set_44:
        LDR.N    R0,??DataTable10_6
        LDR      R0,[R0, #+0]
        CMP      R0,#+3
        BEQ.N    ??Set_45
        LDR.N    R0,??DataTable10_6
        LDR      R0,[R0, #+0]
        CMP      R0,#+4
        BNE.N    ??Set_46
??Set_45:
        CMP      R4,#+1
        BNE.N    ??Set_46
// 1586 			{
// 1587 				Sign1=0;                                //复位修改模式标志位
        MOVS     R0,#+0
        MOVS     R4,R0
// 1588 				GUI_PutString(Biu_Where,(Set_Case3+1)*10+4,"   ");
        ADR.N    R2,??DataTable10_4  ;; "   "
        LDR.W    R0,??DataTable12
        LDR      R1,[R0, #+0]
        MOVS     R0,#+10
        MULS     R1,R0,R1
        ADDS     R1,R1,#+14
        MOVS     R0,R5
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 1589 			    GUI_PutString(Biu_Where,(Set_Case3+1)*10+4," > ");
        ADR.N    R2,??Set_24      ;; " > "
        LDR.W    R0,??DataTable12
        B.N      ??Set_47
        Nop      
        DATA
??Set_24:
        DC8      " > "
        THUMB
??Set_47:
        LDR      R1,[R0, #+0]
        MOVS     R0,#+10
        MULS     R1,R0,R1
        ADDS     R1,R1,#+14
        MOVS     R0,R5
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 1590 			}			
// 1591 			
// 1592 			GUI_PutString(23,14,Str1[0+Set_Case1]);//菜单显示
??Set_46:
        ADD      R1,SP,#+140
        LDR.W    R0,??DataTable13_16
        LDR      R2,[R0, #+0]
        MOVS     R0,#+20
        MULS     R2,R0,R2
        ADD      R2,R1,R2
        MOVS     R1,#+14
        MOVS     R0,#+23
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 1593 			GUI_PutString(23,24,Str1[1+Set_Case1]);//
        ADD      R1,SP,#+140
        LDR.W    R0,??DataTable13_16
        LDR      R2,[R0, #+0]
        MOVS     R0,#+20
        MULS     R2,R0,R2
        ADD      R0,R1,R2
        ADDS     R2,R0,#+20
        MOVS     R1,#+24
        MOVS     R0,#+23
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 1594 			GUI_PutString(23,34,Str1[2+Set_Case1]);//
        ADD      R1,SP,#+140
        LDR.W    R0,??DataTable13_16
        LDR      R2,[R0, #+0]
        MOVS     R0,#+20
        MULS     R2,R0,R2
        ADD      R0,R1,R2
        ADDS     R2,R0,#+40
        MOVS     R1,#+34
        MOVS     R0,#+23
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 1595 			GUI_PutString(23,44,Str1[3+Set_Case1]);//
        ADD      R1,SP,#+140
        LDR.W    R0,??DataTable13_16
        LDR      R2,[R0, #+0]
        MOVS     R0,#+20
        MULS     R2,R0,R2
        ADD      R0,R1,R2
        ADDS     R2,R0,#+60
        MOVS     R1,#+44
        MOVS     R0,#+23
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 1596 			GUI_PutString(23,54,Str1[4+Set_Case1]);//
        ADD      R1,SP,#+140
        LDR.W    R0,??DataTable13_16
        LDR      R2,[R0, #+0]
        MOVS     R0,#+20
        MULS     R2,R0,R2
        ADD      R0,R1,R2
        ADDS     R2,R0,#+80
        MOVS     R1,#+54
        MOVS     R0,#+23
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 1597 		}//else
// 1598 		Get_Press();//获取按键值
          CFI FunCall Get_Press
        BL       Get_Press
        B.N      ??Set_2
// 1599 	}//while(1)  
??Set_9:
        ADD      SP,SP,#+764
          CFI CFA R13+20
        POP      {R4-R7,PC}       ;; return
// 1600 }
          CFI EndBlock cfiBlock10

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10:
        DC32     Control_Para

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_1:
        DC32     Ui_Show_Get_Speed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_2:
        DC32     ?_78

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_3:
        DC32     ?_79

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_4:
        DC8      "   "

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_5:
        DC8      "-> "

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_6:
        DC32     Press

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_7:
        DC32     ?_80

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_8:
        DC32     Pit1_Start

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_9:
        DC32     ?_81

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_10:
        DC32     ?_82

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_11:
        DC32     ?_83

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_12:
        DC32     ?_84

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_13:
        DC32     ?_85

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_14:
        DC32     ?_86

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0H
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`Set::Set_Case1`:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`Set::Set_Case2`:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`Set::Set_Case3`:
        DS8 4

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_180:
        DC8 "SET"
        DC8 0, 0, 0, 0, 0, 0, 0, 0
// 1601 
// 1602 
// 1603 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function Car_Ctrl
        THUMB
// 1604 int Car_Ctrl(void) 
// 1605 {
Car_Ctrl:
        PUSH     {R4-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+20
        SUB      SP,SP,#+124
          CFI CFA R13+144
// 1606     int Car_Ctrl_Key=0;
        MOVS     R6,#+0
// 1607     int Car_Start_Flag=0;//发车标志位
        MOVS     R4,#+0
// 1608     char Str[3][30];
// 1609     int  StartCar_Time[6]={'0','1','2','3','4','5'};
        ADD      R0,SP,#+4
        LDR.W    R1,??DataTable14
        MOVS     R2,#+24
          CFI FunCall __aeabi_memcpy4
        BL       __aeabi_memcpy4
// 1610     int StartTime=0;
        MOVS     R5,#+0
// 1611     int time=50;
        MOVS     R7,#+50
// 1612     
// 1613     
// 1614     GUI_RectangleFill(0, 0, 128, 64, back_color);//画矩形
        LDR.N    R0,??DataTable11
        LDRB     R0,[R0, #+0]
        STR      R0,[SP, #+0]
        MOVS     R3,#+64
        MOVS     R2,#+128
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_RectangleFill
        BL       GUI_RectangleFill
// 1615     DELAY_MS(20);
        MOVS     R0,#+20
          CFI FunCall systick_delay_ms
        BL       systick_delay_ms
// 1616     //OLED_OPEN=0;
// 1617 
// 1618     
// 1619     //GUI_RectangleFill(0, 0, 128, 64, back_color);//画矩形
// 1620 	GUI_Rectangle(0,0,127,63,1);
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,#+63
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_Rectangle
        BL       GUI_Rectangle
// 1621 	GUI_Rectangle(0,0,127,10,1);	
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,#+10
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_Rectangle
        BL       GUI_Rectangle
// 1622 	GUI_Rectangle(0,0,127,52,1);	
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,#+52
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_Rectangle
        BL       GUI_Rectangle
// 1623 	GUI_PutString(50,2,"ctrl");
        LDR.W    R2,??DataTable14_1
        MOVS     R1,#+2
        MOVS     R0,#+50
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 1624     GUI_PutString(2,54,"         run       >");
        LDR.W    R2,??DataTable14_2
        MOVS     R1,#+54
        MOVS     R0,#+2
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 1625 
// 1626     
// 1627     //GUI_PutChar24_32
// 1628     
// 1629     while(1)
// 1630     {
// 1631       Send_Begin();
??Car_Ctrl_0:
          CFI FunCall Send_Begin
        BL       Send_Begin
// 1632       Send_Variable();
          CFI FunCall Send_Variable
        BL       Send_Variable
// 1633       
// 1634 
// 1635       GUI_PutChar24_32(10,15,StartCar_Time[StartTime]) ;   //显示倒计时
        ADD      R0,SP,#+4
        LDR      R2,[R0, R5, LSL #+2]
        MOVS     R1,#+15
        MOVS     R0,#+10
          CFI FunCall GUI_PutChar24_32
        BL       GUI_PutChar24_32
// 1636       
// 1637       
// 1638       /////////////////////////////////////////////////////
// 1639       Get_Press();
          CFI FunCall Get_Press
        BL       Get_Press
// 1640       
// 1641 	  if (Press==K_RIGHT&&!Car_Start_Flag)
        LDR.W    R0,??DataTable14_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+4
        BNE.N    ??Car_Ctrl_1
        CMP      R4,#+0
        BNE.N    ??Car_Ctrl_1
// 1642 	  {
// 1643         Press=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable14_3
        STR      R0,[R1, #+0]
// 1644         Beep(30);
        MOVS     R0,#+30
          CFI FunCall Beep
        BL       Beep
// 1645 	  	GUI_RectangleFill(0, 0, 128, 64, back_color);
        LDR.N    R0,??DataTable11
        LDRB     R0,[R0, #+0]
        STR      R0,[SP, #+0]
        MOVS     R3,#+64
        MOVS     R2,#+128
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_RectangleFill
        BL       GUI_RectangleFill
// 1646         DELAY_MS(7);
        MOVS     R0,#+7
          CFI FunCall systick_delay_ms
        BL       systick_delay_ms
// 1647 	  	return 0;
        MOVS     R0,#+0
        B.N      ??Car_Ctrl_2
// 1648 	  }
// 1649       
// 1650 	  if (Press==K_UP&&!Car_Start_Flag)
??Car_Ctrl_1:
        LDR.W    R0,??DataTable14_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Car_Ctrl_3
        CMP      R4,#+0
        BNE.N    ??Car_Ctrl_3
// 1651 	  {
// 1652         do{
// 1653           StartTime++;
        ADDS     R5,R5,#+1
// 1654           
// 1655           if(StartTime>5)
        CMP      R5,#+6
        BLT.N    ??Car_Ctrl_4
// 1656           {
// 1657             StartTime=5;
        MOVS     R0,#+5
        MOVS     R5,R0
// 1658             break;
        B.N      ??Car_Ctrl_3
// 1659           }
// 1660           
// 1661           Press=0;
??Car_Ctrl_4:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable14_3
        STR      R0,[R1, #+0]
// 1662         }while(0);
// 1663 	  }
// 1664 	  if (Press==K_DOWN&&!Car_Start_Flag)
??Car_Ctrl_3:
        LDR.W    R0,??DataTable14_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??Car_Ctrl_5
        CMP      R4,#+0
        BNE.N    ??Car_Ctrl_5
// 1665 	  {
// 1666          do
// 1667          {
// 1668            StartTime--;
        SUBS     R5,R5,#+1
// 1669              if(StartTime<0)
        CMP      R5,#+0
        BPL.N    ??Car_Ctrl_6
// 1670              {
// 1671                StartTime=0;
        MOVS     R0,#+0
        MOVS     R5,R0
// 1672                break;
        B.N      ??Car_Ctrl_5
// 1673              }
// 1674            Press=0;
??Car_Ctrl_6:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable14_3
        STR      R0,[R1, #+0]
// 1675          }while(0);
// 1676 	  }
// 1677       
// 1678       if(Press==K_MID&&!Car_Start_Flag)  //发车
??Car_Ctrl_5:
        LDR.W    R0,??DataTable14_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+5
        BNE.N    ??Car_Ctrl_7
        CMP      R4,#+0
        BNE.N    ??Car_Ctrl_7
// 1679       {
// 1680          //先倒计时，然后清空系统各个变量
// 1681         
// 1682         
// 1683          
// 1684         
// 1685          Car_Start_Flag=1;
        MOVS     R0,#+1
        MOVS     R4,R0
// 1686          Press=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable14_3
        STR      R0,[R1, #+0]
// 1687       }
// 1688       
// 1689       if(Car_Start_Flag==1)
??Car_Ctrl_7:
        CMP      R4,#+1
        BNE.N    ??Car_Ctrl_8
// 1690       {
// 1691         do{
// 1692          Car_Ctrl_Key=KEY() ;
          CFI FunCall KEY
        BL       KEY
        MOVS     R6,R0
// 1693 		 if ((Car_Ctrl_Key==K_LEFT||Car_Ctrl_Key==K_RIGHT||Car_Ctrl_Key==K_UP||Car_Ctrl_Key==K_DOWN))//停车保护
        CMP      R6,#+3
        BEQ.N    ??Car_Ctrl_9
        CMP      R6,#+4
        BEQ.N    ??Car_Ctrl_9
        CMP      R6,#+1
        BEQ.N    ??Car_Ctrl_9
        CMP      R6,#+2
        BNE.N    ??Car_Ctrl_10
// 1694 	    {
// 1695           MOTO_OFF;
??Car_Ctrl_9:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable14_4  ;; 0x43fe1008
        STR      R0,[R1, #+0]
// 1696           Car_Start_Flag=0;
        MOVS     R0,#+0
        MOVS     R4,R0
// 1697           break;
        B.N      ??Car_Ctrl_8
// 1698         }
// 1699         if(StartTime!=0)
??Car_Ctrl_10:
        CMP      R5,#+0
        BEQ.N    ??Car_Ctrl_11
// 1700         {
// 1701         StartTime--;
        SUBS     R5,R5,#+1
// 1702         Beep(4);
        MOVS     R0,#+4
          CFI FunCall Beep
        BL       Beep
// 1703         DELAY_MS(900);
        MOV      R0,#+900
          CFI FunCall systick_delay_ms
        BL       systick_delay_ms
// 1704         }
// 1705         }while(0);
// 1706       }
// 1707       
// 1708       
// 1709       if(StartTime<=0&&Car_Start_Flag)  //可以跑了
??Car_Ctrl_11:
??Car_Ctrl_8:
        CMP      R5,#+1
        BGE.N    ??Car_Ctrl_0
        CMP      R4,#+0
        BEQ.N    ??Car_Ctrl_0
// 1710       { 
// 1711         Car_Run_Ui_Show_Long    =0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable14_5
        STR      R0,[R1, #+0]
// 1712         Car_Run_Ui_Show_How_Long=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable14_6
        STR      R0,[R1, #+0]
// 1713         LastTime_Car_Run_Distance=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable14_7
        STR      R0,[R1, #+0]
// 1714         
// 1715         GUI_RectangleFill(0, 0, 128, 64, back_color);//画矩形
        LDR.N    R0,??DataTable11
        LDRB     R0,[R0, #+0]
        STR      R0,[SP, #+0]
        MOVS     R3,#+64
        MOVS     R2,#+128
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_RectangleFill
        BL       GUI_RectangleFill
// 1716         Ran_Erase_Speed_I=1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable14_8
        STR      R0,[R1, #+0]
// 1717         Beep(300);
        MOV      R0,#+300
          CFI FunCall Beep
        BL       Beep
// 1718 	Car_Run=1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable14_9
        STR      R0,[R1, #+0]
// 1719         DELAY_MS(20);
        MOVS     R0,#+20
          CFI FunCall systick_delay_ms
        BL       systick_delay_ms
// 1720         MOTO_ON;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable14_4  ;; 0x43fe1008
        STR      R0,[R1, #+0]
// 1721 		
// 1722          while(1)
// 1723           {
// 1724             
// 1725 //            camera_get_img(); //采集图像
// 1726 //            img_extract((u8*)Pic,(uint8*)imgbuff,600);
// 1727 //            Search_1();
// 1728 
// 1729 
// 1730             Car_Ctrl_Key=KEY() ;
??Car_Ctrl_12:
          CFI FunCall KEY
        BL       KEY
        MOVS     R6,R0
// 1731 		    if (((Car_Ctrl_Key==K_LEFT||Car_Ctrl_Key==K_RIGHT||Car_Ctrl_Key==K_UP||Car_Ctrl_Key==K_DOWN)||(Debug_CarAngPrt&&Seagull_Left<=3&&Seagull_Right<=3)))//停车保护
        CMP      R6,#+3
        BEQ.N    ??Car_Ctrl_13
        CMP      R6,#+4
        BEQ.N    ??Car_Ctrl_13
        CMP      R6,#+1
        BEQ.N    ??Car_Ctrl_13
        CMP      R6,#+2
        BEQ.N    ??Car_Ctrl_13
        LDR.W    R0,??DataTable14_10
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Car_Ctrl_12
        LDR.W    R0,??DataTable14_11
        LDR      R0,[R0, #+0]
        CMP      R0,#+4
        BGE.N    ??Car_Ctrl_12
        LDR.W    R0,??DataTable14_12
        LDR      R0,[R0, #+0]
        CMP      R0,#+4
        BGE.N    ??Car_Ctrl_12
// 1732 		    {
// 1733                         Get_Press();
??Car_Ctrl_13:
          CFI FunCall Get_Press
        BL       Get_Press
// 1734                         Press=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable14_3
        STR      R0,[R1, #+0]
// 1735                         MOTO_OFF;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable14_4  ;; 0x43fe1008
        STR      R0,[R1, #+0]
// 1736                         Car_Run=0;//关闭电机输出标志位
        MOVS     R0,#+0
        LDR.W    R1,??DataTable14_9
        STR      R0,[R1, #+0]
// 1737 			    break;
// 1738 		    }
// 1739           }
// 1740          
// 1741            
// 1742            OLED_OPEN=1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable14_13
        STR      R0,[R1, #+0]
// 1743            StartTime=0;
        MOVS     R0,#+0
        MOVS     R5,R0
// 1744            Car_Start_Flag=0;
        MOVS     R0,#+0
        MOVS     R4,R0
// 1745            Beep(20);
        MOVS     R0,#+20
          CFI FunCall Beep
        BL       Beep
// 1746            GUI_RectangleFill(0, 0, 128, 64, back_color);//画矩形
        LDR.N    R0,??DataTable11
        LDRB     R0,[R0, #+0]
        STR      R0,[SP, #+0]
        MOVS     R3,#+64
        MOVS     R2,#+128
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_RectangleFill
        BL       GUI_RectangleFill
// 1747            DELAY_MS(20);
        MOVS     R0,#+20
          CFI FunCall systick_delay_ms
        BL       systick_delay_ms
// 1748            GUI_Rectangle(0,0,127,63,1);
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,#+63
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_Rectangle
        BL       GUI_Rectangle
// 1749 	       GUI_Rectangle(0,0,127,10,1);	
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,#+10
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_Rectangle
        BL       GUI_Rectangle
// 1750 	       GUI_Rectangle(0,0,127,52,1);	
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,#+52
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_Rectangle
        BL       GUI_Rectangle
// 1751 	       GUI_PutString(50,2,"ctrl");
        LDR.W    R2,??DataTable14_1
        MOVS     R1,#+2
        MOVS     R0,#+50
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 1752            GUI_PutString(2,54,"         run       >");
        LDR.W    R2,??DataTable14_2
        MOVS     R1,#+54
        MOVS     R0,#+2
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 1753            sprintf(Str[2] ,"Rode:%4d",(int)(LastTime_Car_Run_Distance));
        LDR.W    R0,??DataTable14_7
        LDR      R2,[R0, #+0]
        LDR.W    R1,??DataTable14_14
        ADD      R0,SP,#+88
          CFI FunCall sprintf
        BL       sprintf
// 1754            GUI_PutString(50,20,Str[2]);
        ADD      R2,SP,#+88
        MOVS     R1,#+20
        MOVS     R0,#+50
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 1755            sprintf(Str[2] ,"Time:%4d",10);
        MOVS     R2,#+10
        LDR.W    R1,??DataTable14_15
        ADD      R0,SP,#+88
          CFI FunCall sprintf
        BL       sprintf
// 1756            GUI_PutString(50,30,Str[2]);
        ADD      R2,SP,#+88
        MOVS     R1,#+30
        MOVS     R0,#+50
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        B.N      ??Car_Ctrl_0
// 1757            
// 1758            
// 1759       }
// 1760       
// 1761       
// 1762       
// 1763 
// 1764     }
??Car_Ctrl_2:
        ADD      SP,SP,#+124
          CFI CFA R13+20
        POP      {R4-R7,PC}       ;; return
// 1765     
// 1766     /*
// 1767     while(Car_Run)
// 1768     {
// 1769         camera_get_img(); //采集图像
// 1770         img_extract((u8*)Pic,(uint8*)imgbuff,600);
// 1771         camera_get_img(); //采集图像 
// 1772         Search_1();
// 1773         
// 1774         
// 1775         
// 1776         Car_Ctrl_Key=KEY() ;
// 1777 		if ((Car_Ctrl_Key==K_LEFT||Car_Ctrl_Key==K_RIGHT||Car_Ctrl_Key==K_UP||Car_Ctrl_Key==K_DOWN))//停车保护
// 1778 		{
// 1779            
// 1780             MOTO_OFF;
// 1781             OLED_OPEN=1;
// 1782             Car_Run=0;//关闭电机输出标志位
// 1783             
// 1784             GUI_RectangleFill(0, 0, 128, 64, back_color);//画矩形
// 1785             DELAY_MS(20);
// 1786             Get_Press();
// 1787             Press=0;
// 1788 			return  0;
// 1789 		}
// 1790 	}
// 1791      */
// 1792     return 0;
// 1793 }
          CFI EndBlock cfiBlock11

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11:
        DC32     back_color

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_1:
        DC32     `View::Last_Menu`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_2:
        DC32     ?_180

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_3:
        DC32     Flash_Data_Public
// 1794 
// 1795 
// 1796 #define  PIC_BLACK            1
// 1797 #define  PIC_WHITE            0
// 1798 
// 1799 //在这里面增加图像补偿代码

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function Updata
        THUMB
// 1800 int Updata(void)
// 1801 {
Updata:
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
// 1802   sprintf(Str_View,"SetPg");
        LDR.W    R1,??DataTable14_16
        LDR.W    R0,??DataTable14_17
          CFI FunCall sprintf
        BL       sprintf
// 1803   GUI_PutString(85,0,Str_View);
        LDR.W    R2,??DataTable14_17
        MOVS     R1,#+0
        MOVS     R0,#+85
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 1804   int x=40,y=59;
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R10,#+59
// 1805   int HowMuchPoint_Right=0;
        MOVS     R6,#+0
// 1806   int HowMuchPoint_Left=0;
        MOVS     R7,#+0
// 1807   int Where_Left=0;
        MOVS     R9,#+0
// 1808   int Where_Right=0;
        MOVS     R8,#+0
// 1809   int Get_Mid_Flag=0;
        MOVS     R4,#+0
// 1810   
// 1811   
// 1812   while(1)
// 1813   {
// 1814     
// 1815     camera_get_img(); //采集图像
// 1816     img_extract((u8*)Pic,(uint8*)imgbuff,600);
??Updata_0:
        MOV      R2,#+600
        LDR.W    R1,??DataTable14_18
        LDR.W    R0,??DataTable14_19
          CFI FunCall img_extract
        BL       img_extract
// 1817 
// 1818     
// 1819     Get_Press();	
          CFI FunCall Get_Press
        BL       Get_Press
// 1820 	if (Press==K_LEFT)
        LDR.W    R0,??DataTable14_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+3
        BNE.N    ??Updata_1
// 1821 	{
// 1822        Press=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable14_3
        STR      R0,[R1, #+0]
// 1823        return 0;
        MOVS     R0,#+0
        B.N      ??Updata_2
// 1824     }
// 1825     if (Press==K_UP||Press==K_DOWN)
??Updata_1:
        LDR.W    R0,??DataTable14_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??Updata_3
        LDR.W    R0,??DataTable14_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??Updata_4
// 1826     {
// 1827        Press=0;
??Updata_3:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable14_3
        STR      R0,[R1, #+0]
// 1828        return 7;
        MOVS     R0,#+7
        B.N      ??Updata_2
// 1829     }
// 1830     
// 1831     if( Press==K_MID)
??Updata_4:
        LDR.W    R0,??DataTable14_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+5
        BNE.N    ??Updata_5
// 1832     {
// 1833        Press=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable14_3
        STR      R0,[R1, #+0]
// 1834        if(Get_Mid_Flag==0)
        CMP      R4,#+0
        BNE.N    ??Updata_6
// 1835          Get_Mid_Flag=1;
        MOVS     R0,#+1
        MOVS     R4,R0
// 1836        
// 1837        if(Get_Mid_Flag==2)
??Updata_6:
        CMP      R4,#+2
        BNE.N    ??Updata_5
// 1838          Get_Mid_Flag=0;
        MOVS     R0,#+0
        MOVS     R4,R0
// 1839     }
// 1840     
// 1841     if(Get_Mid_Flag==2)
??Updata_5:
        CMP      R4,#+2
        BNE.N    ??Updata_7
// 1842     {
// 1843       sprintf(Str_View,"PicOK");
        LDR.W    R1,??DataTable14_20
        LDR.W    R0,??DataTable14_17
          CFI FunCall sprintf
        BL       sprintf
// 1844       GUI_PutString(85,20,Str_View); 
        LDR.W    R2,??DataTable14_17
        MOVS     R1,#+20
        MOVS     R0,#+85
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        B.N      ??Updata_8
// 1845     }
// 1846     else
// 1847     {
// 1848       GUI_PutString(85,20,"     "); 
??Updata_7:
        LDR.W    R2,??DataTable14_21
        MOVS     R1,#+20
        MOVS     R0,#+85
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 1849     }
// 1850     
// 1851     
// 1852     for(int i=59;i>=0;i--)
??Updata_8:
        MOVS     R5,#+59
??Updata_9:
        CMP      R5,#+0
        BMI.N    ??Updata_10
// 1853     {
// 1854       for(int j=40;j<80;j++)
        MOVS     R0,#+40
??Updata_11:
        CMP      R0,#+80
        BGE.N    ??Updata_12
// 1855       {
// 1856         if(Pic[i][j]==PIC_BLACK)
        LDR.W    R1,??DataTable14_19
        MOVS     R2,#+80
        MUL      R2,R2,R5
        ADD      R1,R1,R2
        LDRB     R1,[R1, R0]
        CMP      R1,#+1
        BNE.N    ??Updata_13
// 1857         {
// 1858           Where_Right=j;
        MOV      R8,R0
// 1859           break;
        B.N      ??Updata_12
// 1860         }
// 1861         HowMuchPoint_Right++;
??Updata_13:
        ADDS     R6,R6,#+1
// 1862       }
        ADDS     R0,R0,#+1
        B.N      ??Updata_11
// 1863       for(int j=39;j>=0;j--)
??Updata_12:
        MOVS     R0,#+39
??Updata_14:
        CMP      R0,#+0
        BMI.N    ??Updata_15
// 1864       {
// 1865         if(Pic[i][j]==PIC_BLACK)
        LDR.W    R1,??DataTable14_19
        MOVS     R2,#+80
        MUL      R2,R2,R5
        ADD      R1,R1,R2
        LDRB     R1,[R1, R0]
        CMP      R1,#+1
        BNE.N    ??Updata_16
// 1866         {
// 1867           Where_Left=j;
        MOV      R9,R0
// 1868           break;
        B.N      ??Updata_15
// 1869         }
// 1870         HowMuchPoint_Left++;
??Updata_16:
        ADDS     R7,R7,#+1
// 1871       }
        SUBS     R0,R0,#+1
        B.N      ??Updata_14
// 1872       
// 1873         Pic[i][(int)((Where_Right+Where_Left)*0.5)] = PIC_BLACK;
??Updata_15:
        ADDS     R0,R9,R8
          CFI FunCall __aeabi_i2d
        BL       __aeabi_i2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,#+0
        LDR.W    R1,??DataTable14_22  ;; 0x3fe00000
          CFI FunCall __aeabi_dmul
        BL       __aeabi_dmul
          CFI FunCall __aeabi_d2iz
        BL       __aeabi_d2iz
        LDR.W    R1,??DataTable14_19
        MOVS     R2,#+80
        MUL      R2,R2,R5
        ADD      R1,R1,R2
        MOVS     R2,#+1
        STRB     R2,[R1, R0]
// 1874       
// 1875       if(Get_Mid_Flag==1)
        CMP      R4,#+1
        BNE.N    ??Updata_17
// 1876         XZ[i]=(int)((HowMuchPoint_Left+HowMuchPoint_Right)*0.5);
        ADDS     R0,R6,R7
          CFI FunCall __aeabi_i2d
        BL       __aeabi_i2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,#+0
        LDR.W    R1,??DataTable14_22  ;; 0x3fe00000
          CFI FunCall __aeabi_dmul
        BL       __aeabi_dmul
          CFI FunCall __aeabi_d2iz
        BL       __aeabi_d2iz
        LDR.W    R1,??DataTable14_23
        STR      R0,[R1, R5, LSL #+2]
// 1877     }
??Updata_17:
        SUBS     R5,R5,#+1
        B.N      ??Updata_9
// 1878     if(Get_Mid_Flag==1)
??Updata_10:
        CMP      R4,#+1
        BNE.N    ??Updata_18
// 1879     Get_Mid_Flag=2;
        MOVS     R0,#+2
        MOVS     R4,R0
// 1880     
// 1881     
// 1882     for(int i=0;Get_Mid_Flag!=2&&i<60;i++)
??Updata_18:
        MOVS     R5,#+0
??Updata_19:
        CMP      R4,#+2
        BEQ.W    ??Updata_0
        CMP      R5,#+60
        BGE.W    ??Updata_0
// 1883     {
// 1884       for(int j=0;j<80;j++)
        MOVS     R11,#+0
??Updata_20:
        CMP      R11,#+80
        BGE.N    ??Updata_21
// 1885       {
// 1886         GUI_Point(j,i,Pic[i][j]);
        LDR.W    R0,??DataTable14_19
        MOVS     R1,#+80
        MUL      R1,R1,R5
        ADD      R0,R0,R1
        LDRB     R2,[R0, R11]
        MOVS     R0,R5
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R11
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_Point
        BL       GUI_Point
// 1887       }
        ADDS     R11,R11,#+1
        B.N      ??Updata_20
// 1888     }
??Updata_21:
        ADDS     R5,R5,#+1
        B.N      ??Updata_19
// 1889   }
??Updata_2:
        POP      {R1,R4-R11,PC}   ;; return
// 1890 	return 0;
// 1891 }
          CFI EndBlock cfiBlock12

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12:
        DC32     `Set::Set_Case3`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_1:
        DC32     ?_88

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_2:
        DC32     ?_89

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_3:
        DC32     ?_90

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_4:
        DC32     ?_91

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_5:
        DC32     ?_92

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_6:
        DC32     ?_93

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_7:
        DC32     ?_94

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_8:
        DC32     ?_95

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_9:
        DC32     ?_96

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_10:
        DC32     ?_97

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_11:
        DC32     ?_98

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_12:
        DC32     ?_99

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_13:
        DC32     ?_100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_14:
        DC32     ?_101

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_15:
        DC32     ?_102
// 1892 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
// 1893 u16 AAngleArrySCIi[3]={0};
AAngleArrySCIi:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
// 1894  int AD[4]={0};
AD:
        DS8 16
// 1895  
// 1896  

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function Set_Ang
        THUMB
// 1897 int Set_Ang(void)
// 1898 {
Set_Ang:
        PUSH     {R4,R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+12
        SUB      SP,SP,#+164
          CFI CFA R13+176
// 1899 	int Set_Ang_V1=0;//临时变量
        MOVS     R4,#+0
// 1900         int Set_Ang_V2=0;
        MOVS     R5,#+0
// 1901        
// 1902 	char Str_Ang[5][30];
// 1903     
// 1904     GUI_RectangleFill(0, 0, 128, 64, back_color);//画矩形
        LDR.W    R0,??DataTable15
        LDRB     R0,[R0, #+0]
        STR      R0,[SP, #+0]
        MOVS     R3,#+64
        MOVS     R2,#+128
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_RectangleFill
        BL       GUI_RectangleFill
// 1905     GUI_Rectangle(0,0,127,63,1);
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,#+63
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_Rectangle
        BL       GUI_Rectangle
// 1906     GUI_Rectangle(0,0,127,10,1);	
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,#+10
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_Rectangle
        BL       GUI_Rectangle
// 1907     GUI_Rectangle(0,0,127,52,1);
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,#+52
        MOVS     R2,#+127
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_Rectangle
        BL       GUI_Rectangle
// 1908     
// 1909     
// 1910     GUI_PutString(48,2,"Ad_View");
        LDR.W    R2,??DataTable15_1
        MOVS     R1,#+2
        MOVS     R0,#+48
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 1911     
// 1912     DELAY_MS(20);//为了UI刷新完成
        MOVS     R0,#+20
          CFI FunCall systick_delay_ms
        BL       systick_delay_ms
// 1913     
// 1914     GUI_PutString(4,45 ,Str_Ang[4]);
        ADD      R2,SP,#+128
        MOVS     R1,#+45
        MOVS     R0,#+4
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 1915     GUI_PutString(2,54 ," <         Ad        \0");
        LDR.W    R2,??DataTable15_2
        MOVS     R1,#+54
        MOVS     R0,#+2
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 1916     
// 1917     
// 1918 	while(1)
// 1919 	{
// 1920 //          AD[0]=adc_once(ADC1_SE4a, ADC_12bit);
// 1921 //          AD[1]=adc_once(ADC1_SE5a, ADC_12bit);
// 1922 //          AD[2]=adc_once(ADC1_SE6a, ADC_12bit);
// 1923 //          AD[3]=adc_once(ADC1_SE7a, ADC_12bit);
// 1924           
// 1925           
// 1926           
// 1927           
// 1928                 Send_Begin();
??Set_Ang_0:
          CFI FunCall Send_Begin
        BL       Send_Begin
// 1929                 Send_Variable();
          CFI FunCall Send_Variable
        BL       Send_Variable
// 1930 		Get_Press();	 	
          CFI FunCall Get_Press
        BL       Get_Press
// 1931 
// 1932 		if (Press ==K_RIGHT ||Press ==K_LEFT)//退出本界面
        LDR.W    R0,??DataTable14_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+4
        BEQ.N    ??Set_Ang_1
        LDR.W    R0,??DataTable14_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+3
        BNE.N    ??Set_Ang_2
// 1933 		{
// 1934 			GUI_RectangleFill(0, 0, 128, 64, back_color);//画矩形
??Set_Ang_1:
        LDR.W    R0,??DataTable15
        LDRB     R0,[R0, #+0]
        STR      R0,[SP, #+0]
        MOVS     R3,#+64
        MOVS     R2,#+128
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_RectangleFill
        BL       GUI_RectangleFill
// 1935 			return 0;
        MOVS     R0,#+0
        B.N      ??Set_Ang_3
// 1936 		}
// 1937 
// 1938         sprintf(Str_Ang[0],"Ad0:%04d\0",AD[0]);//滤波之后的陀螺仪
??Set_Ang_2:
        LDR.W    R0,??DataTable15_3
        LDR      R2,[R0, #+0]
        LDR.W    R1,??DataTable15_4
        ADD      R0,SP,#+8
          CFI FunCall sprintf
        BL       sprintf
// 1939         sprintf(Str_Ang[1],"Ad1:%04d\0",AD[1]);//滤波之后的陀螺仪
        LDR.W    R0,??DataTable15_3
        LDR      R2,[R0, #+4]
        LDR.W    R1,??DataTable15_5
        ADD      R0,SP,#+38
          CFI FunCall sprintf
        BL       sprintf
// 1940         sprintf(Str_Ang[2],"Ad2:%04d\0",AD[2]);//滤波之后的陀螺仪
        LDR.W    R0,??DataTable15_3
        LDR      R2,[R0, #+8]
        LDR.W    R1,??DataTable15_6
        ADD      R0,SP,#+68
          CFI FunCall sprintf
        BL       sprintf
// 1941         sprintf(Str_Ang[3],"Ad3:%04d\0",AD[3]);//滤波之后的陀螺仪
        LDR.W    R0,??DataTable15_3
        LDR      R2,[R0, #+12]
        LDR.W    R1,??DataTable15_7
        ADD      R0,SP,#+98
          CFI FunCall sprintf
        BL       sprintf
// 1942 
// 1943         
// 1944 
// 1945         
// 1946 	GUI_PutString(36,14 ,Str_Ang[0]);
        ADD      R2,SP,#+8
        MOVS     R1,#+14
        MOVS     R0,#+36
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 1947 	GUI_PutString(36,23 ,Str_Ang[1]);
        ADD      R2,SP,#+38
        MOVS     R1,#+23
        MOVS     R0,#+36
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 1948 	GUI_PutString(36,32 ,Str_Ang[2]);
        ADD      R2,SP,#+68
        MOVS     R1,#+32
        MOVS     R0,#+36
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 1949 	GUI_PutString(36,41 ,Str_Ang[3]);
        ADD      R2,SP,#+98
        MOVS     R1,#+41
        MOVS     R0,#+36
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 1950         
// 1951         
// 1952         sprintf(Str_Ang[1],"MID:%4d   %4.2f\0",result,MID_ERROR);//滤波之后的陀螺仪
        LDR.W    R0,??DataTable15_8
        LDR      R0,[R0, #+0]
          CFI FunCall __aeabi_f2d
        BL       __aeabi_f2d
        STRD     R0,R1,[SP, #+0]
        LDR.W    R0,??DataTable15_9
        LDR      R2,[R0, #+0]
        LDR.W    R1,??DataTable16
        ADD      R0,SP,#+38
          CFI FunCall sprintf
        BL       sprintf
// 1953         GUI_PutString(20,2,Str_Ang[1]);
        ADD      R2,SP,#+38
        MOVS     R1,#+2
        MOVS     R0,#+20
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 1954       
// 1955         DELAY_MS(5);
        MOVS     R0,#+5
          CFI FunCall systick_delay_ms
        BL       systick_delay_ms
        B.N      ??Set_Ang_0
// 1956 	}
??Set_Ang_3:
        ADD      SP,SP,#+164
          CFI CFA R13+12
        POP      {R4,R5,PC}       ;; return
// 1957 }
          CFI EndBlock cfiBlock13

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13:
        DC32     ?_103

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_1:
        DC32     ?_104

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_2:
        DC32     ?_105

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_3:
        DC32     ?_106

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_4:
        DC32     ?_107

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_5:
        DC32     ?_108

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_6:
        DC32     ?_109

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_7:
        DC32     ?_110

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_8:
        DC32     ?_111

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_9:
        DC32     ?_112

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_10:
        DC32     ?_113

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_11:
        DC32     ?_114

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_12:
        DC32     ?_115

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_13:
        DC32     ?_116

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_14:
        DC32     ?_117

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_15:
        DC32     `Set::Set_Case2`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_16:
        DC32     `Set::Set_Case1`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_17:
        DC32     0x41200000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_18:
        DC32     0x477ffa01

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_19:
        DC32     0xc1200000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_20:
        DC32     0xbf800000
// 1958 
// 1959 
// 1960 
// 1961 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock14 Using cfiCommon0
          CFI Function View_Set
        THUMB
// 1962 int View_Set (void)
// 1963 { 
View_Set:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        SUB      SP,SP,#+336
          CFI CFA R13+344
// 1964   int Vellue[30]={0};
        ADD      R0,SP,#+216
        MOVS     R1,#+120
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
// 1965   char Str1[30][7];
// 1966   
// 1967   int Page=0;//页数
        MOVS     R4,#+0
// 1968   /////////////////////////////////////////////////////////
// 1969   //清屏  
// 1970   GUI_RectangleFill(0, 0, 128, 64, back_color);//画矩形  
        LDR.W    R0,??DataTable15
        LDRB     R0,[R0, #+0]
        STR      R0,[SP, #+0]
        MOVS     R3,#+64
        MOVS     R2,#+128
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_RectangleFill
        BL       GUI_RectangleFill
// 1971   DELAY_MS(25);
        MOVS     R0,#+25
          CFI FunCall systick_delay_ms
        BL       systick_delay_ms
// 1972   /////////////////////////////////////////////////////////
// 1973   //读数据
// 1974   Flash_Read_Plan(Vellue,0,-1);
        MOVS     R2,#-1
        MOVS     R1,#+0
        ADD      R0,SP,#+216
          CFI FunCall Flash_Read_Plan
        BL       Flash_Read_Plan
// 1975   /////////////////////////////////////////////////////////
// 1976   
// 1977   sprintf(Str1[0],  "Al:%3d\0",(int)Vellue[0]);   //
        LDR      R2,[SP, #+216]
        LDR.W    R1,??DataTable15_10
        ADD      R0,SP,#+4
          CFI FunCall sprintf
        BL       sprintf
// 1978   sprintf(Str1[1],  "AS:%3d\0",(int)Vellue[1]);
        LDR      R2,[SP, #+220]
        LDR.W    R1,??DataTable15_11
        ADD      R0,SP,#+11
          CFI FunCall sprintf
        BL       sprintf
// 1979   sprintf(Str1[2],  "Lb:%3d\0",(int)Vellue[2]);
        LDR      R2,[SP, #+224]
        LDR.W    R1,??DataTable15_12
        ADD      R0,SP,#+18
          CFI FunCall sprintf
        BL       sprintf
// 1980   sprintf(Str1[3],  "Za:%3d\0",(int)Vellue[3]);
        LDR      R2,[SP, #+228]
        LDR.W    R1,??DataTable15_13
        ADD      R0,SP,#+25
          CFI FunCall sprintf
        BL       sprintf
// 1981   sprintf(Str1[4],  "TD:%3d\0",(int)Vellue[4]);
        LDR      R2,[SP, #+232]
        LDR.W    R1,??DataTable15_14
        ADD      R0,SP,#+32
          CFI FunCall sprintf
        BL       sprintf
// 1982   sprintf(Str1[5],  "SP:%3d\0",(int)Vellue[5]);
        LDR      R2,[SP, #+236]
        LDR.W    R1,??DataTable15_15
        ADD      R0,SP,#+39
          CFI FunCall sprintf
        BL       sprintf
// 1983   sprintf(Str1[6],  "SI:%3d\0",(int)Vellue[6]);
        LDR      R2,[SP, #+240]
        LDR.W    R1,??DataTable15_16
        ADD      R0,SP,#+46
          CFI FunCall sprintf
        BL       sprintf
// 1984   sprintf(Str1[7],  "S :%3d\0",(int)Vellue[7]);
        LDR      R2,[SP, #+244]
        LDR.W    R1,??DataTable16_1
        ADD      R0,SP,#+53
          CFI FunCall sprintf
        BL       sprintf
// 1985   sprintf(Str1[8],  "AS:%3d\0",(int)Vellue[8]);
        LDR      R2,[SP, #+248]
        LDR.W    R1,??DataTable15_11
        ADD      R0,SP,#+60
          CFI FunCall sprintf
        BL       sprintf
// 1986   sprintf(Str1[9],  "At:%3d\0",(int)Vellue[9]);
        LDR      R2,[SP, #+252]
        LDR.W    R1,??DataTable16_2
        ADD      R0,SP,#+67
          CFI FunCall sprintf
        BL       sprintf
// 1987   sprintf(Str1[10], "__:%3d\0",(int)Vellue[10]);
        LDR      R2,[SP, #+256]
        LDR.W    R1,??DataTable16_3
        ADD      R0,SP,#+74
          CFI FunCall sprintf
        BL       sprintf
// 1988   sprintf(Str1[11], "No:%3d\0",(int)Vellue[11]);
        LDR      R2,[SP, #+260]
        LDR.W    R1,??DataTable16_4
        ADD      R0,SP,#+81
          CFI FunCall sprintf
        BL       sprintf
// 1989   sprintf(Str1[12], "No:%3d\0",(int)Vellue[12]);
        LDR      R2,[SP, #+264]
        LDR.W    R1,??DataTable16_4
        ADD      R0,SP,#+88
          CFI FunCall sprintf
        BL       sprintf
// 1990   sprintf(Str1[13], "No:%3d\0",(int)Vellue[13]);
        LDR      R2,[SP, #+268]
        LDR.W    R1,??DataTable16_4
        ADD      R0,SP,#+95
          CFI FunCall sprintf
        BL       sprintf
// 1991   sprintf(Str1[14], "No:%3d\0",(int)Vellue[14]);
        LDR      R2,[SP, #+272]
        LDR.W    R1,??DataTable16_4
        ADD      R0,SP,#+102
          CFI FunCall sprintf
        BL       sprintf
// 1992   sprintf(Str1[15], "No:%3d\0",(int)Vellue[15]);
        LDR      R2,[SP, #+276]
        LDR.W    R1,??DataTable16_4
        ADD      R0,SP,#+109
          CFI FunCall sprintf
        BL       sprintf
// 1993   sprintf(Str1[16], "St:%3d\0",(int)Vellue[16]);
        LDR      R2,[SP, #+280]
        LDR.W    R1,??DataTable16_5
        ADD      R0,SP,#+116
          CFI FunCall sprintf
        BL       sprintf
// 1994   sprintf(Str1[17], "St:%3d\0",(int)Vellue[17]);
        LDR      R2,[SP, #+284]
        LDR.W    R1,??DataTable16_5
        ADD      R0,SP,#+123
          CFI FunCall sprintf
        BL       sprintf
// 1995   sprintf(Str1[18], "Tu:%3d\0",(int)Vellue[18]);
        LDR      R2,[SP, #+288]
        LDR.W    R1,??DataTable16_6
        ADD      R0,SP,#+130
          CFI FunCall sprintf
        BL       sprintf
// 1996   sprintf(Str1[19], "Tu:%3d\0",(int)Vellue[19]);
        LDR      R2,[SP, #+292]
        LDR.W    R1,??DataTable16_6
        ADD      R0,SP,#+137
          CFI FunCall sprintf
        BL       sprintf
// 1997   sprintf(Str1[20], "Tu:%3d\0",(int)Vellue[20]);
        LDR      R2,[SP, #+296]
        LDR.W    R1,??DataTable16_6
        ADD      R0,SP,#+144
          CFI FunCall sprintf
        BL       sprintf
// 1998   sprintf(Str1[21], "Sp:%3d\0",(int)Vellue[21]);
        LDR      R2,[SP, #+300]
        LDR.W    R1,??DataTable16_7
        ADD      R0,SP,#+151
          CFI FunCall sprintf
        BL       sprintf
// 1999   sprintf(Str1[22], "Sp:%3d\0",(int)Vellue[22]);
        LDR      R2,[SP, #+304]
        LDR.W    R1,??DataTable16_7
        ADD      R0,SP,#+158
          CFI FunCall sprintf
        BL       sprintf
// 2000   sprintf(Str1[23], "_S:%3d\0",(int)Vellue[23]);
        LDR      R2,[SP, #+308]
        LDR.W    R1,??DataTable16_8
        ADD      R0,SP,#+165
          CFI FunCall sprintf
        BL       sprintf
// 2001   sprintf(Str1[24], "An:%3d\0",(int)Vellue[24]);
        LDR      R2,[SP, #+312]
        LDR.W    R1,??DataTable16_9
        ADD      R0,SP,#+172
          CFI FunCall sprintf
        BL       sprintf
// 2002   sprintf(Str1[25], "Ag:%3d\0",(int)Vellue[25]);
        LDR      R2,[SP, #+316]
        LDR.W    R1,??DataTable16_10
        ADD      R0,SP,#+179
          CFI FunCall sprintf
        BL       sprintf
// 2003   sprintf(Str1[26], "__:%3d\0",(int)Vellue[26]);
        LDR      R2,[SP, #+320]
        LDR.W    R1,??DataTable16_3
        ADD      R0,SP,#+186
          CFI FunCall sprintf
        BL       sprintf
// 2004   sprintf(Str1[27], "No:%3d\0",(int)Vellue[27]);
        LDR      R2,[SP, #+324]
        LDR.W    R1,??DataTable16_4
        ADD      R0,SP,#+193
          CFI FunCall sprintf
        BL       sprintf
// 2005 
// 2006   GUI_PutString(0, 1, Str1[0]);
        ADD      R2,SP,#+4
        MOVS     R1,#+1
        MOVS     R0,#+0
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2007   GUI_PutString(42,1, Str1[1]);
        ADD      R2,SP,#+11
        MOVS     R1,#+1
        MOVS     R0,#+42
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2008   GUI_PutString(84,1, Str1[2]);
        ADD      R2,SP,#+18
        MOVS     R1,#+1
        MOVS     R0,#+84
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2009   GUI_PutString(0, 11, Str1[3]);
        ADD      R2,SP,#+25
        MOVS     R1,#+11
        MOVS     R0,#+0
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2010   GUI_PutString(42,11, Str1[4]);
        ADD      R2,SP,#+32
        MOVS     R1,#+11
        MOVS     R0,#+42
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2011   GUI_PutString(84,11, Str1[5]);
        ADD      R2,SP,#+39
        MOVS     R1,#+11
        MOVS     R0,#+84
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2012   GUI_PutString(0, 21, Str1[6]);
        ADD      R2,SP,#+46
        MOVS     R1,#+21
        MOVS     R0,#+0
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2013   GUI_PutString(42,21, Str1[7]);
        ADD      R2,SP,#+53
        MOVS     R1,#+21
        MOVS     R0,#+42
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2014   GUI_PutString(84,21, Str1[8]);  
        ADD      R2,SP,#+60
        MOVS     R1,#+21
        MOVS     R0,#+84
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2015   GUI_PutString(0, 31, Str1[9]);
        ADD      R2,SP,#+67
        MOVS     R1,#+31
        MOVS     R0,#+0
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2016   GUI_PutString(42,31, Str1[10]);
        ADD      R2,SP,#+74
        MOVS     R1,#+31
        MOVS     R0,#+42
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2017   GUI_PutString(84,31, Str1[11]);  
        ADD      R2,SP,#+81
        MOVS     R1,#+31
        MOVS     R0,#+84
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2018   GUI_PutString(0, 41, Str1[12]);
        ADD      R2,SP,#+88
        MOVS     R1,#+41
        MOVS     R0,#+0
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2019   GUI_PutString(42,41, Str1[13]);
        ADD      R2,SP,#+95
        MOVS     R1,#+41
        MOVS     R0,#+42
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2020   GUI_PutString(84,41, Str1[14]);
        ADD      R2,SP,#+102
        MOVS     R1,#+41
        MOVS     R0,#+84
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2021   GUI_PutString(0, 51, Str1[15]);
        ADD      R2,SP,#+109
        MOVS     R1,#+51
        MOVS     R0,#+0
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2022   GUI_PutString(42,51, Str1[16]);
        ADD      R2,SP,#+116
        MOVS     R1,#+51
        MOVS     R0,#+42
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2023   GUI_PutString(84,51, Str1[17]);
        ADD      R2,SP,#+123
        MOVS     R1,#+51
        MOVS     R0,#+84
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2024   
// 2025   Press=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable14_3
        STR      R0,[R1, #+0]
// 2026   
// 2027   while(1)
// 2028   {
// 2029      Get_Press();  //获取按键
??View_Set_0:
          CFI FunCall Get_Press
        BL       Get_Press
// 2030      if (Press==K_LEFT||Press==K_RIGHT||Press==K_MID)
        LDR.N    R0,??DataTable14_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+3
        BEQ.N    ??View_Set_1
        LDR.N    R0,??DataTable14_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+4
        BEQ.N    ??View_Set_1
        LDR.N    R0,??DataTable14_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+5
        BNE.N    ??View_Set_2
// 2031 	 {
// 2032 	 	GUI_RectangleFill(0, 0, 128, 64, back_color);//画矩形
??View_Set_1:
        LDR.W    R0,??DataTable15
        LDRB     R0,[R0, #+0]
        STR      R0,[SP, #+0]
        MOVS     R3,#+64
        MOVS     R2,#+128
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_RectangleFill
        BL       GUI_RectangleFill
// 2033 	 	Press=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable14_3
        STR      R0,[R1, #+0]
// 2034         break;
// 2035 	 }
// 2036      
// 2037      if (Press==K_UP||Press==K_DOWN)         //上下键切换页面
// 2038 	 {
// 2039        Page++;
// 2040        Page%=2;
// 2041 	   GUI_RectangleFill(0, 0, 128, 64, back_color);//画矩形填充屏幕
// 2042        if(Page==0)
// 2043        {
// 2044         GUI_PutString(0, 1,  Str1[0]);
// 2045         GUI_PutString(42,1,  Str1[1]);
// 2046         GUI_PutString(84,1,  Str1[2]);
// 2047         GUI_PutString(0, 11, Str1[3]);
// 2048         GUI_PutString(42,11, Str1[4]);
// 2049         GUI_PutString(84,11, Str1[5]);
// 2050         GUI_PutString(0, 21, Str1[6]);
// 2051         GUI_PutString(42,21, Str1[7]);
// 2052         GUI_PutString(84,21, Str1[8]);  
// 2053         GUI_PutString(0, 31, Str1[9]);
// 2054         GUI_PutString(42,31, Str1[10]);
// 2055         GUI_PutString(84,31, Str1[11]);  
// 2056         GUI_PutString(0, 41, Str1[12]);
// 2057         GUI_PutString(42,41, Str1[13]);
// 2058         GUI_PutString(84,41, Str1[14]);
// 2059         GUI_PutString(0, 51, Str1[15]);
// 2060         GUI_PutString(42,51, Str1[16]);
// 2061         GUI_PutString(84,51, Str1[17]);
// 2062        
// 2063        }
// 2064        else
// 2065        {
// 2066         GUI_PutString(0, 1,  Str1[18]);
// 2067         GUI_PutString(42,1,  Str1[19]);
// 2068         GUI_PutString(84,1,  Str1[20]);
// 2069         GUI_PutString(0, 11, Str1[21]);
// 2070         GUI_PutString(42,11, Str1[22]);
// 2071         GUI_PutString(84,11, Str1[23]);
// 2072         GUI_PutString(0, 21, Str1[24]);
// 2073         GUI_PutString(42,21, Str1[25]);
// 2074         GUI_PutString(84,21, Str1[26]);
// 2075         GUI_PutString(0, 31, Str1[27]);
// 2076 //        GUI_PutString(42,31, Str1[28]);
// 2077 //        GUI_PutString(84,31, Str1[29]);
// 2078        }
// 2079 	   Press=0;
// 2080 	 }
// 2081   }
// 2082   
// 2083 return 0;
        MOVS     R0,#+0
        B.N      ??View_Set_3
??View_Set_2:
        LDR.N    R0,??DataTable14_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??View_Set_4
        LDR.N    R0,??DataTable14_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??View_Set_0
??View_Set_4:
        ADDS     R4,R4,#+1
        MOVS     R0,#+2
        SDIV     R1,R4,R0
        MLS      R4,R0,R1,R4
        LDR.W    R0,??DataTable15
        LDRB     R0,[R0, #+0]
        STR      R0,[SP, #+0]
        MOVS     R3,#+64
        MOVS     R2,#+128
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_RectangleFill
        BL       GUI_RectangleFill
        CMP      R4,#+0
        BNE.N    ??View_Set_5
        ADD      R2,SP,#+4
        MOVS     R1,#+1
        MOVS     R0,#+0
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        ADD      R2,SP,#+11
        MOVS     R1,#+1
        MOVS     R0,#+42
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        ADD      R2,SP,#+18
        MOVS     R1,#+1
        MOVS     R0,#+84
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        ADD      R2,SP,#+25
        MOVS     R1,#+11
        MOVS     R0,#+0
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        ADD      R2,SP,#+32
        MOVS     R1,#+11
        MOVS     R0,#+42
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        ADD      R2,SP,#+39
        MOVS     R1,#+11
        MOVS     R0,#+84
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        ADD      R2,SP,#+46
        MOVS     R1,#+21
        MOVS     R0,#+0
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        ADD      R2,SP,#+53
        MOVS     R1,#+21
        MOVS     R0,#+42
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        ADD      R2,SP,#+60
        MOVS     R1,#+21
        MOVS     R0,#+84
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        ADD      R2,SP,#+67
        MOVS     R1,#+31
        MOVS     R0,#+0
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        ADD      R2,SP,#+74
        MOVS     R1,#+31
        MOVS     R0,#+42
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        ADD      R2,SP,#+81
        MOVS     R1,#+31
        MOVS     R0,#+84
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        ADD      R2,SP,#+88
        MOVS     R1,#+41
        MOVS     R0,#+0
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        ADD      R2,SP,#+95
        MOVS     R1,#+41
        MOVS     R0,#+42
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        ADD      R2,SP,#+102
        MOVS     R1,#+41
        MOVS     R0,#+84
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        ADD      R2,SP,#+109
        MOVS     R1,#+51
        MOVS     R0,#+0
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        ADD      R2,SP,#+116
        MOVS     R1,#+51
        MOVS     R0,#+42
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        ADD      R2,SP,#+123
        MOVS     R1,#+51
        MOVS     R0,#+84
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        B.N      ??View_Set_6
??View_Set_5:
        ADD      R2,SP,#+130
        MOVS     R1,#+1
        MOVS     R0,#+0
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        ADD      R2,SP,#+137
        MOVS     R1,#+1
        MOVS     R0,#+42
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        ADD      R2,SP,#+144
        MOVS     R1,#+1
        MOVS     R0,#+84
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        ADD      R2,SP,#+151
        MOVS     R1,#+11
        MOVS     R0,#+0
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        ADD      R2,SP,#+158
        MOVS     R1,#+11
        MOVS     R0,#+42
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        ADD      R2,SP,#+165
        MOVS     R1,#+11
        MOVS     R0,#+84
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        ADD      R2,SP,#+172
        MOVS     R1,#+21
        MOVS     R0,#+0
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        ADD      R2,SP,#+179
        MOVS     R1,#+21
        MOVS     R0,#+42
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        ADD      R2,SP,#+186
        MOVS     R1,#+21
        MOVS     R0,#+84
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        ADD      R2,SP,#+193
        MOVS     R1,#+31
        MOVS     R0,#+0
          CFI FunCall GUI_PutString
        BL       GUI_PutString
??View_Set_6:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable14_3
        STR      R0,[R1, #+0]
        B.N      ??View_Set_0
??View_Set_3:
        ADD      SP,SP,#+336
          CFI CFA R13+8
        POP      {R4,PC}          ;; return
// 2084 }
          CFI EndBlock cfiBlock14

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14:
        DC32     ?_118

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_1:
        DC32     ?_119

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_2:
        DC32     ?_120

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_3:
        DC32     Press

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_4:
        DC32     0x43fe1008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_5:
        DC32     Car_Run_Ui_Show_Long

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_6:
        DC32     Car_Run_Ui_Show_How_Long

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_7:
        DC32     LastTime_Car_Run_Distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_8:
        DC32     Ran_Erase_Speed_I

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_9:
        DC32     Car_Run

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_10:
        DC32     Debug_CarAngPrt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_11:
        DC32     Seagull_Left

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_12:
        DC32     Seagull_Right

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_13:
        DC32     OLED_OPEN

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_14:
        DC32     ?_121

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_15:
        DC32     ?_122

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_16:
        DC32     ?_123

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_17:
        DC32     Str_View

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_18:
        DC32     imgbuff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_19:
        DC32     Pic

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_20:
        DC32     ?_124

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_21:
        DC32     ?_125

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_22:
        DC32     0x3fe00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_23:
        DC32     XZ

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock15 Using cfiCommon0
          CFI Function View_Plan
        THUMB
// 2085 int View_Plan(void)
// 2086 {
View_Plan:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        SUB      SP,SP,#+344
          CFI CFA R13+360
// 2087   int View_Plan_Plan=0;
        MOVS     R6,#+0
// 2088   int Vellue[30]={0};
        ADD      R0,SP,#+224
        MOVS     R1,#+120
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
// 2089   char Str1[31][7];
// 2090   int Need_Fresh=0;
        MOVS     R4,#+0
// 2091   int Page=0;//页数
        MOVS     R5,#+0
// 2092   /////////////////////////////////////////////////////////
// 2093   //清屏  
// 2094   GUI_RectangleFill(0, 0, 128, 64, back_color);//画矩形  
        LDR.W    R0,??DataTable15
        LDRB     R0,[R0, #+0]
        STR      R0,[SP, #+0]
        MOVS     R3,#+64
        MOVS     R2,#+128
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_RectangleFill
        BL       GUI_RectangleFill
// 2095   DELAY_MS(25);
        MOVS     R0,#+25
          CFI FunCall systick_delay_ms
        BL       systick_delay_ms
// 2096   /////////////////////////////////////////////////////////
// 2097   //读数据
// 2098   View_Plan_Plan=Flash_Read_Plan(Flash_Data_Public,0,28);//读取Flash公共部分变量
        MOVS     R2,#+28
        MOVS     R1,#+0
        LDR.W    R0,??DataTable16_11
          CFI FunCall Flash_Read_Plan
        BL       Flash_Read_Plan
        MOVS     R6,R0
// 2099   Flash_Read_Plan(Vellue,View_Plan_Plan,-1);
        MOVS     R2,#-1
        MOVS     R0,R6
        MOVS     R1,R0
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        ADD      R0,SP,#+224
          CFI FunCall Flash_Read_Plan
        BL       Flash_Read_Plan
// 2100 
// 2101   sprintf(Str1[0],  "Al:%3d\0",Vellue[0]);   //
        LDR      R2,[SP, #+224]
        LDR.W    R1,??DataTable15_10
        ADD      R0,SP,#+4
          CFI FunCall sprintf
        BL       sprintf
// 2102   sprintf(Str1[1],  "AS:%3d\0",Vellue[1]);
        LDR      R2,[SP, #+228]
        LDR.W    R1,??DataTable15_11
        ADD      R0,SP,#+11
          CFI FunCall sprintf
        BL       sprintf
// 2103   sprintf(Str1[2],  "Lb:%3d\0",Vellue[2]);
        LDR      R2,[SP, #+232]
        LDR.W    R1,??DataTable15_12
        ADD      R0,SP,#+18
          CFI FunCall sprintf
        BL       sprintf
// 2104   sprintf(Str1[3],  "Za:%3d\0",Vellue[3]);
        LDR      R2,[SP, #+236]
        LDR.W    R1,??DataTable15_13
        ADD      R0,SP,#+25
          CFI FunCall sprintf
        BL       sprintf
// 2105   sprintf(Str1[4],  "TD:%3d\0",Vellue[4]);
        LDR      R2,[SP, #+240]
        LDR.W    R1,??DataTable15_14
        ADD      R0,SP,#+32
          CFI FunCall sprintf
        BL       sprintf
// 2106   sprintf(Str1[5],  "SP:%3d\0",Vellue[5]);
        LDR      R2,[SP, #+244]
        LDR.W    R1,??DataTable15_15
        ADD      R0,SP,#+39
          CFI FunCall sprintf
        BL       sprintf
// 2107   sprintf(Str1[6],  "SI:%3d\0",Vellue[6]);
        LDR      R2,[SP, #+248]
        LDR.W    R1,??DataTable15_16
        ADD      R0,SP,#+46
          CFI FunCall sprintf
        BL       sprintf
// 2108   sprintf(Str1[7],  "S :%3d\0",Vellue[7]);
        LDR      R2,[SP, #+252]
        LDR.W    R1,??DataTable16_1
        ADD      R0,SP,#+53
          CFI FunCall sprintf
        BL       sprintf
// 2109   sprintf(Str1[8],  "AS:%3d\0",Vellue[8]);
        LDR      R2,[SP, #+256]
        LDR.W    R1,??DataTable15_11
        ADD      R0,SP,#+60
          CFI FunCall sprintf
        BL       sprintf
// 2110   sprintf(Str1[9],  "At:%3d\0",Vellue[9]);
        LDR      R2,[SP, #+260]
        LDR.W    R1,??DataTable16_2
        ADD      R0,SP,#+67
          CFI FunCall sprintf
        BL       sprintf
// 2111   sprintf(Str1[10], "__:%3d\0",Vellue[10]);
        LDR      R2,[SP, #+264]
        LDR.W    R1,??DataTable16_3
        ADD      R0,SP,#+74
          CFI FunCall sprintf
        BL       sprintf
// 2112   sprintf(Str1[11], "No:%3d\0",Vellue[11]);
        LDR      R2,[SP, #+268]
        LDR.W    R1,??DataTable16_4
        ADD      R0,SP,#+81
          CFI FunCall sprintf
        BL       sprintf
// 2113   sprintf(Str1[12], "No:%3d\0",Vellue[12]);
        LDR      R2,[SP, #+272]
        LDR.W    R1,??DataTable16_4
        ADD      R0,SP,#+88
          CFI FunCall sprintf
        BL       sprintf
// 2114   sprintf(Str1[13], "No:%3d\0",Vellue[13]);
        LDR      R2,[SP, #+276]
        LDR.W    R1,??DataTable16_4
        ADD      R0,SP,#+95
          CFI FunCall sprintf
        BL       sprintf
// 2115   sprintf(Str1[14], "No:%3d\0",Vellue[14]);
        LDR      R2,[SP, #+280]
        LDR.W    R1,??DataTable16_4
        ADD      R0,SP,#+102
          CFI FunCall sprintf
        BL       sprintf
// 2116   sprintf(Str1[15], "No:%3d\0",Vellue[15]);
        LDR      R2,[SP, #+284]
        LDR.W    R1,??DataTable16_4
        ADD      R0,SP,#+109
          CFI FunCall sprintf
        BL       sprintf
// 2117   sprintf(Str1[16], "St:%3d\0",Vellue[16]);
        LDR      R2,[SP, #+288]
        LDR.W    R1,??DataTable16_5
        ADD      R0,SP,#+116
          CFI FunCall sprintf
        BL       sprintf
// 2118   sprintf(Str1[17], "St:%3d\0",Vellue[17]);
        LDR      R2,[SP, #+292]
        LDR.W    R1,??DataTable16_5
        ADD      R0,SP,#+123
          CFI FunCall sprintf
        BL       sprintf
// 2119   sprintf(Str1[18], "Tu:%3d\0",Vellue[18]);
        LDR      R2,[SP, #+296]
        LDR.W    R1,??DataTable16_6
        ADD      R0,SP,#+130
          CFI FunCall sprintf
        BL       sprintf
// 2120   sprintf(Str1[19], "Tu:%3d\0",Vellue[19]);
        LDR      R2,[SP, #+300]
        LDR.W    R1,??DataTable16_6
        ADD      R0,SP,#+137
          CFI FunCall sprintf
        BL       sprintf
// 2121   sprintf(Str1[20], "Tu:%3d\0",Vellue[20]);
        LDR      R2,[SP, #+304]
        LDR.W    R1,??DataTable16_6
        ADD      R0,SP,#+144
          CFI FunCall sprintf
        BL       sprintf
// 2122   sprintf(Str1[21], "Sp:%3d\0",Vellue[21]);
        LDR      R2,[SP, #+308]
        LDR.W    R1,??DataTable16_7
        ADD      R0,SP,#+151
          CFI FunCall sprintf
        BL       sprintf
// 2123   sprintf(Str1[22], "Sp:%3d\0",Vellue[22]);
        LDR      R2,[SP, #+312]
        LDR.W    R1,??DataTable16_7
        ADD      R0,SP,#+158
          CFI FunCall sprintf
        BL       sprintf
// 2124   sprintf(Str1[23], "_S:%3d\0",Vellue[23]);
        LDR      R2,[SP, #+316]
        LDR.W    R1,??DataTable16_8
        ADD      R0,SP,#+165
          CFI FunCall sprintf
        BL       sprintf
// 2125   sprintf(Str1[24], "An:%3d\0",Vellue[24]);
        LDR      R2,[SP, #+320]
        LDR.W    R1,??DataTable16_9
        ADD      R0,SP,#+172
          CFI FunCall sprintf
        BL       sprintf
// 2126   sprintf(Str1[25], "Ag:%3d\0",Vellue[25]);
        LDR      R2,[SP, #+324]
        LDR.W    R1,??DataTable16_10
        ADD      R0,SP,#+179
          CFI FunCall sprintf
        BL       sprintf
// 2127   sprintf(Str1[26], "__:%3d\0",Vellue[26]);
        LDR      R2,[SP, #+328]
        LDR.W    R1,??DataTable16_3
        ADD      R0,SP,#+186
          CFI FunCall sprintf
        BL       sprintf
// 2128   sprintf(Str1[27], "No:%3d\0",Vellue[27]);
        LDR      R2,[SP, #+332]
        LDR.W    R1,??DataTable16_4
        ADD      R0,SP,#+193
          CFI FunCall sprintf
        BL       sprintf
// 2129   sprintf(Str1[28], "__:%3d\0",Vellue[28]);
        LDR      R2,[SP, #+336]
        LDR.W    R1,??DataTable16_3
        ADD      R0,SP,#+200
          CFI FunCall sprintf
        BL       sprintf
// 2130   sprintf(Str1[29], "No:%3d\0",Vellue[29]);
        LDR      R2,[SP, #+340]
        LDR.W    R1,??DataTable16_4
        ADD      R0,SP,#+207
          CFI FunCall sprintf
        BL       sprintf
// 2131   sprintf(Str1[30], "PL:%3d\0",View_Plan_Plan);
        MOVS     R2,R6
        LDR.W    R1,??DataTable16_12
        ADD      R0,SP,#+214
          CFI FunCall sprintf
        BL       sprintf
// 2132   
// 2133   
// 2134   GUI_PutString(0, 1,  Str1[0]);
        ADD      R2,SP,#+4
        MOVS     R1,#+1
        MOVS     R0,#+0
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2135   GUI_PutString(42,1,  Str1[1]);
        ADD      R2,SP,#+11
        MOVS     R1,#+1
        MOVS     R0,#+42
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2136   GUI_PutString(84,1,  Str1[2]);
        ADD      R2,SP,#+18
        MOVS     R1,#+1
        MOVS     R0,#+84
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2137   GUI_PutString(0, 11, Str1[3]);
        ADD      R2,SP,#+25
        MOVS     R1,#+11
        MOVS     R0,#+0
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2138   GUI_PutString(42,11, Str1[4]);
        ADD      R2,SP,#+32
        MOVS     R1,#+11
        MOVS     R0,#+42
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2139   GUI_PutString(84,11, Str1[5]);
        ADD      R2,SP,#+39
        MOVS     R1,#+11
        MOVS     R0,#+84
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2140   GUI_PutString(0, 21, Str1[6]);
        ADD      R2,SP,#+46
        MOVS     R1,#+21
        MOVS     R0,#+0
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2141   GUI_PutString(42,21, Str1[7]);
        ADD      R2,SP,#+53
        MOVS     R1,#+21
        MOVS     R0,#+42
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2142   GUI_PutString(84,21, Str1[8]);  
        ADD      R2,SP,#+60
        MOVS     R1,#+21
        MOVS     R0,#+84
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2143   GUI_PutString(0, 31, Str1[9]);
        ADD      R2,SP,#+67
        MOVS     R1,#+31
        MOVS     R0,#+0
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2144   GUI_PutString(42,31, Str1[10]);
        ADD      R2,SP,#+74
        MOVS     R1,#+31
        MOVS     R0,#+42
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2145   GUI_PutString(84,31, Str1[11]);  
        ADD      R2,SP,#+81
        MOVS     R1,#+31
        MOVS     R0,#+84
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2146   GUI_PutString(0, 41, Str1[12]);
        ADD      R2,SP,#+88
        MOVS     R1,#+41
        MOVS     R0,#+0
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2147   GUI_PutString(42,41, Str1[13]);
        ADD      R2,SP,#+95
        MOVS     R1,#+41
        MOVS     R0,#+42
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2148   GUI_PutString(84,41, Str1[14]);
        ADD      R2,SP,#+102
        MOVS     R1,#+41
        MOVS     R0,#+84
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2149   GUI_PutString(0, 51, Str1[15]);
        ADD      R2,SP,#+109
        MOVS     R1,#+51
        MOVS     R0,#+0
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2150   GUI_PutString(42,51, Str1[16]);
        ADD      R2,SP,#+116
        MOVS     R1,#+51
        MOVS     R0,#+42
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2151   GUI_PutString(84,51, Str1[17]);
        ADD      R2,SP,#+123
        MOVS     R1,#+51
        MOVS     R0,#+84
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2152   
// 2153   Press=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable16_13
        STR      R0,[R1, #+0]
// 2154   
// 2155   while(1)
// 2156   {
// 2157      Get_Press();  //获取按键
??View_Plan_0:
          CFI FunCall Get_Press
        BL       Get_Press
// 2158      
// 2159      if(Press==K_LEFT||Press==K_RIGHT)
        LDR.W    R0,??DataTable16_13
        LDR      R0,[R0, #+0]
        CMP      R0,#+3
        BEQ.N    ??View_Plan_1
        LDR.W    R0,??DataTable16_13
        LDR      R0,[R0, #+0]
        CMP      R0,#+4
        BNE.W    ??View_Plan_2
// 2160      {
// 2161        GUI_RectangleFill(0, 0, 128, 64, back_color);//画矩形
??View_Plan_1:
        LDR.W    R0,??DataTable15
        LDRB     R0,[R0, #+0]
        STR      R0,[SP, #+0]
        MOVS     R3,#+64
        MOVS     R2,#+128
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_RectangleFill
        BL       GUI_RectangleFill
// 2162 	   
// 2163        Need_Fresh=1;
        MOVS     R0,#+1
        MOVS     R4,R0
// 2164        if(Press==K_LEFT)
        LDR.W    R0,??DataTable16_13
        LDR      R0,[R0, #+0]
        CMP      R0,#+3
        BNE.N    ??View_Plan_3
// 2165        {
// 2166          if(View_Plan_Plan==1)
        CMP      R6,#+1
        BNE.N    ??View_Plan_4
// 2167            View_Plan_Plan=6;
        MOVS     R0,#+6
        MOVS     R6,R0
        B.N      ??View_Plan_5
// 2168          else
// 2169          View_Plan_Plan--;
??View_Plan_4:
        SUBS     R6,R6,#+1
        B.N      ??View_Plan_5
// 2170        }
// 2171        else
// 2172        {
// 2173          if(View_Plan_Plan==6)
??View_Plan_3:
        CMP      R6,#+6
        BNE.N    ??View_Plan_6
// 2174            View_Plan_Plan=1;
        MOVS     R0,#+1
        MOVS     R6,R0
        B.N      ??View_Plan_5
// 2175          else
// 2176          View_Plan_Plan++;
??View_Plan_6:
        ADDS     R6,R6,#+1
// 2177        }
// 2178        
// 2179        Press=0;
??View_Plan_5:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable16_13
        STR      R0,[R1, #+0]
// 2180        Flash_Read_Plan(Vellue,View_Plan_Plan,-1);//更新数据
        MOVS     R2,#-1
        MOVS     R0,R6
        MOVS     R1,R0
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        ADD      R0,SP,#+224
          CFI FunCall Flash_Read_Plan
        BL       Flash_Read_Plan
// 2181        sprintf(Str1[0],  "Al:%3d\0",(int)Vellue[0]);   
        LDR      R2,[SP, #+224]
        LDR.N    R1,??DataTable15_10
        ADD      R0,SP,#+4
          CFI FunCall sprintf
        BL       sprintf
// 2182        sprintf(Str1[1],  "AS:%3d\0",(int)Vellue[1]);
        LDR      R2,[SP, #+228]
        LDR.N    R1,??DataTable15_11
        ADD      R0,SP,#+11
          CFI FunCall sprintf
        BL       sprintf
// 2183        sprintf(Str1[2],  "Lb:%3d\0",(int)Vellue[2]);
        LDR      R2,[SP, #+232]
        LDR.N    R1,??DataTable15_12
        ADD      R0,SP,#+18
          CFI FunCall sprintf
        BL       sprintf
// 2184        sprintf(Str1[3],  "Za:%3d\0",(int)Vellue[3]);
        LDR      R2,[SP, #+236]
        LDR.N    R1,??DataTable15_13
        ADD      R0,SP,#+25
          CFI FunCall sprintf
        BL       sprintf
// 2185        sprintf(Str1[4],  "TD:%3d\0",(int)Vellue[4]);
        LDR      R2,[SP, #+240]
        LDR.N    R1,??DataTable15_14
        ADD      R0,SP,#+32
          CFI FunCall sprintf
        BL       sprintf
// 2186        sprintf(Str1[5],  "SP:%3d\0",(int)Vellue[5]);
        LDR      R2,[SP, #+244]
        LDR.N    R1,??DataTable15_15
        ADD      R0,SP,#+39
          CFI FunCall sprintf
        BL       sprintf
// 2187        sprintf(Str1[6],  "SI:%3d\0",(int)Vellue[6]);
        LDR      R2,[SP, #+248]
        LDR.N    R1,??DataTable15_16
        ADD      R0,SP,#+46
          CFI FunCall sprintf
        BL       sprintf
// 2188        sprintf(Str1[7],  "S :%3d\0",(int)Vellue[7]);
        LDR      R2,[SP, #+252]
        LDR.W    R1,??DataTable16_1
        ADD      R0,SP,#+53
          CFI FunCall sprintf
        BL       sprintf
// 2189        sprintf(Str1[8],  "AS:%3d\0",(int)Vellue[8]);
        LDR      R2,[SP, #+256]
        LDR.N    R1,??DataTable15_11
        ADD      R0,SP,#+60
          CFI FunCall sprintf
        BL       sprintf
// 2190        sprintf(Str1[9],  "At:%3d\0",(int)Vellue[9]);
        LDR      R2,[SP, #+260]
        LDR.W    R1,??DataTable16_2
        ADD      R0,SP,#+67
          CFI FunCall sprintf
        BL       sprintf
// 2191        sprintf(Str1[10], "__:%3d\0",(int)Vellue[10]);
        LDR      R2,[SP, #+264]
        LDR.W    R1,??DataTable16_3
        ADD      R0,SP,#+74
          CFI FunCall sprintf
        BL       sprintf
// 2192        sprintf(Str1[11], "No:%3d\0",(int)Vellue[11]);
        LDR      R2,[SP, #+268]
        LDR.W    R1,??DataTable16_4
        ADD      R0,SP,#+81
          CFI FunCall sprintf
        BL       sprintf
// 2193        sprintf(Str1[12], "No:%3d\0",(int)Vellue[12]);
        LDR      R2,[SP, #+272]
        LDR.W    R1,??DataTable16_4
        ADD      R0,SP,#+88
          CFI FunCall sprintf
        BL       sprintf
// 2194        sprintf(Str1[13], "No:%3d\0",(int)Vellue[13]);
        LDR      R2,[SP, #+276]
        LDR.W    R1,??DataTable16_4
        ADD      R0,SP,#+95
          CFI FunCall sprintf
        BL       sprintf
// 2195        sprintf(Str1[14], "No:%3d\0",(int)Vellue[14]);
        LDR      R2,[SP, #+280]
        LDR.W    R1,??DataTable16_4
        ADD      R0,SP,#+102
          CFI FunCall sprintf
        BL       sprintf
// 2196        sprintf(Str1[15], "No:%3d\0",(int)Vellue[15]);
        LDR      R2,[SP, #+284]
        LDR.W    R1,??DataTable16_4
        ADD      R0,SP,#+109
          CFI FunCall sprintf
        BL       sprintf
// 2197        sprintf(Str1[16], "St:%3d\0",(int)Vellue[16]);
        LDR      R2,[SP, #+288]
        LDR.W    R1,??DataTable16_5
        ADD      R0,SP,#+116
          CFI FunCall sprintf
        BL       sprintf
// 2198        sprintf(Str1[17], "St:%3d\0",(int)Vellue[17]);
        LDR      R2,[SP, #+292]
        LDR.W    R1,??DataTable16_5
        ADD      R0,SP,#+123
          CFI FunCall sprintf
        BL       sprintf
// 2199        sprintf(Str1[18], "Tu:%3d\0",(int)Vellue[18]);
        LDR      R2,[SP, #+296]
        LDR.W    R1,??DataTable16_6
        ADD      R0,SP,#+130
          CFI FunCall sprintf
        BL       sprintf
// 2200        sprintf(Str1[19], "Tu:%3d\0",(int)Vellue[19]);
        LDR      R2,[SP, #+300]
        LDR.W    R1,??DataTable16_6
        ADD      R0,SP,#+137
          CFI FunCall sprintf
        BL       sprintf
// 2201        sprintf(Str1[20], "Tu:%3d\0",(int)Vellue[20]);
        LDR      R2,[SP, #+304]
        LDR.W    R1,??DataTable16_6
        ADD      R0,SP,#+144
          CFI FunCall sprintf
        BL       sprintf
// 2202        sprintf(Str1[21], "Sp:%3d\0",(int)Vellue[21]);
        LDR      R2,[SP, #+308]
        LDR.W    R1,??DataTable16_7
        ADD      R0,SP,#+151
          CFI FunCall sprintf
        BL       sprintf
// 2203        sprintf(Str1[22], "Sp:%3d\0",(int)Vellue[22]);
        LDR      R2,[SP, #+312]
        LDR.W    R1,??DataTable16_7
        ADD      R0,SP,#+158
          CFI FunCall sprintf
        BL       sprintf
// 2204        sprintf(Str1[23], "_S:%3d\0",(int)Vellue[23]);
        LDR      R2,[SP, #+316]
        LDR.W    R1,??DataTable16_8
        ADD      R0,SP,#+165
          CFI FunCall sprintf
        BL       sprintf
// 2205        sprintf(Str1[24], "An:%3d\0",(int)Vellue[24]);
        LDR      R2,[SP, #+320]
        LDR.W    R1,??DataTable16_9
        ADD      R0,SP,#+172
          CFI FunCall sprintf
        BL       sprintf
// 2206        sprintf(Str1[25], "Ag:%3d\0",(int)Vellue[25]);
        LDR      R2,[SP, #+324]
        LDR.W    R1,??DataTable16_10
        ADD      R0,SP,#+179
          CFI FunCall sprintf
        BL       sprintf
// 2207        sprintf(Str1[26], "__:%3d\0",(int)Vellue[26]);
        LDR      R2,[SP, #+328]
        LDR.W    R1,??DataTable16_3
        ADD      R0,SP,#+186
          CFI FunCall sprintf
        BL       sprintf
// 2208        sprintf(Str1[27], "No:%3d\0",(int)Vellue[27]);
        LDR      R2,[SP, #+332]
        LDR.W    R1,??DataTable16_4
        ADD      R0,SP,#+193
          CFI FunCall sprintf
        BL       sprintf
// 2209        sprintf(Str1[28], "__:%3d\0",(int)Vellue[28]);
        LDR      R2,[SP, #+336]
        LDR.W    R1,??DataTable16_3
        ADD      R0,SP,#+200
          CFI FunCall sprintf
        BL       sprintf
// 2210        sprintf(Str1[29], "No:%3d\0",(int)Vellue[29]);
        LDR      R2,[SP, #+340]
        LDR.W    R1,??DataTable16_4
        ADD      R0,SP,#+207
          CFI FunCall sprintf
        BL       sprintf
// 2211        sprintf(Str1[30], "PL:%3d\0",View_Plan_Plan); 
        MOVS     R2,R6
        LDR.W    R1,??DataTable16_12
        ADD      R0,SP,#+214
          CFI FunCall sprintf
        BL       sprintf
// 2212      }
// 2213      
// 2214      if (Press==K_MID)
??View_Plan_2:
        LDR.W    R0,??DataTable16_13
        LDR      R0,[R0, #+0]
        CMP      R0,#+5
        BNE.N    ??View_Plan_7
// 2215 	 {
// 2216 	 	GUI_RectangleFill(0, 0, 128, 64, back_color);//画矩形
        LDR.N    R0,??DataTable15
        LDRB     R0,[R0, #+0]
        STR      R0,[SP, #+0]
        MOVS     R3,#+64
        MOVS     R2,#+128
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_RectangleFill
        BL       GUI_RectangleFill
// 2217 	 	Press=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable16_13
        STR      R0,[R1, #+0]
// 2218         break;
// 2219 	 }
// 2220      if (Press==K_UP||Press==K_DOWN||Need_Fresh==1)         //上下键切换页面
// 2221 	 {
// 2222        if(Need_Fresh==0)
// 2223        {
// 2224        Page++;
// 2225        Page%=2;
// 2226        }
// 2227        Need_Fresh=0;
// 2228 	   GUI_RectangleFill(0, 0, 128, 64, back_color);//画矩形填充屏幕
// 2229        if(Page==0)
// 2230        {
// 2231         GUI_PutString(0, 1,  Str1[0]);
// 2232         GUI_PutString(42,1,  Str1[1]);
// 2233         GUI_PutString(84,1,  Str1[2]);
// 2234         GUI_PutString(0, 11, Str1[3]);
// 2235         GUI_PutString(42,11, Str1[4]);
// 2236         GUI_PutString(84,11, Str1[5]);
// 2237         GUI_PutString(0, 21, Str1[6]);
// 2238         GUI_PutString(42,21, Str1[7]);
// 2239         GUI_PutString(84,21, Str1[8]);  
// 2240         GUI_PutString(0, 31, Str1[9]);
// 2241         GUI_PutString(42,31, Str1[10]);
// 2242         GUI_PutString(84,31, Str1[11]);  
// 2243         GUI_PutString(0, 41, Str1[12]);
// 2244         GUI_PutString(42,41, Str1[13]);
// 2245         GUI_PutString(84,41, Str1[14]);
// 2246         GUI_PutString(0, 51, Str1[15]);
// 2247         GUI_PutString(42,51, Str1[16]);
// 2248         GUI_PutString(84,51, Str1[17]);
// 2249        
// 2250        }
// 2251        else
// 2252        {
// 2253         GUI_PutString(0, 1,  Str1[18]);
// 2254         GUI_PutString(42,1,  Str1[19]);
// 2255         GUI_PutString(84,1,  Str1[20]);
// 2256         GUI_PutString(0, 11, Str1[21]);
// 2257         GUI_PutString(42,11, Str1[22]);
// 2258         GUI_PutString(84,11, Str1[23]);
// 2259         GUI_PutString(0, 21, Str1[24]);
// 2260         GUI_PutString(42,21, Str1[25]);
// 2261         GUI_PutString(84,21, Str1[26]);
// 2262         GUI_PutString(0, 31, Str1[27]);
// 2263         GUI_PutString(42,31, Str1[28]);
// 2264         GUI_PutString(84,31, Str1[29]);
// 2265         GUI_PutString(0, 41 , Str1[30]);
// 2266        }
// 2267 	   Press=0;
// 2268 	 }
// 2269   }
// 2270   
// 2271 return 0;
        MOVS     R0,#+0
        B.N      ??View_Plan_8
??View_Plan_7:
        LDR.W    R0,??DataTable16_13
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??View_Plan_9
        LDR.W    R0,??DataTable16_13
        LDR      R0,[R0, #+0]
        CMP      R0,#+2
        BEQ.N    ??View_Plan_9
        CMP      R4,#+1
        BNE.W    ??View_Plan_0
??View_Plan_9:
        CMP      R4,#+0
        BNE.N    ??View_Plan_10
        ADDS     R5,R5,#+1
        MOVS     R0,#+2
        SDIV     R1,R5,R0
        MLS      R5,R0,R1,R5
??View_Plan_10:
        MOVS     R0,#+0
        MOVS     R4,R0
        LDR.N    R0,??DataTable15
        LDRB     R0,[R0, #+0]
        STR      R0,[SP, #+0]
        MOVS     R3,#+64
        MOVS     R2,#+128
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_RectangleFill
        BL       GUI_RectangleFill
        CMP      R5,#+0
        BNE.N    ??View_Plan_11
        ADD      R2,SP,#+4
        MOVS     R1,#+1
        MOVS     R0,#+0
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        ADD      R2,SP,#+11
        MOVS     R1,#+1
        MOVS     R0,#+42
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        ADD      R2,SP,#+18
        MOVS     R1,#+1
        MOVS     R0,#+84
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        ADD      R2,SP,#+25
        MOVS     R1,#+11
        MOVS     R0,#+0
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        ADD      R2,SP,#+32
        MOVS     R1,#+11
        MOVS     R0,#+42
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        ADD      R2,SP,#+39
        MOVS     R1,#+11
        MOVS     R0,#+84
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        ADD      R2,SP,#+46
        MOVS     R1,#+21
        MOVS     R0,#+0
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        ADD      R2,SP,#+53
        MOVS     R1,#+21
        MOVS     R0,#+42
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        ADD      R2,SP,#+60
        MOVS     R1,#+21
        MOVS     R0,#+84
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        ADD      R2,SP,#+67
        MOVS     R1,#+31
        MOVS     R0,#+0
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        ADD      R2,SP,#+74
        MOVS     R1,#+31
        MOVS     R0,#+42
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        ADD      R2,SP,#+81
        MOVS     R1,#+31
        MOVS     R0,#+84
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        ADD      R2,SP,#+88
        MOVS     R1,#+41
        MOVS     R0,#+0
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        ADD      R2,SP,#+95
        MOVS     R1,#+41
        MOVS     R0,#+42
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        ADD      R2,SP,#+102
        MOVS     R1,#+41
        MOVS     R0,#+84
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        ADD      R2,SP,#+109
        MOVS     R1,#+51
        MOVS     R0,#+0
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        ADD      R2,SP,#+116
        MOVS     R1,#+51
        MOVS     R0,#+42
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        ADD      R2,SP,#+123
        MOVS     R1,#+51
        MOVS     R0,#+84
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        B.N      ??View_Plan_12
??View_Plan_11:
        ADD      R2,SP,#+130
        MOVS     R1,#+1
        MOVS     R0,#+0
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        ADD      R2,SP,#+137
        MOVS     R1,#+1
        MOVS     R0,#+42
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        ADD      R2,SP,#+144
        MOVS     R1,#+1
        MOVS     R0,#+84
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        ADD      R2,SP,#+151
        MOVS     R1,#+11
        MOVS     R0,#+0
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        ADD      R2,SP,#+158
        MOVS     R1,#+11
        MOVS     R0,#+42
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        ADD      R2,SP,#+165
        MOVS     R1,#+11
        MOVS     R0,#+84
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        ADD      R2,SP,#+172
        MOVS     R1,#+21
        MOVS     R0,#+0
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        ADD      R2,SP,#+179
        MOVS     R1,#+21
        MOVS     R0,#+42
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        ADD      R2,SP,#+186
        MOVS     R1,#+21
        MOVS     R0,#+84
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        ADD      R2,SP,#+193
        MOVS     R1,#+31
        MOVS     R0,#+0
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        ADD      R2,SP,#+200
        MOVS     R1,#+31
        MOVS     R0,#+42
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        ADD      R2,SP,#+207
        MOVS     R1,#+31
        MOVS     R0,#+84
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        ADD      R2,SP,#+214
        MOVS     R1,#+41
        MOVS     R0,#+0
          CFI FunCall GUI_PutString
        BL       GUI_PutString
??View_Plan_12:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable16_13
        STR      R0,[R1, #+0]
        B.N      ??View_Plan_0
??View_Plan_8:
        ADD      SP,SP,#+344
          CFI CFA R13+16
        POP      {R4-R6,PC}       ;; return
// 2272 }
          CFI EndBlock cfiBlock15

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15:
        DC32     back_color

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_1:
        DC32     ?_126

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_2:
        DC32     ?_127

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_3:
        DC32     AD

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_4:
        DC32     ?_128

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_5:
        DC32     ?_129

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_6:
        DC32     ?_130

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_7:
        DC32     ?_131

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_8:
        DC32     MID_ERROR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_9:
        DC32     result

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_10:
        DC32     ?_134

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_11:
        DC32     ?_135

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_12:
        DC32     ?_136

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_13:
        DC32     ?_137

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_14:
        DC32     ?_138

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_15:
        DC32     ?_139

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_16:
        DC32     ?_140
// 2273 
// 2274 //车体保护
// 2275 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
// 2276 int Beep_Software_Button=0;
Beep_Software_Button:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
// 2277 int Led_Software_Button =0;
Led_Software_Button:
        DS8 4
// 2278 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock16 Using cfiCommon0
          CFI Function Car_Protect
        THUMB
// 2279 int Car_Protect(void)
// 2280 {
Car_Protect:
        PUSH     {R4-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+20
        SUB      SP,SP,#+28
          CFI CFA R13+48
// 2281   if(!Debug_Protect)  return 0;
        LDR.W    R0,??DataTable17
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Car_Protect_0
        MOVS     R0,#+0
        B.N      ??Car_Protect_1
// 2282   
// 2283   char Car_Protect_Str[20];
// 2284   int Battery=0;
??Car_Protect_0:
        MOVS     R5,#+0
// 2285   
// 2286   Press=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable16_13
        STR      R0,[R1, #+0]
// 2287   GUI_RectangleFill(0, 0, 128, 64, back_color);//画矩形
        LDR.W    R0,??DataTable17_1
        LDRB     R0,[R0, #+0]
        STR      R0,[SP, #+0]
        MOVS     R3,#+64
        MOVS     R2,#+128
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_RectangleFill
        BL       GUI_RectangleFill
// 2288   DELAY_MS(25);
        MOVS     R0,#+25
          CFI FunCall systick_delay_ms
        BL       systick_delay_ms
// 2289   int KeyDown_Times=0;
        MOVS     R6,#+0
// 2290   int KeyUp_Times=0;
        MOVS     R7,#+0
// 2291   int OLED_TIMES=100;
        MOVS     R4,#+100
// 2292   Led_Software_Button=1;  //接下来程序有控制LED的权利
        MOVS     R0,#+1
        LDR.W    R1,??DataTable17_2
        STR      R0,[R1, #+0]
// 2293   Beep_Software_Button=1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable17_3
        STR      R0,[R1, #+0]
// 2294   gpio_set(PTC2,1);       //熄灯
        MOVS     R1,#+1
        MOVS     R0,#+66
          CFI FunCall gpio_set
        BL       gpio_set
// 2295   
// 2296   
// 2297   GUI_PutString(0, 1, "LOCK");
        LDR.W    R2,??DataTable17_4
        MOVS     R1,#+1
        MOVS     R0,#+0
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2298   sprintf(Car_Protect_Str,"Plan:%2d",Plan_Num);
        LDR.W    R0,??DataTable17_5
        LDR      R2,[R0, #+0]
        LDR.W    R1,??DataTable17_6
        ADD      R0,SP,#+4
          CFI FunCall sprintf
        BL       sprintf
// 2299   GUI_PutString(0, 10,Car_Protect_Str);
        ADD      R2,SP,#+4
        MOVS     R1,#+10
        MOVS     R0,#+0
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2300   
// 2301   //OLED_Display_On();
// 2302   while(1)
// 2303   {
// 2304     Get_Press();  //获取按键
??Car_Protect_2:
          CFI FunCall Get_Press
        BL       Get_Press
// 2305     OLED_TIMES--;
        SUBS     R4,R4,#+1
// 2306     OLED_TIMES=OLED_TIMES<=0?0:OLED_TIMES;
        CMP      R4,#+1
        BGE.N    ??Car_Protect_3
        MOVS     R4,#+0
        B.N      ??Car_Protect_4
// 2307     
// 2308     
// 2309     if(OLED_TIMES==0)
??Car_Protect_3:
??Car_Protect_4:
        CMP      R4,#+0
        BNE.N    ??Car_Protect_5
// 2310     {
// 2311      OLED_Display_Off();//关闭OLED
          CFI FunCall OLED_Display_Off
        BL       OLED_Display_Off
// 2312     }  
// 2313     if(ABS(Angle_Speed-450)>=100)
??Car_Protect_5:
        LDR.W    R0,??DataTable17_7
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable17_8  ;; 0xc3e10000
          CFI FunCall __aeabi_fadd
        BL       __aeabi_fadd
        MOVS     R1,#+0
          CFI FunCall __aeabi_cfrcmple
        BL       __aeabi_cfrcmple
        BCS.N    ??Car_Protect_6
        LDR.W    R0,??DataTable17_7
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable17_8  ;; 0xc3e10000
          CFI FunCall __aeabi_fadd
        BL       __aeabi_fadd
        B.N      ??Car_Protect_7
??Car_Protect_6:
        LDR.W    R0,??DataTable17_7
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable17_8  ;; 0xc3e10000
          CFI FunCall __aeabi_fadd
        BL       __aeabi_fadd
        EORS     R0,R0,#0x80000000
??Car_Protect_7:
        LDR.W    R1,??DataTable17_9  ;; 0x42c80000
          CFI FunCall __aeabi_cfrcmple
        BL       __aeabi_cfrcmple
        BHI.N    ??Car_Protect_8
// 2314     {
// 2315        OLED_TIMES=200;
        MOVS     R0,#+200
        MOVS     R4,R0
// 2316        Beep(10);
        MOVS     R0,#+10
          CFI FunCall Beep
        BL       Beep
// 2317        OLED_Display_On();
          CFI FunCall OLED_Display_On
        BL       OLED_Display_On
// 2318     }  
// 2319     
// 2320     
// 2321     if (Press==K_LEFT)
??Car_Protect_8:
        LDR.N    R0,??DataTable16_13
        LDR      R0,[R0, #+0]
        CMP      R0,#+3
        BNE.N    ??Car_Protect_9
// 2322 	{
// 2323 	 	Press=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable16_13
        STR      R0,[R1, #+0]
// 2324         OLED_Display_On();
          CFI FunCall OLED_Display_On
        BL       OLED_Display_On
// 2325         Car_Ctrl();
          CFI FunCall Car_Ctrl
        BL       Car_Ctrl
// 2326         GUI_PutString(0, 1, "LOCK");
        LDR.W    R2,??DataTable17_4
        MOVS     R1,#+1
        MOVS     R0,#+0
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2327         sprintf(Car_Protect_Str,"Plan:%2d",Plan_Num);
        LDR.W    R0,??DataTable17_5
        LDR      R2,[R0, #+0]
        LDR.W    R1,??DataTable17_6
        ADD      R0,SP,#+4
          CFI FunCall sprintf
        BL       sprintf
// 2328         GUI_PutString(0, 10,Car_Protect_Str);
        ADD      R2,SP,#+4
        MOVS     R1,#+10
        MOVS     R0,#+0
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2329         OLED_TIMES=200;
        MOVS     R0,#+200
        MOVS     R4,R0
// 2330 	}
// 2331     
// 2332     if (Press==K_RIGHT)
??Car_Protect_9:
        LDR.N    R0,??DataTable16_13
        LDR      R0,[R0, #+0]
        CMP      R0,#+4
        BNE.N    ??Car_Protect_10
// 2333 	{
// 2334 	 	Press=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable16_13
        STR      R0,[R1, #+0]
// 2335         OLED_Display_On();
          CFI FunCall OLED_Display_On
        BL       OLED_Display_On
// 2336         while(Set_Ang()==7);
??Car_Protect_11:
          CFI FunCall Set_Ang
        BL       Set_Ang
        CMP      R0,#+7
        BEQ.N    ??Car_Protect_11
// 2337         GUI_PutString(0, 1, "LOCK");
        LDR.W    R2,??DataTable17_4
        MOVS     R1,#+1
        MOVS     R0,#+0
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2338         sprintf(Car_Protect_Str,"Plan:%2d",Plan_Num);
        LDR.W    R0,??DataTable17_5
        LDR      R2,[R0, #+0]
        LDR.W    R1,??DataTable17_6
        ADD      R0,SP,#+4
          CFI FunCall sprintf
        BL       sprintf
// 2339         GUI_PutString(0, 10,Car_Protect_Str);
        ADD      R2,SP,#+4
        MOVS     R1,#+10
        MOVS     R0,#+0
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2340         OLED_TIMES=200;
        MOVS     R0,#+200
        MOVS     R4,R0
// 2341 	}
// 2342     
// 2343     if (Press==K_DOWN)
??Car_Protect_10:
        LDR.N    R0,??DataTable16_13
        LDR      R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??Car_Protect_12
// 2344 	{
// 2345 	 	Press=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable16_13
        STR      R0,[R1, #+0]
// 2346         KeyDown_Times++;
        ADDS     R6,R6,#+1
// 2347         
// 2348         if(KeyDown_Times>=50&&KeyDown_Times<=100)
        CMP      R6,#+50
        BLT.N    ??Car_Protect_13
        CMP      R6,#+101
        BGE.N    ??Car_Protect_13
// 2349         {
// 2350            gpio_set(PTC2,0);
        MOVS     R1,#+0
        MOVS     R0,#+66
          CFI FunCall gpio_set
        BL       gpio_set
        B.N      ??Car_Protect_12
// 2351         }
// 2352         else 
// 2353         {
// 2354            gpio_set(PTC2,1);
??Car_Protect_13:
        MOVS     R1,#+1
        MOVS     R0,#+66
          CFI FunCall gpio_set
        BL       gpio_set
// 2355         }
// 2356 	}
// 2357     if (Press==K_UP)
??Car_Protect_12:
        LDR.N    R0,??DataTable16_13
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Car_Protect_14
// 2358     {
// 2359         KeyUp_Times++;
        ADDS     R7,R7,#+1
// 2360         Press=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable16_13
        STR      R0,[R1, #+0]
// 2361     }
// 2362     
// 2363     if (Press==K_MID)
??Car_Protect_14:
        LDR.N    R0,??DataTable16_13
        LDR      R0,[R0, #+0]
        CMP      R0,#+5
        BNE.N    ??Car_Protect_15
// 2364 	{   
// 2365         
// 2366         Press=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable16_13
        STR      R0,[R1, #+0]
// 2367         if(KeyDown_Times>=50&&KeyDown_Times<=100&&KeyUp_Times==1)
        CMP      R6,#+50
        BLT.N    ??Car_Protect_16
        CMP      R6,#+101
        BGE.N    ??Car_Protect_16
        CMP      R7,#+1
        BNE.N    ??Car_Protect_16
// 2368         {
// 2369           GUI_RectangleFill(0, 0, 128, 64, back_color);//画矩形
        LDR.W    R0,??DataTable17_1
        LDRB     R0,[R0, #+0]
        STR      R0,[SP, #+0]
        MOVS     R3,#+64
        MOVS     R2,#+128
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_RectangleFill
        BL       GUI_RectangleFill
// 2370           Led_Software_Button=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable17_2
        STR      R0,[R1, #+0]
// 2371           Beep_Software_Button=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable17_3
        STR      R0,[R1, #+0]
// 2372           OLED_Display_On();
          CFI FunCall OLED_Display_On
        BL       OLED_Display_On
// 2373           Beep(200);
        MOVS     R0,#+200
          CFI FunCall Beep
        BL       Beep
// 2374           break;
// 2375         }//解锁成功
// 2376         else
// 2377         {
// 2378           KeyUp_Times=0;
// 2379           KeyDown_Times=0;
// 2380           gpio_set(PTC2,1);
// 2381           Beep(300);
// 2382         }   
// 2383 	}
// 2384     DELAY_MS(1);
// 2385   }
// 2386   
// 2387   
// 2388   OLED_Init();
          CFI FunCall OLED_Init
        BL       OLED_Init
// 2389   return 0;
        MOVS     R0,#+0
        B.N      ??Car_Protect_1
??Car_Protect_16:
        MOVS     R0,#+0
        MOVS     R7,R0
        MOVS     R0,#+0
        MOVS     R6,R0
        MOVS     R1,#+1
        MOVS     R0,#+66
          CFI FunCall gpio_set
        BL       gpio_set
        MOV      R0,#+300
          CFI FunCall Beep
        BL       Beep
??Car_Protect_15:
        MOVS     R0,#+1
          CFI FunCall systick_delay_ms
        BL       systick_delay_ms
        B.N      ??Car_Protect_2
??Car_Protect_1:
        ADD      SP,SP,#+28
          CFI CFA R13+20
        POP      {R4-R7,PC}       ;; return
// 2390 }
          CFI EndBlock cfiBlock16

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16:
        DC32     ?_132

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_1:
        DC32     ?_141

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_2:
        DC32     ?_142

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_3:
        DC32     ?_143

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_4:
        DC32     ?_144

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_5:
        DC32     ?_145

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_6:
        DC32     ?_146

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_7:
        DC32     ?_147

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_8:
        DC32     ?_148

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_9:
        DC32     ?_149

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_10:
        DC32     ?_150

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_11:
        DC32     Flash_Data_Public

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_12:
        DC32     ?_152

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_13:
        DC32     Press
// 2391 
// 2392 
// 2393 
// 2394 /********************************
// 2395 *          示波器控件
// 2396 *           于文海
// 2397 * *     2017.2.2    V0.1
// 2398 * 初步完成代码结构，实现简单功能
// 2399 *
// 2400 * *    2017.2.4
// 2401 *
// 2402 ********************************/
// 2403 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
// 2404 int ShiBoQi_View=0;//探针
ShiBoQi_View:
        DS8 4
// 2405 //参考线位置

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
// 2406 int X_LINE=64;
X_LINE:
        DC32 64

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
// 2407 int Y_LINE=37;
Y_LINE:
        DC32 37
// 2408 //int Get_Bo_Speed=1;
// 2409 

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock17 Using cfiCommon0
          CFI Function ShiBoQi
        THUMB
// 2410 int ShiBoQi(void)
// 2411 {
ShiBoQi:
        PUSH     {R4-R9,LR}
          CFI R14 Frame(CFA, -4)
          CFI R9 Frame(CFA, -8)
          CFI R8 Frame(CFA, -12)
          CFI R7 Frame(CFA, -16)
          CFI R6 Frame(CFA, -20)
          CFI R5 Frame(CFA, -24)
          CFI R4 Frame(CFA, -28)
          CFI CFA R13+28
        SUB      SP,SP,#+5632
          CFI CFA R13+5660
        SUB      SP,SP,#+28
          CFI CFA R13+5688
// 2412     
// 2413     //横线竖线在屏幕上的物理位置
// 2414     int View_Y=0;
        MOVS     R6,#+0
// 2415     int Last_Y=0;
        MOVS     R7,#+0
// 2416     
// 2417     int Set_ShiBoQi=0;  //示波器设置标志位
        MOVS     R5,#+0
// 2418     int State_Flag=0;   //状态启停切换标志位
        MOVS     R4,#+0
// 2419     
// 2420     //两个放大倍数设置
// 2421     static int ShiBoQi_Xishu   =30;   //幅值倍数   27*60 = 1620
// 2422     static int ShiBoQi_Xishu_f = 2;   //相值倍数      一定要确认，不能大于1000/128
// 2423     
// 2424     //两个放大倍数限值
// 2425     ShiBoQi_Xishu= ShiBoQi_Xishu<=0?1:ShiBoQi_Xishu>60?60:ShiBoQi_Xishu;
        LDR.W    R0,??DataTable17_10
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BGE.N    ??ShiBoQi_0
        MOVS     R0,#+1
        LDR.W    R1,??DataTable17_10
        STR      R0,[R1, #+0]
        B.N      ??ShiBoQi_1
??ShiBoQi_0:
        LDR.W    R0,??DataTable17_10
        LDR      R0,[R0, #+0]
        CMP      R0,#+61
        BLT.N    ??ShiBoQi_2
        MOVS     R0,#+60
        LDR.W    R1,??DataTable17_10
        STR      R0,[R1, #+0]
        B.N      ??ShiBoQi_1
??ShiBoQi_2:
        LDR.W    R0,??DataTable17_10
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable17_10
        STR      R0,[R1, #+0]
// 2426     ShiBoQi_Xishu_f=ShiBoQi_Xishu_f<=0?1:ShiBoQi_Xishu_f>=8?8:ShiBoQi_Xishu_f;
??ShiBoQi_1:
        LDR.W    R0,??DataTable17_11
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BGE.N    ??ShiBoQi_3
        MOVS     R0,#+1
        LDR.W    R1,??DataTable17_11
        STR      R0,[R1, #+0]
        B.N      ??ShiBoQi_4
??ShiBoQi_3:
        LDR.W    R0,??DataTable17_11
        LDR      R0,[R0, #+0]
        CMP      R0,#+8
        BLT.N    ??ShiBoQi_5
        MOVS     R0,#+8
        LDR.W    R1,??DataTable17_11
        STR      R0,[R1, #+0]
        B.N      ??ShiBoQi_4
??ShiBoQi_5:
        LDR.W    R0,??DataTable17_11
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable17_11
        STR      R0,[R1, #+0]
// 2427     
// 2428     //  数组
// 2429     int ShiBoQi_Save[1000]={0};  //缓存数组，搭建循环队列
??ShiBoQi_4:
        ADD      R0,SP,#+1656
        MOV      R1,#+4000
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
// 2430       int ShiBoQi_Save_Point=0;   //循环队列位置指针      例如:ShiBoQi_Save[ShiBoQi_Save_Point++]
        MOVS     R8,#+0
// 2431     
// 2432     int ShiBoQi_Windows[132]={0};//抽样数组，从队列中抽样
        ADD      R0,SP,#+1128
        MOV      R1,#+528
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
// 2433     int View_Windows[132]={0};   //窗口实际显示数组，对抽样数组幅值进行放大缩小的操作
        ADD      R0,SP,#+600
        MOV      R1,#+528
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
// 2434     int Clear_Win[132]={0};      //清屏数组，保存上一次描点的位置
        ADD      R0,SP,#+72
        MOV      R1,#+528
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
// 2435    
// 2436     //窗口状态栏变量显示字符串
// 2437     char ShiBoQi_Str[4][5]={0};
        ADD      R0,SP,#+4
        MOVS     R1,#+20
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
// 2438     
// 2439     
// 2440     GUI_RectangleFill(0, 0, 128, 64, back_color);//画矩形
        LDR.W    R0,??DataTable17_1
        LDRB     R0,[R0, #+0]
        STR      R0,[SP, #+0]
        MOVS     R3,#+64
        MOVS     R2,#+128
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_RectangleFill
        BL       GUI_RectangleFill
// 2441 	GUI_Rectangle(0,1,127,63,1);
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,#+63
        MOVS     R2,#+127
        MOVS     R1,#+1
        MOVS     R0,#+0
          CFI FunCall GUI_Rectangle
        BL       GUI_Rectangle
// 2442 	GUI_Rectangle(0,1,127,10,1);	
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,#+10
        MOVS     R2,#+127
        MOVS     R1,#+1
        MOVS     R0,#+0
          CFI FunCall GUI_Rectangle
        BL       GUI_Rectangle
// 2443 
// 2444     sprintf(ShiBoQi_Str[0],"%3dx",X_LINE);      //数线
        LDR.W    R0,??DataTable17_12
        LDR      R2,[R0, #+0]
        LDR.W    R1,??DataTable17_13
        ADD      R0,SP,#+4
          CFI FunCall sprintf
        BL       sprintf
// 2445     sprintf(ShiBoQi_Str[1],"%3dy",Y_LINE);      //横线
        LDR.W    R0,??DataTable17_14
        LDR      R2,[R0, #+0]
        LDR.W    R1,??DataTable17_15
        ADD      R0,SP,#+9
          CFI FunCall sprintf
        BL       sprintf
// 2446     sprintf(ShiBoQi_Str[2],"%5dv",ShiBoQi_Windows[X_LINE]);           //值
        ADD      R0,SP,#+1128
        LDR.W    R1,??DataTable17_12
        LDR      R1,[R1, #+0]
        LDR      R2,[R0, R1, LSL #+2]
        LDR.W    R1,??DataTable17_16
        ADD      R0,SP,#+14
          CFI FunCall sprintf
        BL       sprintf
// 2447     
// 2448     GUI_PutString(4, 2,ShiBoQi_Str[0]);  //抬头栏
        ADD      R2,SP,#+4
        MOVS     R1,#+2
        MOVS     R0,#+4
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2449     GUI_PutString(34,2,ShiBoQi_Str[1]);  //抬头栏
        ADD      R2,SP,#+9
        MOVS     R1,#+2
        MOVS     R0,#+34
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2450     GUI_PutString(64,2,ShiBoQi_Str[2]);  //抬头栏
        ADD      R2,SP,#+14
        MOVS     R1,#+2
        MOVS     R0,#+64
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2451     GUI_PutString(110,2,"M0");  //抬头栏
        ADR.N    R2,??ShiBoQi_6   ;; 0x4D, 0x30, 0x00, 0x00
        MOVS     R1,#+2
        MOVS     R0,#+110
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2452     Press=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable17_17
        STR      R0,[R1, #+0]
// 2453     while(1)
// 2454     {
// 2455         
// 2456         //更新变量的值
// 2457         sprintf(ShiBoQi_Str[2],"%5dv",ShiBoQi_Windows[X_LINE]);           //值
??ShiBoQi_7:
        ADD      R0,SP,#+1128
        LDR.W    R1,??DataTable17_12
        LDR      R1,[R1, #+0]
        LDR      R2,[R0, R1, LSL #+2]
        LDR.W    R1,??DataTable17_16
        ADD      R0,SP,#+14
          CFI FunCall sprintf
        BL       sprintf
// 2458         GUI_PutString(64,2,ShiBoQi_Str[2]);  //抬头栏显示这么多字
        ADD      R2,SP,#+14
        MOVS     R1,#+2
        MOVS     R0,#+64
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2459       
// 2460 //        ShiBoQi_View++;
// 2461 //        if(ShiBoQi_View>90)
// 2462 //        ShiBoQi_View=-90;
// 2463 //        
// 2464 //        
// 2465         if(State_Flag!=1)
        CMP      R4,#+1
        BEQ.N    ??ShiBoQi_8
// 2466         {
// 2467         //////////////////////////////////  
// 2468         //循环队列更新
// 2469         ShiBoQi_Save_Point++;
        ADDS     R8,R8,#+1
// 2470         ShiBoQi_Save_Point%=1000;
        MOV      R0,#+1000
        SDIV     R1,R8,R0
        MLS      R8,R0,R1,R8
// 2471         ShiBoQi_Save[ShiBoQi_Save_Point]=ShiBoQi_View;
        LDR.W    R0,??DataTable17_18
        LDR      R0,[R0, #+0]
        ADD      R1,SP,#+1656
        STR      R0,[R1, R8, LSL #+2]
// 2472         //采样队列更新
// 2473         for(register uint8 x=0;x<127;x++ )
        MOVS     R0,#+0
??ShiBoQi_9:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+127
        BGE.N    ??ShiBoQi_10
// 2474         {
// 2475           ShiBoQi_Windows[126-x]=ShiBoQi_Save[(ShiBoQi_Save_Point-ShiBoQi_Xishu_f*x)>=0?
// 2476             (ShiBoQi_Save_Point-ShiBoQi_Xishu_f*x):1000+(ShiBoQi_Save_Point-ShiBoQi_Xishu_f*x)];
        LDR.W    R1,??DataTable17_11
        LDR      R1,[R1, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MLS      R1,R0,R1,R8
        CMP      R1,#+0
        BMI.N    ??ShiBoQi_11
        LDR.W    R1,??DataTable17_11
        LDR      R1,[R1, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MLS      R1,R0,R1,R8
        B.N      ??ShiBoQi_12
??ShiBoQi_11:
        LDR.W    R1,??DataTable17_11
        LDR      R1,[R1, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MLS      R1,R0,R1,R8
        ADDS     R1,R1,#+1000
??ShiBoQi_12:
        ADD      R2,SP,#+1656
        LDR      R1,[R2, R1, LSL #+2]
        ADD      R2,SP,#+1128
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        RSBS     R3,R0,#+0
        ADD      R2,R2,R3, LSL #+2
        STR      R1,[R2, #+504]
// 2477         }
        ADDS     R0,R0,#+1
        B.N      ??ShiBoQi_9
// 2478         //显示队列更新
// 2479         for(register int i=0;i<=127;i++)
??ShiBoQi_10:
        MOVS     R0,#+0
??ShiBoQi_13:
        CMP      R0,#+128
        BGE.N    ??ShiBoQi_8
// 2480         View_Windows[i]=-ShiBoQi_Windows[i];
        ADD      R1,SP,#+1128
        LDR      R1,[R1, R0, LSL #+2]
        RSBS     R1,R1,#+0
        ADD      R2,SP,#+600
        STR      R1,[R2, R0, LSL #+2]
        ADDS     R0,R0,#+1
        B.N      ??ShiBoQi_13
// 2481         }
// 2482         //////////////////////////////////
// 2483         
// 2484         Get_Press();  //获取按键
??ShiBoQi_8:
          CFI FunCall Get_Press
        BL       Get_Press
// 2485         if(!Set_ShiBoQi&&Press==K_MID)//&&State_Flag==0)  //状态改变为可修改
        CMP      R5,#+0
        BNE.N    ??ShiBoQi_14
        LDR.W    R0,??DataTable17_17
        LDR      R0,[R0, #+0]
        CMP      R0,#+5
        BNE.N    ??ShiBoQi_14
// 2486         {
// 2487             Press=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable17_17
        STR      R0,[R1, #+0]
// 2488             State_Flag++;
        ADDS     R4,R4,#+1
// 2489             State_Flag%=2;
        MOVS     R0,#+2
        SDIV     R1,R4,R0
        MLS      R4,R0,R1,R4
// 2490             
// 2491             //这个时候需要清空一下屏幕
// 2492             for(int j=1;j<127;j++)
        MOVS     R9,#+1
??ShiBoQi_15:
        CMP      R9,#+127
        BGE.N    ??ShiBoQi_16
// 2493             {
// 2494                 GUI_Point(j,Clear_Win[j],0);
        MOVS     R2,#+0
        ADD      R0,SP,#+72
        LDR      R0,[R0, R9, LSL #+2]
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R9
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_Point
        BL       GUI_Point
// 2495             }
        ADDS     R9,R9,#+1
        B.N      ??ShiBoQi_15
// 2496             //Set_ShiBoQi
// 2497             if(State_Flag==0)
??ShiBoQi_16:
        CMP      R4,#+0
        BNE.N    ??ShiBoQi_17
// 2498             GUI_PutString(110,2,"M0");  //抬头栏
        ADR.N    R2,??ShiBoQi_6   ;; 0x4D, 0x30, 0x00, 0x00
        MOVS     R1,#+2
        MOVS     R0,#+110
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        B.N      ??ShiBoQi_14
        DATA
??ShiBoQi_6:
        DC8      0x4D, 0x30, 0x00, 0x00
        THUMB
// 2499             else 
// 2500             GUI_PutString(110,2,"M2");  //抬头栏  
??ShiBoQi_17:
        ADR.N    R2,??ShiBoQi_18  ;; 0x4D, 0x32, 0x00, 0x00
        MOVS     R1,#+2
        MOVS     R0,#+110
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2501             
// 2502         }
// 2503         
// 2504 //        if(Press==K_MID&&State_Flag)    //状态改变为不可修改
// 2505 //        {
// 2506 //            Press=0;
// 2507 //            State_Flag=0;
// 2508 //        }
// 2509 //        
// 2510         ///////////////////////////////////////////////////////////
// 2511         if(State_Flag&&Press==K_LEFT)  
??ShiBoQi_14:
        CMP      R4,#+0
        BEQ.N    ??ShiBoQi_19
        LDR.W    R0,??DataTable17_17
        LDR      R0,[R0, #+0]
        CMP      R0,#+3
        BNE.N    ??ShiBoQi_19
// 2512         {
// 2513             Press=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable17_17
        STR      R0,[R1, #+0]
// 2514             if(X_LINE==1)
        LDR.W    R0,??DataTable17_12
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??ShiBoQi_20
// 2515             X_LINE=126;
        MOVS     R0,#+126
        LDR.W    R1,??DataTable17_12
        STR      R0,[R1, #+0]
        B.N      ??ShiBoQi_21
// 2516             else
// 2517             X_LINE--;
??ShiBoQi_20:
        LDR.W    R0,??DataTable17_12
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable17_12
        STR      R0,[R1, #+0]
// 2518             
// 2519             for(int i=11;i<=62;i++)
??ShiBoQi_21:
        MOVS     R9,#+11
??ShiBoQi_22:
        CMP      R9,#+63
        BGE.N    ??ShiBoQi_23
// 2520             {
// 2521               GUI_Point(X_LINE==126?1:X_LINE+1,i,0);
        LDR.W    R0,??DataTable17_12
        LDR      R0,[R0, #+0]
        CMP      R0,#+126
        BNE.N    ??ShiBoQi_24
        MOVS     R0,#+1
        B.N      ??ShiBoQi_25
??ShiBoQi_24:
        LDR.W    R0,??DataTable17_12
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
??ShiBoQi_25:
        MOVS     R2,#+0
        MOV      R1,R9
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_Point
        BL       GUI_Point
// 2522             }
        ADDS     R9,R9,#+1
        B.N      ??ShiBoQi_22
// 2523             
// 2524             sprintf(ShiBoQi_Str[0],"%3dX",X_LINE);      //数线
??ShiBoQi_23:
        LDR.W    R0,??DataTable17_12
        LDR      R2,[R0, #+0]
        LDR.W    R1,??DataTable17_19
        ADD      R0,SP,#+4
          CFI FunCall sprintf
        BL       sprintf
// 2525             GUI_PutString(4, 2,ShiBoQi_Str[0]);         //抬头栏显示这么多字
        ADD      R2,SP,#+4
        MOVS     R1,#+2
        MOVS     R0,#+4
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2526          }
// 2527 
// 2528         if(State_Flag&&Press==K_RIGHT)  
??ShiBoQi_19:
        CMP      R4,#+0
        BEQ.N    ??ShiBoQi_26
        LDR.W    R0,??DataTable17_17
        LDR      R0,[R0, #+0]
        CMP      R0,#+4
        BNE.N    ??ShiBoQi_26
// 2529         {
// 2530             Press=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable17_17
        STR      R0,[R1, #+0]
// 2531             if(X_LINE==126)
        LDR.W    R0,??DataTable17_12
        LDR      R0,[R0, #+0]
        CMP      R0,#+126
        BNE.N    ??ShiBoQi_27
// 2532             X_LINE=1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable17_12
        STR      R0,[R1, #+0]
        B.N      ??ShiBoQi_28
// 2533             else
// 2534             X_LINE++;
??ShiBoQi_27:
        LDR.W    R0,??DataTable17_12
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable17_12
        STR      R0,[R1, #+0]
// 2535             
// 2536             for(int i=11;i<=62;i++)
??ShiBoQi_28:
        MOVS     R9,#+11
??ShiBoQi_29:
        CMP      R9,#+63
        BGE.N    ??ShiBoQi_30
// 2537             {
// 2538               GUI_Point(X_LINE==1?126:X_LINE-1,i,0);
        LDR.W    R0,??DataTable17_12
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??ShiBoQi_31
        MOVS     R0,#+126
        B.N      ??ShiBoQi_32
??ShiBoQi_31:
        LDR.W    R0,??DataTable17_12
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
??ShiBoQi_32:
        MOVS     R2,#+0
        MOV      R1,R9
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_Point
        BL       GUI_Point
// 2539             }
        ADDS     R9,R9,#+1
        B.N      ??ShiBoQi_29
// 2540             sprintf(ShiBoQi_Str[0],"%3dX",X_LINE);      //数线
??ShiBoQi_30:
        LDR.W    R0,??DataTable17_12
        LDR      R2,[R0, #+0]
        LDR.W    R1,??DataTable17_19
        ADD      R0,SP,#+4
          CFI FunCall sprintf
        BL       sprintf
// 2541             GUI_PutString(4, 2,ShiBoQi_Str[0]);  //抬头栏显示这么多字
        ADD      R2,SP,#+4
        MOVS     R1,#+2
        MOVS     R0,#+4
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2542         }
// 2543         
// 2544         if(State_Flag&&Press==K_UP)  
??ShiBoQi_26:
        CMP      R4,#+0
        BEQ.N    ??ShiBoQi_33
        LDR.W    R0,??DataTable17_17
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??ShiBoQi_33
// 2545         {
// 2546             Press=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable17_17
        STR      R0,[R1, #+0]
// 2547             if(Y_LINE==11)
        LDR.W    R0,??DataTable17_14
        LDR      R0,[R0, #+0]
        CMP      R0,#+11
        BNE.N    ??ShiBoQi_34
// 2548               Y_LINE=62;
        MOVS     R0,#+62
        LDR.W    R1,??DataTable17_14
        STR      R0,[R1, #+0]
        B.N      ??ShiBoQi_35
// 2549             else
// 2550               Y_LINE--;
??ShiBoQi_34:
        LDR.W    R0,??DataTable17_14
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable17_14
        STR      R0,[R1, #+0]
// 2551             
// 2552             for(int j=1;j<126;j++)
??ShiBoQi_35:
        MOVS     R9,#+1
??ShiBoQi_36:
        CMP      R9,#+126
        BGE.N    ??ShiBoQi_37
// 2553             {
// 2554               GUI_Point(j,Y_LINE==62?11:Y_LINE+1,0);
        LDR.W    R0,??DataTable17_14
        LDR      R0,[R0, #+0]
        CMP      R0,#+62
        BNE.N    ??ShiBoQi_38
        MOVS     R1,#+11
        B.N      ??ShiBoQi_39
??ShiBoQi_38:
        LDR.W    R0,??DataTable17_14
        LDR      R1,[R0, #+0]
        ADDS     R1,R1,#+1
??ShiBoQi_39:
        MOVS     R2,#+0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R9
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_Point
        BL       GUI_Point
// 2555             }
        ADDS     R9,R9,#+1
        B.N      ??ShiBoQi_36
// 2556             sprintf(ShiBoQi_Str[1],"%3dY",Y_LINE);      //横线
??ShiBoQi_37:
        LDR.W    R0,??DataTable17_14
        LDR      R2,[R0, #+0]
        LDR.W    R1,??DataTable18
        ADD      R0,SP,#+9
          CFI FunCall sprintf
        BL       sprintf
// 2557             GUI_PutString(34,2,ShiBoQi_Str[1]);  //抬头栏显示这么多字
        ADD      R2,SP,#+9
        MOVS     R1,#+2
        MOVS     R0,#+34
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2558             
// 2559         }
// 2560         
// 2561         if(State_Flag&&Press==K_DOWN)  
??ShiBoQi_33:
        CMP      R4,#+0
        BEQ.N    ??ShiBoQi_40
        LDR.W    R0,??DataTable17_17
        LDR      R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??ShiBoQi_40
// 2562         {
// 2563             Press=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable17_17
        STR      R0,[R1, #+0]
// 2564             if(Y_LINE==62)
        LDR.W    R0,??DataTable17_14
        LDR      R0,[R0, #+0]
        CMP      R0,#+62
        BNE.N    ??ShiBoQi_41
// 2565               Y_LINE=11;
        MOVS     R0,#+11
        LDR.W    R1,??DataTable17_14
        STR      R0,[R1, #+0]
        B.N      ??ShiBoQi_42
// 2566             else
// 2567               Y_LINE++;
??ShiBoQi_41:
        LDR.W    R0,??DataTable17_14
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable17_14
        STR      R0,[R1, #+0]
// 2568             
// 2569             for(int j=1;j<125;j++)
??ShiBoQi_42:
        MOVS     R9,#+1
??ShiBoQi_43:
        CMP      R9,#+125
        BGE.N    ??ShiBoQi_44
// 2570             {
// 2571               GUI_Point(j,Y_LINE==11?62:Y_LINE-1,0);
        LDR.W    R0,??DataTable17_14
        LDR      R0,[R0, #+0]
        CMP      R0,#+11
        BNE.N    ??ShiBoQi_45
        MOVS     R1,#+62
        B.N      ??ShiBoQi_46
??ShiBoQi_45:
        LDR.W    R0,??DataTable17_14
        LDR      R0,[R0, #+0]
        SUBS     R1,R0,#+1
??ShiBoQi_46:
        MOVS     R2,#+0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R9
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_Point
        BL       GUI_Point
// 2572             }
        ADDS     R9,R9,#+1
        B.N      ??ShiBoQi_43
// 2573             sprintf(ShiBoQi_Str[1],"%3dY",Y_LINE);      //横线
??ShiBoQi_44:
        LDR.W    R0,??DataTable17_14
        LDR      R2,[R0, #+0]
        LDR.W    R1,??DataTable18
        ADD      R0,SP,#+9
          CFI FunCall sprintf
        BL       sprintf
// 2574             GUI_PutString(34,2,ShiBoQi_Str[1]);  //抬头栏显示这么多字
        ADD      R2,SP,#+9
        MOVS     R1,#+2
        MOVS     R0,#+34
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2575         }
// 2576         //////////////////////////////////////////////////
// 2577         
// 2578         //设置示波器参数
// 2579         if (Press == K_RIGHT&&!Set_ShiBoQi&&!State_Flag)
??ShiBoQi_40:
        LDR.W    R0,??DataTable17_17
        LDR      R0,[R0, #+0]
        CMP      R0,#+4
        BNE.N    ??ShiBoQi_47
        ORRS     R0,R4,R5
        CMP      R0,#+0
        BNE.N    ??ShiBoQi_47
// 2580         {
// 2581             Set_ShiBoQi=1;
        MOVS     R0,#+1
        MOVS     R5,R0
// 2582             Press=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable17_17
        STR      R0,[R1, #+0]
// 2583             
// 2584             GUI_PutString(110,2,"M1");  //抬头栏
        ADR.N    R2,??ShiBoQi_48  ;; 0x4D, 0x31, 0x00, 0x00
        MOVS     R1,#+2
        MOVS     R0,#+110
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2585             
// 2586             //GUI_RectangleFill(1, 12, 126, 63, back_color);//画矩形
// 2587         }
// 2588         
// 2589         //ShiBoQi_Xishu   =30;   //幅值倍数
// 2590         //ShiBoQi_Xishu_f = 2;   //相值倍数
// 2591        
// 2592         
// 2593         //if(Set_ShiBoQi==1)
// 2594         {
// 2595             char Set_ShiBoQi_Str[3][15];
// 2596             sprintf(Set_ShiBoQi_Str[0],"A:%2d",ShiBoQi_Xishu);
??ShiBoQi_47:
        LDR.W    R0,??DataTable17_10
        LDR      R2,[R0, #+0]
        LDR.W    R1,??DataTable18_1
        ADD      R0,SP,#+24
          CFI FunCall sprintf
        BL       sprintf
// 2597             sprintf(Set_ShiBoQi_Str[1],"T:%2d",ShiBoQi_Xishu_f);
        LDR.W    R0,??DataTable17_11
        LDR      R2,[R0, #+0]
        LDR.W    R1,??DataTable18_2
        ADD      R0,SP,#+39
          CFI FunCall sprintf
        BL       sprintf
// 2598             
// 2599             GUI_PutString(2,13,Set_ShiBoQi_Str[0]);  //抬头栏显示这么多字
        ADD      R2,SP,#+24
        MOVS     R1,#+13
        MOVS     R0,#+2
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2600             GUI_PutString(2,23,Set_ShiBoQi_Str[1]);  //抬头栏显示这么多字
        ADD      R2,SP,#+39
        MOVS     R1,#+23
        MOVS     R0,#+2
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2601         }
// 2602         
// 2603         //参数设置界面
// 2604         if (Set_ShiBoQi&&Press==K_MID)        //回主菜单
        CMP      R5,#+0
        BEQ.N    ??ShiBoQi_49
        LDR.W    R0,??DataTable17_17
        LDR      R0,[R0, #+0]
        CMP      R0,#+5
        BNE.N    ??ShiBoQi_49
// 2605 		{
// 2606             Press=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable17_17
        STR      R0,[R1, #+0]
// 2607             Set_ShiBoQi=0;
        MOVS     R0,#+0
        MOVS     R5,R0
// 2608             GUI_PutString(110,2,"M0");  //抬头栏
        ADR.N    R2,??ShiBoQi_50  ;; 0x4D, 0x30, 0x00, 0x00
        B.N      ??ShiBoQi_51
        Nop      
        DATA
??ShiBoQi_18:
        DC8      0x4D, 0x32, 0x00, 0x00
        THUMB
??ShiBoQi_51:
        MOVS     R1,#+2
        MOVS     R0,#+110
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2609 		}
// 2610 		if (Set_ShiBoQi&&Press==K_UP)          
??ShiBoQi_49:
        CMP      R5,#+0
        BEQ.N    ??ShiBoQi_52
        LDR.N    R0,??DataTable17_17
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??ShiBoQi_52
// 2611 		{
// 2612             Press=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable17_17
        STR      R0,[R1, #+0]
// 2613             ShiBoQi_Xishu++;
        LDR.N    R0,??DataTable17_10
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable17_10
        STR      R0,[R1, #+0]
// 2614             ShiBoQi_Xishu= ShiBoQi_Xishu<=0?1:ShiBoQi_Xishu>60?60:ShiBoQi_Xishu;
        LDR.N    R0,??DataTable17_10
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BGE.N    ??ShiBoQi_53
        MOVS     R0,#+1
        LDR.N    R1,??DataTable17_10
        STR      R0,[R1, #+0]
        B.N      ??ShiBoQi_52
??ShiBoQi_53:
        LDR.N    R0,??DataTable17_10
        LDR      R0,[R0, #+0]
        CMP      R0,#+61
        BLT.N    ??ShiBoQi_54
        MOVS     R0,#+60
        LDR.N    R1,??DataTable17_10
        STR      R0,[R1, #+0]
        B.N      ??ShiBoQi_52
??ShiBoQi_54:
        LDR.N    R0,??DataTable17_10
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable17_10
        STR      R0,[R1, #+0]
// 2615 		}
// 2616 		if (Set_ShiBoQi&&Press==K_DOWN)        
??ShiBoQi_52:
        CMP      R5,#+0
        BEQ.N    ??ShiBoQi_55
        LDR.N    R0,??DataTable17_17
        LDR      R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??ShiBoQi_55
// 2617 		{
// 2618             Press=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable17_17
        STR      R0,[R1, #+0]
// 2619             ShiBoQi_Xishu--;
        LDR.N    R0,??DataTable17_10
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.N    R1,??DataTable17_10
        STR      R0,[R1, #+0]
// 2620             ShiBoQi_Xishu= ShiBoQi_Xishu<=0?1:ShiBoQi_Xishu>60?60:ShiBoQi_Xishu;
        LDR.N    R0,??DataTable17_10
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BGE.N    ??ShiBoQi_56
        MOVS     R0,#+1
        LDR.N    R1,??DataTable17_10
        STR      R0,[R1, #+0]
        B.N      ??ShiBoQi_55
??ShiBoQi_56:
        LDR.N    R0,??DataTable17_10
        LDR      R0,[R0, #+0]
        CMP      R0,#+61
        BLT.N    ??ShiBoQi_57
        MOVS     R0,#+60
        LDR.N    R1,??DataTable17_10
        STR      R0,[R1, #+0]
        B.N      ??ShiBoQi_55
??ShiBoQi_57:
        LDR.N    R0,??DataTable17_10
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable17_10
        STR      R0,[R1, #+0]
// 2621 		}
// 2622         if (Set_ShiBoQi&&Press==K_LEFT)          
??ShiBoQi_55:
        CMP      R5,#+0
        BEQ.N    ??ShiBoQi_58
        LDR.N    R0,??DataTable17_17
        LDR      R0,[R0, #+0]
        CMP      R0,#+3
        BNE.N    ??ShiBoQi_58
// 2623 		{
// 2624             Press=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable17_17
        STR      R0,[R1, #+0]
// 2625             ShiBoQi_Xishu_f--;
        LDR.N    R0,??DataTable17_11
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.N    R1,??DataTable17_11
        STR      R0,[R1, #+0]
// 2626             ShiBoQi_Xishu_f=ShiBoQi_Xishu_f<=0?1:ShiBoQi_Xishu_f>=8?8:ShiBoQi_Xishu_f;
        LDR.N    R0,??DataTable17_11
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BGE.N    ??ShiBoQi_59
        MOVS     R0,#+1
        LDR.N    R1,??DataTable17_11
        STR      R0,[R1, #+0]
        B.N      ??ShiBoQi_58
??ShiBoQi_59:
        LDR.N    R0,??DataTable17_11
        LDR      R0,[R0, #+0]
        CMP      R0,#+8
        BLT.N    ??ShiBoQi_60
        MOVS     R0,#+8
        LDR.N    R1,??DataTable17_11
        STR      R0,[R1, #+0]
        B.N      ??ShiBoQi_58
??ShiBoQi_60:
        LDR.N    R0,??DataTable17_11
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable17_11
        STR      R0,[R1, #+0]
// 2627 		}
// 2628 		if (Set_ShiBoQi&&Press==K_RIGHT)       
??ShiBoQi_58:
        CMP      R5,#+0
        BEQ.N    ??ShiBoQi_61
        LDR.N    R0,??DataTable17_17
        LDR      R0,[R0, #+0]
        CMP      R0,#+4
        BNE.N    ??ShiBoQi_61
// 2629 		{
// 2630             Press=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable17_17
        STR      R0,[R1, #+0]
// 2631             ShiBoQi_Xishu_f++;
        LDR.N    R0,??DataTable17_11
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable17_11
        STR      R0,[R1, #+0]
// 2632             ShiBoQi_Xishu_f=ShiBoQi_Xishu_f<=0?1:ShiBoQi_Xishu_f>=8?8:ShiBoQi_Xishu_f;
        LDR.N    R0,??DataTable17_11
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BGE.N    ??ShiBoQi_62
        MOVS     R0,#+1
        LDR.N    R1,??DataTable17_11
        STR      R0,[R1, #+0]
        B.N      ??ShiBoQi_61
??ShiBoQi_62:
        LDR.N    R0,??DataTable17_11
        LDR      R0,[R0, #+0]
        CMP      R0,#+8
        BLT.N    ??ShiBoQi_63
        MOVS     R0,#+8
        LDR.N    R1,??DataTable17_11
        STR      R0,[R1, #+0]
        B.N      ??ShiBoQi_61
??ShiBoQi_63:
        LDR.N    R0,??DataTable17_11
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable17_11
        STR      R0,[R1, #+0]
// 2633 		}
// 2634         
// 2635         
// 2636         ////////////////////////菜单切换//////////////////////////
// 2637         if (!State_Flag&&Press==K_LEFT&&!State_Flag)        //回主菜单
??ShiBoQi_61:
        CMP      R4,#+0
        BNE.N    ??ShiBoQi_64
        LDR.N    R0,??DataTable17_17
        LDR      R0,[R0, #+0]
        CMP      R0,#+3
        BNE.N    ??ShiBoQi_64
        CMP      R4,#+0
        BNE.N    ??ShiBoQi_64
// 2638 		{
// 2639             Press=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable17_17
        STR      R0,[R1, #+0]
// 2640 			return 0;
        MOVS     R0,#+0
        B.N      ??ShiBoQi_65
// 2641 		}
// 2642 		if (!State_Flag&&Press==K_UP&&!State_Flag)          //上一菜单
??ShiBoQi_64:
        CMP      R4,#+0
        BNE.N    ??ShiBoQi_66
        LDR.N    R0,??DataTable17_17
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??ShiBoQi_66
        CMP      R4,#+0
        BNE.N    ??ShiBoQi_66
// 2643 		{
// 2644             Press=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable17_17
        STR      R0,[R1, #+0]
// 2645 			GUI_RectangleFill(0, 0, 128, 64, back_color);
        LDR.N    R0,??DataTable17_1
        LDRB     R0,[R0, #+0]
        STR      R0,[SP, #+0]
        MOVS     R3,#+64
        MOVS     R2,#+128
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_RectangleFill
        BL       GUI_RectangleFill
// 2646 			return 2;
        MOVS     R0,#+2
        B.N      ??ShiBoQi_65
// 2647 		}
// 2648 		if (!State_Flag&&Press==K_DOWN&&!State_Flag)        //下一菜单
??ShiBoQi_66:
        CMP      R4,#+0
        BNE.N    ??ShiBoQi_67
        LDR.N    R0,??DataTable17_17
        LDR      R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??ShiBoQi_67
        CMP      R4,#+0
        BNE.N    ??ShiBoQi_67
// 2649 		{
// 2650             Press=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable17_17
        STR      R0,[R1, #+0]
// 2651 			GUI_RectangleFill(0, 0, 128, 64, back_color);
        LDR.N    R0,??DataTable17_1
        LDRB     R0,[R0, #+0]
        STR      R0,[SP, #+0]
        MOVS     R3,#+64
        MOVS     R2,#+128
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_RectangleFill
        BL       GUI_RectangleFill
// 2652 			return 4;
        MOVS     R0,#+4
        B.N      ??ShiBoQi_65
// 2653 		}
// 2654       //////////////////////////////////////////////////////////
// 2655     
// 2656       if(State_Flag!=1)   //如果暂停采样，也就不用清屏了
??ShiBoQi_67:
        CMP      R4,#+1
        BEQ.N    ??ShiBoQi_68
// 2657       {
// 2658         for(int j=1;j<127;j++)
        MOVS     R9,#+1
??ShiBoQi_69:
        CMP      R9,#+127
        BGE.N    ??ShiBoQi_68
// 2659         {
// 2660 //          View_Y=(int)(View_Windows[j]/ShiBoQi_Xishu)+37;    //新刷新的点如果是白的，就不要清除了
// 2661 //          if( View_Y==1 ) continue;
// 2662           GUI_Point(j,Clear_Win[j],0);
        MOVS     R2,#+0
        ADD      R0,SP,#+72
        LDR      R0,[R0, R9, LSL #+2]
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R9
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_Point
        BL       GUI_Point
// 2663         }  
        ADDS     R9,R9,#+1
        B.N      ??ShiBoQi_69
// 2664       }
// 2665       
// 2666       //绘制新的点  
// 2667       for(int j=1;j<127;j++)
??ShiBoQi_68:
        MOVS     R9,#+1
??ShiBoQi_70:
        CMP      R9,#+127
        BGE.N    ??ShiBoQi_71
// 2668       {
// 2669         Last_Y=(int)(View_Windows[j]/ShiBoQi_Xishu)+37;
        ADD      R0,SP,#+600
        LDR      R0,[R0, R9, LSL #+2]
        LDR.N    R1,??DataTable17_10
        LDR      R1,[R1, #+0]
        SDIV     R0,R0,R1
        ADDS     R0,R0,#+37
        MOVS     R7,R0
// 2670         if(Last_Y<12) 
        CMP      R7,#+12
        BGE.N    ??ShiBoQi_72
// 2671         {
// 2672           Clear_Win[j]=12;
        MOVS     R0,#+12
        ADD      R1,SP,#+72
        STR      R0,[R1, R9, LSL #+2]
// 2673           continue;
        B.N      ??ShiBoQi_73
// 2674         }
// 2675         else if(Last_Y>62)
??ShiBoQi_72:
        CMP      R7,#+63
        BLT.N    ??ShiBoQi_74
// 2676         {
// 2677           Clear_Win[j]=62;
        MOVS     R0,#+62
        ADD      R1,SP,#+72
        STR      R0,[R1, R9, LSL #+2]
// 2678           continue;
        B.N      ??ShiBoQi_73
// 2679         }
// 2680         else
// 2681        
// 2682         GUI_Point(j,Last_Y,1);
??ShiBoQi_74:
        MOVS     R2,#+1
        MOVS     R0,R7
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R9
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_Point
        BL       GUI_Point
// 2683         Clear_Win[j]=Last_Y;
        ADD      R0,SP,#+72
        STR      R7,[R0, R9, LSL #+2]
// 2684       } 
??ShiBoQi_73:
        ADDS     R9,R9,#+1
        B.N      ??ShiBoQi_70
// 2685       
// 2686       //绘制横向参考线
// 2687       //if(State_Flag)   //只有当flag=1时，才显示
// 2688       {
// 2689         for(int j=1;j<125;j++)
??ShiBoQi_71:
        MOVS     R9,#+1
??ShiBoQi_75:
        CMP      R9,#+125
        BGE.N    ??ShiBoQi_76
// 2690         {
// 2691           GUI_Point(j,Y_LINE,j%2);
        MOVS     R0,#+2
        SDIV     R1,R9,R0
        MLS      R0,R0,R1,R9
        MOVS     R2,R0
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR.N    R0,??DataTable17_14
        LDR      R0,[R0, #+0]
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R9
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_Point
        BL       GUI_Point
// 2692         }
        ADDS     R9,R9,#+1
        B.N      ??ShiBoQi_75
        DATA
??ShiBoQi_48:
        DC8      0x4D, 0x31, 0x00, 0x00
        THUMB
// 2693       }
// 2694       //绘制竖向参考线
// 2695       for(int i=11;i<=62;i++)
??ShiBoQi_76:
        MOVS     R9,#+11
??ShiBoQi_77:
        CMP      R9,#+63
        BGE.W    ??ShiBoQi_7
// 2696       {
// 2697         GUI_Point(X_LINE,i,i%2);
        MOVS     R0,#+2
        SDIV     R1,R9,R0
        MLS      R0,R0,R1,R9
        MOVS     R2,R0
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOV      R0,R9
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable17_12
        LDR      R0,[R0, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_Point
        BL       GUI_Point
// 2698       }
        ADDS     R9,R9,#+1
        B.N      ??ShiBoQi_77
// 2699       //DELAY_MS(1);
// 2700     }
??ShiBoQi_65:
        ADD      SP,SP,#+5632
          CFI CFA R13+56
        ADD      SP,SP,#+28
          CFI CFA R13+28
        POP      {R4-R9,PC}       ;; return
        Nop      
        DATA
??ShiBoQi_50:
        DC8      0x4D, 0x30, 0x00, 0x00
// 2701 }
          CFI EndBlock cfiBlock17

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17:
        DC32     Debug_Protect

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_1:
        DC32     back_color

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_2:
        DC32     Led_Software_Button

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_3:
        DC32     Beep_Software_Button

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_4:
        DC32     ?_153

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_5:
        DC32     Plan_Num

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_6:
        DC32     ?_154

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_7:
        DC32     Angle_Speed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_8:
        DC32     0xc3e10000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_9:
        DC32     0x42c80000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_10:
        DC32     `ShiBoQi::ShiBoQi_Xishu`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_11:
        DC32     `ShiBoQi::ShiBoQi_Xishu_f`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_12:
        DC32     X_LINE

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_13:
        DC32     ?_160

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_14:
        DC32     Y_LINE

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_15:
        DC32     ?_161

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_16:
        DC32     ?_162

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_17:
        DC32     Press

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_18:
        DC32     ShiBoQi_View

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_19:
        DC32     ?_165

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
`ShiBoQi::ShiBoQi_Xishu`:
        DC32 30

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
`ShiBoQi::ShiBoQi_Xishu_f`:
        DC32 2
// 2702 
// 2703 
// 2704 //////////////////////////////////////////////////////////////////
// 2705 //上一版本示波器是在线看参数的
// 2706 //接下来这个，用来看运行时候保存在队列里的数据
// 2707 //////////////////////////////////////////////////////////////////
// 2708 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
// 2709 int ShiBoQi2_Save[20][1000]={0};//可以保存10000个数据,如果是5ms一个的话，可以存储50s的数据
ShiBoQi2_Save:
        DS8 80000
// 2710                                 //1ms一个的话   可以保存10s的
// 2711 
// 2712 //可以往队列里面写，也可以读指定位置的数据
// 2713 
// 2714 
// 2715 
// 2716 //                                    起始位置    偏移量     偏移系数

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
          CFI Block cfiBlock18 Using cfiCommon0
          CFI Function Read_ShiBoQi2_Save
          CFI NoCalls
        THUMB
// 2717 __ramfunc int Read_ShiBoQi2_Save(   int Start,  int Move,     int T   )
// 2718 {
Read_ShiBoQi2_Save:
        PUSH     {R4-R7}
          CFI R7 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R3,R0
// 2719    register unsigned int where=(int)(Start-T*Move);
        MLS      R4,R1,R2,R3
// 2720    if(where<0) //where=20000+where;
// 2721      return 0;
// 2722    return ShiBoQi2_Save[(where/1000)%20][where%1000];
        MOV      R0,#+1000
        UDIV     R5,R4,R0
        MOVS     R0,#+20
        MOV      R6,#+1000
        UDIV     R7,R4,R6
        MLS      R4,R6,R7,R4
        UDIV     R6,R5,R0
        MLS      R5,R0,R6,R5
        MOV      R0,#+4000
        MULS     R5,R0,R5
        LDR.N    R0,??DataTable290
        ADD      R0,R0,R5
        LDR      R0,[R0, R4, LSL #+2]
        POP      {R4-R7}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
// 2723 }
          CFI EndBlock cfiBlock18
// 2724 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
// 2725 int ShiBoQi2_Point=0; //记录数据个数
ShiBoQi2_Point:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
// 2726 int Get_ShiBoQi_Button=0;  
Get_ShiBoQi_Button:
        DS8 4
// 2727 

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
          CFI Block cfiBlock19 Using cfiCommon0
          CFI Function Write_ShiBoQi2_Save
          CFI NoCalls
        THUMB
// 2728 __ramfunc void Write_ShiBoQi2_Save(unsigned int Where,int Number ,int * PTR)
// 2729 {
Write_ShiBoQi2_Save:
        PUSH     {R4-R6}
          CFI R6 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+12
// 2730   
// 2731   
// 2732   
// 2733   if(Get_ShiBoQi_Button)
        LDR.N    R3,??DataTable290_1
        LDR      R3,[R3, #+0]
        CMP      R3,#+0
        BEQ.N    ??Write_ShiBoQi2_Save_0
// 2734   { 
// 2735     *PTR=0;
        MOVS     R3,#+0
        STR      R3,[R2, #+0]
// 2736     return ;
        B.N      ??Write_ShiBoQi2_Save_1
// 2737   }
// 2738   
// 2739   if(Where>20000)Where=20000;
??Write_ShiBoQi2_Save_0:
        MOVW     R3,#+20001
        CMP      R0,R3
        BCC.N    ??Write_ShiBoQi2_Save_2
        MOVW     R3,#+20000
        MOVS     R0,R3
// 2740    
// 2741    ShiBoQi2_Point=Where;//记录数据保存的位置
??Write_ShiBoQi2_Save_2:
        LDR.N    R3,??DataTable290_2
        STR      R0,[R3, #+0]
// 2742    ShiBoQi2_Save[(Where/1000)%20][Where%1000] = Number;
        MOV      R3,#+1000
        UDIV     R4,R0,R3
        MOVS     R3,#+20
        MOV      R5,#+1000
        UDIV     R6,R0,R5
        MLS      R5,R5,R6,R0
        UDIV     R6,R4,R3
        MLS      R4,R3,R6,R4
        MOV      R3,#+4000
        MULS     R4,R3,R4
        LDR.N    R3,??DataTable290
        ADD      R3,R3,R4
        STR      R1,[R3, R5, LSL #+2]
// 2743 }
??Write_ShiBoQi2_Save_1:
        POP      {R4-R6}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock19

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable290:
        DC32     ShiBoQi2_Save

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable290_1:
        DC32     Get_ShiBoQi_Button

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable290_2:
        DC32     ShiBoQi2_Point
// 2744 
// 2745 
// 2746 ////////////////////////////////////////////////////////////////////////////////
// 2747 
// 2748 //int ShiBoQi_2_View=0;//探针
// 2749 

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock20 Using cfiCommon0
          CFI Function ShiBoQi_2
        THUMB
// 2750 int ShiBoQi_2(void)
// 2751 {
ShiBoQi_2:
        PUSH     {R4-R9,LR}
          CFI R14 Frame(CFA, -4)
          CFI R9 Frame(CFA, -8)
          CFI R8 Frame(CFA, -12)
          CFI R7 Frame(CFA, -16)
          CFI R6 Frame(CFA, -20)
          CFI R5 Frame(CFA, -24)
          CFI R4 Frame(CFA, -28)
          CFI CFA R13+28
        SUB      SP,SP,#+1536
          CFI CFA R13+1564
        SUB      SP,SP,#+124
          CFI CFA R13+1688
// 2752     Get_ShiBoQi_Button=1;//关闭采集开关
        MOVS     R0,#+1
        LDR.W    R1,??DataTable18_3
        STR      R0,[R1, #+0]
// 2753   
// 2754     //横线竖线在屏幕上的物理位置
// 2755     int View_Y=0;
        MOVS     R6,#+0
// 2756     int Last_Y=0;
        MOVS     R7,#+0
// 2757     
// 2758     int Set_ShiBoQi=0;  //示波器设置标志位
        MOVS     R5,#+0
// 2759     int State_Flag=0;   //状态启停切换标志位
        MOVS     R4,#+0
// 2760     
// 2761     //两个放大倍数设置
// 2762     static int ShiBoQi_Xishu   =30;   //幅值倍数   27*60 = 1620
// 2763     static int ShiBoQi_Xishu_f = 2;   //相值倍数      一定要确认，不能大于1000/128
// 2764     
// 2765     //两个放大倍数限值
// 2766     ShiBoQi_Xishu= ShiBoQi_Xishu<=0?1:ShiBoQi_Xishu>99?99:ShiBoQi_Xishu;
        LDR.W    R0,??DataTable18_4
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BGE.N    ??ShiBoQi_2_0
        MOVS     R0,#+1
        LDR.W    R1,??DataTable18_4
        STR      R0,[R1, #+0]
        B.N      ??ShiBoQi_2_1
??ShiBoQi_2_0:
        LDR.W    R0,??DataTable18_4
        LDR      R0,[R0, #+0]
        CMP      R0,#+100
        BLT.N    ??ShiBoQi_2_2
        MOVS     R0,#+99
        LDR.W    R1,??DataTable18_4
        STR      R0,[R1, #+0]
        B.N      ??ShiBoQi_2_1
??ShiBoQi_2_2:
        LDR.W    R0,??DataTable18_4
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable18_4
        STR      R0,[R1, #+0]
// 2767     ShiBoQi_Xishu_f=ShiBoQi_Xishu_f<=0?1:ShiBoQi_Xishu_f>=10?10:ShiBoQi_Xishu_f;
??ShiBoQi_2_1:
        LDR.W    R0,??DataTable18_5
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BGE.N    ??ShiBoQi_2_3
        MOVS     R0,#+1
        LDR.W    R1,??DataTable18_5
        STR      R0,[R1, #+0]
        B.N      ??ShiBoQi_2_4
??ShiBoQi_2_3:
        LDR.W    R0,??DataTable18_5
        LDR      R0,[R0, #+0]
        CMP      R0,#+10
        BLT.N    ??ShiBoQi_2_5
        MOVS     R0,#+10
        LDR.W    R1,??DataTable18_5
        STR      R0,[R1, #+0]
        B.N      ??ShiBoQi_2_4
??ShiBoQi_2_5:
        LDR.W    R0,??DataTable18_5
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable18_5
        STR      R0,[R1, #+0]
// 2768     
// 2769     //  数组
// 2770     //int ShiBoQi_Save[1000]={0};  //缓存数组，搭建循环队列
// 2771       int ShiBoQi_Save_Point=0;   //循环队列位置指针      例如:ShiBoQi_Save[ShiBoQi_Save_Point++]
??ShiBoQi_2_4:
        MOVS     R8,#+0
// 2772     
// 2773     int ShiBoQi_Windows[132]={0};//抽样数组，从队列中抽样
        ADD      R0,SP,#+1128
        MOV      R1,#+528
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
// 2774     int View_Windows[132]={0};   //窗口实际显示数组，对抽样数组幅值进行放大缩小的操作
        ADD      R0,SP,#+600
        MOV      R1,#+528
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
// 2775     int Clear_Win[132]={0};      //清屏数组，保存上一次描点的位置
        ADD      R0,SP,#+72
        MOV      R1,#+528
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
// 2776    
// 2777     //窗口状态栏变量显示字符串
// 2778     char ShiBoQi_Str[4][5]={0};
        ADD      R0,SP,#+4
        MOVS     R1,#+20
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
// 2779     
// 2780     
// 2781     GUI_RectangleFill(0, 0, 128, 64, back_color);//画矩形
        LDR.W    R0,??DataTable18_6
        LDRB     R0,[R0, #+0]
        STR      R0,[SP, #+0]
        MOVS     R3,#+64
        MOVS     R2,#+128
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_RectangleFill
        BL       GUI_RectangleFill
// 2782 	GUI_Rectangle(0,1,127,63,1);
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,#+63
        MOVS     R2,#+127
        MOVS     R1,#+1
        MOVS     R0,#+0
          CFI FunCall GUI_Rectangle
        BL       GUI_Rectangle
// 2783 	GUI_Rectangle(0,1,127,10,1);	
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,#+10
        MOVS     R2,#+127
        MOVS     R1,#+1
        MOVS     R0,#+0
          CFI FunCall GUI_Rectangle
        BL       GUI_Rectangle
// 2784 
// 2785     sprintf(ShiBoQi_Str[0],"%3dx",X_LINE);      //数线
        LDR.W    R0,??DataTable18_7
        LDR      R2,[R0, #+0]
        LDR.W    R1,??DataTable18_8
        ADD      R0,SP,#+4
          CFI FunCall sprintf
        BL       sprintf
// 2786     sprintf(ShiBoQi_Str[1],"%3dy",Y_LINE);      //横线
        LDR.W    R0,??DataTable18_9
        LDR      R2,[R0, #+0]
        LDR.W    R1,??DataTable18_10
        ADD      R0,SP,#+9
          CFI FunCall sprintf
        BL       sprintf
// 2787     sprintf(ShiBoQi_Str[2],"%5dv",ShiBoQi_Windows[X_LINE]);           //值
        ADD      R0,SP,#+1128
        LDR.W    R1,??DataTable18_7
        LDR      R1,[R1, #+0]
        LDR      R2,[R0, R1, LSL #+2]
        LDR.W    R1,??DataTable18_11
        ADD      R0,SP,#+14
          CFI FunCall sprintf
        BL       sprintf
// 2788     
// 2789     GUI_PutString(4, 2,ShiBoQi_Str[0]);  //抬头栏
        ADD      R2,SP,#+4
        MOVS     R1,#+2
        MOVS     R0,#+4
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2790     GUI_PutString(34,2,ShiBoQi_Str[1]);  //抬头栏
        ADD      R2,SP,#+9
        MOVS     R1,#+2
        MOVS     R0,#+34
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2791     GUI_PutString(64,2,ShiBoQi_Str[2]);  //抬头栏
        ADD      R2,SP,#+14
        MOVS     R1,#+2
        MOVS     R0,#+64
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2792     GUI_PutString(110,2,"M0");  //抬头栏
        ADR.N    R2,??ShiBoQi_2_6  ;; 0x4D, 0x30, 0x00, 0x00
        MOVS     R1,#+2
        MOVS     R0,#+110
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2793     Press=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable18_12
        STR      R0,[R1, #+0]
// 2794     while(1)
// 2795     {
// 2796         //更新变量的值
// 2797         sprintf(ShiBoQi_Str[2],"%5dv",ShiBoQi_Windows[X_LINE]);           //值
??ShiBoQi_2_7:
        ADD      R0,SP,#+1128
        LDR.W    R1,??DataTable18_7
        LDR      R1,[R1, #+0]
        LDR      R2,[R0, R1, LSL #+2]
        LDR.W    R1,??DataTable18_11
        ADD      R0,SP,#+14
          CFI FunCall sprintf
        BL       sprintf
// 2798         GUI_PutString(64,2,ShiBoQi_Str[2]);  //抬头栏显示这么多字
        ADD      R2,SP,#+14
        MOVS     R1,#+2
        MOVS     R0,#+64
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2799        
// 2800         if(State_Flag!=1)
        CMP      R4,#+1
        BEQ.N    ??ShiBoQi_2_8
// 2801         {
// 2802         //////////////////////////////////  
// 2803         //循环队列更新
// 2804         ShiBoQi_Save_Point++;
        ADDS     R8,R8,#+1
// 2805         ShiBoQi_Save_Point%=ShiBoQi2_Point;
        LDR.W    R0,??DataTable18_13
        LDR      R0,[R0, #+0]
        SDIV     R1,R8,R0
        LDR.W    R0,??DataTable18_13
        LDR      R0,[R0, #+0]
        MLS      R8,R0,R1,R8
// 2806 
// 2807         //采样队列更新
// 2808         for(register uint8 x=0;x<127;x++ )
        MOVS     R9,#+0
??ShiBoQi_2_9:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+127
        BGE.N    ??ShiBoQi_2_10
// 2809         {
// 2810           ShiBoQi_Windows[126-x]=Read_ShiBoQi2_Save(ShiBoQi_Save_Point,x,ShiBoQi_Xishu_f);
        LDR.W    R0,??DataTable18_5
        LDR      R2,[R0, #+0]
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        MOV      R1,R9
        MOV      R0,R8
          CFI FunCall Read_ShiBoQi2_Save
        BL       Read_ShiBoQi2_Save
        ADD      R1,SP,#+1128
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        RSBS     R2,R9,#+0
        ADD      R1,R1,R2, LSL #+2
        STR      R0,[R1, #+504]
// 2811         }
        ADDS     R9,R9,#+1
        B.N      ??ShiBoQi_2_9
// 2812         //显示队列更新
// 2813         for(register int i=0;i<=127;i++)
??ShiBoQi_2_10:
        MOVS     R0,#+0
??ShiBoQi_2_11:
        CMP      R0,#+128
        BGE.N    ??ShiBoQi_2_8
// 2814         View_Windows[i]=-ShiBoQi_Windows[i];
        ADD      R1,SP,#+1128
        LDR      R1,[R1, R0, LSL #+2]
        RSBS     R1,R1,#+0
        ADD      R2,SP,#+600
        STR      R1,[R2, R0, LSL #+2]
        ADDS     R0,R0,#+1
        B.N      ??ShiBoQi_2_11
// 2815         }
// 2816         //////////////////////////////////
// 2817         
// 2818         Get_Press();  //获取按键
??ShiBoQi_2_8:
          CFI FunCall Get_Press
        BL       Get_Press
// 2819         if(!Set_ShiBoQi&&Press==K_MID)//&&State_Flag==0)  //状态改变为可修改
        CMP      R5,#+0
        BNE.N    ??ShiBoQi_2_12
        LDR.W    R0,??DataTable18_12
        LDR      R0,[R0, #+0]
        CMP      R0,#+5
        BNE.N    ??ShiBoQi_2_12
// 2820         {
// 2821             Press=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable18_12
        STR      R0,[R1, #+0]
// 2822             State_Flag++;
        ADDS     R4,R4,#+1
// 2823             State_Flag%=2;
        MOVS     R0,#+2
        SDIV     R1,R4,R0
        MLS      R4,R0,R1,R4
// 2824             
// 2825             //这个时候需要清空一下屏幕
// 2826             for(int j=1;j<127;j++)
        MOVS     R9,#+1
??ShiBoQi_2_13:
        CMP      R9,#+127
        BGE.N    ??ShiBoQi_2_14
// 2827             {
// 2828                 GUI_Point(j,Clear_Win[j],0);
        MOVS     R2,#+0
        ADD      R0,SP,#+72
        LDR      R0,[R0, R9, LSL #+2]
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R9
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_Point
        BL       GUI_Point
// 2829             }
        ADDS     R9,R9,#+1
        B.N      ??ShiBoQi_2_13
// 2830             //Set_ShiBoQi
// 2831             if(State_Flag==0)
??ShiBoQi_2_14:
        CMP      R4,#+0
        BNE.N    ??ShiBoQi_2_15
// 2832             GUI_PutString(110,2,"M0");  //抬头栏
        ADR.N    R2,??ShiBoQi_2_6  ;; 0x4D, 0x30, 0x00, 0x00
        MOVS     R1,#+2
        MOVS     R0,#+110
          CFI FunCall GUI_PutString
        BL       GUI_PutString
        B.N      ??ShiBoQi_2_12
        Nop      
        DATA
??ShiBoQi_2_6:
        DC8      0x4D, 0x30, 0x00, 0x00
        THUMB
// 2833             else 
// 2834             GUI_PutString(110,2,"M2");  //抬头栏  
??ShiBoQi_2_15:
        ADR.N    R2,??ShiBoQi_2_16  ;; 0x4D, 0x32, 0x00, 0x00
        MOVS     R1,#+2
        MOVS     R0,#+110
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2835             
// 2836         }
// 2837         
// 2838 //        if(Press==K_MID&&State_Flag)    //状态改变为不可修改
// 2839 //        {
// 2840 //            Press=0;
// 2841 //            State_Flag=0;
// 2842 //        }
// 2843 //        
// 2844         ///////////////////////////////////////////////////////////
// 2845         if(State_Flag&&Press==K_LEFT)  
??ShiBoQi_2_12:
        CMP      R4,#+0
        BEQ.N    ??ShiBoQi_2_17
        LDR.W    R0,??DataTable18_12
        LDR      R0,[R0, #+0]
        CMP      R0,#+3
        BNE.N    ??ShiBoQi_2_17
// 2846         {
// 2847             Press=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable18_12
        STR      R0,[R1, #+0]
// 2848             if(X_LINE==1)
        LDR.W    R0,??DataTable18_7
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??ShiBoQi_2_18
// 2849             X_LINE=126;
        MOVS     R0,#+126
        LDR.W    R1,??DataTable18_7
        STR      R0,[R1, #+0]
        B.N      ??ShiBoQi_2_19
// 2850             else
// 2851             X_LINE--;
??ShiBoQi_2_18:
        LDR.W    R0,??DataTable18_7
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable18_7
        STR      R0,[R1, #+0]
// 2852             
// 2853             for(int i=11;i<=62;i++)
??ShiBoQi_2_19:
        MOVS     R9,#+11
??ShiBoQi_2_20:
        CMP      R9,#+63
        BGE.N    ??ShiBoQi_2_21
// 2854             {
// 2855               GUI_Point(X_LINE==126?1:X_LINE+1,i,0);
        LDR.W    R0,??DataTable18_7
        LDR      R0,[R0, #+0]
        CMP      R0,#+126
        BNE.N    ??ShiBoQi_2_22
        MOVS     R0,#+1
        B.N      ??ShiBoQi_2_23
??ShiBoQi_2_22:
        LDR.W    R0,??DataTable18_7
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
??ShiBoQi_2_23:
        MOVS     R2,#+0
        MOV      R1,R9
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_Point
        BL       GUI_Point
// 2856             }
        ADDS     R9,R9,#+1
        B.N      ??ShiBoQi_2_20
// 2857             
// 2858             sprintf(ShiBoQi_Str[0],"%3dX",X_LINE);      //数线
??ShiBoQi_2_21:
        LDR.W    R0,??DataTable18_7
        LDR      R2,[R0, #+0]
        LDR.W    R1,??DataTable18_14
        ADD      R0,SP,#+4
          CFI FunCall sprintf
        BL       sprintf
// 2859             GUI_PutString(4, 2,ShiBoQi_Str[0]);         //抬头栏显示这么多字
        ADD      R2,SP,#+4
        MOVS     R1,#+2
        MOVS     R0,#+4
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2860          }
// 2861 
// 2862         if(State_Flag&&Press==K_RIGHT)  
??ShiBoQi_2_17:
        CMP      R4,#+0
        BEQ.N    ??ShiBoQi_2_24
        LDR.W    R0,??DataTable18_12
        LDR      R0,[R0, #+0]
        CMP      R0,#+4
        BNE.N    ??ShiBoQi_2_24
// 2863         {
// 2864             Press=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable18_12
        STR      R0,[R1, #+0]
// 2865             if(X_LINE==126)
        LDR.W    R0,??DataTable18_7
        LDR      R0,[R0, #+0]
        CMP      R0,#+126
        BNE.N    ??ShiBoQi_2_25
// 2866             X_LINE=1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable18_7
        STR      R0,[R1, #+0]
        B.N      ??ShiBoQi_2_26
// 2867             else
// 2868             X_LINE++;
??ShiBoQi_2_25:
        LDR.W    R0,??DataTable18_7
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable18_7
        STR      R0,[R1, #+0]
// 2869             
// 2870             for(int i=11;i<=62;i++)
??ShiBoQi_2_26:
        MOVS     R9,#+11
??ShiBoQi_2_27:
        CMP      R9,#+63
        BGE.N    ??ShiBoQi_2_28
// 2871             {
// 2872               GUI_Point(X_LINE==1?126:X_LINE-1,i,0);
        LDR.W    R0,??DataTable18_7
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??ShiBoQi_2_29
        MOVS     R0,#+126
        B.N      ??ShiBoQi_2_30
??ShiBoQi_2_29:
        LDR.W    R0,??DataTable18_7
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
??ShiBoQi_2_30:
        MOVS     R2,#+0
        MOV      R1,R9
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_Point
        BL       GUI_Point
// 2873             }
        ADDS     R9,R9,#+1
        B.N      ??ShiBoQi_2_27
// 2874             sprintf(ShiBoQi_Str[0],"%3dX",X_LINE);      //数线
??ShiBoQi_2_28:
        LDR.W    R0,??DataTable18_7
        LDR      R2,[R0, #+0]
        LDR.W    R1,??DataTable18_14
        ADD      R0,SP,#+4
          CFI FunCall sprintf
        BL       sprintf
// 2875             GUI_PutString(4, 2,ShiBoQi_Str[0]);  //抬头栏显示这么多字
        ADD      R2,SP,#+4
        MOVS     R1,#+2
        MOVS     R0,#+4
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2876         }
// 2877         
// 2878         if(State_Flag&&Press==K_UP)  
??ShiBoQi_2_24:
        CMP      R4,#+0
        BEQ.N    ??ShiBoQi_2_31
        LDR.W    R0,??DataTable18_12
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??ShiBoQi_2_31
// 2879         {
// 2880             Press=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable18_12
        STR      R0,[R1, #+0]
// 2881             if(Y_LINE==11)
        LDR.W    R0,??DataTable18_9
        LDR      R0,[R0, #+0]
        CMP      R0,#+11
        BNE.N    ??ShiBoQi_2_32
// 2882               Y_LINE=62;
        MOVS     R0,#+62
        LDR.W    R1,??DataTable18_9
        STR      R0,[R1, #+0]
        B.N      ??ShiBoQi_2_33
// 2883             else
// 2884               Y_LINE--;
??ShiBoQi_2_32:
        LDR.W    R0,??DataTable18_9
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable18_9
        STR      R0,[R1, #+0]
// 2885             
// 2886             for(int j=1;j<126;j++)
??ShiBoQi_2_33:
        MOVS     R9,#+1
??ShiBoQi_2_34:
        CMP      R9,#+126
        BGE.N    ??ShiBoQi_2_35
// 2887             {
// 2888               GUI_Point(j,Y_LINE==62?11:Y_LINE+1,0);
        LDR.W    R0,??DataTable18_9
        LDR      R0,[R0, #+0]
        CMP      R0,#+62
        BNE.N    ??ShiBoQi_2_36
        MOVS     R1,#+11
        B.N      ??ShiBoQi_2_37
??ShiBoQi_2_36:
        LDR.W    R0,??DataTable18_9
        LDR      R1,[R0, #+0]
        ADDS     R1,R1,#+1
??ShiBoQi_2_37:
        MOVS     R2,#+0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R9
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_Point
        BL       GUI_Point
// 2889             }
        ADDS     R9,R9,#+1
        B.N      ??ShiBoQi_2_34
// 2890             sprintf(ShiBoQi_Str[1],"%3dY",Y_LINE);      //横线
??ShiBoQi_2_35:
        LDR.W    R0,??DataTable18_9
        LDR      R2,[R0, #+0]
        LDR.W    R1,??DataTable18
        ADD      R0,SP,#+9
          CFI FunCall sprintf
        BL       sprintf
// 2891             GUI_PutString(34,2,ShiBoQi_Str[1]);  //抬头栏显示这么多字
        ADD      R2,SP,#+9
        MOVS     R1,#+2
        MOVS     R0,#+34
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2892             
// 2893         }
// 2894         
// 2895         if(State_Flag&&Press==K_DOWN)  
??ShiBoQi_2_31:
        CMP      R4,#+0
        BEQ.N    ??ShiBoQi_2_38
        LDR.W    R0,??DataTable18_12
        LDR      R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??ShiBoQi_2_38
// 2896         {
// 2897             Press=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable18_12
        STR      R0,[R1, #+0]
// 2898             if(Y_LINE==62)
        LDR.W    R0,??DataTable18_9
        LDR      R0,[R0, #+0]
        CMP      R0,#+62
        BNE.N    ??ShiBoQi_2_39
// 2899               Y_LINE=11;
        MOVS     R0,#+11
        LDR.W    R1,??DataTable18_9
        STR      R0,[R1, #+0]
        B.N      ??ShiBoQi_2_40
// 2900             else
// 2901               Y_LINE++;
??ShiBoQi_2_39:
        LDR.W    R0,??DataTable18_9
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable18_9
        STR      R0,[R1, #+0]
// 2902             
// 2903             for(int j=1;j<125;j++)
??ShiBoQi_2_40:
        MOVS     R9,#+1
??ShiBoQi_2_41:
        CMP      R9,#+125
        BGE.N    ??ShiBoQi_2_42
// 2904             {
// 2905               GUI_Point(j,Y_LINE==11?62:Y_LINE-1,0);
        LDR.W    R0,??DataTable18_9
        LDR      R0,[R0, #+0]
        CMP      R0,#+11
        BNE.N    ??ShiBoQi_2_43
        MOVS     R1,#+62
        B.N      ??ShiBoQi_2_44
??ShiBoQi_2_43:
        LDR.W    R0,??DataTable18_9
        LDR      R0,[R0, #+0]
        SUBS     R1,R0,#+1
??ShiBoQi_2_44:
        MOVS     R2,#+0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R9
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_Point
        BL       GUI_Point
// 2906             }
        ADDS     R9,R9,#+1
        B.N      ??ShiBoQi_2_41
// 2907             sprintf(ShiBoQi_Str[1],"%3dY",Y_LINE);      //横线
??ShiBoQi_2_42:
        LDR.W    R0,??DataTable18_9
        LDR      R2,[R0, #+0]
        LDR.W    R1,??DataTable18
        ADD      R0,SP,#+9
          CFI FunCall sprintf
        BL       sprintf
// 2908             GUI_PutString(34,2,ShiBoQi_Str[1]);  //抬头栏显示这么多字
        ADD      R2,SP,#+9
        MOVS     R1,#+2
        MOVS     R0,#+34
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2909         }
// 2910         //////////////////////////////////////////////////
// 2911         
// 2912         //设置示波器参数
// 2913         if (Press == K_RIGHT&&!Set_ShiBoQi&&!State_Flag)
??ShiBoQi_2_38:
        LDR.W    R0,??DataTable18_12
        LDR      R0,[R0, #+0]
        CMP      R0,#+4
        BNE.N    ??ShiBoQi_2_45
        ORRS     R0,R4,R5
        CMP      R0,#+0
        BNE.N    ??ShiBoQi_2_45
// 2914         {
// 2915             Set_ShiBoQi=1;
        MOVS     R0,#+1
        MOVS     R5,R0
// 2916             Press=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable18_12
        STR      R0,[R1, #+0]
// 2917             
// 2918             GUI_PutString(110,2,"M1");  //抬头栏
        ADR.N    R2,??ShiBoQi_2_46  ;; 0x4D, 0x31, 0x00, 0x00
        MOVS     R1,#+2
        MOVS     R0,#+110
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2919             
// 2920             //GUI_RectangleFill(1, 12, 126, 63, back_color);//画矩形
// 2921         }
// 2922         
// 2923         //ShiBoQi_Xishu   =30;   //幅值倍数
// 2924         //ShiBoQi_Xishu_f = 2;   //相值倍数
// 2925        
// 2926         
// 2927         //if(Set_ShiBoQi==1)
// 2928         {
// 2929             char Set_ShiBoQi_Str[3][15];
// 2930             sprintf(Set_ShiBoQi_Str[0],"A:%2d",ShiBoQi_Xishu);
??ShiBoQi_2_45:
        LDR.W    R0,??DataTable18_4
        LDR      R2,[R0, #+0]
        LDR.W    R1,??DataTable18_1
        ADD      R0,SP,#+24
          CFI FunCall sprintf
        BL       sprintf
// 2931             sprintf(Set_ShiBoQi_Str[1],"T:%2d",ShiBoQi_Xishu_f);
        LDR.W    R0,??DataTable18_5
        LDR      R2,[R0, #+0]
        LDR.W    R1,??DataTable18_2
        ADD      R0,SP,#+39
          CFI FunCall sprintf
        BL       sprintf
// 2932             
// 2933             //ShiBoQi2_Point      //总数
// 2934             //ShiBoQi_Save_Point  //当前位置
// 2935             sprintf(Set_ShiBoQi_Str[2],"%05d/%05d",ShiBoQi_Save_Point,ShiBoQi2_Point);
        LDR.W    R0,??DataTable18_13
        LDR      R3,[R0, #+0]
        MOV      R2,R8
        LDR.W    R1,??DataTable18_15
        ADD      R0,SP,#+54
          CFI FunCall sprintf
        BL       sprintf
// 2936             
// 2937             
// 2938             GUI_PutString(2,13,Set_ShiBoQi_Str[0]);  //抬头栏显示这么多字
        ADD      R2,SP,#+24
        MOVS     R1,#+13
        MOVS     R0,#+2
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2939             GUI_PutString(2,23,Set_ShiBoQi_Str[1]);  //抬头栏显示这么多字
        ADD      R2,SP,#+39
        MOVS     R1,#+23
        MOVS     R0,#+2
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2940             GUI_PutString(2,53,Set_ShiBoQi_Str[2]);  //抬头栏显示这么多字
        ADD      R2,SP,#+54
        MOVS     R1,#+53
        MOVS     R0,#+2
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2941         }
// 2942         
// 2943         //参数设置界面
// 2944         if (Set_ShiBoQi&&Press==K_MID)        //回主菜单
        CMP      R5,#+0
        BEQ.N    ??ShiBoQi_2_47
        LDR.W    R0,??DataTable18_12
        LDR      R0,[R0, #+0]
        CMP      R0,#+5
        BNE.N    ??ShiBoQi_2_47
// 2945 		{
// 2946             Press=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable18_12
        STR      R0,[R1, #+0]
// 2947             Set_ShiBoQi=0;
        MOVS     R0,#+0
        MOVS     R5,R0
// 2948             GUI_PutString(110,2,"M0");  //抬头栏
        ADR.N    R2,??ShiBoQi_2_48  ;; 0x4D, 0x30, 0x00, 0x00
        B.N      ??ShiBoQi_2_49
        DATA
??ShiBoQi_2_16:
        DC8      0x4D, 0x32, 0x00, 0x00
        THUMB
??ShiBoQi_2_49:
        MOVS     R1,#+2
        MOVS     R0,#+110
          CFI FunCall GUI_PutString
        BL       GUI_PutString
// 2949 		}
// 2950 		if (Set_ShiBoQi&&Press==K_UP)          
??ShiBoQi_2_47:
        CMP      R5,#+0
        BEQ.N    ??ShiBoQi_2_50
        LDR.N    R0,??DataTable18_12
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??ShiBoQi_2_50
// 2951 		{
// 2952             Press=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable18_12
        STR      R0,[R1, #+0]
// 2953             ShiBoQi_Xishu++;
        LDR.N    R0,??DataTable18_4
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable18_4
        STR      R0,[R1, #+0]
// 2954             ShiBoQi_Xishu= ShiBoQi_Xishu<=0?1:ShiBoQi_Xishu>99?99:ShiBoQi_Xishu;
        LDR.N    R0,??DataTable18_4
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BGE.N    ??ShiBoQi_2_51
        MOVS     R0,#+1
        LDR.N    R1,??DataTable18_4
        STR      R0,[R1, #+0]
        B.N      ??ShiBoQi_2_50
??ShiBoQi_2_51:
        LDR.N    R0,??DataTable18_4
        LDR      R0,[R0, #+0]
        CMP      R0,#+100
        BLT.N    ??ShiBoQi_2_52
        MOVS     R0,#+99
        LDR.N    R1,??DataTable18_4
        STR      R0,[R1, #+0]
        B.N      ??ShiBoQi_2_50
??ShiBoQi_2_52:
        LDR.N    R0,??DataTable18_4
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable18_4
        STR      R0,[R1, #+0]
// 2955 		}
// 2956 		if (Set_ShiBoQi&&Press==K_DOWN)        
??ShiBoQi_2_50:
        CMP      R5,#+0
        BEQ.N    ??ShiBoQi_2_53
        LDR.N    R0,??DataTable18_12
        LDR      R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??ShiBoQi_2_53
// 2957 		{
// 2958             Press=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable18_12
        STR      R0,[R1, #+0]
// 2959             ShiBoQi_Xishu--;
        LDR.N    R0,??DataTable18_4
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.N    R1,??DataTable18_4
        STR      R0,[R1, #+0]
// 2960             ShiBoQi_Xishu= ShiBoQi_Xishu<=0?1:ShiBoQi_Xishu>99?99:ShiBoQi_Xishu;
        LDR.N    R0,??DataTable18_4
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BGE.N    ??ShiBoQi_2_54
        MOVS     R0,#+1
        LDR.N    R1,??DataTable18_4
        STR      R0,[R1, #+0]
        B.N      ??ShiBoQi_2_53
??ShiBoQi_2_54:
        LDR.N    R0,??DataTable18_4
        LDR      R0,[R0, #+0]
        CMP      R0,#+100
        BLT.N    ??ShiBoQi_2_55
        MOVS     R0,#+99
        LDR.N    R1,??DataTable18_4
        STR      R0,[R1, #+0]
        B.N      ??ShiBoQi_2_53
??ShiBoQi_2_55:
        LDR.N    R0,??DataTable18_4
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable18_4
        STR      R0,[R1, #+0]
// 2961 		}
// 2962         if (Set_ShiBoQi&&Press==K_LEFT)          
??ShiBoQi_2_53:
        CMP      R5,#+0
        BEQ.N    ??ShiBoQi_2_56
        LDR.N    R0,??DataTable18_12
        LDR      R0,[R0, #+0]
        CMP      R0,#+3
        BNE.N    ??ShiBoQi_2_56
// 2963 		{
// 2964             Press=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable18_12
        STR      R0,[R1, #+0]
// 2965             ShiBoQi_Xishu_f--;
        LDR.N    R0,??DataTable18_5
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.N    R1,??DataTable18_5
        STR      R0,[R1, #+0]
// 2966             ShiBoQi_Xishu_f=ShiBoQi_Xishu_f<=0?1:ShiBoQi_Xishu_f>=10?10:ShiBoQi_Xishu_f;
        LDR.N    R0,??DataTable18_5
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BGE.N    ??ShiBoQi_2_57
        MOVS     R0,#+1
        LDR.N    R1,??DataTable18_5
        STR      R0,[R1, #+0]
        B.N      ??ShiBoQi_2_56
??ShiBoQi_2_57:
        LDR.N    R0,??DataTable18_5
        LDR      R0,[R0, #+0]
        CMP      R0,#+10
        BLT.N    ??ShiBoQi_2_58
        MOVS     R0,#+10
        LDR.N    R1,??DataTable18_5
        STR      R0,[R1, #+0]
        B.N      ??ShiBoQi_2_56
??ShiBoQi_2_58:
        LDR.N    R0,??DataTable18_5
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable18_5
        STR      R0,[R1, #+0]
// 2967 		}
// 2968 		if (Set_ShiBoQi&&Press==K_RIGHT)       
??ShiBoQi_2_56:
        CMP      R5,#+0
        BEQ.N    ??ShiBoQi_2_59
        LDR.N    R0,??DataTable18_12
        LDR      R0,[R0, #+0]
        CMP      R0,#+4
        BNE.N    ??ShiBoQi_2_59
// 2969 		{
// 2970             Press=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable18_12
        STR      R0,[R1, #+0]
// 2971             ShiBoQi_Xishu_f++;
        LDR.N    R0,??DataTable18_5
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable18_5
        STR      R0,[R1, #+0]
// 2972             ShiBoQi_Xishu_f=ShiBoQi_Xishu_f<=0?1:ShiBoQi_Xishu_f>=10?10:ShiBoQi_Xishu_f;
        LDR.N    R0,??DataTable18_5
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BGE.N    ??ShiBoQi_2_60
        MOVS     R0,#+1
        LDR.N    R1,??DataTable18_5
        STR      R0,[R1, #+0]
        B.N      ??ShiBoQi_2_59
??ShiBoQi_2_60:
        LDR.N    R0,??DataTable18_5
        LDR      R0,[R0, #+0]
        CMP      R0,#+10
        BLT.N    ??ShiBoQi_2_61
        MOVS     R0,#+10
        LDR.N    R1,??DataTable18_5
        STR      R0,[R1, #+0]
        B.N      ??ShiBoQi_2_59
??ShiBoQi_2_61:
        LDR.N    R0,??DataTable18_5
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable18_5
        STR      R0,[R1, #+0]
// 2973 		}
// 2974         
// 2975         
// 2976         ////////////////////////菜单切换//////////////////////////
// 2977         if (!State_Flag&&Press==K_LEFT&&!State_Flag)        //回主菜单
??ShiBoQi_2_59:
        CMP      R4,#+0
        BNE.N    ??ShiBoQi_2_62
        LDR.N    R0,??DataTable18_12
        LDR      R0,[R0, #+0]
        CMP      R0,#+3
        BNE.N    ??ShiBoQi_2_62
        CMP      R4,#+0
        BNE.N    ??ShiBoQi_2_62
// 2978 		{
// 2979             Press=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable18_12
        STR      R0,[R1, #+0]
// 2980             Get_ShiBoQi_Button=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable18_3
        STR      R0,[R1, #+0]
// 2981             ShiBoQi2_Point=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable18_13
        STR      R0,[R1, #+0]
// 2982 			return 0;
        MOVS     R0,#+0
        B.N      ??ShiBoQi_2_63
// 2983 		}
// 2984 		if (!State_Flag&&Press==K_UP&&!State_Flag)          //上一菜单
??ShiBoQi_2_62:
        CMP      R4,#+0
        BNE.N    ??ShiBoQi_2_64
        LDR.N    R0,??DataTable18_12
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??ShiBoQi_2_64
        CMP      R4,#+0
        BNE.N    ??ShiBoQi_2_64
// 2985 		{
// 2986             Press=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable18_12
        STR      R0,[R1, #+0]
// 2987             Get_ShiBoQi_Button=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable18_3
        STR      R0,[R1, #+0]
// 2988             ShiBoQi2_Point=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable18_13
        STR      R0,[R1, #+0]
// 2989 			GUI_RectangleFill(0, 0, 128, 64, back_color);
        LDR.N    R0,??DataTable18_6
        LDRB     R0,[R0, #+0]
        STR      R0,[SP, #+0]
        MOVS     R3,#+64
        MOVS     R2,#+128
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_RectangleFill
        BL       GUI_RectangleFill
// 2990 			return 3;
        MOVS     R0,#+3
        B.N      ??ShiBoQi_2_63
// 2991 		}
// 2992 		if (!State_Flag&&Press==K_DOWN&&!State_Flag)        //下一菜单
??ShiBoQi_2_64:
        CMP      R4,#+0
        BNE.N    ??ShiBoQi_2_65
        LDR.N    R0,??DataTable18_12
        LDR      R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??ShiBoQi_2_65
        CMP      R4,#+0
        BNE.N    ??ShiBoQi_2_65
// 2993 		{
// 2994             Press=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable18_12
        STR      R0,[R1, #+0]
// 2995             Get_ShiBoQi_Button=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable18_3
        STR      R0,[R1, #+0]
// 2996             ShiBoQi2_Point=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable18_13
        STR      R0,[R1, #+0]
// 2997 			GUI_RectangleFill(0, 0, 128, 64, back_color);
        LDR.N    R0,??DataTable18_6
        LDRB     R0,[R0, #+0]
        STR      R0,[SP, #+0]
        MOVS     R3,#+64
        MOVS     R2,#+128
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall GUI_RectangleFill
        BL       GUI_RectangleFill
// 2998 			return 5;
        MOVS     R0,#+5
        B.N      ??ShiBoQi_2_63
// 2999 		}
// 3000       //////////////////////////////////////////////////////////
// 3001     
// 3002       if(State_Flag!=1)   //如果暂停采样，也就不用清屏了
??ShiBoQi_2_65:
        CMP      R4,#+1
        BEQ.N    ??ShiBoQi_2_66
// 3003       {
// 3004         for(int j=1;j<127;j++)
        MOVS     R9,#+1
??ShiBoQi_2_67:
        CMP      R9,#+127
        BGE.N    ??ShiBoQi_2_66
// 3005         {
// 3006 //          View_Y=(int)(View_Windows[j]/ShiBoQi_Xishu)+37;    //新刷新的点如果是白的，就不要清除了
// 3007 //          if( View_Y==1 ) continue;
// 3008           GUI_Point(j,Clear_Win[j],0);
        MOVS     R2,#+0
        ADD      R0,SP,#+72
        LDR      R0,[R0, R9, LSL #+2]
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R9
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_Point
        BL       GUI_Point
// 3009         }  
        ADDS     R9,R9,#+1
        B.N      ??ShiBoQi_2_67
// 3010       }
// 3011       
// 3012       //绘制新的点  
// 3013       for(int j=1;j<127;j++)
??ShiBoQi_2_66:
        MOVS     R9,#+1
??ShiBoQi_2_68:
        CMP      R9,#+127
        BGE.N    ??ShiBoQi_2_69
// 3014       {
// 3015         Last_Y=(int)(View_Windows[j]/ShiBoQi_Xishu)+37;
        ADD      R0,SP,#+600
        LDR      R0,[R0, R9, LSL #+2]
        LDR.N    R1,??DataTable18_4
        LDR      R1,[R1, #+0]
        SDIV     R0,R0,R1
        ADDS     R0,R0,#+37
        MOVS     R7,R0
// 3016         if(Last_Y<12) 
        CMP      R7,#+12
        BGE.N    ??ShiBoQi_2_70
// 3017         {
// 3018           Clear_Win[j]=12;
        MOVS     R0,#+12
        ADD      R1,SP,#+72
        STR      R0,[R1, R9, LSL #+2]
// 3019           continue;
        B.N      ??ShiBoQi_2_71
        DATA
??ShiBoQi_2_46:
        DC8      0x4D, 0x31, 0x00, 0x00
        THUMB
// 3020         }
// 3021         else if(Last_Y>62)
??ShiBoQi_2_70:
        CMP      R7,#+63
        BLT.N    ??ShiBoQi_2_72
// 3022         {
// 3023           Clear_Win[j]=62;
        MOVS     R0,#+62
        ADD      R1,SP,#+72
        STR      R0,[R1, R9, LSL #+2]
// 3024           continue;
        B.N      ??ShiBoQi_2_71
// 3025         }
// 3026         else
// 3027        
// 3028         GUI_Point(j,Last_Y,1);
??ShiBoQi_2_72:
        MOVS     R2,#+1
        MOVS     R0,R7
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R9
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_Point
        BL       GUI_Point
// 3029         Clear_Win[j]=Last_Y;
        ADD      R0,SP,#+72
        STR      R7,[R0, R9, LSL #+2]
// 3030       } 
??ShiBoQi_2_71:
        ADDS     R9,R9,#+1
        B.N      ??ShiBoQi_2_68
// 3031       
// 3032       //绘制横向参考线
// 3033       //if(State_Flag)   //只有当flag=1时，才显示
// 3034       {
// 3035         for(int j=1;j<125;j++)
??ShiBoQi_2_69:
        MOVS     R9,#+1
??ShiBoQi_2_73:
        CMP      R9,#+125
        BGE.N    ??ShiBoQi_2_74
// 3036         {
// 3037           GUI_Point(j,Y_LINE,j%2);
        MOVS     R0,#+2
        SDIV     R1,R9,R0
        MLS      R0,R0,R1,R9
        MOVS     R2,R0
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR.N    R0,??DataTable18_9
        LDR      R0,[R0, #+0]
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R9
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_Point
        BL       GUI_Point
// 3038         }
        ADDS     R9,R9,#+1
        B.N      ??ShiBoQi_2_73
// 3039       }
// 3040       //绘制竖向参考线
// 3041       for(int i=11;i<=62;i++)
??ShiBoQi_2_74:
        MOVS     R9,#+11
??ShiBoQi_2_75:
        CMP      R9,#+63
        BGE.W    ??ShiBoQi_2_7
// 3042       {
// 3043         GUI_Point(X_LINE,i,i%2);
        MOVS     R0,#+2
        SDIV     R1,R9,R0
        MLS      R0,R0,R1,R9
        MOVS     R2,R0
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOV      R0,R9
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable18_7
        LDR      R0,[R0, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_Point
        BL       GUI_Point
// 3044       }
        ADDS     R9,R9,#+1
        B.N      ??ShiBoQi_2_75
// 3045       //DELAY_MS(1);
// 3046     }
??ShiBoQi_2_63:
        ADD      SP,SP,#+1536
          CFI CFA R13+152
        ADD      SP,SP,#+124
          CFI CFA R13+28
        POP      {R4-R9,PC}       ;; return
        Nop      
        DATA
??ShiBoQi_2_48:
        DC8      0x4D, 0x30, 0x00, 0x00
// 3047 }
          CFI EndBlock cfiBlock20

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18:
        DC32     ?_166

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_1:
        DC32     ?_168

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_2:
        DC32     ?_169

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_3:
        DC32     Get_ShiBoQi_Button

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_4:
        DC32     `ShiBoQi_2::ShiBoQi_Xishu`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_5:
        DC32     `ShiBoQi_2::ShiBoQi_Xishu_f`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_6:
        DC32     back_color

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_7:
        DC32     X_LINE

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_8:
        DC32     ?_160

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_9:
        DC32     Y_LINE

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_10:
        DC32     ?_161

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_11:
        DC32     ?_162

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_12:
        DC32     Press

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_13:
        DC32     ShiBoQi2_Point

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_14:
        DC32     ?_165

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_15:
        DC32     ?_174

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
`ShiBoQi_2::ShiBoQi_Xishu`:
        DC32 30

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
`ShiBoQi_2::ShiBoQi_Xishu_f`:
        DC32 2

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 3048 
// 3049 
// 3050 
// 
// 80 232 bytes in section .bss
//     40 bytes in section .data
// 10 032 bytes in section .rodata
// 20 724 bytes in section .text
//    150 bytes in section .textrw
// 
// 20 874 bytes of CODE  memory
// 10 032 bytes of CONST memory
// 80 272 bytes of DATA  memory
//
//Errors: none
//Warnings: 36
