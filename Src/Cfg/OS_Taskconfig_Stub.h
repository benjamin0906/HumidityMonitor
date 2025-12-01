/* 
 * File:   OS_Taskconfig_Stub.h
 * Author: Benjamin
 *
 * Created on December 1, 2025, 9:12 AM
 */

#ifndef OS_TASKCONFIG_STUB_H
#define	OS_TASKCONFIG_STUB_H

#ifdef	__cplusplus
extern "C" {
#endif

#include "../../PIC24FJ_OS/OS/Inc/OS_Types.h"

extern void Task(void);
extern void Task2(void);

#define TICK_PERIOD_US  1000

/* Task parameter definitions */
#define TASK_NUMBER 4


#ifdef	__cplusplus
}
#endif

#endif	/* OS_TASKCONFIG_STUB_H */

