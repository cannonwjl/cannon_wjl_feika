///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      12/Jun/2017  17:32:51
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\@@@@@@@\Car\Drivers\ZLG_GUI\loadbit.c
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EWCB56.tmp
//        (D:\@@@@@@@\Car\Drivers\ZLG_GUI\loadbit.c -D DEBUG -D
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
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\loadbit.s
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

        EXTERN DCB2HEX_TAB
        EXTERN GUI_ExchangeColor
        EXTERN GUI_Point
        EXTERN OLED_OPEN
        EXTERN back_color
        EXTERN disp_color

        PUBLIC GUI_LoadLine
        PUBLIC GUI_LoadPic
        PUBLIC GUI_LoadPic1
        PUBLIC GUI_PutHZ
        
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
        
// D:\@@@@@@@\Car\Drivers\ZLG_GUI\loadbit.c
//    1 /****************************************************************************************
//    2 * �ļ�����LOADBIT.C
//    3 * ���ܣ���ʾ��ɫͼ�μ�������ʾ���Ƚ�ͼ��ת��Ϊ��Ӧ�ĵ������飬Ȼ�󼴿ɵ��ô��ļ��ĺ������������
//    4 * ���ߣ����ܱ�
//    5 * ���ڣ�2004.02.26
//    6 * ��ע��ʹ��GUI_SetBackColor()����������ʾ��ɫ������ɫ��
//    7 ****************************************************************************************/
//    8 #include  "config.h"
//    9 
//   10 extern int OLED_OPEN;
//   11 
//   12 #if  (GUI_LoadPic_EN==1)|(GUI_MenuIco_EN==1)|(GUI_PutHZ_EN==1)
//   13 /****************************************************************************
//   14 * ���ƣ�GUI_LoadLine()
//   15 * ���ܣ������ɫͼ�ε�һ�����ݡ�
//   16 * ��ڲ����� x		ָ����ʾλ�ã�x����
//   17 *           y		ָ����ʾλ�ã�y����
//   18 *           dat		Ҫ�����ʾ�����ݡ�
//   19 *           no      Ҫ��ʾ���еĵ����
//   20 * ���ڲ���������ֵΪ1ʱ��ʾ�����ɹ���Ϊ0ʱ��ʾ����ʧ�ܡ�
//   21 * ˵��������ʧ��ԭ����ָ����ַ������Ч��Χ��
//   22 ****************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function GUI_LoadLine
        THUMB
//   23 uint8  GUI_LoadLine(uint32 x, uint32 y, uint8 *dat, uint32 no)
//   24 {  uint8   bit_dat=0;
GUI_LoadLine:
        PUSH     {R4-R10,LR}
          CFI R14 Frame(CFA, -4)
          CFI R10 Frame(CFA, -8)
          CFI R9 Frame(CFA, -12)
          CFI R8 Frame(CFA, -16)
          CFI R7 Frame(CFA, -20)
          CFI R6 Frame(CFA, -24)
          CFI R5 Frame(CFA, -28)
          CFI R4 Frame(CFA, -32)
          CFI CFA R13+32
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R9,R2
        MOVS     R6,R3
        MOVS     R7,#+0
//   25    uint8   i;
//   26    TCOLOR  bakc;
//   27 
//   28    /* �������� */
//   29    if(x>=GUI_LCM_XMAX) return(0);
        CMP      R4,#+128
        BCC.N    ??GUI_LoadLine_0
        MOVS     R0,#+0
        B.N      ??GUI_LoadLine_1
//   30    if(y>=GUI_LCM_YMAX) return(0);
??GUI_LoadLine_0:
        CMP      R5,#+64
        BCC.N    ??GUI_LoadLine_2
        MOVS     R0,#+0
        B.N      ??GUI_LoadLine_1
//   31    
//   32    for(i=0; i<no; i++)
??GUI_LoadLine_2:
        MOVS     R0,#+0
        MOV      R10,R0
??GUI_LoadLine_3:
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        CMP      R10,R6
        BCS.N    ??GUI_LoadLine_4
//   33    {  /* �ж��Ƿ�Ҫ��ȡ�������� */
//   34       if( (i%8)==0 ) bit_dat = *dat++;
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        MOVS     R0,#+8
        SDIV     R1,R10,R0
        MLS      R0,R0,R1,R10
        CMP      R0,#+0
        BNE.N    ??GUI_LoadLine_5
        LDRB     R0,[R9, #+0]
        MOVS     R7,R0
        ADDS     R9,R9,#+1
//   35      
//   36       /* ������Ӧ�ĵ�Ϊcolor��Ϊback_color */
//   37       if( (bit_dat&DCB2HEX_TAB[i&0x07])==0 ) GUI_CopyColor(&bakc, back_color); 
??GUI_LoadLine_5:
        LDR.N    R0,??DataTable1
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        ANDS     R1,R10,#0x7
        LDRB     R1,[R0, R1]
        TST      R7,R1
        BNE.N    ??GUI_LoadLine_6
        LDR.N    R0,??DataTable1_1
        LDRB     R0,[R0, #+0]
        MOV      R8,R0
        B.N      ??GUI_LoadLine_7
//   38          else  GUI_CopyColor(&bakc, disp_color);
??GUI_LoadLine_6:
        LDR.N    R0,??DataTable1_2
        LDRB     R0,[R0, #+0]
        MOV      R8,R0
//   39       GUI_Point(x, y, bakc);       
??GUI_LoadLine_7:
        MOV      R2,R8
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall GUI_Point
        BL       GUI_Point
//   40      
//   41       if( (++x)>=GUI_LCM_XMAX ) return(0);
        ADDS     R4,R4,#+1
        CMP      R4,#+128
        BCC.N    ??GUI_LoadLine_8
        MOVS     R0,#+0
        B.N      ??GUI_LoadLine_1
//   42    }
??GUI_LoadLine_8:
        ADDS     R10,R10,#+1
        B.N      ??GUI_LoadLine_3
//   43    
//   44    return(1);
??GUI_LoadLine_4:
        MOVS     R0,#+1
??GUI_LoadLine_1:
        POP      {R4-R10,PC}      ;; return
//   45 }
          CFI EndBlock cfiBlock0
//   46 #endif
//   47 
//   48 
//   49 #if  (GUI_LoadPic_EN==1)|(GUI_MenuIco_EN==1)
//   50 /****************************************************************************
//   51 * ���ƣ�GUI_LoadPic()
//   52 * ���ܣ������ɫͼ�����ݡ�
//   53 * ��ڲ����� x		ָ����ʾλ�ã�x����
//   54 *           y		ָ����ʾλ�ã�y����
//   55 *           dat		Ҫ�����ʾ������
//   56 *           hno     Ҫ��ʾ���еĵ����
//   57 *           lno     Ҫ��ʾ���еĵ����
//   58 * ���ڲ�������
//   59 * ˵��������ʧ��ԭ����ָ����ַ������Ч��Χ��
//   60 ****************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function GUI_LoadPic
        THUMB
//   61 void  GUI_LoadPic(uint32 x, uint32 y, uint8 *dat, uint32 hno, uint32 lno)
//   62 {  uint32  i;
GUI_LoadPic:
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
        LDR      R8,[SP, #+32]
//   63 
//   64 if(OLED_OPEN)
        LDR.N    R0,??DataTable1_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??GUI_LoadPic_0
//   65 {
//   66    for(i=0; i<lno; i++)
        MOVS     R0,#+0
        MOV      R9,R0
??GUI_LoadPic_1:
        CMP      R9,R8
        BCS.N    ??GUI_LoadPic_0
//   67    {  GUI_LoadLine(x, y, dat, hno);				// ���һ������
        MOVS     R3,R7
        MOVS     R2,R6
        MOVS     R1,R5
        MOVS     R0,R4
          CFI FunCall GUI_LoadLine
        BL       GUI_LoadLine
//   68       y++;										// ��ʾ��һ��
        ADDS     R5,R5,#+1
//   69       dat += (hno>>3);							// ������һ�е�����
        MOVS     R0,R7
        LSRS     R0,R0,#+3
        ADD      R6,R6,R0
//   70       if( (hno&0x07)!=0 ) dat++;
        TST      R7,#0x7
        BEQ.N    ??GUI_LoadPic_2
        ADDS     R6,R6,#+1
//   71    }
??GUI_LoadPic_2:
        ADDS     R9,R9,#+1
        B.N      ??GUI_LoadPic_1
//   72 }
//   73 }
??GUI_LoadPic_0:
        POP      {R0,R4-R9,PC}    ;; return
          CFI EndBlock cfiBlock1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     DCB2HEX_TAB

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     back_color

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     disp_color

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     OLED_OPEN
//   74 
//   75 
//   76 
//   77 
//   78 /****************************************************************************
//   79 * ���ƣ�GUI_LoadPic1()
//   80 * ���ܣ������ɫͼ�����ݣ�������ʾ��
//   81 * ��ڲ����� x		ָ����ʾλ�ã�x����
//   82 *           y		ָ����ʾλ�ã�y����
//   83 *           dat		Ҫ�����ʾ�����ݡ�
//   84 *           hno     Ҫ��ʾ���еĵ����
//   85 *           lno     Ҫ��ʾ���еĵ����
//   86 * ���ڲ�������
//   87 * ˵��������ʧ��ԭ����ָ����ַ������Ч��Χ��
//   88 ****************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function GUI_LoadPic1
        THUMB
//   89 void  GUI_LoadPic1(uint32 x, uint32 y, uint8 *dat, uint32 hno, uint32 lno)
//   90 {  uint32  i;
GUI_LoadPic1:
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
        LDR      R8,[SP, #+32]
//   91    
//   92    GUI_ExchangeColor();									// ��ʾɫ�뱳��ɫ����
          CFI FunCall GUI_ExchangeColor
        BL       GUI_ExchangeColor
//   93    for(i=0; i<lno; i++)
        MOVS     R0,#+0
        MOV      R9,R0
??GUI_LoadPic1_0:
        CMP      R9,R8
        BCS.N    ??GUI_LoadPic1_1
//   94    {  GUI_LoadLine(x, y, dat, hno);						// ���һ������
        MOVS     R3,R7
        MOVS     R2,R6
        MOVS     R1,R5
        MOVS     R0,R4
          CFI FunCall GUI_LoadLine
        BL       GUI_LoadLine
//   95       y++;												// ��ʾ��һ��
        ADDS     R5,R5,#+1
//   96       dat += (hno>>3);									// ������һ�е�����
        MOVS     R0,R7
        LSRS     R0,R0,#+3
        ADD      R6,R6,R0
//   97       if( (hno&0x07)!=0 ) dat++;
        TST      R7,#0x7
        BEQ.N    ??GUI_LoadPic1_2
        ADDS     R6,R6,#+1
//   98    }
??GUI_LoadPic1_2:
        ADDS     R9,R9,#+1
        B.N      ??GUI_LoadPic1_0
//   99    GUI_ExchangeColor();
??GUI_LoadPic1_1:
          CFI FunCall GUI_ExchangeColor
        BL       GUI_ExchangeColor
//  100    
//  101 }
        POP      {R0,R4-R9,PC}    ;; return
          CFI EndBlock cfiBlock2
//  102 #endif
//  103 
//  104 
//  105 #if  GUI_PutHZ_EN==1
//  106 /****************************************************************************
//  107 * ���ƣ�GUI_PutHZ()
//  108 * ���ܣ���ʾ���֡�
//  109 * ��ڲ����� x		ָ����ʾλ�ã�x����
//  110 *           y		ָ����ʾλ�ã�y����
//  111 *           dat		Ҫ�����ʾ�ĺ��ֵ������ݡ�
//  112 *           hno     Ҫ��ʾ���еĵ����
//  113 *           lno     Ҫ��ʾ���еĵ����
//  114 * ���ڲ�������
//  115 * ˵��������ʧ��ԭ����ָ����ַ������Ч��Χ��
//  116 ****************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function GUI_PutHZ
        THUMB
//  117 void  GUI_PutHZ(uint32 x, uint32 y, uint8 *dat, uint8 hno, uint8 lno)
//  118 {  uint8  i;
GUI_PutHZ:
        PUSH     {R3-R9,LR}
          CFI R14 Frame(CFA, -4)
          CFI R9 Frame(CFA, -8)
          CFI R8 Frame(CFA, -12)
          CFI R7 Frame(CFA, -16)
          CFI R6 Frame(CFA, -20)
          CFI R5 Frame(CFA, -24)
          CFI R4 Frame(CFA, -28)
          CFI CFA R13+32
        MOVS     R5,R0
        MOVS     R6,R1
        MOVS     R7,R2
        MOV      R8,R3
        LDR      R4,[SP, #+32]
//  119 
//  120    for(i=0; i<lno; i++)
        MOVS     R0,#+0
        MOV      R9,R0
??GUI_PutHZ_0:
        MOV      R0,R9
        MOVS     R1,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R0,R1
        BCS.N    ??GUI_PutHZ_1
//  121    {  GUI_LoadLine(x, y, dat, hno);						// ���һ������
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        MOV      R3,R8
        MOVS     R2,R7
        MOVS     R1,R6
        MOVS     R0,R5
          CFI FunCall GUI_LoadLine
        BL       GUI_LoadLine
//  122       y++;												// ��ʾ��һ��
        ADDS     R6,R6,#+1
//  123       dat += (hno>>3);									// ������һ�е�����
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        MOV      R0,R8
        ASRS     R0,R0,#+3
        ADD      R7,R7,R0
//  124       if( (hno&0x07)!=0 ) dat++;
        TST      R8,#0x7
        BEQ.N    ??GUI_PutHZ_2
        ADDS     R7,R7,#+1
//  125    }
??GUI_PutHZ_2:
        ADDS     R9,R9,#+1
        B.N      ??GUI_PutHZ_0
//  126 }
??GUI_PutHZ_1:
        POP      {R0,R4-R9,PC}    ;; return
          CFI EndBlock cfiBlock3

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  127 #endif
//  128 
//  129 
//  130 
//  131 
//  132 
//  133 
// 
// 370 bytes in section .text
// 
// 370 bytes of CODE memory
//
//Errors: none
//Warnings: none
