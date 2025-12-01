/* 
 * File:   SHT_Driver.h
 * Author: Benjamin
 *
 * Created on 2023. december 28., 17:01
 */

#ifndef SHT_DRIVER_H
#define	SHT_DRIVER_H

#ifdef	__cplusplus
extern "C" {
#endif

    extern void SHT_Runnable(void);
    extern uint16 SHT_GetTemperature(void);
    extern uint16 SHT_GetHumidity(void);
    extern uint16 SHT_GetTemperature_SHT21(void);
    extern uint16 SHT_GetHumidity_SHT21(void);


#ifdef	__cplusplus
}
#endif

#endif	/* SHT_DRIVER_H */

