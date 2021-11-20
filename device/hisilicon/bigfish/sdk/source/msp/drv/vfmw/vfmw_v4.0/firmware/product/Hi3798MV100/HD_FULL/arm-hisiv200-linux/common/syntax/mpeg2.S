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
	.file	"mpeg2.c"
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
@ -DKBUILD_BASENAME=KBUILD_STR(mpeg2) -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD drivers/msp/vfmw/vfmw_v4.0/firmware/common/syntax/.mpeg2.o.d
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/drivers/msp/vfmw/vfmw_v4.0/firmware/common/syntax/mpeg2.c
@ -mlittle-endian -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -marm -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/common/syntax/mpeg2.o -O2 -Wall
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
	.global	MP2_VerifyMemPara
	.type	MP2_VerifyMemPara, %function
MP2_VerifyMemPara:
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
	mov	r0, #1	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	MP2_VerifyMemPara, .-MP2_VerifyMemPara
	.align	2
	.global	MP2_EstimatePicQp
	.type	MP2_EstimatePicQp, %function
MP2_EstimatePicQp:
	.fnstart
.LFB1533:
	@ args = 0, pretend = 0, frame = 128
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #132
	sub	sp, sp, #132	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r1, #:lower16:.LANCHOR0	@,
	mov	r4, r0	@ pCtx, pCtx
	movt	r1, #:upper16:.LANCHOR0	@,
	sub	r0, fp, #148	@,,
	mov	r2, #128	@,
	bl	memcpy	@
	movw	r1, #:lower16:79216	@ tmp142,
	movt	r1, #:upper16:79216	@ tmp142,
	ldr	r0, [r4, #300]	@ QuantScaleCode, <variable>.quantiser_scale_code
	ldr	r3, [r4, r1]	@ <variable>.CodecInfo.MpegFlag, <variable>.CodecInfo.MpegFlag
	cmp	r3, #1	@ <variable>.CodecInfo.MpegFlag,
	beq	.L5	@,
	movw	lr, #:lower16:80504	@ tmp145,
	movt	lr, #:upper16:80504	@ tmp145,
	ldr	ip, [r4, lr]	@ <variable>.pSyntaxInfNew, <variable>.pSyntaxInfNew
	ldrb	r2, [ip, #13]	@ zero_extendqisi2	@ <variable>.q_scale_type, <variable>.q_scale_type
	cmp	r2, #0	@ <variable>.q_scale_type,
	subne	r2, fp, #20	@,,
	moveq	r0, r0, asl #1	@ QuantScale, QuantScaleCode,
	addne	r0, r2, r0, asl #2	@, tmp149,, QuantScaleCode,
	ldrne	r0, [r0, #-128]	@ QuantScale, Non_Linear_quantizer_scale
.L5:
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
	.fnend
	.size	MP2_EstimatePicQp, .-MP2_EstimatePicQp
	.global	__aeabi_idiv
	.align	2
	.global	MP2_CalcRealEncFrameRate
	.type	MP2_CalcRealEncFrameRate, %function
MP2_CalcRealEncFrameRate:
	.fnstart
.LFB1537:
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
	movw	ip, #:lower16:80504	@ tmp152,
	movt	ip, #:upper16:80504	@ tmp152,
	mov	r4, r0	@ pCtx, pCtx
	movw	r6, #:lower16:79320	@ tmp146,
	movw	r2, #:lower16:79332	@ tmp147,
	ldr	r7, [r0, ip]	@ D.39498, <variable>.pSyntaxInfNew
	movt	r6, #:upper16:79320	@ tmp146,
	movt	r2, #:upper16:79332	@ tmp147,
	movw	r5, #:lower16:79316	@ tmp148,
	movw	r1, #:lower16:79328	@ tmp149,
	movt	r5, #:upper16:79316	@ tmp148,
	ldrb	r3, [r7, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	movt	r1, #:upper16:79328	@ tmp149,
	movw	ip, #:lower16:79312	@ tmp150,
	movw	r0, #:lower16:79324	@ tmp151,
	cmp	r3, #1	@ <variable>.picture_coding_type,
	movt	r0, #:upper16:79324	@ tmp151,
	movt	ip, #:upper16:79312	@ tmp150,
	ldr	r3, [r4, r6]	@ D.39492, <variable>.GopFrmCnt
	ldr	r2, [r4, r2]	@ D.39493, <variable>.GopFrmCnt
	ldr	r6, [r4, r5]	@ D.39494, <variable>.GopFldCnt
	ldr	r1, [r4, r1]	@ D.39495, <variable>.GopFldCnt
	ldr	r5, [r4, r0]	@ D.39497, <variable>.GopFrmCntNoRpt
	ldr	ip, [r4, ip]	@ D.39496, <variable>.GopFrmCntNoRpt
	ldr	r0, [r7, #72]	@ D.39499, <variable>.frame_rate
	ldmnefd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	add	ip, r5, ip	@ FrmNumNoRpt, D.39497, D.39496
	cmp	r0, #0	@ D.39499,
	cmpgt	ip, #0	@, FrmNumNoRpt,
	ble	.L11	@,
	add	r1, r1, r6	@ FldNum, D.39495, D.39494
	cmp	r1, #0	@ FldNum,
	ble	.L11	@,
	mul	r0, ip, r0	@, FrmNumNoRpt, D.39499
	ldrb	lr, [r7, #27]	@ zero_extendqisi2	@ <variable>.progressive_sequence, <variable>.progressive_sequence
	cmp	lr, #1	@ <variable>.progressive_sequence,
	addeq	r1, r2, r3	@, D.39493, D.39492
	movne	r0, r0, asl #1	@, tmp168,
	bl	__aeabi_idiv	@
	mov	r2, #100	@ tmp176,
	movw	r1, #:lower16:79348	@ tmp173,
	movt	r1, #:upper16:79348	@ tmp173,
	mul	r3, r2, r0	@ tmp175, tmp176, prephitmp.587
	str	r0, [r4, r1]	@ prephitmp.587, <variable>.CodecInfo.RealFrmRate
	movw	r1, #:lower16:79348	@ tmp174,
	movt	r1, #:upper16:79348	@ tmp174,
	add	ip, r3, #1020	@ tmp178, tmp175,
	cmp	r3, #0	@ tmp175,
	add	r2, ip, #3	@ tmp178, tmp178,
	movlt	r3, r2	@ tmp177, tmp178
	mov	r0, r3, asr #10	@ tmp180, tmp177,
	str	r0, [r4, r1]	@ tmp180, <variable>.CodecInfo.RealFrmRate
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L11:
	movw	r3, #:lower16:79348	@ tmp181,
	movt	r3, #:upper16:79348	@ tmp181,
	mov	r0, #0	@ tmp182,
	str	r0, [r4, r3]	@ tmp182, <variable>.CodecInfo.RealFrmRate
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	MP2_CalcRealEncFrameRate, .-MP2_CalcRealEncFrameRate
	.align	2
	.global	MP2_CalcDar
	.type	MP2_CalcDar, %function
MP2_CalcDar:
	.fnstart
.LFB1538:
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
	movw	r3, #:lower16:80504	@ tmp138,
	movt	r3, #:upper16:80504	@ tmp138,
	ldr	ip, [r0, r3]	@ <variable>.pSyntaxInfNew, <variable>.pSyntaxInfNew
	ldr	r1, [ip, #84]	@ <variable>.aspect_ratio_information, <variable>.aspect_ratio_information
	sub	r3, r1, #1	@ D.41121, <variable>.aspect_ratio_information,
	cmp	r3, #2	@ D.41121,
	movwls	r2, #:lower16:.LANCHOR0	@ tmp140,
	movtls	r2, #:upper16:.LANCHOR0	@ tmp140,
	addls	r3, r2, r3, asl #2	@, tmp143, tmp140, D.41121,
	movhi	r0, #0	@ prephitmp.612,
	ldrls	r0, [r3, #128]	@ prephitmp.612, CSWTCH.526
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	MP2_CalcDar, .-MP2_CalcDar
	.align	2
	.global	MP2_SearchStartCode
	.type	MP2_SearchStartCode, %function
MP2_SearchStartCode:
	.fnstart
.LFB1540:
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
	cmp	r1, #4	@ CodeLen,
	movle	r0, #0	@ ofst,
	ldmlefd	sp, {fp, sp, pc}	@
	add	ip, r0, r1	@ pEnd, pCode, CodeLen
	add	r3, r0, #2	@ ptr, pCode,
.L33:
	cmp	ip, r3	@ pEnd, ptr
	bls	.L22	@,
.L34:
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ byte,* ptr
	cmp	r2, #1	@ byte,
	bls	.L23	@,
.L28:
	add	r3, r3, #3	@ ptr, ptr,
	cmp	ip, r3	@ pEnd, ptr
	bhi	.L34	@,
.L22:
	sub	r0, r1, #3	@ ofst, CodeLen,
	ldmfd	sp, {fp, sp, pc}	@
.L23:
	cmp	r2, #0	@ byte,
	beq	.L35	@,
	ldrb	r2, [r3, #-2]	@ zero_extendqisi2	@ tmp142,
	cmp	r2, #0	@ tmp142,
	bne	.L28	@,
	ldrb	r2, [r3, #-1]	@ zero_extendqisi2	@ tmp143,
	cmp	r2, #0	@ tmp143,
	bne	.L28	@,
	movw	ip, #:lower16:-2	@ tmp144,
	movt	ip, #:upper16:-2	@ tmp144,
	rsb	r1, r0, ip	@ tmp144, pCode, tmp144
	add	r0, r1, r3	@ ofst, tmp144, ptr
	ldmfd	sp, {fp, sp, pc}	@
.L35:
	ldrb	r2, [r3, #-1]	@ zero_extendqisi2	@ tmp140,
	cmp	r2, #0	@ tmp140,
	addeq	r3, r3, #1	@ ptr, ptr,
	beq	.L33	@,
	ldrb	r2, [r3, #1]	@ zero_extendqisi2	@ tmp141,
	cmp	r2, #0	@ tmp141,
	addeq	r3, r3, #2	@ ptr, ptr,
	addne	r3, r3, #4	@ ptr, ptr,
	b	.L33	@
	.fnend
	.size	MP2_SearchStartCode, .-MP2_SearchStartCode
	.align	2
	.global	MP2_RecordVFMWState
	.type	MP2_RecordVFMWState, %function
MP2_RecordVFMWState:
	.fnstart
.LFB1544:
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
	movw	r5, #:lower16:80504	@ tmp141,
	movt	r5, #:upper16:80504	@ tmp141,
	ldr	r2, [r0, #0]	@ D.39835, <variable>.pstExtraData
	ldr	r1, [r0, r5]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	ldr	r4, [r1, #48]	@ <variable>.horizontal_size, <variable>.horizontal_size
	str	r4, [r2, #568]	@ <variable>.horizontal_size, <variable>.stChanState.image_width
	ldr	r6, [r1, #52]	@ <variable>.vertical_size, <variable>.vertical_size
	str	r6, [r2, #572]	@ <variable>.vertical_size, <variable>.stChanState.image_height
	ldr	r3, [r0, r5]	@ <variable>.pSyntaxInfNew, <variable>.pSyntaxInfNew
	movw	r5, #:lower16:79216	@ tmp156,
	movt	r5, #:upper16:79216	@ tmp156,
	ldr	ip, [r3, #84]	@ <variable>.aspect_ratio_information, <variable>.aspect_ratio_information
	movw	r3, #:lower16:114676	@ tmp161,
	movt	r3, #:upper16:114676	@ tmp161,
	sub	r4, ip, #1	@ D.41132, <variable>.aspect_ratio_information,
	mov	ip, #0	@ tmp152,
	cmp	r4, #2	@ D.41132,
	str	ip, [r2, #580]	@ tmp152, <variable>.stChanState.scan_type
	str	ip, [r2, #584]	@ tmp152, <variable>.stChanState.video_format
	movwls	r6, #:lower16:.LANCHOR0	@ tmp147,
	movtls	r6, #:upper16:.LANCHOR0	@ tmp147,
	addls	r4, r6, r4, asl #2	@, tmp150, tmp147, D.41132,
	movhi	r4, #0	@ prephitmp.662,
	ldrls	r4, [r4, #128]	@ prephitmp.662, CSWTCH.526
	str	r4, [r2, #576]	@ prephitmp.662, <variable>.stChanState.aspect_ratio
	movw	r4, #:lower16:114680	@ tmp164,
	ldr	r6, [r1, #72]	@ <variable>.frame_rate, <variable>.frame_rate
	movt	r4, #:upper16:114680	@ tmp164,
	str	ip, [r2, #592]	@ tmp152, <variable>.stChanState.bit_rate
	str	r6, [r2, #588]	@ <variable>.frame_rate, <variable>.stChanState.frame_rate
	ldr	r5, [r0, r5]	@ <variable>.CodecInfo.MpegFlag, <variable>.CodecInfo.MpegFlag
	cmp	r5, #1	@ <variable>.CodecInfo.MpegFlag,
	movne	r5, #0	@, tmp158
	moveq	r5, #1	@, tmp158
	str	r5, [r2, #596]	@ tmp158, <variable>.stChanState.sub_video_standard
	ldr	r5, [r1, #40]	@ <variable>.profile, <variable>.profile
	str	r5, [r2, #600]	@ <variable>.profile, <variable>.stChanState.profile
	ldr	r1, [r1, #44]	@ <variable>.level, <variable>.level
	str	r1, [r2, #604]	@ <variable>.level, <variable>.stChanState.level
	ldr	r1, [r0, r3]	@ <variable>.numTotalFrame, <variable>.numTotalFrame
	str	r1, [r2, #608]	@ <variable>.numTotalFrame, <variable>.stChanState.total_frame_num
	ldr	r1, [r0, r4]	@ D.39846, <variable>.numOutputFrame
	ldr	r3, [r0, r3]	@ temp.673, <variable>.numTotalFrame
	cmp	r3, r1	@ temp.673, D.39846
	rsbge	ip, r1, r3	@ iftmp.485, D.39846, temp.673
	str	ip, [r2, #612]	@ iftmp.485, <variable>.stChanState.error_frame_num
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	MP2_RecordVFMWState, .-MP2_RecordVFMWState
	.align	2
	.global	MP2_OutputDispFrame
	.type	MP2_OutputDispFrame, %function
MP2_OutputDispFrame:
	.fnstart
.LFB1568:
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
	.size	MP2_OutputDispFrame, .-MP2_OutputDispFrame
	.align	2
	.global	MP2_ExitMb
	.type	MP2_ExitMb, %function
MP2_ExitMb:
	.fnstart
.LFB1577:
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
	mov	r3, #0	@ tmp134,
	str	r3, [r0, #16]	@ tmp134, <variable>.FirstMbInSliceFlag
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	MP2_ExitMb, .-MP2_ExitMb
	.align	2
	.global	MP2_GetPacketState
	.type	MP2_GetPacketState, %function
MP2_GetPacketState:
	.fnstart
.LFB1580:
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
	mov	r3, #114688	@ tmp136,
	ldrb	r0, [r0, r3]	@ zero_extendqisi2	@ <variable>.IsWaitToDecFlag, <variable>.IsWaitToDecFlag
	cmp	r0, #1	@ <variable>.IsWaitToDecFlag,
	moveq	r0, #2	@,
	movne	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	MP2_GetPacketState, .-MP2_GetPacketState
	.align	2
	.global	MPEG2DEC_Destroy
	.type	MPEG2DEC_Destroy, %function
MPEG2DEC_Destroy:
	.fnstart
.LFB1562:
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
	movw	r3, #:lower16:79188	@ tmp139,
	movt	r3, #:upper16:79188	@ tmp139,
	movw	r1, #:lower16:.LC0	@,
	movt	r1, #:upper16:.LC0	@,
	ldr	r2, [r0, r3]	@ <variable>.CodecInfo.Frame_Cnt, <variable>.CodecInfo.Frame_Cnt
	mov	r0, #2	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	MPEG2DEC_Destroy, .-MPEG2DEC_Destroy
	.align	2
	.global	MP2_SetVDMInf
	.type	MP2_SetVDMInf, %function
MP2_SetVDMInf:
	.fnstart
.LFB1543:
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
	movw	r1, #:lower16:79132	@ tmp144,
	movt	r1, #:upper16:79132	@ tmp144,
	mov	r4, r0	@ pCtx, pCtx
	add	r0, r0, #78848	@ pBs, pCtx,
	ldrsb	r3, [r4, r1]	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg, <variable>.CodecInfo.stMp2Packet.IsLastSeg
	add	r0, r0, #576	@ pBs, pBs,
	cmp	r3, #1	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg,
	beq	.L56	@,
	movw	r5, #:lower16:79448	@ tmp168,
	movt	r5, #:upper16:79448	@ tmp168,
	movw	r7, #:lower16:79144	@ tmp169,
	movt	r7, #:upper16:79144	@ tmp169,
	ldr	r3, [r4, r5]	@ temp.789, <variable>.Bs.TotalPos
	movw	r2, #:lower16:79128	@ tmp173,
	ldr	r1, [r4, r7]	@ <variable>.CodecInfo.stMp2Packet.BsPhyAddr, <variable>.CodecInfo.stMp2Packet.BsPhyAddr
	movt	r2, #:upper16:79128	@ tmp173,
	cmp	r3, #0	@ temp.789,
	add	r7, r3, #7	@ tmp176, temp.789,
	ldr	lr, [r4, r2]	@ <variable>.CodecInfo.BsOffset, <variable>.CodecInfo.BsOffset
	add	ip, r1, r3, lsr #3	@, tmp185, <variable>.CodecInfo.stMp2Packet.BsPhyAddr, temp.789,
	movge	r7, r3	@ temp.789, temp.789
	movw	r5, #:lower16:79148	@ tmp166,
	add	r3, r3, r1, asl #3	@, bs_offset.794, temp.789, <variable>.CodecInfo.stMp2Packet.BsPhyAddr,
	movt	r5, #:upper16:79148	@ tmp166,
	add	r1, lr, r7, asr #3	@, tmp180, <variable>.CodecInfo.BsOffset, temp.789,
	and	lr, r3, #31	@ tmp188, bs_offset.794,
	str	r1, [r4, r2]	@ tmp180, <variable>.CodecInfo.BsOffset
	bic	r1, ip, #3	@ tmp187, tmp185,
	str	lr, [r4, #172]	@ tmp188, <variable>.Mp2DecParam.StreamBitOffset
	str	r1, [r4, #164]	@ tmp187, <variable>.Mp2DecParam.StreamPhyAddr
	ldr	r6, [r4, r5]	@ <variable>.CodecInfo.stMp2Packet.BsPhyAddr, <variable>.CodecInfo.stMp2Packet.BsPhyAddr
	bl	BsResidBits	@
	movw	r3, #:lower16:79156	@ tmp193,
	movt	r3, #:upper16:79156	@ tmp193,
	ldr	r2, [r4, r5]	@ <variable>.CodecInfo.stMp2Packet.BsPhyAddr, <variable>.CodecInfo.stMp2Packet.BsPhyAddr
	bic	r6, r6, #3	@ stream_base_addr.788, <variable>.CodecInfo.stMp2Packet.BsPhyAddr,
	ldr	r3, [r4, r3]	@ <variable>.CodecInfo.stMp2Packet.BsLength, <variable>.CodecInfo.stMp2Packet.BsLength
	and	ip, r2, #3	@ tmp190, <variable>.CodecInfo.stMp2Packet.BsPhyAddr,
	str	r6, [r4, #168]	@ stream_base_addr.788, <variable>.Mp2DecParam.StreamPhyAddr
	mov	r1, ip, asl #3	@ tmp192, tmp190,
	mov	r2, r3, asl #3	@ tmp195, <variable>.CodecInfo.stMp2Packet.BsLength,
	str	r1, [r4, #176]	@ tmp192, <variable>.Mp2DecParam.StreamBitOffset
	str	r2, [r4, #184]	@ tmp195, <variable>.Mp2DecParam.StreamLength
	str	r0, [r4, #180]	@, <variable>.Mp2DecParam.StreamLength
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L56:
	movw	ip, #:lower16:79448	@ tmp147,
	movt	ip, #:upper16:79448	@ tmp147,
	movw	r5, #:lower16:79144	@ tmp146,
	movt	r5, #:upper16:79144	@ tmp146,
	ldr	r3, [r4, ip]	@ D.39810, <variable>.Bs.TotalPos
	movw	r2, #:lower16:79128	@ tmp148,
	ldr	r1, [r4, r5]	@ D.39809, <variable>.CodecInfo.stMp2Packet.BsPhyAddr
	movt	r2, #:upper16:79128	@ tmp148,
	cmp	r3, #0	@ D.39810,
	add	r5, r3, #7	@ tmp151, D.39810,
	ldr	lr, [r4, r2]	@ <variable>.CodecInfo.BsOffset, <variable>.CodecInfo.BsOffset
	add	ip, r3, r1, asl #3	@, tmp161, D.39810, D.39809,
	movge	r5, r3	@ D.39810, D.39810
	add	r3, r1, r3, lsr #3	@, tmp157, D.39809, D.39810,
	add	r1, lr, r5, asr #3	@, tmp155, <variable>.CodecInfo.BsOffset, D.39810,
	bic	r3, r3, #3	@ tmp158, tmp157,
	str	r1, [r4, r2]	@ tmp155, <variable>.CodecInfo.BsOffset
	and	lr, ip, #31	@ tmp162, tmp161,
	str	r3, [r4, #164]	@ tmp158, <variable>.Mp2DecParam.StreamPhyAddr
	str	lr, [r4, #172]	@ tmp162, <variable>.Mp2DecParam.StreamBitOffset
	bl	BsResidBits	@
	mov	r2, #0	@ tmp163,
	str	r2, [r4, #184]	@ tmp163, <variable>.Mp2DecParam.StreamLength
	str	r2, [r4, #168]	@ tmp163, <variable>.Mp2DecParam.StreamPhyAddr
	str	r2, [r4, #176]	@ tmp163, <variable>.Mp2DecParam.StreamBitOffset
	str	r0, [r4, #180]	@, <variable>.Mp2DecParam.StreamLength
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	MP2_SetVDMInf, .-MP2_SetVDMInf
	.align	2
	.global	MP2_DecNewPic
	.type	MP2_DecNewPic, %function
MP2_DecNewPic:
	.fnstart
.LFB1536:
	@ args = 0, pretend = 0, frame = 8
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
	mov	r5, r0	@ pCtx, pCtx
	bl	MP2_SetVDMInf	@
	ldr	r2, [r5, #0]	@ temp.832, <variable>.pstExtraData
	movw	r0, #:lower16:80504	@ tmp146,
	movt	r0, #:upper16:80504	@ tmp146,
	movw	r3, #45324	@ tmp143,
	ldr	r1, [r5, r0]	@ D.39436, <variable>.pSyntaxInfNew
	ldr	r0, [r2, #684]	@ <variable>.s32Compress_en, <variable>.s32Compress_en
	str	r0, [r5, r3]	@ <variable>.s32Compress_en, <variable>.Mp2DecParam.Compress_en
	ldrb	r3, [r1, #22]	@ zero_extendqisi2	@ D.39437, <variable>.picture_coding_type
	cmp	r3, #3	@ D.39437,
	beq	.L66	@,
	cmp	r3, #2	@ D.39437,
	movweq	r3, #:lower16:114684	@ tmp156,
	movteq	r3, #:upper16:114684	@ tmp156,
	moveq	r1, #1	@ tmp157,
	streq	r1, [r5, r3]	@ tmp157, <variable>.PPicFound
.L59:
	add	r1, r5, #8	@ D.39451, pCtx,
	str	r1, [r5, #4]	@ D.39451, <variable>.pMp2DecParam
	ldr	r3, [r2, #896]	@ D.39452, <variable>.stDisParams.s32Mode
	cmp	r3, #1	@ D.39452,
	beq	.L67	@,
	cmp	r3, #2	@ D.39452,
	beq	.L68	@,
.L63:
	movw	r3, #:lower16:80504	@ tmp174,
	movt	r3, #:upper16:80504	@ tmp174,
	movw	r0, #:lower16:79180	@ tmp169,
	movt	r0, #:upper16:79180	@ tmp169,
	ldr	r2, [r5, r3]	@ <variable>.pSyntaxInfNew, <variable>.pSyntaxInfNew
	ldr	lr, [r5, r0]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	bic	r4, lr, #16252928	@ tmp172, <variable>.CodecInfo.StreamIntegrality,
	str	r4, [r5, r0]	@ tmp172, <variable>.CodecInfo.StreamIntegrality
	ldrb	r4, [r2, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	cmp	r4, #1	@ <variable>.picture_coding_type,
	beq	.L69	@,
.L64:
	mov	r0, #1	@ Ret,
.L61:
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L69:
	movw	r1, #:lower16:g_event_report	@ tmp176,
	movt	r1, #:upper16:g_event_report	@ tmp176,
	ldr	ip, [r1, #0]	@ g_event_report.472, g_event_report
	cmp	ip, #0	@ g_event_report.472,
	beq	.L64	@,
	ldr	r0, [r5, #180]	@ <variable>.Mp2DecParam.StreamLength, <variable>.Mp2DecParam.StreamLength
	movw	r3, #:lower16:114672	@ tmp183,
	ldr	lr, [r5, #184]	@ <variable>.Mp2DecParam.StreamLength, <variable>.Mp2DecParam.StreamLength
	movt	r3, #:upper16:114672	@ tmp183,
	sub	r2, fp, #20	@ tmp185,,
	mov	r1, #20	@,
	add	lr, lr, r0	@ tmp177, <variable>.Mp2DecParam.StreamLength, <variable>.Mp2DecParam.StreamLength
	ldr	r0, [r5, r3]	@, <variable>.ChanID
	cmp	lr, #0	@ tmp177,
	add	r5, lr, #7	@ tmp181, tmp177,
	mov	r3, #4	@,
	movlt	lr, r5	@ tmp180, tmp181
	mov	lr, lr, asr #3	@ tmp182, tmp180,
	str	lr, [r2, #-4]!	@ tmp182, para
	blx	ip	@ g_event_report.472
	mov	r0, r4	@ Ret, <variable>.picture_coding_type
	b	.L61	@
.L66:
	movw	ip, #:lower16:114684	@ tmp147,
	movt	ip, #:upper16:114684	@ tmp147,
	ldr	r0, [r5, ip]	@ <variable>.PPicFound, <variable>.PPicFound
	cmp	r0, #0	@ <variable>.PPicFound,
	bne	.L59	@,
	movw	r3, #:lower16:79220	@ tmp149,
	movt	r3, #:upper16:79220	@ tmp149,
	ldr	lr, [r5, r3]	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	lr, #2	@ <variable>.CodecInfo.RefNum,
	beq	.L59	@,
	ldrb	r2, [r1, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	cmp	r2, #3	@ <variable>.picture_structure,
	beq	.L61	@,
	movw	ip, #:lower16:79192	@ tmp152,
	movt	ip, #:upper16:79192	@ tmp152,
	ldr	lr, [r5, ip]	@ <variable>.CodecInfo.Second_Field, <variable>.CodecInfo.Second_Field
	rsbs	r1, lr, #1	@ tmp155, <variable>.CodecInfo.Second_Field
	movcc	r1, #0	@ tmp155
	str	r1, [r5, ip]	@ tmp155, <variable>.CodecInfo.Second_Field
	b	.L61	@
.L67:
	cmp	r1, #0	@ D.39451,
	beq	.L63	@,
	movw	r1, #:lower16:80504	@ tmp159,
	movt	r1, #:upper16:80504	@ tmp159,
	ldr	r2, [r5, r1]	@ <variable>.pSyntaxInfNew, <variable>.pSyntaxInfNew
	ldrb	r3, [r2, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	cmp	r3, #3	@ <variable>.picture_coding_type,
	moveq	r0, #0	@ tmp161,
	streq	r0, [r5, #4]	@ tmp161, <variable>.pMp2DecParam
	bne	.L63	@,
	b	.L61	@
.L68:
	ldr	r0, [r2, #900]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	cmp	r0, #0	@ <variable>.stDisParams.s32DisNums,
	ble	.L63	@,
	cmp	r1, #0	@ D.39451,
	beq	.L63	@,
	movw	r3, #:lower16:80504	@ tmp164,
	movt	r3, #:upper16:80504	@ tmp164,
	ldr	lr, [r5, r3]	@ <variable>.pSyntaxInfNew, <variable>.pSyntaxInfNew
	ldrb	ip, [lr, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	cmp	ip, #3	@ <variable>.picture_coding_type,
	bne	.L63	@,
	mov	r0, #0	@ tmp166,
	str	r0, [r5, #4]	@ tmp166, <variable>.pMp2DecParam
	ldr	ip, [r2, #900]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	sub	r1, ip, #1	@ tmp168, <variable>.stDisParams.s32DisNums,
	str	r1, [r2, #900]	@ tmp168, <variable>.stDisParams.s32DisNums
	b	.L61	@
	.fnend
	.size	MP2_DecNewPic, .-MP2_DecNewPic
	.align	2
	.global	MP2_u_v
	.type	MP2_u_v, %function
MP2_u_v:
	.fnstart
.LFB1575:
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
	mov	r7, r2	@ SeTraceString, SeTraceString
	mov	r6, r0	@ pBs, pBs
	mov	r5, r1	@ LenInBits, LenInBits
	bl	BsShow	@
	mov	r1, r5	@, LenInBits
	mov	r4, r0	@ D.40950,
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	mov	r2, r7	@, SeTraceString
	mov	r3, r4	@, D.40950
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, D.40950
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	MP2_u_v, .-MP2_u_v
	.align	2
	.global	MP2_MbAddrInc
	.type	MP2_MbAddrInc, %function
MP2_MbAddrInc:
	.fnstart
.LFB1579:
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
	mov	r1, #4	@,
	mov	r6, r0	@ pBs, pBs
	bl	BsShow	@
	movw	r4, #:lower16:.LANCHOR0	@ tmp144,
	movt	r4, #:upper16:.LANCHOR0	@ tmp144,
	add	r3, r4, r0, asl #3	@, tmp147, tmp144, D.41051,
	ldr	r5, [r3, #140]	@ MbAddrInc, tab_for_first_4bit
	ldr	r1, [r3, #144]	@ SkipBit, tab_for_first_4bit
	cmp	r5, #6	@ MbAddrInc,
	bls	.L77	@,
	cmp	r5, #9	@ MbAddrInc,
	beq	.L78	@,
	mov	r1, #11	@,
	mov	r0, r6	@, pBs
	bl	BsShow	@
	movw	r2, #:lower16:.LC2	@,
	movt	r2, #:upper16:.LC2	@,
	and	ip, r0, #127	@ code.889,,
	mov	r0, r6	@, pBs
	sub	r5, ip, #24	@ code.890, code.889,
	add	r1, r4, r5, asl #3	@, tmp167, tmp144, code.890,
	mov	r4, r1	@ tmp161, tmp167
	ldr	r1, [r1, #272]	@, tab_for_last_7bit
	ldr	r5, [r4, #268]	@ MbAddrInc, tab_for_last_7bit
	bl	MP2_u_v	@
	mov	r0, r5	@, MbAddrInc
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L77:
	mov	r0, r6	@, pBs
	movw	r2, #:lower16:.LC2	@,
	movt	r2, #:upper16:.LC2	@,
	bl	MP2_u_v	@
	mov	r0, r5	@, MbAddrInc
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L78:
	mov	r0, r6	@, pBs
	movw	r2, #:lower16:.LC2	@,
	movt	r2, #:upper16:.LC2	@,
	bl	MP2_u_v	@
	rsb	r5, r0, #9	@ MbAddrInc,,
	mov	r0, r5	@, MbAddrInc
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	MP2_MbAddrInc, .-MP2_MbAddrInc
	.align	2
	.global	MP2_InitMb
	.type	MP2_InitMb, %function
MP2_InitMb:
	.fnstart
.LFB1576:
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
	mov	r5, #0	@ macroblock_escape,
	mov	r6, r0	@ pSlcInfo, pSlcInfo
	ldr	r4, [r0, #52]	@ pBs, <variable>.pBs
	b	.L80	@
.L84:
	cmp	r0, #15	@ D.40974,
	beq	.L81	@,
	cmp	r0, #8	@ D.40974,
	add	r5, r5, #33	@ macroblock_escape, macroblock_escape,
	bne	.L90	@,
.L81:
	movw	r2, #:lower16:.LC4	@,
	mov	r0, r4	@, pBs
	movt	r2, #:upper16:.LC4	@,
	mov	r1, #11	@,
	bl	MP2_u_v	@
.L80:
	mov	r1, #11	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	cmp	r0, #23	@ D.40974,
	bls	.L84	@,
	mov	r0, r4	@, pBs
	bl	MP2_MbAddrInc	@
	ldr	r4, [r6, #16]	@ <variable>.FirstMbInSliceFlag, <variable>.FirstMbInSliceFlag
	cmp	r4, #0	@ <variable>.FirstMbInSliceFlag,
	beq	.L85	@,
	ldr	r1, [r6, #28]	@ D.40979, <variable>.previous_macroblock_address
	add	r2, r5, r0	@ tmp147, macroblock_escape, macroblock_address_increment
	ldr	r3, [r6, #12]	@ <variable>.pic_total_mb_num, <variable>.pic_total_mb_num
	cmp	r1, #0	@ D.40979,
	addne	r2, r2, r1	@ SlcStartMbNum, tmp147, D.40979
	subeq	r2, r2, #1	@ SlcStartMbNum, tmp148,
	sub	r3, r3, #1	@ D.40987, <variable>.pic_total_mb_num,
	str	r2, [r6, #44]	@ SlcStartMbNum, <variable>.slicen_start_mb_num
	cmp	r2, r3	@ SlcStartMbNum, D.40987
	movls	r0, #1	@ ret,
	ldmlsfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC5	@,
	movt	r1, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ ret,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L90:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC3	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ ret,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L85:
	mov	r2, r4	@, <variable>.FirstMbInSliceFlag
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ ret, <variable>.FirstMbInSliceFlag
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	MP2_InitMb, .-MP2_InitMb
	.align	2
	.global	MP2_DecSliceHeader
	.type	MP2_DecSliceHeader, %function
MP2_DecSliceHeader:
	.fnstart
.LFB1574:
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
	mov	r5, r0	@ pSlcInfo, pSlcInfo
	ldr	r0, [r0, #4]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	mov	r2, #1	@ tmp145,
	mov	r3, #0	@ tmp146,
	str	r2, [r5, #16]	@ tmp145, <variable>.FirstMbInSliceFlag
	cmp	r0, #175	@ <variable>.pic_height_in_mb,
	str	r3, [r5, #24]	@ tmp146, <variable>.slice_vertical_position_extension
	ldr	r4, [r5, #52]	@ pBs, <variable>.pBs
	bls	.L92	@,
	ldr	r1, [r5, #0]	@ <variable>.mpeg1_flag, <variable>.mpeg1_flag
	cmp	r1, #0	@ <variable>.mpeg1_flag,
	beq	.L101	@,
.L92:
	mov	r1, #0	@ prephitmp.930,
.L93:
	ldr	ip, [r5, #20]	@ <variable>.slice_vertical_position, <variable>.slice_vertical_position
	ldr	r0, [r5, #8]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	sub	r2, ip, #1	@ tmp150, <variable>.slice_vertical_position,
	add	r3, r2, r1	@ tmp152, tmp150, prephitmp.930
	mov	r1, #5	@,
	movw	r2, #:lower16:.LC8	@,
	movt	r2, #:upper16:.LC8	@,
	mul	lr, r0, r3	@ D.40925, <variable>.pic_width_in_mb, tmp152
	mov	r0, r4	@, pBs
	cmp	lr, #0	@ D.40925,
	subne	lr, lr, #1	@ iftmp.520, D.40925,
	str	lr, [r5, #28]	@ iftmp.520, <variable>.previous_macroblock_address
	bl	MP2_u_v	@
	mov	ip, #0	@ tmp155,
	mov	r1, #1	@,
	str	ip, [r5, #32]	@ tmp155, <variable>.intra_slice
	str	r0, [r5, #48]	@, <variable>.quantiser_scale_code
	mov	r0, r4	@, pBs
	bl	BsShow	@
	cmp	r0, #0	@,
	bne	.L102	@,
.L96:
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC12	@,
	movt	r2, #:upper16:.LC12	@,
	bl	MP2_u_v	@
	mov	r0, #0	@,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L102:
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC9	@,
	movt	r2, #:upper16:.LC9	@,
	bl	MP2_u_v	@
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC10	@,
	movt	r2, #:upper16:.LC10	@,
	bl	MP2_u_v	@
	mov	r1, #7	@,
	movw	r2, #:lower16:.LC11	@,
	movt	r2, #:upper16:.LC11	@,
	str	r0, [r5, #32]	@, <variable>.intra_slice
	mov	r0, r4	@, pBs
	bl	MP2_u_v	@
	b	.L97	@
.L98:
	bl	MP2_u_v	@
	movw	r2, #:lower16:.LC13	@,
	mov	r0, r4	@, pBs
	movt	r2, #:upper16:.LC13	@,
	mov	r1, #8	@,
	bl	MP2_u_v	@
.L97:
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	movw	r2, #:lower16:.LC12	@,
	mov	r1, #1	@,
	movt	r2, #:upper16:.LC12	@,
	cmp	r0, #0	@,
	mov	r0, r4	@, pBs
	bne	.L98	@,
	b	.L96	@
.L101:
	mov	r1, #3	@,
	mov	r0, r4	@, pBs
	movw	r2, #:lower16:.LC7	@,
	movt	r2, #:upper16:.LC7	@,
	bl	MP2_u_v	@
	mov	r1, r0, asl #7	@ prephitmp.930, D.40919,
	str	r0, [r5, #24]	@ D.40919, <variable>.slice_vertical_position_extension
	b	.L93	@
	.fnend
	.size	MP2_DecSliceHeader, .-MP2_DecSliceHeader
	.align	2
	.global	MP2_GetFirstMbInSlice
	.type	MP2_GetFirstMbInSlice, %function
MP2_GetFirstMbInSlice:
	.fnstart
.LFB1573:
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
	mov	r4, r0	@ pSlcInfo, pSlcInfo
	bl	MP2_DecSliceHeader	@
	mov	r0, r4	@, pSlcInfo
	bl	MP2_InitMb	@
	mov	r3, #0	@ tmp136,
	str	r3, [r4, #16]	@ tmp136, <variable>.FirstMbInSliceFlag
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	MP2_GetFirstMbInSlice, .-MP2_GetFirstMbInSlice
	.align	2
	.global	copyright_extension
	.type	copyright_extension, %function
copyright_extension:
	.fnstart
.LFB1559:
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
	add	r0, r0, #78848	@, pCtx,
	mov	r1, #32	@,
	add	r0, r0, #576	@,,
	bl	BsSkip	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	copyright_extension, .-copyright_extension
	.align	2
	.global	picture_temporal_scalable_extension
	.type	picture_temporal_scalable_extension, %function
picture_temporal_scalable_extension:
	.fnstart
.LFB1557:
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
	add	r0, r0, #78848	@, pCtx,
	mov	r1, #32	@,
	add	r0, r0, #576	@,,
	bl	BsSkip	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	picture_temporal_scalable_extension, .-picture_temporal_scalable_extension
	.align	2
	.global	picture_spatial_scalable_extension
	.type	picture_spatial_scalable_extension, %function
picture_spatial_scalable_extension:
	.fnstart
.LFB1556:
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
	add	r0, r0, #78848	@, pCtx,
	mov	r1, #32	@,
	add	r0, r0, #576	@,,
	bl	BsSkip	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	picture_spatial_scalable_extension, .-picture_spatial_scalable_extension
	.align	2
	.global	sequence_scalable_extension
	.type	sequence_scalable_extension, %function
sequence_scalable_extension:
	.fnstart
.LFB1553:
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
	add	r0, r0, #78848	@, pCtx,
	mov	r1, #32	@,
	add	r0, r0, #576	@,,
	bl	BsSkip	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	sequence_scalable_extension, .-sequence_scalable_extension
	.align	2
	.global	MP2_ClearCurPic
	.type	MP2_ClearCurPic, %function
MP2_ClearCurPic:
	.fnstart
.LFB1571:
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
	movw	r8, #45316	@ tmp166,
	ldr	r3, [r0, r8]	@ <variable>.Mp2DecParam.SlcNum, <variable>.Mp2DecParam.SlcNum
	mov	r6, r0	@ pCtx, pCtx
	cmp	r3, #0	@ <variable>.Mp2DecParam.SlcNum,
	beq	.L114	@,
	movw	r7, #:lower16:114672	@ tmp181,
	mov	r4, r0	@ ivtmp.1086, pCtx
	movt	r7, #:upper16:114672	@ tmp181,
	mov	r5, #0	@ i,
	b	.L116	@
.L115:
	ldr	r2, [r6, r8]	@ <variable>.Mp2DecParam.SlcNum, <variable>.Mp2DecParam.SlcNum
	add	r4, r4, #44	@ ivtmp.1086, ivtmp.1086,
	cmp	r2, r5	@ <variable>.Mp2DecParam.SlcNum, i
	bls	.L114	@,
.L116:
	ldr	r1, [r4, #284]	@, <variable>.BsID
	add	r5, r5, #1	@ i, i,
	ldr	r0, [r6, r7]	@, <variable>.ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r0, [r4, #264]	@ <variable>.BsPhyAddr, <variable>.BsPhyAddr
	cmp	r0, #0	@ <variable>.BsPhyAddr,
	beq	.L115	@,
	ldr	r1, [r4, #272]	@ <variable>.BsLenInBit, <variable>.BsLenInBit
	cmp	r1, #0	@ <variable>.BsLenInBit,
	beq	.L115	@,
	ldr	r1, [r4, #288]	@, <variable>.BsID
	add	r4, r4, #44	@ ivtmp.1086, ivtmp.1086,
	ldr	r0, [r6, r7]	@, <variable>.ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r2, [r6, r8]	@ <variable>.Mp2DecParam.SlcNum, <variable>.Mp2DecParam.SlcNum
	cmp	r2, r5	@ <variable>.Mp2DecParam.SlcNum, i
	bhi	.L116	@,
.L114:
	movw	r3, #45316	@ tmp178,
	mov	ip, #0	@ tmp179,
	str	ip, [r6, r3]	@ tmp179, <variable>.Mp2DecParam.SlcNum
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	MP2_ClearCurPic, .-MP2_ClearCurPic
	.align	2
	.global	MP2_WriteSliceInfo
	.type	MP2_WriteSliceInfo, %function
MP2_WriteSliceInfo:
	.fnstart
.LFB1578:
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
	movw	r1, #45316	@ tmp141,
	mov	r4, r0	@ pCtx, pCtx
	ldr	r0, [r0, r1]	@ D.41007, <variable>.Mp2DecParam.SlcNum
	mov	r5, #44	@ tmp144,
	movw	r3, #:lower16:79400	@ tmp147,
	movt	r3, #:upper16:79400	@ tmp147,
	movw	r2, #:lower16:79416	@ tmp154,
	mla	r5, r5, r0, r4	@ tmp145, tmp144, D.41007, pCtx
	ldr	ip, [r4, r3]	@ <variable>.SliceInfo.intra_slice, <variable>.SliceInfo.intra_slice
	movt	r2, #:upper16:79416	@ tmp154,
	movw	lr, #:lower16:79412	@ tmp161,
	movt	lr, #:upper16:79412	@ tmp161,
	add	r0, r5, #288	@ tmp146, tmp145,
	str	ip, [r0, #8]	@ <variable>.SliceInfo.intra_slice, <variable>.intra_slice
	ldr	r2, [r4, r2]	@ <variable>.SliceInfo.quantiser_scale_code, <variable>.SliceInfo.quantiser_scale_code
	str	r2, [r5, #300]	@ <variable>.SliceInfo.quantiser_scale_code, <variable>.quantiser_scale_code
	ldr	r3, [r4, lr]	@ <variable>.SliceInfo.slicen_start_mb_num, <variable>.SliceInfo.slicen_start_mb_num
	str	r3, [r0, #4]	@ <variable>.SliceInfo.slicen_start_mb_num, <variable>.slice_start_mbn
	ldr	r2, [r4, r1]	@ temp.1117, <variable>.Mp2DecParam.SlcNum
	cmp	r2, #1024	@ temp.1117,
	bcs	.L126	@,
	movw	r3, #:lower16:79448	@ tmp172,
	movt	r3, #:upper16:79448	@ tmp172,
	movw	r0, #:lower16:79144	@ tmp179,
	movt	r0, #:upper16:79144	@ tmp179,
	ldr	r1, [r4, r3]	@ D.41021, <variable>.Bs.TotalPos
	movw	r3, #:lower16:79160	@ tmp193,
	ldr	r2, [r4, r0]	@ <variable>.CodecInfo.stMp2Packet.BsPhyAddr, <variable>.CodecInfo.stMp2Packet.BsPhyAddr
	movt	r3, #:upper16:79160	@ tmp193,
	and	lr, r1, #7	@ tmp187, D.41021,
	str	lr, [r5, #276]	@ tmp187, <variable>.BsBitOffset
	add	ip, r2, r1, lsr #3	@, tmp181, <variable>.CodecInfo.stMp2Packet.BsPhyAddr, D.41021,
	str	ip, [r5, #260]	@ tmp181, <variable>.BsPhyAddr
	ldr	lr, [r4, r3]	@ <variable>.CodecInfo.stMp2Packet.StreamID, <variable>.CodecInfo.stMp2Packet.StreamID
	add	r0, r4, #78848	@, pCtx,
	add	r0, r0, #576	@,,
	str	lr, [r5, #284]	@ <variable>.CodecInfo.stMp2Packet.StreamID, <variable>.BsID
	bl	BsResidBits	@
	movw	r3, #:lower16:79132	@ tmp202,
	movt	r3, #:upper16:79132	@ tmp202,
	str	r0, [r5, #268]	@, <variable>.BsLenInBit
	ldrsh	r2, [r4, r3]	@ D.41026,
	cmp	r2, #1	@ D.41026,
	beq	.L127	@,
	cmp	r2, #256	@ D.41026,
	bne	.L124	@,
	movw	ip, #:lower16:79148	@ tmp234,
	movt	ip, #:upper16:79148	@ tmp234,
	add	r0, r5, #276	@ tmp240, tmp145,
	movw	lr, #:lower16:79164	@ tmp247,
	ldr	r1, [r4, ip]	@ <variable>.CodecInfo.stMp2Packet.BsPhyAddr, <variable>.CodecInfo.stMp2Packet.BsPhyAddr
	movt	lr, #:upper16:79164	@ tmp247,
	mov	r3, #0	@ tmp241,
	str	r3, [r0, #4]	@ tmp241, <variable>.BsBitOffset
	movw	ip, #:lower16:79156	@ tmp254,
	movt	ip, #:upper16:79156	@ tmp254,
	str	r1, [r5, #264]	@ <variable>.CodecInfo.stMp2Packet.BsPhyAddr, <variable>.BsPhyAddr
	movw	r1, #45316	@ tmp262,
	ldr	r2, [r4, lr]	@ <variable>.CodecInfo.stMp2Packet.StreamID, <variable>.CodecInfo.stMp2Packet.StreamID
	str	r2, [r5, #288]	@ <variable>.CodecInfo.stMp2Packet.StreamID, <variable>.BsID
	ldr	r3, [r4, ip]	@ <variable>.CodecInfo.stMp2Packet.BsLength, <variable>.CodecInfo.stMp2Packet.BsLength
	mov	r0, r3, asl #3	@ tmp256, <variable>.CodecInfo.stMp2Packet.BsLength,
	str	r0, [r5, #272]	@ tmp256, <variable>.BsLenInBit
	ldr	r3, [r4, r1]	@ <variable>.Mp2DecParam.SlcNum, <variable>.Mp2DecParam.SlcNum
	mov	r0, #1	@ D.41018,
	add	r2, r3, r0	@ tmp265, <variable>.Mp2DecParam.SlcNum,
	str	r2, [r4, r1]	@ tmp265, <variable>.Mp2DecParam.SlcNum
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L126:
	mov	r3, #1024	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	MP2_ClearCurPic	@
	movw	r3, #:lower16:79180	@ tmp166,
	movt	r3, #:upper16:79180	@ tmp166,
	movw	r2, #:lower16:79236	@ tmp170,
	movt	r2, #:upper16:79236	@ tmp170,
	mov	r1, #0	@ tmp171,
	ldr	ip, [r4, r3]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	mov	r0, r1	@ D.41018, tmp171
	str	r1, [r4, r2]	@ tmp171, <variable>.CodecInfo.HDRState
	bic	r1, ip, #5767168	@ tmp169, <variable>.CodecInfo.StreamIntegrality,
	str	r1, [r4, r3]	@ tmp169, <variable>.CodecInfo.StreamIntegrality
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L127:
	add	r1, r5, #260	@ tmp208, tmp145,
	add	lr, r5, #268	@ tmp226, tmp145,
	add	r2, r5, #276	@ tmp214, tmp145,
	add	r5, r5, #284	@ tmp220, tmp145,
	mov	ip, #0	@ tmp209,
	str	ip, [r1, #4]	@ tmp209, <variable>.BsPhyAddr
	movw	r1, #45316	@ tmp262,
	str	ip, [r2, #4]	@ tmp209, <variable>.BsBitOffset
	str	ip, [lr, #4]	@ tmp209, <variable>.BsLenInBit
	mov	r0, #1	@ D.41018,
	str	ip, [r5, #4]	@ tmp209, <variable>.BsID
	ldr	r3, [r4, r1]	@ <variable>.Mp2DecParam.SlcNum, <variable>.Mp2DecParam.SlcNum
	add	r2, r3, r0	@ tmp265, <variable>.Mp2DecParam.SlcNum,
	str	r2, [r4, r1]	@ tmp265, <variable>.Mp2DecParam.SlcNum
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L124:
	movw	lr, #:lower16:79133	@ tmp260,
	movt	lr, #:upper16:79133	@ tmp260,
	ldrsb	r2, [r4, r3]	@, <variable>.CodecInfo.stMp2Packet.IsLastSeg
	mov	r0, #1	@,
	ldrsb	r3, [r4, lr]	@, <variable>.CodecInfo.stMp2Packet.IsLastSeg
	movw	r1, #:lower16:.LC15	@,
	movt	r1, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.41018,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	MP2_WriteSliceInfo, .-MP2_WriteSliceInfo
	.align	2
	.global	MP2_DecSlice
	.type	MP2_DecSlice, %function
MP2_DecSlice:
	.fnstart
.LFB1572:
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
	movw	r3, #:lower16:80504	@ tmp140,
	movw	lr, #:lower16:79136	@ tmp142,
	movt	r3, #:upper16:80504	@ tmp140,
	movt	lr, #:upper16:79136	@ tmp142,
	movw	r2, #:lower16:79152	@ tmp145,
	movt	r2, #:upper16:79152	@ tmp145,
	movw	r5, #:lower16:79216	@ tmp148,
	movt	r5, #:upper16:79216	@ tmp148,
	ldr	r3, [r0, r3]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	ldr	r6, [r0, lr]	@ <variable>.CodecInfo.stMp2Packet.BsVirAddr, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	mov	r4, r0	@ pCtx, pCtx
	ldr	r7, [r0, r2]	@ <variable>.CodecInfo.stMp2Packet.BsLength, <variable>.CodecInfo.stMp2Packet.BsLength
	movw	ip, #:lower16:79404	@ tmp141,
	ldr	lr, [r0, r5]	@ <variable>.CodecInfo.MpegFlag, <variable>.CodecInfo.MpegFlag
	movt	ip, #:upper16:79404	@ tmp141,
	movw	r0, #:lower16:79408	@ tmp144,
	movw	r2, #:lower16:79368	@ tmp147,
	movt	r0, #:upper16:79408	@ tmp144,
	movt	r2, #:upper16:79368	@ tmp147,
	str	r6, [r4, ip]	@ <variable>.CodecInfo.stMp2Packet.BsVirAddr, <variable>.SliceInfo.VirAddr
	cmp	lr, #1	@ <variable>.CodecInfo.MpegFlag,
	movne	r5, #0	@, tmp150
	moveq	r5, #1	@, tmp150
	str	r7, [r4, r0]	@ <variable>.CodecInfo.stMp2Packet.BsLength, <variable>.SliceInfo.ByteLen
	movw	r7, #:lower16:79372	@ tmp151,
	str	r5, [r4, r2]	@ tmp150, <variable>.SliceInfo.mpeg1_flag
	movt	r7, #:upper16:79372	@ tmp151,
	ldr	ip, [r3, #60]	@ <variable>.mb_height, <variable>.mb_height
	movw	r6, #:lower16:79376	@ tmp153,
	movt	r6, #:upper16:79376	@ tmp153,
	movw	r5, #:lower16:79388	@ tmp163,
	movt	r5, #:upper16:79388	@ tmp163,
	add	lr, r4, #78848	@ tmp167, pCtx,
	str	ip, [r4, r7]	@ <variable>.mb_height, <variable>.SliceInfo.pic_height_in_mb
	movw	r2, #:lower16:79380	@ tmp155,
	ldr	r7, [r3, #56]	@ <variable>.mb_width, <variable>.mb_width
	movt	r2, #:upper16:79380	@ tmp155,
	movw	ip, #:lower16:79420	@ tmp165,
	movt	ip, #:upper16:79420	@ tmp165,
	mov	r0, lr	@, tmp167
	add	lr, lr, #576	@ tmp167, tmp167,
	str	r7, [r4, r6]	@ <variable>.mb_width, <variable>.SliceInfo.pic_width_in_mb
	uxtb	r6, r1	@ tmp164, code
	ldr	r1, [r3, #48]	@ <variable>.horizontal_size, <variable>.horizontal_size
	add	r0, r0, #520	@,,
	ldr	r3, [r3, #52]	@ <variable>.vertical_size, <variable>.vertical_size
	add	r1, r1, #15	@ tmp159, <variable>.horizontal_size,
	str	r6, [r4, r5]	@ tmp164, <variable>.SliceInfo.slice_vertical_position
	add	r3, r3, #15	@ tmp156, <variable>.vertical_size,
	str	lr, [r4, ip]	@ tmp167, <variable>.SliceInfo.pBs
	mov	r1, r1, lsr #4	@ tmp161, tmp159,
	mov	r5, r3, lsr #4	@ tmp158, tmp156,
	mul	r3, r1, r5	@ tmp162, tmp161, tmp158
	str	r3, [r4, r2]	@ tmp162, <variable>.SliceInfo.pic_total_mb_num
	bl	MP2_GetFirstMbInSlice	@
	cmp	r0, #1	@ D.40888,
	mov	r5, r0	@ D.40888,
	beq	.L129	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ ret,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L129:
	mov	r0, r4	@, pCtx
	bl	MP2_WriteSliceInfo	@
	cmp	r0, #1	@ D.40893,
	ldmeqfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	mov	r0, r5	@, D.40888
	movw	r1, #:lower16:.LC17	@,
	movt	r1, #:upper16:.LC17	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ ret,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	MP2_DecSlice, .-MP2_DecSlice
	.align	2
	.global	MP2_ClearCurPacket
	.type	MP2_ClearCurPacket, %function
MP2_ClearCurPacket:
	.fnstart
.LFB1570:
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
	mov	r4, r1	@ pMp2Packet, pMp2Packet
	ldr	r1, [r1, #28]	@, <variable>.StreamID
	mov	r5, r0	@ ChanID, ChanID
	bl	SM_ReleaseStreamSeg	@
	ldrsb	r3, [r4, #0]	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r3, #1	@ <variable>.IsLastSeg,
	beq	.L134	@,
	mov	r0, r5	@, ChanID
	ldr	r1, [r4, #32]	@, <variable>.StreamID
	bl	SM_ReleaseStreamSeg	@
.L134:
	mov	r0, r4	@, pMp2Packet
	mov	r1, #36	@,
	bl	__memzero	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	MP2_ClearCurPacket, .-MP2_ClearCurPacket
	.align	2
	.global	MP2_ReceivePacket
	.type	MP2_ReceivePacket, %function
MP2_ReceivePacket:
	.fnstart
.LFB1569:
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
	subs	r4, r1, #0	@ pPacket, pPacket
	mov	r1, r0	@ pMp2CodecInfo, pMp2CodecInfo
	beq	.L142	@,
	movw	ip, #33800	@ tmp141,
	mov	r5, #0	@ tmp142,
	str	r5, [r0, ip]	@ tmp142, <variable>.BsOffset
	movw	r3, #33844	@ tmp143,
	ldr	r0, [r4, #16]	@ <variable>.LenInByte, <variable>.LenInByte
	movw	ip, #33816	@ tmp145,
	str	r0, [r1, r3]	@ <variable>.LenInByte, <variable>.PacketTail
	movw	r3, #33808	@ tmp147,
	ldr	r0, [r4, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r0, [r1, ip]	@ <variable>.PhyAddr, <variable>.stMp2Packet.BsPhyAddr
	movw	r0, #33824	@ tmp149,
	ldr	ip, [r4, #0]	@ <variable>.VirAddr, <variable>.VirAddr
	str	ip, [r1, r3]	@ <variable>.VirAddr, <variable>.stMp2Packet.BsVirAddr
	movw	r3, #33804	@ tmp151,
	ldr	ip, [r4, #16]	@ <variable>.LenInByte, <variable>.LenInByte
	str	ip, [r1, r0]	@ <variable>.LenInByte, <variable>.stMp2Packet.BsLength
	movw	ip, #33832	@ tmp154,
	ldrb	r0, [r4, #5]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	strb	r0, [r1, r3]	@ <variable>.IsLastSeg, <variable>.stMp2Packet.IsLastSeg
	ldr	r0, [r4, #20]	@ <variable>.StreamID, <variable>.StreamID
	str	r0, [r1, ip]	@ <variable>.StreamID, <variable>.stMp2Packet.StreamID
	ldrb	r0, [r4, #5]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r0, #1	@ <variable>.IsLastSeg,
	beq	.L139	@,
	ldr	r0, [r4, #92]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r3, #33820	@ tmp157,
	movw	ip, #33812	@ tmp159,
	str	r0, [r1, r3]	@ <variable>.PhyAddr, <variable>.stMp2Packet.BsPhyAddr
	movw	r3, #33828	@ tmp161,
	ldr	r0, [r4, #80]	@ <variable>.VirAddr, <variable>.VirAddr
	str	r0, [r1, ip]	@ <variable>.VirAddr, <variable>.stMp2Packet.BsVirAddr
	movw	r0, #33805	@ tmp163,
	ldr	ip, [r4, #96]	@ <variable>.LenInByte, <variable>.LenInByte
	str	ip, [r1, r3]	@ <variable>.LenInByte, <variable>.stMp2Packet.BsLength
	movw	r3, #33836	@ tmp166,
	ldrb	ip, [r4, #85]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	strb	ip, [r1, r0]	@ <variable>.IsLastSeg, <variable>.stMp2Packet.IsLastSeg
	ldr	r0, [r4, #100]	@ <variable>.StreamID, <variable>.StreamID
	str	r0, [r1, r3]	@ <variable>.StreamID, <variable>.stMp2Packet.StreamID
	ldrb	r0, [r4, #85]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r0, #1	@ <variable>.IsLastSeg,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	add	r1, r1, #33792	@, pMp2CodecInfo,
	mov	r0, r2	@, ChanID
	add	r1, r1, #12	@,,
	bl	MP2_ClearCurPacket	@
	ldrb	r2, [r4, #85]	@ zero_extendqisi2	@, <variable>.IsLastSeg
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC19	@,
	movt	r1, #:upper16:.LC19	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.40799, tmp142
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L139:
	movw	ip, #33836	@ tmp182,
	movw	r2, #33820	@ tmp173,
	str	r5, [r1, ip]	@ tmp142, <variable>.stMp2Packet.StreamID
	movw	r3, #33812	@ tmp175,
	str	r5, [r1, r2]	@ tmp142, <variable>.stMp2Packet.BsPhyAddr
	movw	ip, #33828	@ tmp177,
	movw	r2, #33805	@ tmp179,
	str	r5, [r1, r3]	@ tmp142, <variable>.stMp2Packet.BsVirAddr
	str	r5, [r1, ip]	@ tmp142, <variable>.stMp2Packet.BsLength
	strb	r5, [r1, r2]	@ tmp142, <variable>.stMp2Packet.IsLastSeg
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L142:
	movw	r3, #33860	@ tmp139,
	mov	r0, #1	@,
	ldr	r2, [r1, r3]	@, <variable>.Frame_Cnt
	movw	r1, #:lower16:.LC18	@,
	movt	r1, #:upper16:.LC18	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.40799, pPacket
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	MP2_ReceivePacket, .-MP2_ReceivePacket
	.align	2
	.global	MPEG2DEC_GetImageBuffer
	.type	MPEG2DEC_GetImageBuffer, %function
MPEG2DEC_GetImageBuffer:
	.fnstart
.LFB1567:
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
	mov	r4, r0	@ pCtx, pCtx
	movw	r0, #45329	@ tmp138,
	ldrb	r3, [r4, r0]	@ zero_extendqisi2	@ <variable>.CodecInfo.Last_FieldStruct, <variable>.CodecInfo.Last_FieldStruct
	cmp	r3, #3	@ <variable>.CodecInfo.Last_FieldStruct,
	beq	.L144	@,
	movw	r2, #:lower16:79192	@ tmp140,
	movt	r2, #:upper16:79192	@ tmp140,
	ldr	r1, [r4, r2]	@ <variable>.CodecInfo.Second_Field, <variable>.CodecInfo.Second_Field
	cmp	r1, #0	@ <variable>.CodecInfo.Second_Field,
	beq	.L145	@,
.L144:
	movw	r5, #:lower16:114672	@ tmp142,
	movt	r5, #:upper16:114672	@ tmp142,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@,
	beq	.L145	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmn	r0, #1	@,
	beq	.L146	@,
.L149:
	mov	r0, #0	@ D.40771,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L145:
	mov	r0, #1	@ D.40771,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L146:
	add	ip, r4, #79872	@, pCtx,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	add	r1, ip, #640	@,,
	bl	FSP_ClearNotInVoQueue	@
	b	.L149	@
	.fnend
	.size	MPEG2DEC_GetImageBuffer, .-MPEG2DEC_GetImageBuffer
	.align	2
	.global	MP2_ProtocolPPSCheck
	.type	MP2_ProtocolPPSCheck, %function
MP2_ProtocolPPSCheck:
	.fnstart
.LFB1541:
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
	movw	r3, #:lower16:79216	@ tmp144,
	movt	r3, #:upper16:79216	@ tmp144,
	movw	r2, #:lower16:80504	@ tmp143,
	movt	r2, #:upper16:80504	@ tmp143,
	mov	r4, r0	@ pCtx, pCtx
	ldr	r3, [r0, r3]	@ <variable>.CodecInfo.MpegFlag, <variable>.CodecInfo.MpegFlag
	ldr	r1, [r0, r2]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	cmp	r3, #1	@ <variable>.CodecInfo.MpegFlag,
	beq	.L152	@,
	cmp	r3, #2	@ <variable>.CodecInfo.MpegFlag,
	beq	.L170	@,
	movw	ip, #:lower16:79180	@ tmp168,
	movt	ip, #:upper16:79180	@ tmp168,
	ldr	r2, [r0, ip]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orr	r2, r2, #63	@ prephitmp.1238, <variable>.CodecInfo.StreamIntegrality,
	str	r2, [r0, ip]	@ prephitmp.1238, <variable>.CodecInfo.StreamIntegrality
	ldrb	r3, [r1, #22]	@ zero_extendqisi2	@ prephitmp.1242, <variable>.picture_coding_type
.L160:
	tst	r2, #24	@ prephitmp.1238,
	beq	.L164	@,
	cmp	r3, #3	@ prephitmp.1242,
	ldmeqfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	movw	lr, #:lower16:79180	@ tmp172,
	movw	r5, #:lower16:114672	@ tmp174,
	movt	lr, #:upper16:79180	@ tmp172,
	movt	r5, #:upper16:114672	@ tmp174,
	movw	r7, #:lower16:79260	@ tmp176,
	movt	r7, #:upper16:79260	@ tmp176,
	orr	r6, r2, #64	@ tmp173, prephitmp.1238,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	str	r6, [r4, lr]	@ tmp173, <variable>.CodecInfo.StreamIntegrality
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImg,
	beq	.L166	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	movw	sl, #:lower16:79256	@ tmp200,
	ldr	r1, [r6, #212]	@, <variable>.p_usrdat
	movt	sl, #:upper16:79256	@ tmp200,
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #216]	@, <variable>.p_usrdat
	mov	r8, #0	@ tmp190,
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #220]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #224]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r8, [r6, #224]	@ tmp190, <variable>.p_usrdat
	str	r8, [r6, #212]	@ tmp190, <variable>.p_usrdat
	mov	r2, #1	@,
	str	r8, [r6, #216]	@ tmp190, <variable>.p_usrdat
	str	r8, [r6, #220]	@ tmp190, <variable>.p_usrdat
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, sl]	@, <variable>.CodecInfo.FwdFsID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	str	r8, [r4, r7]	@ tmp190, <variable>.CodecInfo.BwdFsID
	str	r8, [r4, sl]	@ tmp190, <variable>.CodecInfo.FwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, r8	@,
	bne	.L171	@,
.L166:
	movw	r3, #:lower16:79220	@ tmp212,
	movt	r3, #:upper16:79220	@ tmp212,
	mov	r1, #0	@ tmp213,
	str	r1, [r4, r3]	@ tmp213,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L164:
	cmp	r3, #1	@ prephitmp.1242,
	biceq	r2, r2, #192	@ tmp215, prephitmp.1238,
	movweq	r3, #:lower16:79180	@ tmp214,
	movteq	r3, #:upper16:79180	@ tmp214,
	streq	r2, [r4, r3]	@ tmp215,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L170:
	movw	r3, #:lower16:79180	@ tmp161,
	movt	r3, #:upper16:79180	@ tmp161,
	ldr	r2, [r0, r3]	@ prephitmp.1241, <variable>.CodecInfo.StreamIntegrality
	tst	r2, #1048576	@ prephitmp.1241,
	orreq	r2, r2, #16	@ prephitmp.1241, prephitmp.1241,
	streq	r2, [r0, r3]	@ prephitmp.1241, <variable>.CodecInfo.StreamIntegrality
	ldrb	r3, [r1, #22]	@ zero_extendqisi2	@ prephitmp.1242, <variable>.picture_coding_type
	sub	ip, r3, #1	@ tmp164, prephitmp.1242,
	uxtb	r0, ip	@ tmp165, tmp164
	cmp	r0, #2	@ tmp165,
	bls	.L169	@,
.L163:
	movw	r0, #:lower16:79180	@ tmp167,
	movt	r0, #:upper16:79180	@ tmp167,
	orr	r2, r2, #8	@ prephitmp.1238, prephitmp.1241,
	str	r2, [r4, r0]	@ prephitmp.1238, <variable>.CodecInfo.StreamIntegrality
	ldrb	r3, [r1, #22]	@ zero_extendqisi2	@ prephitmp.1242, <variable>.picture_coding_type
	b	.L160	@
.L152:
	ldrb	r3, [r1, #22]	@ zero_extendqisi2	@ prephitmp.1242, <variable>.picture_coding_type
	sub	r2, r3, #1	@ tmp146, prephitmp.1242,
	uxtb	r2, r2	@ tmp147, tmp146
	cmp	r2, #3	@ tmp147,
	movwhi	r3, #:lower16:79180	@ tmp149,
	movthi	r3, #:upper16:79180	@ tmp149,
	movwls	r2, #:lower16:79180	@ tmp148,
	movtls	r2, #:upper16:79180	@ tmp148,
	ldrhi	r2, [r0, r3]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	ldrls	r2, [r0, r2]	@ prephitmp.1244, <variable>.CodecInfo.StreamIntegrality
	orrhi	r2, r2, #8	@ prephitmp.1244, <variable>.CodecInfo.StreamIntegrality,
	strhi	r2, [r0, r3]	@ prephitmp.1244, <variable>.CodecInfo.StreamIntegrality
	ldrhib	r3, [r1, #22]	@ zero_extendqisi2	@ prephitmp.1242, <variable>.picture_coding_type
	sub	ip, r3, #2	@ tmp152, prephitmp.1242,
	uxtb	r0, ip	@ tmp153, tmp152
	cmp	r0, #1	@ tmp153,
	bls	.L172	@,
.L169:
	movw	r1, #:lower16:79180	@ tmp166,
	movt	r1, #:upper16:79180	@ tmp166,
	ldr	r2, [r4, r1]	@ prephitmp.1238, <variable>.CodecInfo.StreamIntegrality
	b	.L160	@
.L172:
	ldrb	r0, [r1, #24]	@ zero_extendqisi2	@ <variable>.forward_f_code, <variable>.forward_f_code
	cmp	r0, #0	@ <variable>.forward_f_code,
	orreq	r2, r2, #8	@ prephitmp.1248, prephitmp.1244,
	movweq	r3, #:lower16:79180	@ tmp156,
	movteq	r3, #:upper16:79180	@ tmp156,
	movwne	r2, #:lower16:79180	@ tmp155,
	movtne	r2, #:upper16:79180	@ tmp155,
	streq	r2, [r4, r3]	@ prephitmp.1248, <variable>.CodecInfo.StreamIntegrality
	ldreqb	r3, [r1, #22]	@ zero_extendqisi2	@ prephitmp.1242, <variable>.picture_coding_type
	ldrne	r2, [r4, r2]	@ prephitmp.1248, <variable>.CodecInfo.StreamIntegrality
	cmp	r3, #3	@ prephitmp.1242,
	bne	.L169	@,
	ldrb	ip, [r1, #26]	@ zero_extendqisi2	@ <variable>.backward_f_code, <variable>.backward_f_code
	cmp	ip, #0	@ <variable>.backward_f_code,
	beq	.L163	@,
	b	.L169	@
.L171:
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, r7]	@ D.39746, <variable>.CodecInfo.BwdFsID
	str	r0, [r4, sl]	@ D.39746, <variable>.CodecInfo.FwdFsID
	b	.L166	@
	.fnend
	.size	MP2_ProtocolPPSCheck, .-MP2_ProtocolPPSCheck
	.align	2
	.global	MPEG2DEC_RecycleImage
	.type	MPEG2DEC_RecycleImage, %function
MPEG2DEC_RecycleImage:
	.fnstart
.LFB1564:
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
	subs	r5, r0, #0	@ pCtx, pCtx
	mov	r6, r1	@ img_id, img_id
	moveq	r0, r5	@ D.40559, pCtx
	ldmeqfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	movw	r4, #:lower16:114672	@ tmp139,
	movt	r4, #:upper16:114672	@ tmp139,
	mov	r2, #0	@,
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	bl	FSP_SetDisplay	@
	mov	r1, r6	@, img_id
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImg,
	moveq	r0, #1	@ D.40559,
	ldmeqfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	mov	r7, #0	@ tmp146,
	ldr	r1, [r6, #212]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r7, [r6, #212]	@ tmp146, <variable>.p_usrdat
	ldr	r1, [r6, #216]	@, <variable>.p_usrdat
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r7, [r6, #216]	@ tmp146, <variable>.p_usrdat
	ldr	r1, [r6, #220]	@, <variable>.p_usrdat
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r7, [r6, #220]	@ tmp146, <variable>.p_usrdat
	ldr	r1, [r6, #224]	@, <variable>.p_usrdat
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r0, #1	@ D.40559,
	str	r7, [r6, #224]	@ tmp146, <variable>.p_usrdat
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	MPEG2DEC_RecycleImage, .-MPEG2DEC_RecycleImage
	.align	2
	.global	MPEG2DEC_Init
	.type	MPEG2DEC_Init, %function
MPEG2DEC_Init:
	.fnstart
.LFB1561:
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
	movw	r5, #:lower16:80856	@ tmp139,
	movt	r5, #:upper16:80856	@ tmp139,
	mov	r7, r1	@ pstExtraData, pstExtraData
	movw	r1, #:lower16:114696	@,
	movt	r1, #:upper16:114696	@,
	ldr	r8, [r0, r5]	@ D.40458, <variable>.ImageQue.ResetMagicWord
	mov	r4, r0	@ pCtx, pCtx
	bl	__memzero	@
	add	r2, r4, #79872	@, pCtx,
	add	r0, r2, #640	@,,
	mov	r6, #0	@ tmp151,
	str	r8, [r4, r5]	@ D.40458, <variable>.ImageQue.ResetMagicWord
	movw	r5, #:lower16:114684	@ tmp150,
	bl	ResetVoQueue	@
	add	lr, r4, #79872	@ tmp146, pCtx,
	movw	ip, #:lower16:80508	@ tmp144,
	movt	ip, #:upper16:80508	@ tmp144,
	movt	r5, #:upper16:114684	@ tmp150,
	movw	r1, #:lower16:80504	@ tmp147,
	movw	r2, #:lower16:79192	@ tmp152,
	movt	r1, #:upper16:80504	@ tmp147,
	movt	r2, #:upper16:79192	@ tmp152,
	movw	r3, #:lower16:79236	@ tmp157,
	movt	r3, #:upper16:79236	@ tmp157,
	mov	r0, lr	@ tmp149, tmp146
	add	lr, lr, #256	@ tmp146, tmp146,
	str	lr, [r4, ip]	@ tmp146, <variable>.pSyntaxInfOld
	movw	lr, #45329	@ tmp154,
	str	r6, [r4, r5]	@ tmp151, <variable>.PPicFound
	str	r6, [r4, r3]	@ tmp151, <variable>.CodecInfo.HDRState
	add	r5, r0, #444	@ tmp149, tmp149,
	str	r7, [r4, #0]	@ pstExtraData, <variable>.pstExtraData
	mov	r0, #3	@ tmp155,
	str	r5, [r4, r1]	@ tmp149, <variable>.pSyntaxInfNew
	mov	r5, #1	@ tmp153,
	strb	r0, [r4, lr]	@ tmp155, <variable>.CodecInfo.Last_FieldStruct
	movw	ip, #:lower16:79168	@ tmp159,
	str	r5, [r4, r2]	@ tmp153, <variable>.CodecInfo.Second_Field
	movt	ip, #:upper16:79168	@ tmp159,
	ldr	r1, [r7, #8]	@ <variable>.s32DecMode, <variable>.s32DecMode
	movw	r2, #:lower16:79228	@ tmp161,
	movt	r2, #:upper16:79228	@ tmp161,
	mov	r0, r4	@, pCtx
	str	r6, [r4, r2]	@ tmp151, <variable>.CodecInfo.Imgbuf_allocated
	str	r1, [r4, ip]	@ <variable>.s32DecMode, <variable>.CodecInfo.UsedDecMode
	bl	VCTRL_GetChanIDByCtx	@
	movw	r3, #:lower16:114672	@ tmp163,
	movt	r3, #:upper16:114672	@ tmp163,
	cmn	r0, #1	@ D.40471,
	str	r0, [r4, r3]	@ D.40471, <variable>.ChanID
	movne	r0, r5	@ D.40476, tmp153
	ldmnefd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	mov	r0, r6	@, tmp151
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.40476,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	MPEG2DEC_Init, .-MPEG2DEC_Init
	.align	2
	.global	extra_bit_information
	.type	extra_bit_information, %function
extra_bit_information:
	.fnstart
.LFB1558:
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
	add	r4, r0, #78848	@ pBs, pCtx,
	add	r4, r4, #576	@ pBs, pBs,
	mov	r5, #0	@ Byte_Count,
.L183:
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #8	@,
	cmp	r0, #0	@,
	mov	r0, r4	@, pBs
	beq	.L184	@,
	bl	BsSkip	@
	mov	r0, r4	@, pBs
	bl	BsResidBits	@
	add	r5, r5, #1	@ Byte_Count, Byte_Count,
	cmp	r0, #8	@,
	bgt	.L183	@,
.L184:
	mov	r0, r5	@, Byte_Count
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	extra_bit_information, .-extra_bit_information
	.align	2
	.global	picture_coding_extension
	.type	picture_coding_extension, %function
picture_coding_extension:
	.fnstart
.LFB1555:
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
	movw	r7, #:lower16:79180	@ tmp165,
	movt	r7, #:upper16:79180	@ tmp165,
	add	r4, r0, #78848	@ pBs, pCtx,
	add	r4, r4, #576	@ pBs, pBs,
	movw	lr, #:lower16:80504	@ tmp164,
	ldr	r2, [r0, r7]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	movt	lr, #:upper16:80504	@ tmp164,
	mov	r6, r0	@ pCtx, pCtx
	mov	r1, #4	@,
	orr	r5, r2, #1048576	@ tmp168, <variable>.CodecInfo.StreamIntegrality,
	str	r5, [r0, r7]	@ tmp168, <variable>.CodecInfo.StreamIntegrality
	mov	r0, r4	@, pBs
	ldr	r5, [r6, lr]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	bl	BsGet	@
	uxtb	r0, r0	@ temp.1395,
	strb	r0, [r5, #4]	@ temp.1395, <variable>.f_code
	sub	ip, r0, #10	@ tmp170, temp.1395,
	uxtb	r1, ip	@ tmp172, tmp170
	cmp	r0, #0	@ temp.1395,
	cmpne	r1, #4	@, tmp172,
	mov	r0, r4	@, pBs
	ldrls	r1, [r6, r7]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orrls	r1, r1, #16	@ tmp182, <variable>.CodecInfo.StreamIntegrality,
	strls	r1, [r6, r7]	@ tmp182, <variable>.CodecInfo.StreamIntegrality
	mov	r1, #4	@,
	bl	BsGet	@
	mov	r1, #4	@,
	uxtb	r2, r0	@ temp.1403,
	strb	r2, [r5, #5]	@ temp.1403, <variable>.f_code
	sub	r3, r2, #10	@ tmp184, temp.1403,
	mov	r0, r4	@, pBs
	uxtb	ip, r3	@ tmp186, tmp184
	cmp	r2, #0	@ temp.1403,
	cmpne	ip, #4	@, tmp186,
	movwls	ip, #:lower16:79180	@ tmp193,
	movtls	ip, #:upper16:79180	@ tmp193,
	ldrls	r2, [r6, ip]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orrls	r2, r2, #16	@ tmp196, <variable>.CodecInfo.StreamIntegrality,
	strls	r2, [r6, ip]	@ tmp196, <variable>.CodecInfo.StreamIntegrality
	bl	BsGet	@
	uxtb	r0, r0	@ temp.1388,
	strb	r0, [r5, #6]	@ temp.1388, <variable>.f_code
	sub	r1, r0, #10	@ tmp198, temp.1388,
	uxtb	r3, r1	@ tmp200, tmp198
	cmp	r0, #0	@ temp.1388,
	cmpne	r3, #4	@, tmp200,
	bhi	.L191	@,
	movw	r1, #:lower16:79180	@ tmp213,
	movt	r1, #:upper16:79180	@ tmp213,
	ldr	r2, [r6, r1]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orr	lr, r2, #16	@ tmp216, <variable>.CodecInfo.StreamIntegrality,
	str	lr, [r6, r1]	@ tmp216, <variable>.CodecInfo.StreamIntegrality
.L191:
	mov	r0, r4	@, pBs
	mov	r1, #4	@,
	bl	BsGet	@
	uxtb	r0, r0	@ D.40357,
	strb	r0, [r5, #7]	@ D.40357, <variable>.f_code
	sub	ip, r0, #10	@ tmp218, D.40357,
	uxtb	r3, ip	@ tmp220, tmp218
	cmp	r0, #0	@ D.40357,
	cmpne	r3, #4	@, tmp220,
	bhi	.L195	@,
	movw	r3, #:lower16:79180	@ tmp207,
	movt	r3, #:upper16:79180	@ tmp207,
	ldr	r0, [r6, r3]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orr	r1, r0, #16	@ tmp210, <variable>.CodecInfo.StreamIntegrality,
	str	r1, [r6, r3]	@ tmp210, <variable>.CodecInfo.StreamIntegrality
.L195:
	mov	r1, #2	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #2	@,
	strb	r0, [r5, #8]	@, <variable>.intra_dc_precision
	mov	r0, r4	@, pBs
	bl	BsGet	@
	uxtb	ip, r0	@ D.40369,
	strb	ip, [r5, #9]	@ D.40369, <variable>.picture_structure
	cmp	ip, #0	@ D.40369,
	bne	.L199	@,
	movw	r1, #:lower16:79180	@ tmp227,
	movt	r1, #:upper16:79180	@ tmp227,
	ldr	r2, [r6, r1]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orr	lr, r2, #16	@ tmp230, <variable>.CodecInfo.StreamIntegrality,
	str	lr, [r6, r1]	@ tmp230, <variable>.CodecInfo.StreamIntegrality
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L199:
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #10]	@, <variable>.top_field_first
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #11]	@, <variable>.frame_pred_frame_dct
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #12]	@, <variable>.concealment_motion_vectors
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #13]	@, <variable>.q_scale_type
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #14]	@, <variable>.intra_vlc_format
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #15]	@, <variable>.alternate_scan
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #16]	@, <variable>.repeat_first_field
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #17]	@, <variable>.chroma_420_type
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #18]	@, <variable>.progressive_frame
	mov	r0, r4	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.40392,
	strb	r0, [r5, #3]	@ D.40392, <variable>.composite_display_flag
	cmp	r0, #0	@ D.40392,
	ldmeqfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #3	@,
	strb	r0, [r5, #19]	@, <variable>.v_axis
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #20]	@, <variable>.field_sequence
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #7	@,
	strb	r0, [r5, #21]	@, <variable>.sub_carrier
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #8	@,
	str	r0, [r5, #32]	@, <variable>.burst_amplitude
	mov	r0, r4	@, pBs
	bl	BsGet	@
	str	r0, [r5, #36]	@, <variable>.sub_carrier_phase
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	picture_coding_extension, .-picture_coding_extension
	.align	2
	.global	picture_display_extension
	.type	picture_display_extension, %function
picture_display_extension:
	.fnstart
.LFB1554:
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
	movw	r7, #:lower16:80504	@ tmp145,
	movt	r7, #:upper16:80504	@ tmp145,
	movw	r2, #:lower16:79180	@ tmp146,
	movt	r2, #:upper16:79180	@ tmp146,
	mov	sl, r0	@ pCtx, pCtx
	ldr	r5, [r0, r7]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	add	r4, r0, #78848	@ pBs, pCtx,
	ldr	r1, [r0, r2]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	add	r4, r4, #576	@ pBs, pBs,
	orr	r0, r1, #2097152	@ tmp149, <variable>.CodecInfo.StreamIntegrality,
	str	r0, [sl, r2]	@ tmp149, <variable>.CodecInfo.StreamIntegrality
	ldrb	r3, [r5, #27]	@ zero_extendqisi2	@ <variable>.progressive_sequence, <variable>.progressive_sequence
	cmp	r3, #0	@ <variable>.progressive_sequence,
	beq	.L201	@,
	ldrb	r8, [r5, #16]	@ zero_extendqisi2	@ <variable>.repeat_first_field, <variable>.repeat_first_field
	cmp	r8, #0	@ <variable>.repeat_first_field,
	bne	.L225	@,
.L202:
	mov	r8, #1	@ number_of_frame_center_offsets,
.L205:
	sub	r2, r8, #1	@ tmp166, number_of_frame_center_offsets,
	mov	r1, #16	@,
	mov	r0, r4	@, pBs
	and	r7, r2, #1	@ tmp168, tmp166,
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r5, #164]	@, <variable>.frame_center_horizontal_offset
	mov	r0, r4	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@,
	beq	.L224	@,
	mov	r1, #16	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r5, #176]	@, <variable>.frame_center_vertical_offset
	mov	r0, r4	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@,
	beq	.L224	@,
	mov	r6, #1	@ i,
	cmp	r8, r6	@ number_of_frame_center_offsets, i
	add	r5, r5, #4	@ ivtmp.1437, pSyntaxInfNew,
	ldmlefd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	cmp	r7, #0	@ tmp168,
	beq	.L209	@,
	mov	r1, #16	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, r6	@, i
	str	r0, [r5, #164]	@, <variable>.frame_center_horizontal_offset
	mov	r0, r4	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@,
	beq	.L224	@,
	mov	r1, #16	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, r6	@, i
	str	r0, [r5, #176]	@, <variable>.frame_center_vertical_offset
	mov	r0, r4	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@,
	beq	.L224	@,
	mov	r6, #2	@ i,
	cmp	r8, r6	@ number_of_frame_center_offsets, i
	add	r5, r5, #4	@ ivtmp.1437, ivtmp.1437,
	bgt	.L209	@,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L206:
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r5, #176]	@, <variable>.frame_center_vertical_offset
	mov	r0, r4	@, pBs
	bl	BsGet	@
	add	r5, r7, #4	@ ivtmp.1437, tmp170,
	mov	r1, #16	@,
	cmp	r0, #0	@,
	mov	r0, r4	@, pBs
	beq	.L224	@,
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r7, #164]	@, <variable>.frame_center_horizontal_offset
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #16	@,
	cmp	r0, #0	@,
	mov	r0, r4	@, pBs
	beq	.L224	@,
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r7, #176]	@, <variable>.frame_center_vertical_offset
	mov	r0, r4	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@,
	beq	.L224	@,
	cmp	r8, r6	@ number_of_frame_center_offsets, i
	ble	.L226	@,
.L209:
	mov	r1, #16	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	add	r6, r6, r1	@ tmp169, i,
	add	r7, r5, #4	@ tmp170, ivtmp.1437,
	add	r6, r6, r1	@ i, tmp169,
	str	r0, [r5, #164]	@, <variable>.frame_center_horizontal_offset
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #16	@,
	cmp	r0, #0	@,
	mov	r0, r4	@, pBs
	bne	.L206	@,
.L224:
	movw	r1, #:lower16:79180	@ tmp159,
	movt	r1, #:upper16:79180	@ tmp159,
	ldr	ip, [sl, r1]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orr	r0, ip, #32	@ tmp162, <variable>.CodecInfo.StreamIntegrality,
	str	r0, [sl, r1]	@ tmp162, <variable>.CodecInfo.StreamIntegrality
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L201:
	ldrb	lr, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	cmp	lr, #3	@ <variable>.picture_structure,
	bne	.L202	@,
	ldrb	r3, [r5, #16]	@ zero_extendqisi2	@ <variable>.repeat_first_field, <variable>.repeat_first_field
	cmp	r3, #0	@ <variable>.repeat_first_field,
	beq	.L204	@,
.L203:
	mov	r8, #3	@ number_of_frame_center_offsets,
	b	.L205	@
.L225:
	ldrb	ip, [r5, #10]	@ zero_extendqisi2	@ <variable>.top_field_first, <variable>.top_field_first
	cmp	ip, #0	@ <variable>.top_field_first,
	bne	.L203	@,
.L204:
	mov	r8, #2	@ number_of_frame_center_offsets,
	b	.L205	@
.L226:
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	.fnend
	.size	picture_display_extension, .-picture_display_extension
	.align	2
	.global	quant_matrix_extension
	.type	quant_matrix_extension, %function
quant_matrix_extension:
	.fnstart
.LFB1552:
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
	add	r4, r0, #78848	@ pBs, pCtx,
	add	r4, r4, #576	@ pBs, pBs,
	movw	r3, #:lower16:80504	@ tmp179,
	movt	r3, #:upper16:80504	@ tmp179,
	mov	r5, r0	@ pCtx, pCtx
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	ldr	sl, [r5, r3]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	bl	BsGet	@
	cmp	r0, #1	@ D.40267,
	str	r0, [sl, #76]	@ D.40267, <variable>.load_intra_quantizer_matrix
	beq	.L245	@,
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	cmp	r0, #1	@ D.40277,
	str	r0, [sl, #80]	@ D.40277, <variable>.load_non_intra_quantizer_matrix
	beq	.L246	@,
.L230:
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	cmp	r0, #0	@,
	beq	.L232	@,
	mov	r5, #0	@ i.1499,
.L233:
	mov	r1, #8	@,
	add	r5, r5, #1	@ tmp192, i.1499,
	mov	r0, r4	@, pBs
	add	r5, r5, #1	@ i.1499, tmp192,
	bl	BsGet	@
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
	cmp	r5, #64	@ i.1499,
	bne	.L233	@,
.L232:
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	cmp	r0, #0	@,
	ldmeqfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	mov	r5, #0	@ i.1500,
.L235:
	add	lr, r5, #1	@ tmp191, i.1500,
	mov	r1, #8	@,
	mov	r0, r4	@, pBs
	add	r5, lr, #1	@ i.1500, tmp191,
	bl	BsGet	@
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
	cmp	r5, #64	@ i.1500,
	bne	.L235	@,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L245:
	movw	r7, #:lower16:.LANCHOR1	@ tmp186,
	movt	r7, #:upper16:.LANCHOR1	@ tmp186,
	mov	r6, #0	@ i,
.L229:
	mov	r1, #8	@,
	mov	r0, r4	@, pBs
	ldrb	r8, [r7, r6]	@ zero_extendqisi2	@ D.40274, zigzag
	bl	BsGet	@
	add	r2, r6, #1	@ tmp194, i,
	mov	r1, #8	@,
	add	r3, r8, #19712	@ tmp181, D.40274,
	add	r6, r2, #1	@ i, tmp194,
	add	ip, r3, #152	@ tmp181, tmp181,
	str	r0, [r5, ip, asl #2]	@, <variable>.intra_quantizer_matrix
	mov	r0, r4	@, pBs
	ldrb	r8, [r7, r2]	@ zero_extendqisi2	@ D.40274, zigzag
	bl	BsGet	@
	cmp	r6, #64	@ i,
	add	r8, r8, #19712	@ tmp199, D.40274,
	add	r8, r8, #152	@ tmp199, tmp199,
	str	r0, [r5, r8, asl #2]	@, <variable>.intra_quantizer_matrix
	bne	.L229	@,
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	cmp	r0, #1	@ D.40277,
	str	r0, [sl, #80]	@ D.40277, <variable>.load_non_intra_quantizer_matrix
	bne	.L230	@,
.L246:
	movw	r7, #:lower16:.LANCHOR1	@ tmp200,
	movt	r7, #:upper16:.LANCHOR1	@ tmp200,
	mov	r6, #0	@ i.1498,
.L231:
	mov	r1, #8	@,
	mov	r0, r4	@, pBs
	ldrb	r8, [r7, r6]	@ zero_extendqisi2	@ temp.1497, zigzag
	bl	BsGet	@
	add	r2, r6, #1	@ tmp193, i.1498,
	mov	r1, #8	@,
	add	r3, r8, #19712	@ tmp184, temp.1497,
	add	r6, r2, #1	@ i.1498, tmp193,
	add	ip, r3, #216	@ tmp184, tmp184,
	str	r0, [r5, ip, asl #2]	@, <variable>.non_intra_quantizer_matrix
	mov	r0, r4	@, pBs
	ldrb	r8, [r7, r2]	@ zero_extendqisi2	@ temp.1497, zigzag
	bl	BsGet	@
	cmp	r6, #64	@ i.1498,
	add	r1, r8, #19712	@ tmp205, temp.1497,
	add	r8, r1, #216	@ tmp205, tmp205,
	str	r0, [r5, r8, asl #2]	@, <variable>.non_intra_quantizer_matrix
	bne	.L231	@,
	b	.L230	@
	.fnend
	.size	quant_matrix_extension, .-quant_matrix_extension
	.align	2
	.global	sequence_display_extension
	.type	sequence_display_extension, %function
sequence_display_extension:
	.fnstart
.LFB1551:
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
	movw	r1, #:lower16:80504	@ tmp146,
	movt	r1, #:upper16:80504	@ tmp146,
	movw	r2, #:lower16:79180	@ tmp154,
	movt	r2, #:upper16:79180	@ tmp154,
	mov	r6, r0	@ pCtx, pCtx
	ldr	r4, [r0, r1]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	add	r5, r0, #78848	@ pBs, pCtx,
	mov	lr, #0	@ tmp147,
	add	r5, r5, #576	@ pBs, pBs,
	mov	r1, #3	@,
	str	lr, [r4, #152]	@ tmp147, <variable>.display_vertical_size
	mov	r0, r5	@, pBs
	str	lr, [r4, #128]	@ tmp147, <variable>.video_format
	str	lr, [r4, #132]	@ tmp147, <variable>.color_description
	str	lr, [r4, #136]	@ tmp147, <variable>.color_primaries
	str	lr, [r4, #140]	@ tmp147, <variable>.transfer_characteristics
	str	lr, [r4, #144]	@ tmp147, <variable>.matrix_coefficients
	str	lr, [r4, #148]	@ tmp147, <variable>.display_horizontal_size
	ldr	ip, [r6, r2]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orr	r3, ip, #262144	@ tmp157, <variable>.CodecInfo.StreamIntegrality,
	str	r3, [r6, r2]	@ tmp157, <variable>.CodecInfo.StreamIntegrality
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r4, #128]	@, <variable>.video_format
	mov	r0, r5	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@ D.40230,
	str	r0, [r4, #132]	@ D.40230, <variable>.color_description
	bne	.L252	@,
.L248:
	mov	r1, #14	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r4, #148]	@, <variable>.display_horizontal_size
	mov	r0, r5	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@,
	bne	.L249	@,
	movw	r3, #:lower16:79180	@ tmp158,
	movt	r3, #:upper16:79180	@ tmp158,
	ldr	r2, [r6, r3]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orr	r0, r2, #4	@ tmp161, <variable>.CodecInfo.StreamIntegrality,
	str	r0, [r6, r3]	@ tmp161, <variable>.CodecInfo.StreamIntegrality
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L249:
	mov	r0, r5	@, pBs
	mov	r1, #14	@,
	bl	BsGet	@
	str	r0, [r4, #152]	@, <variable>.display_vertical_size
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L252:
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #8	@,
	str	r0, [r4, #136]	@, <variable>.color_primaries
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #8	@,
	str	r0, [r4, #140]	@, <variable>.transfer_characteristics
	mov	r0, r5	@, pBs
	bl	BsGet	@
	str	r0, [r4, #144]	@, <variable>.matrix_coefficients
	b	.L248	@
	.fnend
	.size	sequence_display_extension, .-sequence_display_extension
	.align	2
	.global	sequence_extension
	.type	sequence_extension, %function
sequence_extension:
	.fnstart
.LFB1550:
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
	movw	r7, #:lower16:79180	@ tmp159,
	movt	r7, #:upper16:79180	@ tmp159,
	add	r8, r0, #78848	@ pBs, pCtx,
	add	r8, r8, #576	@ pBs, pBs,
	movw	r2, #:lower16:79176	@ tmp163,
	ldr	r4, [r0, r7]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	movt	r2, #:upper16:79176	@ tmp163,
	mov	r5, r0	@ pCtx, pCtx
	movw	r3, #:lower16:80504	@ tmp158,
	movt	r3, #:upper16:80504	@ tmp158,
	orr	r1, r4, #131072	@ tmp162, <variable>.CodecInfo.StreamIntegrality,
	str	r1, [r0, r7]	@ tmp162, <variable>.CodecInfo.StreamIntegrality
	mov	r1, #8	@,
	mov	r0, #0	@ tmp164,
	str	r0, [r5, r2]	@ tmp164, <variable>.CodecInfo.NewSeqInited
	mov	r0, r8	@, pBs
	ldr	r4, [r5, r3]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r4, #124]	@, <variable>.profile_and_level_indication
	mov	r0, r8	@, pBs
	bl	BsGet	@
	mov	r1, #2	@,
	strb	r0, [r4, #27]	@, <variable>.progressive_sequence
	mov	r0, r8	@, pBs
	bl	BsGet	@
	mov	r1, #2	@,
	strb	r0, [r4, #28]	@, <variable>.chroma_format
	mov	r0, r8	@, pBs
	bl	BsGet	@
	mov	r1, #2	@,
	mov	r9, r0	@ D.40143,
	mov	r0, r8	@, pBs
	bl	BsGet	@
	mov	r1, #12	@,
	mov	sl, r0	@ D.40144,
	mov	r0, r8	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	mov	r6, r0	@ D.40145,
	mov	r0, r8	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@,
	bne	.L254	@,
	ldr	lr, [r5, r7]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orr	ip, lr, #2	@ tmp170, <variable>.CodecInfo.StreamIntegrality,
	str	ip, [r5, r7]	@ tmp170, <variable>.CodecInfo.StreamIntegrality
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L254:
	mov	r1, #8	@,
	mov	r0, r8	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	mov	r7, r0	@ D.40150,
	mov	r0, r8	@, pBs
	bl	BsGet	@
	mov	r1, #2	@,
	strb	r0, [r4, #29]	@, <variable>.low_delay
	mov	r0, r8	@, pBs
	bl	BsGet	@
	mov	r1, #5	@,
	strb	r0, [r4, #30]	@, <variable>.frame_rate_extension_n
	mov	r0, r8	@, pBs
	bl	BsGet	@
	ldrb	ip, [r4, #30]	@ zero_extendqisi2	@ <variable>.frame_rate_extension_n, <variable>.frame_rate_extension_n
	uxtb	r2, r0	@ D.40156,
	add	r0, ip, #1	@, <variable>.frame_rate_extension_n,
	add	r1, r2, #1	@, D.40156,
	strb	r2, [r4, #31]	@ D.40156, <variable>.frame_rate_extension_d
	bl	__aeabi_idiv	@
	ldr	r1, [r4, #88]	@ <variable>.frame_rate_code, <variable>.frame_rate_code
	movw	r3, #:lower16:.LANCHOR0	@ tmp181,
	movt	r3, #:upper16:.LANCHOR0	@ tmp181,
	ldr	r2, [r4, #124]	@ D.40170, <variable>.profile_and_level_indication
	add	ip, r3, r1, asl #2	@, tmp185, tmp181, <variable>.frame_rate_code,
	tst	r2, #128	@ D.40170,
	ldr	r1, [ip, #1100]	@ tmp187, frame_rate_Table
	mul	r3, r1, r0	@ tmp188, tmp187,
	str	r3, [r4, #72]	@ tmp188, <variable>.frame_rate
	bne	.L266	@,
	and	ip, r2, #15	@ tmp196, D.40170,
	ubfx	r1, r2, #4, #3	@ tmp194, D.40170,,
	str	ip, [r4, #44]	@ tmp196, <variable>.level
	str	r1, [r4, #40]	@ tmp194, <variable>.profile
.L257:
	ldr	ip, [r4, #48]	@ <variable>.horizontal_size, <variable>.horizontal_size
	ldr	r3, [r4, #52]	@ <variable>.vertical_size, <variable>.vertical_size
	mov	r1, ip, asl #20	@ tmp198, <variable>.horizontal_size,
	mov	r0, r3, asl #20	@ tmp202, <variable>.vertical_size,
	mov	lr, r1, lsr #20	@ tmp198, tmp198,
	orr	r9, lr, r9, asl #12	@, prephitmp.1539, tmp198, D.40143,
	mov	r2, r0, lsr #20	@ tmp202, tmp202,
	cmp	r9, #0	@ prephitmp.1539,
	orr	sl, r2, sl, asl #12	@, D.40187, tmp202, D.40144,
	str	r9, [r4, #48]	@ prephitmp.1539, <variable>.horizontal_size
	str	sl, [r4, #52]	@ D.40187, <variable>.vertical_size
	beq	.L258	@,
	cmp	sl, #0	@ D.40187,
	bne	.L259	@,
.L258:
	movw	r0, #:lower16:79180	@ tmp205,
	movt	r0, #:upper16:79180	@ tmp205,
	ldr	r2, [r5, r0]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orr	r9, r2, #1	@ tmp208, <variable>.CodecInfo.StreamIntegrality,
	str	r9, [r5, r0]	@ tmp208, <variable>.CodecInfo.StreamIntegrality
	ldr	r9, [r4, #48]	@ prephitmp.1539, <variable>.horizontal_size
.L259:
	cmp	r9, #8192	@ prephitmp.1539,
	bhi	.L260	@,
	ldr	lr, [r4, #52]	@ <variable>.vertical_size, <variable>.vertical_size
	cmp	lr, #8192	@ <variable>.vertical_size,
	bls	.L261	@,
.L260:
	movw	r3, #:lower16:79180	@ tmp210,
	movt	r3, #:upper16:79180	@ tmp210,
	movw	r0, #:lower16:g_event_report	@ tmp214,
	movt	r0, #:upper16:g_event_report	@ tmp214,
	ldr	ip, [r5, r3]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orr	r1, ip, #1	@ tmp213, <variable>.CodecInfo.StreamIntegrality,
	str	r1, [r5, r3]	@ tmp213, <variable>.CodecInfo.StreamIntegrality
	ldr	ip, [r0, #0]	@ g_event_report.494, g_event_report
	cmp	ip, #0	@ g_event_report.494,
	beq	.L261	@,
	movw	lr, #:lower16:114672	@ tmp215,
	movt	lr, #:upper16:114672	@ tmp215,
	mov	r2, #0	@,
	mov	r1, #102	@,
	ldr	r0, [r5, lr]	@, <variable>.ChanID
	mov	r3, r2	@,
	blx	ip	@ g_event_report.494
.L261:
	ldr	ip, [r4, #92]	@ <variable>.bit_rate_value, <variable>.bit_rate_value
	mov	r0, #400	@ tmp219,
	ldr	r2, [r4, #40]	@ prephitmp.1557, <variable>.profile
	add	r6, ip, r6, asl #18	@, D.40201, <variable>.bit_rate_value, D.40145,
	str	r6, [r4, #92]	@ D.40201, <variable>.bit_rate_value
	sub	r1, r2, #4	@ tmp224, prephitmp.1557,
	ldr	r3, [r4, #96]	@ <variable>.vbv_buffer_size, <variable>.vbv_buffer_size
	mul	r6, r0, r6	@ tmp220, tmp219, D.40201
	cmp	r1, #1	@ tmp224,
	add	r7, r3, r7, asl #10	@, tmp223, <variable>.vbv_buffer_size, D.40150,
	str	r7, [r4, #96]	@ tmp223, <variable>.vbv_buffer_size
	str	r6, [r4, #68]	@ tmp220, <variable>.bit_rate
	bls	.L262	@,
	movw	lr, #:lower16:g_event_report	@ tmp225,
	movt	lr, #:upper16:g_event_report	@ tmp225,
	ldr	ip, [lr, #0]	@ g_event_report.1558, g_event_report
	cmp	ip, #0	@ g_event_report.1558,
	beq	.L263	@,
	movw	r3, #:lower16:114672	@ tmp226,
	movt	r3, #:upper16:114672	@ tmp226,
	mov	r2, #0	@,
	mov	r1, #102	@,
	ldr	r0, [r5, r3]	@, <variable>.ChanID
	mov	r3, r2	@,
	blx	ip	@ g_event_report.1558
	ldr	r2, [r4, #40]	@ prephitmp.1557, <variable>.profile
.L263:
	movw	r1, #:lower16:.LC21	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC21	@,
	bl	dprint_vfmw	@
.L262:
	ldr	r2, [r4, #44]	@ prephitmp.1560, <variable>.level
	sub	r1, r2, #4	@ tmp229, prephitmp.1560,
	cmp	r1, #6	@ tmp229,
	ldmlsfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	movw	r0, #:lower16:g_event_report	@ tmp230,
	movt	r0, #:upper16:g_event_report	@ tmp230,
	ldr	ip, [r0, #0]	@ g_event_report.1561, g_event_report
	cmp	ip, #0	@ g_event_report.1561,
	beq	.L264	@,
	movw	lr, #:lower16:114672	@ tmp231,
	movt	lr, #:upper16:114672	@ tmp231,
	mov	r2, #0	@,
	mov	r1, #102	@,
	mov	r3, r2	@,
	ldr	r0, [r5, lr]	@, <variable>.ChanID
	blx	ip	@ g_event_report.1561
	ldr	r2, [r4, #44]	@ prephitmp.1560, <variable>.level
.L264:
	movw	r1, #:lower16:.LC22	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC22	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L266:
	and	r0, r2, #15	@ tmp190, D.40170,
	cmp	r0, #5	@ tmp190,
	moveq	r3, #133	@ tmp191,
	moveq	lr, #8	@ tmp192,
	streq	r3, [r4, #40]	@ tmp191, <variable>.profile
	streq	lr, [r4, #44]	@ tmp192, <variable>.level
	b	.L257	@
	.fnend
	.size	sequence_extension, .-sequence_extension
	.align	2
	.global	extension
	.type	extension, %function
extension:
	.fnstart
.LFB1560:
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
	add	r1, r0, #78848	@, pCtx,
	mov	r4, r0	@ pCtx, pCtx
	add	r0, r1, #576	@,,
	mov	r1, #4	@,
	bl	BsGet	@
	sub	r0, r0, #1	@ tmp138,,
	cmp	r0, #9	@ tmp138,
	ldrls	pc, [pc, r0, asl #2]	@ tmp138
	b	.L268	@
.L278:
	.word	.L269
	.word	.L270
	.word	.L271
	.word	.L272
	.word	.L273
	.word	.L268
	.word	.L274
	.word	.L275
	.word	.L276
	.word	.L277
.L272:
	mov	r0, r4	@, pCtx
	bl	copyright_extension	@
.L268:
	mov	r0, #1	@,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L277:
	mov	r0, r4	@, pCtx
	bl	picture_temporal_scalable_extension	@
	mov	r0, #1	@,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L269:
	mov	r0, r4	@, pCtx
	bl	sequence_extension	@
	mov	r0, #1	@,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L270:
	mov	r0, r4	@, pCtx
	bl	sequence_display_extension	@
	mov	r0, #1	@,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L271:
	mov	r0, r4	@, pCtx
	bl	quant_matrix_extension	@
	mov	r0, #1	@,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L273:
	mov	r0, r4	@, pCtx
	bl	sequence_scalable_extension	@
	mov	r0, #1	@,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L274:
	mov	r0, r4	@, pCtx
	bl	picture_display_extension	@
	mov	r0, #1	@,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L275:
	mov	r0, r4	@, pCtx
	bl	picture_coding_extension	@
	mov	r0, #1	@,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L276:
	mov	r0, r4	@, pCtx
	bl	picture_spatial_scalable_extension	@
	mov	r0, #1	@,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	extension, .-extension
	.align	2
	.global	picture_header
	.type	picture_header, %function
picture_header:
	.fnstart
.LFB1549:
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
	movw	r6, #:lower16:79180	@ tmp146,
	movt	r6, #:upper16:79180	@ tmp146,
	add	r4, r0, #78848	@ pBs, pCtx,
	mov	r5, r0	@ pCtx, pCtx
	add	r4, r4, #576	@ pBs, pBs,
	ldr	r1, [r0, r6]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	movw	lr, #:lower16:80504	@ tmp145,
	movt	lr, #:upper16:80504	@ tmp145,
	bic	r0, r1, #3145728	@ tmp148, <variable>.CodecInfo.StreamIntegrality,
	mov	r1, #10	@,
	bic	r3, r0, #56	@ tmp148, tmp148,
	mov	r0, r4	@, pBs
	orr	ip, r3, #524288	@ tmp151, tmp148,
	str	ip, [r5, r6]	@ tmp151, <variable>.CodecInfo.StreamIntegrality
	ldr	r6, [r5, lr]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	bl	BsGet	@
	mov	r1, #3	@,
	str	r0, [r6, #156]	@, <variable>.temporal_reference
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #16	@,
	strb	r0, [r6, #22]	@, <variable>.picture_coding_type
	mov	r0, r4	@, pBs
	bl	BsGet	@
	ldrb	r2, [r6, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	sub	r1, r2, #2	@ tmp155, <variable>.picture_coding_type,
	uxtb	r3, r1	@ tmp156, tmp155
	cmp	r3, #1	@ tmp156,
	str	r0, [r6, #160]	@, <variable>.vbv_delay
	bls	.L283	@,
.L281:
	mov	r0, r5	@, pCtx
	bl	extra_bit_information	@
	mov	r0, #1	@,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L283:
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #3	@,
	strb	r0, [r6, #23]	@, <variable>.full_pel_forward_vector
	mov	r0, r4	@, pBs
	bl	BsGet	@
	ldrb	r7, [r6, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	cmp	r7, #3	@ <variable>.picture_coding_type,
	strb	r0, [r6, #24]	@, <variable>.forward_f_code
	bne	.L281	@,
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, r7	@, <variable>.picture_coding_type
	strb	r0, [r6, #25]	@, <variable>.full_pel_backward_vector
	mov	r0, r4	@, pBs
	bl	BsGet	@
	strb	r0, [r6, #26]	@, <variable>.backward_f_code
	mov	r0, r5	@, pCtx
	bl	extra_bit_information	@
	mov	r0, #1	@,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	picture_header, .-picture_header
	.align	2
	.global	group_of_pictures_header
	.type	group_of_pictures_header, %function
group_of_pictures_header:
	.fnstart
.LFB1548:
	@ args = 0, pretend = 0, frame = 8
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
	mov	r4, r0	@ pCtx, pCtx
	add	r0, r0, #78848	@ pBs, pCtx,
	movw	r9, #:lower16:80504	@ tmp165,
	add	r7, r0, #576	@ pBs, pBs,
	movt	r9, #:upper16:80504	@ tmp165,
	mov	r1, #1	@,
	add	r6, r4, #78848	@ tmp149, pCtx,
	mov	r0, r7	@, pBs
	ldr	r8, [r4, r9]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	bl	BsGet	@
	mov	r1, #5	@,
	add	r5, r4, #78848	@ tmp148, pCtx,
	movw	r9, #:lower16:79344	@ tmp170,
	movt	r9, #:upper16:79344	@ tmp170,
	mov	sl, #0	@ tmp159,
	strb	r0, [r8, #2]	@, <variable>.drop_flag
	mov	r0, r7	@, pBs
	bl	BsGet	@
	mov	r1, #6	@,
	str	r0, [r8, #100]	@, <variable>.hour
	mov	r0, r7	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r8, #104]	@, <variable>.minute
	mov	r0, r7	@, pBs
	bl	BsSkip	@
	mov	r0, r7	@, pBs
	mov	r1, #6	@,
	bl	BsGet	@
	mov	r1, #6	@,
	str	r0, [r8, #108]	@, <variable>.sec
	mov	r0, r7	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r8, #112]	@, <variable>.frame
	mov	r0, r7	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r8, #116]	@, <variable>.closed_gop
	mov	r0, r7	@, pBs
	bl	BsGet	@
	add	ip, r6, #464	@ tmp149, tmp149,
	movw	r6, #:lower16:79336	@ tmp169,
	movt	r6, #:upper16:79336	@ tmp169,
	mov	r1, r5	@ tmp153, tmp148
	add	r2, r4, r6	@, pCtx, tmp169
	add	r3, r1, #476	@ tmp153, tmp153,
	str	r2, [fp, #-48]	@, %sfp
	add	r5, r5, #452	@ tmp148, tmp148,
	movw	r7, #:lower16:79340	@ tmp171,
	movt	r7, #:upper16:79340	@ tmp171,
	str	r0, [r8, #120]	@, <variable>.broken_link
	ldmia	ip, {r0, r1, r2}	@ tmp149,,,
	stmia	r5, {r0, r1, r2}	@ tmp148,,,
	ldmia	r3, {r0, r1, r2}	@ tmp153,,,
	stmia	ip, {r0, r1, r2}	@ tmp149,,,
	ldr	ip, [fp, #-48]	@, %sfp
	ldmia	ip, {r0, r1, r2}	@,,,
	stmia	r3, {r0, r1, r2}	@ tmp153,,,
	str	sl, [r4, r7]	@ tmp159, <variable>.GopFldCnt
	str	sl, [r4, r6]	@ tmp159, <variable>.GopFrmCntNoRpt
	str	sl, [r4, r9]	@ tmp159, <variable>.GopFrmCnt
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
	.fnend
	.size	group_of_pictures_header, .-group_of_pictures_header
	.align	2
	.global	sequence_header
	.type	sequence_header, %function
sequence_header:
	.fnstart
.LFB1547:
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
	add	r5, r0, #78848	@ pBs, pCtx,
	add	r5, r5, #576	@ pBs, pBs,
	movw	r6, #:lower16:79180	@ tmp164,
	movw	r2, #:lower16:79176	@ tmp166,
	movt	r6, #:upper16:79180	@ tmp164,
	movt	r2, #:upper16:79176	@ tmp166,
	mov	r4, r0	@ pCtx, pCtx
	movw	r3, #:lower16:80504	@ tmp163,
	movt	r3, #:upper16:80504	@ tmp163,
	mov	r1, #12	@,
	mov	sl, #65536	@ tmp165,
	str	sl, [r0, r6]	@ tmp165, <variable>.CodecInfo.StreamIntegrality
	mov	r0, #0	@ tmp167,
	str	r0, [r4, r2]	@ tmp167, <variable>.CodecInfo.NewSeqInited
	mov	r0, r5	@, pBs
	ldr	sl, [r4, r3]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	bl	BsGet	@
	mov	r1, #12	@,
	str	r0, [sl, #48]	@, <variable>.horizontal_size
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #4	@,
	str	r0, [sl, #52]	@, <variable>.vertical_size
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #4	@,
	str	r0, [sl, #84]	@, <variable>.aspect_ratio_information
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #18	@,
	str	r0, [sl, #88]	@, <variable>.frame_rate_code
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [sl, #92]	@, <variable>.bit_rate_value
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #10	@,
	cmp	r0, #0	@,
	mov	r0, r5	@, pBs
	ldreq	r3, [r4, r6]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orreq	r3, r3, #1	@ tmp171, <variable>.CodecInfo.StreamIntegrality,
	streq	r3, [r4, r6]	@ tmp171, <variable>.CodecInfo.StreamIntegrality
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [sl, #96]	@, <variable>.vbv_buffer_size
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [sl, #1]	@, <variable>.constrained_parameters_flag
	mov	r0, r5	@, pBs
	bl	BsGet	@
	cmp	r0, #1	@ D.40053,
	str	r0, [sl, #76]	@ D.40053, <variable>.load_intra_quantizer_matrix
	beq	.L305	@,
	add	r1, r4, #78848	@ ivtmp.1698, pCtx,
	movw	r6, #:lower16:.LANCHOR1	@ tmp188,
	movt	r6, #:upper16:.LANCHOR1	@ tmp188,
	add	r1, r1, #608	@ ivtmp.1698, ivtmp.1698,
	add	ip, r6, #64	@ tmp190, tmp188,
	mov	r3, #0	@ i.1701,
.L291:
	ldrb	lr, [ip, r3]	@ zero_extendqisi2	@ tmp179, default_intra_quantizer_matrix
	add	r0, r3, #1	@ tmp198, i.1701,
	mov	r2, r1	@ tmp199, ivtmp.1698
	add	r3, r0, #1	@ i.1701, tmp198,
	cmp	r3, #64	@ i.1701,
	str	lr, [r2], #4	@ tmp179, <variable>.intra_quantizer_matrix
	ldrb	lr, [ip, r0]	@ zero_extendqisi2	@ tmp207, default_intra_quantizer_matrix
	str	lr, [r1, #4]	@ tmp207, <variable>.intra_quantizer_matrix
	add	r1, r2, #4	@ ivtmp.1698, tmp199,
	bne	.L291	@,
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	cmp	r0, #1	@ D.40066,
	str	r0, [sl, #80]	@ D.40066, <variable>.load_non_intra_quantizer_matrix
	movne	r3, #0	@ ivtmp.1682,
	movne	ip, #16	@ tmp193,
	beq	.L306	@,
.L295:
	add	r0, r3, #4	@ tmp196, ivtmp.1682,
	add	r3, r4, r3	@ tmp183, pCtx, ivtmp.1682
	add	r2, r4, r0	@ tmp214, pCtx, tmp196
	add	r1, r3, #78848	@ tmp184, tmp183,
	add	lr, r2, #78848	@ tmp216, tmp214,
	add	r3, r0, #4	@ ivtmp.1682, tmp196,
	add	r1, r1, #864	@ tmp184, tmp184,
	add	r0, lr, #864	@ tmp216, tmp216,
	cmp	r3, #256	@ ivtmp.1682,
	str	ip, [r1, #0]	@ tmp193, <variable>.non_intra_quantizer_matrix
	str	ip, [r0, #0]	@ tmp193, <variable>.non_intra_quantizer_matrix
	bne	.L295	@,
	mov	r0, #1	@,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L305:
	movw	r6, #:lower16:.LANCHOR1	@ tmp188,
	movt	r6, #:upper16:.LANCHOR1	@ tmp188,
	mov	r7, #0	@ i,
.L289:
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	ldrb	r8, [r6, r7]	@ zero_extendqisi2	@ D.40060, zigzag
	bl	BsGet	@
	add	ip, r7, #1	@ tmp197, i,
	mov	r1, #8	@,
	add	r2, r8, #19712	@ tmp174, D.40060,
	add	r7, ip, #1	@ i, tmp197,
	add	r3, r2, #152	@ tmp174, tmp174,
	str	r0, [r4, r3, asl #2]	@, <variable>.intra_quantizer_matrix
	mov	r0, r5	@, pBs
	ldrb	r8, [r6, ip]	@ zero_extendqisi2	@ D.40060, zigzag
	bl	BsGet	@
	cmp	r7, #64	@ i,
	add	r8, r8, #19712	@ tmp204, D.40060,
	add	r8, r8, #152	@ tmp204, tmp204,
	str	r0, [r4, r8, asl #2]	@, <variable>.intra_quantizer_matrix
	bne	.L289	@,
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	cmp	r0, #1	@ D.40066,
	str	r0, [sl, #80]	@ D.40066, <variable>.load_non_intra_quantizer_matrix
	movne	r3, #0	@ ivtmp.1682,
	movne	ip, #16	@ tmp193,
	bne	.L295	@,
.L306:
	mov	r7, #0	@ i.1704,
.L293:
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	ldrb	r8, [r6, r7]	@ zero_extendqisi2	@ temp.1703, zigzag
	bl	BsGet	@
	add	r3, r7, #1	@ tmp195, i.1704,
	mov	r1, #8	@,
	add	ip, r8, #19712	@ tmp181, temp.1703,
	add	r7, r3, #1	@ i.1704, tmp195,
	add	r2, ip, #216	@ tmp181, tmp181,
	str	r0, [r4, r2, asl #2]	@, <variable>.non_intra_quantizer_matrix
	mov	r0, r5	@, pBs
	ldrb	r8, [r6, r3]	@ zero_extendqisi2	@ temp.1703, zigzag
	bl	BsGet	@
	cmp	r7, #64	@ i.1704,
	add	ip, r8, #19712	@ tmp212, temp.1703,
	add	r8, ip, #216	@ tmp212, tmp212,
	str	r0, [r4, r8, asl #2]	@, <variable>.non_intra_quantizer_matrix
	bne	.L293	@,
	mov	r0, #1	@,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	.fnend
	.size	sequence_header, .-sequence_header
	.align	2
	.global	next_start_code
	.type	next_start_code, %function
next_start_code:
	.fnstart
.LFB1546:
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
	add	r4, r0, #78848	@ pBs, pCtx,
	add	r4, r4, #576	@ pBs, pBs,
	mov	r5, r0	@ pCtx, pCtx
	mov	r0, r4	@, pBs
	bl	BsToNextByte	@
	mov	r0, r4	@, pBs
	bl	BsGetNextBytePtr	@
	mov	r6, r0	@ pcode,
	mov	r0, r4	@, pBs
	bl	BsResidBits	@
	mov	r7, r0	@ D.39972,
	add	r2, r0, #7	@ tmp157, D.39972,
	cmp	r7, #0	@ D.39972,
	mov	r0, r6	@, pcode
	movlt	r7, r2	@ D.39972, tmp157
	mov	r1, r7, asr #3	@, D.39972,
	bl	MP2_SearchStartCode	@
	mov	r1, r0, asl #3	@ tmp159,,
	mov	r0, r4	@, pBs
	bl	BsLongSkip	@
	mov	r0, r4	@, pBs
	bl	BsResidBits	@
	add	r3, r0, #7	@ tmp162, D.39978,
	cmp	r0, #0	@ D.39978,
	movlt	r0, r3	@ D.39978, tmp162
	mov	r3, r0, asr #3	@ tmp163, D.39978,
	sub	r7, r3, #3	@ remain_byte, tmp163,
	cmp	r7, #0	@ remain_byte,
	ble	.L308	@,
	mov	r0, r4	@, pBs
	mov	r1, #24	@,
	and	r8, r3, #1	@ tmp233, tmp163,
	bl	BsShow	@
	cmp	r0, #1	@,
	beq	.L309	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r6, #1	@ i,
	cmp	r7, r6	@ remain_byte, i
	ble	.L308	@,
	cmp	r8, #0	@ tmp233,
	beq	.L310	@,
	mov	r0, r4	@, pBs
	mov	r1, #24	@,
	bl	BsShow	@
	cmp	r0, r6	@,
	beq	.L309	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r6, #2	@ i,
	cmp	r7, r6	@ remain_byte, i
	bgt	.L310	@,
	b	.L308	@
.L335:
	bl	BsSkip	@
	mov	r1, #24	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	mov	r1, #8	@,
	cmp	r0, #1	@,
	mov	r0, r4	@, pBs
	beq	.L309	@,
	bl	BsSkip	@
	cmp	r7, r6	@ remain_byte, i
	ble	.L308	@,
.L310:
	mov	r1, #24	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	add	r6, r6, #1	@ tmp234, i,
	mov	r1, #8	@,
	add	r6, r6, #1	@ i, tmp234,
	cmp	r0, #1	@,
	mov	r0, r4	@, pBs
	bne	.L335	@,
.L309:
	mov	r0, #1	@ D.39983,
.L313:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L308:
	movw	r6, #:lower16:79132	@ tmp164,
	movt	r6, #:upper16:79132	@ tmp164,
	ldrsb	r8, [r5, r6]	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg, <variable>.CodecInfo.stMp2Packet.IsLastSeg
	cmp	r8, #0	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg,
	bne	.L311	@,
	movw	r7, #:lower16:79133	@ tmp166,
	movt	r7, #:upper16:79133	@ tmp166,
	ldrsb	r0, [r5, r7]	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg, <variable>.CodecInfo.stMp2Packet.IsLastSeg
	cmp	r0, #0	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg,
	beq	.L311	@,
	movw	sl, #:lower16:79156	@ tmp168,
	movt	sl, #:upper16:79156	@ tmp168,
	ldr	r1, [r5, sl]	@ <variable>.CodecInfo.stMp2Packet.BsLength, <variable>.CodecInfo.stMp2Packet.BsLength
	cmp	r1, #0	@ <variable>.CodecInfo.stMp2Packet.BsLength,
	beq	.L311	@,
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC23	@,
	movw	r9, #:lower16:79152	@,
	movw	lr, #:lower16:79136	@ tmp174,
	movt	r9, #:upper16:79152	@,
	movt	lr, #:upper16:79136	@ tmp174,
	str	r9, [fp, #-48]	@, %sfp
	str	lr, [fp, #-56]	@,
	bl	dprint_vfmw	@
	ldr	r2, [fp, #-48]	@, %sfp
	movw	r9, #:lower16:79140	@ tmp171,
	ldr	ip, [fp, #-56]	@,
	movt	r9, #:upper16:79140	@ tmp171,
	ldr	r1, [r5, r2]	@ <variable>.CodecInfo.stMp2Packet.BsLength, <variable>.CodecInfo.stMp2Packet.BsLength
	mov	r2, #3	@,
	ldr	r3, [r5, ip]	@ <variable>.CodecInfo.stMp2Packet.BsVirAddr, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	ldr	r0, [r5, r9]	@ <variable>.CodecInfo.stMp2Packet.BsVirAddr, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	sub	r1, r1, #3	@ tmp176, <variable>.CodecInfo.stMp2Packet.BsLength,
	add	r1, r1, r3	@, tmp176, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	sub	r0, r0, #3	@, <variable>.CodecInfo.stMp2Packet.BsVirAddr,
	bl	memcpy	@
	ldr	r2, [fp, #-56]	@,
	ldr	r0, [r5, sl]	@ <variable>.CodecInfo.stMp2Packet.BsLength, <variable>.CodecInfo.stMp2Packet.BsLength
	movw	r3, #:lower16:79148	@ tmp187,
	ldr	r1, [r5, r9]	@ <variable>.CodecInfo.stMp2Packet.BsVirAddr, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	movt	r3, #:upper16:79148	@ tmp187,
	add	ip, r0, #3	@, <variable>.CodecInfo.stMp2Packet.BsLength,
	str	ip, [fp, #-52]	@, %sfp
	sub	r1, r1, #3	@ D.40004, <variable>.CodecInfo.stMp2Packet.BsVirAddr,
	str	r1, [r5, r2]	@ D.40004, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	ldr	r2, [fp, #-52]	@, %sfp
	movw	lr, #:lower16:79144	@ tmp192,
	ldr	r0, [fp, #-48]	@, %sfp
	movt	lr, #:upper16:79144	@ tmp192,
	ldr	ip, [r5, r3]	@, <variable>.CodecInfo.stMp2Packet.BsPhyAddr
	str	r8, [r5, r9]	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	str	r2, [r5, r0]	@, <variable>.CodecInfo.stMp2Packet.BsLength
	sub	r0, ip, #3	@ D.40003,,
	str	r8, [r5, sl]	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg, <variable>.CodecInfo.stMp2Packet.BsLength
	str	r0, [r5, lr]	@ D.40003, <variable>.CodecInfo.stMp2Packet.BsPhyAddr
	mov	lr, #1	@,
	str	r8, [r5, r3]	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg, <variable>.CodecInfo.stMp2Packet.BsPhyAddr
	mov	r0, r4	@, pBs
	strb	lr, [r5, r6]	@, <variable>.CodecInfo.stMp2Packet.IsLastSeg
	strb	r8, [r5, r7]	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg, <variable>.CodecInfo.stMp2Packet.IsLastSeg
	bl	BsInit	@
	strb	r8, [r5, r6]	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg, <variable>.CodecInfo.stMp2Packet.IsLastSeg
	mov	r0, r4	@, pBs
	mov	r6, #1	@,
	strb	r6, [r5, r7]	@, <variable>.CodecInfo.stMp2Packet.IsLastSeg
	bl	BsToNextByte	@
	mov	r0, r4	@, pBs
	bl	BsGetNextBytePtr	@
	mov	r5, r0	@ pcode.1737,
	mov	r0, r4	@, pBs
	bl	BsResidBits	@
	mov	r3, r0	@ D.40006,
	add	r2, r0, #7	@ tmp215, D.40006,
	cmp	r3, #0	@ D.40006,
	mov	r0, r5	@, pcode.1737
	movlt	r3, r2	@ D.40006, tmp215
	mov	r1, r3, asr #3	@, D.40006,
	bl	MP2_SearchStartCode	@
	mov	r1, r0, asl #3	@ tmp217,,
	mov	r0, r4	@, pBs
	bl	BsLongSkip	@
	mov	r0, r4	@, pBs
	bl	BsResidBits	@
	cmp	r0, #0	@ D.40009,
	add	ip, r0, #7	@ tmp220, D.40009,
	movlt	r0, ip	@ D.40009, tmp220
	mov	r3, r0, asr #3	@ tmp221, D.40009,
	sub	r6, r3, #3	@ remain_byte.1741, tmp221,
	cmp	r6, #0	@ remain_byte.1741,
	ble	.L311	@,
	mov	r0, r4	@, pBs
	mov	r1, #24	@,
	and	r7, r3, #1	@ tmp229, tmp221,
	bl	BsShow	@
	cmp	r0, #1	@,
	beq	.L309	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r5, #1	@ i.1736,
	cmp	r6, r5	@ remain_byte.1741, i.1736
	ble	.L311	@,
	cmp	r7, #0	@ tmp229,
	beq	.L312	@,
	mov	r0, r4	@, pBs
	mov	r1, #24	@,
	bl	BsShow	@
	cmp	r0, r5	@,
	beq	.L309	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r5, #2	@ i.1736,
	cmp	r6, r5	@ remain_byte.1741, i.1736
	bgt	.L312	@,
	b	.L311	@
.L336:
	bl	BsSkip	@
	mov	r1, #24	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	mov	r1, #8	@,
	cmp	r0, #1	@,
	mov	r0, r4	@, pBs
	beq	.L309	@,
	bl	BsSkip	@
	cmp	r6, r5	@ remain_byte.1741, i.1736
	ble	.L311	@,
.L312:
	mov	r1, #24	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	add	r5, r5, #1	@ tmp230, i.1736,
	mov	r1, #8	@,
	add	r5, r5, #1	@ i.1736, tmp230,
	cmp	r0, #1	@,
	mov	r0, r4	@, pBs
	bne	.L336	@,
	b	.L309	@
.L311:
	mov	r0, #0	@ D.39983,
	b	.L313	@
	.fnend
	.size	next_start_code, .-next_start_code
	.align	2
	.global	MP2_GetUsrData
	.type	MP2_GetUsrData, %function
MP2_GetUsrData:
	.fnstart
.LFB1545:
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
	add	r6, r0, #78848	@ pBs, pCtx,
	add	r6, r6, #576	@ pBs, pBs,
	mov	r4, r0	@ pCtx, pCtx
	mov	r0, r6	@, pBs
	bl	BsToNextByte	@
	mov	r0, r6	@, pBs
	bl	BsResidBits	@
	add	r9, r0, #7	@ tmp160, D.39872,
	cmp	r0, #0	@ D.39872,
	movlt	r0, r9	@ D.39872, tmp160
	mov	r9, r0, asr #3	@ RemainByte, D.39872,
	cmp	r9, #0	@ RemainByte,
	ble	.L338	@,
	sub	r2, r9, #1	@ tmp386, RemainByte,
	mov	r0, r6	@, pBs
	mov	r1, #24	@,
	and	r3, r2, #1	@, tmp386,
	str	r3, [fp, #-48]	@, %sfp
	bl	BsShow	@
	movw	sl, #:lower16:.LANCHOR2	@ tmp381,
	mov	r5, #0	@ cnt,
	movt	sl, #:upper16:.LANCHOR2	@ tmp381,
	movw	r8, #1023	@ tmp379,
	bic	r0, r0, #-16777216	@ tmp162,,
	cmp	r0, #1	@ tmp162,
	beq	.L339	@,
	mov	r0, r6	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
	mov	r5, #1	@ cnt,
	cmp	r9, r5	@ RemainByte, cnt
	mov	r7, r5	@ i, cnt
	strb	r0, [sl, #0]	@, g_tmpusd
	ble	.L343	@,
	ldr	lr, [fp, #-48]	@, %sfp
	cmp	lr, #0	@,
	beq	.L342	@,
	mov	r1, #24	@,
	mov	r0, r6	@, pBs
	bl	BsShow	@
	bic	r1, r0, #-16777216	@ tmp417,,
	cmp	r1, r5	@ tmp417,
	beq	.L339	@,
	mov	r0, r6	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
	add	r7, r5, r5	@ i, i,
	cmp	r9, r7	@ RemainByte, i
	strb	r0, [sl, r5]	@, g_tmpusd
	mov	r5, r7	@ cnt, i
	bgt	.L342	@,
	b	.L343	@
.L396:
	bl	BsGet	@
	strb	r0, [sl, r5]	@, g_tmpusd
	add	r5, r5, #1	@ cnt, cnt,
.L341:
	mov	r1, #24	@,
	mov	r0, r6	@, pBs
	bl	BsShow	@
	add	r7, r7, #1	@ tmp389, i,
	mov	r1, #8	@,
	bic	r3, r0, #-16777216	@ tmp395,,
	mov	r0, r6	@, pBs
	cmp	r3, #1	@ tmp395,
	beq	.L339	@,
	cmp	r5, r8	@ cnt, tmp379
	ble	.L387	@,
	mov	r0, r6	@, pBs
	mov	r1, #8	@,
	add	r7, r7, #1	@ i, tmp389,
	bl	BsGet	@
	cmp	r9, r7	@ RemainByte, i
	ble	.L343	@,
.L342:
	mov	r1, #24	@,
	mov	r0, r6	@, pBs
	bl	BsShow	@
	mov	r1, #8	@,
	bic	ip, r0, #-16777216	@ tmp391,,
	mov	r0, r6	@, pBs
	cmp	ip, #1	@ tmp391,
	beq	.L339	@,
	cmp	r5, r8	@ cnt, tmp379
	ble	.L396	@,
	mov	r0, r6	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
	b	.L341	@
.L387:
	bl	BsGet	@
	add	r7, r7, #1	@ i, tmp389,
	cmp	r9, r7	@ RemainByte, i
	strb	r0, [sl, r5]	@, g_tmpusd
	add	r5, r5, #1	@ cnt, cnt,
	bgt	.L342	@,
.L343:
	movw	r7, #:lower16:79132	@ tmp368,
	movt	r7, #:upper16:79132	@ tmp368,
	ldrsb	r8, [r4, r7]	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg, <variable>.CodecInfo.stMp2Packet.IsLastSeg
	cmp	r8, #0	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg,
	bne	.L344	@,
	movw	sl, #:lower16:79133	@ tmp166,
	movt	sl, #:upper16:79133	@ tmp166,
	ldrsb	r1, [r4, sl]	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg, <variable>.CodecInfo.stMp2Packet.IsLastSeg
	cmp	r1, #0	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg,
	beq	.L344	@,
	movw	r9, #:lower16:79156	@ tmp168,
	movt	r9, #:upper16:79156	@ tmp168,
	ldr	lr, [r4, r9]	@ <variable>.CodecInfo.stMp2Packet.BsLength, <variable>.CodecInfo.stMp2Packet.BsLength
	cmp	lr, #0	@ <variable>.CodecInfo.stMp2Packet.BsLength,
	bne	.L397	@,
.L344:
	mov	lr, #0	@,
	str	lr, [fp, #-48]	@, %sfp
	b	.L348	@
.L339:
	mov	r6, #1	@,
	str	r6, [fp, #-48]	@, %sfp
.L348:
	movw	r6, #:lower16:79212	@ tmp222,
	movt	r6, #:upper16:79212	@ tmp222,
	ldr	r2, [r4, r6]	@ D.39916, <variable>.CodecInfo.TotalUsrDatNum
	cmp	r2, #3	@ D.39916,
	ble	.L350	@,
	movw	r8, #:lower16:114672	@ tmp223,
	movw	sl, #:lower16:79196	@ tmp225,
	movt	r8, #:upper16:114672	@ tmp223,
	movt	sl, #:upper16:79196	@ tmp225,
	movw	r9, #:lower16:79200	@ tmp231,
	movt	r9, #:upper16:79200	@ tmp231,
	ldr	r1, [r4, sl]	@, <variable>.CodecInfo.pUsrDatArray
	movw	r7, #:lower16:79204	@ tmp237,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	movt	r7, #:upper16:79204	@ tmp237,
	str	r7, [fp, #-56]	@,
	bl	FreeUsdByDec	@
	mov	r7, #0	@ tmp228,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	str	r7, [r4, sl]	@ tmp228, <variable>.CodecInfo.pUsrDatArray
	movw	sl, #:lower16:79208	@ tmp243,
	ldr	r1, [r4, r9]	@, <variable>.CodecInfo.pUsrDatArray
	movt	sl, #:upper16:79208	@ tmp243,
	str	r7, [fp, #-60]	@ tmp12,
	bl	FreeUsdByDec	@
	str	r7, [r4, r9]	@ tmp228, <variable>.CodecInfo.pUsrDatArray
	ldr	r2, [fp, #-56]	@,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	ldr	r1, [r4, r2]	@, <variable>.CodecInfo.pUsrDatArray
	bl	FreeUsdByDec	@
	ldr	r3, [fp, #-56]	@,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	str	r7, [r4, r3]	@ tmp228, <variable>.CodecInfo.pUsrDatArray
	ldr	r1, [r4, sl]	@, <variable>.CodecInfo.pUsrDatArray
	bl	FreeUsdByDec	@
	str	r7, [r4, sl]	@ tmp228, <variable>.CodecInfo.pUsrDatArray
	str	r7, [r4, r6]	@ tmp228, <variable>.CodecInfo.TotalUsrDatNum
	ldr	r2, [fp, #-60]	@,
.L350:
	movw	lr, #:lower16:114672	@ tmp249,
	movt	lr, #:upper16:114672	@ tmp249,
	add	r6, r2, #19712	@ tmp373, prephitmp.1763,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	add	r6, r6, #86	@ tmp373, tmp373,
	bl	GetUsd	@
	movw	r2, #:lower16:79212	@ tmp257,
	movt	r2, #:upper16:79212	@ tmp257,
	add	r3, r4, r6, asl #2	@, tmp255, pCtx, tmp373,
	ldr	r2, [r4, r2]	@ temp.1792, <variable>.CodecInfo.TotalUsrDatNum
	add	r1, r2, #19712	@ tmp258, temp.1792,
	add	ip, r1, #86	@ tmp258, tmp258,
	add	r1, r4, ip, asl #2	@, tmp262, pCtx, tmp258,
	str	r0, [r3, #4]	@ D.39923, <variable>.CodecInfo.pUsrDatArray
	ldr	r1, [r1, #4]	@ tmp264, <variable>.CodecInfo.pUsrDatArray
	cmp	r1, #0	@ tmp264,
	beq	.L351	@,
	ldr	r7, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	lr, #:lower16:79184	@ tmp275,
	movt	lr, #:upper16:79184	@ tmp275,
	movw	r2, #:lower16:80504	@ tmp292,
	movt	r2, #:upper16:80504	@ tmp292,
	movw	ip, #:lower16:114676	@ tmp302,
	ldrd	r8, [r7, #56]	@ <variable>.pts, <variable>.pstExtraData,
	mov	r7, #1056	@ tmp265,
	movt	ip, #:upper16:114676	@ tmp302,
	movw	r1, #:lower16:79180	@ tmp315,
	movt	r1, #:upper16:79180	@ tmp315,
	strd	r8, [r0, r7]	@ <variable>.pts, D.39923, tmp265
	ldr	r0, [r3, #4]	@ tmp270, <variable>.CodecInfo.pUsrDatArray
	ldr	lr, [r4, lr]	@ <variable>.CodecInfo.SeqCnt, <variable>.CodecInfo.SeqCnt
	str	lr, [r0, #1040]	@ <variable>.CodecInfo.SeqCnt, <variable>.seq_cnt
	ldr	r0, [r3, #4]	@ tmp279, <variable>.CodecInfo.pUsrDatArray
	str	r5, [r0, #1048]	@ cnt, <variable>.data_size
	ldr	lr, [r4, r2]	@ <variable>.pSyntaxInfNew, <variable>.pSyntaxInfNew
	ldr	r0, [r3, #4]	@ tmp286, <variable>.CodecInfo.pUsrDatArray
	ldrb	lr, [lr, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	strb	lr, [r0, #1024]	@ <variable>.picture_coding_type, <variable>.pic_coding_type
	ldr	lr, [r3, #4]	@ tmp297, <variable>.CodecInfo.pUsrDatArray
	ldr	ip, [r4, ip]	@ <variable>.numTotalFrame, <variable>.numTotalFrame
	str	ip, [lr, #1028]	@ <variable>.numTotalFrame, <variable>.pic_num_count
	ldr	r0, [r4, r2]	@ <variable>.pSyntaxInfNew, <variable>.pSyntaxInfNew
	ldr	r2, [r3, #4]	@ tmp306, <variable>.CodecInfo.pUsrDatArray
	ldrb	lr, [r0, #10]	@ zero_extendqisi2	@ <variable>.top_field_first, <variable>.top_field_first
	strb	lr, [r2, #1025]	@ <variable>.top_field_first, <variable>.top_field_first
	ldr	ip, [r4, r1]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	ldr	r1, [r3, #4]	@ tmp320, <variable>.CodecInfo.pUsrDatArray
	add	r3, r4, r6, asl #2	@, tmp338, pCtx, tmp373,
	tst	ip, #524288	@ <variable>.CodecInfo.StreamIntegrality,
	movne	ip, #3	@ tmp325,
	moveq	ip, #1	@ tmp333,
	str	ip, [r1, #1036]	@ tmp333, <variable>.from
	movw	r1, #:lower16:.LANCHOR2	@,
	ldr	r0, [r3, #4]	@ prephitmp.1765, <variable>.CodecInfo.pUsrDatArray
	movt	r1, #:upper16:.LANCHOR2	@,
	ldr	r2, [r0, #1048]	@ prephitmp.1767, <variable>.data_size
	cmp	r2, #1024	@ prephitmp.1767,
	movgt	r2, #1024	@ tmp340,
	strgt	r2, [r0, #1048]	@ tmp340, <variable>.data_size
	ldrgt	r0, [r3, #4]	@ prephitmp.1765, <variable>.CodecInfo.pUsrDatArray
	ldrgt	r2, [r0, #1048]	@ prephitmp.1767, <variable>.data_size
	bl	memcpy	@
	movw	r0, #:lower16:g_event_report	@ tmp352,
	movt	r0, #:upper16:g_event_report	@ tmp352,
	ldr	ip, [r0, #0]	@ g_event_report.489, g_event_report
	cmp	ip, #0	@ g_event_report.489,
	beq	.L355	@,
	add	r6, r4, r6, asl #2	@, tmp359, pCtx, tmp373,
	movw	r0, #:lower16:114672	@ tmp353,
	movt	r0, #:upper16:114672	@ tmp353,
	mov	r1, #6	@,
	ldr	r2, [r6, #4]	@, <variable>.CodecInfo.pUsrDatArray
	mov	r3, #1072	@,
	ldr	r0, [r4, r0]	@, <variable>.ChanID
	blx	ip	@ g_event_report.489
.L355:
	movw	r3, #:lower16:79212	@ tmp362,
	movt	r3, #:upper16:79212	@ tmp362,
	ldr	r2, [r4, r3]	@ <variable>.CodecInfo.TotalUsrDatNum, <variable>.CodecInfo.TotalUsrDatNum
	add	r1, r2, #1	@ tmp365, <variable>.CodecInfo.TotalUsrDatNum,
	str	r1, [r4, r3]	@ tmp365, <variable>.CodecInfo.TotalUsrDatNum
.L356:
	ldr	r0, [fp, #-48]	@, %sfp
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L351:
	mov	r0, r1	@, tmp264
	movw	r1, #:lower16:.LC24	@,
	movt	r1, #:upper16:.LC24	@,
	bl	dprint_vfmw	@
	b	.L356	@
.L397:
	movw	r0, #:lower16:79152	@,
	movw	r1, #:lower16:.LC23	@,
	movt	r0, #:upper16:79152	@,
	movt	r1, #:upper16:.LC23	@,
	str	r0, [fp, #-52]	@, %sfp
	mov	r0, r8	@, <variable>.CodecInfo.stMp2Packet.IsLastSeg
	movw	ip, #:lower16:79140	@ tmp171,
	movw	r3, #:lower16:79136	@,
	movt	ip, #:upper16:79140	@ tmp171,
	movt	r3, #:upper16:79136	@,
	str	ip, [fp, #-56]	@,
	str	r3, [fp, #-48]	@, %sfp
	bl	dprint_vfmw	@
	ldr	r2, [fp, #-52]	@, %sfp
	ldr	lr, [fp, #-56]	@,
	ldr	r3, [fp, #-48]	@, %sfp
	ldr	r1, [r4, r2]	@ <variable>.CodecInfo.stMp2Packet.BsLength, <variable>.CodecInfo.stMp2Packet.BsLength
	mov	r2, #3	@,
	ldr	r0, [r4, lr]	@ <variable>.CodecInfo.stMp2Packet.BsVirAddr, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	ldr	ip, [r4, r3]	@ <variable>.CodecInfo.stMp2Packet.BsVirAddr, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	sub	lr, r1, #3	@ tmp176, <variable>.CodecInfo.stMp2Packet.BsLength,
	sub	r0, r0, #3	@, <variable>.CodecInfo.stMp2Packet.BsVirAddr,
	add	r1, lr, ip	@, tmp176, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	bl	memcpy	@
	ldr	r3, [fp, #-56]	@,
	ldr	r0, [fp, #-48]	@, %sfp
	movw	ip, #:lower16:79148	@ tmp187,
	movt	ip, #:upper16:79148	@ tmp187,
	ldr	r2, [r4, r9]	@ <variable>.CodecInfo.stMp2Packet.BsLength, <variable>.CodecInfo.stMp2Packet.BsLength
	ldr	r1, [r4, r3]	@ <variable>.CodecInfo.stMp2Packet.BsVirAddr, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	movw	lr, #:lower16:79144	@ tmp193,
	movt	lr, #:upper16:79144	@ tmp193,
	add	r2, r2, #3	@ D.39902, <variable>.CodecInfo.stMp2Packet.BsLength,
	sub	r1, r1, #3	@ D.39905, <variable>.CodecInfo.stMp2Packet.BsVirAddr,
	str	r1, [r4, r0]	@ D.39905, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	ldr	r0, [fp, #-52]	@, %sfp
	str	r8, [r4, r3]	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	ldr	r3, [r4, ip]	@, <variable>.CodecInfo.stMp2Packet.BsPhyAddr
	str	r2, [r4, r0]	@ D.39902, <variable>.CodecInfo.stMp2Packet.BsLength
	sub	r0, r3, #3	@ D.39904,,
	str	r8, [r4, r9]	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg, <variable>.CodecInfo.stMp2Packet.BsLength
	str	r0, [r4, lr]	@ D.39904, <variable>.CodecInfo.stMp2Packet.BsPhyAddr
	mov	r0, r6	@, pBs
	str	r8, [r4, ip]	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg, <variable>.CodecInfo.stMp2Packet.BsPhyAddr
	mov	ip, #1	@,
	strb	ip, [r4, r7]	@, <variable>.CodecInfo.stMp2Packet.IsLastSeg
	strb	r8, [r4, sl]	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg, <variable>.CodecInfo.stMp2Packet.IsLastSeg
	bl	BsInit	@
	strb	r8, [r4, r7]	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg, <variable>.CodecInfo.stMp2Packet.IsLastSeg
	mov	r0, #1	@,
	strb	r0, [r4, sl]	@, <variable>.CodecInfo.stMp2Packet.IsLastSeg
	mov	r0, r6	@, pBs
	bl	BsToNextByte	@
	mov	r0, r6	@, pBs
	bl	BsResidBits	@
	add	r9, r0, #7	@ tmp216, D.39906,
	cmp	r0, #0	@ D.39906,
	movlt	r0, r9	@ D.39906, tmp216
	mov	r3, r0, asr #3	@ tmp217, D.39906,
	sub	r9, r3, #3	@ RemainByte.1787, tmp217,
	cmp	r9, #0	@ RemainByte.1787,
	ble	.L344	@,
	mov	r1, #24	@,
	mov	r0, r6	@, pBs
	and	r8, r3, #1	@, tmp217,
	str	r8, [fp, #-48]	@, %sfp
	bl	BsShow	@
	movw	sl, #:lower16:.LANCHOR2	@ tmp377,
	movw	r8, #1023	@ tmp375,
	movt	sl, #:upper16:.LANCHOR2	@ tmp377,
	bic	r1, r0, #-16777216	@ tmp218,,
	cmp	r1, #1	@ tmp218,
	beq	.L339	@,
	cmp	r5, r8	@ cnt, tmp375
	ble	.L381	@,
	mov	r0, r6	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
.L382:
	mov	r7, #1	@ i.1790,
	cmp	r9, r7	@ RemainByte.1787, i.1790
	ble	.L344	@,
	ldr	ip, [fp, #-48]	@, %sfp
	cmp	ip, #0	@,
	beq	.L347	@,
	mov	r0, r6	@, pBs
	mov	r1, #24	@,
	bl	BsShow	@
	bic	r0, r0, #-16777216	@ tmp406,,
	cmp	r0, r7	@ tmp406,
	beq	.L339	@,
	cmp	r5, r8	@ cnt, tmp375
	bgt	.L395	@,
	mov	r0, r6	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
	strb	r0, [sl, r5]	@, g_tmpusd
	add	r5, r5, #1	@ cnt, cnt,
.L386:
	add	r7, r7, #1	@ i.1790, tmp385,
	cmp	r9, r7	@ RemainByte.1787, i.1790
	ble	.L344	@,
.L347:
	mov	r1, #24	@,
	mov	r0, r6	@, pBs
	bl	BsShow	@
	mov	r1, #8	@,
	bic	r2, r0, #-16777216	@ tmp397,,
	mov	r0, r6	@, pBs
	cmp	r2, #1	@ tmp397,
	beq	.L339	@,
	cmp	r5, r8	@ cnt, tmp375
	bgt	.L345	@,
	bl	BsGet	@
	strb	r0, [sl, r5]	@, g_tmpusd
	add	r5, r5, #1	@ cnt, cnt,
.L346:
	mov	r1, #24	@,
	mov	r0, r6	@, pBs
	bl	BsShow	@
	add	r7, r7, #1	@ tmp385, i.1790,
	mov	r1, #8	@,
	bic	ip, r0, #-16777216	@ tmp401,,
	mov	r0, r6	@, pBs
	cmp	ip, #1	@ tmp401,
	beq	.L339	@,
	cmp	r5, r8	@ cnt, tmp375
	bgt	.L395	@,
	bl	BsGet	@
	add	r7, r7, #1	@ i.1790, tmp385,
	cmp	r9, r7	@ RemainByte.1787, i.1790
	strb	r0, [sl, r5]	@, g_tmpusd
	add	r5, r5, #1	@ cnt, cnt,
	bgt	.L347	@,
	b	.L344	@
.L395:
	mov	r0, r6	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
	b	.L386	@
.L345:
	mov	r0, r6	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
	b	.L346	@
.L338:
	mov	r5, #0	@ cnt,
	b	.L343	@
.L381:
	mov	r0, r6	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
	strb	r0, [sl, r5]	@, g_tmpusd
	add	r5, r5, #1	@ cnt, cnt,
	b	.L382	@
	.fnend
	.size	MP2_GetUsrData, .-MP2_GetUsrData
	.align	2
	.global	MP2_GetImageBuffer
	.type	MP2_GetImageBuffer, %function
MP2_GetImageBuffer:
	.fnstart
.LFB1542:
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
	movw	r5, #:lower16:114672	@ tmp145,
	movt	r5, #:upper16:114672	@ tmp145,
	mov	r4, r0	@ pCtx, pCtx
	mov	r1, #1	@,
	movw	r6, #:lower16:79264	@ tmp147,
	ldr	r0, [r0, r5]	@, <variable>.ChanID
	movt	r6, #:upper16:79264	@ tmp147,
	bl	FSP_NewLogicFs	@
	cmp	r0, #0	@ D.39760,
	mov	r1, r0	@ D.39760,
	str	r0, [r4, r6]	@ D.39760, <variable>.CodecInfo.CurFsID
	blt	.L405	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	subs	r5, r0, #0	@ pLf,
	beq	.L406	@,
	ldr	r2, [r4, r6]	@, <variable>.CodecInfo.CurFsID
	mov	r0, #18	@,
	movw	r1, #:lower16:.LC27	@,
	movt	r1, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #520]	@ D.39785, <variable>.pstDecodeFs
	cmp	r2, #0	@ D.39785,
	beq	.L403	@,
	ldr	r3, [r5, #524]	@ D.39788, <variable>.pstDispOutFs
	cmp	r3, #0	@ D.39788,
	beq	.L403	@,
	ldr	ip, [r5, #528]	@ D.39791, <variable>.pstTfOutFs
	cmp	ip, #0	@ D.39791,
	beq	.L403	@,
	ldr	ip, [ip, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	mov	r0, #18	@,
	ldr	r2, [r2, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r1, #:lower16:.LC28	@,
	ldr	r3, [r3, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movt	r1, #:upper16:.LC28	@,
	str	ip, [sp, #0]	@ <variable>.PhyAddr,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.39779,
.L401:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L403:
	mov	r0, #1	@ D.39779,
	b	.L401	@
.L405:
	movw	r7, #:lower16:79260	@ tmp151,
	movt	r7, #:upper16:79260	@ tmp151,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImg,
	beq	.L400	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	movw	sl, #:lower16:79256	@ tmp175,
	ldr	r1, [r6, #212]	@, <variable>.p_usrdat
	movt	sl, #:upper16:79256	@ tmp175,
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #216]	@, <variable>.p_usrdat
	mov	r8, #0	@ tmp165,
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #220]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #224]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r8, [r6, #224]	@ tmp165, <variable>.p_usrdat
	str	r8, [r6, #212]	@ tmp165, <variable>.p_usrdat
	mov	r2, #1	@,
	str	r8, [r6, #216]	@ tmp165, <variable>.p_usrdat
	str	r8, [r6, #220]	@ tmp165, <variable>.p_usrdat
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, sl]	@, <variable>.CodecInfo.FwdFsID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	str	r8, [r4, r7]	@ tmp165, <variable>.CodecInfo.BwdFsID
	str	r8, [r4, sl]	@ tmp165, <variable>.CodecInfo.FwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, r8	@,
	bne	.L407	@,
.L400:
	movw	r2, #:lower16:79220	@ tmp187,
	movw	r3, #:lower16:114672	@ tmp189,
	movt	r2, #:upper16:79220	@ tmp187,
	movt	r3, #:upper16:114672	@ tmp189,
	add	r1, r4, #79872	@, pCtx,
	mov	r5, #0	@ tmp188,
	add	r1, r1, #640	@,,
	str	r5, [r4, r2]	@ tmp188, <variable>.CodecInfo.RefNum
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, r5	@ D.39779, tmp188
	b	.L401	@
.L407:
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, r7]	@ D.39777, <variable>.CodecInfo.BwdFsID
	str	r0, [r4, sl]	@ D.39777, <variable>.CodecInfo.FwdFsID
	b	.L400	@
.L406:
	movw	r1, #:lower16:.LC26	@,
	movw	r2, #1784	@,
	movt	r1, #:upper16:.LC26	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.39779, pLf
	b	.L401	@
	.fnend
	.size	MP2_GetImageBuffer, .-MP2_GetImageBuffer
	.align	2
	.global	MP2_SetImgFormat
	.type	MP2_SetImgFormat, %function
MP2_SetImgFormat:
	.fnstart
.LFB1539:
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
	movw	r1, #:lower16:114672	@ tmp161,
	movw	r2, #:lower16:79264	@ tmp163,
	movt	r1, #:upper16:114672	@ tmp161,
	movt	r2, #:upper16:79264	@ tmp163,
	mov	r6, r0	@ pCtx, pCtx
	movw	r3, #:lower16:80504	@ tmp160,
	movt	r3, #:upper16:80504	@ tmp160,
	ldr	r0, [r0, r1]	@, <variable>.ChanID
	ldr	r1, [r6, r2]	@, <variable>.CodecInfo.CurFsID
	ldr	r5, [r6, r3]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pImg,
	ldmeqfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	ldrb	ip, [r5, #22]	@ zero_extendqisi2	@ D.39554, <variable>.picture_coding_type
	ldrb	lr, [r5, #27]	@ zero_extendqisi2	@ D.39560, <variable>.progressive_sequence
	cmp	ip, #4	@ D.39554,
	ldr	r8, [r5, #128]	@ vfmt, <variable>.video_format
	subne	ip, ip, #1	@ tmp165, D.39554,
	ldr	r3, [r4, #160]	@ D.39561, <variable>.format
	moveq	ip, #0	@ prephitmp.1867,
	andne	ip, ip, #3	@ prephitmp.1867, tmp165,
	cmp	lr, #0	@ D.39560,
	ldrb	r7, [r5, #9]	@ zero_extendqisi2	@ D.39563, <variable>.picture_structure
	movne	r0, #4096	@ prephitmp.1893,
	bne	.L413	@,
	cmp	r7, #3	@ D.39563,
	beq	.L428	@,
	movw	r2, #:lower16:79192	@ tmp168,
	movt	r2, #:upper16:79192	@ tmp168,
	ldr	r0, [r6, r2]	@ <variable>.CodecInfo.Second_Field, <variable>.CodecInfo.Second_Field
	cmp	r0, #0	@ <variable>.CodecInfo.Second_Field,
	bne	.L415	@,
	cmp	r7, #1	@ D.39563,
	movne	r0, #0	@, tmp172
	moveq	r0, #1	@, tmp172
	mov	r0, r0, asl #12	@ prephitmp.1893, tmp172,
.L413:
	movw	r2, #:lower16:80504	@ tmp177,
	movt	r2, #:upper16:80504	@ tmp177,
	orr	r3, r7, r3, lsr #10	@, tmp192, D.39563, D.39561,
	and	r8, r8, #3	@ tmp189, vfmt,
	ldr	r2, [r6, r2]	@ <variable>.pSyntaxInfNew, <variable>.pSyntaxInfNew
	and	r3, r3, #3	@ tmp193, tmp192,
	ldr	r2, [r2, #84]	@ <variable>.aspect_ratio_information, <variable>.aspect_ratio_information
	str	ip, [r4, #156]	@ prephitmp.1867, <variable>.bottom_fld_type
	sub	r2, r2, #1	@ D.41146, <variable>.aspect_ratio_information,
	str	ip, [r4, #152]	@ prephitmp.1867, <variable>.top_fld_type
	cmp	r2, #2	@ D.41146,
	movwls	r1, #:lower16:.LANCHOR0	@ tmp179,
	movtls	r1, #:upper16:.LANCHOR0	@ tmp179,
	addls	r2, r1, r2, asl #2	@, tmp182, tmp179, D.41146,
	movhi	r1, #0	@ prephitmp.1894,
	movhi	r2, r1	@ prephitmp.1896, prephitmp.1894
	ldrls	r1, [r2, #128]	@ prephitmp.1894, CSWTCH.526
	andls	r2, r1, #7	@ pretmp.1895, prephitmp.1894,
	movls	r2, r2, asl #14	@ prephitmp.1896, pretmp.1895,
	cmp	lr, #0	@ D.39560,
	moveq	lr, #256	@ tmp188,
	movne	lr, #0	@ tmp188,
	orr	lr, lr, r8, asl #5	@, tmp191, tmp188, tmp189,
	orr	r3, lr, r3, asl #10	@, tmp195, tmp191, tmp193,
	orr	r3, r3, ip	@ tmp196, tmp195, prephitmp.1867
	orr	ip, r3, r0	@ tmp197, tmp196, prephitmp.1893
	mov	r0, r4	@, pImg
	orr	lr, ip, r2	@ tmp198, tmp197, prephitmp.1896
	str	lr, [r4, #160]	@ tmp198, <variable>.format
	bl	SetAspectRatio	@
	mov	r3, #3	@ tmp199,
	str	r3, [r4, #384]	@ tmp199, <variable>.ImageDnr.video_standard
	mov	r1, #1	@ tmp202,
	ldrb	ip, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	mov	r2, #1	@ tmp209,
	strb	r1, [r4, #379]	@ tmp202, <variable>.ImageDnr.use_pic_qp_en
	cmp	ip, #3	@ <variable>.picture_structure,
	movne	r1, #4	@ iftmp.475,
	moveq	r1, #0	@ iftmp.475,
	strb	r1, [r4, #372]	@ iftmp.475, <variable>.ImageDnr.pic_structure
	ldr	r0, [r6, #4]	@ D.39601, <variable>.pMp2DecParam
	cmp	r0, #0	@ D.39601,
	streqb	r0, [r4, #379]	@ D.39601, <variable>.ImageDnr.use_pic_qp_en
	ldrneb	r0, [r0, #144]	@ zero_extendqisi2	@ prephitmp.1868, <variable>.EstmatedPicQp
	moveq	ip, #32	@ tmp208,
	strb	r2, [r4, #377]	@ tmp209, <variable>.ImageDnr.chroma_format_idc
	moveq	r0, ip	@ prephitmp.1868, tmp208
	streq	ip, [r4, #388]	@ tmp208, <variable>.ImageDnr.QP_Y
	strne	r0, [r4, #388]	@ prephitmp.1868, <variable>.ImageDnr.QP_Y
	str	r0, [r4, #392]	@ prephitmp.1868, <variable>.ImageDnr.QP_U
	str	r0, [r4, #396]	@ prephitmp.1868, <variable>.ImageDnr.QP_V
	ldr	r3, [r5, #72]	@ <variable>.frame_rate, <variable>.frame_rate
	str	r3, [r4, #188]	@ <variable>.frame_rate, <variable>.frame_rate
	ldr	r3, [r5, #48]	@ prephitmp.1869, <variable>.horizontal_size
	str	r3, [r4, #164]	@ prephitmp.1869, <variable>.image_width
	ldr	r2, [r5, #52]	@ D.39611, <variable>.vertical_size
	str	r2, [r4, #168]	@ D.39611, <variable>.image_height
	ldr	r1, [r6, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	ip, [r1, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	ip, #25	@ <variable>.eCapLevel,
	movne	r2, r3	@ <variable>.image_width, prephitmp.1869
	beq	.L429	@,
.L422:
	ldr	r1, [r4, #168]	@ <variable>.image_height, <variable>.image_height
	mov	ip, r3, lsr #1	@ tmp226, prephitmp.1869,
	str	ip, [r4, #180]	@ tmp226, <variable>.disp_center_x
	mov	r3, r1, lsr #1	@ tmp228, <variable>.image_height,
	str	r3, [r4, #184]	@ tmp228, <variable>.disp_center_y
	ldr	r3, [r5, #148]	@ D.39643, <variable>.display_horizontal_size
	cmp	r3, #0	@ D.39643,
	beq	.L423	@,
	ldr	lr, [r5, #152]	@ <variable>.display_vertical_size, <variable>.display_vertical_size
	cmp	lr, #0	@ <variable>.display_vertical_size,
	beq	.L423	@,
	cmp	r2, r3	@ <variable>.image_width, D.39643
	strls	r2, [r4, #172]	@, <variable>.image_width, <variable>.disp_width
	strhi	r3, [r4, #172]	@, D.39643, <variable>.disp_width
	ldr	r2, [r5, #152]	@ <variable>.display_vertical_size, <variable>.display_vertical_size
	cmp	r1, r2	@ <variable>.image_height, <variable>.display_vertical_size
	strls	r1, [r4, #176]	@, <variable>.image_height, <variable>.disp_height
	strhi	r2, [r4, #176]	@, <variable>.display_vertical_size, <variable>.disp_height
	b	.L424	@
.L423:
	str	r2, [r4, #172]	@ <variable>.image_width, <variable>.disp_width
	str	r1, [r4, #176]	@ <variable>.image_height, <variable>.disp_height
.L424:
	ldrb	lr, [r5, #27]	@ zero_extendqisi2	@ <variable>.progressive_sequence, <variable>.progressive_sequence
	mov	r0, r6	@, pCtx
	str	lr, [r4, #484]	@ <variable>.progressive_sequence, <variable>.optm_inf.IsProgressiveSeq
	ldrb	ip, [r5, #18]	@ zero_extendqisi2	@ <variable>.progressive_frame, <variable>.progressive_frame
	str	ip, [r4, #488]	@ <variable>.progressive_frame, <variable>.optm_inf.IsProgressiveFrm
	ldr	r3, [r5, #144]	@ <variable>.matrix_coefficients, <variable>.matrix_coefficients
	str	r3, [r4, #496]	@ <variable>.matrix_coefficients, <variable>.optm_inf.MatrixCoef
	bl	MP2_CalcRealEncFrameRate	@
	movw	r0, #:lower16:79348	@ tmp240,
	movt	r0, #:upper16:79348	@ tmp240,
	ldr	r1, [r6, r0]	@ <variable>.CodecInfo.RealFrmRate, <variable>.CodecInfo.RealFrmRate
	str	r1, [r4, #492]	@ <variable>.CodecInfo.RealFrmRate, <variable>.optm_inf.RealFrmRate
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L415:
	subs	r2, r7, #1	@ tmp175, D.39563,
	movne	r2, #1	@ tmp175
	mov	r0, r2, asl #12	@ prephitmp.1893, tmp175,
	b	.L413	@
.L428:
	ldrb	r2, [r5, #10]	@ zero_extendqisi2	@ <variable>.top_field_first, <variable>.top_field_first
	and	r0, r2, #1	@ tmp167, <variable>.top_field_first,
	mov	r0, r0, asl #12	@ prephitmp.1893, tmp167,
	b	.L413	@
.L429:
	ldr	r1, [r4, #192]	@ D.39616, <variable>.image_stride
	add	r0, r2, #15	@ tmp215, D.39611,
	ldr	r3, [r4, #104]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	mov	r2, r0, lsr #4	@ tmp216, tmp215,
	ldr	r0, [r4, #32]	@ <variable>.luma_vir_addr, <variable>.luma_vir_addr
	mov	lr, r1, asl #4	@ tmp214, D.39616,
	add	ip, r3, r1	@ tmp221, <variable>.luma_phy_addr, D.39616
	str	ip, [r4, #96]	@ tmp221, <variable>.btm_luma_phy_addr
	mul	r2, r2, lr	@ D.39622, tmp216, tmp214
	str	r3, [r4, #120]	@ <variable>.luma_phy_addr, <variable>.luma_2d_phy_addr
	str	r0, [r4, #48]	@ <variable>.luma_vir_addr, <variable>.luma_2d_vir_addr
	str	r3, [r4, #88]	@ <variable>.luma_phy_addr, <variable>.top_luma_phy_addr
	add	ip, r2, r3	@ tmp218, D.39622, <variable>.luma_phy_addr
	add	lr, r0, r2	@ tmp220, <variable>.luma_vir_addr, D.39622
	str	ip, [r4, #108]	@ tmp218, <variable>.chrom_phy_addr
	add	r0, ip, r1	@ tmp222, tmp218, D.39616
	str	lr, [r4, #36]	@ tmp220, <variable>.chrom_vir_addr
	str	r0, [r4, #100]	@ tmp222, <variable>.btm_chrom_phy_addr
	mov	r0, ip	@, tmp218
	str	ip, [r4, #92]	@ tmp218, <variable>.top_chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r2, [r4, #164]	@ <variable>.image_width, <variable>.image_width
	ldr	r1, [r4, #92]	@ <variable>.top_chrom_phy_addr, <variable>.top_chrom_phy_addr
	mov	r3, r2	@ prephitmp.1869, <variable>.image_width
	str	r1, [r4, #124]	@ <variable>.top_chrom_phy_addr, <variable>.chrom_2d_phy_addr
	str	r0, [r4, #52]	@, <variable>.chrom_2d_vir_addr
	b	.L422	@
	.fnend
	.size	MP2_SetImgFormat, .-MP2_SetImgFormat
	.align	2
	.global	MPEG2DEC_VDMPostProc
	.type	MPEG2DEC_VDMPostProc, %function
MPEG2DEC_VDMPostProc:
	.fnstart
.LFB1566:
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
	mov	r4, r0	@ pCtx, pCtx
	ldrb	ip, [r4, #152]	@ zero_extendqisi2	@ <variable>.Mp2DecParam.EstmatedPicQp, <variable>.Mp2DecParam.EstmatedPicQp
	movw	r0, #:lower16:79360	@ tmp161,
	movt	r0, #:upper16:79360	@ tmp161,
	movw	r8, #:lower16:80504	@ tmp160,
	movt	r8, #:upper16:80504	@ tmp160,
	mov	r2, r1	@, ErrRatio
	strb	ip, [r4, r0]	@ <variable>.Mp2DecParam.EstmatedPicQp, <variable>.CodecInfo.EstmatedPicQp
	mov	r7, r1	@ ErrRatio, ErrRatio
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC29	@,
	movt	r1, #:upper16:.LC29	@,
	ldr	r5, [r4, r8]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	MP2_RecordVFMWState	@
	movw	r8, #:lower16:114672	@ tmp166,
	mov	r0, r4	@, pCtx
	movt	r8, #:upper16:114672	@ tmp166,
	movw	r6, #:lower16:79264	@ tmp168,
	movt	r6, #:upper16:79264	@ tmp168,
	bl	MP2_ClearCurPic	@
	add	r0, r4, #8	@, pCtx,
	movw	r1, #45320	@,
	bl	__memzero	@
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	movw	r2, #:lower16:79260	@ tmp172,
	movt	r2, #:upper16:79260	@ tmp172,
	ldr	r1, [r4, r2]	@, <variable>.CodecInfo.BwdFsID
	mov	r6, r0	@ pCurImg,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	movw	r3, #:lower16:79256	@ tmp176,
	movt	r3, #:upper16:79256	@ tmp176,
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.FwdFsID
	mov	sl, r0	@ pBwdImg,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	cmp	r6, #0	@ pCurImg,
	mov	ip, r0	@ pFwdImg,
	beq	.L457	@,
	ldrb	r1, [r5, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	cmp	r7, #0	@ ErrRatio,
	movw	lr, #45328	@ tmp179,
	movlt	r7, #0	@ iftmp.513,
	strb	r1, [r4, lr]	@ <variable>.picture_coding_type, <variable>.CodecInfo.LastDecPicCodingType
	blt	.L434	@,
	cmp	r7, #100	@ ErrRatio,
	movge	r7, #100	@ iftmp.513,
.L434:
	str	r7, [r6, #200]	@ iftmp.513, <variable>.error_level
	ldrb	r3, [r5, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	cmp	r3, #3	@ <variable>.picture_coding_type,
	beq	.L435	@,
	ldr	r0, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r0, #0]	@ <variable>.s32RefErrThr, <variable>.s32RefErrThr
	cmp	r7, r2	@ iftmp.513, <variable>.s32RefErrThr
	bhi	.L458	@,
.L435:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC31	@,
	movt	r1, #:upper16:.LC31	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	MP2_SetImgFormat	@
	ldrb	r3, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	cmp	r3, #3	@ <variable>.picture_structure,
	beq	.L443	@,
	movw	r1, #:lower16:79192	@ tmp243,
	movt	r1, #:upper16:79192	@ tmp243,
	ldr	ip, [r4, r1]	@ <variable>.CodecInfo.Second_Field, <variable>.CodecInfo.Second_Field
	cmp	ip, #1	@ <variable>.CodecInfo.Second_Field,
	movne	r0, #1	@ D.40657,
	beq	.L443	@,
.L432:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L443:
	movw	r0, #:lower16:79196	@ tmp227,
	movt	r0, #:upper16:79196	@ tmp227,
	movw	r3, #:lower16:79196	@ tmp230,
	movw	r1, #:lower16:79200	@ tmp232,
	ldr	lr, [r4, r0]	@ temp.1980, <variable>.CodecInfo.pUsrDatArray
	movt	r1, #:upper16:79200	@ tmp232,
	movt	r3, #:upper16:79196	@ tmp230,
	mov	ip, #0	@ tmp231,
	cmp	lr, #0	@ temp.1980,
	strne	lr, [r6, #212]	@ temp.1980, <variable>.p_usrdat
	movne	lr, #0	@ tmp229,
	strne	lr, [r4, r0]	@ tmp229, <variable>.CodecInfo.pUsrDatArray
	str	ip, [r4, r3]	@ tmp231, <variable>.CodecInfo.pUsrDatArray
	movw	r0, #:lower16:79200	@ tmp235,
	ldr	r2, [r4, r1]	@ temp.1982, <variable>.CodecInfo.pUsrDatArray
	movt	r0, #:upper16:79200	@ tmp235,
	movw	r3, #:lower16:79204	@ tmp237,
	movt	r3, #:upper16:79204	@ tmp237,
	cmp	r2, ip	@ temp.1982,
	strne	r2, [r6, #216]	@ temp.1982, <variable>.p_usrdat
	strne	ip, [r4, r1]	@ tmp231, <variable>.CodecInfo.pUsrDatArray
	mov	r1, #0	@ tmp236,
	str	r1, [r4, r0]	@ tmp236, <variable>.CodecInfo.pUsrDatArray
	movw	ip, #:lower16:79204	@ tmp240,
	ldr	lr, [r4, r3]	@ temp.1983, <variable>.CodecInfo.pUsrDatArray
	movt	ip, #:upper16:79204	@ tmp240,
	movw	r0, #:lower16:79208	@ tmp242,
	movt	r0, #:upper16:79208	@ tmp242,
	cmp	lr, r1	@ temp.1983,
	strne	lr, [r6, #220]	@ temp.1983, <variable>.p_usrdat
	mov	lr, #0	@ tmp241,
	strne	r1, [r4, r3]	@ tmp236, <variable>.CodecInfo.pUsrDatArray
	movw	r3, #:lower16:79212	@ tmp249,
	str	lr, [r4, ip]	@ tmp241, <variable>.CodecInfo.pUsrDatArray
	movt	r3, #:upper16:79212	@ tmp249,
	ldr	r2, [r4, r0]	@ D.40696, <variable>.CodecInfo.pUsrDatArray
	movw	ip, #:lower16:79208	@ tmp247,
	movt	ip, #:upper16:79208	@ tmp247,
	cmp	r2, lr	@ D.40696,
	strne	r2, [r6, #224]	@ D.40696, <variable>.p_usrdat
	strne	lr, [r4, r0]	@ tmp241, <variable>.CodecInfo.pUsrDatArray
	mov	r0, #0	@ tmp248,
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	str	r0, [r4, ip]	@ tmp248, <variable>.CodecInfo.pUsrDatArray
	str	r0, [r4, r3]	@ tmp248, <variable>.CodecInfo.TotalUsrDatNum
	ldr	r2, [lr, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r2, #1	@ <variable>.s32DecOrderOutput,
	beq	.L444	@,
	ldrb	r1, [r5, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	cmp	r1, #3	@ <variable>.picture_coding_type,
	beq	.L444	@,
	movw	r2, #:lower16:79256	@ tmp254,
	movt	r2, #:upper16:79256	@ tmp254,
	movw	lr, #:lower16:79268	@ tmp255,
	movt	lr, #:upper16:79268	@ tmp255,
	ldr	r1, [r4, r2]	@ prephitmp.1919,
	str	r1, [r4, lr]	@ prephitmp.1919, <variable>.CodecInfo.ToQueFsID
.L446:
	cmn	r1, #1	@ prephitmp.1919,
	beq	.L447	@,
	movw	r6, #:lower16:114672	@ tmp260,
	movt	r6, #:upper16:114672	@ tmp260,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetDisplay	@
	cmp	r0, #1	@,
	beq	.L448	@,
	movw	ip, #:lower16:79268	@ tmp264,
	movt	ip, #:upper16:79268	@ tmp264,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, ip]	@, <variable>.CodecInfo.ToQueFsID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	beq	.L448	@,
.L447:
	ldrb	r3, [r5, #27]	@ zero_extendqisi2	@ <variable>.progressive_sequence, <variable>.progressive_sequence
	cmp	r3, #1	@ <variable>.progressive_sequence,
	beq	.L459	@,
	ldrb	r2, [r5, #18]	@ zero_extendqisi2	@ <variable>.progressive_frame, <variable>.progressive_frame
	cmp	r2, #1	@ <variable>.progressive_frame,
	beq	.L460	@,
	movw	lr, #:lower16:79344	@ tmp350,
	movt	lr, #:upper16:79344	@ tmp350,
	movw	r0, #:lower16:79340	@ tmp353,
	movt	r0, #:upper16:79340	@ tmp353,
	ldr	r2, [r4, lr]	@ <variable>.GopFrmCnt, <variable>.GopFrmCnt
	add	r1, r2, #1	@ temp.1979, <variable>.GopFrmCnt,
	str	r1, [r4, lr]	@ temp.1979, <variable>.GopFrmCnt
	mov	ip, r1, asl #1	@ tmp354, temp.1979,
	str	ip, [r4, r0]	@ tmp354, <variable>.GopFldCnt
.L454:
	movw	r2, #:lower16:79336	@ tmp355,
	movt	r2, #:upper16:79336	@ tmp355,
	movw	r3, #:lower16:79188	@ tmp359,
	movt	r3, #:upper16:79188	@ tmp359,
	ldr	ip, [r4, r2]	@ <variable>.GopFrmCntNoRpt, <variable>.GopFrmCntNoRpt
	mov	r0, #1	@ D.40657,
	add	lr, ip, r0	@ tmp358, <variable>.GopFrmCntNoRpt,
	str	lr, [r4, r2]	@ tmp358, <variable>.GopFrmCntNoRpt
	ldr	r1, [r4, r3]	@ <variable>.CodecInfo.Frame_Cnt, <variable>.CodecInfo.Frame_Cnt
	add	ip, r1, r0	@ tmp362, <variable>.CodecInfo.Frame_Cnt,
	str	ip, [r4, r3]	@ tmp362,
	b	.L432	@
.L458:
	movw	r5, #:lower16:114672	@ tmp185,
	movw	r7, #:lower16:79260	@ tmp187,
	movt	r5, #:upper16:114672	@ tmp185,
	movt	r7, #:upper16:79260	@ tmp187,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImg,
	beq	.L436	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	movw	sl, #:lower16:79256	@ tmp211,
	ldr	r1, [r6, #212]	@, <variable>.p_usrdat
	movt	sl, #:upper16:79256	@ tmp211,
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #216]	@, <variable>.p_usrdat
	mov	r8, #0	@ tmp201,
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #220]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #224]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r8, [r6, #224]	@ tmp201, <variable>.p_usrdat
	str	r8, [r6, #212]	@ tmp201, <variable>.p_usrdat
	mov	r2, #1	@,
	str	r8, [r6, #216]	@ tmp201, <variable>.p_usrdat
	str	r8, [r6, #220]	@ tmp201, <variable>.p_usrdat
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, sl]	@, <variable>.CodecInfo.FwdFsID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	str	r8, [r4, r7]	@ tmp201, <variable>.CodecInfo.BwdFsID
	str	r8, [r4, sl]	@ tmp201, <variable>.CodecInfo.FwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, r8	@,
	beq	.L436	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, r7]	@ D.40688, <variable>.CodecInfo.BwdFsID
	str	r0, [r4, sl]	@ D.40688, <variable>.CodecInfo.FwdFsID
.L436:
	movw	r1, #:lower16:79220	@ tmp223,
	movt	r1, #:upper16:79220	@ tmp223,
	mov	ip, #0	@ tmp224,
	mov	r0, #1	@ D.40657,
	str	ip, [r4, r1]	@ tmp224,
	b	.L432	@
.L460:
	movw	r2, #:lower16:79344	@ tmp340,
	movt	r2, #:upper16:79344	@ tmp340,
	movw	ip, #:lower16:79340	@ tmp344,
	movt	ip, #:upper16:79340	@ tmp344,
	ldr	r3, [r4, r2]	@ <variable>.GopFrmCnt, <variable>.GopFrmCnt
	ldr	r0, [r4, ip]	@ <variable>.GopFldCnt, <variable>.GopFldCnt
	add	lr, r3, #1	@ tmp343, <variable>.GopFrmCnt,
	str	lr, [r4, r2]	@ tmp343, <variable>.GopFrmCnt
	ldrb	r1, [r5, #16]	@ zero_extendqisi2	@ <variable>.repeat_first_field, <variable>.repeat_first_field
	add	r3, r0, #2	@ tmp346, <variable>.GopFldCnt,
	add	lr, r3, r1	@ tmp349, tmp346, <variable>.repeat_first_field
	str	lr, [r4, ip]	@ tmp349, <variable>.GopFldCnt
	b	.L454	@
.L448:
	movw	r7, #:lower16:114672	@ tmp266,
	movw	r8, #:lower16:79268	@ tmp268,
	movt	r7, #:upper16:114672	@ tmp266,
	movt	r8, #:upper16:79268	@ tmp268,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.ToQueFsID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pToQueImg,
	beq	.L461	@,
	ldr	r2, [r6, #200]	@ D.40721, <variable>.error_level
	cmp	r2, #0	@ D.40721,
	beq	.L450	@,
	ldr	sl, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [sl, #4]	@ D.40723, <variable>.s32OutErrThr
	cmp	r2, r3	@ D.40721, D.40723
	bhi	.L451	@,
.L450:
	movw	r8, #:lower16:79268	@ tmp272,
	movt	r8, #:upper16:79268	@ tmp272,
	movw	r7, #:lower16:114672	@ tmp273,
	movt	r7, #:upper16:114672	@ tmp273,
	ldr	sl, [r4, r8]	@ temp.1967, <variable>.CodecInfo.ToQueFsID
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	mov	r1, sl	@, temp.1967
	bl	FSP_GetRef	@
	mov	r2, sl	@, temp.1967
	movw	r1, #:lower16:.LC32	@,
	movt	r1, #:upper16:.LC32	@,
	mov	r3, r0	@ D.40726,
	mov	r0, #12	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.ToQueFsID
	mov	r2, #1	@,
	bl	FSP_SetDisplay	@
	add	r2, r4, #79872	@, pCtx,
	ldr	r0, [r4, r7]	@ <variable>.ChanID, <variable>.ChanID
	add	r3, r2, #640	@,,
	mov	r1, #3	@,
	mov	r2, r4	@, pCtx
	str	r6, [sp, #0]	@ pToQueImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	beq	.L452	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	mov	r5, #0	@ tmp287,
	ldr	r1, [r6, #212]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r5, [r6, #212]	@ tmp287, <variable>.p_usrdat
	ldr	r1, [r6, #216]	@, <variable>.p_usrdat
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r5, [r6, #216]	@ tmp287, <variable>.p_usrdat
	ldr	r1, [r6, #220]	@, <variable>.p_usrdat
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r5, [r6, #220]	@ tmp287, <variable>.p_usrdat
	ldr	r1, [r6, #224]	@, <variable>.p_usrdat
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r5, [r6, #224]	@ tmp287, <variable>.p_usrdat
	mov	r2, r5	@, tmp287
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.ToQueFsID
	bl	FSP_SetDisplay	@
	mov	r0, r5	@ D.40657, tmp287
	b	.L432	@
.L444:
	movw	r3, #:lower16:79264	@ tmp258,
	movt	r3, #:upper16:79264	@ tmp258,
	movw	r0, #:lower16:79268	@ tmp259,
	movt	r0, #:upper16:79268	@ tmp259,
	ldr	r1, [r4, r3]	@ prephitmp.1919,
	str	r1, [r4, r0]	@ prephitmp.1919, <variable>.CodecInfo.ToQueFsID
	b	.L446	@
.L459:
	movw	lr, #:lower16:79344	@ tmp330,
	movt	lr, #:upper16:79344	@ tmp330,
	ldrb	ip, [r5, #16]	@ zero_extendqisi2	@ <variable>.repeat_first_field, <variable>.repeat_first_field
	movw	r2, #:lower16:79340	@ tmp337,
	ldr	r3, [r4, lr]	@ <variable>.GopFrmCnt, <variable>.GopFrmCnt
	movt	r2, #:upper16:79340	@ tmp337,
	ldrb	r0, [r5, #10]	@ zero_extendqisi2	@ <variable>.top_field_first, <variable>.top_field_first
	add	r1, r3, #1	@ tmp331, <variable>.GopFrmCnt,
	add	r3, r1, ip	@ tmp334, tmp331, <variable>.repeat_first_field
	add	r1, r3, r0	@ D.40745, tmp334, <variable>.top_field_first
	str	r1, [r4, lr]	@ D.40745, <variable>.GopFrmCnt
	mov	ip, r1, asl #1	@ tmp338, D.40745,
	str	ip, [r4, r2]	@ tmp338, <variable>.GopFldCnt
	b	.L454	@
.L451:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC33	@,
	movt	r1, #:upper16:.LC33	@,
	mov	sl, #0	@ tmp312,
	bl	dprint_vfmw	@
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r6, #212]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	sl, [r6, #212]	@ tmp312, <variable>.p_usrdat
	ldr	r1, [r6, #216]	@, <variable>.p_usrdat
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	sl, [r6, #216]	@ tmp312, <variable>.p_usrdat
	ldr	r1, [r6, #220]	@, <variable>.p_usrdat
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	sl, [r6, #220]	@ tmp312, <variable>.p_usrdat
	ldr	r1, [r6, #224]	@, <variable>.p_usrdat
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	sl, [r6, #224]	@ tmp312, <variable>.p_usrdat
	mov	r2, sl	@, tmp312
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.ToQueFsID
	bl	FSP_SetDisplay	@
	b	.L447	@
.L457:
	mov	r3, sl	@, pBwdImg
	mov	r0, r6	@, pCurImg
	movw	r1, #:lower16:.LC30	@,
	mov	r2, r6	@, pCurImg
	movt	r1, #:upper16:.LC30	@,
	str	ip, [sp, #0]	@ pFwdImg,
	bl	dprint_vfmw	@
	mov	r0, r6	@ D.40657, pCurImg
	b	.L432	@
.L452:
	movw	lr, #:lower16:114680	@ tmp304,
	movt	lr, #:upper16:114680	@ tmp304,
	ldr	r0, [r4, lr]	@ <variable>.numOutputFrame, <variable>.numOutputFrame
	add	r1, r0, #1	@ tmp307, <variable>.numOutputFrame,
	str	r1, [r4, lr]	@ tmp307, <variable>.numOutputFrame
	b	.L447	@
.L461:
	movw	r1, #:lower16:.LC26	@,
	movw	r2, #3272	@,
	movt	r1, #:upper16:.LC26	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@ D.40657, pToQueImg
	b	.L432	@
	.fnend
	.size	MPEG2DEC_VDMPostProc, .-MPEG2DEC_VDMPostProc
	.align	2
	.global	MPEG2DEC_GetRemainImg
	.type	MPEG2DEC_GetRemainImg, %function
MPEG2DEC_GetRemainImg:
	.fnstart
.LFB1565:
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
	mov	r4, r0	@ pCtx, pCtx
	ldr	r0, [r0, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [r0, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r3, #1	@ <variable>.s32DecOrderOutput,
	beq	.L463	@,
	movw	r7, #:lower16:114672	@ tmp146,
	movw	r6, #:lower16:79260	@ tmp148,
	movt	r7, #:upper16:114672	@ tmp146,
	movt	r6, #:upper16:79260	@ tmp148,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pImg,
	beq	.L463	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	beq	.L474	@,
.L463:
	add	r0, r4, #79872	@, pCtx,
	add	r0, r0, #640	@,,
	bl	GetVoLastImageID	@
.L469:
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L474:
	mov	r0, r4	@, pCtx
	mov	r7, #0	@ tmp158,
	bl	MP2_SetImgFormat	@
	movw	r3, #:lower16:79196	@ tmp154,
	movt	r3, #:upper16:79196	@ tmp154,
	movw	r1, #:lower16:79196	@ tmp157,
	movw	r0, #:lower16:79200	@ tmp159,
	movt	r1, #:upper16:79196	@ tmp157,
	ldr	ip, [r4, r3]	@ temp.2027, <variable>.CodecInfo.pUsrDatArray
	movt	r0, #:upper16:79200	@ tmp159,
	movw	r6, #:lower16:79200	@ tmp162,
	movt	r6, #:upper16:79200	@ tmp162,
	cmp	ip, #0	@ temp.2027,
	strne	ip, [r5, #212]	@ temp.2027, <variable>.p_usrdat
	movne	ip, #0	@ tmp156,
	strne	ip, [r4, r3]	@ tmp156, <variable>.CodecInfo.pUsrDatArray
	str	r7, [r4, r1]	@ tmp158, <variable>.CodecInfo.pUsrDatArray
	movw	ip, #:lower16:79204	@ tmp164,
	ldr	r2, [r4, r0]	@ temp.2032, <variable>.CodecInfo.pUsrDatArray
	movt	ip, #:upper16:79204	@ tmp164,
	mov	r1, #0	@ tmp163,
	cmp	r2, r7	@ temp.2032,
	strne	r2, [r5, #216]	@ temp.2032, <variable>.p_usrdat
	movw	r2, #:lower16:79204	@ tmp167,
	strne	r7, [r4, r0]	@ tmp158, <variable>.CodecInfo.pUsrDatArray
	movt	r2, #:upper16:79204	@ tmp167,
	str	r1, [r4, r6]	@ tmp163, <variable>.CodecInfo.pUsrDatArray
	movw	r7, #:lower16:79208	@ tmp169,
	ldr	r3, [r4, ip]	@ temp.2033, <variable>.CodecInfo.pUsrDatArray
	movt	r7, #:upper16:79208	@ tmp169,
	mov	r6, #0	@ tmp168,
	cmp	r3, r1	@ temp.2033,
	strne	r3, [r5, #220]	@ temp.2033, <variable>.p_usrdat
	movw	r3, #:lower16:79208	@ tmp172,
	strne	r1, [r4, ip]	@ tmp163, <variable>.CodecInfo.pUsrDatArray
	movt	r3, #:upper16:79208	@ tmp172,
	str	r6, [r4, r2]	@ tmp168, <variable>.CodecInfo.pUsrDatArray
	movw	ip, #:lower16:79212	@ tmp174,
	ldr	r0, [r4, r7]	@ D.40592, <variable>.CodecInfo.pUsrDatArray
	movt	ip, #:upper16:79212	@ tmp174,
	mov	r1, #1	@ tmp176,
	cmp	r0, r6	@ D.40592,
	mov	r2, r1	@, tmp176
	strne	r0, [r5, #224]	@ D.40592, <variable>.p_usrdat
	strne	r6, [r4, r7]	@ tmp168, <variable>.CodecInfo.pUsrDatArray
	movw	r7, #:lower16:114672	@ tmp177,
	movt	r7, #:upper16:114672	@ tmp177,
	mov	r6, #0	@ tmp173,
	str	r6, [r4, r3]	@ tmp173, <variable>.CodecInfo.pUsrDatArray
	str	r6, [r4, ip]	@ tmp173, <variable>.CodecInfo.TotalUsrDatNum
	str	r1, [r5, #244]	@ tmp176, <variable>.last_frame
	ldr	r1, [r5, #196]	@, <variable>.image_id
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_SetDisplay	@
	add	r2, r4, #79872	@, pCtx,
	ldr	r0, [r4, r7]	@ <variable>.ChanID, <variable>.ChanID
	add	r3, r2, #640	@,,
	mov	r1, #3	@,
	mov	r2, r4	@, pCtx
	str	r5, [sp, #0]	@ pImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	beq	.L468	@,
	ldr	r1, [r5, #196]	@, <variable>.image_id
	mov	r0, r4	@, pCtx
	bl	MPEG2DEC_RecycleImage	@
	b	.L463	@
.L468:
	ldr	lr, [r5, #200]	@ <variable>.error_level, <variable>.error_level
	cmp	lr, #100	@ <variable>.error_level,
	bhi	.L463	@,
	ldr	r2, [r5, #164]	@ <variable>.image_width, <variable>.image_width
	cmp	r2, #31	@ <variable>.image_width,
	bls	.L463	@,
	ldr	r1, [r5, #168]	@ <variable>.image_height, <variable>.image_height
	cmp	r1, #31	@ <variable>.image_height,
	movhi	r0, r6	@ ret, tmp173
	bhi	.L469	@,
	b	.L463	@
	.fnend
	.size	MPEG2DEC_GetRemainImg, .-MPEG2DEC_GetRemainImg
	.align	2
	.global	MP2_GetPictureInfo
	.type	MP2_GetPictureInfo, %function
MP2_GetPictureInfo:
	.fnstart
.LFB1534:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #16
	sub	sp, sp, #16	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r5, #:lower16:79216	@ tmp165,
	movt	r5, #:upper16:79216	@ tmp165,
	movw	r2, #:lower16:80504	@ tmp163,
	movw	r3, #:lower16:80508	@ tmp164,
	movt	r2, #:upper16:80504	@ tmp163,
	ldr	r1, [r0, r5]	@ <variable>.CodecInfo.MpegFlag, <variable>.CodecInfo.MpegFlag
	movt	r3, #:upper16:80508	@ tmp164,
	mov	r4, r0	@ pCtx, pCtx
	ldr	r5, [r0, r2]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	cmp	r1, #1	@ <variable>.CodecInfo.MpegFlag,
	ldr	r6, [r0, r3]	@ pSyntaxInfOld, <variable>.pSyntaxInfOld
	beq	.L513	@,
.L476:
	ldrb	lr, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	cmp	lr, #3	@ <variable>.picture_structure,
	beq	.L477	@,
	movw	r7, #:lower16:79192	@ tmp176,
	movt	r7, #:upper16:79192	@ tmp176,
	movw	r1, #:lower16:79224	@ tmp180,
	movt	r1, #:upper16:79224	@ tmp180,
	ldr	r8, [r4, r7]	@ <variable>.CodecInfo.Second_Field, <variable>.CodecInfo.Second_Field
	ldr	r3, [r4, r1]	@ <variable>.CodecInfo.LastTempReference, <variable>.CodecInfo.LastTempReference
	rsbs	r8, r8, #1	@ tmp178, <variable>.CodecInfo.Second_Field
	movcc	r8, #0	@ tmp178
	str	r8, [r4, r7]	@ tmp178, <variable>.CodecInfo.Second_Field
	ldr	r2, [r5, #156]	@ <variable>.temporal_reference, <variable>.temporal_reference
	cmp	r2, r3	@ <variable>.temporal_reference, <variable>.CodecInfo.LastTempReference
	beq	.L478	@,
	cmp	r8, #1	@ tmp178,
	beq	.L514	@,
.L478:
	ldrb	lr, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	movw	r1, #45329	@ tmp214,
	movw	r3, #:lower16:79224	@ tmp217,
	movt	r3, #:upper16:79224	@ tmp217,
	strb	lr, [r4, r1]	@ <variable>.picture_structure, <variable>.CodecInfo.Last_FieldStruct
	movw	lr, #:lower16:79192	@ tmp234,
	ldr	r2, [r5, #156]	@ <variable>.temporal_reference, <variable>.temporal_reference
	movt	lr, #:upper16:79192	@ tmp234,
	str	r2, [r4, r3]	@ <variable>.temporal_reference, <variable>.CodecInfo.LastTempReference
	movw	r3, #:lower16:79216	@ tmp241,
	ldrh	ip, [r5, #56]	@, <variable>.mb_width
	movt	r3, #:upper16:79216	@ tmp241,
	strh	ip, [r4, #160]	@ movhi	@, <variable>.Mp2DecParam.PicWidthInMb
	ldrb	r0, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	ldr	ip, [r4, lr]	@ <variable>.CodecInfo.Second_Field, <variable>.CodecInfo.Second_Field
	cmp	r0, #3	@ <variable>.picture_structure,
	ldrne	r0, [r5, #60]	@ <variable>.mb_height, <variable>.mb_height
	ldreq	r0, [r5, #64]	@ <variable>.mb_height_progressive_subtract1mb, <variable>.mb_height_progressive_subtract1mb
	ldreq	r2, [r5, #60]	@ <variable>.mb_height, <variable>.mb_height
	movne	r0, r0, lsr #1	@ tmp221, <variable>.mb_height,
	rsbeq	r0, r0, r2	@ tmp228, <variable>.mb_height_progressive_subtract1mb, <variable>.mb_height
	strh	r0, [r4, #156]	@ movhi	@ tmp228, <variable>.Mp2DecParam.PicHeightInMb
	ldrh	r6, [r5, #60]	@, <variable>.mb_height
	ldr	r0, [r4, r3]	@ <variable>.CodecInfo.MpegFlag, <variable>.CodecInfo.MpegFlag
	strh	r6, [r4, #158]	@ movhi	@, <variable>.Mp2DecParam.FrameHeightInMb
	cmp	r0, #1	@ <variable>.CodecInfo.MpegFlag,
	ldrb	r1, [r5, #11]	@ zero_extendqisi2	@ <variable>.frame_pred_frame_dct, <variable>.frame_pred_frame_dct
	movne	lr, #0	@, tmp243
	moveq	lr, #1	@, tmp243
	strb	r1, [r4, #13]	@ <variable>.frame_pred_frame_dct, <variable>.Mp2DecParam.FramePredFrameDct
	ldrb	r2, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	strb	ip, [r4, #12]	@ <variable>.CodecInfo.Second_Field, <variable>.Mp2DecParam.SecondFieldFlag
	strb	r2, [r4, #11]	@ <variable>.picture_structure, <variable>.Mp2DecParam.PictureStructure
	ldrb	r6, [r5, #12]	@ zero_extendqisi2	@ <variable>.concealment_motion_vectors, <variable>.concealment_motion_vectors
	strb	r6, [r4, #15]	@ <variable>.concealment_motion_vectors, <variable>.Mp2DecParam.ConcealmentMotionVectors
	ldrb	r1, [r5, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	str	lr, [r4, #188]	@ tmp243, <variable>.Mp2DecParam.Mpeg1Flag
	strb	r1, [r4, #8]	@ <variable>.picture_coding_type, <variable>.Mp2DecParam.PicCodingType
	ldreqb	r1, [r5, #25]	@ zero_extendqisi2	@ <variable>.full_pel_backward_vector, <variable>.full_pel_backward_vector
	streqb	r1, [r4, #9]	@ <variable>.full_pel_backward_vector, <variable>.Mp2DecParam.Mp1BwdmvFullPel
	ldreqb	r1, [r5, #23]	@ zero_extendqisi2	@ <variable>.full_pel_forward_vector, <variable>.full_pel_forward_vector
	streqb	r1, [r4, #10]	@ <variable>.full_pel_forward_vector, <variable>.Mp2DecParam.Mp1FwdmvFullPel
	ldrb	r3, [r5, #4]	@ zero_extendqisi2	@ <variable>.f_code, <variable>.f_code
	strb	r3, [r4, #20]	@ <variable>.f_code, <variable>.Mp2DecParam.Fcode
	ldrb	ip, [r5, #5]	@ zero_extendqisi2	@ <variable>.f_code, <variable>.f_code
	strb	ip, [r4, #21]	@ <variable>.f_code, <variable>.Mp2DecParam.Fcode
	ldrb	r2, [r5, #6]	@ zero_extendqisi2	@ <variable>.f_code, <variable>.f_code
	strb	r2, [r4, #22]	@ <variable>.f_code, <variable>.Mp2DecParam.Fcode
	ldrb	r0, [r5, #7]	@ zero_extendqisi2	@ <variable>.f_code, <variable>.f_code
	strb	r0, [r4, #23]	@ <variable>.f_code, <variable>.Mp2DecParam.Fcode
	ldrb	r6, [r5, #10]	@ zero_extendqisi2	@ <variable>.top_field_first, <variable>.top_field_first
	strb	r6, [r4, #14]	@ <variable>.top_field_first, <variable>.Mp2DecParam.TopFieldFirst
	ldrb	lr, [r5, #8]	@ zero_extendqisi2	@ <variable>.intra_dc_precision, <variable>.intra_dc_precision
	strb	lr, [r4, #19]	@ <variable>.intra_dc_precision, <variable>.Mp2DecParam.IntraDcPrecision
	ldrb	r1, [r5, #13]	@ zero_extendqisi2	@ <variable>.q_scale_type, <variable>.q_scale_type
	strb	r1, [r4, #18]	@ <variable>.q_scale_type, <variable>.Mp2DecParam.QuantType
	ldrb	r3, [r5, #14]	@ zero_extendqisi2	@ <variable>.intra_vlc_format, <variable>.intra_vlc_format
	strb	r3, [r4, #17]	@ <variable>.intra_vlc_format, <variable>.Mp2DecParam.IntraVlcFormat
	ldrb	ip, [r5, #15]	@ zero_extendqisi2	@ <variable>.alternate_scan, <variable>.alternate_scan
	strb	ip, [r4, #16]	@ <variable>.alternate_scan, <variable>.Mp2DecParam.AlternateScan
	ldrb	r2, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	cmp	r2, #3	@ <variable>.picture_structure,
	beq	.L483	@,
	movw	r0, #:lower16:79192	@ tmp269,
	movt	r0, #:upper16:79192	@ tmp269,
	ldr	r6, [r4, r0]	@ <variable>.CodecInfo.Second_Field, <variable>.CodecInfo.Second_Field
	cmp	r6, #0	@ <variable>.CodecInfo.Second_Field,
	beq	.L483	@,
.L484:
	movw	r7, #:lower16:114672	@ tmp327,
	movw	lr, #:lower16:79264	@ tmp329,
	movt	r7, #:upper16:114672	@ tmp327,
	movt	lr, #:upper16:79264	@ tmp329,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, lr]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_GetLogicFs	@
	movw	ip, #:lower16:79256	@ tmp333,
	movt	ip, #:upper16:79256	@ tmp333,
	ldr	r1, [r4, ip]	@, <variable>.CodecInfo.FwdFsID
	mov	r5, r0	@ pCur,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	movw	r2, #:lower16:79260	@ tmp337,
	movt	r2, #:upper16:79260	@ tmp337,
	ldr	r1, [r4, r2]	@, <variable>.CodecInfo.BwdFsID
	mov	r6, r0	@ pFwd,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	cmp	r5, #0	@ pCur,
	cmpne	r6, #0	@, pFwd,
	mov	r7, r0	@ pBwd,
	beq	.L491	@,
	cmp	r0, #0	@ pBwd,
	beq	.L491	@,
	ldr	r2, [r5, #520]	@ D.39248, <variable>.pstDecodeFs
	cmp	r2, #0	@ D.39248,
	beq	.L493	@,
	ldr	r0, [r5, #528]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	cmp	r0, #0	@ <variable>.pstTfOutFs,
	beq	.L493	@,
	ldr	ip, [r5, #524]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	cmp	ip, #0	@ <variable>.pstDispOutFs,
	beq	.L493	@,
	ldr	ip, [r7, #520]	@ D.39255, <variable>.pstDecodeFs
	cmp	ip, #0	@ D.39255,
	ldrne	lr, [ip, #12]	@ iftmp.461, <variable>.PhyAddr
	ldreq	lr, [r2, #12]	@ iftmp.461, <variable>.PhyAddr
	str	lr, [r4, #200]	@ iftmp.461, <variable>.Mp2DecParam.BwdRefPhyAddr
	ldr	r2, [r6, #520]	@ D.39262, <variable>.pstDecodeFs
	cmp	r2, #0	@ D.39262,
	ldreq	r2, [r5, #520]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	ip, [r2, #12]	@ iftmp.462, <variable>.PhyAddr
	str	ip, [r4, #204]	@ iftmp.462, <variable>.Mp2DecParam.FwdRefPhyAddr
	ldr	r8, [r5, #520]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r2, [r8, #12]	@ D.39267, <variable>.PhyAddr
	str	r2, [r4, #208]	@ D.39267, <variable>.Mp2DecParam.CurPicPhyAddr
	ldr	r8, [r5, #532]	@ D.39269, <variable>.PmvAddr
	str	r8, [r4, #248]	@ D.39269, <variable>.Mp2DecParam.PmvColmbPhyAddr
	ldr	r0, [r7, #528]	@ D.39271, <variable>.pstTfOutFs
	cmp	r0, #0	@ D.39271,
	ldreq	r0, [r5, #528]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	ldr	r3, [r0, #12]	@ iftmp.463, <variable>.PhyAddr
	str	r3, [r4, #220]	@ iftmp.463, <variable>.Mp2DecParam.TfBwdPhyAddr
	ldr	r1, [r6, #528]	@ D.39278, <variable>.pstTfOutFs
	cmp	r1, #0	@ D.39278,
	ldreq	r1, [r5, #528]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	ldr	r0, [r1, #12]	@ iftmp.464, <variable>.PhyAddr
	movw	r1, #:lower16:.LC42	@,
	movt	r1, #:upper16:.LC42	@,
	str	r0, [r4, #224]	@ iftmp.464, <variable>.Mp2DecParam.TfFwdPhyAddr
	mov	r0, #13	@,
	ldr	r3, [r5, #528]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	ldr	r3, [r3, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r3, [r4, #228]	@ <variable>.PhyAddr, <variable>.Mp2DecParam.TfCurPhyAddr
	ldr	r3, [r5, #524]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	r3, [r3, #12]	@ D.39285, <variable>.PhyAddr
	str	r3, [r4, #232]	@ D.39285, <variable>.Mp2DecParam.DispFramePhyAddr
	ldr	r7, [r7, #156]	@ <variable>.stDispImg.is_fld_save, <variable>.stDispImg.is_fld_save
	str	r7, [r4, #212]	@ <variable>.stDispImg.is_fld_save, <variable>.Mp2DecParam.BwdRefIsFldSave
	ldr	r6, [r6, #156]	@ <variable>.stDispImg.is_fld_save, <variable>.stDispImg.is_fld_save
	str	r6, [r4, #216]	@ <variable>.stDispImg.is_fld_save, <variable>.Mp2DecParam.FwdRefIsFldSave
	ldr	r7, [r5, #528]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	ldr	r6, [r7, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	ip, [sp, #0]	@ iftmp.462,
	movw	ip, #45320	@ tmp376,
	str	lr, [sp, #4]	@ iftmp.461,
	str	r6, [r4, ip]	@ <variable>.PhyAddr, <variable>.Mp2DecParam.DnrMbInfoStAddr
	str	r8, [sp, #8]	@ D.39269,
	bl	dprint_vfmw	@
	ldr	r7, [r5, #524]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	add	r3, r4, #78848	@ ivtmp.2066, pCtx,
	add	r3, r3, #608	@ ivtmp.2066, ivtmp.2066,
	mov	r2, r4	@ ivtmp.2070, pCtx
	mov	r0, #0	@ i,
	ldr	r5, [r7, #20]	@ <variable>.Stride, <variable>.Stride
	str	r5, [r4, #240]	@ <variable>.Stride, <variable>.Mp2DecParam.VahbStride
.L503:
	add	ip, r3, #4	@ tmp398, ivtmp.2066,
	ldr	r5, [r3, #4]	@ tmp403, <variable>.intra_quantizer_matrix
	ldr	r7, [r3, #0]	@ tmp383, <variable>.intra_quantizer_matrix
	add	r0, r0, #2	@ i, i,
	ldr	r6, [r3, #256]	@ tmp385, <variable>.non_intra_quantizer_matrix
	add	r1, r2, #1	@ tmp399, ivtmp.2070,
	ldr	lr, [ip, #256]	@ tmp404, <variable>.non_intra_quantizer_matrix
	cmp	r0, #64	@ i,
	strb	r7, [r2, #88]	@ tmp383, <variable>.Mp2DecParam.IntraQuantTab
	add	r3, ip, #4	@ ivtmp.2066, tmp398,
	strb	r6, [r2, #24]	@ tmp385, <variable>.Mp2DecParam.NonIntraQuantTab
	add	r2, r1, #1	@ ivtmp.2070, tmp399,
	strb	r5, [r1, #88]	@ tmp403, <variable>.Mp2DecParam.IntraQuantTab
	strb	lr, [r1, #24]	@ tmp404, <variable>.Mp2DecParam.NonIntraQuantTab
	bne	.L503	@,
	mov	r0, r4	@, pCtx
	mov	r6, #1	@ D.39206,
	bl	MP2_EstimatePicQp	@
	strb	r0, [r4, #152]	@, <variable>.Mp2DecParam.EstmatedPicQp
	b	.L486	@
.L483:
	mov	r0, r4	@, pCtx
	mov	r1, #0	@,
	bl	MP2_GetImageBuffer	@
	subs	r6, r0, #0	@ D.39202,
	beq	.L515	@,
	movw	r2, #:lower16:114672	@ tmp274,
	movw	r7, #:lower16:79264	@ tmp276,
	movt	r2, #:upper16:114672	@ tmp274,
	movt	r7, #:upper16:79264	@ tmp276,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImg,
	beq	.L487	@,
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r0, #29	@,
	movw	r1, #:lower16:.LC37	@,
	movt	r1, #:upper16:.LC37	@,
	ldrd	r2, [r3, #56]	@ <variable>.pts, <variable>.pstExtraData,
	strd	r2, [r6, #8]	@ <variable>.pts, pImg,
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r2, [r3, #72]	@ <variable>.Usertag, <variable>.pstExtraData,
	strd	r2, [r6, #16]	@ <variable>.Usertag, pImg,
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r2, [r3, #88]	@ <variable>.DispTime, <variable>.pstExtraData,
	strd	r2, [r6, #24]	@ <variable>.DispTime, pImg,
	ldr	r8, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r9, [r8, #104]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	str	r9, [r6, #68]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [lr, #108]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	str	r3, [r6, #72]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	ldr	r7, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	ip, [r7, #112]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	str	ip, [r6, #76]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	ldr	r8, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r9, [r8, #128]	@ <variable>.GopNum, <variable>.GopNum
	mvn	r8, #0	@ tmp293,
	str	r9, [r6, #80]	@ <variable>.GopNum, <variable>.GopNum
	mvn	r9, #0	@,
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	strd	r8, [lr, #56]	@ tmp293, <variable>.pstExtraData,
	ldrd	r8, [r6, #16]	@ <variable>.Usertag, pImg,
	ldrd	r2, [r6, #8]	@ <variable>.PTS, pImg,
	strd	r8, [sp]	@ <variable>.Usertag,
	bl	dprint_vfmw	@
	ldrb	r1, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	subs	r3, r1, #3	@ tmp298, <variable>.picture_structure,
	movne	r3, #1	@ tmp298
	str	r3, [r6, #148]	@ tmp298, <variable>.is_fld_save
.L487:
	ldrb	r6, [r5, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	cmp	r6, #3	@ <variable>.picture_coding_type,
	beq	.L484	@,
	movw	ip, #:lower16:79220	@ tmp300,
	movt	ip, #:upper16:79220	@ tmp300,
	movw	r6, #:lower16:79256	@ tmp303,
	movw	r5, #:lower16:79260	@ tmp304,
	ldr	r0, [r4, ip]	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	movt	r6, #:upper16:79256	@ tmp303,
	movt	r5, #:upper16:79260	@ tmp304,
	cmp	r0, #0	@ <variable>.CodecInfo.RefNum,
	ldr	r2, [r4, r6]	@ prephitmp.2049, <variable>.CodecInfo.FwdFsID
	ldr	r1, [r4, r5]	@ <variable>.CodecInfo.BwdFsID, <variable>.CodecInfo.BwdFsID
	movne	r0, #2	@ iftmp.457,
	moveq	r0, #1	@ iftmp.457,
	cmp	r2, r1	@ prephitmp.2049, <variable>.CodecInfo.BwdFsID
	str	r0, [r4, ip]	@ iftmp.457, <variable>.CodecInfo.RefNum
	beq	.L490	@,
	movw	r7, #:lower16:114672	@ tmp307,
	movt	r7, #:upper16:114672	@ tmp307,
	mov	r0, #13	@,
	movw	r1, #:lower16:.LC38	@,
	movt	r1, #:upper16:.LC38	@,
	bl	dprint_vfmw	@
	mov	r2, #0	@,
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.FwdFsID
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	ldr	r2, [r4, r5]	@ prephitmp.2049, <variable>.CodecInfo.BwdFsID
.L490:
	movw	r5, #:lower16:79264	@ tmp314,
	movt	r5, #:upper16:79264	@ tmp314,
	movw	r6, #:lower16:79256	@ tmp312,
	movw	r3, #:lower16:79260	@ tmp313,
	ldr	r1, [r4, r5]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
	movt	r3, #:upper16:79260	@ tmp313,
	movt	r6, #:upper16:79256	@ tmp312,
	movw	r7, #:lower16:114672	@ tmp316,
	movt	r7, #:upper16:114672	@ tmp316,
	str	r1, [r4, r3]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.BwdFsID
	str	r2, [r4, r6]	@ prephitmp.2049, <variable>.CodecInfo.FwdFsID
	mov	r2, #1	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.FwdFsID
	bl	FSP_RemovePmv	@
	ldr	r2, [r4, r5]	@, <variable>.CodecInfo.CurFsID
	movw	r1, #:lower16:.LC39	@,
	mov	r0, #13	@,
	movt	r1, #:upper16:.LC39	@,
	bl	dprint_vfmw	@
	b	.L484	@
.L515:
	movw	ip, #:lower16:79188	@ tmp272,
	movt	ip, #:upper16:79188	@ tmp272,
	movw	r1, #:lower16:.LC36	@,
	movt	r1, #:upper16:.LC36	@,
	ldr	r2, [r4, ip]	@, <variable>.CodecInfo.Frame_Cnt
	bl	dprint_vfmw	@
.L486:
	mov	r0, r6	@, D.39206
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, fp, sp, pc}
.L477:
	movw	r3, #45329	@ tmp197,
	ldrb	ip, [r4, r3]	@ zero_extendqisi2	@ D.39160, <variable>.CodecInfo.Last_FieldStruct
	cmp	ip, #3	@ D.39160,
	beq	.L479	@,
	movw	r1, #:lower16:79192	@ tmp198,
	movt	r1, #:upper16:79192	@ tmp198,
	ldr	r3, [r4, r1]	@ <variable>.CodecInfo.Second_Field, <variable>.CodecInfo.Second_Field
	cmp	r3, #0	@ <variable>.CodecInfo.Second_Field,
	beq	.L516	@,
.L479:
	movw	r0, #:lower16:79192	@ tmp212,
	movt	r0, #:upper16:79192	@ tmp212,
	mov	r6, #1	@ tmp213,
	str	r6, [r4, r0]	@ tmp213,
	b	.L478	@
.L513:
	ldrb	ip, [r5, #26]	@ zero_extendqisi2	@ <variable>.backward_f_code, <variable>.backward_f_code
	ldrb	r0, [r5, #24]	@ zero_extendqisi2	@ <variable>.forward_f_code, <variable>.forward_f_code
	strb	ip, [r5, #6]	@ <variable>.backward_f_code, <variable>.f_code
	strb	r0, [r5, #4]	@ <variable>.forward_f_code, <variable>.f_code
	strb	ip, [r5, #7]	@ <variable>.backward_f_code, <variable>.f_code
	strb	r0, [r5, #5]	@ <variable>.forward_f_code, <variable>.f_code
	b	.L476	@
.L491:
	movw	r1, #:lower16:114672	@ tmp346,
	movw	r3, #:lower16:79264	@ tmp348,
	movt	r1, #:upper16:114672	@ tmp346,
	movt	r3, #:upper16:79264	@ tmp348,
	mov	r2, #1	@,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_ClearLogicFs	@
	mov	r3, r5	@, pCur
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC40	@,
	movw	r2, #1146	@,
	movt	r1, #:upper16:.LC40	@,
	str	r6, [sp, #0]	@ pFwd,
	mov	r6, #0	@ D.39206,
	str	r7, [sp, #4]	@ pBwd,
	bl	dprint_vfmw	@
	b	.L486	@
.L514:
	movw	lr, #:lower16:79188	@ tmp184,
	movt	lr, #:upper16:79188	@ tmp184,
	mov	r0, r8	@, tmp178
	movw	r1, #:lower16:.LC34	@,
	ldr	r2, [r4, lr]	@, <variable>.CodecInfo.Frame_Cnt
	movt	r1, #:upper16:.LC34	@,
	bl	dprint_vfmw	@
	movw	r1, #:lower16:114672	@ tmp188,
	movw	ip, #:lower16:79264	@ tmp190,
	movt	r1, #:upper16:114672	@ tmp188,
	movt	ip, #:upper16:79264	@ tmp190,
	mov	r3, #0	@ tmp187,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	mov	r2, r8	@, tmp178
	str	r3, [r4, r7]	@ tmp187, <variable>.CodecInfo.Second_Field
	ldr	r1, [r4, ip]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_ClearLogicFs	@
	ldrb	r0, [r6, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	cmp	r0, #3	@ <variable>.picture_coding_type,
	beq	.L478	@,
	movw	r0, #:lower16:79180	@ tmp193,
	movt	r0, #:upper16:79180	@ tmp193,
	ldr	r2, [r4, r0]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orr	r6, r2, #192	@ tmp196, <variable>.CodecInfo.StreamIntegrality,
	str	r6, [r4, r0]	@ tmp196,
	b	.L478	@
.L516:
	movw	lr, #:lower16:79188	@ tmp201,
	movt	lr, #:upper16:79188	@ tmp201,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC35	@,
	ldr	r2, [r4, lr]	@ <variable>.CodecInfo.Frame_Cnt, <variable>.CodecInfo.Frame_Cnt
	movt	r1, #:upper16:.LC35	@,
	str	ip, [sp, #0]	@ D.39160,
	bl	dprint_vfmw	@
	movw	r1, #:lower16:114672	@ tmp203,
	movw	r3, #:lower16:79264	@ tmp205,
	movt	r1, #:upper16:114672	@ tmp203,
	movt	r3, #:upper16:79264	@ tmp205,
	mov	r2, #1	@,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_ClearLogicFs	@
	ldrb	ip, [r6, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	cmp	ip, #3	@ <variable>.picture_coding_type,
	movwne	ip, #:lower16:79180	@ tmp208,
	movtne	ip, #:upper16:79180	@ tmp208,
	ldrne	r2, [r4, ip]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orrne	r2, r2, #192	@ tmp211, <variable>.CodecInfo.StreamIntegrality,
	strne	r2, [r4, ip]	@ tmp211, <variable>.CodecInfo.StreamIntegrality
	b	.L479	@
.L493:
	movw	lr, #:lower16:114672	@ tmp353,
	movw	r6, #:lower16:79264	@ tmp355,
	movt	lr, #:upper16:114672	@ tmp353,
	movt	r6, #:upper16:79264	@ tmp355,
	mov	r2, #1	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_ClearLogicFs	@
	movw	r1, #:lower16:79260	@ tmp362,
	movt	r1, #:upper16:79260	@ tmp362,
	movw	r2, #:lower16:79256	@ tmp358,
	movt	r2, #:upper16:79256	@ tmp358,
	ldr	r3, [r4, r6]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
	ldr	ip, [r4, r1]	@ <variable>.CodecInfo.BwdFsID, <variable>.CodecInfo.BwdFsID
	mov	r0, #0	@,
	ldr	r2, [r4, r2]	@ <variable>.CodecInfo.FwdFsID, <variable>.CodecInfo.FwdFsID
	movw	r1, #:lower16:.LC41	@,
	movt	r1, #:upper16:.LC41	@,
	str	ip, [sp, #0]	@ <variable>.CodecInfo.BwdFsID,
	ldr	r6, [r5, #520]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	str	r6, [sp, #4]	@ <variable>.pstDecodeFs,
	ldr	ip, [r5, #528]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	str	ip, [sp, #8]	@ <variable>.pstTfOutFs,
	ldr	r6, [r5, #524]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	str	r6, [sp, #12]	@ <variable>.pstDispOutFs,
	bl	dprint_vfmw	@
	mov	r6, #0	@ D.39206,
	b	.L486	@
	.fnend
	.size	MP2_GetPictureInfo, .-MP2_GetPictureInfo
	.align	2
	.global	MP2_DecodingDecide
	.type	MP2_DecodingDecide, %function
MP2_DecodingDecide:
	.fnstart
.LFB1532:
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
	movw	r3, #:lower16:79180	@ tmp167,
	movt	r3, #:upper16:79180	@ tmp167,
	movw	r2, #:lower16:80504	@ tmp166,
	movt	r2, #:upper16:80504	@ tmp166,
	mov	r4, r0	@ pCtx, pCtx
	ldr	r3, [r0, r3]	@ prephitmp.2174, <variable>.CodecInfo.StreamIntegrality
	ldr	r5, [r0, r2]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	tst	r3, #8388608	@ prephitmp.2174,
	mvneq	r0, #0	@ D.38919,
	beq	.L519	@,
	ldrb	r0, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	cmp	r0, #3	@ <variable>.picture_structure,
	beq	.L520	@,
	movw	r7, #:lower16:79192	@ tmp170,
	movt	r7, #:upper16:79192	@ tmp170,
	ldr	r1, [r4, r7]	@ <variable>.CodecInfo.Second_Field, <variable>.CodecInfo.Second_Field
	cmp	r1, #1	@ <variable>.CodecInfo.Second_Field,
	beq	.L520	@,
	ands	r7, r3, #255	@ tmp177, prephitmp.2174,
	beq	.L522	@,
.L563:
	movw	r0, #:lower16:g_event_report	@ tmp178,
	movt	r0, #:upper16:g_event_report	@ tmp178,
	ldr	ip, [r0, #0]	@ g_event_report.448, g_event_report
	cmp	ip, #0	@ g_event_report.448,
	beq	.L523	@,
	movw	lr, #:lower16:114672	@ tmp179,
	movt	lr, #:upper16:114672	@ tmp179,
	mov	r2, #0	@,
	mov	r1, #103	@,
	mov	r3, r2	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	blx	ip	@ g_event_report.448
	movw	r1, #:lower16:79180	@ tmp181,
	movt	r1, #:upper16:79180	@ tmp181,
	ldr	r3, [r4, r1]	@ prephitmp.2174, <variable>.CodecInfo.StreamIntegrality
.L523:
	movw	ip, #:lower16:79188	@ tmp183,
	movt	ip, #:upper16:79188	@ tmp183,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC43	@,
	ldr	r2, [r4, ip]	@, <variable>.CodecInfo.Frame_Cnt
	movt	r1, #:upper16:.LC43	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.38919,
.L519:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L520:
	movw	r3, #:lower16:79180	@ tmp176,
	movt	r3, #:upper16:79180	@ tmp176,
	movw	lr, #:lower16:114676	@ tmp172,
	movt	lr, #:upper16:114676	@ tmp172,
	ldr	r3, [r4, r3]	@ prephitmp.2174, <variable>.CodecInfo.StreamIntegrality
	ldr	r2, [r4, lr]	@ <variable>.numTotalFrame, <variable>.numTotalFrame
	ands	r7, r3, #255	@ tmp177, prephitmp.2174,
	add	ip, r2, #1	@ tmp175, <variable>.numTotalFrame,
	str	ip, [r4, lr]	@ tmp175, <variable>.numTotalFrame
	bne	.L563	@,
.L522:
	movw	r2, #:lower16:79228	@ tmp185,
	movt	r2, #:upper16:79228	@ tmp185,
	ldr	r6, [r4, r2]	@ <variable>.CodecInfo.Imgbuf_allocated, <variable>.CodecInfo.Imgbuf_allocated
	cmp	r6, #0	@ <variable>.CodecInfo.Imgbuf_allocated,
	beq	.L564	@,
	movw	r9, #:lower16:79168	@ tmp190,
	movt	r9, #:upper16:79168	@ tmp190,
	ldr	r8, [r4, r9]	@ <variable>.CodecInfo.UsedDecMode, <variable>.CodecInfo.UsedDecMode
	sub	r6, r8, #2	@ tmp191, <variable>.CodecInfo.UsedDecMode,
	cmp	r6, #1	@ tmp191,
	bls	.L525	@,
	ldr	sl, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r1, [sl, #8]	@ prephitmp.2180, <variable>.s32DecMode
.L526:
	movw	r3, #:lower16:79168	@ tmp248,
	movt	r3, #:upper16:79168	@ tmp248,
	sub	r2, r1, #1	@ tmp249, prephitmp.2180,
	str	r1, [r4, r3]	@ prephitmp.2180, <variable>.CodecInfo.UsedDecMode
	cmp	r2, #3	@ tmp249,
	ldrls	pc, [pc, r2, asl #2]	@ tmp249
	b	.L528	@
.L533:
	.word	.L529
	.word	.L530
	.word	.L531
	.word	.L532
.L525:
	ldr	r0, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r0, #8]	@ D.38945, <variable>.s32DecMode
	cmp	r2, #4	@ D.38945,
	cmpne	r2, #1	@, D.38945,
	mov	r1, r2	@ prephitmp.2180, D.38945
	bhi	.L526	@,
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC45	@,
	movt	r1, #:upper16:.LC45	@,
	movw	r6, #:lower16:114672	@ tmp207,
	bl	dprint_vfmw	@
	movw	ip, #:lower16:79180	@ tmp203,
	movt	ip, #:upper16:79180	@ tmp203,
	movt	r6, #:upper16:114672	@ tmp207,
	movw	sl, #:lower16:79260	@ tmp209,
	movt	sl, #:upper16:79260	@ tmp209,
	ldr	r2, [r4, ip]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	orr	r1, r2, #128	@ tmp206, <variable>.CodecInfo.StreamIntegrality,
	str	r1, [r4, ip]	@ tmp206, <variable>.CodecInfo.StreamIntegrality
	ldr	r1, [r4, sl]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r8, r0, #0	@ pImg,
	beq	.L527	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	movw	r9, #:lower16:79256	@ tmp233,
	ldr	r1, [r8, #212]	@, <variable>.p_usrdat
	movt	r9, #:upper16:79256	@ tmp233,
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r8, #216]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r8, #220]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r8, #224]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r7, [r8, #224]	@ tmp177, <variable>.p_usrdat
	str	r7, [r8, #212]	@ tmp177, <variable>.p_usrdat
	mov	r2, #1	@,
	str	r7, [r8, #216]	@ tmp177, <variable>.p_usrdat
	str	r7, [r8, #220]	@ tmp177, <variable>.p_usrdat
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, sl]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r9]	@, <variable>.CodecInfo.FwdFsID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	str	r7, [r4, sl]	@ tmp177, <variable>.CodecInfo.BwdFsID
	str	r7, [r4, r9]	@ tmp177, <variable>.CodecInfo.FwdFsID
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	bne	.L565	@,
.L527:
	ldr	r7, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	r3, #:lower16:79220	@ tmp245,
	movt	r3, #:upper16:79220	@ tmp245,
	mov	lr, #0	@ tmp246,
	str	lr, [r4, r3]	@ tmp246, <variable>.CodecInfo.RefNum
	ldr	r1, [r7, #8]	@ prephitmp.2180, <variable>.s32DecMode
	b	.L526	@
.L564:
	movw	r3, #:lower16:79188	@ tmp188,
	movt	r3, #:upper16:79188	@ tmp188,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC44	@,
	ldr	r2, [r4, r3]	@, <variable>.CodecInfo.Frame_Cnt
	movt	r1, #:upper16:.LC44	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@ D.38919, <variable>.CodecInfo.Imgbuf_allocated
	b	.L519	@
.L532:
	ldrb	r7, [r5, #22]	@ zero_extendqisi2	@ prephitmp.2248, <variable>.picture_coding_type
	cmp	r7, #1	@ prephitmp.2248,
	movweq	r3, #:lower16:114684	@ tmp266,
	movteq	r3, #:upper16:114684	@ tmp266,
	moveq	r2, #0	@ tmp267,
	streq	r2, [r4, r3]	@ tmp267, <variable>.PPicFound
	ldreqb	r7, [r5, #22]	@ zero_extendqisi2	@ prephitmp.2248, <variable>.picture_coding_type
	cmp	r7, #3	@ prephitmp.2248,
	beq	.L566	@,
	cmp	r7, #2	@ prephitmp.2248,
	beq	.L543	@,
.L561:
	mov	r9, r7	@ prephitmp.2182, prephitmp.2248
	ldrb	r7, [r5, #9]	@ zero_extendqisi2	@ prephitmp.2248, <variable>.picture_structure
	mov	sl, #1	@ ret,
.L534:
	movw	r0, #:lower16:79128	@ tmp278,
	movw	r2, #:lower16:79232	@ tmp279,
	movt	r0, #:upper16:79128	@ tmp278,
	movt	r2, #:upper16:79232	@ tmp279,
	add	r3, r4, #78848	@, pCtx,
	movw	lr, #:lower16:79188	@ tmp277,
	ldr	r8, [r4, r0]	@ <variable>.CodecInfo.BsOffset, <variable>.CodecInfo.BsOffset
	movt	lr, #:upper16:79188	@ tmp277,
	ldr	r1, [r4, r2]	@ <variable>.CodecInfo.Used_byte, <variable>.CodecInfo.Used_byte
	add	r0, r3, #576	@,,
	add	r6, r8, r1	@ D.39004, <variable>.CodecInfo.BsOffset, <variable>.CodecInfo.Used_byte
	ldr	r8, [r4, lr]	@ temp.2218, <variable>.CodecInfo.Frame_Cnt
	bl	BsPos	@
	mov	r3, r9	@, prephitmp.2182
	movw	r1, #:lower16:.LC46	@,
	movt	r1, #:upper16:.LC46	@,
	mov	r2, r8	@, temp.2218
	str	r7, [sp, #0]	@ prephitmp.2248,
	add	ip, r6, r0, lsr #3	@, tmp286, D.39004,,
	mov	r0, #18	@,
	str	ip, [sp, #4]	@ tmp286,
	bl	dprint_vfmw	@
	movw	r3, #:lower16:79180	@ tmp287,
	movt	r3, #:upper16:79180	@ tmp287,
	ldr	r7, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r0, [r4, r3]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	bic	r6, r0, #14155776	@ tmp290, <variable>.CodecInfo.StreamIntegrality,
	str	r6, [r4, r3]	@ tmp290, <variable>.CodecInfo.StreamIntegrality
	ldr	r0, [r7, #700]	@ <variable>.s32SupportAllP, <variable>.s32SupportAllP
	cmp	r0, #1	@ <variable>.s32SupportAllP,
	beq	.L567	@,
	movw	ip, #:lower16:79220	@ tmp297,
	movt	ip, #:upper16:79220	@ tmp297,
	ldr	r3, [r4, ip]	@ temp.2221, <variable>.CodecInfo.RefNum
	cmp	r3, #0	@ temp.2221,
	bne	.L547	@,
	ldrb	r1, [r5, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	sub	lr, r1, #2	@ tmp300, <variable>.picture_coding_type,
	uxtb	r6, lr	@ tmp301, tmp300
	cmp	r6, #1	@ tmp301,
	bls	.L568	@,
.L545:
	movw	r6, #:lower16:114672	@ tmp305,
	movw	r7, #:lower16:79256	@ tmp307,
	movt	r6, #:upper16:114672	@ tmp305,
	movt	r7, #:upper16:79256	@ tmp307,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.FwdFsID
	bl	FSP_GetFsImagePtr	@
	movw	r2, #:lower16:79260	@ tmp311,
	movt	r2, #:upper16:79260	@ tmp311,
	ldr	r1, [r4, r2]	@, <variable>.CodecInfo.BwdFsID
	mov	r7, r0	@ pFwdImg,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	cmp	r7, #0	@ pFwdImg,
	cmpne	r0, #0	@, pBwdImg,
	movne	r6, #0	@, tmp319
	moveq	r6, #1	@, tmp319
	beq	.L569	@,
	ldrb	r3, [r5, #22]	@ zero_extendqisi2	@ temp.2228, <variable>.picture_coding_type
	cmp	r3, #2	@ temp.2228,
	beq	.L570	@,
	cmp	r3, #3	@ temp.2228,
	beq	.L571	@,
.L550:
	cmp	sl, #0	@ ret,
	movne	r0, #1	@ D.38919,
	bne	.L519	@,
	ldrb	r1, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	cmp	r1, #3	@ <variable>.picture_structure,
	beq	.L553	@,
	movw	r2, #:lower16:79192	@ tmp330,
	movt	r2, #:upper16:79192	@ tmp330,
	ldr	r3, [r4, r2]	@ <variable>.CodecInfo.Second_Field, <variable>.CodecInfo.Second_Field
	cmp	r3, #0	@ <variable>.CodecInfo.Second_Field,
	movne	r0, sl	@ D.38919, ret
	bne	.L519	@,
.L553:
	ldrb	r0, [r5, #27]	@ zero_extendqisi2	@ <variable>.progressive_sequence, <variable>.progressive_sequence
	cmp	r0, #1	@ <variable>.progressive_sequence,
	beq	.L572	@,
	ldrb	lr, [r5, #18]	@ zero_extendqisi2	@ <variable>.progressive_frame, <variable>.progressive_frame
	cmp	lr, #1	@ <variable>.progressive_frame,
	beq	.L573	@,
	movw	r0, #:lower16:79344	@ tmp353,
	movt	r0, #:upper16:79344	@ tmp353,
	movw	lr, #:lower16:79340	@ tmp356,
	movt	lr, #:upper16:79340	@ tmp356,
	ldr	r2, [r4, r0]	@ <variable>.GopFrmCnt, <variable>.GopFrmCnt
	add	r1, r2, #1	@ temp.2240, <variable>.GopFrmCnt,
	str	r1, [r4, r0]	@ temp.2240, <variable>.GopFrmCnt
	mov	r3, r1, asl #1	@ tmp357, temp.2240,
	str	r3, [r4, lr]	@ tmp357, <variable>.GopFldCnt
.L555:
	movw	r2, #:lower16:79336	@ tmp358,
	movt	r2, #:upper16:79336	@ tmp358,
	movw	r3, #:lower16:79188	@ tmp362,
	movt	r3, #:upper16:79188	@ tmp362,
	ldr	ip, [r4, r2]	@ <variable>.GopFrmCntNoRpt, <variable>.GopFrmCntNoRpt
	mov	r0, #0	@ D.38919,
	add	r1, ip, #1	@ tmp361, <variable>.GopFrmCntNoRpt,
	str	r1, [r4, r2]	@ tmp361, <variable>.GopFrmCntNoRpt
	ldr	lr, [r4, r3]	@ <variable>.CodecInfo.Frame_Cnt, <variable>.CodecInfo.Frame_Cnt
	add	ip, lr, #1	@ tmp365, <variable>.CodecInfo.Frame_Cnt,
	str	ip, [r4, r3]	@ tmp365, <variable>.CodecInfo.Frame_Cnt
	b	.L519	@
.L531:
	ldrb	r9, [r5, #22]	@ zero_extendqisi2	@ prephitmp.2182, <variable>.picture_coding_type
	mov	sl, #0	@ ret,
	ldrb	r7, [r5, #9]	@ zero_extendqisi2	@ prephitmp.2248, <variable>.picture_structure
	b	.L534	@
.L530:
	ldrb	r9, [r5, #22]	@ zero_extendqisi2	@ prephitmp.2182, <variable>.picture_coding_type
	sub	r1, r9, #2	@ tmp255, prephitmp.2182,
	uxtb	sl, r1	@ tmp256, tmp255
	cmp	sl, #1	@ tmp256,
	bls	.L537	@,
	ldrb	r7, [r5, #9]	@ zero_extendqisi2	@ prephitmp.2248, <variable>.picture_structure
	mov	sl, #1	@ ret,
	b	.L534	@
.L529:
	ldrb	r7, [r5, #22]	@ zero_extendqisi2	@ prephitmp.2248, <variable>.picture_coding_type
	cmp	r7, #3	@ prephitmp.2248,
	bne	.L561	@,
	ldrb	r6, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	cmp	r6, #3	@ <variable>.picture_structure,
	beq	.L536	@,
	movw	r9, #:lower16:79192	@ tmp251,
	movt	r9, #:upper16:79192	@ tmp251,
	mov	sl, #0	@ ret,
	ldr	r0, [r4, r9]	@ <variable>.CodecInfo.Second_Field, <variable>.CodecInfo.Second_Field
	cmp	r0, sl	@ <variable>.CodecInfo.Second_Field,
	movne	r8, #0	@, tmp254
	moveq	r8, #1	@, tmp254
	str	r8, [r4, r9]	@ tmp254, <variable>.CodecInfo.Second_Field
	ldrb	r9, [r5, #22]	@ zero_extendqisi2	@ prephitmp.2182, <variable>.picture_coding_type
	ldrb	r7, [r5, #9]	@ zero_extendqisi2	@ prephitmp.2248, <variable>.picture_structure
	b	.L534	@
.L528:
	ldrb	r9, [r5, #22]	@ zero_extendqisi2	@ prephitmp.2182, <variable>.picture_coding_type
	mov	sl, #1	@ ret,
	ldrb	r7, [r5, #9]	@ zero_extendqisi2	@ prephitmp.2248, <variable>.picture_structure
	b	.L534	@
.L547:
	cmp	r3, #1	@ temp.2221,
	bhi	.L545	@,
	ldrb	r3, [r5, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	cmp	r3, #3	@ <variable>.picture_coding_type,
	bne	.L545	@,
	movw	r1, #:lower16:.LC50	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC50	@,
	mov	sl, #0	@ ret,
	bl	dprint_vfmw	@
	b	.L545	@
.L567:
	movw	r7, #:lower16:79220	@ tmp293,
	movt	r7, #:upper16:79220	@ tmp293,
	ldr	r3, [r4, r7]	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r3, #0	@ <variable>.CodecInfo.RefNum,
	bne	.L545	@,
	ldrb	r2, [r5, #22]	@ zero_extendqisi2	@ D.38969, <variable>.picture_coding_type
	cmp	r2, #3	@ D.38969,
	beq	.L574	@,
	cmp	r2, #2	@ D.38969,
	bne	.L545	@,
	movw	r1, #:lower16:.LC48	@,
	movt	r1, #:upper16:.LC48	@,
	bl	dprint_vfmw	@
	b	.L545	@
.L569:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC51	@,
	ldr	r2, .L577	@,
	movt	r1, #:upper16:.LC51	@,
	mov	r3, #860	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.38919,
	b	.L519	@
.L570:
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r7, #200]	@ D.39048, <variable>.error_level
	ldr	r3, [ip, #0]	@ D.39049, <variable>.s32RefErrThr
	cmp	r2, r3	@ D.39048, D.39049
	bls	.L550	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC52	@,
	movt	r1, #:upper16:.LC52	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@ D.38919, tmp319
	b	.L519	@
.L571:
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r7, #200]	@ temp.2230, <variable>.error_level
	ldr	r3, [lr, #0]	@ temp.2232, <variable>.s32RefErrThr
	cmp	r2, r3	@ temp.2230, temp.2232
	bhi	.L575	@,
	ldr	r2, [r0, #200]	@ D.39065, <variable>.error_level
	cmp	r3, r2	@ temp.2232, D.39065
	bcs	.L550	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC54	@,
	movt	r1, #:upper16:.LC54	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@ D.38919, tmp319
	b	.L519	@
.L572:
	movw	r3, #:lower16:79344	@ tmp333,
	movt	r3, #:upper16:79344	@ tmp333,
	ldrb	ip, [r5, #16]	@ zero_extendqisi2	@ <variable>.repeat_first_field, <variable>.repeat_first_field
	movw	lr, #:lower16:79340	@ tmp340,
	ldr	r2, [r4, r3]	@ <variable>.GopFrmCnt, <variable>.GopFrmCnt
	movt	lr, #:upper16:79340	@ tmp340,
	ldrb	r0, [r5, #10]	@ zero_extendqisi2	@ <variable>.top_field_first, <variable>.top_field_first
	add	r1, r2, #1	@ tmp334, <variable>.GopFrmCnt,
	add	r2, r1, ip	@ tmp337, tmp334, <variable>.repeat_first_field
	add	r1, r2, r0	@ D.39082, tmp337, <variable>.top_field_first
	str	r1, [r4, r3]	@ D.39082, <variable>.GopFrmCnt
	mov	ip, r1, asl #1	@ tmp341, D.39082,
	str	ip, [r4, lr]	@ tmp341, <variable>.GopFldCnt
	b	.L555	@
.L575:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC53	@,
	movt	r1, #:upper16:.LC53	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@ D.38919, tmp319
	b	.L519	@
.L566:
	movw	r8, #:lower16:114684	@ tmp268,
	movt	r8, #:upper16:114684	@ tmp268,
	ldr	sl, [r4, r8]	@ <variable>.PPicFound, <variable>.PPicFound
	cmp	sl, #0	@ <variable>.PPicFound,
	bne	.L561	@,
	ldrb	r9, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	cmp	r9, #3	@ <variable>.picture_structure,
	beq	.L536	@,
	movw	r1, #:lower16:79192	@ tmp271,
	movt	r1, #:upper16:79192	@ tmp271,
	ldr	ip, [r4, r1]	@ <variable>.CodecInfo.Second_Field, <variable>.CodecInfo.Second_Field
	rsbs	r0, ip, #1	@ tmp274, <variable>.CodecInfo.Second_Field
	movcc	r0, #0	@ tmp274
	str	r0, [r4, r1]	@ tmp274, <variable>.CodecInfo.Second_Field
	ldrb	r9, [r5, #22]	@ zero_extendqisi2	@ prephitmp.2182, <variable>.picture_coding_type
	ldrb	r7, [r5, #9]	@ zero_extendqisi2	@ prephitmp.2248, <variable>.picture_structure
	b	.L534	@
.L537:
	cmp	r9, #2	@ prephitmp.2182,
	beq	.L576	@,
.L538:
	ldrb	r7, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	cmp	r7, #3	@ <variable>.picture_structure,
	beq	.L562	@,
	movw	r3, #:lower16:79192	@ tmp262,
	movt	r3, #:upper16:79192	@ tmp262,
	mov	sl, #0	@ ret,
	ldr	r6, [r4, r3]	@ <variable>.CodecInfo.Second_Field, <variable>.CodecInfo.Second_Field
	cmp	r6, sl	@ <variable>.CodecInfo.Second_Field,
	movne	lr, #0	@, tmp265
	moveq	lr, #1	@, tmp265
	str	lr, [r4, r3]	@ tmp265, <variable>.CodecInfo.Second_Field
	ldrb	r9, [r5, #22]	@ zero_extendqisi2	@ prephitmp.2182, <variable>.picture_coding_type
	ldrb	r7, [r5, #9]	@ zero_extendqisi2	@ prephitmp.2248, <variable>.picture_structure
	b	.L534	@
.L573:
	movw	r2, #:lower16:79344	@ tmp343,
	movt	r2, #:upper16:79344	@ tmp343,
	movw	r3, #:lower16:79340	@ tmp347,
	movt	r3, #:upper16:79340	@ tmp347,
	ldr	ip, [r4, r2]	@ <variable>.GopFrmCnt, <variable>.GopFrmCnt
	ldr	lr, [r4, r3]	@ <variable>.GopFldCnt, <variable>.GopFldCnt
	add	r0, ip, #1	@ tmp346, <variable>.GopFrmCnt,
	str	r0, [r4, r2]	@ tmp346, <variable>.GopFrmCnt
	ldrb	ip, [r5, #16]	@ zero_extendqisi2	@ <variable>.repeat_first_field, <variable>.repeat_first_field
	add	r1, lr, #2	@ tmp349, <variable>.GopFldCnt,
	add	r0, r1, ip	@ tmp352, tmp349, <variable>.repeat_first_field
	str	r0, [r4, r3]	@ tmp352, <variable>.GopFldCnt
	b	.L555	@
.L543:
	movw	r2, #:lower16:114684	@ tmp275,
	movt	r2, #:upper16:114684	@ tmp275,
	mov	sl, #1	@ tmp276,
	str	sl, [r4, r2]	@ tmp276, <variable>.PPicFound
	ldrb	r9, [r5, #22]	@ zero_extendqisi2	@ prephitmp.2182, <variable>.picture_coding_type
	ldrb	r7, [r5, #9]	@ zero_extendqisi2	@ prephitmp.2248, <variable>.picture_structure
	b	.L534	@
.L568:
	movw	r1, #:lower16:.LC49	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC49	@,
	mov	sl, r3	@ ret, temp.2221
	bl	dprint_vfmw	@
	b	.L545	@
.L536:
	mov	r9, #3	@ prephitmp.2182,
.L562:
	mov	sl, #0	@ ret,
	b	.L534	@
.L574:
	movw	r1, #:lower16:.LC47	@,
	movt	r1, #:upper16:.LC47	@,
	mov	sl, r3	@ ret, <variable>.CodecInfo.RefNum
	bl	dprint_vfmw	@
	b	.L545	@
.L565:
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, sl]	@ D.38967, <variable>.CodecInfo.BwdFsID
	str	r0, [r4, r9]	@ D.38967, <variable>.CodecInfo.FwdFsID
	b	.L527	@
.L576:
	movw	r2, #45329	@ tmp257,
	ldrb	ip, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.Last_FieldStruct, <variable>.CodecInfo.Last_FieldStruct
	cmp	ip, #3	@ <variable>.CodecInfo.Last_FieldStruct,
	beq	.L538	@,
	movw	r7, #45328	@ tmp259,
	ldrb	sl, [r4, r7]	@ zero_extendqisi2	@ <variable>.CodecInfo.LastDecPicCodingType, <variable>.CodecInfo.LastDecPicCodingType
	cmp	sl, #1	@ <variable>.CodecInfo.LastDecPicCodingType,
	bne	.L538	@,
	ldrb	r7, [r5, #9]	@ zero_extendqisi2	@ prephitmp.2248, <variable>.picture_structure
	b	.L534	@
.L578:
	.align	2
.L577:
	.word	.LANCHOR0+1164
	.fnend
	.size	MP2_DecodingDecide, .-MP2_DecodingDecide
	.align	2
	.global	MP2_ArrangeVHBMem
	.type	MP2_ArrangeVHBMem, %function
MP2_ArrangeVHBMem:
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
	movw	r3, #:lower16:80504	@ tmp157,
	movt	r3, #:upper16:80504	@ tmp157,
	mov	r6, r0	@ pCtx, pCtx
	ldr	r3, [r0, r3]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	ldr	r2, [r3, #48]	@ D.38650, <variable>.horizontal_size
	cmp	r2, #31	@ D.38650,
	ldrls	r3, [r3, #52]	@ prephitmp.2263, <variable>.vertical_size
	bls	.L581	@,
	ldr	r3, [r3, #52]	@ prephitmp.2263, <variable>.vertical_size
	cmp	r3, #31	@ prephitmp.2263,
	bls	.L581	@,
	ldr	r1, [r0, #0]	@ D.38657, <variable>.pstExtraData
	ldr	r0, [r1, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r0, #25	@ <variable>.eCapLevel,
	beq	.L604	@,
	mov	r4, r2	@ PicWidth, D.38650
	mov	r5, r3	@ PicHeight, prephitmp.2263
	mov	r8, #5	@ prephitmp.2265,
	mov	sl, #2	@ PmvNum,
	mov	r9, #3	@ DecFsNum,
.L591:
	sub	r7, fp, #84	@ tmp193,,
	mov	r1, #36	@,
	mov	r0, r7	@, tmp193
	bl	__memzero	@
	ldr	r3, [r6, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r0, #0	@ tmp171,
	ldr	ip, [r3, #20]	@ <variable>.s32DnrDispOutEnable, <variable>.s32DnrDispOutEnable
	str	r4, [fp, #-56]	@ PicWidth, FspInstCfg.s32DispFsWidth
	strb	r0, [fp, #-82]	@ tmp171, FspInstCfg.s32RprEnable
	str	r4, [fp, #-72]	@ PicWidth, FspInstCfg.s32DecFsWidth
	str	r5, [fp, #-52]	@ PicHeight, FspInstCfg.s32DispFsHeight
	strb	ip, [fp, #-84]	@ <variable>.s32DnrDispOutEnable, FspInstCfg.s32DispLoopEnable
	str	r5, [fp, #-68]	@ PicHeight, FspInstCfg.s32DecFsHeight
	ldr	r5, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	strb	r8, [fp, #-77]	@ prephitmp.2265, FspInstCfg.s32ExpectedDispFsNum
	cmp	r5, #24	@ <variable>.eCapLevel,
	movw	r5, #:lower16:114672	@ tmp182,
	uxtbne	r0, r9	@ iftmp.441, DecFsNum
	strb	r0, [fp, #-79]	@ iftmp.441, FspInstCfg.s32ExpectedDecFsNum
	ldr	r1, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	movt	r5, #:upper16:114672	@ tmp182,
	cmp	r1, #24	@ <variable>.eCapLevel,
	mov	r1, r7	@, tmp193
	uxtbne	sl, sl	@ iftmp.442, PmvNum
	mov	r7, #0	@ tmp180,
	moveq	sl, #1	@ iftmp.442,
	strb	sl, [fp, #-76]	@ iftmp.442, FspInstCfg.s32ExpectedPmvNum
	ldr	r0, [r6, r5]	@, <variable>.ChanID
	strb	r7, [fp, #-80]	@ tmp180, FspInstCfg.s32UserDec
	bl	FSP_ConfigInstance	@
	subs	r4, r0, #0	@ D.38701,
	bne	.L601	@,
	ldr	lr, [r6, #0]	@ temp.2292, <variable>.pstExtraData
	sub	r3, fp, #48	@,,
	ldr	r0, [r6, r5]	@, <variable>.ChanID
	ldr	r2, [lr, #28]	@, <variable>.s32SyntaxMemSize
	ldr	r1, [lr, #24]	@, <variable>.s32SyntaxMemAddr
	bl	FSP_PartitionFsMemory	@
	cmp	r0, r7	@,
	moveq	r0, #1	@ D.38654,
	beq	.L583	@,
	mov	r0, r4	@, D.38701
	movw	r1, #:lower16:.LC57	@,
	movt	r1, #:upper16:.LC57	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.38654, D.38701
	b	.L583	@
.L581:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC55	@,
	movt	r1, #:upper16:.LC55	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.38654,
.L583:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L601:
	mov	r0, r7	@, tmp180
	movw	r1, #:lower16:.LC58	@,
	movt	r1, #:upper16:.LC58	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.38654, tmp180
	b	.L583	@
.L604:
	ldr	ip, [r1, #788]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	ip, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L585	@,
	ldr	r4, [r1, #744]	@ PicWidth, <variable>.stChanOption.s32MaxWidth
	cmp	r2, r4	@ D.38650, PicWidth
	ldrhi	r5, [r1, #748]	@ PicHeight, <variable>.stChanOption.s32MaxHeight
	bhi	.L587	@,
	ldr	r5, [r1, #748]	@ PicHeight, <variable>.stChanOption.s32MaxHeight
	cmp	r3, r5	@ prephitmp.2263, PicHeight
	bhi	.L587	@,
	ldr	r2, [r1, #776]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	r9, [r1, #768]	@ D.38670, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	r2, #0	@ <variable>.stChanOption.s32SupportBFrame,
	moveq	sl, #1	@ PmvNum,
	beq	.L590	@,
	add	sl, r9, #1	@ PmvNum.2278, D.38670,
	cmp	sl, #17	@ PmvNum.2278,
	movge	sl, #17	@ PmvNum,
.L590:
	add	r9, r9, #2	@ DecFsNum, D.38670,
	ldrb	r8, [r1, #796]	@ zero_extendqisi2	@ prephitmp.2265, <variable>.stChanOption.s32DisplayFrameNum
	b	.L591	@
.L585:
	ldr	ip, [r1, #744]	@ D.38664, <variable>.stChanOption.s32MaxWidth
	cmp	r2, ip	@ D.38650, D.38664
	ldrhi	lr, [r1, #748]	@ prephitmp.2267, <variable>.stChanOption.s32MaxHeight
	bhi	.L593	@,
	ldr	lr, [r1, #748]	@ prephitmp.2267, <variable>.stChanOption.s32MaxHeight
	cmp	r3, lr	@ prephitmp.2263, prephitmp.2267
	bhi	.L593	@,
	ldr	r4, [r1, #776]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	r9, [r1, #768]	@ temp.2281, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	r4, #0	@ <variable>.stChanOption.s32SupportBFrame,
	moveq	sl, #1	@ PmvNum,
	beq	.L596	@,
	add	sl, r9, #1	@ PmvNum.2283, temp.2281,
	cmp	sl, #17	@ PmvNum.2283,
	movge	sl, #17	@ PmvNum,
.L596:
	ldrb	r8, [r1, #796]	@ zero_extendqisi2	@ prephitmp.2265, <variable>.stChanOption.s32DisplayFrameNum
	add	r9, r9, #2	@ DecFsNum, temp.2281,
	mov	r4, r2	@ PicWidth, D.38650
	mov	r5, r3	@ PicHeight, prephitmp.2263
	b	.L591	@
.L593:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC56	@,
	movt	r1, #:upper16:.LC56	@,
	stmia	sp, {ip, lr}	@ phole stm
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.38654,
	b	.L583	@
.L587:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC56	@,
	movt	r1, #:upper16:.LC56	@,
	stmia	sp, {r4, r5}	@ phole stm
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.38654,
	b	.L583	@
	.fnend
	.size	MP2_ArrangeVHBMem, .-MP2_ArrangeVHBMem
	.align	2
	.global	MP2_GetSequenceInfo
	.type	MP2_GetSequenceInfo, %function
MP2_GetSequenceInfo:
	.fnstart
.LFB1535:
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
	movw	r3, #:lower16:79216	@ tmp156,
	movt	r3, #:upper16:79216	@ tmp156,
	mov	r4, r0	@ pCtx, pCtx
	movw	ip, #:lower16:80508	@ tmp155,
	movw	r0, #:lower16:80504	@ tmp154,
	ldr	r2, [r4, r3]	@ <variable>.CodecInfo.MpegFlag, <variable>.CodecInfo.MpegFlag
	movt	r0, #:upper16:80504	@ tmp154,
	movt	ip, #:upper16:80508	@ tmp155,
	mov	r1, #0	@ tmp151,
	cmp	r2, #1	@ <variable>.CodecInfo.MpegFlag,
	ldr	r5, [r4, r0]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	ldr	r9, [r4, ip]	@ pSyntaxInfOld, <variable>.pSyntaxInfOld
	str	r1, [fp, #-56]	@ tmp151, NewNum
	str	r1, [fp, #-48]	@ tmp151, RefNum
	str	r1, [fp, #-52]	@ tmp151, ReadNum
	beq	.L607	@,
	cmp	r2, #2	@ <variable>.CodecInfo.MpegFlag,
	beq	.L632	@,
	movw	r2, #:lower16:79180	@ tmp169,
	movt	r2, #:upper16:79180	@ tmp169,
	ldr	r1, [r4, r2]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	tst	r1, #3538944	@ <variable>.CodecInfo.StreamIntegrality,
	bne	.L633	@,
.L612:
	mov	r2, #1	@ tmp183,
	str	r2, [r4, r3]	@ tmp183, <variable>.CodecInfo.MpegFlag
.L610:
	mov	r0, #17	@,
	movw	r1, #:lower16:.LC59	@,
	movt	r1, #:upper16:.LC59	@,
	bl	dprint_vfmw	@
	movw	r3, #:lower16:79216	@ tmp185,
	movt	r3, #:upper16:79216	@ tmp185,
	ldr	r3, [r4, r3]	@ <variable>.CodecInfo.MpegFlag, <variable>.CodecInfo.MpegFlag
	cmp	r3, #1	@ <variable>.CodecInfo.MpegFlag,
	beq	.L634	@,
.L615:
	ldr	lr, [r5, #48]	@ <variable>.horizontal_size, <variable>.horizontal_size
	movw	r0, #:lower16:79216	@ tmp211,
	movt	r0, #:upper16:79216	@ tmp211,
	add	r2, lr, #15	@ tmp208, <variable>.horizontal_size,
	mov	r3, r2, lsr #4	@ tmp210, tmp208,
	str	r3, [r5, #56]	@ tmp210, <variable>.mb_width
	ldr	ip, [r4, r0]	@ <variable>.CodecInfo.MpegFlag, <variable>.CodecInfo.MpegFlag
	cmp	ip, #2	@ <variable>.CodecInfo.MpegFlag,
	beq	.L635	@,
.L616:
	ldr	r2, [r5, #52]	@ temp.2333, <variable>.vertical_size
	add	r3, r2, #15	@ tmp217, temp.2333,
	mov	r1, r3, lsr #4	@ iftmp.466, tmp217,
.L617:
	movw	ip, #:lower16:79216	@ tmp220,
	movt	ip, #:upper16:79216	@ tmp220,
	str	r1, [r5, #60]	@ iftmp.466, <variable>.mb_height
	mov	r1, #0	@ tmp219,
	str	r1, [r5, #64]	@ tmp219, <variable>.mb_height_progressive_subtract1mb
	ldr	lr, [r4, ip]	@ <variable>.CodecInfo.MpegFlag, <variable>.CodecInfo.MpegFlag
	cmp	lr, #2	@ <variable>.CodecInfo.MpegFlag,
	beq	.L636	@,
.L618:
	movw	r0, #:lower16:79228	@ tmp229,
	movt	r0, #:upper16:79228	@ tmp229,
	ldr	r3, [r4, r0]	@ prephitmp.2338, <variable>.CodecInfo.Imgbuf_allocated
	cmp	r3, #0	@ prephitmp.2338,
	beq	.L619	@,
	ldr	r1, [r5, #56]	@ <variable>.mb_width, <variable>.mb_width
	ldr	r2, [r9, #56]	@ <variable>.mb_width, <variable>.mb_width
	cmp	r1, r2	@ <variable>.mb_width, <variable>.mb_width
	beq	.L637	@,
.L619:
	movw	r6, #:lower16:114672	@ tmp234,
	movw	r8, #:lower16:79260	@ tmp236,
	movt	r6, #:upper16:114672	@ tmp234,
	movt	r8, #:upper16:79260	@ tmp236,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pImg,
	beq	.L621	@,
	ldr	r1, [r7, #212]	@, <variable>.p_usrdat
	movw	sl, #:lower16:79256	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	movt	sl, #:upper16:79256	@,
	str	sl, [fp, #-72]	@, %sfp
	bl	FreeUsdByDec	@
	ldr	r1, [r7, #216]	@, <variable>.p_usrdat
	mov	sl, #0	@ tmp250,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r7, #220]	@, <variable>.p_usrdat
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r7, #224]	@, <variable>.p_usrdat
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	sl, [r7, #224]	@ tmp250, <variable>.p_usrdat
	str	sl, [r7, #212]	@ tmp250, <variable>.p_usrdat
	mov	r2, #1	@,
	str	sl, [r7, #216]	@ tmp250, <variable>.p_usrdat
	str	sl, [r7, #220]	@ tmp250, <variable>.p_usrdat
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_ClearLogicFs	@
	ldr	r3, [fp, #-72]	@, %sfp
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.FwdFsID
	bl	FSP_ClearLogicFs	@
	str	sl, [r4, r8]	@ tmp250, <variable>.CodecInfo.BwdFsID
	ldr	r7, [fp, #-72]	@, %sfp
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	str	sl, [r4, r7]	@ tmp250, <variable>.CodecInfo.FwdFsID
	bl	FSP_GetFspType	@
	cmp	r0, sl	@,
	bne	.L638	@,
.L621:
	add	ip, r4, #79872	@ D.39386, pCtx,
	movw	r2, #:lower16:79220	@ tmp272,
	add	r6, ip, #640	@ D.39386, D.39386,
	movt	r2, #:upper16:79220	@ tmp272,
	movw	lr, #:lower16:114672	@ tmp275,
	movt	lr, #:upper16:114672	@ tmp275,
	mov	r1, #0	@ tmp273,
	str	r1, [r4, r2]	@ tmp273, <variable>.CodecInfo.RefNum
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r1, r6	@, D.39386
	bl	FSP_ClearNotInVoQueue	@
	ldr	r3, [r4, #0]	@ D.39389, <variable>.pstExtraData
	ldr	r0, [r3, #788]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r0, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L622	@,
	ldr	r7, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r7, #25	@ <variable>.eCapLevel,
	beq	.L639	@,
.L622:
	movw	r3, #:lower16:79228	@ tmp284,
	movt	r3, #:upper16:79228	@ tmp284,
	ldr	r0, [r4, r3]	@ <variable>.CodecInfo.Imgbuf_allocated, <variable>.CodecInfo.Imgbuf_allocated
	cmp	r0, #0	@ <variable>.CodecInfo.Imgbuf_allocated,
	beq	.L624	@,
	ldr	lr, [r9, #56]	@ <variable>.mb_width, <variable>.mb_width
	cmp	lr, #0	@ <variable>.mb_width,
	beq	.L624	@,
	ldr	r1, [r9, #60]	@ <variable>.mb_height, <variable>.mb_height
	cmp	r1, #0	@ <variable>.mb_height,
	bne	.L640	@,
.L624:
	movw	r7, #:lower16:114672	@ tmp294,
	movt	r7, #:upper16:114672	@ tmp294,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	bne	.L625	@,
	sub	r3, fp, #56	@,,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	sub	r1, fp, #48	@,,
	sub	r2, fp, #52	@,,
	bl	VCTRL_GetChanImgNum	@
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [ip, #788]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r3, #1	@ <variable>.stChanOption.s32ReRangeEn,
	beq	.L641	@,
.L626:
	mov	r0, r6	@, D.39386
	mov	r6, #0	@ tmp310,
	bl	ResetVoQueue	@
	movw	r2, #:lower16:114689	@ tmp309,
	movt	r2, #:upper16:114689	@ tmp309,
	strb	r6, [r4, r2]	@ tmp310, <variable>.IsWaitToReRange
.L625:
	movw	r6, #:lower16:79228	@ tmp312,
	movw	r0, #:lower16:79244	@ tmp314,
	movt	r6, #:upper16:79228	@ tmp312,
	movt	r0, #:upper16:79244	@ tmp314,
	mov	r1, #0	@ tmp313,
	str	r1, [r4, r0]	@ tmp313, <variable>.CodecInfo.QueueImageNum
	mov	r0, r4	@, pCtx
	str	r1, [r4, r6]	@ tmp313, <variable>.CodecInfo.Imgbuf_allocated
	bl	MP2_ArrangeVHBMem	@
	movw	r1, #:lower16:.LC61	@,
	movt	r1, #:upper16:.LC61	@,
	str	r0, [r4, r6]	@, <variable>.CodecInfo.Imgbuf_allocated
	mov	r0, #1	@,
	ldr	ip, [r5, #56]	@ <variable>.mb_width, <variable>.mb_width
	ldr	r3, [r5, #60]	@ <variable>.mb_height, <variable>.mb_height
	mov	r2, ip, asl #4	@, <variable>.mb_width,
	mov	r3, r3, asl #4	@, <variable>.mb_height,
	bl	dprint_vfmw	@
.L623:
	movw	lr, #:lower16:g_event_report	@ tmp322,
	movt	lr, #:upper16:g_event_report	@ tmp322,
	ldr	ip, [lr, #0]	@ g_event_report.2359, g_event_report
	cmp	ip, #0	@ g_event_report.2359,
	beq	.L631	@,
	ldrh	r2, [r9, #56]	@, <variable>.mb_width
	movw	r3, #:lower16:114672	@ tmp328,
	movt	r3, #:upper16:114672	@ tmp328,
	strh	r2, [fp, #-64]	@ movhi	@, para
	sub	r2, fp, #64	@,,
	ldrh	r9, [r9, #60]	@, <variable>.mb_height
	strh	r9, [fp, #-62]	@ movhi	@, para
	ldrh	r1, [r5, #56]	@, <variable>.mb_width
	strh	r1, [fp, #-60]	@ movhi	@, para
	mov	r1, #2	@,
	ldrh	r5, [r5, #60]	@, <variable>.mb_height
	strh	r5, [fp, #-58]	@ movhi	@, para
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r3, #8	@,
	blx	ip	@ g_event_report.2359
.L631:
	movw	ip, #:lower16:79228	@ tmp331,
	movt	ip, #:upper16:79228	@ tmp331,
	ldr	r3, [r4, ip]	@ prephitmp.2338, <variable>.CodecInfo.Imgbuf_allocated
.L620:
	movw	r0, #:lower16:79176	@ tmp332,
	movt	r0, #:upper16:79176	@ tmp332,
	str	r3, [r4, r0]	@ prephitmp.2338, <variable>.CodecInfo.NewSeqInited
.L629:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L632:
	movw	ip, #:lower16:79180	@ tmp164,
	movt	ip, #:upper16:79180	@ tmp164,
	ldr	r1, [r4, ip]	@ tmp166,
	and	lr, r1, #1769472	@ tmp165, tmp166,
	cmp	lr, #589824	@ tmp165,
	bne	.L610	@,
	b	.L612	@
.L607:
	movw	r0, #:lower16:79180	@ tmp158,
	movt	r0, #:upper16:79180	@ tmp158,
	movw	r1, #:lower16:1179666	@ tmp159,
	movt	r1, #:upper16:1179666	@ tmp159,
	ldr	ip, [r4, r0]	@ tmp161,
	and	lr, ip, r1	@ tmp159, tmp161, tmp159
	cmp	lr, #1179648	@ tmp159,
	moveq	r2, #2	@ tmp163,
	streq	r2, [r4, r3]	@ tmp163, <variable>.CodecInfo.MpegFlag
	b	.L610	@
.L634:
	mov	r2, #0	@ tmp198,
	mov	r1, #3	@ tmp191,
	mov	lr, #5	@ tmp197,
	strb	r3, [r5, #28]	@ <variable>.CodecInfo.MpegFlag, <variable>.chroma_format
	strb	r2, [r5, #8]	@ tmp198, <variable>.intra_dc_precision
	strb	r1, [r5, #9]	@ tmp191, <variable>.picture_structure
	str	lr, [r5, #144]	@ tmp197, <variable>.matrix_coefficients
	strb	r3, [r5, #27]	@ <variable>.CodecInfo.MpegFlag, <variable>.progressive_sequence
	strb	r3, [r5, #18]	@ <variable>.CodecInfo.MpegFlag, <variable>.progressive_frame
	strb	r3, [r5, #11]	@ <variable>.CodecInfo.MpegFlag, <variable>.frame_pred_frame_dct
	strb	r2, [r5, #12]	@ tmp198, <variable>.concealment_motion_vectors
	strb	r2, [r5, #13]	@ tmp198, <variable>.q_scale_type
	strb	r2, [r5, #14]	@ tmp198, <variable>.intra_vlc_format
	strb	r2, [r5, #15]	@ tmp198, <variable>.alternate_scan
	b	.L615	@
.L636:
	ldrb	r0, [r5, #27]	@ zero_extendqisi2	@ <variable>.progressive_sequence, <variable>.progressive_sequence
	cmp	r0, r1	@ <variable>.progressive_sequence,
	bne	.L618	@,
	add	ip, r2, #31	@ tmp223, temp.2333,
	add	lr, r2, #15	@ tmp226, temp.2333,
	mov	r3, ip, lsr #5	@ tmp224, tmp223,
	mov	r1, lr, lsr #4	@ tmp227, tmp226,
	rsb	r2, r1, r3, asl #1	@, tmp228, tmp227, tmp224,
	str	r2, [r5, #64]	@ tmp228, <variable>.mb_height_progressive_subtract1mb
	b	.L618	@
.L635:
	ldrb	r1, [r5, #27]	@ zero_extendqisi2	@ <variable>.progressive_sequence, <variable>.progressive_sequence
	cmp	r1, #0	@ <variable>.progressive_sequence,
	bne	.L616	@,
	ldr	r2, [r5, #52]	@ temp.2333, <variable>.vertical_size
	add	r0, r2, #31	@ tmp214, temp.2333,
	mov	ip, r0, lsr #5	@ tmp216, tmp214,
	mov	r1, ip, asl #1	@ iftmp.466, tmp216,
	b	.L617	@
.L633:
	tst	r1, #131072	@ prephitmp.2312,
	mov	r0, #2	@ tmp173,
	orreq	r1, r1, r0	@ prephitmp.2312, prephitmp.2312,
	streq	r1, [r4, r2]	@ prephitmp.2312, <variable>.CodecInfo.StreamIntegrality
	tst	r1, #1048576	@ prephitmp.2312,
	str	r0, [r4, r3]	@ tmp173, <variable>.CodecInfo.MpegFlag
	orreq	r1, r1, #16	@ tmp180, prephitmp.2312,
	movweq	r2, #:lower16:79180	@ tmp179,
	movwne	r3, #:lower16:79216	@ tmp178,
	movteq	r2, #:upper16:79180	@ tmp179,
	movweq	r3, #:lower16:79216	@ tmp181,
	movtne	r3, #:upper16:79216	@ tmp178,
	movteq	r3, #:upper16:79216	@ tmp181,
	streq	r1, [r4, r2]	@ tmp180, <variable>.CodecInfo.StreamIntegrality
	ldr	r2, [r4, r3]	@ prephitmp.2336, <variable>.CodecInfo.MpegFlag
	b	.L610	@
.L640:
	mov	r7, #0	@ tmp289,
	mov	r0, #1	@,
	str	r7, [r4, r3]	@ tmp289, <variable>.CodecInfo.Imgbuf_allocated
	movw	r1, #:lower16:.LC60	@,
	movt	r1, #:upper16:.LC60	@,
	bl	dprint_vfmw	@
	movw	r2, #:lower16:g_event_report	@ tmp291,
	movt	r2, #:upper16:g_event_report	@ tmp291,
	ldr	ip, [r2, #0]	@ g_event_report.469, g_event_report
	cmp	ip, r7	@ g_event_report.469,
	beq	.L624	@,
	movw	r3, #:lower16:114672	@ tmp292,
	movt	r3, #:upper16:114672	@ tmp292,
	mov	r2, r7	@, tmp289
	mov	r1, #120	@,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r3, r7	@, tmp2
	blx	ip	@ g_event_report.469
	b	.L624	@
.L637:
	ldr	lr, [r5, #60]	@ <variable>.mb_height, <variable>.mb_height
	ldr	ip, [r9, #60]	@ <variable>.mb_height, <variable>.mb_height
	cmp	lr, ip	@ <variable>.mb_height, <variable>.mb_height
	bne	.L619	@,
	b	.L620	@
.L641:
	ldr	lr, [fp, #-52]	@ ReadNum, ReadNum
	ldr	r1, [fp, #-56]	@ NewNum, NewNum
	add	r0, r1, lr	@ tmp303, NewNum, ReadNum
	cmp	r0, #0	@ tmp303,
	movwgt	r0, #:lower16:114689	@ tmp306,
	movtgt	r0, #:upper16:114689	@ tmp306,
	strgtb	r3, [r4, r0]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.IsWaitToReRange
	bgt	.L629	@,
	b	.L626	@
.L638:
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, r8]	@ D.39385, <variable>.CodecInfo.BwdFsID
	ldr	r6, [fp, #-72]	@, %sfp
	str	r0, [r4, r6]	@ D.39385, <variable>.CodecInfo.FwdFsID
	b	.L621	@
.L639:
	movw	r7, #:lower16:79228	@ tmp279,
	movt	r7, #:upper16:79228	@ tmp279,
	ldr	r8, [r4, r7]	@ <variable>.CodecInfo.Imgbuf_allocated, <variable>.CodecInfo.Imgbuf_allocated
	cmp	r8, #0	@ <variable>.CodecInfo.Imgbuf_allocated,
	bne	.L623	@,
	mov	r0, r6	@, D.39386
	bl	ResetVoQueue	@
	mov	r0, r4	@, pCtx
	mov	r1, r8	@, <variable>.CodecInfo.Imgbuf_allocated
	bl	MP2_ArrangeVHBMem	@
	movw	r3, #:lower16:79244	@ tmp282,
	movt	r3, #:upper16:79244	@ tmp282,
	str	r8, [r4, r3]	@ <variable>.CodecInfo.Imgbuf_allocated, <variable>.CodecInfo.QueueImageNum
	str	r0, [r4, r7]	@, <variable>.CodecInfo.Imgbuf_allocated
	b	.L623	@
	.fnend
	.size	MP2_GetSequenceInfo, .-MP2_GetSequenceInfo
	.align	2
	.global	GetSliceHdr
	.type	GetSliceHdr, %function
GetSliceHdr:
	.fnstart
.LFB1531:
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
	add	r6, r0, #78848	@ pBs, pCtx,
	movw	r7, #:lower16:79240	@ tmp159,
	mov	r5, r0	@ pCtx, pCtx
	add	r6, r6, #576	@ pBs, pBs,
	movt	r7, #:upper16:79240	@ tmp159,
	b	.L643	@
.L648:
	bl	BsShow	@
	mov	r4, r0	@ D.38876,
	mov	r0, r6	@, pBs
	bl	BsPos	@
	sub	r4, r4, #256	@ tmp146, D.38876,
	sub	r4, r4, #1	@ tmp146, tmp146,
	mov	r1, #32	@,
	cmp	r4, #174	@ tmp146,
	str	r0, [r5, r7]	@, <variable>.CodecInfo.HDRUsedBits
	mov	r0, r6	@, pBs
	bls	.L653	@,
	bl	BsSkip	@
.L643:
	mov	r0, r5	@, pCtx
	bl	next_start_code	@
	mov	r1, #32	@,
	mov	r4, r0	@ ret.2390,
	cmp	r4, #1	@ ret.2390,
	mov	r0, r6	@, pBs
	beq	.L648	@,
	cmn	r4, #1	@ ret.2390,
	beq	.L649	@,
.L652:
	mov	r0, r4	@ prephitmp.2379, ret.2390
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L649:
	movw	lr, #:lower16:g_event_report	@ tmp154,
	movt	lr, #:upper16:g_event_report	@ tmp154,
	ldr	ip, [lr, #0]	@ g_event_report.447, g_event_report
	cmp	ip, #0	@ g_event_report.447,
	beq	.L652	@,
	movw	r3, #:lower16:114672	@ tmp155,
	movt	r3, #:upper16:114672	@ tmp155,
	mov	r2, #0	@,
	mov	r1, #113	@,
	ldr	r0, [r5, r3]	@, <variable>.ChanID
	mov	r3, r2	@,
	blx	ip	@ g_event_report.447
	mov	r0, r4	@ prephitmp.2379, ret.2390
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L653:
	bl	BsResidBits	@
	cmp	r0, #40	@,
	mvnle	r4, #0	@ ret.2390,
	ble	.L649	@,
	movw	r0, #:lower16:79176	@ tmp150,
	movt	r0, #:upper16:79176	@ tmp150,
	mov	r1, #0	@ tmp149,
	movw	r3, #:lower16:79236	@ tmp148,
	ldr	r2, [r5, r0]	@ <variable>.CodecInfo.NewSeqInited, <variable>.CodecInfo.NewSeqInited
	movt	r3, #:upper16:79236	@ tmp148,
	cmp	r2, r1	@ <variable>.CodecInfo.NewSeqInited,
	str	r1, [r5, r3]	@ tmp149, <variable>.CodecInfo.HDRState
	bne	.L646	@,
	mov	r0, r5	@, pCtx
	bl	MP2_GetSequenceInfo	@
	movw	ip, #:lower16:79228	@ tmp152,
	movt	ip, #:upper16:79228	@ tmp152,
	ldr	r0, [r5, ip]	@ <variable>.CodecInfo.Imgbuf_allocated, <variable>.CodecInfo.Imgbuf_allocated
	cmp	r0, #0	@ <variable>.CodecInfo.Imgbuf_allocated,
	ldmeqfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L646:
	mov	r0, r5	@, pCtx
	bl	MP2_ProtocolPPSCheck	@
	mov	r0, #1	@ prephitmp.2379,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	GetSliceHdr, .-GetSliceHdr
	.align	2
	.global	MP2_GetHDR
	.type	MP2_GetHDR, %function
MP2_GetHDR:
	.fnstart
.LFB1530:
	@ args = 0, pretend = 0, frame = 96
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #100
	sub	sp, sp, #100	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	ip, #:lower16:80508	@ tmp172,
	movt	ip, #:upper16:80508	@ tmp172,
	mov	r4, r0	@ pCtx, pCtx
	add	r5, r0, #78848	@ pBs, pCtx,
	movw	lr, #:lower16:80504	@ tmp171,
	ldr	r6, [r4, ip]	@, <variable>.pSyntaxInfOld
	add	r5, r5, #576	@ pBs, pBs,
	movt	lr, #:upper16:80504	@ tmp171,
	mov	sl, #114688	@ tmp173,
	mov	r1, #32	@,
	mov	r8, #0	@ tmp174,
	strb	r8, [r0, sl]	@ tmp174, <variable>.IsWaitToDecFlag
	mov	r0, r5	@, pBs
	ldr	r9, [r4, lr]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	movw	r7, #:lower16:79180	@ tmp176,
	str	r6, [fp, #-112]	@, %sfp
	bl	BsShow	@
	movt	r7, #:upper16:79180	@ tmp176,
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.StreamIntegrality
	str	r1, [fp, #-116]	@, %sfp
	mov	r6, r0	@ code,
	mov	r0, r5	@, pBs
	bl	BsPos	@
	movw	r2, #:lower16:79240	@ tmp177,
	movt	r2, #:upper16:79240	@ tmp177,
	mov	r1, #32	@,
	str	r0, [r4, r2]	@, <variable>.CodecInfo.HDRUsedBits
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	movw	r3, #439	@ tmp178,
	cmp	r6, r3	@ code, tmp178
	beq	.L691	@,
	movw	ip, #435	@ tmp218,
	cmp	r6, ip	@ code, tmp218
	cmpne	r6, #440	@, code,
	bne	.L692	@,
.L656:
	movw	r3, #:lower16:79236	@ tmp231,
	movt	r3, #:upper16:79236	@ tmp231,
	ldr	r7, [r4, r3]	@ <variable>.CodecInfo.HDRState, <variable>.CodecInfo.HDRState
	cmp	r7, #1	@ <variable>.CodecInfo.HDRState,
	beq	.L693	@,
.L659:
	movw	r2, #435	@ tmp245,
	cmp	r6, r2	@ code, tmp245
	beq	.L663	@,
.L696:
	bls	.L694	@,
	movw	r3, #437	@ tmp248,
	cmp	r6, r3	@ code, tmp248
	beq	.L665	@,
	bcs	.L695	@,
.L679:
	mov	r0, #0	@ prephitmp.2409,
.L658:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L692:
	cmp	r6, #256	@ code,
	beq	.L656	@,
	movw	r2, #435	@ tmp245,
	cmp	r6, r2	@ code, tmp245
	bne	.L696	@,
.L663:
	movw	r0, #:lower16:79128	@ tmp251,
	movw	r1, #:lower16:79232	@ tmp252,
	movt	r0, #:upper16:79128	@ tmp251,
	movt	r1, #:upper16:79232	@ tmp252,
	ldr	r6, [r4, r0]	@ <variable>.CodecInfo.BsOffset, <variable>.CodecInfo.BsOffset
	mov	r0, r5	@, pBs
	ldr	lr, [r4, r1]	@ <variable>.CodecInfo.Used_byte, <variable>.CodecInfo.Used_byte
	add	r6, r6, lr	@ D.38770, <variable>.CodecInfo.BsOffset, <variable>.CodecInfo.Used_byte
	bl	BsPos	@
	movw	r1, #:lower16:.LC62	@,
	movt	r1, #:upper16:.LC62	@,
	add	r2, r6, r0, lsr #3	@, tmp257, D.38770,,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	sequence_header	@
	mov	r0, r5	@, pBs
	bl	BsResidBits	@
	cmp	r0, #0	@,
	blt	.L697	@,
	movw	r5, #:lower16:79180	@ tmp267,
	movt	r5, #:upper16:79180	@ tmp267,
	ldr	r6, [r4, r5]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	ands	r6, r6, #7	@ tmp268, <variable>.CodecInfo.StreamIntegrality,
	bne	.L670	@,
	ldr	r0, [fp, #-112]	@, %sfp
	mov	r1, r9	@, pSyntaxInfNew
	mov	lr, #1	@ tmp270,
	mov	r2, #188	@,
	strb	lr, [r9, #0]	@ tmp270, <variable>.valid_flag
	bl	memcpy	@
	movw	r1, #:lower16:79184	@ tmp276,
	movt	r1, #:upper16:79184	@ tmp276,
	mov	r0, r6	@ prephitmp.2409, tmp268
	ldr	r2, [r4, r1]	@ <variable>.CodecInfo.SeqCnt, <variable>.CodecInfo.SeqCnt
	add	ip, r2, #1	@ tmp279, <variable>.CodecInfo.SeqCnt,
	str	ip, [r4, r1]	@ tmp279, <variable>.CodecInfo.SeqCnt
	b	.L658	@
.L694:
	cmp	r6, #256	@ code,
	beq	.L661	@,
	bcc	.L660	@,
	cmp	r6, #432	@ code,
	bls	.L660	@,
	movw	r0, #:lower16:79128	@ tmp327,
	movw	lr, #:lower16:79232	@ tmp328,
	movt	r0, #:upper16:79128	@ tmp327,
	movt	lr, #:upper16:79232	@ tmp328,
	ldr	r6, [r4, r0]	@ <variable>.CodecInfo.BsOffset, <variable>.CodecInfo.BsOffset
	mov	r0, r5	@, pBs
	ldr	r3, [r4, lr]	@ <variable>.CodecInfo.Used_byte, <variable>.CodecInfo.Used_byte
	add	r5, r6, r3	@ temp.2454, <variable>.CodecInfo.BsOffset, <variable>.CodecInfo.Used_byte
	bl	BsPos	@
	movw	r1, #:lower16:.LC68	@,
	movt	r1, #:upper16:.LC68	@,
	add	r2, r5, r0, lsr #3	@, tmp333, temp.2454,,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	MP2_GetUsrData	@
	subs	r6, r0, #0	@ D.38826,
	beq	.L698	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC70	@,
	movt	r1, #:upper16:.LC70	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@ prephitmp.2409, D.38826
	b	.L658	@
.L695:
	movw	ip, #439	@ tmp250,
	cmp	r6, ip	@ code, tmp250
	beq	.L679	@,
	cmp	r6, #440	@ code,
	beq	.L699	@,
.L660:
	sub	r2, r6, #256	@ tmp357, code,
	sub	r0, r2, #1	@ tmp357, tmp357,
	cmp	r0, #174	@ tmp357,
	bhi	.L677	@,
	movw	r3, #:lower16:79176	@ tmp359,
	movt	r3, #:upper16:79176	@ tmp359,
	ldr	r1, [r4, r3]	@ <variable>.CodecInfo.NewSeqInited, <variable>.CodecInfo.NewSeqInited
	cmp	r1, #0	@ <variable>.CodecInfo.NewSeqInited,
	beq	.L700	@,
.L678:
	movw	r3, #:lower16:79180	@ tmp365,
	movt	r3, #:upper16:79180	@ tmp365,
	ldr	r2, [r4, r3]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	tst	r2, #589824	@ <variable>.CodecInfo.StreamIntegrality,
	beq	.L679	@,
	movw	r1, #:lower16:79236	@ tmp368,
	movt	r1, #:upper16:79236	@ tmp368,
	orr	r5, r2, #4194304	@ tmp373, <variable>.CodecInfo.StreamIntegrality,
	mov	r0, r4	@, pCtx
	str	r5, [r4, r3]	@ tmp373, <variable>.CodecInfo.StreamIntegrality
	mov	r5, #1	@ tmp369,
	str	r5, [r4, r1]	@ tmp369, <variable>.CodecInfo.HDRState
	mov	r1, r6	@, code
	bl	MP2_DecSlice	@
	cmp	r0, r5	@ D.38858,
	beq	.L658	@,
	mov	r0, r5	@, tmp369
	mov	r2, r6	@, code
	movw	r1, #:lower16:.LC72	@,
	movt	r1, #:upper16:.LC72	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ prephitmp.2409,
	b	.L658	@
.L699:
	movw	r0, #:lower16:79128	@ tmp295,
	movw	lr, #:lower16:79232	@ tmp296,
	movt	r0, #:upper16:79128	@ tmp295,
	movt	lr, #:upper16:79232	@ tmp296,
	ldr	r6, [r4, r0]	@ <variable>.CodecInfo.BsOffset, <variable>.CodecInfo.BsOffset
	mov	r0, r5	@, pBs
	ldr	r2, [r4, lr]	@ <variable>.CodecInfo.Used_byte, <variable>.CodecInfo.Used_byte
	add	r6, r6, r2	@ temp.2438, <variable>.CodecInfo.BsOffset, <variable>.CodecInfo.Used_byte
	bl	BsPos	@
	movw	r1, #:lower16:.LC64	@,
	movt	r1, #:upper16:.LC64	@,
	add	r2, r6, r0, lsr #3	@, tmp301, temp.2438,,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	group_of_pictures_header	@
	mov	r0, r5	@, pBs
	bl	BsResidBits	@
	cmp	r0, #0	@,
	bge	.L679	@,
	ldr	ip, [fp, #-116]	@, %sfp
	movw	r1, #:lower16:79180	@ tmp302,
	movw	r3, #:lower16:g_event_report	@ tmp303,
	movt	r1, #:upper16:79180	@ tmp302,
	movt	r3, #:upper16:g_event_report	@ tmp303,
	str	ip, [r4, r1]	@, <variable>.CodecInfo.StreamIntegrality
	ldr	ip, [r3, #0]	@ g_event_report.2439, g_event_report
	cmp	ip, #0	@ g_event_report.2439,
	beq	.L672	@,
	movw	lr, #:lower16:114672	@ tmp304,
	movt	lr, #:upper16:114672	@ tmp304,
	mov	r2, #0	@,
	mov	r1, #113	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r3, r2	@,
	blx	ip	@ g_event_report.2439
.L672:
	movw	r3, #:lower16:114672	@ tmp306,
	movt	r3, #:upper16:114672	@ tmp306,
	add	r2, r4, #78848	@, pCtx,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	add	r1, r2, #284	@,,
	bl	MP2_ClearCurPacket	@
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC65	@,
	mov	r2, #440	@,
	movt	r1, #:upper16:.LC65	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ prephitmp.2409,
	b	.L658	@
.L693:
	movw	r2, #:lower16:79180	@ tmp233,
	movt	r2, #:upper16:79180	@ tmp233,
	ldr	r1, [r4, r2]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	tst	r1, #4194304	@ <variable>.CodecInfo.StreamIntegrality,
	beq	.L659	@,
	orr	r0, r1, #8388608	@ tmp242, <variable>.CodecInfo.StreamIntegrality,
	mov	r1, #114688	@ tmp236,
	str	r0, [r4, r2]	@ tmp242, <variable>.CodecInfo.StreamIntegrality
	mov	lr, #0	@ tmp244,
	mov	r0, r4	@, pCtx
	strb	r7, [r4, r1]	@ <variable>.CodecInfo.HDRState, <variable>.IsWaitToDecFlag
	str	lr, [r4, r3]	@ tmp244, <variable>.CodecInfo.HDRState
	bl	MP2_ProtocolPPSCheck	@
	mov	r0, r7	@ prephitmp.2409, <variable>.CodecInfo.HDRState
	b	.L658	@
.L691:
	mov	lr, r5	@, pBs
	sub	ip, fp, #108	@,,
	ldmia	lr!, {r0, r1, r2, r3}	@,,,,
	str	ip, [fp, #-136]	@, %sfp
	str	lr, [fp, #-120]	@, %sfp
	sub	lr, fp, #76	@,,
	str	lr, [fp, #-128]	@, %sfp
	ldr	lr, [fp, #-136]	@ tmp381, %sfp
	stmia	lr!, {r0, r1, r2, r3}	@ tmp381,,,,
	ldr	ip, [fp, #-120]	@, %sfp
	ldmia	ip, {r0, r1, r2, r3}	@,,,,
	stmia	lr, {r0, r1, r2, r3}	@ tmp381,,,,
	ldr	ip, [fp, #-136]	@ tmp382, %sfp
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp382,,,,
	ldr	ip, [fp, #-128]	@ tmp383, %sfp
	stmia	ip!, {r0, r1, r2, r3}	@ tmp383,,,,
	ldmia	lr, {r0, r1, r2, r3}	@ tmp381,,,,
	stmia	ip, {r0, r1, r2, r3}	@ tmp383,,,,
	mov	r1, #32	@,
	sub	r0, fp, #76	@,,
	bl	BsGet	@
	mov	r1, #32	@,
	mov	ip, r0	@ D.38740,
	sub	r0, fp, #76	@,,
	str	ip, [fp, #-124]	@,
	bl	BsGet	@
	ldr	r1, [fp, #-124]	@,
	movw	r2, #:lower16:1128615492	@ tmp187,
	movw	r3, #:lower16:1213419593	@ tmp190,
	movt	r2, #:upper16:1128615492	@ tmp187,
	movt	r3, #:upper16:1213419593	@ tmp190,
	cmp	r0, r2	@, tmp187
	cmpeq	r1, r3	@, D.38740, tmp190
	bne	.L656	@,
	movw	r3, #:lower16:79236	@ tmp195,
	movt	r3, #:upper16:79236	@ tmp195,
	ldr	r6, [r4, r3]	@ <variable>.CodecInfo.HDRState, <variable>.CodecInfo.HDRState
	cmp	r6, #1	@ <variable>.CodecInfo.HDRState,
	beq	.L701	@,
.L657:
	movw	r3, #:lower16:114690	@ tmp212,
	movt	r3, #:upper16:114690	@ tmp212,
	mov	r2, #1	@ tmp213,
	mov	r0, #0	@ prephitmp.2409,
	strb	r2, [r4, r3]	@ tmp213, <variable>.IsStreamEndFlag
	b	.L658	@
.L661:
	movw	r0, #:lower16:79128	@ tmp311,
	movw	ip, #:lower16:79232	@ tmp312,
	movt	r0, #:upper16:79128	@ tmp311,
	movt	ip, #:upper16:79232	@ tmp312,
	ldr	r6, [r4, r0]	@ <variable>.CodecInfo.BsOffset, <variable>.CodecInfo.BsOffset
	mov	r0, r5	@, pBs
	ldr	r1, [r4, ip]	@ <variable>.CodecInfo.Used_byte, <variable>.CodecInfo.Used_byte
	add	r6, r6, r1	@ temp.2446, <variable>.CodecInfo.BsOffset, <variable>.CodecInfo.Used_byte
	bl	BsPos	@
	movw	r1, #:lower16:.LC66	@,
	movt	r1, #:upper16:.LC66	@,
	add	r2, r6, r0, lsr #3	@, tmp317, temp.2446,,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	picture_header	@
	mov	r0, r5	@, pBs
	bl	BsResidBits	@
	cmp	r0, #0	@,
	bge	.L679	@,
	ldr	r3, [fp, #-116]	@, %sfp
	movw	r2, #:lower16:79180	@ tmp318,
	movw	lr, #:lower16:g_event_report	@ tmp319,
	movt	r2, #:upper16:79180	@ tmp318,
	movt	lr, #:upper16:g_event_report	@ tmp319,
	str	r3, [r4, r2]	@, <variable>.CodecInfo.StreamIntegrality
	ldr	ip, [lr, #0]	@ g_event_report.2447, g_event_report
	cmp	ip, #0	@ g_event_report.2447,
	beq	.L673	@,
	movw	lr, #:lower16:114672	@ tmp320,
	movt	lr, #:upper16:114672	@ tmp320,
	mov	r2, #0	@,
	mov	r1, #113	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r3, r2	@,
	blx	ip	@ g_event_report.2447
.L673:
	movw	ip, #:lower16:114672	@ tmp322,
	movt	ip, #:upper16:114672	@ tmp322,
	add	r1, r4, #78848	@, pCtx,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	add	r1, r1, #284	@,,
	bl	MP2_ClearCurPacket	@
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC67	@,
	mov	r2, #256	@,
	movt	r1, #:upper16:.LC67	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ prephitmp.2409,
	b	.L658	@
.L665:
	movw	lr, #:lower16:79128	@ tmp342,
	movw	r6, #:lower16:79232	@ tmp343,
	movt	lr, #:upper16:79128	@ tmp342,
	movt	r6, #:upper16:79232	@ tmp343,
	mov	r0, r5	@, pBs
	ldr	ip, [r4, lr]	@ <variable>.CodecInfo.BsOffset, <variable>.CodecInfo.BsOffset
	ldr	r3, [r4, r6]	@ <variable>.CodecInfo.Used_byte, <variable>.CodecInfo.Used_byte
	add	r6, ip, r3	@ temp.2462, <variable>.CodecInfo.BsOffset, <variable>.CodecInfo.Used_byte
	bl	BsPos	@
	movw	r1, #:lower16:.LC71	@,
	movt	r1, #:upper16:.LC71	@,
	add	r2, r6, r0, lsr #3	@, tmp348, temp.2462,,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	extension	@
	mov	r0, r5	@, pBs
	bl	BsResidBits	@
	cmp	r0, #0	@,
	bge	.L679	@,
	ldr	r1, [fp, #-116]	@, %sfp
	movw	r2, #:lower16:79180	@ tmp349,
	movw	r0, #:lower16:g_event_report	@ tmp350,
	movt	r2, #:upper16:79180	@ tmp349,
	movt	r0, #:upper16:g_event_report	@ tmp350,
	str	r1, [r4, r2]	@, <variable>.CodecInfo.StreamIntegrality
	ldr	ip, [r0, #0]	@ g_event_report.2463, g_event_report
	cmp	ip, #0	@ g_event_report.2463,
	beq	.L676	@,
	movw	r3, #:lower16:114672	@ tmp351,
	movt	r3, #:upper16:114672	@ tmp351,
	mov	r2, #0	@,
	mov	r1, #113	@,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r3, r2	@,
	blx	ip	@ g_event_report.2463
.L676:
	movw	lr, #:lower16:114672	@ tmp353,
	movt	lr, #:upper16:114672	@ tmp353,
	add	ip, r4, #78848	@, pCtx,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	add	r1, ip, #284	@,,
	bl	MP2_ClearCurPacket	@
.L687:
	mvn	r0, #0	@ prephitmp.2409,
	b	.L658	@
.L670:
	ldr	r2, [fp, #-112]	@, %sfp
	ldrb	r0, [r2, #0]	@ zero_extendqisi2	@ <variable>.valid_flag, <variable>.valid_flag
	cmp	r0, #1	@ <variable>.valid_flag,
	beq	.L702	@,
.L677:
	movw	r3, #:lower16:g_event_report	@ tmp375,
	movt	r3, #:upper16:g_event_report	@ tmp375,
	ldr	ip, [r3, #0]	@ g_event_report.2469, g_event_report
	cmp	ip, #0	@ g_event_report.2469,
	beq	.L679	@,
.L688:
	movw	lr, #:lower16:114672	@ tmp376,
	movt	lr, #:upper16:114672	@ tmp376,
	mov	r2, #0	@,
	mov	r1, #113	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r3, r2	@,
	blx	ip	@ g_event_report.2469
	mov	r0, #0	@ prephitmp.2409,
	b	.L658	@
.L701:
	ldr	r2, [r4, r7]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	tst	r2, #4194304	@ <variable>.CodecInfo.StreamIntegrality,
	beq	.L657	@,
	movw	r1, #:lower16:114690	@ tmp200,
	movt	r1, #:upper16:114690	@ tmp200,
	orr	r0, r2, #8388608	@ tmp209, <variable>.CodecInfo.StreamIntegrality,
	str	r8, [r4, r3]	@ tmp174, <variable>.CodecInfo.HDRState
	str	r0, [r4, r7]	@ tmp209, <variable>.CodecInfo.StreamIntegrality
	mov	r0, r4	@, pCtx
	strb	r6, [r4, r1]	@ <variable>.CodecInfo.HDRState, <variable>.IsStreamEndFlag
	strb	r6, [r4, sl]	@ <variable>.CodecInfo.HDRState, <variable>.IsWaitToDecFlag
	bl	MP2_ProtocolPPSCheck	@
	mov	r0, r6	@ prephitmp.2409, <variable>.CodecInfo.HDRState
	b	.L658	@
.L700:
	mov	r0, r4	@, pCtx
	bl	MP2_GetSequenceInfo	@
	movw	r0, #:lower16:79228	@ tmp361,
	movt	r0, #:upper16:79228	@ tmp361,
	ldr	ip, [r4, r0]	@ <variable>.CodecInfo.Imgbuf_allocated, <variable>.CodecInfo.Imgbuf_allocated
	cmp	ip, #0	@ <variable>.CodecInfo.Imgbuf_allocated,
	beq	.L679	@,
	movw	r2, #:lower16:114689	@ tmp363,
	movt	r2, #:upper16:114689	@ tmp363,
	ldrb	lr, [r4, r2]	@ zero_extendqisi2	@ <variable>.IsWaitToReRange, <variable>.IsWaitToReRange
	cmp	lr, #1	@ <variable>.IsWaitToReRange,
	bne	.L678	@,
	b	.L679	@
.L702:
	mov	r1, r2	@,
	mov	r0, r9	@, pSyntaxInfNew
	mov	r2, #188	@,
	bl	memcpy	@
	ldr	r1, [r4, r5]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	movw	r3, #:lower16:g_event_report	@ tmp289,
	movt	r3, #:upper16:g_event_report	@ tmp289,
	bic	ip, r1, #7	@ tmp288, <variable>.CodecInfo.StreamIntegrality,
	str	ip, [r4, r5]	@ tmp288, <variable>.CodecInfo.StreamIntegrality
	ldr	ip, [r3, #0]	@ g_event_report.2431, g_event_report
	cmp	ip, #0	@ g_event_report.2431,
	bne	.L688	@,
	b	.L679	@
.L698:
	movw	r5, #:lower16:114672	@ tmp334,
	movt	r5, #:upper16:114672	@ tmp334,
	add	r1, r4, #78848	@, pCtx,
	add	r1, r1, #284	@,,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	MP2_ClearCurPacket	@
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC69	@,
	movt	r1, #:upper16:.LC69	@,
	bl	dprint_vfmw	@
	movw	r2, #:lower16:g_event_report	@ tmp339,
	movt	r2, #:upper16:g_event_report	@ tmp339,
	ldr	ip, [r2, #0]	@ g_event_report.2457, g_event_report
	cmp	ip, #0	@ g_event_report.2457,
	beq	.L687	@,
	mov	r2, r6	@, D.38826
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r1, #113	@,
	mov	r3, r6	@, tmp2
	blx	ip	@ g_event_report.2457
	mvn	r0, #0	@ prephitmp.2409,
	b	.L658	@
.L697:
	ldr	ip, [fp, #-116]	@, %sfp
	movw	r2, #:lower16:79180	@ tmp258,
	movw	r3, #:lower16:g_event_report	@ tmp259,
	movt	r2, #:upper16:79180	@ tmp258,
	movt	r3, #:upper16:g_event_report	@ tmp259,
	str	ip, [r4, r2]	@, <variable>.CodecInfo.StreamIntegrality
	ldr	ip, [r3, #0]	@ g_event_report.445, g_event_report
	cmp	ip, #0	@ g_event_report.445,
	beq	.L669	@,
	movw	lr, #:lower16:114672	@ tmp260,
	movt	lr, #:upper16:114672	@ tmp260,
	mov	r2, #0	@,
	mov	r1, #113	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r3, r2	@,
	blx	ip	@ g_event_report.445
.L669:
	movw	r3, #:lower16:114672	@ tmp262,
	movt	r3, #:upper16:114672	@ tmp262,
	add	r1, r4, #78848	@, pCtx,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	add	r1, r1, #284	@,,
	bl	MP2_ClearCurPacket	@
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC63	@,
	movw	r2, #435	@,
	movt	r1, #:upper16:.LC63	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ prephitmp.2409,
	b	.L658	@
	.fnend
	.size	MP2_GetHDR, .-MP2_GetHDR
	.align	2
	.global	MPEG2DEC_Decode
	.type	MPEG2DEC_Decode, %function
MPEG2DEC_Decode:
	.fnstart
.LFB1563:
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
	add	r2, r0, #79872	@ D.40490, pCtx,
	add	r4, r2, #96	@ D.40490, D.40490,
	mov	r5, r0	@ pCtx, pCtx
	mov	r2, #160	@,
	mov	r0, r4	@, D.40490
	bl	memcpy	@
	movw	r3, #:lower16:114672	@ tmp155,
	movt	r3, #:upper16:114672	@ tmp155,
	add	r0, r5, #45312	@, pCtx,
	add	r0, r0, #16	@,,
	mov	r1, r4	@, D.40490
	ldr	r2, [r5, r3]	@, <variable>.ChanID
	bl	MP2_ReceivePacket	@
	cmp	r0, #1	@,
	beq	.L704	@,
	movw	r1, #:lower16:.LC73	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC73	@,
	mov	r4, #0	@ ret,
	bl	dprint_vfmw	@
.L705:
	mov	r0, r4	@, ret
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L704:
	movw	r3, #:lower16:79136	@ tmp160,
	movw	ip, #:lower16:79152	@ tmp162,
	movt	r3, #:upper16:79136	@ tmp160,
	movt	ip, #:upper16:79152	@ tmp162,
	add	lr, r5, #78848	@, pCtx,
	ldr	r1, [r5, r3]	@, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	add	r0, lr, #576	@,,
	ldr	r2, [r5, ip]	@, <variable>.CodecInfo.stMp2Packet.BsLength
	bl	BsInit	@
	ldr	r3, [r5, #0]	@ D.40502, <variable>.pstExtraData
	ldr	r1, [r3, #864]	@ <variable>.stChanOption.u32DynamicFrameStoreAllocEn, <variable>.stChanOption.u32DynamicFrameStoreAllocEn
	cmp	r1, #1	@ <variable>.stChanOption.u32DynamicFrameStoreAllocEn,
	beq	.L719	@,
.L706:
	movw	r3, #:lower16:79180	@ tmp170,
	movt	r3, #:upper16:79180	@ tmp170,
	movw	lr, #:lower16:79364	@ tmp169,
	movt	lr, #:upper16:79364	@ tmp169,
	ldr	ip, [r5, r3]	@ <variable>.CodecInfo.StreamIntegrality,
	str	ip, [r5, lr]	@ <variable>.CodecInfo.StreamIntegrality,
.L707:
	mov	r0, r5	@, pCtx
	bl	MP2_GetHDR	@
	add	r4, r0, #1	@ tmp172,,
	cmp	r4, #1	@ tmp172,
	bls	.L720	@,
	mov	r0, r5	@, pCtx
	bl	MP2_DecodingDecide	@
	subs	r4, r0, #0	@ ret,
	beq	.L721	@,
	cmn	r4, #1	@ ret,
	beq	.L710	@,
	mov	r0, r5	@, pCtx
	bl	MP2_GetPictureInfo	@
	subs	r6, r0, #0	@ D.40531,
	bne	.L714	@,
	movw	r4, #:lower16:114672	@ tmp189,
	movt	r4, #:upper16:114672	@ tmp189,
	add	ip, r5, #78848	@, pCtx,
	add	r1, ip, #284	@,,
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	bl	MP2_ClearCurPacket	@
	mov	r0, r5	@, pCtx
	bl	MP2_ClearCurPic	@
	movw	r2, #:lower16:g_event_report	@ tmp193,
	movt	r2, #:upper16:g_event_report	@ tmp193,
	ldr	ip, [r2, #0]	@ g_event_report.2504, g_event_report
	cmp	ip, #0	@ g_event_report.2504,
	beq	.L715	@,
	mov	r2, r6	@, D.40531
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	mov	r1, #113	@,
	mov	r3, r6	@, tmp2
	blx	ip	@ g_event_report.2504
.L715:
	movw	r1, #:lower16:.LC75	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC75	@,
	mov	r4, #0	@ ret,
	bl	dprint_vfmw	@
	b	.L705	@
.L720:
	ldr	r3, [r5, #0]	@ temp.2495, <variable>.pstExtraData
	ldr	r0, [r3, #864]	@ <variable>.stChanOption.u32DynamicFrameStoreAllocEn, <variable>.stChanOption.u32DynamicFrameStoreAllocEn
	cmp	r0, #1	@ <variable>.stChanOption.u32DynamicFrameStoreAllocEn,
	beq	.L722	@,
.L709:
	movw	ip, #:lower16:114689	@ tmp175,
	movt	ip, #:upper16:114689	@ tmp175,
	ldrb	r2, [r5, ip]	@ zero_extendqisi2	@ <variable>.IsWaitToReRange, <variable>.IsWaitToReRange
	cmp	r2, #1	@ <variable>.IsWaitToReRange,
	beq	.L710	@,
	movw	r3, #:lower16:114672	@ tmp177,
	movt	r3, #:upper16:114672	@ tmp177,
	add	lr, r5, #78848	@, pCtx,
	mov	r4, #0	@ ret,
	ldr	r0, [r5, r3]	@, <variable>.ChanID
	add	r1, lr, #284	@,,
	bl	MP2_ClearCurPacket	@
	b	.L705	@
.L722:
	ldr	r1, [r3, #904]	@ <variable>.s32WaitFsFlag, <variable>.s32WaitFsFlag
	cmp	r1, #0	@ <variable>.s32WaitFsFlag,
	beq	.L709	@,
.L710:
	mov	r4, #0	@ ret,
	mov	r0, r4	@, ret
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L719:
	ldr	r4, [r3, #904]	@ <variable>.s32WaitFsFlag, <variable>.s32WaitFsFlag
	cmp	r4, #1	@ <variable>.s32WaitFsFlag,
	bne	.L706	@,
	movw	r2, #:lower16:79364	@ tmp167,
	movt	r2, #:upper16:79364	@ tmp167,
	movw	r1, #:lower16:79180	@ tmp166,
	movt	r1, #:upper16:79180	@ tmp166,
	ldr	r0, [r5, r2]	@ <variable>.CodecInfo.LastStreamIntegrality,
	str	r0, [r5, r1]	@ <variable>.CodecInfo.LastStreamIntegrality,
	b	.L707	@
.L721:
	movw	r6, #:lower16:114672	@ tmp181,
	movt	r6, #:upper16:114672	@ tmp181,
	add	r1, r5, #78848	@, pCtx,
	add	r1, r1, #284	@,,
	ldr	r0, [r5, r6]	@, <variable>.ChanID
	bl	MP2_ClearCurPacket	@
	mov	r0, r5	@, pCtx
	bl	MP2_ClearCurPic	@
	movw	r0, #:lower16:g_event_report	@ tmp185,
	movt	r0, #:upper16:g_event_report	@ tmp185,
	ldr	ip, [r0, #0]	@ g_event_report.502, g_event_report
	cmp	ip, #0	@ g_event_report.502,
	beq	.L712	@,
	ldr	r0, [r5, r6]	@, <variable>.ChanID
	mov	r1, #113	@,
	mov	r2, r4	@, ret
	mov	r3, r4	@, ret
	blx	ip	@ g_event_report.502
.L712:
	movw	r1, #:lower16:.LC74	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC74	@,
	bl	dprint_vfmw	@
	b	.L705	@
.L714:
	mov	r0, r5	@, pCtx
	bl	MP2_DecNewPic	@
	subs	r6, r0, #0	@ D.40537,
	beq	.L723	@,
	movw	lr, #:lower16:79128	@ tmp215,
	movt	lr, #:upper16:79128	@ tmp215,
	movw	ip, #:lower16:79232	@ tmp209,
	movw	r0, #:lower16:79152	@ tmp210,
	movt	ip, #:upper16:79232	@ tmp209,
	movt	r0, #:upper16:79152	@ tmp210,
	ldr	r4, [r5, lr]	@ <variable>.CodecInfo.BsOffset, <variable>.CodecInfo.BsOffset
	ldr	r3, [r5, ip]	@ <variable>.CodecInfo.Used_byte, <variable>.CodecInfo.Used_byte
	ldr	r1, [r5, r0]	@ <variable>.CodecInfo.stMp2Packet.BsLength, <variable>.CodecInfo.stMp2Packet.BsLength
	mov	r4, r4, asl #3	@ ret, <variable>.CodecInfo.BsOffset,
	add	r2, r1, r3	@ tmp214, <variable>.CodecInfo.stMp2Packet.BsLength, <variable>.CodecInfo.Used_byte
	str	r2, [r5, ip]	@ tmp214, <variable>.CodecInfo.Used_byte
	b	.L705	@
.L723:
	movw	r4, #:lower16:114672	@ tmp197,
	movw	lr, #:lower16:79264	@ tmp199,
	movt	r4, #:upper16:114672	@ tmp197,
	movt	lr, #:upper16:79264	@ tmp199,
	mov	r2, #1	@,
	ldr	r1, [r5, lr]	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	add	r0, r5, #78848	@, pCtx,
	add	r1, r0, #284	@,,
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	bl	MP2_ClearCurPacket	@
	mov	r0, r5	@, pCtx
	bl	MP2_ClearCurPic	@
	movw	r3, #:lower16:g_event_report	@ tmp205,
	movt	r3, #:upper16:g_event_report	@ tmp205,
	ldr	ip, [r3, #0]	@ g_event_report.2509, g_event_report
	cmp	ip, #0	@ g_event_report.2509,
	beq	.L717	@,
	mov	r2, r6	@, D.40537
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	mov	r1, #113	@,
	mov	r3, r6	@, tmp2
	blx	ip	@ g_event_report.2509
.L717:
	movw	r1, #:lower16:.LC76	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC76	@,
	mov	r4, #0	@ ret,
	bl	dprint_vfmw	@
	b	.L705	@
	.fnend
	.size	MPEG2DEC_Decode, .-MPEG2DEC_Decode
	.global	default_intra_quantizer_matrix
	.global	zigzag
	.global	g_tmpusd
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	C.452.39103, %object
	.size	C.452.39103, 128
C.452.39103:
	.word	0
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	10
	.word	12
	.word	14
	.word	16
	.word	18
	.word	20
	.word	22
	.word	24
	.word	28
	.word	32
	.word	36
	.word	40
	.word	44
	.word	48
	.word	52
	.word	56
	.word	64
	.word	72
	.word	80
	.word	88
	.word	96
	.word	104
	.word	112
	.type	CSWTCH.526, %object
	.size	CSWTCH.526, 12
CSWTCH.526:
	.word	5
	.word	1
	.word	2
	.type	tab_for_first_4bit, %object
	.size	tab_for_first_4bit, 128
tab_for_first_4bit:
	.word	8
	.word	4
	.word	9
	.word	5
	.word	5
	.word	4
	.word	4
	.word	4
	.word	3
	.word	3
	.word	3
	.word	3
	.word	2
	.word	3
	.word	2
	.word	3
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.type	tab_for_last_7bit, %object
	.size	tab_for_last_7bit, 832
tab_for_last_7bit:
	.word	33
	.word	11
	.word	32
	.word	11
	.word	31
	.word	11
	.word	30
	.word	11
	.word	29
	.word	11
	.word	28
	.word	11
	.word	27
	.word	11
	.word	26
	.word	11
	.word	25
	.word	11
	.word	24
	.word	11
	.word	23
	.word	11
	.word	22
	.word	11
	.word	21
	.word	10
	.word	21
	.word	10
	.word	20
	.word	10
	.word	20
	.word	10
	.word	19
	.word	10
	.word	19
	.word	10
	.word	18
	.word	10
	.word	18
	.word	10
	.word	17
	.word	10
	.word	17
	.word	10
	.word	16
	.word	10
	.word	16
	.word	10
	.word	15
	.word	8
	.word	15
	.word	8
	.word	15
	.word	8
	.word	15
	.word	8
	.word	15
	.word	8
	.word	15
	.word	8
	.word	15
	.word	8
	.word	15
	.word	8
	.word	14
	.word	8
	.word	14
	.word	8
	.word	14
	.word	8
	.word	14
	.word	8
	.word	14
	.word	8
	.word	14
	.word	8
	.word	14
	.word	8
	.word	14
	.word	8
	.word	13
	.word	8
	.word	13
	.word	8
	.word	13
	.word	8
	.word	13
	.word	8
	.word	13
	.word	8
	.word	13
	.word	8
	.word	13
	.word	8
	.word	13
	.word	8
	.word	12
	.word	8
	.word	12
	.word	8
	.word	12
	.word	8
	.word	12
	.word	8
	.word	12
	.word	8
	.word	12
	.word	8
	.word	12
	.word	8
	.word	12
	.word	8
	.word	11
	.word	8
	.word	11
	.word	8
	.word	11
	.word	8
	.word	11
	.word	8
	.word	11
	.word	8
	.word	11
	.word	8
	.word	11
	.word	8
	.word	11
	.word	8
	.word	10
	.word	8
	.word	10
	.word	8
	.word	10
	.word	8
	.word	10
	.word	8
	.word	10
	.word	8
	.word	10
	.word	8
	.word	10
	.word	8
	.word	10
	.word	8
	.word	9
	.word	7
	.word	9
	.word	7
	.word	9
	.word	7
	.word	9
	.word	7
	.word	9
	.word	7
	.word	9
	.word	7
	.word	9
	.word	7
	.word	9
	.word	7
	.word	9
	.word	7
	.word	9
	.word	7
	.word	9
	.word	7
	.word	9
	.word	7
	.word	9
	.word	7
	.word	9
	.word	7
	.word	9
	.word	7
	.word	9
	.word	7
	.word	8
	.word	7
	.word	8
	.word	7
	.word	8
	.word	7
	.word	8
	.word	7
	.word	8
	.word	7
	.word	8
	.word	7
	.word	8
	.word	7
	.word	8
	.word	7
	.word	8
	.word	7
	.word	8
	.word	7
	.word	8
	.word	7
	.word	8
	.word	7
	.word	8
	.word	7
	.word	8
	.word	7
	.word	8
	.word	7
	.word	8
	.word	7
	.type	frame_rate_Table, %object
	.size	frame_rate_Table, 64
frame_rate_Table:
	.word	0
	.word	24551
	.word	24576
	.word	25600
	.word	30689
	.word	30720
	.word	51200
	.word	61378
	.word	61440
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.type	__func__.38914, %object
	.size	__func__.38914, 19
__func__.38914:
	.ascii	"MP2_DecodingDecide\000"
	.data
	.align	2
.LANCHOR1 = . + 0
	.type	zigzag, %object
	.size	zigzag, 64
zigzag:
	.byte	0
	.byte	1
	.byte	8
	.byte	16
	.byte	9
	.byte	2
	.byte	3
	.byte	10
	.byte	17
	.byte	24
	.byte	32
	.byte	25
	.byte	18
	.byte	11
	.byte	4
	.byte	5
	.byte	12
	.byte	19
	.byte	26
	.byte	33
	.byte	40
	.byte	48
	.byte	41
	.byte	34
	.byte	27
	.byte	20
	.byte	13
	.byte	6
	.byte	7
	.byte	14
	.byte	21
	.byte	28
	.byte	35
	.byte	42
	.byte	49
	.byte	56
	.byte	57
	.byte	50
	.byte	43
	.byte	36
	.byte	29
	.byte	22
	.byte	15
	.byte	23
	.byte	30
	.byte	37
	.byte	44
	.byte	51
	.byte	58
	.byte	59
	.byte	52
	.byte	45
	.byte	38
	.byte	31
	.byte	39
	.byte	46
	.byte	53
	.byte	60
	.byte	61
	.byte	54
	.byte	47
	.byte	55
	.byte	62
	.byte	63
	.type	default_intra_quantizer_matrix, %object
	.size	default_intra_quantizer_matrix, 64
default_intra_quantizer_matrix:
	.byte	8
	.byte	16
	.byte	19
	.byte	22
	.byte	26
	.byte	27
	.byte	29
	.byte	34
	.byte	16
	.byte	16
	.byte	22
	.byte	24
	.byte	27
	.byte	29
	.byte	34
	.byte	37
	.byte	19
	.byte	22
	.byte	26
	.byte	27
	.byte	29
	.byte	34
	.byte	34
	.byte	38
	.byte	22
	.byte	22
	.byte	26
	.byte	27
	.byte	29
	.byte	34
	.byte	37
	.byte	40
	.byte	22
	.byte	26
	.byte	27
	.byte	29
	.byte	32
	.byte	35
	.byte	40
	.byte	48
	.byte	26
	.byte	27
	.byte	29
	.byte	32
	.byte	35
	.byte	40
	.byte	48
	.byte	58
	.byte	26
	.byte	27
	.byte	29
	.byte	34
	.byte	38
	.byte	46
	.byte	56
	.byte	69
	.byte	27
	.byte	29
	.byte	35
	.byte	38
	.byte	46
	.byte	56
	.byte	69
	.byte	83
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Decoding quits at frm %d\012\000"
	.space	2
.LC1:
	.ascii	"%-40s%20d\012\000"
	.space	1
.LC2:
	.ascii	"macroblock_address_increment\000"
	.space	3
.LC3:
	.ascii	"macroblock_escape ERROR\012\000"
	.space	3
.LC4:
	.ascii	"macroblock_escape\000"
	.space	2
.LC5:
	.ascii	"SlcStartMbNum = %d > PicEndMum = %d\012\000"
	.space	3
.LC6:
	.ascii	"FirstMbInSliceFlag = %d\012\000"
	.space	3
.LC7:
	.ascii	"slice_vertical_position\000"
.LC8:
	.ascii	"quantiser_scale_code\000"
	.space	3
.LC9:
	.ascii	"intra_slice_flag\000"
	.space	3
.LC10:
	.ascii	"intra_slice\000"
.LC11:
	.ascii	"reserved_bits\000"
	.space	2
.LC12:
	.ascii	"extra_bit_slice\000"
.LC13:
	.ascii	"extra_infrmation_slice\000"
	.space	1
.LC14:
	.ascii	"Slice num = %d >= %d\012\000"
	.space	2
.LC15:
	.ascii	"seg info is wrong! IsLastSeg[0] = %d, IsLastSeg[1] "
	.ascii	"= %d\012\000"
	.space	3
.LC16:
	.ascii	"MP2_GetFirstMbInSlice Failed!\012\000"
	.space	1
.LC17:
	.ascii	"MP2_WriteSliceInfo Failed!\012\000"
.LC18:
	.ascii	"ERROR: frm %d, Invalid packet pointer!\012\000"
.LC19:
	.ascii	"line %d, pPacket->StreamPack[1].IsLastSeg = %d\012\000"
.LC20:
	.ascii	"-1 == VCTRL_GetChanIDByCtx() Err! \012\000"
.LC21:
	.ascii	"ERROR: unsupported profile %d\012\000"
	.space	1
.LC22:
	.ascii	"ERROR: unsupported level %d\012\000"
	.space	3
.LC23:
	.ascii	"\012mpeg2 copy last 3 bytes of the first packet!\012"
	.ascii	"\012\000"
.LC24:
	.ascii	"pMp2CodecInfo->pUsrDatArray[%d] is null\012\000"
	.space	3
.LC25:
	.ascii	"get frame store fail!\012\000"
	.space	1
.LC26:
	.ascii	"line: %d, pImage is NULL!\012\000"
	.space	1
.LC27:
	.ascii	"get image buffer ok: LogicFsID = %d\012\000"
	.space	3
.LC28:
	.ascii	"decode %p, disp %p, tf %p\012\000"
	.space	1
.LC29:
	.ascii	"ErrRatio = %d\012\000"
	.space	1
.LC30:
	.ascii	"pImg is null, pCurImg %#x pBwdImg %#x pFwdImg %#x\012"
	.ascii	"\000"
	.space	1
.LC31:
	.ascii	"DEBUG: DEC over\012\000"
	.space	3
.LC32:
	.ascii	"insert buf %d ref %d\012\000"
	.space	2
.LC33:
	.ascii	"err(%d) > out_thr(%d)\012\000"
	.space	1
.LC34:
	.ascii	"ERROR: frm %d, lost one field\012\000"
	.space	1
.LC35:
	.ascii	"ERROR: frm %d, lost one field flg = %d, last_struct"
	.ascii	" = %d\012\000"
	.space	2
.LC36:
	.ascii	"Fatal Error: frm%d, get image buffer failed\012\000"
	.space	3
.LC37:
	.ascii	"dec_pts: %lld Usertag: %lld\012\000"
	.space	3
.LC38:
	.ascii	"---------- unref %d\012\000"
	.space	3
.LC39:
	.ascii	"++++++++++ ref %d\012\000"
	.space	1
.LC40:
	.ascii	"line: %d(pCur, pFwd, pBwd)(%p, %p, %p)\012\000"
.LC41:
	.ascii	"CurFsID(fwd%d,%d,bwd%d) abnormal!(%p,%p,%p)\012\000"
	.space	3
.LC42:
	.ascii	"dec addr: cur,cur2d,fwd,bwd,pmv = %p,%p,%p,%p,%p\012"
	.ascii	"\000"
	.space	2
.LC43:
	.ascii	"ERROR: frm %d, integrality: %#x\012\000"
	.space	3
.LC44:
	.ascii	"ERROR: frm %d, No Img buffer is allocated\012\000"
	.space	1
.LC45:
	.ascii	"----------------- mp2 Imode -> %d -----------------"
	.ascii	"-\012\000"
	.space	2
.LC46:
	.ascii	"frm %d pic type %d struct is %d total pos %#x\012\000"
	.space	1
.LC47:
	.ascii	"NOTE: Drop non-I, cur is B\012\000"
.LC48:
	.ascii	"NOTE: Drop non-I, cur is P\012\000"
.LC49:
	.ascii	"NOTE: Drop non-I\012\000"
	.space	2
.LC50:
	.ascii	"NOTE: Drop B\012\000"
	.space	2
.LC51:
	.ascii	"%s %d pFwdImg = NULL,  pBwdImg = NULL!!\012\000"
	.space	3
.LC52:
	.ascii	"dec P frame, fwd ref err(%d) > ref_thr(%d)\012\000"
.LC53:
	.ascii	"dec B frame, bwd ref err(%d) > ref_thr(%d)\012\000"
.LC54:
	.ascii	"dec B frame, fwd ref err(%d) > ref_thr(%d)\012\000"
.LC55:
	.ascii	"image size abnormal(%dx%d)\012\000"
.LC56:
	.ascii	"mp2 actual frame size(%dx%d) exeed max config(%dx%d"
	.ascii	")\012\000"
	.space	2
.LC57:
	.ascii	"partition fs memory fail!\012\000"
	.space	1
.LC58:
	.ascii	"FSP_ConfigInstance fail!\012\000"
	.space	2
.LC59:
	.ascii	"Protocol %d\012\000"
	.space	3
.LC60:
	.ascii	"seq size change, call vpss to release all frames.\012"
	.ascii	"\000"
	.space	1
.LC61:
	.ascii	"new seq size %dx%d\012\000"
.LC62:
	.ascii	"found sh %#x\012\000"
	.space	2
.LC63:
	.ascii	"SEQUENCE_HEADER_CODE Bitstream is not enough!\012\000"
	.space	1
.LC64:
	.ascii	"found gh %#x\012\000"
	.space	2
.LC65:
	.ascii	"GROUP_START_CODE Bitstream is not enough!\012\000"
	.space	1
.LC66:
	.ascii	"found ph %#x\012\000"
	.space	2
.LC67:
	.ascii	"PICTURE_START_CODE Bitstream is not enough!\012\000"
	.space	3
.LC68:
	.ascii	"found ud %#x\012\000"
	.space	2
.LC69:
	.ascii	"get usd err\012\000"
	.space	3
.LC70:
	.ascii	"cann't get ud pointer\012\000"
	.space	1
.LC71:
	.ascii	"found ext %#x\012\000"
	.space	1
.LC72:
	.ascii	"MP2_DecSlice is wrong!\012\000"
.LC73:
	.ascii	"line %d, MP2_ReceivePacket receive packet failed!\012"
	.ascii	"\000"
	.space	1
.LC74:
	.ascii	"MP2 Decode Decide is wrong!\012\000"
	.space	3
.LC75:
	.ascii	"MP2 get picture info is wrong!\012\000"
.LC76:
	.ascii	"MP2 dec new pic failed!\012\000"
	.bss
	.align	2
.LANCHOR2 = . + 0
	.type	g_tmpusd, %object
	.size	g_tmpusd, 1024
g_tmpusd:
	.space	1024
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
