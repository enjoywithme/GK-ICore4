/*
 * FILE                : ethernetif.c
 * DESCRIPTION         : This file is led driver.
 * Author              : liu.
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
//--------------------------- Include ---------------------------//
#include "netif/ethernetif.h" 
#include "lan8720.h"  
#include "lwip_comm.h" 
#include "netif/etharp.h" 

#include <string.h>  

//--------------------------- Function --------------------------//
/*
 * Name                : low_level_init
 * Description         : ---
 * Author              : liu.
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 06/13/2017
 * 
 * create.
 * --------------------
 */
static err_t low_level_init(struct netif *netif)
{
	netif->hwaddr_len = ETHARP_HWADDR_LEN; //����MAC��ַ����,Ϊ6���ֽ�
	//��ʼ��MAC��ַ,����ʲô��ַ���û��Լ�����,���ǲ����������������豸MAC��ַ�ظ�
	netif->hwaddr[0]=lan8720.mac[0]; 
	netif->hwaddr[1]=lan8720.mac[1]; 
	netif->hwaddr[2]=lan8720.mac[2];
	netif->hwaddr[3]=lan8720.mac[3];   
	netif->hwaddr[4]=lan8720.mac[4];
	netif->hwaddr[5]=lan8720.mac[5];
	netif->mtu=1460; //����������䵥Ԫ,�����������㲥��ARP����

	netif->flags = NETIF_FLAG_BROADCAST|NETIF_FLAG_ETHARP|NETIF_FLAG_LINK_UP;
	
    HAL_ETH_DMATxDescListInit(&heth,DMATxDscrTab,Tx_Buff,ETH_TXBUFNB);//��ʼ������������
    HAL_ETH_DMARxDescListInit(&heth,DMARxDscrTab,Rx_Buff,ETH_RXBUFNB);//��ʼ������������
	HAL_ETH_Start(&heth); //����MAC��DMA				
	return ERR_OK;
} 
/*
 * Name                : low_level_output
 * Description         : ---
 * Author              : liu.
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 06/13/2017
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

    //��pbuf�п���Ҫ���͵�����
    for(q=p;q!=NULL;q=q->next)
    {
        //�жϴ˷����������Ƿ���Ч�����жϴ˷����������Ƿ����̫��DMA����
        if((DmaTxDesc->Status&ETH_DMATXDESC_OWN)!=(uint32_t)RESET)
        {
            errval=ERR_USE;
            goto error;             //������������Ч��������
        }
        byteslefttocopy=q->len;     //Ҫ���͵����ݳ���
        payloadoffset=0;
   
        //��pbuf��Ҫ���͵�����д�뵽��̫�������������У���ʱ������Ҫ���͵����ݿ��ܴ���һ����̫��
        //��������Tx Buffer�����������Ҫ�ֶ�ν����ݿ��������������������
        while((byteslefttocopy+bufferoffset)>ETH_TX_BUF_SIZE )
        {
            //�����ݿ�������̫��������������Tx Buffer��
            memcpy((uint8_t*)((uint8_t*)buffer+bufferoffset),(uint8_t*)((uint8_t*)q->payload+payloadoffset),(ETH_TX_BUF_SIZE-bufferoffset));
            //DmaTxDscָ����һ������������
            DmaTxDesc=(ETH_DMADescTypeDef *)(DmaTxDesc->Buffer2NextDescAddr);
            //����µķ����������Ƿ���Ч
            if((DmaTxDesc->Status&ETH_DMATXDESC_OWN)!=(uint32_t)RESET)
            {
                errval = ERR_USE;
                goto error;     //������������Ч��������
            }
            buffer=(uint8_t *)(DmaTxDesc->Buffer1Addr);   //����buffer��ַ��ָ���µķ�����������Tx Buffer
            byteslefttocopy=byteslefttocopy-(ETH_TX_BUF_SIZE-bufferoffset);
            payloadoffset=payloadoffset+(ETH_TX_BUF_SIZE-bufferoffset);
            framelength=framelength+(ETH_TX_BUF_SIZE-bufferoffset);
            bufferoffset=0;
        }
        //����ʣ�������
        memcpy( (uint8_t*)((uint8_t*)buffer+bufferoffset),(uint8_t*)((uint8_t*)q->payload+payloadoffset),byteslefttocopy );
        bufferoffset=bufferoffset+byteslefttocopy;
        framelength=framelength+byteslefttocopy;
    }
    //������Ҫ���͵����ݶ��Ž�������������Tx Buffer�Ժ�Ϳɷ��ʹ�֡��
    HAL_ETH_TransmitFrame(&heth,framelength);
    errval = ERR_OK;
error:    
    //���ͻ������������磬һ�����ͻ�������������TxDMA��������״̬
    if((heth.Instance->DMASR&ETH_DMASR_TUS)!=(uint32_t)RESET)
    {
        //��������־
        heth.Instance->DMASR = ETH_DMASR_TUS;
        //������֡�г�����������ʱ��TxDMA�������ʱ����Ҫ��DMATPDR�Ĵ���
        //���д��һ��ֵ�����份�ѣ��˴�����д0
        heth.Instance->DMATPDR=0;
    }
    return errval;
}  
/*
 * Name                : low_level_input
 * Description         : ---
 * Author              : liu.
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 06/13/2017
 * 
 * create.
 * --------------------
 */
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
  
    if(HAL_ETH_GetReceivedFrame(&heth)!=HAL_OK)  //�ж��Ƿ���յ�����
    return NULL;
    
    len=heth.RxFrameInfos.length;                //��ȡ���յ�����̫��֡����
    buffer=(uint8_t *)heth.RxFrameInfos.buffer;  //��ȡ���յ�����̫��֡������buffer
  
    if(len>0) p=pbuf_alloc(PBUF_RAW,len,PBUF_POOL);     //����pbuf
    if(p!=NULL)                                        //pbuf����ɹ�
    {
        dmarxdesc=heth.RxFrameInfos.FSRxDesc;    //��ȡ���������������еĵ�һ��������
        bufferoffset = 0;
        for(q=p;q!=NULL;q=q->next)                      
        {
            byteslefttocopy=q->len;                  
            payloadoffset=0;
            //��������������Rx Buffer�����ݿ�����pbuf��
            while((byteslefttocopy+bufferoffset)>ETH_RX_BUF_SIZE )
            {
                //�����ݿ�����pbuf��
                memcpy((uint8_t*)((uint8_t*)q->payload+payloadoffset),(uint8_t*)((uint8_t*)buffer+bufferoffset),(ETH_RX_BUF_SIZE-bufferoffset));
                 //dmarxdesc����һ������������
                dmarxdesc=(ETH_DMADescTypeDef *)(dmarxdesc->Buffer2NextDescAddr);
                //����buffer��ַ��ָ���µĽ�����������Rx Buffer
                buffer=(uint8_t *)(dmarxdesc->Buffer1Addr);
 
                byteslefttocopy=byteslefttocopy-(ETH_RX_BUF_SIZE-bufferoffset);
                payloadoffset=payloadoffset+(ETH_RX_BUF_SIZE-bufferoffset);
                bufferoffset=0;
            }
            //����ʣ�������
            memcpy((uint8_t*)((uint8_t*)q->payload+payloadoffset),(uint8_t*)((uint8_t*)buffer+bufferoffset),byteslefttocopy);
            bufferoffset=bufferoffset+byteslefttocopy;
        }
    }    
    //�ͷ�DMA������
    dmarxdesc=heth.RxFrameInfos.FSRxDesc;
    for(i=0;i<heth.RxFrameInfos.SegCount; i++)
    {  
        dmarxdesc->Status|=ETH_DMARXDESC_OWN;       //�����������DMA����
        dmarxdesc=(ETH_DMADescTypeDef *)(dmarxdesc->Buffer2NextDescAddr);
    }
    heth.RxFrameInfos.SegCount =0;           //����μ�����
    if((heth.Instance->DMASR&ETH_DMASR_RBUS)!=(uint32_t)RESET)  //���ջ�����������
    {
        //������ջ����������ñ�־
        heth.Instance->DMASR = ETH_DMASR_RBUS;
        //�����ջ����������õ�ʱ��RxDMA���ȥ����״̬��ͨ����DMARPDRд������һ��ֵ������Rx DMA
        heth.Instance->DMARPDR=0;
    }
    return p;
}
/*
 * Name                : ethernetif_input
 * Description         : ---
 * Author              : liu.
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 06/13/2017
 * 
 * create.
 * --------------------
 */
err_t ethernetif_input(struct netif *netif)
{
	err_t err;
	struct pbuf *p;
	p=low_level_input(netif);   //����low_level_input������������
	if(p==NULL) return ERR_MEM;
	err=netif->input(p, netif); //����netif�ṹ���е�input�ֶ�(һ������)���������ݰ�
	if(err!=ERR_OK)
	{
		LWIP_DEBUGF(NETIF_DEBUG,("ethernetif_input: IP input error\n"));
		pbuf_free(p);
		p = NULL;
	} 
	return err;
} 
/*
 * Name                : ethernetif_init
 * Description         : ---
 * Author              : liu.
 *
 * History
 * --------------------
 * Rev                 : 0.00
 * Date                : 06/13/2017
 * 
 * create.
 * --------------------
 */
err_t ethernetif_init(struct netif *netif)
{
	LWIP_ASSERT("netif!=NULL",(netif!=NULL));
#if LWIP_NETIF_HOSTNAME			//LWIP_NETIF_HOSTNAME 
	netif->hostname="lwip";  	//��ʼ������
#endif 
	netif->name[0]=IFNAME0; 	//��ʼ������netif��name�ֶ�
	netif->name[1]=IFNAME1; 	//���ļ��ⶨ�����ﲻ�ù��ľ���ֵ
	netif->output=etharp_output;//IP�㷢�����ݰ�����
	netif->linkoutput=low_level_output;//ARPģ�鷢�����ݰ�����
	low_level_init(netif); 		//�ײ�Ӳ����ʼ������
	return ERR_OK;
}
