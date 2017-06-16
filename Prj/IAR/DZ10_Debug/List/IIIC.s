///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      16/Jun/2017  18:57:08
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\@@@@@@@\Car\Drivers\IIC_Angle\IIIC.c
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EW1198.tmp
//        (D:\@@@@@@@\Car\Drivers\IIC_Angle\IIIC.c -D DEBUG -D
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
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\IIIC.s
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

        EXTERN ITG3200_writebyte
        EXTERN gpio_init
        EXTERN systick_delay_ms

        PUBLIC Get_X_Acc
        PUBLIC Get_X_Gyro
        PUBLIC Get_Y_Acc
        PUBLIC Get_Y_Gyro
        PUBLIC Get_Z_Acc
        PUBLIC Get_Z_Gyro
        PUBLIC I2C_Ack
        PUBLIC I2C_Delay
        PUBLIC I2C_Init
        PUBLIC I2C_NoAck
        PUBLIC I2C_ReadByte
        PUBLIC I2C_ReadGryo
        PUBLIC I2C_ReadWord
        PUBLIC I2C_ReceiveByte
        PUBLIC I2C_SendByte
        PUBLIC I2C_Start
        PUBLIC I2C_Stop
        PUBLIC I2C_WriteReg
        PUBLIC MMA8451_Init
        PUBLIC MPU3050_Init
        PUBLIC read_buff
        
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
        
// D:\@@@@@@@\Car\Drivers\IIC_Angle\IIIC.c
//    1 #include "IIIC.H"
//    2 #include "All_Init.h"

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    3 int read_buff[6];
read_buff:
        DS8 24
//    4 
//    5 void I2C_Start(void);
//    6 void I2C_Stop(void);
//    7 void I2C_Ack(void);
//    8 void I2C_NoAck(void);
//    9 void I2C_SendByte(uint8);
//   10 uint8 I2C_ReceiveByte(void);
//   11 void I2C_Delay(uint16);
//   12 
//   13 /*
//   14  * I2C_Init
//   15  * 初始化I2C所需引脚
//   16  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function I2C_Init
        THUMB
//   17 void I2C_Init(void)
//   18 { 
I2C_Init:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   19  gpio_init(PTB22,GPO,1);                     //初始化SCL管脚
        MOVS     R2,#+1
        MOVS     R1,#+1
        MOVS     R0,#+54
          CFI FunCall gpio_init
        BL       gpio_init
//   20  gpio_init(PTB23,GPO,1);                     //初始化SDA管脚
        MOVS     R2,#+1
        MOVS     R1,#+1
        MOVS     R0,#+55
          CFI FunCall gpio_init
        BL       gpio_init
//   21  MPU3050_Init();
          CFI FunCall MPU3050_Init
        BL       MPU3050_Init
//   22  MMA8451_Init();
          CFI FunCall MMA8451_Init
        BL       MMA8451_Init
//   23 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock0
//   24 /*
//   25  * I2C_WriteReg
//   26  * 写I2C设备寄存器
//   27  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function I2C_WriteReg
        THUMB
//   28 void I2C_WriteReg(uint8 dev_addr,uint8 reg_addr , uint8 data)
//   29 {		
I2C_WriteReg:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//   30   I2C_Start();
          CFI FunCall I2C_Start
        BL       I2C_Start
//   31   I2C_SendByte(dev_addr<<1);         
        LSLS     R0,R4,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall I2C_SendByte
        BL       I2C_SendByte
//   32   I2C_SendByte(reg_addr );   
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall I2C_SendByte
        BL       I2C_SendByte
//   33   I2C_SendByte(data);   
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall I2C_SendByte
        BL       I2C_SendByte
//   34   I2C_Stop(); 
          CFI FunCall I2C_Stop
        BL       I2C_Stop
//   35 }
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock1
//   36 //读寄存器

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function I2C_ReadByte
        THUMB
//   37 uint8 I2C_ReadByte(uint8 dev_addr,uint8 reg_addr)
//   38 {
I2C_ReadByte:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
//   39   uint8 data;
//   40   I2C_Start();
          CFI FunCall I2C_Start
        BL       I2C_Start
//   41   I2C_SendByte( dev_addr<<1); 
        LSLS     R0,R4,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall I2C_SendByte
        BL       I2C_SendByte
//   42   I2C_SendByte( reg_addr ); 
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall I2C_SendByte
        BL       I2C_SendByte
//   43   I2C_Start();	
          CFI FunCall I2C_Start
        BL       I2C_Start
//   44   I2C_SendByte((dev_addr<<1)+1); 
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSLS     R0,R4,#+1
        ADDS     R0,R0,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall I2C_SendByte
        BL       I2C_SendByte
//   45   data= I2C_ReceiveByte();
          CFI FunCall I2C_ReceiveByte
        BL       I2C_ReceiveByte
        MOVS     R6,R0
//   46   I2C_NoAck();
          CFI FunCall I2C_NoAck
        BL       I2C_NoAck
//   47   I2C_Stop();
          CFI FunCall I2C_Stop
        BL       I2C_Stop
//   48   return data;
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return
//   49 }
          CFI EndBlock cfiBlock2
//   50 
//   51 //读寄存器

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function I2C_ReadWord
        THUMB
//   52 int16 I2C_ReadWord(uint8 dev_addr,uint8 reg_addr)
//   53 {
I2C_ReadWord:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOVS     R4,R0
        MOVS     R5,R1
//   54   char h,l;
//   55   I2C_Start();
          CFI FunCall I2C_Start
        BL       I2C_Start
//   56   I2C_SendByte( dev_addr<<1); 
        LSLS     R0,R4,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall I2C_SendByte
        BL       I2C_SendByte
//   57   I2C_SendByte( reg_addr); 
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall I2C_SendByte
        BL       I2C_SendByte
//   58   I2C_Start();	
          CFI FunCall I2C_Start
        BL       I2C_Start
//   59   I2C_SendByte((dev_addr<<1)+1); 
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSLS     R0,R4,#+1
        ADDS     R0,R0,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall I2C_SendByte
        BL       I2C_SendByte
//   60   h= I2C_ReceiveByte();
          CFI FunCall I2C_ReceiveByte
        BL       I2C_ReceiveByte
        MOVS     R6,R0
//   61   I2C_Ack();
          CFI FunCall I2C_Ack
        BL       I2C_Ack
//   62   l= I2C_ReceiveByte();
          CFI FunCall I2C_ReceiveByte
        BL       I2C_ReceiveByte
        MOVS     R7,R0
//   63   I2C_NoAck();
          CFI FunCall I2C_NoAck
        BL       I2C_NoAck
//   64   I2C_Stop();
          CFI FunCall I2C_Stop
        BL       I2C_Stop
//   65   return (h<<8)+l;
        SXTB     R6,R6            ;; SignExt  R6,R6,#+24,#+24
        LSLS     R6,R6,#+8
        SXTAB    R0,R6,R7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        POP      {R1,R4-R7,PC}    ;; return
//   66 }
          CFI EndBlock cfiBlock3
//   67 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function I2C_ReadGryo
        THUMB
//   68 void I2C_ReadGryo(uint8 dev_addr,uint8 reg_addr,int16 *x,int16 *y)
//   69 {
I2C_ReadGryo:
        PUSH     {R3-R9,LR}
          CFI R14 Frame(CFA, -4)
          CFI R9 Frame(CFA, -8)
          CFI R8 Frame(CFA, -12)
          CFI R7 Frame(CFA, -16)
          CFI R6 Frame(CFA, -20)
          CFI R5 Frame(CFA, -24)
          CFI R4 Frame(CFA, -28)
          CFI CFA R13+32
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
//   70   char h,l;
//   71   I2C_Start();
          CFI FunCall I2C_Start
        BL       I2C_Start
//   72   I2C_SendByte( dev_addr<<1); 
        LSLS     R0,R4,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall I2C_SendByte
        BL       I2C_SendByte
//   73   I2C_SendByte( reg_addr); 
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall I2C_SendByte
        BL       I2C_SendByte
//   74   I2C_Start();	
          CFI FunCall I2C_Start
        BL       I2C_Start
//   75   I2C_SendByte((dev_addr<<1)+1); 
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSLS     R0,R4,#+1
        ADDS     R0,R0,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall I2C_SendByte
        BL       I2C_SendByte
//   76   h= I2C_ReceiveByte();
          CFI FunCall I2C_ReceiveByte
        BL       I2C_ReceiveByte
        MOV      R8,R0
//   77   I2C_Ack();
          CFI FunCall I2C_Ack
        BL       I2C_Ack
//   78   l= I2C_ReceiveByte();
          CFI FunCall I2C_ReceiveByte
        BL       I2C_ReceiveByte
        MOV      R9,R0
//   79   I2C_Ack();
          CFI FunCall I2C_Ack
        BL       I2C_Ack
//   80   *x=(h<<8)+l;
        SXTB     R8,R8            ;; SignExt  R8,R8,#+24,#+24
        LSLS     R0,R8,#+8
        SXTAB    R0,R0,R9
        STRH     R0,[R6, #+0]
//   81   h= I2C_ReceiveByte();
          CFI FunCall I2C_ReceiveByte
        BL       I2C_ReceiveByte
        MOV      R8,R0
//   82   I2C_Ack();
          CFI FunCall I2C_Ack
        BL       I2C_Ack
//   83   l= I2C_ReceiveByte();
          CFI FunCall I2C_ReceiveByte
        BL       I2C_ReceiveByte
        MOV      R9,R0
//   84   I2C_Ack();
          CFI FunCall I2C_Ack
        BL       I2C_Ack
//   85   h= I2C_ReceiveByte();
          CFI FunCall I2C_ReceiveByte
        BL       I2C_ReceiveByte
        MOV      R8,R0
//   86   I2C_Ack();
          CFI FunCall I2C_Ack
        BL       I2C_Ack
//   87   l= I2C_ReceiveByte();
          CFI FunCall I2C_ReceiveByte
        BL       I2C_ReceiveByte
        MOV      R9,R0
//   88   I2C_NoAck();
          CFI FunCall I2C_NoAck
        BL       I2C_NoAck
//   89   *y=(h<<8)+l;
        SXTB     R8,R8            ;; SignExt  R8,R8,#+24,#+24
        LSLS     R0,R8,#+8
        SXTAB    R0,R0,R9
        STRH     R0,[R7, #+0]
//   90   I2C_Stop();
          CFI FunCall I2C_Stop
        BL       I2C_Stop
//   91 }
        POP      {R0,R4-R9,PC}    ;; return
          CFI EndBlock cfiBlock4
//   92 /*
//   93  * I2C_Start
//   94  * I2C起始信号，内部调用
//   95  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function I2C_Start
        THUMB
//   96 void I2C_Start(void)
//   97 {
I2C_Start:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   98   I2C_SDA_OUT();
        MOVS     R0,#+1
        LDR.N    R1,??DataTable6  ;; 0x43fe22e0
        STR      R0,[R1, #+0]
//   99   I2C_DELAY();
        MOVS     R0,#+15
          CFI FunCall I2C_Delay
        BL       I2C_Delay
//  100   I2C_DELAY();
        MOVS     R0,#+15
          CFI FunCall I2C_Delay
        BL       I2C_Delay
//  101   I2C_SDA_O=1; 
        MOVS     R0,#+1
        LDR.N    R1,??DataTable6_1  ;; 0x43fe2060
        STR      R0,[R1, #+0]
//  102   I2C_SCL=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable6_2  ;; 0x43fe2064
        STR      R0,[R1, #+0]
//  103   I2C_DELAY();
        MOVS     R0,#+15
          CFI FunCall I2C_Delay
        BL       I2C_Delay
//  104   I2C_DELAY();
        MOVS     R0,#+15
          CFI FunCall I2C_Delay
        BL       I2C_Delay
//  105   I2C_SDA_O=0; 
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6_1  ;; 0x43fe2060
        STR      R0,[R1, #+0]
//  106   I2C_DELAY();
        MOVS     R0,#+15
          CFI FunCall I2C_Delay
        BL       I2C_Delay
//  107   I2C_DELAY();
        MOVS     R0,#+15
          CFI FunCall I2C_Delay
        BL       I2C_Delay
//  108   I2C_SCL=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6_2  ;; 0x43fe2064
        STR      R0,[R1, #+0]
//  109   I2C_DELAY();
        MOVS     R0,#+15
          CFI FunCall I2C_Delay
        BL       I2C_Delay
//  110   I2C_DELAY();
        MOVS     R0,#+15
          CFI FunCall I2C_Delay
        BL       I2C_Delay
//  111 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock5
//  112 
//  113 /*
//  114  * I2C_Stop
//  115  * I2C停止信号，内部调用
//  116  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function I2C_Stop
        THUMB
//  117  void I2C_Stop(void)
//  118 { 
I2C_Stop:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  119     I2C_SDA_O=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6_1  ;; 0x43fe2060
        STR      R0,[R1, #+0]
//  120     I2C_SCL=0; 
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6_2  ;; 0x43fe2064
        STR      R0,[R1, #+0]
//  121   I2C_DELAY();
        MOVS     R0,#+15
          CFI FunCall I2C_Delay
        BL       I2C_Delay
//  122   I2C_DELAY();
        MOVS     R0,#+15
          CFI FunCall I2C_Delay
        BL       I2C_Delay
//  123     I2C_SCL=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable6_2  ;; 0x43fe2064
        STR      R0,[R1, #+0]
//  124   I2C_DELAY();
        MOVS     R0,#+15
          CFI FunCall I2C_Delay
        BL       I2C_Delay
//  125   I2C_DELAY();
        MOVS     R0,#+15
          CFI FunCall I2C_Delay
        BL       I2C_Delay
//  126     I2C_SDA_O=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable6_1  ;; 0x43fe2060
        STR      R0,[R1, #+0]
//  127   I2C_DELAY();
        MOVS     R0,#+15
          CFI FunCall I2C_Delay
        BL       I2C_Delay
//  128   I2C_DELAY();
        MOVS     R0,#+15
          CFI FunCall I2C_Delay
        BL       I2C_Delay
//  129     I2C_SCL=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6_2  ;; 0x43fe2064
        STR      R0,[R1, #+0]
//  130 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock6
//  131 
//  132 /*
//  133  * I2C_Stop
//  134  * I2C应答信号，内部调用
//  135  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function I2C_Ack
        THUMB
//  136 void I2C_Ack(void)
//  137 {	
I2C_Ack:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  138   I2C_SCL=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6_2  ;; 0x43fe2064
        STR      R0,[R1, #+0]
//  139   I2C_DELAY();
        MOVS     R0,#+15
          CFI FunCall I2C_Delay
        BL       I2C_Delay
//  140   
//  141   I2C_SDA_O=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6_1  ;; 0x43fe2060
        STR      R0,[R1, #+0]
//  142   I2C_DELAY();
        MOVS     R0,#+15
          CFI FunCall I2C_Delay
        BL       I2C_Delay
//  143   
//  144   I2C_SCL=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable6_2  ;; 0x43fe2064
        STR      R0,[R1, #+0]
//  145   I2C_DELAY();
        MOVS     R0,#+15
          CFI FunCall I2C_Delay
        BL       I2C_Delay
//  146   
//  147   I2C_SCL=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6_2  ;; 0x43fe2064
        STR      R0,[R1, #+0]
//  148   I2C_DELAY();
        MOVS     R0,#+15
          CFI FunCall I2C_Delay
        BL       I2C_Delay
//  149 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock7
//  150 
//  151 /*
//  152  * I2C_NoAck
//  153  * I2C无应答信号，内部调用
//  154  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function I2C_NoAck
        THUMB
//  155  void I2C_NoAck(void)
//  156 {	
I2C_NoAck:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  157   I2C_SCL=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6_2  ;; 0x43fe2064
        STR      R0,[R1, #+0]
//  158   I2C_DELAY();
        MOVS     R0,#+15
          CFI FunCall I2C_Delay
        BL       I2C_Delay
//  159   I2C_SDA_O=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable6_1  ;; 0x43fe2060
        STR      R0,[R1, #+0]
//  160   I2C_DELAY();
        MOVS     R0,#+15
          CFI FunCall I2C_Delay
        BL       I2C_Delay
//  161   I2C_SCL=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable6_2  ;; 0x43fe2064
        STR      R0,[R1, #+0]
//  162   I2C_DELAY();
        MOVS     R0,#+15
          CFI FunCall I2C_Delay
        BL       I2C_Delay
//  163   I2C_SCL=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6_2  ;; 0x43fe2064
        STR      R0,[R1, #+0]
//  164   I2C_DELAY();
        MOVS     R0,#+15
          CFI FunCall I2C_Delay
        BL       I2C_Delay
//  165 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock8
//  166 
//  167 
//  168 /*
//  169  * I2C_SendByte
//  170  * I2C发送数据，内部调用
//  171  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function I2C_SendByte
        THUMB
//  172 void I2C_SendByte(uint8 data) 
//  173 {
I2C_SendByte:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
//  174   uint8 i=8;
        MOVS     R5,#+8
//  175   while(i--)
??I2C_SendByte_0:
        MOVS     R0,R5
        SUBS     R5,R0,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??I2C_SendByte_1
//  176   {
//  177     I2C_SCL=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6_2  ;; 0x43fe2064
        STR      R0,[R1, #+0]
//  178     if(data&0x80)
        LSLS     R0,R4,#+24
        BPL.N    ??I2C_SendByte_2
//  179       I2C_SDA_O=1; 
        MOVS     R0,#+1
        LDR.N    R1,??DataTable6_1  ;; 0x43fe2060
        STR      R0,[R1, #+0]
        B.N      ??I2C_SendByte_3
//  180     else 
//  181       I2C_SDA_O=0;   
??I2C_SendByte_2:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6_1  ;; 0x43fe2060
        STR      R0,[R1, #+0]
//  182     data<<=1;
??I2C_SendByte_3:
        LSLS     R4,R4,#+1
//  183     I2C_DELAY();
        MOVS     R0,#+15
          CFI FunCall I2C_Delay
        BL       I2C_Delay
//  184     I2C_SCL=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable6_2  ;; 0x43fe2064
        STR      R0,[R1, #+0]
//  185     I2C_DELAY();
        MOVS     R0,#+15
          CFI FunCall I2C_Delay
        BL       I2C_Delay
        B.N      ??I2C_SendByte_0
//  186   }
//  187   I2C_SCL=0;
??I2C_SendByte_1:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6_2  ;; 0x43fe2064
        STR      R0,[R1, #+0]
//  188   I2C_DELAY();
        MOVS     R0,#+15
          CFI FunCall I2C_Delay
        BL       I2C_Delay
//  189   I2C_SDA_I=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable6_3  ;; 0x43fe2260
        STR      R0,[R1, #+0]
//  190   I2C_DELAY();
        MOVS     R0,#+15
          CFI FunCall I2C_Delay
        BL       I2C_Delay
//  191   I2C_SCL=1; 
        MOVS     R0,#+1
        LDR.N    R1,??DataTable6_2  ;; 0x43fe2064
        STR      R0,[R1, #+0]
//  192   I2C_DELAY();
        MOVS     R0,#+15
          CFI FunCall I2C_Delay
        BL       I2C_Delay
//  193   I2C_SCL=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6_2  ;; 0x43fe2064
        STR      R0,[R1, #+0]
//  194 }
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock9
//  195 
//  196 /*
//  197  * I2C_SendByte
//  198  * I2C接收数据，内部调用
//  199  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function I2C_ReceiveByte
        THUMB
//  200  uint8 I2C_ReceiveByte(void)  
//  201 { 
I2C_ReceiveByte:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
//  202   uint8 i=8;
        MOVS     R4,#+8
//  203   uint8 ReceiveByte=0;
        MOVS     R5,#+0
//  204   
//  205   I2C_SDA_O=1;	
        MOVS     R0,#+1
        LDR.N    R1,??DataTable6_1  ;; 0x43fe2060
        STR      R0,[R1, #+0]
//  206   I2C_SDA_IN();	
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6  ;; 0x43fe22e0
        STR      R0,[R1, #+0]
//  207   
//  208   while(i--)
??I2C_ReceiveByte_0:
        MOVS     R0,R4
        SUBS     R4,R0,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??I2C_ReceiveByte_1
//  209   {
//  210     ReceiveByte<<=1;      
        LSLS     R5,R5,#+1
//  211     I2C_SCL=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6_2  ;; 0x43fe2064
        STR      R0,[R1, #+0]
//  212     I2C_DELAY();
        MOVS     R0,#+15
          CFI FunCall I2C_Delay
        BL       I2C_Delay
//  213     I2C_SCL=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable6_2  ;; 0x43fe2064
        STR      R0,[R1, #+0]
//  214     I2C_DELAY();	
        MOVS     R0,#+15
          CFI FunCall I2C_Delay
        BL       I2C_Delay
//  215     if(I2C_SDA_I)
        LDR.N    R0,??DataTable6_3  ;; 0x43fe2260
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??I2C_ReceiveByte_0
//  216     {
//  217       ReceiveByte|=0x01;
        ORRS     R5,R5,#0x1
        B.N      ??I2C_ReceiveByte_0
//  218     }
//  219     
//  220   }
//  221   I2C_SDA_OUT();
??I2C_ReceiveByte_1:
        MOVS     R0,#+1
        LDR.N    R1,??DataTable6  ;; 0x43fe22e0
        STR      R0,[R1, #+0]
//  222   I2C_SCL=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6_2  ;; 0x43fe2064
        STR      R0,[R1, #+0]
//  223   
//  224   return ReceiveByte;
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return
//  225 }
          CFI EndBlock cfiBlock10

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     0x43fe22e0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC32     0x43fe2060

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_2:
        DC32     0x43fe2064

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_3:
        DC32     0x43fe2260
//  226 
//  227 /*
//  228  * I2C_SendByte
//  229  * I2C延时函数，内部调用
//  230  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function I2C_Delay
          CFI NoCalls
        THUMB
//  231 void I2C_Delay(uint16 i)
//  232 {	
//  233   while(i) 
I2C_Delay:
??I2C_Delay_0:
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+0
        BEQ.N    ??I2C_Delay_1
//  234     i--; 
        SUBS     R0,R0,#+1
        B.N      ??I2C_Delay_0
//  235 }
??I2C_Delay_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock11
//  236 
//  237 /******************获得Z轴加速度******************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function Get_Z_Acc
        THUMB
//  238 int16 Get_Z_Acc()
//  239 {
Get_Z_Acc:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  240   int16 temp;
//  241   temp=I2C_ReadWord(I2C_MMA8451_ADR,0X05);
        MOVS     R1,#+5
        MOVS     R0,#+56
          CFI FunCall I2C_ReadWord
        BL       I2C_ReadWord
        MOVS     R4,R0
//  242   return temp;
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        POP      {R4,PC}          ;; return
//  243 }
          CFI EndBlock cfiBlock12
//  244 
//  245 
//  246 /******************获得Z轴加速度******************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function Get_Y_Acc
        THUMB
//  247 int16 Get_Y_Acc()
//  248 {
Get_Y_Acc:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  249   int16 temp;
//  250   temp=I2C_ReadWord(I2C_MMA8451_ADR,0X03);
        MOVS     R1,#+3
        MOVS     R0,#+56
          CFI FunCall I2C_ReadWord
        BL       I2C_ReadWord
        MOVS     R4,R0
//  251   return temp;
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        POP      {R4,PC}          ;; return
//  252 }
          CFI EndBlock cfiBlock13
//  253 
//  254 /******************获得Z轴加速度******************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock14 Using cfiCommon0
          CFI Function Get_X_Acc
        THUMB
//  255 int16 Get_X_Acc()
//  256 {
Get_X_Acc:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  257   int16 temp;
//  258   temp=I2C_ReadWord(I2C_MMA8451_ADR,0X01);
        MOVS     R1,#+1
        MOVS     R0,#+56
          CFI FunCall I2C_ReadWord
        BL       I2C_ReadWord
        MOVS     R4,R0
//  259   return temp;
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        POP      {R4,PC}          ;; return
//  260 }
          CFI EndBlock cfiBlock14
//  261 
//  262 
//  263 /*****************获得y轴角速度*****************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock15 Using cfiCommon0
          CFI Function Get_Y_Gyro
        THUMB
//  264 int16 Get_Y_Gyro()
//  265 {
Get_Y_Gyro:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  266   int16 temp; 
//  267   temp=I2C_ReadWord(I2C_MPU3050_ADR,0X1f);
        MOVS     R1,#+31
        MOVS     R0,#+104
          CFI FunCall I2C_ReadWord
        BL       I2C_ReadWord
        MOVS     R4,R0
//  268   return temp;
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        POP      {R4,PC}          ;; return
//  269 }
          CFI EndBlock cfiBlock15
//  270 
//  271 /*****************获得z轴角速度*****************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock16 Using cfiCommon0
          CFI Function Get_Z_Gyro
        THUMB
//  272 int16 Get_Z_Gyro()
//  273 {
Get_Z_Gyro:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  274   int16 temp; 
//  275   temp=I2C_ReadWord(I2C_MPU3050_ADR,0X21);
        MOVS     R1,#+33
        MOVS     R0,#+104
          CFI FunCall I2C_ReadWord
        BL       I2C_ReadWord
        MOVS     R4,R0
//  276   return temp;
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        POP      {R4,PC}          ;; return
//  277 }
          CFI EndBlock cfiBlock16
//  278 
//  279 
//  280 
//  281 /*****************获得x轴角速度*****************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock17 Using cfiCommon0
          CFI Function Get_X_Gyro
        THUMB
//  282 int16 Get_X_Gyro()
//  283 {
Get_X_Gyro:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  284   int16 temp;
//  285   temp=I2C_ReadWord(I2C_MPU3050_ADR,0X1D);
        MOVS     R1,#+29
        MOVS     R0,#+104
          CFI FunCall I2C_ReadWord
        BL       I2C_ReadWord
        MOVS     R4,R0
//  286   return temp;
        MOVS     R0,R4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        POP      {R4,PC}          ;; return
//  287 }
          CFI EndBlock cfiBlock17
//  288 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock18 Using cfiCommon0
          CFI Function MPU3050_Init
        THUMB
//  289 void MPU3050_Init()
//  290 {
MPU3050_Init:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  291  I2C_WriteReg(I2C_MPU3050_ADR,0x3E , 0X80); //复位MPU3050
        MOVS     R2,#+128
        MOVS     R1,#+62
        MOVS     R0,#+104
          CFI FunCall I2C_WriteReg
        BL       I2C_WriteReg
//  292  DELAY_MS(5);
        MOVS     R0,#+5
          CFI FunCall systick_delay_ms
        BL       systick_delay_ms
//  293  I2C_WriteReg(I2C_MPU3050_ADR,0x15,  0);    //采样不分频
        MOVS     R2,#+0
        MOVS     R1,#+21
        MOVS     R0,#+104
          CFI FunCall I2C_WriteReg
        BL       I2C_WriteReg
//  294  DELAY_MS(5);
        MOVS     R0,#+5
          CFI FunCall systick_delay_ms
        BL       systick_delay_ms
//  295  I2C_WriteReg(I2C_MPU3050_ADR,0x16 , 0x11);  //采样速率8kHz&&采样范围±1000°
        MOVS     R2,#+17
        MOVS     R1,#+22
        MOVS     R0,#+104
          CFI FunCall I2C_WriteReg
        BL       I2C_WriteReg
//  296  DELAY_MS(5);
        MOVS     R0,#+5
          CFI FunCall systick_delay_ms
        BL       systick_delay_ms
//  297  I2C_WriteReg(I2C_MPU3050_ADR,0x17 , 0);    //不产生中断
        MOVS     R2,#+0
        MOVS     R1,#+23
        MOVS     R0,#+104
          CFI FunCall I2C_WriteReg
        BL       I2C_WriteReg
//  298  DELAY_MS(5);
        MOVS     R0,#+5
          CFI FunCall systick_delay_ms
        BL       systick_delay_ms
//  299  I2C_WriteReg(I2C_MPU3050_ADR,0x3E , 0X00); //启动MPU3050
        MOVS     R2,#+0
        MOVS     R1,#+62
        MOVS     R0,#+104
          CFI FunCall I2C_WriteReg
        BL       I2C_WriteReg
//  300 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock18
//  301 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock19 Using cfiCommon0
          CFI Function MMA8451_Init
        THUMB
//  302 void MMA8451_Init()
//  303 {
MMA8451_Init:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  304   
//  305   
//  306  gpio_init (PTE24,GPO,0);
        MOVS     R2,#+0
        MOVS     R1,#+1
        MOVS     R0,#+152
          CFI FunCall gpio_init
        BL       gpio_init
//  307  gpio_init (PTE25,GPO,0);
        MOVS     R2,#+0
        MOVS     R1,#+1
        MOVS     R0,#+153
          CFI FunCall gpio_init
        BL       gpio_init
//  308  
//  309 //DELAY_MS(1000);
//  310   
//  311  
//  312  I2C_WriteReg(0x38>>1,CTRL_REG1,ASLP_RATE_20MS+DATA_RATE_5MS);  //0为+-2g，1为+-4g，2为+-8g
        MOVS     R2,#+16
        MOVS     R1,#+42
        MOVS     R0,#+28
          CFI FunCall I2C_WriteReg
        BL       I2C_WriteReg
//  313  DELAY_MS(5);
        MOVS     R0,#+5
          CFI FunCall systick_delay_ms
        BL       systick_delay_ms
//  314  I2C_WriteReg(0x38>>1,XYZ_DATA_CFG_REG, FULL_SCALE_2G);  // 使能低通滤波
        MOVS     R2,#+0
        MOVS     R1,#+14
        MOVS     R0,#+28
          CFI FunCall I2C_WriteReg
        BL       I2C_WriteReg
//  315  DELAY_MS(5);
        MOVS     R0,#+5
          CFI FunCall systick_delay_ms
        BL       systick_delay_ms
//  316  I2C_WriteReg(0x38>>1,CTRL_REG1 , ACTIVE_MASK); //0x2a为控制寄存器1 激活mma8451
        MOVS     R2,#+1
        MOVS     R1,#+42
        MOVS     R0,#+28
          CFI FunCall I2C_WriteReg
        BL       I2C_WriteReg
//  317  DELAY_MS(5);
        MOVS     R0,#+5
          CFI FunCall systick_delay_ms
        BL       systick_delay_ms
//  318  
//  319  
//  320 // I2C_WriteReg(0x38>>1,0x0E, 1);  //0为+-2g，1为+-4g，2为+-8g
//  321 // DELAY_MS(5);
//  322 // I2C_WriteReg(0x38>>1,0x0F, 0X10);  // 使能低通滤波
//  323 // DELAY_MS(5);
//  324 // I2C_WriteReg(0x38>>1,0x2A , 1); //0x2a为控制寄存器1 激活mma8451
//  325 // DELAY_MS(5);
//  326 // 
//  327  ITG3200_writebyte(REG_DLPF_FS,0x18);//设置ITG3200
        MOVS     R1,#+24
        MOVS     R0,#+22
          CFI FunCall ITG3200_writebyte
        BL       ITG3200_writebyte
//  328  
//  329 // DELAY_MS(1000);
//  330  
//  331 // 
//  332 //MMA845x_writebyte(CTRL_REG1,ASLP_RATE_20MS+DATA_RATE_5MS);	
//  333 //delaymm();
//  334 //MMA845x_writebyte(XYZ_DATA_CFG_REG, FULL_SCALE_2G); //2G
//  335 //delaymm();
//  336 //MMA845x_writebyte(CTRL_REG1, ACTIVE_MASK);          //激活状态
//  337 //delaymm();
//  338 // 
//  339  
//  340  
//  341  
//  342  
//  343  
//  344  
//  345  
//  346  
//  347 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock19

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  348 	
// 
//    24 bytes in section .bss
// 1 100 bytes in section .text
// 
// 1 100 bytes of CODE memory
//    24 bytes of DATA memory
//
//Errors: none
//Warnings: 33
