/*****************************************************************
*
*****************************************************************/

#include "All_Init.h"

//按键对应的键值
#define K_DOWN       2
#define K_UP         1
#define K_RIGHT      4
#define K_LEFT       3
#define K_MID        5

/*模拟要修改的变量*/

float Vellue_Plan_Choose[31]={0};

/*模拟4个变量*/
int StandPnum=0;
int ANGULAR=0;
int StandDnum=0;
int ANGSIAL=0;
int Num=0;

/********************************显示摄像头采集的图片********************************/
int Show_Pic(void)
{
  int Show_Pic_Now_Ang=0;

  GUI_RectangleFill(0, 0, 128, 64, back_color);//画矩形
  sprintf(Str_View,"Original");
  GUI_PutString(82,0,Str_View);

  while(1)
  {
	
    //camera_get_img(); //采集图像
    //img_extract((u8*)Pic,(uint8*)imgbuff,600);//解压为二维数组
    
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
    
    
    
    
//    if(Old!=Time&&OLED_OPEN)//统计帧率
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
  
  int16 Show_Line_center[60];     //记录黑线中心数组
  int Show_Error=0;
  
  GUI_RectangleFill(0, 0, 128, 64, back_color);//画矩形
  sprintf(Str_View,"Filter");
  GUI_PutString(85,0,Str_View);

  int Key_Stop=0;
  
  while(1)
  {
    if(!Key_Stop)    //右键暂停采集图像
    {
  	  //camera_get_img(); //采集图像
      //img_extract((u8*)Pic,(uint8*)imgbuff,600);
      
      for(int i=60;i>=0;i--)
      Show_Line_center[i]=Search_1_Line_center[i];   //更新数组
      Show_Error= MID_ERROR;
    }
    //Pic_Find();  //搜线
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
       Move_Mode=1;//变成移动游标的模式
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
       Move_Mode=0;//变成正常模式
       GUI_PutString(85,10,"      ");  
    }
    
//    if(Old!=Time&&OLED_OPEN)//统计帧率
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
      if(i>=QianZhan)        //显示进行运算的中线
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




/********************************显示处理后的图片********************************/
int Show_Pic_T(void)
{
  GUI_RectangleFill(0, 0, 128, 64, back_color);//画矩形
  
  sprintf(Str_View,"PicShow");
  GUI_PutString(81,0,Str_View);
  int Show_Pic_Now_Ang=0;
  
  int Move_Mode=0;
  while(1)
  {
    //camera_get_img(); //采集图像
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
       Move_Mode=1;//变成移动游标的模式
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
       
       Move_Mode=0;//变成移动游标的模式
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

  /*保存参数字符串*/
    int Biu_Where=5;//变量修改箭头的位置
    int How_Much=29;//变量个数
    
    static int  Copy_Plan_Value=1;//变量复制方案号
    
    static	int Plan_Choose_Case1=0;//界面指针(菜单滚动)
    static	int Plan_Choose_Case2=0;//隐藏指针(指针滚动)
    static	int Plan_Choose_Case3=0;//箭头指针(要修改的那个变量标志)
	int Sign1=0;//正在修改变量过程的标志
	char Str1[31][20];//字符串

    char Text_Title[50]={0};
	char Head[][30]=
	{
      "PLAN:",
	};
    
    Data_Public_Get();//更新公共变量，获取方案号
    
    sprintf(Head[0],"PLAN:  %d",Plan_Num);
    
	GUI_RectangleFill(0, 0, 128, 64, back_color);//画矩形
	GUI_Rectangle(0,0,127,63,1);
	GUI_Rectangle(0,0,127,10,1);	
	GUI_PutString(53,2,Head[0]);
	//GUI_PutString(2,54,HEAD);
	GUI_PutString(Biu_Where,(Plan_Choose_Case3+1)*10+4," > ");//第一次进来需要
	Press=0;//清除按键键位
	/////////////////////////////////////
    Flash_Read_Plan(Flash_Data_Plan,Plan_Num,-1);    //根据方案号来获取相应的变量
    
    for(int i=0;i<30;i++)    //从flash里更新出来的变量保存在Flash_Data_Plan数组内，接下来转存到Vellue_Plan_Choose
    {
      Vellue_Plan_Choose[i] =  Flash_Data_Plan[i] >65530?0:Flash_Data_Plan[i];
    }
	 /////////////////////////////////////
	while(1)
	{
       //按右键，进入copy界面
       if(Press==K_RIGHT&&Sign1==0)
       {
         int Copy_Plan=1;
         while(1)
         {
           Get_Press();//获取按键值
           
           if(Press==K_LEFT||Press==K_RIGHT)//左键右键都退出，不保存
           {
             sprintf(Text_Title,"       ");
             GUI_PutString(10,2,Text_Title);
             
             Press=0;//清除按键键位
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
             Press=0;//清除按键键位
             break;
           }
         }
       }
		if ((Press== K_LEFT )&&Sign1==0)//当不在变量修改模式时，左键可退出，并保存参数
		{
		   GUI_RectangleFill(0, 0, 128, 64, back_color);
	
           Press=0;
           for(int i=0;i<30;i++)
           {
              Flash_Data_Plan[i]  =(uint32) Vellue_Plan_Choose[i];
           }
           Flash_Write_Plan(Flash_Data_Plan,Plan_Num);//存入flash
           
           Data_Get();//从flash里面更新数据
           
		return 0;
		}
       
       
         //方案UI显示
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
          sprintf(Str1[10], "10:QZ_find:%5d\0",(int)Vellue_Plan_Choose[10]);  //前瞻
          sprintf(Str1[11], "11:Sh_Find:%5d\0",(int)Vellue_Plan_Choose[11]);  //前瞻十字环路
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
			               
			if (Press == K_UP)/*向上移动菜单*/
			{
				if(Sign1==0) //菜单滚动模式
				{
				  GUI_PutString(Biu_Where,(Plan_Choose_Case3+1)*10+4,"   "); //描空上次的>
                  
                  do
                  {
                    if(Plan_Choose_Case2==0&&Plan_Choose_Case3==0&&Plan_Choose_Case1==0)
                    {
                      Plan_Choose_Case3=4;
                      Plan_Choose_Case2=How_Much;
                      Plan_Choose_Case1=How_Much-4;
                      break;
                    }
                    
                    Plan_Choose_Case2=Plan_Choose_Case2<=0?0:Plan_Choose_Case2-1;               //数据标志限位
                    if(Plan_Choose_Case3==0)                            //只有当箭头在最高层的时候，才允许菜单滚动
                      Plan_Choose_Case1=Plan_Choose_Case1<=0?0:Plan_Choose_Case1-1;             //菜单滚动限位
                    Plan_Choose_Case3=Plan_Choose_Case3<=0?0:Plan_Choose_Case3-1;               //箭头滚动限位
                    Plan_Choose_Case2=Plan_Choose_Case2<0?0:Plan_Choose_Case2>How_Much?How_Much:Plan_Choose_Case2;      //再次限位
                  }while(0);
				  GUI_PutString(Biu_Where,(Plan_Choose_Case3+1)*10+4," > "); //描绘箭头
				}
				else 				        //修改变量模式
				{
                  
                  if(Plan_Choose_Case2==4)
                  {
                  Vellue_Plan_Choose[Plan_Choose_Case2]+=1;
                  }
				  else 
                  Vellue_Plan_Choose[Plan_Choose_Case2]++;                        //此处可修改变量增减步伐
                  if(Vellue_Plan_Choose[Plan_Choose_Case2]<0)
                     Vellue_Plan_Choose[Plan_Choose_Case2]=0;
                  if(Vellue_Plan_Choose[Plan_Choose_Case2]>65530)
                     Vellue_Plan_Choose[Plan_Choose_Case2]=0;
				}
                Press=0;
			}
			if (Press == K_DOWN)/*向下移动菜单*/
			{
				if (Sign1==0)//菜单滚动模式
				{
					GUI_PutString(Biu_Where,(Plan_Choose_Case3+1)*10+4,"   "); //描空上次的>
                    do
                    {
                      if(Plan_Choose_Case2==How_Much&&Plan_Choose_Case3==4&&Plan_Choose_Case1==How_Much-4)
                      {
                        Plan_Choose_Case3=0;
                        Plan_Choose_Case2=0;
                        Plan_Choose_Case1=0;
                        break;
                      }
                      Plan_Choose_Case2=Plan_Choose_Case2>=How_Much?How_Much:Plan_Choose_Case2+1;             //数据标志限位
                      if(Plan_Choose_Case3==4)                            //只有当箭头在最底层的时候，才允许菜单滚动
                        Plan_Choose_Case1=Plan_Choose_Case1>=How_Much-4?How_Much-4:Plan_Choose_Case1+1;           //菜单滚动限位
                      Plan_Choose_Case3=Plan_Choose_Case3>=4?4:Plan_Choose_Case3+1;               //箭头滚动限位
                      Plan_Choose_Case2=Plan_Choose_Case2<0?0:Plan_Choose_Case2>How_Much?How_Much:Plan_Choose_Case2;      //再次限位
                    }while(0);
					GUI_PutString(Biu_Where,(Plan_Choose_Case3+1)*10+4," > "); //描绘箭头
			  	}
				else                                      //修改变量模式
				{
                  if(Plan_Choose_Case2==4)
                  {
                  Vellue_Plan_Choose[Plan_Choose_Case2]-=1;
                  }
                  else 
				  Vellue_Plan_Choose[Plan_Choose_Case2]--;                       //此处可修改变量增减步伐
                  
                  if(Vellue_Plan_Choose[Plan_Choose_Case2]<0)
                     Vellue_Plan_Choose[Plan_Choose_Case2]=0;
                  if(Vellue_Plan_Choose[Plan_Choose_Case2]>65530)
                     Vellue_Plan_Choose[Plan_Choose_Case2]=0;
				}
                
                Press=0;
			}
			if((Press ==K_MID)&&Sign1==0)/*按中间键进入变量修改模式*/
			{
				Sign1=1;                                      //变量修改标志
                Press=0;                                      //清空键值
				GUI_PutString(Biu_Where,(Plan_Choose_Case3+1)*10+4,"   ");       //清空箭头
				GUI_PutString(Biu_Where,(Plan_Choose_Case3+1)*10+4,"-> ");       //变量修改指示
			}
			if ((Press ==K_MID )&&Sign1==1)/*变量修改模式下*/
			{
                sprintf(Text_Title,"       \0");
                GUI_PutString(10,2,Text_Title);
				GUI_PutString(Biu_Where,(Plan_Choose_Case3+1)*10+4,"   ");
			    GUI_PutString(Biu_Where,(Plan_Choose_Case3+1)*10+4," > ");    
                Sign1=0;                                //复位修改模式标志位
                Press=0;
			}			
            if((Press ==K_RIGHT )&&Sign1==1)//在修改变量模式下，向右按，进入复制模式
            {
                Copy_Plan_Value++;
                Copy_Plan_Value%=6;
                
                sprintf(Text_Title,"cp:%d ->",Copy_Plan_Value+1);
                GUI_PutString(10,2,Text_Title);
                Vellue_Plan_Choose[Plan_Choose_Case2] = Flash_Read_Plan(Flash_Data_Plan,Copy_Plan_Value+1,Plan_Choose_Case2) ;
              
                Press=0;
            }
            if((Press ==K_LEFT )&&Sign1==1)//在修改变量模式下，向左按，进入复制模式
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
            
			GUI_PutString(23,14,Str1[0+Plan_Choose_Case1]);//菜单显示
			GUI_PutString(23,24,Str1[1+Plan_Choose_Case1]);//
			GUI_PutString(23,34,Str1[2+Plan_Choose_Case1]);//
			GUI_PutString(23,44,Str1[3+Plan_Choose_Case1]);//
			GUI_PutString(23,54,Str1[4+Plan_Choose_Case1]);//
		}//else
		Get_Press();//获取按键值
	}//while(1)
}


int Debug_Button(void)
{
//Debug_Button_V
    int Biu_Where=5;//变量修改箭头的位置
    int How_Much=12;//变量个数
    
    static	int Debug_Button_Case1=0;//界面指针(菜单滚动)
    static	int Debug_Button_Case2=0;//隐藏指针(指针滚动)
    static	int Debug_Button_Case3=0;//箭头指针(要修改的那个变量标志)
    
	int Sign1=0;//正在修改变量过程的标志
	char Str1[13][20];//字符串

    uint32 Debug_Button_Compare=0;//用来比较是否修改了变量
    
	char Head[][30]=
	{
      "Button",
	};
    
	GUI_RectangleFill(0, 0, 128, 64, back_color);//画矩形
	GUI_Rectangle(0,0,127,63,1);
	GUI_Rectangle(0,0,127,10,1);	
	GUI_PutString(53,2,Head[0]);
	//GUI_PutString(2,54,HEAD);
	GUI_PutString(Biu_Where,(Debug_Button_Case3+1)*10+4," > ");//第一次进来需要
				
	Press=0;//清除按键键位
	/////////////////////////////////////
    Debug_Button_V= Flash_Read_Plan(Flash_Data_Public,0,29);//读取Flash公共部分变量
    Debug_Button_Compare=Debug_Button_V;
    sprintf(Str1[0],  "0 :__Led__:\0");         // //Led_灯开关
    sprintf(Str1[1],  "1 :KeyBeep:\0");         // //按键声音开关
    sprintf(Str1[2],  "2 :Blueth_:\0");         // //蓝牙调试开关
    sprintf(Str1[3],  "3 :Protect:\0");         // //车体防止其他人乱动开关
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
		if((Press== K_LEFT )||(Press==K_RIGHT))//当不在变量修改模式时，左键可退出
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
				if(Sign1==0) //菜单滚动模式
				{
				  GUI_PutString(Biu_Where,(Debug_Button_Case3+1)*10+4,"   "); //描空上次的>
                  
                  do
                  {
                    if(Debug_Button_Case2==0&&Debug_Button_Case3==0&&Debug_Button_Case1==0)
                    {
                      Debug_Button_Case3=4;
                      Debug_Button_Case2=How_Much;
                      Debug_Button_Case1=How_Much-4;
                      break;
                    }
                    Debug_Button_Case2=Debug_Button_Case2<=0?0:Debug_Button_Case2-1;               //数据标志限位
                    if(Debug_Button_Case3==0)                            //只有当箭头在最高层的时候，才允许菜单滚动
                      Debug_Button_Case1=Debug_Button_Case1<=0?0:Debug_Button_Case1-1;             //菜单滚动限位
                    Debug_Button_Case3=Debug_Button_Case3<=0?0:Debug_Button_Case3-1;               //箭头滚动限位
                    Debug_Button_Case2=Debug_Button_Case2<0?0:Debug_Button_Case2>How_Much?How_Much:Debug_Button_Case2;      //再次限位
                  }while(0);
				  GUI_PutString(Biu_Where,(Debug_Button_Case3+1)*10+4," > "); //描绘箭头
				}
				
                Press=0;
			}
        
        
			if (Press == K_DOWN)
			{
				if (Sign1==0)//菜单滚动模式
				{
					GUI_PutString(Biu_Where,(Debug_Button_Case3+1)*10+4,"   "); //描空上次的>
                    
                    do
                    {
                      if(Debug_Button_Case2==How_Much&&Debug_Button_Case3==4&&Debug_Button_Case1==How_Much-4)
                      {
                        Debug_Button_Case3=0;
                        Debug_Button_Case2=0;
                        Debug_Button_Case1=0;
                        break;
                      }
                      
                      Debug_Button_Case2=Debug_Button_Case2>=How_Much?How_Much:Debug_Button_Case2+1;             //数据标志限位
                      if(Debug_Button_Case3==4)                            //只有当箭头在最底层的时候，才允许菜单滚动
                        Debug_Button_Case1=Debug_Button_Case1>=How_Much-4?How_Much-4:Debug_Button_Case1+1;           //菜单滚动限位
                      Debug_Button_Case3=Debug_Button_Case3>=4?4:Debug_Button_Case3+1;               //箭头滚动限位
                      Debug_Button_Case2=Debug_Button_Case2<0?0:Debug_Button_Case2>How_Much?How_Much:Debug_Button_Case2;      //再次限位
                    }while(0);
					GUI_PutString(Biu_Where,(Debug_Button_Case3+1)*10+4," > "); //描绘箭头
			  	}
                Press=0;
			}
			if((Press ==K_MID))
			{
               Debug_Button_V=((Debug_Button_V>>Debug_Button_Case2)&0x01)?\
                 Debug_Button_V&~(1<<Debug_Button_Case2):Debug_Button_V|(1<<Debug_Button_Case2);
                
               Press=0;                                      //清空键值
			}
        
        
        
            if((Debug_Button_V>>(0+Debug_Button_Case1))&0x01)
            {
                GUI_PutString(100,14,"ON ");//菜单显示
            }
            else
            {
                GUI_PutString(100,14,"OFF");//菜单显示
            }
            
            if((Debug_Button_V>>(1+Debug_Button_Case1))&0x01)
            {
                GUI_PutString(100,24,"ON ");//菜单显示
            }
            else
            {
                GUI_PutString(100,24,"OFF");//菜单显示
            }
        
            if((Debug_Button_V>>(2+Debug_Button_Case1))&0x01)
            {
                GUI_PutString(100,34,"ON ");//菜单显示
            }
            else
            {
                GUI_PutString(100,34,"OFF");//菜单显示
            }
        
            
            if((Debug_Button_V>>(3+Debug_Button_Case1))&0x01)
            {
                GUI_PutString(100,44,"ON ");//菜单显示
            }
            else
            {
                GUI_PutString(100,44,"OFF");//菜单显示
            }
        
			if((Debug_Button_V>>(4+Debug_Button_Case1))&0x01)
            {
                GUI_PutString(100,54,"ON ");//菜单显示
            }
            else
            {
                GUI_PutString(100,54,"OFF");//菜单显示
            }
        
        
        
			GUI_PutString(23,14,Str1[0+Debug_Button_Case1]);//菜单显示
			GUI_PutString(23,24,Str1[1+Debug_Button_Case1]);//
			GUI_PutString(23,34,Str1[2+Debug_Button_Case1]);//
			GUI_PutString(23,44,Str1[3+Debug_Button_Case1]);//
			GUI_PutString(23,54,Str1[4+Debug_Button_Case1]);//

            
            /*************在此更新开关值***************/
            Debug_Button_Led      =(Debug_Button_V>> 0)&0x01;       //Led_灯开关
            //Debug_Button_KEY_BEEP =(Debug_Button_V>> 1)&0x01;       //按键声音开关
            Debug_Bluetooth       =(Debug_Button_V>> 2)&0x01;       //蓝牙调试开关
            Debug_Protect         =(Debug_Button_V>> 3)&0x01;       //车体防止其他人乱动开关
            Debug_CarAngPrt       =(Debug_Button_V>> 4)&0x01;
            Debug_Button_WhatisBeep =(Debug_Button_V>> 5)&0x01;
            
            
		Get_Press();//获取按键值
	}//while(1)
}



/************************************************
*	主菜单
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
    char HEAD3[]=" <vp      in     vs>";//vp是看Plan的参数，vs是看set的参数
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
    
    
    
	GUI_RectangleFill(0, 0, 128, 64, back_color);//画矩形
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
 
      ///////////////////////////针对不同的菜单显示左右信息/////////////////////
      
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
      //////////////////////////上下运动绘制UI//////////////////////////////////
      
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
        
        if (menu==0)				    //画圆
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
		/////////////////////////////确认进入///////////////////////////////////
        if (Press==K_MID)									//确认进入相应的功能
		{
			GUI_RectangleFill(0, 0, 128, 64, back_color);	//清屏
			return menu+1;									//迁移
		}
        
        /////////////////////////////左右模式处理///////////////////////////////
        
//                                     菜单逻辑                                    //
//*********************************************************************************//
//                                                                                 //
//                                                                                 //
//                      //     主菜单    电池电压              //                  //
//      发车界面    <-  //   1:   view (图像预览，中线预览)    // ->陀螺仪界面     //      
//     选择上一个   <-  //   2:   plan (方案选择)              // ->选择下一个方案 //
//     上一个方案   <-  //   3:   set  (公共参数选择)          // ->下一个方案     //       
//                      //   4:  button(调试按钮)              //                  //   
//                      //                                     //                  //
/*
        	case 0:		CASE = Case_UI(); break;	//主菜单
        	case 1:		CASE = View();    break;	//参数预览菜单
        	case 2:		CASE = Set();     break;	//参数设置
        	case 3:		CASE = Car_Ctrl();break;	//发车
        	case 4:		CASE = Updata();  break;	//升级界面
        	case 5:		CASE = Set_Ang(); break;	//调整中值
        	default :	CASE = 0;         break;	//纠错
*/
        
        
        
		if (Press == K_LEFT)//进入左键模式
		{
//			GUI_RectangleFill(0, 0, 128, 64, back_color);//画矩形
            switch(menu)
            {
            case 0:  return 5;//进入发车界面
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
        
        
        
        
		if (Press == K_RIGHT)//进入调平衡参数界面
		{
            switch(menu)
            {
            case 0:  return 7;//进入调节平衡界面
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
            case 2: return 8;  //进入SET参数预览界面
            case 3:  
            {//发送当前的参数到生危机
              
              
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
			//GUI_RectangleFill(0, 0, 128, 64, back_color);//画矩形
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
    Press=0;//清除按键残留
	
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
        

        //获取编码器当前数值															
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
		

	   //参数观察列表
		
	  sprintf(PITCH,"Angle:0 ");//滤波之后的陀螺仪
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
    int Show_Stop=0;//暂停按钮
    
    
     //先采集一遍，让UI好看点
     pit_time_start(PIT2) ;//代码执行时间计时
     //Search_1();
     //Handle_Pic();
     Pit1_Start=pit_time_get(PIT2);
     sprintf(View3_Str_View,"  Search_1:%05dus",Pit1_Start/100);
     GUI_PutString(5,10,View3_Str_View);
    
     pit_time_start(PIT2) ;//代码执行时间计时
     Fuzzy(1,2);
     Pit1_Start=pit_time_get(PIT2);
     sprintf(View3_Str_View,"  Fuzzy   :%05dus",Pit1_Start/100);
     GUI_PutString(5,20,View3_Str_View);
    
     pit_time_start(PIT2) ;//代码执行时间计时
     Calculate_Blackline_Average_2();//Calculate_Blackline_Average_2
     Pit1_Start=pit_time_get(PIT2);
     sprintf(View3_Str_View,"  GetMid  :%05dus",Pit1_Start/100);
     GUI_PutString(5,30,View3_Str_View);

	while(1)
	{
//        camera_get_img(); //采集图像
//        img_extract((u8*)Pic,(uint8*)imgbuff,600);//解压为二维数组
        //Pic_Filter(Pic,1);
        
        switch(Key_Get)
        {
          case 0:
          {
            if(Show_Stop==0)
            {
              pit_time_start(PIT2) ;//代码执行时间计时
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
              pit_time_start(PIT2) ;//代码执行时间计时
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
              pit_time_start(PIT2) ;//代码执行时间计时
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
		
		//参数观察界面
		
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
    
	Press=0;//清除按键残留
	
    if(Last_Menu<=0||Last_Menu>6)Last_Menu=1;//防止出现问题
    
	while(1)
	{
      Press=0;//清除按键残留
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
*	参数设置界面
********************************************************/



int Set(void)
{	
  /*保存参数字符串*/
  
    float Vellue[31]={0};
    int Biu_Where=5;//变量修改箭头的位置
    int How_Much=27;//变量个数
    
    static	int Set_Case1=0;//界面指针(菜单滚动)
    static	int Set_Case2=0;//隐藏指针(指针滚动)
    static	int Set_Case3=0;//箭头指针(要修改的那个变量标志)
	int Sign1=0;//正在修改变量过程的标志
	char Str1[31][20];//字符串

	char Head[][10]=
	{
		"SET",
	};
	
	GUI_RectangleFill(0, 0, 128, 64, back_color);//画矩形
	GUI_Rectangle(0,0,127,63,1);
	GUI_Rectangle(0,0,127,10,1);	
	GUI_PutString(53,2,Head[0]);
	//GUI_PutString(2,54,HEAD);
	GUI_PutString(Biu_Where,(Set_Case3+1)*10+4," > ");//第一次进来需要
				
	Press=0;//清除按键键位

	/////////////////////////////////////
    
    Flash_Read_Plan(Flash_Data_Public,0,-1);
    
    for(int i=0;i<30;i++)
    {
      Vellue[i] =  Flash_Data_Public[i] >65530?0:Flash_Data_Public[i];
    }
    
      
	 /////////////////////////////////////
	
	while(1)
	{
		if ((Press== K_LEFT || Press==K_RIGHT)&&Sign1==0)//当不在变量修改模式时，左键可退出
		{
		   GUI_RectangleFill(0, 0, 128, 64, back_color);
	
           
           
//		   PID_ANGLE.P = Vellue[0];  //更新变量
//		   PID_ANGLE.D = Vellue[1];  //更新变量
//         PID_TURN.P  = Vellue[2];  //更新变量
//         PID_TURN.I  = Vellue[3];  //更新变量
//         PID_TURN.D  = Vellue[4];  //更新变量
//         PID_SPEED.P = Vellue[5];  //更新变量
//         PID_SPEED.I = Vellue[6];  //更新变量
//         SetSpeed    = Vellue[7];  //更新变量
//		   angular     = Vellue[9];	 //更新变量
//         anglenum    = Vellue[8];  //更新变量
//		   LOOK        = Vellue[10]; //更新变量
//           
           
           
           for(int i=0;i<30;i++)
           {
           Flash_Data_Public[i]  =(uint32) Vellue[i];
           }
           Flash_Write_Plan(Flash_Data_Public,0);//存入flash
    
           Data_Public_Get();//重新读flash

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
			               
			
			if (Press == K_UP)/*向上移动菜单*/
			{
				if(Sign1==0) //菜单滚动模式
				{
				  GUI_PutString(Biu_Where,(Set_Case3+1)*10+4,"   "); //描空上次的>
                  
                  do
                  {
                    if(Set_Case2==0&&Set_Case3==0&&Set_Case1==0)
                    {
                      Set_Case3=4;
                      Set_Case2=How_Much;
                      Set_Case1=How_Much-4;
                      break;
                    }
                    
                    Set_Case2=Set_Case2<=0?0:Set_Case2-1;               //数据标志限位
                    if(Set_Case3==0)                            //只有当箭头在最高层的时候，才允许菜单滚动
                      Set_Case1=Set_Case1<=0?0:Set_Case1-1;             //菜单滚动限位
                    Set_Case3=Set_Case3<=0?0:Set_Case3-1;               //箭头滚动限位
                    Set_Case2=Set_Case2<0?0:Set_Case2>How_Much?How_Much:Set_Case2;      //再次限位
                  }while(0);
				  GUI_PutString(Biu_Where,(Set_Case3+1)*10+4," > "); //描绘箭头
				}
				else 				        //修改变量模式
				{
                  
                  if(Set_Case2==4)
                  {
                  Vellue[Set_Case2]+=10;
                  }
				  else 
                  Vellue[Set_Case2]++;                        //此处可修改变量增减步伐
                  
                  
                  if(Vellue[Set_Case2]<0)
                     Vellue[Set_Case2]=0;
                  if(Vellue[Set_Case2]>65530)
                     Vellue[Set_Case2]=0;

				}
			}
			
			if (Press == K_DOWN)/*向下移动菜单*/
			{
				if (Sign1==0)//菜单滚动模式
				{
					GUI_PutString(Biu_Where,(Set_Case3+1)*10+4,"   "); //描空上次的>
                    
                    do
                    {
                      if(Set_Case2==How_Much&&Set_Case3==4&&Set_Case1==How_Much-4)
                      {
                        Set_Case3=0;
                        Set_Case2=0;
                        Set_Case1=0;
                        break;
                      }
                      
                      Set_Case2=Set_Case2>=How_Much?How_Much:Set_Case2+1;             //数据标志限位
                      if(Set_Case3==4)                            //只有当箭头在最底层的时候，才允许菜单滚动
                        Set_Case1=Set_Case1>=How_Much-4?How_Much-4:Set_Case1+1;           //菜单滚动限位
                      Set_Case3=Set_Case3>=4?4:Set_Case3+1;               //箭头滚动限位
                      Set_Case2=Set_Case2<0?0:Set_Case2>How_Much?How_Much:Set_Case2;      //再次限位
                    }while(0);
					GUI_PutString(Biu_Where,(Set_Case3+1)*10+4," > "); //描绘箭头
                    
			  	}
				else                                      //修改变量模式
				{
                  if(Set_Case2==4)
                  {
                  Vellue[Set_Case2]-=10;
                  }
                  else 
				  Vellue[Set_Case2]--;                       //此处可修改变量增减步伐
                  
                  if(Vellue[Set_Case2]<0)
                     Vellue[Set_Case2]=0;
                  if(Vellue[Set_Case2]>65530)
                     Vellue[Set_Case2]=0;
				}
			}
			
			if((Press ==K_MID)&&Sign1==0)/*按中间键进入变量修改模式*/
			{
				Sign1=1;                                      //变量修改标志
				GUI_PutString(Biu_Where,(Set_Case3+1)*10+4,"   ");       //清空箭头
				GUI_PutString(Biu_Where,(Set_Case3+1)*10+4,"-> ");       //变量修改指示
			}
			
			if ((Press ==K_LEFT ||Press ==K_RIGHT)&&Sign1==1)/*变量修改模式下，左键或右键可退出*/
			{
				Sign1=0;                                //复位修改模式标志位
				GUI_PutString(Biu_Where,(Set_Case3+1)*10+4,"   ");
			    GUI_PutString(Biu_Where,(Set_Case3+1)*10+4," > ");
			}			
			
			GUI_PutString(23,14,Str1[0+Set_Case1]);//菜单显示
			GUI_PutString(23,24,Str1[1+Set_Case1]);//
			GUI_PutString(23,34,Str1[2+Set_Case1]);//
			GUI_PutString(23,44,Str1[3+Set_Case1]);//
			GUI_PutString(23,54,Str1[4+Set_Case1]);//
		}//else
		Get_Press();//获取按键值
	}//while(1)  
}



int Car_Ctrl(void) 
{
    int Car_Ctrl_Key=0;
    int Car_Start_Flag=0;//发车标志位
    char Str[3][30];
    int  StartCar_Time[6]={'0','1','2','3','4','5'};
    int StartTime=0;
    int time=50;
    
    
    GUI_RectangleFill(0, 0, 128, 64, back_color);//画矩形
    DELAY_MS(20);
    //OLED_OPEN=0;

    
    //GUI_RectangleFill(0, 0, 128, 64, back_color);//画矩形
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
      

      GUI_PutChar24_32(10,15,StartCar_Time[StartTime]) ;   //显示倒计时
      
      
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
      
      if(Press==K_MID&&!Car_Start_Flag)  //发车
      {
         //先倒计时，然后清空系统各个变量
        
        
         
        
         Car_Start_Flag=1;
         Press=0;
      }
      
      if(Car_Start_Flag==1)
      {
        do{
         Car_Ctrl_Key=KEY() ;
		 if ((Car_Ctrl_Key==K_LEFT||Car_Ctrl_Key==K_RIGHT||Car_Ctrl_Key==K_UP||Car_Ctrl_Key==K_DOWN))//停车保护
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
      
      
      if(StartTime<=0&&Car_Start_Flag)  //可以跑了
      { 
        Car_Run_Ui_Show_Long    =0;
        Car_Run_Ui_Show_How_Long=0;
        LastTime_Car_Run_Distance=0;
        
        GUI_RectangleFill(0, 0, 128, 64, back_color);//画矩形
        Ran_Erase_Speed_I=1;
        Beep(300);
	Car_Run=1;
        DELAY_MS(20);
        MOTO_ON;
		
         while(1)
          {
            
//            camera_get_img(); //采集图像
//            img_extract((u8*)Pic,(uint8*)imgbuff,600);
//            Search_1();


            Car_Ctrl_Key=KEY() ;
		    if (((Car_Ctrl_Key==K_LEFT||Car_Ctrl_Key==K_RIGHT||Car_Ctrl_Key==K_UP||Car_Ctrl_Key==K_DOWN)||(Debug_CarAngPrt&&Seagull_Left<=3&&Seagull_Right<=3)))//停车保护
		    {
                        Get_Press();
                        Press=0;
                        MOTO_OFF;
                        Car_Run=0;//关闭电机输出标志位
			    break;
		    }
          }
         
           
           OLED_OPEN=1;
           StartTime=0;
           Car_Start_Flag=0;
           Beep(20);
           GUI_RectangleFill(0, 0, 128, 64, back_color);//画矩形
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
        camera_get_img(); //采集图像
        img_extract((u8*)Pic,(uint8*)imgbuff,600);
        camera_get_img(); //采集图像 
        Search_1();
        
        
        
        Car_Ctrl_Key=KEY() ;
		if ((Car_Ctrl_Key==K_LEFT||Car_Ctrl_Key==K_RIGHT||Car_Ctrl_Key==K_UP||Car_Ctrl_Key==K_DOWN))//停车保护
		{
           
            MOTO_OFF;
            OLED_OPEN=1;
            Car_Run=0;//关闭电机输出标志位
            
            GUI_RectangleFill(0, 0, 128, 64, back_color);//画矩形
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

//在这里面增加图像补偿代码
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
    
    camera_get_img(); //采集图像
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
	int Set_Ang_V1=0;//临时变量
        int Set_Ang_V2=0;
       
	char Str_Ang[5][30];
    
    GUI_RectangleFill(0, 0, 128, 64, back_color);//画矩形
    GUI_Rectangle(0,0,127,63,1);
    GUI_Rectangle(0,0,127,10,1);	
    GUI_Rectangle(0,0,127,52,1);
    
    
    GUI_PutString(48,2,"Ad_View");
    
    DELAY_MS(20);//为了UI刷新完成
    
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

		if (Press ==K_RIGHT ||Press ==K_LEFT)//退出本界面
		{
			GUI_RectangleFill(0, 0, 128, 64, back_color);//画矩形
			return 0;
		}

        sprintf(Str_Ang[0],"Ad0:%04d\0",AD[0]);//滤波之后的陀螺仪
        sprintf(Str_Ang[1],"Ad1:%04d\0",AD[1]);//滤波之后的陀螺仪
        sprintf(Str_Ang[2],"Ad2:%04d\0",AD[2]);//滤波之后的陀螺仪
        sprintf(Str_Ang[3],"Ad3:%04d\0",AD[3]);//滤波之后的陀螺仪

        

        
	GUI_PutString(36,14 ,Str_Ang[0]);
	GUI_PutString(36,23 ,Str_Ang[1]);
	GUI_PutString(36,32 ,Str_Ang[2]);
	GUI_PutString(36,41 ,Str_Ang[3]);
        
        
        sprintf(Str_Ang[1],"MID:%4d   %4.2f\0",result,MID_ERROR);//滤波之后的陀螺仪
        GUI_PutString(20,2,Str_Ang[1]);
      
        DELAY_MS(5);
	}
}




int View_Set (void)
{ 
  int Vellue[30]={0};
  char Str1[30][7];
  
  int Page=0;//页数
  /////////////////////////////////////////////////////////
  //清屏  
  GUI_RectangleFill(0, 0, 128, 64, back_color);//画矩形  
  DELAY_MS(25);
  /////////////////////////////////////////////////////////
  //读数据
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
     Get_Press();  //获取按键
     if (Press==K_LEFT||Press==K_RIGHT||Press==K_MID)
	 {
	 	GUI_RectangleFill(0, 0, 128, 64, back_color);//画矩形
	 	Press=0;
        break;
	 }
     
     if (Press==K_UP||Press==K_DOWN)         //上下键切换页面
	 {
       Page++;
       Page%=2;
	   GUI_RectangleFill(0, 0, 128, 64, back_color);//画矩形填充屏幕
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
  int Page=0;//页数
  /////////////////////////////////////////////////////////
  //清屏  
  GUI_RectangleFill(0, 0, 128, 64, back_color);//画矩形  
  DELAY_MS(25);
  /////////////////////////////////////////////////////////
  //读数据
  View_Plan_Plan=Flash_Read_Plan(Flash_Data_Public,0,28);//读取Flash公共部分变量
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
     Get_Press();  //获取按键
     
     if(Press==K_LEFT||Press==K_RIGHT)
     {
       GUI_RectangleFill(0, 0, 128, 64, back_color);//画矩形
	   
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
       Flash_Read_Plan(Vellue,View_Plan_Plan,-1);//更新数据
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
	 	GUI_RectangleFill(0, 0, 128, 64, back_color);//画矩形
	 	Press=0;
        break;
	 }
     if (Press==K_UP||Press==K_DOWN||Need_Fresh==1)         //上下键切换页面
	 {
       if(Need_Fresh==0)
       {
       Page++;
       Page%=2;
       }
       Need_Fresh=0;
	   GUI_RectangleFill(0, 0, 128, 64, back_color);//画矩形填充屏幕
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

//车体保护

int Beep_Software_Button=0;
int Led_Software_Button =0;

int Car_Protect(void)
{
  if(!Debug_Protect)  return 0;
  
  char Car_Protect_Str[20];
  int Battery=0;
  
  Press=0;
  GUI_RectangleFill(0, 0, 128, 64, back_color);//画矩形
  DELAY_MS(25);
  int KeyDown_Times=0;
  int KeyUp_Times=0;
  int OLED_TIMES=100;
  Led_Software_Button=1;  //接下来程序有控制LED的权利
  Beep_Software_Button=1;
  gpio_set(PTC2,1);       //熄灯
  
  
  GUI_PutString(0, 1, "LOCK");
  sprintf(Car_Protect_Str,"Plan:%2d",Plan_Num);
  GUI_PutString(0, 10,Car_Protect_Str);
  
  //OLED_Display_On();
  while(1)
  {
    Get_Press();  //获取按键
    OLED_TIMES--;
    OLED_TIMES=OLED_TIMES<=0?0:OLED_TIMES;
    
    
    if(OLED_TIMES==0)
    {
     OLED_Display_Off();//关闭OLED
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
          GUI_RectangleFill(0, 0, 128, 64, back_color);//画矩形
          Led_Software_Button=0;
          Beep_Software_Button=0;
          OLED_Display_On();
          Beep(200);
          break;
        }//解锁成功
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
*          示波器控件
*           于文海
* *     2017.2.2    V0.1
* 初步完成代码结构，实现简单功能
*
* *    2017.2.4
*
********************************/

int ShiBoQi_View=0;//探针
//参考线位置
int X_LINE=64;
int Y_LINE=37;
//int Get_Bo_Speed=1;

int ShiBoQi(void)
{
    
    //横线竖线在屏幕上的物理位置
    int View_Y=0;
    int Last_Y=0;
    
    int Set_ShiBoQi=0;  //示波器设置标志位
    int State_Flag=0;   //状态启停切换标志位
    
    //两个放大倍数设置
    static int ShiBoQi_Xishu   =30;   //幅值倍数   27*60 = 1620
    static int ShiBoQi_Xishu_f = 2;   //相值倍数      一定要确认，不能大于1000/128
    
    //两个放大倍数限值
    ShiBoQi_Xishu= ShiBoQi_Xishu<=0?1:ShiBoQi_Xishu>60?60:ShiBoQi_Xishu;
    ShiBoQi_Xishu_f=ShiBoQi_Xishu_f<=0?1:ShiBoQi_Xishu_f>=8?8:ShiBoQi_Xishu_f;
    
    //  数组
    int ShiBoQi_Save[1000]={0};  //缓存数组，搭建循环队列
      int ShiBoQi_Save_Point=0;   //循环队列位置指针      例如:ShiBoQi_Save[ShiBoQi_Save_Point++]
    
    int ShiBoQi_Windows[132]={0};//抽样数组，从队列中抽样
    int View_Windows[132]={0};   //窗口实际显示数组，对抽样数组幅值进行放大缩小的操作
    int Clear_Win[132]={0};      //清屏数组，保存上一次描点的位置
   
    //窗口状态栏变量显示字符串
    char ShiBoQi_Str[4][5]={0};
    
    
    GUI_RectangleFill(0, 0, 128, 64, back_color);//画矩形
	GUI_Rectangle(0,1,127,63,1);
	GUI_Rectangle(0,1,127,10,1);	

    sprintf(ShiBoQi_Str[0],"%3dx",X_LINE);      //数线
    sprintf(ShiBoQi_Str[1],"%3dy",Y_LINE);      //横线
    sprintf(ShiBoQi_Str[2],"%5dv",ShiBoQi_Windows[X_LINE]);           //值
    
    GUI_PutString(4, 2,ShiBoQi_Str[0]);  //抬头栏
    GUI_PutString(34,2,ShiBoQi_Str[1]);  //抬头栏
    GUI_PutString(64,2,ShiBoQi_Str[2]);  //抬头栏
    GUI_PutString(110,2,"M0");  //抬头栏
    Press=0;
    while(1)
    {
        
        //更新变量的值
        sprintf(ShiBoQi_Str[2],"%5dv",ShiBoQi_Windows[X_LINE]);           //值
        GUI_PutString(64,2,ShiBoQi_Str[2]);  //抬头栏显示这么多字
      
//        ShiBoQi_View++;
//        if(ShiBoQi_View>90)
//        ShiBoQi_View=-90;
//        
//        
        if(State_Flag!=1)
        {
        //////////////////////////////////  
        //循环队列更新
        ShiBoQi_Save_Point++;
        ShiBoQi_Save_Point%=1000;
        ShiBoQi_Save[ShiBoQi_Save_Point]=ShiBoQi_View;
        //采样队列更新
        for(register uint8 x=0;x<127;x++ )
        {
          ShiBoQi_Windows[126-x]=ShiBoQi_Save[(ShiBoQi_Save_Point-ShiBoQi_Xishu_f*x)>=0?
            (ShiBoQi_Save_Point-ShiBoQi_Xishu_f*x):1000+(ShiBoQi_Save_Point-ShiBoQi_Xishu_f*x)];
        }
        //显示队列更新
        for(register int i=0;i<=127;i++)
        View_Windows[i]=-ShiBoQi_Windows[i];
        }
        //////////////////////////////////
        
        Get_Press();  //获取按键
        if(!Set_ShiBoQi&&Press==K_MID)//&&State_Flag==0)  //状态改变为可修改
        {
            Press=0;
            State_Flag++;
            State_Flag%=2;
            
            //这个时候需要清空一下屏幕
            for(int j=1;j<127;j++)
            {
                GUI_Point(j,Clear_Win[j],0);
            }
            //Set_ShiBoQi
            if(State_Flag==0)
            GUI_PutString(110,2,"M0");  //抬头栏
            else 
            GUI_PutString(110,2,"M2");  //抬头栏  
            
        }
        
//        if(Press==K_MID&&State_Flag)    //状态改变为不可修改
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
            
            sprintf(ShiBoQi_Str[0],"%3dX",X_LINE);      //数线
            GUI_PutString(4, 2,ShiBoQi_Str[0]);         //抬头栏显示这么多字
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
            sprintf(ShiBoQi_Str[0],"%3dX",X_LINE);      //数线
            GUI_PutString(4, 2,ShiBoQi_Str[0]);  //抬头栏显示这么多字
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
            sprintf(ShiBoQi_Str[1],"%3dY",Y_LINE);      //横线
            GUI_PutString(34,2,ShiBoQi_Str[1]);  //抬头栏显示这么多字
            
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
            sprintf(ShiBoQi_Str[1],"%3dY",Y_LINE);      //横线
            GUI_PutString(34,2,ShiBoQi_Str[1]);  //抬头栏显示这么多字
        }
        //////////////////////////////////////////////////
        
        //设置示波器参数
        if (Press == K_RIGHT&&!Set_ShiBoQi&&!State_Flag)
        {
            Set_ShiBoQi=1;
            Press=0;
            
            GUI_PutString(110,2,"M1");  //抬头栏
            
            //GUI_RectangleFill(1, 12, 126, 63, back_color);//画矩形
        }
        
        //ShiBoQi_Xishu   =30;   //幅值倍数
        //ShiBoQi_Xishu_f = 2;   //相值倍数
       
        
        //if(Set_ShiBoQi==1)
        {
            char Set_ShiBoQi_Str[3][15];
            sprintf(Set_ShiBoQi_Str[0],"A:%2d",ShiBoQi_Xishu);
            sprintf(Set_ShiBoQi_Str[1],"T:%2d",ShiBoQi_Xishu_f);
            
            GUI_PutString(2,13,Set_ShiBoQi_Str[0]);  //抬头栏显示这么多字
            GUI_PutString(2,23,Set_ShiBoQi_Str[1]);  //抬头栏显示这么多字
        }
        
        //参数设置界面
        if (Set_ShiBoQi&&Press==K_MID)        //回主菜单
		{
            Press=0;
            Set_ShiBoQi=0;
            GUI_PutString(110,2,"M0");  //抬头栏
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
        
        
        ////////////////////////菜单切换//////////////////////////
        if (!State_Flag&&Press==K_LEFT&&!State_Flag)        //回主菜单
		{
            Press=0;
			return 0;
		}
		if (!State_Flag&&Press==K_UP&&!State_Flag)          //上一菜单
		{
            Press=0;
			GUI_RectangleFill(0, 0, 128, 64, back_color);
			return 2;
		}
		if (!State_Flag&&Press==K_DOWN&&!State_Flag)        //下一菜单
		{
            Press=0;
			GUI_RectangleFill(0, 0, 128, 64, back_color);
			return 4;
		}
      //////////////////////////////////////////////////////////
    
      if(State_Flag!=1)   //如果暂停采样，也就不用清屏了
      {
        for(int j=1;j<127;j++)
        {
//          View_Y=(int)(View_Windows[j]/ShiBoQi_Xishu)+37;    //新刷新的点如果是白的，就不要清除了
//          if( View_Y==1 ) continue;
          GUI_Point(j,Clear_Win[j],0);
        }  
      }
      
      //绘制新的点  
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
      
      //绘制横向参考线
      //if(State_Flag)   //只有当flag=1时，才显示
      {
        for(int j=1;j<125;j++)
        {
          GUI_Point(j,Y_LINE,j%2);
        }
      }
      //绘制竖向参考线
      for(int i=11;i<=62;i++)
      {
        GUI_Point(X_LINE,i,i%2);
      }
      //DELAY_MS(1);
    }
}


//////////////////////////////////////////////////////////////////
//上一版本示波器是在线看参数的
//接下来这个，用来看运行时候保存在队列里的数据
//////////////////////////////////////////////////////////////////

int ShiBoQi2_Save[20][1000]={0};//可以保存10000个数据,如果是5ms一个的话，可以存储50s的数据
                                //1ms一个的话   可以保存10s的

//可以往队列里面写，也可以读指定位置的数据



//                                    起始位置    偏移量     偏移系数
__ramfunc int Read_ShiBoQi2_Save(   int Start,  int Move,     int T   )
{
   register unsigned int where=(int)(Start-T*Move);
   if(where<0) //where=20000+where;
     return 0;
   return ShiBoQi2_Save[(where/1000)%20][where%1000];
}

int ShiBoQi2_Point=0; //记录数据个数
int Get_ShiBoQi_Button=0;  

__ramfunc void Write_ShiBoQi2_Save(unsigned int Where,int Number ,int * PTR)
{
  
  
  
  if(Get_ShiBoQi_Button)
  { 
    *PTR=0;
    return ;
  }
  
  if(Where>20000)Where=20000;
   
   ShiBoQi2_Point=Where;//记录数据保存的位置
   ShiBoQi2_Save[(Where/1000)%20][Where%1000] = Number;
}


////////////////////////////////////////////////////////////////////////////////

//int ShiBoQi_2_View=0;//探针

int ShiBoQi_2(void)
{
    Get_ShiBoQi_Button=1;//关闭采集开关
  
    //横线竖线在屏幕上的物理位置
    int View_Y=0;
    int Last_Y=0;
    
    int Set_ShiBoQi=0;  //示波器设置标志位
    int State_Flag=0;   //状态启停切换标志位
    
    //两个放大倍数设置
    static int ShiBoQi_Xishu   =30;   //幅值倍数   27*60 = 1620
    static int ShiBoQi_Xishu_f = 2;   //相值倍数      一定要确认，不能大于1000/128
    
    //两个放大倍数限值
    ShiBoQi_Xishu= ShiBoQi_Xishu<=0?1:ShiBoQi_Xishu>99?99:ShiBoQi_Xishu;
    ShiBoQi_Xishu_f=ShiBoQi_Xishu_f<=0?1:ShiBoQi_Xishu_f>=10?10:ShiBoQi_Xishu_f;
    
    //  数组
    //int ShiBoQi_Save[1000]={0};  //缓存数组，搭建循环队列
      int ShiBoQi_Save_Point=0;   //循环队列位置指针      例如:ShiBoQi_Save[ShiBoQi_Save_Point++]
    
    int ShiBoQi_Windows[132]={0};//抽样数组，从队列中抽样
    int View_Windows[132]={0};   //窗口实际显示数组，对抽样数组幅值进行放大缩小的操作
    int Clear_Win[132]={0};      //清屏数组，保存上一次描点的位置
   
    //窗口状态栏变量显示字符串
    char ShiBoQi_Str[4][5]={0};
    
    
    GUI_RectangleFill(0, 0, 128, 64, back_color);//画矩形
	GUI_Rectangle(0,1,127,63,1);
	GUI_Rectangle(0,1,127,10,1);	

    sprintf(ShiBoQi_Str[0],"%3dx",X_LINE);      //数线
    sprintf(ShiBoQi_Str[1],"%3dy",Y_LINE);      //横线
    sprintf(ShiBoQi_Str[2],"%5dv",ShiBoQi_Windows[X_LINE]);           //值
    
    GUI_PutString(4, 2,ShiBoQi_Str[0]);  //抬头栏
    GUI_PutString(34,2,ShiBoQi_Str[1]);  //抬头栏
    GUI_PutString(64,2,ShiBoQi_Str[2]);  //抬头栏
    GUI_PutString(110,2,"M0");  //抬头栏
    Press=0;
    while(1)
    {
        //更新变量的值
        sprintf(ShiBoQi_Str[2],"%5dv",ShiBoQi_Windows[X_LINE]);           //值
        GUI_PutString(64,2,ShiBoQi_Str[2]);  //抬头栏显示这么多字
       
        if(State_Flag!=1)
        {
        //////////////////////////////////  
        //循环队列更新
        ShiBoQi_Save_Point++;
        ShiBoQi_Save_Point%=ShiBoQi2_Point;

        //采样队列更新
        for(register uint8 x=0;x<127;x++ )
        {
          ShiBoQi_Windows[126-x]=Read_ShiBoQi2_Save(ShiBoQi_Save_Point,x,ShiBoQi_Xishu_f);
        }
        //显示队列更新
        for(register int i=0;i<=127;i++)
        View_Windows[i]=-ShiBoQi_Windows[i];
        }
        //////////////////////////////////
        
        Get_Press();  //获取按键
        if(!Set_ShiBoQi&&Press==K_MID)//&&State_Flag==0)  //状态改变为可修改
        {
            Press=0;
            State_Flag++;
            State_Flag%=2;
            
            //这个时候需要清空一下屏幕
            for(int j=1;j<127;j++)
            {
                GUI_Point(j,Clear_Win[j],0);
            }
            //Set_ShiBoQi
            if(State_Flag==0)
            GUI_PutString(110,2,"M0");  //抬头栏
            else 
            GUI_PutString(110,2,"M2");  //抬头栏  
            
        }
        
//        if(Press==K_MID&&State_Flag)    //状态改变为不可修改
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
            
            sprintf(ShiBoQi_Str[0],"%3dX",X_LINE);      //数线
            GUI_PutString(4, 2,ShiBoQi_Str[0]);         //抬头栏显示这么多字
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
            sprintf(ShiBoQi_Str[0],"%3dX",X_LINE);      //数线
            GUI_PutString(4, 2,ShiBoQi_Str[0]);  //抬头栏显示这么多字
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
            sprintf(ShiBoQi_Str[1],"%3dY",Y_LINE);      //横线
            GUI_PutString(34,2,ShiBoQi_Str[1]);  //抬头栏显示这么多字
            
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
            sprintf(ShiBoQi_Str[1],"%3dY",Y_LINE);      //横线
            GUI_PutString(34,2,ShiBoQi_Str[1]);  //抬头栏显示这么多字
        }
        //////////////////////////////////////////////////
        
        //设置示波器参数
        if (Press == K_RIGHT&&!Set_ShiBoQi&&!State_Flag)
        {
            Set_ShiBoQi=1;
            Press=0;
            
            GUI_PutString(110,2,"M1");  //抬头栏
            
            //GUI_RectangleFill(1, 12, 126, 63, back_color);//画矩形
        }
        
        //ShiBoQi_Xishu   =30;   //幅值倍数
        //ShiBoQi_Xishu_f = 2;   //相值倍数
       
        
        //if(Set_ShiBoQi==1)
        {
            char Set_ShiBoQi_Str[3][15];
            sprintf(Set_ShiBoQi_Str[0],"A:%2d",ShiBoQi_Xishu);
            sprintf(Set_ShiBoQi_Str[1],"T:%2d",ShiBoQi_Xishu_f);
            
            //ShiBoQi2_Point      //总数
            //ShiBoQi_Save_Point  //当前位置
            sprintf(Set_ShiBoQi_Str[2],"%05d/%05d",ShiBoQi_Save_Point,ShiBoQi2_Point);
            
            
            GUI_PutString(2,13,Set_ShiBoQi_Str[0]);  //抬头栏显示这么多字
            GUI_PutString(2,23,Set_ShiBoQi_Str[1]);  //抬头栏显示这么多字
            GUI_PutString(2,53,Set_ShiBoQi_Str[2]);  //抬头栏显示这么多字
        }
        
        //参数设置界面
        if (Set_ShiBoQi&&Press==K_MID)        //回主菜单
		{
            Press=0;
            Set_ShiBoQi=0;
            GUI_PutString(110,2,"M0");  //抬头栏
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
        
        
        ////////////////////////菜单切换//////////////////////////
        if (!State_Flag&&Press==K_LEFT&&!State_Flag)        //回主菜单
		{
            Press=0;
            Get_ShiBoQi_Button=0;
            ShiBoQi2_Point=0;
			return 0;
		}
		if (!State_Flag&&Press==K_UP&&!State_Flag)          //上一菜单
		{
            Press=0;
            Get_ShiBoQi_Button=0;
            ShiBoQi2_Point=0;
			GUI_RectangleFill(0, 0, 128, 64, back_color);
			return 3;
		}
		if (!State_Flag&&Press==K_DOWN&&!State_Flag)        //下一菜单
		{
            Press=0;
            Get_ShiBoQi_Button=0;
            ShiBoQi2_Point=0;
			GUI_RectangleFill(0, 0, 128, 64, back_color);
			return 5;
		}
      //////////////////////////////////////////////////////////
    
      if(State_Flag!=1)   //如果暂停采样，也就不用清屏了
      {
        for(int j=1;j<127;j++)
        {
//          View_Y=(int)(View_Windows[j]/ShiBoQi_Xishu)+37;    //新刷新的点如果是白的，就不要清除了
//          if( View_Y==1 ) continue;
          GUI_Point(j,Clear_Win[j],0);
        }  
      }
      
      //绘制新的点  
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
      
      //绘制横向参考线
      //if(State_Flag)   //只有当flag=1时，才显示
      {
        for(int j=1;j<125;j++)
        {
          GUI_Point(j,Y_LINE,j%2);
        }
      }
      //绘制竖向参考线
      for(int i=11;i<=62;i++)
      {
        GUI_Point(X_LINE,i,i%2);
      }
      //DELAY_MS(1);
    }
}



