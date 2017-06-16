/*
 * File:        uart.c
 * Purpose:     Provide common UART routines for serial IO
 *
 * Notes:       
 *              
 */

 /*************************************************************************
*                             ����DIY������
*******************************************************************/

#include "common.h"
#include "uart.h"

/********************************************************************/
/*
 * Initialize the UART for 8N1 operation, interrupts disabled, and
 * no hardware flow-control
 *
 * NOTE: Since the UARTs are pinned out in multiple locations on most
 *       Kinetis devices, this driver does not enable UART pin functions.
 *       The desired pins should be enabled before calling this init function.
 *
 * Parameters:
 *  uartch      UART channel to initializeģ��ţ�UART0_BASE_PTR~UART5_BASE_PTR��
 *  sysclk      UART module Clock in kHz(used to calculate baud)core_clk_khz��sysinit.c��
 *  baud        UART baud rate�����ʣ���9600��19200��56000��115200��
 */
void uart_init (UART_MemMapPtr uartch, int sysclk, int baud)
{
    register uint16 sbr, brfa;
    uint8 temp;
    
	/* Enable the clock to the selected UART */    
    if(uartch == UART0_BASE_PTR)
		SIM_SCGC4 |= SIM_SCGC4_UART0_MASK;
    else
    	if (uartch == UART1_BASE_PTR)
			SIM_SCGC4 |= SIM_SCGC4_UART1_MASK;
    	else
    		if (uartch == UART2_BASE_PTR)
    			SIM_SCGC4 |= SIM_SCGC4_UART2_MASK;
    		else
    			if(uartch == UART3_BASE_PTR)
    				SIM_SCGC4 |= SIM_SCGC4_UART3_MASK;
    			else
    				if(uartch == UART4_BASE_PTR)
    					SIM_SCGC1 |= SIM_SCGC1_UART4_MASK;
    				else
    					SIM_SCGC1 |= SIM_SCGC1_UART5_MASK;
                                
    /* Make sure that the transmitter and receiver are disabled while we 
     * change settings.
     */
    UART_C2_REG(uartch) &= ~(UART_C2_TE_MASK
				| UART_C2_RE_MASK );

    /* Configure the UART for 8-bit mode, no parity */
    UART_C1_REG(uartch) = 0;	/* We need all default settings, so entire register is cleared */
    
    /* Calculate baud settings */
    sbr = (uint16)((sysclk*1000)/(baud * 16));
        
    /* Save off the current value of the UARTx_BDH except for the SBR field */
    temp = UART_BDH_REG(uartch) & ~(UART_BDH_SBR(0x1F));
    
    UART_BDH_REG(uartch) = temp |  UART_BDH_SBR(((sbr & 0x1F00) >> 8));
    UART_BDL_REG(uartch) = (uint8)(sbr & UART_BDL_SBR_MASK);
    
    /* Determine if a fractional divider is needed to get closer to the baud rate */
    brfa = (((sysclk*32000)/(baud * 16)) - (sbr * 32));
    
    /* Save off the current value of the UARTx_C4 register except for the BRFA field */
    temp = UART_C4_REG(uartch) & ~(UART_C4_BRFA(0x1F));
    
    UART_C4_REG(uartch) = temp |  UART_C4_BRFA(brfa);    

    /* Enable receiver and transmitter */
	UART_C2_REG(uartch) |= (UART_C2_TE_MASK
				| UART_C2_RE_MASK );
}

/*************************************************************************
*                             ����DIY������
*
*  �������ƣ�uart_query
*  ����˵������ѯ�Ƿ���ܵ�һ���ֽ�
*  ����˵����UART_MemMapPtr       ģ��ţ�UART0_BASE_PTR~UART5_BASE_PTR��
*  �������أ�1           ���յ�һ���ֽ���
*            0           û�н��յ�
*  �޸�ʱ�䣺2015-5-12
*  ��    ע���ο�Ұ��
*************************************************************************/
int uart_query (UART_MemMapPtr uratn)
{
    return (UART_S1_REG(uratn) & UART_S1_RDRF_MASK);
}
/********************************************************************/
/*
 * Wait for a character to be received on the specified UART
 *����ʱ��ȴ����ڽ���һ���ֽ�
 * Parameters:
 *  channel      UART channel to read from
 *
 * Return Values:
 *  the received character
 */
char uart_getchar (UART_MemMapPtr channel)
{
    /* Wait until character has been received */
    while (!(UART_S1_REG(channel) & UART_S1_RDRF_MASK));
    
    /* Return the 8-bit data from the receiver */
    return UART_D_REG(channel);
}

/*************************************************************************
*                             ����DIY������
*
*  �������ƣ�uart_pendchar
*  ����˵��������ʱ��ȴ����ڽ���һ���ֽ�
*  ����˵����UART_MemMapPtr       ģ��ţ�UART0_BASE_PTR~UART5_BASE_PTR��
*  �������أ����յ����ֽ�
*  �޸�ʱ�䣺2015-5-12
*  ��    ע��
*************************************************************************/
char uart_pendchar (UART_MemMapPtr uratn, char *ch)
{
    u32 i = 0;

    while(++i < 0xffffff)                                         //ʱ������
    {
        if(UART_S1_REG(uratn) & UART_S1_RDRF_MASK)         //��ѯ�Ƿ���ܵ�����
        {
            *ch  =   UART_D_REG(uratn);                    //���ܵ�8λ������
            return  1;                                            //���� 1 ��ʾ���ճɹ�
        }
    }

    *ch = 0;                                                     //���ղ�����Ӧ������˽�����
    return 0;                                                    //����0��ʾ����ʧ��
}
/*************************************************************************
*                             ����DIY������
*
*  �������ƣ�uart_pendstr
*  ����˵��������ʱ��ȴ����ڽ����ַ���
*  ����˵����UART_MemMapPtr       ģ��ţ�UART0_BASE_PTR~UART5_BASE_PTR��
*  �������أ����յ����ֽ�
*  �޸�ʱ�䣺2015-5-12
*  ��    ע���ο�Ұ��
*************************************************************************/
char uart_pendstr (UART_MemMapPtr uratn, char *str)
{
    u32 i = 0;
    while(uart_pendchar(uratn, str + i++));

    return (i <= 1 ? 0 : 1);
}



/********************************************************************/
/*************************************************************************
*                             ����DIY������
*
*  �������ƣ�uart_putchar
*  ����˵�������ڷ���һ���ֽ�
*  ����˵����UART_MemMapPtr       ģ��ţ�UART0_BASE_PTR~UART5_BASE_PTR��
*  �������أ���
*  �޸�ʱ�䣺2015-5-11
*  ��    ע��
*************************************************************************/
void uart_putchar (UART_MemMapPtr channel, char ch)
{
    /* Wait until space is available in the FIFO */
    while(!(UART_S1_REG(channel) & UART_S1_TDRE_MASK));
    
    /* Send the character */
    UART_D_REG(channel) = (uint8)ch;
 }
/********************************************************************/
/*
 * Check to see if a character has been received
 *
 * Parameters:
 *  channel      UART channel to check for a character
 *
 * Return values:
 *  0       No character received
 *  1       Character has been received
 */
int uart_getchar_present (UART_MemMapPtr channel)
{
    return (UART_S1_REG(channel) & UART_S1_RDRF_MASK);
}
/********************************************************************/
    /*************************************************************************
*                             ����DIY������
*
*  �������ƣ�uart_sendN
*  ����˵�������� ����ָ��len���ֽڳ����ַ��� ������ NULL Ҳ�ᷢ�ͣ�
*  ����˵����UART_MemMapPtr       ģ��ţ�UART0_BASE_PTR~UART5_BASE_PTR��
*            buff        ���ͻ�����
*            len         ���ͳ���
*  �������أ���
*  �޸�ʱ�䣺2015-5-11
*  ��    ע���ο�Ұ��
*************************************************************************/
void uart_sendN (UART_MemMapPtr uratn, uint8 *buff, uint16 len)
{
    int i;
    for(i = 0; i < len; i++)
    {
        uart_putchar(uratn, buff[i]);
    }
}
/*************************************************************************
*                             ����DIY������
*
*  �������ƣ�uart_sendStr
*  ����˵�������з����ַ���
*  ����˵����UART_MemMapPtr       ģ��ţ�UART0_BASE_PTR~UART5_BASE_PTR��
*            str                  �ַ���
*  �������أ���
*  �޸�ʱ�䣺2015-5-11
*  ��    ע���ο�Ұ��
*************************************************************************/
void uart_sendStr (UART_MemMapPtr uratn, uint8 *str)
{
    while(*str)
    {
        uart_putchar(uratn, *str++);
    }
}
