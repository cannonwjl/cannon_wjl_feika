///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      12/Jun/2017  17:33:00
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\@@@@@@@\Car\Board\src\VCAN_BMP.c
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EWEF5F.tmp
//        (D:\@@@@@@@\Car\Board\src\VCAN_BMP.c -D DEBUG -D
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
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\VCAN_BMP.s
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

        EXTERN LCD_ILI9341_ptlon
        EXTERN __aeabi_memclr4
        EXTERN f_close
        EXTERN f_lseek
        EXTERN f_mount
        EXTERN f_open
        EXTERN f_read

        PUBLIC BMP_Buffer
        PUBLIC SD2LCD_BMP
        
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
        
// D:\@@@@@@@\Car\Board\src\VCAN_BMP.c
//    1 //֧��24bit BMPͼƬ��ʾ
//    2 #include "common.h"
//    3 #include "VCAN_BMP.h"
//    4 #include "ff.h"
//    5 #include "vcan_lcd.h"
//    6 
//    7 
//    8 #define BMP_SIZE(W,H)           ((((W)*4+3)/4)*(H))         //((w * 4)+3)/4  �� Ϊ�� �� 1 ����Ϊ bmp ��� �� 4 �� ����
//    9 #define BMP_BYTECNT(W,H,BIT)    (BMP_SIZE(W,H)*BIT/8)
//   10 
//   11 #define MAX_BMP_SIZE            BMP_SIZE(MAX_BMP_W,MAX_BMP_H)
//   12 #define MAX_BMP_BYTECNT         BMP_BYTECNT(MAX_BMP_W,MAX_BMP_H,MAX_BMP_BIT)
//   13 
//   14 #define BMP_LINE_BYTE(W,BIT)    ((((W)*(BIT)+31)/32)*4)
//   15 #define MAX_BMP_LINE_BYTE       BMP_LINE_BYTE(MAX_BMP_W,MAX_BMP_BIT)
//   16 
//   17 
//   18 
//   19 //BMPһ��ͼ��

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   20 uint8 BMP_Buffer[MAX_BMP_LINE_BYTE];
BMP_Buffer:
        DS8 960
//   21 
//   22 

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function SD2LCD_BMP
        THUMB
//   23 int8 SD2LCD_BMP(char *file,Site_t site0)
//   24 {
SD2LCD_BMP:
        PUSH     {R0,R1,R4-R11,LR}
          CFI R14 Frame(CFA, -4)
          CFI R11 Frame(CFA, -8)
          CFI R10 Frame(CFA, -12)
          CFI R9 Frame(CFA, -16)
          CFI R8 Frame(CFA, -20)
          CFI R7 Frame(CFA, -24)
          CFI R6 Frame(CFA, -28)
          CFI R5 Frame(CFA, -32)
          CFI R4 Frame(CFA, -36)
          CFI CFA R13+44
        SUB      SP,SP,#+1024
          CFI CFA R13+1068
        SUB      SP,SP,#+172
          CFI CFA R13+1240
//   25     //�ļ�ϵͳ��ص� ����
//   26     FATFS fs={0};
        ADD      R0,SP,#+636
        MOV      R1,#+560
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
//   27     FIL fsrc={0};   
        ADD      R0,SP,#+88
        MOV      R1,#+548
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
//   28     FRESULT res;
//   29     uint32 br;    
//   30 
//   31     
//   32     BMP_FILEHEADER BmpHead;
//   33 
//   34     int Width,Height ;
//   35     uint32 OffBits,Bitcnt ;
//   36 
//   37 
//   38 
//   39     uint8 r,g,b ;
//   40     uint16 rgb;
//   41 
//   42     Size_t size;
//   43     Site_t site;
//   44 
//   45     int x=0,y=0,BytesPerLine,Step ;
        MOVS     R9,#+0
        MOVS     R10,#+0
//   46 
//   47     uint8 *pColor;
//   48 
//   49 
//   50     f_mount(0,&fs);
        ADD      R1,SP,#+636
        MOVS     R0,#+0
          CFI FunCall f_mount
        BL       f_mount
//   51 
//   52     //���ļ�
//   53     res=f_open(&fsrc,file,FA_OPEN_EXISTING | FA_READ);
        MOVS     R2,#+1
        LDR      R1,[SP, #+1196]
        ADD      R0,SP,#+88
          CFI FunCall f_open
        BL       f_open
        MOVS     R4,R0
//   54     if(res)
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.W    ??SD2LCD_BMP_0
//   55     {
//   56         goto bmp_exit_false;
//   57     }
//   58 
//   59     //��ȡBMP ͷ���ļ�
//   60     res=f_read(&fsrc,&BmpHead,sizeof(BmpHead),&br);
??SD2LCD_BMP_1:
        ADD      R3,SP,#+16
        MOVS     R2,#+54
        ADD      R1,SP,#+32
        ADD      R0,SP,#+88
          CFI FunCall f_read
        BL       f_read
        MOVS     R4,R0
//   61     if(res)
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.W    ??SD2LCD_BMP_0
//   62     {
//   63         goto bmp_exit_false;
//   64     }
//   65 
//   66     Width       = BmpHead.biWidth;
??SD2LCD_BMP_2:
        LDR      R0,[SP, #+50]
        MOV      R11,R0
//   67     Height      = BmpHead.biHeight;
        LDR      R0,[SP, #+54]
        MOVS     R6,R0
//   68     OffBits     = BmpHead.bfOffBits;        //bmp��ɫ������ʼλ��
        LDR      R0,[SP, #+42]
        STR      R0,[SP, #+24]
//   69     Bitcnt      = BmpHead.biBitCount;
        LDRH     R0,[SP, #+60]
        STR      R0,[SP, #+28]
//   70 
//   71     if((BmpHead.bfType != 0x4d42)||(BmpHead.biCompression))           //'BM' ��  ûѹ��
        LDRH     R0,[SP, #+32]
        MOVW     R1,#+19778
        CMP      R0,R1
        BNE.N    ??SD2LCD_BMP_3
        LDR      R0,[SP, #+62]
        CMP      R0,#+0
        BEQ.N    ??SD2LCD_BMP_4
//   72     {
//   73         DEBUG_PRINTF("\r\n��֧�ָ�ͼƬ��ʾ��");
//   74         goto bmp_exit_false;
??SD2LCD_BMP_3:
        B.N      ??SD2LCD_BMP_0
//   75     }
//   76 
//   77     if(Width > MAX_BMP_W)                   //ͼƬ��Ȳ��ܳ���MAX_BMP_W
??SD2LCD_BMP_4:
        MOVW     R0,#+321
        CMP      R11,R0
        BGE.W    ??SD2LCD_BMP_0
//   78     {
//   79         DEBUG_PRINTF("\r\nͼƬ̫���޷���ʾ��");
//   80         goto bmp_exit_false;
//   81     }
//   82 
//   83     if(Height>0)                            //����߶��� ������ͼ������½����϶�����
??SD2LCD_BMP_5:
        CMP      R6,#+1
        BLT.N    ??SD2LCD_BMP_6
//   84     {
//   85         y = Height -1;
        SUBS     R0,R6,#+1
        MOV      R10,R0
//   86         Step = -1;
        MOVS     R0,#-1
        MOVS     R5,R0
        B.N      ??SD2LCD_BMP_7
//   87     }
//   88     else if(Height < 0)                     //����߶��� ������ͼ������Ͻ����¶�����
??SD2LCD_BMP_6:
        CMP      R6,#+0
        BPL.N    ??SD2LCD_BMP_8
//   89     {
//   90         Height = -Height;
        RSBS     R6,R6,#+0
//   91         y = 0;
        MOVS     R0,#+0
        MOV      R10,R0
//   92         Step = 1;
        MOVS     R0,#+1
        MOVS     R5,R0
        B.N      ??SD2LCD_BMP_7
//   93     }
//   94     else
//   95     {
//   96         goto bmp_exit_false;
??SD2LCD_BMP_8:
        B.N      ??SD2LCD_BMP_0
//   97     }
//   98 
//   99     //һ��һ�ж�ȡ
//  100     size.H = 1;
??SD2LCD_BMP_7:
        MOVS     R0,#+1
        STRH     R0,[SP, #+14]
//  101     size.W = Width;
        MOV      R0,R11
        STRH     R0,[SP, #+12]
//  102     site.x = site0.x;
        LDRH     R0,[SP, #+1200]
        STRH     R0,[SP, #+8]
//  103     BytesPerLine = BMP_LINE_BYTE(Width,Bitcnt);       //һ�е���Ŀ
        LDR      R0,[SP, #+28]
        MUL      R0,R0,R11
        ADDS     R0,R0,#+31
        LSRS     R0,R0,#+5
        LSLS     R0,R0,#+2
        STR      R0,[SP, #+20]
//  104 
//  105     switch(Bitcnt)
        LDR      R0,[SP, #+28]
        CMP      R0,#+1
        BEQ.W    ??SD2LCD_BMP_9
        CMP      R0,#+16
        BEQ.N    ??SD2LCD_BMP_10
        CMP      R0,#+24
        BNE.W    ??SD2LCD_BMP_11
//  106     {
//  107         case 24:        //24λ���ɫ :BGR24
//  108         {
//  109             //��ʼ��ͼ
//  110             res=f_lseek(&fsrc,OffBits); //�ҵ�bmp��ɫ������ʼλ��
??SD2LCD_BMP_12:
        LDR      R1,[SP, #+24]
        ADD      R0,SP,#+88
          CFI FunCall f_lseek
        BL       f_lseek
        MOVS     R4,R0
//  111 
//  112             for(;(y<Height)&&(y>=0);y+=Step)
??SD2LCD_BMP_13:
        CMP      R10,R6
        BGE.N    ??SD2LCD_BMP_14
        CMP      R10,#+0
        BMI.N    ??SD2LCD_BMP_14
//  113             {
//  114                 res=f_read(&fsrc,BMP_Buffer,BytesPerLine,&br);
        ADD      R3,SP,#+16
        LDR      R2,[SP, #+20]
        LDR.N    R1,??SD2LCD_BMP_15
        ADD      R0,SP,#+88
          CFI FunCall f_read
        BL       f_read
        MOVS     R4,R0
//  115                 if(res) goto bmp_exit_false;
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.W    ??SD2LCD_BMP_0
//  116                 pColor = BMP_Buffer;
??SD2LCD_BMP_16:
        LDR.N    R0,??SD2LCD_BMP_15
        MOV      R8,R0
//  117 
//  118                 //���ڵ���Һ������ӿ�Ч�ʲ��ߣ�����ֱ�ӵ��õײ�
//  119                 site.y = site0.y +y;
        LDRH     R0,[SP, #+1202]
        ADDS     R0,R10,R0
        STRH     R0,[SP, #+10]
//  120                 LCD_PTLON(site, size);              //����
        LDR      R1,[SP, #+12]
        LDR      R0,[SP, #+8]
          CFI FunCall LCD_ILI9341_ptlon
        BL       LCD_ILI9341_ptlon
//  121                 LCD_RAMWR();                        //д�ڴ�
        MOVS     R0,#+44
        MOVS     R1,#+1610612736
        STRH     R0,[R1, #+0]
//  122 
//  123                 for(x=0;x<Width;x++)
        MOVS     R0,#+0
        MOV      R9,R0
??SD2LCD_BMP_17:
        CMP      R9,R11
        BGE.N    ??SD2LCD_BMP_18
//  124                 {
//  125                     //BGR24
//  126                     b=*pColor++;
        LDRB     R0,[R8, #+0]
        STRB     R0,[SP, #+0]
        ADDS     R8,R8,#+1
//  127                     g=*pColor++;
        LDRB     R0,[R8, #+0]
        STRB     R0,[SP, #+1]
        ADDS     R8,R8,#+1
//  128                     r=*pColor++;
        LDRB     R0,[R8, #+0]
        STRB     R0,[SP, #+2]
        ADDS     R8,R8,#+1
//  129 
//  130                     rgb = RGB24_RGB565(r,g,b);
        LDRB     R0,[SP, #+2]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDRB     R1,[SP, #+1]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSRS     R1,R1,#+2
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R1,R1,#+5
        ORRS     R1,R1,R0, LSL #+11
        LDRB     R0,[SP, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ORRS     R1,R0,R1
        MOVS     R7,R1
//  131                     LCD_WR_DATA( rgb);
        MOVS     R0,#+1744830464
        STRH     R7,[R0, #+0]
//  132                 }
        ADDS     R9,R9,#+1
        B.N      ??SD2LCD_BMP_17
//  133             }
??SD2LCD_BMP_18:
        ADDS     R10,R5,R10
        B.N      ??SD2LCD_BMP_13
//  134             break;
??SD2LCD_BMP_14:
        B.N      ??SD2LCD_BMP_19
//  135 
//  136         }
//  137 
//  138         //16λ�У���͵�5λ��ʾ��ɫ�������м��5λ��ʾ��ɫ�������ߵ�5λ��ʾ��ɫ������һ��ռ����15λ����ߵ�һλ��������Ϊ0�����ָ�ʽҲ������555 16λλͼ��
//  139         //����� RBG565 ,��ô biCompression = BI_BITFIELDS ��
//  140         case 16:        //16λ�߲�ɫ
//  141         {
//  142             //��ʼ��ͼ
//  143             res=f_lseek(&fsrc,OffBits); //�ҵ�bmp��ɫ������ʼλ��
??SD2LCD_BMP_10:
        LDR      R1,[SP, #+24]
        ADD      R0,SP,#+88
          CFI FunCall f_lseek
        BL       f_lseek
        MOVS     R4,R0
//  144 
//  145             for(;(y<Height)&&(y>=0);y+=Step)
??SD2LCD_BMP_20:
        CMP      R10,R6
        BGE.N    ??SD2LCD_BMP_21
        CMP      R10,#+0
        BMI.N    ??SD2LCD_BMP_21
//  146             {
//  147                 res=f_read(&fsrc,BMP_Buffer,BytesPerLine,&br);
        ADD      R3,SP,#+16
        LDR      R2,[SP, #+20]
        LDR.N    R1,??SD2LCD_BMP_15
        ADD      R0,SP,#+88
          CFI FunCall f_read
        BL       f_read
        MOVS     R4,R0
//  148                 if(res)goto bmp_exit_false;
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.W    ??SD2LCD_BMP_0
//  149                 pColor = BMP_Buffer;
??SD2LCD_BMP_22:
        LDR.N    R0,??SD2LCD_BMP_15
        MOV      R8,R0
//  150 
//  151                 //���ڵ���Һ������ӿ�Ч�ʲ��ߣ�����ֱ�ӵ��õײ�
//  152                 site.y = site0.y +y;
        LDRH     R0,[SP, #+1202]
        ADDS     R0,R10,R0
        STRH     R0,[SP, #+10]
//  153                 LCD_PTLON(site, size);              //����
        LDR      R1,[SP, #+12]
        LDR      R0,[SP, #+8]
          CFI FunCall LCD_ILI9341_ptlon
        BL       LCD_ILI9341_ptlon
//  154                 LCD_RAMWR();                        //д�ڴ�
        MOVS     R0,#+44
        MOVS     R1,#+1610612736
        STRH     R0,[R1, #+0]
//  155 
//  156                 for(x=0;x<Width;x++)
        MOVS     R0,#+0
        MOV      R9,R0
??SD2LCD_BMP_23:
        CMP      R9,R11
        BGE.N    ??SD2LCD_BMP_24
//  157                 {
//  158                     rgb = *(uint16 *)pColor;    //bgr555
        LDRH     R0,[R8, #+0]
        MOVS     R7,R0
//  159                     rgb = RGB555_RGB565(rgb);
        MOVW     R0,#+65472
        ANDS     R0,R0,R7, LSL #+1
        ANDS     R7,R7,#0x1F
        ORRS     R7,R7,R0
//  160 
//  161                     LCD_WR_DATA( rgb);
        MOVS     R0,#+1744830464
        STRH     R7,[R0, #+0]
//  162 
//  163                     pColor+=2;
        ADDS     R8,R8,#+2
//  164                 }
        ADDS     R9,R9,#+1
        B.N      ??SD2LCD_BMP_23
//  165             }
??SD2LCD_BMP_24:
        ADDS     R10,R5,R10
        B.N      ??SD2LCD_BMP_20
//  166             break;
??SD2LCD_BMP_21:
        B.N      ??SD2LCD_BMP_19
//  167         }
//  168 
//  169         //��ɫBMP���ļ���ͷ������2��RGBQUAD�ĵ�ɫ����ɫ����ʾ 0 �� 1 �ֱ��Ӧ����ɫ��
//  170         //һ���� 0Ϊ�� �� 1 Ϊ ��
//  171         case 1:         //��ɫ
//  172         {
//  173             //�����ļ�ͷ�����϶� ���԰�
//  174             res=f_read(&fsrc,BMP_Buffer,2*sizeof(RGBQUAD),&br);
??SD2LCD_BMP_9:
        ADD      R3,SP,#+16
        MOVS     R2,#+8
        LDR.N    R1,??SD2LCD_BMP_15
        ADD      R0,SP,#+88
          CFI FunCall f_read
        BL       f_read
        MOVS     R4,R0
//  175             uint16 color[2];
//  176             color[0] = RGB24_RGB565(BMP_Buffer[2],BMP_Buffer[1],BMP_Buffer[0]);
        LDR.N    R0,??SD2LCD_BMP_15
        LDRB     R0,[R0, #+2]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??SD2LCD_BMP_15
        LDRB     R1,[R1, #+1]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSRS     R1,R1,#+2
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R1,R1,#+5
        ORRS     R1,R1,R0, LSL #+11
        LDR.N    R0,??SD2LCD_BMP_15
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ORRS     R1,R0,R1
        STRH     R1,[SP, #+4]
//  177             color[1] = RGB24_RGB565(BMP_Buffer[6],BMP_Buffer[5],BMP_Buffer[4]);
        LDR.N    R0,??SD2LCD_BMP_15
        LDRB     R0,[R0, #+6]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??SD2LCD_BMP_15
        LDRB     R1,[R1, #+5]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSRS     R1,R1,#+2
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R1,R1,#+5
        ORRS     R1,R1,R0, LSL #+11
        LDR.N    R0,??SD2LCD_BMP_15
        LDRB     R0,[R0, #+4]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ORRS     R1,R0,R1
        STRH     R1,[SP, #+6]
//  178 
//  179             //��ʼ��ͼ
//  180             res=f_lseek(&fsrc,OffBits);         //�ҵ�bmp��ɫ������ʼλ��
        LDR      R1,[SP, #+24]
        ADD      R0,SP,#+88
          CFI FunCall f_lseek
        BL       f_lseek
        MOVS     R4,R0
//  181 
//  182             Width = (Width+7)/8;                //8������һ����(+7�ǽ�1)
        ADDS     R11,R11,#+7
        MOVS     R0,#+8
        SDIV     R11,R11,R0
//  183 
//  184             for(;(y<Height)&&(y>=0);y+=Step)
??SD2LCD_BMP_25:
        CMP      R10,R6
        BGE.W    ??SD2LCD_BMP_26
        CMP      R10,#+0
        BMI.N    ??SD2LCD_BMP_26
//  185             {
//  186                 res=f_read(&fsrc,BMP_Buffer,BytesPerLine,&br);
        ADD      R3,SP,#+16
        LDR      R2,[SP, #+20]
        LDR.N    R1,??SD2LCD_BMP_15
        ADD      R0,SP,#+88
          CFI FunCall f_read
        BL       f_read
        MOVS     R4,R0
//  187                 if(res)goto bmp_exit_false;
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??SD2LCD_BMP_0
//  188                 pColor = BMP_Buffer;
??SD2LCD_BMP_27:
        LDR.N    R0,??SD2LCD_BMP_15
        MOV      R8,R0
//  189 
//  190                 //���ڵ���Һ������ӿ�Ч�ʲ��ߣ�����ֱ�ӵ��õײ�
//  191                 site.y = site0.y +y;
        LDRH     R0,[SP, #+1202]
        ADDS     R0,R10,R0
        STRH     R0,[SP, #+10]
//  192                 LCD_PTLON(site, size);              //����
        LDR      R1,[SP, #+12]
        LDR      R0,[SP, #+8]
          CFI FunCall LCD_ILI9341_ptlon
        BL       LCD_ILI9341_ptlon
//  193                 LCD_RAMWR();                        //д�ڴ�
        MOVS     R0,#+44
        MOVS     R1,#+1610612736
        STRH     R0,[R1, #+0]
//  194 
//  195                 for(x=0;x<Width;x++)
        MOVS     R0,#+0
        MOV      R9,R0
??SD2LCD_BMP_28:
        CMP      R9,R11
        BGE.N    ??SD2LCD_BMP_29
//  196                 {
//  197                     rgb = color[(*pColor >> 7)&0x01];
        ADD      R0,SP,#+4
        LDRB     R1,[R8, #+0]
        ASRS     R1,R1,#+7
        LDRH     R0,[R0, R1, LSL #+1]
        MOVS     R7,R0
//  198                     LCD_WR_DATA( rgb);
        MOVS     R0,#+1744830464
        STRH     R7,[R0, #+0]
//  199                     rgb = color[(*pColor >> 6)&0x01];
        ADD      R0,SP,#+4
        LDRB     R1,[R8, #+0]
        UBFX     R1,R1,#+6,#+1
        LDRH     R0,[R0, R1, LSL #+1]
        MOVS     R7,R0
//  200                     LCD_WR_DATA( rgb);
        MOVS     R0,#+1744830464
        STRH     R7,[R0, #+0]
//  201                     rgb = color[(*pColor >> 5)&0x01];
        ADD      R0,SP,#+4
        LDRB     R1,[R8, #+0]
        UBFX     R1,R1,#+5,#+1
        LDRH     R0,[R0, R1, LSL #+1]
        MOVS     R7,R0
//  202                     LCD_WR_DATA( rgb);
        MOVS     R0,#+1744830464
        STRH     R7,[R0, #+0]
//  203                     rgb = color[(*pColor >> 4)&0x01];
        ADD      R0,SP,#+4
        LDRB     R1,[R8, #+0]
        UBFX     R1,R1,#+4,#+1
        LDRH     R0,[R0, R1, LSL #+1]
        MOVS     R7,R0
//  204                     LCD_WR_DATA( rgb);
        MOVS     R0,#+1744830464
        STRH     R7,[R0, #+0]
//  205                     rgb = color[(*pColor >> 3)&0x01];
        ADD      R0,SP,#+4
        LDRB     R1,[R8, #+0]
        UBFX     R1,R1,#+3,#+1
        LDRH     R0,[R0, R1, LSL #+1]
        MOVS     R7,R0
//  206                     LCD_WR_DATA( rgb);
        MOVS     R0,#+1744830464
        STRH     R7,[R0, #+0]
//  207                     rgb = color[(*pColor >> 2)&0x01];
        ADD      R0,SP,#+4
        LDRB     R1,[R8, #+0]
        UBFX     R1,R1,#+2,#+1
        LDRH     R0,[R0, R1, LSL #+1]
        MOVS     R7,R0
//  208                     LCD_WR_DATA( rgb);
        MOVS     R0,#+1744830464
        STRH     R7,[R0, #+0]
//  209                     rgb = color[(*pColor >> 1)&0x01];
        ADD      R0,SP,#+4
        LDRB     R1,[R8, #+0]
        UBFX     R1,R1,#+1,#+1
        LDRH     R0,[R0, R1, LSL #+1]
        MOVS     R7,R0
//  210                     LCD_WR_DATA( rgb);
        MOVS     R0,#+1744830464
        STRH     R7,[R0, #+0]
//  211                     rgb = color[(*pColor >> 0)&0x01];
        ADD      R0,SP,#+4
        LDRB     R1,[R8, #+0]
        ANDS     R1,R1,#0x1
        LDRH     R0,[R0, R1, LSL #+1]
        MOVS     R7,R0
//  212                     LCD_WR_DATA( rgb);
        MOVS     R0,#+1744830464
        STRH     R7,[R0, #+0]
//  213 
//  214                     pColor+=1;
        ADDS     R8,R8,#+1
//  215                 }
        ADDS     R9,R9,#+1
        B.N      ??SD2LCD_BMP_28
//  216             }
??SD2LCD_BMP_29:
        ADDS     R10,R5,R10
        B.N      ??SD2LCD_BMP_25
//  217     
//  218             break;
??SD2LCD_BMP_26:
        B.N      ??SD2LCD_BMP_19
//  219 
//  220         }
//  221         
//  222         default:
//  223         DEBUG_PRINTF("\r\n��֧�ָ�ͼƬ��ʾ��");
//  224         goto bmp_exit_false;
??SD2LCD_BMP_11:
        B.N      ??SD2LCD_BMP_0
//  225 
//  226     }
//  227 
//  228     f_close(&fsrc);
??SD2LCD_BMP_19:
        ADD      R0,SP,#+88
          CFI FunCall f_close
        BL       f_close
//  229     f_mount(0,NULL);
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall f_mount
        BL       f_mount
//  230 
//  231     return TRUE;
        MOVS     R0,#+1
        B.N      ??SD2LCD_BMP_30
//  232 
//  233 bmp_exit_false:
//  234     f_close(&fsrc);
??SD2LCD_BMP_0:
        ADD      R0,SP,#+88
          CFI FunCall f_close
        BL       f_close
//  235     f_mount(0,NULL);
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall f_mount
        BL       f_mount
//  236 
//  237     return FALSE;
        MOVS     R0,#+0
??SD2LCD_BMP_30:
        ADD      SP,SP,#+1024
          CFI CFA R13+216
        ADD      SP,SP,#+180
          CFI CFA R13+36
        POP      {R4-R11,PC}      ;; return
        DATA
??SD2LCD_BMP_15:
        DC32     BMP_Buffer
//  238 }
          CFI EndBlock cfiBlock0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 0, 0, 0, 0, 0, 0
        DC16 0, 0
        DC8 0, 0
        DC32 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0

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
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  239 /*************************** End of file ****************************/
// 
//   960 bytes in section .bss
// 1 108 bytes in section .rodata
//   968 bytes in section .text
// 
//   968 bytes of CODE  memory
// 1 108 bytes of CONST memory
//   960 bytes of DATA  memory
//
//Errors: none
//Warnings: none
