#include "ALL_Init.h"
#include "Search_1.h"




uint8 RoadType;//��������ȷ��

//�������¼������
//1 1: ʮ��
//2 2:����
//3 3:�ϰ�
//4 4:�µ�
//5 5:��ͨ



//������������
void RodeType_Get(void)
{



return ;
}

void Mid_Make(void)
{
switch(RoadType)
{
        case 0:
        {
             break;
        }
        case 1:
        {
            break;
        }
        case 2:
        {
            break;
        }
        case 3:
        {
            break;
        }
        case 4:
        {
            break;
        }
}

return ;
}
//////////////////////////////////���⿪ʼ//////////////////////////////////////


#define SEARCH_1_PIC     Pic
#define aPic             Pic
#define SEARCH_1_ROW     60
#define SEARCH_2_COL     80
#define PIC_BLACK        1
#define PIC_WHITE        0



int Huan_Rode_Flag=0;//��·���ֱ�־
int Shizi_Rode_Flag=0;//ʮ�ֱ�־

int XZ[SEARCH_1_ROW]={
15,15,15,15,16,16,16,16,17,17,
17,17,18,18,18,18,19,19,19,19,
20,20,20,20,21,21,21,21,22,22,
22,22,23,23,23,23,23,24,24,24,
25,25,25,26,26,27,27,28,28,29,
29,30,30,31,31,32,32,33,33,34,
};

int Ang_XZ_Give=-5;
//Car_Angle-anglenum

__ramfunc void Make_Line(int i)
{
register    int e=0;
register    int I=0,Num=2,d=0,Sign=0,Same_number=0,num=0;//i ����е�ѡ��
    
    if(i>60||i<0)
      return ;
    
      for (e=0;e<SEARCH_2_COL;e++)
      {
          if(aPic[i][e]==PIC_WHITE)
          {
              aPic[i][e]=Num;
              if(aPic[i][e+1]==PIC_BLACK)
              {
                  aPic[i][e+1]=Num;
                  Num++;
              }
          }
          else 
          {
              Sign=0;
          }
      }
      for(e=0;e<SEARCH_2_COL;e++)
      {
          if(aPic[i][e]!=0&&aPic[i][e]!=1)
          {
              d=aPic[i][e];
              Same_number=0; 
              for (I=e;I<SEARCH_2_COL;I++)
              {
                  if(aPic[i][I]==d)Same_number++;
              }
              for (I=0;I<Same_number;I++)
              {
                  aPic[i][I+e]=Same_number;
              }
              e+=Same_number;
          }
          else 
          {
              d=0;
          }
      }
      for (e=0;e<SEARCH_2_COL;e++)
      {
          d=aPic[i][e]>d?aPic[i][e]:d;
      }
      for (e=0;e<SEARCH_2_COL;e++)
        {
                if(aPic[i][e]<d)
                {
                       aPic[i][e]=1;
                }
                
                if(aPic[i][e]==d)
                {
                        while(e<80&&aPic[i][e]==d)
                        {
                                aPic[i][e]=0;
                                e++;
                        }
                        while(e<80)
                        {
                                aPic[i][e]=1;
                                e++;
                        }
                        break;
                }
        }
}



#define Search_1_SZ Pic
int16 Search_1_Rode_Wide[SEARCH_1_ROW];       //������ȼ�¼
//���ҵ��ײ��ȶ���59-54�е�
//ȡ��Mid

int16 Search_1_Line_center[SEARCH_1_ROW];     //��¼������������
int16 Search_1_right_center[SEARCH_1_ROW];    //�ұ�����
int16 Search_1_left_center[SEARCH_1_ROW];     //�������

int Find_Shizi_YuanZhan;  //ʮ�ֺͻ�·���ҵ�Զհ


//������������5�пհ׵����
//����ʮ�ֺͻ�·�����߳���
__ramfunc void Search_1_Shizi(void)
{
  
register  int Normal_where=60;  //�쳣������λ��
register  int Normal_flag=0;    //��¼�쳣���ݸ���
  
register  int Point_A_Left=0,Point_A_Right=0;       //�����ʮ���䣬����ǰ��һ�������ݽ�����ȡ
register  int Point_B_Left=0,Point_B_Right=0;       //ͬ�� �����������ȡ
  
   for(register int col=59;col>=Find_Shizi_YuanZhan;col--)    //Find_Shizi_YuanZhanͨ��ȡ20
   {
      Search_1_Rode_Wide[col]=0;
   }
   
   for(register int col=59;col>=Find_Shizi_YuanZhan;col--)
   {               
     
     for(register int row1=40;row1<80;row1++)
     {
      if(Search_1_SZ [col][row1] ==PIC_WHITE)
      {
         Search_1_Rode_Wide[col]++;
      }
      else break;
     }
     
    for(register int row2=40;row2>=0;row2--)         //���м������������Ѱ��������
    {
      
      if(Search_1_SZ [col][row2] ==PIC_WHITE)
      {
         Search_1_Rode_Wide[col]++;
      }
      else break;
      
    }
   }
   //������ȼ�¼��Ͽ�ʼ����
   for(register int col=59;col>=Find_Shizi_YuanZhan;col--) 
   {
      if(Search_1_Rode_Wide[col]>(78))  //����쳣���
      {
        Search_1_Rode_Wide[col]=1;
        Normal_flag++;
        Normal_where=col;
      }
   }
   
   //���ж��Ƿ����쳣
   if(Normal_flag>0)        //�����쳣��Ҫ����
   {
     //�鿴�쳣������λ�� ,����⵽����ʲô�쳣
     if(Search_1_SZ[Normal_where>10?Normal_where-10:10][40]==PIC_BLACK          ||\
        Search_1_SZ[Normal_where>15?Normal_where-15:15][40]==PIC_BLACK  )//        ||\
        //Search_1_SZ[Normal_where>20?Normal_where-20:20][40]==PIC_BLACK )         //||\
        //Search_1_SZ[Normal_where>25?Normal_where-25:25][40]==PIC_BLACK )
     {  //ֻҪ���㱾�������Ϳ��Զ϶��ǻ�·���Ͳ������ˣ�ֱ�Ӷ�һ�࿪ʼɨ��
        Huan_Rode_Flag=1;    //ȷ���ǻ�·���������洦��
        
        for(register int i=Normal_where;i<=Normal_where+Normal_flag;i++)
        {
         //Search_1_SZ[i][40]=!Search_1_SZ[i][40];            //��仰����������������ʾ����
         //Line_center[i]= - Line_center[i];                   //������ȡ����Ϊ���ߵı��
          
          
//          A_X_B_X=(((i-Normal_where)+1)/Normal_flag)*(Search_1_Line_center[Normal_where-1])\
//            +(1-((i-Normal_where)+1)/Normal_flag)/Search_1_Line_center[Normal_where+Normal_flag+1]; 
          
          
          
          Search_1_Line_center[i]=Search_1_Line_center[Normal_where+Normal_flag]+(Normal_where+Normal_flag-i); 
          
        } 
     }    
     else 
     {  
        //�Ѿ������ȶ����ҵ�ʮ�ֶ��ߣ���ʱ��Ҫ���ǽ������߻���Զ������
        Shizi_Rode_Flag=1;
        
        
register    float A_X_B_X=0.0;
        
        for(register int i=Normal_where;i<=Normal_where+Normal_flag;i++)
        {
         //Search_1_SZ[i][40]=!Search_1_SZ[i][40];            //��仰����������������ʾ����
         //Line_center[i]= - Line_center[i];                   //������ȡ����Ϊ���ߵı��
          
          
//          A_X_B_X=(((i-Normal_where)+1)/Normal_flag)*(Search_1_Line_center[Normal_where-1])\
//            +(1-((i-Normal_where)+1)/Normal_flag)/Search_1_Line_center[Normal_where+Normal_flag+1]; 
          
          A_X_B_X=Search_1_Line_center[59];
          
          Search_1_Line_center[i]=(int)A_X_B_X; 
          
        }
        //���ж�һ��ʮ�ֲ��߽�����λ��
        //����ǽ���ʮ�֣���ͨ��Զ���ı��߷�����������
        //�����Զ��ʮ�֣���ͨ��������Զ�����첹��      
     }

   }
}



void ShiZi_Bu(void )
{
  //�����п���쳣�ĵط����߶�����
  
  //���ҵ��յ�
  

}


__ramfunc void Search_1(void)
{
   static int Left_point=0;      //���������λ��
   static int Right_point=79;    //�ұ�������λ��
   static int Left_last_find=0;  //��һ������Ƿ��ҵ�
   static int Right_last_find=0; //��һ���ұ��Ƿ��ҵ�
   static int How_Much_Find=0;   //�ҵ��˼�����
   static int Last_How_Much_Find=0;//��һ���ҵ��˼�������
   
   static int Search_starst=0;   //���м�������������ʼ��
   static int Left_find_flag=0 ; //�����Ƿ��ҵ�
   static int Right_find_flag=0; //�����Ƿ��ҵ�
   
   int Flag_Cross=0;//ʮ��
   int Flag_Ring=0; //��·
   int White_Nums=0;//�����е�����
   int LLL=0,MMM=0,RRR=0;
   int What_Road=0;//����·��
   
   Left_find_flag=0 ;
   Right_find_flag=0; 
   Left_point=0;      //���������λ��
   Right_point=79;    //�ұ�������λ��
   How_Much_Find=0;   //�ҵ��˼�����
   Search_starst=0;   //���м�������������ʼ��

  //UI��ʾͼ���ʼ��
  //ֻ������ʾɨ�������ûɨ�������һ�ź�ɫ
//   for(register int i=0;i<60;i++)
//   {
//     for(register int j=0;j<80;j++)
//     Pic_show[i][j]=1;
//   }
   
   //Search_1_Shizi();  //ע�� ʮ�ִ�����ʮ���䶪�������߲������
   //return ;
   
   
   
   Cross_Find();
   
   //Pic_Find();   //���һ�·��ʮ��
   

   Search_starst=ABS(Search_1_Line_center[59]);//59���ǰ��һ���е����Ϣ
   Search_starst=Search_starst<15?15:Search_starst>65?65:Search_starst; //���м���ʼ\
   ����ֵ����ֹ���ֲ�����
   
   int White_Point_Nums=0;          //ÿ�а׵����
   int White_Point_Nums_Lie=0;      //��������λ��
   int White_Point_Nums_Lie_Times=0;//���и���

   for(register int col=58;col>=55;col--)
   {
    //Make_Line(col);      //��������� ��֤�����ȶ��ĵ���    
    for(register int row=Search_starst;row>=0;row--)         //���м������������Ѱ��������
    {
      if(SEARCH_1_PIC [col][row] == PIC_BLACK )
      {
         Left_find_flag=1;
         Left_point=row; //�ҵ�λ��
         break;
      }
      //Pic_show[col][row]=0;
    }
    
    
    for(register int row=Search_starst;row<=79;row++)         //���м����ұ�������Ѱ��������
    {
      if(SEARCH_1_PIC [col][row] ==  PIC_BLACK )
      {
         Right_find_flag=1;
         Right_point=row; //�ҵ�λ��
         break;
      }
      //Pic_show[col][row]=0;
    }
    //������ɴ����������ҵ��м�㣬Ȼ����м�������ң������������ҵ���Զ����Ϊ֮��Ĳ���
    How_Much_Find=Right_find_flag+Left_find_flag;//�ҵ�������

   ///////////////////////////////////////////////////////////////////////////////////////////////////////////////// 
 
   if(Rode_Ring==1)
    {
      if(How_Much_Find==2)//����ҵ�����������)
      {
       Search_1_Line_center[col]=Right_point-Pic_Give[col]+5;//��������
       Search_starst=Search_1_Line_center[col];  //��һ������������ʼ��λ��
       if(Search_1_left_center[col]>Search_1_left_center[col+1])  //����
       {
          Search_1_left_center[col]=Search_1_left_center[col+1];
       }
      }
      if(How_Much_Find==1)//����ҵ���1������
      {
        {
           if(Left_find_flag) //�������ҵ���
           {
               if(Left_point<40)
               {
                Left_point=40;
               }
               Search_1_Line_center[col]=(Left_point+Pic_Give[col])+5;//��������
               Search_starst=Search_1_Line_center[col];  //��һ������������ʼ��λ��
               
               if(Search_1_left_center[col]<Search_1_left_center[col+1])  //����
               {
                  Search_1_left_center[col]=Search_1_left_center[col+1];
               }
           }
           else
           {
               Search_1_Line_center[col]=Right_point -Pic_Give[col]+5;//��������
               Search_starst=Search_1_Line_center[col];  //��һ������������ʼ��λ��
               if(Search_1_left_center[col]>Search_1_left_center[col+1])  //����
               {
                  Search_1_left_center[col]=Search_1_left_center[col+1];
               }
           }
        }
      }
      if(How_Much_Find==0)
      {
         Rode_Ring=0;
         
         Search_1_Line_center[col]=Search_1_Line_center[col+1]+5;//��������
         Search_starst=Search_1_Line_center[col];  //��һ������������ʼ��λ��
         if(Search_1_left_center[col]>Search_1_left_center[col+1])  //����
         {
            Search_1_left_center[col]=Search_1_left_center[col+1];
         } 
      }
    }
    else if( Rode_Cross )
    {
       if(How_Much_Find==2)//����ҵ�����������)
      {
       Search_1_Line_center[col]=(int)((Right_point +Left_point)*0.5);//��������
       Search_starst=Search_1_Line_center[col];  //��һ������������ʼ��λ��
       if(Search_1_left_center[col]>Search_1_left_center[col+1])  //����
       {
          Search_1_left_center[col]=Search_1_left_center[col+1];
       }
      }
    
       if(How_Much_Find==1)//����ҵ���1������
      {
        {
           if(Left_find_flag) //�������ҵ���
           {
               
               Search_1_Line_center[col]=(Search_1_Line_center[col+1]);//��������
               
               Search_starst=Search_1_Line_center[col];  //��һ������������ʼ��λ��
               
               if(Search_1_left_center[col]<Search_1_left_center[col+1])  //����
               {
                  Search_1_left_center[col]=Search_1_left_center[col+1];
               }
           }
           else
           {
               Search_1_Line_center[col]=(Search_1_Line_center[col+1]);//��������
               Search_starst=Search_1_Line_center[col];  //��һ������������ʼ��λ��
               if(Search_1_left_center[col]>Search_1_left_center[col+1])  //����
               {
                  Search_1_left_center[col]=Search_1_left_center[col+1];
               }
           }
        }
      }
    
      if(How_Much_Find==0)
      {
         //Rode_Cross=0;
         Search_1_Line_center[col]=(int)(Search_1_Line_center[col+1]);//��������
         Search_starst=Search_1_Line_center[col];  //��һ������������ʼ��λ��
         if(Search_1_left_center[col]>Search_1_left_center[col+1])  //����
         {
            Search_1_left_center[col]=Search_1_left_center[col+1];
         } 
      }
    }  
    else
    {
      
    if(How_Much_Find==2)//����ҵ�����������
    {
        Search_1_Line_center[col]=(int)((Right_point+Left_point)*0.5);//��������
        Search_starst=Search_1_Line_center[col];  //��һ������������ʼ��λ��
    }

    if(How_Much_Find==1)//����ҵ���1������
    {
          if(Left_find_flag) //�������ҵ���
          {
              Search_1_Line_center[col]=Left_point+Pic_Give[col];//��������
              Search_starst=Search_1_Line_center[col];  //��һ������������ʼ��λ��
              
              if(Search_1_left_center[col]<Search_1_left_center[col+1])  //����
              {
                 Search_1_left_center[col]=Search_1_left_center[col+1];
              }
          }
          else
          {
              Search_1_Line_center[col]=Right_point-Pic_Give[col];//��������
              Search_starst=Search_1_Line_center[col];  //��һ������������ʼ��λ��
              if(Search_1_left_center[col]>Search_1_left_center[col+1])  //����
              {
                 Search_1_left_center[col]=Search_1_left_center[col+1];
              }
          }
    }
      
     if(How_Much_Find==0)    //˵����ʱ�����±�״̬//��Ҫ�����ϴ�������ж�
     {
               Search_1_Line_center[col]=(Search_1_Line_center[col+1]);
               Search_starst=Search_1_Line_center[col];
     }
    }
    
    if(Search_1_right_center[col] >79)
       Search_1_right_center[col] =79;
    if(Search_1_left_center[col]<0)  
       Search_1_left_center[col]=0;
   }
   
   ///////////////////////////////////////////////////////////////////////////////////////////////////////////////// 

   
   //ǰ5��Ѱ�����
    Search_1_Line_center[59]=(ABS(Search_1_Line_center[58])+ABS(Search_1_Line_center[57])+ABS(Search_1_Line_center[56])+ABS(Search_1_Line_center[55])) /4; //�´ξʹӸղ��ҵ����е㿪ʼ
  
  
   /******************************************************/
   //��ʱ�����������ң������3�����۵ģ�
   
register   int Last_5_Mid=ABS(Line_center[59]);
   

   
   /******************************************************/
   
   //�Ѿ��ҵ�����ô���У���������ʼѰ��
   for( register int col=55;col>=10 ;col--)
   {
     
   
     for(register int row=Search_starst;row>=0;row--)         //���м������������Ѱ��������
    {
      if(SEARCH_1_PIC [col][row] == PIC_BLACK )
      {
         Left_find_flag=1;
         Left_point=row; //�ҵ�λ��
         break;
      }
      //Pic_show[col][row]=0;
    }
    
    
    for(register int row=Search_starst;row<=79;row++)         //���м����ұ�������Ѱ��������
    {
      if(SEARCH_1_PIC [col][row] ==  PIC_BLACK )
      {
         Right_find_flag=1;
         Right_point=row; //�ҵ�λ��
         break;
      }
//      Pic_show[col][row]=0;
    }
   
    How_Much_Find=Right_find_flag+Left_find_flag;//�ҵ�������
  

      ///////////////////////////////////////////////////////////////////////////////////////////////////////////////// 
 
   if(Rode_Ring==1)
    {
      if(How_Much_Find==2)//����ҵ�����������)
      {
       Search_1_Line_center[col]=Right_point-Pic_Give[col];//��������
       Search_starst=Search_1_Line_center[col];  //��һ������������ʼ��λ��
       if(Search_1_left_center[col]>Search_1_left_center[col+1])  //����
       {
          Search_1_left_center[col]=Search_1_left_center[col+1];
       }
      }
       
      
      if(How_Much_Find==1)//����ҵ���1������
      {
        {
           if(Left_find_flag) //�������ҵ���
           {
               Search_1_Line_center[col]=(Left_point+Pic_Give[col]+80)*0.5;//��������
               Search_starst=Search_1_Line_center[col];  //��һ������������ʼ��λ��
               
               if(Search_1_left_center[col]<Search_1_left_center[col+1])  //����
               {
                  Search_1_left_center[col]=Search_1_left_center[col+1];
               }
           }
           else
           {
               Search_1_Line_center[col]=Right_point -Pic_Give[col];//��������
               Search_starst=Search_1_Line_center[col];  //��һ������������ʼ��λ��
               if(Search_1_left_center[col]>Search_1_left_center[col+1])  //����
               {
                  Search_1_left_center[col]=Search_1_left_center[col+1];
               }
           }
        }
      }
      if(How_Much_Find==0)
      {
         Rode_Ring=0;
         
         Search_1_Line_center[col]=Search_1_Line_center[col+1];//��������
         Search_starst=Search_1_Line_center[col];  //��һ������������ʼ��λ��
         if(Search_1_left_center[col]>Search_1_left_center[col+1])  //����
         {
            Search_1_left_center[col]=Search_1_left_center[col+1];
         } 
      }
    }
    else if( Rode_Cross )
    {
       if(How_Much_Find==2)//����ҵ�����������)
      {
       Search_1_Line_center[col]=(int)((Right_point +Left_point)*0.5);//��������
       Search_starst=Search_1_Line_center[col];  //��һ������������ʼ��λ��
       if(Search_1_left_center[col]>Search_1_left_center[col+1])  //����
       {
          Search_1_left_center[col]=Search_1_left_center[col+1];
       }
      }
    
       if(How_Much_Find==1)//����ҵ���1������
      {
        {
           if(Left_find_flag) //�������ҵ���
           {
               
               Search_1_Line_center[col]=(Search_1_Line_center[col+1]);//��������
               
               Search_starst=Search_1_Line_center[col];  //��һ������������ʼ��λ��
               
               if(Search_1_left_center[col]<Search_1_left_center[col+1])  //����
               {
                  Search_1_left_center[col]=Search_1_left_center[col+1];
               }
           }
           else
           {
               Search_1_Line_center[col]=(Search_1_Line_center[col+1]);//��������
               Search_starst=Search_1_Line_center[col];  //��һ������������ʼ��λ��
               if(Search_1_left_center[col]>Search_1_left_center[col+1])  //����
               {
                  Search_1_left_center[col]=Search_1_left_center[col+1];
               }
           }
        }
      }
    
      if(How_Much_Find==0)
      {
         //Rode_Cross=0;
         Search_1_Line_center[col]=(int)(Search_1_Line_center[col+1]);//��������
         Search_starst=Search_1_Line_center[col];  //��һ������������ʼ��λ��
         if(Search_1_left_center[col]>Search_1_left_center[col+1])  //����
         {
            Search_1_left_center[col]=Search_1_left_center[col+1];
         } 
      }
    }  
    else
    {
      
          if(How_Much_Find==2)//����ҵ�����������
          {
              Search_1_Line_center[col]=(int)((Right_point+Left_point)*0.5);//��������
              Search_starst=Search_1_Line_center[col];  //��һ������������ʼ��λ��
          }

          if(How_Much_Find==1)//����ҵ���1������
          {
          if(Left_find_flag) //�������ҵ���
          {
              Search_1_Line_center[col]=Left_point+Pic_Give[col];//��������
              Search_starst=Search_1_Line_center[col];  //��һ������������ʼ��λ��
              
              if(Search_1_left_center[col]<Search_1_left_center[col+1])  //����
              {
                 Search_1_left_center[col]=Search_1_left_center[col+1];
              }
          }
          else
          {
              Search_1_Line_center[col]=Right_point-Pic_Give[col];//��������
              Search_starst=Search_1_Line_center[col];  //��һ������������ʼ��λ��
              if(Search_1_left_center[col]>Search_1_left_center[col+1])  //����
              {
                 Search_1_left_center[col]=Search_1_left_center[col+1];
              }
          }
          }
      
          if(How_Much_Find==0)    //˵����ʱ�����±�״̬//��Ҫ�����ϴ�������ж�
          {
                     Search_1_Line_center[col]=(Search_1_Line_center[col+1]);
                     Search_starst=Search_1_Line_center[col];
          }
    }
    
    if(Search_1_right_center[col] >79)
       Search_1_right_center[col] =79;
    if(Search_1_left_center[col]<0)  
       Search_1_left_center[col]=0;

   }

}
   


__ramfunc float Sqrt(float A)
{
register float i=0;
for(;i<80;)
	{
	i+=0.5;

	if(i*i>=A)
	    return i;
	}
}

/******************************************************************
 - �����������������ĺ��ߵ�ƽ��ֵ
 - ����˵����*process��������ĺ�������ֵ����������
             num��     ����ͳ�Ƶ����ݸ�����
 - ʾ����	 
 - ����˵��������ƽ��ֵ
 - �޸ļ�¼��
 - ע�����
******************************************************************/





__ramfunc int Calculate_Blackline_Average_2(void)
{
register uint8 i = 0;
register float sum = 0;
register int16 availableCounter = 0;
register float Average=0;        //ƽ������ֵ
int Error_PingHua[5]={0};   //ƽ�����������Χ������5������ֵ�����Ȼ����в���

register int Pic_Qian_Zhan=QianZhan;

if(Pic_Qian_Zhan>=55)
   Pic_Qian_Zhan=55;
if(Pic_Qian_Zhan<=10)
   Pic_Qian_Zhan=10;

//����ֵ
//for (i=55; i>=Pic_Qian_Zhan; i--)     //QianZhan Ĭ��25
//{ 
//     sum += (*(Search_1_Line_center+i));
//     availableCounter++;
//  
//}
//Average=sum/availableCounter;

//��ɢת����
for (i=Pic_Qian_Zhan; i>=20; i--)
{ 
       (*(Search_1_Line_center+i))=
       (*(Search_1_Line_center+i))>(*(Search_1_Line_center+i+1))+2?
       (*(Search_1_Line_center+i+1))+2:
       (*(Search_1_Line_center+i))<(*(Search_1_Line_center+i+1))-2?
       (*(Search_1_Line_center+i+1))-2:
       (*(Search_1_Line_center+i));  
}

sum=0;
availableCounter=0;

//Speed_Ang


float Speed_Ang_Turn=0;
int HH=0;
float ASD=0;

Speed_Ang_Turn=Speed_Ang<0?0:Speed_Ang>70?70:Speed_Ang;

Speed_Ang_Turn*=0.12;

Speed_Ang_Turn=Speed_Ang_Turn>10?10:Speed_Ang_Turn<0?0:Speed_Ang_Turn;

HH=0;//((int)Speed_Ang_Turn);


for (i=50; i>=Pic_Qian_Zhan; i--)
{ 
     sum += (*(Search_1_Line_center+i));
     availableCounter++;
}
sum/=availableCounter;




//Search_1_Line_center[55]-=Xielu_K  ;
//Search_1_Line_center[54]=(sum/availableCounter)  ;

   return (int)(sum);
}



