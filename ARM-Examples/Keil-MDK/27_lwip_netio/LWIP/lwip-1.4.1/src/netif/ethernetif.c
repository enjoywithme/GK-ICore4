 /*
 * FILE								: ethernetif.c
 * Description			  : This file is iCore4 driver.
 * Author					   	: Jx.Liu
 * Copyright			  	:
 *	
 * History
 * -------------------
 * Rev							  : 0.00
 * Date							  : 2017-8-18
 *
 * create.
 * -------------------
 * Description			  : 
 * 
 */
//------------------------ Include files ------------------------//
#include "netif/ethernetif.h" 
#include "lan8720.h" 
#include "sys.h"  
#include "lwip_comm.h" 
#include "netif/etharp.h"  
#include "string.h"  

//------------------------ Function -----------------------//
/*
 * Name                : low_level_init
 * Description         : ---
 * Author              : liu
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 08/18/2017
 * 
 * create.
 * --------------------
 */
static err_t low_level_init(struct netif *netif)
{
	netif->hwaddr_len = ETHARP_HWADDR_LEN; //设置MAC地址长度,为6个字节
	//初始化MAC地址,设置什么地址由用户自己设置,但是不能与网络中其他设备MAC地址重复
	netif->hwaddr[0]=lan8720.mac[0]; 
	netif->hwaddr[1]=lan8720.mac[1]; 
	netif->hwaddr[2]=lan8720.mac[2];
	netif->hwaddr[3]=lan8720.mac[3];   
	netif->hwaddr[4]=lan8720.mac[4];
	netif->hwaddr[5]=lan8720.mac[5];
	netif->mtu=1460; //最大允许传输单元,允许该网卡广播和ARP功能

	netif->flags = NETIF_FLAG_BROADCAST|NETIF_FLAG_ETHARP|NETIF_FLAG_LINK_UP;
	
    HAL_ETH_DMATxDescListInit(&heth,DMATxDscrTab,Tx_Buff,ETH_TXBUFNB);//初始化发送描述符
    HAL_ETH_DMARxDescListInit(&heth,DMARxDscrTab,Rx_Buff,ETH_RXBUFNB);//初始化接收描述符
	HAL_ETH_Start(&heth); //开启MAC和DMA				
	return ERR_OK;
} 
/*
 * Name                : low_level_init
 * Description         : ---
 * Author              : liu
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 08/18/2017
 * 
 * create.
 * --------------------
 */
static err_t low_level_output(struct netif *netif, struct pbuf *p)
{
    err_t errval;
    struct pbuf *q;
    uint8_t *buffer=(uint8_t *)(heth.TxDesc->Buffer1Addr);
    __IO ETH_DMADescTypeDef *DmaTxDesc;
    uint32_t framelength = 0;
    uint32_t bufferoffset = 0;
    uint32_t byteslefttocopy = 0;
    uint32_t payloadoffset = 0;

    DmaTxDesc = heth.TxDesc;
    bufferoffset = 0;

  	INTX_DISABLE();

    //从pbuf中拷贝要发送的数据
    for(q=p;q!=NULL;q=q->next)
    {
        //判断此发送描述符是否有效，即判断此发送描述符是否归以太网DMA所有
        if((DmaTxDesc->Status&ETH_DMATXDESC_OWN)!=(uint32_t)RESET)
        {
            errval=ERR_USE;
            goto error;             //发送描述符无效，不可用
        }
        byteslefttocopy=q->len;     //要发送的数据长度
        payloadoffset=0;
   
        //将pbuf中要发送的数据写入到以太网发送描述符中，有时候我们要发送的数据可能大于一个以太网
        //描述符的Tx Buffer，因此我们需要分多次将数据拷贝到多个发送描述符中
        while((byteslefttocopy+bufferoffset)>ETH_TX_BUF_SIZE )
        {
            //将数据拷贝到以太网发送描述符的Tx Buffer中
            memcpy((uint8_t*)((uint8_t*)buffer+bufferoffset),(uint8_t*)((uint8_t*)q->payload+payloadoffset),(ETH_TX_BUF_SIZE-bufferoffset));
            //DmaTxDsc指向下一个发送描述符
            DmaTxDesc=(ETH_DMADescTypeDef *)(DmaTxDesc->Buffer2NextDescAddr);
            //检查新的发送描述符是否有效
            if((DmaTxDesc->Status&ETH_DMATXDESC_OWN)!=(uint32_t)RESET)
            {
                errval = ERR_USE;
                goto error;     //发送描述符无效，不可用
            }
            buffer=(uint8_t *)(DmaTxDesc->Buffer1Addr);   //更新buffer地址，指向新的发送描述符的Tx Buffer
            byteslefttocopy=byteslefttocopy-(ETH_TX_BUF_SIZE-bufferoffset);
            payloadoffset=payloadoffset+(ETH_TX_BUF_SIZE-bufferoffset);
            framelength=framelength+(ETH_TX_BUF_SIZE-bufferoffset);
            bufferoffset=0;
        }
        //拷贝剩余的数据
        memcpy( (uint8_t*)((uint8_t*)buffer+bufferoffset),(uint8_t*)((uint8_t*)q->payload+payloadoffset),byteslefttocopy );
        bufferoffset=bufferoffset+byteslefttocopy;
        framelength=framelength+byteslefttocopy;
    }
    //当所有要发送的数据都放进发送描述符的Tx Buffer以后就可发送此帧了
    HAL_ETH_TransmitFrame(&heth,framelength);
    errval = ERR_OK;
error:    
    //发送缓冲区发生下溢，一旦发送缓冲区发生下溢TxDMA会进入挂起状态
    if((heth.Instance->DMASR&ETH_DMASR_TUS)!=(uint32_t)RESET)
    {
        //清除下溢标志
        heth.Instance->DMASR = ETH_DMASR_TUS;
        //当发送帧中出现下溢错误的时候TxDMA会挂起，这时候需要向DMATPDR寄存器
        //随便写入一个值来将其唤醒，此处我们写0
        heth.Instance->DMATPDR=0;
    }
		INTX_ENABLE();
    return errval;
}  
///用于接收数据包的最底层函数
//neitif:网卡结构体指针
//返回值:pbuf数据结构体指针
static struct pbuf * low_level_input(struct netif *netif)
{  
	struct pbuf *p = NULL;
    struct pbuf *q;
    uint16_t len;
    uint8_t *buffer;
    __IO ETH_DMADescTypeDef *dmarxdesc;
    uint32_t bufferoffset=0;
    uint32_t payloadoffset=0;
    uint32_t byteslefttocopy=0;
    uint32_t i=0;
  
    if(HAL_ETH_GetReceivedFrame(&heth)!=HAL_OK)  //判断是否接收到数据
    return NULL;
    
		INTX_DISABLE();
    len=heth.RxFrameInfos.length;                //获取接收到的以太网帧长度
    buffer=(uint8_t *)heth.RxFrameInfos.buffer;  //获取接收到的以太网帧的数据buffer
  
    if(len>0) p=pbuf_alloc(PBUF_RAW,len,PBUF_POOL);     //申请pbuf
    if(p!=NULL)                                        //pbuf申请成功
    {
        dmarxdesc=heth.RxFrameInfos.FSRxDesc;    //获取接收描述符链表中的第一个描述符
        bufferoffset = 0;
        for(q=p;q!=NULL;q=q->next)                      
        {
            byteslefttocopy=q->len;                  
            payloadoffset=0;
            //将接收描述符中Rx Buffer的数据拷贝到pbuf中
            while((byteslefttocopy+bufferoffset)>ETH_RX_BUF_SIZE )
            {
                //将数据拷贝到pbuf中
                memcpy((uint8_t*)((uint8_t*)q->payload+payloadoffset),(uint8_t*)((uint8_t*)buffer+bufferoffset),(ETH_RX_BUF_SIZE-bufferoffset));
                 //dmarxdesc向下一个接收描述符
                dmarxdesc=(ETH_DMADescTypeDef *)(dmarxdesc->Buffer2NextDescAddr);
                //更新buffer地址，指向新的接收描述符的Rx Buffer
                buffer=(uint8_t *)(dmarxdesc->Buffer1Addr);
 
                byteslefttocopy=byteslefttocopy-(ETH_RX_BUF_SIZE-bufferoffset);
                payloadoffset=payloadoffset+(ETH_RX_BUF_SIZE-bufferoffset);
                bufferoffset=0;
            }
            //拷贝剩余的数据
            memcpy((uint8_t*)((uint8_t*)q->payload+payloadoffset),(uint8_t*)((uint8_t*)buffer+bufferoffset),byteslefttocopy);
            bufferoffset=bufferoffset+byteslefttocopy;
        }
    }    
    //释放DMA描述符
    dmarxdesc=heth.RxFrameInfos.FSRxDesc;
    for(i=0;i<heth.RxFrameInfos.SegCount; i++)
    {  
        dmarxdesc->Status|=ETH_DMARXDESC_OWN;       //标记描述符归DMA所有
        dmarxdesc=(ETH_DMADescTypeDef *)(dmarxdesc->Buffer2NextDescAddr);
    }
    heth.RxFrameInfos.SegCount =0;           //清除段计数器
    if((heth.Instance->DMASR&ETH_DMASR_RBUS)!=(uint32_t)RESET)  //接收缓冲区不可用
    {
        //清除接收缓冲区不可用标志
        heth.Instance->DMASR = ETH_DMASR_RBUS;
        //当接收缓冲区不可用的时候RxDMA会进去挂起状态，通过向DMARPDR写入任意一个值来唤醒Rx DMA
        heth.Instance->DMARPDR=0;
    }
		INTX_ENABLE();
    return p;
}
/*
 * Name                : low_level_init
 * Description         : ---
 * Author              : liu
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 08/18/2017
 * 
 * create.
 * --------------------
 */
err_t ethernetif_input(struct netif *netif)
{
	err_t err;
	struct pbuf *p;
	p=low_level_input(netif);   //调用low_level_input函数接收数据
	if(p==NULL) return ERR_MEM;
	err=netif->input(p, netif); //调用netif结构体中的input字段(一个函数)来处理数据包
	if(err!=ERR_OK)
	{
		LWIP_DEBUGF(NETIF_DEBUG,("ethernetif_input: IP input error\n"));
		pbuf_free(p);
		p = NULL;
	} 
	return err;
} 
/*
 * Name                : low_level_init
 * Description         : ---
 * Author              : liu
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 08/18/2017
 * 
 * create.
 * --------------------
 */
err_t ethernetif_init(struct netif *netif)
{
	LWIP_ASSERT("netif!=NULL",(netif!=NULL));
#if LWIP_NETIF_HOSTNAME			//LWIP_NETIF_HOSTNAME 
	netif->hostname="lwip";  	//初始化名称
#endif 
	netif->name[0]=IFNAME0; 	//初始化变量netif的name字段
	netif->name[1]=IFNAME1; 	//在文件外定义这里不用关心具体值
	netif->output=etharp_output;//IP层发送数据包函数
	netif->linkoutput=low_level_output;//ARP模块发送数据包函数
	low_level_init(netif); 		//底层硬件初始化函数
	return ERR_OK;
}
