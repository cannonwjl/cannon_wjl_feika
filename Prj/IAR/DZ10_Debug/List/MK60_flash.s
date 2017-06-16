///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      12/Jun/2017  17:32:53
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\@@@@@@@\Car\Chip\src\MK60_flash.c
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EWD3FC.tmp
//        (D:\@@@@@@@\Car\Chip\src\MK60_flash.c -D DEBUG -D
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
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\MK60_flash.s
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

        EXTERN assert_failed
        EXTERN systick_delay_ms

        PUBLIC Flash_Read_Plan
        PUBLIC Flash_Read_Pub
        PUBLIC Flash_Write_Plan
        PUBLIC Flash_Write_Pub
        PUBLIC flash_cmd
        PUBLIC flash_erase_sector
        PUBLIC flash_init
        PUBLIC flash_write
        PUBLIC flash_write_buf
        
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
        
// D:\@@@@@@@\Car\Chip\src\MK60_flash.c
//    1 /*!
//    2  *     COPYRIGHT NOTICE
//    3  *     Copyright (c) 2013,ɽ��Ƽ�
//    4  *     All rights reserved.
//    5  *     �������ۣ�ɽ����̳ http://www.vcan123.com
//    6  *
//    7  *     ��ע�������⣬�����������ݰ�Ȩ����ɽ��Ƽ����У�δ����������������ҵ��;��
//    8  *     �޸�����ʱ���뱣��ɽ��Ƽ��İ�Ȩ������
//    9  *
//   10  * @file       MK60_flash.c
//   11  * @brief      flash������
//   12  * @author     ɽ��Ƽ�
//   13  * @version    v5.2
//   14  * @date       2014-10-09
//   15  */
//   16 
//   17 
//   18 //����ͷ�ļ�
//   19 
//   20 #include "MK60_flash.h"
//   21 
//   22 //�궨�� FCCOB Number
//   23 #if defined(MK60DZ10)
//   24 #define     FCMD        FTFL_FCCOB0         //FTFL ����
//   25 
//   26 #define     FADDR2      FTFL_FCCOB1         //Flash address [23:16]
//   27 #define     FADDR1      FTFL_FCCOB2         //Flash address [15:8]
//   28 #define     FADDR0      FTFL_FCCOB3         //Flash address [7:0]
//   29 
//   30 #define     FDATA0      FTFL_FCCOB4         //Data Byte 0       //ע��һ�㣬4�ֽ�����FDATA3�����λ��FDATA0�����λ
//   31 #define     FDATA1      FTFL_FCCOB5         //Data Byte 1
//   32 #define     FDATA2      FTFL_FCCOB6         //Data Byte 2
//   33 #define     FDATA3      FTFL_FCCOB7         //Data Byte 3
//   34 #define     FDATA4      FTFL_FCCOB8         //Data Byte 4
//   35 #define     FDATA5      FTFL_FCCOB9         //Data Byte 5
//   36 #define     FDATA6      FTFL_FCCOBA         //Data Byte 6
//   37 #define     FDATA7      FTFL_FCCOBB         //Data Byte 7
//   38 
//   39 //FCMD ����
//   40 #define     RD1BLK    0x00   // ������Flash
//   41 #define     RD1SEC    0x01   // ����������
//   42 #define     PGMCHK    0x02   // д����
//   43 #define     RDRSRC    0x03   // ��Ŀ������(4�ֽ�)
//   44 #define     PGM4      0x06   // д�볤��(4�ֽ�)
//   45 #define     ERSBLK    0x08   // ��������Flash
//   46 #define     ERSSCR    0x09   // ����Flash����
//   47 #define     PGMSEC    0x0B   // д������
//   48 #define     RD1ALL    0x40   // �����еĿ�
//   49 #define     RDONCE    0x41   // ֻ��һ��
//   50 #define     PGMONCE   0x43   // ֻдһ��
//   51 #define     ERSALL    0x44   // �������п�
//   52 #define     VFYKEY    0x45   // ��֤���ŷ���Կ��
//   53 #define     PGMPART   0x80   // д�����
//   54 #define     SETRAM    0x81   // �趨FlexRAM����
//   55 
//   56 #elif defined(MK60F15)
//   57 #define     FCMD        FTFE_FCCOB0         //FTFL ����
//   58 
//   59 #define     FADDR2      FTFE_FCCOB1         //Flash address [23:16]
//   60 #define     FADDR1      FTFE_FCCOB2         //Flash address [15:8]
//   61 #define     FADDR0      FTFE_FCCOB3         //Flash address [7:0]
//   62 //Must be 64-bit aligned (Flash address [2:0] = 000)  8�ֽڶ���
//   63 
//   64 #define     FDATA0      FTFE_FCCOB4         //Data Byte 0       //ע��һ�㣬4�ֽ�����FDATA3�����λ��FDATA0�����λ
//   65 #define     FDATA1      FTFE_FCCOB5         //Data Byte 1
//   66 #define     FDATA2      FTFE_FCCOB6         //Data Byte 2
//   67 #define     FDATA3      FTFE_FCCOB7         //Data Byte 3
//   68 #define     FDATA4      FTFE_FCCOB8         //Data Byte 4
//   69 #define     FDATA5      FTFE_FCCOB9         //Data Byte 5
//   70 #define     FDATA6      FTFE_FCCOBA         //Data Byte 6
//   71 #define     FDATA7      FTFE_FCCOBB         //Data Byte 7
//   72 
//   73 //FCMD ����
//   74 #define     RD1BLK    0x00   // ������Flash
//   75 #define     RD1SEC    0x01   // ����������
//   76 #define     PGMCHK    0x02   // д����
//   77 #define     RDRSRC    0x03   // ��Ŀ������(8�ֽ�)
//   78 #define     PGM8      0x07   // д�볤��(8�ֽ�)
//   79 #define     ERSBLK    0x08   // ��������Flash
//   80 #define     ERSSCR    0x09   // ����Flash����
//   81 #define     PGMSEC    0x0B   // д������
//   82 #define     RD1ALL    0x40   // �����еĿ�
//   83 #define     RDONCE    0x41   // ֻ��һ��
//   84 #define     PGMONCE   0x43   // ֻдһ��
//   85 #define     ERSALL    0x44   // �������п�
//   86 #define     VFYKEY    0x45   // ��֤���ŷ���Կ��
//   87 #define     PGMPART   0x80   // д�����
//   88 #define     SETRAM    0x81   // �趨FlexRAM����
//   89 
//   90 #endif
//   91 
//   92 
//   93 
//   94 /*!
//   95  *  @brief      Flash����
//   96  *  @return     ����ִ�н��(1�ɹ���0ʧ��)
//   97  *  @since      v5.0
//   98  */

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function flash_cmd
          CFI NoCalls
        THUMB
//   99 __RAMFUNC uint8 flash_cmd()
//  100 {
//  101     //д FTFL_FSTAT ���� Flash����
//  102 #if defined(MK60DZ10)
//  103     FTFL_FSTAT =    (0
//  104                      |  FTFL_FSTAT_CCIF_MASK        // ָ����ɱ�־(д1��0)
//  105                      |  FTFL_FSTAT_RDCOLERR_MASK    // ����ͻ�����־(д1��0)
//  106                      |  FTFL_FSTAT_ACCERR_MASK      // ���ʴ����־λ(д1��0)
//  107                      |  FTFL_FSTAT_FPVIOL_MASK      // �Ƿ����ʱ�����־λ(д1��0)
//  108                     );
flash_cmd:
        MOVS     R0,#+240
        LDR.N    R1,??DataTable4  ;; 0x40020000
        STRB     R0,[R1, #+0]
//  109 
//  110     while(!(FTFL_FSTAT & FTFL_FSTAT_CCIF_MASK));    // �ȴ��������
??flash_cmd_0:
        LDR.N    R0,??DataTable4  ;; 0x40020000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??flash_cmd_0
//  111 
//  112     // �������־
//  113     if( FTFL_FSTAT & (FTFL_FSTAT_ACCERR_MASK | FTFL_FSTAT_RDCOLERR_MASK | FTFL_FSTAT_FPVIOL_MASK | FTFL_FSTAT_MGSTAT0_MASK))
        LDR.N    R0,??DataTable4  ;; 0x40020000
        LDRB     R0,[R0, #+0]
        TST      R0,#0x71
        BEQ.N    ??flash_cmd_1
//  114     {
//  115         return 0 ;                                  //ִ���������
        MOVS     R0,#+0
        B.N      ??flash_cmd_2
//  116     }
//  117     else
//  118     {
//  119         return 1;                                   //ִ������ɹ�
??flash_cmd_1:
        MOVS     R0,#+1
??flash_cmd_2:
        BX       LR               ;; return
//  120     }
//  121 
//  122 #elif defined(MK60F15)
//  123     FTFE_FSTAT =    (0
//  124                      |  FTFE_FSTAT_CCIF_MASK        // ָ����ɱ�־(д1��0)
//  125                      |  FTFE_FSTAT_RDCOLERR_MASK    // ����ͻ�����־(д1��0)
//  126                      |  FTFE_FSTAT_ACCERR_MASK      // ���ʴ����־λ(д1��0)
//  127                      |  FTFE_FSTAT_FPVIOL_MASK      // �Ƿ����ʱ�����־λ(д1��0)
//  128                     );
//  129 
//  130     while(!(FTFE_FSTAT & FTFE_FSTAT_CCIF_MASK));    // �ȴ��������
//  131 
//  132     // �������־
//  133     if( FTFE_FSTAT & (FTFE_FSTAT_ACCERR_MASK | FTFE_FSTAT_RDCOLERR_MASK | FTFE_FSTAT_FPVIOL_MASK | FTFE_FSTAT_MGSTAT0_MASK))
//  134     {
//  135         return 0 ;                                  //ִ���������
//  136     }
//  137     else
//  138     {
//  139         return 1;                                   //ִ������ɹ�
//  140     }
//  141 
//  142 #endif
//  143 }
          CFI EndBlock cfiBlock0
//  144 
//  145 
//  146 /*!
//  147  *  @brief      ��ʼ��flash
//  148  *  @since      v5.0
//  149  */

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function flash_init
        THUMB
//  150 __RAMFUNC void flash_init(void)
//  151 {
flash_init:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  152 #if defined( MK60DZ10)
//  153     // ���FlashԤ��ȡ������
//  154     FMC_PFB0CR |= FMC_PFB0CR_S_B_INV_MASK;      //
        LDR.N    R0,??DataTable4_1  ;; 0x4001f004
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80000
        LDR.N    R1,??DataTable4_1  ;; 0x4001f004
        STR      R0,[R1, #+0]
//  155     FMC_PFB1CR |= FMC_PFB0CR_S_B_INV_MASK;
        LDR.N    R0,??DataTable4_2  ;; 0x4001f008
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80000
        LDR.N    R1,??DataTable4_2  ;; 0x4001f008
        STR      R0,[R1, #+0]
//  156 
//  157     while(!(FTFL_FSTAT & FTFL_FSTAT_CCIF_MASK));    // �ȴ��������
??flash_init_0:
        LDR.N    R0,??DataTable4  ;; 0x40020000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??flash_init_0
//  158 
//  159     FTFL_FSTAT =    (0
//  160                      |  FTFL_FSTAT_CCIF_MASK        // ָ����ɱ�־(д1��0)
//  161                      |  FTFL_FSTAT_RDCOLERR_MASK    // ����ͻ�����־(д1��0)
//  162                      |  FTFL_FSTAT_ACCERR_MASK      // ���ʴ����־λ(д1��0)
//  163                      |  FTFL_FSTAT_FPVIOL_MASK      // �Ƿ����ʱ�����־λ(д1��0)
//  164                     );
        MOVS     R0,#+240
        LDR.N    R1,??DataTable4  ;; 0x40020000
        STRB     R0,[R1, #+0]
//  165 
//  166 #elif defined(MK60F15)
//  167     // ���FlashԤ��ȡ������
//  168     FMC_PFB01CR |= FMC_PFB01CR_S_B_INV_MASK;      //
//  169     //FMC_PFB23CR |= FMC_PFB23CR_S_B_INV_MASK;
//  170 
//  171     while(!(FTFE_FSTAT & FTFE_FSTAT_CCIF_MASK));    // �ȴ��������
//  172 
//  173     FTFE_FSTAT =    (0
//  174                      |  FTFE_FSTAT_CCIF_MASK        // ָ����ɱ�־(д1��0)
//  175                      |  FTFE_FSTAT_RDCOLERR_MASK    // ����ͻ�����־(д1��0)
//  176                      |  FTFE_FSTAT_ACCERR_MASK      // ���ʴ����־λ(д1��0)
//  177                      |  FTFE_FSTAT_FPVIOL_MASK      // �Ƿ����ʱ�����־λ(д1��0)
//  178                     );
//  179 #endif
//  180     DELAY_MS(10);
        MOVS     R0,#+10
          CFI FunCall systick_delay_ms
        BL       systick_delay_ms
//  181 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock1
//  182 
//  183 /*!
//  184  *  @brief      ����ָ��flash����
//  185  *  @param      sector_num    �����ţ�K60N512ʵ��ʹ��0~255��
//  186  *  @return     ִ�н��(1�ɹ���0ʧ��)
//  187  *  @since      v5.0
//  188  *  Sample usage:       flash_erase_sector(127);        //��������127
//  189  */

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function flash_erase_sector
        THUMB
//  190 __RAMFUNC uint8 flash_erase_sector(uint16 sector_num)
//  191 {
flash_erase_sector:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        SUB      SP,SP,#+8
          CFI CFA R13+16
        MOVS     R4,R0
//  192     uint32 addr = sector_num * FLASH_SECTOR_SIZE;
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        MOV      R0,#+2048
        MUL      R0,R0,R4
        STR      R0,[SP, #+0]
//  193 
//  194     // ���ò�������
//  195     FCMD = ERSSCR;
        MOVS     R0,#+9
        LDR.N    R1,??DataTable4_3  ;; 0x40020007
        STRB     R0,[R1, #+0]
//  196 
//  197     // ����Ŀ���ַ
//  198     FADDR2 = ((Dtype *)&addr)->B[2];
        LDRB     R0,[SP, #+2]
        LDR.N    R1,??DataTable4_4  ;; 0x40020006
        STRB     R0,[R1, #+0]
//  199     FADDR1 = ((Dtype *)&addr)->B[1];
        LDRB     R0,[SP, #+1]
        LDR.N    R1,??DataTable4_5  ;; 0x40020005
        STRB     R0,[R1, #+0]
//  200     FADDR0 = ((Dtype *)&addr)->B[0];
        LDRB     R0,[SP, #+0]
        LDR.N    R1,??DataTable4_6  ;; 0x40020004
        STRB     R0,[R1, #+0]
//  201 
//  202     if(flash_cmd() == 0)
          CFI FunCall flash_cmd
        BL       flash_cmd
        CMP      R0,#+0
        BNE.N    ??flash_erase_sector_0
//  203     {
//  204         return 0;
        MOVS     R0,#+0
        B.N      ??flash_erase_sector_1
//  205     }
//  206 
//  207     if(sector_num == 0)
??flash_erase_sector_0:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+0
        BNE.N    ??flash_erase_sector_2
//  208     {
//  209 #if defined(MK60DZ10)
//  210         return flash_write(sector_num,0x00040C,0xFFFFFFFE);
        MVNS     R2,#+1
        MOVW     R1,#+1036
        MOVS     R0,R4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall flash_write
        BL       flash_write
        B.N      ??flash_erase_sector_1
//  211 #elif defined(MK60F15)
//  212         return flash_write(sector_num,0x000408,0xFFFFFFFEFFFFFFFF );
//  213 #endif
//  214     }
//  215 
//  216     return 1;
??flash_erase_sector_2:
        MOVS     R0,#+1
??flash_erase_sector_1:
        POP      {R1,R2,R4,PC}    ;; return
//  217 }
          CFI EndBlock cfiBlock2
//  218 
//  219 
//  220 /*!
//  221  *  @brief      д�볤�ֽ����ݵ� flashָ����ַ
//  222  *  @param      sector_num      �����ţ�0 ~ FLASH_SECTOR_NUM��
//  223  *  @param      offset          д�������ڲ�ƫ�Ƶ�ַ��0~2043 �� 4�ı�����
//  224  *  @param      data            ��Ҫд�������
//  225  *  @return     ִ�н��(1�ɹ���0ʧ��)
//  226  *  @since      v5.0
//  227  *  Sample usage:       flash_write(127,0,0xFFFFFFFE);        //����127,ƫ�Ƶ�ַΪ0,д������:0xFFFFFFFE
//  228  */

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function flash_write
        THUMB
//  229 __RAMFUNC uint8 flash_write(uint16 sector_num, uint16 offset, FLASH_WRITE_TYPE data)
//  230 {
flash_write:
        PUSH     {R2-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+24
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  231     uint32 addr = sector_num * FLASH_SECTOR_SIZE  + offset ;
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        MOV      R0,#+2048
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        MLA      R0,R0,R4,R5
        STR      R0,[SP, #+4]
//  232     uint32 tmpdata;
//  233 
//  234     ASSERT(offset % FLASH_ALIGN_ADDR == 0);             //ƫ��������Ϊ4�ı���
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        MOVS     R0,#+4
        SDIV     R1,R5,R0
        MLS      R0,R0,R1,R5
        CMP      R0,#+0
        BEQ.N    ??flash_write_0
        MOVS     R1,#+234
        LDR.N    R0,??DataTable4_7
          CFI FunCall assert_failed
        BL       assert_failed
//  235     //�˴���ʾ���棬���ǰ�ȫ�ġ���
//  236     ASSERT(offset <= FLASH_SECTOR_SIZE);                //������СΪ2K����ƫ�������벻���� 0x800
??flash_write_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        MOVW     R0,#+2049
        CMP      R5,R0
        BLT.N    ??flash_write_1
        MOVS     R1,#+236
        LDR.N    R0,??DataTable4_7
          CFI FunCall assert_failed
        BL       assert_failed
//  237     //�˴���ʾ���棬���ǰ�ȫ�ġ���
//  238 
//  239     // ����Ŀ���ַ
//  240     FADDR2 = ((Dtype *)&addr)->B[2];
??flash_write_1:
        LDRB     R0,[SP, #+6]
        LDR.N    R1,??DataTable4_4  ;; 0x40020006
        STRB     R0,[R1, #+0]
//  241     FADDR1 = ((Dtype *)&addr)->B[1];
        LDRB     R0,[SP, #+5]
        LDR.N    R1,??DataTable4_5  ;; 0x40020005
        STRB     R0,[R1, #+0]
//  242     FADDR0 = ((Dtype *)&addr)->B[0];
        LDRB     R0,[SP, #+4]
        LDR.N    R1,??DataTable4_6  ;; 0x40020004
        STRB     R0,[R1, #+0]
//  243 
//  244     // ���� ��32λ����
//  245     tmpdata = (uint32)data;
        STR      R6,[SP, #+0]
//  246 
//  247     FDATA0 = ((Dtype *)&tmpdata)->B[3];                    // ����д������
        LDRB     R0,[SP, #+3]
        LDR.N    R1,??DataTable4_8  ;; 0x4002000b
        STRB     R0,[R1, #+0]
//  248     FDATA1 = ((Dtype *)&tmpdata)->B[2];
        LDRB     R0,[SP, #+2]
        LDR.N    R1,??DataTable4_9  ;; 0x4002000a
        STRB     R0,[R1, #+0]
//  249     FDATA2 = ((Dtype *)&tmpdata)->B[1];
        LDRB     R0,[SP, #+1]
        LDR.N    R1,??DataTable4_10  ;; 0x40020009
        STRB     R0,[R1, #+0]
//  250     FDATA3 = ((Dtype *)&tmpdata)->B[0];
        LDRB     R0,[SP, #+0]
        LDR.N    R1,??DataTable4_11  ;; 0x40020008
        STRB     R0,[R1, #+0]
//  251 
//  252 #if defined(MK60DZ10)
//  253 
//  254     // ���ò�������
//  255     FCMD = PGM4;
        MOVS     R0,#+6
        LDR.N    R1,??DataTable4_3  ;; 0x40020007
        STRB     R0,[R1, #+0]
//  256 
//  257 #elif defined(MK60F15)
//  258 
//  259     // ���ò�������
//  260     FCMD = PGM8;
//  261 
//  262     // ���� ��32λ����
//  263     tmpdata = (uint32)(data>>32);
//  264 
//  265     FDATA4 = ((Dtype *)&tmpdata)->B[3];                 // ����д������
//  266     FDATA5 = ((Dtype *)&tmpdata)->B[2];
//  267     FDATA6 = ((Dtype *)&tmpdata)->B[1];
//  268     FDATA7 = ((Dtype *)&tmpdata)->B[0];
//  269 #endif
//  270 
//  271     if(flash_cmd() == 0)
          CFI FunCall flash_cmd
        BL       flash_cmd
        CMP      R0,#+0
        BNE.N    ??flash_write_2
//  272     {
//  273         return 0;
        MOVS     R0,#+0
        B.N      ??flash_write_3
//  274     }
//  275 
//  276     return 1;  //�ɹ�ִ��
??flash_write_2:
        MOVS     R0,#+1
??flash_write_3:
        POP      {R1,R2,R4-R6,PC}  ;; return
//  277 
//  278 }
          CFI EndBlock cfiBlock3
//  279 
//  280 
//  281 /*!
//  282  *  @brief      д�����ݻ������� flashָ����ַ
//  283  *  @param      sector_num      �����ţ�K60N512ʵ��ʹ��0~255��
//  284  *  @param      offset          д�������ڲ�ƫ�Ƶ�ַ��0~2043 �� 4�ı�����
//  285  *  @param      buf             ��Ҫд������ݻ������׵�ַ
//  286  *  @return     ִ�н��(1�ɹ���0ʧ��)
//  287  *  @since      v5.0
//  288  *  Sample usage:           uint32 buff[10];
//  289                             flash_write_buf(127,0,sizeof(buff),buff);        //����127,ƫ�Ƶ�ַΪ0,д������Դ��ַ:buff,��Ŀsizeof(buff)
//  290  */
//  291 

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function flash_write_buf
        THUMB
//  292 __RAMFUNC uint8 flash_write_buf(uint16 sector_num, uint16 offset, uint16 cnt, uint8 *buf)
//  293 {
flash_write_buf:
        PUSH     {R2-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+32
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
//  294     uint32  size;
//  295 
//  296     uint32  addr;
//  297     uint32  data;
//  298 
//  299     ASSERT(offset % FLASH_ALIGN_ADDR == 0);                    //ƫ��������Ϊ4�ı���
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        MOVS     R0,#+4
        SDIV     R1,R5,R0
        MLS      R0,R0,R1,R5
        CMP      R0,#+0
        BEQ.N    ??flash_write_buf_0
        MOVW     R1,#+299
        LDR.N    R0,??DataTable4_7
          CFI FunCall assert_failed
        BL       assert_failed
//  300     //�˴���ʾ���棬���ǰ�ȫ��(ram��������rom�������𾯸�)
//  301     ASSERT(offset <= FLASH_SECTOR_SIZE );                    //������СΪ2K����ƫ�������벻���� 0x800
??flash_write_buf_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        MOVW     R0,#+2049
        CMP      R5,R0
        BLT.N    ??flash_write_buf_1
        MOVW     R1,#+301
        LDR.N    R0,??DataTable4_7
          CFI FunCall assert_failed
        BL       assert_failed
//  302     //�˴���ʾ���棬���ǰ�ȫ��(ram��������rom�������𾯸�)
//  303 
//  304     addr = sector_num * FLASH_SECTOR_SIZE  + offset;      //�����ַ
??flash_write_buf_1:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        MOV      R0,#+2048
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        MLA      R0,R0,R4,R5
        STR      R0,[SP, #+0]
//  305 
//  306     // ����д������
//  307 #if defined(MK60DZ10)
//  308     FCMD = PGM4;
        MOVS     R0,#+6
        LDR.N    R1,??DataTable4_3  ;; 0x40020007
        STRB     R0,[R1, #+0]
//  309 #elif defined(MK60F15)
//  310     FCMD = PGM8;
//  311 #endif
//  312 
//  313     for(size = 0; size < cnt; size += FLASH_ALIGN_ADDR )
        MOVS     R0,#+0
        MOV      R8,R0
??flash_write_buf_2:
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R8,R6
        BCS.N    ??flash_write_buf_3
//  314     {
//  315 
//  316         // ����Ŀ���ַ
//  317         FADDR2 = ((Dtype *)&addr)->B[2];
        LDRB     R0,[SP, #+2]
        LDR.N    R1,??DataTable4_4  ;; 0x40020006
        STRB     R0,[R1, #+0]
//  318         FADDR1 = ((Dtype *)&addr)->B[1];
        LDRB     R0,[SP, #+1]
        LDR.N    R1,??DataTable4_5  ;; 0x40020005
        STRB     R0,[R1, #+0]
//  319         FADDR0 = ((Dtype *)&addr)->B[0];
        LDRB     R0,[SP, #+0]
        LDR.N    R1,??DataTable4_6  ;; 0x40020004
        STRB     R0,[R1, #+0]
//  320 
//  321         // ���� ��32λ����
//  322         data =  *(uint32 *)buf;
        LDR      R0,[R7, #+0]
        STR      R0,[SP, #+4]
//  323 
//  324         FDATA0 = ((Dtype *)&data)->B[3];                    // ����д������
        LDRB     R0,[SP, #+7]
        LDR.N    R1,??DataTable4_8  ;; 0x4002000b
        STRB     R0,[R1, #+0]
//  325         FDATA1 = ((Dtype *)&data)->B[2];
        LDRB     R0,[SP, #+6]
        LDR.N    R1,??DataTable4_9  ;; 0x4002000a
        STRB     R0,[R1, #+0]
//  326         FDATA2 = ((Dtype *)&data)->B[1];
        LDRB     R0,[SP, #+5]
        LDR.N    R1,??DataTable4_10  ;; 0x40020009
        STRB     R0,[R1, #+0]
//  327         FDATA3 = ((Dtype *)&data)->B[0];
        LDRB     R0,[SP, #+4]
        LDR.N    R1,??DataTable4_11  ;; 0x40020008
        STRB     R0,[R1, #+0]
//  328 
//  329 #if defined(MK60F15)
//  330         // ���� ��32λ����
//  331         data = *(uint32 *)(buf+4);
//  332 
//  333         FDATA4 = ((Dtype *)&data)->B[3];                    // ����д������
//  334         FDATA5 = ((Dtype *)&data)->B[2];
//  335         FDATA6 = ((Dtype *)&data)->B[1];
//  336         FDATA7 = ((Dtype *)&data)->B[0];
//  337 #endif
//  338 
//  339         if(flash_cmd() == 0)
          CFI FunCall flash_cmd
        BL       flash_cmd
        CMP      R0,#+0
        BNE.N    ??flash_write_buf_4
//  340         {
//  341             return 0;
        MOVS     R0,#+0
        B.N      ??flash_write_buf_5
//  342         }
//  343 
//  344         addr += FLASH_ALIGN_ADDR;
??flash_write_buf_4:
        LDR      R0,[SP, #+0]
        ADDS     R0,R0,#+4
        STR      R0,[SP, #+0]
//  345         buf += FLASH_ALIGN_ADDR;
        ADDS     R7,R7,#+4
//  346     }
        ADDS     R8,R8,#+4
        B.N      ??flash_write_buf_2
//  347     return 1;  //�ɹ�ִ��
??flash_write_buf_3:
        MOVS     R0,#+1
??flash_write_buf_5:
        POP      {R1,R2,R4-R8,PC}  ;; return
//  348 }
          CFI EndBlock cfiBlock4

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable4:
        DC32     0x40020000

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable4_1:
        DC32     0x4001f004

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable4_2:
        DC32     0x4001f008

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable4_3:
        DC32     0x40020007

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable4_4:
        DC32     0x40020006

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable4_5:
        DC32     0x40020005

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable4_6:
        DC32     0x40020004

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable4_7:
        DC32     ?_0

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable4_8:
        DC32     0x4002000b

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable4_9:
        DC32     0x4002000a

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable4_10:
        DC32     0x40020009

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable4_11:
        DC32     0x40020008
//  349 
//  350 
//  351 
//  352 
//  353 
//  354 
//  355 
//  356 
//  357 
//  358 
//  359 
//  360 
//  361 
//  362 
//  363 
//  364 
//  365 //��װflash����
//  366 
//  367 /****************************�Զ���*********************************/
//  368 #define  DATA_NUM       30          //ʹ����������(70*4�ֽ�)
//  369 
//  370 #define	 SECTOR_COM		150			//COM   ������������������ȷ����ȫ(���������)
//  371 
//  372 #define  PLAN_START     150
//  373 #define	 SECTOR_PLAN1	151			//PLAN1 ������������������ȷ����ȫ(���������)
//  374 #define	 SECTOR_PLAN2	152			//PLAN2 ������������������ȷ����ȫ(���������)
//  375 #define	 SECTOR_PLAN3	153			//PLAN3 ������������������ȷ����ȫ(���������)
//  376 #define	 SECTOR_PLAN4	154			//PLAN4 ������������������ȷ����ȫ(���������)
//  377 #define	 SECTOR_PLAN5	155			//PLAN5 ������������������ȷ����ȫ(���������)
//  378 #define	 SECTOR_PLAN6	156			//PLAN6 ������������������ȷ����ȫ(���������)
//  379 
//  380 
//  381 
//  382 
//  383 //Pub_Value[]={�������ķ����������ǣ����ٶȼƣ�����ͷ��ֵ�����߰��� 20���� }
//  384 //Plan_Value[]={Turn_P,Turn_D,Turn_About,  30����                          }
//  385 
//  386 
//  387 //�������������ȡ

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function Flash_Read_Pub
          CFI NoCalls
        THUMB
//  388 void Flash_Read_Pub(uint32 * Data)
//  389 {
//  390     for(int i=0;i<DATA_NUM;i++)
Flash_Read_Pub:
        MOVS     R1,#+0
??Flash_Read_Pub_0:
        CMP      R1,#+30
        BGE.N    ??Flash_Read_Pub_1
//  391     {
//  392         Data[i] = flash_read(SECTOR_COM,i*4,uint16);     //��ȡ4�ֽ�
        LSLS     R2,R1,#+2
        ADDS     R2,R2,#+307200
        LDRH     R2,[R2, #+0]
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        STR      R2,[R0, R1, LSL #+2]
//  393     }
        ADDS     R1,R1,#+1
        B.N      ??Flash_Read_Pub_0
//  394     return ;
??Flash_Read_Pub_1:
        BX       LR               ;; return
//  395 }
          CFI EndBlock cfiBlock5
//  396 
//  397 //�����������д��

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function Flash_Write_Pub
        THUMB
//  398 void Flash_Write_Pub(uint32 * Data)
//  399 {
Flash_Write_Pub:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
//  400     flash_erase_sector(SECTOR_COM); //�����
        MOVS     R0,#+150
          CFI FunCall flash_erase_sector
        BL       flash_erase_sector
//  401     for(int i=0;i<DATA_NUM;i++)
        MOVS     R5,#+0
??Flash_Write_Pub_0:
        CMP      R5,#+30
        BGE.N    ??Flash_Write_Pub_1
//  402     {
//  403        flash_write(SECTOR_COM,i*4,Data[i]);
        LDR      R2,[R4, R5, LSL #+2]
        MOVS     R0,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSLS     R1,R0,#+2
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+150
          CFI FunCall flash_write
        BL       flash_write
//  404     }
        ADDS     R5,R5,#+1
        B.N      ??Flash_Write_Pub_0
//  405     return ;
??Flash_Write_Pub_1:
        POP      {R0,R4,R5,PC}    ;; return
//  406 }
          CFI EndBlock cfiBlock6
//  407 
//  408 //��ȡָ�������ı���
//  409 
//  410 //Data:���������ַ
//  411 //Plan:������
//  412 //Where:��ȡָ��λ�õı���(С��0��ʱ��ȫ����ȡ�����ڵ������ʱ���ȡĳһλ)�����Է���ֵ����ʽ����

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function Flash_Read_Plan
          CFI NoCalls
        THUMB
//  413 uint32 Flash_Read_Plan(uint32 * Data,uint16 Plan,int Where)
//  414 {
Flash_Read_Plan:
        PUSH     {R4-R6}
          CFI R6 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+12
        MOVS     R3,R0
//  415   if(Where>=0)//����ָ��λ�õ�ֵ
        CMP      R2,#+0
        BMI.N    ??Flash_Read_Plan_0
//  416   {
//  417       return flash_read(PLAN_START+Plan,Where*4,uint16);     //��ȡ4�ֽ�
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        ADDS     R1,R1,#+150
        MOV      R4,#+2048
        LSLS     R0,R2,#+2
        MLA      R1,R4,R1,R0
        LDRH     R0,[R1, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        B.N      ??Flash_Read_Plan_1
//  418   }
//  419   else 
//  420   {
//  421     for(int i=0;i<DATA_NUM;i++)
??Flash_Read_Plan_0:
        MOVS     R4,#+0
??Flash_Read_Plan_2:
        CMP      R4,#+30
        BGE.N    ??Flash_Read_Plan_3
//  422     {
//  423         Data[i] = flash_read(PLAN_START+Plan,i*4,uint16);     
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        ADDS     R5,R1,#+150
        MOV      R6,#+2048
        LSLS     R0,R4,#+2
        MLA      R5,R6,R5,R0
        LDRH     R0,[R5, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        STR      R0,[R3, R4, LSL #+2]
//  424     }
        ADDS     R4,R4,#+1
        B.N      ??Flash_Read_Plan_2
//  425   }
//  426 }
??Flash_Read_Plan_3:
??Flash_Read_Plan_1:
        POP      {R4-R6}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock7
//  427 //��������д��
//  428 
//  429 //Data Ҫд�������
//  430 //Plan д�뷽����(0-6) 0�ǹ������� 
//  431 
//  432 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function Flash_Write_Plan
        THUMB
//  433 void Flash_Write_Plan(uint32 * Data,uint16 Plan)
//  434 {
Flash_Write_Plan:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
//  435     flash_erase_sector(PLAN_START+Plan); //�����
        ADDS     R0,R5,#+150
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall flash_erase_sector
        BL       flash_erase_sector
//  436     for(int i=0;i<DATA_NUM;i++)
        MOVS     R6,#+0
??Flash_Write_Plan_0:
        CMP      R6,#+30
        BGE.N    ??Flash_Write_Plan_1
//  437     {
//  438        flash_write(PLAN_START+Plan,i*4,Data[i]);
        LDR      R2,[R4, R6, LSL #+2]
        MOVS     R0,R6
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSLS     R1,R0,#+2
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        ADDS     R0,R5,#+150
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall flash_write
        BL       flash_write
//  439     }
        ADDS     R6,R6,#+1
        B.N      ??Flash_Write_Plan_0
//  440     return ;
??Flash_Write_Plan_1:
        POP      {R4-R6,PC}       ;; return
//  441 }
          CFI EndBlock cfiBlock8

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_0:
        DC8 44H, 3AH, 5CH, 0E7H, 0ACH, 0ACH, 0E5H, 8DH
        DC8 81H, 0E4H, 0BAH, 8CH, 0E5H, 0B1H, 8AH, 0E7H
        DC8 94H, 0B5H, 0E7H, 0A3H, 81H, 0E7H, 0BBH, 84H
        DC8 5CH, 43H, 61H, 72H, 5CH, 43H, 68H, 69H
        DC8 70H, 5CH, 73H, 72H, 63H, 5CH, 4DH, 4BH
        DC8 36H, 30H, 5FH, 66H, 6CH, 61H, 73H, 68H
        DC8 2EH, 63H, 0
        DC8 0

        END
//  442 
//  443 
//  444 
//  445 
//  446 
//  447 
//  448 /*
//  449 
//  450 
//  451 void flash_read_string(uint16  * data,uint16 plan)
//  452 {                       
//  453     uint16 i = 0;
//  454     for(i=0;i<10;i++)                                    //��ȡ��������
//  455     {
//  456         data[i] = flash_read(SECTOR_COM,i*4,uint16);     //��ȡ4�ֽ�
//  457 	}
//  458 		switch (plan)
//  459 		{
//  460 		case 1:
//  461  		{
//  462   			for(i=0;i<20;i++)                                    //��ȡ�ƻ�1
//  463  			{
//  464  				data[i+10] = flash_read(SECTOR_PLAN1,i*4,uint16);     //��ȡ4�ֽ�
//  465 			}		
//  466 		}break;
//  467 		case 2:
//  468 		{
//  469 			for(i=0;i<20;i++)                                    //��ȡ�ƻ�2
//  470 			{
//  471 				data[i+10] = flash_read(SECTOR_PLAN2,i*4,uint16);     //��ȡ4�ֽ�
//  472 			}			
//  473 		}break;
//  474 		case 3:
//  475 		{
//  476 			for(i=0;i<20;i++)                                    //��ȡ�ƻ�3
//  477 			{
//  478 				data[i+10] = flash_read(SECTOR_PLAN3,i*4,uint16);     //��ȡ4�ֽ�
//  479 			}			
//  480 		}break;
//  481 		case 4:
//  482 		{
//  483 			for(i=0;i<20;i++)                                    //��ȡ�ƻ�4
//  484 			{
//  485 				data[i+10] = flash_read(SECTOR_PLAN4,i*4,uint16);     //��ȡ4�ֽ�
//  486 			}			
//  487 		}break;
//  488 		case 5:
//  489 		{
//  490 			for(i=0;i<20;i++)                                    //��ȡ�ƻ�5
//  491 			{
//  492 				data[i+10] = flash_read(SECTOR_PLAN5,i*4,uint16);     //��ȡ4�ֽ�
//  493 			}			
//  494 		}break;
//  495 		case 6:
//  496 		{
//  497 			for(i=0;i<20;i++)                                    //��ȡ�ƻ�6
//  498 			{
//  499 				data[i+10] = flash_read(SECTOR_PLAN6,i*4,uint16);     //��ȡ4�ֽ�
//  500 			}			
//  501 		}break;
//  502         default:break;
//  503 	}
//  504 }
//  505 
//  506 
//  507 
//  508 void flash_write_string(uint32 * data,uint16 plan)
//  509 {
//  510     uint16 i = 0;
//  511 	flash_erase_sector(SECTOR_COM); 
//  512 	for(i=0;i<10;i++)
//  513 	{
//  514 		flash_write(SECTOR_COM,i*4,data[i]);
//  515 	}
//  516 	switch (plan)
//  517 	{
//  518 		case 1:
//  519 		{
//  520 			flash_erase_sector(SECTOR_PLAN1);  //����PLAN1����
//  521 			for(i=0;i<20;i++)                                    //�洢�ƻ�1
//  522 			{
//  523 				flash_write(SECTOR_PLAN1,i*4,data[i+10]);         //�洢4�ֽ�
//  524 			}		
//  525 		}break;
//  526 		case 2:
//  527 		{
//  528 			flash_erase_sector(SECTOR_PLAN2);
//  529 			for(i=0;i<20;i++)                                    //�洢�ƻ�2
//  530 			{
//  531 				flash_write(SECTOR_PLAN2,i*4,data[i+10]);       //�洢4�ֽ�
//  532 			}			
//  533 		}break;
//  534 		case 3:
//  535 		{
//  536 			flash_erase_sector(SECTOR_PLAN3);
//  537 			for(i=0;i<20;i++)                                    //�洢�ƻ�3
//  538 			{
//  539 				flash_write(SECTOR_PLAN3,i*4,data[i+10]);       //�洢4�ֽ�
//  540 			}			
//  541 		}break;
//  542 		case 4:
//  543 		{
//  544 			flash_erase_sector(SECTOR_PLAN4);
//  545 			for(i=0;i<20;i++)                                    //�洢�ƻ�4
//  546 			{
//  547 				flash_write(SECTOR_PLAN4,i*4,data[i+10]);       //�洢4�ֽ�
//  548 			}			
//  549 		}break;
//  550 		case 5:
//  551 		{
//  552 			flash_erase_sector(SECTOR_PLAN5);
//  553 			for(i=0;i<20;i++)                                    //�洢�ƻ�5
//  554 			{
//  555 				flash_write(SECTOR_PLAN5,i*4,data[i+10]);       //�洢4�ֽ�
//  556 			}			
//  557 		}break;
//  558 		case 6:
//  559 		{
//  560 			flash_erase_sector(SECTOR_PLAN6);
//  561 			for(i=0;i<20;i++)                                    //�洢�ƻ�6
//  562 			{
//  563 				flash_write(SECTOR_PLAN6,i*4,data[i+10]);       //�洢4�ֽ�
//  564 			}			
//  565 		}break;
//  566         default:break;
//  567 	}
//  568 }
//  569 
//  570 */
//  571 
//  572 
//  573 
//  574 
// 
//  52 bytes in section .rodata
// 182 bytes in section .text
// 540 bytes in section .textrw
// 
// 722 bytes of CODE  memory
//  52 bytes of CONST memory
//
//Errors: none
//Warnings: 10
