#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/ProjectCode.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/ProjectCode.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=C:/Users/lusukim/Desktop/ECE118/src/AD.c C:/Users/lusukim/Desktop/ECE118/src/BOARD.c C:/Users/lusukim/Desktop/ECE118/src/DriveBase.c C:/Users/lusukim/Desktop/ECE118/src/ES_CheckEvents.c C:/Users/lusukim/Desktop/ECE118/src/ES_Framework.c C:/Users/lusukim/Desktop/ECE118/src/ES_KeyboardInput.c C:/Users/lusukim/Desktop/ECE118/src/ES_PostList.c C:/Users/lusukim/Desktop/ECE118/src/ES_Queue.c C:/Users/lusukim/Desktop/ECE118/src/ES_TattleTale.c C:/Users/lusukim/Desktop/ECE118/src/ES_Timers.c C:/Users/lusukim/Desktop/ECE118/src/EngageSubHSM1.c C:/Users/lusukim/Desktop/ECE118/src/IO_Ports.c C:/Users/lusukim/Desktop/ECE118/src/LED.c C:/Users/lusukim/Desktop/ECE118/src/MainHSM.c C:/Users/lusukim/Desktop/ECE118/src/RC_Servo.c C:/Users/lusukim/Desktop/ECE118/src/SearchSubHSM1.c C:/Users/lusukim/Desktop/ECE118/src/Stepper.c C:/Users/lusukim/Desktop/ECE118/src/pwm.c C:/Users/lusukim/Desktop/ECE118/src/roach.c C:/Users/lusukim/Desktop/ECE118/src/serial.c C:/Users/lusukim/Desktop/ECE118/src/timers.c C:/Users/lusukim/Desktop/ECE118/templates/TemplateES_Main.c C:/Users/lusukim/Desktop/ECE118/src/FireSubHSM.c C:/Users/lusukim/Desktop/ECE118/src/DriveHomeSubHSM.c C:/Users/lusukim/Desktop/ECE118/src/TapeService.c C:/Users/lusukim/Desktop/ECE118/src/BumperService.c C:/Users/lusukim/Desktop/ECE118/src/BeaconService.c C:/Users/lusukim/Desktop/ECE118/src/LoadEngageSubHSM.c C:/Users/lusukim/Desktop/ECE118/src/TwoEngageSubHSM.c C:/Users/lusukim/Desktop/ECE118/src/CheckCrossSubHSM.c C:/Users/lusukim/Desktop/ECE118/src/ReverseToWallSubHSM.c C:/Users/lusukim/Desktop/ECE118/src/ReturnToLoadSubHSM.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1439234153/AD.o ${OBJECTDIR}/_ext/1439234153/BOARD.o ${OBJECTDIR}/_ext/1439234153/DriveBase.o ${OBJECTDIR}/_ext/1439234153/ES_CheckEvents.o ${OBJECTDIR}/_ext/1439234153/ES_Framework.o ${OBJECTDIR}/_ext/1439234153/ES_KeyboardInput.o ${OBJECTDIR}/_ext/1439234153/ES_PostList.o ${OBJECTDIR}/_ext/1439234153/ES_Queue.o ${OBJECTDIR}/_ext/1439234153/ES_TattleTale.o ${OBJECTDIR}/_ext/1439234153/ES_Timers.o ${OBJECTDIR}/_ext/1439234153/EngageSubHSM1.o ${OBJECTDIR}/_ext/1439234153/IO_Ports.o ${OBJECTDIR}/_ext/1439234153/LED.o ${OBJECTDIR}/_ext/1439234153/MainHSM.o ${OBJECTDIR}/_ext/1439234153/RC_Servo.o ${OBJECTDIR}/_ext/1439234153/SearchSubHSM1.o ${OBJECTDIR}/_ext/1439234153/Stepper.o ${OBJECTDIR}/_ext/1439234153/pwm.o ${OBJECTDIR}/_ext/1439234153/roach.o ${OBJECTDIR}/_ext/1439234153/serial.o ${OBJECTDIR}/_ext/1439234153/timers.o ${OBJECTDIR}/_ext/2005615956/TemplateES_Main.o ${OBJECTDIR}/_ext/1439234153/FireSubHSM.o ${OBJECTDIR}/_ext/1439234153/DriveHomeSubHSM.o ${OBJECTDIR}/_ext/1439234153/TapeService.o ${OBJECTDIR}/_ext/1439234153/BumperService.o ${OBJECTDIR}/_ext/1439234153/BeaconService.o ${OBJECTDIR}/_ext/1439234153/LoadEngageSubHSM.o ${OBJECTDIR}/_ext/1439234153/TwoEngageSubHSM.o ${OBJECTDIR}/_ext/1439234153/CheckCrossSubHSM.o ${OBJECTDIR}/_ext/1439234153/ReverseToWallSubHSM.o ${OBJECTDIR}/_ext/1439234153/ReturnToLoadSubHSM.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1439234153/AD.o.d ${OBJECTDIR}/_ext/1439234153/BOARD.o.d ${OBJECTDIR}/_ext/1439234153/DriveBase.o.d ${OBJECTDIR}/_ext/1439234153/ES_CheckEvents.o.d ${OBJECTDIR}/_ext/1439234153/ES_Framework.o.d ${OBJECTDIR}/_ext/1439234153/ES_KeyboardInput.o.d ${OBJECTDIR}/_ext/1439234153/ES_PostList.o.d ${OBJECTDIR}/_ext/1439234153/ES_Queue.o.d ${OBJECTDIR}/_ext/1439234153/ES_TattleTale.o.d ${OBJECTDIR}/_ext/1439234153/ES_Timers.o.d ${OBJECTDIR}/_ext/1439234153/EngageSubHSM1.o.d ${OBJECTDIR}/_ext/1439234153/IO_Ports.o.d ${OBJECTDIR}/_ext/1439234153/LED.o.d ${OBJECTDIR}/_ext/1439234153/MainHSM.o.d ${OBJECTDIR}/_ext/1439234153/RC_Servo.o.d ${OBJECTDIR}/_ext/1439234153/SearchSubHSM1.o.d ${OBJECTDIR}/_ext/1439234153/Stepper.o.d ${OBJECTDIR}/_ext/1439234153/pwm.o.d ${OBJECTDIR}/_ext/1439234153/roach.o.d ${OBJECTDIR}/_ext/1439234153/serial.o.d ${OBJECTDIR}/_ext/1439234153/timers.o.d ${OBJECTDIR}/_ext/2005615956/TemplateES_Main.o.d ${OBJECTDIR}/_ext/1439234153/FireSubHSM.o.d ${OBJECTDIR}/_ext/1439234153/DriveHomeSubHSM.o.d ${OBJECTDIR}/_ext/1439234153/TapeService.o.d ${OBJECTDIR}/_ext/1439234153/BumperService.o.d ${OBJECTDIR}/_ext/1439234153/BeaconService.o.d ${OBJECTDIR}/_ext/1439234153/LoadEngageSubHSM.o.d ${OBJECTDIR}/_ext/1439234153/TwoEngageSubHSM.o.d ${OBJECTDIR}/_ext/1439234153/CheckCrossSubHSM.o.d ${OBJECTDIR}/_ext/1439234153/ReverseToWallSubHSM.o.d ${OBJECTDIR}/_ext/1439234153/ReturnToLoadSubHSM.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1439234153/AD.o ${OBJECTDIR}/_ext/1439234153/BOARD.o ${OBJECTDIR}/_ext/1439234153/DriveBase.o ${OBJECTDIR}/_ext/1439234153/ES_CheckEvents.o ${OBJECTDIR}/_ext/1439234153/ES_Framework.o ${OBJECTDIR}/_ext/1439234153/ES_KeyboardInput.o ${OBJECTDIR}/_ext/1439234153/ES_PostList.o ${OBJECTDIR}/_ext/1439234153/ES_Queue.o ${OBJECTDIR}/_ext/1439234153/ES_TattleTale.o ${OBJECTDIR}/_ext/1439234153/ES_Timers.o ${OBJECTDIR}/_ext/1439234153/EngageSubHSM1.o ${OBJECTDIR}/_ext/1439234153/IO_Ports.o ${OBJECTDIR}/_ext/1439234153/LED.o ${OBJECTDIR}/_ext/1439234153/MainHSM.o ${OBJECTDIR}/_ext/1439234153/RC_Servo.o ${OBJECTDIR}/_ext/1439234153/SearchSubHSM1.o ${OBJECTDIR}/_ext/1439234153/Stepper.o ${OBJECTDIR}/_ext/1439234153/pwm.o ${OBJECTDIR}/_ext/1439234153/roach.o ${OBJECTDIR}/_ext/1439234153/serial.o ${OBJECTDIR}/_ext/1439234153/timers.o ${OBJECTDIR}/_ext/2005615956/TemplateES_Main.o ${OBJECTDIR}/_ext/1439234153/FireSubHSM.o ${OBJECTDIR}/_ext/1439234153/DriveHomeSubHSM.o ${OBJECTDIR}/_ext/1439234153/TapeService.o ${OBJECTDIR}/_ext/1439234153/BumperService.o ${OBJECTDIR}/_ext/1439234153/BeaconService.o ${OBJECTDIR}/_ext/1439234153/LoadEngageSubHSM.o ${OBJECTDIR}/_ext/1439234153/TwoEngageSubHSM.o ${OBJECTDIR}/_ext/1439234153/CheckCrossSubHSM.o ${OBJECTDIR}/_ext/1439234153/ReverseToWallSubHSM.o ${OBJECTDIR}/_ext/1439234153/ReturnToLoadSubHSM.o

# Source Files
SOURCEFILES=C:/Users/lusukim/Desktop/ECE118/src/AD.c C:/Users/lusukim/Desktop/ECE118/src/BOARD.c C:/Users/lusukim/Desktop/ECE118/src/DriveBase.c C:/Users/lusukim/Desktop/ECE118/src/ES_CheckEvents.c C:/Users/lusukim/Desktop/ECE118/src/ES_Framework.c C:/Users/lusukim/Desktop/ECE118/src/ES_KeyboardInput.c C:/Users/lusukim/Desktop/ECE118/src/ES_PostList.c C:/Users/lusukim/Desktop/ECE118/src/ES_Queue.c C:/Users/lusukim/Desktop/ECE118/src/ES_TattleTale.c C:/Users/lusukim/Desktop/ECE118/src/ES_Timers.c C:/Users/lusukim/Desktop/ECE118/src/EngageSubHSM1.c C:/Users/lusukim/Desktop/ECE118/src/IO_Ports.c C:/Users/lusukim/Desktop/ECE118/src/LED.c C:/Users/lusukim/Desktop/ECE118/src/MainHSM.c C:/Users/lusukim/Desktop/ECE118/src/RC_Servo.c C:/Users/lusukim/Desktop/ECE118/src/SearchSubHSM1.c C:/Users/lusukim/Desktop/ECE118/src/Stepper.c C:/Users/lusukim/Desktop/ECE118/src/pwm.c C:/Users/lusukim/Desktop/ECE118/src/roach.c C:/Users/lusukim/Desktop/ECE118/src/serial.c C:/Users/lusukim/Desktop/ECE118/src/timers.c C:/Users/lusukim/Desktop/ECE118/templates/TemplateES_Main.c C:/Users/lusukim/Desktop/ECE118/src/FireSubHSM.c C:/Users/lusukim/Desktop/ECE118/src/DriveHomeSubHSM.c C:/Users/lusukim/Desktop/ECE118/src/TapeService.c C:/Users/lusukim/Desktop/ECE118/src/BumperService.c C:/Users/lusukim/Desktop/ECE118/src/BeaconService.c C:/Users/lusukim/Desktop/ECE118/src/LoadEngageSubHSM.c C:/Users/lusukim/Desktop/ECE118/src/TwoEngageSubHSM.c C:/Users/lusukim/Desktop/ECE118/src/CheckCrossSubHSM.c C:/Users/lusukim/Desktop/ECE118/src/ReverseToWallSubHSM.c C:/Users/lusukim/Desktop/ECE118/src/ReturnToLoadSubHSM.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

# The following macros may be used in the pre and post step lines
_/_=\\
ShExtension=.bat
Device=PIC32MX320F128H
ProjectDir="C:\Users\lusukim\Desktop\ProjectCode.X"
ProjectName=ProjectCode
ConfName=default
ImagePath="${DISTDIR}\ProjectCode.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ImageDir="${DISTDIR}"
ImageName="ProjectCode.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IsDebug="true"
else
IsDebug="false"
endif

.build-conf:  .pre ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/ProjectCode.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX320F128H
MP_LINKER_FILE_OPTION=,--script="C:\ECE118\bootloader320.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1439234153/AD.o: C:/Users/lusukim/Desktop/ECE118/src/AD.c  .generated_files/flags/default/17cd855c43a9e84e0fdb4fde3a6d625898991fcf .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/AD.o.d" -o ${OBJECTDIR}/_ext/1439234153/AD.o C:/Users/lusukim/Desktop/ECE118/src/AD.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1439234153/BOARD.o: C:/Users/lusukim/Desktop/ECE118/src/BOARD.c  .generated_files/flags/default/13d0a43633903174c11afd3c58ddce7642fcd594 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/BOARD.o.d" -o ${OBJECTDIR}/_ext/1439234153/BOARD.o C:/Users/lusukim/Desktop/ECE118/src/BOARD.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1439234153/DriveBase.o: C:/Users/lusukim/Desktop/ECE118/src/DriveBase.c  .generated_files/flags/default/4410593daa72387b71dee2f157783164b630927f .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/DriveBase.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/DriveBase.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/DriveBase.o.d" -o ${OBJECTDIR}/_ext/1439234153/DriveBase.o C:/Users/lusukim/Desktop/ECE118/src/DriveBase.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1439234153/ES_CheckEvents.o: C:/Users/lusukim/Desktop/ECE118/src/ES_CheckEvents.c  .generated_files/flags/default/47a3e238e68f44d9480e7e05989bd3c9011e7e94 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/ES_CheckEvents.o.d" -o ${OBJECTDIR}/_ext/1439234153/ES_CheckEvents.o C:/Users/lusukim/Desktop/ECE118/src/ES_CheckEvents.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1439234153/ES_Framework.o: C:/Users/lusukim/Desktop/ECE118/src/ES_Framework.c  .generated_files/flags/default/81460e972c53c619468839905d0baa4e3e78e183 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/ES_Framework.o.d" -o ${OBJECTDIR}/_ext/1439234153/ES_Framework.o C:/Users/lusukim/Desktop/ECE118/src/ES_Framework.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1439234153/ES_KeyboardInput.o: C:/Users/lusukim/Desktop/ECE118/src/ES_KeyboardInput.c  .generated_files/flags/default/7b6efedc278f11fe3e375a53904526451acc7af .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/_ext/1439234153/ES_KeyboardInput.o C:/Users/lusukim/Desktop/ECE118/src/ES_KeyboardInput.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1439234153/ES_PostList.o: C:/Users/lusukim/Desktop/ECE118/src/ES_PostList.c  .generated_files/flags/default/3deb0b80ae899f3c21585d1b8e73cba081346190 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/ES_PostList.o.d" -o ${OBJECTDIR}/_ext/1439234153/ES_PostList.o C:/Users/lusukim/Desktop/ECE118/src/ES_PostList.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1439234153/ES_Queue.o: C:/Users/lusukim/Desktop/ECE118/src/ES_Queue.c  .generated_files/flags/default/71fd1641d9ee474858580f87a9561549f97be8f1 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/ES_Queue.o.d" -o ${OBJECTDIR}/_ext/1439234153/ES_Queue.o C:/Users/lusukim/Desktop/ECE118/src/ES_Queue.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1439234153/ES_TattleTale.o: C:/Users/lusukim/Desktop/ECE118/src/ES_TattleTale.c  .generated_files/flags/default/e2ab517889953ce25986c032ee30301d9deaa0d9 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/ES_TattleTale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/ES_TattleTale.o.d" -o ${OBJECTDIR}/_ext/1439234153/ES_TattleTale.o C:/Users/lusukim/Desktop/ECE118/src/ES_TattleTale.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1439234153/ES_Timers.o: C:/Users/lusukim/Desktop/ECE118/src/ES_Timers.c  .generated_files/flags/default/66851aa02c6fa93cc922dbcd65fceecc256357ed .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/ES_Timers.o.d" -o ${OBJECTDIR}/_ext/1439234153/ES_Timers.o C:/Users/lusukim/Desktop/ECE118/src/ES_Timers.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1439234153/EngageSubHSM1.o: C:/Users/lusukim/Desktop/ECE118/src/EngageSubHSM1.c  .generated_files/flags/default/11c82929ca7bf05e002ed78ff8376dd9819805df .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/EngageSubHSM1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/EngageSubHSM1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/EngageSubHSM1.o.d" -o ${OBJECTDIR}/_ext/1439234153/EngageSubHSM1.o C:/Users/lusukim/Desktop/ECE118/src/EngageSubHSM1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1439234153/IO_Ports.o: C:/Users/lusukim/Desktop/ECE118/src/IO_Ports.c  .generated_files/flags/default/2eccadbd908e8ad4d5e3e44272e977b6708a1387 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/IO_Ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/IO_Ports.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/IO_Ports.o.d" -o ${OBJECTDIR}/_ext/1439234153/IO_Ports.o C:/Users/lusukim/Desktop/ECE118/src/IO_Ports.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1439234153/LED.o: C:/Users/lusukim/Desktop/ECE118/src/LED.c  .generated_files/flags/default/87add62762dd0638e51c0ac26b497adeb101b6a2 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/LED.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/LED.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/LED.o.d" -o ${OBJECTDIR}/_ext/1439234153/LED.o C:/Users/lusukim/Desktop/ECE118/src/LED.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1439234153/MainHSM.o: C:/Users/lusukim/Desktop/ECE118/src/MainHSM.c  .generated_files/flags/default/e22aab25961e4e1f692bfc8898309c00c40df107 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/MainHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/MainHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/MainHSM.o.d" -o ${OBJECTDIR}/_ext/1439234153/MainHSM.o C:/Users/lusukim/Desktop/ECE118/src/MainHSM.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1439234153/RC_Servo.o: C:/Users/lusukim/Desktop/ECE118/src/RC_Servo.c  .generated_files/flags/default/159c0a795f486cb1954cfb3f453675b5f20ccb09 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/RC_Servo.o.d" -o ${OBJECTDIR}/_ext/1439234153/RC_Servo.o C:/Users/lusukim/Desktop/ECE118/src/RC_Servo.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1439234153/SearchSubHSM1.o: C:/Users/lusukim/Desktop/ECE118/src/SearchSubHSM1.c  .generated_files/flags/default/9239870e480e818a4044b1d4a18469fdb23bd99c .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/SearchSubHSM1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/SearchSubHSM1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/SearchSubHSM1.o.d" -o ${OBJECTDIR}/_ext/1439234153/SearchSubHSM1.o C:/Users/lusukim/Desktop/ECE118/src/SearchSubHSM1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1439234153/Stepper.o: C:/Users/lusukim/Desktop/ECE118/src/Stepper.c  .generated_files/flags/default/597d97898b99e1b1336e0ff68a93d9f72fd5727 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/Stepper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/Stepper.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/Stepper.o.d" -o ${OBJECTDIR}/_ext/1439234153/Stepper.o C:/Users/lusukim/Desktop/ECE118/src/Stepper.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1439234153/pwm.o: C:/Users/lusukim/Desktop/ECE118/src/pwm.c  .generated_files/flags/default/1214e6a0524e2ec910dfc9fd15ae88faa7d0b1b2 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/pwm.o.d" -o ${OBJECTDIR}/_ext/1439234153/pwm.o C:/Users/lusukim/Desktop/ECE118/src/pwm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1439234153/roach.o: C:/Users/lusukim/Desktop/ECE118/src/roach.c  .generated_files/flags/default/64c55cd166ec60ffa2e07ef1ad4d4d3ebda7adb6 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/roach.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/roach.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/roach.o.d" -o ${OBJECTDIR}/_ext/1439234153/roach.o C:/Users/lusukim/Desktop/ECE118/src/roach.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1439234153/serial.o: C:/Users/lusukim/Desktop/ECE118/src/serial.c  .generated_files/flags/default/1be88307cb1b9e04c1be52209a9f6aeb17c23009 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/serial.o.d" -o ${OBJECTDIR}/_ext/1439234153/serial.o C:/Users/lusukim/Desktop/ECE118/src/serial.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1439234153/timers.o: C:/Users/lusukim/Desktop/ECE118/src/timers.c  .generated_files/flags/default/c6da964e7e5816850d2789dda6763df7fa03366b .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/timers.o.d" -o ${OBJECTDIR}/_ext/1439234153/timers.o C:/Users/lusukim/Desktop/ECE118/src/timers.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2005615956/TemplateES_Main.o: C:/Users/lusukim/Desktop/ECE118/templates/TemplateES_Main.c  .generated_files/flags/default/1ff51825af5da1551fe6856698e50e2afb4bf1f9 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/2005615956" 
	@${RM} ${OBJECTDIR}/_ext/2005615956/TemplateES_Main.o.d 
	@${RM} ${OBJECTDIR}/_ext/2005615956/TemplateES_Main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/2005615956/TemplateES_Main.o.d" -o ${OBJECTDIR}/_ext/2005615956/TemplateES_Main.o C:/Users/lusukim/Desktop/ECE118/templates/TemplateES_Main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1439234153/FireSubHSM.o: C:/Users/lusukim/Desktop/ECE118/src/FireSubHSM.c  .generated_files/flags/default/8cd650903938f12f96e3dea5540eb0514bafd181 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/FireSubHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/FireSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/FireSubHSM.o.d" -o ${OBJECTDIR}/_ext/1439234153/FireSubHSM.o C:/Users/lusukim/Desktop/ECE118/src/FireSubHSM.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1439234153/DriveHomeSubHSM.o: C:/Users/lusukim/Desktop/ECE118/src/DriveHomeSubHSM.c  .generated_files/flags/default/955edd6ba92f720a107ff720b5977ae74b3b04ab .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/DriveHomeSubHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/DriveHomeSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/DriveHomeSubHSM.o.d" -o ${OBJECTDIR}/_ext/1439234153/DriveHomeSubHSM.o C:/Users/lusukim/Desktop/ECE118/src/DriveHomeSubHSM.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1439234153/TapeService.o: C:/Users/lusukim/Desktop/ECE118/src/TapeService.c  .generated_files/flags/default/dfc77c9f9f24d1c67c1a7ba4763b4c9d8f90c624 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/TapeService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/TapeService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/TapeService.o.d" -o ${OBJECTDIR}/_ext/1439234153/TapeService.o C:/Users/lusukim/Desktop/ECE118/src/TapeService.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1439234153/BumperService.o: C:/Users/lusukim/Desktop/ECE118/src/BumperService.c  .generated_files/flags/default/4c8c741fb8f76182bd1ed0bd3db84689bdd7a37 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/BumperService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/BumperService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/BumperService.o.d" -o ${OBJECTDIR}/_ext/1439234153/BumperService.o C:/Users/lusukim/Desktop/ECE118/src/BumperService.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1439234153/BeaconService.o: C:/Users/lusukim/Desktop/ECE118/src/BeaconService.c  .generated_files/flags/default/4eb0052e3c0bca949c69b58e13cf2ee677c84eaa .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/BeaconService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/BeaconService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/BeaconService.o.d" -o ${OBJECTDIR}/_ext/1439234153/BeaconService.o C:/Users/lusukim/Desktop/ECE118/src/BeaconService.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1439234153/LoadEngageSubHSM.o: C:/Users/lusukim/Desktop/ECE118/src/LoadEngageSubHSM.c  .generated_files/flags/default/8b8caa0156050273e974df46b4e304a00eb02aa5 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/LoadEngageSubHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/LoadEngageSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/LoadEngageSubHSM.o.d" -o ${OBJECTDIR}/_ext/1439234153/LoadEngageSubHSM.o C:/Users/lusukim/Desktop/ECE118/src/LoadEngageSubHSM.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1439234153/TwoEngageSubHSM.o: C:/Users/lusukim/Desktop/ECE118/src/TwoEngageSubHSM.c  .generated_files/flags/default/69c81db809e486c7862b1a2309cddd8e615ea1ed .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/TwoEngageSubHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/TwoEngageSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/TwoEngageSubHSM.o.d" -o ${OBJECTDIR}/_ext/1439234153/TwoEngageSubHSM.o C:/Users/lusukim/Desktop/ECE118/src/TwoEngageSubHSM.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1439234153/CheckCrossSubHSM.o: C:/Users/lusukim/Desktop/ECE118/src/CheckCrossSubHSM.c  .generated_files/flags/default/6198899617bb982738c452b214ee03840ed1251e .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/CheckCrossSubHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/CheckCrossSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/CheckCrossSubHSM.o.d" -o ${OBJECTDIR}/_ext/1439234153/CheckCrossSubHSM.o C:/Users/lusukim/Desktop/ECE118/src/CheckCrossSubHSM.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1439234153/ReverseToWallSubHSM.o: C:/Users/lusukim/Desktop/ECE118/src/ReverseToWallSubHSM.c  .generated_files/flags/default/b38d92b86dbb7e245cd924ee55091ba5dabe33c3 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/ReverseToWallSubHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/ReverseToWallSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/ReverseToWallSubHSM.o.d" -o ${OBJECTDIR}/_ext/1439234153/ReverseToWallSubHSM.o C:/Users/lusukim/Desktop/ECE118/src/ReverseToWallSubHSM.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1439234153/ReturnToLoadSubHSM.o: C:/Users/lusukim/Desktop/ECE118/src/ReturnToLoadSubHSM.c  .generated_files/flags/default/ecc49cf0c5510dfae18cd806a9687abc5d85011e .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/ReturnToLoadSubHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/ReturnToLoadSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/ReturnToLoadSubHSM.o.d" -o ${OBJECTDIR}/_ext/1439234153/ReturnToLoadSubHSM.o C:/Users/lusukim/Desktop/ECE118/src/ReturnToLoadSubHSM.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1439234153/AD.o: C:/Users/lusukim/Desktop/ECE118/src/AD.c  .generated_files/flags/default/53dc8f69e83b0a414a5f55430ce037917d7bc677 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/AD.o.d" -o ${OBJECTDIR}/_ext/1439234153/AD.o C:/Users/lusukim/Desktop/ECE118/src/AD.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1439234153/BOARD.o: C:/Users/lusukim/Desktop/ECE118/src/BOARD.c  .generated_files/flags/default/abd0bb530c82052553635330a29226ada08e76b1 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/BOARD.o.d" -o ${OBJECTDIR}/_ext/1439234153/BOARD.o C:/Users/lusukim/Desktop/ECE118/src/BOARD.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1439234153/DriveBase.o: C:/Users/lusukim/Desktop/ECE118/src/DriveBase.c  .generated_files/flags/default/ab5b79a5eb48a6ce6794786459465e4236ba17c5 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/DriveBase.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/DriveBase.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/DriveBase.o.d" -o ${OBJECTDIR}/_ext/1439234153/DriveBase.o C:/Users/lusukim/Desktop/ECE118/src/DriveBase.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1439234153/ES_CheckEvents.o: C:/Users/lusukim/Desktop/ECE118/src/ES_CheckEvents.c  .generated_files/flags/default/3aeec4cb6ce9489b2a00452293b944fd74931624 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/ES_CheckEvents.o.d" -o ${OBJECTDIR}/_ext/1439234153/ES_CheckEvents.o C:/Users/lusukim/Desktop/ECE118/src/ES_CheckEvents.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1439234153/ES_Framework.o: C:/Users/lusukim/Desktop/ECE118/src/ES_Framework.c  .generated_files/flags/default/55a97e18825b65ba733adcdd148ec18a64e048df .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/ES_Framework.o.d" -o ${OBJECTDIR}/_ext/1439234153/ES_Framework.o C:/Users/lusukim/Desktop/ECE118/src/ES_Framework.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1439234153/ES_KeyboardInput.o: C:/Users/lusukim/Desktop/ECE118/src/ES_KeyboardInput.c  .generated_files/flags/default/3dc989db68e31e4d694644e0c50dda5a74486345 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/_ext/1439234153/ES_KeyboardInput.o C:/Users/lusukim/Desktop/ECE118/src/ES_KeyboardInput.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1439234153/ES_PostList.o: C:/Users/lusukim/Desktop/ECE118/src/ES_PostList.c  .generated_files/flags/default/f0956c605b86acf8c3e24b8082b3c9af2b4412f8 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/ES_PostList.o.d" -o ${OBJECTDIR}/_ext/1439234153/ES_PostList.o C:/Users/lusukim/Desktop/ECE118/src/ES_PostList.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1439234153/ES_Queue.o: C:/Users/lusukim/Desktop/ECE118/src/ES_Queue.c  .generated_files/flags/default/28fbcd92ce907b1359c59414f5fec14f8c363669 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/ES_Queue.o.d" -o ${OBJECTDIR}/_ext/1439234153/ES_Queue.o C:/Users/lusukim/Desktop/ECE118/src/ES_Queue.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1439234153/ES_TattleTale.o: C:/Users/lusukim/Desktop/ECE118/src/ES_TattleTale.c  .generated_files/flags/default/508f643a313135fc9df5c119ab260a4c2d3aa933 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/ES_TattleTale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/ES_TattleTale.o.d" -o ${OBJECTDIR}/_ext/1439234153/ES_TattleTale.o C:/Users/lusukim/Desktop/ECE118/src/ES_TattleTale.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1439234153/ES_Timers.o: C:/Users/lusukim/Desktop/ECE118/src/ES_Timers.c  .generated_files/flags/default/de9fcec2a20d0696659e294e6b8487534519ac9e .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/ES_Timers.o.d" -o ${OBJECTDIR}/_ext/1439234153/ES_Timers.o C:/Users/lusukim/Desktop/ECE118/src/ES_Timers.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1439234153/EngageSubHSM1.o: C:/Users/lusukim/Desktop/ECE118/src/EngageSubHSM1.c  .generated_files/flags/default/d6c2cdb661138c22dca0313052ece5a8868b9eec .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/EngageSubHSM1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/EngageSubHSM1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/EngageSubHSM1.o.d" -o ${OBJECTDIR}/_ext/1439234153/EngageSubHSM1.o C:/Users/lusukim/Desktop/ECE118/src/EngageSubHSM1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1439234153/IO_Ports.o: C:/Users/lusukim/Desktop/ECE118/src/IO_Ports.c  .generated_files/flags/default/224170879b1e998b80d515cde56deac12ee5515f .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/IO_Ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/IO_Ports.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/IO_Ports.o.d" -o ${OBJECTDIR}/_ext/1439234153/IO_Ports.o C:/Users/lusukim/Desktop/ECE118/src/IO_Ports.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1439234153/LED.o: C:/Users/lusukim/Desktop/ECE118/src/LED.c  .generated_files/flags/default/690cfde8d50949977e95666dd6bf85f0569340bd .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/LED.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/LED.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/LED.o.d" -o ${OBJECTDIR}/_ext/1439234153/LED.o C:/Users/lusukim/Desktop/ECE118/src/LED.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1439234153/MainHSM.o: C:/Users/lusukim/Desktop/ECE118/src/MainHSM.c  .generated_files/flags/default/cae7979d5fc50fa4eb4059e50afcb5560f9a40c2 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/MainHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/MainHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/MainHSM.o.d" -o ${OBJECTDIR}/_ext/1439234153/MainHSM.o C:/Users/lusukim/Desktop/ECE118/src/MainHSM.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1439234153/RC_Servo.o: C:/Users/lusukim/Desktop/ECE118/src/RC_Servo.c  .generated_files/flags/default/99b1013de23861b76d2cd007c93688987f7aed4d .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/RC_Servo.o.d" -o ${OBJECTDIR}/_ext/1439234153/RC_Servo.o C:/Users/lusukim/Desktop/ECE118/src/RC_Servo.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1439234153/SearchSubHSM1.o: C:/Users/lusukim/Desktop/ECE118/src/SearchSubHSM1.c  .generated_files/flags/default/90ced77b41a6bd01176ec5b591c2c908bc4ffc39 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/SearchSubHSM1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/SearchSubHSM1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/SearchSubHSM1.o.d" -o ${OBJECTDIR}/_ext/1439234153/SearchSubHSM1.o C:/Users/lusukim/Desktop/ECE118/src/SearchSubHSM1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1439234153/Stepper.o: C:/Users/lusukim/Desktop/ECE118/src/Stepper.c  .generated_files/flags/default/341d074f8d945b378872c7c60e4734ef853132f5 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/Stepper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/Stepper.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/Stepper.o.d" -o ${OBJECTDIR}/_ext/1439234153/Stepper.o C:/Users/lusukim/Desktop/ECE118/src/Stepper.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1439234153/pwm.o: C:/Users/lusukim/Desktop/ECE118/src/pwm.c  .generated_files/flags/default/2d7a76e441bdbe6b3f8002e5773b4658553dcce6 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/pwm.o.d" -o ${OBJECTDIR}/_ext/1439234153/pwm.o C:/Users/lusukim/Desktop/ECE118/src/pwm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1439234153/roach.o: C:/Users/lusukim/Desktop/ECE118/src/roach.c  .generated_files/flags/default/6c5464df9942a719b6fbb0ccedb6430096cf5894 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/roach.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/roach.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/roach.o.d" -o ${OBJECTDIR}/_ext/1439234153/roach.o C:/Users/lusukim/Desktop/ECE118/src/roach.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1439234153/serial.o: C:/Users/lusukim/Desktop/ECE118/src/serial.c  .generated_files/flags/default/cccde0515185f03e932f7927f7403156f6b0fd60 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/serial.o.d" -o ${OBJECTDIR}/_ext/1439234153/serial.o C:/Users/lusukim/Desktop/ECE118/src/serial.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1439234153/timers.o: C:/Users/lusukim/Desktop/ECE118/src/timers.c  .generated_files/flags/default/324bf4d42efdb126405bd3b6052dda9c692b8c12 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/timers.o.d" -o ${OBJECTDIR}/_ext/1439234153/timers.o C:/Users/lusukim/Desktop/ECE118/src/timers.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2005615956/TemplateES_Main.o: C:/Users/lusukim/Desktop/ECE118/templates/TemplateES_Main.c  .generated_files/flags/default/5eb6c2a88d9103b19e5832cc30c99f3b1968f747 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/2005615956" 
	@${RM} ${OBJECTDIR}/_ext/2005615956/TemplateES_Main.o.d 
	@${RM} ${OBJECTDIR}/_ext/2005615956/TemplateES_Main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/2005615956/TemplateES_Main.o.d" -o ${OBJECTDIR}/_ext/2005615956/TemplateES_Main.o C:/Users/lusukim/Desktop/ECE118/templates/TemplateES_Main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1439234153/FireSubHSM.o: C:/Users/lusukim/Desktop/ECE118/src/FireSubHSM.c  .generated_files/flags/default/1a77a728dae4cc165d1f7be2b54208a5311056ae .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/FireSubHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/FireSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/FireSubHSM.o.d" -o ${OBJECTDIR}/_ext/1439234153/FireSubHSM.o C:/Users/lusukim/Desktop/ECE118/src/FireSubHSM.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1439234153/DriveHomeSubHSM.o: C:/Users/lusukim/Desktop/ECE118/src/DriveHomeSubHSM.c  .generated_files/flags/default/244cddaa78c9ef4fba61cf5ba8df58edcd956c0a .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/DriveHomeSubHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/DriveHomeSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/DriveHomeSubHSM.o.d" -o ${OBJECTDIR}/_ext/1439234153/DriveHomeSubHSM.o C:/Users/lusukim/Desktop/ECE118/src/DriveHomeSubHSM.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1439234153/TapeService.o: C:/Users/lusukim/Desktop/ECE118/src/TapeService.c  .generated_files/flags/default/72284db96074b4bb15589c05ef1c8ca10e31c39d .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/TapeService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/TapeService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/TapeService.o.d" -o ${OBJECTDIR}/_ext/1439234153/TapeService.o C:/Users/lusukim/Desktop/ECE118/src/TapeService.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1439234153/BumperService.o: C:/Users/lusukim/Desktop/ECE118/src/BumperService.c  .generated_files/flags/default/9ee31b0ed1df4a2490573f3b00bd9f242786a2d8 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/BumperService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/BumperService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/BumperService.o.d" -o ${OBJECTDIR}/_ext/1439234153/BumperService.o C:/Users/lusukim/Desktop/ECE118/src/BumperService.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1439234153/BeaconService.o: C:/Users/lusukim/Desktop/ECE118/src/BeaconService.c  .generated_files/flags/default/eb037571e48390ce222c6ab6dfdb570b7791fff3 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/BeaconService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/BeaconService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/BeaconService.o.d" -o ${OBJECTDIR}/_ext/1439234153/BeaconService.o C:/Users/lusukim/Desktop/ECE118/src/BeaconService.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1439234153/LoadEngageSubHSM.o: C:/Users/lusukim/Desktop/ECE118/src/LoadEngageSubHSM.c  .generated_files/flags/default/1bda95762e61d05d6db76f6180c7d3586796e252 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/LoadEngageSubHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/LoadEngageSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/LoadEngageSubHSM.o.d" -o ${OBJECTDIR}/_ext/1439234153/LoadEngageSubHSM.o C:/Users/lusukim/Desktop/ECE118/src/LoadEngageSubHSM.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1439234153/TwoEngageSubHSM.o: C:/Users/lusukim/Desktop/ECE118/src/TwoEngageSubHSM.c  .generated_files/flags/default/911e9bab0790fa7f2997fe2296f4bfbb40227f46 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/TwoEngageSubHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/TwoEngageSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/TwoEngageSubHSM.o.d" -o ${OBJECTDIR}/_ext/1439234153/TwoEngageSubHSM.o C:/Users/lusukim/Desktop/ECE118/src/TwoEngageSubHSM.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1439234153/CheckCrossSubHSM.o: C:/Users/lusukim/Desktop/ECE118/src/CheckCrossSubHSM.c  .generated_files/flags/default/2e7dcc39194d86d3e124224c6b19c475a133ebf3 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/CheckCrossSubHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/CheckCrossSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/CheckCrossSubHSM.o.d" -o ${OBJECTDIR}/_ext/1439234153/CheckCrossSubHSM.o C:/Users/lusukim/Desktop/ECE118/src/CheckCrossSubHSM.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1439234153/ReverseToWallSubHSM.o: C:/Users/lusukim/Desktop/ECE118/src/ReverseToWallSubHSM.c  .generated_files/flags/default/6f16b68a4c247262b8e5b40d4fe6c62681aced23 .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/ReverseToWallSubHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/ReverseToWallSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/ReverseToWallSubHSM.o.d" -o ${OBJECTDIR}/_ext/1439234153/ReverseToWallSubHSM.o C:/Users/lusukim/Desktop/ECE118/src/ReverseToWallSubHSM.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1439234153/ReturnToLoadSubHSM.o: C:/Users/lusukim/Desktop/ECE118/src/ReturnToLoadSubHSM.c  .generated_files/flags/default/ee6981816d84dc28df36be273bf873d76c923a4c .generated_files/flags/default/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1439234153" 
	@${RM} ${OBJECTDIR}/_ext/1439234153/ReturnToLoadSubHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1439234153/ReturnToLoadSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1439234153/ReturnToLoadSubHSM.o.d" -o ${OBJECTDIR}/_ext/1439234153/ReturnToLoadSubHSM.o C:/Users/lusukim/Desktop/ECE118/src/ReturnToLoadSubHSM.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/ProjectCode.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    C:/ECE118/bootloader320.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/ProjectCode.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=2000,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/ProjectCode.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   C:/ECE118/bootloader320.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/ProjectCode.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=2000,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/ProjectCode.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif

.pre:
	@echo "--------------------------------------"
	@echo "User defined pre-build step: [python C:\Users\lusukim\Desktop\ECE118\scripts\Enum_To_String.py]"
	@python C:\Users\lusukim\Desktop\ECE118\scripts\Enum_To_String.py
	@echo "--------------------------------------"

# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
