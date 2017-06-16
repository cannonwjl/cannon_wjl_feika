/*
 * File:		uart.h
 * Purpose:     Provide common ColdFire UART routines for polled serial IO
 *
 * Notes:
 */

#ifndef __UART_H__
#define __UART_H__

/********************************************************************/

void uart_init (UART_MemMapPtr, int, int);
int uart_query (UART_MemMapPtr uratn);
char uart_getchar (UART_MemMapPtr);
void uart_putchar (UART_MemMapPtr, char);
char uart_pendchar (UART_MemMapPtr uratn, char *ch);
char uart_pendstr (UART_MemMapPtr uratn, char *str);
int uart_getchar_present (UART_MemMapPtr);
void uart_sendStr (UART_MemMapPtr, uint8 *);
void uart_sendN (UART_MemMapPtr, uint8 *, uint16);
/********************************************************************/

#endif /* __UART_H__ */
