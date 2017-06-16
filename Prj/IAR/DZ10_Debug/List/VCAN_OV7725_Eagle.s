///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      16/Jun/2017  18:54:21
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\@@@@@@@\Car\Board\src\VCAN_OV7725_Eagle.c
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EW86BC.tmp
//        (D:\@@@@@@@\Car\Board\src\VCAN_OV7725_Eagle.c -D DEBUG
//        -D ARM_MATH_CM4 -D MK60DZ10 -lA
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
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\VCAN_OV7725_Eagle.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1


        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// D:\@@@@@@@\Car\Board\src\VCAN_OV7725_Eagle.c
//    1 ///*************************************************************
//    2 // * @brief      鹰眼ov7725驱动代码
//    3 // * @author     山外科技
//    4 // * @version    v5.0
//    5 // * @date       2013-09-07
//    6 //************************************************************/
//    7 //
//    8 //#include "common.h"
//    9 //#include "MK60_gpio.h"
//   10 //#include "MK60_port.h"
//   11 //#include "MK60_dma.h"
//   12 //#include "VCAN_camera.h"
//   13 //#include "All_Init.h"
//   14 //
//   15 //#define OV7725_EAGLE_Delay_ms(time)  DELAY_MS(time)
//   16 //
//   17 //uint8   *ov7725_eagle_img_buff;
//   18 //
//   19 //volatile IMG_STATUS_e  ov7725_eagle_img_flag = IMG_FINISH;   //图像状态
//   20 //
//   21 //static uint8 ov7725_eagle_reg_init(void);
//   22 //static void ov7725_eagle_port_init();
//   23 //
//   24 ///************************************************************
//   25 //*	OV7725初始化配置表
//   26 //*************************************************************/
//   27 //reg_s ov7725_eagle_reg[] =
//   28 //{
//   29 //    //寄存器，寄存器值次          //  50    75    112     150
//   30 //    {OV7725_COM4         , 0x41}, //  C1    41    81       C1
//   31 //    {OV7725_CLKRC        , 0x00}, //  02    00    00       00
//   32 //    {OV7725_COM2         , 0x03},
//   33 //    {OV7725_COM3         , 0xD0},
//   34 //    {OV7725_COM7         , 0x40},
//   35 //    {OV7725_HSTART       , 0x3F},
//   36 //    {OV7725_HSIZE        , 0x50},
//   37 //    {OV7725_VSTRT        , 0x03},
//   38 //    {OV7725_VSIZE        , 0x78},
//   39 //    {OV7725_HREF         , 0x00},
//   40 //    {OV7725_SCAL0        , 0x0A},
//   41 //    {OV7725_AWB_Ctrl0    , 0xE0},
//   42 //    {OV7725_DSPAuto      , 0xff},
//   43 //    {OV7725_DSP_Ctrl2    , 0x0C},
//   44 //    {OV7725_DSP_Ctrl3    , 0x00},
//   45 //    {OV7725_DSP_Ctrl4    , 0x00},
//   46 //
//   47 //  #if (CAMERA_W == 80)
//   48 //    {OV7725_HOutSize     , 0x14},
//   49 //   #elif (CAMERA_W == 160)
//   50 //    {OV7725_HOutSize     , 0x28},
//   51 //   #elif (CAMERA_W == 240)
//   52 //    {OV7725_HOutSize     , 0x3c},
//   53 //   #elif (CAMERA_W == 320)
//   54 //    {OV7725_HOutSize     , 0x50},
//   55 //  #endif
//   56 //
//   57 //  #if (CAMERA_H == 60 )
//   58 //    {OV7725_VOutSize     , 0x1E},
//   59 //   #elif (CAMERA_H == 120 )
//   60 //    {OV7725_VOutSize     , 0x3c},
//   61 //   #elif (CAMERA_H == 180 )
//   62 //    {OV7725_VOutSize     , 0x5a},
//   63 //   #elif (CAMERA_H == 240 )
//   64 //    {OV7725_VOutSize     , 0x78},
//   65 //  #endif
//   66 //
//   67 //    {OV7725_EXHCH        , 0x00},
//   68 //    {OV7725_GAM1         , 0x0c},
//   69 //    {OV7725_GAM2         , 0x16},
//   70 //    {OV7725_GAM3         , 0x2a},
//   71 //    {OV7725_GAM4         , 0x4e},
//   72 //    {OV7725_GAM5         , 0x61},
//   73 //    {OV7725_GAM6         , 0x6f},
//   74 //    {OV7725_GAM7         , 0x7b},
//   75 //    {OV7725_GAM8         , 0x86},
//   76 //    {OV7725_GAM9         , 0x8e},
//   77 //    {OV7725_GAM10        , 0x97},
//   78 //    {OV7725_GAM11        , 0xa4},
//   79 //    {OV7725_GAM12        , 0xaf},
//   80 //    {OV7725_GAM13        , 0xc5},
//   81 //    {OV7725_GAM14        , 0xd7},
//   82 //    {OV7725_GAM15        , 0xe8},
//   83 //    {OV7725_SLOP         , 0x20},
//   84 //    {OV7725_LC_RADI      , 0x00},
//   85 //    {OV7725_LC_COEF      , 0x13},
//   86 //    {OV7725_LC_XC        , 0x08},
//   87 //    {OV7725_LC_COEFB     , 0x14},
//   88 //    {OV7725_LC_COEFR     , 0x17},
//   89 //    {OV7725_LC_CTR       , 0x05},
//   90 //    {OV7725_BDBase       , 0x99},
//   91 //    {OV7725_BDMStep      , 0x03},
//   92 //    {OV7725_SDE          , 0x04},
//   93 //    {OV7725_BRIGHT       , 0x00},
//   94 //    {OV7725_CNST         , 0xFF},//阈值
//   95 //    {OV7725_SIGN         , 0x06},
//   96 //    {OV7725_UVADJ0       , 0x11},
//   97 //    {OV7725_UVADJ1       , 0x02},
//   98 //};
//   99 //
//  100 //uint8 ov7725_eagle_cfgnum = ARR_SIZE( ov7725_eagle_reg ) ; /*结构体数组成员数目*/
//  101 //
//  102 ///*************************************************************
//  103 // *  @brief      鹰眼ov7725初始化
//  104 // *  @since      v5.0
//  105 //*************************************************************/
//  106 //uint8 ov7725_eagle_init(uint8 *imgaddr)
//  107 //{
//  108 //    int Timm=1000;
//  109 //    ov7725_eagle_img_buff = imgaddr;
//  110 //    while((ov7725_eagle_reg_init() == 0)&&Timm--);
//  111 //    ov7725_eagle_port_init();
//  112 //    return 0;
//  113 //}
//  114 //
//  115 ///*************************************************************
//  116 // *  @brief      鹰眼ov7725管脚初始化（内部调用）
//  117 // *  @since      v5.0
//  118 //*************************************************************/
//  119 //void ov7725_eagle_port_init()
//  120 //{
//  121 //    //DMA通道0初始化，PTA27触发源(默认上升沿)，源地址为PTB_B0_IN，目的地址为：IMG_BUFF，每次传输1Byte
//  122 //    dma_portx2buff_init(CAMERA_DMA_CH, (void *)&PTC_B1_IN, (void *)ov7725_eagle_img_buff, PTC6, DMA_BYTE1, CAMERA_DMA_NUM, DADDR_KEEPON);
//  123 //	//PTB_B0_IN   PTB_B2_IN
//  124 //    DMA_DIS(CAMERA_DMA_CH);
//  125 //    disable_irq(PORTC_IRQn);                        //关闭PTA的中断
//  126 //    DMA_IRQ_CLEAN(CAMERA_DMA_CH);                   //清除通道传输中断标志位
//  127 //    DMA_IRQ_EN(CAMERA_DMA_CH);
//  128 //
//  129 //    port_init(PTC6, ALT1 | DMA_FALLING | PULLDOWN );         //PCLK
//  130 //
//  131 //    port_init(PTC7, ALT1 | IRQ_RISING  | PULLDOWN | PF);     //场中断，上拉，上降沿触发中断，带滤波
//  132 //}
//  133 //
//  134 ///*************************************************************************
//  135 // *  @brief      鹰眼ov7725场中断服务函数
//  136 // *  @since      v5.0
//  137 //*************************************************************************/
//  138 //__ramfunc void ov7725_eagle_vsync(void)
//  139 //{
//  140 //    //场中断需要判断是场结束还是场开始
//  141 //    if(ov7725_eagle_img_flag == IMG_START)                   //需要开始采集图像
//  142 //    {
//  143 //        ov7725_eagle_img_flag = IMG_GATHER;                  //标记图像采集中
//  144 //        disable_irq(PORTC_IRQn);
//  145 //
//  146 //  #if 1
//  147 //
//  148 //        PORTC_ISFR = 1 <<  PT6;            //清空PCLK标志位
//  149 //
//  150 //        DMA_EN(CAMERA_DMA_CH);             //使能通道CHn 硬件请求
//  151 //        PORTC_ISFR = 1 <<  PT6;            //清空PCLK标志位
//  152 //        DMA_DADDR(CAMERA_DMA_CH) = (uint32)ov7725_eagle_img_buff;    //恢复地址
//  153 //
//  154 //  #else
//  155 //        PORTC_ISFR = 1 <<  PT6;            //清空PCLK标志位
//  156 //        dma_repeat(CAMERA_DMA_CH, (void *)&PTC_B1_IN, (void *)ov7725_eagle_img_buff,CAMERA_DMA_NUM);
//  157 //  #endif
//  158 //	}
//  159 //    else                                        //图像采集错误
//  160 //    {
//  161 //        disable_irq(PORTC_IRQn);                        //关闭PTA的中断
//  162 //        ov7725_eagle_img_flag = IMG_FAIL;                    //标记图像采集失败
//  163 //    }
//  164 //}
//  165 //
//  166 ///*************************************************************************
//  167 // *  @brief      鹰眼ov7725 DMA中断服务函数
//  168 // *  @since      v5.0
//  169 //*************************************************************************/
//  170 //__ramfunc void ov7725_eagle_dma()
//  171 //{
//  172 //    ov7725_eagle_img_flag = IMG_FINISH ;
//  173 //    DMA_IRQ_CLEAN(CAMERA_DMA_CH);           //清除通道传输中断标志位
//  174 //}
//  175 //
//  176 ///*************************************************************************
//  177 // *  @brief      鹰眼ov7725采集图像（采集到的数据存储在 初始化时配置的地址上）
//  178 // *  @since      v5.0
//  179 //*************************************************************************/
//  180 //__ramfunc void ov7725_eagle_get_img()
//  181 //{
//  182 //    ov7725_eagle_img_flag = IMG_START;              //开始采集图像
//  183 //    PORTC_ISFR = ~0;                                //写1清中断标志位(必须的，不然回导致一开中断就马上触发中断)
//  184 //    enable_irq(PORTC_IRQn);                         //允许PTA的中断
//  185 //    while(ov7725_eagle_img_flag != IMG_FINISH)      //等待图像采集完毕
//  186 //    {
//  187 //        if(ov7725_eagle_img_flag == IMG_FAIL)       //假如图像采集错误，则重新开始采集
//  188 //        {
//  189 //            ov7725_eagle_img_flag = IMG_START;      //开始采集图像
//  190 //            PORTC_ISFR = ~0;                        //写1清中断标志位(必须的，不然回导致一开中断就马上触发中断)
//  191 //            enable_irq(PORTC_IRQn);                 //允许PTA的中断
//  192 //        }    
//  193 //    }
//  194 //	//PicMany++;//帧率统计
//  195 //}
//  196 //
//  197 ///*************************************************************************
//  198 // *  @brief      鹰眼ov7725寄存器 初始化
//  199 // *  @return     初始化结果（0表示失败，1表示成功）
//  200 // *  @since      v5.0
//  201 //*************************************************************************/
//  202 //uint8 ov7725_eagle_reg_init(void)
//  203 //{
//  204 //    uint16 i = 0;
//  205 //    uint8 Sensor_IDCode = 0;
//  206 //    //SCCB_GPIO_init();
//  207 //
//  208 //    //OV7725_Delay_ms(50);
//  209 //    if( 0 == SCCB_WriteByte ( OV7725_COM7, 0x80 ) ) /*复位sensor */
//  210 //    {
//  211 //        DEBUG_PRINTF("\n警告:SCCB写数据错误");
//  212 //        return 0 ;
//  213 //    }
//  214 //
//  215 //    OV7725_EAGLE_Delay_ms(50);
//  216 //
//  217 //    if( 0 == SCCB_ReadByte( &Sensor_IDCode, 1, OV7725_VER ) )    /* 读取sensor ID号*/
//  218 //    {
//  219 //        DEBUG_PRINTF("\n警告:读取ID失败");
//  220 //        return 0;
//  221 //    }
//  222 //    DEBUG_PRINTF("\nGet ID success，SENSOR ID is 0x%x", Sensor_IDCode);
//  223 //    DEBUG_PRINTF("\nConfig Register Number is %d ", ov7725_eagle_cfgnum);
//  224 //    if(Sensor_IDCode == OV7725_ID)
//  225 //    {
//  226 //        for( i = 0 ; i < ov7725_eagle_cfgnum ; i++ )
//  227 //        {
//  228 //            if( 0 == SCCB_WriteByte(ov7725_eagle_reg[i].addr, ov7725_eagle_reg[i].val) )
//  229 //            {
//  230 //                DEBUG_PRINTF("\n警告:写寄存器0x%x失败", ov7725_eagle_reg[i].addr);
//  231 //                return 0;
//  232 //            }
//  233 //        }
//  234 //    }
//  235 //    else
//  236 //    {
//  237 //        return 0;
//  238 //    }
//  239 //    DEBUG_PRINTF("\nOV7725 Register Config Success!");
//  240 //    return 1;
//  241 //}
//  242 //
//  243 //
// 
//
// 
//
//
//Errors: none
//Warnings: none
