/*************************************************************************
*                             ����DIY������
*
* �ļ���       ��key.c
* ����         ��key��������
*
*
**********************************************************************************/	
#include "ALL_INIT.h"
#include "key.h"

int Press=0;//ȫ�ְ�������

/*************************************************************************
*                             ����DIY������
*
*  �������ƣ�key_init
*  ����˵������ʼ��key�˿ڣ�����IO��Ϊ���뷽������������Ϊ0
*  ����˵������������
*  �������أ���
*  �޸�ʱ�䣺2015-3-24   �Ѳ���
*  ��    ע��
*************************************************************************/
void    KEY_init(void)                                               // KEY��ʼ�� ����
{
  
//  port_init(UP,IRQ_RISING | PF | PULLUP );
//  port_init(DOWN,IRQ_RISING | PF | PULLUP );
//  port_init(LEFT,IRQ_RISING | PF | PULLUP );
//  port_init(RIGHT,IRQ_RISING | PF | PULLUP );
//  port_init(CENTER,IRQ_RISING | PF | PULLUP );
    gpio_init (UP, GPI ,0); 
    port_init_NoALT (UP,PULLUP ); 
    gpio_init (DOWN, GPI ,0); 
    port_init_NoALT (DOWN,PULLUP ); 
    gpio_init (LEFT, GPI ,0); 
    port_init_NoALT (LEFT,PULLUP ); 
    gpio_init (RIGHT, GPI ,0); 
    port_init_NoALT (RIGHT,PULLUP ); 
    gpio_init (CENTER,GPI ,0); 
    port_init_NoALT (CENTER, PULLUP ); 
}
    //UP           C0
    //DOWN         C1
    //LEFT         C2
    //RIGHT        C3
    //CENTER       B23
/*************************************************************************
*                             ����DIY������
*
*  �������ƣ�key_check
*  ����˵�������key״̬
*  ����˵������������
*  �������أ�����״̬
*  �޸�ʱ�䣺2012-10-7   �Ѳ���
*  ��    ע��
*************************************************************************/
int KEY_check(void)
{
  int get_key=0;
  if(gpio_get(UP)==0)
  get_key|=0x01;
  if(gpio_get(DOWN)==0)
  get_key|=0x02;
  if(gpio_get(LEFT)==0)
  get_key|=0x04;
  if(gpio_get(RIGHT)==0)
  get_key|=0x08;
  if(gpio_get(CENTER)==0)
  get_key|=0x10;
  return get_key;
}

int KEY(void)
{
  int get_key=0;
  if(gpio_get(UP)==0)
  get_key=1;
  if(gpio_get(DOWN)==0)
  get_key=2;
  if(gpio_get(LEFT)==0)
  get_key=3;
  if(gpio_get(RIGHT)==0)
  get_key=4;
  if(gpio_get(CENTER)==0)
  get_key=5;
  return get_key;
}

int LAST_PRESS=0;
int  Get_Press (void)
{	
    int Key_Time=250;
    static int Key_Time2=50;
	Press=0;
	Press=KEY();
    DELAY_MS(5);
    
	while(KEY()!=0&&Press==KEY())       //����300���볤��
    {
      if(Key_Change_Botton==1)
      {
       if(LAST_PRESS==KEY())
       {
         
         Key_Time2--;
         
         if(Key_Time2<=0)
         {
            Key_Change_Botton=2;
            Key_Time2=50;
         }
         
         if(Press!=0)Key_Beep(1);
         DELAY_MS(15);
         return Press;
       }
       else 
       {
         Key_Change_Botton=0;
         LAST_PRESS=0;
         Key_Time2=50;
       }
      }
      
      
      if(Key_Change_Botton==2)
      {
       if(LAST_PRESS==KEY())
       {
         if(Press!=0)Key_Beep(1);
         //DELAY_MS(1);
         return Press;
       }
       else 
       {
         Key_Change_Botton=0;
         LAST_PRESS=0;
         Key_Time2=50;
       }
      }
      
        --Key_Time;
      if(Key_Time<=0)
      {
            Key_Change_Botton=1;
            LAST_PRESS=KEY();
            Key_Time=Key_Time<0?0:Key_Time;
      }
      else 
      {
            Key_Change_Botton=0;
            Key_Time2=50;
      }
      DELAY_MS(1);//����
    }
    Key_Change_Botton=0;
    //Key_Time2=300;
    Key_Time2=50;
    if(Press!=0)Key_Beep(1);
	return Press;
}

