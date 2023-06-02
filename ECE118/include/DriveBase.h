#ifndef DRIVEBASE_H
#define DRIVEBASE_H

// Header for Drive Base

// Port List 
/*

(Drive) H-Bridge:
LEFTFORWARD: IN1, Y10
LEFTREVERSE: IN2, Y12
RIGHTFORWARD: IN3, Y04
RIGHTREVERSE: IN4, X11

Bumpers:
TOPRIGHTBUMP: V3
TOPLEFTBUMP: V4
BOTRIGHTBUMP: V5
BOTLEFTBUMP: V6

TapeSensors:
TOPRIGHTTAPE: W3
TOPLEFTTAPE: W4
BOTRIGHTTAPE: W5
BOTLEFTTAPE: W6

TrackSensors:
TOPTRACK: W7
BOTTRACK: W8

*/

void DriveBase_Init(void);

char LeftMotorSpeed(char newSpeed);

char RightMotorSpeed(char newSpeed);

char TurnRight(char newSpeed);

char TurnLeft(char newSpeed);

char Forward(char newSpeed);

char Reverse(char newSpeed);

char Fire(char newSpeed);

char Charge(char newSpeed);

char Stop(void);

uint8_t ReadTopRightBumper(void);

uint8_t ReadTopLeftBumper(void);

uint8_t ReadBotRightBumper(void);

uint8_t ReadBotLeftBumper(void);

uint8_t ReadTopRightTape(void);

uint8_t ReadTopLeftTape(void);

uint8_t ReadBotRightTape(void);

uint8_t ReadBotLeftTape(void);

uint8_t ReadTapeSensors(void);

uint8_t ReadTopTrack(void);

uint8_t ReadBotTrack(void);

uint8_t BorderDetection(void);

uint8_t GoalDetection(void);

uint8_t GoalieDetection(void);

#endif