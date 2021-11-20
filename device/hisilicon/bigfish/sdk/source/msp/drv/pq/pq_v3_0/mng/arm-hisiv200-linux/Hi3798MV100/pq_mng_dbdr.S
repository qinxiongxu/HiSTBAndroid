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
	.file	"pq_mng_dbdr.c"
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
@ -DKBUILD_BASENAME=KBUILD_STR(pq_mng_dbdr)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_pq) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD drivers/msp/pq/pq_v3_0/mng/.pq_mng_dbdr.o.d
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/drivers/msp/pq/pq_v3_0/mng/pq_mng_dbdr.c
@ -mlittle-endian -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -marm -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/pq/pq_v3_0/mng/pq_mng_dbdr.o -O2 -Wall -Wundef
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
	.global	PQ_MNG_DeinitDNR
	.type	PQ_MNG_DeinitDNR, %function
PQ_MNG_DeinitDNR:
	.fnstart
.LFB656:
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
	ldr	r2, [r3, #0]	@ sg_bDNRInitFlag, sg_bDNRInitFlag
	cmp	r2, #0	@ sg_bDNRInitFlag,
	movne	r2, #0	@ tmp137,
	strne	r2, [r3, #0]	@ tmp137, sg_bDNRInitFlag
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	PQ_MNG_DeinitDNR, .-PQ_MNG_DeinitDNR
	.align	2
	.global	PQ_MNG_EnableDB
	.type	PQ_MNG_EnableDB, %function
PQ_MNG_EnableDB:
	.fnstart
.LFB660:
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
	str	r0, [r3, #4]	@ bOnOff, sg_bDB_EnFlag
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	PQ_MNG_EnableDB, .-PQ_MNG_EnableDB
	.align	2
	.global	PQ_MNG_EnableDBDemo
	.type	PQ_MNG_EnableDBDemo, %function
PQ_MNG_EnableDBDemo:
	.fnstart
.LFB662:
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
	.size	PQ_MNG_EnableDBDemo, .-PQ_MNG_EnableDBDemo
	.align	2
	.global	PQ_MNG_EnableDM
	.type	PQ_MNG_EnableDM, %function
PQ_MNG_EnableDM:
	.fnstart
.LFB663:
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
	.size	PQ_MNG_EnableDM, .-PQ_MNG_EnableDM
	.align	2
	.global	PQ_MNG_GetDMEnableFlag
	.type	PQ_MNG_GetDMEnableFlag, %function
PQ_MNG_GetDMEnableFlag:
	.fnstart
.LFB664:
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
	.size	PQ_MNG_GetDMEnableFlag, .-PQ_MNG_GetDMEnableFlag
	.align	2
	.global	PQ_MNG_EnableDMDemo
	.type	PQ_MNG_EnableDMDemo, %function
PQ_MNG_EnableDMDemo:
	.fnstart
.LFB665:
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
	.size	PQ_MNG_EnableDMDemo, .-PQ_MNG_EnableDMDemo
	.align	2
	.global	PQ_MNG_SetDbmDemoMode
	.type	PQ_MNG_SetDbmDemoMode, %function
PQ_MNG_SetDbmDemoMode:
	.fnstart
.LFB666:
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
	.size	PQ_MNG_SetDbmDemoMode, .-PQ_MNG_SetDbmDemoMode
	.align	2
	.global	PQ_MNG_DBCfgRefresh
	.type	PQ_MNG_DBCfgRefresh, %function
PQ_MNG_DBCfgRefresh:
	.fnstart
.LFB667:
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
	.size	PQ_MNG_DBCfgRefresh, .-PQ_MNG_DBCfgRefresh
	.align	2
	.global	PQ_MNG_DBCalcConfigCfg
	.type	PQ_MNG_DBCalcConfigCfg, %function
PQ_MNG_DBCalcConfigCfg:
	.fnstart
.LFB668:
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
	.size	PQ_MNG_DBCalcConfigCfg, .-PQ_MNG_DBCalcConfigCfg
	.align	2
	.global	PQ_MNG_DMCalcConfigCfg
	.type	PQ_MNG_DMCalcConfigCfg, %function
PQ_MNG_DMCalcConfigCfg:
	.fnstart
.LFB669:
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
	.size	PQ_MNG_DMCalcConfigCfg, .-PQ_MNG_DMCalcConfigCfg
	.align	2
	.global	PQ_MNG_GetDBEnableFlag
	.type	PQ_MNG_GetDBEnableFlag, %function
PQ_MNG_GetDBEnableFlag:
	.fnstart
.LFB661:
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
	subs	r2, r0, #0	@ pbOnOff, pbOnOff
	beq	.L27	@,
	movw	r1, #:lower16:.LANCHOR0	@ tmp138,
	movt	r1, #:upper16:.LANCHOR0	@ tmp138,
	mov	r0, #0	@ D.23631,
	ldr	r3, [r1, #4]	@ sg_bDB_EnFlag, sg_bDB_EnFlag
	str	r3, [r2, #0]	@ sg_bDB_EnFlag,* pbOnOff
.L24:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L27:
	mov	r0, #1	@,
	mov	r1, #41	@,
	movw	r2, #:lower16:.LANCHOR1	@,
	mov	r3, #138	@,
	movt	r2, #:upper16:.LANCHOR1	@,
	movw	ip, #:lower16:.LC0	@ tmp137,
	movt	ip, #:upper16:.LC0	@ tmp137,
	str	ip, [sp, #0]	@ tmp137,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.23631,
	b	.L24	@
	.fnend
	.size	PQ_MNG_GetDBEnableFlag, .-PQ_MNG_GetDBEnableFlag
	.align	2
	.global	PQ_MNG_EnableDRDemo
	.type	PQ_MNG_EnableDRDemo, %function
PQ_MNG_EnableDRDemo:
	.fnstart
.LFB659:
	@ args = 0, pretend = 0, frame = 0
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
	mov	r4, r0	@ bOnOff, bOnOff
	mov	r0, #0	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	mvnne	r5, #0	@ s32Ret,
	beq	.L49	@,
	mov	r0, #1	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L50	@,
.L31:
	mov	r0, #2	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L51	@,
.L32:
	mov	r0, #3	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L52	@,
.L33:
	mov	r0, #4	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L53	@,
.L34:
	mov	r0, #5	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L54	@,
.L35:
	mov	r0, #6	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L55	@,
.L36:
	mov	r0, #7	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L56	@,
.L37:
	mov	r0, #8	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L57	@,
.L38:
	mov	r0, #9	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L58	@,
.L39:
	mov	r0, #10	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L59	@,
.L40:
	mov	r0, #11	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L60	@,
.L41:
	mov	r0, #12	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L61	@,
.L42:
	mov	r0, #13	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L62	@,
.L43:
	mov	r0, #14	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L63	@,
.L44:
	mov	r0, #15	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L64	@,
.L45:
	cmp	r5, #0	@ s32Ret,
	bne	.L65	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp156,
	movt	r3, #:upper16:.LANCHOR0	@ tmp156,
	mov	r0, r5	@ D.23620, s32Ret
	str	r4, [r3, #8]	@ bOnOff, sg_bDR_Demo_EnFlag
.L47:
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L49:
	mov	r1, r4	@, bOnOff
	mov	r0, #0	@,
	bl	PQ_HAL_EnableDRDemo	@
	mov	r5, r0	@ s32Ret,
	mov	r0, #1	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	bne	.L31	@,
.L50:
	mov	r1, r4	@, bOnOff
	bl	PQ_HAL_EnableDRDemo	@
	mov	r5, r0	@ s32Ret,
	mov	r0, #2	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	bne	.L32	@,
.L51:
	mov	r1, r4	@, bOnOff
	mov	r0, #2	@,
	bl	PQ_HAL_EnableDRDemo	@
	mov	r5, r0	@ s32Ret,
	mov	r0, #3	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	bne	.L33	@,
.L52:
	mov	r1, r4	@, bOnOff
	mov	r0, #3	@,
	bl	PQ_HAL_EnableDRDemo	@
	mov	r5, r0	@ s32Ret,
	mov	r0, #4	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	bne	.L34	@,
.L53:
	mov	r1, r4	@, bOnOff
	mov	r0, #4	@,
	bl	PQ_HAL_EnableDRDemo	@
	mov	r5, r0	@ s32Ret,
	mov	r0, #5	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	bne	.L35	@,
.L54:
	mov	r1, r4	@, bOnOff
	mov	r0, #5	@,
	bl	PQ_HAL_EnableDRDemo	@
	mov	r5, r0	@ s32Ret,
	mov	r0, #6	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	bne	.L36	@,
.L55:
	mov	r1, r4	@, bOnOff
	mov	r0, #6	@,
	bl	PQ_HAL_EnableDRDemo	@
	mov	r5, r0	@ s32Ret,
	mov	r0, #7	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	bne	.L37	@,
.L56:
	mov	r1, r4	@, bOnOff
	mov	r0, #7	@,
	bl	PQ_HAL_EnableDRDemo	@
	mov	r5, r0	@ s32Ret,
	mov	r0, #8	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	bne	.L38	@,
.L57:
	mov	r1, r4	@, bOnOff
	mov	r0, #8	@,
	bl	PQ_HAL_EnableDRDemo	@
	mov	r5, r0	@ s32Ret,
	mov	r0, #9	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	bne	.L39	@,
.L58:
	mov	r1, r4	@, bOnOff
	mov	r0, #9	@,
	bl	PQ_HAL_EnableDRDemo	@
	mov	r5, r0	@ s32Ret,
	mov	r0, #10	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	bne	.L40	@,
.L59:
	mov	r1, r4	@, bOnOff
	mov	r0, #10	@,
	bl	PQ_HAL_EnableDRDemo	@
	mov	r5, r0	@ s32Ret,
	mov	r0, #11	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	bne	.L41	@,
.L60:
	mov	r1, r4	@, bOnOff
	mov	r0, #11	@,
	bl	PQ_HAL_EnableDRDemo	@
	mov	r5, r0	@ s32Ret,
	mov	r0, #12	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	bne	.L42	@,
.L61:
	mov	r1, r4	@, bOnOff
	mov	r0, #12	@,
	bl	PQ_HAL_EnableDRDemo	@
	mov	r5, r0	@ s32Ret,
	mov	r0, #13	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	bne	.L43	@,
.L62:
	mov	r1, r4	@, bOnOff
	mov	r0, #13	@,
	bl	PQ_HAL_EnableDRDemo	@
	mov	r5, r0	@ s32Ret,
	mov	r0, #14	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	bne	.L44	@,
.L63:
	mov	r1, r4	@, bOnOff
	mov	r0, #14	@,
	bl	PQ_HAL_EnableDRDemo	@
	mov	r5, r0	@ s32Ret,
	mov	r0, #15	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	bne	.L45	@,
.L64:
	mov	r0, #15	@,
	mov	r1, r4	@, bOnOff
	bl	PQ_HAL_EnableDRDemo	@
	mov	r5, r0	@ s32Ret,
	b	.L45	@
.L65:
	mov	r0, #1	@,
	mov	r1, #41	@,
	ldr	r2, .L66	@,
	mov	r3, #119	@,
	movw	ip, #:lower16:.LC1	@ tmp155,
	movt	ip, #:upper16:.LC1	@ tmp155,
	str	ip, [sp, #0]	@ tmp155,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.23620,
	b	.L47	@
.L67:
	.align	2
.L66:
	.word	.LANCHOR1+24
	.fnend
	.size	PQ_MNG_EnableDRDemo, .-PQ_MNG_EnableDRDemo
	.align	2
	.global	PQ_MNG_GetDREnableFlag
	.type	PQ_MNG_GetDREnableFlag, %function
PQ_MNG_GetDREnableFlag:
	.fnstart
.LFB658:
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
	mov	r1, r0	@ pbOnOff, pbOnOff
	mov	r0, #0	@,
	bl	PQ_HAL_GetDREnReg	@
	cmp	r0, #0	@ s32Ret
	bne	.L72	@,
.L70:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L72:
	mov	r0, #1	@,
	mov	r1, #41	@,
	ldr	r2, .L73	@,
	mov	r3, #97	@,
	movw	ip, #:lower16:.LC2	@ tmp139,
	movt	ip, #:upper16:.LC2	@ tmp139,
	str	ip, [sp, #0]	@ tmp139,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.23604,
	b	.L70	@
.L74:
	.align	2
.L73:
	.word	.LANCHOR1+44
	.fnend
	.size	PQ_MNG_GetDREnableFlag, .-PQ_MNG_GetDREnableFlag
	.align	2
	.global	PQ_MNG_EnableDR
	.type	PQ_MNG_EnableDR, %function
PQ_MNG_EnableDR:
	.fnstart
.LFB657:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {fp, ip, lr, pc}	@,
	.pad #4
	.save {fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #16
	sub	sp, sp, #16	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r0, #0	@,
	sub	r1, fp, #16	@,,
	bl	PQ_HAL_GetDREnReg	@
	subs	r2, r0, #0	@ s32Ret,
	bne	.L80	@,
	ldr	r3, [fp, #-16]	@ bDrEn, bDrEn
	cmp	r3, #1	@ bDrEn,
	movweq	r1, #:lower16:.LANCHOR0	@ tmp142,
	movwne	r3, #:lower16:.LANCHOR0	@ tmp144,
	movteq	r1, #:upper16:.LANCHOR0	@ tmp142,
	movtne	r3, #:upper16:.LANCHOR0	@ tmp144,
	moveq	r0, r2	@ D.23590, s32Ret
	movne	r0, r2	@ D.23590, s32Ret
	streq	r3, [r1, #12]	@ bDrEn, sg_bDR_EnFlag
	strne	r2, [r3, #12]	@ s32Ret, sg_bDR_EnFlag
.L77:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L80:
	mov	r0, #1	@,
	mov	r1, #41	@,
	ldr	r2, .L81	@,
	mov	r3, #72	@,
	movw	ip, #:lower16:.LC3	@ tmp140,
	movt	ip, #:upper16:.LC3	@ tmp140,
	str	ip, [sp, #0]	@ tmp140,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.23590,
	b	.L77	@
.L82:
	.align	2
.L81:
	.word	.LANCHOR1+68
	.fnend
	.size	PQ_MNG_EnableDR, .-PQ_MNG_EnableDR
	.align	2
	.global	PQ_MNG_InitDNR
	.type	PQ_MNG_InitDNR, %function
PQ_MNG_InitDNR:
	.fnstart
.LFB655:
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
	mov	ip, #8	@ tmp136,
	str	ip, [sp, #0]	@ tmp136,
	bl	PQ_MNG_InitPhyList	@
	cmp	r0, #0	@ s32Ret
	bne	.L87	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	mov	r2, #1	@ tmp141,
	str	r2, [r3, #0]	@ tmp141, sg_bDNRInitFlag
.L85:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L87:
	mov	r0, #1	@,
	mov	r1, #41	@,
	ldr	r2, .L88	@,
	mov	r3, #40	@,
	movw	lr, #:lower16:.LC4	@ tmp139,
	movt	lr, #:upper16:.LC4	@ tmp139,
	str	lr, [sp, #0]	@ tmp139,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.23572,
	b	.L85	@
.L89:
	.align	2
.L88:
	.word	.LANCHOR1+84
	.fnend
	.size	PQ_MNG_InitDNR, .-PQ_MNG_InitDNR
	.section	.rodata
	.align	2
.LANCHOR1 = . + 0
	.type	__func__.23628, %object
	.size	__func__.23628, 23
__func__.23628:
	.ascii	"PQ_MNG_GetDBEnableFlag\000"
	.space	1
	.type	__func__.23613, %object
	.size	__func__.23613, 20
__func__.23613:
	.ascii	"PQ_MNG_EnableDRDemo\000"
	.type	__func__.23600, %object
	.size	__func__.23600, 23
__func__.23600:
	.ascii	"PQ_MNG_GetDREnableFlag\000"
	.space	1
	.type	__func__.23586, %object
	.size	__func__.23586, 16
__func__.23586:
	.ascii	"PQ_MNG_EnableDR\000"
	.type	__func__.23568, %object
	.size	__func__.23568, 15
__func__.23568:
	.ascii	"PQ_MNG_InitDNR\000"
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"pointer is NULL!\012\000"
	.space	2
.LC1:
	.ascii	"error in enable DR Demo!\012\000"
	.space	2
.LC2:
	.ascii	"error in get DR enable!\012\000"
	.space	3
.LC3:
	.ascii	"Get DR_en Failure!\012\000"
.LC4:
	.ascii	"SD DR InitPhyList error\012\000"
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	sg_bDNRInitFlag, %object
	.size	sg_bDNRInitFlag, 4
sg_bDNRInitFlag:
	.space	4
	.type	sg_bDB_EnFlag, %object
	.size	sg_bDB_EnFlag, 4
sg_bDB_EnFlag:
	.space	4
	.type	sg_bDR_Demo_EnFlag, %object
	.size	sg_bDR_Demo_EnFlag, 4
sg_bDR_Demo_EnFlag:
	.space	4
	.type	sg_bDR_EnFlag, %object
	.size	sg_bDR_EnFlag, 4
sg_bDR_EnFlag:
	.space	4
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
