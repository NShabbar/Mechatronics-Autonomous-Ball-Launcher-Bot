#include "ES_Configure.h"
#include "ES_Framework.h"
#include "BOARD.h"
#include <roach.h>
#include "MainHSM.h"
#include "DriveBase.h"
#include <stdio.h>
#include "FireSubHSM.h"
#include "RC_Servo.h"
/*******************************************************************************
 * MODULE #DEFINES                                                             *
 ******************************************************************************/

#define CHARGE_TIME 1500
#define DELAY(x)    for (wait = 0; wait <= x; wait++) {asm("nop");}
#define A_BIT       18300
#define A_LOT       183000
#define MOTOR_TIME (A_LOT <<3)
#define YET_A_BIT_LONGER (A_BIT_MORE<<2)
#define FIREON 50
#define FIREOFF 10
typedef enum {
    InitPSubState,
    BufferState,
    RotateState,
    ChargeState,
            RCKick,
            ForwardDelayState,
    BallFire1State,
    BallFire2State, 
    BallFire3State,
    BallFire4State,
    BallFire5State,
    BallFire6State,
    ExitSub,
            
} FireSubHSMState_t;

static const char *StateNames[] = {
	"InitPSubState",
	"BufferState",
	"RotateState",
	"ChargeState",
	"RCKick",
	"ForwardDelayState",
	"BallFire1State",
	"BallFire2State",
	"BallFire3State",
	"BallFire4State",
	"BallFire5State",
	"BallFire6State",
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
static uint8_t shotsFired;

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
    shotsFired = 0;
    RC_Init();
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
    Fire(FIREON);
    ES_Tattle(); // trace call stack

    switch (CurrentState) {
    case InitPSubState: // If current state is initial Psedudo State
        if (ThisEvent.EventType == ES_INIT)// only respond to ES_Init
        {
            // this is where you would put any actions associated with the
            // transition from the initial pseudo-state into the actual
            // initial state

            // now put the machine into the actual initial state
            Charge(0);
            nextState = RotateState;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
            Fire(FIREON);
        }
        break;
        

    case RotateState:

        switch (ThisEvent.EventType) {
        case ES_ENTRY:
                RightMotorSpeed(50);
                LeftMotorSpeed(-50);
        break;
        case GOAL_DETECTED: 
//            RightMotorSpeed(50);
//            LeftMotorSpeed(-50);
//            ES_Timer_InitTimer(ENGAGE_TIMER, 300);
            Stop();
            nextState = ForwardDelayState;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
            
            break;
//        case ES_TIMEOUT:
//            Stop();
//            nextState = ChargeState;
//            makeTransition = TRUE;
//            ThisEvent.EventType = ES_NO_EVENT;
//        break;
     
        default: break;
        }

    break;    
    
    case ForwardDelayState:
        switch(ThisEvent.EventType){ 
            case ES_ENTRY:
                Forward(75);
                ES_Timer_InitTimer(CHARGE_TIMER, 1500);
            break;
            case ES_TIMEOUT:
                Stop();
                nextState = BufferState;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            break;
            default:break;
        }
    break;
        
    case BufferState:
        switch(ThisEvent.EventType){ 
            case ES_ENTRY:
                TurnRight(50);
                ES_Timer_InitTimer(CHARGE_TIMER, 100);
            break;
            case ES_TIMEOUT:
                Stop();
                nextState = ChargeState;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            break;
            default:break;
        }
        break;
    
    case ChargeState: // in the first state, replace this with correct names
        switch (ThisEvent.EventType) {
        case ES_ENTRY:
//            printf("\r\b ENTERED CHARGE STATE");
//            if (shotsFired == 3){
//                shotsFired= 0;
//                nextState = ExitSub; 
//                makeTransition = TRUE;
//                ThisEvent.EventType = OUTOFAMMO;
//                
//            } else if (shotsFired > 1){
//                Fire(FIREON);
//                ES_Timer_InitTimer(CHARGE_TIMER, 200);
//            }else{
//                Charge(100);
//                Fire(FIREON);
//                // insert timer for 1.5 seconds 
//
//                ES_Timer_InitTimer(CHARGE_TIMER, 2500);
//            }
            Charge(100);
            ES_Timer_InitTimer(CHARGE_TIMER, 2500);
            break;

        case ES_TIMEOUT:
            if (ThisEvent.EventParam == CHARGE_TIMER){ 
                nextState = RCKick;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
                printf("\r\n Leaving charge state");
                }
//            Fire(FIREOFF);
//            DELAY(A_LOT);
//            Fire(FIREON);
//            DELAY(A_LOT);
//            Fire(FIREOFF);
//            DELAY(A_LOT);
//            Fire(FIREON);
//            DELAY(A_LOT);
//            Fire(FIREOFF);
//            DELAY(A_LOT);
//            Fire(FIREON);
//            DELAY(A_LOT);
            //nextState = ExitSub;

        break;
        default: break;
        }
        break;
        
    case RCKick:
        printf("RC kicked!!\r\n");
        switch(ThisEvent.EventType){
            case ES_ENTRY:
//                Fire(FIREOFF);
//                ES_Timer_InitTimer(CHARGE_TIMER, 200);
                Fire(FIREOFF);
                DELAY(A_LOT);
                Fire(FIREON);
                DELAY(A_LOT);
                Fire(FIREOFF);
                DELAY(A_LOT);
                Fire(FIREON);
                DELAY(A_LOT);
                Fire(FIREOFF);
                DELAY(A_LOT);
                Fire(FIREON);
                DELAY(A_LOT);

                nextState = ExitSub;
                makeTransition = TRUE;
                ThisEvent.EventType = OUTOFAMMO;
                printf("\r\n Leaving charge state");
                
            break;

//            case GOALIE_NOT_DETECTED:
//                Fire(FIREOFF);
//                DELAY(A_LOT);
//                Fire(FIREON);
//                DELAY(A_LOT);
//                Fire(FIREOFF);
//                DELAY(A_LOT);
//                Fire(FIREON);
//                DELAY(A_LOT);
//                Fire(FIREOFF);
//                DELAY(A_LOT);
//                Fire(FIREON);
//                DELAY(A_LOT);
//
//                nextState = ExitSub;
//                makeTransition = TRUE;
//                ThisEvent.EventType = OUTOFAMMO;
//                printf("\r\n Leaving charge state");
//            break;
//            case ES_TIMEOUT:
//                if (ThisEvent.EventParam = CHARGE_TIMER ){
//                    printf("FIRED OFF\r\n");
//                    nextState = ChargeState;
//                    shotsFired++;
//                    makeTransition = TRUE;
//                    ThisEvent.EventType = ES_NO_EVENT;
//                }
//            break;
            default:break;
        }
        break;
        

    
    case ExitSub:
        if (ThisEvent.EventType == ES_ENTRY){
            Stop();
            Charge(0);
            Fire(FIREON);
            nextState = RotateState;
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
