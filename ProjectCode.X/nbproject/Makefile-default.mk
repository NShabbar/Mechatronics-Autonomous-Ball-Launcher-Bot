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
SOURCEFILES_QUOTED_IF_SPACED=C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/AD.c C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/BOARD.c C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/DriveBase.c C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/DriveHomeSubHSM.c C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/EngageSubHSM1.c C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/ES_CheckEvents.c C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/ES_Framework.c C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/ES_KeyboardInput.c C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/ES_PostList.c C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/ES_Queue.c C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/ES_TattleTale.c C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/ES_Timers.c C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/FireSubHSM.c C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/IO_Ports.c C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/LED.c C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/MainHSM.c C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/NavigateLoadHSM.c C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/pwm.c C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/RC_Servo.c C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/roach.c C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/SearchSubHSM1.c C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/SensorService.c C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/serial.c C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/Stepper.c C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/timers.c C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/templates/TemplateES_Main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/14913217/AD.o ${OBJECTDIR}/_ext/14913217/BOARD.o ${OBJECTDIR}/_ext/14913217/DriveBase.o ${OBJECTDIR}/_ext/14913217/DriveHomeSubHSM.o ${OBJECTDIR}/_ext/14913217/EngageSubHSM1.o ${OBJECTDIR}/_ext/14913217/ES_CheckEvents.o ${OBJECTDIR}/_ext/14913217/ES_Framework.o ${OBJECTDIR}/_ext/14913217/ES_KeyboardInput.o ${OBJECTDIR}/_ext/14913217/ES_PostList.o ${OBJECTDIR}/_ext/14913217/ES_Queue.o ${OBJECTDIR}/_ext/14913217/ES_TattleTale.o ${OBJECTDIR}/_ext/14913217/ES_Timers.o ${OBJECTDIR}/_ext/14913217/FireSubHSM.o ${OBJECTDIR}/_ext/14913217/IO_Ports.o ${OBJECTDIR}/_ext/14913217/LED.o ${OBJECTDIR}/_ext/14913217/MainHSM.o ${OBJECTDIR}/_ext/14913217/NavigateLoadHSM.o ${OBJECTDIR}/_ext/14913217/pwm.o ${OBJECTDIR}/_ext/14913217/RC_Servo.o ${OBJECTDIR}/_ext/14913217/roach.o ${OBJECTDIR}/_ext/14913217/SearchSubHSM1.o ${OBJECTDIR}/_ext/14913217/SensorService.o ${OBJECTDIR}/_ext/14913217/serial.o ${OBJECTDIR}/_ext/14913217/Stepper.o ${OBJECTDIR}/_ext/14913217/timers.o ${OBJECTDIR}/_ext/1160100438/TemplateES_Main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/14913217/AD.o.d ${OBJECTDIR}/_ext/14913217/BOARD.o.d ${OBJECTDIR}/_ext/14913217/DriveBase.o.d ${OBJECTDIR}/_ext/14913217/DriveHomeSubHSM.o.d ${OBJECTDIR}/_ext/14913217/EngageSubHSM1.o.d ${OBJECTDIR}/_ext/14913217/ES_CheckEvents.o.d ${OBJECTDIR}/_ext/14913217/ES_Framework.o.d ${OBJECTDIR}/_ext/14913217/ES_KeyboardInput.o.d ${OBJECTDIR}/_ext/14913217/ES_PostList.o.d ${OBJECTDIR}/_ext/14913217/ES_Queue.o.d ${OBJECTDIR}/_ext/14913217/ES_TattleTale.o.d ${OBJECTDIR}/_ext/14913217/ES_Timers.o.d ${OBJECTDIR}/_ext/14913217/FireSubHSM.o.d ${OBJECTDIR}/_ext/14913217/IO_Ports.o.d ${OBJECTDIR}/_ext/14913217/LED.o.d ${OBJECTDIR}/_ext/14913217/MainHSM.o.d ${OBJECTDIR}/_ext/14913217/NavigateLoadHSM.o.d ${OBJECTDIR}/_ext/14913217/pwm.o.d ${OBJECTDIR}/_ext/14913217/RC_Servo.o.d ${OBJECTDIR}/_ext/14913217/roach.o.d ${OBJECTDIR}/_ext/14913217/SearchSubHSM1.o.d ${OBJECTDIR}/_ext/14913217/SensorService.o.d ${OBJECTDIR}/_ext/14913217/serial.o.d ${OBJECTDIR}/_ext/14913217/Stepper.o.d ${OBJECTDIR}/_ext/14913217/timers.o.d ${OBJECTDIR}/_ext/1160100438/TemplateES_Main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/14913217/AD.o ${OBJECTDIR}/_ext/14913217/BOARD.o ${OBJECTDIR}/_ext/14913217/DriveBase.o ${OBJECTDIR}/_ext/14913217/DriveHomeSubHSM.o ${OBJECTDIR}/_ext/14913217/EngageSubHSM1.o ${OBJECTDIR}/_ext/14913217/ES_CheckEvents.o ${OBJECTDIR}/_ext/14913217/ES_Framework.o ${OBJECTDIR}/_ext/14913217/ES_KeyboardInput.o ${OBJECTDIR}/_ext/14913217/ES_PostList.o ${OBJECTDIR}/_ext/14913217/ES_Queue.o ${OBJECTDIR}/_ext/14913217/ES_TattleTale.o ${OBJECTDIR}/_ext/14913217/ES_Timers.o ${OBJECTDIR}/_ext/14913217/FireSubHSM.o ${OBJECTDIR}/_ext/14913217/IO_Ports.o ${OBJECTDIR}/_ext/14913217/LED.o ${OBJECTDIR}/_ext/14913217/MainHSM.o ${OBJECTDIR}/_ext/14913217/NavigateLoadHSM.o ${OBJECTDIR}/_ext/14913217/pwm.o ${OBJECTDIR}/_ext/14913217/RC_Servo.o ${OBJECTDIR}/_ext/14913217/roach.o ${OBJECTDIR}/_ext/14913217/SearchSubHSM1.o ${OBJECTDIR}/_ext/14913217/SensorService.o ${OBJECTDIR}/_ext/14913217/serial.o ${OBJECTDIR}/_ext/14913217/Stepper.o ${OBJECTDIR}/_ext/14913217/timers.o ${OBJECTDIR}/_ext/1160100438/TemplateES_Main.o

# Source Files
SOURCEFILES=C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/AD.c C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/BOARD.c C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/DriveBase.c C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/DriveHomeSubHSM.c C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/EngageSubHSM1.c C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/ES_CheckEvents.c C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/ES_Framework.c C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/ES_KeyboardInput.c C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/ES_PostList.c C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/ES_Queue.c C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/ES_TattleTale.c C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/ES_Timers.c C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/FireSubHSM.c C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/IO_Ports.c C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/LED.c C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/MainHSM.c C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/NavigateLoadHSM.c C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/pwm.c C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/RC_Servo.c C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/roach.c C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/SearchSubHSM1.c C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/SensorService.c C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/serial.c C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/Stepper.c C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/timers.c C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/templates/TemplateES_Main.c



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
ProjectDir="C:\Users\Nadia\OneDrive\Desktop\ECE118\118-final-project\ProjectCode.X"
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
MP_LINKER_FILE_OPTION=,--script="C:\Users\Nadia\OneDrive\Desktop\ECE118\118-final-project\ECE118\bootloader320.ld"
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
${OBJECTDIR}/_ext/14913217/AD.o: C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/AD.c  .generated_files/flags/default/ca61bc39e8d13837267c2a89967e5d60920e454b .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/14913217" 
	@${RM} ${OBJECTDIR}/_ext/14913217/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/14913217/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/14913217/AD.o.d" -o ${OBJECTDIR}/_ext/14913217/AD.o C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/AD.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/14913217/BOARD.o: C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/BOARD.c  .generated_files/flags/default/315690a5abb21aa2b4ccc4d36265167157decd17 .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/14913217" 
	@${RM} ${OBJECTDIR}/_ext/14913217/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/14913217/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/14913217/BOARD.o.d" -o ${OBJECTDIR}/_ext/14913217/BOARD.o C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/BOARD.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/14913217/DriveBase.o: C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/DriveBase.c  .generated_files/flags/default/5290cd0a98c16f49126e29de462f2fab0ef1c0a .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/14913217" 
	@${RM} ${OBJECTDIR}/_ext/14913217/DriveBase.o.d 
	@${RM} ${OBJECTDIR}/_ext/14913217/DriveBase.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/14913217/DriveBase.o.d" -o ${OBJECTDIR}/_ext/14913217/DriveBase.o C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/DriveBase.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/14913217/DriveHomeSubHSM.o: C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/DriveHomeSubHSM.c  .generated_files/flags/default/8bcb4bb8c9eca3a7f00b1f9c3639f0d2c183bb6c .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/14913217" 
	@${RM} ${OBJECTDIR}/_ext/14913217/DriveHomeSubHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/14913217/DriveHomeSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/14913217/DriveHomeSubHSM.o.d" -o ${OBJECTDIR}/_ext/14913217/DriveHomeSubHSM.o C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/DriveHomeSubHSM.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/14913217/EngageSubHSM1.o: C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/EngageSubHSM1.c  .generated_files/flags/default/52a3656ad392a5c70bf4da3c7210774b7fc10d52 .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/14913217" 
	@${RM} ${OBJECTDIR}/_ext/14913217/EngageSubHSM1.o.d 
	@${RM} ${OBJECTDIR}/_ext/14913217/EngageSubHSM1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/14913217/EngageSubHSM1.o.d" -o ${OBJECTDIR}/_ext/14913217/EngageSubHSM1.o C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/EngageSubHSM1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/14913217/ES_CheckEvents.o: C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/ES_CheckEvents.c  .generated_files/flags/default/a562c7cb9d04de7cdabbd8ba22fe9fa4a1eef0bb .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/14913217" 
	@${RM} ${OBJECTDIR}/_ext/14913217/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/_ext/14913217/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/14913217/ES_CheckEvents.o.d" -o ${OBJECTDIR}/_ext/14913217/ES_CheckEvents.o C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/ES_CheckEvents.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/14913217/ES_Framework.o: C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/ES_Framework.c  .generated_files/flags/default/39c9320a4683a857c06b5cfeed3f91947049ab79 .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/14913217" 
	@${RM} ${OBJECTDIR}/_ext/14913217/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/_ext/14913217/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/14913217/ES_Framework.o.d" -o ${OBJECTDIR}/_ext/14913217/ES_Framework.o C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/ES_Framework.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/14913217/ES_KeyboardInput.o: C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/ES_KeyboardInput.c  .generated_files/flags/default/287956976ab7a824d98ef36f520198c13941650a .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/14913217" 
	@${RM} ${OBJECTDIR}/_ext/14913217/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/_ext/14913217/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/14913217/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/_ext/14913217/ES_KeyboardInput.o C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/ES_KeyboardInput.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/14913217/ES_PostList.o: C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/ES_PostList.c  .generated_files/flags/default/264510b26b91f1c19e65569c88460e96bfb1280d .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/14913217" 
	@${RM} ${OBJECTDIR}/_ext/14913217/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/_ext/14913217/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/14913217/ES_PostList.o.d" -o ${OBJECTDIR}/_ext/14913217/ES_PostList.o C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/ES_PostList.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/14913217/ES_Queue.o: C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/ES_Queue.c  .generated_files/flags/default/cce310c2be6d346b240f8caba7a2853824f844e .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/14913217" 
	@${RM} ${OBJECTDIR}/_ext/14913217/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/14913217/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/14913217/ES_Queue.o.d" -o ${OBJECTDIR}/_ext/14913217/ES_Queue.o C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/ES_Queue.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/14913217/ES_TattleTale.o: C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/ES_TattleTale.c  .generated_files/flags/default/582fbce846d574ac3b4035da9b6cfbf552cf48f7 .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/14913217" 
	@${RM} ${OBJECTDIR}/_ext/14913217/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/_ext/14913217/ES_TattleTale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/14913217/ES_TattleTale.o.d" -o ${OBJECTDIR}/_ext/14913217/ES_TattleTale.o C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/ES_TattleTale.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/14913217/ES_Timers.o: C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/ES_Timers.c  .generated_files/flags/default/6d5dacff7d81f4627672c1f5b298be099da52394 .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/14913217" 
	@${RM} ${OBJECTDIR}/_ext/14913217/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/14913217/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/14913217/ES_Timers.o.d" -o ${OBJECTDIR}/_ext/14913217/ES_Timers.o C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/ES_Timers.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/14913217/FireSubHSM.o: C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/FireSubHSM.c  .generated_files/flags/default/b642d67899e1b2dee6afcc8e1770f294121a245e .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/14913217" 
	@${RM} ${OBJECTDIR}/_ext/14913217/FireSubHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/14913217/FireSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/14913217/FireSubHSM.o.d" -o ${OBJECTDIR}/_ext/14913217/FireSubHSM.o C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/FireSubHSM.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/14913217/IO_Ports.o: C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/IO_Ports.c  .generated_files/flags/default/7315cf6ed7dc28c7523ed2f57698ebf84f95b17a .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/14913217" 
	@${RM} ${OBJECTDIR}/_ext/14913217/IO_Ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/14913217/IO_Ports.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/14913217/IO_Ports.o.d" -o ${OBJECTDIR}/_ext/14913217/IO_Ports.o C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/IO_Ports.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/14913217/LED.o: C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/LED.c  .generated_files/flags/default/8137c77b8a90d172330c7003719be2ba6b022aff .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/14913217" 
	@${RM} ${OBJECTDIR}/_ext/14913217/LED.o.d 
	@${RM} ${OBJECTDIR}/_ext/14913217/LED.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/14913217/LED.o.d" -o ${OBJECTDIR}/_ext/14913217/LED.o C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/LED.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/14913217/MainHSM.o: C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/MainHSM.c  .generated_files/flags/default/adf29fad1ccd27c91463b973ac58443a26c454c9 .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/14913217" 
	@${RM} ${OBJECTDIR}/_ext/14913217/MainHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/14913217/MainHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/14913217/MainHSM.o.d" -o ${OBJECTDIR}/_ext/14913217/MainHSM.o C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/MainHSM.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/14913217/NavigateLoadHSM.o: C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/NavigateLoadHSM.c  .generated_files/flags/default/b14044e2259ba00e0b34e083da084c4e0792a461 .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/14913217" 
	@${RM} ${OBJECTDIR}/_ext/14913217/NavigateLoadHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/14913217/NavigateLoadHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/14913217/NavigateLoadHSM.o.d" -o ${OBJECTDIR}/_ext/14913217/NavigateLoadHSM.o C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/NavigateLoadHSM.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/14913217/pwm.o: C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/pwm.c  .generated_files/flags/default/9b226982064f60465e56f86073f57e9fbc0db9bf .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/14913217" 
	@${RM} ${OBJECTDIR}/_ext/14913217/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/14913217/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/14913217/pwm.o.d" -o ${OBJECTDIR}/_ext/14913217/pwm.o C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/pwm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/14913217/RC_Servo.o: C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/RC_Servo.c  .generated_files/flags/default/3fa0a68d00cf279d25964ad20a81dd4c42df9038 .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/14913217" 
	@${RM} ${OBJECTDIR}/_ext/14913217/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/_ext/14913217/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/14913217/RC_Servo.o.d" -o ${OBJECTDIR}/_ext/14913217/RC_Servo.o C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/RC_Servo.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/14913217/roach.o: C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/roach.c  .generated_files/flags/default/3f9a2c014fbed01f39519938193d407d5b71a8e7 .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/14913217" 
	@${RM} ${OBJECTDIR}/_ext/14913217/roach.o.d 
	@${RM} ${OBJECTDIR}/_ext/14913217/roach.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/14913217/roach.o.d" -o ${OBJECTDIR}/_ext/14913217/roach.o C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/roach.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/14913217/SearchSubHSM1.o: C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/SearchSubHSM1.c  .generated_files/flags/default/d57ebb3e0d2bf5bb656310d7396bf37f4a7af71f .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/14913217" 
	@${RM} ${OBJECTDIR}/_ext/14913217/SearchSubHSM1.o.d 
	@${RM} ${OBJECTDIR}/_ext/14913217/SearchSubHSM1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/14913217/SearchSubHSM1.o.d" -o ${OBJECTDIR}/_ext/14913217/SearchSubHSM1.o C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/SearchSubHSM1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/14913217/SensorService.o: C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/SensorService.c  .generated_files/flags/default/f6ef91ddf2f5c7bde1c6aa6927e41c3b1f4bed86 .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/14913217" 
	@${RM} ${OBJECTDIR}/_ext/14913217/SensorService.o.d 
	@${RM} ${OBJECTDIR}/_ext/14913217/SensorService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/14913217/SensorService.o.d" -o ${OBJECTDIR}/_ext/14913217/SensorService.o C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/SensorService.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/14913217/serial.o: C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/serial.c  .generated_files/flags/default/b1b517a0d1c7d63eb89e8751d65e4a3af02cd85f .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/14913217" 
	@${RM} ${OBJECTDIR}/_ext/14913217/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/14913217/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/14913217/serial.o.d" -o ${OBJECTDIR}/_ext/14913217/serial.o C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/serial.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/14913217/Stepper.o: C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/Stepper.c  .generated_files/flags/default/d69e689bd901f6771c42dce5242cc1c2549af734 .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/14913217" 
	@${RM} ${OBJECTDIR}/_ext/14913217/Stepper.o.d 
	@${RM} ${OBJECTDIR}/_ext/14913217/Stepper.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/14913217/Stepper.o.d" -o ${OBJECTDIR}/_ext/14913217/Stepper.o C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/Stepper.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/14913217/timers.o: C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/timers.c  .generated_files/flags/default/a93364bf1473a63a39b1d4f1bf463d8e1837755e .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/14913217" 
	@${RM} ${OBJECTDIR}/_ext/14913217/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/14913217/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/14913217/timers.o.d" -o ${OBJECTDIR}/_ext/14913217/timers.o C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/timers.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1160100438/TemplateES_Main.o: C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/templates/TemplateES_Main.c  .generated_files/flags/default/af58a1be3180957631fde02e31ecf85bf57fab96 .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/1160100438" 
	@${RM} ${OBJECTDIR}/_ext/1160100438/TemplateES_Main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1160100438/TemplateES_Main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1160100438/TemplateES_Main.o.d" -o ${OBJECTDIR}/_ext/1160100438/TemplateES_Main.o C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/templates/TemplateES_Main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/14913217/AD.o: C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/AD.c  .generated_files/flags/default/bab614d4fe61012e8e60204779d81f8375cfd3c7 .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/14913217" 
	@${RM} ${OBJECTDIR}/_ext/14913217/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/14913217/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/14913217/AD.o.d" -o ${OBJECTDIR}/_ext/14913217/AD.o C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/AD.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/14913217/BOARD.o: C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/BOARD.c  .generated_files/flags/default/dea5f0df90070a3ba5c6591c7653cc92f75c01b5 .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/14913217" 
	@${RM} ${OBJECTDIR}/_ext/14913217/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/14913217/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/14913217/BOARD.o.d" -o ${OBJECTDIR}/_ext/14913217/BOARD.o C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/BOARD.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/14913217/DriveBase.o: C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/DriveBase.c  .generated_files/flags/default/1b3da3002f6994785ecd92cc14a3840b9247084f .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/14913217" 
	@${RM} ${OBJECTDIR}/_ext/14913217/DriveBase.o.d 
	@${RM} ${OBJECTDIR}/_ext/14913217/DriveBase.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/14913217/DriveBase.o.d" -o ${OBJECTDIR}/_ext/14913217/DriveBase.o C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/DriveBase.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/14913217/DriveHomeSubHSM.o: C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/DriveHomeSubHSM.c  .generated_files/flags/default/64a8066fba147d42d9db4681c029fcddb1c7b00b .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/14913217" 
	@${RM} ${OBJECTDIR}/_ext/14913217/DriveHomeSubHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/14913217/DriveHomeSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/14913217/DriveHomeSubHSM.o.d" -o ${OBJECTDIR}/_ext/14913217/DriveHomeSubHSM.o C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/DriveHomeSubHSM.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/14913217/EngageSubHSM1.o: C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/EngageSubHSM1.c  .generated_files/flags/default/776a38b122efceab95303d799cdc85f68a1ad4ee .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/14913217" 
	@${RM} ${OBJECTDIR}/_ext/14913217/EngageSubHSM1.o.d 
	@${RM} ${OBJECTDIR}/_ext/14913217/EngageSubHSM1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/14913217/EngageSubHSM1.o.d" -o ${OBJECTDIR}/_ext/14913217/EngageSubHSM1.o C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/EngageSubHSM1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/14913217/ES_CheckEvents.o: C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/ES_CheckEvents.c  .generated_files/flags/default/635bee691130ca8aa6b6c6a74a063a885e1615a5 .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/14913217" 
	@${RM} ${OBJECTDIR}/_ext/14913217/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/_ext/14913217/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/14913217/ES_CheckEvents.o.d" -o ${OBJECTDIR}/_ext/14913217/ES_CheckEvents.o C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/ES_CheckEvents.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/14913217/ES_Framework.o: C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/ES_Framework.c  .generated_files/flags/default/c88c2f2f21ed32b817342da090824e4283bd01e9 .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/14913217" 
	@${RM} ${OBJECTDIR}/_ext/14913217/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/_ext/14913217/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/14913217/ES_Framework.o.d" -o ${OBJECTDIR}/_ext/14913217/ES_Framework.o C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/ES_Framework.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/14913217/ES_KeyboardInput.o: C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/ES_KeyboardInput.c  .generated_files/flags/default/7c461bfc8364d39cbd06e2274235599fb0d2a863 .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/14913217" 
	@${RM} ${OBJECTDIR}/_ext/14913217/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/_ext/14913217/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/14913217/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/_ext/14913217/ES_KeyboardInput.o C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/ES_KeyboardInput.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/14913217/ES_PostList.o: C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/ES_PostList.c  .generated_files/flags/default/52b5adc1b83e8e2df3a54b9b11c4aff80bf7701f .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/14913217" 
	@${RM} ${OBJECTDIR}/_ext/14913217/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/_ext/14913217/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/14913217/ES_PostList.o.d" -o ${OBJECTDIR}/_ext/14913217/ES_PostList.o C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/ES_PostList.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/14913217/ES_Queue.o: C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/ES_Queue.c  .generated_files/flags/default/a11caeb6cd8c3cf467f93d68838520543a10320c .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/14913217" 
	@${RM} ${OBJECTDIR}/_ext/14913217/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/14913217/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/14913217/ES_Queue.o.d" -o ${OBJECTDIR}/_ext/14913217/ES_Queue.o C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/ES_Queue.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/14913217/ES_TattleTale.o: C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/ES_TattleTale.c  .generated_files/flags/default/258653c8cea049089fff0b64b661fd0ab159b6dc .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/14913217" 
	@${RM} ${OBJECTDIR}/_ext/14913217/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/_ext/14913217/ES_TattleTale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/14913217/ES_TattleTale.o.d" -o ${OBJECTDIR}/_ext/14913217/ES_TattleTale.o C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/ES_TattleTale.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/14913217/ES_Timers.o: C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/ES_Timers.c  .generated_files/flags/default/ea17d9b8ccf7b392c3df63df0e4451dd2a6802f4 .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/14913217" 
	@${RM} ${OBJECTDIR}/_ext/14913217/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/14913217/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/14913217/ES_Timers.o.d" -o ${OBJECTDIR}/_ext/14913217/ES_Timers.o C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/ES_Timers.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/14913217/FireSubHSM.o: C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/FireSubHSM.c  .generated_files/flags/default/10b76556f719c9bc5515278d96169e82c5066532 .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/14913217" 
	@${RM} ${OBJECTDIR}/_ext/14913217/FireSubHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/14913217/FireSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/14913217/FireSubHSM.o.d" -o ${OBJECTDIR}/_ext/14913217/FireSubHSM.o C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/FireSubHSM.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/14913217/IO_Ports.o: C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/IO_Ports.c  .generated_files/flags/default/88a577c8722288ce3fe0ae90e50cb3aca309f444 .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/14913217" 
	@${RM} ${OBJECTDIR}/_ext/14913217/IO_Ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/14913217/IO_Ports.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/14913217/IO_Ports.o.d" -o ${OBJECTDIR}/_ext/14913217/IO_Ports.o C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/IO_Ports.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/14913217/LED.o: C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/LED.c  .generated_files/flags/default/9bd7277ec533ee3fce450ce6ceb97c9720a15e0d .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/14913217" 
	@${RM} ${OBJECTDIR}/_ext/14913217/LED.o.d 
	@${RM} ${OBJECTDIR}/_ext/14913217/LED.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/14913217/LED.o.d" -o ${OBJECTDIR}/_ext/14913217/LED.o C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/LED.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/14913217/MainHSM.o: C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/MainHSM.c  .generated_files/flags/default/b43e8d23f9e52f8a1bdbb0c58d7de474c4526b4b .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/14913217" 
	@${RM} ${OBJECTDIR}/_ext/14913217/MainHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/14913217/MainHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/14913217/MainHSM.o.d" -o ${OBJECTDIR}/_ext/14913217/MainHSM.o C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/MainHSM.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/14913217/NavigateLoadHSM.o: C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/NavigateLoadHSM.c  .generated_files/flags/default/f32708b4a4aff7456ae0a5a3109f3b5eb2cee9e1 .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/14913217" 
	@${RM} ${OBJECTDIR}/_ext/14913217/NavigateLoadHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/14913217/NavigateLoadHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/14913217/NavigateLoadHSM.o.d" -o ${OBJECTDIR}/_ext/14913217/NavigateLoadHSM.o C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/NavigateLoadHSM.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/14913217/pwm.o: C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/pwm.c  .generated_files/flags/default/771afc7b791844dab23ad0fbf2f2eb9296eb6a0 .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/14913217" 
	@${RM} ${OBJECTDIR}/_ext/14913217/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/14913217/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/14913217/pwm.o.d" -o ${OBJECTDIR}/_ext/14913217/pwm.o C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/pwm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/14913217/RC_Servo.o: C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/RC_Servo.c  .generated_files/flags/default/fe86539b8a6ba7b2abeeb3d0a19b67d5f1b09014 .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/14913217" 
	@${RM} ${OBJECTDIR}/_ext/14913217/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/_ext/14913217/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/14913217/RC_Servo.o.d" -o ${OBJECTDIR}/_ext/14913217/RC_Servo.o C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/RC_Servo.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/14913217/roach.o: C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/roach.c  .generated_files/flags/default/172044a4ba03bdc846150c40b5e12f62c3f21e5d .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/14913217" 
	@${RM} ${OBJECTDIR}/_ext/14913217/roach.o.d 
	@${RM} ${OBJECTDIR}/_ext/14913217/roach.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/14913217/roach.o.d" -o ${OBJECTDIR}/_ext/14913217/roach.o C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/roach.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/14913217/SearchSubHSM1.o: C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/SearchSubHSM1.c  .generated_files/flags/default/1d52860bdb4fa14f059571e2121fc4d11553a6d0 .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/14913217" 
	@${RM} ${OBJECTDIR}/_ext/14913217/SearchSubHSM1.o.d 
	@${RM} ${OBJECTDIR}/_ext/14913217/SearchSubHSM1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/14913217/SearchSubHSM1.o.d" -o ${OBJECTDIR}/_ext/14913217/SearchSubHSM1.o C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/SearchSubHSM1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/14913217/SensorService.o: C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/SensorService.c  .generated_files/flags/default/a3223a43012914476dbdf45d53beaf24f2dd53bf .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/14913217" 
	@${RM} ${OBJECTDIR}/_ext/14913217/SensorService.o.d 
	@${RM} ${OBJECTDIR}/_ext/14913217/SensorService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/14913217/SensorService.o.d" -o ${OBJECTDIR}/_ext/14913217/SensorService.o C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/SensorService.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/14913217/serial.o: C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/serial.c  .generated_files/flags/default/7d8ad3cb5c09fb71e0d3a0cf514e143ed0c6cef6 .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/14913217" 
	@${RM} ${OBJECTDIR}/_ext/14913217/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/14913217/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/14913217/serial.o.d" -o ${OBJECTDIR}/_ext/14913217/serial.o C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/serial.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/14913217/Stepper.o: C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/Stepper.c  .generated_files/flags/default/6becd5aea8f5111cf325f44acabebd8d598cfb1a .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/14913217" 
	@${RM} ${OBJECTDIR}/_ext/14913217/Stepper.o.d 
	@${RM} ${OBJECTDIR}/_ext/14913217/Stepper.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/14913217/Stepper.o.d" -o ${OBJECTDIR}/_ext/14913217/Stepper.o C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/Stepper.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/14913217/timers.o: C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/timers.c  .generated_files/flags/default/4d45b4ce0e7a2ee6a992ee3622e83f3f816f788b .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/14913217" 
	@${RM} ${OBJECTDIR}/_ext/14913217/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/14913217/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/14913217/timers.o.d" -o ${OBJECTDIR}/_ext/14913217/timers.o C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/src/timers.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1160100438/TemplateES_Main.o: C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/templates/TemplateES_Main.c  .generated_files/flags/default/22c7cd9b6619e92a48cbe42a8697be221366edf0 .generated_files/flags/default/af031a62ccc0c18b099f063c5edfd8e7f9b606f2
	@${MKDIR} "${OBJECTDIR}/_ext/1160100438" 
	@${RM} ${OBJECTDIR}/_ext/1160100438/TemplateES_Main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1160100438/TemplateES_Main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"C:/Users/lukek/Desktop/ECE118/include" -I"C:/Users/lukek/Desktop/ECE118/src" -I"../ECE118/src" -I"../ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1160100438/TemplateES_Main.o.d" -o ${OBJECTDIR}/_ext/1160100438/TemplateES_Main.o C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/templates/TemplateES_Main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/ProjectCode.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/bootloader320.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/ProjectCode.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=2000,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/ProjectCode.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   C:/Users/Nadia/OneDrive/Desktop/ECE118/118-final-project/ECE118/bootloader320.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/ProjectCode.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=2000,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/ProjectCode.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif

.pre:
	@echo "--------------------------------------"
	@echo "User defined pre-build step: [python C:\Users\Nadia\OneDrive\Desktop\ECE118\118-final-project\ECE118\scripts\Enum_To_String.py]"
	@python C:\Users\Nadia\OneDrive\Desktop\ECE118\118-final-project\ECE118\scripts\Enum_To_String.py
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
