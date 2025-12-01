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
FINAL_IMAGE=${DISTDIR}/HumidityMonitor.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/HumidityMonitor.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=PIC24FJ_OS/OS/Src/GPIO.c PIC24FJ_OS/OS/Src/I2C.c PIC24FJ_OS/OS/Src/IC.c PIC24FJ_OS/OS/Src/MemMap.c PIC24FJ_OS/OS/Src/OS.c PIC24FJ_OS/OS/Src/SC.c PIC24FJ_OS/OS/Src/TIM.c Src/main.c Src/Cfg/OS_Tasklist_Stub.c Src/DataDisplay.c Src/LCD_Driver.c Src/SHT_Driver.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/PIC24FJ_OS/OS/Src/GPIO.o ${OBJECTDIR}/PIC24FJ_OS/OS/Src/I2C.o ${OBJECTDIR}/PIC24FJ_OS/OS/Src/IC.o ${OBJECTDIR}/PIC24FJ_OS/OS/Src/MemMap.o ${OBJECTDIR}/PIC24FJ_OS/OS/Src/OS.o ${OBJECTDIR}/PIC24FJ_OS/OS/Src/SC.o ${OBJECTDIR}/PIC24FJ_OS/OS/Src/TIM.o ${OBJECTDIR}/Src/main.o ${OBJECTDIR}/Src/Cfg/OS_Tasklist_Stub.o ${OBJECTDIR}/Src/DataDisplay.o ${OBJECTDIR}/Src/LCD_Driver.o ${OBJECTDIR}/Src/SHT_Driver.o
POSSIBLE_DEPFILES=${OBJECTDIR}/PIC24FJ_OS/OS/Src/GPIO.o.d ${OBJECTDIR}/PIC24FJ_OS/OS/Src/I2C.o.d ${OBJECTDIR}/PIC24FJ_OS/OS/Src/IC.o.d ${OBJECTDIR}/PIC24FJ_OS/OS/Src/MemMap.o.d ${OBJECTDIR}/PIC24FJ_OS/OS/Src/OS.o.d ${OBJECTDIR}/PIC24FJ_OS/OS/Src/SC.o.d ${OBJECTDIR}/PIC24FJ_OS/OS/Src/TIM.o.d ${OBJECTDIR}/Src/main.o.d ${OBJECTDIR}/Src/Cfg/OS_Tasklist_Stub.o.d ${OBJECTDIR}/Src/DataDisplay.o.d ${OBJECTDIR}/Src/LCD_Driver.o.d ${OBJECTDIR}/Src/SHT_Driver.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/PIC24FJ_OS/OS/Src/GPIO.o ${OBJECTDIR}/PIC24FJ_OS/OS/Src/I2C.o ${OBJECTDIR}/PIC24FJ_OS/OS/Src/IC.o ${OBJECTDIR}/PIC24FJ_OS/OS/Src/MemMap.o ${OBJECTDIR}/PIC24FJ_OS/OS/Src/OS.o ${OBJECTDIR}/PIC24FJ_OS/OS/Src/SC.o ${OBJECTDIR}/PIC24FJ_OS/OS/Src/TIM.o ${OBJECTDIR}/Src/main.o ${OBJECTDIR}/Src/Cfg/OS_Tasklist_Stub.o ${OBJECTDIR}/Src/DataDisplay.o ${OBJECTDIR}/Src/LCD_Driver.o ${OBJECTDIR}/Src/SHT_Driver.o

# Source Files
SOURCEFILES=PIC24FJ_OS/OS/Src/GPIO.c PIC24FJ_OS/OS/Src/I2C.c PIC24FJ_OS/OS/Src/IC.c PIC24FJ_OS/OS/Src/MemMap.c PIC24FJ_OS/OS/Src/OS.c PIC24FJ_OS/OS/Src/SC.c PIC24FJ_OS/OS/Src/TIM.c Src/main.c Src/Cfg/OS_Tasklist_Stub.c Src/DataDisplay.c Src/LCD_Driver.c Src/SHT_Driver.c



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

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/HumidityMonitor.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ128GB202
MP_LINKER_FILE_OPTION=,--script=p24FJ128GB202.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/PIC24FJ_OS/OS/Src/GPIO.o: PIC24FJ_OS/OS/Src/GPIO.c  .generated_files/flags/default/a2dab0fd594bb52492cc0095f44f822043d007c4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/PIC24FJ_OS/OS/Src" 
	@${RM} ${OBJECTDIR}/PIC24FJ_OS/OS/Src/GPIO.o.d 
	@${RM} ${OBJECTDIR}/PIC24FJ_OS/OS/Src/GPIO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  PIC24FJ_OS/OS/Src/GPIO.c  -o ${OBJECTDIR}/PIC24FJ_OS/OS/Src/GPIO.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/PIC24FJ_OS/OS/Src/GPIO.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"PIC24FJ_OS/OS/Inc" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/PIC24FJ_OS/OS/Src/I2C.o: PIC24FJ_OS/OS/Src/I2C.c  .generated_files/flags/default/5c3c7c2f7978244451e96b2fc2d19e54c32e614a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/PIC24FJ_OS/OS/Src" 
	@${RM} ${OBJECTDIR}/PIC24FJ_OS/OS/Src/I2C.o.d 
	@${RM} ${OBJECTDIR}/PIC24FJ_OS/OS/Src/I2C.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  PIC24FJ_OS/OS/Src/I2C.c  -o ${OBJECTDIR}/PIC24FJ_OS/OS/Src/I2C.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/PIC24FJ_OS/OS/Src/I2C.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"PIC24FJ_OS/OS/Inc" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/PIC24FJ_OS/OS/Src/IC.o: PIC24FJ_OS/OS/Src/IC.c  .generated_files/flags/default/b60dd4e4c1001312b7641e62582bd2ce644823b0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/PIC24FJ_OS/OS/Src" 
	@${RM} ${OBJECTDIR}/PIC24FJ_OS/OS/Src/IC.o.d 
	@${RM} ${OBJECTDIR}/PIC24FJ_OS/OS/Src/IC.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  PIC24FJ_OS/OS/Src/IC.c  -o ${OBJECTDIR}/PIC24FJ_OS/OS/Src/IC.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/PIC24FJ_OS/OS/Src/IC.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"PIC24FJ_OS/OS/Inc" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/PIC24FJ_OS/OS/Src/MemMap.o: PIC24FJ_OS/OS/Src/MemMap.c  .generated_files/flags/default/a988e1b7e3002e95543f79ed942da48306c27e3f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/PIC24FJ_OS/OS/Src" 
	@${RM} ${OBJECTDIR}/PIC24FJ_OS/OS/Src/MemMap.o.d 
	@${RM} ${OBJECTDIR}/PIC24FJ_OS/OS/Src/MemMap.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  PIC24FJ_OS/OS/Src/MemMap.c  -o ${OBJECTDIR}/PIC24FJ_OS/OS/Src/MemMap.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/PIC24FJ_OS/OS/Src/MemMap.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"PIC24FJ_OS/OS/Inc" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/PIC24FJ_OS/OS/Src/OS.o: PIC24FJ_OS/OS/Src/OS.c  .generated_files/flags/default/40244636d0a586c2cf66b466db701a5b618b11b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/PIC24FJ_OS/OS/Src" 
	@${RM} ${OBJECTDIR}/PIC24FJ_OS/OS/Src/OS.o.d 
	@${RM} ${OBJECTDIR}/PIC24FJ_OS/OS/Src/OS.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  PIC24FJ_OS/OS/Src/OS.c  -o ${OBJECTDIR}/PIC24FJ_OS/OS/Src/OS.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/PIC24FJ_OS/OS/Src/OS.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"PIC24FJ_OS/OS/Inc" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/PIC24FJ_OS/OS/Src/SC.o: PIC24FJ_OS/OS/Src/SC.c  .generated_files/flags/default/c86cfc229bca51963e8597f6e12eb4ba75971098 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/PIC24FJ_OS/OS/Src" 
	@${RM} ${OBJECTDIR}/PIC24FJ_OS/OS/Src/SC.o.d 
	@${RM} ${OBJECTDIR}/PIC24FJ_OS/OS/Src/SC.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  PIC24FJ_OS/OS/Src/SC.c  -o ${OBJECTDIR}/PIC24FJ_OS/OS/Src/SC.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/PIC24FJ_OS/OS/Src/SC.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"PIC24FJ_OS/OS/Inc" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/PIC24FJ_OS/OS/Src/TIM.o: PIC24FJ_OS/OS/Src/TIM.c  .generated_files/flags/default/e358c08d7e03943330ec821d09e201f0c0523e4d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/PIC24FJ_OS/OS/Src" 
	@${RM} ${OBJECTDIR}/PIC24FJ_OS/OS/Src/TIM.o.d 
	@${RM} ${OBJECTDIR}/PIC24FJ_OS/OS/Src/TIM.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  PIC24FJ_OS/OS/Src/TIM.c  -o ${OBJECTDIR}/PIC24FJ_OS/OS/Src/TIM.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/PIC24FJ_OS/OS/Src/TIM.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"PIC24FJ_OS/OS/Inc" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/Src/main.o: Src/main.c  .generated_files/flags/default/1f2742b8811ccbc5d18bf632e76ae788ba530892 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/Src" 
	@${RM} ${OBJECTDIR}/Src/main.o.d 
	@${RM} ${OBJECTDIR}/Src/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Src/main.c  -o ${OBJECTDIR}/Src/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Src/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"PIC24FJ_OS/OS/Inc" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/Src/Cfg/OS_Tasklist_Stub.o: Src/Cfg/OS_Tasklist_Stub.c  .generated_files/flags/default/b534983861cf4a9269d0abd551d78cebc40ca417 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/Src/Cfg" 
	@${RM} ${OBJECTDIR}/Src/Cfg/OS_Tasklist_Stub.o.d 
	@${RM} ${OBJECTDIR}/Src/Cfg/OS_Tasklist_Stub.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Src/Cfg/OS_Tasklist_Stub.c  -o ${OBJECTDIR}/Src/Cfg/OS_Tasklist_Stub.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Src/Cfg/OS_Tasklist_Stub.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"PIC24FJ_OS/OS/Inc" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/Src/DataDisplay.o: Src/DataDisplay.c  .generated_files/flags/default/a7763738e5e66f60b869b8b62408eae06a5d504b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/Src" 
	@${RM} ${OBJECTDIR}/Src/DataDisplay.o.d 
	@${RM} ${OBJECTDIR}/Src/DataDisplay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Src/DataDisplay.c  -o ${OBJECTDIR}/Src/DataDisplay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Src/DataDisplay.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"PIC24FJ_OS/OS/Inc" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/Src/LCD_Driver.o: Src/LCD_Driver.c  .generated_files/flags/default/d88ad8658bf4d4619f4fd315b67b18e5053827f7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/Src" 
	@${RM} ${OBJECTDIR}/Src/LCD_Driver.o.d 
	@${RM} ${OBJECTDIR}/Src/LCD_Driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Src/LCD_Driver.c  -o ${OBJECTDIR}/Src/LCD_Driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Src/LCD_Driver.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"PIC24FJ_OS/OS/Inc" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/Src/SHT_Driver.o: Src/SHT_Driver.c  .generated_files/flags/default/2248acff7c882055494e71683ced6c2ddce76c1c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/Src" 
	@${RM} ${OBJECTDIR}/Src/SHT_Driver.o.d 
	@${RM} ${OBJECTDIR}/Src/SHT_Driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Src/SHT_Driver.c  -o ${OBJECTDIR}/Src/SHT_Driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Src/SHT_Driver.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"PIC24FJ_OS/OS/Inc" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/PIC24FJ_OS/OS/Src/GPIO.o: PIC24FJ_OS/OS/Src/GPIO.c  .generated_files/flags/default/8a16c33d341958018f60bc91e70c4d72bea56ee7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/PIC24FJ_OS/OS/Src" 
	@${RM} ${OBJECTDIR}/PIC24FJ_OS/OS/Src/GPIO.o.d 
	@${RM} ${OBJECTDIR}/PIC24FJ_OS/OS/Src/GPIO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  PIC24FJ_OS/OS/Src/GPIO.c  -o ${OBJECTDIR}/PIC24FJ_OS/OS/Src/GPIO.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/PIC24FJ_OS/OS/Src/GPIO.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"PIC24FJ_OS/OS/Inc" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/PIC24FJ_OS/OS/Src/I2C.o: PIC24FJ_OS/OS/Src/I2C.c  .generated_files/flags/default/8d6e6c5d7b9855970512e98853e30a323aefcb8b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/PIC24FJ_OS/OS/Src" 
	@${RM} ${OBJECTDIR}/PIC24FJ_OS/OS/Src/I2C.o.d 
	@${RM} ${OBJECTDIR}/PIC24FJ_OS/OS/Src/I2C.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  PIC24FJ_OS/OS/Src/I2C.c  -o ${OBJECTDIR}/PIC24FJ_OS/OS/Src/I2C.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/PIC24FJ_OS/OS/Src/I2C.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"PIC24FJ_OS/OS/Inc" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/PIC24FJ_OS/OS/Src/IC.o: PIC24FJ_OS/OS/Src/IC.c  .generated_files/flags/default/5edf9829036e832da0303ed1d8935ac9dbce0390 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/PIC24FJ_OS/OS/Src" 
	@${RM} ${OBJECTDIR}/PIC24FJ_OS/OS/Src/IC.o.d 
	@${RM} ${OBJECTDIR}/PIC24FJ_OS/OS/Src/IC.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  PIC24FJ_OS/OS/Src/IC.c  -o ${OBJECTDIR}/PIC24FJ_OS/OS/Src/IC.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/PIC24FJ_OS/OS/Src/IC.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"PIC24FJ_OS/OS/Inc" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/PIC24FJ_OS/OS/Src/MemMap.o: PIC24FJ_OS/OS/Src/MemMap.c  .generated_files/flags/default/1c2c02eb576d913a561e09c8ae207077d08ecea6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/PIC24FJ_OS/OS/Src" 
	@${RM} ${OBJECTDIR}/PIC24FJ_OS/OS/Src/MemMap.o.d 
	@${RM} ${OBJECTDIR}/PIC24FJ_OS/OS/Src/MemMap.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  PIC24FJ_OS/OS/Src/MemMap.c  -o ${OBJECTDIR}/PIC24FJ_OS/OS/Src/MemMap.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/PIC24FJ_OS/OS/Src/MemMap.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"PIC24FJ_OS/OS/Inc" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/PIC24FJ_OS/OS/Src/OS.o: PIC24FJ_OS/OS/Src/OS.c  .generated_files/flags/default/8542307910979b691d356a7226c1fa265718784f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/PIC24FJ_OS/OS/Src" 
	@${RM} ${OBJECTDIR}/PIC24FJ_OS/OS/Src/OS.o.d 
	@${RM} ${OBJECTDIR}/PIC24FJ_OS/OS/Src/OS.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  PIC24FJ_OS/OS/Src/OS.c  -o ${OBJECTDIR}/PIC24FJ_OS/OS/Src/OS.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/PIC24FJ_OS/OS/Src/OS.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"PIC24FJ_OS/OS/Inc" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/PIC24FJ_OS/OS/Src/SC.o: PIC24FJ_OS/OS/Src/SC.c  .generated_files/flags/default/181858b1ef8e24042e5b3588860a087fabbb95e4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/PIC24FJ_OS/OS/Src" 
	@${RM} ${OBJECTDIR}/PIC24FJ_OS/OS/Src/SC.o.d 
	@${RM} ${OBJECTDIR}/PIC24FJ_OS/OS/Src/SC.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  PIC24FJ_OS/OS/Src/SC.c  -o ${OBJECTDIR}/PIC24FJ_OS/OS/Src/SC.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/PIC24FJ_OS/OS/Src/SC.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"PIC24FJ_OS/OS/Inc" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/PIC24FJ_OS/OS/Src/TIM.o: PIC24FJ_OS/OS/Src/TIM.c  .generated_files/flags/default/f063fd8f34f648692964eb3cd8918e832687d166 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/PIC24FJ_OS/OS/Src" 
	@${RM} ${OBJECTDIR}/PIC24FJ_OS/OS/Src/TIM.o.d 
	@${RM} ${OBJECTDIR}/PIC24FJ_OS/OS/Src/TIM.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  PIC24FJ_OS/OS/Src/TIM.c  -o ${OBJECTDIR}/PIC24FJ_OS/OS/Src/TIM.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/PIC24FJ_OS/OS/Src/TIM.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"PIC24FJ_OS/OS/Inc" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/Src/main.o: Src/main.c  .generated_files/flags/default/e3f3953beb958552252117c5ced5967ad1af150a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/Src" 
	@${RM} ${OBJECTDIR}/Src/main.o.d 
	@${RM} ${OBJECTDIR}/Src/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Src/main.c  -o ${OBJECTDIR}/Src/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Src/main.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"PIC24FJ_OS/OS/Inc" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/Src/Cfg/OS_Tasklist_Stub.o: Src/Cfg/OS_Tasklist_Stub.c  .generated_files/flags/default/e0fe7ed9382d22299f0434366f76e89c1c9b9e15 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/Src/Cfg" 
	@${RM} ${OBJECTDIR}/Src/Cfg/OS_Tasklist_Stub.o.d 
	@${RM} ${OBJECTDIR}/Src/Cfg/OS_Tasklist_Stub.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Src/Cfg/OS_Tasklist_Stub.c  -o ${OBJECTDIR}/Src/Cfg/OS_Tasklist_Stub.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Src/Cfg/OS_Tasklist_Stub.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"PIC24FJ_OS/OS/Inc" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/Src/DataDisplay.o: Src/DataDisplay.c  .generated_files/flags/default/80a0fff63d0466783ceb07729a6c261afaff3d5c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/Src" 
	@${RM} ${OBJECTDIR}/Src/DataDisplay.o.d 
	@${RM} ${OBJECTDIR}/Src/DataDisplay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Src/DataDisplay.c  -o ${OBJECTDIR}/Src/DataDisplay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Src/DataDisplay.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"PIC24FJ_OS/OS/Inc" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/Src/LCD_Driver.o: Src/LCD_Driver.c  .generated_files/flags/default/afb446231fa8e6f089b6283ebcfe6b9e5c48ebc8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/Src" 
	@${RM} ${OBJECTDIR}/Src/LCD_Driver.o.d 
	@${RM} ${OBJECTDIR}/Src/LCD_Driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Src/LCD_Driver.c  -o ${OBJECTDIR}/Src/LCD_Driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Src/LCD_Driver.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"PIC24FJ_OS/OS/Inc" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/Src/SHT_Driver.o: Src/SHT_Driver.c  .generated_files/flags/default/25692553e84098da8660191bcf41719041be6cab .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/Src" 
	@${RM} ${OBJECTDIR}/Src/SHT_Driver.o.d 
	@${RM} ${OBJECTDIR}/Src/SHT_Driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Src/SHT_Driver.c  -o ${OBJECTDIR}/Src/SHT_Driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Src/SHT_Driver.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"PIC24FJ_OS/OS/Inc" -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/HumidityMonitor.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/HumidityMonitor.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"PIC24FJ_OS/OS/Inc"  -mreserve=data@0x800:0x81B -mreserve=data@0x81C:0x81D -mreserve=data@0x81E:0x81F -mreserve=data@0x820:0x821 -mreserve=data@0x822:0x823 -mreserve=data@0x824:0x827 -mreserve=data@0x82A:0x84F   -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,--defsym=__MPLAB_DEBUGGER_PK3=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
${DISTDIR}/HumidityMonitor.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/HumidityMonitor.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"PIC24FJ_OS/OS/Inc" -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}\\xc16-bin2hex ${DISTDIR}/HumidityMonitor.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
endif


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

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
