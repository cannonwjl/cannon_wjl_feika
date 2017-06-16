///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      11/May/2017  11:14:11
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\@@@@@@@\Car\Board\src\VCAN_UI_VAR.c
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EW60F7.tmp
//        (D:\@@@@@@@\Car\Board\src\VCAN_UI_VAR.c -D DEBUG -D
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
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\VCAN_UI_VAR.s
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
// D:\@@@@@@@\Car\Board\src\VCAN_UI_VAR.c
//    1 //#if 0
//    2 //
//    3 //#include "common.h"
//    4 //#include "VCAN_LCD.h"
//    5 //#include "VCAN_UI_VAR.h"
//    6 //#include "VCAN_NRF24L0_MSG.h"
//    7 //
//    8 //
//    9 //
//   10 //#define VAR_VALUE(var_tab)      num_info[var_tab].val       //ָ����ŵı�����ֵ
//   11 //#define VAR_OLDVALUE(var_tab)   num_info[var_tab].oldval    //ָ����ŵı��������ȷ��ֵ
//   12 //#define VAR_MAXVALUE(var_tab)   num_info[var_tab].maxval
//   13 //#define VAR_MINVALUE(var_tab)   num_info[var_tab].minval
//   14 //#define VAR_SITE(var_tab)       num_info[var_tab].site
//   15 //
//   16 //static uint8  car_ctrl = CAR_NULL;
//   17 //
//   18 //extern uint8  var1, var2;
//   19 //extern uint16 var3, var4;
//   20 //extern uint32 var5, var6;
//   21 //
//   22 //uint32 *var_addr[VAR_MAX] = {(uint32 *)&car_ctrl,(uint32 *)&var1, (uint32 *)&var2, (uint32 *)&var3, (uint32 *)&var4, (uint32 *)&var5, (uint32 *)&var6};
//   23 //
//   24 //
//   25 //ui_var_info_t  num_info[VAR_MAX] =
//   26 //{
//   27 //    //  {val,oldval,minval,maxval,{x,y}}
//   28 //    //val,oldval,���ڵ���key_event_init��ʱ������Ӧ�����︳ֵ���������������ֵ��������д
//   29 //    //��Ҫ����minval,maxval,{x,y}
//   30 //    //���ע����Сֵ��Ҫ�������ֵ
//   31 //    {0, 0, 0, CAR_CTRL_MAX, {90,102}},      //���� car_ctrl��
//   32 //    {0, 0, 0, 100, {90, 0}},                //���� var1��
//   33 //    {0, 0, 0, 100, {90, 17}},               //���� var2��
//   34 //    {0, 0, 0, 300, {90, 34}},               //���� var3��
//   35 //    {0, 0, 0, 300, {90, 51}},               //���� var4��
//   36 //    {0, 0, 0, 65540, {90, 68}},             //���� var5��
//   37 //    {0, 0, 0, 65540, {90, 85}}              //���� var6��
//   38 //};
//   39 //
//   40 //uint8   new_tab = 0;        //��ǰѡ��ı������
//   41 //uint32  last_tab;           //�����յ��ı������
//   42 //
//   43 //
//   44 //
//   45 ////ͬ��ָ����ֵ��tab Ϊ VAR_NUM ʱ��ʾȫ��ͬ����С����ͬ����Ӧ��
//   46 ////������ͬ������ʾȫ������Ϊ�п���ͬ��ʧ�ܡ�
//   47 ////static uint8 var_syn(uint8 tab);         //ͬ�����ݣ�1��ʾ�ɹ���0��ʾʧ��
//   48 //
//   49 //void save_var2buff(var_tab_e var_num, uint8 *sendbuf);              //����Ҫ���͵ı���������д�뵽������
//   50 //
//   51 //void var_init()
//   52 //{
//   53 //    uint8   var_num;
//   54 //    uint32  vartemp;
//   55 //
//   56 //    for(var_num = 0; var_num < VAR_MAX; var_num++)
//   57 //    {
//   58 //        get_var((var_tab_e)var_num, &vartemp);
//   59 //        num_info[var_num].val       = vartemp;
//   60 //        num_info[var_num].oldval    = vartemp;
//   61 //
//   62 //        //�����Сֵ�����ֵ
//   63 //        ASSERT(num_info[var_num].maxval  >=  num_info[var_num].minval );
//   64 //    }
//   65 //}
//   66 //
//   67 //void save_var(var_tab_e var_tal, uint32 var_data)
//   68 //{
//   69 //    if(var_tal <= VAR_8BIT)
//   70 //    {
//   71 //        *((uint8 *)(var_addr[var_tal])) = var_data;
//   72 //    }
//   73 //    else if(var_tal <= VAR_16BIT)
//   74 //    {
//   75 //        *((uint16 *)(var_addr[var_tal])) = var_data;
//   76 //    }
//   77 //    else if(var_tal <= VAR_32BIT)
//   78 //    {
//   79 //        *((uint32 *)(var_addr[var_tal])) = var_data;
//   80 //    }
//   81 //
//   82 //    VAR_VALUE(var_tal) = var_data;
//   83 //    VAR_OLDVALUE(var_tal) = var_data;
//   84 //}
//   85 //
//   86 //void get_var(var_tab_e var_tal, uint32 *var_data)
//   87 //{
//   88 //    if(var_tal <= VAR_8BIT)
//   89 //    {
//   90 //        *var_data = (uint32) * ((uint8 *)(var_addr[var_tal]));
//   91 //    }
//   92 //    else if(var_tal <= VAR_16BIT)
//   93 //    {
//   94 //        *var_data = (uint32) * ((uint16 *)(var_addr[var_tal])) ;
//   95 //    }
//   96 //    else if(var_tal <= VAR_32BIT)
//   97 //    {
//   98 //        *var_data = (uint32) * ((uint32 *)(var_addr[var_tal]));
//   99 //    }
//  100 //}
//  101 //
//  102 //
//  103 //void updata_var(var_tab_e var_tal)
//  104 //{
//  105 //    uint32 vartemp;
//  106 //
//  107 //    get_var(var_tal, &vartemp);
//  108 //
//  109 //    VAR_VALUE(var_tal) = vartemp;
//  110 //}
//  111 //
//  112 ////�Ա����ļӼ����д���
//  113 //void var_value(ui_var_event_e ctrl)
//  114 //{
//  115 //    ASSERT(new_tab < VAR_MAX);
//  116 //
//  117 //
//  118 //    //�޸ĵ�ǰ������ֵ
//  119 //    switch(ctrl)
//  120 //    {
//  121 //    case VAR_ADD:
//  122 //        if(VAR_VALUE(new_tab) < VAR_MAXVALUE(new_tab))
//  123 //        {
//  124 //            VAR_VALUE(new_tab)++;
//  125 //        }
//  126 //        else
//  127 //        {
//  128 //            VAR_VALUE(new_tab) = VAR_MINVALUE(new_tab);
//  129 //        }
//  130 //        break;
//  131 //
//  132 //    case VAR_SUB:
//  133 //        if(VAR_VALUE(new_tab) > VAR_MINVALUE(new_tab))
//  134 //        {
//  135 //            VAR_VALUE(new_tab)--;
//  136 //        }
//  137 //        else
//  138 //        {
//  139 //            VAR_VALUE(new_tab) = VAR_MAXVALUE(new_tab) ;//��Сֵ��һΪ���ֵ
//  140 //        }
//  141 //        break;
//  142 //
//  143 //    case VAR_ADD_HOLD:
//  144 //        if(   (VAR_MAXVALUE(new_tab) - VAR_VALUE(new_tab))  >  VAR_VALUE_HOLE_OFFSET )
//  145 //        {
//  146 //            VAR_VALUE(new_tab) += VAR_VALUE_HOLE_OFFSET;
//  147 //        }
//  148 //        else
//  149 //        {
//  150 //            VAR_VALUE(new_tab) = VAR_MINVALUE(new_tab);
//  151 //        }
//  152 //        break;
//  153 //
//  154 //    case VAR_SUB_HOLD:
//  155 //        if( ( VAR_VALUE(new_tab) - VAR_MINVALUE(new_tab)) > VAR_VALUE_HOLE_OFFSET  )
//  156 //        {
//  157 //            VAR_VALUE(new_tab) -= VAR_VALUE_HOLE_OFFSET;
//  158 //        }
//  159 //        else
//  160 //        {
//  161 //            VAR_VALUE(new_tab) = VAR_MAXVALUE(new_tab) ;//��Сֵ��һΪ���ֵ
//  162 //        }
//  163 //        break;
//  164 //
//  165 //    default:                        //��Чѡ�񣬲���Ҫ�л�
//  166 //        break;
//  167 //    }
//  168 //
//  169 //    var_display(new_tab);
//  170 //}
//  171 //
//  172 ////�Ա�������ѡ��
//  173 //void var_select(ui_var_event_e  ctrl)
//  174 //{
//  175 //    ASSERT(new_tab < VAR_MAX);
//  176 //
//  177 //    uint8 old_tab = new_tab;       //�ȱ��ݵ�ǰ�������
//  178 //
//  179 //    //�л�����һ������
//  180 //    switch(ctrl)
//  181 //    {
//  182 //    case VAR_NEXT:                      //��һ��
//  183 //        new_tab++;
//  184 //        if(new_tab >= (VAR_MAX) )
//  185 //        {
//  186 //            new_tab = 0;               //��ͷ��ʼ
//  187 //        }
//  188 //        break;
//  189 //
//  190 //    case VAR_PREV:                      //��һ��
//  191 //        new_tab--;
//  192 //        if(new_tab >= (VAR_MAX) )
//  193 //        {
//  194 //            new_tab = VAR_MAX - 1;     //��β��ʼ
//  195 //        }
//  196 //        break;
//  197 //
//  198 //    case VAR_NEXT_HOLD:                 //����
//  199 //        new_tab += VAR_SELECT_HOLD_OFFSET;
//  200 //        if(new_tab >= (VAR_MAX) )
//  201 //        {
//  202 //            new_tab = 0;               //��ͷ��ʼ
//  203 //        }
//  204 //        break;
//  205 //
//  206 //    case VAR_PREV_HOLD:                 //����
//  207 //        new_tab -= VAR_SELECT_HOLD_OFFSET;
//  208 //        if(new_tab >= (VAR_MAX) )
//  209 //        {
//  210 //            new_tab = VAR_MAX - 1;     //��β��ʼ
//  211 //        }
//  212 //        break;
//  213 //
//  214 //    default:                        //��Чѡ�񣬲���Ҫ�л�
//  215 //        return;
//  216 //    }
//  217 //
//  218 //    var_display(old_tab);               //������һ������
//  219 //
//  220 //    var_display(new_tab);              //����ǰ������
//  221 //
//  222 //}
//  223 //
//  224 //
//  225 ////ȷ�ϵ�ǰѡ���
//  226 //void var_ok()
//  227 //{
//  228 //    ASSERT(new_tab < VAR_MAX);
//  229 //
//  230 //    //�Ƚ��Ƿ��иı�ֵ
//  231 //    if(VAR_VALUE(new_tab) != VAR_OLDVALUE(new_tab))   //ֵ�ı��ˣ�����Ҫ����
//  232 //    {
//  233 //        var_syn(new_tab);          //ͬ���µ�ֵ
//  234 //    }
//  235 //
//  236 //    var_display(new_tab);
//  237 //}
//  238 //
//  239 ////ȡ����ǰѡ���ֵ  OK
//  240 //void val_cancel()
//  241 //{
//  242 //    ASSERT(new_tab < VAR_MAX);
//  243 //
//  244 //    //ֱ�ӻ�ԭ��ǰֵ
//  245 //    VAR_VALUE(new_tab) = VAR_OLDVALUE(new_tab);
//  246 //
//  247 //    var_display(new_tab);
//  248 //}
//  249 //
//  250 //
//  251 //
//  252 ////��ʾָ����ֵ��tab Ϊ VAR_MAX ʱ��ʾȫ����ʾ��С������ʾ��Ӧ��
//  253 //
//  254 //void var_display(uint8 tab)
//  255 //{
//  256 //#if UI_VAR_USE_LCD
//  257 //
//  258 //    //���屳����ʱ
//  259 //#define SELECT_NO_CHANGE_BG         WHITE   //��ǰѡ�У�����û�иı�
//  260 //#define SELECT_CHANGE_BG            WHITE   //��ǰѡ�У����Ҹı���
//  261 //#define NO_SELECT_NO_CHANGE_BG      RED     //û��ѡ�У�����û�иı䣨��ͨ�ľ���������
//  262 //#define NO_SELECT_CHANGE_BG         RED     //û��ѡ�У����Ҹı���
//  263 //
//  264 //    //����������ɫ
//  265 //#define SELECT_NO_CHANGE            BLUE    //��ǰѡ�У�����û�иı�
//  266 //#define SELECT_CHANGE               GREEN   //��ǰѡ�У����Ҹı���
//  267 //#define NO_SELECT_NO_CHANGE         BLUE    //û��ѡ�У�����û�иı䣨��ͨ�ľ���������
//  268 //#define NO_SELECT_CHANGE            GREEN   //û��ѡ�У����Ҹı���
//  269 //
//  270 //    uint8  i = 0;
//  271 //    uint16 bkColor;
//  272 //    uint16 Color;
//  273 //
//  274 //    ASSERT((new_tab < VAR_MAX) && (tab <= VAR_MAX));
//  275 //
//  276 //    if(tab == VAR_MAX)      //��ʾȫ��
//  277 //    {
//  278 //        i = VAR_MAX - 1;    //ѭ���Ĵ���
//  279 //        tab = 0;
//  280 //    }
//  281 //
//  282 //    do
//  283 //    {
//  284 //        if(tab == new_tab)
//  285 //        {
//  286 //            //��ʾ��ǰ��ֵ���ж�ֵ�Ƿ�ı�
//  287 //            if(VAR_VALUE(tab) == VAR_OLDVALUE(tab)) //ֵû�ı䣬����Ҫ����
//  288 //            {
//  289 //                Color   =  SELECT_NO_CHANGE;
//  290 //                bkColor =  SELECT_NO_CHANGE_BG;
//  291 //            }
//  292 //            else
//  293 //            {
//  294 //                Color   =  SELECT_CHANGE;
//  295 //                bkColor =  SELECT_CHANGE_BG;
//  296 //            }
//  297 //        }
//  298 //        else
//  299 //        {
//  300 //            //��ʾ�ǵ�ǰ��ֵ
//  301 //            if(VAR_VALUE(tab) == VAR_OLDVALUE(tab)) //ֵû�ı䣬����Ҫ����
//  302 //            {
//  303 //                Color   =  NO_SELECT_NO_CHANGE;
//  304 //                bkColor =  NO_SELECT_NO_CHANGE_BG;
//  305 //
//  306 //            }
//  307 //            else
//  308 //            {
//  309 //                Color   =  NO_SELECT_CHANGE;
//  310 //                bkColor =  NO_SELECT_CHANGE_BG;
//  311 //            }
//  312 //        }
//  313 //
//  314 //        //��ʾ����
//  315 //        LCD_num_C(VAR_SITE(tab), VAR_VALUE(tab), Color, bkColor);
//  316 //
//  317 //        tab++;
//  318 //    }
//  319 //    while(i--);         //tab != VAR_MAX ��ʱ��ִ��һ�ξ�����
//  320 //#else
//  321 //    tab = tab;          //�������뾯��
//  322 //#endif
//  323 //}
//  324 //
//  325 //void save_var2buff(var_tab_e var_num, uint8 *sendbuf)
//  326 //{
//  327 //    uint32 temp;
//  328 //    get_var(var_num, &temp);
//  329 //    *((uint32 *)&sendbuf[COM_LEN]) = (uint32)var_num;
//  330 //    *((uint32 *)&sendbuf[COM_LEN + sizeof(uint32)]) = temp;
//  331 //}
//  332 //
//  333 ////ͬ��ָ����ֵ��tab Ϊ VAR_MAX ʱ��ʾȫ��ͬ����С����ͬ����Ӧ��
//  334 //uint8 var_syn(uint8 tab)
//  335 //{
//  336 //    ASSERT((new_tab < VAR_MAX) && (tab <= VAR_MAX));
//  337 //
//  338 //    uint8  i = 0;
//  339 //    uint8 tempbuff[DATA_PACKET];
//  340 //    uint32 oldvalue;
//  341 //
//  342 //    if(tab == VAR_MAX)
//  343 //    {
//  344 //        i = VAR_MAX - 1;
//  345 //        tab = 0;
//  346 //    }
//  347 //
//  348 //    do
//  349 //    {
//  350 //        oldvalue = VAR_OLDVALUE(tab);                   //���ݾɵ�ֵ
//  351 //
//  352 //        //��ֵ���Ƶ���Ӧ�ı���
//  353 //        save_var((var_tab_e)tab, VAR_VALUE(tab));
//  354 //
//  355 //        //�����µ�ֵ
//  356 //        save_var2buff((var_tab_e)tab, tempbuff);        //�ѱ���д�� tempbuff ��
//  357 //        nrf_msg_tx(COM_VAR, tempbuff);                //��������
//  358 //
//  359 //        while(nrf_tx_state() == NRF_TXING);             //�ȴ��������
//  360 //
//  361 //        if(NRF_TX_ERROR == nrf_tx_state())             //����ʧ��
//  362 //        {
//  363 //            VAR_OLDVALUE(tab) = oldvalue;               //��ԭ�ɵ�ֵ
//  364 //
//  365 //            //����ͬ��
//  366 //            return 0;
//  367 //        }
//  368 //        tab++;
//  369 //    }
//  370 //    while(i--);
//  371 //
//  372 //    return 1;
//  373 //}
//  374 //
//  375 //uint8    car_ctrl_get()
//  376 //{
//  377 //    return  car_ctrl;
//  378 //}
//  379 //
//  380 //
//  381 ////��״̬����
//  382 //uint8 car_ctrl_syn(CAR_CTRL_MODE_e mode)
//  383 //{
//  384 //    uint8 ret;
//  385 //    ASSERT(mode < CAR_CTRL_MAX);
//  386 //
//  387 //    VAR_VALUE(CAR_CTRL) =  mode;
//  388 //
//  389 //    ret =  var_syn(CAR_CTRL);
//  390 //
//  391 //    var_display(CAR_CTRL);
//  392 //
//  393 //    return ret;
//  394 //};
//  395 //
//  396 //
//  397 //#endif
// 
//
// 
//
//
//Errors: none
//Warnings: none
