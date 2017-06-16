#ifndef __IIC_H__
#define __IIC_H__


#define SDA PTE24_OUT
#define SCL PTE25_OUT
#define SDAIN PTE24_IN
#define ack 1      //主应答
#define no_ack 0   //从应答

void IIC_start(void);
void IIC_stop(void);
void IIC_ack_main(char ack_main);
void send_byte(unsigned char c);
unsigned char read_byte(void);
void send_to_byte(unsigned char ad_main,unsigned char c);
void send_to_nbyte(unsigned char ad_main,unsigned char ad_sub,unsigned char *buf,unsigned char num);
void read_from_byte(unsigned char ad_main,unsigned char *buf);
void read_from_nbyte(unsigned char ad_main,unsigned char ad_sub,unsigned char *buf,unsigned char num);
void delaymm();


#endif