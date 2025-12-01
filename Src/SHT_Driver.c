#include "Std_Types.h"
#include "I2C.h"

typedef struct
{
    int16 TemperatureSQ7;
    uint16 HumidityUQ6;
} dtHumTempTable;

dtHumTempTable MaxHumidityVsTempTable[23] =
{
    {12787,37533}, //99,9°C
    {11520,26793}, //90°C
    {10240,18620}, //80°C
    {8960,12611},  //70°C
    {7680,8303},   //60°C
    {6400,5300},   //50°C
    {5120,3269},   //40°C
    {4480,2532},   //35°C
    {3840,1942},   //30°C
    {3584,1741},   //28°C
    {3328,1559},   //26°C
    {3072,1393},   //24°C
    {2816,1242},   //22°C
    {2560,1106},   //20°C
    {2304,983},    //18°C
    {2048,872},    //16°C
    {1792,772},    //14°C
    {1536,682},    //12°C
    {1280,601},    //10°C
    {640,435},     //5°C
    {0,310},       //0°C
    {-640,218},    //-5°C
    {-1280,151},   //-10°C
};

static const uint8 SlaveAddress         = 0x40;
static const uint8 Cmd_TempMeasHold     = 0xE3;
static const uint8 Cmd_HumMeasHold      = 0xE5;
static const uint8 Cmd_TempMeasNoHold   = 0xF3;
static const uint8 Cmd_HumMeasNoHold    = 0xF5;

static const uint8 SHT41_Cmd_HighWoHeat = 0xFD;
static const uint8 SHT41_Cmd_MediWoHeat = 0xF6;
static const uint8 SHT41_Cmd_LowWoHeat  = 0xE0;

uint16 TemperatureX100;
uint16 HumidityX100;
uint16 TemperatureX100_SHT21;
uint16 HumidityX100_SHT21;
uint16 HumidityAbsX100;

void SHT_Runnable(void);
uint16 SHT_GetTemperature(void);
uint16 SHT_GetHumidity(void);

void SHT_Runnable(void)
{
    uint8 ReadData[3];
    uint8 SHT41Data[6];
    uint32 TemperatureRaw;
    uint32 HumidityRaw;
    uint32 TempQ7;
    dtI2cTransaction Sht41Cmd = {.SlaveAddress = 0x44, .Data = &SHT41_Cmd_HighWoHeat, .DataLength = 1, .Mode = I2c_RawWrite};
    dtI2cTransaction Sht41Rd = {.SlaveAddress = 0x44, .Data = &SHT41Data, .DataLength = 6, .Mode = I2c_RawRead};
    dtI2cTransaction Sht21Cmd = {.SlaveAddress = 0x40, .SubAddress = &Cmd_TempMeasHold, .SubAddressLength = 1, .Data = &ReadData, .DataLength = 3, .Mode = I2c_RegRead};
    dtI2cTransaction Sht21CmdHum = {.SlaveAddress = 0x40, .SubAddress = &Cmd_HumMeasHold, .SubAddressLength = 1, .Data = &ReadData, .DataLength = 3, .Mode = I2c_RegRead};
    
    I2C_Transaction(I2C_1, &Sht41Cmd);
    while(I2C_Ok != I2C_Transaction(I2C_1, &Sht41Rd));
    
    TemperatureRaw = ((uint16) SHT41Data[0] << 8) | ((uint16) SHT41Data[1]);
    TemperatureX100 = (uint16)((uint32)((uint32) TemperatureRaw * 175 * 100 - 294907500)/65535);
    
    HumidityRaw = ((uint16) SHT41Data[3] << 8) | ((uint16) SHT41Data[4]);
    HumidityX100 = (uint16)((uint32)((uint32) HumidityRaw * 125 * 100 - 39321000)/65535);
    
    I2C_Transaction(I2C_1, &Sht21Cmd);
    TemperatureRaw = (uint16) ReadData[0] << 8;
    TemperatureRaw |= (uint16) ReadData[1];
    TemperatureX100_SHT21 = (uint16)((uint32)((uint32)((uint32) TemperatureRaw * 17572) >> 16) -4685);
    
    I2C_Transaction(I2C_1, &Sht21CmdHum);
    HumidityRaw = (uint16) ReadData[0] << 8;
    HumidityRaw |= (uint16) ReadData[1];
    
    HumidityX100_SHT21 = (uint16)(((uint32)((uint32)HumidityRaw *12500) >> 16) -600);
}

uint16 SHT_GetTemperature(void)
{
    return TemperatureX100;
}

uint16 SHT_GetHumidity(void)
{
    return HumidityX100;
}

uint16 SHT_GetTemperature_SHT21(void)
{
    return TemperatureX100_SHT21;
}

uint16 SHT_GetHumidity_SHT21(void)
{
    return HumidityX100_SHT21;
}