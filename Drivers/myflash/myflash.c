/**************************************************************************
*	
**************************************************************************/

#include "myflash.h"

/*************************************************************************
*	函数名:flash_read_string()
*	功能:flash读取
*	*data输出数据buff   长度30
*	plan方案(1~6)
*	作者   郭鑫书
*************************************************************************/
void flash_read_string(uint32 * data,uint16 plan)
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


/*************************************************************************
*	函数名:flash_write_string()
*	功能:flash写入
*	*data输入数据buff
*	plan方案(1~6)
*	作者   郭鑫书
*************************************************************************/
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


