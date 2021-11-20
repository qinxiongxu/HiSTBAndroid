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
	.file	"pq_mng_sr.c"
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
@ -DKBUILD_BASENAME=KBUILD_STR(pq_mng_sr)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_pq) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD drivers/msp/pq/pq_v3_0/mng/.pq_mng_sr.o.d
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/drivers/msp/pq/pq_v3_0/mng/pq_mng_sr.c
@ -mlittle-endian -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -marm -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/pq/pq_v3_0/mng/pq_mng_sr.o -O2 -Wall -Wundef
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
	.global	PQ_MNG_SRParaInit
	.type	PQ_MNG_SRParaInit, %function
PQ_MNG_SRParaInit:
	.fnstart
.LFB835:
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
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	PQ_MNG_SRParaInit, .-PQ_MNG_SRParaInit
	.align	2
	.global	PQ_MNG_DeinitSR
	.type	PQ_MNG_DeinitSR, %function
PQ_MNG_DeinitSR:
	.fnstart
.LFB837:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp134,
	movt	r3, #:upper16:.LANCHOR0	@ tmp134,
	mov	r0, #0	@,
	ldr	r2, [r3, #0]	@ sg_bSRInitFlag, sg_bSRInitFlag
	cmp	r2, #0	@ sg_bSRInitFlag,
	movne	r2, #0	@ tmp137,
	strne	r2, [r3, #0]	@ tmp137, sg_bSRInitFlag
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	PQ_MNG_DeinitSR, .-PQ_MNG_DeinitSR
	.align	2
	.global	PQ_MNG_GetSRDemo
	.type	PQ_MNG_GetSRDemo, %function
PQ_MNG_GetSRDemo:
	.fnstart
.LFB838:
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
	ldr	r3, [r1, #0]	@ sg_enSRMode, sg_enSRMode
	str	r3, [r0, #0]	@ sg_enSRMode,* pu32Type
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	PQ_MNG_GetSRDemo, .-PQ_MNG_GetSRDemo
	.align	2
	.global	PQ_MNG_UpdateSRSpMode
	.type	PQ_MNG_UpdateSRSpMode, %function
PQ_MNG_UpdateSRSpMode:
	.fnstart
.LFB843:
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
	movw	r3, #1079	@ tmp137,
	cmp	r0, #1920	@ u32Width,
	cmpcs	r1, r3	@, u32Hight, tmp137
	mov	r0, #0	@,
	movls	r1, #0	@, tmp143
	movhi	r1, #1	@, tmp143
	bl	PQ_HAL_SetSRSpMode	@
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	PQ_MNG_UpdateSRSpMode, .-PQ_MNG_UpdateSRSpMode
	.align	2
	.global	PQ_MNG_GetSREnableFlag
	.type	PQ_MNG_GetSREnableFlag, %function
PQ_MNG_GetSREnableFlag:
	.fnstart
.LFB841:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #12
	sub	sp, sp, #12	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r4, r0	@ bOnOff, bOnOff
	sub	r1, fp, #24	@,,
	mov	r0, #0	@,
	bl	PQ_HAL_GetSREnable	@
	ldr	r3, [fp, #-24]	@ bSrOnOff, bSrOnOff
	mov	r0, #0	@,
	cmp	r3, #1	@ bSrOnOff,
	movweq	r3, #:lower16:.LANCHOR0	@ tmp137,
	movteq	r3, #:upper16:.LANCHOR0	@ tmp137,
	movne	r3, #0	@ tmp139,
	ldreq	r3, [r3, #4]	@ sg_bSREnableFlag, sg_bSREnableFlag
	str	r3, [r4, #0]	@ tmp139,* bOnOff
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
	.fnend
	.size	PQ_MNG_GetSREnableFlag, .-PQ_MNG_GetSREnableFlag
	.align	2
	.global	PQ_MNG_SetSRDemo
	.type	PQ_MNG_SetSRDemo, %function
PQ_MNG_SetSRDemo:
	.fnstart
.LFB839:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #12
	sub	sp, sp, #12	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r4, r0	@ enDemoCtrl, enDemoCtrl
	cmp	r0, #3	@ enDemoCtrl,
	ldrls	pc, [pc, r0, asl #2]	@ enDemoCtrl
	b	.L15	@
.L20:
	.word	.L16
	.word	.L17
	.word	.L18
	.word	.L19
.L19:
	mov	r0, #0	@,
	mov	r1, r0	@,
	bl	PQ_HAL_SR_EnZme	@
.L21:
	movw	r3, #:lower16:.LANCHOR1	@ tmp138,
	movt	r3, #:upper16:.LANCHOR1	@ tmp138,
	mov	r0, #0	@ D.26773,
	str	r4, [r3, #0]	@ enDemoCtrl, sg_enSRMode
.L22:
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L18:
	mov	r0, #0	@,
	mov	r1, #2	@,
	bl	PQ_HAL_SR_EnZme	@
	b	.L21	@
.L17:
	mov	r0, #0	@,
	mov	r1, #3	@,
	bl	PQ_HAL_SR_EnZme	@
	b	.L21	@
.L16:
	mov	r0, #0	@,
	mov	r1, #1	@,
	bl	PQ_HAL_SR_EnZme	@
	b	.L21	@
.L15:
	mov	r0, #1	@,
	mov	r1, #41	@,
	movw	r2, #:lower16:.LANCHOR2	@,
	mov	r3, #111	@,
	movt	r2, #:upper16:.LANCHOR2	@,
	movw	ip, #:lower16:.LC0	@ tmp137,
	movt	ip, #:upper16:.LC0	@ tmp137,
	str	ip, [sp, #0]	@ tmp137,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.26773,
	b	.L22	@
	.fnend
	.size	PQ_MNG_SetSRDemo, .-PQ_MNG_SetSRDemo
	.align	2
	.global	PQ_MNG_EnableSRDemo
	.type	PQ_MNG_EnableSRDemo, %function
PQ_MNG_EnableSRDemo:
	.fnstart
.LFB842:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #12
	sub	sp, sp, #12	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r4, r0	@ bOnOff, bOnOff
	sub	r1, fp, #24	@,,
	mov	r0, #0	@,
	bl	PQ_HAL_GetSREnable	@
	ldr	r3, [fp, #-24]	@ bSrOnOff, bSrOnOff
	cmp	r3, #1	@ bSrOnOff,
	movne	r0, #0	@ enDemo,
	bne	.L27	@,
	cmp	r4, #1	@ bOnOff,
	moveq	r0, r4	@, enDemo, bOnOff
	movne	r0, #3	@, enDemo,
.L27:
	bl	PQ_MNG_SetSRDemo	@
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
	.fnend
	.size	PQ_MNG_EnableSRDemo, .-PQ_MNG_EnableSRDemo
	.align	2
	.global	PQ_MNG_EnableSR
	.type	PQ_MNG_EnableSR, %function
PQ_MNG_EnableSR:
	.fnstart
.LFB840:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #16
	sub	sp, sp, #16	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r4, r0	@ bOnOff, bOnOff
	sub	r1, fp, #24	@,,
	mov	r0, #0	@,
	bl	PQ_HAL_GetSREnable	@
	ldr	r5, [fp, #-24]	@ bSrOnOff, bSrOnOff
	cmp	r5, #1	@ bSrOnOff,
	beq	.L37	@,
	mov	r2, #0	@ tmp145,
	movw	r3, #:lower16:.LANCHOR0	@ tmp144,
	movt	r3, #:upper16:.LANCHOR0	@ tmp144,
	mov	r0, r2	@ D.26790, tmp145
	str	r2, [r3, #4]	@ tmp145, sg_bSREnableFlag
.L35:
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L37:
	cmp	r4, #1	@ bOnOff,
	moveq	r0, #3	@,
	movne	r0, #0	@,
	bl	PQ_MNG_SetSRDemo	@
	cmp	r0, #0	@ s32Ret
	movweq	r3, #:lower16:.LANCHOR0	@ tmp143,
	movteq	r3, #:upper16:.LANCHOR0	@ tmp143,
	streq	r4, [r3, #4]	@ bOnOff, sg_bSREnableFlag
	beq	.L35	@,
	mov	r0, r5	@, bSrOnOff
	mov	r1, #41	@,
	ldr	r2, .L38	@,
	mov	r3, #145	@,
	movw	ip, #:lower16:.LC1	@ tmp142,
	movt	ip, #:upper16:.LC1	@ tmp142,
	str	ip, [sp, #0]	@ tmp142,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.26790,
	b	.L35	@
.L39:
	.align	2
.L38:
	.word	.LANCHOR2+20
	.fnend
	.size	PQ_MNG_EnableSR, .-PQ_MNG_EnableSR
	.align	2
	.global	PQ_MNG_InitSR
	.type	PQ_MNG_InitSR, %function
PQ_MNG_InitSR:
	.fnstart
.LFB836:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {fp, ip, lr, pc}	@,
	.pad #4
	.save {fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #8
	sub	sp, sp, #8	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r0, #0	@,
	mov	r1, r0	@,
	mov	r2, r0	@,
	mov	r3, r0	@,
	mov	ip, #256	@ tmp136,
	str	ip, [sp, #0]	@ tmp136,
	bl	PQ_MNG_InitPhyList	@
	cmp	r0, #0	@ s32Ret
	bne	.L44	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	mov	r2, #1	@ tmp141,
	str	r2, [r3, #0]	@ tmp141, sg_bSRInitFlag
.L42:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L44:
	mov	r0, #1	@,
	mov	r1, #41	@,
	ldr	r2, .L45	@,
	mov	r3, #54	@,
	movw	lr, #:lower16:.LC2	@ tmp139,
	movt	lr, #:upper16:.LC2	@ tmp139,
	str	lr, [sp, #0]	@ tmp139,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.26747,
	b	.L42	@
.L46:
	.align	2
.L45:
	.word	.LANCHOR2+36
	.fnend
	.size	PQ_MNG_InitSR, .-PQ_MNG_InitSR
	.section	.rodata
	.align	2
.LANCHOR2 = . + 0
	.type	__func__.26772, %object
	.size	__func__.26772, 17
__func__.26772:
	.ascii	"PQ_MNG_SetSRDemo\000"
	.space	3
	.type	__func__.26780, %object
	.size	__func__.26780, 16
__func__.26780:
	.ascii	"PQ_MNG_EnableSR\000"
	.type	__func__.26743, %object
	.size	__func__.26743, 14
__func__.26743:
	.ascii	"PQ_MNG_InitSR\000"
	.data
	.align	2
.LANCHOR1 = . + 0
	.type	sg_enSRMode, %object
	.size	sg_enSRMode, 4
sg_enSRMode:
	.word	3
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"SR demo type error\012\000"
.LC1:
	.ascii	"SR Enable error\012\000"
	.space	3
.LC2:
	.ascii	"SR InitPhyList error\012\000"
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	sg_bSRInitFlag, %object
	.size	sg_bSRInitFlag, 4
sg_bSRInitFlag:
	.space	4
	.type	sg_bSREnableFlag, %object
	.size	sg_bSREnableFlag, 4
sg_bSREnableFlag:
	.space	4
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
