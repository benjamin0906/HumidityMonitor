/* 
 * File:   LCD_Driver.h
 * Author: Benjamin
 *
 * Created on 2024. január 5., 19:33
 */

#ifndef LCD_DRIVER_H
#define	LCD_DRIVER_H

#ifdef	__cplusplus
extern "C" {
#endif

    typedef union
    {
        uint8 Byte;
        struct
        {
            uint8   Col :4;
            uint8       :2;
            uint8   Row :1;
            uint8       :1;
        } Bit;
    } dtLcdPos;
    
    extern void LCD_Set(dtLcdPos Pos, uint8* String, uint8 Size);


#ifdef	__cplusplus
}
#endif

#endif	/* LCD_DRIVER_H */

