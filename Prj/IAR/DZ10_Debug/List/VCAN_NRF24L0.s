///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      11/May/2017  11:14:10
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\@@@@@@@\Car\Board\src\VCAN_NRF24L0.c
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EW5B31.tmp
//        (D:\@@@@@@@\Car\Board\src\VCAN_NRF24L0.c -D DEBUG -D
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
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\VCAN_NRF24L0.s
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
// D:\@@@@@@@\Car\Board\src\VCAN_NRF24L0.c
//    1 ///*!
//    2 // *     COPYRIGHT NOTICE
//    3 // *     Copyright (c) 2013,ɽ��Ƽ�
//    4 // *     All rights reserved.
//    5 // *     �������ۣ�ɽ����̳ http://www.vcan123.com
//    6 // *
//    7 // *     ��ע�������⣬�����������ݰ�Ȩ����ɽ��Ƽ����У�δ����������������ҵ��;��
//    8 // *     �޸�����ʱ���뱣��ɽ��Ƽ��İ�Ȩ������
//    9 // *
//   10 // * @file       VCAN_NRF24L0.c
//   11 // * @brief      NRF24L0��������ʵ��
//   12 // * @author     ɽ��Ƽ�
//   13 // * @version    v5.0
//   14 // * @date       2013-07-9
//   15 // */
//   16 //
//   17 //
//   18 //#include "common.h"
//   19 //#include "MK60_port.h"
//   20 //#include "MK60_gpio.h"
//   21 //#include "MK60_spi.h"
//   22 //
//   23 //#include "VCAN_NRF24L0.h"
//   24 //
//   25 ////NRF24L01+״̬
//   26 //typedef enum
//   27 //{
//   28 //    NOT_INIT = 0,
//   29 //    TX_MODE,
//   30 //    RX_MODE,
//   31 //} nrf_mode_e;
//   32 //
//   33 //typedef enum
//   34 //{
//   35 //    QUEUE_EMPTY = 0,        //���п�ģʽ��ֻ�������
//   36 //    QUEUE_NORMAL,           //����ģʽ��������������У������в��ղ���
//   37 //    QUEUE_FULL,             //������ģʽ������������ӣ�����������
//   38 //} nrf_rx_queueflag_e; //�жϽ���ʱ������״̬���λ
//   39 //
//   40 //
//   41 ////gpio����CE��IRQ
//   42 //#define NRF_CE_HIGH()       GPIO_SET(NRF_CE_PTXn,1)
//   43 //#define NRF_CE_LOW()        GPIO_SET(NRF_CE_PTXn,0)           //CE�õ�
//   44 //#define NRF_Read_IRQ()      GPIO_SET(NRF_IRQ_PTXn)
//   45 //
//   46 //
//   47 //// �û����� ���ͺ� ���յ�ַ��Ƶ��
//   48 //
//   49 //uint8 TX_ADDRESS[5] = {0x34, 0x43, 0x10, 0x10, 0x01};   // ����һ����̬���͵�ַ
//   50 //uint8 RX_ADDRESS[5] = {0x34, 0x43, 0x10, 0x10, 0x01};
//   51 //
//   52 //#define CHANAL          40                              //Ƶ��ѡ��
//   53 //
//   54 //
//   55 //// �ڲ����ò���
//   56 //#define TX_ADR_WIDTH    ADR_WIDTH                       //�����ַ���
//   57 //#define TX_PLOAD_WIDTH  DATA_PACKET                     //��������ͨ����Ч���ݿ��0~32Byte
//   58 //
//   59 //#define RX_ADR_WIDTH    ADR_WIDTH                       //���յ�ַ���
//   60 //#define RX_PLOAD_WIDTH  DATA_PACKET                     //��������ͨ����Ч���ݿ��0~32Byte
//   61 //
//   62 ///******************************** NRF24L01+ �Ĵ������� �궨��***************************************/
//   63 //
//   64 //// SPI(nRF24L01) commands , NRF��SPI����궨�壬���NRF����ʹ���ĵ�
//   65 //#define NRF_READ_REG    0x00    // Define read command to register
//   66 //#define NRF_WRITE_REG   0x20    // Define write command to register
//   67 //#define RD_RX_PLOAD     0x61    // Define RX payload register address
//   68 //#define WR_TX_PLOAD     0xA0    // Define TX payload register address
//   69 //#define FLUSH_TX        0xE1    // Define flush TX register command
//   70 //#define FLUSH_RX        0xE2    // Define flush RX register command
//   71 //#define REUSE_TX_PL     0xE3    // Define reuse TX payload register command
//   72 //#define NOP             0xFF    // Define No Operation, might be used to read status register
//   73 //
//   74 //// SPI(nRF24L01) registers(addresses) ��NRF24L01 ��ؼĴ�����ַ�ĺ궨��
//   75 //#define CONFIG      0x00        // 'Config' register address
//   76 //#define EN_AA       0x01        // 'Enable Auto Acknowledgment' register address
//   77 //#define EN_RXADDR   0x02        // 'Enabled RX addresses' register address
//   78 //#define SETUP_AW    0x03        // 'Setup address width' register address
//   79 //#define SETUP_RETR  0x04        // 'Setup Auto. Retrans' register address
//   80 //#define RF_CH       0x05        // 'RF channel' register address
//   81 //#define RF_SETUP    0x06        // 'RF setup' register address
//   82 //#define STATUS      0x07        // 'Status' register address
//   83 //#define OBSERVE_TX  0x08        // 'Observe TX' register address
//   84 //#define CD          0x09        // 'Carrier Detect' register address
//   85 //#define RX_ADDR_P0  0x0A        // 'RX address pipe0' register address
//   86 //#define RX_ADDR_P1  0x0B        // 'RX address pipe1' register address
//   87 //#define RX_ADDR_P2  0x0C        // 'RX address pipe2' register address
//   88 //#define RX_ADDR_P3  0x0D        // 'RX address pipe3' register address
//   89 //#define RX_ADDR_P4  0x0E        // 'RX address pipe4' register address
//   90 //#define RX_ADDR_P5  0x0F        // 'RX address pipe5' register address
//   91 //#define TX_ADDR     0x10        // 'TX address' register address
//   92 //#define RX_PW_P0    0x11        // 'RX payload width, pipe0' register address
//   93 //#define RX_PW_P1    0x12        // 'RX payload width, pipe1' register address
//   94 //#define RX_PW_P2    0x13        // 'RX payload width, pipe2' register address
//   95 //#define RX_PW_P3    0x14        // 'RX payload width, pipe3' register address
//   96 //#define RX_PW_P4    0x15        // 'RX payload width, pipe4' register address
//   97 //#define RX_PW_P5    0x16        // 'RX payload width, pipe5' register address
//   98 //#define FIFO_STATUS 0x17        // 'FIFO Status Register' register address
//   99 //
//  100 //
//  101 ////������Ҫ��״̬���
//  102 //#define TX_FULL     0x01        //TX FIFO �Ĵ�������־�� 1 Ϊ ����0Ϊ ����
//  103 //#define MAX_RT      0x10        //�ﵽ����ط������жϱ�־λ
//  104 //#define TX_DS       0x20        //��������жϱ�־λ
//  105 //#define RX_DR       0x40        //���յ������жϱ�־λ
//  106 //
//  107 //
//  108 //
//  109 ////�ڲ��Ĵ���������������
//  110 //static  uint8   nrf_writereg(uint8 reg, uint8 dat);
//  111 //static  uint8   nrf_readreg (uint8 reg, uint8 *dat);
//  112 //
//  113 //static  uint8   nrf_writebuf(uint8 reg , uint8 *pBuf, uint32 len);
//  114 //static  uint8   nrf_readbuf (uint8 reg, uint8 *pBuf, uint32  len);
//  115 //
//  116 //
//  117 //static  void    nrf_rx_mode(void);           //�������ģʽ
//  118 //static  void    nrf_tx_mode(void);           //���뷢��ģʽ
//  119 //
//  120 ///*!
//  121 // *  @brief      NRF24L01+ ģʽ���
//  122 // */
//  123 //volatile uint8  nrf_mode = NOT_INIT;
//  124 //
//  125 //
//  126 //volatile uint8  nrf_rx_front = 0, nrf_rx_rear = 0;              //����FIFO��ָ��
//  127 //volatile uint8  nrf_rx_flag = QUEUE_EMPTY;
//  128 //
//  129 //uint8 NRF_ISR_RX_FIFO[RX_FIFO_PACKET_NUM][DATA_PACKET];         //�жϽ��յ�FIFO
//  130 //
//  131 //
//  132 //volatile uint8    *nrf_irq_tx_addr      = NULL;
//  133 //volatile uint32    nrf_irq_tx_pnum      = 0;                    //pnum = (len+MAX_ONCE_TX_NUM -1)  / MAX_ONCE_TX_NUM
//  134 //
//  135 //volatile uint8      nrf_irq_tx_flag  = 0;                     //0 ��ʾ�ɹ� ��1 ��ʾ ����ʧ��
//  136 //
//  137 ///*!
//  138 // *  @brief      NRF24L01+��ʼ����Ĭ�Ͻ������ģʽ
//  139 // *  @return     ��ʼ���ɹ���ǣ�0Ϊ��ʼ��ʧ�ܣ�1Ϊ��ʼ���ɹ�
//  140 // *  @since      v5.0
//  141 // *  Sample usage:
//  142 //                        while(!nrf_init())                                     //��ʼ��NRF24L01+ ,�ȴ���ʼ���ɹ�Ϊֹ
//  143 //                        {
//  144 //                            printf("\n  NRF��MCU����ʧ�ܣ������¼����ߡ�\n");
//  145 //                        }
//  146 //
//  147 //                        printf("\n      NRF��MCU���ӳɹ���\n");
//  148 // */
//  149 //uint8 nrf_init(void)
//  150 //{
//  151 //    //����NRF�ܽŸ���
//  152 //    spi_init(NRF_SPI, NRF_CS, MASTER,12500*1000);                     //��ʼ��SPI,����ģʽ
//  153 //
//  154 //    gpio_init(NRF_CE_PTXn, GPO, LOW);                               //��ʼ��CE��Ĭ�Ͻ������ģʽ
//  155 //
//  156 //    gpio_init(NRF_IRQ_PTXn, GPI, LOW);                              //��ʼ��IRQ�ܽ�Ϊ����
//  157 //    port_init_NoALT(NRF_IRQ_PTXn, IRQ_FALLING | PULLUP);            //��ʼ��IRQ�ܽ�Ϊ�½��� �����ж�
//  158 //
//  159 //    //����NRF�Ĵ���
//  160 //    NRF_CE_LOW();
//  161 //
//  162 //    nrf_writereg(NRF_WRITE_REG + SETUP_AW, ADR_WIDTH - 2);          //���õ�ַ����Ϊ TX_ADR_WIDTH
//  163 //
//  164 //    nrf_writereg(NRF_WRITE_REG + RF_CH, CHANAL);                    //����RFͨ��ΪCHANAL
//  165 //    nrf_writereg(NRF_WRITE_REG + RF_SETUP, 0x0f);                   //����TX�������,0db����,2Mbps,���������濪��
//  166 //
//  167 //    nrf_writereg(NRF_WRITE_REG + EN_AA, 0x01);                      //ʹ��ͨ��0���Զ�Ӧ��
//  168 //
//  169 //    nrf_writereg(NRF_WRITE_REG + EN_RXADDR, 0x01);                  //ʹ��ͨ��0�Ľ��յ�ַ
//  170 //
//  171 //    //RXģʽ����
//  172 //    nrf_writebuf(NRF_WRITE_REG + RX_ADDR_P0, RX_ADDRESS, RX_ADR_WIDTH); //дRX�ڵ��ַ
//  173 //
//  174 //    nrf_writereg(NRF_WRITE_REG + RX_PW_P0, RX_PLOAD_WIDTH);         //ѡ��ͨ��0����Ч���ݿ��
//  175 //
//  176 //    nrf_writereg(FLUSH_RX, NOP);                                    //���RX FIFO�Ĵ���
//  177 //
//  178 //    //TXģʽ����
//  179 //    nrf_writebuf(NRF_WRITE_REG + TX_ADDR, TX_ADDRESS, TX_ADR_WIDTH); //дTX�ڵ��ַ
//  180 //
//  181 //    nrf_writereg(NRF_WRITE_REG + SETUP_RETR, 0x0F);                 //�����Զ��ط����ʱ��:250us + 86us;����Զ��ط�����:15��
//  182 //
//  183 //    nrf_writereg(FLUSH_TX, NOP);                                    //���TX FIFO�Ĵ���
//  184 //
//  185 //    nrf_rx_mode();                                                  //Ĭ�Ͻ������ģʽ
//  186 //
//  187 //    NRF_CE_HIGH();
//  188 //
//  189 //    return nrf_link_check();
//  190 //
//  191 //}
//  192 //
//  193 ///*!
//  194 // *  @brief      NRF24L01+д�Ĵ���
//  195 // *  @param      reg         �Ĵ���
//  196 // *  @param      dat         ��Ҫд�������
//  197 // *  @return     NRF24L01+ ״̬
//  198 // *  @since      v5.0
//  199 // *  Sample usage:    nrf_writereg(NRF_WRITE_REG + RF_CH, CHANAL);   //����RFͨ��ΪCHANAL
//  200 // */
//  201 //uint8 nrf_writereg(uint8 reg, uint8 dat)
//  202 //{
//  203 //    uint8 buff[2];
//  204 //
//  205 //    buff[0] = reg;          //�ȷ��ͼĴ���
//  206 //    buff[1] = dat;          //�ٷ�������
//  207 //
//  208 //    spi_mosi(NRF_SPI, NRF_CS, buff, buff, 2); //����buff�����ݣ����ɼ��� buff��
//  209 //
//  210 //    /*����״̬�Ĵ�����ֵ*/
//  211 //    return buff[0];
//  212 //}
//  213 //
//  214 ///*!
//  215 // *  @brief      NRF24L01+���Ĵ���
//  216 // *  @param      reg         �Ĵ���
//  217 // *  @param      dat         ��Ҫ��ȡ�����ݵĴ�ŵ�ַ
//  218 // *  @return     NRF24L01+ ״̬
//  219 // *  @since      v5.0
//  220 // *  Sample usage:
//  221 //                    uint8 data;
//  222 //                    nrf_readreg(STATUS,&data);
//  223 // */
//  224 //uint8 nrf_readreg(uint8 reg, uint8 *dat)
//  225 //{
//  226 //
//  227 //    uint8 buff[2];
//  228 //
//  229 //    buff[0] = reg;          //�ȷ��ͼĴ���
//  230 //
//  231 //    spi_mosi(NRF_SPI, NRF_CS, buff, buff, 2); //����buff���ݣ������浽buff��
//  232 //
//  233 //    *dat = buff[1];                         //��ȡ�ڶ�������
//  234 //
//  235 //    /*����״̬�Ĵ�����ֵ*/
//  236 //    return buff[0];
//  237 //}
//  238 //
//  239 ///*!
//  240 // *  @brief      NRF24L01+д�Ĵ���һ������
//  241 // *  @param      reg         �Ĵ���
//  242 // *  @param      pBuf        ��Ҫд������ݻ�����
//  243 // *  @param      len         ��Ҫд�����ݳ���
//  244 // *  @return     NRF24L01+ ״̬
//  245 // *  @since      v5.0
//  246 // *  Sample usage:    nrf_writebuf(NRF_WRITE_REG+TX_ADDR,TX_ADDRESS,TX_ADR_WIDTH);    //дTX�ڵ��ַ
//  247 // */
//  248 //uint8 nrf_writebuf(uint8 reg , uint8 *pBuf, uint32 len)
//  249 //{
//  250 //    spi_mosi_cmd(NRF_SPI, NRF_CS, &reg , &reg, pBuf, NULL, 1 , len); //���� reg ��pBuf ���ݣ�������
//  251 //    return reg;    //����NRF24L01��״̬
//  252 //}
//  253 //
//  254 //
//  255 ///*!
//  256 // *  @brief      NRF24L01+���Ĵ���һ������
//  257 // *  @param      reg         �Ĵ���
//  258 // *  @param      dat         ��Ҫ��ȡ�����ݵĴ�ŵ�ַ
//  259 // *  @param      len         ��Ҫ��ȡ�����ݳ���
//  260 // *  @return     NRF24L01+ ״̬
//  261 // *  @since      v5.0
//  262 // *  Sample usage:
//  263 //                    uint8 data;
//  264 //                    nrf_readreg(STATUS,&data);
//  265 // */
//  266 //uint8 nrf_readbuf(uint8 reg, uint8 *pBuf, uint32 len)
//  267 //{
//  268 //    spi_mosi_cmd(NRF_SPI, NRF_CS, &reg , &reg, NULL, pBuf, 1 , len); //����reg�����յ�buff
//  269 //
//  270 //    return reg;    //����NRF24L01��״̬
//  271 //}
//  272 //
//  273 ///*!
//  274 // *  @brief      ���NRF24L01+��MCU�Ƿ���������
//  275 // *  @return     NRF24L01+ ��ͨ��״̬��0��ʾͨ�Ų�������1��ʾ����
//  276 // *  @since      v5.0
//  277 // *  Sample usage:
//  278 //                    while(nrf_link_check() == 0)
//  279 //                    {
//  280 //                        printf("\nͨ��ʧ��");
//  281 //                    }
//  282 // */
//  283 //uint8 nrf_link_check(void)
//  284 //{
//  285 //#define NRF_CHECH_DATA  0xC2        //��ֵΪУ������ʱʹ�ã����޸�Ϊ����ֵ
//  286 //
//  287 //    uint8 reg;
//  288 //
//  289 //    uint8 buff[5] = {NRF_CHECH_DATA, NRF_CHECH_DATA, NRF_CHECH_DATA, NRF_CHECH_DATA, NRF_CHECH_DATA};
//  290 //    uint8 i;
//  291 //
//  292 //
//  293 //    reg = NRF_WRITE_REG + TX_ADDR;
//  294 //    spi_mosi_cmd(NRF_SPI, NRF_CS, &reg, NULL , buff, NULL, 1 , 5); //д��У������
//  295 //
//  296 //    reg = TX_ADDR;
//  297 //    spi_mosi_cmd(NRF_SPI, NRF_CS, &reg, NULL , NULL, buff, 1 , 5); //��ȡУ������
//  298 //
//  299 //
//  300 //    /*�Ƚ�*/
//  301 //    for(i = 0; i < 5; i++)
//  302 //    {
//  303 //        if(buff[i] != NRF_CHECH_DATA)
//  304 //        {
//  305 //            return 0 ;        //MCU��NRF����������
//  306 //        }
//  307 //    }
//  308 //    return 1 ;             //MCU��NRF�ɹ�����
//  309 //}
//  310 //
//  311 ///*!
//  312 //*  @brief      NRF24L01+�������ģʽ
//  313 //*  @since      v5.0
//  314 //*/
//  315 //void nrf_rx_mode(void)
//  316 //{
//  317 //    NRF_CE_LOW();
//  318 //
//  319 //    nrf_writereg(NRF_WRITE_REG + EN_AA, 0x01);          //ʹ��ͨ��0���Զ�Ӧ��
//  320 //
//  321 //    nrf_writereg(NRF_WRITE_REG + EN_RXADDR, 0x01);      //ʹ��ͨ��0�Ľ��յ�ַ
//  322 //
//  323 //    nrf_writebuf(NRF_WRITE_REG + RX_ADDR_P0, RX_ADDRESS, RX_ADR_WIDTH); //дRX�ڵ��ַ
//  324 //
//  325 //
//  326 //    nrf_writereg(NRF_WRITE_REG + CONFIG, 0x0B | (IS_CRC16 << 2));       //���û�������ģʽ�Ĳ���;PWR_UP,EN_CRC,16BIT_CRC,����ģʽ
//  327 //
//  328 //    /* ����жϱ�־*/
//  329 //    nrf_writereg(NRF_WRITE_REG + STATUS, 0xff);
//  330 //
//  331 //    nrf_writereg(FLUSH_RX, NOP);                    //���RX FIFO�Ĵ���
//  332 //
//  333 //    /*CE���ߣ��������ģʽ*/
//  334 //    NRF_CE_HIGH();
//  335 //
//  336 //    nrf_mode = RX_MODE;
//  337 //}
//  338 //
//  339 ///*!
//  340 //*  @brief      NRF24L01+���뷢��ģʽ
//  341 //*  @since      v5.0
//  342 //*/
//  343 //void nrf_tx_mode(void)
//  344 //{
//  345 //    volatile uint32 i;
//  346 //
//  347 //    NRF_CE_LOW();
//  348 //    //DELAY_MS(1);
//  349 //
//  350 //    nrf_writebuf(NRF_WRITE_REG + TX_ADDR, TX_ADDRESS, TX_ADR_WIDTH); //дTX�ڵ��ַ
//  351 //
//  352 //    nrf_writebuf(NRF_WRITE_REG + RX_ADDR_P0, RX_ADDRESS, RX_ADR_WIDTH); //����RX�ڵ��ַ ,��ҪΪ��ʹ��ACK
//  353 //
//  354 //    nrf_writereg(NRF_WRITE_REG + CONFIG, 0x0A | (IS_CRC16 << 2)); //���û�������ģʽ�Ĳ���;PWR_UP,EN_CRC,16BIT_CRC,����ģʽ,���������ж�
//  355 //
//  356 //
//  357 //    /*CE���ߣ����뷢��ģʽ*/
//  358 //    NRF_CE_HIGH();
//  359 //
//  360 //    nrf_mode = TX_MODE;
//  361 //
//  362 //    i = 0x0fff;
//  363 //    while(i--);         //CEҪ����һ��ʱ��Ž��뷢��ģʽ
//  364 //
//  365 //    //DELAY_MS(1);
//  366 //
//  367 //
//  368 //}
//  369 //
//  370 ///*!
//  371 // *  @brief      NRF24L01+���ݽ���
//  372 // *  @param      rxbuf       ���ջ�������ַ
//  373 // *  @param      len         �����ճ���
//  374 // *  @return     ʵ�ʽ��յ����ݳ���
//  375 // *  Sample usage:
//  376 //            relen = nrf_rx(buff,DATA_PACKET);               //�ȴ�����һ�����ݰ������ݴ洢��buff��
//  377 //            if(relen != 0)
//  378 //            {
//  379 //                printf("\n���յ�����:%s",buff);             //��ӡ���յ������� ��������յ������ַ����ſ�����printfŶ����
//  380 //            }
//  381 //
//  382 // *  @since      v5.0
//  383 // */
//  384 //uint32  nrf_rx(uint8 *rxbuf, uint32 len)
//  385 //{
//  386 //    uint32 tmplen = 0;
//  387 //    uint8 tmp;
//  388 //
//  389 //    while( (nrf_rx_flag != QUEUE_EMPTY) && (len != 0) )
//  390 //    {
//  391 //        if(len < DATA_PACKET)
//  392 //        {
//  393 //            vcan_cpy(rxbuf, (uint8 *)&(NRF_ISR_RX_FIFO[nrf_rx_front]), len);
//  394 //
//  395 //            NRF_CE_LOW();           //�������״̬
//  396 //
//  397 //            nrf_rx_front++;                //���ڷǿգ����Կ���ֱ�ӳ�����
//  398 //
//  399 //            if(nrf_rx_front >= RX_FIFO_PACKET_NUM)
//  400 //            {
//  401 //                nrf_rx_front = 0;          //��ͷ��ʼ
//  402 //            }
//  403 //            tmp =  nrf_rx_rear;
//  404 //            if(nrf_rx_front == tmp)       //׷��ƨ���ˣ����ն��п�
//  405 //            {
//  406 //                nrf_rx_flag = QUEUE_EMPTY;
//  407 //            }
//  408 //            NRF_CE_HIGH();          //�������ģʽ
//  409 //
//  410 //            tmplen += len;
//  411 //            return tmplen;
//  412 //        }
//  413 //
//  414 //        vcan_cpy(rxbuf, (uint8 *)&(NRF_ISR_RX_FIFO[nrf_rx_front]), DATA_PACKET);
//  415 //        rxbuf   += DATA_PACKET;
//  416 //        len     -= DATA_PACKET;
//  417 //        tmplen  += DATA_PACKET;
//  418 //
//  419 //        NRF_CE_LOW();           //�������״̬
//  420 //
//  421 //        nrf_rx_front++;                //���ڷǿգ����Կ���ֱ�ӳ�����
//  422 //
//  423 //        if(nrf_rx_front >= RX_FIFO_PACKET_NUM)
//  424 //        {
//  425 //            nrf_rx_front = 0;          //��ͷ��ʼ
//  426 //        }
//  427 //        tmp  = nrf_rx_rear;
//  428 //        if(nrf_rx_front == tmp)       //׷��ƨ���ˣ����ն��п�
//  429 //        {
//  430 //            nrf_rx_flag = QUEUE_EMPTY;
//  431 //        }
//  432 //        else
//  433 //        {
//  434 //            nrf_rx_flag = QUEUE_NORMAL;
//  435 //        }
//  436 //        NRF_CE_HIGH();          //�������ģʽ
//  437 //    }
//  438 //
//  439 //    return tmplen;
//  440 //}
//  441 //
//  442 ///*!
//  443 // *  @brief      NRF24L01+���ݷ���
//  444 // *  @param      rxbuf       ���ͻ�������ַ
//  445 // *  @param      len         ���ͳ���
//  446 // *  @return     ���ͽ����0��ʾ����ʧ�ܣ�1Ϊ�����С����շ��ͽ����Ҫ����nrf_tx_state()�жϡ�
//  447 // *  Sample usage:
//  448 //                    if(nrf_tx(buff,DATA_PACKET) == 1 );         //����һ�����ݰ���buff����Ϊ32�ֽڣ�
//  449 //                    {
//  450 //                        //�ȴ����͹����У��˴����Լ��봦������
//  451 //
//  452 //                        while(nrf_tx_state() == NRF_TXING);         //�ȴ��������
//  453 //
//  454 //                        if( NRF_TX_OK == nrf_tx_state () )
//  455 //                        {
//  456 //                            printf("\n���ͳɹ�:%d",i);
//  457 //                            i++;                                    //���ͳɹ����1������֤�Ƿ�©��
//  458 //                        }
//  459 //                        else
//  460 //                        {
//  461 //                            printf("\n����ʧ��:%d",i);
//  462 //                        }
//  463 //                    }
//  464 //                    else
//  465 //                    {
//  466 //                        printf("\n����ʧ��:%d",i);
//  467 //                    }
//  468 //
//  469 // *  @since      v5.0
//  470 // */
//  471 //uint8    nrf_tx(uint8 *txbuf, uint32 len)
//  472 //{
//  473 //    nrf_irq_tx_flag = 0;        //��λ��־λ
//  474 //
//  475 //    if((txbuf == 0 ) || (len == 0))
//  476 //    {
//  477 //        return 0;
//  478 //    }
//  479 //
//  480 //    if(nrf_irq_tx_addr == 0 )
//  481 //    {
//  482 //        //
//  483 //        nrf_irq_tx_pnum = (len - 1) / DATA_PACKET;        // �� 1 ��� �� ����Ŀ
//  484 //        nrf_irq_tx_addr = txbuf;
//  485 //
//  486 //        if( nrf_mode != TX_MODE)
//  487 //        {
//  488 //            nrf_tx_mode();
//  489 //        }
//  490 //
//  491 //        //��Ҫ �ȷ���һ�����ݰ������ �жϷ���
//  492 //
//  493 //        /*ceΪ�ͣ��������ģʽ1*/
//  494 //        NRF_CE_LOW();
//  495 //
//  496 //        /*д���ݵ�TX BUF ��� 32���ֽ�*/
//  497 //        nrf_writebuf(WR_TX_PLOAD, txbuf, DATA_PACKET);
//  498 //
//  499 //        /*CEΪ�ߣ�txbuf�ǿգ��������ݰ� */
//  500 //        NRF_CE_HIGH();
//  501 //
//  502 //        return 1;
//  503 //    }
//  504 //    else
//  505 //    {
//  506 //        return 0;
//  507 //    }
//  508 //}
//  509 //
//  510 //
//  511 ///*!
//  512 // *  @brief      ���NRF24L01+����״̬
//  513 // *  @return     ���ͽ�����ο� nrf_tx_state_e ö�ٵĶ��塣
//  514 // *  Sample usage:
//  515 //                    if(nrf_tx(buff,DATA_PACKET) == 1 );         //����һ�����ݰ���buff����Ϊ32�ֽڣ�
//  516 //                    {
//  517 //                        //�ȴ����͹����У��˴����Լ��봦������
//  518 //
//  519 //                        while(nrf_tx_state() == NRF_TXING);         //�ȴ��������
//  520 //
//  521 //                        if( NRF_TX_OK == nrf_tx_state () )
//  522 //                        {
//  523 //                            printf("\n���ͳɹ�:%d",i);
//  524 //                            i++;                                    //���ͳɹ����1������֤�Ƿ�©��
//  525 //                        }
//  526 //                        else
//  527 //                        {
//  528 //                            printf("\n����ʧ��:%d",i);
//  529 //                        }
//  530 //                    }
//  531 //                    else
//  532 //                    {
//  533 //                        printf("\n����ʧ��:%d",i);
//  534 //                    }
//  535 //
//  536 // *  @since      v5.0
//  537 // */
//  538 //nrf_tx_state_e nrf_tx_state ()
//  539 //{
//  540 //    /*
//  541 //    if(nrf_mode != TX_MODE)
//  542 //    {
//  543 //        return NRF_NOT_TX;
//  544 //    }
//  545 //    */
//  546 //
//  547 //    if((nrf_irq_tx_addr == 0) && (nrf_irq_tx_pnum == 0))
//  548 //    {
//  549 //        //�������
//  550 //        if(nrf_irq_tx_flag)
//  551 //        {
//  552 //            return NRF_TX_ERROR;
//  553 //        }
//  554 //        else
//  555 //        {
//  556 //            return NRF_TX_OK;
//  557 //        }
//  558 //    }
//  559 //    else
//  560 //    {
//  561 //        return NRF_TXING;
//  562 //    }
//  563 //}
//  564 //
//  565 //void nrf_handler(void)
//  566 //{
//  567 //    uint8 state;
//  568 //    uint8 tmp;
//  569 //    /*��ȡstatus�Ĵ�����ֵ  */
//  570 //    nrf_readreg(STATUS, &state);
//  571 //
//  572 //    /* ����жϱ�־*/
//  573 //    nrf_writereg(NRF_WRITE_REG + STATUS, state);
//  574 //
//  575 //    if(state & RX_DR) //���յ�����
//  576 //    {
//  577 //        NRF_CE_LOW();
//  578 //
//  579 //        if(nrf_rx_flag != QUEUE_FULL)
//  580 //        {
//  581 //            //��û�������������
//  582 //            //printf("+");
//  583 //            nrf_readbuf(RD_RX_PLOAD, (uint8 *)&(NRF_ISR_RX_FIFO[nrf_rx_rear]), RX_PLOAD_WIDTH); //��ȡ����
//  584 //
//  585 //            nrf_rx_rear++;
//  586 //
//  587 //            if(nrf_rx_rear >= RX_FIFO_PACKET_NUM)
//  588 //            {
//  589 //                nrf_rx_rear = 0;                            //��ͷ��ʼ
//  590 //            }
//  591 //            tmp = nrf_rx_front;
//  592 //            if(nrf_rx_rear == tmp)                 //׷��ƨ���ˣ�����
//  593 //            {
//  594 //                nrf_rx_flag = QUEUE_FULL;
//  595 //            }
//  596 //            else
//  597 //            {
//  598 //                nrf_rx_flag = QUEUE_NORMAL;
//  599 //            }
//  600 //        }
//  601 //        else
//  602 //        {
//  603 //            nrf_writereg(FLUSH_RX, NOP);                    //���RX FIFO�Ĵ���
//  604 //        }
//  605 //        NRF_CE_HIGH();                                      //�������ģʽ
//  606 //    }
//  607 //
//  608 //    if(state & TX_DS) //����������
//  609 //    {
//  610 //        if(nrf_irq_tx_pnum == 0)
//  611 //        {
//  612 //            nrf_irq_tx_addr = 0;
//  613 //
//  614 //            // ע��: nrf_irq_tx_pnum == 0 ��ʾ ���� �Ѿ�ȫ�����͵�FIFO �� nrf_irq_tx_addr == 0 ���� ȫ����������
//  615 //
//  616 //            //������ɺ� Ĭ�� ���� ����ģʽ
//  617 //#if 1
//  618 //            if( nrf_mode != RX_MODE)
//  619 //            {
//  620 //                nrf_rx_mode();
//  621 //            }
//  622 //#endif
//  623 //
//  624 //            //���ͳ��� Ϊ 0���������������
//  625 //            //nrf_writereg(FLUSH_TX, NOP);                        //���TX FIFO�Ĵ���
//  626 //        }
//  627 //        else
//  628 //        {
//  629 //            if( nrf_mode != TX_MODE)
//  630 //            {
//  631 //                nrf_tx_mode();
//  632 //            }
//  633 //
//  634 //            //��û������ɣ��ͼ�������
//  635 //            nrf_irq_tx_addr += DATA_PACKET;    //ָ����һ����ַ
//  636 //            nrf_irq_tx_pnum --;                 //����Ŀ����
//  637 //
//  638 //            /*ceΪ�ͣ��������ģʽ1*/
//  639 //            NRF_CE_LOW();
//  640 //
//  641 //            /*д���ݵ�TX BUF ��� 32���ֽ�*/
//  642 //            nrf_writebuf(WR_TX_PLOAD, (uint8 *)nrf_irq_tx_addr, DATA_PACKET);
//  643 //
//  644 //            /*CEΪ�ߣ�txbuf�ǿգ��������ݰ� */
//  645 //            NRF_CE_HIGH();
//  646 //        }
//  647 //    }
//  648 //
//  649 //    if(state & MAX_RT)      //���ͳ�ʱ
//  650 //    {
//  651 //        nrf_irq_tx_flag = 1;                            //��Ƿ���ʧ��
//  652 //        nrf_writereg(FLUSH_TX, NOP);                    //���TX FIFO�Ĵ���
//  653 //
//  654 //
//  655 //        //�п����� �Է�Ҳ���� ����״̬
//  656 //
//  657 //        //�������η���
//  658 //        nrf_irq_tx_addr = 0;
//  659 //        nrf_irq_tx_pnum = 0;
//  660 //
//  661 //        nrf_rx_mode();                                  //���� ����״̬
//  662 //
//  663 //
//  664 //        //printf("\nMAX_RT");
//  665 //    }
//  666 //
//  667 //    if(state & TX_FULL) //TX FIFO ��
//  668 //    {
//  669 //        //printf("\nTX_FULL");
//  670 //
//  671 //    }
//  672 //}
//  673 //
//  674 //
//  675 ////��� ����FIFO ������  (0 û���չ� ��1 Ϊ������ȷ)
//  676 //uint8  nrf_rx_fifo_check(uint32 offset,uint16 * val)
//  677 //{
//  678 //    uint8 rx_num = (offset + 1 + DATA_PACKET - 1 ) / DATA_PACKET;   //��1 ����Ϊ����2���ֽڣ����һ���Լ����ڵİ�����
//  679 //                                                                    //+ DATA_PACKET - 1 ����������
//  680 //    uint8 tmp;
//  681 //    if(nrf_rx_flag == QUEUE_EMPTY)
//  682 //    {
//  683 //        return 0;
//  684 //    }
//  685 //
//  686 //    if(rx_num > RX_FIFO_PACKET_NUM)                                 //ƫ��̫�󣬳��� FIFO ����
//  687 //    {
//  688 //        return 0;
//  689 //    }
//  690 //
//  691 //    rx_num = nrf_rx_front + rx_num - 1;                             //Ŀ���ѯ�� ����λ��
//  692 //    tmp =  nrf_rx_rear;
//  693 //    if(nrf_rx_front <  tmp)                                 //���������� һȦ֮��
//  694 //    {
//  695 //        if(rx_num >= nrf_rx_rear )                                  //û�����㹻������
//  696 //        {
//  697 //            return 0;
//  698 //        }
//  699 //
//  700 //        //��ȡ����
//  701 //
//  702 //    }
//  703 //    else                                                            //Խ��һȦ
//  704 //    {
//  705 //        if(rx_num >= RX_FIFO_PACKET_NUM)                            //����һȦ
//  706 //        {
//  707 //            rx_num -= RX_FIFO_PACKET_NUM;
//  708 //
//  709 //            if( rx_num >= nrf_rx_rear )                             //��û���չ�
//  710 //            {
//  711 //                return 0;
//  712 //            }
//  713 //        }
//  714 //        //��ȡ����
//  715 //    }
//  716 //
//  717 //    //��ȡ����
//  718 //    *val = *(uint16 *)((char *)&NRF_ISR_RX_FIFO + ( rx_num*DATA_PACKET + (offset % DATA_PACKET - 2) )) ;
//  719 //    return 1;
//  720 //
//  721 //}
//  722 //
//  723 //
// 
//
// 
//
//
//Errors: none
//Warnings: none
