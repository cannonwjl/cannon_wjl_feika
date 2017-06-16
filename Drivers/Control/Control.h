#ifndef __All_INT_H__
#define __All_INT_H__


//���Ʋ��ֺ���
//ֱ�����
extern void Get_Angle(void);
extern void Angle_Control();  
extern void Angle_Calculate();

//�ٶ����
extern void Get_Speed();   //5ms�ɼ�һ���ٶ�
extern void Speed_Control();
extern void Speed_Control_Output();
extern void Set_Pwm(int Left,int Right);
extern uint8 SpeedCount;    //�ٶȽ��Ŀ���

//ת�����
extern void RoadType_Distinguish();
extern void Get_Y_Gyro();
extern void Direction_Control(); 
extern void Direction_Control_Output();
extern float  Turn_Out_Filter(float turn_out);    //ת���������˲�
extern uint8 DirectionCount;//ת����Ŀ���
extern float  Middle_Err_Filter(float middle_err);    //����ƫ���˲�    
extern void SSet_Pwm(int Left,int Right);


//�ۺϿ���
//extern void Moto_Out();

//����
extern void Get_Adc_Battery(void);

#endif