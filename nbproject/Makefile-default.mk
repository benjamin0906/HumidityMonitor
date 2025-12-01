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
SOURCEFILES_QUOTED_IF_SPACED=PIC24FJ_OS/OS/Src/GPIO.c PIC24FJ_OS/OS/Src/I2C.c PIC24FJ_OS/OS/Src/IC.c PIC24FJ_OS/OS/Src/MemMap.c PIC24FJ_OS/OS/Src/OS.c PIC24FJ_OS/OS/Src/SC.c PIC24FJ_OS/OS/Src/TIM.c Src/main.c Src/Cfg/OS_Tasklist_Stub.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/PIC24FJ_OS/OS/Src/GPIO.o ${OBJECTDIR}/PIC24FJ_OS/OS/Src/I2C.o ${OBJECTDIR}/PIC24FJ_OS/OS/Src/IC.o ${OBJECTDIR}/PIC24FJ_OS/OS/Src/MemMap.o ${OBJECTDIR}/PIC24FJ_OS/OS/Src/OS.o ${OBJECTDIR}/PIC24FJ_OS/OS/Src/SC.o ${OBJECTDIR}/PIC24FJ_OS/OS/Src/TIM.o ${OBJECTDIR}/Src/main.o ${OBJECTDIR}/Src/Cfg/OS_Tasklist_Stub.o
POSSIBLE_DEPFILES=${OBJECTDIR}/PIC24FJ_OS/OS/Src/GPIO.o.d ${OBJECTDIR}/PIC24FJ_OS/OS/Src/I2C.o.d ${OBJECTDIR}/PIC24FJ_OS/OS/Src/IC.o.d ${OBJECTDIR}/PIC24FJ_OS/OS/Src/MemMap.o.d ${OBJECTDIR}/PIC24FJ_OS/OS/Src/OS.o.d ${OBJECTDIR}/PIC24FJ_OS/OS/Src/SC.o.d ${OBJECTDIR}/PIC24FJ_OS/OS/Src/TIM.o.d ${OBJECTDIR}/Src/main.o.d ${OBJECTDIR}/Src/Cfg/OS_Tasklist_Stub.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/PIC24FJ_OS/OS/Src/GPIO.o ${OBJECTDIR}/PIC24FJ_OS/OS/Src/I2C.o ${OBJECTDIR}/PIC24FJ_OS/OS/Src/IC.o ${OBJECTDIR}/PIC24FJ_OS/OS/Src/MemMap.o ${OBJECTDIR}/PIC24FJ_OS/OS/Src/OS.o ${OBJECTDIR}/PIC24FJ_OS/OS/Src/SC.o ${OBJECTDIR}/PIC24FJ_OS/OS/Src/TIM.o ${OBJECTDIR}/Src/main.o ${OBJECTDIR}/Src/Cfg/OS_Tasklist_Stub.o

# Source Files
SOURCEFILES=PIC24FJ_OS/OS/Src/GPIO.c PIC24FJ_OS/OS/Src/I2C.c PIC24FJ_OS/OS/Src/IC.c PIC24FJ_OS/OS/Src/MemMap.c PIC24FJ_OS/OS/Src/OS.c PIC24FJ_OS/OS/Src/SC.c PIC24FJ_OS/OS/Src/TIM.c Src/main.c Src/Cfg/OS_Tasklist_Stub.c



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
${OBJECTDIR}/PIC24FJ_OS/OS/Src/GPIO.o: PIC24FJ_OS/OS/Src/GPIO.c  .generated_files/flags/default/4eddba63203ed17a9955fa455326b0fd9ff7e253 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/PIC24FJ_OS/OS/Src" 
	@${RM} ${OBJECTDIR}/PIC24FJ_OS/OS/Src/GPIO.o.d 
	@${RM} ${OBJECTDIR}/PIC24FJ_OS/OS/Src/GPIO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  PIC24FJ_OS/OS/Src/GPIO.c  -o ${OBJECTDIR}/PIC24FJ_OS/OS/Src/GPIO.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/PIC24FJ_OS/OS/Src/GPIO.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/PIC24FJ_OS/OS/Src/I2C.o: PIC24FJ_OS/OS/Src/I2C.c  .generated_files/flags/default/78ee309f33c739adbee3fd9d61fdd756fc92fb0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/PIC24FJ_OS/OS/Src" 
	@${RM} ${OBJECTDIR}/PIC24FJ_OS/OS/Src/I2C.o.d 
	@${RM} ${OBJECTDIR}/PIC24FJ_OS/OS/Src/I2C.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  PIC24FJ_OS/OS/Src/I2C.c  -o ${OBJECTDIR}/PIC24FJ_OS/OS/Src/I2C.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/PIC24FJ_OS/OS/Src/I2C.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/PIC24FJ_OS/OS/Src/IC.o: PIC24FJ_OS/OS/Src/IC.c  .generated_files/flags/default/ed533438989c8d155134d39438423fec620465d1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/PIC24FJ_OS/OS/Src" 
	@${RM} ${OBJECTDIR}/PIC24FJ_OS/OS/Src/IC.o.d 
	@${RM} ${OBJECTDIR}/PIC24FJ_OS/OS/Src/IC.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  PIC24FJ_OS/OS/Src/IC.c  -o ${OBJECTDIR}/PIC24FJ_OS/OS/Src/IC.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/PIC24FJ_OS/OS/Src/IC.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/PIC24FJ_OS/OS/Src/MemMap.o: PIC24FJ_OS/OS/Src/MemMap.c  .generated_files/flags/default/6b856feafd984bfa6d6bb768508269ed9001699b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/PIC24FJ_OS/OS/Src" 
	@${RM} ${OBJECTDIR}/PIC24FJ_OS/OS/Src/MemMap.o.d 
	@${RM} ${OBJECTDIR}/PIC24FJ_OS/OS/Src/MemMap.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  PIC24FJ_OS/OS/Src/MemMap.c  -o ${OBJECTDIR}/PIC24FJ_OS/OS/Src/MemMap.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/PIC24FJ_OS/OS/Src/MemMap.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/PIC24FJ_OS/OS/Src/OS.o: PIC24FJ_OS/OS/Src/OS.c  .generated_files/flags/default/1679d45453e200a224435cd610cc08df81d9a68 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/PIC24FJ_OS/OS/Src" 
	@${RM} ${OBJECTDIR}/PIC24FJ_OS/OS/Src/OS.o.d 
	@${RM} ${OBJECTDIR}/PIC24FJ_OS/OS/Src/OS.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  PIC24FJ_OS/OS/Src/OS.c  -o ${OBJECTDIR}/PIC24FJ_OS/OS/Src/OS.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/PIC24FJ_OS/OS/Src/OS.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/PIC24FJ_OS/OS/Src/SC.o: PIC24FJ_OS/OS/Src/SC.c  .generated_files/flags/default/19274568057d382d948ca288f930209dd0c45354 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/PIC24FJ_OS/OS/Src" 
	@${RM} ${OBJECTDIR}/PIC24FJ_OS/OS/Src/SC.o.d 
	@${RM} ${OBJECTDIR}/PIC24FJ_OS/OS/Src/SC.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  PIC24FJ_OS/OS/Src/SC.c  -o ${OBJECTDIR}/PIC24FJ_OS/OS/Src/SC.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/PIC24FJ_OS/OS/Src/SC.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/PIC24FJ_OS/OS/Src/TIM.o: PIC24FJ_OS/OS/Src/TIM.c  .generated_files/flags/default/17cc365e55eaa3ae405a6c94feed57b3cc92d7f7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/PIC24FJ_OS/OS/Src" 
	@${RM} ${OBJECTDIR}/PIC24FJ_OS/OS/Src/TIM.o.d 
	@${RM} ${OBJECTDIR}/PIC24FJ_OS/OS/Src/TIM.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  PIC24FJ_OS/OS/Src/TIM.c  -o ${OBJECTDIR}/PIC24FJ_OS/OS/Src/TIM.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/PIC24FJ_OS/OS/Src/TIM.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/Src/main.o: Src/main.c  .generated_files/flags/default/df606d3dbcd22d22d2bb4aed2094915f16c9ea53 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/Src" 
	@${RM} ${OBJECTDIR}/Src/main.o.d 
	@${RM} ${OBJECTDIR}/Src/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Src/main.c  -o ${OBJECTDIR}/Src/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Src/main.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/Src/Cfg/OS_Tasklist_Stub.o: Src/Cfg/OS_Tasklist_Stub.c  .generated_files/flags/default/53e2f60b13e88ef84e06607309ccd60c42f999e7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/Src/Cfg" 
	@${RM} ${OBJECTDIR}/Src/Cfg/OS_Tasklist_Stub.o.d 
	@${RM} ${OBJECTDIR}/Src/Cfg/OS_Tasklist_Stub.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Src/Cfg/OS_Tasklist_Stub.c  -o ${OBJECTDIR}/Src/Cfg/OS_Tasklist_Stub.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Src/Cfg/OS_Tasklist_Stub.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/PIC24FJ_OS/OS/Src/GPIO.o: PIC24FJ_OS/OS/Src/GPIO.c  .generated_files/flags/default/ecabefeb1298262e6be32c898dbcab25822620b9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/PIC24FJ_OS/OS/Src" 
	@${RM} ${OBJECTDIR}/PIC24FJ_OS/OS/Src/GPIO.o.d 
	@${RM} ${OBJECTDIR}/PIC24FJ_OS/OS/Src/GPIO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  PIC24FJ_OS/OS/Src/GPIO.c  -o ${OBJECTDIR}/PIC24FJ_OS/OS/Src/GPIO.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/PIC24FJ_OS/OS/Src/GPIO.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/PIC24FJ_OS/OS/Src/I2C.o: PIC24FJ_OS/OS/Src/I2C.c  .generated_files/flags/default/1f7561ce2a0d0c492527d6257d5bfb70a48ec7de .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/PIC24FJ_OS/OS/Src" 
	@${RM} ${OBJECTDIR}/PIC24FJ_OS/OS/Src/I2C.o.d 
	@${RM} ${OBJECTDIR}/PIC24FJ_OS/OS/Src/I2C.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  PIC24FJ_OS/OS/Src/I2C.c  -o ${OBJECTDIR}/PIC24FJ_OS/OS/Src/I2C.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/PIC24FJ_OS/OS/Src/I2C.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/PIC24FJ_OS/OS/Src/IC.o: PIC24FJ_OS/OS/Src/IC.c  .generated_files/flags/default/5b3f8785e4886ec15b1ab3c393a9491bc0aa0e81 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/PIC24FJ_OS/OS/Src" 
	@${RM} ${OBJECTDIR}/PIC24FJ_OS/OS/Src/IC.o.d 
	@${RM} ${OBJECTDIR}/PIC24FJ_OS/OS/Src/IC.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  PIC24FJ_OS/OS/Src/IC.c  -o ${OBJECTDIR}/PIC24FJ_OS/OS/Src/IC.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/PIC24FJ_OS/OS/Src/IC.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/PIC24FJ_OS/OS/Src/MemMap.o: PIC24FJ_OS/OS/Src/MemMap.c  .generated_files/flags/default/4625f79e3a877a64c21855cb16ed72a4ed169f0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/PIC24FJ_OS/OS/Src" 
	@${RM} ${OBJECTDIR}/PIC24FJ_OS/OS/Src/MemMap.o.d 
	@${RM} ${OBJECTDIR}/PIC24FJ_OS/OS/Src/MemMap.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  PIC24FJ_OS/OS/Src/MemMap.c  -o ${OBJECTDIR}/PIC24FJ_OS/OS/Src/MemMap.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/PIC24FJ_OS/OS/Src/MemMap.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/PIC24FJ_OS/OS/Src/OS.o: PIC24FJ_OS/OS/Src/OS.c  .generated_files/flags/default/3c69c2663909376c8f12e0a42ab76a5856eb7d6e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/PIC24FJ_OS/OS/Src" 
	@${RM} ${OBJECTDIR}/PIC24FJ_OS/OS/Src/OS.o.d 
	@${RM} ${OBJECTDIR}/PIC24FJ_OS/OS/Src/OS.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  PIC24FJ_OS/OS/Src/OS.c  -o ${OBJECTDIR}/PIC24FJ_OS/OS/Src/OS.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/PIC24FJ_OS/OS/Src/OS.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/PIC24FJ_OS/OS/Src/SC.o: PIC24FJ_OS/OS/Src/SC.c  .generated_files/flags/default/97d0c359425f15e59247b4ddf74602c4acdf0921 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/PIC24FJ_OS/OS/Src" 
	@${RM} ${OBJECTDIR}/PIC24FJ_OS/OS/Src/SC.o.d 
	@${RM} ${OBJECTDIR}/PIC24FJ_OS/OS/Src/SC.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  PIC24FJ_OS/OS/Src/SC.c  -o ${OBJECTDIR}/PIC24FJ_OS/OS/Src/SC.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/PIC24FJ_OS/OS/Src/SC.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/PIC24FJ_OS/OS/Src/TIM.o: PIC24FJ_OS/OS/Src/TIM.c  .generated_files/flags/default/a6bcf0ab222ba77c67644680f72de44bb2579023 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/PIC24FJ_OS/OS/Src" 
	@${RM} ${OBJECTDIR}/PIC24FJ_OS/OS/Src/TIM.o.d 
	@${RM} ${OBJECTDIR}/PIC24FJ_OS/OS/Src/TIM.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  PIC24FJ_OS/OS/Src/TIM.c  -o ${OBJECTDIR}/PIC24FJ_OS/OS/Src/TIM.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/PIC24FJ_OS/OS/Src/TIM.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/Src/main.o: Src/main.c  .generated_files/flags/default/1c44d162ec7b2adaad36b15b5935fd2b9ffe5f7f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/Src" 
	@${RM} ${OBJECTDIR}/Src/main.o.d 
	@${RM} ${OBJECTDIR}/Src/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Src/main.c  -o ${OBJECTDIR}/Src/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Src/main.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/Src/Cfg/OS_Tasklist_Stub.o: Src/Cfg/OS_Tasklist_Stub.c  .generated_files/flags/default/a6fbf05ee878959d5e39395266f690b0d395a05f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/Src/Cfg" 
	@${RM} ${OBJECTDIR}/Src/Cfg/OS_Tasklist_Stub.o.d 
	@${RM} ${OBJECTDIR}/Src/Cfg/OS_Tasklist_Stub.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Src/Cfg/OS_Tasklist_Stub.c  -o ${OBJECTDIR}/Src/Cfg/OS_Tasklist_Stub.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Src/Cfg/OS_Tasklist_Stub.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
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
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/HumidityMonitor.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)      -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
${DISTDIR}/HumidityMonitor.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/HumidityMonitor.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
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
