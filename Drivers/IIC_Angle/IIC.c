#include "all_init.h"
#include "IIC.h"


void Pause(void)
{
    u16 n;
    for(n = 1; n < 20000; n++)      //注意，这个数据太小，会导致读取错误。
    {
        asm("nop");
    }
}

void delaymm()
{
  asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");
  asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");
  asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");
  asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");
  asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");
  asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");
  asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");
  
}

void IIC_start(void)
{
//    SDA=1;
//    delaymm();
	SCL=0;
    delaymm();
	SDA=1;
	delaymm();
	SCL=1;
	delaymm();
	SDA=0;
	delaymm();
	SCL=0;
}
//************************************************
//送停止位 SDA=0->1
void IIC_stop(void)
{
	SCL=0;
	delaymm();
	SDA=0;
	delaymm();
	SCL=1;
	delaymm();
	SDA=1;
	delaymm();
	SCL=0;
    
    
    
    
}
//************************************************
//主应答(包含ack:SDA=0和no_ack:SDA=0)
void IIC_ack_main(char ack_main)
{
	SCL=0;
	if(ack_main)SDA=0; //ack主应答
	else SDA=1; //no_ack无需应答
	delaymm();
	SCL=1;
	delaymm();
	SCL=0;
}
//*************************************************
//字节发送程序
//发送c(可以是数据也可是地址)，送完后接收从应答
//不考虑从应答位
void send_byte(u8 c)
{
	unsigned char i;
	for(i=0;i<8;i++){
		SCL=0;
		if((c<<i) & 0x80)SDA=1; //判断发送位
		else SDA=0;
		delaymm();
		SCL=1;
		delaymm();
		SCL=0;
	}
	delaymm();
	SDA=1; //发送完8bit，释放总线准备接收应答位
	delaymm();
    //asm("nop"); 
	SCL=1;
	asm("nop"); //sda上数据即是从应答位
    //delaymm();
    
	SCL=0; //不考虑从应答位|但要控制好时序
    
    delaymm();
	SDA=1;
    
    
    
}
//**************************************************
//字节接收程序
//接收器件传来的数据，此程序应配合|主应答函数|IIC_ack_main()使用
//return: uchar型1字节
u8 read_byte(void)
{
unsigned char i;
unsigned char c;
	c=0;
	SCL=0;
	delaymm();
	SDA=1;
       // gpio_init (PORTE,0,GPI,0);//置数据线为输入方式
	for(i=0;i<8;i++)
        {
		delaymm();
		SCL=0; //置时钟线为低，准备接收数据位
		delaymm();
		SCL=1; //置时钟线为高，使数据线上数据有效
		delaymm();
		c<<=1;
		if(SDAIN)c+=1; //读数据位，将接收的数据存c
	}
       // gpio_init (PORTE,0,GPO,0);
	SCL=0;
	return c;
}
//***************************************************
//向无子地址器件发送单字节数据
void send_to_byte(u8 ad_main,u8 c)
{
	IIC_start();
	send_byte(ad_main); //发送器件地址
	send_byte(c); //发送数据c
	IIC_stop();
}
//***************************************************
//向有子地址器件发送多字节数据
/*void send_to_nbyte(u8 ad_main,u8 ad_sub,u8 *buf,u8 num)
{
	unsigned char i;
	IIC_start();
	send_byte(ad_main); //发送器件地址
	send_byte(ad_sub); //发送器件子地址
	for(i=0;i<num;i++){
		send_byte(*buf); //发送数据*buf
		buf++;
	}
	IIC_stop();
}*/
//***************************************************
//从无子地址器件读单字节数据
//function:器件地址，所读数据存在接收缓冲区当前字节
void read_from_byte(u8 ad_main,u8 *buf)
{
	IIC_start();
	send_byte(ad_main); //发送器件地址
	*buf=read_byte();
	IIC_ack_main(no_ack); //无需应答<no_ack=0>
	IIC_stop();
}
//***************************************************
//从有子地址器件读多个字节数据
//function:
/*void read_from_nbyte(u8 ad_main,u8 ad_sub,u8 *buf,u8 num)
{
	unsigned char i;
	IIC_start();
	send_byte(ad_main);
	send_byte(ad_sub);
	for(i=0;i<num-1;i++)
        {
		*buf=read_byte();
		IIC_ack_main(ack); //主应答<ack=1>
		buf++;
	}
	*buf=read_byte;
	buf++; //本次指针调整无意义，目的是操作后buf指向下一地址
	IIC_ack_main(no_ack); //无需应答<no_ack=0>
	IIC_stop();
}*/