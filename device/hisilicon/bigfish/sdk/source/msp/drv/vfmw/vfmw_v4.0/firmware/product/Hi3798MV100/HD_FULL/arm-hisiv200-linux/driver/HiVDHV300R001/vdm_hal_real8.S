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
	.file	"vdm_hal_real8.c"
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
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/drivers/msp/vfmw/vfmw_v4.0
@ -Idrivers/msp/vfmw/vfmw_v4.0
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/arch/arm/mach-hi3798mx/include
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/common/include
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/common/drv/include
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/scene/stb
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/osal/linux_kernel
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common/softlib
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiSCDV200
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV300R001
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3798MV100
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common_test/vdecko
@ -imultilib armv7a_soft -iprefix
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/
@ -isysroot /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../target
@ -D__KERNEL__ -D__LINUX_ARM_ARCH__=7 -Uarm -DCHIP_TYPE_hi3796mv100
@ -DSDK_VERSION=HiSTBAndroidV600R001C00SPC064_v2016061301 -DHI_MCE_SUPPORT
@ -DHI_GPIOI2C_SUPPORT -DHI_LOG_SUPPORT=1 -DHI_LOG_LEVEL=4
@ -DHI_PROC_SUPPORT=1 -DHI_HDMI_SUPPORT_1_4 -DHI_KEYLED_SUPPORT
@ -DHI_HDCP_SUPPORT -DHI_SCI_SUPPORT -DHI_PVR_SUPPORT -DHI_VI_SUPPORT
@ -DHI_VENC_SUPPORT -DHI_AENC_SUPPORT -DHI_PQ_V3_0 -DENV_ARMLINUX_KERNEL
@ -DDNR_DISABLE -DSCD_MP4_SLICE_ENABLE -DSUPPORT_JPEG_444
@ -DVFMW_EXTRA_TYPE_DEFINE -DPRODUCT_STB -D__VFMW_REGISTER_ISR__
@ -DQ_MATRIX_FIXED -DVFMW_VDH_V300R001_SUPPORT -DCFG_SCD_TIME_OUT=2000
@ -DCFG_VDH_TIME_OUT=500 -DVFMW_H264_SUPPORT -DVFMW_HEVC_SUPPORT
@ -DVFMW_MVC_SUPPORT -DVFMW_MPEG2_SUPPORT -DVFMW_MPEG4_SUPPORT
@ -DVFMW_AVS_SUPPORT -DVFMW_VC1_SUPPORT -DVFMW_BPD_H_SUPPORT
@ -DVFMW_REAL8_SUPPORT -DVFMW_REAL9_SUPPORT -DVFMW_VP6_SUPPORT
@ -DVFMW_VP8_SUPPORT -DVFMW_DIVX3_SUPPORT -DVFMW_H263_SUPPORT
@ -DVFMW_JPEG_SUPPORT -DVFMW_RAW_SUPPORT -DVFMW_USER_SUPPORT
@ -DCFG_MAX_CHAN_NUM=16 -DVFMW_DPRINT_SUPPORT -DVFMW_SCD_LOWDLY_SUPPORT
@ -DVFMW_AVSPLUS_SUPPORT -DVFMW_MODULE_LOWDLY_SUPPORT
@ -DVFMW_SYSTEM_REG_DISABLE -DHI_VDEC_SVDEC_BUILTIN -DKBUILD_STR(s)=#s
@ -DKBUILD_BASENAME=KBUILD_STR(vdm_hal_real8)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD
@ drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV300R001/.vdm_hal_real8.o.d
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV300R001/vdm_hal_real8.c
@ -mlittle-endian -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -marm -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV300R001/vdm_hal_real8.o
@ -O2 -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs
@ -Werror-implicit-function-declaration -Wno-format-security
@ -Wframe-larger-than=1024 -Wdeclaration-after-statement -Wno-pointer-sign
@ -p -fno-strict-aliasing -fno-common -fno-delete-null-pointer-checks
@ -fno-dwarf2-cfi-asm -funwind-tables -fno-stack-protector
@ -fno-omit-frame-pointer -fno-optimize-sibling-calls -fno-strict-overflow
@ -fconserve-stack -fno-pic -fverbose-asm
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
	.global	RV8HAL_V300R001_InitHal
	.type	RV8HAL_V300R001_InitHal, %function
RV8HAL_V300R001_InitHal:
	.fnstart
.LFB1528:
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
	.size	RV8HAL_V300R001_InitHal, .-RV8HAL_V300R001_InitHal
	.align	2
	.global	RV8HAL_V300R001_StartVDH
	.type	RV8HAL_V300R001_StartVDH, %function
RV8HAL_V300R001_StartVDH:
	.fnstart
.LFB1533:
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
	movw	r1, #:lower16:.LC0	@,
	mov	r0, #2	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	RV8HAL_V300R001_StartVDH, .-RV8HAL_V300R001_StartVDH
	.align	2
	.global	RV8HAL_V300R001_WriteSliceMsg
	.type	RV8HAL_V300R001_WriteSliceMsg, %function
RV8HAL_V300R001_WriteSliceMsg:
	.fnstart
.LFB1532:
	@ args = 0, pretend = 0, frame = 32
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
	mov	r4, r0	@ pHwMem, pHwMem
	mov	r8, r1	@ pRv8DecParam, pRv8DecParam
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	ldr	r1, [r4, #48]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	bic	r0, r1, #15	@ tmp216, <variable>.MsgSlotAddr,
	add	r3, r0, #256	@, tmp216,
	str	r3, [fp, #-68]	@, %sfp
	mov	r0, r3	@,
	bl	MEM_Phy2Vir	@
	subs	sl, r0, #0	@ pMsgBase,
	beq	.L28	@,
	ldr	r2, [r8, #116]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	cmp	r2, #0	@ <variable>.first_mb_in_slice,
	streq	r2, [fp, #-64]	@ <variable>.first_mb_in_slice, %sfp
	bne	.L29	@,
.L9:
	ldr	r3, [r8, #36]	@ <variable>.TotalSliceNum, <variable>.TotalSliceNum
	cmp	r3, #0	@ <variable>.TotalSliceNum,
	beq	.L18	@,
	mov	r5, #0	@ i,
	sub	r6, fp, #48	@ tmp425,,
	mov	r9, r5	@ tmp424, i
.L17:
	cmp	r5, #0	@ i,
	beq	.L10	@,
	sub	ip, r5, #1	@ tmp274, i,
	mov	r0, #44	@,
	mla	r1, r0, r5, r8	@ tmp272,, i, pRv8DecParam
	mla	r2, r0, ip, r8	@ tmp278,, tmp274, pRv8DecParam
	ldr	r0, [r1, #116]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	ldr	ip, [r2, #116]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	cmp	r0, ip	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	ble	.L11	@,
.L10:
	mov	r1, #44	@,
	ldr	r7, [fp, #-64]	@, %sfp
	mul	r0, r1, r5	@,, i
	add	ip, r5, r7	@ D.39520, i,
	str	r9, [fp, #-48]	@ tmp424, D32
	mov	r3, #0	@ tmp288,
	mov	r4, ip, asl #8	@, D.39520,
	str	r4, [fp, #-56]	@, %sfp
	movw	r1, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC4	@,
	add	r4, r5, #1	@ j, i,
	str	r0, [fp, #-60]	@, %sfp
	mov	r0, #4	@,
	ldr	lr, [fp, #-60]	@, %sfp
	add	r7, lr, r8	@ tmp286,, pRv8DecParam
	ldr	r2, [r7, #96]	@ <variable>.StreamLength, <variable>.StreamLength
	bfi	r3, r2, #0, #24	@ tmp288, <variable>.StreamLength,,
	str	r3, [r6, #0]	@ tmp288,
	ldr	lr, [r7, #88]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	bfi	r3, lr, #24, #7	@ tmp296, <variable>.StreamBitOffset,,
	str	r3, [r6, #0]	@ tmp296,
	str	r3, [sl, ip, asl #8]	@ D32.602,* pMsgBase
	ldr	r2, [fp, #-48]	@, D32
	str	ip, [fp, #-72]	@,
	bl	dprint_vfmw	@
	ldr	ip, [fp, #-72]	@,
	mov	r3, #0	@ tmp306,
	str	r9, [fp, #-48]	@ tmp424, D32
	ldr	r0, [r7, #80]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	mov	r1, ip, asl #6	@ tmp308, D.39520,
	add	r2, r1, #1	@ tmp309, tmp308,
	bfi	r3, r0, #0, #24	@ tmp306, <variable>.StreamPhyAddr,,
	str	r3, [r6, #0]	@ tmp306,
	mov	r0, #4	@,
	str	r3, [sl, r2, asl #2]	@ D32.609,* pMsgBase
	movw	r1, #:lower16:.LC5	@,
	ldr	r2, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC5	@,
	str	ip, [fp, #-72]	@,
	bl	dprint_vfmw	@
	ldr	ip, [fp, #-72]	@,
	mov	r3, #0	@ tmp319,
	str	r9, [fp, #-48]	@ tmp424, D32
	mov	r0, #4	@,
	ldr	r1, [r7, #100]	@ <variable>.StreamLength, <variable>.StreamLength
	mov	r2, ip, asl #5	@ tmp328, D.39520,
	bfi	r3, r1, #0, #24	@ tmp319, <variable>.StreamLength,,
	add	r2, r2, #1	@ tmp329, tmp328,
	str	r3, [r6, #0]	@ tmp319,
	movw	r1, #:lower16:.LC6	@,
	ldr	lr, [r7, #92]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	movt	r1, #:upper16:.LC6	@,
	bfi	r3, lr, #24, #7	@ tmp327, <variable>.StreamBitOffset,,
	str	r3, [r6, #0]	@ tmp327,
	str	r3, [sl, r2, asl #3]	@ D32.618,* pMsgBase
	ldr	r2, [fp, #-48]	@, D32
	str	ip, [fp, #-72]	@,
	bl	dprint_vfmw	@
	ldr	lr, [fp, #-56]	@, %sfp
	mov	r3, #0	@ tmp340,
	str	r9, [fp, #-48]	@ tmp424, D32
	mov	r0, #4	@,
	ldr	r2, [r7, #84]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	add	ip, lr, #12	@ tmp342,,
	movw	r1, #:lower16:.LC7	@,
	movt	r1, #:upper16:.LC7	@,
	bfi	r3, r2, #0, #24	@ tmp340, <variable>.StreamPhyAddr,,
	str	r3, [r6, #0]	@ tmp340,
	str	r3, [sl, ip]	@ D32.625,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	str	r9, [fp, #-48]	@ tmp424, D32
	ldr	r0, [fp, #-72]	@,
	ldr	r2, [r7, #104]	@ <variable>.dblk_filter_passthrough, <variable>.dblk_filter_passthrough
	ldr	r3, [r6, #0]	@ tmp352,
	mov	r1, r0, asl #4	@ tmp367, D.39520,
	mov	r0, #4	@,
	bfi	r3, r2, #16, #1	@ tmp352, <variable>.dblk_filter_passthrough,,
	str	r3, [r6, #0]	@ tmp352,
	ldr	r2, [r7, #108]	@ <variable>.osvquant, <variable>.osvquant
	add	ip, r1, #1	@ tmp368, tmp367,
	movw	r1, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC8	@,
	bfi	r3, r2, #17, #2	@ tmp359, <variable>.osvquant,,
	str	r3, [r6, #0]	@ tmp359,
	ldr	r2, [r7, #112]	@ <variable>.sliceqp, <variable>.sliceqp
	bfi	r3, r2, #19, #5	@ tmp366, <variable>.sliceqp,,
	str	r3, [r6, #0]	@ tmp366,
	str	r3, [sl, ip, asl #4]	@ D32.639,* pMsgBase
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r1, [r8, #36]	@ temp.647, <variable>.TotalSliceNum
	str	r9, [fp, #-48]	@ tmp424, D32
	ldrh	r3, [r7, #116]	@, <variable>.first_mb_in_slice
	cmp	r4, r1	@ j, temp.647
	strh	r3, [r6, #0]	@ movhi	@, <variable>.slice_start_mbn
	bcs	.L12	@,
	mov	r2, #44	@,
	mla	r3, r2, r4, r8	@ tmp387,, j, pRv8DecParam
	ldr	r2, [r7, #116]	@ temp.616, <variable>.first_mb_in_slice
	ldr	ip, [r3, #116]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	cmp	r2, ip	@ temp.616, <variable>.first_mb_in_slice
	blt	.L12	@,
	mvn	ip, r4	@ tmp433, j
	ldr	lr, [fp, #-60]	@, %sfp
	add	r0, ip, r1	@ tmp432, tmp433, temp.647
	tst	r0, #1	@ tmp432,
	add	r7, lr, #80	@ tmp392,,
	add	r3, r8, r7	@ ivtmp.575, pRv8DecParam, tmp392
	beq	.L13	@,
	add	r4, r4, #1	@ j, j,
	cmp	r4, r1	@ j, temp.647
	bcs	.L12	@,
	ldr	r7, [r3, #124]	@ temp.645, <variable>.first_mb_in_slice
	add	r3, r3, #44	@ ivtmp.575, ivtmp.575,
	cmp	r2, r7	@ temp.616, temp.645
	bge	.L13	@,
	b	.L12	@
.L14:
	ldr	r7, [r3, #124]	@ temp.645, <variable>.first_mb_in_slice
	add	r3, r3, #88	@ ivtmp.575, ivtmp.575,
	cmp	r2, r7	@ temp.616, temp.645
	blt	.L12	@,
	ldr	r0, [r0, #124]	@ temp.645, <variable>.first_mb_in_slice
	add	r4, r4, #1	@ j, j,
	cmp	r2, r0	@ temp.616, temp.645
	blt	.L12	@,
.L13:
	add	r4, r4, #1	@ j, j,
	add	r0, r3, #44	@ tmp435, ivtmp.575,
	cmp	r4, r1	@ j, temp.647
	bcc	.L14	@,
.L12:
	cmp	r1, r4	@ temp.647, j
	beq	.L30	@,
	mov	r2, #44	@,
	ldr	lr, [fp, #-64]	@, %sfp
	mla	r3, r2, r4, r8	@ tmp400,, j, pRv8DecParam
	ldr	r1, [fp, #-68]	@, %sfp
	add	r7, lr, r4, asl #2	@, tmp405,, j,
	add	r7, r1, r7, asl #6	@, prephitmp.558,, tmp405,
	ldr	ip, [r3, #116]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	sub	r0, ip, #1	@ tmp403, <variable>.first_mb_in_slice,
	str	r0, [r8, #120]	@ tmp403, <variable>.last_mb_in_slice
.L16:
	mov	r1, #44	@,
	mov	r0, #4	@,
	mla	ip, r1, r5, r8	@ tmp410,, i, pRv8DecParam
	ldr	r5, [fp, #-56]	@, %sfp
	movw	r1, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC9	@,
	add	r3, r5, #20	@ tmp413,,
	sub	r5, r4, #1	@ i, j,
	ldrh	r2, [ip, #120]	@, <variable>.last_mb_in_slice
	strh	r2, [r6, #2]	@ movhi	@, <variable>.slice_end_mbn
	ldr	lr, [fp, #-48]	@ D32.649, D32
	str	lr, [sl, r3]	@ D32.649,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r0, [fp, #-56]	@, %sfp
	str	r7, [r6, #0]	@ prephitmp.558, <variable>.next_slice_para_addr
	movw	r1, #:lower16:.LC10	@,
	add	ip, r0, #252	@ tmp418,,
	movt	r1, #:upper16:.LC10	@,
	mov	r0, #4	@,
	str	r7, [sl, ip]	@ D32.655,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r8, #36]	@ <variable>.TotalSliceNum, <variable>.TotalSliceNum
.L11:
	add	r5, r5, #1	@ i, i,
	cmp	r3, r5	@ <variable>.TotalSliceNum, i
	bhi	.L17	@,
.L18:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L30:
	ldr	lr, [r8, #8]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	mov	r7, #0	@ prephitmp.558,
	ldr	r2, [r8, #4]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	mul	r3, r2, lr	@ tmp393, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	sub	r1, r3, #1	@ tmp396, tmp393,
	str	r1, [r8, #120]	@ tmp396, <variable>.last_mb_in_slice
	b	.L16	@
.L29:
	ldr	lr, [r8, #88]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	r4, #0	@ tmp225,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC4	@,
	bfi	r4, lr, #24, #7	@ tmp225, <variable>.StreamBitOffset,,
	str	r4, [fp, #-48]	@ tmp225,
	str	r4, [sl, #0]	@ tmp225,* pMsgBase
	movt	r1, #:upper16:.LC4	@,
	ldr	r2, [fp, #-48]	@, D32
	mov	r4, #0	@ tmp222,
	bl	dprint_vfmw	@
	ldr	r2, [r8, #80]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	mov	r1, r4	@ tmp230, tmp222
	mov	r0, #4	@,
	bfi	r1, r2, #0, #24	@ tmp230, <variable>.StreamPhyAddr,,
	str	r1, [fp, #-48]	@ tmp230,
	str	r1, [sl, #4]	@ tmp230,
	movw	r1, #:lower16:.LC5	@,
	ldr	r2, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	ldr	r3, [r8, #92]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	ip, r4	@ tmp237, tmp222
	mov	r0, #4	@,
	bfi	ip, r3, #24, #7	@ tmp237, <variable>.StreamBitOffset,,
	str	ip, [fp, #-48]	@ tmp237,
	str	ip, [sl, #8]	@ tmp237,
	movw	r1, #:lower16:.LC6	@,
	ldr	r2, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	ldr	r2, [r8, #84]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	mov	r1, r4	@ tmp242, tmp222
	mov	r0, #4	@,
	bfi	r1, r2, #0, #24	@ tmp242, <variable>.StreamPhyAddr,,
	str	r1, [fp, #-48]	@ tmp242,
	str	r1, [sl, #12]	@ tmp242,
	movw	r1, #:lower16:.LC7	@,
	ldr	r2, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC7	@,
	bl	dprint_vfmw	@
	ldr	r3, [r8, #104]	@ <variable>.dblk_filter_passthrough, <variable>.dblk_filter_passthrough
	ldr	ip, [r8, #108]	@ <variable>.osvquant, <variable>.osvquant
	mov	lr, #1	@,
	ldr	r2, [r8, #112]	@ <variable>.sliceqp, <variable>.sliceqp
	mov	r0, #4	@,
	mov	r3, r3, asl #16	@ tmp248, <variable>.dblk_filter_passthrough,
	str	lr, [fp, #-64]	@, %sfp
	and	r3, r3, #65536	@ tmp250, tmp248,
	movw	r1, #:lower16:.LC8	@,
	bfi	r3, ip, #17, #2	@ tmp250, <variable>.osvquant,,
	movt	r1, #:upper16:.LC8	@,
	bfi	r3, r2, #19, #5	@ tmp252, <variable>.sliceqp,,
	str	r3, [fp, #-48]	@ tmp252,
	str	r3, [sl, #16]	@ tmp252,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r8, #116]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	strh	r4, [fp, #-48]	@ movhi	@ tmp222, <variable>.slice_start_mbn
	mov	r0, #4	@,
	sub	r1, ip, #1	@ tmp260, <variable>.first_mb_in_slice,
	strh	r1, [fp, #-46]	@ movhi	@ tmp260, <variable>.slice_end_mbn
	ldr	r2, [fp, #-48]	@ D32.591, D32
	movw	r1, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC9	@,
	str	r2, [sl, #20]	@ D32.591,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [fp, #-68]	@, %sfp
	movw	r1, #:lower16:.LC10	@,
	mov	r0, #4	@,
	add	ip, r3, #256	@ tmp265,,
	str	ip, [fp, #-48]	@ tmp265, <variable>.next_slice_para_addr
	str	ip, [sl, #252]	@ tmp265,
	movt	r1, #:upper16:.LC10	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	b	.L9	@
.L28:
	movw	r1, #:lower16:.LC2	@,
	movw	r2, #:lower16:.LANCHOR0	@,
	movt	r1, #:upper16:.LC2	@,
	movt	r2, #:upper16:.LANCHOR0	@,
	movw	r3, #:lower16:.LC3	@,
	movt	r3, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	b	.L18	@
	.fnend
	.size	RV8HAL_V300R001_WriteSliceMsg, .-RV8HAL_V300R001_WriteSliceMsg
	.align	2
	.global	RV8HAL_V300R001_WritePicMsg
	.type	RV8HAL_V300R001_WritePicMsg, %function
RV8HAL_V300R001_WritePicMsg:
	.fnstart
.LFB1531:
	@ args = 0, pretend = 0, frame = 16
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
	mov	r6, r0	@ pHwMem, pHwMem
	mov	r4, r1	@ pRv8DecParam, pRv8DecParam
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC11	@,
	movt	r1, #:upper16:.LC11	@,
	bl	dprint_vfmw	@
	ldr	r0, [r6, #48]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	bic	r0, r0, #15	@, <variable>.MsgSlotAddr,
	bl	MEM_Phy2Vir	@
	subs	r5, r0, #0	@ D.39320,
	beq	.L35	@,
	ldrb	r0, [r4, #12]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	mov	r7, #0	@ tmp193,
	mov	r8, r5	@ p32, D.39320
	mov	sl, r7	@ tmp195, tmp193
	bfi	sl, r0, #0, #2	@ tmp195, <variable>.PicCodingType,,
	str	sl, [fp, #-48]	@ tmp195,
	str	sl, [r8], #4	@ tmp195,
	mov	r0, #4	@,
	ldr	r2, [fp, #-48]	@, D32
	movw	r1, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC4	@,
	add	sl, r8, r0	@ p32.687, p32,
	bl	dprint_vfmw	@
	ldmib	r4, {r1, r3}	@ phole ldm
	mov	r0, #4	@,
	sub	r9, r1, #1	@ tmp204, <variable>.PicWidthInMb,
	movw	r1, #:lower16:.LC5	@,
	sub	ip, r3, #1	@ tmp208, <variable>.PicHeightInMb,
	movt	r1, #:upper16:.LC5	@,
	mov	r2, r9, asl #23	@ tmp209, tmp204,
	add	r9, sl, r0	@ p32.692, p32.687,
	add	r3, r9, r0	@ p32.697, p32.692,
	mov	r2, r2, lsr #23	@ tmp209, tmp209,
	add	lr, r3, r0	@, p32.697,
	bfi	r2, ip, #16, #9	@ tmp209, tmp208,,
	str	lr, [fp, #-56]	@, %sfp
	str	r2, [fp, #-48]	@ tmp209,
	str	r2, [r5, #4]	@ tmp209,
	ldr	r2, [fp, #-48]	@, D32
	str	r3, [fp, #-60]	@,
	bl	dprint_vfmw	@
	ldrh	r1, [r4, #16]	@, <variable>.Ratio0
	mov	r0, #4	@,
	strh	r1, [fp, #-48]	@ movhi	@, <variable>.Ratio0
	movw	r1, #:lower16:.LC6	@,
	ldrh	ip, [r4, #20]	@, <variable>.Ratio1
	movt	r1, #:upper16:.LC6	@,
	strh	ip, [fp, #-46]	@ movhi	@, <variable>.Ratio1
	ldr	lr, [fp, #-48]	@ D32.690, D32
	str	lr, [r8, #4]	@ D32.690,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	mov	r0, r7	@ tmp219, tmp193
	bfi	r0, r7, #1, #3	@ tmp219, tmp193,,
	str	r0, [fp, #-48]	@ tmp219,
	str	r0, [sl, #4]	@ tmp219,
	movw	r1, #:lower16:.LC7	@,
	ldr	r2, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC7	@,
	mov	r0, #4	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #24]	@ <variable>.PQUANT, <variable>.PQUANT
	mov	r3, r7	@ tmp225, tmp193
	mov	r0, #4	@,
	bfi	r3, r2, #0, #5	@ tmp225, <variable>.PQUANT,,
	str	r3, [fp, #-48]	@ tmp225,
	str	r3, [r9, #4]	@ tmp225,
	movw	r1, #:lower16:.LC8	@,
	ldr	r2, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC8	@,
	bl	dprint_vfmw	@
	ldr	ip, [fp, #-60]	@,
	ldr	r1, [r4, #28]	@ <variable>.PrevPicQP, <variable>.PrevPicQP
	mov	r2, r7	@ tmp231, tmp193
	mov	r0, #4	@,
	bfi	r2, r1, #0, #5	@ tmp231, <variable>.PrevPicQP,,
	str	r2, [fp, #-48]	@ tmp231,
	str	r2, [ip, #4]	@ tmp231,
	movw	r1, #:lower16:.LC9	@,
	ldr	r2, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	ldr	r1, [fp, #-56]	@, %sfp
	ldr	r3, [r4, #32]	@ <variable>.PrevPicMb0QP, <variable>.PrevPicMb0QP
	mov	r0, #4	@,
	bfi	r7, r3, #0, #5	@ tmp237, <variable>.PrevPicMb0QP,,
	str	r7, [fp, #-48]	@ tmp237,
	str	r7, [r1, #4]	@ tmp237,
	movw	r1, #:lower16:.LC12	@,
	ldr	r2, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC12	@,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #60]	@ <variable>.DispFramePhyAddr, <variable>.DispFramePhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC13	@,
	bic	r2, ip, #15	@ tmp243, <variable>.DispFramePhyAddr,
	str	r2, [fp, #-48]	@ tmp243, <variable>.curr_rcn_addr
	str	r2, [r5, #64]	@ tmp243,
	movt	r1, #:upper16:.LC13	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r4, #52]	@ <variable>.FwdRefPhyAddr, <variable>.FwdRefPhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC14	@,
	bic	ip, r3, #15	@ tmp249, <variable>.FwdRefPhyAddr,
	str	ip, [fp, #-48]	@ tmp249, <variable>.fwd_ref_addr
	str	ip, [r5, #68]	@ tmp249,
	movt	r1, #:upper16:.LC14	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r4, #48]	@ <variable>.BwdRefPhyAddr, <variable>.BwdRefPhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC15	@,
	bic	r3, r2, #15	@ tmp255, <variable>.BwdRefPhyAddr,
	str	r3, [fp, #-48]	@ tmp255, <variable>.bwd_ref_addr
	str	r3, [r5, #72]	@ tmp255,
	movt	r1, #:upper16:.LC15	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r4, #72]	@ <variable>.CurrPmvPhyAddr, <variable>.CurrPmvPhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	str	ip, [fp, #-48]	@ <variable>.CurrPmvPhyAddr, <variable>.curr_colmb_addr
	str	ip, [r5, #76]	@ <variable>.CurrPmvPhyAddr,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r4, #76]	@ <variable>.ColPmvPhyAddr, <variable>.ColPmvPhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC17	@,
	movt	r1, #:upper16:.LC17	@,
	str	r2, [fp, #-48]	@ <variable>.ColPmvPhyAddr, <variable>.bwd_colmb_addr
	str	r2, [r5, #80]	@ <variable>.ColPmvPhyAddr,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r6, #1136]	@ <variable>.SedTopAddr, <variable>.SedTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC18	@,
	bic	ip, r3, #15	@ tmp271, <variable>.SedTopAddr,
	str	ip, [fp, #-48]	@ tmp271, <variable>.sed_top_addr
	str	ip, [r5, #84]	@ tmp271,
	movt	r1, #:upper16:.LC18	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, #1140]	@ <variable>.PmvTopAddr, <variable>.PmvTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC19	@,
	bic	r3, r2, #15	@ tmp277, <variable>.PmvTopAddr,
	str	r3, [fp, #-48]	@ tmp277, <variable>.pmv_top_addr
	str	r3, [r5, #88]	@ tmp277,
	movt	r1, #:upper16:.LC19	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r6, #1144]	@ <variable>.RcnTopAddr, <variable>.RcnTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC20	@,
	bic	r2, ip, #15	@ tmp283, <variable>.RcnTopAddr,
	str	r2, [fp, #-48]	@ tmp283, <variable>.rcn_top_addr
	str	r2, [r5, #92]	@ tmp283,
	movt	r1, #:upper16:.LC20	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r6, #1152]	@ <variable>.DblkTopAddr, <variable>.DblkTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	str	r3, [fp, #-48]	@ <variable>.DblkTopAddr, <variable>.dblk_top_addr
	str	r3, [r5, #96]	@ <variable>.DblkTopAddr,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r6, #48]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	movw	r1, #:lower16:.LC10	@,
	mov	r0, #4	@,
	bic	r2, ip, #15	@ tmp293, <variable>.MsgSlotAddr,
	movt	r1, #:upper16:.LC10	@,
	add	r3, r2, #256	@ tmp295, tmp293,
	str	r3, [fp, #-48]	@ tmp295, <variable>.next_slice_para_addr
	str	r3, [r5, #252]	@ tmp295,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
.L34:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L35:
	movw	r1, #:lower16:.LC2	@,
	ldr	r2, .L36	@,
	movt	r1, #:upper16:.LC2	@,
	movw	r3, #:lower16:.LC3	@,
	movt	r3, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	b	.L34	@
.L37:
	.align	2
.L36:
	.word	.LANCHOR0+32
	.fnend
	.size	RV8HAL_V300R001_WritePicMsg, .-RV8HAL_V300R001_WritePicMsg
	.align	2
	.global	RV8HAL_V300R001_WriteReg
	.type	RV8HAL_V300R001_WriteReg, %function
RV8HAL_V300R001_WriteReg:
	.fnstart
.LFB1530:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #16
	sub	sp, sp, #16	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r4, r1	@ pRv8DecParam, pRv8DecParam
	mov	r6, r0	@ pHwMem, pHwMem
	movw	r1, #:lower16:.LC22	@,
	mov	r0, #2	@,
	movt	r1, #:upper16:.LC22	@,
	mov	r5, r2	@ VdhId, VdhId
	bl	dprint_vfmw	@
	ldr	ip, [r4, #8]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	cmp	r5, #0	@ VdhId,
	ldr	r2, [r4, #4]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	mul	r7, r2, ip	@ tmp185, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	sub	r1, r7, #1	@ tmp188, tmp185,
	bic	r0, r1, #-16777216	@ tmp193, tmp188,
	bic	r3, r0, #15728640	@ tmp193, tmp193,
	orr	r3, r3, #16777216	@ tmp196, tmp193,
	bfc	r3, #25, #1	@ tmp196,,
	str	r3, [fp, #-40]	@ tmp196,
	ble	.L57	@,
	movw	r1, #:lower16:.LC23	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC23	@,
	ldr	r2, .L62	@,
	mov	r3, r5	@, VdhId
	mov	ip, #1	@ tmp205,
	str	ip, [sp, #0]	@ tmp205,
	bl	dprint_vfmw	@
.L40:
	ldr	r2, [fp, #-40]	@, D32
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC24	@,
	movt	r1, #:upper16:.LC24	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #64]	@ <variable>.DDRStride, <variable>.DDRStride
	ldr	r3, [r4, #40]	@ <variable>.FstSlcGrp, <variable>.FstSlcGrp
	mov	r7, #8	@ tmp213,
	mov	r2, #0	@ tmp208,
	movw	r1, #11344	@ tmp222,
	mov	ip, r0, lsr #6	@ tmp211, <variable>.DDRStride,
	ldr	r1, [r4, r1]	@ <variable>.Compress_en, <variable>.Compress_en
	bfi	r7, ip, #4, #10	@ tmp213, tmp211,,
	cmp	r5, r2	@ VdhId,
	bfi	r7, r3, #14, #1	@ tmp215, <variable>.FstSlcGrp,,
	orr	r0, r7, #32768	@ tmp218, tmp215,
	bfi	r0, r2, #16, #12	@ tmp218, tmp208,,
	bic	r3, r0, #805306368	@ tmp219, tmp218,
	orr	r3, r3, #536870912	@ tmp224, tmp219,
	bfi	r3, r1, #30, #1	@ tmp224, <variable>.Compress_en,,
	bfi	r3, r2, #31, #1	@ tmp225, tmp208,,
	str	r3, [fp, #-40]	@ tmp225,
	ble	.L58	@,
	mov	r3, r5	@, VdhId
	ldr	r2, .L62	@,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC23	@,
	mov	r7, #1	@ tmp265,
	str	r7, [sp, #0]	@ tmp265,
	bl	dprint_vfmw	@
	ldr	r2, [fp, #-40]	@, D32
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	bl	dprint_vfmw	@
	ldr	ip, [r6, #48]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r3, r5	@, VdhId
	ldr	r2, .L62	@,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC23	@,
	bic	ip, ip, #15	@ tmp271, <variable>.MsgSlotAddr,
	str	r7, [sp, #0]	@ tmp265,
	str	ip, [fp, #-40]	@ tmp271, <variable>.av_msg_addr
	bl	dprint_vfmw	@
	ldr	r2, [fp, #-40]	@, D32
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC26	@,
	movt	r1, #:upper16:.LC26	@,
	bl	dprint_vfmw	@
	ldr	ip, [r6, #32]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r3, r5	@, VdhId
	ldr	r2, .L62	@,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC23	@,
	bic	ip, ip, #15	@ tmp280, <variable>.MsgSlotAddr,
	str	r7, [sp, #0]	@ tmp265,
	str	ip, [fp, #-40]	@ tmp280, <variable>.va_msg_addr
	bl	dprint_vfmw	@
	ldr	r2, [fp, #-40]	@, D32
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC27	@,
	movt	r1, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #44]	@ <variable>.StreamBaseAddr, <variable>.StreamBaseAddr
	movw	r1, #:lower16:.LC23	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC23	@,
	ldr	r2, .L62	@,
	mov	r3, r5	@, VdhId
	str	ip, [fp, #-40]	@ <variable>.StreamBaseAddr, <variable>.stream_base_addr
	str	r7, [sp, #0]	@ tmp265,
	bl	dprint_vfmw	@
.L42:
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC28	@,
	ldr	r2, [fp, #-40]	@, D32
	movt	r1, #:upper16:.LC28	@,
	bl	dprint_vfmw	@
	ldr	r1, [r4, #4]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	cmp	r1, #256	@ <variable>.PicWidthInMb,
	movwls	r1, #:lower16:96016	@ tmp296,
	movwhi	r1, #30480	@ tmp295,
	movtls	r1, #:upper16:96016	@ tmp296,
	cmp	r5, #0	@ VdhId,
	str	r1, [fp, #-40]	@ tmp296, D32
	bne	.L59	@,
	movw	r0, #:lower16:s_RegPhyBaseAddr	@ tmp297,
	movt	r0, #:upper16:s_RegPhyBaseAddr	@ tmp297,
	ldr	r1, [fp, #-40]	@, D32
	ldr	r7, [r0, #0]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, r7, #4	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
.L48:
	movw	r0, #1208	@ tmp312,
	movw	r7, #:lower16:g_HwMem	@ tmp438,
	mul	r8, r0, r5	@ tmp311, tmp312, VdhId
	movt	r7, #:upper16:g_HwMem	@ tmp438,
	movw	ip, #:lower16:3148803	@ tmp309,
	movt	ip, #:upper16:3148803	@ tmp309,
	str	ip, [fp, #-40]	@ tmp309, D32
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC30	@,
	movt	r1, #:upper16:.LC30	@,
	ldr	lr, [r8, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [lr, #60]	@ tmp309,
	ldr	r2, [fp, #-40]	@ D32.830, D32
	ldr	r3, [r8, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [r3, #64]	@ D32.830,
	ldr	lr, [fp, #-40]	@ D32.834, D32
	ldr	ip, [r8, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	lr, [ip, #68]	@ D32.834,
	ldr	r2, [fp, #-40]	@ D32.838, D32
	ldr	r3, [r8, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [r3, #72]	@ D32.838,
	ldr	lr, [fp, #-40]	@ D32.842, D32
	ldr	ip, [r8, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	lr, [ip, #76]	@ D32.842,
	ldr	r2, [fp, #-40]	@ D32.846, D32
	ldr	r3, [r8, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [r3, #80]	@ D32.846,
	ldr	lr, [fp, #-40]	@ D32.850, D32
	ldr	ip, [r8, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	lr, [ip, #84]	@ D32.850,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r8, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r3, [r4, #56]	@ <variable>.CurPicPhyAddr, <variable>.CurPicPhyAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC31	@,
	movt	r1, #:upper16:.LC31	@,
	bic	r2, r3, #15	@ D32.455, <variable>.CurPicPhyAddr,
	str	r2, [fp, #-40]	@ D32.455, D32
	str	r2, [ip, #96]	@ D32.455,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r8, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r3, [r4, #64]	@ D32.856, <variable>.DDRStride
	mov	r0, #3	@,
	ldr	r8, [r4, #8]	@ height_in_mb, <variable>.PicHeightInMb
	movw	r1, #:lower16:.LC32	@,
	movt	r1, #:upper16:.LC32	@,
	str	r3, [fp, #-40]	@ D32.856, D32
	str	r3, [r2, #100]	@ D32.856,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r1, [r4, #4]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	movw	r3, #2047	@ tmp365,
	mov	r2, r1, asl #4	@ D.39244, <variable>.PicWidthInMb,
	sub	ip, r2, #1	@ tmp364, D.39244,
	cmp	ip, r3	@ tmp364, tmp365
	bhi	.L60	@,
.L51:
	mov	sl, #16	@ level,
.L53:
	ldr	r3, [r4, #8]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	add	r0, r8, #1	@ tmp381, height_in_mb,
	movw	lr, #1208	@ tmp388,
	ldr	ip, [r4, #64]	@ <variable>.DDRStride, <variable>.DDRStride
	mul	r5, lr, r5	@ tmp387, tmp388, VdhId
	mov	r1, r3, asl #4	@ tmp375, <variable>.PicHeightInMb,
	add	r2, r1, #31	@ tmp377, tmp375,
	mov	r8, r0, lsr #1	@ tmp382, tmp381,
	movw	r1, #:lower16:.LC33	@,
	mov	r0, #3	@,
	mov	lr, r2, lsr #5	@ tmp378, tmp377,
	movt	r1, #:upper16:.LC33	@,
	mul	ip, ip, r8	@ tmp383, <variable>.DDRStride, tmp382
	mov	r3, lr, asl #4	@ tmp379, tmp378,
	ldr	lr, [r5, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r8, #0	@ tmp403,
	mla	r2, sl, r3, ip	@ tmp385, level, tmp379, tmp383
	mov	ip, r2, asl #1	@ D32.457, tmp385,
	str	ip, [fp, #-40]	@ D32.457, D32
	str	ip, [lr, #104]	@ D32.457,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r4, #8]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	ldr	ip, [r5, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC34	@,
	mov	r2, r3, asl #4	@ tmp393, <variable>.PicHeightInMb,
	add	r3, r2, #31	@ tmp395, tmp393,
	bic	r2, r3, #31	@ tmp397, tmp395,
	mul	sl, sl, r2	@ D32.458, level, tmp397
	str	sl, [ip, #108]	@ D32.458,
	ldr	r3, [r6, #1184]	@ <variable>.DnrMbInfoAddr, <variable>.DnrMbInfoAddr
	ldr	r2, [r5, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [fp, #-40]	@ <variable>.DnrMbInfoAddr, <variable>.dnr_mbinfo_staddr
	str	r3, [r2, #144]	@ <variable>.DnrMbInfoAddr,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r5, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r8, [fp, #-40]	@ tmp403, D32
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC35	@,
	movt	r1, #:upper16:.LC35	@,
	str	r8, [ip, #148]	@ tmp403,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r5, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r1, r8	@ tmp424, tmp403
	bfi	r1, r8, #0, #1	@ tmp424, tmp403,,
	str	r1, [fp, #-40]	@ tmp424,
	mov	r0, #3	@,
	str	r1, [r2, #152]	@ tmp424,
	movw	r1, #:lower16:.LC36	@,
	ldr	r2, [fp, #-40]	@, D32
	movt	r1, #:upper16:.LC36	@,
	bl	dprint_vfmw	@
	ldr	r3, [r5, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mvn	ip, #0	@ tmp437,
	str	ip, [r3, #32]	@ tmp437,
.L55:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L59:
	cmp	r5, #1	@ VdhId,
	beq	.L61	@,
	cmp	r5, #0	@ VdhId,
	ble	.L48	@,
	b	.L49	@
.L60:
	sub	lr, r2, #2048	@ tmp366, D.39244,
	sub	r1, lr, #1	@ tmp366, tmp366,
	cmp	r1, r3	@ tmp366, tmp365
	movls	sl, #32	@ level,
	bls	.L53	@,
	sub	r0, r2, #4096	@ tmp369, D.39244,
	sub	ip, r0, #1	@ tmp369, tmp369,
	cmp	ip, r3	@ tmp369, tmp365
	movls	sl, #48	@ level,
	bls	.L53	@,
	sub	r1, r2, #6144	@ tmp372, D.39244,
	sub	r2, r1, #1	@ tmp372, tmp372,
	cmp	r2, r3	@ tmp372, tmp365
	movls	sl, #64	@ level,
	bls	.L53	@,
	b	.L51	@
.L61:
	movw	r3, #:lower16:s_RegPhyBaseAddr_1	@ tmp301,
	movt	r3, #:upper16:s_RegPhyBaseAddr_1	@ tmp301,
	ldr	r1, [fp, #-40]	@, D32
	ldr	r2, [r3, #0]	@ s_RegPhyBaseAddr_1, s_RegPhyBaseAddr_1
	add	r0, r2, #4	@, s_RegPhyBaseAddr_1,
	bl	MEM_WritePhyWord	@
.L49:
	mov	lr, #0	@ tmp308,
	mov	r3, r5	@, VdhId
	mov	r0, lr	@, tmp308
	movw	r1, #:lower16:.LC29	@,
	ldr	r2, .L62	@,
	movt	r1, #:upper16:.LC29	@,
	str	lr, [sp, #0]	@ tmp308,
	bl	dprint_vfmw	@
	b	.L55	@
.L58:
	movw	r8, #1208	@ tmp228,
	movw	r7, #:lower16:g_HwMem	@ tmp226,
	mul	r8, r8, r5	@ tmp227, tmp228, VdhId
	movt	r7, #:upper16:g_HwMem	@ tmp226,
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	ldr	lr, [r8, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [lr, #12]	@ tmp225,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r8, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r3, [r6, #48]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC26	@,
	movt	r1, #:upper16:.LC26	@,
	bic	r2, r3, #15	@ tmp236, <variable>.MsgSlotAddr,
	str	r2, [fp, #-40]	@ tmp236, <variable>.av_msg_addr
	str	r2, [ip, #16]	@ tmp236,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r8, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r3, [r6, #32]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC27	@,
	movt	r1, #:upper16:.LC27	@,
	bic	r2, r3, #15	@ tmp247, <variable>.MsgSlotAddr,
	str	r2, [fp, #-40]	@ tmp247, <variable>.va_msg_addr
	str	r2, [ip, #20]	@ tmp247,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r8, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r3, [r4, #44]	@ <variable>.StreamBaseAddr, <variable>.StreamBaseAddr
	str	r3, [fp, #-40]	@ <variable>.StreamBaseAddr, <variable>.stream_base_addr
	str	r3, [r2, #24]	@ <variable>.StreamBaseAddr,
	b	.L42	@
.L57:
	movw	r7, #1208	@ tmp199,
	movw	r0, #:lower16:g_HwMem	@ tmp197,
	mul	r1, r7, r5	@ tmp198, tmp199, VdhId
	movt	r0, #:upper16:g_HwMem	@ tmp197,
	ldr	lr, [r1, r0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [lr, #8]	@ tmp196,
	b	.L40	@
.L63:
	.align	2
.L62:
	.word	.LANCHOR0+60
	.fnend
	.size	RV8HAL_V300R001_WriteReg, .-RV8HAL_V300R001_WriteReg
	.align	2
	.global	RV8HAL_V300R001_StartDec
	.type	RV8HAL_V300R001_StartDec, %function
RV8HAL_V300R001_StartDec:
	.fnstart
.LFB1529:
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
	cmp	r1, #1	@ VdhId,
	mov	r4, r0	@ pRv8DecParam, pRv8DecParam
	bls	.L72	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC37	@,
	movt	r1, #:upper16:.LC37	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39091,
.L67:
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L72:
	beq	.L73	@,
	movw	r5, #:lower16:g_HwMem	@ tmp145,
	movt	r5, #:upper16:g_HwMem	@ tmp145,
	ldr	r3, [r5, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L74	@,
.L69:
	movw	lr, #:lower16:.LANCHOR1	@ tmp150,
	movt	lr, #:upper16:.LANCHOR1	@ tmp150,
	mov	r2, #0	@,
	mov	r1, r4	@, pRv8DecParam
	ldr	r3, [lr, #0]	@ FrameNum, FrameNum
	movw	r0, #:lower16:g_HwMem	@,
	movt	r0, #:upper16:g_HwMem	@,
	add	ip, r3, #1	@ tmp153, FrameNum,
	str	ip, [lr, #0]	@ tmp153, FrameNum
	bl	RV8HAL_V300R001_WriteReg	@
	mov	r1, r4	@, pRv8DecParam
	movw	r0, #:lower16:g_HwMem	@,
	movt	r0, #:upper16:g_HwMem	@,
	bl	RV8HAL_V300R001_WritePicMsg	@
	mov	r1, r4	@, pRv8DecParam
	movw	r0, #:lower16:g_HwMem	@,
	movt	r0, #:upper16:g_HwMem	@,
	bl	RV8HAL_V300R001_WriteSliceMsg	@
	mov	r0, r4	@, pRv8DecParam
	bl	RV8HAL_V300R001_StartVDH	@
	mov	r0, #0	@ D.39091,
	b	.L67	@
.L74:
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	bl	MEM_Phy2Vir	@
	subs	r1, r0, #0	@ D.39098,
	strne	r1, [r5, #0]	@ D.39098, <variable>.pVdmRegVirAddr
	bne	.L69	@,
	movw	r1, #:lower16:.LC38	@,
	movt	r1, #:upper16:.LC38	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39091,
	b	.L67	@
.L73:
	mov	ip, #0	@ tmp144,
	mov	r3, r1	@, VdhId
	mov	r0, ip	@, tmp144
	movw	r1, #:lower16:.LC29	@,
	ldr	r2, .L75	@,
	movt	r1, #:upper16:.LC29	@,
	str	ip, [sp, #0]	@ tmp144,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39091,
	b	.L67	@
.L76:
	.align	2
.L75:
	.word	.LANCHOR0+88
	.fnend
	.size	RV8HAL_V300R001_StartDec, .-RV8HAL_V300R001_StartDec
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	__func__.39418, %object
	.size	__func__.39418, 30
__func__.39418:
	.ascii	"RV8HAL_V300R001_WriteSliceMsg\000"
	.space	2
	.type	__func__.39316, %object
	.size	__func__.39316, 28
__func__.39316:
	.ascii	"RV8HAL_V300R001_WritePicMsg\000"
	.type	__func__.39113, %object
	.size	__func__.39113, 25
__func__.39113:
	.ascii	"RV8HAL_V300R001_WriteReg\000"
	.space	3
	.type	__func__.39087, %object
	.size	__func__.39087, 25
__func__.39087:
	.ascii	"RV8HAL_V300R001_StartDec\000"
	.data
	.align	2
.LANCHOR1 = . + 0
	.type	FrameNum, %object
	.size	FrameNum, 4
FrameNum:
	.word	-1
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"start VDM...\012\000"
	.space	2
.LC1:
	.ascii	"configuring Slice Msg...\012\000"
	.space	2
.LC2:
	.ascii	"%s: %s\012\000"
.LC3:
	.ascii	"can not map dn msg virtual address!\012\000"
	.space	3
.LC4:
	.ascii	"D0 = 0x%x\012\000"
	.space	1
.LC5:
	.ascii	"D1 = 0x%x\012\000"
	.space	1
.LC6:
	.ascii	"D2 = 0x%x\012\000"
	.space	1
.LC7:
	.ascii	"D3 = 0x%x\012\000"
	.space	1
.LC8:
	.ascii	"D4 = 0x%x\012\000"
	.space	1
.LC9:
	.ascii	"D5 = 0x%x\012\000"
	.space	1
.LC10:
	.ascii	"D63 = 0x%x\012\000"
.LC11:
	.ascii	"configuring Pic Msg...\012\000"
.LC12:
	.ascii	"D6 = 0x%x\012\000"
	.space	1
.LC13:
	.ascii	"D16 = 0x%x\012\000"
.LC14:
	.ascii	"D17 = 0x%x\012\000"
.LC15:
	.ascii	"D18 = 0x%x\012\000"
.LC16:
	.ascii	"D19 = 0x%x\012\000"
.LC17:
	.ascii	"D20 = 0x%x\012\000"
.LC18:
	.ascii	"D21 = 0x%x\012\000"
.LC19:
	.ascii	"D22 = 0x%x\012\000"
.LC20:
	.ascii	"D23 = 0x%x\012\000"
.LC21:
	.ascii	"D024 = 0x%x\012\000"
	.space	3
.LC22:
	.ascii	"configuring VDM registers...\012\000"
	.space	2
.LC23:
	.ascii	"%s: WR_VREG but VdhId(%d) > MAX_VDH_NUM(%d)\012\000"
	.space	3
.LC24:
	.ascii	"BASIC_V300R001_CFG0=0x%x\012\000"
	.space	2
.LC25:
	.ascii	"BASIC_V300R001_CFG1=0x%x\012\000"
	.space	2
.LC26:
	.ascii	"AVM_V300R001_ADDR=0x%x\012\000"
.LC27:
	.ascii	"VAM_V300R001_ADDR=0x%x\012\000"
.LC28:
	.ascii	"STREAM_V300R001_BASE_ADDR=0x%x\012\000"
.LC29:
	.ascii	"%s: VdhId(%d) > %d\012\000"
.LC30:
	.ascii	"TIME_OUT = 0x%x\012\000"
	.space	3
.LC31:
	.ascii	"YSTADDR_V300R001_1D = 0x%x\012\000"
.LC32:
	.ascii	"YSTRIDE_V300R001_1D = 0x%x\012\000"
.LC33:
	.ascii	"UVOFFSET_V300R001_1D = 0x%x\012\000"
	.space	3
.LC34:
	.ascii	"DNR_MBINFO_STADDR=0x%x\012\000"
.LC35:
	.ascii	"REF_V300R001_PIC_TYPE=0x%x\012\000"
.LC36:
	.ascii	"FF_V300R001_APT_EN=0x%x\012\000"
	.space	3
.LC37:
	.ascii	"VdhId is wrong! RV8HAL_V200R003_StartDec\012\000"
	.space	2
.LC38:
	.ascii	"vdm register virtual address not mapped, reset fail"
	.ascii	"ed!\012\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
