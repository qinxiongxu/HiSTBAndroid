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
	.file	"pq_mng_acm.c"
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
@ -DKBUILD_BASENAME=KBUILD_STR(pq_mng_acm)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_pq) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD drivers/msp/pq/pq_v3_0/mng/.pq_mng_acm.o.d
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/drivers/msp/pq/pq_v3_0/mng/pq_mng_acm.c
@ -mlittle-endian -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -marm -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/pq/pq_v3_0/mng/pq_mng_acm.o -O2 -Wall -Wundef
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
	.global	PQ_MNG_GetColorGainLevel
	.type	PQ_MNG_GetColorGainLevel, %function
PQ_MNG_GetColorGainLevel:
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
	movw	r1, #:lower16:.LANCHOR0	@ tmp135,
	movt	r1, #:upper16:.LANCHOR0	@ tmp135,
	ldr	r3, [r1, #0]	@ sg_u32ColorLevel, sg_u32ColorLevel
	str	r3, [r0, #0]	@ sg_u32ColorLevel,* pu32ColorLevel
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	PQ_MNG_GetColorGainLevel, .-PQ_MNG_GetColorGainLevel
	.align	2
	.global	PQ_MNG_GetFleshToneLevel
	.type	PQ_MNG_GetFleshToneLevel, %function
PQ_MNG_GetFleshToneLevel:
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
	movw	r1, #:lower16:.LANCHOR0	@ tmp135,
	movt	r1, #:upper16:.LANCHOR0	@ tmp135,
	ldr	r3, [r1, #4]	@ sg_enFleshLevel, sg_enFleshLevel
	str	r3, [r0, #0]	@ sg_enFleshLevel,* pu32FleshToneLevel
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	PQ_MNG_GetFleshToneLevel, .-PQ_MNG_GetFleshToneLevel
	.align	2
	.global	PQ_MNG_GetSixBaseColorLevel
	.type	PQ_MNG_GetSixBaseColorLevel, %function
PQ_MNG_GetSixBaseColorLevel:
	.fnstart
.LFB1404:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp135,
	movt	r3, #:upper16:.LANCHOR0	@ tmp135,
	mov	r2, r0	@ pstSixBaseColorOffset, pstSixBaseColorOffset
	mov	r0, #0	@,
	ldr	r6, [r3, #28]	@ sg_stSixbaseColorOffset.u32YellowOffset, sg_stSixbaseColorOffset.u32YellowOffset
	ldr	r5, [r3, #8]	@ sg_stSixbaseColorOffset.u32RedOffset, sg_stSixbaseColorOffset.u32RedOffset
	ldr	r4, [r3, #12]	@ sg_stSixbaseColorOffset.u32GreenOffset, sg_stSixbaseColorOffset.u32GreenOffset
	ldr	ip, [r3, #16]	@ sg_stSixbaseColorOffset.u32BlueOffset, sg_stSixbaseColorOffset.u32BlueOffset
	ldr	r1, [r3, #20]	@ sg_stSixbaseColorOffset.u32CyanOffset, sg_stSixbaseColorOffset.u32CyanOffset
	ldr	r3, [r3, #24]	@ sg_stSixbaseColorOffset.u32MagentaOffset, sg_stSixbaseColorOffset.u32MagentaOffset
	str	r6, [r2, #20]	@ sg_stSixbaseColorOffset.u32YellowOffset, <variable>.u32YellowOffset
	str	r5, [r2, #0]	@ sg_stSixbaseColorOffset.u32RedOffset, <variable>.u32RedOffset
	stmib	r2, {r4, ip}	@ phole stm
	str	r1, [r2, #12]	@ sg_stSixbaseColorOffset.u32CyanOffset, <variable>.u32CyanOffset
	str	r3, [r2, #16]	@ sg_stSixbaseColorOffset.u32MagentaOffset, <variable>.u32MagentaOffset
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	PQ_MNG_GetSixBaseColorLevel, .-PQ_MNG_GetSixBaseColorLevel
	.align	2
	.global	PQ_MNG_GetColorEnhanceMode
	.type	PQ_MNG_GetColorEnhanceMode, %function
PQ_MNG_GetColorEnhanceMode:
	.fnstart
.LFB1406:
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
	ldr	r3, [r1, #0]	@ sg_enColorSpecModeType, sg_enColorSpecModeType
	str	r3, [r0, #0]	@ sg_enColorSpecModeType,* pu32ColorEnhanceMode
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	PQ_MNG_GetColorEnhanceMode, .-PQ_MNG_GetColorEnhanceMode
	.align	2
	.global	PQ_MNG_GetACMDemoMode
	.type	PQ_MNG_GetACMDemoMode, %function
PQ_MNG_GetACMDemoMode:
	.fnstart
.LFB1411:
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
	ldr	r3, [r1, #4]	@ sg_enMode, sg_enMode
	str	r3, [r0, #0]	@ sg_enMode,* enMode
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	PQ_MNG_GetACMDemoMode, .-PQ_MNG_GetACMDemoMode
	.align	2
	.global	PQ_MNG_SetACMDemoMode
	.type	PQ_MNG_SetACMDemoMode, %function
PQ_MNG_SetACMDemoMode:
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
	mov	r4, r0	@ enMode, enMode
	mov	r1, r4	@, enMode
	mov	r0, #0	@,
	bl	PQ_HAL_SetACMDemoMode	@
	movw	r3, #:lower16:.LANCHOR1	@ tmp135,
	movt	r3, #:upper16:.LANCHOR1	@ tmp135,
	mov	r0, #0	@,
	str	r4, [r3, #4]	@ enMode, sg_enMode
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	PQ_MNG_SetACMDemoMode, .-PQ_MNG_SetACMDemoMode
	.align	2
	.global	PQ_MNG_EnableColorEnhance
	.type	PQ_MNG_EnableColorEnhance, %function
PQ_MNG_EnableColorEnhance:
	.fnstart
.LFB1409:
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
	mov	r1, r0	@ bOnOff, bOnOff
	mov	r0, #0	@,
	bl	PQ_HAL_EnableACM	@
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	PQ_MNG_EnableColorEnhance, .-PQ_MNG_EnableColorEnhance
	.align	2
	.global	PQ_MNG_EnableACMDemo
	.type	PQ_MNG_EnableACMDemo, %function
PQ_MNG_EnableACMDemo:
	.fnstart
.LFB1408:
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
	mov	r1, r0	@ bOnOff, bOnOff
	mov	r0, #0	@,
	bl	PQ_HAL_EnableACMDemo	@
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	PQ_MNG_EnableACMDemo, .-PQ_MNG_EnableACMDemo
	.align	2
	.global	PQ_MNG_SetColorSatGain
	.type	PQ_MNG_SetColorSatGain, %function
PQ_MNG_SetColorSatGain:
	.fnstart
.LFB1403:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #36
	sub	sp, sp, #36	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r0, #0	@
	str	r0, [fp, #-48]	@, %sfp
	beq	.L18	@,
	movw	r5, #:lower16:1374389535	@ tmp222,
	sub	r6, r3, #50	@ tmp221, s32Sat,
	movt	r5, #:upper16:1374389535	@ tmp222,
	mov	r0, #0	@,
	str	r0, [fp, #-52]	@, %sfp
.L19:
	ldr	r4, [fp, #-52]	@, %sfp
	movw	r8, #406	@,
	mov	r7, #0	@ j,
	mul	r9, r8, r4	@ tmp213,,
	mov	r8, r7	@ k, j
.L25:
	mov	r0, #58	@,
	cmp	r8, r2	@ k, s32HueEnd
	movgt	sl, #0	@, tmp246
	movle	sl, #1	@, tmp246
	mla	r3, r0, r7, r9	@ tmp204,, j, tmp213
	cmp	r8, r1	@ k, s32HueStart
	ldr	ip, [fp, #-48]	@, %sfp
	movlt	sl, #0	@, tmp246,
	cmp	sl, #0	@ tmp246,
	add	r4, r3, #4048	@ tmp205, tmp204,
	add	r0, r4, #8	@ tmp205, tmp205,
	add	r3, ip, r0	@ tmp207,, tmp205
	add	ip, r3, #4	@ ivtmp.681, tmp207,
	beq	.L28	@,
	ldrsh	sl, [r3, #4]	@ tmp248, <variable>.as16Sat
	mul	r0, sl, r6	@ tmp249, tmp248, tmp221
	smull	sl, r4, r5, r0	@, tmp251, tmp222, tmp249
	mov	r0, r0, asr #31	@ tmp253, tmp249,
	rsb	sl, r0, r4, asr #4	@, tmp254, tmp253, tmp251,
	strh	sl, [r3, #4]	@ movhi	@ tmp254, <variable>.as16Sat
.L28:
	mov	r3, #0	@ tmp230,
	cmp	r3, r3	@ tmp230,
	add	r0, ip, #2	@ ivtmp.681, ivtmp.681,
	mov	r3, #1	@ k,
	beq	.L40	@,
	cmp	r3, r2	@ k, s32HueEnd
	movgt	r4, #0	@, tmp259
	movle	r4, #1	@, tmp259
	cmp	r3, r1	@ k, s32HueStart
	movlt	r4, #0	@, tmp259,
	cmp	r4, #0	@ tmp259,
	beq	.L30	@,
	ldrsh	sl, [ip, #2]	@ tmp261, <variable>.as16Sat
	mul	r4, sl, r6	@, tmp261, tmp221
	str	r4, [fp, #-64]	@, %sfp
	smull	sl, r4, r5, r4	@,, tmp222,
	ldr	sl, [fp, #-64]	@, %sfp
	str	r4, [fp, #-56]	@, %sfp
	mov	r4, sl, asr #31	@ tmp266,,
	ldr	sl, [fp, #-56]	@, %sfp
	rsb	r4, r4, sl, asr #4	@, tmp267, tmp266,,
	strh	r4, [ip, #2]	@ movhi	@ tmp267, <variable>.as16Sat
.L30:
	add	r3, r3, #1	@ k, k,
	add	r0, r0, #2	@ ivtmp.681, ivtmp.681,
	cmp	r3, #29	@ k,
	beq	.L38	@,
.L40:
	str	r7, [fp, #-56]	@ j, %sfp
.L22:
	cmp	r3, r2	@ k, s32HueEnd
	movgt	r4, #0	@,
	movle	r4, #1	@,
	cmp	r3, r1	@ k, s32HueStart
	add	ip, r3, #1	@ tmp231, k,
	movlt	r4, #0	@,,
	cmp	r4, #0	@ tmp191,
	add	r4, r0, #2	@ tmp232, ivtmp.681,
	beq	.L21	@,
	ldrsh	sl, [r0, #0]	@ tmp193, <variable>.as16Sat
	mul	r3, sl, r6	@ tmp194, tmp193, tmp221
	smull	sl, r7, r5, r3	@, tmp196, tmp222, tmp194
	mov	r3, r3, asr #31	@ tmp199, tmp194,
	rsb	sl, r3, r7, asr #4	@, tmp195, tmp199, tmp196,
	strh	sl, [r0, #0]	@ movhi	@ tmp195, <variable>.as16Sat
.L21:
	cmp	ip, r2	@ tmp231, s32HueEnd
	movgt	r7, #0	@, tmp239
	movle	r7, #1	@, tmp239
	cmp	ip, r1	@ tmp231, s32HueStart
	movlt	r7, #0	@, tmp239,
	cmp	r7, #0	@ tmp239,
	beq	.L33	@,
	ldrsh	sl, [r0, #2]	@ tmp269, <variable>.as16Sat
	mul	r3, sl, r6	@ tmp270, tmp269, tmp221
	smull	sl, r7, r5, r3	@, tmp272, tmp222, tmp270
	mov	sl, r3, asr #31	@ tmp274, tmp270,
	rsb	r3, sl, r7, asr #4	@, tmp275, tmp274, tmp272,
	strh	r3, [r0, #2]	@ movhi	@ tmp275, <variable>.as16Sat
.L33:
	add	r3, ip, #1	@ k, tmp231,
	add	r0, r4, #2	@ ivtmp.681, tmp232,
	cmp	r3, #29	@ k,
	bne	.L22	@,
	ldr	r7, [fp, #-56]	@ j, %sfp
.L38:
	add	r7, r7, #1	@ j, j,
	cmp	r7, #7	@ j,
	bne	.L25	@,
	ldr	ip, [fp, #-52]	@, %sfp
	add	sl, ip, #1	@,,
	str	sl, [fp, #-52]	@, %sfp
	cmp	sl, #5	@,
	bne	.L19	@,
	mov	r0, #0	@ D.36112,
.L20:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L18:
	mov	r0, #1	@,
	mov	r1, #41	@,
	movw	r2, #:lower16:.LANCHOR2	@,
	mov	r3, #412	@,
	movt	r2, #:upper16:.LANCHOR2	@,
	movw	ip, #:lower16:.LC0	@ tmp184,
	movt	ip, #:upper16:.LC0	@ tmp184,
	str	ip, [sp, #0]	@ tmp184,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.36112,
	b	.L20	@
	.fnend
	.size	PQ_MNG_SetColorSatGain, .-PQ_MNG_SetColorSatGain
	.align	2
	.type	PQ_MNG_FindAcmGain, %function
PQ_MNG_FindAcmGain:
	.fnstart
.LFB1399:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #12
	sub	sp, sp, #12	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	ip, #:lower16:.LANCHOR1	@ tmp205,
	movt	ip, #:upper16:.LANCHOR1	@ tmp205,
	ldr	ip, [ip, #8]	@ sg_pstPqParam.435, sg_pstPqParam
	cmp	ip, #0	@ sg_pstPqParam.435,
	beq	.L54	@,
	add	r5, ip, #37888	@ ivtmp.727, sg_pstPqParam.435,
	movw	r4, #:lower16:-120831580	@ tmp215,
	add	ip, r5, #244	@ ivtmp.727, ivtmp.727,
	movt	r4, #:upper16:-120831580	@ tmp215,
	mov	r9, #0	@ i,
.L46:
	ldr	r7, [ip, #-12]	@ <variable>.u32RegAddr, <variable>.u32RegAddr
	add	r6, ip, #16	@ tmp217, ivtmp.727,
	add	r9, r9, #1	@ tmp216, i,
	ldr	r5, [ip, #0]	@ u32Value, <variable>.u32Value
	cmp	r7, r4	@ <variable>.u32RegAddr, tmp215
	ldrb	r8, [ip, #-7]	@ zero_extendqisi2	@ u8Msb, <variable>.u8Msb
	ldrb	r7, [ip, #-8]	@ zero_extendqisi2	@ u8Lsb, <variable>.u8Lsb
	ldrb	sl, [ip, #-6]	@ zero_extendqisi2	@ u8SourceMode, <variable>.u8SourceMode
	bne	.L45	@,
	cmp	r7, r1	@ u8Lsb, u8GainLsb
	bne	.L45	@,
	cmp	r8, r2	@ u8Msb, uGain8Msb
	bne	.L45	@,
	cmp	sl, r3	@ u8SourceMode, u32InMode
	bne	.L45	@,
.L52:
	str	r5, [r0, #0]	@ u32Value,* pu32Value
	mov	r2, r5	@, u32Value
	mov	r0, #16384	@,
	movw	r1, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC2	@,
	bl	PQ_HAL_PrintMsg	@
	mov	r0, #0	@ D.35992,
.L44:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L45:
	ldr	r8, [r6, #-12]	@ <variable>.u32RegAddr, <variable>.u32RegAddr
	ldr	r5, [ip, #16]	@ u32Value, <variable>.u32Value
	cmp	r8, r4	@ <variable>.u32RegAddr, tmp215
	ldrb	ip, [r6, #-8]	@ zero_extendqisi2	@ u8Lsb, <variable>.u8Lsb
	ldrb	r7, [r6, #-7]	@ zero_extendqisi2	@ u8Msb, <variable>.u8Msb
	ldrb	r8, [r6, #-6]	@ zero_extendqisi2	@ u8SourceMode, <variable>.u8SourceMode
	bne	.L49	@,
	cmp	ip, r1	@ u8Lsb, u8GainLsb
	bne	.L49	@,
	cmp	r7, r2	@ u8Msb, uGain8Msb
	bne	.L49	@,
	cmp	r8, r3	@ u8SourceMode, u32InMode
	beq	.L52	@,
.L49:
	add	r9, r9, #1	@ i, tmp216,
	add	ip, r6, #16	@ ivtmp.727, tmp217,
	cmp	r9, #2048	@ i,
	bne	.L46	@,
	mvn	r0, #0	@ D.35992,
	b	.L44	@
.L54:
	mov	r0, #1	@,
	mov	r1, #41	@,
	ldr	r2, .L55	@,
	mov	r3, #234	@,
	movw	lr, #:lower16:.LC1	@ tmp208,
	movt	lr, #:upper16:.LC1	@ tmp208,
	str	lr, [sp, #0]	@ tmp208,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.35992,
	b	.L44	@
.L56:
	.align	2
.L55:
	.word	.LANCHOR2+24
	.fnend
	.size	PQ_MNG_FindAcmGain, .-PQ_MNG_FindAcmGain
	.align	2
	.type	PQ_MNG_GetAcmGain, %function
PQ_MNG_GetAcmGain:
	.fnstart
.LFB1400:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #8
	sub	sp, sp, #8	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r0, #0	@ pu32Luma,
	mov	r4, r1	@ pu32Hue, pu32Hue
	mov	r5, r2	@ pu32Sat, pu32Sat
	mov	r7, r3	@ u32InMode, u32InMode
	beq	.L64	@,
	cmp	r1, #0	@ pu32Hue,
	beq	.L65	@,
	cmp	r2, #0	@ pu32Sat,
	beq	.L66	@,
	mov	r1, #20	@,
	mov	r2, #29	@,
	bl	PQ_MNG_FindAcmGain	@
	mov	r1, #10	@,
	mov	r2, #19	@,
	mov	r3, r7	@, u32InMode
	mov	r6, r0	@ s32Ret.754,
	mov	r0, r4	@, pu32Hue
	bl	PQ_MNG_FindAcmGain	@
	mov	r3, r7	@, u32InMode
	mov	r1, #0	@,
	mov	r2, #9	@,
	orr	r6, r0, r6	@ s32Ret.755,, s32Ret.754
	mov	r0, r5	@, pu32Sat
	bl	PQ_MNG_FindAcmGain	@
	orr	r0, r6, r0	@ s32Ret, s32Ret.755,
.L59:
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L66:
	ldr	r2, .L67	@,
	mov	r0, #1	@,
	mov	r1, #41	@,
	mov	r3, #276	@,
.L63:
	movw	ip, #:lower16:.LC1	@ tmp148,
	movt	ip, #:upper16:.LC1	@ tmp148,
	str	ip, [sp, #0]	@ tmp148,
	bl	HI_LogOut	@
	mvn	r0, #0	@ s32Ret,
	b	.L59	@
.L65:
	mov	r0, #1	@,
	mov	r1, #41	@,
	ldr	r2, .L67	@,
	movw	r3, #275	@,
	b	.L63	@
.L64:
	mov	r0, #1	@,
	mov	r1, #41	@,
	ldr	r2, .L67	@,
	movw	r3, #274	@,
	b	.L63	@
.L68:
	.align	2
.L67:
	.word	.LANCHOR2+44
	.fnend
	.size	PQ_MNG_GetAcmGain, .-PQ_MNG_GetAcmGain
	.align	2
	.global	PQ_MNG_SetColorEnhanceMode
	.type	PQ_MNG_SetColorEnhanceMode, %function
PQ_MNG_SetColorEnhanceMode:
	.fnstart
.LFB1407:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #28
	sub	sp, sp, #28	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r0, #3	@ enColorSpecMode,
	mov	r3, #0	@ tmp142,
	mov	r5, r0	@ enColorSpecMode, enColorSpecMode
	mov	r6, r1	@ u32SourceMode, u32SourceMode
	str	r3, [fp, #-48]	@ tmp142, u32BinSat
	str	r3, [fp, #-40]	@ tmp142, u32BinLuma
	str	r3, [fp, #-44]	@ tmp142, u32BinHue
	bhi	.L82	@,
	movw	r4, #:lower16:.LANCHOR1	@ tmp248,
	movt	r4, #:upper16:.LANCHOR1	@ tmp248,
	ldr	r0, [r4, #12]	@ sg_pstAcmCoef, sg_pstAcmCoef
	cmp	r0, #0	@ sg_pstAcmCoef,
	beq	.L83	@,
	movw	r7, #:lower16:kmalloc_caches	@ tmp153,
	movt	r7, #:upper16:kmalloc_caches	@ tmp153,
	mov	r1, #32	@,
	movw	r2, #6090	@,
	ldr	r0, [r7, #52]	@, kmalloc_caches
	bl	kmem_cache_alloc_trace	@
	subs	r7, r0, #0	@ pstColorParam,
	beq	.L84	@,
	cmp	r5, #2	@ enColorSpecMode,
	beq	.L76	@,
	cmp	r5, #3	@ enColorSpecMode,
	beq	.L77	@,
	ldr	r1, [r4, #12]	@, sg_pstAcmCoef
	cmp	r5, #1	@ enColorSpecMode,
	movw	r2, #6090	@,
	addeq	r1, r1, #6080	@, sg_pstAcmCoef,
	addeq	r1, r1, #10	@,,
	bl	memcpy	@
.L78:
	sub	r0, fp, #40	@,,
	sub	r1, fp, #44	@,,
	sub	r2, fp, #48	@,,
	mov	r3, r6	@, u32SourceMode
	bl	PQ_MNG_GetAcmGain	@
	cmn	r0, #1	@,
	beq	.L85	@,
.L79:
	add	r2, r6, r6, asl #1	@, tmp203, u32SourceMode, u32SourceMode,
	ldr	lr, [fp, #-40]	@ u32BinLuma, u32BinLuma
	ldr	ip, [fp, #-48]	@ u32BinSat.463, u32BinSat
	movw	r0, #:lower16:.LANCHOR0	@ tmp199,
	ldr	r8, [fp, #-44]	@ u32BinHue, u32BinHue
	movt	r0, #:upper16:.LANCHOR0	@ tmp199,
	add	r6, r0, r2, asl #4	@, tmp205, tmp199, tmp203,
	mov	r1, lr	@, u32BinLuma
	mov	r0, #0	@,
	mov	r3, ip	@, u32BinSat.463
	str	ip, [r6, #64]	@ u32BinSat.463, sg_u32ColorGain
	mov	r2, r8	@, u32BinHue
	str	lr, [r6, #56]	@ u32BinLuma, sg_u32ColorGain
	str	r8, [r6, #60]	@ u32BinHue, sg_u32ColorGain
	bl	PQ_HAL_SetACMGain	@
	mov	r0, r7	@, pstColorParam
	bl	PQ_HAL_SetACMParam	@
	cmn	r0, #1	@ s32Ret.783,
	mov	r6, r0	@ s32Ret.783,
	beq	.L86	@,
	mov	r0, r7	@, pstColorParam
	bl	kfree	@
	mov	r0, #0	@ D.36241,
	str	r5, [r4, #0]	@ enColorSpecMode, sg_enColorSpecModeType
.L71:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L77:
	ldr	lr, [r4, #12]	@ sg_pstAcmCoef, sg_pstAcmCoef
	movw	r2, #6090	@,
	add	r3, lr, #18176	@, sg_pstAcmCoef,
	add	r1, r3, #94	@,,
	bl	memcpy	@
	sub	r0, fp, #40	@,,
	sub	r1, fp, #44	@,,
	sub	r2, fp, #48	@,,
	mov	r3, r6	@, u32SourceMode
	bl	PQ_MNG_GetAcmGain	@
	cmn	r0, #1	@,
	bne	.L79	@,
.L85:
	mov	r0, #4	@,
	mov	r1, #41	@,
	ldr	r2, .L87	@,
	movw	r3, #579	@,
	mov	r8, #96	@ tmp193,
	movw	ip, #:lower16:.LC5	@ tmp198,
	str	r8, [fp, #-48]	@ tmp193, u32BinSat
	movt	ip, #:upper16:.LC5	@ tmp198,
	str	r8, [fp, #-40]	@ tmp193, u32BinLuma
	str	r8, [fp, #-44]	@ tmp193, u32BinHue
	str	ip, [sp, #0]	@ tmp198,
	bl	HI_LogOut	@
	b	.L79	@
.L76:
	ldr	r8, [r4, #12]	@ sg_pstAcmCoef, sg_pstAcmCoef
	movw	r2, #6090	@,
	add	r1, r8, #12160	@, sg_pstAcmCoef,
	add	r1, r1, #20	@,,
	bl	memcpy	@
	b	.L78	@
.L82:
	mov	r0, #1	@,
	mov	r1, #41	@,
	ldr	r2, .L87	@,
	mov	r3, #540	@,
	str	r5, [sp, #4]	@ enColorSpecMode,
	movw	ip, #:lower16:.LC3	@ tmp147,
	movt	ip, #:upper16:.LC3	@ tmp147,
	str	ip, [sp, #0]	@ tmp147,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.36241,
	b	.L71	@
.L86:
	mov	r0, r7	@, pstColorParam
	bl	kfree	@
	mov	r0, #1	@,
	mov	r1, #41	@,
	ldr	r2, .L87	@,
	movw	r3, #595	@,
	movw	ip, #:lower16:.LC6	@ tmp245,
	movt	ip, #:upper16:.LC6	@ tmp245,
	str	ip, [sp, #0]	@ tmp245,
	bl	HI_LogOut	@
	mov	r0, r6	@ D.36241, s32Ret.783
	b	.L71	@
.L83:
	mov	r0, #1	@,
	mov	r1, #41	@,
	ldr	r2, .L87	@,
	mov	r3, #544	@,
	movw	lr, #:lower16:.LC1	@ tmp152,
	movt	lr, #:upper16:.LC1	@ tmp152,
	str	lr, [sp, #0]	@ tmp152,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.36241,
	b	.L71	@
.L84:
	ldr	lr, .L87	@ tmp156,
	mov	r0, #1	@,
	mov	r1, #41	@,
	movw	r3, #549	@,
	movw	ip, #:lower16:.LC4	@ tmp157,
	movt	ip, #:upper16:.LC4	@ tmp157,
	mov	r2, lr	@, tmp156
	stmia	sp, {ip, lr}	@ phole stm
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.36241,
	b	.L71	@
.L88:
	.align	2
.L87:
	.word	.LANCHOR2+64
	.fnend
	.size	PQ_MNG_SetColorEnhanceMode, .-PQ_MNG_SetColorEnhanceMode
	.align	2
	.global	PQ_MNG_SetSixBaseColorLevel
	.type	PQ_MNG_SetSixBaseColorLevel, %function
PQ_MNG_SetSixBaseColorLevel:
	.fnstart
.LFB1405:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #28
	sub	sp, sp, #28	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r8, #:lower16:.LANCHOR1	@ tmp158,
	movt	r8, #:upper16:.LANCHOR1	@ tmp158,
	ldr	r3, [r0, #20]	@ <variable>.u32YellowOffset, <variable>.u32YellowOffset
	ldr	r5, [r0, #0]	@ <variable>.u32RedOffset, <variable>.u32RedOffset
	mov	r7, r1	@ u32SourceMode, u32SourceMode
	ldr	r6, [r8, #12]	@ sg_pstAcmCoef, sg_pstAcmCoef
	movw	r4, #:lower16:.LANCHOR0	@ tmp249,
	ldr	lr, [r0, #4]	@ <variable>.u32GreenOffset, <variable>.u32GreenOffset
	movt	r4, #:upper16:.LANCHOR0	@ tmp249,
	ldr	ip, [r0, #8]	@ <variable>.u32BlueOffset, <variable>.u32BlueOffset
	cmp	r6, #0	@ sg_pstAcmCoef,
	ldr	r1, [r0, #12]	@ <variable>.u32CyanOffset, <variable>.u32CyanOffset
	mov	r6, #0	@ tmp143,
	ldr	r2, [r0, #16]	@ <variable>.u32MagentaOffset, <variable>.u32MagentaOffset
	str	r5, [r4, #8]	@ <variable>.u32RedOffset, sg_stSixbaseColorOffset.u32RedOffset
	str	lr, [r4, #12]	@ <variable>.u32GreenOffset, sg_stSixbaseColorOffset.u32GreenOffset
	str	ip, [r4, #16]	@ <variable>.u32BlueOffset, sg_stSixbaseColorOffset.u32BlueOffset
	str	r1, [r4, #20]	@ <variable>.u32CyanOffset, sg_stSixbaseColorOffset.u32CyanOffset
	str	r2, [r4, #24]	@ <variable>.u32MagentaOffset, sg_stSixbaseColorOffset.u32MagentaOffset
	str	r3, [r4, #28]	@ <variable>.u32YellowOffset, sg_stSixbaseColorOffset.u32YellowOffset
	str	r6, [fp, #-40]	@ tmp143, u32BinLuma
	str	r6, [fp, #-44]	@ tmp143, u32BinHue
	str	r6, [fp, #-48]	@ tmp143, u32BinSat
	beq	.L96	@,
	movw	r5, #:lower16:kmalloc_caches	@ tmp163,
	movt	r5, #:upper16:kmalloc_caches	@ tmp163,
	mov	r1, #32	@,
	movw	r2, #6090	@,
	ldr	r0, [r5, #52]	@, kmalloc_caches
	bl	kmem_cache_alloc_trace	@
	subs	r5, r0, #0	@ pstColorParam,
	beq	.L97	@,
	ldr	r1, [r8, #12]	@ sg_pstAcmCoef, sg_pstAcmCoef
	movw	r2, #6090	@,
	add	r3, r1, #30208	@, sg_pstAcmCoef,
	add	r1, r3, #242	@,,
	bl	memcpy	@
	mov	r1, #3	@,
	mov	r2, #11	@,
	ldr	r3, [r4, #8]	@, sg_stSixbaseColorOffset.u32RedOffset
	mov	r0, r5	@, pstColorParam
	bl	PQ_MNG_SetColorSatGain	@
	mov	r2, #23	@,
	ldr	r3, [r4, #12]	@, sg_stSixbaseColorOffset.u32GreenOffset
	mov	r1, #21	@,
	mov	r0, r5	@, pstColorParam
	bl	PQ_MNG_SetColorSatGain	@
	mov	r1, r6	@, tmp143
	mov	r2, #1	@,
	ldr	r3, [r4, #16]	@, sg_stSixbaseColorOffset.u32BlueOffset
	mov	r0, r5	@, pstColorParam
	bl	PQ_MNG_SetColorSatGain	@
	mov	r1, #26	@,
	mov	r2, #28	@,
	ldr	r3, [r4, #16]	@, sg_stSixbaseColorOffset.u32BlueOffset
	mov	r0, r5	@, pstColorParam
	bl	PQ_MNG_SetColorSatGain	@
	mov	r1, #24	@,
	mov	r2, #26	@,
	ldr	r3, [r4, #20]	@, sg_stSixbaseColorOffset.u32CyanOffset
	mov	r0, r5	@, pstColorParam
	bl	PQ_MNG_SetColorSatGain	@
	mov	r1, #2	@,
	mov	r2, #3	@,
	ldr	r3, [r4, #24]	@, sg_stSixbaseColorOffset.u32MagentaOffset
	mov	r0, r5	@, pstColorParam
	bl	PQ_MNG_SetColorSatGain	@
	mov	r1, #14	@,
	mov	r2, #20	@,
	ldr	r3, [r4, #28]	@, sg_stSixbaseColorOffset.u32YellowOffset
	mov	r0, r5	@, pstColorParam
	bl	PQ_MNG_SetColorSatGain	@
	sub	r0, fp, #40	@,,
	sub	r1, fp, #44	@,,
	sub	r2, fp, #48	@,,
	mov	r3, r7	@, u32SourceMode
	bl	PQ_MNG_GetAcmGain	@
	cmn	r0, #1	@,
	beq	.L98	@,
.L93:
	add	r7, r7, r7, asl #1	@, tmp205, u32SourceMode, u32SourceMode,
	ldr	r3, [fp, #-40]	@ u32BinLuma, u32BinLuma
	ldr	ip, [fp, #-44]	@ u32BinHue, u32BinHue
	mov	r0, #0	@,
	ldr	lr, [fp, #-48]	@ u32BinSat.455, u32BinSat
	add	r4, r4, r7, asl #4	@, tmp207, tmp249, tmp205,
	mov	r1, r3	@, u32BinLuma
	str	r3, [r4, #56]	@ u32BinLuma, sg_u32ColorGain
	mov	r2, ip	@, u32BinHue
	str	lr, [r4, #64]	@ u32BinSat.455, sg_u32ColorGain
	mov	r3, lr	@, u32BinSat.455
	str	ip, [r4, #60]	@ u32BinHue, sg_u32ColorGain
	bl	PQ_HAL_SetACMGain	@
	mov	r0, r5	@, pstColorParam
	bl	PQ_HAL_SetACMParam	@
	cmn	r0, #1	@ s32Ret.810,
	mov	r4, r0	@ s32Ret.810,
	beq	.L99	@,
	mov	r0, r5	@, pstColorParam
	bl	kfree	@
	mov	r0, #0	@ D.36159,
.L91:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L98:
	mov	r0, #4	@,
	mov	r1, #41	@,
	ldr	r2, .L100	@,
	movw	r3, #493	@,
	mov	lr, #96	@ tmp195,
	movw	ip, #:lower16:.LC5	@ tmp200,
	str	lr, [fp, #-48]	@ tmp195, u32BinSat
	movt	ip, #:upper16:.LC5	@ tmp200,
	str	lr, [fp, #-40]	@ tmp195, u32BinLuma
	str	lr, [fp, #-44]	@ tmp195, u32BinHue
	str	ip, [sp, #0]	@ tmp200,
	bl	HI_LogOut	@
	b	.L93	@
.L99:
	mov	r0, r5	@, pstColorParam
	bl	kfree	@
	mov	r0, #1	@,
	mov	r1, #41	@,
	ldr	r2, .L100	@,
	movw	r3, #509	@,
	movw	ip, #:lower16:.LC7	@ tmp247,
	movt	ip, #:upper16:.LC7	@ tmp247,
	str	ip, [sp, #0]	@ tmp247,
	bl	HI_LogOut	@
	mov	r0, r4	@ D.36159, s32Ret.810
	b	.L91	@
.L96:
	mov	r0, #1	@,
	mov	r1, #41	@,
	ldr	r2, .L100	@,
	movw	r3, #467	@,
	movw	ip, #:lower16:.LC1	@ tmp162,
	movt	ip, #:upper16:.LC1	@ tmp162,
	str	ip, [sp, #0]	@ tmp162,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.36159,
	b	.L91	@
.L97:
	ldr	lr, .L100	@ tmp166,
	mov	r0, #1	@,
	mov	r1, #41	@,
	mov	r3, #472	@,
	movw	ip, #:lower16:.LC4	@ tmp167,
	movt	ip, #:upper16:.LC4	@ tmp167,
	mov	r2, lr	@, tmp166
	stmia	sp, {ip, lr}	@ phole stm
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.36159,
	b	.L91	@
.L101:
	.align	2
.L100:
	.word	.LANCHOR2+92
	.fnend
	.size	PQ_MNG_SetSixBaseColorLevel, .-PQ_MNG_SetSixBaseColorLevel
	.align	2
	.global	PQ_MNG_SetFleshToneLevel
	.type	PQ_MNG_SetFleshToneLevel, %function
PQ_MNG_SetFleshToneLevel:
	.fnstart
.LFB1402:
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
	cmp	r0, #3	@ enGainLevel,
	mov	r4, #0	@ tmp144,
	mov	r6, r0	@ enGainLevel, enGainLevel
	mov	r5, r1	@ u32SourceMode, u32SourceMode
	str	r4, [fp, #-32]	@ tmp144, u32BinLuma
	str	r4, [fp, #-36]	@ tmp144, u32BinHue
	str	r4, [fp, #-40]	@ tmp144, u32BinSat
	bhi	.L121	@,
	cmp	r1, #3	@ u32SourceMode,
	bhi	.L122	@,
.L105:
	movw	r4, #:lower16:.LANCHOR1	@ tmp153,
	movt	r4, #:upper16:.LANCHOR1	@ tmp153,
	ldr	r3, [r4, #12]	@ sg_pstAcmCoef, sg_pstAcmCoef
	cmp	r3, #0	@ sg_pstAcmCoef,
	beq	.L123	@,
	movw	r7, #:lower16:kmalloc_caches	@ tmp158,
	movt	r7, #:upper16:kmalloc_caches	@ tmp158,
	mov	r1, #32	@,
	movw	r2, #6090	@,
	ldr	r0, [r7, #52]	@, kmalloc_caches
	bl	kmem_cache_alloc_trace	@
	subs	r7, r0, #0	@ pstColorParam,
	beq	.L124	@,
	ldr	r3, [r4, #12]	@ sg_pstAcmCoef, sg_pstAcmCoef
	movw	r2, #6090	@,
	add	r1, r3, #24320	@, sg_pstAcmCoef,
	add	r1, r1, #40	@,,
	bl	memcpy	@
	sub	r0, fp, #32	@,,
	sub	r1, fp, #36	@,,
	sub	r2, fp, #40	@,,
	mov	r3, r5	@, u32SourceMode
	bl	PQ_MNG_GetAcmGain	@
	cmn	r0, #1	@,
	beq	.L125	@,
.L108:
	mov	r2, r5, asl #1	@ tmp348, u32SourceMode,
	movw	r4, #:lower16:.LANCHOR0	@ tmp347,
	add	r3, r2, r5	@ tmp186, tmp348, u32SourceMode
	movt	r4, #:upper16:.LANCHOR0	@ tmp347,
	ldr	lr, [fp, #-32]	@ u32BinLuma, u32BinLuma
	cmp	r5, #2	@ u32SourceMode,
	ldr	r1, [fp, #-36]	@ u32BinHue, u32BinHue
	add	ip, r4, r3, asl #4	@, tmp188, tmp347, tmp186,
	ldr	r0, [fp, #-40]	@ u32BinSat, u32BinSat
	str	lr, [ip, #56]	@ u32BinLuma, sg_u32ColorGain
	str	r1, [ip, #60]	@ u32BinHue, sg_u32ColorGain
	str	r0, [ip, #64]	@ u32BinSat, sg_u32ColorGain
	beq	.L111	@,
	cmp	r5, #3	@ u32SourceMode,
	beq	.L112	@,
	cmp	r5, #1	@ u32SourceMode,
	beq	.L110	@,
	ldr	r1, [r4, #56]	@ sg_u32ColorGain, sg_u32ColorGain
	ldr	ip, [r4, #64]	@ sg_u32ColorGain, sg_u32ColorGain
	sub	r1, r1, #20	@ tmp212, sg_u32ColorGain,
	str	r1, [r4, #44]	@ tmp212, sg_u32ColorGain
	add	r0, ip, #20	@ tmp216, sg_u32ColorGain,
	str	r0, [r4, #76]	@ tmp216, sg_u32ColorGain
.L113:
	cmp	r6, #2	@ enGainLevel,
	beq	.L116	@,
.L127:
	cmp	r6, #3	@ enGainLevel,
	beq	.L117	@,
	add	r5, r2, r5	@ tmp245, tmp348, u32SourceMode
	cmp	r6, #1	@ enGainLevel,
	add	r3, r4, r5, asl #4	@, tmp266, tmp347, tmp245,
	movne	r2, r3	@ tmp247, tmp266
	moveq	r5, r3	@ tmp275, tmp284
	movne	r5, r2	@ tmp256, tmp247
	ldrne	r1, [r2, #32]	@ u32GainLuma, sg_u32ColorGain
	ldreq	r2, [r3, #48]	@ u32GainHue, sg_u32ColorGain
	ldrne	r2, [r5, #36]	@ u32GainHue, sg_u32ColorGain
	ldrne	r3, [r3, #40]	@ u32GainSat, sg_u32ColorGain
	ldreq	r3, [r5, #52]	@ u32GainSat, sg_u32ColorGain
	ldreq	r1, [r5, #44]	@ u32GainLuma, sg_u32ColorGain
.L118:
	mov	r0, #0	@,
	bl	PQ_HAL_SetACMGain	@
	mov	r0, r7	@, pstColorParam
	bl	PQ_HAL_SetACMParam	@
	cmn	r0, #1	@ s32Ret.835,
	mov	r5, r0	@ s32Ret.835,
	beq	.L126	@,
	mov	r0, r7	@, pstColorParam
	bl	kfree	@
	mov	r0, #0	@ D.36070,
	str	r6, [r4, #4]	@ enGainLevel, sg_enFleshLevel
.L104:
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L122:
	mov	r0, #1	@,
	mov	r1, #41	@,
	ldr	r2, .L128	@,
	movw	r3, #331	@,
	str	r5, [sp, #4]	@ u32SourceMode,
	movw	r5, #:lower16:.LC9	@ tmp152,
	movt	r5, #:upper16:.LC9	@ tmp152,
	str	r5, [sp, #0]	@ tmp152,
	bl	HI_LogOut	@
	mov	r5, r4	@ u32SourceMode, tmp144
	b	.L105	@
.L112:
	ldr	ip, [r4, #200]	@ sg_u32ColorGain, sg_u32ColorGain
	cmp	r6, #2	@ enGainLevel,
	ldr	r0, [r4, #208]	@ sg_u32ColorGain, sg_u32ColorGain
	sub	r1, ip, #30	@ tmp236, sg_u32ColorGain,
	str	r1, [r4, #188]	@ tmp236, sg_u32ColorGain
	add	r3, r0, #30	@ tmp240, sg_u32ColorGain,
	str	r3, [r4, #220]	@ tmp240, sg_u32ColorGain
	bne	.L127	@,
.L116:
	add	lr, r2, r5	@ tmp298, tmp348, u32SourceMode
	add	r2, r4, lr, asl #4	@, tmp300, tmp347, tmp298,
	add	r1, r2, #56
	ldmia	r1, {r1, r2, r3}	@ phole ldm
	b	.L118	@
.L117:
	add	r1, r2, r5	@ tmp322, tmp348, u32SourceMode
	add	r0, r4, r1, asl #4	@, tmp324, tmp347, tmp322,
	add	r1, r0, #68
	ldmia	r1, {r1, r2, r3}	@ phole ldm
	b	.L118	@
.L110:
	ldr	r0, [r4, #104]	@ sg_u32ColorGain, sg_u32ColorGain
	ldr	r3, [r4, #112]	@ sg_u32ColorGain, sg_u32ColorGain
	sub	r1, r0, #16	@ tmp220, sg_u32ColorGain,
	str	r1, [r4, #92]	@ tmp220, sg_u32ColorGain
	add	lr, r3, #16	@ tmp224, sg_u32ColorGain,
	str	lr, [r4, #124]	@ tmp224, sg_u32ColorGain
	b	.L113	@
.L111:
	ldr	r1, [r4, #152]	@ sg_u32ColorGain, sg_u32ColorGain
	ldr	lr, [r4, #160]	@ sg_u32ColorGain, sg_u32ColorGain
	sub	r1, r1, #20	@ tmp228, sg_u32ColorGain,
	str	r1, [r4, #140]	@ tmp228, sg_u32ColorGain
	add	ip, lr, #20	@ tmp232, sg_u32ColorGain,
	str	ip, [r4, #172]	@ tmp232, sg_u32ColorGain
	b	.L113	@
.L125:
	mov	r0, #4	@,
	mov	r1, #41	@,
	ldr	r2, .L128	@,
	movw	r3, #350	@,
	mov	lr, #96	@ tmp176,
	movw	r4, #:lower16:.LC5	@ tmp181,
	str	lr, [fp, #-40]	@ tmp176, u32BinSat
	movt	r4, #:upper16:.LC5	@ tmp181,
	str	lr, [fp, #-32]	@ tmp176, u32BinLuma
	str	lr, [fp, #-36]	@ tmp176, u32BinHue
	str	r4, [sp, #0]	@ tmp181,
	bl	HI_LogOut	@
	b	.L108	@
.L121:
	mov	r0, #1	@,
	mov	r1, #41	@,
	ldr	r2, .L128	@,
	movw	r3, #326	@,
	str	r6, [sp, #4]	@ enGainLevel,
	movw	ip, #:lower16:.LC8	@ tmp149,
	movt	ip, #:upper16:.LC8	@ tmp149,
	str	ip, [sp, #0]	@ tmp149,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.36070,
	b	.L104	@
.L126:
	mov	r0, r7	@, pstColorParam
	bl	kfree	@
	mov	r0, #1	@,
	mov	r1, #41	@,
	ldr	r2, .L128	@,
	movw	r3, #393	@,
	movw	ip, #:lower16:.LC10	@ tmp344,
	movt	ip, #:upper16:.LC10	@ tmp344,
	str	ip, [sp, #0]	@ tmp344,
	bl	HI_LogOut	@
	mov	r0, r5	@ D.36070, s32Ret.835
	b	.L104	@
.L123:
	mov	r0, #1	@,
	mov	r1, #41	@,
	ldr	r2, .L128	@,
	movw	r3, #335	@,
	movw	lr, #:lower16:.LC1	@ tmp157,
	movt	lr, #:upper16:.LC1	@ tmp157,
	str	lr, [sp, #0]	@ tmp157,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.36070,
	b	.L104	@
.L124:
	ldr	lr, .L128	@ tmp161,
	mov	r0, #1	@,
	mov	r1, #41	@,
	movw	r3, #339	@,
	movw	ip, #:lower16:.LC4	@ tmp162,
	movt	ip, #:upper16:.LC4	@ tmp162,
	mov	r2, lr	@, tmp161
	stmia	sp, {ip, lr}	@ phole stm
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.36070,
	b	.L104	@
.L129:
	.align	2
.L128:
	.word	.LANCHOR2+120
	.fnend
	.size	PQ_MNG_SetFleshToneLevel, .-PQ_MNG_SetFleshToneLevel
	.align	2
	.global	PQ_MNG_SetColorGainLevel
	.type	PQ_MNG_SetColorGainLevel, %function
PQ_MNG_SetColorGainLevel:
	.fnstart
.LFB1397:
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
	cmp	r0, #255	@ u32GainLevel,
	mov	r4, #0	@ tmp136,
	mov	r5, r0	@ u32GainLevel, u32GainLevel
	str	r4, [fp, #-24]	@ tmp136, u32Gainluma
	str	r4, [fp, #-28]	@ tmp136, u32Gainhue
	str	r4, [fp, #-32]	@ tmp136, u32GainSat
	bhi	.L134	@,
	mov	r1, #1	@,
	mov	r0, r4	@, tmp136
	bl	PQ_HAL_SetACMStretch	@
	mov	r0, r4	@, tmp136
	mov	r1, #1	@,
	bl	PQ_HAL_SetACMClipRange	@
	mov	r0, r4	@, tmp136
	mov	r1, r4	@, tmp136
	bl	PQ_HAL_SetACMCbcrThd	@
	mov	r0, r4	@, tmp136
	sub	r1, fp, #24	@,,
	sub	r2, fp, #28	@,,
	sub	r3, fp, #32	@,,
	bl	PQ_HAL_GetACMGain	@
	mov	r3, r5	@, u32GainLevel
	mov	r0, r4	@, tmp136
	ldr	r1, [fp, #-24]	@, u32Gainluma
	ldr	r2, [fp, #-28]	@, u32Gainhue
	bl	PQ_HAL_SetACMGain	@
	mov	r0, r4	@, tmp136
	mov	r1, #1	@,
	bl	PQ_HAL_EnableACM	@
	movw	r3, #:lower16:.LANCHOR0	@ tmp147,
	movt	r3, #:upper16:.LANCHOR0	@ tmp147,
	mov	r0, r4	@ D.35964, tmp136
	str	r5, [r3, #0]	@ u32GainLevel, sg_u32ColorLevel
.L132:
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L134:
	mov	r0, #1	@,
	mov	r1, #41	@,
	ldr	r2, .L135	@,
	mov	r3, #204	@,
	str	r5, [sp, #4]	@ u32GainLevel,
	movw	ip, #:lower16:.LC11	@ tmp141,
	movt	ip, #:upper16:.LC11	@ tmp141,
	str	ip, [sp, #0]	@ tmp141,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.35964,
	b	.L132	@
.L136:
	.align	2
.L135:
	.word	.LANCHOR2+148
	.fnend
	.size	PQ_MNG_SetColorGainLevel, .-PQ_MNG_SetColorGainLevel
	.align	2
	.global	PQ_MNG_InitColor
	.type	PQ_MNG_InitColor, %function
PQ_MNG_InitColor:
	.fnstart
.LFB1395:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #12
	sub	sp, sp, #12	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r4, #:lower16:.LANCHOR1	@ tmp364,
	movt	r4, #:upper16:.LANCHOR1	@ tmp364,
	mov	r5, r0	@ pstPqParam, pstPqParam
	mov	r6, r1	@ bDefault, bDefault
	ldr	r3, [r4, #16]	@ sg_bColorInitial, sg_bColorInitial
	cmp	r3, #1	@ sg_bColorInitial,
	moveq	r0, #0	@ D.35937,
	beq	.L139	@,
	bl	PQ_HAL_InitACM	@
	cmp	r0, #0	@,
	bne	.L150	@,
	cmp	r5, #0	@ pstPqParam,
	beq	.L151	@,
	cmp	r6, #1	@ bDefault,
	add	r0, r5, #1568	@ tmp152, pstPqParam,
	add	r0, r0, #12	@ tmp152, tmp152,
	str	r5, [r4, #8]	@ pstPqParam, sg_pstPqParam
	str	r0, [r4, #12]	@ tmp152, sg_pstAcmCoef
	beq	.L152	@,
.L143:
	movw	lr, #:lower16:kmalloc_caches	@ tmp338,
	movt	lr, #:upper16:kmalloc_caches	@ tmp338,
	mov	r1, #208	@,
	movw	r2, #6090	@,
	ldr	r0, [lr, #52]	@, kmalloc_caches
	bl	kmem_cache_alloc_trace	@
	subs	r5, r0, #0	@ D.37304,
	beq	.L153	@,
	ldr	r1, [r4, #12]	@, sg_pstAcmCoef
	movw	r2, #6090	@,
	bl	memcpy	@
	mov	r0, r5	@, D.37304
	bl	PQ_HAL_SetACMParam	@
	movw	r4, #:lower16:.LANCHOR1	@ tmp345,
	movt	r4, #:upper16:.LANCHOR1	@ tmp345,
	cmn	r0, #1	@,
	beq	.L154	@,
	mov	r0, r5	@, D.37304
	bl	kfree	@
	mov	r0, #0	@,
	mov	r2, #2	@,
	mov	r1, r0	@,
	mov	r3, r2	@,
	mov	ip, #32	@ tmp354,
	str	ip, [sp, #0]	@ tmp354,
	bl	PQ_MNG_InitPhyList	@
	cmp	r0, #0	@ s32Ret.881
	moveq	r3, #1	@ tmp362,
	streq	r3, [r4, #16]	@ tmp362, sg_bColorInitial
	bne	.L155	@,
.L139:
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L152:
	ldr	r1, .L156	@,
	movw	r2, #2030	@,
	bl	memcpy	@
	ldr	r3, [r4, #12]	@ sg_pstAcmCoef, sg_pstAcmCoef
	ldr	r1, .L156+4	@,
	movw	r2, #2030	@,
	add	r5, r3, #2016	@, sg_pstAcmCoef,
	add	r0, r5, #14	@,,
	bl	memcpy	@
	ldr	r0, [r4, #12]	@ sg_pstAcmCoef, sg_pstAcmCoef
	ldr	r1, .L156+8	@,
	movw	r2, #2030	@,
	add	ip, r0, #4048	@, sg_pstAcmCoef,
	add	r0, ip, #12	@,,
	bl	memcpy	@
	ldr	r3, [r4, #12]	@ sg_pstAcmCoef, sg_pstAcmCoef
	ldr	r1, .L156	@,
	movw	r2, #2030	@,
	add	r5, r3, #6080	@, sg_pstAcmCoef,
	add	r0, r5, #10	@,,
	bl	memcpy	@
	ldr	r0, [r4, #12]	@ sg_pstAcmCoef, sg_pstAcmCoef
	ldr	r1, .L156+4	@,
	movw	r2, #2030	@,
	add	ip, r0, #8064	@, sg_pstAcmCoef,
	add	r0, ip, #56	@,,
	bl	memcpy	@
	ldr	r3, [r4, #12]	@ sg_pstAcmCoef, sg_pstAcmCoef
	ldr	r1, .L156+8	@,
	movw	r2, #2030	@,
	add	r5, r3, #10112	@, sg_pstAcmCoef,
	add	r0, r5, #38	@,,
	bl	memcpy	@
	ldr	r0, [r4, #12]	@ sg_pstAcmCoef, sg_pstAcmCoef
	ldr	r1, .L156	@,
	movw	r2, #2030	@,
	add	ip, r0, #12160	@, sg_pstAcmCoef,
	add	r0, ip, #20	@,,
	bl	memcpy	@
	ldr	r3, [r4, #12]	@ sg_pstAcmCoef, sg_pstAcmCoef
	ldr	r1, .L156+4	@,
	movw	r2, #2030	@,
	add	r5, r3, #14208	@, sg_pstAcmCoef,
	add	r0, r5, #2	@,,
	bl	memcpy	@
	ldr	r0, [r4, #12]	@ sg_pstAcmCoef, sg_pstAcmCoef
	ldr	r1, .L156+8	@,
	movw	r2, #2030	@,
	add	ip, r0, #16192	@, sg_pstAcmCoef,
	add	r0, ip, #48	@,,
	bl	memcpy	@
	ldr	r3, [r4, #12]	@ sg_pstAcmCoef, sg_pstAcmCoef
	ldr	r1, .L156	@,
	movw	r2, #2030	@,
	add	r5, r3, #18176	@, sg_pstAcmCoef,
	add	r0, r5, #94	@,,
	bl	memcpy	@
	ldr	r0, [r4, #12]	@ sg_pstAcmCoef, sg_pstAcmCoef
	ldr	r1, .L156+4	@,
	movw	r2, #2030	@,
	add	ip, r0, #20224	@, sg_pstAcmCoef,
	add	r0, ip, #76	@,,
	bl	memcpy	@
	ldr	r3, [r4, #12]	@ sg_pstAcmCoef, sg_pstAcmCoef
	ldr	r1, .L156+8	@,
	movw	r2, #2030	@,
	add	r5, r3, #22272	@, sg_pstAcmCoef,
	add	r0, r5, #58	@,,
	bl	memcpy	@
	ldr	r0, [r4, #12]	@ sg_pstAcmCoef, sg_pstAcmCoef
	ldr	r1, .L156	@,
	movw	r2, #2030	@,
	add	ip, r0, #24320	@, sg_pstAcmCoef,
	add	r0, ip, #40	@,,
	bl	memcpy	@
	ldr	r3, [r4, #12]	@ sg_pstAcmCoef, sg_pstAcmCoef
	ldr	r1, .L156+4	@,
	movw	r2, #2030	@,
	add	r5, r3, #26368	@, sg_pstAcmCoef,
	add	r0, r5, #22	@,,
	bl	memcpy	@
	ldr	r0, [r4, #12]	@ sg_pstAcmCoef, sg_pstAcmCoef
	ldr	r1, .L156+8	@,
	movw	r2, #2030	@,
	add	ip, r0, #28416	@, sg_pstAcmCoef,
	add	r0, ip, #4	@,,
	bl	memcpy	@
	ldr	r3, [r4, #12]	@ sg_pstAcmCoef, sg_pstAcmCoef
	ldr	r1, .L156	@,
	movw	r2, #2030	@,
	add	r5, r3, #30208	@, sg_pstAcmCoef,
	add	r0, r5, #242	@,,
	bl	memcpy	@
	ldr	r0, [r4, #12]	@ sg_pstAcmCoef, sg_pstAcmCoef
	ldr	r1, .L156+4	@,
	movw	r2, #2030	@,
	add	ip, r0, #32256	@, sg_pstAcmCoef,
	add	r0, ip, #224	@,,
	bl	memcpy	@
	ldr	r3, [r4, #12]	@ sg_pstAcmCoef, sg_pstAcmCoef
	ldr	r1, .L156+8	@,
	movw	r2, #2030	@,
	add	r5, r3, #34304	@, sg_pstAcmCoef,
	add	r0, r5, #206	@,,
	bl	memcpy	@
	b	.L143	@
.L150:
	mov	r0, #1	@,
	mov	r1, #41	@,
	ldr	r2, .L156+12	@,
	mov	r3, #157	@,
	movw	ip, #:lower16:.LC12	@ tmp146,
	movt	ip, #:upper16:.LC12	@ tmp146,
	str	ip, [sp, #0]	@ tmp146,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.35937,
	b	.L139	@
.L155:
	mov	r0, #1	@,
	mov	r1, #41	@,
	ldr	r2, .L156+12	@,
	mov	r3, #178	@,
	movw	ip, #:lower16:.LC15	@ tmp360,
	movt	ip, #:upper16:.LC15	@ tmp360,
	str	ip, [sp, #0]	@ tmp360,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.35937,
	b	.L139	@
.L154:
	mov	r0, r5	@, D.37304
	bl	kfree	@
	mov	r0, #1	@,
	mov	r1, #41	@,
	ldr	r2, .L156+16	@,
	mov	r3, #134	@,
	movw	ip, #:lower16:.LC7	@ tmp353,
	movt	ip, #:upper16:.LC7	@ tmp353,
	str	ip, [sp, #0]	@ tmp353,
	bl	HI_LogOut	@
.L142:
	mov	r0, #1	@,
	mov	r1, #41	@,
	ldr	r2, .L156+12	@,
	mov	r3, #171	@,
	movw	lr, #:lower16:.LC14	@ tmp357,
	movt	lr, #:upper16:.LC14	@ tmp357,
	str	lr, [sp, #0]	@ tmp357,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.35937,
	b	.L139	@
.L153:
	ldr	lr, .L156+16	@ tmp341,
	mov	r0, #1	@,
	mov	r1, #41	@,
	mov	r3, #125	@,
	movw	ip, #:lower16:.LC13	@ tmp342,
	movt	ip, #:upper16:.LC13	@ tmp342,
	mov	r2, lr	@, tmp341
	stmia	sp, {ip, lr}	@ phole stm
	bl	HI_LogOut	@
	b	.L142	@
.L151:
	mov	r0, #1	@,
	mov	r1, #41	@,
	ldr	r2, .L156+16	@,
	mov	r3, #91	@,
	movw	lr, #:lower16:.LC1	@ tmp149,
	movt	lr, #:upper16:.LC1	@ tmp149,
	str	lr, [sp, #0]	@ tmp149,
	bl	HI_LogOut	@
	b	.L142	@
.L157:
	.align	2
.L156:
	.word	.LANCHOR0+224
	.word	.LANCHOR0+2256
	.word	.LANCHOR3-3896
	.word	.LANCHOR2+176
	.word	.LANCHOR2+196
	.fnend
	.size	PQ_MNG_InitColor, .-PQ_MNG_InitColor
	.align	2
	.global	PQ_MNG_DeInitColor
	.type	PQ_MNG_DeInitColor, %function
PQ_MNG_DeInitColor:
	.fnstart
.LFB1392:
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
	movw	r4, #:lower16:.LANCHOR1	@ tmp134,
	movt	r4, #:upper16:.LANCHOR1	@ tmp134,
	ldr	r3, [r4, #16]	@ sg_bColorInitial, sg_bColorInitial
	cmp	r3, #0	@ sg_bColorInitial,
	beq	.L159	@,
	bl	PQ_HAL_DeInitACM	@
	mov	r0, #0	@ tmp137,
	str	r0, [r4, #16]	@ tmp137, sg_bColorInitial
	str	r0, [r4, #12]	@ tmp137, sg_pstAcmCoef
.L159:
	mov	r0, #0	@,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	PQ_MNG_DeInitColor, .-PQ_MNG_DeInitColor
	.global	s16HueLut
	.global	s16SatLut
	.global	s16LumaLut
	.section	.rodata
	.align	2
.LANCHOR2 = . + 0
	.type	__func__.36100, %object
	.size	__func__.36100, 23
__func__.36100:
	.ascii	"PQ_MNG_SetColorSatGain\000"
	.space	1
	.type	__func__.35984, %object
	.size	__func__.35984, 19
__func__.35984:
	.ascii	"PQ_MNG_FindAcmGain\000"
	.space	1
	.type	__func__.36012, %object
	.size	__func__.36012, 18
__func__.36012:
	.ascii	"PQ_MNG_GetAcmGain\000"
	.space	2
	.type	__func__.36232, %object
	.size	__func__.36232, 27
__func__.36232:
	.ascii	"PQ_MNG_SetColorEnhanceMode\000"
	.space	1
	.type	__func__.36149, %object
	.size	__func__.36149, 28
__func__.36149:
	.ascii	"PQ_MNG_SetSixBaseColorLevel\000"
	.type	__func__.36061, %object
	.size	__func__.36061, 25
__func__.36061:
	.ascii	"PQ_MNG_SetFleshToneLevel\000"
	.space	3
	.type	__func__.35961, %object
	.size	__func__.35961, 25
__func__.35961:
	.ascii	"PQ_MNG_SetColorGainLevel\000"
	.space	3
	.type	__func__.35933, %object
	.size	__func__.35933, 17
__func__.35933:
	.ascii	"PQ_MNG_InitColor\000"
	.space	3
	.type	__func__.35893, %object
	.size	__func__.35893, 18
__func__.35893:
	.ascii	"PQ_MNG_ACMLUTInit\000"
	.data
	.align	2
.LANCHOR0 = . + 0
.LANCHOR3 = . + 8184
	.type	sg_u32ColorLevel, %object
	.size	sg_u32ColorLevel, 4
sg_u32ColorLevel:
	.word	128
	.type	sg_enFleshLevel, %object
	.size	sg_enFleshLevel, 4
sg_enFleshLevel:
	.word	2
	.type	sg_stSixbaseColorOffset, %object
	.size	sg_stSixbaseColorOffset, 24
sg_stSixbaseColorOffset:
@ u32RedOffset:
	.word	50
@ u32GreenOffset:
	.word	50
@ u32BlueOffset:
	.word	50
@ u32CyanOffset:
	.word	50
@ u32MagentaOffset:
	.word	50
@ u32YellowOffset:
	.word	50
	.type	sg_u32ColorGain, %object
	.size	sg_u32ColorGain, 192
sg_u32ColorGain:
	.word	0
	.word	0
	.word	0
	.word	72
	.word	72
	.word	72
	.word	112
	.word	112
	.word	112
	.word	156
	.word	156
	.word	156
	.word	0
	.word	0
	.word	0
	.word	64
	.word	64
	.word	64
	.word	98
	.word	98
	.word	98
	.word	122
	.word	122
	.word	122
	.word	0
	.word	0
	.word	0
	.word	72
	.word	72
	.word	72
	.word	112
	.word	112
	.word	112
	.word	156
	.word	156
	.word	156
	.word	0
	.word	0
	.word	0
	.word	88
	.word	88
	.word	88
	.word	128
	.word	128
	.word	128
	.word	172
	.word	172
	.word	172
	.type	s16LumaLut, %object
	.size	s16LumaLut, 2030
s16LumaLut:
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	-13
	.short	-16
	.short	-15
	.short	-13
	.short	-8
	.short	-6
	.short	-4
	.short	-3
	.short	-3
	.short	0
	.short	9
	.short	13
	.short	9
	.short	-2
	.short	-4
	.short	-4
	.short	-3
	.short	-3
	.short	-4
	.short	-7
	.short	-13
	.short	-7
	.short	-4
	.short	-4
	.short	-5
	.short	-8
	.short	-12
	.short	-18
	.short	-13
	.short	-27
	.short	-32
	.short	-31
	.short	-27
	.short	-17
	.short	-12
	.short	-9
	.short	-7
	.short	-6
	.short	-1
	.short	18
	.short	27
	.short	18
	.short	-4
	.short	-8
	.short	-8
	.short	-7
	.short	-7
	.short	-8
	.short	-14
	.short	-27
	.short	-14
	.short	-8
	.short	-8
	.short	-10
	.short	-16
	.short	-25
	.short	-37
	.short	-27
	.short	-35
	.short	-41
	.short	-39
	.short	-34
	.short	-22
	.short	-15
	.short	-11
	.short	-9
	.short	-7
	.short	-2
	.short	23
	.short	34
	.short	23
	.short	-5
	.short	-11
	.short	-10
	.short	-9
	.short	-8
	.short	-11
	.short	-18
	.short	-34
	.short	-18
	.short	-11
	.short	-10
	.short	-13
	.short	-21
	.short	-31
	.short	-46
	.short	-35
	.short	-41
	.short	-48
	.short	-46
	.short	-40
	.short	-26
	.short	-18
	.short	-13
	.short	-11
	.short	-9
	.short	-2
	.short	27
	.short	40
	.short	27
	.short	-6
	.short	-13
	.short	-12
	.short	-11
	.short	-10
	.short	-13
	.short	-22
	.short	-40
	.short	-22
	.short	-13
	.short	-12
	.short	-15
	.short	-25
	.short	-38
	.short	-55
	.short	-41
	.short	-48
	.short	-57
	.short	-55
	.short	-47
	.short	-31
	.short	-21
	.short	-16
	.short	-13
	.short	-10
	.short	-3
	.short	32
	.short	47
	.short	32
	.short	-7
	.short	-15
	.short	-14
	.short	-13
	.short	-12
	.short	-15
	.short	-25
	.short	-47
	.short	-25
	.short	-15
	.short	-14
	.short	-18
	.short	-29
	.short	-44
	.short	-65
	.short	-48
	.short	-55
	.short	-65
	.short	-62
	.short	-54
	.short	-35
	.short	-24
	.short	-18
	.short	-15
	.short	-12
	.short	-3
	.short	36
	.short	53
	.short	36
	.short	-8
	.short	-17
	.short	-16
	.short	-15
	.short	-14
	.short	-17
	.short	-29
	.short	-54
	.short	-29
	.short	-17
	.short	-16
	.short	-21
	.short	-33
	.short	-50
	.short	-74
	.short	-55
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	-13
	.short	-16
	.short	-15
	.short	-13
	.short	-8
	.short	-6
	.short	-4
	.short	-3
	.short	-3
	.short	0
	.short	9
	.short	13
	.short	9
	.short	-2
	.short	-4
	.short	-4
	.short	-3
	.short	-3
	.short	-4
	.short	-7
	.short	-13
	.short	-7
	.short	-4
	.short	-4
	.short	-5
	.short	-8
	.short	-12
	.short	-18
	.short	-13
	.short	-27
	.short	-32
	.short	-31
	.short	-27
	.short	-17
	.short	-12
	.short	-9
	.short	-7
	.short	-6
	.short	-1
	.short	18
	.short	27
	.short	18
	.short	-4
	.short	-8
	.short	-8
	.short	-7
	.short	-7
	.short	-8
	.short	-14
	.short	-27
	.short	-14
	.short	-8
	.short	-8
	.short	-10
	.short	-16
	.short	-25
	.short	-37
	.short	-27
	.short	-35
	.short	-41
	.short	-39
	.short	-34
	.short	-22
	.short	-15
	.short	-11
	.short	-9
	.short	-7
	.short	-2
	.short	23
	.short	34
	.short	23
	.short	-5
	.short	-11
	.short	-10
	.short	-9
	.short	-8
	.short	-11
	.short	-18
	.short	-34
	.short	-18
	.short	-11
	.short	-10
	.short	-13
	.short	-21
	.short	-31
	.short	-46
	.short	-35
	.short	-41
	.short	-48
	.short	-46
	.short	-40
	.short	-26
	.short	-18
	.short	-13
	.short	-11
	.short	-9
	.short	-2
	.short	27
	.short	40
	.short	27
	.short	-6
	.short	-13
	.short	-12
	.short	-11
	.short	-10
	.short	-13
	.short	-22
	.short	-40
	.short	-22
	.short	-13
	.short	-12
	.short	-15
	.short	-25
	.short	-38
	.short	-55
	.short	-41
	.short	-48
	.short	-57
	.short	-55
	.short	-47
	.short	-31
	.short	-21
	.short	-16
	.short	-13
	.short	-10
	.short	-3
	.short	32
	.short	47
	.short	32
	.short	-7
	.short	-15
	.short	-14
	.short	-13
	.short	-12
	.short	-15
	.short	-25
	.short	-47
	.short	-25
	.short	-15
	.short	-14
	.short	-18
	.short	-29
	.short	-44
	.short	-65
	.short	-48
	.short	-55
	.short	-65
	.short	-62
	.short	-54
	.short	-35
	.short	-24
	.short	-18
	.short	-15
	.short	-12
	.short	-3
	.short	36
	.short	53
	.short	36
	.short	-8
	.short	-17
	.short	-16
	.short	-15
	.short	-14
	.short	-17
	.short	-29
	.short	-54
	.short	-29
	.short	-17
	.short	-16
	.short	-21
	.short	-33
	.short	-50
	.short	-74
	.short	-55
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	-13
	.short	-16
	.short	-15
	.short	-13
	.short	-8
	.short	-6
	.short	-4
	.short	-3
	.short	-3
	.short	0
	.short	9
	.short	13
	.short	9
	.short	-2
	.short	-4
	.short	-4
	.short	-3
	.short	-3
	.short	-4
	.short	-7
	.short	-13
	.short	-7
	.short	-4
	.short	-4
	.short	-5
	.short	-8
	.short	-12
	.short	-18
	.short	-13
	.short	-27
	.short	-32
	.short	-31
	.short	-27
	.short	-17
	.short	-12
	.short	-9
	.short	-7
	.short	-6
	.short	-1
	.short	18
	.short	27
	.short	18
	.short	-4
	.short	-8
	.short	-8
	.short	-7
	.short	-7
	.short	-8
	.short	-14
	.short	-27
	.short	-14
	.short	-8
	.short	-8
	.short	-10
	.short	-16
	.short	-25
	.short	-37
	.short	-27
	.short	-35
	.short	-41
	.short	-39
	.short	-34
	.short	-22
	.short	-15
	.short	-11
	.short	-9
	.short	-7
	.short	-2
	.short	23
	.short	34
	.short	23
	.short	-5
	.short	-11
	.short	-10
	.short	-9
	.short	-8
	.short	-11
	.short	-18
	.short	-34
	.short	-18
	.short	-11
	.short	-10
	.short	-13
	.short	-21
	.short	-31
	.short	-46
	.short	-35
	.short	-41
	.short	-48
	.short	-46
	.short	-40
	.short	-26
	.short	-18
	.short	-13
	.short	-11
	.short	-9
	.short	-2
	.short	27
	.short	40
	.short	27
	.short	-6
	.short	-13
	.short	-12
	.short	-11
	.short	-10
	.short	-13
	.short	-22
	.short	-40
	.short	-22
	.short	-13
	.short	-12
	.short	-15
	.short	-25
	.short	-38
	.short	-55
	.short	-41
	.short	-48
	.short	-57
	.short	-55
	.short	-47
	.short	-31
	.short	-21
	.short	-16
	.short	-13
	.short	-10
	.short	-3
	.short	32
	.short	47
	.short	32
	.short	-7
	.short	-15
	.short	-14
	.short	-13
	.short	-12
	.short	-15
	.short	-25
	.short	-47
	.short	-25
	.short	-15
	.short	-14
	.short	-18
	.short	-29
	.short	-44
	.short	-65
	.short	-48
	.short	-55
	.short	-65
	.short	-62
	.short	-54
	.short	-35
	.short	-24
	.short	-18
	.short	-15
	.short	-12
	.short	-3
	.short	36
	.short	53
	.short	36
	.short	-8
	.short	-17
	.short	-16
	.short	-15
	.short	-14
	.short	-17
	.short	-29
	.short	-54
	.short	-29
	.short	-17
	.short	-16
	.short	-21
	.short	-33
	.short	-50
	.short	-74
	.short	-55
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	-13
	.short	-16
	.short	-15
	.short	-13
	.short	-8
	.short	-6
	.short	-4
	.short	-3
	.short	-3
	.short	0
	.short	9
	.short	13
	.short	9
	.short	-2
	.short	-4
	.short	-4
	.short	-3
	.short	-3
	.short	-4
	.short	-7
	.short	-13
	.short	-7
	.short	-4
	.short	-4
	.short	-5
	.short	-8
	.short	-12
	.short	-18
	.short	-13
	.short	-27
	.short	-32
	.short	-31
	.short	-27
	.short	-17
	.short	-12
	.short	-9
	.short	-7
	.short	-6
	.short	-1
	.short	18
	.short	27
	.short	18
	.short	-4
	.short	-8
	.short	-8
	.short	-7
	.short	-7
	.short	-8
	.short	-14
	.short	-27
	.short	-14
	.short	-8
	.short	-8
	.short	-10
	.short	-16
	.short	-25
	.short	-37
	.short	-27
	.short	-35
	.short	-41
	.short	-39
	.short	-34
	.short	-22
	.short	-15
	.short	-11
	.short	-9
	.short	-7
	.short	-2
	.short	23
	.short	34
	.short	23
	.short	-5
	.short	-11
	.short	-10
	.short	-9
	.short	-8
	.short	-11
	.short	-18
	.short	-34
	.short	-18
	.short	-11
	.short	-10
	.short	-13
	.short	-21
	.short	-31
	.short	-46
	.short	-35
	.short	-41
	.short	-48
	.short	-46
	.short	-40
	.short	-26
	.short	-18
	.short	-13
	.short	-11
	.short	-9
	.short	-2
	.short	27
	.short	40
	.short	27
	.short	-6
	.short	-13
	.short	-12
	.short	-11
	.short	-10
	.short	-13
	.short	-22
	.short	-40
	.short	-22
	.short	-13
	.short	-12
	.short	-15
	.short	-25
	.short	-38
	.short	-55
	.short	-41
	.short	-48
	.short	-57
	.short	-55
	.short	-47
	.short	-31
	.short	-21
	.short	-16
	.short	-13
	.short	-10
	.short	-3
	.short	32
	.short	47
	.short	32
	.short	-7
	.short	-15
	.short	-14
	.short	-13
	.short	-12
	.short	-15
	.short	-25
	.short	-47
	.short	-25
	.short	-15
	.short	-14
	.short	-18
	.short	-29
	.short	-44
	.short	-65
	.short	-48
	.short	-55
	.short	-65
	.short	-62
	.short	-54
	.short	-35
	.short	-24
	.short	-18
	.short	-15
	.short	-12
	.short	-3
	.short	36
	.short	53
	.short	36
	.short	-8
	.short	-17
	.short	-16
	.short	-15
	.short	-14
	.short	-17
	.short	-29
	.short	-54
	.short	-29
	.short	-17
	.short	-16
	.short	-21
	.short	-33
	.short	-50
	.short	-74
	.short	-55
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	-13
	.short	-16
	.short	-15
	.short	-13
	.short	-8
	.short	-6
	.short	-4
	.short	-3
	.short	-3
	.short	0
	.short	9
	.short	13
	.short	9
	.short	-2
	.short	-4
	.short	-4
	.short	-3
	.short	-3
	.short	-4
	.short	-7
	.short	-13
	.short	-7
	.short	-4
	.short	-4
	.short	-5
	.short	-8
	.short	-12
	.short	-18
	.short	-13
	.short	-27
	.short	-32
	.short	-31
	.short	-27
	.short	-17
	.short	-12
	.short	-9
	.short	-7
	.short	-6
	.short	-1
	.short	18
	.short	27
	.short	18
	.short	-4
	.short	-8
	.short	-8
	.short	-7
	.short	-7
	.short	-8
	.short	-14
	.short	-27
	.short	-14
	.short	-8
	.short	-8
	.short	-10
	.short	-16
	.short	-25
	.short	-37
	.short	-27
	.short	-35
	.short	-41
	.short	-39
	.short	-34
	.short	-22
	.short	-15
	.short	-11
	.short	-9
	.short	-7
	.short	-2
	.short	23
	.short	34
	.short	23
	.short	-5
	.short	-11
	.short	-10
	.short	-9
	.short	-8
	.short	-11
	.short	-18
	.short	-34
	.short	-18
	.short	-11
	.short	-10
	.short	-13
	.short	-21
	.short	-31
	.short	-46
	.short	-35
	.short	-41
	.short	-48
	.short	-46
	.short	-40
	.short	-26
	.short	-18
	.short	-13
	.short	-11
	.short	-9
	.short	-2
	.short	27
	.short	40
	.short	27
	.short	-6
	.short	-13
	.short	-12
	.short	-11
	.short	-10
	.short	-13
	.short	-22
	.short	-40
	.short	-22
	.short	-13
	.short	-12
	.short	-15
	.short	-25
	.short	-38
	.short	-55
	.short	-41
	.short	-48
	.short	-57
	.short	-55
	.short	-47
	.short	-31
	.short	-21
	.short	-16
	.short	-13
	.short	-10
	.short	-3
	.short	32
	.short	47
	.short	32
	.short	-7
	.short	-15
	.short	-14
	.short	-13
	.short	-12
	.short	-15
	.short	-25
	.short	-47
	.short	-25
	.short	-15
	.short	-14
	.short	-18
	.short	-29
	.short	-44
	.short	-65
	.short	-48
	.short	-55
	.short	-65
	.short	-62
	.short	-54
	.short	-35
	.short	-24
	.short	-18
	.short	-15
	.short	-12
	.short	-3
	.short	36
	.short	53
	.short	36
	.short	-8
	.short	-17
	.short	-16
	.short	-15
	.short	-14
	.short	-17
	.short	-29
	.short	-54
	.short	-29
	.short	-17
	.short	-16
	.short	-21
	.short	-33
	.short	-50
	.short	-74
	.short	-55
	.space	2
	.type	s16HueLut, %object
	.size	s16HueLut, 2030
s16HueLut:
	.short	16
	.short	15
	.short	12
	.short	6
	.short	-2
	.short	-3
	.short	-3
	.short	-4
	.short	-3
	.short	-2
	.short	5
	.short	8
	.short	3
	.short	-9
	.short	-17
	.short	-19
	.short	-17
	.short	-15
	.short	-13
	.short	-8
	.short	-1
	.short	17
	.short	21
	.short	9
	.short	0
	.short	-5
	.short	-5
	.short	0
	.short	16
	.short	16
	.short	15
	.short	12
	.short	6
	.short	-2
	.short	-3
	.short	-3
	.short	-4
	.short	-3
	.short	-2
	.short	5
	.short	8
	.short	3
	.short	-9
	.short	-17
	.short	-19
	.short	-17
	.short	-15
	.short	-13
	.short	-8
	.short	-1
	.short	17
	.short	21
	.short	9
	.short	0
	.short	-5
	.short	-5
	.short	0
	.short	16
	.short	16
	.short	15
	.short	12
	.short	6
	.short	-2
	.short	-3
	.short	-3
	.short	-4
	.short	-3
	.short	-2
	.short	5
	.short	8
	.short	3
	.short	-9
	.short	-17
	.short	-19
	.short	-17
	.short	-15
	.short	-13
	.short	-8
	.short	-1
	.short	17
	.short	21
	.short	9
	.short	0
	.short	-5
	.short	-5
	.short	0
	.short	16
	.short	16
	.short	15
	.short	12
	.short	6
	.short	-2
	.short	-3
	.short	-3
	.short	-4
	.short	-3
	.short	-2
	.short	5
	.short	8
	.short	3
	.short	-9
	.short	-17
	.short	-19
	.short	-17
	.short	-15
	.short	-13
	.short	-8
	.short	-1
	.short	17
	.short	21
	.short	9
	.short	0
	.short	-5
	.short	-5
	.short	0
	.short	16
	.short	16
	.short	15
	.short	12
	.short	6
	.short	-2
	.short	-3
	.short	-3
	.short	-4
	.short	-3
	.short	-2
	.short	5
	.short	8
	.short	3
	.short	-9
	.short	-17
	.short	-19
	.short	-17
	.short	-15
	.short	-13
	.short	-8
	.short	-1
	.short	17
	.short	21
	.short	9
	.short	0
	.short	-5
	.short	-5
	.short	0
	.short	16
	.short	16
	.short	15
	.short	12
	.short	6
	.short	-2
	.short	-3
	.short	-3
	.short	-4
	.short	-3
	.short	-2
	.short	5
	.short	8
	.short	3
	.short	-9
	.short	-17
	.short	-19
	.short	-17
	.short	-15
	.short	-13
	.short	-8
	.short	-1
	.short	17
	.short	21
	.short	9
	.short	0
	.short	-5
	.short	-5
	.short	0
	.short	16
	.short	16
	.short	15
	.short	12
	.short	6
	.short	-2
	.short	-3
	.short	-3
	.short	-4
	.short	-3
	.short	-2
	.short	5
	.short	8
	.short	3
	.short	-9
	.short	-17
	.short	-19
	.short	-17
	.short	-15
	.short	-13
	.short	-8
	.short	-1
	.short	17
	.short	21
	.short	9
	.short	0
	.short	-5
	.short	-5
	.short	0
	.short	16
	.short	16
	.short	15
	.short	12
	.short	6
	.short	-2
	.short	-3
	.short	-3
	.short	-4
	.short	-3
	.short	-2
	.short	5
	.short	8
	.short	3
	.short	-9
	.short	-17
	.short	-19
	.short	-17
	.short	-15
	.short	-13
	.short	-8
	.short	-1
	.short	17
	.short	21
	.short	9
	.short	0
	.short	-5
	.short	-5
	.short	0
	.short	16
	.short	16
	.short	15
	.short	12
	.short	6
	.short	-2
	.short	-3
	.short	-3
	.short	-4
	.short	-3
	.short	-2
	.short	5
	.short	8
	.short	3
	.short	-9
	.short	-17
	.short	-19
	.short	-17
	.short	-15
	.short	-13
	.short	-8
	.short	-1
	.short	17
	.short	21
	.short	9
	.short	0
	.short	-5
	.short	-5
	.short	0
	.short	16
	.short	16
	.short	15
	.short	12
	.short	6
	.short	-2
	.short	-3
	.short	-3
	.short	-4
	.short	-3
	.short	-2
	.short	5
	.short	8
	.short	3
	.short	-9
	.short	-17
	.short	-19
	.short	-17
	.short	-15
	.short	-13
	.short	-8
	.short	-1
	.short	17
	.short	21
	.short	9
	.short	0
	.short	-5
	.short	-5
	.short	0
	.short	16
	.short	16
	.short	15
	.short	12
	.short	6
	.short	-2
	.short	-3
	.short	-3
	.short	-4
	.short	-3
	.short	-2
	.short	5
	.short	8
	.short	3
	.short	-9
	.short	-17
	.short	-19
	.short	-17
	.short	-15
	.short	-13
	.short	-8
	.short	-1
	.short	17
	.short	21
	.short	9
	.short	0
	.short	-5
	.short	-5
	.short	0
	.short	16
	.short	16
	.short	15
	.short	12
	.short	6
	.short	-2
	.short	-3
	.short	-3
	.short	-4
	.short	-3
	.short	-2
	.short	5
	.short	8
	.short	3
	.short	-9
	.short	-17
	.short	-19
	.short	-17
	.short	-15
	.short	-13
	.short	-8
	.short	-1
	.short	17
	.short	21
	.short	9
	.short	0
	.short	-5
	.short	-5
	.short	0
	.short	16
	.short	16
	.short	15
	.short	12
	.short	6
	.short	-2
	.short	-3
	.short	-3
	.short	-4
	.short	-3
	.short	-2
	.short	5
	.short	8
	.short	3
	.short	-9
	.short	-17
	.short	-19
	.short	-17
	.short	-15
	.short	-13
	.short	-8
	.short	-1
	.short	17
	.short	21
	.short	9
	.short	0
	.short	-5
	.short	-5
	.short	0
	.short	16
	.short	16
	.short	15
	.short	12
	.short	6
	.short	-2
	.short	-3
	.short	-3
	.short	-4
	.short	-3
	.short	-2
	.short	5
	.short	8
	.short	3
	.short	-9
	.short	-17
	.short	-19
	.short	-17
	.short	-15
	.short	-13
	.short	-8
	.short	-1
	.short	17
	.short	21
	.short	9
	.short	0
	.short	-5
	.short	-5
	.short	0
	.short	16
	.short	16
	.short	15
	.short	12
	.short	6
	.short	-2
	.short	-3
	.short	-3
	.short	-4
	.short	-3
	.short	-2
	.short	5
	.short	8
	.short	3
	.short	-9
	.short	-17
	.short	-19
	.short	-17
	.short	-15
	.short	-13
	.short	-8
	.short	-1
	.short	17
	.short	21
	.short	9
	.short	0
	.short	-5
	.short	-5
	.short	0
	.short	16
	.short	16
	.short	15
	.short	12
	.short	6
	.short	-2
	.short	-3
	.short	-3
	.short	-4
	.short	-3
	.short	-2
	.short	5
	.short	8
	.short	3
	.short	-9
	.short	-17
	.short	-19
	.short	-17
	.short	-15
	.short	-13
	.short	-8
	.short	-1
	.short	17
	.short	21
	.short	9
	.short	0
	.short	-5
	.short	-5
	.short	0
	.short	16
	.short	16
	.short	15
	.short	12
	.short	6
	.short	-2
	.short	-3
	.short	-3
	.short	-4
	.short	-3
	.short	-2
	.short	5
	.short	8
	.short	3
	.short	-9
	.short	-17
	.short	-19
	.short	-17
	.short	-15
	.short	-13
	.short	-8
	.short	-1
	.short	17
	.short	21
	.short	9
	.short	0
	.short	-5
	.short	-5
	.short	0
	.short	16
	.short	16
	.short	15
	.short	12
	.short	6
	.short	-2
	.short	-3
	.short	-3
	.short	-4
	.short	-3
	.short	-2
	.short	5
	.short	8
	.short	3
	.short	-9
	.short	-17
	.short	-19
	.short	-17
	.short	-15
	.short	-13
	.short	-8
	.short	-1
	.short	17
	.short	21
	.short	9
	.short	0
	.short	-5
	.short	-5
	.short	0
	.short	16
	.short	16
	.short	15
	.short	12
	.short	6
	.short	-2
	.short	-3
	.short	-3
	.short	-4
	.short	-3
	.short	-2
	.short	5
	.short	8
	.short	3
	.short	-9
	.short	-17
	.short	-19
	.short	-17
	.short	-15
	.short	-13
	.short	-8
	.short	-1
	.short	17
	.short	21
	.short	9
	.short	0
	.short	-5
	.short	-5
	.short	0
	.short	16
	.short	16
	.short	15
	.short	12
	.short	6
	.short	-2
	.short	-3
	.short	-3
	.short	-4
	.short	-3
	.short	-2
	.short	5
	.short	8
	.short	3
	.short	-9
	.short	-17
	.short	-19
	.short	-17
	.short	-15
	.short	-13
	.short	-8
	.short	-1
	.short	17
	.short	21
	.short	9
	.short	0
	.short	-5
	.short	-5
	.short	0
	.short	16
	.short	16
	.short	15
	.short	12
	.short	6
	.short	-2
	.short	-3
	.short	-3
	.short	-4
	.short	-3
	.short	-2
	.short	5
	.short	8
	.short	3
	.short	-9
	.short	-17
	.short	-19
	.short	-17
	.short	-15
	.short	-13
	.short	-8
	.short	-1
	.short	17
	.short	21
	.short	9
	.short	0
	.short	-5
	.short	-5
	.short	0
	.short	16
	.short	16
	.short	15
	.short	12
	.short	6
	.short	-2
	.short	-3
	.short	-3
	.short	-4
	.short	-3
	.short	-2
	.short	5
	.short	8
	.short	3
	.short	-9
	.short	-17
	.short	-19
	.short	-17
	.short	-15
	.short	-13
	.short	-8
	.short	-1
	.short	17
	.short	21
	.short	9
	.short	0
	.short	-5
	.short	-5
	.short	0
	.short	16
	.short	16
	.short	15
	.short	12
	.short	6
	.short	-2
	.short	-3
	.short	-3
	.short	-4
	.short	-3
	.short	-2
	.short	5
	.short	8
	.short	3
	.short	-9
	.short	-17
	.short	-19
	.short	-17
	.short	-15
	.short	-13
	.short	-8
	.short	-1
	.short	17
	.short	21
	.short	9
	.short	0
	.short	-5
	.short	-5
	.short	0
	.short	16
	.short	16
	.short	15
	.short	12
	.short	6
	.short	-2
	.short	-3
	.short	-3
	.short	-4
	.short	-3
	.short	-2
	.short	5
	.short	8
	.short	3
	.short	-9
	.short	-17
	.short	-19
	.short	-17
	.short	-15
	.short	-13
	.short	-8
	.short	-1
	.short	17
	.short	21
	.short	9
	.short	0
	.short	-5
	.short	-5
	.short	0
	.short	16
	.short	16
	.short	15
	.short	12
	.short	6
	.short	-2
	.short	-3
	.short	-3
	.short	-4
	.short	-3
	.short	-2
	.short	5
	.short	8
	.short	3
	.short	-9
	.short	-17
	.short	-19
	.short	-17
	.short	-15
	.short	-13
	.short	-8
	.short	-1
	.short	17
	.short	21
	.short	9
	.short	0
	.short	-5
	.short	-5
	.short	0
	.short	16
	.short	16
	.short	15
	.short	12
	.short	6
	.short	-2
	.short	-3
	.short	-3
	.short	-4
	.short	-3
	.short	-2
	.short	5
	.short	8
	.short	3
	.short	-9
	.short	-17
	.short	-19
	.short	-17
	.short	-15
	.short	-13
	.short	-8
	.short	-1
	.short	17
	.short	21
	.short	9
	.short	0
	.short	-5
	.short	-5
	.short	0
	.short	16
	.short	16
	.short	15
	.short	12
	.short	6
	.short	-2
	.short	-3
	.short	-3
	.short	-4
	.short	-3
	.short	-2
	.short	5
	.short	8
	.short	3
	.short	-9
	.short	-17
	.short	-19
	.short	-17
	.short	-15
	.short	-13
	.short	-8
	.short	-1
	.short	17
	.short	21
	.short	9
	.short	0
	.short	-5
	.short	-5
	.short	0
	.short	16
	.short	16
	.short	15
	.short	12
	.short	6
	.short	-2
	.short	-3
	.short	-3
	.short	-4
	.short	-3
	.short	-2
	.short	5
	.short	8
	.short	3
	.short	-9
	.short	-17
	.short	-19
	.short	-17
	.short	-15
	.short	-13
	.short	-8
	.short	-1
	.short	17
	.short	21
	.short	9
	.short	0
	.short	-5
	.short	-5
	.short	0
	.short	16
	.short	16
	.short	15
	.short	12
	.short	6
	.short	-2
	.short	-3
	.short	-3
	.short	-4
	.short	-3
	.short	-2
	.short	5
	.short	8
	.short	3
	.short	-9
	.short	-17
	.short	-19
	.short	-17
	.short	-15
	.short	-13
	.short	-8
	.short	-1
	.short	17
	.short	21
	.short	9
	.short	0
	.short	-5
	.short	-5
	.short	0
	.short	16
	.short	16
	.short	15
	.short	12
	.short	6
	.short	-2
	.short	-3
	.short	-3
	.short	-4
	.short	-3
	.short	-2
	.short	5
	.short	8
	.short	3
	.short	-9
	.short	-17
	.short	-19
	.short	-17
	.short	-15
	.short	-13
	.short	-8
	.short	-1
	.short	17
	.short	21
	.short	9
	.short	0
	.short	-5
	.short	-5
	.short	0
	.short	16
	.short	16
	.short	15
	.short	12
	.short	6
	.short	-2
	.short	-3
	.short	-3
	.short	-4
	.short	-3
	.short	-2
	.short	5
	.short	8
	.short	3
	.short	-9
	.short	-17
	.short	-19
	.short	-17
	.short	-15
	.short	-13
	.short	-8
	.short	-1
	.short	17
	.short	21
	.short	9
	.short	0
	.short	-5
	.short	-5
	.short	0
	.short	16
	.short	16
	.short	15
	.short	12
	.short	6
	.short	-2
	.short	-3
	.short	-3
	.short	-4
	.short	-3
	.short	-2
	.short	5
	.short	8
	.short	3
	.short	-9
	.short	-17
	.short	-19
	.short	-17
	.short	-15
	.short	-13
	.short	-8
	.short	-1
	.short	17
	.short	21
	.short	9
	.short	0
	.short	-5
	.short	-5
	.short	0
	.short	16
	.short	16
	.short	15
	.short	12
	.short	6
	.short	-2
	.short	-3
	.short	-3
	.short	-4
	.short	-3
	.short	-2
	.short	5
	.short	8
	.short	3
	.short	-9
	.short	-17
	.short	-19
	.short	-17
	.short	-15
	.short	-13
	.short	-8
	.short	-1
	.short	17
	.short	21
	.short	9
	.short	0
	.short	-5
	.short	-5
	.short	0
	.short	16
	.short	16
	.short	15
	.short	12
	.short	6
	.short	-2
	.short	-3
	.short	-3
	.short	-4
	.short	-3
	.short	-2
	.short	5
	.short	8
	.short	3
	.short	-9
	.short	-17
	.short	-19
	.short	-17
	.short	-15
	.short	-13
	.short	-8
	.short	-1
	.short	17
	.short	21
	.short	9
	.short	0
	.short	-5
	.short	-5
	.short	0
	.short	16
	.short	16
	.short	15
	.short	12
	.short	6
	.short	-2
	.short	-3
	.short	-3
	.short	-4
	.short	-3
	.short	-2
	.short	5
	.short	8
	.short	3
	.short	-9
	.short	-17
	.short	-19
	.short	-17
	.short	-15
	.short	-13
	.short	-8
	.short	-1
	.short	17
	.short	21
	.short	9
	.short	0
	.short	-5
	.short	-5
	.short	0
	.short	16
	.space	2
	.type	s16SatLut, %object
	.size	s16SatLut, 2030
s16SatLut:
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	6
	.short	5
	.short	4
	.short	3
	.short	2
	.short	2
	.short	2
	.short	2
	.short	2
	.short	3
	.short	4
	.short	4
	.short	4
	.short	3
	.short	3
	.short	3
	.short	2
	.short	3
	.short	3
	.short	4
	.short	5
	.short	6
	.short	5
	.short	5
	.short	4
	.short	4
	.short	4
	.short	5
	.short	6
	.short	10
	.short	8
	.short	6
	.short	5
	.short	4
	.short	3
	.short	3
	.short	3
	.short	4
	.short	5
	.short	6
	.short	7
	.short	7
	.short	6
	.short	5
	.short	5
	.short	4
	.short	4
	.short	5
	.short	6
	.short	8
	.short	10
	.short	9
	.short	8
	.short	7
	.short	7
	.short	7
	.short	8
	.short	10
	.short	13
	.short	10
	.short	8
	.short	6
	.short	5
	.short	4
	.short	4
	.short	4
	.short	5
	.short	7
	.short	8
	.short	9
	.short	9
	.short	8
	.short	6
	.short	6
	.short	5
	.short	6
	.short	7
	.short	8
	.short	10
	.short	13
	.short	12
	.short	10
	.short	9
	.short	9
	.short	10
	.short	11
	.short	13
	.short	15
	.short	12
	.short	9
	.short	7
	.short	5
	.short	5
	.short	4
	.short	5
	.short	6
	.short	8
	.short	10
	.short	11
	.short	10
	.short	9
	.short	7
	.short	7
	.short	6
	.short	7
	.short	8
	.short	9
	.short	12
	.short	15
	.short	13
	.short	12
	.short	11
	.short	11
	.short	11
	.short	12
	.short	15
	.short	16
	.short	13
	.short	10
	.short	8
	.short	6
	.short	5
	.short	5
	.short	5
	.short	6
	.short	9
	.short	10
	.short	12
	.short	11
	.short	10
	.short	8
	.short	7
	.short	7
	.short	7
	.short	8
	.short	10
	.short	13
	.short	16
	.short	14
	.short	13
	.short	12
	.short	11
	.short	12
	.short	13
	.short	16
	.short	17
	.short	13
	.short	10
	.short	8
	.short	6
	.short	5
	.short	5
	.short	6
	.short	7
	.short	9
	.short	11
	.short	12
	.short	12
	.short	10
	.short	8
	.short	8
	.short	7
	.short	7
	.short	9
	.short	10
	.short	13
	.short	17
	.short	15
	.short	13
	.short	12
	.short	12
	.short	12
	.short	14
	.short	17
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	38
	.short	30
	.short	24
	.short	19
	.short	14
	.short	12
	.short	11
	.short	13
	.short	15
	.short	20
	.short	24
	.short	28
	.short	26
	.short	23
	.short	19
	.short	17
	.short	16
	.short	17
	.short	22
	.short	28
	.short	35
	.short	44
	.short	39
	.short	30
	.short	28
	.short	27
	.short	28
	.short	31
	.short	38
	.short	65
	.short	52
	.short	41
	.short	32
	.short	23
	.short	20
	.short	19
	.short	21
	.short	26
	.short	34
	.short	42
	.short	47
	.short	45
	.short	39
	.short	32
	.short	29
	.short	27
	.short	28
	.short	38
	.short	47
	.short	60
	.short	75
	.short	67
	.short	51
	.short	47
	.short	46
	.short	48
	.short	54
	.short	65
	.short	84
	.short	67
	.short	53
	.short	42
	.short	30
	.short	26
	.short	24
	.short	28
	.short	33
	.short	45
	.short	54
	.short	61
	.short	59
	.short	50
	.short	42
	.short	38
	.short	35
	.short	37
	.short	50
	.short	62
	.short	78
	.short	97
	.short	87
	.short	66
	.short	61
	.short	59
	.short	63
	.short	70
	.short	84
	.short	97
	.short	78
	.short	61
	.short	48
	.short	35
	.short	30
	.short	28
	.short	32
	.short	39
	.short	51
	.short	63
	.short	71
	.short	68
	.short	58
	.short	49
	.short	44
	.short	41
	.short	43
	.short	57
	.short	71
	.short	90
	.short	112
	.short	100
	.short	76
	.short	71
	.short	68
	.short	73
	.short	81
	.short	97
	.short	105
	.short	84
	.short	66
	.short	52
	.short	38
	.short	32
	.short	30
	.short	35
	.short	42
	.short	55
	.short	67
	.short	76
	.short	73
	.short	62
	.short	52
	.short	47
	.short	44
	.short	46
	.short	62
	.short	77
	.short	97
	.short	121
	.short	108
	.short	82
	.short	76
	.short	74
	.short	78
	.short	87
	.short	105
	.short	108
	.short	86
	.short	68
	.short	53
	.short	39
	.short	33
	.short	31
	.short	36
	.short	43
	.short	57
	.short	70
	.short	79
	.short	75
	.short	64
	.short	54
	.short	49
	.short	46
	.short	47
	.short	64
	.short	79
	.short	100
	.short	125
	.short	111
	.short	85
	.short	79
	.short	76
	.short	81
	.short	90
	.short	108
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	49
	.short	40
	.short	31
	.short	24
	.short	18
	.short	15
	.short	14
	.short	16
	.short	20
	.short	26
	.short	32
	.short	36
	.short	35
	.short	29
	.short	25
	.short	22
	.short	21
	.short	22
	.short	29
	.short	35
	.short	44
	.short	55
	.short	49
	.short	39
	.short	36
	.short	35
	.short	37
	.short	41
	.short	49
	.short	85
	.short	68
	.short	53
	.short	42
	.short	31
	.short	26
	.short	24
	.short	28
	.short	34
	.short	45
	.short	55
	.short	62
	.short	59
	.short	50
	.short	42
	.short	38
	.short	36
	.short	37
	.short	50
	.short	61
	.short	76
	.short	95
	.short	84
	.short	66
	.short	62
	.short	60
	.short	63
	.short	70
	.short	85
	.short	110
	.short	88
	.short	69
	.short	54
	.short	40
	.short	34
	.short	32
	.short	36
	.short	44
	.short	58
	.short	71
	.short	80
	.short	77
	.short	66
	.short	55
	.short	50
	.short	46
	.short	48
	.short	65
	.short	79
	.short	99
	.short	123
	.short	110
	.short	86
	.short	80
	.short	78
	.short	82
	.short	91
	.short	110
	.short	127
	.short	102
	.short	80
	.short	63
	.short	46
	.short	39
	.short	37
	.short	42
	.short	50
	.short	67
	.short	82
	.short	93
	.short	89
	.short	76
	.short	63
	.short	57
	.short	54
	.short	56
	.short	75
	.short	91
	.short	114
	.short	142
	.short	127
	.short	99
	.short	93
	.short	90
	.short	95
	.short	106
	.short	127
	.short	137
	.short	110
	.short	86
	.short	68
	.short	49
	.short	42
	.short	40
	.short	45
	.short	54
	.short	73
	.short	88
	.short	100
	.short	96
	.short	82
	.short	68
	.short	62
	.short	58
	.short	60
	.short	81
	.short	98
	.short	123
	.short	153
	.short	136
	.short	107
	.short	100
	.short	96
	.short	102
	.short	114
	.short	137
	.short	141
	.short	113
	.short	88
	.short	70
	.short	51
	.short	43
	.short	41
	.short	47
	.short	56
	.short	75
	.short	91
	.short	103
	.short	99
	.short	84
	.short	71
	.short	64
	.short	60
	.short	62
	.short	83
	.short	101
	.short	126
	.short	158
	.short	141
	.short	111
	.short	103
	.short	99
	.short	105
	.short	117
	.short	141
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	55
	.short	44
	.short	35
	.short	27
	.short	20
	.short	17
	.short	16
	.short	18
	.short	22
	.short	29
	.short	36
	.short	40
	.short	39
	.short	33
	.short	28
	.short	25
	.short	23
	.short	24
	.short	30
	.short	36
	.short	47
	.short	58
	.short	52
	.short	43
	.short	40
	.short	39
	.short	41
	.short	46
	.short	55
	.short	95
	.short	76
	.short	59
	.short	47
	.short	34
	.short	29
	.short	27
	.short	31
	.short	38
	.short	50
	.short	61
	.short	69
	.short	66
	.short	56
	.short	47
	.short	43
	.short	40
	.short	42
	.short	51
	.short	62
	.short	80
	.short	100
	.short	89
	.short	74
	.short	69
	.short	67
	.short	71
	.short	79
	.short	95
	.short	123
	.short	99
	.short	77
	.short	61
	.short	44
	.short	38
	.short	36
	.short	41
	.short	49
	.short	65
	.short	79
	.short	90
	.short	86
	.short	73
	.short	62
	.short	56
	.short	52
	.short	54
	.short	66
	.short	81
	.short	104
	.short	129
	.short	115
	.short	96
	.short	90
	.short	87
	.short	92
	.short	102
	.short	123
	.short	142
	.short	114
	.short	89
	.short	70
	.short	51
	.short	44
	.short	41
	.short	47
	.short	56
	.short	75
	.short	91
	.short	103
	.short	99
	.short	85
	.short	71
	.short	64
	.short	60
	.short	62
	.short	77
	.short	94
	.short	120
	.short	149
	.short	133
	.short	111
	.short	103
	.short	100
	.short	106
	.short	118
	.short	142
	.short	153
	.short	123
	.short	96
	.short	76
	.short	55
	.short	47
	.short	44
	.short	51
	.short	61
	.short	81
	.short	99
	.short	112
	.short	107
	.short	91
	.short	76
	.short	69
	.short	65
	.short	67
	.short	82
	.short	101
	.short	129
	.short	161
	.short	144
	.short	120
	.short	112
	.short	108
	.short	114
	.short	127
	.short	153
	.short	158
	.short	126
	.short	99
	.short	78
	.short	57
	.short	48
	.short	46
	.short	52
	.short	63
	.short	84
	.short	102
	.short	115
	.short	110
	.short	94
	.short	79
	.short	71
	.short	67
	.short	69
	.short	85
	.short	104
	.short	133
	.short	166
	.short	148
	.short	124
	.short	115
	.short	111
	.short	118
	.short	131
	.short	158
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	58
	.short	47
	.short	36
	.short	29
	.short	21
	.short	18
	.short	17
	.short	19
	.short	23
	.short	31
	.short	37
	.short	42
	.short	41
	.short	35
	.short	29
	.short	26
	.short	25
	.short	26
	.short	30
	.short	36
	.short	47
	.short	58
	.short	52
	.short	46
	.short	42
	.short	41
	.short	43
	.short	48
	.short	58
	.short	100
	.short	80
	.short	62
	.short	49
	.short	36
	.short	31
	.short	29
	.short	33
	.short	40
	.short	53
	.short	64
	.short	73
	.short	70
	.short	59
	.short	50
	.short	45
	.short	42
	.short	44
	.short	51
	.short	62
	.short	80
	.short	100
	.short	89
	.short	78
	.short	73
	.short	70
	.short	74
	.short	83
	.short	100
	.short	129
	.short	104
	.short	81
	.short	64
	.short	47
	.short	40
	.short	37
	.short	43
	.short	51
	.short	69
	.short	83
	.short	94
	.short	90
	.short	77
	.short	65
	.short	58
	.short	55
	.short	57
	.short	66
	.short	81
	.short	104
	.short	129
	.short	115
	.short	101
	.short	94
	.short	91
	.short	97
	.short	108
	.short	129
	.short	149
	.short	120
	.short	94
	.short	74
	.short	54
	.short	46
	.short	43
	.short	50
	.short	59
	.short	79
	.short	96
	.short	109
	.short	104
	.short	89
	.short	75
	.short	68
	.short	63
	.short	66
	.short	77
	.short	94
	.short	120
	.short	149
	.short	133
	.short	117
	.short	109
	.short	105
	.short	112
	.short	124
	.short	149
	.short	161
	.short	129
	.short	101
	.short	80
	.short	58
	.short	49
	.short	47
	.short	53
	.short	64
	.short	85
	.short	104
	.short	117
	.short	113
	.short	96
	.short	81
	.short	73
	.short	68
	.short	71
	.short	82
	.short	101
	.short	129
	.short	161
	.short	144
	.short	126
	.short	117
	.short	113
	.short	120
	.short	134
	.short	161
	.short	166
	.short	133
	.short	104
	.short	82
	.short	60
	.short	51
	.short	48
	.short	55
	.short	66
	.short	88
	.short	107
	.short	121
	.short	116
	.short	99
	.short	83
	.short	75
	.short	70
	.short	73
	.short	85
	.short	104
	.short	133
	.short	166
	.short	148
	.short	130
	.short	121
	.short	117
	.short	124
	.short	138
	.short	166
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"pstColorParam is NULL!\012\000"
.LC1:
	.ascii	"pointer is NULL!\012\000"
	.space	2
.LC2:
	.ascii	"GetAcmGain:%d\012\000"
	.space	1
.LC3:
	.ascii	"[%d]Color Enhance Mode Set error!\012\000"
	.space	1
.LC4:
	.ascii	"%s:pstColorParam is Null poniter!\012\000"
	.space	1
.LC5:
	.ascii	"Get AcmGain failure\012\000"
	.space	3
.LC6:
	.ascii	"PQ_MNG_SetColorEnhanceMode failure\012\000"
.LC7:
	.ascii	"PQ_HAL_SetACMParam failure\012\000"
.LC8:
	.ascii	"[%d]Flesh tone level range error!\012\000"
	.space	1
.LC9:
	.ascii	"[%d]Source mode unknown!\012\000"
	.space	2
.LC10:
	.ascii	"PQ_MNG_SetFleshToneLevel failure\012\000"
	.space	2
.LC11:
	.ascii	"%d:ColorGainLevel is over range!\012\000"
	.space	2
.LC12:
	.ascii	"ACM HAL Init error!\012\000"
	.space	3
.LC13:
	.ascii	"%s:pstAcmModeRecmd is Null poniter!\012\000"
	.space	3
.LC14:
	.ascii	"ACM LUT Init failure\012\000"
	.space	2
.LC15:
	.ascii	"ACM InitPhyList error\012\000"
	.bss
	.align	2
.LANCHOR1 = . + 0
	.type	sg_enColorSpecModeType, %object
	.size	sg_enColorSpecModeType, 4
sg_enColorSpecModeType:
	.space	4
	.type	sg_enMode, %object
	.size	sg_enMode, 4
sg_enMode:
	.space	4
	.type	sg_pstPqParam, %object
	.size	sg_pstPqParam, 4
sg_pstPqParam:
	.space	4
	.type	sg_pstAcmCoef, %object
	.size	sg_pstAcmCoef, 4
sg_pstAcmCoef:
	.space	4
	.type	sg_bColorInitial, %object
	.size	sg_bColorInitial, 4
sg_bColorInitial:
	.space	4
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
