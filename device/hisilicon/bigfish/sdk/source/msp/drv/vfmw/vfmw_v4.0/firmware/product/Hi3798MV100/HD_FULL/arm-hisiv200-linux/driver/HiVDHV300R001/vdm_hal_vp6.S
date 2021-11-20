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
	.file	"vdm_hal_vp6.c"
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
@ -DKBUILD_BASENAME=KBUILD_STR(vdm_hal_vp6)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD
@ drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV300R001/.vdm_hal_vp6.o.d
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV300R001/vdm_hal_vp6.c
@ -mlittle-endian -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -marm -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV300R001/vdm_hal_vp6.o
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
	.global	VP6HAL_V300R001_InitHal
	.type	VP6HAL_V300R001_InitHal, %function
VP6HAL_V300R001_InitHal:
	.fnstart
.LFB1524:
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
	.size	VP6HAL_V300R001_InitHal, .-VP6HAL_V300R001_InitHal
	.align	2
	.global	VP6HAL_V300R001_CfgDnMsg
	.type	VP6HAL_V300R001_CfgDnMsg, %function
VP6HAL_V300R001_CfgDnMsg:
	.fnstart
.LFB1527:
	@ args = 0, pretend = 0, frame = 16
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
	mov	r4, r0	@ pVp6DecParam, pVp6DecParam
	ldr	r0, [r1, #48]	@, <variable>.MsgSlotAddr
	mov	r6, r1	@ pHwMem, pHwMem
	bl	MEM_Phy2Vir	@
	subs	sl, r0, #0	@ D.33137,
	beq	.L18	@,
	ldr	r0, [r4, #60]	@ <variable>.FrameType, <variable>.FrameType
	mov	r5, #0	@ tmp243,
	mov	r8, sl	@ p32, D.33137
	mov	r7, r5	@ tmp246, tmp243
	bfi	r7, r0, #0, #1	@ tmp246, <variable>.FrameType,,
	str	r7, [fp, #-48]	@ tmp246,
	str	r7, [r8], #4	@ tmp246,
	mov	r0, #4	@,
	ldr	r2, [fp, #-48]	@, D32
	movw	r1, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC2	@,
	add	r7, r8, r0	@ p32.534, p32,
	bl	dprint_vfmw	@
	ldrh	r1, [r4, #52]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	ldrh	ip, [r4, #54]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	mov	r0, #4	@,
	sub	r9, r1, #1	@ tmp252, <variable>.PicWidthInMb,
	movw	r1, #:lower16:.LC3	@,
	sub	r2, ip, #1	@ tmp256, <variable>.PicHeightInMb,
	movt	r1, #:upper16:.LC3	@,
	mov	r3, r9, asl #23	@ tmp257, tmp252,
	add	ip, r7, r0	@ p32.538, p32.534,
	add	r9, sl, #36	@ p32.550, D.33137,
	mov	r3, r3, lsr #23	@ tmp257, tmp257,
	bfi	r3, r2, #16, #9	@ tmp257, tmp256,,
	bic	r2, r3, #-33554432	@ tmp259, tmp257,
	bfi	r2, r5, #9, #7	@ tmp259, tmp243,,
	str	r2, [fp, #-48]	@ tmp259,
	str	r2, [sl, #4]	@ tmp259,
	ldr	r2, [fp, #-48]	@, D32
	str	ip, [fp, #-56]	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #100]	@ <variable>.Vp3VersionNo, <variable>.Vp3VersionNo
	mov	r0, #4	@,
	ldr	r1, [r4, #104]	@ <variable>.VpProfile, <variable>.VpProfile
	ldr	ip, [r4, #68]	@ <variable>.MultiStream, <variable>.MultiStream
	and	r3, r3, #31	@ tmp266, <variable>.Vp3VersionNo,
	ldr	sl, [r4, #72]	@ <variable>.UseHuffman, <variable>.UseHuffman
	bfi	r3, r1, #5, #2	@ tmp266, <variable>.VpProfile,,
	ldr	lr, [r4, #108]	@ <variable>.UseLoopFilter, <variable>.UseLoopFilter
	bfi	r3, ip, #7, #1	@ tmp268, <variable>.MultiStream,,
	bfi	r3, sl, #8, #1	@ tmp270, <variable>.UseHuffman,,
	movw	r1, #:lower16:.LC4	@,
	ubfx	r2, lr, #1, #1	@ tmp274, <variable>.UseLoopFilter,,
	movt	r1, #:upper16:.LC4	@,
	bfi	r3, r2, #9, #1	@ tmp279, tmp274,,
	bfi	r3, r5, #10, #22	@ tmp280, tmp243,,
	str	r3, [fp, #-48]	@ tmp280,
	str	r3, [r8, #4]	@ tmp280,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r4, #96]	@ <variable>.PredictionFilterAlpha, <variable>.PredictionFilterAlpha
	ldr	sl, [r4, #92]	@ <variable>.PredictionFilterMvSizeThresh, <variable>.PredictionFilterMvSizeThresh
	mov	r0, #4	@,
	ldr	lr, [r4, #88]	@ <variable>.PredictionFilterVarThresh, <variable>.PredictionFilterVarThresh
	and	r3, ip, #31	@ tmp287, <variable>.PredictionFilterAlpha,
	ldr	r8, [r4, #84]	@ <variable>.PredictionFilterMode, <variable>.PredictionFilterMode
	bfi	r3, sl, #5, #3	@ tmp287, <variable>.PredictionFilterMvSizeThresh,,
	bfi	r3, lr, #8, #10	@ tmp289, <variable>.PredictionFilterVarThresh,,
	movw	r1, #:lower16:.LC5	@,
	bfi	r3, r8, #18, #2	@ tmp291, <variable>.PredictionFilterMode,,
	movt	r1, #:upper16:.LC5	@,
	bfi	r3, r5, #20, #12	@ tmp292, tmp243,,
	str	r3, [fp, #-48]	@ tmp292,
	str	r3, [r7, #4]	@ tmp292,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldrb	r2, [r4, #0]	@ zero_extendqisi2	@ <variable>.FLimit, <variable>.FLimit
	ldr	r1, [r4, #76]	@ <variable>.DcQuant, <variable>.DcQuant
	mov	r0, #4	@,
	ldr	ip, [r4, #80]	@ <variable>.AcQuant, <variable>.AcQuant
	and	r8, r2, #15	@ tmp301, <variable>.FLimit,
	ldr	sl, [fp, #-56]	@,
	bfi	r8, r1, #4, #8	@ tmp301, <variable>.DcQuant,,
	bfi	r8, ip, #12, #9	@ tmp303, <variable>.AcQuant,,
	movw	r1, #:lower16:.LC6	@,
	bfi	r8, r5, #21, #11	@ tmp304, tmp243,,
	str	r8, [fp, #-48]	@ tmp304,
	str	r8, [sl, #4]	@ tmp304,
	movt	r1, #:upper16:.LC6	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r4, #160]	@ <variable>.value, <variable>.value
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC7	@,
	movt	r1, #:upper16:.LC7	@,
	str	r3, [fp, #-48]	@ <variable>.value, <variable>.value
	str	r3, [r7, #24]	@ <variable>.value,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r4, #164]	@ <variable>.range, <variable>.range
	str	r5, [fp, #-48]	@ tmp243, D32
	mov	r0, #4	@,
	ldr	ip, [r4, #168]	@ <variable>.count, <variable>.count
	movw	r1, #:lower16:.LC8	@,
	strb	r2, [fp, #-48]	@ <variable>.range, <variable>.range
	movt	r1, #:upper16:.LC8	@,
	ldr	sl, [fp, #-48]	@ tmp316,
	bfi	sl, ip, #16, #4	@ tmp316, <variable>.count,,
	str	sl, [fp, #-48]	@ tmp316,
	strb	r5, [fp, #-47]	@ tmp243, <variable>.reserved0
	ldr	r8, [fp, #-48]	@ tmp319,
	bfi	r8, r5, #20, #12	@ tmp319, tmp243,,
	str	r8, [fp, #-48]	@ tmp319,
	str	r8, [r7, #28]	@ tmp319,
	mov	r5, #0	@ tmp325,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r4, #168]	@ <variable>.count, <variable>.count
	ldr	sl, [r4, #116]	@ D.33210, <variable>.bit0_offset_0
	movw	r1, #:lower16:.LC9	@,
	add	r0, r3, #8	@ Vp6_br_cnt, <variable>.count,
	ldr	r2, [r4, #112]	@ D.33209, <variable>.bit0_len_0
	cmp	r0, sl	@ Vp6_br_cnt, D.33210
	movt	r1, #:upper16:.LC9	@,
	addhi	sl, sl, #128	@ tmp324, D.33210,
	add	ip, r0, r2	@ tmp326, Vp6_br_cnt, D.33209
	ldrhi	r7, [r4, #120]	@ <variable>.bit0_stream_addr_0, <variable>.bit0_stream_addr_0
	rsbls	sl, r0, sl	@ D16_bit_offset_0, Vp6_br_cnt, D.33210
	rsbhi	sl, r0, sl	@ D16_bit_offset_0, Vp6_br_cnt, tmp324
	bic	r8, ip, #-33554432	@ tmp328, tmp326,
	ldrls	r7, [r4, #120]	@ D17_bit_byte_offset_0, <variable>.bit0_stream_addr_0
	bfi	r8, sl, #25, #7	@ tmp328, D16_bit_offset_0,,
	str	r8, [fp, #-48]	@ tmp328,
	subhi	r7, r7, #16	@ D17_bit_byte_offset_0, <variable>.bit0_stream_addr_0,
	str	r8, [r9, #28]	@ tmp328,
	mov	r0, #4	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	mov	r1, r5	@ tmp332, tmp325
	bfi	r1, r7, #0, #24	@ tmp332, D17_bit_byte_offset_0,,
	str	r1, [fp, #-48]	@ tmp332,
	strb	r5, [fp, #-45]	@ tmp325, <variable>.reserved
	mov	r0, #4	@,
	ldr	r2, [fp, #-48]	@ D32.561, D32
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	add	r5, r9, #32	@ p32.559, p32.550,
	str	r2, [r9, #32]	@ D32.561,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r0, [r4, #120]	@ <variable>.bit0_stream_addr_0, <variable>.bit0_stream_addr_0
	ldr	r3, [r4, #56]	@ <variable>.StreamBaseAddr, <variable>.StreamBaseAddr
	add	r0, r0, r3	@, <variable>.bit0_stream_addr_0, <variable>.StreamBaseAddr
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@,
	beq	.L19	@,
.L8:
	ldr	ip, [r4, #124]	@ <variable>.bit0_len_1, <variable>.bit0_len_1
	mov	r0, #4	@,
	ldr	r7, [r4, #128]	@ <variable>.bit0_offset_1, <variable>.bit0_offset_1
	movw	r1, #:lower16:.LC12	@,
	bic	lr, ip, #-33554432	@ tmp345, <variable>.bit0_len_1,
	movt	r1, #:upper16:.LC12	@,
	bfi	lr, r7, #25, #7	@ tmp345, <variable>.bit0_offset_1,,
	str	lr, [fp, #-48]	@ tmp345,
	str	lr, [r5, #4]	@ tmp345,
	add	r5, r5, r0	@ p32.564, p32.559,
	ldr	r2, [fp, #-48]	@, D32
	mov	r7, #0	@ tmp341,
	bl	dprint_vfmw	@
	ldr	sl, [r4, #132]	@ <variable>.bit0_stream_addr_1, <variable>.bit0_stream_addr_1
	mov	r8, r7	@ tmp349, tmp341
	mov	r0, #4	@,
	bfi	r8, sl, #0, #24	@ tmp349, <variable>.bit0_stream_addr_1,,
	str	r8, [fp, #-48]	@ tmp349,
	strb	r7, [fp, #-45]	@ tmp341, <variable>.reserved
	add	r8, r5, r0	@ p32.568, p32.564,
	ldr	r9, [fp, #-48]	@ D32.570, D32
	add	sl, r8, r0	@ p32.572, p32.568,
	movw	r1, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC13	@,
	str	r9, [r5, #4]	@ D32.570,
	add	r9, sl, r0	@ p32.576, p32.572,
	ldr	r2, [fp, #-48]	@, D32
	add	r3, r9, r0	@ p32.580, p32.576,
	str	r3, [fp, #-56]	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #136]	@ <variable>.bit1_len_0, <variable>.bit1_len_0
	mov	r0, #4	@,
	ldr	ip, [r4, #140]	@ <variable>.bit1_offset_0, <variable>.bit1_offset_0
	movw	r1, #:lower16:.LC14	@,
	bic	r3, r2, #-33554432	@ tmp359, <variable>.bit1_len_0,
	movt	r1, #:upper16:.LC14	@,
	bfi	r3, ip, #25, #7	@ tmp359, <variable>.bit1_offset_0,,
	str	r3, [fp, #-48]	@ tmp359,
	str	r3, [r8, #4]	@ tmp359,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r1, [r4, #144]	@ <variable>.bit1_stream_addr_0, <variable>.bit1_stream_addr_0
	mov	ip, r7	@ tmp363, tmp341
	mov	r0, #4	@,
	bfi	ip, r1, #0, #24	@ tmp363, <variable>.bit1_stream_addr_0,,
	str	ip, [fp, #-48]	@ tmp363,
	strb	r7, [fp, #-45]	@ tmp341, <variable>.reserved
	movw	r1, #:lower16:.LC15	@,
	ldr	r2, [fp, #-48]	@ D32.578, D32
	movt	r1, #:upper16:.LC15	@,
	str	r2, [sl, #4]	@ D32.578,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r4, #148]	@ <variable>.bit1_len_1, <variable>.bit1_len_1
	ldr	ip, [r4, #152]	@ <variable>.bit1_offset_1, <variable>.bit1_offset_1
	mov	r0, #4	@,
	bic	r2, r3, #-33554432	@ tmp373, <variable>.bit1_len_1,
	movw	r1, #:lower16:.LC16	@,
	bfi	r2, ip, #25, #7	@ tmp373, <variable>.bit1_offset_1,,
	str	r2, [fp, #-48]	@ tmp373,
	str	r2, [r9, #4]	@ tmp373,
	movt	r1, #:upper16:.LC16	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r1, [r4, #156]	@ <variable>.bit1_stream_addr_1, <variable>.bit1_stream_addr_1
	mov	r3, r7	@ tmp377, tmp341
	ldr	r2, [fp, #-56]	@,
	bfi	r3, r1, #0, #24	@ tmp377, <variable>.bit1_stream_addr_1,,
	str	r3, [fp, #-48]	@ tmp377,
	strb	r7, [fp, #-45]	@ tmp341, <variable>.reserved
	mov	r0, #4	@,
	ldr	ip, [fp, #-48]	@ D32.586, D32
	movw	r1, #:lower16:.LC17	@,
	movt	r1, #:upper16:.LC17	@,
	str	ip, [r2, #4]	@ D32.586,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r4, #172]	@ <variable>.image_curr_recon_addr, <variable>.image_curr_recon_addr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC18	@,
	bic	r2, r3, #15	@ tmp386, <variable>.image_curr_recon_addr,
	str	r2, [fp, #-48]	@ tmp386, <variable>.curr_rcn_addr
	str	r2, [r5, #56]	@ tmp386,
	movt	r1, #:upper16:.LC18	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r4, #176]	@ <variable>.image_golden_ref_addr, <variable>.image_golden_ref_addr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC19	@,
	bic	r3, ip, #15	@ tmp392, <variable>.image_golden_ref_addr,
	str	r3, [fp, #-48]	@ tmp392, <variable>.golden_ref_addr
	str	r3, [r5, #64]	@ tmp392,
	movt	r1, #:upper16:.LC19	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r4, #180]	@ <variable>.image_last_ref_addr, <variable>.image_last_ref_addr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC20	@,
	bic	ip, r2, #15	@ tmp398, <variable>.image_last_ref_addr,
	str	ip, [fp, #-48]	@ tmp398, <variable>.last_ref_addr
	str	ip, [r5, #68]	@ tmp398,
	movt	r1, #:upper16:.LC20	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r6, #1136]	@ <variable>.SedTopAddr, <variable>.SedTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC21	@,
	bic	r2, r3, #15	@ tmp404, <variable>.SedTopAddr,
	str	r2, [fp, #-48]	@ tmp404, <variable>.sed_top_addr
	str	r2, [r5, #72]	@ tmp404,
	movt	r1, #:upper16:.LC21	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r6, #1140]	@ <variable>.PmvTopAddr, <variable>.PmvTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC22	@,
	bic	r3, ip, #15	@ tmp410, <variable>.PmvTopAddr,
	str	r3, [fp, #-48]	@ tmp410, <variable>.pmv_top_addr
	str	r3, [r5, #76]	@ tmp410,
	movt	r1, #:upper16:.LC22	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, #1144]	@ <variable>.RcnTopAddr, <variable>.RcnTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC23	@,
	bic	ip, r2, #15	@ tmp416, <variable>.RcnTopAddr,
	str	ip, [fp, #-48]	@ tmp416, <variable>.rcn_top_addr
	str	ip, [r5, #80]	@ tmp416,
	movt	r1, #:upper16:.LC23	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r6, #1176]	@ <variable>.Vp6TabAddr, <variable>.Vp6TabAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC24	@,
	bic	r2, r3, #15	@ tmp422, <variable>.Vp6TabAddr,
	str	r2, [fp, #-48]	@ tmp422, <variable>.tab_addr
	str	r2, [r5, #84]	@ tmp422,
	movt	r1, #:upper16:.LC24	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r0, [fp, #-48]	@, D32.tab_addr
	bl	MEM_Phy2Vir	@
	mov	r5, r0	@ D.33298,
	ldr	r0, [r6, #1176]	@, <variable>.Vp6TabAddr
	bl	MEM_Phy2Vir	@
	cmp	r0, r7	@ D.33299,
	cmpne	r5, r7	@, D.33298,
	mov	r3, r0	@ D.33299,
	beq	.L20	@,
	mov	r1, #4096	@,
	mov	r0, r5	@, D.33298
	bl	__memzero	@
	ldr	r1, [r4, #4]	@, <variable>.TblProbModeSame
	mov	r2, #64	@,
	mov	r0, r5	@, D.33298
	bl	memcpy	@
	ldr	r1, [r4, #8]	@, <variable>.TblProbMode
	mov	r2, #640	@,
	add	r0, r5, #64	@, D.33298,
	bl	memcpy	@
	add	r0, r5, #704	@, D.33298,
	ldr	r1, [r4, #12]	@, <variable>.TblProbMv
	mov	r2, #64	@,
	bl	memcpy	@
	ldr	r0, [r4, #72]	@ <variable>.UseHuffman, <variable>.UseHuffman
	cmp	r0, #0	@ <variable>.UseHuffman,
	beq	.L21	@,
	ldr	r0, [fp, #-48]	@, D32.tab_addr
	bl	MEM_Phy2Vir	@
	mov	r5, r0	@ D.33325,
	adds	r0, r0, #768	@ TabBaseAddr.628, D.33325,
	beq	.L22	@,
	ldr	r1, [r4, #44]	@, <variable>.TblAcHuffLUT
	mov	r2, #1536	@,
	bl	memcpy	@
	ldr	r1, [r4, #40]	@, <variable>.TblDcHuffLUT
	mov	r2, #128	@,
	add	r0, r5, #2304	@, D.33325,
	bl	memcpy	@
	add	r0, r5, #2432	@, D.33325,
	ldr	r1, [r4, #48]	@, <variable>.TblZeroHuffLUT
	mov	r2, #128	@,
	bl	memcpy	@
.L12:
	ldr	r0, [fp, #-48]	@, D32.tab_addr
	bl	MEM_Phy2Vir	@
	mov	r5, r0	@ D.33332,
	adds	r0, r0, #2560	@ TabBaseAddr.634, D.33332,
	beq	.L23	@,
	ldr	r1, [r4, #16]	@, <variable>.TblModifiedScanOrder
	mov	r2, #64	@,
	bl	memcpy	@
	ldr	r1, [r4, #20]	@, <variable>.TblEobOffsetTable
	mov	r2, #64	@,
	add	r0, r5, #2624	@, D.33332,
	bl	memcpy	@
	ldr	r1, [r4, #24]	@, <variable>.TblHuffTree
	mov	r2, #960	@,
	add	r0, r5, #2688	@, D.33332,
	bl	memcpy	@
	ldr	r0, [fp, #-48]	@, D32.tab_addr
	bl	MEM_Phy2Vir	@
	adds	r0, r0, #2816	@ TabBaseAddr.640,,
	beq	.L24	@,
	ldr	r1, [r4, #24]	@, <variable>.TblHuffTree
	mov	r2, #960	@,
	bl	memcpy	@
	mov	r0, #0	@ D.33141,
.L5:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L21:
	ldr	r0, [fp, #-48]	@, D32.tab_addr
	bl	MEM_Phy2Vir	@
	mov	r5, r0	@ D.33316,
	adds	r0, r0, #768	@ TabBaseAddr.623, D.33316,
	beq	.L25	@,
	ldr	r1, [r4, #28]	@, <variable>.TblDcNodeContexts
	mov	r2, #96	@,
	bl	memcpy	@
	ldr	r1, [r4, #36]	@, <variable>.TblZeroProbs
	add	r0, r5, #864	@, D.33316,
	mov	r2, #32	@,
	bl	memcpy	@
	add	r0, r5, #896	@, D.33316,
	ldr	r1, [r4, #32]	@, <variable>.TblACProbs
	mov	r2, #576	@,
	bl	memcpy	@
	b	.L12	@
.L19:
	movw	r1, #:lower16:.LC11	@,
	movw	r2, #495	@,
	movt	r1, #:upper16:.LC11	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L8	@
.L20:
	mov	r0, r7	@, tmp341
	movw	r1, #:lower16:.LC25	@,
	movw	r2, #:lower16:.LANCHOR0	@,
	movt	r1, #:upper16:.LC25	@,
	movt	r2, #:upper16:.LANCHOR0	@,
	str	r5, [sp, #0]	@ D.33298,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33141,
	b	.L5	@
.L18:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #:lower16:.LANCHOR0	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r2, #:upper16:.LANCHOR0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33141,
	b	.L5	@
.L24:
	movw	r1, #:lower16:.LC26	@,
	movw	r2, #670	@,
	movt	r1, #:upper16:.LC26	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33141,
	b	.L5	@
.L23:
	movw	r1, #:lower16:.LC26	@,
	mov	r2, #656	@,
	movt	r1, #:upper16:.LC26	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33141,
	b	.L5	@
.L22:
	movw	r1, #:lower16:.LC26	@,
	mov	r2, #640	@,
	movt	r1, #:upper16:.LC26	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33141,
	b	.L5	@
.L25:
	movw	r1, #:lower16:.LC26	@,
	movw	r2, #622	@,
	movt	r1, #:upper16:.LC26	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33141,
	b	.L5	@
	.fnend
	.size	VP6HAL_V300R001_CfgDnMsg, .-VP6HAL_V300R001_CfgDnMsg
	.align	2
	.global	VP6HAL_V300R001_CfgReg
	.type	VP6HAL_V300R001_CfgReg, %function
VP6HAL_V300R001_CfgReg:
	.fnstart
.LFB1526:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #20
	sub	sp, sp, #20	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r2, #1	@ VdhId,
	mov	r5, r0	@ pVp6DecParam, pVp6DecParam
	mov	r6, r1	@ pHwMem, pHwMem
	bls	.L40	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC27	@,
	movt	r1, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32915,
.L29:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L40:
	beq	.L41	@,
	ldr	r3, [r1, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L42	@,
.L31:
	ldrh	r8, [r5, #54]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	movw	r4, #:lower16:g_HwMem	@ tmp345,
	ldrh	ip, [r5, #52]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	movt	r4, #:upper16:g_HwMem	@ tmp345,
	mov	r7, #0	@ tmp192,
	mov	r0, #3	@,
	ldr	r2, [r4, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	movw	r1, #:lower16:.LC30	@,
	mul	lr, ip, r8	@ tmp195, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	movt	r1, #:upper16:.LC30	@,
	sub	r3, lr, #1	@ tmp196, tmp195,
	bic	r8, r3, #-16777216	@ tmp199, tmp196,
	bic	ip, r8, #15728640	@ tmp199, tmp199,
	bfi	ip, r7, #31, #1	@ tmp199, tmp192,,
	str	ip, [fp, #-40]	@ tmp199,
	str	ip, [r2, #8]	@ tmp199,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r1, [r5, #188]	@ <variable>.VahbStride, <variable>.VahbStride
	mov	r3, #536870922	@ tmp209,
	ldr	ip, [r5, #192]	@ <variable>.Compress_en, <variable>.Compress_en
	ldr	r2, [r4, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, #3	@,
	mov	lr, r1, lsr #6	@ tmp207, <variable>.VahbStride,
	movw	r1, #:lower16:.LC31	@,
	bfi	r3, lr, #4, #10	@ tmp209, tmp207,,
	movt	r1, #:upper16:.LC31	@,
	orr	r8, r3, #49152	@ tmp214, tmp209,
	bfi	r8, r7, #16, #12	@ tmp214, tmp192,,
	orr	lr, r8, #536870912	@ tmp218, tmp214,
	bfi	lr, ip, #30, #1	@ tmp218, <variable>.Compress_en,,
	bfi	lr, r7, #31, #1	@ tmp219, tmp192,,
	str	lr, [fp, #-40]	@ tmp219,
	str	lr, [r2, #12]	@ tmp219,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r4, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r3, [r6, #48]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC32	@,
	movt	r1, #:upper16:.LC32	@,
	bic	r8, r3, #15	@ tmp227, <variable>.MsgSlotAddr,
	str	r8, [fp, #-40]	@ tmp227, <variable>.av_msg_addr
	str	r8, [r2, #16]	@ tmp227,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r8, [r4, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	ip, [r6, #32]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC33	@,
	movt	r1, #:upper16:.LC33	@,
	bic	r3, ip, #15	@ tmp235, <variable>.MsgSlotAddr,
	str	r3, [fp, #-40]	@ tmp235, <variable>.va_msg_addr
	str	r3, [r8, #20]	@ tmp235,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r5, #56]	@ <variable>.StreamBaseAddr, <variable>.StreamBaseAddr
	ldr	ip, [r4, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC34	@,
	str	r2, [fp, #-40]	@ <variable>.StreamBaseAddr, <variable>.stream_base_addr
	str	r2, [ip, #24]	@ <variable>.StreamBaseAddr,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r4, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r8, [r6, #1156]	@ <variable>.PpfdBufAddr, <variable>.PpfdBufAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC35	@,
	movt	r1, #:upper16:.LC35	@,
	bic	r3, r8, #15	@ tmp250, <variable>.PpfdBufAddr,
	str	r3, [fp, #-40]	@ tmp250, <variable>.ppfd_buf_addr
	str	r3, [r2, #128]	@ tmp250,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r6, #1160]	@ <variable>.PpfdBufLen, <variable>.PpfdBufLen
	str	r7, [fp, #-40]	@ tmp192, D32
	mov	r0, #3	@,
	ldr	r8, [r4, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	movw	r1, #:lower16:.LC36	@,
	strh	ip, [fp, #-40]	@ movhi	@ <variable>.PpfdBufLen, <variable>.ppfd_buf_len
	movt	r1, #:upper16:.LC36	@,
	ldr	r6, [fp, #-40]	@ D32.696, D32
	str	r6, [r8, #132]	@ D32.696,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldrh	r3, [r5, #52]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	movw	r2, #:lower16:s_RegPhyBaseAddr	@ tmp265,
	movt	r2, #:upper16:s_RegPhyBaseAddr	@ tmp265,
	cmp	r3, #256	@ <variable>.PicWidthInMb,
	ldr	r0, [r2, #0]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	movwls	r1, #:lower16:96016	@ tmp264,
	movwhi	r1, #30480	@ tmp263,
	add	r0, r0, #4	@, s_RegPhyBaseAddr,
	movtls	r1, #:upper16:96016	@ tmp264,
	str	r1, [fp, #-40]	@ tmp264, D32
	bl	MEM_WritePhyWord	@
	ldr	r1, [r4, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	movw	ip, #:lower16:3148803	@ tmp268,
	movt	ip, #:upper16:3148803	@ tmp268,
	str	ip, [fp, #-40]	@ tmp268, D32
	mov	r0, #3	@,
	str	ip, [r1, #60]	@ tmp268,
	movw	r1, #:lower16:.LC37	@,
	ldr	r6, [fp, #-40]	@ D32.703, D32
	movt	r1, #:upper16:.LC37	@,
	ldr	r8, [r4, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r6, [r8, #64]	@ D32.703,
	ldr	r2, [fp, #-40]	@ D32.706, D32
	ldr	r3, [r4, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [r3, #68]	@ D32.706,
	ldr	r8, [fp, #-40]	@ D32.709, D32
	ldr	ip, [r4, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r8, [ip, #72]	@ D32.709,
	ldr	r2, [fp, #-40]	@ D32.712, D32
	ldr	r6, [r4, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [r6, #76]	@ D32.712,
	ldr	ip, [fp, #-40]	@ D32.715, D32
	ldr	r3, [r4, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r3, #80]	@ D32.715,
	ldr	r6, [fp, #-40]	@ D32.718, D32
	ldr	r8, [r4, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r6, [r8, #84]	@ D32.718,
	ldr	ip, [r4, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r2, [r5, #172]	@ <variable>.image_curr_recon_addr, <variable>.image_curr_recon_addr
	bic	r3, r2, #15	@ tmp287, <variable>.image_curr_recon_addr,
	str	r3, [fp, #-40]	@ tmp287, <variable>.ystaddr_1d
	str	r3, [ip, #96]	@ tmp287,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r8, [r5, #188]	@ <variable>.VahbStride, <variable>.VahbStride
	ldr	r6, [r4, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC38	@,
	movt	r1, #:upper16:.LC38	@,
	str	r8, [fp, #-40]	@ <variable>.VahbStride, <variable>.ystride_1d
	str	r8, [r6, #100]	@ <variable>.VahbStride,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldrh	r2, [r5, #52]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	movw	r3, #2047	@ tmp302,
	mov	r2, r2, asl #4	@ D.33065, <variable>.PicWidthInMb,
	sub	r0, r2, #1	@ tmp301, D.33065,
	cmp	r0, r3	@ tmp301, tmp302
	bhi	.L43	@,
.L35:
	mov	r7, #16	@ level,
.L37:
	ldrh	r2, [r5, #54]	@ temp.731, <variable>.PicHeightInMb
	mov	r0, #3	@,
	ldr	r8, [r5, #188]	@ <variable>.VahbStride, <variable>.VahbStride
	movw	r1, #:lower16:.LC39	@,
	add	r6, r2, #1	@ tmp318, temp.731,
	ldr	ip, [r4, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	lr, r2, asl #4	@ tmp313, temp.731,
	movt	r1, #:upper16:.LC39	@,
	add	r3, lr, #31	@ tmp314, tmp313,
	mov	lr, r6, asr #1	@ tmp319, tmp318,
	mov	r6, #0	@ tmp335,
	mov	r2, r3, asr #5	@ tmp315, tmp314,
	mul	lr, r8, lr	@ tmp320, <variable>.VahbStride, tmp319
	mov	r3, r2, asl #4	@ tmp316, tmp315,
	mla	r2, r7, r3, lr	@ tmp322, level, tmp316, tmp320
	mov	lr, r2, asl #1	@ tmp323, tmp322,
	str	lr, [fp, #-40]	@ tmp323, <variable>.uvoffset_1d
	str	lr, [ip, #104]	@ tmp323,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldrh	r3, [r5, #54]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	ldr	ip, [r4, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC40	@,
	movt	r1, #:upper16:.LC40	@,
	mov	r2, r3, asl #4	@ tmp329, <variable>.PicHeightInMb,
	add	r3, r2, #31	@ tmp330, tmp329,
	mov	r2, r3, asr #5	@ tmp331, tmp330,
	mov	r3, r2, asl #5	@ tmp332, tmp331,
	mul	r7, r7, r3	@ D32.455, level, tmp332
	str	r7, [ip, #108]	@ D32.455,
	ldr	r2, [r4, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r6, [fp, #-40]	@ tmp335, D32
	str	r6, [r2, #152]	@ tmp335,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r4, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mvn	ip, #0	@ tmp343,
	mov	r0, r6	@ D.32915, tmp335
	str	ip, [r3, #32]	@ tmp343,
	b	.L29	@
.L43:
	sub	r6, r2, #2048	@ tmp303, D.33065,
	sub	r0, r6, #1	@ tmp303, tmp303,
	cmp	r0, r3	@ tmp303, tmp302
	movls	r7, #32	@ level,
	bls	.L37	@,
	sub	lr, r2, #4096	@ tmp306, D.33065,
	sub	r1, lr, #1	@ tmp306, tmp306,
	cmp	r1, r3	@ tmp306, tmp302
	movls	r7, #48	@ level,
	bls	.L37	@,
	sub	r8, r2, #6144	@ tmp309, D.33065,
	sub	r2, r8, #1	@ tmp309, tmp309,
	cmp	r2, r3	@ tmp309, tmp302
	movls	r7, #64	@ level,
	bls	.L37	@,
	b	.L35	@
.L42:
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	bl	MEM_Phy2Vir	@
	subs	r1, r0, #0	@ D.32922,
	strne	r1, [r6, #0]	@ D.32922, <variable>.pVdmRegVirAddr
	bne	.L31	@,
	movw	r1, #:lower16:.LC29	@,
	movt	r1, #:upper16:.LC29	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32915,
	b	.L29	@
.L41:
	mov	ip, #0	@ tmp188,
	mov	r3, r2	@, VdhId
	mov	r0, ip	@, tmp188
	movw	r1, #:lower16:.LC28	@,
	ldr	r2, .L44	@,
	movt	r1, #:upper16:.LC28	@,
	str	ip, [sp, #0]	@ tmp188,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32915,
	b	.L29	@
.L45:
	.align	2
.L44:
	.word	.LANCHOR0+28
	.fnend
	.size	VP6HAL_V300R001_CfgReg, .-VP6HAL_V300R001_CfgReg
	.align	2
	.global	VP6HAL_V300R001_StartDec
	.type	VP6HAL_V300R001_StartDec, %function
VP6HAL_V300R001_StartDec:
	.fnstart
.LFB1525:
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
	mov	r4, r0	@ pVp6DecParam, pVp6DecParam
	bls	.L56	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC41	@,
	movt	r1, #:upper16:.LC41	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32878,
.L49:
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L56:
	beq	.L57	@,
	ldrh	r1, [r0, #52]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	movw	r3, #511	@ tmp149,
	sub	r0, r1, #1	@ tmp147, <variable>.PicWidthInMb,
	uxth	r2, r0	@ tmp148, tmp147
	cmp	r2, r3	@ tmp148, tmp149
	bhi	.L58	@,
	ldrh	r2, [r4, #54]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	sub	ip, r2, #1	@ tmp156, <variable>.PicHeightInMb,
	uxth	lr, ip	@ tmp157, tmp156
	cmp	lr, r3	@ tmp157, tmp149
	bhi	.L59	@,
	movw	r5, #:lower16:g_HwMem	@ tmp163,
	movt	r5, #:upper16:g_HwMem	@ tmp163,
	ldr	r3, [r5, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L60	@,
.L53:
	mov	r2, #0	@,
	mov	r0, r4	@, pVp6DecParam
	movw	r1, #:lower16:g_HwMem	@,
	movt	r1, #:upper16:g_HwMem	@,
	bl	VP6HAL_V300R001_CfgReg	@
	mov	r0, r4	@, pVp6DecParam
	movw	r1, #:lower16:g_HwMem	@,
	mov	r2, #0	@,
	movt	r1, #:upper16:g_HwMem	@,
	bl	VP6HAL_V300R001_CfgDnMsg	@
	mov	r0, #0	@ D.32878,
	b	.L49	@
.L60:
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	bl	MEM_Phy2Vir	@
	subs	r1, r0, #0	@ D.32894,
	strne	r1, [r5, #0]	@ D.32894, <variable>.pVdmRegVirAddr
	bne	.L53	@,
	movw	r1, #:lower16:.LC29	@,
	movt	r1, #:upper16:.LC29	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32878,
	b	.L49	@
.L57:
	mov	ip, #0	@ tmp144,
	mov	r3, r1	@, VdhId
	mov	r0, ip	@, tmp144
	movw	r1, #:lower16:.LC28	@,
	ldr	r2, .L61	@,
	movt	r1, #:upper16:.LC28	@,
	str	ip, [sp, #0]	@ tmp144,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32878,
	b	.L49	@
.L58:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	ldr	r2, .L61	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC42	@,
	movt	r3, #:upper16:.LC42	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32878,
	b	.L49	@
.L59:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	ldr	r2, .L61	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC43	@,
	movt	r3, #:upper16:.LC43	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32878,
	b	.L49	@
.L62:
	.align	2
.L61:
	.word	.LANCHOR0+52
	.fnend
	.size	VP6HAL_V300R001_StartDec, .-VP6HAL_V300R001_StartDec
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	__func__.33132, %object
	.size	__func__.33132, 25
__func__.33132:
	.ascii	"VP6HAL_V300R001_CfgDnMsg\000"
	.space	3
	.type	__func__.32913, %object
	.size	__func__.32913, 23
__func__.32913:
	.ascii	"VP6HAL_V300R001_CfgReg\000"
	.space	1
	.type	__func__.32874, %object
	.size	__func__.32874, 25
__func__.32874:
	.ascii	"VP6HAL_V300R001_StartDec\000"
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"%s: %s\012\000"
.LC1:
	.ascii	"can not map down msg virtual address!\000"
	.space	2
.LC2:
	.ascii	"D0 = 0x%x\012\000"
	.space	1
.LC3:
	.ascii	"D1 = 0x%x\012\000"
	.space	1
.LC4:
	.ascii	"D2 = 0x%x\012\000"
	.space	1
.LC5:
	.ascii	"D3 = 0x%x\012\000"
	.space	1
.LC6:
	.ascii	"D4 = 0x%x\012\000"
	.space	1
.LC7:
	.ascii	"D8 = 0x%x\012\000"
	.space	1
.LC8:
	.ascii	"D9 = 0x%x\012\000"
	.space	1
.LC9:
	.ascii	"D16 = 0x%x\012\000"
.LC10:
	.ascii	"D17 = 0x%x\012\000"
.LC11:
	.ascii	"LINE:%d NULL == tmpAddr.\012\000"
	.space	2
.LC12:
	.ascii	"D18 = 0x%x\012\000"
.LC13:
	.ascii	"D19 = 0x%x\012\000"
.LC14:
	.ascii	"D20 = 0x%x\012\000"
.LC15:
	.ascii	"D21 = 0x%x\012\000"
.LC16:
	.ascii	"D22 = 0x%x\012\000"
.LC17:
	.ascii	"D23 = 0x%x\012\000"
.LC18:
	.ascii	"D32 = 0x%x\012\000"
.LC19:
	.ascii	"D34 = 0x%x\012\000"
.LC20:
	.ascii	"D35 = 0x%x\012\000"
.LC21:
	.ascii	"D36 = 0x%x\012\000"
.LC22:
	.ascii	"D37 = 0x%x\012\000"
.LC23:
	.ascii	"D38 = 0x%x\012\000"
.LC24:
	.ascii	"D39 = 0x%x\012\000"
.LC25:
	.ascii	"%s: tmpAddr(%p) = NULL / TabBaseAddr(%p) = NULL\012"
	.ascii	"\000"
	.space	3
.LC26:
	.ascii	"line: %d  NULL == TabBaseAddr.\012\000"
.LC27:
	.ascii	"VdhId is wrong! MP2HAL_V200R003_CfgReg\012\000"
.LC28:
	.ascii	"%s: VdhId(%d) > %d\012\000"
.LC29:
	.ascii	"vdm register virtual address not mapped, reset fail"
	.ascii	"ed!\012\000"
.LC30:
	.ascii	"BASIC_CFG0 = 0x%x\012\000"
	.space	1
.LC31:
	.ascii	"BASIC_CFG1 = 0x%x\012\000"
	.space	1
.LC32:
	.ascii	"AVM_ADDR = 0x%x\012\000"
	.space	3
.LC33:
	.ascii	"VAM_ADDR = 0x%x\012\000"
	.space	3
.LC34:
	.ascii	"STREAM_BASE_ADDR = 0x%x\012\000"
	.space	3
.LC35:
	.ascii	"PPFD_V300R001_BUF_ADDR = 0x%x\012\000"
	.space	1
.LC36:
	.ascii	"PPFD_V200R003_BUF_LEN = 0x%x\012\000"
	.space	2
.LC37:
	.ascii	"YSTADDR_1D = 0x%x\012\000"
	.space	1
.LC38:
	.ascii	"YSTRIDE_1D = 0x%x\012\000"
	.space	1
.LC39:
	.ascii	"UVOFFSET_1D = 0x%x\012\000"
.LC40:
	.ascii	"FF_APT_EN = 0x%x\012\000"
	.space	2
.LC41:
	.ascii	"VdhId is wrong! MP2HAL_V200R003_StartDec\012\000"
	.space	2
.LC42:
	.ascii	"picture width out of range\000"
	.space	1
.LC43:
	.ascii	"picture height out of range\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
