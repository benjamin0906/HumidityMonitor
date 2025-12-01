#include "Std_Types.h"
#include "SHT_Driver.h"
#include "LCD_Driver.h"

void DataDisplay_Runnable(void);

void DataDisplay_Runnable(void)
{
    while(1)
    {
        uint8 i = 0;
        for(i = 0; i < 2; i++)
        {
            uint16 Temp = SHT_GetTemperature();
            uint16 Humidity = SHT_GetHumidity();
            uint8 line[16];
            uint8 CharIndex = 0;
            dtLcdPos Pos = {.Byte = 0};
            uint16 t;
            
            if(i != 0)
            {
                Temp = SHT_GetTemperature_SHT21();
                Humidity = SHT_GetHumidity_SHT21();
                Pos.Bit.Row = 1;
            }

            t = Temp / 1000;
            if((uint8)t != 0)
            {
                line[CharIndex++] = '0' + (uint8)t;
                Temp -= t*1000;
            }
            t = Temp / 100;
            Temp -= t*100;
            line[CharIndex++] = '0' + (uint8)t;
            line[CharIndex++] = ',';
            t = Temp / 10;
            Temp -= t*10;
            line[CharIndex++] = '0' + (uint8)t;
            line[CharIndex++] = '0' + (uint8)((uint16)Temp);
            line[CharIndex++] = 0xDF;
            line[CharIndex++] = 'C';
            line[CharIndex++] = ' ';

            t = Humidity / 1000;
            if((uint8)t != 0)
            {
                line[CharIndex++] = '0' + (uint8)t;
                Humidity -= t*1000;
            }
            t = Humidity / 100;
            Humidity -= t*100;
            line[CharIndex++] = '0' + (uint8)t;
            line[CharIndex++] = ',';
            t = Humidity / 10;
            Humidity -= t*10;
            line[CharIndex++] = '0' + (uint8)t;
            line[CharIndex++] = '0' + (uint8)((uint16)Humidity);
            line[CharIndex++] = '%';

            LCD_ClearAndSet(Pos, line, CharIndex);
        }
        OS_Delay(1000);
    }
}
