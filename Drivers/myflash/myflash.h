#ifndef  __MYFLASH_H__
#define  __MYFLASH_H__

#include "common.h"
#include "MK60_flash.h"

/****************************�Զ���*********************************/
#define  DATA_NUM       30          //ʹ����������(70*4�ֽ�)
#define	 SECTOR_PLAN1	150			//PLAN1 ������������������ȷ����ȫ(���������)
#define	 SECTOR_PLAN2	151			//PLAN2 ������������������ȷ����ȫ(���������)
#define	 SECTOR_PLAN3	152			//PLAN3 ������������������ȷ����ȫ(���������)
#define	 SECTOR_COM		153			//COM   ������������������ȷ����ȫ(���������)
#define	 SECTOR_PLAN4	154			//PLAN4 ������������������ȷ����ȫ(���������)
#define	 SECTOR_PLAN5	155			//PLAN5 ������������������ȷ����ȫ(���������)
#define	 SECTOR_PLAN6	156			//PLAN6 ������������������ȷ����ȫ(���������)

void flash_read_string(uint32 * data,uint16 plan);    //��ȡ32λ����
void flash_write_string(uint32 * data,uint16 plan);	   //д��32λ����

#endif
