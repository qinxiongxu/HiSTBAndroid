	.arch armv7-a
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 18, 4
	.file	"aoe_aop.c"
@ GNU C (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) version 4.4.1 (arm-hisiv200-linux-gnueabi)
@	compiled by GNU C version 4.1.1 20061011 (Red Hat 4.1.1-30), GMP version 4.3.1, MPFR version 2.4.2.
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -nostdinc
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/arch/arm/include
@ -Iarch/arm/include/generated
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/include
@ -Iinclude
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/arch/arm/include/uapi
@ -Iarch/arm/include/generated/uapi
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/include/uapi
@ -Iinclude/generated/uapi
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/drivers/msp/adsp/adsp_v1_1
@ -Idrivers/msp/adsp/adsp_v1_1
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/arch/arm/mach-hi3798mx/include
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/common/include
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/common/api/include
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/common/drv/include
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/include
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/api/include
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/include
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/include
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/include/comp
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/aoe/include
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/aflt/include
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/aoe/src/include
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/component/codec/iapcm_dec
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/component/codec/iamp3_dec
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/component/effect/base_effect
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1
@ -imultilib armv7a_soft -iprefix
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/
@ -isysroot /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../target
@ -D__KERNEL__ -D__LINUX_ARM_ARCH__=7 -Uarm -DCHIP_TYPE_hi3796mv100
@ -DSDK_VERSION=HiSTBAndroidV600R001C00SPC064_v2016061301 -DHI_MCE_SUPPORT
@ -DHI_GPIOI2C_SUPPORT -DHI_LOG_SUPPORT=1 -DHI_LOG_LEVEL=4
@ -DHI_PROC_SUPPORT=1 -DHI_HDMI_SUPPORT_1_4 -DHI_KEYLED_SUPPORT
@ -DHI_HDCP_SUPPORT -DHI_SCI_SUPPORT -DHI_PVR_SUPPORT -DHI_VI_SUPPORT
@ -DHI_VENC_SUPPORT -DHI_AENC_SUPPORT -DHI_PQ_V3_0
@ -DHI_SND_AOE_SWSIMULATE_SUPPORT -DINTERLEAVED_OUTPUT
@ -DPCM_DECODER_SUPPORT -DHI_SND_TIMER_CAST -DKBUILD_STR(s)=#s
@ -DKBUILD_BASENAME=KBUILD_STR(aoe_aop)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_adsp) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD drivers/msp/adsp/adsp_v1_1/./hifi/aoe/src/aop/.aoe_aop.o.d
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/drivers/msp/adsp/adsp_v1_1/./hifi/aoe/src/aop/aoe_aop.c
@ -mlittle-endian -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -marm -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/adsp/adsp_v1_1/./hifi/aoe/src/aop/aoe_aop.o -O2 -Wall -Wundef
@ -Wstrict-prototypes -Wno-trigraphs -Werror-implicit-function-declaration
@ -Wno-format-security -Wframe-larger-than=1024
@ -Wdeclaration-after-statement -Wno-pointer-sign -p -fno-strict-aliasing
@ -fno-common -fno-delete-null-pointer-checks -fno-dwarf2-cfi-asm
@ -funwind-tables -fno-stack-protector -fno-omit-frame-pointer
@ -fno-optimize-sibling-calls -fno-strict-overflow -fconserve-stack
@ -fverbose-asm
@ options enabled:  -falign-loops -fargument-alias -fauto-inc-dec
@ -fbranch-count-reg -fcaller-saves -fcprop-registers -fcrossjumping
@ -fcse-follow-jumps -fdefer-pop -fearly-inlining
@ -feliminate-unused-debug-types -fexpensive-optimizations
@ -fforward-propagate -ffunction-cse -fgcse -fgcse-lm
@ -fguess-branch-probability -fident -fif-conversion -fif-conversion2
@ -findirect-inlining -finline -finline-functions-called-once
@ -finline-small-functions -fipa-cp -fipa-pure-const -fipa-reference
@ -fira-share-save-slots -fira-share-spill-slots -fivopts
@ -fkeep-static-consts -fleading-underscore -fmath-errno -fmerge-constants
@ -fmerge-debug-strings -fmove-loop-invariants -foptimize-register-move
@ -fpeephole -fpeephole2 -fprofile -fpromote-loop-indices
@ -freg-struct-return -fregmove -frename-registers -freorder-blocks
@ -freorder-functions -frerun-cse-after-loop -fsched-interblock
@ -fsched-spec -fsched-stalled-insns-dep -fschedule-insns -fschedule-insns2
@ -fsection-anchors -fsigned-zeros -fsplit-ivs-in-unroller
@ -fsplit-wide-types -fthread-jumps -ftoplevel-reorder -ftrapping-math
@ -ftree-builtin-call-dce -ftree-ccp -ftree-ch -ftree-copy-prop
@ -ftree-copyrename -ftree-cselim -ftree-dce -ftree-dominator-opts
@ -ftree-dse -ftree-fre -ftree-loop-im -ftree-loop-ivcanon
@ -ftree-loop-optimize -ftree-parallelize-loops= -ftree-pre -ftree-reassoc
@ -ftree-scev-cprop -ftree-sink -ftree-sra -ftree-switch-conversion
@ -ftree-ter -ftree-vect-loop-version -ftree-vrp -funit-at-a-time
@ -funroll-loops -funwind-tables -fverbose-asm -fweb
@ -fzero-initialized-in-bss -mapcs-frame -mglibc -mlittle-endian

@ Compiler executable checksum: fa59e0bd179ef45b3a3c3e6f3383fdac

	.text
	.align	2
	.global	AOPGetChnCmd
	.type	AOPGetChnCmd, %function
AOPGetChnCmd:
	.fnstart
.LFB858:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {fp, ip, lr, pc}	@,
	.pad #4
	.save {fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r3, [r3, r0, asl #2]	@ pAopReg, g_stAopRm.hwAopReg
	ldr	r2, [r3, #4]	@ D.14969,
	tst	r2, #8	@ D.14969,
	movne	r0, #2	@ eNewCmd,
	bne	.L3	@,
	ldr	r0, [r3, #4]	@ tmp142,
	ands	r0, r0, #3	@ D.14973, tmp142,
	beq	.L3	@,
	cmp	r0, #1	@ D.14973,
	beq	.L3	@,
	ldr	r2, [r3, #4]	@ tmp144,
	mov	ip, #4	@ tmp145,
	mov	r0, #2	@ eNewCmd,
	bfi	r2, ip, #4, #4	@ tmp144, tmp145,,
	str	r2, [r3, #4]	@ tmp144,
	ldr	r2, [r3, #4]	@ tmp146,
	orr	ip, r2, #8	@ tmp149, tmp146,
	str	ip, [r3, #4]	@ tmp149,
.L3:
	str	r0, [r1, #0]	@ eNewCmd,* newcmd
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	AOPGetChnCmd, .-AOPGetChnCmd
	.align	2
	.global	AOPAckChnCmd
	.type	AOPAckChnCmd, %function
AOPAckChnCmd:
	.fnstart
.LFB859:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {fp, ip, lr, pc}	@,
	.pad #4
	.save {fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r3, [r3, r0, asl #2]	@ pAopReg, g_stAopRm.hwAopReg
	ldr	r2, [r3, #4]	@ D.14982,
	tst	r2, #8	@ D.14982,
	ldmnefd	sp, {fp, sp, pc}	@
	ldr	ip, [r3, #4]	@ tmp142,
	bfi	ip, r1, #4, #4	@ tmp142, Ack,,
	str	ip, [r3, #4]	@ tmp142,
	ldr	r1, [r3, #4]	@ tmp143,
	orr	r0, r1, #8	@ tmp145, tmp143,
	str	r0, [r3, #4]	@ tmp145,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	AOPAckChnCmd, .-AOPAckChnCmd
	.align	2
	.global	AOP_CheckIsCast
	.type	AOP_CheckIsCast, %function
AOP_CheckIsCast:
	.fnstart
.LFB860:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {fp, ip, lr, pc}	@,
	.pad #4
	.save {fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r1, #:lower16:.LANCHOR0	@ tmp139,
	movt	r1, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r3, [r1, r0, asl #2]	@ D.14992, g_stAopRm.hwAopReg
	ldr	r2, [r3, #0]	@ D.14993,* D.14992
	tst	r2, #1024	@ D.14993,
	ldreq	r0, [r3, #4]	@ D.14997,
	movne	r0, #0	@ D.15001,
	ubfxeq	r0, r0, #21, #1	@ D.15001, D.14997,,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	AOP_CheckIsCast, .-AOP_CheckIsCast
	.align	2
	.global	AOP_GetChnStatus
	.type	AOP_GetChnStatus, %function
AOP_GetChnStatus:
	.fnstart
.LFB869:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {fp, ip, lr, pc}	@,
	.pad #4
	.save {fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r3, #:lower16:.LANCHOR0	@ tmp136,
	add	r0, r0, #8	@ tmp137, Id,
	movt	r3, #:upper16:.LANCHOR0	@ tmp136,
	ldr	r3, [r3, r0, asl #2]	@ state, g_stAopRm.hAop
	cmp	r3, #0	@ state,
	streq	r3, [r1, #0]	@ state, <variable>.CurnStatus
	ldmeqfd	sp, {fp, sp, pc}	@
	ldr	ip, [r3, #80]	@ <variable>.CurnStatus, <variable>.CurnStatus
	str	ip, [r1, #0]	@ <variable>.CurnStatus, <variable>.CurnStatus
	ldr	r2, [r3, #28]	@ <variable>.stAttr.Priority, <variable>.stAttr.Priority
	str	r2, [r1, #4]	@ <variable>.stAttr.Priority, <variable>.Priority
	ldr	r0, [r3, #56]	@ <variable>.stAttr.stRbfAttr.uFrameSize, <variable>.stAttr.stRbfAttr.uFrameSize
	str	r0, [r1, #12]	@ <variable>.stAttr.stRbfAttr.uFrameSize, <variable>.uFrameSize
	ldr	ip, [r3, #12]	@ <variable>.stAttr.u32BitPerSample, <variable>.stAttr.u32BitPerSample
	str	ip, [r1, #8]	@ <variable>.stAttr.u32BitPerSample, <variable>.u32BitPerSample
	ldr	r2, [r3, #72]	@ <variable>.bBypass, <variable>.bBypass
	str	r2, [r1, #16]	@ <variable>.bBypass, <variable>.bBypass
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	AOP_GetChnStatus, .-AOP_GetChnStatus
	.align	2
	.global	AOP_GainPcmData
	.type	AOP_GainPcmData, %function
AOP_GainPcmData:
	.fnstart
.LFB876:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {fp, ip, lr, pc}	@,
	.pad #4
	.save {fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r3, #:lower16:.LANCHOR0	@ tmp136,
	add	r2, r0, #8	@ tmp137, uAop,
	movt	r3, #:upper16:.LANCHOR0	@ tmp136,
	ldr	r2, [r3, r2, asl #2]	@ state, g_stAopRm.hAop
	cmp	r2, #0	@ state,
	ldmeqfd	sp, {fp, sp, pc}	@
	mov	r0, r1	@, pstFrame
	ldrh	r3, [r2, #6]	@, <variable>.stGain.u16RGain
	ldr	r1, [r2, #0]	@, <variable>.stGain.bLinearMode
	ldrh	r2, [r2, #4]	@, <variable>.stGain.u16LGain
	bl	UTIL_LRGainProcess	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	AOP_GainPcmData, .-AOP_GainPcmData
	.align	2
	.global	AOP_MutePcmData
	.type	AOP_MutePcmData, %function
AOP_MutePcmData:
	.fnstart
.LFB875:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {fp, ip, lr, pc}	@,
	.pad #4
	.save {fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	add	r0, r0, #8	@ tmp139, uAop,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r3, [r3, r0, asl #2]	@ state, g_stAopRm.hAop
	cmp	r3, #0	@ state,
	ldmeqfd	sp, {fp, sp, pc}	@
	ldr	r2, [r3, #8]	@ <variable>.bMute, <variable>.bMute
	cmp	r2, #1	@ <variable>.bMute,
	ldmnefd	sp, {fp, sp, pc}	@
	ldr	r3, [r1, #8]	@ __n, <variable>.u32DataBytes
	ldr	r0, [r1, #0]	@ __p, <variable>.pDataBuf
	cmp	r3, #0	@ __n,
	ldmeqfd	sp, {fp, sp, pc}	@
	mov	r1, r3	@, __n
	bl	__memzero	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	AOP_MutePcmData, .-AOP_MutePcmData
	.align	2
	.global	AOP_GetChnAttr
	.type	AOP_GetChnAttr, %function
AOP_GetChnAttr:
	.fnstart
.LFB870:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r4, r1	@ pstAttr, pstAttr
	mov	r5, r0	@ Id, Id
	mov	r1, #60	@,
	mov	r0, r4	@, pstAttr
	add	r5, r5, #8	@ tmp137, Id,
	bl	__memzero	@
	movw	r3, #:lower16:.LANCHOR0	@ tmp136,
	movt	r3, #:upper16:.LANCHOR0	@ tmp136,
	ldr	ip, [r3, r5, asl #2]	@ state, g_stAopRm.hAop
	cmp	ip, #0	@ state,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	add	lr, ip, #12	@ tmp139, state,
	mov	r5, r4	@ pstAttr, pstAttr
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp140,,,,
	mov	r4, lr	@ tmp142, tmp140
	stmia	r5!, {r0, r1, r2, r3}	@ pstAttr,,,,
	mov	ip, r5	@ pstAttr, pstAttr
	ldmia	r4!, {r0, r1, r2, r3}	@ tmp142,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ pstAttr,,,,
	ldmia	r4!, {r0, r1, r2, r3}	@ tmp144,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ pstAttr,,,,
	mov	lr, ip	@ pstAttr, pstAttr
	ldmia	r4, {r0, r1, r2}	@ tmp144,,,
	stmia	ip, {r0, r1, r2}	@ pstAttr,,,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	AOP_GetChnAttr, .-AOP_GetChnAttr
	.align	2
	.global	AOPSwResetReg
	.type	AOPSwResetReg, %function
AOPSwResetReg:
	.fnstart
.LFB865:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r3, r4, fp, ip, lr, pc}	@,
	.pad #4
	.save {r3, r4, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r1, #32	@,
	mov	r4, r0	@ pAopReg, pAopReg
	bl	__memzero	@
	ldr	r0, [r4, #4]	@ tmp134,
	orr	r3, r0, #8	@ tmp136, tmp134,
	str	r3, [r4, #4]	@ tmp136,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	AOPSwResetReg, .-AOPSwResetReg
	.align	2
	.global	AOP_WriteBuffProcOKCnt
	.type	AOP_WriteBuffProcOKCnt, %function
AOP_WriteBuffProcOKCnt:
	.fnstart
.LFB874:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {fp, ip, lr, pc}	@,
	.pad #4
	.save {fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r3, r0, asl #2]	@ D.15269, g_stAopRm.hwAopReg
	ldr	r2, [r3, #0]	@ D.15268,* D.15269
	tst	r2, #1024	@ D.15268,
	ldmnefd	sp, {fp, sp, pc}	@
	ldr	r1, [r3, #4]	@ D.15266,
	tst	r1, #2097152	@ D.15266,
	ldmeqfd	sp, {fp, sp, pc}	@
	bl	CAST_FiFoFreeCnt	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	AOP_WriteBuffProcOKCnt, .-AOP_WriteBuffProcOKCnt
	.align	2
	.global	AOP_WriteBuffProcTryCnt
	.type	AOP_WriteBuffProcTryCnt, %function
AOP_WriteBuffProcTryCnt:
	.fnstart
.LFB873:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {fp, ip, lr, pc}	@,
	.pad #4
	.save {fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r3, r0, asl #2]	@ D.15277, g_stAopRm.hwAopReg
	ldr	r2, [r3, #0]	@ D.15276,* D.15277
	tst	r2, #1024	@ D.15276,
	ldmnefd	sp, {fp, sp, pc}	@
	ldr	r1, [r3, #4]	@ D.15274,
	tst	r1, #2097152	@ D.15274,
	ldmeqfd	sp, {fp, sp, pc}	@
	bl	CAST_FiFoTryCnt	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	AOP_WriteBuffProcTryCnt, .-AOP_WriteBuffProcTryCnt
	.align	2
	.global	AOP_QueryRbfInfo
	.type	AOP_QueryRbfInfo, %function
AOP_QueryRbfInfo:
	.fnstart
.LFB872:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r3, #:lower16:.LANCHOR0	@ tmp136,
	add	r0, r0, #8	@ tmp137, Id,
	movt	r3, #:upper16:.LANCHOR0	@ tmp136,
	mov	r5, r1	@ pstBufInfo, pstBufInfo
	ldr	r4, [r3, r0, asl #2]	@ state, g_stAopRm.hAop
	cmp	r4, #0	@ state,
	streq	r4, [r1, #16]	@ state, <variable>.u32ContiguousDataSize
	streq	r4, [r1, #20]	@ state, <variable>.u32TotalDataSize
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	ldr	r2, [r4, #80]	@ <variable>.CurnStatus, <variable>.CurnStatus
	cmp	r2, #0	@ <variable>.CurnStatus,
	streq	r2, [r1, #16]	@ <variable>.CurnStatus, <variable>.u32ContiguousDataSize
	streq	r2, [r1, #20]	@ <variable>.CurnStatus, <variable>.u32TotalDataSize
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	ldr	r0, [r4, #76]	@, <variable>.hRingOut
	bl	RBUF_QueryInfo	@
	ldr	r1, [r4, #60]	@ <variable>.stAttr.stRbfAttr.uLatencySize, <variable>.stAttr.stRbfAttr.uLatencySize
	str	r1, [r5, #32]	@ <variable>.stAttr.stRbfAttr.uLatencySize, <variable>.u32LatencySize
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	AOP_QueryRbfInfo, .-AOP_QueryRbfInfo
	.align	2
	.global	AOP_WriteRbfData
	.type	AOP_WriteRbfData, %function
AOP_WriteRbfData:
	.fnstart
.LFB871:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r3, r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r3, r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r4, #:lower16:.LANCHOR0	@ tmp142,
	add	r5, r0, #8	@ tmp143, Id,
	movt	r4, #:upper16:.LANCHOR0	@ tmp142,
	mov	ip, r1	@ pu32Src, pu32Src
	mov	r3, r2	@ u32SrcSize, u32SrcSize
	ldr	r5, [r4, r5, asl #2]	@ state, g_stAopRm.hAop
	cmp	r5, #0	@ state,
	beq	.L44	@,
	ldr	r6, [r5, #80]	@ <variable>.CurnStatus, <variable>.CurnStatus
	cmp	r6, #0	@ <variable>.CurnStatus,
	beq	.L44	@,
	ldr	r0, [r4, r0, asl #2]	@ D.15285, g_stAopRm.hwAopReg
	ldr	lr, [r0, #0]	@ D.15284,* D.15285
	tst	lr, #1024	@ D.15284,
	bne	.L45	@,
	ldr	r0, [r0, #4]	@ D.15282,
	tst	r0, #2097152	@ D.15282,
	beq	.L45	@,
	ldr	r0, [r5, #76]	@, <variable>.hRingOut
	bl	RBUF_WriteData	@
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L45:
	ldr	r0, [r5, #76]	@, <variable>.hRingOut
	mov	r1, ip	@, pu32Src
	mov	r2, r3	@, u32SrcSize
	bl	RBUF_WriteDataDma	@
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L44:
	mov	r0, #0	@ uWriteSize,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	AOP_WriteRbfData, .-AOP_WriteRbfData
	.align	2
	.global	AOP_Init
	.type	AOP_Init, %function
AOP_Init:
	.fnstart
.LFB866:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r3, r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r3, r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r4, #:lower16:.LANCHOR0	@ tmp142,
	movt	r4, #:upper16:.LANCHOR0	@ tmp142,
	mov	r5, r0	@ u32AopRegBase, u32AopRegBase
	mov	r6, #0	@ tmp144,
	str	r0, [r4, #0]	@ u32AopRegBase, g_stAopRm.hwAopReg
	bl	AOPSwResetReg	@
	add	r0, r5, #32	@ temp.558, u32AopRegBase,
	str	r6, [r4, #32]	@ tmp144, g_stAopRm.hAop
	str	r0, [r4, #4]	@ temp.558, g_stAopRm.hwAopReg
	bl	AOPSwResetReg	@
	add	r1, r5, #64	@ temp.560, u32AopRegBase,
	str	r6, [r4, #36]	@ tmp144, g_stAopRm.hAop
	str	r1, [r4, #8]	@ temp.560, g_stAopRm.hwAopReg
	mov	r0, r1	@, temp.560
	bl	AOPSwResetReg	@
	add	r3, r5, #96	@ temp.562, u32AopRegBase,
	str	r6, [r4, #40]	@ tmp144, g_stAopRm.hAop
	mov	r0, r3	@, temp.562
	str	r3, [r4, #12]	@ temp.562, g_stAopRm.hwAopReg
	bl	AOPSwResetReg	@
	add	ip, r5, #128	@ temp.564, u32AopRegBase,
	str	r6, [r4, #44]	@ tmp144, g_stAopRm.hAop
	mov	r0, ip	@, temp.564
	str	ip, [r4, #16]	@ temp.564, g_stAopRm.hwAopReg
	bl	AOPSwResetReg	@
	add	r2, r5, #160	@ temp.566, u32AopRegBase,
	str	r6, [r4, #48]	@ tmp144, g_stAopRm.hAop
	mov	r0, r2	@, temp.566
	str	r2, [r4, #20]	@ temp.566, g_stAopRm.hwAopReg
	bl	AOPSwResetReg	@
	add	r1, r5, #192	@ temp.568, u32AopRegBase,
	str	r6, [r4, #52]	@ tmp144, g_stAopRm.hAop
	mov	r0, r1	@, temp.568
	str	r1, [r4, #24]	@ temp.568, g_stAopRm.hwAopReg
	bl	AOPSwResetReg	@
	add	r3, r5, #224	@ D.15117, u32AopRegBase,
	str	r6, [r4, #56]	@ tmp144, g_stAopRm.hAop
	mov	r0, r3	@, D.15117
	str	r3, [r4, #28]	@ D.15117, g_stAopRm.hwAopReg
	bl	AOPSwResetReg	@
	mov	r0, r5	@, u32AopRegBase
	str	r6, [r4, #60]	@ tmp144, g_stAopRm.hAop
	bl	CAST_Init	@
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	AOP_Init, .-AOP_Init
	.align	2
	.global	AOPUpdateChnState
	.type	AOPUpdateChnState, %function
AOPUpdateChnState:
	.fnstart
.LFB863:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r3, #:lower16:.LANCHOR0	@ tmp144,
	add	r2, r0, #8	@ tmp146, Id,
	movt	r3, #:upper16:.LANCHOR0	@ tmp144,
	ldr	r4, [r3, r2, asl #2]	@ state, g_stAopRm.hAop
	ldr	r3, [r3, r0, asl #2]	@ pAopReg, g_stAopRm.hwAopReg
	cmp	r4, #0	@ state,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	mov	r0, #0	@ tmp147,
	str	r0, [r4, #0]	@ tmp147, <variable>.stGain.bLinearMode
	ldrb	lr, [r3, #12]	@ zero_extendqisi2	@ <variable>.AOP_EXT_CTRL.bits.volume_l, <variable>.AOP_EXT_CTRL.bits.volume_l
	ldr	r1, [r4, #12]	@, <variable>.stAttr.u32BitPerSample
	ldr	r0, [r4, #16]	@, <variable>.stAttr.u32Channels
	strh	lr, [r4, #4]	@ movhi	@ <variable>.AOP_EXT_CTRL.bits.volume_l, <variable>.stGain.u16LGain
	ldrb	ip, [r3, #13]	@ zero_extendqisi2	@ <variable>.AOP_EXT_CTRL.bits.volume_r, <variable>.AOP_EXT_CTRL.bits.volume_r
	strh	ip, [r4, #6]	@ movhi	@ <variable>.AOP_EXT_CTRL.bits.volume_r, <variable>.stGain.u16RGain
	ldr	r5, [r3, #12]	@ D.15067,
	ubfx	r2, r5, #16, #1	@ tmp153, D.15067,,
	str	r2, [r4, #8]	@ tmp153, <variable>.bMute
	ldr	lr, [r3, #4]	@ D.15070,
	ubfx	ip, lr, #12, #1	@ tmp155, D.15070,,
	str	ip, [r4, #72]	@ tmp155, <variable>.bBypass
	ldr	r5, [r3, #0]	@ tmp156,* pAopReg
	ubfx	r5, r5, #20, #6	@ D.15073, tmp156,,
	str	r5, [r4, #64]	@ D.15073, <variable>.stAttr.stRbfAttr.uLatencyMs
	bl	UTIL_CalcFrameSize	@
	ldr	r2, [r4, #20]	@, <variable>.stAttr.u32SampleRate
	mov	r1, r0	@ u32FrameSize,
	mov	r0, r5	@, D.15073
	bl	UTIL_LatencyMs2ByteSize	@
	str	r0, [r4, #60]	@, <variable>.stAttr.stRbfAttr.uLatencySize
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	AOPUpdateChnState, .-AOPUpdateChnState
	.align	2
	.global	AOP_DestroyChn
	.type	AOP_DestroyChn, %function
AOP_DestroyChn:
	.fnstart
.LFB862:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r3, r4, fp, ip, lr, pc}	@,
	.pad #4
	.save {r3, r4, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	add	r1, r0, #8	@ tmp140, Id,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r4, [r3, r1, asl #2]	@ inst, g_stAopRm.hAop
	cmp	r4, #0	@ inst,
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	ldr	r3, [r3, r0, asl #2]	@ D.15293, g_stAopRm.hwAopReg
	ldr	r2, [r3, #0]	@ D.15292,* D.15293
	tst	r2, #1024	@ D.15292,
	bne	.L55	@,
	ldr	r3, [r3, #4]	@ D.15290,
	tst	r3, #2097152	@ D.15290,
	beq	.L55	@,
	bl	CAST_Destroy	@
.L55:
	ldr	r0, [r4, #76]	@, <variable>.hRingOut
	bl	RBUF_Destroy	@
	mov	r1, r4	@, inst
	mov	r0, #17	@,
	bl	HI_ADSP_FREE	@
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	AOP_DestroyChn, .-AOP_DestroyChn
	.align	2
	.global	AOP_DeInit
	.type	AOP_DeInit, %function
AOP_DeInit:
	.fnstart
.LFB867:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r0, #0	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp133,
	movt	r4, #:upper16:.LANCHOR0	@ tmp133,
	bl	AOP_DestroyChn	@
	mov	r0, #1	@,
	mov	r5, #0	@ tmp134,
	str	r5, [r4, #32]	@ tmp134, g_stAopRm.hAop
	bl	AOP_DestroyChn	@
	mov	r0, #2	@,
	str	r5, [r4, #36]	@ tmp134, g_stAopRm.hAop
	bl	AOP_DestroyChn	@
	mov	r0, #3	@,
	str	r5, [r4, #40]	@ tmp134, g_stAopRm.hAop
	bl	AOP_DestroyChn	@
	mov	r0, #4	@,
	str	r5, [r4, #44]	@ tmp134, g_stAopRm.hAop
	bl	AOP_DestroyChn	@
	mov	r0, #5	@,
	str	r5, [r4, #48]	@ tmp134, g_stAopRm.hAop
	bl	AOP_DestroyChn	@
	mov	r0, #6	@,
	str	r5, [r4, #52]	@ tmp134, g_stAopRm.hAop
	bl	AOP_DestroyChn	@
	mov	r0, #7	@,
	str	r5, [r4, #56]	@ tmp134, g_stAopRm.hAop
	bl	AOP_DestroyChn	@
	mov	r0, #8	@,
	str	r5, [r4, #60]	@ tmp134, g_stAopRm.hAop
	bl	CAST_DeInit	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	AOP_DeInit, .-AOP_DeInit
	.align	2
	.global	AOPGetChnCreateAttr
	.type	AOPGetChnCreateAttr, %function
AOPGetChnCreateAttr:
	.fnstart
.LFB857:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #8
	sub	sp, sp, #8	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r3, #:lower16:.LANCHOR0	@ tmp160,
	movt	r3, #:upper16:.LANCHOR0	@ tmp160,
	mov	r4, r1	@ pstAttr, pstAttr
	ldr	r5, [r3, r0, asl #2]	@ pAopReg, g_stAopRm.hwAopReg
	mov	r0, r1	@, pstAttr
	ldr	r1, [r5, #0]	@ tmp161,* pAopReg
	and	r1, r1, #3	@, tmp161,
	bl	AOE_REG_ReadBitDepth	@
	cmp	r0, #0	@,
	beq	.L65	@,
.L60:
	mvn	r3, #0	@ D.14908,
.L63:
	mov	r0, r3	@, D.14908
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L65:
	ldr	r2, [r5, #0]	@ tmp163,* pAopReg
	add	r0, r4, #4	@, pstAttr,
	ubfx	r1, r2, #2, #2	@, tmp163,,
	bl	AOE_REG_ReadChannel	@
	cmp	r0, #0	@,
	bne	.L60	@,
	ldr	ip, [r5, #0]	@ tmp166,* pAopReg
	add	r0, r4, #8	@, pstAttr,
	ubfx	r1, ip, #4, #4	@, tmp166,,
	bl	AOE_REG_ReadSampelRate	@
	cmp	r0, #0	@,
	bne	.L60	@,
	ldr	lr, [r5, #0]	@ tmp169,* pAopReg
	add	r0, r4, #12	@, pstAttr,
	ubfx	r1, lr, #8, #2	@, tmp169,,
	bl	AOE_REG_ReadDataFormat	@
	cmp	r0, #0	@,
	bne	.L60	@,
	ldr	r1, [r5, #0]	@ tmp172,* pAopReg
	sub	r0, fp, #24	@,,
	ubfx	r1, r1, #20, #6	@, tmp172,,
	bl	AOE_REG_ReadBufLatencyMs	@
	cmp	r0, #0	@,
	bne	.L60	@,
	ldr	ip, [r5, #0]	@ tmp175,* pAopReg
	ldr	r1, [r4, #0]	@, <variable>.u32BitPerSample
	ubfx	r2, ip, #10, #1	@ D.14932, tmp175,,
	str	r2, [r4, #16]	@ D.14932, <variable>.Priority
	ldr	r3, [r5, #4]	@ tmp177,
	ldr	r0, [r4, #4]	@, <variable>.u32Channels
	ubfx	lr, r3, #21, #1	@ D.14934, tmp177,,
	str	lr, [r4, #56]	@ D.14934, <variable>.bAddMute
	bl	UTIL_CalcFrameSize	@
	mov	r1, #1	@ tmp179,
	str	r1, [r4, #20]	@ tmp179, <variable>.stRbfAttr.bExtMem
	ldr	ip, [r5, #20]	@ tmp180,
	ubfx	r2, ip, #24, #1	@ D.14939, tmp180,,
	str	r2, [r4, #40]	@ D.14939, <variable>.stRbfAttr.uBufFlag
	ldr	r3, [r5, #16]	@ D.14941, <variable>.AOP_BUF_ADDR
	str	r3, [r4, #24]	@ D.14941, <variable>.stRbfAttr.uBufAddr
	ldr	r1, [r5, #20]	@ tmp182,
	ubfx	ip, r1, #0, #24	@ D.14942, tmp182,,
	str	ip, [r4, #28]	@ D.14942, <variable>.stRbfAttr.uBufSize
	ldr	r2, [r5, #20]	@ D.14944,
	tst	r2, #16777216	@ D.14944,
	addeq	r2, r5, #28	@ D.14953, pAopReg,
	addeq	r5, r5, #24	@ D.14951, pAopReg,
	ldrne	r2, [r5, #24]	@ D.14948, <variable>.AOP_BUF_WPTR
	streq	r2, [r4, #36]	@ D.14953, <variable>.stRbfAttr.uBufRptr
	streq	r5, [r4, #32]	@ D.14951, <variable>.stRbfAttr.uBufWptr
	strne	r2, [r4, #32]	@ D.14948, <variable>.stRbfAttr.uBufWptr
	ldrne	r2, [r5, #28]	@ D.14949, <variable>.AOP_BUF_RPTR
	strne	r2, [r4, #36]	@ D.14949, <variable>.stRbfAttr.uBufRptr
	ldr	r3, [fp, #-24]	@ uLatencyMs, uLatencyMs
	ldr	r2, [r4, #8]	@, <variable>.u32SampleRate
	str	r3, [r4, #52]	@ uLatencyMs, <variable>.stRbfAttr.uLatencyMs
	mov	r1, r0	@, u32FrameSize
	str	r0, [r4, #44]	@ u32FrameSize, <variable>.stRbfAttr.uFrameSize
	mov	r0, r3	@, uLatencyMs
	bl	UTIL_LatencyMs2ByteSize	@
	mov	r3, #0	@ D.14908,
	str	r0, [r4, #48]	@, <variable>.stRbfAttr.uLatencySize
	b	.L63	@
	.fnend
	.size	AOPGetChnCreateAttr, .-AOPGetChnCreateAttr
	.align	2
	.global	AOPCreateChn
	.type	AOPCreateChn, %function
AOPCreateChn:
	.fnstart
.LFB861:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #72
	sub	sp, sp, #72	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	sub	r4, fp, #100	@ tmp170,,
	mov	r3, #0	@ tmp146,
	mov	r5, r0	@ Id, Id
	mov	r1, r4	@, tmp170
	str	r3, [fp, #-40]	@ tmp146, hRingOut
	bl	AOPGetChnCreateAttr	@
	cmp	r0, #0	@,
	beq	.L75	@,
.L67:
	mov	r0, #0	@ D.15017,
.L73:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L75:
	add	r8, r4, #20	@ tmp150, tmp170,
	sub	r0, fp, #40	@,,
	mov	r1, r8	@, tmp150
	bl	RBUF_Create	@
	ldr	r0, [fp, #-40]	@ hRingOut, hRingOut
	cmp	r0, #0	@ hRingOut,
	beq	.L67	@,
	mov	r0, #17	@,
	mov	r1, #84	@,
	bl	HI_ADSP_MALLOC	@
	subs	r6, r0, #0	@ D.15021,
	beq	.L68	@,
	movw	r7, #:lower16:.LANCHOR0	@ tmp171,
	movt	r7, #:upper16:.LANCHOR0	@ tmp171,
	mov	r1, #84	@,
	bl	__memzero	@
	ldr	r3, [r7, r5, asl #2]	@ D.15301, g_stAopRm.hwAopReg
	ldr	r2, [r3, #0]	@ D.15300,* D.15301
	tst	r2, #1024	@ D.15300,
	bne	.L69	@,
	ldr	r1, [r3, #4]	@ D.15298,
	tst	r1, #2097152	@ D.15298,
	beq	.L69	@,
	ldr	ip, [fp, #-92]	@ stAttr.u32SampleRate, stAttr.u32SampleRate
	mov	r1, r8	@, tmp150
	mov	r0, r5	@, Id
	ldr	r2, [fp, #-100]	@, stAttr.u32BitPerSample
	ldr	r3, [fp, #-96]	@, stAttr.u32Channels
	str	ip, [sp, #0]	@ stAttr.u32SampleRate,
	bl	CAST_Create	@
	subs	sl, r0, #0	@ hCastFifo,
	bne	.L71	@,
.L70:
	mov	r1, r6	@, D.15021
	mov	r0, #17	@,
	bl	HI_ADSP_FREE	@
.L68:
	ldr	r0, [fp, #-40]	@, hRingOut
	bl	RBUF_Destroy	@
	mov	r0, #0	@ D.15017,
	b	.L73	@
.L69:
	mov	sl, #0	@ hCastFifo,
.L71:
	ldmia	r4!, {r0, r1, r2, r3}	@ tmp161,,,,
	add	lr, r6, #12	@ tmp160, D.15021,
	mov	r8, lr	@ tmp172, tmp160
	stmia	r8!, {r0, r1, r2, r3}	@ tmp172,,,,
	mov	ip, r8	@ tmp174, tmp172
	ldmia	r4!, {r0, r1, r2, r3}	@ tmp173,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp174,,,,
	ldmia	r4!, {r0, r1, r2, r3}	@ tmp175,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp174,,,,
	ldmia	r4, {r0, r1, r2}	@ tmp175,,,
	stmia	ip, {r0, r1, r2}	@ tmp176,,,
	ldr	r3, [fp, #-40]	@ hRingOut, hRingOut
	str	r3, [r6, #76]	@ hRingOut, <variable>.hRingOut
	ldr	r3, [r7, r5, asl #2]	@ D.15309, g_stAopRm.hwAopReg
	ldr	lr, [r3, #0]	@ D.15308,* D.15309
	tst	lr, #1024	@ D.15308,
	bne	.L72	@,
	ldr	r0, [r3, #4]	@ D.15306,
	tst	r0, #2097152	@ D.15306,
	beq	.L72	@,
	str	sl, [r6, #76]	@ hCastFifo, <variable>.hRingOut
	mov	r0, r5	@, Id
	ldr	r1, [fp, #-40]	@, hRingOut
	bl	CAST_SetAopBuf	@
.L72:
	mov	r2, #1	@ tmp167,
	mov	r0, r6	@ D.15017, D.15021
	str	r2, [r6, #80]	@ tmp167, <variable>.CurnStatus
	b	.L73	@
	.fnend
	.size	AOPCreateChn, .-AOPCreateChn
	.align	2
	.global	AOPProcChnlCmd
	.type	AOPProcChnlCmd, %function
AOPProcChnlCmd:
	.fnstart
.LFB864:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r3, r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r3, r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r4, #:lower16:.LANCHOR0	@ tmp141,
	movt	r4, #:upper16:.LANCHOR0	@ tmp141,
	mov	r5, r0	@ Id, Id
	ldr	r3, [r4, r0, asl #2]	@ pAopReg, g_stAopRm.hwAopReg
	ldr	r2, [r3, #4]	@ D.15318,
	ands	r6, r2, #8	@ tmp142, D.15318,
	ldmnefd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	ldr	r1, [r3, #4]	@ tmp143,
	ands	r1, r1, #3	@ D.15316, tmp143,
	bne	.L85	@,
	bl	AOPCreateChn	@
	add	r3, r5, #8	@ tmp150, Id,
	cmp	r0, #0	@ D.15092,
	str	r0, [r4, r3, asl #2]	@ D.15092, g_stAopRm.hAop
	beq	.L81	@,
.L84:
	ldr	r3, [r4, r5, asl #2]	@ pAopReg, g_stAopRm.hwAopReg
.L82:
	ldr	lr, [r3, #4]	@ D.15335,
	ands	r2, lr, #8	@ tmp163, D.15335,
	ldmnefd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L86:
	ldr	r1, [r3, #4]	@ tmp164,
	bfi	r1, r2, #4, #4	@ tmp164, tmp163,,
	str	r1, [r3, #4]	@ tmp164,
	ldr	ip, [r3, #4]	@ tmp165,
	orr	r0, ip, #8	@ tmp169, tmp165,
	str	r0, [r3, #4]	@ tmp169,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L85:
	cmp	r1, #1	@ D.15316,
	beq	.L80	@,
	ldr	r2, [r3, #4]	@ tmp145,
	mov	r1, #4	@ tmp146,
	bfi	r2, r1, #4, #4	@ tmp145, tmp146,,
	str	r2, [r3, #4]	@ tmp145,
	ldr	ip, [r3, #4]	@ tmp147,
	orr	r0, ip, #8	@ tmp167, tmp147,
	str	r0, [r3, #4]	@ tmp167,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L80:
	bl	AOP_DestroyChn	@
	ldr	r3, [r4, r5, asl #2]	@ pAopReg, g_stAopRm.hwAopReg
	add	r5, r5, #8	@ tmp160, Id,
	str	r6, [r4, r5, asl #2]	@ tmp142, g_stAopRm.hAop
	ldr	lr, [r3, #4]	@ D.15335,
	ands	r2, lr, #8	@ tmp163, D.15335,
	beq	.L86	@,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L81:
	ldr	r3, [r4, r5, asl #2]	@ pAopReg, g_stAopRm.hwAopReg
	ldr	lr, [r3, #4]	@ D.15328,
	tst	lr, #8	@ D.15328,
	bne	.L82	@,
	ldr	r2, [r3, #4]	@ tmp154,
	mov	r1, #1	@ tmp155,
	bfi	r2, r1, #4, #4	@ tmp154, tmp155,,
	str	r2, [r3, #4]	@ tmp154,
	ldr	ip, [r3, #4]	@ tmp156,
	orr	r0, ip, #8	@ tmp168, tmp156,
	str	r0, [r3, #4]	@ tmp168,
	b	.L84	@
	.fnend
	.size	AOPProcChnlCmd, .-AOPProcChnlCmd
	.align	2
	.global	AOP_Process
	.type	AOP_Process, %function
AOP_Process:
	.fnstart
.LFB868:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {fp, ip, lr, pc}	@,
	.pad #4
	.save {fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r0, #0	@,
	bl	AOPUpdateChnState	@
	mov	r0, #0	@,
	bl	AOPProcChnlCmd	@
	mov	r0, #1	@,
	bl	AOPUpdateChnState	@
	mov	r0, #1	@,
	bl	AOPProcChnlCmd	@
	mov	r0, #2	@,
	bl	AOPUpdateChnState	@
	mov	r0, #2	@,
	bl	AOPProcChnlCmd	@
	mov	r0, #3	@,
	bl	AOPUpdateChnState	@
	mov	r0, #3	@,
	bl	AOPProcChnlCmd	@
	mov	r0, #4	@,
	bl	AOPUpdateChnState	@
	mov	r0, #4	@,
	bl	AOPProcChnlCmd	@
	mov	r0, #5	@,
	bl	AOPUpdateChnState	@
	mov	r0, #5	@,
	bl	AOPProcChnlCmd	@
	mov	r0, #6	@,
	bl	AOPUpdateChnState	@
	mov	r0, #6	@,
	bl	AOPProcChnlCmd	@
	mov	r0, #7	@,
	bl	AOPUpdateChnState	@
	mov	r0, #7	@,
	bl	AOPProcChnlCmd	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	AOP_Process, .-AOP_Process
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	g_stAopRm, %object
	.size	g_stAopRm, 64
g_stAopRm:
	.space	64
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
