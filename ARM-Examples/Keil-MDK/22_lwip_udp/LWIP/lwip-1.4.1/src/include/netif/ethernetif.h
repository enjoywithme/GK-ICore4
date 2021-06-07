/*
 * FILE                : ethernetif.h
 * DESCRIPTION         : This file is for led.c
 * Author              : zh.
 * Copyright           : 
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 06/13/2017
 *
 * create.
 * --------------------
 */
#ifndef __ETHERNETIF_H__
#define __ETHERNETIF_H__

//----------------------- Include files ------------------------//
#include "lwip/err.h"
#include "lwip/netif.h"
 
//--------------------------- Define ---------------------------// 
//Íø¿¨µÄÃû×Ö
#define IFNAME0 'e'
#define IFNAME1 'n'
 
//-------------------------- Typedef----------------------------//
err_t ethernetif_init(struct netif *netif);
err_t ethernetif_input(struct netif *netif);

#endif
