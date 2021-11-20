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
	.file	"vdm_hal_divx3.c"
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
@ -DKBUILD_BASENAME=KBUILD_STR(vdm_hal_divx3)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD
@ drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV300R001/.vdm_hal_divx3.o.d
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV300R001/vdm_hal_divx3.c
@ -mlittle-endian -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -marm -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV300R001/vdm_hal_divx3.o
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
	.global	DIVX3HAL_V300R001_InitHal
	.type	DIVX3HAL_V300R001_InitHal, %function
DIVX3HAL_V300R001_InitHal:
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
	.size	DIVX3HAL_V300R001_InitHal, .-DIVX3HAL_V300R001_InitHal
	.align	2
	.global	DIVX3HAL_V300R001_StartVDH
	.type	DIVX3HAL_V300R001_StartVDH, %function
DIVX3HAL_V300R001_StartVDH:
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
	.size	DIVX3HAL_V300R001_StartVDH, .-DIVX3HAL_V300R001_StartVDH
	.align	2
	.global	DIVX3HAL_V300R001_WriteSliceMsg
	.type	DIVX3HAL_V300R001_WriteSliceMsg, %function
DIVX3HAL_V300R001_WriteSliceMsg:
	.fnstart
.LFB1532:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #28
	sub	sp, sp, #28	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	ldr	r2, [r0, #52]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r6, r1	@ pDivx3DecParam, pDivx3DecParam
	bic	r3, r2, #15	@, <variable>.MsgSlotAddr,
	str	r3, [fp, #-60]	@, %sfp
	mov	r0, r3	@,
	bl	MEM_Phy2Vir	@
	subs	sl, r0, #0	@ pMsgBase,
	beq	.L28	@,
	ldr	r0, [r6, #56]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	cmp	r0, #0	@ <variable>.slice_start_mbn,
	streq	r0, [fp, #-56]	@ <variable>.slice_start_mbn, %sfp
	bne	.L29	@,
.L9:
	ldr	r3, [r6, #52]	@ <variable>.TotalSliceNum, <variable>.TotalSliceNum
	cmp	r3, #0	@ <variable>.TotalSliceNum,
	beq	.L18	@,
	sub	r9, fp, #48	@ tmp256,,
	mov	r5, #0	@ i,
.L17:
	cmp	r5, #0	@ i,
	moveq	r7, #14	@ tmp252,
	beq	.L10	@,
	add	r7, r5, #14	@ tmp252, i,
	add	r2, r5, #13	@ tmp215, i,
	ldr	r0, [r6, r7, asl #2]	@ tmp216, <variable>.slice_start_mbn
	ldr	r1, [r6, r2, asl #2]	@ tmp217, <variable>.slice_start_mbn
	cmp	r0, r1	@ tmp216, tmp217
	bls	.L11	@,
.L10:
	ldr	r3, [fp, #-56]	@, %sfp
	mov	r4, #0	@ tmp221,
	ldr	lr, [r6, r7, asl #2]	@ tmp222, <variable>.slice_start_mbn
	mov	r0, #4	@,
	add	r8, r5, r3	@ D.39408, i,
	movw	r1, #:lower16:.LC3	@,
	bfi	r4, lr, #0, #20	@ tmp221, tmp222,,
	str	r4, [r9, #0]	@ tmp221,
	str	r4, [sl, r8, asl #8]	@ D32.588,* pMsgBase
	movt	r1, #:upper16:.LC3	@,
	ldr	r2, [fp, #-48]	@, D32
	add	r4, r5, #1	@ j, i,
	bl	dprint_vfmw	@
	ldr	r1, [r6, #52]	@ temp.607, <variable>.TotalSliceNum
	mov	r3, r8, asl #8	@ D.39409, D.39408,
	cmp	r4, r1	@ j, temp.607
	bcs	.L12	@,
	add	r5, r5, #15	@ tmp226, i,
	ldr	r0, [r6, r7, asl #2]	@ temp.608, <variable>.slice_start_mbn
	ldr	r2, [r6, r5, asl #2]	@ tmp227, <variable>.slice_start_mbn
	cmp	r0, r2	@ temp.608, tmp227
	bcc	.L12	@,
	mvn	ip, r4	@ tmp262, j
	add	r2, ip, r1	@ tmp261, tmp262, temp.607
	tst	r2, #1	@ tmp261,
	add	r7, r6, r7, asl #2	@, ivtmp.574, pDivx3DecParam, tmp252,
	beq	.L13	@,
	add	r4, r4, #1	@ j, j,
	cmp	r4, r1	@ j, temp.607
	bcs	.L12	@,
	ldr	r2, [r7, #8]	@ D.39442, <variable>.slice_start_mbn
	add	r7, r7, #4	@ ivtmp.574, ivtmp.574,
	cmp	r2, r0	@ D.39442, temp.608
	bls	.L13	@,
	b	.L12	@
.L14:
	ldr	lr, [r7, #8]	@ D.39442, <variable>.slice_start_mbn
	add	r7, r2, #4	@ ivtmp.574, tmp264,
	cmp	lr, r0	@ D.39442, temp.608
	bhi	.L12	@,
	ldr	r2, [r2, #8]	@ D.39442, <variable>.slice_start_mbn
	add	r4, r4, #1	@ j, j,
	cmp	r2, r0	@ D.39442, temp.608
	bhi	.L12	@,
.L13:
	add	r4, r4, #1	@ j, j,
	add	r2, r7, #4	@ tmp264, ivtmp.574,
	cmp	r4, r1	@ j, temp.607
	bcc	.L14	@,
.L12:
	cmp	r4, r1	@ j, temp.607
	mov	r8, r8, asl #6	@ tmp241, D.39408,
	addne	r2, r4, #14	@ tmp233, j,
	add	r8, r8, #1	@ tmp242, tmp241,
	ldreq	r1, [r6, #8]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	mov	r0, #4	@,
	ldreq	r2, [r6, #12]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	moveq	r7, #0	@ prephitmp.557,
	ldrne	r1, [fp, #-56]	@, %sfp
	muleq	r1, r1, r2	@ tmp230, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	addne	r7, r1, r4, asl #2	@, tmp236,, j,
	ldrne	r1, [r6, r2, asl #2]	@ tmp234, <variable>.slice_start_mbn
	ldrne	r2, [fp, #-60]	@, %sfp
	sub	r5, r1, #1	@ last_mb_in_slice, tmp234,
	movw	r1, #:lower16:.LC4	@,
	addne	r7, r2, r7, asl #6	@, prephitmp.557,, tmp236,
	mov	r2, #0	@ tmp240,
	bfi	r2, r5, #0, #20	@ tmp240, last_mb_in_slice,,
	str	r2, [r9, #0]	@ tmp240,
	str	r2, [sl, r8, asl #2]	@ D32.596,* pMsgBase
	movt	r1, #:upper16:.LC4	@,
	ldr	r2, [fp, #-48]	@, D32
	sub	r5, r4, #1	@ i, j,
	str	r3, [fp, #-64]	@,
	bl	dprint_vfmw	@
	ldr	r1, [fp, #-64]	@,
	str	r7, [r9, #0]	@ prephitmp.557, <variable>.next_slice_para_addr
	add	r0, r1, #252	@ tmp248, D.39409,
	movw	r1, #:lower16:.LC5	@,
	movt	r1, #:upper16:.LC5	@,
	str	r7, [sl, r0]	@ D32.603,
	mov	r0, #4	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r6, #52]	@ <variable>.TotalSliceNum, <variable>.TotalSliceNum
.L11:
	add	r5, r5, #1	@ i, i,
	cmp	r3, r5	@ <variable>.TotalSliceNum, i
	bhi	.L17	@,
.L18:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L29:
	mov	r4, #0	@ tmp196,
	mov	r0, #4	@,
	mov	ip, r4	@ tmp198, tmp196
	bfi	ip, r4, #0, #20	@ tmp198, tmp196,,
	str	ip, [fp, #-48]	@ tmp198,
	movw	r1, #:lower16:.LC3	@,
	str	ip, [sl, #0]	@ tmp198,* pMsgBase
	movt	r1, #:upper16:.LC3	@,
	ldr	r2, [fp, #-48]	@, D32
	mov	lr, #1	@,
	str	lr, [fp, #-56]	@, %sfp
	bl	dprint_vfmw	@
	ldr	r2, [r6, #56]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC4	@,
	sub	r3, r2, #1	@ tmp203, <variable>.slice_start_mbn,
	bfi	r4, r3, #0, #20	@ tmp205, tmp203,,
	str	r4, [fp, #-48]	@ tmp205,
	str	r4, [sl, #4]	@ tmp205,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r1, [fp, #-60]	@, %sfp
	mov	r0, #4	@,
	add	ip, r1, #256	@ tmp210,,
	str	ip, [fp, #-48]	@ tmp210, <variable>.next_slice_para_addr
	str	ip, [sl, #252]	@ tmp210,
	movw	r1, #:lower16:.LC5	@,
	ldr	r2, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	b	.L9	@
.L28:
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LANCHOR0	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LANCHOR0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	b	.L18	@
	.fnend
	.size	DIVX3HAL_V300R001_WriteSliceMsg, .-DIVX3HAL_V300R001_WriteSliceMsg
	.align	2
	.global	DIVX3HAL_V300R001_WritePicMsg
	.type	DIVX3HAL_V300R001_WritePicMsg, %function
DIVX3HAL_V300R001_WritePicMsg:
	.fnstart
.LFB1531:
	@ args = 0, pretend = 0, frame = 8
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
	mov	r6, r0	@ pHwMem, pHwMem
	mov	r4, r1	@ pDivx3DecParam, pDivx3DecParam
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	ldr	r0, [r6, #48]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	bic	r0, r0, #15	@, <variable>.MsgSlotAddr,
	bl	MEM_Phy2Vir	@
	subs	r5, r0, #0	@ D.39266,
	beq	.L34	@,
	ldr	r0, [r4, #4]	@ <variable>.prediction_type, <variable>.prediction_type
	mov	r8, #0	@ tmp193,
	mov	r7, r5	@ p32, D.39266
	mov	sl, r8	@ tmp196, tmp193
	bfi	sl, r0, #0, #1	@ tmp196, <variable>.prediction_type,,
	str	sl, [fp, #-40]	@ tmp196,
	str	sl, [r7], #4	@ tmp196,
	mov	r0, #4	@,
	ldr	r2, [fp, #-40]	@, D32
	movw	r1, #:lower16:.LC3	@,
	movt	r1, #:upper16:.LC3	@,
	add	sl, r7, r0	@ p32.639, p32,
	bl	dprint_vfmw	@
	ldr	r1, [r4, #8]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	ldr	r2, [r4, #12]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	mov	r0, #4	@,
	sub	ip, r1, #1	@ tmp202, <variable>.PicWidthInMb,
	movw	r1, #:lower16:.LC4	@,
	sub	r2, r2, #1	@ tmp206, <variable>.PicHeightInMb,
	movt	r1, #:upper16:.LC4	@,
	mov	r3, ip, asl #23	@ tmp207, tmp202,
	mov	ip, r3, lsr #23	@ tmp207, tmp207,
	bfi	ip, r2, #16, #9	@ tmp207, tmp206,,
	str	ip, [fp, #-40]	@ tmp207,
	str	ip, [r5, #4]	@ tmp207,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r4, #16]	@ <variable>.quantizer, <variable>.quantizer
	ldr	r1, [r4, #20]	@ <variable>.rounding_type, <variable>.rounding_type
	mov	r0, #4	@,
	ldr	r2, [r4, #24]	@ <variable>.has_skips, <variable>.has_skips
	and	ip, r3, #31	@ tmp214, <variable>.quantizer,
	bfi	ip, r1, #5, #1	@ tmp214, <variable>.rounding_type,,
	movw	r1, #:lower16:.LC7	@,
	bfi	ip, r2, #6, #1	@ tmp216, <variable>.has_skips,,
	str	ip, [fp, #-40]	@ tmp216,
	str	ip, [r7, #4]	@ tmp216,
	movt	r1, #:upper16:.LC7	@,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r4, #28]	@ <variable>.alternative_I_AC_chrom_DCT, <variable>.alternative_I_AC_chrom_DCT
	ldr	r1, [r4, #32]	@ <variable>.alternative_I_AC_lum_DCT, <variable>.alternative_I_AC_lum_DCT
	mov	r0, #4	@,
	ldr	r2, [r4, #36]	@ <variable>.alternative_I_DC_DCT, <variable>.alternative_I_DC_DCT
	and	r3, r3, #3	@ tmp223, <variable>.alternative_I_AC_chrom_DCT,
	ldr	lr, [r4, #40]	@ <variable>.alternative_P_AC_DCT, <variable>.alternative_P_AC_DCT
	bfi	r3, r1, #2, #2	@ tmp223, <variable>.alternative_I_AC_lum_DCT,,
	ldr	ip, [r4, #44]	@ <variable>.alternative_P_DC_DCT, <variable>.alternative_P_DC_DCT
	bfi	r3, r2, #4, #1	@ tmp225, <variable>.alternative_I_DC_DCT,,
	bfi	r3, lr, #5, #2	@ tmp227, <variable>.alternative_P_AC_DCT,,
	ldr	r2, [r4, #48]	@ <variable>.alternative_MV, <variable>.alternative_MV
	bfi	r3, ip, #7, #1	@ tmp229, <variable>.alternative_P_DC_DCT,,
	movw	r1, #:lower16:.LC8	@,
	bfi	r3, r2, #8, #1	@ tmp231, <variable>.alternative_MV,,
	str	r3, [fp, #-40]	@ tmp231,
	str	r3, [sl, #4]	@ tmp231,
	movt	r1, #:upper16:.LC8	@,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r4, #100]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC9	@,
	str	r3, [fp, #-40]	@ <variable>.StreamPhyAddr, <variable>.bit_stream_address_0
	str	r3, [r5, #64]	@ <variable>.StreamPhyAddr,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r1, [r4, #108]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	ip, r8	@ tmp242, tmp193
	mov	r0, #4	@,
	bfi	ip, r1, #0, #7	@ tmp242, <variable>.StreamBitOffset,,
	str	ip, [fp, #-40]	@ tmp242,
	str	ip, [r5, #68]	@ tmp242,
	movw	r1, #:lower16:.LC10	@,
	ldr	r2, [fp, #-40]	@, D32
	movt	r1, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #116]	@ <variable>.StreamLength, <variable>.StreamLength
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC11	@,
	movt	r1, #:upper16:.LC11	@,
	str	r2, [fp, #-40]	@ <variable>.StreamLength, <variable>.bit_len_0
	str	r2, [r5, #72]	@ <variable>.StreamLength,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r4, #104]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC12	@,
	movt	r1, #:upper16:.LC12	@,
	str	r3, [fp, #-40]	@ <variable>.StreamPhyAddr, <variable>.bit_stream_address_1
	str	r3, [r5, #76]	@ <variable>.StreamPhyAddr,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r1, [r4, #112]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	r0, #4	@,
	bfi	r8, r1, #0, #7	@ tmp258, <variable>.StreamBitOffset,,
	str	r8, [fp, #-40]	@ tmp258,
	str	r8, [r5, #80]	@ tmp258,
	movw	r1, #:lower16:.LC13	@,
	ldr	r2, [fp, #-40]	@, D32
	movt	r1, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #120]	@ <variable>.StreamLength, <variable>.StreamLength
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC14	@,
	str	ip, [fp, #-40]	@ <variable>.StreamLength, <variable>.bit_len_1
	str	ip, [r5, #84]	@ <variable>.StreamLength,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r4, #132]	@ <variable>.DispFramePhyAddr, <variable>.DispFramePhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC15	@,
	bic	r3, r2, #15	@ tmp269, <variable>.DispFramePhyAddr,
	str	r3, [fp, #-40]	@ tmp269, <variable>.curr_rcn_addr
	str	r3, [r5, #128]	@ tmp269,
	movt	r1, #:upper16:.LC15	@,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r4, #124]	@ <variable>.FwdRefPhyAddr, <variable>.FwdRefPhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC16	@,
	bic	r2, ip, #15	@ tmp275, <variable>.FwdRefPhyAddr,
	str	r2, [fp, #-40]	@ tmp275, <variable>.fwd_ref_addr
	str	r2, [r5, #132]	@ tmp275,
	movt	r1, #:upper16:.LC16	@,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r6, #1136]	@ <variable>.SedTopAddr, <variable>.SedTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC17	@,
	bic	ip, r3, #15	@ tmp281, <variable>.SedTopAddr,
	str	ip, [fp, #-40]	@ tmp281, <variable>.sed_top_addr
	str	ip, [r5, #136]	@ tmp281,
	movt	r1, #:upper16:.LC17	@,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, #1140]	@ <variable>.PmvTopAddr, <variable>.PmvTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC18	@,
	bic	r3, r2, #15	@ tmp287, <variable>.PmvTopAddr,
	str	r3, [fp, #-40]	@ tmp287, <variable>.pmv_top_addr
	str	r3, [r5, #140]	@ tmp287,
	movt	r1, #:upper16:.LC18	@,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r6, #1148]	@ <variable>.ItransTopAddr, <variable>.ItransTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC19	@,
	bic	r2, ip, #15	@ tmp293, <variable>.ItransTopAddr,
	str	r2, [fp, #-40]	@ tmp293, <variable>.it_top_addr
	str	r2, [r5, #144]	@ tmp293,
	movt	r1, #:upper16:.LC19	@,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r4, #144]	@ <variable>.CurrPmvPhyAddr, <variable>.CurrPmvPhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC20	@,
	bic	ip, r3, #15	@ tmp299, <variable>.CurrPmvPhyAddr,
	str	ip, [fp, #-40]	@ tmp299, <variable>.pmv_colmb_addr
	str	ip, [r5, #148]	@ tmp299,
	movt	r1, #:upper16:.LC20	@,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, #52]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	movw	r1, #:lower16:.LC5	@,
	mov	r0, #4	@,
	bic	r3, r2, #15	@ tmp305, <variable>.MsgSlotAddr,
	str	r3, [fp, #-40]	@ tmp305, <variable>.next_slice_para_addr
	str	r3, [r5, #252]	@ tmp305,
	movt	r1, #:upper16:.LC5	@,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
.L33:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L34:
	movw	r1, #:lower16:.LC1	@,
	ldr	r2, .L35	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	b	.L33	@
.L36:
	.align	2
.L35:
	.word	.LANCHOR0+32
	.fnend
	.size	DIVX3HAL_V300R001_WritePicMsg, .-DIVX3HAL_V300R001_WritePicMsg
	.align	2
	.global	DIVX3HAL_V300R001_WriteReg
	.type	DIVX3HAL_V300R001_WriteReg, %function
DIVX3HAL_V300R001_WriteReg:
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
	mov	r4, r1	@ pDivx3DecParam, pDivx3DecParam
	mov	r6, r0	@ pHwMem, pHwMem
	movw	r1, #:lower16:.LC21	@,
	mov	r0, #2	@,
	movt	r1, #:upper16:.LC21	@,
	mov	r5, r2	@ VdhId, VdhId
	bl	dprint_vfmw	@
	ldr	r7, [r4, #12]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	cmp	r5, #0	@ VdhId,
	ldr	r2, [r4, #8]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	mul	r1, r2, r7	@ tmp185, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	sub	r0, r1, #1	@ tmp188, tmp185,
	bic	r3, r0, #-16777216	@ tmp195, tmp188,
	bic	r3, r3, #15728640	@ tmp195, tmp195,
	bfc	r3, #25, #1	@ tmp195,,
	str	r3, [fp, #-40]	@ tmp195,
	ble	.L56	@,
	movw	r1, #:lower16:.LC22	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC22	@,
	ldr	r2, .L61	@,
	mov	r3, r5	@, VdhId
	mov	r7, #1	@ tmp204,
	str	r7, [sp, #0]	@ tmp204,
	bl	dprint_vfmw	@
.L39:
	ldr	r2, [fp, #-40]	@, D32
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC23	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #136]	@ <variable>.DDRStride, <variable>.DDRStride
	mov	r1, #5	@ tmp212,
	mov	r2, #0	@ tmp207,
	ldr	ip, [r4, #152]	@ <variable>.Compress_en, <variable>.Compress_en
	cmp	r5, r2	@ VdhId,
	mov	r7, r3, lsr #6	@ tmp210, <variable>.DDRStride,
	bfi	r1, r7, #4, #10	@ tmp212, tmp210,,
	orr	r0, r1, #49152	@ tmp217, tmp212,
	bfi	r0, r2, #16, #12	@ tmp217, tmp207,,
	bic	r3, r0, #805306368	@ tmp218, tmp217,
	orr	r3, r3, #536870912	@ tmp222, tmp218,
	bfi	r3, ip, #30, #1	@ tmp222, <variable>.Compress_en,,
	bfi	r3, r2, #31, #1	@ tmp223, tmp207,,
	str	r3, [fp, #-40]	@ tmp223,
	ble	.L57	@,
	mov	r3, r5	@, VdhId
	ldr	r2, .L61	@,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	mov	r7, #1	@ tmp263,
	str	r7, [sp, #0]	@ tmp263,
	bl	dprint_vfmw	@
	ldr	r2, [fp, #-40]	@, D32
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC24	@,
	movt	r1, #:upper16:.LC24	@,
	bl	dprint_vfmw	@
	ldr	ip, [r6, #48]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r3, r5	@, VdhId
	ldr	r2, .L61	@,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	bic	ip, ip, #15	@ tmp269, <variable>.MsgSlotAddr,
	str	r7, [sp, #0]	@ tmp263,
	str	ip, [fp, #-40]	@ tmp269, <variable>.av_msg_addr
	bl	dprint_vfmw	@
	ldr	r2, [fp, #-40]	@, D32
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	bl	dprint_vfmw	@
	ldr	ip, [r6, #32]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r3, r5	@, VdhId
	ldr	r2, .L61	@,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	bic	ip, ip, #15	@ tmp278, <variable>.MsgSlotAddr,
	str	r7, [sp, #0]	@ tmp263,
	str	ip, [fp, #-40]	@ tmp278, <variable>.va_msg_addr
	bl	dprint_vfmw	@
	ldr	r2, [fp, #-40]	@, D32
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC26	@,
	movt	r1, #:upper16:.LC26	@,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #96]	@ <variable>.StreamBaseAddr, <variable>.StreamBaseAddr
	movw	r1, #:lower16:.LC22	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC22	@,
	ldr	r2, .L61	@,
	mov	r3, r5	@, VdhId
	str	ip, [fp, #-40]	@ <variable>.StreamBaseAddr, <variable>.stream_base_addr
	str	r7, [sp, #0]	@ tmp263,
	bl	dprint_vfmw	@
.L41:
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC27	@,
	ldr	r2, [fp, #-40]	@, D32
	movt	r1, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #8]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	cmp	r0, #256	@ <variable>.PicWidthInMb,
	movwls	r0, #:lower16:96016	@ tmp294,
	movwhi	r0, #30480	@ tmp293,
	movtls	r0, #:upper16:96016	@ tmp294,
	cmp	r5, #0	@ VdhId,
	str	r0, [fp, #-40]	@ tmp294, D32
	bne	.L58	@,
	movw	r2, #:lower16:s_RegPhyBaseAddr	@ tmp295,
	movt	r2, #:upper16:s_RegPhyBaseAddr	@ tmp295,
	ldr	r1, [fp, #-40]	@, D32
	ldr	r7, [r2, #0]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, r7, #4	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
.L47:
	movw	r1, #1208	@ tmp310,
	movw	r7, #:lower16:g_HwMem	@ tmp435,
	mul	r8, r1, r5	@ tmp309, tmp310, VdhId
	movt	r7, #:upper16:g_HwMem	@ tmp435,
	movw	ip, #:lower16:3148803	@ tmp307,
	movt	ip, #:upper16:3148803	@ tmp307,
	str	ip, [fp, #-40]	@ tmp307, D32
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC29	@,
	movt	r1, #:upper16:.LC29	@,
	ldr	lr, [r8, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [lr, #60]	@ tmp307,
	ldr	r2, [fp, #-40]	@ D32.780, D32
	ldr	r3, [r8, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [r3, #64]	@ D32.780,
	ldr	lr, [fp, #-40]	@ D32.784, D32
	ldr	ip, [r8, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	lr, [ip, #68]	@ D32.784,
	ldr	r2, [fp, #-40]	@ D32.788, D32
	ldr	r3, [r8, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [r3, #72]	@ D32.788,
	ldr	lr, [fp, #-40]	@ D32.792, D32
	ldr	ip, [r8, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	lr, [ip, #76]	@ D32.792,
	ldr	r2, [fp, #-40]	@ D32.796, D32
	ldr	r3, [r8, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [r3, #80]	@ D32.796,
	ldr	lr, [fp, #-40]	@ D32.800, D32
	ldr	ip, [r8, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	lr, [ip, #84]	@ D32.800,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r8, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r3, [r4, #128]	@ <variable>.CurPicPhyAddr, <variable>.CurPicPhyAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC30	@,
	movt	r1, #:upper16:.LC30	@,
	bic	r2, r3, #15	@ D32.455, <variable>.CurPicPhyAddr,
	str	r2, [fp, #-40]	@ D32.455, D32
	str	r2, [ip, #96]	@ D32.455,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r8, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r3, [r4, #136]	@ D32.806, <variable>.DDRStride
	mov	r0, #3	@,
	ldr	r8, [r4, #12]	@ height_in_mb, <variable>.PicHeightInMb
	movw	r1, #:lower16:.LC31	@,
	movt	r1, #:upper16:.LC31	@,
	str	r3, [fp, #-40]	@ D32.806, D32
	str	r3, [r2, #100]	@ D32.806,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r0, [r4, #8]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	movw	r3, #2047	@ tmp363,
	mov	r2, r0, asl #4	@ D.39186, <variable>.PicWidthInMb,
	sub	r1, r2, #1	@ tmp362, D.39186,
	cmp	r1, r3	@ tmp362, tmp363
	bhi	.L59	@,
.L50:
	mov	sl, #16	@ level,
.L52:
	ldr	ip, [r4, #12]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	add	r0, r8, #1	@ tmp379, height_in_mb,
	ldr	r2, [r4, #136]	@ <variable>.DDRStride, <variable>.DDRStride
	movw	r4, #1208	@ tmp386,
	mul	r5, r4, r5	@ tmp385, tmp386, VdhId
	mov	r1, ip, asl #4	@ tmp373, <variable>.PicHeightInMb,
	add	r3, r1, #31	@ tmp375, tmp373,
	mov	lr, r0, lsr #1	@ tmp380, tmp379,
	movw	r1, #:lower16:.LC32	@,
	mov	r0, #3	@,
	mov	r4, r3, lsr #5	@ tmp376, tmp375,
	movt	r1, #:upper16:.LC32	@,
	mul	ip, r2, lr	@ tmp381, <variable>.DDRStride, tmp380
	mov	r2, r4, asl #4	@ tmp377, tmp376,
	ldr	lr, [r5, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r4, #0	@ tmp400,
	mla	r3, sl, r2, ip	@ tmp383, level, tmp377, tmp381
	mov	r2, r3, asl #1	@ D32.457, tmp383,
	str	r2, [fp, #-40]	@ D32.457, D32
	str	r2, [lr, #104]	@ D32.457,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	mov	r0, r8, asl #4	@ tmp391, height_in_mb,
	add	r8, r0, #31	@ tmp392, tmp391,
	ldr	ip, [r5, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	bic	r8, r8, #31	@ tmp394, tmp392,
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC33	@,
	movt	r1, #:upper16:.LC33	@,
	mul	sl, sl, r8	@ D32.458, level, tmp394
	str	sl, [ip, #108]	@ D32.458,
	ldr	r3, [r6, #1184]	@ <variable>.DnrMbInfoAddr, <variable>.DnrMbInfoAddr
	ldr	r2, [r5, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [fp, #-40]	@ <variable>.DnrMbInfoAddr, <variable>.dnr_mbinfo_staddr
	str	r3, [r2, #144]	@ <variable>.DnrMbInfoAddr,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r5, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r4, [fp, #-40]	@ tmp400, D32
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC34	@,
	str	r4, [ip, #148]	@ tmp400,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r1, [r5, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r2, r4	@ tmp421, tmp400
	bfi	r2, r4, #0, #1	@ tmp421, tmp400,,
	str	r2, [fp, #-40]	@ tmp421,
	mov	r0, #3	@,
	str	r2, [r1, #152]	@ tmp421,
	movw	r1, #:lower16:.LC35	@,
	ldr	r2, [fp, #-40]	@, D32
	movt	r1, #:upper16:.LC35	@,
	bl	dprint_vfmw	@
	ldr	r3, [r5, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mvn	ip, #0	@ tmp434,
	str	ip, [r3, #32]	@ tmp434,
.L54:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L58:
	cmp	r5, #1	@ VdhId,
	beq	.L60	@,
	cmp	r5, #0	@ VdhId,
	ble	.L47	@,
	b	.L48	@
.L59:
	sub	lr, r2, #2048	@ tmp364, D.39186,
	sub	r0, lr, #1	@ tmp364, tmp364,
	cmp	r0, r3	@ tmp364, tmp363
	movls	sl, #32	@ level,
	bls	.L52	@,
	sub	r1, r2, #4096	@ tmp367, D.39186,
	sub	ip, r1, #1	@ tmp367, tmp367,
	cmp	ip, r3	@ tmp367, tmp363
	movls	sl, #48	@ level,
	bls	.L52	@,
	sub	r0, r2, #6144	@ tmp370, D.39186,
	sub	r2, r0, #1	@ tmp370, tmp370,
	cmp	r2, r3	@ tmp370, tmp363
	movls	sl, #64	@ level,
	bls	.L52	@,
	b	.L50	@
.L60:
	movw	r3, #:lower16:s_RegPhyBaseAddr_1	@ tmp299,
	movt	r3, #:upper16:s_RegPhyBaseAddr_1	@ tmp299,
	ldr	r1, [fp, #-40]	@, D32
	ldr	lr, [r3, #0]	@ s_RegPhyBaseAddr_1, s_RegPhyBaseAddr_1
	add	r0, lr, #4	@, s_RegPhyBaseAddr_1,
	bl	MEM_WritePhyWord	@
.L48:
	mov	ip, #0	@ tmp306,
	mov	r3, r5	@, VdhId
	mov	r0, ip	@, tmp306
	movw	r1, #:lower16:.LC28	@,
	ldr	r2, .L61	@,
	movt	r1, #:upper16:.LC28	@,
	str	ip, [sp, #0]	@ tmp306,
	bl	dprint_vfmw	@
	b	.L54	@
.L57:
	movw	r8, #1208	@ tmp226,
	movw	r7, #:lower16:g_HwMem	@ tmp224,
	mul	r8, r8, r5	@ tmp225, tmp226, VdhId
	movt	r7, #:upper16:g_HwMem	@ tmp224,
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC24	@,
	movt	r1, #:upper16:.LC24	@,
	ldr	lr, [r8, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [lr, #12]	@ tmp223,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r8, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	ip, [r6, #48]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	bic	r3, ip, #15	@ tmp234, <variable>.MsgSlotAddr,
	str	r3, [fp, #-40]	@ tmp234, <variable>.av_msg_addr
	str	r3, [r2, #16]	@ tmp234,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r8, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	ip, [r6, #32]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC26	@,
	movt	r1, #:upper16:.LC26	@,
	bic	r3, ip, #15	@ tmp245, <variable>.MsgSlotAddr,
	str	r3, [fp, #-40]	@ tmp245, <variable>.va_msg_addr
	str	r3, [r2, #20]	@ tmp245,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r8, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	ip, [r4, #96]	@ <variable>.StreamBaseAddr, <variable>.StreamBaseAddr
	str	ip, [fp, #-40]	@ <variable>.StreamBaseAddr, <variable>.stream_base_addr
	str	ip, [r2, #24]	@ <variable>.StreamBaseAddr,
	b	.L41	@
.L56:
	movw	r1, #1208	@ tmp198,
	movw	lr, #:lower16:g_HwMem	@ tmp196,
	mul	r0, r1, r5	@ tmp197, tmp198, VdhId
	movt	lr, #:upper16:g_HwMem	@ tmp196,
	ldr	ip, [r0, lr]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [ip, #8]	@ tmp195,
	b	.L39	@
.L62:
	.align	2
.L61:
	.word	.LANCHOR0+64
	.fnend
	.size	DIVX3HAL_V300R001_WriteReg, .-DIVX3HAL_V300R001_WriteReg
	.align	2
	.global	DIVX3HAL_V300R001_StartDec
	.type	DIVX3HAL_V300R001_StartDec, %function
DIVX3HAL_V300R001_StartDec:
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
	mov	r4, r0	@ pDivx3DecParam, pDivx3DecParam
	bls	.L71	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC36	@,
	movt	r1, #:upper16:.LC36	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39036,
.L66:
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L71:
	beq	.L72	@,
	movw	r5, #:lower16:g_HwMem	@ tmp145,
	movt	r5, #:upper16:g_HwMem	@ tmp145,
	ldr	r3, [r5, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L73	@,
.L68:
	movw	lr, #:lower16:.LANCHOR1	@ tmp150,
	movt	lr, #:upper16:.LANCHOR1	@ tmp150,
	mov	r2, #0	@,
	mov	r1, r4	@, pDivx3DecParam
	ldr	r3, [lr, #0]	@ FrameNum, FrameNum
	movw	r0, #:lower16:g_HwMem	@,
	movt	r0, #:upper16:g_HwMem	@,
	add	ip, r3, #1	@ tmp153, FrameNum,
	str	ip, [lr, #0]	@ tmp153, FrameNum
	bl	DIVX3HAL_V300R001_WriteReg	@
	mov	r1, r4	@, pDivx3DecParam
	movw	r0, #:lower16:g_HwMem	@,
	movt	r0, #:upper16:g_HwMem	@,
	bl	DIVX3HAL_V300R001_WritePicMsg	@
	mov	r1, r4	@, pDivx3DecParam
	movw	r0, #:lower16:g_HwMem	@,
	movt	r0, #:upper16:g_HwMem	@,
	bl	DIVX3HAL_V300R001_WriteSliceMsg	@
	mov	r0, r4	@, pDivx3DecParam
	bl	DIVX3HAL_V300R001_StartVDH	@
	mov	r0, #0	@ D.39036,
	b	.L66	@
.L73:
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	bl	MEM_Phy2Vir	@
	subs	r1, r0, #0	@ D.39043,
	strne	r1, [r5, #0]	@ D.39043, <variable>.pVdmRegVirAddr
	bne	.L68	@,
	movw	r1, #:lower16:.LC37	@,
	movt	r1, #:upper16:.LC37	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39036,
	b	.L66	@
.L72:
	mov	ip, #0	@ tmp144,
	mov	r3, r1	@, VdhId
	mov	r0, ip	@, tmp144
	movw	r1, #:lower16:.LC28	@,
	ldr	r2, .L74	@,
	movt	r1, #:upper16:.LC28	@,
	str	ip, [sp, #0]	@ tmp144,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39036,
	b	.L66	@
.L75:
	.align	2
.L74:
	.word	.LANCHOR0+92
	.fnend
	.size	DIVX3HAL_V300R001_StartDec, .-DIVX3HAL_V300R001_StartDec
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	__func__.39388, %object
	.size	__func__.39388, 32
__func__.39388:
	.ascii	"DIVX3HAL_V300R001_WriteSliceMsg\000"
	.type	__func__.39262, %object
	.size	__func__.39262, 30
__func__.39262:
	.ascii	"DIVX3HAL_V300R001_WritePicMsg\000"
	.space	2
	.type	__func__.39058, %object
	.size	__func__.39058, 27
__func__.39058:
	.ascii	"DIVX3HAL_V300R001_WriteReg\000"
	.space	1
	.type	__func__.39032, %object
	.size	__func__.39032, 27
__func__.39032:
	.ascii	"DIVX3HAL_V300R001_StartDec\000"
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
	.ascii	"%s: %s\012\000"
.LC2:
	.ascii	"can not map dn msg virtual address!\012\000"
	.space	3
.LC3:
	.ascii	"D0 = 0x%x\012\000"
	.space	1
.LC4:
	.ascii	"D1 = 0x%x\012\000"
	.space	1
.LC5:
	.ascii	"D63 = 0x%x\012\000"
.LC6:
	.ascii	"configuring Pic Msg...\012\000"
.LC7:
	.ascii	"D2 = 0x%x\012\000"
	.space	1
.LC8:
	.ascii	"D3 = 0x%x\012\000"
	.space	1
.LC9:
	.ascii	"D16 = 0x%x\012\000"
.LC10:
	.ascii	"D17 = 0x%x\012\000"
.LC11:
	.ascii	"D18 = 0x%x\012\000"
.LC12:
	.ascii	"D19 = 0x%x\012\000"
.LC13:
	.ascii	"D20 = 0x%x\012\000"
.LC14:
	.ascii	"D21 = 0x%x\012\000"
.LC15:
	.ascii	"D32 = 0x%x\012\000"
.LC16:
	.ascii	"D33 = 0x%x\012\000"
.LC17:
	.ascii	"D34 = 0x%x\012\000"
.LC18:
	.ascii	"D35 = 0x%x\012\000"
.LC19:
	.ascii	"D36 = 0x%x\012\000"
.LC20:
	.ascii	"D37 = 0x%x\012\000"
.LC21:
	.ascii	"configuring VDM registers...\012\000"
	.space	2
.LC22:
	.ascii	"%s: WR_VREG but VdhId(%d) > MAX_VDH_NUM(%d)\012\000"
	.space	3
.LC23:
	.ascii	"BASIC_V200R003_CFG0 = 0x%x\012\000"
.LC24:
	.ascii	"BASIC_V300R001_CFG1=0x%x\012\000"
	.space	2
.LC25:
	.ascii	"AVM_V300R001_ADDR=0x%x\012\000"
.LC26:
	.ascii	"VAM_V300R001_ADDR=0x%x\012\000"
.LC27:
	.ascii	"STREAM_V200R003_BASE_ADDR=0x%x\012\000"
.LC28:
	.ascii	"%s: VdhId(%d) > %d\012\000"
.LC29:
	.ascii	"TIME_OUT = 0x%x\012\000"
	.space	3
.LC30:
	.ascii	"YSTADDR_V300R001_1D = 0x%x\012\000"
.LC31:
	.ascii	"YSTRIDE_V300R001_1D = 0x%x\012\000"
.LC32:
	.ascii	"UVOFFSET_V300R001_1D = 0x%x\012\000"
	.space	3
.LC33:
	.ascii	"DNR_MBINFO_STADDR=0x%x\012\000"
.LC34:
	.ascii	"REF_V300R001_PIC_TYPE=0x%x\012\000"
.LC35:
	.ascii	"FF_V300R001_APT_EN=0x%x\012\000"
	.space	3
.LC36:
	.ascii	"VdhId is wrong! DIVX3HAL_V300R001_StartDec\012\000"
.LC37:
	.ascii	"vdm register virtual address not mapped, reset fail"
	.ascii	"ed!\012\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
