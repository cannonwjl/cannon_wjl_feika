///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      16/Jun/2017  18:57:08
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\@@@@@@@\Car\Drivers\IIC_Angle\IIC.c
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EW112A.tmp
//        (D:\@@@@@@@\Car\Drivers\IIC_Angle\IIC.c -D DEBUG -D
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
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\IIC.s
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

        PUBLIC IIC_ack_main
        PUBLIC IIC_start
        PUBLIC IIC_stop
        PUBLIC Pause
        PUBLIC delaymm
        PUBLIC read_byte
        PUBLIC read_from_byte
        PUBLIC send_byte
        PUBLIC send_to_byte
        
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
        
// D:\@@@@@@@\Car\Drivers\IIC_Angle\IIC.c
//    1 #include "all_init.h"
//    2 #include "IIC.h"
//    3 
//    4 

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function Pause
          CFI NoCalls
        THUMB
//    5 void Pause(void)
//    6 {
//    7     u16 n;
//    8     for(n = 1; n < 20000; n++)      //注意，这个数据太小，会导致读取错误。
Pause:
        MOVS     R1,#+1
        MOVS     R0,R1
??Pause_0:
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOVW     R1,#+20000
        CMP      R0,R1
        BGE.N    ??Pause_1
//    9     {
//   10         asm("nop");
        nop
//   11     }
        ADDS     R0,R0,#+1
        B.N      ??Pause_0
//   12 }
??Pause_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//   13 

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function delaymm
          CFI NoCalls
        THUMB
//   14 void delaymm()
//   15 {
//   16   asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");
delaymm:
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
//   17   asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
//   18   asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
//   19   asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
//   20   asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
//   21   asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
//   22   asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
//   23   
//   24 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//   25 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function IIC_start
        THUMB
//   26 void IIC_start(void)
//   27 {
IIC_start:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   28 //    SDA=1;
//   29 //    delaymm();
//   30 	SCL=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5  ;; 0x43fe2064
        STR      R0,[R1, #+0]
//   31     delaymm();
          CFI FunCall delaymm
        BL       delaymm
//   32 	SDA=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable5_1  ;; 0x43fe2060
        STR      R0,[R1, #+0]
//   33 	delaymm();
          CFI FunCall delaymm
        BL       delaymm
//   34 	SCL=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable5  ;; 0x43fe2064
        STR      R0,[R1, #+0]
//   35 	delaymm();
          CFI FunCall delaymm
        BL       delaymm
//   36 	SDA=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5_1  ;; 0x43fe2060
        STR      R0,[R1, #+0]
//   37 	delaymm();
          CFI FunCall delaymm
        BL       delaymm
//   38 	SCL=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5  ;; 0x43fe2064
        STR      R0,[R1, #+0]
//   39 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock2
//   40 //************************************************
//   41 //送停止位 SDA=0->1

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function IIC_stop
        THUMB
//   42 void IIC_stop(void)
//   43 {
IIC_stop:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   44 	SCL=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5  ;; 0x43fe2064
        STR      R0,[R1, #+0]
//   45 	delaymm();
          CFI FunCall delaymm
        BL       delaymm
//   46 	SDA=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5_1  ;; 0x43fe2060
        STR      R0,[R1, #+0]
//   47 	delaymm();
          CFI FunCall delaymm
        BL       delaymm
//   48 	SCL=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable5  ;; 0x43fe2064
        STR      R0,[R1, #+0]
//   49 	delaymm();
          CFI FunCall delaymm
        BL       delaymm
//   50 	SDA=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable5_1  ;; 0x43fe2060
        STR      R0,[R1, #+0]
//   51 	delaymm();
          CFI FunCall delaymm
        BL       delaymm
//   52 	SCL=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5  ;; 0x43fe2064
        STR      R0,[R1, #+0]
//   53     
//   54     
//   55     
//   56     
//   57 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock3
//   58 //************************************************
//   59 //主应答(包含ack:SDA=0和no_ack:SDA=0)

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function IIC_ack_main
        THUMB
//   60 void IIC_ack_main(char ack_main)
//   61 {
IIC_ack_main:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//   62 	SCL=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5  ;; 0x43fe2064
        STR      R0,[R1, #+0]
//   63 	if(ack_main)SDA=0; //ack主应答
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??IIC_ack_main_0
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5_1  ;; 0x43fe2060
        STR      R0,[R1, #+0]
        B.N      ??IIC_ack_main_1
//   64 	else SDA=1; //no_ack无需应答
??IIC_ack_main_0:
        MOVS     R0,#+1
        LDR.N    R1,??DataTable5_1  ;; 0x43fe2060
        STR      R0,[R1, #+0]
//   65 	delaymm();
??IIC_ack_main_1:
          CFI FunCall delaymm
        BL       delaymm
//   66 	SCL=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable5  ;; 0x43fe2064
        STR      R0,[R1, #+0]
//   67 	delaymm();
          CFI FunCall delaymm
        BL       delaymm
//   68 	SCL=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5  ;; 0x43fe2064
        STR      R0,[R1, #+0]
//   69 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock4
//   70 //*************************************************
//   71 //字节发送程序
//   72 //发送c(可以是数据也可是地址)，送完后接收从应答
//   73 //不考虑从应答位

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function send_byte
        THUMB
//   74 void send_byte(u8 c)
//   75 {
send_byte:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
//   76 	unsigned char i;
//   77 	for(i=0;i<8;i++){
        MOVS     R0,#+0
        MOVS     R5,R0
??send_byte_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+8
        BGE.N    ??send_byte_1
//   78 		SCL=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5  ;; 0x43fe2064
        STR      R0,[R1, #+0]
//   79 		if((c<<i) & 0x80)SDA=1; //判断发送位
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSLS     R0,R4,R5
        LSLS     R0,R0,#+24
        BPL.N    ??send_byte_2
        MOVS     R0,#+1
        LDR.N    R1,??DataTable5_1  ;; 0x43fe2060
        STR      R0,[R1, #+0]
        B.N      ??send_byte_3
//   80 		else SDA=0;
??send_byte_2:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5_1  ;; 0x43fe2060
        STR      R0,[R1, #+0]
//   81 		delaymm();
??send_byte_3:
          CFI FunCall delaymm
        BL       delaymm
//   82 		SCL=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable5  ;; 0x43fe2064
        STR      R0,[R1, #+0]
//   83 		delaymm();
          CFI FunCall delaymm
        BL       delaymm
//   84 		SCL=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5  ;; 0x43fe2064
        STR      R0,[R1, #+0]
//   85 	}
        ADDS     R5,R5,#+1
        B.N      ??send_byte_0
//   86 	delaymm();
??send_byte_1:
          CFI FunCall delaymm
        BL       delaymm
//   87 	SDA=1; //发送完8bit，释放总线准备接收应答位
        MOVS     R0,#+1
        LDR.N    R1,??DataTable5_1  ;; 0x43fe2060
        STR      R0,[R1, #+0]
//   88 	delaymm();
          CFI FunCall delaymm
        BL       delaymm
//   89     //asm("nop"); 
//   90 	SCL=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable5  ;; 0x43fe2064
        STR      R0,[R1, #+0]
//   91 	asm("nop"); //sda上数据即是从应答位
        nop
//   92     //delaymm();
//   93     
//   94 	SCL=0; //不考虑从应答位|但要控制好时序
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5  ;; 0x43fe2064
        STR      R0,[R1, #+0]
//   95     
//   96     delaymm();
          CFI FunCall delaymm
        BL       delaymm
//   97 	SDA=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable5_1  ;; 0x43fe2060
        STR      R0,[R1, #+0]
//   98     
//   99     
//  100     
//  101 }
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock5
//  102 //**************************************************
//  103 //字节接收程序
//  104 //接收器件传来的数据，此程序应配合|主应答函数|IIC_ack_main()使用
//  105 //return: uchar型1字节

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function read_byte
        THUMB
//  106 u8 read_byte(void)
//  107 {
read_byte:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
//  108 unsigned char i;
//  109 unsigned char c;
//  110 	c=0;
        MOVS     R0,#+0
        MOVS     R5,R0
//  111 	SCL=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5  ;; 0x43fe2064
        STR      R0,[R1, #+0]
//  112 	delaymm();
          CFI FunCall delaymm
        BL       delaymm
//  113 	SDA=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable5_1  ;; 0x43fe2060
        STR      R0,[R1, #+0]
//  114        // gpio_init (PORTE,0,GPI,0);//置数据线为输入方式
//  115 	for(i=0;i<8;i++)
        MOVS     R0,#+0
        MOVS     R4,R0
??read_byte_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+8
        BGE.N    ??read_byte_1
//  116         {
//  117 		delaymm();
          CFI FunCall delaymm
        BL       delaymm
//  118 		SCL=0; //置时钟线为低，准备接收数据位
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5  ;; 0x43fe2064
        STR      R0,[R1, #+0]
//  119 		delaymm();
          CFI FunCall delaymm
        BL       delaymm
//  120 		SCL=1; //置时钟线为高，使数据线上数据有效
        MOVS     R0,#+1
        LDR.N    R1,??DataTable5  ;; 0x43fe2064
        STR      R0,[R1, #+0]
//  121 		delaymm();
          CFI FunCall delaymm
        BL       delaymm
//  122 		c<<=1;
        LSLS     R5,R5,#+1
//  123 		if(SDAIN)c+=1; //读数据位，将接收的数据存c
        LDR.N    R0,??DataTable5_2  ;; 0x43fe2260
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??read_byte_2
        ADDS     R5,R5,#+1
//  124 	}
??read_byte_2:
        ADDS     R4,R4,#+1
        B.N      ??read_byte_0
//  125        // gpio_init (PORTE,0,GPO,0);
//  126 	SCL=0;
??read_byte_1:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5  ;; 0x43fe2064
        STR      R0,[R1, #+0]
//  127 	return c;
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return
//  128 }
          CFI EndBlock cfiBlock6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     0x43fe2064

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DC32     0x43fe2060

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_2:
        DC32     0x43fe2260
//  129 //***************************************************
//  130 //向无子地址器件发送单字节数据

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function send_to_byte
        THUMB
//  131 void send_to_byte(u8 ad_main,u8 c)
//  132 {
send_to_byte:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
//  133 	IIC_start();
          CFI FunCall IIC_start
        BL       IIC_start
//  134 	send_byte(ad_main); //发送器件地址
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall send_byte
        BL       send_byte
//  135 	send_byte(c); //发送数据c
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall send_byte
        BL       send_byte
//  136 	IIC_stop();
          CFI FunCall IIC_stop
        BL       IIC_stop
//  137 }
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock7
//  138 //***************************************************
//  139 //向有子地址器件发送多字节数据
//  140 /*void send_to_nbyte(u8 ad_main,u8 ad_sub,u8 *buf,u8 num)
//  141 {
//  142 	unsigned char i;
//  143 	IIC_start();
//  144 	send_byte(ad_main); //发送器件地址
//  145 	send_byte(ad_sub); //发送器件子地址
//  146 	for(i=0;i<num;i++){
//  147 		send_byte(*buf); //发送数据*buf
//  148 		buf++;
//  149 	}
//  150 	IIC_stop();
//  151 }*/
//  152 //***************************************************
//  153 //从无子地址器件读单字节数据
//  154 //function:器件地址，所读数据存在接收缓冲区当前字节

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function read_from_byte
        THUMB
//  155 void read_from_byte(u8 ad_main,u8 *buf)
//  156 {
read_from_byte:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
//  157 	IIC_start();
          CFI FunCall IIC_start
        BL       IIC_start
//  158 	send_byte(ad_main); //发送器件地址
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall send_byte
        BL       send_byte
//  159 	*buf=read_byte();
          CFI FunCall read_byte
        BL       read_byte
        STRB     R0,[R5, #+0]
//  160 	IIC_ack_main(no_ack); //无需应答<no_ack=0>
        MOVS     R0,#+0
          CFI FunCall IIC_ack_main
        BL       IIC_ack_main
//  161 	IIC_stop();
          CFI FunCall IIC_stop
        BL       IIC_stop
//  162 }
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock8

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  163 //***************************************************
//  164 //从有子地址器件读多个字节数据
//  165 //function:
//  166 /*void read_from_nbyte(u8 ad_main,u8 ad_sub,u8 *buf,u8 num)
//  167 {
//  168 	unsigned char i;
//  169 	IIC_start();
//  170 	send_byte(ad_main);
//  171 	send_byte(ad_sub);
//  172 	for(i=0;i<num-1;i++)
//  173         {
//  174 		*buf=read_byte();
//  175 		IIC_ack_main(ack); //主应答<ack=1>
//  176 		buf++;
//  177 	}
//  178 	*buf=read_byte;
//  179 	buf++; //本次指针调整无意义，目的是操作后buf指向下一地址
//  180 	IIC_ack_main(no_ack); //无需应答<no_ack=0>
//  181 	IIC_stop();
//  182 }*/
// 
// 560 bytes in section .text
// 
// 560 bytes of CODE memory
//
//Errors: none
//Warnings: 30
