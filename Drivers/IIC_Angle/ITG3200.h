#ifndef __ITG3200_H__
#define __ITG3200_H__




#define ITG3200_IIC_ADDR  0x68    // 0110 1000



#define REG_WHO_AM_I      0x00
#define REG_SAMPLRT_DIV   0x15
#define REG_DLPF_FS       0x16
#define REG_INT_CFG       0x17
#define REG_INT_STATUS    0x1A
#define REG_TEMP_OUT_H    0x1B
#define REG_TEMP_OUT_L    0x1C
#define REG_GYRO_XOUT_H   0x1D
#define REG_GYRO_XOUT_L   0x1E
#define REG_GYRO_YOUT_H   0x1F
#define REG_GYRO_YOUT_L   0x20
#define REG_GYRO_ZOUT_H   0x21
#define REG_GYRO_ZOUT_L   0x22
#define REG_PWR_MGM       0x3E




/*unsigned char ReadID(void);

unsigned char SetScaleRange(void);

unsigned int ReadGyroOut(unsigned int * pwGyroX,
unsigned int * pwGyroY, unsigned int * pwGyroZ);*/

unsigned char ITG3200_readbyte(u8 address);
void ITG3200_writebyte(unsigned char address, unsigned char thedata);


#endif

