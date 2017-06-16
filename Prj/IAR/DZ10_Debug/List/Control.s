///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      16/Jun/2017  19:29:35
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\@@@@@@@\Car\Drivers\Control\Control.c
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EWCBE6.tmp
//        (D:\@@@@@@@\Car\Drivers\Control\Control.c -D DEBUG -D
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
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\Control.s
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

        EXTERN AAngleArrySCI
        EXTERN CarSpeed
        EXTERN Car_Run
        EXTERN DMA_count_get
        EXTERN DMA_count_reset
        EXTERN MID_ERROR
        EXTERN MMA8451_ITG3200_function1
        EXTERN PID_ANGLE
        EXTERN PID_SPEED
        EXTERN PID_TURN
        EXTERN Ran_Erase_Speed_I
        EXTERN SetSpeed
        EXTERN SpeedControlIntegral
        EXTERN SpeedControlOutNew
        EXTERN SpeedControlOutOld
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
        EXTERN __aeabi_fsub
        EXTERN __aeabi_i2d
        EXTERN __aeabi_i2f
        EXTERN anglenum
        EXTERN angular
        EXTERN ftm_pwm_duty
        EXTERN result

        PUBLIC Angle_Calculate
        PUBLIC Angle_Control
        PUBLIC Angle_Speed
        PUBLIC Backward_Safe_Angle
        PUBLIC CAR_SEND_SPEED
        PUBLIC CAR_SEND_SPEED_ERR
        PUBLIC CAR_SEND_SPEED_I
        PUBLIC Car_Angle
        PUBLIC CoL
        PUBLIC CoR
        PUBLIC DirectionControlOutNew
        PUBLIC DirectionControlOutOld
        PUBLIC DirectionCount
        PUBLIC Direction_Control
        PUBLIC Direction_Control_Output
        PUBLIC Duoji_Out
        PUBLIC Forward_Safe_Angle
        PUBLIC Get_Adc_Battery
        PUBLIC Get_Angle
        PUBLIC Get_Left_Ad
        PUBLIC Get_Right_Ad
        PUBLIC Get_Speed
        PUBLIC LAST_CAR_ANG
        PUBLIC LAST_Speed_Ang
        PUBLIC Last_OutPut
        PUBLIC LeftMotorOut
        PUBLIC Mid_ERRRR
        PUBLIC Mid_Err
        PUBLIC Middle_Err_Filter
        PUBLIC MotoOut
        PUBLIC Moto_Out
        PUBLIC OLD_PWM_LEFT
        PUBLIC OLD_PWM_RIGHT
        PUBLIC RightMotorOut
        PUBLIC SOutPut
        PUBLIC SSet_Pwm
        PUBLIC Set_Moto
        PUBLIC Set_Pwm
        PUBLIC SpeedCount
        PUBLIC SpeedMid
        PUBLIC SpeedMini
        PUBLIC Speed_Control
        PUBLIC Speed_Control_Output
        PUBLIC Turn_Out
        PUBLIC Turn_Out_Filter
        PUBLIC Turn_Speed
        PUBLIC VIIII
        
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
        
// D:\@@@@@@@\Car\Drivers\Control\Control.c
//    1 #include "All_Init.h"
//    2 
//    3 
//    4 
//    5 //控制部分函数
//    6 //直立相关
//    7 void Get_Angle(void);
//    8 __ramfunc void Angle_Control();  
//    9 __ramfunc void Angle_Calculate();

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   10 int Mid_Err[5],Mid_ERRRR[5];
Mid_Err:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
Mid_ERRRR:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   11 float Turn_Speed=0;
Turn_Speed:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   12 int Turn_Out=0;
Turn_Out:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   13 float DirectionControlOutNew;
DirectionControlOutNew:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   14 float DirectionControlOutOld;
DirectionControlOutOld:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   15 float Car_Angle  =0;//净角度值
Car_Angle:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   16 float Angle_Speed=0;//净角速度值
Angle_Speed:
        DS8 4
//   17 
//   18 
//   19 
//   20 
//   21 
//   22 
//   23 //速度相关
//   24 __ramfunc void Get_Speed();   //5ms采集一次速度
//   25 __ramfunc void Speed_Control();
//   26 __ramfunc void Speed_Control_Output();

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   27 uint8 SpeedCount=0;    //速度节拍控制
SpeedCount:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   28 int CoL=0;
CoL:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   29 int CoR=0;
CoR:
        DS8 4
//   30 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   31 int SpeedMini=0;//低速方案
SpeedMini:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   32 int SpeedMid =0; //高速方案
SpeedMid:
        DS8 4
//   33 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   34 float CAR_SEND_SPEED_I=0.0;
CAR_SEND_SPEED_I:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   35 float CAR_SEND_SPEED_ERR     =0.0;
CAR_SEND_SPEED_ERR:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   36 float CAR_SEND_SPEED         =0.0;
CAR_SEND_SPEED:
        DS8 4
//   37 
//   38 
//   39 void Set_Pwm(int Left,int Right);
//   40 
//   41 //转向相关

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   42 uint8 DirectionCount=0;//转向节拍控制
DirectionCount:
        DS8 1
//   43 void RoadType_Distinguish();
//   44 //void Get_Y_Gyro();
//   45 __ramfunc void Direction_Control(); 
//   46 //void Get_Y_Gyro();
//   47 __ramfunc void Direction_Control_Output();
//   48 float  Turn_Out_Filter(float turn_out);    //转向控制输出滤波
//   49 float  Middle_Err_Filter(float middle_err);    //中心偏差滤波    
//   50 //综合控制
//   51 __ramfunc void Moto_Out();

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   52 float  LeftMotorOut,RightMotorOut;   //电机输出量
LeftMotorOut:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
RightMotorOut:
        DS8 4
//   53 
//   54 
//   55 //其他
//   56 void Get_Adc_Battery(void);
//   57 
//   58 
//   59 /////////////////////////////////参数声明结束///////////////////////////////////
//   60 
//   61 
//   62 /******读取电池电压值******/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function Get_Adc_Battery
          CFI NoCalls
        THUMB
//   63 void Get_Adc_Battery(void)
//   64 {
//   65 
//   66 
//   67 return ;
Get_Adc_Battery:
        BX       LR               ;; return
//   68 }
          CFI EndBlock cfiBlock0
//   69 
//   70 /////////////////////////////车体直立部分控制代码///////////////////////////////
//   71 /*****读取陀螺仪加速度计信息*****/
//   72 //原始值

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function Get_Angle
          CFI NoCalls
        THUMB
//   73 void Get_Angle(void)
//   74 {
//   75 
//   76 
//   77 
//   78 return ;
Get_Angle:
        BX       LR               ;; return
//   79 }
          CFI EndBlock cfiBlock1
//   80 
//   81 /*****处理陀螺仪加速度计******/
//   82 //融合后的值

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   83 int VIIII=0;
VIIII:
        DS8 4

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function Angle_Calculate
        THUMB
//   84 __ramfunc void Angle_Calculate(void)
//   85 {
Angle_Calculate:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   86     MMA8451_ITG3200_function1(AAngleArrySCI,angular);
        LDR.W    R0,??DataTable24
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable24_1
          CFI FunCall MMA8451_ITG3200_function1
        BL       MMA8451_ITG3200_function1
//   87     
//   88 //    Variable[0]=AAngleArrySCI[0];
//   89 //    Variable[1]=AAngleArrySCI[1];
//   90 //    Variable[2]=1000-AAngleArrySCI[2];
//   91     //Variable[3]=99;
//   92     //
//   93     ////ShiBoQi_View=Angle_Speed-450;
//   94     //
//   95     //
//   96     //VIIII=VIIII>20000?20000:VIIII;
//   97     //Write_ShiBoQi2_Save(VIIII,ShiBoQi_View,&VIIII);  
//   98     //
//   99     //VIIII++;  
//  100     //  
//  101     //  
//  102     //Variable[4]=Get_Z_Gyro();
//  103     
//  104 //    Variable[5]= Get_X_Acc();
//  105 //    Variable[6]= Get_Y_Acc();
//  106 
//  107 //    Send_Begin();
//  108 //    Send_Variable();
//  109     Car_Angle   =AAngleArrySCI[1];      //获取角度净误差
        LDR.W    R0,??DataTable24_1
        LDR      R0,[R0, #+4]
        LDR.W    R1,??DataTable24_2
        STR      R0,[R1, #+0]
//  110     Angle_Speed =AAngleArrySCI[0];     //获取角速度净误差
        LDR.W    R0,??DataTable24_1
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable24_3
        STR      R0,[R1, #+0]
//  111 return ;
        POP      {R0,PC}          ;; return
//  112 }
          CFI EndBlock cfiBlock2
//  113 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  114 int LAST_Speed_Ang=0;
LAST_Speed_Ang:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  115 int LAST_CAR_ANG=0;
LAST_CAR_ANG:
        DS8 4
//  116 
//  117 
//  118 /*********角度PID计算**********/
//  119 //直立角度控制                      

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function Angle_Control
        THUMB
//  120 __ramfunc void Angle_Control(void)
//  121 {
Angle_Control:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
//  122   ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//  123   float Car_A=0;
        MOVS     R4,#+0
//  124   Speed_Ang=(PID_SPEED.OUT)/10;//640平滑输出后是64，64转换成角度还需要/10=6.4(本次的)
        LDR.W    R0,??DataTable24_4
        LDR      R0,[R0, #+24]
        LDR.W    R1,??DataTable24_5  ;; 0x41200000
          CFI FunCall __aeabi_fdiv
        BL       __aeabi_fdiv
        LDR.W    R1,??DataTable24_6
        STR      R0,[R1, #+0]
//  125 //速度串联
//  126   //Speed_Ang=Speed_Ang>50?50:Speed_Ang<-50?-50:Speed_Ang;
//  127                             
//  128 float Anng=0;   
        MOVS     R5,#+0
//  129 
//  130 
//  131 //if(Debug_CarAngPrt&&(Car_Angle>anglenum+120||Car_Angle<anglenum-60))
//  132 //CAR_PROTECT=1;
//  133 
//  134 //Anng= (anglenum-Speed_Ang );
//  135 Anng= (anglenum);
        LDR.W    R0,??DataTable24_7
        LDR      R0,[R0, #+0]
          CFI FunCall __aeabi_i2f
        BL       __aeabi_i2f
        MOVS     R5,R0
//  136 Anng=Anng>anglenum+70? anglenum+70: Anng<anglenum-30?anglenum-30:Anng;
        LDR.W    R0,??DataTable24_7
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+70
          CFI FunCall __aeabi_i2f
        BL       __aeabi_i2f
        MOVS     R1,R5
          CFI FunCall __aeabi_cfcmple
        BL       __aeabi_cfcmple
        BCS.N    ??Angle_Control_0
        LDR.W    R0,??DataTable24_7
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+70
          CFI FunCall __aeabi_i2f
        BL       __aeabi_i2f
        MOVS     R5,R0
        B.N      ??Angle_Control_1
??Angle_Control_0:
        LDR.W    R0,??DataTable24_7
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+30
          CFI FunCall __aeabi_i2f
        BL       __aeabi_i2f
        MOVS     R1,R0
        MOVS     R0,R5
          CFI FunCall __aeabi_cfcmple
        BL       __aeabi_cfcmple
        BCS.N    ??Angle_Control_2
        LDR.W    R0,??DataTable24_7
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+30
          CFI FunCall __aeabi_i2f
        BL       __aeabi_i2f
        MOVS     R5,R0
        B.N      ??Angle_Control_1
//  137   
//  138 //             当前的角度值 - 预设的平衡值 +速度控制算出来的值  
//  139   Car_A=     Car_Angle-Anng;//         -anglenum                 +Speed_Ang; 
??Angle_Control_2:
??Angle_Control_1:
        LDR.W    R0,??DataTable24_2
        LDR      R0,[R0, #+0]
        MOVS     R1,R5
          CFI FunCall __aeabi_fsub
        BL       __aeabi_fsub
        MOVS     R4,R0
//  140 //           290       330         500
//  141 //Car_A的安全范围值-40 ~ 170
//  142 
//  143  //Car_A=Car_A<-50?-50:Car_A>170?170:Car_A;//角度限定在安全范围内
//  144   
//  145  PID_ANGLE.pout=PID_ANGLE.P*(Car_A);//Car_A;//
        LDR.W    R0,??DataTable24_8
        LDR      R0,[R0, #+0]
        MOVS     R1,R4
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable24_8
        STR      R0,[R1, #+4]
//  146   
//  147  PID_ANGLE.dout=PID_ANGLE.D*(Angle_Speed-angular);
        LDR.W    R0,??DataTable24
        LDR      R0,[R0, #+0]
          CFI FunCall __aeabi_i2f
        BL       __aeabi_i2f
        MOVS     R1,R0
        LDR.W    R0,??DataTable24_3
        LDR      R0,[R0, #+0]
          CFI FunCall __aeabi_fsub
        BL       __aeabi_fsub
        LDR.W    R1,??DataTable24_8
        LDR      R1,[R1, #+16]
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable24_8
        STR      R0,[R1, #+20]
//  148 //  if(ABS(Angle_Speed)>50&&ABS(Angle_Speed)<200)
//  149 //  {
//  150 //       PID_ANGLE.dout*=(1+(ABS(Angle_Speed)-50.0)/50.0);
//  151 //  }
//  152   PID_ANGLE.OUT= PID_ANGLE.pout+ PID_ANGLE.dout;
        LDR.W    R0,??DataTable24_8
        LDR      R1,[R0, #+4]
        LDR.W    R0,??DataTable24_8
        LDR      R0,[R0, #+20]
          CFI FunCall __aeabi_fadd
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable24_8
        STR      R0,[R1, #+24]
//  153 return ;
        POP      {R0,R4,R5,PC}    ;; return
//  154 }
          CFI EndBlock cfiBlock3
//  155 
//  156 ///////////////////////////////直立部分控制结束/////////////////////////////////
//  157 
//  158 /////////////////////////////////速度控制部分///////////////////////////////////
//  159 //定义车轮前进一米的编码器脉冲数
//  160 #define CAR_SPEED_TO_PoINT 51
//  161 /*******获取车体速度********/

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function Get_Speed
        THUMB
//  162 __ramfunc void Get_Speed(void)
//  163 {
Get_Speed:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  164 static int Get_Speed_V1=0;
//  165 static int Get_Speed_m=0;
//  166 
//  167 //CoL =  (gpio_get(PTB19)>0? -DMA_count_get(DMA_CH14):DMA_count_get(DMA_CH14));//读出脉冲个数;
//  168 CoR =DMA_count_get(DMA_CH4);//:-DMA_count_get(DMA_CH4));//读出脉冲个数;
        MOVS     R0,#+4
          CFI FunCall DMA_count_get
        BL       DMA_count_get
        LDR.W    R1,??DataTable24_9
        STR      R0,[R1, #+0]
//  169 
//  170 DMA_count_reset(DMA_CH4);       //清零
        MOVS     R0,#+4
          CFI FunCall DMA_count_reset
        BL       DMA_count_reset
//  171 //DMA_count_reset(DMA_CH14);      //清零
//  172 
//  173 CarSpeed=(CoR);//+CoL);//这个地方/2的话，精度会有问题
        LDR.W    R0,??DataTable24_9
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable24_10
        STR      R0,[R1, #+0]
//  174 
//  175 CoL=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable24_11
        STR      R0,[R1, #+0]
//  176 CoR=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable24_9
        STR      R0,[R1, #+0]
//  177 return ;
        POP      {R0,PC}          ;; return
//  178 }
          CFI EndBlock cfiBlock4
//  179 
//  180 /********速度控制计算*******/

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function Speed_Control
        THUMB
//  181  __ramfunc void Speed_Control(void)
//  182 {  
Speed_Control:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
//  183 static float PreError[20]={0},setspeed=0;
//  184 register  float  SpeedError=0,Speed_temp=0,SpeedFilterRatio=0.85;
        MOVS     R4,#+0
        MOVS     R5,#+0
        LDR.W    R6,??DataTable24_12  ;; 0x3f59999a
//  185 register  uint8 i;
//  186 
//  187 //现在车起步，0 的时候
//  188    Speed_temp=SetSpeed;//+2*(((Seagull_Mid- ShiZiFind) -25));
        LDR.W    R0,??DataTable24_13
        LDR      R0,[R0, #+0]
          CFI FunCall __aeabi_i2f
        BL       __aeabi_i2f
        MOVS     R5,R0
//  189    setspeed = Speed_temp*(1-SpeedFilterRatio)+setspeed*SpeedFilterRatio;
        MOVS     R0,#+1065353216
        MOVS     R1,R6
          CFI FunCall __aeabi_fsub
        BL       __aeabi_fsub
        MOVS     R1,R5
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
        MOV      R8,R0
        LDR.W    R0,??DataTable24_14
        LDR      R0,[R0, #+0]
        MOVS     R1,R6
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
        MOV      R1,R8
          CFI FunCall __aeabi_fadd
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable24_14
        STR      R0,[R1, #+0]
//  190    
//  191    SpeedError=CarSpeed-setspeed;//起步的时候  640
        LDR.W    R0,??DataTable24_10
        LDR      R0,[R0, #+0]
          CFI FunCall __aeabi_i2f
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable24_14
        LDR      R1,[R1, #+0]
          CFI FunCall __aeabi_fsub
        BL       __aeabi_fsub
        MOVS     R4,R0
//  192     
//  193    if(Ran_Erase_Speed_I)
        LDR.W    R0,??DataTable24_15
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Speed_Control_0
//  194    {
//  195          for(i=0;i<=19;i++)
        MOVS     R0,#+0
        MOVS     R7,R0
??Speed_Control_1:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+20
        BGE.N    ??Speed_Control_2
//  196          {
//  197            PreError[i]=0; 
        MOVS     R0,#+0
        LDR.W    R1,??DataTable24_16
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        STR      R0,[R1, R7, LSL #+2]
//  198          }
        ADDS     R7,R7,#+1
        B.N      ??Speed_Control_1
//  199       Ran_Erase_Speed_I=0;
??Speed_Control_2:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable24_15
        STR      R0,[R1, #+0]
//  200    }
//  201    
//  202    
//  203   //求出最近20个偏差的总和作为积分项
//  204    SpeedControlIntegral=0;
??Speed_Control_0:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable24_17
        STR      R0,[R1, #+0]
//  205    for(i=0;i<19;i++)
        MOVS     R0,#+0
        MOVS     R7,R0
??Speed_Control_3:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+19
        BGE.N    ??Speed_Control_4
//  206    {
//  207      PreError[i]=PreError[i+1]; 
        LDR.W    R0,??DataTable24_16
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        ADD      R0,R0,R7, LSL #+2
        LDR      R0,[R0, #+4]
        LDR.N    R1,??DataTable24_16
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        STR      R0,[R1, R7, LSL #+2]
//  208      SpeedControlIntegral+=PreError[i];
        LDR.N    R0,??DataTable24_17
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable24_16
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR      R1,[R1, R7, LSL #+2]
          CFI FunCall __aeabi_fadd
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable24_17
        STR      R0,[R1, #+0]
//  209    }
        ADDS     R7,R7,#+1
        B.N      ??Speed_Control_3
//  210     PreError[19]=SpeedError;
??Speed_Control_4:
        LDR.N    R0,??DataTable24_16
        STR      R4,[R0, #+76]
//  211     SpeedControlIntegral+=PreError[19];
        LDR.N    R0,??DataTable24_17
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable24_16
        LDR      R0,[R0, #+76]
          CFI FunCall __aeabi_fadd
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable24_17
        STR      R0,[R1, #+0]
//  212 
//  213   
//  214     //速度更新
//  215   SpeedControlOutOld=SpeedControlOutNew;
        LDR.N    R0,??DataTable24_18
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable24_19
        STR      R0,[R1, #+0]
//  216   //                                        1            (  640)        +         0          *              120         
//  217   SpeedControlOutNew=PID_SPEED.P*SpeedError+PID_SPEED.I*SpeedControlIntegral;   //PI控制	
        LDR.N    R0,??DataTable24_4
        LDR      R0,[R0, #+0]
        MOVS     R1,R4
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
        MOV      R8,R0
        LDR.N    R0,??DataTable24_4
        LDR      R1,[R0, #+8]
        LDR.N    R0,??DataTable24_17
        LDR      R0,[R0, #+0]
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
        MOV      R1,R8
          CFI FunCall __aeabi_fadd
        BL       __aeabi_fadd
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        LDR.N    R1,??DataTable24_18
        STR      R0,[R1, #+0]
//  218   //SpeedControlOutNew=(PID_SPEED.P*SpeedError+PID_SPEED.I*SpeedControlIntegral);   //PI控制
//  219 
//  220 return ;
        POP      {R4-R8,PC}       ;; return
//  221 }
          CFI EndBlock cfiBlock5

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`Speed_Control::PreError`:
        DS8 80

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`Speed_Control::setspeed`:
        DS8 4
//  222 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  223 float Last_OutPut=0;
Last_OutPut:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  224 float SOutPut=0;
SOutPut:
        DS8 4
//  225 /*******速度平滑输出*******/

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function Speed_Control_Output
        THUMB
//  226 __ramfunc void Speed_Control_Output(void)
//  227 {
Speed_Control_Output:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
//  228 register  float fValue; 
//  229   fValue = SpeedControlOutNew - SpeedControlOutOld; 
        LDR.N    R0,??DataTable24_18
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable24_19
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
          CFI FunCall __aeabi_i2f
        BL       __aeabi_i2f
        MOVS     R4,R0
//  230   PID_SPEED.OUT = fValue * (SpeedCount+1)/10+SpeedControlOutOld;  
        LDR.N    R0,??DataTable24_20
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
          CFI FunCall __aeabi_i2f
        BL       __aeabi_i2f
        MOVS     R1,R4
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
        LDR.N    R1,??DataTable24_5  ;; 0x41200000
          CFI FunCall __aeabi_fdiv
        BL       __aeabi_fdiv
        MOVS     R5,R0
        LDR.N    R0,??DataTable24_19
        LDR      R0,[R0, #+0]
          CFI FunCall __aeabi_i2f
        BL       __aeabi_i2f
        MOVS     R1,R5
          CFI FunCall __aeabi_fadd
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable24_4
        STR      R0,[R1, #+24]
//  231 return ;
        POP      {R0,R4,R5,PC}    ;; return
//  232 }
          CFI EndBlock cfiBlock6
//  233 
//  234 /////////////////////////////////速度控制结束///////////////////////////////////
//  235 
//  236 /////////////////////////////////转弯控制开始///////////////////////////////////
//  237 /*********获取左电机电流数据**********/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function Get_Left_Ad
          CFI NoCalls
        THUMB
//  238 void Get_Left_Ad(void)
//  239 {
//  240 
//  241 
//  242 return ;
Get_Left_Ad:
        BX       LR               ;; return
//  243 }
          CFI EndBlock cfiBlock7
//  244 
//  245 /*********获取右电机电流数据**********/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function Get_Right_Ad
          CFI NoCalls
        THUMB
//  246 void Get_Right_Ad(void)
//  247 {
//  248 
//  249 
//  250 return ;
Get_Right_Ad:
        BX       LR               ;; return
//  251 }
          CFI EndBlock cfiBlock8
//  252 
//  253 
//  254 
//  255 /************方向控制计算*************/

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function Direction_Control
        THUMB
//  256 __ramfunc void Direction_Control(void)
//  257 {
Direction_Control:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
//  258 // -20<= MID_ERROR <=20
//  259 MID_ERROR=-(int)(3*(2.608*(result/1000)*(result/1000)*(result/1000) + 0.1714*(result/1000)*(result/1000) + 0.006882*result + 15.72-15));//18.5高度
        LDR.N    R0,??DataTable24_21
        LDR      R0,[R0, #+0]
        MOV      R1,#+1000
        SDIV     R0,R0,R1
          CFI FunCall __aeabi_i2d
        BL       __aeabi_i2d
        LDR.N    R2,??DataTable24_22  ;; 0x1a9fbe77
        LDR.N    R3,??DataTable24_23  ;; 0x4004dd2f
          CFI FunCall __aeabi_dmul
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable24_21
        LDR      R0,[R0, #+0]
        MOV      R1,#+1000
        SDIV     R0,R0,R1
          CFI FunCall __aeabi_i2d
        BL       __aeabi_i2d
        MOVS     R2,R4
        MOVS     R3,R5
          CFI FunCall __aeabi_dmul
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable24_21
        LDR      R0,[R0, #+0]
        MOV      R1,#+1000
        SDIV     R0,R0,R1
          CFI FunCall __aeabi_i2d
        BL       __aeabi_i2d
        MOVS     R2,R4
        MOVS     R3,R5
          CFI FunCall __aeabi_dmul
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable24_21
        LDR      R0,[R0, #+0]
        MOV      R1,#+1000
        SDIV     R0,R0,R1
          CFI FunCall __aeabi_i2d
        BL       __aeabi_i2d
        LDR.N    R2,??DataTable24_24  ;; 0x69446738
        LDR.N    R3,??DataTable24_25  ;; 0x3fc5f06f
          CFI FunCall __aeabi_dmul
        BL       __aeabi_dmul
        MOVS     R6,R0
        MOVS     R7,R1
        LDR.N    R0,??DataTable24_21
        LDR      R0,[R0, #+0]
        MOV      R1,#+1000
        SDIV     R0,R0,R1
          CFI FunCall __aeabi_i2d
        BL       __aeabi_i2d
        MOVS     R2,R6
        MOVS     R3,R7
          CFI FunCall __aeabi_dmul
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
          CFI FunCall __aeabi_dadd
        BL       __aeabi_dadd
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable24_21
        LDR      R0,[R0, #+0]
          CFI FunCall __aeabi_i2d
        BL       __aeabi_i2d
        LDR.N    R2,??DataTable24_26  ;; 0xcee5abc1
        LDR.N    R3,??DataTable24_27  ;; 0x3f7c304c
          CFI FunCall __aeabi_dmul
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
          CFI FunCall __aeabi_dadd
        BL       __aeabi_dadd
        LDR.N    R2,??DataTable24_28  ;; 0xd70a3d71
        LDR.N    R3,??DataTable24_29  ;; 0x402f70a3
          CFI FunCall __aeabi_dadd
        BL       __aeabi_dadd
        MOVS     R2,#+0
        LDR.N    R3,??DataTable24_30  ;; 0xc02e0000
          CFI FunCall __aeabi_dadd
        BL       __aeabi_dadd
        MOVS     R2,#+0
        LDR.N    R3,??DataTable24_31  ;; 0x40080000
          CFI FunCall __aeabi_dmul
        BL       __aeabi_dmul
          CFI FunCall __aeabi_d2iz
        BL       __aeabi_d2iz
        RSBS     R0,R0,#+0
          CFI FunCall __aeabi_i2f
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable24_32
        STR      R0,[R1, #+0]
//  260 //=Mid_v;
//  261 
//  262 int Turn_Error=MID_ERROR;
        LDR.N    R0,??DataTable24_32
        LDR      R0,[R0, #+0]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        MOVS     R6,R0
//  263 register float Turn_Pv=0.0;
        MOVS     R4,#+0
//  264 register float Turn_Dv=0.0;
        MOVS     R5,#+0
//  265 
//  266 static float Last_TSpeed=0;
//  267 //Limit Turn_Error in -20 to 20
//  268 Turn_Error=Turn_Error<-30?-30:Turn_Error>30?30:Turn_Error;
        CMN      R6,#+30
        BGE.N    ??Direction_Control_0
        MVNS     R6,#+29
        B.N      ??Direction_Control_1
??Direction_Control_0:
        CMP      R6,#+31
        BLT.N    ??Direction_Control_2
        MOVS     R6,#+30
        B.N      ??Direction_Control_1
//  269 
//  270 Mid_Err[4]=Mid_Err[3];
??Direction_Control_2:
??Direction_Control_1:
        LDR.N    R0,??DataTable24_33
        LDR      R0,[R0, #+12]
        LDR.N    R1,??DataTable24_33
        STR      R0,[R1, #+16]
//  271 Mid_Err[3]=Mid_Err[2];
        LDR.N    R0,??DataTable24_33
        LDR      R0,[R0, #+8]
        LDR.N    R1,??DataTable24_33
        STR      R0,[R1, #+12]
//  272 Mid_Err[2]=Mid_Err[1];
        LDR.N    R0,??DataTable24_33
        LDR      R0,[R0, #+4]
        LDR.N    R1,??DataTable24_33
        STR      R0,[R1, #+8]
//  273 Mid_Err[1]=Mid_Err[0];
        LDR.N    R0,??DataTable24_33
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable24_33
        STR      R0,[R1, #+4]
//  274 Mid_Err[0]=Turn_Error;
        LDR.N    R0,??DataTable24_33
        STR      R6,[R0, #+0]
//  275 
//  276 Turn_Speed=Mid_Err[0]-Mid_Err[1];
        LDR.N    R0,??DataTable24_33
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable24_33
        LDR      R1,[R1, #+4]
        SUBS     R0,R0,R1
          CFI FunCall __aeabi_i2f
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable24_34
        STR      R0,[R1, #+0]
//  277 
//  278 //Turn_Speed=Get_Z_Gyro()*0.001;
//  279 
//  280 //
//  281 Turn_Pv=PID_TURN.P;//1+PID_TURN.P*0.1*  Fuzzy(Turn_Error,Turn_Speed);
        LDR.N    R0,??DataTable24_35
        LDR      R0,[R0, #+0]
        MOVS     R4,R0
//  282 
//  283 //Turn_Pv=Turn_Pv<0?0:Turn_Pv;
//  284 
//  285 Turn_Dv=PID_TURN.D;//1+PID_TURN.D*0.1*  Fuzzy(Turn_Speed,Turn_Speed-Last_TSpeed);
        LDR.N    R0,??DataTable24_35
        LDR      R0,[R0, #+16]
        MOVS     R5,R0
//  286 
//  287 //Turn_Dv=Turn_Dv<0?0:Turn_Dv;
//  288 
//  289 
//  290 //      转弯P           动态P         误差+ 补偿
//  291 PID_TURN.pout=(Turn_Pv )*(Turn_Error);
        MOVS     R0,R6
          CFI FunCall __aeabi_i2f
        BL       __aeabi_i2f
        MOVS     R1,R4
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
        LDR.N    R1,??DataTable24_35
        STR      R0,[R1, #+4]
//  292 PID_TURN.dout=(Turn_Dv )* Turn_Speed;   //+10*Fuzzy(Turn_Speed,Turn_Speed-Last_TSpeed)
        LDR.N    R0,??DataTable24_34
        LDR      R0,[R0, #+0]
        MOVS     R1,R5
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
        LDR.N    R1,??DataTable24_35
        STR      R0,[R1, #+20]
//  293 
//  294 Turn_Out=PID_TURN.pout+PID_TURN.dout;
        LDR.N    R0,??DataTable24_35
        LDR      R1,[R0, #+4]
        LDR.N    R0,??DataTable24_35
        LDR      R0,[R0, #+20]
          CFI FunCall __aeabi_fadd
        BL       __aeabi_fadd
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        LDR.N    R1,??DataTable24_36
        STR      R0,[R1, #+0]
//  295 Turn_Out=Turn_Out_Filter(Turn_Out);         //转动输出滤波 
        LDR.N    R0,??DataTable24_36
        LDR      R0,[R0, #+0]
          CFI FunCall __aeabi_i2f
        BL       __aeabi_i2f
          CFI FunCall Turn_Out_Filter
        BL       Turn_Out_Filter
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        LDR.N    R1,??DataTable24_36
        STR      R0,[R1, #+0]
//  296 
//  297 Last_TSpeed=Turn_Speed;
        LDR.N    R0,??DataTable24_34
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable24_37
        STR      R0,[R1, #+0]
//  298 
//  299 if(ABS(Turn_Error)<1)//如果转弯偏差小于1的话，说明此时车身已经回正，不需要各种转弯控制
        CMP      R6,#+1
        BLT.N    ??Direction_Control_3
        MOVS     R0,R6
        B.N      ??Direction_Control_4
??Direction_Control_3:
        RSBS     R0,R6,#+0
??Direction_Control_4:
        CMP      R0,#+1
        BGE.N    ??Direction_Control_5
//  300 {
//  301 DirectionControlOutNew=DirectionControlOutOld;
        LDR.N    R0,??DataTable24_38
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable24_39
        STR      R0,[R1, #+0]
        B.N      ??Direction_Control_6
//  302 }
//  303 else 
//  304 {
//  305   DirectionControlOutNew=Turn_Out;
??Direction_Control_5:
        LDR.N    R0,??DataTable24_36
        LDR      R0,[R0, #+0]
          CFI FunCall __aeabi_i2f
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable24_39
        STR      R0,[R1, #+0]
//  306 }
//  307 
//  308 return ;
??Direction_Control_6:
        POP      {R0,R4-R7,PC}    ;; return
//  309 }
          CFI EndBlock cfiBlock9

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`Direction_Control::Last_TSpeed`:
        DS8 4
//  310 /************方向平滑输出*************/

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function Direction_Control_Output
        THUMB
//  311 __ramfunc void Direction_Control_Output(void)
//  312 {
Direction_Control_Output:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  313   float fValue; 
//  314   fValue =DirectionControlOutNew -DirectionControlOutOld; 
        LDR.N    R0,??DataTable24_39
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable24_38
        LDR      R1,[R1, #+0]
          CFI FunCall __aeabi_fsub
        BL       __aeabi_fsub
        MOVS     R4,R0
//  315   PID_TURN.OUT=fValue * (DirectionCount+1)/5+DirectionControlOutOld;
        LDR.N    R0,??DataTable24_40
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
          CFI FunCall __aeabi_i2f
        BL       __aeabi_i2f
        MOVS     R1,R4
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
        LDR.N    R1,??DataTable24_41  ;; 0x40a00000
          CFI FunCall __aeabi_fdiv
        BL       __aeabi_fdiv
        LDR.N    R1,??DataTable24_38
        LDR      R1,[R1, #+0]
          CFI FunCall __aeabi_fadd
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable24_35
        STR      R0,[R1, #+24]
//  316 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock10
//  317 
//  318 /**************转向滤波***************/
//  319 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function Turn_Out_Filter
        THUMB
//  320 float  Turn_Out_Filter(float turn_out)    //转向控制输出滤波      
//  321 {
Turn_Out_Filter:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOVS     R6,R0
//  322  register float Turn_Out_Filtered; 
//  323   static float Pre1_Error[4]; 
//  324   Pre1_Error[3]=Pre1_Error[2];
        LDR.N    R0,??DataTable5
        LDR      R0,[R0, #+8]
        LDR.N    R1,??DataTable5
        STR      R0,[R1, #+12]
//  325   Pre1_Error[2]=Pre1_Error[1];
        LDR.N    R0,??DataTable5
        LDR      R0,[R0, #+4]
        LDR.N    R1,??DataTable5
        STR      R0,[R1, #+8]
//  326   Pre1_Error[1]=Pre1_Error[0];
        LDR.N    R0,??DataTable5
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable5
        STR      R0,[R1, #+4]
//  327   Pre1_Error[0]=turn_out;
        LDR.N    R0,??DataTable5
        STR      R6,[R0, #+0]
//  328   Turn_Out_Filtered=Pre1_Error[0]*0.4+Pre1_Error[1]*0.3+Pre1_Error[2]*0.2+Pre1_Error[3]*0.1;
        LDR.N    R0,??DataTable5
        LDR      R0,[R0, #+0]
          CFI FunCall __aeabi_f2d
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable5_1  ;; 0x9999999a
        LDR.N    R3,??DataTable5_2  ;; 0x3fd99999
          CFI FunCall __aeabi_dmul
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable5
        LDR      R0,[R0, #+4]
          CFI FunCall __aeabi_f2d
        BL       __aeabi_f2d
        MOVS     R2,#+858993459
        LDR.N    R3,??DataTable5_3  ;; 0x3fd33333
          CFI FunCall __aeabi_dmul
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
          CFI FunCall __aeabi_dadd
        BL       __aeabi_dadd
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable5
        LDR      R0,[R0, #+8]
          CFI FunCall __aeabi_f2d
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable5_1  ;; 0x9999999a
        LDR.N    R3,??DataTable5_4  ;; 0x3fc99999
          CFI FunCall __aeabi_dmul
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
          CFI FunCall __aeabi_dadd
        BL       __aeabi_dadd
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable5
        LDR      R0,[R0, #+12]
          CFI FunCall __aeabi_f2d
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable5_1  ;; 0x9999999a
        LDR.N    R3,??DataTable5_5  ;; 0x3fb99999
          CFI FunCall __aeabi_dmul
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
          CFI FunCall __aeabi_dadd
        BL       __aeabi_dadd
          CFI FunCall __aeabi_d2f
        BL       __aeabi_d2f
        MOVS     R7,R0
//  329   return Turn_Out_Filtered;
        MOVS     R0,R7
        POP      {R1,R4-R7,PC}    ;; return
//  330 }
          CFI EndBlock cfiBlock11

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`Turn_Out_Filter::Pre1_Error`:
        DS8 16
//  331 
//  332 /*中心偏差滤波*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function Middle_Err_Filter
        THUMB
//  333 float  Middle_Err_Filter(float middle_err)    //中心偏差滤波      
//  334 {
Middle_Err_Filter:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOVS     R6,R0
//  335  register float Middle_Err_Fltered; 
//  336   static float Pre3_Error[4]; 
//  337   Pre3_Error[3]=Pre3_Error[2];
        LDR.N    R0,??DataTable5_6
        LDR      R0,[R0, #+8]
        LDR.N    R1,??DataTable5_6
        STR      R0,[R1, #+12]
//  338   Pre3_Error[2]=Pre3_Error[1];
        LDR.N    R0,??DataTable5_6
        LDR      R0,[R0, #+4]
        LDR.N    R1,??DataTable5_6
        STR      R0,[R1, #+8]
//  339   Pre3_Error[1]=Pre3_Error[0];
        LDR.N    R0,??DataTable5_6
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable5_6
        STR      R0,[R1, #+4]
//  340   Pre3_Error[0]=middle_err;
        LDR.N    R0,??DataTable5_6
        STR      R6,[R0, #+0]
//  341   Middle_Err_Fltered=Pre3_Error[0]*0.4+Pre3_Error[1]*0.3+Pre3_Error[2]*0.2+Pre3_Error[3]*0.1;
        LDR.N    R0,??DataTable5_6
        LDR      R0,[R0, #+0]
          CFI FunCall __aeabi_f2d
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable5_1  ;; 0x9999999a
        LDR.N    R3,??DataTable5_2  ;; 0x3fd99999
          CFI FunCall __aeabi_dmul
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable5_6
        LDR      R0,[R0, #+4]
          CFI FunCall __aeabi_f2d
        BL       __aeabi_f2d
        MOVS     R2,#+858993459
        LDR.N    R3,??DataTable5_3  ;; 0x3fd33333
          CFI FunCall __aeabi_dmul
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
          CFI FunCall __aeabi_dadd
        BL       __aeabi_dadd
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable5_6
        LDR      R0,[R0, #+8]
          CFI FunCall __aeabi_f2d
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable5_1  ;; 0x9999999a
        LDR.N    R3,??DataTable5_4  ;; 0x3fc99999
          CFI FunCall __aeabi_dmul
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
          CFI FunCall __aeabi_dadd
        BL       __aeabi_dadd
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable5_6
        LDR      R0,[R0, #+12]
          CFI FunCall __aeabi_f2d
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable5_1  ;; 0x9999999a
        LDR.N    R3,??DataTable5_5  ;; 0x3fb99999
          CFI FunCall __aeabi_dmul
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
          CFI FunCall __aeabi_dadd
        BL       __aeabi_dadd
          CFI FunCall __aeabi_d2f
        BL       __aeabi_d2f
        MOVS     R7,R0
//  342   return Middle_Err_Fltered;
        MOVS     R0,R7
        POP      {R1,R4-R7,PC}    ;; return
//  343 }
          CFI EndBlock cfiBlock12

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`Middle_Err_Filter::Pre3_Error`:
        DS8 16
//  344 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//  345 volatile int Forward_Safe_Angle=300;
Forward_Safe_Angle:
        DC32 300

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//  346 volatile int Backward_Safe_Angle=30;
Backward_Safe_Angle:
        DC32 30
//  347 /////////////////////////////////转弯控制结束///////////////////////////////////
//  348 
//  349 //综合控制

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  350 int MotoOut=0;
MotoOut:
        DS8 4
//  351 
//  352 
//  353 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function Set_Moto
        THUMB
//  354 void Set_Moto(int A)
//  355 {
Set_Moto:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//  356   if(Car_Run==0)
        LDR.N    R0,??DataTable5_7
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Set_Moto_0
//  357   {
//  358       ftm_pwm_duty(FTM0, FTM_CH3,0);
        MOVS     R2,#+0
        MOVS     R1,#+3
        MOVS     R0,#+0
          CFI FunCall ftm_pwm_duty
        BL       ftm_pwm_duty
//  359       ftm_pwm_duty(FTM0, FTM_CH2,0);
        MOVS     R2,#+0
        MOVS     R1,#+2
        MOVS     R0,#+0
          CFI FunCall ftm_pwm_duty
        BL       ftm_pwm_duty
        B.N      ??Set_Moto_1
//  360   }
//  361   else if (A<0)
??Set_Moto_0:
        CMP      R4,#+0
        BPL.N    ??Set_Moto_2
//  362   {
//  363       ftm_pwm_duty(FTM0, FTM_CH3,-A);
        RSBS     R2,R4,#+0
        MOVS     R1,#+3
        MOVS     R0,#+0
          CFI FunCall ftm_pwm_duty
        BL       ftm_pwm_duty
//  364       ftm_pwm_duty(FTM0, FTM_CH2,0);
        MOVS     R2,#+0
        MOVS     R1,#+2
        MOVS     R0,#+0
          CFI FunCall ftm_pwm_duty
        BL       ftm_pwm_duty
        B.N      ??Set_Moto_1
//  365   }
//  366   else
//  367   {
//  368       ftm_pwm_duty(FTM0, FTM_CH3,0);
??Set_Moto_2:
        MOVS     R2,#+0
        MOVS     R1,#+3
        MOVS     R0,#+0
          CFI FunCall ftm_pwm_duty
        BL       ftm_pwm_duty
//  369       ftm_pwm_duty(FTM0, FTM_CH2,A);
        MOVS     R2,R4
        MOVS     R1,#+2
        MOVS     R0,#+0
          CFI FunCall ftm_pwm_duty
        BL       ftm_pwm_duty
//  370   } 
//  371   
//  372 }
??Set_Moto_1:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock13
//  373 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock14 Using cfiCommon0
          CFI Function Duoji_Out
        THUMB
//  374 void Duoji_Out(int A)
//  375 {
Duoji_Out:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//  376   //FTM_PWM_ChangeDuty(HW_FTM1, HW_FTM_CH1, (4200+resultturn));    //    A车4200   resultturn -650  650   B车3500   +800  -600
//  377 
//  378   A=A>600?600:A<-600?-600:A;
        MOVW     R0,#+601
        CMP      R4,R0
        BLT.N    ??Duoji_Out_0
        MOV      R4,#+600
        B.N      ??Duoji_Out_1
??Duoji_Out_0:
        CMN      R4,#+600
        BGE.N    ??Duoji_Out_2
        LDR.N    R4,??DataTable5_8  ;; 0xfffffda8
        B.N      ??Duoji_Out_1
//  379   
//  380   ftm_pwm_duty(FTM1, FTM_CH1,2500+A);
??Duoji_Out_2:
??Duoji_Out_1:
        ADDW     R2,R4,#+2500
        MOVS     R1,#+1
        MOVS     R0,#+1
          CFI FunCall ftm_pwm_duty
        BL       ftm_pwm_duty
//  381 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock14
//  382 
//  383 
//  384 /*************电机输出****************/

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
          CFI Block cfiBlock15 Using cfiCommon0
          CFI Function Moto_Out
        THUMB
//  385 __ramfunc void Moto_Out(void)
//  386 {
Moto_Out:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  387   register float sum=0;
        MOVS     R4,#+0
//  388     
//  389   //速度控制输出限幅
//  390 //  if(PID_SPEED.OUT>PID_ANGLE.P*Forward_Safe_Angle)//如果车子前倾，则车模的速度控制输出为正，反之为负
//  391 //  PID_SPEED.OUT=PID_ANGLE.P*Forward_Safe_Angle;                       //已经倾斜到到安全角度了
//  392 //  if(PID_SPEED.OUT<-PID_ANGLE.P*Backward_Safe_Angle)
//  393 //  PID_SPEED.OUT=-PID_ANGLE.P*Backward_Safe_Angle;
//  394   
//  395 //  if(PID_TURN.P==0)
//  396 //  PID_TURN.OUT=0;
//  397 //  if(PID_ANGLE.P==0)
//  398 //  PID_ANGLE.OUT=0;
//  399 //    
//  400   PID_SPEED.OUT=PID_SPEED.OUT>600?600:PID_SPEED.OUT<-600?-600:PID_SPEED.OUT;
        LDR.N    R0,??DataTable24_4
        LDR      R0,[R0, #+24]
        LDR.N    R1,??DataTable24_42  ;; 0x44160001
          CFI FunCall __aeabi_cfrcmple
        BL       __aeabi_cfrcmple
        BHI.N    ??Moto_Out_0
        LDR.N    R0,??DataTable24_43  ;; 0x44160000
        B.N      ??Moto_Out_1
??Moto_Out_0:
        LDR.N    R0,??DataTable24_4
        LDR      R0,[R0, #+24]
        LDR.N    R1,??DataTable24_44  ;; 0xc4160000
          CFI FunCall __aeabi_cfcmple
        BL       __aeabi_cfcmple
        BCS.N    ??Moto_Out_2
        LDR.N    R0,??DataTable24_44  ;; 0xc4160000
        B.N      ??Moto_Out_1
??Moto_Out_2:
        LDR.N    R0,??DataTable24_4
        LDR      R0,[R0, #+24]
??Moto_Out_1:
        LDR.N    R1,??DataTable24_4
        STR      R0,[R1, #+24]
//  401     
//  402 //  sum=PID_SPEED.OUT;//PID_ANGLE.OUT+
//  403 //  LeftMotorOut=sum+PID_TURN.OUT;   //计算输出值
//  404 //  RightMotorOut=sum-PID_TURN.OUT;  
//  405   
//  406   MotoOut=PID_SPEED.OUT;
        LDR.N    R0,??DataTable24_4
        LDR      R0,[R0, #+24]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        LDR.N    R1,??DataTable24_45
        STR      R0,[R1, #+0]
//  407   
//  408   Set_Moto((int)MotoOut);
        LDR.N    R0,??DataTable24_45
        LDR      R0,[R0, #+0]
          CFI FunCall Set_Moto
        BL       Set_Moto
//  409   Duoji_Out((int)PID_TURN.OUT);
        LDR.N    R0,??DataTable24_35
        LDR      R0,[R0, #+24]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
          CFI FunCall Duoji_Out
        BL       Duoji_Out
//  410   
//  411   //Set_Pwm(LeftMotorOut,RightMotorOut);
//  412 return ;
        POP      {R4,PC}          ;; return
//  413 }
          CFI EndBlock cfiBlock15

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable24:
        DC32     angular

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable24_1:
        DC32     AAngleArrySCI

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable24_2:
        DC32     Car_Angle

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable24_3:
        DC32     Angle_Speed

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable24_4:
        DC32     PID_SPEED

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable24_5:
        DC32     0x41200000

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable24_6:
        DC32     Speed_Ang

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable24_7:
        DC32     anglenum

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable24_8:
        DC32     PID_ANGLE

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable24_9:
        DC32     CoR

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable24_10:
        DC32     CarSpeed

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable24_11:
        DC32     CoL

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable24_12:
        DC32     0x3f59999a

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable24_13:
        DC32     SetSpeed

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable24_14:
        DC32     `Speed_Control::setspeed`

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable24_15:
        DC32     Ran_Erase_Speed_I

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable24_16:
        DC32     `Speed_Control::PreError`

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable24_17:
        DC32     SpeedControlIntegral

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable24_18:
        DC32     SpeedControlOutNew

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable24_19:
        DC32     SpeedControlOutOld

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable24_20:
        DC32     SpeedCount

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable24_21:
        DC32     result

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable24_22:
        DC32     0x1a9fbe77

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable24_23:
        DC32     0x4004dd2f

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable24_24:
        DC32     0x69446738

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable24_25:
        DC32     0x3fc5f06f

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable24_26:
        DC32     0xcee5abc1

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable24_27:
        DC32     0x3f7c304c

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable24_28:
        DC32     0xd70a3d71

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable24_29:
        DC32     0x402f70a3

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable24_30:
        DC32     0xc02e0000

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable24_31:
        DC32     0x40080000

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable24_32:
        DC32     MID_ERROR

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable24_33:
        DC32     Mid_Err

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable24_34:
        DC32     Turn_Speed

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable24_35:
        DC32     PID_TURN

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable24_36:
        DC32     Turn_Out

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable24_37:
        DC32     `Direction_Control::Last_TSpeed`

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable24_38:
        DC32     DirectionControlOutOld

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable24_39:
        DC32     DirectionControlOutNew

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable24_40:
        DC32     DirectionCount

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable24_41:
        DC32     0x40a00000

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable24_42:
        DC32     0x44160001

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable24_43:
        DC32     0x44160000

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable24_44:
        DC32     0xc4160000

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable24_45:
        DC32     MotoOut
//  414 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  415 int OLD_PWM_LEFT=0,OLD_PWM_RIGHT=0;
OLD_PWM_LEFT:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
OLD_PWM_RIGHT:
        DS8 4
//  416 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock16 Using cfiCommon0
          CFI Function Set_Pwm
        THUMB
//  417 void Set_Pwm(int Left,int Right)
//  418 {
Set_Pwm:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
//  419   Left=Left>=990?990:Left<=-990?-990:Left;
        MOVW     R0,#+990
        CMP      R4,R0
        BLT.N    ??Set_Pwm_0
        MOVW     R4,#+990
        B.N      ??Set_Pwm_1
??Set_Pwm_0:
        MVNS     R0,#+988
        CMP      R4,R0
        BGE.N    ??Set_Pwm_2
        LDR.N    R4,??DataTable5_9  ;; 0xfffffc22
        B.N      ??Set_Pwm_1
//  420   Right=Right>=990?990:Right<=-990?-990:Right;
??Set_Pwm_2:
??Set_Pwm_1:
        MOVW     R0,#+990
        CMP      R5,R0
        BLT.N    ??Set_Pwm_3
        MOVW     R5,#+990
        B.N      ??Set_Pwm_4
??Set_Pwm_3:
        MVNS     R0,#+988
        CMP      R5,R0
        BGE.N    ??Set_Pwm_5
        LDR.N    R5,??DataTable5_9  ;; 0xfffffc22
        B.N      ??Set_Pwm_4
//  421   
//  422 if(Car_Run==0)
??Set_Pwm_5:
??Set_Pwm_4:
        LDR.N    R0,??DataTable5_7
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Set_Pwm_6
//  423 {
//  424     ftm_pwm_duty(    FTM0, FTM_CH4, 0 );
        MOVS     R2,#+0
        MOVS     R1,#+4
        MOVS     R0,#+0
          CFI FunCall ftm_pwm_duty
        BL       ftm_pwm_duty
//  425     ftm_pwm_duty(    FTM0, FTM_CH5, 0 );
        MOVS     R2,#+0
        MOVS     R1,#+5
        MOVS     R0,#+0
          CFI FunCall ftm_pwm_duty
        BL       ftm_pwm_duty
//  426     ftm_pwm_duty(    FTM0, FTM_CH6, 0 );
        MOVS     R2,#+0
        MOVS     R1,#+6
        MOVS     R0,#+0
          CFI FunCall ftm_pwm_duty
        BL       ftm_pwm_duty
//  427     ftm_pwm_duty(    FTM0, FTM_CH7, 0 );
        MOVS     R2,#+0
        MOVS     R1,#+7
        MOVS     R0,#+0
          CFI FunCall ftm_pwm_duty
        BL       ftm_pwm_duty
//  428 return ;
        B.N      ??Set_Pwm_7
//  429 }
//  430 
//  431 if(OLD_PWM_LEFT!=Left)
??Set_Pwm_6:
        LDR.N    R0,??DataTable5_10
        LDR      R0,[R0, #+0]
        CMP      R0,R4
        BEQ.N    ??Set_Pwm_8
//  432 {
//  433   if (Left<0)
        CMP      R4,#+0
        BPL.N    ??Set_Pwm_9
//  434   {
//  435   ftm_pwm_duty(    FTM0, FTM_CH4, 0 );
        MOVS     R2,#+0
        MOVS     R1,#+4
        MOVS     R0,#+0
          CFI FunCall ftm_pwm_duty
        BL       ftm_pwm_duty
//  436   ftm_pwm_duty(    FTM0, FTM_CH5, 0 );
        MOVS     R2,#+0
        MOVS     R1,#+5
        MOVS     R0,#+0
          CFI FunCall ftm_pwm_duty
        BL       ftm_pwm_duty
//  437   ftm_pwm_duty(    FTM0, FTM_CH4, -Left+30 );
        RSBS     R2,R4,#+30
        MOVS     R1,#+4
        MOVS     R0,#+0
          CFI FunCall ftm_pwm_duty
        BL       ftm_pwm_duty
//  438   ftm_pwm_duty(    FTM0, FTM_CH5, 0 );
        MOVS     R2,#+0
        MOVS     R1,#+5
        MOVS     R0,#+0
          CFI FunCall ftm_pwm_duty
        BL       ftm_pwm_duty
        B.N      ??Set_Pwm_10
//  439   }
//  440   else 
//  441   {
//  442   ftm_pwm_duty(    FTM0, FTM_CH5, 0 );
??Set_Pwm_9:
        MOVS     R2,#+0
        MOVS     R1,#+5
        MOVS     R0,#+0
          CFI FunCall ftm_pwm_duty
        BL       ftm_pwm_duty
//  443   ftm_pwm_duty(    FTM0, FTM_CH4, 0 );
        MOVS     R2,#+0
        MOVS     R1,#+4
        MOVS     R0,#+0
          CFI FunCall ftm_pwm_duty
        BL       ftm_pwm_duty
//  444   ftm_pwm_duty(    FTM0, FTM_CH5, Left+30 );
        ADDS     R2,R4,#+30
        MOVS     R1,#+5
        MOVS     R0,#+0
          CFI FunCall ftm_pwm_duty
        BL       ftm_pwm_duty
//  445   ftm_pwm_duty(    FTM0, FTM_CH4, 0 );
        MOVS     R2,#+0
        MOVS     R1,#+4
        MOVS     R0,#+0
          CFI FunCall ftm_pwm_duty
        BL       ftm_pwm_duty
//  446   }
//  447   
//  448   OLD_PWM_LEFT=Left;
??Set_Pwm_10:
        LDR.N    R0,??DataTable5_10
        STR      R4,[R0, #+0]
//  449 }
//  450 
//  451 if(OLD_PWM_RIGHT!=Right)
??Set_Pwm_8:
        LDR.N    R0,??DataTable5_11
        LDR      R0,[R0, #+0]
        CMP      R0,R5
        BEQ.N    ??Set_Pwm_11
//  452 {
//  453   if(Right>=0)
        CMP      R5,#+0
        BMI.N    ??Set_Pwm_12
//  454   {
//  455     ftm_pwm_duty(    FTM0, FTM_CH6, 0 );
        MOVS     R2,#+0
        MOVS     R1,#+6
        MOVS     R0,#+0
          CFI FunCall ftm_pwm_duty
        BL       ftm_pwm_duty
//  456     ftm_pwm_duty(    FTM0, FTM_CH7, 0 );
        MOVS     R2,#+0
        MOVS     R1,#+7
        MOVS     R0,#+0
          CFI FunCall ftm_pwm_duty
        BL       ftm_pwm_duty
//  457     ftm_pwm_duty(    FTM0, FTM_CH6, Right+30 );
        ADDS     R2,R5,#+30
        MOVS     R1,#+6
        MOVS     R0,#+0
          CFI FunCall ftm_pwm_duty
        BL       ftm_pwm_duty
//  458     ftm_pwm_duty(    FTM0, FTM_CH7, 0 );
        MOVS     R2,#+0
        MOVS     R1,#+7
        MOVS     R0,#+0
          CFI FunCall ftm_pwm_duty
        BL       ftm_pwm_duty
        B.N      ??Set_Pwm_13
//  459   }
//  460   else 
//  461   {
//  462     ftm_pwm_duty(    FTM0, FTM_CH7, 0 );
??Set_Pwm_12:
        MOVS     R2,#+0
        MOVS     R1,#+7
        MOVS     R0,#+0
          CFI FunCall ftm_pwm_duty
        BL       ftm_pwm_duty
//  463     ftm_pwm_duty(    FTM0, FTM_CH6, 0 );
        MOVS     R2,#+0
        MOVS     R1,#+6
        MOVS     R0,#+0
          CFI FunCall ftm_pwm_duty
        BL       ftm_pwm_duty
//  464     ftm_pwm_duty(    FTM0, FTM_CH7, -Right+30 );
        RSBS     R2,R5,#+30
        MOVS     R1,#+7
        MOVS     R0,#+0
          CFI FunCall ftm_pwm_duty
        BL       ftm_pwm_duty
//  465     ftm_pwm_duty(    FTM0, FTM_CH6, 0 );
        MOVS     R2,#+0
        MOVS     R1,#+6
        MOVS     R0,#+0
          CFI FunCall ftm_pwm_duty
        BL       ftm_pwm_duty
//  466   }
//  467   OLD_PWM_RIGHT=Right;
??Set_Pwm_13:
        LDR.N    R0,??DataTable5_11
        STR      R5,[R0, #+0]
//  468 }
//  469 
//  470 return ;
??Set_Pwm_11:
??Set_Pwm_7:
        POP      {R0,R4,R5,PC}    ;; return
//  471 }
          CFI EndBlock cfiBlock16

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     `Turn_Out_Filter::Pre1_Error`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DC32     0x9999999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_2:
        DC32     0x3fd99999

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_3:
        DC32     0x3fd33333

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_4:
        DC32     0x3fc99999

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_5:
        DC32     0x3fb99999

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_6:
        DC32     `Middle_Err_Filter::Pre3_Error`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_7:
        DC32     Car_Run

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_8:
        DC32     0xfffffda8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_9:
        DC32     0xfffffc22

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_10:
        DC32     OLD_PWM_LEFT

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_11:
        DC32     OLD_PWM_RIGHT
//  472 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock17 Using cfiCommon0
          CFI Function SSet_Pwm
        THUMB
//  473 void SSet_Pwm(int Left,int Right)
//  474 {
SSet_Pwm:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
//  475  if(Right>=0)
        CMP      R5,#+0
        BMI.N    ??SSet_Pwm_0
//  476   {
//  477     ftm_pwm_duty(    FTM0, FTM_CH6, 0 );
        MOVS     R2,#+0
        MOVS     R1,#+6
        MOVS     R0,#+0
          CFI FunCall ftm_pwm_duty
        BL       ftm_pwm_duty
//  478     ftm_pwm_duty(    FTM0, FTM_CH7, 0 );
        MOVS     R2,#+0
        MOVS     R1,#+7
        MOVS     R0,#+0
          CFI FunCall ftm_pwm_duty
        BL       ftm_pwm_duty
//  479     ftm_pwm_duty(    FTM0, FTM_CH6, Right+30 );
        ADDS     R2,R5,#+30
        MOVS     R1,#+6
        MOVS     R0,#+0
          CFI FunCall ftm_pwm_duty
        BL       ftm_pwm_duty
//  480     ftm_pwm_duty(    FTM0, FTM_CH7, 0 );
        MOVS     R2,#+0
        MOVS     R1,#+7
        MOVS     R0,#+0
          CFI FunCall ftm_pwm_duty
        BL       ftm_pwm_duty
        B.N      ??SSet_Pwm_1
//  481   }
//  482   else 
//  483   {
//  484     ftm_pwm_duty(    FTM0, FTM_CH7, 0 );
??SSet_Pwm_0:
        MOVS     R2,#+0
        MOVS     R1,#+7
        MOVS     R0,#+0
          CFI FunCall ftm_pwm_duty
        BL       ftm_pwm_duty
//  485     ftm_pwm_duty(    FTM0, FTM_CH6, 0 );
        MOVS     R2,#+0
        MOVS     R1,#+6
        MOVS     R0,#+0
          CFI FunCall ftm_pwm_duty
        BL       ftm_pwm_duty
//  486     ftm_pwm_duty(    FTM0, FTM_CH7, -Right+30 );
        RSBS     R2,R5,#+30
        MOVS     R1,#+7
        MOVS     R0,#+0
          CFI FunCall ftm_pwm_duty
        BL       ftm_pwm_duty
//  487     ftm_pwm_duty(    FTM0, FTM_CH6, 0 );
        MOVS     R2,#+0
        MOVS     R1,#+6
        MOVS     R0,#+0
          CFI FunCall ftm_pwm_duty
        BL       ftm_pwm_duty
//  488   }
//  489 
//  490   if (Left<0)
??SSet_Pwm_1:
        CMP      R4,#+0
        BPL.N    ??SSet_Pwm_2
//  491   {
//  492   ftm_pwm_duty(    FTM0, FTM_CH4, 0 );
        MOVS     R2,#+0
        MOVS     R1,#+4
        MOVS     R0,#+0
          CFI FunCall ftm_pwm_duty
        BL       ftm_pwm_duty
//  493   ftm_pwm_duty(    FTM0, FTM_CH5, 0 );
        MOVS     R2,#+0
        MOVS     R1,#+5
        MOVS     R0,#+0
          CFI FunCall ftm_pwm_duty
        BL       ftm_pwm_duty
//  494   ftm_pwm_duty(    FTM0, FTM_CH4, -Left+50 );
        RSBS     R2,R4,#+50
        MOVS     R1,#+4
        MOVS     R0,#+0
          CFI FunCall ftm_pwm_duty
        BL       ftm_pwm_duty
//  495   ftm_pwm_duty(    FTM0, FTM_CH5, 0 );
        MOVS     R2,#+0
        MOVS     R1,#+5
        MOVS     R0,#+0
          CFI FunCall ftm_pwm_duty
        BL       ftm_pwm_duty
        B.N      ??SSet_Pwm_3
//  496   }
//  497   else 
//  498   {
//  499   ftm_pwm_duty(    FTM0, FTM_CH5, 0 );
??SSet_Pwm_2:
        MOVS     R2,#+0
        MOVS     R1,#+5
        MOVS     R0,#+0
          CFI FunCall ftm_pwm_duty
        BL       ftm_pwm_duty
//  500   ftm_pwm_duty(    FTM0, FTM_CH4, 0 );
        MOVS     R2,#+0
        MOVS     R1,#+4
        MOVS     R0,#+0
          CFI FunCall ftm_pwm_duty
        BL       ftm_pwm_duty
//  501   ftm_pwm_duty(    FTM0, FTM_CH5, Left+50 );
        ADDS     R2,R4,#+50
        MOVS     R1,#+5
        MOVS     R0,#+0
          CFI FunCall ftm_pwm_duty
        BL       ftm_pwm_duty
//  502   ftm_pwm_duty(    FTM0, FTM_CH4, 0 );
        MOVS     R2,#+0
        MOVS     R1,#+4
        MOVS     R0,#+0
          CFI FunCall ftm_pwm_duty
        BL       ftm_pwm_duty
//  503   }
//  504 
//  505 }
??SSet_Pwm_3:
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock17

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  506 
//  507 
//  508 
//  509 
//  510 
//  511 
//  512 
// 
//   254 bytes in section .bss
//     8 bytes in section .data
//   970 bytes in section .text
// 1 366 bytes in section .textrw
// 
// 2 336 bytes of CODE memory
//   262 bytes of DATA memory
//
//Errors: none
//Warnings: 19
