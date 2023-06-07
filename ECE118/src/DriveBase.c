#include <stdio.h>
#include <BOARD.h>
#include <serial.h>

#include "AD.h"
#include "ES_Configure.h"
#include "ES_Events.h"
#include "pwm.h"
#include "IO_Ports.h"
#include "RC_Servo.h"
#include "MainHSM.h"

// Define the left motor drive port
#define LEFT_FORWARD_IN1 PWM_PORTY12
#define LEFT_REVERSE_IN2 PWM_PORTY10
#define LEFT_ENABLE PIN3 // port x

// Define the right motor drive port
#define RIGHT_FORWARD_IN3 PWM_PORTY04
#define RIGHT_REVERSE_IN4 PWM_PORTX11
#define RIGHT_ENABLE PIN4 // port x

// Define the firing motor
#define FLYWHEEL_IN1 PIN7 //portz
#define FLYWHEEL_IN2 PIN8 //port z

//#define FLYWHEEL_IN2 RC_PORTY06
#define FLYWHEEL_ENABLE PWM_PORTZ06 // port x

// Define firing mechanism
#define FIREMECH RC_PORTW08  // port x

// Define the bumpers port v
#define TOPRIGHTBUMP_V3 PORTV03_BIT
#define TOPLEFTBUMP_V4 PORTV04_BIT
#define BOTRIGHTBUMP_V5 PORTV05_BIT
#define BOTLEFTBUMP_V6 PORTV06_BIT

// Define the tape & track sensors port w
//#define TOPRIGHTTAPE_W3 AD_PORTW3
//#define TOPLEFTTAPE_W4 AD_PORTW4
//#define BOTRIGHTTAPE_W5 AD_PORTW5
//#define BOTLEFTTAPE_W6 AD_PORTW6

#define TOPRIGHTTAPE_W3 PORTW03_BIT
#define TOPLEFTTAPE_W4 PORTW04_BIT
#define BOTRIGHTTAPE_W5 PORTW05_BIT
#define BOTLEFTTAPE_W6 PORTW06_BIT


//#define TOPTRACK_W7 AD_PORTW7
//#define BOTTRACK_W8 AD_PORTW8

// Define the beacon sensors
#define GOAL_V7 AD_PORTV7
#define GOALIE_V8 AD_PORTV8

// Define the max speed
#define MAX_SPEED 100
#define BEACON_HI_THRESH 800 // ARBITRARY ACTUALLY TEST THIS SHIT
#define BEACON_LO_THRESH 750 // ARBITRARY ACTUALLY TEST THIS SHIT
#define GOALIE_HI_THRESH 730 //730 original
#define GOALIE_LO_THRESH 580 // 580 original

static unsigned int zoneTrackFront = 0;
static unsigned int zoneTrackBack = 0;
//static uint8_t lastTapeVal=0
// 0 = towards the goal, 1 = back to loading
unsigned int direction = 0;

void DriveBase_Init(void){
    
    BOARD_Init();
    AD_Init();
    PWM_Init();
    RC_Init();
    PWM_SetFrequency(1000);
    PWM_AddPins(LEFT_FORWARD_IN1);
    PWM_AddPins(LEFT_REVERSE_IN2);
    PWM_AddPins(RIGHT_FORWARD_IN3);
    PWM_AddPins(RIGHT_REVERSE_IN4);
    PWM_AddPins(PWM_PORTZ06); // new fly wheel port?
    
    IO_PortsSetPortInputs(PORTV, PIN3);
    IO_PortsSetPortInputs(PORTV, PIN4);
    IO_PortsSetPortInputs(PORTV, PIN5);
    IO_PortsSetPortInputs(PORTV, PIN6);
    
//    AD_AddPins(TOPRIGHTBUMP_V3);
//    AD_AddPins(TOPLEFTBUMP_V4);
//    AD_AddPins(BOTRIGHTBUMP_V5);
//    AD_AddPins(BOTLEFTBUMP_V6);
    IO_PortsSetPortInputs(PORTW, PIN3);
    IO_PortsSetPortInputs(PORTW, PIN4);
    IO_PortsSetPortInputs(PORTW, PIN5);
    IO_PortsSetPortInputs(PORTW, PIN6);
//    AD_AddPins(TOPRIGHTTAPE_W3);
//    AD_AddPins(TOPLEFTTAPE_W4);
//    AD_AddPins(BOTRIGHTTAPE_W5);
//    AD_AddPins(BOTLEFTTAPE_W6);
//    AD_AddPins(TOPTRACK_W7);
//    AD_AddPins(BOTTRACK_W8);
    AD_AddPins(GOAL_V7);
    AD_AddPins(GOALIE_V8);
    IO_PortsSetPortOutputs(PORTX, PIN3);
    IO_PortsSetPortOutputs(PORTX, PIN4);
    IO_PortsSetPortOutputs(PORTX, PIN5);
    IO_PortsSetPortOutputs(PORTZ, FLYWHEEL_IN1);
    IO_PortsSetPortOutputs(PORTZ, FLYWHEEL_IN2);
//    IO_PortsSetPortOutputs(PORTY, PIN3); // solenoid enable
//    IO_PortsSetPortOutputs(PORTY, PIN5); // solenoid in1
//    IO_PortsSetPortOutputs(PORTY, PIN8); // SOLENOID in2
    IO_PortsSetPortOutputs(PORTX, PIN11);
    //
    RC_AddPins(FIREMECH);
    //Set the enable pins for all motors high 
    IO_PortsSetPortBits(PORTX, LEFT_ENABLE); 
    IO_PortsSetPortBits(PORTX, RIGHT_ENABLE);
    IO_PortsSetPortBits(PORTX, FLYWHEEL_ENABLE);
    //IO_PortsSetPortBits(PORTY, PIN3);
    //IO_PortsClearPortBits(PORTX, FIREMECH);
}

/**
 * @brief Controls the left wheel motor speed & direction
 * 
 * @param newSpeed Controls the speed and direction:
 * -100 < newSpeed<0 -> reverse, 100 > newSpeed>0 -> forward.
 * @return SUCCESS or ERROR
 */
char LeftMotorSpeed(char newSpeed){ 
    if (newSpeed > 100 || newSpeed < -100){
        return (ERROR);
    }
    if (newSpeed < 0){
        newSpeed = -newSpeed;
        PWM_SetDutyCycle(LEFT_FORWARD_IN1, 0);
        PWM_SetDutyCycle(LEFT_REVERSE_IN2, newSpeed*(MAX_PWM/MAX_SPEED));
        //printf("\r\nLeft motor going reverse \r\n");
    } else{
        PWM_SetDutyCycle(LEFT_FORWARD_IN1, newSpeed*(MAX_PWM/MAX_SPEED));
        PWM_SetDutyCycle(LEFT_REVERSE_IN2, 0);
    }
    return (SUCCESS);
}

/**
 * @brief Controls the right wheel motor speed & direction
 * 
 * @param newSpeed Controls the speed and direction:
 * -100 < newSpeed<0 -> reverse, 100 > newSpeed>0 -> forward.
 * @return SUCCESS or ERROR
 */
char RightMotorSpeed(char newSpeed){ 
    
    if (newSpeed > 100 || newSpeed < -100){
        return (ERROR);
    }
    if (newSpeed < 0){\
        newSpeed = -newSpeed;
        PWM_SetDutyCycle(RIGHT_FORWARD_IN3, 0);
        PWM_SetDutyCycle(RIGHT_REVERSE_IN4, newSpeed*(MAX_PWM/MAX_SPEED));
        //printf("\r\nRight motor going reverse \r\n");
    } else{
        PWM_SetDutyCycle(RIGHT_FORWARD_IN3, newSpeed*(MAX_PWM/MAX_SPEED));
        PWM_SetDutyCycle(RIGHT_REVERSE_IN4, 0);
    }
    return (SUCCESS);
}

/**
 * @brief Makes the motor perform a pivot right turn. Utilizes the RightMotorSpeed and LeftMotorSpeed functions
 * 
 * @param newSpeed Controls the speed:
 * 0 < newSpeed < 100
 * @return SUCCESS or ERROR
 */

char TurnRight(char newSpeed){
    if (newSpeed > 100 || newSpeed < 0){
        return (ERROR);
    }
    RightMotorSpeed(-newSpeed);
    LeftMotorSpeed(newSpeed);
    return (SUCCESS);
}


/**
 * @brief Makes the motor perform a pivot left turn. Utilizes the RightMotorSpeed and LeftMotorSpeed functions
 * 
 * @param newSpeed Controls the speed:
 * 0 < newSpeed < 100
 * @return SUCCESS or ERROR
 */
char TurnLeft(char newSpeed){
    if (newSpeed > 100 || newSpeed < 0){
        return (ERROR);
    }
    RightMotorSpeed(newSpeed);
    LeftMotorSpeed(-newSpeed);
    return (SUCCESS);
}

/**
 * @brief Makes the motor go forward. Utilizes the RightMotorSpeed and LeftMotorSpeed functions
 * 
 * @param newSpeed Controls the speed:
 * 0 < newSpeed < 100
 * @return SUCCESS or ERROR
 */
char Forward(char newSpeed){
    if (newSpeed > 100 || newSpeed < 0){
        return (ERROR);
    }
    printf("\r\n going forward \r\n");
    RightMotorSpeed(newSpeed);
    LeftMotorSpeed(newSpeed);
    return (SUCCESS);
}

/**
 * @brief Makes the motor go reverse. Utilizes the RightMotorSpeed and LeftMotorSpeed functions
 * 
 * @param newSpeed Controls the speed:
 * 0 < newSpeed < 100
 * @return SUCCESS or ERROR
 */
char Reverse(char newSpeed){
    if (newSpeed > 100 || newSpeed < 0){
        return (ERROR);
    }
    RightMotorSpeed(-newSpeed);
    LeftMotorSpeed(-newSpeed);
    return (SUCCESS);

}

/**
 * @brief Turns on the flywheel
 * 
 * @param 100 turns it on, 0 turns it off:
 *
 * @return SUCCESS or ERROR
 */

char Charge(char newSpeed){
    if (newSpeed < 0 || newSpeed > 100){
        return (ERROR);
    }
    /*
    if (newSpeed == 100){
        printf("Turning flywheel on!\r\n");
        //IO_PortsSetPortBits(PORTZ,FLYWHEEL_IN1);
        PWM_SetDutyCycle(PWM_PORTZ06, newSpeed);
        IO_PortsClearPortBits(PORTZ,FLYWHEEL_IN2);
    } else{
        IO_PortsClearPortBits(PORTZ,FLYWHEEL_IN1);
        IO_PortsClearPortBits(PORTZ,FLYWHEEL_IN2);
    }*/
    PWM_SetDutyCycle(FLYWHEEL_ENABLE, newSpeed*(MAX_PWM/MAX_SPEED));
    IO_PortsClearPortBits(PORTZ,FLYWHEEL_IN2);
    //PWM_SetDutyCycle(FLYWHEEL_IN1, newSpeed);
    //printf("Charged has been called\r\n");
    return (SUCCESS);
}

/**
 * @brief Turns on the firing mechanism. Currently assumes its a solenoid
 * 
 *  @param 100 turns it on, 0 turns it off:
 *
 * @return SUCCESS or ERROR
 */


char Fire(int newSpeed){
//    IO_PortsSetPortOutputs(PORTX, FIREMECH);
    //printf("\r\n FIRED\r\n");
    if (newSpeed < 0 || newSpeed > 100){
        return (ERROR);
    }
    RC_SetPulseTime(FIREMECH, ((newSpeed*10)+1000));
    /*
    if (newSpeed == 100){
//        IO_PortsSetPortBits(PORTX, FIREMECH);
        RC_SetPulseTime(FIREMECH, 6000);
    } else{
//        IO_PortsClearPortBits(PORTX, FIREMECH);
        RC_SetPulseTime(FIREMECH, 2000);
    }
     */
    //PWM_SetDutyCycle(FLYWHEEL_IN1, newSpeed);
    
    
    return (SUCCESS);
}

/**
 * @brief Makes the motor stop. Utilizes the RightMotorSpeed and LeftMotorSpeed functions
 * 
 * @param newSpeed Controls the speed:
 * 0 < newSpeed < 100
 * @return SUCCESS or ERROR
 */
char Stop(void){
    //
    printf("\r\n Stop has been called\r\n");
    RightMotorSpeed(0);
    LeftMotorSpeed(0);
    //Fire(0);
    return (SUCCESS);
}


uint8_t ReadBumpers(void){
    static ES_EventTyp_t lastEvent = BUMPERNOTTOGGLED;
    static uint8_t prevBumpers;
    uint8_t returnVal = FALSE;
    ES_EventTyp_t curEvent;
    static ES_Event thisEvent;
    //printf("\r\n BUMPERS HAS BEEN CALLED");
    
//    #define TOPRIGHTBUMP_V3 PORTV03_BIT
//#define TOPLEFTBUMP_V4 PORTV04_BIT
//#define BOTRIGHTBUMP_V5 PORTV05_BIT
//#define BOTLEFTBUMP_V6 PORTV06_BIT
    
    // 1-> top right bump
    // 2-> top left bump
    // 3-> bot right bump
    // 4-> bot left bump
    uint8_t curBumpers;
    curBumpers = (!TOPRIGHTBUMP_V3 | !TOPLEFTBUMP_V4<<1 | !BOTRIGHTBUMP_V5 << 2| !BOTLEFTBUMP_V6 << 3);
    //printf("\r\n Total Bumpers: %u\r\n", curBumpers);
    if(curBumpers != prevBumpers){
        printf("\r\n BUMPER HAS BEEN TOGGLED: %u", curBumpers);
        thisEvent.EventType = BUMPER_TOGGLED;
        thisEvent.EventParam = curBumpers;
        prevBumpers = curBumpers;
        returnVal = TRUE;
#ifndef EVENTCHECKER_TEST           // keep this as is for test harness
        PostMainHSM(thisEvent);
#else
        SaveEvent(thisEvent);
#endif
    }
    return(returnVal);
}

uint8_t ReadTapeSensors(void){
    static ES_EventTyp_t lastEvent;
    static uint8_t prevTape;
    uint8_t returnVal = FALSE;
    ES_EventTyp_t curEvent;
    static ES_Event thisEvent;
    
//    unsigned int TopRight = ReadTopRightTape(); // 1
//    unsigned int TopLeft = ReadTopLeftTape(); // 2
//    unsigned int BotRight = ReadBotRightTape(); // 4
//    unsigned int BotLeft = ReadBotLeftTape(); // 8
    uint8_t totalTape;
    totalTape = (TOPRIGHTTAPE_W3 | TOPLEFTTAPE_W4<<1 | BOTRIGHTTAPE_W5 << 2| BOTLEFTTAPE_W6 << 3);
    //printf("\r\n Total Tape: %u\r\n", totalTape);
    
    if(totalTape != prevTape){
        thisEvent.EventType = TAPE_TOGGLED;
        thisEvent.EventParam = totalTape;
        lastEvent = curEvent;
        prevTape = totalTape;
        returnVal = TRUE;
#ifndef EVENTCHECKER_TEST           // keep this as is for test harness
        PostMainHSM(thisEvent);
#else
        SaveEvent(thisEvent);
#endif
    }
    return(returnVal);
    
    
}

// This function performs the goal detection
uint8_t GoalDetection(void){
    
    static ES_EventTyp_t lastEvent = GOAL_NOT_DETECTED;
    uint8_t returnVal = FALSE;
    ES_EventTyp_t curEvent;
    ES_Event thisEvent;
    unsigned int rawVal = AD_ReadADPin(GOAL_V7);
    //printf("\r\n2khz adc value: %u", rawVal);
    // Write hystersis code here!
    if (rawVal > BEACON_HI_THRESH){
        //printf("Goal Detected!\r\n");
        curEvent = GOAL_DETECTED;
    } else if (rawVal < BEACON_LO_THRESH){
        //printf("\r\nGoalie is not detected");
        curEvent = GOAL_NOT_DETECTED;
    } else{
        curEvent = lastEvent;
    }
    if (curEvent != lastEvent){
        //printf("\r\nSwitching event in goal detection");
        thisEvent.EventType = curEvent;
        thisEvent.EventParam = rawVal;
        returnVal = TRUE;
        lastEvent = curEvent;

#ifndef EVENTCHECKER_TEST           // keep this as is for test harness
        PostMainHSM(thisEvent);
#else
        SaveEvent(thisEvent);
#endif
    }
    
    return returnVal;
}

// This function performs the goalie detection
uint8_t GoalieDetection(void){
    static ES_EventTyp_t lastEvent = GOALIE_NOT_DETECTED;
    uint8_t returnVal = FALSE;
    ES_EventTyp_t curEvent;
    ES_Event thisEvent;
    unsigned int rawVal = AD_ReadADPin(GOALIE_V8);
    
    // Write hystersis code here!
    printf("\r\n1.5khz adc value: %u\r\n", rawVal);

    if (rawVal > GOALIE_HI_THRESH){
        curEvent = GOALIE_DETECTED;
        //returnVal = TRUE;
        ///printf("\r\n Goalie Detected\r\n");
    } else if (rawVal < GOALIE_LO_THRESH){
        curEvent = GOALIE_NOT_DETECTED;
        //returnVal = FALSE;
        //printf("\r\n Goalie not detected\r\n");
    } else{
        curEvent = lastEvent;
        //returnVal = FALSE;
    }
    if (curEvent != lastEvent){
        thisEvent.EventType = curEvent;
        thisEvent.EventParam = rawVal;
        returnVal = TRUE;
        lastEvent = curEvent;

#ifndef EVENTCHECKER_TEST           // keep this as is for test harness
        PostMainHSM(thisEvent);
#else
        SaveEvent(thisEvent);
#endif
    }
    return (returnVal);
}




#ifdef DRIVEBASE_TEST
#include <xc.h>
#include "DriveBase.h"
#include <SERIAL.h>
#include <stdio.h>

#define DELAY(x)    for (wait = 0; wait <= x; wait++) {asm("nop");}
#define A_BIT       18300
#define A_LOT       183000
#define MOTOR_TIME (A_LOT <<2)
#define YET_A_BIT_LONGER (A_BIT_MORE<<2)

unsigned int testTrack = 0;
while (1){
    printf("\r\nBeginning Drive Base Test\r\n");
    if (ReadTopRightBumper()){
        printf("\r\nTop Right Bumper triggered! \r\n");
        printf("\r\b Going forward!\r\n");
        //testTrack++;
        Forward(100);
        DELAY(MOTOR_TIME);
        Stop();
    }
    
    if (ReadTopLeftBumper()){
        printf("\r\nTop Left Bumper triggered!\r\n");
        printf("\r\nGoing Reverse!\r\n");
        //test
        Reverse(100);
        DELAY(MOTOR_TIME);
        Stop();

    }

    if (ReadBotLeftBumper()){
        printf("\r\n Bot Left bumper triggered!\r\n");
        printf("\r\nTurning left\r\n");
        TurnLeft(100);
        DELAY(MOTOR_TIME);
        Stop();
    }
    
    if(ReadBotRightBumper()){
        printf("\r\n Bot Right bumper triggered\r\n");
        printf("\r\nTurning Right\r\n");
        TurnRight(100);
        DELAY(MOTOR_TIME);
        Stop();
    }

    if(ReadTopRightTape()){
        printf("\r\n Top Right tape triggered!\r\n");
    }

    if(ReadTopLeftTape()){
        printf("\r\n Top Left tape triggered!\r\n");
    }

    if(ReadBotRightTape()){
      printf("\r\n Bot tape triggered!\r\n");
    }
    if (ReadBotLeftTape()){
        printf("\r\n Bot Left Tape triggered!\r\n");
    }

    if (ReadTopTrack()){
        printf("\r\n Top Track triggered!\r\n");
    }

    if (ReadBotTrack()){
        printf("\r\n Bot Track triggered! \r\n");
    }

}
#endif
