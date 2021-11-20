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
	.file	"pq_mng_sharpen.c"
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
@ -DKBUILD_BASENAME=KBUILD_STR(pq_mng_sharpen)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_pq) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD drivers/msp/pq/pq_v3_0/mng/.pq_mng_sharpen.o.d
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/drivers/msp/pq/pq_v3_0/mng/pq_mng_sharpen.c
@ -mlittle-endian -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -marm -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/pq/pq_v3_0/mng/pq_mng_sharpen.o -O2 -Wall -Wundef
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
	.global	PQ_MNG_DeinitSharpen
	.type	PQ_MNG_DeinitSharpen, %function
PQ_MNG_DeinitSharpen:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp134,
	movt	r3, #:upper16:.LANCHOR0	@ tmp134,
	mov	r0, #0	@,
	ldr	r2, [r3, #0]	@ g_bShpInitFlag, g_bShpInitFlag
	cmp	r2, #0	@ g_bShpInitFlag,
	movne	r2, #0	@ tmp137,
	strne	r2, [r3, #0]	@ tmp137, g_bShpInitFlag
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	PQ_MNG_DeinitSharpen, .-PQ_MNG_DeinitSharpen
	.align	2
	.global	PQ_MNG_GetSharpenStr
	.type	PQ_MNG_GetSharpenStr, %function
PQ_MNG_GetSharpenStr:
	.fnstart
.LFB846:
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
	ldr	r3, [r1, #0]	@ sg_s32SharpStr, sg_s32SharpStr
	str	r3, [r0, #0]	@ sg_s32SharpStr,* ps32ShpStr
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	PQ_MNG_GetSharpenStr, .-PQ_MNG_GetSharpenStr
	.align	2
	.global	PQ_MNG_GetSharpDemoMode
	.type	PQ_MNG_GetSharpDemoMode, %function
PQ_MNG_GetSharpDemoMode:
	.fnstart
.LFB851:
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
	ldr	r3, [r1, #4]	@ sg_enMode, sg_enMode
	str	r3, [r0, #0]	@ sg_enMode,* enMode
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	PQ_MNG_GetSharpDemoMode, .-PQ_MNG_GetSharpDemoMode
	.align	2
	.global	PQ_MNG_SetSharpDemoMode
	.type	PQ_MNG_SetSharpDemoMode, %function
PQ_MNG_SetSharpDemoMode:
	.fnstart
.LFB850:
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
	mov	r4, r0	@ enMode, enMode
	mov	r1, r4	@, enMode
	mov	r0, #0	@,
	bl	PQ_HAL_SetSharpDemoMode	@
	movw	r3, #:lower16:.LANCHOR0	@ tmp135,
	movt	r3, #:upper16:.LANCHOR0	@ tmp135,
	mov	r0, #0	@,
	str	r4, [r3, #4]	@ enMode, sg_enMode
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	PQ_MNG_SetSharpDemoMode, .-PQ_MNG_SetSharpDemoMode
	.align	2
	.global	PQ_MNG_GetSharpenEnable
	.type	PQ_MNG_GetSharpenEnable, %function
PQ_MNG_GetSharpenEnable:
	.fnstart
.LFB848:
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
	cmp	r0, #0	@ pbOnOff
	beq	.L15	@,
	movw	r1, #:lower16:.LANCHOR0	@ tmp137,
	movt	r1, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r1, #8]	@ sg_bSharpen_EnFlag, sg_bSharpen_EnFlag
	str	r3, [r0, #0]	@ sg_bSharpen_EnFlag,* pbOnOff
.L12:
	mov	r0, #0	@,
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L15:
	mov	r0, #1	@,
	mov	r1, #41	@,
	movw	r2, #:lower16:.LANCHOR2	@,
	mov	r3, #169	@,
	movt	r2, #:upper16:.LANCHOR2	@,
	movw	ip, #:lower16:.LC0	@ tmp136,
	movt	ip, #:upper16:.LC0	@ tmp136,
	str	ip, [sp, #0]	@ tmp136,
	bl	HI_LogOut	@
	b	.L12	@
	.fnend
	.size	PQ_MNG_GetSharpenEnable, .-PQ_MNG_GetSharpenEnable
	.align	2
	.global	PQ_MNG_EnableSharpenDemo
	.type	PQ_MNG_EnableSharpenDemo, %function
PQ_MNG_EnableSharpenDemo:
	.fnstart
.LFB849:
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
	bl	PQ_HAL_EnableSharpDemo	@
	cmp	r0, #0	@ s32Ret
	bne	.L20	@,
.L18:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L20:
	mov	r0, #1	@,
	mov	r1, #41	@,
	ldr	r2, .L21	@,
	mov	r3, #183	@,
	movw	lr, #:lower16:.LC1	@ tmp139,
	movt	lr, #:upper16:.LC1	@ tmp139,
	str	lr, [sp, #0]	@ tmp139,
	bl	HI_LogOut	@
	mov	r0, #1	@,
	mov	r1, #41	@,
	ldr	r2, .L21+4	@,
	movw	r3, #305	@,
	movw	ip, #:lower16:.LC2	@ tmp142,
	movt	ip, #:upper16:.LC2	@ tmp142,
	str	ip, [sp, #0]	@ tmp142,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.26706,
	b	.L18	@
.L22:
	.align	2
.L21:
	.word	.LANCHOR2+20
	.word	.LANCHOR2+40
	.fnend
	.size	PQ_MNG_EnableSharpenDemo, .-PQ_MNG_EnableSharpenDemo
	.align	2
	.global	PQ_MNG_EnableSharpen
	.type	PQ_MNG_EnableSharpen, %function
PQ_MNG_EnableSharpen:
	.fnstart
.LFB847:
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
	mov	r4, r0	@ bOnOff, bOnOff
	bl	PQ_HAL_EnableSharp	@
	cmp	r0, #0	@ s32Ret
	movweq	r3, #:lower16:.LANCHOR0	@ tmp143,
	movteq	r3, #:upper16:.LANCHOR0	@ tmp143,
	streq	r4, [r3, #8]	@ bOnOff, sg_bSharpen_EnFlag
	bne	.L27	@,
.L25:
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L27:
	mov	r0, #1	@,
	mov	r1, #41	@,
	ldr	r2, .L28	@,
	mov	r3, #158	@,
	movw	lr, #:lower16:.LC3	@ tmp139,
	movt	lr, #:upper16:.LC3	@ tmp139,
	str	lr, [sp, #0]	@ tmp139,
	bl	HI_LogOut	@
	mov	r0, #1	@,
	mov	r1, #41	@,
	ldr	r2, .L28+4	@,
	movw	r3, #282	@,
	movw	ip, #:lower16:.LC4	@ tmp142,
	movt	ip, #:upper16:.LC4	@ tmp142,
	str	ip, [sp, #0]	@ tmp142,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.26693,
	b	.L25	@
.L29:
	.align	2
.L28:
	.word	.LANCHOR2+68
	.word	.LANCHOR2+84
	.fnend
	.size	PQ_MNG_EnableSharpen, .-PQ_MNG_EnableSharpen
	.align	2
	.global	PQ_MNG_InitSharpen
	.type	PQ_MNG_InitSharpen, %function
PQ_MNG_InitSharpen:
	.fnstart
.LFB844:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp137,
	movt	r4, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r4, #0]	@ g_bShpInitFlag, g_bShpInitFlag
	str	r0, [r4, #12]	@ pstPqParam, g_pstPqParam
	cmp	r3, #1	@ g_bShpInitFlag,
	moveq	r0, #0	@ D.26659,
	beq	.L32	@,
	mov	r0, #0	@ tmp141,
	mov	ip, #4	@ tmp142,
	mov	r3, r0	@,
	mov	r1, r0	@,
	mov	r2, r0	@,
	str	r0, [r4, #8]	@ tmp141, sg_bSharpen_EnFlag
	str	ip, [sp, #0]	@ tmp142,
	bl	PQ_MNG_InitPhyList	@
	cmp	r0, #0	@ s32Ret
	moveq	r3, #1	@ tmp150,
	streq	r3, [r4, #0]	@ tmp150, g_bShpInitFlag
	bne	.L35	@,
.L32:
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L35:
	mov	r0, #1	@,
	mov	r1, #41	@,
	ldr	r2, .L36	@,
	mov	r3, #123	@,
	movw	lr, #:lower16:.LC5	@ tmp145,
	movt	lr, #:upper16:.LC5	@ tmp145,
	str	lr, [sp, #0]	@ tmp145,
	bl	HI_LogOut	@
	mov	r0, #1	@,
	mov	r1, #41	@,
	ldr	r2, .L36+4	@,
	mov	r3, #211	@,
	movw	ip, #:lower16:.LC6	@ tmp148,
	movt	ip, #:upper16:.LC6	@ tmp148,
	str	ip, [sp, #0]	@ tmp148,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.26659,
	b	.L32	@
.L37:
	.align	2
.L36:
	.word	.LANCHOR2+108
	.word	.LANCHOR2+128
	.fnend
	.size	PQ_MNG_InitSharpen, .-PQ_MNG_InitSharpen
	.align	2
	.type	T.326, %function
T.326:
	.fnstart
.LFB852:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #8
	sub	sp, sp, #8	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	ip, #:lower16:.LANCHOR0	@ tmp207,
	movt	ip, #:upper16:.LANCHOR0	@ tmp207,
	ldr	ip, [ip, #12]	@ g_pstPqParam.308, g_pstPqParam
	cmp	ip, #0	@ g_pstPqParam.308,
	beq	.L50	@,
	add	r4, ip, #37888	@ ivtmp.539, g_pstPqParam.308,
	mov	r7, #0	@ i,
	add	ip, r4, #244	@ ivtmp.539, ivtmp.539,
.L42:
	ldr	r6, [ip, #-12]	@ <variable>.u32RegAddr, <variable>.u32RegAddr
	ldr	r5, [ip, #0]	@ u32Value, <variable>.u32Value
	cmp	r6, r1	@ <variable>.u32RegAddr, u32RegAddr
	ldrb	r4, [ip, #-8]	@ zero_extendqisi2	@ u8Lsb, <variable>.u8Lsb
	ldrb	r6, [ip, #-7]	@ zero_extendqisi2	@ u8Msb, <variable>.u8Msb
	ldrb	r8, [ip, #-6]	@ zero_extendqisi2	@ u8SourceMode, <variable>.u8SourceMode
	ldrb	sl, [ip, #-5]	@ zero_extendqisi2	@ u8OutputMode, <variable>.u8OutputMode
	bne	.L41	@,
	cmp	r4, #16	@ u8Lsb,
	bne	.L41	@,
	cmp	r6, #27	@ u8Msb,
	bne	.L41	@,
	cmp	r8, r2	@ u8SourceMode, u8InMode
	bne	.L41	@,
	cmp	sl, r3	@ u8OutputMode, u8OutMode
	bne	.L41	@,
.L48:
	str	r5, [r0, #0]	@ u32Value,* pu32Value
	mov	r2, r5	@, u32Value
	mov	r0, #65536	@,
	movw	r1, #:lower16:.LC7	@,
	movt	r1, #:upper16:.LC7	@,
	bl	PQ_HAL_PrintMsg	@
	mov	r0, #0	@ D.26781,
.L40:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L41:
	add	r4, ip, #16	@ tmp216, ivtmp.539,
	ldr	r5, [ip, #16]	@ u32Value, <variable>.u32Value
	add	r7, r7, #1	@ tmp215, i,
	ldr	r8, [r4, #-12]	@ <variable>.u32RegAddr, <variable>.u32RegAddr
	ldrb	r6, [r4, #-8]	@ zero_extendqisi2	@ u8Lsb, <variable>.u8Lsb
	cmp	r8, r1	@ <variable>.u32RegAddr, u32RegAddr
	ldrb	ip, [r4, #-7]	@ zero_extendqisi2	@ u8Msb, <variable>.u8Msb
	ldrb	r8, [r4, #-6]	@ zero_extendqisi2	@ u8SourceMode, <variable>.u8SourceMode
	ldrb	sl, [r4, #-5]	@ zero_extendqisi2	@ u8OutputMode, <variable>.u8OutputMode
	bne	.L45	@,
	cmp	r6, #16	@ u8Lsb,
	bne	.L45	@,
	cmp	ip, #27	@ u8Msb,
	bne	.L45	@,
	cmp	r8, r2	@ u8SourceMode, u8InMode
	bne	.L45	@,
	cmp	sl, r3	@ u8OutputMode, u8OutMode
	beq	.L48	@,
.L45:
	add	r7, r7, #1	@ i, tmp215,
	add	ip, r4, #16	@ ivtmp.539, tmp216,
	cmp	r7, #2048	@ i,
	bne	.L42	@,
	mvn	r0, #0	@ D.26781,
	b	.L40	@
.L50:
	mov	r1, #41	@,
	mov	r0, #1	@,
	ldr	r2, .L51	@,
	mov	r3, r1	@,
	movw	lr, #:lower16:.LC0	@ tmp210,
	movt	lr, #:upper16:.LC0	@ tmp210,
	str	lr, [sp, #0]	@ tmp210,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.26781,
	b	.L40	@
.L52:
	.align	2
.L51:
	.word	.LANCHOR2+148
	.fnend
	.size	T.326, .-T.326
	.align	2
	.global	PQ_MNG_SetSharpenStr
	.type	PQ_MNG_SetSharpenStr, %function
PQ_MNG_SetSharpenStr:
	.fnstart
.LFB845:
	@ args = 0, pretend = 0, frame = 16
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
	cmp	r0, #255	@ s32ShpStr,
	mov	r3, #0	@ tmp142,
	mov	r4, r0	@ s32ShpStr, s32ShpStr
	str	r3, [fp, #-36]	@ tmp142, u32Data2
	str	r3, [fp, #-32]	@ tmp142, u32Data1
	bhi	.L58	@,
	uxtb	r5, r1	@ D.26674, u32SourceMode
	uxtb	r7, r2	@ D.26675, u32OutputMode
	sub	r0, fp, #32	@,,
	movw	r1, #:lower16:-120913536	@,
	mov	r2, r5	@, D.26674
	movt	r1, #:upper16:-120913536	@,
	mov	r3, r7	@, D.26675
	bl	T.326	@
	mov	r2, r5	@, D.26674
	mov	r3, r7	@, D.26675
	movw	r1, #:lower16:-120913516	@,
	movt	r1, #:upper16:-120913516	@,
	mov	r6, r0	@ s32Ret,
	sub	r0, fp, #36	@,,
	bl	T.326	@
	orr	r0, r0, r6	@ tmp151,, s32Ret
	cmn	r0, #1	@ tmp151,
	beq	.L59	@,
.L56:
	ldr	r3, [fp, #-32]	@ u32Data1, u32Data1
	sub	r1, fp, #44	@,,
	ldr	r2, [fp, #-36]	@ u32Data2, u32Data2
	mov	r0, r4	@, s32ShpStr
	str	r3, [fp, #-44]	@ u32Data1, stSharpGain.u32HD_Lgain_ratio
	str	r2, [fp, #-40]	@ u32Data2, stSharpGain.u32HD_Cgain_ratio
	bl	PQ_HAL_SetSharpStrReg	@
	movw	r1, #:lower16:.LANCHOR1	@ tmp160,
	movt	r1, #:upper16:.LANCHOR1	@ tmp160,
	mov	r0, #0	@ D.26673,
	str	r4, [r1, #0]	@ s32ShpStr, sg_s32SharpStr
.L55:
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L59:
	mov	r0, #4	@,
	mov	r1, #41	@,
	ldr	r2, .L60	@,
	mov	r3, #241	@,
	mov	lr, #256	@ tmp152,
	mov	ip, #304	@ tmp153,
	str	lr, [fp, #-32]	@ tmp152, u32Data1
	movw	lr, #:lower16:.LC9	@ tmp156,
	str	ip, [fp, #-36]	@ tmp153, u32Data2
	movt	lr, #:upper16:.LC9	@ tmp156,
	str	lr, [sp, #0]	@ tmp156,
	bl	HI_LogOut	@
	b	.L56	@
.L58:
	mov	r0, #1	@,
	mov	r1, #41	@,
	ldr	r2, .L60	@,
	mov	r3, #230	@,
	movw	ip, #:lower16:.LC8	@ tmp146,
	movt	ip, #:upper16:.LC8	@ tmp146,
	str	ip, [sp, #0]	@ tmp146,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.26673,
	b	.L55	@
.L61:
	.align	2
.L60:
	.word	.LANCHOR2+176
	.fnend
	.size	PQ_MNG_SetSharpenStr, .-PQ_MNG_SetSharpenStr
	.section	.rodata
	.align	2
.LANCHOR2 = . + 0
	.type	__func__.26632, %object
	.size	__func__.26632, 18
__func__.26632:
	.ascii	"PQ_MNG_GetSharpEn\000"
	.space	2
	.type	__func__.26641, %object
	.size	__func__.26641, 19
__func__.26641:
	.ascii	"PQ_MNG_SharpDemoEn\000"
	.space	1
	.type	__func__.26702, %object
	.size	__func__.26702, 25
__func__.26702:
	.ascii	"PQ_MNG_EnableSharpenDemo\000"
	.space	3
	.type	__func__.26624, %object
	.size	__func__.26624, 15
__func__.26624:
	.ascii	"PQ_MNG_SharpEn\000"
	.space	1
	.type	__func__.26689, %object
	.size	__func__.26689, 21
__func__.26689:
	.ascii	"PQ_MNG_EnableSharpen\000"
	.space	3
	.type	__func__.26600, %object
	.size	__func__.26600, 17
__func__.26600:
	.ascii	"PQ_MNG_SharpInit\000"
	.space	3
	.type	__func__.26655, %object
	.size	__func__.26655, 19
__func__.26655:
	.ascii	"PQ_MNG_InitSharpen\000"
	.space	1
	.type	__func__.26556, %object
	.size	__func__.26556, 28
__func__.26556:
	.ascii	"PQ_MNG_FindSharpenGainRatio\000"
	.type	__func__.26669, %object
	.size	__func__.26669, 21
__func__.26669:
	.ascii	"PQ_MNG_SetSharpenStr\000"
	.data
	.align	2
.LANCHOR1 = . + 0
	.type	sg_s32SharpStr, %object
	.size	sg_s32SharpStr, 4
sg_s32SharpStr:
	.word	128
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"pointer is NULL!\012\000"
	.space	2
.LC1:
	.ascii	"error in sharpen demo enable!\012\000"
	.space	1
.LC2:
	.ascii	"error in enable sharpen demo!\012\000"
	.space	1
.LC3:
	.ascii	"error in sharpen enable!\012\000"
	.space	2
.LC4:
	.ascii	"error in enable sharpen!\012\000"
	.space	2
.LC5:
	.ascii	"Sharpen InitPhyList error\012\000"
	.space	1
.LC6:
	.ascii	"error in init sharpen!\012\000"
.LC7:
	.ascii	"GetSharpenGainRatio:%d\012\000"
.LC8:
	.ascii	"the value of setting sharpen strength is out of ran"
	.ascii	"ge!\012\000"
.LC9:
	.ascii	"Get SharpGain failure\012\000"
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	g_bShpInitFlag, %object
	.size	g_bShpInitFlag, 4
g_bShpInitFlag:
	.space	4
	.type	sg_enMode, %object
	.size	sg_enMode, 4
sg_enMode:
	.space	4
	.type	sg_bSharpen_EnFlag, %object
	.size	sg_bSharpen_EnFlag, 4
sg_bSharpen_EnFlag:
	.space	4
	.type	g_pstPqParam, %object
	.size	g_pstPqParam, 4
g_pstPqParam:
	.space	4
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
