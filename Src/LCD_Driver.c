#include "Std_Types.h"
#include "LCD_Driver.h"
#include "GPIO.h"
#include "../PIC24FJ_OS/OS/Inc/OS_Ext.h"

#define PIN_D4  GPIO_PB3
#define PIN_D5  GPIO_PB2
#define PIN_D6  GPIO_PA1
#define PIN_D7  GPIO_PA0

#define PIN_E   GPIO_PA2
#define PIN_RS  GPIO_PA3

#define TWO_LINES   STD_ON
#define INT_8_BIT   STD_OFF
#define PIX_5X10    STD_OFF

#define CURSOR_UNDERLINED   STD_ON
#define CURSOR_BLINK        STD_ON

#define CONF_FUNCTION ((uint8)(0x20 | (INT_8_BIT << 4) | (TWO_LINES << 3) | (PIX_5X10 << 2)))
#define CONF_CURSOR ((uint8) 0x08 | (CURSOR_UNDERLINED << 1) | (CURSOR_BLINK << 0))

static const uint8 LcdCmd_Clear   = 0x01;
static const uint8 LcdCmd_RetHome = 0x02;

static uint8 LcdCurrentBuff[2][16];
static uint8 LcdReqBuff[2][16];

typedef enum
{
    Lcd_PinInit,
    Lcd_Init,
    Lcd_Run,
} dtLcdState;

void LCD_Driver_Runnable(void);
void LcdEnable(void);
void LCD_Send(uint8 data, uint8 Cmd);
void LCD_On(uint8 State);
void LCD_SetCursor(dtLcdPos Pos);
void LCD_Set(dtLcdPos Pos, uint8* String, uint8 Size);

void LCD_Driver_Runnable(void)
{
    static dtLcdState LcdState;
    while(1)
    {
        switch(LcdState)
        {
            case Lcd_PinInit:
                /*Init of pins*/
                GPIO_SetDir(PIN_D4, GPIO_Output);
                GPIO_SetDir(PIN_D5, GPIO_Output);
                GPIO_SetDir(PIN_D6, GPIO_Output);
                GPIO_SetDir(PIN_D7, GPIO_Output);
                GPIO_SetDir(PIN_E, GPIO_Output);
                GPIO_SetDir(PIN_RS, GPIO_Output);

                /* Enable pin should be high at start, because it is a falling edge input */
                GPIO_Set(PIN_E, 0);
                GPIO_Set(PIN_RS, 0);
                
            {
                uint8 CharLooper = 0;
                uint8 LineLooper = 0;
                for(LineLooper = 0; LineLooper < (sizeof(LcdCurrentBuff)/sizeof(LcdCurrentBuff[0])); LineLooper++)
                {
                    for(CharLooper = 0; CharLooper < (sizeof(LcdCurrentBuff[0])/sizeof(LcdCurrentBuff[0][0])); CharLooper++)
                    {
                        if(LcdCurrentBuff[LineLooper][CharLooper] != LcdReqBuff[LineLooper][CharLooper])
                        {
                            LcdReqBuff[LineLooper][CharLooper] = ' ';
                        }
                    }
                }
            }
                LcdState = Lcd_Init;
            case Lcd_Init:
                /* Waiting for power supply */
                OS_Delay(40);

                /* 0x3X shall be sent 3 times first to ensure proper init phase */
                {
                    uint8 i;
                    for(i = 0; i < 3; i++)
                    {
                        GPIO_Set(PIN_D7, 0);
                        GPIO_Set(PIN_D6, 0);
                        GPIO_Set(PIN_D5, 1);
                        GPIO_Set(PIN_D4, 1);
                        LcdEnable();
                        OS_Delay(5);
                    }
                }

                GPIO_Set(PIN_D7, 0);
                GPIO_Set(PIN_D6, 0);
                GPIO_Set(PIN_D5, 1);
                GPIO_Set(PIN_D4, 0);
                LcdEnable();
                OS_Delay(5);

                LCD_Send(CONF_FUNCTION, 1);
                LCD_Send(CONF_CURSOR, 1);
                LCD_On(1);
                LCD_Send(LcdCmd_Clear, 1);
                LCD_Send(LcdCmd_Clear, 1);
                LCD_Send(LcdCmd_Clear, 1);
                LCD_Send(LcdCmd_RetHome, 1);
                
                LcdState = Lcd_Run;
            case Lcd_Run:
            {
                uint8 CharLooper = 0;
                uint8 LineLooper = 0;
                dtLcdPos PositionLooper = {.Byte = 0};
                dtLcdPos PrevPosition = {.Byte = 0};
                for(LineLooper = 0; LineLooper < (sizeof(LcdCurrentBuff)/sizeof(LcdCurrentBuff[0])); LineLooper++)
                {
                    for(CharLooper = 0; CharLooper < (sizeof(LcdCurrentBuff[0])/sizeof(LcdCurrentBuff[0][0])); CharLooper++)
                    {
                        uint8 CharToSend = LcdReqBuff[LineLooper][CharLooper];
                        if(LcdCurrentBuff[LineLooper][CharLooper] != CharToSend)
                        {
                            if(LineLooper != 0)
                            {
                                PositionLooper.Bit.Row = 1;
                            }
                            PositionLooper.Bit.Col = CharLooper;
                            if((PrevPosition.Bit.Col == 0) || (PrevPosition.Bit.Row != PositionLooper.Bit.Row) || ((PrevPosition.Bit.Col + 1) != PositionLooper.Bit.Col))
                            {
                                LCD_SetCursor(PositionLooper);
                            }
                            PrevPosition = PositionLooper;
                            LCD_Send(CharToSend, 0);
                            LcdCurrentBuff[LineLooper][CharLooper] = CharToSend;
                        }
                    }
                }
            }
            OS_Delay(10);
                break;
        }
    }
}
void LcdEnable(void)
{
    OS_Delay(10);
    GPIO_Set(PIN_E, 1);
    OS_Delay(20);
    GPIO_Set(PIN_E, 0);
    OS_Delay(2);
}

void LCD_Send(uint8 data, uint8 Cmd)
{
    uint8 looper = 8;
    static const dtGPIO_Pins PinId[4] = {PIN_D4, PIN_D5, PIN_D6, PIN_D7};
    if(Cmd != 0)
    {
        GPIO_Set(PIN_RS, 0);
    }
    else
    {
        GPIO_Set(PIN_RS, 1);
    }
    
    do
    {
        looper--;
        GPIO_Set(PinId[looper & 3], (data & (1 << looper)) != 0);
        if((looper & 0x03) == 0)
        {
            LcdEnable();
        }
    }
    while(looper > 0);
}

void LCD_On(uint8 State)
{
    uint8 cmd = CONF_CURSOR;
    if(State != 0) cmd |= 0x04;
    LCD_Send(cmd, 1);
}

void LCD_SetCursor(dtLcdPos Pos)
{
    LCD_Send(0x80 | Pos.Byte, 1);
}

void LCD_Set(dtLcdPos Pos, uint8* String, uint8 Size)
{
    while(Size > 0)
    {
        LcdReqBuff[Pos.Bit.Row][Pos.Bit.Col++] = *String;
        Size--;
        String++;
    }
}

void LCD_ClearAndSet(dtLcdPos Pos, uint8* String, uint8 Size)
{
    uint8 i;
    for(i = 0; i < (sizeof(LcdReqBuff[0])/sizeof(LcdReqBuff[0][0])); i++)
    {
        LcdReqBuff[Pos.Bit.Row][i] = ' ';
    }
    while(Size > 0)
    {
        LcdReqBuff[Pos.Bit.Row][Pos.Bit.Col++] = *String;
        Size--;
        String++;
    }
}