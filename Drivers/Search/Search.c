#include "ALL_Init.h"
#include "Search.h"




//以下全是基友号代码所需变量

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


// 150的图像宽度修正范围是20-50
//30  占1/5
//80的宽度 修正16
//16分给60行
//起始占
//算了直接给他们的拿来整体/2




/****************************************/
int16 Line_center[ROW];     // 记录黑线中心数组
int16 right_center[ROW];
int16 left_center[ROW];
uint8 left_lost[ROW];
uint8 right_lost[ROW];
// 存放中心黑线坐标位置
int blackline[ROW];
int okst=0;//起跑线识别
int stop_car=0;//停车标志位

#define MID_G 3

/******************************************/


//参考基友号图像处理                      
//void Search_images(uint8 (*processArray)[COLUMN])
void Search_3_Line(void)
{
   int16 right,left;
   int16 column,lk_flag,row_lost;
   uint8 left_flag,right_flag;//左右找跳变 标志位
   int16 column_i;
   
   //初始化参考位置,以后将会跟随
   Line_center[ROW]=COLUMN/2;
   Line_center[ROW-1]=COLUMN/2;
   Line_center[ROW-5]=COLUMN/2;
   
   left=0;
   right=COLUMN-1;   
   if(Line_center[ROW]>COLUMN*0.9)//中线限值
      Line_center[ROW]=COLUMN*0.9;
   else if(Line_center[ROW]<COLUMN*0.1)
      Line_center[ROW]=COLUMN*0.1;
   //以上进行中线限值
   
   for(int i=0;i<60;i++)
   {
     for(int j=0;j<80;j++)
     Pic_show[i][j]=1;
   }
   
   
   for(column = ROW-1; column >= ROW-5; column--)//5行
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
     for(column_i=Line_center[column+1];column_i>left;column_i--)//中间往左
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
     for(column_i=Line_center[column+1];column_i<right;column_i++)//中间往右
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
     
     
     if((right_flag+left_flag)==2)//两条黑线都找到了
     {
//      if((right-left)<10) //可能检测到了起跑线
//      {
//         Line_center[column]=  Line_center[column+1]; 
//         left= Line_center[column]-COLUMN/3;
//	     right= Line_center[column]+COLUMN/3;
//         if(left<0) left=0;
//	     if(right>COLUMN-1) right=COLUMN-1;
//	     continue;//放弃这次循环
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
       if(left_flag==1)//左边有
       {
         Line_center[column]  = (int16)(left +MID_G+ xiuzheng[column]/2);
         right_lost[column] = 0;
         left_lost[column] = 1;
         right_center[column]= 78;
         left_center[column]= left;
         if( Line_center[column] <  Line_center[column+1] ) //是折线
         {
         Line_center[column] = Line_center[column+1];         
         }
         
       }
       if(right_flag==1)//右边有
        {
         Line_center[column]  =(int16)(right -MID_G- xiuzheng[column]/2);
         right_lost[column] = 1;
         left_lost[column] = 0;
         right_center[column]= right;
         left_center[column]= 1;
        if( Line_center[column]  >  Line_center[column+1] ) //是折线
      {
        Line_center[column] = Line_center[column+1];
       }
       
        }
      }
     else//跳变木有
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
   
//以上是处理最近的5行

   row_lost=0;
   for(column = ROW-6; column >=0; column--) 
   {
       //左右标志位清空
       left_flag =0;
       right_flag=0;
       
       //当前的根据上次找到的状态赋值
       left =(int16)(Line_center[column+1]-15);//后面的值跟距离有关!!!
       right=(int16)(Line_center[column+1]+15);//后面的值跟距离有关!!!

       //左右限值
       if(left<0) 
       {
         left=0;
       }
       if(right>COLUMN-1) 
       {
         right=COLUMN-1;
       }

      //从上面的代码 找到Left和Right的位置

        
      //从中间往左扫描
	  
      for(column_i=Line_center[column+1];column_i>left;column_i--)//中间往左
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

	  //从中间往右扫描
     for(column_i=Line_center[column+1];column_i<right;column_i++)//中间往右
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

     //根据上面扫描的情况判断(Left和Right)

     if((right_flag+left_flag)==2)//两条黑线都找到了
     {
//      if((column <= 54)&&(column >= 48)&&(lk_flag ==2)&&(ABS(Line_center[column+5]-40)<10))
//       {
//        if(((right - left) < 25)&&(okst==1)) //可能是起跑线
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
       if(left_flag==1)//左边有
       {
       /*
        if((column <= 54)&&(column >= 48)&&(AbS(Line_center[column+5]-40)<10)&& ((right_lost[column+1]==1)|| (right_lost[column+2]==1)||(right_lost[column+3]==1)))
        {
         if(((((right_center[column+1] - left) < 25)||((right_center[column+2] - left) < 25)||((right_center[column+3] - left) < 25)))&&(okst==1)) //可能是起跑线
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
         
        if( Line_center[column] <  Line_center[column+1] ) //是折线
         {
          Line_center[column]=Line_center[column+1]+(Line_center[column+2]-Line_center[column+3]);
         }
        
        if(lk_flag==2)//上一次是两边都有的!!!
	   	 {
	   	 Line_center[column+1]=Line_center[column];
	   	 Line_center[column+2]=Line_center[column];
	   	 }
         
	     lk_flag=1;
       }
       
	   
       if(right_flag==1)//左边有
        {
        /*
         if((column <= 54)&&(column >= 48)&&(Abs_Int16(Line_center[column+5],74)<20)&& ((left_lost[column+1]==1)|| (left_lost[column+2]==1)||(left_lost[column+3]==1)))
        {
         if(((((right- left_center[column+1]) < 25)||((right - left_center[column+2]) < 25)||((right - left_center[column+3]) < 25)))&&(okst==1)) //可能是起跑线
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
       if(Line_center[column]  >  Line_center[column+1] ) //是折线
        {
        Line_center[column]=Line_center[column+1]+(Line_center[column+2]-Line_center[column+3]);
        }        
     
          if(lk_flag==2)//上一次是两边都有的!!!
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


	  //左右限值
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
 - 功能描述：计算中心黑线的平均值
 - 参数说明：*process：存放中心黑线坐标值的数组名，
             num：     进行统计的数据个数。
 - 示例：	 
 - 返回说明：返回平均值
 - 修改记录：
 - 注意事项：
******************************************************************/

int Calculate_Blackline_Average(void)
{
uint8 i = 0;
int16 sum = 0;
int16 availableCounter = 0;
int Average=0;        //平均中线值



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





