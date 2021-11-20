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
	.file	"aoe_cast.c"
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
@ -DKBUILD_BASENAME=KBUILD_STR(aoe_cast)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_adsp) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD drivers/msp/adsp/adsp_v1_1/./hifi/aoe/src/aop/.aoe_cast.o.d
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/drivers/msp/adsp/adsp_v1_1/./hifi/aoe/src/aop/aoe_cast.c
@ -mlittle-endian -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -marm -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/adsp/adsp_v1_1/./hifi/aoe/src/aop/aoe_cast.o -O2 -Wall
@ -Wundef -Wstrict-prototypes -Wno-trigraphs
@ -Werror-implicit-function-declaration -Wno-format-security
@ -Wframe-larger-than=1024 -Wdeclaration-after-statement -Wno-pointer-sign
@ -p -fno-strict-aliasing -fno-common -fno-delete-null-pointer-checks
@ -fno-dwarf2-cfi-asm -funwind-tables -fno-stack-protector
@ -fno-omit-frame-pointer -fno-optimize-sibling-calls -fno-strict-overflow
@ -fconserve-stack -fverbose-asm
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
	.global	CASTGetCastId
	.type	CASTGetCastId, %function
CASTGetCastId:
	.fnstart
.LFB862:
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
	movt	r3, #:upper16:.LANCHOR0	@ tmp136,
	ldr	r2, [r3, #20]	@ g_stCastRm.AopId, g_stCastRm.AopId
	cmp	r2, r0	@ g_stCastRm.AopId, AopId
	moveq	r0, #0	@ uTmp,
	ldmeqfd	sp, {fp, sp, pc}	@
	ldr	r1, [r3, #24]	@ g_stCastRm.AopId, g_stCastRm.AopId
	cmp	r1, r0	@ g_stCastRm.AopId, AopId
	moveq	r0, #1	@ uTmp,
	ldmeqfd	sp, {fp, sp, pc}	@
	ldr	ip, [r3, #28]	@ g_stCastRm.AopId, g_stCastRm.AopId
	cmp	ip, r0	@ g_stCastRm.AopId, AopId
	moveq	r0, #2	@ uTmp,
	ldmeqfd	sp, {fp, sp, pc}	@
	ldr	r3, [r3, #32]	@ g_stCastRm.AopId, g_stCastRm.AopId
	cmp	r3, r0	@ g_stCastRm.AopId, AopId
	moveq	r0, #3	@ uTmp,
	movne	r0, #4	@ uTmp,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	CASTGetCastId, .-CASTGetCastId
	.align	2
	.global	CASTGetFreeCastId
	.type	CASTGetFreeCastId, %function
CASTGetFreeCastId:
	.fnstart
.LFB864:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp135,
	movt	r3, #:upper16:.LANCHOR0	@ tmp135,
	ldr	r0, [r3, #52]	@ g_stCastRm.hCast, g_stCastRm.hCast
	cmp	r0, #0	@ g_stCastRm.hCast,
	ldmeqfd	sp, {fp, sp, pc}	@
	ldr	r2, [r3, #56]	@ g_stCastRm.hCast, g_stCastRm.hCast
	cmp	r2, #0	@ g_stCastRm.hCast,
	moveq	r0, #1	@ enFreeCast,
	ldmeqfd	sp, {fp, sp, pc}	@
	ldr	r1, [r3, #60]	@ g_stCastRm.hCast, g_stCastRm.hCast
	cmp	r1, #0	@ g_stCastRm.hCast,
	moveq	r0, #2	@ enFreeCast,
	ldmeqfd	sp, {fp, sp, pc}	@
	ldr	r0, [r3, #64]	@ g_stCastRm.hCast, g_stCastRm.hCast
	cmp	r0, #0	@ g_stCastRm.hCast,
	moveq	r0, #3	@ enFreeCast,
	movne	r0, #4	@ enFreeCast,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	CASTGetFreeCastId, .-CASTGetFreeCastId
	.align	2
	.global	CAST_SetAopBuf
	.type	CAST_SetAopBuf, %function
CAST_SetAopBuf:
	.fnstart
.LFB865:
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
	cmp	r1, #0	@ hRing
	ldmeqfd	sp, {fp, sp, pc}	@
	movw	r3, #:lower16:.LANCHOR0	@ tmp151,
	movt	r3, #:upper16:.LANCHOR0	@ tmp151,
	ldr	r2, [r3, #20]	@ g_stCastRm.AopId, g_stCastRm.AopId
	cmp	r0, r2	@ AopId, g_stCastRm.AopId
	moveq	r2, #0	@ uCastId,
	beq	.L19	@,
	ldr	r2, [r3, #24]	@ g_stCastRm.AopId, g_stCastRm.AopId
	cmp	r0, r2	@ AopId, g_stCastRm.AopId
	moveq	r2, #1	@ uCastId,
	beq	.L19	@,
	ldr	r2, [r3, #28]	@ g_stCastRm.AopId, g_stCastRm.AopId
	cmp	r0, r2	@ AopId, g_stCastRm.AopId
	moveq	r2, #2	@ uCastId,
	beq	.L19	@,
	ldr	r2, [r3, #32]	@ g_stCastRm.AopId, g_stCastRm.AopId
	cmp	r0, r2	@ AopId, g_stCastRm.AopId
	ldmnefd	sp, {fp, sp, pc}	@
	mov	r2, #3	@ uCastId,
.L19:
	add	r0, r3, r2, asl #2	@, tmp148, tmp151, uCastId,
	ldr	r3, [r0, #52]	@ tmp150, g_stCastRm.hCast
	str	r1, [r3, #40]	@ hRing, <variable>.hRingOut_Cast
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	CAST_SetAopBuf, .-CAST_SetAopBuf
	.align	2
	.global	CAST_FiFoTryCnt
	.type	CAST_FiFoTryCnt, %function
CAST_FiFoTryCnt:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp152,
	movt	r3, #:upper16:.LANCHOR0	@ tmp152,
	ldr	r2, [r3, #20]	@ g_stCastRm.AopId, g_stCastRm.AopId
	cmp	r0, r2	@ uAopId, g_stCastRm.AopId
	moveq	r2, #0	@ uCastId,
	beq	.L25	@,
	ldr	r2, [r3, #24]	@ g_stCastRm.AopId, g_stCastRm.AopId
	cmp	r0, r2	@ uAopId, g_stCastRm.AopId
	moveq	r2, #1	@ uCastId,
	beq	.L25	@,
	ldr	r2, [r3, #28]	@ g_stCastRm.AopId, g_stCastRm.AopId
	cmp	r0, r2	@ uAopId, g_stCastRm.AopId
	moveq	r2, #2	@ uCastId,
	beq	.L25	@,
	ldr	r2, [r3, #32]	@ g_stCastRm.AopId, g_stCastRm.AopId
	cmp	r0, r2	@ uAopId, g_stCastRm.AopId
	ldmnefd	sp, {fp, sp, pc}	@
	mov	r2, #3	@ uCastId,
.L25:
	add	r0, r3, r2, asl #2	@, tmp148, tmp152, uCastId,
	ldr	r3, [r0, #52]	@ state, g_stCastRm.hCast
	cmp	r3, #0	@ state,
	ldrne	r2, [r3, #64]	@ <variable>.stProc.uFIFOReadTryCnt, <variable>.stProc.uFIFOReadTryCnt
	addne	r2, r2, #1	@ tmp151, <variable>.stProc.uFIFOReadTryCnt,
	strne	r2, [r3, #64]	@ tmp151, <variable>.stProc.uFIFOReadTryCnt
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	CAST_FiFoTryCnt, .-CAST_FiFoTryCnt
	.align	2
	.global	CAST_FiFoFreeCnt
	.type	CAST_FiFoFreeCnt, %function
CAST_FiFoFreeCnt:
	.fnstart
.LFB870:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp152,
	movt	r3, #:upper16:.LANCHOR0	@ tmp152,
	ldr	r2, [r3, #20]	@ g_stCastRm.AopId, g_stCastRm.AopId
	cmp	r0, r2	@ uAopId, g_stCastRm.AopId
	moveq	r2, #0	@ uCastId,
	beq	.L32	@,
	ldr	r2, [r3, #24]	@ g_stCastRm.AopId, g_stCastRm.AopId
	cmp	r0, r2	@ uAopId, g_stCastRm.AopId
	moveq	r2, #1	@ uCastId,
	beq	.L32	@,
	ldr	r2, [r3, #28]	@ g_stCastRm.AopId, g_stCastRm.AopId
	cmp	r0, r2	@ uAopId, g_stCastRm.AopId
	moveq	r2, #2	@ uCastId,
	beq	.L32	@,
	ldr	r2, [r3, #32]	@ g_stCastRm.AopId, g_stCastRm.AopId
	cmp	r0, r2	@ uAopId, g_stCastRm.AopId
	ldmnefd	sp, {fp, sp, pc}	@
	mov	r2, #3	@ uCastId,
.L32:
	add	r0, r3, r2, asl #2	@, tmp148, tmp152, uCastId,
	ldr	r3, [r0, #52]	@ state, g_stCastRm.hCast
	cmp	r3, #0	@ state,
	ldrne	r2, [r3, #68]	@ <variable>.stProc.uFIFOReadOkCnt, <variable>.stProc.uFIFOReadOkCnt
	addne	r2, r2, #1	@ tmp151, <variable>.stProc.uFIFOReadOkCnt,
	strne	r2, [r3, #68]	@ tmp151, <variable>.stProc.uFIFOReadOkCnt
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	CAST_FiFoFreeCnt, .-CAST_FiFoFreeCnt
	.align	2
	.global	CAST_DeInit
	.type	CAST_DeInit, %function
CAST_DeInit:
	.fnstart
.LFB878:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp135,
	movt	r4, #:upper16:.LANCHOR0	@ tmp135,
	mov	r5, #0	@ tmp136,
	ldr	r1, [r4, #12]	@ D.15132, g_stCastRm.u32CastWorkBuff
	str	r5, [r4, #52]	@ tmp136, g_stCastRm.hCast
	cmp	r1, r5	@ D.15132,
	str	r5, [r4, #56]	@ tmp136, g_stCastRm.hCast
	str	r5, [r4, #60]	@ tmp136, g_stCastRm.hCast
	str	r5, [r4, #64]	@ tmp136, g_stCastRm.hCast
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	mov	r0, #17	@,
	bl	HI_ADSP_FREE_Aligned	@
	str	r5, [r4, #12]	@ tmp136, g_stCastRm.u32CastWorkBuff
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	CAST_DeInit, .-CAST_DeInit
	.align	2
	.global	CAST_Init
	.type	CAST_Init, %function
CAST_Init:
	.fnstart
.LFB877:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r4, #:lower16:.LANCHOR0	@ tmp140,
	movt	r4, #:upper16:.LANCHOR0	@ tmp140,
	mov	r7, r0	@ u32AopRegBase, u32AopRegBase
	mov	r1, #68	@,
	mov	r5, #8	@ tmp145,
	mov	r0, r4	@, tmp140
	mov	r6, #0	@ tmp143,
	bl	__memzero	@
	add	r0, r7, #512	@ pretmp.422, u32AopRegBase,
	mov	r1, #48	@,
	str	r0, [r4, #36]	@ pretmp.422, g_stCastRm.hwCastReg
	bl	__memzero	@
	add	r2, r7, #560	@ temp.436, u32AopRegBase,
	mov	r1, #48	@,
	str	r2, [r4, #40]	@ temp.436, g_stCastRm.hwCastReg
	mov	r0, r2	@, temp.436
	str	r6, [r4, #52]	@ tmp143, g_stCastRm.hCast
	str	r5, [r4, #20]	@ tmp145, g_stCastRm.AopId
	bl	__memzero	@
	add	r3, r7, #608	@ temp.438, u32AopRegBase,
	add	r7, r7, #656	@ D.15093, u32AopRegBase,
	mov	r1, #48	@,
	str	r3, [r4, #44]	@ temp.438, g_stCastRm.hwCastReg
	mov	r0, r3	@, temp.438
	str	r6, [r4, #56]	@ tmp143, g_stCastRm.hCast
	str	r5, [r4, #24]	@ tmp145, g_stCastRm.AopId
	bl	__memzero	@
	mov	r1, #48	@,
	mov	r0, r7	@, D.15093
	str	r6, [r4, #60]	@ tmp143, g_stCastRm.hCast
	str	r5, [r4, #28]	@ tmp145, g_stCastRm.AopId
	str	r7, [r4, #48]	@ D.15093, g_stCastRm.hwCastReg
	bl	__memzero	@
	movw	r0, #:lower16:CAST_TimerHandle	@,
	movt	r0, #:upper16:CAST_TimerHandle	@,
	str	r6, [r4, #64]	@ tmp143, g_stCastRm.hCast
	str	r5, [r4, #32]	@ tmp145, g_stCastRm.AopId
	bl	TIMER_RegIsrFunc	@
	mov	r2, r5	@, tmp145
	mov	r0, #17	@,
	mov	r1, #15360	@,
	bl	HI_ADSP_MALLOC_Aligned	@
	cmp	r0, #0	@ pCastWork
	strne	r0, [r4, #12]	@ pCastWork, g_stCastRm.u32CastWorkBuff
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	CAST_Init, .-CAST_Init
	.align	2
	.type	CASTTimerDataHandle, %function
CASTTimerDataHandle:
	.fnstart
.LFB874:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #44
	sub	sp, sp, #44	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	subs	r4, r0, #0	@ state, state
	mov	r6, r1	@ uCastId, uCastId
	beq	.L58	@,
	movw	r5, #:lower16:.LANCHOR0	@ tmp228,
	movt	r5, #:upper16:.LANCHOR0	@ tmp228,
	ldr	r7, [r4, #32]	@ u32SrcLen, <variable>.stAttr.uWorkBufUseSize
	ldr	r8, [r5, #12]	@ D.15019, g_stCastRm.u32CastWorkBuff
	cmp	r8, #0	@ D.15019,
	beq	.L58	@,
	cmp	r7, #0	@ u32SrcLen,
	bne	.L72	@,
	sub	r9, fp, #80	@ tmp229,,
	ldr	r0, [r4, #36]	@, <variable>.hRingFifo
	mov	r1, r9	@, tmp229
	bl	RBUF_QueryInfo	@
.L46:
	ldr	r1, [r4, #60]	@ <variable>.stProc.uFIFOForceReadCnt, <variable>.stProc.uFIFOForceReadCnt
	movs	sl, r7, asl #1	@ u32SrcLen.476, u32SrcLen,
	add	r0, r1, #1	@ tmp195, <variable>.stProc.uFIFOForceReadCnt,
	str	r0, [r4, #60]	@ tmp195, <variable>.stProc.uFIFOForceReadCnt
	bne	.L47	@,
.L52:
	ldr	r0, [r4, #36]	@, <variable>.hRingFifo
	mov	r1, sl	@, u32SrcLen.476
	bl	RBUF_ReadDataComplete	@
.L50:
	cmp	r7, sl	@ u32SrcLen, u32DstLen
	bhi	.L54	@,
	ldr	r0, [r4, #40]	@, <variable>.hRingOut_Cast
	mov	r1, r9	@, tmp229
	bl	RBUF_QueryInfo	@
	ldr	r0, [fp, #-52]	@ stRbfOut.u32TotalFreeSize, stRbfOut.u32TotalFreeSize
	cmp	sl, r0	@ u32DstLen, stRbfOut.u32TotalFreeSize
	bcs	.L71	@,
	ldr	r3, [r4, #44]	@ <variable>.stProc.uBufWriteOkCnt, <variable>.stProc.uBufWriteOkCnt
	mov	r1, r8	@, D.15019
	mov	r2, sl	@, u32DstLen
	ldr	r0, [r4, #40]	@, <variable>.hRingOut_Cast
	add	ip, r3, #1	@ tmp221, <variable>.stProc.uBufWriteOkCnt,
	str	ip, [r4, #44]	@ tmp221, <variable>.stProc.uBufWriteOkCnt
	bl	RBUF_WriteDataDma	@
.L57:
	ldr	r1, [r4, #56]	@ <variable>.stProc.uBufWriteTotalCnt, <variable>.stProc.uBufWriteTotalCnt
	add	r5, r5, r6, asl #2	@, tmp218, tmp228, uCastId,
	ldr	r0, [r4, #44]	@ D.15197, <variable>.stProc.uBufWriteOkCnt
	add	lr, r1, #1	@ tmp213, <variable>.stProc.uBufWriteTotalCnt,
	str	lr, [r4, #56]	@ tmp213, <variable>.stProc.uBufWriteTotalCnt
	ldr	lr, [r5, #36]	@ pCastReg, g_stCastRm.hwCastReg
	str	r0, [lr, #28]	@ D.15197, <variable>.CAST_BUF_WRITEOK_CNT
	ldr	r2, [r4, #48]	@ D.15196, <variable>.stProc.uBufWriteMuteCnt
	str	r2, [lr, #32]	@ D.15196, <variable>.CAST_BUF_WRITEMUTE_CNT
	ldr	r3, [r4, #52]	@ D.15195, <variable>.stProc.uBufOverWriteCnt
	str	r3, [lr, #36]	@ D.15195, <variable>.CAST_BUF_OVERWRITE_CNT
	ldr	ip, [r4, #56]	@ D.15194, <variable>.stProc.uBufWriteTotalCnt
	str	ip, [lr, #40]	@ D.15194, <variable>.CAST_BUF_WRITETOTAL_CNT
	ldr	r1, [r4, #60]	@ D.15193, <variable>.stProc.uFIFOForceReadCnt
	str	r1, [lr, #24]	@ D.15193, <variable>.CAST_FIFO_FORCE_READ_CNT
	ldr	r0, [r4, #64]	@ D.15192, <variable>.stProc.uFIFOReadTryCnt
	str	r0, [lr, #16]	@ D.15192, <variable>.CAST_FIFO_TRY_CNT
	ldr	r2, [r4, #68]	@ D.15191, <variable>.stProc.uFIFOReadOkCnt
	str	r2, [lr, #20]	@ D.15191, <variable>.CAST_FIFO_OK_CNT
.L58:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L54:
	mov	r1, r9	@, tmp229
	ldr	r0, [r4, #40]	@, <variable>.hRingOut_Cast
	bl	RBUF_QueryInfo	@
	ldr	r1, [fp, #-52]	@ stRbfOut.u32TotalFreeSize, stRbfOut.u32TotalFreeSize
	cmp	r7, r1	@ u32SrcLen, stRbfOut.u32TotalFreeSize
	bcs	.L71	@,
	ldr	ip, [r4, #48]	@ <variable>.stProc.uBufWriteMuteCnt, <variable>.stProc.uBufWriteMuteCnt
	mov	r1, r8	@, D.15019
	mov	r2, r7	@, u32SrcLen
	ldr	r0, [r4, #40]	@, <variable>.hRingOut_Cast
	add	lr, ip, #1	@ tmp224, <variable>.stProc.uBufWriteMuteCnt,
	str	lr, [r4, #48]	@ tmp224, <variable>.stProc.uBufWriteMuteCnt
	bl	RBUF_WriteDataDma	@
	b	.L57	@
.L71:
	ldr	r3, [r4, #52]	@ <variable>.stProc.uBufOverWriteCnt, <variable>.stProc.uBufOverWriteCnt
	add	ip, r3, #1	@ tmp211, <variable>.stProc.uBufOverWriteCnt,
	str	ip, [r4, #52]	@ tmp211, <variable>.stProc.uBufOverWriteCnt
	b	.L58	@
.L72:
	sub	r9, fp, #80	@ tmp229,,
	mov	r0, r8	@, D.15019
	mov	r1, r7	@, u32SrcLen
	bl	__memzero	@
	ldr	r0, [r4, #36]	@, <variable>.hRingFifo
	mov	r1, r9	@, tmp229
	bl	RBUF_QueryInfo	@
	ldr	r2, [fp, #-60]	@ stBufInfo.u32TotalDataSize, stBufInfo.u32TotalDataSize
	add	r3, r7, r7, asl #3	@, tmp192, u32SrcLen, u32SrcLen,
	cmp	r2, r3	@ stBufInfo.u32TotalDataSize, tmp192
	movcc	sl, r7	@ u32SrcLen.476, u32SrcLen
	bcs	.L46	@,
.L47:
	mov	r1, sl	@, u32SrcLen.476
	mov	r0, r8	@, D.15019
	bl	__memzero	@
	ldr	ip, [fp, #-60]	@ stBufInfo.u32TotalDataSize, stBufInfo.u32TotalDataSize
	ldr	r1, [fp, #-64]	@ u32SrcLen.480, stBufInfo.u32ContiguousDataSize
	cmp	sl, ip	@ u32SrcLen.476, stBufInfo.u32TotalDataSize
	movhi	sl, #0	@ u32DstLen,
	bhi	.L50	@,
	cmp	sl, r1	@ u32SrcLen.476, u32SrcLen.480
	movcc	r1, sl	@ u32SrcLen.485, u32SrcLen.476
	ldr	r3, [fp, #-76]	@ D.15168, stBufInfo.u32ReadPtr
	cmp	r1, #0	@ u32SrcLen.485,
	ldr	r0, [fp, #-80]	@ D.15167, stBufInfo.u32BasePtr
	beq	.L48	@,
	add	r0, r0, r3	@ D.15166, D.15167, D.15168
	mov	r3, #1	@ u32Tmp,
	cmp	r3, r1	@ u32Tmp, u32SrcLen.485
	sub	r2, r1, #1	@ tmp234, u32SrcLen.485,
	ldrb	lr, [r0, #0]	@ zero_extendqisi2	@ tmp197,* D.15166
	and	ip, r2, r3	@ tmp236, tmp234,
	strb	lr, [r8, #0]	@ tmp197,* D.15019
	bcs	.L48	@,
	cmp	ip, #0	@ tmp236,
	beq	.L51	@,
	ldrb	lr, [r0, #1]	@ zero_extendqisi2	@ tmp247,
	mov	r3, #2	@ u32Tmp,
	cmp	r3, r1	@ u32Tmp, u32SrcLen.485
	strb	lr, [r8, #1]	@ tmp247,
	bcs	.L48	@,
.L51:
	ldrb	r2, [r3, r0]	@ zero_extendqisi2	@ tmp239,* D.15166
	add	lr, r3, #1	@ tmp237, u32Tmp,
	strb	r2, [r3, r8]	@ tmp239,* D.15019
	add	r3, lr, #1	@ u32Tmp, tmp237,
	ldrb	ip, [lr, r0]	@ zero_extendqisi2	@ tmp241,* D.15166
	cmp	r3, r1	@ u32Tmp, u32SrcLen.485
	strb	ip, [lr, r8]	@ tmp241,* D.15019
	bcc	.L51	@,
.L48:
	cmp	sl, r1	@ u32SrcLen.476, u32SrcLen.485
	bls	.L52	@,
	subs	ip, sl, r1	@ D.15165, u32SrcLen.476, u32SrcLen.485
	ldr	r0, [fp, #-80]	@ temp.483, stBufInfo.u32BasePtr
	beq	.L52	@,
	ldrb	r2, [r0, #0]	@ zero_extendqisi2	@ tmp199,* temp.483
	add	r1, r8, r1	@ pDest, D.15019, u32SrcLen.485
	cmp	ip, #1	@ D.15165,
	sub	r3, ip, #1	@ tmp230, D.15165,
	and	lr, r3, #1	@ tmp232, tmp230,
	mov	r3, #1	@ u32Tmp,
	strb	r2, [r1, #0]	@ tmp199,* pDest
	bls	.L52	@,
	cmp	lr, #0	@ tmp232,
	beq	.L53	@,
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ tmp246,
	mov	r3, #2	@ u32Tmp,
	cmp	ip, r3	@ D.15165, u32Tmp
	strb	r2, [r1, #1]	@ tmp246,
	bls	.L52	@,
.L53:
	ldrb	lr, [r3, r0]	@ zero_extendqisi2	@ tmp243,* temp.483
	add	r2, r3, #1	@ tmp233, u32Tmp,
	strb	lr, [r1, r3]	@ tmp243,* u32Tmp
	add	r3, r2, #1	@ u32Tmp, tmp233,
	ldrb	lr, [r2, r0]	@ zero_extendqisi2	@ tmp245,* temp.483
	cmp	ip, r3	@ D.15165, u32Tmp
	strb	lr, [r1, r2]	@ tmp245,
	bhi	.L53	@,
	b	.L52	@
	.fnend
	.size	CASTTimerDataHandle, .-CASTTimerDataHandle
	.align	2
	.global	CAST_TimerHandle
	.type	CAST_TimerHandle, %function
CAST_TimerHandle:
	.fnstart
.LFB875:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp163,
	movt	r4, #:upper16:.LANCHOR0	@ tmp163,
	ldr	r5, [r4, #52]	@ state.513, g_stCastRm.hCast
	cmp	r5, #0	@ state.513,
	beq	.L74	@,
	add	r0, r4, #68	@, tmp163,
	bl	_raw_spin_lock_bh	@
	mov	r0, r5	@, state.513
	mov	r1, #0	@,
	bl	CASTTimerDataHandle	@
	add	r0, r4, #68	@, tmp163,
	bl	_raw_spin_unlock_bh	@
.L74:
	ldr	r5, [r4, #56]	@ state.515, g_stCastRm.hCast
	cmp	r5, #0	@ state.515,
	beq	.L75	@,
	ldr	r0, .L79	@,
	bl	_raw_spin_lock_bh	@
	mov	r0, r5	@, state.515
	mov	r1, #1	@,
	bl	CASTTimerDataHandle	@
	ldr	r0, .L79	@,
	bl	_raw_spin_unlock_bh	@
.L75:
	ldr	r5, [r4, #60]	@ state.517, g_stCastRm.hCast
	cmp	r5, #0	@ state.517,
	beq	.L76	@,
	ldr	r0, .L79+4	@,
	bl	_raw_spin_lock_bh	@
	mov	r0, r5	@, state.517
	mov	r1, #2	@,
	bl	CASTTimerDataHandle	@
	ldr	r0, .L79+4	@,
	bl	_raw_spin_unlock_bh	@
.L76:
	ldr	r4, [r4, #64]	@ state, g_stCastRm.hCast
	cmp	r4, #0	@ state,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	ldr	r0, .L79+8	@,
	bl	_raw_spin_lock_bh	@
	mov	r0, r4	@, state
	mov	r1, #3	@,
	bl	CASTTimerDataHandle	@
	ldr	r0, .L79+8	@,
	bl	_raw_spin_unlock_bh	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L80:
	.align	2
.L79:
	.word	.LANCHOR0+72
	.word	.LANCHOR0+76
	.word	.LANCHOR0+80
	.fnend
	.size	CAST_TimerHandle, .-CAST_TimerHandle
	.align	2
	.type	CASTCalcSize, %function
CASTCalcSize:
	.fnstart
.LFB857:
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
	mov	r5, r0	@ u32Len, u32Len
	ldr	r1, [r1, #0]	@, <variable>.u32BitPerSample
	ldr	r0, [r4, #4]	@, <variable>.u32Channels
	bl	UTIL_CalcFrameSize	@
	ldr	r2, [r4, #8]	@ <variable>.u32SampleRate, <variable>.u32SampleRate
	movw	r3, #:lower16:274877907	@ tmp144,
	movt	r3, #:upper16:274877907	@ tmp144,
	mul	r1, r2, r5	@ tmp141, <variable>.u32SampleRate, u32Len
	umull	r2, r5, r3, r1	@, tmp143, tmp144, tmp141
	mov	r5, r5, lsr #6	@ samples, tmp143,
	tst	r5, #3	@ samples,
	addne	r5, r5, #3	@ tmp146, samples,
	movne	r5, r5, lsr #2	@ D.14762, tmp146,
	movne	r5, r5, asl #2	@ samples, D.14762,
	mul	r0, r0, r5	@, framesize, samples
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	CASTCalcSize, .-CASTCalcSize
	.align	2
	.global	CAST_Create
	.type	CAST_Create, %function
CAST_Create:
	.fnstart
.LFB867:
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #20
	sub	sp, sp, #20	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r5, r0	@ Id, Id
	mov	r4, r1	@ pstBufAttr, pstBufAttr
	mov	r0, #17	@,
	mov	r1, #72	@,
	mov	r6, r2	@ u32BitPerSample, u32BitPerSample
	mov	sl, r3	@ Channels, Channels
	mov	r3, #0	@ tmp152,
	str	r3, [fp, #-48]	@ tmp152, hRingOut
	bl	HI_ADSP_MALLOC	@
	subs	r7, r0, #0	@ state,
	moveq	r0, r7	@ D.14882, state
	beq	.L86	@,
	mov	r1, #72	@,
	bl	__memzero	@
	movw	r3, #:lower16:.LANCHOR0	@ tmp192,
	movt	r3, #:upper16:.LANCHOR0	@ tmp192,
	ldr	r8, [r3, #52]	@ g_stCastRm.hCast, g_stCastRm.hCast
	cmp	r8, #0	@ g_stCastRm.hCast,
	beq	.L88	@,
	ldr	r2, [r3, #56]	@ g_stCastRm.hCast, g_stCastRm.hCast
	cmp	r2, #0	@ g_stCastRm.hCast,
	moveq	r8, #1	@ uCastId,
	beq	.L88	@,
	ldr	r0, [r3, #60]	@ g_stCastRm.hCast, g_stCastRm.hCast
	cmp	r0, #0	@ g_stCastRm.hCast,
	moveq	r8, #2	@ uCastId,
	beq	.L88	@,
	ldr	r1, [r3, #64]	@ g_stCastRm.hCast, g_stCastRm.hCast
	cmp	r1, #0	@ g_stCastRm.hCast,
	beq	.L93	@,
.L91:
	mov	r0, #17	@,
	mov	r1, r7	@, state
	bl	HI_ADSP_FREE	@
	mov	r0, #0	@ D.14882,
.L86:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L93:
	mov	r8, #3	@ uCastId,
.L88:
	str	sl, [r7, #16]	@ Channels, <variable>.stAttr.u32Channels
	add	r3, r3, r8, asl #2	@, tmp165, tmp192, uCastId,
	str	r6, [r7, #12]	@ u32BitPerSample, <variable>.stAttr.u32BitPerSample
	add	r9, r7, #12	@ D.15223, state,
	ldr	r6, [fp, #4]	@ u32SampleRate, u32SampleRate
	mov	sl, #0	@ tmp167,
	mov	r1, r9	@, D.15223
	mov	r0, #65	@,
	str	r6, [r7, #20]	@ u32SampleRate, <variable>.stAttr.u32SampleRate
	movw	r6, #:lower16:.LANCHOR0	@ tmp161,
	ldr	lr, [r3, #36]	@ pCastReg, g_stCastRm.hwCastReg
	movt	r6, #:upper16:.LANCHOR0	@ tmp161,
	str	sl, [r4, #0]	@ tmp167, <variable>.bExtMem
	str	lr, [fp, #-56]	@,
	bl	CASTCalcSize	@
	ldr	ip, [fp, #-56]	@,
	add	r1, ip, #8	@ D.15221, pCastReg,
	add	r2, ip, #12	@ D.15219, pCastReg,
	str	r1, [r4, #12]	@ D.15221, <variable>.uBufWptr
	str	r2, [r4, #16]	@ D.15219, <variable>.uBufRptr
	str	r0, [r4, #8]	@, <variable>.uBufSize
	ldr	r1, [r7, #12]	@, <variable>.stAttr.u32BitPerSample
	ldr	r0, [r7, #16]	@, <variable>.stAttr.u32Channels
	str	ip, [fp, #-56]	@,
	bl	UTIL_CalcFrameSize	@
	ldr	r3, [r4, #8]	@ D.15214, <variable>.uBufSize
	mov	r1, r4	@, pstBufAttr
	str	r0, [r4, #24]	@, <variable>.uFrameSize
	sub	r0, fp, #48	@,,
	ldr	ip, [fp, #-56]	@,
	str	r3, [ip, #4]	@ D.15214, <variable>.CAST_FIFO_SIZE
	str	r5, [ip, #0]	@ Id, <variable>.CAST_ATTR
	bl	RBUF_Create	@
	ldr	r3, [fp, #-48]	@ hRingOut.240, hRingOut
	cmp	r3, sl	@ hRingOut.240,
	beq	.L91	@,
	str	r3, [r7, #36]	@ hRingOut.240, <variable>.hRingFifo
	add	r3, r6, r8, asl #2	@, tmp175, tmp161, uCastId,
	ldr	lr, [r6, #16]	@ g_stCastRm.uCastNum, g_stCastRm.uCastNum
	mov	r1, r9	@, D.15223
	str	r5, [r3, #20]	@ Id, g_stCastRm.AopId
	mov	r0, #5	@,
	add	r2, lr, #1	@ tmp180, g_stCastRm.uCastNum,
	str	r2, [r6, #16]	@ tmp180, g_stCastRm.uCastNum
	bl	CASTCalcSize	@
	add	ip, r6, #68	@ tmp182, tmp161,
	add	r6, r6, r8, asl #2	@, tmp189, tmp161, uCastId,
	mov	r1, #28	@,
	str	r0, [r7, #32]	@, <variable>.stAttr.uWorkBufUseSize
	add	r0, r7, #44	@, state,
	str	sl, [ip, r8, asl #2]	@ tmp167, <variable>.D.4478.rlock
	bl	__memzero	@
	ldr	r0, [fp, #-48]	@ D.14882, hRingOut
	str	r7, [r6, #52]	@ state, g_stCastRm.hCast
	b	.L86	@
	.fnend
	.size	CAST_Create, .-CAST_Create
	.align	2
	.global	CAST_Destroy
	.type	CAST_Destroy, %function
CAST_Destroy:
	.fnstart
.LFB866:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, fp, ip, lr, pc}	@,
	.pad #4
	.save {r3, r4, r5, r6, r7, r8, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r3, #:lower16:.LANCHOR0	@ tmp166,
	movt	r3, #:upper16:.LANCHOR0	@ tmp166,
	ldr	r2, [r3, #20]	@ g_stCastRm.AopId, g_stCastRm.AopId
	cmp	r0, r2	@ Id, g_stCastRm.AopId
	moveq	r2, #0	@ uCastId,
	beq	.L96	@,
	ldr	r2, [r3, #24]	@ g_stCastRm.AopId, g_stCastRm.AopId
	cmp	r0, r2	@ Id, g_stCastRm.AopId
	moveq	r2, #1	@ uCastId,
	beq	.L96	@,
	ldr	r2, [r3, #28]	@ g_stCastRm.AopId, g_stCastRm.AopId
	cmp	r0, r2	@ Id, g_stCastRm.AopId
	moveq	r2, #2	@ uCastId,
	beq	.L96	@,
	ldr	r2, [r3, #32]	@ g_stCastRm.AopId, g_stCastRm.AopId
	cmp	r0, r2	@ Id, g_stCastRm.AopId
	ldmnefd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	mov	r2, #3	@ uCastId,
.L96:
	add	r7, r2, #12	@ tmp147, uCastId,
	movw	r4, #:lower16:.LANCHOR0	@ tmp146,
	movt	r4, #:upper16:.LANCHOR0	@ tmp146,
	add	r7, r3, r7, asl #2	@, tmp150, tmp166, tmp147,
	ldr	r8, [r7, #4]	@ state, g_stCastRm.hCast
	cmp	r8, #0	@ state,
	ldmeqfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	add	r5, r4, #68	@ tmp153, tmp146,
	ldr	r6, [r8, #40]	@ hRingOut_cast, <variable>.hRingOut_Cast
	add	r5, r5, r2, asl #2	@, D.15234, tmp153, uCastId,
	mov	r0, r5	@, D.15234
	bl	_raw_spin_lock_bh	@
	mov	r1, r8	@, state
	mov	r0, #17	@,
	bl	HI_ADSP_FREE	@
	mov	r1, #0	@ tmp161,
	mov	r0, r5	@, D.15234
	str	r1, [r7, #4]	@ tmp161, g_stCastRm.hCast
	bl	_raw_spin_unlock_bh	@
	mov	r0, r6	@, hRingOut_cast
	bl	RBUF_Destroy	@
	ldr	r0, [r4, #16]	@ g_stCastRm.uCastNum, g_stCastRm.uCastNum
	sub	r3, r0, #1	@ tmp165, g_stCastRm.uCastNum,
	str	r3, [r4, #16]	@ tmp165, g_stCastRm.uCastNum
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	CAST_Destroy, .-CAST_Destroy
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	g_stCastRm, %object
	.size	g_stCastRm, 68
g_stCastRm:
	.space	68
	.type	g_spinCasetLock, %object
	.size	g_spinCasetLock, 16
g_spinCasetLock:
	.space	16
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
