/****************************************************************************************
*
****************************************************************************************/

#ifndef __UI_H__
#define __UI_H__

int Case_UI (void); //���˵�
int View_1(void);
int Set_Ang(void);
int Updata(void);
int Car_Ctrl(void);
int Set(void);
int Plan_Choose(void);
int Debug_Button(void);

int View(void);

int View_Set (void);
int View_Plan(void);
int Car_Protect(void);

__ramfunc void Write_ShiBoQi2_Save(unsigned int Where,int Number,int * STR); //��������
int ShiBoQi_2(void);

int Show_Pic_T(void);//��ʾ͸�ӱ任���ͼ��
int Show_Pic(void);//��ʾ����ͷ״̬
#define MOTO PTC2_OUT

#define MOTO_ON MOTO=1
#define MOTO_OFF MOTO=0
#endif  //__LED_H__


