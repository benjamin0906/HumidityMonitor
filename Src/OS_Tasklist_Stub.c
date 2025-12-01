#include "OS_Taskconfig_Stub.h"

uint16 Task_Stack[256];
uint16 Task2_Stack[256];
uint16 LCD_Driver_Stack[128];
uint16 DataDisplay_Stack[128];

dtTaskInfo TaskList[TASK_NUMBER] =
{
    TASK(Task, Task_Stack),
    TASK(Task2, Task2_Stack),
    TASK(LCD_Driver_Runnable, LCD_Driver_Stack),
    TASK(DataDisplay_Runnable, DataDisplay_Stack),
};
