///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      12/Jun/2017  17:32:53
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\@@@@@@@\Car\Chip\src\MK60_dma.c
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EWD235.tmp
//        (D:\@@@@@@@\Car\Chip\src\MK60_dma.c -D DEBUG -D
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
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\MK60_dma.s
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

        EXTERN GPIOX
        EXTERN PORTX
        EXTERN assert_failed
        EXTERN gpio_init
        EXTERN port_init

        PUBLIC DMA_count_Init
        PUBLIC DMA_count_get
        PUBLIC DMA_count_reset
        PUBLIC count_init
        PUBLIC dma_portx2buff_init
        
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
        
// D:\@@@@@@@\Car\Chip\src\MK60_dma.c
//    1 /*!
//    2  *     COPYRIGHT NOTICE
//    3  *     Copyright (c) 2013,山外科技
//    4  *     All rights reserved.
//    5  *     技术讨论：山外论坛 http://www.vcan123.com
//    6  *
//    7  *     除注明出处外，以下所有内容版权均属山外科技所有，未经允许，不得用于商业用途，
//    8  *     修改内容时必须保留山外科技的版权声明。
//    9  *
//   10  * @file       MK60_dma.c
//   11  * @brief      DMA函数库
//   12  * @author     山外科技
//   13  * @version    v5.1
//   14  * @date       2014-04-25
//   15  */
//   16 
//   17 
//   18 
//   19 #include "common.h"

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function NVIC_EnableIRQ
          CFI NoCalls
        THUMB
// static __ramfunc __interwork __softfp void NVIC_EnableIRQ(IRQn_Type)
NVIC_EnableIRQ:
        MOVS     R2,#+1
        ANDS     R1,R0,#0x1F
        LSLS     R2,R2,R1
        LDR.N    R1,??NVIC_EnableIRQ_0  ;; 0xe000e100
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        MOVS     R3,R0
        LSRS     R3,R3,#+5
        STR      R2,[R1, R3, LSL #+2]
        BX       LR               ;; return
        Nop      
        DATA
??NVIC_EnableIRQ_0:
        DC32     0xe000e100
          CFI EndBlock cfiBlock0
//   20 #include "MK60_port.h"
//   21 #include "MK60_gpio.h"
//   22 #include "MK60_dma.h"
//   23 
//   24 
//   25 
//   26 #define COUNTSADDR   0x4004000C  //(&counttempaddr)
//   27 #define COUNTDADDR   0x4004000C  //(&counttempaddr)
//   28 
//   29 
//   30 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   31 u32 count_init[16];         //用来保存16个通道的初始化计数值
count_init:
        DS8 64
//   32 
//   33 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function dma_gpio_input_init
        THUMB
//   34 static void dma_gpio_input_init(void *SADDR,uint8 BYTEs)
//   35 {
dma_gpio_input_init:
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
//   36     uint8 n, tmp;
//   37     uint8 ptxn;
//   38 
//   39     //SADDR 实际上就是 GPIO的 输入寄存器 PDIR 的地址
//   40     //GPIOA、GPIOB、GPIOC、GPIOD、GPIOE 的地址 分别是 0x400FF000u 、0x400FF040u 、0x400FF080u、 0x400FF0C0u、0x400FF100u
//   41     //sizeof(GPIO_MemMap) = 0x18
//   42     //每个GPIO地址 &0x1C0 后，得到 0x000 , 0x040 , 0x080 ,0x0C0 ,0x100
//   43     //再 /0x40 后得到 0 、 1 、 2、 3、4 ，刚好就是 PTA、PTB、PTC 、PTD 、PTE
//   44     //再 *32 就等于 PTA0、PTB0、PTC0 、PTD0 、PTE0
//   45     uint8 ptx0 = ((((uint32)SADDR) & 0x1C0) / 0x40 ) * 32;
        MOVS     R0,R4
        LSRS     R0,R0,#+6
        ANDS     R0,R0,#0x7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R9,R0,#+5
//   46 
//   47     //每个GPIO 对应的寄存器地址， &0x 3F 后得到的值都是相同的。
//   48     //PTA_B0_IN 即 GPIOA 的 输入寄存器 PDIR 的 地址
//   49     // (SADDR & 0x3f - PTA_B0_IN & 0x3f) 等效于 (SADDR - PTA_B0_IN) & 0x3f
//   50     //假设需要采集的位 为 0~7、8~15、16~23、24~31 ，则 上面式子对应的值 为 0、1、2、3
//   51     //刚好是  0~7、8~15、16~23、24~31 位的地址偏移，再 * 8 就变成 0、8、16、24
//   52 
//   53     n = (uint8)(((uint32)SADDR - ((uint32)(&PTA_B0_IN))) & 0x3f) * 8;       //最小的引脚号
        MOVS     R0,R4
        SUBS     R0,R0,#+16
        ANDS     R0,R0,#0x3F
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R0,R0,#+3
        MOVS     R6,R0
//   54 
//   55     ptxn = ptx0 + n;
        ADDS     R0,R6,R9
        MOV      R8,R0
//   56     tmp = ptxn + (BYTEs * 8 ) - 1;                                          //最大的引脚号
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R0,R8,R5, LSL #+3
        SUBS     R0,R0,#+1
        MOVS     R7,R0
//   57     while(ptxn <= tmp)
??dma_gpio_input_init_0:
        MOVS     R0,R7
        MOV      R1,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R0,R1
        BCC.N    ??dma_gpio_input_init_1
//   58     {
//   59         //这里加入 GPIO 初始化为输入
//   60         gpio_init((PTXn_e )ptxn, GPI, 0);               //设置为输入
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOV      R0,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall gpio_init
        BL       gpio_init
//   61         port_init((PTXn_e )ptxn , ALT1 | PULLDOWN );    //输入源默认配置为下拉，默认读取到的是0
        MOV      R1,#+258
        MOV      R0,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall port_init
        BL       port_init
//   62         ptxn ++;
        ADDS     R8,R8,#+1
        B.N      ??dma_gpio_input_init_0
//   63     }
//   64 }
??dma_gpio_input_init_1:
        POP      {R0,R4-R9,PC}    ;; return
          CFI EndBlock cfiBlock1
//   65 
//   66 /*!
//   67  *  @brief      DMA初始化，由IO口请求传输输入端口的数据到内存
//   68  *  @param      DMA_CHn         通道号（DMA_CH0 ~ DMA_CH15）
//   69  *  @param      SADDR           源地址( (void * )&PTx_Bn_IN 或 (void * )&PTx_Wn_IN 或 (void * )&PTx_IN  )
//   70  *  @param      DADDR           目的地址
//   71  *  @param      PTxn            触发端口
//   72  *  @param      DMA_BYTEn       每次DMA传输字节数
//   73  *  @param      count           一个主循环传输字节数
//   74  *  @param      cfg             DMA传输配置，从DMA_cfg里选择
//   75  *  @since      v5.0
//   76  *  @note       DMA PTXn触发源默认上升沿触发传输，若需修改，则初始化后调用 port_init 配置DMA 触发方式
//   77                 初始化后，需要调用 DMA_EN 来实现
//   78  *  Sample usage:   uint8 buff[10];
//   79                     dma_portx2buff_init(DMA_CH0, PTB_B0_IN, buff, PTA7, DMA_BYTE1, 10, DADDR_RECOVER);
//   80                     //DMA初始化，源地址：PTB_B0_IN，目的地址：buff,PTA7触发(默认上升沿)，每次传输1字节，共传输 10次 ，传输结束后恢复地址
//   81 
//   82                     port_init(PTA7,ALT1 | DMA_FALLING);             //默认触发源是上升沿，此处改为 下降沿触发
//   83 
//   84                     DMA_EN(DMA_CH0);                //需要使能 DMA 后才能传输数据
//   85  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function dma_portx2buff_init
        THUMB
//   86 void dma_portx2buff_init(DMA_CHn CHn, void *SADDR, void *DADDR, PTXn_e ptxn, DMA_BYTEn byten, uint32 count, uint32 cfg)
//   87 {
dma_portx2buff_init:
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
        MOVS     R5,R0
        MOVS     R6,R1
        MOVS     R7,R2
        MOV      R8,R3
        LDRSB    R4,[SP, #+40]
        LDR      R9,[SP, #+44]
        LDR      R10,[SP, #+48]
//   88 
//   89     uint8 BYTEs = (byten == DMA_BYTE1 ? 1 : (byten == DMA_BYTE2 ? 2 : (byten == DMA_BYTE4 ? 4 : 16 ) ) ); //计算传输字节数
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??dma_portx2buff_init_0
        MOVS     R11,#+1
        B.N      ??dma_portx2buff_init_1
??dma_portx2buff_init_0:
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.N    ??dma_portx2buff_init_2
        MOVS     R11,#+2
        B.N      ??dma_portx2buff_init_3
??dma_portx2buff_init_2:
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+2
        BNE.N    ??dma_portx2buff_init_4
        MOVS     R11,#+4
        B.N      ??dma_portx2buff_init_3
??dma_portx2buff_init_4:
        MOVS     R11,#+16
//   90 
//   91     //断言，检测传递进来参数是否正确
//   92     ASSERT(                                             //用断言检测 源地址和每次传输字节数是否正确
//   93         (   (byten == DMA_BYTE1)                    //传输一个字节
//   94             && ( (SADDR >= &PTA_B0_IN) && (SADDR <= ( &PTE_B3_IN )))
//   95         )
//   96 
//   97         || (   (byten == DMA_BYTE2)                   //传输两个字节(注意，不能跨端口)
//   98                && ( (SADDR >= &PTA_B0_IN)
//   99                     && (SADDR <= ( &PTE_W1_IN ))
//  100                     && (((uint32)SADDR & 0x03) != 0x03) )         //保证不跨端口
//  101            )
//  102 
//  103         || (   (byten == DMA_BYTE4)                   //传输四个字节
//  104                && ((SADDR >= &PTA_B0_IN) && (SADDR <= ( &PTE_B0_IN )))
//  105                && (((uint32)SADDR & 0x03) == 0x00)           //保证不跨端口
//  106            )
//  107     );
??dma_portx2buff_init_3:
??dma_portx2buff_init_1:
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??dma_portx2buff_init_5
        LDR.W    R0,??DataTable4  ;; 0x400ff010
        CMP      R6,R0
        BCC.N    ??dma_portx2buff_init_5
        LDR.W    R0,??DataTable4_1  ;; 0x400ff113
        CMP      R0,R6
        BCS.N    ??dma_portx2buff_init_6
??dma_portx2buff_init_5:
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.N    ??dma_portx2buff_init_7
        LDR.W    R0,??DataTable4  ;; 0x400ff010
        CMP      R6,R0
        BCC.N    ??dma_portx2buff_init_7
        LDR.W    R0,??DataTable4_2  ;; 0x400ff112
        CMP      R0,R6
        BCC.N    ??dma_portx2buff_init_7
        ANDS     R0,R6,#0x3
        CMP      R0,#+3
        BNE.N    ??dma_portx2buff_init_6
??dma_portx2buff_init_7:
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+2
        BNE.N    ??dma_portx2buff_init_8
        LDR.N    R0,??DataTable4  ;; 0x400ff010
        CMP      R6,R0
        BCC.N    ??dma_portx2buff_init_8
        LDR.N    R0,??DataTable4_3  ;; 0x400ff110
        CMP      R0,R6
        BCC.N    ??dma_portx2buff_init_8
        ANDS     R0,R6,#0x3
        CMP      R0,#+0
        BEQ.N    ??dma_portx2buff_init_6
??dma_portx2buff_init_8:
        MOVS     R1,#+107
        LDR.N    R0,??DataTable4_4
          CFI FunCall assert_failed
        BL       assert_failed
//  108 
//  109     ASSERT(count < 0x8000); //断言，最大只支持0x7FFF
??dma_portx2buff_init_6:
        CMP      R9,#+32768
        BCC.N    ??dma_portx2buff_init_9
        MOVS     R1,#+109
        LDR.N    R0,??DataTable4_4
          CFI FunCall assert_failed
        BL       assert_failed
//  110 
//  111     //DMA 寄存器 配置
//  112 
//  113     /* 开启时钟 */
//  114     SIM_SCGC7 |= SIM_SCGC7_DMA_MASK;                        //打开DMA模块时钟
??dma_portx2buff_init_9:
        LDR.N    R0,??DataTable4_5  ;; 0x40048040
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable4_5  ;; 0x40048040
        STR      R0,[R1, #+0]
//  115 
//  116 #if defined(MK60DZ10)
//  117     SIM_SCGC6 |= SIM_SCGC6_DMAMUX_MASK;                     //打开DMA多路复用器时钟
        LDR.N    R0,??DataTable4_6  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable4_6  ;; 0x4004803c
        STR      R0,[R1, #+0]
//  118 #elif defined(MK60F15)
//  119     SIM_SCGC6 |= SIM_SCGC6_DMAMUX0_MASK;                    //打开DMA多路复用器时钟
//  120 #endif
//  121 
//  122     /* 配置 DMA 通道 的 传输控制块 TCD ( Transfer Control Descriptor ) */
//  123     DMA_SADDR(CHn) =    (uint32)SADDR;                      // 设置  源地址
        LDR.N    R0,??DataTable4_7  ;; 0x40009000
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        LSLS     R1,R5,#+5
        STR      R6,[R0, R1]
//  124     DMA_DADDR(CHn) =    (uint32)DADDR;                      // 设置目的地址
        LDR.N    R0,??DataTable4_7  ;; 0x40009000
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        LSLS     R1,R5,#+5
        ADD      R0,R0,R1
        STR      R7,[R0, #+16]
//  125     DMA_SOFF(CHn)  =    0x00u;                              // 设置源地址偏移 = 0x0, 即不变
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_7  ;; 0x40009000
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        LSLS     R2,R5,#+5
        ADD      R1,R1,R2
        STRH     R0,[R1, #+4]
//  126     DMA_DOFF(CHn)  =    BYTEs;                              // 每次传输后，目的地址加 BYTEs
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        LDR.N    R0,??DataTable4_7  ;; 0x40009000
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        LSLS     R1,R5,#+5
        ADD      R0,R0,R1
        STRH     R11,[R0, #+20]
//  127     DMA_ATTR(CHn)  =    (0
//  128                          | DMA_ATTR_SMOD(0x0)               // 源地址模数禁止  Source address modulo feature is disabled
//  129                          | DMA_ATTR_SSIZE(byten)            // 源数据位宽 ：DMA_BYTEn  。    SSIZE = 0 -> 8-bit ，SSIZE = 1 -> 16-bit ，SSIZE = 2 -> 32-bit ，SSIZE = 4 -> 16-byte
//  130                          | DMA_ATTR_DMOD(0x0)               // 目标地址模数禁止
//  131                          | DMA_ATTR_DSIZE(byten)            // 目标数据位宽 ：DMA_BYTEn  。  设置参考  SSIZE
//  132                         );
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LSLS     R1,R4,#+8
        ANDS     R1,R1,#0x700
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        ANDS     R0,R4,#0x7
        ORRS     R1,R0,R1
        LDR.N    R0,??DataTable4_7  ;; 0x40009000
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        LSLS     R2,R5,#+5
        ADD      R0,R0,R2
        STRH     R1,[R0, #+6]
//  133 
//  134     DMA_CITER_ELINKNO(CHn)  = DMA_CITER_ELINKNO_CITER(count);   //当前主循环次数
        MOV      R0,R9
        LSLS     R0,R0,#+17       ;; ZeroExtS R0,R0,#+17,#+17
        LSRS     R0,R0,#+17
        LDR.N    R1,??DataTable4_7  ;; 0x40009000
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        LSLS     R2,R5,#+5
        ADD      R1,R1,R2
        STRH     R0,[R1, #+22]
//  135     DMA_BITER_ELINKNO(CHn)  = DMA_BITER_ELINKNO_BITER(count);   //起始主循环次数
        MOV      R0,R9
        LSLS     R0,R0,#+17       ;; ZeroExtS R0,R0,#+17,#+17
        LSRS     R0,R0,#+17
        LDR.N    R1,??DataTable4_7  ;; 0x40009000
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        LSLS     R2,R5,#+5
        ADD      R1,R1,R2
        STRH     R0,[R1, #+30]
//  136 
//  137     DMA_CR &= ~DMA_CR_EMLM_MASK;                                // CR[EMLM] = 0
        LDR.N    R0,??DataTable4_8  ;; 0x40008000
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x80
        LDR.N    R1,??DataTable4_8  ;; 0x40008000
        STR      R0,[R1, #+0]
//  138 
//  139     //当CR[EMLM] = 0 时:
//  140     DMA_NBYTES_MLNO(CHn) =   DMA_NBYTES_MLNO_NBYTES(BYTEs); // 通道每次传输字节数，这里设置为BYTEs个字节。注：值为0表示传输4GB */
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        LDR.N    R0,??DataTable4_7  ;; 0x40009000
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        LSLS     R1,R5,#+5
        ADD      R0,R0,R1
        STR      R11,[R0, #+8]
//  141 
//  142     /* 配置 DMA 传输结束后的操作 */
//  143     DMA_SLAST(CHn)      =   0;                              //调整  源地址的附加值,主循环结束后恢复  源地址
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_7  ;; 0x40009000
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        LSLS     R2,R5,#+5
        ADD      R1,R1,R2
        STR      R0,[R1, #+12]
//  144     DMA_DLAST_SGA(CHn)  =   (uint32)( (cfg & DADDR_KEEPON ) == 0 ? (-count)  : 0 ); //调整目的地址的附加值,主循环结束后恢复目的地址或者保持地址
        LSLS     R0,R10,#+31
        BMI.N    ??dma_portx2buff_init_10
        RSBS     R0,R9,#+0
        B.N      ??dma_portx2buff_init_11
??dma_portx2buff_init_10:
        MOVS     R0,#+0
??dma_portx2buff_init_11:
        LDR.N    R1,??DataTable4_7  ;; 0x40009000
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        LSLS     R2,R5,#+5
        ADD      R1,R1,R2
        STR      R0,[R1, #+24]
//  145     DMA_CSR(CHn)        =   (0
//  146                              | DMA_CSR_BWC(3)               //带宽控制,每读一次，eDMA 引擎停止 8 个周期（0不停止；1保留；2停止4周期；3停止8周期）
//  147                              | DMA_CSR_DREQ_MASK            //主循环结束后停止硬件请求
//  148                              | DMA_CSR_INTMAJOR_MASK        //主循环结束后产生中断
//  149                             );
        MOVW     R0,#+49162
        LDR.N    R1,??DataTable4_7  ;; 0x40009000
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        LSLS     R2,R5,#+5
        ADD      R1,R1,R2
        STRH     R0,[R1, #+28]
//  150 
//  151     /* 配置 DMA 触发源 */
//  152 #if defined(MK60DZ10)
//  153     DMAMUX_CHCFG_REG(DMAMUX_BASE_PTR, CHn) = (0
//  154 #elif defined(MK60F15)
//  155     DMAMUX_CHCFG_REG(DMAMUX0_BASE_PTR, CHn) = (0
//  156 #endif
//  157             | DMAMUX_CHCFG_ENBL_MASK                        /* Enable routing of DMA request */
//  158             //| DMAMUX_CHCFG_TRIG_MASK                        /* Trigger Mode: Periodic   PIT周期触发传输模式   通道1对应PIT1，必须使能PIT1，且配置相应的PIT定时触发 */
//  159             | DMAMUX_CHCFG_SOURCE( PTX(ptxn) + DMA_PORTA) /* 通道触发传输源:     */
//  160                                              );
        MOV      R0,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        ADDS     R0,R0,#+49
        ORRS     R0,R0,#0x80
        LDR.N    R1,??DataTable4_9  ;; 0x40021000
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        STRB     R0,[R1, R5]
//  161 
//  162     //配置触发源（默认是 上升沿触发）
//  163     port_init(ptxn, ALT1 | DMA_RISING);
        LDR.N    R1,??DataTable4_10  ;; 0x10100
        MOV      R0,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall port_init
        BL       port_init
//  164 
//  165     /*  配置输入源   */
//  166     dma_gpio_input_init(SADDR,BYTEs);
        MOV      R1,R11
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R6
          CFI FunCall dma_gpio_input_init
        BL       dma_gpio_input_init
//  167 
//  168     DMA_DIS(CHn);                                    //使能通道CHn 硬件请求
        LDR.N    R0,??DataTable4_11  ;; 0x4000800c
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        LSLS     R1,R1,R5
        BICS     R0,R0,R1
        LDR.N    R1,??DataTable4_11  ;; 0x4000800c
        STR      R0,[R1, #+0]
//  169     DMA_IRQ_CLEAN(CHn);
        LDR.N    R0,??DataTable4_12  ;; 0x40008024
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        LSLS     R1,R1,R5
        ORRS     R0,R1,R0
        LDR.N    R1,??DataTable4_12  ;; 0x40008024
        STR      R0,[R1, #+0]
//  170 
//  171     /* 开启中断 */
//  172     //DMA_EN(CHn);                                    //使能通道CHn 硬件请求
//  173     //DMA_IRQ_EN(CHn);                                //允许DMA通道传输
//  174 }
        POP      {R0,R4-R11,PC}   ;; return
          CFI EndBlock cfiBlock2
//  175 
//  176 
//  177 /*************************************************************************
//  178 *                             野火嵌入式开发工作室
//  179 *
//  180 *  函数名称：DMA_count_Init
//  181 *  功能说明：DMA累加计数初始化
//  182 *  参数说明：DMA_CHn              通道号（DMA_CH0 ~ DMA_CH15）
//  183 *            PTxn                 触发端口
//  184 *            count                累加计数中断值
//  185 *            DMA_Count_cfg        DMA传输配置
//  186 *  函数返回：无
//  187 *  修改时间：2012-1-20
//  188 *  备    注：
//  189 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function DMA_count_Init
        THUMB
//  190 void DMA_count_Init(DMA_CHn CHn, PTXn_e ptxn, u32 count, DMA_Count_cfg cfg)
//  191 {
DMA_count_Init:
        PUSH     {R3-R9,LR}
          CFI R14 Frame(CFA, -4)
          CFI R9 Frame(CFA, -8)
          CFI R8 Frame(CFA, -12)
          CFI R7 Frame(CFA, -16)
          CFI R6 Frame(CFA, -20)
          CFI R5 Frame(CFA, -24)
          CFI R4 Frame(CFA, -28)
          CFI CFA R13+32
        MOVS     R6,R0
        MOVS     R4,R1
        MOVS     R7,R2
        MOV      R8,R3
//  192     u8 byten = DMA_BYTE1;
        MOVS     R5,#+0
//  193     u8 BYTEs = (byten == DMA_BYTE1 ? 1 : (byten == DMA_BYTE2 ? 2 : (byten == DMA_BYTE4 ? 4 : 16 ) ) ); //计算传输字节数
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.N    ??DMA_count_Init_0
        MOVS     R9,#+1
        B.N      ??DMA_count_Init_1
??DMA_count_Init_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BNE.N    ??DMA_count_Init_2
        MOVS     R9,#+2
        B.N      ??DMA_count_Init_3
??DMA_count_Init_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+2
        BNE.N    ??DMA_count_Init_4
        MOVS     R9,#+4
        B.N      ??DMA_count_Init_3
??DMA_count_Init_4:
        MOVS     R9,#+16
//  194     if(count > 0x7FFF )count = 0x7FFF;
??DMA_count_Init_3:
??DMA_count_Init_1:
        CMP      R7,#+32768
        BCC.N    ??DMA_count_Init_5
        MOVW     R0,#+32767
        MOVS     R7,R0
//  195     count_init[CHn] = count;
??DMA_count_Init_5:
        LDR.N    R0,??DataTable4_13
        SXTB     R6,R6            ;; SignExt  R6,R6,#+24,#+24
        STR      R7,[R0, R6, LSL #+2]
//  196 
//  197     /* 开启时钟 */
//  198     SIM_SCGC7 |= SIM_SCGC7_DMA_MASK;                        //打开DMA模块时钟
        LDR.N    R0,??DataTable4_5  ;; 0x40048040
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable4_5  ;; 0x40048040
        STR      R0,[R1, #+0]
//  199     SIM_SCGC6 |= SIM_SCGC6_DMAMUX_MASK;                     //打开DMA多路复用器时钟
        LDR.N    R0,??DataTable4_6  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable4_6  ;; 0x4004803c
        STR      R0,[R1, #+0]
//  200 
//  201     /* 配置 DMA 通道 的 传输控制块 TCD ( Transfer Control Descriptor ) */
//  202     DMA_SADDR(CHn) =    (u32)COUNTSADDR;                    // 设置  源地址
        LDR.N    R0,??DataTable4_14  ;; 0x4004000c
        LDR.N    R1,??DataTable4_7  ;; 0x40009000
        SXTB     R6,R6            ;; SignExt  R6,R6,#+24,#+24
        LSLS     R2,R6,#+5
        STR      R0,[R1, R2]
//  203     DMA_DADDR(CHn) =    (u32)COUNTDADDR;                    // 设置目的地址
        LDR.N    R0,??DataTable4_14  ;; 0x4004000c
        LDR.N    R1,??DataTable4_7  ;; 0x40009000
        SXTB     R6,R6            ;; SignExt  R6,R6,#+24,#+24
        LSLS     R2,R6,#+5
        ADD      R1,R1,R2
        STR      R0,[R1, #+16]
//  204     DMA_SOFF(CHn)  =    0;                                  // 设置源地址不变
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_7  ;; 0x40009000
        SXTB     R6,R6            ;; SignExt  R6,R6,#+24,#+24
        LSLS     R2,R6,#+5
        ADD      R1,R1,R2
        STRH     R0,[R1, #+4]
//  205     DMA_DOFF(CHn)  =    0;                                  // 每次传输后，目的地址不变
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_7  ;; 0x40009000
        SXTB     R6,R6            ;; SignExt  R6,R6,#+24,#+24
        LSLS     R2,R6,#+5
        ADD      R1,R1,R2
        STRH     R0,[R1, #+20]
//  206 
//  207     DMA_ATTR(CHn)  =    (0
//  208                          | DMA_ATTR_SMOD(0x0)                // 源地址模数禁止  Source address modulo feature is disabled
//  209                          | DMA_ATTR_SSIZE(byten)             // 源数据位宽 ：DMA_BYTEn  。    SSIZE = 0 -> 8-bit ，SSIZE = 1 -> 16-bit ，SSIZE = 2 -> 32-bit ，SSIZE = 4 -> 16-byte
//  210                          | DMA_ATTR_DMOD(0x0)                // 目标地址模数禁止
//  211                          | DMA_ATTR_DSIZE(byten)             // 目标数据位宽 ：DMA_BYTEn  。  设置参考  SSIZE
//  212                         );
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LSLS     R1,R5,#+8
        ANDS     R1,R1,#0x700
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ANDS     R0,R5,#0x7
        ORRS     R1,R0,R1
        LDR.N    R0,??DataTable4_7  ;; 0x40009000
        SXTB     R6,R6            ;; SignExt  R6,R6,#+24,#+24
        LSLS     R2,R6,#+5
        ADD      R0,R0,R2
        STRH     R1,[R0, #+6]
//  213 
//  214     DMA_CITER_ELINKNO(CHn)  = DMA_CITER_ELINKNO_CITER(count); //当前主循环次数
        MOVS     R0,R7
        LSLS     R0,R0,#+17       ;; ZeroExtS R0,R0,#+17,#+17
        LSRS     R0,R0,#+17
        LDR.N    R1,??DataTable4_7  ;; 0x40009000
        SXTB     R6,R6            ;; SignExt  R6,R6,#+24,#+24
        LSLS     R2,R6,#+5
        ADD      R1,R1,R2
        STRH     R0,[R1, #+22]
//  215     DMA_BITER_ELINKNO(CHn)  = DMA_BITER_ELINKYES_BITER(count);//起始主循环次数
        MOVS     R0,R7
        LSLS     R0,R0,#+23       ;; ZeroExtS R0,R0,#+23,#+23
        LSRS     R0,R0,#+23
        LDR.N    R1,??DataTable4_7  ;; 0x40009000
        SXTB     R6,R6            ;; SignExt  R6,R6,#+24,#+24
        LSLS     R2,R6,#+5
        ADD      R1,R1,R2
        STRH     R0,[R1, #+30]
//  216 
//  217     DMA_CR &= ~DMA_CR_EMLM_MASK;                            // CR[EMLM] = 0
        LDR.N    R0,??DataTable4_8  ;; 0x40008000
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x80
        LDR.N    R1,??DataTable4_8  ;; 0x40008000
        STR      R0,[R1, #+0]
//  218 
//  219     DMA_NBYTES_MLNO(CHn) =   DMA_NBYTES_MLNO_NBYTES(BYTEs); // 通道每次传输字节数，这里设置为BYTEs个字节。注：值为0表示传输4GB */
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        LDR.N    R0,??DataTable4_7  ;; 0x40009000
        SXTB     R6,R6            ;; SignExt  R6,R6,#+24,#+24
        LSLS     R1,R6,#+5
        ADD      R0,R0,R1
        STR      R9,[R0, #+8]
//  220 
//  221     /* 配置 DMA 传输结束后的操作 */
//  222     DMA_SLAST(CHn)      =   -count;                              //调整  源地址的附加值,主循环结束后恢复  源地址
        RSBS     R0,R7,#+0
        LDR.N    R1,??DataTable4_7  ;; 0x40009000
        SXTB     R6,R6            ;; SignExt  R6,R6,#+24,#+24
        LSLS     R2,R6,#+5
        ADD      R1,R1,R2
        STR      R0,[R1, #+12]
//  223     DMA_DLAST_SGA(CHn)  =   0;                                  //调整目的地址的附加值,主循环结束后恢复目的地址或者保持地址
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_7  ;; 0x40009000
        SXTB     R6,R6            ;; SignExt  R6,R6,#+24,#+24
        LSLS     R2,R6,#+5
        ADD      R1,R1,R2
        STR      R0,[R1, #+24]
//  224     DMA_CSR(CHn)        =   (0
//  225                              | DMA_CSR_DREQ_MASK            //主循环结束后停止硬件请求
//  226                              | DMA_CSR_INTMAJOR_MASK        //主循环结束后产生中断
//  227                             );
        MOVS     R0,#+10
        LDR.N    R1,??DataTable4_7  ;; 0x40009000
        SXTB     R6,R6            ;; SignExt  R6,R6,#+24,#+24
        LSLS     R2,R6,#+5
        ADD      R1,R1,R2
        STRH     R0,[R1, #+28]
//  228 
//  229     /* 配置 DMA 触发源 */
//  230     DMAMUX_CHCFG_REG(DMAMUX_BASE_PTR, CHn) = (0
//  231             | DMAMUX_CHCFG_ENBL_MASK                        /* Enable routing of DMA request */
//  232             | DMAMUX_CHCFG_SOURCE((ptxn >> 5) + DMA_PORTA) /* 通道触发传输源:     */
//  233                                              );
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        ADDS     R0,R0,#+49
        ORRS     R0,R0,#0x80
        LDR.N    R1,??DataTable4_9  ;; 0x40021000
        SXTB     R6,R6            ;; SignExt  R6,R6,#+24,#+24
        STRB     R0,[R1, R6]
//  234 
//  235     SIM_SCGC5 |= (SIM_SCGC5_PORTA_MASK << (ptxn>>5));                                                               //开启PORTx端口
        LDR.N    R0,??DataTable4_15  ;; 0x40048038
        LDR      R1,[R0, #+0]
        MOV      R2,#+512
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        LSLS     R2,R2,R0
        ORRS     R1,R2,R1
        LDR.N    R0,??DataTable4_15  ;; 0x40048038
        STR      R1,[R0, #+0]
//  236     GPIO_PDDR_REG(GPIOX[(ptxn>>5)]) &= ~(1 << (ptxn & 0x1f));                                                       //设置端口方向为输入
        LDR.N    R0,??DataTable4_16
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R1,R4
        ASRS     R1,R1,#+5
        LDR      R1,[R0, R1, LSL #+2]
        LDR.N    R0,??DataTable4_16
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R2,R4
        ASRS     R2,R2,#+5
        LDR      R0,[R0, R2, LSL #+2]
        LDR      R2,[R0, #+20]
        MOVS     R3,#+1
        ANDS     R0,R4,#0x1F
        LSLS     R3,R3,R0
        BICS     R2,R2,R3
        STR      R2,[R1, #+20]
//  237     PORT_PCR_REG(PORTX[(ptxn>>5)], (ptxn & 0x1F)) = ( 0
//  238             | PORT_PCR_MUX(1)               // 复用GPIO
//  239             | PORT_PCR_IRQC(cfg & 0x03 )    // 确定触发模式
//  240             | ((cfg & 0xc0 ) >> 6)          // 开启上拉或下拉电阻，或者没有
//  241                                                     );
        LDR.N    R0,??DataTable4_17
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R1,R4
        ASRS     R1,R1,#+5
        LDR      R0,[R0, R1, LSL #+2]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ANDS     R1,R4,#0x1F
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        ANDS     R2,R8,#0x3
        MOV      R3,R8
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LSRS     R3,R3,#+6
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ORRS     R3,R3,R2, LSL #+16
        ORRS     R3,R3,#0x100
        STR      R3,[R0, R1, LSL #+2]
//  242     GPIO_PDDR_REG(GPIOX[(ptxn>>5)]) &= ~(1 << (ptxn && 0x1F));                                                      //输入模式
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??DMA_count_Init_6
        MOVS     R0,#+1
        B.N      ??DMA_count_Init_7
??DMA_count_Init_6:
        MOVS     R0,#+0
??DMA_count_Init_7:
        LDR.N    R1,??DataTable4_16
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R2,R4
        ASRS     R2,R2,#+5
        LDR      R1,[R1, R2, LSL #+2]
        LDR.N    R2,??DataTable4_16
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R3,R4
        ASRS     R3,R3,#+5
        LDR      R2,[R2, R3, LSL #+2]
        LDR      R2,[R2, #+20]
        MOVS     R3,#+1
        LSLS     R0,R3,R0
        BICS     R0,R2,R0
        STR      R0,[R1, #+20]
//  243 
//  244     /* 开启中断 */
//  245     DMA_EN(CHn);                                    //使能通道CHn 硬件请求
        LDR.N    R0,??DataTable4_11  ;; 0x4000800c
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        LSLS     R1,R1,R6
        ORRS     R0,R1,R0
        LDR.N    R1,??DataTable4_11  ;; 0x4000800c
        STR      R0,[R1, #+0]
//  246     DMA_IRQ_EN(CHn);                                //允许DMA通道传输
        MOVS     R0,R6
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
          CFI FunCall NVIC_EnableIRQ
        BL       NVIC_EnableIRQ
//  247 }
        POP      {R0,R4-R9,PC}    ;; return
          CFI EndBlock cfiBlock3
//  248 /*************************************************************************
//  249 *                             野火嵌入式开发工作室
//  250 *
//  251 *  函数名称：DMA_count_get
//  252 *  功能说明：返回累加计数值
//  253 *  参数说明：DMA_CHn              通道号（DMA_CH0 ~ DMA_CH15）
//  254 *  函数返回：累加计数值
//  255 *  修改时间：2012-3-320
//  256 *  备    注：
//  257 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function DMA_count_get
          CFI NoCalls
        THUMB
//  258 u32 DMA_count_get(DMA_CHn CHn)
//  259 {
DMA_count_get:
        MOVS     R1,R0
//  260     u32 temp =  count_init[CHn] - DMA_CITER_ELINKNO(CHn)  ;
        LDR.N    R0,??DataTable4_13
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LDR      R2,[R0, R1, LSL #+2]
        LDR.N    R0,??DataTable4_7  ;; 0x40009000
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LSLS     R3,R1,#+5
        ADD      R0,R0,R3
        LDRH     R0,[R0, #+22]
        SUBS     R0,R2,R0
//  261     return temp;
        BX       LR               ;; return
//  262 }
          CFI EndBlock cfiBlock4
//  263 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function DMA_count_reset
          CFI NoCalls
        THUMB
//  264 void DMA_count_reset(DMA_CHn CHn)
//  265 {
//  266     DMA_CITER_ELINKNO(CHn) = count_init[CHn] ;
DMA_count_reset:
        LDR.N    R1,??DataTable4_13
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LDR      R1,[R1, R0, LSL #+2]
        LDR.N    R2,??DataTable4_7  ;; 0x40009000
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSLS     R3,R0,#+5
        ADD      R2,R2,R3
        STRH     R1,[R2, #+22]
//  267 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     0x400ff010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     0x400ff113

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     0x400ff112

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     0x400ff110

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     ?_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     0x40048040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_6:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_7:
        DC32     0x40009000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_8:
        DC32     0x40008000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_9:
        DC32     0x40021000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_10:
        DC32     0x10100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_11:
        DC32     0x4000800c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_12:
        DC32     0x40008024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_13:
        DC32     count_init

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_14:
        DC32     0x4004000c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_15:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_16:
        DC32     GPIOX

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_17:
        DC32     PORTX

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_0:
        DC8 "D:\\\347\254\254\345\215\201\344\272\214\345\261\212\347\224\265\347\243\201\347\273\204\\Car\\Chip\\src\\MK60_dma.c"
        DC8 0, 0, 0

        END
//  268 
//  269 
//  270 
//  271 
//  272 
//  273 
//  274 
//  275 
//  276 
//  277 
//  278 
//  279 
//  280 
//  281 
//  282 
//  283 
//  284 
//  285 
//  286 
//  287 
//  288 
//  289 
// 
//    64 bytes in section .bss
//    52 bytes in section .rodata
// 1 120 bytes in section .text
//    28 bytes in section .textrw
// 
// 1 148 bytes of CODE  memory
//    52 bytes of CONST memory
//    64 bytes of DATA  memory
//
//Errors: none
//Warnings: 7
