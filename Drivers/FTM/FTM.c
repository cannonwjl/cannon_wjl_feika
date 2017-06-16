/******************** (C) COPYRIGHT 2011 Ұ��Ƕ��ʽ���������� ********************
 * �ļ���       ��FTM.c
 * ����         ��FTM��ʱ����Ŀǰ�� PWM�����벶׽����
 *
 * ʵ��ƽ̨     ��Ұ��kinetis������
 * ��汾       ��
 * Ƕ��ϵͳ     ��
 *
 * ����         ��Ұ��Ƕ��ʽ����������
 * �Ա���       ��http://firestm32.taobao.com
 * ����֧����̳ ��http://www.ourdev.cn/bbs/bbs_list.jsp?bbs_id=1008
**********************************************************************************/

#include "common.h"
#include "gpio.h"      //IO�ڲ���
#include "sysinit.h"
#include "FTM.h"
#include "drivers_cfg.h"


/*********** FTMn_CHn PWM�����ʼ������ ***********/
/*
        --FTM0--  --FTM1--  --FTM2--
CH0       PTC1      PTA8      PTA10
CH1       PTC2      PTA9      PTA11
CH2       PTC3       ��         ��
CH3       PTC4       ��         ��
CH4       PTD4       ��         ��
CH5       PTD5       ��         ��
CH6       PTD6       ��         ��
CH7       PTD7       ��         ��

����ʾû��
*/
volatile struct FTM_MemMap *FTMx[3] = {FTM0_BASE_PTR, FTM1_BASE_PTR, FTM2_BASE_PTR}; //��������ָ�����鱣�� FTMn �ĵ�ַ

extern int countR;
extern s16 countL;
/*************************************************************************
*                             Ұ��Ƕ��ʽ����������
*
*  �������ƣ�FTM_PWM_init
*  ����˵������ʼ��FTM��PWM���ܲ�����Ƶ�ʡ�ռ�ձȡ�����ͨ�����ռ�ձȡ�
*  ����˵����FTMn        ģ��ţ�FTM0��  FTM1��  FTM2��
*            CHn         ͨ���ţ�CH0~CH7��
*            freq        Ƶ�ʣ���λΪHz��
*            duty        ռ�ձ�
*  �������أ���
*  �޸�ʱ�䣺2012-2-14
*  ��    ע��ͬһ��FTM����ͨ����PWMƵ����һ���ģ���3��FTM�����������3����ͬƵ��PWM
*************************************************************************/
void FTM_PWM_init(FTMn ftmn, CHn ch, u32 freq, u32 duty)
{
    u32 clk_hz = (periph_clk_khz * 1000) >> 1;       //busƵ��/2
    u16 mod;
    u8 sc_ps;
    u16 cv;

    ASSERT( (ftmn == FTM0) || ( (ftmn == FTM1 || ftmn == FTM2 ) && (ch <= CH1))   ); //��鴫�ݽ�����ͨ���Ƿ���ȷ
    ASSERT( freq <= (clk_hz >> 1) );              //�ö��Լ�� Ƶ�� �Ƿ����� ,Ƶ�ʱ���С��ʱ�Ӷ���֮һ

    /*       ����Ƶ������        */
    mod = (clk_hz >> 16 ) / freq ;
    for(sc_ps = 0; (mod >> sc_ps) >= 1; sc_ps++);
    if(freq < 1000)sc_ps++;
    mod = (clk_hz >> sc_ps) / freq;
    cv = (duty * (mod - 0 + 1)) / FTM_PRECISON;

    /******************* ����ʱ�� �� ����IO��*******************/
    //ע�����������Ȼ����������ʱ��ɾ���ܶ�û�õĲ��֣���Ӱ���ٶ�
    switch(ftmn)
    {
    case FTM0:
        SIM_SCGC6 |= SIM_SCGC6_FTM0_MASK;                           //ʹ��FTM0ʱ��
        switch(ch)
        {
        case CH0:
            //if(FTM0_CH0 == PTC1)
            //{
                SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK;
                PORT_PCR_REG(PORTC_BASE_PTR, 1) = PORT_PCR_MUX(4);  // PTC1
          /*  }
            else if(FTM0_CH0 == PTA3)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 3) = PORT_PCR_MUX(3);  // PTA3
            }
            else
            {
                assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
            }*/
            break;

        case CH1:
            //if(FTM0_CH1 == PTC2)
            //{
                SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK;
                PORT_PCR_REG(PORTC_BASE_PTR, 2) = PORT_PCR_MUX(4);  // PTC2
            /*}
            else if(FTM0_CH1 == PTA4)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 4) = PORT_PCR_MUX(3);  // PTA4
            }
            else
            {
                assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
            }*/
            break;

        case CH2:
           // if(FTM0_CH2 == PTC3)
           // {
                SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK;
                PORT_PCR_REG(PORTC_BASE_PTR, 3) = PORT_PCR_MUX(4);  // PTC3
           /* }
            else if(FTM0_CH2 == PTA5)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 5) = PORT_PCR_MUX(3);  // PTA5
            }
            else
            {
                assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
            }*/
            break;

        case CH3:
            //if(FTM0_CH3 == PTC4)
            //{
                SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK;
                PORT_PCR_REG(PORTC_BASE_PTR, 4) = PORT_PCR_MUX(4);  // PTC4
           /* }
            else if(FTM0_CH3 == PTA6)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 6) = PORT_PCR_MUX(3);  // PTA6
            }
            else
            {
                assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
            }*/
            break;

        case CH4:
           // if(FTM0_CH4 == PTD4)
           // {
                SIM_SCGC5 |= SIM_SCGC5_PORTD_MASK;
                PORT_PCR_REG(PORTD_BASE_PTR, 4) = PORT_PCR_MUX(4);  // PTD4
            /*}
            else if(FTM0_CH4 == PTA7)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 7) = PORT_PCR_MUX(3);  // PTA7
            }
            else
            {
                assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
            }*/
            break;

        case CH5:
            if(FTM0_CH5 == PTD5)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTD_MASK;
                PORT_PCR_REG(PORTD_BASE_PTR, 5) = PORT_PCR_MUX(4);  // PTD5
            }
            else if(FTM0_CH5 == PTA0)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 0) = PORT_PCR_MUX(3);  // PTA0
            }
            else
            {
                assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
            }
            break;

        case CH6:
            if(FTM0_CH6 == PTD6)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTD_MASK;
                PORT_PCR_REG(PORTD_BASE_PTR, 6) = PORT_PCR_MUX(4);  // PTD6
            }
            else if(FTM0_CH6 == PTA1)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 1) = PORT_PCR_MUX(3);  // PTA1
            }
            else
            {
                assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
            }
            break;

        case CH7:
            /*if(FTM0_CH7 == PTD7)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTD_MASK;
                PORT_PCR_REG(PORTD_BASE_PTR, 7) = PORT_PCR_MUX(4);  // PTD7
            }
            else if(FTM0_CH7 == PTA2)
            {*/
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 2) = PORT_PCR_MUX(3);  // PTA2
           /* }
            else
            {
                assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
            }*/
            break;
        default:
            return;
        }
        break;

    case FTM1:
        SIM_SCGC6 |= SIM_SCGC6_FTM1_MASK;                           //ʹ��FTM1ʱ��
        switch(ch)
        {
        case CH0:
            if(FTM1_CH0 == PTA8)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 8) = PORT_PCR_MUX(3);  // PTA8
            }
            else if(FTM1_CH0 == PTA12)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 12) = PORT_PCR_MUX(3);  // PTA12
            }
            else if(FTM1_CH0 == PTB0)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
                PORT_PCR_REG(PORTB_BASE_PTR, 0) = PORT_PCR_MUX(3);  // PTB0
            }
            else
            {
                assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
            }
            break;


        case CH1:
            if(FTM1_CH1 == PTA9)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 9) = PORT_PCR_MUX(3);  // PTA9
            }
            else if(FTM1_CH1 == PTA13)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 13) = PORT_PCR_MUX(3);  // PTA13
            }
            else if(FTM1_CH1 == PTB1)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
                PORT_PCR_REG(PORTB_BASE_PTR, 1) = PORT_PCR_MUX(3);  // PTB1
            }
            else
            {
                assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
            }
            break;

        default:
            return;
        }
        break;
    case FTM2:
        SIM_SCGC3 |= SIM_SCGC3_FTM2_MASK;                           //ʹ��FTM2ʱ��
        switch(ch)
        {
        case CH0:
            if(FTM2_CH0 == PTA10)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 10) = PORT_PCR_MUX(3);  // PTA10
            }
            else if(FTM2_CH0 == PTB18)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 18) = PORT_PCR_MUX(3);  // PTB18
            }
            else
            {
                assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
            }
            break;

        case CH1:
            if(FTM2_CH1 == PTA11)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 11) = PORT_PCR_MUX(3);  // PTA11
            }
            else if(FTM2_CH1 == PTB19)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 19) = PORT_PCR_MUX(3);  // PTB19
            }
            else
            {
                assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
            }
            break;

        default:
            return;
        }
        break;
    default:
        break;
    }
    /******************** ѡ�����ģʽΪ ���ض���PWM *******************/
    //ͨ��״̬���ƣ�����ģʽ��ѡ�� ���ػ��ƽ
    FTM_CnSC_REG(FTMx[ftmn], ch) &= ~FTM_CnSC_ELSA_MASK;
    FTM_CnSC_REG(FTMx[ftmn], ch) = FTM_CnSC_MSB_MASK | FTM_CnSC_ELSB_MASK;
    //MSnB:MSnA = 1x
    // ELSnB:ELSnA = 10   High-true pulses  (clear Output on match)
    // ELSnB:ELSnA = 11   Low-true pulses   (set Output on match)
    // Edge-aligned PWM  ���ض���PWM��   ��k16 reference manual.pdf��  P944  ����  ��K60P144M100SF2RM.pdf��P1001


    /******************** ����ʱ�Ӻͷ�Ƶ ********************/
    FTM_SC_REG(FTMx[ftmn])    = FTM_SC_CPWMS_MASK | FTM_SC_PS(sc_ps) | FTM_SC_CLKS(1);  //û��ʹ������ж�
    FTM_CNTIN_REG(FTMx[ftmn]) = 0;                                                      // Channel (n) Value  �����������ȣ�(CnV - CNTIN).
    FTM_MOD_REG(FTMx[ftmn])   = mod;                                                    //Modulo valueģ��, EPWM������Ϊ ��MOD - CNTIN + 0x0001
    FTM_CNTIN_REG(FTMx[ftmn]) = 0;                                                      //Counter Initial Value ��������ʼ��ֵ
    FTM_CnV_REG(FTMx[ftmn], ch) = cv;
    FTM_CNT_REG(FTMx[ftmn])   = 0;                                                      //��������ֻ�е�16λ����

}




/*************************************************************************
*                             Ұ��Ƕ��ʽ����������
*
*  �������ƣ�FTM_PWM_Duty
*  ����˵��������ͨ��ռ�ձ�
*  ����˵����FTMn        ģ��ţ�FTM0��  FTM1��  FTM2��
*            CHn         ͨ���ţ�CH0~CH7��
*            duty        ռ�ձ�
*  �������أ���
*  �޸�ʱ�䣺2012-2-14
*  ��    ע��
*************************************************************************/
void FTM_PWM_Duty(FTMn ftmn, CHn ch, u32 duty)
{
    u32 cv;
    u32 mod;

    ASSERT( (ftmn == FTM0) || ( (ftmn == FTM1 || ftmn == FTM2 ) && (ch <= CH1)) ); //��鴫�ݽ�����ͨ���Ƿ���ȷ
    ASSERT(duty <= FTM_PRECISON);     //�ö��Լ�� ռ�ձ��Ƿ����

    //ռ�ձ� = (CnV-CNTIN)/(MOD-CNTIN+1)
    mod = FTM_MOD_REG(FTMx[ftmn]);        //��ȡ MOD ��ֵ

    cv = (duty * (mod - 0 + 1)) / FTM_PRECISON;

    // ����FTMͨ��ֵ
    FTM_CnV_REG(FTMx[ftmn], ch) = cv;

}

/*************************************************************************
*
*  �������ƣ�PWM_SET
*  ����˵��������ռ�ձ�
*  �������أ���
*  �޸�ʱ�䣺2015-4-10
*  ��    ע��
*************************************************************************/



void PWM_SET(int pwm_left,int pwm_right) 
{
	pwm_left+=5;
	pwm_right+=5;
    
//    if (countR>=450)
//    {
//       if (pwm_left>0) pwm_left+=2;
//       else pwm_left-=1;
//    }
//    
//    if (countR>=400)
//    {
//       if (pwm_left>0) pwm_left+=1;
//       else pwm_left-=1;
//    }
    
    
//    if (countL<=300)
//    {
//       if (pwm_right>0) pwm_right+=8;
//       else pwm_right-=8;
//    }
//     if (countL<=450)
//     {
//       if (pwm_right>0) pwm_right+=4;
//       else pwm_right-=4;
//     }
    
    pwm_right-=4;
    
    if(pwm_left>  430)
		pwm_left=  430;
	if(pwm_left< -430)
		pwm_left= -430;
	if(pwm_right> 430)
		pwm_right= 430;
	if(pwm_right<-430)
		pwm_right=-430;
    

//    if (countR>300)
//    {
//        if (pwm_left>0) pwm_left-=2;
//       else pwm_left+=2;
//    }


	if(pwm_left<0)
	FTM_PWM_Duty(FTM0 , CH0,430+pwm_left);
	else
	FTM_PWM_Duty(FTM0 , CH0,570+pwm_left);
    
	if(pwm_right<0)
	FTM_PWM_Duty(FTM0 , CH1,430+pwm_right);
	else
	FTM_PWM_Duty(FTM0 , CH1,570+pwm_right);	
}


/*************************************************************************
*                             Ұ��Ƕ��ʽ����������
*
*  �������ƣ�FTM_PWM_freq
*  ����˵��������FTM��Ƶ��
*  ����˵����FTMn        ģ��ţ�FTM0��  FTM1��  FTM2��
*            freq        Ƶ�ʣ���λΪHz��
*  �������أ���
*  �޸�ʱ�䣺2012-2-14
*  ��    ע��ͬһ��FTM����ͨ����PWMƵ����һ���ģ���3��FTM�����������3����ͬƵ��PWM
*************************************************************************/
void FTM_PWM_freq(FTMn ftmn, u32 freq)             //����FTM��Ƶ��
{
    u32 clk_hz = (periph_clk_khz * 1000) >> 1;        //busƵ��/2
    u32 mod;
    u8 sc_ps;


    ASSERT( freq <= (clk_hz >> 1) );              //�ö��Լ�� Ƶ�� �Ƿ����� ,Ƶ�ʱ���С��ʱ�Ӷ���֮һ

    /*       ����Ƶ������        */
    mod = (clk_hz >> 16 ) / freq ;
    for(sc_ps = 0; (mod >> sc_ps) >= 1; sc_ps++);
    mod = (clk_hz >> sc_ps) / freq;


    /******************** ����ʱ�Ӻͷ�Ƶ ********************/
    FTM_SC_REG(FTMx[ftmn])    = FTM_SC_CPWMS_MASK | FTM_SC_PS(sc_ps) | FTM_SC_CLKS(1);  //û��ʹ������ж�
    FTM_CNTIN_REG(FTMx[ftmn]) = 0;                                                      // Channel (n) Value  �����������ȣ�(CnV - CNTIN).
    FTM_MOD_REG(FTMx[ftmn])   = mod;                                                    //Modulo valueģ��, EPWM������Ϊ ��MOD - CNTIN + 0x0001
    FTM_CNTIN_REG(FTMx[ftmn]) = 0;                                                      //Counter Initial Value ��������ʼ��ֵ
    FTM_CNT_REG(FTMx[ftmn])   = 0;                                                      //��������ֻ�е�16λ����
}




//////////////////////////////// ����Ϊ���PWM  //////////////////////////////////////////

//////////////////////////////// ����Ϊ���벶׽ //////////////////////////////////////////

/*************************************************************************
*                             Ұ��Ƕ��ʽ����������
*
*  �������ƣ�FTM_Input_init
*  ����˵�������벶׽��ʼ������
*  ����˵����FTMn        ģ��ţ�FTM0��  FTM1��  FTM2��
*            CHn         ͨ���ţ�CH0~CH7��
*            Input_cfg   ���벶׽���ã�Rising��Falling��Rising_or_Falling�������ز�׽���½��ز�׽�������ز�׽
*  �������أ���
*  �޸�ʱ�䣺2012-1-26
*  ��    ע��CH0~CH3����ʹ�ù�������δ����⹦��
*************************************************************************/
void FTM_Input_init(FTMn ftmn, CHn ch, Input_cfg cfg)
{
    ASSERT( (ftmn == FTM0) || ( (ftmn == FTM1 || ftmn == FTM2 ) && (ch <= CH1)) ); //��鴫�ݽ�����ͨ���Ƿ���ȷ

    /******************* ����ʱ�� �� ����IO��*******************/
    //ע�����������Ȼ����������ִ�еľͼ������
    switch(ftmn)
    {
    case FTM0:
        SIM_SCGC6 |= SIM_SCGC6_FTM0_MASK;                           //ʹ��FTM0ʱ��
        switch(ch)
        {
        case CH0:
            if(FTM0_CH0 == PTC1)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK;
                PORT_PCR_REG(PORTC_BASE_PTR, 1) = PORT_PCR_MUX(4);  // PTC1
            }
            else if(FTM0_CH0 == PTA3)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 3) = PORT_PCR_MUX(3);  // PTA3
            }
            else
            {
                assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
            }
            break;

        case CH1:
            if(FTM0_CH1 == PTC2)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK;
                PORT_PCR_REG(PORTC_BASE_PTR, 2) = PORT_PCR_MUX(4);  // PTC2
            }
            else if(FTM0_CH1 == PTA4)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 4) = PORT_PCR_MUX(3);  // PTA4
            }
            else
            {
                assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
            }
            break;

        case CH2:
            if(FTM0_CH2 == PTC3)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK;
                PORT_PCR_REG(PORTC_BASE_PTR, 3) = PORT_PCR_MUX(4);  // PTC3
            }
            else if(FTM0_CH2 == PTA5)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 5) = PORT_PCR_MUX(3);  // PTA5
            }
            else
            {
                assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
            }
            break;

        case CH3:
            if(FTM0_CH3 == PTC4)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK;
                PORT_PCR_REG(PORTC_BASE_PTR, 4) = PORT_PCR_MUX(4);  // PTC4
            }
            else if(FTM0_CH3 == PTA6)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 6) = PORT_PCR_MUX(3);  // PTA6
            }
            else
            {
                assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
            }
            break;

        case CH4:
            if(FTM0_CH4 == PTD4)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTD_MASK;
                PORT_PCR_REG(PORTD_BASE_PTR, 4) = PORT_PCR_MUX(4);  // PTD4
            }
            else if(FTM0_CH4 == PTA7)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 7) = PORT_PCR_MUX(3);  // PTA7
            }
            else
            {
                assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
            }
            break;

        case CH5:
           /* if(FTM0_CH5 == PTD5)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTD_MASK;
                PORT_PCR_REG(PORTD_BASE_PTR, 5) = PORT_PCR_MUX(4);  // PTD5
            }
            else if(FTM0_CH5 == PTA0)
            {*/
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 0) = PORT_PCR_MUX(3);  // PTA0
           /* }
            else
            {
                assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
            }*/
            break;

        case CH6:
          /*  if(FTM0_CH6 == PTD6)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTD_MASK;
                PORT_PCR_REG(PORTD_BASE_PTR, 6) = PORT_PCR_MUX(4);  // PTD6
            }
            else if(FTM0_CH6 == PTA1)
            {*/
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 1) = PORT_PCR_MUX(3);  // PTA1
            /*}
            else
            {
                assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
            }*/
            break;

        case CH7:
            if(FTM0_CH7 == PTD7)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTD_MASK;
                PORT_PCR_REG(PORTD_BASE_PTR, 7) = PORT_PCR_MUX(4);  // PTD7
            }
            else if(FTM0_CH7 == PTA2)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 2) = PORT_PCR_MUX(3);  // PTA2
            }
            else
            {
                assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
            }
            break;
        default:
            return;
        }
        break;

    case FTM1:
        SIM_SCGC6 |= SIM_SCGC6_FTM1_MASK;                           //ʹ��FTM1ʱ��
        switch(ch)
        {
        case CH0:
            if(FTM1_CH0 == PTA8)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 8) = PORT_PCR_MUX(3);  // PTA8
            }
            else if(FTM1_CH0 == PTA12)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 12) = PORT_PCR_MUX(3);  // PTA12
            }
            else if(FTM1_CH0 == PTB0)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
                PORT_PCR_REG(PORTB_BASE_PTR, 0) = PORT_PCR_MUX(3);  // PTB0
            }
            else
            {
                assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
            }
            break;


        case CH1:
            if(FTM1_CH1 == PTA9)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 9) = PORT_PCR_MUX(3);  // PTA9
            }
            else if(FTM1_CH1 == PTA13)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 13) = PORT_PCR_MUX(3);  // PTA13
            }
            else if(FTM1_CH1 == PTB1)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
                PORT_PCR_REG(PORTB_BASE_PTR, 1) = PORT_PCR_MUX(3);  // PTB1
            }
            else
            {
                assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
            }
            break;

        default:
            return;
        }
        break;
    case FTM2:
        SIM_SCGC3 |= SIM_SCGC3_FTM2_MASK;                           //ʹ��FTM2ʱ��
        switch(ch)
        {
        case CH0:
            if(FTM2_CH0 == PTA10)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 10) = PORT_PCR_MUX(3);  // PTA10
            }
            else if(FTM2_CH0 == PTB18)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 18) = PORT_PCR_MUX(3);  // PTB18
            }
            else
            {
                assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
            }
            break;

        case CH1:
            if(FTM2_CH1 == PTA11)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 11) = PORT_PCR_MUX(3);  // PTA11
            }
            else if(FTM2_CH1 == PTB19)
            {
                SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
                PORT_PCR_REG(PORTA_BASE_PTR, 19) = PORT_PCR_MUX(3);  // PTB19
            }
            else
            {
                assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
            }
            break;

        default:
            return;
        }
        break;
    default:
        break;
    }


    /******************* ����Ϊ���벶׽���� *******************/
    switch(cfg)
    {
    case Rising:    //�����ش���
        FTM_CnSC_REG(FTMx[ftmn], 0) |=  ( FTM_CnSC_ELSA_MASK  | FTM_CnSC_CHIE_MASK );                   //��1
        FTM_CnSC_REG(FTMx[ftmn], 0) &= ~( FTM_CnSC_ELSB_MASK  | FTM_CnSC_MSB_MASK | FTM_CnSC_MSA_MASK); //��0
        break;

    case Falling:   //�½��ش���
        FTM_CnSC_REG(FTMx[ftmn], 0) |= (FTM_CnSC_ELSB_MASK  | FTM_CnSC_CHIE_MASK );                    //��1
        FTM_CnSC_REG(FTMx[ftmn], 0) &= ~( FTM_CnSC_ELSA_MASK | FTM_CnSC_MSB_MASK | FTM_CnSC_MSA_MASK); //��0
        break;

    case Rising_or_Falling: //�����ء��½��ض�����
        FTM_CnSC_REG(FTMx[ftmn], 0) |=  ( FTM_CnSC_ELSB_MASK | FTM_CnSC_ELSA_MASK  | FTM_CnSC_CHIE_MASK ); //��1
        FTM_CnSC_REG(FTMx[ftmn], 0) &= ~( FTM_CnSC_MSB_MASK  | FTM_CnSC_MSA_MASK); //��0
        break;
    }

    FTM_SC_REG(FTMx[ftmn]) = FTM_SC_CLKS(0x1);       //System clock

    FTM_MODE_REG(FTMx[ftmn]) |= FTM_MODE_WPDIS_MASK;
    FTM_COMBINE_REG(FTMx[ftmn]) = 0;
    FTM_MODE_REG(FTMx[ftmn]) &= ~FTM_MODE_FTMEN_MASK;
    FTM_CNTIN_REG(FTMx[ftmn]) = 0;

    FTM_STATUS_REG(FTMx[ftmn]) = 0x00;               //���жϱ�־λ

    //�������벶׽�ж�
    enable_irq(78 - 16 + ftmn);
}
/*************************************************************************
*                            ������ӹ�����
*
*  �������ƣ�FTM_QUAD_init
*  ����˵������������ģʽ ��ʼ������
*  ����˵����FTMn        ģ��ţ� FTM1��  FTM2��
*            CHn         ͨ���ţ�CH0~CH1��
*  �������أ���
*  �޸�ʱ�䣺2014-6-25
*  ��    ע��CH0~CH3����ʹ�ù�������δ����⹦��
*************************************************************************/
void FTM_QUAD_init(FTMn ftmn,CHn ch)
{
  switch(ftmn)
  {
  case FTM1:
    SIM_SCGC6|=SIM_SCGC6_FTM1_MASK;                             //ʹ��FTM1ʱ��
    switch(ch)
    {
    case CH0:
      /*if(FTM1_CH0==PTA8)
      {
        SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
        PORT_PCR_REG(PORTA_BASE_PTR, 8) = PORT_PCR_MUX(6);  // PTA8
      }
      else if(FTM1_CH0==PTA12)
      {*/
        SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
        PORT_PCR_REG(PORTA_BASE_PTR, 12) = PORT_PCR_MUX(6);  // PTA12
     /* }
      else if(FTM1_CH0==PTB0)
      {
        SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
        PORT_PCR_REG(PORTB_BASE_PTR, 0) = PORT_PCR_MUX(6);  // PTB0
      }*/
      break;


    case CH1:
     /* if(FTM1_CH1==PTA9)
      {
        SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
        PORT_PCR_REG(PORTA_BASE_PTR, 9) = PORT_PCR_MUX(6);  // PTA9
      }
      else if(FTM1_CH1==PTA13)
      {*/
        SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
        PORT_PCR_REG(PORTA_BASE_PTR, 13) = PORT_PCR_MUX(6);  // PTA13
     /* }
      else if(FTM1_CH1==PTB1)
      {
        SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
        PORT_PCR_REG(PORTB_BASE_PTR, 1) = PORT_PCR_MUX(6);  // PTB1
      }*/
      break;

    default:
      return;
    }
    break;
  case FTM2:
    SIM_SCGC3 |= SIM_SCGC3_FTM2_MASK;                           //ʹ��FTM2ʱ��
    switch(ch)
    {
    case CH0:
      if(FTM2_CH0==PTA10)
      {
        SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
        PORT_PCR_REG(PORTA_BASE_PTR, 10) = PORT_PCR_MUX(6);  // PTA10
      }
      else if(FTM2_CH0==PTB18)
      {
        SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
        PORT_PCR_REG(PORTA_BASE_PTR, 18) = PORT_PCR_MUX(6);  // PTB18
      }break;

    case CH1:
      if(FTM2_CH1==PTA11)
      {
        SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
        PORT_PCR_REG(PORTA_BASE_PTR, 11) = PORT_PCR_MUX(6);  // PTA11
      }
      else if(FTM2_CH1==PTB19)
      {
        SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
        PORT_PCR_REG(PORTA_BASE_PTR, 19) = PORT_PCR_MUX(6);  // PTB19
      }break;

    default:
      return;
    }break;
  default:
    break;
  }
 // FTM_QDCTRL_QUADIR_MASK
  FTM_MODE_REG(FTMx[ftmn]) |= FTM_MODE_WPDIS_MASK|FTM_MODE_FTMEN_MASK;
  FTM_QDCTRL_REG(FTMx[ftmn]) &= ~FTM_QDCTRL_QUADMODE_MASK  ;//AB��ͬʱȷ������ͼ���ֵ
  FTM_CNTIN_REG(FTMx[ftmn])=0;//FTM0��������ʼֵΪ0
  FTM_MOD_REG(FTMx[ftmn])=65535;//����ֵ
  FTM_QDCTRL_REG(FTMx[ftmn]) |=FTM_QDCTRL_QUADEN_MASK;//����FTMn��������ģʽ
  FTM_MODE_REG(FTMx[ftmn]) |= FTM_MODE_FTMEN_MASK;   //FTMnEN=1
  FTM_CNT_REG(FTMx[ftmn])=0;

  FTM_SC_REG(FTMx[ftmn]) |= FTM_SC_CLKS(3);  //ѡ���ⲿʱ��

}
/*************************************************************************
*                            ������ӹ�����
*
*  �������ƣ�FTM_SpeedMeasure_init
*  ����˵������������ģʽ ��ʼ������
*  ����˵����FTMn        ģ��ţ� FTM1�� FTM2��
*            CHn         ͨ���ţ�CH0~CH1��
*  �������أ���
*  �޸�ʱ�䣺2014-6-25
*  ��    ע��CH0~CH3����ʹ�ù�������δ����⹦��
*************************************************************************/
void FTM_SpeedMeasure_init(void)
{
    PORTA_PCR12= PORT_PCR_MUX(7); // ��������A12����ΪFTM1_PHA����  
    PORTA_PCR13= PORT_PCR_MUX(7); // ��������A13����ΪFTM1_PHB����  
    SIM_SCGC6|=SIM_SCGC6_FTM1_MASK;//ʹ��FTM1ʱ��   
    FTM1_MODE |= FTM_MODE_WPDIS_MASK;//д������ֹ  
    FTM1_QDCTRL|=FTM_QDCTRL_QUADMODE_MASK;//AB��ͬʱȷ������ͼ���ֵ  
    FTM1_CNTIN=0;//FTM0��������ʼֵΪ0  
    FTM1_MOD=65535;//����ֵ  
    FTM1_QDCTRL|=FTM_QDCTRL_QUADEN_MASK;//����FTM1��������ģʽ  
    FTM1_MODE |= FTM_MODE_FTMEN_MASK;//FTM1EN=1    
    FTM1_CNT=0;
    
    PORTB_PCR19= PORT_PCR_MUX(6); // ��������B19����ΪFTM2_PHB����  
    PORTB_PCR18= PORT_PCR_MUX(6); // ��������B18����ΪFTM2_PHA����  
    SIM_SCGC3|=SIM_SCGC3_FTM2_MASK;//ʹ��FTM2ʱ��  
    FTM2_MODE |= FTM_MODE_WPDIS_MASK;//д������ֹ  
    FTM2_QDCTRL|=FTM_QDCTRL_QUADMODE_MASK;//AB��ͬʱȷ������ͼ���ֵ  
    FTM2_CNTIN=0;//FTM0��������ʼֵΪ0  
    FTM2_MOD=65535;//����ֵ  
    FTM2_QDCTRL|=FTM_QDCTRL_QUADEN_MASK;//����FTM2��������ģʽ  
    FTM2_MODE |= FTM_MODE_FTMEN_MASK;//FTM2EN=1    
    FTM2_CNT=0; 
}


void MotorEN(u8 set)//���ʹ��
{
	if(set)
	{
		GPIO_SET(PORTC,5,0);//�����ʹ��     
		GPIO_SET(PORTC,6,0);//�����ʹ�� 
	}
	else 
	{
		GPIO_SET(PORTC,5,1);//�ص��ʹ��     
		GPIO_SET(PORTC,6,1);//�ص��ʹ�� 
                
	}
}



























#if 0
/*************************************************************************
*
*  �������ƣ�PWM_SET
*  ����˵��������ռ�ձ�
*  �������أ���
*  �޸�ʱ�䣺2015-4-10/2016-2-28
*  ��    ע��
*  ��    �ߣ����ĺ�
*************************************************************************/
void PWM_SET(int pwm_left,int pwm_right)
{
  
  
// Motor_Mode==2  //ռ�ձ�50�ķ���

  
  #define Pwm_Left_CH  CH2
  #define Pwm_Right_CH CH1
  int Max =  900;//�����������ֵ
  int Min = -900;//����������Сֵ
  int Give=  5  ;//���岹����ֵ
  
  int Go  =  1  ;//����ǰ������Ϊ1
  int Back=  0  ;//������˶���
  
  int Left_GB=5 ;//A�������ת����IO
  int Right_GB=6;//B�������ת����IO

  pwm_left>=0 ? gpio_set(PORTC,Left_GB,Go) : gpio_set(PORTC,Left_GB ,Back);   //���pwm_left����0����ת������ת
  pwm_right>=0? gpio_set(PORTC,Right_GB,Go): gpio_set(PORTC,Right_GB,Back);//���pwm_right����0����ת������ת
  
  pwm_left  = pwm_left  > Max ? Max : (pwm_left  < Min ? Min: (pwm_left + Give));//pwm_left��ֵ�޶��벹��
  pwm_right = pwm_right > Max ? Max : (pwm_right < Min ? Min: (pwm_right+ Give));//pwm_right��ֵ�޶��벹��
  
  pwm_left =pwm_left >=0?pwm_left : - pwm_left ;//��pwm����ɾ���ֵ״̬������0��
  pwm_right=pwm_right>=0?pwm_right: - pwm_right;
  FTM_PWM_Duty(FTM0 , Pwm_Left_CH, pwm_left );
  FTM_PWM_Duty(FTM0 , Pwm_Right_CH,pwm_right);
  

// Motor_Mode==1//���䷽��
  
  
    #define Pwm_IOA_1  CH0
    #define Pwm_IOA_2  CH1
    #define Pwm_IOB_1  CH2
    #define Pwm_IOB_2  CH3
  
  
    int Max =  900;
    int Min = -900;
    int Give=  5  ;

  
  pwm_left = pwm_left>=Max?Max:pwm_left <=Min?Min:pwm_left+Give;//�����������ݷ�Χ
  pwm_right=pwm_right>=Max?Max:pwm_right<=Min?Min:pwm_right+Give;
  
//�����Ҫ��ת���Ƿ�ת   ��ת�Ļ�   ֱ�Ӱ�pwm������ת��һ��    ������һ��pwm���0  �����ת ���෴
  pwm_left>=0?FTM_PWM_Duty (FTM0,Pwm_IOA_1, pwm_left ),FTM_PWM_Duty(FTM0,Pwm_IOA_2,0):FTM_PWM_Duty(FTM0,Pwm_IOA_2,0-pwm_left) ,FTM_PWM_Duty(FTM0,Pwm_IOA_1,0);
  pwm_right>=0?FTM_PWM_Duty(FTM0,Pwm_IOB_1,pwm_right ),FTM_PWM_Duty(FTM0,Pwm_IOB_2,0):FTM_PWM_Duty(FTM0,Pwm_IOB_2,0-pwm_right),FTM_PWM_Duty(FTM0,Pwm_IOB_1,0);
  

  
}
#endif
