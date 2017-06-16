#include "IIIC.H"
#include "All_Init.h"
int read_buff[6];

void I2C_Start(void);
void I2C_Stop(void);
void I2C_Ack(void);
void I2C_NoAck(void);
void I2C_SendByte(uint8);
uint8 I2C_ReceiveByte(void);
void I2C_Delay(uint16);

/*
 * I2C_Init
 * ��ʼ��I2C��������
 */
void I2C_Init(void)
{ 
 gpio_init(PTB22,GPO,1);                     //��ʼ��SCL�ܽ�
 gpio_init(PTB23,GPO,1);                     //��ʼ��SDA�ܽ�
 MPU3050_Init();
 MMA8451_Init();
}
/*
 * I2C_WriteReg
 * дI2C�豸�Ĵ���
 */
void I2C_WriteReg(uint8 dev_addr,uint8 reg_addr , uint8 data)
{		
  I2C_Start();
  I2C_SendByte(dev_addr<<1);         
  I2C_SendByte(reg_addr );   
  I2C_SendByte(data);   
  I2C_Stop(); 
}
//���Ĵ���
uint8 I2C_ReadByte(uint8 dev_addr,uint8 reg_addr)
{
  uint8 data;
  I2C_Start();
  I2C_SendByte( dev_addr<<1); 
  I2C_SendByte( reg_addr ); 
  I2C_Start();	
  I2C_SendByte((dev_addr<<1)+1); 
  data= I2C_ReceiveByte();
  I2C_NoAck();
  I2C_Stop();
  return data;
}

//���Ĵ���
int16 I2C_ReadWord(uint8 dev_addr,uint8 reg_addr)
{
  char h,l;
  I2C_Start();
  I2C_SendByte( dev_addr<<1); 
  I2C_SendByte( reg_addr); 
  I2C_Start();	
  I2C_SendByte((dev_addr<<1)+1); 
  h= I2C_ReceiveByte();
  I2C_Ack();
  l= I2C_ReceiveByte();
  I2C_NoAck();
  I2C_Stop();
  return (h<<8)+l;
}

void I2C_ReadGryo(uint8 dev_addr,uint8 reg_addr,int16 *x,int16 *y)
{
  char h,l;
  I2C_Start();
  I2C_SendByte( dev_addr<<1); 
  I2C_SendByte( reg_addr); 
  I2C_Start();	
  I2C_SendByte((dev_addr<<1)+1); 
  h= I2C_ReceiveByte();
  I2C_Ack();
  l= I2C_ReceiveByte();
  I2C_Ack();
  *x=(h<<8)+l;
  h= I2C_ReceiveByte();
  I2C_Ack();
  l= I2C_ReceiveByte();
  I2C_Ack();
  h= I2C_ReceiveByte();
  I2C_Ack();
  l= I2C_ReceiveByte();
  I2C_NoAck();
  *y=(h<<8)+l;
  I2C_Stop();
}
/*
 * I2C_Start
 * I2C��ʼ�źţ��ڲ�����
 */
void I2C_Start(void)
{
  I2C_SDA_OUT();
  I2C_DELAY();
  I2C_DELAY();
  I2C_SDA_O=1; 
  I2C_SCL=1;
  I2C_DELAY();
  I2C_DELAY();
  I2C_SDA_O=0; 
  I2C_DELAY();
  I2C_DELAY();
  I2C_SCL=0;
  I2C_DELAY();
  I2C_DELAY();
}

/*
 * I2C_Stop
 * I2Cֹͣ�źţ��ڲ�����
 */
 void I2C_Stop(void)
{ 
    I2C_SDA_O=0;
    I2C_SCL=0; 
  I2C_DELAY();
  I2C_DELAY();
    I2C_SCL=1;
  I2C_DELAY();
  I2C_DELAY();
    I2C_SDA_O=1;
  I2C_DELAY();
  I2C_DELAY();
    I2C_SCL=0;
}

/*
 * I2C_Stop
 * I2CӦ���źţ��ڲ�����
 */
void I2C_Ack(void)
{	
  I2C_SCL=0;
  I2C_DELAY();
  
  I2C_SDA_O=0;
  I2C_DELAY();
  
  I2C_SCL=1;
  I2C_DELAY();
  
  I2C_SCL=0;
  I2C_DELAY();
}

/*
 * I2C_NoAck
 * I2C��Ӧ���źţ��ڲ�����
 */
 void I2C_NoAck(void)
{	
  I2C_SCL=0;
  I2C_DELAY();
  I2C_SDA_O=1;
  I2C_DELAY();
  I2C_SCL=1;
  I2C_DELAY();
  I2C_SCL=0;
  I2C_DELAY();
}


/*
 * I2C_SendByte
 * I2C�������ݣ��ڲ�����
 */
void I2C_SendByte(uint8 data) 
{
  uint8 i=8;
  while(i--)
  {
    I2C_SCL=0;
    if(data&0x80)
      I2C_SDA_O=1; 
    else 
      I2C_SDA_O=0;   
    data<<=1;
    I2C_DELAY();
    I2C_SCL=1;
    I2C_DELAY();
  }
  I2C_SCL=0;
  I2C_DELAY();
  I2C_SDA_I=1;
  I2C_DELAY();
  I2C_SCL=1; 
  I2C_DELAY();
  I2C_SCL=0;
}

/*
 * I2C_SendByte
 * I2C�������ݣ��ڲ�����
 */
 uint8 I2C_ReceiveByte(void)  
{ 
  uint8 i=8;
  uint8 ReceiveByte=0;
  
  I2C_SDA_O=1;	
  I2C_SDA_IN();	
  
  while(i--)
  {
    ReceiveByte<<=1;      
    I2C_SCL=0;
    I2C_DELAY();
    I2C_SCL=1;
    I2C_DELAY();	
    if(I2C_SDA_I)
    {
      ReceiveByte|=0x01;
    }
    
  }
  I2C_SDA_OUT();
  I2C_SCL=0;
  
  return ReceiveByte;
}

/*
 * I2C_SendByte
 * I2C��ʱ�������ڲ�����
 */
void I2C_Delay(uint16 i)
{	
  while(i) 
    i--; 
}

/******************���Z����ٶ�******************/
int16 Get_Z_Acc()
{
  int16 temp;
  temp=I2C_ReadWord(I2C_MMA8451_ADR,0X05);
  return temp;
}


/******************���Z����ٶ�******************/
int16 Get_Y_Acc()
{
  int16 temp;
  temp=I2C_ReadWord(I2C_MMA8451_ADR,0X03);
  return temp;
}

/******************���Z����ٶ�******************/
int16 Get_X_Acc()
{
  int16 temp;
  temp=I2C_ReadWord(I2C_MMA8451_ADR,0X01);
  return temp;
}


/*****************���y����ٶ�*****************/
int16 Get_Y_Gyro()
{
  int16 temp; 
  temp=I2C_ReadWord(I2C_MPU3050_ADR,0X1f);
  return temp;
}

/*****************���z����ٶ�*****************/
int16 Get_Z_Gyro()
{
  int16 temp; 
  temp=I2C_ReadWord(I2C_MPU3050_ADR,0X21);
  return temp;
}



/*****************���x����ٶ�*****************/
int16 Get_X_Gyro()
{
  int16 temp;
  temp=I2C_ReadWord(I2C_MPU3050_ADR,0X1D);
  return temp;
}

void MPU3050_Init()
{
 I2C_WriteReg(I2C_MPU3050_ADR,0x3E , 0X80); //��λMPU3050
 DELAY_MS(5);
 I2C_WriteReg(I2C_MPU3050_ADR,0x15,  0);    //��������Ƶ
 DELAY_MS(5);
 I2C_WriteReg(I2C_MPU3050_ADR,0x16 , 0x11);  //��������8kHz&&������Χ��1000��
 DELAY_MS(5);
 I2C_WriteReg(I2C_MPU3050_ADR,0x17 , 0);    //�������ж�
 DELAY_MS(5);
 I2C_WriteReg(I2C_MPU3050_ADR,0x3E , 0X00); //����MPU3050
}

void MMA8451_Init()
{
  
  
 gpio_init (PTE24,GPO,0);
 gpio_init (PTE25,GPO,0);
 
//DELAY_MS(1000);
  
 
 I2C_WriteReg(0x38>>1,CTRL_REG1,ASLP_RATE_20MS+DATA_RATE_5MS);  //0Ϊ+-2g��1Ϊ+-4g��2Ϊ+-8g
 DELAY_MS(5);
 I2C_WriteReg(0x38>>1,XYZ_DATA_CFG_REG, FULL_SCALE_2G);  // ʹ�ܵ�ͨ�˲�
 DELAY_MS(5);
 I2C_WriteReg(0x38>>1,CTRL_REG1 , ACTIVE_MASK); //0x2aΪ���ƼĴ���1 ����mma8451
 DELAY_MS(5);
 
 
// I2C_WriteReg(0x38>>1,0x0E, 1);  //0Ϊ+-2g��1Ϊ+-4g��2Ϊ+-8g
// DELAY_MS(5);
// I2C_WriteReg(0x38>>1,0x0F, 0X10);  // ʹ�ܵ�ͨ�˲�
// DELAY_MS(5);
// I2C_WriteReg(0x38>>1,0x2A , 1); //0x2aΪ���ƼĴ���1 ����mma8451
// DELAY_MS(5);
// 
 ITG3200_writebyte(REG_DLPF_FS,0x18);//����ITG3200
 
// DELAY_MS(1000);
 
// 
//MMA845x_writebyte(CTRL_REG1,ASLP_RATE_20MS+DATA_RATE_5MS);	
//delaymm();
//MMA845x_writebyte(XYZ_DATA_CFG_REG, FULL_SCALE_2G); //2G
//delaymm();
//MMA845x_writebyte(CTRL_REG1, ACTIVE_MASK);          //����״̬
//delaymm();
// 
 
 
 
 
 
 
 
 
}
	
