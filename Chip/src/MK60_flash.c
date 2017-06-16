/*!
 *     COPYRIGHT NOTICE
 *     Copyright (c) 2013,山外科技
 *     All rights reserved.
 *     技术讨论：山外论坛 http://www.vcan123.com
 *
 *     除注明出处外，以下所有内容版权均属山外科技所有，未经允许，不得用于商业用途，
 *     修改内容时必须保留山外科技的版权声明。
 *
 * @file       MK60_flash.c
 * @brief      flash函数库
 * @author     山外科技
 * @version    v5.2
 * @date       2014-10-09
 */


//包含头文件

#include "MK60_flash.h"

//宏定义 FCCOB Number
#if defined(MK60DZ10)
#define     FCMD        FTFL_FCCOB0         //FTFL 命令

#define     FADDR2      FTFL_FCCOB1         //Flash address [23:16]
#define     FADDR1      FTFL_FCCOB2         //Flash address [15:8]
#define     FADDR0      FTFL_FCCOB3         //Flash address [7:0]

#define     FDATA0      FTFL_FCCOB4         //Data Byte 0       //注意一点，4字节排序，FDATA3是最低位，FDATA0是最高位
#define     FDATA1      FTFL_FCCOB5         //Data Byte 1
#define     FDATA2      FTFL_FCCOB6         //Data Byte 2
#define     FDATA3      FTFL_FCCOB7         //Data Byte 3
#define     FDATA4      FTFL_FCCOB8         //Data Byte 4
#define     FDATA5      FTFL_FCCOB9         //Data Byte 5
#define     FDATA6      FTFL_FCCOBA         //Data Byte 6
#define     FDATA7      FTFL_FCCOBB         //Data Byte 7

//FCMD 命令
#define     RD1BLK    0x00   // 读整块Flash
#define     RD1SEC    0x01   // 读整个扇区
#define     PGMCHK    0x02   // 写入检查
#define     RDRSRC    0x03   // 读目标数据(4字节)
#define     PGM4      0x06   // 写入长字(4字节)
#define     ERSBLK    0x08   // 擦除整块Flash
#define     ERSSCR    0x09   // 擦除Flash扇区
#define     PGMSEC    0x0B   // 写入扇区
#define     RD1ALL    0x40   // 读所有的块
#define     RDONCE    0x41   // 只读一次
#define     PGMONCE   0x43   // 只写一次
#define     ERSALL    0x44   // 擦除所有块
#define     VFYKEY    0x45   // 验证后门访问钥匙
#define     PGMPART   0x80   // 写入分区
#define     SETRAM    0x81   // 设定FlexRAM功能

#elif defined(MK60F15)
#define     FCMD        FTFE_FCCOB0         //FTFL 命令

#define     FADDR2      FTFE_FCCOB1         //Flash address [23:16]
#define     FADDR1      FTFE_FCCOB2         //Flash address [15:8]
#define     FADDR0      FTFE_FCCOB3         //Flash address [7:0]
//Must be 64-bit aligned (Flash address [2:0] = 000)  8字节对齐

#define     FDATA0      FTFE_FCCOB4         //Data Byte 0       //注意一点，4字节排序，FDATA3是最低位，FDATA0是最高位
#define     FDATA1      FTFE_FCCOB5         //Data Byte 1
#define     FDATA2      FTFE_FCCOB6         //Data Byte 2
#define     FDATA3      FTFE_FCCOB7         //Data Byte 3
#define     FDATA4      FTFE_FCCOB8         //Data Byte 4
#define     FDATA5      FTFE_FCCOB9         //Data Byte 5
#define     FDATA6      FTFE_FCCOBA         //Data Byte 6
#define     FDATA7      FTFE_FCCOBB         //Data Byte 7

//FCMD 命令
#define     RD1BLK    0x00   // 读整块Flash
#define     RD1SEC    0x01   // 读整个扇区
#define     PGMCHK    0x02   // 写入检查
#define     RDRSRC    0x03   // 读目标数据(8字节)
#define     PGM8      0x07   // 写入长字(8字节)
#define     ERSBLK    0x08   // 擦除整块Flash
#define     ERSSCR    0x09   // 擦除Flash扇区
#define     PGMSEC    0x0B   // 写入扇区
#define     RD1ALL    0x40   // 读所有的块
#define     RDONCE    0x41   // 只读一次
#define     PGMONCE   0x43   // 只写一次
#define     ERSALL    0x44   // 擦除所有块
#define     VFYKEY    0x45   // 验证后门访问钥匙
#define     PGMPART   0x80   // 写入分区
#define     SETRAM    0x81   // 设定FlexRAM功能

#endif



/*!
 *  @brief      Flash命令
 *  @return     命令执行结果(1成功，0失败)
 *  @since      v5.0
 */
__RAMFUNC uint8 flash_cmd()
{
    //写 FTFL_FSTAT 启动 Flash命令
#if defined(MK60DZ10)
    FTFL_FSTAT =    (0
                     |  FTFL_FSTAT_CCIF_MASK        // 指令完成标志(写1清0)
                     |  FTFL_FSTAT_RDCOLERR_MASK    // 读冲突错误标志(写1清0)
                     |  FTFL_FSTAT_ACCERR_MASK      // 访问错误标志位(写1清0)
                     |  FTFL_FSTAT_FPVIOL_MASK      // 非法访问保护标志位(写1清0)
                    );

    while(!(FTFL_FSTAT & FTFL_FSTAT_CCIF_MASK));    // 等待命令完成

    // 检查错误标志
    if( FTFL_FSTAT & (FTFL_FSTAT_ACCERR_MASK | FTFL_FSTAT_RDCOLERR_MASK | FTFL_FSTAT_FPVIOL_MASK | FTFL_FSTAT_MGSTAT0_MASK))
    {
        return 0 ;                                  //执行命令出错
    }
    else
    {
        return 1;                                   //执行命令成功
    }

#elif defined(MK60F15)
    FTFE_FSTAT =    (0
                     |  FTFE_FSTAT_CCIF_MASK        // 指令完成标志(写1清0)
                     |  FTFE_FSTAT_RDCOLERR_MASK    // 读冲突错误标志(写1清0)
                     |  FTFE_FSTAT_ACCERR_MASK      // 访问错误标志位(写1清0)
                     |  FTFE_FSTAT_FPVIOL_MASK      // 非法访问保护标志位(写1清0)
                    );

    while(!(FTFE_FSTAT & FTFE_FSTAT_CCIF_MASK));    // 等待命令完成

    // 检查错误标志
    if( FTFE_FSTAT & (FTFE_FSTAT_ACCERR_MASK | FTFE_FSTAT_RDCOLERR_MASK | FTFE_FSTAT_FPVIOL_MASK | FTFE_FSTAT_MGSTAT0_MASK))
    {
        return 0 ;                                  //执行命令出错
    }
    else
    {
        return 1;                                   //执行命令成功
    }

#endif
}


/*!
 *  @brief      初始化flash
 *  @since      v5.0
 */
__RAMFUNC void flash_init(void)
{
#if defined( MK60DZ10)
    // 清除Flash预读取缓冲区
    FMC_PFB0CR |= FMC_PFB0CR_S_B_INV_MASK;      //
    FMC_PFB1CR |= FMC_PFB0CR_S_B_INV_MASK;

    while(!(FTFL_FSTAT & FTFL_FSTAT_CCIF_MASK));    // 等待命令完成

    FTFL_FSTAT =    (0
                     |  FTFL_FSTAT_CCIF_MASK        // 指令完成标志(写1清0)
                     |  FTFL_FSTAT_RDCOLERR_MASK    // 读冲突错误标志(写1清0)
                     |  FTFL_FSTAT_ACCERR_MASK      // 访问错误标志位(写1清0)
                     |  FTFL_FSTAT_FPVIOL_MASK      // 非法访问保护标志位(写1清0)
                    );

#elif defined(MK60F15)
    // 清除Flash预读取缓冲区
    FMC_PFB01CR |= FMC_PFB01CR_S_B_INV_MASK;      //
    //FMC_PFB23CR |= FMC_PFB23CR_S_B_INV_MASK;

    while(!(FTFE_FSTAT & FTFE_FSTAT_CCIF_MASK));    // 等待命令完成

    FTFE_FSTAT =    (0
                     |  FTFE_FSTAT_CCIF_MASK        // 指令完成标志(写1清0)
                     |  FTFE_FSTAT_RDCOLERR_MASK    // 读冲突错误标志(写1清0)
                     |  FTFE_FSTAT_ACCERR_MASK      // 访问错误标志位(写1清0)
                     |  FTFE_FSTAT_FPVIOL_MASK      // 非法访问保护标志位(写1清0)
                    );
#endif
    DELAY_MS(10);
}

/*!
 *  @brief      擦除指定flash扇区
 *  @param      sector_num    扇区号（K60N512实际使用0~255）
 *  @return     执行结果(1成功，0失败)
 *  @since      v5.0
 *  Sample usage:       flash_erase_sector(127);        //擦除扇区127
 */
__RAMFUNC uint8 flash_erase_sector(uint16 sector_num)
{
    uint32 addr = sector_num * FLASH_SECTOR_SIZE;

    // 设置擦除命令
    FCMD = ERSSCR;

    // 设置目标地址
    FADDR2 = ((Dtype *)&addr)->B[2];
    FADDR1 = ((Dtype *)&addr)->B[1];
    FADDR0 = ((Dtype *)&addr)->B[0];

    if(flash_cmd() == 0)
    {
        return 0;
    }

    if(sector_num == 0)
    {
#if defined(MK60DZ10)
        return flash_write(sector_num,0x00040C,0xFFFFFFFE);
#elif defined(MK60F15)
        return flash_write(sector_num,0x000408,0xFFFFFFFEFFFFFFFF );
#endif
    }

    return 1;
}


/*!
 *  @brief      写入长字节数据到 flash指定地址
 *  @param      sector_num      扇区号（0 ~ FLASH_SECTOR_NUM）
 *  @param      offset          写入扇区内部偏移地址（0~2043 中 4的倍数）
 *  @param      data            需要写入的数据
 *  @return     执行结果(1成功，0失败)
 *  @since      v5.0
 *  Sample usage:       flash_write(127,0,0xFFFFFFFE);        //扇区127,偏移地址为0,写入数据:0xFFFFFFFE
 */
__RAMFUNC uint8 flash_write(uint16 sector_num, uint16 offset, FLASH_WRITE_TYPE data)
{
    uint32 addr = sector_num * FLASH_SECTOR_SIZE  + offset ;
    uint32 tmpdata;

    ASSERT(offset % FLASH_ALIGN_ADDR == 0);             //偏移量必须为4的倍数
    //此处提示警告，但是安全的……
    ASSERT(offset <= FLASH_SECTOR_SIZE);                //扇区大小为2K，即偏移量必须不大于 0x800
    //此处提示警告，但是安全的……

    // 设置目标地址
    FADDR2 = ((Dtype *)&addr)->B[2];
    FADDR1 = ((Dtype *)&addr)->B[1];
    FADDR0 = ((Dtype *)&addr)->B[0];

    // 设置 低32位数据
    tmpdata = (uint32)data;

    FDATA0 = ((Dtype *)&tmpdata)->B[3];                    // 设置写入数据
    FDATA1 = ((Dtype *)&tmpdata)->B[2];
    FDATA2 = ((Dtype *)&tmpdata)->B[1];
    FDATA3 = ((Dtype *)&tmpdata)->B[0];

#if defined(MK60DZ10)

    // 设置擦除命令
    FCMD = PGM4;

#elif defined(MK60F15)

    // 设置擦除命令
    FCMD = PGM8;

    // 设置 高32位数据
    tmpdata = (uint32)(data>>32);

    FDATA4 = ((Dtype *)&tmpdata)->B[3];                 // 设置写入数据
    FDATA5 = ((Dtype *)&tmpdata)->B[2];
    FDATA6 = ((Dtype *)&tmpdata)->B[1];
    FDATA7 = ((Dtype *)&tmpdata)->B[0];
#endif

    if(flash_cmd() == 0)
    {
        return 0;
    }

    return 1;  //成功执行

}


/*!
 *  @brief      写入数据缓冲区到 flash指定地址
 *  @param      sector_num      扇区号（K60N512实际使用0~255）
 *  @param      offset          写入扇区内部偏移地址（0~2043 中 4的倍数）
 *  @param      buf             需要写入的数据缓冲区首地址
 *  @return     执行结果(1成功，0失败)
 *  @since      v5.0
 *  Sample usage:           uint32 buff[10];
                            flash_write_buf(127,0,sizeof(buff),buff);        //扇区127,偏移地址为0,写入数据源地址:buff,数目sizeof(buff)
 */

__RAMFUNC uint8 flash_write_buf(uint16 sector_num, uint16 offset, uint16 cnt, uint8 *buf)
{
    uint32  size;

    uint32  addr;
    uint32  data;

    ASSERT(offset % FLASH_ALIGN_ADDR == 0);                    //偏移量必须为4的倍数
    //此处提示警告，但是安全的(ram函数调用rom函数引起警告)
    ASSERT(offset <= FLASH_SECTOR_SIZE );                    //扇区大小为2K，即偏移量必须不大于 0x800
    //此处提示警告，但是安全的(ram函数调用rom函数引起警告)

    addr = sector_num * FLASH_SECTOR_SIZE  + offset;      //计算地址

    // 设置写入命令
#if defined(MK60DZ10)
    FCMD = PGM4;
#elif defined(MK60F15)
    FCMD = PGM8;
#endif

    for(size = 0; size < cnt; size += FLASH_ALIGN_ADDR )
    {

        // 设置目标地址
        FADDR2 = ((Dtype *)&addr)->B[2];
        FADDR1 = ((Dtype *)&addr)->B[1];
        FADDR0 = ((Dtype *)&addr)->B[0];

        // 设置 低32位数据
        data =  *(uint32 *)buf;

        FDATA0 = ((Dtype *)&data)->B[3];                    // 设置写入数据
        FDATA1 = ((Dtype *)&data)->B[2];
        FDATA2 = ((Dtype *)&data)->B[1];
        FDATA3 = ((Dtype *)&data)->B[0];

#if defined(MK60F15)
        // 设置 高32位数据
        data = *(uint32 *)(buf+4);

        FDATA4 = ((Dtype *)&data)->B[3];                    // 设置写入数据
        FDATA5 = ((Dtype *)&data)->B[2];
        FDATA6 = ((Dtype *)&data)->B[1];
        FDATA7 = ((Dtype *)&data)->B[0];
#endif

        if(flash_cmd() == 0)
        {
            return 0;
        }

        addr += FLASH_ALIGN_ADDR;
        buf += FLASH_ALIGN_ADDR;
    }
    return 1;  //成功执行
}
















//封装flash函数

/****************************自定义*********************************/
#define  DATA_NUM       30          //使用数据总量(70*4字节)

#define	 SECTOR_COM		150			//COM   尽量用最后面的扇区，确保安全(郭鑫书添加)

#define  PLAN_START     150
#define	 SECTOR_PLAN1	151			//PLAN1 尽量用最后面的扇区，确保安全(郭鑫书添加)
#define	 SECTOR_PLAN2	152			//PLAN2 尽量用最后面的扇区，确保安全(郭鑫书添加)
#define	 SECTOR_PLAN3	153			//PLAN3 尽量用最后面的扇区，确保安全(郭鑫书添加)
#define	 SECTOR_PLAN4	154			//PLAN4 尽量用最后面的扇区，确保安全(郭鑫书添加)
#define	 SECTOR_PLAN5	155			//PLAN5 尽量用最后面的扇区，确保安全(郭鑫书添加)
#define	 SECTOR_PLAN6	156			//PLAN6 尽量用最后面的扇区，确保安全(郭鑫书添加)




//Pub_Value[]={开机进的方案，陀螺仪，加速度计，摄像头阈值，乱七八糟 20个吧 }
//Plan_Value[]={Turn_P,Turn_D,Turn_About,  30个吧                          }


//公共区域变量读取
void Flash_Read_Pub(uint32 * Data)
{
    for(int i=0;i<DATA_NUM;i++)
    {
        Data[i] = flash_read(SECTOR_COM,i*4,uint16);     //读取4字节
    }
    return ;
}

//公共区域变量写入
void Flash_Write_Pub(uint32 * Data)
{
    flash_erase_sector(SECTOR_COM); //先清空
    for(int i=0;i<DATA_NUM;i++)
    {
       flash_write(SECTOR_COM,i*4,Data[i]);
    }
    return ;
}

//读取指定方案的变量

//Data:变量缓存地址
//Plan:方案号
//Where:读取指定位置的变量(小于0的时候全部读取，大于等于零的时候读取某一位)，并以返回值的形式传出
uint32 Flash_Read_Plan(uint32 * Data,uint16 Plan,int Where)
{
  if(Where>=0)//返回指定位置的值
  {
      return flash_read(PLAN_START+Plan,Where*4,uint16);     //读取4字节
  }
  else 
  {
    for(int i=0;i<DATA_NUM;i++)
    {
        Data[i] = flash_read(PLAN_START+Plan,i*4,uint16);     
    }
  }
}
//方案变量写入

//Data 要写入的数据
//Plan 写入方案号(0-6) 0是公共变量 


void Flash_Write_Plan(uint32 * Data,uint16 Plan)
{
    flash_erase_sector(PLAN_START+Plan); //先清空
    for(int i=0;i<DATA_NUM;i++)
    {
       flash_write(PLAN_START+Plan,i*4,Data[i]);
    }
    return ;
}






/*


void flash_read_string(uint16  * data,uint16 plan)
{                       
    uint16 i = 0;
    for(i=0;i<10;i++)                                    //读取公共变量
    {
        data[i] = flash_read(SECTOR_COM,i*4,uint16);     //读取4字节
	}
		switch (plan)
		{
		case 1:
 		{
  			for(i=0;i<20;i++)                                    //读取计划1
 			{
 				data[i+10] = flash_read(SECTOR_PLAN1,i*4,uint16);     //读取4字节
			}		
		}break;
		case 2:
		{
			for(i=0;i<20;i++)                                    //读取计划2
			{
				data[i+10] = flash_read(SECTOR_PLAN2,i*4,uint16);     //读取4字节
			}			
		}break;
		case 3:
		{
			for(i=0;i<20;i++)                                    //读取计划3
			{
				data[i+10] = flash_read(SECTOR_PLAN3,i*4,uint16);     //读取4字节
			}			
		}break;
		case 4:
		{
			for(i=0;i<20;i++)                                    //读取计划4
			{
				data[i+10] = flash_read(SECTOR_PLAN4,i*4,uint16);     //读取4字节
			}			
		}break;
		case 5:
		{
			for(i=0;i<20;i++)                                    //读取计划5
			{
				data[i+10] = flash_read(SECTOR_PLAN5,i*4,uint16);     //读取4字节
			}			
		}break;
		case 6:
		{
			for(i=0;i<20;i++)                                    //读取计划6
			{
				data[i+10] = flash_read(SECTOR_PLAN6,i*4,uint16);     //读取4字节
			}			
		}break;
        default:break;
	}
}



void flash_write_string(uint32 * data,uint16 plan)
{
    uint16 i = 0;
	flash_erase_sector(SECTOR_COM); 
	for(i=0;i<10;i++)
	{
		flash_write(SECTOR_COM,i*4,data[i]);
	}
	switch (plan)
	{
		case 1:
		{
			flash_erase_sector(SECTOR_PLAN1);  //擦除PLAN1扇区
			for(i=0;i<20;i++)                                    //存储计划1
			{
				flash_write(SECTOR_PLAN1,i*4,data[i+10]);         //存储4字节
			}		
		}break;
		case 2:
		{
			flash_erase_sector(SECTOR_PLAN2);
			for(i=0;i<20;i++)                                    //存储计划2
			{
				flash_write(SECTOR_PLAN2,i*4,data[i+10]);       //存储4字节
			}			
		}break;
		case 3:
		{
			flash_erase_sector(SECTOR_PLAN3);
			for(i=0;i<20;i++)                                    //存储计划3
			{
				flash_write(SECTOR_PLAN3,i*4,data[i+10]);       //存储4字节
			}			
		}break;
		case 4:
		{
			flash_erase_sector(SECTOR_PLAN4);
			for(i=0;i<20;i++)                                    //存储计划4
			{
				flash_write(SECTOR_PLAN4,i*4,data[i+10]);       //存储4字节
			}			
		}break;
		case 5:
		{
			flash_erase_sector(SECTOR_PLAN5);
			for(i=0;i<20;i++)                                    //存储计划5
			{
				flash_write(SECTOR_PLAN5,i*4,data[i+10]);       //存储4字节
			}			
		}break;
		case 6:
		{
			flash_erase_sector(SECTOR_PLAN6);
			for(i=0;i<20;i++)                                    //存储计划6
			{
				flash_write(SECTOR_PLAN6,i*4,data[i+10]);       //存储4字节
			}			
		}break;
        default:break;
	}
}

*/




