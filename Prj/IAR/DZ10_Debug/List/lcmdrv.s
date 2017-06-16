///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      12/Jun/2017  17:32:50
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\@@@@@@@\Car\Drivers\ZLG_GUI\lcmdrv.c
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EWC9BE.tmp
//        (D:\@@@@@@@\Car\Drivers\ZLG_GUI\lcmdrv.c -D DEBUG -D
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
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\lcmdrv.s
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

        EXTERN OLED_Clear
        EXTERN OLED_DrawPoint
        EXTERN OLED_Init
        EXTERN OLED_OPEN
        EXTERN OLED_P6x8Str
        EXTERN OLED_Refresh_Gram

        PUBLIC GUI_ClearSCR
        PUBLIC GUI_Exec
        PUBLIC GUI_FillSCR
        PUBLIC GUI_HLine
        PUBLIC GUI_Initialize
        PUBLIC GUI_Point
        PUBLIC GUI_RLine
        PUBLIC GUI_ReadPoint
        
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
        
// D:\@@@@@@@\Car\Drivers\ZLG_GUI\lcmdrv.c
//    1 #include "config.h"
//    2 //#include "OLED.h"
//    3 extern int OLED_OPEN;
//    4 
//    5 /****************************************************************************
//    6 * ���ƣ�GUI_Initialize()
//    7 * ���ܣ���ʼ��GUI��������ʼ����ʾ����������ʼ��LCM��������
//    8 * ��ڲ�������
//    9 * ���ڲ�������
//   10 * ˵�����û�����LCM��ʵ�������д�˺�����
//   11 ****************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function GUI_Initialize
        THUMB
//   12 void  GUI_Initialize(void)
//   13 {
GUI_Initialize:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   14     //OLED_Init();//OLED��ʼ��
//   15   OLED_Init();         //OLED��ʼ��
          CFI FunCall OLED_Init
        BL       OLED_Init
//   16 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock0
//   17 /****************************************************************************
//   18 * ���ƣ�GUI_FillSCR()
//   19 * ���ܣ�ȫ����䡣ֱ��ʹ�����������ʾ��������
//   20 * ��ڲ�����dat     ��������
//   21 * ���ڲ�������
//   22 * ˵�����û�����LCM��ʵ�������д�˺�����
//   23 ****************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function GUI_FillSCR
          CFI NoCalls
        THUMB
//   24 void  GUI_FillSCR(TCOLOR dat)
//   25 {
//   26 	//OLED_Fill(0,0,128,63,dat);
//   27 }
GUI_FillSCR:
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//   28 /****************************************************************************
//   29 * ���ƣ�GUI_ClearSCR()
//   30 * ���ܣ�������
//   31 * ��ڲ�������
//   32 * ���ڲ�������
//   33 * ˵�����û�����LCM��ʵ�������д�˺�����
//   34 ****************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function GUI_ClearSCR
        THUMB
//   35 void  GUI_ClearSCR()
//   36 {
GUI_ClearSCR:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   37 	OLED_Clear();
          CFI FunCall OLED_Clear
        BL       OLED_Clear
//   38 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock2
//   39 /****************************************************************************
//   40 * ���ƣ�GUI_Point()
//   41 * ���ܣ���ָ��λ���ϻ��㡣
//   42 * ��ڲ����� x      ָ���������е�λ��
//   43 *            y      ָ���������е�λ��
//   44 *            color  ��ʾ��ɫ(���ںڰ�ɫLCM��Ϊ0ʱ��Ϊ1ʱ��ʾ)
//   45 * ���ڲ���������ֵΪ1ʱ��ʾ�����ɹ���Ϊ0ʱ��ʾ����ʧ�ܡ�(����ʧ��ԭ����ָ����ַ������
//   46 *          Ч��Χ)
//   47 * ˵�����û�����LCM��ʵ�������д�˺�����
//   48 ****************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function GUI_Point
        THUMB
//   49 void  GUI_Point(uint16 x, uint8 y, TCOLOR color)
//   50 {
GUI_Point:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//   51 	OLED_DrawPoint(x,y,color);
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R2,R6
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R1,R5
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        MOVS     R0,R4
          CFI FunCall OLED_DrawPoint
        BL       OLED_DrawPoint
//   52 }
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock3
//   53 /****************************************************************************
//   54 * ���ƣ�GUI_ReadPoint()
//   55 * ���ܣ���ȡָ�������ɫ��
//   56 * ��ڲ�����x       ָ���������е�λ��
//   57 *           y       ָ���������е�λ��
//   58 *           ret     ������ɫֵ��ָ��
//   59 * ���ڲ���������0��ʾָ����ַ������������Χ
//   60 * ˵�������ڵ�ɫ������ret��d0λΪ1��0��4���Ҷ���Ϊd0��d1��Ч��8λRGB��d0--d7��Ч��
//   61 *      RGB�ṹ��R��G��B������Ч��
//   62 ****************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function GUI_ReadPoint
          CFI NoCalls
        THUMB
//   63 uint8  GUI_ReadPoint(uint16 x, uint8 y, TCOLOR *ret)
//   64 {
GUI_ReadPoint:
        MOVS     R3,R0
//   65 	return 0;
        MOVS     R0,#+0
        BX       LR               ;; return
//   66 }
          CFI EndBlock cfiBlock4
//   67 /****************************************************************************
//   68 * ���ƣ�GUI_HLine()
//   69 * ���ܣ���ˮƽ�ߡ�
//   70 * ��ڲ����� x0     ˮƽ����������е�λ��
//   71 *           y0      ˮƽ����������е�λ��
//   72 *           x1      ˮƽ���յ������е�λ��
//   73 *           color   ��ʾ��ɫ(���ںڰ�ɫLCM��Ϊ0ʱ��Ϊ1ʱ��ʾ)
//   74 * ���ڲ�������
//   75 * ˵�������ڵ�ɫ��4���Ҷȵ�Һ������ͨ���޸Ĵ˺�����ͼ����ٶȣ��絥ɫLCM������һ�θ�
//   76 *      ��8���㣬������Ҫһ����һ�����д��LCM�С�
//   77 ****************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function GUI_HLine
        THUMB
//   78 void  GUI_HLine(uint16 x0, uint8 y0, uint16 x1, TCOLOR color)
//   79 {
GUI_HLine:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
        MOVS     R7,R0
        MOVS     R4,R1
        MOV      R8,R2
        MOVS     R5,R3
//   80     uint8  temp;
//   81     if(x0>x1)               // ��x0��x1��С�������У��Ա㻭ͼ
        MOV      R0,R8
        MOVS     R1,R7
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BCS.N    ??GUI_HLine_0
//   82     {
//   83         temp = x1;
        MOV      R0,R8
        MOVS     R6,R0
//   84         x1 = x0;
        MOV      R8,R7
//   85         x0 = temp;
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R7,R6
//   86     }
//   87     do
//   88     {
//   89         GUI_Point(x0, y0, color);   // �����ʾ�������ֱ��
??GUI_HLine_0:
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R7
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_Point
        BL       GUI_Point
//   90         x0++;
        ADDS     R7,R7,#+1
//   91     }
//   92     while(x1>=x0);
        MOV      R0,R8
        MOVS     R1,R7
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BCS.N    ??GUI_HLine_0
//   93 }
        POP      {R4-R8,PC}       ;; return
          CFI EndBlock cfiBlock5
//   94 
//   95 /****************************************************************************
//   96 * ���ƣ�GUI_RLine()
//   97 * ���ܣ�����ֱ�ߡ�
//   98 * ��ڲ����� x0     ��ֱ����������е�λ��
//   99 *           y0      ��ֱ����������е�λ��
//  100 *           y1      ��ֱ���յ������е�λ��
//  101 *           color   ��ʾ��ɫ
//  102 * ���ڲ�������
//  103 * ˵�������ڵ�ɫ��4���Ҷȵ�Һ������ͨ���޸Ĵ˺�����ͼ����ٶȣ��絥ɫLCM������һ�θ�
//  104 *      ��8���㣬������Ҫһ����һ�����д��LCM�С�
//  105 ****************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function GUI_RLine
        THUMB
//  106 void  GUI_RLine(uint16 x0, uint8 y0, uint8 y1, TCOLOR color)
//  107 {
GUI_RLine:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
        MOVS     R4,R0
        MOV      R8,R1
        MOVS     R5,R2
        MOVS     R6,R3
//  108     uint8  temp;
//  109     if(y0>y1)       // ��y0��y1��С�������У��Ա㻭ͼ
        MOVS     R0,R5
        MOV      R1,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R0,R1
        BCS.N    ??GUI_RLine_0
//  110     {
//  111         temp = y1;
        MOVS     R7,R5
//  112         y1 = y0;
        MOV      R5,R8
//  113         y0 = temp;
        MOV      R8,R7
//  114     }
//  115     do
//  116     {
//  117         GUI_Point(x0, y0, color);   // �����ʾ�������ֱ��
??GUI_RLine_0:
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOV      R1,R8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_Point
        BL       GUI_Point
//  118         y0++;
        ADDS     R8,R8,#+1
//  119     }
//  120     while(y1>=y0);
        MOVS     R0,R5
        MOV      R1,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R0,R1
        BCS.N    ??GUI_RLine_0
//  121 }
        POP      {R4-R8,PC}       ;; return
          CFI EndBlock cfiBlock6
//  122 
//  123 /****************************************************************************
//  124 * ���ƣ�GUI_Exec()
//  125 * ���ܣ�ˢ����Ļ          
//  126 ****************************************************************************/
//  127 
//  128 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function GUI_Exec
        THUMB
//  129 void  GUI_Exec(void)
//  130 {
GUI_Exec:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  131   if(OLED_OPEN)
        LDR.N    R0,??DataTable1
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??GUI_Exec_0
//  132 	OLED_Refresh_Gram();
          CFI FunCall OLED_Refresh_Gram
        BL       OLED_Refresh_Gram
        B.N      ??GUI_Exec_1
//  133   else 
//  134     OLED_P6x8Str(0,0,"OLED_CLOSE");
??GUI_Exec_0:
        LDR.N    R2,??DataTable1_1
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall OLED_P6x8Str
        BL       OLED_P6x8Str
//  135     return ;
??GUI_Exec_1:
        POP      {R0,PC}          ;; return
//  136 }
          CFI EndBlock cfiBlock7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     OLED_OPEN

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     ?_0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_0:
        DC8 "OLED_CLOSE"
        DC8 0

        END
//  137 
//  138 
// 
//  12 bytes in section .rodata
// 220 bytes in section .text
// 
// 220 bytes of CODE  memory
//  12 bytes of CONST memory
//
//Errors: none
//Warnings: 5
