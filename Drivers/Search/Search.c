#include "ALL_Init.h"
#include "Search.h"




//����ȫ�ǻ��ѺŴ����������

#define  processArray         Pic
#define  ROW                  60
#define  COLUMN               79  
#define  PIC_BLACK            1
#define  PIC_WHITE            0



float xiuzheng[ROW]={ 
18.0, 18.5, 19.0, 19.5, 20.0, 20.5, 20.5, 21.5, 22.0, 22.5,
23.0, 23.5, 24.0, 24.5, 25.5, 25.5, 26.5, 26.5, 26.5, 27.5,
28.5, 28.5, 29.0, 29.5, 30.0, 30.5, 31.0, 31.5, 32.0, 32.5,
33.0, 33.5, 34.0, 34.5, 35.0, 35.5, 35.5, 36.5, 36.5, 37.5,
38.5, 38.5, 39.5, 40.5, 41.5, 42.5, 43.5, 44.0, 44.5, 46.0,
47.0, 48.0, 49.0, 50.0, 51.0, 52.0, 53.0, 54.0, 55.5, 56.5};


// 150��ͼ����������Χ��20-50
//30  ռ1/5
//80�Ŀ�� ����16
//16�ָ�60��
//��ʼռ
//����ֱ�Ӹ����ǵ���������/2




/****************************************/
int16 Line_center[ROW];     // ��¼������������
int16 right_center[ROW];
int16 left_center[ROW];
uint8 left_lost[ROW];
uint8 right_lost[ROW];
// ������ĺ�������λ��
int blackline[ROW];
int okst=0;//������ʶ��
int stop_car=0;//ͣ����־λ

#define MID_G 3

/******************************************/


//�ο����Ѻ�ͼ����                      
//void Search_images(uint8 (*processArray)[COLUMN])
void Search_3_Line(void)
{
   int16 right,left;
   int16 column,lk_flag,row_lost;
   uint8 left_flag,right_flag;//���������� ��־λ
   int16 column_i;
   
   //��ʼ���ο�λ��,�Ժ󽫻����
   Line_center[ROW]=COLUMN/2;
   Line_center[ROW-1]=COLUMN/2;
   Line_center[ROW-5]=COLUMN/2;
   
   left=0;
   right=COLUMN-1;   
   if(Line_center[ROW]>COLUMN*0.9)//������ֵ
      Line_center[ROW]=COLUMN*0.9;
   else if(Line_center[ROW]<COLUMN*0.1)
      Line_center[ROW]=COLUMN*0.1;
   //���Ͻ���������ֵ
   
   for(int i=0;i<60;i++)
   {
     for(int j=0;j<80;j++)
     Pic_show[i][j]=1;
   }
   
   
   for(column = ROW-1; column >= ROW-5; column--)//5��
   {
     left_flag =0;
     right_flag=0;
     left=left-2; 
     right=right+2;
     if(left<0)
     {
      left=0; 
     }
     if(right>COLUMN-1) 
     {
       right=COLUMN-1;
     }
     for(column_i=Line_center[column+1];column_i>left;column_i--)//�м�����
     {
       Pic_show[column][column_i] =0;
       
       if(processArray[column][column_i] == PIC_BLACK)
       {
          left_flag=1;
	      left=column_i;
	  break;
       }
       left_flag=0;
       left=0;
     }
     for(column_i=Line_center[column+1];column_i<right;column_i++)//�м�����
     {
       
       Pic_show[column][column_i] =0;
       if(processArray[column][column_i] == PIC_BLACK)
       {
          right_flag=1;
	      right=column_i;
	  break;
       }
       right_flag=0;
       right=78;
     }
     
     
     if((right_flag+left_flag)==2)//�������߶��ҵ���
     {
//      if((right-left)<10) //���ܼ�⵽��������
//      {
//         Line_center[column]=  Line_center[column+1]; 
//         left= Line_center[column]-COLUMN/3;
//	     right= Line_center[column]+COLUMN/3;
//         if(left<0) left=0;
//	     if(right>COLUMN-1) right=COLUMN-1;
//	     continue;//�������ѭ��
//      }
//      else
      {
       right_center[column]= right;
       left_center[column]= left;
       Line_center[column] = (right + left)/2; 
      }
      right_lost[column] = 1;
      left_lost[column] = 1;
     }
     else if((right_flag+left_flag)==1)
     {
       if(left_flag==1)//�����
       {
         Line_center[column]  = (int16)(left +MID_G+ xiuzheng[column]/2);
         right_lost[column] = 0;
         left_lost[column] = 1;
         right_center[column]= 78;
         left_center[column]= left;
         if( Line_center[column] <  Line_center[column+1] ) //������
         {
         Line_center[column] = Line_center[column+1];         
         }
         
       }
       if(right_flag==1)//�ұ���
        {
         Line_center[column]  =(int16)(right -MID_G- xiuzheng[column]/2);
         right_lost[column] = 1;
         left_lost[column] = 0;
         right_center[column]= right;
         left_center[column]= 1;
        if( Line_center[column]  >  Line_center[column+1] ) //������
      {
        Line_center[column] = Line_center[column+1];
       }
       
        }
      }
     else//����ľ��
     {
      row_lost++;
      Line_center[column]=(Line_center[column+1]+40)>>2;
      right_center[column]= 78;
      left_center[column]= 1;
      right_lost[column] = 0;
      left_lost[column] = 0;  
      
      
      
     }
    if(Line_center[column]>COLUMN-1)
     {
        Line_center[column]=COLUMN-1;;
      }
     else if(Line_center[column]<0)
      {
       Line_center[column]=0; 
      }
      lk_flag=left_flag+right_flag;
    }
   
//�����Ǵ��������5��

   row_lost=0;
   for(column = ROW-6; column >=0; column--) 
   {
       //���ұ�־λ���
       left_flag =0;
       right_flag=0;
       
       //��ǰ�ĸ����ϴ��ҵ���״̬��ֵ
       left =(int16)(Line_center[column+1]-15);//�����ֵ�������й�!!!
       right=(int16)(Line_center[column+1]+15);//�����ֵ�������й�!!!

       //������ֵ
       if(left<0) 
       {
         left=0;
       }
       if(right>COLUMN-1) 
       {
         right=COLUMN-1;
       }

      //������Ĵ��� �ҵ�Left��Right��λ��

        
      //���м�����ɨ��
	  
      for(column_i=Line_center[column+1];column_i>left;column_i--)//�м�����
      {
        Pic_show[column][column_i] =0;
       if(processArray[column][column_i] == PIC_BLACK)
       {
          left_flag=1;
	      left=column_i;
	      break;
       }
       left_flag=0;
       left=0;
      }

	  //���м�����ɨ��
     for(column_i=Line_center[column+1];column_i<right;column_i++)//�м�����
     {
       Pic_show[column][column_i] =0;
       if(processArray[column][column_i] == PIC_BLACK)
       {
          right_flag=1;
	      right=column_i;
	      break;
       }
       right_flag=0;
       right=78;
     }

     //��������ɨ�������ж�(Left��Right)

     if((right_flag+left_flag)==2)//�������߶��ҵ���
     {
//      if((column <= 54)&&(column >= 48)&&(lk_flag ==2)&&(ABS(Line_center[column+5]-40)<10))
//       {
//        if(((right - left) < 25)&&(okst==1)) //������������
//        {
//           stop_car =1; 
//        }
//       } 

     if((right_lost[column+1]==1)&&(left_lost[column+1] == 0))
      {
        right_center[column]= right;
        left_center[column]= 1;
        Line_center[column]  =(int16)((right) -MID_G- xiuzheng[column]/2);
        right_lost[column]=1;
        left_lost[column] = 0;
      }
	 
     else if((right_lost[column+1]==0)&&(left_lost[column+1] == 1))
       {
         right_center[column]= 78;
         left_center[column]= left;
         Line_center[column]  =(int16)((left)+ MID_G+ xiuzheng[column]/2); 
         right_lost[column]=0;
         left_lost[column] = 1;
      }
	 
      else
      {
         right_center[column]= right;
         left_center[column]= left;
         Line_center[column] = (right + left)/2; 
         right_lost[column]=1;
         left_lost[column] = 1;          
      }
	  
       lk_flag =2;
     } 



     else if((right_flag+left_flag)==1)
     {
       if(left_flag==1)//�����
       {
       /*
        if((column <= 54)&&(column >= 48)&&(AbS(Line_center[column+5]-40)<10)&& ((right_lost[column+1]==1)|| (right_lost[column+2]==1)||(right_lost[column+3]==1)))
        {
         if(((((right_center[column+1] - left) < 25)||((right_center[column+2] - left) < 25)||((right_center[column+3] - left) < 25)))&&(okst==1)) //������������
         {
           stop_car =1; 
         }
        }
        */
         right_lost[column]=0;
         left_lost[column] = 1;
         right_center[column]= 78;
         left_center[column]= left;
         Line_center[column]  = (int16)(left +MID_G+ xiuzheng[column]/2);
         
        if( Line_center[column] <  Line_center[column+1] ) //������
         {
          Line_center[column]=Line_center[column+1]+(Line_center[column+2]-Line_center[column+3]);
         }
        
        if(lk_flag==2)//��һ�������߶��е�!!!
	   	 {
	   	 Line_center[column+1]=Line_center[column];
	   	 Line_center[column+2]=Line_center[column];
	   	 }
         
	     lk_flag=1;
       }
       
	   
       if(right_flag==1)//�����
        {
        /*
         if((column <= 54)&&(column >= 48)&&(Abs_Int16(Line_center[column+5],74)<20)&& ((left_lost[column+1]==1)|| (left_lost[column+2]==1)||(left_lost[column+3]==1)))
        {
         if(((((right- left_center[column+1]) < 25)||((right - left_center[column+2]) < 25)||((right - left_center[column+3]) < 25)))&&(okst==1)) //������������
         {
           stop_car =1; 
         }
        }
        */
		 
         right_lost[column]=1;
         left_lost[column] = 0;
         right_center[column]= right;
         left_center[column]= 1;
         Line_center[column]  =(int16)(right -MID_G- xiuzheng[column]/2);      
       if(Line_center[column]  >  Line_center[column+1] ) //������
        {
        Line_center[column]=Line_center[column+1]+(Line_center[column+2]-Line_center[column+3]);
        }        
     
          if(lk_flag==2)//��һ�������߶��е�!!!
	  {
	  Line_center[column+1]=Line_center[column];
	  Line_center[column+2]=Line_center[column];
	  }
          
	  lk_flag=1;
         }
      }

	 
      else
      {
       right_lost[column]=0;
       left_lost[column] = 0;
       right_center[column]= 78;
       left_center[column]= 1;
       Line_center[column]=Line_center[column+1]+((Line_center[column+1]-Line_center[column+2])+(Line_center[column+2]-Line_center[column+3]))/2;
       lk_flag=0; 
      }


	  //������ֵ
      if(Line_center[column]>COLUMN-1)
       {
        Line_center[column]=COLUMN-1;
       }
      else if(Line_center[column]<0)
       {
       Line_center[column]=0; 
       }
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

int Calculate_Blackline_Average(void)
{
uint8 i = 0;
int16 sum = 0;
int16 availableCounter = 0;
int Average=0;        //ƽ������ֵ



for (i=53; i>35; i--)
{ 
     sum += (*(Line_center+i));
     availableCounter++;
}
Average=sum/availableCounter;
  /*
for (i=50; i>0; i--)
{ 
     //*(Line_center+i)=(Average+*(Line_center+i))>>2;
     
     if(*(Line_center+i)>(*(Line_center+i+1)) +1)
     {
        *(Line_center+i)   = *(Line_center+i+1)+1;
     }
     if(*(Line_center+i)<(*(Line_center+i+1)) -1)
     {
     
        *(Line_center+i)   = *(Line_center+i+1)-1;
     }
     //availableCounter++;
}

availableCounter=0;
sum=0;
for (i=50; i>30; i--)
{ 
     sum += (*(Line_center+i));
     availableCounter++;
}

      */
   return (sum/availableCounter);
}





