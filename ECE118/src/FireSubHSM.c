#include "ES_Configure.h"
#include "ES_Framework.h"
#include "BOARD.h"
#include <roach.h>
#include "MainHSM.h"
#include "DriveBase.h"
#include <stdio.h>
#include "FireSubHSM.h"
#include "SearchSubHSM1.h"
#include "RC_Servo.h"
#include "IO_Ports.h"
/*******************************************************************************
 * MODULE #DEFINES                                                             *
 ******************************************************************************/

#define CHARGE_TIME 1500
#define DELAY(x)    for (wait = 0; wait <= x; wait++) {asm("nop");}
#define A_BIT       18300
#define A_LOT       183000
#define MOTOR_TIME (A_LOT <<3)
#define YET_A_BIT_LONGER (A_BIT_MORE<<2)
#define FIREON 80
#define FIREOFF 20
typedef enum {
    InitPSubState,
            ScoutState,
            InitSearchState,
            SearchState,
            BankState,
            ChargeState,
            ReverseRightBufferState,
            ReverseLeftBufferState,
            RightDegreeTurn,
            LeftDegreeTurn,
            CrossField,
            CloserToGoal,
            CloserToGoalHit,
            BankHitState,
            GoalieBuffer,
            Shot1State,
            Fire1State,
            Shot2State,
            Fire2State,
            Shot3State,
            Fire3State,
            Shot4State,
            Fire4State,
            ReOrientSearch,
            
    ExitSub,
            
} FireSubHSMState_t;

static const char *StateNames[] = {
	"InitPSubState",
	"ScoutState",
	"InitSearchState",
	"SearchState",
	"BankState",
	"ChargeState",
	"ReverseRightBufferState",
	"ReverseLeftBufferState",
	"RightDegreeTurn",
	"LeftDegreeTurn",
	"CrossField",
	"CloserToGoal",
	"CloserToGoalHit",
	"BankHitState",
	"GoalieBuffer",
	"Shot1State",
	"Fire1State",
	"Shot2State",
	"Fire2State",
	"Shot3State",
	"Fire3State",
	"Shot4State",
	"Fire4State",
	"ReOrientSearch",
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

static FireSubHSMState_t CurrentState = InitPSubState; // <- change name to match ENUM
static uint8_t MyPriority;
static uint8_t DetectedCount;


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
uint8_t InitFireSubHSM(void)
{
    ES_Event returnEvent;

    CurrentState = InitPSubState;
    DetectedCount = 0;
    //shotsFired = 0;
    Fire(FIREON);
    IO_PortsSetPortInputs(PORTZ, PIN4);
//    RC_Init();
    returnEvent = RunFireSubHSM(INIT_EVENT);
    if (returnEvent.EventType == ES_NO_EVENT) {
        return TRUE;
    }
    return FALSE;
}


uint8_t PostFireSubHSM(ES_Event ThisEvent)
{
    return ES_PostToService(MyPriority, ThisEvent);
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
ES_Event RunFireSubHSM(ES_Event ThisEvent)
{
    int wait = 0;
    uint8_t makeTransition = FALSE; // use to flag transition
    FireSubHSMState_t nextState; // <- change type to correct enum
    ES_Tattle(); // trace call stack

    switch (CurrentState) {
    case InitPSubState: // If current state is initial Psedudo State
        if (ThisEvent.EventType == ES_INIT)// only respond to ES_Init
        {
            // this is where you would put any actions associated with the
            // transition from the initial pseudo-state into the actual
            // initial state

            // now put the machine into the actual initial state
           
            //nextState = InitSearchState;
            nextState = InitSearchState;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
            //Fire(FIREON);
        }
        break;
        
    case InitSearchState:
        ThisEvent = RunSearchSubHSM(ThisEvent);
        switch (ThisEvent.EventType){
            case GOAL_DETECTED:
                nextState = ScoutState;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            break;
            default: break;
        }
    break;

    case ScoutState:
        switch(ThisEvent.EventType){
            case ES_ENTRY:
                Forward(75);
                ES_Timer_InitTimer(ENGAGE_TIMER, 2000);
            break;
            case BUMPER_TOGGLED:
                if (((ThisEvent.EventParam & FRONTRIGHTBUMP) == FRONTRIGHTBUMP) || (ThisEvent.EventParam & FRONTLEFTBUMP) == FRONTLEFTBUMP){
                    if (!DEFAULTTURN){
                        nextState = ReverseRightBufferState;
                    } else{
                        nextState = ReverseLeftBufferState;
                    }
                    makeTransition = TRUE;
                    ThisEvent.EventType = ES_NO_EVENT;

                }
            break;
            case ES_TIMEOUT:
                nextState = BankState;
                makeTransition = TRUE;
                ThisEvent.EventType;
            break;
            default: break;
        }
        break;


    
    case ReverseRightBufferState:
        switch(ThisEvent.EventType){
            case ES_ENTRY:
                Reverse(100);
                ES_Timer_InitTimer(ENGAGE_TIMER, 400);
            break;
            case ES_TIMEOUT:
                nextState = RightDegreeTurn;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            break;
        }
    break;

    case ReverseLeftBufferState:
        switch(ThisEvent.EventType){
            case ES_ENTRY:
                Reverse(100);
                ES_Timer_InitTimer(ENGAGE_TIMER, 400);
            break;
            case ES_TIMEOUT:
                nextState = LeftDegreeTurn;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            break;
        }
    break;
        
    case RightDegreeTurn:
        switch(ThisEvent.EventType){
            case ES_ENTRY:
                RightMotorSpeed(-50);
                LeftMotorSpeed(50);
                ES_Timer_InitTimer(ENGAGE_TIMER, 1000);
            break;
            case ES_TIMEOUT:
                if (ThisEvent.EventParam == ENGAGE_TIMER){
                    nextState = CrossField;
                    makeTransition = TRUE;
                    ThisEvent.EventType = ES_NO_EVENT;
                }
            break;
            default: break;
        }
    break;

    case LeftDegreeTurn:
        switch(ThisEvent.EventType){
            case ES_ENTRY:
                RightMotorSpeed(50);
                LeftMotorSpeed(-50);
                ES_Timer_InitTimer(ENGAGE_TIMER, 1000);
            break;
            case ES_TIMEOUT:
                if (ThisEvent.EventParam == ENGAGE_TIMER){
                    nextState = CrossField;
                    makeTransition = TRUE;
                    ThisEvent.EventType = ES_NO_EVENT;
                }
            break;
            default: break;
        }
    break;
    
    case CrossField:
        switch(ThisEvent.EventType){
            case ES_ENTRY:
                Forward(100);
                printf("\r\n FORWARD WAS CALLED IN TWO STATE CROSSFIELD");  
                ES_Timer_InitTimer(ENGAGE_TIMER, 1600);
            break;
            case ES_TIMEOUT:
                if(ThisEvent.EventParam == ENGAGE_TIMER){
                    nextState = SearchState;
                    makeTransition = TRUE;
                    ThisEvent.EventType = ES_NO_EVENT;
                }
            break;
            default: break;
        }
    break;
        
    case SearchState:
        ThisEvent = RunSearchSubHSM(ThisEvent);
        switch (ThisEvent.EventType){
            case GOAL_DETECTED:
                nextState = CloserToGoalHit;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            break;
            default: break;
        }
    break;
    case CloserToGoal:
        switch(ThisEvent.EventType){
            case ES_ENTRY:
                Forward(100);
                ES_Timer_InitTimer(ENGAGE_TIMER, 200);
            break;
            case ES_TIMEOUT:
                nextState = BankState;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            break;
        }
    break;
    
    case CloserToGoalHit:
        switch(ThisEvent.EventType){
            case ES_ENTRY:
                Forward(100);
                ES_Timer_InitTimer(ENGAGE_TIMER, 400);
            break;
            case ES_TIMEOUT:
                nextState = BankHitState;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            break;
        }
    break;
    case BankHitState:
        switch(ThisEvent.EventType){
            case ES_ENTRY:

                if (!DEFAULTTURN){
                    TurnRight(75);
                    printf("\r\n Turning right in bank hit!"); // Left State Machine
                    ES_Timer_InitTimer(ENGAGE_TIMER, 110);
                }
                else{
                    TurnLeft(75);
                    printf("\r\n Turning left in bank hit!"); // Right Field State 
                    ES_Timer_InitTimer(ENGAGE_TIMER, 120);
                }
                
            break;
            case ES_TIMEOUT:
                Stop();
                nextState = ChargeState;
                makeTransition = TRUE;
                
                ThisEvent.EventType = ES_NO_EVENT;
            break;
        }
    break;
    case BankState:
        switch(ThisEvent.EventType){
            case ES_ENTRY:
                if (!DEFAULTTURN){
                    TurnLeft(75);
                    printf("\r\n Turning left in bank!");
                    ES_Timer_InitTimer(ENGAGE_TIMER, 130);
                }
                else{
                    TurnRight(75);
                    printf("\r\n Turning right in bank hit!");
                    ES_Timer_InitTimer(ENGAGE_TIMER, 150);
                }
                
            break;
            case ES_TIMEOUT:
                Stop();
                nextState = ChargeState;
                makeTransition = TRUE;
                
                ThisEvent.EventType = ES_NO_EVENT;
            break;
        }
    break;
    
    case ChargeState:
        switch (ThisEvent.EventType){
            case ES_ENTRY:
  
                Charge(100);
                
                ES_Timer_InitTimer(CHARGE_TIMER, 1000);
            break;
            case ES_TIMEOUT:
                printf("\r\n in charge state of fire sub hsm");
                if (ThisEvent.EventParam == CHARGE_TIMER){
//                    Fire(FIREOFF); // Load
//                    ThisEvent.EventType = ES_NO_EVENT;
//                    nextState = Fire1State;
//
//                    makeTransition = TRUE;
//
//                    ES_Timer_InitTimer(CHARGE_TIMER, 200);
                    nextState = GoalieBuffer;
                    ThisEvent.EventType = ES_NO_EVENT;
                    makeTransition = TRUE;  
                    ES_Timer_InitTimer(CHARGE_TIMER, 11000);
                }

            break;
        }
    break;

    case GoalieBuffer:
        switch(ThisEvent.EventType){
            case GOALIE_DETECTED:
                Fire(FIREON);
            break;
            case GOALIE_NOT_DETECTED:
                Fire(FIREOFF);
                nextState = Fire1State;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
                ES_Timer_InitTimer(CHARGE_TIMER, 200);
            break;
            case ES_TIMEOUT:
                Fire(FIREOFF);
                nextState = Fire1State;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
                ES_Timer_InitTimer(CHARGE_TIMER, 200);
            break;
        }
        
    break;
    
    case Fire1State:
        switch(ThisEvent.EventType){
            
            case ES_ENTRY:
                printf("\r\n In fire 1 state");
            break;
            case ES_TIMEOUT:
                if (ThisEvent.EventParam == CHARGE_TIMER){
                    printf("\r\n in load state of fire sub hsm");
                    Fire(FIREON); // fired first ball
                    nextState = Shot2State;
                    makeTransition = TRUE;
                    ThisEvent.EventType = ES_NO_EVENT;
                    ES_Timer_InitTimer(CHARGE_TIMER, 500);
                }
            break;
        }
    break;
    
    case Shot2State:
        switch(ThisEvent.EventType){
            
            case ES_ENTRY:
//                printf("\r\n in load state of fire sub hsm");
//                Fire(50);
//                ES_Timer_InitTimer(CHARGE_TIMER, 5000);
            break;
            case ES_TIMEOUT:
                if (ThisEvent.EventParam == CHARGE_TIMER){
                    printf("\r\n in load state of fire sub hsm");
                    Fire(FIREOFF); // load second ball
                    nextState = Fire2State;
                    makeTransition = TRUE;
                    ThisEvent.EventType = ES_NO_EVENT;
                    ES_Timer_InitTimer(CHARGE_TIMER, 200);
                }
            break;
        }
    break;
    
    
    case Fire2State:
        switch(ThisEvent.EventType){
            
            case ES_ENTRY:
//                printf("\r\n in load state of fire sub hsm");
//                Fire(50);
//                ES_Timer_InitTimer(CHARGE_TIMER, 5000);
            break;
            case ES_TIMEOUT:
                if (ThisEvent.EventParam == CHARGE_TIMER){
                    printf("\r\n in load state of fire sub hsm");
                    Fire(FIREON); // fired second ball
                    nextState = Shot3State;
                    makeTransition = TRUE;
                    ThisEvent.EventType = ES_NO_EVENT;
                    ES_Timer_InitTimer(CHARGE_TIMER, 500);
                }
            break;
        }
        break;
    
    case Shot3State:
        switch(ThisEvent.EventType){
            
            case ES_ENTRY:
//                printf("\r\n in load state of fire sub hsm");
//                Fire(50);
//                ES_Timer_InitTimer(CHARGE_TIMER, 5000);
            break;
            case ES_TIMEOUT:
                if (ThisEvent.EventParam == CHARGE_TIMER){
                    printf("\r\n in load state of fire sub hsm");
                    Fire(FIREOFF); // load third ball
                    nextState = Fire3State;
                    makeTransition = TRUE;
                    ThisEvent.EventType = ES_NO_EVENT;
                    ES_Timer_InitTimer(CHARGE_TIMER, 200);
                }
            break;
        }
    break;
    
    case Fire3State:
        switch(ThisEvent.EventType){
            
            case ES_ENTRY:
            break;
            case ES_TIMEOUT:
                if (ThisEvent.EventParam == CHARGE_TIMER){
                    printf("\r\n in load state of fire sub hsm");
                    Fire(FIREON); // fired LAST ball
                    nextState = Shot4State;
                    makeTransition = TRUE;
                    ThisEvent.EventType = ES_NO_EVENT;
                    ES_Timer_InitTimer(CHARGE_TIMER, 500);

                }
            break;
        }
        break;
        
    case Shot4State:
        switch(ThisEvent.EventType){
            
            case ES_ENTRY:
//                printf("\r\n in load state of fire sub hsm");
//                Fire(50);
//                ES_Timer_InitTimer(CHARGE_TIMER, 5000);
            break;
            case ES_TIMEOUT:
                if (ThisEvent.EventParam == CHARGE_TIMER){
                    printf("\r\n in load state of fire sub hsm");
                    Fire(FIREOFF); // load third ball
                    nextState = Fire4State;
                    makeTransition = TRUE;
                    ThisEvent.EventType = ES_NO_EVENT;
                    ES_Timer_InitTimer(CHARGE_TIMER, 200);
                }
            break;
        }
    break;
    
        
    case Fire4State:
        switch(ThisEvent.EventType){
            
            case ES_ENTRY:
            break;
            case ES_TIMEOUT:
                if (ThisEvent.EventParam == CHARGE_TIMER){
                    printf("\r\n in load state of fire sub hsm");
                    Fire(FIREON); // fired LAST ball
                    nextState = InitSearchState;
                    makeTransition = TRUE;
                    ThisEvent.EventType = OUTOFAMMO;
                }
            break;
        }
        break;
    
    
    
    case ExitSub:
        if (ThisEvent.EventType == ES_ENTRY){
        
            //Fire(FIREON);
        printf("\r\n Exiting fire state");
        Charge(0);
        Fire(FIREON);
        nextState = InitSearchState;
        makeTransition = TRUE;
        ThisEvent.EventType = OUTOFAMMO;
        ES_Timer_StopTimer(CHARGE_TIMER);
       }
        break;
    default: // all unhandled states fall into here
        break;
    } // end switch on Current State

    if (makeTransition == TRUE) { // making a state transition, send EXIT and ENTRY
        // recursively call the current state with an exit event
        RunFireSubHSM(EXIT_EVENT); // <- rename to your own Run function
        CurrentState = nextState;
        RunFireSubHSM(ENTRY_EVENT); // <- rename to your own Run function
    }

    ES_Tail(); // trace call stack end
    return ThisEvent;
}


/*******************************************************************************
 * PRIVATE FUNCTIONS                                                           *
 ******************************************************************************/

