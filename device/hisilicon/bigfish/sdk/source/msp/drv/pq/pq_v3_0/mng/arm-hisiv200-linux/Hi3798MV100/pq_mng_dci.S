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
	.file	"pq_mng_dci.c"
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
@ -DKBUILD_BASENAME=KBUILD_STR(pq_mng_dci)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_pq) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD drivers/msp/pq/pq_v3_0/mng/.pq_mng_dci.o.d
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/drivers/msp/pq/pq_v3_0/mng/pq_mng_dci.c
@ -mlittle-endian -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -marm -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/pq/pq_v3_0/mng/pq_mng_dci.o -O2 -Wall -Wundef
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
	.global	PQ_MNG_DCIParaInit
	.type	PQ_MNG_DCIParaInit, %function
PQ_MNG_DCIParaInit:
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
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	PQ_MNG_DCIParaInit, .-PQ_MNG_DCIParaInit
	.align	2
	.global	PQ_MNG_GetDCIEnable
	.type	PQ_MNG_GetDCIEnable, %function
PQ_MNG_GetDCIEnable:
	.fnstart
.LFB847:
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
	ldr	r3, [r1, #0]	@ bDciEn, bDciEn
	str	r3, [r0, #0]	@ bDciEn,* pu32OnOff
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	PQ_MNG_GetDCIEnable, .-PQ_MNG_GetDCIEnable
	.align	2
	.global	PQ_MNG_GetDCILevelGain
	.type	PQ_MNG_GetDCILevelGain, %function
PQ_MNG_GetDCILevelGain:
	.fnstart
.LFB852:
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
	ldr	r3, [r1, #4]	@ sg_u32DCILevel, sg_u32DCILevel
	str	r3, [r0, #0]	@ sg_u32DCILevel,* pu32DCILevelGain
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	PQ_MNG_GetDCILevelGain, .-PQ_MNG_GetDCILevelGain
	.align	2
	.global	PQ_MNG_GetDCIDemoMode
	.type	PQ_MNG_GetDCIDemoMode, %function
PQ_MNG_GetDCIDemoMode:
	.fnstart
.LFB856:
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
	ldr	r3, [r1, #0]	@ sg_enMode, sg_enMode
	str	r3, [r0, #0]	@ sg_enMode,* enMode
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	PQ_MNG_GetDCIDemoMode, .-PQ_MNG_GetDCIDemoMode
	.align	2
	.global	PQ_MNG_SetDCIDemoMode
	.type	PQ_MNG_SetDCIDemoMode, %function
PQ_MNG_SetDCIDemoMode:
	.fnstart
.LFB855:
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
	bl	PQ_HAL_SetDCIDemoMode	@
	movw	r3, #:lower16:.LANCHOR1	@ tmp135,
	movt	r3, #:upper16:.LANCHOR1	@ tmp135,
	mov	r0, #0	@,
	str	r4, [r3, #0]	@ enMode, sg_enMode
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	PQ_MNG_SetDCIDemoMode, .-PQ_MNG_SetDCIDemoMode
	.align	2
	.global	PQ_MNG_UpdateDCIWin
	.type	PQ_MNG_UpdateDCIWin, %function
PQ_MNG_UpdateDCIWin:
	.fnstart
.LFB854:
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
	mov	lr, r0	@ pstWin, pstWin
	ldrh	ip, [lr, #6]	@ <variable>.u16VEnd, <variable>.u16VEnd
	mov	r0, #0	@,
	ldrh	r1, [lr, #0]	@ <variable>.u16HStar, <variable>.u16HStar
	ldrh	r2, [lr, #2]	@ <variable>.u16HEnd, <variable>.u16HEnd
	ldrh	r3, [lr, #4]	@ <variable>.u16VStar, <variable>.u16VStar
	str	ip, [sp, #0]	@ <variable>.u16VEnd,
	bl	PQ_HAL_SetDCIWindow	@
	mov	r0, #0	@,
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.fnend
	.size	PQ_MNG_UpdateDCIWin, .-PQ_MNG_UpdateDCIWin
	.align	2
	.global	PQ_MNG_EnableDCIDemo
	.type	PQ_MNG_EnableDCIDemo, %function
PQ_MNG_EnableDCIDemo:
	.fnstart
.LFB853:
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
	bl	PQ_HAL_EnableDCIDemo	@
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	PQ_MNG_EnableDCIDemo, .-PQ_MNG_EnableDCIDemo
	.align	2
	.type	PQ_MNG_FindDciGain, %function
PQ_MNG_FindDciGain:
	.fnstart
.LFB849:
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
	movw	ip, #:lower16:.LANCHOR1	@ tmp206,
	movt	ip, #:upper16:.LANCHOR1	@ tmp206,
	ldr	ip, [ip, #4]	@ sg_pstPqParam.320, sg_pstPqParam
	cmp	ip, #0	@ sg_pstPqParam.320,
	beq	.L28	@,
	add	r5, ip, #37888	@ ivtmp.529, sg_pstPqParam.320,
	movw	r4, #:lower16:-120831700	@ tmp215,
	add	ip, r5, #244	@ ivtmp.529, ivtmp.529,
	movt	r4, #:upper16:-120831700	@ tmp215,
	mov	r9, #0	@ i,
.L19:
	ldr	r7, [ip, #-12]	@ <variable>.u32RegAddr, <variable>.u32RegAddr
	add	r6, ip, #16	@ tmp217, ivtmp.529,
	add	r9, r9, #1	@ tmp216, i,
	ldr	r5, [ip, #0]	@ u32Value, <variable>.u32Value
	cmp	r7, r4	@ <variable>.u32RegAddr, tmp215
	ldrb	r8, [ip, #-7]	@ zero_extendqisi2	@ u8Msb, <variable>.u8Msb
	ldrb	r7, [ip, #-8]	@ zero_extendqisi2	@ u8Lsb, <variable>.u8Lsb
	ldrb	sl, [ip, #-6]	@ zero_extendqisi2	@ u8SourceMode, <variable>.u8SourceMode
	bne	.L18	@,
	cmp	r7, r1	@ u8Lsb, u8GainLsb
	bne	.L18	@,
	cmp	r8, r2	@ u8Msb, uGain8Msb
	bne	.L18	@,
	cmp	sl, r3	@ u8SourceMode, u32InMode
	bne	.L18	@,
.L25:
	str	r5, [r0, #0]	@ u32Value,* pu32Value
	mov	r2, r5	@, u32Value
	mov	r0, #8192	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	PQ_HAL_PrintMsg	@
	mov	r0, #0	@ D.27072,
.L17:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L18:
	ldr	r8, [r6, #-12]	@ <variable>.u32RegAddr, <variable>.u32RegAddr
	ldr	r5, [ip, #16]	@ u32Value, <variable>.u32Value
	cmp	r8, r4	@ <variable>.u32RegAddr, tmp215
	ldrb	ip, [r6, #-8]	@ zero_extendqisi2	@ u8Lsb, <variable>.u8Lsb
	ldrb	r7, [r6, #-7]	@ zero_extendqisi2	@ u8Msb, <variable>.u8Msb
	ldrb	r8, [r6, #-6]	@ zero_extendqisi2	@ u8SourceMode, <variable>.u8SourceMode
	bne	.L22	@,
	cmp	ip, r1	@ u8Lsb, u8GainLsb
	bne	.L22	@,
	cmp	r7, r2	@ u8Msb, uGain8Msb
	bne	.L22	@,
	cmp	r8, r3	@ u8SourceMode, u32InMode
	beq	.L25	@,
.L22:
	add	r9, r9, #1	@ i, tmp216,
	add	ip, r6, #16	@ ivtmp.529, tmp217,
	cmp	r9, #2048	@ i,
	bne	.L19	@,
	mvn	r0, #0	@ D.27072,
	b	.L17	@
.L28:
	mov	r0, #1	@,
	mov	r1, #41	@,
	movw	r2, #:lower16:.LANCHOR2	@,
	mov	r3, #157	@,
	movt	r2, #:upper16:.LANCHOR2	@,
	movw	lr, #:lower16:.LC0	@ tmp208,
	movt	lr, #:upper16:.LC0	@ tmp208,
	str	lr, [sp, #0]	@ tmp208,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.27072,
	b	.L17	@
	.fnend
	.size	PQ_MNG_FindDciGain, .-PQ_MNG_FindDciGain
	.align	2
	.global	PQ_MNG_SetDCILevelGain
	.type	PQ_MNG_SetDCILevelGain, %function
PQ_MNG_SetDCILevelGain:
	.fnstart
.LFB851:
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
	cmp	r1, #3	@ u32SourceMode,
	sub	r3, fp, #36	@ tmp153,,
	movw	r5, #:lower16:.LANCHOR0	@ tmp335,
	movt	r5, #:upper16:.LANCHOR0	@ tmp335,
	movls	r4, r1	@ u32SourceMode, u32SourceMode
	movhi	r4, #0	@ u32SourceMode,
	mov	ip, #0	@ tmp150,
	mov	r7, r0	@ u32DCILevelGain, u32DCILevelGain
	str	ip, [r3, #-4]!	@ tmp150, u32BinGain0
	mov	r1, #26	@,
	mov	r0, r3	@, tmp153
	mov	r2, #31	@,
	mov	r3, r4	@, u32SourceMode
	str	r7, [r5, #4]	@ u32DCILevelGain, sg_u32DCILevel
	str	ip, [fp, #-48]	@ tmp150, u32BinGain2
	str	ip, [fp, #-44]	@ tmp150, u32BinGain1
	bl	PQ_MNG_FindDciGain	@
	mov	r1, #20	@,
	mov	r2, #25	@,
	mov	r3, r4	@, u32SourceMode
	mov	r8, r0	@ s32Ret,
	sub	r0, fp, #44	@,,
	bl	PQ_MNG_FindDciGain	@
	mov	r1, #14	@,
	mov	r2, #19	@,
	mov	r3, r4	@, u32SourceMode
	mov	r6, r0	@ D.27444,
	sub	r0, fp, #48	@,,
	bl	PQ_MNG_FindDciGain	@
	orr	r6, r6, r8	@ tmp156, D.27444, s32Ret
	orr	r6, r6, r0	@ tmp157, tmp156,
	cmn	r6, #1	@ tmp157,
	beq	.L51	@,
.L31:
	mov	r0, r4, asl #1	@ tmp336, u32SourceMode,
	ldr	r3, [fp, #-48]	@ u32BinGain2.330, u32BinGain2
	add	r2, r0, r4	@ tmp168, tmp336, u32SourceMode
	ldr	lr, [fp, #-40]	@ u32BinGain0, u32BinGain0
	ldr	ip, [fp, #-44]	@ u32BinGain1, u32BinGain1
	cmp	r4, #2	@ u32SourceMode,
	add	r1, r5, r2, asl #2	@, tmp180, tmp335, tmp168,
	str	lr, [r1, #8]	@ u32BinGain0, sg_s32DCILevelGain
	str	ip, [r1, #12]	@ u32BinGain1, sg_s32DCILevelGain
	str	r3, [r1, #16]	@ u32BinGain2.330, sg_s32DCILevelGain
	beq	.L34	@,
	cmp	r4, #3	@ u32SourceMode,
	beq	.L35	@,
	cmp	r4, #1	@ u32SourceMode,
	beq	.L33	@,
.L34:
	cmp	r7, #50	@ u32DCILevelGain,
	bls	.L39	@,
	add	lr, r7, r7, asl #2	@, tmp252, u32DCILevelGain, u32DCILevelGain,
	movw	r2, #:lower16:1374389535	@ tmp258,
	movt	r2, #:upper16:1374389535	@ tmp258,
	rsb	ip, lr, lr, asl #3	@, tmp254, tmp252, tmp252,
	sub	r1, ip, #1696	@ tmp255, tmp254,
	sub	r7, r1, #4	@ tmp255, tmp255,
	smull	r1, lr, r2, r7	@, tmp257, tmp258, tmp255
	mov	r7, r7, asr #31	@ tmp260, tmp255,
	rsb	r2, r7, lr, asr #5	@, s32GainOffset0, tmp260, tmp257,
	mov	ip, r2	@ s32GainOffset2, s32GainOffset0
.L37:
	add	r1, r0, r4	@ tmp316, tmp336, u32SourceMode
	add	lr, r5, r1, asl #2	@, tmp318, tmp335, tmp316,
	ldr	r1, [lr, #8]	@ tmp320, sg_s32DCILevelGain
	adds	r1, r2, r1	@ D.27169, s32GainOffset0, tmp320
	movmi	r1, #0	@ prephitmp.548,
	bmi	.L42	@,
	cmp	r1, #63	@ D.27169,
	movge	r1, #63	@ tmp321,
	uxtb	r1, r1	@ prephitmp.548, tmp321
.L42:
	add	r4, r0, r4	@ tmp325, tmp336, u32SourceMode
	add	r5, r5, r4, asl #2	@, tmp329, tmp335, tmp325,
	ldr	r0, [r5, #12]	@ tmp331, sg_s32DCILevelGain
	adds	r2, r2, r0	@ D.27176, s32GainOffset0, tmp331
	movmi	r2, #0	@ prephitmp.578,
	bmi	.L44	@,
	cmp	r2, #63	@ D.27176,
	movge	r2, #63	@ tmp332,
	uxtb	r2, r2	@ prephitmp.578, tmp332
.L44:
	adds	r3, ip, r3	@ D.27183, s32GainOffset2, u32BinGain2.330
	movmi	r3, #0	@ prephitmp.577,
	bmi	.L46	@,
	cmp	r3, #63	@ D.27183,
	movge	r3, #63	@ tmp333,
	uxtb	r3, r3	@ prephitmp.577, tmp333
.L46:
	mov	r0, #0	@,
	bl	PQ_HAL_SetDCIlevel	@
	mov	r0, #0	@,
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L33:
	cmp	r7, #50	@ u32DCILevelGain,
	bhi	.L52	@,
	add	r8, r7, r7, asl #2	@, tmp241, u32DCILevelGain, u32DCILevelGain,
	mov	r6, #50	@ tmp232,
	mul	r7, r6, r7	@ tmp231, tmp232, u32DCILevelGain
	rsb	r2, r8, r8, asl #3	@, tmp243, tmp241, tmp241,
	sub	lr, r2, #1696	@ tmp244, tmp243,
	movw	r1, #:lower16:1374389535	@ tmp236,
	sub	lr, lr, #4	@ tmp244, tmp244,
	movt	r1, #:upper16:1374389535	@ tmp236,
	sub	ip, r7, #2448	@ tmp233, tmp231,
	sub	r7, ip, #2	@ tmp233, tmp233,
	mov	r8, lr, asr #31	@ tmp249, tmp244,
.L49:
	smull	r2, ip, r1, lr	@, tmp246, tmp236, tmp244
	mov	r6, r7, asr #31	@ tmp238, tmp233,
	smull	lr, r2, r1, r7	@, tmp235, tmp236, tmp233
	rsb	ip, r8, ip, asr #5	@, s32GainOffset2, tmp249, tmp246,
	rsb	r2, r6, r2, asr #5	@, s32GainOffset0, tmp238, tmp235,
	b	.L37	@
.L35:
	cmp	r7, #50	@ u32DCILevelGain,
	bls	.L40	@,
	add	r7, r7, r7, asl #2	@, tmp272, u32DCILevelGain, u32DCILevelGain,
	movw	ip, #:lower16:1374389535	@ tmp278,
	movt	ip, #:upper16:1374389535	@ tmp278,
	rsb	r1, r7, r7, asl #3	@, tmp285, tmp272, tmp272,
	add	r2, r7, r7, asl #2	@, tmp274, tmp272, tmp272,
	sub	lr, r1, #1696	@ tmp286, tmp285,
	sub	r7, r2, #1200	@ tmp275, tmp274,
	sub	r1, lr, #4	@ tmp286, tmp286,
	smull	lr, r2, ip, r7	@, tmp277, tmp278, tmp275
	mov	r7, r7, asr #31	@ tmp280, tmp275,
	smull	lr, ip, ip, r1	@, tmp288, tmp278, tmp286
	mov	lr, r1, asr #31	@ tmp291, tmp286,
	rsb	r2, r7, r2, asr #5	@, s32GainOffset0, tmp280, tmp277,
	rsb	ip, lr, ip, asr #5	@, s32GainOffset2, tmp291, tmp288,
	b	.L37	@
.L39:
	add	ip, r7, r7, asl #6	@, tmp263, u32DCILevelGain, u32DCILevelGain,
	movw	r1, #:lower16:1374389535	@ tmp267,
	sub	r7, ip, #3200	@ tmp264, tmp263,
	movt	r1, #:upper16:1374389535	@ tmp267,
	smull	ip, r2, r1, r7	@, tmp266, tmp267, tmp264
	mov	r7, r7, asr #31	@ tmp269, tmp264,
	rsb	r2, r7, r2, asr #5	@, s32GainOffset0, tmp269, tmp266,
	mov	ip, r2	@ s32GainOffset2, s32GainOffset0
	b	.L37	@
.L40:
	add	ip, r7, r7, asl #2	@, tmp294, u32DCILevelGain, u32DCILevelGain,
	add	r7, r7, r7, asl #6	@, tmp305, u32DCILevelGain, u32DCILevelGain,
	sub	r6, r7, #3200	@ tmp306, tmp305,
	movw	r1, #:lower16:1374389535	@ tmp300,
	rsb	r8, ip, ip, asl #4	@, tmp296, tmp294, tmp294,
	movt	r1, #:upper16:1374389535	@ tmp300,
	sub	r2, r8, #3696	@ tmp297, tmp296,
	mov	r8, r6, asr #31	@ tmp311, tmp306,
	sub	lr, r2, #4	@ tmp297, tmp297,
	smull	r2, ip, r1, r6	@, tmp308, tmp300, tmp306
	mov	r6, lr, asr #31	@ tmp302, tmp297,
	smull	r7, r2, r1, lr	@, tmp299, tmp300, tmp297
	rsb	ip, r8, ip, asr #5	@, s32GainOffset2, tmp311, tmp308,
	rsb	r2, r6, r2, asr #5	@, s32GainOffset0, tmp302, tmp299,
	b	.L37	@
.L52:
	rsb	r6, r7, r7, asl #3	@, tmp213, u32DCILevelGain, u32DCILevelGain,
	add	r1, r7, r7, asl #6	@, tmp224, u32DCILevelGain, u32DCILevelGain,
	sub	lr, r1, #3200	@ tmp225, tmp224,
	movw	r1, #:lower16:1374389535	@ tmp219,
	rsb	r8, r7, r6, asl #3	@, tmp215, u32DCILevelGain, tmp213,
	movt	r1, #:upper16:1374389535	@ tmp219,
	sub	r7, r8, #2688	@ tmp216, tmp215,
	mov	r8, lr, asr #31	@ tmp230, tmp225,
	sub	r7, r7, #12	@ tmp216, tmp216,
	b	.L49	@
.L51:
	mov	r0, #4	@,
	mov	r1, #41	@,
	ldr	r2, .L53	@,
	mov	r3, #233	@,
	mov	lr, #42	@ tmp158,
	movw	ip, #:lower16:.LC2	@ tmp163,
	str	lr, [fp, #-48]	@ tmp158, u32BinGain2
	movt	ip, #:upper16:.LC2	@ tmp163,
	str	lr, [fp, #-40]	@ tmp158, u32BinGain0
	str	lr, [fp, #-44]	@ tmp158, u32BinGain1
	str	ip, [sp, #0]	@ tmp163,
	bl	HI_LogOut	@
	b	.L31	@
.L54:
	.align	2
.L53:
	.word	.LANCHOR2+20
	.fnend
	.size	PQ_MNG_SetDCILevelGain, .-PQ_MNG_SetDCILevelGain
	.align	2
	.global	PQ_MNG_EnableDCI
	.type	PQ_MNG_EnableDCI, %function
PQ_MNG_EnableDCI:
	.fnstart
.LFB848:
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
	mov	r4, r0	@ bOnOff, bOnOff
	mov	r1, r4	@, bOnOff
	mov	r0, #0	@,
	bl	PQ_HAL_EnableDCI	@
	movw	r3, #:lower16:.LANCHOR0	@ tmp135,
	movt	r3, #:upper16:.LANCHOR0	@ tmp135,
	mov	r0, #0	@,
	str	r4, [r3, #0]	@ bOnOff, bDciEn
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	PQ_MNG_EnableDCI, .-PQ_MNG_EnableDCI
	.align	2
	.global	PQ_MNG_DeinitDCI
	.type	PQ_MNG_DeinitDCI, %function
PQ_MNG_DeinitDCI:
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
	bl	PQ_HAL_DCIDeinit	@
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	PQ_MNG_DeinitDCI, .-PQ_MNG_DeinitDCI
	.align	2
	.global	PQ_MNG_DCILUTInit
	.type	PQ_MNG_DCILUTInit, %function
PQ_MNG_DCILUTInit:
	.fnstart
.LFB844:
	@ args = 0, pretend = 0, frame = 528
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #540
	sub	sp, sp, #540	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	subs	r6, r0, #0	@ pstPqParam, pstPqParam
	str	r1, [fp, #-568]	@ bDefault, %sfp
	beq	.L66	@,
	sub	r5, fp, #564	@ tmp142,,
	movw	r3, #:lower16:.LANCHOR1	@ tmp141,
	movt	r3, #:upper16:.LANCHOR1	@ tmp141,
	mov	r1, #520	@,
	mov	r0, r5	@, tmp142
	movw	r4, #:lower16:.LANCHOR0	@ tmp238,
	str	r6, [r3, #4]	@ pstPqParam, sg_pstPqParam
	movt	r4, #:upper16:.LANCHOR0	@ tmp238,
	bl	__memzero	@
	add	ip, r4, #56	@ tmp147, tmp238,
	mov	lr, r5	@ tmp145, tmp142
	add	r7, r4, #120	@ tmp151, tmp238,
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp240,,,,
	sub	r8, fp, #500	@ tmp149,,
	add	sl, r4, #184	@ tmp155, tmp238,
	sub	r9, fp, #436	@ tmp153,,
	mov	r5, ip	@ tmp241, tmp240
	stmia	lr!, {r0, r1, r2, r3}	@ tmp145,,,,
	mov	ip, lr	@ tmp242, tmp145
	ldmia	r5!, {r0, r1, r2, r3}	@ tmp241,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp242,,,,
	mov	lr, ip	@ tmp244, tmp242
	ldmia	r5!, {r0, r1, r2, r3}	@ tmp243,,,,
	mov	ip, r8	@ tmp246, tmp149
	stmia	lr!, {r0, r1, r2, r3}	@ tmp244,,,,
	ldmia	r5, {r0, r1, r2, r3}	@ tmp243,,,,
	stmia	lr, {r0, r1, r2, r3}	@ tmp244,,,,
	ldmia	r7!, {r0, r1, r2, r3}	@ tmp245,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp246,,,,
	mov	r5, ip	@ tmp248, tmp246
	ldmia	r7!, {r0, r1, r2, r3}	@ tmp247,,,,
	mov	ip, r9	@ tmp252, tmp153
	stmia	r5!, {r0, r1, r2, r3}	@ tmp248,,,,
	mov	lr, r5	@ tmp250, tmp248
	ldmia	r7!, {r0, r1, r2, r3}	@ tmp249,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp250,,,,
	ldmia	r7, {r0, r1, r2, r3}	@ tmp249,,,,
	stmia	lr, {r0, r1, r2, r3}	@ tmp250,,,,
	ldmia	sl!, {r0, r1, r2, r3}	@ tmp251,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp252,,,,
	mov	r5, ip	@ tmp254, tmp252
	ldmia	sl!, {r0, r1, r2, r3}	@ tmp253,,,,
	stmia	r5!, {r0, r1, r2, r3}	@ tmp254,,,,
	mov	lr, r5	@ tmp256, tmp254
	ldmia	sl!, {r0, r1, r2, r3}	@ tmp255,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp256,,,,
	ldmia	sl, {r0, r1, r2, r3}	@ tmp255,,,,
	stmia	lr, {r0, r1, r2, r3}	@ tmp256,,,,
	mov	r2, #128	@,
	sub	r0, fp, #372	@,,
	add	r1, r4, #248	@, tmp238,
	bl	memcpy	@
	ldr	r2, [fp, #-568]	@, %sfp
	cmp	r2, #1	@,
	beq	.L67	@,
	add	r1, r6, #1376	@, pstPqParam,
	mov	r2, #66	@,
	sub	r0, fp, #244	@,,
	bl	memcpy	@
	add	ip, r6, #1440	@, pstPqParam,
	add	r1, ip, #2	@,,
	mov	r2, #66	@,
	sub	r0, fp, #178	@,,
	bl	memcpy	@
	add	r2, r6, #1504	@, pstPqParam,
	add	r1, r2, #4	@,,
	sub	r0, fp, #112	@,,
	mov	r2, #66	@,
	bl	memcpy	@
.L63:
	sub	r0, fp, #564	@,,
	bl	PQ_HAL_SetDCILut	@
	subs	r5, r0, #0	@ s32Ret,
	bne	.L68	@,
	ldrh	r3, [r4, #40]	@, sg_s32DCILevelGain
	ldrh	r1, [r4, #32]	@, sg_s32DCILevelGain
	ldrh	r2, [r4, #36]	@, sg_s32DCILevelGain
	bl	PQ_HAL_SetDCIlevel	@
	mov	r0, r5	@ D.26998, s32Ret
.L61:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L67:
	add	r1, r4, #376	@, tmp238,
	mov	r2, #66	@,
	sub	r0, fp, #244	@,,
	bl	memcpy	@
	add	r1, r4, #444	@, tmp238,
	mov	r2, #66	@,
	sub	r0, fp, #178	@,,
	bl	memcpy	@
	add	r1, r4, #512	@, tmp238,
	mov	r2, #66	@,
	sub	r0, fp, #112	@,,
	bl	memcpy	@
	add	r1, r4, #376	@, tmp238,
	mov	r2, #66	@,
	add	r0, r6, #1376	@, pstPqParam,
	bl	memcpy	@
	add	r1, r6, #1440	@, pstPqParam,
	add	r0, r1, #2	@,,
	mov	r2, #66	@,
	add	r1, r4, #444	@, tmp238,
	bl	memcpy	@
	add	r0, r6, #1504	@, pstPqParam,
	add	r1, r4, #512	@, tmp238,
	mov	r2, #66	@,
	add	r0, r0, #4	@,,
	bl	memcpy	@
	ldrh	r5, [r4, #32]	@, sg_s32DCILevelGain
	movw	r3, #1574	@ tmp200,
	movw	ip, #1576	@ tmp203,
	movw	r1, #1578	@ tmp206,
	strh	r5, [r6, r3]	@ movhi	@, <variable>.stPQCoef.stDciCoef.stPqDciLut.u16Gain0
	ldrh	r2, [r4, #36]	@, sg_s32DCILevelGain
	strh	r2, [r6, ip]	@ movhi	@, <variable>.stPQCoef.stDciCoef.stPqDciLut.u16Gain1
	ldrh	r0, [r4, #40]	@, sg_s32DCILevelGain
	strh	r0, [r6, r1]	@ movhi	@, <variable>.stPQCoef.stDciCoef.stPqDciLut.u16Gain2
	b	.L63	@
.L68:
	mov	r0, #1	@,
	mov	r1, #41	@,
	ldr	r2, .L69	@,
	mov	r3, #83	@,
	movw	lr, #:lower16:.LC3	@ tmp227,
	movt	lr, #:upper16:.LC3	@ tmp227,
	str	lr, [sp, #0]	@ tmp227,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.26998,
	b	.L61	@
.L66:
	mov	r0, #1	@,
	mov	r1, #41	@,
	ldr	r2, .L69	@,
	mov	r3, #49	@,
	movw	ip, #:lower16:.LC0	@ tmp140,
	movt	ip, #:upper16:.LC0	@ tmp140,
	str	ip, [sp, #0]	@ tmp140,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.26998,
	b	.L61	@
.L70:
	.align	2
.L69:
	.word	.LANCHOR2+44
	.fnend
	.size	PQ_MNG_DCILUTInit, .-PQ_MNG_DCILUTInit
	.align	2
	.global	PQ_MNG_InitDCI
	.type	PQ_MNG_InitDCI, %function
PQ_MNG_InitDCI:
	.fnstart
.LFB845:
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
	mov	r4, r0	@ pstPqParam, pstPqParam
	mov	r5, r1	@ bDefault, bDefault
	bl	PQ_HAL_DCIInit	@
	cmp	r0, #0	@,
	bne	.L77	@,
	mov	r1, r5	@, bDefault
	mov	r0, r4	@, pstPqParam
	bl	PQ_MNG_DCILUTInit	@
	subs	r1, r0, #0	@ s32Ret.676,
	bne	.L78	@,
	mov	r2, #2	@,
	mov	ip, #16	@ tmp146,
	mov	r3, r2	@,
	str	ip, [sp, #0]	@ tmp146,
	bl	PQ_MNG_InitPhyList	@
	cmp	r0, #0	@ s32Ret.677
	bne	.L79	@,
.L73:
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L77:
	mov	r0, #1	@,
	mov	r1, #41	@,
	ldr	r2, .L80	@,
	mov	r3, #101	@,
	movw	ip, #:lower16:.LC4	@ tmp142,
	movt	ip, #:upper16:.LC4	@ tmp142,
	str	ip, [sp, #0]	@ tmp142,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.27029,
	b	.L73	@
.L78:
	mov	r0, #1	@,
	mov	r1, #41	@,
	ldr	r2, .L80	@,
	mov	r3, #115	@,
	movw	lr, #:lower16:.LC5	@ tmp145,
	movt	lr, #:upper16:.LC5	@ tmp145,
	str	lr, [sp, #0]	@ tmp145,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.27029,
	b	.L73	@
.L79:
	mov	r0, #1	@,
	mov	r1, #41	@,
	ldr	r2, .L80	@,
	mov	r3, #122	@,
	movw	lr, #:lower16:.LC6	@ tmp149,
	movt	lr, #:upper16:.LC6	@ tmp149,
	str	lr, [sp, #0]	@ tmp149,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.27029,
	b	.L73	@
.L81:
	.align	2
.L80:
	.word	.LANCHOR2+64
	.fnend
	.size	PQ_MNG_InitDCI, .-PQ_MNG_InitDCI
	.global	HistCoef0
	.global	HistCoef1
	.global	HistCoef2
	.global	WgtCoef0
	.global	WgtCoef1
	.global	WgtCoef2
	.global	YdivCoef
	.section	.rodata
	.align	2
.LANCHOR2 = . + 0
	.type	__func__.27064, %object
	.size	__func__.27064, 19
__func__.27064:
	.ascii	"PQ_MNG_FindDciGain\000"
	.space	1
	.type	__func__.27115, %object
	.size	__func__.27115, 23
__func__.27115:
	.ascii	"PQ_MNG_SetDCILevelGain\000"
	.space	1
	.type	__func__.26992, %object
	.size	__func__.26992, 18
__func__.26992:
	.ascii	"PQ_MNG_DCILUTInit\000"
	.space	2
	.type	__func__.27025, %object
	.size	__func__.27025, 15
__func__.27025:
	.ascii	"PQ_MNG_InitDCI\000"
	.data
	.align	2
.LANCHOR0 = . + 0
	.type	bDciEn, %object
	.size	bDciEn, 4
bDciEn:
	.word	1
	.type	sg_u32DCILevel, %object
	.size	sg_u32DCILevel, 4
sg_u32DCILevel:
	.word	50
	.type	sg_s32DCILevelGain, %object
	.size	sg_s32DCILevelGain, 48
sg_s32DCILevelGain:
	.word	38
	.word	38
	.word	38
	.word	32
	.word	32
	.word	32
	.word	38
	.word	38
	.word	38
	.word	42
	.word	42
	.word	42
	.type	HistCoef0, %object
	.size	HistCoef0, 64
HistCoef0:
	.short	17
	.short	16
	.short	15
	.short	14
	.short	13
	.short	11
	.short	9
	.short	7
	.short	4
	.short	2
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
	.type	HistCoef1, %object
	.size	HistCoef1, 64
HistCoef1:
	.short	0
	.short	0
	.short	0
	.short	0
	.short	1
	.short	2
	.short	3
	.short	4
	.short	6
	.short	8
	.short	9
	.short	10
	.short	11
	.short	12
	.short	13
	.short	14
	.short	15
	.short	16
	.short	16
	.short	15
	.short	14
	.short	13
	.short	12
	.short	11
	.short	10
	.short	9
	.short	8
	.short	7
	.short	6
	.short	5
	.short	4
	.short	3
	.type	HistCoef2, %object
	.size	HistCoef2, 64
HistCoef2:
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
	.short	1
	.short	1
	.short	2
	.short	3
	.short	4
	.short	6
	.short	8
	.short	9
	.short	10
	.short	12
	.short	13
	.short	14
	.short	14
	.short	15
	.short	15
	.short	15
	.type	YdivCoef, %object
	.size	YdivCoef, 128
YdivCoef:
	.short	1
	.short	4096
	.short	2048
	.short	1365
	.short	1024
	.short	819
	.short	682
	.short	585
	.short	512
	.short	455
	.short	409
	.short	372
	.short	341
	.short	315
	.short	292
	.short	273
	.short	256
	.short	240
	.short	227
	.short	215
	.short	204
	.short	195
	.short	186
	.short	178
	.short	170
	.short	163
	.short	157
	.short	151
	.short	146
	.short	141
	.short	136
	.short	132
	.short	128
	.short	124
	.short	120
	.short	117
	.short	113
	.short	110
	.short	107
	.short	105
	.short	102
	.short	99
	.short	97
	.short	95
	.short	93
	.short	91
	.short	89
	.short	87
	.short	85
	.short	83
	.short	81
	.short	80
	.short	78
	.short	77
	.short	75
	.short	74
	.short	73
	.short	71
	.short	70
	.short	69
	.short	68
	.short	67
	.short	66
	.short	65
	.type	WgtCoef0, %object
	.size	WgtCoef0, 66
WgtCoef0:
	.short	0
	.short	0
	.short	3
	.short	7
	.short	12
	.short	19
	.short	30
	.short	45
	.short	61
	.short	81
	.short	100
	.short	112
	.short	118
	.short	122
	.short	123
	.short	123
	.short	121
	.short	119
	.short	115
	.short	110
	.short	103
	.short	94
	.short	82
	.short	66
	.short	49
	.short	35
	.short	23
	.short	12
	.short	8
	.short	5
	.short	3
	.short	2
	.short	0
	.space	2
	.type	WgtCoef1, %object
	.size	WgtCoef1, 66
WgtCoef1:
	.short	0
	.short	-6
	.short	-13
	.short	-23
	.short	-32
	.short	-38
	.short	-41
	.short	-41
	.short	-39
	.short	-36
	.short	-30
	.short	-20
	.short	0
	.short	13
	.short	28
	.short	39
	.short	46
	.short	51
	.short	52
	.short	54
	.short	54
	.short	52
	.short	49
	.short	43
	.short	39
	.short	33
	.short	25
	.short	14
	.short	2
	.short	0
	.short	0
	.short	0
	.short	0
	.space	2
	.type	WgtCoef2, %object
	.size	WgtCoef2, 66
WgtCoef2:
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	-6
	.short	-15
	.short	-21
	.short	-25
	.short	-32
	.short	-38
	.short	-42
	.short	-42
	.short	-43
	.short	-43
	.short	-47
	.short	-48
	.short	-51
	.short	-50
	.short	-49
	.short	-46
	.short	-42
	.short	-39
	.short	-36
	.short	-30
	.short	-24
	.short	-18
	.short	-10
	.short	-4
	.short	0
	.short	0
	.short	0
	.short	0
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"pointer is NULL!\012\000"
	.space	2
.LC1:
	.ascii	"GetDciGain:%d\012\000"
	.space	1
.LC2:
	.ascii	"Get DciGain failure\012\000"
	.space	3
.LC3:
	.ascii	"PQ_HAL_SetDCILut error!\012\000"
	.space	3
.LC4:
	.ascii	"PQ_HAL_DCIInit error!\012\000"
	.space	1
.LC5:
	.ascii	"PQ_MNG_DCILUTInit error!\012\000"
	.space	2
.LC6:
	.ascii	"DCI InitPhyList error\012\000"
	.bss
	.align	2
.LANCHOR1 = . + 0
	.type	sg_enMode, %object
	.size	sg_enMode, 4
sg_enMode:
	.space	4
	.type	sg_pstPqParam, %object
	.size	sg_pstPqParam, 4
sg_pstPqParam:
	.space	4
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
