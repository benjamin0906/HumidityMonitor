/* 
 * File:   main.c
 * Author: Benjamin
 *
 * Created on December 1, 2025, 9:06 AM
 */

#include "../PIC24FJ_OS/OS/Inc/Std_Types.h"
#include "../PIC24FJ_OS/OS/Inc/GPIO.h"
#include "../PIC24FJ_OS/OS/Inc/IC.h"
#include "../PIC24FJ_OS/OS/Inc//TIM.h"
#include "../PIC24FJ_OS/OS/Inc/OS_Ext.h"
#include "../PIC24FJ_OS/Config/config.h"
#include "../PIC24FJ_OS/OS/Inc/I2C.h"
#include "SHT_Driver.h"
#include "../PIC24FJ_OS/OS/Inc/PMD.h"
#include "SC.h"

void Task(void)
{
    /* Initialization */
    {
        dtI2C_Config I2CConfig = {.AddrMode = 0, .Speed = 0, .Mode = 0, .Instance = 0, .BaudValue = 100};
        //GPIO_SetDir(GPIO_PA0, GPIO_Output);
        GPIO_SetDir(GPIO_PB8, GPIO_Input);
        GPIO_SetDir(GPIO_PB9, GPIO_Input);
        I2C_Init(I2CConfig);
    }
    
    while(1)
    {
        OS_Delay(150);
        //GPIO_Set(GPIO_PA0, 0);
        SHT_Runnable();
        OS_Delay(160);
        //GPIO_Set(GPIO_PA0, 1);
    }
}

void Task2(void)
{
    while(1)
    {
        OS_Delay(900);
        //GPIO_Set(GPIO_PA1, 0);
        OS_Delay(100);
        //GPIO_Set(GPIO_PA1, 1);
    }
}

int main(void)
{
    PMD_Set(Pmd_ADC1);
    PMD_Set(Pmd_CMP);
    PMD_Set(Pmd_CRC);
    PMD_Set(Pmd_CRY);
    PMD_Set(Pmd_CTMU);
    PMD_Set(Pmd_DSM);
    PMD_Set(Pmd_IC1);
    PMD_Set(Pmd_IC2);
    PMD_Set(Pmd_IC3);
    PMD_Set(Pmd_IC4);
    PMD_Set(Pmd_IC5);
    PMD_Set(Pmd_IC6);
    PMD_Set(Pmd_OC1);
    PMD_Set(Pmd_OC2);
    PMD_Set(Pmd_OC3);
    PMD_Set(Pmd_OC4);
    PMD_Set(Pmd_OC5);
    PMD_Set(Pmd_OC6);
    PMD_Set(Pmd_PMP);
    PMD_Set(Pmd_SPI1);
    PMD_Set(Pmd_SPI2);
    PMD_Set(Pmd_SPI3);
    PMD_Set(Pmd_U1);
    PMD_Set(Pmd_U2);
    PMD_Set(Pmd_U3);
    PMD_Set(Pmd_U4);
    PMD_Set(Pmd_UPWM);
    PMD_Set(Pmd_USB1);
    SC_SetRetentionMode(1);
    OS_Init();
    while(1)
    {
    }
    return 0;
}
