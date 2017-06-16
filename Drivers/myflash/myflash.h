#ifndef  __MYFLASH_H__
#define  __MYFLASH_H__

#include "common.h"
#include "MK60_flash.h"

/****************************自定义*********************************/
#define  DATA_NUM       30          //使用数据总量(70*4字节)
#define	 SECTOR_PLAN1	150			//PLAN1 尽量用最后面的扇区，确保安全(郭鑫书添加)
#define	 SECTOR_PLAN2	151			//PLAN2 尽量用最后面的扇区，确保安全(郭鑫书添加)
#define	 SECTOR_PLAN3	152			//PLAN3 尽量用最后面的扇区，确保安全(郭鑫书添加)
#define	 SECTOR_COM		153			//COM   尽量用最后面的扇区，确保安全(郭鑫书添加)
#define	 SECTOR_PLAN4	154			//PLAN4 尽量用最后面的扇区，确保安全(郭鑫书添加)
#define	 SECTOR_PLAN5	155			//PLAN5 尽量用最后面的扇区，确保安全(郭鑫书添加)
#define	 SECTOR_PLAN6	156			//PLAN6 尽量用最后面的扇区，确保安全(郭鑫书添加)

void flash_read_string(uint32 * data,uint16 plan);    //读取32位数据
void flash_write_string(uint32 * data,uint16 plan);	   //写入32位数据

#endif
