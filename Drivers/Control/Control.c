#include "All_Init.h"



//���Ʋ��ֺ���
//ֱ�����
void Get_Angle(void);
__ramfunc void Angle_Control();  
__ramfunc void Angle_Calculate();
int Mid_Err[5],Mid_ERRRR[5];
float Turn_Speed=0;
int Turn_Out=0;
float DirectionControlOutNew;
float DirectionControlOutOld;
float Car_Angle  =0;//���Ƕ�ֵ
float Angle_Speed=0;//�����ٶ�ֵ






//�ٶ����
__ramfunc void Get_Speed();   //5ms�ɼ�һ���ٶ�
__ramfunc void Speed_Control();
__ramfunc void Speed_Control_Output();
uint8 SpeedCount=0;    //�ٶȽ��Ŀ���
int CoL=0;
int CoR=0;

int SpeedMini=0;//���ٷ���
int SpeedMid =0; //���ٷ���

float CAR_SEND_SPEED_I=0.0;
float CAR_SEND_SPEED_ERR     =0.0;
float CAR_SEND_SPEED         =0.0;


void Set_Pwm(int Left,int Right);

//ת�����
uint8 DirectionCount=0;//ת����Ŀ���
void RoadType_Distinguish();
//void Get_Y_Gyro();
__ramfunc void Direction_Control(); 
//void Get_Y_Gyro();
__ramfunc void Direction_Control_Output();
float  Turn_Out_Filter(float turn_out);    //ת���������˲�
float  Middle_Err_Filter(float middle_err);    //����ƫ���˲�    
//�ۺϿ���
__ramfunc void Moto_Out();
float  LeftMotorOut,RightMotorOut;   //��������


//����
void Get_Adc_Battery(void);


/////////////////////////////////������������///////////////////////////////////


/******��ȡ��ص�ѹֵ******/
void Get_Adc_Battery(void)
{


return ;
}

/////////////////////////////����ֱ�����ֿ��ƴ���///////////////////////////////
/*****��ȡ�����Ǽ��ٶȼ���Ϣ*****/
//ԭʼֵ
void Get_Angle(void)
{



return ;
}

/*****���������Ǽ��ٶȼ�******/
//�ںϺ��ֵ
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
    Car_Angle   =AAngleArrySCI[1];      //��ȡ�ǶȾ����
    Angle_Speed =AAngleArrySCI[0];     //��ȡ���ٶȾ����
return ;
}

int LAST_Speed_Ang=0;
int LAST_CAR_ANG=0;


/*********�Ƕ�PID����**********/
//ֱ���Ƕȿ���                      
__ramfunc void Angle_Control(void)
{
  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  float Car_A=0;
  Speed_Ang=(PID_SPEED.OUT)/10;//640ƽ���������64��64ת���ɽǶȻ���Ҫ/10=6.4(���ε�)
//�ٶȴ���
  //Speed_Ang=Speed_Ang>50?50:Speed_Ang<-50?-50:Speed_Ang;
                            
float Anng=0;   


//if(Debug_CarAngPrt&&(Car_Angle>anglenum+120||Car_Angle<anglenum-60))
//CAR_PROTECT=1;

//Anng= (anglenum-Speed_Ang );
Anng= (anglenum);
Anng=Anng>anglenum+70? anglenum+70: Anng<anglenum-30?anglenum-30:Anng;
  
//             ��ǰ�ĽǶ�ֵ - Ԥ���ƽ��ֵ +�ٶȿ����������ֵ  
  Car_A=     Car_Angle-Anng;//         -anglenum                 +Speed_Ang; 
//           290       330         500
//Car_A�İ�ȫ��Χֵ-40 ~ 170

 //Car_A=Car_A<-50?-50:Car_A>170?170:Car_A;//�Ƕ��޶��ڰ�ȫ��Χ��
  
 PID_ANGLE.pout=PID_ANGLE.P*(Car_A);//Car_A;//
  
 PID_ANGLE.dout=PID_ANGLE.D*(Angle_Speed-angular);
//  if(ABS(Angle_Speed)>50&&ABS(Angle_Speed)<200)
//  {
//       PID_ANGLE.dout*=(1+(ABS(Angle_Speed)-50.0)/50.0);
//  }
  PID_ANGLE.OUT= PID_ANGLE.pout+ PID_ANGLE.dout;
return ;
}

///////////////////////////////ֱ�����ֿ��ƽ���/////////////////////////////////

/////////////////////////////////�ٶȿ��Ʋ���///////////////////////////////////
//���峵��ǰ��һ�׵ı�����������
#define CAR_SPEED_TO_PoINT 51
/*******��ȡ�����ٶ�********/
__ramfunc void Get_Speed(void)
{
static int Get_Speed_V1=0;
static int Get_Speed_m=0;

//CoL =  (gpio_get(PTB19)>0? -DMA_count_get(DMA_CH14):DMA_count_get(DMA_CH14));//�����������;
CoR =DMA_count_get(DMA_CH4);//:-DMA_count_get(DMA_CH4));//�����������;

DMA_count_reset(DMA_CH4);       //����
//DMA_count_reset(DMA_CH14);      //����

CarSpeed=(CoR);//+CoL);//����ط�/2�Ļ������Ȼ�������

CoL=0;
CoR=0;
return ;
}

/********�ٶȿ��Ƽ���*******/
 __ramfunc void Speed_Control(void)
{  
static float PreError[20]={0},setspeed=0;
register  float  SpeedError=0,Speed_temp=0,SpeedFilterRatio=0.85;
register  uint8 i;

//���ڳ��𲽣�0 ��ʱ��
   Speed_temp=SetSpeed;//+2*(((Seagull_Mid- ShiZiFind) -25));
   setspeed = Speed_temp*(1-SpeedFilterRatio)+setspeed*SpeedFilterRatio;
   
   SpeedError=CarSpeed-setspeed;//�𲽵�ʱ��  640
    
   if(Ran_Erase_Speed_I)
   {
         for(i=0;i<=19;i++)
         {
           PreError[i]=0; 
         }
      Ran_Erase_Speed_I=0;
   }
   
   
  //������20��ƫ����ܺ���Ϊ������
   SpeedControlIntegral=0;
   for(i=0;i<19;i++)
   {
     PreError[i]=PreError[i+1]; 
     SpeedControlIntegral+=PreError[i];
   }
    PreError[19]=SpeedError;
    SpeedControlIntegral+=PreError[19];

  
    //�ٶȸ���
  SpeedControlOutOld=SpeedControlOutNew;
  //                                        1            (  640)        +         0          *              120         
  SpeedControlOutNew=PID_SPEED.P*SpeedError+PID_SPEED.I*SpeedControlIntegral;   //PI����	
  //SpeedControlOutNew=(PID_SPEED.P*SpeedError+PID_SPEED.I*SpeedControlIntegral);   //PI����

return ;
}

float Last_OutPut=0;
float SOutPut=0;
/*******�ٶ�ƽ�����*******/
__ramfunc void Speed_Control_Output(void)
{
register  float fValue; 
  fValue = SpeedControlOutNew - SpeedControlOutOld; 
  PID_SPEED.OUT = fValue * (SpeedCount+1)/10+SpeedControlOutOld;  
return ;
}

/////////////////////////////////�ٶȿ��ƽ���///////////////////////////////////

/////////////////////////////////ת����ƿ�ʼ///////////////////////////////////
/*********��ȡ������������**********/
void Get_Left_Ad(void)
{


return ;
}

/*********��ȡ�ҵ����������**********/
void Get_Right_Ad(void)
{


return ;
}



/************������Ƽ���*************/
__ramfunc void Direction_Control(void)
{
// -20<= MID_ERROR <=20
MID_ERROR=-(int)(3*(2.608*(result/1000)*(result/1000)*(result/1000) + 0.1714*(result/1000)*(result/1000) + 0.006882*result + 15.72-15));//18.5�߶�
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


//      ת��P           ��̬P         ���+ ����
PID_TURN.pout=(Turn_Pv )*(Turn_Error);
PID_TURN.dout=(Turn_Dv )* Turn_Speed;   //+10*Fuzzy(Turn_Speed,Turn_Speed-Last_TSpeed)

Turn_Out=PID_TURN.pout+PID_TURN.dout;
Turn_Out=Turn_Out_Filter(Turn_Out);         //ת������˲� 

Last_TSpeed=Turn_Speed;

if(ABS(Turn_Error)<1)//���ת��ƫ��С��1�Ļ���˵����ʱ�����Ѿ�����������Ҫ����ת�����
{
DirectionControlOutNew=DirectionControlOutOld;
}
else 
{
  DirectionControlOutNew=Turn_Out;
}

return ;
}
/************����ƽ�����*************/
__ramfunc void Direction_Control_Output(void)
{
  float fValue; 
  fValue =DirectionControlOutNew -DirectionControlOutOld; 
  PID_TURN.OUT=fValue * (DirectionCount+1)/5+DirectionControlOutOld;
}

/**************ת���˲�***************/

float  Turn_Out_Filter(float turn_out)    //ת���������˲�      
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

/*����ƫ���˲�*/
float  Middle_Err_Filter(float middle_err)    //����ƫ���˲�      
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
/////////////////////////////////ת����ƽ���///////////////////////////////////

//�ۺϿ���
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
  //FTM_PWM_ChangeDuty(HW_FTM1, HW_FTM_CH1, (4200+resultturn));    //    A��4200   resultturn -650  650   B��3500   +800  -600

  A=A>600?600:A<-600?-600:A;
  
  ftm_pwm_duty(FTM1, FTM_CH1,2500+A);
}


/*************������****************/
__ramfunc void Moto_Out(void)
{
  register float sum=0;
    
  //�ٶȿ�������޷�
//  if(PID_SPEED.OUT>PID_ANGLE.P*Forward_Safe_Angle)//�������ǰ�㣬��ģ���ٶȿ������Ϊ������֮Ϊ��
//  PID_SPEED.OUT=PID_ANGLE.P*Forward_Safe_Angle;                       //�Ѿ���б������ȫ�Ƕ���
//  if(PID_SPEED.OUT<-PID_ANGLE.P*Backward_Safe_Angle)
//  PID_SPEED.OUT=-PID_ANGLE.P*Backward_Safe_Angle;
  
//  if(PID_TURN.P==0)
//  PID_TURN.OUT=0;
//  if(PID_ANGLE.P==0)
//  PID_ANGLE.OUT=0;
//    
  PID_SPEED.OUT=PID_SPEED.OUT>600?600:PID_SPEED.OUT<-600?-600:PID_SPEED.OUT;
    
//  sum=PID_SPEED.OUT;//PID_ANGLE.OUT+
//  LeftMotorOut=sum+PID_TURN.OUT;   //�������ֵ
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







