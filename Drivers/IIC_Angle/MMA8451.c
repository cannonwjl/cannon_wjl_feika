#include "common.h"
#include "all_init.h"
#include "MMA8451.h"
#include "ITG3200.h"
#include "IIC.h"
#include "iiic.h"



//#define COEFF 0.005//�ǶȺͽ��ٶȵ����ϵ��
//#define COEFF 0.004//�ǶȺͽ��ٶȵ����ϵ��

#define COEFF 0.005
float OUT0=100,error0=0;
                                  
/*************************************************************************
*                           ����DIY������
*
*  �������ƣ�MMA8451_ITG3200_function1
*  ����˵�����õ��Ƕ�ֵ�ͽ��ٶ�ֵ
*  ����˵����AdColle      �ݴ���������
*  �������أ���
*  �޸�ʱ�䣺2016-12-18
*  ��    ע��
*************************************************************************/

int last_value_8452[3];
void MMA8451_ITG3200_function1(float *AdColle,int angular)
{
	s16 angle0;//���ٶȼƵõ��ĽǶ�ֵ
	s16 gyro0,Gyro0;//�����ǵõ��Ľ��ٶ�ֵ
	float angle1,gyro1;
	angle0= I2C_ReadByte(I2C_MMA8452_DDR,MMA845x_OUT_Z_MSB)<<8;//�õ��߰�λ
	angle0 |= I2C_ReadByte(I2C_MMA8452_DDR,MMA845x_OUT_Z_LSB);//�õ��Ͱ�λ
	angle0>>=2;//14λ���� 
	angle0+=4000;
	angle0>>=3;//�ý��ٶ�ֵ��Ƕ�ֵ����

	gyro0 = ITG3200_readbyte(REG_GYRO_YOUT_H)<<8;
	gyro0 |= ITG3200_readbyte(REG_GYRO_YOUT_L);
	gyro0>>=2;
	gyro0=(int)(1.978*(-gyro0-26));//�ý��ٶȾ�ֹ��ֵΪ0  ���ý��ٶ�ֵ��Ƕ�ֵ����            //2.4
    gyro1=gyro0;   //��ֵ����gyro1���ڸ�������
    angle1=angle0;//��ֵ����angle1���ڸ�������

	////////////�����˲�///////////////
	OUT0=OUT0-(gyro1*0.005);//0.005
	error0=angle1-OUT0;
	
	OUT0=OUT0+error0*COEFF;        //OUT��Χ�Ǻ������100--ǰ�����900  
	if(OUT0<100) OUT0=100;
    else if(OUT0>900) OUT0=900;         

	/////////////////////////////
        
    Gyro0=gyro0+1000;
    Gyro0>>=1;  //��������ٶȷ���ֵ
    if(Gyro0<0) Gyro0=0;
   	else if (Gyro0>999) Gyro0=999;
	//Gyro0=999-Gyro0;
   
   
    
	AdColle[2]=(u16)angle0;//δ�ںϵĽǶ�  
	AdColle[1]=999-(u16)OUT0;//�ںϺ�ĽǶ� 
	AdColle[0]=(u16)Gyro0;//���ٶ�+1000��֤��Ϊ����   

}
//unsigned char MMA845x_readbyte(unsigned char address)
//{
//unsigned char ret = 100;
//	IIC_start();		//����
//	send_byte(MMA845x_IIC_ADDRESS);	//д���豸ID��д�ź�
//	send_byte(address);	//X��ַ
//	IIC_start();		//���·��Ϳ�ʼ
//	send_byte(0x39<<1);	//д���豸ID������
//	ret = read_byte();	//��ȡһ�ֽ�
//	IIC_stop();
//
//	return ret;
//}

//д��
//void MMA845x_writebyte(unsigned char address, unsigned char thedata)
//{
//	IIC_start();		//����
//	send_byte(MMA845x_IIC_ADDRESS);	//д���豸ID��д�ź�
//	send_byte(address);	//X��ַ
//	send_byte(thedata);	//д���豸ID������
//	IIC_stop();
//}

//��ʼ��
//��ʼ��Ϊָ��ģʽ
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
////	MMA845x_writebyte(CTRL_REG1, ACTIVE_MASK);          //����״̬
////	delaymm();
////    DELAY_MS(1000);
////    
////    ITG3200_writebyte(REG_DLPF_FS,0x18);//����ITG3200
////        delaymm();
//}


///*************************************************************************
//*                           ����DIY������
//*
//*  �������ƣ�MMA8451_ITG3200_function
//*  ����˵�����õ��Ƕ�ֵ�ͽ��ٶ�ֵ
//*  ����˵����AdColle      �ݴ���������
//*  �������أ���
//*  �޸�ʱ�䣺2015-5-27
//*  ��    ע��
//*************************************************************************/
//void MMA8451_ITG3200_function0(u16 *AdColle,int angular)
//{
//	s16 angle0;//���ٶȼƵõ��ĽǶ�ֵ
//	s16 gyro0,Gyro0;//�����ǵõ��Ľ��ٶ�ֵ
//	float angle1,gyro1;
//	
//	angle0= MMA845x_readbyte(MMA845x_OUT_Z_MSB)<<8;//�õ��߰�λ
//	angle0 |= MMA845x_readbyte(MMA845x_OUT_Z_LSB);//�õ��Ͱ�λ
//	angle0>>=2;//14λ���� 
//	angle0+=4000;
//	angle0>>=3;//�ý��ٶ�ֵ��Ƕ�ֵ����
//	
//	gyro0 = ITG3200_readbyte(REG_GYRO_YOUT_H)<<8;
//	gyro0 |= ITG3200_readbyte(REG_GYRO_YOUT_L);
//	gyro0>>=2;
//	gyro0=(int)(2.4*(-gyro0-26));//�ý��ٶȾ�ֹ��ֵΪ0  ���ý��ٶ�ֵ��Ƕ�ֵ���� 
//    gyro1=gyro0;   //��ֵ����gyro1���ڸ�������
//    angle1=angle0;//��ֵ����angle1���ڸ�������
//
//	////////////�����˲�///////////////
//	OUT0=OUT0+(gyro1*0.005);
//	error0=angle1-OUT0;
//	
//	OUT0=OUT0+error0*COEFF;        //OUT��Χ�Ǻ������100--ǰ�����900  
//	if(OUT0<100) OUT0=100;
//    else if(OUT0>900) OUT0=900;         
//
//	/////////////////////////////
//    Gyro0=gyro0+1000;
//    Gyro0>>=1;  //��������ٶȷ���ֵ
//    if(Gyro0<0) Gyro0=0;
//   	else if (Gyro0>999) Gyro0=999;
//	
//	AdColle[2]=(u16)angle0;//δ�ںϵĽǶ�  
//	AdColle[1]=(u16)OUT0;//�ںϺ�ĽǶ� 
//	AdColle[0]=(u16)Gyro0;//���ٶ�+1000��֤��Ϊ����   
//}
//
///*************************************************************************
//*                           ����DIY������
//*
//*  �������ƣ�MMA8451_ITG3200_function1
//*  ����˵�����õ��Ƕ�ֵ�ͽ��ٶ�ֵ
//*  ����˵����AdColle      �ݴ���������
//*  �������أ���
//*  �޸�ʱ�䣺2016-12-18
//*  ��    ע��
//*************************************************************************/
//
//int last_value_8452[3];
//void MMA8451_ITG3200_function1(u16 *AdColle,int angular)
//{
//	s16 angle0;//���ٶȼƵõ��ĽǶ�ֵ
//	s16 gyro0,Gyro0;//�����ǵõ��Ľ��ٶ�ֵ
//	float angle1,gyro1;
//	angle0= I2C_ReadByte(I2C_MMA8452_DDR,MMA845x_OUT_Z_MSB)<<8;//�õ��߰�λ
//	angle0 |= I2C_ReadByte(I2C_MMA8452_DDR,MMA845x_OUT_Z_LSB);//�õ��Ͱ�λ
//	angle0>>=2;//14λ���� 
//	angle0+=4000;
//	angle0>>=3;//�ý��ٶ�ֵ��Ƕ�ֵ����
//
//	gyro0 = ITG3200_readbyte(REG_GYRO_YOUT_H)<<8;
//	gyro0 |= ITG3200_readbyte(REG_GYRO_YOUT_L);
//	gyro0>>=2;
//	gyro0=(int)(2.4*(-gyro0-26));//�ý��ٶȾ�ֹ��ֵΪ0  ���ý��ٶ�ֵ��Ƕ�ֵ���� 
//    gyro1=gyro0;   //��ֵ����gyro1���ڸ�������
//    angle1=angle0;//��ֵ����angle1���ڸ�������
//
//	////////////�����˲�///////////////
//	OUT0=OUT0-(gyro1*0.005);
//	error0=angle1-OUT0;
//	
//	OUT0=OUT0+error0*COEFF;        //OUT��Χ�Ǻ������100--ǰ�����900  
//	if(OUT0<100) OUT0=100;
//    else if(OUT0>900) OUT0=900;         
//
//	/////////////////////////////
//        
//    Gyro0=gyro0+1000;
//    Gyro0>>=1;  //��������ٶȷ���ֵ
//    if(Gyro0<0) Gyro0=0;
//   	else if (Gyro0>999) Gyro0=999;
//	//Gyro0=999-Gyro0;
//   
//   
//    
//	AdColle[2]=(u16)angle0;//δ�ںϵĽǶ�  
//	AdColle[1]=999-(u16)OUT0;//�ںϺ�ĽǶ� 
//	AdColle[0]=(u16)Gyro0;//���ٶ�+1000��֤��Ϊ����   
//
//}












