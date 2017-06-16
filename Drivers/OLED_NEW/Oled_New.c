
#include "All_Init.h"
#include "oled_new.h"
#include "stdlib.h"	 
//#include "timer.h"
#include "common.h"


//////////////////////////////////////////////////////////////////////////////////	 
//������ֻ��ѧϰʹ�ã�δ��������ɣ��������������κ���;
//Mini STM32������
//SSD1306 OLED ����IC��������
//������ʽ:8080����/4�ߴ���
//����ԭ��@ALIENTEK
//������̳:www.openedv.com
//�޸�����:2010/6/3
//�汾��V1.0
//��Ȩ���У�����ؾ���
//Copyright(C) ����ԭ�� 2009-2019
//All rights reserved
////////////////////////////////////////////////////////////////////////////////// 	  
 


/********************************************
��������:OLED����ʾ����
��������:
�汾    :1.0
����    :���ĺ���ֲ
����ʱ��:2016/6/13
��ע����:
********************************************/


//OLED���Դ�
//��Ÿ�ʽ����.
//[0]0 1 2 3 ... 127	
//[1]0 1 2 3 ... 127	
//[2]0 1 2 3 ... 127	
//[3]0 1 2 3 ... 127	
//[4]0 1 2 3 ... 127	
//[5]0 1 2 3 ... 127	
//[6]0 1 2 3 ... 127	
//[7]0 1 2 3 ... 127 		   
u8 OLED_GRAM[132][8];	 
const u8 F6x8[][6] =
{
    { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 },   // sp
    { 0x00, 0x00, 0x00, 0x2f, 0x00, 0x00 },   // !
    { 0x00, 0x00, 0x07, 0x00, 0x07, 0x00 },   // "
    { 0x00, 0x14, 0x7f, 0x14, 0x7f, 0x14 },   // #
    { 0x00, 0x24, 0x2a, 0x7f, 0x2a, 0x12 },   // $
    { 0x00, 0x62, 0x64, 0x08, 0x13, 0x23 },   // %
    { 0x00, 0x36, 0x49, 0x55, 0x22, 0x50 },   // &
    { 0x00, 0x00, 0x05, 0x03, 0x00, 0x00 },   // '
    { 0x00, 0x00, 0x1c, 0x22, 0x41, 0x00 },   // (
    { 0x00, 0x00, 0x41, 0x22, 0x1c, 0x00 },   // )
    { 0x00, 0x14, 0x08, 0x3E, 0x08, 0x14 },   // *
    { 0x00, 0x08, 0x08, 0x3E, 0x08, 0x08 },   // +
    { 0x00, 0x00, 0x00, 0xA0, 0x60, 0x00 },   // ,
    { 0x00, 0x08, 0x08, 0x08, 0x08, 0x08 },   // -
    { 0x00, 0x00, 0x60, 0x60, 0x00, 0x00 },   // .
    { 0x00, 0x20, 0x10, 0x08, 0x04, 0x02 },   // /
    { 0x00, 0x3E, 0x51, 0x49, 0x45, 0x3E },   // 0
    { 0x00, 0x00, 0x42, 0x7F, 0x40, 0x00 },   // 1
    { 0x00, 0x42, 0x61, 0x51, 0x49, 0x46 },   // 2
    { 0x00, 0x21, 0x41, 0x45, 0x4B, 0x31 },   // 3
    { 0x00, 0x18, 0x14, 0x12, 0x7F, 0x10 },   // 4
    { 0x00, 0x27, 0x45, 0x45, 0x45, 0x39 },   // 5
    { 0x00, 0x3C, 0x4A, 0x49, 0x49, 0x30 },   // 6
    { 0x00, 0x01, 0x71, 0x09, 0x05, 0x03 },   // 7
    { 0x00, 0x36, 0x49, 0x49, 0x49, 0x36 },   // 8
    { 0x00, 0x06, 0x49, 0x49, 0x29, 0x1E },   // 9
    { 0x00, 0x00, 0x36, 0x36, 0x00, 0x00 },   // :
    { 0x00, 0x00, 0x56, 0x36, 0x00, 0x00 },   // ;
    { 0x00, 0x08, 0x14, 0x22, 0x41, 0x00 },   // <
    { 0x00, 0x14, 0x14, 0x14, 0x14, 0x14 },   // =
    { 0x00, 0x00, 0x41, 0x22, 0x14, 0x08 },   // >
    { 0x00, 0x02, 0x01, 0x51, 0x09, 0x06 },   // ?
    { 0x00, 0x32, 0x49, 0x59, 0x51, 0x3E },   // @
    { 0x00, 0x7C, 0x12, 0x11, 0x12, 0x7C },   // A
    { 0x00, 0x7F, 0x49, 0x49, 0x49, 0x36 },   // B
    { 0x00, 0x3E, 0x41, 0x41, 0x41, 0x22 },   // C
    { 0x00, 0x7F, 0x41, 0x41, 0x22, 0x1C },   // D
    { 0x00, 0x7F, 0x49, 0x49, 0x49, 0x41 },   // E
    { 0x00, 0x7F, 0x09, 0x09, 0x09, 0x01 },   // F
    { 0x00, 0x3E, 0x41, 0x49, 0x49, 0x7A },   // G
    { 0x00, 0x7F, 0x08, 0x08, 0x08, 0x7F },   // H
    { 0x00, 0x00, 0x41, 0x7F, 0x41, 0x00 },   // I
    { 0x00, 0x20, 0x40, 0x41, 0x3F, 0x01 },   // J
    { 0x00, 0x7F, 0x08, 0x14, 0x22, 0x41 },   // K
    { 0x00, 0x7F, 0x40, 0x40, 0x40, 0x40 },   // L
    { 0x00, 0x7F, 0x02, 0x0C, 0x02, 0x7F },   // M
    { 0x00, 0x7F, 0x04, 0x08, 0x10, 0x7F },   // N
    { 0x00, 0x3E, 0x41, 0x41, 0x41, 0x3E },   // O
    { 0x00, 0x7F, 0x09, 0x09, 0x09, 0x06 },   // P
    { 0x00, 0x3E, 0x41, 0x51, 0x21, 0x5E },   // Q
    { 0x00, 0x7F, 0x09, 0x19, 0x29, 0x46 },   // R
    { 0x00, 0x46, 0x49, 0x49, 0x49, 0x31 },   // S
    { 0x00, 0x01, 0x01, 0x7F, 0x01, 0x01 },   // T
    { 0x00, 0x3F, 0x40, 0x40, 0x40, 0x3F },   // U
    { 0x00, 0x1F, 0x20, 0x40, 0x20, 0x1F },   // V
    { 0x00, 0x3F, 0x40, 0x38, 0x40, 0x3F },   // W
    { 0x00, 0x63, 0x14, 0x08, 0x14, 0x63 },   // X
    { 0x00, 0x07, 0x08, 0x70, 0x08, 0x07 },   // Y
    { 0x00, 0x61, 0x51, 0x49, 0x45, 0x43 },   // Z
    { 0x00, 0x00, 0x7F, 0x41, 0x41, 0x00 },   // [
    { 0x00, 0x55, 0x2A, 0x55, 0x2A, 0x55 },   // 55
    { 0x00, 0x00, 0x41, 0x41, 0x7F, 0x00 },   // ]
    { 0x00, 0x04, 0x02, 0x01, 0x02, 0x04 },   // ^
    { 0x00, 0x40, 0x40, 0x40, 0x40, 0x40 },   // _
    { 0x00, 0x00, 0x01, 0x02, 0x04, 0x00 },   // '
    { 0x00, 0x20, 0x54, 0x54, 0x54, 0x78 },   // a
    { 0x00, 0x7F, 0x48, 0x44, 0x44, 0x38 },   // b
    { 0x00, 0x38, 0x44, 0x44, 0x44, 0x20 },   // c
    { 0x00, 0x38, 0x44, 0x44, 0x48, 0x7F },   // d
    { 0x00, 0x38, 0x54, 0x54, 0x54, 0x18 },   // e
    { 0x00, 0x08, 0x7E, 0x09, 0x01, 0x02 },   // f
    { 0x00, 0x18, 0xA4, 0xA4, 0xA4, 0x7C },   // g
    { 0x00, 0x7F, 0x08, 0x04, 0x04, 0x78 },   // h
    { 0x00, 0x00, 0x44, 0x7D, 0x40, 0x00 },   // i
    { 0x00, 0x40, 0x80, 0x84, 0x7D, 0x00 },   // j
    { 0x00, 0x7F, 0x10, 0x28, 0x44, 0x00 },   // k
    { 0x00, 0x00, 0x41, 0x7F, 0x40, 0x00 },   // l
    { 0x00, 0x7C, 0x04, 0x18, 0x04, 0x78 },   // m
    { 0x00, 0x7C, 0x08, 0x04, 0x04, 0x78 },   // n
    { 0x00, 0x38, 0x44, 0x44, 0x44, 0x38 },   // o
    { 0x00, 0xFC, 0x24, 0x24, 0x24, 0x18 },   // p
    { 0x00, 0x18, 0x24, 0x24, 0x18, 0xFC },   // q
    { 0x00, 0x7C, 0x08, 0x04, 0x04, 0x08 },   // r
    { 0x00, 0x48, 0x54, 0x54, 0x54, 0x20 },   // s
    { 0x00, 0x04, 0x3F, 0x44, 0x40, 0x20 },   // t
    { 0x00, 0x3C, 0x40, 0x40, 0x20, 0x7C },   // u
    { 0x00, 0x1C, 0x20, 0x40, 0x20, 0x1C },   // v
    { 0x00, 0x3C, 0x40, 0x30, 0x40, 0x3C },   // w
    { 0x00, 0x44, 0x28, 0x10, 0x28, 0x44 },   // x
    { 0x00, 0x1C, 0xA0, 0xA0, 0xA0, 0x7C },   // y
    { 0x00, 0x44, 0x64, 0x54, 0x4C, 0x44 },   // z
    { 0x14, 0x14, 0x14, 0x14, 0x14, 0x14 }    // horiz lines
};



void OLED_DLY_ms(u16 ms)
{
  u16 a;
  while(ms)
  {
    a=16000;
    while(a--);
    ms--;
  }
  return;
}

//void OLED_Port_Init(void)
//{
//	LPC_SYSCON->SYSAHBCLKCTRL|=(1<<6);//ʹ��ʱ��
//	//OLED_CS_LOW();
//	LPC_GPIO2->DIR|=(1<<0);
//	LPC_GPIO2->DIR|=(1<<1);
//	LPC_GPIO2->DIR|=(1<<2);	
//	LPC_GPIO2->DIR|=(1<<3);	
//	
//	
//	OLED_CS_HIGH();
//	OLDE_SCL_HIGH();//LPC_GPIO2->DATA|=(1<<1);//OLED_SCL=1  //
//	OLED_DC_HIGH();//LPC_GPIO2->DATA|=(1<<3);//OLED_DC=1
//	OLED_SDA_HIGH();//LPC_GPIO2->DATA|=(1<<2);//OLED_SDA=1
//    

//	OLDE_SCL_HIGH();;//LPC_GPIO2->DATA|=(1<<1);//OLED_SCL=1	   //OLED_SCL=1;
//	OLED_CS_LOW();

//}
//�����Դ浽LCD		 
void OLED_Refresh_Gram(void)
{
	u8 i,n;		    
	for(i=0;i<8;i++)  
	{  
		OLED_WR_Byte (0xb0+i,OLED_CMD);    //����ҳ��ַ��0~7��
		OLED_WR_Byte (0x00,OLED_CMD);      //������ʾλ�á��е͵�ַ
		OLED_WR_Byte (0x10,OLED_CMD);      //������ʾλ�á��иߵ�ַ   
		for(n=0;n<128;n++)OLED_WR_Byte(OLED_GRAM[n][i],OLED_DATA); 
	}   
}


//��SSD1306д��һ���ֽڡ�
//dat:Ҫд�������/����
//cmd:����/�����־ 0,��ʾ����;1,��ʾ����;
void OLED_WR_Byte(u8 dat,u8 cmd)
{	
//	u8 i;			  
//	//OLED_RS=cmd; //д���� 
//	//OLED_CS=0;
//	OLED_CS_LOW();
//	
//	for(i=0;i<8;i++)
//	{			  
//		OLDE_SCL_HIGH();
//		if(dat&0x80)OLED_SDA_HIGH();
//		else OLED_SDA_LOW();;
//		OLDE_SCL_HIGH();
//		dat<<=1;   
//	}				 
//	OLED_CS_HIGH();		
	
	u8 i=8;
	
	if (cmd==0)//д����
	{
		OLED_DC_LOW();
		OLED_SCL_LOW();
		while(i--)
	  {
		if(dat&0x80)
		{
			OLED_SDA_HIGH();//LPC_GPIO2->DATA|=(1<<2);	//OLED_SDA=1		//OLED_SDA=1;
		}
		else
		{
			OLED_SDA_LOW();//LPC_GPIO2->DATA&=~(1<<2);	//OLED_SDA=0    //OLED_SDA=0;
		}
		OLDE_SCL_HIGH();//LPC_GPIO2->DATA|=(1<<1);	//OLED_SCL=1	   //OLED_SCL=1;;

		OLED_SCL_LOW() ;//LPC_GPIO2->DATA&=~(1<<1);	//OLED_SCL=0   //OLED_SCL=0;;
		dat<<=1;;
	  }
	}
	else if(cmd)
	{
		OLED_DC_HIGH();// LPC_GPIO2->DATA|=(1<<3);//OLED_DC=1		//  OLED_DC=1;
		OLED_SCL_LOW();//  LPC_GPIO2->DATA&=~(1<<1);//OLED_SCL=0     // OLED_SCL=0;
	
		while(i--)
		  {
			if(dat&0x80)
			{
			OLED_SDA_HIGH();//LPC_GPIO2->DATA|=(1<<2);//OLED_SDA=1		//OLED_SDA=1;
			}
			else
			{
			 OLED_SDA_LOW();//LPC_GPIO2->DATA&=~(1<<2);//OLED_SDA=0    //OLED_SDA=0;
			}
			OLDE_SCL_HIGH();//LPC_GPIO2->DATA|=(1<<1);//OLED_SCL=1	   //OLED_SCL=1;
			//_asm("nop");;
				//asm("nop");
			OLED_SCL_LOW();// LPC_GPIO2->DATA&=~(1<<1);//OLED_SCL=0   //OLED_SCL=0;;
			dat<<=1;
		  }
	}
} 
	  	  
//����OLED��ʾ    
void OLED_Display_On(void)
{
	OLED_WR_Byte(0X8D,OLED_CMD);  //SET DCDC����
	OLED_WR_Byte(0X14,OLED_CMD);  //DCDC ON
	OLED_WR_Byte(0XAF,OLED_CMD);  //DISPLAY ON
}
//�ر�OLED��ʾ     
void OLED_Display_Off(void)
{
	OLED_WR_Byte(0X8D,OLED_CMD);  //SET DCDC����
	OLED_WR_Byte(0X10,OLED_CMD);  //DCDC OFF
	OLED_WR_Byte(0XAE,OLED_CMD);  //DISPLAY OFF
}		   			 
//��������,������,������Ļ�Ǻ�ɫ��!��û����һ��!!!	  
void OLED_Clear(void)  
{  
	u8 i,n;  
	for(i=0;i<8;i++)for(n=0;n<128;n++)OLED_GRAM[n][i]=0X00;  
	OLED_Refresh_Gram();//������ʾ
}
//���� 
//x:0~127
//y:0~63
//t:1 ��� 0,���				   
void OLED_DrawPoint(u8 x,u8 y,u8 t)
{
	u8 pos,bx,temp=0;
	if(x>127||y>63)return;//������Χ��.
	pos=7-y/8;
	bx=y%8;
	temp=1<<(7-bx);
	if(t)OLED_GRAM[x][pos]|=temp;
	else OLED_GRAM[x][pos]&=~temp;	    
}



void OLED_WrCmd(u8 cmd)
{
	u8 i=8;
	
	
	OLED_DC_LOW();//LPC_GPIO2->DATA&=~(1<<3);	//OLED_DC=0    OLED_DC=0;;
    OLED_SCL_LOW();//LPC_GPIO2->DATA&=~(1<<1);	//OLED_SCL=0   OLED_SCL=0;;
	
	
	while(i--)
	  {
		if(cmd&0x80)
		{
			OLED_SDA_HIGH();//LPC_GPIO2->DATA|=(1<<2);	//OLED_SDA=1		//OLED_SDA=1;
		}
		else
		{
			OLED_SDA_LOW();//LPC_GPIO2->DATA&=~(1<<2);	//OLED_SDA=0    //OLED_SDA=0;
		}
		OLDE_SCL_HIGH();//LPC_GPIO2->DATA|=(1<<1);	//OLED_SCL=1	   //OLED_SCL=1;;

		OLED_SCL_LOW() ;//LPC_GPIO2->DATA&=~(1<<1);	//OLED_SCL=0   //OLED_SCL=0;;
		cmd<<=1;;
	  }

}



//x1,y1,x2,y2 �������ĶԽ�����
//ȷ��x1<=x2;y1<=y2 0<=x1<=127 0<=y1<=63	 	 
//dot:0,���;1,���	  
void OLED_Fill(u8 x1,u8 y1,u8 x2,u8 y2,u8 dot)  
{  
	u8 x,y;  
	for(x=x1;x<=x2;x++)
	{
		for(y=y1;y<=y2;y++)OLED_DrawPoint(x,y,dot);
	}													    
	OLED_Refresh_Gram();//������ʾ
}
void OLED_WrDat(u8 data)
{
  u8 i=8;
//LCD_CS=0;;
OLED_DC_HIGH();// LPC_GPIO2->DATA|=(1<<3);//OLED_DC=1		//  OLED_DC=1;
OLED_SCL_LOW();//  LPC_GPIO2->DATA&=~(1<<1);//OLED_SCL=0     // OLED_SCL=0;
  //asm("nop");
  while(i--)
  {
    if(data&0x80)
	{
	OLED_SDA_HIGH();//LPC_GPIO2->DATA|=(1<<2);//OLED_SDA=1		//OLED_SDA=1;
	}
    else
	{
	 OLED_SDA_LOW();//LPC_GPIO2->DATA&=~(1<<2);//OLED_SDA=0    //OLED_SDA=0;
	}
    OLDE_SCL_HIGH();//LPC_GPIO2->DATA|=(1<<1);//OLED_SCL=1	   //OLED_SCL=1;
    //_asm("nop");;
		//asm("nop");
    OLED_SCL_LOW();// LPC_GPIO2->DATA&=~(1<<1);//OLED_SCL=0   //OLED_SCL=0;;
    data<<=1;
  }
	//LCD_CS=1;
}

void OLED_Fill_OLD(u8 bmp_data)
{
	u8 y,x;

	for(y=0;y<8;y++)
	{
		OLED_WrCmd(0xb0+y);
		OLED_WrCmd(0x01);
		OLED_WrCmd(0x10);
		for(x=0;x<128;x++)
		OLED_WrDat(bmp_data);
	}
}


void OLED_Init(void)
{ 	 				 	 	

        gpio_init (PTE26 , GPO,LOW); 
        gpio_init (PTE27, GPO,HIGH); 
        gpio_init (PTE25, GPO,HIGH); 
        gpio_init (PTE28, GPO,HIGH ); 
        
        
 //#define OLED_SCL  PTE28_OUT //PTD1_OUT  ->  //B9     D0
 //#define OLED_SDA  PTE27_OUT //PTD3_OUT  -> //B10     D1
 //#define OLED_RST  PTE26_OUT  //PTD0_OUT  -> //B11     D5
 //#define OLED_DC   PTE25_OUT //PTD2_OUT  -> //B16     D4
 //#define OLED_CS   PTE24_OUT  
        
        
	
        
//        
// #define OLED_SCL  PTB11_OUT //PTD1_OUT  ->  //B9     D0
// #define OLED_SDA  PTB16_OUT //PTD3_OUT  -> //B10     D1
// #define OLED_RST  PTB9_OUT  //PTD0_OUT  -> //B11     D5
// #define OLED_DC   PTB10_OUT //PTD2_OUT  -> //B16     D4

	
//	OLED_CS_HIGH();
//	OLDE_SCL_HIGH();//LPC_GPIO2->DATA|=(1<<1);//OLED_SCL=1  //
//	OLED_DC_HIGH();//LPC_GPIO2->DATA|=(1<<3);//OLED_DC=1
//	OLED_SDA_HIGH();//LPC_GPIO2->DATA|=(1<<2);//OLED_SDA=1
//    
//
//	OLDE_SCL_HIGH();;//LPC_GPIO2->DATA|=(1<<1);//OLED_SCL=1	   //OLED_SCL=1;
//	OLED_CS_LOW();
//        
        
        
        
        
        OLED_SCL=1;
	
	//OLED_CS = 0 ; ///ʹ���źŶˣ�����ʱ����ʹ��
	OLED_RST=0;
	OLED_DLY_ms(50);
	OLED_RST=1;
	  
	OLED_WR_Byte(0xAE,OLED_CMD); //�ر���ʾ
	OLED_WR_Byte(0xD5,OLED_CMD); //����ʱ�ӷ�Ƶ����,��Ƶ��
	OLED_WR_Byte(0x80,OLED_CMD);   //[3:0],��Ƶ����;[7:4],��Ƶ��
	OLED_WR_Byte(0xA8,OLED_CMD); //��������·��
	OLED_WR_Byte(0X3F,OLED_CMD); //Ĭ��0X3F(1/64) 
	OLED_WR_Byte(0xD3,OLED_CMD); //������ʾƫ��
	OLED_WR_Byte(0X00,OLED_CMD); //Ĭ��Ϊ0

	OLED_WR_Byte(0x40,OLED_CMD); //������ʾ��ʼ�� [5:0],����.
													    
	OLED_WR_Byte(0x8D,OLED_CMD); //��ɱ�����
	OLED_WR_Byte(0x14,OLED_CMD); //bit2������/�ر�
	OLED_WR_Byte(0x20,OLED_CMD); //�����ڴ��ַģʽ
	OLED_WR_Byte(0x02,OLED_CMD); //[1:0],00���е�ַģʽ;01���е�ַģʽ;10,ҳ��ַģʽ;Ĭ��10;
	OLED_WR_Byte(0xA1,OLED_CMD); //���ض�������,bit0:0,0->0;1,0->127;
    
	OLED_WR_Byte(0xC0,OLED_CMD); //����COMɨ�跽��;bit3:0,��ͨģʽ;1,�ض���ģʽ COM[N-1]->COM0;N:����·��
	OLED_WR_Byte(0xDA,OLED_CMD); //����COMӲ����������
	OLED_WR_Byte(0x12,OLED_CMD); //[5:4]����
		 
	OLED_WR_Byte(0x81,OLED_CMD); //�Աȶ�����
	OLED_WR_Byte(0xEF,OLED_CMD); //1~255;Ĭ��0X7F (��������,Խ��Խ��)
	OLED_WR_Byte(0xD9,OLED_CMD); //����Ԥ�������
	OLED_WR_Byte(0xf1,OLED_CMD); //[3:0],PHASE 1;[7:4],PHASE 2;
	OLED_WR_Byte(0xDB,OLED_CMD); //����VCOMH ��ѹ����
	OLED_WR_Byte(0x30,OLED_CMD); //[6:4] 000,0.65*vcc;001,0.77*vcc;011,0.83*vcc;

	OLED_WR_Byte(0xA4,OLED_CMD); //ȫ����ʾ����;bit0:1,����;0,�ر�;(����/����)
	OLED_WR_Byte(0xA6,OLED_CMD); //������ʾ��ʽ;bit0:1,������ʾ;0,������ʾ	    						   
	OLED_WR_Byte(0xAF,OLED_CMD); //������ʾ	 
	OLED_Clear();
}  

void OLED_PutPixel(u8 x,u8 y,u8 data1)
{
	//data1��ǰ�������
	data1 = data1<<(y%8);
	OLED_WrCmd(0xb0+(y>>3));
	OLED_WrCmd(((x&0xf0)>>4)|0x10);
	OLED_WrCmd((x&0x0f)|0x00);
	OLED_WrDat(data1);
}

void OLED_Set_Pos(u8 x, u8 y)
{
  OLED_WrCmd(0xb0+y);
  OLED_WrCmd(((x&0xf0)>>4)|0x10);
  OLED_WrCmd((x&0x0f)|0x01);
}
//==============================================================
//��������LCD_P6x8Str(u8 x,u8 y,u8 *p)
//����������д��һ���׼ASCII�ַ���
//��������ʾ��λ�ã�x,y����yΪҳ��Χ0��7��Ҫ��ʾ���ַ���
//���أ���
//==============================================================
void OLED_P6x8Str(u8 x,u8 y,u8 ch[])
{
  int A,S;
  u8 c=0,i=0,j=0;
  while (ch[j]!='\0')
  {
    c =ch[j]-32;
    if(x>128){x=0;y++;}
    
    OLED_Set_Pos(x,7-y);
  	for(i=0;i<6;i++)
    {
      A=F6x8[c][i];
      S=((A>>0)&1)<<7|((A>>1)&1)<<6|((A>>2)&1)<<5|((A>>3)&1)<<4|((A>>4)&1)<<3|((A>>5)&1)<<2|((A>>6)&1)<<1|((A>>7)&1)<<0;
  	  OLED_WrDat(S);
    }
  	x+=6;
  	j++;
  }
}

//������ʾ
void OLED_P6x8Str_Back(u8 x,u8 y,u8 ch[])
{
  int A,S;
  u8 c=0,i=0,j=0;
  while (ch[j]!='\0')
  {
    c =ch[j]-32;
    if(x>128){x=0;y++;}
    
    OLED_Set_Pos(x,7-y);
  	for(i=0;i<6;i++)
    {
      A=~F6x8[c][i];
      S=((A>>0)&1)<<7|((A>>1)&1)<<6|((A>>2)&1)<<5|((A>>3)&1)<<4|((A>>4)&1)<<3|((A>>5)&1)<<2|((A>>6)&1)<<1|((A>>7)&1)<<0;
  	  OLED_WrDat(S);
    }
  	x+=6;
  	j++;
  }
}















////==============================================================
////��������LCD_P6x8Str(u8 x,u8 y,u8 *p)
////����������д��һ���׼ASCII�ַ���
////��������ʾ��λ�ã�x,y����yΪҳ��Χ0��7��Ҫ��ʾ���ַ���
////���أ���
////==============================================================
//void OLED_P6x8Str(u8 x,u8 y,u8 ch[])
//{
//  u8 c=0,i=0,j=0;
//  while (ch[j]!='\0')
//  {
//    c =ch[j]-32;
//    if(x>X_WIDTH){x=0;y++;}
//    OLED_Set_Pos(x,y);
//  	for(i=0;i<6;i++)
//  	  OLED_WrDat(F6x8[c][i]);
//  	x+=6;
//  	j++;
//  }
//}













//==============================================================
//�������� void Draw_BMP(u8 x,u8 y)
//������������ʾBMPͼƬ128��64
//��������ʼ������(x,y),x�ķ�Χ0��127��yΪҳ�ķ�Χ0��7
//���أ���
//==============================================================
void Draw_BMP(u8 x0,u8 y0,u8 x1,u8 y1,u8 bmp[])
{
  u16 ii=0;
  u8 x,y;

  if(y1%8==0) y=y1/8;
  else y=y1/8+1;
	for(y=y0;y<=y1;y++)
	{
		OLED_Set_Pos(x0,y);
		for(x=x0;x<x1;x++)
	    {
	    	OLED_WrDat(bmp[ii++]);
	    }
	}
}


void OLED_P6x8Char(unsigned char ch)
{
	 unsigned char c=0,i=0;       
	c =ch-32;
	for(i=0;i<6;i++)
	{     
              OLED_WrDat(F6x8[c][i]);  
	}
}






