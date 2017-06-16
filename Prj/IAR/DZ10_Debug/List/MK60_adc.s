///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      12/Jun/2017  17:32:52
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\@@@@@@@\Car\Chip\src\MK60_adc.c
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EWCF53.tmp
//        (D:\@@@@@@@\Car\Chip\src\MK60_adc.c -D DEBUG -D
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
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\MK60_adc.s
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
        EXTERN port_init

        PUBLIC ADCN
        PUBLIC Ad_Lv
        PUBLIC ad_ave
        PUBLIC adc_init
        PUBLIC adc_once
        PUBLIC adc_stop
        
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
        
// D:\@@@@@@@\Car\Chip\src\MK60_adc.c
//    1 /*!
//    2  *     COPYRIGHT NOTICE
//    3  *     Copyright (c) 2013,山外科技
//    4  *     All rights reserved.
//    5  *     技术讨论：山外论坛 http://www.vcan123.com
//    6  *
//    7  *     除注明出处外，以下所有内容版权均属山外科技所有，未经允许，不得用于商业用途，
//    8  *     修改内容时必须保留山外科技的版权声明。
//    9  *
//   10  * @file       MK60_adc.c
//   11  * @brief      ADC函数
//   12  * @author     山外科技
//   13  * @version    v5.1
//   14  * @date       2014-01-16
//   15  */
//   16 
//   17 #include "common.h"
//   18 #include "MK60_adc.h"
//   19 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   20 ADC_MemMapPtr ADCN[2] = {ADC0_BASE_PTR, ADC1_BASE_PTR}; //定义两个指针数组保存 ADCN 的地址
ADCN:
        DC32 4003B000H, 400BB000H
//   21 
//   22 static void     adc_start   (ADCn_Ch_e, ADC_nbit);    //开始adc转换
//   23 
//   24 /*!
//   25  *  @brief      ADC初始化
//   26  *  @param      ADCn_Ch_e    ADC通道
//   27  *  @since      v5.0
//   28  *  @note       此初始化仅支持软件触发，不是每个通道都支持ADC 软件触发，
//   29                 具体说明见 ADCn_Ch_e 的注释说明
//   30  *  Sample usage:       adc_init (ADC0_SE10 );    //初始化 ADC0_SE10 ，使用 PTA7 管脚
//   31  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function adc_init
        THUMB
//   32 void adc_init(ADCn_Ch_e adcn_ch)
//   33 {
adc_init:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
//   34 
//   35     uint8 adcn = adcn_ch >> 5 ;
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        MOVS     R5,R4
        ASRS     R5,R5,#+5
//   36     //uint8 ch = adcn_ch & 0x1F;
//   37 
//   38     switch(adcn)
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??adc_init_0
        CMP      R5,#+1
        BEQ.N    ??adc_init_1
        B.N      ??adc_init_2
//   39     {
//   40     case ADC0:       /*   ADC0  */
//   41         SIM_SCGC6 |= (SIM_SCGC6_ADC0_MASK );        //开启ADC0时钟
??adc_init_0:
        LDR.W    R0,??DataTable4  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8000000
        LDR.W    R1,??DataTable4  ;; 0x4004803c
        STR      R0,[R1, #+0]
//   42         SIM_SOPT7 &= ~(SIM_SOPT7_ADC0ALTTRGEN_MASK  | SIM_SOPT7_ADC0PRETRGSEL_MASK);
        LDR.W    R0,??DataTable4_1  ;; 0x40048018
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x90
        LDR.W    R1,??DataTable4_1  ;; 0x40048018
        STR      R0,[R1, #+0]
//   43         SIM_SOPT7 |= SIM_SOPT7_ADC0TRGSEL(0);
        LDR.W    R0,??DataTable4_1  ;; 0x40048018
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable4_1  ;; 0x40048018
        STR      R0,[R1, #+0]
//   44         break;
        B.N      ??adc_init_3
//   45     case ADC1:       /*   ADC1    */
//   46         SIM_SCGC3 |= (SIM_SCGC3_ADC1_MASK );
??adc_init_1:
        LDR.W    R0,??DataTable4_2  ;; 0x40048030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8000000
        LDR.W    R1,??DataTable4_2  ;; 0x40048030
        STR      R0,[R1, #+0]
//   47         SIM_SOPT7 &= ~(SIM_SOPT7_ADC1ALTTRGEN_MASK  | SIM_SOPT7_ADC1PRETRGSEL_MASK) ;
        LDR.W    R0,??DataTable4_1  ;; 0x40048018
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x9000
        LDR.N    R1,??DataTable4_1  ;; 0x40048018
        STR      R0,[R1, #+0]
//   48         SIM_SOPT7 |= SIM_SOPT7_ADC1TRGSEL(0);
        LDR.N    R0,??DataTable4_1  ;; 0x40048018
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable4_1  ;; 0x40048018
        STR      R0,[R1, #+0]
//   49         break;
        B.N      ??adc_init_3
//   50     default:
//   51         ASSERT(0);
??adc_init_2:
        MOVS     R1,#+51
        LDR.N    R0,??DataTable4_3
          CFI FunCall assert_failed
        BL       assert_failed
//   52     }
//   53 
//   54     switch(adcn_ch)
??adc_init_3:
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        MOVS     R0,R4
        CMP      R0,#+0
        BEQ.W    ??adc_init_4
        CMP      R0,#+1
        BEQ.W    ??adc_init_4
        CMP      R0,#+3
        BEQ.W    ??adc_init_4
        CMP      R0,#+8
        BEQ.N    ??adc_init_5
        CMP      R0,#+9
        BEQ.N    ??adc_init_6
        CMP      R0,#+10
        BEQ.N    ??adc_init_7
        CMP      R0,#+11
        BEQ.N    ??adc_init_8
        CMP      R0,#+12
        BEQ.N    ??adc_init_9
        CMP      R0,#+13
        BEQ.N    ??adc_init_10
        CMP      R0,#+14
        BEQ.N    ??adc_init_11
        CMP      R0,#+15
        BEQ.N    ??adc_init_12
        CMP      R0,#+16
        BEQ.N    ??adc_init_4
        CMP      R0,#+17
        BEQ.N    ??adc_init_13
        CMP      R0,#+18
        BEQ.N    ??adc_init_14
        CMP      R0,#+19
        BEQ.N    ??adc_init_4
        CMP      R0,#+20
        BEQ.N    ??adc_init_4
        CMP      R0,#+26
        BEQ.N    ??adc_init_4
        CMP      R0,#+29
        BEQ.N    ??adc_init_4
        CMP      R0,#+30
        BEQ.N    ??adc_init_4
        CMP      R0,#+32
        BEQ.N    ??adc_init_15
        CMP      R0,#+33
        BEQ.N    ??adc_init_15
        CMP      R0,#+35
        BEQ.N    ??adc_init_15
        CMP      R0,#+36
        BEQ.N    ??adc_init_16
        CMP      R0,#+37
        BEQ.N    ??adc_init_17
        CMP      R0,#+38
        BEQ.N    ??adc_init_18
        CMP      R0,#+39
        BEQ.N    ??adc_init_19
        CMP      R0,#+40
        BEQ.N    ??adc_init_20
        CMP      R0,#+41
        BEQ.N    ??adc_init_21
        CMP      R0,#+42
        BEQ.N    ??adc_init_22
        CMP      R0,#+43
        BEQ.N    ??adc_init_23
        CMP      R0,#+44
        BEQ.N    ??adc_init_24
        CMP      R0,#+45
        BEQ.N    ??adc_init_25
        CMP      R0,#+46
        BEQ.N    ??adc_init_26
        CMP      R0,#+47
        BEQ.N    ??adc_init_27
        CMP      R0,#+48
        BEQ.W    ??adc_init_28
        CMP      R0,#+49
        BEQ.N    ??adc_init_29
        CMP      R0,#+50
        BEQ.W    ??adc_init_28
        CMP      R0,#+51
        BEQ.N    ??adc_init_28
        CMP      R0,#+52
        BEQ.N    ??adc_init_28
        CMP      R0,#+58
        BEQ.N    ??adc_init_28
        CMP      R0,#+61
        BEQ.N    ??adc_init_28
        CMP      R0,#+62
        BEQ.N    ??adc_init_28
        B.N      ??adc_init_30
//   55     {
//   56     case ADC0_SE8:       // PTB0
//   57         port_init(PTB0, ALT0);
??adc_init_5:
        MOVS     R1,#+0
        MOVS     R0,#+32
          CFI FunCall port_init
        BL       port_init
//   58         break;
        B.N      ??adc_init_31
//   59     case ADC0_SE9:       // PTB1
//   60         port_init(PTB1, ALT0);
??adc_init_6:
        MOVS     R1,#+0
        MOVS     R0,#+33
          CFI FunCall port_init
        BL       port_init
//   61         break;
        B.N      ??adc_init_31
//   62     case ADC0_SE10:      // PTA7
//   63         port_init(PTA7, ALT0);
??adc_init_7:
        MOVS     R1,#+0
        MOVS     R0,#+7
          CFI FunCall port_init
        BL       port_init
//   64         break;
        B.N      ??adc_init_31
//   65     case ADC0_SE11:      // PTA8
//   66         port_init(PTA8, ALT0);
??adc_init_8:
        MOVS     R1,#+0
        MOVS     R0,#+8
          CFI FunCall port_init
        BL       port_init
//   67         break;
        B.N      ??adc_init_31
//   68     case ADC0_SE12:      // PTB2
//   69         port_init(PTB2, ALT0);
??adc_init_9:
        MOVS     R1,#+0
        MOVS     R0,#+34
          CFI FunCall port_init
        BL       port_init
//   70         break;
        B.N      ??adc_init_31
//   71     case ADC0_SE13:      // PTB3
//   72         port_init(PTB3, ALT0);
??adc_init_10:
        MOVS     R1,#+0
        MOVS     R0,#+35
          CFI FunCall port_init
        BL       port_init
//   73         break;
        B.N      ??adc_init_31
//   74     case ADC0_SE14:      // PTC0
//   75         port_init(PTC0, ALT0);
??adc_init_11:
        MOVS     R1,#+0
        MOVS     R0,#+64
          CFI FunCall port_init
        BL       port_init
//   76         break;
        B.N      ??adc_init_31
//   77     case ADC0_SE15:      // PTC1
//   78         port_init(PTC1, ALT0);
??adc_init_12:
        MOVS     R1,#+0
        MOVS     R0,#+65
          CFI FunCall port_init
        BL       port_init
//   79         break;
        B.N      ??adc_init_31
//   80     case ADC0_SE17:      // PTE24
//   81         port_init(PTE24, ALT0);
??adc_init_13:
        MOVS     R1,#+0
        MOVS     R0,#+152
          CFI FunCall port_init
        BL       port_init
//   82         break;
        B.N      ??adc_init_31
//   83     case ADC0_SE18:      // PTE25
//   84         port_init(PTE25, ALT0);
??adc_init_14:
        MOVS     R1,#+0
        MOVS     R0,#+153
          CFI FunCall port_init
        BL       port_init
//   85         break;
        B.N      ??adc_init_31
//   86 
//   87     case ADC0_DP0:
//   88     case ADC0_DP1:
//   89     case ADC0_DP3:
//   90     case ADC0_DM0:       // ADC0_DM0
//   91     case ADC0_DM1:       // ADC0_DM1
//   92     case ADC0_SE16:      // ADC0_SE16
//   93     case Temp0_Sensor:   // Temperature Sensor,内部温度测量，可用ADC函数
//   94     case VREFH0:         // 参考高电压,可用ADC函数 ,结果恒为 2^n-1
//   95     case VREFL0:         // 参考低电压,可用ADC函数 ,结果恒为 0
//   96         break;          //这部分管脚不用配置复用
??adc_init_4:
        B.N      ??adc_init_31
//   97 
//   98         // ---------------------------------ADC1-------------------------
//   99     case ADC1_DP0:
//  100     case ADC1_DP1:
//  101     case ADC1_DP3:
//  102         break;
??adc_init_15:
        B.N      ??adc_init_31
//  103     case ADC1_SE4a:      // PTE0
//  104         port_init(PTE0, ALT0);
??adc_init_16:
        MOVS     R1,#+0
        MOVS     R0,#+128
          CFI FunCall port_init
        BL       port_init
//  105         break;
        B.N      ??adc_init_31
//  106     case ADC1_SE5a:      // PTE1
//  107         port_init(PTE1, ALT0);
??adc_init_17:
        MOVS     R1,#+0
        MOVS     R0,#+129
          CFI FunCall port_init
        BL       port_init
//  108         break;
        B.N      ??adc_init_31
//  109     case ADC1_SE6a:      // PTE2
//  110         port_init(PTE2, ALT0);
??adc_init_18:
        MOVS     R1,#+0
        MOVS     R0,#+130
          CFI FunCall port_init
        BL       port_init
//  111         break;
        B.N      ??adc_init_31
//  112     case ADC1_SE7a:      // PTE3
//  113         port_init(PTE3, ALT0);
??adc_init_19:
        MOVS     R1,#+0
        MOVS     R0,#+131
          CFI FunCall port_init
        BL       port_init
//  114         break;
        B.N      ??adc_init_31
//  115 
//  116     case ADC1_SE8:       // PTB0
//  117         port_init(PTB0, ALT0);
??adc_init_20:
        MOVS     R1,#+0
        MOVS     R0,#+32
          CFI FunCall port_init
        BL       port_init
//  118         break;
        B.N      ??adc_init_31
//  119     case ADC1_SE9:       // PTB1
//  120         port_init(PTB1, ALT0);
??adc_init_21:
        MOVS     R1,#+0
        MOVS     R0,#+33
          CFI FunCall port_init
        BL       port_init
//  121         break;
        B.N      ??adc_init_31
//  122     case ADC1_SE10:      // PTB4
//  123         port_init(PTB4, ALT0);
??adc_init_22:
        MOVS     R1,#+0
        MOVS     R0,#+36
          CFI FunCall port_init
        BL       port_init
//  124         break;
        B.N      ??adc_init_31
//  125     case ADC1_SE11:      // PTB5
//  126         port_init(PTB5, ALT0);
??adc_init_23:
        MOVS     R1,#+0
        MOVS     R0,#+37
          CFI FunCall port_init
        BL       port_init
//  127         break;
        B.N      ??adc_init_31
//  128     case ADC1_SE12:      // PTB6
//  129         port_init(PTB6, ALT0);
??adc_init_24:
        MOVS     R1,#+0
        MOVS     R0,#+38
          CFI FunCall port_init
        BL       port_init
//  130         break;
        B.N      ??adc_init_31
//  131     case ADC1_SE13:      // PTB7
//  132         port_init(PTB7, ALT0);
??adc_init_25:
        MOVS     R1,#+0
        MOVS     R0,#+39
          CFI FunCall port_init
        BL       port_init
//  133         break;
        B.N      ??adc_init_31
//  134     case ADC1_SE14:      // PTB10
//  135         port_init(PTB10, ALT0);
??adc_init_26:
        MOVS     R1,#+0
        MOVS     R0,#+42
          CFI FunCall port_init
        BL       port_init
//  136         break;
        B.N      ??adc_init_31
//  137     case ADC1_SE15:      // PTB11
//  138         port_init(PTB11, ALT0);
??adc_init_27:
        MOVS     R1,#+0
        MOVS     R0,#+43
          CFI FunCall port_init
        BL       port_init
//  139         break;
        B.N      ??adc_init_31
//  140     case ADC1_SE17:      // PTA17
//  141         port_init(PTA17, ALT0);
??adc_init_29:
        MOVS     R1,#+0
        MOVS     R0,#+17
          CFI FunCall port_init
        BL       port_init
//  142         break;
        B.N      ??adc_init_31
//  143 
//  144     case ADC1_SE16:      // ADC1_SE16
//  145     case VREF_OUTPUT:    // VREF Output
//  146     case ADC1_DM0:       // ADC1_DM0
//  147     case ADC1_DM1:       // ADC1_DM1
//  148     case Temp1_Sensor:
//  149     case VREFH1:         // 参考高电压,可用ADC函数 ,结果恒为 2^n-1
//  150     case VREFL1:         // 参考低电压,可用ADC函数 ,结果恒为 0
//  151         break;
??adc_init_28:
        B.N      ??adc_init_31
//  152 
//  153     default:
//  154         ASSERT(0);      //断言，传递的管脚不支持 ADC 单端软件触发，请换 其他管脚
??adc_init_30:
        MOVS     R1,#+154
        LDR.N    R0,??DataTable4_3
          CFI FunCall assert_failed
        BL       assert_failed
//  155         break;
//  156     }
//  157 }
??adc_init_31:
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock0
//  158 
//  159 /*!
//  160  *  @brief      获取ADC采样值(不支持B通道)
//  161  *  @param      ADCn_Ch_e    ADC通道
//  162  *  @param      ADC_nbit     ADC精度（ ADC_8bit,ADC_12bit, ADC_10bit, ADC_16bit ）
//  163  *  @return     采样值
//  164  *  @since      v5.0
//  165  *  Sample usage:       uint16 var = adc_once(ADC0_SE10, ADC_8bit);
//  166  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function adc_once
        THUMB
//  167 uint16 adc_once(ADCn_Ch_e adcn_ch, ADC_nbit bit) //采集某路模拟量的AD值
//  168 {
adc_once:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOVS     R4,R0
        MOVS     R5,R1
//  169     ADCn_e adcn = (ADCn_e)(adcn_ch >> 5) ;
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        MOVS     R6,R4
        ASRS     R6,R6,#+5
//  170 
//  171     uint16 result = 0;
        MOVS     R7,#+0
//  172 
//  173     adc_start(adcn_ch, bit);      //启动ADC转换
        MOVS     R1,R5
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
          CFI FunCall adc_start
        BL       adc_start
//  174 
//  175     while (( ADC_SC1_REG(ADCN[adcn], 0 ) & ADC_SC1_COCO_MASK ) != ADC_SC1_COCO_MASK);   //只支持 A通道
??adc_once_0:
        LDR.N    R0,??DataTable4_4
        SXTB     R6,R6            ;; SignExt  R6,R6,#+24,#+24
        LDR      R0,[R0, R6, LSL #+2]
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??adc_once_0
//  176     result = ADC_R_REG(ADCN[adcn], 0);
        LDR.N    R0,??DataTable4_4
        SXTB     R6,R6            ;; SignExt  R6,R6,#+24,#+24
        LDR      R0,[R0, R6, LSL #+2]
        LDR      R0,[R0, #+16]
        MOVS     R7,R0
//  177     ADC_SC1_REG(ADCN[adcn], 0) &= ~ADC_SC1_COCO_MASK;
        LDR.N    R0,??DataTable4_4
        SXTB     R6,R6            ;; SignExt  R6,R6,#+24,#+24
        LDR      R0,[R0, R6, LSL #+2]
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x80
        LDR.N    R1,??DataTable4_4
        SXTB     R6,R6            ;; SignExt  R6,R6,#+24,#+24
        LDR      R1,[R1, R6, LSL #+2]
        STR      R0,[R1, #+0]
//  178     return result;
        MOVS     R0,R7
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R1,R4-R7,PC}    ;; return
//  179 }
          CFI EndBlock cfiBlock1
//  180 
//  181 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  182 int Ad_Lv[50]={0};
Ad_Lv:
        DS8 200
//  183 
//  184 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function ad_ave
        THUMB
//  185 uint16 ad_ave(ADCn_Ch_e adcn_ch, ADC_nbit bit, u8 N) //均值滤波
//  186 {
ad_ave:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
        MOVS     R5,R0
        MOVS     R6,R1
        MOVS     R7,R2
//  187     u32 tmp = 0;
        MOVS     R8,#+0
//  188     u8  i;
//  189    
//  190     for(i = N; i >0; i--){
        MOVS     R4,R7
??ad_ave_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??ad_ave_1
//  191     Ad_Lv[i]=Ad_Lv[i-1];
        LDR.N    R0,??DataTable4_5
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADD      R0,R0,R4, LSL #+2
        LDR      R0,[R0, #-4]
        LDR.N    R1,??DataTable4_5
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R0,[R1, R4, LSL #+2]
//  192     }
        SUBS     R4,R4,#+1
        B.N      ??ad_ave_0
//  193     Ad_Lv[0]=adc_once(adcn_ch, bit);
??ad_ave_1:
        MOVS     R1,R6
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
          CFI FunCall adc_once
        BL       adc_once
        LDR.N    R1,??DataTable4_5
        STR      R0,[R1, #+0]
//  194     
//  195     for(i = 0; i < N; i++)
        MOVS     R0,#+0
        MOVS     R4,R0
??ad_ave_2:
        MOVS     R0,R4
        MOVS     R1,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R0,R1
        BCS.N    ??ad_ave_3
//  196         tmp += Ad_Lv[i];
        LDR.N    R0,??DataTable4_5
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        ADDS     R8,R0,R8
        ADDS     R4,R4,#+1
        B.N      ??ad_ave_2
//  197     tmp = tmp / N;
??ad_ave_3:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        UDIV     R8,R8,R7
//  198     return (u16)tmp;
        MOV      R0,R8
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R4-R8,PC}       ;; return
//  199   ;;
//  200 }             
          CFI EndBlock cfiBlock2
//  201 
//  202 
//  203 
//  204 
//  205 
//  206 
//  207 
//  208 
//  209 
//  210 
//  211 
//  212 
//  213 /*!
//  214  *  @brief      启动ADC软件采样(不支持B通道)
//  215  *  @param      ADCn_Ch_e    ADC通道
//  216  *  @param      ADC_nbit     ADC精度（ ADC_8bit,ADC_12bit, ADC_10bit, ADC_16bit ）
//  217  *  @since      v5.0
//  218  *  @note       此函数内部调用，启动后即可等待数据采集完成
//  219  *  Sample usage:       adc_start(ADC0_SE10, ADC_8bit);
//  220  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function adc_start
          CFI NoCalls
        THUMB
//  221 void adc_start(ADCn_Ch_e adcn_ch, ADC_nbit bit)
//  222 {
adc_start:
        PUSH     {R4,R5}
          CFI R5 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  223     ADCn_e adcn = (ADCn_e)(adcn_ch >> 5) ;
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        MOVS     R2,R0
        ASRS     R2,R2,#+5
//  224     uint8 ch = (uint8)(adcn_ch & 0x1F);
        ANDS     R3,R0,#0x1F
//  225 
//  226     //初始化ADC默认配置
//  227     ADC_CFG1_REG(ADCN[adcn]) = (0
//  228                                 //| ADC_CFG1_ADLPC_MASK         //ADC功耗配置，0为正常功耗，1为低功耗
//  229                                 | ADC_CFG1_ADIV(2)              //时钟分频选择,分频系数为 2^n,2bit
//  230                                 | ADC_CFG1_ADLSMP_MASK          //采样时间配置，0为短采样时间，1 为长采样时间
//  231                                 | ADC_CFG1_MODE(bit)
//  232                                 | ADC_CFG1_ADICLK(0)            //0为总线时钟,1为总线时钟/2,2为交替时钟（ALTCLK），3为 异步时钟（ADACK）。
//  233                                );
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LSLS     R4,R1,#+2
        ANDS     R4,R4,#0xC
        ORRS     R4,R4,#0x50
        LDR.N    R5,??DataTable4_4
        SXTB     R2,R2            ;; SignExt  R2,R2,#+24,#+24
        LDR      R5,[R5, R2, LSL #+2]
        STR      R4,[R5, #+8]
//  234 
//  235 
//  236     ADC_CFG2_REG(ADCN[adcn])  = (0
//  237                                  //| ADC_CFG2_MUXSEL_MASK       //ADC复用选择,0为a通道，1为b通道。
//  238                                  //| ADC_CFG2_ADACKEN_MASK      //异步时钟输出使能,0为禁止，1为使能。
//  239                                  | ADC_CFG2_ADHSC_MASK          //高速配置,0为正常转换序列，1为高速转换序列
//  240                                  | ADC_CFG2_ADLSTS(0)           //长采样时间选择，ADCK为4+n个额外循环，额外循环，0为20，1为12，2为6，3为2
//  241                                 );
        MOVS     R4,#+4
        LDR.N    R5,??DataTable4_4
        SXTB     R2,R2            ;; SignExt  R2,R2,#+24,#+24
        LDR      R5,[R5, R2, LSL #+2]
        STR      R4,[R5, #+12]
//  242 
//  243     //写入 SC1A 启动转换
//  244     ADC_SC1_REG(ADCN[adcn], 0 ) = (0
//  245                                    | ADC_SC1_AIEN_MASK          // 转换完成中断,0为禁止，1为使能
//  246                                    //| ADC_SC1_DIFF_MASK        // 差分模式使能,0为单端，1为差分
//  247                                    | ADC_SC1_ADCH( ch )
//  248                                   );
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ANDS     R4,R3,#0x1F
        ORRS     R4,R4,#0x40
        LDR.N    R5,??DataTable4_4
        SXTB     R2,R2            ;; SignExt  R2,R2,#+24,#+24
        LDR      R5,[R5, R2, LSL #+2]
        STR      R4,[R5, #+0]
//  249 
//  250 }
        POP      {R4,R5}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock3
//  251 
//  252 /*!
//  253  *  @brief      停止ADC软件采样
//  254  *  @param      ADCn_e       ADC模块号（ ADC0、 ADC1）
//  255  *  @since      v5.0
//  256  *  Sample usage:       adc_stop(ADC0);
//  257  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function adc_stop
          CFI NoCalls
        THUMB
//  258 void adc_stop(ADCn_e adcn)
//  259 {
//  260     ADC_SC1_REG(ADCN[adcn], 0) = (0
//  261                                   | ADC_SC1_AIEN_MASK                       // 转换完成中断,0为禁止，1为使能
//  262                                   //| ADC_SC1_DIFF_MASK                     // 差分模式使能,0为单端，1为差分
//  263                                   | ADC_SC1_ADCH(Module0_Dis)               //输入通道选择,此处选择禁止通道
//  264                                  );
adc_stop:
        MOVS     R1,#+95
        LDR.N    R2,??DataTable4_4
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LDR      R2,[R2, R0, LSL #+2]
        STR      R1,[R2, #+0]
//  265 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     0x40048018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     0x40048030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     ?_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     ADCN

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     Ad_Lv

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_0:
        DC8 "D:\\\347\254\254\345\215\201\344\272\214\345\261\212\347\224\265\347\243\201\347\273\204\\Car\\Chip\\src\\MK60_adc.c"
        DC8 0, 0, 0

        END
//  266 
// 
// 200 bytes in section .bss
//   8 bytes in section .data
//  52 bytes in section .rodata
// 844 bytes in section .text
// 
// 844 bytes of CODE  memory
//  52 bytes of CONST memory
// 208 bytes of DATA  memory
//
//Errors: none
//Warnings: none
