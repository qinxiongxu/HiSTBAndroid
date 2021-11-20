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
	.file	"pq_mng_zme.c"
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
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/drivers/msp/pq/pq_v3_0
@ -Idrivers/msp/pq/pq_v3_0
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/arch/arm/mach-hi3798mx/include
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/common/include
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/common/api/include
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/common/drv/include
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/include
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/api/include
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/include
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/api/pq/include
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/api/higo/include
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/pq/pq_v3_0/mng
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/pq/pq_v3_0/hal/hi3798mv100
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/pq/pq_v3_0/hal/common
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/pq/pq_v3_0
@ -imultilib armv7a_soft -iprefix
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/
@ -isysroot /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../target
@ -D__KERNEL__ -D__LINUX_ARM_ARCH__=7 -Uarm -DCHIP_TYPE_hi3796mv100
@ -DSDK_VERSION=HiSTBAndroidV600R001C00SPC064_v2016061301 -DHI_MCE_SUPPORT
@ -DHI_GPIOI2C_SUPPORT -DHI_LOG_SUPPORT=1 -DHI_LOG_LEVEL=4
@ -DHI_PROC_SUPPORT=1 -DHI_HDMI_SUPPORT_1_4 -DHI_KEYLED_SUPPORT
@ -DHI_HDCP_SUPPORT -DHI_SCI_SUPPORT -DHI_PVR_SUPPORT -DHI_VI_SUPPORT
@ -DHI_VENC_SUPPORT -DHI_AENC_SUPPORT -DHI_PQ_V3_0 -DKBUILD_STR(s)=#s
@ -DKBUILD_BASENAME=KBUILD_STR(pq_mng_zme)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_pq) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD drivers/msp/pq/pq_v3_0/mng/.pq_mng_zme.o.d
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/drivers/msp/pq/pq_v3_0/mng/pq_mng_zme.c
@ -mlittle-endian -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -marm -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/pq/pq_v3_0/mng/pq_mng_zme.o -O2 -Wall -Wundef
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
	.global	PQ_MNG_SetVdpZmeFirEn
	.type	PQ_MNG_SetVdpZmeFirEn, %function
PQ_MNG_SetVdpZmeFirEn:
	.fnstart
.LFB1392:
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
	str	r0, [r3, #0]	@ bOnOff, g_bVdpZmeFirEn
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	PQ_MNG_SetVdpZmeFirEn, .-PQ_MNG_SetVdpZmeFirEn
	.align	2
	.global	PQ_MNG_GetVdpZmeFirEn
	.type	PQ_MNG_GetVdpZmeFirEn, %function
PQ_MNG_GetVdpZmeFirEn:
	.fnstart
.LFB1393:
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
	movw	r1, #:lower16:.LANCHOR0	@ tmp135,
	movt	r1, #:upper16:.LANCHOR0	@ tmp135,
	ldr	r3, [r1, #0]	@ g_bVdpZmeFirEn, g_bVdpZmeFirEn
	str	r3, [r0, #0]	@ g_bVdpZmeFirEn,* bOnOff
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	PQ_MNG_GetVdpZmeFirEn, .-PQ_MNG_GetVdpZmeFirEn
	.align	2
	.global	PQ_MNG_SetVdpZmeMedEn
	.type	PQ_MNG_SetVdpZmeMedEn, %function
PQ_MNG_SetVdpZmeMedEn:
	.fnstart
.LFB1394:
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
	movw	r3, #:lower16:.LANCHOR1	@ tmp135,
	movt	r3, #:upper16:.LANCHOR1	@ tmp135,
	str	r0, [r3, #0]	@ bOnOff, g_bVdpZmeMedEn
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	PQ_MNG_SetVdpZmeMedEn, .-PQ_MNG_SetVdpZmeMedEn
	.align	2
	.global	PQ_MNG_GetVdpZmeMedEn
	.type	PQ_MNG_GetVdpZmeMedEn, %function
PQ_MNG_GetVdpZmeMedEn:
	.fnstart
.LFB1395:
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
	movw	r1, #:lower16:.LANCHOR1	@ tmp135,
	movt	r1, #:upper16:.LANCHOR1	@ tmp135,
	ldr	r3, [r1, #0]	@ g_bVdpZmeMedEn, g_bVdpZmeMedEn
	str	r3, [r0, #0]	@ g_bVdpZmeMedEn,* bOnOff
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	PQ_MNG_GetVdpZmeMedEn, .-PQ_MNG_GetVdpZmeMedEn
	.align	2
	.global	PQ_MNG_SetVpssZmeFirEn
	.type	PQ_MNG_SetVpssZmeFirEn, %function
PQ_MNG_SetVpssZmeFirEn:
	.fnstart
.LFB1396:
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
	str	r0, [r3, #4]	@ bOnOff, g_bVpssZmeFirEn
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	PQ_MNG_SetVpssZmeFirEn, .-PQ_MNG_SetVpssZmeFirEn
	.align	2
	.global	PQ_MNG_GetVpssZmeFirEn
	.type	PQ_MNG_GetVpssZmeFirEn, %function
PQ_MNG_GetVpssZmeFirEn:
	.fnstart
.LFB1397:
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
	movw	r1, #:lower16:.LANCHOR0	@ tmp135,
	movt	r1, #:upper16:.LANCHOR0	@ tmp135,
	ldr	r3, [r1, #4]	@ g_bVpssZmeFirEn, g_bVpssZmeFirEn
	str	r3, [r0, #0]	@ g_bVpssZmeFirEn,* bOnOff
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	PQ_MNG_GetVpssZmeFirEn, .-PQ_MNG_GetVpssZmeFirEn
	.align	2
	.global	PQ_MNG_SetVpssZmeMedEn
	.type	PQ_MNG_SetVpssZmeMedEn, %function
PQ_MNG_SetVpssZmeMedEn:
	.fnstart
.LFB1398:
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
	movw	r3, #:lower16:.LANCHOR1	@ tmp135,
	movt	r3, #:upper16:.LANCHOR1	@ tmp135,
	str	r0, [r3, #4]	@ bOnOff, g_bVpssZmeMedEn
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	PQ_MNG_SetVpssZmeMedEn, .-PQ_MNG_SetVpssZmeMedEn
	.align	2
	.global	PQ_MNG_GetVpssZmeMedEn
	.type	PQ_MNG_GetVpssZmeMedEn, %function
PQ_MNG_GetVpssZmeMedEn:
	.fnstart
.LFB1399:
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
	movw	r1, #:lower16:.LANCHOR1	@ tmp135,
	movt	r1, #:upper16:.LANCHOR1	@ tmp135,
	ldr	r3, [r1, #4]	@ g_bVpssZmeMedEn, g_bVpssZmeMedEn
	str	r3, [r0, #0]	@ g_bVpssZmeMedEn,* bOnOff
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	PQ_MNG_GetVpssZmeMedEn, .-PQ_MNG_GetVpssZmeMedEn
	.align	2
	.type	GetVerticalScalerOffset, %function
GetVerticalScalerOffset:
	.fnstart
.LFB1404:
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
	ldr	r3, [r1, #20]	@ <variable>.bZmeFrmFmtIn, <variable>.bZmeFrmFmtIn
	cmp	r3, #0	@ <variable>.bZmeFrmFmtIn,
	beq	.L18	@,
	ldr	r2, [r1, #24]	@ <variable>.bZmeFrmFmtOut, <variable>.bZmeFrmFmtOut
	cmp	r2, #0	@ <variable>.bZmeFrmFmtOut,
	bne	.L19	@,
.L23:
	ldr	ip, [r1, #32]	@ <variable>.bZmeBFOut, <variable>.bZmeBFOut
	cmp	ip, #0	@ <variable>.bZmeBFOut,
	movne	r0, r0, asr #1	@ s32VOffset, u32VRatio,
	ldmnefd	sp, {fp, sp, pc}	@
.L19:
	mov	r0, #0	@ s32VOffset,
	ldmfd	sp, {fp, sp, pc}	@
.L18:
	ldr	ip, [r1, #24]	@ <variable>.bZmeFrmFmtOut, <variable>.bZmeFrmFmtOut
	cmp	ip, #0	@ <variable>.bZmeFrmFmtOut,
	bne	.L28	@,
	ldr	r3, [r1, #28]	@ <variable>.bZmeBFIn, <variable>.bZmeBFIn
	cmp	r3, #0	@ <variable>.bZmeBFIn,
	beq	.L23	@,
	ldr	r2, [r1, #32]	@ <variable>.bZmeBFOut, <variable>.bZmeBFOut
	cmp	r2, #0	@ <variable>.bZmeBFOut,
	subne	r0, r0, #4096	@ tmp144, u32VRatio,
	movne	r0, r0, asr #1	@ s32VOffset, tmp144,
	ldmnefd	sp, {fp, sp, pc}	@
	b	.L22	@
.L28:
	ldr	r0, [r1, #28]	@ <variable>.bZmeBFIn, <variable>.bZmeBFIn
	cmp	r0, #0	@ <variable>.bZmeBFIn,
	beq	.L19	@,
.L22:
	movw	r0, #:lower16:-2048	@ s32VOffset,
	movt	r0, #:upper16:-2048	@ s32VOffset,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	GetVerticalScalerOffset, .-GetVerticalScalerOffset
	.global	__aeabi_uidiv
	.align	2
	.global	PQ_MNG_VdpZmeComnSet
	.type	PQ_MNG_VdpZmeComnSet, %function
PQ_MNG_VdpZmeComnSet:
	.fnstart
.LFB1405:
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
	movw	r6, #:lower16:.LANCHOR1	@ tmp164,
	movt	r6, #:upper16:.LANCHOR1	@ tmp164,
	mov	r2, #1	@ tmp160,
	str	r2, [r1, #12]	@ tmp160, <variable>.bZmeEnVC
	mov	r5, r0	@ pstZmeDrvPara, pstZmeDrvPara
	str	r2, [r1, #0]	@ tmp160, <variable>.bZmeEnHL
	mov	r4, r1	@ pstZmeRtlPara, pstZmeRtlPara
	str	r2, [r1, #4]	@ tmp160, <variable>.bZmeEnHC
	str	r2, [r1, #8]	@ tmp160, <variable>.bZmeEnVL
	ldr	r3, [r6, #0]	@ g_bVdpZmeMedEn.426, g_bVdpZmeMedEn
	str	r3, [r1, #44]	@ g_bVdpZmeMedEn.426, <variable>.bZmeMedVC
	str	r3, [r1, #32]	@ g_bVdpZmeMedEn.426, <variable>.bZmeMedHL
	str	r3, [r1, #36]	@ g_bVdpZmeMedEn.426, <variable>.bZmeMedHC
	str	r3, [r1, #40]	@ g_bVdpZmeMedEn.426, <variable>.bZmeMedVL
	ldr	r0, [r0, #0]	@ D.36887, <variable>.u32ZmeFrmWIn
	cmp	r0, #4096	@ D.36887,
	str	r0, [r1, #72]	@ D.36887, <variable>.u32ZmeWIn
	ldr	r1, [r5, #8]	@ D.36888, <variable>.u32ZmeFrmWOut
	str	r1, [r4, #80]	@ D.36888, <variable>.u32ZmeWOut
	ldr	r7, [r5, #4]	@ D.36889, <variable>.u32ZmeFrmHIn
	str	r7, [r4, #76]	@ D.36889, <variable>.u32ZmeHIn
	ldr	r6, [r5, #12]	@ D.36890, <variable>.u32ZmeFrmHOut
	str	r6, [r4, #84]	@ D.36890, <variable>.u32ZmeHOut
	bcc	.L30	@,
	mov	r8, r0, lsr r2	@ tmp166, D.36887,
	mov	r0, r8, asl #20	@, tmp166,
	bl	__aeabi_uidiv	@
	mov	r0, r0, asl #1	@ tmp172,,
	str	r0, [r4, #88]	@ tmp172, <variable>.u32ZmeRatioHL
.L31:
	mov	r1, r6	@, D.36890
	mov	r0, r7, asl #12	@, D.36889,
	bl	__aeabi_uidiv	@
	ldr	r1, [r4, #80]	@ u32ZmeCWOut, <variable>.u32ZmeWOut
	ldr	r7, [r4, #76]	@ <variable>.u32ZmeHIn, <variable>.u32ZmeHIn
	ldr	r6, [r4, #84]	@ <variable>.u32ZmeHOut, <variable>.u32ZmeHOut
	str	r0, [r4, #92]	@, <variable>.u32ZmeRatioVL
	ldr	r0, [r4, #72]	@ u32ZmeCWIn, <variable>.u32ZmeWIn
	ldrb	r2, [r5, #16]	@ zero_extendqisi2	@ D.36907, <variable>.u8ZmeYCFmtIn
	ldrb	ip, [r5, #17]	@ zero_extendqisi2	@ D.36912, <variable>.u8ZmeYCFmtOut
	cmp	r2, #2	@ D.36907,
	movne	r0, r0, lsr #1	@ u32ZmeCWIn, <variable>.u32ZmeWIn,
	cmp	ip, #2	@ D.36912,
	movne	r1, r1, lsr #1	@ u32ZmeCWOut, <variable>.u32ZmeWOut,
	cmp	r2, #1	@ D.36907,
	moveq	r7, r7, lsr #1	@ u32ZmeCHIn, <variable>.u32ZmeHIn,
	cmp	ip, #1	@ D.36912,
	moveq	r6, r6, lsr #1	@ u32ZmeCHOut, <variable>.u32ZmeHOut,
	cmp	r0, #4096	@ u32ZmeCWIn,
	bcc	.L40	@,
	mov	lr, r0, lsr #1	@ tmp186, u32ZmeCWIn,
	mov	r0, lr, asl #20	@, tmp186,
	bl	__aeabi_uidiv	@
	mov	r1, r0, asl #1	@ tmp192,,
	mov	r0, r7, asl #12	@, u32ZmeCHIn,
	str	r1, [r4, #96]	@ tmp192, <variable>.u32ZmeRatioHC
	mov	r1, r6	@, u32ZmeCHOut
	bl	__aeabi_uidiv	@
	str	r0, [r4, #100]	@ u32ZmeRatioVCReal, <variable>.u32ZmeRatioVC
	mov	r6, r0	@ u32ZmeRatioVCReal,
	ldr	r7, [r5, #20]	@ <variable>.bZmeFrmFmtIn, <variable>.bZmeFrmFmtIn
	cmp	r7, #1	@ <variable>.bZmeFrmFmtIn,
	beq	.L62	@,
.L42:
	ldr	r8, [r4, #92]	@ u32ZmeRatioVLReal, <variable>.u32ZmeRatioVL
.L43:
	mov	r7, #0	@ tmp204,
	mov	r0, r8	@, u32ZmeRatioVLReal
	str	r7, [r4, #48]	@ tmp204, <variable>.s32ZmeOffsetHL
	mov	r1, r5	@, pstZmeDrvPara
	str	r7, [r5, #32]	@ tmp204, <variable>.bZmeBFOut
	bl	GetVerticalScalerOffset	@
	str	r0, [r4, #56]	@, <variable>.s32ZmeOffsetVL
	ldrb	ip, [r5, #16]	@ zero_extendqisi2	@ <variable>.u8ZmeYCFmtIn, <variable>.u8ZmeYCFmtIn
	cmp	ip, #1	@ <variable>.u8ZmeYCFmtIn,
	beq	.L63	@,
.L45:
	mov	lr, #0	@ tmp209,
	mov	r1, r5	@, pstZmeDrvPara
	str	lr, [r4, #52]	@ tmp209, <variable>.s32ZmeOffsetHC
	mov	r0, r6	@, u32ZmeRatioVCReal
	bl	GetVerticalScalerOffset	@
	mov	r3, #1	@ tmp211,
	mov	r1, r5	@, pstZmeDrvPara
	add	r0, r0, r7	@ tmp210,, s32VOffset
	str	r0, [r4, #60]	@ tmp210, <variable>.s32ZmeOffsetVC
	str	r3, [r5, #32]	@ tmp211, <variable>.bZmeBFOut
	mov	r0, r8	@, u32ZmeRatioVLReal
	bl	GetVerticalScalerOffset	@
	mov	r1, r5	@, pstZmeDrvPara
	str	r0, [r4, #64]	@, <variable>.s32ZmeOffsetVLBtm
	mov	r0, r6	@, u32ZmeRatioVCReal
	bl	GetVerticalScalerOffset	@
	ldr	r2, [r4, #88]	@ <variable>.u32ZmeRatioHL, <variable>.u32ZmeRatioHL
	ldr	r1, [r4, #96]	@ D.36960, <variable>.u32ZmeRatioHC
	subs	r3, r2, #1048576	@ tmp214, <variable>.u32ZmeRatioHL,
	movne	r3, #1	@ tmp214
	str	r3, [r4, #16]	@ tmp214, <variable>.bZmeMdHL
	cmp	r3, #0	@ tmp214,
	add	r7, r0, r7	@ tmp212,, s32VOffset
	str	r7, [r4, #68]	@ tmp212, <variable>.s32ZmeOffsetVCBtm
	beq	.L48	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp215,
	movt	r3, #:upper16:.LANCHOR0	@ tmp215,
	ldr	ip, [r3, #0]	@ g_bVdpZmeFirEn, g_bVdpZmeFirEn
	subs	r3, ip, #0	@ prephitmp.711, g_bVdpZmeFirEn,
	movne	r3, #1	@ prephitmp.711
.L48:
	cmp	r1, #1048576	@ D.36960,
	str	r3, [r4, #16]	@ prephitmp.711, <variable>.bZmeMdHL
	moveq	r1, #0	@ prephitmp.694,
	beq	.L50	@,
	movw	r0, #:lower16:.LANCHOR0	@ tmp219,
	movt	r0, #:upper16:.LANCHOR0	@ tmp219,
	ldr	r1, [r0, #0]	@ g_bVdpZmeFirEn, g_bVdpZmeFirEn
	subs	r1, r1, #0	@ prephitmp.694, g_bVdpZmeFirEn,
	movne	r1, #1	@ prephitmp.694
.L50:
	ldr	lr, [r4, #92]	@ <variable>.u32ZmeRatioVL, <variable>.u32ZmeRatioVL
	str	r1, [r4, #20]	@ prephitmp.694, <variable>.bZmeMdHC
	cmp	lr, #4096	@ <variable>.u32ZmeRatioVL,
	beq	.L64	@,
.L51:
	movw	r3, #:lower16:.LANCHOR0	@ tmp226,
	movt	r3, #:upper16:.LANCHOR0	@ tmp226,
	ldr	ip, [r3, #0]	@ g_bVdpZmeFirEn, g_bVdpZmeFirEn
	subs	r3, ip, #0	@ tmp228, g_bVdpZmeFirEn,
	movne	r3, #1	@ tmp228
.L60:
	ldr	r1, [r4, #100]	@ <variable>.u32ZmeRatioVC, <variable>.u32ZmeRatioVC
	str	r3, [r4, #24]	@ tmp228, <variable>.bZmeMdVL
	cmp	r1, #4096	@ <variable>.u32ZmeRatioVC,
	beq	.L65	@,
.L53:
	movw	lr, #:lower16:.LANCHOR0	@ tmp232,
	movt	lr, #:upper16:.LANCHOR0	@ tmp232,
	ldr	r0, [lr, #0]	@ g_bVdpZmeFirEn, g_bVdpZmeFirEn
	subs	r3, r0, #0	@ tmp234, g_bVdpZmeFirEn,
	movne	r3, #1	@ tmp234
.L61:
	str	r3, [r4, #28]	@ tmp234, <variable>.bZmeMdVC
	ldr	ip, [r5, #60]	@ <variable>.bDispProgressive, <variable>.bDispProgressive
	cmp	ip, #0	@ <variable>.bDispProgressive,
	bne	.L55	@,
	ldr	r3, [r5, #64]	@ <variable>.u32Fidelity, <variable>.u32Fidelity
	cmp	r3, #0	@ <variable>.u32Fidelity,
	bne	.L55	@,
	ldr	r1, [r5, #44]	@ <variable>.stOriRect.s32Width, <variable>.stOriRect.s32Width
	ldr	r0, [r5, #8]	@ <variable>.u32ZmeFrmWOut, <variable>.u32ZmeFrmWOut
	cmp	r1, r0	@ <variable>.stOriRect.s32Width, <variable>.u32ZmeFrmWOut
	beq	.L66	@,
	ldr	r3, [r5, #48]	@ prephitmp.698, <variable>.stOriRect.s32Height
	ldr	r1, [r5, #12]	@ prephitmp.718, <variable>.u32ZmeFrmHOut
.L57:
	cmp	r1, r3	@ prephitmp.718, prephitmp.698
	bcs	.L55	@,
.L58:
	movw	r0, #:lower16:.LANCHOR0	@ tmp241,
	movt	r0, #:upper16:.LANCHOR0	@ tmp241,
	ldr	r1, [r0, #0]	@ g_bVdpZmeFirEn, g_bVdpZmeFirEn
	subs	r3, r1, #0	@ tmp243, g_bVdpZmeFirEn,
	movne	r3, #1	@ tmp243
	str	r3, [r4, #28]	@ tmp243, <variable>.bZmeMdVC
	str	r3, [r4, #16]	@ tmp243, <variable>.bZmeMdHL
	str	r3, [r4, #20]	@ tmp243, <variable>.bZmeMdHC
	str	r3, [r4, #24]	@ tmp243, <variable>.bZmeMdVL
.L55:
	cmp	r2, #1048576	@ <variable>.u32ZmeRatioHL,
	movcs	r3, #0	@, tmp247
	movcc	r3, #1	@, tmp247
	mov	ip, #0	@ tmp244,
	str	r3, [r4, #104]	@ tmp247, <variable>.bZmeOrder
	str	ip, [r4, #108]	@ tmp244, <variable>.bZmeTapVC
	ldrb	lr, [r5, #16]	@ zero_extendqisi2	@ <variable>.u8ZmeYCFmtIn, <variable>.u8ZmeYCFmtIn
	strb	lr, [r4, #112]	@ <variable>.u8ZmeYCFmtIn, <variable>.u8ZmeYCFmtIn
	ldrb	r2, [r5, #17]	@ zero_extendqisi2	@ <variable>.u8ZmeYCFmtOut, <variable>.u8ZmeYCFmtOut
	strb	r2, [r4, #113]	@ <variable>.u8ZmeYCFmtOut, <variable>.u8ZmeYCFmtOut
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L40:
	mov	r0, r0, asl #20	@, u32ZmeCWIn,
	bl	__aeabi_uidiv	@
	mov	r1, r6	@, u32ZmeCHOut
	str	r0, [r4, #96]	@, <variable>.u32ZmeRatioHC
	mov	r0, r7, asl #12	@, u32ZmeCHIn,
	bl	__aeabi_uidiv	@
	str	r0, [r4, #100]	@ u32ZmeRatioVCReal, <variable>.u32ZmeRatioVC
	mov	r6, r0	@ u32ZmeRatioVCReal,
	ldr	r7, [r5, #20]	@ <variable>.bZmeFrmFmtIn, <variable>.bZmeFrmFmtIn
	cmp	r7, #1	@ <variable>.bZmeFrmFmtIn,
	bne	.L42	@,
.L62:
	ldr	r3, [r5, #24]	@ <variable>.bZmeFrmFmtOut, <variable>.bZmeFrmFmtOut
	cmp	r3, #0	@ <variable>.bZmeFrmFmtOut,
	bne	.L42	@,
	ldr	r0, [r4, #92]	@ <variable>.u32ZmeRatioVL, <variable>.u32ZmeRatioVL
	mov	r6, r6, asl #1	@ u32ZmeRatioVCReal, u32ZmeRatioVCReal,
	mov	r8, r0, asl #1	@ u32ZmeRatioVLReal, <variable>.u32ZmeRatioVL,
	b	.L43	@
.L30:
	mov	r0, r0, asl #20	@, D.36887,
	bl	__aeabi_uidiv	@
	str	r0, [r4, #88]	@, <variable>.u32ZmeRatioHL
	b	.L31	@
.L63:
	ldr	r2, [r5, #20]	@ <variable>.bZmeFrmFmtIn, <variable>.bZmeFrmFmtIn
	cmp	r2, r7	@ <variable>.bZmeFrmFmtIn,
	beq	.L67	@,
.L46:
	movw	r7, #:lower16:-512	@ s32VOffset,
	movt	r7, #:upper16:-512	@ s32VOffset,
	b	.L45	@
.L65:
	ldr	r3, [r4, #60]	@ <variable>.s32ZmeOffsetVC, <variable>.s32ZmeOffsetVC
	cmp	r3, #0	@ <variable>.s32ZmeOffsetVC,
	bne	.L53	@,
	b	.L61	@
.L64:
	ldr	r3, [r4, #56]	@ <variable>.s32ZmeOffsetVL, <variable>.s32ZmeOffsetVL
	cmp	r3, #0	@ <variable>.s32ZmeOffsetVL,
	bne	.L51	@,
	b	.L60	@
.L67:
	ldr	r1, [r5, #28]	@ <variable>.bZmeBFIn, <variable>.bZmeBFIn
	cmp	r1, r7	@ <variable>.bZmeBFIn,
	movwne	r7, #:lower16:-1536	@ s32VOffset,
	movtne	r7, #:upper16:-1536	@ s32VOffset,
	bne	.L45	@,
	b	.L46	@
.L66:
	ldr	r3, [r5, #48]	@ prephitmp.698, <variable>.stOriRect.s32Height
	ldr	r1, [r5, #12]	@ prephitmp.718, <variable>.u32ZmeFrmHOut
	cmp	r3, r1	@ prephitmp.698, prephitmp.718
	bne	.L57	@,
	ldr	lr, [r5, #52]	@ <variable>.u32InRate, <variable>.u32InRate
	ldr	ip, [r5, #56]	@ <variable>.u32OutRate, <variable>.u32OutRate
	cmp	lr, ip	@ <variable>.u32InRate, <variable>.u32OutRate
	bne	.L58	@,
	b	.L55	@
	.fnend
	.size	PQ_MNG_VdpZmeComnSet, .-PQ_MNG_VdpZmeComnSet
	.align	2
	.global	PQ_MNG_VpssZmeComnSet
	.type	PQ_MNG_VpssZmeComnSet, %function
PQ_MNG_VpssZmeComnSet:
	.fnstart
.LFB1406:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r7, #:lower16:.LANCHOR1	@ tmp159,
	movt	r7, #:upper16:.LANCHOR1	@ tmp159,
	mov	r5, r0	@ pstZmeDrvPara, pstZmeDrvPara
	mov	r2, #1	@ tmp155,
	str	r2, [r1, #12]	@ tmp155, <variable>.bZmeEnVC
	str	r2, [r1, #0]	@ tmp155, <variable>.bZmeEnHL
	mov	r4, r1	@ pstZmeRtlPara, pstZmeRtlPara
	str	r2, [r1, #4]	@ tmp155, <variable>.bZmeEnHC
	str	r2, [r1, #8]	@ tmp155, <variable>.bZmeEnVL
	ldr	r0, [r7, #4]	@ g_bVpssZmeMedEn.436, g_bVpssZmeMedEn
	str	r0, [r1, #44]	@ g_bVpssZmeMedEn.436, <variable>.bZmeMedVC
	str	r0, [r1, #32]	@ g_bVpssZmeMedEn.436, <variable>.bZmeMedHL
	str	r0, [r1, #36]	@ g_bVpssZmeMedEn.436, <variable>.bZmeMedHC
	str	r0, [r1, #40]	@ g_bVpssZmeMedEn.436, <variable>.bZmeMedVL
	ldr	r0, [r5, #0]	@ D.37018, <variable>.u32ZmeFrmWIn
	str	r0, [r1, #72]	@ D.37018, <variable>.u32ZmeWIn
	ldr	r1, [r5, #8]	@ D.37019, <variable>.u32ZmeFrmWOut
	str	r1, [r4, #80]	@ D.37019, <variable>.u32ZmeWOut
	ldr	r6, [r5, #20]	@ <variable>.bZmeFrmFmtIn, <variable>.bZmeFrmFmtIn
	ldr	r7, [r5, #4]	@ iftmp.437, <variable>.u32ZmeFrmHIn
	cmp	r6, r2	@ <variable>.bZmeFrmFmtIn,
	movne	r7, r7, lsr #1	@ iftmp.437, <variable>.u32ZmeFrmHIn,
	str	r7, [r4, #76]	@ iftmp.437, <variable>.u32ZmeHIn
	ldr	r3, [r5, #24]	@ <variable>.bZmeFrmFmtOut, <variable>.bZmeFrmFmtOut
	ldr	r6, [r5, #12]	@ iftmp.438, <variable>.u32ZmeFrmHOut
	cmp	r3, #1	@ <variable>.bZmeFrmFmtOut,
	movne	r6, r6, lsr #1	@ iftmp.438, <variable>.u32ZmeFrmHOut,
	cmp	r0, #4096	@ D.37018,
	str	r6, [r4, #84]	@ iftmp.438, <variable>.u32ZmeHOut
	bcc	.L73	@,
	mov	r8, r0, lsr #1	@ tmp165, D.37018,
	mov	r0, r8, asl #20	@, tmp165,
	bl	__aeabi_uidiv	@
	mov	r1, r0, asl #1	@ tmp171,,
	str	r1, [r4, #88]	@ tmp171, <variable>.u32ZmeRatioHL
.L74:
	mov	r1, r6	@, iftmp.438
	mov	r0, r7, asl #12	@, iftmp.437,
	bl	__aeabi_uidiv	@
	ldr	r1, [r4, #80]	@ u32ZmeCWOut, <variable>.u32ZmeWOut
	ldr	r6, [r4, #76]	@ <variable>.u32ZmeHIn, <variable>.u32ZmeHIn
	ldr	r7, [r4, #84]	@ <variable>.u32ZmeHOut, <variable>.u32ZmeHOut
	str	r0, [r4, #92]	@, <variable>.u32ZmeRatioVL
	ldrb	r3, [r5, #16]	@ zero_extendqisi2	@ D.37048, <variable>.u8ZmeYCFmtIn
	ldrb	sl, [r5, #17]	@ zero_extendqisi2	@ D.37053, <variable>.u8ZmeYCFmtOut
	cmp	r3, #2	@ D.37048,
	ldrne	ip, [r4, #72]	@ u32ZmeCWIn.750, <variable>.u32ZmeWIn
	ldreq	r0, [r4, #72]	@ u32ZmeCWIn, <variable>.u32ZmeWIn
	movne	r0, ip, lsr #1	@ u32ZmeCWIn, u32ZmeCWIn.750,
	moveq	ip, r0	@ u32ZmeCWIn.750, u32ZmeCWIn
	cmp	sl, #2	@ D.37053,
	movne	r1, r1, lsr #1	@ u32ZmeCWOut, <variable>.u32ZmeWOut,
	cmp	r3, #1	@ D.37048,
	moveq	r6, r6, lsr #1	@ u32ZmeCHIn, <variable>.u32ZmeHIn,
	cmp	sl, #1	@ D.37053,
	moveq	r7, r7, lsr #1	@ u32ZmeCHOut, <variable>.u32ZmeHOut,
	cmp	ip, #4096	@ u32ZmeCWIn.750,
	bcc	.L83	@,
	mov	lr, r0, lsr #1	@ tmp184, u32ZmeCWIn,
	mov	r0, lr, asl #20	@, tmp184,
	bl	__aeabi_uidiv	@
	mov	ip, r0, asl #1	@ tmp190,,
	str	ip, [r4, #96]	@ tmp190, <variable>.u32ZmeRatioHC
.L84:
	mov	r1, r7	@, u32ZmeCHOut
	mov	r0, r6, asl #12	@, u32ZmeCHIn,
	bl	__aeabi_uidiv	@
	ldr	r7, [r4, #92]	@ <variable>.u32ZmeRatioVL, <variable>.u32ZmeRatioVL
	mov	r8, #0	@ tmp199,
	mov	r1, r5	@, pstZmeDrvPara
	str	r8, [r4, #48]	@ tmp199, <variable>.s32ZmeOffsetHL
	mov	r6, r0	@ D.37075,
	str	r0, [r4, #100]	@ D.37075, <variable>.u32ZmeRatioVC
	mov	r0, r7	@, <variable>.u32ZmeRatioVL
	bl	GetVerticalScalerOffset	@
	mov	r1, r5	@, pstZmeDrvPara
	str	r8, [r4, #52]	@ tmp199, <variable>.s32ZmeOffsetHC
	mov	sl, r0	@ D.37077,
	mov	r0, r6	@, D.37075
	str	sl, [r4, #56]	@ D.37077, <variable>.s32ZmeOffsetVL
	bl	GetVerticalScalerOffset	@
	ldr	r2, [r4, #88]	@ <variable>.u32ZmeRatioHL, <variable>.u32ZmeRatioHL
	ldr	r1, [r4, #96]	@ D.37083, <variable>.u32ZmeRatioHC
	subs	r3, r2, #1048576	@ tmp203, <variable>.u32ZmeRatioHL,
	movne	r3, #1	@ tmp203
	str	r3, [r4, #16]	@ tmp203, <variable>.bZmeMdHL
	cmp	r3, r8	@ tmp203,
	str	r0, [r4, #60]	@, <variable>.s32ZmeOffsetVC
	beq	.L86	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp204,
	movt	r3, #:upper16:.LANCHOR0	@ tmp204,
	ldr	r0, [r3, #4]	@ g_bVpssZmeFirEn, g_bVpssZmeFirEn
	subs	r3, r0, r8	@ prephitmp.739, g_bVpssZmeFirEn,
	movne	r3, #1	@ prephitmp.739
.L86:
	cmp	r1, #1048576	@ D.37083,
	str	r3, [r4, #16]	@ prephitmp.739, <variable>.bZmeMdHL
	moveq	r3, #0	@ prephitmp.751,
	beq	.L88	@,
	movw	ip, #:lower16:.LANCHOR0	@ tmp208,
	movt	ip, #:upper16:.LANCHOR0	@ tmp208,
	ldr	r1, [ip, #4]	@ g_bVpssZmeFirEn, g_bVpssZmeFirEn
	subs	r3, r1, #0	@ prephitmp.751, g_bVpssZmeFirEn,
	movne	r3, #1	@ prephitmp.751
.L88:
	cmp	r7, #4096	@ <variable>.u32ZmeRatioVL,
	str	r3, [r4, #20]	@ prephitmp.751, <variable>.bZmeMdHC
	beq	.L96	@,
.L89:
	movw	r3, #:lower16:.LANCHOR0	@ tmp214,
	movt	r3, #:upper16:.LANCHOR0	@ tmp214,
	ldr	r0, [r3, #4]	@ g_bVpssZmeFirEn, g_bVpssZmeFirEn
	subs	lr, r0, #0	@ tmp216, g_bVpssZmeFirEn,
	movne	lr, #1	@ tmp216
	cmp	r6, #4096	@ D.37075,
	str	lr, [r4, #24]	@ tmp216, <variable>.bZmeMdVL
	beq	.L97	@,
.L91:
	movw	ip, #:lower16:.LANCHOR0	@ tmp219,
	movt	ip, #:upper16:.LANCHOR0	@ tmp219,
	ldr	r1, [ip, #4]	@ g_bVpssZmeFirEn, g_bVpssZmeFirEn
	subs	r3, r1, #0	@ tmp221, g_bVpssZmeFirEn,
	movne	r3, #1	@ tmp221
.L94:
	cmp	r2, #1048576	@ <variable>.u32ZmeRatioHL,
	movcs	r0, #0	@, tmp225
	movcc	r0, #1	@, tmp225
	str	r3, [r4, #28]	@ tmp221, <variable>.bZmeMdVC
	str	r0, [r4, #104]	@ tmp225, <variable>.bZmeOrder
	mov	r0, #0	@ tmp222,
	str	r0, [r4, #108]	@ tmp222, <variable>.bZmeTapVC
	ldrb	lr, [r5, #16]	@ zero_extendqisi2	@ <variable>.u8ZmeYCFmtIn, <variable>.u8ZmeYCFmtIn
	strb	lr, [r4, #112]	@ <variable>.u8ZmeYCFmtIn, <variable>.u8ZmeYCFmtIn
	ldrb	r2, [r5, #17]	@ zero_extendqisi2	@ <variable>.u8ZmeYCFmtOut, <variable>.u8ZmeYCFmtOut
	strb	r2, [r4, #113]	@ <variable>.u8ZmeYCFmtOut, <variable>.u8ZmeYCFmtOut
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L83:
	mov	r0, r0, asl #20	@, u32ZmeCWIn,
	bl	__aeabi_uidiv	@
	str	r0, [r4, #96]	@, <variable>.u32ZmeRatioHC
	b	.L84	@
.L73:
	mov	r0, r0, asl #20	@, D.37018,
	bl	__aeabi_uidiv	@
	str	r0, [r4, #88]	@, <variable>.u32ZmeRatioHL
	b	.L74	@
.L96:
	cmp	sl, #0	@ D.37077,
	streq	sl, [r4, #24]	@ D.37077, <variable>.bZmeMdVL
	bne	.L89	@,
	cmp	r6, #4096	@ D.37075,
	bne	.L91	@,
.L97:
	ldr	r3, [r4, #60]	@ <variable>.s32ZmeOffsetVC, <variable>.s32ZmeOffsetVC
	cmp	r3, #0	@ <variable>.s32ZmeOffsetVC,
	bne	.L91	@,
	b	.L94	@
	.fnend
	.size	PQ_MNG_VpssZmeComnSet, .-PQ_MNG_VpssZmeComnSet
	.align	2
	.type	GetHLfirCoef, %function
GetHLfirCoef:
	.fnstart
.LFB1409:
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
	mov	r4, r0	@ pstCoefAddr, pstCoefAddr
	mov	r0, #16777216	@,
	bl	__aeabi_uidiv	@
	cmp	r0, #4096	@ tmp140,
	ldrhi	r0, [r4, #0]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrHL8_1
	ldmhifd	sp, {r3, r4, fp, sp, pc}	@
	ldreq	r0, [r4, #4]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrHL8_E1
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	cmp	r0, #3072	@ tmp140,
	ldrcs	r0, [r4, #8]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrHL8_075
	ldmcsfd	sp, {r3, r4, fp, sp, pc}	@
	cmp	r0, #2048	@ tmp140,
	ldrcs	r0, [r4, #12]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrHL8_05
	ldmcsfd	sp, {r3, r4, fp, sp, pc}	@
	movw	r3, #1364	@ tmp143,
	cmp	r0, r3	@ tmp140, tmp143
	ldrhi	r0, [r4, #16]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrHL8_033
	ldmhifd	sp, {r3, r4, fp, sp, pc}	@
	cmp	r0, #1024	@ tmp140,
	ldrcs	r0, [r4, #20]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrHL8_025
	ldrcc	r0, [r4, #24]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrHL8_0
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	GetHLfirCoef, .-GetHLfirCoef
	.align	2
	.type	GetHCfirCoef, %function
GetHCfirCoef:
	.fnstart
.LFB1410:
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
	mov	r4, r0	@ pstCoefAddr, pstCoefAddr
	mov	r0, #16777216	@,
	bl	__aeabi_uidiv	@
	cmp	r0, #4096	@ tmp140,
	ldrhi	r0, [r4, #28]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrHC4_1
	ldmhifd	sp, {r3, r4, fp, sp, pc}	@
	ldreq	r0, [r4, #32]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrHC4_E1
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	cmp	r0, #3072	@ tmp140,
	ldrcs	r0, [r4, #36]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrHC4_075
	ldmcsfd	sp, {r3, r4, fp, sp, pc}	@
	cmp	r0, #2048	@ tmp140,
	ldrcs	r0, [r4, #40]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrHC4_05
	ldmcsfd	sp, {r3, r4, fp, sp, pc}	@
	movw	r3, #1364	@ tmp143,
	cmp	r0, r3	@ tmp140, tmp143
	ldrhi	r0, [r4, #44]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrHC4_033
	ldmhifd	sp, {r3, r4, fp, sp, pc}	@
	cmp	r0, #1024	@ tmp140,
	ldrcs	r0, [r4, #48]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrHC4_025
	ldrcc	r0, [r4, #52]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrHC4_0
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	GetHCfirCoef, .-GetHCfirCoef
	.align	2
	.type	GetVCfirCoef, %function
GetVCfirCoef:
	.fnstart
.LFB1411:
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
	mov	r4, r0	@ pstCoefAddr, pstCoefAddr
	mov	r0, #16777216	@,
	bl	__aeabi_uidiv	@
	cmp	r0, #4096	@ tmp140,
	ldrhi	r0, [r4, #84]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrVC4_1
	ldmhifd	sp, {r3, r4, fp, sp, pc}	@
	ldreq	r0, [r4, #88]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrVC4_E1
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	cmp	r0, #3072	@ tmp140,
	ldrcs	r0, [r4, #92]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrVC4_075
	ldmcsfd	sp, {r3, r4, fp, sp, pc}	@
	cmp	r0, #2048	@ tmp140,
	ldrcs	r0, [r4, #96]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrVC4_05
	ldmcsfd	sp, {r3, r4, fp, sp, pc}	@
	movw	r3, #1364	@ tmp143,
	cmp	r0, r3	@ tmp140, tmp143
	ldrhi	r0, [r4, #100]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrVC4_033
	ldmhifd	sp, {r3, r4, fp, sp, pc}	@
	cmp	r0, #1024	@ tmp140,
	ldrcs	r0, [r4, #104]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrVC4_025
	ldrcc	r0, [r4, #108]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrVC4_0
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	GetVCfirCoef, .-GetVCfirCoef
	.align	2
	.type	GetVLFilterCoef, %function
GetVLFilterCoef:
	.fnstart
.LFB1413:
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
	mov	r4, r0	@ pstCoefAddr, pstCoefAddr
	mov	r0, #16777216	@,
	bl	__aeabi_uidiv	@
	cmp	r0, #4096	@ tmp140,
	ldrhi	r0, [r4, #56]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrVL6_1
	ldmhifd	sp, {r3, r4, fp, sp, pc}	@
	ldreq	r0, [r4, #60]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrVL6_E1
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	cmp	r0, #3072	@ tmp140,
	ldrcs	r0, [r4, #64]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrVL6_075
	ldmcsfd	sp, {r3, r4, fp, sp, pc}	@
	cmp	r0, #2048	@ tmp140,
	ldrcs	r0, [r4, #68]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrVL6_05
	ldmcsfd	sp, {r3, r4, fp, sp, pc}	@
	movw	r3, #1364	@ tmp143,
	cmp	r0, r3	@ tmp140, tmp143
	ldrhi	r0, [r4, #72]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrVL6_033
	ldmhifd	sp, {r3, r4, fp, sp, pc}	@
	cmp	r0, #1024	@ tmp140,
	ldrcs	r0, [r4, #76]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrVL6_025
	ldrcc	r0, [r4, #80]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrVL6_0
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	GetVLFilterCoef, .-GetVLFilterCoef
	.align	2
	.global	PQ_MNG_VdpZmeSQSetSptAddr
	.type	PQ_MNG_VdpZmeSQSetSptAddr, %function
PQ_MNG_VdpZmeSQSetSptAddr:
	.fnstart
.LFB1417:
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
	mov	r4, r2	@ pstZmeRtlPara, pstZmeRtlPara
	mov	r6, r0	@ pstMem, pstMem
	mov	r0, r1	@, pstZmeDrvPara
	mov	r1, r2	@, pstZmeRtlPara
	add	r5, r6, #12	@ D.37386, pstMem,
	bl	PQ_MNG_VdpZmeComnSet	@
	ldr	r0, [r4, #88]	@ <variable>.u32ZmeRatioHL, <variable>.u32ZmeRatioHL
	mov	r1, r0, lsr #8	@, <variable>.u32ZmeRatioHL,
	mov	r0, r5	@, D.37386
	bl	GetHLfirCoef	@
	ldr	r1, [r4, #96]	@ <variable>.u32ZmeRatioHC, <variable>.u32ZmeRatioHC
	mov	r1, r1, lsr #8	@, <variable>.u32ZmeRatioHC,
	str	r0, [r4, #116]	@, <variable>.u32ZmeCoefAddrHL
	mov	r0, r5	@, D.37386
	bl	GetHCfirCoef	@
	ldr	r1, [r4, #92]	@, <variable>.u32ZmeRatioVL
	str	r0, [r4, #120]	@, <variable>.u32ZmeCoefAddrHC
	mov	r0, #16777216	@,
	bl	__aeabi_uidiv	@
	cmp	r0, #4096	@ tmp148,
	ldrhi	r3, [r6, #208]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrVL4_1
	bhi	.L136	@,
	ldreq	r3, [r6, #212]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrVL4_E1
	beq	.L136	@,
	cmp	r0, #3072	@ tmp148,
	ldrcs	r3, [r6, #216]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrVL4_075
	bcs	.L136	@,
	cmp	r0, #2048	@ tmp148,
	ldrcs	r3, [r6, #220]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrVL4_05
	bcs	.L136	@,
	movw	r3, #1364	@ tmp151,
	cmp	r0, r3	@ tmp148, tmp151
	ldrhi	r3, [r6, #224]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrVL4_033
	bhi	.L136	@,
	cmp	r0, #1024	@ tmp148,
	ldrcs	r3, [r6, #228]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrVL4_025
	ldrcc	r3, [r6, #232]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrVL4_0
.L136:
	str	r3, [r4, #124]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrVL
	mov	r0, r5	@, D.37386
	ldr	r1, [r4, #100]	@, <variable>.u32ZmeRatioVC
	bl	GetVCfirCoef	@
	str	r0, [r4, #128]	@, <variable>.u32ZmeCoefAddrVC
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	PQ_MNG_VdpZmeSQSetSptAddr, .-PQ_MNG_VdpZmeSQSetSptAddr
	.align	2
	.global	PQ_MNG_VpssZmeHQSetSptAddr
	.type	PQ_MNG_VpssZmeHQSetSptAddr, %function
PQ_MNG_VpssZmeHQSetSptAddr:
	.fnstart
.LFB1418:
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
	mov	r4, r2	@ pstZmeRtlPara, pstZmeRtlPara
	mov	r5, r0	@ pstMem, pstMem
	mov	r0, r1	@, pstZmeDrvPara
	mov	r1, r2	@, pstZmeRtlPara
	add	r5, r5, #12	@ D.37402, pstMem,
	bl	PQ_MNG_VpssZmeComnSet	@
	ldr	r0, [r4, #88]	@ <variable>.u32ZmeRatioHL, <variable>.u32ZmeRatioHL
	mov	r1, r0, lsr #8	@, <variable>.u32ZmeRatioHL,
	mov	r0, r5	@, D.37402
	bl	GetHLfirCoef	@
	ldr	r1, [r4, #96]	@ <variable>.u32ZmeRatioHC, <variable>.u32ZmeRatioHC
	mov	r1, r1, lsr #8	@, <variable>.u32ZmeRatioHC,
	str	r0, [r4, #116]	@, <variable>.u32ZmeCoefAddrHL
	mov	r0, r5	@, D.37402
	bl	GetHCfirCoef	@
	ldr	r1, [r4, #92]	@, <variable>.u32ZmeRatioVL
	str	r0, [r4, #120]	@, <variable>.u32ZmeCoefAddrHC
	mov	r0, r5	@, D.37402
	bl	GetVLFilterCoef	@
	ldr	r1, [r4, #100]	@, <variable>.u32ZmeRatioVC
	str	r0, [r4, #124]	@, <variable>.u32ZmeCoefAddrVL
	mov	r0, r5	@, D.37402
	bl	GetVCfirCoef	@
	str	r0, [r4, #128]	@, <variable>.u32ZmeCoefAddrVC
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	PQ_MNG_VpssZmeHQSetSptAddr, .-PQ_MNG_VpssZmeHQSetSptAddr
	.align	2
	.global	PQ_MNG_VdpZmeHQSetSptAddr
	.type	PQ_MNG_VdpZmeHQSetSptAddr, %function
PQ_MNG_VdpZmeHQSetSptAddr:
	.fnstart
.LFB1419:
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
	mov	r4, r2	@ pstZmeRtlPara, pstZmeRtlPara
	mov	r5, r0	@ pstMem, pstMem
	mov	r0, r1	@, pstZmeDrvPara
	mov	r1, r2	@, pstZmeRtlPara
	add	r6, r5, #12	@ D.37418, pstMem,
	bl	PQ_MNG_VdpZmeComnSet	@
	ldr	r0, [r4, #88]	@ <variable>.u32ZmeRatioHL, <variable>.u32ZmeRatioHL
	mov	r1, r0, lsr #8	@, <variable>.u32ZmeRatioHL,
	mov	r0, r6	@, D.37418
	bl	GetHLfirCoef	@
	ldr	r1, [r4, #96]	@ <variable>.u32ZmeRatioHC, <variable>.u32ZmeRatioHC
	mov	r1, r1, lsr #8	@, <variable>.u32ZmeRatioHC,
	str	r0, [r4, #116]	@, <variable>.u32ZmeCoefAddrHL
	mov	r0, #16777216	@,
	bl	__aeabi_uidiv	@
	cmp	r0, #4096	@ tmp149,
	ldrhi	r3, [r5, #236]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrHC8_1
	bhi	.L147	@,
	ldreq	r3, [r5, #240]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrHC8_E1
	beq	.L147	@,
	cmp	r0, #3072	@ tmp149,
	ldrcs	r3, [r5, #244]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrHC8_075
	bcs	.L147	@,
	cmp	r0, #2048	@ tmp149,
	ldrcs	r3, [r5, #248]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrHC8_05
	bcs	.L147	@,
	movw	r3, #1364	@ tmp152,
	cmp	r0, r3	@ tmp149, tmp152
	ldrhi	r3, [r5, #252]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrHC8_033
	bls	.L161	@,
.L147:
	str	r3, [r4, #120]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrHC
	mov	r0, r6	@, D.37418
	ldr	r1, [r4, #92]	@, <variable>.u32ZmeRatioVL
	bl	GetVLFilterCoef	@
	ldr	r1, [r4, #100]	@, <variable>.u32ZmeRatioVC
	str	r0, [r4, #124]	@, <variable>.u32ZmeCoefAddrVL
	mov	r0, #16777216	@,
	bl	__aeabi_uidiv	@
	cmp	r0, #4096	@ tmp157,
	ldrhi	r3, [r5, #264]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrVC6_1
	bhi	.L154	@,
	ldreq	r3, [r5, #268]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrVC6_E1
	beq	.L154	@,
	cmp	r0, #3072	@ tmp157,
	ldrcs	r3, [r5, #272]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrVC6_075
	bcs	.L154	@,
	cmp	r0, #2048	@ tmp157,
	ldrcs	r3, [r5, #276]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrVC6_05
	bcs	.L154	@,
	movw	r3, #1364	@ tmp160,
	cmp	r0, r3	@ tmp157, tmp160
	ldrhi	r3, [r5, #280]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrVC6_033
	bhi	.L154	@,
	cmp	r0, #1024	@ tmp157,
	ldrcs	r3, [r5, #284]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrVC6_025
	ldrcc	r3, [r5, #288]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrVC6_0
.L154:
	str	r3, [r4, #128]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrVC
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L161:
	cmp	r0, #1024	@ tmp149,
	ldrcs	r3, [r5, #256]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrHC8_025
	ldrcc	r3, [r5, #260]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrHC8_0
	b	.L147	@
	.fnend
	.size	PQ_MNG_VdpZmeHQSetSptAddr, .-PQ_MNG_VdpZmeHQSetSptAddr
	.align	2
	.global	PQ_MNG_VpssZmeSetSptAddr
	.type	PQ_MNG_VpssZmeSetSptAddr, %function
PQ_MNG_VpssZmeSetSptAddr:
	.fnstart
.LFB1420:
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
	mov	r4, r2	@ pstZmeRtlPara, pstZmeRtlPara
	mov	r5, r0	@ pstMem, pstMem
	mov	r0, r1	@, pstZmeDrvPara
	mov	r1, r2	@, pstZmeRtlPara
	add	r6, r5, #12	@ D.37434, pstMem,
	bl	PQ_MNG_VpssZmeComnSet	@
	ldr	r0, [r4, #88]	@ <variable>.u32ZmeRatioHL, <variable>.u32ZmeRatioHL
	mov	r1, r0, lsr #8	@, <variable>.u32ZmeRatioHL,
	mov	r0, r6	@, D.37434
	bl	GetHLfirCoef	@
	ldr	r1, [r4, #96]	@ <variable>.u32ZmeRatioHC, <variable>.u32ZmeRatioHC
	mov	r1, r1, lsr #8	@, <variable>.u32ZmeRatioHC,
	str	r0, [r4, #116]	@, <variable>.u32ZmeCoefAddrHL
	mov	r0, #16777216	@,
	bl	__aeabi_uidiv	@
	cmp	r0, #4096	@ tmp149,
	ldrhi	r3, [r5, #236]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrHC8_1
	bhi	.L164	@,
	ldreq	r3, [r5, #240]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrHC8_E1
	beq	.L164	@,
	cmp	r0, #3072	@ tmp149,
	ldrcs	r3, [r5, #244]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrHC8_075
	bcs	.L164	@,
	cmp	r0, #2048	@ tmp149,
	ldrcs	r3, [r5, #248]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrHC8_05
	bcs	.L164	@,
	movw	r3, #1364	@ tmp152,
	cmp	r0, r3	@ tmp149, tmp152
	ldrhi	r3, [r5, #252]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrHC8_033
	bls	.L178	@,
.L164:
	str	r3, [r4, #120]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrHC
	mov	r0, r6	@, D.37434
	ldr	r1, [r4, #92]	@, <variable>.u32ZmeRatioVL
	bl	GetVLFilterCoef	@
	ldr	r1, [r4, #100]	@, <variable>.u32ZmeRatioVC
	str	r0, [r4, #124]	@, <variable>.u32ZmeCoefAddrVL
	mov	r0, #16777216	@,
	bl	__aeabi_uidiv	@
	cmp	r0, #4096	@ tmp157,
	ldrhi	r3, [r5, #264]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrVC6_1
	bhi	.L171	@,
	ldreq	r3, [r5, #268]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrVC6_E1
	beq	.L171	@,
	cmp	r0, #3072	@ tmp157,
	ldrcs	r3, [r5, #272]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrVC6_075
	bcs	.L171	@,
	cmp	r0, #2048	@ tmp157,
	ldrcs	r3, [r5, #276]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrVC6_05
	bcs	.L171	@,
	movw	r3, #1364	@ tmp160,
	cmp	r0, r3	@ tmp157, tmp160
	ldrhi	r3, [r5, #280]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrVC6_033
	bhi	.L171	@,
	cmp	r0, #1024	@ tmp157,
	ldrcs	r3, [r5, #284]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrVC6_025
	ldrcc	r3, [r5, #288]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrVC6_0
.L171:
	str	r3, [r4, #128]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrVC
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L178:
	cmp	r0, #1024	@ tmp149,
	ldrcs	r3, [r5, #256]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrHC8_025
	ldrcc	r3, [r5, #260]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrHC8_0
	b	.L164	@
	.fnend
	.size	PQ_MNG_VpssZmeSetSptAddr, .-PQ_MNG_VpssZmeSetSptAddr
	.align	2
	.global	PQ_MNG_VdpZmeHQSetAddr
	.type	PQ_MNG_VdpZmeHQSetAddr, %function
PQ_MNG_VdpZmeHQSetAddr:
	.fnstart
.LFB1421:
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
	mov	r4, r2	@ pstZmeRtlPara, pstZmeRtlPara
	mov	r5, r0	@ pstMem, pstMem
	mov	r0, r1	@, pstZmeDrvPara
	mov	r1, r2	@, pstZmeRtlPara
	add	r5, r5, #12	@ D.37450, pstMem,
	bl	PQ_MNG_VdpZmeComnSet	@
	ldr	r0, [r4, #88]	@ <variable>.u32ZmeRatioHL, <variable>.u32ZmeRatioHL
	mov	r1, r0, lsr #8	@, <variable>.u32ZmeRatioHL,
	mov	r0, r5	@, D.37450
	bl	GetHLfirCoef	@
	ldr	r1, [r4, #96]	@ <variable>.u32ZmeRatioHC, <variable>.u32ZmeRatioHC
	mov	r1, r1, lsr #8	@, <variable>.u32ZmeRatioHC,
	str	r0, [r4, #116]	@, <variable>.u32ZmeCoefAddrHL
	mov	r0, r5	@, D.37450
	bl	GetHCfirCoef	@
	ldr	r1, [r4, #92]	@, <variable>.u32ZmeRatioVL
	str	r0, [r4, #120]	@, <variable>.u32ZmeCoefAddrHC
	mov	r0, r5	@, D.37450
	bl	GetVLFilterCoef	@
	ldr	r1, [r4, #100]	@, <variable>.u32ZmeRatioVC
	str	r0, [r4, #124]	@, <variable>.u32ZmeCoefAddrVL
	mov	r0, r5	@, D.37450
	bl	GetVCfirCoef	@
	str	r0, [r4, #128]	@, <variable>.u32ZmeCoefAddrVC
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	PQ_MNG_VdpZmeHQSetAddr, .-PQ_MNG_VdpZmeHQSetAddr
	.align	2
	.global	PQ_MNG_VpssZmeSQSetSptAddr
	.type	PQ_MNG_VpssZmeSQSetSptAddr, %function
PQ_MNG_VpssZmeSQSetSptAddr:
	.fnstart
.LFB1422:
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
	mov	r4, r2	@ pstZmeRtlPara, pstZmeRtlPara
	mov	r6, r0	@ pstMem, pstMem
	mov	r0, r1	@, pstZmeDrvPara
	mov	r1, r2	@, pstZmeRtlPara
	add	r5, r6, #12	@ D.37466, pstMem,
	bl	PQ_MNG_VpssZmeComnSet	@
	ldr	r0, [r4, #88]	@ <variable>.u32ZmeRatioHL, <variable>.u32ZmeRatioHL
	mov	r1, r0, lsr #8	@, <variable>.u32ZmeRatioHL,
	mov	r0, r5	@, D.37466
	bl	GetHLfirCoef	@
	ldr	r1, [r4, #96]	@ <variable>.u32ZmeRatioHC, <variable>.u32ZmeRatioHC
	mov	r1, r1, lsr #8	@, <variable>.u32ZmeRatioHC,
	str	r0, [r4, #116]	@, <variable>.u32ZmeCoefAddrHL
	mov	r0, r5	@, D.37466
	bl	GetHCfirCoef	@
	ldr	r1, [r4, #92]	@, <variable>.u32ZmeRatioVL
	str	r0, [r4, #120]	@, <variable>.u32ZmeCoefAddrHC
	mov	r0, #16777216	@,
	bl	__aeabi_uidiv	@
	cmp	r0, #4096	@ tmp148,
	ldrhi	r3, [r6, #208]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrVL4_1
	bhi	.L183	@,
	ldreq	r3, [r6, #212]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrVL4_E1
	beq	.L183	@,
	cmp	r0, #3072	@ tmp148,
	ldrcs	r3, [r6, #216]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrVL4_075
	bcs	.L183	@,
	cmp	r0, #2048	@ tmp148,
	ldrcs	r3, [r6, #220]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrVL4_05
	bcs	.L183	@,
	movw	r3, #1364	@ tmp151,
	cmp	r0, r3	@ tmp148, tmp151
	ldrhi	r3, [r6, #224]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrVL4_033
	bhi	.L183	@,
	cmp	r0, #1024	@ tmp148,
	ldrcs	r3, [r6, #228]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrVL4_025
	ldrcc	r3, [r6, #232]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrVL4_0
.L183:
	str	r3, [r4, #124]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrVL
	mov	r0, r5	@, D.37466
	ldr	r1, [r4, #100]	@, <variable>.u32ZmeRatioVC
	bl	GetVCfirCoef	@
	str	r0, [r4, #128]	@, <variable>.u32ZmeCoefAddrVC
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	PQ_MNG_VpssZmeSQSetSptAddr, .-PQ_MNG_VpssZmeSQSetSptAddr
	.align	2
	.global	PQ_MNG_VdpSRZmeSetAddr
	.type	PQ_MNG_VdpSRZmeSetAddr, %function
PQ_MNG_VdpSRZmeSetAddr:
	.fnstart
.LFB1423:
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
	mov	r0, r1	@, pstZmeDrvPara
	mov	r1, r2	@, pstZmeRtlPara
	bl	PQ_MNG_VdpZmeComnSet	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	PQ_MNG_VdpSRZmeSetAddr, .-PQ_MNG_VdpSRZmeSetAddr
	.align	2
	.global	PQ_MNG_ZME_2L_Check
	.type	PQ_MNG_ZME_2L_Check, %function
PQ_MNG_ZME_2L_Check:
	.fnstart
.LFB1434:
	@ args = 40, pretend = 8, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	.pad #8
	sub	sp, sp, #8	@,,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-12
	sub	fp, ip, #12	@,,
	.pad #20
	sub	sp, sp, #20	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	add	ip, fp, #4	@ tmp172,,
	mov	r4, r1	@ u32InHeigh, u32InHeigh
	mov	r5, r0	@ u32InWitdh, u32InWitdh
	stmia	ip, {r2, r3}	@ tmp172,,
	mov	r7, r2	@ stZmeLayerWin$stPort0Win$u32Height,
	ldr	r8, [fp, #8]	@ stZmeLayerWin$stPort0Win$u32Width, stZmeLayerWin.stPort0Win.u32Width
	ldr	r6, [fp, #16]	@ stZmeLayerWin$stPort1Win$u32Width, stZmeLayerWin.stPort1Win.u32Width
	ldr	r9, [fp, #12]	@ stZmeLayerWin$stPort1Win$u32Height, stZmeLayerWin.stPort1Win.u32Height
	mul	r3, r8, r2	@ tmp147, stZmeLayerWin$stPort0Win$u32Width, stZmeLayerWin$stPort0Win$u32Height
	cmp	r3, #0	@ tmp147,
	bne	.L203	@,
.L193:
	mvn	r0, #0	@ D.37631,
.L198:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L203:
	mul	r1, r9, r6	@ tmp148, stZmeLayerWin$stPort1Win$u32Height, stZmeLayerWin$stPort1Win$u32Width
	cmp	r1, #0	@ tmp148,
	beq	.L193	@,
	mov	r1, r8	@, stZmeLayerWin$stPort0Win$u32Width
	bl	__aeabi_uidiv	@
	mov	r1, r7	@, stZmeLayerWin$stPort0Win$u32Height
	mov	sl, r0	@ u32Port0WitdhNum,
	mov	r0, r4	@, u32InHeigh
	bl	__aeabi_uidiv	@
	mov	r1, r6	@, stZmeLayerWin$stPort1Win$u32Width
	mov	r2, r0	@ u32Port0HeighNum,
	mov	r0, r5	@, u32InWitdh
	str	r2, [fp, #-48]	@,
	bl	__aeabi_uidiv	@
	mov	r1, r9	@, stZmeLayerWin$stPort1Win$u32Height
	mov	r6, r0	@ u32Port1WitdhNum,
	mov	r0, r4	@, u32InHeigh
	bl	__aeabi_uidiv	@
	cmp	sl, #3	@ u32Port0WitdhNum,
	ldr	r3, [fp, #-48]	@,
	mov	ip, r0	@ u32Port1HeighNum,
	bls	.L194	@,
	cmp	r6, #3	@ u32Port1WitdhNum,
	bls	.L195	@,
	cmp	r3, #3	@ u32Port0HeighNum,
	bls	.L196	@,
	cmp	r0, #3	@ u32Port1HeighNum,
	bhi	.L204	@,
.L197:
	ldr	lr, [fp, #36]	@, pu32OutWitdh
	mov	r4, #0	@ tmp168,
	mov	r2, sl	@, u32Port0WitdhNum
	movw	r1, #:lower16:.LC3	@,
	movt	r1, #:upper16:.LC3	@,
	str	r4, [lr, #0]	@ tmp168,
	ldr	r0, [fp, #40]	@, pu32OutHeigh
	str	r4, [r0, #0]	@ tmp168,
	mov	r0, #4194304	@,
	stmia	sp, {r6, ip}	@ phole stm
	bl	PQ_HAL_PrintMsg	@
	mov	r0, r4	@ D.37631, tmp168
	b	.L198	@
.L194:
	cmp	r6, #3	@ u32Port1WitdhNum,
	bls	.L201	@,
	cmp	r3, #3	@ u32Port0HeighNum,
	bhi	.L205	@,
.L196:
	cmp	sl, #3	@ u32Port0WitdhNum,
	bhi	.L206	@,
.L200:
	cmp	r6, #3	@ u32Port1WitdhNum,
	bls	.L201	@,
	cmp	ip, #3	@ u32Port1HeighNum,
	bhi	.L197	@,
.L201:
	ldr	r2, [fp, #36]	@, pu32OutWitdh
	mov	r4, #0	@ tmp165,
	mov	r0, #4194304	@,
	str	r4, [r2, #0]	@ tmp165,
	ldr	r1, [fp, #40]	@, pu32OutHeigh
	str	r4, [r1, #0]	@ tmp165,
	movw	r1, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC2	@,
	bl	PQ_HAL_PrintMsg	@
	mov	r0, r4	@ D.37631, tmp165
	b	.L198	@
.L195:
	cmp	r3, #3	@ u32Port0HeighNum,
	bhi	.L197	@,
	b	.L200	@
.L206:
	cmp	r3, #3	@ u32Port0HeighNum,
	bls	.L200	@,
	b	.L197	@
.L205:
	ldr	ip, [fp, #36]	@, pu32OutWitdh
	mov	r0, #4194304	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	str	r8, [ip, #0]	@ stZmeLayerWin$stPort0Win$u32Width,
	ldr	r3, [fp, #40]	@, pu32OutHeigh
	str	r7, [r3, #0]	@ stZmeLayerWin$stPort0Win$u32Height,
	bl	PQ_HAL_PrintMsg	@
	mov	r0, #0	@ D.37631,
	b	.L198	@
.L204:
	ldr	lr, [fp, #36]	@, pu32OutWitdh
	mov	r5, r5, lsr #1	@ tmp161, u32InWitdh,
	mov	r4, r4, lsr #1	@ tmp162, u32InHeigh,
	movw	r1, #:lower16:.LC0	@,
	movt	r1, #:upper16:.LC0	@,
	str	r5, [lr, #0]	@ tmp161,
	ldr	r0, [fp, #40]	@, pu32OutHeigh
	str	r4, [r0, #0]	@ tmp162,
	mov	r0, #4194304	@,
	bl	PQ_HAL_PrintMsg	@
	mov	r0, #0	@ D.37631,
	b	.L198	@
	.fnend
	.size	PQ_MNG_ZME_2L_Check, .-PQ_MNG_ZME_2L_Check
	.align	2
	.global	PQ_MNG_SetVpssZme
	.type	PQ_MNG_SetVpssZme, %function
PQ_MNG_SetVpssZme:
	.fnstart
.LFB1433:
	@ args = 0, pretend = 0, frame = 136
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #136
	sub	sp, sp, #136	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r6, #:lower16:.LANCHOR0	@ tmp138,
	sub	r4, fp, #168	@ tmp137,,
	mov	r5, r0	@ u32LayerId, u32LayerId
	movt	r6, #:upper16:.LANCHOR0	@ tmp138,
	mov	r8, r2	@ pstZmeDrvPara, pstZmeDrvPara
	add	r6, r6, r5, asl #3	@, tmp141, tmp138, u32LayerId,
	mov	sl, r1	@ pstReg, pstReg
	mov	r0, r4	@, tmp137
	mov	r1, #132	@,
	mov	r7, r3	@ bFirEnable, bFirEnable
	bl	__memzero	@
	mov	r1, r8	@, pstZmeDrvPara
	mov	r2, r4	@, tmp137
	ldr	r3, [r6, #8]	@ <variable>.pfnZme_CoefCalculate, <variable>.pfnZme_CoefCalculate
	ldr	r0, .L209	@,
	blx	r3	@ <variable>.pfnZme_CoefCalculate
	ldr	ip, [r6, #12]	@ <variable>.pfnZme_VpssRegCfg, <variable>.pfnZme_VpssRegCfg
	mov	r0, r5	@, u32LayerId
	mov	r1, sl	@, pstReg
	mov	r2, r4	@, tmp137
	mov	r3, r7	@, bFirEnable
	blx	ip	@ <variable>.pfnZme_VpssRegCfg
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L210:
	.align	2
.L209:
	.word	.LANCHOR1+8
	.fnend
	.size	PQ_MNG_SetVpssZme, .-PQ_MNG_SetVpssZme
	.align	2
	.global	PQ_MNG_SetVdpZme
	.type	PQ_MNG_SetVdpZme, %function
PQ_MNG_SetVdpZme:
	.fnstart
.LFB1432:
	@ args = 0, pretend = 0, frame = 136
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #140
	sub	sp, sp, #140	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r6, #:lower16:.LANCHOR0	@ tmp137,
	sub	r4, fp, #168	@ tmp136,,
	mov	r5, r0	@ u32LayerId, u32LayerId
	movt	r6, #:upper16:.LANCHOR0	@ tmp137,
	mov	r8, r1	@ pstZmeDrvPara, pstZmeDrvPara
	add	r6, r6, r5, asl #3	@, tmp140, tmp137, u32LayerId,
	mov	r0, r4	@, tmp136
	mov	r1, #132	@,
	mov	r7, r2	@ bFirEnable, bFirEnable
	bl	__memzero	@
	mov	r1, r8	@, pstZmeDrvPara
	mov	r2, r4	@, tmp136
	ldr	r0, .L213	@,
	ldr	ip, [r6, #40]	@ <variable>.pfnZme_CoefCalculate, <variable>.pfnZme_CoefCalculate
	blx	ip	@ <variable>.pfnZme_CoefCalculate
	ldr	r3, [r6, #44]	@ <variable>.pfnZme_VdpRegCfg, <variable>.pfnZme_VdpRegCfg
	mov	r0, r5	@, u32LayerId
	mov	r1, r4	@, tmp136
	mov	r2, r7	@, bFirEnable
	blx	r3	@ <variable>.pfnZme_VdpRegCfg
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L214:
	.align	2
.L213:
	.word	.LANCHOR1+300
	.fnend
	.size	PQ_MNG_SetVdpZme, .-PQ_MNG_SetVdpZme
	.align	2
	.global	PQ_MNG_VdpZmeSQSetAddr
	.type	PQ_MNG_VdpZmeSQSetAddr, %function
PQ_MNG_VdpZmeSQSetAddr:
	.fnstart
.LFB1416:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #24
	sub	sp, sp, #24	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	sub	r5, fp, #40	@ tmp166,,
	mov	r4, r2	@ pstZmeRtlPara, pstZmeRtlPara
	mov	r7, r1	@ pstZmeDrvPara, pstZmeDrvPara
	mov	r6, r0	@ pstMem, pstMem
	mov	r1, #12	@,
	mov	r0, r5	@, tmp166
	bl	__memzero	@
	mov	r0, r7	@, pstZmeDrvPara
	mov	r1, r4	@, pstZmeRtlPara
	bl	PQ_MNG_VdpZmeComnSet	@
	ldr	r1, [r4, #88]	@ <variable>.u32ZmeRatioHL, <variable>.u32ZmeRatioHL
	mov	r0, #16777216	@,
	mov	r1, r1, lsr #8	@, <variable>.u32ZmeRatioHL,
	bl	__aeabi_uidiv	@
	cmp	r0, #4096	@ tmp145,
	ldrhi	r1, [r6, #124]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrHL8C4_1
	bhi	.L217	@,
	ldreq	r1, [r6, #128]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrHL8C4_E1
	beq	.L217	@,
	cmp	r0, #3072	@ tmp145,
	ldrcs	r1, [r6, #132]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrHL8C4_075
	bcs	.L217	@,
	cmp	r0, #2048	@ tmp145,
	ldrcs	r1, [r6, #136]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrHL8C4_05
	bcs	.L217	@,
	movw	r3, #1364	@ tmp148,
	cmp	r0, r3	@ tmp145, tmp148
	ldrhi	r1, [r6, #140]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrHL8C4_033
	bls	.L238	@,
.L217:
	ldr	r2, [r4, #92]	@ <variable>.u32ZmeRatioVL, <variable>.u32ZmeRatioVL
	mov	r0, #4	@ tmp151,
	str	r0, [fp, #-36]	@ tmp151, stPickCoef.u32TapL
	sub	ip, fp, #52	@ tmp152,,
	str	r1, [r4, #116]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrHL
	str	r2, [fp, #-40]	@ <variable>.u32ZmeRatioVL, stPickCoef.u32Ratio
	ldmia	r5, {r0, r1, r2}	@ tmp166,,,
	stmia	ip, {r0, r1, r2}	@ tmp152,,,
	mov	r0, #16777216	@,
	ldr	r1, [fp, #-52]	@, stPickCoef.u32Ratio
	bl	__aeabi_uidiv	@
	ldr	r3, [fp, #-48]	@ stPickCoef.u32TapL, stPickCoef.u32TapL
	cmp	r3, #6	@ stPickCoef.u32TapL,
	beq	.L239	@,
	cmp	r0, #4096	@ tmp156,
	ldrhi	r3, [r6, #180]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrVL4C4_1
	bhi	.L225	@,
	ldreq	r3, [r6, #184]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrVL4C4_E1
	beq	.L225	@,
	cmp	r0, #3072	@ tmp156,
	ldrcs	r3, [r6, #188]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrVL4C4_075
	bcs	.L225	@,
	cmp	r0, #2048	@ tmp156,
	ldrcs	r3, [r6, #192]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrVL4C4_05
	bcs	.L225	@,
	movw	r3, #1364	@ tmp164,
	cmp	r0, r3	@ tmp156, tmp164
	ldrhi	r3, [r6, #196]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrVL4C4_033
	bhi	.L225	@,
	cmp	r0, #1024	@ tmp156,
	ldrcs	r3, [r6, #200]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrVL4C4_025
	ldrcc	r3, [r6, #204]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrVL4C4_0
.L225:
	str	r3, [r4, #124]	@ u32CoefAddr, <variable>.u32ZmeCoefAddrVL
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L239:
	cmp	r0, #4096	@ tmp156,
	ldrhi	r3, [r6, #152]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrVL6C4_1
	bhi	.L225	@,
	ldreq	r3, [r6, #156]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrVL6C4_E1
	beq	.L225	@,
	cmp	r0, #3072	@ tmp156,
	ldrcs	r3, [r6, #160]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrVL6C4_075
	bcs	.L225	@,
	cmp	r0, #2048	@ tmp156,
	ldrcs	r3, [r6, #164]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrVL6C4_05
	bcs	.L225	@,
	movw	r3, #1364	@ tmp160,
	cmp	r0, r3	@ tmp156, tmp160
	ldrhi	r3, [r6, #168]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrVL6C4_033
	bhi	.L225	@,
	cmp	r0, #1024	@ tmp156,
	ldrcs	r3, [r6, #172]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrVL6C4_025
	ldrcc	r3, [r6, #176]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrVL6C4_0
	b	.L225	@
.L238:
	cmp	r0, #1024	@ tmp145,
	ldrcs	r1, [r6, #144]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrHL8C4_025
	ldrcc	r1, [r6, #148]	@ u32CoefAddr, <variable>.stZmeCoefAddr.u32ZmeCoefAddrHL8C4_0
	b	.L217	@
	.fnend
	.size	PQ_MNG_VdpZmeSQSetAddr, .-PQ_MNG_VdpZmeSQSetAddr
	.align	2
	.global	PQ_MNG_InitVdpZme
	.type	PQ_MNG_InitVdpZme, %function
PQ_MNG_InitVdpZme:
	.fnstart
.LFB1426:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #24
	sub	sp, sp, #24	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r4, #:lower16:.LANCHOR1	@ tmp137,
	movt	r4, #:upper16:.LANCHOR1	@ tmp137,
	ldr	r1, [r4, #592]	@ g_bVdpZmeInitFlag, g_bVdpZmeInitFlag
	cmp	r1, #0	@ g_bVdpZmeInitFlag,
	movne	r0, #0	@ D.37513,
	beq	.L245	@,
.L242:
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L245:
	movw	r0, #:lower16:.LC4	@,
	movw	r2, #7392	@,
	movt	r0, #:upper16:.LC4	@,
	mov	r3, #16	@,
	sub	ip, fp, #36	@ tmp140,,
	str	ip, [sp, #0]	@ tmp140,
	bl	HI_DRV_MMZ_AllocAndMap	@
	subs	r5, r0, #0	@ s32Ret,
	bne	.L243	@,
	ldr	r2, [fp, #-32]	@ stMMZ.u32StartPhyAddr, stMMZ.u32StartPhyAddr
	add	lr, r4, #300	@ D.37514, tmp137,
	mov	r0, lr	@, D.37514
	str	r2, [lr, #4]	@ stMMZ.u32StartPhyAddr, <variable>.u32StartPhyAddr
	ldr	r1, [fp, #-28]	@ stMMZ.u32Size, stMMZ.u32Size
	ldr	ip, [fp, #-36]	@ stMMZ.u32StartVirAddr, stMMZ.u32StartVirAddr
	str	r1, [lr, #8]	@ stMMZ.u32Size, <variable>.u32Size
	str	ip, [r4, #300]	@ stMMZ.u32StartVirAddr, <variable>.u32StartVirAddr
	bl	PQ_HAL_VdpLoadCoef	@
	movw	r3, #:lower16:.LANCHOR0	@ tmp147,
	movt	r3, #:upper16:.LANCHOR0	@ tmp147,
	mov	r2, #1	@ tmp148,
	str	r5, [r4, #0]	@ s32Ret, g_bVdpZmeMedEn
	mov	r0, r5	@ D.37513, s32Ret
	str	r2, [r4, #592]	@ tmp148, g_bVdpZmeInitFlag
	str	r2, [r3, #0]	@ tmp148, g_bVdpZmeFirEn
	b	.L242	@
.L243:
	mov	r0, #1	@,
	mov	r1, #41	@,
	movw	r2, #:lower16:.LANCHOR2	@,
	movw	r3, #850	@,
	movt	r2, #:upper16:.LANCHOR2	@,
	movw	lr, #:lower16:.LC5	@ tmp154,
	movt	lr, #:upper16:.LC5	@ tmp154,
	str	lr, [sp, #0]	@ tmp154,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.37513,
	b	.L242	@
	.fnend
	.size	PQ_MNG_InitVdpZme, .-PQ_MNG_InitVdpZme
	.align	2
	.global	PQ_MNG_InitZme
	.type	PQ_MNG_InitZme, %function
PQ_MNG_InitZme:
	.fnstart
.LFB1430:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #24
	sub	sp, sp, #24	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r4, #:lower16:.LANCHOR1	@ tmp165,
	movt	r4, #:upper16:.LANCHOR1	@ tmp165,
	ldr	r3, [r4, #596]	@ g_bZmeInitFlag, g_bZmeInitFlag
	cmp	r3, #0	@ g_bZmeInitFlag,
	bne	.L247	@,
	ldr	r1, [r4, #600]	@ g_bVpssZmeInitFlag, g_bVpssZmeInitFlag
	cmp	r1, #0	@ g_bVpssZmeInitFlag,
	beq	.L251	@,
.L248:
	bl	PQ_MNG_InitVdpZme	@
	mov	r1, #1	@ tmp163,
	str	r1, [r4, #596]	@ tmp163, g_bZmeInitFlag
.L247:
	mov	r0, #0	@,
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L251:
	movw	r0, #:lower16:.LC6	@,
	mov	r2, #10752	@,
	movt	r0, #:upper16:.LC6	@,
	mov	r3, r1	@,
	sub	ip, fp, #36	@ tmp141,,
	str	ip, [sp, #0]	@ tmp141,
	bl	HI_DRV_MMZ_AllocAndMap	@
	subs	r5, r0, #0	@ s32Ret,
	bne	.L249	@,
	ldr	r0, [fp, #-32]	@ stMMZ.u32StartPhyAddr, stMMZ.u32StartPhyAddr
	add	lr, r4, #8	@ pstMBuf.453, tmp165,
	ldr	ip, [fp, #-36]	@ stMMZ.u32StartVirAddr, stMMZ.u32StartVirAddr
	add	r2, r4, #20	@, tmp165,
	str	r0, [lr, #4]	@ stMMZ.u32StartPhyAddr, <variable>.u32StartPhyAddr
	mov	r1, r0	@, stMMZ.u32StartPhyAddr
	ldr	r3, [fp, #-28]	@ stMMZ.u32Size, stMMZ.u32Size
	mov	r0, ip	@, stMMZ.u32StartVirAddr
	str	ip, [r4, #8]	@ stMMZ.u32StartVirAddr, <variable>.u32StartVirAddr
	str	r3, [lr, #8]	@ stMMZ.u32Size, <variable>.u32Size
	bl	PQ_HAL_VpssLoadCoef	@
	movw	r0, #:lower16:.LANCHOR0	@ tmp153,
	movt	r0, #:upper16:.LANCHOR0	@ tmp153,
	mov	r2, #1	@ tmp154,
	str	r5, [r4, #4]	@ s32Ret, g_bVpssZmeMedEn
	str	r2, [r0, #4]	@ tmp154, g_bVpssZmeFirEn
	str	r2, [r4, #600]	@ tmp154, g_bVpssZmeInitFlag
	b	.L248	@
.L249:
	mov	r0, #1	@,
	mov	r1, #41	@,
	ldr	r2, .L252	@,
	movw	r3, #886	@,
	movw	lr, #:lower16:.LC7	@ tmp161,
	movt	lr, #:upper16:.LC7	@ tmp161,
	str	lr, [sp, #0]	@ tmp161,
	bl	HI_LogOut	@
	b	.L248	@
.L253:
	.align	2
.L252:
	.word	.LANCHOR2+20
	.fnend
	.size	PQ_MNG_InitZme, .-PQ_MNG_InitZme
	.align	2
	.global	PQ_MNG_DeInitVdpZme
	.type	PQ_MNG_DeInitVdpZme, %function
PQ_MNG_DeInitVdpZme:
	.fnstart
.LFB1428:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #20
	sub	sp, sp, #20	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r4, #:lower16:.LANCHOR1	@ tmp150,
	movt	r4, #:upper16:.LANCHOR1	@ tmp150,
	ldr	r3, [r4, #592]	@ g_bVdpZmeInitFlag, g_bVdpZmeInitFlag
	cmp	r3, #0	@ g_bVdpZmeInitFlag,
	beq	.L255	@,
	ldr	r3, [r4, #300]	@ g_stVZMEVdpInstance.stMBuf.u32StartVirAddr, g_stVZMEVdpInstance.stMBuf.u32StartVirAddr
	cmp	r3, #0	@ g_stVZMEVdpInstance.stMBuf.u32StartVirAddr,
	bne	.L258	@,
.L256:
	mov	ip, #0	@ tmp148,
	str	ip, [r4, #592]	@ tmp148, g_bVdpZmeInitFlag
.L255:
	mov	r0, #0	@,
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L258:
	ldr	r1, [r4, #304]	@ <variable>.u32StartPhyAddr, <variable>.u32StartPhyAddr
	sub	r0, fp, #36	@,,
	ldr	r2, [r4, #308]	@ <variable>.u32Size, <variable>.u32Size
	str	r3, [fp, #-36]	@ g_stVZMEVdpInstance.stMBuf.u32StartVirAddr, stMMZ.u32StartVirAddr
	str	r1, [fp, #-32]	@ <variable>.u32StartPhyAddr, stMMZ.u32StartPhyAddr
	str	r2, [fp, #-28]	@ <variable>.u32Size, stMMZ.u32Size
	bl	HI_DRV_MMZ_UnmapAndRelease	@
	mov	r0, #0	@ tmp146,
	str	r0, [r4, #300]	@ tmp146, g_stVZMEVdpInstance.stMBuf.u32StartVirAddr
	b	.L256	@
	.fnend
	.size	PQ_MNG_DeInitVdpZme, .-PQ_MNG_DeInitVdpZme
	.align	2
	.global	PQ_MNG_DeInitZme
	.type	PQ_MNG_DeInitZme, %function
PQ_MNG_DeInitZme:
	.fnstart
.LFB1431:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #20
	sub	sp, sp, #20	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r4, #:lower16:.LANCHOR1	@ tmp154,
	movt	r4, #:upper16:.LANCHOR1	@ tmp154,
	ldr	r3, [r4, #596]	@ g_bZmeInitFlag, g_bZmeInitFlag
	cmp	r3, #0	@ g_bZmeInitFlag,
	beq	.L260	@,
	ldr	r0, [r4, #600]	@ g_bVpssZmeInitFlag, g_bVpssZmeInitFlag
	cmp	r0, #0	@ g_bVpssZmeInitFlag,
	beq	.L261	@,
	ldr	r3, [r4, #8]	@ g_stVZMEVpssInstance.stMBuf.u32StartVirAddr, g_stVZMEVpssInstance.stMBuf.u32StartVirAddr
	cmp	r3, #0	@ g_stVZMEVpssInstance.stMBuf.u32StartVirAddr,
	bne	.L264	@,
.L262:
	mov	lr, #0	@ tmp150,
	str	lr, [r4, #600]	@ tmp150, g_bVpssZmeInitFlag
.L261:
	bl	PQ_MNG_DeInitVdpZme	@
	mov	r3, #0	@ tmp152,
	str	r3, [r4, #596]	@ tmp152, g_bZmeInitFlag
.L260:
	mov	r0, #0	@,
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L264:
	ldr	ip, [r4, #12]	@ <variable>.u32StartPhyAddr, <variable>.u32StartPhyAddr
	sub	r0, fp, #36	@,,
	ldr	r2, [r4, #16]	@ <variable>.u32Size, <variable>.u32Size
	str	r3, [fp, #-36]	@ g_stVZMEVpssInstance.stMBuf.u32StartVirAddr, stMMZ.u32StartVirAddr
	str	ip, [fp, #-32]	@ <variable>.u32StartPhyAddr, stMMZ.u32StartPhyAddr
	str	r2, [fp, #-28]	@ <variable>.u32Size, stMMZ.u32Size
	bl	HI_DRV_MMZ_UnmapAndRelease	@
	mov	r1, #0	@ tmp148,
	str	r1, [r4, #8]	@ tmp148, g_stVZMEVpssInstance.stMBuf.u32StartVirAddr
	b	.L262	@
	.fnend
	.size	PQ_MNG_DeInitZme, .-PQ_MNG_DeInitZme
	.global	stZmeVdpFunc
	.global	stZmeVpssFunc
	.global	g_stVZMEVdpInstance
	.global	g_stVZMEVpssInstance
	.section	.rodata
	.align	2
.LANCHOR2 = . + 0
	.type	__func__.37509, %object
	.size	__func__.37509, 18
__func__.37509:
	.ascii	"PQ_MNG_InitVdpZme\000"
	.space	2
	.type	__func__.37526, %object
	.size	__func__.37526, 19
__func__.37526:
	.ascii	"PQ_MNG_InitVpssZme\000"
	.data
	.align	2
.LANCHOR0 = . + 0
	.type	g_bVdpZmeFirEn, %object
	.size	g_bVdpZmeFirEn, 4
g_bVdpZmeFirEn:
	.word	1
	.type	g_bVpssZmeFirEn, %object
	.size	g_bVpssZmeFirEn, 4
g_bVpssZmeFirEn:
	.word	1
	.type	stZmeVpssFunc, %object
	.size	stZmeVpssFunc, 32
stZmeVpssFunc:
@ pfnZme_CoefCalculate:
	.word	PQ_MNG_VpssZmeHQSetSptAddr
@ pfnZme_VpssRegCfg:
	.word	PQ_HAL_VpssZmeRegCfg
@ pfnZme_CoefCalculate:
	.word	PQ_MNG_VpssZmeHQSetSptAddr
@ pfnZme_VpssRegCfg:
	.word	PQ_HAL_VpssZmeRegCfg
@ pfnZme_CoefCalculate:
	.word	PQ_MNG_VpssZmeHQSetSptAddr
@ pfnZme_VpssRegCfg:
	.word	PQ_HAL_VpssZmeRegCfg
@ pfnZme_CoefCalculate:
	.word	PQ_MNG_VpssZmeHQSetSptAddr
@ pfnZme_VpssRegCfg:
	.word	PQ_HAL_VpssZmeRegCfg
	.type	stZmeVdpFunc, %object
	.size	stZmeVdpFunc, 56
stZmeVdpFunc:
@ pfnZme_CoefCalculate:
	.word	PQ_MNG_VdpZmeSQSetSptAddr
@ pfnZme_VdpRegCfg:
	.word	PQ_HAL_VdpZmeRegCfg
@ pfnZme_CoefCalculate:
	.word	PQ_MNG_VdpZmeSQSetSptAddr
@ pfnZme_VdpRegCfg:
	.word	PQ_HAL_VdpZmeRegCfg
@ pfnZme_CoefCalculate:
	.word	PQ_MNG_VdpZmeSQSetSptAddr
@ pfnZme_VdpRegCfg:
	.word	PQ_HAL_VdpZmeRegCfg
@ pfnZme_CoefCalculate:
	.word	PQ_MNG_VdpZmeSQSetSptAddr
@ pfnZme_VdpRegCfg:
	.word	PQ_HAL_VdpZmeRegCfg
@ pfnZme_CoefCalculate:
	.word	PQ_MNG_VdpZmeSQSetSptAddr
@ pfnZme_VdpRegCfg:
	.word	PQ_HAL_VdpZmeRegCfg
@ pfnZme_CoefCalculate:
	.word	PQ_MNG_VdpZmeSQSetSptAddr
@ pfnZme_VdpRegCfg:
	.word	PQ_HAL_WbcZmeRegCfg
@ pfnZme_CoefCalculate:
	.word	PQ_MNG_VdpSRZmeSetAddr
@ pfnZme_VdpRegCfg:
	.word	PQ_HAL_SRZmeRegCfg
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Port0 set 2L ZME, Port1 set 2L ZME\012\000"
.LC1:
	.ascii	"Port0 not set 2L ZME, Port1 set 2L ZME\012\000"
.LC2:
	.ascii	"Port0 not set 2L ZME, Port1 not set 2L ZME\012\000"
.LC3:
	.ascii	"not set 2L ZME,Port0 Witdh:%d, Port0 Heigh:%d, Port"
	.ascii	"1 Witdh:%d, Port1 Heigh:%d\012\000"
	.space	1
.LC4:
	.ascii	"PQ_VdpZmeCoef\000"
	.space	2
.LC5:
	.ascii	"Get PQ_Zme failed\012\000"
	.space	1
.LC6:
	.ascii	"PQ_VpssZmeCoef\000"
	.space	1
.LC7:
	.ascii	"PQ_MNG_MMZ_AllocAndMap failed!\012\000"
	.bss
	.align	2
.LANCHOR1 = . + 0
	.type	g_bVdpZmeMedEn, %object
	.size	g_bVdpZmeMedEn, 4
g_bVdpZmeMedEn:
	.space	4
	.type	g_bVpssZmeMedEn, %object
	.size	g_bVpssZmeMedEn, 4
g_bVpssZmeMedEn:
	.space	4
	.type	g_stVZMEVpssInstance, %object
	.size	g_stVZMEVpssInstance, 292
g_stVZMEVpssInstance:
	.space	292
	.type	g_stVZMEVdpInstance, %object
	.size	g_stVZMEVdpInstance, 292
g_stVZMEVdpInstance:
	.space	292
	.type	g_bVdpZmeInitFlag, %object
	.size	g_bVdpZmeInitFlag, 4
g_bVdpZmeInitFlag:
	.space	4
	.type	g_bZmeInitFlag, %object
	.size	g_bZmeInitFlag, 4
g_bZmeInitFlag:
	.space	4
	.type	g_bVpssZmeInitFlag, %object
	.size	g_bVpssZmeInitFlag, 4
g_bVpssZmeInitFlag:
	.space	4
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
