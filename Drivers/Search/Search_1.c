#include "ALL_Init.h"
#include "Search_1.h"




uint8 RoadType;//赛道类型确认

//返回如下几种情况
//1 1: 十字
//2 2:环岛
//3 3:障碍
//4 4:坡道
//5 5:普通



//更改赛道类型
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
//////////////////////////////////从这开始//////////////////////////////////////


#define SEARCH_1_PIC     Pic
#define aPic             Pic
#define SEARCH_1_ROW     60
#define SEARCH_2_COL     80
#define PIC_BLACK        1
#define PIC_WHITE        0



int Huan_Rode_Flag=0;//环路出现标志
int Shizi_Rode_Flag=0;//十字标志

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
register    int I=0,Num=2,d=0,Sign=0,Same_number=0,num=0;//i 最近行的选择
    
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
int16 Search_1_Rode_Wide[SEARCH_1_ROW];       //赛道宽度记录
//先找到底部稳定的59-54中点
//取出Mid

int16 Search_1_Line_center[SEARCH_1_ROW];     //记录黑线中心数组
int16 Search_1_right_center[SEARCH_1_ROW];    //右边数组
int16 Search_1_left_center[SEARCH_1_ROW];     //左边数组

int Find_Shizi_YuanZhan;  //十字和环路查找的远瞻


//从上往下搜索5行空白的情况
//搜索十字和环路并补线程序
__ramfunc void Search_1_Shizi(void)
{
  
register  int Normal_where=60;  //异常结束的位置
register  int Normal_flag=0;    //记录异常数据个数
  
register  int Point_A_Left=0,Point_A_Right=0;       //如果是十字弯，对最前面一行线数据进行提取
register  int Point_B_Left=0,Point_B_Right=0;       //同理 最近处数据提取
  
   for(register int col=59;col>=Find_Shizi_YuanZhan;col--)    //Find_Shizi_YuanZhan通常取20
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
     
    for(register int row2=40;row2>=0;row2--)         //从中间向左边搜索，寻找跳变沿
    {
      
      if(Search_1_SZ [col][row2] ==PIC_WHITE)
      {
         Search_1_Rode_Wide[col]++;
      }
      else break;
      
    }
   }
   //赛道宽度记录完毕开始处理
   for(register int col=59;col>=Find_Shizi_YuanZhan;col--) 
   {
      if(Search_1_Rode_Wide[col]>(78))  //检测异常宽度
      {
        Search_1_Rode_Wide[col]=1;
        Normal_flag++;
        Normal_where=col;
      }
   }
   
   //先判断是否有异常
   if(Normal_flag>0)        //存在异常需要处理
   {
     //查看异常结束的位置 ,并检测到底是什么异常
     if(Search_1_SZ[Normal_where>10?Normal_where-10:10][40]==PIC_BLACK          ||\
        Search_1_SZ[Normal_where>15?Normal_where-15:15][40]==PIC_BLACK  )//        ||\
        //Search_1_SZ[Normal_where>20?Normal_where-20:20][40]==PIC_BLACK )         //||\
        //Search_1_SZ[Normal_where>25?Normal_where-25:25][40]==PIC_BLACK )
     {  //只要满足本条件，就可以断定是环路，就不补线了，直接丢一侧开始扫线
        Huan_Rode_Flag=1;    //确定是环路，交给后面处理
        
        for(register int i=Normal_where;i<=Normal_where+Normal_flag;i++)
        {
         //Search_1_SZ[i][40]=!Search_1_SZ[i][40];            //这句话可以用来把中线显示出来
         //Line_center[i]= - Line_center[i];                   //把中线取反作为丢线的标记
          
          
//          A_X_B_X=(((i-Normal_where)+1)/Normal_flag)*(Search_1_Line_center[Normal_where-1])\
//            +(1-((i-Normal_where)+1)/Normal_flag)/Search_1_Line_center[Normal_where+Normal_flag+1]; 
          
          
          
          Search_1_Line_center[i]=Search_1_Line_center[Normal_where+Normal_flag]+(Normal_where+Normal_flag-i); 
          
        } 
     }    
     else 
     {  
        //已经可以稳定的找到十字丢线，此时需要看是近处丢线还是远处丢线
        Shizi_Rode_Flag=1;
        
        
register    float A_X_B_X=0.0;
        
        for(register int i=Normal_where;i<=Normal_where+Normal_flag;i++)
        {
         //Search_1_SZ[i][40]=!Search_1_SZ[i][40];            //这句话可以用来把中线显示出来
         //Line_center[i]= - Line_center[i];                   //把中线取反作为丢线的标记
          
          
//          A_X_B_X=(((i-Normal_where)+1)/Normal_flag)*(Search_1_Line_center[Normal_where-1])\
//            +(1-((i-Normal_where)+1)/Normal_flag)/Search_1_Line_center[Normal_where+Normal_flag+1]; 
          
          A_X_B_X=Search_1_Line_center[59];
          
          Search_1_Line_center[i]=(int)A_X_B_X; 
          
        }
        //先判断一下十字补线结束的位置
        //如果是近处十字，则通过远处的边线反向延伸来补
        //如果是远处十字，则通过近处向远处延伸补线      
     }

   }
}



void ShiZi_Bu(void )
{
  //把所有宽度异常的地方中线都清零
  
  //先找到拐点
  

}


__ramfunc void Search_1(void)
{
   static int Left_point=0;      //左边跳变沿位置
   static int Right_point=79;    //右边跳变沿位置
   static int Left_last_find=0;  //上一次左边是否找到
   static int Right_last_find=0; //上一次右边是否找到
   static int How_Much_Find=0;   //找到了几个边
   static int Last_How_Much_Find=0;//上一次找到了几个边沿
   
   static int Search_starst=0;   //从中间向两边搜索起始点
   static int Left_find_flag=0 ; //左面是否找到
   static int Right_find_flag=0; //右面是否找到
   
   int Flag_Cross=0;//十字
   int Flag_Ring=0; //环路
   int White_Nums=0;//长白行的行数
   int LLL=0,MMM=0,RRR=0;
   int What_Road=0;//正常路况
   
   Left_find_flag=0 ;
   Right_find_flag=0; 
   Left_point=0;      //左边跳变沿位置
   Right_point=79;    //右边跳变沿位置
   How_Much_Find=0;   //找到了几个边
   Search_starst=0;   //从中间向两边搜索起始点

  //UI显示图像初始化
  //只用来显示扫描的区域，没扫描的区域一概黑色
//   for(register int i=0;i<60;i++)
//   {
//     for(register int j=0;j<80;j++)
//     Pic_show[i][j]=1;
//   }
   
   //Search_1_Shizi();  //注意 十字处理会把十字弯丢线用虚线补充出来
   //return ;
   
   
   
   Cross_Find();
   
   //Pic_Find();   //查找环路和十字
   

   Search_starst=ABS(Search_1_Line_center[59]);//59存放前上一次中点的信息
   Search_starst=Search_starst<15?15:Search_starst>65?65:Search_starst; //给中间起始\
   点限值，防止出现不合理
   
   int White_Point_Nums=0;          //每行白点计数
   int White_Point_Nums_Lie=0;      //白行所在位置
   int White_Point_Nums_Lie_Times=0;//白行个数

   for(register int col=58;col>=55;col--)
   {
    //Make_Line(col);      //处理个单行 保证是最稳定的单行    
    for(register int row=Search_starst;row>=0;row--)         //从中间向左边搜索，寻找跳变沿
    {
      if(SEARCH_1_PIC [col][row] == PIC_BLACK )
      {
         Left_find_flag=1;
         Left_point=row; //找到位置
         break;
      }
      //Pic_show[col][row]=0;
    }
    
    
    for(register int row=Search_starst;row<=79;row++)         //从中间向右边搜索，寻找跳变沿
    {
      if(SEARCH_1_PIC [col][row] ==  PIC_BLACK )
      {
         Right_find_flag=1;
         Right_point=row; //找到位置
         break;
      }
      //Pic_show[col][row]=0;
    }
    //以上完成粗略搜索，找到中间点，然后从中间点向上找，看看竖向能找到多远，作为之后的参数
    How_Much_Find=Right_find_flag+Left_find_flag;//找到的数量

   ///////////////////////////////////////////////////////////////////////////////////////////////////////////////// 
 
   if(Rode_Ring==1)
    {
      if(How_Much_Find==2)//如果找到了两个边沿)
      {
       Search_1_Line_center[col]=Right_point-Pic_Give[col]+5;//中线数组
       Search_starst=Search_1_Line_center[col];  //下一次搜索变量开始的位置
       if(Search_1_left_center[col]>Search_1_left_center[col+1])  //折线
       {
          Search_1_left_center[col]=Search_1_left_center[col+1];
       }
      }
      if(How_Much_Find==1)//如果找到了1个边沿
      {
        {
           if(Left_find_flag) //如果左边找到了
           {
               if(Left_point<40)
               {
                Left_point=40;
               }
               Search_1_Line_center[col]=(Left_point+Pic_Give[col])+5;//中线数组
               Search_starst=Search_1_Line_center[col];  //下一次搜索变量开始的位置
               
               if(Search_1_left_center[col]<Search_1_left_center[col+1])  //折线
               {
                  Search_1_left_center[col]=Search_1_left_center[col+1];
               }
           }
           else
           {
               Search_1_Line_center[col]=Right_point -Pic_Give[col]+5;//中线数组
               Search_starst=Search_1_Line_center[col];  //下一次搜索变量开始的位置
               if(Search_1_left_center[col]>Search_1_left_center[col+1])  //折线
               {
                  Search_1_left_center[col]=Search_1_left_center[col+1];
               }
           }
        }
      }
      if(How_Much_Find==0)
      {
         Rode_Ring=0;
         
         Search_1_Line_center[col]=Search_1_Line_center[col+1]+5;//中线数组
         Search_starst=Search_1_Line_center[col];  //下一次搜索变量开始的位置
         if(Search_1_left_center[col]>Search_1_left_center[col+1])  //折线
         {
            Search_1_left_center[col]=Search_1_left_center[col+1];
         } 
      }
    }
    else if( Rode_Cross )
    {
       if(How_Much_Find==2)//如果找到了两个边沿)
      {
       Search_1_Line_center[col]=(int)((Right_point +Left_point)*0.5);//中线数组
       Search_starst=Search_1_Line_center[col];  //下一次搜索变量开始的位置
       if(Search_1_left_center[col]>Search_1_left_center[col+1])  //折线
       {
          Search_1_left_center[col]=Search_1_left_center[col+1];
       }
      }
    
       if(How_Much_Find==1)//如果找到了1个边沿
      {
        {
           if(Left_find_flag) //如果左边找到了
           {
               
               Search_1_Line_center[col]=(Search_1_Line_center[col+1]);//中线数组
               
               Search_starst=Search_1_Line_center[col];  //下一次搜索变量开始的位置
               
               if(Search_1_left_center[col]<Search_1_left_center[col+1])  //折线
               {
                  Search_1_left_center[col]=Search_1_left_center[col+1];
               }
           }
           else
           {
               Search_1_Line_center[col]=(Search_1_Line_center[col+1]);//中线数组
               Search_starst=Search_1_Line_center[col];  //下一次搜索变量开始的位置
               if(Search_1_left_center[col]>Search_1_left_center[col+1])  //折线
               {
                  Search_1_left_center[col]=Search_1_left_center[col+1];
               }
           }
        }
      }
    
      if(How_Much_Find==0)
      {
         //Rode_Cross=0;
         Search_1_Line_center[col]=(int)(Search_1_Line_center[col+1]);//中线数组
         Search_starst=Search_1_Line_center[col];  //下一次搜索变量开始的位置
         if(Search_1_left_center[col]>Search_1_left_center[col+1])  //折线
         {
            Search_1_left_center[col]=Search_1_left_center[col+1];
         } 
      }
    }  
    else
    {
      
    if(How_Much_Find==2)//如果找到了两个边沿
    {
        Search_1_Line_center[col]=(int)((Right_point+Left_point)*0.5);//中线数组
        Search_starst=Search_1_Line_center[col];  //下一次搜索变量开始的位置
    }

    if(How_Much_Find==1)//如果找到了1个边沿
    {
          if(Left_find_flag) //如果左边找到了
          {
              Search_1_Line_center[col]=Left_point+Pic_Give[col];//中线数组
              Search_starst=Search_1_Line_center[col];  //下一次搜索变量开始的位置
              
              if(Search_1_left_center[col]<Search_1_left_center[col+1])  //折线
              {
                 Search_1_left_center[col]=Search_1_left_center[col+1];
              }
          }
          else
          {
              Search_1_Line_center[col]=Right_point-Pic_Give[col];//中线数组
              Search_starst=Search_1_Line_center[col];  //下一次搜索变量开始的位置
              if(Search_1_left_center[col]>Search_1_left_center[col+1])  //折线
              {
                 Search_1_left_center[col]=Search_1_left_center[col+1];
              }
          }
    }
      
     if(How_Much_Find==0)    //说明此时处于懵逼状态//需要根据上次情况来判断
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

   
   //前5行寻找完毕
    Search_1_Line_center[59]=(ABS(Search_1_Line_center[58])+ABS(Search_1_Line_center[57])+ABS(Search_1_Line_center[56])+ABS(Search_1_Line_center[55])) /4; //下次就从刚才找到的中点开始
  
  
   /******************************************************/
   //此时该竖向向上找，最好找3个波折的，
   
register   int Last_5_Mid=ABS(Line_center[59]);
   

   
   /******************************************************/
   
   //已经找到了这么多行，可以竖向开始寻找
   for( register int col=55;col>=10 ;col--)
   {
     
   
     for(register int row=Search_starst;row>=0;row--)         //从中间向左边搜索，寻找跳变沿
    {
      if(SEARCH_1_PIC [col][row] == PIC_BLACK )
      {
         Left_find_flag=1;
         Left_point=row; //找到位置
         break;
      }
      //Pic_show[col][row]=0;
    }
    
    
    for(register int row=Search_starst;row<=79;row++)         //从中间向右边搜索，寻找跳变沿
    {
      if(SEARCH_1_PIC [col][row] ==  PIC_BLACK )
      {
         Right_find_flag=1;
         Right_point=row; //找到位置
         break;
      }
//      Pic_show[col][row]=0;
    }
   
    How_Much_Find=Right_find_flag+Left_find_flag;//找到的数量
  

      ///////////////////////////////////////////////////////////////////////////////////////////////////////////////// 
 
   if(Rode_Ring==1)
    {
      if(How_Much_Find==2)//如果找到了两个边沿)
      {
       Search_1_Line_center[col]=Right_point-Pic_Give[col];//中线数组
       Search_starst=Search_1_Line_center[col];  //下一次搜索变量开始的位置
       if(Search_1_left_center[col]>Search_1_left_center[col+1])  //折线
       {
          Search_1_left_center[col]=Search_1_left_center[col+1];
       }
      }
       
      
      if(How_Much_Find==1)//如果找到了1个边沿
      {
        {
           if(Left_find_flag) //如果左边找到了
           {
               Search_1_Line_center[col]=(Left_point+Pic_Give[col]+80)*0.5;//中线数组
               Search_starst=Search_1_Line_center[col];  //下一次搜索变量开始的位置
               
               if(Search_1_left_center[col]<Search_1_left_center[col+1])  //折线
               {
                  Search_1_left_center[col]=Search_1_left_center[col+1];
               }
           }
           else
           {
               Search_1_Line_center[col]=Right_point -Pic_Give[col];//中线数组
               Search_starst=Search_1_Line_center[col];  //下一次搜索变量开始的位置
               if(Search_1_left_center[col]>Search_1_left_center[col+1])  //折线
               {
                  Search_1_left_center[col]=Search_1_left_center[col+1];
               }
           }
        }
      }
      if(How_Much_Find==0)
      {
         Rode_Ring=0;
         
         Search_1_Line_center[col]=Search_1_Line_center[col+1];//中线数组
         Search_starst=Search_1_Line_center[col];  //下一次搜索变量开始的位置
         if(Search_1_left_center[col]>Search_1_left_center[col+1])  //折线
         {
            Search_1_left_center[col]=Search_1_left_center[col+1];
         } 
      }
    }
    else if( Rode_Cross )
    {
       if(How_Much_Find==2)//如果找到了两个边沿)
      {
       Search_1_Line_center[col]=(int)((Right_point +Left_point)*0.5);//中线数组
       Search_starst=Search_1_Line_center[col];  //下一次搜索变量开始的位置
       if(Search_1_left_center[col]>Search_1_left_center[col+1])  //折线
       {
          Search_1_left_center[col]=Search_1_left_center[col+1];
       }
      }
    
       if(How_Much_Find==1)//如果找到了1个边沿
      {
        {
           if(Left_find_flag) //如果左边找到了
           {
               
               Search_1_Line_center[col]=(Search_1_Line_center[col+1]);//中线数组
               
               Search_starst=Search_1_Line_center[col];  //下一次搜索变量开始的位置
               
               if(Search_1_left_center[col]<Search_1_left_center[col+1])  //折线
               {
                  Search_1_left_center[col]=Search_1_left_center[col+1];
               }
           }
           else
           {
               Search_1_Line_center[col]=(Search_1_Line_center[col+1]);//中线数组
               Search_starst=Search_1_Line_center[col];  //下一次搜索变量开始的位置
               if(Search_1_left_center[col]>Search_1_left_center[col+1])  //折线
               {
                  Search_1_left_center[col]=Search_1_left_center[col+1];
               }
           }
        }
      }
    
      if(How_Much_Find==0)
      {
         //Rode_Cross=0;
         Search_1_Line_center[col]=(int)(Search_1_Line_center[col+1]);//中线数组
         Search_starst=Search_1_Line_center[col];  //下一次搜索变量开始的位置
         if(Search_1_left_center[col]>Search_1_left_center[col+1])  //折线
         {
            Search_1_left_center[col]=Search_1_left_center[col+1];
         } 
      }
    }  
    else
    {
      
          if(How_Much_Find==2)//如果找到了两个边沿
          {
              Search_1_Line_center[col]=(int)((Right_point+Left_point)*0.5);//中线数组
              Search_starst=Search_1_Line_center[col];  //下一次搜索变量开始的位置
          }

          if(How_Much_Find==1)//如果找到了1个边沿
          {
          if(Left_find_flag) //如果左边找到了
          {
              Search_1_Line_center[col]=Left_point+Pic_Give[col];//中线数组
              Search_starst=Search_1_Line_center[col];  //下一次搜索变量开始的位置
              
              if(Search_1_left_center[col]<Search_1_left_center[col+1])  //折线
              {
                 Search_1_left_center[col]=Search_1_left_center[col+1];
              }
          }
          else
          {
              Search_1_Line_center[col]=Right_point-Pic_Give[col];//中线数组
              Search_starst=Search_1_Line_center[col];  //下一次搜索变量开始的位置
              if(Search_1_left_center[col]>Search_1_left_center[col+1])  //折线
              {
                 Search_1_left_center[col]=Search_1_left_center[col+1];
              }
          }
          }
      
          if(How_Much_Find==0)    //说明此时处于懵逼状态//需要根据上次情况来判断
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
 - 功能描述：计算中心黑线的平均值
 - 参数说明：*process：存放中心黑线坐标值的数组名，
             num：     进行统计的数据个数。
 - 示例：	 
 - 返回说明：返回平均值
 - 修改记录：
 - 注意事项：
******************************************************************/





__ramfunc int Calculate_Blackline_Average_2(void)
{
register uint8 i = 0;
register float sum = 0;
register int16 availableCounter = 0;
register float Average=0;        //平均中线值
int Error_PingHua[5]={0};   //平滑搜索最近范围内连续5个极大值的情况然后进行补线

register int Pic_Qian_Zhan=QianZhan;

if(Pic_Qian_Zhan>=55)
   Pic_Qian_Zhan=55;
if(Pic_Qian_Zhan<=10)
   Pic_Qian_Zhan=10;

//求中值
//for (i=55; i>=Pic_Qian_Zhan; i--)     //QianZhan 默认25
//{ 
//     sum += (*(Search_1_Line_center+i));
//     availableCounter++;
//  
//}
//Average=sum/availableCounter;

//离散转连续
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



