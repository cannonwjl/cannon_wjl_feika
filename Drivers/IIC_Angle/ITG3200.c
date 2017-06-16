#include "common.h"
#include "MMA8451.h"
#include "ITG3200.h"
#include "IIC.h"

unsigned char ITG3200_readbyte(u8 address)
{
unsigned char ret = 100;
	IIC_start();		//����
	send_byte(ITG3200_IIC_ADDR<<1);	//д���豸ID��д�ź�
	send_byte(address);	//X��ַ
	IIC_start();		//���·��Ϳ�ʼ
	send_byte((ITG3200_IIC_ADDR<<1)+1);	//д���豸ID������
	ret = read_byte();	//��ȡһ�ֽ�
	IIC_stop();

	return ret;
}

//д��
void ITG3200_writebyte(unsigned char address, unsigned char thedata)
{
	IIC_start();		//����
	send_byte(ITG3200_IIC_ADDR<<1);	//д���豸ID��д�ź�
	send_byte(address);	//X��ַ
	send_byte(thedata);	//д���豸ID������
	IIC_stop();
}

//��ʼ��
//��ʼ��Ϊָ��ģʽ
/*void ITG3200_init()
{	
  gpio_init (PORTE,1,GPO,0);
  gpio_init (PORTE,2,GPO,0);
	MMA845x_writebyte(CTRL_REG1,ASLP_RATE_20MS+DATA_RATE_5MS);	
	delaymm();
	MMA845x_writebyte(XYZ_DATA_CFG_REG, FULL_SCALE_2G); //2G
	delaymm();
	MMA845x_writebyte(CTRL_REG1, ACTIVE_MASK);          //����״̬
	delaymm();
}*/