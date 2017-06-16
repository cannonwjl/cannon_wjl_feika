///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      16/Jun/2017  19:20:35
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\@@@@@@@\Car\App\main.c
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EW8D5D.tmp
//        (D:\@@@@@@@\Car\App\main.c -D DEBUG -D ARM_MATH_CM4 -D
//        MK60DZ10 -lA D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List -o
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
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\main.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        RTMODEL "__dlib_full_locale_support", "1"
        RTMODEL "__dlib_version", "6"
        RTMODEL "__iar_require _Printf", "widths"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1
        #define SHF_WRITE 0x1
        #define SHF_EXECINSTR 0x4

        EXTERN AAngleArrySCI
        EXTERN AD
        EXTERN All_Init
        EXTERN Angle_Speed
        EXTERN CAR_SEND_SPEED
        EXTERN CAR_SEND_SPEED_ERR
        EXTERN CAR_SEND_SPEED_I
        EXTERN Car_Angle
        EXTERN Car_Ctrl
        EXTERN Case_UI
        EXTERN Control_Para
        EXTERN Debug_Bluetooth
        EXTERN Debug_Button
        EXTERN Debug_Button_Led
        EXTERN DirectionCount
        EXTERN Direction_Control
        EXTERN Direction_Control_Output
        EXTERN GUI_Exec
        EXTERN Get_Speed
        EXTERN Led_Software_Button
        EXTERN MID_ERROR
        EXTERN Moto_Out
        EXTERN OLED_OPEN
        EXTERN OLED_P6x8Str
        EXTERN Plan_Choose
        EXTERN Set
        EXTERN Set_Ang
        EXTERN SpeedCount
        EXTERN Speed_Ang
        EXTERN Speed_Control
        EXTERN Speed_Control_Output
        EXTERN Str_View
        EXTERN Turn_Speed
        EXTERN Updata
        EXTERN View
        EXTERN View_Plan
        EXTERN View_Set
        EXTERN __aeabi_cfcmple
        EXTERN __aeabi_cfrcmple
        EXTERN __aeabi_d2f
        EXTERN __aeabi_dadd
        EXTERN __aeabi_f2d
        EXTERN adc_once
        EXTERN gpio_set
        EXTERN gpio_turn
        EXTERN result
        EXTERN sprintf
        EXTERN uart_putbuff
        EXTERN uart_putchar

        PUBLIC CASE
        PUBLIC Dr_6
        PUBLIC PIT0_IRQHandler
        PUBLIC PIT1_IRQHandler
        PUBLIC PIT3_IRQHandler
        PUBLIC Ptr_Show_Computer
        PUBLIC Send_Begin
        PUBLIC Send_Para
        PUBLIC Send_Variable
        PUBLIC Send_avelue
        PUBLIC Time
        PUBLIC main
        PUBLIC my_putchar
        PUBLIC sendimg
        
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
        
// D:\@@@@@@@\Car\App\main.c
//    1 /**************************************************************************************
//    2 * @author     山外科技
//    3 * @version    v5.0
//    4 * @date       2013-08-28
//    5 **************************************************************************************/
//    6 
//    7 #include "All_Init.h"

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function NVIC_EnableIRQ
          CFI NoCalls
        THUMB
// static __ramfunc __interwork __softfp void NVIC_EnableIRQ(IRQn_Type)
NVIC_EnableIRQ:
        MOVS     R2,#+1
        ANDS     R1,R0,#0x1F
        LSLS     R2,R2,R1
        LDR.N    R1,??DataTable5  ;; 0xe000e100
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        MOVS     R3,R0
        LSRS     R3,R3,#+5
        STR      R2,[R1, R3, LSL #+2]
        BX       LR               ;; return
          CFI EndBlock cfiBlock0

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function NVIC_DisableIRQ
          CFI NoCalls
        THUMB
// static __ramfunc __interwork __softfp void NVIC_DisableIRQ(IRQn_Type)
NVIC_DisableIRQ:
        MOVS     R2,#+1
        ANDS     R1,R0,#0x1F
        LSLS     R2,R2,R1
        LDR.N    R1,??DataTable5_1  ;; 0xe000e180
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        MOVS     R3,R0
        LSRS     R3,R3,#+5
        STR      R2,[R1, R3, LSL #+2]
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//    8 
//    9 
//   10 //                            角速度      车体角度      原始速度      转弯误差    角加速度      车体速度误差         车体当前速度   速度积分I        速度输出的角度
//   11  
//   12      

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   13 float *Ptr_Show_Computer[9]={&Angle_Speed,&Car_Angle,&AAngleArrySCI[2],&MID_ERROR,&Turn_Speed, &CAR_SEND_SPEED_ERR,&CAR_SEND_SPEED ,&CAR_SEND_SPEED_I ,&Speed_Ang};
Ptr_Show_Computer:
        DC32 Angle_Speed, Car_Angle, AAngleArrySCI + 8H, MID_ERROR, Turn_Speed
        DC32 CAR_SEND_SPEED_ERR, CAR_SEND_SPEED, CAR_SEND_SPEED_I, Speed_Ang
//   14 
//   15 
//   16 #define BYTE0(Temp)       (*(char *)(&Temp))     
//   17 #define BYTE1(Temp)       (*((char *)(&Temp) + 1))
//   18 #define BYTE2(Temp)       (*((char *)(&Temp) + 2))
//   19 #define BYTE3(Temp)       (*((char *)(&Temp) + 3))
//   20 
//   21 
//   22 

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function my_putchar
        THUMB
//   23 __ramfunc void my_putchar(char temp)
//   24 {
my_putchar:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//   25     uart_putchar(UART3,temp); //根据实际的串口号来修改
        MOVS     R1,R4
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        MOVS     R0,#+3
          CFI FunCall uart_putchar
        BL       uart_putchar
//   26 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock2
//   27 
//   28 
//   29 //发送控制参数

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function Send_Para
        THUMB
//   30 void Send_Para()
//   31 {
Send_Para:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
//   32   uint8 i=0,ch=0;
        MOVS     R4,#+0
        MOVS     R5,#+0
//   33   float temp=0;
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
//   34   my_putchar(0x55);
        MOVS     R0,#+85
          CFI FunCall my_putchar
        BL       my_putchar
//   35   my_putchar(0xaa);
        MVNS     R0,#+85
          CFI FunCall my_putchar
        BL       my_putchar
//   36   my_putchar(0xab);
        MVNS     R0,#+84
          CFI FunCall my_putchar
        BL       my_putchar
//   37   my_putchar(14);
        MOVS     R0,#+14
          CFI FunCall my_putchar
        BL       my_putchar
//   38   
//   39   
//   40   for(i=0;i<14;i++)
        MOVS     R0,#+0
        MOVS     R4,R0
??Send_Para_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+14
        BGE.N    ??Send_Para_1
//   41   {
//   42     temp=Control_Para[i];
        LDR.N    R0,??DataTable18
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        STR      R0,[SP, #+0]
//   43     if(temp<0.00001&&temp>-0.00001)
        LDR      R0,[SP, #+0]
        LDR.N    R1,??DataTable18_1  ;; 0x3727c5ad
          CFI FunCall __aeabi_cfcmple
        BL       __aeabi_cfcmple
        BCS.N    ??Send_Para_2
        LDR      R0,[SP, #+0]
        LDR.N    R1,??DataTable18_2  ;; 0xb727c5ac
          CFI FunCall __aeabi_cfrcmple
        BL       __aeabi_cfrcmple
        BHI.N    ??Send_Para_2
//   44       temp=0;
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        B.N      ??Send_Para_3
//   45     else temp=temp+0.000001;
??Send_Para_2:
        LDR      R0,[SP, #+0]
          CFI FunCall __aeabi_f2d
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable18_3  ;; 0xa0b5ed8d
        LDR.N    R3,??DataTable18_4  ;; 0x3eb0c6f7
          CFI FunCall __aeabi_dadd
        BL       __aeabi_dadd
          CFI FunCall __aeabi_d2f
        BL       __aeabi_d2f
        STR      R0,[SP, #+0]
//   46     ch=BYTE0(temp);
??Send_Para_3:
        LDRSB    R0,[SP, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R5,R0
//   47     my_putchar(ch);
        MOVS     R0,R5
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
          CFI FunCall my_putchar
        BL       my_putchar
//   48     ch=BYTE1(temp);
        LDRB     R0,[SP, #+1]
        MOVS     R5,R0
//   49     my_putchar(ch);
        MOVS     R0,R5
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
          CFI FunCall my_putchar
        BL       my_putchar
//   50     ch=BYTE2(temp);
        LDRB     R0,[SP, #+2]
        MOVS     R5,R0
//   51     my_putchar(ch);
        MOVS     R0,R5
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
          CFI FunCall my_putchar
        BL       my_putchar
//   52     ch=BYTE3(temp);
        LDRB     R0,[SP, #+3]
        MOVS     R5,R0
//   53     my_putchar(ch);
        MOVS     R0,R5
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
          CFI FunCall my_putchar
        BL       my_putchar
//   54   }
        ADDS     R4,R4,#+1
        B.N      ??Send_Para_0
//   55     my_putchar(0X0b);//帧尾
??Send_Para_1:
        MOVS     R0,#+11
          CFI FunCall my_putchar
        BL       my_putchar
//   56 }
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock3
//   57 

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function Send_Begin
        THUMB
//   58 __ramfunc void Send_Begin(void)
//   59 {
Send_Begin:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   60   if(Debug_Bluetooth)
        LDR.N    R0,??DataTable5_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Send_Begin_0
//   61   {
//   62   my_putchar(0x55);
        MOVS     R0,#+85
          CFI FunCall my_putchar
        BL       my_putchar
//   63   my_putchar(0xaa);
        MVNS     R0,#+85
          CFI FunCall my_putchar
        BL       my_putchar
//   64   my_putchar(0xae);
        MVNS     R0,#+81
          CFI FunCall my_putchar
        BL       my_putchar
//   65   }
//   66 }
??Send_Begin_0:
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock4
//   67 

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function Send_avelue
        THUMB
//   68 __ramfunc void Send_avelue(float a)
//   69 {
Send_avelue:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        SUB      SP,SP,#+8
          CFI CFA R13+24
        MOVS     R4,R0
//   70   register  uint8 i=0,ch=0;
        MOVS     R5,#+0
        MOVS     R6,#+0
//   71   register  float temp=a;
        STR      R4,[SP, #+0]
//   72   
//   73   Send_Begin();
          CFI FunCall Send_Begin
        BL       Send_Begin
//   74   if(Debug_Bluetooth)
        LDR.N    R0,??DataTable5_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Send_avelue_0
//   75   {
//   76     my_putchar(0x55);
        MOVS     R0,#+85
          CFI FunCall my_putchar
        BL       my_putchar
//   77     my_putchar(0xaa);
        MVNS     R0,#+85
          CFI FunCall my_putchar
        BL       my_putchar
//   78     my_putchar(0xad);
        MVNS     R0,#+82
          CFI FunCall my_putchar
        BL       my_putchar
//   79     my_putchar(1); 
        MOVS     R0,#+1
          CFI FunCall my_putchar
        BL       my_putchar
//   80     
//   81     temp=a;
        STR      R4,[SP, #+0]
//   82     ch=BYTE0(temp);
        LDRSB    R0,[SP, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R6,R0
//   83       my_putchar(ch);
        MOVS     R0,R6
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
          CFI FunCall my_putchar
        BL       my_putchar
//   84     ch=BYTE1(temp);
        LDRB     R0,[SP, #+1]
        MOVS     R6,R0
//   85       my_putchar(ch);
        MOVS     R0,R6
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
          CFI FunCall my_putchar
        BL       my_putchar
//   86     ch=BYTE2(temp);
        LDRB     R0,[SP, #+2]
        MOVS     R6,R0
//   87       my_putchar(ch);
        MOVS     R0,R6
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
          CFI FunCall my_putchar
        BL       my_putchar
//   88     ch=BYTE3(temp);
        LDRB     R0,[SP, #+3]
        MOVS     R6,R0
//   89       my_putchar(ch);
        MOVS     R0,R6
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
          CFI FunCall my_putchar
        BL       my_putchar
//   90      my_putchar(0x0d);
        MOVS     R0,#+13
          CFI FunCall my_putchar
        BL       my_putchar
//   91   }
//   92 return ;
??Send_avelue_0:
        POP      {R0,R1,R4-R6,PC}  ;; return
//   93 }
          CFI EndBlock cfiBlock5
//   94 
//   95 
//   96 
//   97 

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function Send_Variable
        THUMB
//   98 __ramfunc void Send_Variable()
//   99 {
Send_Variable:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        SUB      SP,SP,#+8
          CFI CFA R13+24
//  100   
//  101 register  uint8 i=0,ch=0;
        MOVS     R4,#+0
        MOVS     R5,#+0
//  102 register  float temp=0;
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
//  103 register  uint8 Variable_num=2;
        MOVS     R6,#+2
//  104   
//  105   if(Debug_Bluetooth)
        LDR.N    R0,??DataTable5_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Send_Variable_0
//  106   {
//  107   my_putchar(0x55);
        MOVS     R0,#+85
          CFI FunCall my_putchar
        BL       my_putchar
//  108   my_putchar(0xaa);
        MVNS     R0,#+85
          CFI FunCall my_putchar
        BL       my_putchar
//  109   my_putchar(0xad);
        MVNS     R0,#+82
          CFI FunCall my_putchar
        BL       my_putchar
//  110   my_putchar(Variable_num);
        MOVS     R0,R6
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
          CFI FunCall my_putchar
        BL       my_putchar
//  111   
//  112  for(i=0;i<Variable_num;i++)
        MOVS     R0,#+0
        MOVS     R4,R0
??Send_Variable_1:
        MOVS     R0,R4
        MOVS     R1,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R0,R1
        BCS.N    ??Send_Variable_2
//  113   {
//  114     temp=*Ptr_Show_Computer[i];
        LDR.N    R0,??DataTable5_3
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDR      R0,[R0, #+0]
        STR      R0,[SP, #+0]
//  115     ch=BYTE0(temp);
        LDRSB    R0,[SP, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R5,R0
//  116       my_putchar(ch);
        MOVS     R0,R5
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
          CFI FunCall my_putchar
        BL       my_putchar
//  117     ch=BYTE1(temp);
        LDRB     R0,[SP, #+1]
        MOVS     R5,R0
//  118       my_putchar(ch);
        MOVS     R0,R5
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
          CFI FunCall my_putchar
        BL       my_putchar
//  119     ch=BYTE2(temp);
        LDRB     R0,[SP, #+2]
        MOVS     R5,R0
//  120       my_putchar(ch);
        MOVS     R0,R5
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
          CFI FunCall my_putchar
        BL       my_putchar
//  121     ch=BYTE3(temp);
        LDRB     R0,[SP, #+3]
        MOVS     R5,R0
//  122       my_putchar(ch);
        MOVS     R0,R5
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
          CFI FunCall my_putchar
        BL       my_putchar
//  123   }
        ADDS     R4,R4,#+1
        B.N      ??Send_Variable_1
//  124      my_putchar(0x0d);
??Send_Variable_2:
        MOVS     R0,#+13
          CFI FunCall my_putchar
        BL       my_putchar
//  125   }
//  126 }
??Send_Variable_0:
        POP      {R0,R1,R4-R6,PC}  ;; return
          CFI EndBlock cfiBlock6
//  127 
//  128 
//  129 /*!
//  130  *  @brief      发送图像到上位机显示  
//  131  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function sendimg
        THUMB
//  132 void sendimg(uint8 *imgaddr, uint32 imgsize)
//  133 {
sendimg:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
//  134   my_putchar(0x55);
        MOVS     R0,#+85
          CFI FunCall my_putchar
        BL       my_putchar
//  135   my_putchar(0xaa);
        MVNS     R0,#+85
          CFI FunCall my_putchar
        BL       my_putchar
//  136   my_putchar(0xac);
        MVNS     R0,#+83
          CFI FunCall my_putchar
        BL       my_putchar
//  137   my_putchar(8);
        MOVS     R0,#+8
          CFI FunCall my_putchar
        BL       my_putchar
//  138   //一共800个数据位
//  139   uart_putbuff(UART3, imgaddr, imgsize); //发送图像
        MOVS     R2,R5
        MOVS     R1,R4
        MOVS     R0,#+3
          CFI FunCall uart_putbuff
        BL       uart_putbuff
//  140 //  uart_putbuff(UART3, (uint8*)(&LMR[0][0]),     180); //发送边线及中线
//  141 //  uart_putbuff(UART3, (uint8*)(&LMR[0][0]),     20); //预留20个数据位
//  142   my_putchar(0x0c);
        MOVS     R0,#+12
          CFI FunCall my_putchar
        BL       my_putchar
//  143 }
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock7
//  144 
//  145 /*中断函数函数声明*/
//  146 __ramfunc void DMA0_IRQHandler();
//  147 __ramfunc void PORTC_IRQHandler();
//  148 
//  149 /*主函数使用变量声明*/
//  150 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  151 int Time=0;        	   //系统运行时间       
Time:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  152 int CASE=0;       	   //主循环UI状态指针  
CASE:
        DS8 4
//  153 
//  154 
//  155 //虚无缥缈的主函数
//  156                          
//  157 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function main
        THUMB
//  158 int main(void)
//  159 { 
main:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  160 
//  161 //  //gpio_init (PTC2, GPO,1);//电机使能
//  162 
//  163     //ftm_pwm_duty(FTM0, FTM_CH1,500);
//  164 //    while(1)
//  165 //    {
//  166 //    
//  167 //    
//  168 //    }
//  169   
//  170    All_Init(0);  //传入参数匹配不同方案(暂时无用)	
        MOVS     R0,#+0
          CFI FunCall All_Init
        BL       All_Init
//  171   // Beep(100);
//  172   // Car_Protect();//车体保护
//  173    
//  174   return 0;
        MOVS     R0,#+0
        POP      {R1,PC}          ;; return
//  175 
//  176 }
          CFI EndBlock cfiBlock8
//  177 /******************************************************* START MAIN ********************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function Dr_6
        THUMB
//  178 int Dr_6 (void)
//  179 {
Dr_6:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  180     for(;;)
//  181     {
//  182         switch(CASE)
??Dr_6_0:
        LDR.N    R0,??DataTable18_5
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Dr_6_1
        CMP      R0,#+2
        BEQ.N    ??Dr_6_2
        BCC.N    ??Dr_6_3
        CMP      R0,#+4
        BEQ.N    ??Dr_6_4
        BCC.N    ??Dr_6_5
        CMP      R0,#+6
        BEQ.N    ??Dr_6_6
        BCC.N    ??Dr_6_7
        CMP      R0,#+8
        BEQ.N    ??Dr_6_8
        BCC.N    ??Dr_6_9
        CMP      R0,#+9
        BEQ.N    ??Dr_6_10
        B.N      ??Dr_6_11
//  183         {
//  184         	case 0:		CASE = Case_UI(); break;	//主菜单
??Dr_6_1:
          CFI FunCall Case_UI
        BL       Case_UI
        LDR.N    R1,??DataTable18_5
        STR      R0,[R1, #+0]
        B.N      ??Dr_6_0
//  185         	case 1:		CASE = View();    break;	//参数预览菜单   》内分6个紫菜单
??Dr_6_3:
          CFI FunCall View
        BL       View
        LDR.N    R1,??DataTable18_5
        STR      R0,[R1, #+0]
        B.N      ??Dr_6_0
//  186                 case 2:         CASE = Plan_Choose();break; //方案选择       》6方案选择
??Dr_6_2:
          CFI FunCall Plan_Choose
        BL       Plan_Choose
        LDR.N    R1,??DataTable18_5
        STR      R0,[R1, #+0]
        B.N      ??Dr_6_0
//  187         	case 3:		CASE = Set();     break;	//参数设置
??Dr_6_5:
          CFI FunCall Set
        BL       Set
        LDR.N    R1,??DataTable18_5
        STR      R0,[R1, #+0]
        B.N      ??Dr_6_0
//  188                 case 4:         CASE = Debug_Button();break;//调试开关
??Dr_6_4:
          CFI FunCall Debug_Button
        BL       Debug_Button
        LDR.N    R1,??DataTable18_5
        STR      R0,[R1, #+0]
        B.N      ??Dr_6_0
//  189             //以上是主菜单
//  190             
//  191             //以下是左右按键调出的菜单
//  192         	case 5:		CASE = Car_Ctrl();break;	//发车
??Dr_6_7:
          CFI FunCall Car_Ctrl
        BL       Car_Ctrl
        LDR.N    R1,??DataTable18_5
        STR      R0,[R1, #+0]
        B.N      ??Dr_6_0
//  193         	case 6:		CASE = Updata();  break;	//升级界面
??Dr_6_6:
          CFI FunCall Updata
        BL       Updata
        LDR.N    R1,??DataTable18_5
        STR      R0,[R1, #+0]
        B.N      ??Dr_6_0
//  194         	case 7:		CASE = Set_Ang(); break;	//调整中值
??Dr_6_9:
          CFI FunCall Set_Ang
        BL       Set_Ang
        LDR.N    R1,??DataTable18_5
        STR      R0,[R1, #+0]
        B.N      ??Dr_6_0
//  195                 case 8:         CASE = View_Set() ;break;   //参数预览界面
??Dr_6_8:
          CFI FunCall View_Set
        BL       View_Set
        LDR.N    R1,??DataTable18_5
        STR      R0,[R1, #+0]
        B.N      ??Dr_6_0
//  196                 case 9:         CASE = View_Plan();break;   //方案参数预览界面
??Dr_6_10:
          CFI FunCall View_Plan
        BL       View_Plan
        LDR.N    R1,??DataTable18_5
        STR      R0,[R1, #+0]
        B.N      ??Dr_6_0
//  197             
//  198           
//  199         	default :	CASE = 0;         break;	//纠错
??Dr_6_11:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable18_5
        STR      R0,[R1, #+0]
        B.N      ??Dr_6_0
//  200         }
//  201     }
//  202 }
          CFI EndBlock cfiBlock9
//  203 /********************************************************* END MAIN ********************************************************/
//  204 
//  205 
//  206 /*************************************************************
//  207 *	1ms定时器中断,提供控制流程,严格遵守控制节拍,提供计时变量
//  208 *************************************************************/

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function PIT0_IRQHandler
        THUMB
//  209 __ramfunc void PIT0_IRQHandler(void)
//  210 {
PIT0_IRQHandler:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  211  static  uint8  part=0;//状态机节拍
//  212  static  int  Mid_v=0;
//  213  static  int  Last_mid=0;
//  214  
//  215 	if(PIT_TFLG(PIT0) == 1) 
        LDR.N    R0,??DataTable5_4  ;; 0x4003710c
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??PIT0_IRQHandler_0
//  216 	{
//  217 	  	disable_irq(PIT0_IRQn);
        MOVS     R0,#+68
          CFI FunCall NVIC_DisableIRQ
        BL       NVIC_DisableIRQ
//  218 		part++;
        LDR.N    R0,??DataTable5_5
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable5_5
        STRB     R0,[R1, #+0]
//  219 		DirectionCount++;
        LDR.N    R0,??DataTable5_6
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable5_6
        STRB     R0,[R1, #+0]
//  220                 SpeedCount++;
        LDR.N    R0,??DataTable5_7
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable5_7
        STRB     R0,[R1, #+0]
//  221         
//  222 		switch(part) 
        LDR.N    R0,??DataTable5_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??PIT0_IRQHandler_1
        BCC.N    ??PIT0_IRQHandler_2
        CMP      R0,#+3
        BEQ.N    ??PIT0_IRQHandler_3
        BCC.N    ??PIT0_IRQHandler_4
        CMP      R0,#+5
        BEQ.N    ??PIT0_IRQHandler_5
        BCC.N    ??PIT0_IRQHandler_6
        B.N      ??PIT0_IRQHandler_2
//  223 		{
//  224 			case 1: //直立控制
//  225 					// 5ms采集一次速度
//  226                                 Get_Speed();              
??PIT0_IRQHandler_1:
          CFI FunCall Get_Speed
        BL       Get_Speed
//  227 					//速度控制
//  228 					//SpeedCount++;     //计数节拍
//  229 				if(SpeedCount>=10) 
        LDR.N    R0,??DataTable5_7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+10
        BLT.N    ??PIT0_IRQHandler_7
//  230                                 {
//  231                                  Speed_Control();//速度PID计算
          CFI FunCall Speed_Control
        BL       Speed_Control
//  232                                  SpeedCount=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5_7
        STRB     R0,[R1, #+0]
//  233                                  }
//  234                  	 Speed_Control_Output();//速度平滑输出
??PIT0_IRQHandler_7:
          CFI FunCall Speed_Control_Output
        BL       Speed_Control_Output
//  235                          //Angle_Calculate();//角度计算与滤波
//  236 			 //Angle_Control();  //角度PID计算函数
//  237                		break;
        B.N      ??PIT0_IRQHandler_8
//  238 
//  239 			case 2: //赛道类型判断     
//  240 			                 //RodeType_Get();
//  241 
//  242                           AD[0]=adc_once(ADC1_SE4a, ADC_12bit);
??PIT0_IRQHandler_4:
        MOVS     R1,#+1
        MOVS     R0,#+36
          CFI FunCall adc_once
        BL       adc_once
        LDR.N    R1,??DataTable5_8
        STR      R0,[R1, #+0]
//  243                           AD[1]=adc_once(ADC1_SE5a, ADC_12bit);
        MOVS     R1,#+1
        MOVS     R0,#+37
          CFI FunCall adc_once
        BL       adc_once
        LDR.N    R1,??DataTable5_8
        STR      R0,[R1, #+4]
//  244                           AD[2]=adc_once(ADC1_SE6a, ADC_12bit);
        MOVS     R1,#+1
        MOVS     R0,#+38
          CFI FunCall adc_once
        BL       adc_once
        LDR.N    R1,??DataTable5_8
        STR      R0,[R1, #+8]
//  245                           AD[3]=adc_once(ADC1_SE7a, ADC_12bit);
        MOVS     R1,#+1
        MOVS     R0,#+39
          CFI FunCall adc_once
        BL       adc_once
        LDR.N    R1,??DataTable5_8
        STR      R0,[R1, #+12]
//  246                           result=AD[0]-AD[3];
        LDR.N    R0,??DataTable5_8
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable5_8
        LDR      R0,[R0, #+12]
        SUBS     R1,R1,R0
        LDR.N    R0,??DataTable5_9
        STR      R1,[R0, #+0]
//  247                           
//  248                		break;
        B.N      ??PIT0_IRQHandler_8
//  249 					
//  250 			case 3://赛道中线输出
//  251                                       
//  252                		break; 
??PIT0_IRQHandler_3:
        B.N      ??PIT0_IRQHandler_8
//  253 					
//  254             case 4://转弯控制
//  255                     Direction_Control(); 
??PIT0_IRQHandler_6:
          CFI FunCall Direction_Control
        BL       Direction_Control
//  256 					DirectionCount=0; //方向平滑输出因子
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5_6
        STRB     R0,[R1, #+0]
//  257 					break;
        B.N      ??PIT0_IRQHandler_8
//  258 			case 5:
//  259                                              //DELAY_US(500);
//  260 					part=0;
??PIT0_IRQHandler_5:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5_5
        STRB     R0,[R1, #+0]
//  261 					//下面更新陀螺仪转角信息
//  262 					//read_buff[1]= Get_Y_Gyro();
//  263 				       	break;
        B.N      ??PIT0_IRQHandler_8
//  264 			default:
//  265 					part=0;
??PIT0_IRQHandler_2:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5_5
        STRB     R0,[R1, #+0]
//  266 					break;
//  267 		}//switch
//  268 
//  269 	    Direction_Control_Output();
??PIT0_IRQHandler_8:
          CFI FunCall Direction_Control_Output
        BL       Direction_Control_Output
//  270 	    Moto_Out();
          CFI FunCall Moto_Out
        BL       Moto_Out
//  271 	
//  272         //蜂鸣器响部分
//  273 //        if(BEEP_TIMES>0)
//  274 //        {
//  275 //           BEEP_ON;
//  276 //           BEEP_TIMES--;
//  277 //        }
//  278 //        else 
//  279 //        {
//  280 //           BEEP_OFF;
//  281 //           BEEP_TIMES=0;
//  282 //        }
//  283 	}//if
//  284     
//  285     
//  286     
//  287 	PIT_Flag_Clear(PIT0);       //清中断标志位
??PIT0_IRQHandler_0:
        LDR.N    R0,??DataTable5_4  ;; 0x4003710c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable5_4  ;; 0x4003710c
        STR      R0,[R1, #+0]
//  288 	enable_irq (PIT0_IRQn);
        MOVS     R0,#+68
          CFI FunCall NVIC_EnableIRQ
        BL       NVIC_EnableIRQ
//  289 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock10

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable5:
        DC32     0xe000e100

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable5_1:
        DC32     0xe000e180

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable5_2:
        DC32     Debug_Bluetooth

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable5_3:
        DC32     Ptr_Show_Computer

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable5_4:
        DC32     0x4003710c

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable5_5:
        DC32     `PIT0_IRQHandler::part`

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable5_6:
        DC32     DirectionCount

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable5_7:
        DC32     SpeedCount

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable5_8:
        DC32     AD

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable5_9:
        DC32     result

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
`PIT0_IRQHandler::part`:
        DS8 1
//  290 
//  291 /*************************************************************
//  292 *	20ms定时器中断,采集图像,刷新屏幕,获取按键
//  293 *************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function PIT1_IRQHandler
        THUMB
//  294 void PIT1_IRQHandler(void)
//  295 {
PIT1_IRQHandler:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  296 	if(PIT_TFLG(PIT1) == 1)
        LDR.N    R0,??DataTable18_6  ;; 0x4003711c
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??PIT1_IRQHandler_0
//  297 	{
//  298 	  disable_irq(PIT1_IRQn);
        MOVS     R0,#+69
          CFI FunCall NVIC_DisableIRQ
        BL       NVIC_DisableIRQ
//  299            GUI_Exec();//刷新屏幕
          CFI FunCall GUI_Exec
        BL       GUI_Exec
//  300 	}
//  301 	PIT_Flag_Clear(PIT1);//清中断标志位
??PIT1_IRQHandler_0:
        LDR.N    R0,??DataTable18_6  ;; 0x4003711c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable18_6  ;; 0x4003711c
        STR      R0,[R1, #+0]
//  302 	enable_irq (PIT1_IRQn);
        MOVS     R0,#+69
          CFI FunCall NVIC_EnableIRQ
        BL       NVIC_EnableIRQ
//  303 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock11
//  304 
//  305 /*************************************************************
//  306 *	500ms定时器中断
//  307 *************************************************************/
//  308 //void PIT2_IRQHandler(void)
//  309 //{
//  310 //  //static int iiii=0;
//  311 //	if(PIT_TFLG(PIT2) == 1 )
//  312 //	{
//  313 //		disable_irq(PIT2_IRQn);      
//  314 //	}
//  315 //	
//  316 //	PIT_Flag_Clear(PIT2);//清中断标志位	
//  317 //	enable_irq (PIT2_IRQn);
//  318 //}
//  319 
//  320 /*************************************************************
//  321 *	1s定时器中断
//  322 *************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function PIT3_IRQHandler
        THUMB
//  323 void PIT3_IRQHandler(void)
//  324 {
PIT3_IRQHandler:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  325 	if(PIT_TFLG(PIT3) == 1)
        LDR.N    R0,??DataTable18_7  ;; 0x4003713c
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??PIT3_IRQHandler_0
//  326 	{
//  327 	  	disable_irq(PIT3_IRQn);
        MOVS     R0,#+71
          CFI FunCall NVIC_DisableIRQ
        BL       NVIC_DisableIRQ
//  328 		//gpio_turn (PTA17);// PTA17 LED 反转
//  329 		
//  330         if(Led_Software_Button!=0)     //0跟随系统  否则可以在程序里面控制亮灭
        LDR.N    R0,??DataTable18_8
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??PIT3_IRQHandler_1
//  331         {
//  332            ;;   
//  333         }
//  334         else
//  335         if(Debug_Button_Led )
        LDR.N    R0,??DataTable18_9
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??PIT3_IRQHandler_2
//  336         {
//  337            gpio_turn (PTC2);//LED	反转
        MOVS     R0,#+66
          CFI FunCall gpio_turn
        BL       gpio_turn
        B.N      ??PIT3_IRQHandler_1
//  338         }
//  339         else 
//  340         {
//  341            gpio_set(PTC2,1);
??PIT3_IRQHandler_2:
        MOVS     R1,#+1
        MOVS     R0,#+66
          CFI FunCall gpio_set
        BL       gpio_set
//  342         }
//  343 		//picMany=PicMany;
//  344 		Time++;
??PIT3_IRQHandler_1:
        LDR.N    R0,??DataTable18_10
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable18_10
        STR      R0,[R1, #+0]
//  345         
//  346         if(Time>=1000)
        LDR.N    R0,??DataTable18_10
        LDR      R0,[R0, #+0]
        CMP      R0,#+1000
        BLT.N    ??PIT3_IRQHandler_3
//  347           Time=1000;
        MOV      R0,#+1000
        LDR.N    R1,??DataTable18_10
        STR      R0,[R1, #+0]
//  348         
//  349 		//Time%=1000;
//  350         if(!OLED_OPEN)
??PIT3_IRQHandler_3:
        LDR.N    R0,??DataTable18_11
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??PIT3_IRQHandler_0
//  351         {
//  352         sprintf(Str_View,"Pic:%3d",123);
        MOVS     R2,#+123
        LDR.N    R1,??DataTable18_12
        LDR.N    R0,??DataTable18_13
          CFI FunCall sprintf
        BL       sprintf
//  353         OLED_P6x8Str(0,2,(u8*)Str_View);
        LDR.N    R2,??DataTable18_13
        MOVS     R1,#+2
        MOVS     R0,#+0
          CFI FunCall OLED_P6x8Str
        BL       OLED_P6x8Str
//  354         sprintf(Str_View,"Time:%2d",Time);
        LDR.N    R0,??DataTable18_10
        LDR      R2,[R0, #+0]
        LDR.N    R1,??DataTable18_14
        LDR.N    R0,??DataTable18_13
          CFI FunCall sprintf
        BL       sprintf
//  355         OLED_P6x8Str(0,3,(u8*)Str_View);
        LDR.N    R2,??DataTable18_13
        MOVS     R1,#+3
        MOVS     R0,#+0
          CFI FunCall OLED_P6x8Str
        BL       OLED_P6x8Str
//  356         }
//  357         
//  358 	}
//  359 	PIT_Flag_Clear(PIT3);//清中断标志位	
??PIT3_IRQHandler_0:
        LDR.N    R0,??DataTable18_7  ;; 0x4003713c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable18_7  ;; 0x4003713c
        STR      R0,[R1, #+0]
//  360 	enable_irq (PIT3_IRQn);
        MOVS     R0,#+71
          CFI FunCall NVIC_EnableIRQ
        BL       NVIC_EnableIRQ
//  361 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock12

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18:
        DC32     Control_Para

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_1:
        DC32     0x3727c5ad

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_2:
        DC32     0xb727c5ac

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_3:
        DC32     0xa0b5ed8d

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_4:
        DC32     0x3eb0c6f7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_5:
        DC32     CASE

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_6:
        DC32     0x4003711c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_7:
        DC32     0x4003713c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_8:
        DC32     Led_Software_Button

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_9:
        DC32     Debug_Button_Led

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_10:
        DC32     Time

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_11:
        DC32     OLED_OPEN

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_12:
        DC32     ?_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_13:
        DC32     Str_View

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_14:
        DC32     ?_1

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_0:
        DC8 "Pic:%3d"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_1:
        DC8 "Time:%2d"
        DC8 0, 0, 0

        END
//  362 
//  363 /*************************** 以下用作摄像头采集 ****************************/
//  364 //__ramfunc void PORTC_IRQHandler()
//  365 //{
//  366 //    
//  367 //    uint8  n;    //引脚号
//  368 //    uint32 flag;
//  369 //    
//  370 //    while(!PORTC_ISFR);
//  371 //    flag = PORTC_ISFR;
//  372 //    PORTC_ISFR  = ~0;         //清中断标志位
//  373 //    
//  374 //    n = 7;                    //场中断
//  375 //    if(flag & (1 << n))       //PTC7触发中断
//  376 //    {
//  377 //        camera_vsync();
//  378 //    }
//  379 //  #if ( CAMERA_USE_HREF == 1 )//使用行中断
//  380 //    n = 18;//(18)
//  381 //    if(flag & (1 << n))               //PTA28触发中断
//  382 //    {
//  383 //        camera_href();
//  384 //    }
//  385 //  #endif
//  386 //}
//  387     
//  388 //__ramfunc void DMA0_IRQHandler()
//  389 //{
//  390 //    //PicMany++;
//  391 //    camera_dma();
//  392 //}
//  393 //   
//  394 
//  395 
//  396 /*********************************************************** END *************************************************************************/
// 
//   9 bytes in section .bss
//  36 bytes in section .data
//  20 bytes in section .rodata
// 632 bytes in section .text
// 622 bytes in section .textrw
// 
// 1 254 bytes of CODE  memory
//    20 bytes of CONST memory
//    45 bytes of DATA  memory
//
//Errors: none
//Warnings: 15
