/*****************************************************************
*
*****************************************************************/

#include "All_Init.h"

//������Ӧ�ļ�ֵ
#define K_DOWN       2
#define K_UP         1
#define K_RIGHT      4
#define K_LEFT       3
#define K_MID        5

/*ģ��Ҫ�޸ĵı���*/

float Vellue_Plan_Choose[31]={0};

/*ģ��4������*/
int StandPnum=0;
int ANGULAR=0;
int StandDnum=0;
int ANGSIAL=0;
int Num=0;

/********************************��ʾ����ͷ�ɼ���ͼƬ********************************/
int Show_Pic(void)
{
  int Show_Pic_Now_Ang=0;

  GUI_RectangleFill(0, 0, 128, 64, back_color);//������
  sprintf(Str_View,"Original");
  GUI_PutString(82,0,Str_View);

  while(1)
  {
	
    //camera_get_img(); //�ɼ�ͼ��
    //img_extract((u8*)Pic,(uint8*)imgbuff,600);//��ѹΪ��ά����
    
    //Search_3_Line();
    //Pic_Filter(Pic,1);
    
    
//    
//    Show_Pic_Now_Ang=Car_Angle-anglenum;
//    sprintf(Str_View,"A:%3d",Show_Pic_Now_Ang);
//    GUI_PutString(82,50,Str_View);
//    
//    sprintf(Str_View,"E:%3d",MID_ERROR);
//    GUI_PutString(82,20,Str_View);
//    
    Get_Press();
    if (Press==K_LEFT)
    {
    	GUI_RectangleFill(0, 0, 128, 64, back_color);
    	return 0;
    }
    if (Press==K_UP)
    {
    	GUI_RectangleFill(0, 0, 128, 64, back_color);
    	return 4;
    }
    
    if (Press==K_DOWN)
    {
    	GUI_RectangleFill(0, 0, 128, 64, back_color);
    	return 6;
    }
    GUI_LoadPic(0,0,imgbuff,80,60);
    
    
    
    
//    if(Old!=Time&&OLED_OPEN)//ͳ��֡��
//    {
//      
//      sprintf(Str_View,"T:%4d",Time);
//      GUI_PutString(82,30,Str_View);
// 
//      Old=Time;
//    }
  }
}

int UI_Pic_X_Line=40;
int UI_Pic_Y_Line=30;


int Show_Pic_Filter(void)
{
  int  Show_Lx=L_dx;
  int  Sowh_Ly=L_dy;
  int  Show_Rx=R_dx;
  int  Sowh_Ry=R_dy;
  
 // int R_ux=0,R_uy=0,R_dx=0,R_dy=0,L_dx=0,L_dy=0,L_ux=0,L_uy=0; 
  int  Show_Mx=Mid_X;
  int  Show_My=Mid_Y;
  
  
  
  
  int Move_Mode=0;
  int Show_Pic_Now_Ang=0;
  
  int16 Show_Line_center[60];     //��¼������������
  int Show_Error=0;
  
  GUI_RectangleFill(0, 0, 128, 64, back_color);//������
  sprintf(Str_View,"Filter");
  GUI_PutString(85,0,Str_View);

  int Key_Stop=0;
  
  while(1)
  {
    if(!Key_Stop)    //�Ҽ���ͣ�ɼ�ͼ��
    {
  	  //camera_get_img(); //�ɼ�ͼ��
      //img_extract((u8*)Pic,(uint8*)imgbuff,600);
      
      for(int i=60;i>=0;i--)
      Show_Line_center[i]=Search_1_Line_center[i];   //��������
      Show_Error= MID_ERROR;
    }
    //Pic_Find();  //����
    //Search_1();
    Show_Pic_Now_Ang=Car_Angle-anglenum;
    sprintf(Str_View,"E:%5d",(int)MID_ERROR);
    GUI_PutString(84,50,Str_View);
    
    if(!Move_Mode)
    {
    sprintf(Str_View,"E:%5d ",Show_Error);
    GUI_PutString(84,40,Str_View);
    }
    else
    {
    sprintf(Str_View,"E:%5d ",Show_Line_center[UI_Pic_Y_Line]-40);
    GUI_PutString(84,40,Str_View);
    }
    
    sprintf(Str_View,"X:%5d ",UI_Pic_X_Line);
    GUI_PutString(84,20,Str_View);
    
    sprintf(Str_View,"Y:%5d ",UI_Pic_Y_Line);
    GUI_PutString(84,30,Str_View);
    

    Get_Press();

    if (Press==K_LEFT&&!Move_Mode)
    {
        Press=0;
    	GUI_RectangleFill(0, 0, 128, 64, back_color);
    	return 0;
    }
    if (Press==K_RIGHT&&!Move_Mode)
    {
        Press=0;
    	Key_Stop++;
        Key_Stop%=2;
        
        if(Key_Stop==1)
        sendimg(imgbuff,600); 
        
    }
    if (Press==K_UP&&!Move_Mode)
    {
        Press=0;
    	GUI_RectangleFill(0, 0, 128, 64, back_color);
    	return 5;
    }
    if (Press==K_DOWN&&!Move_Mode)
    {
        Press=0;
    	GUI_RectangleFill(0, 0, 128, 64, back_color);
    	return 7;
    }
    if (Press==K_MID&&!Move_Mode)
    {
       Press=0;
       GUI_PutString(85,10," MOVE ");
       Move_Mode=1;//����ƶ��α��ģʽ
    }
    //////////////////////////////////////
    if (Press==K_LEFT&&Move_Mode)
    {
    	Press=0;
        UI_Pic_X_Line=UI_Pic_X_Line==0?79:UI_Pic_X_Line-1;
    }
    if (Press==K_RIGHT&&Move_Mode)
    {
    	Press=0;
        UI_Pic_X_Line=UI_Pic_X_Line==79?0:UI_Pic_X_Line+1;
    }
    if (Press==K_UP&&Move_Mode)
    {
    	Press=0;
        UI_Pic_Y_Line=UI_Pic_Y_Line==1?59:UI_Pic_Y_Line-1;
    }
    if (Press==K_DOWN&&Move_Mode)
    {
    	Press=0;
        UI_Pic_Y_Line=UI_Pic_Y_Line==59?1:UI_Pic_Y_Line+1;
    }
    if (Press==K_MID&&Move_Mode)
    {
       Press=0;
       Move_Mode=0;//�������ģʽ
       GUI_PutString(85,10,"      ");  
    }
    
//    if(Old!=Time&&OLED_OPEN)//ͳ��֡��
//    {
////      sprintf(Str_View,"Pic:%3d",picMany);
////      GUI_PutString(82,20,Str_View);
//      sprintf(Str_View,"Time:%2d",Time);
//      GUI_PutString(82,30,Str_View);
//      Old=Time;
//    }
   // GUI_CircleFill(L_dx,L_dy,4,0);
    //GUI_CircleFill
    
//    Show_Lx ,Sowh_Ly
//    Show_Rx ,Sowh_Ry
    
    
    
    GUI_Circle(Show_Lx ,Sowh_Ly,4,0); 
    GUI_Circle(Show_Rx ,Sowh_Ry,4,0); 
    GUI_Circle(Show_Mx ,Show_My,4,0);
    

     for(int i=0;i<60;i++)
    {
      if(i>=QianZhan)        //��ʾ�������������
      {
      Pic[i][(Show_Line_center[i])]=1;
      }
      
      for(int j=0;j<80;j++)
      {
        
//        if(i==UI_Pic_Y_Line||j==UI_Pic_X_Line)
//        {
//          Pic[i][j]=(i%2)?(j%2)?!Pic[i][j]:Pic[i][j]:(j%2)?Pic[i][j]:!Pic[i][j];
//        }
        
        
        GUI_Point(j,i,(i>=QianZhan&&j==(Show_Line_center[i]))?1: 
                  (i==UI_Pic_Y_Line||j==UI_Pic_X_Line)?((i%2)?(j%2)?
                  !Pic[i][j]:Pic[i][j]:(j%2)?
                  Pic[i][j]:!Pic[i][j]):Pic[i][j]);
        
         
         
      }
      
      
      
     
      
      GUI_Circle(Mid_X,Mid_Y,4,1);
      GUI_Circle(L_dx,L_dy,4,1);
      //GUI_CircleFill
      GUI_Circle(R_dx,R_dy,4,1);
      
      Show_Lx=L_dx;
      Sowh_Ly=L_dy;
      Show_Rx=R_dx;
      Sowh_Ry=R_dy;
      
      Show_Mx=Mid_X;
      Show_My=Mid_Y;
      
      
      
    }
    
  }
}




/********************************��ʾ������ͼƬ********************************/
int Show_Pic_T(void)
{
  GUI_RectangleFill(0, 0, 128, 64, back_color);//������
  
  sprintf(Str_View,"PicShow");
  GUI_PutString(81,0,Str_View);
  int Show_Pic_Now_Ang=0;
  
  int Move_Mode=0;
  while(1)
  {
    //camera_get_img(); //�ɼ�ͼ��
    //img_extract((u8*)Pic,(uint8*)imgbuff,600);
    //Search_1();
    //Pic_Search_Vertical();
    //Handle_Pic();
    //Search_HO();
    //Pic_Find();
    //Search_1();
//    Seagull_Left=0 ;
//    Seagull_Right=0;
//    Seagull_Mid=0  ;
//    Show_Pic_Now_Ang=Car_Angle-anglenum;
    
    sprintf(Str_View,"%02d %d %02d",Seagull_Left,In_Ring_Flag,Seagull_Right);      //
    GUI_PutString(84,50,Str_View);
    
//    if(!Move_Mode)
//    {
//    sprintf(Str_View,"E:%5d ",MID_ERROR);
//    GUI_PutString(84,40,Str_View);
//    }
//    else
    {
    sprintf(Str_View,"%d %02d %d",Last_Ring,Seagull_Mid,Rode_Ring);//Search_1_Line_center[UI_Pic_Y_Line]-40);
    GUI_PutString(87,40,Str_View);
    }
//    
    sprintf(Str_View,"X:%5d ",UI_Pic_X_Line);
    GUI_PutString(84,20,Str_View);
    
    sprintf(Str_View,"Y:%5d ",UI_Pic_Y_Line);
    GUI_PutString(84,30,Str_View);
    
    
    Get_Press();
   
    if (Press==K_LEFT&&!Move_Mode)
    {
        Press=0;
    	GUI_RectangleFill(0, 0, 128, 64, back_color);
    	return 0;
    }
    if (Press==K_UP&&!Move_Mode)
    {
        Press=0;
    	GUI_RectangleFill(0, 0, 128, 64, back_color);
    	return 6;
    }
    if (Press==K_DOWN&&!Move_Mode)
    {
        Press=0;
    	GUI_RectangleFill(0, 0, 128, 64, back_color);
    	return 1;
    }
    if (Press==K_MID&&!Move_Mode)
    {
       Press=0;
       GUI_PutString(85,10," MOVE ");
       Move_Mode=1;//����ƶ��α��ģʽ
    }
    ////////////////////////////////////
    if (Press==K_LEFT&&Move_Mode)
    {
    	Press=0;
        UI_Pic_X_Line=UI_Pic_X_Line==0?79:UI_Pic_X_Line-1;
    }
    if (Press==K_RIGHT&&Move_Mode)
    {
    	Press=0;
        UI_Pic_X_Line=UI_Pic_X_Line==79?0:UI_Pic_X_Line+1;
    }
    if (Press==K_UP&&Move_Mode)
    {
    	Press=0;
        UI_Pic_Y_Line=UI_Pic_Y_Line==1?59:UI_Pic_Y_Line-1;
    }
    
    if (Press==K_DOWN&&Move_Mode)
    {
    	Press=0;
        UI_Pic_Y_Line=UI_Pic_Y_Line==59?1:UI_Pic_Y_Line+1;
    }
    
    if (Press==K_MID&&Move_Mode)
    {
       Press=0;
       GUI_PutString(85,10,"      ");
       
       Move_Mode=0;//����ƶ��α��ģʽ
    }

    for(int i=0;i<60;i++)
    {
      if(i>=QianZhan)
      Pic_show[i][(Search_1_Line_center[i])]=1;
      
      if(i%5==0)
      {
      Pic_show[i][70]=!Pic_show[i][70];
      Pic_show[i][10]=!Pic_show[i][10];
      }
      if(i%10==0)
      {
      Pic_show[i][69]=!Pic_show[i][69];
      Pic_show[i][68]=!Pic_show[i][68];
      Pic_show[i][11]=!Pic_show[i][11];
      Pic_show[i][12]=!Pic_show[i][12];
      }
      
    
      

      
      for(int j=0;j<80;j++)
      {
        
        if((i==10||i==50)&&j%5==0)
        {
          Pic_show[i][j]=!Pic_show[i][j];
        }
        
        if((i==10||i==50)&&j%10==0)
        {
          Pic_show[i-1][j]=!Pic_show[i-1][j];
          Pic_show[i-2][j]=!Pic_show[i-2][j];
        }
        
        
        
        if(i==UI_Pic_Y_Line||j==UI_Pic_X_Line)
        {
          Pic_show[i][j]=(i%2)?(j%2)?!Pic_show[i][j]:Pic[i][j]:(j%2)?Pic_show[i][j]:!Pic[i][j];
        }
        
        GUI_Point(j,i,Pic_show[i][j]);
      }
              
      for(int j=0;j<80;j++)
     {
      Pic_show[i][j]=1;
      }
      
    }

  }
}

int Plan_Choose(void)
{

  /*��������ַ���*/
    int Biu_Where=5;//�����޸ļ�ͷ��λ��
    int How_Much=29;//��������
    
    static int  Copy_Plan_Value=1;//�������Ʒ�����
    
    static	int Plan_Choose_Case1=0;//����ָ��(�˵�����)
    static	int Plan_Choose_Case2=0;//����ָ��(ָ�����)
    static	int Plan_Choose_Case3=0;//��ͷָ��(Ҫ�޸ĵ��Ǹ�������־)
	int Sign1=0;//�����޸ı������̵ı�־
	char Str1[31][20];//�ַ���

    char Text_Title[50]={0};
	char Head[][30]=
	{
      "PLAN:",
	};
    
    Data_Public_Get();//���¹�����������ȡ������
    
    sprintf(Head[0],"PLAN:  %d",Plan_Num);
    
	GUI_RectangleFill(0, 0, 128, 64, back_color);//������
	GUI_Rectangle(0,0,127,63,1);
	GUI_Rectangle(0,0,127,10,1);	
	GUI_PutString(53,2,Head[0]);
	//GUI_PutString(2,54,HEAD);
	GUI_PutString(Biu_Where,(Plan_Choose_Case3+1)*10+4," > ");//��һ�ν�����Ҫ
	Press=0;//���������λ
	/////////////////////////////////////
    Flash_Read_Plan(Flash_Data_Plan,Plan_Num,-1);    //���ݷ���������ȡ��Ӧ�ı���
    
    for(int i=0;i<30;i++)    //��flash����³����ı���������Flash_Data_Plan�����ڣ�������ת�浽Vellue_Plan_Choose
    {
      Vellue_Plan_Choose[i] =  Flash_Data_Plan[i] >65530?0:Flash_Data_Plan[i];
    }
	 /////////////////////////////////////
	while(1)
	{
       //���Ҽ�������copy����
       if(Press==K_RIGHT&&Sign1==0)
       {
         int Copy_Plan=1;
         while(1)
         {
           Get_Press();//��ȡ����ֵ
           
           if(Press==K_LEFT||Press==K_RIGHT)//����Ҽ����˳���������
           {
             sprintf(Text_Title,"       ");
             GUI_PutString(10,2,Text_Title);
             
             Press=0;//���������λ
             break;
           }
           
           if(Press==K_UP)
           {
           
             if(Copy_Plan==1)
               Copy_Plan=6;
             else 
               Copy_Plan--;
           }
           if(Press==K_DOWN)
           {
             if(Copy_Plan==6)
               Copy_Plan=1;
             else 
               Copy_Plan++;
           }
           sprintf(Text_Title,"Cp:%d ->",Copy_Plan);
           GUI_PutString(10,2,Text_Title);
           
           if(Press ==K_MID)
           {
                Flash_Read_Plan(Flash_Data_Plan,Copy_Plan,-1);
                for(int i=0;i<30;i++)
                {
                  Vellue_Plan_Choose[i] =  Flash_Data_Plan[i] >65530?0:Flash_Data_Plan[i];
                }
             sprintf(Text_Title,"  Well ");
             GUI_PutString(10,2,Text_Title);
             Press=0;//���������λ
             break;
           }
         }
       }
		if ((Press== K_LEFT )&&Sign1==0)//�����ڱ����޸�ģʽʱ��������˳������������
		{
		   GUI_RectangleFill(0, 0, 128, 64, back_color);
	
           Press=0;
           for(int i=0;i<30;i++)
           {
              Flash_Data_Plan[i]  =(uint32) Vellue_Plan_Choose[i];
           }
           Flash_Write_Plan(Flash_Data_Plan,Plan_Num);//����flash
           
           Data_Get();//��flash�����������
           
		return 0;
		}
       
       
         //����UI��ʾ
		{
          sprintf(Str1[0],  "0 :Angle_P:%5d\0",(int)Vellue_Plan_Choose[0]);
          sprintf(Str1[1],  "1 :Angle_D:%5d\0",(int)Vellue_Plan_Choose[1]);
          sprintf(Str1[2],  "2 :Turn__P:%5d\0",(int)Vellue_Plan_Choose[2]);
          sprintf(Str1[3],  "3 :Turn__G:%5d\0",(int)Vellue_Plan_Choose[3]);
          sprintf(Str1[4],  "4 :Turn__D:%5d\0",(int)Vellue_Plan_Choose[4]);
          sprintf(Str1[5],  "5 :Speed_P:%5d\0",(int)Vellue_Plan_Choose[5]);
          sprintf(Str1[6],  "6 :Speed_I:%5d\0",(int)Vellue_Plan_Choose[6]);
          sprintf(Str1[7],  "7 :speed_h:%5d\0",(int)Vellue_Plan_Choose[7]);
          sprintf(Str1[8],  "8 :speed_m:%5d\0",(int)Vellue_Plan_Choose[8]);
          sprintf(Str1[9],  "9 :speed_L:%5d\0",(int)Vellue_Plan_Choose[9]);
          sprintf(Str1[10], "10:QZ_find:%5d\0",(int)Vellue_Plan_Choose[10]);  //ǰհ
          sprintf(Str1[11], "11:Sh_Find:%5d\0",(int)Vellue_Plan_Choose[11]);  //ǰհʮ�ֻ�·
          sprintf(Str1[12], "12:SH_Lnum:%5d\0",(int)Vellue_Plan_Choose[12]);
          sprintf(Str1[13], "13:RingNum:%5d\0",(int)Vellue_Plan_Choose[13]);
          sprintf(Str1[14], "14:RingLr :%5d\0",(int)Vellue_Plan_Choose[14]);
          sprintf(Str1[15], "15:PA__Hou:%5d\0",(int)Vellue_Plan_Choose[15]);
          sprintf(Str1[16], "16:PA_Qian:%5d\0",(int)Vellue_Plan_Choose[16]);
          sprintf(Str1[17], "17:Nothin5:%5d\0",(int)Vellue_Plan_Choose[17]);
          sprintf(Str1[18], "18:Nothin5:%5d\0",(int)Vellue_Plan_Choose[18]);
          sprintf(Str1[19], "19:Nothin5:%5d\0",(int)Vellue_Plan_Choose[19]);
          sprintf(Str1[20], "20:Nothin5:%5d\0",(int)Vellue_Plan_Choose[20]);
          sprintf(Str1[21], "21:Nothin5:%5d\0",(int)Vellue_Plan_Choose[21]);
          sprintf(Str1[22], "22:Nothin5:%5d\0",(int)Vellue_Plan_Choose[22]);
          sprintf(Str1[23], "23:Nothin5:%5d\0",(int)Vellue_Plan_Choose[23]);
          sprintf(Str1[24], "24:Nothin5:%5d\0",(int)Vellue_Plan_Choose[24]);
          sprintf(Str1[25], "25:Nothin5:%5d\0",(int)Vellue_Plan_Choose[25]);
          sprintf(Str1[26], "26:Nothin5:%5d\0",(int)Vellue_Plan_Choose[26]);
          sprintf(Str1[27], "27:Nothin5:%5d\0",(int)Vellue_Plan_Choose[27]);
          sprintf(Str1[28], "28:Nothin5:%5d\0",(int)Vellue_Plan_Choose[28]);
          sprintf(Str1[29], "29:Nothin5:%5d\0",(int)Vellue_Plan_Choose[29]);
			               
			if (Press == K_UP)/*�����ƶ��˵�*/
			{
				if(Sign1==0) //�˵�����ģʽ
				{
				  GUI_PutString(Biu_Where,(Plan_Choose_Case3+1)*10+4,"   "); //����ϴε�>
                  
                  do
                  {
                    if(Plan_Choose_Case2==0&&Plan_Choose_Case3==0&&Plan_Choose_Case1==0)
                    {
                      Plan_Choose_Case3=4;
                      Plan_Choose_Case2=How_Much;
                      Plan_Choose_Case1=How_Much-4;
                      break;
                    }
                    
                    Plan_Choose_Case2=Plan_Choose_Case2<=0?0:Plan_Choose_Case2-1;               //���ݱ�־��λ
                    if(Plan_Choose_Case3==0)                            //ֻ�е���ͷ����߲��ʱ�򣬲�����˵�����
                      Plan_Choose_Case1=Plan_Choose_Case1<=0?0:Plan_Choose_Case1-1;             //�˵�������λ
                    Plan_Choose_Case3=Plan_Choose_Case3<=0?0:Plan_Choose_Case3-1;               //��ͷ������λ
                    Plan_Choose_Case2=Plan_Choose_Case2<0?0:Plan_Choose_Case2>How_Much?How_Much:Plan_Choose_Case2;      //�ٴ���λ
                  }while(0);
				  GUI_PutString(Biu_Where,(Plan_Choose_Case3+1)*10+4," > "); //����ͷ
				}
				else 				        //�޸ı���ģʽ
				{
                  
                  if(Plan_Choose_Case2==4)
                  {
                  Vellue_Plan_Choose[Plan_Choose_Case2]+=1;
                  }
				  else 
                  Vellue_Plan_Choose[Plan_Choose_Case2]++;                        //�˴����޸ı�����������
                  if(Vellue_Plan_Choose[Plan_Choose_Case2]<0)
                     Vellue_Plan_Choose[Plan_Choose_Case2]=0;
                  if(Vellue_Plan_Choose[Plan_Choose_Case2]>65530)
                     Vellue_Plan_Choose[Plan_Choose_Case2]=0;
				}
                Press=0;
			}
			if (Press == K_DOWN)/*�����ƶ��˵�*/
			{
				if (Sign1==0)//�˵�����ģʽ
				{
					GUI_PutString(Biu_Where,(Plan_Choose_Case3+1)*10+4,"   "); //����ϴε�>
                    do
                    {
                      if(Plan_Choose_Case2==How_Much&&Plan_Choose_Case3==4&&Plan_Choose_Case1==How_Much-4)
                      {
                        Plan_Choose_Case3=0;
                        Plan_Choose_Case2=0;
                        Plan_Choose_Case1=0;
                        break;
                      }
                      Plan_Choose_Case2=Plan_Choose_Case2>=How_Much?How_Much:Plan_Choose_Case2+1;             //���ݱ�־��λ
                      if(Plan_Choose_Case3==4)                            //ֻ�е���ͷ����ײ��ʱ�򣬲�����˵�����
                        Plan_Choose_Case1=Plan_Choose_Case1>=How_Much-4?How_Much-4:Plan_Choose_Case1+1;           //�˵�������λ
                      Plan_Choose_Case3=Plan_Choose_Case3>=4?4:Plan_Choose_Case3+1;               //��ͷ������λ
                      Plan_Choose_Case2=Plan_Choose_Case2<0?0:Plan_Choose_Case2>How_Much?How_Much:Plan_Choose_Case2;      //�ٴ���λ
                    }while(0);
					GUI_PutString(Biu_Where,(Plan_Choose_Case3+1)*10+4," > "); //����ͷ
			  	}
				else                                      //�޸ı���ģʽ
				{
                  if(Plan_Choose_Case2==4)
                  {
                  Vellue_Plan_Choose[Plan_Choose_Case2]-=1;
                  }
                  else 
				  Vellue_Plan_Choose[Plan_Choose_Case2]--;                       //�˴����޸ı�����������
                  
                  if(Vellue_Plan_Choose[Plan_Choose_Case2]<0)
                     Vellue_Plan_Choose[Plan_Choose_Case2]=0;
                  if(Vellue_Plan_Choose[Plan_Choose_Case2]>65530)
                     Vellue_Plan_Choose[Plan_Choose_Case2]=0;
				}
                
                Press=0;
			}
			if((Press ==K_MID)&&Sign1==0)/*���м����������޸�ģʽ*/
			{
				Sign1=1;                                      //�����޸ı�־
                Press=0;                                      //��ռ�ֵ
				GUI_PutString(Biu_Where,(Plan_Choose_Case3+1)*10+4,"   ");       //��ռ�ͷ
				GUI_PutString(Biu_Where,(Plan_Choose_Case3+1)*10+4,"-> ");       //�����޸�ָʾ
			}
			if ((Press ==K_MID )&&Sign1==1)/*�����޸�ģʽ��*/
			{
                sprintf(Text_Title,"       \0");
                GUI_PutString(10,2,Text_Title);
				GUI_PutString(Biu_Where,(Plan_Choose_Case3+1)*10+4,"   ");
			    GUI_PutString(Biu_Where,(Plan_Choose_Case3+1)*10+4," > ");    
                Sign1=0;                                //��λ�޸�ģʽ��־λ
                Press=0;
			}			
            if((Press ==K_RIGHT )&&Sign1==1)//���޸ı���ģʽ�£����Ұ������븴��ģʽ
            {
                Copy_Plan_Value++;
                Copy_Plan_Value%=6;
                
                sprintf(Text_Title,"cp:%d ->",Copy_Plan_Value+1);
                GUI_PutString(10,2,Text_Title);
                Vellue_Plan_Choose[Plan_Choose_Case2] = Flash_Read_Plan(Flash_Data_Plan,Copy_Plan_Value+1,Plan_Choose_Case2) ;
              
                Press=0;
            }
            if((Press ==K_LEFT )&&Sign1==1)//���޸ı���ģʽ�£����󰴣����븴��ģʽ
            {
              
              if(Copy_Plan_Value<=0)
                Copy_Plan_Value=5;
              else 
                Copy_Plan_Value--;
              
                sprintf(Text_Title,"cp:%d ->",Copy_Plan_Value+1);
                GUI_PutString(10,2,Text_Title);
                Vellue_Plan_Choose[Plan_Choose_Case2] = Flash_Read_Plan(Flash_Data_Plan,Copy_Plan_Value+1,Plan_Choose_Case2) ;
                Press=0;
            }    
            
			GUI_PutString(23,14,Str1[0+Plan_Choose_Case1]);//�˵���ʾ
			GUI_PutString(23,24,Str1[1+Plan_Choose_Case1]);//
			GUI_PutString(23,34,Str1[2+Plan_Choose_Case1]);//
			GUI_PutString(23,44,Str1[3+Plan_Choose_Case1]);//
			GUI_PutString(23,54,Str1[4+Plan_Choose_Case1]);//
		}//else
		Get_Press();//��ȡ����ֵ
	}//while(1)
}


int Debug_Button(void)
{
//Debug_Button_V
    int Biu_Where=5;//�����޸ļ�ͷ��λ��
    int How_Much=12;//��������
    
    static	int Debug_Button_Case1=0;//����ָ��(�˵�����)
    static	int Debug_Button_Case2=0;//����ָ��(ָ�����)
    static	int Debug_Button_Case3=0;//��ͷָ��(Ҫ�޸ĵ��Ǹ�������־)
    
	int Sign1=0;//�����޸ı������̵ı�־
	char Str1[13][20];//�ַ���

    uint32 Debug_Button_Compare=0;//�����Ƚ��Ƿ��޸��˱���
    
	char Head[][30]=
	{
      "Button",
	};
    
	GUI_RectangleFill(0, 0, 128, 64, back_color);//������
	GUI_Rectangle(0,0,127,63,1);
	GUI_Rectangle(0,0,127,10,1);	
	GUI_PutString(53,2,Head[0]);
	//GUI_PutString(2,54,HEAD);
	GUI_PutString(Biu_Where,(Debug_Button_Case3+1)*10+4," > ");//��һ�ν�����Ҫ
				
	Press=0;//���������λ
	/////////////////////////////////////
    Debug_Button_V= Flash_Read_Plan(Flash_Data_Public,0,29);//��ȡFlash�������ֱ���
    Debug_Button_Compare=Debug_Button_V;
    sprintf(Str1[0],  "0 :__Led__:\0");         // //Led_�ƿ���
    sprintf(Str1[1],  "1 :KeyBeep:\0");         // //������������
    sprintf(Str1[2],  "2 :Blueth_:\0");         // //�������Կ���
    sprintf(Str1[3],  "3 :Protect:\0");         // //�����ֹ�������Ҷ�����
    sprintf(Str1[4],  "4 :Prt_Car:\0");         //
    
    sprintf(Str1[5],  "5 :WhatBee:\0");         //
    sprintf(Str1[6],  "6 :Nothing:\0");         //
    sprintf(Str1[7],  "7 :Nothing:\0");         //
    sprintf(Str1[8],  "8 :Nothing:\0");         //
    sprintf(Str1[9],  "9 :Nothing:\0");         //
    sprintf(Str1[10], "10:Nothing:\0");         //
    sprintf(Str1[11], "11:Nothing:\0");         //
    sprintf(Str1[12], "12:Nothing:\0");         //
	/////////////////////////////////////
	while(1)
	{
		if((Press== K_LEFT )||(Press==K_RIGHT))//�����ڱ����޸�ģʽʱ��������˳�
		{
		   GUI_RectangleFill(0, 0, 128, 64, back_color);
	       Press=0;
           if(Debug_Button_Compare!=Debug_Button_V)
		   {
             Flash_Data_Public[29]=Debug_Button_V;
             Flash_Write_Pub(Flash_Data_Public);
             
           }
          return 0;
		}
     
			if (Press == K_UP)
			{
				if(Sign1==0) //�˵�����ģʽ
				{
				  GUI_PutString(Biu_Where,(Debug_Button_Case3+1)*10+4,"   "); //����ϴε�>
                  
                  do
                  {
                    if(Debug_Button_Case2==0&&Debug_Button_Case3==0&&Debug_Button_Case1==0)
                    {
                      Debug_Button_Case3=4;
                      Debug_Button_Case2=How_Much;
                      Debug_Button_Case1=How_Much-4;
                      break;
                    }
                    Debug_Button_Case2=Debug_Button_Case2<=0?0:Debug_Button_Case2-1;               //���ݱ�־��λ
                    if(Debug_Button_Case3==0)                            //ֻ�е���ͷ����߲��ʱ�򣬲�����˵�����
                      Debug_Button_Case1=Debug_Button_Case1<=0?0:Debug_Button_Case1-1;             //�˵�������λ
                    Debug_Button_Case3=Debug_Button_Case3<=0?0:Debug_Button_Case3-1;               //��ͷ������λ
                    Debug_Button_Case2=Debug_Button_Case2<0?0:Debug_Button_Case2>How_Much?How_Much:Debug_Button_Case2;      //�ٴ���λ
                  }while(0);
				  GUI_PutString(Biu_Where,(Debug_Button_Case3+1)*10+4," > "); //����ͷ
				}
				
                Press=0;
			}
        
        
			if (Press == K_DOWN)
			{
				if (Sign1==0)//�˵�����ģʽ
				{
					GUI_PutString(Biu_Where,(Debug_Button_Case3+1)*10+4,"   "); //����ϴε�>
                    
                    do
                    {
                      if(Debug_Button_Case2==How_Much&&Debug_Button_Case3==4&&Debug_Button_Case1==How_Much-4)
                      {
                        Debug_Button_Case3=0;
                        Debug_Button_Case2=0;
                        Debug_Button_Case1=0;
                        break;
                      }
                      
                      Debug_Button_Case2=Debug_Button_Case2>=How_Much?How_Much:Debug_Button_Case2+1;             //���ݱ�־��λ
                      if(Debug_Button_Case3==4)                            //ֻ�е���ͷ����ײ��ʱ�򣬲�����˵�����
                        Debug_Button_Case1=Debug_Button_Case1>=How_Much-4?How_Much-4:Debug_Button_Case1+1;           //�˵�������λ
                      Debug_Button_Case3=Debug_Button_Case3>=4?4:Debug_Button_Case3+1;               //��ͷ������λ
                      Debug_Button_Case2=Debug_Button_Case2<0?0:Debug_Button_Case2>How_Much?How_Much:Debug_Button_Case2;      //�ٴ���λ
                    }while(0);
					GUI_PutString(Biu_Where,(Debug_Button_Case3+1)*10+4," > "); //����ͷ
			  	}
                Press=0;
			}
			if((Press ==K_MID))
			{
               Debug_Button_V=((Debug_Button_V>>Debug_Button_Case2)&0x01)?\
                 Debug_Button_V&~(1<<Debug_Button_Case2):Debug_Button_V|(1<<Debug_Button_Case2);
                
               Press=0;                                      //��ռ�ֵ
			}
        
        
        
            if((Debug_Button_V>>(0+Debug_Button_Case1))&0x01)
            {
                GUI_PutString(100,14,"ON ");//�˵���ʾ
            }
            else
            {
                GUI_PutString(100,14,"OFF");//�˵���ʾ
            }
            
            if((Debug_Button_V>>(1+Debug_Button_Case1))&0x01)
            {
                GUI_PutString(100,24,"ON ");//�˵���ʾ
            }
            else
            {
                GUI_PutString(100,24,"OFF");//�˵���ʾ
            }
        
            if((Debug_Button_V>>(2+Debug_Button_Case1))&0x01)
            {
                GUI_PutString(100,34,"ON ");//�˵���ʾ
            }
            else
            {
                GUI_PutString(100,34,"OFF");//�˵���ʾ
            }
        
            
            if((Debug_Button_V>>(3+Debug_Button_Case1))&0x01)
            {
                GUI_PutString(100,44,"ON ");//�˵���ʾ
            }
            else
            {
                GUI_PutString(100,44,"OFF");//�˵���ʾ
            }
        
			if((Debug_Button_V>>(4+Debug_Button_Case1))&0x01)
            {
                GUI_PutString(100,54,"ON ");//�˵���ʾ
            }
            else
            {
                GUI_PutString(100,54,"OFF");//�˵���ʾ
            }
        
        
        
			GUI_PutString(23,14,Str1[0+Debug_Button_Case1]);//�˵���ʾ
			GUI_PutString(23,24,Str1[1+Debug_Button_Case1]);//
			GUI_PutString(23,34,Str1[2+Debug_Button_Case1]);//
			GUI_PutString(23,44,Str1[3+Debug_Button_Case1]);//
			GUI_PutString(23,54,Str1[4+Debug_Button_Case1]);//

            
            /*************�ڴ˸��¿���ֵ***************/
            Debug_Button_Led      =(Debug_Button_V>> 0)&0x01;       //Led_�ƿ���
            //Debug_Button_KEY_BEEP =(Debug_Button_V>> 1)&0x01;       //������������
            Debug_Bluetooth       =(Debug_Button_V>> 2)&0x01;       //�������Կ���
            Debug_Protect         =(Debug_Button_V>> 3)&0x01;       //�����ֹ�������Ҷ�����
            Debug_CarAngPrt       =(Debug_Button_V>> 4)&0x01;
            Debug_Button_WhatisBeep =(Debug_Button_V>> 5)&0x01;
            
            
		Get_Press();//��ȡ����ֵ
	}//while(1)
}



/************************************************
*	���˵�
************************************************/

int AD_Bettery=0;
int Case_UI (void)
{
	
    static int menu=0;
    int time=50;
   
	char Head[][10]=
	{
		"Juju",
        "    ",
        "    ",
	};
	char HEAD1[]=" <Run     in    Ang>";
    char HEAD2[]=" <p-      in     p+>";
    char HEAD3[]=" <vp      in     vs>";//vp�ǿ�Plan�Ĳ�����vs�ǿ�set�Ĳ���
    char HEAD4[]=" <Lock    in     S->";
    


    
	char Str[][25]=
	{    
		"1:  Infor",
		"2:   Pln",
		"3:   Set",
		"4:  Debug"
	};
	
    
    //sprintf(Str[1],"2:   Pln : %d",Plan_Num);
    sprintf(Str[1],"2:   Pln < %d >",Plan_Num);
    
    
    
	GUI_RectangleFill(0, 0, 128, 64, back_color);//������
	GUI_Rectangle(0,0,127,63,1);
	GUI_Rectangle(0,0,127,10,1);	
	GUI_Rectangle(0,0,127,52,1);
	GUI_PutString(40,14,Str[0]);
	GUI_PutString(40,24,Str[1]);
	GUI_PutString(40,34,Str[2]);
	GUI_PutString(40,44,Str[3]);	
	GUI_PutString(53,2,Head[0]);
    
	while(1)
	{
//      Send_Begin();
//      Send_Variable();
 
      ///////////////////////////��Բ�ͬ�Ĳ˵���ʾ������Ϣ/////////////////////
      
      if(Debug_Protect)
      sprintf(HEAD4," <Lock    in     S->");  
      else
      sprintf(HEAD4," <        in     S->");
    
    
      switch(menu)
      {
      case 0: GUI_PutString(2,54,HEAD1);break;
      case 1: GUI_PutString(2,54,HEAD2);break;
      case 2: GUI_PutString(2,54,HEAD3);break;
      case 3: GUI_PutString(2,54,HEAD4);break;
      default:GUI_PutString(2,54,HEAD4);break;
      }
      //////////////////////////�����˶�����UI//////////////////////////////////
      
		Get_Press();	
	    if (Press ==K_UP)
        {
			menu-=1;
            menu=menu<0?3:menu>3?0:menu;
        }
        
        if (Press ==K_DOWN)
		{
            menu+=1;
            menu=menu<0?3:menu>3?0:menu;
        }
        
        if (menu==0)				    //��Բ
			GUI_CircleFill(27,17,4,1);
		else 
			GUI_CircleFill(27,17,4,0);
		if (menu==1)
			GUI_CircleFill(27,27,4,1);
		else 
			GUI_CircleFill(27,27,4,0);
		if (menu==2)
			GUI_CircleFill(27,37,4,1);
		else 
			GUI_CircleFill(27,37,4,0);
		if (menu==3)
			GUI_CircleFill(27,47,4,1);
		else 
			GUI_CircleFill(27,47,4,0);
		/////////////////////////////ȷ�Ͻ���///////////////////////////////////
        if (Press==K_MID)									//ȷ�Ͻ�����Ӧ�Ĺ���
		{
			GUI_RectangleFill(0, 0, 128, 64, back_color);	//����
			return menu+1;									//Ǩ��
		}
        
        /////////////////////////////����ģʽ����///////////////////////////////
        
//                                     �˵��߼�                                    //
//*********************************************************************************//
//                                                                                 //
//                                                                                 //
//                      //     ���˵�    ��ص�ѹ              //                  //
//      ��������    <-  //   1:   view (ͼ��Ԥ��������Ԥ��)    // ->�����ǽ���     //      
//     ѡ����һ��   <-  //   2:   plan (����ѡ��)              // ->ѡ����һ������ //
//     ��һ������   <-  //   3:   set  (��������ѡ��)          // ->��һ������     //       
//                      //   4:  button(���԰�ť)              //                  //   
//                      //                                     //                  //
/*
        	case 0:		CASE = Case_UI(); break;	//���˵�
        	case 1:		CASE = View();    break;	//����Ԥ���˵�
        	case 2:		CASE = Set();     break;	//��������
        	case 3:		CASE = Car_Ctrl();break;	//����
        	case 4:		CASE = Updata();  break;	//��������
        	case 5:		CASE = Set_Ang(); break;	//������ֵ
        	default :	CASE = 0;         break;	//����
*/
        
        
        
		if (Press == K_LEFT)//�������ģʽ
		{
//			GUI_RectangleFill(0, 0, 128, 64, back_color);//������
            switch(menu)
            {
            case 0:  return 5;//���뷢������
            case 1:  
            {
              Plan_Num--;
              Plan_Num=Plan_Num==0?6:Plan_Num;
              Data_Get();
              //sprintf(Str[1],"2:   Pln   <%d>",Plan_Num);
               sprintf(Str[1],"2:   Pln < %d >",Plan_Num);
              GUI_PutString(40,24,Str[1]);
              Data_Public_Save();
              break;
            }
            case 2:  return 9 ;
            case 3:  return Car_Protect();break;
            default: break;
            }
            
            
			//return 4;
		}
        
        
        
        
		if (Press == K_RIGHT)//�����ƽ���������
		{
            switch(menu)
            {
            case 0:  return 7;//�������ƽ�����
            case 1:  
            {
              Plan_Num=(Plan_Num)%6+1;
              Data_Get();
              //sprintf(Str[1],"2:   Pln : %d",Plan_Num);
              sprintf(Str[1],"2:   Pln < %d >",Plan_Num);
              GUI_PutString(40,24,Str[1]);
              Data_Public_Save();
              break;
            }
            case 2: return 8;  //����SET����Ԥ������
            case 3:  
            {//���͵�ǰ�Ĳ�������Σ��
              
              
                for(int i=0;i<15;i++)
                {
                    Control_Para[i]=Flash_Data_Plan[i];
                }
                Send_Begin();
				Send_Para();
                 
            }
				break;
            default: break;
            }
			//GUI_RectangleFill(0, 0, 128, 64, back_color);//������
			//return 5;
		}
	}	
}

/*****************************************************
*	
******************************************************/
int View_1(void)
{
    char Str1 [30];
    char Str2 [30];
    char Str3 [30];
    char Str4 [30];
    
    
    int Velue=0;
    Press=0;//�����������
	
    GUI_PutString(50,0 ,"VIEW");
	
    while(1)
	{
		if (Press==K_LEFT)
		{
			GUI_RectangleFill(0, 0, 128, 64, back_color);
            MOTO_OFF;
			return 0;
		}
		if (Press==K_UP)
		{
			GUI_RectangleFill(0, 0, 128, 64, back_color);
            MOTO_OFF;
			return 7;
		}
		if (Press==K_DOWN)
		{
			GUI_RectangleFill(0, 0, 128, 64, back_color);
            MOTO_OFF;
			return 2;
		}
        if (Press == K_RIGHT)
        {
            MOTO_ON;
        }
        

        //��ȡ��������ǰ��ֵ															
        //Much+=CarSpeed;

        sprintf(Str1 ,"Speed_Left:%04d",CoL);
        sprintf(Str2 ,"Speed_Righ:%04d",CoR);
        sprintf(Str3 ,"Speed_Now :%04d",(int)((CoL+CoR)*0.5));
        sprintf(Str4 ,"Speed_Set :%04d",SetSpeed);
        
        
        
        
        Ui_Show_Get_Speed=0;
        GUI_PutString(0,10 ,Str1);
        GUI_PutString(0,20 ,Str2);
        GUI_PutString(0,30 ,Str3);
        GUI_PutString(0,40 ,Str4);
        
//        Velue=Get_Z_Gyro();
//        sprintf(Str1 ,"Car_S:%5d",Velue/10);
//        GUI_PutString(0,40 ,Str1);
		Get_Press();
	}	
}

/**********************************************************
*
**********************************************************/
int View_2(void)
{
	char PITCH [30];
	char ROLL  [30];
	char YAW   [30];
	char GYROX [30];
  
	Press=0;
	while(1)
	{
        Get_Press();
      
		if (Press==K_LEFT)
		{
			GUI_RectangleFill(0, 0, 128, 64, back_color);
			return 0;
		}
		if (Press==K_UP)
		{
			GUI_RectangleFill(0, 0, 128, 64, back_color);
			return 1;
		}
		if (Press==K_DOWN)
		{
			GUI_RectangleFill(0, 0, 128, 64, back_color);
			return 3;
		}
		

	   //�����۲��б�
		
	  sprintf(PITCH,"Angle:0 ");//�˲�֮���������
	  sprintf(ROLL ,"Gyro_B:0 ");
	  GUI_PutString(0,0 ,PITCH  );
	  GUI_PutString(0,8 ,ROLL   );
//	  GUI_PutString(0,16,YAW    ); 			
//	  GUI_PutString(0,24,GYROX  );

	}
}

/**********************************************************
*
**********************************************************/
int View_3(void)
{
    
	Press=0;
    
	char View3_Str_View[30];
    GUI_PutString(27,0,"Code_RunTime \0");
    
    int Key_Get=0;
    int Show_Stop=0;//��ͣ��ť
    
    
     //�Ȳɼ�һ�飬��UI�ÿ���
     pit_time_start(PIT2) ;//����ִ��ʱ���ʱ
     //Search_1();
     //Handle_Pic();
     Pit1_Start=pit_time_get(PIT2);
     sprintf(View3_Str_View,"  Search_1:%05dus",Pit1_Start/100);
     GUI_PutString(5,10,View3_Str_View);
    
     pit_time_start(PIT2) ;//����ִ��ʱ���ʱ
     Fuzzy(1,2);
     Pit1_Start=pit_time_get(PIT2);
     sprintf(View3_Str_View,"  Fuzzy   :%05dus",Pit1_Start/100);
     GUI_PutString(5,20,View3_Str_View);
    
     pit_time_start(PIT2) ;//����ִ��ʱ���ʱ
     Calculate_Blackline_Average_2();//Calculate_Blackline_Average_2
     Pit1_Start=pit_time_get(PIT2);
     sprintf(View3_Str_View,"  GetMid  :%05dus",Pit1_Start/100);
     GUI_PutString(5,30,View3_Str_View);

	while(1)
	{
//        camera_get_img(); //�ɼ�ͼ��
//        img_extract((u8*)Pic,(uint8*)imgbuff,600);//��ѹΪ��ά����
        //Pic_Filter(Pic,1);
        
        switch(Key_Get)
        {
          case 0:
          {
            if(Show_Stop==0)
            {
              pit_time_start(PIT2) ;//����ִ��ʱ���ʱ
              //Search_1();
              //Handle_Pic();
              //Pic_Search_Vertical();
              Pit1_Start=pit_time_get(PIT2);
            
              sprintf(View3_Str_View,"1:Search_1:%05dus",Pit1_Start/100);
              GUI_PutString(5,10,View3_Str_View);
            }  
              break;
          }
          case 1:
          {
            if(Show_Stop==0)
            {
              pit_time_start(PIT2) ;//����ִ��ʱ���ʱ
              Fuzzy(1,2);
              Pit1_Start=pit_time_get(PIT2);
              sprintf(View3_Str_View,"2:Fuzzy   :%05dus",Pit1_Start/100);
              GUI_PutString(5,20,View3_Str_View);
             } 
              break;
          }   
          case 2:
          {
            if(Show_Stop==0)
            {
              pit_time_start(PIT2) ;//����ִ��ʱ���ʱ
              Calculate_Blackline_Average_2();
              Pit1_Start=pit_time_get(PIT2);
              sprintf(View3_Str_View,"3:GetMid  :%05dus",Pit1_Start/100);
              GUI_PutString(5,30,View3_Str_View);
            }  
              break;
          }
        }
        
       // while(!Pit1_Start);
        
        if(Press==K_MID)
        {
          Key_Get++;
          Key_Get%=3;
          GUI_PutString(5,10,"  ");
          GUI_PutString(5,20,"  ");
          GUI_PutString(5,30,"  ");
        }
        
        if(Press==K_RIGHT)
        {
         Show_Stop++;
         Show_Stop%=2;
        }
        
        
        
		if (Press==K_LEFT)
		{
			GUI_RectangleFill(0, 0, 128, 64, back_color);
			return 0;
		}
		if (Press==K_UP)
		{
			GUI_RectangleFill(0, 0, 128, 64, back_color);
			return 1;
		}
		
		if (Press==K_DOWN)
		{
			GUI_RectangleFill(0, 0, 128, 64, back_color);
			return 3;
		}
		
		//�����۲����
		
		//GUI_PutString(27,0,"Code_RunTime\0");
		Get_Press();
	}
}

/**********************************************************
*
**********************************************************/

int View(void)
{   
    static int Last_Menu=1; //
	int MENU=Last_Menu;
    
	Press=0;//�����������
	
    if(Last_Menu<=0||Last_Menu>6)Last_Menu=1;//��ֹ��������
    
	while(1)
	{
      Press=0;//�����������
		switch(MENU)
		{
			case 0:return 0;
			case 1:MENU=View_1(),Last_Menu=1;break;
			case 2:MENU=View_3(),Last_Menu=2;break;
			case 3:MENU=ShiBoQi(),Last_Menu=3;break;
                        case 4:MENU=ShiBoQi_2(),Last_Menu=4;break;
                        case 5:MENU=Show_Pic(),Last_Menu=5;break;
                        case 6:MENU=Show_Pic_Filter(),Last_Menu=6;break;
                        case 7:MENU=Show_Pic_T(),Last_Menu=7;break;
                        
            
			default :MENU=1,Last_Menu=1;break;
		}
	}	
}

/********************************************************
*	�������ý���
********************************************************/



int Set(void)
{	
  /*��������ַ���*/
  
    float Vellue[31]={0};
    int Biu_Where=5;//�����޸ļ�ͷ��λ��
    int How_Much=27;//��������
    
    static	int Set_Case1=0;//����ָ��(�˵�����)
    static	int Set_Case2=0;//����ָ��(ָ�����)
    static	int Set_Case3=0;//��ͷָ��(Ҫ�޸ĵ��Ǹ�������־)
	int Sign1=0;//�����޸ı������̵ı�־
	char Str1[31][20];//�ַ���

	char Head[][10]=
	{
		"SET",
	};
	
	GUI_RectangleFill(0, 0, 128, 64, back_color);//������
	GUI_Rectangle(0,0,127,63,1);
	GUI_Rectangle(0,0,127,10,1);	
	GUI_PutString(53,2,Head[0]);
	//GUI_PutString(2,54,HEAD);
	GUI_PutString(Biu_Where,(Set_Case3+1)*10+4," > ");//��һ�ν�����Ҫ
				
	Press=0;//���������λ

	/////////////////////////////////////
    
    Flash_Read_Plan(Flash_Data_Public,0,-1);
    
    for(int i=0;i<30;i++)
    {
      Vellue[i] =  Flash_Data_Public[i] >65530?0:Flash_Data_Public[i];
    }
    
      
	 /////////////////////////////////////
	
	while(1)
	{
		if ((Press== K_LEFT || Press==K_RIGHT)&&Sign1==0)//�����ڱ����޸�ģʽʱ��������˳�
		{
		   GUI_RectangleFill(0, 0, 128, 64, back_color);
	
           
           
//		   PID_ANGLE.P = Vellue[0];  //���±���
//		   PID_ANGLE.D = Vellue[1];  //���±���
//         PID_TURN.P  = Vellue[2];  //���±���
//         PID_TURN.I  = Vellue[3];  //���±���
//         PID_TURN.D  = Vellue[4];  //���±���
//         PID_SPEED.P = Vellue[5];  //���±���
//         PID_SPEED.I = Vellue[6];  //���±���
//         SetSpeed    = Vellue[7];  //���±���
//		   angular     = Vellue[9];	 //���±���
//         anglenum    = Vellue[8];  //���±���
//		   LOOK        = Vellue[10]; //���±���
//           
           
           
           for(int i=0;i<30;i++)
           {
           Flash_Data_Public[i]  =(uint32) Vellue[i];
           }
           Flash_Write_Plan(Flash_Data_Public,0);//����flash
    
           Data_Public_Get();//���¶�flash

		return 0;
		}
		else 
		{
          sprintf(Str1[0],  "0 :Angle_a:%5d\0",(int)Vellue[0]);   //
          sprintf(Str1[1],  "1 :Angle_s:%5d\0",(int)Vellue[1]);
          sprintf(Str1[2],  "2 :Nothing:%5d\0",(int)Vellue[2]);
          sprintf(Str1[3],  "3 :Nothing:%5d\0",(int)Vellue[3]);
          sprintf(Str1[4],  "4 :Nothing:%5d\0",(int)Vellue[4]);
          sprintf(Str1[5],  "5 :Nothing:%5d\0",(int)Vellue[5]);
          sprintf(Str1[6],  "6 :Nothing:%5d\0",(int)Vellue[6]);
          sprintf(Str1[7],  "7 :Nothing:%5d\0",(int)Vellue[7]);
          sprintf(Str1[8],  "8 :Nothing:%5d\0",(int)Vellue[8]);
          sprintf(Str1[9],  "9 :Nothing:%5d\0",(int)Vellue[9]);
          sprintf(Str1[10], "10:Nothing:%5d\0",(int)Vellue[10]);
          sprintf(Str1[11], "11:Nothing:%5d\0",(int)Vellue[11]);
          sprintf(Str1[12], "12:Nothing:%5d\0",(int)Vellue[12]);
          sprintf(Str1[13], "13:Nothing:%5d\0",(int)Vellue[13]);
          sprintf(Str1[14], "14:Nothing:%5d\0",(int)Vellue[14]);
          sprintf(Str1[15], "15:Nothing:%5d\0",(int)Vellue[15]);
                                
          sprintf(Str1[16], "16:Nothing:%5d\0",(int)Vellue[16]);
          sprintf(Str1[17], "17:Nothing:%5d\0",(int)Vellue[17]);
          sprintf(Str1[18], "18:Nothing:%5d\0",(int)Vellue[18]);
          sprintf(Str1[19], "19:Nothing:%5d\0",(int)Vellue[19]);
          sprintf(Str1[20], "20:Nothing:%5d\0",(int)Vellue[20]);
          sprintf(Str1[21], "21:Nothing:%5d\0",(int)Vellue[21]);
          sprintf(Str1[22], "22:Nothing:%5d\0",(int)Vellue[22]);
          sprintf(Str1[23], "23:Nothing:%5d\0",(int)Vellue[23]);
          sprintf(Str1[24], "24:Nothing:%5d\0",(int)Vellue[24]);
          sprintf(Str1[25], "25:Nothing:%5d\0",(int)Vellue[25]);
          sprintf(Str1[26], "26:Nothing:%5d\0",(int)Vellue[26]);
          sprintf(Str1[27], "27:Nothing:%5d\0",(int)Vellue[27]);
          sprintf(Str1[28], "28:Nothing:%5d\0",(int)Vellue[28]);
          sprintf(Str1[29], "29:Nothing:%5d\0",(int)Vellue[29]);
			               
			
			if (Press == K_UP)/*�����ƶ��˵�*/
			{
				if(Sign1==0) //�˵�����ģʽ
				{
				  GUI_PutString(Biu_Where,(Set_Case3+1)*10+4,"   "); //����ϴε�>
                  
                  do
                  {
                    if(Set_Case2==0&&Set_Case3==0&&Set_Case1==0)
                    {
                      Set_Case3=4;
                      Set_Case2=How_Much;
                      Set_Case1=How_Much-4;
                      break;
                    }
                    
                    Set_Case2=Set_Case2<=0?0:Set_Case2-1;               //���ݱ�־��λ
                    if(Set_Case3==0)                            //ֻ�е���ͷ����߲��ʱ�򣬲�����˵�����
                      Set_Case1=Set_Case1<=0?0:Set_Case1-1;             //�˵�������λ
                    Set_Case3=Set_Case3<=0?0:Set_Case3-1;               //��ͷ������λ
                    Set_Case2=Set_Case2<0?0:Set_Case2>How_Much?How_Much:Set_Case2;      //�ٴ���λ
                  }while(0);
				  GUI_PutString(Biu_Where,(Set_Case3+1)*10+4," > "); //����ͷ
				}
				else 				        //�޸ı���ģʽ
				{
                  
                  if(Set_Case2==4)
                  {
                  Vellue[Set_Case2]+=10;
                  }
				  else 
                  Vellue[Set_Case2]++;                        //�˴����޸ı�����������
                  
                  
                  if(Vellue[Set_Case2]<0)
                     Vellue[Set_Case2]=0;
                  if(Vellue[Set_Case2]>65530)
                     Vellue[Set_Case2]=0;

				}
			}
			
			if (Press == K_DOWN)/*�����ƶ��˵�*/
			{
				if (Sign1==0)//�˵�����ģʽ
				{
					GUI_PutString(Biu_Where,(Set_Case3+1)*10+4,"   "); //����ϴε�>
                    
                    do
                    {
                      if(Set_Case2==How_Much&&Set_Case3==4&&Set_Case1==How_Much-4)
                      {
                        Set_Case3=0;
                        Set_Case2=0;
                        Set_Case1=0;
                        break;
                      }
                      
                      Set_Case2=Set_Case2>=How_Much?How_Much:Set_Case2+1;             //���ݱ�־��λ
                      if(Set_Case3==4)                            //ֻ�е���ͷ����ײ��ʱ�򣬲�����˵�����
                        Set_Case1=Set_Case1>=How_Much-4?How_Much-4:Set_Case1+1;           //�˵�������λ
                      Set_Case3=Set_Case3>=4?4:Set_Case3+1;               //��ͷ������λ
                      Set_Case2=Set_Case2<0?0:Set_Case2>How_Much?How_Much:Set_Case2;      //�ٴ���λ
                    }while(0);
					GUI_PutString(Biu_Where,(Set_Case3+1)*10+4," > "); //����ͷ
                    
			  	}
				else                                      //�޸ı���ģʽ
				{
                  if(Set_Case2==4)
                  {
                  Vellue[Set_Case2]-=10;
                  }
                  else 
				  Vellue[Set_Case2]--;                       //�˴����޸ı�����������
                  
                  if(Vellue[Set_Case2]<0)
                     Vellue[Set_Case2]=0;
                  if(Vellue[Set_Case2]>65530)
                     Vellue[Set_Case2]=0;
				}
			}
			
			if((Press ==K_MID)&&Sign1==0)/*���м����������޸�ģʽ*/
			{
				Sign1=1;                                      //�����޸ı�־
				GUI_PutString(Biu_Where,(Set_Case3+1)*10+4,"   ");       //��ռ�ͷ
				GUI_PutString(Biu_Where,(Set_Case3+1)*10+4,"-> ");       //�����޸�ָʾ
			}
			
			if ((Press ==K_LEFT ||Press ==K_RIGHT)&&Sign1==1)/*�����޸�ģʽ�£�������Ҽ����˳�*/
			{
				Sign1=0;                                //��λ�޸�ģʽ��־λ
				GUI_PutString(Biu_Where,(Set_Case3+1)*10+4,"   ");
			    GUI_PutString(Biu_Where,(Set_Case3+1)*10+4," > ");
			}			
			
			GUI_PutString(23,14,Str1[0+Set_Case1]);//�˵���ʾ
			GUI_PutString(23,24,Str1[1+Set_Case1]);//
			GUI_PutString(23,34,Str1[2+Set_Case1]);//
			GUI_PutString(23,44,Str1[3+Set_Case1]);//
			GUI_PutString(23,54,Str1[4+Set_Case1]);//
		}//else
		Get_Press();//��ȡ����ֵ
	}//while(1)  
}



int Car_Ctrl(void) 
{
    int Car_Ctrl_Key=0;
    int Car_Start_Flag=0;//������־λ
    char Str[3][30];
    int  StartCar_Time[6]={'0','1','2','3','4','5'};
    int StartTime=0;
    int time=50;
    
    
    GUI_RectangleFill(0, 0, 128, 64, back_color);//������
    DELAY_MS(20);
    //OLED_OPEN=0;

    
    //GUI_RectangleFill(0, 0, 128, 64, back_color);//������
	GUI_Rectangle(0,0,127,63,1);
	GUI_Rectangle(0,0,127,10,1);	
	GUI_Rectangle(0,0,127,52,1);	
	GUI_PutString(50,2,"ctrl");
    GUI_PutString(2,54,"         run       >");

    
    //GUI_PutChar24_32
    
    while(1)
    {
      Send_Begin();
      Send_Variable();
      

      GUI_PutChar24_32(10,15,StartCar_Time[StartTime]) ;   //��ʾ����ʱ
      
      
      /////////////////////////////////////////////////////
      Get_Press();
      
	  if (Press==K_RIGHT&&!Car_Start_Flag)
	  {
        Press=0;
        Beep(30);
	  	GUI_RectangleFill(0, 0, 128, 64, back_color);
        DELAY_MS(7);
	  	return 0;
	  }
      
	  if (Press==K_UP&&!Car_Start_Flag)
	  {
        do{
          StartTime++;
          
          if(StartTime>5)
          {
            StartTime=5;
            break;
          }
          
          Press=0;
        }while(0);
	  }
	  if (Press==K_DOWN&&!Car_Start_Flag)
	  {
         do
         {
           StartTime--;
             if(StartTime<0)
             {
               StartTime=0;
               break;
             }
           Press=0;
         }while(0);
	  }
      
      if(Press==K_MID&&!Car_Start_Flag)  //����
      {
         //�ȵ���ʱ��Ȼ�����ϵͳ��������
        
        
         
        
         Car_Start_Flag=1;
         Press=0;
      }
      
      if(Car_Start_Flag==1)
      {
        do{
         Car_Ctrl_Key=KEY() ;
		 if ((Car_Ctrl_Key==K_LEFT||Car_Ctrl_Key==K_RIGHT||Car_Ctrl_Key==K_UP||Car_Ctrl_Key==K_DOWN))//ͣ������
	    {
          MOTO_OFF;
          Car_Start_Flag=0;
          break;
        }
        if(StartTime!=0)
        {
        StartTime--;
        Beep(4);
        DELAY_MS(900);
        }
        }while(0);
      }
      
      
      if(StartTime<=0&&Car_Start_Flag)  //��������
      { 
        Car_Run_Ui_Show_Long    =0;
        Car_Run_Ui_Show_How_Long=0;
        LastTime_Car_Run_Distance=0;
        
        GUI_RectangleFill(0, 0, 128, 64, back_color);//������
        Ran_Erase_Speed_I=1;
        Beep(300);
	Car_Run=1;
        DELAY_MS(20);
        MOTO_ON;
		
         while(1)
          {
            
//            camera_get_img(); //�ɼ�ͼ��
//            img_extract((u8*)Pic,(uint8*)imgbuff,600);
//            Search_1();


            Car_Ctrl_Key=KEY() ;
		    if (((Car_Ctrl_Key==K_LEFT||Car_Ctrl_Key==K_RIGHT||Car_Ctrl_Key==K_UP||Car_Ctrl_Key==K_DOWN)||(Debug_CarAngPrt&&Seagull_Left<=3&&Seagull_Right<=3)))//ͣ������
		    {
                        Get_Press();
                        Press=0;
                        MOTO_OFF;
                        Car_Run=0;//�رյ�������־λ
			    break;
		    }
          }
         
           
           OLED_OPEN=1;
           StartTime=0;
           Car_Start_Flag=0;
           Beep(20);
           GUI_RectangleFill(0, 0, 128, 64, back_color);//������
           DELAY_MS(20);
           GUI_Rectangle(0,0,127,63,1);
	       GUI_Rectangle(0,0,127,10,1);	
	       GUI_Rectangle(0,0,127,52,1);	
	       GUI_PutString(50,2,"ctrl");
           GUI_PutString(2,54,"         run       >");
           sprintf(Str[2] ,"Rode:%4d",(int)(LastTime_Car_Run_Distance));
           GUI_PutString(50,20,Str[2]);
           sprintf(Str[2] ,"Time:%4d",10);
           GUI_PutString(50,30,Str[2]);
           
           
      }
      
      
      

    }
    
    /*
    while(Car_Run)
    {
        camera_get_img(); //�ɼ�ͼ��
        img_extract((u8*)Pic,(uint8*)imgbuff,600);
        camera_get_img(); //�ɼ�ͼ�� 
        Search_1();
        
        
        
        Car_Ctrl_Key=KEY() ;
		if ((Car_Ctrl_Key==K_LEFT||Car_Ctrl_Key==K_RIGHT||Car_Ctrl_Key==K_UP||Car_Ctrl_Key==K_DOWN))//ͣ������
		{
           
            MOTO_OFF;
            OLED_OPEN=1;
            Car_Run=0;//�رյ�������־λ
            
            GUI_RectangleFill(0, 0, 128, 64, back_color);//������
            DELAY_MS(20);
            Get_Press();
            Press=0;
			return  0;
		}
	}
     */
    return 0;
}


#define  PIC_BLACK            1
#define  PIC_WHITE            0

//������������ͼ�񲹳�����
int Updata(void)
{
  sprintf(Str_View,"SetPg");
  GUI_PutString(85,0,Str_View);
  int x=40,y=59;
  int HowMuchPoint_Right=0;
  int HowMuchPoint_Left=0;
  int Where_Left=0;
  int Where_Right=0;
  int Get_Mid_Flag=0;
  
  
  while(1)
  {
    
    camera_get_img(); //�ɼ�ͼ��
    img_extract((u8*)Pic,(uint8*)imgbuff,600);

    
    Get_Press();	
	if (Press==K_LEFT)
	{
       Press=0;
       return 0;
    }
    if (Press==K_UP||Press==K_DOWN)
    {
       Press=0;
       return 7;
    }
    
    if( Press==K_MID)
    {
       Press=0;
       if(Get_Mid_Flag==0)
         Get_Mid_Flag=1;
       
       if(Get_Mid_Flag==2)
         Get_Mid_Flag=0;
    }
    
    if(Get_Mid_Flag==2)
    {
      sprintf(Str_View,"PicOK");
      GUI_PutString(85,20,Str_View); 
    }
    else
    {
      GUI_PutString(85,20,"     "); 
    }
    
    
    for(int i=59;i>=0;i--)
    {
      for(int j=40;j<80;j++)
      {
        if(Pic[i][j]==PIC_BLACK)
        {
          Where_Right=j;
          break;
        }
        HowMuchPoint_Right++;
      }
      for(int j=39;j>=0;j--)
      {
        if(Pic[i][j]==PIC_BLACK)
        {
          Where_Left=j;
          break;
        }
        HowMuchPoint_Left++;
      }
      
        Pic[i][(int)((Where_Right+Where_Left)*0.5)] = PIC_BLACK;
      
      if(Get_Mid_Flag==1)
        XZ[i]=(int)((HowMuchPoint_Left+HowMuchPoint_Right)*0.5);
    }
    if(Get_Mid_Flag==1)
    Get_Mid_Flag=2;
    
    
    for(int i=0;Get_Mid_Flag!=2&&i<60;i++)
    {
      for(int j=0;j<80;j++)
      {
        GUI_Point(j,i,Pic[i][j]);
      }
    }
  }
	return 0;
}

u16 AAngleArrySCIi[3]={0};
 int AD[4]={0};
 
 
int Set_Ang(void)
{
	int Set_Ang_V1=0;//��ʱ����
        int Set_Ang_V2=0;
       
	char Str_Ang[5][30];
    
    GUI_RectangleFill(0, 0, 128, 64, back_color);//������
    GUI_Rectangle(0,0,127,63,1);
    GUI_Rectangle(0,0,127,10,1);	
    GUI_Rectangle(0,0,127,52,1);
    
    
    GUI_PutString(48,2,"Ad_View");
    
    DELAY_MS(20);//Ϊ��UIˢ�����
    
    GUI_PutString(4,45 ,Str_Ang[4]);
    GUI_PutString(2,54 ," <         Ad        \0");
    
    
	while(1)
	{
//          AD[0]=adc_once(ADC1_SE4a, ADC_12bit);
//          AD[1]=adc_once(ADC1_SE5a, ADC_12bit);
//          AD[2]=adc_once(ADC1_SE6a, ADC_12bit);
//          AD[3]=adc_once(ADC1_SE7a, ADC_12bit);
          
          
          
          
                Send_Begin();
                Send_Variable();
		Get_Press();	 	

		if (Press ==K_RIGHT ||Press ==K_LEFT)//�˳�������
		{
			GUI_RectangleFill(0, 0, 128, 64, back_color);//������
			return 0;
		}

        sprintf(Str_Ang[0],"Ad0:%04d\0",AD[0]);//�˲�֮���������
        sprintf(Str_Ang[1],"Ad1:%04d\0",AD[1]);//�˲�֮���������
        sprintf(Str_Ang[2],"Ad2:%04d\0",AD[2]);//�˲�֮���������
        sprintf(Str_Ang[3],"Ad3:%04d\0",AD[3]);//�˲�֮���������

        

        
	GUI_PutString(36,14 ,Str_Ang[0]);
	GUI_PutString(36,23 ,Str_Ang[1]);
	GUI_PutString(36,32 ,Str_Ang[2]);
	GUI_PutString(36,41 ,Str_Ang[3]);
        
        
        sprintf(Str_Ang[1],"MID:%4d   %4.2f\0",result,MID_ERROR);//�˲�֮���������
        GUI_PutString(20,2,Str_Ang[1]);
      
        DELAY_MS(5);
	}
}




int View_Set (void)
{ 
  int Vellue[30]={0};
  char Str1[30][7];
  
  int Page=0;//ҳ��
  /////////////////////////////////////////////////////////
  //����  
  GUI_RectangleFill(0, 0, 128, 64, back_color);//������  
  DELAY_MS(25);
  /////////////////////////////////////////////////////////
  //������
  Flash_Read_Plan(Vellue,0,-1);
  /////////////////////////////////////////////////////////
  
  sprintf(Str1[0],  "Al:%3d\0",(int)Vellue[0]);   //
  sprintf(Str1[1],  "AS:%3d\0",(int)Vellue[1]);
  sprintf(Str1[2],  "Lb:%3d\0",(int)Vellue[2]);
  sprintf(Str1[3],  "Za:%3d\0",(int)Vellue[3]);
  sprintf(Str1[4],  "TD:%3d\0",(int)Vellue[4]);
  sprintf(Str1[5],  "SP:%3d\0",(int)Vellue[5]);
  sprintf(Str1[6],  "SI:%3d\0",(int)Vellue[6]);
  sprintf(Str1[7],  "S :%3d\0",(int)Vellue[7]);
  sprintf(Str1[8],  "AS:%3d\0",(int)Vellue[8]);
  sprintf(Str1[9],  "At:%3d\0",(int)Vellue[9]);
  sprintf(Str1[10], "__:%3d\0",(int)Vellue[10]);
  sprintf(Str1[11], "No:%3d\0",(int)Vellue[11]);
  sprintf(Str1[12], "No:%3d\0",(int)Vellue[12]);
  sprintf(Str1[13], "No:%3d\0",(int)Vellue[13]);
  sprintf(Str1[14], "No:%3d\0",(int)Vellue[14]);
  sprintf(Str1[15], "No:%3d\0",(int)Vellue[15]);
  sprintf(Str1[16], "St:%3d\0",(int)Vellue[16]);
  sprintf(Str1[17], "St:%3d\0",(int)Vellue[17]);
  sprintf(Str1[18], "Tu:%3d\0",(int)Vellue[18]);
  sprintf(Str1[19], "Tu:%3d\0",(int)Vellue[19]);
  sprintf(Str1[20], "Tu:%3d\0",(int)Vellue[20]);
  sprintf(Str1[21], "Sp:%3d\0",(int)Vellue[21]);
  sprintf(Str1[22], "Sp:%3d\0",(int)Vellue[22]);
  sprintf(Str1[23], "_S:%3d\0",(int)Vellue[23]);
  sprintf(Str1[24], "An:%3d\0",(int)Vellue[24]);
  sprintf(Str1[25], "Ag:%3d\0",(int)Vellue[25]);
  sprintf(Str1[26], "__:%3d\0",(int)Vellue[26]);
  sprintf(Str1[27], "No:%3d\0",(int)Vellue[27]);

  GUI_PutString(0, 1, Str1[0]);
  GUI_PutString(42,1, Str1[1]);
  GUI_PutString(84,1, Str1[2]);
  GUI_PutString(0, 11, Str1[3]);
  GUI_PutString(42,11, Str1[4]);
  GUI_PutString(84,11, Str1[5]);
  GUI_PutString(0, 21, Str1[6]);
  GUI_PutString(42,21, Str1[7]);
  GUI_PutString(84,21, Str1[8]);  
  GUI_PutString(0, 31, Str1[9]);
  GUI_PutString(42,31, Str1[10]);
  GUI_PutString(84,31, Str1[11]);  
  GUI_PutString(0, 41, Str1[12]);
  GUI_PutString(42,41, Str1[13]);
  GUI_PutString(84,41, Str1[14]);
  GUI_PutString(0, 51, Str1[15]);
  GUI_PutString(42,51, Str1[16]);
  GUI_PutString(84,51, Str1[17]);
  
  Press=0;
  
  while(1)
  {
     Get_Press();  //��ȡ����
     if (Press==K_LEFT||Press==K_RIGHT||Press==K_MID)
	 {
	 	GUI_RectangleFill(0, 0, 128, 64, back_color);//������
	 	Press=0;
        break;
	 }
     
     if (Press==K_UP||Press==K_DOWN)         //���¼��л�ҳ��
	 {
       Page++;
       Page%=2;
	   GUI_RectangleFill(0, 0, 128, 64, back_color);//�����������Ļ
       if(Page==0)
       {
        GUI_PutString(0, 1,  Str1[0]);
        GUI_PutString(42,1,  Str1[1]);
        GUI_PutString(84,1,  Str1[2]);
        GUI_PutString(0, 11, Str1[3]);
        GUI_PutString(42,11, Str1[4]);
        GUI_PutString(84,11, Str1[5]);
        GUI_PutString(0, 21, Str1[6]);
        GUI_PutString(42,21, Str1[7]);
        GUI_PutString(84,21, Str1[8]);  
        GUI_PutString(0, 31, Str1[9]);
        GUI_PutString(42,31, Str1[10]);
        GUI_PutString(84,31, Str1[11]);  
        GUI_PutString(0, 41, Str1[12]);
        GUI_PutString(42,41, Str1[13]);
        GUI_PutString(84,41, Str1[14]);
        GUI_PutString(0, 51, Str1[15]);
        GUI_PutString(42,51, Str1[16]);
        GUI_PutString(84,51, Str1[17]);
       
       }
       else
       {
        GUI_PutString(0, 1,  Str1[18]);
        GUI_PutString(42,1,  Str1[19]);
        GUI_PutString(84,1,  Str1[20]);
        GUI_PutString(0, 11, Str1[21]);
        GUI_PutString(42,11, Str1[22]);
        GUI_PutString(84,11, Str1[23]);
        GUI_PutString(0, 21, Str1[24]);
        GUI_PutString(42,21, Str1[25]);
        GUI_PutString(84,21, Str1[26]);
        GUI_PutString(0, 31, Str1[27]);
//        GUI_PutString(42,31, Str1[28]);
//        GUI_PutString(84,31, Str1[29]);
       }
	   Press=0;
	 }
  }
  
return 0;
}
int View_Plan(void)
{
  int View_Plan_Plan=0;
  int Vellue[30]={0};
  char Str1[31][7];
  int Need_Fresh=0;
  int Page=0;//ҳ��
  /////////////////////////////////////////////////////////
  //����  
  GUI_RectangleFill(0, 0, 128, 64, back_color);//������  
  DELAY_MS(25);
  /////////////////////////////////////////////////////////
  //������
  View_Plan_Plan=Flash_Read_Plan(Flash_Data_Public,0,28);//��ȡFlash�������ֱ���
  Flash_Read_Plan(Vellue,View_Plan_Plan,-1);

  sprintf(Str1[0],  "Al:%3d\0",Vellue[0]);   //
  sprintf(Str1[1],  "AS:%3d\0",Vellue[1]);
  sprintf(Str1[2],  "Lb:%3d\0",Vellue[2]);
  sprintf(Str1[3],  "Za:%3d\0",Vellue[3]);
  sprintf(Str1[4],  "TD:%3d\0",Vellue[4]);
  sprintf(Str1[5],  "SP:%3d\0",Vellue[5]);
  sprintf(Str1[6],  "SI:%3d\0",Vellue[6]);
  sprintf(Str1[7],  "S :%3d\0",Vellue[7]);
  sprintf(Str1[8],  "AS:%3d\0",Vellue[8]);
  sprintf(Str1[9],  "At:%3d\0",Vellue[9]);
  sprintf(Str1[10], "__:%3d\0",Vellue[10]);
  sprintf(Str1[11], "No:%3d\0",Vellue[11]);
  sprintf(Str1[12], "No:%3d\0",Vellue[12]);
  sprintf(Str1[13], "No:%3d\0",Vellue[13]);
  sprintf(Str1[14], "No:%3d\0",Vellue[14]);
  sprintf(Str1[15], "No:%3d\0",Vellue[15]);
  sprintf(Str1[16], "St:%3d\0",Vellue[16]);
  sprintf(Str1[17], "St:%3d\0",Vellue[17]);
  sprintf(Str1[18], "Tu:%3d\0",Vellue[18]);
  sprintf(Str1[19], "Tu:%3d\0",Vellue[19]);
  sprintf(Str1[20], "Tu:%3d\0",Vellue[20]);
  sprintf(Str1[21], "Sp:%3d\0",Vellue[21]);
  sprintf(Str1[22], "Sp:%3d\0",Vellue[22]);
  sprintf(Str1[23], "_S:%3d\0",Vellue[23]);
  sprintf(Str1[24], "An:%3d\0",Vellue[24]);
  sprintf(Str1[25], "Ag:%3d\0",Vellue[25]);
  sprintf(Str1[26], "__:%3d\0",Vellue[26]);
  sprintf(Str1[27], "No:%3d\0",Vellue[27]);
  sprintf(Str1[28], "__:%3d\0",Vellue[28]);
  sprintf(Str1[29], "No:%3d\0",Vellue[29]);
  sprintf(Str1[30], "PL:%3d\0",View_Plan_Plan);
  
  
  GUI_PutString(0, 1,  Str1[0]);
  GUI_PutString(42,1,  Str1[1]);
  GUI_PutString(84,1,  Str1[2]);
  GUI_PutString(0, 11, Str1[3]);
  GUI_PutString(42,11, Str1[4]);
  GUI_PutString(84,11, Str1[5]);
  GUI_PutString(0, 21, Str1[6]);
  GUI_PutString(42,21, Str1[7]);
  GUI_PutString(84,21, Str1[8]);  
  GUI_PutString(0, 31, Str1[9]);
  GUI_PutString(42,31, Str1[10]);
  GUI_PutString(84,31, Str1[11]);  
  GUI_PutString(0, 41, Str1[12]);
  GUI_PutString(42,41, Str1[13]);
  GUI_PutString(84,41, Str1[14]);
  GUI_PutString(0, 51, Str1[15]);
  GUI_PutString(42,51, Str1[16]);
  GUI_PutString(84,51, Str1[17]);
  
  Press=0;
  
  while(1)
  {
     Get_Press();  //��ȡ����
     
     if(Press==K_LEFT||Press==K_RIGHT)
     {
       GUI_RectangleFill(0, 0, 128, 64, back_color);//������
	   
       Need_Fresh=1;
       if(Press==K_LEFT)
       {
         if(View_Plan_Plan==1)
           View_Plan_Plan=6;
         else
         View_Plan_Plan--;
       }
       else
       {
         if(View_Plan_Plan==6)
           View_Plan_Plan=1;
         else
         View_Plan_Plan++;
       }
       
       Press=0;
       Flash_Read_Plan(Vellue,View_Plan_Plan,-1);//��������
       sprintf(Str1[0],  "Al:%3d\0",(int)Vellue[0]);   
       sprintf(Str1[1],  "AS:%3d\0",(int)Vellue[1]);
       sprintf(Str1[2],  "Lb:%3d\0",(int)Vellue[2]);
       sprintf(Str1[3],  "Za:%3d\0",(int)Vellue[3]);
       sprintf(Str1[4],  "TD:%3d\0",(int)Vellue[4]);
       sprintf(Str1[5],  "SP:%3d\0",(int)Vellue[5]);
       sprintf(Str1[6],  "SI:%3d\0",(int)Vellue[6]);
       sprintf(Str1[7],  "S :%3d\0",(int)Vellue[7]);
       sprintf(Str1[8],  "AS:%3d\0",(int)Vellue[8]);
       sprintf(Str1[9],  "At:%3d\0",(int)Vellue[9]);
       sprintf(Str1[10], "__:%3d\0",(int)Vellue[10]);
       sprintf(Str1[11], "No:%3d\0",(int)Vellue[11]);
       sprintf(Str1[12], "No:%3d\0",(int)Vellue[12]);
       sprintf(Str1[13], "No:%3d\0",(int)Vellue[13]);
       sprintf(Str1[14], "No:%3d\0",(int)Vellue[14]);
       sprintf(Str1[15], "No:%3d\0",(int)Vellue[15]);
       sprintf(Str1[16], "St:%3d\0",(int)Vellue[16]);
       sprintf(Str1[17], "St:%3d\0",(int)Vellue[17]);
       sprintf(Str1[18], "Tu:%3d\0",(int)Vellue[18]);
       sprintf(Str1[19], "Tu:%3d\0",(int)Vellue[19]);
       sprintf(Str1[20], "Tu:%3d\0",(int)Vellue[20]);
       sprintf(Str1[21], "Sp:%3d\0",(int)Vellue[21]);
       sprintf(Str1[22], "Sp:%3d\0",(int)Vellue[22]);
       sprintf(Str1[23], "_S:%3d\0",(int)Vellue[23]);
       sprintf(Str1[24], "An:%3d\0",(int)Vellue[24]);
       sprintf(Str1[25], "Ag:%3d\0",(int)Vellue[25]);
       sprintf(Str1[26], "__:%3d\0",(int)Vellue[26]);
       sprintf(Str1[27], "No:%3d\0",(int)Vellue[27]);
       sprintf(Str1[28], "__:%3d\0",(int)Vellue[28]);
       sprintf(Str1[29], "No:%3d\0",(int)Vellue[29]);
       sprintf(Str1[30], "PL:%3d\0",View_Plan_Plan); 
     }
     
     if (Press==K_MID)
	 {
	 	GUI_RectangleFill(0, 0, 128, 64, back_color);//������
	 	Press=0;
        break;
	 }
     if (Press==K_UP||Press==K_DOWN||Need_Fresh==1)         //���¼��л�ҳ��
	 {
       if(Need_Fresh==0)
       {
       Page++;
       Page%=2;
       }
       Need_Fresh=0;
	   GUI_RectangleFill(0, 0, 128, 64, back_color);//�����������Ļ
       if(Page==0)
       {
        GUI_PutString(0, 1,  Str1[0]);
        GUI_PutString(42,1,  Str1[1]);
        GUI_PutString(84,1,  Str1[2]);
        GUI_PutString(0, 11, Str1[3]);
        GUI_PutString(42,11, Str1[4]);
        GUI_PutString(84,11, Str1[5]);
        GUI_PutString(0, 21, Str1[6]);
        GUI_PutString(42,21, Str1[7]);
        GUI_PutString(84,21, Str1[8]);  
        GUI_PutString(0, 31, Str1[9]);
        GUI_PutString(42,31, Str1[10]);
        GUI_PutString(84,31, Str1[11]);  
        GUI_PutString(0, 41, Str1[12]);
        GUI_PutString(42,41, Str1[13]);
        GUI_PutString(84,41, Str1[14]);
        GUI_PutString(0, 51, Str1[15]);
        GUI_PutString(42,51, Str1[16]);
        GUI_PutString(84,51, Str1[17]);
       
       }
       else
       {
        GUI_PutString(0, 1,  Str1[18]);
        GUI_PutString(42,1,  Str1[19]);
        GUI_PutString(84,1,  Str1[20]);
        GUI_PutString(0, 11, Str1[21]);
        GUI_PutString(42,11, Str1[22]);
        GUI_PutString(84,11, Str1[23]);
        GUI_PutString(0, 21, Str1[24]);
        GUI_PutString(42,21, Str1[25]);
        GUI_PutString(84,21, Str1[26]);
        GUI_PutString(0, 31, Str1[27]);
        GUI_PutString(42,31, Str1[28]);
        GUI_PutString(84,31, Str1[29]);
        GUI_PutString(0, 41 , Str1[30]);
       }
	   Press=0;
	 }
  }
  
return 0;
}

//���屣��

int Beep_Software_Button=0;
int Led_Software_Button =0;

int Car_Protect(void)
{
  if(!Debug_Protect)  return 0;
  
  char Car_Protect_Str[20];
  int Battery=0;
  
  Press=0;
  GUI_RectangleFill(0, 0, 128, 64, back_color);//������
  DELAY_MS(25);
  int KeyDown_Times=0;
  int KeyUp_Times=0;
  int OLED_TIMES=100;
  Led_Software_Button=1;  //�����������п���LED��Ȩ��
  Beep_Software_Button=1;
  gpio_set(PTC2,1);       //Ϩ��
  
  
  GUI_PutString(0, 1, "LOCK");
  sprintf(Car_Protect_Str,"Plan:%2d",Plan_Num);
  GUI_PutString(0, 10,Car_Protect_Str);
  
  //OLED_Display_On();
  while(1)
  {
    Get_Press();  //��ȡ����
    OLED_TIMES--;
    OLED_TIMES=OLED_TIMES<=0?0:OLED_TIMES;
    
    
    if(OLED_TIMES==0)
    {
     OLED_Display_Off();//�ر�OLED
    }  
    if(ABS(Angle_Speed-450)>=100)
    {
       OLED_TIMES=200;
       Beep(10);
       OLED_Display_On();
    }  
    
    
    if (Press==K_LEFT)
	{
	 	Press=0;
        OLED_Display_On();
        Car_Ctrl();
        GUI_PutString(0, 1, "LOCK");
        sprintf(Car_Protect_Str,"Plan:%2d",Plan_Num);
        GUI_PutString(0, 10,Car_Protect_Str);
        OLED_TIMES=200;
	}
    
    if (Press==K_RIGHT)
	{
	 	Press=0;
        OLED_Display_On();
        while(Set_Ang()==7);
        GUI_PutString(0, 1, "LOCK");
        sprintf(Car_Protect_Str,"Plan:%2d",Plan_Num);
        GUI_PutString(0, 10,Car_Protect_Str);
        OLED_TIMES=200;
	}
    
    if (Press==K_DOWN)
	{
	 	Press=0;
        KeyDown_Times++;
        
        if(KeyDown_Times>=50&&KeyDown_Times<=100)
        {
           gpio_set(PTC2,0);
        }
        else 
        {
           gpio_set(PTC2,1);
        }
	}
    if (Press==K_UP)
    {
        KeyUp_Times++;
        Press=0;
    }
    
    if (Press==K_MID)
	{   
        
        Press=0;
        if(KeyDown_Times>=50&&KeyDown_Times<=100&&KeyUp_Times==1)
        {
          GUI_RectangleFill(0, 0, 128, 64, back_color);//������
          Led_Software_Button=0;
          Beep_Software_Button=0;
          OLED_Display_On();
          Beep(200);
          break;
        }//�����ɹ�
        else
        {
          KeyUp_Times=0;
          KeyDown_Times=0;
          gpio_set(PTC2,1);
          Beep(300);
        }   
	}
    DELAY_MS(1);
  }
  
  
  OLED_Init();
  return 0;
}



/********************************
*          ʾ�����ؼ�
*           ���ĺ�
* *     2017.2.2    V0.1
* ������ɴ���ṹ��ʵ�ּ򵥹���
*
* *    2017.2.4
*
********************************/

int ShiBoQi_View=0;//̽��
//�ο���λ��
int X_LINE=64;
int Y_LINE=37;
//int Get_Bo_Speed=1;

int ShiBoQi(void)
{
    
    //������������Ļ�ϵ�����λ��
    int View_Y=0;
    int Last_Y=0;
    
    int Set_ShiBoQi=0;  //ʾ�������ñ�־λ
    int State_Flag=0;   //״̬��ͣ�л���־λ
    
    //�����Ŵ�������
    static int ShiBoQi_Xishu   =30;   //��ֵ����   27*60 = 1620
    static int ShiBoQi_Xishu_f = 2;   //��ֵ����      һ��Ҫȷ�ϣ����ܴ���1000/128
    
    //�����Ŵ�����ֵ
    ShiBoQi_Xishu= ShiBoQi_Xishu<=0?1:ShiBoQi_Xishu>60?60:ShiBoQi_Xishu;
    ShiBoQi_Xishu_f=ShiBoQi_Xishu_f<=0?1:ShiBoQi_Xishu_f>=8?8:ShiBoQi_Xishu_f;
    
    //  ����
    int ShiBoQi_Save[1000]={0};  //�������飬�ѭ������
      int ShiBoQi_Save_Point=0;   //ѭ������λ��ָ��      ����:ShiBoQi_Save[ShiBoQi_Save_Point++]
    
    int ShiBoQi_Windows[132]={0};//�������飬�Ӷ����г���
    int View_Windows[132]={0};   //����ʵ����ʾ���飬�Գ��������ֵ���зŴ���С�Ĳ���
    int Clear_Win[132]={0};      //�������飬������һ������λ��
   
    //����״̬��������ʾ�ַ���
    char ShiBoQi_Str[4][5]={0};
    
    
    GUI_RectangleFill(0, 0, 128, 64, back_color);//������
	GUI_Rectangle(0,1,127,63,1);
	GUI_Rectangle(0,1,127,10,1);	

    sprintf(ShiBoQi_Str[0],"%3dx",X_LINE);      //����
    sprintf(ShiBoQi_Str[1],"%3dy",Y_LINE);      //����
    sprintf(ShiBoQi_Str[2],"%5dv",ShiBoQi_Windows[X_LINE]);           //ֵ
    
    GUI_PutString(4, 2,ShiBoQi_Str[0]);  //̧ͷ��
    GUI_PutString(34,2,ShiBoQi_Str[1]);  //̧ͷ��
    GUI_PutString(64,2,ShiBoQi_Str[2]);  //̧ͷ��
    GUI_PutString(110,2,"M0");  //̧ͷ��
    Press=0;
    while(1)
    {
        
        //���±�����ֵ
        sprintf(ShiBoQi_Str[2],"%5dv",ShiBoQi_Windows[X_LINE]);           //ֵ
        GUI_PutString(64,2,ShiBoQi_Str[2]);  //̧ͷ����ʾ��ô����
      
//        ShiBoQi_View++;
//        if(ShiBoQi_View>90)
//        ShiBoQi_View=-90;
//        
//        
        if(State_Flag!=1)
        {
        //////////////////////////////////  
        //ѭ�����и���
        ShiBoQi_Save_Point++;
        ShiBoQi_Save_Point%=1000;
        ShiBoQi_Save[ShiBoQi_Save_Point]=ShiBoQi_View;
        //�������и���
        for(register uint8 x=0;x<127;x++ )
        {
          ShiBoQi_Windows[126-x]=ShiBoQi_Save[(ShiBoQi_Save_Point-ShiBoQi_Xishu_f*x)>=0?
            (ShiBoQi_Save_Point-ShiBoQi_Xishu_f*x):1000+(ShiBoQi_Save_Point-ShiBoQi_Xishu_f*x)];
        }
        //��ʾ���и���
        for(register int i=0;i<=127;i++)
        View_Windows[i]=-ShiBoQi_Windows[i];
        }
        //////////////////////////////////
        
        Get_Press();  //��ȡ����
        if(!Set_ShiBoQi&&Press==K_MID)//&&State_Flag==0)  //״̬�ı�Ϊ���޸�
        {
            Press=0;
            State_Flag++;
            State_Flag%=2;
            
            //���ʱ����Ҫ���һ����Ļ
            for(int j=1;j<127;j++)
            {
                GUI_Point(j,Clear_Win[j],0);
            }
            //Set_ShiBoQi
            if(State_Flag==0)
            GUI_PutString(110,2,"M0");  //̧ͷ��
            else 
            GUI_PutString(110,2,"M2");  //̧ͷ��  
            
        }
        
//        if(Press==K_MID&&State_Flag)    //״̬�ı�Ϊ�����޸�
//        {
//            Press=0;
//            State_Flag=0;
//        }
//        
        ///////////////////////////////////////////////////////////
        if(State_Flag&&Press==K_LEFT)  
        {
            Press=0;
            if(X_LINE==1)
            X_LINE=126;
            else
            X_LINE--;
            
            for(int i=11;i<=62;i++)
            {
              GUI_Point(X_LINE==126?1:X_LINE+1,i,0);
            }
            
            sprintf(ShiBoQi_Str[0],"%3dX",X_LINE);      //����
            GUI_PutString(4, 2,ShiBoQi_Str[0]);         //̧ͷ����ʾ��ô����
         }

        if(State_Flag&&Press==K_RIGHT)  
        {
            Press=0;
            if(X_LINE==126)
            X_LINE=1;
            else
            X_LINE++;
            
            for(int i=11;i<=62;i++)
            {
              GUI_Point(X_LINE==1?126:X_LINE-1,i,0);
            }
            sprintf(ShiBoQi_Str[0],"%3dX",X_LINE);      //����
            GUI_PutString(4, 2,ShiBoQi_Str[0]);  //̧ͷ����ʾ��ô����
        }
        
        if(State_Flag&&Press==K_UP)  
        {
            Press=0;
            if(Y_LINE==11)
              Y_LINE=62;
            else
              Y_LINE--;
            
            for(int j=1;j<126;j++)
            {
              GUI_Point(j,Y_LINE==62?11:Y_LINE+1,0);
            }
            sprintf(ShiBoQi_Str[1],"%3dY",Y_LINE);      //����
            GUI_PutString(34,2,ShiBoQi_Str[1]);  //̧ͷ����ʾ��ô����
            
        }
        
        if(State_Flag&&Press==K_DOWN)  
        {
            Press=0;
            if(Y_LINE==62)
              Y_LINE=11;
            else
              Y_LINE++;
            
            for(int j=1;j<125;j++)
            {
              GUI_Point(j,Y_LINE==11?62:Y_LINE-1,0);
            }
            sprintf(ShiBoQi_Str[1],"%3dY",Y_LINE);      //����
            GUI_PutString(34,2,ShiBoQi_Str[1]);  //̧ͷ����ʾ��ô����
        }
        //////////////////////////////////////////////////
        
        //����ʾ��������
        if (Press == K_RIGHT&&!Set_ShiBoQi&&!State_Flag)
        {
            Set_ShiBoQi=1;
            Press=0;
            
            GUI_PutString(110,2,"M1");  //̧ͷ��
            
            //GUI_RectangleFill(1, 12, 126, 63, back_color);//������
        }
        
        //ShiBoQi_Xishu   =30;   //��ֵ����
        //ShiBoQi_Xishu_f = 2;   //��ֵ����
       
        
        //if(Set_ShiBoQi==1)
        {
            char Set_ShiBoQi_Str[3][15];
            sprintf(Set_ShiBoQi_Str[0],"A:%2d",ShiBoQi_Xishu);
            sprintf(Set_ShiBoQi_Str[1],"T:%2d",ShiBoQi_Xishu_f);
            
            GUI_PutString(2,13,Set_ShiBoQi_Str[0]);  //̧ͷ����ʾ��ô����
            GUI_PutString(2,23,Set_ShiBoQi_Str[1]);  //̧ͷ����ʾ��ô����
        }
        
        //�������ý���
        if (Set_ShiBoQi&&Press==K_MID)        //�����˵�
		{
            Press=0;
            Set_ShiBoQi=0;
            GUI_PutString(110,2,"M0");  //̧ͷ��
		}
		if (Set_ShiBoQi&&Press==K_UP)          
		{
            Press=0;
            ShiBoQi_Xishu++;
            ShiBoQi_Xishu= ShiBoQi_Xishu<=0?1:ShiBoQi_Xishu>60?60:ShiBoQi_Xishu;
		}
		if (Set_ShiBoQi&&Press==K_DOWN)        
		{
            Press=0;
            ShiBoQi_Xishu--;
            ShiBoQi_Xishu= ShiBoQi_Xishu<=0?1:ShiBoQi_Xishu>60?60:ShiBoQi_Xishu;
		}
        if (Set_ShiBoQi&&Press==K_LEFT)          
		{
            Press=0;
            ShiBoQi_Xishu_f--;
            ShiBoQi_Xishu_f=ShiBoQi_Xishu_f<=0?1:ShiBoQi_Xishu_f>=8?8:ShiBoQi_Xishu_f;
		}
		if (Set_ShiBoQi&&Press==K_RIGHT)       
		{
            Press=0;
            ShiBoQi_Xishu_f++;
            ShiBoQi_Xishu_f=ShiBoQi_Xishu_f<=0?1:ShiBoQi_Xishu_f>=8?8:ShiBoQi_Xishu_f;
		}
        
        
        ////////////////////////�˵��л�//////////////////////////
        if (!State_Flag&&Press==K_LEFT&&!State_Flag)        //�����˵�
		{
            Press=0;
			return 0;
		}
		if (!State_Flag&&Press==K_UP&&!State_Flag)          //��һ�˵�
		{
            Press=0;
			GUI_RectangleFill(0, 0, 128, 64, back_color);
			return 2;
		}
		if (!State_Flag&&Press==K_DOWN&&!State_Flag)        //��һ�˵�
		{
            Press=0;
			GUI_RectangleFill(0, 0, 128, 64, back_color);
			return 4;
		}
      //////////////////////////////////////////////////////////
    
      if(State_Flag!=1)   //�����ͣ������Ҳ�Ͳ���������
      {
        for(int j=1;j<127;j++)
        {
//          View_Y=(int)(View_Windows[j]/ShiBoQi_Xishu)+37;    //��ˢ�µĵ�����ǰ׵ģ��Ͳ�Ҫ�����
//          if( View_Y==1 ) continue;
          GUI_Point(j,Clear_Win[j],0);
        }  
      }
      
      //�����µĵ�  
      for(int j=1;j<127;j++)
      {
        Last_Y=(int)(View_Windows[j]/ShiBoQi_Xishu)+37;
        if(Last_Y<12) 
        {
          Clear_Win[j]=12;
          continue;
        }
        else if(Last_Y>62)
        {
          Clear_Win[j]=62;
          continue;
        }
        else
       
        GUI_Point(j,Last_Y,1);
        Clear_Win[j]=Last_Y;
      } 
      
      //���ƺ���ο���
      //if(State_Flag)   //ֻ�е�flag=1ʱ������ʾ
      {
        for(int j=1;j<125;j++)
        {
          GUI_Point(j,Y_LINE,j%2);
        }
      }
      //��������ο���
      for(int i=11;i<=62;i++)
      {
        GUI_Point(X_LINE,i,i%2);
      }
      //DELAY_MS(1);
    }
}


//////////////////////////////////////////////////////////////////
//��һ�汾ʾ���������߿�������
//���������������������ʱ�򱣴��ڶ����������
//////////////////////////////////////////////////////////////////

int ShiBoQi2_Save[20][1000]={0};//���Ա���10000������,�����5msһ���Ļ������Դ洢50s������
                                //1msһ���Ļ�   ���Ա���10s��

//��������������д��Ҳ���Զ�ָ��λ�õ�����



//                                    ��ʼλ��    ƫ����     ƫ��ϵ��
__ramfunc int Read_ShiBoQi2_Save(   int Start,  int Move,     int T   )
{
   register unsigned int where=(int)(Start-T*Move);
   if(where<0) //where=20000+where;
     return 0;
   return ShiBoQi2_Save[(where/1000)%20][where%1000];
}

int ShiBoQi2_Point=0; //��¼���ݸ���
int Get_ShiBoQi_Button=0;  

__ramfunc void Write_ShiBoQi2_Save(unsigned int Where,int Number ,int * PTR)
{
  
  
  
  if(Get_ShiBoQi_Button)
  { 
    *PTR=0;
    return ;
  }
  
  if(Where>20000)Where=20000;
   
   ShiBoQi2_Point=Where;//��¼���ݱ����λ��
   ShiBoQi2_Save[(Where/1000)%20][Where%1000] = Number;
}


////////////////////////////////////////////////////////////////////////////////

//int ShiBoQi_2_View=0;//̽��

int ShiBoQi_2(void)
{
    Get_ShiBoQi_Button=1;//�رղɼ�����
  
    //������������Ļ�ϵ�����λ��
    int View_Y=0;
    int Last_Y=0;
    
    int Set_ShiBoQi=0;  //ʾ�������ñ�־λ
    int State_Flag=0;   //״̬��ͣ�л���־λ
    
    //�����Ŵ�������
    static int ShiBoQi_Xishu   =30;   //��ֵ����   27*60 = 1620
    static int ShiBoQi_Xishu_f = 2;   //��ֵ����      һ��Ҫȷ�ϣ����ܴ���1000/128
    
    //�����Ŵ�����ֵ
    ShiBoQi_Xishu= ShiBoQi_Xishu<=0?1:ShiBoQi_Xishu>99?99:ShiBoQi_Xishu;
    ShiBoQi_Xishu_f=ShiBoQi_Xishu_f<=0?1:ShiBoQi_Xishu_f>=10?10:ShiBoQi_Xishu_f;
    
    //  ����
    //int ShiBoQi_Save[1000]={0};  //�������飬�ѭ������
      int ShiBoQi_Save_Point=0;   //ѭ������λ��ָ��      ����:ShiBoQi_Save[ShiBoQi_Save_Point++]
    
    int ShiBoQi_Windows[132]={0};//�������飬�Ӷ����г���
    int View_Windows[132]={0};   //����ʵ����ʾ���飬�Գ��������ֵ���зŴ���С�Ĳ���
    int Clear_Win[132]={0};      //�������飬������һ������λ��
   
    //����״̬��������ʾ�ַ���
    char ShiBoQi_Str[4][5]={0};
    
    
    GUI_RectangleFill(0, 0, 128, 64, back_color);//������
	GUI_Rectangle(0,1,127,63,1);
	GUI_Rectangle(0,1,127,10,1);	

    sprintf(ShiBoQi_Str[0],"%3dx",X_LINE);      //����
    sprintf(ShiBoQi_Str[1],"%3dy",Y_LINE);      //����
    sprintf(ShiBoQi_Str[2],"%5dv",ShiBoQi_Windows[X_LINE]);           //ֵ
    
    GUI_PutString(4, 2,ShiBoQi_Str[0]);  //̧ͷ��
    GUI_PutString(34,2,ShiBoQi_Str[1]);  //̧ͷ��
    GUI_PutString(64,2,ShiBoQi_Str[2]);  //̧ͷ��
    GUI_PutString(110,2,"M0");  //̧ͷ��
    Press=0;
    while(1)
    {
        //���±�����ֵ
        sprintf(ShiBoQi_Str[2],"%5dv",ShiBoQi_Windows[X_LINE]);           //ֵ
        GUI_PutString(64,2,ShiBoQi_Str[2]);  //̧ͷ����ʾ��ô����
       
        if(State_Flag!=1)
        {
        //////////////////////////////////  
        //ѭ�����и���
        ShiBoQi_Save_Point++;
        ShiBoQi_Save_Point%=ShiBoQi2_Point;

        //�������и���
        for(register uint8 x=0;x<127;x++ )
        {
          ShiBoQi_Windows[126-x]=Read_ShiBoQi2_Save(ShiBoQi_Save_Point,x,ShiBoQi_Xishu_f);
        }
        //��ʾ���и���
        for(register int i=0;i<=127;i++)
        View_Windows[i]=-ShiBoQi_Windows[i];
        }
        //////////////////////////////////
        
        Get_Press();  //��ȡ����
        if(!Set_ShiBoQi&&Press==K_MID)//&&State_Flag==0)  //״̬�ı�Ϊ���޸�
        {
            Press=0;
            State_Flag++;
            State_Flag%=2;
            
            //���ʱ����Ҫ���һ����Ļ
            for(int j=1;j<127;j++)
            {
                GUI_Point(j,Clear_Win[j],0);
            }
            //Set_ShiBoQi
            if(State_Flag==0)
            GUI_PutString(110,2,"M0");  //̧ͷ��
            else 
            GUI_PutString(110,2,"M2");  //̧ͷ��  
            
        }
        
//        if(Press==K_MID&&State_Flag)    //״̬�ı�Ϊ�����޸�
//        {
//            Press=0;
//            State_Flag=0;
//        }
//        
        ///////////////////////////////////////////////////////////
        if(State_Flag&&Press==K_LEFT)  
        {
            Press=0;
            if(X_LINE==1)
            X_LINE=126;
            else
            X_LINE--;
            
            for(int i=11;i<=62;i++)
            {
              GUI_Point(X_LINE==126?1:X_LINE+1,i,0);
            }
            
            sprintf(ShiBoQi_Str[0],"%3dX",X_LINE);      //����
            GUI_PutString(4, 2,ShiBoQi_Str[0]);         //̧ͷ����ʾ��ô����
         }

        if(State_Flag&&Press==K_RIGHT)  
        {
            Press=0;
            if(X_LINE==126)
            X_LINE=1;
            else
            X_LINE++;
            
            for(int i=11;i<=62;i++)
            {
              GUI_Point(X_LINE==1?126:X_LINE-1,i,0);
            }
            sprintf(ShiBoQi_Str[0],"%3dX",X_LINE);      //����
            GUI_PutString(4, 2,ShiBoQi_Str[0]);  //̧ͷ����ʾ��ô����
        }
        
        if(State_Flag&&Press==K_UP)  
        {
            Press=0;
            if(Y_LINE==11)
              Y_LINE=62;
            else
              Y_LINE--;
            
            for(int j=1;j<126;j++)
            {
              GUI_Point(j,Y_LINE==62?11:Y_LINE+1,0);
            }
            sprintf(ShiBoQi_Str[1],"%3dY",Y_LINE);      //����
            GUI_PutString(34,2,ShiBoQi_Str[1]);  //̧ͷ����ʾ��ô����
            
        }
        
        if(State_Flag&&Press==K_DOWN)  
        {
            Press=0;
            if(Y_LINE==62)
              Y_LINE=11;
            else
              Y_LINE++;
            
            for(int j=1;j<125;j++)
            {
              GUI_Point(j,Y_LINE==11?62:Y_LINE-1,0);
            }
            sprintf(ShiBoQi_Str[1],"%3dY",Y_LINE);      //����
            GUI_PutString(34,2,ShiBoQi_Str[1]);  //̧ͷ����ʾ��ô����
        }
        //////////////////////////////////////////////////
        
        //����ʾ��������
        if (Press == K_RIGHT&&!Set_ShiBoQi&&!State_Flag)
        {
            Set_ShiBoQi=1;
            Press=0;
            
            GUI_PutString(110,2,"M1");  //̧ͷ��
            
            //GUI_RectangleFill(1, 12, 126, 63, back_color);//������
        }
        
        //ShiBoQi_Xishu   =30;   //��ֵ����
        //ShiBoQi_Xishu_f = 2;   //��ֵ����
       
        
        //if(Set_ShiBoQi==1)
        {
            char Set_ShiBoQi_Str[3][15];
            sprintf(Set_ShiBoQi_Str[0],"A:%2d",ShiBoQi_Xishu);
            sprintf(Set_ShiBoQi_Str[1],"T:%2d",ShiBoQi_Xishu_f);
            
            //ShiBoQi2_Point      //����
            //ShiBoQi_Save_Point  //��ǰλ��
            sprintf(Set_ShiBoQi_Str[2],"%05d/%05d",ShiBoQi_Save_Point,ShiBoQi2_Point);
            
            
            GUI_PutString(2,13,Set_ShiBoQi_Str[0]);  //̧ͷ����ʾ��ô����
            GUI_PutString(2,23,Set_ShiBoQi_Str[1]);  //̧ͷ����ʾ��ô����
            GUI_PutString(2,53,Set_ShiBoQi_Str[2]);  //̧ͷ����ʾ��ô����
        }
        
        //�������ý���
        if (Set_ShiBoQi&&Press==K_MID)        //�����˵�
		{
            Press=0;
            Set_ShiBoQi=0;
            GUI_PutString(110,2,"M0");  //̧ͷ��
		}
		if (Set_ShiBoQi&&Press==K_UP)          
		{
            Press=0;
            ShiBoQi_Xishu++;
            ShiBoQi_Xishu= ShiBoQi_Xishu<=0?1:ShiBoQi_Xishu>99?99:ShiBoQi_Xishu;
		}
		if (Set_ShiBoQi&&Press==K_DOWN)        
		{
            Press=0;
            ShiBoQi_Xishu--;
            ShiBoQi_Xishu= ShiBoQi_Xishu<=0?1:ShiBoQi_Xishu>99?99:ShiBoQi_Xishu;
		}
        if (Set_ShiBoQi&&Press==K_LEFT)          
		{
            Press=0;
            ShiBoQi_Xishu_f--;
            ShiBoQi_Xishu_f=ShiBoQi_Xishu_f<=0?1:ShiBoQi_Xishu_f>=10?10:ShiBoQi_Xishu_f;
		}
		if (Set_ShiBoQi&&Press==K_RIGHT)       
		{
            Press=0;
            ShiBoQi_Xishu_f++;
            ShiBoQi_Xishu_f=ShiBoQi_Xishu_f<=0?1:ShiBoQi_Xishu_f>=10?10:ShiBoQi_Xishu_f;
		}
        
        
        ////////////////////////�˵��л�//////////////////////////
        if (!State_Flag&&Press==K_LEFT&&!State_Flag)        //�����˵�
		{
            Press=0;
            Get_ShiBoQi_Button=0;
            ShiBoQi2_Point=0;
			return 0;
		}
		if (!State_Flag&&Press==K_UP&&!State_Flag)          //��һ�˵�
		{
            Press=0;
            Get_ShiBoQi_Button=0;
            ShiBoQi2_Point=0;
			GUI_RectangleFill(0, 0, 128, 64, back_color);
			return 3;
		}
		if (!State_Flag&&Press==K_DOWN&&!State_Flag)        //��һ�˵�
		{
            Press=0;
            Get_ShiBoQi_Button=0;
            ShiBoQi2_Point=0;
			GUI_RectangleFill(0, 0, 128, 64, back_color);
			return 5;
		}
      //////////////////////////////////////////////////////////
    
      if(State_Flag!=1)   //�����ͣ������Ҳ�Ͳ���������
      {
        for(int j=1;j<127;j++)
        {
//          View_Y=(int)(View_Windows[j]/ShiBoQi_Xishu)+37;    //��ˢ�µĵ�����ǰ׵ģ��Ͳ�Ҫ�����
//          if( View_Y==1 ) continue;
          GUI_Point(j,Clear_Win[j],0);
        }  
      }
      
      //�����µĵ�  
      for(int j=1;j<127;j++)
      {
        Last_Y=(int)(View_Windows[j]/ShiBoQi_Xishu)+37;
        if(Last_Y<12) 
        {
          Clear_Win[j]=12;
          continue;
        }
        else if(Last_Y>62)
        {
          Clear_Win[j]=62;
          continue;
        }
        else
       
        GUI_Point(j,Last_Y,1);
        Clear_Win[j]=Last_Y;
      } 
      
      //���ƺ���ο���
      //if(State_Flag)   //ֻ�е�flag=1ʱ������ʾ
      {
        for(int j=1;j<125;j++)
        {
          GUI_Point(j,Y_LINE,j%2);
        }
      }
      //��������ο���
      for(int i=11;i<=62;i++)
      {
        GUI_Point(X_LINE,i,i%2);
      }
      //DELAY_MS(1);
    }
}



