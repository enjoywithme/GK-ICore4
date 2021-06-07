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

#ifndef __UDP_DEMO_H
#define __UDP_DEMO_H

//------------------------ Include files ------------------------//
#include "sys.h"
#include "includes.h"

//--------------------------- Define ---------------------------//

//------------------------- Data struct ------------------------//
typedef struct {
	INT8U (* initialize)(void);
}UDP_T;

//--------------------------- Extern ---------------------------//
extern UDP_T udp;

#endif
