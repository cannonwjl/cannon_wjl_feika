#include "all_init.h"
#include "IIC.h"


void Pause(void)
{
    u16 n;
    for(n = 1; n < 20000; n++)      //ע�⣬�������̫С���ᵼ�¶�ȡ����
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
//��ֹͣλ SDA=0->1
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
//��Ӧ��(����ack:SDA=0��no_ack:SDA=0)
void IIC_ack_main(char ack_main)
{
	SCL=0;
	if(ack_main)SDA=0; //ack��Ӧ��
	else SDA=1; //no_ack����Ӧ��
	delaymm();
	SCL=1;
	delaymm();
	SCL=0;
}
//*************************************************
//�ֽڷ��ͳ���
//����c(����������Ҳ���ǵ�ַ)���������մ�Ӧ��
//�����Ǵ�Ӧ��λ
void send_byte(u8 c)
{
	unsigned char i;
	for(i=0;i<8;i++){
		SCL=0;
		if((c<<i) & 0x80)SDA=1; //�жϷ���λ
		else SDA=0;
		delaymm();
		SCL=1;
		delaymm();
		SCL=0;
	}
	delaymm();
	SDA=1; //������8bit���ͷ�����׼������Ӧ��λ
	delaymm();
    //asm("nop"); 
	SCL=1;
	asm("nop"); //sda�����ݼ��Ǵ�Ӧ��λ
    //delaymm();
    
	SCL=0; //�����Ǵ�Ӧ��λ|��Ҫ���ƺ�ʱ��
    
    delaymm();
	SDA=1;
    
    
    
}
//**************************************************
//�ֽڽ��ճ���
//�����������������ݣ��˳���Ӧ���|��Ӧ����|IIC_ack_main()ʹ��
//return: uchar��1�ֽ�
u8 read_byte(void)
{
unsigned char i;
unsigned char c;
	c=0;
	SCL=0;
	delaymm();
	SDA=1;
       // gpio_init (PORTE,0,GPI,0);//��������Ϊ���뷽ʽ
	for(i=0;i<8;i++)
        {
		delaymm();
		SCL=0; //��ʱ����Ϊ�ͣ�׼����������λ
		delaymm();
		SCL=1; //��ʱ����Ϊ�ߣ�ʹ��������������Ч
		delaymm();
		c<<=1;
		if(SDAIN)c+=1; //������λ�������յ����ݴ�c
	}
       // gpio_init (PORTE,0,GPO,0);
	SCL=0;
	return c;
}
//***************************************************
//�����ӵ�ַ�������͵��ֽ�����
void send_to_byte(u8 ad_main,u8 c)
{
	IIC_start();
	send_byte(ad_main); //����������ַ
	send_byte(c); //��������c
	IIC_stop();
}
//***************************************************
//�����ӵ�ַ�������Ͷ��ֽ�����
/*void send_to_nbyte(u8 ad_main,u8 ad_sub,u8 *buf,u8 num)
{
	unsigned char i;
	IIC_start();
	send_byte(ad_main); //����������ַ
	send_byte(ad_sub); //���������ӵ�ַ
	for(i=0;i<num;i++){
		send_byte(*buf); //��������*buf
		buf++;
	}
	IIC_stop();
}*/
//***************************************************
//�����ӵ�ַ���������ֽ�����
//function:������ַ���������ݴ��ڽ��ջ�������ǰ�ֽ�
void read_from_byte(u8 ad_main,u8 *buf)
{
	IIC_start();
	send_byte(ad_main); //����������ַ
	*buf=read_byte();
	IIC_ack_main(no_ack); //����Ӧ��<no_ack=0>
	IIC_stop();
}
//***************************************************
//�����ӵ�ַ����������ֽ�����
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
		IIC_ack_main(ack); //��Ӧ��<ack=1>
		buf++;
	}
	*buf=read_byte;
	buf++; //����ָ����������壬Ŀ���ǲ�����bufָ����һ��ַ
	IIC_ack_main(no_ack); //����Ӧ��<no_ack=0>
	IIC_stop();
}*/