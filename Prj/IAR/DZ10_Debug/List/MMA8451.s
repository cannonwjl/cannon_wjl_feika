///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      16/Jun/2017  18:57:10
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\@@@@@@@\Car\Drivers\IIC_Angle\MMA8451.c
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EW1798.tmp
//        (D:\@@@@@@@\Car\Drivers\IIC_Angle\MMA8451.c -D DEBUG -D
//        ARM_MATH_CM4 -D MK60DZ10 -lA
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List -o
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\Obj --no_cse
//        --no_unroll --no_inline --no_code_motion --no_tbaa --no_clustering
//        --no_scheduling --debug --endian=little --cpu=Cortex-M4 -e
//        --char_is_signed --fpu=None --dlib_config "C:\Program Files (x86)\IAR
//        Systems\Embedded Workbench 8.0\arm\INC\c\DLib_Config_Full.h" -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\App\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\App\Inc\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Board\Inc\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Chip\inc\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Chip\inc\IAR\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Chip\inc\kinetis\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Lib\CMSIS\Inc\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Lib\FatFs\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Lib\USB\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Drivers\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Drivers\All_Init\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Drivers\OLED_NEW\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Drivers\OLED\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Drivers\lptmr\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Drivers\IIC_Angle\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Drivers\ZLG_GUI\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Drivers\key\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Drivers\Led\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Drivers\UI\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Drivers\Control\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Drivers\Search\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Drivers\Fuzzy\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Drivers\BianMaqi\ -On -I
//        "C:\Program Files (x86)\IAR Systems\Embedded Workbench
//        8.0\arm\CMSIS\Include\" -D ARM_MATH_CM4)
//    Locale       =  C
//    List file    =  
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\MMA8451.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        RTMODEL "__dlib_full_locale_support", "1"
        RTMODEL "__dlib_version", "6"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN I2C_ReadByte
        EXTERN ITG3200_readbyte
        EXTERN __aeabi_cfcmple
        EXTERN __aeabi_cfrcmple
        EXTERN __aeabi_d2f
        EXTERN __aeabi_d2iz
        EXTERN __aeabi_dadd
        EXTERN __aeabi_dmul
        EXTERN __aeabi_dsub
        EXTERN __aeabi_f2d
        EXTERN __aeabi_f2iz
        EXTERN __aeabi_fsub
        EXTERN __aeabi_i2d
        EXTERN __aeabi_i2f
        EXTERN __aeabi_ui2f

        PUBLIC MMA8451_ITG3200_function1
        PUBLIC OUT0
        PUBLIC error0
        PUBLIC last_value_8452
        
          CFI Names cfiNames0
          CFI StackFrame CFA R13 DATA
          CFI Resource R0:32, R1:32, R2:32, R3:32, R4:32, R5:32, R6:32, R7:32
          CFI Resource R8:32, R9:32, R10:32, R11:32, R12:32, R13:32, R14:32
          CFI EndNames cfiNames0
        
          CFI Common cfiCommon0 Using cfiNames0
          CFI CodeAlign 2
          CFI DataAlign 4
          CFI ReturnAddress R14 CODE
          CFI CFA R13+0
          CFI R0 Undefined
          CFI R1 Undefined
          CFI R2 Undefined
          CFI R3 Undefined
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI R8 SameValue
          CFI R9 SameValue
          CFI R10 SameValue
          CFI R11 SameValue
          CFI R12 Undefined
          CFI R14 SameValue
          CFI EndCommon cfiCommon0
        
// D:\@@@@@@@\Car\Drivers\IIC_Angle\MMA8451.c
//    1 #include "common.h"
//    2 #include "all_init.h"
//    3 #include "MMA8451.h"
//    4 #include "ITG3200.h"
//    5 #include "IIC.h"
//    6 #include "iiic.h"
//    7 
//    8 
//    9 
//   10 //#define COEFF 0.005//�ǶȺͽ��ٶȵ����ϵ��
//   11 //#define COEFF 0.004//�ǶȺͽ��ٶȵ����ϵ��
//   12 
//   13 #define COEFF 0.005

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   14 float OUT0=100,error0=0;
OUT0:
        DC32 42C80000H

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
error0:
        DS8 4
//   15                                   
//   16 /*************************************************************************
//   17 *                           ����DIY������
//   18 *
//   19 *  �������ƣ�MMA8451_ITG3200_function1
//   20 *  ����˵�����õ��Ƕ�ֵ�ͽ��ٶ�ֵ
//   21 *  ����˵����AdColle      �ݴ���������
//   22 *  �������أ���
//   23 *  �޸�ʱ�䣺2016-12-18
//   24 *  ��    ע��
//   25 *************************************************************************/
//   26 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   27 int last_value_8452[3];
last_value_8452:
        DS8 12

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function MMA8451_ITG3200_function1
        THUMB
//   28 void MMA8451_ITG3200_function1(float *AdColle,int angular)
//   29 {
MMA8451_ITG3200_function1:
        PUSH     {R3-R11,LR}
          CFI R14 Frame(CFA, -4)
          CFI R11 Frame(CFA, -8)
          CFI R10 Frame(CFA, -12)
          CFI R9 Frame(CFA, -16)
          CFI R8 Frame(CFA, -20)
          CFI R7 Frame(CFA, -24)
          CFI R6 Frame(CFA, -28)
          CFI R5 Frame(CFA, -32)
          CFI R4 Frame(CFA, -36)
          CFI CFA R13+40
        MOVS     R4,R0
        MOV      R8,R1
//   30 	s16 angle0;//���ٶȼƵõ��ĽǶ�ֵ
//   31 	s16 gyro0,Gyro0;//�����ǵõ��Ľ��ٶ�ֵ
//   32 	float angle1,gyro1;
//   33 	angle0= I2C_ReadByte(I2C_MMA8452_DDR,MMA845x_OUT_Z_MSB)<<8;//�õ��߰�λ
        MOVS     R1,#+5
        MOVS     R0,#+28
          CFI FunCall I2C_ReadByte
        BL       I2C_ReadByte
        LSLS     R0,R0,#+8
        MOVS     R6,R0
//   34 	angle0 |= I2C_ReadByte(I2C_MMA8452_DDR,MMA845x_OUT_Z_LSB);//�õ��Ͱ�λ
        MOVS     R1,#+6
        MOVS     R0,#+28
          CFI FunCall I2C_ReadByte
        BL       I2C_ReadByte
        ORRS     R0,R0,R6
        MOVS     R6,R0
//   35 	angle0>>=2;//14λ���� 
        SXTH     R6,R6            ;; SignExt  R6,R6,#+16,#+16
        ASRS     R6,R6,#+2
//   36 	angle0+=4000;
        ADDS     R6,R6,#+4000
//   37 	angle0>>=3;//�ý��ٶ�ֵ��Ƕ�ֵ����
        SXTH     R6,R6            ;; SignExt  R6,R6,#+16,#+16
        ASRS     R6,R6,#+3
//   38 
//   39 	gyro0 = ITG3200_readbyte(REG_GYRO_YOUT_H)<<8;
        MOVS     R0,#+31
          CFI FunCall ITG3200_readbyte
        BL       ITG3200_readbyte
        LSLS     R0,R0,#+8
        MOVS     R7,R0
//   40 	gyro0 |= ITG3200_readbyte(REG_GYRO_YOUT_L);
        MOVS     R0,#+32
          CFI FunCall ITG3200_readbyte
        BL       ITG3200_readbyte
        ORRS     R0,R0,R7
        MOVS     R7,R0
//   41 	gyro0>>=2;
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        ASRS     R7,R7,#+2
//   42 	gyro0=(int)(1.978*(-gyro0-26));//�ý��ٶȾ�ֹ��ֵΪ0  ���ý��ٶ�ֵ��Ƕ�ֵ����            //2.4
        MVNS     R0,#+25
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        SUBS     R7,R0,R7
        MOVS     R0,R7
          CFI FunCall __aeabi_i2d
        BL       __aeabi_i2d
        MOVS     R2,R0
        MOVS     R3,R1
        LDR.N    R0,??MMA8451_ITG3200_function1_0  ;; 0x53f7ced9
        LDR.N    R1,??MMA8451_ITG3200_function1_0+0x4  ;; 0x3fffa5e3
          CFI FunCall __aeabi_dmul
        BL       __aeabi_dmul
          CFI FunCall __aeabi_d2iz
        BL       __aeabi_d2iz
        MOVS     R7,R0
//   43     gyro1=gyro0;   //��ֵ����gyro1���ڸ�������
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        MOVS     R0,R7
          CFI FunCall __aeabi_i2f
        BL       __aeabi_i2f
        MOV      R9,R0
//   44     angle1=angle0;//��ֵ����angle1���ڸ�������
        SXTH     R6,R6            ;; SignExt  R6,R6,#+16,#+16
        MOVS     R0,R6
          CFI FunCall __aeabi_i2f
        BL       __aeabi_i2f
        STR      R0,[SP, #+0]
//   45 
//   46 	////////////�����˲�///////////////
//   47 	OUT0=OUT0-(gyro1*0.005);//0.005
        LDR.N    R0,??MMA8451_ITG3200_function1_0+0x8
        LDR      R0,[R0, #+0]
          CFI FunCall __aeabi_f2d
        BL       __aeabi_f2d
        MOV      R10,R0
        MOV      R11,R1
        MOV      R0,R9
          CFI FunCall __aeabi_f2d
        BL       __aeabi_f2d
        MOVS     R2,R0
        MOVS     R3,R1
        LDR.N    R0,??MMA8451_ITG3200_function1_0+0xC  ;; 0x47ae147b
        LDR.N    R1,??MMA8451_ITG3200_function1_0+0x10  ;; 0x3f747ae1
          CFI FunCall __aeabi_dmul
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOV      R0,R10
        MOV      R1,R11
          CFI FunCall __aeabi_dsub
        BL       __aeabi_dsub
          CFI FunCall __aeabi_d2f
        BL       __aeabi_d2f
        LDR.N    R1,??MMA8451_ITG3200_function1_0+0x8
        STR      R0,[R1, #+0]
//   48 	error0=angle1-OUT0;
        LDR      R0,[SP, #+0]
        LDR.N    R1,??MMA8451_ITG3200_function1_0+0x8
        LDR      R1,[R1, #+0]
          CFI FunCall __aeabi_fsub
        BL       __aeabi_fsub
        LDR.N    R1,??MMA8451_ITG3200_function1_0+0x14
        STR      R0,[R1, #+0]
//   49 	
//   50 	OUT0=OUT0+error0*COEFF;        //OUT��Χ�Ǻ������100--ǰ�����900  
        LDR.N    R0,??MMA8451_ITG3200_function1_0+0x8
        LDR      R0,[R0, #+0]
          CFI FunCall __aeabi_f2d
        BL       __aeabi_f2d
        MOV      R10,R0
        MOV      R11,R1
        LDR.N    R0,??MMA8451_ITG3200_function1_0+0x14
        LDR      R0,[R0, #+0]
          CFI FunCall __aeabi_f2d
        BL       __aeabi_f2d
        MOVS     R2,R0
        MOVS     R3,R1
        LDR.N    R0,??MMA8451_ITG3200_function1_0+0xC  ;; 0x47ae147b
        LDR.N    R1,??MMA8451_ITG3200_function1_0+0x10  ;; 0x3f747ae1
          CFI FunCall __aeabi_dmul
        BL       __aeabi_dmul
        MOV      R2,R10
        MOV      R3,R11
          CFI FunCall __aeabi_dadd
        BL       __aeabi_dadd
          CFI FunCall __aeabi_d2f
        BL       __aeabi_d2f
        LDR.N    R1,??MMA8451_ITG3200_function1_0+0x8
        STR      R0,[R1, #+0]
//   51 	if(OUT0<100) OUT0=100;
        LDR.N    R0,??MMA8451_ITG3200_function1_0+0x8
        LDR      R0,[R0, #+0]
        LDR.N    R1,??MMA8451_ITG3200_function1_0+0x18  ;; 0x42c80000
          CFI FunCall __aeabi_cfcmple
        BL       __aeabi_cfcmple
        BCS.N    ??MMA8451_ITG3200_function1_1
        LDR.N    R0,??MMA8451_ITG3200_function1_0+0x18  ;; 0x42c80000
        LDR.N    R1,??MMA8451_ITG3200_function1_0+0x8
        STR      R0,[R1, #+0]
        B.N      ??MMA8451_ITG3200_function1_2
//   52     else if(OUT0>900) OUT0=900;         
??MMA8451_ITG3200_function1_1:
        LDR.N    R0,??MMA8451_ITG3200_function1_0+0x8
        LDR      R0,[R0, #+0]
        LDR.N    R1,??MMA8451_ITG3200_function1_0+0x1C  ;; 0x44610001
          CFI FunCall __aeabi_cfrcmple
        BL       __aeabi_cfrcmple
        BHI.N    ??MMA8451_ITG3200_function1_2
        LDR.N    R0,??MMA8451_ITG3200_function1_0+0x20  ;; 0x44610000
        LDR.N    R1,??MMA8451_ITG3200_function1_0+0x8
        STR      R0,[R1, #+0]
//   53 
//   54 	/////////////////////////////
//   55         
//   56     Gyro0=gyro0+1000;
??MMA8451_ITG3200_function1_2:
        ADDS     R0,R7,#+1000
        MOVS     R5,R0
//   57     Gyro0>>=1;  //��������ٶȷ���ֵ
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        ASRS     R5,R5,#+1
//   58     if(Gyro0<0) Gyro0=0;
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BPL.N    ??MMA8451_ITG3200_function1_3
        MOVS     R0,#+0
        MOVS     R5,R0
        B.N      ??MMA8451_ITG3200_function1_4
//   59    	else if (Gyro0>999) Gyro0=999;
??MMA8451_ITG3200_function1_3:
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        CMP      R5,#+1000
        BLT.N    ??MMA8451_ITG3200_function1_4
        MOVW     R0,#+999
        MOVS     R5,R0
//   60 	//Gyro0=999-Gyro0;
//   61    
//   62    
//   63     
//   64 	AdColle[2]=(u16)angle0;//δ�ںϵĽǶ�  
??MMA8451_ITG3200_function1_4:
        MOVS     R0,R6
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall __aeabi_ui2f
        BL       __aeabi_ui2f
        STR      R0,[R4, #+8]
//   65 	AdColle[1]=999-(u16)OUT0;//�ںϺ�ĽǶ� 
        MOVW     R10,#+999
        LDR.N    R0,??MMA8451_ITG3200_function1_0+0x8
        LDR      R0,[R0, #+0]
          CFI FunCall __aeabi_f2iz
        BL       __aeabi_f2iz
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        SUBS     R10,R10,R0
        MOV      R0,R10
          CFI FunCall __aeabi_i2f
        BL       __aeabi_i2f
        STR      R0,[R4, #+4]
//   66 	AdColle[0]=(u16)Gyro0;//���ٶ�+1000��֤��Ϊ����   
        MOVS     R0,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall __aeabi_ui2f
        BL       __aeabi_ui2f
        STR      R0,[R4, #+0]
//   67 
//   68 }
        POP      {R0,R4-R11,PC}   ;; return
        DATA
??MMA8451_ITG3200_function1_0:
        DC32     0x53f7ced9
        DC32     0x3fffa5e3
        DC32     OUT0
        DC32     0x47ae147b
        DC32     0x3f747ae1
        DC32     error0
        DC32     0x42c80000
        DC32     0x44610001
        DC32     0x44610000
          CFI EndBlock cfiBlock0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//   69 //unsigned char MMA845x_readbyte(unsigned char address)
//   70 //{
//   71 //unsigned char ret = 100;
//   72 //	IIC_start();		//����
//   73 //	send_byte(MMA845x_IIC_ADDRESS);	//д���豸ID��д�ź�
//   74 //	send_byte(address);	//X��ַ
//   75 //	IIC_start();		//���·��Ϳ�ʼ
//   76 //	send_byte(0x39<<1);	//д���豸ID������
//   77 //	ret = read_byte();	//��ȡһ�ֽ�
//   78 //	IIC_stop();
//   79 //
//   80 //	return ret;
//   81 //}
//   82 
//   83 //д��
//   84 //void MMA845x_writebyte(unsigned char address, unsigned char thedata)
//   85 //{
//   86 //	IIC_start();		//����
//   87 //	send_byte(MMA845x_IIC_ADDRESS);	//д���豸ID��д�ź�
//   88 //	send_byte(address);	//X��ַ
//   89 //	send_byte(thedata);	//д���豸ID������
//   90 //	IIC_stop();
//   91 //}
//   92 
//   93 //��ʼ��
//   94 //��ʼ��Ϊָ��ģʽ
//   95 //void MMA845x_init()
//   96 //{	
//   97 //  gpio_init (PTE24,GPO,0);
//   98 //  gpio_init (PTE25,GPO,0);
//   99 //  
//  100 ////  DELAY_MS(1000);
//  101 ////	MMA845x_writebyte(CTRL_REG1,ASLP_RATE_20MS+DATA_RATE_5MS);	
//  102 ////	delaymm();
//  103 ////	MMA845x_writebyte(XYZ_DATA_CFG_REG, FULL_SCALE_2G); //2G
//  104 ////	delaymm();
//  105 ////	MMA845x_writebyte(CTRL_REG1, ACTIVE_MASK);          //����״̬
//  106 ////	delaymm();
//  107 ////    DELAY_MS(1000);
//  108 ////    
//  109 ////    ITG3200_writebyte(REG_DLPF_FS,0x18);//����ITG3200
//  110 ////        delaymm();
//  111 //}
//  112 
//  113 
//  114 ///*************************************************************************
//  115 //*                           ����DIY������
//  116 //*
//  117 //*  �������ƣ�MMA8451_ITG3200_function
//  118 //*  ����˵�����õ��Ƕ�ֵ�ͽ��ٶ�ֵ
//  119 //*  ����˵����AdColle      �ݴ���������
//  120 //*  �������أ���
//  121 //*  �޸�ʱ�䣺2015-5-27
//  122 //*  ��    ע��
//  123 //*************************************************************************/
//  124 //void MMA8451_ITG3200_function0(u16 *AdColle,int angular)
//  125 //{
//  126 //	s16 angle0;//���ٶȼƵõ��ĽǶ�ֵ
//  127 //	s16 gyro0,Gyro0;//�����ǵõ��Ľ��ٶ�ֵ
//  128 //	float angle1,gyro1;
//  129 //	
//  130 //	angle0= MMA845x_readbyte(MMA845x_OUT_Z_MSB)<<8;//�õ��߰�λ
//  131 //	angle0 |= MMA845x_readbyte(MMA845x_OUT_Z_LSB);//�õ��Ͱ�λ
//  132 //	angle0>>=2;//14λ���� 
//  133 //	angle0+=4000;
//  134 //	angle0>>=3;//�ý��ٶ�ֵ��Ƕ�ֵ����
//  135 //	
//  136 //	gyro0 = ITG3200_readbyte(REG_GYRO_YOUT_H)<<8;
//  137 //	gyro0 |= ITG3200_readbyte(REG_GYRO_YOUT_L);
//  138 //	gyro0>>=2;
//  139 //	gyro0=(int)(2.4*(-gyro0-26));//�ý��ٶȾ�ֹ��ֵΪ0  ���ý��ٶ�ֵ��Ƕ�ֵ���� 
//  140 //    gyro1=gyro0;   //��ֵ����gyro1���ڸ�������
//  141 //    angle1=angle0;//��ֵ����angle1���ڸ�������
//  142 //
//  143 //	////////////�����˲�///////////////
//  144 //	OUT0=OUT0+(gyro1*0.005);
//  145 //	error0=angle1-OUT0;
//  146 //	
//  147 //	OUT0=OUT0+error0*COEFF;        //OUT��Χ�Ǻ������100--ǰ�����900  
//  148 //	if(OUT0<100) OUT0=100;
//  149 //    else if(OUT0>900) OUT0=900;         
//  150 //
//  151 //	/////////////////////////////
//  152 //    Gyro0=gyro0+1000;
//  153 //    Gyro0>>=1;  //��������ٶȷ���ֵ
//  154 //    if(Gyro0<0) Gyro0=0;
//  155 //   	else if (Gyro0>999) Gyro0=999;
//  156 //	
//  157 //	AdColle[2]=(u16)angle0;//δ�ںϵĽǶ�  
//  158 //	AdColle[1]=(u16)OUT0;//�ںϺ�ĽǶ� 
//  159 //	AdColle[0]=(u16)Gyro0;//���ٶ�+1000��֤��Ϊ����   
//  160 //}
//  161 //
//  162 ///*************************************************************************
//  163 //*                           ����DIY������
//  164 //*
//  165 //*  �������ƣ�MMA8451_ITG3200_function1
//  166 //*  ����˵�����õ��Ƕ�ֵ�ͽ��ٶ�ֵ
//  167 //*  ����˵����AdColle      �ݴ���������
//  168 //*  �������أ���
//  169 //*  �޸�ʱ�䣺2016-12-18
//  170 //*  ��    ע��
//  171 //*************************************************************************/
//  172 //
//  173 //int last_value_8452[3];
//  174 //void MMA8451_ITG3200_function1(u16 *AdColle,int angular)
//  175 //{
//  176 //	s16 angle0;//���ٶȼƵõ��ĽǶ�ֵ
//  177 //	s16 gyro0,Gyro0;//�����ǵõ��Ľ��ٶ�ֵ
//  178 //	float angle1,gyro1;
//  179 //	angle0= I2C_ReadByte(I2C_MMA8452_DDR,MMA845x_OUT_Z_MSB)<<8;//�õ��߰�λ
//  180 //	angle0 |= I2C_ReadByte(I2C_MMA8452_DDR,MMA845x_OUT_Z_LSB);//�õ��Ͱ�λ
//  181 //	angle0>>=2;//14λ���� 
//  182 //	angle0+=4000;
//  183 //	angle0>>=3;//�ý��ٶ�ֵ��Ƕ�ֵ����
//  184 //
//  185 //	gyro0 = ITG3200_readbyte(REG_GYRO_YOUT_H)<<8;
//  186 //	gyro0 |= ITG3200_readbyte(REG_GYRO_YOUT_L);
//  187 //	gyro0>>=2;
//  188 //	gyro0=(int)(2.4*(-gyro0-26));//�ý��ٶȾ�ֹ��ֵΪ0  ���ý��ٶ�ֵ��Ƕ�ֵ���� 
//  189 //    gyro1=gyro0;   //��ֵ����gyro1���ڸ�������
//  190 //    angle1=angle0;//��ֵ����angle1���ڸ�������
//  191 //
//  192 //	////////////�����˲�///////////////
//  193 //	OUT0=OUT0-(gyro1*0.005);
//  194 //	error0=angle1-OUT0;
//  195 //	
//  196 //	OUT0=OUT0+error0*COEFF;        //OUT��Χ�Ǻ������100--ǰ�����900  
//  197 //	if(OUT0<100) OUT0=100;
//  198 //    else if(OUT0>900) OUT0=900;         
//  199 //
//  200 //	/////////////////////////////
//  201 //        
//  202 //    Gyro0=gyro0+1000;
//  203 //    Gyro0>>=1;  //��������ٶȷ���ֵ
//  204 //    if(Gyro0<0) Gyro0=0;
//  205 //   	else if (Gyro0>999) Gyro0=999;
//  206 //	//Gyro0=999-Gyro0;
//  207 //   
//  208 //   
//  209 //    
//  210 //	AdColle[2]=(u16)angle0;//δ�ںϵĽǶ�  
//  211 //	AdColle[1]=999-(u16)OUT0;//�ںϺ�ĽǶ� 
//  212 //	AdColle[0]=(u16)Gyro0;//���ٶ�+1000��֤��Ϊ����   
//  213 //
//  214 //}
//  215 
//  216 
//  217 
//  218 
//  219 
//  220 
//  221 
//  222 
//  223 
//  224 
//  225 
//  226 
// 
//  16 bytes in section .bss
//   4 bytes in section .data
// 392 bytes in section .text
// 
// 392 bytes of CODE memory
//  20 bytes of DATA memory
//
//Errors: none
//Warnings: none
