#include "ALL_Init.h"
//#include "Picture.h"

//#define WRITE  0
//#define BLACK  1


//ȥ��ȼ�
//int Camera_Strong=0;


  int i=0,j=0;

  if(Strong <1||Strong>4)return ;//��������Ϲ���ֱ���˳�

  
    //�����˲�ǿ��//5��
    if(Strong==4)
    {
      for (i=0;i<CAMERA_H-5;i++)
        for(j=0;j<CAMERA_W-5;j++)
        {
          //ˮƽ�������
          //���˰׵��еĺ�ɫֵ
          if(PIC[i][j]==0&&PIC[i][j+5]==0)//&&(Pic_T[i][j+1]+Pic_T[i][j+2]+Pic_T[i][j+3]+Pic_T[i][j+4])<=3)
          {
              PIC[i][j+1]=0;
              PIC[i][j+2]=0;
              PIC[i][j+3]=0;
              PIC[i][j+4]=0;
          }
          //���˺ڵ��еİ�ɫֵ
          if(PIC[i][j]==1&&PIC[i][j+5]==1)//&&(Pic_T[i][j+1]+Pic_T[i][j+2]+Pic_T[i][j+3]+Pic_T[i][j+4])>=2)
          {
              PIC[i][j+1]=1;
              PIC[i][j+2]=1;
              PIC[i][j+3]=1;
              PIC[i][j+4]=1;
          }
          //ǰ����������
          //���˰׵��еĺ�ɫֵ
          if(PIC[i][j]==0&&PIC[i+5][j]==0)//&&(Pic_T[i+1][j]+Pic_T[i+2][j]+Pic_T[i+3][j]+Pic_T[i+4][j])<=2)
          {
              PIC[i+1][j]=0;
              PIC[i+2][j]=0;
              PIC[i+3][j]=0;
              PIC[i+4][j]=0;
          }
          //���˺ڵ��еİ�ɫֵ
          if(PIC[i][j]==1&&PIC[i+5][j]==1)//&&(Pic_T[i+1][j]+Pic_T[i+2][j]+Pic_T[i+3][j]+Pic_T[i+4][j])>=2)
          {
              PIC[i+1][j]=1;
              PIC[i+2][j]=1;
              PIC[i+3][j]=1;
              PIC[i+4][j]=1;
          }
        }
    }
    
    //�����˲�ǿ��//4��
    if(Strong==3)
    {
      for (i=0;i<CAMERA_H-4;i++)
        for(j=0;j<CAMERA_W-4;j++)
        {
          //ˮƽ�������
          //���˰׵��еĺ�ɫֵ
          if(PIC[i][j]==0&&PIC[i][j+4]==0)
          {
              PIC[i][j+1]=0;
              PIC[i][j+2]=0;
              PIC[i][j+3]=0;
          }
          //���˺ڵ��еİ�ɫֵ
          if(PIC[i][j]==1&&PIC[i][j+4]==1)
          {
              PIC[i][j+1]=1;
              PIC[i][j+2]=1;
              PIC[i][j+3]=1;
          }
          
          //ǰ����������
          //���˰׵��еĺ�ɫֵ
                if(PIC[i][j]==0&&PIC[i+4][j]==0)
          {
              PIC[i+1][j]=0;
              PIC[i+2][j]=0;
              PIC[i+3][j]=0;
          }
          //���˺ڵ��еİ�ɫֵ
          if(PIC[i][j]==1&&PIC[i+4][j]==1)
          {
              PIC[i+1][j]=1;
              PIC[i+2][j]=1;
              PIC[i+3][j]=1;
          }
        }
    }
    
    //�����˲�ǿ��//2��
    if(Strong==2)
    {
      for (i=0;i<CAMERA_H-3;i++)
        for(j=0;j<CAMERA_W-3;j++)
        {
          //ˮƽ�������
          //���˰׵��еĺ�ɫֵ
          if(PIC[i][j]==0&&PIC[i][j+3]==0)
          {
              PIC[i][j+1]=0;
              PIC[i][j+2]=0;
          }
          //���˺ڵ��еİ�ɫֵ
          if(PIC[i][j]==1&&PIC[i][j+3]==1)
          {
              PIC[i][j+1]=1;
              PIC[i][j+2]=1;
          }
          
          //ǰ����������
          //���˰׵��еĺ�ɫֵ
                if(PIC[i][j]==0&&PIC[i+3][j]==0)
          {
              PIC[i+1][j]=0;
              PIC[i+2][j]=0;
          }
          //���˺ڵ��еİ�ɫֵ
          if(PIC[i][j]==1&&PIC[i+3][j]==1)
          {
              PIC[i+1][j]=1;
              PIC[i+2][j]=1;
          }
        }
    }
    //�����˲�ǿ��//1��
    if(Strong==1)
    {
      for (i=0;i<CAMERA_H;i++)
        for(j=0;j<CAMERA_W-2;j++)
        {
          //ˮƽ�������
          //���˰׵��еĺ�ɫֵ
          if(PIC[i][j]==0&&PIC[i][j+2]==0)
          {
              PIC[i][j+1]=0;
          }
          //���˺ڵ��еİ�ɫֵ
          if(PIC[i][j]==1&&PIC[i][j+2]==1)
          {
              PIC[i][j+1]=1;
          }
          //ǰ����������
          //���˰׵��еĺ�ɫֵ
          if(PIC[i][j]==0&&PIC[i+2][j]==0)
          {
              PIC[i+1][j]=0;
          }
          //���˺ڵ��еİ�ɫֵ
          if(PIC[i][j]==1&&PIC[i+2][j]==1)
          {
              PIC[i+1][j]=1;
          }
        }
    }
    
    Pic_Filter_Flag=0;
return ;
}
//********************************************************************************************************************
//
// ������  : 
// ��������: ���Խ׶�ͼ����
// ����ֵ  : ��
// ����ֵ  : ��
// ��ע    : 
//
//******************************************************************************************************************** 

//void Test (void)
//{
//  for(int i=0;i<60;i++)
//  {
//    for(int j=0;j<80;j++)
//    {   
//		if(j%10==0&&i%10 ==0)
//		{
//			Pic_T[i][j]= Pic_T[i][j]==1?0:1;
//                           Pic[i][j]= Pic[i][j]==1?0:1;
//		}
//    }
//  }
//}


////��ָ��ͼ���ָ���б��Ϊֻ��һ����ߵ����
//void Make_Line(uint8 aPic[60][80],int i)
//{
//    int e=0;
//    int I=0,Num=2,d=0,Sign=0,Same_number=0,num=0;//i ����е�ѡ��
//    
//    if(i>60||i<0)
//      return ;
//      for (e=0;e<CAMERACOUNT;e++)
//      {
//          if(aPic[i][e]==WRITE)
//          {
//              aPic[i][e]=Num;
//              if(aPic[i][e+1]==BLACK)
//              {
//                  aPic[i][e+1]=Num;
//                  Num++;
//              }
//          }
//          else 
//          {
//              Sign=0;
//          }
//      }
//      for(e=0;e<CAMERACOUNT;e++)
//      {
//          if(aPic[i][e]!=0&&aPic[i][e]!=1)
//          {
//              d=aPic[i][e];
//              Same_number=0; 
//              for (I=e;I<CAMERACOUNT;I++)
//              {
//                  if(aPic[i][I]==d)Same_number++;
//              }
//              for (I=0;I<Same_number;I++)
//              {
//                  aPic[i][I+e]=Same_number;
//              }
//              e+=Same_number;
//          }
//          else 
//          {
//              d=0;
//          }
//      }
//      for (e=0;e<CAMERACOUNT;e++)
//      {
//          d=aPic[i][e]>d?aPic[i][e]:d;
//      }
//      for (e=0;e<CAMERACOUNT;e++)
//        {
//                if(aPic[i][e]<d)
//                {
//                       aPic[i][e]=1;
//                }
//                
//                if(aPic[i][e]==d)
//                {
//                        while(e<80&&aPic[i][e]==d)
//                        {
//                                aPic[i][e]=0;
//                                e++;
//                        }
//                        while(e<80)
//                        {
//                                aPic[i][e]=1;
//                                e++;
//                        }
//                        break;
//                }
//        }
//}
//

//��ȡapic�У���num�У�x�����е��е�
//way���ַ�ʽ
//
//int Get_Line_Mid(uint8 aPic[60][80],int num,int way)
//{
//  int e=0;
//  int Bottom_Point_LEFT,Bottom_Point_RIGHT;
//  
//  
//  if(way==0)//��ʽ0�����������м�����
//  {
//        for(e=0;e<CAMERACOUNT;e++)//�ѱߵ�
//        {
//          if(aPic[num][e]==1&&aPic[num][e+1]==0)
//          {
//            Bottom_Point_LEFT=e;
//            break;
//          }
//          Bottom_Point_LEFT=10;
//        }
//    
//      for(e=79;e>0;e--)//������
//      {
//        if(aPic[num][e]==1&&aPic[num][e-1]==0)
//        {
//            Bottom_Point_RIGHT=e;
//          break;
//        }
//        Bottom_Point_RIGHT=70;
//      }
//  }
//  else //��ʽ1�����м�����������
//  {
//       for(e=way;e>0;e--)//�ѱߵ�
//        {
//          if(aPic[num][e]==0&&aPic[num][e-1]==1)
//          {
//            Bottom_Point_LEFT=e;
//            break;
//          }
//          Bottom_Point_LEFT=10;
//        }
//       
//      for(e=way;e<79;e++)//������
//      {
//        if(aPic[num][e]==0&&aPic[num][e+1]==1)
//        {
//            Bottom_Point_RIGHT=e;
//          break;
//        }
//        Bottom_Point_RIGHT=70;
//      }
//  }
//
//return (int)(Bottom_Point_LEFT+Bottom_Point_RIGHT)/2;
//}
//

//int Get_High_Mid(uint8 aPic[60][80],Point_Pic aPicvelue)
//{
//  int e=0;
//  int MIDDLE_H=0;
//  
//       for(e=aPicvelue.Y-1;e>0;e--)//��1��ĸ�
//      {
//        if(aPic[e][aPicvelue.X]==0&&aPic[e-1][aPicvelue.X]==1)
//        {
//          MIDDLE_H=e;
//          break;
//        }
//        MIDDLE_H=0;
//      }
//      MIDDLE_H= (MIDDLE_H+aPicvelue.Y)/2;
//return MIDDLE_H;
//}
// 



