#ifndef __OLED_NEW_H
#define __OLED_NEW_H			  	 
#include "All_Init.h"

#include "stdlib.h"	    
#include "common.h"
#include "MK60_port.h"
#include "MK60_gpio.h"
#include "config.h"


//typedef uint32_t  u32;
//typedef uint16_t u16;
//typedef uint8_t  u8;
//

#define u16 unsigned short
#define u32 unsigned long
#define u8  unsigned char


 #define OLED_SCL  PTE28_OUT //PTD1_OUT  ->  //B9     D0
 #define OLED_SDA  PTE27_OUT //PTD3_OUT  -> //B10     D1
 #define OLED_RST  PTE26_OUT  //PTD0_OUT  -> //B11     D5
 #define OLED_DC   PTE25_OUT //PTD2_OUT  -> //B16     D4
 #define OLED_CS   PTE24_OUT





#define OLED_CS_LOW()    OLED_CS=0
#define OLED_CS_HIGH()   OLED_CS=1

#define OLED_DC_LOW()   OLED_DC=0
#define OLED_DC_HIGH()  OLED_DC=1

#define OLED_SDA_HIGH()  OLED_SDA=1
#define OLED_SDA_LOW()   OLED_SDA=0
   
#define OLDE_SCL_HIGH()  OLED_SCL=1
#define OLED_SCL_LOW()   OLED_SCL=0







//-----------------OLED端口定义----------------  					   
//#define OLED_CS PDout(2)
////#define OLED_RST  PBout(14)//在MINISTM32上直接接到了STM32的复位脚！	
//#define OLED_RS PBout(9)

////使用4线串行接口时使用 
//#define OLED_SCLK PBout(14)
//#define OLED_SDIN PBout(15)
		     
#define OLED_CMD  0	//写命令
#define OLED_DATA 1	//写数据



#define OLED_LONG 128
#define OLED_HIGH 64

void OLED_P6x8Str(u8 x,u8 y,u8 ch[]);
void OLED_P6x8Str_Back(u8 x,u8 y,u8 ch[]);
void OLED_WrDat(u8 data);

void OLED_Set_Pos(u8 x, u8 y);
//OLED控制用函数
void OLED_WR_Byte(u8 dat,u8 cmd);	    
void OLED_Display_On(void);
void OLED_Display_Off(void);
void OLED_Refresh_Gram(void);		   
							   		    
void OLED_Init(void);
void OLED_Clear(void);
void OLED_DrawPoint(u8 x,u8 y,u8 t);
void OLED_Fill(u8 x1,u8 y1,u8 x2,u8 y2,u8 dot);
void OLED_Fill_OLD(u8 dat);
void Draw_BMP(u8 x0,u8 y0,u8 x1,u8 y1,u8 bmp[]);
void OLED_PutPixel(u8 x,u8 y,u8 data1);



//void OLED_ShowChar(u8 x,u8 y,u8 chr,u8 size,u8 mode);
//void OLED_ShowNum(u8 x,u8 y,u32 num,u8 len,u8 size);
//void OLED_ShowString(u8 x,u8 y,const u8 *p);	 

#endif  
	 



