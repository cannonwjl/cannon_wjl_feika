 //Search 3

#include "ALL_Init.h"
#include "Search_2.h"



#define PIC_ROW          60
#define PIC_COL          80
#define P_BLACK           1
#define P_WHITE           0

#define SEARCH_2_PIC Pic
#define YWH_ABV(x,y) (x>y?x-y:y-x)


int Left_line[60]={0};
int Right_line[60]={0};
int Mid_line[60]={0};

//ͼ��У׼����
//400 �ĽǶ�
int Pic_Give[60]={
 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
10,11,11,12,12,13,13,14,14,15,
15,16,16,17,17,18,18,19,19,20,
20,21,21,22,23,23,24,24,25,25,
26,26,27,27,28,28,29,29,30,30,
31,31,32,32,33,33,34,34,35,36,
};

//��Ÿ�㷨
int Seagull_Left  =0 ; //��Ÿ���־
int Seagull_Right =0 ; //��Ÿ�ұ�־
int Seagull_Mid   =25 ; //��Ÿ�б�־
int Seagull_Num   =0 ; //������Ŀ

int HowMuch_Ring_Finds=0;//��¼�����˶��ٴλ�·�����滷·
//Debug_Button_WhatisBeep



//��·��־λ

int Rode_Ring=0;
int Last_Ring=0;
int In_Ring_Flag=0;

int How_Much_To_Find_Ring=0;

int Rode_Cross=0;

int Effective_Point_Mid=0; //��¼��Ч���ĵ���

typedef struct 
{
  int x;
  int y;
  int m;
}Point;


#define Cross_Find_Pic Pic


void Give_Line(int x_d,int y_d,int x_u,int y_u )
{
  float K=0.00001;
  K=((x_u-x_d)/(y_u-y_d==0?0.01:y_u-y_d))*100;
  for(int t=y_d;t>=y_u;t--)
  {
         Cross_Find_Pic[t][(int)((t-y_d)*K*0.01+x_d)] = P_BLACK;
  }
  
  return ;
}

int R_ux=0,R_uy=0,R_dx=0,R_dy=0,L_dx=0,L_dy=0,L_ux=0,L_uy=0;
int Mid_X=0;
int Mid_Y=0;

//ʮ�ֲ��Ҳ�����

int FindCrossTimes=0;
void Cross_Find(void)
{
  int G_RD_Flag=0;
  int G_RU_Flag=0;
  int G_LD_Flag=0;
  int G_LU_Flag=0;
  
  Point G_RD={0,0,0};
  Point G_RU={0,0,0};
  Point G_LD={0,0,0};
  Point G_LU={0,0,0};
  
  Point Max_High={0,60,0};//��¼��ߵ�������
  
  
  
  
  int Left_Find=0;     //������
  int Right_Find=0;    //�Ҳ����
  int Left_Line[60]={0}; //������
  int Right_Line[60]={0};//�Ҳ����
  int Line_Jump[80]={0}; //
  
  
  
  int HowMuchMid=0;//��Ч���ĵ����
  
  
//  //������ʾͼ�����
//  for(int i=59;i>=0;i--)
//  {
//    for(int j=0;j<80;j++)
//      Pic_show[i][j] =P_BLACK;
//  }
//  
  //����ɨ�裬�ҵ�ÿ�����ߵĸ߶�
  for(int j=0;j<80;j++)
  {  
     for(int i=59;i>=0;i--)
     {
         if(Cross_Find_Pic[i][j]==P_BLACK)
         {
            break; 
         }
         else
         {
            Line_Jump[j]++;
            //Pic_show[i][j] =P_WHITE;
         }
     }
  }
  
  //�����������������ǰ�ɫ��˵������ʮ�� �����������յ�
  
  if(Line_Jump[0]>=10)
  {
     G_LD.x=0;
     G_LD.y=59;
     G_LD.m=1;
  }
  else
  {
     G_LD.m=0;
  }
  
  if(Line_Jump[79]>=10)
  {
     G_RD.x=79;
     G_RD.y=59;
     G_RD.m=1;
  }
  else
  {
     G_RD.m=0;
  }
  
  //����ղ�û�ҵ��յ㣬��ͨ��������������ҵ��յ�
  int Jump_L=0;//��ʱ��������¼б�ʱ仯
  int Jump_R=0; 
  int A=0; //�仯��
  int B=0;
  
  
  for(int j=0;j<50;j++)
  {
    if(G_LD.m!=1)
    {
        A= Line_Jump[j+1]-Line_Jump[j]; //�仯��
        if(A-Jump_L>10)//˵���ҵ�һ����յ�//
        {
           G_LD.x=j;
           G_LD.y=59-Line_Jump[j];
           G_LD.m=1;
        }
        Jump_L=A;
    }
  }
  
  for(int j=0;j<50;j++)
  {
    if(G_RD.m!=1)
    {
        B= Line_Jump[78-j]-Line_Jump[79-j]; //�仯��
        if(B-Jump_R>10)//˵���ҵ�һ���ҹյ�//
        {
           G_RD.x=79-j;
           G_RD.y=59-Line_Jump[79-j];
           G_RD.m=1;
        }
        Jump_R=B;
    }
  }
  
  /**************����ط�������UI��ʾ�յ��λ�ã���***************/
  if(G_LD.m==1)
  {
     L_dx=G_LD.x;
     L_dy=G_LD.y;
  }
  else
  {
     L_dx =-1;
     L_dy =90;
  }
  
  
  if(G_RD.m==1)
  {
     R_dx=G_RD.x;
     R_dy=G_RD.y;
  }
  else
  {
     R_dx =-1;
     R_dy =90;
  } 
  
  
  
  //�ҵ���ߵ���
 
 
  int X_Find= (int)((G_LD.x+G_RD.x)*0.5);
  int Lie_Max_Num=0;
  int Lie_Max_Where=0;
  for(int i=X_Find;i<80&&Line_Jump[i]>0;i++)
  {
    if(Lie_Max_Num<Line_Jump[i])
    {
       Lie_Max_Num=Line_Jump[i];
       Lie_Max_Where=i;
    }
  }
  for(int i=X_Find;i>=0&&Line_Jump[i]>0;i--)
  {
     if(Lie_Max_Num<Line_Jump[i])
     {
        Lie_Max_Num= Line_Jump[i];
        Lie_Max_Where=i;
     }
  }
  
  Mid_X=Lie_Max_Where;
  Mid_Y=59-Lie_Max_Num;
  
  if(G_RD.m==1&&G_LD.m==1&&G_RD.y>=30&&G_LD.y>=30)
  {
    if(G_RD.x-G_LD.x<0) return ;
    
           //�Ըղŵ������м����Ϊ�ȶ����е㣬���ϲ��ң�����Զ����
           int X_FindtoLong=(G_RD.x+G_LD.x )*0.5;
           int Y_FindtoLong=(G_RD.y+G_LD.y )*0.5;
           
           while(Cross_Find_Pic[--Y_FindtoLong][X_FindtoLong]==P_WHITE&&Y_FindtoLong>10);
           //���һ����Զ������յ�Ĺ�ϵ
           
           if(((int)(G_RD.y+G_LD.y )*0.5-Y_FindtoLong)<10)
             return;
           //˵���ǻ�·
//           if(Y_FindtoLong-(int)((G_RD.y+G_LD.y )*0.5)>-25&&G_LD.y>50&&G_RD.y>50)
//           {
//             if(Debug_Button_WhatisBeep==1)   Beep(10);
//             
////               FindCrossTimes++;
////               FindCrossTimes%=0;
//               
//               //if(FindCrossTimes)
//               //Give_Line(G_LD.x,G_LD.y,G_RD.x-15,G_RD.y-10);//б�Ų��ߣ����²������ϸ�ƽ��һЩ
////               else
////               {
//               Give_Line(G_RD.x,G_RD.y,G_LD.x+15,G_LD.y+10);//б�Ų��ߣ����²������ϸ�ƽ��һЩ
////               }
//           }
//           else
           {
              //�ҵ���Զ����
              //Ȼ������������յ������꿪ʼ�����ң�ֱ�����С�ڹյ�ľ���
              
              int Find_Minx=80;
              int Find_Start=(int)((G_LD.y+G_RD.y)*0.5) ;
              int NumWhitePoint=0;
              
              for(;Find_Start>0&&Find_Start>59-Lie_Max_Num;Find_Start--)
              {
                int i= Lie_Max_Where;
                NumWhitePoint=0;
                while(Cross_Find_Pic[Find_Start][++i]==P_WHITE)NumWhitePoint++;
                i= Lie_Max_Where;
                while(Cross_Find_Pic[Find_Start][--i]==P_WHITE)NumWhitePoint++;
                //�õ���һ�еĿ��
                
                if(NumWhitePoint*NumWhitePoint<(G_LD.y-G_RD.y)*(G_LD.y-G_RD.y)+(G_LD.x-G_RD.x)*(G_LD.x-G_RD.x)&&NumWhitePoint*NumWhitePoint<625)
                {
                  //�õ������յ���
                  G_LU.x =i+1;
                  G_LU.y =Find_Start;
                  G_LU.m=1;
                 
                  G_RU.x =i+NumWhitePoint;
                  G_RU.y =Find_Start;
                  G_RU.m=1;
                  //��ʼ����
                  
                  int Left_Long=(G_LD.y-G_LU.y)*(G_LD.y-G_LU.y)+(G_LD.x-G_LU.x)*(G_LD.x-G_LU.x);
                  int Right_Long=(G_RD.y-G_RU.y)*(G_RD.y-G_RU.y)+(G_RD.x-G_RU.x)*(G_RD.x-G_RU.x);
                  
                  
                  
                  if(Left_Long>225&&Right_Long>225&& G_LD.y>45&&G_RD.y>45)
                  {
                    Give_Line(G_LD.x,G_LD.y,G_LU.x,G_LU.y);//б�Ų��ߣ����²������ϸ�ƽ��һЩ
                    Give_Line(G_RD.x,G_RD.y,G_RU.x,G_RU.y);//б�Ų��ߣ����²������ϸ�ƽ��һЩ
                    
                    if(!Debug_Button_WhatisBeep)   Beep(50);
                  }
                  break;
                }
              }
           
           }
  }
  
  
  
  

return ;
}



#define  Seagull_Pic Pic

//����ʾ��ͼ
void Search_HO(void)
{
     Seagull_Left=0 ;
     Seagull_Right=0;
     Seagull_Mid=0  ;
     
     
     int Search_Mid=40;   //���ߵ���ʼ��
     
     
     int CrossLeft=0;
     int CrossRight=0;
     
     
//     for(int a=0;a<60;a++)
//     {
//       for(int b=0;b<80;b++)
//       {
//          Pic_show[a][b]=Pic[a][b];
//       }     
//     }
     for(int i=0;i<40;i++)
     {
          //Pic_show[Right_FLine[i][0]-ShiZiFind][Right_FLine[i][1]]=!Pic_show[Right_FLine[i][0]-ShiZiFind][Right_FLine[i][1]];
          if(Seagull_Pic[Right_FLine[i][0]-ShiZiFind][Right_FLine[i][1]]==P_WHITE)
          {
             Seagull_Right++;
             //Pic_show[Right_FLine[i][0]-ShiZiFind][Right_FLine[i][1]]=!Pic_show[Right_FLine[i][0]-ShiZiFind][Right_FLine[i][1]];
          }
          else
          {
             break;
          }
     }
     for(int i=0;i<40;i++)
     {
          if(Seagull_Pic[Left_FLine[i][0]-ShiZiFind][Left_FLine[i][1]]==P_WHITE)
          {
             Seagull_Left++;
             //Pic_show[Left_FLine[i][0]-ShiZiFind][Left_FLine[i][1]]=!Pic_show[Left_FLine[i][0]-ShiZiFind][Left_FLine[i][1]];
          }
          else
          {
             break;
          }  
     }
     for(int i=3;i<50&&i+ShiZiFind<59;i++)
     {
          if(Seagull_Pic[Mid_FLine[i][0]-ShiZiFind][Mid_FLine[i][1]]==P_WHITE)
          {
             Seagull_Mid++;
             //Pic_show[Mid_FLine[i][0]-ShiZiFind][Mid_FLine[i][1]]=!Pic_show[Mid_FLine[i][0]-ShiZiFind][Mid_FLine[i][1]];
          }
          else
          {
             break;
          }
          
          
          //Pic_show[Mid_FLine[i][0]-ShiZiFind][Mid_FLine[i][1]]=!Pic_show[Mid_FLine[i][0]-ShiZiFind][Mid_FLine[i][1]];
     }
     
     

     
      Effective_Point_Mid=0;    //��¼��Ч���ĵ���
      for(int j=59;j>0;j--)
      {
          CrossLeft=0;
          CrossRight=0;
        
          if(Seagull_Pic[j-1][Search_Mid]==P_WHITE)
          {
              Effective_Point_Mid ++;
          }
          else
          {
              break;
          }
          
          
          for(int i=Search_Mid;i<80;i++)
          {
               if(Seagull_Pic[j][i]==P_WHITE)
               {
                  CrossRight++;
                  //Pic_show[Left_FLine[i][0]-ShiZiFind][Left_FLine[i][1]]=!Pic_show[Left_FLine[i][0]-ShiZiFind][Left_FLine[i][1]];
               }
               else
               {
                  Left_line[j] = i;
                  break;
               }  
          }
     
          for(int i=Search_Mid-1;i>=0;i--)
          {
               if(Seagull_Pic[j][i]==P_WHITE)
               {
                  CrossLeft++;
                  //Left_line[]
                  //Pic_show[Left_FLine[i][0]-ShiZiFind][Left_FLine[i][1]]=!Pic_show[Left_FLine[i][0]-ShiZiFind][Left_FLine[i][1]];
               }
               else
               {
                 Right_line[j]=i;
                  break;
               }  
          }
          
          Search_Mid=(int) (Right_line[j]+Left_line[j])*0.5;
          
          
      }
     
     

     
      //������ʮ�ֲ���
      //��������
      //��������� 1:��ͷ����ȫ���� 2:��û��ʮ��
          
     int Jump_Left_Flag=0;
     int Jump_Right_Flag=0;
     
     
      if(Right_line[0]>74)
      {
         Jump_Right_Flag=1;  //�ҵ��ұ�����
      }
      if(Left_line[0]<5)
      {
         Jump_Left_Flag=1;   //�ҵ���������
      }
     
      int Left_Jump_Num=0;   //����������
      int Right_Jump_Num=0;  //�Ҳ��������
      
      int JUMP_LEFT_WHERE[10][2]={0};
      int JUMP_RIGHT_WHERE[10][2]={0};
      
      int Jump_Left_Times=0;
      int Jump_Right_Times=0;
     
      for(int j=56;j>=0;j-=3)
      {
        /////////////////////////Ѱ���������/////////////////////////////////
        if((Left_line[j]-Left_line[j+3])<-10&&Jump_Left_Flag==0)
        {
           Jump_Left_Flag=1;
           JUMP_LEFT_WHERE[Jump_Left_Times][0]=j;
        }
        
        if((Left_line[j]-Left_line[j+3])>10&&Jump_Left_Flag==1)
        {
           Jump_Left_Flag=0;
           JUMP_LEFT_WHERE[Jump_Left_Times][1]=j;
           Jump_Left_Times++;
        }
        
        if(Jump_Left_Flag && ( j-JUMP_LEFT_WHERE[Jump_Left_Times][0] )>30)
           Jump_Left_Flag=0;
        
        
        ///////////////////////////////////////////////////////////////////////
        
        ////////////////////////Ѱ���ұ�����///////////////////////////////////
        
        if((Right_line[j]-Right_line[j+3])>10&&Jump_Right_Flag==0)
        {
           Jump_Right_Flag=1;
           JUMP_RIGHT_WHERE[Jump_Right_Times][0]=j;
        
        }
        
        if((Right_line[j]-Right_line[j+3])<-10&&Jump_Right_Flag==1)
        {
           Jump_Right_Flag=0;
           JUMP_RIGHT_WHERE[Jump_Right_Times][0]=j;
           Jump_Right_Times++;
        }
        if(Jump_Right_Flag && ( j-JUMP_RIGHT_WHERE[Jump_Right_Times][0] )>30)
           Jump_Right_Flag=0;
      
        
        ///////////////////////////////////////////////////////////////////////
      }
       
      //��ȫ������
      
      for(int i=0;i<Jump_Left_Times;i++)
      {
        int  Jin=0,Yuan=0;
        float  K=0;
        
        
        Jin= JUMP_LEFT_WHERE[i][0]+3;
        Jin= Jin>59?59:Jin;
        
        Yuan=  JUMP_LEFT_WHERE[i][1]-3;
        Yuan=  Yuan<0?0:Yuan;
      
        K= ((Left_line[Yuan] - Left_line[Jin])*1000) / ( Yuan-Jin );
        
        for(int j=Jin;j>Yuan;j--)
        {
           Left_line[j]=Left_line[Jin]+(int)(((Jin - j)*K)*0.001);
        }
      }
      
       #if 1
      for(int i=0;i<Jump_Right_Times;i++)
      {
        int  Jin=0,Yuan=0;
        float  K=0;
        
        
        Jin= JUMP_RIGHT_WHERE[i][0]+3;
        Jin= Jin>59?59:Jin;
        
        Yuan=  JUMP_RIGHT_WHERE[i][1]-3;
        Yuan=  Yuan<0?0:Yuan;
      
        K= ((Right_line[Yuan] - Right_line[Jin])*1000) / ( Yuan-Jin ) ;
        
        for(int j=Jin;j>Yuan;j--)
        {
           Right_line[j]=(Right_line[Jin]-(int)(((Jin - j)*K)*0.001));
        }
      }
      
#endif      
     
}

void Pic_Find(void)
{
  
  static int HowMuch_Cross=0;   //��¼�����˶��ٴ�
  static int HowMuch_Ring =0;
  register float AA=0;
  
  Search_HO();
  if(Seagull_Left>How_Much_To_Find_Ring&&Seagull_Right>How_Much_To_Find_Ring)
  {
       if(Seagull_Mid<Seagull_Num)  //���ֻ�·
       {
            HowMuch_Ring++;
         
            if(HowMuch_Ring>= HowMuch_Ring_Finds )
            {
              Rode_Cross=0;
              Rode_Ring=1;  
              if(Debug_Button_WhatisBeep)
              Beep(100);
            }   
       }
//       else //if(Seagull_Mid>32)  //����ʮ��
//       {
//         Rode_Cross=1; 
//         Rode_Ring =0;
//         HowMuch_Ring=0;
//         if(!Debug_Button_WhatisBeep)
//            Beep(100);
//       }
  }
  else
  {
         Rode_Cross=0; 
         Rode_Ring =0;
         HowMuch_Ring=0;
         AA=( (Seagull_Right-Seagull_Left)*0.1);
         AA=AA>3?3:AA<-3?-3:AA;
  }   
}


int Get_Mid(void)
{

   int i=0;
   int sum=0;
   
   for(int j=40;j>30;j--)
   {
      sum+=Search_1_Line_center[j];
      i++;
   }
   return (int)sum/i - PID_TURN.I ;
}





