 /*
 * FILE								: ethernetif.h
 * Description			  : This file is iCore4 driver.
 * Author					   	: Jx.Liu
 * Copyright			  	:
 *	
 * History
 * -------------------
 * Rev							  : 0.00
 * Date							  : 2017-8-13
 *
 * create.
 * -------------------
 * Description			  : 
 * 
 */
#ifndef __ETHERNETIF_H__
#define __ETHERNETIF_H__
//----------------------- Include files ------------------------//
#include "lwip/err.h"
#include "lwip/netif.h"

//--------------------------- Define ---------------------------//
#define IFNAME0 'e'
#define IFNAME1 'n'
 
//-------------------------- Typedef----------------------------//
err_t ethernetif_init(struct netif *netif);
err_t ethernetif_input(struct netif *netif);

#endif