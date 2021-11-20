#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "frc.h"

HI_S32 FrcCreate(HI_HANDLE *phFrc)
{
    HI_U32  Id;
    FRC_S   *pFrc = HI_NULL;

    if (!phFrc)
    {
		HI_ERR_FRC("para pFrc is null\n");
		return HI_FAILURE;
 	}

    for (Id = 0; Id < FRC_MAX_NUM; Id++)
    {
        FRC_INST_LOCK(Id);
        if (g_Frc[Id].Frc == HI_NULL)
        {
            g_Frc[Id].Frc = &g_FrcCtx[Id];
            if (HI_NULL == g_Frc[Id].Frc)
            {
                FRC_INST_UNLOCK(Id);
                HI_ERR_FRC("Frc malloc fail\n");
                return HI_FAILURE;
            }

            memset(g_Frc[Id].Frc, 0, sizeof(FRC_S));

            FRC_INST_UNLOCK(Id);

            break;
        }
        FRC_INST_UNLOCK(Id);
    }

    if (Id >= FRC_MAX_NUM)
    {
        HI_ERR_FRC("frc inst is max\n");
        return HI_FAILURE;
    }

    FRC_INST_LOCK(Id);

    pFrc = g_Frc[Id].Frc;

    pFrc->hFrc = GET_FRC_HANDLE(Id);

    pFrc->CurID = 1;

    pFrc->InputCount = 0;

    *phFrc = pFrc->hFrc;
    
    FRC_INST_UNLOCK(Id);
    
	return HI_SUCCESS;
}

HI_S32 FrcDestroy(HI_HANDLE hFrc)
{
    FRC_S   *pFrc = HI_NULL;
    HI_U32  Id = GET_FRC_ID(hFrc);

    FRC_INST_LOCK_CHECK(hFrc, Id);
	
    memset(&g_FrcCtx[Id], 0, sizeof(FRC_S));
    g_Frc[Id].Frc = HI_NULL;

    FRC_INST_UNLOCK(Id);
    
    return HI_SUCCESS;
}

HI_S32 FrcReset(HI_HANDLE hFrc)
{
    FRC_S   *pFrc = HI_NULL;
    HI_U32  Id = GET_FRC_ID(hFrc);

    FRC_INST_LOCK_CHECK(hFrc, Id);

    pFrc->CurID = 1;
    pFrc->InputCount = 0;

    FRC_INST_UNLOCK(Id);
    
 	return HI_SUCCESS;
	
}

HI_S32 FrcCalculate(HI_HANDLE hFrc, HI_U32 InRate, HI_U32 OutRate, HI_U32 *NeedPlayCnt)
{
    HI_U32 	quot = 0;
    HI_U32 	remder = 0;
	HI_S32 	flag = 0;
	HI_U64 	tmp = 0;
	HI_U64 	remder_cyc = 0;
    HI_U32  CurID = 0;
    HI_U32  FrmState = 0; /* frame rate conversion state for progressive frame : <0-drop; ==0-natrual play; >0-repeat time */
    FRC_S   *pFrc = HI_NULL;
    HI_U32  Id = GET_FRC_ID(hFrc);

    /* InRate, OutRate must be !0 */
    if ((InRate == 0) || (OutRate == 0))
    {
        return HI_FAILURE;
    }
    
    FRC_INST_LOCK_CHECK(hFrc, Id);
	
	CurID = pFrc->CurID;
    
    if (InRate < OutRate)
	{
		quot = OutRate / InRate;
		remder = OutRate % InRate;
		remder_cyc = (HI_U64)(pFrc->InputCount % InRate + 1);
        
        flag = 0;
		if (remder == 0)
		{
			flag = 0;
		}
		else
		{
			tmp = (HI_U64)(((HI_U64)InRate * (HI_U64)CurID + remder/2) / remder);
			if (tmp == remder_cyc)
			{
				flag = 1;
				pFrc->CurID++;
				pFrc->CurID = (pFrc->CurID % remder == 0) ? remder : (pFrc->CurID % remder);	
			}
			else
			{
				flag = 0;
			}	
		}
		
		if (flag == 1)
		{
			FrmState = quot;
		}
		else
		{
			FrmState = quot - 1;
		}
	}
	else if (InRate > OutRate)
	{
		quot = InRate / OutRate;
		remder = InRate - OutRate;
		remder_cyc = (HI_U64)(pFrc->InputCount % InRate + 1);

		flag = 0;
		if (remder == 0)
		{
			flag = 0;
		}
		else
		{
			tmp = (HI_U64)(((HI_U64)InRate * (HI_U64)CurID + remder/2) / remder);
			if (tmp == remder_cyc)
			{
				flag = 1;
				pFrc->CurID++;
				pFrc->CurID = (pFrc->CurID % remder == 0) ? remder : (pFrc->CurID % remder);
			}
			else
			{
				flag = 0;
			}
		}
		
		if (flag == 1)
        {
            FrmState = -1;
        }
        else
        {
            FrmState = 0;
        }
	}
	else
	{
		FrmState = 0;
	}
	
	pFrc->InputCount++;
	
	*NeedPlayCnt = FrmState + 1;

    FRC_INST_UNLOCK(Id);
    
	return HI_SUCCESS;
}
