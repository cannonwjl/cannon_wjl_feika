///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      12/Jun/2017  17:32:53
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\@@@@@@@\Car\Chip\src\MK60_ftm.c
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EWD585.tmp
//        (D:\@@@@@@@\Car\Chip\src\MK60_ftm.c -D DEBUG -D
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
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\MK60_ftm.s
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

        EXTERN assert_failed
        EXTERN bus_clk_khz
        EXTERN port_init

        PUBLIC FTM1_Input_test_handler
        PUBLIC FTMN
        PUBLIC ftm_input_clean
        PUBLIC ftm_input_get
        PUBLIC ftm_input_init
        PUBLIC ftm_pwm_duty
        PUBLIC ftm_pwm_freq
        PUBLIC ftm_pwm_init
        PUBLIC ftm_quad_clean
        PUBLIC ftm_quad_get
        PUBLIC ftm_quad_init
        
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
        
// D:\@@@@@@@\Car\Chip\src\MK60_ftm.c
//    1 /*!
//    2  *     COPYRIGHT NOTICE
//    3  *     Copyright (c) 2013,ɽ��Ƽ�
//    4  *     All rights reserved.
//    5  *     �������ۣ�ɽ����̳ http://www.vcan123.com
//    6  *
//    7  *     ��ע�������⣬�����������ݰ�Ȩ����ɽ��Ƽ����У�δ����������������ҵ��;��
//    8  *     �޸�����ʱ���뱣��ɽ��Ƽ��İ�Ȩ������
//    9  *
//   10  * @file       MK60_ftm.c
//   11  * @brief      FTM��ʱ��������
//   12  * @author     ɽ��Ƽ�
//   13  * @version    v5.2
//   14  * @date       2014-10-31
//   15  */
//   16 
//   17 
//   18 /*
//   19  * ����ͷ�ļ�
//   20  */
//   21 #include "common.h"
//   22 #include  "MK60_FTM.h"
//   23 
//   24 /*
//   25  * ��������
//   26  */

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   27 FTM_MemMapPtr FTMN[FTM_MAX] = {FTM0_BASE_PTR, FTM1_BASE_PTR, FTM2_BASE_PTR
FTMN:
        DC32 40038000H, 40039000H, 400B8000H
//   28 #ifdef MK60F15
//   29 , FTM3_BASE_PTR         //FX ����FTM3
//   30 #endif
//   31 }; //��������ָ�����鱣�� FTMn_e �ĵ�ַ
//   32 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   33 static uint32 ftm_mod[FTM_MAX];
ftm_mod:
        DS8 12
//   34 
//   35 /*!
//   36  *  @brief      ��ʼ��FTM �Ķ˿�
//   37  *  @param      FTMn_e    ģ��ţ�FTM0��  FTM1��  FTM2��
//   38  *  @param      FTM_CHn_e     ͨ���ţ�CH0~CH7��
//   39  *  @since      v5.0
//   40  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function FTM_port_mux
        THUMB
//   41 static void FTM_port_mux(FTMn_e ftmn, FTM_CHn_e ch)
//   42 {
FTM_port_mux:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
//   43     /******************* ����ʱ�� �� ����IO��*******************/
//   44     switch(ftmn)
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??FTM_port_mux_0
        CMP      R4,#+2
        BEQ.N    ??FTM_port_mux_1
        BCC.N    ??FTM_port_mux_2
        B.N      ??FTM_port_mux_3
//   45     {
//   46     case FTM0:
//   47         SIM_SCGC6 |= SIM_SCGC6_FTM0_MASK;       //ʹ��FTM0ʱ��
??FTM_port_mux_0:
        LDR.W    R0,??DataTable10  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000000
        LDR.W    R1,??DataTable10  ;; 0x4004803c
        STR      R0,[R1, #+0]
//   48         switch(ch)
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??FTM_port_mux_4
        CMP      R5,#+2
        BEQ.N    ??FTM_port_mux_5
        BCC.N    ??FTM_port_mux_6
        CMP      R5,#+4
        BEQ.N    ??FTM_port_mux_7
        BCC.N    ??FTM_port_mux_8
        CMP      R5,#+6
        BEQ.N    ??FTM_port_mux_9
        BCC.N    ??FTM_port_mux_10
        CMP      R5,#+7
        BEQ.N    ??FTM_port_mux_11
        B.N      ??FTM_port_mux_12
//   49         {
//   50         case FTM_CH0:
//   51             if(FTM0_CH0_PIN == PTC1)
//   52             {
//   53                 port_init(FTM0_CH0_PIN, ALT4);
??FTM_port_mux_4:
        MOV      R1,#+1024
        MOVS     R0,#+65
          CFI FunCall port_init
        BL       port_init
//   54             }
//   55             else if(FTM0_CH0_PIN == PTA3)
//   56             {
//   57                 port_init(FTM0_CH0_PIN, ALT3);
//   58             }
//   59             else
//   60             {
//   61                 ASSERT(0);                      //���ùܽ�����
//   62             }
//   63             break;
        B.N      ??FTM_port_mux_13
//   64 
//   65         case FTM_CH1:
//   66             if(FTM0_CH1_PIN == PTC2)
//   67             {
//   68                 port_init(FTM0_CH1_PIN, ALT4);
??FTM_port_mux_6:
        MOV      R1,#+1024
        MOVS     R0,#+66
          CFI FunCall port_init
        BL       port_init
//   69             }
//   70             else if(FTM0_CH1_PIN == PTA4)
//   71             {
//   72                 port_init(FTM0_CH1_PIN, ALT3);
//   73             }
//   74             else
//   75             {
//   76                 ASSERT(0);                      //���ùܽ�����
//   77             }
//   78             break;
        B.N      ??FTM_port_mux_13
//   79 
//   80         case FTM_CH2:
//   81             if(FTM0_CH2_PIN == PTC3)
//   82             {
//   83                 port_init(FTM0_CH2_PIN, ALT4);
??FTM_port_mux_5:
        MOV      R1,#+1024
        MOVS     R0,#+67
          CFI FunCall port_init
        BL       port_init
//   84             }
//   85             else if(FTM0_CH2_PIN == PTA5)
//   86             {
//   87                 port_init(FTM0_CH2_PIN, ALT3);
//   88             }
//   89             else
//   90             {
//   91                 ASSERT(0);                      //���ùܽ�����
//   92             }
//   93             break;
        B.N      ??FTM_port_mux_13
//   94 
//   95         case FTM_CH3:
//   96             if(FTM0_CH3_PIN == PTC4)
//   97             {
//   98                 port_init(FTM0_CH3_PIN, ALT4);
??FTM_port_mux_8:
        MOV      R1,#+1024
        MOVS     R0,#+68
          CFI FunCall port_init
        BL       port_init
//   99             }
//  100             else if(FTM0_CH3_PIN == PTA6)
//  101             {
//  102                 port_init(FTM0_CH3_PIN, ALT3);
//  103             }
//  104             else
//  105             {
//  106                 ASSERT(0);                      //���ùܽ�����
//  107             }
//  108             break;
        B.N      ??FTM_port_mux_13
//  109 
//  110         case FTM_CH4:
//  111             if(FTM0_CH4_PIN == PTD4)
//  112             {
//  113                 port_init(FTM0_CH4_PIN, ALT4);
??FTM_port_mux_7:
        MOV      R1,#+1024
        MOVS     R0,#+100
          CFI FunCall port_init
        BL       port_init
//  114             }
//  115             else if(FTM0_CH4_PIN == PTA7)
//  116             {
//  117                 port_init(FTM0_CH4_PIN, ALT3);
//  118             }
//  119             else
//  120             {
//  121                 ASSERT(0);                      //���ùܽ�����
//  122             }
//  123             break;
        B.N      ??FTM_port_mux_13
//  124 
//  125         case FTM_CH5:
//  126             if(FTM0_CH5_PIN == PTD5)
//  127             {
//  128                 port_init(FTM0_CH5_PIN, ALT4);
??FTM_port_mux_10:
        MOV      R1,#+1024
        MOVS     R0,#+101
          CFI FunCall port_init
        BL       port_init
//  129             }
//  130             else if(FTM0_CH5_PIN == PTA0)
//  131             {
//  132                 port_init(FTM0_CH5_PIN, ALT3);
//  133             }
//  134             else
//  135             {
//  136                 ASSERT(0);                      //���ùܽ�����
//  137             }
//  138             break;
        B.N      ??FTM_port_mux_13
//  139 
//  140         case FTM_CH6:
//  141             if(FTM0_CH6_PIN == PTD6)
//  142             {
//  143                 port_init(FTM0_CH6_PIN, ALT4);
??FTM_port_mux_9:
        MOV      R1,#+1024
        MOVS     R0,#+102
          CFI FunCall port_init
        BL       port_init
//  144             }
//  145             else if(FTM0_CH6_PIN == PTA1)
//  146             {
//  147                 port_init(FTM0_CH6_PIN, ALT3);
//  148             }
//  149             else
//  150             {
//  151                 ASSERT(0);                      //���ùܽ�����
//  152             }
//  153             break;
        B.N      ??FTM_port_mux_13
//  154 
//  155         case FTM_CH7:
//  156             if(FTM0_CH7_PIN == PTD7)
//  157             {
//  158                 port_init(FTM0_CH7_PIN, ALT4);
??FTM_port_mux_11:
        MOV      R1,#+1024
        MOVS     R0,#+103
          CFI FunCall port_init
        BL       port_init
//  159             }
//  160             else if(FTM0_CH7_PIN == PTA2)
//  161             {
//  162                 port_init(FTM0_CH7_PIN, ALT3);
//  163             }
//  164             else
//  165             {
//  166                 ASSERT(0);                      //���ùܽ�����
//  167             }
//  168             break;
        B.N      ??FTM_port_mux_13
//  169         default:
//  170             return;
??FTM_port_mux_12:
        B.N      ??FTM_port_mux_14
//  171         }
//  172         break;
??FTM_port_mux_13:
        B.N      ??FTM_port_mux_15
//  173 
//  174     case FTM1:
//  175         SIM_SCGC6 |= SIM_SCGC6_FTM1_MASK;       //ʹ��FTM1ʱ��
??FTM_port_mux_2:
        LDR.W    R0,??DataTable10  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000000
        LDR.W    R1,??DataTable10  ;; 0x4004803c
        STR      R0,[R1, #+0]
//  176         switch(ch)
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??FTM_port_mux_16
        CMP      R5,#+1
        BEQ.N    ??FTM_port_mux_17
        B.N      ??FTM_port_mux_18
//  177         {
//  178         case FTM_CH0:
//  179             if((FTM1_CH0_PIN == PTA8) || (FTM1_CH0_PIN == PTA12) || (FTM1_CH0_PIN == PTB0) )
//  180             {
//  181                 port_init(FTM1_CH0_PIN, ALT3);
??FTM_port_mux_16:
        MOV      R1,#+768
        MOVS     R0,#+12
          CFI FunCall port_init
        BL       port_init
//  182             }
//  183             else
//  184             {
//  185                 ASSERT(0);                      //���ùܽ�����
//  186             }
//  187             break;
        B.N      ??FTM_port_mux_19
//  188 
//  189 
//  190         case FTM_CH1:
//  191             if((FTM1_CH1_PIN == PTA9) || (FTM1_CH1_PIN == PTA13) || (FTM1_CH1_PIN == PTB1) )
//  192             {
//  193                 port_init(FTM1_CH1_PIN, ALT3);
??FTM_port_mux_17:
        MOV      R1,#+768
        MOVS     R0,#+9
          CFI FunCall port_init
        BL       port_init
//  194             }
//  195             else
//  196             {
//  197                 ASSERT(0);                      //���ùܽ�����
//  198             }
//  199             break;
        B.N      ??FTM_port_mux_19
//  200 
//  201         default:
//  202             return;
??FTM_port_mux_18:
        B.N      ??FTM_port_mux_14
//  203         }
//  204         break;
??FTM_port_mux_19:
        B.N      ??FTM_port_mux_15
//  205 
//  206     case FTM2:
//  207         SIM_SCGC3 |= SIM_SCGC3_FTM2_MASK;                           //ʹ��FTM2ʱ��
??FTM_port_mux_1:
        LDR.W    R0,??DataTable10_1  ;; 0x40048030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000000
        LDR.W    R1,??DataTable10_1  ;; 0x40048030
        STR      R0,[R1, #+0]
//  208         switch(ch)
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??FTM_port_mux_20
        CMP      R5,#+1
        BEQ.N    ??FTM_port_mux_21
        B.N      ??FTM_port_mux_22
//  209         {
//  210         case FTM_CH0:
//  211             if((FTM2_CH0_PIN == PTA10) || (FTM2_CH0_PIN == PTB18) )
//  212             {
//  213                 port_init(FTM2_CH0_PIN, ALT3);
??FTM_port_mux_20:
        MOV      R1,#+768
        MOVS     R0,#+10
          CFI FunCall port_init
        BL       port_init
//  214             }
//  215             else
//  216             {
//  217                 ASSERT(0);                      //���ùܽ�����
//  218             }
//  219             break;
        B.N      ??FTM_port_mux_23
//  220 
//  221         case FTM_CH1:
//  222             if((FTM2_CH1_PIN == PTA11) || (FTM2_CH1_PIN == PTB19))
//  223             {
//  224                 port_init(FTM2_CH1_PIN, ALT3);
??FTM_port_mux_21:
        MOV      R1,#+768
        MOVS     R0,#+11
          CFI FunCall port_init
        BL       port_init
//  225             }
//  226             else
//  227             {
//  228                 ASSERT(0);                      //���ùܽ�����
//  229             }
//  230             break;
        B.N      ??FTM_port_mux_23
//  231 
//  232         default:
//  233             return;
??FTM_port_mux_22:
        B.N      ??FTM_port_mux_14
//  234         }
//  235         break;
??FTM_port_mux_23:
        B.N      ??FTM_port_mux_15
//  236 #ifdef MK60F15
//  237     case FTM3:
//  238         SIM_SCGC3 |= SIM_SCGC3_FTM3_MASK;       //ʹ��FTM3ʱ��
//  239         switch(ch)
//  240         {
//  241         case FTM_CH0:
//  242             if(FTM3_CH0_PIN == PTD0)
//  243             {
//  244                 port_init(FTM3_CH0_PIN, ALT4);
//  245             }
//  246             else if(FTM3_CH0_PIN == PTE5)
//  247             {
//  248                 port_init(FTM3_CH0_PIN, ALT6);
//  249             }
//  250             else
//  251             {
//  252                 ASSERT(0);                      //���ùܽ�����
//  253             }
//  254             break;
//  255 
//  256         case FTM_CH1:
//  257             if(FTM3_CH1_PIN == PTD1)
//  258             {
//  259                 port_init(FTM3_CH1_PIN, ALT4);
//  260             }
//  261             else if(FTM3_CH1_PIN == PTE6)
//  262             {
//  263                 port_init(FTM3_CH1_PIN, ALT6);
//  264             }
//  265             else
//  266             {
//  267                 ASSERT(0);                      //���ùܽ�����
//  268             }
//  269             break;
//  270 
//  271         case FTM_CH2:
//  272             if(FTM3_CH2_PIN == PTD2)
//  273             {
//  274                 port_init(FTM3_CH2_PIN, ALT4);
//  275             }
//  276             else if(FTM3_CH2_PIN == PTE7)
//  277             {
//  278                 port_init(FTM3_CH2_PIN, ALT6);
//  279             }
//  280             else
//  281             {
//  282                 ASSERT(0);                      //���ùܽ�����
//  283             }
//  284             break;
//  285 
//  286         case FTM_CH3:
//  287             if(FTM3_CH3_PIN == PTD3)
//  288             {
//  289                 port_init(FTM3_CH3_PIN, ALT4);
//  290             }
//  291             else if(FTM3_CH3_PIN == PTE8)
//  292             {
//  293                 port_init(FTM3_CH3_PIN, ALT6);
//  294             }
//  295             else
//  296             {
//  297                 ASSERT(0);                      //���ùܽ�����
//  298             }
//  299             break;
//  300 
//  301         case FTM_CH4:
//  302             if(FTM3_CH4_PIN == PTC8)
//  303             {
//  304                 port_init(FTM3_CH4_PIN, ALT3);
//  305             }
//  306             else if(FTM3_CH4_PIN == PTE9)
//  307             {
//  308                 port_init(FTM3_CH4_PIN, ALT6);
//  309             }
//  310             else
//  311             {
//  312                 ASSERT(0);                      //���ùܽ�����
//  313             }
//  314             break;
//  315 
//  316         case FTM_CH5:
//  317             if(FTM3_CH5_PIN == PTC9)
//  318             {
//  319                 port_init(FTM3_CH5_PIN, ALT3);
//  320             }
//  321             else if(FTM3_CH5_PIN == PTE10)
//  322             {
//  323                 port_init(FTM3_CH5_PIN, ALT6);
//  324             }
//  325             else
//  326             {
//  327                 ASSERT(0);                      //���ùܽ�����
//  328             }
//  329             break;
//  330 
//  331         case FTM_CH6:
//  332             if(FTM3_CH6_PIN == PTC10)
//  333             {
//  334                 port_init(FTM3_CH6_PIN, ALT3);
//  335             }
//  336             else if(FTM3_CH6_PIN == PTE11)
//  337             {
//  338                 port_init(FTM3_CH6_PIN, ALT6);
//  339             }
//  340             else
//  341             {
//  342                 ASSERT(0);                      //���ùܽ�����
//  343             }
//  344             break;
//  345 
//  346         case FTM_CH7:
//  347             if(FTM3_CH7_PIN == PTC11)
//  348             {
//  349                 port_init(FTM3_CH7_PIN, ALT3);
//  350             }
//  351             else if(FTM3_CH7_PIN == PTE12)
//  352             {
//  353                 port_init(FTM3_CH7_PIN, ALT6);
//  354             }
//  355             else
//  356             {
//  357                 ASSERT(0);                      //���ùܽ�����
//  358             }
//  359         }
//  360         break;
//  361 
//  362 #endif
//  363     default:
//  364         break;
//  365     }
//  366 }
??FTM_port_mux_3:
??FTM_port_mux_15:
??FTM_port_mux_14:
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock0
//  367 
//  368 /*!
//  369  *  @brief      ��ʼ��FTM ��PWM ����
//  370  *  @param      FTMn_e    ģ��ţ�FTM0��  FTM1��  FTM2��
//  371  *  @param      FTM_CHn_e     ͨ���ţ�CH0~CH7��
//  372  *  @param      freq    Ƶ�ʣ���λΪHz��
//  373  *  @param      duty    ռ�ձȷ��ӣ�ռ�ձ� = duty / FTMn_PRECISON
//  374  *  @since      v5.0
//  375  *  @note       ͬһ��FTM��PWMƵ���Ǳ���һ���ģ���ռ�ձȿɲ�һ������3��FTM�����������3����ͬƵ��PWM
//  376  *  Sample usage:       ftm_pwm_init(FTM0, FTM_CH6,200, 10);    //��ʼ�� FTM0_CH6 Ϊ Ƶ�� 200Hz ��PWM��ռ�ձ�Ϊ 10/FTM0_PRECISON
//  377  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function ftm_pwm_init
        THUMB
//  378 void ftm_pwm_init(FTMn_e ftmn, FTM_CHn_e ch, uint32 freq, uint32 duty)
//  379 {
ftm_pwm_init:
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
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
//  380     uint32 clk_hz ;
//  381     uint16 mod;
//  382     uint8  ps;
//  383     uint16 cv;
//  384 
//  385     ASSERT( (ftmn == FTM0) || ( (ftmn == FTM1 || ftmn == FTM2 ) && (ch <= FTM_CH1))
//  386 #ifdef MK60F15
//  387             || (ftmn == FTM3)       //FX  ��FTM3
//  388 #endif
//  389            );  //��鴫�ݽ�����ͨ���Ƿ���ȷ
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??ftm_pwm_init_0
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??ftm_pwm_init_1
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+2
        BNE.N    ??ftm_pwm_init_2
??ftm_pwm_init_1:
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        CMP      R5,#+2
        BLT.N    ??ftm_pwm_init_0
??ftm_pwm_init_2:
        MOVW     R1,#+389
        LDR.W    R0,??DataTable10_2
          CFI FunCall assert_failed
        BL       assert_failed
//  390 
//  391     /******************* ����ʱ�� �� ����IO��*******************/
//  392     FTM_port_mux(ftmn,ch);
??ftm_pwm_init_0:
        MOVS     R1,R5
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
          CFI FunCall FTM_port_mux
        BL       FTM_port_mux
//  393 
//  394     /*       ����Ƶ������        */
//  395     //  �� CPWMS = 1 ����˫�߲�׽���壬�� PMWƵ�� =  busƵ�� /2 /(2^Ԥ��Ƶ����)/ģ��
//  396     //  �� CPWMS = 0 �������߲�׽���壬�� PMWƵ�� =  busƵ��    /(2^Ԥ��Ƶ����)/ģ��
//  397     //  EPWM������ ��MOD - CNTIN + 0x0001   (CNTIN ��Ϊ0)
//  398     //  �����ȣ�CnV - CNTIN
//  399 
//  400     //  ģ�� MOD < 0x10000
//  401     //  Ԥ��Ƶ���� PS  < 0x07
//  402     //  Ԥ��Ƶ���� PS ԽСʱ��ģ�� mod ��Խ�󣬼�����Խ��׼��PWM�����Ϊ׼ȷ
//  403     //  MOD  = clk_hz/(freq*(1 << PS)) < 0x10000  ==>  clk_hz/(freq*0x10000) < (1<< PS)  ==>  (clk_hz/(freq*0x10000) >> PS) < 1
//  404     //  �� (((clk_hz/0x10000 )/ freq ) >> PS ) < 1
//  405 
//  406     // �� CPWMS = 0 �������߲�׽����Ϊ��
//  407     clk_hz = (bus_clk_khz * 1000) ;     // busƵ��
        LDR.W    R0,??DataTable10_3
        LDR      R1,[R0, #+0]
        MOV      R0,#+1000
        MULS     R1,R0,R1
        MOV      R8,R1
//  408 
//  409     mod = (clk_hz >> 16 ) / freq ;      // ��ʱ�� mod ����һ��
        MOV      R0,R8
        LSRS     R0,R0,#+16
        UDIV     R0,R0,R6
        MOV      R9,R0
//  410     ps = 0;
        MOVS     R0,#+0
        MOV      R10,R0
//  411     while((mod >> ps) >= 1)             // �� (mod >> ps) < 1 ���˳� while ѭ�� ������ PS ����Сֵ
??ftm_pwm_init_3:
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        MOV      R0,R9
        ASRS     R0,R0,R10
        CMP      R0,#+1
        BLT.N    ??ftm_pwm_init_4
//  412     {
//  413         ps++;
        ADDS     R10,R10,#+1
        B.N      ??ftm_pwm_init_3
//  414     }
//  415 
//  416     ASSERT(ps <= 0x07);                 // ���ԣ� PS ���Ϊ 0x07 ��������ֵ���� PWMƵ�����ù��ͣ��� Bus Ƶ�ʹ���
??ftm_pwm_init_4:
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        CMP      R10,#+8
        BLT.N    ??ftm_pwm_init_5
        MOV      R1,#+416
        LDR.W    R0,??DataTable10_2
          CFI FunCall assert_failed
        BL       assert_failed
//  417 
//  418     mod = (clk_hz >> ps) / freq;        // �� MOD ��ֵ
??ftm_pwm_init_5:
        MOV      R0,R8
        LSRS     R0,R0,R10
        UDIV     R0,R0,R6
        MOV      R9,R0
//  419 
//  420     ftm_mod[ftmn]=mod;
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        LDR.W    R0,??DataTable10_4
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        STR      R9,[R0, R4, LSL #+2]
//  421 
//  422     switch(ftmn)                        // ��ֵ CNTIN ��Ϊ0 �������ȣ�CnV - CNTIN ���� CnV ���� �������ˡ�
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??ftm_pwm_init_6
        CMP      R4,#+2
        BEQ.N    ??ftm_pwm_init_7
        BCC.N    ??ftm_pwm_init_8
        B.N      ??ftm_pwm_init_9
//  423     {
//  424         // EPWM������ �� MOD - CNTIN + 0x0001 == MOD - 0 + 1
//  425         // �� CnV = (MOD - 0 + 1) * ռ�ձ� = (MOD - 0 + 1) * duty/ FTM_PRECISON
//  426     case FTM0:
//  427         cv = (duty * (mod - 0 + 1)) / FTM0_PRECISON;
??ftm_pwm_init_6:
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        ADDS     R0,R9,#+1
        MUL      R0,R0,R7
        MOV      R1,#+1000
        UDIV     R0,R0,R1
        MOV      R11,R0
//  428         break;
        B.N      ??ftm_pwm_init_10
//  429 
//  430     case FTM1:
//  431         cv = (duty * (mod - 0 + 1)) / FTM1_PRECISON;
??ftm_pwm_init_8:
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        ADDS     R0,R9,#+1
        MUL      R0,R0,R7
        MOV      R1,#+1000
        UDIV     R0,R0,R1
        MOV      R11,R0
//  432         break;
        B.N      ??ftm_pwm_init_10
//  433 
//  434     case FTM2:
//  435         cv = (duty * (mod - 0 + 1)) / FTM2_PRECISON;
??ftm_pwm_init_7:
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        ADDS     R0,R9,#+1
        MUL      R0,R0,R7
        MOV      R1,#+1000
        UDIV     R0,R0,R1
        MOV      R11,R0
//  436         break;
        B.N      ??ftm_pwm_init_10
//  437 #ifdef MK60F15
//  438     case FTM3:
//  439         cv = (duty * (mod - 0 + 1)) / FTM3_PRECISON;
//  440         break;
//  441 #endif
//  442 
//  443     default:
//  444         break;
//  445     }
//  446 
//  447     /******************** ѡ�����ģʽΪ ���ض���PWM *******************/
//  448     //ͨ��״̬���ƣ�����ģʽ��ѡ�� ���ػ��ƽ
//  449     FTM_CnSC_REG(FTMN[ftmn], ch) &= ~FTM_CnSC_ELSA_MASK;
??ftm_pwm_init_9:
??ftm_pwm_init_10:
        LDR.W    R0,??DataTable10_5
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        ADD      R0,R0,R5, LSL #+3
        LDR.W    R1,??DataTable10_5
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        ADD      R1,R1,R5, LSL #+3
        LDR      R1,[R1, #+12]
        BICS     R1,R1,#0x4
        STR      R1,[R0, #+12]
//  450     FTM_CnSC_REG(FTMN[ftmn], ch)  = FTM_CnSC_MSB_MASK | FTM_CnSC_ELSB_MASK;
        LDR.W    R0,??DataTable10_5
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        ADD      R0,R0,R5, LSL #+3
        MOVS     R1,#+40
        STR      R1,[R0, #+12]
//  451     // MSnB:MSnA = 1x       ���ض���PWM
//  452     // ELSnB:ELSnA = 10     �ȸߺ��
//  453     // ELSnB:ELSnA = 11     �ȵͺ��
//  454 
//  455     /******************** ����ʱ�Ӻͷ�Ƶ ********************/
//  456     FTM_SC_REG(FTMN[ftmn])    = ( 0
//  457                                   //| FTM_SC_CPWMS_MASK         //0�������ؼ���ģʽ ��1�� �����ؼ���ģʽѡ�� ��ע���˱�ʾ 0��
//  458                                   | FTM_SC_PS(ps)             //��Ƶ���ӣ���Ƶϵ�� = 2^PS
//  459                                   | FTM_SC_CLKS(1)            //ʱ��ѡ�� 0��ûѡ��ʱ�ӣ����ã� 1��bus ʱ�ӣ� 2��MCGFFCLK�� 3��EXTCLK�� ��SIM_SOPT4 ѡ������ܽ� FTM_CLKINx��
//  460                                   //| FTM_SC_TOIE_MASK        //����ж�ʹ�ܣ�ע���˱�ʾ ��ֹ����жϣ�
//  461                                 );
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        ANDS     R0,R10,#0x7
        ORRS     R0,R0,#0x8
        LDR.W    R1,??DataTable10_5
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        STR      R0,[R1, #+0]
//  462     FTM_MOD_REG(FTMN[ftmn])   = mod;                        //ģ��, EPWM������Ϊ ��MOD - CNTIN + 0x0001
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        LDR.W    R0,??DataTable10_5
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        STR      R9,[R0, #+8]
//  463     FTM_CNTIN_REG(FTMN[ftmn]) = 0;                          //��������ʼ��ֵ�����������ȣ�(CnV - CNTIN).
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_5
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        STR      R0,[R1, #+76]
//  464     FTM_CnV_REG(FTMN[ftmn], ch) = cv;
        LDR.W    R0,??DataTable10_5
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        ADD      R0,R0,R5, LSL #+3
        UXTH     R11,R11          ;; ZeroExt  R11,R11,#+16,#+16
        STR      R11,[R0, #+16]
//  465     FTM_CNT_REG(FTMN[ftmn])   = 0;                          //��������ֻ�е�16λ���ã�д�κ�ֵ���˼Ĵ������������ CNTIN ��ֵ��
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_5
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        STR      R0,[R1, #+4]
//  466 }
        POP      {R0,R4-R11,PC}   ;; return
          CFI EndBlock cfiBlock1
//  467 
//  468 /*!
//  469  *  @brief      ����FTM ��PWM ͨ��ռ�ձ�
//  470  *  @param      FTMn_e    ģ��ţ�FTM0��  FTM1��  FTM2��
//  471  *  @param      FTM_CHn_e     ͨ���ţ�CH0~CH7��
//  472  *  @param      duty    ռ�ձȷ��ӣ�ռ�ձ� = duty / FTMn_PRECISON
//  473  *  @since      v5.0
//  474  *  @note       ͬһ��FTM��PWMƵ���Ǳ���һ���ģ���ռ�ձȿɲ�һ������3��FTM�����������3����ͬƵ��PWM
//  475  *  Sample usage:       ftm_pwm_duty(FTM0, FTM_CH6, 10);    //���� FTM0_CH6ռ�ձ�Ϊ 10/FTM0_PRECISON
//  476  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function ftm_pwm_duty
        THUMB
//  477 void ftm_pwm_duty(FTMn_e ftmn, FTM_CHn_e ch, uint32 duty)
//  478 {
ftm_pwm_duty:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  479     uint32 cv;
//  480     uint32 mod = 0;
        MOVS     R8,#+0
//  481 
//  482     ASSERT( (ftmn == FTM0) || ( (ftmn == FTM1 || ftmn == FTM2 ) && (ch <= FTM_CH1))
//  483 #ifdef MK60F15
//  484             || (ftmn == FTM3)       //FX  ��FTM3
//  485 #endif
//  486            );  //��鴫�ݽ�����ͨ���Ƿ���ȷ
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??ftm_pwm_duty_0
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??ftm_pwm_duty_1
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+2
        BNE.N    ??ftm_pwm_duty_2
??ftm_pwm_duty_1:
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        CMP      R5,#+2
        BLT.N    ??ftm_pwm_duty_0
??ftm_pwm_duty_2:
        MOV      R1,#+486
        LDR.W    R0,??DataTable10_2
          CFI FunCall assert_failed
        BL       assert_failed
//  487 
//  488     switch(ftmn)
??ftm_pwm_duty_0:
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??ftm_pwm_duty_3
        CMP      R4,#+2
        BEQ.N    ??ftm_pwm_duty_4
        BCC.N    ??ftm_pwm_duty_5
        B.N      ??ftm_pwm_duty_6
//  489     {
//  490         //����˴�����ʧ�ܣ�˵��ռ�ձȳ��� 100% ��������м���Ƿ�����������
//  491     case FTM0:
//  492         ASSERT(duty <= FTM0_PRECISON);     //�ö��Լ�� ռ�ձ��Ƿ����
??ftm_pwm_duty_3:
        MOVW     R0,#+1001
        CMP      R6,R0
        BCC.N    ??ftm_pwm_duty_7
        MOV      R1,#+492
        LDR.W    R0,??DataTable10_2
          CFI FunCall assert_failed
        BL       assert_failed
//  493         break;
??ftm_pwm_duty_7:
        B.N      ??ftm_pwm_duty_8
//  494 
//  495     case FTM1:
//  496         ASSERT(duty <= FTM1_PRECISON);     //�ö��Լ�� ռ�ձ��Ƿ����
??ftm_pwm_duty_5:
        MOVW     R0,#+1001
        CMP      R6,R0
        BCC.N    ??ftm_pwm_duty_9
        MOV      R1,#+496
        LDR.W    R0,??DataTable10_2
          CFI FunCall assert_failed
        BL       assert_failed
//  497         break;
??ftm_pwm_duty_9:
        B.N      ??ftm_pwm_duty_8
//  498 
//  499     case FTM2:
//  500         ASSERT(duty <= FTM2_PRECISON);     //�ö��Լ�� ռ�ձ��Ƿ����
??ftm_pwm_duty_4:
        MOVW     R0,#+1001
        CMP      R6,R0
        BCC.N    ??ftm_pwm_duty_10
        MOV      R1,#+500
        LDR.W    R0,??DataTable10_2
          CFI FunCall assert_failed
        BL       assert_failed
//  501         break;
??ftm_pwm_duty_10:
        B.N      ??ftm_pwm_duty_8
//  502 
//  503 #ifdef MK60F15
//  504     case FTM3:
//  505         ASSERT(duty <= FTM3_PRECISON);     //�ö��Լ�� ռ�ձ��Ƿ����
//  506         break;
//  507 #endif
//  508 
//  509     default:
//  510         break;
//  511     }
//  512 
//  513 
//  514     //ռ�ձ� = (CnV-CNTIN)/(MOD-CNTIN+1
//  515     mod=ftm_mod[ftmn];
??ftm_pwm_duty_6:
??ftm_pwm_duty_8:
        LDR.W    R0,??DataTable10_4
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        MOV      R8,R0
//  516 
//  517 
//  518     switch(ftmn)
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??ftm_pwm_duty_11
        CMP      R4,#+2
        BEQ.N    ??ftm_pwm_duty_12
        BCC.N    ??ftm_pwm_duty_13
        B.N      ??ftm_pwm_duty_14
//  519     {
//  520     case FTM0:
//  521         cv = (duty * (mod - 0 + 1)) / FTM0_PRECISON;
??ftm_pwm_duty_11:
        ADDS     R0,R8,#+1
        MUL      R0,R0,R6
        MOV      R1,#+1000
        UDIV     R0,R0,R1
        MOVS     R7,R0
//  522         break;
        B.N      ??ftm_pwm_duty_15
//  523 
//  524     case FTM1:
//  525         cv = (duty * (mod - 0 + 1)) / FTM1_PRECISON;
??ftm_pwm_duty_13:
        ADDS     R0,R8,#+1
        MUL      R0,R0,R6
        MOV      R1,#+1000
        UDIV     R0,R0,R1
        MOVS     R7,R0
//  526         break;
        B.N      ??ftm_pwm_duty_15
//  527 
//  528     case FTM2:
//  529         cv = (duty * (mod - 0 + 1)) / FTM2_PRECISON;
??ftm_pwm_duty_12:
        ADDS     R0,R8,#+1
        MUL      R0,R0,R6
        MOV      R1,#+1000
        UDIV     R0,R0,R1
        MOVS     R7,R0
//  530         break;
        B.N      ??ftm_pwm_duty_15
//  531 
//  532 #ifdef MK60F15
//  533     case FTM3:
//  534         cv = (duty * (mod - 0 + 1)) / FTM3_PRECISON;
//  535         break;
//  536 #endif
//  537 
//  538     default:
//  539         break;
//  540     }
//  541 
//  542     // ����FTMͨ��ֵ
//  543     FTM_CnV_REG(FTMN[ftmn], ch) = cv;
??ftm_pwm_duty_14:
??ftm_pwm_duty_15:
        LDR.W    R0,??DataTable10_5
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        ADD      R0,R0,R5, LSL #+3
        STR      R7,[R0, #+16]
//  544 
//  545 }
        POP      {R4-R8,PC}       ;; return
          CFI EndBlock cfiBlock2
//  546 
//  547 /*!
//  548  *  @brief      ����FTM��Ƶ��
//  549  *  @param      freq    Ƶ�ʣ���λΪHz��
//  550  *  @since      v5.0
//  551  *  @note       �޸�PWMƵ�ʺ󣬱������ ftm_pwm_duty ��������ռ�ձȡ�ͬһ��ģ�飬PWMƵ�ʱ�����ͬ��
//  552  *  Sample usage:       ftm_pwm_freq(FTM0,200);    //���� FTM0 �� Ƶ�� Ϊ 200Hz
//  553  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function ftm_pwm_freq
        THUMB
//  554 void ftm_pwm_freq(FTMn_e ftmn, uint32 freq)             //����FTM��Ƶ��
//  555 {
ftm_pwm_freq:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
        MOVS     R4,R0
        MOVS     R5,R1
//  556     uint32 clk_hz = (bus_clk_khz * 1000) >> 1;        //busƵ��/2
        LDR.W    R0,??DataTable10_3
        LDR      R6,[R0, #+0]
        MOV      R0,#+1000
        MULS     R6,R0,R6
        ASRS     R6,R6,#+1
//  557     uint32 mod;
//  558     uint8 ps;
//  559 
//  560     /*       ����Ƶ������        */
//  561     // �� CPWMS = 0 �������߲�׽����Ϊ��
//  562     clk_hz = (bus_clk_khz * 1000) ;     // busƵ��
        LDR.W    R0,??DataTable10_3
        LDR      R1,[R0, #+0]
        MOV      R0,#+1000
        MULS     R1,R0,R1
        MOVS     R6,R1
//  563 
//  564     mod = (clk_hz >> 16 ) / freq ;      // ��ʱ�� mod ����һ��
        MOVS     R0,R6
        LSRS     R0,R0,#+16
        UDIV     R0,R0,R5
        MOVS     R7,R0
//  565     ps = 0;
        MOVS     R0,#+0
        MOV      R8,R0
//  566     while((mod >> ps) >= 1)             // �� (mod >> ps) < 1 ���˳� while ѭ�� ������ PS ����Сֵ
??ftm_pwm_freq_0:
        MOVS     R0,R7
        LSRS     R0,R0,R8
        CMP      R0,#+0
        BEQ.N    ??ftm_pwm_freq_1
//  567     {
//  568         ps++;
        ADDS     R8,R8,#+1
        B.N      ??ftm_pwm_freq_0
//  569     }
//  570 
//  571     ASSERT(ps <= 0x07);                 // ���ԣ� PS ���Ϊ 0x07 ��������ֵ���� PWMƵ�����ù��ͣ��� Bus Ƶ�ʹ���
??ftm_pwm_freq_1:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+8
        BLT.N    ??ftm_pwm_freq_2
        MOVW     R1,#+571
        LDR.W    R0,??DataTable10_2
          CFI FunCall assert_failed
        BL       assert_failed
//  572 
//  573     mod = (clk_hz >> ps) / freq;        // �� MOD ��ֵ
??ftm_pwm_freq_2:
        MOVS     R0,R6
        LSRS     R0,R0,R8
        UDIV     R0,R0,R5
        MOVS     R7,R0
//  574 
//  575     ftm_mod[ftmn]=mod;
        LDR.W    R0,??DataTable10_4
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        STR      R7,[R0, R4, LSL #+2]
//  576 
//  577     /******************** ����ʱ�Ӻͷ�Ƶ ********************/
//  578     FTM_SC_REG(FTMN[ftmn])    = ( 0
//  579                                   //| FTM_SC_CPWMS_MASK         //0�������ؼ���ģʽ ��1�� �����ؼ���ģʽѡ�� ��ע���˱�ʾ 0��
//  580                                   | FTM_SC_PS(ps)             //��Ƶ���ӣ���Ƶϵ�� = 2^PS
//  581                                   | FTM_SC_CLKS(1)            //ʱ��ѡ�� 0��ûѡ��ʱ�ӣ����ã� 1��bus ʱ�ӣ� 2��MCGFFCLK�� 3��EXTCLK�� ��SIM_SOPT4 ѡ������ܽ� FTM_CLKINx��
//  582                                   //| FTM_SC_TOIE_MASK        //����ж�ʹ�ܣ�ע���˱�ʾ ��ֹ����жϣ�
//  583                                 );
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        ANDS     R0,R8,#0x7
        ORRS     R0,R0,#0x8
        LDR.W    R1,??DataTable10_5
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        STR      R0,[R1, #+0]
//  584     FTM_CNTIN_REG(FTMN[ftmn]) = 0;      //��������ʼ��ֵ�����������ȣ�(CnV - CNTIN).
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_5
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        STR      R0,[R1, #+76]
//  585     FTM_MOD_REG(FTMN[ftmn])   = mod;    //ģ��, EPWM������Ϊ ��MOD - CNTIN + 0x0001
        LDR.W    R0,??DataTable10_5
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        STR      R7,[R0, #+8]
//  586     FTM_CNT_REG(FTMN[ftmn])   = 0;      //��������ֻ�е�16λ���ã�д�κ�ֵ���˼Ĵ������������ CNTIN ��ֵ��
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_5
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        STR      R0,[R1, #+4]
//  587 }
        POP      {R4-R8,PC}       ;; return
          CFI EndBlock cfiBlock3
//  588 
//  589 //////////////////////////////// ����Ϊ���PWM  //////////////////////////////////////////
//  590 
//  591 //////////////////////////////// ����Ϊ���벶׽ //////////////////////////////////////////
//  592 
//  593 /*!
//  594  *  @brief      ���벶׽��ʼ������
//  595  *  @param      FTMn_e          ģ��ţ�FTM0��  FTM1��  FTM2��
//  596  *  @param      FTM_CHn_e       ͨ���ţ�CH0~CH7��
//  597  *  @param      FTM_Input_cfg   ���벶׽������������
//  598  *  @param      FTM_PS_e        ��Ƶ����
//  599  *  @since      v5.0
//  600  *  @note       ͬһ��FTM��ֻ�ܸ�һ����������벶׽��Ͳ�Ҫ�������������ܣ�����PWM��
//  601  *  Sample usage:       ftm_input_init(FTM0, FTM_CH0, FTM_Rising,FTM_PS_2);    //���� FTM0_CH0�����ش������벶׽������Ƶ
//  602  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function ftm_input_init
        THUMB
//  603 void ftm_input_init(FTMn_e ftmn, FTM_CHn_e ch, FTM_Input_cfg cfg,FTM_PS_e ps)
//  604 {
ftm_input_init:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
//  605     ASSERT( (ftmn == FTM0) || ( (ftmn == FTM1 || ftmn == FTM2 ) && (ch <= FTM_CH1))
//  606 #ifdef MK60F15
//  607             || (ftmn == FTM3)       //FX  ��FTM3
//  608 #endif
//  609            );  //��鴫�ݽ�����ͨ���Ƿ���ȷ
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??ftm_input_init_0
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??ftm_input_init_1
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+2
        BNE.N    ??ftm_input_init_2
??ftm_input_init_1:
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        CMP      R5,#+2
        BLT.N    ??ftm_input_init_0
??ftm_input_init_2:
        MOVW     R1,#+609
        LDR.N    R0,??DataTable10_2
          CFI FunCall assert_failed
        BL       assert_failed
//  610 
//  611     /******************* ����ʱ�� �� ����IO��*******************/
//  612     FTM_port_mux(ftmn,ch);
??ftm_input_init_0:
        MOVS     R1,R5
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
          CFI FunCall FTM_port_mux
        BL       FTM_port_mux
//  613 
//  614     /******************* ����Ϊ���벶׽���� *******************/
//  615     switch(cfg)
        SXTB     R6,R6            ;; SignExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??ftm_input_init_3
        CMP      R6,#+2
        BEQ.N    ??ftm_input_init_4
        BCC.N    ??ftm_input_init_5
        B.N      ??ftm_input_init_6
//  616     {
//  617         //���벶׽ģʽ�£�DECAPEN = 0 �� DECAPEN = 0 ��CPWMS = 0�� MSnB:MSnA = 0
//  618 
//  619         // ELSnB:ELSnA         1          10          11
//  620         // ����             ������      �½���      ������
//  621 
//  622     case FTM_Rising:    //�����ش���
//  623         FTM_CnSC_REG(FTMN[ftmn], ch) |=  ( FTM_CnSC_ELSA_MASK  | FTM_CnSC_CHIE_MASK );                   //��1
??ftm_input_init_3:
        LDR.N    R0,??DataTable10_5
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        ADD      R0,R0,R5, LSL #+3
        LDR.N    R1,??DataTable10_5
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        ADD      R1,R1,R5, LSL #+3
        LDR      R1,[R1, #+12]
        ORRS     R1,R1,#0x44
        STR      R1,[R0, #+12]
//  624         FTM_CnSC_REG(FTMN[ftmn], ch) &= ~( FTM_CnSC_ELSB_MASK  | FTM_CnSC_MSB_MASK | FTM_CnSC_MSA_MASK); //��0
        LDR.N    R0,??DataTable10_5
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        ADD      R0,R0,R5, LSL #+3
        LDR.N    R1,??DataTable10_5
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        ADD      R1,R1,R5, LSL #+3
        LDR      R1,[R1, #+12]
        BICS     R1,R1,#0x38
        STR      R1,[R0, #+12]
//  625         break;
        B.N      ??ftm_input_init_6
//  626 
//  627     case FTM_Falling:   //�½��ش���
//  628         FTM_CnSC_REG(FTMN[ftmn], ch) |= (FTM_CnSC_ELSB_MASK  | FTM_CnSC_CHIE_MASK );                    //��1
??ftm_input_init_5:
        LDR.N    R0,??DataTable10_5
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        ADD      R0,R0,R5, LSL #+3
        LDR.N    R1,??DataTable10_5
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        ADD      R1,R1,R5, LSL #+3
        LDR      R1,[R1, #+12]
        ORRS     R1,R1,#0x48
        STR      R1,[R0, #+12]
//  629         FTM_CnSC_REG(FTMN[ftmn], ch) &= ~( FTM_CnSC_ELSA_MASK | FTM_CnSC_MSB_MASK | FTM_CnSC_MSA_MASK); //��0
        LDR.N    R0,??DataTable10_5
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        ADD      R0,R0,R5, LSL #+3
        LDR.N    R1,??DataTable10_5
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        ADD      R1,R1,R5, LSL #+3
        LDR      R1,[R1, #+12]
        BICS     R1,R1,#0x34
        STR      R1,[R0, #+12]
//  630         break;
        B.N      ??ftm_input_init_6
//  631 
//  632     case FTM_Rising_or_Falling: //�����ء��½��ض�����
//  633         FTM_CnSC_REG(FTMN[ftmn], ch) |=  ( FTM_CnSC_ELSB_MASK | FTM_CnSC_ELSA_MASK  | FTM_CnSC_CHIE_MASK ); //��1
??ftm_input_init_4:
        LDR.N    R0,??DataTable10_5
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        ADD      R0,R0,R5, LSL #+3
        LDR.N    R1,??DataTable10_5
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        ADD      R1,R1,R5, LSL #+3
        LDR      R1,[R1, #+12]
        ORRS     R1,R1,#0x4C
        STR      R1,[R0, #+12]
//  634         FTM_CnSC_REG(FTMN[ftmn], ch) &= ~( FTM_CnSC_MSB_MASK  | FTM_CnSC_MSA_MASK); //��0
        LDR.N    R0,??DataTable10_5
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        ADD      R0,R0,R5, LSL #+3
        LDR.N    R1,??DataTable10_5
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        ADD      R1,R1,R5, LSL #+3
        LDR      R1,[R1, #+12]
        BICS     R1,R1,#0x30
        STR      R1,[R0, #+12]
//  635         break;
//  636     }
//  637 
//  638     FTM_SC_REG(FTMN[ftmn]) = ( 0
//  639                               | FTM_SC_CLKS(0x1)       //ѡ�� bus ʱ��
//  640                               | FTM_SC_PS(ps)          //ѡ�� ��Ƶϵ��
//  641                              );
??ftm_input_init_6:
        SXTB     R7,R7            ;; SignExt  R7,R7,#+24,#+24
        ANDS     R0,R7,#0x7
        ORRS     R0,R0,#0x8
        LDR.N    R1,??DataTable10_5
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        STR      R0,[R1, #+0]
//  642     FTM_MODE_REG(FTMN[ftmn])    |= FTM_MODE_WPDIS_MASK; //��ֹд����
        LDR.N    R0,??DataTable10_5
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDR      R0,[R0, #+84]
        ORRS     R0,R0,#0x4
        LDR.N    R1,??DataTable10_5
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        STR      R0,[R1, #+84]
//  643     FTM_COMBINE_REG(FTMN[ftmn]) = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable10_5
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        STR      R0,[R1, #+100]
//  644     FTM_MODE_REG(FTMN[ftmn])    &= ~FTM_MODE_FTMEN_MASK;    //ʹ��FTM
        LDR.N    R0,??DataTable10_5
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDR      R0,[R0, #+84]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.N    R1,??DataTable10_5
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        STR      R0,[R1, #+84]
//  645     FTM_CNTIN_REG(FTMN[ftmn])   = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable10_5
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        STR      R0,[R1, #+76]
//  646 
//  647     FTM_STATUS_REG(FTMN[ftmn])  = 0x00;               //���жϱ�־λ
        MOVS     R0,#+0
        LDR.N    R1,??DataTable10_5
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        STR      R0,[R1, #+80]
//  648 
//  649     //�������벶׽�ж�
//  650     //enable_irq(FTM0_IRQn + ftmn);
//  651 }
        POP      {R0,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock4
//  652 
//  653 /*!
//  654  *  @brief      ���벶׽��ʼ������
//  655  *  @param      FTMn_e          ģ��ţ�FTM0��  FTM1��  FTM2��
//  656  *  @param      FTM_CHn_e       ͨ���ţ�CH0~CH7��
//  657  *  @param      FTM_Input_cfg   ���벶׽������������
//  658  *  @return     ��ȡ��׽�¼�����ʱ�ļ�����ֵ (�������β�׽֮��Ĳ�ֵ���ж�����Ƶ��)
//  659  *  @since      v5.0
//  660  *  Sample usage:       uint16 data = ftm_input_get (FTM0, FTM_CH0) ;   // ��ȡFTM0_CH0���벶׽�¼�����ʱ�ļ���ֵ
//  661  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function ftm_input_get
        THUMB
//  662 uint16   ftm_input_get (FTMn_e ftmn, FTM_CHn_e ch)
//  663 {
ftm_input_get:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
//  664         ASSERT( (ftmn == FTM0) || ( (ftmn == FTM1 || ftmn == FTM2 ) && (ch <= FTM_CH1))
//  665 #ifdef MK60F15
//  666                 || (ftmn == FTM3)       //FX  ��FTM3
//  667 #endif
//  668                );  //��鴫�ݽ�����ͨ���Ƿ���ȷ
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??ftm_input_get_0
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??ftm_input_get_1
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+2
        BNE.N    ??ftm_input_get_2
??ftm_input_get_1:
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        CMP      R5,#+2
        BLT.N    ??ftm_input_get_0
??ftm_input_get_2:
        MOV      R1,#+668
        LDR.N    R0,??DataTable10_2
          CFI FunCall assert_failed
        BL       assert_failed
//  669 
//  670     return (uint16)FTM_CnV_REG(FTMN[ftmn],ch);    //����
??ftm_input_get_0:
        LDR.N    R0,??DataTable10_5
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        ADD      R0,R0,R5, LSL #+3
        LDR      R0,[R0, #+16]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R1,R4,R5,PC}    ;; return
//  671 }
          CFI EndBlock cfiBlock5
//  672 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function ftm_input_clean
        THUMB
//  673 void     ftm_input_clean (FTMn_e ftmn)
//  674 {
ftm_input_clean:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//  675     ASSERT( ftmn < FTM_MAX);     //��鴫�ݽ�����ͨ���Ƿ���ȷ
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+3
        BLT.N    ??ftm_input_clean_0
        MOVW     R1,#+675
        LDR.N    R0,??DataTable10_2
          CFI FunCall assert_failed
        BL       assert_failed
//  676 
//  677     FTM_CNT_REG(FTMN[ftmn]) = 0;               //�� ����������ֵ
??ftm_input_clean_0:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable10_5
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        STR      R0,[R1, #+4]
//  678 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock6
//  679 
//  680 
//  681 /*!
//  682  *  @brief      FTM�����жϷ�����
//  683  *  @since      v5.0
//  684  *  @warning    �˺�����Ҫ�û������Լ�������ɣ�����������ṩһ��ģ��
//  685  *  Sample usage:       set_vector_handler(FTM0_IRQn , FTM1_Input_test_handler);    //�� FTM1_Input_test_handler ������ӵ��ж�����������Ҫ�����ֶ�����
//  686  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function FTM1_Input_test_handler
          CFI NoCalls
        THUMB
//  687 void FTM1_Input_test_handler(void)
//  688 {
//  689     uint8 s = FTM1_STATUS;             //��ȡ��׽�ͱȽ�״̬  All CHnF bits can be checked using only one read of STATUS.
FTM1_Input_test_handler:
        LDR.N    R0,??DataTable10_6  ;; 0x40039050
        LDR      R0,[R0, #+0]
//  690     uint8 CHn;
//  691 
//  692     FTM1_STATUS = 0x00;             //���жϱ�־λ
        MOVS     R2,#+0
        LDR.N    R3,??DataTable10_6  ;; 0x40039050
        STR      R2,[R3, #+0]
//  693 
//  694     CHn = 0;
        MOVS     R2,#+0
        MOVS     R1,R2
//  695     if( s & (1 << CHn) )
//  696     {
//  697         //FTM_IRQ_DIS(FTM1, CHn);     //��ֹ���벶׽�ж�
//  698         /*     �û�����       */
//  699 
//  700         /*********************/
//  701         //FTM_IRQ_EN(FTM1, CHn); //�������벶׽�ж�
//  702 
//  703     }
//  704 
//  705     /* ������� n=1 ��ģ�棬����ģ������� */
//  706     CHn = 1;
        MOVS     R2,#+1
        MOVS     R1,R2
//  707     if( s & (1 << CHn) )
//  708     {
//  709         //FTM_IRQ_EN(FTM1, CHn); //�������벶׽�ж�
//  710         /*     �û�����       */
//  711 
//  712 
//  713         /*********************/
//  714         //�����������￪�����벶׽�ж�
//  715         //FTM_IRQ_EN(FTM1, CHn); //�������벶׽�ж�
//  716     }
//  717 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock7
//  718 
//  719 //////////////////////////////// ����Ϊ���벶׽  //////////////////////////////////////////
//  720 
//  721 //////////////////////////////// ����Ϊ�������� //////////////////////////////////////////
//  722 
//  723 /*!
//  724  *  @brief      ��ʼ��FTM ���������� ����
//  725  *  @param      FTMn_e    ģ��ţ� FTM1��  FTM2��
//  726  *  @since      v5.0
//  727  *  Sample usage:       ftm_quad_init(FTM1);    //��ʼ�� FTM1 Ϊ��������ģʽ
//  728  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function ftm_quad_init
        THUMB
//  729 void ftm_quad_init(FTMn_e ftmn)
//  730 {
ftm_quad_init:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//  731     ASSERT( (ftmn == FTM1) || (ftmn == FTM2 ) ); //��鴫�ݽ�����ͨ���Ƿ���ȷ
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??ftm_quad_init_0
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+2
        BEQ.N    ??ftm_quad_init_0
        MOVW     R1,#+731
        LDR.N    R0,??DataTable10_2
          CFI FunCall assert_failed
        BL       assert_failed
//  732 
//  733     /******************* ����ʱ�� �� ����IO��*******************/
//  734     switch(ftmn)
??ftm_quad_init_0:
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        MOVS     R0,R4
        CMP      R0,#+1
        BEQ.N    ??ftm_quad_init_1
        CMP      R0,#+2
        BEQ.N    ??ftm_quad_init_2
        B.N      ??ftm_quad_init_3
//  735     {
//  736 
//  737     case FTM1:
//  738         SIM_SCGC6 |= SIM_SCGC6_FTM1_MASK;       //ʹ��FTM1ʱ��
??ftm_quad_init_1:
        LDR.N    R0,??DataTable10  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000000
        LDR.N    R1,??DataTable10  ;; 0x4004803c
        STR      R0,[R1, #+0]
//  739         if((FTM1_QDPHA_PIN == PTA8) || (FTM1_QDPHA_PIN == PTB0) )                 //�ܽŸ���
//  740         {
//  741             port_init(FTM1_QDPHA_PIN, ALT6);
//  742         }
//  743         else if(FTM1_QDPHA_PIN == PTA12)
//  744         {
//  745             port_init(FTM1_QDPHA_PIN, ALT7);
        MOV      R1,#+1792
        MOVS     R0,#+12
          CFI FunCall port_init
        BL       port_init
//  746         }
//  747         else
//  748         {
//  749             ASSERT(0);                          //���ԣ����õĹܽŲ�����Ҫ��
//  750         }
//  751 
//  752         if((FTM1_QDPHB_PIN == PTA9) ||(FTM1_QDPHB_PIN == PTB1))
//  753         {
//  754             port_init(FTM1_QDPHB_PIN, ALT6);
//  755         }
//  756         else if(FTM1_QDPHB_PIN == PTA13)
//  757         {
//  758             port_init(FTM1_QDPHB_PIN, ALT7);
        MOV      R1,#+1792
        MOVS     R0,#+13
          CFI FunCall port_init
        BL       port_init
//  759         }
//  760         else
//  761         {
//  762             ASSERT(0);                          //���ԣ����õĹܽŲ�����Ҫ��
//  763         }
//  764         break;
        B.N      ??ftm_quad_init_4
//  765 
//  766     case FTM2:
//  767         SIM_SCGC3 |= SIM_SCGC3_FTM2_MASK;                           //ʹ��FTM2ʱ��
??ftm_quad_init_2:
        LDR.N    R0,??DataTable10_1  ;; 0x40048030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000000
        LDR.N    R1,??DataTable10_1  ;; 0x40048030
        STR      R0,[R1, #+0]
//  768         if((FTM2_QDPHA_PIN == PTA10) || (FTM2_QDPHA_PIN == PTB18))                  //�ܽŸ���
//  769         {
//  770             port_init(FTM2_QDPHA_PIN, ALT6);
        MOV      R1,#+1536
        MOVS     R0,#+10
          CFI FunCall port_init
        BL       port_init
//  771         }
//  772         else
//  773         {
//  774             ASSERT(0);                          //���ԣ����õĹܽŲ�����Ҫ��
//  775         }
//  776 
//  777         if((FTM2_QDPHB_PIN == PTA11) || (FTM2_QDPHB_PIN == PTB19) )                 //�ܽŸ���
//  778         {
//  779             port_init(FTM2_QDPHB_PIN, ALT6);
        MOV      R1,#+1536
        MOVS     R0,#+11
          CFI FunCall port_init
        BL       port_init
//  780         }
//  781         else
//  782         {
//  783             ASSERT(0);                          //���ԣ����õĹܽŲ�����Ҫ��
//  784         }
//  785         break;
        B.N      ??ftm_quad_init_4
//  786     default:
//  787         ASSERT(0);                              //���ԣ����õ�ģ������
??ftm_quad_init_3:
        MOVW     R1,#+787
        LDR.N    R0,??DataTable10_2
          CFI FunCall assert_failed
        BL       assert_failed
//  788         break;
//  789     }
//  790 
//  791     FTM_MODE_REG(FTMN[ftmn])  |=    (0
//  792                                      | FTM_MODE_WPDIS_MASK  //д������ֹ
//  793                                      //| FTM_MODE_FTMEN_MASK   //ʹ�� FTM
//  794                                     );
??ftm_quad_init_4:
        LDR.N    R0,??DataTable10_5
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDR      R0,[R0, #+84]
        ORRS     R0,R0,#0x4
        LDR.N    R1,??DataTable10_5
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        STR      R0,[R1, #+84]
//  795     FTM_QDCTRL_REG(FTMN[ftmn]) |=   (0
//  796                                     | FTM_QDCTRL_QUADMODE_MASK
//  797                                      );
        LDR.N    R0,??DataTable10_5
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDR      R0,[R0, #+128]
        ORRS     R0,R0,#0x8
        LDR.N    R1,??DataTable10_5
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        STR      R0,[R1, #+128]
//  798     FTM_CNTIN_REG(FTMN[ftmn])   = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable10_5
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        STR      R0,[R1, #+76]
//  799     FTM_MOD_REG(FTMN[ftmn])     = FTM_MOD_MOD_MASK;
        MOVW     R0,#+65535
        LDR.N    R1,??DataTable10_5
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        STR      R0,[R1, #+8]
//  800     FTM_QDCTRL_REG(FTMN[ftmn]) |=   (0
//  801                                     | FTM_QDCTRL_QUADEN_MASK
//  802                                      );
        LDR.N    R0,??DataTable10_5
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDR      R0,[R0, #+128]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable10_5
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        STR      R0,[R1, #+128]
//  803     FTM_MODE_REG(FTMN[ftmn])  |= FTM_QDCTRL_QUADEN_MASK;
        LDR.N    R0,??DataTable10_5
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDR      R0,[R0, #+84]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable10_5
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        STR      R0,[R1, #+84]
//  804     FTM_CNT_REG(FTMN[ftmn])     = 0;                    //��������ֻ�е�16λ���ã�д�κ�ֵ���˼Ĵ������������ CNTIN ��ֵ��
        MOVS     R0,#+0
        LDR.N    R1,??DataTable10_5
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        STR      R0,[R1, #+4]
//  805 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock8
//  806 
//  807 /*!
//  808  *  @brief      ��ȡFTM �������� ��������
//  809  *  @param      FTMn_e    ģ��ţ� FTM1��  FTM2��
//  810  *  @since      v5.0
//  811  *  Sample usage:       int16 count = ftm_quad_get(FTM1);    //��ȡ  FTM1 ������ ��������
//  812  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function ftm_quad_get
        THUMB
//  813 int16 ftm_quad_get(FTMn_e ftmn)
//  814 {
ftm_quad_get:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
//  815     int16 val;
//  816     ASSERT( (ftmn == FTM1) || (ftmn == FTM2 ) );        //��鴫�ݽ�����ͨ���Ƿ���ȷ
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??ftm_quad_get_0
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+2
        BEQ.N    ??ftm_quad_get_0
        MOV      R1,#+816
        LDR.N    R0,??DataTable10_2
          CFI FunCall assert_failed
        BL       assert_failed
//  817     val = FTM_CNT_REG(FTMN[ftmn]);
??ftm_quad_get_0:
        LDR.N    R0,??DataTable10_5
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDR      R0,[R0, #+4]
        MOVS     R5,R0
//  818 
//  819     return val;
        MOVS     R0,R5
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        POP      {R1,R4,R5,PC}    ;; return
//  820 }
          CFI EndBlock cfiBlock9
//  821 
//  822 /*!
//  823  *  @brief      �� FTM �������� ��������
//  824  *  @param      FTMn_e    ģ��ţ� FTM1��  FTM2��
//  825  *  @since      v5.0
//  826  *  Sample usage:       ftm_quad_clean(FTM1);    //��λ FTM1 �������� ��������
//  827  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function ftm_quad_clean
        THUMB
//  828 void ftm_quad_clean(FTMn_e ftmn)
//  829 {
ftm_quad_clean:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//  830     ASSERT( (ftmn == FTM1) || (ftmn == FTM2 ) ); //��鴫�ݽ�����ͨ���Ƿ���ȷ
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??ftm_quad_clean_0
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+2
        BEQ.N    ??ftm_quad_clean_0
        MOVW     R1,#+830
        LDR.N    R0,??DataTable10_2
          CFI FunCall assert_failed
        BL       assert_failed
//  831 
//  832     FTM_CNT_REG(FTMN[ftmn])     = 0;             //��������ֻ�е�16λ���ã�д�κ�ֵ���˼Ĵ������������ CNTIN ��ֵ��
??ftm_quad_clean_0:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable10_5
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        STR      R0,[R1, #+4]
//  833 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock10

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_1:
        DC32     0x40048030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_2:
        DC32     ?_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_3:
        DC32     bus_clk_khz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_4:
        DC32     ftm_mod

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_5:
        DC32     FTMN

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_6:
        DC32     0x40039050

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_0:
        DC8 "D:\\\347\254\254\345\215\201\344\272\214\345\261\212\347\224\265\347\243\201\347\273\204\\Car\\Chip\\src\\MK60_ftm.c"
        DC8 0, 0, 0

        END
//  834 
//  835 
//  836 
// 
//    12 bytes in section .bss
//    12 bytes in section .data
//    52 bytes in section .rodata
// 1 980 bytes in section .text
// 
// 1 980 bytes of CODE  memory
//    52 bytes of CONST memory
//    24 bytes of DATA  memory
//
//Errors: none
//Warnings: none
