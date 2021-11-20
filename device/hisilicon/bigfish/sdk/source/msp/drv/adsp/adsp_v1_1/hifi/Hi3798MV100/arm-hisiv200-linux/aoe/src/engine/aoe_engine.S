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
	.file	"aoe_engine.c"
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
@ -DKBUILD_BASENAME=KBUILD_STR(aoe_engine)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_adsp) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD drivers/msp/adsp/adsp_v1_1/./hifi/aoe/src/engine/.aoe_engine.o.d
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/drivers/msp/adsp/adsp_v1_1/./hifi/aoe/src/engine/aoe_engine.c
@ -mlittle-endian -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -marm -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/adsp/adsp_v1_1/./hifi/aoe/src/engine/aoe_engine.o -O2 -Wall
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
	.global	ENGINE_GetChnCmd
	.type	ENGINE_GetChnCmd, %function
ENGINE_GetChnCmd:
	.fnstart
.LFB857:
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
	ldr	r3, [r3, r0, asl #2]	@ pEneReg, g_stEneRm.hwEneReg
	ldr	r2, [r3, #4]	@ D.14962,
	tst	r2, #8	@ D.14962,
	movne	r0, #2	@ eNewCmd,
	bne	.L3	@,
	ldr	r0, [r3, #4]	@ tmp142,
	ands	r0, r0, #3	@ D.14966, tmp142,
	beq	.L3	@,
	cmp	r0, #1	@ D.14966,
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
	.size	ENGINE_GetChnCmd, .-ENGINE_GetChnCmd
	.align	2
	.global	ENGINEAckCmd
	.type	ENGINEAckCmd, %function
ENGINEAckCmd:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r3, [r3, r0, asl #2]	@ pEneReg, g_stEneRm.hwEneReg
	ldr	r2, [r3, #4]	@ D.14975,
	tst	r2, #8	@ D.14975,
	ldmnefd	sp, {fp, sp, pc}	@
	ldr	ip, [r3, #4]	@ tmp142,
	bfi	ip, r1, #4, #4	@ tmp142, Ack,,
	str	ip, [r3, #4]	@ tmp142,
	ldr	r1, [r3, #4]	@ tmp143,
	orr	r0, r1, #8	@ tmp145, tmp143,
	str	r0, [r3, #4]	@ tmp145,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	ENGINEAckCmd, .-ENGINEAckCmd
	.align	2
	.global	ENGINEProcChnStopCmd
	.type	ENGINEProcChnStopCmd, %function
ENGINEProcChnStopCmd:
	.fnstart
.LFB871:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp146,
	add	r2, r0, #6	@ tmp138, Id,
	movt	r3, #:upper16:.LANCHOR0	@ tmp146,
	ldr	r2, [r3, r2, asl #2]	@ state, g_stEneRm.hEne
	cmp	r2, #0	@ state,
	ldmeqfd	sp, {fp, sp, pc}	@
	ldr	r1, [r2, #76]	@ <variable>.CurStatus, <variable>.CurStatus
	cmp	r1, #1	@ <variable>.CurStatus,
	moveq	r1, #0	@ tmp140,
	streq	r1, [r2, #76]	@ tmp140, <variable>.CurStatus
	ldr	r3, [r3, r0, asl #2]	@ pEneReg, g_stEneRm.hwEneReg
	ldr	r0, [r3, #4]	@ D.15595,
	ands	r2, r0, #8	@ tmp142, D.15595,
	ldmnefd	sp, {fp, sp, pc}	@
	ldr	r0, [r3, #4]	@ tmp143,
	bfi	r0, r2, #4, #4	@ tmp143, tmp142,,
	str	r0, [r3, #4]	@ tmp143,
	ldr	r2, [r3, #4]	@ tmp144,
	orr	ip, r2, #8	@ tmp147, tmp144,
	str	ip, [r3, #4]	@ tmp147,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	ENGINEProcChnStopCmd, .-ENGINEProcChnStopCmd
	.align	2
	.global	ENGINEUpdateChnAefState
	.type	ENGINEUpdateChnAefState, %function
ENGINEUpdateChnAefState:
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
	str	r1, [r0, #56]	@ AefFlag, <variable>.AefMask
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	ENGINEUpdateChnAefState, .-ENGINEUpdateChnAefState
	.align	2
	.global	ENGINEGetCunrStatus
	.type	ENGINEGetCunrStatus, %function
ENGINEGetCunrStatus:
	.fnstart
.LFB877:
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
	movw	r1, #:lower16:.LANCHOR0	@ tmp137,
	add	r0, r0, #6	@ tmp138, Id,
	movt	r1, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r1, r0, asl #2]	@ state, g_stEneRm.hEne
	cmp	r3, #0	@ state,
	moveq	r0, #2	@ D.15509,
	ldrne	r0, [r3, #76]	@ D.15509, <variable>.CurStatus
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	ENGINEGetCunrStatus, .-ENGINEGetCunrStatus
	.align	2
	.global	ENGINESwResetReg
	.type	ENGINESwResetReg, %function
ENGINESwResetReg:
	.fnstart
.LFB879:
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
	mov	r4, r0	@ pEneReg, pEneReg
	bl	__memzero	@
	ldr	r1, [r4, #4]	@ tmp134,
	mov	r2, #1	@ tmp137,
	orr	r0, r1, #8	@ tmp138, tmp134,
	str	r0, [r4, #4]	@ tmp138,
	ldr	r3, [r4, #4]	@ tmp136,
	bfi	r3, r2, #0, #2	@ tmp136, tmp137,,
	str	r3, [r4, #4]	@ tmp136,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	ENGINESwResetReg, .-ENGINESwResetReg
	.align	2
	.global	ENGINE_Init
	.type	ENGINE_Init, %function
ENGINE_Init:
	.fnstart
.LFB881:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp140,
	movt	r4, #:upper16:.LANCHOR0	@ tmp140,
	mov	r6, r0	@ u32EngineRegBase, u32EngineRegBase
	mov	r5, #0	@ tmp142,
	str	r0, [r4, #0]	@ u32EngineRegBase, g_stEneRm.hwEneReg
	bl	ENGINESwResetReg	@
	add	r0, r6, #32	@ temp.423, u32EngineRegBase,
	str	r5, [r4, #24]	@ tmp142, g_stEneRm.hEne
	str	r0, [r4, #4]	@ temp.423, g_stEneRm.hwEneReg
	bl	ENGINESwResetReg	@
	add	r2, r6, #64	@ temp.425, u32EngineRegBase,
	str	r5, [r4, #28]	@ tmp142, g_stEneRm.hEne
	str	r2, [r4, #8]	@ temp.425, g_stEneRm.hwEneReg
	mov	r0, r2	@, temp.425
	bl	ENGINESwResetReg	@
	add	r1, r6, #96	@ temp.427, u32EngineRegBase,
	str	r5, [r4, #32]	@ tmp142, g_stEneRm.hEne
	mov	r0, r1	@, temp.427
	str	r1, [r4, #12]	@ temp.427, g_stEneRm.hwEneReg
	bl	ENGINESwResetReg	@
	add	r3, r6, #128	@ temp.429, u32EngineRegBase,
	add	r6, r6, #160	@ D.15555, u32EngineRegBase,
	str	r3, [r4, #16]	@ temp.429, g_stEneRm.hwEneReg
	mov	r0, r3	@, temp.429
	str	r5, [r4, #36]	@ tmp142, g_stEneRm.hEne
	bl	ENGINESwResetReg	@
	mov	r0, r6	@, D.15555
	str	r5, [r4, #40]	@ tmp142, g_stEneRm.hEne
	str	r6, [r4, #20]	@ D.15555, g_stEneRm.hwEneReg
	bl	ENGINESwResetReg	@
	str	r5, [r4, #44]	@ tmp142, g_stEneRm.hEne
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	ENGINE_Init, .-ENGINE_Init
	.align	2
	.global	ENGINEUpdateChnAopState
	.type	ENGINEUpdateChnAopState, %function
ENGINEUpdateChnAopState:
	.fnstart
.LFB875:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #76
	sub	sp, sp, #76	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	ldr	r2, [r0, #0]	@, <variable>.stAttr.u32BitPerSample
	tst	r1, #1	@ AopFlag,
	mov	r4, r1	@ AopFlag, AopFlag
	mov	r5, r0	@ state, state
	str	r2, [fp, #-108]	@, %sfp
	ldr	r3, [r0, #72]	@, <variable>.SamplePerFrame
	str	r3, [fp, #-104]	@, %sfp
	bne	.L95	@,
.L28:
	mov	r6, #0	@ AopHiPriorityFlag,
	mov	r8, r6	@ AopLoPriorityFlag, AopHiPriorityFlag
	mov	sl, r6	@ AopBufFreeFlag, AopHiPriorityFlag
	mov	r7, r6	@ AopNeedUnifyMask, AopHiPriorityFlag
	mov	r9, r6	@ AopNoneUnifyMask, AopHiPriorityFlag
.L32:
	tst	r4, #2	@ AopFlag,
	bne	.L96	@,
.L35:
	tst	r4, #4	@ AopFlag,
	bne	.L97	@,
.L42:
	tst	r4, #8	@ AopFlag,
	bne	.L98	@,
.L49:
	tst	r4, #16	@ AopFlag,
	bne	.L99	@,
.L56:
	tst	r4, #32	@ AopFlag,
	bne	.L100	@,
.L63:
	tst	r4, #64	@ AopFlag,
	bne	.L101	@,
.L70:
	tst	r4, #128	@ AopFlag,
	bne	.L102	@,
.L77:
	str	sl, [r5, #52]	@ AopBufFreeFlag, <variable>.AopBufFreeFlag
	str	r4, [r5, #32]	@ AopFlag, <variable>.AopMask
	str	r6, [r5, #36]	@ AopHiPriorityFlag, <variable>.AopHiPriorityMask
	str	r8, [r5, #40]	@ AopLoPriorityFlag, <variable>.AopLoPriorityMask
	str	r9, [r5, #44]	@ AopNoneUnifyMask, <variable>.AopNoneUnifyMask
	str	r7, [r5, #48]	@ AopNeedUnifyMask, <variable>.AopNeedUnifyMask
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L95:
	mov	r0, #0	@,
	sub	r1, fp, #64	@,,
	bl	AOP_GetChnStatus	@
	ldr	sl, [fp, #-64]	@ status.CurnStatus, status.CurnStatus
	cmp	sl, #1	@ status.CurnStatus,
	bne	.L28	@,
	ldr	r7, [fp, #-52]	@ status.uFrameSize, status.uFrameSize
	mov	r0, #0	@,
	ldr	r9, [fp, #-104]	@, %sfp
	sub	r1, fp, #100	@,,
	ldr	r6, [fp, #-60]	@ status.Priority, status.Priority
	ldr	r3, [fp, #-56]	@ status.u32BitPerSample, status.u32BitPerSample
	mul	ip, r7, r9	@ blocksize.466, status.uFrameSize,
	cmp	r6, #1	@ status.Priority,
	ldr	lr, [fp, #-108]	@, %sfp
	movne	r6, r0	@, AopHiPriorityFlag,
	moveq	r8, #0	@, AopLoPriorityFlag
	movne	r8, #1	@, AopLoPriorityFlag
	cmp	r3, lr	@ status.u32BitPerSample,
	str	ip, [fp, #-112]	@,
	movne	r9, #0	@, AopNoneUnifyMask
	moveq	r9, #1	@, AopNoneUnifyMask
	moveq	r7, #0	@, AopNeedUnifyMask
	movne	r7, #1	@, AopNeedUnifyMask
	bl	AOP_QueryRbfInfo	@
	ldr	r0, [fp, #-72]	@ stRbfOut.u32TotalFreeSize, stRbfOut.u32TotalFreeSize
	ldr	r3, [fp, #-112]	@,
	cmp	r3, r0	@ blocksize.466, stRbfOut.u32TotalFreeSize
	bcs	.L31	@,
	ldr	r0, [fp, #-80]	@ stRbfOut.u32TotalDataSize, stRbfOut.u32TotalDataSize
	ldr	r2, [fp, #-68]	@ stRbfOut.u32LatencySize, stRbfOut.u32LatencySize
	add	r1, r3, r0	@ tmp158, blocksize.466, stRbfOut.u32TotalDataSize
	cmp	r1, r2	@ tmp158, stRbfOut.u32LatencySize
	bhi	.L31	@,
	cmp	r3, #0	@ blocksize.466,
	bne	.L32	@,
.L31:
	mov	sl, #0	@ AopBufFreeFlag,
	b	.L32	@
.L102:
	mov	r0, #7	@,
	sub	r1, fp, #64	@,,
	bl	AOP_GetChnStatus	@
	ldr	ip, [fp, #-64]	@ status.CurnStatus, status.CurnStatus
	cmp	ip, #1	@ status.CurnStatus,
	bne	.L77	@,
	ldr	lr, [fp, #-52]	@ status.uFrameSize, status.uFrameSize
	ldr	r2, [fp, #-104]	@, %sfp
	ldr	r1, [fp, #-60]	@ status.Priority, status.Priority
	ldr	r0, [fp, #-108]	@, %sfp
	mul	r3, lr, r2	@ blocksize, status.uFrameSize,
	ldr	ip, [fp, #-56]	@ status.u32BitPerSample, status.u32BitPerSample
	cmp	r1, #1	@ status.Priority,
	sub	r1, fp, #100	@,,
	orreq	r6, r6, #128	@ AopHiPriorityFlag, AopHiPriorityFlag,
	orrne	r8, r8, #128	@ AopLoPriorityFlag, AopLoPriorityFlag,
	cmp	ip, r0	@ status.u32BitPerSample,
	mov	r0, #7	@,
	orreq	r9, r9, #128	@ AopNoneUnifyMask, AopNoneUnifyMask,
	orrne	r7, r7, #128	@ AopNeedUnifyMask, AopNeedUnifyMask,
	str	r3, [fp, #-112]	@,
	bl	AOP_QueryRbfInfo	@
	ldr	r1, [fp, #-72]	@ stRbfOut.u32TotalFreeSize, stRbfOut.u32TotalFreeSize
	ldr	r3, [fp, #-112]	@,
	cmp	r3, r1	@ blocksize, stRbfOut.u32TotalFreeSize
	bcs	.L77	@,
	ldr	r0, [fp, #-80]	@ stRbfOut.u32TotalDataSize, stRbfOut.u32TotalDataSize
	ldr	r2, [fp, #-68]	@ stRbfOut.u32LatencySize, stRbfOut.u32LatencySize
	add	lr, r3, r0	@ tmp235, blocksize, stRbfOut.u32TotalDataSize
	cmp	lr, r2	@ tmp235, stRbfOut.u32LatencySize
	bhi	.L77	@,
	cmp	r3, #0	@ blocksize,
	orrne	sl, sl, #128	@ AopBufFreeFlag, AopBufFreeFlag,
	b	.L77	@
.L101:
	mov	r0, #6	@,
	sub	r1, fp, #64	@,,
	bl	AOP_GetChnStatus	@
	ldr	ip, [fp, #-64]	@ status.CurnStatus, status.CurnStatus
	cmp	ip, #1	@ status.CurnStatus,
	bne	.L70	@,
	ldr	r3, [fp, #-60]	@ status.Priority, status.Priority
	cmp	r3, #1	@ status.Priority,
	orrne	r8, r8, #64	@ AopLoPriorityFlag, AopLoPriorityFlag,
	beq	.L103	@,
.L76:
	ldr	r0, [fp, #-56]	@ status.u32BitPerSample, status.u32BitPerSample
	ldr	lr, [fp, #-108]	@, %sfp
	cmp	r0, lr	@ status.u32BitPerSample,
	orrne	r7, r7, #64	@ AopNeedUnifyMask, AopNeedUnifyMask,
	beq	.L104	@,
.L75:
	ldr	r3, [fp, #-52]	@ status.uFrameSize, status.uFrameSize
	mov	r0, #6	@,
	ldr	lr, [fp, #-104]	@, %sfp
	sub	r1, fp, #100	@,,
	mul	ip, r3, lr	@ blocksize.526, status.uFrameSize,
	str	ip, [fp, #-112]	@,
	bl	AOP_QueryRbfInfo	@
	ldr	r2, [fp, #-72]	@ stRbfOut.u32TotalFreeSize, stRbfOut.u32TotalFreeSize
	ldr	r3, [fp, #-112]	@,
	cmp	r3, r2	@ blocksize.526, stRbfOut.u32TotalFreeSize
	bcs	.L70	@,
	ldr	r2, [fp, #-80]	@ stRbfOut.u32TotalDataSize, stRbfOut.u32TotalDataSize
	ldr	r0, [fp, #-68]	@ stRbfOut.u32LatencySize, stRbfOut.u32LatencySize
	add	r1, r3, r2	@ tmp224, blocksize.526, stRbfOut.u32TotalDataSize
	cmp	r1, r0	@ tmp224, stRbfOut.u32LatencySize
	bhi	.L70	@,
	cmp	r3, #0	@ blocksize.526,
	orrne	sl, sl, #64	@ AopBufFreeFlag, AopBufFreeFlag,
	b	.L70	@
.L100:
	mov	r0, #5	@,
	sub	r1, fp, #64	@,,
	bl	AOP_GetChnStatus	@
	ldr	ip, [fp, #-64]	@ status.CurnStatus, status.CurnStatus
	cmp	ip, #1	@ status.CurnStatus,
	bne	.L63	@,
	ldr	r3, [fp, #-60]	@ status.Priority, status.Priority
	cmp	r3, #1	@ status.Priority,
	orrne	r8, r8, #32	@ AopLoPriorityFlag, AopLoPriorityFlag,
	beq	.L105	@,
.L69:
	ldr	r1, [fp, #-56]	@ status.u32BitPerSample, status.u32BitPerSample
	ldr	lr, [fp, #-108]	@, %sfp
	cmp	r1, lr	@ status.u32BitPerSample,
	orrne	r7, r7, #32	@ AopNeedUnifyMask, AopNeedUnifyMask,
	beq	.L106	@,
.L68:
	ldr	r3, [fp, #-52]	@ status.uFrameSize, status.uFrameSize
	mov	r0, #5	@,
	ldr	lr, [fp, #-104]	@, %sfp
	sub	r1, fp, #100	@,,
	mul	ip, r3, lr	@ blocksize.516, status.uFrameSize,
	str	ip, [fp, #-112]	@,
	bl	AOP_QueryRbfInfo	@
	ldr	r2, [fp, #-72]	@ stRbfOut.u32TotalFreeSize, stRbfOut.u32TotalFreeSize
	ldr	r3, [fp, #-112]	@,
	cmp	r3, r2	@ blocksize.516, stRbfOut.u32TotalFreeSize
	bcs	.L63	@,
	ldr	r1, [fp, #-80]	@ stRbfOut.u32TotalDataSize, stRbfOut.u32TotalDataSize
	ldr	r2, [fp, #-68]	@ stRbfOut.u32LatencySize, stRbfOut.u32LatencySize
	add	r0, r3, r1	@ tmp213, blocksize.516, stRbfOut.u32TotalDataSize
	cmp	r0, r2	@ tmp213, stRbfOut.u32LatencySize
	bhi	.L63	@,
	cmp	r3, #0	@ blocksize.516,
	orrne	sl, sl, #32	@ AopBufFreeFlag, AopBufFreeFlag,
	b	.L63	@
.L99:
	mov	r0, #4	@,
	sub	r1, fp, #64	@,,
	bl	AOP_GetChnStatus	@
	ldr	r3, [fp, #-64]	@ status.CurnStatus, status.CurnStatus
	cmp	r3, #1	@ status.CurnStatus,
	bne	.L56	@,
	ldr	lr, [fp, #-60]	@ status.Priority, status.Priority
	cmp	lr, #1	@ status.Priority,
	orrne	r8, r8, #16	@ AopLoPriorityFlag, AopLoPriorityFlag,
	beq	.L107	@,
.L62:
	ldr	r1, [fp, #-56]	@ status.u32BitPerSample, status.u32BitPerSample
	ldr	r2, [fp, #-108]	@, %sfp
	cmp	r1, r2	@ status.u32BitPerSample,
	orrne	r7, r7, #16	@ AopNeedUnifyMask, AopNeedUnifyMask,
	beq	.L108	@,
.L61:
	ldr	r3, [fp, #-52]	@ status.uFrameSize, status.uFrameSize
	mov	r0, #4	@,
	ldr	lr, [fp, #-104]	@, %sfp
	sub	r1, fp, #100	@,,
	mul	ip, r3, lr	@ blocksize.506, status.uFrameSize,
	str	ip, [fp, #-112]	@,
	bl	AOP_QueryRbfInfo	@
	ldr	r0, [fp, #-72]	@ stRbfOut.u32TotalFreeSize, stRbfOut.u32TotalFreeSize
	ldr	r3, [fp, #-112]	@,
	cmp	r3, r0	@ blocksize.506, stRbfOut.u32TotalFreeSize
	bcs	.L56	@,
	ldr	r0, [fp, #-80]	@ stRbfOut.u32TotalDataSize, stRbfOut.u32TotalDataSize
	ldr	r2, [fp, #-68]	@ stRbfOut.u32LatencySize, stRbfOut.u32LatencySize
	add	r1, r3, r0	@ tmp202, blocksize.506, stRbfOut.u32TotalDataSize
	cmp	r1, r2	@ tmp202, stRbfOut.u32LatencySize
	bhi	.L56	@,
	cmp	r3, #0	@ blocksize.506,
	orrne	sl, sl, #16	@ AopBufFreeFlag, AopBufFreeFlag,
	b	.L56	@
.L98:
	mov	r0, #3	@,
	sub	r1, fp, #64	@,,
	bl	AOP_GetChnStatus	@
	ldr	ip, [fp, #-64]	@ status.CurnStatus, status.CurnStatus
	cmp	ip, #1	@ status.CurnStatus,
	bne	.L49	@,
	ldr	lr, [fp, #-60]	@ status.Priority, status.Priority
	cmp	lr, #1	@ status.Priority,
	orrne	r8, r8, #8	@ AopLoPriorityFlag, AopLoPriorityFlag,
	beq	.L109	@,
.L55:
	ldr	r3, [fp, #-56]	@ status.u32BitPerSample, status.u32BitPerSample
	ldr	r1, [fp, #-108]	@, %sfp
	cmp	r3, r1	@ status.u32BitPerSample,
	orrne	r7, r7, #8	@ AopNeedUnifyMask, AopNeedUnifyMask,
	beq	.L110	@,
.L54:
	ldr	lr, [fp, #-52]	@ status.uFrameSize, status.uFrameSize
	mov	r0, #3	@,
	ldr	r2, [fp, #-104]	@, %sfp
	sub	r1, fp, #100	@,,
	mul	ip, lr, r2	@ blocksize.496, status.uFrameSize,
	str	ip, [fp, #-112]	@,
	bl	AOP_QueryRbfInfo	@
	ldr	r0, [fp, #-72]	@ stRbfOut.u32TotalFreeSize, stRbfOut.u32TotalFreeSize
	ldr	r3, [fp, #-112]	@,
	cmp	r3, r0	@ blocksize.496, stRbfOut.u32TotalFreeSize
	bcs	.L49	@,
	ldr	ip, [fp, #-80]	@ stRbfOut.u32TotalDataSize, stRbfOut.u32TotalDataSize
	ldr	r0, [fp, #-68]	@ stRbfOut.u32LatencySize, stRbfOut.u32LatencySize
	add	r1, r3, ip	@ tmp191, blocksize.496, stRbfOut.u32TotalDataSize
	cmp	r1, r0	@ tmp191, stRbfOut.u32LatencySize
	bhi	.L49	@,
	cmp	r3, #0	@ blocksize.496,
	orrne	sl, sl, #8	@ AopBufFreeFlag, AopBufFreeFlag,
	b	.L49	@
.L97:
	mov	r0, #2	@,
	sub	r1, fp, #64	@,,
	bl	AOP_GetChnStatus	@
	ldr	ip, [fp, #-64]	@ status.CurnStatus, status.CurnStatus
	cmp	ip, #1	@ status.CurnStatus,
	bne	.L42	@,
	ldr	lr, [fp, #-60]	@ status.Priority, status.Priority
	cmp	lr, #1	@ status.Priority,
	orrne	r8, r8, #4	@ AopLoPriorityFlag, AopLoPriorityFlag,
	beq	.L111	@,
.L48:
	ldr	r3, [fp, #-56]	@ status.u32BitPerSample, status.u32BitPerSample
	ldr	r0, [fp, #-108]	@, %sfp
	cmp	r3, r0	@ status.u32BitPerSample,
	orrne	r7, r7, #4	@ AopNeedUnifyMask, AopNeedUnifyMask,
	beq	.L112	@,
.L47:
	ldr	r3, [fp, #-104]	@, %sfp
	mov	r0, #2	@,
	ldr	lr, [fp, #-52]	@ status.uFrameSize, status.uFrameSize
	sub	r1, fp, #100	@,,
	mul	ip, lr, r3	@ blocksize.486, status.uFrameSize,
	str	ip, [fp, #-112]	@,
	bl	AOP_QueryRbfInfo	@
	ldr	r2, [fp, #-72]	@ stRbfOut.u32TotalFreeSize, stRbfOut.u32TotalFreeSize
	ldr	r3, [fp, #-112]	@,
	cmp	r3, r2	@ blocksize.486, stRbfOut.u32TotalFreeSize
	bcs	.L42	@,
	ldr	r2, [fp, #-80]	@ stRbfOut.u32TotalDataSize, stRbfOut.u32TotalDataSize
	ldr	r0, [fp, #-68]	@ stRbfOut.u32LatencySize, stRbfOut.u32LatencySize
	add	r1, r3, r2	@ tmp180, blocksize.486, stRbfOut.u32TotalDataSize
	cmp	r1, r0	@ tmp180, stRbfOut.u32LatencySize
	bhi	.L42	@,
	cmp	r3, #0	@ blocksize.486,
	orrne	sl, sl, #4	@ AopBufFreeFlag, AopBufFreeFlag,
	b	.L42	@
.L96:
	mov	r0, #1	@,
	sub	r1, fp, #64	@,,
	bl	AOP_GetChnStatus	@
	ldr	ip, [fp, #-64]	@ status.CurnStatus, status.CurnStatus
	cmp	ip, #1	@ status.CurnStatus,
	bne	.L35	@,
	ldr	lr, [fp, #-60]	@ status.Priority, status.Priority
	cmp	lr, #1	@ status.Priority,
	orrne	r8, r8, #2	@ AopLoPriorityFlag, AopLoPriorityFlag,
	beq	.L113	@,
.L41:
	ldr	r3, [fp, #-56]	@ status.u32BitPerSample, status.u32BitPerSample
	ldr	r1, [fp, #-108]	@, %sfp
	cmp	r3, r1	@ status.u32BitPerSample,
	orrne	r7, r7, #2	@ AopNeedUnifyMask, AopNeedUnifyMask,
	beq	.L114	@,
.L40:
	ldr	r3, [fp, #-104]	@, %sfp
	mov	r0, #1	@,
	ldr	lr, [fp, #-52]	@ status.uFrameSize, status.uFrameSize
	sub	r1, fp, #100	@,,
	mul	ip, lr, r3	@ blocksize.476, status.uFrameSize,
	str	ip, [fp, #-112]	@,
	bl	AOP_QueryRbfInfo	@
	ldr	r2, [fp, #-72]	@ stRbfOut.u32TotalFreeSize, stRbfOut.u32TotalFreeSize
	ldr	r3, [fp, #-112]	@,
	cmp	r3, r2	@ blocksize.476, stRbfOut.u32TotalFreeSize
	bcs	.L35	@,
	ldr	r1, [fp, #-80]	@ stRbfOut.u32TotalDataSize, stRbfOut.u32TotalDataSize
	ldr	r2, [fp, #-68]	@ stRbfOut.u32LatencySize, stRbfOut.u32LatencySize
	add	r0, r3, r1	@ tmp169, blocksize.476, stRbfOut.u32TotalDataSize
	cmp	r0, r2	@ tmp169, stRbfOut.u32LatencySize
	bhi	.L35	@,
	cmp	r3, #0	@ blocksize.476,
	orrne	sl, sl, #2	@ AopBufFreeFlag, AopBufFreeFlag,
	b	.L35	@
.L104:
	orr	r9, r9, #64	@ AopNoneUnifyMask, AopNoneUnifyMask,
	b	.L75	@
.L103:
	orr	r6, r6, #64	@ AopHiPriorityFlag, AopHiPriorityFlag,
	b	.L76	@
.L106:
	orr	r9, r9, #32	@ AopNoneUnifyMask, AopNoneUnifyMask,
	b	.L68	@
.L105:
	orr	r6, r6, #32	@ AopHiPriorityFlag, AopHiPriorityFlag,
	b	.L69	@
.L112:
	orr	r9, r9, #4	@ AopNoneUnifyMask, AopNoneUnifyMask,
	b	.L47	@
.L111:
	orr	r6, r6, #4	@ AopHiPriorityFlag, AopHiPriorityFlag,
	b	.L48	@
.L114:
	orr	r9, r9, #2	@ AopNoneUnifyMask, AopNoneUnifyMask,
	b	.L40	@
.L113:
	orr	r6, r6, #2	@ AopHiPriorityFlag, AopHiPriorityFlag,
	b	.L41	@
.L108:
	orr	r9, r9, #16	@ AopNoneUnifyMask, AopNoneUnifyMask,
	b	.L61	@
.L107:
	orr	r6, r6, #16	@ AopHiPriorityFlag, AopHiPriorityFlag,
	b	.L62	@
.L110:
	orr	r9, r9, #8	@ AopNoneUnifyMask, AopNoneUnifyMask,
	b	.L54	@
.L109:
	orr	r6, r6, #8	@ AopHiPriorityFlag, AopHiPriorityFlag,
	b	.L55	@
	.fnend
	.size	ENGINEUpdateChnAopState, .-ENGINEUpdateChnAopState
	.align	2
	.type	ENGINEForceCastRead, %function
ENGINEForceCastRead:
	.fnstart
.LFB866:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #60
	sub	sp, sp, #60	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r4, r1	@ Aop, Aop
	mov	r5, r0	@ state, state
	sub	r1, fp, #48	@,,
	mov	r0, r4	@, Aop
	ldr	r6, [r5, #72]	@ SourceSamplePerFrame, <variable>.SamplePerFrame
	bl	AOP_GetChnStatus	@
	ldr	r2, [fp, #-36]	@ status.uFrameSize, status.uFrameSize
	mov	r0, r4	@, Aop
	sub	r1, fp, #84	@,,
	mul	r6, r2, r6	@ blocksize, status.uFrameSize, SourceSamplePerFrame
	bl	AOP_QueryRbfInfo	@
	ldr	r3, [fp, #-56]	@ stRbfOut.u32TotalFreeSize, stRbfOut.u32TotalFreeSize
	cmp	r6, r3	@ blocksize, stRbfOut.u32TotalFreeSize
	bcs	.L117	@,
	ldr	r0, [fp, #-64]	@ stRbfOut.u32TotalDataSize, stRbfOut.u32TotalDataSize
	ldr	r3, [fp, #-52]	@ stRbfOut.u32LatencySize, stRbfOut.u32LatencySize
	add	r2, r6, r0	@ tmp141, blocksize, stRbfOut.u32TotalDataSize
	cmp	r2, r3	@ tmp141, stRbfOut.u32LatencySize
	bls	.L118	@,
.L117:
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L118:
	cmp	r6, #0	@ blocksize,
	ldrne	r3, [r5, #52]	@ <variable>.AopBufFreeFlag, <variable>.AopBufFreeFlag
	movne	r2, #1	@ tmp145,
	orrne	r4, r3, r2, asl r4	@, tmp147, <variable>.AopBufFreeFlag, tmp145,
	strne	r4, [r5, #52]	@ tmp147, <variable>.AopBufFreeFlag
	b	.L117	@
	.fnend
	.size	ENGINEForceCastRead, .-ENGINEForceCastRead
	.align	2
	.global	ENGINEUpdateChnAipState
	.type	ENGINEUpdateChnAipState, %function
ENGINEUpdateChnAipState:
	.fnstart
.LFB874:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #48
	sub	sp, sp, #48	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	tst	r1, #1	@ AipFlag,
	mov	r4, r1	@ AipFlag, AipFlag
	mov	r5, r0	@ state, state
	bne	.L175	@,
.L120:
	mov	r6, #0	@ AipBufDataFlag,
	mov	r8, r6	@ AipHiPriorityFlag, AipBufDataFlag
	mov	r7, r6	@ AipLoPriorityFlag, AipBufDataFlag
.L123:
	tst	r4, #2	@ AipFlag,
	bne	.L176	@,
.L127:
	tst	r4, #4	@ AipFlag,
	bne	.L177	@,
.L133:
	tst	r4, #8	@ AipFlag,
	bne	.L178	@,
.L139:
	tst	r4, #16	@ AipFlag,
	bne	.L179	@,
.L145:
	tst	r4, #32	@ AipFlag,
	bne	.L180	@,
.L151:
	tst	r4, #64	@ AipFlag,
	bne	.L181	@,
.L157:
	tst	r4, #128	@ AipFlag,
	bne	.L182	@,
.L163:
	str	r6, [r5, #28]	@ AipBufDataFlag, <variable>.AipBufDataFlag
	str	r4, [r5, #16]	@ AipFlag, <variable>.AipMask
	str	r8, [r5, #20]	@ AipHiPriorityFlag, <variable>.AipHiPriorityMask
	str	r7, [r5, #24]	@ AipLoPriorityFlag, <variable>.AipLoPriorityMask
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L175:
	mov	r0, #0	@,
	sub	r1, fp, #44	@,,
	bl	AIP_GetChnStatus	@
	ldr	r6, [fp, #-44]	@ status.CurnStatus, status.CurnStatus
	cmp	r6, #1	@ status.CurnStatus,
	beq	.L121	@,
	mov	r0, #0	@,
	sub	r1, fp, #80	@,,
	ldr	r6, [r5, #64]	@ blocksize.588, <variable>.BlockSize
	bl	AIP_QueryFiFoInfo	@
	ldr	r3, [fp, #-60]	@ stRbfIn.u32TotalDataSize, stRbfIn.u32TotalDataSize
	cmp	r6, r3	@ blocksize.588, stRbfIn.u32TotalDataSize
	bcs	.L120	@,
	cmp	r6, #0	@ blocksize.588,
	beq	.L120	@,
	ldr	r6, [fp, #-40]	@ status.Priority, status.Priority
	cmp	r6, #1	@ status.Priority,
	movne	r6, #1	@ AipBufDataFlag,
	movne	r8, #0	@ AipHiPriorityFlag,
	movne	r7, r6	@ AipLoPriorityFlag, AipBufDataFlag
	moveq	r7, #0	@ AipLoPriorityFlag,
	moveq	r8, r6	@ AipHiPriorityFlag, AipBufDataFlag
	b	.L123	@
.L182:
	mov	r0, #7	@,
	sub	r1, fp, #44	@,,
	bl	AIP_GetChnStatus	@
	ldr	r3, [fp, #-44]	@ status.CurnStatus, status.CurnStatus
	cmp	r3, #1	@ status.CurnStatus,
	beq	.L183	@,
	sub	r1, fp, #80	@,,
	mov	r0, #7	@,
	ldr	sl, [r5, #64]	@ blocksize, <variable>.BlockSize
	bl	AIP_QueryFiFoInfo	@
	ldr	r1, [fp, #-60]	@ stRbfIn.u32TotalDataSize, stRbfIn.u32TotalDataSize
	cmp	sl, r1	@ blocksize, stRbfIn.u32TotalDataSize
	bcs	.L163	@,
	cmp	sl, #0	@ blocksize,
	beq	.L163	@,
	ldr	lr, [fp, #-40]	@ status.Priority, status.Priority
	orr	r6, r6, #128	@ AipBufDataFlag, AipBufDataFlag,
	cmp	lr, #1	@ status.Priority,
	orreq	r8, r8, #128	@ AipHiPriorityFlag, AipHiPriorityFlag,
	orrne	r7, r7, #128	@ AipLoPriorityFlag, AipLoPriorityFlag,
	b	.L163	@
.L181:
	mov	r0, #6	@,
	sub	r1, fp, #44	@,,
	bl	AIP_GetChnStatus	@
	ldr	sl, [fp, #-44]	@ status.CurnStatus, status.CurnStatus
	cmp	sl, #1	@ status.CurnStatus,
	beq	.L158	@,
	sub	r1, fp, #80	@,,
	mov	r0, #6	@,
	ldr	sl, [r5, #64]	@ blocksize.636, <variable>.BlockSize
	bl	AIP_QueryFiFoInfo	@
	ldr	r1, [fp, #-60]	@ stRbfIn.u32TotalDataSize, stRbfIn.u32TotalDataSize
	cmp	sl, r1	@ blocksize.636, stRbfIn.u32TotalDataSize
	bcs	.L157	@,
	cmp	sl, #0	@ blocksize.636,
	beq	.L157	@,
	ldr	lr, [fp, #-40]	@ status.Priority, status.Priority
	orr	r6, r6, #64	@ AipBufDataFlag, AipBufDataFlag,
	cmp	lr, #1	@ status.Priority,
	orrne	r7, r7, #64	@ AipLoPriorityFlag, AipLoPriorityFlag,
	orreq	r8, r8, #64	@ AipHiPriorityFlag, AipHiPriorityFlag,
	b	.L157	@
.L180:
	sub	r1, fp, #44	@,,
	mov	r0, #5	@,
	bl	AIP_GetChnStatus	@
	ldr	r1, [fp, #-44]	@ status.CurnStatus, status.CurnStatus
	cmp	r1, #1	@ status.CurnStatus,
	beq	.L152	@,
	mov	r0, #5	@,
	sub	r1, fp, #80	@,,
	ldr	sl, [r5, #64]	@ blocksize.628, <variable>.BlockSize
	bl	AIP_QueryFiFoInfo	@
	ldr	r2, [fp, #-60]	@ stRbfIn.u32TotalDataSize, stRbfIn.u32TotalDataSize
	cmp	sl, r2	@ blocksize.628, stRbfIn.u32TotalDataSize
	bcs	.L151	@,
	cmp	sl, #0	@ blocksize.628,
	beq	.L151	@,
	ldr	ip, [fp, #-40]	@ status.Priority, status.Priority
	orr	r6, r6, #32	@ AipBufDataFlag, AipBufDataFlag,
	cmp	ip, #1	@ status.Priority,
	orrne	r7, r7, #32	@ AipLoPriorityFlag, AipLoPriorityFlag,
	orreq	r8, r8, #32	@ AipHiPriorityFlag, AipHiPriorityFlag,
	b	.L151	@
.L179:
	mov	r0, #4	@,
	sub	r1, fp, #44	@,,
	bl	AIP_GetChnStatus	@
	ldr	ip, [fp, #-44]	@ status.CurnStatus, status.CurnStatus
	cmp	ip, #1	@ status.CurnStatus,
	beq	.L146	@,
	mov	r0, #4	@,
	sub	r1, fp, #80	@,,
	ldr	sl, [r5, #64]	@ blocksize.620, <variable>.BlockSize
	bl	AIP_QueryFiFoInfo	@
	ldr	r3, [fp, #-60]	@ stRbfIn.u32TotalDataSize, stRbfIn.u32TotalDataSize
	cmp	sl, r3	@ blocksize.620, stRbfIn.u32TotalDataSize
	bcs	.L145	@,
	cmp	sl, #0	@ blocksize.620,
	beq	.L145	@,
	ldr	lr, [fp, #-40]	@ status.Priority, status.Priority
	orr	r6, r6, #16	@ AipBufDataFlag, AipBufDataFlag,
	cmp	lr, #1	@ status.Priority,
	orrne	r7, r7, #16	@ AipLoPriorityFlag, AipLoPriorityFlag,
	orreq	r8, r8, #16	@ AipHiPriorityFlag, AipHiPriorityFlag,
	b	.L145	@
.L178:
	mov	r0, #3	@,
	sub	r1, fp, #44	@,,
	bl	AIP_GetChnStatus	@
	ldr	sl, [fp, #-44]	@ status.CurnStatus, status.CurnStatus
	cmp	sl, #1	@ status.CurnStatus,
	beq	.L140	@,
	mov	r0, #3	@,
	sub	r1, fp, #80	@,,
	ldr	sl, [r5, #64]	@ blocksize.612, <variable>.BlockSize
	bl	AIP_QueryFiFoInfo	@
	ldr	r3, [fp, #-60]	@ stRbfIn.u32TotalDataSize, stRbfIn.u32TotalDataSize
	cmp	sl, r3	@ blocksize.612, stRbfIn.u32TotalDataSize
	bcs	.L139	@,
	cmp	sl, #0	@ blocksize.612,
	beq	.L139	@,
	ldr	r0, [fp, #-40]	@ status.Priority, status.Priority
	orr	r6, r6, #8	@ AipBufDataFlag, AipBufDataFlag,
	cmp	r0, #1	@ status.Priority,
	orrne	r7, r7, #8	@ AipLoPriorityFlag, AipLoPriorityFlag,
	orreq	r8, r8, #8	@ AipHiPriorityFlag, AipHiPriorityFlag,
	b	.L139	@
.L177:
	mov	r0, #2	@,
	sub	r1, fp, #44	@,,
	bl	AIP_GetChnStatus	@
	ldr	r0, [fp, #-44]	@ status.CurnStatus, status.CurnStatus
	cmp	r0, #1	@ status.CurnStatus,
	beq	.L134	@,
	sub	r1, fp, #80	@,,
	mov	r0, #2	@,
	ldr	sl, [r5, #64]	@ blocksize.604, <variable>.BlockSize
	bl	AIP_QueryFiFoInfo	@
	ldr	r1, [fp, #-60]	@ stRbfIn.u32TotalDataSize, stRbfIn.u32TotalDataSize
	cmp	sl, r1	@ blocksize.604, stRbfIn.u32TotalDataSize
	bcs	.L133	@,
	cmp	sl, #0	@ blocksize.604,
	beq	.L133	@,
	ldr	lr, [fp, #-40]	@ status.Priority, status.Priority
	orr	r6, r6, #4	@ AipBufDataFlag, AipBufDataFlag,
	cmp	lr, #1	@ status.Priority,
	orrne	r7, r7, #4	@ AipLoPriorityFlag, AipLoPriorityFlag,
	orreq	r8, r8, #4	@ AipHiPriorityFlag, AipHiPriorityFlag,
	b	.L133	@
.L176:
	sub	r1, fp, #44	@,,
	mov	r0, #1	@,
	bl	AIP_GetChnStatus	@
	ldr	r1, [fp, #-44]	@ status.CurnStatus, status.CurnStatus
	cmp	r1, #1	@ status.CurnStatus,
	beq	.L128	@,
	mov	r0, #1	@,
	sub	r1, fp, #80	@,,
	ldr	sl, [r5, #64]	@ blocksize.596, <variable>.BlockSize
	bl	AIP_QueryFiFoInfo	@
	ldr	r2, [fp, #-60]	@ stRbfIn.u32TotalDataSize, stRbfIn.u32TotalDataSize
	cmp	sl, r2	@ blocksize.596, stRbfIn.u32TotalDataSize
	bcs	.L127	@,
	cmp	sl, #0	@ blocksize.596,
	beq	.L127	@,
	ldr	ip, [fp, #-40]	@ status.Priority, status.Priority
	orr	r6, r6, #2	@ AipBufDataFlag, AipBufDataFlag,
	cmp	ip, #1	@ status.Priority,
	orrne	r7, r7, #2	@ AipLoPriorityFlag, AipLoPriorityFlag,
	orreq	r8, r8, #2	@ AipHiPriorityFlag, AipHiPriorityFlag,
	b	.L127	@
.L183:
	ldr	sl, [fp, #-40]	@ status.Priority, status.Priority
	mov	r0, #7	@,
	sub	r1, fp, #80	@,,
	cmp	sl, #1	@ status.Priority,
	ldr	sl, [r5, #64]	@ blocksize, <variable>.BlockSize
	orreq	r8, r8, #128	@ AipHiPriorityFlag, AipHiPriorityFlag,
	orrne	r7, r7, #128	@ AipLoPriorityFlag, AipLoPriorityFlag,
	bl	AIP_QueryFiFoInfo	@
	ldr	r0, [fp, #-60]	@ stRbfIn.u32TotalDataSize, stRbfIn.u32TotalDataSize
	cmp	sl, r0	@ blocksize, stRbfIn.u32TotalDataSize
	bcs	.L163	@,
	cmp	sl, #0	@ blocksize,
	orrne	r6, r6, #128	@ AipBufDataFlag, AipBufDataFlag,
	b	.L163	@
.L121:
	ldr	r8, [fp, #-40]	@ status.Priority, status.Priority
	mov	r0, #0	@,
	sub	r1, fp, #80	@,,
	ldr	sl, [r5, #64]	@ blocksize.592, <variable>.BlockSize
	cmp	r8, #1	@ status.Priority,
	movne	r8, r0	@, AipHiPriorityFlag,
	moveq	r7, #0	@, AipLoPriorityFlag
	movne	r7, #1	@, AipLoPriorityFlag
	bl	AIP_QueryFiFoInfo	@
	ldr	r0, [fp, #-60]	@ stRbfIn.u32TotalDataSize, stRbfIn.u32TotalDataSize
	cmp	sl, r0	@ blocksize.592, stRbfIn.u32TotalDataSize
	bcs	.L125	@,
	cmp	sl, #0	@ blocksize.592,
	bne	.L123	@,
.L125:
	mov	r6, #0	@ AipBufDataFlag,
	b	.L123	@
.L152:
	ldr	r3, [fp, #-40]	@ status.Priority, status.Priority
	cmp	r3, #1	@ status.Priority,
	orrne	r7, r7, #32	@ AipLoPriorityFlag, AipLoPriorityFlag,
	beq	.L184	@,
.L156:
	mov	r0, #5	@,
	sub	r1, fp, #80	@,,
	ldr	sl, [r5, #64]	@ blocksize.632, <variable>.BlockSize
	bl	AIP_QueryFiFoInfo	@
	ldr	r0, [fp, #-60]	@ stRbfIn.u32TotalDataSize, stRbfIn.u32TotalDataSize
	cmp	sl, r0	@ blocksize.632, stRbfIn.u32TotalDataSize
	bcs	.L151	@,
	cmp	sl, #0	@ blocksize.632,
	orrne	r6, r6, #32	@ AipBufDataFlag, AipBufDataFlag,
	b	.L151	@
.L158:
	ldr	r2, [fp, #-40]	@ status.Priority, status.Priority
	cmp	r2, #1	@ status.Priority,
	orrne	r7, r7, #64	@ AipLoPriorityFlag, AipLoPriorityFlag,
	beq	.L185	@,
.L162:
	mov	r0, #6	@,
	sub	r1, fp, #80	@,,
	ldr	sl, [r5, #64]	@ blocksize.640, <variable>.BlockSize
	bl	AIP_QueryFiFoInfo	@
	ldr	ip, [fp, #-60]	@ stRbfIn.u32TotalDataSize, stRbfIn.u32TotalDataSize
	cmp	sl, ip	@ blocksize.640, stRbfIn.u32TotalDataSize
	bcs	.L157	@,
	cmp	sl, #0	@ blocksize.640,
	orrne	r6, r6, #64	@ AipBufDataFlag, AipBufDataFlag,
	b	.L157	@
.L140:
	ldr	r1, [fp, #-40]	@ status.Priority, status.Priority
	cmp	r1, #1	@ status.Priority,
	orrne	r7, r7, #8	@ AipLoPriorityFlag, AipLoPriorityFlag,
	beq	.L186	@,
.L144:
	mov	r0, #3	@,
	sub	r1, fp, #80	@,,
	ldr	sl, [r5, #64]	@ blocksize.616, <variable>.BlockSize
	bl	AIP_QueryFiFoInfo	@
	ldr	r2, [fp, #-60]	@ stRbfIn.u32TotalDataSize, stRbfIn.u32TotalDataSize
	cmp	sl, r2	@ blocksize.616, stRbfIn.u32TotalDataSize
	bcs	.L139	@,
	cmp	sl, #0	@ blocksize.616,
	orrne	r6, r6, #8	@ AipBufDataFlag, AipBufDataFlag,
	b	.L139	@
.L146:
	ldr	sl, [fp, #-40]	@ status.Priority, status.Priority
	cmp	sl, #1	@ status.Priority,
	orrne	r7, r7, #16	@ AipLoPriorityFlag, AipLoPriorityFlag,
	beq	.L187	@,
.L150:
	mov	r0, #4	@,
	sub	r1, fp, #80	@,,
	ldr	sl, [r5, #64]	@ blocksize.624, <variable>.BlockSize
	bl	AIP_QueryFiFoInfo	@
	ldr	r0, [fp, #-60]	@ stRbfIn.u32TotalDataSize, stRbfIn.u32TotalDataSize
	cmp	sl, r0	@ blocksize.624, stRbfIn.u32TotalDataSize
	bcs	.L145	@,
	cmp	sl, #0	@ blocksize.624,
	orrne	r6, r6, #16	@ AipBufDataFlag, AipBufDataFlag,
	b	.L145	@
.L128:
	ldr	sl, [fp, #-40]	@ status.Priority, status.Priority
	cmp	sl, #1	@ status.Priority,
	orrne	r7, r7, #2	@ AipLoPriorityFlag, AipLoPriorityFlag,
	beq	.L188	@,
.L132:
	mov	r0, #1	@,
	sub	r1, fp, #80	@,,
	ldr	sl, [r5, #64]	@ blocksize.600, <variable>.BlockSize
	bl	AIP_QueryFiFoInfo	@
	ldr	r3, [fp, #-60]	@ stRbfIn.u32TotalDataSize, stRbfIn.u32TotalDataSize
	cmp	sl, r3	@ blocksize.600, stRbfIn.u32TotalDataSize
	bcs	.L127	@,
	cmp	sl, #0	@ blocksize.600,
	orrne	r6, r6, #2	@ AipBufDataFlag, AipBufDataFlag,
	b	.L127	@
.L134:
	ldr	r2, [fp, #-40]	@ status.Priority, status.Priority
	cmp	r2, #1	@ status.Priority,
	orrne	r7, r7, #4	@ AipLoPriorityFlag, AipLoPriorityFlag,
	beq	.L189	@,
.L138:
	mov	r0, #2	@,
	sub	r1, fp, #80	@,,
	ldr	sl, [r5, #64]	@ blocksize.608, <variable>.BlockSize
	bl	AIP_QueryFiFoInfo	@
	ldr	ip, [fp, #-60]	@ stRbfIn.u32TotalDataSize, stRbfIn.u32TotalDataSize
	cmp	sl, ip	@ blocksize.608, stRbfIn.u32TotalDataSize
	bcs	.L133	@,
	cmp	sl, #0	@ blocksize.608,
	orrne	r6, r6, #4	@ AipBufDataFlag, AipBufDataFlag,
	b	.L133	@
.L184:
	orr	r8, r8, #32	@ AipHiPriorityFlag, AipHiPriorityFlag,
	b	.L156	@
.L189:
	orr	r8, r8, #4	@ AipHiPriorityFlag, AipHiPriorityFlag,
	b	.L138	@
.L188:
	orr	r8, r8, #2	@ AipHiPriorityFlag, AipHiPriorityFlag,
	b	.L132	@
.L187:
	orr	r8, r8, #16	@ AipHiPriorityFlag, AipHiPriorityFlag,
	b	.L150	@
.L186:
	orr	r8, r8, #8	@ AipHiPriorityFlag, AipHiPriorityFlag,
	b	.L144	@
.L185:
	orr	r8, r8, #64	@ AipHiPriorityFlag, AipHiPriorityFlag,
	b	.L162	@
	.fnend
	.size	ENGINEUpdateChnAipState, .-ENGINEUpdateChnAipState
	.align	2
	.type	ENGINEOutFrame, %function
ENGINEOutFrame:
	.fnstart
.LFB867:
	@ args = 0, pretend = 0, frame = 112
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #116
	sub	sp, sp, #116	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r7, r0	@ state, state
	ldr	r6, [r0, #36]	@ prephitmp.660, <variable>.AopHiPriorityMask
	sub	r0, fp, #104	@,,
	str	r0, [fp, #-152]	@, %sfp
	sub	r9, fp, #136	@ tmp221,,
	ldr	r3, [r7, #40]	@ <variable>.AopLoPriorityMask, <variable>.AopLoPriorityMask
	mov	sl, #0	@ ivtmp.695,
	mov	r8, #1	@ tmp218,
	str	r1, [fp, #-144]	@ pstFrame, %sfp
	str	r6, [fp, #-52]	@ prephitmp.660, PriorityMaskTab
	str	r3, [fp, #-48]	@ <variable>.AopLoPriorityMask, PriorityMaskTab
.L200:
	mov	r4, #0	@ Aop,
	b	.L198	@
.L191:
	add	r4, r4, #1	@ Aop, Aop,
	cmp	r4, #8	@ Aop,
	beq	.L204	@,
.L198:
	mov	r5, r8, asl r4	@ D.15227, tmp218,
	tst	r5, r6	@ D.15227, prephitmp.660
	beq	.L191	@,
	mov	r0, r4	@, Aop
	bl	AOP_WriteBuffProcTryCnt	@
	mov	r0, r4	@, Aop
	bl	AOP_CheckIsCast	@
	cmp	r0, #0	@,
	bne	.L205	@,
.L192:
	ldr	r2, [r7, #52]	@ <variable>.AopBufFreeFlag, <variable>.AopBufFreeFlag
	tst	r5, r2	@ D.15227, <variable>.AopBufFreeFlag
	beq	.L191	@,
.L193:
	mov	r0, r4	@, Aop
	bl	AOP_WriteBuffProcOKCnt	@
	mov	r0, r4	@, Aop
	sub	r1, fp, #72	@,,
	bl	AOP_GetChnStatus	@
	ldr	r3, [r7, #44]	@ <variable>.AopNoneUnifyMask, <variable>.AopNoneUnifyMask
	tst	r5, r3	@ D.15227, <variable>.AopNoneUnifyMask
	beq	.L194	@,
	mov	r0, r4	@, Aop
	bl	AOP_CheckIsCast	@
	cmp	r0, #0	@,
	mov	r0, r4	@, Aop
	add	r4, r4, #1	@ Aop, Aop,
	ldreq	r3, [fp, #-144]	@, %sfp
	ldrne	r1, [fp, #-136]	@, stCastBakFrame.pDataBuf
	ldrne	r2, [fp, #-128]	@, stCastBakFrame.u32DataBytes
	ldreq	r1, [r3, #0]	@, <variable>.pDataBuf
	ldreq	r2, [r3, #8]	@, <variable>.u32DataBytes
	bl	AOP_WriteRbfData	@
	cmp	r4, #8	@ Aop,
	bne	.L198	@,
.L204:
	add	sl, sl, #4	@ ivtmp.695, ivtmp.695,
	cmp	sl, #8	@ ivtmp.695,
	beq	.L201	@,
	sub	r4, fp, #52	@ tmp211,,
	ldr	r6, [r4, sl]	@ prephitmp.660, PriorityMaskTab
	b	.L200	@
.L205:
	mov	r0, r9	@, tmp221
	mov	r1, #32	@,
	bl	__memzero	@
	ldr	lr, [fp, #-144]	@ pstFrame, %sfp
	mov	ip, r9	@ tmp182, tmp221
	ldmia	lr!, {r0, r1, r2, r3}	@ pstFrame,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp182,,,,
	ldmia	lr, {r0, r1, r2, r3}	@ pstFrame,,,,
	stmia	ip, {r0, r1, r2, r3}	@ tmp182,,,,
	bl	AOE_GetWKBuf	@
	str	r0, [fp, #-136]	@, stCastBakFrame.pDataBuf
	bl	AOE_ReleaseWKBuf	@
	ldr	ip, [fp, #-144]	@, %sfp
	ldr	r0, [fp, #-136]	@, stCastBakFrame.pDataBuf
	ldr	r1, [ip, #0]	@, <variable>.pDataBuf
	ldr	r2, [ip, #8]	@, <variable>.u32DataBytes
	bl	memcpy	@
	mov	r0, r4	@, Aop
	mov	r1, r9	@, tmp221
	bl	AOP_MutePcmData	@
	mov	r1, r9	@, tmp221
	mov	r0, r4	@, Aop
	bl	AOP_GainPcmData	@
	ldr	r1, [r7, #52]	@ <variable>.AopBufFreeFlag, <variable>.AopBufFreeFlag
	tst	r5, r1	@ D.15227, <variable>.AopBufFreeFlag
	bne	.L193	@,
	mov	r0, r7	@, state
	mov	r1, r4	@, Aop
	bl	ENGINEForceCastRead	@
	b	.L192	@
.L201:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L194:
	mov	r0, r4	@, Aop
	bl	AOP_CheckIsCast	@
	ldr	ip, [fp, #-152]	@ tmp205, %sfp
	cmp	r0, #0	@,
	ldreq	lr, [fp, #-144]	@ pstFrame, %sfp
	movne	lr, r9	@ tmp226, tmp221
	ldmia	lr!, {r0, r1, r2, r3}	@ pstFrame,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp205,,,,
	ldmia	lr, {r0, r1, r2, r3}	@ pstFrame,,,,
	stmia	ip, {r0, r1, r2, r3}	@ tmp205,,,,
	bl	AOE_GetWKBuf	@
	sub	r2, fp, #104	@,,
	mov	r1, r0	@ D.15269,
	ldr	r0, [fp, #-64]	@, AopStatus.u32BitPerSample
	bl	UTIL_UnifyBitDepthPcmData	@
	ldr	r1, [fp, #-104]	@, stUnfFrame.pDataBuf
	ldr	r2, [fp, #-96]	@, stUnfFrame.u32DataBytes
	mov	r0, r4	@, Aop
	bl	AOP_WriteRbfData	@
	bl	AOE_ReleaseWKBuf	@
	b	.L191	@
	.fnend
	.size	ENGINEOutFrame, .-ENGINEOutFrame
	.global	__aeabi_uidiv
	.align	2
	.global	ENGINEProcChnData
	.type	ENGINEProcChnData, %function
ENGINEProcChnData:
	.fnstart
.LFB870:
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #92
	sub	sp, sp, #92	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	ldr	r3, [r0, #20]	@ D.15644, <variable>.AipHiPriorityMask
	mov	r4, r0	@ state, state
	ldr	r1, [r0, #24]	@ D.15643, <variable>.AipLoPriorityMask
	cmp	r3, #0	@ D.15644,
	ldr	r2, [r0, #28]	@ BufFreeFlag, <variable>.AipBufDataFlag
	beq	.L207	@,
	cmp	r1, #0	@ D.15643,
	beq	.L207	@,
	ands	r0, r3, #1	@ tmp166, D.15644,
	bne	.L334	@,
.L209:
	tst	r3, #2	@ D.15644,
	beq	.L211	@,
	tst	r2, #2	@ BufFreeFlag,
	beq	.L212	@,
	mov	r0, #1	@ Flag,
.L211:
	tst	r3, #4	@ D.15644,
	beq	.L213	@,
	tst	r2, #4	@ BufFreeFlag,
	beq	.L212	@,
	mov	r0, #1	@ Flag,
.L213:
	tst	r3, #8	@ D.15644,
	beq	.L214	@,
	tst	r2, #8	@ BufFreeFlag,
	beq	.L212	@,
	mov	r0, #1	@ Flag,
.L214:
	tst	r3, #16	@ D.15644,
	beq	.L215	@,
	tst	r2, #16	@ BufFreeFlag,
	beq	.L212	@,
	mov	r0, #1	@ Flag,
.L215:
	tst	r3, #32	@ D.15644,
	beq	.L216	@,
	tst	r2, #32	@ BufFreeFlag,
	beq	.L212	@,
	mov	r0, #1	@ Flag,
.L216:
	tst	r3, #64	@ D.15644,
	beq	.L217	@,
	tst	r2, #64	@ BufFreeFlag,
	beq	.L212	@,
	mov	r0, #1	@ Flag,
.L217:
	tst	r3, #128	@ D.15644,
	bne	.L335	@,
.L218:
	tst	r1, #1	@ D.15643,
	bne	.L336	@,
.L219:
	tst	r1, #2	@ D.15643,
	beq	.L221	@,
	tst	r2, #2	@ BufFreeFlag,
	beq	.L220	@,
	orr	r0, r0, #2	@ Flag, Flag,
.L221:
	tst	r1, #4	@ D.15643,
	beq	.L222	@,
	tst	r2, #4	@ BufFreeFlag,
	beq	.L220	@,
	orr	r0, r0, #2	@ Flag, Flag,
.L222:
	tst	r1, #8	@ D.15643,
	beq	.L223	@,
	tst	r2, #8	@ BufFreeFlag,
	beq	.L220	@,
	orr	r0, r0, #2	@ Flag, Flag,
.L223:
	tst	r1, #16	@ D.15643,
	beq	.L224	@,
	tst	r2, #16	@ BufFreeFlag,
	beq	.L220	@,
	orr	r0, r0, #2	@ Flag, Flag,
.L224:
	tst	r1, #32	@ D.15643,
	beq	.L225	@,
	tst	r2, #32	@ BufFreeFlag,
	beq	.L220	@,
	orr	r0, r0, #2	@ Flag, Flag,
.L225:
	tst	r1, #64	@ D.15643,
	beq	.L226	@,
	tst	r2, #64	@ BufFreeFlag,
	beq	.L220	@,
	orr	r0, r0, #2	@ Flag, Flag,
.L226:
	tst	r1, #128	@ D.15643,
	beq	.L227	@,
	tst	r2, #128	@ BufFreeFlag,
	orrne	r0, r0, #2	@ Flag, Flag,
	beq	.L220	@,
.L227:
	tst	r0, #1	@ Flag,
	beq	.L306	@,
.L228:
	ldr	r0, [r4, #52]	@ BufFreeFlag, <variable>.AopBufFreeFlag
	ldr	r1, [r4, #36]	@ D.15666, <variable>.AopHiPriorityMask
	cmp	r0, #0	@ BufFreeFlag,
	ldr	r2, [r4, #40]	@ D.15665, <variable>.AopLoPriorityMask
	beq	.L306	@,
	cmp	r1, #0	@ D.15666,
	moveq	r3, r1	@ Flag, D.15666
	beq	.L231	@,
	ands	r3, r1, #1	@ tmp199, D.15666,
	beq	.L233	@,
	ands	r3, r0, #1	@ tmp200, BufFreeFlag,
	beq	.L236	@,
	mov	r3, #1	@ Flag,
.L233:
	tst	r1, #2	@ D.15666,
	beq	.L235	@,
	tst	r0, #2	@ BufFreeFlag,
	beq	.L236	@,
	mov	r3, #1	@ Flag,
.L235:
	tst	r1, #4	@ D.15666,
	beq	.L237	@,
	tst	r0, #4	@ BufFreeFlag,
	beq	.L236	@,
	mov	r3, #1	@ Flag,
.L237:
	tst	r1, #8	@ D.15666,
	beq	.L238	@,
	tst	r0, #8	@ BufFreeFlag,
	beq	.L236	@,
	mov	r3, #1	@ Flag,
.L238:
	tst	r1, #16	@ D.15666,
	beq	.L239	@,
	tst	r0, #16	@ BufFreeFlag,
	beq	.L236	@,
	mov	r3, #1	@ Flag,
.L239:
	tst	r1, #32	@ D.15666,
	beq	.L240	@,
	tst	r0, #32	@ BufFreeFlag,
	beq	.L236	@,
	mov	r3, #1	@ Flag,
.L240:
	tst	r1, #64	@ D.15666,
	beq	.L241	@,
	tst	r0, #64	@ BufFreeFlag,
	beq	.L236	@,
	mov	r3, #1	@ Flag,
.L241:
	tst	r1, #128	@ D.15666,
	beq	.L231	@,
	tst	r0, #128	@ BufFreeFlag,
	movne	r3, #1	@ Flag,
	beq	.L236	@,
.L231:
	cmp	r2, #0	@ D.15665,
	beq	.L242	@,
	tst	r2, #1	@ D.15665,
	beq	.L243	@,
	tst	r0, #1	@ BufFreeFlag,
	beq	.L244	@,
	orr	r3, r3, #2	@ Flag, Flag,
.L243:
	tst	r2, #2	@ D.15665,
	beq	.L245	@,
	tst	r0, #2	@ BufFreeFlag,
	beq	.L244	@,
	orr	r3, r3, #2	@ Flag, Flag,
.L245:
	tst	r2, #4	@ D.15665,
	beq	.L246	@,
	tst	r0, #4	@ BufFreeFlag,
	beq	.L244	@,
	orr	r3, r3, #2	@ Flag, Flag,
.L246:
	tst	r2, #8	@ D.15665,
	beq	.L247	@,
	tst	r0, #8	@ BufFreeFlag,
	beq	.L244	@,
	orr	r3, r3, #2	@ Flag, Flag,
.L247:
	tst	r2, #16	@ D.15665,
	beq	.L248	@,
	tst	r0, #16	@ BufFreeFlag,
	beq	.L244	@,
	orr	r3, r3, #2	@ Flag, Flag,
.L248:
	tst	r2, #32	@ D.15665,
	beq	.L249	@,
	tst	r0, #32	@ BufFreeFlag,
	beq	.L244	@,
	orr	r3, r3, #2	@ Flag, Flag,
.L249:
	tst	r2, #64	@ D.15665,
	beq	.L250	@,
	tst	r0, #64	@ BufFreeFlag,
	beq	.L244	@,
	orr	r3, r3, #2	@ Flag, Flag,
.L250:
	tst	r2, #128	@ D.15665,
	beq	.L242	@,
	tst	r0, #128	@ BufFreeFlag,
	orrne	r3, r3, #2	@ Flag, Flag,
	beq	.L244	@,
.L242:
	cmp	r1, #0	@ D.15666,
	bne	.L337	@,
	cmp	r2, #0	@ D.15665,
	beq	.L306	@,
	tst	r3, #2	@ Flag,
	beq	.L306	@,
.L252:
	bl	AOE_FlushWKBuf	@
	mov	r1, #32	@,
	sub	r0, fp, #84	@,,
	ldr	r9, [r4, #4]	@ Ch, <variable>.stAttr.u32Channels
	ldr	sl, [r4, #0]	@ BitDepth, <variable>.stAttr.u32BitPerSample
	bl	__memzero	@
	bl	AOE_GetWKBuf	@
	ldr	r1, [r4, #64]	@ __n, <variable>.BlockSize
	cmp	r1, #0	@ __n,
	mov	r7, r0	@ pDataBuf,
	beq	.L305	@,
	bl	__memzero	@
.L305:
	ldr	r3, [r4, #16]	@ <variable>.AipMask, <variable>.AipMask
	tst	r3, #1	@ <variable>.AipMask,
	bne	.L338	@,
.L253:
	mov	r5, #0	@ u32UnderFlag,
	mov	r6, r5	@ MixCnt, u32UnderFlag
.L255:
	tst	r3, #2	@ <variable>.AipMask,
	bne	.L339	@,
.L259:
	tst	r3, #4	@ <variable>.AipMask,
	bne	.L340	@,
.L264:
	tst	r3, #8	@ <variable>.AipMask,
	bne	.L341	@,
.L269:
	tst	r3, #16	@ <variable>.AipMask,
	bne	.L342	@,
.L274:
	tst	r3, #32	@ <variable>.AipMask,
	bne	.L343	@,
.L279:
	tst	r3, #64	@ <variable>.AipMask,
	bne	.L344	@,
.L284:
	tst	r3, #128	@ <variable>.AipMask,
	bne	.L345	@,
.L289:
	cmp	r6, #0	@ MixCnt,
	ldreq	r3, [fp, #-72]	@ prephitmp.736, stFrame.u32SamplesPerFrame
	beq	.L294	@,
	tst	r5, #1	@ u32UnderFlag,
	bne	.L346	@,
.L295:
	tst	r5, #2	@ u32UnderFlag,
	bne	.L347	@,
.L296:
	tst	r5, #4	@ u32UnderFlag,
	bne	.L348	@,
.L297:
	tst	r5, #8	@ u32UnderFlag,
	bne	.L349	@,
.L298:
	tst	r5, #16	@ u32UnderFlag,
	bne	.L350	@,
.L299:
	tst	r5, #32	@ u32UnderFlag,
	bne	.L351	@,
.L300:
	tst	r5, #64	@ u32UnderFlag,
	bne	.L352	@,
.L301:
	tst	r5, #128	@ u32UnderFlag,
	bne	.L353	@,
.L302:
	ldr	lr, [r4, #64]	@ <variable>.BlockSize, <variable>.BlockSize
	ldr	r3, [r4, #72]	@ prephitmp.736, <variable>.SamplePerFrame
	ldmia	r4, {r0, ip}	@ phole ldm
	ldr	r1, [r4, #8]	@ <variable>.stAttr.u32SampleRate, <variable>.stAttr.u32SampleRate
	ldr	r2, [r4, #12]	@ <variable>.stAttr.u32DataFormat, <variable>.stAttr.u32DataFormat
	str	r7, [fp, #-84]	@ pDataBuf, stFrame.pDataBuf
	str	lr, [fp, #-76]	@ <variable>.BlockSize, stFrame.u32DataBytes
	str	ip, [fp, #-64]	@ <variable>.stAttr.u32Channels, stFrame.u32Channels
	str	r0, [fp, #-68]	@ <variable>.stAttr.u32BitPerSample, stFrame.u32BitPerSample
	str	r1, [fp, #-60]	@ <variable>.stAttr.u32SampleRate, stFrame.u32SampleRate
	str	r2, [fp, #-56]	@ <variable>.stAttr.u32DataFormat, stFrame.u32DataFormat
	str	r3, [fp, #-72]	@ prephitmp.736, stFrame.u32SamplesPerFrame
.L294:
	cmp	r3, #0	@ prephitmp.736,
	bne	.L354	@,
	bl	AOE_FlushWKBuf	@
.L306:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L207:
	cmp	r2, #0	@ BufFreeFlag,
	beq	.L306	@,
	b	.L228	@
.L334:
	ands	r0, r2, #1	@ tmp167, BufFreeFlag,
	beq	.L212	@,
	mov	r0, #1	@ Flag,
	b	.L209	@
.L354:
	mov	r0, r4	@, state
	sub	r1, fp, #84	@,,
	bl	ENGINEOutFrame	@
	bl	AOE_FlushWKBuf	@
	b	.L306	@
.L337:
	tst	r3, #1	@ Flag,
	bne	.L252	@,
	b	.L306	@
.L336:
	tst	r2, #1	@ BufFreeFlag,
	beq	.L220	@,
	orr	r0, r0, #2	@ Flag, Flag,
	b	.L219	@
.L345:
	mov	r0, #7	@,
	sub	r1, fp, #120	@,,
	bl	AIP_QueryFiFoInfo	@
	ldr	r0, [r4, #64]	@ D.16225, <variable>.BlockSize
	ldr	r2, [fp, #-100]	@ stRbfIn.u32TotalDataSize, stRbfIn.u32TotalDataSize
	ldr	ip, [fp, #-104]	@ TailBytes, stRbfIn.u32ContiguousDataSize
	cmp	r2, r0	@ stRbfIn.u32TotalDataSize, D.16225
	bls	.L290	@,
	cmp	ip, r0	@ TailBytes, D.16225
	bcs	.L291	@,
	ldr	lr, [fp, #-116]	@ stRbfIn.u32ReadPtr, stRbfIn.u32ReadPtr
	add	r3, r7, ip	@, pDataBuf, TailBytes
	ldr	r8, [fp, #-120]	@ stRbfIn.u32BasePtr, stRbfIn.u32BasePtr
	mov	r0, ip	@, TailBytes
	str	r3, [fp, #-128]	@, %sfp
	ldr	r1, [r4, #68]	@, <variable>.FrameSize
	add	r8, r8, lr	@ tmp461, stRbfIn.u32BasePtr, stRbfIn.u32ReadPtr
	str	ip, [fp, #-132]	@,
	bl	__aeabi_uidiv	@
	mov	r3, sl	@, BitDepth
	mov	r1, r8	@, tmp461
	mul	r2, r9, r0	@ tmp468, Ch,
	mov	r0, r7	@, pDataBuf
	bl	UTIL_MixerPro	@
	ldr	ip, [fp, #-132]	@,
	ldr	r0, [r4, #64]	@ <variable>.BlockSize, <variable>.BlockSize
	ldr	r1, [r4, #68]	@, <variable>.FrameSize
	rsb	r0, ip, r0	@, TailBytes, <variable>.BlockSize
	bl	__aeabi_uidiv	@
	mov	r3, sl	@, BitDepth
	ldr	r1, [fp, #-120]	@, stRbfIn.u32BasePtr
	mul	r2, r9, r0	@ tmp477, Ch,
	ldr	r0, [fp, #-128]	@, %sfp
	bl	UTIL_MixerPro	@
.L292:
	mov	r0, #7	@,
	ldr	r1, [r4, #64]	@, <variable>.BlockSize
	bl	AIP_ReadFiFoComplete	@
	add	r6, r6, #1	@ MixCnt, MixCnt,
	b	.L289	@
.L344:
	mov	r0, #6	@,
	sub	r1, fp, #120	@,,
	bl	AIP_QueryFiFoInfo	@
	ldr	r0, [r4, #64]	@ temp.1000, <variable>.BlockSize
	ldr	r2, [fp, #-100]	@ stRbfIn.u32TotalDataSize, stRbfIn.u32TotalDataSize
	ldr	ip, [fp, #-104]	@ TailBytes.998, stRbfIn.u32ContiguousDataSize
	cmp	r2, r0	@ stRbfIn.u32TotalDataSize, temp.1000
	bls	.L355	@,
	cmp	ip, r0	@ TailBytes.998, temp.1000
	bcs	.L356	@,
	ldr	r3, [fp, #-116]	@ stRbfIn.u32ReadPtr, stRbfIn.u32ReadPtr
	add	r1, r7, ip	@, pDataBuf, TailBytes.998
	ldr	lr, [fp, #-120]	@ stRbfIn.u32BasePtr, stRbfIn.u32BasePtr
	mov	r0, ip	@, TailBytes.998
	str	r1, [fp, #-128]	@, %sfp
	ldr	r1, [r4, #68]	@, <variable>.FrameSize
	add	r8, lr, r3	@ tmp440, stRbfIn.u32BasePtr, stRbfIn.u32ReadPtr
	str	ip, [fp, #-132]	@,
	bl	__aeabi_uidiv	@
	mov	r3, sl	@, BitDepth
	mov	r1, r8	@, tmp440
	mul	r2, r9, r0	@ tmp447, Ch,
	mov	r0, r7	@, pDataBuf
	bl	UTIL_MixerPro	@
	ldr	r3, [r4, #64]	@ <variable>.BlockSize, <variable>.BlockSize
	ldr	r2, [fp, #-132]	@,
	ldr	r1, [r4, #68]	@, <variable>.FrameSize
	rsb	r0, r2, r3	@, TailBytes.998, <variable>.BlockSize
	bl	__aeabi_uidiv	@
	mov	r3, sl	@, BitDepth
	ldr	r1, [fp, #-120]	@, stRbfIn.u32BasePtr
	mul	r2, r9, r0	@ tmp456, Ch,
	ldr	r0, [fp, #-128]	@, %sfp
	bl	UTIL_MixerPro	@
.L288:
	mov	r0, #6	@,
	ldr	r1, [r4, #64]	@, <variable>.BlockSize
	bl	AIP_ReadFiFoComplete	@
	add	r6, r6, #1	@ MixCnt, MixCnt,
	ldr	r3, [r4, #16]	@ <variable>.AipMask, <variable>.AipMask
	b	.L284	@
.L343:
	mov	r0, #5	@,
	sub	r1, fp, #120	@,,
	bl	AIP_QueryFiFoInfo	@
	ldr	r0, [r4, #64]	@ temp.969, <variable>.BlockSize
	ldr	r2, [fp, #-100]	@ stRbfIn.u32TotalDataSize, stRbfIn.u32TotalDataSize
	ldr	ip, [fp, #-104]	@ TailBytes.967, stRbfIn.u32ContiguousDataSize
	cmp	r2, r0	@ stRbfIn.u32TotalDataSize, temp.969
	bls	.L357	@,
	cmp	ip, r0	@ TailBytes.967, temp.969
	bcs	.L358	@,
	ldr	r3, [fp, #-116]	@ stRbfIn.u32ReadPtr, stRbfIn.u32ReadPtr
	add	r1, r7, ip	@, pDataBuf, TailBytes.967
	ldr	lr, [fp, #-120]	@ stRbfIn.u32BasePtr, stRbfIn.u32BasePtr
	mov	r0, ip	@, TailBytes.967
	str	r1, [fp, #-128]	@, %sfp
	ldr	r1, [r4, #68]	@, <variable>.FrameSize
	add	r8, lr, r3	@ tmp408, stRbfIn.u32BasePtr, stRbfIn.u32ReadPtr
	str	ip, [fp, #-132]	@,
	bl	__aeabi_uidiv	@
	mov	r3, sl	@, BitDepth
	mov	r1, r8	@, tmp408
	mul	r2, r9, r0	@ tmp415, Ch,
	mov	r0, r7	@, pDataBuf
	bl	UTIL_MixerPro	@
	ldr	r3, [r4, #64]	@ <variable>.BlockSize, <variable>.BlockSize
	ldr	r2, [fp, #-132]	@,
	ldr	r1, [r4, #68]	@, <variable>.FrameSize
	rsb	r0, r2, r3	@, TailBytes.967, <variable>.BlockSize
	bl	__aeabi_uidiv	@
	mov	r3, sl	@, BitDepth
	ldr	r1, [fp, #-120]	@, stRbfIn.u32BasePtr
	mul	r2, r9, r0	@ tmp424, Ch,
	ldr	r0, [fp, #-128]	@, %sfp
	bl	UTIL_MixerPro	@
.L283:
	mov	r0, #5	@,
	ldr	r1, [r4, #64]	@, <variable>.BlockSize
	bl	AIP_ReadFiFoComplete	@
	add	r6, r6, #1	@ MixCnt, MixCnt,
	ldr	r3, [r4, #16]	@ <variable>.AipMask, <variable>.AipMask
	b	.L279	@
.L342:
	mov	r0, #4	@,
	sub	r1, fp, #120	@,,
	bl	AIP_QueryFiFoInfo	@
	ldr	r0, [r4, #64]	@ temp.938, <variable>.BlockSize
	ldr	r2, [fp, #-100]	@ stRbfIn.u32TotalDataSize, stRbfIn.u32TotalDataSize
	ldr	ip, [fp, #-104]	@ TailBytes.936, stRbfIn.u32ContiguousDataSize
	cmp	r2, r0	@ stRbfIn.u32TotalDataSize, temp.938
	bls	.L359	@,
	cmp	ip, r0	@ TailBytes.936, temp.938
	bcs	.L360	@,
	ldr	r3, [fp, #-116]	@ stRbfIn.u32ReadPtr, stRbfIn.u32ReadPtr
	add	r1, r7, ip	@, pDataBuf, TailBytes.936
	ldr	lr, [fp, #-120]	@ stRbfIn.u32BasePtr, stRbfIn.u32BasePtr
	mov	r0, ip	@, TailBytes.936
	str	r1, [fp, #-128]	@, %sfp
	ldr	r1, [r4, #68]	@, <variable>.FrameSize
	add	r8, lr, r3	@ tmp376, stRbfIn.u32BasePtr, stRbfIn.u32ReadPtr
	str	ip, [fp, #-132]	@,
	bl	__aeabi_uidiv	@
	mov	r3, sl	@, BitDepth
	mov	r1, r8	@, tmp376
	mul	r2, r9, r0	@ tmp383, Ch,
	mov	r0, r7	@, pDataBuf
	bl	UTIL_MixerPro	@
	ldr	r3, [r4, #64]	@ <variable>.BlockSize, <variable>.BlockSize
	ldr	r2, [fp, #-132]	@,
	ldr	r1, [r4, #68]	@, <variable>.FrameSize
	rsb	r0, r2, r3	@, TailBytes.936, <variable>.BlockSize
	bl	__aeabi_uidiv	@
	mov	r3, sl	@, BitDepth
	ldr	r1, [fp, #-120]	@, stRbfIn.u32BasePtr
	mul	r2, r9, r0	@ tmp392, Ch,
	ldr	r0, [fp, #-128]	@, %sfp
	bl	UTIL_MixerPro	@
.L278:
	mov	r0, #4	@,
	ldr	r1, [r4, #64]	@, <variable>.BlockSize
	bl	AIP_ReadFiFoComplete	@
	add	r6, r6, #1	@ MixCnt, MixCnt,
	ldr	r3, [r4, #16]	@ <variable>.AipMask, <variable>.AipMask
	b	.L274	@
.L341:
	mov	r0, #3	@,
	sub	r1, fp, #120	@,,
	bl	AIP_QueryFiFoInfo	@
	ldr	r0, [r4, #64]	@ temp.907, <variable>.BlockSize
	ldr	r2, [fp, #-100]	@ stRbfIn.u32TotalDataSize, stRbfIn.u32TotalDataSize
	ldr	ip, [fp, #-104]	@ TailBytes.905, stRbfIn.u32ContiguousDataSize
	cmp	r2, r0	@ stRbfIn.u32TotalDataSize, temp.907
	bls	.L361	@,
	cmp	ip, r0	@ TailBytes.905, temp.907
	bcs	.L362	@,
	ldr	r3, [fp, #-116]	@ stRbfIn.u32ReadPtr, stRbfIn.u32ReadPtr
	add	r1, r7, ip	@, pDataBuf, TailBytes.905
	ldr	lr, [fp, #-120]	@ stRbfIn.u32BasePtr, stRbfIn.u32BasePtr
	mov	r0, ip	@, TailBytes.905
	str	r1, [fp, #-128]	@, %sfp
	ldr	r1, [r4, #68]	@, <variable>.FrameSize
	add	r8, lr, r3	@ tmp344, stRbfIn.u32BasePtr, stRbfIn.u32ReadPtr
	str	ip, [fp, #-132]	@,
	bl	__aeabi_uidiv	@
	mov	r3, sl	@, BitDepth
	mov	r1, r8	@, tmp344
	mul	r2, r9, r0	@ tmp351, Ch,
	mov	r0, r7	@, pDataBuf
	bl	UTIL_MixerPro	@
	ldr	r3, [r4, #64]	@ <variable>.BlockSize, <variable>.BlockSize
	ldr	r2, [fp, #-132]	@,
	ldr	r1, [r4, #68]	@, <variable>.FrameSize
	rsb	r0, r2, r3	@, TailBytes.905, <variable>.BlockSize
	bl	__aeabi_uidiv	@
	mov	r3, sl	@, BitDepth
	ldr	r1, [fp, #-120]	@, stRbfIn.u32BasePtr
	mul	r2, r9, r0	@ tmp360, Ch,
	ldr	r0, [fp, #-128]	@, %sfp
	bl	UTIL_MixerPro	@
.L273:
	mov	r0, #3	@,
	ldr	r1, [r4, #64]	@, <variable>.BlockSize
	bl	AIP_ReadFiFoComplete	@
	add	r6, r6, #1	@ MixCnt, MixCnt,
	ldr	r3, [r4, #16]	@ <variable>.AipMask, <variable>.AipMask
	b	.L269	@
.L340:
	mov	r0, #2	@,
	sub	r1, fp, #120	@,,
	bl	AIP_QueryFiFoInfo	@
	ldr	r0, [r4, #64]	@ temp.877, <variable>.BlockSize
	ldr	r2, [fp, #-100]	@ stRbfIn.u32TotalDataSize, stRbfIn.u32TotalDataSize
	ldr	ip, [fp, #-104]	@ TailBytes.875, stRbfIn.u32ContiguousDataSize
	cmp	r2, r0	@ stRbfIn.u32TotalDataSize, temp.877
	bls	.L363	@,
	cmp	ip, r0	@ TailBytes.875, temp.877
	bcs	.L364	@,
	ldr	r3, [fp, #-116]	@ stRbfIn.u32ReadPtr, stRbfIn.u32ReadPtr
	add	r1, r7, ip	@, pDataBuf, TailBytes.875
	ldr	lr, [fp, #-120]	@ stRbfIn.u32BasePtr, stRbfIn.u32BasePtr
	mov	r0, ip	@, TailBytes.875
	str	r1, [fp, #-128]	@, %sfp
	ldr	r1, [r4, #68]	@, <variable>.FrameSize
	add	r8, lr, r3	@ tmp312, stRbfIn.u32BasePtr, stRbfIn.u32ReadPtr
	str	ip, [fp, #-132]	@,
	bl	__aeabi_uidiv	@
	mov	r3, sl	@, BitDepth
	mov	r1, r8	@, tmp312
	mul	r2, r9, r0	@ tmp319, Ch,
	mov	r0, r7	@, pDataBuf
	bl	UTIL_MixerPro	@
	ldr	r3, [r4, #64]	@ <variable>.BlockSize, <variable>.BlockSize
	ldr	r2, [fp, #-132]	@,
	ldr	r1, [r4, #68]	@, <variable>.FrameSize
	rsb	r0, r2, r3	@, TailBytes.875, <variable>.BlockSize
	bl	__aeabi_uidiv	@
	mov	r3, sl	@, BitDepth
	ldr	r1, [fp, #-120]	@, stRbfIn.u32BasePtr
	mul	r2, r9, r0	@ tmp328, Ch,
	ldr	r0, [fp, #-128]	@, %sfp
	bl	UTIL_MixerPro	@
.L268:
	mov	r0, #2	@,
	ldr	r1, [r4, #64]	@, <variable>.BlockSize
	bl	AIP_ReadFiFoComplete	@
	add	r6, r6, #1	@ MixCnt, MixCnt,
	ldr	r3, [r4, #16]	@ <variable>.AipMask, <variable>.AipMask
	b	.L264	@
.L339:
	mov	r0, #1	@,
	sub	r1, fp, #120	@,,
	bl	AIP_QueryFiFoInfo	@
	ldr	r0, [r4, #64]	@ temp.847, <variable>.BlockSize
	ldr	r1, [fp, #-100]	@ stRbfIn.u32TotalDataSize, stRbfIn.u32TotalDataSize
	ldr	ip, [fp, #-104]	@ TailBytes.845, stRbfIn.u32ContiguousDataSize
	cmp	r1, r0	@ stRbfIn.u32TotalDataSize, temp.847
	bls	.L365	@,
	cmp	ip, r0	@ TailBytes.845, temp.847
	bcs	.L366	@,
	ldr	r3, [fp, #-116]	@ stRbfIn.u32ReadPtr, stRbfIn.u32ReadPtr
	add	r1, r7, ip	@, pDataBuf, TailBytes.845
	ldr	lr, [fp, #-120]	@ stRbfIn.u32BasePtr, stRbfIn.u32BasePtr
	mov	r0, ip	@, TailBytes.845
	str	r1, [fp, #-128]	@, %sfp
	ldr	r1, [r4, #68]	@, <variable>.FrameSize
	add	r8, lr, r3	@ tmp280, stRbfIn.u32BasePtr, stRbfIn.u32ReadPtr
	str	ip, [fp, #-132]	@,
	bl	__aeabi_uidiv	@
	mov	r3, sl	@, BitDepth
	mov	r1, r8	@, tmp280
	mul	r2, r9, r0	@ tmp287, Ch,
	mov	r0, r7	@, pDataBuf
	bl	UTIL_MixerPro	@
	ldr	ip, [fp, #-132]	@,
	ldr	r0, [r4, #64]	@ <variable>.BlockSize, <variable>.BlockSize
	ldr	r1, [r4, #68]	@, <variable>.FrameSize
	rsb	r0, ip, r0	@, TailBytes.845, <variable>.BlockSize
	bl	__aeabi_uidiv	@
	mov	r3, sl	@, BitDepth
	ldr	r1, [fp, #-120]	@, stRbfIn.u32BasePtr
	mul	r2, r9, r0	@ tmp296, Ch,
	ldr	r0, [fp, #-128]	@, %sfp
	bl	UTIL_MixerPro	@
.L263:
	mov	r0, #1	@,
	ldr	r1, [r4, #64]	@, <variable>.BlockSize
	bl	AIP_ReadFiFoComplete	@
	add	r6, r6, #1	@ MixCnt, MixCnt,
	ldr	r3, [r4, #16]	@ <variable>.AipMask, <variable>.AipMask
	b	.L259	@
.L338:
	mov	r0, #0	@,
	sub	r1, fp, #120	@,,
	bl	AIP_QueryFiFoInfo	@
	ldr	r0, [r4, #64]	@ temp.818, <variable>.BlockSize
	ldr	r3, [fp, #-100]	@ stRbfIn.u32TotalDataSize, stRbfIn.u32TotalDataSize
	ldr	r6, [fp, #-104]	@ TailBytes.816, stRbfIn.u32ContiguousDataSize
	cmp	r3, r0	@ stRbfIn.u32TotalDataSize, temp.818
	bls	.L367	@,
	cmp	r6, r0	@ TailBytes.816, temp.818
	bcs	.L368	@,
	ldr	lr, [fp, #-116]	@ stRbfIn.u32ReadPtr, stRbfIn.u32ReadPtr
	mov	r0, r6	@, TailBytes.816
	ldr	ip, [fp, #-120]	@ stRbfIn.u32BasePtr, stRbfIn.u32BasePtr
	add	r8, r7, r6	@ tmp256, pDataBuf, TailBytes.816
	ldr	r1, [r4, #68]	@, <variable>.FrameSize
	add	r5, ip, lr	@ tmp248, stRbfIn.u32BasePtr, stRbfIn.u32ReadPtr
	bl	__aeabi_uidiv	@
	mov	r3, sl	@, BitDepth
	mov	r1, r5	@, tmp248
	mul	r2, r9, r0	@ tmp255, Ch,
	mov	r0, r7	@, pDataBuf
	bl	UTIL_MixerPro	@
	ldr	r0, [r4, #64]	@ <variable>.BlockSize, <variable>.BlockSize
	ldr	r1, [r4, #68]	@, <variable>.FrameSize
	rsb	r0, r6, r0	@, TailBytes.816, <variable>.BlockSize
	bl	__aeabi_uidiv	@
	mov	r3, sl	@, BitDepth
	ldr	r1, [fp, #-120]	@, stRbfIn.u32BasePtr
	mul	r2, r9, r0	@ tmp264, Ch,
	mov	r0, r8	@, tmp256
	bl	UTIL_MixerPro	@
.L258:
	mov	r0, #0	@,
	ldr	r1, [r4, #64]	@, <variable>.BlockSize
	bl	AIP_ReadFiFoComplete	@
	mov	r5, #0	@ u32UnderFlag,
	mov	r6, #1	@ MixCnt,
	ldr	r3, [r4, #16]	@ <variable>.AipMask, <variable>.AipMask
	b	.L255	@
.L335:
	tst	r2, #128	@ BufFreeFlag,
	movne	r0, #1	@ Flag,
	bne	.L218	@,
.L212:
	bic	r0, r0, #1	@ Flag, Flag,
	b	.L218	@
.L367:
	mov	r0, #0	@,
	sub	r1, fp, #52	@,,
	bl	AIP_GetChnStatus	@
	ldr	r5, [fp, #-52]	@ stChnStatus.CurnStatus, stChnStatus.CurnStatus
	cmp	r5, #1	@ stChnStatus.CurnStatus,
	ldrne	r3, [r4, #16]	@ <variable>.AipMask, <variable>.AipMask
	bne	.L253	@,
	mov	r6, #0	@ MixCnt,
	ldr	r3, [r4, #16]	@ <variable>.AipMask, <variable>.AipMask
	b	.L255	@
.L361:
	mov	r0, #3	@,
	sub	r1, fp, #52	@,,
	bl	AIP_GetChnStatus	@
	ldr	r0, [fp, #-52]	@ stChnStatus.CurnStatus, stChnStatus.CurnStatus
	ldr	r3, [r4, #16]	@ <variable>.AipMask, <variable>.AipMask
	cmp	r0, #1	@ stChnStatus.CurnStatus,
	orreq	r5, r5, #8	@ u32UnderFlag, u32UnderFlag,
	b	.L269	@
.L359:
	mov	r0, #4	@,
	sub	r1, fp, #52	@,,
	bl	AIP_GetChnStatus	@
	ldr	r0, [fp, #-52]	@ stChnStatus.CurnStatus, stChnStatus.CurnStatus
	ldr	r3, [r4, #16]	@ <variable>.AipMask, <variable>.AipMask
	cmp	r0, #1	@ stChnStatus.CurnStatus,
	orreq	r5, r5, #16	@ u32UnderFlag, u32UnderFlag,
	b	.L274	@
.L357:
	mov	r0, #5	@,
	sub	r1, fp, #52	@,,
	bl	AIP_GetChnStatus	@
	ldr	r0, [fp, #-52]	@ stChnStatus.CurnStatus, stChnStatus.CurnStatus
	ldr	r3, [r4, #16]	@ <variable>.AipMask, <variable>.AipMask
	cmp	r0, #1	@ stChnStatus.CurnStatus,
	orreq	r5, r5, #32	@ u32UnderFlag, u32UnderFlag,
	b	.L279	@
.L355:
	mov	r0, #6	@,
	sub	r1, fp, #52	@,,
	bl	AIP_GetChnStatus	@
	ldr	r0, [fp, #-52]	@ stChnStatus.CurnStatus, stChnStatus.CurnStatus
	ldr	r3, [r4, #16]	@ <variable>.AipMask, <variable>.AipMask
	cmp	r0, #1	@ stChnStatus.CurnStatus,
	orreq	r5, r5, #64	@ u32UnderFlag, u32UnderFlag,
	b	.L284	@
.L363:
	mov	r0, #2	@,
	sub	r1, fp, #52	@,,
	bl	AIP_GetChnStatus	@
	ldr	r0, [fp, #-52]	@ stChnStatus.CurnStatus, stChnStatus.CurnStatus
	ldr	r3, [r4, #16]	@ <variable>.AipMask, <variable>.AipMask
	cmp	r0, #1	@ stChnStatus.CurnStatus,
	orreq	r5, r5, #4	@ u32UnderFlag, u32UnderFlag,
	b	.L264	@
.L365:
	mov	r0, #1	@,
	sub	r1, fp, #52	@,,
	bl	AIP_GetChnStatus	@
	ldr	r3, [fp, #-52]	@ stChnStatus.CurnStatus, stChnStatus.CurnStatus
	cmp	r3, #1	@ stChnStatus.CurnStatus,
	ldr	r3, [r4, #16]	@ <variable>.AipMask, <variable>.AipMask
	orreq	r5, r5, #2	@ u32UnderFlag, u32UnderFlag,
	b	.L259	@
.L290:
	mov	r0, #7	@,
	sub	r1, fp, #52	@,,
	bl	AIP_GetChnStatus	@
	ldr	r3, [fp, #-52]	@ stChnStatus.CurnStatus, stChnStatus.CurnStatus
	cmp	r3, #1	@ stChnStatus.CurnStatus,
	orreq	r5, r5, #128	@ u32UnderFlag, u32UnderFlag,
	b	.L289	@
.L236:
	bic	r3, r3, #1	@ Flag, Flag,
	b	.L231	@
.L244:
	bic	r3, r3, #2	@ Flag, Flag,
	b	.L242	@
.L353:
	mov	r0, #7	@,
	bl	AIP_UnderFlowCalc	@
	b	.L302	@
.L352:
	mov	r0, #6	@,
	bl	AIP_UnderFlowCalc	@
	b	.L301	@
.L351:
	mov	r0, #5	@,
	bl	AIP_UnderFlowCalc	@
	b	.L300	@
.L350:
	mov	r0, #4	@,
	bl	AIP_UnderFlowCalc	@
	b	.L299	@
.L349:
	mov	r0, #3	@,
	bl	AIP_UnderFlowCalc	@
	b	.L298	@
.L348:
	mov	r0, #2	@,
	bl	AIP_UnderFlowCalc	@
	b	.L297	@
.L347:
	mov	r0, #1	@,
	bl	AIP_UnderFlowCalc	@
	b	.L296	@
.L346:
	mov	r0, #0	@,
	bl	AIP_UnderFlowCalc	@
	b	.L295	@
.L358:
	ldr	ip, [fp, #-116]	@ stRbfIn.u32ReadPtr, stRbfIn.u32ReadPtr
	ldr	r8, [fp, #-120]	@ stRbfIn.u32BasePtr, stRbfIn.u32BasePtr
	ldr	r1, [r4, #68]	@, <variable>.FrameSize
	add	r8, r8, ip	@ tmp400, stRbfIn.u32BasePtr, stRbfIn.u32ReadPtr
	bl	__aeabi_uidiv	@
	mov	r3, sl	@, BitDepth
	mov	r1, r8	@, tmp400
	mul	r2, r9, r0	@ tmp407, Ch,
	mov	r0, r7	@, pDataBuf
	bl	UTIL_MixerPro	@
	b	.L283	@
.L291:
	ldr	r2, [fp, #-120]	@ stRbfIn.u32BasePtr, stRbfIn.u32BasePtr
	ldr	ip, [fp, #-116]	@ stRbfIn.u32ReadPtr, stRbfIn.u32ReadPtr
	ldr	r1, [r4, #68]	@, <variable>.FrameSize
	add	r8, r2, ip	@ tmp478, stRbfIn.u32BasePtr, stRbfIn.u32ReadPtr
	bl	__aeabi_uidiv	@
	mov	r3, sl	@, BitDepth
	mov	r1, r8	@, tmp478
	mul	r2, r9, r0	@ tmp485, Ch,
	mov	r0, r7	@, pDataBuf
	bl	UTIL_MixerPro	@
	b	.L292	@
.L366:
	ldr	r2, [fp, #-116]	@ stRbfIn.u32ReadPtr, stRbfIn.u32ReadPtr
	ldr	r8, [fp, #-120]	@ stRbfIn.u32BasePtr, stRbfIn.u32BasePtr
	ldr	r1, [r4, #68]	@, <variable>.FrameSize
	add	r8, r8, r2	@ tmp272, stRbfIn.u32BasePtr, stRbfIn.u32ReadPtr
	bl	__aeabi_uidiv	@
	mov	r3, sl	@, BitDepth
	mov	r1, r8	@, tmp272
	mul	r2, r9, r0	@ tmp279, Ch,
	mov	r0, r7	@, pDataBuf
	bl	UTIL_MixerPro	@
	b	.L263	@
.L356:
	ldr	ip, [fp, #-116]	@ stRbfIn.u32ReadPtr, stRbfIn.u32ReadPtr
	ldr	r8, [fp, #-120]	@ stRbfIn.u32BasePtr, stRbfIn.u32BasePtr
	ldr	r1, [r4, #68]	@, <variable>.FrameSize
	add	r8, r8, ip	@ tmp432, stRbfIn.u32BasePtr, stRbfIn.u32ReadPtr
	bl	__aeabi_uidiv	@
	mov	r3, sl	@, BitDepth
	mov	r1, r8	@, tmp432
	mul	r2, r9, r0	@ tmp439, Ch,
	mov	r0, r7	@, pDataBuf
	bl	UTIL_MixerPro	@
	b	.L288	@
.L360:
	ldr	ip, [fp, #-116]	@ stRbfIn.u32ReadPtr, stRbfIn.u32ReadPtr
	ldr	r8, [fp, #-120]	@ stRbfIn.u32BasePtr, stRbfIn.u32BasePtr
	ldr	r1, [r4, #68]	@, <variable>.FrameSize
	add	r8, r8, ip	@ tmp368, stRbfIn.u32BasePtr, stRbfIn.u32ReadPtr
	bl	__aeabi_uidiv	@
	mov	r3, sl	@, BitDepth
	mov	r1, r8	@, tmp368
	mul	r2, r9, r0	@ tmp375, Ch,
	mov	r0, r7	@, pDataBuf
	bl	UTIL_MixerPro	@
	b	.L278	@
.L364:
	ldr	ip, [fp, #-116]	@ stRbfIn.u32ReadPtr, stRbfIn.u32ReadPtr
	ldr	r8, [fp, #-120]	@ stRbfIn.u32BasePtr, stRbfIn.u32BasePtr
	ldr	r1, [r4, #68]	@, <variable>.FrameSize
	add	r8, r8, ip	@ tmp304, stRbfIn.u32BasePtr, stRbfIn.u32ReadPtr
	bl	__aeabi_uidiv	@
	mov	r3, sl	@, BitDepth
	mov	r1, r8	@, tmp304
	mul	r2, r9, r0	@ tmp311, Ch,
	mov	r0, r7	@, pDataBuf
	bl	UTIL_MixerPro	@
	b	.L268	@
.L362:
	ldr	ip, [fp, #-116]	@ stRbfIn.u32ReadPtr, stRbfIn.u32ReadPtr
	ldr	r8, [fp, #-120]	@ stRbfIn.u32BasePtr, stRbfIn.u32BasePtr
	ldr	r1, [r4, #68]	@, <variable>.FrameSize
	add	r8, r8, ip	@ tmp336, stRbfIn.u32BasePtr, stRbfIn.u32ReadPtr
	bl	__aeabi_uidiv	@
	mov	r3, sl	@, BitDepth
	mov	r1, r8	@, tmp336
	mul	r2, r9, r0	@ tmp343, Ch,
	mov	r0, r7	@, pDataBuf
	bl	UTIL_MixerPro	@
	b	.L273	@
.L368:
	ldr	r2, [fp, #-120]	@ stRbfIn.u32BasePtr, stRbfIn.u32BasePtr
	ldr	r6, [fp, #-116]	@ stRbfIn.u32ReadPtr, stRbfIn.u32ReadPtr
	ldr	r1, [r4, #68]	@, <variable>.FrameSize
	add	r5, r2, r6	@ tmp240, stRbfIn.u32BasePtr, stRbfIn.u32ReadPtr
	bl	__aeabi_uidiv	@
	mov	r3, sl	@, BitDepth
	mov	r1, r5	@, tmp240
	mul	r2, r9, r0	@ tmp247, Ch,
	mov	r0, r7	@, pDataBuf
	bl	UTIL_MixerPro	@
	b	.L258	@
.L220:
	bic	r0, r0, #2	@ Flag, Flag,
	b	.L227	@
	.fnend
	.size	ENGINEProcChnData, .-ENGINEProcChnData
	.align	2
	.global	ENGINEDestroyChn
	.type	ENGINEDestroyChn, %function
ENGINEDestroyChn:
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
	subs	r1, r0, #0	@ inst, inst
	ldmeqfd	sp, {fp, sp, pc}	@
	mov	r0, #17	@,
	bl	HI_ADSP_FREE	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	ENGINEDestroyChn, .-ENGINEDestroyChn
	.align	2
	.global	ENGINE_DeInit
	.type	ENGINE_DeInit, %function
ENGINE_DeInit:
	.fnstart
.LFB882:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp133,
	movt	r4, #:upper16:.LANCHOR0	@ tmp133,
	mov	r5, #0	@ tmp136,
	ldr	r0, [r4, #24]	@, g_stEneRm.hEne
	bl	ENGINEDestroyChn	@
	ldr	r0, [r4, #28]	@, g_stEneRm.hEne
	str	r5, [r4, #24]	@ tmp136, g_stEneRm.hEne
	bl	ENGINEDestroyChn	@
	ldr	r0, [r4, #32]	@, g_stEneRm.hEne
	str	r5, [r4, #28]	@ tmp136, g_stEneRm.hEne
	bl	ENGINEDestroyChn	@
	ldr	r0, [r4, #36]	@, g_stEneRm.hEne
	str	r5, [r4, #32]	@ tmp136, g_stEneRm.hEne
	bl	ENGINEDestroyChn	@
	ldr	r0, [r4, #40]	@, g_stEneRm.hEne
	str	r5, [r4, #36]	@ tmp136, g_stEneRm.hEne
	bl	ENGINEDestroyChn	@
	ldr	r0, [r4, #44]	@, g_stEneRm.hEne
	str	r5, [r4, #40]	@ tmp136, g_stEneRm.hEne
	bl	ENGINEDestroyChn	@
	str	r5, [r4, #44]	@ tmp136, g_stEneRm.hEne
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	ENGINE_DeInit, .-ENGINE_DeInit
	.align	2
	.global	ENGINECreateChn
	.type	ENGINECreateChn, %function
ENGINECreateChn:
	.fnstart
.LFB861:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #20
	sub	sp, sp, #20	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r3, #:lower16:.LANCHOR0	@ tmp152,
	movt	r3, #:upper16:.LANCHOR0	@ tmp152,
	sub	r6, fp, #44	@ tmp153,,
	mov	r1, #16	@,
	mov	r5, r0	@ Id, Id
	ldr	r4, [r3, r0, asl #2]	@ pEneReg, g_stEneRm.hwEneReg
	mov	r0, r6	@, tmp153
	bl	__memzero	@
	mov	r0, r6	@, tmp153
	ldr	r1, [r4, #0]	@ tmp154,* pEneReg
	and	r1, r1, #3	@, tmp154,
	bl	AOE_REG_ReadBitDepth	@
	cmp	r0, #0	@,
	beq	.L385	@,
.L375:
	mov	r6, #0	@ D.15054,
.L380:
	mov	r0, r6	@, D.15054
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L385:
	ldr	r2, [r4, #0]	@ tmp157,* pEneReg
	add	r0, r6, #4	@, tmp153,
	ubfx	r1, r2, #2, #2	@, tmp157,,
	bl	AOE_REG_ReadChannel	@
	cmp	r0, #0	@,
	bne	.L375	@,
	ldr	ip, [r4, #0]	@ tmp161,* pEneReg
	add	r0, r6, #8	@, tmp153,
	ubfx	r1, ip, #4, #4	@, tmp161,,
	bl	AOE_REG_ReadSampelRate	@
	cmp	r0, #0	@,
	bne	.L375	@,
	ldr	lr, [r4, #0]	@ tmp165,* pEneReg
	add	r0, r6, #12	@, tmp153,
	ubfx	r1, lr, #8, #2	@, tmp165,,
	bl	AOE_REG_ReadDataFormat	@
	cmp	r0, #0	@,
	bne	.L375	@,
	mov	r0, #17	@,
	mov	r1, #80	@,
	bl	HI_ADSP_MALLOC	@
	subs	r4, r0, #0	@ state,
	beq	.L375	@,
	mov	r1, #80	@,
	bl	__memzero	@
	ldmia	r6, {r0, r1, r2, r3}	@ tmp153,,,,
	mov	ip, r0	@ <variable>.stAttr.u32BitPerSample,
	stmia	r4, {r0, r1, r2, r3}	@ state,,,,
	mov	r0, r1	@,
	mov	r1, ip	@, <variable>.stAttr.u32BitPerSample
	bl	UTIL_CalcFrameSize	@
	ldr	r3, [r4, #8]	@ <variable>.stAttr.u32SampleRate, <variable>.stAttr.u32SampleRate
	movw	ip, #:lower16:274877907	@ tmp178,
	movt	ip, #:upper16:274877907	@ tmp178,
	add	r6, r3, r3, asl #2	@, tmp176, <variable>.stAttr.u32SampleRate, <variable>.stAttr.u32SampleRate,
	umull	r3, r2, ip, r6	@, tmp177, tmp178, tmp176
	mov	r1, r2, lsr #6	@ samples, tmp177,
	tst	r1, #255	@ samples
	movne	r1, r2, lsr #14	@ tmp180, tmp177,
	addne	r1, r1, #1	@ D.15675, tmp180,
	movne	r1, r1, asl #8	@ samples, D.15675,
	tst	r1, #3	@ samples,
	addne	r1, r1, #3	@ tmp182, samples,
	bicne	r1, r1, #3	@ samples, tmp182,
	mul	r6, r0, r1	@ tmp183, framesize, samples
	ldr	r0, [r4, #4]	@, <variable>.stAttr.u32Channels
	ldr	r1, [r4, #0]	@, <variable>.stAttr.u32BitPerSample
	str	r6, [r4, #64]	@ tmp183, <variable>.BlockSize
	bl	UTIL_CalcFrameSize	@
	cmp	r0, #0	@ D.15067,
	mov	r6, r0	@ D.15067,
	str	r0, [r4, #68]	@ D.15067, <variable>.FrameSize
	beq	.L379	@,
	mov	r1, r0	@, D.15067
	ldr	r0, [r4, #64]	@, <variable>.BlockSize
	bl	__aeabi_uidiv	@
	mov	r6, r4	@ D.15054, state
	mov	r1, #1	@ tmp189,
	str	r5, [r4, #60]	@ Id, <variable>.EngineId
	str	r1, [r4, #76]	@ tmp189, <variable>.CurStatus
	str	r0, [r4, #72]	@, <variable>.SamplePerFrame
	b	.L380	@
.L379:
	mov	r1, r4	@, state
	mov	r0, #17	@,
	bl	HI_ADSP_FREE	@
	b	.L380	@
	.fnend
	.size	ENGINECreateChn, .-ENGINECreateChn
	.align	2
	.global	ENGINEProcChnStartCmd
	.type	ENGINEProcChnStartCmd, %function
ENGINEProcChnStartCmd:
	.fnstart
.LFB872:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp170,
	add	r6, r0, #6	@ tmp145, Id,
	movt	r4, #:upper16:.LANCHOR0	@ tmp170,
	mov	r5, r0	@ Id, Id
	ldr	r3, [r4, r6, asl #2]	@ state, g_stEneRm.hEne
	cmp	r3, #0	@ state,
	beq	.L397	@,
	ldr	r2, [r3, #76]	@ <variable>.CurStatus, <variable>.CurStatus
	cmp	r2, #0	@ <variable>.CurStatus,
	beq	.L398	@,
.L391:
	mov	r0, #1	@ tmp164,
	str	r0, [r3, #76]	@ tmp164, <variable>.CurStatus
.L390:
	ldr	r3, [r4, r5, asl #2]	@ pEneReg, g_stEneRm.hwEneReg
	ldr	r1, [r3, #4]	@ D.15702,
	ands	r2, r1, #8	@ tmp166, D.15702,
	ldmnefd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	ldr	r0, [r3, #4]	@ tmp167,
	bfi	r0, r2, #4, #4	@ tmp167, tmp166,,
	str	r0, [r3, #4]	@ tmp167,
	ldr	r2, [r3, #4]	@ tmp168,
	orr	ip, r2, #8	@ tmp173, tmp168,
	str	ip, [r3, #4]	@ tmp173,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L398:
	mov	r0, r3	@, state
	bl	ENGINEDestroyChn	@
	mov	r0, r5	@, Id
	bl	ENGINECreateChn	@
	cmp	r0, #0	@ D.15408,
	str	r0, [r4, r6, asl #2]	@ D.15408, g_stEneRm.hEne
	movne	r3, r0	@ state, D.15408
	bne	.L391	@,
.L396:
	ldr	r3, [r4, r5, asl #2]	@ pEneReg, g_stEneRm.hwEneReg
	ldr	r0, [r3, #4]	@ D.15695,
	tst	r0, #8	@ D.15695,
	ldmnefd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	ldr	lr, [r3, #4]	@ tmp160,
	mov	r2, #3	@ tmp161,
	bfi	lr, r2, #4, #4	@ tmp160, tmp161,,
	str	lr, [r3, #4]	@ tmp160,
	ldr	ip, [r3, #4]	@ tmp162,
	orr	r1, ip, #8	@ tmp172, tmp162,
	str	r1, [r3, #4]	@ tmp172,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L397:
	bl	ENGINECreateChn	@
	cmp	r0, #0	@ D.15401,
	str	r0, [r4, r6, asl #2]	@ D.15401, g_stEneRm.hEne
	movne	r3, #1	@ tmp154,
	strne	r3, [r0, #76]	@ tmp154, <variable>.CurStatus
	bne	.L390	@,
	b	.L396	@
	.fnend
	.size	ENGINEProcChnStartCmd, .-ENGINEProcChnStartCmd
	.align	2
	.global	ENGINEProcChnCmd
	.type	ENGINEProcChnCmd, %function
ENGINEProcChnCmd:
	.fnstart
.LFB873:
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
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	mov	ip, r0	@ Id, Id
	ldr	r2, [r3, r0, asl #2]	@ pEneReg, g_stEneRm.hwEneReg
	ldr	r1, [r2, #4]	@ D.15711,
	ands	r1, r1, #8	@ tmp140, D.15711,
	ldmnefd	sp, {r3, r4, fp, sp, pc}	@
	ldr	r4, [r2, #4]	@ tmp141,
	ands	r4, r4, #3	@ D.15709, tmp141,
	bne	.L406	@,
	bl	ENGINEProcChnStartCmd	@
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L406:
	cmp	r4, #1	@ D.15709,
	beq	.L403	@,
	ldr	ip, [r2, #4]	@ tmp143,
	mov	r1, #4	@ tmp144,
	bfi	ip, r1, #4, #4	@ tmp143, tmp144,,
	str	ip, [r2, #4]	@ tmp143,
	ldr	r0, [r2, #4]	@ tmp145,
	orr	r3, r0, #8	@ tmp156, tmp145,
	str	r3, [r2, #4]	@ tmp156,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L403:
	add	r0, r0, #6	@ tmp148, Id,
	ldr	r0, [r3, r0, asl #2]	@ state, g_stEneRm.hEne
	cmp	r0, #0	@ state,
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	ldr	r4, [r0, #76]	@ <variable>.CurStatus, <variable>.CurStatus
	cmp	r4, #1	@ <variable>.CurStatus,
	streq	r1, [r0, #76]	@ tmp140, <variable>.CurStatus
	ldreq	r2, [r3, ip, asl #2]	@ pEneReg, g_stEneRm.hwEneReg
	ldr	r3, [r2, #4]	@ D.15720,
	ands	r3, r3, #8	@ tmp152, D.15720,
	ldmnefd	sp, {r3, r4, fp, sp, pc}	@
	ldr	r0, [r2, #4]	@ tmp153,
	bfi	r0, r3, #4, #4	@ tmp153, tmp152,,
	str	r0, [r2, #4]	@ tmp153,
	ldr	r1, [r2, #4]	@ tmp154,
	orr	ip, r1, #8	@ tmp157, tmp154,
	str	ip, [r2, #4]	@ tmp157,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	ENGINEProcChnCmd, .-ENGINEProcChnCmd
	.align	2
	.global	ENGINEProcChn
	.type	ENGINEProcChn, %function
ENGINEProcChn:
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
	mov	r5, r0	@ Id, Id
	bl	ENGINEProcChnCmd	@
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	add	r2, r5, #6	@ tmp141, Id,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r4, [r3, r2, asl #2]	@ state, g_stEneRm.hEne
	cmp	r4, #0	@ state,
	beq	.L408	@,
	ldr	r0, [r4, #76]	@ <variable>.CurStatus, <variable>.CurStatus
	cmp	r0, #1	@ <variable>.CurStatus,
	beq	.L410	@,
.L408:
	mov	r0, #0	@,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L410:
	ldr	r5, [r3, r5, asl #2]	@ pEneReg, g_stEneRm.hwEneReg
	mov	r0, r4	@, state
	ldrh	r1, [r5, #12]	@ <variable>.ENGINE_ROU_DST.bits.aop_buf_ena, <variable>.ENGINE_ROU_DST.bits.aop_buf_ena
	bl	ENGINEUpdateChnAopState	@
	ldrh	r1, [r5, #8]	@ <variable>.ENGINE_MIX_SRC.bits.aip_fifo_ena, <variable>.ENGINE_MIX_SRC.bits.aip_fifo_ena
	mov	r0, r4	@, state
	bl	ENGINEUpdateChnAipState	@
	ldrh	r3, [r5, #28]	@ <variable>.ENGINE_ATT_AEF.bits.aef_att_ena, <variable>.ENGINE_ATT_AEF.bits.aef_att_ena
	mov	r0, r4	@, state
	str	r3, [r4, #56]	@ <variable>.ENGINE_ATT_AEF.bits.aef_att_ena, <variable>.AefMask
	bl	ENGINEProcChnData	@
	mov	r0, #0	@,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	ENGINEProcChn, .-ENGINEProcChn
	.align	2
	.global	ENGINE_Process
	.type	ENGINE_Process, %function
ENGINE_Process:
	.fnstart
.LFB880:
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
	bl	ENGINEProcChn	@
	mov	r0, #1	@,
	bl	ENGINEProcChn	@
	mov	r0, #2	@,
	bl	ENGINEProcChn	@
	mov	r0, #3	@,
	bl	ENGINEProcChn	@
	mov	r0, #4	@,
	bl	ENGINEProcChn	@
	mov	r0, #5	@,
	bl	ENGINEProcChn	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	ENGINE_Process, .-ENGINE_Process
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	g_stEneRm, %object
	.size	g_stEneRm, 48
g_stEneRm:
	.space	48
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
