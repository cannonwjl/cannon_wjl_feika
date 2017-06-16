#include "common.h"
#include "MMA8451.h"
#include "ITG3200.h"
#include "IIC.h"

unsigned char ITG3200_readbyte(u8 address)
{
unsigned char ret = 100;
	IIC_start();		//启动
	send_byte(ITG3200_IIC_ADDR<<1);	//写入设备ID及写信号
	send_byte(address);	//X地址
	IIC_start();		//重新发送开始
	send_byte((ITG3200_IIC_ADDR<<1)+1);	//写入设备ID及读信
	ret = read_byte();	//读取一字节
	IIC_stop();

	return ret;
}

//写入
void ITG3200_writebyte(unsigned char address, unsigned char thedata)
{
	IIC_start();		//启动
	send_byte(ITG3200_IIC_ADDR<<1);	//写入设备ID及写信号
	send_byte(address);	//X地址
	send_byte(thedata);	//写入设备ID及读信
	IIC_stop();
}

//初始化
//初始化为指定模式
/*void ITG3200_init()
{	
  gpio_init (PORTE,1,GPO,0);
  gpio_init (PORTE,2,GPO,0);
	MMA845x_writebyte(CTRL_REG1,ASLP_RATE_20MS+DATA_RATE_5MS);	
	delaymm();
	MMA845x_writebyte(XYZ_DATA_CFG_REG, FULL_SCALE_2G); //2G
	delaymm();
	MMA845x_writebyte(CTRL_REG1, ACTIVE_MASK);          //激活状态
	delaymm();
}*/