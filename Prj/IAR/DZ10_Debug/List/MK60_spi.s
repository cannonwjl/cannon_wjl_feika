///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      12/Jun/2017  17:32:55
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\@@@@@@@\Car\Chip\src\MK60_spi.c
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EWDC93.tmp
//        (D:\@@@@@@@\Car\Chip\src\MK60_spi.c -D DEBUG -D
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
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\MK60_spi.s
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

        EXTERN __aeabi_memcpy4
        EXTERN abs
        EXTERN assert_failed
        EXTERN bus_clk_khz
        EXTERN port_init

        PUBLIC SPIN
        PUBLIC spi_init
        PUBLIC spi_mosi
        PUBLIC spi_mosi_cmd
        
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
        
// D:\@@@@@@@\Car\Chip\src\MK60_spi.c
//    1 /*!
//    2  *     COPYRIGHT NOTICE
//    3  *     Copyright (c) 2013,山外科技
//    4  *     All rights reserved.
//    5  *     技术讨论：山外论坛 http://www.vcan123.com
//    6  *
//    7  *     除注明出处外，以下所有内容版权均属山外科技所有，未经允许，不得用于商业用途，
//    8  *     修改内容时必须保留山外科技的版权声明。
//    9  *
//   10  * @file       MK60_spi.c
//   11  * @brief      SPI驱动函数
//   12  * @author     山外科技
//   13  * @version    v5.0
//   14  * @date       2013-07-16
//   15  */
//   16 
//   17 #include "common.h"
//   18 #include "MK60_port.h"
//   19 #include "MK60_spi.h"
//   20 
//   21 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   22 SPI_MemMapPtr SPIN[3] = {SPI0_BASE_PTR, SPI1_BASE_PTR, SPI2_BASE_PTR}; //定义三个指针数组保存 SPIx 的地址
SPIN:
        DC32 4002C000H, 4002D000H, 400AC000H
//   23 
//   24 
//   25 
//   26 #define SPI_TX_WAIT(SPIn)     while(  ( SPI_SR_REG(SPIN[SPIn]) & SPI_SR_TXRXS_MASK ) == 1 ) //等待发送 完成
//   27 #define SPI_RX_WAIT(SPIn)     while(  ( SPI_SR_REG(SPIN[SPIn]) & SPI_SR_RFDF_MASK ) == 0 )  //等待发送 FIFO为非空
//   28 #define SPI_EOQF_WAIT(SPIn)   while(  (SPI_SR_REG(SPIN[SPIn]) & SPI_SR_EOQF_MASK ) == 0 )   //等待传输完成
//   29 
//   30 
//   31 /*!
//   32  *  @brief      SPI初始化，设置模式
//   33  *  @param      SPIn_e          SPI模块(SPI0、SPI1、SPI2)
//   34  *  @param      SPIn_PCSn_e     片选管脚编号
//   35  *  @param      SPI_CFG         SPI主从机模式选择
//   36  *  @since      v5.0
//   37  *  Sample usage:       uint32 baud = spi_init(SPI0,SPIn_PCS0, MASTER,10*1000*1000);              //初始化SPI,选择CS0,主机模式, 波特率为1M ,返回真实波特率到baud变量
//   38  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function spi_init
        THUMB
//   39 uint32 spi_init(SPIn_e spin, SPI_PCSn_e pcs, SPI_CFG master,uint32 baud)
//   40 {
spi_init:
        PUSH     {R2-R11,LR}
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
        SUB      SP,SP,#+84
          CFI CFA R13+128
        MOVS     R5,R0
        MOVS     R6,R1
//   41     uint8  br,pbr;
//   42     uint32 clk = bus_clk_khz*1000/baud;
        LDR.W    R0,??DataTable2
        LDR      R1,[R0, #+0]
        MOV      R0,#+1000
        MULS     R1,R0,R1
        LDR      R0,[SP, #+88]
        UDIV     R9,R1,R0
//   43     uint32 Scaler[] = {2,4,6,8,16,32,64,128,256,512,1024,2048,4096,8192,16384,32768};
        ADD      R0,SP,#+20
        LDR.W    R1,??DataTable2_1
        MOVS     R2,#+64
          CFI FunCall __aeabi_memcpy4
        BL       __aeabi_memcpy4
//   44     uint8  Prescaler[] = {2,3,5,7};
        ADD      R0,SP,#+16
        LDR.W    R1,??DataTable2_2
        LDR      R2,[R1, #+0]
        STR      R2,[R0, #+0]
//   45     uint32 fit_clk,fit_br=0,fit_pbr,min_diff =~0,diff;
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
        MOVS     R4,#-1
//   46     uint32 tmp;
//   47 
//   48     //计算CS到第一个SCK的时间
//   49     uint8 pcssck,cssck,fit_pcssck,fit_cssck;
//   50 
//   51     //使能SPI模块时钟，配置SPI引脚功能
//   52     if(spin == SPI0)
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.N    ??spi_init_0
//   53     {
//   54         SIM_SCGC6 |= SIM_SCGC6_DSPI0_MASK;
        LDR.W    R0,??DataTable2_3  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000
        LDR.W    R1,??DataTable2_3  ;; 0x4004803c
        STR      R0,[R1, #+0]
//   55 
//   56         //进行管脚复用
//   57         port_init(SPI0_SCK_PIN , ALT2  );
        MOV      R1,#+512
        MOVS     R0,#+15
          CFI FunCall port_init
        BL       port_init
//   58         port_init(SPI0_SOUT_PIN, ALT2  );
        MOV      R1,#+512
        MOVS     R0,#+16
          CFI FunCall port_init
        BL       port_init
//   59         port_init(SPI0_SIN_PIN , ALT2  );
        MOV      R1,#+512
        MOVS     R0,#+17
          CFI FunCall port_init
        BL       port_init
//   60 
//   61         if(pcs & SPI_PCS0)
        LSLS     R0,R6,#+31
        BPL.N    ??spi_init_1
//   62             port_init(SPI0_PCS0_PIN, ALT2  );
        MOV      R1,#+512
        MOVS     R0,#+14
          CFI FunCall port_init
        BL       port_init
//   63 
//   64         if(pcs & SPI_PCS1)
??spi_init_1:
        LSLS     R0,R6,#+30
        BPL.N    ??spi_init_2
//   65             port_init(SPI0_PCS1_PIN, ALT2  );
        MOV      R1,#+512
        MOVS     R0,#+67
          CFI FunCall port_init
        BL       port_init
//   66 
//   67         if(pcs & SPI_PCS2)
??spi_init_2:
        LSLS     R0,R6,#+29
        BPL.N    ??spi_init_3
//   68             port_init(SPI0_PCS2_PIN, ALT2  );
        MOV      R1,#+512
        MOVS     R0,#+66
          CFI FunCall port_init
        BL       port_init
//   69 
//   70         if(pcs & SPI_PCS3)
??spi_init_3:
        LSLS     R0,R6,#+28
        BPL.N    ??spi_init_4
//   71             port_init(SPI0_PCS3_PIN, ALT2  );
        MOV      R1,#+512
        MOVS     R0,#+65
          CFI FunCall port_init
        BL       port_init
//   72 
//   73         if(pcs & SPI_PCS4)
??spi_init_4:
        LSLS     R0,R6,#+27
        BPL.N    ??spi_init_5
//   74             port_init(SPI0_PCS4_PIN, ALT2  );
        MOV      R1,#+512
        MOVS     R0,#+64
          CFI FunCall port_init
        BL       port_init
//   75 
//   76         if(pcs & SPI_PCS5)
??spi_init_5:
        LSLS     R0,R6,#+26
        BPL.N    ??spi_init_6
//   77             port_init(SPI0_PCS5_PIN, ALT3  );
        MOV      R1,#+768
        MOVS     R0,#+55
          CFI FunCall port_init
        BL       port_init
        B.N      ??spi_init_6
//   78     }
//   79     else if(spin == SPI1)
??spi_init_0:
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BNE.N    ??spi_init_7
//   80     {
//   81 #if defined(MK60DZ10)
//   82         SIM_SCGC6 |= SIM_SCGC6_SPI1_MASK;
        LDR.W    R0,??DataTable2_3  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000
        LDR.W    R1,??DataTable2_3  ;; 0x4004803c
        STR      R0,[R1, #+0]
//   83 #elif defined(MK60F15)
//   84         SIM_SCGC6 |= SIM_SCGC6_DSPI1_MASK;
//   85 #endif
//   86         port_init(SPI1_SCK_PIN , ALT2  );
        MOV      R1,#+512
        MOVS     R0,#+43
          CFI FunCall port_init
        BL       port_init
//   87         port_init(SPI1_SOUT_PIN, ALT2  );
        MOV      R1,#+512
        MOVS     R0,#+48
          CFI FunCall port_init
        BL       port_init
//   88         port_init(SPI1_SIN_PIN , ALT2  );
        MOV      R1,#+512
        MOVS     R0,#+49
          CFI FunCall port_init
        BL       port_init
//   89 
//   90         if(pcs & SPI_PCS0)
        LSLS     R0,R6,#+31
        BPL.N    ??spi_init_8
//   91             port_init(SPI1_PCS0_PIN, ALT2  );
        MOV      R1,#+512
        MOVS     R0,#+42
          CFI FunCall port_init
        BL       port_init
//   92 
//   93         if(pcs & SPI_PCS1)
??spi_init_8:
        LSLS     R0,R6,#+30
        BPL.N    ??spi_init_9
//   94             port_init(SPI1_PCS1_PIN, ALT2  );
        MOV      R1,#+512
        MOVS     R0,#+128
          CFI FunCall port_init
        BL       port_init
//   95 
//   96         if(pcs & SPI_PCS2)
??spi_init_9:
        LSLS     R0,R6,#+29
        BPL.N    ??spi_init_10
//   97             port_init(SPI1_PCS2_PIN, ALT2  );
        MOV      R1,#+512
        MOVS     R0,#+133
          CFI FunCall port_init
        BL       port_init
//   98 
//   99         if(pcs & SPI_PCS3)
??spi_init_10:
        LSLS     R0,R6,#+28
        BPL.N    ??spi_init_6
//  100             port_init(SPI1_PCS3_PIN, ALT2  );
        MOV      R1,#+512
        MOVS     R0,#+134
          CFI FunCall port_init
        BL       port_init
        B.N      ??spi_init_6
//  101     }
//  102     else if(spin == SPI2)
??spi_init_7:
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        CMP      R5,#+2
        BNE.N    ??spi_init_11
//  103     {
//  104 #if defined(MK60DZ10)
//  105         SIM_SCGC3 |= SIM_SCGC3_SPI2_MASK;
        LDR.W    R0,??DataTable2_4  ;; 0x40048030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000
        LDR.W    R1,??DataTable2_4  ;; 0x40048030
        STR      R0,[R1, #+0]
//  106 #elif defined(MK60F15)
//  107         SIM_SCGC3 |= SIM_SCGC3_DSPI2_MASK;
//  108 #endif
//  109 
//  110         port_init(SPI2_SCK_PIN , ALT2  );
        MOV      R1,#+512
        MOVS     R0,#+53
          CFI FunCall port_init
        BL       port_init
//  111         port_init(SPI2_SOUT_PIN, ALT2  );
        MOV      R1,#+512
        MOVS     R0,#+54
          CFI FunCall port_init
        BL       port_init
//  112         port_init(SPI2_SIN_PIN , ALT2  );
        MOV      R1,#+512
        MOVS     R0,#+55
          CFI FunCall port_init
        BL       port_init
//  113 
//  114         if(pcs & SPI_PCS0)
        LSLS     R0,R6,#+31
        BPL.N    ??spi_init_12
//  115             port_init(SPI2_PCS0_PIN, ALT2  );
        MOV      R1,#+512
        MOVS     R0,#+52
          CFI FunCall port_init
        BL       port_init
//  116 
//  117         if(pcs & SPI_PCS1)
??spi_init_12:
        LSLS     R0,R6,#+30
        BPL.N    ??spi_init_6
//  118             port_init(SPI2_PCS1_PIN, ALT2  );
        MOV      R1,#+512
        MOVS     R0,#+111
          CFI FunCall port_init
        BL       port_init
        B.N      ??spi_init_6
//  119     }
//  120     else
//  121     {
//  122         //传递进来的 spi 模块有误，直接判断断言失败
//  123         ASSERT(0);
??spi_init_11:
        MOVS     R1,#+123
        LDR.W    R0,??DataTable2_5
          CFI FunCall assert_failed
        BL       assert_failed
//  124     }
//  125 
//  126     SPI_MCR_REG(SPIN[spin]) = ( 0
//  127                                 | SPI_MCR_CLR_TXF_MASK     //清空 Tx FIFO 计数器
//  128                                 | SPI_MCR_CLR_RXF_MASK     //清空 Rx FIFO 计数器
//  129                                 | SPI_MCR_HALT_MASK        //停止SPI传输
//  130                               );
??spi_init_6:
        MOVW     R0,#+3073
        LDR.W    R1,??DataTable2_6
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        LDR      R1,[R1, R5, LSL #+2]
        STR      R0,[R1, #+0]
//  131 
//  132     /*************  清标志位  ***************/
//  133     SPI_SR_REG(SPIN[spin]) = (0
//  134                               | SPI_SR_EOQF_MASK    //发送队列空了，发送完毕
//  135                               | SPI_SR_TFUF_MASK    //传输FIFO下溢标志位，SPI为从机模式，Tx FIFO为空，而外部SPI主机模式启动传输，标志位就会置1，写1清0
//  136                               | SPI_SR_TFFF_MASK    //传输FIFO满标志位。 写1或者DMA控制器发现传输FIFO满了就会清0。 0表示Tx FIFO满了
//  137                               | SPI_SR_RFOF_MASK    //接收FIFO溢出标志位。
//  138                               | SPI_SR_RFDF_MASK    //接收FIFO损耗标志位，写1或者DMA控制器发现传输FIFO空了就会清0。0表示Rx FIFO空
//  139                              );
        LDR.W    R0,??DataTable2_7  ;; 0x1a0a0000
        LDR.W    R1,??DataTable2_6
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        LDR      R1,[R1, R5, LSL #+2]
        STR      R0,[R1, #+44]
//  140 
//  141 
//  142     //根据主从机模式设置工作模式。MCU提供最大主机频率是1/2主频，最大从机频率是1/4主频
//  143     if(master == MASTER)
        LDRSB    R0,[SP, #+84]
        CMP      R0,#+0
        BNE.W    ??spi_init_13
//  144     {
//  145         SPI_MCR_REG(SPIN[spin]) =  (0
//  146                                     |  SPI_MCR_MSTR_MASK        //Master,主机模式
//  147                                     |  SPI_MCR_PCSIS(pcs)
//  148                                     |  SPI_MCR_PCSIS_MASK
//  149                                    );
        LDR.W    R0,??DataTable2_8  ;; 0x803f0000
        LDR.W    R1,??DataTable2_6
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        LDR      R1,[R1, R5, LSL #+2]
        STR      R0,[R1, #+0]
//  150 
//  151 
//  152         for(br = 0;br < 0x10;br++)
        MOVS     R0,#+0
        MOVS     R7,R0
??spi_init_14:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+16
        BGE.N    ??spi_init_15
//  153         {
//  154             for(pbr = 0;pbr < 4;pbr++)
        MOVS     R0,#+0
        MOV      R8,R0
??spi_init_16:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+4
        BGE.N    ??spi_init_17
//  155             {
//  156                 tmp = Scaler[br] * Prescaler[pbr];
        ADD      R0,SP,#+20
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR      R1,[R0, R7, LSL #+2]
        ADD      R0,SP,#+16
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        LDRB     R0,[R0, R8]
        MULS     R1,R0,R1
        MOV      R11,R1
//  157                 diff = abs(tmp - clk);
        SUBS     R0,R11,R9
          CFI FunCall abs
        BL       abs
        MOV      R10,R0
//  158                 if(min_diff > diff)
        CMP      R10,R4
        BCS.N    ??spi_init_18
//  159                 {
//  160                     //记住 最佳配置
//  161                     min_diff = diff;
        MOV      R4,R10
//  162                     fit_br = br;
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        STR      R7,[SP, #+4]
//  163                     fit_pbr = pbr;
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        STR      R8,[SP, #+8]
//  164 
//  165                     if(min_diff == 0)
        CMP      R4,#+0
        BEQ.N    ??spi_init_15
//  166                     {
//  167                         //刚好匹配
//  168 
//  169                         goto SPI_CLK_EXIT;
//  170                     }
//  171 
//  172                 }
//  173 
//  174             }
??spi_init_18:
        ADDS     R8,R8,#+1
        B.N      ??spi_init_16
//  175         }
??spi_init_17:
        ADDS     R7,R7,#+1
        B.N      ??spi_init_14
//  176 
//  177 SPI_CLK_EXIT:
//  178         fit_clk =  bus_clk_khz *1000 /(Scaler[fit_br] * Prescaler[fit_pbr]);
??spi_init_15:
        LDR.W    R0,??DataTable2
        LDR      R1,[R0, #+0]
        MOV      R0,#+1000
        MULS     R1,R0,R1
        ADD      R0,SP,#+20
        LDR      R2,[SP, #+4]
        LDR      R2,[R0, R2, LSL #+2]
        ADD      R0,SP,#+16
        LDR      R3,[SP, #+8]
        LDRB     R0,[R0, R3]
        MULS     R2,R0,R2
        UDIV     R0,R1,R2
        STR      R0,[SP, #+12]
//  179 
//  180         //需要算一下 CS 到 CLK 的时间（波特率的半周期）,满足条件： (1<<(CSSCK + 1 ))*( 2*PCSSCK+1) = fclk /(2*  baud)
//  181         clk =  bus_clk_khz*1000/fit_clk/2;
        LDR.W    R0,??DataTable2
        LDR      R1,[R0, #+0]
        MOV      R0,#+1000
        MULS     R1,R0,R1
        LDR      R0,[SP, #+12]
        UDIV     R0,R1,R0
        LSRS     R0,R0,#+1
        MOV      R9,R0
//  182         min_diff = ~0;
        MOVS     R0,#-1
        MOVS     R4,R0
//  183         fit_cssck = 0x0F;
        MOVS     R0,#+15
        STRB     R0,[SP, #+2]
//  184         fit_pcssck = 3;
        MOVS     R0,#+3
        STRB     R0,[SP, #+3]
//  185         for(cssck = 0;cssck<=0x0F;cssck++)
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
??spi_init_19:
        LDRB     R0,[SP, #+0]
        CMP      R0,#+16
        BGE.N    ??spi_init_20
//  186         {
//  187             tmp = 1<<(cssck+1) ;
        MOVS     R0,#+1
        LDRB     R1,[SP, #+0]
        ADDS     R1,R1,#+1
        LSLS     R0,R0,R1
        MOV      R11,R0
//  188             pcssck = (clk/tmp-1)/2;
        UDIV     R0,R9,R11
        SUBS     R0,R0,#+1
        LSRS     R0,R0,#+1
        STRB     R0,[SP, #+1]
//  189             if(pcssck>3)continue;       //不能超过 3
        LDRB     R0,[SP, #+1]
        CMP      R0,#+4
        BGE.N    ??spi_init_21
//  190             tmp = tmp * (2*pcssck+1);
??spi_init_22:
        LDRB     R0,[SP, #+1]
        LSLS     R0,R0,#+1
        ADDS     R0,R0,#+1
        MUL      R11,R0,R11
//  191             diff = abs(tmp-clk);
        SUBS     R0,R11,R9
          CFI FunCall abs
        BL       abs
        MOV      R10,R0
//  192             if(min_diff > diff)
        CMP      R10,R4
        BCS.N    ??spi_init_21
//  193             {
//  194                 //记住 最佳配置
//  195                 min_diff = diff;
        MOV      R4,R10
//  196                 fit_cssck = cssck;
        LDRB     R0,[SP, #+0]
        STRB     R0,[SP, #+2]
//  197                 fit_pcssck = pcssck;
        LDRB     R0,[SP, #+1]
        STRB     R0,[SP, #+3]
//  198 
//  199                 if(min_diff == 0)
        CMP      R4,#+0
        BEQ.N    ??spi_init_20
//  200                 {
//  201                     //刚好匹配
//  202                     goto SPI_CSSCK_EXIT;
//  203                 }
//  204             }
//  205         }
??spi_init_21:
        LDRB     R0,[SP, #+0]
        ADDS     R0,R0,#+1
        STRB     R0,[SP, #+0]
        B.N      ??spi_init_19
//  206 
//  207 SPI_CSSCK_EXIT:
//  208 
//  209         SPI_CTAR_REG(SPIN[spin], 0) = (0
//  210                                        //| SPI_CTAR_DBR_MASK    //双波特率 ，假设 DBR=1，CPHA=1，PBR=00，得SCK Duty Cycle 为 50/50
//  211                                        //| SPI_CTAR_CPHA_MASK   //数据在SCK上升沿改变（输出），在下降沿被捕捉（输入读取）。如果是0，则反之。  w25x16在上升沿读取数据；NRF24L01在上升沿读取数据
//  212                                        | SPI_CTAR_PBR(fit_pbr)        //波特率分频器 ，0~3 对应的分频值Prescaler为 2、3、5、7
//  213 
//  214                                        | SPI_CTAR_PDT(0x00)     //延时因子为 PDT*2+1 ，这里PDT为3，即延时因子为7。PDT为2bit
//  215                                        | SPI_CTAR_BR(fit_br)         //波特率计数器值 ,当BR<=3,分频Scaler 为 2*（BR+1） ，当BR>=3，分频Scaler 为 2^BR  。BR为4bit
//  216                                        //SCK 波特率 = (Bus clk/Prescaler) x [(1+DBR)/Scaler ]          fSYS 为 Bus clock
//  217                                        //              50M / 2         x [ 1  /  2  ] = 25M   这里以最大的来算
//  218 
//  219                                        //| SPI_CTAR_CPOL_MASK   //时钟极性，1表示 SCK 不活跃状态为高电平,   NRF24L01 不活跃为低电平
//  220                                        | SPI_CTAR_FMSZ(0x07)    //每帧传输 7bit+1 ，即8bit （FMSZ默认就是8）
//  221                                        // | SPI_CTAR_LSBFE_MASK //1为低位在前。
//  222 
//  223                                        // 下面两个参数是调整 CS 信号来了到第一个CLK的时间
//  224                                        | SPI_CTAR_CSSCK(fit_cssck)    // x ：0~0x0F
//  225                                        | SPI_CTAR_PCSSCK(fit_pcssck)    //设置片选信号有效到时钟第一个边沿出现的延时的预分频值。tcsc延时预分频 2*x+1； x 0~3
//  226                                       );
??spi_init_20:
        LDR      R0,[SP, #+8]
        LSLS     R0,R0,#+16
        ANDS     R0,R0,#0x30000
        LDR      R1,[SP, #+4]
        ANDS     R1,R1,#0xF
        ORRS     R0,R1,R0
        LDRB     R1,[SP, #+2]
        LSLS     R1,R1,#+12
        ANDS     R1,R1,#0xF000
        ORRS     R0,R1,R0
        LDRB     R1,[SP, #+3]
        LSLS     R1,R1,#+22
        ANDS     R1,R1,#0xC00000
        ORRS     R0,R1,R0
        ORRS     R0,R0,#0x38000000
        LDR.N    R1,??DataTable2_6
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        LDR      R1,[R1, R5, LSL #+2]
        STR      R0,[R1, #+12]
        B.N      ??spi_init_23
//  227     }
//  228     else
//  229     {
//  230         //默认从机模式
//  231         SPI_CTAR_SLAVE_REG(SPIN[spin], 0) = (0
//  232                                              | SPI_CTAR_SLAVE_FMSZ(0x07)
//  233                                              | SPI_CTAR_SLAVE_CPOL_MASK
//  234                                              | SPI_CTAR_SLAVE_CPHA_MASK
//  235                                             );
??spi_init_13:
        MOVS     R0,#+1040187392
        LDR.N    R1,??DataTable2_6
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        LDR      R1,[R1, R5, LSL #+2]
        STR      R0,[R1, #+12]
//  236     }
//  237 
//  238 
//  239     SPI_MCR_REG(SPIN[spin]) &= ~SPI_MCR_HALT_MASK;     //启动SPI传输。1为暂停，0为启动
??spi_init_23:
        LDR.N    R0,??DataTable2_6
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        LDR      R0,[R0, R5, LSL #+2]
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.N    R1,??DataTable2_6
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        LDR      R1,[R1, R5, LSL #+2]
        STR      R0,[R1, #+0]
//  240 
//  241     return fit_clk;
        LDR      R0,[SP, #+12]
        ADD      SP,SP,#+92
          CFI CFA R13+36
        POP      {R4-R11,PC}      ;; return
//  242 
//  243 }
          CFI EndBlock cfiBlock0
//  244 
//  245 /*!
//  246  *  @brief      SPI发送接收函数
//  247  *  @param      SPIn_e          SPI模块(SPI0、SPI1、SPI2)
//  248  *  @param      SPIn_PCSn_e     片选管脚编号
//  249  *  @param      modata          发送的数据缓冲区地址(不需要接收则传 NULL)
//  250  *  @param      midata          发送数据时接收到的数据的存储地址(不需要接收则传 NULL)
//  251  *  @since      v5.0
//  252  *  Sample usage:           spi_mosi(SPI0,SPIn_PCS0,buff,buff,2);    //发送buff的内容，并接收到buff里，长度为2字节
//  253  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function spi_mosi
          CFI NoCalls
        THUMB
//  254 void spi_mosi(SPIn_e spin, SPI_PCSn_e pcs, uint8 *modata, uint8 *midata, uint32 len)
//  255 {
spi_mosi:
        PUSH     {R4-R7}
          CFI R7 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        LDR      R5,[SP, #+16]
//  256     uint32 i = 0;
        MOVS     R6,#+0
//  257     do
//  258     {
//  259         /*************  清标志位  ***************/
//  260         SPI_SR_REG(SPIN[spin]) = (0
//  261                                   | SPI_SR_EOQF_MASK    //发送队列空了，发送完毕标志
//  262                                   | SPI_SR_TFUF_MASK    //传输FIFO下溢标志位，SPI为从机模式，Tx FIFO为空，而外部SPI主机模式启动传输，标志位就会置1，写1清0
//  263                                   | SPI_SR_TFFF_MASK    //传输FIFO满标志位。 写1或者DMA控制器发现传输FIFO满了就会清0。 0表示Tx FIFO满了
//  264                                   | SPI_SR_RFOF_MASK    //接收FIFO溢出标志位。
//  265                                   | SPI_SR_RFDF_MASK    //接收FIFO损耗标志位，写1或者DMA控制器发现传输FIFO空了就会清0。0表示Rx FIFO空
//  266                                  );
??spi_mosi_0:
        LDR.N    R4,??DataTable2_7  ;; 0x1a0a0000
        LDR.N    R7,??DataTable2_6
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LDR      R7,[R7, R0, LSL #+2]
        STR      R4,[R7, #+44]
//  267 
//  268 
//  269         /************** 清FIFO计数器 **************/
//  270         SPI_MCR_REG(SPIN[spin])    |=  (0
//  271                                         | SPI_MCR_CLR_TXF_MASK  //写1清 Tx FIFO 计数器
//  272                                         | SPI_MCR_CLR_RXF_MASK  //写1清 Rx FIFO 计数器
//  273                                        );
        LDR.N    R4,??DataTable2_6
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LDR      R4,[R4, R0, LSL #+2]
        LDR      R4,[R4, #+0]
        ORRS     R4,R4,#0xC00
        LDR.N    R7,??DataTable2_6
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LDR      R7,[R7, R0, LSL #+2]
        STR      R4,[R7, #+0]
//  274 
//  275     }
//  276     while( (SPI_SR_REG(SPIN[spin]) & SPI_SR_RFDF_MASK));            //如果 Rx FIFO 非空，则清FIFO.
        LDR.N    R4,??DataTable2_6
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LDR      R4,[R4, R0, LSL #+2]
        LDR      R4,[R4, #+44]
        LSLS     R4,R4,#+14
        BMI.N    ??spi_mosi_0
//  277 
//  278     /***************** 发送len-1个数据 *******************/                                                ;
//  279     for(i = 0; i < (len - 1); i++)
        MOVS     R4,#+0
        MOVS     R6,R4
??spi_mosi_1:
        SUBS     R4,R5,#+1
        CMP      R6,R4
        BCS.N    ??spi_mosi_2
//  280     {
//  281         SPI_PUSHR_REG(SPIN[spin]) = (0
//  282                                      | SPI_PUSHR_CTAS(0)             //选择CTAR0寄存器
//  283                                      | SPI_PUSHR_CONT_MASK           //1为 传输期间保持PCSn信号 ，即继续传输数据
//  284                                      | SPI_PUSHR_PCS(pcs)
//  285                                      | SPI_PUSHR_TXDATA(modata[i])     //要传输的数据
//  286                                     );
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LSLS     R7,R1,#+16
        ANDS     R7,R7,#0x3F0000
        LDRB     R4,[R2, R6]
        ORRS     R7,R4,R7
        ORRS     R7,R7,#0x80000000
        LDR.N    R4,??DataTable2_6
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LDR      R4,[R4, R0, LSL #+2]
        STR      R7,[R4, #+52]
//  287 
//  288         while(!(SPI_SR_REG(SPIN[spin]) & SPI_SR_RFDF_MASK));        //RFDF为1，Rx FIFO is not empty.
??spi_mosi_3:
        LDR.N    R4,??DataTable2_6
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LDR      R4,[R4, R0, LSL #+2]
        LDR      R4,[R4, #+44]
        LSLS     R4,R4,#+14
        BPL.N    ??spi_mosi_3
//  289         if(midata != NULL)
        CMP      R3,#+0
        BEQ.N    ??spi_mosi_4
//  290         {
//  291             midata[i] = (uint8)SPI_POPR_REG(SPIN[spin]);                  //保存接收到的数据
        LDR.N    R4,??DataTable2_6
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LDR      R4,[R4, R0, LSL #+2]
        LDR      R4,[R4, #+56]
        STRB     R4,[R3, R6]
        B.N      ??spi_mosi_5
//  292         }
//  293         else
//  294         {
//  295             SPI_POPR_REG(SPIN[spin]);
??spi_mosi_4:
        LDR.N    R4,??DataTable2_6
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LDR      R4,[R4, R0, LSL #+2]
        LDR      R4,[R4, #+56]
//  296         }
//  297         SPI_SR_REG(SPIN[spin]) |= SPI_SR_RFDF_MASK;
??spi_mosi_5:
        LDR.N    R4,??DataTable2_6
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LDR      R4,[R4, R0, LSL #+2]
        LDR      R4,[R4, #+44]
        ORRS     R4,R4,#0x20000
        LDR.N    R7,??DataTable2_6
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LDR      R7,[R7, R0, LSL #+2]
        STR      R4,[R7, #+44]
//  298     }
        ADDS     R6,R6,#+1
        B.N      ??spi_mosi_1
//  299 
//  300     /***************** 发送最后一个数据 *******************/
//  301     SPI_PUSHR_REG(SPIN[spin]) = (0
//  302                                  | SPI_PUSHR_CTAS(0)                 //选择CTAR0寄存器
//  303                                  | SPI_PUSHR_PCS(pcs)
//  304                                  | SPI_PUSHR_EOQ_MASK                //1为 传输SPI最后的数据
//  305                                  | SPI_PUSHR_TXDATA(modata[i])
//  306                                 );
??spi_mosi_2:
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LSLS     R7,R1,#+16
        ANDS     R7,R7,#0x3F0000
        LDRB     R4,[R2, R6]
        ORRS     R7,R4,R7
        ORRS     R7,R7,#0x8000000
        LDR.N    R4,??DataTable2_6
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LDR      R4,[R4, R0, LSL #+2]
        STR      R7,[R4, #+52]
//  307 
//  308     SPI_EOQF_WAIT(spin);                                            //等待发送完成。(要及时把RX FIFO的东西清掉，不然这里就无限等待)
??spi_mosi_6:
        LDR.N    R4,??DataTable2_6
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LDR      R4,[R4, R0, LSL #+2]
        LDR      R4,[R4, #+44]
        LSLS     R4,R4,#+3
        BPL.N    ??spi_mosi_6
//  309 
//  310     while( !(SPI_SR_REG(SPIN[spin]) & SPI_SR_RFDF_MASK));           //RFDF为1，Rx FIFO is not empty.
??spi_mosi_7:
        LDR.N    R4,??DataTable2_6
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LDR      R4,[R4, R0, LSL #+2]
        LDR      R4,[R4, #+44]
        LSLS     R4,R4,#+14
        BPL.N    ??spi_mosi_7
//  311     if(midata != NULL)
        CMP      R3,#+0
        BEQ.N    ??spi_mosi_8
//  312     {
//  313         midata[i] = (uint8)SPI_POPR_REG(SPIN[spin]);                  //保存接收到的数据
        LDR.N    R4,??DataTable2_6
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LDR      R4,[R4, R0, LSL #+2]
        LDR      R4,[R4, #+56]
        STRB     R4,[R3, R6]
        B.N      ??spi_mosi_9
//  314     }
//  315     else
//  316     {
//  317         SPI_POPR_REG(SPIN[spin]);
??spi_mosi_8:
        LDR.N    R4,??DataTable2_6
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LDR      R4,[R4, R0, LSL #+2]
        LDR      R4,[R4, #+56]
//  318     }
//  319     SPI_SR_REG(SPIN[spin]) |= SPI_SR_RFDF_MASK;                     //写1清空RFDF，标记Rx FIFO 是空的
??spi_mosi_9:
        LDR.N    R4,??DataTable2_6
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LDR      R4,[R4, R0, LSL #+2]
        LDR      R4,[R4, #+44]
        ORRS     R4,R4,#0x20000
        LDR.N    R7,??DataTable2_6
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LDR      R7,[R7, R0, LSL #+2]
        STR      R4,[R7, #+44]
//  320 }
        POP      {R4-R7}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//  321 
//  322 /*!
//  323  *  @brief      SPI发送接收函数
//  324  *  @param      SPIn_e          SPI模块(SPI0、SPI1、SPI2)
//  325  *  @param      SPIn_PCSn_e     片选管脚编号
//  326  *  @param      mocmd           发送的命令缓冲区地址(不需要接收则传 NULL)
//  327  *  @param      micmd           发送命令时接收到的数据的存储地址(不需要接收则传 NULL)
//  328  *  @param      modata          发送的数据缓冲区地址(不需要接收则传 NULL)
//  329  *  @param      midata          发送数据时接收到的数据的存储地址(不需要接收则传 NULL)
//  330  *  @since      v5.0
//  331  *  Sample usage:           spi_mosi_cmd(SPI0,SPIn_PCS0,cmd,NULL,buff,buff,1,2);    //发送cmd/buff的内容，不接收cmd发送时的数据，接收buff发送时的数据到buff里，长度分别为1、2字节
//  332  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function spi_mosi_cmd
          CFI NoCalls
        THUMB
//  333 void spi_mosi_cmd(SPIn_e spin, SPI_PCSn_e pcs, uint8 *mocmd , uint8 *micmd , uint8 *modata , uint8 *midata, uint32 cmdlen , uint32 len)
//  334 {
spi_mosi_cmd:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
        MOVS     R4,R0
        LDR      R6,[SP, #+24]
        LDR      R0,[SP, #+28]
        LDR      R7,[SP, #+32]
        LDR      R12,[SP, #+36]
//  335     uint32 i = 0;
        MOVS     LR,#+0
//  336     do
//  337     {
//  338         /*************  清标志位  ***************/
//  339         SPI_SR_REG(SPIN[spin]) = (0
//  340                                   | SPI_SR_EOQF_MASK    //发送队列空了，发送完毕标志
//  341                                   | SPI_SR_TFUF_MASK    //传输FIFO下溢标志位，SPI为从机模式，Tx FIFO为空，而外部SPI主机模式启动传输，标志位就会置1，写1清0
//  342                                   | SPI_SR_TFFF_MASK    //传输FIFO满标志位。 写1或者DMA控制器发现传输FIFO满了就会清0。 0表示Tx FIFO满了
//  343                                   | SPI_SR_RFOF_MASK    //接收FIFO溢出标志位。
//  344                                   | SPI_SR_RFDF_MASK    //接收FIFO损耗标志位，写1或者DMA控制器发现传输FIFO空了就会清0。0表示Rx FIFO空
//  345                                  );
??spi_mosi_cmd_0:
        LDR.N    R5,??DataTable2_7  ;; 0x1a0a0000
        LDR.W    R8,??DataTable2_6
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R8,[R8, R4, LSL #+2]
        STR      R5,[R8, #+44]
//  346 
//  347         /************** 清FIFO计数器 **************/
//  348         SPI_MCR_REG(SPIN[spin])    |=  (0
//  349                                         | SPI_MCR_CLR_TXF_MASK      //写1清 Tx FIFO 计数器
//  350                                         | SPI_MCR_CLR_RXF_MASK      //写1清 Rx FIFO 计数器
//  351                                        );
        LDR.N    R5,??DataTable2_6
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R5,[R5, R4, LSL #+2]
        LDR      R5,[R5, #+0]
        ORRS     R5,R5,#0xC00
        LDR.W    R8,??DataTable2_6
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R8,[R8, R4, LSL #+2]
        STR      R5,[R8, #+0]
//  352 
//  353     }
//  354     while( (SPI_SR_REG(SPIN[spin]) & SPI_SR_RFDF_MASK));            //如果 Rx FIFO 非空，则清FIFO.
        LDR.N    R5,??DataTable2_6
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R5,[R5, R4, LSL #+2]
        LDR      R5,[R5, #+44]
        LSLS     R5,R5,#+14
        BMI.N    ??spi_mosi_cmd_0
//  355 
//  356     /***************** 发送cmdlen个数据 *******************/                                                ;
//  357     for(i = 0; i < cmdlen; i++)
        MOVS     R5,#+0
        MOV      LR,R5
??spi_mosi_cmd_1:
        CMP      LR,R7
        BCS.N    ??spi_mosi_cmd_2
//  358     {
//  359         SPI_PUSHR_REG(SPIN[spin]) = (0
//  360                                      | SPI_PUSHR_CTAS(0)             //选择CTAR0寄存器
//  361                                      | SPI_PUSHR_CONT_MASK           //1为 传输期间保持PCSn信号 ，即继续传输数据
//  362                                      | SPI_PUSHR_PCS(pcs)
//  363                                      | SPI_PUSHR_TXDATA(mocmd[i])    //要传输的数据
//  364                                     );
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LSLS     R8,R1,#+16
        ANDS     R8,R8,#0x3F0000
        LDRB     R5,[R2, LR]
        ORRS     R8,R5,R8
        ORRS     R8,R8,#0x80000000
        LDR.N    R5,??DataTable2_6
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R5,[R5, R4, LSL #+2]
        STR      R8,[R5, #+52]
//  365 
//  366         while(!(SPI_SR_REG(SPIN[spin]) & SPI_SR_RFDF_MASK));        //RFDF为1，Rx FIFO is not empty.
??spi_mosi_cmd_3:
        LDR.N    R5,??DataTable2_6
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R5,[R5, R4, LSL #+2]
        LDR      R5,[R5, #+44]
        LSLS     R5,R5,#+14
        BPL.N    ??spi_mosi_cmd_3
//  367         if(micmd != NULL)
        CMP      R3,#+0
        BEQ.N    ??spi_mosi_cmd_4
//  368         {
//  369             micmd[i] = (uint8)SPI_POPR_REG(SPIN[spin]);             //保存接收到的数据
        LDR.N    R5,??DataTable2_6
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R5,[R5, R4, LSL #+2]
        LDR      R5,[R5, #+56]
        STRB     R5,[R3, LR]
        B.N      ??spi_mosi_cmd_5
//  370         }
//  371         else
//  372         {
//  373             SPI_POPR_REG(SPIN[spin]);                               //读取FIFO数据(丢弃读取到的数据)
??spi_mosi_cmd_4:
        LDR.N    R5,??DataTable2_6
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R5,[R5, R4, LSL #+2]
        LDR      R5,[R5, #+56]
//  374         }
//  375         SPI_SR_REG(SPIN[spin]) |= SPI_SR_RFDF_MASK;
??spi_mosi_cmd_5:
        LDR.N    R5,??DataTable2_6
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R5,[R5, R4, LSL #+2]
        LDR      R5,[R5, #+44]
        ORRS     R5,R5,#0x20000
        LDR.W    R8,??DataTable2_6
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R8,[R8, R4, LSL #+2]
        STR      R5,[R8, #+44]
//  376     }
        ADDS     LR,LR,#+1
        B.N      ??spi_mosi_cmd_1
//  377 
//  378     /***************** 发送len-1个数据 *******************/                                                ;
//  379     for(i = 0; i < (len - 1); i++)
??spi_mosi_cmd_2:
        MOVS     R5,#+0
        MOV      LR,R5
??spi_mosi_cmd_6:
        SUBS     R5,R12,#+1
        CMP      LR,R5
        BCS.N    ??spi_mosi_cmd_7
//  380     {
//  381         SPI_PUSHR_REG(SPIN[spin]) = (0
//  382                                      | SPI_PUSHR_CTAS(0)             //选择CTAR0寄存器
//  383                                      | SPI_PUSHR_CONT_MASK           //1为 传输期间保持PCSn信号 ，即继续传输数据
//  384                                      | SPI_PUSHR_PCS(pcs)
//  385                                      | SPI_PUSHR_TXDATA(modata[i])     //要传输的数据
//  386                                     );
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LSLS     R8,R1,#+16
        ANDS     R8,R8,#0x3F0000
        LDRB     R5,[R6, LR]
        ORRS     R8,R5,R8
        ORRS     R8,R8,#0x80000000
        LDR.N    R5,??DataTable2_6
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R5,[R5, R4, LSL #+2]
        STR      R8,[R5, #+52]
//  387 
//  388         while(!(SPI_SR_REG(SPIN[spin]) & SPI_SR_RFDF_MASK));        //RFDF为1，Rx FIFO is not empty.
??spi_mosi_cmd_8:
        LDR.N    R5,??DataTable2_6
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R5,[R5, R4, LSL #+2]
        LDR      R5,[R5, #+44]
        LSLS     R5,R5,#+14
        BPL.N    ??spi_mosi_cmd_8
//  389 
//  390         if(midata != NULL)
        CMP      R0,#+0
        BEQ.N    ??spi_mosi_cmd_9
//  391         {
//  392             midata[i] = (uint8)SPI_POPR_REG(SPIN[spin]);             //保存接收到的数据
        LDR.N    R5,??DataTable2_6
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R5,[R5, R4, LSL #+2]
        LDR      R5,[R5, #+56]
        STRB     R5,[R0, LR]
        B.N      ??spi_mosi_cmd_10
//  393         }
//  394         else
//  395         {
//  396             SPI_POPR_REG(SPIN[spin]);                               //读取FIFO数据(丢弃读取到的数据)
??spi_mosi_cmd_9:
        LDR.N    R5,??DataTable2_6
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R5,[R5, R4, LSL #+2]
        LDR      R5,[R5, #+56]
//  397         }
//  398         SPI_SR_REG(SPIN[spin]) |= SPI_SR_RFDF_MASK;
??spi_mosi_cmd_10:
        LDR.N    R5,??DataTable2_6
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R5,[R5, R4, LSL #+2]
        LDR      R5,[R5, #+44]
        ORRS     R5,R5,#0x20000
        LDR.W    R8,??DataTable2_6
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R8,[R8, R4, LSL #+2]
        STR      R5,[R8, #+44]
//  399     }
        ADDS     LR,LR,#+1
        B.N      ??spi_mosi_cmd_6
//  400     /***************** 发送最后一个数据 *******************/
//  401     SPI_PUSHR_REG(SPIN[spin]) = (0
//  402                                  | SPI_PUSHR_CTAS(0)          //选择CTAR0寄存器
//  403                                  | SPI_PUSHR_PCS(pcs)
//  404                                  | SPI_PUSHR_EOQ_MASK         //End Of Queue，1为 传输SPI最后的数据
//  405                                  | SPI_PUSHR_TXDATA(modata[i])
//  406                                 );
??spi_mosi_cmd_7:
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LSLS     R8,R1,#+16
        ANDS     R8,R8,#0x3F0000
        LDRB     R5,[R6, LR]
        ORRS     R8,R5,R8
        ORRS     R8,R8,#0x8000000
        LDR.N    R5,??DataTable2_6
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R5,[R5, R4, LSL #+2]
        STR      R8,[R5, #+52]
//  407 
//  408     SPI_EOQF_WAIT(spin);    //要及时把RX FIFO的东西清掉，不然这里就无限等待
??spi_mosi_cmd_11:
        LDR.N    R5,??DataTable2_6
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R5,[R5, R4, LSL #+2]
        LDR      R5,[R5, #+44]
        LSLS     R5,R5,#+3
        BPL.N    ??spi_mosi_cmd_11
//  409 
//  410     while( !(SPI_SR_REG(SPIN[spin]) & SPI_SR_RFDF_MASK));    //RFDF为1，Rx FIFO is not empty.
??spi_mosi_cmd_12:
        LDR.N    R5,??DataTable2_6
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R5,[R5, R4, LSL #+2]
        LDR      R5,[R5, #+44]
        LSLS     R5,R5,#+14
        BPL.N    ??spi_mosi_cmd_12
//  411     if(midata != NULL)
        CMP      R0,#+0
        BEQ.N    ??spi_mosi_cmd_13
//  412     {
//  413         midata[i] = (uint8)SPI_POPR_REG(SPIN[spin]);             //保存接收到的数据
        LDR.N    R5,??DataTable2_6
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R5,[R5, R4, LSL #+2]
        LDR      R5,[R5, #+56]
        STRB     R5,[R0, LR]
        B.N      ??spi_mosi_cmd_14
//  414     }
//  415     else
//  416     {
//  417         SPI_POPR_REG(SPIN[spin]);                               //读取FIFO数据(丢弃读取到的数据)
??spi_mosi_cmd_13:
        LDR.N    R5,??DataTable2_6
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R5,[R5, R4, LSL #+2]
        LDR      R5,[R5, #+56]
//  418     }
//  419     SPI_SR_REG(SPIN[spin]) |= SPI_SR_RFDF_MASK;
??spi_mosi_cmd_14:
        LDR.N    R5,??DataTable2_6
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R5,[R5, R4, LSL #+2]
        LDR      R5,[R5, #+44]
        ORRS     R5,R5,#0x20000
        LDR.W    R8,??DataTable2_6
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R8,[R8, R4, LSL #+2]
        STR      R5,[R8, #+44]
//  420 }
        POP      {R4-R8,PC}       ;; return
          CFI EndBlock cfiBlock2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     bus_clk_khz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     ?_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     ?_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     0x40048030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DC32     ?_2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_6:
        DC32     SPIN

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_7:
        DC32     0x1a0a0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_8:
        DC32     0x803f0000

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_0:
        DC32 2, 4, 6, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192
        DC32 16384, 32768

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_1:
        DC8 2, 3, 5, 7

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_2:
        DC8 "D:\\\347\254\254\345\215\201\344\272\214\345\261\212\347\224\265\347\243\201\347\273\204\\Car\\Chip\\src\\MK60_spi.c"
        DC8 0, 0, 0

        END
//  421 
//  422 
// 
//    12 bytes in section .data
//   120 bytes in section .rodata
// 1 580 bytes in section .text
// 
// 1 580 bytes of CODE  memory
//   120 bytes of CONST memory
//    12 bytes of DATA  memory
//
//Errors: none
//Warnings: none
