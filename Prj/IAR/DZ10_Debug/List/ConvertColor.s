///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      11/May/2017  11:13:52
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\@@@@@@@\Car\Drivers\ZLG_GUI\ConvertColor.c
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EW1425.tmp
//        (D:\@@@@@@@\Car\Drivers\ZLG_GUI\ConvertColor.c -D DEBUG
//        -D ARM_MATH_CM4 -D MK60DZ10 -lA
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
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\ConvertColor.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1


        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// D:\@@@@@@@\Car\Drivers\ZLG_GUI\ConvertColor.c
//    1 ///****************************************************************************************
//    2 //* �ļ�����CONVERTCOLOR.C
//    3 //* ���ܣ���ɫֵת������
//    4 //* ���ߣ����ܱ�
//    5 //* ���ڣ�2004.02.26
//    6 //* ��ע��
//    7 //****************************************************************************************/
//    8 //#include  "config.h"
//    9 //
//   10 //
//   11 //#if  CONVERTCOLOR_EN==1
//   12 ///****************************************************************************
//   13 //* ���ƣ�GUI_Color2Index_565()
//   14 //* ���ܣ���RGBֵת��16λ����ֵ��ת�����ֵ������64Kɫ��ɫҺ����
//   15 //* ��ڲ�����ColorRGB		RGBֵ��d23--d16ΪRֵ��d15--d8ΪGֵ��d7--d0ΪBֵ
//   16 //* ���ڲ���������ת��ֵ(64Kɫ��d15--d11ΪRֵ��d10--d5ΪGֵ��d4--d0ΪBֵ)
//   17 //* ˵����
//   18 //****************************************************************************/
//   19 //uint16  GUI_Color2Index_565(uint32 colorRGB) 
//   20 //{  uint8  r, g, b;
//   21 //
//   22 //   b = ( colorRGB>>(0+3) ) & 0x1f;		// ȡBɫ�ĸ�5λ
//   23 //   g = ( colorRGB>>(8+2) ) & 0x3f;		// ȡGɫ�ĸ�6λ
//   24 //   r = ( colorRGB>>(16+3)) & 0x1f;		// ȡRɫ�ĸ�5λ
//   25 //   
//   26 //   return( (r<<11) + (g<<5) + (b<<0) );		
//   27 //}
//   28 //
//   29 //
//   30 ///****************************************************************************
//   31 //* ���ƣ�GUI_Index2Color_565()
//   32 //* ���ܣ���16λ����ֵת��ΪRGBֵ��������64Kɫ��ɫҺ����
//   33 //* ��ڲ�����index		16λ����ֵ(64Kɫ��d15--d11ΪRֵ��d10--d5ΪGֵ��d4--d0ΪBֵ)
//   34 //* ���ڲ���������ֵ��ΪRGBֵ(d23--d16ΪRֵ��d15--d8ΪGֵ��d7--d0ΪBֵ)��
//   35 //* ˵����
//   36 //****************************************************************************/
//   37 //uint32  GUI_Index2Color_565(uint16 index) 
//   38 //{  uint32  r, g, b;
//   39 //
//   40 //   b = (index>>0)  & 0x1f;
//   41 //   g = (index>>5)  & 0x3f;
//   42 //   r = (index>>11) & 0x1f;
//   43 //   r = r * 255 / 31;
//   44 //   g = g * 255 / 63;
//   45 //   b = b * 255 / 31;
//   46 //   
//   47 //   return( (r<<16) + (g<<8) + (b<<0) );
//   48 //}
//   49 //
//   50 //
//   51 //
//   52 ///****************************************************************************
//   53 //* ���ƣ�GUI_Color2Index_555()
//   54 //* ���ܣ���RGBֵת��15λ����ֵ��ת�����ֵ������32Kɫ��ɫҺ����
//   55 //* ��ڲ�����ColorRGB		RGBֵ��d23--d16ΪRֵ��d15--d8ΪGֵ��d7--d0ΪBֵ
//   56 //* ���ڲ���������ת��ֵ(32Kɫ��d14--d10ΪRֵ��d9--d5ΪGֵ��d4--d0ΪBֵ)
//   57 //* ˵����
//   58 //****************************************************************************/
//   59 //uint16  GUI_Color2Index_555(uint32 colorRGB) 
//   60 //{  uint8  r, g, b;
//   61 //
//   62 //   b = ( colorRGB>>(0+3) ) & 0x1f;
//   63 //   g = ( colorRGB>>(8+3) ) & 0x1f;
//   64 //   r = ( colorRGB>>(16+3)) & 0x1f;
//   65 //  
//   66 //   return( (r<<10) + (g<<5) + (b<<0) );
//   67 //}
//   68 //
//   69 //
//   70 ///****************************************************************************
//   71 //* ���ƣ�GUI_Index2Color_555()
//   72 //* ���ܣ���15λ����ֵת��ΪRGBֵ��������32Kɫ��ɫҺ����
//   73 //* ��ڲ�����index		15λ����ֵ(32Kɫ��d14--d10ΪRֵ��d9--d5ΪGֵ��d4--d0ΪBֵ)
//   74 //* ���ڲ���������ֵ��ΪRGBֵ(d23--d16ΪRֵ��d15--d8ΪGֵ��d7--d0ΪBֵ)��
//   75 //* ˵����
//   76 //****************************************************************************/
//   77 //uint32  GUI_Index2Color_555(uint16 index) 
//   78 //{  uint32  r, g, b;
//   79 //
//   80 //   b = (index>>0)  & 0x1f;
//   81 //   g = (index>>5)  & 0x1f;
//   82 //   r = (index>>10) & 0x1f;
//   83 //   r = r * 255 / 31;
//   84 //   g = g * 255 / 31;
//   85 //   b = b * 255 / 31;
//   86 //   
//   87 //   return( (r<<16) + (g<<8) + (b<<0) );
//   88 //}
//   89 //
//   90 //
//   91 ///****************************************************************************
//   92 //* ���ƣ�GUI_Color2Index_444()
//   93 //* ���ܣ���RGBֵת��12λ����ֵ��ת�����ֵ������4096ɫα��Һ����
//   94 //* ��ڲ�����ColorRGB		RGBֵ��d23--d16ΪRֵ��d15--d8ΪGֵ��d7--d0ΪBֵ
//   95 //* ���ڲ���������ת��ֵ(4096ɫ��RRRRGGGGBBBB)
//   96 //* ˵����
//   97 //****************************************************************************/
//   98 //uint16  GUI_Color2Index_444(uint32 colorRGB) 
//   99 //{  uint8 r,g,b;
//  100 //
//  101 //   b = ( colorRGB>>(0+4) ) & 0x0f;
//  102 //   g = ( colorRGB>>(8+4) ) & 0x0f;
//  103 //   r = ( colorRGB>>(16+4)) & 0x0f;
//  104 //   
//  105 //   return ( (r<<8) + (g << 4) + (b<<0) );
//  106 //}
//  107 //
//  108 //
//  109 ///****************************************************************************
//  110 //* ���ƣ�GUI_Index2Color_444()
//  111 //* ���ܣ���12λ����ֵת��ΪRGBֵ��������4096ɫα��Һ����
//  112 //* ��ڲ�����index		12λ����ֵ(4096ɫ��RRRRGGGGBBBB)
//  113 //* ���ڲ���������ֵ��ΪRGBֵ(d23--d16ΪRֵ��d15--d8ΪGֵ��d7--d0ΪBֵ)��
//  114 //* ˵����
//  115 //****************************************************************************/
//  116 //uint32  GUI_Index2Color_444(uint16 index) 
//  117 //{  uint8  r,g,b;
//  118 //
//  119 //   b = (index >> 0) & 0x0f;
//  120 //   g = (index >> 4) & 0x0f;
//  121 //   r = (index >> 8) & 0x0f;
//  122 //  
//  123 //   r = r * 17;
//  124 //   g = g * 17;
//  125 //   b = b * 17;
//  126 //   
//  127 //   return ( (r<<16) + (g<<8) + (b<<0) );
//  128 //}
//  129 //
//  130 //
//  131 //
//  132 ///****************************************************************************
//  133 //* ���ƣ�GUI_Color2Index_332()
//  134 //* ���ܣ���RGBֵת��8λ����ֵ��ת�����ֵ������256ɫα��Һ����
//  135 //* ��ڲ�����ColorRGB		RGBֵ��d23--d16ΪRֵ��d15--d8ΪGֵ��d7--d0ΪBֵ
//  136 //* ���ڲ���������ת��ֵ(256ɫ��RRRGGGBB)
//  137 //* ˵����
//  138 //****************************************************************************/
//  139 //uint8  GUI_Color2Index_332(uint32 colorRGB) 
//  140 //{  uint32  r, g, b;
//  141 //
//  142 //   b = (colorRGB>>0)  & 0xff;
//  143 //   g = (colorRGB>>8)  & 0xff;
//  144 //   r = (colorRGB>>16) & 0xff;
//  145 //   r = (r * 7 + 127) / 255;
//  146 //   g = (g * 7 + 127) / 255;
//  147 //   b = (b + 42) / 85;
//  148 //   
//  149 //   return( (r<<5) + (g << 2) + (b<<0) );
//  150 //}
//  151 //
//  152 //
//  153 ///****************************************************************************
//  154 //* ���ƣ�GUI_Index2Color_332()
//  155 //* ���ܣ���8λ����ֵת��ΪRGBֵ��������256ɫα��Һ����
//  156 //* ��ڲ�����index		8λ����ֵ(256ɫ��RRRGGGBB)
//  157 //* ���ڲ���������ֵ��ΪRGBֵ(d23--d16ΪRֵ��d15--d8ΪGֵ��d7--d0ΪBֵ)��
//  158 //* ˵����
//  159 //****************************************************************************/
//  160 //uint32  GUI_Index2Color_233(uint8 index)
//  161 //{  uint32  r, g, b;
//  162 //
//  163 //   r = (index >> 5) * 255 / 7;
//  164 //   g = ((index >> 3) & 7) * 255 / 7;
//  165 //   b = (index & 3) * 85;
//  166 //   
//  167 //   return( (r<<16) + (g << 8) + (b<<0) );
//  168 //}
//  169 //
//  170 //
//  171 //
//  172 ///****************************************************************************
//  173 //* ���ƣ�GUI_Color2Index_222()
//  174 //* ���ܣ���RGBֵת��8λ����ֵ��ת�����ֵ������64ɫҺ����
//  175 //* ��ڲ�����ColorRGB		RGBֵ��d23--d16ΪRֵ��d15--d8ΪGֵ��d7--d0ΪBֵ
//  176 //* ���ڲ���������ת��ֵ(64ɫ��RRGGBB)
//  177 //* ˵����
//  178 //****************************************************************************/
//  179 //uint8  GUI_Color2Index_222(uint32 colorRGB)
//  180 //{  uint32  r, g, b;
//  181 //
//  182 //   b = (((colorRGB>>0) &255)+0x2a)/0x55;
//  183 //   g = (((colorRGB>>8) &255)+0x2a)/0x55;
//  184 //   r = (((colorRGB>>16)&255)+0x2a)/0x55;
//  185 //   
//  186 //   return( (r<<4) + (g<<2) + (b<<0) );
//  187 //}
//  188 //
//  189 //
//  190 ///****************************************************************************
//  191 //* ���ƣ�GUI_Index2Color_222()
//  192 //* ���ܣ���6λ����ֵת��ΪRGBֵ��������64ɫҺ����
//  193 //* ��ڲ�����index		6λ����ֵ(64ɫ��RRGGBB)
//  194 //* ���ڲ���������ֵ��ΪRGBֵ(d23--d16ΪRֵ��d15--d8ΪGֵ��d7--d0ΪBֵ)��
//  195 //* ˵����
//  196 //****************************************************************************/
//  197 //uint32  GUI_Index2Color_222(uint8 index) 
//  198 //{  uint8  r, g, b;
//  199 //
//  200 //   b = ((index>>0)&3) * 0x55;
//  201 //   g = ((index>>2)&3) * 0x55;
//  202 //   r = ((index>>4)&3) * 0x55;
//  203 //   
//  204 //   return( (r<<16) + (g<<8) + (b<<0) );
//  205 //}
//  206 //
//  207 //
//  208 //
//  209 //
//  210 ///****************************************************************************
//  211 //* ���ƣ�GUI_Color2Index_111()
//  212 //* ���ܣ���RGBֵת��3λ����ֵ��ת�����ֵ������8ɫҺ����8���ֶ�Һ����
//  213 //* ��ڲ�����ColorRGB		RGBֵ��d23--d16ΪRֵ��d15--d8ΪGֵ��d7--d0ΪBֵ
//  214 //* ���ڲ���������ת��ֵ(8ɫ��RGB)
//  215 //* ˵����
//  216 //****************************************************************************/
//  217 //uint8  GUI_Color2Index_111(uint32 colorRGB) 
//  218 //{  uint8  r, g, b;
//  219 //
//  220 //   b = (colorRGB>>(0+7))  &1;
//  221 //   g = (colorRGB>>(8+7))  &1;
//  222 //   r = (colorRGB>>(16+7)) &1;
//  223 //   
//  224 //   return( (r<<2) + (g<<1) + (b<<0) );
//  225 //}
//  226 //
//  227 //
//  228 ///****************************************************************************
//  229 //* ���ƣ� GUI_Index2Color_111()
//  230 //* ���ܣ���3λ����ֵת��ΪRGBֵ��������8ɫҺ����8���ֶ�Һ����
//  231 //* ��ڲ�����index		3λ����ֵ(8ɫ��RGB)
//  232 //* ���ڲ���������ֵ��ΪRGBֵ(d23--d16ΪRֵ��d15--d8ΪGֵ��d7--d0ΪBֵ)��
//  233 //* ˵����
//  234 //****************************************************************************/
//  235 //uint32  GUI_Index2Color_111(uint8 Index) 
//  236 //{  uint8  r, g, b;
//  237 //
//  238 //   b = ((Index>>0)&1) * 0xff;
//  239 //   g = ((Index>>1)&1) * 0xff;
//  240 //   r = ((Index>>2)&1) * 0xff;
//  241 //   
//  242 //   return( (r<<16) + (g<<8) + (b<<0) );
//  243 //}
//  244 //
//  245 //#endif
// 
//
// 
//
//
//Errors: none
//Warnings: none