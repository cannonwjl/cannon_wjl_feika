#include "common.h"
#include "all_init.h"
#include "MMA8451.h"
#include "ITG3200.h"
#include "IIC.h"
#include "iiic.h"



//#define COEFF 0.005//角度和角速度的相关系数
//#define COEFF 0.004//角度和角速度的相关系数

#define COEFF 0.005
float OUT0=100,error0=0;
                                  
/*************************************************************************
*                           电子DIY工作室
*
*  函数名称：MMA8451_ITG3200_function1
*  功能说明：得到角度值和角速度值
*  参数说明：AdColle      暂存结果的数组
*  函数返回：无
*  修改时间：2016-12-18
*  备    注：
*************************************************************************/

int last_value_8452[3];
void MMA8451_ITG3200_function1(float *AdColle,int angular)
{
	s16 angle0;//加速度计得到的角度值
	s16 gyro0,Gyro0;//陀螺仪得到的角速度值
	float angle1,gyro1;
	angle0= I2C_ReadByte(I2C_MMA8452_DDR,MMA845x_OUT_Z_MSB)<<8;//得到高八位
	angle0 |= I2C_ReadByte(I2C_MMA8452_DDR,MMA845x_OUT_Z_LSB);//得到低八位
	angle0>>=2;//14位精度 
	angle0+=4000;
	angle0>>=3;//让角速度值与角度值关联

	gyro0 = ITG3200_readbyte(REG_GYRO_YOUT_H)<<8;
	gyro0 |= ITG3200_readbyte(REG_GYRO_YOUT_L);
	gyro0>>=2;
	gyro0=(int)(1.978*(-gyro0-26));//让角速度静止初值为0  并让角速度值与角度值关联            //2.4
    gyro1=gyro0;   //把值赋给gyro1用于浮点运算
    angle1=angle0;//把值赋给angle1用于浮点运算

	////////////互补滤波///////////////
	OUT0=OUT0-(gyro1*0.005);//0.005
	error0=angle1-OUT0;
	
	OUT0=OUT0+error0*COEFF;        //OUT范围是后仰最大100--前倾最大900  
	if(OUT0<100) OUT0=100;
    else if(OUT0>900) OUT0=900;         

	/////////////////////////////
        
    Gyro0=gyro0+1000;
    Gyro0>>=1;  //计算出角速度返回值
    if(Gyro0<0) Gyro0=0;
   	else if (Gyro0>999) Gyro0=999;
	//Gyro0=999-Gyro0;
   
   
    
	AdColle[2]=(u16)angle0;//未融合的角度  
	AdColle[1]=999-(u16)OUT0;//融合后的角度 
	AdColle[0]=(u16)Gyro0;//角速度+1000保证数为正数   

}
//unsigned char MMA845x_readbyte(unsigned char address)
//{
//unsigned char ret = 100;
//	IIC_start();		//启动
//	send_byte(MMA845x_IIC_ADDRESS);	//写入设备ID及写信号
//	send_byte(address);	//X地址
//	IIC_start();		//重新发送开始
//	send_byte(0x39<<1);	//写入设备ID及读信
//	ret = read_byte();	//读取一字节
//	IIC_stop();
//
//	return ret;
//}

//写入
//void MMA845x_writebyte(unsigned char address, unsigned char thedata)
//{
//	IIC_start();		//启动
//	send_byte(MMA845x_IIC_ADDRESS);	//写入设备ID及写信号
//	send_byte(address);	//X地址
//	send_byte(thedata);	//写入设备ID及读信
//	IIC_stop();
//}

//初始化
//初始化为指定模式
//void MMA845x_init()
//{	
//  gpio_init (PTE24,GPO,0);
//  gpio_init (PTE25,GPO,0);
//  
////  DELAY_MS(1000);
////	MMA845x_writebyte(CTRL_REG1,ASLP_RATE_20MS+DATA_RATE_5MS);	
////	delaymm();
////	MMA845x_writebyte(XYZ_DATA_CFG_REG, FULL_SCALE_2G); //2G
////	delaymm();
////	MMA845x_writebyte(CTRL_REG1, ACTIVE_MASK);          //激活状态
////	delaymm();
////    DELAY_MS(1000);
////    
////    ITG3200_writebyte(REG_DLPF_FS,0x18);//设置ITG3200
////        delaymm();
//}


///*************************************************************************
//*                           电子DIY工作室
//*
//*  函数名称：MMA8451_ITG3200_function
//*  功能说明：得到角度值和角速度值
//*  参数说明：AdColle      暂存结果的数组
//*  函数返回：无
//*  修改时间：2015-5-27
//*  备    注：
//*************************************************************************/
//void MMA8451_ITG3200_function0(u16 *AdColle,int angular)
//{
//	s16 angle0;//加速度计得到的角度值
//	s16 gyro0,Gyro0;//陀螺仪得到的角速度值
//	float angle1,gyro1;
//	
//	angle0= MMA845x_readbyte(MMA845x_OUT_Z_MSB)<<8;//得到高八位
//	angle0 |= MMA845x_readbyte(MMA845x_OUT_Z_LSB);//得到低八位
//	angle0>>=2;//14位精度 
//	angle0+=4000;
//	angle0>>=3;//让角速度值与角度值关联
//	
//	gyro0 = ITG3200_readbyte(REG_GYRO_YOUT_H)<<8;
//	gyro0 |= ITG3200_readbyte(REG_GYRO_YOUT_L);
//	gyro0>>=2;
//	gyro0=(int)(2.4*(-gyro0-26));//让角速度静止初值为0  并让角速度值与角度值关联 
//    gyro1=gyro0;   //把值赋给gyro1用于浮点运算
//    angle1=angle0;//把值赋给angle1用于浮点运算
//
//	////////////互补滤波///////////////
//	OUT0=OUT0+(gyro1*0.005);
//	error0=angle1-OUT0;
//	
//	OUT0=OUT0+error0*COEFF;        //OUT范围是后仰最大100--前倾最大900  
//	if(OUT0<100) OUT0=100;
//    else if(OUT0>900) OUT0=900;         
//
//	/////////////////////////////
//    Gyro0=gyro0+1000;
//    Gyro0>>=1;  //计算出角速度返回值
//    if(Gyro0<0) Gyro0=0;
//   	else if (Gyro0>999) Gyro0=999;
//	
//	AdColle[2]=(u16)angle0;//未融合的角度  
//	AdColle[1]=(u16)OUT0;//融合后的角度 
//	AdColle[0]=(u16)Gyro0;//角速度+1000保证数为正数   
//}
//
///*************************************************************************
//*                           电子DIY工作室
//*
//*  函数名称：MMA8451_ITG3200_function1
//*  功能说明：得到角度值和角速度值
//*  参数说明：AdColle      暂存结果的数组
//*  函数返回：无
//*  修改时间：2016-12-18
//*  备    注：
//*************************************************************************/
//
//int last_value_8452[3];
//void MMA8451_ITG3200_function1(u16 *AdColle,int angular)
//{
//	s16 angle0;//加速度计得到的角度值
//	s16 gyro0,Gyro0;//陀螺仪得到的角速度值
//	float angle1,gyro1;
//	angle0= I2C_ReadByte(I2C_MMA8452_DDR,MMA845x_OUT_Z_MSB)<<8;//得到高八位
//	angle0 |= I2C_ReadByte(I2C_MMA8452_DDR,MMA845x_OUT_Z_LSB);//得到低八位
//	angle0>>=2;//14位精度 
//	angle0+=4000;
//	angle0>>=3;//让角速度值与角度值关联
//
//	gyro0 = ITG3200_readbyte(REG_GYRO_YOUT_H)<<8;
//	gyro0 |= ITG3200_readbyte(REG_GYRO_YOUT_L);
//	gyro0>>=2;
//	gyro0=(int)(2.4*(-gyro0-26));//让角速度静止初值为0  并让角速度值与角度值关联 
//    gyro1=gyro0;   //把值赋给gyro1用于浮点运算
//    angle1=angle0;//把值赋给angle1用于浮点运算
//
//	////////////互补滤波///////////////
//	OUT0=OUT0-(gyro1*0.005);
//	error0=angle1-OUT0;
//	
//	OUT0=OUT0+error0*COEFF;        //OUT范围是后仰最大100--前倾最大900  
//	if(OUT0<100) OUT0=100;
//    else if(OUT0>900) OUT0=900;         
//
//	/////////////////////////////
//        
//    Gyro0=gyro0+1000;
//    Gyro0>>=1;  //计算出角速度返回值
//    if(Gyro0<0) Gyro0=0;
//   	else if (Gyro0>999) Gyro0=999;
//	//Gyro0=999-Gyro0;
//   
//   
//    
//	AdColle[2]=(u16)angle0;//未融合的角度  
//	AdColle[1]=999-(u16)OUT0;//融合后的角度 
//	AdColle[0]=(u16)Gyro0;//角速度+1000保证数为正数   
//
//}












