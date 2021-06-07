 /*
 * FILE								: netio.c
 * Description			  : This file is GM4108 driver.
 * Author					   	: Jx.Liu
 * Copyright			  	:
 *	
 * History
 * -------------------
 * Rev							  : 0.00
 * Date							  : 2016-8-13
 *
 * create.
 * -------------------
 * Description			  : 
 * 
 */
#ifndef _NETIO_H
#define _NETIO_H

//------------------------Include files-------------------------//
#include "sys.h"

//--------------------------- Define ---------------------------//

//------------------------- Data struct ------------------------//
struct netio_state {
  u32_t  state;
  u32_t  cmd;
  u32_t  data_len;
  u32_t  cntr;
  u8_t * buf_ptr;
  u32_t  buf_pos;
  u32_t  first_byte;
  u32_t  time_stamp;
};

typedef struct {
	INT8U (* initialize)(void);
}NETIO_T;

//----------------------- Extern function ----------------------//
static INT8U netio_server_init(void);
static void netio_init(void *arg);

//--------------------------- Extern ---------------------------//
extern NETIO_T netio;

#endif
