#ifndef __All_INT_H__
#define __All_INT_H__


//控制部分函数
//直立相关
extern void Get_Angle(void);
extern void Angle_Control();  
extern void Angle_Calculate();

//速度相关
extern void Get_Speed();   //5ms采集一次速度
extern void Speed_Control();
extern void Speed_Control_Output();
extern void Set_Pwm(int Left,int Right);
extern uint8 SpeedCount;    //速度节拍控制

//转向相关
extern void RoadType_Distinguish();
extern void Get_Y_Gyro();
extern void Direction_Control(); 
extern void Direction_Control_Output();
extern float  Turn_Out_Filter(float turn_out);    //转向控制输出滤波
extern uint8 DirectionCount;//转向节拍控制
extern float  Middle_Err_Filter(float middle_err);    //中心偏差滤波    
extern void SSet_Pwm(int Left,int Right);


//综合控制
//extern void Moto_Out();

//其他
extern void Get_Adc_Battery(void);

#endif