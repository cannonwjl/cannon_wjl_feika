#include "All_Init.h"



//控制部分函数
//直立相关
void Get_Angle(void);
__ramfunc void Angle_Control();  
__ramfunc void Angle_Calculate();
int Mid_Err[5],Mid_ERRRR[5];
float Turn_Speed=0;
int Turn_Out=0;
float DirectionControlOutNew;
float DirectionControlOutOld;
float Car_Angle  =0;//净角度值
float Angle_Speed=0;//净角速度值






//速度相关
__ramfunc void Get_Speed();   //5ms采集一次速度
__ramfunc void Speed_Control();
__ramfunc void Speed_Control_Output();
uint8 SpeedCount=0;    //速度节拍控制
int CoL=0;
int CoR=0;

int SpeedMini=0;//低速方案
int SpeedMid =0; //高速方案

float CAR_SEND_SPEED_I=0.0;
float CAR_SEND_SPEED_ERR     =0.0;
float CAR_SEND_SPEED         =0.0;


void Set_Pwm(int Left,int Right);

//转向相关
uint8 DirectionCount=0;//转向节拍控制
void RoadType_Distinguish();
//void Get_Y_Gyro();
__ramfunc void Direction_Control(); 
//void Get_Y_Gyro();
__ramfunc void Direction_Control_Output();
float  Turn_Out_Filter(float turn_out);    //转向控制输出滤波
float  Middle_Err_Filter(float middle_err);    //中心偏差滤波    
//综合控制
__ramfunc void Moto_Out();
float  LeftMotorOut,RightMotorOut;   //电机输出量


//其他
void Get_Adc_Battery(void);


/////////////////////////////////参数声明结束///////////////////////////////////


/******读取电池电压值******/
void Get_Adc_Battery(void)
{


return ;
}

/////////////////////////////车体直立部分控制代码///////////////////////////////
/*****读取陀螺仪加速度计信息*****/
//原始值
void Get_Angle(void)
{



return ;
}

/*****处理陀螺仪加速度计******/
//融合后的值
int VIIII=0;
__ramfunc void Angle_Calculate(void)
{
    MMA8451_ITG3200_function1(AAngleArrySCI,angular);
    
//    Variable[0]=AAngleArrySCI[0];
//    Variable[1]=AAngleArrySCI[1];
//    Variable[2]=1000-AAngleArrySCI[2];
    //Variable[3]=99;
    //
    ////ShiBoQi_View=Angle_Speed-450;
    //
    //
    //VIIII=VIIII>20000?20000:VIIII;
    //Write_ShiBoQi2_Save(VIIII,ShiBoQi_View,&VIIII);  
    //
    //VIIII++;  
    //  
    //  
    //Variable[4]=Get_Z_Gyro();
    
//    Variable[5]= Get_X_Acc();
//    Variable[6]= Get_Y_Acc();

//    Send_Begin();
//    Send_Variable();
    Car_Angle   =AAngleArrySCI[1];      //获取角度净误差
    Angle_Speed =AAngleArrySCI[0];     //获取角速度净误差
return ;
}

int LAST_Speed_Ang=0;
int LAST_CAR_ANG=0;


/*********角度PID计算**********/
//直立角度控制                      
__ramfunc void Angle_Control(void)
{
  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  float Car_A=0;
  Speed_Ang=(PID_SPEED.OUT)/10;//640平滑输出后是64，64转换成角度还需要/10=6.4(本次的)
//速度串联
  //Speed_Ang=Speed_Ang>50?50:Speed_Ang<-50?-50:Speed_Ang;
                            
float Anng=0;   


//if(Debug_CarAngPrt&&(Car_Angle>anglenum+120||Car_Angle<anglenum-60))
//CAR_PROTECT=1;

//Anng= (anglenum-Speed_Ang );
Anng= (anglenum);
Anng=Anng>anglenum+70? anglenum+70: Anng<anglenum-30?anglenum-30:Anng;
  
//             当前的角度值 - 预设的平衡值 +速度控制算出来的值  
  Car_A=     Car_Angle-Anng;//         -anglenum                 +Speed_Ang; 
//           290       330         500
//Car_A的安全范围值-40 ~ 170

 //Car_A=Car_A<-50?-50:Car_A>170?170:Car_A;//角度限定在安全范围内
  
 PID_ANGLE.pout=PID_ANGLE.P*(Car_A);//Car_A;//
  
 PID_ANGLE.dout=PID_ANGLE.D*(Angle_Speed-angular);
//  if(ABS(Angle_Speed)>50&&ABS(Angle_Speed)<200)
//  {
//       PID_ANGLE.dout*=(1+(ABS(Angle_Speed)-50.0)/50.0);
//  }
  PID_ANGLE.OUT= PID_ANGLE.pout+ PID_ANGLE.dout;
return ;
}

///////////////////////////////直立部分控制结束/////////////////////////////////

/////////////////////////////////速度控制部分///////////////////////////////////
//定义车轮前进一米的编码器脉冲数
#define CAR_SPEED_TO_PoINT 51
/*******获取车体速度********/
__ramfunc void Get_Speed(void)
{
static int Get_Speed_V1=0;
static int Get_Speed_m=0;

//CoL =  (gpio_get(PTB19)>0? -DMA_count_get(DMA_CH14):DMA_count_get(DMA_CH14));//读出脉冲个数;
CoR =DMA_count_get(DMA_CH4);//:-DMA_count_get(DMA_CH4));//读出脉冲个数;

DMA_count_reset(DMA_CH4);       //清零
//DMA_count_reset(DMA_CH14);      //清零

CarSpeed=(CoR);//+CoL);//这个地方/2的话，精度会有问题

CoL=0;
CoR=0;
return ;
}

/********速度控制计算*******/
 __ramfunc void Speed_Control(void)
{  
static float PreError[20]={0},setspeed=0;
register  float  SpeedError=0,Speed_temp=0,SpeedFilterRatio=0.85;
register  uint8 i;

//现在车起步，0 的时候
   Speed_temp=SetSpeed;//+2*(((Seagull_Mid- ShiZiFind) -25));
   setspeed = Speed_temp*(1-SpeedFilterRatio)+setspeed*SpeedFilterRatio;
   
   SpeedError=CarSpeed-setspeed;//起步的时候  640
    
   if(Ran_Erase_Speed_I)
   {
         for(i=0;i<=19;i++)
         {
           PreError[i]=0; 
         }
      Ran_Erase_Speed_I=0;
   }
   
   
  //求出最近20个偏差的总和作为积分项
   SpeedControlIntegral=0;
   for(i=0;i<19;i++)
   {
     PreError[i]=PreError[i+1]; 
     SpeedControlIntegral+=PreError[i];
   }
    PreError[19]=SpeedError;
    SpeedControlIntegral+=PreError[19];

  
    //速度更新
  SpeedControlOutOld=SpeedControlOutNew;
  //                                        1            (  640)        +         0          *              120         
  SpeedControlOutNew=PID_SPEED.P*SpeedError+PID_SPEED.I*SpeedControlIntegral;   //PI控制	
  //SpeedControlOutNew=(PID_SPEED.P*SpeedError+PID_SPEED.I*SpeedControlIntegral);   //PI控制

return ;
}

float Last_OutPut=0;
float SOutPut=0;
/*******速度平滑输出*******/
__ramfunc void Speed_Control_Output(void)
{
register  float fValue; 
  fValue = SpeedControlOutNew - SpeedControlOutOld; 
  PID_SPEED.OUT = fValue * (SpeedCount+1)/10+SpeedControlOutOld;  
return ;
}

/////////////////////////////////速度控制结束///////////////////////////////////

/////////////////////////////////转弯控制开始///////////////////////////////////
/*********获取左电机电流数据**********/
void Get_Left_Ad(void)
{


return ;
}

/*********获取右电机电流数据**********/
void Get_Right_Ad(void)
{


return ;
}



/************方向控制计算*************/
__ramfunc void Direction_Control(void)
{
// -20<= MID_ERROR <=20
MID_ERROR=-(int)(3*(2.608*(result/1000)*(result/1000)*(result/1000) + 0.1714*(result/1000)*(result/1000) + 0.006882*result + 15.72-15));//18.5高度
//=Mid_v;

int Turn_Error=MID_ERROR;
register float Turn_Pv=0.0;
register float Turn_Dv=0.0;

static float Last_TSpeed=0;
//Limit Turn_Error in -20 to 20
Turn_Error=Turn_Error<-30?-30:Turn_Error>30?30:Turn_Error;

Mid_Err[4]=Mid_Err[3];
Mid_Err[3]=Mid_Err[2];
Mid_Err[2]=Mid_Err[1];
Mid_Err[1]=Mid_Err[0];
Mid_Err[0]=Turn_Error;

Turn_Speed=Mid_Err[0]-Mid_Err[1];

//Turn_Speed=Get_Z_Gyro()*0.001;

//
Turn_Pv=PID_TURN.P;//1+PID_TURN.P*0.1*  Fuzzy(Turn_Error,Turn_Speed);

//Turn_Pv=Turn_Pv<0?0:Turn_Pv;

Turn_Dv=PID_TURN.D;//1+PID_TURN.D*0.1*  Fuzzy(Turn_Speed,Turn_Speed-Last_TSpeed);

//Turn_Dv=Turn_Dv<0?0:Turn_Dv;


//      转弯P           动态P         误差+ 补偿
PID_TURN.pout=(Turn_Pv )*(Turn_Error);
PID_TURN.dout=(Turn_Dv )* Turn_Speed;   //+10*Fuzzy(Turn_Speed,Turn_Speed-Last_TSpeed)

Turn_Out=PID_TURN.pout+PID_TURN.dout;
Turn_Out=Turn_Out_Filter(Turn_Out);         //转动输出滤波 

Last_TSpeed=Turn_Speed;

if(ABS(Turn_Error)<1)//如果转弯偏差小于1的话，说明此时车身已经回正，不需要各种转弯控制
{
DirectionControlOutNew=DirectionControlOutOld;
}
else 
{
  DirectionControlOutNew=Turn_Out;
}

return ;
}
/************方向平滑输出*************/
__ramfunc void Direction_Control_Output(void)
{
  float fValue; 
  fValue =DirectionControlOutNew -DirectionControlOutOld; 
  PID_TURN.OUT=fValue * (DirectionCount+1)/5+DirectionControlOutOld;
}

/**************转向滤波***************/

float  Turn_Out_Filter(float turn_out)    //转向控制输出滤波      
{
 register float Turn_Out_Filtered; 
  static float Pre1_Error[4]; 
  Pre1_Error[3]=Pre1_Error[2];
  Pre1_Error[2]=Pre1_Error[1];
  Pre1_Error[1]=Pre1_Error[0];
  Pre1_Error[0]=turn_out;
  Turn_Out_Filtered=Pre1_Error[0]*0.4+Pre1_Error[1]*0.3+Pre1_Error[2]*0.2+Pre1_Error[3]*0.1;
  return Turn_Out_Filtered;
}

/*中心偏差滤波*/
float  Middle_Err_Filter(float middle_err)    //中心偏差滤波      
{
 register float Middle_Err_Fltered; 
  static float Pre3_Error[4]; 
  Pre3_Error[3]=Pre3_Error[2];
  Pre3_Error[2]=Pre3_Error[1];
  Pre3_Error[1]=Pre3_Error[0];
  Pre3_Error[0]=middle_err;
  Middle_Err_Fltered=Pre3_Error[0]*0.4+Pre3_Error[1]*0.3+Pre3_Error[2]*0.2+Pre3_Error[3]*0.1;
  return Middle_Err_Fltered;
}

volatile int Forward_Safe_Angle=300;
volatile int Backward_Safe_Angle=30;
/////////////////////////////////转弯控制结束///////////////////////////////////

//综合控制
int MotoOut=0;



void Set_Moto(int A)
{
  if(Car_Run==0)
  {
      ftm_pwm_duty(FTM0, FTM_CH3,0);
      ftm_pwm_duty(FTM0, FTM_CH2,0);
  }
  else if (A<0)
  {
      ftm_pwm_duty(FTM0, FTM_CH3,-A);
      ftm_pwm_duty(FTM0, FTM_CH2,0);
  }
  else
  {
      ftm_pwm_duty(FTM0, FTM_CH3,0);
      ftm_pwm_duty(FTM0, FTM_CH2,A);
  } 
  
}

void Duoji_Out(int A)
{
  //FTM_PWM_ChangeDuty(HW_FTM1, HW_FTM_CH1, (4200+resultturn));    //    A车4200   resultturn -650  650   B车3500   +800  -600

  A=A>600?600:A<-600?-600:A;
  
  ftm_pwm_duty(FTM1, FTM_CH1,2500+A);
}


/*************电机输出****************/
__ramfunc void Moto_Out(void)
{
  register float sum=0;
    
  //速度控制输出限幅
//  if(PID_SPEED.OUT>PID_ANGLE.P*Forward_Safe_Angle)//如果车子前倾，则车模的速度控制输出为正，反之为负
//  PID_SPEED.OUT=PID_ANGLE.P*Forward_Safe_Angle;                       //已经倾斜到到安全角度了
//  if(PID_SPEED.OUT<-PID_ANGLE.P*Backward_Safe_Angle)
//  PID_SPEED.OUT=-PID_ANGLE.P*Backward_Safe_Angle;
  
//  if(PID_TURN.P==0)
//  PID_TURN.OUT=0;
//  if(PID_ANGLE.P==0)
//  PID_ANGLE.OUT=0;
//    
  PID_SPEED.OUT=PID_SPEED.OUT>600?600:PID_SPEED.OUT<-600?-600:PID_SPEED.OUT;
    
//  sum=PID_SPEED.OUT;//PID_ANGLE.OUT+
//  LeftMotorOut=sum+PID_TURN.OUT;   //计算输出值
//  RightMotorOut=sum-PID_TURN.OUT;  
  
  MotoOut=PID_SPEED.OUT;
  
  Set_Moto((int)MotoOut);
  Duoji_Out((int)PID_TURN.OUT);
  
  //Set_Pwm(LeftMotorOut,RightMotorOut);
return ;
}

int OLD_PWM_LEFT=0,OLD_PWM_RIGHT=0;

void Set_Pwm(int Left,int Right)
{
  Left=Left>=990?990:Left<=-990?-990:Left;
  Right=Right>=990?990:Right<=-990?-990:Right;
  
if(Car_Run==0)
{
    ftm_pwm_duty(    FTM0, FTM_CH4, 0 );
    ftm_pwm_duty(    FTM0, FTM_CH5, 0 );
    ftm_pwm_duty(    FTM0, FTM_CH6, 0 );
    ftm_pwm_duty(    FTM0, FTM_CH7, 0 );
return ;
}

if(OLD_PWM_LEFT!=Left)
{
  if (Left<0)
  {
  ftm_pwm_duty(    FTM0, FTM_CH4, 0 );
  ftm_pwm_duty(    FTM0, FTM_CH5, 0 );
  ftm_pwm_duty(    FTM0, FTM_CH4, -Left+30 );
  ftm_pwm_duty(    FTM0, FTM_CH5, 0 );
  }
  else 
  {
  ftm_pwm_duty(    FTM0, FTM_CH5, 0 );
  ftm_pwm_duty(    FTM0, FTM_CH4, 0 );
  ftm_pwm_duty(    FTM0, FTM_CH5, Left+30 );
  ftm_pwm_duty(    FTM0, FTM_CH4, 0 );
  }
  
  OLD_PWM_LEFT=Left;
}

if(OLD_PWM_RIGHT!=Right)
{
  if(Right>=0)
  {
    ftm_pwm_duty(    FTM0, FTM_CH6, 0 );
    ftm_pwm_duty(    FTM0, FTM_CH7, 0 );
    ftm_pwm_duty(    FTM0, FTM_CH6, Right+30 );
    ftm_pwm_duty(    FTM0, FTM_CH7, 0 );
  }
  else 
  {
    ftm_pwm_duty(    FTM0, FTM_CH7, 0 );
    ftm_pwm_duty(    FTM0, FTM_CH6, 0 );
    ftm_pwm_duty(    FTM0, FTM_CH7, -Right+30 );
    ftm_pwm_duty(    FTM0, FTM_CH6, 0 );
  }
  OLD_PWM_RIGHT=Right;
}

return ;
}

void SSet_Pwm(int Left,int Right)
{
 if(Right>=0)
  {
    ftm_pwm_duty(    FTM0, FTM_CH6, 0 );
    ftm_pwm_duty(    FTM0, FTM_CH7, 0 );
    ftm_pwm_duty(    FTM0, FTM_CH6, Right+30 );
    ftm_pwm_duty(    FTM0, FTM_CH7, 0 );
  }
  else 
  {
    ftm_pwm_duty(    FTM0, FTM_CH7, 0 );
    ftm_pwm_duty(    FTM0, FTM_CH6, 0 );
    ftm_pwm_duty(    FTM0, FTM_CH7, -Right+30 );
    ftm_pwm_duty(    FTM0, FTM_CH6, 0 );
  }

  if (Left<0)
  {
  ftm_pwm_duty(    FTM0, FTM_CH4, 0 );
  ftm_pwm_duty(    FTM0, FTM_CH5, 0 );
  ftm_pwm_duty(    FTM0, FTM_CH4, -Left+50 );
  ftm_pwm_duty(    FTM0, FTM_CH5, 0 );
  }
  else 
  {
  ftm_pwm_duty(    FTM0, FTM_CH5, 0 );
  ftm_pwm_duty(    FTM0, FTM_CH4, 0 );
  ftm_pwm_duty(    FTM0, FTM_CH5, Left+50 );
  ftm_pwm_duty(    FTM0, FTM_CH4, 0 );
  }

}







