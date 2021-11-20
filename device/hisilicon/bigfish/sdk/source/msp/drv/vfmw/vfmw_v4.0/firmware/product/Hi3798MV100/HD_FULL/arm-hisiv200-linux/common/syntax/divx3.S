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
	.file	"divx3.c"
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
@ -DKBUILD_BASENAME=KBUILD_STR(divx3) -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD drivers/msp/vfmw/vfmw_v4.0/firmware/common/syntax/.divx3.o.d
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/drivers/msp/vfmw/vfmw_v4.0/firmware/common/syntax/divx3.c
@ -mlittle-endian -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -marm -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/common/syntax/divx3.o -O2 -Wall
@ -Wundef -Wstrict-prototypes -Wno-trigraphs
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
	.global	Divx3_RecordVFMWState
	.type	Divx3_RecordVFMWState, %function
Divx3_RecordVFMWState:
	.fnstart
.LFB1531:
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
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	Divx3_RecordVFMWState, .-Divx3_RecordVFMWState
	.align	2
	.global	Divx3_WritePicMsg
	.type	Divx3_WritePicMsg, %function
Divx3_WritePicMsg:
	.fnstart
.LFB1532:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r8, #33552	@ tmp134,
	movw	r6, #33600	@ tmp136,
	movw	r5, #33604	@ tmp138,
	movw	r4, #33556	@ tmp140,
	movw	ip, #33560	@ tmp142,
	movw	r1, #33568	@ tmp144,
	movw	r2, #33576	@ tmp146,
	movw	r9, #33580	@ tmp148,
	movw	r7, #33588	@ tmp152,
	ldr	sl, [r0, r8]	@ <variable>.CodecInfo.PictureHeader.prediction_type, <variable>.CodecInfo.PictureHeader.prediction_type
	movw	r3, #33584	@ tmp150,
	ldr	r8, [r0, r6]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	ldr	r6, [r0, r5]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_mb, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	ldr	r5, [r0, r4]	@ <variable>.CodecInfo.PictureHeader.quantizer, <variable>.CodecInfo.PictureHeader.quantizer
	ldr	r4, [r0, ip]	@ <variable>.CodecInfo.PictureHeader.rounding_type, <variable>.CodecInfo.PictureHeader.rounding_type
	ldr	ip, [r0, r1]	@ <variable>.CodecInfo.PictureHeader.has_skips, <variable>.CodecInfo.PictureHeader.has_skips
	ldr	r1, [r0, r2]	@ <variable>.CodecInfo.PictureHeader.alternative_I_AC_chrom_DCT, <variable>.CodecInfo.PictureHeader.alternative_I_AC_chrom_DCT
	ldr	r2, [r0, r9]	@ <variable>.CodecInfo.PictureHeader.alternative_I_AC_lum_DCT, <variable>.CodecInfo.PictureHeader.alternative_I_AC_lum_DCT
	ldr	r9, [r0, r7]	@, <variable>.CodecInfo.PictureHeader.alternative_P_AC_DCT
	movw	r7, #33592	@ tmp154,
	ldr	r3, [r0, r3]	@ <variable>.CodecInfo.PictureHeader.alternative_I_DC_DCT, <variable>.CodecInfo.PictureHeader.alternative_I_DC_DCT
	str	sl, [r0, #12]	@ <variable>.CodecInfo.PictureHeader.prediction_type, <variable>.Divx3DecParam.prediction_type
	str	r9, [r0, #48]	@, <variable>.Divx3DecParam.alternative_P_AC_DCT
	ldr	r9, [r0, r7]	@ <variable>.CodecInfo.PictureHeader.alternative_P_DC_DCT, <variable>.CodecInfo.PictureHeader.alternative_P_DC_DCT
	movw	r7, #33596	@ tmp156,
	ldr	r7, [r0, r7]	@ <variable>.CodecInfo.PictureHeader.alternative_MV, <variable>.CodecInfo.PictureHeader.alternative_MV
	str	r8, [r0, #16]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.Divx3DecParam.PicWidthInMb
	str	r6, [r0, #20]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_mb, <variable>.Divx3DecParam.PicHeightInMb
	str	r7, [r0, #56]	@ <variable>.CodecInfo.PictureHeader.alternative_MV, <variable>.Divx3DecParam.alternative_MV
	str	r5, [r0, #24]	@ <variable>.CodecInfo.PictureHeader.quantizer, <variable>.Divx3DecParam.quantizer
	str	r4, [r0, #28]	@ <variable>.CodecInfo.PictureHeader.rounding_type, <variable>.Divx3DecParam.rounding_type
	str	ip, [r0, #32]	@ <variable>.CodecInfo.PictureHeader.has_skips, <variable>.Divx3DecParam.has_skips
	str	r1, [r0, #36]	@ <variable>.CodecInfo.PictureHeader.alternative_I_AC_chrom_DCT, <variable>.Divx3DecParam.alternative_I_AC_chrom_DCT
	str	r2, [r0, #40]	@ <variable>.CodecInfo.PictureHeader.alternative_I_AC_lum_DCT, <variable>.Divx3DecParam.alternative_I_AC_lum_DCT
	str	r3, [r0, #44]	@ <variable>.CodecInfo.PictureHeader.alternative_I_DC_DCT, <variable>.Divx3DecParam.alternative_I_DC_DCT
	str	r9, [r0, #52]	@ <variable>.CodecInfo.PictureHeader.alternative_P_DC_DCT, <variable>.Divx3DecParam.alternative_P_DC_DCT
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	.fnend
	.size	Divx3_WritePicMsg, .-Divx3_WritePicMsg
	.align	2
	.global	Divx3_WriteReg
	.type	Divx3_WriteReg, %function
Divx3_WriteReg:
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
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	Divx3_WriteReg, .-Divx3_WriteReg
	.align	2
	.global	DIVX3DEC_GetImageBuffer
	.type	DIVX3DEC_GetImageBuffer, %function
DIVX3DEC_GetImageBuffer:
	.fnstart
.LFB1542:
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
	movw	r4, #:lower16:67968	@ tmp138,
	movt	r4, #:upper16:67968	@ tmp138,
	mov	r5, r0	@ pCtx, pCtx
	ldr	r0, [r0, r4]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@ D.39323,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmn	r0, #1	@,
	movne	r0, #0	@ D.39326,
	ldmnefd	sp, {r4, r5, fp, sp, pc}	@
	add	r1, r5, #33792	@, pCtx,
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	add	r1, r1, #16	@,,
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, #0	@ D.39326,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	DIVX3DEC_GetImageBuffer, .-DIVX3DEC_GetImageBuffer
	.align	2
	.global	DIVX3DEC_Destroy
	.type	DIVX3DEC_Destroy, %function
DIVX3DEC_Destroy:
	.fnstart
.LFB1537:
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
	movw	r3, #33672	@ tmp135,
	ldr	r2, [r0, r3]	@ <variable>.CodecInfo.FrmCnt, <variable>.CodecInfo.FrmCnt
	movw	r1, #:lower16:.LC0	@,
	mov	r0, #2	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	DIVX3DEC_Destroy, .-DIVX3DEC_Destroy
	.align	2
	.global	DIVX3DEC_RecycleImage
	.type	DIVX3DEC_RecycleImage, %function
DIVX3DEC_RecycleImage:
	.fnstart
.LFB1539:
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
	subs	r5, r0, #0	@ pCtx, pCtx
	mov	r6, r1	@ ImgID, ImgID
	moveq	r0, r5	@ D.39206, pCtx
	ldmeqfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	movw	r4, #:lower16:67968	@ tmp138,
	movt	r4, #:upper16:67968	@ tmp138,
	mov	r2, #0	@,
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	bl	FSP_SetDisplay	@
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	mov	r1, r6	@, ImgID
	bl	FSP_GetFsImagePtr	@
	mov	r0, #1	@ D.39206,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	DIVX3DEC_RecycleImage, .-DIVX3DEC_RecycleImage
	.align	2
	.global	Divx3_DecodeDecide
	.type	Divx3_DecodeDecide, %function
Divx3_DecodeDecide:
	.fnstart
.LFB1534:
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
	ldrb	r4, [r0, #178]	@ zero_extendqisi2	@ <variable>.CodecInfo.Imgbuf_allocated, <variable>.CodecInfo.Imgbuf_allocated
	movw	r3, #33552	@ tmp143,
	mov	r5, r0	@ pCtx, pCtx
	cmp	r4, #0	@ <variable>.CodecInfo.Imgbuf_allocated,
	ldr	r6, [r0, r3]	@ FrameType, <variable>.CodecInfo.PictureHeader.prediction_type
	beq	.L38	@,
	ldrb	r2, [r0, #179]	@ zero_extendqisi2	@ <variable>.CodecInfo.UsedDecMode, <variable>.CodecInfo.UsedDecMode
	sub	r1, r2, #2	@ tmp148, <variable>.CodecInfo.UsedDecMode,
	uxtb	r0, r1	@ tmp149, tmp148
	cmp	r0, #1	@ tmp149,
	bls	.L22	@,
	ldr	ip, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [ip, #8]	@ prephitmp.625, <variable>.s32DecMode
.L23:
	uxtb	r0, r2	@ D.38784, prephitmp.625
	strb	r0, [r5, #179]	@ D.38784, <variable>.CodecInfo.UsedDecMode
	cmp	r0, #4	@ D.38784,
	ldrls	pc, [pc, r0, asl #2]	@ D.38784
	b	.L24	@
.L28:
	.word	.L25
	.word	.L25
	.word	.L26
	.word	.L36
	.word	.L25
.L39:
	movw	r1, #:lower16:.LC3	@,
	mov	r2, r6	@, FrameType
	mov	r0, #18	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
.L36:
	mov	r0, #0	@ D.38766,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L22:
	ldr	r3, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r3, #8]	@ prephitmp.625, <variable>.s32DecMode
	cmp	r2, #4	@ prephitmp.625,
	cmpne	r2, #1	@, prephitmp.625,
	bhi	.L23	@,
	movw	r4, #:lower16:67968	@ tmp160,
	movt	r4, #:upper16:67968	@ tmp160,
	movw	r7, #33760	@ tmp162,
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	ldr	r1, [r5, r7]	@, <variable>.CodecInfo.FwdFsID
	mov	r2, #1	@,
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	mov	r8, #0	@ tmp165,
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	str	r8, [r5, r7]	@ tmp165, <variable>.CodecInfo.FwdFsID
	bl	FSP_GetNullLogicFs	@
	ldr	r1, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	r2, #33676	@ tmp169,
	str	r8, [r5, r2]	@ tmp165, <variable>.CodecInfo.RefNum
	str	r0, [r5, r7]	@, <variable>.CodecInfo.FwdFsID
	ldr	r2, [r1, #8]	@ prephitmp.625, <variable>.s32DecMode
	b	.L23	@
.L38:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.38766, <variable>.CodecInfo.Imgbuf_allocated
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L26:
	cmp	r6, #0	@ FrameType,
	bne	.L39	@,
.L29:
	movw	r3, #:lower16:67968	@ tmp184,
	movt	r3, #:upper16:67968	@ tmp184,
	movw	r2, #33760	@ tmp186,
	ldr	r1, [r5, r2]	@, <variable>.CodecInfo.FwdFsID
	ldr	r0, [r5, r3]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
.L37:
	mov	r0, #1	@ D.38766,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L24:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.38766,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L25:
	cmp	r6, #0	@ FrameType,
	beq	.L29	@,
	movw	lr, #33676	@ tmp174,
	ldr	r4, [r5, lr]	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r4, #0	@ <variable>.CodecInfo.RefNum,
	beq	.L40	@,
	movw	r1, #:lower16:67968	@ tmp188,
	movt	r1, #:upper16:67968	@ tmp188,
	movw	r4, #33760	@ tmp190,
	ldr	r0, [r5, r1]	@, <variable>.ChanID
	ldr	r1, [r5, r4]	@, <variable>.CodecInfo.FwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pFwdImg,
	beq	.L41	@,
	ldr	ip, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r4, #200]	@ D.38808, <variable>.error_level
	ldr	r3, [ip, #0]	@ D.38809, <variable>.s32RefErrThr
	cmp	r2, r3	@ D.38808, D.38809
	bls	.L37	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC8	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.38766,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L40:
	mov	r0, #18	@,
	movw	r1, #:lower16:.LC4	@,
	movw	r2, #:lower16:.LC5	@,
	movt	r1, #:upper16:.LC4	@,
	movt	r2, #:upper16:.LC5	@,
	mov	r3, r4	@, <variable>.CodecInfo.RefNum
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.38766, <variable>.CodecInfo.RefNum
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L41:
	movw	r1, #:lower16:.LC7	@,
	movw	r2, #:lower16:.LANCHOR0	@,
	movt	r1, #:upper16:.LC7	@,
	movt	r2, #:upper16:.LANCHOR0	@,
	mov	r3, #452	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.38766, pFwdImg
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	Divx3_DecodeDecide, .-Divx3_DecodeDecide
	.align	2
	.global	DIVX3DEC_Init
	.type	DIVX3DEC_Init, %function
DIVX3DEC_Init:
	.fnstart
.LFB1536:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r6, #34152	@ tmp139,
	ldr	r7, [r0, r6]	@ D.38891, <variable>.ImageQue.ResetMagicWord
	mov	r5, r1	@ pstExtraData, pstExtraData
	movw	r1, #:lower16:67976	@,
	movt	r1, #:upper16:67976	@,
	mov	r4, r0	@ pCtx, pCtx
	bl	__memzero	@
	add	ip, r4, #33792	@, pCtx,
	str	r7, [r4, r6]	@ D.38891, <variable>.ImageQue.ResetMagicWord
	add	r0, ip, #16	@,,
	mov	r6, #0	@ tmp148,
	bl	ResetVoQueue	@
	movw	r0, #33648	@ tmp144,
	str	r5, [r4, #0]	@ pstExtraData, <variable>.pstExtraData
	mov	r2, #1	@ tmp145,
	str	r2, [r4, r0]	@ tmp145, <variable>.CodecInfo.PrevSwitchRounding
	mov	r0, r4	@, pCtx
	ldr	r1, [r5, #8]	@ <variable>.s32DecMode, <variable>.s32DecMode
	strb	r6, [r4, #178]	@ tmp148, <variable>.CodecInfo.Imgbuf_allocated
	strb	r1, [r4, #179]	@ <variable>.s32DecMode, <variable>.CodecInfo.UsedDecMode
	bl	VCTRL_GetChanIDByCtx	@
	movw	r3, #:lower16:67968	@ tmp150,
	movt	r3, #:upper16:67968	@ tmp150,
	cmn	r0, #1	@ D.38902,
	str	r0, [r4, r3]	@ D.38902, <variable>.ChanID
	movne	r0, r6	@ D.38907, tmp148
	ldmnefd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	mov	r0, r6	@, tmp148
	movw	r1, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.38907,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	DIVX3DEC_Init, .-DIVX3DEC_Init
	.align	2
	.global	Divx3_GetPictureHeader
	.type	Divx3_GetPictureHeader, %function
Divx3_GetPictureHeader:
	.fnstart
.LFB1535:
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
	mov	r4, r1	@ pPictureHeader, pPictureHeader
	mov	r1, #2	@,
	mov	r6, r2	@ PrevSwitchRounding, PrevSwitchRounding
	mov	r5, r0	@ pBs, pBs
	bl	BsGet	@
	cmp	r0, #1	@ D.38835,
	str	r0, [r4, #0]	@ D.38835, <variable>.prediction_type
	bls	.L68	@,
.L47:
	mov	r3, #0	@ D.38840,
.L59:
	mov	r0, r3	@, D.38840
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L68:
	mov	r0, r5	@, pBs
	mov	r1, #5	@,
	bl	BsGet	@
	ldr	r3, [r4, #0]	@ <variable>.prediction_type, <variable>.prediction_type
	cmp	r3, #0	@ <variable>.prediction_type,
	str	r0, [r4, #4]	@, <variable>.quantizer
	beq	.L69	@,
	cmp	r6, #0	@ PrevSwitchRounding,
	mov	r1, #1	@,
	streq	r6, [r4, #8]	@ PrevSwitchRounding, <variable>.rounding_type
	mov	r0, r5	@, pBs
	ldrne	r3, [r4, #8]	@ <variable>.rounding_type, <variable>.rounding_type
	str	r6, [r4, #20]	@ PrevSwitchRounding, <variable>.switch_rounding
	rsbne	r3, r3, #1	@ tmp164, <variable>.rounding_type,
	strne	r3, [r4, #8]	@ tmp164, <variable>.rounding_type
	bl	BsGet	@
	mov	r1, #2	@,
	str	r0, [r4, #16]	@, <variable>.has_skips
	mov	r0, r5	@, pBs
	bl	BsShow	@
	str	r0, [r4, #36]	@ D.38873, <variable>.alternative_P_AC_DCT
	cmp	r0, #3	@ D.38873,
	ldrls	pc, [pc, r0, asl #2]	@ D.38873
	b	.L62	@
.L66:
	.word	.L63
	.word	.L63
	.word	.L65
	.word	.L65
.L65:
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsSkip	@
.L62:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r4, #40]	@, <variable>.alternative_P_DC_DCT
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r3, #1	@ D.38840,
	str	r0, [r4, #44]	@, <variable>.alternative_MV
	mov	r0, r3	@, D.38840
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L69:
	mov	r0, #1	@ tmp154,
	mov	r1, #5	@,
	str	r0, [r4, #8]	@ tmp154, <variable>.rounding_type
	mov	r0, r5	@, pBs
	bl	BsGet	@
	sub	r3, r0, #23	@ tmp155, D.38845,
	str	r0, [r4, #12]	@ D.38845, <variable>.vol_mode
	cmp	r0, #26	@ D.38845,
	cmpne	r3, #1	@, tmp155,
	bhi	.L47	@,
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsShow	@
	str	r0, [r4, #24]	@ D.38854, <variable>.alternative_I_AC_chrom_DCT
	cmp	r0, #3	@ D.38854,
	ldrls	pc, [pc, r0, asl #2]	@ D.38854
	b	.L49	@
.L53:
	.word	.L50
	.word	.L50
	.word	.L52
	.word	.L52
.L63:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsSkip	@
	b	.L62	@
.L52:
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsSkip	@
.L49:
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsShow	@
	str	r0, [r4, #28]	@ D.38858, <variable>.alternative_I_AC_lum_DCT
	cmp	r0, #3	@ D.38858,
	ldrls	pc, [pc, r0, asl #2]	@ D.38858
	b	.L54	@
.L58:
	.word	.L55
	.word	.L55
	.word	.L57
	.word	.L57
.L57:
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsSkip	@
.L54:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	mov	r3, #1	@ D.38840,
	str	r0, [r4, #32]	@, <variable>.alternative_I_DC_DCT
	b	.L59	@
.L55:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsSkip	@
	b	.L54	@
.L50:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsSkip	@
	b	.L49	@
	.fnend
	.size	Divx3_GetPictureHeader, .-Divx3_GetPictureHeader
	.align	2
	.global	Divx3_SetImgFormat
	.type	Divx3_SetImgFormat, %function
Divx3_SetImgFormat:
	.fnstart
.LFB1530:
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
	movw	r1, #:lower16:67968	@ tmp142,
	movt	r1, #:upper16:67968	@ tmp142,
	mov	r5, r0	@ pCtx, pCtx
	movw	r3, #33764	@ tmp144,
	ldr	r0, [r0, r1]	@, <variable>.ChanID
	ldr	r1, [r5, r3]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pImg,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	movw	r1, #33552	@ tmp146,
	ldr	lr, [r5, r1]	@ <variable>.CodecInfo.PictureHeader.prediction_type, <variable>.CodecInfo.PictureHeader.prediction_type
	mov	r1, #0	@ tmp150,
	str	r1, [r4, #148]	@ tmp150, <variable>.is_fld_save
	and	r2, lr, #3	@ D.38687, <variable>.CodecInfo.PictureHeader.prediction_type,
	movw	lr, #33600	@ tmp151,
	orr	ip, r2, #7168	@ tmp148, D.38687,
	str	r2, [r4, #156]	@ D.38687, <variable>.bottom_fld_type
	str	r2, [r4, #152]	@ D.38687, <variable>.top_fld_type
	orr	r3, ip, #32	@ tmp148, tmp148,
	str	r3, [r4, #160]	@ tmp148, <variable>.format
	movw	r3, #33604	@ tmp154,
	ldr	ip, [r5, lr]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	mov	r2, ip, asl #4	@ tmp153, <variable>.CodecInfo.PictureHeader.pic_width_in_mb,
	str	r2, [r4, #164]	@ tmp153, <variable>.image_width
	ldr	lr, [r5, r3]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_mb, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	mov	ip, lr, asl #4	@ tmp156, <variable>.CodecInfo.PictureHeader.pic_height_in_mb,
	str	ip, [r4, #168]	@ tmp156, <variable>.image_height
	bl	SetAspectRatio	@
	ldr	r2, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r0, [r2, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r0, #25	@ <variable>.eCapLevel,
	beq	.L74	@,
.L72:
	mov	r3, #8	@ tmp177,
	mov	r2, #1	@ tmp175,
	mov	ip, #5	@ tmp172,
	mov	r1, #0	@ tmp173,
	str	r3, [r4, #392]	@ tmp177, <variable>.ImageDnr.QP_U
	str	r3, [r4, #388]	@ tmp177, <variable>.ImageDnr.QP_Y
	strb	r2, [r4, #377]	@ tmp175, <variable>.ImageDnr.chroma_format_idc
	str	ip, [r4, #384]	@ tmp172, <variable>.ImageDnr.video_standard
	strb	r1, [r4, #372]	@ tmp173, <variable>.ImageDnr.pic_structure
	strb	r2, [r4, #379]	@ tmp175, <variable>.ImageDnr.use_pic_qp_en
	str	r3, [r4, #396]	@ tmp177, <variable>.ImageDnr.QP_V
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L74:
	ldr	r0, [r4, #168]	@ <variable>.image_height, <variable>.image_height
	ldr	r2, [r4, #192]	@ D.38697, <variable>.image_stride
	add	ip, r0, #15	@ tmp160, <variable>.image_height,
	ldr	r3, [r4, #104]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	ldr	r0, [r4, #32]	@ <variable>.luma_vir_addr, <variable>.luma_vir_addr
	mov	lr, r2, asl #4	@ tmp159, D.38697,
	mov	r1, ip, lsr #4	@ tmp162, tmp160,
	add	ip, r3, r2	@ tmp167, <variable>.luma_phy_addr, D.38697
	str	ip, [r4, #96]	@ tmp167, <variable>.btm_luma_phy_addr
	mul	r1, r1, lr	@ D.38703, tmp162, tmp159
	str	r3, [r4, #120]	@ <variable>.luma_phy_addr, <variable>.luma_2d_phy_addr
	str	r0, [r4, #48]	@ <variable>.luma_vir_addr, <variable>.luma_2d_vir_addr
	str	r3, [r4, #88]	@ <variable>.luma_phy_addr, <variable>.top_luma_phy_addr
	add	ip, r1, r3	@ tmp164, D.38703, <variable>.luma_phy_addr
	add	lr, r0, r1	@ tmp166, <variable>.luma_vir_addr, D.38703
	str	ip, [r4, #108]	@ tmp164, <variable>.chrom_phy_addr
	add	r0, ip, r2	@ tmp168, tmp164, D.38697
	str	lr, [r4, #36]	@ tmp166, <variable>.chrom_vir_addr
	str	r0, [r4, #100]	@ tmp168, <variable>.btm_chrom_phy_addr
	mov	r0, ip	@, tmp164
	str	ip, [r4, #92]	@ tmp164, <variable>.top_chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r4, #92]	@ <variable>.top_chrom_phy_addr, <variable>.top_chrom_phy_addr
	str	r3, [r4, #124]	@ <variable>.top_chrom_phy_addr, <variable>.chrom_2d_phy_addr
	str	r0, [r4, #52]	@, <variable>.chrom_2d_vir_addr
	b	.L72	@
	.fnend
	.size	Divx3_SetImgFormat, .-Divx3_SetImgFormat
	.align	2
	.global	DIVX3DEC_VDMPostProc
	.type	DIVX3DEC_VDMPostProc, %function
DIVX3DEC_VDMPostProc:
	.fnstart
.LFB1541:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #12
	sub	sp, sp, #12	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r4, r0	@ pCtx, pCtx
	mov	r5, r1	@ ErrRatio, ErrRatio
	mov	r6, r2	@ SwitchRounding, SwitchRounding
	mov	r0, #22	@,
	mov	r2, r1	@, ErrRatio
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mov	r0, #5	@,
	mov	r1, r4	@, pCtx
	bl	ReleasePacket	@
	movw	r3, #:lower16:67968	@ tmp147,
	movt	r3, #:upper16:67968	@ tmp147,
	movw	r2, #33764	@ tmp149,
	ldr	r1, [r4, r2]	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	cmp	r0, #0	@ pCurImg
	beq	.L76	@,
	movw	ip, #33552	@ tmp151,
	ldr	r1, [r4, ip]	@ <variable>.CodecInfo.PictureHeader.prediction_type, <variable>.CodecInfo.PictureHeader.prediction_type
	cmp	r1, #0	@ <variable>.CodecInfo.PictureHeader.prediction_type,
	andeq	r6, r6, #1	@ tmp154, SwitchRounding,
	movweq	r1, #33648	@ tmp153,
	streq	r6, [r4, r1]	@ tmp154, <variable>.CodecInfo.PrevSwitchRounding
	cmp	r5, #0	@ ErrRatio,
	movlt	r5, #0	@ iftmp.465,
	blt	.L79	@,
	cmp	r5, #100	@ ErrRatio,
	movge	r5, #100	@ iftmp.465,
.L79:
	str	r5, [r0, #200]	@ iftmp.465, <variable>.error_level
	movw	r1, #:lower16:.LC11	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC11	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	Divx3_SetImgFormat	@
	ldrb	r0, [r4, #179]	@ zero_extendqisi2	@ <variable>.CodecInfo.UsedDecMode, <variable>.CodecInfo.UsedDecMode
	cmp	r0, #2	@ <variable>.CodecInfo.UsedDecMode,
	beq	.L82	@,
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	lr, [r3, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	lr, #1	@ <variable>.s32DecOrderOutput,
	beq	.L82	@,
	movw	ip, #33676	@ tmp161,
	ldr	r2, [r4, ip]	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r2, #0	@ <variable>.CodecInfo.RefNum,
	movwne	r2, #33760	@ tmp163,
	mvneq	r1, #0	@ prephitmp.729,
	ldrne	r1, [r4, r2]	@ prephitmp.729,
.L90:
	cmn	r1, #1	@ prephitmp.729,
	movw	lr, #33768	@ tmp166,
	str	r1, [r4, lr]	@ prephitmp.729, <variable>.CodecInfo.ToQueFsID
	beq	.L85	@,
	movw	r5, #:lower16:67968	@ tmp167,
	movt	r5, #:upper16:67968	@ tmp167,
	movw	r6, #33768	@ tmp169,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	ldr	r8, [r4, r6]	@ D.39295, <variable>.CodecInfo.ToQueFsID
	mov	r1, r8	@, D.39295
	mov	r7, r0	@ pToQueImg,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetRef	@
	mov	r2, r8	@, D.39295
	movw	r1, #:lower16:.LC12	@,
	movt	r1, #:upper16:.LC12	@,
	mov	r3, r0	@ D.39300,
	mov	r0, #12	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.ToQueFsID
	mov	r2, #1	@,
	bl	FSP_SetDisplay	@
	add	r3, r4, #33792	@, pCtx,
	ldr	r0, [r4, r5]	@ <variable>.ChanID, <variable>.ChanID
	mov	r1, #5	@,
	add	r3, r3, #16	@,,
	mov	r2, r4	@, pCtx
	str	r7, [sp, #0]	@ pToQueImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	bne	.L91	@,
.L85:
	movw	lr, #33552	@ tmp189,
	movw	ip, #33672	@ tmp185,
	ldr	r0, [r4, lr]	@ <variable>.CodecInfo.PictureHeader.prediction_type, <variable>.CodecInfo.PictureHeader.prediction_type
	ldr	r2, [r4, ip]	@ <variable>.CodecInfo.FrmCnt, <variable>.CodecInfo.FrmCnt
	cmp	r0, #1	@ <variable>.CodecInfo.PictureHeader.prediction_type,
	add	r1, r2, #1	@ tmp188, <variable>.CodecInfo.FrmCnt,
	str	r1, [r4, ip]	@ tmp188, <variable>.CodecInfo.FrmCnt
	beq	.L92	@,
.L87:
	movw	r5, #33760	@ tmp195,
	movw	r7, #33764	@ tmp196,
	ldr	r2, [r4, r5]	@ prephitmp.742, <variable>.CodecInfo.FwdFsID
	movw	lr, #33676	@ tmp193,
	ldr	ip, [r4, r7]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
	mov	r0, #1	@ tmp194,
	str	r0, [r4, lr]	@ tmp194, <variable>.CodecInfo.RefNum
	cmp	r2, ip	@ prephitmp.742, <variable>.CodecInfo.CurFsID
	beq	.L88	@,
	movw	r6, #:lower16:67968	@ tmp199,
	movt	r6, #:upper16:67968	@ tmp199,
	mov	r0, #13	@,
	movw	r1, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	mov	r2, #0	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r5]	@, <variable>.CodecInfo.FwdFsID
	bl	FSP_SetRef	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r5]	@, <variable>.CodecInfo.FwdFsID
	bl	FSP_RemovePmv	@
	ldr	r2, [r4, r7]	@ prephitmp.742, <variable>.CodecInfo.CurFsID
.L88:
	movw	ip, #:lower16:67968	@ tmp209,
	movt	ip, #:upper16:67968	@ tmp209,
	movw	r0, #33760	@ tmp208,
	mov	r1, r2	@, prephitmp.742
	str	r2, [r4, r0]	@ prephitmp.742, <variable>.CodecInfo.FwdFsID
	mov	r2, #1	@,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	movw	r3, #33764	@ tmp212,
	ldr	r2, [r4, r3]	@, <variable>.CodecInfo.CurFsID
	mov	r0, #13	@,
	movw	r1, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.39267,
.L86:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L82:
	movw	r0, #33764	@ tmp165,
	ldr	r1, [r4, r0]	@ prephitmp.729,
	b	.L90	@
.L92:
	movw	r1, #33676	@ tmp191,
	ldr	r3, [r4, r1]	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r3, #0	@ <variable>.CodecInfo.RefNum,
	bne	.L87	@,
.L76:
	mov	r0, #0	@ D.39267,
	b	.L86	@
.L91:
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #0	@,
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.ToQueFsID
	bl	FSP_SetDisplay	@
	mov	r0, #0	@ D.39267,
	b	.L86	@
	.fnend
	.size	DIVX3DEC_VDMPostProc, .-DIVX3DEC_VDMPostProc
	.align	2
	.global	DIVX3DEC_GetRemainImg
	.type	DIVX3DEC_GetRemainImg, %function
DIVX3DEC_GetRemainImg:
	.fnstart
.LFB1540:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #12
	sub	sp, sp, #12	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r4, r0	@ pCtx, pCtx
	ldr	r0, [r0, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [r0, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r3, #1	@ <variable>.s32DecOrderOutput,
	beq	.L105	@,
	movw	r6, #:lower16:67968	@ tmp142,
	movt	r6, #:upper16:67968	@ tmp142,
	movw	r7, #33764	@ tmp144,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_GetFsImagePtr	@
	subs	r8, r0, #0	@ pImg,
	beq	.L105	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	beq	.L103	@,
.L105:
	add	r5, r4, #33792	@ tmp178, pCtx,
	add	r5, r5, #16	@ tmp178, tmp178,
.L94:
	mov	r0, r5	@, tmp178
	bl	GetVoLastImageID	@
.L96:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L103:
	mov	r0, r4	@, pCtx
	add	r5, r4, #33792	@ tmp178, pCtx,
	bl	Divx3_SetImgFormat	@
	add	r5, r5, #16	@ tmp178, tmp178,
	mov	r1, #1	@ tmp150,
	str	r1, [r8, #244]	@ tmp150, <variable>.last_frame
	mov	r2, r1	@, tmp150
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_SetDisplay	@
	ldr	r0, [r4, r6]	@ <variable>.ChanID, <variable>.ChanID
	mov	r1, #5	@,
	mov	r2, r4	@, pCtx
	mov	r3, r5	@, tmp178
	str	r8, [sp, #0]	@ pImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	beq	.L95	@,
	mov	r2, #0	@,
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r7, r2	@ tmp166,
	bl	FSP_SetDisplay	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r8, #212]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r7, [r8, #212]	@ tmp166, <variable>.p_usrdat
	ldr	r1, [r8, #216]	@, <variable>.p_usrdat
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r7, [r8, #216]	@ tmp166, <variable>.p_usrdat
	b	.L94	@
.L95:
	ldr	r2, [r8, #200]	@ <variable>.error_level, <variable>.error_level
	cmp	r2, #100	@ <variable>.error_level,
	bhi	.L94	@,
	ldr	ip, [r8, #164]	@ <variable>.image_width, <variable>.image_width
	cmp	ip, #31	@ <variable>.image_width,
	bls	.L94	@,
	ldr	lr, [r8, #168]	@ <variable>.image_height, <variable>.image_height
	cmp	lr, #31	@ <variable>.image_height,
	movhi	r0, #0	@ ret,
	bhi	.L96	@,
	b	.L94	@
	.fnend
	.size	DIVX3DEC_GetRemainImg, .-DIVX3DEC_GetRemainImg
	.align	2
	.global	Divx3_ArrangeVHBMem
	.type	Divx3_ArrangeVHBMem, %function
Divx3_ArrangeVHBMem:
	.fnstart
.LFB1529:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #52
	sub	sp, sp, #52	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r4, r1	@ pCtx, pCtx
	ldr	r1, [r2, #48]	@ D.38582, <variable>.pic_width_in_mb
	cmp	r1, #1	@ D.38582,
	ldrls	r3, [r2, #52]	@ prephitmp.807, <variable>.pic_height_in_mb
	bls	.L108	@,
	ldr	r3, [r2, #52]	@ prephitmp.807, <variable>.pic_height_in_mb
	cmp	r3, #1	@ prephitmp.807,
	bls	.L108	@,
	ldr	r1, [r4, #0]	@ D.38589, <variable>.pstExtraData
	ldr	r3, [r1, #788]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r3, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L111	@,
	ldr	r0, [r1, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r0, #25	@ <variable>.eCapLevel,
	beq	.L133	@,
.L112:
	ldr	r6, [r2, #60]	@ PicHeight, <variable>.pic_height_in_pix
	mov	r8, #5	@ prephitmp.809,
	ldr	r5, [r2, #56]	@ PicWidth, <variable>.pic_width_in_pix
	mov	sl, #2	@ PmvNum,
	mov	r9, #4	@ DecFsNum,
.L119:
	sub	r7, fp, #84	@ tmp200,,
	mov	r1, #36	@,
	mov	r0, r7	@, tmp200
	bl	__memzero	@
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r3, #0	@ tmp176,
	ldr	r2, [ip, #20]	@ <variable>.s32DnrDispOutEnable, <variable>.s32DnrDispOutEnable
	str	r5, [fp, #-72]	@ PicWidth, FspInstCfg.s32DecFsWidth
	str	r6, [fp, #-68]	@ PicHeight, FspInstCfg.s32DecFsHeight
	movw	r6, #:lower16:67968	@ tmp187,
	strb	r3, [fp, #-82]	@ tmp176, FspInstCfg.s32RprEnable
	movt	r6, #:upper16:67968	@ tmp187,
	strb	r2, [fp, #-84]	@ <variable>.s32DnrDispOutEnable, FspInstCfg.s32DispLoopEnable
	ldr	r0, [ip, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	strb	r8, [fp, #-77]	@ prephitmp.809, FspInstCfg.s32ExpectedDispFsNum
	cmp	r0, #24	@ <variable>.eCapLevel,
	uxtbne	r3, r9	@ iftmp.442, DecFsNum
	strb	r3, [fp, #-79]	@ iftmp.442, FspInstCfg.s32ExpectedDecFsNum
	ldr	r1, [ip, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r1, #24	@ <variable>.eCapLevel,
	mov	r1, r7	@, tmp200
	uxtbne	sl, sl	@ iftmp.443, PmvNum
	mov	r7, #0	@ tmp185,
	moveq	sl, #1	@ iftmp.443,
	strb	sl, [fp, #-76]	@ iftmp.443, FspInstCfg.s32ExpectedPmvNum
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	strb	r7, [fp, #-80]	@ tmp185, FspInstCfg.s32UserDec
	bl	FSP_ConfigInstance	@
	subs	r5, r0, #0	@ D.38638,
	movne	r0, r7	@ D.38586, tmp185
	beq	.L134	@,
.L110:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L111:
	ldr	r5, [r1, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r5, #25	@ <variable>.eCapLevel,
	bne	.L112	@,
	ldr	r5, [r2, #56]	@ temp.831, <variable>.pic_width_in_pix
	ldr	ip, [r1, #744]	@ D.38597, <variable>.stChanOption.s32MaxWidth
	cmp	r5, ip	@ temp.831, D.38597
	bhi	.L135	@,
	ldr	r3, [r2, #60]	@ prephitmp.813, <variable>.pic_height_in_pix
	ldr	lr, [r1, #748]	@ prephitmp.811, <variable>.stChanOption.s32MaxHeight
	cmp	r3, lr	@ prephitmp.813, prephitmp.811
	bhi	.L122	@,
	ldr	r6, [r1, #776]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	r9, [r1, #768]	@ temp.834, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	r6, #0	@ <variable>.stChanOption.s32SupportBFrame,
	moveq	sl, #1	@ PmvNum,
	beq	.L125	@,
	add	sl, r9, #1	@ PmvNum.836, temp.834,
	cmp	sl, #17	@ PmvNum.836,
	movge	sl, #17	@ PmvNum,
.L125:
	ldrb	r8, [r1, #796]	@ zero_extendqisi2	@ prephitmp.809, <variable>.stChanOption.s32DisplayFrameNum
	add	r9, r9, #2	@ DecFsNum, temp.834,
	mov	r6, r3	@ PicHeight, prephitmp.813
	b	.L119	@
.L108:
	mov	r2, r1	@, D.38582
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC15	@,
	movt	r1, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.38586,
	b	.L110	@
.L134:
	ldr	lr, [r4, #0]	@ temp.845, <variable>.pstExtraData
	sub	r3, fp, #48	@,,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r2, [lr, #28]	@, <variable>.s32SyntaxMemSize
	ldr	r1, [lr, #24]	@, <variable>.s32SyntaxMemAddr
	bl	FSP_PartitionFsMemory	@
	cmp	r0, #0	@,
	moveq	r0, #1	@ tmp196,
	streqb	r0, [r4, #178]	@ tmp196, <variable>.CodecInfo.Imgbuf_allocated
	beq	.L110	@,
	mov	r0, r5	@, D.38638
	movw	r1, #:lower16:.LC17	@,
	movt	r1, #:upper16:.LC17	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.38586, D.38638
	b	.L110	@
.L133:
	ldr	r0, [r2, #56]	@ D.38596, <variable>.pic_width_in_pix
	ldr	r5, [r1, #744]	@ PicWidth, <variable>.stChanOption.s32MaxWidth
	cmp	r0, r5	@ D.38596, PicWidth
	bhi	.L136	@,
	ldr	r3, [r2, #60]	@ prephitmp.817, <variable>.pic_height_in_pix
	ldr	r6, [r1, #748]	@ PicHeight, <variable>.stChanOption.s32MaxHeight
	cmp	r3, r6	@ prephitmp.817, PicHeight
	bhi	.L114	@,
	ldrb	r0, [r4, #178]	@ zero_extendqisi2	@ <variable>.CodecInfo.Imgbuf_allocated, <variable>.CodecInfo.Imgbuf_allocated
	cmp	r0, #1	@ <variable>.CodecInfo.Imgbuf_allocated,
	beq	.L110	@,
	ldr	r2, [r1, #776]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	r9, [r1, #768]	@ D.38607, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	r2, #0	@ <variable>.stChanOption.s32SupportBFrame,
	moveq	sl, #1	@ PmvNum,
	beq	.L118	@,
	add	sl, r9, #1	@ PmvNum.828, D.38607,
	cmp	sl, #17	@ PmvNum.828,
	movge	sl, #17	@ PmvNum,
.L118:
	add	r9, r9, #2	@ DecFsNum, D.38607,
	ldrb	r8, [r1, #796]	@ zero_extendqisi2	@ prephitmp.809, <variable>.stChanOption.s32DisplayFrameNum
	b	.L119	@
.L135:
	ldr	lr, [r1, #748]	@ prephitmp.811, <variable>.stChanOption.s32MaxHeight
	ldr	r3, [r2, #60]	@ prephitmp.813, <variable>.pic_height_in_pix
.L122:
	mov	r2, r5	@, temp.831
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	stmia	sp, {ip, lr}	@ phole stm
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.38586,
	b	.L110	@
.L136:
	ldr	r6, [r1, #748]	@ PicHeight, <variable>.stChanOption.s32MaxHeight
	ldr	r3, [r2, #60]	@ prephitmp.817, <variable>.pic_height_in_pix
.L114:
	mov	r2, r0	@, D.38596
	movw	r1, #:lower16:.LC16	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC16	@,
	stmia	sp, {r5, r6}	@ phole stm
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.38586,
	b	.L110	@
	.fnend
	.size	Divx3_ArrangeVHBMem, .-Divx3_ArrangeVHBMem
	.align	2
	.global	Divx3_GetImageBuffer
	.type	Divx3_GetImageBuffer, %function
Divx3_GetImageBuffer:
	.fnstart
.LFB1528:
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
	movw	r5, #:lower16:67968	@ tmp142,
	movt	r5, #:upper16:67968	@ tmp142,
	mov	r4, r0	@ pCtx, pCtx
	mov	r1, #1	@,
	movw	r6, #33764	@ tmp144,
	ldr	r0, [r0, r5]	@, <variable>.ChanID
	bl	FSP_NewLogicFs	@
	cmp	r0, #0	@ D.38534,
	mov	r1, r0	@ D.38534,
	str	r0, [r4, r6]	@ D.38534, <variable>.CodecInfo.CurFsID
	blt	.L144	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	subs	r5, r0, #0	@ pLf,
	beq	.L145	@,
	ldr	r2, [r4, r6]	@, <variable>.CodecInfo.CurFsID
	mov	r0, #18	@,
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #520]	@ D.38548, <variable>.pstDecodeFs
	cmp	r2, #0	@ D.38548,
	beq	.L141	@,
	ldr	r3, [r5, #524]	@ D.38551, <variable>.pstDispOutFs
	cmp	r3, #0	@ D.38551,
	beq	.L141	@,
	ldr	r0, [r5, #528]	@ D.38554, <variable>.pstTfOutFs
	cmp	r0, #0	@ D.38554,
	beq	.L141	@,
	ldr	ip, [r0, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r1, #:lower16:.LC21	@,
	ldr	r2, [r2, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movt	r1, #:upper16:.LC21	@,
	ldr	r3, [r3, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	mov	r0, #18	@,
	str	ip, [sp, #0]	@ <variable>.PhyAddr,
	bl	dprint_vfmw	@
.L141:
	movw	r0, #33764	@ tmp171,
	mov	r5, #1	@ D.38542,
	ldr	r2, [r4, r0]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
	cmp	r2, #2	@ <variable>.CodecInfo.CurFsID,
	streq	r2, [r4, r0]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
.L139:
	mov	r0, r5	@, D.38542
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L144:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC18	@,
	movt	r1, #:upper16:.LC18	@,
	movw	r6, #33760	@ tmp152,
	bl	dprint_vfmw	@
	add	r1, r4, #33792	@, pCtx,
	add	r1, r1, #16	@,,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_ClearNotInVoQueue	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.FwdFsID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r5, #0	@ tmp155,
	str	r5, [r4, r6]	@ tmp155, <variable>.CodecInfo.FwdFsID
	bl	FSP_GetNullLogicFs	@
	movw	r3, #33676	@ tmp159,
	str	r5, [r4, r3]	@ tmp155, <variable>.CodecInfo.RefNum
	str	r0, [r4, r6]	@, <variable>.CodecInfo.FwdFsID
	b	.L139	@
.L145:
	movw	r1, #:lower16:.LC19	@,
	mov	r2, #119	@,
	movt	r1, #:upper16:.LC19	@,
	bl	dprint_vfmw	@
	b	.L139	@
	.fnend
	.size	Divx3_GetImageBuffer, .-Divx3_GetImageBuffer
	.align	2
	.global	DIVX3DEC_Decode
	.type	DIVX3DEC_Decode, %function
DIVX3DEC_Decode:
	.fnstart
.LFB1538:
	@ args = 0, pretend = 0, frame = 176
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #196
	sub	sp, sp, #196	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	sub	r6, fp, #188	@ tmp480,,
	mov	r5, r0	@ pCtx, pCtx
	mov	r4, r1	@ pPacket, pPacket
	mov	r2, #96	@,
	mov	r0, r6	@, tmp480
	mov	r1, #0	@,
	add	sl, r5, #33536	@ tmp481, pCtx,
	bl	memset	@
	cmp	r4, #0	@ pPacket,
	add	r7, sl, #16	@ pPictureHeader, tmp481,
	beq	.L198	@,
	ldr	r9, [r4, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	r9, #0	@ <variable>.PhyAddr,
	beq	.L199	@,
	ldr	r9, [r4, #0]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	r9, #0	@ <variable>.VirAddr,
	beq	.L200	@,
	ldr	r0, [r4, #16]	@ <variable>.LenInByte, <variable>.LenInByte
	cmp	r0, #9	@ <variable>.LenInByte,
	ble	.L201	@,
	add	r8, r5, #8	@ pDivx3DecParam, pCtx,
	mov	r1, #156	@,
	mov	r9, #0	@ tmp229,
	mov	r0, r8	@, pDivx3DecParam
	bl	__memzero	@
	str	r9, [r5, #244]	@ tmp229, <variable>.CodecInfo.BsOffset
	ldr	r0, [r4, #16]	@ <variable>.LenInByte, <variable>.LenInByte
	movw	r1, #33656	@ tmp230,
	str	r0, [r5, r1]	@ <variable>.LenInByte, <variable>.CodecInfo.PacketTail
	ldr	r3, [r4, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r3, [r5, #248]	@ <variable>.PhyAddr, <variable>.CodecInfo.BsPhyAddr
	ldr	r2, [r4, #0]	@ <variable>.VirAddr, <variable>.VirAddr
	str	r2, [r5, #168]	@ <variable>.VirAddr, <variable>.CodecInfo.BsVirAddr
	ldr	r2, [r4, #16]	@ temp.940, <variable>.LenInByte
	str	r2, [r5, #252]	@ temp.940, <variable>.CodecInfo.BsLength
	ldrb	ip, [r4, #5]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	str	ip, [r5, #256]	@ <variable>.IsLastSeg, <variable>.CodecInfo.IsLastSeg
	ldrb	r1, [r4, #5]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r1, #1	@ <variable>.IsLastSeg,
	beq	.L152	@,
	ldr	r1, [r4, #92]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r1, [r5, #260]	@ <variable>.PhyAddr, <variable>.CodecInfo.BsPhyAddr1
	ldr	r0, [r4, #80]	@ <variable>.VirAddr, <variable>.VirAddr
	str	r0, [r5, #172]	@ <variable>.VirAddr, <variable>.CodecInfo.BsVirAddr1
	ldr	r3, [r4, #96]	@ <variable>.LenInByte, <variable>.LenInByte
	str	r3, [r5, #264]	@ <variable>.LenInByte, <variable>.CodecInfo.BsLength1
	ldrb	ip, [r4, #85]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	str	ip, [r5, #268]	@ <variable>.IsLastSeg, <variable>.CodecInfo.IsLastSeg1
	ldrb	lr, [r4, #85]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	lr, #1	@ <variable>.IsLastSeg,
	bne	.L202	@,
	sub	lr, r2, #10	@ tmp251, temp.940,
	movw	ip, #:lower16:3145717	@ tmp252,
	movt	ip, #:upper16:3145717	@ tmp252,
	cmp	lr, ip	@ tmp251, tmp252
	bhi	.L154	@,
.L203:
	ldr	r1, [r5, #168]	@ D.39003, <variable>.CodecInfo.BsVirAddr
	cmp	r1, #0	@ D.39003,
	beq	.L154	@,
	add	sl, sl, #240	@ pBs, tmp481,
	mov	r0, sl	@, pBs
	bl	BsInit	@
	mov	r0, sl	@, pBs
	bl	BsResidBits	@
	mov	r1, #32	@,
	str	r0, [fp, #-192]	@, %sfp
	mov	r0, sl	@, pBs
	bl	BsGet	@
	mov	r2, r0, asl #24	@ tmp255, D.39007,
	and	ip, r0, #65280	@ tmp257, D.39007,
	orr	r3, r2, r0, lsr #24	@, tmp256, tmp255, D.39007,
	and	r1, r0, #16711680	@ tmp260, D.39007,
	orr	r9, r3, ip, asl #8	@, tmp259, tmp256, tmp257,
	mov	r0, sl	@, pBs
	orr	r9, r9, r1, lsr #8	@, width, tmp259, tmp260,
	mov	r1, #32	@,
	add	r2, r9, #15	@ tmp262, width,
	str	r9, [fp, #-132]	@ width, TmpPictureHeader.pic_width_in_pix
	mov	ip, r2, lsr #4	@ tmp263, tmp262,
	str	ip, [fp, #-140]	@ tmp263, TmpPictureHeader.pic_width_in_mb
	bl	BsGet	@
	mov	r3, r0, asl #24	@ tmp265, D.39018,
	and	r2, r0, #65280	@ tmp267, D.39018,
	orr	ip, r3, r0, lsr #24	@, tmp266, tmp265, D.39018,
	and	r1, r0, #16711680	@ tmp270, D.39018,
	orr	r3, ip, r2, asl #8	@, tmp269, tmp266, tmp267,
	orr	r3, r3, r1, lsr #8	@, height, tmp269, tmp270,
	str	r3, [fp, #-128]	@ height, TmpPictureHeader.pic_height_in_pix
	add	r0, r3, #15	@ tmp272, height,
	cmp	r9, #31	@ width,
	cmphi	r3, #31	@, height,
	mov	r2, r0, lsr #4	@ tmp273, tmp272,
	str	r2, [fp, #-136]	@ tmp273, TmpPictureHeader.pic_height_in_mb
	bls	.L155	@,
	cmp	r9, #1920	@ width,
	cmpls	r3, #1088	@, height,
	movls	ip, #0	@, tmp287
	movhi	ip, #1	@, tmp287
	bls	.L156	@,
.L155:
	mov	r2, r9	@, width
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC26	@,
	movt	r1, #:upper16:.LC26	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.38956,
	b	.L148	@
.L201:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.38956,
.L148:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L202:
	movw	r6, #:lower16:67968	@ tmp241,
	movt	r6, #:upper16:67968	@ tmp241,
	ldr	r1, [r4, #20]	@, <variable>.StreamID
	ldr	r0, [r5, r6]	@, <variable>.ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r0, [r5, r6]	@, <variable>.ChanID
	ldr	r1, [r4, #100]	@, <variable>.StreamID
	bl	SM_ReleaseStreamSeg	@
	mov	r0, r9	@ D.38956, tmp229
	b	.L148	@
.L154:
	mov	r0, #0	@ D.38956,
	b	.L148	@
.L199:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC23	@,
	bl	dprint_vfmw	@
	mov	r0, r9	@ D.38956, <variable>.PhyAddr
	b	.L148	@
.L152:
	sub	lr, r2, #10	@ tmp251, temp.940,
	movw	ip, #:lower16:3145717	@ tmp252,
	movt	ip, #:upper16:3145717	@ tmp252,
	str	r9, [r5, #268]	@ tmp229, <variable>.CodecInfo.IsLastSeg1
	cmp	lr, ip	@ tmp251, tmp252
	str	r9, [r5, #260]	@ tmp229, <variable>.CodecInfo.BsPhyAddr1
	str	r9, [r5, #172]	@ tmp229, <variable>.CodecInfo.BsVirAddr1
	str	r9, [r5, #264]	@ tmp229, <variable>.CodecInfo.BsLength1
	bls	.L203	@,
	b	.L154	@
.L156:
	movw	r0, #33560	@ tmp289,
	movw	r1, #33648	@ tmp292,
	ldr	lr, [r5, r0]	@ <variable>.CodecInfo.PictureHeader.rounding_type, <variable>.CodecInfo.PictureHeader.rounding_type
	mov	r0, sl	@, pBs
	ldr	r2, [r5, r1]	@, <variable>.CodecInfo.PrevSwitchRounding
	mov	r1, r6	@, tmp480
	str	ip, [fp, #-216]	@,
	str	lr, [fp, #-180]	@ <variable>.CodecInfo.PictureHeader.rounding_type, TmpPictureHeader.rounding_type
	bl	Divx3_GetPictureHeader	@
	cmp	r0, #1	@,
	bne	.L204	@,
	movw	ip, #33676	@ tmp295,
	ldr	r9, [r5, ip]	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r9, #0	@ <variable>.CodecInfo.RefNum,
	bne	.L158	@,
	ldr	r2, [fp, #-188]	@ TmpPictureHeader.prediction_type, TmpPictureHeader.prediction_type
	cmp	r2, #0	@ TmpPictureHeader.prediction_type,
	bne	.L205	@,
.L158:
	ldr	r2, [fp, #-136]	@ TmpPictureHeader.pic_height_in_mb, TmpPictureHeader.pic_height_in_mb
	ldr	r1, [fp, #-140]	@ TmpPictureHeader.pic_width_in_mb, TmpPictureHeader.pic_width_in_mb
	ldrb	r0, [r5, #178]	@ zero_extendqisi2	@ <variable>.CodecInfo.Imgbuf_allocated, <variable>.CodecInfo.Imgbuf_allocated
	mul	lr, r1, r2	@ tmp301, TmpPictureHeader.pic_width_in_mb, TmpPictureHeader.pic_height_in_mb
	cmp	r0, #0	@ <variable>.CodecInfo.Imgbuf_allocated,
	str	lr, [fp, #-124]	@ tmp301, TmpPictureHeader.total_mbs
	beq	.L159	@,
	movw	ip, #33600	@ tmp303,
	ldr	r3, [r5, ip]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	cmp	r1, r3	@ TmpPictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	beq	.L206	@,
.L159:
	movw	r9, #:lower16:g_event_report	@ tmp309,
	movt	r9, #:upper16:g_event_report	@ tmp309,
	ldr	ip, [r9, #0]	@ g_event_report.452, g_event_report
	cmp	ip, #0	@ g_event_report.452,
	beq	.L161	@,
	movw	lr, #33600	@ tmp310,
	movw	r0, #33604	@ tmp312,
	ldrh	r9, [r5, lr]	@, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	movw	r3, #:lower16:67968	@ tmp316,
	movt	r3, #:upper16:67968	@ tmp316,
	strh	r9, [fp, #-52]	@ movhi	@, para
	ldrh	lr, [r5, r0]	@, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	strh	r1, [fp, #-48]	@ movhi	@ TmpPictureHeader.pic_width_in_mb, para
	mov	r1, #2	@,
	strh	r2, [fp, #-46]	@ movhi	@ TmpPictureHeader.pic_height_in_mb, para
	sub	r2, fp, #52	@,,
	strh	lr, [fp, #-50]	@ movhi	@, para
	ldr	r0, [r5, r3]	@, <variable>.ChanID
	mov	r3, #8	@,
	blx	ip	@ g_event_report.452
.L161:
	movw	r9, #:lower16:67968	@ tmp319,
	movt	r9, #:upper16:67968	@ tmp319,
	movw	r3, #33760	@ tmp321,
	mov	r2, #1	@,
	ldr	r1, [r5, r3]	@, <variable>.CodecInfo.FwdFsID
	add	ip, r5, #33792	@, pCtx,
	ldr	r0, [r5, r9]	@, <variable>.ChanID
	str	ip, [fp, #-204]	@, %sfp
	str	r3, [fp, #-216]	@,
	bl	FSP_ClearLogicFs	@
	ldr	r3, [fp, #-216]	@,
	mov	r0, #0	@,
	str	r0, [r5, r3]	@, <variable>.CodecInfo.FwdFsID
	ldr	r2, [fp, #-204]	@, %sfp
	ldr	r0, [r5, r9]	@, <variable>.ChanID
	add	lr, r2, #16	@,,
	str	r3, [fp, #-216]	@,
	str	lr, [fp, #-204]	@, %sfp
	bl	FSP_GetNullLogicFs	@
	movw	r1, #33676	@ tmp328,
	mov	ip, #0	@,
	str	ip, [r5, r1]	@, <variable>.CodecInfo.RefNum
	ldr	r2, [fp, #-216]	@,
	ldr	r1, [fp, #-204]	@, %sfp
	str	r0, [r5, r2]	@, <variable>.CodecInfo.FwdFsID
	ldr	r0, [r5, r9]	@, <variable>.ChanID
	bl	FSP_ClearNotInVoQueue	@
	ldr	r2, [fp, #-140]	@ prephitmp.904, TmpPictureHeader.pic_width_in_mb
	cmp	r2, #512	@ prephitmp.904,
	ldrhi	r3, [fp, #-136]	@ prephitmp.993, TmpPictureHeader.pic_height_in_mb
	bhi	.L163	@,
	ldr	r3, [fp, #-136]	@ prephitmp.993, TmpPictureHeader.pic_height_in_mb
	cmp	r3, #512	@ prephitmp.993,
	bhi	.L163	@,
	ldr	r1, [r5, #0]	@ D.39078, <variable>.pstExtraData
	ldr	lr, [r1, #788]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	lr, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L165	@,
	ldr	r1, [r1, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r1, #25	@ <variable>.eCapLevel,
	beq	.L207	@,
.L165:
	movw	r2, #:lower16:67968	@ tmp337,
	movt	r2, #:upper16:67968	@ tmp337,
	ldr	r0, [r5, r2]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	beq	.L167	@,
.L197:
	ldr	r2, [fp, #-140]	@ prephitmp.904, TmpPictureHeader.pic_width_in_mb
	ldr	r3, [fp, #-136]	@ prephitmp.993, TmpPictureHeader.pic_height_in_mb
.L166:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC30	@,
	movt	r1, #:upper16:.LC30	@,
	bl	dprint_vfmw	@
	mov	r0, #6	@,
	mov	r1, r5	@, pCtx
	mov	r2, r6	@, tmp480
	bl	Divx3_ArrangeVHBMem	@
	cmp	r0, #1	@,
	bne	.L208	@,
.L160:
	ldr	r3, [fp, #-188]	@ TmpPictureHeader.prediction_type, TmpPictureHeader.prediction_type
	mov	r1, r6	@, tmp480
	mov	r2, #96	@,
	mov	r0, r7	@, pPictureHeader
	cmp	r3, #0	@ TmpPictureHeader.prediction_type,
	movwne	r3, #33564	@ tmp343,
	moveq	r9, #23	@ lastpic_vol_mode,
	ldrne	r9, [r5, r3]	@ lastpic_vol_mode, <variable>.CodecInfo.PictureHeader.vol_mode
	bl	memcpy	@
	ldr	r6, [fp, #-188]	@ TmpPictureHeader.prediction_type, TmpPictureHeader.prediction_type
	mov	r0, r5	@, pCtx
	cmp	r6, #0	@ TmpPictureHeader.prediction_type,
	movwne	r6, #33564	@ tmp349,
	strne	r9, [r5, r6]	@ lastpic_vol_mode, <variable>.CodecInfo.PictureHeader.vol_mode
	bl	Divx3_DecodeDecide	@
	cmp	r0, #1	@ ret,
	mov	r6, r0	@ ret,
	beq	.L171	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC32	@,
	movt	r1, #:upper16:.LC32	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.38956,
	b	.L148	@
.L198:
	movw	r3, #33672	@ tmp221,
	mov	r0, #1	@,
	ldr	r2, [r5, r3]	@, <variable>.CodecInfo.FrmCnt
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.38956, pPacket
	b	.L148	@
.L200:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC24	@,
	movt	r1, #:upper16:.LC24	@,
	bl	dprint_vfmw	@
	mov	r0, r9	@ D.38956, <variable>.VirAddr
	b	.L148	@
.L204:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC27	@,
	movt	r1, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	ldr	r3, [fp, #-216]	@,
	mov	r0, r3	@ D.38956, tmp287
	b	.L148	@
.L163:
	mov	r0, #18	@,
	movw	r1, #:lower16:.LC29	@,
	movt	r1, #:upper16:.LC29	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.38956,
	b	.L148	@
.L208:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC31	@,
	movt	r1, #:upper16:.LC31	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.38956,
	b	.L148	@
.L206:
	movw	r0, #33604	@ tmp306,
	ldr	lr, [r5, r0]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_mb, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	cmp	r2, lr	@ TmpPictureHeader.pic_height_in_mb, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	bne	.L159	@,
	b	.L160	@
.L207:
	ldrb	r0, [r5, #178]	@ zero_extendqisi2	@ <variable>.CodecInfo.Imgbuf_allocated, <variable>.CodecInfo.Imgbuf_allocated
	cmp	r0, #0	@ <variable>.CodecInfo.Imgbuf_allocated,
	bne	.L166	@,
.L167:
	ldr	r0, [fp, #-204]	@, %sfp
	bl	ResetVoQueue	@
	b	.L197	@
.L171:
	mov	r0, r5	@, pCtx
	bl	Divx3_GetImageBuffer	@
	subs	r7, r0, #0	@ D.39101,
	beq	.L209	@,
	movw	r9, #:lower16:67968	@ tmp354,
	movt	r9, #:upper16:67968	@ tmp354,
	movw	r7, #33764	@,
	ldr	r1, [r5, r7]	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r5, r9]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pImg,
	beq	.L173	@,
	ldr	r3, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r0, #29	@,
	movw	r1, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC34	@,
	ldrd	r2, [r3, #56]	@ <variable>.pts, <variable>.pstExtraData,
	strd	r2, [r7, #8]	@ <variable>.pts, pImg,
	ldr	r3, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r2, [r3, #72]	@ <variable>.Usertag, <variable>.pstExtraData,
	strd	r2, [r7, #16]	@ <variable>.Usertag, pImg,
	ldr	r3, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r2, [r3, #88]	@ <variable>.DispTime, <variable>.pstExtraData,
	strd	r2, [r7, #24]	@ <variable>.DispTime, pImg,
	mvn	r2, #0	@ tmp373,
	ldr	lr, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [lr, #104]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	str	r3, [r7, #68]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	ldr	ip, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r6, [ip, #108]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	str	r6, [r7, #72]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	ldr	lr, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [lr, #112]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	str	r3, [r7, #76]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	mvn	r3, #0	@,
	ldr	ip, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r6, [ip, #128]	@ <variable>.GopNum, <variable>.GopNum
	str	r6, [r7, #80]	@ <variable>.GopNum, <variable>.GopNum
	ldr	lr, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	strd	r2, [lr, #56]	@ tmp373, <variable>.pstExtraData,
	ldrd	r2, [r7, #16]	@, pImg,
	strd	r2, [fp, #-204]	@,,
	ldrd	r2, [r7, #8]	@ <variable>.PTS, pImg,
	ldrd	r6, [fp, #-204]	@,,
	strd	r6, [sp]	@,
	movw	r7, #33764	@,
	bl	dprint_vfmw	@
	ldr	r1, [r5, r7]	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r5, r9]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	movw	r3, #33760	@ tmp383,
	ldr	r1, [r5, r3]	@, <variable>.CodecInfo.FwdFsID
	mov	r6, r0	@ pCur,
	ldr	r0, [r5, r9]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	cmp	r6, #0	@ pCur,
	cmpne	r0, #0	@, pFwd,
	beq	.L174	@,
	ldr	r3, [r6, #520]	@ D.39129, <variable>.pstDecodeFs
	cmp	r3, #0	@ D.39129,
	beq	.L174	@,
	ldr	r1, [r6, #528]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	cmp	r1, #0	@ <variable>.pstTfOutFs,
	beq	.L174	@,
	ldr	r2, [r6, #524]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	cmp	r2, #0	@ <variable>.pstDispOutFs,
	beq	.L174	@,
	ldr	r9, [r0, #520]	@ D.39136, <variable>.pstDecodeFs
	mov	r1, #0	@,
	mov	r2, #20	@,
	mov	r7, r1	@ tmp418,
	cmp	r9, #0	@ D.39136,
	sub	ip, fp, #92	@ tmp484,,
	ldrne	r9, [r9, #12]	@, <variable>.PhyAddr
	ldreq	r3, [r3, #12]	@, <variable>.PhyAddr
	str	ip, [fp, #-216]	@,
	strne	r9, [fp, #-204]	@, %sfp
	sub	r9, fp, #72	@ tmp486,,
	streq	r3, [fp, #-204]	@, %sfp
	mov	r0, r9	@, tmp486
	bl	memset	@
	ldr	r3, [fp, #-216]	@,
	mov	r1, r7	@, tmp418
	mov	r2, #20	@,
	mov	r0, r3	@, tmp484
	bl	memset	@
	ldr	r0, [fp, #-204]	@, %sfp
	ldr	r2, [r5, #156]	@, <variable>.Divx3DecParam.ColPmvPhyAddr
	movw	r1, #:lower16:.LC37	@,
	movt	r1, #:upper16:.LC37	@,
	str	r0, [r5, #132]	@, <variable>.Divx3DecParam.FwdRefPhyAddr
	mov	r0, #13	@,
	ldr	lr, [r6, #520]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	str	r2, [fp, #-212]	@, %sfp
	ldr	r2, [lr, #12]	@ D.39142, <variable>.PhyAddr
	str	r2, [r5, #136]	@ D.39142, <variable>.Divx3DecParam.CurPicPhyAddr
	ldr	ip, [r6, #532]	@, <variable>.PmvAddr
	str	ip, [fp, #-208]	@, %sfp
	str	ip, [r5, #152]	@, <variable>.Divx3DecParam.CurrPmvPhyAddr
	ldr	r3, [r6, #524]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	lr, [fp, #-204]	@, %sfp
	ldr	ip, [r3, #12]	@ D.39146, <variable>.PhyAddr
	ldr	r3, [fp, #-208]	@, %sfp
	str	lr, [sp, #0]	@,
	str	r3, [sp, #4]	@,
	mov	r3, ip	@, D.39146
	str	ip, [r5, #140]	@ D.39146, <variable>.Divx3DecParam.DispFramePhyAddr
	ldr	lr, [fp, #-212]	@, %sfp
	str	lr, [sp, #8]	@,
	bl	dprint_vfmw	@
	ldr	r1, [r6, #524]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	mov	r0, sl	@, pBs
	ldr	ip, [r1, #20]	@ <variable>.Stride, <variable>.Stride
	str	ip, [r5, #144]	@ <variable>.Stride, <variable>.Divx3DecParam.DDRStride
	bl	BsResidBits	@
	ldr	r2, [r4, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	bic	r3, r2, #15	@ tmp411, <variable>.PhyAddr,
	str	r3, [r5, #104]	@ tmp411, <variable>.Divx3DecParam.StreamBaseAddr
	ldr	r1, [r4, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	ldr	ip, [fp, #-192]	@, %sfp
	and	r2, r1, #15	@ tmp412, <variable>.PhyAddr,
	add	r3, ip, r2, asl #3	@, CurrPicBitOffset,, tmp412,
	rsb	ip, r0, r3	@ CurrPicBitOffset.978,, CurrPicBitOffset
	mov	r0, sl	@, pBs
	and	r1, ip, #127	@ tmp417, CurrPicBitOffset.978,
	str	r1, [r5, #116]	@ tmp417, <variable>.Divx3DecParam.StreamBitOffset
	mov	r2, ip, lsr #7	@ tmp415, CurrPicBitOffset.978,
	mov	r1, r2, asl #4	@ tmp416, tmp415,
	str	r1, [r5, #108]	@ tmp416, <variable>.Divx3DecParam.StreamPhyAddr
	bl	BsResidBits	@
	movw	r3, #33564	@ tmp421,
	ldr	r3, [r5, r3]	@ <variable>.CodecInfo.PictureHeader.vol_mode, <variable>.CodecInfo.PictureHeader.vol_mode
	str	r7, [r5, #112]	@ tmp418, <variable>.Divx3DecParam.StreamPhyAddr
	cmp	r3, #24	@ <variable>.CodecInfo.PictureHeader.vol_mode,
	str	r7, [r5, #120]	@ tmp418, <variable>.Divx3DecParam.StreamBitOffset
	str	r7, [r5, #128]	@ tmp418, <variable>.Divx3DecParam.StreamLength
	str	r0, [r5, #124]	@, <variable>.Divx3DecParam.StreamLength
	ldr	ip, [fp, #-216]	@,
	beq	.L181	@,
	cmp	r3, #26	@ <variable>.CodecInfo.PictureHeader.vol_mode,
	beq	.L182	@,
	cmp	r3, #23	@ <variable>.CodecInfo.PictureHeader.vol_mode,
	beq	.L210	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC38	@,
	movt	r1, #:upper16:.LC38	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.38956, tmp418
	b	.L148	@
.L205:
	movw	r1, #:lower16:.LC28	@,
	movt	r1, #:upper16:.LC28	@,
	bl	dprint_vfmw	@
	mov	r0, r9	@ D.38956, <variable>.CodecInfo.RefNum
	b	.L148	@
.L209:
	movw	ip, #33672	@ tmp352,
	movw	r1, #:lower16:.LC33	@,
	ldr	r2, [r5, ip]	@, <variable>.CodecInfo.FrmCnt
	movt	r1, #:upper16:.LC33	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.38956, D.39101
	b	.L148	@
.L174:
	movw	ip, #:lower16:67968	@ tmp395,
	movt	ip, #:upper16:67968	@ tmp395,
	movw	r0, #33764	@ tmp396,
	mov	r2, #1	@,
	ldr	r1, [r5, r0]	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r5, ip]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC36	@,
	movt	r1, #:upper16:.LC36	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.38956,
	b	.L148	@
.L173:
	mov	r0, r6	@, ret
	movw	r1, #:lower16:.LC35	@,
	movt	r1, #:upper16:.LC35	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.38956, pImg
	b	.L148	@
.L181:
	movw	r3, #33604	@ tmp426,
	movw	r2, #33600	@ tmp429,
	ldr	r0, [r5, r3]	@ temp.979, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	ldr	r6, [r5, r2]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	str	r7, [fp, #-72]	@ tmp418, slice_start_mbn
	tst	r0, #1	@ temp.979,
	mov	r1, r0, lsr #1	@ tmp428, temp.979,
	mul	r7, r6, r1	@ D.39168, <variable>.CodecInfo.PictureHeader.pic_width_in_mb, tmp428
	sub	r3, r7, #1	@ prephitmp.902, D.39168,
	str	r3, [fp, #-92]	@ prephitmp.902, slice_end_mbn
	mov	r1, r7, asl #1	@ D.39172, D.39168,
	str	r7, [fp, #-68]	@ D.39168, slice_start_mbn
	sub	r2, r1, #1	@ tmp431, D.39172,
	str	r2, [fp, #-88]	@ tmp431, slice_end_mbn
	moveq	r2, #2	@ total_slice_num,
	beq	.L183	@,
	movw	r7, #33616	@ tmp433,
	str	r1, [fp, #-64]	@ D.39172, slice_start_mbn
	ldr	sl, [r5, r7]	@ <variable>.CodecInfo.PictureHeader.total_mbs, <variable>.CodecInfo.PictureHeader.total_mbs
	mov	r2, #3	@ total_slice_num,
	sub	r4, sl, #1	@ tmp435, <variable>.CodecInfo.PictureHeader.total_mbs,
	str	r4, [fp, #-84]	@ tmp435, slice_end_mbn
.L183:
	movw	r4, #33604	@ tmp454,
	movw	r7, #33556	@ tmp456,
	ldr	r0, [r5, r4]	@, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	movw	sl, #33552	@ tmp450,
	ldr	r4, [r5, r7]	@, <variable>.CodecInfo.PictureHeader.quantizer
	movw	r7, #33560	@ tmp458,
	ldr	r7, [r5, r7]	@, <variable>.CodecInfo.PictureHeader.rounding_type
	add	r1, sl, #48	@ tmp452, tmp452,
	ldr	r6, [r5, sl]	@ <variable>.CodecInfo.PictureHeader.prediction_type, <variable>.CodecInfo.PictureHeader.prediction_type
	tst	r2, #1	@ total_slice_num,
	ldr	sl, [r5, r1]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	mov	r1, #0	@ ivtmp.922,
	str	r7, [r5, #28]	@, <variable>.Divx3DecParam.rounding_type
	movw	r7, #33568	@ tmp460,
	ldr	r7, [r5, r7]	@, <variable>.CodecInfo.PictureHeader.has_skips
	str	r0, [r5, #20]	@, <variable>.Divx3DecParam.PicHeightInMb
	mov	r0, r5	@ ivtmp.928, pCtx
	str	r4, [r5, #24]	@, <variable>.Divx3DecParam.quantizer
	mov	r4, r1	@ slice_num, ivtmp.922
	str	r7, [r5, #32]	@, <variable>.Divx3DecParam.has_skips
	movw	r7, #33576	@ tmp462,
	ldr	r7, [r5, r7]	@, <variable>.CodecInfo.PictureHeader.alternative_I_AC_chrom_DCT
	str	r6, [r5, #12]	@ <variable>.CodecInfo.PictureHeader.prediction_type, <variable>.Divx3DecParam.prediction_type
	str	sl, [r5, #16]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.Divx3DecParam.PicWidthInMb
	str	r7, [r5, #36]	@, <variable>.Divx3DecParam.alternative_I_AC_chrom_DCT
	movw	r7, #33580	@ tmp464,
	ldr	r7, [r5, r7]	@, <variable>.CodecInfo.PictureHeader.alternative_I_AC_lum_DCT
	str	r2, [r5, #60]	@ total_slice_num, <variable>.Divx3DecParam.TotalSliceNum
	str	r7, [r5, #40]	@, <variable>.Divx3DecParam.alternative_I_AC_lum_DCT
	movw	r7, #33584	@ tmp466,
	ldr	r7, [r5, r7]	@, <variable>.CodecInfo.PictureHeader.alternative_I_DC_DCT
	str	r7, [r5, #44]	@, <variable>.Divx3DecParam.alternative_I_DC_DCT
	movw	r7, #33588	@ tmp468,
	ldr	r7, [r5, r7]	@, <variable>.CodecInfo.PictureHeader.alternative_P_AC_DCT
	str	r7, [r5, #48]	@, <variable>.Divx3DecParam.alternative_P_AC_DCT
	movw	r7, #33592	@ tmp470,
	ldr	r7, [r5, r7]	@, <variable>.CodecInfo.PictureHeader.alternative_P_DC_DCT
	str	r7, [r5, #52]	@, <variable>.Divx3DecParam.alternative_P_DC_DCT
	movw	r7, #33596	@ tmp472,
	ldr	r7, [r5, r7]	@ <variable>.CodecInfo.PictureHeader.alternative_MV, <variable>.CodecInfo.PictureHeader.alternative_MV
	str	r7, [r5, #56]	@ <variable>.CodecInfo.PictureHeader.alternative_MV, <variable>.Divx3DecParam.alternative_MV
	bne	.L187	@,
	ldr	r6, [r9, #0]	@ tmp498, slice_start_mbn
	cmp	r2, #1	@ total_slice_num,
	mov	r1, #4	@ ivtmp.922,
	str	r3, [r5, #84]	@ prephitmp.902, <variable>.Divx3DecParam.slice_end_mbn
	mov	r4, #1	@ slice_num,
	add	r0, r5, r1	@ ivtmp.928, pCtx,
	str	r6, [r5, #64]	@ tmp498, <variable>.Divx3DecParam.slice_start_mbn
	ldrhi	r3, [ip, r1]	@ prephitmp.902, slice_end_mbn
	bls	.L186	@,
.L187:
	add	r6, r4, #1	@ tmp490, slice_num,
	ldr	r7, [r9, r1]	@ tmp475, slice_start_mbn
	cmp	r2, r6	@ total_slice_num, tmp490
	add	r4, r6, #1	@ slice_num, tmp490,
	add	r6, r1, #4	@ tmp491, ivtmp.922,
	str	r3, [r0, #84]	@ prephitmp.902, <variable>.Divx3DecParam.slice_end_mbn
	add	r1, r6, #4	@ ivtmp.922, tmp491,
	str	r7, [r0, #64]	@ tmp475, <variable>.Divx3DecParam.slice_start_mbn
	add	r3, r0, #4	@ tmp492, ivtmp.928,
	bls	.L186	@,
	ldr	r7, [ip, r6]	@ prephitmp.902, slice_end_mbn
	add	r0, r3, #4	@ ivtmp.928, tmp492,
	ldr	r6, [r9, r6]	@ tmp497, slice_start_mbn
	str	r7, [r3, #84]	@ prephitmp.902, <variable>.Divx3DecParam.slice_end_mbn
	str	r6, [r3, #64]	@ tmp497, <variable>.Divx3DecParam.slice_start_mbn
	ldr	r3, [ip, r1]	@ prephitmp.902, slice_end_mbn
	b	.L187	@
.L186:
	ldr	r3, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r0, #1	@ D.38956,
	str	r8, [r5, #4]	@ pDivx3DecParam, <variable>.pDivx3DecParam
	ldr	ip, [r3, #684]	@ <variable>.s32Compress_en, <variable>.s32Compress_en
	str	ip, [r5, #160]	@ <variable>.s32Compress_en, <variable>.Divx3DecParam.Compress_en
	b	.L148	@
.L210:
	movw	sl, #33616	@ tmp424,
	str	r7, [fp, #-72]	@ tmp418, slice_start_mbn
	ldr	r4, [r5, sl]	@ <variable>.CodecInfo.PictureHeader.total_mbs, <variable>.CodecInfo.PictureHeader.total_mbs
	mov	r2, #1	@ total_slice_num,
	sub	r3, r4, #1	@ prephitmp.902, <variable>.CodecInfo.PictureHeader.total_mbs,
	str	r3, [fp, #-92]	@ prephitmp.902, slice_end_mbn
	b	.L183	@
.L182:
	movw	r4, #33604	@ tmp436,
	movw	r2, #33600	@ tmp439,
	ldr	r1, [r5, r4]	@ temp.982, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	mov	r0, #3	@ tmp442,
	ldr	r6, [r5, r2]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	str	r7, [fp, #-72]	@ tmp418, slice_start_mbn
	tst	r1, #3	@ temp.982,
	mov	r3, r1, lsr #2	@ tmp438, temp.982,
	mul	r7, r6, r3	@ temp.985, <variable>.CodecInfo.PictureHeader.pic_width_in_mb, tmp438
	sub	r3, r7, #1	@ prephitmp.902, temp.985,
	str	r3, [fp, #-92]	@ prephitmp.902, slice_end_mbn
	mul	r1, r0, r7	@ D.39181, tmp442, temp.985
	mov	r6, r7, asl #2	@ D.39185, temp.985,
	mov	sl, r7, asl #1	@ temp.986, temp.985,
	strne	r6, [fp, #-56]	@ D.39185, slice_start_mbn
	str	sl, [fp, #-64]	@ temp.986, slice_start_mbn
	sub	r4, sl, #1	@ tmp441, temp.986,
	sub	r2, r1, #1	@ tmp443, D.39181,
	str	r2, [fp, #-84]	@ tmp443, slice_end_mbn
	sub	r2, r6, #1	@ tmp444, D.39185,
	str	r2, [fp, #-80]	@ tmp444, slice_end_mbn
	movwne	r2, #33616	@ tmp446,
	str	r7, [fp, #-68]	@ temp.985, slice_start_mbn
	str	r4, [fp, #-88]	@ tmp441, slice_end_mbn
	moveq	r2, #4	@ total_slice_num,
	str	r1, [fp, #-60]	@ D.39181, slice_start_mbn
	ldrne	r6, [r5, r2]	@ <variable>.CodecInfo.PictureHeader.total_mbs, <variable>.CodecInfo.PictureHeader.total_mbs
	movne	r2, #5	@ total_slice_num,
	subne	r6, r6, #1	@ tmp448, <variable>.CodecInfo.PictureHeader.total_mbs,
	strne	r6, [fp, #-76]	@ tmp448, slice_end_mbn
	b	.L183	@
	.fnend
	.size	DIVX3DEC_Decode, .-DIVX3DEC_Decode
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	__func__.38761, %object
	.size	__func__.38761, 19
__func__.38761:
	.ascii	"Divx3_DecodeDecide\000"
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Decoding quits at frm %d\012\000"
	.space	2
.LC1:
	.ascii	"ERROR: No Img buffer is allocated\012\000"
	.space	1
.LC2:
	.ascii	"----------------- divx3 Imode -> %d ---------------"
	.ascii	"---\012\000"
.LC3:
	.ascii	"-----I_MODE, but FrameType is %d-----\012\000"
	.space	1
.LC4:
	.ascii	"-----cur framtype is %s, but refnum=%d-----\012\000"
	.space	3
.LC5:
	.ascii	"P-frm\000"
	.space	2
.LC6:
	.ascii	"error: DecMode illegal\012\000"
.LC7:
	.ascii	"fuction return value is null,%s %d unknow error!!\012"
	.ascii	"\000"
	.space	1
.LC8:
	.ascii	"dec P frame, fwd ref err(%d) > ref_thr(%d)\012\000"
.LC9:
	.ascii	"-1 == VCTRL_GetChanIDByCtx() Err! \012\000"
.LC10:
	.ascii	"ErrRatio = %d\012\000"
	.space	1
.LC11:
	.ascii	"DEBUG: DEC over\012\000"
	.space	3
.LC12:
	.ascii	"insert buf %d ref %d\012\000"
	.space	2
.LC13:
	.ascii	"---------- unref %d\012\000"
	.space	3
.LC14:
	.ascii	"++++++++++ ref %d\012\000"
	.space	1
.LC15:
	.ascii	"image size abnormal (%dx%d) in MB\012\000"
	.space	1
.LC16:
	.ascii	"divx3 actual frame size(%dx%d) exeed max config(%dx"
	.ascii	"%d)\012\000"
.LC17:
	.ascii	"partition fs memory fail!\012\000"
	.space	1
.LC18:
	.ascii	"get frame store fail!\012\000"
	.space	1
.LC19:
	.ascii	"line: %d, pImage is NULL!\012\000"
	.space	1
.LC20:
	.ascii	"get image buffer ok: LogicFsID = %d\012\000"
	.space	3
.LC21:
	.ascii	"decode %p, disp %p, tf %p\012\000"
	.space	1
.LC22:
	.ascii	"ERROR: frm %d, Invalid packet pointer!\012\000"
.LC23:
	.ascii	"ERROR: frm %d, Invalid packet PhyAddr!\012\000"
.LC24:
	.ascii	"ERROR: frm %d, Invalid packet VirAddr!\012\000"
.LC25:
	.ascii	"ERROR: frm %d, Invalid packet len!\012\000"
.LC26:
	.ascii	"ERROR: frm %d, Invalid WxH: %dx%d!\012\000"
.LC27:
	.ascii	"Divx3_GetPictureHeader Error!\012\000"
	.space	1
.LC28:
	.ascii	"Can't decode from P frame!\012\000"
.LC29:
	.ascii	"pic width/height to large,MbWidth = %d, MbHeight = "
	.ascii	"%d\000"
	.space	2
.LC30:
	.ascii	"new seq size %d * %d\012\000"
	.space	2
.LC31:
	.ascii	"Divx3_ArrangeVHBMem err\012\000"
	.space	3
.LC32:
	.ascii	"Divx3_DecodeDecide err\012\000"
.LC33:
	.ascii	"Fatal Error: frm%d, get image buffer failed\012\000"
	.space	3
.LC34:
	.ascii	"dec_pts: %lld Usertag = %lld\012\000"
	.space	2
.LC35:
	.ascii	"FSP_GetFsImagePtr Error!\012\000"
	.space	2
.LC36:
	.ascii	"CurFsID abnormal!\012\000"
	.space	1
.LC37:
	.ascii	"dec addr: cur,cur2d,fwd,currpmv,colpmv = %p,%p,%p,%"
	.ascii	"p,%p,%p\012\000"
.LC38:
	.ascii	"vol_mode Error!\012\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
