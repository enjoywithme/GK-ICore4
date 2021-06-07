 /*
 * FILE								: tcp_server_demo.c
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
#ifndef __TCP_SERVER_DEMO_H
#define __TCP_SERVER_DEMO_H

//------------------------Include files-------------------------//
#include "sys.h"
#include "includes.h"	   

//--------------------------- Define ---------------------------//

//--------------------------- struct----------------------------//
typedef struct {
	INT8U (* initialize)(void);
}TCP_T;

//--------------------------- Extern ---------------------------//
extern TCP_T tcp;

#endif
