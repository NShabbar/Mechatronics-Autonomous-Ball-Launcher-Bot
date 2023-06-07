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
#include "SearchSubHSM1.h"
#include "LoadEngageSubHSM.h"
#include "CheckCrossSubHSM.h"

/*******************************************************************************
 * MODULE #DEFINES                                                             *
 ******************************************************************************/
typedef enum {
    InitPSubState,
    DriveState,
    FrontLeftBumpAdjust,   
    FrontRightBumpAdjust,
            CheckRightCross,
            CheckLeftCross,
    BufferState,
    SearchState,
    ExitSub,
            
            
} SearchSubHSMState_t;

static const char *StateNames[] = {
	"InitPSubState",
	"DriveState",
	"FrontLeftBumpAdjust",
	"FrontRightBumpAdjust",
	"CheckRightCross",
	"CheckLeftCross",
	"BufferState",
	"SearchState",
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

static SearchSubHSMState_t CurrentState = InitPSubState; // <- change name to match ENUM
static uint8_t MyPriority;


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
uint8_t InitLoadEngageSubHSM(void)
{
    ES_Event returnEvent;

    CurrentState = InitPSubState;
    returnEvent = RunLoadEngageSubHSM(INIT_EVENT);
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
ES_Event RunLoadEngageSubHSM(ES_Event ThisEvent)
{
    uint8_t makeTransition = FALSE; // use to flag transition
    SearchSubHSMState_t nextState; // <- change type to correct enum

    ES_Tattle(); // trace call stack

    switch (CurrentState) {
    case InitPSubState: // If current state is initial Psedudo State
        if (ThisEvent.EventType == ES_INIT)// only respond to ES_Init
        {
            // this is where you would put any actions associated with the
            // transition from the initial pseudo-state into the actual
            // initial state

            // now put the machine into the actual initial state
            nextState = DriveState;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
        }
        break;
        

    case DriveState: // in the first state, replace this with correct names
        //rotate right 
       
        switch (ThisEvent.EventType) {
        case ES_ENTRY:
            Forward(75);
            printf("LOAD DRIVE HAS BEEN TRIGGERED IN DRIVE STATE \r\n");
        break;
        case BUMPER_TOGGLED:
            printf("Bumper has been toggled in drive state");
            if ((ThisEvent.EventParam & FRONTRIGHTBUMP) == FRONTRIGHTBUMP){
                nextState = FrontRightBumpAdjust;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            }
            if ((ThisEvent.EventParam & FRONTLEFTBUMP) == FRONTLEFTBUMP){
                nextState = FrontLeftBumpAdjust;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            }
            if ((ThisEvent.EventParam & (FRONTLEFTBUMP | FRONTRIGHTBUMP)) == (FRONTLEFTBUMP | FRONTRIGHTBUMP)){
                if(DEFAULTTURN){
                    nextState = FrontRightBumpAdjust;
                } else{
                    nextState = FrontLeftBumpAdjust;
                }
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            }
        break;
        case TAPE_TOGGLED:
            printf("\r\n Tape has been toggled in sub sub hsm");
            if((ThisEvent.EventParam & (REARLEFTTAPE | REARRIGHTTAPE)) == (REARLEFTTAPE|REARRIGHTTAPE)){
                nextState = ExitSub;
                makeTransition = TRUE;
                ThisEvent.EventType = TWO_POINT_ZONE;
                printf("\r\n Both tape have been toggled going to two point zone!");
            }
            else if ((ThisEvent.EventParam & (REARLEFTTAPE)) == (REARRIGHTTAPE)){
                printf("\r\n Rear Left tape was toggled only going to checksensor");
                nextState = CheckRightCross;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
                ES_Timer_InitTimer(ENGAGE_TIMER, 300);
            }
            else if ((ThisEvent.EventParam & (REARRIGHTTAPE)) == (REARRIGHTTAPE)){
                printf("\r\n Rear Right tape was toggled only going to checksensor");
                nextState = CheckLeftCross;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
                ES_Timer_InitTimer(ENGAGE_TIMER, 300);
                //ThisEvent.EventType = REARRIGHTTAPE_TOGGLED;
            }
        break;
        
        break;
        default: break;
        }
        break;
        case CheckRightCross:
            switch(ThisEvent.EventType){
                case TAPE_TOGGLED:
                    if((ThisEvent.EventParam & REARRIGHTTAPE) == REARRIGHTTAPE){
                        nextState = ExitSub;
                        makeTransition = TRUE;
                        ThisEvent.EventType = TWO_POINT_ZONE;
                    }
                    
                break;
                case ES_TIMEOUT:
                    if(ThisEvent.EventParam == ENGAGE_TIMER){
                        nextState = DriveState;
                        makeTransition = TRUE;
                        ThisEvent.EventType = ES_NO_EVENT;
                    }
                break;
                default:break;
            }
        break;
        
        case CheckLeftCross:
            switch(ThisEvent.EventType){
                case TAPE_TOGGLED:
                    if((ThisEvent.EventParam & REARLEFTTAPE) == REARLEFTTAPE){
                        nextState = ExitSub;
                        makeTransition = TRUE;
                        ThisEvent.EventType = TWO_POINT_ZONE;
                    }
                    
                break;
                case ES_TIMEOUT:
                    if(ThisEvent.EventParam == ENGAGE_TIMER){
                        nextState = DriveState;
                        makeTransition = TRUE;
                        ThisEvent.EventType = ES_NO_EVENT;
                    }
                break;
                default:break;
            }
        break;
        
    case FrontRightBumpAdjust:
        RightMotorSpeed(-75);
        LeftMotorSpeed(-100);
        switch(ThisEvent.EventType){
            
            case ES_ENTRY:
                printf("\r\n ENTERING THE RIGHT BUMP ADJUST STATE OF SUB SUB STATE MACHINE");
                RightMotorSpeed(-50);
                LeftMotorSpeed(-100);
                ES_Timer_InitTimer(ENGAGE_TIMER, 500);
            break;
            case BUMPER_TOGGLED:  
                if ((ThisEvent.EventParam & (REARRIGHTBUMP | REARLEFTBUMP)) == (REARRIGHTBUMP | REARLEFTBUMP)){
                    nextState = DriveState;
                    makeTransition = TRUE;
                    ThisEvent.EventType = ES_NO_EVENT;
                }
                if ((ThisEvent.EventParam & (REARRIGHTBUMP)) == (REARRIGHTBUMP)){
                    nextState = DriveState;
                    makeTransition = TRUE;
                    ThisEvent.EventType = ES_NO_EVENT;
                    ES_Timer_StopTimer(ENGAGE_TIMER);
                }
                if ((ThisEvent.EventParam & (REARLEFTBUMP)) == (REARLEFTBUMP)){
                    nextState = DriveState;
                    makeTransition = TRUE;
                    ThisEvent.EventType = ES_NO_EVENT;
                    ES_Timer_StopTimer(ENGAGE_TIMER);
                }
            break;
            case ES_TIMEOUT:
                if (ThisEvent.EventParam == ENGAGE_TIMER){
                    nextState = DriveState;
                    makeTransition = TRUE;
                    ThisEvent.EventType = ES_NO_EVENT;
                }
            break;
            default: break;
        }
        break;
        
    case FrontLeftBumpAdjust:
        switch(ThisEvent.EventType){
            case ES_ENTRY:
                LeftMotorSpeed(-50);
                RightMotorSpeed(-100);
                ES_Timer_InitTimer(ENGAGE_TIMER, 500);
            break;
            
            case BUMPER_TOGGLED:   
                if ((ThisEvent.EventParam & (REARRIGHTBUMP | REARLEFTBUMP)) == (REARRIGHTBUMP | REARLEFTBUMP)){
                    nextState = DriveState;
                    makeTransition = TRUE;
                    ThisEvent.EventType = ES_NO_EVENT;
                }
                if ((ThisEvent.EventParam & (REARRIGHTBUMP)) == (REARRIGHTBUMP)){
                    nextState = DriveState;
                    makeTransition = TRUE;
                    ThisEvent.EventType = ES_NO_EVENT;
                    ES_Timer_StopTimer(ENGAGE_TIMER);
                }
                if ((ThisEvent.EventParam & (REARLEFTBUMP)) == (REARLEFTBUMP)){
                    nextState = DriveState;
                    makeTransition = TRUE;
                    ThisEvent.EventType = ES_NO_EVENT;
                    ES_Timer_StopTimer(ENGAGE_TIMER);
                }
            break;
            case ES_TIMEOUT:
                if(ThisEvent.EventParam == ENGAGE_TIMER){
                    nextState = DriveState;
                    makeTransition = TRUE;
                    ThisEvent.EventType = ES_NO_EVENT;
                }
            break;
            default: break;
        }
    break;

    case BufferState:
        switch(ThisEvent.EventType){
            case ES_ENTRY:
                Reverse(75);
                printf("BUFFER FORWARD\r\n");
                ES_Timer_InitTimer(ENGAGE_TIMER, 100);
            break;
            case ES_TIMEOUT:
                nextState = ExitSub;
                makeTransition = TRUE;
                ThisEvent.EventType = TWO_POINT_ZONE;
            break;
            default:break;
        }
    break;
    
//    case SearchState:
//        ThisEvent = RunSearchSubHSM(ThisEvent);
//        switch (ThisEvent.EventType){
//            case GOAL_DETECTED:
//                nextState = ExitSub;
//                makeTransition = TRUE;
//                ThisEvent.EventType = TWO_POINT_ZONE;
//            break;
//            default: break;
//        }
//
//    break;
//        
    case ExitSub:
        printf("Leaving load engage sub state macine\r\n");
        if (ThisEvent.EventType == ES_ENTRY){
            nextState = DriveState;
            makeTransition = TRUE;
            ThisEvent.EventType = TWO_POINT_ZONE;
        }
        break;
    default: // all unhandled states fall into here
        break;
    } // end switch on Current State

    if (makeTransition == TRUE) { // making a state transition, send EXIT and ENTRY
        // recursively call the current state with an exit event
        RunLoadEngageSubHSM(EXIT_EVENT); // <- rename to your own Run function
        CurrentState = nextState;
        RunLoadEngageSubHSM(ENTRY_EVENT); // <- rename to your own Run function
    }

    ES_Tail(); // trace call stack end
    return ThisEvent;
}


/*******************************************************************************
 * PRIVATE FUNCTIONS                                                           *
 ******************************************************************************/

