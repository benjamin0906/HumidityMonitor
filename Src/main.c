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
    OS_Init();
    while(1)
    {
    }
    return 0;
}
