/*
 * File:   HelloWorldMain.c
 * Author: lukek
 *
 * Created on May 14, 2023, 12:43 PM
 */


#include "xc.h"
#include <stdio.h>
#include <BOARD.h>
#include "AD.h"
#include "RC_Servo.h"
#include "pwm.h"
#include "IO_Ports.h"
#include "DriveBase.h"

#define DELAY(x)    for (wait = 0; wait <= x; wait++) {asm("nop");}
#define A_BIT       18300
#define A_LOT       183000
#define MOTOR_TIME (A_LOT <<3)
#define YET_A_BIT_LONGER (A_BIT_MORE<<2)

int main(void) {
    int wait;
    BOARD_Init();
    PWM_Init();
    RC_Init();
    AD_Init();
    DriveBase_Init();
    //RC_AddPins(RC_PORTX03);
    //PWM_AddPins(PORTX11);
    //IO_PortsSetPortDirection(PORTX, 3);
    //AD_AddPins(AD_PORTV3);
    
    /*
    printf("Hello World!");
    //IO_PortsSetPortOutputs(PORTX, PIN3); // SOLENOID CODE TO MAKE IT TURN & OFF

    while(1){
        IO_PortsClearPortBits(PORTX, PIN3);

        printf("\r\n Solenoid on \r\n");
        DELAY(MOTOR_TIME);
        //RC_SetPulseTime(RC_PORTX03, 0);
        IO_PortsSetPortBits(PORTX, PIN3);
        DELAY(MOTOR_TIME);
        printf("\r\n Solenoid off \r\n");  
    }
     * */
    //IO_PortsSetPortOutputs(PORTX, PIN3);
    //IO_PortsSetPortBits(PORTX, PIN3);
    
    unsigned int rawVal;
    Stop();
    Fire(50);

    DELAY(MOTOR_TIME);
    while(1){
        
        //rawVal = AD_ReadADPin(AD_PORTV3);
        //printf("\r\n Raw value of IR Sensor: %u\r\n",rawVal);
        //GoalDetection();
        //GoalieDetection();
        //ReadTapeSensors();
        Charge(100);
//        Fire(50);
//        DELAY(A_LOT);
//        printf("\r\n going to 40");
//        Fire(20);
//        DELAY(A_LOT);
        if (!GoalieDetection()){
            
            Fire(50);
            //printf("\r\n Goalie detected!");
            DELAY(A_LOT);
            Fire(0);
            DELAY(A_LOT);
        } else{
            Fire(50);
        }
//        Charge(100);
//        BorderDetection();
//        Charge(100);
//        DELAY(MOTOR_TIME);
//        Fire(100);
//        DELAY(A_LOT);
//        Fire(0);
//        DELAY(MOTOR_TIME);
//        Fire(100);
//        DELAY(A_LOT);
//        Fire(0);
        /*
        if (ReadTopRightBumper()){
            printf("\r\n Running Y-Direction base motor test!: Forward and Back \r\n");
            Forward(100);
            DELAY(MOTOR_TIME);
            Forward(80);
            DELAY(MOTOR_TIME);
            Forward(60);
            DELAY(MOTOR_TIME);
            Forward(40);
            DELAY(MOTOR_TIME);
            Forward(20);
            DELAY(MOTOR_TIME);
            Stop();
            DELAY(MOTOR_TIME);
            Reverse(20);
            DELAY(MOTOR_TIME);
            Reverse(40);
            DELAY(MOTOR_TIME);
            Reverse(60);
            DELAY(MOTOR_TIME);
            Reverse(80);
            DELAY(MOTOR_TIME);
            Reverse(100);
            DELAY(MOTOR_TIME);
            Stop();
            printf("\r\n Y-Direction Motor Test has ended!\r\n");
        }
        if (ReadTopLeftBumper()){
            printf("\r\n Running X-Direction base motor test!: Right and Left \r\n");
            TurnRight(100);
            DELAY(MOTOR_TIME);
            TurnRight(80);
            DELAY(MOTOR_TIME);
            TurnRight(60);
            DELAY(MOTOR_TIME);
            TurnRight(40);
            DELAY(MOTOR_TIME);
            TurnRight(20);
            DELAY(MOTOR_TIME);
            Stop();
            TurnLeft(20);
            DELAY(MOTOR_TIME);
            TurnLeft(40);
            DELAY(MOTOR_TIME);
            TurnLeft(60);
            DELAY(MOTOR_TIME);
            TurnLeft(80);
            DELAY(MOTOR_TIME);
            TurnLeft(100);
            DELAY(MOTOR_TIME);
            Stop();
            printf("\r\n X-Direction Motor Test has ended!\r\n");
        }
        */
        /*
        if (ReadBotRightBumper()){
            printf("\r\n Running launcher test!\r\n");
            Charge(100);
            DELAY(MOTOR_TIME);
            Fire(100);
            DELAY(A_LOT << 2);
            Fire(0);
            DELAY(A_LOT << 2);
            Fire(100);
            DELAY(A_LOT << 2);
            Fire(0);
            DELAY(A_LOT << 2);
            Fire(100);
            DELAY(A_LOT << 2);
            Fire(0);
            Charge(0);
            printf("\r\n Launcher test has finished! \r\n");
                 
            
        }
        
        if (ReadBotLeftBumper()){
            printf("\r\nRunning Beacon and Tape sensor test!\r\n");
            printf("\r\nRunning Goal detector (2khz beacon)\r\n");
            for (int i = 0; i < MOTOR_TIME << 2; i++){
                if (GoalDetection()){
                    printf("\r\n Goal detected!\r\n");
                } else{
                    printf("\r\n Goal not detected! \r\n");
                }
            }
            printf("\r\nRunning Goalie detector (1.5khz)\r\n");
            for (int i = 0; i < MOTOR_TIME << 2; i++){
                if (GoalieDetection()){
                    printf("\r\n Goalie detected!\r\n");
                } else {
                    printf("\r\n Goalie not detected!\r\n");
                }
            }
            
            printf("\r\nRunning Tape Sensors");
            for (int i = 0; i < MOTOR_TIME << 3; i++){
                if (ReadTopRightTape()){
                    printf("\r\n Top Right tape detector triggered!\r\n");
                }
                if (ReadTopLeftTape()){
                    printf("\r\n Top Left tape detector triggered!\r\n");
                }
                
                if (ReadBotRightTape()){
                    printf("\r\n Bot Right tape detector triggered!\r\n");
                }
                
                if (ReadBotLeftTape()){
                    printf("\r\n Bot Left tape detector triggered!\r\n");
                }
                else{
                    printf("\r\n No tapes detected \r\n");
                }
            }
            printf("\r\n Sensor test has finished!\r\n");
        }
        */
        /*
        else{
            Stop();
   
        }
         */
        
    }
    return 0;

}


