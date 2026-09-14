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
FINAL_IMAGE=${DISTDIR}/ROBOT_Lecat_Morlet.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/ROBOT_Lecat_Morlet.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../ROBOT_Morlet_Lecat.X/ChipConfig.c ../ROBOT_Morlet_Lecat.X/IO.c ../ROBOT_Morlet_Lecat.X/Robot.c ../ROBOT_Morlet_Lecat.X/Timer.c ../ROBOT_Morlet_Lecat.X/Toolbox.c ../ROBOT_Morlet_Lecat.X/main.c ../ROBOT_Morlet_Lecat.X/PWM.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/2084695369/ChipConfig.o ${OBJECTDIR}/_ext/2084695369/IO.o ${OBJECTDIR}/_ext/2084695369/Robot.o ${OBJECTDIR}/_ext/2084695369/Timer.o ${OBJECTDIR}/_ext/2084695369/Toolbox.o ${OBJECTDIR}/_ext/2084695369/main.o ${OBJECTDIR}/_ext/2084695369/PWM.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/2084695369/ChipConfig.o.d ${OBJECTDIR}/_ext/2084695369/IO.o.d ${OBJECTDIR}/_ext/2084695369/Robot.o.d ${OBJECTDIR}/_ext/2084695369/Timer.o.d ${OBJECTDIR}/_ext/2084695369/Toolbox.o.d ${OBJECTDIR}/_ext/2084695369/main.o.d ${OBJECTDIR}/_ext/2084695369/PWM.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/2084695369/ChipConfig.o ${OBJECTDIR}/_ext/2084695369/IO.o ${OBJECTDIR}/_ext/2084695369/Robot.o ${OBJECTDIR}/_ext/2084695369/Timer.o ${OBJECTDIR}/_ext/2084695369/Toolbox.o ${OBJECTDIR}/_ext/2084695369/main.o ${OBJECTDIR}/_ext/2084695369/PWM.o

# Source Files
SOURCEFILES=../ROBOT_Morlet_Lecat.X/ChipConfig.c ../ROBOT_Morlet_Lecat.X/IO.c ../ROBOT_Morlet_Lecat.X/Robot.c ../ROBOT_Morlet_Lecat.X/Timer.c ../ROBOT_Morlet_Lecat.X/Toolbox.c ../ROBOT_Morlet_Lecat.X/main.c ../ROBOT_Morlet_Lecat.X/PWM.c



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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/ROBOT_Lecat_Morlet.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=33EP512MU814
MP_LINKER_FILE_OPTION=,--script=p33EP512MU814.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/2084695369/ChipConfig.o: ../ROBOT_Morlet_Lecat.X/ChipConfig.c  .generated_files/flags/default/7edd80499c0c6523134006af3b07917196493ef3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2084695369" 
	@${RM} ${OBJECTDIR}/_ext/2084695369/ChipConfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/2084695369/ChipConfig.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../ROBOT_Morlet_Lecat.X/ChipConfig.c  -o ${OBJECTDIR}/_ext/2084695369/ChipConfig.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/2084695369/ChipConfig.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/2084695369/IO.o: ../ROBOT_Morlet_Lecat.X/IO.c  .generated_files/flags/default/4f7a557b60b230b9e98428476bc37b489a5bd263 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2084695369" 
	@${RM} ${OBJECTDIR}/_ext/2084695369/IO.o.d 
	@${RM} ${OBJECTDIR}/_ext/2084695369/IO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../ROBOT_Morlet_Lecat.X/IO.c  -o ${OBJECTDIR}/_ext/2084695369/IO.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/2084695369/IO.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/2084695369/Robot.o: ../ROBOT_Morlet_Lecat.X/Robot.c  .generated_files/flags/default/5109813b262917c06347a843001e46f32079c72c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2084695369" 
	@${RM} ${OBJECTDIR}/_ext/2084695369/Robot.o.d 
	@${RM} ${OBJECTDIR}/_ext/2084695369/Robot.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../ROBOT_Morlet_Lecat.X/Robot.c  -o ${OBJECTDIR}/_ext/2084695369/Robot.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/2084695369/Robot.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/2084695369/Timer.o: ../ROBOT_Morlet_Lecat.X/Timer.c  .generated_files/flags/default/ff88650abe17b81841e0de68a321d031b4549b3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2084695369" 
	@${RM} ${OBJECTDIR}/_ext/2084695369/Timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/2084695369/Timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../ROBOT_Morlet_Lecat.X/Timer.c  -o ${OBJECTDIR}/_ext/2084695369/Timer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/2084695369/Timer.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/2084695369/Toolbox.o: ../ROBOT_Morlet_Lecat.X/Toolbox.c  .generated_files/flags/default/906f30eadf63ccceecb86db5091b56ab08c53e1e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2084695369" 
	@${RM} ${OBJECTDIR}/_ext/2084695369/Toolbox.o.d 
	@${RM} ${OBJECTDIR}/_ext/2084695369/Toolbox.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../ROBOT_Morlet_Lecat.X/Toolbox.c  -o ${OBJECTDIR}/_ext/2084695369/Toolbox.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/2084695369/Toolbox.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/2084695369/main.o: ../ROBOT_Morlet_Lecat.X/main.c  .generated_files/flags/default/8346464bf2eef16e94f2a9da04f704bd9d4cace0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2084695369" 
	@${RM} ${OBJECTDIR}/_ext/2084695369/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/2084695369/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../ROBOT_Morlet_Lecat.X/main.c  -o ${OBJECTDIR}/_ext/2084695369/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/2084695369/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/2084695369/PWM.o: ../ROBOT_Morlet_Lecat.X/PWM.c  .generated_files/flags/default/b43619afdeb3fc5f1746999649ed4f4d47b9e7d4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2084695369" 
	@${RM} ${OBJECTDIR}/_ext/2084695369/PWM.o.d 
	@${RM} ${OBJECTDIR}/_ext/2084695369/PWM.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../ROBOT_Morlet_Lecat.X/PWM.c  -o ${OBJECTDIR}/_ext/2084695369/PWM.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/2084695369/PWM.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/_ext/2084695369/ChipConfig.o: ../ROBOT_Morlet_Lecat.X/ChipConfig.c  .generated_files/flags/default/96bcf60fb947a9996bb7d96901004e61abc78523 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2084695369" 
	@${RM} ${OBJECTDIR}/_ext/2084695369/ChipConfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/2084695369/ChipConfig.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../ROBOT_Morlet_Lecat.X/ChipConfig.c  -o ${OBJECTDIR}/_ext/2084695369/ChipConfig.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/2084695369/ChipConfig.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/2084695369/IO.o: ../ROBOT_Morlet_Lecat.X/IO.c  .generated_files/flags/default/52f5b15acacf4a47583cce74da3b2d830f32f897 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2084695369" 
	@${RM} ${OBJECTDIR}/_ext/2084695369/IO.o.d 
	@${RM} ${OBJECTDIR}/_ext/2084695369/IO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../ROBOT_Morlet_Lecat.X/IO.c  -o ${OBJECTDIR}/_ext/2084695369/IO.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/2084695369/IO.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/2084695369/Robot.o: ../ROBOT_Morlet_Lecat.X/Robot.c  .generated_files/flags/default/f9f8ae57021c8476b05280ee84ea35e2cc51a43c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2084695369" 
	@${RM} ${OBJECTDIR}/_ext/2084695369/Robot.o.d 
	@${RM} ${OBJECTDIR}/_ext/2084695369/Robot.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../ROBOT_Morlet_Lecat.X/Robot.c  -o ${OBJECTDIR}/_ext/2084695369/Robot.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/2084695369/Robot.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/2084695369/Timer.o: ../ROBOT_Morlet_Lecat.X/Timer.c  .generated_files/flags/default/48926361ec864bc70d25cc866c2399fe630982a4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2084695369" 
	@${RM} ${OBJECTDIR}/_ext/2084695369/Timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/2084695369/Timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../ROBOT_Morlet_Lecat.X/Timer.c  -o ${OBJECTDIR}/_ext/2084695369/Timer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/2084695369/Timer.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/2084695369/Toolbox.o: ../ROBOT_Morlet_Lecat.X/Toolbox.c  .generated_files/flags/default/7c7def0e7f8fc7bdb5c12675488c654c5454e1eb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2084695369" 
	@${RM} ${OBJECTDIR}/_ext/2084695369/Toolbox.o.d 
	@${RM} ${OBJECTDIR}/_ext/2084695369/Toolbox.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../ROBOT_Morlet_Lecat.X/Toolbox.c  -o ${OBJECTDIR}/_ext/2084695369/Toolbox.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/2084695369/Toolbox.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/2084695369/main.o: ../ROBOT_Morlet_Lecat.X/main.c  .generated_files/flags/default/ee0911fc3cbd806692d84e98fb8d427e0405c8f7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2084695369" 
	@${RM} ${OBJECTDIR}/_ext/2084695369/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/2084695369/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../ROBOT_Morlet_Lecat.X/main.c  -o ${OBJECTDIR}/_ext/2084695369/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/2084695369/main.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/2084695369/PWM.o: ../ROBOT_Morlet_Lecat.X/PWM.c  .generated_files/flags/default/b4900aab013a32440de0400a15a0391eae5bb942 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2084695369" 
	@${RM} ${OBJECTDIR}/_ext/2084695369/PWM.o.d 
	@${RM} ${OBJECTDIR}/_ext/2084695369/PWM.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../ROBOT_Morlet_Lecat.X/PWM.c  -o ${OBJECTDIR}/_ext/2084695369/PWM.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/2084695369/PWM.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
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
${DISTDIR}/ROBOT_Lecat_Morlet.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/ROBOT_Lecat_Morlet.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -mreserve=data@0x1000:0x101B -mreserve=data@0x101C:0x101D -mreserve=data@0x101E:0x101F -mreserve=data@0x1020:0x1021 -mreserve=data@0x1022:0x1023 -mreserve=data@0x1024:0x1027 -mreserve=data@0x1028:0x104F   -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,--defsym=__MPLAB_DEBUGGER_ICD4=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
${DISTDIR}/ROBOT_Lecat_Morlet.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/ROBOT_Lecat_Morlet.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}\\xc16-bin2hex ${DISTDIR}/ROBOT_Lecat_Morlet.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
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
