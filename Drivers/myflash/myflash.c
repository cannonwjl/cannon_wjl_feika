/**************************************************************************
*	
**************************************************************************/

#include "myflash.h"

/*************************************************************************
*	������:flash_read_string()
*	����:flash��ȡ
*	*data�������buff   ����30
*	plan����(1~6)
*	����   ������
*************************************************************************/
void flash_read_string(uint32 * data,uint16 plan)
{
    uint16 i = 0;
    for(i=0;i<10;i++)                                    //��ȡ��������
    {
        data[i] = flash_read(SECTOR_COM,i*4,uint16);     //��ȡ4�ֽ�
	}
		switch (plan)
		{
		case 1:
 		{
  			for(i=0;i<20;i++)                                    //��ȡ�ƻ�1
 			{
 				data[i+10] = flash_read(SECTOR_PLAN1,i*4,uint16);     //��ȡ4�ֽ�
			}		
		}break;
		case 2:
		{
			for(i=0;i<20;i++)                                    //��ȡ�ƻ�2
			{
				data[i+10] = flash_read(SECTOR_PLAN2,i*4,uint16);     //��ȡ4�ֽ�
			}			
		}break;
		case 3:
		{
			for(i=0;i<20;i++)                                    //��ȡ�ƻ�3
			{
				data[i+10] = flash_read(SECTOR_PLAN3,i*4,uint16);     //��ȡ4�ֽ�
			}			
		}break;
		case 4:
		{
			for(i=0;i<20;i++)                                    //��ȡ�ƻ�4
			{
				data[i+10] = flash_read(SECTOR_PLAN4,i*4,uint16);     //��ȡ4�ֽ�
			}			
		}break;
		case 5:
		{
			for(i=0;i<20;i++)                                    //��ȡ�ƻ�5
			{
				data[i+10] = flash_read(SECTOR_PLAN5,i*4,uint16);     //��ȡ4�ֽ�
			}			
		}break;
		case 6:
		{
			for(i=0;i<20;i++)                                    //��ȡ�ƻ�6
			{
				data[i+10] = flash_read(SECTOR_PLAN6,i*4,uint16);     //��ȡ4�ֽ�
			}			
		}break;
        default:break;
	}
}


/*************************************************************************
*	������:flash_write_string()
*	����:flashд��
*	*data��������buff
*	plan����(1~6)
*	����   ������
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
			flash_erase_sector(SECTOR_PLAN1);  //����PLAN1����
			for(i=0;i<20;i++)                                    //�洢�ƻ�1
			{
				flash_write(SECTOR_PLAN1,i*4,data[i+10]);         //�洢4�ֽ�
			}		
		}break;
		case 2:
		{
			flash_erase_sector(SECTOR_PLAN2);
			for(i=0;i<20;i++)                                    //�洢�ƻ�2
			{
				flash_write(SECTOR_PLAN2,i*4,data[i+10]);       //�洢4�ֽ�
			}			
		}break;
		case 3:
		{
			flash_erase_sector(SECTOR_PLAN3);
			for(i=0;i<20;i++)                                    //�洢�ƻ�3
			{
				flash_write(SECTOR_PLAN3,i*4,data[i+10]);       //�洢4�ֽ�
			}			
		}break;
		case 4:
		{
			flash_erase_sector(SECTOR_PLAN4);
			for(i=0;i<20;i++)                                    //�洢�ƻ�4
			{
				flash_write(SECTOR_PLAN4,i*4,data[i+10]);       //�洢4�ֽ�
			}			
		}break;
		case 5:
		{
			flash_erase_sector(SECTOR_PLAN5);
			for(i=0;i<20;i++)                                    //�洢�ƻ�5
			{
				flash_write(SECTOR_PLAN5,i*4,data[i+10]);       //�洢4�ֽ�
			}			
		}break;
		case 6:
		{
			flash_erase_sector(SECTOR_PLAN6);
			for(i=0;i<20;i++)                                    //�洢�ƻ�6
			{
				flash_write(SECTOR_PLAN6,i*4,data[i+10]);       //�洢4�ֽ�
			}			
		}break;
        default:break;
	}
}


