/*
 * File: TemplateSubHSM.c
 * Author: J. Edward Carryer
 * Modified: Gabriel H Elkaim
 *
 * Template file to set up a Heirarchical State Machine to work with the Events and
 * Services Framework (ES_Framework) on the Uno32 for the CMPE-118/L class. Note that
 * this file will need to be modified to fit your exact needs, and most of the names
 * will have to be changed to match your code.
 *
 * There is for a substate machine. Make sure it has a unique name
 *
 * This is provided as an example and a good place to start.
 *
 * History
 * When           Who     What/Why
 * -------------- ---     --------
 * 09/13/13 15:17 ghe      added tattletail functionality and recursive calls
 * 01/15/12 11:12 jec      revisions for Gen2 framework
 * 11/07/11 11:26 jec      made the queue static
 * 10/30/11 17:59 jec      fixed references to CurrentEvent in RunTemplateSM()
 * 10/23/11 18:20 jec      began conversion from SMTemplate.c (02/20/07 rev)
 */


/*******************************************************************************
 * MODULE #INCLUDE                                                             *
 ******************************************************************************/

#include "ES_Configure.h"
#include "ES_Framework.h"
#include "BOARD.h"
#include <roach.h>
#include "MainHSM.h"
#include "DriveBase.h"
#include <stdio.h>
#include "EngageSubHSM1.h"

/*******************************************************************************
 * MODULE #DEFINES                                                             *
 ******************************************************************************/


#define DELAY(x) for (wait=0; wait<= x; wait++) {asm("nop");}
#define A_BIT       18300
#define A_BIT_MORE  36600
#define A_LOT 183000
#define MOTOR_TIME (A_LOT <<2)
#define YET_A_BIT_LONGER (A_BIT_MORE<<2)

#define FRONTRIGHTTAPE 1
#define FRONTLEFTTAPE 2
#define BOTRIGHTTAPE 4
#define BOTLEFTTAPE 8

typedef enum {
    InitPSubState,
    DriveState,
    RightTapeAdjustState,
    LeftTapeAdjustState,
    RightTapeTimeout,
    LeftTapeTimeout,
    FrontRightBumpAdjustState,
    FrontLeftBumpAdjustState,
    BackLeftBumpAdjustState,
    BackRightBumpAdjustState,
    BackTurnLeftAdjust,
    BackTurnRightAdjust,
    ForwardDelayState,
    BoundaryCheckLeft,
    BoundaryCheckRight,
            
    LoadState,
    TwoState, 
    OneState,
    ExitSub,
            
} EngageSubHSMState_t;

static const char *StateNames[] = {
	"InitPSubState",
	"DriveState",
	"RightTapeAdjustState",
	"LeftTapeAdjustState",
	"RightTapeTimeout",
	"LeftTapeTimeout",
	"FrontRightBumpAdjustState",
	"FrontLeftBumpAdjustState",
	"BackLeftBumpAdjustState",
	"BackRightBumpAdjustState",
	"BackTurnLeftAdjust",
	"BackTurnRightAdjust",
	"ForwardDelayState",
	"BoundaryCheckLeft",
	"BoundaryCheckRight",
	"LoadState",
	"TwoState",
	"OneState",
	"ExitSub",
};



/*******************************************************************************
 * PRIVATE FUNCTION PROTOTYPES                                                 *
 ******************************************************************************/
/* Prototypes for private functions for this machine. They should be functions
   relevant to the behavior of this state machine */

/*******************************************************************************
 * PRIVATE MODULE VARIABLES                                                            *
 ******************************************************************************/
/* You will need MyPriority and the state variable; you may need others as well.
 * The type of state variable should match that of enum in header file. */

static EngageSubHSMState_t CurrentState = InitPSubState; // <- change name to match ENUM
static uint8_t MyPriority;
static uint8_t zoneTrack;
static uint8_t timerActive;
static uint8_t backRightToggled;
static uint8_t backLeftToggled;
static uint8_t frontRightToggled;
static uint8_t frontLeftToggled;

/*******************************************************************************
 * PUBLIC FUNCTIONS                                                            *
 ******************************************************************************/

/**
 * @Function InitTemplateSubHSM(uint8_t Priority)
 * @param Priority - internal variable to track which event queue to use
 * @return TRUE or FALSE
 * @brief This will get called by the framework at the beginning of the code
 *        execution. It will post an ES_INIT event to the appropriate event
 *        queue, which will be handled inside RunTemplateFSM function. Remember
 *        to rename this to something appropriate.
 *        Returns TRUE if successful, FALSE otherwise
 * @author J. Edward Carryer, 2011.10.23 19:25 */
uint8_t InitEngageSubHSM(void)
{
    ES_Event returnEvent;
    zoneTrack = 0;
    backRightToggled = 0;
    backLeftToggled = 0;
    frontRightToggled = 0;
    frontLeftToggled = 0;
    CurrentState = InitPSubState;
    returnEvent = RunEngageSubHSM(INIT_EVENT);
    if (returnEvent.EventType == ES_NO_EVENT) {
        return TRUE;
    }
    return FALSE;
}

/**
 * @Function RunTemplateSubHSM(ES_Event ThisEvent)
 * @param ThisEvent - the event (type and param) to be responded.
 * @return Event - return event (type and param), in general should be ES_NO_EVENT
 * @brief This function is where you implement the whole of the heirarchical state
 *        machine, as this is called any time a new event is passed to the event
 *        queue. This function will be called recursively to implement the correct
 *        order for a state transition to be: exit current state -> enter next state
 *        using the ES_EXIT and ES_ENTRY events.
 * @note Remember to rename to something appropriate.
 *       The lower level state machines are run first, to see if the event is dealt
 *       with there rather than at the current level. ES_EXIT and ES_ENTRY events are
 *       not consumed as these need to pass pack to the higher level state machine.
 * @author J. Edward Carryer, 2011.10.23 19:25
 * @author Gabriel H Elkaim, 2011.10.23 19:25 */
ES_Event RunEngageSubHSM(ES_Event ThisEvent)
{
    uint8_t makeTransition = FALSE; // use to flag transition
    EngageSubHSMState_t nextState; // <- change type to correct enum

    ES_Tattle(); // trace call stack

    switch (CurrentState) {
    case InitPSubState: // If current state is initial Psedudo State
        if (ThisEvent.EventType == ES_INIT)// only respond to ES_Init
        {
            // this is where you would put any actions associated with the
            // transition from the initial pseudo-state into the actual
            // initial state

            // now put the machine into the actual initial state
            zoneTrack = 0;
            nextState = LoadState;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
        }
    break;
//    0000
//    0011 -> do something
//    1111 -> do something
//    0001 -> dont do something
//    0010 -> dont do something
    case LoadState:
    switch(ThisEvent.EventType){
        case ES_ENTRY:
            Forward(75);
        break;

        case TAPE_TOGGLED:
            if((ThisEvent.EventParam & 12) == (BOTLEFTTAPE | BOTRIGHTTAPE)){
                zoneTrack = 2;
                nextState = TwoState;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            } 
        break;
        
        case FRONTLEFT_TOGGLED:
            nextState = FrontLeftBumpAdjustState;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
        break;
        
        case FRONTRIGHT_TOGGLED:
            nextState = FrontRightBumpAdjustState;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
        break;
        default: break;
    }
    break;
    
    // In two point zone
    case TwoState:
        switch(ThisEvent.EventType){
            case ES_ENTRY:
                Forward(75);
                //Stop();
                //ES_Timer_InitTimer(ENGAGE_TIMER, 500);
                
            break;

            
            case FRONTRIGHT_TOGGLED:
            nextState = FrontRightBumpAdjustState;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;

            break;
            //ThisEvent.EventType = ES_NO_EVENT;
            case FRONTLEFT_TOGGLED:
                nextState = FrontLeftBumpAdjustState;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;

            break;
                //ThisEvent.EventType = ES_NO_EVENT;
            case REARRIGHT_TOGGLED:
                nextState = BackRightBumpAdjustState;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;

            break;
            case REARLEFT_TOGGLED:
                nextState = BackLeftBumpAdjustState;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;

            break;
            case TAPE_TOGGLED:
                if((ThisEvent.EventParam & (BOTLEFTTAPE | BOTRIGHTTAPE)) == (BOTLEFTTAPE | BOTRIGHTTAPE)){
                    zoneTrack = 1;
                    nextState = ExitSub;
                    makeTransition = TRUE;
                    ThisEvent.EventType = ONE_POINT_ZONE;
                }
                
                if ((ThisEvent.EventParam & (BOTLEFTTAPE)) == BOTLEFTTAPE){
                    backLeftToggled = TRUE;
                    if (backRightToggled){
                        backLeftToggled = FALSE;
                        backRightToggled = FALSE;
                        zoneTrack = 1;
                        nextState = ExitSub;
                        makeTransition = TRUE;
                        ThisEvent.EventType = ONE_POINT_ZONE;
                    }
                }
                if ((ThisEvent.EventParam & (BOTRIGHTTAPE)) == BOTRIGHTTAPE){
                    backRightToggled = TRUE;
                    if (backLeftToggled){
                        backLeftToggled = FALSE;
                        backRightToggled = FALSE;
                        zoneTrack = 1;
                        nextState = ExitSub;
                        makeTransition = TRUE;
                        ThisEvent.EventType = ONE_POINT_ZONE;
                    }
                }

                if((ThisEvent.EventParam & FRONTRIGHTTAPE) ==(FRONTRIGHTTAPE)){
                    nextState = BoundaryCheckRight;
                    makeTransition = TRUE;
                    ThisEvent.EventType = ES_NO_EVENT;
                } 
                if((ThisEvent.EventParam & FRONTLEFTTAPE) == (FRONTLEFTTAPE)){
                    nextState = BoundaryCheckLeft;
                    makeTransition = TRUE;
                    ThisEvent.EventType = ES_NO_EVENT;
                }
            break;

            default:break;
        }   
    break;
    
    case FrontRightBumpAdjustState: // When front right bumper is toggled
        //Stop();
        //printf("\r\nFRONTRIGHT TOGGLED!!!\r\n");
        switch(ThisEvent.EventType){
            case ES_ENTRY:
                printf("\r\nFRONTRIGHT TOGGLED!!!\r\n");
                Reverse(75);
                ES_Timer_InitTimer(ENGAGE_TIMER, 200);
            break;
            case ES_TIMEOUT:
                nextState = BackTurnLeftAdjust;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
                break;
            default:break;
        }
        break;
    case BackTurnLeftAdjust:
        switch(ThisEvent.EventType){
            case ES_ENTRY:
                TurnLeft(50);
                ES_Timer_InitTimer(ENGAGE_TIMER, 200);
                break;
            case ES_TIMEOUT:
                nextState = TwoState;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            break;
            default: break;
        }
    break;
    case FrontLeftBumpAdjustState: // When Front left bumper is toggled
        switch(ThisEvent.EventType){
            case ES_ENTRY:
                printf("\r\nFRONTLEFT TOGGLED!!!\r\n");

                Reverse(75);
                ES_Timer_InitTimer(ENGAGE_TIMER, 200);
            break;
            case ES_TIMEOUT:
                nextState = BackTurnRightAdjust;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            break;
            default:break;
        }
        break;
        case BackTurnRightAdjust:
            switch(ThisEvent.EventType){
                case ES_ENTRY:
                    TurnRight(50);
                    ES_Timer_InitTimer(ENGAGE_TIMER, 200);
                break;
                case ES_TIMEOUT:
                    nextState = TwoState;
                    makeTransition = TRUE;
                    ThisEvent.EventType = ES_NO_EVENT;
                break;
                default: break;
            }
        break;
    case BackRightBumpAdjustState: // When back right bumper is toggled
        switch(ThisEvent.EventType){
            case ES_ENTRY:
                printf("\r\nBACKRIGHT TOGGLED!!!\r\n");
                TurnLeft(50);
                ES_Timer_InitTimer(ENGAGE_TIMER, 200);
            break;

            case ES_TIMEOUT:
                nextState = TwoState;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            break;
            default:break;
        }
        break;
    case BackLeftBumpAdjustState: // When Back left bumper is toggled
        switch(ThisEvent.EventType){
            case ES_ENTRY:
                printf("\r\nBACKLEFT TOGGLED!!!\r\n");
                TurnRight(50);
                ES_Timer_InitTimer(ENGAGE_TIMER, 200);
            break;

            case ES_TIMEOUT:
                nextState = TwoState;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            break;
            default:break;
        }
        break;
        
    case BoundaryCheckRight:
        switch(ThisEvent.EventType){
            case ES_ENTRY:
                RightMotorSpeed(0);
                LeftMotorSpeed(50);
                ES_Timer_InitTimer(ENGAGE_TIMER, 100);
            break;
            case ES_TIMEOUT:
                nextState = RightTapeAdjustState;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            break;
            default: break;
        }
        break;
    case RightTapeAdjustState: // Adjust when right tape sensors are triggered
        switch(ThisEvent.EventType){
            case ES_ENTRY:
                RightMotorSpeed(50);
                LeftMotorSpeed(0);
            break;

            case TAPE_TOGGLED:
//                if ((ThisEvent.EventParam & FRONTRIGHTTAPE) == (FRONTRIGHTTAPE)){
//                    RightMotorSpeed(50);
//                    LeftMotorSpeed(0);
//                }
                if ((ThisEvent.EventParam & (FRONTLEFTTAPE))== (FRONTLEFTTAPE)){
                    //Forward(75);
                    nextState = LeftTapeAdjustState;
                    makeTransition = TRUE;
                    ThisEvent.EventType = ES_NO_EVENT;
                }
//                if ((ThisEvent.EventParam & (BOTLEFTTAPE|BOTRIGHTTAPE)) == (BOTLEFTTAPE|BOTRIGHTTAPE)){
//                    zoneTrack = 1;
//                    nextState = ExitSub;
//                    makeTransition = TRUE;
//                    ThisEvent.EventType = ONE_POINT_ZONE;
//
//                }

                if ((ThisEvent.EventParam & (BOTLEFTTAPE)) == BOTLEFTTAPE){
                    backLeftToggled = TRUE;
                    if (backRightToggled){
                        backLeftToggled = FALSE;
                        backRightToggled = FALSE;
                        zoneTrack = 1;
                        nextState = ExitSub;
                        makeTransition = TRUE;
                        ThisEvent.EventType = ONE_POINT_ZONE;
                    }
                }
                if ((ThisEvent.EventParam & (BOTRIGHTTAPE)) == BOTRIGHTTAPE){
                    backRightToggled = TRUE;
                    if (backLeftToggled){
                        backLeftToggled = FALSE;
                        backRightToggled = FALSE;
                        zoneTrack = 1;
                        nextState = ExitSub;
                        makeTransition = TRUE;
                        ThisEvent.EventType = ONE_POINT_ZONE;
                    }
                }
                    
                    
                else{
                    zoneTrack = 2;
                    nextState = TwoState;
                    makeTransition = TRUE;
                    ThisEvent.EventType = ES_NO_EVENT;
                }
                
                
            break;
            
            
            default: 
            break;
        }
    break;

    case BoundaryCheckLeft:
        switch(ThisEvent.EventType){
            case ES_ENTRY:
                RightMotorSpeed(50);
                LeftMotorSpeed(0);
                ES_Timer_InitTimer(ENGAGE_TIMER, 100);
            break;
            case ES_TIMEOUT:
                nextState = LeftTapeAdjustState;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            break;
            default: break;
        }
        break;
    
    case LeftTapeAdjustState: // Adjust when Left Tape Sensors are triggered
        switch(ThisEvent.EventType){
            case ES_ENTRY:
                LeftMotorSpeed(0);
                RightMotorSpeed(50);
                
            break;
            
                
            case TAPE_TOGGLED:
                
                if ((ThisEvent.EventParam & (FRONTRIGHTTAPE))== (FRONTRIGHTTAPE)){
                    //Forward(75);
                    nextState = RightTapeAdjustState;
                    makeTransition = TRUE;
                    ThisEvent.EventType = ES_NO_EVENT;
                }
//                if ((ThisEvent.EventParam & (BOTLEFTTAPE|BOTRIGHTTAPE)) == (BOTLEFTTAPE|BOTRIGHTTAPE)){
//                    zoneTrack = 1;
//                    nextState = ExitSub;
//                    makeTransition = TRUE;
//                    ThisEvent.EventType = ONE_POINT_ZONE;
//
//                }

                if ((ThisEvent.EventParam & (BOTLEFTTAPE)) == BOTLEFTTAPE){
                    backLeftToggled = TRUE;
                    if (backRightToggled){
                        backLeftToggled = FALSE;
                        backRightToggled = FALSE;
                        zoneTrack = 1;
                        nextState = ExitSub;
                        makeTransition = TRUE;
                        ThisEvent.EventType = ONE_POINT_ZONE;
                    }
                }
                if ((ThisEvent.EventParam & (BOTRIGHTTAPE)) == BOTRIGHTTAPE){
                    backRightToggled = TRUE;
                    if (backLeftToggled){
                        backLeftToggled = FALSE;
                        backRightToggled = FALSE;
                        zoneTrack = 1;
                        nextState = ExitSub;
                        makeTransition = TRUE;
                        ThisEvent.EventType = ONE_POINT_ZONE;
                    }
                }
                    
                else{
                        zoneTrack = 2;
                        nextState = TwoState;
                        makeTransition = TRUE;
                        ThisEvent.EventType = ES_NO_EVENT;
                }
                
            break;

            
            default:
                break;
        }
    break;

    case ExitSub:
        if (ThisEvent.EventType == ES_ENTRY){      
            Stop();
            nextState = LoadState;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
            ES_Timer_StopTimer(ENGAGE_TIMER);
        }
        break;
    default: // all unhandled states fall into here
        break;
    } // end switch on Current State

    if (makeTransition == TRUE) { // making a state transition, send EXIT and ENTRY
        // recursively call the current state with an exit event
        RunEngageSubHSM(EXIT_EVENT); // <- rename to your own Run function
        CurrentState = nextState;
        RunEngageSubHSM(ENTRY_EVENT); // <- rename to your own Run function
    }

    ES_Tail(); // trace call stack end
    return ThisEvent;
}


/*******************************************************************************
 * PRIVATE FUNCTIONS                                                           *
 ******************************************************************************/

