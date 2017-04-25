#include "mbed.h"
#include "LM75B.h"
#include "C12832.h"
#include "MMA7660.h"

#define MAX_U16 65535

C12832 lcd(p5, p7, p6, p8, p11);
Serial pc(USBTX,USBRX);

LM75B temperature_sensor(p28,p27);
AnalogIn potentiometer(p19);
MMA7660 MMA(p28, p27);
 
DigitalOut connectionLed(LED1);
PwmOut Zaxis_p(LED2);
PwmOut Zaxis_n(LED3);

void read_temperature();
void read_light();
void read_acceleration();

int main ()
{
    if (MMA.testConnection()) {
        connectionLed = 1;
    }
    while (1) {
        read_temperature();
        read_light();
        read_acceleration();
        wait(1.0);
    }    
}

void read_temperature()
{
    if (temperature_sensor.open()) {
        lcd.cls();
        lcd.locate(0, 17);
        lcd.printf("Temp: %.1f C\n", (float) temperature_sensor.temp());
    }
    else {
        pc.printf("Temperature sensor not found\n");
    }    
}

void read_light() 
{
    int p = potentiometer.read_u16();
    
    lcd.locate(0, 0);
    lcd.printf("Light: %d %%", (p * 100) / MAX_U16);
    p = p * lcd.width() / 0xffff;
    lcd.fillrect(0, 9, p, 14, 1);
    lcd.fillrect(p + 1, 9, lcd.width() - 1, 14, 0);
    lcd.locate(0, 16);
    
    lcd.copy_to_lcd();
}

void read_acceleration()
{  
    Zaxis_p = MMA.z();
    Zaxis_n = -MMA.z();
}