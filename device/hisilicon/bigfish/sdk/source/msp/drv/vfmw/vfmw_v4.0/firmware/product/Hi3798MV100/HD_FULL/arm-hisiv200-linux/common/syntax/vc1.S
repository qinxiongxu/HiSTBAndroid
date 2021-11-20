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
	.file	"vc1.c"
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
@ -DKBUILD_BASENAME=KBUILD_STR(vc1) -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD drivers/msp/vfmw/vfmw_v4.0/firmware/common/syntax/.vc1.o.d
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/drivers/msp/vfmw/vfmw_v4.0/firmware/common/syntax/vc1.c
@ -mlittle-endian -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -marm -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/common/syntax/vc1.o -O2 -Wall -Wundef
@ -Wstrict-prototypes -Wno-trigraphs -Werror-implicit-function-declaration
@ -Wno-format-security -Wframe-larger-than=1024
@ -Wdeclaration-after-statement -Wno-pointer-sign -p -fno-strict-aliasing
@ -fno-common -fno-delete-null-pointer-checks -fno-dwarf2-cfi-asm
@ -funwind-tables -fno-stack-protector -fno-omit-frame-pointer
@ -fno-optimize-sibling-calls -fno-strict-overflow -fconserve-stack
@ -fno-pic -fverbose-asm
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
	.global	emp_print
	.type	emp_print, %function
emp_print:
	.fnstart
.LFB1528:
	@ args = 4, pretend = 12, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 1
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r1, r2, r3}	@,
	.save {r1, r2, r3}
	stmfd	sp!, {r3, fp, ip, lr, pc}	@,
	.pad #4
	.save {r3, fp, ip, lr}
	.setfp fp, ip, #-16
	sub	fp, ip, #16	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r0, #0	@,
	sub	sp, fp, #16
	ldmfd	sp, {r3, fp, sp, pc}
	.fnend
	.size	emp_print, .-emp_print
	.align	2
	.global	AbandonBitsLenthNoUse
	.type	AbandonBitsLenthNoUse, %function
AbandonBitsLenthNoUse:
	.fnstart
.LFB1529:
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
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ data,* pCode
	cmp	r3, #0	@ data,
	moveq	r2, r3	@ biteat, data
	bne	.L14	@,
.L7:
	ldrb	r3, [r0, #-1]!	@ zero_extendqisi2	@ data,
	add	r2, r2, #8	@ biteat, biteat,
	cmp	r3, #0	@ data,
	beq	.L7	@,
	add	r0, r2, #1	@ prephitmp.637, biteat,
.L8:
	tst	r3, #1	@ data,
	ldmnefd	sp, {fp, sp, pc}	@
.L10:
	mov	r3, r3, lsr #1	@ data, data,
	add	r2, r2, #1	@ biteat, biteat,
	tst	r3, #1	@ data,
	beq	.L10	@,
	add	r0, r2, #1	@ prephitmp.637, biteat,
	ldmfd	sp, {fp, sp, pc}	@
.L14:
	mov	r0, #1	@ prephitmp.637,
	mov	r2, #0	@ biteat,
	b	.L8	@
	.fnend
	.size	AbandonBitsLenthNoUse, .-AbandonBitsLenthNoUse
	.align	2
	.global	VC1DEC_Destroy
	.type	VC1DEC_Destroy, %function
VC1DEC_Destroy:
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
	mov	r0, #1	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VC1DEC_Destroy, .-VC1DEC_Destroy
	.align	2
	.global	VC1_CfgVDH
	.type	VC1_CfgVDH, %function
VC1_CfgVDH:
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
	ldrb	r3, [r0, #3096]	@ zero_extendqisi2	@, <variable>.PreParseInfo.IsAdvProfile
	cmp	r3, #0	@ <variable>.PreParseInfo.IsAdvProfile,
	beq	.L18	@,
	movw	r4, #10748	@ tmp138,
	ldr	r2, [r0, r4]	@ <variable>.AdvPicSyntax.FCM, <variable>.AdvPicSyntax.FCM
	cmp	r2, #3	@ <variable>.AdvPicSyntax.FCM,
	beq	.L21	@,
.L18:
	movw	ip, #35680	@ tmp153,
	movw	r4, #:lower16:77988	@ tmp152,
	ldr	r2, [r0, ip]	@ <variable>.CurPicMbNum, <variable>.CurPicMbNum
	movt	r4, #:upper16:77988	@ tmp152,
	sub	r5, r2, #1	@ tmp155, <variable>.CurPicMbNum,
	str	r5, [r1, r4]	@ tmp155, <variable>.basic_cfg0
.L19:
	movw	r3, #23256	@ tmp157,
	movw	r2, #:lower16:78068	@ tmp166,
	ldr	ip, [r0, r3]	@ <variable>.DDR_Stride, <variable>.DDR_Stride
	movt	r2, #:upper16:78068	@ tmp166,
	movw	r3, #:lower16:77992	@ tmp156,
	movt	r3, #:upper16:77992	@ tmp156,
	add	r4, ip, #63	@ tmp161, <variable>.DDR_Stride,
	cmp	ip, #0	@ <variable>.DDR_Stride,
	ldr	r5, [r1, r2]	@ <variable>.Compress_en, <variable>.Compress_en
	movlt	ip, r4	@ <variable>.DDR_Stride, tmp161
	movw	r4, #1544	@ tmp175,
	mov	r2, ip, asr #6	@ tmp162, <variable>.DDR_Stride,
	and	r5, r5, #1	@ tmp167, <variable>.Compress_en,
	mov	ip, r2, asl #4	@ tmp163, tmp162,
	add	r2, ip, #536870913	@ tmp164, tmp163,
	add	ip, r2, #81920	@ tmp164, tmp164,
	orr	r2, ip, r5, asl #30	@, tmp170, tmp164, tmp167,
	movw	ip, #23288	@ tmp172,
	str	r2, [r1, r3]	@ tmp170, <variable>.basic_cfg1
	movw	r2, #23272	@ tmp194,
	ldr	r3, [r0, ip]	@ <variable>.RefList1.ImgObj, <variable>.RefList1.ImgObj
	ldr	ip, [r0, r2]	@ <variable>.RefList0.ImgObj, <variable>.RefList0.ImgObj
	movw	r2, #23216	@ tmp184,
	ldr	r2, [r0, r2]	@ <variable>.pCurFrm, <variable>.pCurFrm
	mla	r3, r4, r3, r0	@ tmp176, tmp175, <variable>.RefList1.ImgObj, pCodecInf
	mla	r0, r4, ip, r0	@ tmp198, tmp175, <variable>.RefList0.ImgObj, pCodecInf
	ldr	ip, [r2, #1180]	@ <variable>.img.is_fld_save, <variable>.img.is_fld_save
	add	r2, r3, #15104	@ tmp177, tmp176,
	add	r3, r2, #24	@ tmp177, tmp177,
	and	r2, ip, #3	@ tmp187, <variable>.img.is_fld_save,
	add	r0, r0, #15104	@ tmp199, tmp198,
	ldr	r3, [r3, #4]	@ <variable>.img.is_fld_save, <variable>.img.is_fld_save
	add	r0, r0, #24	@ tmp199, tmp199,
	mov	ip, r2, asl #4	@ tmp189, tmp187,
	and	r3, r3, #3	@ tmp180, <variable>.img.is_fld_save,
	ldr	r2, [r0, #4]	@ <variable>.img.is_fld_save, <variable>.img.is_fld_save
	mov	r0, #0	@ tmp207,
	strb	r0, [r1, #69]	@ tmp207, <variable>.ff_apt_en
	orr	r3, ip, r3, asl #2	@, tmp192, tmp189, tmp180,
	and	r2, r2, #3	@ tmp202, <variable>.img.is_fld_save,
	orr	r0, r3, r2	@ tmp205, tmp192, tmp202
	strb	r0, [r1, #68]	@ tmp205, <variable>.ref_pic_type
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L21:
	movw	r3, #35676	@ tmp141,
	movw	ip, #35672	@ tmp148,
	ldr	r4, [r0, r3]	@ <variable>.CurPicMbHeight, <variable>.CurPicMbHeight
	movw	r3, #:lower16:77988	@ tmp140,
	ldr	ip, [r0, ip]	@ <variable>.CurPicMbWidth, <variable>.CurPicMbWidth
	movt	r3, #:upper16:77988	@ tmp140,
	add	r2, r4, #1	@ tmp142, <variable>.CurPicMbHeight,
	add	r5, r2, r2, lsr #31	@, tmp146, tmp142, tmp142,
	mov	r4, r5, asr #1	@ tmp147, tmp146,
	mul	r2, ip, r4	@ tmp149, <variable>.CurPicMbWidth, tmp147
	sub	r5, r2, #1	@ tmp151, tmp149,
	str	r5, [r1, r3]	@ tmp151, <variable>.basic_cfg0
	b	.L19	@
	.fnend
	.size	VC1_CfgVDH, .-VC1_CfgVDH
	.align	2
	.global	VC1_Vfmw_GenerateDecPara
	.type	VC1_Vfmw_GenerateDecPara, %function
VC1_Vfmw_GenerateDecPara:
	.fnstart
.LFB1543:
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
	.size	VC1_Vfmw_GenerateDecPara, .-VC1_Vfmw_GenerateDecPara
	.align	2
	.type	VC1_Vfmw_GenerateIntensityMap, %function
VC1_Vfmw_GenerateIntensityMap:
	.fnstart
.LFB1551:
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
	cmp	r2, #31	@ LUMSHIFT,
	subgt	r2, r2, #64	@ LUMSHIFT, LUMSHIFT,
	cmp	r1, #0	@ LUMSCALE,
	addne	r1, r1, #32	@ iScale, LUMSCALE,
	rsbeq	r2, r2, r2, asl #25	@, tmp155, LUMSHIFT, LUMSHIFT,
	mvneq	r1, #63	@ iScale,
	movne	r2, r2, asl #6	@ iShift, LUMSHIFT,
	moveq	r2, r2, asl #7	@ tmp156, tmp155,
	addeq	r2, r2, #16320	@ iShift, tmp156,
	cmp	r3, #0	@ YcFlg,
	bne	.L28	@,
	add	r2, r2, #32	@ ivtmp.784, iShift,
.L29:
	add	ip, r2, r1	@ ivtmp.784, ivtmp.784, iScale
	mov	r5, r2, asr #6	@ j.798, ivtmp.784,
	add	r4, r3, #1	@ tmp166, i,
	bic	r5, r5, r5, asr #31	@ j.802, j.798
	mov	r2, ip, asr #6	@ j.798, ivtmp.784,
	cmp	r5, #255	@ j.802,
	movge	r5, #255	@ tmp157,
	bic	r2, r2, r2, asr #31	@ j.802, j.798
	strb	r5, [r0, r3]	@ tmp157,* i
	add	r3, r4, #1	@ i, tmp166,
	cmp	r2, #255	@ j.802,
	movge	r2, #255	@ tmp172,
	cmp	r3, #256	@ i,
	strb	r2, [r0, r4]	@ tmp172,
	add	r2, ip, r1	@ ivtmp.784, ivtmp.784, iScale
	bne	.L29	@,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L28:
	rsb	r2, r1, r1, asl #25	@, tmp161, iScale, iScale,
	mov	r3, #0	@ i.801,
	mov	ip, r2, asl #7	@ tmp162, tmp161,
	add	r4, ip, #8192	@ ivtmp.793, tmp162,
	add	r2, r4, #32	@ ivtmp.793, ivtmp.793,
.L31:
	add	ip, r2, r1	@ ivtmp.793, ivtmp.793, iScale
	mov	r5, r2, asr #6	@ j.799, ivtmp.793,
	add	r4, r3, #1	@ tmp167, i.801,
	bic	r5, r5, r5, asr #31	@ j.803, j.799
	mov	r2, ip, asr #6	@ j.799, ivtmp.793,
	cmp	r5, #255	@ j.803,
	movge	r5, #255	@ tmp164,
	bic	r2, r2, r2, asr #31	@ j.803, j.799
	strb	r5, [r0, r3]	@ tmp164,* i.801
	add	r3, r4, #1	@ i.801, tmp167,
	cmp	r2, #255	@ j.803,
	movge	r2, #255	@ tmp177,
	cmp	r3, #256	@ i.801,
	strb	r2, [r0, r4]	@ tmp177,
	add	r2, ip, r1	@ ivtmp.793, ivtmp.793, iScale
	bne	.L31	@,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	VC1_Vfmw_GenerateIntensityMap, .-VC1_Vfmw_GenerateIntensityMap
	.align	2
	.global	VC1_SetCurPicResolutionInfo
	.type	VC1_SetCurPicResolutionInfo, %function
VC1_SetCurPicResolutionInfo:
	.fnstart
.LFB1555:
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
	cmp	r1, #1	@ RESPIC,
	beq	.L40	@,
	cmp	r1, #2	@ RESPIC,
	beq	.L41	@,
	cmp	r1, #0	@ RESPIC,
	beq	.L46	@,
	movw	r2, #23232	@ tmp160,
	movw	r3, #23236	@ tmp168,
	ldr	ip, [r0, r2]	@ <variable>.MbWidth, <variable>.MbWidth
	ldr	r1, [r0, r3]	@ <variable>.MbHeight, <variable>.MbHeight
	add	r2, ip, #1	@ tmp161, <variable>.MbWidth,
	add	r3, r1, #1	@ tmp169, <variable>.MbHeight,
	add	ip, r2, r2, lsr #31	@, tmp164, tmp161, tmp161,
	add	r3, r3, r3, lsr #31	@, tmp172, tmp169, tmp169,
	mov	r2, ip, asr #1	@ prephitmp.817, tmp164,
.L45:
	movw	r1, #35672	@ tmp166,
	mov	ip, r3, asr #1	@ tmp173, tmp172,
	str	r2, [r0, r1]	@ prephitmp.817, <variable>.CurPicMbWidth
	movw	r1, #35676	@ tmp167,
	str	ip, [r0, r1]	@ tmp173, <variable>.CurPicMbHeight
.L42:
	movw	r1, #35672	@ tmp182,
	movw	r3, #35676	@ tmp177,
	ldr	ip, [r0, r1]	@ <variable>.CurPicMbWidth, <variable>.CurPicMbWidth
	movw	r1, #35664	@ tmp174,
	ldr	r3, [r0, r3]	@ <variable>.CurPicMbHeight, <variable>.CurPicMbHeight
	mov	r2, r2, asl #4	@ tmp175, prephitmp.817,
	str	r2, [r0, r1]	@ tmp175, <variable>.CurPicWidth
	movw	r2, #35680	@ tmp180,
	mov	r1, r3, asl #4	@ tmp179, <variable>.CurPicMbHeight,
	mul	r3, ip, r3	@ tmp185, <variable>.CurPicMbWidth, <variable>.CurPicMbHeight
	movw	ip, #35668	@ tmp176,
	str	r1, [r0, ip]	@ tmp179, <variable>.CurPicHeight
	str	r3, [r0, r2]	@ tmp185, <variable>.CurPicMbNum
	ldmfd	sp, {fp, sp, pc}	@
.L46:
	movw	r1, #23232	@ tmp136,
	movw	r3, #23236	@ tmp139,
	ldr	r2, [r0, r1]	@ prephitmp.817, <variable>.MbWidth
	movw	ip, #35672	@ tmp137,
	ldr	r1, [r0, r3]	@ <variable>.MbHeight, <variable>.MbHeight
	movw	r3, #35676	@ tmp138,
	str	r2, [r0, ip]	@ prephitmp.817, <variable>.CurPicMbWidth
	str	r1, [r0, r3]	@ <variable>.MbHeight, <variable>.CurPicMbHeight
	b	.L42	@
.L41:
	movw	r1, #23236	@ tmp154,
	movw	r2, #23232	@ tmp151,
	ldr	r3, [r0, r1]	@ <variable>.MbHeight, <variable>.MbHeight
	ldr	r2, [r0, r2]	@ prephitmp.817, <variable>.MbWidth
	add	ip, r3, #1	@ tmp155, <variable>.MbHeight,
	add	r3, ip, ip, lsr #31	@, tmp158, tmp155, tmp155,
	b	.L45	@
.L40:
	movw	r1, #23232	@ tmp141,
	movw	r3, #23236	@ tmp149,
	ldr	r2, [r0, r1]	@ <variable>.MbWidth, <variable>.MbWidth
	ldr	r1, [r0, r3]	@ <variable>.MbHeight, <variable>.MbHeight
	movw	r3, #35676	@ tmp148,
	add	ip, r2, #1	@ tmp142, <variable>.MbWidth,
	add	r2, ip, ip, lsr #31	@, tmp145, tmp142, tmp142,
	movw	ip, #35672	@ tmp147,
	str	r1, [r0, r3]	@ <variable>.MbHeight, <variable>.CurPicMbHeight
	mov	r2, r2, asr #1	@ prephitmp.817, tmp145,
	str	r2, [r0, ip]	@ prephitmp.817, <variable>.CurPicMbWidth
	b	.L42	@
	.fnend
	.size	VC1_SetCurPicResolutionInfo, .-VC1_SetCurPicResolutionInfo
	.align	2
	.global	VC1_Vfmw_UserData
	.type	VC1_Vfmw_UserData, %function
VC1_Vfmw_UserData:
	.fnstart
.LFB1585:
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
	.size	VC1_Vfmw_UserData, .-VC1_Vfmw_UserData
	.align	2
	.global	VC1_Vfmw_UpdateAdvSPS
	.type	VC1_Vfmw_UpdateAdvSPS, %function
VC1_Vfmw_UpdateAdvSPS:
	.fnstart
.LFB1587:
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
	mov	r4, r0	@ pCodecInf, pCodecInf
	movw	r0, #10594	@ tmp140,
	ldrh	r3, [r1, #238]	@ D.42131, <variable>.AdvEntSyntax.CODED_WIDTH
	ldrh	r2, [r4, r0]	@ <variable>.AdvEntSyntax.CODED_WIDTH, <variable>.AdvEntSyntax.CODED_WIDTH
	mov	r5, r1	@ pSyntax, pSyntax
	cmp	r2, r3	@ <variable>.AdvEntSyntax.CODED_WIDTH, D.42131
	moveq	r1, #0	@ Ret,
	beq	.L51	@,
	adds	r1, r3, #15	@ tmp143, D.42131,
	movw	r2, #23232	@ tmp142,
	addmi	ip, r3, #30	@, tmp144, D.42131,
	movpl	ip, r1	@, tmp144, tmp143
	movw	r3, #23248	@ tmp147,
	mov	r1, #1	@ Ret,
	mov	r0, ip, asr #4	@ tmp146, tmp144,
	str	r0, [r4, r2]	@ tmp146, <variable>.MbWidth
	ldrh	ip, [r5, #238]	@ <variable>.AdvEntSyntax.CODED_WIDTH, <variable>.AdvEntSyntax.CODED_WIDTH
	str	ip, [r4, r3]	@ <variable>.AdvEntSyntax.CODED_WIDTH, <variable>.DispPicWidth
.L51:
	movw	r0, #10596	@ tmp149,
	ldrh	r3, [r5, #240]	@ D.42139, <variable>.AdvEntSyntax.CODED_HEIGHT
	ldrh	r2, [r4, r0]	@ <variable>.AdvEntSyntax.CODED_HEIGHT, <variable>.AdvEntSyntax.CODED_HEIGHT
	cmp	r2, r3	@ <variable>.AdvEntSyntax.CODED_HEIGHT, D.42139
	beq	.L52	@,
	adds	r2, r3, #15	@ tmp152, D.42139,
	movw	ip, #23236	@ tmp151,
	addmi	r1, r3, #30	@, tmp153, D.42139,
	movpl	r1, r2	@, tmp153, tmp152
	movw	lr, #23252	@ tmp156,
	mov	r3, r1, asr #4	@ tmp155, tmp153,
	str	r3, [r4, ip]	@ tmp155, <variable>.MbHeight
	ldrh	r6, [r5, #240]	@ <variable>.AdvEntSyntax.CODED_HEIGHT, <variable>.AdvEntSyntax.CODED_HEIGHT
	str	r6, [r4, lr]	@ <variable>.AdvEntSyntax.CODED_HEIGHT, <variable>.DispPicHeight
.L53:
	add	r1, r5, #16	@, pSyntax,
	add	r0, r4, #10368	@, pCodecInf,
	add	r5, r5, #188	@ tmp165, pSyntax,
	mov	r2, #172	@,
	add	r0, r0, #4	@,,
	add	r6, r4, #10496	@ tmp164, pCodecInf,
	bl	memcpy	@
	ldmia	r5!, {r0, r1, r2, r3}	@ tmp167,,,,
	add	ip, r6, #48	@ tmp164, tmp164,
	mov	r4, #1	@ Ret.887,
	mov	r6, ip	@ tmp168, tmp164
	stmia	r6!, {r0, r1, r2, r3}	@ tmp168,,,,
	mov	ip, r6	@ tmp170, tmp168
	ldmia	r5!, {r0, r1, r2, r3}	@ tmp169,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp170,,,,
	ldmia	r5!, {r0, r1, r2, r3}	@ tmp171,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp170,,,,
	ldmia	r5, {r0, r1, r2}	@ tmp171,,,
	stmia	ip, {r0, r1, r2}	@ tmp172,,,
	mov	r0, r4	@, Ret.887
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L52:
	cmp	r1, #1	@ Ret,
	movne	r4, #0	@ Ret.887,
	beq	.L53	@,
	mov	r0, r4	@, Ret.887
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	VC1_Vfmw_UpdateAdvSPS, .-VC1_Vfmw_UpdateAdvSPS
	.align	2
	.global	VC1_Vfmw_UpdataLastPicRNDCTRL
	.type	VC1_Vfmw_UpdataLastPicRNDCTRL, %function
VC1_Vfmw_UpdataLastPicRNDCTRL:
	.fnstart
.LFB1590:
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
	ldrb	r3, [r0, #3096]	@ zero_extendqisi2	@, <variable>.PreParseInfo.IsAdvProfile
	cmp	r3, #0	@ <variable>.PreParseInfo.IsAdvProfile,
	bne	.L58	@,
	movw	r1, #10607	@ tmp143,
	ldrb	r3, [r0, r1]	@ zero_extendqisi2	@ D.42299, <variable>.SMPPicSyntax.PTYPE
	cmp	r3, #0	@ D.42299,
	cmpne	r3, #4	@, D.42299,
	moveq	r3, #1	@ prephitmp.904,
	moveq	r2, r3	@ prephitmp.902, prephitmp.904
	beq	.L60	@,
	cmp	r3, #1	@ D.42299,
	beq	.L63	@,
	ldrb	r2, [r0, #10]	@ zero_extendqisi2	@ prephitmp.902, <variable>.LastPicRNDCTRL
	mov	r3, r2	@ prephitmp.904, prephitmp.902
.L60:
	movw	ip, #10626	@ tmp154,
	strb	r2, [r0, #10]	@ prephitmp.902, <variable>.LastPicRNDCTRL
	strb	r3, [r0, ip]	@ prephitmp.904, <variable>.SMPPicSyntax.RNDCTRL
.L58:
	mov	r0, #1	@,
	ldmfd	sp, {fp, sp, pc}	@
.L63:
	ldrsb	r2, [r0, #10]	@ <variable>.LastPicRNDCTRL, <variable>.LastPicRNDCTRL
	rsbs	r2, r2, #1	@ prephitmp.902, <variable>.LastPicRNDCTRL
	movcc	r2, #0	@ prephitmp.902
	mov	r3, r2	@ prephitmp.904, prephitmp.902
	b	.L60	@
	.fnend
	.size	VC1_Vfmw_UpdataLastPicRNDCTRL, .-VC1_Vfmw_UpdataLastPicRNDCTRL
	.align	2
	.global	VC1_Vfmw_DecPQUANT
	.type	VC1_Vfmw_DecPQUANT, %function
VC1_Vfmw_DecPQUANT:
	.fnstart
.LFB1591:
	@ args = 0, pretend = 0, frame = 128
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #128
	sub	sp, sp, #128	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r2, #128	@,
	mov	r4, r1	@ PqIndex, PqIndex
	mov	r5, r0	@ Quantizer, Quantizer
	movw	r1, #:lower16:.LANCHOR0	@,
	sub	r0, fp, #148	@,,
	movt	r1, #:upper16:.LANCHOR0	@,
	bl	memcpy	@
	cmp	r5, #0	@ Quantizer,
	subeq	r3, fp, #20	@,,
	addeq	r4, r3, r4, asl #2	@, tmp143,, PqIndex,
	ldreq	r4, [r4, #-128]	@ PqIndex, PQuantIdex
	mov	r0, r4	@, PqIndex
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
	.fnend
	.size	VC1_Vfmw_DecPQUANT, .-VC1_Vfmw_DecPQUANT
	.align	2
	.global	VC1_GetPacketState
	.type	VC1_GetPacketState, %function
VC1_GetPacketState:
	.fnstart
.LFB1596:
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
	movw	r3, #:lower16:78254	@ tmp136,
	movt	r3, #:upper16:78254	@ tmp136,
	ldrsb	r0, [r0, r3]	@ <variable>.CodecInfo.IsWaitToDec, <variable>.CodecInfo.IsWaitToDec
	cmp	r0, #1	@ <variable>.CodecInfo.IsWaitToDec,
	moveq	r0, #2	@,
	movne	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VC1_GetPacketState, .-VC1_GetPacketState
	.align	2
	.global	VC1_SetCodeInfo
	.type	VC1_SetCodeInfo, %function
VC1_SetCodeInfo:
	.fnstart
.LFB1595:
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
	movw	r3, #:lower16:81346	@ tmp138,
	movt	r3, #:upper16:81346	@ tmp138,
	movw	r2, #:lower16:81376	@ tmp137,
	movt	r2, #:upper16:81376	@ tmp137,
	mov	r4, r0	@ pCtx, pCtx
	ldrb	r3, [r0, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.PreParseInfo.CodecVersion, <variable>.CodecInfo.PreParseInfo.CodecVersion
	add	r0, r0, #80896	@ D.42403, pCtx,
	add	r0, r0, #484	@ D.42403, D.42403,
	str	r0, [r4, r2]	@ D.42403, <variable>.CodecInfo.pBs
	cmp	r3, #8	@ <variable>.CodecInfo.PreParseInfo.CodecVersion,
	beq	.L77	@,
	movw	ip, #:lower16:78260	@ tmp146,
	movw	r2, #:lower16:78259	@ tmp149,
	movt	ip, #:upper16:78260	@ tmp146,
	movt	r2, #:upper16:78259	@ tmp149,
	mov	lr, #0	@ tmp147,
	strb	r3, [r4, r2]	@ <variable>.CodecInfo.PreParseInfo.CodecVersion, <variable>.CodecInfo.CodecVersion
	strb	lr, [r4, ip]	@ tmp147, <variable>.CodecInfo.PostCresent
.L73:
	movw	r2, #:lower16:81344	@ tmp153,
	movt	r2, #:upper16:81344	@ tmp153,
	ldrsb	r3, [r4, r2]	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile, <variable>.CodecInfo.PreParseInfo.IsAdvProfile
	cmp	r3, #0	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile,
	beq	.L78	@,
	ldr	r2, [r1, #20]	@, <variable>.BsLength
	ldr	r1, [r1, #0]	@, <variable>.BsVirAddr
	bl	BsInit	@
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L78:
	movw	r6, #:lower16:81368	@ tmp158,
	movt	r6, #:upper16:81368	@ tmp158,
	ldr	r2, [r1, #20]	@, <variable>.BsLength
	movw	r5, #:lower16:81372	@ tmp165,
	ldr	r1, [r1, #0]	@, <variable>.BsVirAddr
	movt	r5, #:upper16:81372	@ tmp165,
	bl	BsInit	@
	ldr	r2, [r4, r6]	@ <variable>.CodecInfo.PreParseInfo.FrmWidth, <variable>.CodecInfo.PreParseInfo.FrmWidth
	ldr	r3, [r4, r5]	@ <variable>.CodecInfo.PreParseInfo.FrmHeight, <variable>.CodecInfo.PreParseInfo.FrmHeight
	movw	lr, #:lower16:101480	@ tmp157,
	adds	r8, r2, #15	@ tmp159, <variable>.CodecInfo.PreParseInfo.FrmWidth,
	movt	lr, #:upper16:101480	@ tmp157,
	addmi	r8, r2, #30	@, tmp161, <variable>.CodecInfo.PreParseInfo.FrmWidth,
	adds	r7, r3, #15	@ tmp166, <variable>.CodecInfo.PreParseInfo.FrmHeight,
	addmi	r7, r3, #30	@, tmp168, <variable>.CodecInfo.PreParseInfo.FrmHeight,
	movw	ip, #:lower16:101484	@ tmp164,
	movw	r6, #:lower16:101496	@ tmp171,
	movt	ip, #:upper16:101484	@ tmp164,
	movt	r6, #:upper16:101496	@ tmp171,
	movw	r5, #:lower16:101500	@ tmp174,
	movt	r5, #:upper16:101500	@ tmp174,
	add	r0, r4, #80896	@, pCtx,
	movw	r1, #:lower16:81347	@,
	movt	r1, #:upper16:81347	@,
	str	r2, [r4, r6]	@ <variable>.CodecInfo.PreParseInfo.FrmWidth, <variable>.CodecInfo.DispPicWidth
	add	r1, r4, r1	@, pCtx,
	str	r3, [r4, r5]	@ <variable>.CodecInfo.PreParseInfo.FrmHeight, <variable>.CodecInfo.DispPicHeight
	mov	r2, #16	@,
	mov	r3, r8, asr #4	@ tmp163, tmp161,
	add	r0, r0, #516	@,,
	str	r3, [r4, lr]	@ tmp163, <variable>.CodecInfo.MbWidth
	mov	lr, r7, asr #4	@ tmp170, tmp168,
	str	lr, [r4, ip]	@ tmp170, <variable>.CodecInfo.MbHeight
	bl	memcpy	@
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L77:
	movw	r2, #:lower16:78260	@ tmp140,
	movw	lr, #:lower16:78259	@ tmp143,
	movt	r2, #:upper16:78260	@ tmp140,
	movt	lr, #:upper16:78259	@ tmp143,
	mov	r3, #1	@ tmp141,
	mov	ip, #6	@ tmp144,
	strb	r3, [r4, r2]	@ tmp141, <variable>.CodecInfo.PostCresent
	strb	ip, [r4, lr]	@ tmp144, <variable>.CodecInfo.CodecVersion
	b	.L73	@
	.fnend
	.size	VC1_SetCodeInfo, .-VC1_SetCodeInfo
	.align	2
	.global	VC1_ClearCurPacket
	.type	VC1_ClearCurPacket, %function
VC1_ClearCurPacket:
	.fnstart
.LFB1593:
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
	mov	r4, r1	@ pVc1Packet, pVc1Packet
	ldr	r1, [r1, #28]	@, <variable>.StreamID
	mov	r5, r0	@ ChanID, ChanID
	bl	SM_ReleaseStreamSeg	@
	ldrsb	r3, [r4, #8]	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r3, #1	@ <variable>.IsLastSeg,
	beq	.L80	@,
	mov	r0, r5	@, ChanID
	ldr	r1, [r4, #32]	@, <variable>.StreamID
	bl	SM_ReleaseStreamSeg	@
.L80:
	mov	r0, r4	@, pVc1Packet
	mov	r1, #36	@,
	bl	__memzero	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	VC1_ClearCurPacket, .-VC1_ClearCurPacket
	.align	2
	.global	VC1_ClearCurPic
	.type	VC1_ClearCurPic, %function
VC1_ClearCurPic:
	.fnstart
.LFB1594:
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
	ldrb	r3, [r0, #3096]	@ zero_extendqisi2	@, <variable>.PreParseInfo.IsAdvProfile
	mov	r7, r0	@ pCodeInfo, pCodeInfo
	mov	r6, r1	@ ChanID, ChanID
	cmp	r3, #0	@ <variable>.PreParseInfo.IsAdvProfile,
	beq	.L83	@,
	movw	r8, #23316	@ tmp171,
	ldr	r0, [r0, r8]	@ <variable>.SlcNum, <variable>.SlcNum
	cmp	r0, #0	@ <variable>.SlcNum,
	ldmlefd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	add	r4, r7, #23296	@ ivtmp.1045, pCodeInfo,
	mov	r5, #0	@ i,
	add	r4, r4, #28	@ ivtmp.1045, ivtmp.1045,
	b	.L87	@
.L86:
	ldr	lr, [r7, r8]	@ <variable>.SlcNum, <variable>.SlcNum
	add	r4, r4, #48	@ ivtmp.1045, ivtmp.1045,
	cmp	lr, r5	@ <variable>.SlcNum, i
	ble	.L90	@,
.L87:
	ldr	r1, [r4, #36]	@, <variable>.StreamID
	mov	r0, r6	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r2, [r4, #0]	@ <variable>.pStream2, <variable>.pStream2
	add	r5, r5, #1	@ i, i,
	cmp	r2, #0	@ <variable>.pStream2,
	beq	.L86	@,
	ldr	ip, [r4, #24]	@ <variable>.Phy_addr2, <variable>.Phy_addr2
	cmp	ip, #0	@ <variable>.Phy_addr2,
	beq	.L86	@,
	ldr	r1, [r4, #40]	@, <variable>.StreamID2
	mov	r0, r6	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	lr, [r7, r8]	@ <variable>.SlcNum, <variable>.SlcNum
	add	r4, r4, #48	@ ivtmp.1045, ivtmp.1045,
	cmp	lr, r5	@ <variable>.SlcNum, i
	bgt	.L87	@,
.L90:
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L83:
	add	r1, r0, #35584	@, pCodeInfo,
	mov	r0, r6	@, ChanID
	add	r1, r1, #28	@,,
	bl	VC1_ClearCurPacket	@
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	VC1_ClearCurPic, .-VC1_ClearCurPic
	.align	2
	.global	VC1_Vfmw_BuildRefList
	.type	VC1_Vfmw_BuildRefList, %function
VC1_Vfmw_BuildRefList:
	.fnstart
.LFB1552:
	@ args = 0, pretend = 0, frame = 528
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #532
	sub	sp, sp, #532	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	add	r5, r0, #23040	@ tmp200, pCodecInf,
	mov	r9, r0	@ pCodecInf, pCodecInf
	mov	r4, r1	@ PicType, PicType
	add	r0, r5, #224	@, tmp200,
	mov	r1, #16	@,
	mov	r8, r3	@ IsTop, IsTop
	mov	r6, r2	@ SndFld, SndFld
	bl	__memzero	@
	add	r0, r5, #240	@, tmp200,
	mov	r1, #16	@,
	bl	__memzero	@
	ldrsb	r3, [r9, #4]	@ D.40187, <variable>.PicStructure
	cmp	r3, #0	@ D.40187,
	cmpne	r3, #2	@, D.40187,
	bne	.L92	@,
	cmp	r4, #1	@ PicType,
	beq	.L154	@,
	cmp	r4, #2	@ PicType,
	beq	.L155	@,
.L125:
	movw	r0, #23268	@ tmp600,
	mov	ip, #0	@ tmp599,
	movw	r1, #23284	@ tmp598,
	str	ip, [r9, r0]	@ tmp599, <variable>.RefList0.ListLen
	mov	r0, #1	@ D.40335,
	str	ip, [r9, r1]	@ tmp599, <variable>.RefList1.ListLen
.L108:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L92:
	movw	r5, #10708	@ tmp390,
	ldrb	r1, [r9, r5]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.TFF, <variable>.AdvPicSyntax.TFF
	cmp	r1, #1	@ <variable>.AdvPicSyntax.TFF,
	beq	.L156	@,
	movw	r5, #10745	@ tmp400,
	ldrb	r1, [r9, r5]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.CurParity, <variable>.AdvPicSyntax.CurParity
	cmp	r1, #0	@ <variable>.AdvPicSyntax.CurParity,
	beq	.L157	@,
.L112:
	movw	lr, #23224	@ tmp407,
	ldr	r0, [r9, lr]	@ <variable>.pRef, <variable>.pRef
	ldr	r5, [r0, #1228]	@ TopRefIdx, <variable>.img.image_id
	mov	r7, r5	@ BotRefIdx, TopRefIdx
.L111:
	cmp	r4, #1	@ PicType,
	beq	.L158	@,
.L113:
	cmp	r4, #2	@ PicType,
	bne	.L125	@,
	cmp	r6, #0	@ SndFld,
	movw	lr, #23268	@ tmp520,
	movw	ip, #23284	@ tmp518,
	movw	r3, #23264	@ tmp522,
	movw	r2, #23265	@ tmp525,
	mov	r0, #0	@ tmp523,
	mov	r1, #1	@ tmp526,
	strb	r0, [r9, r3]	@ tmp523, <variable>.RefList0.FldFlag
	str	r4, [r9, lr]	@ PicType, <variable>.RefList0.ListLen
	str	r4, [r9, ip]	@ PicType, <variable>.RefList1.ListLen
	strb	r1, [r9, r2]	@ tmp526, <variable>.RefList0.FldFlag
	beq	.L126	@,
	cmp	r8, #0	@ IsTop,
	beq	.L127	@,
.L126:
	movw	r2, #23224	@ tmp535,
	ldr	r0, [r9, r2]	@ <variable>.pRef,
	ldr	r2, [r0, #1228]	@ <variable>.img.image_id, <variable>.img.image_id
.L152:
	movw	lr, #23272	@ tmp533,
	movw	r4, #23220	@ tmp544,
	str	r2, [r9, lr]	@ <variable>.img.image_id, <variable>.RefList0.ImgObj
	movw	ip, #23281	@ tmp540,
	ldr	lr, [r9, r4]	@ <variable>.pRef, <variable>.pRef
	movw	r2, #23280	@ tmp537,
	mov	r0, #0	@ tmp538,
	mov	r1, #1	@ tmp541,
	strb	r0, [r9, r2]	@ tmp538, <variable>.RefList1.FldFlag
	movw	r3, #10832	@ tmp553,
	strb	r1, [r9, ip]	@ tmp541, <variable>.RefList1.FldFlag
	movw	r4, #23288	@ tmp545,
	ldr	r1, [lr, #1228]	@ temp.1325, <variable>.img.image_id
	movw	r2, #23216	@ tmp552,
	ldr	r3, [r9, r3]	@ D.40277, <variable>.AdvPicSyntax.INTCOMPFIELD
	movw	ip, #23292	@ tmp546,
	movw	r0, #23272	@ tmp550,
	str	r1, [r9, r4]	@ temp.1325, <variable>.RefList1.ImgObj
	cmp	r3, #1	@ D.40277,
	ldr	r4, [lr, #1228]	@ <variable>.img.image_id, <variable>.img.image_id
	ldr	lr, [r9, r2]	@ <variable>.pCurFrm, <variable>.pCurFrm
	ldr	r0, [r9, r0]	@ FwdRefIdx.1329, <variable>.RefList0.ImgObj
	str	r4, [r9, ip]	@ <variable>.img.image_id, <variable>.RefList1.ImgObj
	ldr	ip, [lr, #1228]	@ CurRefIdx.1332, <variable>.img.image_id
	bls	.L159	@,
.L130:
	cmp	r3, #0	@ D.40277,
	cmpne	r3, #2	@, D.40277,
	beq	.L132	@,
.L134:
	movw	r5, #1544	@ tmp564,
	mov	r8, #0	@ i.1348,
	mla	sl, r5, ip, r9	@ ivtmp.1234, tmp564, CurRefIdx.1332, pCodecInf
	mov	r3, r9	@ ivtmp.1217, pCodecInf
	mla	r7, r5, r0, r9	@ ivtmp.1215, tmp564, FwdRefIdx.1329, pCodecInf
	str	r9, [fp, #-560]	@ pCodecInf, %sfp
	mla	r6, r5, r1, r9	@ ivtmp.1225, tmp564, temp.1325, pCodecInf
	add	ip, sl, #13952	@ ivtmp.1234, ivtmp.1234,
	add	r0, r7, #13952	@ ivtmp.1215, ivtmp.1215,
	mov	r9, r8	@ i.1348, i.1348
	add	r1, r6, #13952	@ ivtmp.1225, ivtmp.1225,
.L133:
	ldrb	r6, [r0, #3]	@ zero_extendqisi2	@ tmp574, <variable>.IntensityConvertTab
	add	r2, r0, #1	@ tmp626, ivtmp.1215,
	ldr	r4, [fp, #-560]	@, %sfp
	add	lr, r3, #1	@ tmp627, ivtmp.1217,
	add	r5, r1, #1	@ tmp628, ivtmp.1225,
	strb	r6, [r3, #13]	@ tmp574, <variable>.IntensityConvertTab
	add	r8, r4, r9	@ D.43315,, i.1348
	ldrb	r7, [r0, #259]	@ zero_extendqisi2	@, <variable>.IntensityConvertTab
	add	r9, r9, #1	@ tmp625, i.1348,
	ldr	sl, [fp, #-560]	@, %sfp
	add	r4, ip, #1	@ tmp629, ivtmp.1234,
	str	r7, [fp, #-568]	@, %sfp
	add	r7, sl, r9	@ D.43315,, tmp625
	ldr	r6, [fp, #-568]	@, %sfp
	add	r9, r9, #1	@ i.1348, tmp625,
	cmp	r9, #256	@ i.1348,
	strb	r6, [r3, #269]	@, <variable>.IntensityConvertTab
	ldrb	sl, [r0, #515]	@ zero_extendqisi2	@ tmp578, <variable>.IntensityConvertTab
	strb	sl, [r3, #525]	@ tmp578, <variable>.IntensityConvertTab
	ldrb	r6, [r0, #771]	@ zero_extendqisi2	@ tmp580, <variable>.IntensityConvertTab
	add	r0, r2, #1	@ ivtmp.1215, tmp626,
	strb	r6, [r3, #781]	@ tmp580, <variable>.IntensityConvertTab
	ldrb	sl, [r1, #3]	@ zero_extendqisi2	@ tmp582, <variable>.IntensityConvertTab
	strb	sl, [r3, #1037]	@ tmp582, <variable>.IntensityConvertTab
	ldrb	r6, [r1, #259]	@ zero_extendqisi2	@ tmp584, <variable>.IntensityConvertTab
	strb	r6, [r3, #1293]	@ tmp584, <variable>.IntensityConvertTab
	ldrb	sl, [r1, #515]	@ zero_extendqisi2	@ tmp586, <variable>.IntensityConvertTab
	strb	sl, [r3, #1549]	@ tmp586, <variable>.IntensityConvertTab
	ldrb	r6, [r1, #771]	@ zero_extendqisi2	@ tmp588, <variable>.IntensityConvertTab
	add	r1, r5, #1	@ ivtmp.1225, tmp628,
	strb	r6, [r3, #1805]	@ tmp588, <variable>.IntensityConvertTab
	add	r3, lr, #1	@ ivtmp.1217, tmp627,
	ldrb	sl, [ip, #3]	@ zero_extendqisi2	@ tmp590, <variable>.IntensityConvertTab
	strb	sl, [r8, #2061]	@ tmp590, <variable>.IntensityConvertTab
	ldrb	r6, [ip, #259]	@ zero_extendqisi2	@ tmp592, <variable>.IntensityConvertTab
	strb	r6, [r8, #2317]	@ tmp592, <variable>.IntensityConvertTab
	ldrb	sl, [ip, #515]	@ zero_extendqisi2	@ tmp594, <variable>.IntensityConvertTab
	strb	sl, [r8, #2573]	@ tmp594, <variable>.IntensityConvertTab
	ldrb	sl, [ip, #771]	@ zero_extendqisi2	@ tmp596, <variable>.IntensityConvertTab
	add	ip, r4, #1	@ ivtmp.1234, tmp629,
	strb	sl, [r8, #2829]	@ tmp596, <variable>.IntensityConvertTab
	ldrb	r6, [r2, #3]	@ zero_extendqisi2	@ tmp707, <variable>.IntensityConvertTab
	strb	r6, [lr, #13]	@ tmp707, <variable>.IntensityConvertTab
	ldrb	r8, [r2, #259]	@ zero_extendqisi2	@ tmp708, <variable>.IntensityConvertTab
	strb	r8, [lr, #269]	@ tmp708, <variable>.IntensityConvertTab
	ldrb	r8, [r2, #515]	@ zero_extendqisi2	@ tmp709, <variable>.IntensityConvertTab
	strb	r8, [lr, #525]	@ tmp709, <variable>.IntensityConvertTab
	ldrb	r6, [r2, #771]	@ zero_extendqisi2	@ tmp710, <variable>.IntensityConvertTab
	strb	r6, [lr, #781]	@ tmp710, <variable>.IntensityConvertTab
	ldrb	r2, [r5, #3]	@ zero_extendqisi2	@ tmp711, <variable>.IntensityConvertTab
	strb	r2, [lr, #1037]	@ tmp711, <variable>.IntensityConvertTab
	ldrb	r6, [r5, #259]	@ zero_extendqisi2	@ tmp712, <variable>.IntensityConvertTab
	strb	r6, [lr, #1293]	@ tmp712, <variable>.IntensityConvertTab
	ldrb	r6, [r5, #515]	@ zero_extendqisi2	@ tmp713, <variable>.IntensityConvertTab
	strb	r6, [lr, #1549]	@ tmp713, <variable>.IntensityConvertTab
	ldrb	r5, [r5, #771]	@ zero_extendqisi2	@ tmp714, <variable>.IntensityConvertTab
	strb	r5, [lr, #1805]	@ tmp714, <variable>.IntensityConvertTab
	ldrb	r2, [r4, #3]	@ zero_extendqisi2	@ tmp716, <variable>.IntensityConvertTab
	strb	r2, [r7, #2061]	@ tmp716, <variable>.IntensityConvertTab
	ldrb	lr, [r4, #259]	@ zero_extendqisi2	@ tmp717, <variable>.IntensityConvertTab
	strb	lr, [r7, #2317]	@ tmp717, <variable>.IntensityConvertTab
	ldrb	r2, [r4, #515]	@ zero_extendqisi2	@ tmp718, <variable>.IntensityConvertTab
	strb	r2, [r7, #2573]	@ tmp718, <variable>.IntensityConvertTab
	ldrb	lr, [r4, #771]	@ zero_extendqisi2	@ tmp719, <variable>.IntensityConvertTab
	strb	lr, [r7, #2829]	@ tmp719, <variable>.IntensityConvertTab
	bne	.L133	@,
	mov	r0, #1	@ D.40335,
	b	.L108	@
.L157:
	movw	r7, #23224	@ tmp403,
	movw	ip, #23220	@ tmp405,
	ldr	r2, [r9, r7]	@ <variable>.pRef, <variable>.pRef
	cmp	r4, #1	@ PicType,
	ldr	r3, [r9, ip]	@ <variable>.pRef, <variable>.pRef
	ldr	r5, [r2, #1228]	@ TopRefIdx, <variable>.img.image_id
	ldr	r7, [r3, #1228]	@ BotRefIdx, <variable>.img.image_id
	bne	.L113	@,
.L158:
	movw	r0, #10736	@ tmp409,
	movw	r3, #23265	@ tmp417,
	cmp	r6, #0	@ SndFld,
	ldrb	ip, [r9, r0]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.NUMREF, <variable>.AdvPicSyntax.NUMREF
	strb	r4, [r9, r3]	@ PicType, <variable>.RefList0.FldFlag
	movw	r2, #23268	@ tmp408,
	movw	r4, #23264	@ tmp414,
	movw	r6, #23284	@ tmp412,
	mov	r3, #0	@ tmp413,
	add	r1, ip, #1	@ tmp411, <variable>.AdvPicSyntax.NUMREF,
	strb	r3, [r9, r4]	@ tmp413, <variable>.RefList0.FldFlag
	str	r1, [r9, r2]	@ tmp411, <variable>.RefList0.ListLen
	str	r3, [r9, r6]	@ tmp413, <variable>.RefList1.ListLen
	beq	.L114	@,
	cmp	r8, r3	@ IsTop,
	beq	.L115	@,
.L114:
	movw	r4, #23224	@ tmp427,
	ldr	r6, [r9, r4]	@ <variable>.pRef,
	ldr	r2, [r6, #1228]	@ <variable>.img.image_id, <variable>.img.image_id
.L151:
	movw	r6, #23224	@ tmp431,
	movw	r3, #10832	@ tmp436,
	ldr	r8, [r9, r6]	@ <variable>.pRef, <variable>.pRef
	movw	r4, #23272	@ tmp425,
	ldr	r3, [r9, r3]	@ prephitmp.1086, <variable>.AdvPicSyntax.INTCOMPFIELD
	movw	lr, #23216	@ tmp435,
	str	r2, [r9, r4]	@ <variable>.img.image_id, <variable>.RefList0.ImgObj
	movw	r0, #23272	@ tmp433,
	ldr	ip, [r8, #1228]	@ <variable>.img.image_id, <variable>.img.image_id
	cmp	r3, #1	@ prephitmp.1086,
	ldr	r2, [r9, lr]	@ <variable>.pCurFrm, <variable>.pCurFrm
	movw	r1, #23276	@ tmp429,
	ldr	r8, [r9, r0]	@ FwdRefIdx, <variable>.RefList0.ImgObj
	str	ip, [r9, r1]	@ <variable>.img.image_id, <variable>.RefList0.ImgObj
	ldr	r6, [r2, #1228]	@ CurRefIdx, <variable>.img.image_id
	bls	.L160	@,
.L118:
	rsbs	r2, r3, #1	@ D.40292, prephitmp.1086
	movcc	r2, #0	@ D.40292
	cmp	r3, #0	@ prephitmp.1086,
	cmpne	r3, #2	@, prephitmp.1086,
	bne	.L120	@,
	movw	r3, #10718	@ tmp467,
	ldrb	r3, [r9, r3]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.MVMODE, <variable>.AdvPicSyntax.MVMODE
	cmp	r3, #4	@ <variable>.AdvPicSyntax.MVMODE,
	beq	.L161	@,
.L120:
	movw	r0, #1544	@ tmp494,
	add	r3, r9, #780	@ ivtmp.1183, pCodecInf,
	mla	lr, r0, r6, r9	@ tmp501, tmp494, CurRefIdx, pCodecInf
	add	r3, r3, #1	@ ivtmp.1183, ivtmp.1183,
	mla	r4, r0, r8, r9	@ tmp496, tmp494, FwdRefIdx, pCodecInf
	mov	r0, #0	@ i.1315,
	add	ip, lr, #13952	@ ivtmp.1184, tmp501,
	add	r1, ip, #3	@ ivtmp.1184, ivtmp.1184,
	add	r2, r4, #13952	@ ivtmp.1174, tmp496,
	add	r2, r2, #3	@ ivtmp.1174, ivtmp.1174,
.L124:
	ldrb	r4, [r2, #0]	@ zero_extendqisi2	@ tmp502, <variable>.IntensityConvertTab
	add	ip, r3, #1	@ tmp619, ivtmp.1183,
	add	r0, r0, #2	@ i.1315, i.1315,
	cmp	r0, #256	@ i.1315,
	strb	r4, [r3, #-768]	@ tmp502, <variable>.IntensityConvertTab
	ldrb	lr, [r2, #256]	@ zero_extendqisi2	@ tmp504, <variable>.IntensityConvertTab
	strb	lr, [r3, #-512]	@ tmp504, <variable>.IntensityConvertTab
	ldrb	r4, [r2, #512]	@ zero_extendqisi2	@ tmp506, <variable>.IntensityConvertTab
	strb	r4, [r3, #-256]	@ tmp506, <variable>.IntensityConvertTab
	ldrb	lr, [r2, #768]	@ zero_extendqisi2	@ tmp508, <variable>.IntensityConvertTab
	strb	lr, [r3, #0]	@ tmp508, <variable>.IntensityConvertTab
	ldrb	r4, [r1, #0]	@ zero_extendqisi2	@ tmp510, <variable>.IntensityConvertTab
	strb	r4, [r3, #1280]	@ tmp510, <variable>.IntensityConvertTab
	ldrb	lr, [r1, #256]	@ zero_extendqisi2	@ tmp512, <variable>.IntensityConvertTab
	strb	lr, [r3, #1536]	@ tmp512, <variable>.IntensityConvertTab
	ldrb	r4, [r1, #512]	@ zero_extendqisi2	@ tmp514, <variable>.IntensityConvertTab
	strb	r4, [r3, #1792]	@ tmp514, <variable>.IntensityConvertTab
	ldrb	lr, [r1, #768]	@ zero_extendqisi2	@ tmp516, <variable>.IntensityConvertTab
	strb	lr, [r3, #2048]	@ tmp516, <variable>.IntensityConvertTab
	ldrb	r4, [r2, #1]	@ zero_extendqisi2	@ tmp694, <variable>.IntensityConvertTab
	strb	r4, [r3, #-767]	@ tmp694, <variable>.IntensityConvertTab
	ldrb	lr, [r2, #257]	@ zero_extendqisi2	@ tmp695, <variable>.IntensityConvertTab
	strb	lr, [r3, #-511]	@ tmp695, <variable>.IntensityConvertTab
	ldrb	r4, [r2, #513]	@ zero_extendqisi2	@ tmp696, <variable>.IntensityConvertTab
	strb	r4, [ip, #-256]	@ tmp696, <variable>.IntensityConvertTab
	ldrb	lr, [r2, #769]	@ zero_extendqisi2	@ tmp697, <variable>.IntensityConvertTab
	add	r2, r2, #2	@ ivtmp.1174, ivtmp.1174,
	strb	lr, [r3, #1]	@ tmp697, <variable>.IntensityConvertTab
	ldrb	r4, [r1, #1]	@ zero_extendqisi2	@ tmp698, <variable>.IntensityConvertTab
	strb	r4, [r3, #1281]	@ tmp698, <variable>.IntensityConvertTab
	ldrb	lr, [r1, #257]	@ zero_extendqisi2	@ tmp699, <variable>.IntensityConvertTab
	strb	lr, [r3, #1537]	@ tmp699, <variable>.IntensityConvertTab
	ldrb	r4, [r1, #513]	@ zero_extendqisi2	@ tmp700, <variable>.IntensityConvertTab
	strb	r4, [r3, #1793]	@ tmp700, <variable>.IntensityConvertTab
	ldrb	r4, [r1, #769]	@ zero_extendqisi2	@ tmp701, <variable>.IntensityConvertTab
	add	r1, r1, #2	@ ivtmp.1184, ivtmp.1184,
	strb	r4, [r3, #2049]	@ tmp701, <variable>.IntensityConvertTab
	add	r3, ip, #1	@ ivtmp.1183, tmp619,
	bne	.L124	@,
	mov	r0, #1	@ D.40335,
	b	.L108	@
.L154:
	movw	lr, #23224	@ tmp220,
	ldrb	r5, [r9, #3096]	@ zero_extendqisi2	@, <variable>.PreParseInfo.IsAdvProfile
	ldr	r2, [r9, lr]	@ <variable>.pRef, <variable>.pRef
	movw	ip, #23268	@ tmp212,
	movw	r6, #23264	@ tmp216,
	movw	r1, #23284	@ tmp214,
	str	r4, [r9, ip]	@ PicType, <variable>.RefList0.ListLen
	mov	r4, #0	@ tmp215,
	strb	r4, [r9, r6]	@ tmp215, <variable>.RefList0.FldFlag
	cmp	r5, r4	@ <variable>.PreParseInfo.IsAdvProfile,
	str	r4, [r9, r1]	@ tmp215, <variable>.RefList1.ListLen
	movw	r0, #23272	@ tmp221,
	ldr	r4, [r2, #1228]	@ D.40197, <variable>.img.image_id
	str	r4, [r9, r0]	@ D.40197, <variable>.RefList0.ImgObj
	beq	.L94	@,
	movw	r5, #10748	@ tmp228,
	movw	r2, #10720	@ tmp225,
	ldr	r1, [r9, r5]	@ <variable>.AdvPicSyntax.FCM, <variable>.AdvPicSyntax.FCM
	movw	r0, #10721	@ tmp226,
	movw	r3, #10718	@ tmp227,
	ldrb	r5, [r9, r2]	@ zero_extendqisi2	@ LUMSCALE.1244, <variable>.AdvPicSyntax.LUMSCALE
	cmp	r1, #2	@ <variable>.AdvPicSyntax.FCM,
	ldrb	r6, [r9, r0]	@ zero_extendqisi2	@ LUMSHIFT.1245, <variable>.AdvPicSyntax.LUMSHIFT
	ldrb	r3, [r9, r3]	@ zero_extendqisi2	@ MVMODE, <variable>.AdvPicSyntax.MVMODE
	beq	.L162	@,
.L95:
	cmp	r3, #4	@ MVMODE,
	beq	.L96	@,
.L99:
	movw	lr, #1544	@ tmp236,
	mov	r2, r9	@ ivtmp.1113, pCodecInf
	mla	ip, lr, r4, r9	@ tmp238, tmp236, D.40197, pCodecInf
	mov	r0, #0	@ i.1250,
	add	r1, ip, #13952	@ ivtmp.1110, tmp238,
	add	r3, r1, #3	@ ivtmp.1110, ivtmp.1110,
.L97:
	ldrb	r1, [r3, #0]	@ zero_extendqisi2	@ tmp270, <variable>.IntensityConvertTab
	add	lr, r2, #1	@ tmp610, ivtmp.1113,
	add	r0, r0, #2	@ i.1250, i.1250,
	cmp	r0, #256	@ i.1250,
	strb	r1, [r2, #13]	@ tmp270, <variable>.IntensityConvertTab
	ldrb	ip, [r3, #256]	@ zero_extendqisi2	@ tmp272, <variable>.IntensityConvertTab
	strb	ip, [r2, #269]	@ tmp272, <variable>.IntensityConvertTab
	ldrb	r1, [r3, #512]	@ zero_extendqisi2	@ tmp274, <variable>.IntensityConvertTab
	strb	r1, [r2, #525]	@ tmp274, <variable>.IntensityConvertTab
	ldrb	ip, [r3, #768]	@ zero_extendqisi2	@ tmp276, <variable>.IntensityConvertTab
	strb	ip, [r2, #781]	@ tmp276, <variable>.IntensityConvertTab
	add	r2, lr, #1	@ ivtmp.1113, tmp610,
	ldrb	r1, [r3, #1]	@ zero_extendqisi2	@ tmp652, <variable>.IntensityConvertTab
	strb	r1, [lr, #13]	@ tmp652, <variable>.IntensityConvertTab
	ldrb	ip, [r3, #257]	@ zero_extendqisi2	@ tmp653, <variable>.IntensityConvertTab
	strb	ip, [lr, #269]	@ tmp653, <variable>.IntensityConvertTab
	ldrb	r1, [r3, #513]	@ zero_extendqisi2	@ tmp654, <variable>.IntensityConvertTab
	strb	r1, [lr, #525]	@ tmp654, <variable>.IntensityConvertTab
	ldrb	ip, [r3, #769]	@ zero_extendqisi2	@ tmp655, <variable>.IntensityConvertTab
	add	r3, r3, #2	@ ivtmp.1110, ivtmp.1110,
	strb	ip, [lr, #781]	@ tmp655, <variable>.IntensityConvertTab
	bne	.L97	@,
	mov	r0, #1	@ D.40335,
	b	.L108	@
.L156:
	movw	r2, #10745	@ tmp392,
	ldrb	r3, [r9, r2]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.CurParity, <variable>.AdvPicSyntax.CurParity
	cmp	r3, #0	@ <variable>.AdvPicSyntax.CurParity,
	beq	.L112	@,
	movw	lr, #23220	@ tmp397,
	movw	r0, #23224	@ tmp399,
	ldr	r7, [r9, lr]	@ <variable>.pRef, <variable>.pRef
	ldr	ip, [r9, r0]	@ <variable>.pRef, <variable>.pRef
	ldr	r5, [r7, #1228]	@ TopRefIdx, <variable>.img.image_id
	ldr	r7, [ip, #1228]	@ BotRefIdx, <variable>.img.image_id
	b	.L111	@
.L155:
	movw	lr, #23224	@ tmp286,
	movw	ip, #23220	@ tmp292,
	ldr	r5, [r9, lr]	@ <variable>.pRef, <variable>.pRef
	movw	r0, #23268	@ tmp280,
	movw	r3, #23284	@ tmp278,
	movw	r4, #23264	@ tmp282,
	mov	r2, #1	@ tmp279,
	ldr	lr, [r9, ip]	@ <variable>.pRef, <variable>.pRef
	str	r2, [r9, r0]	@ tmp279, <variable>.RefList0.ListLen
	mov	r1, #0	@ tmp283,
	str	r2, [r9, r3]	@ tmp279, <variable>.RefList1.ListLen
	movw	ip, #23280	@ tmp288,
	strb	r1, [r9, r4]	@ tmp283, <variable>.RefList0.FldFlag
	movw	r0, #23272	@ tmp287,
	ldr	r4, [r5, #1228]	@ temp.1253, <variable>.img.image_id
	movw	r3, #23288	@ tmp293,
	ldrb	r5, [r9, #3096]	@ zero_extendqisi2	@, <variable>.PreParseInfo.IsAdvProfile
	strb	r1, [r9, ip]	@ tmp283, <variable>.RefList1.FldFlag
	cmp	r5, #0	@ <variable>.PreParseInfo.IsAdvProfile,
	str	r4, [r9, r0]	@ temp.1253, <variable>.RefList0.ImgObj
	ldr	r5, [lr, #1228]	@ D.40232, <variable>.img.image_id
	str	r5, [r9, r3]	@ D.40232, <variable>.RefList1.ImgObj
	movwne	r3, #10720	@ tmp297,
	movweq	r3, #10617	@ tmp300,
	ldrneb	r6, [r9, r3]	@ zero_extendqisi2	@ LUMSCALE, <variable>.AdvPicSyntax.LUMSCALE
	ldreqb	r6, [r9, r3]	@ zero_extendqisi2	@ LUMSCALE, <variable>.SMPPicSyntax.LUMSCALE
	movwne	r3, #10721	@ tmp298,
	movweq	r3, #10618	@ tmp301,
	ldrneb	r7, [r9, r3]	@ zero_extendqisi2	@ LUMSHIFT.1242, <variable>.AdvPicSyntax.LUMSHIFT
	ldreqb	r7, [r9, r3]	@ zero_extendqisi2	@ LUMSHIFT.1242, <variable>.SMPPicSyntax.LUMSHIFT
	movwne	r3, #10718	@ tmp299,
	movweq	r3, #10615	@ tmp302,
	ldrb	r2, [r9, r3]	@ zero_extendqisi2	@ MVMODE.1243,
	cmp	r2, #4	@ MVMODE.1243,
	beq	.L104	@,
.L107:
	movw	lr, #1544	@ tmp304,
	mov	r1, r9	@ ivtmp.1138, pCodecInf
	mla	r3, lr, r4, r9	@ tmp306, tmp304, temp.1253, pCodecInf
	mov	ip, #0	@ i.1278,
	mla	r0, lr, r5, r9	@ tmp310, tmp304, D.40232, ivtmp.1138
	add	r4, r3, #13952	@ ivtmp.1135, tmp306,
	add	r3, r4, #3	@ ivtmp.1135, ivtmp.1135,
	add	r2, r0, #13952	@ ivtmp.1145, tmp310,
	add	r2, r2, #3	@ ivtmp.1145, ivtmp.1145,
.L105:
	ldrb	r4, [r3, #0]	@ zero_extendqisi2	@ tmp370, <variable>.IntensityConvertTab
	add	r0, r1, #1	@ tmp615, ivtmp.1138,
	add	ip, ip, #2	@ i.1278, i.1278,
	cmp	ip, #256	@ i.1278,
	strb	r4, [r1, #13]	@ tmp370, <variable>.IntensityConvertTab
	ldrb	lr, [r3, #256]	@ zero_extendqisi2	@ tmp372, <variable>.IntensityConvertTab
	strb	lr, [r1, #269]	@ tmp372, <variable>.IntensityConvertTab
	ldrb	r4, [r3, #512]	@ zero_extendqisi2	@ tmp374, <variable>.IntensityConvertTab
	strb	r4, [r1, #525]	@ tmp374, <variable>.IntensityConvertTab
	ldrb	lr, [r3, #768]	@ zero_extendqisi2	@ tmp376, <variable>.IntensityConvertTab
	strb	lr, [r1, #781]	@ tmp376, <variable>.IntensityConvertTab
	ldrb	r4, [r2, #0]	@ zero_extendqisi2	@ tmp378, <variable>.IntensityConvertTab
	strb	r4, [r1, #1037]	@ tmp378, <variable>.IntensityConvertTab
	ldrb	lr, [r2, #256]	@ zero_extendqisi2	@ tmp380, <variable>.IntensityConvertTab
	strb	lr, [r1, #1293]	@ tmp380, <variable>.IntensityConvertTab
	ldrb	r4, [r2, #512]	@ zero_extendqisi2	@ tmp382, <variable>.IntensityConvertTab
	strb	r4, [r1, #1549]	@ tmp382, <variable>.IntensityConvertTab
	ldrb	lr, [r2, #768]	@ zero_extendqisi2	@ tmp384, <variable>.IntensityConvertTab
	strb	lr, [r1, #1805]	@ tmp384, <variable>.IntensityConvertTab
	add	r1, r0, #1	@ ivtmp.1138, tmp615,
	ldrb	r4, [r3, #1]	@ zero_extendqisi2	@ tmp660, <variable>.IntensityConvertTab
	strb	r4, [r0, #13]	@ tmp660, <variable>.IntensityConvertTab
	ldrb	lr, [r3, #257]	@ zero_extendqisi2	@ tmp661, <variable>.IntensityConvertTab
	strb	lr, [r0, #269]	@ tmp661, <variable>.IntensityConvertTab
	ldrb	r4, [r3, #513]	@ zero_extendqisi2	@ tmp662, <variable>.IntensityConvertTab
	strb	r4, [r0, #525]	@ tmp662, <variable>.IntensityConvertTab
	ldrb	lr, [r3, #769]	@ zero_extendqisi2	@ tmp663, <variable>.IntensityConvertTab
	add	r3, r3, #2	@ ivtmp.1135, ivtmp.1135,
	strb	lr, [r0, #781]	@ tmp663, <variable>.IntensityConvertTab
	ldrb	r4, [r2, #1]	@ zero_extendqisi2	@ tmp664, <variable>.IntensityConvertTab
	strb	r4, [r0, #1037]	@ tmp664, <variable>.IntensityConvertTab
	ldrb	lr, [r2, #257]	@ zero_extendqisi2	@ tmp665, <variable>.IntensityConvertTab
	strb	lr, [r0, #1293]	@ tmp665, <variable>.IntensityConvertTab
	ldrb	r4, [r2, #513]	@ zero_extendqisi2	@ tmp666, <variable>.IntensityConvertTab
	strb	r4, [r0, #1549]	@ tmp666, <variable>.IntensityConvertTab
	ldrb	r4, [r2, #769]	@ zero_extendqisi2	@ tmp667, <variable>.IntensityConvertTab
	add	r2, r2, #2	@ ivtmp.1145, ivtmp.1145,
	strb	r4, [r0, #1805]	@ tmp667, <variable>.IntensityConvertTab
	bne	.L105	@,
	mov	r0, #1	@ D.40335,
	b	.L108	@
.L94:
	movw	r6, #10617	@ tmp232,
	movw	r0, #10618	@ tmp233,
	movw	r3, #10615	@ tmp234,
	ldrb	r5, [r9, r6]	@ zero_extendqisi2	@ LUMSCALE.1244, <variable>.SMPPicSyntax.LUMSCALE
	ldrb	r3, [r9, r3]	@ zero_extendqisi2	@ MVMODE, <variable>.SMPPicSyntax.MVMODE
	ldrb	r6, [r9, r0]	@ zero_extendqisi2	@ LUMSHIFT.1245, <variable>.SMPPicSyntax.LUMSHIFT
	b	.L95	@
.L132:
	movw	r2, #10718	@ tmp572,
	ldrb	r3, [r9, r2]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.MVMODE, <variable>.AdvPicSyntax.MVMODE
	cmp	r3, #4	@ <variable>.AdvPicSyntax.MVMODE,
	bne	.L134	@,
	mov	r0, #0	@ D.40335,
	b	.L108	@
.L115:
	movw	lr, #23216	@ tmp423,
	ldr	r8, [r9, lr]	@ <variable>.pCurFrm,
	ldr	r2, [r8, #1228]	@ iftmp.496, <variable>.img.image_id
	b	.L151	@
.L127:
	movw	r1, #23216	@ tmp531,
	ldr	r4, [r9, r1]	@ <variable>.pCurFrm,
	ldr	r2, [r4, #1228]	@ iftmp.502, <variable>.img.image_id
	b	.L152	@
.L160:
	movw	ip, #10718	@ tmp437,
	ldrb	r2, [r9, ip]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.MVMODE, <variable>.AdvPicSyntax.MVMODE
	cmp	r2, #4	@ <variable>.AdvPicSyntax.MVMODE,
	bne	.L118	@,
	movw	r3, #10720	@ tmp439,
	add	lr, r3, #1	@ tmp440, tmp440,
	ldrb	sl, [r9, r3]	@ zero_extendqisi2	@ temp.1304, <variable>.AdvPicSyntax.LUMSCALE
	sub	r0, fp, #300	@,,
	ldrb	r4, [r9, lr]	@ zero_extendqisi2	@ temp.1305, <variable>.AdvPicSyntax.LUMSHIFT
	mov	r3, #0	@,
	mov	r1, sl	@, temp.1304
	mov	r2, r4	@, temp.1305
	bl	VC1_Vfmw_GenerateIntensityMap	@
	mov	r1, sl	@, temp.1304
	mov	r2, r4	@, temp.1305
	sub	r0, fp, #556	@,,
	mov	r3, #1	@,
	bl	VC1_Vfmw_GenerateIntensityMap	@
	movw	r0, #1544	@ tmp444,
	mla	r1, r0, r5, r9	@ tmp446, tmp444, TopRefIdx, pCodecInf
	mov	r2, #0	@ i.1306,
	add	sl, r1, #13952	@ tmp446, tmp446,
	add	r3, sl, #3	@ ivtmp.1206, tmp446,
.L119:
	ldrb	ip, [r3, #0]	@ zero_extendqisi2	@ tmp447, <variable>.IntensityConvertTab
	sub	r4, fp, #44	@,,
	ldrb	lr, [r3, #256]	@ zero_extendqisi2	@ tmp453, <variable>.IntensityConvertTab
	sub	r0, fp, #44	@,,
	add	r5, r4, ip	@ tmp449,, tmp447
	ldrb	sl, [r3, #1]	@ zero_extendqisi2	@ tmp670, <variable>.IntensityConvertTab
	add	ip, r0, lr	@ tmp455,, tmp453
	ldrb	r1, [r3, #257]	@ zero_extendqisi2	@ tmp674, <variable>.IntensityConvertTab
	ldrb	r4, [r5, #-256]	@ zero_extendqisi2	@ tmp451, LUTY
	sub	r5, fp, #44	@,,
	add	lr, r5, sl	@ tmp671,, tmp670
	add	r1, r5, r1	@ tmp676, tmp10, tmp674
	add	r2, r2, #2	@ i.1306, i.1306,
	mov	sl, r5	@,
	strb	r4, [r3, #0]	@ tmp451, <variable>.IntensityConvertTab
	cmp	r2, #256	@ i.1306,
	ldrb	r4, [ip, #-512]	@ zero_extendqisi2	@ tmp457, LUTUV
	strb	r4, [r3, #256]	@ tmp457, <variable>.IntensityConvertTab
	ldrb	r0, [lr, #-256]	@ zero_extendqisi2	@ tmp673, LUTY
	strb	r0, [r3, #1]	@ tmp673, <variable>.IntensityConvertTab
	ldrb	ip, [r1, #-512]	@ zero_extendqisi2	@ tmp678, LUTUV
	strb	ip, [r3, #257]	@ tmp678, <variable>.IntensityConvertTab
	add	r3, r3, #2	@ ivtmp.1206, ivtmp.1206,
	bne	.L119	@,
	movw	r2, #10832	@ tmp459,
	ldr	r3, [r9, r2]	@ prephitmp.1086, <variable>.AdvPicSyntax.INTCOMPFIELD
	b	.L118	@
.L159:
	movw	lr, #10718	@ tmp554,
	ldrb	r2, [r9, lr]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.MVMODE, <variable>.AdvPicSyntax.MVMODE
	cmp	r2, #4	@ <variable>.AdvPicSyntax.MVMODE,
	bne	.L130	@,
	mov	r0, #0	@ D.40335,
	b	.L108	@
.L162:
	movw	lr, #10824	@ tmp230,
	ldr	ip, [r9, lr]	@ <variable>.AdvPicSyntax.INTCOMP, <variable>.AdvPicSyntax.INTCOMP
	cmp	ip, #1	@ <variable>.AdvPicSyntax.INTCOMP,
	bne	.L95	@,
.L96:
	movw	sl, #1544	@ tmp243,
	sub	r0, fp, #300	@,,
	mla	r8, sl, r4, r9	@ tmp245, tmp243, D.40197, pCodecInf
	mov	r1, r5	@, LUMSCALE.1244
	mov	r2, r6	@, LUMSHIFT.1245
	mov	r3, #0	@,
	bl	VC1_Vfmw_GenerateIntensityMap	@
	mov	r2, r6	@, LUMSHIFT.1245
	mov	r3, #1	@,
	mov	r1, r5	@, LUMSCALE.1244
	sub	r0, fp, #556	@,,
	add	r7, r8, #13952	@ ivtmp.1125, tmp245,
	bl	VC1_Vfmw_GenerateIntensityMap	@
	add	r3, r7, #3	@ ivtmp.1125, ivtmp.1125,
	mov	r2, #0	@ i,
.L98:
	ldrb	r5, [r3, #0]	@ zero_extendqisi2	@ tmp246, <variable>.IntensityConvertTab
	sub	r1, fp, #44	@,,
	ldrb	ip, [r3, #256]	@ zero_extendqisi2	@ tmp252, <variable>.IntensityConvertTab
	add	r2, r2, #2	@ i, i,
	add	sl, r1, r5	@ tmp248,, tmp246
	mov	lr, r1	@,
	add	r1, r1, ip	@ tmp254, tmp14, tmp252
	ldrb	r7, [r3, #512]	@ zero_extendqisi2	@ tmp258, <variable>.IntensityConvertTab
	ldrb	r0, [sl, #-256]	@ zero_extendqisi2	@ tmp250, LUTY
	mov	sl, lr	@,
	add	r7, lr, r7	@ tmp260, tmp10, tmp258
	ldrb	r6, [r3, #768]	@ zero_extendqisi2	@ tmp264, <variable>.IntensityConvertTab
	ldrb	r5, [r3, #1]	@ zero_extendqisi2	@ tmp632, <variable>.IntensityConvertTab
	cmp	r2, #256	@ i,
	strb	r0, [r3, #0]	@ tmp250, <variable>.IntensityConvertTab
	add	r6, lr, r6	@ tmp266, tmp8, tmp264
	ldrb	r8, [r1, #-512]	@ zero_extendqisi2	@ tmp256, LUTUV
	add	r5, sl, r5	@ tmp633, tmp12, tmp632
	ldrb	lr, [r3, #257]	@ zero_extendqisi2	@ tmp636, <variable>.IntensityConvertTab
	ldrb	r0, [r3, #513]	@ zero_extendqisi2	@ tmp641, <variable>.IntensityConvertTab
	strb	r8, [r3, #256]	@ tmp256, <variable>.IntensityConvertTab
	add	ip, sl, lr	@ tmp638, tmp1, tmp636
	ldrb	r7, [r7, #-256]	@ zero_extendqisi2	@ tmp262, LUTY
	add	lr, sl, r0	@ tmp642, tmp8, tmp641
	ldrb	r1, [r3, #769]	@ zero_extendqisi2	@ tmp645, <variable>.IntensityConvertTab
	mov	r8, sl	@,
	strb	r7, [r3, #512]	@ tmp262, <variable>.IntensityConvertTab
	add	r1, sl, r1	@ tmp646,, tmp645
	ldrb	r6, [r6, #-512]	@ zero_extendqisi2	@ tmp268, LUTUV
	strb	r6, [r3, #768]	@ tmp268, <variable>.IntensityConvertTab
	ldrb	r5, [r5, #-256]	@ zero_extendqisi2	@ tmp635, LUTY
	strb	r5, [r3, #1]	@ tmp635, <variable>.IntensityConvertTab
	ldrb	ip, [ip, #-512]	@ zero_extendqisi2	@ tmp640, LUTUV
	strb	ip, [r3, #257]	@ tmp640, <variable>.IntensityConvertTab
	ldrb	ip, [lr, #-256]	@ zero_extendqisi2	@ tmp644, LUTY
	strb	ip, [r3, #513]	@ tmp644, <variable>.IntensityConvertTab
	ldrb	r0, [r1, #-512]	@ zero_extendqisi2	@ tmp648, LUTUV
	strb	r0, [r3, #769]	@ tmp648, <variable>.IntensityConvertTab
	add	r3, r3, #2	@ ivtmp.1125, ivtmp.1125,
	bne	.L98	@,
	b	.L99	@
.L161:
	cmp	r2, #0	@ D.40292,
	sub	r0, fp, #300	@,,
	movwne	r3, #10836	@ tmp469,
	movweq	r3, #10720	@ tmp473,
	ldrneb	r5, [r9, r3]	@ zero_extendqisi2	@ LUMSCALE.1349, <variable>.AdvPicSyntax.LUMSCALE2
	addne	r3, r3, #4	@ tmp471, tmp471,
	ldreqb	r5, [r9, r3]	@ zero_extendqisi2	@ LUMSCALE.1349, <variable>.AdvPicSyntax.LUMSCALE
	addeq	r3, r3, #1	@ tmp474, tmp474,
	ldrb	sl, [r9, r3]	@ zero_extendqisi2	@ LUMSHIFT,
	mov	r3, #0	@,
	mov	r1, r5	@, LUMSCALE.1349
	mov	r2, sl	@, LUMSHIFT
	bl	VC1_Vfmw_GenerateIntensityMap	@
	mov	r1, r5	@, LUMSCALE.1349
	mov	r2, sl	@, LUMSHIFT
	sub	r0, fp, #556	@,,
	mov	r3, #1	@,
	bl	VC1_Vfmw_GenerateIntensityMap	@
	movw	r1, #1544	@ tmp479,
	mla	r7, r1, r7, r9	@ ivtmp.1199, tmp479, BotRefIdx, pCodecInf
	mov	r2, #0	@ i.1310,
	add	r7, r7, #13952	@ ivtmp.1199, ivtmp.1199,
.L123:
	ldrb	r5, [r7, #515]	@ zero_extendqisi2	@ tmp481, <variable>.IntensityConvertTab
	sub	ip, fp, #44	@,,
	ldrb	r1, [r7, #771]	@ zero_extendqisi2	@ tmp487, <variable>.IntensityConvertTab
	add	r4, r7, #1	@ tmp622, ivtmp.1199,
	add	r3, ip, r5	@ tmp483,, tmp481
	add	r2, r2, #2	@ i.1310, i.1310,
	add	lr, ip, r1	@ tmp489, tmp5, tmp487
	cmp	r2, #256	@ i.1310,
	ldrb	r0, [r3, #-256]	@ zero_extendqisi2	@ tmp485, LUTY
	mov	r5, ip	@,
	strb	r0, [r7, #515]	@ tmp485, <variable>.IntensityConvertTab
	ldrb	sl, [lr, #-512]	@ zero_extendqisi2	@ tmp491, LUTUV
	strb	sl, [r7, #771]	@ tmp491, <variable>.IntensityConvertTab
	add	r7, r4, #1	@ ivtmp.1199, tmp622,
	ldrb	r3, [r4, #515]	@ zero_extendqisi2	@ tmp681, <variable>.IntensityConvertTab
	mov	sl, ip	@, tmp5
	ldrb	r1, [r4, #771]	@ zero_extendqisi2	@ tmp685, <variable>.IntensityConvertTab
	add	lr, ip, r3	@ tmp682, tmp10, tmp681
	add	r3, ip, r1	@ tmp687,, tmp685
	ldrb	r0, [lr, #-256]	@ zero_extendqisi2	@ tmp684, LUTY
	strb	r0, [r4, #515]	@ tmp684, <variable>.IntensityConvertTab
	ldrb	lr, [r3, #-512]	@ zero_extendqisi2	@ tmp689, LUTUV
	strb	lr, [r4, #771]	@ tmp689, <variable>.IntensityConvertTab
	bne	.L123	@,
	b	.L120	@
.L104:
	mov	r1, r6	@, LUMSCALE
	mov	r2, r7	@, LUMSHIFT.1242
	sub	r0, fp, #300	@,,
	mov	r3, #0	@,
	bl	VC1_Vfmw_GenerateIntensityMap	@
	mov	r1, r6	@, LUMSCALE
	mov	r2, r7	@, LUMSHIFT.1242
	mov	r3, #1	@,
	sub	r0, fp, #556	@,,
	bl	VC1_Vfmw_GenerateIntensityMap	@
	movw	ip, #1544	@ tmp315,
	mla	sl, ip, r5, r9	@ tmp321, tmp315, D.40232, pCodecInf
	mov	r1, #0	@ i.1269,
	mla	r8, ip, r4, r9	@ tmp317, tmp315, temp.1253, pCodecInf
	add	r7, sl, #13952	@ ivtmp.1164, tmp321,
	add	r2, r7, #3	@ ivtmp.1164, ivtmp.1164,
	add	r6, r8, #13952	@ ivtmp.1159, tmp317,
	add	r3, r6, #3	@ ivtmp.1159, ivtmp.1159,
.L106:
	ldrb	r6, [r3, #0]	@ zero_extendqisi2	@ tmp322, <variable>.IntensityConvertTab
	sub	r7, fp, #44	@,,
	ldrb	lr, [r3, #256]	@ zero_extendqisi2	@ tmp328, <variable>.IntensityConvertTab
	sub	ip, fp, #44	@,,
	add	r8, r7, r6	@ tmp324,, tmp322
	ldrb	sl, [r3, #512]	@ zero_extendqisi2	@ tmp334, <variable>.IntensityConvertTab
	add	r6, ip, lr	@ tmp330,, tmp328
	ldrb	r0, [r3, #768]	@ zero_extendqisi2	@ tmp340, <variable>.IntensityConvertTab
	ldrb	r7, [r8, #-256]	@ zero_extendqisi2	@ tmp326, LUTY
	sub	r8, fp, #44	@,,
	add	ip, r8, sl	@ tmp336,, tmp334
	add	r0, r8, r0	@ tmp342, tmp10, tmp340
	add	r1, r1, #1	@ i.1269, i.1269,
	mov	sl, r8	@,
	strb	r7, [r3, #0]	@ tmp326, <variable>.IntensityConvertTab
	cmp	r1, #256	@ i.1269,
	ldrb	lr, [r6, #-512]	@ zero_extendqisi2	@ tmp332, LUTUV
	strb	lr, [r3, #256]	@ tmp332, <variable>.IntensityConvertTab
	ldrb	r6, [ip, #-256]	@ zero_extendqisi2	@ tmp338, LUTY
	strb	r6, [r3, #512]	@ tmp338, <variable>.IntensityConvertTab
	ldrb	r7, [r0, #-512]	@ zero_extendqisi2	@ tmp344, LUTUV
	strb	r7, [r3, #768]	@ tmp344, <variable>.IntensityConvertTab
	add	r3, r3, #1	@ ivtmp.1159, ivtmp.1159,
	ldrb	r0, [r2, #0]	@ zero_extendqisi2	@ tmp346, <variable>.IntensityConvertTab
	ldrb	r6, [r2, #256]	@ zero_extendqisi2	@ tmp352, <variable>.IntensityConvertTab
	add	r7, r8, r0	@ tmp348, tmp14, tmp346
	ldrb	lr, [r2, #512]	@ zero_extendqisi2	@ tmp358, <variable>.IntensityConvertTab
	add	r6, r8, r6	@ tmp354, tmp12, tmp352
	ldrb	r0, [r2, #768]	@ zero_extendqisi2	@ tmp364, <variable>.IntensityConvertTab
	ldrb	r7, [r7, #-256]	@ zero_extendqisi2	@ tmp350, LUTY
	add	ip, r8, lr	@ tmp360,, tmp358
	add	lr, r8, r0	@ tmp366, tmp10, tmp364
	strb	r7, [r2, #0]	@ tmp350, <variable>.IntensityConvertTab
	ldrb	r6, [r6, #-512]	@ zero_extendqisi2	@ tmp356, LUTUV
	strb	r6, [r2, #256]	@ tmp356, <variable>.IntensityConvertTab
	ldrb	ip, [ip, #-256]	@ zero_extendqisi2	@ tmp362, LUTY
	strb	ip, [r2, #512]	@ tmp362, <variable>.IntensityConvertTab
	ldrb	r0, [lr, #-512]	@ zero_extendqisi2	@ tmp368, LUTUV
	strb	r0, [r2, #768]	@ tmp368, <variable>.IntensityConvertTab
	add	r2, r2, #1	@ ivtmp.1164, ivtmp.1164,
	bne	.L106	@,
	b	.L107	@
	.fnend
	.size	VC1_Vfmw_BuildRefList, .-VC1_Vfmw_BuildRefList
	.align	2
	.global	VC1_ReceivePacket
	.type	VC1_ReceivePacket, %function
VC1_ReceivePacket:
	.fnstart
.LFB1592:
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
	beq	.L169	@,
	ldr	r2, [r4, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r3, #:lower16:113872	@ tmp140,
	movt	r3, #:upper16:113872	@ tmp140,
	movw	lr, #:lower16:113860	@ tmp139,
	movt	lr, #:upper16:113860	@ tmp139,
	movw	ip, #:lower16:113880	@ tmp144,
	str	r2, [r0, r3]	@ <variable>.PhyAddr, <variable>.CodecInfo.stCurPacket.BsPhyAddr
	movt	ip, #:upper16:113880	@ tmp144,
	ldr	r5, [r4, #0]	@ <variable>.VirAddr, <variable>.VirAddr
	movw	r2, #:lower16:113868	@ tmp146,
	movt	r2, #:upper16:113868	@ tmp146,
	movw	r3, #:lower16:113888	@ tmp149,
	movt	r3, #:upper16:113888	@ tmp149,
	add	r1, r0, #113664	@ pstPacket, pCtx,
	str	r5, [r0, lr]	@ <variable>.VirAddr, <variable>.CodecInfo.stCurPacket.BsVirAddr
	add	r1, r1, #196	@ pstPacket, pstPacket,
	ldr	lr, [r4, #16]	@ <variable>.LenInByte, <variable>.LenInByte
	str	lr, [r0, ip]	@ <variable>.LenInByte, <variable>.CodecInfo.stCurPacket.BsLength
	ldrb	ip, [r4, #5]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	strb	ip, [r0, r2]	@ <variable>.IsLastSeg, <variable>.CodecInfo.stCurPacket.IsLastSeg
	ldr	r2, [r4, #20]	@ <variable>.StreamID, <variable>.StreamID
	str	r2, [r0, r3]	@ <variable>.StreamID, <variable>.CodecInfo.stCurPacket.StreamID
	ldrb	r3, [r4, #5]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r3, #1	@ <variable>.IsLastSeg,
	beq	.L166	@,
	ldr	r5, [r4, #92]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r3, #:lower16:113876	@ tmp152,
	movt	r3, #:upper16:113876	@ tmp152,
	movw	lr, #:lower16:113864	@ tmp154,
	movt	lr, #:upper16:113864	@ tmp154,
	movw	ip, #:lower16:113884	@ tmp156,
	str	r5, [r0, r3]	@ <variable>.PhyAddr, <variable>.CodecInfo.stCurPacket.BsPhyAddr
	movt	ip, #:upper16:113884	@ tmp156,
	ldr	r5, [r4, #80]	@ <variable>.VirAddr, <variable>.VirAddr
	movw	r2, #:lower16:113869	@ tmp158,
	movt	r2, #:upper16:113869	@ tmp158,
	movw	r3, #:lower16:113892	@ tmp161,
	movt	r3, #:upper16:113892	@ tmp161,
	str	r5, [r0, lr]	@ <variable>.VirAddr, <variable>.CodecInfo.stCurPacket.BsVirAddr
	ldr	lr, [r4, #96]	@ <variable>.LenInByte, <variable>.LenInByte
	str	lr, [r0, ip]	@ <variable>.LenInByte, <variable>.CodecInfo.stCurPacket.BsLength
	ldrb	ip, [r4, #85]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	strb	ip, [r0, r2]	@ <variable>.IsLastSeg, <variable>.CodecInfo.stCurPacket.IsLastSeg
	ldr	lr, [r4, #100]	@ <variable>.StreamID, <variable>.StreamID
	str	lr, [r0, r3]	@ <variable>.StreamID, <variable>.CodecInfo.stCurPacket.StreamID
	ldrb	ip, [r4, #85]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	ip, #1	@ <variable>.IsLastSeg,
	bne	.L170	@,
	bl	VC1_SetCodeInfo	@
	mov	r0, #1	@ D.42332,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L170:
	movw	r2, #:lower16:114368	@ tmp164,
	movt	r2, #:upper16:114368	@ tmp164,
	ldr	r0, [r0, r2]	@, <variable>.ChanID
	bl	VC1_ClearCurPacket	@
	ldrb	r2, [r4, #85]	@ zero_extendqisi2	@, <variable>.IsLastSeg
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.42332,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L166:
	movw	r5, #:lower16:113876	@ tmp168,
	movw	lr, #:lower16:113864	@ tmp170,
	movt	r5, #:upper16:113876	@ tmp168,
	movt	lr, #:upper16:113864	@ tmp170,
	movw	ip, #:lower16:113884	@ tmp172,
	movw	r2, #:lower16:113869	@ tmp174,
	movt	ip, #:upper16:113884	@ tmp172,
	movt	r2, #:upper16:113869	@ tmp174,
	movw	r4, #:lower16:113892	@ tmp177,
	movt	r4, #:upper16:113892	@ tmp177,
	mov	r3, #0	@ tmp169,
	str	r3, [r0, r5]	@ tmp169, <variable>.CodecInfo.stCurPacket.BsPhyAddr
	str	r3, [r0, r4]	@ tmp169, <variable>.CodecInfo.stCurPacket.StreamID
	str	r3, [r0, lr]	@ tmp169, <variable>.CodecInfo.stCurPacket.BsVirAddr
	str	r3, [r0, ip]	@ tmp169, <variable>.CodecInfo.stCurPacket.BsLength
	strb	r3, [r0, r2]	@ tmp169, <variable>.CodecInfo.stCurPacket.IsLastSeg
	bl	VC1_SetCodeInfo	@
	mov	r0, #1	@ D.42332,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L169:
	mov	r0, r4	@, pPacket
	movw	r1, #:lower16:.LC0	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.42332, pPacket
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	VC1_ReceivePacket, .-VC1_ReceivePacket
	.align	2
	.global	VC1_DecNormDiff6Tile
	.type	VC1_DecNormDiff6Tile, %function
VC1_DecNormDiff6Tile:
	.fnstart
.LFB1563:
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
	ldr	r9, [r1, #0]	@ i6.1401,* pi6
	mov	sl, r1	@ pi6, pi6
	mov	r5, r0	@ pBs, pBs
	mov	r6, #0	@ Invert,
.L172:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #3	@,
	subs	r7, r0, #0	@ D.40623,
	mov	r0, r5	@, pBs
	bne	.L185	@,
	bl	BsGet	@
	mov	r4, r0	@ iCode,
	cmp	r4, #1	@ iCode,
	mov	r1, r0	@, iCode
	mov	r0, r5	@, pBs
	bgt	.L186	@,
	bne	.L176	@,
	bl	BsGet	@
	subs	r8, r0, #0	@ D.40632,
	beq	.L177	@,
	cmp	r6, #0	@ Invert,
	mov	r6, r4	@ Invert, iCode
	beq	.L172	@,
.L184:
	str	r9, [sl, #0]	@ i6.1401,* pi6
	mov	r0, r7	@ D.40637, D.40623
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L185:
	mov	r4, #0	@ i6,
.L174:
	cmp	r6, #0	@ Invert,
	mov	r0, #1	@ D.40637,
	eorne	r4, r4, #63	@ i6, i6,
	str	r4, [sl, #0]	@ i6,* pi6
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L186:
	sub	r4, r4, #2	@ tmp146, iCode,
	mov	r3, #1	@ tmp147,
	mov	r4, r3, asl r4	@ i6, tmp147,
	b	.L174	@
.L176:
	mov	r0, r5	@, pBs
	mov	r1, #4	@,
	bl	BsGet	@
	cmp	r0, #255	@ iCode.1403,
	beq	.L184	@,
	movw	lr, #:lower16:.LANCHOR0	@ tmp153,
	movt	lr, #:upper16:.LANCHOR0	@ tmp153,
	add	ip, lr, r0, asl #2	@, tmp156, tmp153, iCode.1403,
	ldr	r4, [ip, #256]	@ i6, a2On4Off
	b	.L174	@
.L177:
	mov	r1, #5	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	movw	r2, #:lower16:.LANCHOR0	@ tmp148,
	movt	r2, #:upper16:.LANCHOR0	@ tmp148,
	add	r1, r2, r0, asl #2	@, tmp151, tmp148, i6,
	mov	r4, r0	@ i6,
	ldr	r3, [r1, #128]	@ iCode.1402, aCount
	cmp	r3, #2	@ iCode.1402,
	orreq	r4, r0, #32	@ i6, i6,
	beq	.L174	@,
	cmp	r3, #3	@ iCode.1402,
	strne	r4, [sl, #0]	@ i6,* pi6
	movne	r0, r8	@ D.40637, D.40632
	ldmnefd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	b	.L174	@
	.fnend
	.size	VC1_DecNormDiff6Tile, .-VC1_DecNormDiff6Tile
	.align	2
	.global	VC1_VopDQuant
	.type	VC1_VopDQuant, %function
VC1_VopDQuant:
	.fnstart
.LFB1562:
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
	cmp	r1, #2	@ DQUANT,
	mov	r4, r2	@ PQUANT, PQUANT
	mov	r5, r3	@ pVopDquant, pVopDquant
	mov	r7, r0	@ pBs, pBs
	beq	.L201	@,
	mov	r1, #1	@,
	bl	BsGet	@
	uxtb	r6, r0	@ D.40564,
	strb	r6, [r5, #0]	@ D.40564, <variable>.DQUANTFRM
	cmp	r6, #1	@ D.40564,
	beq	.L202	@,
.L191:
	mov	r0, #1	@,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L201:
	mov	r3, #1	@ tmp157,
	mov	r1, #3	@,
	strb	r3, [r5, #0]	@ tmp157, <variable>.DQUANTFRM
	strb	r3, [r5, #3]	@ tmp157, <variable>.UseAltQp
	bl	BsGet	@
	uxtb	r0, r0	@ D.40552,
	strb	r0, [r5, #4]	@ D.40552, <variable>.PQDIFF
	cmp	r0, #7	@ D.40552,
	addne	r4, r4, #1	@ tmp164, PQUANT,
	addne	r0, r0, r4	@ tmp166, D.40552, tmp164
	strneb	r0, [r5, #8]	@ tmp166, <variable>.ALTPQUANT
	beq	.L203	@,
.L190:
	mov	r2, #1	@ tmp168,
	mov	r0, #1	@,
	str	r2, [r5, #12]	@ tmp168, <variable>.QuantMode
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L202:
	mov	r1, #2	@,
	mov	r0, r7	@, pBs
	bl	BsGet	@
	uxtb	r1, r0	@ D.40569,
	strb	r1, [r5, #1]	@ D.40569, <variable>.DQPROFILE
	cmp	r1, #0	@ D.40569,
	streq	r6, [r5, #12]	@ D.40564, <variable>.QuantMode
	beq	.L193	@,
	cmp	r1, #2	@ D.40569,
	beq	.L204	@,
	cmp	r1, #1	@ D.40569,
	beq	.L205	@,
	cmp	r1, #3	@ D.40569,
	movne	r3, #0	@ tmp177,
	strne	r3, [r5, #12]	@ tmp177, <variable>.QuantMode
	beq	.L206	@,
.L193:
	ldr	r0, [r5, #0]	@ tmp180,* pVopDquant
	bic	ip, r0, #-16777216	@ tmp178, tmp180,
	bic	lr, ip, #255	@ tmp178, tmp178,
	cmp	lr, #768	@ tmp178,
	beq	.L191	@,
	mov	r1, #1	@ tmp181,
	mov	r0, r7	@, pBs
	strb	r1, [r5, #3]	@ tmp181, <variable>.UseAltQp
	mov	r1, #3	@,
	bl	BsGet	@
	uxtb	r3, r0	@ D.40607,
	strb	r3, [r5, #4]	@ D.40607, <variable>.PQDIFF
	cmp	r3, #7	@ D.40607,
	addne	r4, r4, #1	@ tmp186, PQUANT,
	addne	r3, r3, r4	@ tmp188, D.40607, tmp186
	strneb	r3, [r5, #8]	@ tmp188, <variable>.ALTPQUANT
	bne	.L191	@,
	mov	r0, r7	@, pBs
	mov	r1, #5	@,
	bl	BsGet	@
	uxtb	r2, r0	@ D.40611,
	strb	r2, [r5, #8]	@ D.40611, <variable>.ALTPQUANT
	strb	r2, [r5, #5]	@ D.40611, <variable>.ABSPQ
	b	.L191	@
.L206:
	mov	r1, r6	@, D.40564
	mov	r0, r7	@, pBs
	bl	BsGet	@
	uxtb	r2, r0	@ D.40595,
	strb	r2, [r5, #2]	@ D.40595, <variable>.DQBILEVEL
	cmp	r2, #0	@ D.40595,
	movne	r2, #10	@ iftmp.541,
	moveq	r2, #11	@ iftmp.541,
	str	r2, [r5, #12]	@ iftmp.541, <variable>.QuantMode
	b	.L193	@
.L203:
	mov	r1, #5	@,
	mov	r0, r7	@, pBs
	bl	BsGet	@
	uxtb	r1, r0	@ D.40557,
	strb	r1, [r5, #8]	@ D.40557, <variable>.ALTPQUANT
	strb	r1, [r5, #5]	@ D.40557, <variable>.ABSPQ
	b	.L190	@
.L204:
	mov	r0, r7	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.40577,
	strb	r0, [r5, #6]	@ D.40577, <variable>.DQSBEDGE
	add	ip, r0, #6	@ tmp173, D.40577,
	str	ip, [r5, #12]	@ tmp173, <variable>.QuantMode
	b	.L193	@
.L205:
	mov	r1, #2	@,
	mov	r0, r7	@, pBs
	bl	BsGet	@
	uxtb	r1, r0	@ D.40586,
	strb	r1, [r5, #7]	@ D.40586, <variable>.DQDBEDGE
	add	r3, r1, #2	@ tmp175, D.40586,
	str	r3, [r5, #12]	@ tmp175, <variable>.QuantMode
	b	.L193	@
	.fnend
	.size	VC1_VopDQuant, .-VC1_VopDQuant
	.align	2
	.global	Vc1SMPSeqHdr
	.type	Vc1SMPSeqHdr, %function
Vc1SMPSeqHdr:
	.fnstart
.LFB1531:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #32
	sub	sp, sp, #32	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	lr, r1, asl #3	@ tmp174, ByteLen,
	sub	r4, fp, #60	@ tmp264,,
	mov	r5, r2	@ pVc1Info, pVc1Info
	mov	r1, r0	@ pBitBuf, pBitBuf
	mov	r2, lr	@, tmp174
	mov	r0, r4	@, tmp264
	bl	BsInit	@
	mov	r1, #8	@,
	mov	r0, r4	@, tmp264
	bl	BsGet	@
	mov	r1, #8	@,
	mov	r7, r0	@ data,
	mov	r0, r4	@, tmp264
	bl	BsGet	@
	mov	r1, #8	@,
	mov	r6, r0	@ D.38719,
	mov	r0, r4	@, tmp264
	bl	BsGet	@
	mov	r1, #8	@,
	mov	ip, r0, asl #16	@ tmp179,,
	mov	r0, r4	@, tmp264
	add	r2, ip, r6, asl #8	@, data.1454, tmp179, D.38719,
	add	r6, r2, r7	@ data.1455, data.1454, data
	bl	BsGet	@
	mov	r1, #8	@,
	add	r0, r6, r0, asl #24	@, tmp182, data.1455,,
	str	r0, [r5, #24]	@ tmp182, <variable>.FrmWidth
	mov	r0, r4	@, tmp264
	bl	BsGet	@
	mov	r1, #8	@,
	mov	r7, r0	@ data.1457,
	mov	r0, r4	@, tmp264
	bl	BsGet	@
	mov	r1, #8	@,
	mov	r6, r0	@ D.38726,
	mov	r0, r4	@, tmp264
	bl	BsGet	@
	mov	r1, #8	@,
	mov	r3, r0, asl #16	@ tmp187,,
	mov	r0, r4	@, tmp264
	add	r6, r3, r6, asl #8	@, data.1458, tmp187, D.38726,
	bl	BsGet	@
	ldr	r3, [r5, #24]	@ D.38732, <variable>.FrmWidth
	add	r6, r6, r7	@ data.1459, data.1458, data.1457
	cmp	r3, #8192	@ D.38732,
	add	r0, r6, r0, asl #24	@, data.1460, data.1459,,
	str	r0, [r5, #28]	@ data.1460, <variable>.FrmHeight
	bgt	.L220	@,
	cmp	r0, #8192	@ data.1460,
	bgt	.L221	@,
	cmp	r3, #31	@ D.38732,
	ble	.L220	@,
	cmp	r0, #31	@ data.1460,
	ble	.L221	@,
	mov	r1, #2	@,
	mov	r0, r4	@, tmp264
	bl	BsGet	@
	uxtb	r1, r0	@ D.38745,
	strb	r1, [r5, #3]	@ D.38745, <variable>.SMPSeqSyntax.PROFILE
	cmp	r1, #1	@ D.38745,
	bhi	.L223	@,
	mov	r0, r4	@, tmp264
	mov	r1, #2	@,
	bl	BsGet	@
	subs	r6, r0, #0	@ D.38749,
	bne	.L223	@,
	mov	r1, #3	@,
	mov	r0, r4	@, tmp264
	bl	BsGet	@
	mov	r1, #5	@,
	strb	r0, [r5, #4]	@, <variable>.SMPSeqSyntax.FRMRTQ
	mov	r0, r4	@, tmp264
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #5]	@, <variable>.SMPSeqSyntax.BITRTQ
	mov	r0, r4	@, tmp264
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #6]	@, <variable>.SMPSeqSyntax.LOOPFILTER
	mov	r0, r4	@, tmp264
	bl	BsGet	@
	subs	r7, r0, #0	@ D.38758,
	movne	r0, r6	@, D.38749
	bne	.L222	@,
	mov	r1, #1	@,
	mov	r0, r4	@, tmp264
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #7]	@, <variable>.SMPSeqSyntax.MULTIRES
	mov	r0, r4	@, tmp264
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #8]	@, <variable>.SMPSeqSyntax.B16BITTRANSFORM
	mov	r0, r4	@, tmp264
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #9]	@, <variable>.SMPSeqSyntax.FASTUVMC
	mov	r0, r4	@, tmp264
	bl	BsGet	@
	mov	r1, #2	@,
	strb	r0, [r5, #10]	@, <variable>.SMPSeqSyntax.EXTENDED_MV
	mov	r0, r4	@, tmp264
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #11]	@, <variable>.SMPSeqSyntax.DQUANT
	mov	r0, r4	@, tmp264
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #12]	@, <variable>.SMPSeqSyntax.VSTRANSFORM
	mov	r0, r4	@, tmp264
	bl	BsGet	@
	cmp	r0, #0	@,
	bne	.L224	@,
	mov	r1, #1	@,
	mov	r0, r4	@, tmp264
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #13]	@, <variable>.SMPSeqSyntax.OVERLAP
	mov	r0, r4	@, tmp264
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #14]	@, <variable>.SMPSeqSyntax.SYNCMARKER
	mov	r0, r4	@, tmp264
	bl	BsGet	@
	ldrb	r3, [r5, #3]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.PROFILE, <variable>.SMPSeqSyntax.PROFILE
	mov	r1, #3	@,
	cmp	r3, #0	@ <variable>.SMPSeqSyntax.PROFILE,
	strb	r0, [r5, #15]	@, <variable>.SMPSeqSyntax.RANGERED
	mov	r0, r4	@, tmp264
	streqb	r3, [r5, #15]	@ <variable>.SMPSeqSyntax.PROFILE, <variable>.SMPSeqSyntax.RANGERED
	bl	BsGet	@
	mov	r1, #2	@,
	strb	r0, [r5, #16]	@, <variable>.SMPSeqSyntax.MAXBFRAMES
	mov	r0, r4	@, tmp264
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #17]	@, <variable>.SMPSeqSyntax.QUANTIZER
	mov	r0, r4	@, tmp264
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #18]	@, <variable>.SMPSeqSyntax.FINTERPFLAG
	mov	r0, r4	@, tmp264
	bl	BsGet	@
	mov	r0, r4	@, tmp264
	mov	r1, #32	@,
	bl	BsGet	@
	cmp	r0, #0	@ data.1468
	bne	.L225	@,
.L209:
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L225:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.38736,
	b	.L209	@
.L224:
	mov	r0, r7	@, D.38758
.L222:
	movw	r1, #:lower16:.LC2	@,
	ldr	r2, .L226	@,
	movt	r1, #:upper16:.LC2	@,
	movw	r3, #:lower16:.LC5	@,
	movt	r3, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38736,
	b	.L209	@
.L223:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC2	@,
	ldr	r2, .L226	@,
	movt	r1, #:upper16:.LC2	@,
	movw	r3, #:lower16:.LC5	@,
	movt	r3, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38736,
	b	.L209	@
.L221:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC2	@,
	ldr	r2, .L226	@,
	movt	r1, #:upper16:.LC2	@,
	movw	r3, #:lower16:.LC4	@,
	movt	r3, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38736,
	b	.L209	@
.L220:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC2	@,
	ldr	r2, .L226	@,
	movt	r1, #:upper16:.LC2	@,
	movw	r3, #:lower16:.LC3	@,
	movt	r3, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38736,
	b	.L209	@
.L227:
	.align	2
.L226:
	.word	.LANCHOR0+316
	.fnend
	.size	Vc1SMPSeqHdr, .-Vc1SMPSeqHdr
	.align	2
	.global	VC1_Vfmw_ParseAdvEntptHdr
	.type	VC1_Vfmw_ParseAdvEntptHdr, %function
VC1_Vfmw_ParseAdvEntptHdr:
	.fnstart
.LFB1569:
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
	mov	r1, #60	@,
	mov	r7, r0	@ pBs, pBs
	add	r0, r2, #188	@, pSyntax,
	mov	r4, r2	@ pSyntax, pSyntax
	bl	__memzero	@
	mov	r0, r7	@, pBs
	bl	BsPos	@
	mov	r1, #1	@,
	str	r0, [r4, #244]	@, <variable>.AdvEntSyntax.HdrLen
	mov	r0, r7	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #188]	@, <variable>.AdvEntSyntax.BROKEN_LINK
	mov	r0, r7	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #189]	@, <variable>.AdvEntSyntax.CLOSED_ENTRY
	mov	r0, r7	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #190]	@, <variable>.AdvEntSyntax.PANSCAN_FLAG
	mov	r0, r7	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #191]	@, <variable>.AdvEntSyntax.REFDIST_FLAG
	mov	r0, r7	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #192]	@, <variable>.AdvEntSyntax.LOOPFILTER
	mov	r0, r7	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #193]	@, <variable>.AdvEntSyntax.FASTUVMC
	mov	r0, r7	@, pBs
	bl	BsGet	@
	mov	r1, #2	@,
	strb	r0, [r4, #194]	@, <variable>.AdvEntSyntax.EXTENDED_MV
	mov	r0, r7	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #195]	@, <variable>.AdvEntSyntax.DQUANT
	mov	r0, r7	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #196]	@, <variable>.AdvEntSyntax.VSTRANSFORM
	mov	r0, r7	@, pBs
	bl	BsGet	@
	mov	r1, #2	@,
	strb	r0, [r4, #197]	@, <variable>.AdvEntSyntax.OVERLAP
	mov	r0, r7	@, pBs
	bl	BsGet	@
	ldrb	r3, [r4, #39]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.HRD_PARAM_FLAG, <variable>.AdvSeqSyntax.HRD_PARAM_FLAG
	cmp	r3, #1	@ <variable>.AdvSeqSyntax.HRD_PARAM_FLAG,
	strb	r0, [r4, #198]	@, <variable>.AdvEntSyntax.QUANTIZER
	beq	.L241	@,
.L229:
	mov	r0, r7	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	uxtb	r2, r0	@ D.41140,
	strb	r2, [r4, #199]	@ D.41140, <variable>.AdvEntSyntax.CODED_SIZE_FLAG
	cmp	r2, #1	@ D.41140,
	beq	.L242	@,
.L231:
	ldrh	r2, [r4, #238]	@ D.41154, <variable>.AdvEntSyntax.CODED_WIDTH
	ldrh	r3, [r4, #172]	@ D.41155, <variable>.AdvSeqSyntax.MAX_CODED_WIDTH
	cmp	r2, r3	@ D.41154, D.41155
	bhi	.L232	@,
	cmp	r2, #15	@ D.41154,
	bls	.L232	@,
.L233:
	ldrh	r2, [r4, #240]	@ D.41159, <variable>.AdvEntSyntax.CODED_HEIGHT
	ldrh	r3, [r4, #174]	@ D.41160, <variable>.AdvSeqSyntax.MAX_CODED_HEIGHT
	cmp	r2, r3	@ D.41159, D.41160
	bhi	.L234	@,
	cmp	r2, #15	@ D.41159,
	bls	.L234	@,
	ldrb	r1, [r4, #194]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.EXTENDED_MV, <variable>.AdvEntSyntax.EXTENDED_MV
	cmp	r1, #1	@ <variable>.AdvEntSyntax.EXTENDED_MV,
	beq	.L243	@,
.L236:
	mov	r0, r7	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	uxtb	r0, r0	@ D.41168,
	strb	r0, [r4, #201]	@ D.41168, <variable>.AdvEntSyntax.RANGE_MAPY_FLAG
	cmp	r0, #1	@ D.41168,
	beq	.L244	@,
.L237:
	mov	r1, #1	@,
	mov	r0, r7	@, pBs
	bl	BsGet	@
	uxtb	r1, r0	@ D.41175,
	strb	r1, [r4, #203]	@ D.41175, <variable>.AdvEntSyntax.RANGE_MAPUV_FLAG
	cmp	r1, #1	@ D.41175,
	beq	.L245	@,
.L238:
	mov	r0, r7	@, pBs
	bl	BsPos	@
	ldr	r2, [r4, #244]	@ <variable>.AdvEntSyntax.HdrLen, <variable>.AdvEntSyntax.HdrLen
	rsb	r3, r2, r0	@ tmp198, <variable>.AdvEntSyntax.HdrLen,
	mov	r0, #1	@,
	str	r3, [r4, #244]	@ tmp198, <variable>.AdvEntSyntax.HdrLen
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L234:
	ldrb	r1, [r4, #194]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.EXTENDED_MV, <variable>.AdvEntSyntax.EXTENDED_MV
	strh	r3, [r4, #240]	@ movhi	@ D.41160, <variable>.AdvEntSyntax.CODED_HEIGHT
	cmp	r1, #1	@ <variable>.AdvEntSyntax.EXTENDED_MV,
	bne	.L236	@,
.L243:
	mov	r0, r7	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #200]	@, <variable>.AdvEntSyntax.EXTENDED_DMV
	mov	r0, r7	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.41168,
	strb	r0, [r4, #201]	@ D.41168, <variable>.AdvEntSyntax.RANGE_MAPY_FLAG
	cmp	r0, #1	@ D.41168,
	bne	.L237	@,
.L244:
	mov	r1, #3	@,
	mov	r0, r7	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #202]	@, <variable>.AdvEntSyntax.RANGE_MAPY
	mov	r0, r7	@, pBs
	bl	BsGet	@
	uxtb	r1, r0	@ D.41175,
	strb	r1, [r4, #203]	@ D.41175, <variable>.AdvEntSyntax.RANGE_MAPUV_FLAG
	cmp	r1, #1	@ D.41175,
	bne	.L238	@,
.L245:
	mov	r0, r7	@, pBs
	mov	r1, #3	@,
	bl	BsGet	@
	strb	r0, [r4, #204]	@, <variable>.AdvEntSyntax.RANGE_MAPUV
	b	.L238	@
.L232:
	strh	r3, [r4, #238]	@ movhi	@ D.41155, <variable>.AdvEntSyntax.CODED_WIDTH
	b	.L233	@
.L241:
	ldrb	r0, [r4, #40]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.HRD_NUM_LEAKY_BUCKETS, <variable>.AdvSeqSyntax.HRD_NUM_LEAKY_BUCKETS
	cmp	r0, #0	@ <variable>.AdvSeqSyntax.HRD_NUM_LEAKY_BUCKETS,
	beq	.L229	@,
	mov	r6, r4	@ ivtmp.1496, pSyntax
	mov	r5, #0	@ i,
.L230:
	mov	r1, #8	@,
	mov	r0, r7	@, pBs
	bl	BsGet	@
	ldrb	r1, [r4, #40]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.HRD_NUM_LEAKY_BUCKETS, <variable>.AdvSeqSyntax.HRD_NUM_LEAKY_BUCKETS
	add	r5, r5, #1	@ i, i,
	cmp	r1, r5	@ <variable>.AdvSeqSyntax.HRD_NUM_LEAKY_BUCKETS, i
	strb	r0, [r6, #205]	@, <variable>.AdvEntSyntax.HRD_FULLNESS
	add	r6, r6, #1	@ ivtmp.1496, ivtmp.1496,
	bgt	.L230	@,
	mov	r0, r7	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	uxtb	r2, r0	@ D.41140,
	strb	r2, [r4, #199]	@ D.41140, <variable>.AdvEntSyntax.CODED_SIZE_FLAG
	cmp	r2, #1	@ D.41140,
	bne	.L231	@,
.L242:
	mov	r1, #12	@,
	mov	r0, r7	@, pBs
	bl	BsGet	@
	mov	r1, #12	@,
	add	ip, r0, #1	@ tmp185,,
	mov	r0, r7	@, pBs
	mov	r2, ip, asl #1	@ tmp187, tmp185,
	strh	r2, [r4, #238]	@ movhi	@ tmp187, <variable>.AdvEntSyntax.CODED_WIDTH
	bl	BsGet	@
	add	r3, r0, #1	@ tmp188,,
	mov	ip, r3, asl #1	@ tmp190, tmp188,
	strh	ip, [r4, #240]	@ movhi	@ tmp190, <variable>.AdvEntSyntax.CODED_HEIGHT
	b	.L231	@
	.fnend
	.size	VC1_Vfmw_ParseAdvEntptHdr, .-VC1_Vfmw_ParseAdvEntptHdr
	.align	2
	.global	VC1_RecordSlcStream
	.type	VC1_RecordSlcStream, %function
VC1_RecordSlcStream:
	.fnstart
.LFB1586:
	@ args = 0, pretend = 0, frame = 8
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
	movw	r7, #23316	@ tmp147,
	ldr	r3, [r0, #3128]	@ pBs, <variable>.pBs
	ldr	r6, [r0, r7]	@ D.42059, <variable>.SlcNum
	mov	r4, r0	@ pCodecInf, pCodecInf
	str	r1, [fp, #-48]	@ pSyntax, %sfp
	movw	r9, #23320	@ tmp156,
	mov	r7, r6, asl #1	@ tmp399, D.42059,
	add	r5, r7, r6	@ tmp151, tmp399, D.42059
	add	ip, r5, #1	@ tmp172, tmp151,
	add	r5, r0, r5, asl #4	@, tmp153, pCodecInf, tmp151,
	add	ip, r0, ip, asl #4	@, tmp175, pCodecInf, tmp172,
	movw	r0, #23328	@ tmp148,
	strb	r6, [r5, r0]	@ D.42059, <variable>.SlcNo
	add	r1, ip, #23296	@ tmp176, tmp175,
	ldr	r0, [r3, #24]	@ <variable>.TotalPos, <variable>.TotalPos
	add	r1, r1, #24	@ tmp176, tmp176,
	add	r8, r5, #23296	@ tmp154, tmp153,
	add	sl, r5, #23296	@ tmp162, tmp153,
	cmp	r0, #0	@ <variable>.TotalPos,
	add	lr, r0, #7	@ tmp166, <variable>.TotalPos,
	add	r8, r8, #32	@ tmp154, tmp154,
	add	sl, sl, #24	@ tmp162, tmp162,
	movlt	r0, lr	@ <variable>.TotalPos, tmp166
	add	r0, r2, r0, asr #3	@, tmp168, pCurBsRealStart, <variable>.TotalPos,
	str	r0, [r5, r9]	@ tmp168, <variable>.pStream
	ldr	r2, [r3, #24]	@ <variable>.TotalPos, <variable>.TotalPos
	and	lr, r2, #7	@ tmp178, <variable>.TotalPos,
	str	lr, [ip, r9]	@ tmp178, <variable>.BitOffset
	ldr	r2, [r3, #16]	@ <variable>.BsLen, <variable>.BsLen
	ldr	ip, [r3, #24]	@ <variable>.TotalPos, <variable>.TotalPos
	rsb	lr, ip, r2, asl #3	@, tmp190, <variable>.TotalPos, <variable>.BsLen,
	str	lr, [r1, #4]	@ tmp190, <variable>.Len
	bl	MEM_Vir2Phy	@
	movw	ip, #35640	@ tmp213,
	movw	r2, #35616	@ tmp215,
	add	r3, r5, #23296	@ tmp212, tmp153,
	add	r3, r3, #64	@ tmp212, tmp212,
	str	r0, [r8, #4]	@, <variable>.Phy_addr
	movw	r0, #23360	@ tmp206,
	ldr	r1, [r4, ip]	@ <variable>.stCurPacket.StreamID, <variable>.stCurPacket.StreamID
	str	r1, [r5, r0]	@ <variable>.stCurPacket.StreamID, <variable>.StreamID
	ldr	r2, [r4, r2]	@ D.42079, <variable>.stCurPacket.BsVirAddr
	cmp	r2, #0	@ D.42079,
	beq	.L247	@,
	movw	r1, #35628	@ tmp216,
	ldr	r0, [r4, r1]	@ <variable>.stCurPacket.BsPhyAddr, <variable>.stCurPacket.BsPhyAddr
	cmp	r0, #0	@ <variable>.stCurPacket.BsPhyAddr,
	bne	.L257	@,
.L247:
	add	r2, r7, r6	@ tmp264, tmp399, D.42059
	mov	r3, #0	@ tmp268,
	add	r2, r4, r2, asl #4	@, tmp266, pCodecInf, tmp264,
	add	ip, r2, #23296	@ tmp299, tmp266,
	add	r5, ip, #24	@ tmp267, tmp267,
	add	r0, ip, #56	@ tmp275, tmp275,
	add	r1, ip, #48	@ tmp291, tmp291,
	add	ip, ip, #64	@ tmp299, tmp299,
	str	r3, [r5, #4]	@ tmp268, <variable>.pStream2
	movw	r5, #23352	@ tmp269,
	str	r3, [ip, #4]	@ tmp268, <variable>.StreamID2
	str	r3, [r2, r5]	@ tmp268, <variable>.BitOffset2
	str	r3, [r0, #4]	@ tmp268, <variable>.Len2
	str	r3, [r1, #4]	@ tmp268, <variable>.Phy_addr2
.L248:
	movw	r3, #23232	@ tmp310,
	movw	r1, #23236	@ tmp309,
	ldr	r0, [r4, r3]	@ <variable>.MbWidth, <variable>.MbWidth
	ldr	r3, [r4, r1]	@ D.42097, <variable>.MbHeight
	ldrb	r5, [r4, #8]	@ zero_extendqisi2	@ <variable>.Is2ndFld, <variable>.Is2ndFld
	mul	ip, r0, r3	@ tmp311, <variable>.MbWidth, D.42097
	cmp	r5, #0	@ <variable>.Is2ndFld,
	sub	ip, ip, #1	@ totalMbMin1, tmp311,
	beq	.L251	@,
	ldr	r5, [fp, #-48]	@, %sfp
	add	r2, r7, r6	@ tmp317, tmp399, D.42059
	add	r3, r3, #1	@ tmp321, D.42097,
	add	r0, r5, r2, asl #2	@, tmp319,, tmp317,
	add	r2, r4, r2, asl #4	@, tmp332, pCodecInf, tmp317,
	add	r3, r3, r3, lsr #31	@, tmp324, tmp321, tmp321,
	ldr	r5, [r0, #528]	@ <variable>.SLICE_ADDR, <variable>.SLICE_ADDR
	sub	r3, r5, r3, asr #1	@ D.42107, <variable>.SLICE_ADDR, tmp324,
	movw	r5, #23344	@ tmp327,
	cmp	r3, #0	@ D.42107,
	str	r3, [r2, r5]	@ D.42107, <variable>.SlcEndMbn
	ble	.L252	@,
	cmp	ip, r3	@ totalMbMin1, D.42107
	bcc	.L258	@,
.L252:
	add	r6, r7, r6	@ tmp370, tmp399, D.42059
	add	r0, r6, #1	@ tmp371, tmp370,
	add	r3, r4, r0, asl #4	@, tmp374, pCodecInf, tmp371,
	add	r1, r3, #23296	@ tmp375, tmp374,
	add	r2, r1, #24	@ tmp375, tmp375,
	ldr	ip, [r2, #4]	@ <variable>.Len, <variable>.Len
	cmp	ip, #0	@ <variable>.Len,
	ble	.L254	@,
	add	r6, r4, r6, asl #4	@, tmp382, pCodecInf, tmp370,
	add	r1, r6, #23296	@ tmp383, tmp382,
	add	r2, r1, #24	@ tmp383, tmp383,
	ldr	ip, [r2, #4]	@ <variable>.pStream2, <variable>.pStream2
	cmp	ip, #0	@ <variable>.pStream2,
	beq	.L255	@,
	add	r6, r6, #23296	@ tmp391, tmp382,
	add	r6, r6, #56	@ tmp391, tmp391,
	ldr	r3, [r6, #4]	@ <variable>.Len2, <variable>.Len2
	cmp	r3, #0	@ <variable>.Len2,
	ble	.L254	@,
.L255:
	movw	r1, #23316	@ tmp394,
	mov	r0, #1	@ D.42115,
	ldr	r2, [r4, r1]	@ <variable>.SlcNum, <variable>.SlcNum
	add	ip, r2, r0	@ tmp397, <variable>.SlcNum,
	str	ip, [r4, r1]	@ tmp397, <variable>.SlcNum
.L253:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L251:
	add	r3, r7, r6	@ tmp348, tmp399, D.42059
	ldr	r0, [fp, #-48]	@, %sfp
	movw	r1, #23344	@ tmp352,
	add	r2, r0, r3, asl #2	@, tmp350,, tmp348,
	add	r0, r4, r3, asl #4	@, tmp357, pCodecInf, tmp348,
	ldr	r3, [r2, #528]	@ temp.1532, <variable>.SLICE_ADDR
	cmp	ip, r3	@ totalMbMin1, temp.1532
	str	r3, [r0, r1]	@ temp.1532, <variable>.SlcEndMbn
	bcs	.L252	@,
	ldr	r2, [r2, #528]	@ <variable>.SLICE_ADDR, <variable>.SLICE_ADDR
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC8	@,
	str	ip, [sp, #0]	@ totalMbMin1,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.42115, <variable>.Is2ndFld
	b	.L253	@
.L257:
	movw	r0, #23352	@ tmp225,
	mov	ip, #0	@ tmp232,
	str	ip, [r5, r0]	@ tmp232, <variable>.BitOffset2
	movw	r0, #35636	@ tmp240,
	str	r2, [sl, #4]	@ D.42079, <variable>.pStream2
	add	r2, r5, #23296	@ tmp231, tmp153,
	ldr	ip, [r4, r0]	@ <variable>.stCurPacket.BsLength, <variable>.stCurPacket.BsLength
	add	r2, r2, #56	@ tmp231, tmp231,
	add	r5, r5, #23296	@ tmp249, tmp153,
	add	r5, r5, #48	@ tmp249, tmp249,
	mov	r0, ip, asl #3	@ tmp242, <variable>.stCurPacket.BsLength,
	str	r0, [r2, #4]	@ tmp242, <variable>.Len2
	ldr	ip, [r4, r1]	@ <variable>.stCurPacket.BsPhyAddr, <variable>.stCurPacket.BsPhyAddr
	movw	r1, #35644	@ tmp259,
	str	ip, [r5, #4]	@ <variable>.stCurPacket.BsPhyAddr, <variable>.Phy_addr2
	ldr	r2, [r4, r1]	@ <variable>.stCurPacket.StreamID, <variable>.stCurPacket.StreamID
	str	r2, [r3, #4]	@ <variable>.stCurPacket.StreamID, <variable>.StreamID2
	b	.L248	@
.L258:
	ldr	lr, [r4, r1]	@ <variable>.MbHeight, <variable>.MbHeight
	movw	r1, #:lower16:.LC7	@,
	ldr	r2, [r0, #528]	@ <variable>.SLICE_ADDR, <variable>.SLICE_ADDR
	movt	r1, #:upper16:.LC7	@,
	mov	r0, #1	@,
	str	lr, [sp, #0]	@ <variable>.MbHeight,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.42115,
	b	.L253	@
.L254:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.42115,
	b	.L253	@
	.fnend
	.size	VC1_RecordSlcStream, .-VC1_RecordSlcStream
	.align	2
	.global	VC1_Vfmw_next_start_code
	.type	VC1_Vfmw_next_start_code, %function
VC1_Vfmw_next_start_code:
	.fnstart
.LFB1584:
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
	mov	r4, r0	@ pBs, pBs
	bl	BsToNextByte	@
	mov	r0, r4	@, pBs
	bl	BsResidBits	@
	add	r3, r0, #7	@ tmp142, D.42035,
	cmp	r0, #0	@ D.42035,
	movlt	r0, r3	@ D.42035, tmp142
	mov	r3, r0, asr #3	@ tmp143, D.42035,
	sub	r6, r3, #3	@ RemainByte, tmp143,
	cmp	r6, #0	@ RemainByte,
	ble	.L260	@,
	mov	r0, r4	@, pBs
	mov	r1, #24	@,
	and	r7, r3, #1	@ tmp149, tmp143,
	bl	BsShow	@
	cmp	r0, #1	@ D.42037,
	mov	r3, r0	@ D.42037,
	beq	.L274	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r5, #1	@ i,
	cmp	r6, r5	@ RemainByte, i
	ble	.L260	@,
	cmp	r7, #0	@ tmp149,
	beq	.L263	@,
	mov	r0, r4	@, pBs
	mov	r1, #24	@,
	bl	BsShow	@
	cmp	r0, r5	@ D.42037,
	mov	r3, r0	@ D.42037,
	beq	.L274	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r5, #2	@ i,
	cmp	r6, r5	@ RemainByte, i
	bgt	.L263	@,
	b	.L260	@
.L261:
	bl	BsSkip	@
	mov	r1, #24	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	mov	r1, #8	@,
	mov	r3, r0	@ D.42037,
	cmp	r3, #1	@ D.42037,
	mov	r0, r4	@, pBs
	beq	.L274	@,
	bl	BsSkip	@
	cmp	r6, r5	@ RemainByte, i
	ble	.L260	@,
.L263:
	mov	r1, #24	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	add	r5, r5, #1	@ tmp150, i,
	mov	r1, #8	@,
	add	r5, r5, #1	@ i, tmp150,
	mov	r3, r0	@ D.42037,
	cmp	r3, #1	@ D.42037,
	mov	r0, r4	@, pBs
	bne	.L261	@,
.L274:
	mov	r0, r3	@ D.42040, D.42037
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L260:
	mov	r0, #0	@ D.42040,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	VC1_Vfmw_next_start_code, .-VC1_Vfmw_next_start_code
	.align	2
	.global	VC1_DecIntCompField
	.type	VC1_DecIntCompField, %function
VC1_DecIntCompField:
	.fnstart
.LFB1577:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #32
	sub	sp, sp, #32	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	ldr	r5, .L277	@ tmp139,
	mov	r4, r0	@ pBs, pBs
	sub	ip, fp, #52	@ tmp138,,
	ldmia	r5!, {r0, r1, r2, r3}	@ tmp150,,,,
	mov	lr, ip	@ tmp151, tmp138
	stmia	lr!, {r0, r1, r2, r3}	@ tmp151,,,,
	ldmia	r5, {r0, r1, r2, r3}	@ tmp150,,,,
	stmia	lr, {r0, r1, r2, r3}	@ tmp151,,,,
	mov	r1, #2	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	sub	r2, fp, #20	@,,
	add	r3, r2, r0, asl #3	@, tmp142,,,
	mov	r0, r4	@, pBs
	ldr	r4, [r3, #-32]	@ Code, <variable>.Code
	ldr	r1, [r3, #-28]	@, <variable>.Len
	bl	BsSkip	@
	mov	r0, r4	@, Code
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L278:
	.align	2
.L277:
	.word	.LANCHOR0+332
	.fnend
	.size	VC1_DecIntCompField, .-VC1_DecIntCompField
	.align	2
	.global	VC1_DecRefdist
	.type	VC1_DecRefdist, %function
VC1_DecRefdist:
	.fnstart
.LFB1576:
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
	mov	r1, #5	@,
	mov	r5, r0	@ pBs, pBs
	bl	BsShow	@
	cmp	r0, #23	@ Code,
	bgt	.L280	@,
	mov	r4, r0, asr #3	@ Code.1610, Code,
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	mov	r0, r4	@, Len
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L280:
	cmp	r0, #27	@ Code,
	movle	r4, #3	@ Len,
	ble	.L283	@,
	cmp	r0, #29	@ Code,
	movle	r4, #4	@ Len,
	movgt	r4, #5	@ Len,
.L283:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, Len
	bl	BsSkip	@
	mov	r0, r4	@, Len
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	VC1_DecRefdist, .-VC1_DecRefdist
	.align	2
	.global	VC1_DecAdvPtype
	.type	VC1_DecAdvPtype, %function
VC1_DecAdvPtype:
	.fnstart
.LFB1571:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	mov	r1, #4	@,
	mov	r4, r0	@ pBs, pBs
	bl	BsShow	@
	cmp	r0, #7	@ Code.1634,
	movle	r1, #1	@ Len,
	movle	r5, r1	@ Code, Len
	ble	.L288	@,
	cmp	r0, #11	@ Code.1634,
	movle	r1, #2	@ Len,
	movle	r5, r1	@ Code, Len
	ble	.L288	@,
	cmp	r0, #13	@ Code.1634,
	movle	r1, #3	@ Len,
	movle	r5, #0	@ Code,
	ble	.L288	@,
	cmp	r0, #14	@ Code.1634,
	mov	r1, #4	@ Len,
	movne	r5, #5	@ Code,
	moveq	r5, r1	@ Code, Len
.L288:
	mov	r0, r4	@, pBs
	bl	BsSkip	@
	mov	r0, r5	@, Code
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	VC1_DecAdvPtype, .-VC1_DecAdvPtype
	.align	2
	.global	VC1_DecFcm
	.type	VC1_DecFcm, %function
VC1_DecFcm:
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
	mov	r1, #2	@,
	mov	r5, r0	@ pBs, pBs
	bl	BsShow	@
	cmp	r0, #1	@ Code,
	mov	r4, r0	@ Code,
	ble	.L297	@,
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsSkip	@
	mov	r0, r4	@, Code
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L297:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	mov	r4, #0	@ Code,
	bl	BsSkip	@
	mov	r0, r4	@, Code
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	VC1_DecFcm, .-VC1_DecFcm
	.align	2
	.global	VC1_Vfmw_ParseAdvSeqHdr
	.type	VC1_Vfmw_ParseAdvSeqHdr, %function
VC1_Vfmw_ParseAdvSeqHdr:
	.fnstart
.LFB1568:
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
	mov	r1, #172	@,
	mov	r5, r0	@ pBs, pBs
	add	r0, r2, #16	@, pSyntax,
	mov	r4, r2	@ pSyntax, pSyntax
	bl	__memzero	@
	mov	r0, r5	@, pBs
	bl	BsPos	@
	mov	r1, #2	@,
	mov	r6, r1	@ tmp214,
	str	r0, [r4, #184]	@, <variable>.AdvSeqSyntax.HdrLen
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r6, [r4, #16]	@ tmp214, <variable>.AdvSeqSyntax.PROFILE
	mov	r1, #3	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, r6	@, tmp214
	strb	r0, [r4, #17]	@, <variable>.AdvSeqSyntax.LEVEL
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #3	@,
	strb	r0, [r4, #18]	@, <variable>.AdvSeqSyntax.CHROMFORMAT
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #5	@,
	strb	r0, [r4, #19]	@, <variable>.AdvSeqSyntax.FRMRTQ_POSTPROC
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #20]	@, <variable>.AdvSeqSyntax.BITRTQ_POSTPROC
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #12	@,
	strb	r0, [r4, #21]	@, <variable>.AdvSeqSyntax.POSTPROCFLAG
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #12	@,
	uxth	ip, r0	@ D.40989,
	mov	r0, r5	@, pBs
	add	r2, ip, #1	@ tmp222, D.40989,
	mov	r3, r2, asl #1	@ tmp224, tmp222,
	strh	r3, [r4, #172]	@ movhi	@ tmp224, <variable>.AdvSeqSyntax.MAX_CODED_WIDTH
	bl	BsGet	@
	mov	r1, #1	@,
	uxth	ip, r0	@ D.40995,
	mov	r0, r5	@, pBs
	add	r2, ip, r1	@ tmp226, D.40995,
	mov	r3, r2, asl r1	@ tmp228, tmp226,
	strh	r3, [r4, #174]	@ movhi	@ tmp228, <variable>.AdvSeqSyntax.MAX_CODED_HEIGHT
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #22]	@, <variable>.AdvSeqSyntax.PULLDOWN
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #23]	@, <variable>.AdvSeqSyntax.INTERLACE
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #24]	@, <variable>.AdvSeqSyntax.TFCNTRFLAG
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, r6	@, tmp214
	strb	r0, [r4, #25]	@, <variable>.AdvSeqSyntax.FINTERPFLAG
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	uxtb	r6, r0	@ D.41010,
	strb	r6, [r4, #26]	@ D.41010, <variable>.AdvSeqSyntax.DISPLAY_EXT
	cmp	r6, #1	@ D.41010,
	beq	.L310	@,
	ldrh	r3, [r4, #172]	@, <variable>.AdvSeqSyntax.MAX_CODED_WIDTH
	ldrh	lr, [r4, #174]	@, <variable>.AdvSeqSyntax.MAX_CODED_HEIGHT
	strh	r3, [r4, #176]	@ movhi	@, <variable>.AdvSeqSyntax.DISP_HORIZ_SIZE
	strh	lr, [r4, #178]	@ movhi	@, <variable>.AdvSeqSyntax.DISP_VERT_SIZE
.L303:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	uxtb	r2, r0	@ D.41066,
	strb	r2, [r4, #39]	@ D.41066, <variable>.AdvSeqSyntax.HRD_PARAM_FLAG
	cmp	r2, #1	@ D.41066,
	beq	.L311	@,
.L304:
	mov	r0, r5	@, pBs
	bl	BsPos	@
	ldr	r1, [r4, #184]	@ <variable>.AdvSeqSyntax.HdrLen, <variable>.AdvSeqSyntax.HdrLen
	mov	r3, #1	@ D.41075,
	rsb	r2, r1, r0	@ tmp261, <variable>.AdvSeqSyntax.HdrLen,
	str	r2, [r4, #184]	@ tmp261, <variable>.AdvSeqSyntax.HdrLen
.L306:
	mov	r0, r3	@, D.41075
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L311:
	mov	r1, #5	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r1, r0	@ D.41071,
	strb	r1, [r4, #40]	@ D.41071, <variable>.AdvSeqSyntax.HRD_NUM_LEAKY_BUCKETS
	cmp	r1, #31	@ D.41071,
	movhi	r3, #0	@ D.41075,
	bhi	.L306	@,
	mov	r1, #4	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #4	@,
	strb	r0, [r4, #41]	@, <variable>.AdvSeqSyntax.BIT_RATE_EXPONENT
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	ip, [r4, #40]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.HRD_NUM_LEAKY_BUCKETS, <variable>.AdvSeqSyntax.HRD_NUM_LEAKY_BUCKETS
	cmp	ip, #0	@ <variable>.AdvSeqSyntax.HRD_NUM_LEAKY_BUCKETS,
	strb	r0, [r4, #42]	@, <variable>.AdvSeqSyntax.BUFFER_SIZE_EXPONENT
	beq	.L304	@,
	mov	r6, r4	@ ivtmp.1686, pSyntax
	mov	r7, #0	@ i,
.L307:
	mov	r1, #16	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #16	@,
	add	r7, r7, #1	@ i, i,
	strh	r0, [r6, #44]	@ movhi	@, <variable>.AdvSeqSyntax.HRD_RATE
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r3, [r4, #40]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.HRD_NUM_LEAKY_BUCKETS, <variable>.AdvSeqSyntax.HRD_NUM_LEAKY_BUCKETS
	cmp	r3, r7	@ <variable>.AdvSeqSyntax.HRD_NUM_LEAKY_BUCKETS, i
	strh	r0, [r6, #108]	@ movhi	@, <variable>.AdvSeqSyntax.HRD_BUFFER
	add	r6, r6, #2	@ ivtmp.1686, ivtmp.1686,
	bgt	.L307	@,
	b	.L304	@
.L310:
	mov	r1, #14	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #14	@,
	add	r2, r0, #1	@ tmp235,,
	mov	r0, r5	@, pBs
	strh	r2, [r4, #176]	@ movhi	@ tmp235, <variable>.AdvSeqSyntax.DISP_HORIZ_SIZE
	bl	BsGet	@
	mov	r1, r6	@, D.41010
	add	r3, r0, #1	@ tmp237,,
	mov	r0, r5	@, pBs
	strh	r3, [r4, #178]	@ movhi	@ tmp237, <variable>.AdvSeqSyntax.DISP_VERT_SIZE
	bl	BsGet	@
	uxtb	r0, r0	@ D.41021,
	strb	r0, [r4, #27]	@ D.41021, <variable>.AdvSeqSyntax.ASPECT_RATIO_FLAG
	cmp	r0, #1	@ D.41021,
	beq	.L312	@,
.L300:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r1, r0	@ D.41035,
	strb	r1, [r4, #31]	@ D.41035, <variable>.AdvSeqSyntax.FRAMERATE_FLAG
	cmp	r1, #1	@ D.41035,
	beq	.L313	@,
.L301:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	uxtb	r0, r0	@ D.41052,
	strb	r0, [r4, #35]	@ D.41052, <variable>.AdvSeqSyntax.COLOR_FORMAT_FLAG
	cmp	r0, #1	@ D.41052,
	bne	.L303	@,
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #8	@,
	strb	r0, [r4, #36]	@, <variable>.AdvSeqSyntax.COLOR_PRIM
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #8	@,
	strb	r0, [r4, #37]	@, <variable>.AdvSeqSyntax.TRANSFER_CHAR
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #38]	@, <variable>.AdvSeqSyntax.MATRIX_COEF
	b	.L303	@
.L313:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	ip, r0	@ D.41040,
	strb	ip, [r4, #32]	@ D.41040, <variable>.AdvSeqSyntax.FRAMERATEIND
	cmp	ip, #0	@ D.41040,
	bne	.L302	@,
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #4	@,
	strb	r0, [r4, #33]	@, <variable>.AdvSeqSyntax.FRAMERATENR
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #34]	@, <variable>.AdvSeqSyntax.FRAMERATEDR
	b	.L301	@
.L312:
	mov	r1, #4	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r1, r0	@ D.41026,
	strb	r1, [r4, #28]	@ D.41026, <variable>.AdvSeqSyntax.ASPECT_RATIO
	cmp	r1, #15	@ D.41026,
	bne	.L300	@,
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #8	@,
	strb	r0, [r4, #29]	@, <variable>.AdvSeqSyntax.ASPECT_HORIZ_SIZE
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #30]	@, <variable>.AdvSeqSyntax.ASPECT_VERT_SIZE
	b	.L300	@
.L302:
	mov	r0, r5	@, pBs
	mov	r1, #16	@,
	bl	BsGet	@
	strh	r0, [r4, #180]	@ movhi	@, <variable>.AdvSeqSyntax.FRAMERATEXP
	b	.L301	@
	.fnend
	.size	VC1_Vfmw_ParseAdvSeqHdr, .-VC1_Vfmw_ParseAdvSeqHdr
	.align	2
	.global	VC1_DecBfraction
	.type	VC1_DecBfraction, %function
VC1_DecBfraction:
	.fnstart
.LFB1561:
	@ args = 0, pretend = 0, frame = 224
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #228
	sub	sp, sp, #228	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	ldr	ip, .L319	@ tmp144,
	mov	r4, r0	@ pBs, pBs
	str	r1, [fp, #-248]	@ pScaleFactor, %sfp
	sub	r1, fp, #100	@,,
	str	r1, [fp, #-264]	@, %sfp
	mov	r6, ip	@ tmp182, tmp144
	sub	r5, fp, #72	@ tmp143,,
	ldmia	r6!, {r0, r1, r2, r3}	@ tmp182,,,,
	add	lr, ip, #28	@ tmp147, tmp144,
	add	r8, ip, #56	@ tmp150, tmp144,
	sub	sl, fp, #188	@ tmp149,,
	sub	r7, fp, #244	@,,
	str	r7, [fp, #-256]	@, %sfp
	sub	r7, fp, #132	@,,
	str	r7, [fp, #-260]	@, %sfp
	stmia	r5!, {r0, r1, r2, r3}	@ tmp143,,,,
	add	r9, ip, #112	@ tmp153, tmp144,
	ldmia	r6, {r0, r1, r2}	@ tmp182,,,
	add	ip, ip, #168	@ tmp156, tmp144,
	stmia	r5, {r0, r1, r2}	@ tmp183,,,
	ldr	r5, [fp, #-264]	@, %sfp
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp184,,,,
	stmia	r5!, {r0, r1, r2, r3}	@,,,,
	ldmia	lr, {r0, r1, r2}	@ tmp184,,,
	stmia	r5, {r0, r1, r2}	@ tmp185,,,
	mov	r5, sl	@ tmp187, tmp149
	ldmia	r8!, {r0, r1, r2, r3}	@ tmp186,,,,
	stmia	r5!, {r0, r1, r2, r3}	@ tmp187,,,,
	mov	lr, r5	@ tmp189, tmp187
	ldmia	r8!, {r0, r1, r2, r3}	@ tmp188,,,,
	ldr	r5, [fp, #-256]	@ tmp193, %sfp
	stmia	lr!, {r0, r1, r2, r3}	@ tmp189,,,,
	ldmia	r8!, {r0, r1, r2, r3}	@ tmp190,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp189,,,,
	ldmia	r8, {r0, r1}	@ tmp190,,
	stmia	lr, {r0, r1}	@ tmp191,,
	ldmia	r9!, {r0, r1, r2, r3}	@ tmp192,,,,
	stmia	r5!, {r0, r1, r2, r3}	@ tmp193,,,,
	mov	lr, r5	@ tmp195, tmp193
	ldmia	r9!, {r0, r1, r2, r3}	@ tmp194,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp195,,,,
	ldmia	r9!, {r0, r1, r2, r3}	@ tmp196,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp195,,,,
	ldmia	r9, {r0, r1}	@ tmp196,,
	stmia	lr, {r0, r1}	@ tmp197,,
	mov	lr, r7	@ tmp199,
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp198,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp199,,,,
	ldmia	ip, {r0, r1, r2, r3}	@ tmp198,,,,
	stmia	lr, {r0, r1, r2, r3}	@ tmp199,,,,
	mov	r0, r4	@, pBs
	mov	r1, #3	@,
	bl	BsShow	@
	cmp	r0, #6	@ Code,
	mov	r5, r0	@ Code,
	ble	.L318	@,
	mov	r0, r4	@, pBs
	mov	r1, #7	@,
	bl	BsGet	@
	sub	ip, fp, #44	@,,
	sub	r3, r0, #112	@ D.40540, Code.1713,
	and	r7, r0, #15	@ tmp165, Code.1713,
	add	r0, r7, #7	@ BfracIdx, tmp165,
	add	r5, ip, r3, asl #2	@, tmp168,, D.40540,
	ldr	r3, [r5, #-200]	@ Denominator, DenLongVLC
	ldr	r2, [r5, #-144]	@ Numerator, NumLongVLC
.L316:
	sub	r5, fp, #44	@,,
	ldr	r7, [fp, #-248]	@, %sfp
	add	r3, r5, r3, asl #2	@, tmp177,, Denominator,
	ldr	r1, [r3, #-92]	@ tmp179, Inverse
	mul	lr, r2, r1	@ tmp180, Numerator, tmp179
	str	lr, [r7, #0]	@ tmp180,
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L318:
	mov	r0, r4	@, pBs
	mov	r1, #3	@,
	bl	BsSkip	@
	sub	r0, fp, #44	@,,
	add	r2, r0, r5, asl #2	@, tmp159,, Code,
	mov	r0, r5	@ BfracIdx, Code
	ldr	r3, [r2, #-56]	@ Denominator, DenShortVLC
	ldr	r2, [r2, #-28]	@ Numerator, NumShortVLC
	b	.L316	@
.L320:
	.align	2
.L319:
	.word	.LANCHOR0+364
	.fnend
	.size	VC1_DecBfraction, .-VC1_DecBfraction
	.align	2
	.global	VC1_DecBfractionSMP
	.type	VC1_DecBfractionSMP, %function
VC1_DecBfractionSMP:
	.fnstart
.LFB1560:
	@ args = 0, pretend = 0, frame = 224
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #228
	sub	sp, sp, #228	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	ldr	ip, .L328	@ tmp146,
	mov	r4, r0	@ pBs, pBs
	str	r1, [fp, #-248]	@ pScaleFactor, %sfp
	str	r2, [fp, #-252]	@ pPTYPE, %sfp
	sub	r5, fp, #72	@ tmp145,,
	mov	r6, ip	@ tmp185, tmp146
	add	lr, ip, #28	@ tmp149, tmp146,
	ldmia	r6!, {r0, r1, r2, r3}	@ tmp185,,,,
	sub	r8, fp, #100	@,,
	str	r8, [fp, #-264]	@, %sfp
	add	r8, ip, #56	@ tmp152, tmp146,
	sub	r7, fp, #244	@,,
	str	r7, [fp, #-256]	@, %sfp
	sub	r7, fp, #132	@,,
	str	r7, [fp, #-260]	@, %sfp
	stmia	r5!, {r0, r1, r2, r3}	@ tmp145,,,,
	sub	sl, fp, #188	@ tmp151,,
	ldmia	r6, {r0, r1, r2}	@ tmp185,,,
	add	r9, ip, #112	@ tmp155, tmp146,
	add	ip, ip, #168	@ tmp158, tmp146,
	stmia	r5, {r0, r1, r2}	@ tmp186,,,
	ldr	r5, [fp, #-264]	@, %sfp
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp187,,,,
	stmia	r5!, {r0, r1, r2, r3}	@,,,,
	ldmia	lr, {r0, r1, r2}	@ tmp187,,,
	stmia	r5, {r0, r1, r2}	@ tmp188,,,
	mov	r5, sl	@ tmp190, tmp151
	ldmia	r8!, {r0, r1, r2, r3}	@ tmp189,,,,
	stmia	r5!, {r0, r1, r2, r3}	@ tmp190,,,,
	mov	lr, r5	@ tmp192, tmp190
	ldmia	r8!, {r0, r1, r2, r3}	@ tmp191,,,,
	ldr	r5, [fp, #-256]	@ tmp196, %sfp
	stmia	lr!, {r0, r1, r2, r3}	@ tmp192,,,,
	ldmia	r8!, {r0, r1, r2, r3}	@ tmp193,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp192,,,,
	ldmia	r8, {r0, r1}	@ tmp193,,
	stmia	lr, {r0, r1}	@ tmp194,,
	ldmia	r9!, {r0, r1, r2, r3}	@ tmp195,,,,
	stmia	r5!, {r0, r1, r2, r3}	@ tmp196,,,,
	mov	lr, r5	@ tmp198, tmp196
	ldmia	r9!, {r0, r1, r2, r3}	@ tmp197,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp198,,,,
	ldmia	r9!, {r0, r1, r2, r3}	@ tmp199,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp198,,,,
	ldmia	r9, {r0, r1}	@ tmp199,,
	stmia	lr, {r0, r1}	@ tmp200,,
	mov	lr, r7	@ tmp202,
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp201,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp202,,,,
	ldmia	ip, {r0, r1, r2, r3}	@ tmp201,,,,
	stmia	lr, {r0, r1, r2, r3}	@ tmp202,,,,
	mov	r0, r4	@, pBs
	mov	r1, #3	@,
	bl	BsShow	@
	cmp	r0, #6	@ Code,
	mov	r5, r0	@ Code,
	bgt	.L322	@,
	mov	r1, #3	@,
	mov	r0, r4	@, pBs
	bl	BsSkip	@
	sub	r0, fp, #44	@,,
	add	r1, r0, r5, asl #2	@, tmp161,, Code,
	mov	r0, r5	@ BfracIdx, Code
	ldr	r3, [r1, #-56]	@ Denominator, DenShortVLC
	ldr	r2, [r1, #-28]	@ Numerator, NumShortVLC
.L323:
	sub	r5, fp, #44	@,,
	add	lr, r5, r3, asl #2	@, tmp180,, Denominator,
	ldr	r7, [lr, #-92]	@ tmp182, Inverse
	mul	r1, r2, r7	@ tmp183, Numerator, tmp182
	ldr	r7, [fp, #-248]	@, %sfp
	str	r1, [r7, #0]	@ tmp183,
.L325:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L322:
	mov	r0, r4	@, pBs
	mov	r1, #7	@,
	bl	BsGet	@
	and	r5, r0, #15	@ D.40507, Code.1738,
	cmp	r5, #15	@ D.40507,
	beq	.L327	@,
	sub	ip, r0, #112	@ D.40511, Code.1738,
	sub	r3, fp, #44	@,,
	add	r0, r5, #7	@ BfracIdx, D.40507,
	add	r5, r3, ip, asl #2	@, tmp171,, D.40511,
	ldr	r3, [r5, #-200]	@ Denominator, DenLongVLC
	ldr	r2, [r5, #-144]	@ Numerator, NumLongVLC
	b	.L323	@
.L327:
	ldr	r2, [fp, #-252]	@, %sfp
	mov	lr, #4	@ tmp167,
	mov	r0, #22	@ BfracIdx,
	strb	lr, [r2, #0]	@ tmp167,
	b	.L325	@
.L329:
	.align	2
.L328:
	.word	.LANCHOR0+564
	.fnend
	.size	VC1_DecBfractionSMP, .-VC1_DecBfractionSMP
	.align	2
	.global	VC1_DecMvmode2
	.type	VC1_DecMvmode2, %function
VC1_DecMvmode2:
	.fnstart
.LFB1559:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #32
	sub	sp, sp, #32	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r7, r1	@ PQUANT, PQUANT
	mov	r1, #3	@,
	mov	r4, r0	@ pBs, pBs
	bl	BsShow	@
	ldr	r3, .L339	@ tmp142,
	sub	r5, fp, #44	@ tmp141,,
	sub	ip, fp, #60	@ tmp144,,
	add	lr, r3, #16	@ tmp145, tmp142,
	mov	r6, r0	@ Tmp,
	cmp	r0, #1	@ Tmp,
	ldmia	r3, {r0, r1, r2, r3}	@ tmp142,,,,
	stmia	r5, {r0, r1, r2, r3}	@ tmp141,,,,
	ldmia	lr, {r0, r1, r2, r3}	@ tmp145,,,,
	stmia	ip, {r0, r1, r2, r3}	@ tmp144,,,,
	ble	.L338	@,
	cmp	r6, #4	@ Tmp,
	movge	r5, #0	@, Code
	movlt	r5, #1	@, Code
	movlt	r1, #2	@, Len,
	movge	r1, #1	@, Len,
.L333:
	mov	r0, r4	@, pBs
	bl	BsSkip	@
	sub	r1, fp, #28	@,,
	cmp	r7, #12	@ PQUANT,
	add	r5, r1, r5, asl #2	@, tmp148,, Code,
	ldrhi	r0, [r5, #-16]	@ Code.1762, ModeLow
	ldrls	r0, [r5, #-32]	@ Code.1762, ModeHigh
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L338:
	cmp	r6, #0	@ Tmp,
	mov	r1, #3	@ Len,
	moveq	r5, r1	@ Code, Len
	movne	r5, #2	@ Code,
	b	.L333	@
.L340:
	.align	2
.L339:
	.word	.LANCHOR0+764
	.fnend
	.size	VC1_DecMvmode2, .-VC1_DecMvmode2
	.align	2
	.global	VC1_DecMvmodeInterB
	.type	VC1_DecMvmodeInterB, %function
VC1_DecMvmodeInterB:
	.fnstart
.LFB1558:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #44
	sub	sp, sp, #44	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r4, r1	@ PQUANT, PQUANT
	mov	r1, #3	@,
	mov	r5, r0	@ pBs, pBs
	bl	BsShow	@
	ldr	r3, .L351	@ tmp142,
	sub	ip, fp, #44	@ tmp141,,
	mov	lr, r0	@ Tmp,
	cmp	r0, #1	@ Tmp,
	ldmia	r3, {r0, r1, r2, r3}	@ tmp142,,,,
	stmia	ip, {r0, r1, r2, r3}	@ tmp141,,,,
	ble	.L349	@,
	cmp	lr, #4	@ Tmp,
	movge	r6, #0	@, Code
	movlt	r6, #1	@, Code
	movlt	r1, #2	@, Len,
	movge	r1, #1	@, Len,
.L344:
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	cmp	r4, #12	@ PQUANT,
	bhi	.L350	@,
	sub	r3, fp, #60	@ tmp162,,
	sub	r0, fp, #28	@,,
	add	r6, r0, r6, asl #2	@, tmp158,, Code,
	mov	lr, #0	@ tmp148,
	str	lr, [r3], #4	@ tmp148, ModeHigh
	add	ip, r3, #8	@ tmp164, tmp162,
	mov	r0, #3	@ tmp155,
	mov	r2, #1	@ tmp153,
	str	lr, [ip, #0]	@ tmp148, ModeHigh
	mov	r1, #2	@ tmp154,
	str	r2, [fp, #-64]	@ tmp153, ModeHigh
	str	r1, [fp, #-56]	@ tmp154, ModeHigh
	str	r0, [fp, #-52]	@ tmp155, ModeHigh
	ldr	r0, [r6, #-36]	@ Code.1786, ModeHigh
.L347:
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L350:
	sub	r2, fp, #28	@,,
	add	r6, r2, r6, asl #2	@, tmp145,, Code,
	ldr	r0, [r6, #-16]	@ Code.1786, ModeLow
	b	.L347	@
.L349:
	cmp	lr, #0	@ Tmp,
	mov	r1, #3	@ Len,
	moveq	r6, r1	@ Code, Len
	movne	r6, #2	@ Code,
	b	.L344	@
.L352:
	.align	2
.L351:
	.word	.LANCHOR0+796
	.fnend
	.size	VC1_DecMvmodeInterB, .-VC1_DecMvmodeInterB
	.align	2
	.global	VC1_DecMvmodeProgrB
	.type	VC1_DecMvmodeProgrB, %function
VC1_DecMvmodeProgrB:
	.fnstart
.LFB1557:
	@ args = 0, pretend = 0, frame = 8
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
	mov	r1, #1	@,
	bl	BsSkip	@
	ldr	r1, .L355	@ tmp139,
	sub	ip, fp, #12	@,,
	sub	r3, fp, #20	@ tmp138,,
	add	r2, ip, r0, asl #2	@, tmp143,, Tmp,
	ldmia	r1, {r0, r1}	@ tmp139,,
	stmia	r3, {r0, r1}	@ tmp138,,
	ldr	r0, [r2, #-8]	@, Mode
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L356:
	.align	2
.L355:
	.word	.LANCHOR0+812
	.fnend
	.size	VC1_DecMvmodeProgrB, .-VC1_DecMvmodeProgrB
	.align	2
	.global	VC1_DecMvmodeProgrP
	.type	VC1_DecMvmodeProgrP, %function
VC1_DecMvmodeProgrP:
	.fnstart
.LFB1556:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #40
	sub	sp, sp, #40	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	sl, r1	@ PQUANT, PQUANT
	mov	r1, #4	@,
	mov	r8, r0	@ pBs, pBs
	bl	BsShow	@
	ldr	r6, .L367	@ tmp142,
	sub	lr, fp, #56	@ tmp141,,
	sub	r7, fp, #76	@ tmp145,,
	add	ip, r6, #20	@ tmp146, tmp142,
	mov	r5, lr	@ tmp158, tmp141
	mov	r4, r0	@ Tmp,
	cmp	r0, #1	@ Tmp,
	ldmia	r6!, {r0, r1, r2, r3}	@ tmp157,,,,
	stmia	r5!, {r0, r1, r2, r3}	@ tmp158,,,,
	ldr	lr, [r6, #0]	@ C.509, C.509
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp159,,,,
	str	lr, [r5, #0]	@ C.509, ModeLow
	ldr	ip, [ip, #0]	@ C.510, C.510
	stmia	r7!, {r0, r1, r2, r3}	@ tmp145,,,,
	str	ip, [r7, #0]	@ C.510, ModeHigh
	ble	.L366	@,
	cmp	r4, #3	@ Tmp,
	movle	r1, #3	@ Len,
	movle	r4, #2	@ Code,
	ble	.L360	@,
	cmp	r4, #8	@ Tmp,
	movge	r4, #0	@, Code
	movlt	r4, #1	@, Code
	movlt	r1, #2	@, Len,
	movge	r1, #1	@, Len,
.L360:
	mov	r0, r8	@, pBs
	bl	BsSkip	@
	sub	r1, fp, #36	@,,
	cmp	sl, #12	@ PQUANT,
	add	r4, r1, r4, asl #2	@, tmp150,, Code,
	ldrhi	r0, [r4, #-20]	@ Code.1833, ModeLow
	ldrls	r0, [r4, #-40]	@ Code.1833, ModeHigh
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L366:
	cmp	r4, #0	@ Tmp,
	mov	r1, #4	@ Len,
	moveq	r4, #3	@ Code,
	movne	r4, r1	@ Code, Len
	b	.L360	@
.L368:
	.align	2
.L367:
	.word	.LANCHOR0+820
	.fnend
	.size	VC1_DecMvmodeProgrP, .-VC1_DecMvmodeProgrP
	.align	2
	.global	VC1_DecTransacfrm
	.type	VC1_DecTransacfrm, %function
VC1_DecTransacfrm:
	.fnstart
.LFB1554:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #68
	sub	sp, sp, #68	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r2, #64	@,
	mov	r4, r0	@ pBs, pBs
	mov	r1, #0	@,
	sub	r0, fp, #84	@,,
	bl	memset	@
	mov	ip, #2	@ tmp143,
	mov	r1, ip	@, tmp143
	mov	r0, r4	@, pBs
	mov	r3, #1	@ tmp140,
	str	ip, [fp, #-64]	@ tmp143, <variable>.Len
	str	r3, [fp, #-68]	@ tmp140, <variable>.Code
	str	r3, [fp, #-80]	@ tmp140, <variable>.Len
	str	r3, [fp, #-72]	@ tmp140, <variable>.Len
	str	ip, [fp, #-60]	@ tmp143, <variable>.Code
	str	ip, [fp, #-56]	@ tmp143, <variable>.Len
	bl	BsShow	@
	sub	r2, fp, #20	@,,
	add	r3, r2, r0, asl #3	@, tmp148,,,
	mov	r0, r4	@, pBs
	ldr	r4, [r3, #-64]	@ Code, <variable>.Code
	ldr	r1, [r3, #-60]	@, <variable>.Len
	bl	BsSkip	@
	mov	r0, r4	@, Code
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
	.fnend
	.size	VC1_DecTransacfrm, .-VC1_DecTransacfrm
	.align	2
	.global	VC1_DecMvrange
	.type	VC1_DecMvrange, %function
VC1_DecMvrange:
	.fnstart
.LFB1553:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #64
	sub	sp, sp, #64	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	ldr	lr, .L373	@ tmp139,
	mov	r4, r0	@ pBs, pBs
	sub	ip, fp, #84	@ tmp138,,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp150,,,,
	mov	r5, ip	@ tmp151, tmp138
	stmia	r5!, {r0, r1, r2, r3}	@ tmp151,,,,
	mov	ip, r5	@ tmp153, tmp151
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp152,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp153,,,,
	mov	r5, ip	@ tmp155, tmp153
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp154,,,,
	stmia	r5!, {r0, r1, r2, r3}	@ tmp155,,,,
	ldmia	lr, {r0, r1, r2, r3}	@ tmp154,,,,
	stmia	r5, {r0, r1, r2, r3}	@ tmp155,,,,
	mov	r1, #3	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	sub	r2, fp, #20	@,,
	add	r3, r2, r0, asl #3	@, tmp142,,,
	mov	r0, r4	@, pBs
	ldr	r4, [r3, #-64]	@ Code, <variable>.Code
	ldr	r1, [r3, #-60]	@, <variable>.Len
	bl	BsSkip	@
	mov	r0, r4	@, Code
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L374:
	.align	2
.L373:
	.word	.LANCHOR0+860
	.fnend
	.size	VC1_DecMvrange, .-VC1_DecMvrange
	.align	2
	.global	VC1_Vfmw_ParseAdvPFieldHdr
	.type	VC1_Vfmw_ParseAdvPFieldHdr, %function
VC1_Vfmw_ParseAdvPFieldHdr:
	.fnstart
.LFB1579:
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
	mov	r1, #5	@,
	mov	r4, r2	@ pSyntax, pSyntax
	mov	r5, r0	@ pBs, pBs
	bl	BsGet	@
	uxtb	r6, r0	@ D.41692,
	strb	r6, [r4, #358]	@ D.41692, <variable>.AdvPicSyntax.PQINDEX
	cmp	r6, #0	@ D.41692,
	bne	.L394	@,
	mov	r0, r6	@, D.41696
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L394:
	ldrb	r7, [r4, #198]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.QUANTIZER, <variable>.AdvEntSyntax.QUANTIZER
	mov	r1, r6	@, D.41692
	mov	r0, r7	@, <variable>.AdvEntSyntax.QUANTIZER
	bl	VC1_Vfmw_DecPQUANT	@
	cmp	r6, #8	@ D.41692,
	movhi	r3, #0	@ tmp172,
	str	r0, [r4, #464]	@, <variable>.AdvPicSyntax.PQUANT
	strhib	r3, [r4, #351]	@ tmp172, <variable>.AdvPicSyntax.HALFQP
	bls	.L395	@,
.L379:
	cmp	r7, #1	@ <variable>.AdvEntSyntax.QUANTIZER,
	movne	r3, #0	@ tmp176,
	strneb	r3, [r4, #359]	@ tmp176, <variable>.AdvPicSyntax.PQUANTIZER
	beq	.L396	@,
.L381:
	ldrb	r3, [r4, #21]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.POSTPROCFLAG, <variable>.AdvSeqSyntax.POSTPROCFLAG
	cmp	r3, #1	@ <variable>.AdvSeqSyntax.POSTPROCFLAG,
	beq	.L397	@,
.L382:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	uxtb	r0, r0	@ D.41717,
	strb	r0, [r4, #380]	@ D.41717, <variable>.AdvPicSyntax.NUMREF
	cmp	r0, #0	@ D.41717,
	beq	.L398	@,
.L383:
	ldrb	r2, [r4, #194]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.EXTENDED_MV, <variable>.AdvEntSyntax.EXTENDED_MV
	cmp	r2, #1	@ <variable>.AdvEntSyntax.EXTENDED_MV,
	beq	.L399	@,
.L384:
	ldrb	r6, [r4, #200]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.EXTENDED_DMV, <variable>.AdvEntSyntax.EXTENDED_DMV
	cmp	r6, #1	@ <variable>.AdvEntSyntax.EXTENDED_DMV,
	beq	.L400	@,
.L385:
	mov	r0, r5	@, pBs
	ldrb	r1, [r4, #464]	@ zero_extendqisi2	@, <variable>.AdvPicSyntax.PQUANT
	bl	VC1_DecMvmodeProgrP	@
	uxtb	ip, r0	@ D.41736,
	strb	ip, [r4, #362]	@ D.41736, <variable>.AdvPicSyntax.MVMODE
	cmp	ip, #4	@ D.41736,
	beq	.L401	@,
.L386:
	mov	r1, #3	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r2, [r4, #380]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.NUMREF, <variable>.AdvPicSyntax.NUMREF
	cmp	r2, #0	@ <variable>.AdvPicSyntax.NUMREF,
	moveq	r1, #2	@,
	movne	r1, #3	@,
	strb	r0, [r4, #375]	@, <variable>.AdvPicSyntax.MBMODETAB
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #3	@,
	uxtb	r0, r0	@ iftmp.572,
	strb	r0, [r4, #366]	@ iftmp.572, <variable>.AdvPicSyntax.MVTAB
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r1, [r4, #362]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.MVMODE, <variable>.AdvPicSyntax.MVMODE
	cmp	r1, #0	@ <variable>.AdvPicSyntax.MVMODE,
	strb	r0, [r4, #367]	@, <variable>.AdvPicSyntax.CBPTAB
	beq	.L389	@,
	movw	r6, #362	@ tmp201,
	ldrh	lr, [r4, r6]	@ tmp202,
	cmp	lr, #4	@ tmp202,
	beq	.L389	@,
	ldrb	r1, [r4, #195]	@ zero_extendqisi2	@ D.41769, <variable>.AdvEntSyntax.DQUANT
	cmp	r1, #0	@ D.41769,
	bne	.L402	@,
.L391:
	ldrb	r1, [r4, #196]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.VSTRANSFORM, <variable>.AdvEntSyntax.VSTRANSFORM
	cmp	r1, #1	@ <variable>.AdvEntSyntax.VSTRANSFORM,
	beq	.L403	@,
.L392:
	mov	r0, r5	@, pBs
	mov	r6, #1	@ D.41696,
	bl	VC1_DecTransacfrm	@
	mov	r1, #1	@,
	strb	r0, [r4, #370]	@, <variable>.AdvPicSyntax.TRANSACFRM
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #372]	@, <variable>.AdvPicSyntax.TRANSDCTAB
	mov	r0, r6	@, D.41696
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L389:
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r1, [r4, #195]	@ zero_extendqisi2	@ D.41769, <variable>.AdvEntSyntax.DQUANT
	cmp	r1, #0	@ D.41769,
	strb	r0, [r4, #377]	@, <variable>.AdvPicSyntax.QMVBPTAB
	beq	.L391	@,
.L402:
	mov	r0, r5	@, pBs
	ldrb	r2, [r4, #464]	@ zero_extendqisi2	@, <variable>.AdvPicSyntax.PQUANT
	add	r3, r4, #508	@, pSyntax,
	bl	VC1_VopDQuant	@
	b	.L391	@
.L398:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	rsbs	r1, r0, #1	@ tmp181,
	movcc	r1, #0	@ tmp181
	strb	r1, [r4, #381]	@ tmp181, <variable>.AdvPicSyntax.REFFIELD
	b	.L383	@
.L395:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	ldrb	r7, [r4, #198]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.QUANTIZER, <variable>.AdvEntSyntax.QUANTIZER
	strb	r0, [r4, #351]	@, <variable>.AdvPicSyntax.HALFQP
	b	.L379	@
.L396:
	mov	r1, r7	@, <variable>.AdvEntSyntax.QUANTIZER
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #359]	@, <variable>.AdvPicSyntax.PQUANTIZER
	b	.L381	@
.L403:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	ip, r0	@ D.41777,
	strb	ip, [r4, #368]	@ D.41777, <variable>.AdvPicSyntax.TTMBF
	cmp	ip, #1	@ D.41777,
	bne	.L392	@,
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	strb	r0, [r4, #369]	@, <variable>.AdvPicSyntax.TTFRM
	b	.L392	@
.L401:
	ldrb	r1, [r4, #464]	@ zero_extendqisi2	@, <variable>.AdvPicSyntax.PQUANT
	mov	r0, r5	@, pBs
	bl	VC1_DecMvmode2	@
	strb	r0, [r4, #363]	@, <variable>.AdvPicSyntax.MVMODE2
	mov	r0, r5	@, pBs
	bl	VC1_DecIntCompField	@
	mov	r1, #6	@,
	str	r0, [r4, #476]	@, <variable>.AdvPicSyntax.INTCOMPFIELD
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #6	@,
	strb	r0, [r4, #364]	@, <variable>.AdvPicSyntax.LUMSCALE
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldr	r3, [r4, #476]	@ <variable>.AdvPicSyntax.INTCOMPFIELD, <variable>.AdvPicSyntax.INTCOMPFIELD
	cmp	r3, #0	@ <variable>.AdvPicSyntax.INTCOMPFIELD,
	strb	r0, [r4, #365]	@, <variable>.AdvPicSyntax.LUMSHIFT
	bne	.L386	@,
	mov	r1, #6	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #6	@,
	str	r0, [r4, #480]	@, <variable>.AdvPicSyntax.LUMSCALE2
	mov	r0, r5	@, pBs
	bl	BsGet	@
	str	r0, [r4, #484]	@, <variable>.AdvPicSyntax.LUMSHIFT2
	b	.L386	@
.L397:
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	strb	r0, [r4, #360]	@, <variable>.AdvPicSyntax.POSTPROC
	b	.L382	@
.L400:
	mov	r0, r5	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #373]	@, <variable>.AdvPicSyntax.DMVRANGE
	b	.L385	@
.L399:
	mov	r0, r5	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #361]	@, <variable>.AdvPicSyntax.MVRANGE
	b	.L384	@
	.fnend
	.size	VC1_Vfmw_ParseAdvPFieldHdr, .-VC1_Vfmw_ParseAdvPFieldHdr
	.align	2
	.global	VC1_Vfmw_ParseSMPIPicHdr
	.type	VC1_Vfmw_ParseSMPIPicHdr, %function
VC1_Vfmw_ParseSMPIPicHdr:
	.fnstart
.LFB1564:
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
	mov	r4, r1	@ pCodecInf, pCodecInf
	mov	r1, #7	@,
	mov	r5, r2	@ pSyntax, pSyntax
	mov	r7, r0	@ pBs, pBs
	bl	BsGet	@
	mov	r1, #5	@,
	strb	r0, [r5, #253]	@, <variable>.SMPPicSyntax.BF
	mov	r0, r7	@, pBs
	bl	BsGet	@
	uxtb	r6, r0	@ D.40662,
	strb	r6, [r5, #254]	@ D.40662, <variable>.SMPPicSyntax.PQINDEX
	cmp	r6, #0	@ D.40662,
	bne	.L418	@,
	mov	r0, r6	@, D.40666
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L418:
	ldrb	r8, [r5, #14]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.QUANTIZER, <variable>.SMPSeqSyntax.QUANTIZER
	mov	r1, r6	@, D.40662
	mov	r0, r8	@, <variable>.SMPSeqSyntax.QUANTIZER
	bl	VC1_Vfmw_DecPQUANT	@
	cmp	r6, #8	@ D.40662,
	movhi	r3, #0	@ tmp155,
	str	r0, [r5, #340]	@, <variable>.SMPPicSyntax.PQUANT
	strhib	r3, [r5, #255]	@ tmp155, <variable>.SMPPicSyntax.HALFQP
	bls	.L419	@,
.L408:
	cmp	r8, #1	@ <variable>.SMPSeqSyntax.QUANTIZER,
	movne	r3, #0	@ tmp159,
	strneb	r3, [r5, #256]	@ tmp159, <variable>.SMPPicSyntax.PQUANTIZER
	beq	.L420	@,
.L410:
	ldrb	r3, [r5, #7]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.EXTENDED_MV, <variable>.SMPSeqSyntax.EXTENDED_MV
	cmp	r3, #1	@ <variable>.SMPSeqSyntax.EXTENDED_MV,
	movne	r3, #0	@ tmp163,
	strneb	r3, [r5, #257]	@ tmp163, <variable>.SMPPicSyntax.MVRANGE
	beq	.L421	@,
.L412:
	ldrb	r0, [r5, #251]	@ zero_extendqisi2	@ D.40687, <variable>.SMPPicSyntax.PTYPE
	cmp	r0, #4	@ D.40687,
	cmpne	r0, #2	@, D.40687,
	bne	.L413	@,
.L417:
	ldrb	r1, [r5, #258]	@ zero_extendqisi2	@ prephitmp.1927, <variable>.SMPPicSyntax.RESPIC
.L414:
	mov	r0, r4	@, pCodecInf
	mov	r6, #1	@ D.40666,
	bl	VC1_SetCurPicResolutionInfo	@
	mov	r0, r7	@, pBs
	bl	VC1_DecTransacfrm	@
	strb	r0, [r5, #267]	@, <variable>.SMPPicSyntax.TRANSACFRM
	mov	r0, r7	@, pBs
	bl	VC1_DecTransacfrm	@
	mov	r1, #1	@,
	strb	r0, [r5, #268]	@, <variable>.SMPPicSyntax.TRANSACFRM2
	mov	r0, r7	@, pBs
	bl	BsGet	@
	strb	r0, [r5, #269]	@, <variable>.SMPPicSyntax.TRANSDCTAB
	mov	r0, r6	@, D.40666
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L413:
	ldrb	r1, [r5, #4]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.MULTIRES, <variable>.SMPSeqSyntax.MULTIRES
	cmp	r1, #1	@ <variable>.SMPSeqSyntax.MULTIRES,
	bne	.L417	@,
	mov	r1, #2	@,
	mov	r0, r7	@, pBs
	bl	BsGet	@
	uxtb	r1, r0	@ prephitmp.1927,
	strb	r1, [r5, #258]	@ prephitmp.1927, <variable>.SMPPicSyntax.RESPIC
	b	.L414	@
.L419:
	mov	r0, r7	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	ldrb	r8, [r5, #14]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.QUANTIZER, <variable>.SMPSeqSyntax.QUANTIZER
	strb	r0, [r5, #255]	@, <variable>.SMPPicSyntax.HALFQP
	b	.L408	@
.L421:
	mov	r0, r7	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r5, #257]	@, <variable>.SMPPicSyntax.MVRANGE
	b	.L412	@
.L420:
	mov	r1, r8	@, <variable>.SMPSeqSyntax.QUANTIZER
	mov	r0, r7	@, pBs
	bl	BsGet	@
	strb	r0, [r5, #256]	@, <variable>.SMPPicSyntax.PQUANTIZER
	b	.L410	@
	.fnend
	.size	VC1_Vfmw_ParseSMPIPicHdr, .-VC1_Vfmw_ParseSMPIPicHdr
	.align	2
	.global	VC1_Vfmw_ParseAdvBFieldHdr
	.type	VC1_Vfmw_ParseAdvBFieldHdr, %function
VC1_Vfmw_ParseAdvBFieldHdr:
	.fnstart
.LFB1580:
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
	mov	r7, #1	@ tmp158,
	mov	r8, r1	@ pCodecInf, pCodecInf
	strb	r7, [r2, #380]	@ tmp158, <variable>.AdvPicSyntax.NUMREF
	mov	r1, #5	@,
	mov	r4, r2	@ pSyntax, pSyntax
	mov	r5, r0	@ pBs, pBs
	bl	BsGet	@
	uxtb	r6, r0	@ D.41796,
	strb	r6, [r4, #358]	@ D.41796, <variable>.AdvPicSyntax.PQINDEX
	cmp	r6, #0	@ D.41796,
	bne	.L436	@,
.L423:
	mov	r3, #0	@ D.41800,
	mov	r0, r3	@, D.41800
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L436:
	ldrb	sl, [r4, #198]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.QUANTIZER, <variable>.AdvEntSyntax.QUANTIZER
	mov	r1, r6	@, D.41796
	mov	r0, sl	@, <variable>.AdvEntSyntax.QUANTIZER
	bl	VC1_Vfmw_DecPQUANT	@
	cmp	r6, #8	@ D.41796,
	movhi	r3, #0	@ tmp163,
	str	r0, [r4, #464]	@, <variable>.AdvPicSyntax.PQUANT
	strhib	r3, [r4, #351]	@ tmp163, <variable>.AdvPicSyntax.HALFQP
	bls	.L437	@,
.L425:
	cmp	sl, #1	@ <variable>.AdvEntSyntax.QUANTIZER,
	movne	r3, #0	@ tmp167,
	strneb	r3, [r4, #359]	@ tmp167, <variable>.AdvPicSyntax.PQUANTIZER
	beq	.L438	@,
.L427:
	ldrb	r3, [r4, #21]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.POSTPROCFLAG, <variable>.AdvSeqSyntax.POSTPROCFLAG
	cmp	r3, #1	@ <variable>.AdvSeqSyntax.POSTPROCFLAG,
	beq	.L439	@,
.L428:
	ldrb	r0, [r4, #194]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.EXTENDED_MV, <variable>.AdvEntSyntax.EXTENDED_MV
	cmp	r0, #1	@ <variable>.AdvEntSyntax.EXTENDED_MV,
	beq	.L440	@,
.L429:
	ldrb	r1, [r4, #200]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.EXTENDED_DMV, <variable>.AdvEntSyntax.EXTENDED_DMV
	cmp	r1, #1	@ <variable>.AdvEntSyntax.EXTENDED_DMV,
	beq	.L441	@,
.L430:
	ldrb	r1, [r4, #464]	@ zero_extendqisi2	@, <variable>.AdvPicSyntax.PQUANT
	mov	r0, r5	@, pBs
	bl	VC1_DecMvmodeInterB	@
	mov	r1, r8	@, pCodecInf
	mov	r2, r4	@, pSyntax
	mov	r3, #0	@,
	strb	r0, [r4, #362]	@, <variable>.AdvPicSyntax.MVMODE
	mov	r0, r5	@, pBs
	bl	BPD_Drv	@
	cmp	r0, #1	@,
	beq	.L423	@,
	mov	r1, #3	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #3	@,
	strb	r0, [r4, #375]	@, <variable>.AdvPicSyntax.MBMODETAB
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #3	@,
	strb	r0, [r4, #366]	@, <variable>.AdvPicSyntax.MVTAB
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r2, [r4, #362]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.MVMODE, <variable>.AdvPicSyntax.MVMODE
	cmp	r2, #0	@ <variable>.AdvPicSyntax.MVMODE,
	strb	r0, [r4, #367]	@, <variable>.AdvPicSyntax.CBPTAB
	beq	.L442	@,
.L431:
	ldrb	r1, [r4, #195]	@ zero_extendqisi2	@ D.41848, <variable>.AdvEntSyntax.DQUANT
	cmp	r1, #0	@ D.41848,
	bne	.L443	@,
.L432:
	ldrb	r1, [r4, #196]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.VSTRANSFORM, <variable>.AdvEntSyntax.VSTRANSFORM
	cmp	r1, #1	@ <variable>.AdvEntSyntax.VSTRANSFORM,
	beq	.L444	@,
.L433:
	mov	r0, r5	@, pBs
	bl	VC1_DecTransacfrm	@
	mov	r1, #1	@,
	strb	r0, [r4, #370]	@, <variable>.AdvPicSyntax.TRANSACFRM
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r3, #1	@ D.41800,
	strb	r0, [r4, #372]	@, <variable>.AdvPicSyntax.TRANSDCTAB
	mov	r0, r3	@, D.41800
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L443:
	mov	r0, r5	@, pBs
	ldrb	r2, [r4, #464]	@ zero_extendqisi2	@, <variable>.AdvPicSyntax.PQUANT
	add	r3, r4, #508	@, pSyntax,
	bl	VC1_VopDQuant	@
	b	.L432	@
.L442:
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	strb	r0, [r4, #377]	@, <variable>.AdvPicSyntax.QMVBPTAB
	b	.L431	@
.L437:
	mov	r1, r7	@, tmp158
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	sl, [r4, #198]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.QUANTIZER, <variable>.AdvEntSyntax.QUANTIZER
	strb	r0, [r4, #351]	@, <variable>.AdvPicSyntax.HALFQP
	b	.L425	@
.L441:
	mov	r0, r5	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #373]	@, <variable>.AdvPicSyntax.DMVRANGE
	b	.L430	@
.L440:
	mov	r0, r5	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #361]	@, <variable>.AdvPicSyntax.MVRANGE
	b	.L429	@
.L439:
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	strb	r0, [r4, #360]	@, <variable>.AdvPicSyntax.POSTPROC
	b	.L428	@
.L438:
	mov	r1, sl	@, <variable>.AdvEntSyntax.QUANTIZER
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #359]	@, <variable>.AdvPicSyntax.PQUANTIZER
	b	.L427	@
.L444:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	ip, r0	@ D.41856,
	strb	ip, [r4, #368]	@ D.41856, <variable>.AdvPicSyntax.TTMBF
	cmp	ip, #1	@ D.41856,
	bne	.L433	@,
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	strb	r0, [r4, #369]	@, <variable>.AdvPicSyntax.TTFRM
	b	.L433	@
	.fnend
	.size	VC1_Vfmw_ParseAdvBFieldHdr, .-VC1_Vfmw_ParseAdvBFieldHdr
	.align	2
	.global	VC1_Vfmw_ParseAdvIFieldHdr
	.type	VC1_Vfmw_ParseAdvIFieldHdr, %function
VC1_Vfmw_ParseAdvIFieldHdr:
	.fnstart
.LFB1578:
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
	mov	r6, r1	@ pCodecInf, pCodecInf
	mov	r1, #5	@,
	mov	r4, r2	@ pSyntax, pSyntax
	mov	r5, r0	@ pBs, pBs
	bl	BsGet	@
	uxtb	r7, r0	@ D.41644,
	strb	r7, [r4, #358]	@ D.41644, <variable>.AdvPicSyntax.PQINDEX
	cmp	r7, #0	@ D.41644,
	bne	.L456	@,
.L446:
	mov	r0, #0	@ D.41648,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L456:
	ldrb	r8, [r4, #198]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.QUANTIZER, <variable>.AdvEntSyntax.QUANTIZER
	mov	r1, r7	@, D.41644
	mov	r0, r8	@, <variable>.AdvEntSyntax.QUANTIZER
	bl	VC1_Vfmw_DecPQUANT	@
	cmp	r7, #8	@ D.41644,
	movhi	r3, #0	@ tmp152,
	str	r0, [r4, #464]	@, <variable>.AdvPicSyntax.PQUANT
	strhib	r3, [r4, #351]	@ tmp152, <variable>.AdvPicSyntax.HALFQP
	bls	.L457	@,
.L448:
	cmp	r8, #1	@ <variable>.AdvEntSyntax.QUANTIZER,
	movne	r3, #0	@ tmp156,
	strneb	r3, [r4, #359]	@ tmp156, <variable>.AdvPicSyntax.PQUANTIZER
	beq	.L458	@,
.L450:
	ldrb	r3, [r4, #21]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.POSTPROCFLAG, <variable>.AdvSeqSyntax.POSTPROCFLAG
	cmp	r3, #1	@ <variable>.AdvSeqSyntax.POSTPROCFLAG,
	beq	.L459	@,
.L451:
	mov	r1, r6	@, pCodecInf
	mov	r0, r5	@, pBs
	mov	r2, r4	@, pSyntax
	mov	r3, #0	@,
	bl	BPD_Drv	@
	cmp	r0, #1	@,
	beq	.L446	@,
	mov	r0, r5	@, pBs
	bl	VC1_DecTransacfrm	@
	strb	r0, [r4, #370]	@, <variable>.AdvPicSyntax.TRANSACFRM
	mov	r0, r5	@, pBs
	bl	VC1_DecTransacfrm	@
	mov	r1, #1	@,
	strb	r0, [r4, #371]	@, <variable>.AdvPicSyntax.TRANSACFRM2
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r1, [r4, #195]	@ zero_extendqisi2	@ D.41677, <variable>.AdvEntSyntax.DQUANT
	cmp	r1, #0	@ D.41677,
	strb	r0, [r4, #372]	@, <variable>.AdvPicSyntax.TRANSDCTAB
	bne	.L452	@,
.L455:
	mov	r0, #1	@ D.41648,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L452:
	mov	r0, r5	@, pBs
	add	r3, r4, #508	@, pSyntax,
	ldrb	r2, [r4, #464]	@ zero_extendqisi2	@, <variable>.AdvPicSyntax.PQUANT
	bl	VC1_VopDQuant	@
	b	.L455	@
.L457:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	ldrb	r8, [r4, #198]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.QUANTIZER, <variable>.AdvEntSyntax.QUANTIZER
	strb	r0, [r4, #351]	@, <variable>.AdvPicSyntax.HALFQP
	b	.L448	@
.L459:
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	strb	r0, [r4, #360]	@, <variable>.AdvPicSyntax.POSTPROC
	b	.L451	@
.L458:
	mov	r1, r8	@, <variable>.AdvEntSyntax.QUANTIZER
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #359]	@, <variable>.AdvPicSyntax.PQUANTIZER
	b	.L450	@
	.fnend
	.size	VC1_Vfmw_ParseAdvIFieldHdr, .-VC1_Vfmw_ParseAdvIFieldHdr
	.align	2
	.global	VC1_Vfmw_ParseAdvFieldPicHdr
	.type	VC1_Vfmw_ParseAdvFieldPicHdr, %function
VC1_Vfmw_ParseAdvFieldPicHdr:
	.fnstart
.LFB1581:
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
	ldrb	r3, [r1, #8]	@ zero_extendqisi2	@ <variable>.Is2ndFld, <variable>.Is2ndFld
	mov	r5, r1	@ pCodecInf, pCodecInf
	mov	r6, r0	@ pBs, pBs
	cmp	r3, #0	@ <variable>.Is2ndFld,
	mov	r4, r2	@ pSyntax, pSyntax
	beq	.L461	@,
	movw	r1, #23316	@ tmp160,
	ldr	r0, [r5, r1]	@ <variable>.SlcNum, <variable>.SlcNum
	cmp	r0, #0	@ <variable>.SlcNum,
	ble	.L462	@,
.L461:
	mov	r1, #3	@,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	movw	r2, #:lower16:.LANCHOR0	@ tmp162,
	movt	r2, #:upper16:.LANCHOR0	@ tmp162,
	add	ip, r2, r0, asl #3	@, tmp171, tmp162, D.41891,
	str	r0, [r4, #472]	@ D.41891, <variable>.AdvPicSyntax.FPTYPE
	ldr	r2, [ip, #924]	@ D.41893, FldPTypeTab
	ldr	r0, [ip, #928]	@ D.41894, FldPTypeTab
	str	r2, [r4, #500]	@ D.41893, <variable>.AdvPicSyntax.FldPicType
	str	r0, [r4, #504]	@ D.41894, <variable>.AdvPicSyntax.FldPicType
	ldrb	r1, [r5, #8]	@ zero_extendqisi2	@ <variable>.Is2ndFld, <variable>.Is2ndFld
	cmp	r1, #0	@ <variable>.Is2ndFld,
	uxtbeq	r0, r2	@ iftmp.573, D.41893
	uxtbne	r0, r0	@ iftmp.573, D.41894
	strb	r0, [r4, #349]	@ iftmp.573, <variable>.AdvPicSyntax.PTYPE
	ldrb	r3, [r5, #3513]	@ zero_extendqisi2	@ <variable>.SynNew.AdvPicSyntax.PTYPE, <variable>.SynNew.AdvPicSyntax.PTYPE
	strb	r3, [r5, #2]	@ <variable>.SynNew.AdvPicSyntax.PTYPE, <variable>.PicCodingType
	ldrb	ip, [r4, #24]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.TFCNTRFLAG, <variable>.AdvSeqSyntax.TFCNTRFLAG
	cmp	ip, #0	@ <variable>.AdvSeqSyntax.TFCNTRFLAG,
	bne	.L488	@,
.L465:
	ldrb	r3, [r4, #22]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.PULLDOWN, <variable>.AdvSeqSyntax.PULLDOWN
	cmp	r3, #0	@ <variable>.AdvSeqSyntax.PULLDOWN,
	moveq	r2, #1	@ tmp184,
	streqb	r2, [r4, #352]	@ tmp184, <variable>.AdvPicSyntax.TFF
	bne	.L489	@,
.L468:
	ldrb	r0, [r4, #23]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.INTERLACE, <variable>.AdvSeqSyntax.INTERLACE
	cmp	r0, #1	@ <variable>.AdvSeqSyntax.INTERLACE,
	beq	.L490	@,
.L469:
	cmp	r3, #1	@ <variable>.AdvSeqSyntax.PULLDOWN,
	ldrb	r1, [r4, #190]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.PANSCAN_FLAG, <variable>.AdvEntSyntax.PANSCAN_FLAG
	ldreqb	r3, [r4, #354]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.RPTFRM, <variable>.AdvPicSyntax.RPTFRM
	movne	r3, #1	@ tmp194,
	addeq	r3, r3, #1	@ tmp193, <variable>.AdvPicSyntax.RPTFRM,
	cmp	r1, #1	@ <variable>.AdvEntSyntax.PANSCAN_FLAG,
	str	r3, [r4, #492]	@ tmp194, <variable>.AdvPicSyntax.NumOfPanScanWindows
	beq	.L491	@,
.L473:
	mov	r1, #1	@,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #348]	@, <variable>.AdvPicSyntax.RNDCTRL
	mov	r0, r6	@, pBs
	bl	BsGet	@
	ldrb	r2, [r4, #191]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.REFDIST_FLAG, <variable>.AdvEntSyntax.REFDIST_FLAG
	cmp	r2, #1	@ <variable>.AdvEntSyntax.REFDIST_FLAG,
	strb	r0, [r4, #356]	@, <variable>.AdvPicSyntax.UVSAMP
	beq	.L492	@,
.L475:
	ldr	r0, [r4, #472]	@ <variable>.AdvPicSyntax.FPTYPE, <variable>.AdvPicSyntax.FPTYPE
	cmp	r0, #3	@ <variable>.AdvPicSyntax.FPTYPE,
	bgt	.L476	@,
.L477:
	ldrb	r3, [r4, #349]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.PTYPE, <variable>.AdvPicSyntax.PTYPE
	cmp	r3, #4	@ <variable>.AdvPicSyntax.PTYPE,
	ldrls	pc, [pc, r3, asl #2]	@ <variable>.AdvPicSyntax.PTYPE
	b	.L478	@
.L482:
	.word	.L479
	.word	.L480
	.word	.L481
	.word	.L478
	.word	.L479
.L489:
	ldrb	lr, [r4, #23]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.INTERLACE, <variable>.AdvSeqSyntax.INTERLACE
	cmp	lr, #0	@ <variable>.AdvSeqSyntax.INTERLACE,
	bne	.L467	@,
	mov	r0, r6	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	ldrb	r3, [r4, #22]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.PULLDOWN, <variable>.AdvSeqSyntax.PULLDOWN
	strb	r0, [r4, #354]	@, <variable>.AdvPicSyntax.RPTFRM
	ldrb	r0, [r4, #23]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.INTERLACE, <variable>.AdvSeqSyntax.INTERLACE
	cmp	r0, #1	@ <variable>.AdvSeqSyntax.INTERLACE,
	bne	.L469	@,
.L490:
	cmp	r3, #1	@ <variable>.AdvSeqSyntax.PULLDOWN,
	ldrb	r1, [r4, #190]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.PANSCAN_FLAG, <variable>.AdvEntSyntax.PANSCAN_FLAG
	ldreqb	r3, [r4, #353]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.RFF, <variable>.AdvPicSyntax.RFF
	movne	r3, #2	@ tmp190,
	addeq	r3, r3, #2	@ tmp189, <variable>.AdvPicSyntax.RFF,
	cmp	r1, #1	@ <variable>.AdvEntSyntax.PANSCAN_FLAG,
	str	r3, [r4, #492]	@ tmp190, <variable>.AdvPicSyntax.NumOfPanScanWindows
	bne	.L473	@,
.L491:
	mov	r0, r6	@, pBs
	bl	BsGet	@
	uxtb	r1, r0	@ D.41939,
	strb	r1, [r4, #355]	@ D.41939, <variable>.AdvPicSyntax.PS_PRESENT
	cmp	r1, #1	@ D.41939,
	bne	.L473	@,
	ldr	ip, [r4, #492]	@ <variable>.AdvPicSyntax.NumOfPanScanWindows, <variable>.AdvPicSyntax.NumOfPanScanWindows
	cmp	ip, #0	@ <variable>.AdvPicSyntax.NumOfPanScanWindows,
	ble	.L473	@,
	mov	r7, r4	@ ivtmp.2018, pSyntax
	mov	r8, #0	@ i,
.L474:
	mov	r1, #18	@,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	mov	r1, #18	@,
	add	r8, r8, #1	@ i, i,
	str	r0, [r7, #400]	@, <variable>.AdvPicSyntax.PS_HOFFSET
	mov	r0, r6	@, pBs
	bl	BsGet	@
	mov	r1, #14	@,
	str	r0, [r7, #416]	@, <variable>.AdvPicSyntax.PS_VOFFSET
	mov	r0, r6	@, pBs
	bl	BsGet	@
	mov	r1, #14	@,
	str	r0, [r7, #432]	@, <variable>.AdvPicSyntax.PS_WIDTH
	mov	r0, r6	@, pBs
	bl	BsGet	@
	ldr	r3, [r4, #492]	@ <variable>.AdvPicSyntax.NumOfPanScanWindows, <variable>.AdvPicSyntax.NumOfPanScanWindows
	cmp	r3, r8	@ <variable>.AdvPicSyntax.NumOfPanScanWindows, i
	str	r0, [r7, #448]	@, <variable>.AdvPicSyntax.PS_HEIGHT
	add	r7, r7, #4	@ ivtmp.2018, ivtmp.2018,
	bgt	.L474	@,
	b	.L473	@
.L481:
	mov	r0, r6	@, pBs
	mov	r1, r5	@, pCodecInf
	mov	r2, r4	@, pSyntax
	bl	VC1_Vfmw_ParseAdvBFieldHdr	@
.L483:
	ldrb	r2, [r4, #352]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.TFF, <variable>.AdvPicSyntax.TFF
	cmp	r2, #0	@ <variable>.AdvPicSyntax.TFF,
	bne	.L493	@,
.L484:
	ldrb	r2, [r5, #8]	@ zero_extendqisi2	@ <variable>.Is2ndFld, <variable>.Is2ndFld
	subs	r3, r2, #1	@ tmp217, <variable>.Is2ndFld,
	movne	r3, #1	@ tmp217
	strb	r3, [r4, #389]	@ tmp217, <variable>.AdvPicSyntax.CurParity
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L479:
	mov	r2, r4	@, pSyntax
	mov	r0, r6	@, pBs
	mov	r1, r5	@, pCodecInf
	bl	VC1_Vfmw_ParseAdvIFieldHdr	@
	ldrb	r2, [r4, #352]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.TFF, <variable>.AdvPicSyntax.TFF
	cmp	r2, #0	@ <variable>.AdvPicSyntax.TFF,
	beq	.L484	@,
.L493:
	ldrb	ip, [r5, #8]	@ zero_extendqisi2	@ <variable>.Is2ndFld, <variable>.Is2ndFld
	subs	r1, ip, #0	@ tmp214, <variable>.Is2ndFld,
	movne	r1, #1	@ tmp214
	strb	r1, [r4, #389]	@ tmp214, <variable>.AdvPicSyntax.CurParity
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L480:
	mov	r0, r6	@, pBs
	mov	r1, r5	@, pCodecInf
	mov	r2, r4	@, pSyntax
	bl	VC1_Vfmw_ParseAdvPFieldHdr	@
	b	.L483	@
.L478:
	mov	r0, #0	@ Ret,
	b	.L483	@
.L488:
	mov	r0, r6	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
	str	r0, [r4, #396]	@, <variable>.AdvPicSyntax.TFCNTR
	b	.L465	@
.L492:
	ldr	lr, [r4, #472]	@ <variable>.AdvPicSyntax.FPTYPE, <variable>.AdvPicSyntax.FPTYPE
	cmp	lr, #3	@ <variable>.AdvPicSyntax.FPTYPE,
	ble	.L494	@,
.L476:
	mov	r0, r6	@, pBs
	add	r1, r4, #496	@, pSyntax,
	bl	VC1_DecBfraction	@
	strb	r0, [r4, #350]	@, <variable>.AdvPicSyntax.BFRACTION
	b	.L477	@
.L467:
	mov	r1, #1	@,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #352]	@, <variable>.AdvPicSyntax.TFF
	mov	r0, r6	@, pBs
	bl	BsGet	@
	ldrb	r3, [r4, #22]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.PULLDOWN, <variable>.AdvSeqSyntax.PULLDOWN
	strb	r0, [r4, #353]	@, <variable>.AdvPicSyntax.RFF
	b	.L468	@
.L494:
	mov	r0, r6	@, pBs
	bl	VC1_DecRefdist	@
	strb	r0, [r4, #379]	@, <variable>.AdvPicSyntax.REFDIST
	b	.L475	@
.L462:
	ldr	ip, [r2, #504]	@ <variable>.AdvPicSyntax.FldPicType, <variable>.AdvPicSyntax.FldPicType
	strb	ip, [r2, #349]	@ <variable>.AdvPicSyntax.FldPicType, <variable>.AdvPicSyntax.PTYPE
	ldrb	r1, [r5, #3513]	@ zero_extendqisi2	@ <variable>.SynNew.AdvPicSyntax.PTYPE, <variable>.SynNew.AdvPicSyntax.PTYPE
	strb	r1, [r5, #2]	@ <variable>.SynNew.AdvPicSyntax.PTYPE, <variable>.PicCodingType
	b	.L477	@
	.fnend
	.size	VC1_Vfmw_ParseAdvFieldPicHdr, .-VC1_Vfmw_ParseAdvFieldPicHdr
	.align	2
	.global	VC1_Vfmw_ParseAdvBPicHdr
	.type	VC1_Vfmw_ParseAdvBPicHdr, %function
VC1_Vfmw_ParseAdvBPicHdr:
	.fnstart
.LFB1574:
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
	mov	r6, r1	@ pCodecInf, pCodecInf
	mov	r1, #1	@,
	mov	r4, r2	@ pSyntax, pSyntax
	mov	r5, r0	@ pBs, pBs
	bl	BsGet	@
	ldrb	r3, [r4, #23]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.INTERLACE, <variable>.AdvSeqSyntax.INTERLACE
	cmp	r3, #1	@ <variable>.AdvSeqSyntax.INTERLACE,
	strb	r0, [r4, #348]	@, <variable>.AdvPicSyntax.RNDCTRL
	beq	.L496	@,
	ldr	r3, [r4, #392]	@ prephitmp.2045, <variable>.AdvPicSyntax.FCM
	cmp	r3, #2	@ prephitmp.2045,
	beq	.L496	@,
	ldrb	r1, [r4, #25]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.FINTERPFLAG, <variable>.AdvSeqSyntax.FINTERPFLAG
	cmp	r1, #1	@ <variable>.AdvSeqSyntax.FINTERPFLAG,
	beq	.L521	@,
.L498:
	cmp	r3, #0	@ prephitmp.2045,
	bne	.L499	@,
	mov	r0, r5	@, pBs
	add	r1, r4, #496	@, pSyntax,
	bl	VC1_DecBfraction	@
	uxtb	r0, r0	@ D.41434,
	strb	r0, [r4, #350]	@ D.41434, <variable>.AdvPicSyntax.BFRACTION
	cmp	r0, #21	@ D.41434,
	beq	.L500	@,
.L499:
	mov	r0, r5	@, pBs
	mov	r1, #5	@,
	bl	BsGet	@
	uxtb	r7, r0	@ D.41440,
	strb	r7, [r4, #358]	@ D.41440, <variable>.AdvPicSyntax.PQINDEX
	cmp	r7, #0	@ D.41440,
	bne	.L522	@,
.L500:
	mov	r3, #0	@ D.41438,
	mov	r0, r3	@, D.41438
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L522:
	ldrb	r8, [r4, #198]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.QUANTIZER, <variable>.AdvEntSyntax.QUANTIZER
	mov	r1, r7	@, D.41440
	mov	r0, r8	@, <variable>.AdvEntSyntax.QUANTIZER
	bl	VC1_Vfmw_DecPQUANT	@
	cmp	r7, #8	@ D.41440,
	movhi	r3, #0	@ tmp180,
	str	r0, [r4, #464]	@, <variable>.AdvPicSyntax.PQUANT
	strhib	r3, [r4, #351]	@ tmp180, <variable>.AdvPicSyntax.HALFQP
	bls	.L523	@,
.L502:
	cmp	r8, #1	@ <variable>.AdvEntSyntax.QUANTIZER,
	movne	r3, #0	@ tmp184,
	strneb	r3, [r4, #359]	@ tmp184, <variable>.AdvPicSyntax.PQUANTIZER
	beq	.L524	@,
.L504:
	ldrb	r1, [r4, #21]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.POSTPROCFLAG, <variable>.AdvSeqSyntax.POSTPROCFLAG
	cmp	r1, #1	@ <variable>.AdvSeqSyntax.POSTPROCFLAG,
	beq	.L525	@,
.L505:
	ldr	r2, [r4, #392]	@ <variable>.AdvPicSyntax.FCM, <variable>.AdvPicSyntax.FCM
	cmp	r2, #2	@ <variable>.AdvPicSyntax.FCM,
	beq	.L526	@,
.L506:
	ldrb	ip, [r4, #194]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.EXTENDED_MV, <variable>.AdvEntSyntax.EXTENDED_MV
	cmp	ip, #1	@ <variable>.AdvEntSyntax.EXTENDED_MV,
	beq	.L527	@,
.L507:
	ldr	lr, [r4, #392]	@ <variable>.AdvPicSyntax.FCM, <variable>.AdvPicSyntax.FCM
	cmp	lr, #0	@ <variable>.AdvPicSyntax.FCM,
	beq	.L528	@,
	ldrb	r3, [r4, #200]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.EXTENDED_DMV, <variable>.AdvEntSyntax.EXTENDED_DMV
	cmp	r3, #1	@ <variable>.AdvEntSyntax.EXTENDED_DMV,
	beq	.L529	@,
.L512:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	str	r0, [r4, #468]	@, <variable>.AdvPicSyntax.INTCOMP
.L511:
	mov	r1, r6	@, pCodecInf
	mov	r0, r5	@, pBs
	mov	r2, r4	@, pSyntax
	mov	r3, #0	@,
	bl	BPD_Drv	@
	cmp	r0, #1	@,
	beq	.L500	@,
	ldr	r1, [r4, #392]	@ <variable>.AdvPicSyntax.FCM, <variable>.AdvPicSyntax.FCM
	cmp	r1, #2	@ <variable>.AdvPicSyntax.FCM,
	beq	.L530	@,
.L513:
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldr	r6, [r4, #392]	@ <variable>.AdvPicSyntax.FCM, <variable>.AdvPicSyntax.FCM
	cmp	r6, #0	@ <variable>.AdvPicSyntax.FCM,
	moveq	r1, #2	@,
	movne	r1, #3	@,
	strb	r0, [r4, #366]	@, <variable>.AdvPicSyntax.MVTAB
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldr	r6, [r4, #392]	@ <variable>.AdvPicSyntax.FCM, <variable>.AdvPicSyntax.FCM
	cmp	r6, #2	@ <variable>.AdvPicSyntax.FCM,
	uxtb	r0, r0	@ iftmp.561,
	strb	r0, [r4, #367]	@ iftmp.561, <variable>.AdvPicSyntax.CBPTAB
	beq	.L531	@,
.L516:
	ldrb	r1, [r4, #195]	@ zero_extendqisi2	@ D.41507, <variable>.AdvEntSyntax.DQUANT
	cmp	r1, #0	@ D.41507,
	bne	.L532	@,
.L517:
	ldrb	r1, [r4, #196]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.VSTRANSFORM, <variable>.AdvEntSyntax.VSTRANSFORM
	cmp	r1, #1	@ <variable>.AdvEntSyntax.VSTRANSFORM,
	beq	.L533	@,
.L518:
	mov	r0, r5	@, pBs
	bl	VC1_DecTransacfrm	@
	mov	r1, #1	@,
	strb	r0, [r4, #370]	@, <variable>.AdvPicSyntax.TRANSACFRM
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r3, #1	@ D.41438,
	strb	r0, [r4, #372]	@, <variable>.AdvPicSyntax.TRANSDCTAB
	mov	r0, r3	@, D.41438
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L496:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r1, [r4, #25]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.FINTERPFLAG, <variable>.AdvSeqSyntax.FINTERPFLAG
	ldr	r3, [r4, #392]	@ prephitmp.2045, <variable>.AdvPicSyntax.FCM
	cmp	r1, #1	@ <variable>.AdvSeqSyntax.FINTERPFLAG,
	strb	r0, [r4, #356]	@, <variable>.AdvPicSyntax.UVSAMP
	bne	.L498	@,
.L521:
	cmp	r3, #0	@ prephitmp.2045,
	bne	.L499	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldr	r3, [r4, #392]	@ prephitmp.2045, <variable>.AdvPicSyntax.FCM
	strb	r0, [r4, #357]	@, <variable>.AdvPicSyntax.INTERPFRM
	b	.L498	@
.L532:
	mov	r0, r5	@, pBs
	ldrb	r2, [r4, #464]	@ zero_extendqisi2	@, <variable>.AdvPicSyntax.PQUANT
	add	r3, r4, #508	@, pSyntax,
	bl	VC1_VopDQuant	@
	b	.L517	@
.L523:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	ldrb	r8, [r4, #198]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.QUANTIZER, <variable>.AdvEntSyntax.QUANTIZER
	strb	r0, [r4, #351]	@, <variable>.AdvPicSyntax.HALFQP
	b	.L502	@
.L528:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	cmp	r0, #0	@,
	moveq	r0, #3	@ iftmp.560,
	movne	r0, #1	@ iftmp.560,
	strb	r0, [r4, #362]	@ iftmp.560, <variable>.AdvPicSyntax.MVMODE
	b	.L511	@
.L524:
	mov	r1, r8	@, <variable>.AdvEntSyntax.QUANTIZER
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #359]	@, <variable>.AdvPicSyntax.PQUANTIZER
	b	.L504	@
.L525:
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	strb	r0, [r4, #360]	@, <variable>.AdvPicSyntax.POSTPROC
	b	.L505	@
.L526:
	mov	r0, r5	@, pBs
	add	r1, r4, #496	@, pSyntax,
	bl	VC1_DecBfraction	@
	strb	r0, [r4, #350]	@, <variable>.AdvPicSyntax.BFRACTION
	b	.L506	@
.L527:
	mov	r0, r5	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #361]	@, <variable>.AdvPicSyntax.MVRANGE
	b	.L507	@
.L533:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r1, r0	@ D.41517,
	strb	r1, [r4, #368]	@ D.41517, <variable>.AdvPicSyntax.TTMBF
	cmp	r1, #1	@ D.41517,
	bne	.L518	@,
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	strb	r0, [r4, #369]	@, <variable>.AdvPicSyntax.TTFRM
	b	.L518	@
.L531:
	mov	r1, r6	@, <variable>.AdvPicSyntax.FCM
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, r6	@, <variable>.AdvPicSyntax.FCM
	strb	r0, [r4, #376]	@, <variable>.AdvPicSyntax.BMVBPTAB
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #377]	@, <variable>.AdvPicSyntax.QMVBPTAB
	b	.L516	@
.L530:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #375]	@, <variable>.AdvPicSyntax.MBMODETAB
	b	.L513	@
.L529:
	mov	r0, r5	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #373]	@, <variable>.AdvPicSyntax.DMVRANGE
	b	.L512	@
	.fnend
	.size	VC1_Vfmw_ParseAdvBPicHdr, .-VC1_Vfmw_ParseAdvBPicHdr
	.align	2
	.global	VC1_Vfmw_ParseAdvPPicHdr
	.type	VC1_Vfmw_ParseAdvPPicHdr, %function
VC1_Vfmw_ParseAdvPPicHdr:
	.fnstart
.LFB1573:
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
	mov	r6, r1	@ pCodecInf, pCodecInf
	mov	r1, #1	@,
	mov	r4, r2	@ pSyntax, pSyntax
	mov	r5, r0	@ pBs, pBs
	bl	BsGet	@
	ldrb	r3, [r4, #23]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.INTERLACE, <variable>.AdvSeqSyntax.INTERLACE
	cmp	r3, #1	@ <variable>.AdvSeqSyntax.INTERLACE,
	strb	r0, [r4, #348]	@, <variable>.AdvPicSyntax.RNDCTRL
	beq	.L535	@,
	ldr	r0, [r4, #392]	@ <variable>.AdvPicSyntax.FCM, <variable>.AdvPicSyntax.FCM
	cmp	r0, #2	@ <variable>.AdvPicSyntax.FCM,
	beq	.L535	@,
	ldrb	r1, [r4, #25]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.FINTERPFLAG, <variable>.AdvSeqSyntax.FINTERPFLAG
	cmp	r1, #1	@ <variable>.AdvSeqSyntax.FINTERPFLAG,
	beq	.L560	@,
.L537:
	mov	r0, r5	@, pBs
	mov	r1, #5	@,
	bl	BsGet	@
	uxtb	r7, r0	@ D.41302,
	strb	r7, [r4, #358]	@ D.41302, <variable>.AdvPicSyntax.PQINDEX
	cmp	r7, #0	@ D.41302,
	bne	.L561	@,
.L538:
	mov	r3, #0	@ D.41306,
	mov	r0, r3	@, D.41306
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L561:
	ldrb	r8, [r4, #198]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.QUANTIZER, <variable>.AdvEntSyntax.QUANTIZER
	mov	r1, r7	@, D.41302
	mov	r0, r8	@, <variable>.AdvEntSyntax.QUANTIZER
	bl	VC1_Vfmw_DecPQUANT	@
	cmp	r7, #8	@ D.41302,
	movhi	r3, #0	@ tmp183,
	str	r0, [r4, #464]	@, <variable>.AdvPicSyntax.PQUANT
	strhib	r3, [r4, #351]	@ tmp183, <variable>.AdvPicSyntax.HALFQP
	bls	.L562	@,
.L540:
	cmp	r8, #1	@ <variable>.AdvEntSyntax.QUANTIZER,
	movne	r3, #0	@ tmp187,
	strneb	r3, [r4, #359]	@ tmp187, <variable>.AdvPicSyntax.PQUANTIZER
	beq	.L563	@,
.L542:
	ldrb	r1, [r4, #21]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.POSTPROCFLAG, <variable>.AdvSeqSyntax.POSTPROCFLAG
	cmp	r1, #1	@ <variable>.AdvSeqSyntax.POSTPROCFLAG,
	beq	.L564	@,
.L543:
	ldrb	ip, [r4, #194]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.EXTENDED_MV, <variable>.AdvEntSyntax.EXTENDED_MV
	cmp	ip, #1	@ <variable>.AdvEntSyntax.EXTENDED_MV,
	beq	.L565	@,
.L544:
	ldr	lr, [r4, #392]	@ <variable>.AdvPicSyntax.FCM, <variable>.AdvPicSyntax.FCM
	cmp	lr, #0	@ <variable>.AdvPicSyntax.FCM,
	beq	.L566	@,
	ldrb	r0, [r4, #200]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.EXTENDED_DMV, <variable>.AdvEntSyntax.EXTENDED_DMV
	cmp	r0, #1	@ <variable>.AdvEntSyntax.EXTENDED_DMV,
	movne	r0, #0	@ tmp204,
	strneb	r0, [r4, #373]	@ tmp204, <variable>.AdvPicSyntax.DMVRANGE
	beq	.L567	@,
.L548:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #374]	@, <variable>.AdvPicSyntax.QMVSWITCH
	mov	r0, r5	@, pBs
	bl	BsGet	@
	cmp	r0, #1	@ D.41355,
	str	r0, [r4, #468]	@ D.41355, <variable>.AdvPicSyntax.INTCOMP
	beq	.L568	@,
.L549:
	mov	r2, #0	@ tmp209,
	strb	r2, [r4, #382]	@ tmp209, <variable>.AdvPicSyntax.MVTYPEMBMode
.L546:
	mov	r1, r6	@, pCodecInf
	mov	r0, r5	@, pBs
	mov	r2, r4	@, pSyntax
	mov	r3, #0	@,
	bl	BPD_Drv	@
	cmp	r0, #1	@,
	beq	.L538	@,
	ldr	r1, [r4, #392]	@ <variable>.AdvPicSyntax.FCM, <variable>.AdvPicSyntax.FCM
	cmp	r1, #2	@ <variable>.AdvPicSyntax.FCM,
	beq	.L569	@,
.L550:
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldr	r6, [r4, #392]	@ <variable>.AdvPicSyntax.FCM, <variable>.AdvPicSyntax.FCM
	cmp	r6, #0	@ <variable>.AdvPicSyntax.FCM,
	moveq	r1, #2	@,
	movne	r1, #3	@,
	strb	r0, [r4, #366]	@, <variable>.AdvPicSyntax.MVTAB
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldr	r6, [r4, #392]	@ <variable>.AdvPicSyntax.FCM, <variable>.AdvPicSyntax.FCM
	cmp	r6, #2	@ <variable>.AdvPicSyntax.FCM,
	uxtb	r1, r0	@ iftmp.558,
	strb	r1, [r4, #367]	@ iftmp.558, <variable>.AdvPicSyntax.CBPTAB
	beq	.L570	@,
.L553:
	ldrb	r1, [r4, #195]	@ zero_extendqisi2	@ D.41388, <variable>.AdvEntSyntax.DQUANT
	cmp	r1, #0	@ D.41388,
	bne	.L571	@,
.L556:
	ldrb	r1, [r4, #196]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.VSTRANSFORM, <variable>.AdvEntSyntax.VSTRANSFORM
	cmp	r1, #1	@ <variable>.AdvEntSyntax.VSTRANSFORM,
	beq	.L572	@,
.L557:
	mov	r0, r5	@, pBs
	bl	VC1_DecTransacfrm	@
	mov	r1, #1	@,
	strb	r0, [r4, #370]	@, <variable>.AdvPicSyntax.TRANSACFRM
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r3, #1	@ D.41306,
	strb	r0, [r4, #372]	@, <variable>.AdvPicSyntax.TRANSDCTAB
	mov	r0, r3	@, D.41306
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L535:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r1, [r4, #25]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.FINTERPFLAG, <variable>.AdvSeqSyntax.FINTERPFLAG
	cmp	r1, #1	@ <variable>.AdvSeqSyntax.FINTERPFLAG,
	strb	r0, [r4, #356]	@, <variable>.AdvPicSyntax.UVSAMP
	bne	.L537	@,
.L560:
	ldr	r2, [r4, #392]	@ <variable>.AdvPicSyntax.FCM, <variable>.AdvPicSyntax.FCM
	cmp	r2, #0	@ <variable>.AdvPicSyntax.FCM,
	bne	.L537	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #357]	@, <variable>.AdvPicSyntax.INTERPFRM
	b	.L537	@
.L566:
	mov	r0, r5	@, pBs
	ldrb	r1, [r4, #464]	@ zero_extendqisi2	@, <variable>.AdvPicSyntax.PQUANT
	bl	VC1_DecMvmodeProgrP	@
	uxtb	r3, r0	@ D.41336,
	strb	r3, [r4, #362]	@ D.41336, <variable>.AdvPicSyntax.MVMODE
	cmp	r3, #4	@ D.41336,
	bne	.L546	@,
	ldrb	r1, [r4, #464]	@ zero_extendqisi2	@, <variable>.AdvPicSyntax.PQUANT
	mov	r0, r5	@, pBs
	bl	VC1_DecMvmode2	@
	mov	r1, #6	@,
	strb	r0, [r4, #363]	@, <variable>.AdvPicSyntax.MVMODE2
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #6	@,
	strb	r0, [r4, #364]	@, <variable>.AdvPicSyntax.LUMSCALE
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #365]	@, <variable>.AdvPicSyntax.LUMSHIFT
	b	.L546	@
.L562:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	ldrb	r8, [r4, #198]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.QUANTIZER, <variable>.AdvEntSyntax.QUANTIZER
	strb	r0, [r4, #351]	@, <variable>.AdvPicSyntax.HALFQP
	b	.L540	@
.L571:
	mov	r0, r5	@, pBs
	ldrb	r2, [r4, #464]	@ zero_extendqisi2	@, <variable>.AdvPicSyntax.PQUANT
	add	r3, r4, #508	@, pSyntax,
	bl	VC1_VopDQuant	@
	b	.L556	@
.L563:
	mov	r1, r8	@, <variable>.AdvEntSyntax.QUANTIZER
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #359]	@, <variable>.AdvPicSyntax.PQUANTIZER
	b	.L542	@
.L565:
	mov	r0, r5	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #361]	@, <variable>.AdvPicSyntax.MVRANGE
	b	.L544	@
.L564:
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	strb	r0, [r4, #360]	@, <variable>.AdvPicSyntax.POSTPROC
	b	.L543	@
.L569:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #375]	@, <variable>.AdvPicSyntax.MBMODETAB
	b	.L550	@
.L572:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r3, r0	@ D.41396,
	strb	r3, [r4, #368]	@ D.41396, <variable>.AdvPicSyntax.TTMBF
	cmp	r3, #1	@ D.41396,
	bne	.L557	@,
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	strb	r0, [r4, #369]	@, <variable>.AdvPicSyntax.TTFRM
	b	.L557	@
.L570:
	mov	r0, r5	@, pBs
	mov	r1, r6	@, <variable>.AdvPicSyntax.FCM
	bl	BsGet	@
	ldrb	ip, [r4, #374]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.QMVSWITCH, <variable>.AdvPicSyntax.QMVSWITCH
	cmp	ip, #1	@ <variable>.AdvPicSyntax.QMVSWITCH,
	strb	r0, [r4, #376]	@, <variable>.AdvPicSyntax.BMVBPTAB
	movne	r0, #0	@ iftmp.559,
	strneb	r0, [r4, #377]	@ iftmp.559, <variable>.AdvPicSyntax.QMVBPTAB
	bne	.L553	@
.L573:
	mov	r1, r6	@, <variable>.AdvPicSyntax.FCM
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ iftmp.559,
	strb	r0, [r4, #377]	@ iftmp.559, <variable>.AdvPicSyntax.QMVBPTAB
	b	.L553	@
.L568:
	mov	r1, #6	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #6	@,
	strb	r0, [r4, #364]	@, <variable>.AdvPicSyntax.LUMSCALE
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #365]	@, <variable>.AdvPicSyntax.LUMSHIFT
	b	.L549	@
.L567:
	mov	r0, r5	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #373]	@, <variable>.AdvPicSyntax.DMVRANGE
	b	.L548	@
	.fnend
	.size	VC1_Vfmw_ParseAdvPPicHdr, .-VC1_Vfmw_ParseAdvPPicHdr
	.align	2
	.global	VC1_Vfmw_ParseAdvIPicHdr
	.type	VC1_Vfmw_ParseAdvIPicHdr, %function
VC1_Vfmw_ParseAdvIPicHdr:
	.fnstart
.LFB1572:
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
	mov	r6, r1	@ pCodecInf, pCodecInf
	mov	r1, #1	@,
	mov	r4, r2	@ pSyntax, pSyntax
	mov	r5, r0	@ pBs, pBs
	bl	BsGet	@
	ldrb	r1, [r4, #23]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.INTERLACE, <variable>.AdvSeqSyntax.INTERLACE
	cmp	r1, #1	@ <variable>.AdvSeqSyntax.INTERLACE,
	strb	r0, [r4, #348]	@, <variable>.AdvPicSyntax.RNDCTRL
	beq	.L587	@,
.L575:
	ldr	r3, [r4, #392]	@ <variable>.AdvPicSyntax.FCM, <variable>.AdvPicSyntax.FCM
	cmp	r3, #0	@ <variable>.AdvPicSyntax.FCM,
	bne	.L576	@,
	ldrb	r1, [r4, #25]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.FINTERPFLAG, <variable>.AdvSeqSyntax.FINTERPFLAG
	cmp	r1, #1	@ <variable>.AdvSeqSyntax.FINTERPFLAG,
	beq	.L588	@,
.L576:
	mov	r0, r5	@, pBs
	mov	r1, #5	@,
	bl	BsGet	@
	uxtb	r7, r0	@ D.41238,
	strb	r7, [r4, #358]	@ D.41238, <variable>.AdvPicSyntax.PQINDEX
	cmp	r7, #0	@ D.41238,
	bne	.L589	@,
.L577:
	mov	r0, #0	@ D.41242,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L589:
	ldrb	r8, [r4, #198]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.QUANTIZER, <variable>.AdvEntSyntax.QUANTIZER
	mov	r1, r7	@, D.41238
	mov	r0, r8	@, <variable>.AdvEntSyntax.QUANTIZER
	bl	VC1_Vfmw_DecPQUANT	@
	cmp	r7, #8	@ D.41238,
	movhi	r3, #0	@ tmp161,
	str	r0, [r4, #464]	@, <variable>.AdvPicSyntax.PQUANT
	strhib	r3, [r4, #351]	@ tmp161, <variable>.AdvPicSyntax.HALFQP
	bls	.L590	@,
.L579:
	cmp	r8, #1	@ <variable>.AdvEntSyntax.QUANTIZER,
	movne	r3, #0	@ tmp165,
	strneb	r3, [r4, #359]	@ tmp165, <variable>.AdvPicSyntax.PQUANTIZER
	beq	.L591	@,
.L581:
	ldrb	r0, [r4, #21]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.POSTPROCFLAG, <variable>.AdvSeqSyntax.POSTPROCFLAG
	cmp	r0, #1	@ <variable>.AdvSeqSyntax.POSTPROCFLAG,
	beq	.L592	@,
.L582:
	mov	r1, r6	@, pCodecInf
	mov	r0, r5	@, pBs
	mov	r2, r4	@, pSyntax
	mov	r3, #0	@,
	bl	BPD_Drv	@
	cmp	r0, #1	@,
	beq	.L577	@,
	mov	r0, r5	@, pBs
	bl	VC1_DecTransacfrm	@
	strb	r0, [r4, #370]	@, <variable>.AdvPicSyntax.TRANSACFRM
	mov	r0, r5	@, pBs
	bl	VC1_DecTransacfrm	@
	mov	r1, #1	@,
	strb	r0, [r4, #371]	@, <variable>.AdvPicSyntax.TRANSACFRM2
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r1, [r4, #195]	@ zero_extendqisi2	@ D.41271, <variable>.AdvEntSyntax.DQUANT
	cmp	r1, #0	@ D.41271,
	strb	r0, [r4, #372]	@, <variable>.AdvPicSyntax.TRANSDCTAB
	bne	.L583	@,
.L586:
	mov	r0, #1	@ D.41242,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L583:
	mov	r0, r5	@, pBs
	add	r3, r4, #508	@, pSyntax,
	ldrb	r2, [r4, #464]	@ zero_extendqisi2	@, <variable>.AdvPicSyntax.PQUANT
	bl	VC1_VopDQuant	@
	b	.L586	@
.L588:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #357]	@, <variable>.AdvPicSyntax.INTERPFRM
	b	.L576	@
.L587:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #356]	@, <variable>.AdvPicSyntax.UVSAMP
	b	.L575	@
.L590:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	ldrb	r8, [r4, #198]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.QUANTIZER, <variable>.AdvEntSyntax.QUANTIZER
	strb	r0, [r4, #351]	@, <variable>.AdvPicSyntax.HALFQP
	b	.L579	@
.L592:
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	strb	r0, [r4, #360]	@, <variable>.AdvPicSyntax.POSTPROC
	b	.L582	@
.L591:
	mov	r1, r8	@, <variable>.AdvEntSyntax.QUANTIZER
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #359]	@, <variable>.AdvPicSyntax.PQUANTIZER
	b	.L581	@
	.fnend
	.size	VC1_Vfmw_ParseAdvIPicHdr, .-VC1_Vfmw_ParseAdvIPicHdr
	.align	2
	.global	VC1_Vfmw_ParseAdvFramePicHdr
	.type	VC1_Vfmw_ParseAdvFramePicHdr, %function
VC1_Vfmw_ParseAdvFramePicHdr:
	.fnstart
.LFB1575:
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
	mov	r4, r1	@ pCodecInf, pCodecInf
	mov	r1, #4	@,
	mov	r5, r2	@ pSyntax, pSyntax
	mov	r6, r0	@ pBs, pBs
	bl	BsShow	@
	cmp	r0, #7	@ Code,
	movle	r7, #1	@ prephitmp.2132,
	movle	r1, r7	@ Len, prephitmp.2132
	ble	.L595	@,
	cmp	r0, #11	@ Code,
	movle	r7, #2	@ prephitmp.2132,
	movle	r1, r7	@ Len, prephitmp.2132
	bgt	.L619	@,
.L595:
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	strb	r7, [r5, #349]	@ prephitmp.2132, <variable>.AdvPicSyntax.PTYPE
	ldrb	r0, [r4, #3513]	@ zero_extendqisi2	@ <variable>.SynNew.AdvPicSyntax.PTYPE, <variable>.SynNew.AdvPicSyntax.PTYPE
	strb	r0, [r4, #2]	@ <variable>.SynNew.AdvPicSyntax.PTYPE, <variable>.PicCodingType
	ldrb	r3, [r5, #24]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.TFCNTRFLAG, <variable>.AdvSeqSyntax.TFCNTRFLAG
	cmp	r3, #0	@ <variable>.AdvSeqSyntax.TFCNTRFLAG,
	bne	.L620	@,
.L599:
	ldrb	r3, [r5, #22]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.PULLDOWN, <variable>.AdvSeqSyntax.PULLDOWN
	cmp	r3, #0	@ <variable>.AdvSeqSyntax.PULLDOWN,
	moveq	r2, #1	@ tmp162,
	streqb	r2, [r5, #352]	@ tmp162, <variable>.AdvPicSyntax.TFF
	beq	.L602	@,
	ldrb	r1, [r5, #23]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.INTERLACE, <variable>.AdvSeqSyntax.INTERLACE
	cmp	r1, #0	@ <variable>.AdvSeqSyntax.INTERLACE,
	bne	.L601	@,
	mov	r0, r6	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	ldrb	r3, [r5, #22]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.PULLDOWN, <variable>.AdvSeqSyntax.PULLDOWN
	strb	r0, [r5, #354]	@, <variable>.AdvPicSyntax.RPTFRM
.L602:
	ldrb	r2, [r5, #23]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.INTERLACE, <variable>.AdvSeqSyntax.INTERLACE
	cmp	r2, #1	@ <variable>.AdvSeqSyntax.INTERLACE,
	beq	.L621	@,
.L603:
	cmp	r3, #1	@ <variable>.AdvSeqSyntax.PULLDOWN,
	ldrb	r1, [r5, #190]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.PANSCAN_FLAG, <variable>.AdvEntSyntax.PANSCAN_FLAG
	ldreqb	r3, [r5, #354]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.RPTFRM, <variable>.AdvPicSyntax.RPTFRM
	movne	r3, #1	@ tmp172,
	addeq	r3, r3, #1	@ tmp171, <variable>.AdvPicSyntax.RPTFRM,
	cmp	r1, #1	@ <variable>.AdvEntSyntax.PANSCAN_FLAG,
	str	r3, [r5, #492]	@ tmp172, <variable>.AdvPicSyntax.NumOfPanScanWindows
	beq	.L622	@,
.L607:
	ldrb	r0, [r5, #349]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.PTYPE, <variable>.AdvPicSyntax.PTYPE
	cmp	r0, #5	@ <variable>.AdvPicSyntax.PTYPE,
	ldrls	pc, [pc, r0, asl #2]	@ <variable>.AdvPicSyntax.PTYPE
	b	.L609	@
.L615:
	.word	.L610
	.word	.L611
	.word	.L612
	.word	.L609
	.word	.L613
	.word	.L614
.L601:
	mov	r1, #1	@,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #352]	@, <variable>.AdvPicSyntax.TFF
	mov	r0, r6	@, pBs
	bl	BsGet	@
	ldrb	r2, [r5, #23]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.INTERLACE, <variable>.AdvSeqSyntax.INTERLACE
	ldrb	r3, [r5, #22]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.PULLDOWN, <variable>.AdvSeqSyntax.PULLDOWN
	cmp	r2, #1	@ <variable>.AdvSeqSyntax.INTERLACE,
	strb	r0, [r5, #353]	@, <variable>.AdvPicSyntax.RFF
	bne	.L603	@,
.L621:
	cmp	r3, #1	@ <variable>.AdvSeqSyntax.PULLDOWN,
	ldrb	r1, [r5, #190]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.PANSCAN_FLAG, <variable>.AdvEntSyntax.PANSCAN_FLAG
	ldreqb	r3, [r5, #353]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.RFF, <variable>.AdvPicSyntax.RFF
	movne	r3, #2	@ tmp168,
	addeq	r3, r3, #2	@ tmp167, <variable>.AdvPicSyntax.RFF,
	cmp	r1, #1	@ <variable>.AdvEntSyntax.PANSCAN_FLAG,
	str	r3, [r5, #492]	@ tmp168, <variable>.AdvPicSyntax.NumOfPanScanWindows
	bne	.L607	@,
.L622:
	mov	r0, r6	@, pBs
	bl	BsGet	@
	uxtb	ip, r0	@ D.41587,
	strb	ip, [r5, #355]	@ D.41587, <variable>.AdvPicSyntax.PS_PRESENT
	cmp	ip, #1	@ D.41587,
	bne	.L607	@,
	ldr	lr, [r5, #492]	@ <variable>.AdvPicSyntax.NumOfPanScanWindows, <variable>.AdvPicSyntax.NumOfPanScanWindows
	cmp	lr, #0	@ <variable>.AdvPicSyntax.NumOfPanScanWindows,
	ble	.L607	@,
	mov	r7, r5	@ ivtmp.2148, pSyntax
	mov	r8, #0	@ i,
.L608:
	mov	r1, #18	@,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	mov	r1, #18	@,
	add	r8, r8, #1	@ i, i,
	str	r0, [r7, #400]	@, <variable>.AdvPicSyntax.PS_HOFFSET
	mov	r0, r6	@, pBs
	bl	BsGet	@
	mov	r1, #14	@,
	str	r0, [r7, #416]	@, <variable>.AdvPicSyntax.PS_VOFFSET
	mov	r0, r6	@, pBs
	bl	BsGet	@
	mov	r1, #14	@,
	str	r0, [r7, #432]	@, <variable>.AdvPicSyntax.PS_WIDTH
	mov	r0, r6	@, pBs
	bl	BsGet	@
	ldr	r3, [r5, #492]	@ <variable>.AdvPicSyntax.NumOfPanScanWindows, <variable>.AdvPicSyntax.NumOfPanScanWindows
	cmp	r3, r8	@ <variable>.AdvPicSyntax.NumOfPanScanWindows, i
	str	r0, [r7, #448]	@, <variable>.AdvPicSyntax.PS_HEIGHT
	add	r7, r7, #4	@ ivtmp.2148, ivtmp.2148,
	bgt	.L608	@,
	b	.L607	@
.L619:
	cmp	r0, #13	@ Code,
	movle	r7, #0	@ prephitmp.2132,
	movle	r1, #3	@ Len,
	ble	.L595	@,
	cmp	r0, #14	@ Code,
	mov	r0, r6	@, pBs
	moveq	r7, #4	@ prephitmp.2132,
	movne	r1, #4	@ Len,
	moveq	r1, r7	@ Len, prephitmp.2132
	movne	r7, #5	@ prephitmp.2132,
	bl	BsSkip	@
	strb	r7, [r5, #349]	@ prephitmp.2132, <variable>.AdvPicSyntax.PTYPE
	ldrb	r0, [r4, #3513]	@ zero_extendqisi2	@ <variable>.SynNew.AdvPicSyntax.PTYPE, <variable>.SynNew.AdvPicSyntax.PTYPE
	strb	r0, [r4, #2]	@ <variable>.SynNew.AdvPicSyntax.PTYPE, <variable>.PicCodingType
	ldrb	r3, [r5, #24]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.TFCNTRFLAG, <variable>.AdvSeqSyntax.TFCNTRFLAG
	cmp	r3, #0	@ <variable>.AdvSeqSyntax.TFCNTRFLAG,
	beq	.L599	@,
.L620:
	mov	r0, r6	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
	str	r0, [r5, #396]	@, <variable>.AdvPicSyntax.TFCNTR
	b	.L599	@
.L614:
	mov	r0, #1	@ Ret,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L609:
	mov	r0, #0	@ Ret,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L610:
	mov	r0, r6	@, pBs
	mov	r1, r4	@, pCodecInf
	mov	r2, r5	@, pSyntax
	bl	VC1_Vfmw_ParseAdvIPicHdr	@
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L611:
	mov	r0, r6	@, pBs
	mov	r1, r4	@, pCodecInf
	mov	r2, r5	@, pSyntax
	bl	VC1_Vfmw_ParseAdvPPicHdr	@
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L612:
	mov	r0, r6	@, pBs
	mov	r1, r4	@, pCodecInf
	mov	r2, r5	@, pSyntax
	bl	VC1_Vfmw_ParseAdvBPicHdr	@
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L613:
	mov	r0, r6	@, pBs
	mov	r1, r4	@, pCodecInf
	mov	r2, r5	@, pSyntax
	bl	VC1_Vfmw_ParseAdvIPicHdr	@
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	VC1_Vfmw_ParseAdvFramePicHdr, .-VC1_Vfmw_ParseAdvFramePicHdr
	.align	2
	.global	VC1_Vfmw_ParseAdvPicHdr
	.type	VC1_Vfmw_ParseAdvPicHdr, %function
VC1_Vfmw_ParseAdvPicHdr:
	.fnstart
.LFB1582:
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
	mov	r4, r1	@ pCodecInf, pCodecInf
	mov	r5, r0	@ pBs, pBs
	mov	r1, #0	@,
	mov	r0, r4	@, pCodecInf
	mov	r6, r2	@ pSyntax, pSyntax
	bl	VC1_SetCurPicResolutionInfo	@
	ldrb	r3, [r4, #8]	@ zero_extendqisi2	@ <variable>.Is2ndFld, <variable>.Is2ndFld
	cmp	r3, #0	@ <variable>.Is2ndFld,
	beq	.L624	@,
	movw	r1, #23316	@ tmp142,
	ldr	r0, [r4, r1]	@ <variable>.SlcNum, <variable>.SlcNum
	cmp	r0, #0	@ <variable>.SlcNum,
	ble	.L632	@,
.L624:
	ldrb	r8, [r6, #23]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.INTERLACE, <variable>.AdvSeqSyntax.INTERLACE
	cmp	r8, #1	@ <variable>.AdvSeqSyntax.INTERLACE,
	movne	r8, #1	@ prephitmp.2175,
	movne	r7, #0	@ Code,
	beq	.L633	@,
.L627:
	str	r7, [r6, #392]	@ Code, <variable>.AdvPicSyntax.FCM
.L625:
	cmp	r8, #0	@ prephitmp.2175,
	bne	.L634	@,
	mov	r0, r5	@, pBs
	mov	r1, r4	@, pCodecInf
	mov	r2, r6	@, pSyntax
	bl	VC1_Vfmw_ParseAdvFieldPicHdr	@
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L634:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, pCodecInf
	mov	r2, r6	@, pSyntax
	bl	VC1_Vfmw_ParseAdvFramePicHdr	@
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L632:
	ldr	r8, [r6, #392]	@ pretmp.2172, <variable>.AdvPicSyntax.FCM
	cmp	r8, #0	@ pretmp.2172,
	cmpne	r8, #2	@, pretmp.2172,
	movne	r8, #0	@, prephitmp.2175
	moveq	r8, #1	@, prephitmp.2175
	b	.L625	@
.L633:
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsShow	@
	cmp	r0, #1	@ Code,
	mov	r7, r0	@ Code,
	ble	.L635	@,
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsSkip	@
	cmp	r7, #2	@ Code,
	movne	r8, #0	@, prephitmp.2175
	moveq	r8, #1	@, prephitmp.2175
	b	.L627	@
.L635:
	mov	r0, r5	@, pBs
	mov	r1, r8	@, <variable>.AdvSeqSyntax.INTERLACE
	bl	BsSkip	@
	mov	r7, #0	@ Code,
	b	.L627	@
	.fnend
	.size	VC1_Vfmw_ParseAdvPicHdr, .-VC1_Vfmw_ParseAdvPicHdr
	.align	2
	.global	VC1_Vfmw_ParseAdvSlcHdr
	.type	VC1_Vfmw_ParseAdvSlcHdr, %function
VC1_Vfmw_ParseAdvSlcHdr:
	.fnstart
.LFB1583:
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
	movw	r3, #23316	@ tmp142,
	mov	r4, r1	@ pCodecInf, pCodecInf
	mov	r1, #9	@,
	mov	r5, r2	@ pSyntax, pSyntax
	ldr	r7, [r4, r3]	@ D.42017, <variable>.SlcNum
	mov	r6, r0	@ pBs, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	add	r7, r7, r7, asl #1	@, tmp146, D.42017, D.42017,
	add	r7, r5, r7, asl #2	@, tmp148, pSyntax, tmp146,
	str	r0, [r7, #528]	@, <variable>.SLICE_ADDR
	mov	r0, r6	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.42021,
	strb	r0, [r7, #524]	@ D.42021, <variable>.PIC_HEADER_FLAG
	cmp	r0, #1	@ D.42021,
	movne	r0, #1	@ Ret,
	ldmnefd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	add	lr, r5, #188	@ tmp161, pSyntax,
	add	r7, r4, #6912	@ tmp160, pCodecInf,
	add	ip, r7, #36	@ tmp160, tmp160,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp175,,,,
	mov	r7, ip	@ tmp176, tmp160
	stmia	r7!, {r0, r1, r2, r3}	@ tmp176,,,,
	mov	ip, r7	@ tmp178, tmp176
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp177,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp178,,,,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp179,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp178,,,,
	ldmia	lr, {r0, r1, r2}	@ tmp179,,,
	stmia	ip, {r0, r1, r2}	@ tmp180,,,
	add	r1, r4, #6720	@, pCodecInf,
	add	r0, r1, #56	@,,
	mov	r2, #172	@,
	add	r1, r5, #16	@, pSyntax,
	bl	memcpy	@
	add	r0, r4, #7104	@, pCodecInf,
	add	r1, r5, #348	@, pSyntax,
	mov	r2, #176	@,
	add	r0, r0, #4	@,,
	bl	memcpy	@
	add	r2, r4, #6720	@, tmp1,
	mov	r0, r6	@, pBs
	mov	r1, r4	@, pCodecInf
	add	r2, r2, #40	@,,
	bl	VC1_Vfmw_ParseAdvPicHdr	@
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	VC1_Vfmw_ParseAdvSlcHdr, .-VC1_Vfmw_ParseAdvSlcHdr
	.align	2
	.global	VC1_Vfmw_ParseAdvHdr
	.type	VC1_Vfmw_ParseAdvHdr, %function
VC1_Vfmw_ParseAdvHdr:
	.fnstart
.LFB1588:
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
	str	r1, [fp, #-48]	@ pSyntax, %sfp
	ldr	r6, [r0, #3128]	@ pBs, <variable>.pBs
	mov	r4, r0	@ pCodecInf, pCodecInf
	mov	r1, #32	@,
	mov	r8, #0	@ tmp171,
	add	r7, r0, #35584	@ pVc1Packet, pCodecInf,
	strb	r8, [r0, #6]	@ tmp171, <variable>.IsWaitToDec
	mov	r0, r6	@, pBs
	mov	r9, r2	@ ChanID, ChanID
	bl	BsGet	@
	ldr	r5, [r6, #24]	@ <variable>.TotalPos, <variable>.TotalPos
	movw	r2, #35612	@ tmp177,
	movw	r1, #35632	@ tmp179,
	cmp	r5, r8	@ <variable>.TotalPos,
	add	ip, r5, #7	@ tmp175, <variable>.TotalPos,
	ldr	sl, [r4, r2]	@ <variable>.stCurPacket.BsVirAddr, <variable>.stCurPacket.BsVirAddr
	add	r7, r7, #28	@ pVc1Packet, pVc1Packet,
	movlt	r5, ip	@ <variable>.TotalPos, tmp175
	ldr	r2, [r4, r1]	@ <variable>.stCurPacket.BsLength, <variable>.stCurPacket.BsLength
	mov	r3, r5, asr #3	@ tmp176, <variable>.TotalPos,
	add	sl, r3, sl	@ pTmp, tmp176, <variable>.stCurPacket.BsVirAddr
	rsb	r2, r3, r2	@, tmp176, <variable>.stCurPacket.BsLength
	mov	r1, sl	@, pTmp
	uxtb	r5, r0	@ Code,
	mov	r0, r6	@, pBs
	bl	BsInit	@
	sub	r3, r5, #10	@ tmp182, Code,
	cmp	r3, #5	@ tmp182,
	bhi	.L641	@,
	cmp	r5, #11	@ Code,
	beq	.L686	@,
	ldrb	r2, [r4, #0]	@ zero_extendqisi2	@ <variable>.CodecStatus, <variable>.CodecStatus
	and	r5, r2, #7	@ tmp440, <variable>.CodecStatus,
	cmp	r5, #7	@ tmp440,
	beq	.L687	@,
	movw	ip, #23316	@ tmp447,
	strb	r8, [r4, #8]	@ tmp171, <variable>.Is2ndFld
	str	r8, [r4, ip]	@ tmp171, <variable>.SlcNum
	cmp	r3, #5	@ tmp182,
	ldrls	pc, [pc, r3, asl #2]	@ tmp182
	b	.L677	@
.L662:
	.word	.L657
	.word	.L677
	.word	.L658
	.word	.L659
	.word	.L660
	.word	.L661
.L641:
	sub	lr, r5, #27	@ tmp733, Code,
	cmp	lr, #4	@ tmp733,
	bls	.L688	@,
	cmp	r5, #254	@ Code,
	beq	.L689	@,
.L677:
	mov	r0, r9	@, ChanID
	mov	r1, r7	@, pVc1Packet
	bl	VC1_ClearCurPacket	@
	mov	r5, #0	@ Ret,
.L646:
	mov	r0, r5	@, Ret
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L688:
	mov	r0, r9	@, ChanID
	mov	r1, r7	@, pVc1Packet
	bl	VC1_ClearCurPacket	@
	mov	r5, #1	@ Ret,
	b	.L646	@
.L686:
	ldrb	lr, [r4, #0]	@ zero_extendqisi2	@ <variable>.CodecStatus, <variable>.CodecStatus
	and	r0, lr, #7	@ tmp184, <variable>.CodecStatus,
	cmp	r0, #7	@ tmp184,
	beq	.L690	@,
	mov	r0, r9	@, ChanID
	mov	r1, r7	@, pVc1Packet
	bl	VC1_ClearCurPacket	@
	mov	r5, r8	@ Ret, tmp171
	b	.L646	@
.L689:
	mov	r1, #32	@,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	mov	r1, #32	@,
	mov	r5, r0	@ D.42266,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	movw	ip, #:lower16:1128615492	@ tmp735,
	movw	r1, #:lower16:1213419593	@ tmp738,
	movt	ip, #:upper16:1128615492	@ tmp735,
	movt	r1, #:upper16:1213419593	@ tmp738,
	cmp	r0, ip	@, tmp735
	cmpeq	r5, r1	@, D.42266, tmp738
	bne	.L677	@,
	ldrb	r2, [r4, #0]	@ zero_extendqisi2	@ <variable>.CodecStatus, <variable>.CodecStatus
	mov	r3, #1	@ tmp743,
	mov	r5, r3	@ Ret, tmp743
	strb	r3, [r4, #6]	@ tmp743, <variable>.IsWaitToDec
	orr	r0, r2, #16	@ tmp747, <variable>.CodecStatus,
	strb	r3, [r4, #7]	@ tmp743, <variable>.IsStreamEndFlag
	strb	r0, [r4, #0]	@ tmp747, <variable>.CodecStatus
	b	.L646	@
.L687:
	mov	r5, #1	@ tmp443,
	orr	lr, r2, #16	@ tmp441, <variable>.CodecStatus,
	strb	r5, [r4, #6]	@ tmp443, <variable>.IsWaitToDec
	strb	lr, [r4, #0]	@ tmp441, <variable>.CodecStatus
	b	.L646	@
.L658:
	mov	r0, #1	@ tmp454,
	strb	r0, [r4, #8]	@ tmp454, <variable>.Is2ndFld
	ldr	r3, [fp, #-48]	@, %sfp
	mov	r1, #16	@,
	add	r0, r3, #508	@,,
	bl	__memzero	@
	ldrb	r1, [r4, #8]	@ zero_extendqisi2	@ <variable>.Is2ndFld, <variable>.Is2ndFld
	cmp	r1, #0	@ <variable>.Is2ndFld,
	beq	.L659	@,
.L663:
	add	r2, r4, #23296	@, pCodecInf,
	mov	r1, #12288	@,
	add	r0, r2, #24	@,,
	bl	__memzero	@
	mov	r0, r6	@, pBs
	bl	BsPos	@
	ldr	r2, [fp, #-48]	@, %sfp
	mov	r1, r4	@, pCodecInf
	str	r0, [r2, #488]	@, <variable>.AdvPicSyntax.HdrLen
	mov	r0, r6	@, pBs
	bl	VC1_Vfmw_ParseAdvPicHdr	@
	cmp	r0, #1	@ Ret,
	mov	r5, r0	@ Ret,
	beq	.L691	@,
	mov	r0, r9	@, ChanID
	mov	r1, r7	@, pVc1Packet
	bl	VC1_ClearCurPacket	@
	movw	r1, #:lower16:.LC12	@,
	movw	r2, #5626	@,
	movt	r1, #:upper16:.LC12	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L646	@
.L660:
	mov	r0, r6	@, pBs
	mov	r1, r4	@, pCodecInf
	ldr	r2, [fp, #-48]	@, %sfp
	bl	VC1_Vfmw_ParseAdvEntptHdr	@
	cmp	r0, #1	@ Ret,
	mov	r5, r0	@ Ret,
	beq	.L692	@,
.L675:
	mov	r0, r9	@, ChanID
	mov	r1, r7	@, pVc1Packet
	bl	VC1_ClearCurPacket	@
	b	.L646	@
.L661:
	mov	r0, r6	@, pBs
	ldr	r2, [fp, #-48]	@, %sfp
	mov	r1, r4	@, pCodecInf
	bl	VC1_Vfmw_ParseAdvSeqHdr	@
	cmp	r0, #1	@ Ret,
	mov	r5, r0	@ Ret,
	ldreqb	r3, [r4, #0]	@ zero_extendqisi2	@ <variable>.CodecStatus, <variable>.CodecStatus
	orreq	r3, r3, #1	@ tmp731, <variable>.CodecStatus,
	streqb	r3, [r4, #0]	@ tmp731, <variable>.CodecStatus
	b	.L675	@
.L657:
	orr	r2, r2, #32	@ tmp452, <variable>.CodecStatus,
	mov	r0, r9	@, ChanID
	strb	r2, [r4, #0]	@ tmp452, <variable>.CodecStatus
	mov	r1, r7	@, pVc1Packet
	bl	VC1_ClearCurPacket	@
	mov	r5, #1	@ Ret,
	b	.L646	@
.L659:
	ldr	lr, [fp, #-48]	@, %sfp
	mov	r1, #176	@,
	add	r0, lr, #348	@,,
	ldrb	r5, [lr, #379]	@ zero_extendqisi2	@ D.42222, <variable>.AdvPicSyntax.REFDIST
	bl	__memzero	@
	ldr	ip, [fp, #-48]	@, %sfp
	strb	r5, [ip, #379]	@ D.42222, <variable>.AdvPicSyntax.REFDIST
	b	.L663	@
.L690:
	mov	r0, r6	@, pBs
	mov	r1, r4	@, pCodecInf
	ldr	r2, [fp, #-48]	@, %sfp
	bl	VC1_Vfmw_ParseAdvSlcHdr	@
	cmp	r0, #1	@ Ret,
	mov	r5, r0	@ Ret,
	bne	.L644	@,
	movw	r6, #23316	@ tmp185,
	ldr	r7, [r4, r6]	@ D.42200, <variable>.SlcNum
	cmp	r7, #255	@ D.42200,
	bgt	.L693	@,
	mov	r9, r7, asl #1	@ tmp753, D.42200,
	ldr	r2, [r4, #3128]	@ pBs, <variable>.pBs
	add	r6, r9, r7	@ tmp192, tmp753, D.42200
	movw	r0, #23328	@ tmp189,
	add	lr, r6, #1	@ tmp213, tmp192,
	add	r6, r4, r6, asl #4	@, tmp194, pCodecInf, tmp192,
	add	ip, r6, #23296	@, tmp194,
	add	lr, r4, lr, asl #4	@, tmp216, pCodecInf, tmp213,
	strb	r7, [r6, r0]	@ D.42200, <variable>.SlcNo
	add	r1, lr, #23296	@ tmp217, tmp216,
	ldr	r0, [r2, #24]	@ <variable>.TotalPos, <variable>.TotalPos
	add	r1, r1, #24	@ tmp217, tmp217,
	str	ip, [fp, #-52]	@, %sfp
	add	r3, r6, #23296	@ tmp195, tmp194,
	add	ip, r0, #7	@, <variable>.TotalPos,
	str	ip, [fp, #-64]	@, %sfp
	ldr	ip, [fp, #-52]	@, %sfp
	cmp	r0, #0	@ <variable>.TotalPos,
	add	r3, r3, #32	@ tmp195, tmp195,
	add	ip, ip, #24	@,,
	str	ip, [fp, #-52]	@, %sfp
	ldr	ip, [fp, #-64]	@, %sfp
	movlt	r0, ip	@ <variable>.TotalPos,
	add	r0, sl, r0, asr #3	@, tmp209, pTmp, <variable>.TotalPos,
	movw	sl, #23320	@,
	str	r0, [r6, sl]	@ tmp209, <variable>.pStream
	ldr	ip, [r2, #24]	@ <variable>.TotalPos, <variable>.TotalPos
	and	ip, ip, #7	@ tmp219, <variable>.TotalPos,
	str	ip, [lr, sl]	@ tmp219, <variable>.BitOffset
	ldr	ip, [r2, #16]	@ <variable>.BsLen, <variable>.BsLen
	ldr	r2, [r2, #24]	@ <variable>.TotalPos, <variable>.TotalPos
	rsb	lr, r2, ip, asl #3	@, tmp231, <variable>.TotalPos, <variable>.BsLen,
	str	lr, [r1, #4]	@ tmp231, <variable>.Len
	str	r3, [fp, #-56]	@,
	bl	MEM_Vir2Phy	@
	ldr	r3, [fp, #-56]	@,
	movw	ip, #23360	@ tmp247,
	add	r2, r6, #23296	@ tmp253, tmp194,
	add	r2, r2, #64	@ tmp253, tmp253,
	str	r0, [r3, #4]	@, <variable>.Phy_addr
	movw	r0, #35640	@ tmp254,
	ldr	r1, [r4, r0]	@ <variable>.stCurPacket.StreamID, <variable>.stCurPacket.StreamID
	movw	r3, #35616	@ tmp256,
	str	r1, [r6, ip]	@ <variable>.stCurPacket.StreamID, <variable>.StreamID
	ldr	r3, [r4, r3]	@ D.42541, <variable>.stCurPacket.BsVirAddr
	cmp	r3, #0	@ D.42541,
	beq	.L647	@,
	movw	r1, #35628	@ tmp257,
	ldr	ip, [r4, r1]	@ <variable>.stCurPacket.BsPhyAddr, <variable>.stCurPacket.BsPhyAddr
	cmp	ip, #0	@ <variable>.stCurPacket.BsPhyAddr,
	beq	.L647	@,
	ldr	ip, [fp, #-52]	@, %sfp
	movw	r0, #23352	@ tmp266,
	str	r8, [r6, r0]	@ tmp171, <variable>.BitOffset2
	str	r3, [ip, #4]	@ D.42541, <variable>.pStream2
	movw	ip, #35636	@ tmp281,
	ldr	r0, [r4, ip]	@ <variable>.stCurPacket.BsLength, <variable>.stCurPacket.BsLength
	add	r3, r6, #23296	@ tmp272, tmp194,
	add	r3, r3, #56	@ tmp272, tmp272,
	add	r6, r6, #23296	@ tmp290, tmp194,
	add	r6, r6, #48	@ tmp290, tmp290,
	mov	ip, r0, asl #3	@ tmp283, <variable>.stCurPacket.BsLength,
	str	ip, [r3, #4]	@ tmp283, <variable>.Len2
	ldr	r0, [r4, r1]	@ <variable>.stCurPacket.BsPhyAddr, <variable>.stCurPacket.BsPhyAddr
	movw	r1, #35644	@ tmp300,
	str	r0, [r6, #4]	@ <variable>.stCurPacket.BsPhyAddr, <variable>.Phy_addr2
	ldr	r3, [r4, r1]	@ <variable>.stCurPacket.StreamID, <variable>.stCurPacket.StreamID
	str	r3, [r2, #4]	@ <variable>.stCurPacket.StreamID, <variable>.StreamID2
.L648:
	movw	r3, #23232	@ tmp351,
	movw	r1, #23236	@ tmp350,
	ldr	r6, [r4, r3]	@ <variable>.MbWidth, <variable>.MbWidth
	ldr	r3, [r4, r1]	@ D.42531, <variable>.MbHeight
	ldrb	ip, [r4, #8]	@ zero_extendqisi2	@ <variable>.Is2ndFld, <variable>.Is2ndFld
	mul	r0, r6, r3	@ tmp352, <variable>.MbWidth, D.42531
	cmp	ip, #0	@ <variable>.Is2ndFld,
	sub	r6, r0, #1	@ totalMbMin1, tmp352,
	beq	.L651	@,
	add	r2, r9, r7	@ tmp358, tmp753, D.42200
	ldr	sl, [fp, #-48]	@, %sfp
	add	r3, r3, #1	@ tmp362, D.42531,
	add	r0, sl, r2, asl #2	@, tmp360,, tmp358,
	add	r2, r4, r2, asl #4	@, tmp373, pCodecInf, tmp358,
	add	r3, r3, r3, lsr #31	@, tmp365, tmp362, tmp362,
	ldr	ip, [r0, #528]	@ <variable>.SLICE_ADDR, <variable>.SLICE_ADDR
	sub	r3, ip, r3, asr #1	@ D.42523, <variable>.SLICE_ADDR, tmp365,
	movw	ip, #23344	@ tmp368,
	cmp	r3, #0	@ D.42523,
	str	r3, [r2, ip]	@ D.42523, <variable>.SlcEndMbn
	ble	.L652	@,
	cmp	r6, r3	@ totalMbMin1, D.42523
	bcc	.L680	@,
.L652:
	add	r7, r9, r7	@ tmp411, tmp753, D.42200
.L685:
	add	r0, r7, #1	@ tmp696, tmp695,
	add	r3, r4, r0, asl #4	@, tmp699, pCodecInf, tmp696,
	add	r1, r3, #23296	@ tmp700, tmp699,
	add	ip, r1, #24	@ tmp700, tmp700,
	ldr	r2, [ip, #4]	@ <variable>.Len, <variable>.Len
	cmp	r2, #0	@ <variable>.Len,
	ble	.L672	@,
	add	r7, r4, r7, asl #4	@, tmp707, pCodecInf, tmp695,
	add	r1, r7, #23296	@ tmp708, tmp707,
	add	ip, r1, #24	@ tmp708, tmp708,
	ldr	r2, [ip, #4]	@ <variable>.pStream2, <variable>.pStream2
	cmp	r2, #0	@ <variable>.pStream2,
	beq	.L673	@,
	add	r2, r7, #23296	@ tmp716, tmp707,
	add	r0, r2, #56	@ tmp716, tmp716,
	ldr	r3, [r0, #4]	@ <variable>.Len2, <variable>.Len2
	cmp	r3, #0	@ <variable>.Len2,
	ble	.L672	@,
.L673:
	movw	r1, #23316	@ tmp719,
	ldr	r3, [r4, r1]	@ <variable>.SlcNum, <variable>.SlcNum
	add	ip, r3, #1	@ tmp722, <variable>.SlcNum,
	str	ip, [r4, r1]	@ tmp722, <variable>.SlcNum
	b	.L646	@
.L691:
	mov	r0, r6	@, pBs
	bl	BsPos	@
	ldr	ip, [fp, #-48]	@, %sfp
	ldr	r2, [ip, #488]	@ <variable>.AdvPicSyntax.HdrLen, <variable>.AdvPicSyntax.HdrLen
	rsb	r3, r2, r0	@ tmp463, <variable>.AdvPicSyntax.HdrLen,
	str	r3, [ip, #488]	@ tmp463, <variable>.AdvPicSyntax.HdrLen
	ldrb	r1, [r4, #0]	@ zero_extendqisi2	@ <variable>.CodecStatus, <variable>.CodecStatus
	mov	r0, r6	@, pBs
	orr	r2, r1, #4	@ tmp466, <variable>.CodecStatus,
	strb	r2, [r4, #0]	@ tmp466, <variable>.CodecStatus
	bl	BsPos	@
	movw	ip, #35632	@ tmp469,
	ldr	r3, [r4, ip]	@ <variable>.stCurPacket.BsLength, <variable>.stCurPacket.BsLength
	add	r1, r0, #32	@ tmp468,,
	cmp	r1, r3, asl #3	@ tmp468, <variable>.stCurPacket.BsLength,
	bge	.L665	@,
	movw	r8, #23316	@ tmp472,
	ldr	r2, [r4, #3128]	@ pBs, <variable>.pBs
	ldr	r7, [r4, r8]	@ D.42613, <variable>.SlcNum
	movw	r0, #23328	@ tmp473,
	mov	r8, r7, asl #1	@ tmp752, D.42613,
	add	r6, r8, r7	@ tmp476, tmp752, D.42613
	add	lr, r6, #1	@ tmp497, tmp476,
	add	r6, r4, r6, asl #4	@, tmp478, pCodecInf, tmp476,
	add	lr, r4, lr, asl #4	@, tmp500, pCodecInf, tmp497,
	add	r3, r6, #23296	@ tmp487, tmp478,
	strb	r7, [r6, r0]	@ D.42613, <variable>.SlcNo
	add	r1, lr, #23296	@ tmp501, tmp500,
	ldr	r0, [r2, #24]	@ <variable>.TotalPos, <variable>.TotalPos
	add	r1, r1, #24	@ tmp501, tmp501,
	add	r3, r3, #24	@ tmp487, tmp487,
	add	r9, r6, #23296	@ tmp479, tmp478,
	cmp	r0, #0	@ <variable>.TotalPos,
	add	ip, r0, #7	@ tmp491, <variable>.TotalPos,
	add	r9, r9, #32	@ tmp479, tmp479,
	movlt	r0, ip	@ <variable>.TotalPos, tmp491
	add	r0, sl, r0, asr #3	@, tmp493, pTmp, <variable>.TotalPos,
	movw	sl, #23320	@,
	str	r0, [r6, sl]	@ tmp493, <variable>.pStream
	ldr	ip, [r2, #24]	@ <variable>.TotalPos, <variable>.TotalPos
	and	ip, ip, #7	@ tmp503, <variable>.TotalPos,
	str	ip, [lr, sl]	@ tmp503, <variable>.BitOffset
	ldr	ip, [r2, #16]	@ <variable>.BsLen, <variable>.BsLen
	ldr	r2, [r2, #24]	@ <variable>.TotalPos, <variable>.TotalPos
	rsb	lr, r2, ip, asl #3	@, tmp515, <variable>.TotalPos, <variable>.BsLen,
	str	lr, [r1, #4]	@ tmp515, <variable>.Len
	str	r3, [fp, #-56]	@,
	bl	MEM_Vir2Phy	@
	movw	ip, #35640	@ tmp538,
	movw	r1, #23360	@ tmp531,
	add	r2, r6, #23296	@ tmp537, tmp478,
	add	r2, r2, #64	@ tmp537, tmp537,
	str	r0, [r9, #4]	@, <variable>.Phy_addr
	movw	r0, #35616	@ tmp540,
	ldr	r3, [r4, ip]	@ <variable>.stCurPacket.StreamID, <variable>.stCurPacket.StreamID
	str	r3, [r6, r1]	@ <variable>.stCurPacket.StreamID, <variable>.StreamID
	ldr	r1, [r4, r0]	@ D.42596, <variable>.stCurPacket.BsVirAddr
	ldr	r3, [fp, #-56]	@,
	cmp	r1, #0	@ D.42596,
	beq	.L666	@,
	movw	r0, #35628	@ tmp541,
	ldr	ip, [r4, r0]	@ <variable>.stCurPacket.BsPhyAddr, <variable>.stCurPacket.BsPhyAddr
	cmp	ip, #0	@ <variable>.stCurPacket.BsPhyAddr,
	beq	.L666	@,
	str	r1, [r3, #4]	@ D.42596, <variable>.pStream2
	movw	r1, #23352	@ tmp550,
	mov	ip, #0	@ tmp557,
	str	ip, [r6, r1]	@ tmp557, <variable>.BitOffset2
	movw	r1, #35636	@ tmp565,
	add	r3, r6, #23296	@ tmp556, tmp478,
	ldr	ip, [r4, r1]	@ <variable>.stCurPacket.BsLength, <variable>.stCurPacket.BsLength
	add	r3, r3, #56	@ tmp556, tmp556,
	add	r6, r6, #23296	@ tmp574, tmp478,
	add	r6, r6, #48	@ tmp574, tmp574,
	mov	r1, ip, asl #3	@ tmp567, <variable>.stCurPacket.BsLength,
	str	r1, [r3, #4]	@ tmp567, <variable>.Len2
	ldr	ip, [r4, r0]	@ <variable>.stCurPacket.BsPhyAddr, <variable>.stCurPacket.BsPhyAddr
	movw	r1, #35644	@ tmp584,
	str	ip, [r6, #4]	@ <variable>.stCurPacket.BsPhyAddr, <variable>.Phy_addr2
	ldr	r3, [r4, r1]	@ <variable>.stCurPacket.StreamID, <variable>.stCurPacket.StreamID
	str	r3, [r2, #4]	@ <variable>.stCurPacket.StreamID, <variable>.StreamID2
.L667:
	movw	r3, #23232	@ tmp635,
	movw	r1, #23236	@ tmp634,
	ldr	r6, [r4, r3]	@ <variable>.MbWidth, <variable>.MbWidth
	ldr	r3, [r4, r1]	@ D.42586, <variable>.MbHeight
	ldrb	ip, [r4, #8]	@ zero_extendqisi2	@ <variable>.Is2ndFld, <variable>.Is2ndFld
	mul	r0, r6, r3	@ tmp636, <variable>.MbWidth, D.42586
	cmp	ip, #0	@ <variable>.Is2ndFld,
	sub	r6, r0, #1	@ totalMbMin1, tmp636,
	beq	.L670	@,
	ldr	ip, [fp, #-48]	@, %sfp
	add	r2, r8, r7	@ tmp642, tmp752, D.42613
	add	r3, r3, #1	@ tmp646, D.42586,
	add	r0, ip, r2, asl #2	@, tmp644,, tmp642,
	add	r2, r4, r2, asl #4	@, tmp657, pCodecInf, tmp642,
	add	r3, r3, r3, lsr #31	@, tmp649, tmp646, tmp646,
	ldr	ip, [r0, #528]	@ <variable>.SLICE_ADDR, <variable>.SLICE_ADDR
	sub	r3, ip, r3, asr #1	@ D.42578, <variable>.SLICE_ADDR, tmp649,
	movw	ip, #23344	@ tmp652,
	cmp	r3, #0	@ D.42578,
	str	r3, [r2, ip]	@ D.42578, <variable>.SlcEndMbn
	ble	.L671	@,
	cmp	r6, r3	@ totalMbMin1, D.42578
	bcs	.L671	@,
.L680:
	ldr	lr, [r4, r1]	@ <variable>.MbHeight, <variable>.MbHeight
	movw	r1, #:lower16:.LC7	@,
	ldr	r2, [r0, #528]	@ <variable>.SLICE_ADDR, <variable>.SLICE_ADDR
	movt	r1, #:upper16:.LC7	@,
	mov	r0, #1	@,
	mov	r5, #0	@ Ret,
	str	lr, [sp, #0]	@ <variable>.MbHeight,
	bl	dprint_vfmw	@
	b	.L646	@
.L671:
	add	r7, r8, r7	@ tmp695, tmp752, D.42613
	b	.L685	@
.L644:
	mov	r0, r9	@, ChanID
	mov	r1, r7	@, pVc1Packet
	bl	VC1_ClearCurPacket	@
	movw	r1, #:lower16:.LC11	@,
	movw	r2, #5549	@,
	movt	r1, #:upper16:.LC11	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L646	@
.L665:
	mov	r1, r7	@, pVc1Packet
	mov	r0, r9	@, ChanID
	bl	VC1_ClearCurPacket	@
	mov	r0, r5	@, Ret
	movw	r1, #:lower16:.LC12	@,
	movw	r2, #5620	@,
	movt	r1, #:upper16:.LC12	@,
	bl	dprint_vfmw	@
	b	.L646	@
.L666:
	add	r2, r8, r7	@ tmp589, tmp752, D.42613
	mov	r3, #0	@ tmp593,
	add	r2, r4, r2, asl #4	@, tmp591, pCodecInf, tmp589,
	add	ip, r2, #23296	@ tmp624, tmp591,
	add	r6, ip, #24	@ tmp592, tmp592,
	add	r0, ip, #56	@ tmp600, tmp600,
	add	r1, ip, #48	@ tmp616, tmp616,
	add	ip, ip, #64	@ tmp624, tmp624,
	str	r3, [r6, #4]	@ tmp593, <variable>.pStream2
	movw	r6, #23352	@ tmp594,
	str	r3, [ip, #4]	@ tmp593, <variable>.StreamID2
	str	r3, [r2, r6]	@ tmp593, <variable>.BitOffset2
	str	r3, [r0, #4]	@ tmp593, <variable>.Len2
	str	r3, [r1, #4]	@ tmp593, <variable>.Phy_addr2
	b	.L667	@
.L693:
	mov	r1, r9	@, ChanID
	mov	r0, r4	@, pCodecInf
	bl	VC1_ClearCurPic	@
	mov	r0, r5	@, Ret
	ldr	r2, [r4, r6]	@, <variable>.SlcNum
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	mov	r5, r8	@ Ret, tmp171
	bl	dprint_vfmw	@
	b	.L646	@
.L647:
	add	r2, r9, r7	@ tmp305, tmp753, D.42200
	mov	r3, #0	@ tmp309,
	add	r2, r4, r2, asl #4	@, tmp307, pCodecInf, tmp305,
	add	ip, r2, #23296	@ tmp340, tmp307,
	add	r6, ip, #24	@ tmp308, tmp308,
	add	r0, ip, #56	@ tmp316, tmp316,
	add	r1, ip, #48	@ tmp332, tmp332,
	add	ip, ip, #64	@ tmp340, tmp340,
	str	r3, [r6, #4]	@ tmp309, <variable>.pStream2
	movw	r6, #23352	@ tmp310,
	str	r3, [ip, #4]	@ tmp309, <variable>.StreamID2
	str	r3, [r2, r6]	@ tmp309, <variable>.BitOffset2
	str	r3, [r0, #4]	@ tmp309, <variable>.Len2
	str	r3, [r1, #4]	@ tmp309, <variable>.Phy_addr2
	b	.L648	@
.L670:
	add	r3, r8, r7	@ tmp673, tmp752, D.42613
	ldr	r0, [fp, #-48]	@, %sfp
	movw	r1, #23344	@ tmp677,
	add	r2, r0, r3, asl #2	@, tmp675,, tmp673,
	add	r0, r4, r3, asl #4	@, tmp682, pCodecInf, tmp673,
	ldr	r3, [r2, #528]	@ temp.2281, <variable>.SLICE_ADDR
	cmp	r6, r3	@ totalMbMin1, temp.2281
	str	r3, [r0, r1]	@ temp.2281, <variable>.SlcEndMbn
	bcs	.L671	@,
.L679:
	ldr	r2, [r2, #528]	@ <variable>.SLICE_ADDR, <variable>.SLICE_ADDR
	movw	r1, #:lower16:.LC8	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC8	@,
	str	r6, [sp, #0]	@ totalMbMin1,
	mov	r5, ip	@ Ret, <variable>.Is2ndFld
	bl	dprint_vfmw	@
	b	.L646	@
.L692:
	ldr	r1, [fp, #-48]	@, %sfp
	mov	r0, r4	@, pCodecInf
	bl	VC1_Vfmw_UpdateAdvSPS	@
	ldrb	r2, [r4, #0]	@ zero_extendqisi2	@ <variable>.CodecStatus, <variable>.CodecStatus
	orr	r0, r2, #2	@ tmp727, <variable>.CodecStatus,
	strb	r0, [r4, #0]	@ tmp727, <variable>.CodecStatus
	b	.L675	@
.L672:
	movw	r1, #:lower16:.LC9	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC9	@,
	mov	r5, #0	@ Ret,
	bl	dprint_vfmw	@
	b	.L646	@
.L651:
	add	r3, r9, r7	@ tmp389, tmp753, D.42200
	ldr	r0, [fp, #-48]	@, %sfp
	movw	r1, #23344	@ tmp393,
	add	r2, r0, r3, asl #2	@, tmp391,, tmp389,
	add	r0, r4, r3, asl #4	@, tmp398, pCodecInf, tmp389,
	ldr	r3, [r2, #528]	@ temp.2270, <variable>.SLICE_ADDR
	cmp	r6, r3	@ totalMbMin1, temp.2270
	str	r3, [r0, r1]	@ temp.2270, <variable>.SlcEndMbn
	bcs	.L652	@,
	b	.L679	@
	.fnend
	.size	VC1_Vfmw_ParseAdvHdr, .-VC1_Vfmw_ParseAdvHdr
	.align	2
	.global	VC1_Vfmw_ParseMPBPicHdr
	.type	VC1_Vfmw_ParseMPBPicHdr, %function
VC1_Vfmw_ParseMPBPicHdr:
	.fnstart
.LFB1566:
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
	mov	r6, r1	@ pCodecInf, pCodecInf
	mov	r1, #5	@,
	mov	r4, r2	@ pSyntax, pSyntax
	mov	r5, r0	@ pBs, pBs
	bl	BsGet	@
	uxtb	r7, r0	@ D.40796,
	strb	r7, [r4, #254]	@ D.40796, <variable>.SMPPicSyntax.PQINDEX
	cmp	r7, #0	@ D.40796,
	bne	.L708	@,
.L695:
	mov	r3, #0	@ D.40800,
	mov	r0, r3	@, D.40800
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L708:
	ldrb	r8, [r4, #14]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.QUANTIZER, <variable>.SMPSeqSyntax.QUANTIZER
	mov	r1, r7	@, D.40796
	mov	r0, r8	@, <variable>.SMPSeqSyntax.QUANTIZER
	bl	VC1_Vfmw_DecPQUANT	@
	cmp	r7, #8	@ D.40796,
	movhi	r3, #0	@ tmp158,
	str	r0, [r4, #340]	@, <variable>.SMPPicSyntax.PQUANT
	strhib	r3, [r4, #255]	@ tmp158, <variable>.SMPPicSyntax.HALFQP
	bls	.L709	@,
.L697:
	cmp	r8, #1	@ <variable>.SMPSeqSyntax.QUANTIZER,
	movne	r3, #0	@ tmp162,
	strneb	r3, [r4, #256]	@ tmp162, <variable>.SMPPicSyntax.PQUANTIZER
	beq	.L710	@,
.L699:
	ldrb	r3, [r4, #7]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.EXTENDED_MV, <variable>.SMPSeqSyntax.EXTENDED_MV
	cmp	r3, #1	@ <variable>.SMPSeqSyntax.EXTENDED_MV,
	movne	r3, #0	@ tmp166,
	strneb	r3, [r4, #257]	@ tmp166, <variable>.SMPPicSyntax.MVRANGE
	beq	.L711	@,
.L701:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r3, #0	@,
	mov	r1, r6	@, pCodecInf
	mov	r2, r4	@, pSyntax
	cmp	r0, r3	@,
	moveq	r0, #3	@ iftmp.547,
	movne	r0, #1	@ iftmp.547,
	strb	r0, [r4, #259]	@ iftmp.547, <variable>.SMPPicSyntax.MVMODE
	mov	r0, r5	@, pBs
	bl	BPD_Drv	@
	cmp	r0, #1	@,
	beq	.L695	@,
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #2	@,
	strb	r0, [r4, #263]	@, <variable>.SMPPicSyntax.MVTAB
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r1, [r4, #8]	@ zero_extendqisi2	@ D.40833, <variable>.SMPSeqSyntax.DQUANT
	cmp	r1, #0	@ D.40833,
	strb	r0, [r4, #264]	@, <variable>.SMPPicSyntax.CBPTAB
	bne	.L712	@,
.L704:
	ldrb	r1, [r4, #9]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.VSTRANSFORM, <variable>.SMPSeqSyntax.VSTRANSFORM
	cmp	r1, #1	@ <variable>.SMPSeqSyntax.VSTRANSFORM,
	beq	.L713	@,
.L705:
	mov	r0, r5	@, pBs
	bl	VC1_DecTransacfrm	@
	mov	r1, #1	@,
	strb	r0, [r4, #267]	@, <variable>.SMPPicSyntax.TRANSACFRM
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r3, #1	@ D.40800,
	strb	r0, [r4, #269]	@, <variable>.SMPPicSyntax.TRANSDCTAB
	mov	r0, r3	@, D.40800
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L712:
	mov	r0, r5	@, pBs
	ldrb	r2, [r4, #340]	@ zero_extendqisi2	@, <variable>.SMPPicSyntax.PQUANT
	add	r3, r4, #272	@, pSyntax,
	bl	VC1_VopDQuant	@
	b	.L704	@
.L709:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	ldrb	r8, [r4, #14]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.QUANTIZER, <variable>.SMPSeqSyntax.QUANTIZER
	strb	r0, [r4, #255]	@, <variable>.SMPPicSyntax.HALFQP
	b	.L697	@
.L711:
	mov	r0, r5	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #257]	@, <variable>.SMPPicSyntax.MVRANGE
	b	.L701	@
.L710:
	mov	r1, r8	@, <variable>.SMPSeqSyntax.QUANTIZER
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #256]	@, <variable>.SMPPicSyntax.PQUANTIZER
	b	.L699	@
.L713:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.40843,
	strb	r0, [r4, #265]	@ D.40843, <variable>.SMPPicSyntax.TTMBF
	cmp	r0, #1	@ D.40843,
	bne	.L705	@,
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	strb	r0, [r4, #266]	@, <variable>.SMPPicSyntax.TTFRM
	b	.L705	@
	.fnend
	.size	VC1_Vfmw_ParseMPBPicHdr, .-VC1_Vfmw_ParseMPBPicHdr
	.align	2
	.global	VC1_Vfmw_ParseSMPPPicHdr
	.type	VC1_Vfmw_ParseSMPPPicHdr, %function
VC1_Vfmw_ParseSMPPPicHdr:
	.fnstart
.LFB1565:
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
	mov	r6, r1	@ pCodecInf, pCodecInf
	mov	r1, #5	@,
	mov	r4, r2	@ pSyntax, pSyntax
	mov	r5, r0	@ pBs, pBs
	bl	BsGet	@
	uxtb	r7, r0	@ D.40714,
	strb	r7, [r4, #254]	@ D.40714, <variable>.SMPPicSyntax.PQINDEX
	cmp	r7, #0	@ D.40714,
	bne	.L729	@,
.L715:
	mov	r3, #0	@ D.40718,
	mov	r0, r3	@, D.40718
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L729:
	ldrb	r8, [r4, #14]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.QUANTIZER, <variable>.SMPSeqSyntax.QUANTIZER
	mov	r1, r7	@, D.40714
	mov	r0, r8	@, <variable>.SMPSeqSyntax.QUANTIZER
	bl	VC1_Vfmw_DecPQUANT	@
	cmp	r7, #8	@ D.40714,
	movhi	r3, #0	@ tmp165,
	str	r0, [r4, #340]	@, <variable>.SMPPicSyntax.PQUANT
	strhib	r3, [r4, #255]	@ tmp165, <variable>.SMPPicSyntax.HALFQP
	bls	.L730	@,
.L717:
	cmp	r8, #1	@ <variable>.SMPSeqSyntax.QUANTIZER,
	movne	r3, #0	@ tmp169,
	strneb	r3, [r4, #256]	@ tmp169, <variable>.SMPPicSyntax.PQUANTIZER
	beq	.L731	@,
.L719:
	ldrb	r3, [r4, #7]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.EXTENDED_MV, <variable>.SMPSeqSyntax.EXTENDED_MV
	cmp	r3, #1	@ <variable>.SMPSeqSyntax.EXTENDED_MV,
	movne	r3, #0	@ tmp173,
	strneb	r3, [r4, #257]	@ tmp173, <variable>.SMPPicSyntax.MVRANGE
	beq	.L732	@,
.L721:
	ldrb	r0, [r4, #4]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.MULTIRES, <variable>.SMPSeqSyntax.MULTIRES
	cmp	r0, #1	@ <variable>.SMPSeqSyntax.MULTIRES,
	ldrneb	r1, [r4, #258]	@ zero_extendqisi2	@ prephitmp.2326, <variable>.SMPPicSyntax.RESPIC
	beq	.L733	@,
.L723:
	mov	r0, r6	@, pCodecInf
	bl	VC1_SetCurPicResolutionInfo	@
	mov	r0, r5	@, pBs
	bl	BsPos	@
	movw	r1, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC13	@,
	mov	r2, r0	@ D.40747,
	mov	r0, #18	@,
	bl	dprint_vfmw	@
	ldrb	r1, [r4, #340]	@ zero_extendqisi2	@, <variable>.SMPPicSyntax.PQUANT
	mov	r0, r5	@, pBs
	bl	VC1_DecMvmodeProgrP	@
	uxtb	r1, r0	@ D.40751,
	strb	r1, [r4, #259]	@ D.40751, <variable>.SMPPicSyntax.MVMODE
	cmp	r1, #4	@ D.40751,
	beq	.L734	@,
.L724:
	mov	r1, r6	@, pCodecInf
	mov	r0, r5	@, pBs
	mov	r2, r4	@, pSyntax
	mov	r3, #0	@,
	bl	BPD_Drv	@
	cmp	r0, #1	@,
	beq	.L715	@,
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #2	@,
	strb	r0, [r4, #263]	@, <variable>.SMPPicSyntax.MVTAB
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r1, [r4, #8]	@ zero_extendqisi2	@ D.40768, <variable>.SMPSeqSyntax.DQUANT
	cmp	r1, #0	@ D.40768,
	strb	r0, [r4, #264]	@, <variable>.SMPPicSyntax.CBPTAB
	bne	.L735	@,
.L725:
	mov	r0, r5	@, pBs
	bl	BsPos	@
	movw	r1, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC14	@,
	mov	r2, r0	@ D.40773,
	mov	r0, #18	@,
	bl	dprint_vfmw	@
	ldrb	r1, [r4, #9]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.VSTRANSFORM, <variable>.SMPSeqSyntax.VSTRANSFORM
	cmp	r1, #1	@ <variable>.SMPSeqSyntax.VSTRANSFORM,
	beq	.L736	@,
.L726:
	mov	r0, r5	@, pBs
	bl	VC1_DecTransacfrm	@
	mov	r1, #1	@,
	strb	r0, [r4, #267]	@, <variable>.SMPPicSyntax.TRANSACFRM
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r3, #1	@ D.40718,
	strb	r0, [r4, #269]	@, <variable>.SMPPicSyntax.TRANSDCTAB
	mov	r0, r3	@, D.40718
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L735:
	mov	r0, r5	@, pBs
	ldrb	r2, [r4, #340]	@ zero_extendqisi2	@, <variable>.SMPPicSyntax.PQUANT
	add	r3, r4, #272	@, pSyntax,
	bl	VC1_VopDQuant	@
	b	.L725	@
.L730:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	ldrb	r8, [r4, #14]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.QUANTIZER, <variable>.SMPSeqSyntax.QUANTIZER
	strb	r0, [r4, #255]	@, <variable>.SMPPicSyntax.HALFQP
	b	.L717	@
.L734:
	ldrb	r1, [r4, #340]	@ zero_extendqisi2	@, <variable>.SMPPicSyntax.PQUANT
	mov	r0, r5	@, pBs
	bl	VC1_DecMvmode2	@
	mov	r1, #6	@,
	strb	r0, [r4, #260]	@, <variable>.SMPPicSyntax.MVMODE2
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #6	@,
	strb	r0, [r4, #261]	@, <variable>.SMPPicSyntax.LUMSCALE
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #262]	@, <variable>.SMPPicSyntax.LUMSHIFT
	b	.L724	@
.L733:
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r1, r0	@ prephitmp.2326,
	strb	r1, [r4, #258]	@ prephitmp.2326, <variable>.SMPPicSyntax.RESPIC
	b	.L723	@
.L732:
	mov	r0, r5	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #257]	@, <variable>.SMPPicSyntax.MVRANGE
	b	.L721	@
.L731:
	mov	r1, r8	@, <variable>.SMPSeqSyntax.QUANTIZER
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #256]	@, <variable>.SMPPicSyntax.PQUANTIZER
	b	.L719	@
.L736:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r2, r0	@ D.40778,
	strb	r2, [r4, #265]	@ D.40778, <variable>.SMPPicSyntax.TTMBF
	cmp	r2, #1	@ D.40778,
	bne	.L726	@,
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	strb	r0, [r4, #266]	@, <variable>.SMPPicSyntax.TTFRM
	b	.L726	@
	.fnend
	.size	VC1_Vfmw_ParseSMPPPicHdr, .-VC1_Vfmw_ParseSMPPPicHdr
	.align	2
	.global	VC1_Vfmw_ParseSMPPicHdr
	.type	VC1_Vfmw_ParseSMPPicHdr, %function
VC1_Vfmw_ParseSMPPicHdr:
	.fnstart
.LFB1567:
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
	ldrb	r7, [r2, #258]	@ zero_extendqisi2	@ RESPIC, <variable>.SMPPicSyntax.RESPIC
	mov	r6, r0	@ pBs, pBs
	mov	r5, r1	@ pCodecInf, pCodecInf
	mov	r0, r1	@, pCodecInf
	mov	r4, r2	@ pSyntax, pSyntax
	mov	r1, r7	@, RESPIC
	bl	VC1_SetCurPicResolutionInfo	@
	ldr	r3, [r6, #16]	@ <variable>.BsLen, <variable>.BsLen
	cmp	r3, #1	@ <variable>.BsLen,
	ble	.L761	@,
	add	r0, r4, #248	@, pSyntax,
	mov	r1, #100	@,
	bl	__memzero	@
	add	r2, r5, #23296	@, pCodecInf,
	add	r0, r2, #24	@,,
	mov	r1, #12288	@,
	strb	r7, [r4, #258]	@ RESPIC, <variable>.SMPPicSyntax.RESPIC
	movw	r8, #35608	@ tmp163,
	bl	__memzero	@
	ldr	r2, [r5, r8]	@ D.40892, <variable>.PicCnt
	mov	r0, #18	@,
	movw	r1, #:lower16:.LC15	@,
	movt	r1, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@, pBs
	bl	BsPos	@
	ldrb	r1, [r4, #15]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.FINTERPFLAG, <variable>.SMPSeqSyntax.FINTERPFLAG
	cmp	r1, #0	@ <variable>.SMPSeqSyntax.FINTERPFLAG,
	ldreqb	r2, [r4, #248]	@ zero_extendqisi2	@ prephitmp.2367, <variable>.SMPPicSyntax.INTERPFRM
	str	r0, [r4, #324]	@, <variable>.SMPPicSyntax.HdrLen
	bne	.L762	@,
.L742:
	mov	r0, #18	@,
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	ldrb	ip, [r4, #12]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.RANGERED, <variable>.SMPSeqSyntax.RANGERED
	cmp	ip, #0	@ <variable>.SMPSeqSyntax.RANGERED,
	strb	r0, [r4, #249]	@, <variable>.SMPPicSyntax.FRMCNT
	bne	.L763	@,
	ldrb	lr, [r4, #13]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.MAXBFRAMES, <variable>.SMPSeqSyntax.MAXBFRAMES
	cmp	lr, #0	@ <variable>.SMPSeqSyntax.MAXBFRAMES,
	bne	.L744	@,
.L767:
	mov	r0, r6	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	subs	r0, r0, #0	@ prephitmp.2356,,
	movne	r0, #1	@ prephitmp.2356
	strb	r0, [r4, #251]	@ prephitmp.2356, <variable>.SMPPicSyntax.PTYPE
.L745:
	strb	r0, [r5, #2]	@ prephitmp.2356, <variable>.PicCodingType
	mov	r0, #0	@ tmp183,
	strb	r0, [r5, #4]	@ tmp183, <variable>.PicStructure
	ldrb	r3, [r4, #251]	@ zero_extendqisi2	@ <variable>.SMPPicSyntax.PTYPE, <variable>.SMPPicSyntax.PTYPE
	cmp	r3, #4	@ <variable>.SMPPicSyntax.PTYPE,
	ldrls	pc, [pc, r3, asl #2]	@ <variable>.SMPPicSyntax.PTYPE
	b	.L748	@
.L753:
	.word	.L760
	.word	.L750
	.word	.L751
	.word	.L748
	.word	.L752
.L744:
	mov	r0, r6	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	cmp	r0, #1	@ D.40918,
	beq	.L759	@,
	mov	r0, r6	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	cmp	r0, #1	@,
	beq	.L764	@,
	mov	r8, #2	@ tmp196,
	mov	r0, r6	@, pBs
	strb	r8, [r4, #251]	@ tmp196, <variable>.SMPPicSyntax.PTYPE
	add	r1, r4, #344	@, pSyntax,
	add	r2, r4, #251	@, pSyntax,
	bl	VC1_DecBfractionSMP	@
	uxtb	r0, r0	@ D.40932,
	strb	r0, [r4, #252]	@ D.40932, <variable>.SMPPicSyntax.BFRACTION
	cmp	r0, #22	@ D.40932,
	mov	r3, r0	@ D.40932, D.40932
	beq	.L765	@,
	cmp	r0, #21	@ D.40932,
	beq	.L748	@,
	ldrb	r0, [r4, #251]	@ zero_extendqisi2	@ prephitmp.2356, <variable>.SMPPicSyntax.PTYPE
	b	.L745	@
.L751:
	ldrb	r7, [r5, #3099]	@ zero_extendqisi2	@ <variable>.PreParseInfo.SMPSeqSyntax.PROFILE, <variable>.PreParseInfo.SMPSeqSyntax.PROFILE
	cmp	r7, #1	@ <variable>.PreParseInfo.SMPSeqSyntax.PROFILE,
	beq	.L766	@,
.L748:
	mov	r8, #0	@ Ret,
.L739:
	mov	r0, r8	@, Ret
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L761:
	mov	r8, #1	@ Ret,
	mov	r0, #5	@ tmp155,
	strb	r0, [r4, #251]	@ tmp155, <variable>.SMPPicSyntax.PTYPE
	strb	r0, [r5, #2]	@ tmp155, <variable>.PicCodingType
	mov	r0, r8	@, Ret
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L763:
	mov	r0, r6	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	ldrb	lr, [r4, #13]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.MAXBFRAMES, <variable>.SMPSeqSyntax.MAXBFRAMES
	cmp	lr, #0	@ <variable>.SMPSeqSyntax.MAXBFRAMES,
	strb	r0, [r4, #250]	@, <variable>.SMPPicSyntax.RANGEREDFRM
	bne	.L744	@,
	b	.L767	@
.L762:
	mov	r0, r6	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	uxtb	r2, r0	@ prephitmp.2367,
	strb	r2, [r4, #248]	@ prephitmp.2367, <variable>.SMPPicSyntax.INTERPFRM
	b	.L742	@
.L764:
	mov	r0, #0	@ tmp178,
.L759:
	strb	r0, [r4, #251]	@ tmp178, <variable>.SMPPicSyntax.PTYPE
	b	.L745	@
.L752:
	ldrb	r1, [r5, #3099]	@ zero_extendqisi2	@ <variable>.PreParseInfo.SMPSeqSyntax.PROFILE, <variable>.PreParseInfo.SMPSeqSyntax.PROFILE
	cmp	r1, #1	@ <variable>.PreParseInfo.SMPSeqSyntax.PROFILE,
	bne	.L748	@,
.L760:
	mov	r0, r6	@, pBs
	mov	r1, r5	@, pCodecInf
	mov	r2, r4	@, pSyntax
	bl	VC1_Vfmw_ParseSMPIPicHdr	@
	mov	r8, r0	@ Ret,
.L754:
	mov	r0, r6	@, pBs
	bl	BsPos	@
	ldr	r1, [r4, #324]	@ <variable>.SMPPicSyntax.HdrLen, <variable>.SMPPicSyntax.HdrLen
	movw	ip, #35632	@ tmp191,
	rsb	r3, r1, r0	@ tmp190, <variable>.SMPPicSyntax.HdrLen,
	mov	r0, r6	@, pBs
	str	r3, [r4, #324]	@ tmp190, <variable>.SMPPicSyntax.HdrLen
	ldr	r4, [r5, ip]	@ <variable>.stCurPacket.BsLength, <variable>.stCurPacket.BsLength
	bl	BsPos	@
	mov	r4, r4, asl #3	@ D.40955, <variable>.stCurPacket.BsLength,
	rsb	r2, r0, r4	@ tmp193,, D.40955
	cmp	r2, #0	@ tmp193,
	bgt	.L739	@,
	movw	r1, #:lower16:.LC18	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC18	@,
	mov	r8, #0	@ Ret,
	bl	dprint_vfmw	@
	b	.L739	@
.L750:
	mov	r0, r6	@, pBs
	mov	r1, r5	@, pCodecInf
	mov	r2, r4	@, pSyntax
	bl	VC1_Vfmw_ParseSMPPPicHdr	@
	mov	r8, r0	@ Ret,
	b	.L754	@
.L766:
	mov	r0, r6	@, pBs
	mov	r1, r5	@, pCodecInf
	mov	r2, r4	@, pSyntax
	bl	VC1_Vfmw_ParseMPBPicHdr	@
	cmp	r0, #1	@ Ret,
	mov	r8, r0	@ Ret,
	beq	.L754	@,
	mov	r0, r7	@, <variable>.PreParseInfo.SMPSeqSyntax.PROFILE
	movw	r1, #:lower16:.LC17	@,
	movt	r1, #:upper16:.LC17	@,
	bl	dprint_vfmw	@
	b	.L754	@
.L765:
	strb	r3, [r4, #252]	@ D.40932, <variable>.SMPPicSyntax.BFRACTION
	ldrb	r0, [r4, #251]	@ zero_extendqisi2	@ prephitmp.2356, <variable>.SMPPicSyntax.PTYPE
	b	.L745	@
	.fnend
	.size	VC1_Vfmw_ParseSMPPicHdr, .-VC1_Vfmw_ParseSMPPicHdr
	.align	2
	.global	VC1_Vfmw_ParseHeader
	.type	VC1_Vfmw_ParseHeader, %function
VC1_Vfmw_ParseHeader:
	.fnstart
.LFB1589:
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
	ldrb	r3, [r0, #3096]	@ zero_extendqisi2	@, <variable>.PreParseInfo.IsAdvProfile
	mov	r4, r0	@ pCodecInf, pCodecInf
	cmp	r3, #0	@ <variable>.PreParseInfo.IsAdvProfile,
	bne	.L769	@,
	ldrb	lr, [r0, #0]	@ zero_extendqisi2	@ <variable>.CodecStatus, <variable>.CodecStatus
	mov	r2, r1	@, pSyntax
	ldr	r0, [r0, #3128]	@, <variable>.pBs
	mov	r1, r4	@, pCodecInf
	orr	ip, lr, #3	@ tmp143, <variable>.CodecStatus,
	strb	ip, [r4, #0]	@ tmp143, <variable>.CodecStatus
	bl	VC1_Vfmw_ParseSMPPicHdr	@
	cmp	r0, #1	@ Ret,
	ldreqb	r3, [r4, #0]	@ zero_extendqisi2	@ <variable>.CodecStatus, <variable>.CodecStatus
	orreq	r3, r3, #20	@ tmp148, <variable>.CodecStatus,
	streqb	r3, [r4, #0]	@ tmp148, <variable>.CodecStatus
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L769:
	bl	VC1_Vfmw_ParseAdvHdr	@
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	VC1_Vfmw_ParseHeader, .-VC1_Vfmw_ParseHeader
	.align	2
	.global	VC1_Vfmw_MemMove
	.type	VC1_Vfmw_MemMove, %function
VC1_Vfmw_MemMove:
	.fnstart
.LFB1549:
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
	movw	r2, #23236	@ tmp143,
	ldr	ip, [r0, r2]	@ <variable>.MbHeight, <variable>.MbHeight
	movw	r3, #23256	@ tmp137,
	ldr	lr, [r0, r3]	@ <variable>.DDR_Stride, <variable>.DDR_Stride
	movw	r1, #23220	@ tmp156,
	add	r2, ip, #1	@ tmp144, <variable>.MbHeight,
	movw	r3, #23216	@ tmp135,
	ldr	r3, [r0, r3]	@ <variable>.pCurFrm, <variable>.pCurFrm
	add	ip, lr, lr, asl #1	@, tmp141, <variable>.DDR_Stride, <variable>.DDR_Stride,
	add	lr, r2, r2, lsr #31	@, tmp148, tmp144, tmp144,
	ldr	r1, [r0, r1]	@ <variable>.pRef, <variable>.pRef
	mov	r0, ip, asl #5	@ tmp142, tmp141,
	mov	ip, lr, asr #1	@ tmp149, tmp148,
	mul	r2, ip, r0	@ tmp150, tmp149, tmp142
	ldr	r1, [r1, #1064]	@, <variable>.img.luma_vir_addr
	ldr	r0, [r3, #1064]	@, <variable>.img.luma_vir_addr
	mov	r2, r2, asr #1	@, tmp150,
	bl	memcpy	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VC1_Vfmw_MemMove, .-VC1_Vfmw_MemMove
	.align	2
	.global	VC1_WriteSliceMsg
	.type	VC1_WriteSliceMsg, %function
VC1_WriteSliceMsg:
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
	movw	r2, #23316	@ tmp135,
	ldr	lr, [r0, r2]	@ <variable>.SlcNum, <variable>.SlcNum
	mov	ip, r1	@ pVc1DecParam, pVc1DecParam
	mov	r3, r0	@ pCodecInf, pCodecInf
	add	r1, r0, #23296	@, pCodecInf,
	add	r0, ip, #84	@, pVc1DecParam,
	add	r1, r1, #24	@,,
	strb	lr, [ip, #70]	@ <variable>.SlcNum, <variable>.SlcNum
	ldr	ip, [r3, r2]	@ <variable>.SlcNum, <variable>.SlcNum
	add	r2, ip, ip, asl #1	@, tmp143, <variable>.SlcNum, <variable>.SlcNum,
	mov	r2, r2, asl #4	@, tmp143,
	bl	memcpy	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VC1_WriteSliceMsg, .-VC1_WriteSliceMsg
	.align	2
	.global	VC1_Vfmw_DecodeArbiter
	.type	VC1_Vfmw_DecodeArbiter, %function
VC1_Vfmw_DecodeArbiter:
	.fnstart
.LFB1548:
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
	movw	r3, #:lower16:78248	@ tmp149,
	movt	r3, #:upper16:78248	@ tmp149,
	mov	r4, r0	@ pVC1_CTX_S, pVC1_CTX_S
	ldrb	r2, [r0, r3]	@ zero_extendqisi2	@ D.39902, <variable>.CodecInfo.CodecStatus
	tst	r2, #16	@ D.39902,
	beq	.L777	@,
	movw	r1, #:lower16:113972	@ tmp154,
	movt	r1, #:upper16:113972	@ tmp154,
	bic	r2, r2, #20	@ tmp152, D.39902,
	strb	r2, [r0, r3]	@ tmp152, <variable>.CodecInfo.CodecStatus
	ldr	r0, [r0, r1]	@ <variable>.CodecInfo.UsedDecMode, <variable>.CodecInfo.UsedDecMode
	sub	r3, r0, #2	@ tmp155, <variable>.CodecInfo.UsedDecMode,
	cmp	r3, #1	@ tmp155,
	bls	.L778	@,
.L801:
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r1, [r3, #8]	@ prephitmp.2471, <variable>.s32DecMode
.L779:
	movw	r0, #:lower16:113972	@ tmp225,
	movt	r0, #:upper16:113972	@ tmp225,
	sub	r2, r1, #1	@ tmp226, prephitmp.2471,
	str	r1, [r4, r0]	@ prephitmp.2471, <variable>.CodecInfo.UsedDecMode
	cmp	r2, #3	@ tmp226,
	ldrls	pc, [pc, r2, asl #2]	@ tmp226
	b	.L783	@
.L788:
	.word	.L784
	.word	.L785
	.word	.L786
	.word	.L787
.L784:
	movw	lr, #:lower16:78250	@ tmp227,
	movt	lr, #:upper16:78250	@ tmp227,
	ldrb	r1, [r4, lr]	@ zero_extendqisi2	@ D.39941, <variable>.CodecInfo.PicCodingType
	cmp	r1, #4	@ D.39941,
	cmpne	r1, #2	@, D.39941,
	beq	.L786	@,
.L783:
	mov	r2, #1	@ ret,
.L791:
	movw	ip, #:lower16:101544	@ tmp252,
	movt	ip, #:upper16:101544	@ tmp252,
	ldr	r3, [r4, ip]	@ D.39966, <variable>.CodecInfo.RefNum
	cmp	r3, #0	@ D.39966,
	bne	.L792	@,
.L803:
	movw	r3, #:lower16:78250	@ tmp253,
	movt	r3, #:upper16:78250	@ tmp253,
	ldrb	r3, [r4, r3]	@ zero_extendqisi2	@ D.39968, <variable>.CodecInfo.PicCodingType
	cmp	r3, #1	@ D.39968,
	cmpne	r3, #5	@, D.39968,
	beq	.L793	@,
	cmp	r3, #4	@ D.39968,
	beq	.L793	@,
	cmp	r3, #2	@ D.39968,
	bne	.L794	@,
.L793:
	movw	r1, #:lower16:.LC20	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC20	@,
	bl	dprint_vfmw	@
.L795:
	movw	r5, #:lower16:114368	@ tmp273,
	movt	r5, #:upper16:114368	@ tmp273,
	add	lr, r4, #77824	@, pVC1_CTX_S,
	add	r0, lr, #424	@,,
	ldr	r1, [r4, r5]	@, <variable>.ChanID
	bl	VC1_ClearCurPic	@
	movw	r2, #:lower16:g_event_report	@ tmp275,
	movt	r2, #:upper16:g_event_report	@ tmp275,
	ldr	ip, [r2, #0]	@ g_event_report.491, g_event_report
	cmp	ip, #0	@ g_event_report.491,
	beq	.L777	@,
	mov	r2, #0	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r1, #113	@,
	mov	r3, r2	@,
	blx	ip	@ g_event_report.491
	mov	r0, #0	@ ret.2493,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L805:
	cmp	r3, #2	@ prephitmp.2473,
	bne	.L790	@,
	movw	r1, #:lower16:113904	@ tmp241,
	movt	r1, #:upper16:113904	@ tmp241,
	ldr	r0, [r4, r1]	@ <variable>.CodecInfo.PPicFound, <variable>.CodecInfo.PPicFound
	cmp	r0, #0	@ <variable>.CodecInfo.PPicFound,
	bne	.L783	@,
.L786:
	mov	r2, #0	@ ret,
.L806:
	movw	ip, #:lower16:101544	@ tmp252,
	movt	ip, #:upper16:101544	@ tmp252,
	ldr	r3, [r4, ip]	@ D.39966, <variable>.CodecInfo.RefNum
	cmp	r3, #0	@ D.39966,
	beq	.L803	@,
.L792:
	cmp	r3, #1	@ D.39966,
	bls	.L804	@,
.L794:
	cmp	r2, #0	@ ret,
	beq	.L795	@,
	movw	r3, #:lower16:81344	@ tmp278,
	movt	r3, #:upper16:81344	@ tmp278,
	ldrsb	ip, [r4, r3]	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile, <variable>.CodecInfo.PreParseInfo.IsAdvProfile
	cmp	ip, #0	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile,
	bne	.L798	@,
	add	ip, r4, #80896	@ tmp283, pVC1_CTX_S,
	add	r2, r4, #88064	@ tmp282, pVC1_CTX_S,
	add	r3, ip, #516	@ tmp283, tmp283,
	add	lr, r2, #540	@ tmp282, tmp282,
	ldmia	r3, {r0, r1, r2, r3}	@ tmp283,,,,
	stmia	lr, {r0, r1, r2, r3}	@ tmp282,,,,
	add	r1, r4, #80896	@, pVC1_CTX_S,
	add	r0, r4, #88064	@, pVC1_CTX_S,
	add	r1, r1, #764	@,,
	add	r0, r0, #788	@,,
	mov	r2, #100	@,
	bl	memcpy	@
	mov	r0, #1	@ ret.2493,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L777:
	mov	r0, #0	@ ret.2493,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L778:
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [ip, #8]	@ D.39914, <variable>.s32DecMode
	cmp	r2, #4	@ D.39914,
	cmpne	r2, #1	@, D.39914,
	mov	r1, r2	@ prephitmp.2471, D.39914
	bhi	.L779	@,
	movw	r5, #:lower16:114368	@ tmp167,
	movw	r7, #:lower16:101552	@ tmp169,
	movt	r5, #:upper16:114368	@ tmp167,
	movt	r7, #:upper16:101552	@ tmp169,
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC19	@,
	movt	r1, #:upper16:.LC19	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImg,
	beq	.L780	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	movw	sl, #:lower16:101548	@ tmp193,
	ldr	r1, [r6, #212]	@, <variable>.p_usrdat
	movt	sl, #:upper16:101548	@ tmp193,
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #216]	@, <variable>.p_usrdat
	mov	r8, #0	@ tmp183,
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #220]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #224]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r8, [r6, #224]	@ tmp183, <variable>.p_usrdat
	str	r8, [r6, #212]	@ tmp183, <variable>.p_usrdat
	mov	r2, #1	@,
	str	r8, [r6, #216]	@ tmp183, <variable>.p_usrdat
	str	r8, [r6, #220]	@ tmp183, <variable>.p_usrdat
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, sl]	@, <variable>.CodecInfo.FwdFsID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	str	r8, [r4, r7]	@ tmp183, <variable>.CodecInfo.BwdFsID
	str	r8, [r4, sl]	@ tmp183, <variable>.CodecInfo.FwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, sl]	@ D.39933, <variable>.CodecInfo.FwdFsID
	str	r0, [r4, r7]	@ D.39933, <variable>.CodecInfo.BwdFsID
.L780:
	movw	r1, #:lower16:101468	@ tmp205,
	movt	r1, #:upper16:101468	@ tmp205,
	mov	r3, #0	@ tmp204,
	movw	lr, #:lower16:101544	@ tmp203,
	ldr	r0, [r4, r1]	@ D.39934, <variable>.CodecInfo.pRef
	movt	lr, #:upper16:101544	@ tmp203,
	cmp	r0, r3	@ D.39934,
	str	r3, [r4, lr]	@ tmp204, <variable>.CodecInfo.RefNum
	beq	.L801	@,
	movw	r2, #:lower16:101472	@ tmp207,
	movt	r2, #:upper16:101472	@ tmp207,
	ldr	ip, [r4, r2]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	cmp	ip, #0	@ <variable>.CodecInfo.pRef,
	strneb	r3, [r0, #1]	@ tmp204, <variable>.is_to_display
	ldrne	r0, [r4, r2]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	strneb	r3, [r0, #1]	@ tmp204, <variable>.is_to_display
	ldrne	r1, [r4, r1]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	strneb	r3, [r1, #0]	@ tmp204, <variable>.is_to_ref
	ldrne	r2, [r4, r2]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	strneb	r3, [r2, #0]	@ tmp204, <variable>.is_to_ref
	b	.L801	@
.L787:
	movw	r3, #:lower16:78250	@ tmp237,
	movt	r3, #:upper16:78250	@ tmp237,
	ldrb	r3, [r4, r3]	@ zero_extendqisi2	@ prephitmp.2473, <variable>.CodecInfo.PicCodingType
	cmp	r3, #0	@ prephitmp.2473,
	movweq	r2, #:lower16:113904	@ tmp238,
	movteq	r2, #:upper16:113904	@ tmp238,
	streq	r3, [r4, r2]	@ prephitmp.2473, <variable>.CodecInfo.PPicFound
	bne	.L805	@,
.L790:
	cmp	r3, #1	@ prephitmp.2473,
	cmpne	r3, #5	@, prephitmp.2473,
	bne	.L783	@,
	movw	lr, #:lower16:113904	@ tmp250,
	movt	lr, #:upper16:113904	@ tmp250,
	mov	r2, #1	@ tmp251,
	str	r2, [r4, lr]	@ tmp251, <variable>.CodecInfo.PPicFound
	b	.L791	@
.L785:
	movw	ip, #:lower16:78250	@ tmp235,
	movt	ip, #:upper16:78250	@ tmp235,
	ldrb	r2, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.PicCodingType, <variable>.CodecInfo.PicCodingType
	cmp	r2, #0	@ <variable>.CodecInfo.PicCodingType,
	beq	.L783	@,
	mov	r2, #0	@ ret,
	b	.L806	@
.L798:
	add	r0, r4, #88064	@, pVC1_CTX_S,
	add	r1, r4, #80896	@, pVC1_CTX_S,
	add	r1, r1, #532	@,,
	mov	r2, #172	@,
	add	r0, r0, #556	@,,
	add	r5, r4, #88064	@ tmp298, pVC1_CTX_S,
	bl	memcpy	@
	add	r2, r4, #80896	@ tmp299, pVC1_CTX_S,
	add	lr, r2, #704	@ tmp299, tmp299,
	add	ip, r5, #728	@ tmp298, tmp298,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp328,,,,
	mov	r5, ip	@ tmp329, tmp298
	stmia	r5!, {r0, r1, r2, r3}	@ tmp329,,,,
	mov	ip, r5	@ tmp331, tmp329
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp330,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp331,,,,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp332,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp331,,,,
	add	r3, r4, #88064	@, pVC1_CTX_S,
	ldmia	lr, {r0, r1, r2}	@ tmp332,,,
	add	lr, r4, #80896	@, pVC1_CTX_S,
	stmia	ip, {r0, r1, r2}	@ tmp333,,,
	add	r1, lr, #864	@,,
	add	r0, r3, #888	@,,
	mov	r2, #176	@,
	bl	memcpy	@
	movw	ip, #:lower16:101564	@ tmp312,
	movt	ip, #:upper16:101564	@ tmp312,
	movw	r0, #:lower16:81804	@ tmp307,
	movt	r0, #:upper16:81804	@ tmp307,
	movw	r3, #:lower16:78252	@ tmp306,
	ldr	r2, [r4, ip]	@ <variable>.CodecInfo.SlcNum, <variable>.CodecInfo.SlcNum
	movt	r3, #:upper16:78252	@ tmp306,
	ldr	ip, [r4, r0]	@ <variable>.CodecInfo.SynNew.AdvPicSyntax.FCM, <variable>.CodecInfo.SynNew.AdvPicSyntax.FCM
	add	r1, r4, #81920	@, pVC1_CTX_S,
	add	r0, r4, #89088	@, pVC1_CTX_S,
	add	r1, r1, #16	@,,
	add	r2, r2, r2, asl #1	@, tmp316, <variable>.CodecInfo.SlcNum, <variable>.CodecInfo.SlcNum,
	add	r0, r0, #40	@,,
	strb	ip, [r4, r3]	@ <variable>.CodecInfo.SynNew.AdvPicSyntax.FCM, <variable>.CodecInfo.PicStructure
	mov	r2, r2, asl #2	@, tmp316,
	bl	memcpy	@
	mov	r0, #1	@ ret.2493,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L804:
	movw	r1, #:lower16:78250	@ tmp262,
	movt	r1, #:upper16:78250	@ tmp262,
	ldrb	r0, [r4, r1]	@ zero_extendqisi2	@ D.39977, <variable>.CodecInfo.PicCodingType
	cmp	r0, #4	@ D.39977,
	cmpne	r0, #2	@, D.39977,
	bne	.L794	@,
	movw	r1, #:lower16:.LC21	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC21	@,
	bl	dprint_vfmw	@
	b	.L795	@
	.fnend
	.size	VC1_Vfmw_DecodeArbiter, .-VC1_Vfmw_DecodeArbiter
	.align	2
	.global	VC1_WritePicMsg
	.type	VC1_WritePicMsg, %function
VC1_WritePicMsg:
	.fnstart
.LFB1539:
	@ args = 0, pretend = 0, frame = 104
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #108
	sub	sp, sp, #108	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r2, #:lower16:114368	@ tmp149,
	movw	r3, #:lower16:101556	@ tmp151,
	movt	r2, #:upper16:114368	@ tmp149,
	movt	r3, #:upper16:101556	@ tmp151,
	mov	r4, r0	@ pCtx, pCtx
	mov	r5, r1	@ pVc1DecParam, pVc1DecParam
	ldr	r0, [r0, r2]	@, <variable>.ChanID
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@
	str	r0, [fp, #-52]	@, %sfp
	beq	.L832	@,
	movw	r0, #:lower16:81344	@ tmp154,
	movt	r0, #:upper16:81344	@ tmp154,
	ldrsb	r3, [r4, r0]	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile, <variable>.CodecInfo.PreParseInfo.IsAdvProfile
	cmp	r3, #0	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile,
	bne	.L833	@,
	movw	lr, #:lower16:88604	@ tmp440,
	movt	lr, #:upper16:88604	@ tmp440,
	strb	r3, [r5, #5]	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile, <variable>.fcm
	movw	r2, #:lower16:88855	@ tmp443,
	ldrb	r0, [r4, lr]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPSeqSyntax.PROFILE, <variable>.CodecInfo.SMPSeqSyntax.PROFILE
	movt	r2, #:upper16:88855	@ tmp443,
	movw	r7, #:lower16:113924	@ tmp445,
	movt	r7, #:upper16:113924	@ tmp445,
	movw	sl, #:lower16:113920	@ tmp449,
	movt	sl, #:upper16:113920	@ tmp449,
	strb	r0, [r5, #4]	@ <variable>.CodecInfo.SMPSeqSyntax.PROFILE, <variable>.profile
	movw	lr, #:lower16:88607	@ tmp455,
	ldrb	r9, [r4, r2]	@ zero_extendqisi2	@ iftmp.467, <variable>.CodecInfo.SMPPicSyntax.PTYPE
	movt	lr, #:upper16:88607	@ tmp455,
	movw	r2, #:lower16:78256	@ tmp460,
	movt	r2, #:upper16:78256	@ tmp460,
	cmp	r9, #4	@ iftmp.467,
	moveq	r9, #3	@ iftmp.467,
	strb	r9, [r5, #3]	@ iftmp.467, <variable>.ptype
	ldr	r8, [r4, r7]	@ <variable>.CodecInfo.CurPicMbHeight, <variable>.CodecInfo.CurPicMbHeight
	movw	r9, #:lower16:88610	@ tmp467,
	movt	r9, #:upper16:88610	@ tmp467,
	movw	r7, #:lower16:88614	@ tmp470,
	sub	r6, r8, #1	@ tmp448, <variable>.CodecInfo.CurPicMbHeight,
	strh	r6, [r5, #80]	@ movhi	@ tmp448, <variable>.mbheight
	ldr	r1, [r4, sl]	@ <variable>.CodecInfo.CurPicMbWidth, <variable>.CodecInfo.CurPicMbWidth
	movt	r7, #:upper16:88614	@ tmp470,
	strb	r3, [r5, #8]	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile, <variable>.curparity
	movw	r6, #:lower16:88874	@ tmp473,
	sub	ip, r1, #1	@ tmp452, <variable>.CodecInfo.CurPicMbWidth,
	strh	ip, [r5, #78]	@ movhi	@ tmp452, <variable>.mbwidth
	ldrb	r0, [r4, lr]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPSeqSyntax.LOOPFILTER, <variable>.CodecInfo.SMPSeqSyntax.LOOPFILTER
	movt	r6, #:upper16:88874	@ tmp473,
	strb	r3, [r5, #9]	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile, <variable>.numref
	movw	ip, #:lower16:88884	@ tmp476,
	movt	ip, #:upper16:88884	@ tmp476,
	movw	lr, #:lower16:88859	@ tmp479,
	strb	r0, [r5, #6]	@ <variable>.CodecInfo.SMPSeqSyntax.LOOPFILTER, <variable>.loopfilter
	movt	lr, #:upper16:88859	@ tmp479,
	ldrb	r8, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.Is2ndFld, <variable>.CodecInfo.Is2ndFld
	movw	r2, #:lower16:88858	@ tmp482,
	strb	r3, [r5, #10]	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile, <variable>.fwd_fcm
	movt	r2, #:upper16:88858	@ tmp482,
	strb	r3, [r5, #11]	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile, <variable>.bwd_fcm
	movw	r0, #:lower16:88944	@ tmp485,
	strb	r8, [r5, #7]	@ <variable>.CodecInfo.Is2ndFld, <variable>.issecondfld
	movt	r0, #:upper16:88944	@ tmp485,
	ldrb	sl, [r4, r9]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPSeqSyntax.FASTUVMC, <variable>.CodecInfo.SMPSeqSyntax.FASTUVMC
	movw	r9, #:lower16:88618	@ tmp488,
	movt	r9, #:upper16:88618	@ tmp488,
	strb	sl, [r5, #13]	@ <variable>.CodecInfo.SMPSeqSyntax.FASTUVMC, <variable>.fastuvmc
	ldrb	r1, [r4, r7]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPSeqSyntax.OVERLAP, <variable>.CodecInfo.SMPSeqSyntax.OVERLAP
	strb	r1, [r5, #14]	@ <variable>.CodecInfo.SMPSeqSyntax.OVERLAP, <variable>.overlap
	ldrb	r8, [r4, r6]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.RNDCTRL, <variable>.CodecInfo.SMPPicSyntax.RNDCTRL
	strb	r8, [r5, #12]	@ <variable>.CodecInfo.SMPPicSyntax.RNDCTRL, <variable>.rndctrl
	ldrb	r7, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.ALTPQUANT, <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.ALTPQUANT
	strb	r7, [r5, #18]	@ <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.ALTPQUANT, <variable>.altpquant
	ldrb	r6, [r4, lr]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.HALFQP, <variable>.CodecInfo.SMPPicSyntax.HALFQP
	strb	r6, [r5, #19]	@ <variable>.CodecInfo.SMPPicSyntax.HALFQP, <variable>.halfqp
	ldrb	ip, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.PQINDEX, <variable>.CodecInfo.SMPPicSyntax.PQINDEX
	strb	ip, [r5, #17]	@ <variable>.CodecInfo.SMPPicSyntax.PQINDEX, <variable>.pqindex
	ldr	lr, [r4, r0]	@ <variable>.CodecInfo.SMPPicSyntax.PQUANT, <variable>.CodecInfo.SMPPicSyntax.PQUANT
	strb	lr, [r5, #16]	@ <variable>.CodecInfo.SMPPicSyntax.PQUANT, <variable>.pquant
	ldrb	r1, [r4, r9]	@ zero_extendqisi2	@ D.39321, <variable>.CodecInfo.SMPSeqSyntax.QUANTIZER
	cmp	r1, #0	@ D.39321,
	bne	.L823	@,
	ldrb	ip, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.PQINDEX, <variable>.CodecInfo.SMPPicSyntax.PQINDEX
	cmp	ip, #8	@ <variable>.CodecInfo.SMPPicSyntax.PQINDEX,
	movhi	r3, #0	@, tmp491
	movls	r3, #1	@, tmp491
	strb	r3, [r5, #20]	@ tmp491, <variable>.buniform
.L824:
	movw	r2, #:lower16:88878	@ tmp501,
	movt	r2, #:upper16:88878	@ tmp501,
	movw	sl, #:lower16:88877	@ tmp504,
	movt	sl, #:upper16:88877	@ tmp504,
	ldrb	r3, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.DQBILEVEL, <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.DQBILEVEL
	movw	r8, #:lower16:88612	@ tmp507,
	movt	r8, #:upper16:88612	@ tmp507,
	movw	r1, #:lower16:88876	@ tmp510,
	movt	r1, #:upper16:88876	@ tmp510,
	movw	r0, #:lower16:88888	@ tmp513,
	strb	r3, [r5, #24]	@ <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.DQBILEVEL, <variable>.dqbilevel
	movt	r0, #:upper16:88888	@ tmp513,
	ldrb	r7, [r4, sl]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.DQPROFILE, <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.DQPROFILE
	movw	r9, #:lower16:88873	@,
	movt	r9, #:upper16:88873	@,
	movw	lr, #:lower16:88879	@ tmp516,
	movt	lr, #:upper16:88879	@ tmp516,
	movw	r2, #:lower16:88863	@ tmp519,
	strb	r7, [r5, #23]	@ <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.DQPROFILE, <variable>.dqprofile
	movt	r2, #:upper16:88863	@ tmp519,
	ldrb	r6, [r4, r8]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPSeqSyntax.DQUANT, <variable>.CodecInfo.SMPSeqSyntax.DQUANT
	movw	r3, #:lower16:88864	@ tmp522,
	movt	r3, #:upper16:88864	@ tmp522,
	movw	sl, #:lower16:101468	@ tmp526,
	movt	sl, #:upper16:101468	@ tmp526,
	movw	r8, #:lower16:101464	@ tmp530,
	strb	r6, [r5, #22]	@ <variable>.CodecInfo.SMPSeqSyntax.DQUANT, <variable>.dquant
	movt	r8, #:upper16:101464	@ tmp530,
	ldrb	ip, [r4, r1]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.DQUANTFRM, <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.DQUANTFRM
	movw	r1, #:lower16:88613	@,
	str	r9, [fp, #-48]	@, %sfp
	movt	r1, #:upper16:88613	@,
	movw	r9, #:lower16:88869	@,
	movt	r9, #:upper16:88869	@,
	strb	ip, [r5, #25]	@ <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.DQUANTFRM, <variable>.dquantfrm
	movw	ip, #:lower16:88871	@,
	str	r1, [fp, #-56]	@, %sfp
	movt	ip, #:upper16:88871	@,
	ldr	r1, [r4, r0]	@ <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.QuantMode, <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.QuantMode
	movw	r0, #:lower16:88870	@,
	str	r9, [fp, #-60]	@, %sfp
	movw	r9, #:lower16:88872	@,
	str	ip, [fp, #-64]	@, %sfp
	movt	r9, #:upper16:88872	@,
	strb	r1, [r5, #26]	@ <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.QuantMode, <variable>.quantmode
	movt	r0, #:upper16:88870	@,
	str	r9, [fp, #-68]	@, %sfp
	movw	r9, #:lower16:88868	@,
	ldrb	r1, [r4, lr]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.UseAltQp, <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.UseAltQp
	movw	lr, #:lower16:88932	@,
	str	r0, [fp, #-88]	@, %sfp
	movt	lr, #:upper16:88932	@,
	movt	r9, #:upper16:88868	@,
	movw	r7, #:lower16:88861	@ tmp533,
	strb	r1, [r5, #21]	@ <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.UseAltQp, <variable>.usealtqp
	movt	r7, #:upper16:88861	@ tmp533,
	str	lr, [fp, #-72]	@, %sfp
	movw	r6, #:lower16:88983	@ tmp536,
	ldrb	ip, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.MVMODE, <variable>.CodecInfo.SMPPicSyntax.MVMODE
	movt	r6, #:upper16:88983	@ tmp536,
	movw	r0, #:lower16:88936	@ tmp557,
	movt	r0, #:upper16:88936	@ tmp557,
	movw	r1, #:lower16:88940	@ tmp565,
	movt	r1, #:upper16:88940	@ tmp565,
	strb	ip, [r5, #27]	@ <variable>.CodecInfo.SMPPicSyntax.MVMODE, <variable>.mvmode
	movw	ip, #:lower16:88616	@,
	str	r9, [fp, #-76]	@, %sfp
	movw	r2, #:lower16:88856	@ tmp569,
	ldrb	lr, [r4, r3]	@ zero_extendqisi2	@, <variable>.CodecInfo.SMPPicSyntax.MVMODE2
	movt	r2, #:upper16:88856	@ tmp569,
	str	ip, [fp, #-80]	@, %sfp
	movw	r3, #:lower16:88867	@ tmp575,
	movt	r3, #:upper16:88867	@ tmp575,
	str	lr, [fp, #-84]	@, %sfp
	movw	lr, #:lower16:88948	@ tmp579,
	ldr	r9, [fp, #-84]	@, %sfp
	movt	lr, #:upper16:88948	@ tmp579,
	strb	r9, [r5, #28]	@, <variable>.mvmode2
	ldr	ip, [fp, #-80]	@, %sfp
	movt	ip, #:upper16:88616	@,
	str	ip, [fp, #-80]	@, %sfp
	ldr	r9, [r4, sl]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldrb	ip, [r9, #1029]	@ zero_extendqisi2	@ <variable>.IsHalfPel, <variable>.IsHalfPel
	strb	ip, [r5, #30]	@ <variable>.IsHalfPel, <variable>.colishalfpel
	ldr	sl, [r4, r8]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	ldrb	r9, [sl, #1029]	@ zero_extendqisi2	@ <variable>.IsHalfPel, <variable>.IsHalfPel
	strb	r9, [r5, #29]	@ <variable>.IsHalfPel, <variable>.curishalfpel
	ldrb	r8, [r4, r7]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.MVRANGE, <variable>.CodecInfo.SMPPicSyntax.MVRANGE
	strb	r8, [r5, #31]	@ <variable>.CodecInfo.SMPPicSyntax.MVRANGE, <variable>.mvrange
	ldrb	r6, [r4, r6]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.REFDIST, <variable>.CodecInfo.AdvPicSyntax.REFDIST
	strb	r6, [r5, #32]	@ <variable>.CodecInfo.AdvPicSyntax.REFDIST, <variable>.refdist
	ldr	ip, [fp, #-48]	@, %sfp
	ldrb	sl, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.TRANSDCTAB, <variable>.CodecInfo.SMPPicSyntax.TRANSDCTAB
	strb	sl, [r5, #35]	@ <variable>.CodecInfo.SMPPicSyntax.TRANSDCTAB, <variable>.transdctab
	ldr	r7, [fp, #-56]	@, %sfp
	ldrb	r9, [r4, r7]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPSeqSyntax.VSTRANSFORM, <variable>.CodecInfo.SMPSeqSyntax.VSTRANSFORM
	strb	r9, [r5, #36]	@ <variable>.CodecInfo.SMPSeqSyntax.VSTRANSFORM, <variable>.vstransform
	ldr	r8, [fp, #-60]	@, %sfp
	ldrb	r6, [r4, r8]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.TTMBF, <variable>.CodecInfo.SMPPicSyntax.TTMBF
	strb	r6, [r5, #37]	@ <variable>.CodecInfo.SMPPicSyntax.TTMBF, <variable>.ttmbf
	ldr	ip, [fp, #-64]	@, %sfp
	ldrb	sl, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.TRANSACFRM, <variable>.CodecInfo.SMPPicSyntax.TRANSACFRM
	strb	sl, [r5, #38]	@ <variable>.CodecInfo.SMPPicSyntax.TRANSACFRM, <variable>.transacfrm
	ldr	r7, [fp, #-68]	@, %sfp
	ldrb	r9, [r4, r7]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.TRANSACFRM2, <variable>.CodecInfo.SMPPicSyntax.TRANSACFRM2
	strb	r9, [r5, #39]	@ <variable>.CodecInfo.SMPPicSyntax.TRANSACFRM2, <variable>.transacfrm2
	ldr	r8, [fp, #-88]	@, %sfp
	ldrb	r6, [r4, r8]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.TTFRM, <variable>.CodecInfo.SMPPicSyntax.TTFRM
	strb	r6, [r5, #40]	@ <variable>.CodecInfo.SMPPicSyntax.TTFRM, <variable>.ttfrm
	ldr	sl, [r4, r0]	@ <variable>.CodecInfo.SMPPicSyntax.DIRECTMBMode, <variable>.CodecInfo.SMPPicSyntax.DIRECTMBMode
	rsbs	ip, sl, #1	@ tmp559, <variable>.CodecInfo.SMPPicSyntax.DIRECTMBMode
	movcc	ip, #0	@ tmp559
	strb	ip, [r5, #42]	@ tmp559, <variable>.directmbmodeisskipraw
	ldr	r0, [fp, #-72]	@, %sfp
	ldr	r9, [r4, r0]	@ <variable>.CodecInfo.SMPPicSyntax.MVTYPEMBMode, <variable>.CodecInfo.SMPPicSyntax.MVTYPEMBMode
	rsbs	r7, r9, #1	@ tmp563, <variable>.CodecInfo.SMPPicSyntax.MVTYPEMBMode
	movcc	r7, #0	@ tmp563
	strb	r7, [r5, #43]	@ tmp563, <variable>.mvtypembmodeisskipraw
	ldr	r8, [r4, r1]	@ <variable>.CodecInfo.SMPPicSyntax.SKIPMBMode, <variable>.CodecInfo.SMPPicSyntax.SKIPMBMode
	movw	r9, #12372	@ tmp578,
	rsbs	r6, r8, #1	@ tmp567, <variable>.CodecInfo.SMPPicSyntax.SKIPMBMode
	movcc	r6, #0	@ tmp567
	strb	r6, [r5, #45]	@ tmp567, <variable>.skipmbmodeisskipraw
	ldrb	sl, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.BFRACTION, <variable>.CodecInfo.SMPPicSyntax.BFRACTION
	strb	sl, [r5, #50]	@ <variable>.CodecInfo.SMPPicSyntax.BFRACTION, <variable>.bfraction
	ldr	ip, [fp, #-76]	@, %sfp
	ldrb	r1, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.CBPTAB, <variable>.CodecInfo.SMPPicSyntax.CBPTAB
	strb	r1, [r5, #49]	@ <variable>.CodecInfo.SMPPicSyntax.CBPTAB, <variable>.cbptab
	ldrb	r0, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.MVTAB, <variable>.CodecInfo.SMPPicSyntax.MVTAB
	strb	r0, [r5, #48]	@ <variable>.CodecInfo.SMPPicSyntax.MVTAB, <variable>.mvtab
	ldr	r2, [r4, lr]	@ <variable>.CodecInfo.SMPPicSyntax.ScaleFactor, <variable>.CodecInfo.SMPPicSyntax.ScaleFactor
	str	r2, [r5, r9]	@ <variable>.CodecInfo.SMPPicSyntax.ScaleFactor, <variable>.ScaleFactor
	ldr	r7, [fp, #-80]	@, %sfp
	ldrb	r8, [r4, r7]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPSeqSyntax.RANGERED, <variable>.CodecInfo.SMPSeqSyntax.RANGERED
	cmp	r8, #1	@ <variable>.CodecInfo.SMPSeqSyntax.RANGERED,
	beq	.L827	@,
	mov	r3, #0	@ prephitmp.2534,
	mov	r0, r3	@ prephitmp.2532, prephitmp.2534
	mov	ip, r3	@ prephitmp.2568, prephitmp.2534
	mov	r1, r3	@ prephitmp.2550, prephitmp.2534
.L828:
	strb	r1, [r5, #59]	@ prephitmp.2550, <variable>.RANGEREDFRM
	movw	r6, #:lower16:88604	@ tmp609,
	strb	ip, [r5, #60]	@ prephitmp.2568, <variable>.RANGEREDFRM0
	movt	r6, #:upper16:88604	@ tmp609,
	strb	r0, [r5, #61]	@ prephitmp.2532, <variable>.RANGEREDFRM1
	ldr	r9, [fp, #-52]	@, %sfp
	str	r3, [r9, #408]	@ prephitmp.2534, <variable>.stDispImg.ImageDnr.Rangedfrm
	ldrb	r3, [r4, r6]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPSeqSyntax.PROFILE, <variable>.CodecInfo.SMPSeqSyntax.PROFILE
	strb	r3, [r9, #386]	@ <variable>.CodecInfo.SMPSeqSyntax.PROFILE, <variable>.stDispImg.ImageDnr.vc1_profile
.L821:
	movw	r0, #:lower16:101564	@ tmp612,
	movt	r0, #:upper16:101564	@ tmp612,
	movw	sl, #:lower16:101496	@ tmp614,
	movt	sl, #:upper16:101496	@ tmp614,
	ldrh	ip, [r4, r0]	@, <variable>.CodecInfo.SlcNum
	movw	r9, #:lower16:101500	@ tmp616,
	movt	r9, #:upper16:101500	@ tmp616,
	movw	lr, #:lower16:78259	@ tmp618,
	movt	lr, #:upper16:78259	@ tmp618,
	movw	r8, #:lower16:78260	@ tmp621,
	strh	ip, [r5, #72]	@ movhi	@, <variable>.totalslicenum
	movt	r8, #:upper16:78260	@ tmp621,
	ldrh	r3, [r4, sl]	@, <variable>.CodecInfo.DispPicWidth
	movw	r6, #:lower16:101480	@ tmp625,
	movt	r6, #:upper16:101480	@ tmp625,
	strh	r3, [r5, #74]	@ movhi	@, <variable>.DispPicWidth
	movw	r3, #12404	@ tmp624,
	ldrh	r1, [r4, r9]	@, <variable>.CodecInfo.DispPicHeight
	strh	r1, [r5, #76]	@ movhi	@, <variable>.DispPicHeight
	ldrb	r2, [r4, lr]	@ zero_extendqisi2	@ <variable>.CodecInfo.CodecVersion, <variable>.CodecInfo.CodecVersion
	movw	lr, #:lower16:113944	@ tmp634,
	movt	lr, #:upper16:113944	@ tmp634,
	strb	r2, [r5, #63]	@ <variable>.CodecInfo.CodecVersion, <variable>.CodecVersion
	movw	r2, #:lower16:113948	@ tmp637,
	ldrb	r7, [r4, r8]	@ zero_extendqisi2	@ <variable>.CodecInfo.PostCresent, <variable>.CodecInfo.PostCresent
	movt	r2, #:upper16:113948	@ tmp637,
	movw	r8, #:lower16:113952	@ tmp640,
	movt	r8, #:upper16:113952	@ tmp640,
	strb	r7, [r5, #62]	@ <variable>.CodecInfo.PostCresent, <variable>.PostCresent
	movw	r7, #:lower16:113956	@ tmp643,
	ldr	ip, [r4, r6]	@ <variable>.CodecInfo.MbWidth, <variable>.CodecInfo.MbWidth
	movt	r7, #:upper16:113956	@ tmp643,
	movw	r6, #:lower16:113960	@ tmp646,
	movt	r6, #:upper16:113960	@ tmp646,
	adds	r0, ip, #127	@ tmp626, <variable>.CodecInfo.MbWidth,
	addmi	sl, ip, #254	@, tmp629, <variable>.CodecInfo.MbWidth,
	movpl	sl, r0	@, tmp629, tmp626
	movw	ip, #:lower16:113964	@ tmp649,
	movt	ip, #:upper16:113964	@ tmp649,
	movw	r0, #:lower16:113968	@ tmp652,
	mov	r9, sl, asr #7	@ tmp631, tmp629,
	movt	r0, #:upper16:113968	@ tmp652,
	mov	r1, r9, asl #4	@ tmp632, tmp631,
	str	r1, [r5, r3]	@ tmp632, <variable>.BPD_STRIDE
	ldr	sl, [r4, lr]	@ <variable>.CodecInfo.MVTYPEMB_ADDR, <variable>.CodecInfo.MVTYPEMB_ADDR
	movw	r9, #12408	@ tmp633,
	ldrh	r1, [r5, #78]	@, <variable>.mbwidth
	movw	lr, #:lower16:114368	@ tmp658,
	movw	r3, #:lower16:78261	@ tmp655,
	movt	lr, #:upper16:114368	@ tmp658,
	str	sl, [r5, r9]	@ <variable>.CodecInfo.MVTYPEMB_ADDR, <variable>.MVTYPEMB_ADDR
	movw	sl, #12412	@ tmp636,
	ldr	r9, [r4, r2]	@ <variable>.CodecInfo.SKIPMB_ADDR, <variable>.CodecInfo.SKIPMB_ADDR
	movt	r3, #:upper16:78261	@ tmp655,
	str	r1, [fp, #-52]	@, %sfp
	add	r3, r4, r3	@ tmp655, pCtx, tmp655
	movw	r2, #:lower16:s_pstVfmwChan	@ tmp656,
	movt	r2, #:upper16:s_pstVfmwChan	@ tmp656,
	str	r9, [r5, sl]	@ <variable>.CodecInfo.SKIPMB_ADDR, <variable>.SKIPMB_ADDR
	ldr	sl, [r4, r8]	@ <variable>.CodecInfo.DIRECTMB_ADDR, <variable>.CodecInfo.DIRECTMB_ADDR
	mov	r8, #12416	@ tmp639,
	ldr	r1, [fp, #-52]	@, %sfp
	str	sl, [r5, r8]	@ <variable>.CodecInfo.DIRECTMB_ADDR, <variable>.DIRECTMB_ADDR
	add	r9, r1, #1	@ tmp661,,
	ldr	r8, [r4, r7]	@ <variable>.CodecInfo.ACPRED_ADDR, <variable>.CodecInfo.ACPRED_ADDR
	movw	r7, #12420	@ tmp642,
	str	r8, [r5, r7]	@ <variable>.CodecInfo.ACPRED_ADDR, <variable>.ACPRED_ADDR
	ldr	r7, [r4, r6]	@ <variable>.CodecInfo.OVERFLAGS_ADDR, <variable>.CodecInfo.OVERFLAGS_ADDR
	movw	r6, #12424	@ tmp645,
	str	r7, [r5, r6]	@ <variable>.CodecInfo.OVERFLAGS_ADDR, <variable>.OVERFLAGS_ADDR
	ldr	r6, [r4, ip]	@ <variable>.CodecInfo.FIELDTX_ADDR, <variable>.CodecInfo.FIELDTX_ADDR
	movw	ip, #12428	@ tmp648,
	str	r6, [r5, ip]	@ <variable>.CodecInfo.FIELDTX_ADDR, <variable>.FIELDTX_ADDR
	ldr	r1, [r4, r0]	@ <variable>.CodecInfo.FORWARDMB_ADDR, <variable>.CodecInfo.FORWARDMB_ADDR
	str	r3, [r5, #64]	@ tmp655, <variable>.pIntensityConvertTab
	movw	r3, #12432	@ tmp651,
	str	r1, [r5, r3]	@ <variable>.CodecInfo.FORWARDMB_ADDR, <variable>.FORWARDMB_ADDR
	ldr	ip, [r4, lr]	@ <variable>.ChanID, <variable>.ChanID
	ldr	r3, [r2, ip, asl #2]	@ tmp659, s_pstVfmwChan
	str	r9, [r3, #1468]	@ tmp661, <variable>.stSynExtraData.widthInMB
	ldr	r0, [r4, lr]	@ <variable>.ChanID, <variable>.ChanID
	ldrh	r1, [r5, #80]	@ <variable>.mbheight, <variable>.mbheight
	ldr	lr, [r2, r0, asl #2]	@ tmp665, s_pstVfmwChan
	add	ip, r1, #1	@ tmp667, <variable>.mbheight,
	str	ip, [lr, #1472]	@ tmp667, <variable>.stSynExtraData.heightInMB
.L830:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L833:
	movw	r6, #:lower16:88996	@ tmp156,
	movt	r6, #:upper16:88996	@ tmp156,
	movw	sl, #:lower16:88620	@ tmp159,
	movt	sl, #:upper16:88620	@ tmp159,
	ldr	r9, [r4, r6]	@ <variable>.CodecInfo.AdvPicSyntax.FCM, <variable>.CodecInfo.AdvPicSyntax.FCM
	movw	r7, #:lower16:88953	@ tmp162,
	movt	r7, #:upper16:88953	@ tmp162,
	movw	r1, #:lower16:113924	@ tmp166,
	movt	r1, #:upper16:113924	@ tmp166,
	movw	r2, #:lower16:113920	@ tmp179,
	strb	r9, [r5, #5]	@ <variable>.CodecInfo.AdvPicSyntax.FCM, <variable>.fcm
	movt	r2, #:upper16:113920	@ tmp179,
	ldrb	r8, [r4, sl]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvSeqSyntax.PROFILE, <variable>.CodecInfo.AdvSeqSyntax.PROFILE
	strb	r8, [r5, #4]	@ <variable>.CodecInfo.AdvSeqSyntax.PROFILE, <variable>.profile
	movw	r8, #:lower16:88993	@ tmp183,
	ldrb	r0, [r4, r7]	@ zero_extendqisi2	@ iftmp.466, <variable>.CodecInfo.AdvPicSyntax.PTYPE
	movt	r8, #:upper16:88993	@ tmp183,
	cmp	r0, #4	@ iftmp.466,
	moveq	r0, #3	@ iftmp.466,
	strb	r0, [r5, #3]	@ iftmp.466, <variable>.ptype
	ldr	ip, [r4, r6]	@ <variable>.CodecInfo.AdvPicSyntax.FCM, <variable>.CodecInfo.AdvPicSyntax.FCM
	movw	r6, #:lower16:88796	@ tmp186,
	ldr	lr, [r4, r1]	@ <variable>.CodecInfo.CurPicMbHeight, <variable>.CodecInfo.CurPicMbHeight
	movt	r6, #:upper16:88796	@ tmp186,
	cmp	ip, #3	@ <variable>.CodecInfo.AdvPicSyntax.FCM,
	movw	ip, #:lower16:88984	@ tmp189,
	addeq	lr, lr, #1	@ tmp167, <variable>.CodecInfo.CurPicMbHeight,
	movt	ip, #:upper16:88984	@ tmp189,
	addeq	lr, lr, lr, lsr #31	@, tmp171, tmp167, tmp167,
	moveq	lr, lr, asr #1	@ tmp172, tmp171,
	sub	r3, lr, #1	@ tmp178, <variable>.CodecInfo.CurPicMbHeight,
	strh	r3, [r5, #80]	@ movhi	@ tmp178, <variable>.mbheight
	ldr	r9, [r4, r2]	@ <variable>.CodecInfo.CurPicMbWidth, <variable>.CodecInfo.CurPicMbWidth
	movw	r3, #:lower16:78256	@ tmp192,
	movt	r3, #:upper16:78256	@ tmp192,
	movw	lr, #:lower16:89120	@,
	sub	sl, r9, #1	@ tmp182, <variable>.CodecInfo.CurPicMbWidth,
	strh	sl, [r5, #78]	@ movhi	@ tmp182, <variable>.mbwidth
	ldrb	r7, [r4, r8]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.CurParity, <variable>.CodecInfo.AdvPicSyntax.CurParity
	movt	lr, #:upper16:89120	@,
	movw	sl, #:lower16:101520	@ tmp196,
	movt	sl, #:upper16:101520	@ tmp196,
	movw	r9, #:lower16:89068	@,
	movt	r9, #:upper16:89068	@,
	strb	r7, [r5, #8]	@ <variable>.CodecInfo.AdvPicSyntax.CurParity, <variable>.curparity
	movw	r8, #:lower16:101536	@ tmp205,
	ldrb	r0, [r4, r6]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.LOOPFILTER, <variable>.CodecInfo.AdvEntSyntax.LOOPFILTER
	movt	r8, #:upper16:101536	@ tmp205,
	movw	r7, #:lower16:88982	@ tmp213,
	movt	r7, #:upper16:88982	@ tmp213,
	movw	r6, #:lower16:88797	@ tmp216,
	movt	r6, #:upper16:88797	@ tmp216,
	strb	r0, [r5, #6]	@ <variable>.CodecInfo.AdvEntSyntax.LOOPFILTER, <variable>.loopfilter
	movw	r0, #:lower16:88952	@ tmp222,
	ldrb	r1, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.NUMREF, <variable>.CodecInfo.AdvPicSyntax.NUMREF
	movw	ip, #:lower16:88801	@ tmp219,
	movt	ip, #:upper16:88801	@ tmp219,
	movt	r0, #:upper16:88952	@ tmp222,
	strb	r1, [r5, #9]	@ <variable>.CodecInfo.AdvPicSyntax.NUMREF, <variable>.numref
	str	lr, [fp, #-60]	@, %sfp
	movw	lr, #:lower16:88955	@ tmp228,
	ldrb	r2, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.Is2ndFld, <variable>.CodecInfo.Is2ndFld
	movt	lr, #:upper16:88955	@ tmp228,
	movw	r3, #:lower16:88962	@ tmp231,
	movt	r3, #:upper16:88962	@ tmp231,
	strb	r2, [r5, #7]	@ <variable>.CodecInfo.Is2ndFld, <variable>.issecondfld
	movw	r2, #1544	@,
	str	r9, [fp, #-48]	@, %sfp
	movw	r9, #:lower16:88802	@ tmp237,
	ldr	r1, [r4, sl]	@, <variable>.CodecInfo.RefList0.ImgObj
	movt	r9, #:upper16:88802	@ tmp237,
	mla	sl, r2, r1, r4	@,,, pCtx
	add	r1, sl, #93184	@ tmp201,,
	str	sl, [fp, #-56]	@, %sfp
	add	sl, r1, #40	@ tmp201, tmp201,
	ldrb	r1, [sl, #3]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	strb	r1, [r5, #10]	@ <variable>.PicStruct, <variable>.fwd_fcm
	ldr	sl, [r4, r8]	@ <variable>.CodecInfo.RefList1.ImgObj, <variable>.CodecInfo.RefList1.ImgObj
	mla	r8, r2, sl, r4	@ tmp209,, <variable>.CodecInfo.RefList1.ImgObj, pCtx
	add	r1, r8, #93184	@ tmp210, tmp209,
	add	r2, r1, #40	@ tmp210, tmp210,
	ldrb	sl, [r2, #3]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	strb	sl, [r5, #11]	@ <variable>.PicStruct, <variable>.bwd_fcm
	ldrb	r8, [r4, r7]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.CONDOVER, <variable>.CodecInfo.AdvPicSyntax.CONDOVER
	strb	r8, [r5, #15]	@ <variable>.CodecInfo.AdvPicSyntax.CONDOVER, <variable>.condover
	ldrb	r7, [r4, r6]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.FASTUVMC, <variable>.CodecInfo.AdvEntSyntax.FASTUVMC
	strb	r7, [r5, #13]	@ <variable>.CodecInfo.AdvEntSyntax.FASTUVMC, <variable>.fastuvmc
	ldrb	r1, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.OVERLAP, <variable>.CodecInfo.AdvEntSyntax.OVERLAP
	strb	r1, [r5, #14]	@ <variable>.CodecInfo.AdvEntSyntax.OVERLAP, <variable>.overlap
	ldrb	r2, [r4, r0]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.RNDCTRL, <variable>.CodecInfo.AdvPicSyntax.RNDCTRL
	strb	r2, [r5, #12]	@ <variable>.CodecInfo.AdvPicSyntax.RNDCTRL, <variable>.rndctrl
	ldr	ip, [fp, #-60]	@, %sfp
	ldrb	sl, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.VOPDQUANT.ALTPQUANT, <variable>.CodecInfo.AdvPicSyntax.VOPDQUANT.ALTPQUANT
	strb	sl, [r5, #18]	@ <variable>.CodecInfo.AdvPicSyntax.VOPDQUANT.ALTPQUANT, <variable>.altpquant
	ldrb	r8, [r4, lr]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.HALFQP, <variable>.CodecInfo.AdvPicSyntax.HALFQP
	strb	r8, [r5, #19]	@ <variable>.CodecInfo.AdvPicSyntax.HALFQP, <variable>.halfqp
	ldrb	r6, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.PQINDEX, <variable>.CodecInfo.AdvPicSyntax.PQINDEX
	strb	r6, [r5, #17]	@ <variable>.CodecInfo.AdvPicSyntax.PQINDEX, <variable>.pqindex
	ldr	r7, [fp, #-48]	@, %sfp
	ldr	r1, [r4, r7]	@ <variable>.CodecInfo.AdvPicSyntax.PQUANT, <variable>.CodecInfo.AdvPicSyntax.PQUANT
	strb	r1, [r5, #16]	@ <variable>.CodecInfo.AdvPicSyntax.PQUANT, <variable>.pquant
	ldrb	r2, [r4, r9]	@ zero_extendqisi2	@ D.39229, <variable>.CodecInfo.AdvEntSyntax.QUANTIZER
	cmp	r2, #0	@ D.39229,
	bne	.L814	@,
	ldrb	r3, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.PQINDEX, <variable>.CodecInfo.AdvPicSyntax.PQINDEX
	cmp	r3, #8	@ <variable>.CodecInfo.AdvPicSyntax.PQINDEX,
	movhi	r2, #0	@, tmp240
	movls	r2, #1	@, tmp240
	strb	r2, [r5, #20]	@ tmp240, <variable>.buniform
.L815:
	movw	r7, #:lower16:89114	@ tmp250,
	movt	r7, #:upper16:89114	@ tmp250,
	movw	r6, #:lower16:89113	@ tmp253,
	movt	r6, #:upper16:89113	@ tmp253,
	ldrb	r0, [r4, r7]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.VOPDQUANT.DQBILEVEL, <variable>.CodecInfo.AdvPicSyntax.VOPDQUANT.DQBILEVEL
	movw	ip, #:lower16:88799	@ tmp256,
	movt	ip, #:upper16:88799	@ tmp256,
	movw	lr, #:lower16:89112	@ tmp259,
	movt	lr, #:upper16:89112	@ tmp259,
	movw	r9, #:lower16:88965	@,
	strb	r0, [r5, #24]	@ <variable>.CodecInfo.AdvPicSyntax.VOPDQUANT.DQBILEVEL, <variable>.dqbilevel
	movw	sl, #:lower16:89124	@ tmp262,
	ldrb	r1, [r4, r6]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.VOPDQUANT.DQPROFILE, <variable>.CodecInfo.AdvPicSyntax.VOPDQUANT.DQPROFILE
	movt	sl, #:upper16:89124	@ tmp262,
	movw	r8, #:lower16:89115	@ tmp265,
	movt	r8, #:upper16:89115	@ tmp265,
	movw	r7, #:lower16:88966	@ tmp268,
	movt	r7, #:upper16:88966	@ tmp268,
	strb	r1, [r5, #23]	@ <variable>.CodecInfo.AdvPicSyntax.VOPDQUANT.DQPROFILE, <variable>.dqprofile
	movw	r6, #:lower16:88967	@ tmp271,
	ldrb	r2, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.DQUANT, <variable>.CodecInfo.AdvEntSyntax.DQUANT
	movt	r6, #:upper16:88967	@ tmp271,
	movw	ip, #:lower16:88985	@ tmp274,
	movt	ip, #:upper16:88985	@ tmp274,
	movw	r0, #:lower16:88977	@ tmp277,
	movt	r0, #:upper16:88977	@ tmp277,
	strb	r2, [r5, #22]	@ <variable>.CodecInfo.AdvEntSyntax.DQUANT, <variable>.dquant
	movw	r1, #:lower16:101468	@ tmp281,
	ldrb	r3, [r4, lr]	@ zero_extendqisi2	@, <variable>.CodecInfo.AdvPicSyntax.VOPDQUANT.DQUANTFRM
	movt	r1, #:upper16:101468	@ tmp281,
	str	r9, [fp, #-144]	@, %sfp
	movw	lr, #:lower16:101464	@ tmp290,
	movt	lr, #:upper16:101464	@ tmp290,
	str	r3, [fp, #-48]	@, %sfp
	movw	r3, #:lower16:88993	@ tmp282,
	ldr	r2, [fp, #-48]	@, %sfp
	movt	r3, #:upper16:88993	@ tmp282,
	strb	r2, [r5, #25]	@, <variable>.dquantfrm
	movw	r2, #:lower16:88983	@,
	ldr	r9, [fp, #-144]	@, %sfp
	movt	r2, #:upper16:88983	@,
	movt	r9, #:upper16:88965	@,
	str	r9, [fp, #-144]	@, %sfp
	ldr	sl, [r4, sl]	@ <variable>.CodecInfo.AdvPicSyntax.VOPDQUANT.QuantMode, <variable>.CodecInfo.AdvPicSyntax.VOPDQUANT.QuantMode
	movw	r9, #:lower16:88976	@,
	str	r2, [fp, #-48]	@, %sfp
	movt	r9, #:upper16:88976	@,
	movw	r2, #:lower16:88800	@,
	str	r9, [fp, #-56]	@, %sfp
	movt	r2, #:upper16:88800	@,
	strb	sl, [r5, #26]	@ <variable>.CodecInfo.AdvPicSyntax.VOPDQUANT.QuantMode, <variable>.quantmode
	str	r2, [fp, #-60]	@, %sfp
	movw	r9, #:lower16:88972	@,
	ldrb	r8, [r4, r8]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.VOPDQUANT.UseAltQp, <variable>.CodecInfo.AdvPicSyntax.VOPDQUANT.UseAltQp
	movt	r9, #:upper16:88972	@,
	movw	sl, #:lower16:88974	@,
	str	r9, [fp, #-64]	@, %sfp
	movt	sl, #:upper16:88974	@,
	movw	r2, #:lower16:88975	@,
	str	sl, [fp, #-68]	@, %sfp
	movt	r2, #:upper16:88975	@,
	strb	r8, [r5, #21]	@ <variable>.CodecInfo.AdvPicSyntax.VOPDQUANT.UseAltQp, <variable>.usealtqp
	movw	r9, #:lower16:88973	@,
	str	r2, [fp, #-72]	@, %sfp
	movt	r9, #:upper16:88973	@,
	ldrb	sl, [r4, r7]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.MVMODE, <variable>.CodecInfo.AdvPicSyntax.MVMODE
	movw	r8, #:lower16:88989	@,
	str	r9, [fp, #-76]	@, %sfp
	movt	r8, #:upper16:88989	@,
	movw	r2, #:lower16:88987	@,
	str	r8, [fp, #-80]	@, %sfp
	movt	r2, #:upper16:88987	@,
	strb	sl, [r5, #27]	@ <variable>.CodecInfo.AdvPicSyntax.MVMODE, <variable>.mvmode
	str	r2, [fp, #-84]	@, %sfp
	movw	r9, #:lower16:88991	@,
	ldrb	r6, [r4, r6]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.MVMODE2, <variable>.CodecInfo.AdvPicSyntax.MVMODE2
	movt	r9, #:upper16:88991	@,
	movw	r7, #:lower16:88992	@,
	str	r9, [fp, #-88]	@, %sfp
	movt	r7, #:upper16:88992	@,
	movw	r8, #:lower16:88986	@,
	str	r7, [fp, #-92]	@, %sfp
	movt	r8, #:upper16:88986	@,
	strb	r6, [r5, #28]	@ <variable>.CodecInfo.AdvPicSyntax.MVMODE2, <variable>.mvmode2
	movw	sl, #:lower16:88990	@,
	str	r8, [fp, #-96]	@, %sfp
	movt	sl, #:upper16:88990	@,
	ldrb	r9, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.REFFIELD, <variable>.CodecInfo.AdvPicSyntax.REFFIELD
	movw	r2, #:lower16:88988	@,
	str	sl, [fp, #-100]	@, %sfp
	movt	r2, #:upper16:88988	@,
	movw	r7, #:lower16:88954	@,
	str	r2, [fp, #-104]	@, %sfp
	movt	r7, #:upper16:88954	@,
	strb	r9, [r5, #34]	@ <variable>.CodecInfo.AdvPicSyntax.REFFIELD, <variable>.reffiled
	str	r7, [fp, #-108]	@, %sfp
	movw	r6, #:lower16:88971	@,
	ldrb	sl, [r4, r0]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.DMVRANGE, <variable>.CodecInfo.AdvPicSyntax.DMVRANGE
	movt	r6, #:upper16:88971	@,
	movw	r8, #:lower16:88970	@,
	str	r6, [fp, #-112]	@, %sfp
	movt	r8, #:upper16:88970	@,
	movw	ip, #:lower16:88981	@,
	str	r8, [fp, #-116]	@, %sfp
	movt	ip, #:upper16:88981	@,
	strb	sl, [r5, #33]	@ <variable>.CodecInfo.AdvPicSyntax.DMVRANGE, <variable>.dmvrange
	movw	r0, #:lower16:88978	@,
	str	ip, [fp, #-120]	@, %sfp
	movt	r0, #:upper16:88978	@,
	ldr	r9, [r4, r1]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	movw	r2, #:lower16:88979	@,
	ldrb	r7, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.CurParity, <variable>.CodecInfo.AdvPicSyntax.CurParity
	movt	r2, #:upper16:88979	@,
	str	r0, [fp, #-124]	@, %sfp
	movw	r8, #:lower16:89100	@,
	add	r6, r9, r7	@ tmp285, <variable>.CodecInfo.pRef, <variable>.CodecInfo.AdvPicSyntax.CurParity
	str	r2, [fp, #-128]	@, %sfp
	movt	r8, #:upper16:89100	@,
	movw	ip, #:lower16:113900	@,
	ldrb	sl, [r6, #1029]	@ zero_extendqisi2	@ tmp287, <variable>.IsHalfPel
	movt	ip, #:upper16:113900	@,
	str	r8, [fp, #-132]	@, %sfp
	movw	r7, #:lower16:88980	@ tmp368,
	movt	r7, #:upper16:88980	@ tmp368,
	movw	r6, #:lower16:113896	@ tmp375,
	strb	sl, [r5, #30]	@ tmp287, <variable>.colishalfpel
	movt	r6, #:upper16:113896	@ tmp375,
	str	ip, [fp, #-136]	@, %sfp
	movw	ip, #:lower16:88805	@ tmp380,
	ldr	r1, [r4, lr]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	movt	ip, #:upper16:88805	@ tmp380,
	ldrb	r0, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.CurParity, <variable>.CodecInfo.AdvPicSyntax.CurParity
	movw	r8, #:lower16:88996	@ tmp392,
	movt	r8, #:upper16:88996	@ tmp392,
	add	r2, r1, r0	@ tmp294, <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.AdvPicSyntax.CurParity
	movw	r0, #:lower16:88806	@ tmp383,
	movt	r0, #:upper16:88806	@ tmp383,
	movw	r1, #:lower16:88807	@ tmp386,
	ldrb	r9, [r2, #1029]	@ zero_extendqisi2	@ tmp296, <variable>.IsHalfPel
	movt	r1, #:upper16:88807	@ tmp386,
	movw	r2, #:lower16:88808	@ tmp389,
	movt	r2, #:upper16:88808	@ tmp389,
	strb	r9, [r5, #29]	@ tmp296, <variable>.curishalfpel
	ldr	sl, [fp, #-144]	@, %sfp
	ldrb	lr, [r4, sl]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.MVRANGE, <variable>.CodecInfo.AdvPicSyntax.MVRANGE
	strb	lr, [r5, #31]	@ <variable>.CodecInfo.AdvPicSyntax.MVRANGE, <variable>.mvrange
	ldr	r9, [fp, #-48]	@, %sfp
	ldrb	sl, [r4, r9]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.REFDIST, <variable>.CodecInfo.AdvPicSyntax.REFDIST
	strb	sl, [r5, #32]	@ <variable>.CodecInfo.AdvPicSyntax.REFDIST, <variable>.refdist
	ldr	lr, [fp, #-56]	@, %sfp
	ldrb	sl, [r4, lr]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.TRANSDCTAB, <variable>.CodecInfo.AdvPicSyntax.TRANSDCTAB
	strb	sl, [r5, #35]	@ <variable>.CodecInfo.AdvPicSyntax.TRANSDCTAB, <variable>.transdctab
	ldr	r9, [fp, #-60]	@, %sfp
	ldrb	lr, [r4, r9]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.VSTRANSFORM, <variable>.CodecInfo.AdvEntSyntax.VSTRANSFORM
	strb	lr, [r5, #36]	@ <variable>.CodecInfo.AdvEntSyntax.VSTRANSFORM, <variable>.vstransform
	ldr	sl, [fp, #-64]	@, %sfp
	ldrb	lr, [r4, sl]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.TTMBF, <variable>.CodecInfo.AdvPicSyntax.TTMBF
	strb	lr, [r5, #37]	@ <variable>.CodecInfo.AdvPicSyntax.TTMBF, <variable>.ttmbf
	ldr	r9, [fp, #-68]	@, %sfp
	ldrb	sl, [r4, r9]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.TRANSACFRM, <variable>.CodecInfo.AdvPicSyntax.TRANSACFRM
	strb	sl, [r5, #38]	@ <variable>.CodecInfo.AdvPicSyntax.TRANSACFRM, <variable>.transacfrm
	ldr	lr, [fp, #-72]	@, %sfp
	ldrb	sl, [r4, lr]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.TRANSACFRM2, <variable>.CodecInfo.AdvPicSyntax.TRANSACFRM2
	strb	sl, [r5, #39]	@ <variable>.CodecInfo.AdvPicSyntax.TRANSACFRM2, <variable>.transacfrm2
	ldr	r9, [fp, #-76]	@, %sfp
	ldrb	lr, [r4, r9]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.TTFRM, <variable>.CodecInfo.AdvPicSyntax.TTFRM
	strb	lr, [r5, #40]	@ <variable>.CodecInfo.AdvPicSyntax.TTFRM, <variable>.ttfrm
	ldr	sl, [fp, #-80]	@, %sfp
	ldrb	lr, [r4, sl]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.ACPREDMode, <variable>.CodecInfo.AdvPicSyntax.ACPREDMode
	rsbs	r9, lr, #1	@ tmp324, <variable>.CodecInfo.AdvPicSyntax.ACPREDMode
	movcc	r9, #0	@ tmp324
	strb	r9, [r5, #46]	@ tmp324, <variable>.acpredmodeisskipraw
	ldr	sl, [fp, #-84]	@, %sfp
	ldrb	lr, [r4, sl]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.DIRECTMBMode, <variable>.CodecInfo.AdvPicSyntax.DIRECTMBMode
	rsbs	r9, lr, #1	@ tmp328, <variable>.CodecInfo.AdvPicSyntax.DIRECTMBMode
	movcc	r9, #0	@ tmp328
	strb	r9, [r5, #42]	@ tmp328, <variable>.directmbmodeisskipraw
	ldr	sl, [fp, #-88]	@, %sfp
	ldrb	lr, [r4, sl]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.FIELDTXMode, <variable>.CodecInfo.AdvPicSyntax.FIELDTXMode
	rsbs	r9, lr, #1	@ tmp332, <variable>.CodecInfo.AdvPicSyntax.FIELDTXMode
	movcc	r9, #0	@ tmp332
	strb	r9, [r5, #44]	@ tmp332, <variable>.fieldtxmodeisskipraw
	ldr	sl, [fp, #-92]	@, %sfp
	ldrb	lr, [r4, sl]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.FORWARDMBMode, <variable>.CodecInfo.AdvPicSyntax.FORWARDMBMode
	rsbs	r9, lr, #1	@ tmp336, <variable>.CodecInfo.AdvPicSyntax.FORWARDMBMode
	movcc	r9, #0	@ tmp336
	strb	r9, [r5, #41]	@ tmp336, <variable>.forwardmbmodeisskipraw
	ldr	sl, [fp, #-96]	@, %sfp
	ldrb	lr, [r4, sl]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.MVTYPEMBMode, <variable>.CodecInfo.AdvPicSyntax.MVTYPEMBMode
	rsbs	r9, lr, #1	@ tmp340, <variable>.CodecInfo.AdvPicSyntax.MVTYPEMBMode
	movcc	r9, #0	@ tmp340
	strb	r9, [r5, #43]	@ tmp340, <variable>.mvtypembmodeisskipraw
	ldr	sl, [fp, #-100]	@, %sfp
	ldrb	lr, [r4, sl]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.OVERFLAGSMode, <variable>.CodecInfo.AdvPicSyntax.OVERFLAGSMode
	rsbs	r9, lr, #1	@ tmp344, <variable>.CodecInfo.AdvPicSyntax.OVERFLAGSMode
	movcc	r9, #0	@ tmp344
	strb	r9, [r5, #47]	@ tmp344, <variable>.overflagsmodeisskipraw
	ldr	sl, [fp, #-104]	@, %sfp
	ldrb	lr, [r4, sl]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.SKIPMBMode, <variable>.CodecInfo.AdvPicSyntax.SKIPMBMode
	rsbs	r9, lr, #1	@ tmp348, <variable>.CodecInfo.AdvPicSyntax.SKIPMBMode
	movcc	r9, #0	@ tmp348
	strb	r9, [r5, #45]	@ tmp348, <variable>.skipmbmodeisskipraw
	ldr	sl, [fp, #-108]	@, %sfp
	ldrb	lr, [r4, sl]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.BFRACTION, <variable>.CodecInfo.AdvPicSyntax.BFRACTION
	strb	lr, [r5, #50]	@ <variable>.CodecInfo.AdvPicSyntax.BFRACTION, <variable>.bfraction
	ldr	r9, [fp, #-112]	@, %sfp
	ldrb	sl, [r4, r9]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.CBPTAB, <variable>.CodecInfo.AdvPicSyntax.CBPTAB
	strb	sl, [r5, #49]	@ <variable>.CodecInfo.AdvPicSyntax.CBPTAB, <variable>.cbptab
	ldr	lr, [fp, #-116]	@, %sfp
	ldrb	sl, [r4, lr]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.MVTAB, <variable>.CodecInfo.AdvPicSyntax.MVTAB
	strb	sl, [r5, #48]	@ <variable>.CodecInfo.AdvPicSyntax.MVTAB, <variable>.mvtab
	ldr	r9, [fp, #-120]	@, %sfp
	ldrb	lr, [r4, r9]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.QMVBPTAB, <variable>.CodecInfo.AdvPicSyntax.QMVBPTAB
	strb	lr, [r5, #53]	@ <variable>.CodecInfo.AdvPicSyntax.QMVBPTAB, <variable>.fourmvbptab
	ldr	sl, [fp, #-124]	@, %sfp
	ldrb	lr, [r4, sl]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.QMVSWITCH, <variable>.CodecInfo.AdvPicSyntax.QMVSWITCH
	strb	lr, [r5, #54]	@ <variable>.CodecInfo.AdvPicSyntax.QMVSWITCH, <variable>.fourmvswtich
	ldr	r9, [fp, #-128]	@, %sfp
	ldrb	sl, [r4, r9]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.MBMODETAB, <variable>.CodecInfo.AdvPicSyntax.MBMODETAB
	strb	sl, [r5, #51]	@ <variable>.CodecInfo.AdvPicSyntax.MBMODETAB, <variable>.mbmodetab
	ldrb	lr, [r4, r7]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.BMVBPTAB, <variable>.CodecInfo.AdvPicSyntax.BMVBPTAB
	movw	r7, #12372	@ tmp371,
	strb	lr, [r5, #52]	@ <variable>.CodecInfo.AdvPicSyntax.BMVBPTAB, <variable>.twomvbptab
	ldr	r9, [fp, #-132]	@, %sfp
	ldr	sl, [r4, r9]	@ <variable>.CodecInfo.AdvPicSyntax.ScaleFactor, <variable>.CodecInfo.AdvPicSyntax.ScaleFactor
	movw	r9, #12376	@ tmp374,
	str	sl, [r5, r7]	@ <variable>.CodecInfo.AdvPicSyntax.ScaleFactor, <variable>.ScaleFactor
	ldr	lr, [r4, r6]	@ <variable>.CodecInfo.FRFD, <variable>.CodecInfo.FRFD
	movw	r6, #12380	@ tmp377,
	str	lr, [r5, r9]	@ <variable>.CodecInfo.FRFD, <variable>.FRFD
	ldr	sl, [fp, #-136]	@, %sfp
	ldr	r7, [r4, sl]	@ <variable>.CodecInfo.BRFD, <variable>.CodecInfo.BRFD
	str	r7, [r5, r6]	@ <variable>.CodecInfo.BRFD, <variable>.BRFD
	ldrb	lr, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY_FLAG, <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY_FLAG
	strb	lr, [r5, #55]	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY_FLAG, <variable>.rangemapyflag
	ldrb	r9, [r4, r0]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY, <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY
	strb	r9, [r5, #56]	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY, <variable>.rangemapy
	ldrb	sl, [r4, r1]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV_FLAG, <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV_FLAG
	strb	sl, [r5, #57]	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV_FLAG, <variable>.rangemapuvflag
	ldrb	r7, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV, <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV
	strb	r7, [r5, #58]	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV, <variable>.rangemapuv
	ldr	r6, [r4, r8]	@ <variable>.CodecInfo.AdvPicSyntax.FCM, <variable>.CodecInfo.AdvPicSyntax.FCM
	cmp	r6, #3	@ <variable>.CodecInfo.AdvPicSyntax.FCM,
	beq	.L834	@,
	ldrb	r7, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY_FLAG, <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY_FLAG
	ldr	ip, [fp, #-52]	@, %sfp
	strb	r7, [ip, #381]	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY_FLAG, <variable>.stDispImg.ImageDnr.Range_mapy_flag
	ldrb	r6, [r4, r0]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY, <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY
	strb	r6, [ip, #382]	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY, <variable>.stDispImg.ImageDnr.Range_mapy
	ldrb	r3, [r4, r1]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV_FLAG, <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV_FLAG
	strb	r3, [ip, #383]	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV_FLAG, <variable>.stDispImg.ImageDnr.Range_mapuv_flag
	ldrb	lr, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV, <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV
	strb	lr, [ip, #384]	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV, <variable>.stDispImg.ImageDnr.Range_mapuv
.L820:
	movw	r0, #:lower16:88620	@ tmp432,
	movt	r0, #:upper16:88620	@ tmp432,
	ldr	sl, [fp, #-52]	@, %sfp
	movw	r8, #:lower16:78259	@ tmp435,
	ldrb	r1, [r4, r0]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvSeqSyntax.PROFILE, <variable>.CodecInfo.AdvSeqSyntax.PROFILE
	movt	r8, #:upper16:78259	@ tmp435,
	strb	r1, [sl, #386]	@ <variable>.CodecInfo.AdvSeqSyntax.PROFILE, <variable>.stDispImg.ImageDnr.vc1_profile
	ldrb	r2, [r4, r8]	@ zero_extendqisi2	@ <variable>.CodecInfo.CodecVersion, <variable>.CodecInfo.CodecVersion
	strb	r2, [r5, #63]	@ <variable>.CodecInfo.CodecVersion, <variable>.CodecVersion
	b	.L821	@
.L823:
	cmp	r1, #1	@ D.39321,
	beq	.L835	@,
	cmp	r1, #2	@ D.39321,
	movne	r3, #1	@ tmp499,
	strb	r3, [r5, #20]	@ tmp499, <variable>.buniform
	b	.L824	@
.L814:
	cmp	r2, #1	@ D.39229,
	beq	.L836	@,
	cmp	r2, #2	@ D.39229,
	moveq	r3, #0	@ tmp246,
	movne	r3, #1	@ tmp248,
	strb	r3, [r5, #20]	@ tmp248, <variable>.buniform
	b	.L815	@
.L836:
	movw	ip, #:lower16:88963	@ tmp242,
	movt	ip, #:upper16:88963	@ tmp242,
	ldrb	r1, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.PQUANTIZER, <variable>.CodecInfo.AdvPicSyntax.PQUANTIZER
	subs	lr, r1, #0	@ tmp244, <variable>.CodecInfo.AdvPicSyntax.PQUANTIZER,
	movne	lr, #1	@ tmp244
	strb	lr, [r5, #20]	@ tmp244, <variable>.buniform
	b	.L815	@
.L835:
	movw	r6, #:lower16:88860	@ tmp493,
	movt	r6, #:upper16:88860	@ tmp493,
	ldrb	sl, [r4, r6]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.PQUANTIZER, <variable>.CodecInfo.SMPPicSyntax.PQUANTIZER
	subs	r1, sl, #0	@ tmp495, <variable>.CodecInfo.SMPPicSyntax.PQUANTIZER,
	movne	r1, #1	@ tmp495
	strb	r1, [r5, #20]	@ tmp495, <variable>.buniform
	b	.L824	@
.L834:
	ldrb	r6, [r4, r3]	@ zero_extendqisi2	@ prephitmp.2536, <variable>.CodecInfo.AdvPicSyntax.CurParity
	cmp	r6, #0	@ prephitmp.2536,
	bne	.L819	@,
	ldrb	ip, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY_FLAG, <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY_FLAG
	ldr	sl, [fp, #-52]	@, %sfp
	strb	ip, [sl, #381]	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY_FLAG, <variable>.stDispImg.ImageDnr.Range_mapy_flag
	ldrb	lr, [r4, r0]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY, <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY
	strb	lr, [sl, #382]	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY, <variable>.stDispImg.ImageDnr.Range_mapy
	ldrb	r9, [r4, r1]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV_FLAG, <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV_FLAG
	strb	r9, [sl, #383]	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV_FLAG, <variable>.stDispImg.ImageDnr.Range_mapuv_flag
	ldrb	r8, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV, <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV
	strb	r8, [sl, #384]	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV, <variable>.stDispImg.ImageDnr.Range_mapuv
	ldrb	r6, [r4, r3]	@ zero_extendqisi2	@ prephitmp.2536, <variable>.CodecInfo.AdvPicSyntax.CurParity
.L819:
	cmp	r6, #1	@ prephitmp.2536,
	bne	.L820	@,
	movw	r9, #:lower16:88805	@ tmp408,
	movt	r9, #:upper16:88805	@ tmp408,
	ldr	r6, [fp, #-52]	@, %sfp
	movw	sl, #:lower16:88806	@ tmp411,
	ldrb	r0, [r4, r9]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY_FLAG, <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY_FLAG
	movt	sl, #:upper16:88806	@ tmp411,
	movw	r8, #:lower16:88807	@ tmp414,
	movt	r8, #:upper16:88807	@ tmp414,
	movw	r7, #:lower16:88808	@ tmp417,
	movt	r7, #:upper16:88808	@ tmp417,
	strb	r0, [r6, #376]	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY_FLAG, <variable>.stDispImg.ImageDnr.bottom_Range_mapy_flag
	ldrb	r1, [r4, sl]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY, <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY
	strb	r1, [r6, #377]	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY, <variable>.stDispImg.ImageDnr.bottom_Range_mapy
	ldrb	r2, [r4, r8]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV_FLAG, <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV_FLAG
	strb	r2, [r6, #378]	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV_FLAG, <variable>.stDispImg.ImageDnr.bottom_Range_mapuv_flag
	ldrb	r3, [r4, r7]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV, <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV
	strb	r3, [r6, #379]	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV, <variable>.stDispImg.ImageDnr.bottom_Range_mapuv
	b	.L820	@
.L827:
	movw	r0, #:lower16:101520	@ tmp584,
	movw	lr, #:lower16:101536	@ tmp591,
	movt	r0, #:upper16:101520	@ tmp584,
	movt	lr, #:upper16:101536	@ tmp591,
	movw	sl, #1544	@ tmp587,
	movw	r1, #:lower16:88855	@ tmp597,
	ldr	r2, [r4, r0]	@ <variable>.CodecInfo.RefList0.ImgObj, <variable>.CodecInfo.RefList0.ImgObj
	movt	r1, #:upper16:88855	@ tmp597,
	ldr	r0, [r4, lr]	@ <variable>.CodecInfo.RefList1.ImgObj, <variable>.CodecInfo.RefList1.ImgObj
	ldrb	r1, [r4, r1]	@ zero_extendqisi2	@ D.39370, <variable>.CodecInfo.SMPPicSyntax.PTYPE
	mla	r7, sl, r2, r4	@ tmp588, tmp587, <variable>.CodecInfo.RefList0.ImgObj, pCtx
	cmp	r1, #2	@ D.39370,
	cmpne	r1, #4	@, D.39370,
	mla	r6, sl, r0, r4	@ tmp595, tmp587, <variable>.CodecInfo.RefList1.ImgObj, pCtx
	add	r8, r7, #92160	@ tmp589, tmp588,
	add	lr, r8, #40	@ tmp589, tmp589,
	add	ip, r6, #92160	@ tmp596, tmp595,
	add	r9, ip, #40	@ tmp596, tmp596,
	ldrb	ip, [lr, #2]	@ zero_extendqisi2	@ RANGEREDFRM0, <variable>.RANGEREDFRM
	movwne	lr, #:lower16:88854	@ tmp605,
	movtne	lr, #:upper16:88854	@ tmp605,
	ldrb	r3, [r9, #2]	@ zero_extendqisi2	@ RANGEREDFRM1, <variable>.RANGEREDFRM
	uxtbeq	ip, ip	@ prephitmp.2568, RANGEREDFRM0
	uxtbne	ip, ip	@ prephitmp.2568, RANGEREDFRM0
	uxtbne	r0, r3	@ prephitmp.2532, RANGEREDFRM1
	ldrneb	r3, [r4, lr]	@ zero_extendqisi2	@ RANGEREDFRM, <variable>.CodecInfo.SMPPicSyntax.RANGEREDFRM
	uxtbeq	r1, r3	@ prephitmp.2550, RANGEREDFRM1
	uxtbne	r1, r3	@ prephitmp.2550, RANGEREDFRM
	moveq	r0, r1	@ prephitmp.2532, prephitmp.2550
	b	.L828	@
.L832:
	movw	r1, #:lower16:.LC22	@,
	movw	r2, #1011	@,
	movt	r1, #:upper16:.LC22	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	b	.L830	@
	.fnend
	.size	VC1_WritePicMsg, .-VC1_WritePicMsg
	.align	2
	.global	VC1_Vfmw_StartDecode
	.type	VC1_Vfmw_StartDecode, %function
VC1_Vfmw_StartDecode:
	.fnstart
.LFB1550:
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
	movw	r2, #:lower16:81344	@ tmp156,
	ldr	r1, [r0, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movt	r2, #:upper16:81344	@ tmp156,
	movw	r3, #:lower16:78076	@ tmp153,
	movt	r3, #:upper16:78076	@ tmp153,
	ldrb	r2, [r0, r2]	@ zero_extendqisi2	@ D.40024, <variable>.CodecInfo.PreParseInfo.IsAdvProfile
	add	r6, r0, #77824	@ pCodecInf, pVC1_CTX_S,
	ldr	r1, [r1, #684]	@ <variable>.s32Compress_en, <variable>.s32Compress_en
	mov	r4, r0	@ pVC1_CTX_S, pVC1_CTX_S
	cmp	r2, #1	@ D.40024,
	add	r6, r6, #424	@ pCodecInf, pCodecInf,
	add	r5, r0, #8	@ pVc1DecParam, pVC1_CTX_S,
	str	r1, [r0, r3]	@ <variable>.s32Compress_en, <variable>.Vc1DecParam.Compress_en
	beq	.L838	@,
	cmp	r2, #0	@ D.40024,
	beq	.L852	@,
.L838:
	mov	r0, r4	@, pVC1_CTX_S
	mov	r1, r5	@, pVc1DecParam
	bl	VC1_WritePicMsg	@
	mov	r0, r6	@, pCodecInf
	mov	r1, r5	@, pVc1DecParam
	bl	VC1_WriteSliceMsg	@
	mov	r1, r5	@, pVc1DecParam
	mov	r0, r6	@, pCodecInf
	bl	VC1_CfgVDH	@
	movw	r1, #:lower16:78250	@ tmp174,
	movt	r1, #:upper16:78250	@ tmp174,
	ldrb	r3, [r4, r1]	@ zero_extendqisi2	@ prephitmp.2605, <variable>.CodecInfo.PicCodingType
	cmp	r3, #1	@ prephitmp.2605,
	bls	.L853	@,
.L842:
	cmp	r3, #5	@ prephitmp.2605,
	beq	.L854	@,
	movw	r1, #:lower16:78252	@ tmp194,
	movt	r1, #:upper16:78252	@ tmp194,
	mov	ip, #0	@ tmp192,
	strb	ip, [r4, #9]	@ tmp192, <variable>.Vc1DecParam.IsSkpicCopy
	ldrb	ip, [r4, r1]	@ zero_extendqisi2	@ prephitmp.2607, <variable>.CodecInfo.PicStructure
.L844:
	movw	lr, #:lower16:78252	@ tmp197,
	movw	r2, #:lower16:78256	@ tmp201,
	movt	lr, #:upper16:78252	@ tmp197,
	movt	r2, #:upper16:78256	@ tmp201,
	ldrb	r3, [r4, #11]	@ zero_extendqisi2	@ D.40078, <variable>.Vc1DecParam.ptype
	movw	r1, #:lower16:78251	@ tmp196,
	ldrb	r0, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.Is2ndFld, <variable>.CodecInfo.Is2ndFld
	movt	r1, #:upper16:78251	@ tmp196,
	ldrb	r7, [r4, lr]	@ zero_extendqisi2	@ <variable>.CodecInfo.PicStructure, <variable>.CodecInfo.PicStructure
	movw	r2, #:lower16:78257	@ tmp200,
	cmp	r3, #2	@ D.40078,
	movt	r2, #:upper16:78257	@ tmp200,
	strb	ip, [r4, #8]	@ prephitmp.2607, <variable>.Vc1DecParam.picstructure
	strb	r7, [r4, r1]	@ <variable>.CodecInfo.PicStructure, <variable>.CodecInfo.Last_Struct_IPB
	strb	r0, [r4, r2]	@ <variable>.CodecInfo.Is2ndFld, <variable>.CodecInfo.LastIs2ndFld
	beq	.L855	@,
	cmp	r3, #1	@ D.40078,
	cmpne	r3, #5	@, D.40078,
	movweq	r2, #:lower16:113904	@ tmp224,
	movteq	r2, #:upper16:113904	@ tmp224,
	moveq	r1, #1	@ tmp225,
	streq	r1, [r4, r2]	@ tmp225, <variable>.CodecInfo.PPicFound
.L846:
	ldr	r1, [r4, #0]	@ temp.2624, <variable>.pstExtraData
	str	r5, [r4, #4]	@ pVc1DecParam, <variable>.pVc1DecParam
	ldr	r2, [r1, #896]	@ D.40058, <variable>.stDisParams.s32Mode
	cmp	r2, #1	@ D.40058,
	beq	.L856	@,
	cmp	r2, #2	@ D.40058,
	beq	.L857	@,
.L849:
	mov	r0, #1	@ D.40050,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L852:
	movw	r7, #:lower16:88855	@ tmp158,
	movt	r7, #:upper16:88855	@ tmp158,
	ldrb	r3, [r0, r7]	@ zero_extendqisi2	@ D.42628, <variable>.CodecInfo.SMPPicSyntax.PTYPE
	cmp	r3, #0	@ D.42628,
	cmpne	r3, #4	@, D.42628,
	moveq	r1, #1	@ prephitmp.2609,
	moveq	r0, r1	@ prephitmp.2625, prephitmp.2609
	beq	.L840	@,
	cmp	r3, #1	@ D.42628,
	beq	.L858	@,
	movw	lr, #:lower16:78258	@ tmp169,
	movt	lr, #:upper16:78258	@ tmp169,
	ldrb	r0, [r4, lr]	@ zero_extendqisi2	@ prephitmp.2625, <variable>.CodecInfo.LastPicRNDCTRL
	mov	r1, r0	@ prephitmp.2609, prephitmp.2625
.L840:
	movw	r2, #:lower16:78258	@ tmp170,
	movw	r3, #:lower16:88874	@ tmp172,
	movt	r2, #:upper16:78258	@ tmp170,
	movt	r3, #:upper16:88874	@ tmp172,
	strb	r0, [r4, r2]	@ prephitmp.2625, <variable>.CodecInfo.LastPicRNDCTRL
	strb	r1, [r4, r3]	@ prephitmp.2609, <variable>.CodecInfo.SMPPicSyntax.RNDCTRL
	b	.L838	@
.L857:
	ldr	r0, [r1, #900]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	cmp	r0, #0	@ <variable>.stDisParams.s32DisNums,
	ble	.L849	@,
	cmp	r5, #0	@ pVc1DecParam,
	beq	.L849	@,
	cmp	r3, #2	@ D.40078,
	cmpne	r3, #4	@, D.40078,
	bne	.L849	@,
	movw	r0, #:lower16:101464	@ tmp249,
	movt	r0, #:upper16:101464	@ tmp249,
	mov	r5, #0	@ tmp250,
	movw	ip, #:lower16:114368	@ tmp254,
	ldr	r2, [r4, r0]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	movt	ip, #:upper16:114368	@ tmp254,
	mov	r0, r6	@, pCodecInf
	strb	r5, [r2, #1]	@ tmp250, <variable>.is_to_display
	ldr	lr, [r4, #0]	@ temp.2629, <variable>.pstExtraData
	ldr	r3, [lr, #900]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	sub	r1, r3, #1	@ tmp253, <variable>.stDisParams.s32DisNums,
	str	r1, [lr, #900]	@ tmp253, <variable>.stDisParams.s32DisNums
	ldr	r1, [r4, ip]	@, <variable>.ChanID
	bl	VC1_ClearCurPic	@
	str	r5, [r4, #4]	@ tmp250, <variable>.pVc1DecParam
	mov	r0, r5	@ D.40050, tmp250
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L855:
	movw	r1, #:lower16:113904	@ tmp204,
	movt	r1, #:upper16:113904	@ tmp204,
	ldr	r7, [r4, r1]	@ <variable>.CodecInfo.PPicFound, <variable>.CodecInfo.PPicFound
	cmp	r7, #0	@ <variable>.CodecInfo.PPicFound,
	bne	.L846	@,
	movw	lr, #:lower16:114368	@ tmp206,
	movt	lr, #:upper16:114368	@ tmp206,
	mov	r0, r6	@, pCodecInf
	ldr	r1, [r4, lr]	@, <variable>.ChanID
	bl	VC1_ClearCurPic	@
	movw	ip, #:lower16:101464	@ tmp209,
	movt	ip, #:upper16:101464	@ tmp209,
	movw	r3, #:lower16:113908	@ tmp212,
	movt	r3, #:upper16:113908	@ tmp212,
	mov	r0, r7	@ D.40050, <variable>.CodecInfo.PPicFound
	ldr	r1, [r4, ip]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	strb	r7, [r1, #0]	@ <variable>.CodecInfo.PPicFound, <variable>.is_to_ref
	ldr	r2, [r4, r3]	@ <variable>.CodecInfo.BPicCount, <variable>.CodecInfo.BPicCount
	str	r7, [r4, #4]	@ <variable>.CodecInfo.PPicFound, <variable>.pVc1DecParam
	add	ip, r2, #1	@ tmp215, <variable>.CodecInfo.BPicCount,
	str	ip, [r4, r3]	@ tmp215, <variable>.CodecInfo.BPicCount
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L854:
	movw	r3, #:lower16:78253	@ tmp182,
	movt	r3, #:upper16:78253	@ tmp182,
	movw	lr, #:lower16:113928	@ tmp189,
	movt	lr, #:upper16:113928	@ tmp189,
	ldrb	ip, [r4, r3]	@ zero_extendqisi2	@ prephitmp.2607, <variable>.CodecInfo.Last_Struct
	movw	r0, #:lower16:78252	@ tmp183,
	ldr	r7, [r4, lr]	@ <variable>.CodecInfo.CurPicMbNum, <variable>.CodecInfo.CurPicMbNum
	movt	r0, #:upper16:78252	@ tmp183,
	movw	r3, #:lower16:78256	@ tmp185,
	movw	r2, #:lower16:77996	@ tmp188,
	movt	r3, #:upper16:78256	@ tmp185,
	movt	r2, #:upper16:77996	@ tmp188,
	mov	lr, #1	@ tmp180,
	sub	r1, r7, #1	@ tmp191, <variable>.CodecInfo.CurPicMbNum,
	strb	ip, [r4, r0]	@ prephitmp.2607, <variable>.CodecInfo.PicStructure
	str	r1, [r4, r2]	@ tmp191, <variable>.Vc1DecParam.basic_cfg0
	strb	lr, [r4, r3]	@ tmp180, <variable>.CodecInfo.Is2ndFld
	strb	lr, [r4, #9]	@ tmp180, <variable>.Vc1DecParam.IsSkpicCopy
	b	.L844	@
.L853:
	movw	ip, #:lower16:78252	@ tmp176,
	movt	ip, #:upper16:78252	@ tmp176,
	movw	r0, #:lower16:78253	@ tmp175,
	movt	r0, #:upper16:78253	@ tmp175,
	ldrb	r7, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.PicStructure, <variable>.CodecInfo.PicStructure
	strb	r7, [r4, r0]	@ <variable>.CodecInfo.PicStructure, <variable>.CodecInfo.Last_Struct
	b	.L842	@
.L856:
	cmp	r5, #0	@ pVc1DecParam,
	beq	.L849	@,
	cmp	r3, #2	@ D.40078,
	cmpne	r3, #4	@, D.40078,
	bne	.L849	@,
	movw	r5, #:lower16:101464	@ tmp234,
	movt	r5, #:upper16:101464	@ tmp234,
	movw	r3, #:lower16:114368	@ tmp237,
	movt	r3, #:upper16:114368	@ tmp237,
	ldr	r2, [r4, r5]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	mov	r0, r6	@, pCodecInf
	mov	r5, #0	@ tmp235,
	strb	r5, [r2, #1]	@ tmp235, <variable>.is_to_display
	ldr	r1, [r4, r3]	@, <variable>.ChanID
	bl	VC1_ClearCurPic	@
	str	r5, [r4, #4]	@ tmp235, <variable>.pVc1DecParam
	mov	r0, r5	@ D.40050, tmp235
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L858:
	movw	ip, #:lower16:78258	@ tmp166,
	movt	ip, #:upper16:78258	@ tmp166,
	ldrsb	r0, [r4, ip]	@ <variable>.CodecInfo.LastPicRNDCTRL, <variable>.CodecInfo.LastPicRNDCTRL
	rsbs	r0, r0, #1	@ prephitmp.2625, <variable>.CodecInfo.LastPicRNDCTRL
	movcc	r0, #0	@ prephitmp.2625
	mov	r1, r0	@ prephitmp.2609, prephitmp.2625
	b	.L840	@
	.fnend
	.size	VC1_Vfmw_StartDecode, .-VC1_Vfmw_StartDecode
	.align	2
	.global	VC1_Vfmw_GetImageBuffer
	.type	VC1_Vfmw_GetImageBuffer, %function
VC1_Vfmw_GetImageBuffer:
	.fnstart
.LFB1545:
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
	movw	r5, #:lower16:114368	@ tmp161,
	movt	r5, #:upper16:114368	@ tmp161,
	mov	r4, r0	@ pVC1_CTX_S, pVC1_CTX_S
	mov	r1, #1	@,
	ldr	r0, [r0, r5]	@, <variable>.ChanID
	bl	FSP_NewLogicFs	@
	movw	r3, #:lower16:101556	@ tmp163,
	movt	r3, #:upper16:101556	@ tmp163,
	cmp	r0, #0	@ D.39522,
	mov	r1, r0	@ D.39522,
	str	r0, [r4, r3]	@ D.39522, <variable>.CodecInfo.CurFsID
	blt	.L860	@,
	movw	r6, #:lower16:92200	@ tmp164,
	movt	r6, #:upper16:92200	@ tmp164,
	ldrh	r3, [r4, r6]	@ tmp165,
	cmp	r3, #0	@ tmp165,
	beq	.L862	@,
	movw	r7, #:lower16:93744	@ tmp166,
	movt	r7, #:upper16:93744	@ tmp166,
	ldrh	r3, [r4, r7]	@ tmp167,
	cmp	r3, #0	@ tmp167,
	moveq	r3, #1	@ prephitmp.2651,
	beq	.L862	@,
	movw	r8, #:lower16:95288	@ tmp168,
	movt	r8, #:upper16:95288	@ tmp168,
	ldrh	r3, [r4, r8]	@ tmp169,
	cmp	r3, #0	@ tmp169,
	moveq	r3, #2	@ prephitmp.2651,
	beq	.L862	@,
	movw	sl, #:lower16:96832	@ tmp170,
	movt	sl, #:upper16:96832	@ tmp170,
	ldrh	r3, [r4, sl]	@ tmp171,
	cmp	r3, #0	@ tmp171,
	moveq	r3, #3	@ prephitmp.2651,
	beq	.L862	@,
	movw	r9, #:lower16:98376	@ tmp172,
	movt	r9, #:upper16:98376	@ tmp172,
	ldrh	r0, [r4, r9]	@ tmp173,
	cmp	r0, #0	@ tmp173,
	beq	.L877	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	movw	r5, #:lower16:92201	@ tmp257,
	mov	r0, #1	@,
	movt	r5, #:upper16:92201	@ tmp257,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	bl	dprint_vfmw	@
	mov	r3, #0	@ tmp258,
	movw	ip, #:lower16:93745	@ tmp263,
	movw	r0, #:lower16:95289	@ tmp269,
	movt	ip, #:upper16:93745	@ tmp263,
	movt	r0, #:upper16:95289	@ tmp269,
	movw	r1, #:lower16:96833	@ tmp275,
	movw	r2, #:lower16:98377	@ tmp281,
	movt	r1, #:upper16:96833	@ tmp275,
	movt	r2, #:upper16:98377	@ tmp281,
	strb	r3, [r4, r5]	@ tmp258, <variable>.is_to_display
	mov	r5, r3	@ D.39539, tmp258
	strb	r3, [r4, r6]	@ tmp258, <variable>.is_to_ref
	strb	r3, [r4, ip]	@ tmp258, <variable>.is_to_display
	strb	r3, [r4, r7]	@ tmp258, <variable>.is_to_ref
	strb	r3, [r4, r0]	@ tmp258, <variable>.is_to_display
	mov	r0, r5	@, D.39539
	strb	r3, [r4, r8]	@ tmp258, <variable>.is_to_ref
	strb	r3, [r4, r1]	@ tmp258, <variable>.is_to_display
	strb	r3, [r4, sl]	@ tmp258, <variable>.is_to_ref
	strb	r3, [r4, r2]	@ tmp258, <variable>.is_to_display
	strb	r3, [r4, r9]	@ tmp258, <variable>.is_to_ref
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L877:
	mov	r3, #4	@ prephitmp.2651,
.L862:
	movw	r2, #1544	@ tmp219,
	movw	r7, #:lower16:101464	@ tmp222,
	mul	r5, r2, r3	@ tmp218, tmp219, prephitmp.2651
	movt	r7, #:upper16:101464	@ tmp222,
	mov	r2, #0	@ k,
	mov	r3, r7	@ tmp290, tmp222
	add	ip, r5, r4	@ tmp226, tmp218, pVC1_CTX_S
	add	r1, r5, #92160	@ tmp220, tmp218,
	add	r0, ip, #92160	@ tmp227, tmp226,
	add	lr, r1, #40	@ tmp220, tmp220,
	add	r6, r0, #40	@ tmp227, tmp227,
	add	r1, r4, lr	@ prephitmp.2653, pVC1_CTX_S, tmp220
	mov	r5, #1	@ tmp228,
	str	r1, [r4, r7]	@ prephitmp.2653, <variable>.CodecInfo.pCurFrm
	strb	r5, [r6, #1]	@ tmp228, <variable>.is_to_display
	b	.L871	@
.L878:
	ldr	ip, [r4, r3]	@ prephitmp.2653, <variable>.CodecInfo.pCurFrm
	add	r7, ip, r1	@ tmp295, prephitmp.2653, tmp291
	strb	r6, [r7, #3]	@ D.39549, <variable>.IntensityConvertTab
	ldr	lr, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	add	ip, r1, lr	@ tmp299, tmp291, <variable>.CodecInfo.pCurFrm
	strb	r6, [ip, #259]	@ D.39549, <variable>.IntensityConvertTab
	ldr	r7, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	add	lr, r1, r7	@ tmp302, tmp291, <variable>.CodecInfo.pCurFrm
	strb	r6, [lr, #515]	@ D.39549, <variable>.IntensityConvertTab
	ldr	ip, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	add	r7, r1, ip	@ tmp305, tmp291, <variable>.CodecInfo.pCurFrm
	strb	r6, [r7, #771]	@ D.39549, <variable>.IntensityConvertTab
	ldr	lr, [r4, r3]	@ prephitmp.2653, <variable>.CodecInfo.pCurFrm
	add	r1, lr, r0	@ tmp310, prephitmp.2653, k
	strb	r5, [r1, #3]	@ D.39549, <variable>.IntensityConvertTab
	ldr	r6, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	add	r7, r0, r6	@ tmp314, k, <variable>.CodecInfo.pCurFrm
	strb	r5, [r7, #259]	@ D.39549, <variable>.IntensityConvertTab
	ldr	ip, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	add	lr, r0, ip	@ tmp317, k, <variable>.CodecInfo.pCurFrm
	strb	r5, [lr, #515]	@ D.39549, <variable>.IntensityConvertTab
	ldr	r1, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	add	r0, r0, r1	@ tmp320, k, <variable>.CodecInfo.pCurFrm
	strb	r5, [r0, #771]	@ D.39549, <variable>.IntensityConvertTab
	ldr	r1, [r4, r3]	@ prephitmp.2653, <variable>.CodecInfo.pCurFrm
.L871:
	add	r6, r1, r2	@ tmp231, prephitmp.2653, k
	uxtb	lr, r2	@ D.39549, k
	add	r1, r2, #1	@ tmp291, k,
	strb	lr, [r6, #3]	@ D.39549, <variable>.IntensityConvertTab
	add	r0, r1, #1	@ k, tmp291,
	ldr	r7, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	cmp	r1, #256	@ tmp291,
	uxtb	r6, r1	@ D.39549, tmp291
	uxtb	r5, r0	@ D.39549, k
	add	ip, r2, r7	@ tmp237, k, <variable>.CodecInfo.pCurFrm
	strb	lr, [ip, #259]	@ D.39549, <variable>.IntensityConvertTab
	ldr	r7, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	add	ip, r2, r7	@ tmp243, k, <variable>.CodecInfo.pCurFrm
	strb	lr, [ip, #515]	@ D.39549, <variable>.IntensityConvertTab
	ldr	r7, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	add	r7, r2, r7	@ tmp249, k, <variable>.CodecInfo.pCurFrm
	add	r2, r2, #3	@ k, k,
	strb	lr, [r7, #771]	@ D.39549, <variable>.IntensityConvertTab
	bne	.L878	@,
	mov	r5, #1	@ D.39539,
	mov	r0, r5	@, D.39539
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L860:
	movw	r7, #:lower16:101552	@ tmp177,
	movt	r7, #:upper16:101552	@ tmp177,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC23	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImg,
	beq	.L868	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	movw	sl, #:lower16:101548	@ tmp201,
	ldr	r1, [r6, #212]	@, <variable>.p_usrdat
	movt	sl, #:upper16:101548	@ tmp201,
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #216]	@, <variable>.p_usrdat
	mov	r8, #0	@ tmp191,
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #220]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #224]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r8, [r6, #224]	@ tmp191, <variable>.p_usrdat
	str	r8, [r6, #212]	@ tmp191, <variable>.p_usrdat
	mov	r2, #1	@,
	str	r8, [r6, #216]	@ tmp191, <variable>.p_usrdat
	str	r8, [r6, #220]	@ tmp191, <variable>.p_usrdat
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, sl]	@, <variable>.CodecInfo.FwdFsID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	str	r8, [r4, r7]	@ tmp191, <variable>.CodecInfo.BwdFsID
	str	r8, [r4, sl]	@ tmp191, <variable>.CodecInfo.FwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, sl]	@ D.39536, <variable>.CodecInfo.FwdFsID
	str	r0, [r4, r7]	@ D.39536, <variable>.CodecInfo.BwdFsID
.L868:
	movw	r2, #:lower16:101544	@ tmp211,
	movw	ip, #:lower16:114368	@ tmp213,
	movt	r2, #:upper16:101544	@ tmp211,
	movt	ip, #:upper16:114368	@ tmp213,
	add	r1, r4, #113664	@, pVC1_CTX_S,
	mov	r5, #0	@ tmp212,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	add	r1, r1, #352	@,,
	str	r5, [r4, r2]	@ tmp212, <variable>.CodecInfo.RefNum
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC24	@,
	movt	r1, #:upper16:.LC24	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@, D.39539
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	.fnend
	.size	VC1_Vfmw_GetImageBuffer, .-VC1_Vfmw_GetImageBuffer
	.align	2
	.global	VC1DEC_GetImageBuffer
	.type	VC1DEC_GetImageBuffer, %function
VC1DEC_GetImageBuffer:
	.fnstart
.LFB1544:
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
	movw	r1, #:lower16:78251	@ tmp138,
	movt	r1, #:upper16:78251	@ tmp138,
	mov	r4, r0	@ pCtx, pCtx
	ldrsb	r3, [r0, r1]	@ <variable>.CodecInfo.Last_Struct_IPB, <variable>.CodecInfo.Last_Struct_IPB
	cmp	r3, #3	@ <variable>.CodecInfo.Last_Struct_IPB,
	beq	.L886	@,
.L880:
	movw	r5, #:lower16:114368	@ tmp142,
	movt	r5, #:upper16:114368	@ tmp142,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@,
	beq	.L881	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmn	r0, #1	@,
	beq	.L882	@,
.L885:
	mov	r0, #0	@ D.39494,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L886:
	movw	r2, #:lower16:78257	@ tmp140,
	movt	r2, #:upper16:78257	@ tmp140,
	ldrb	r0, [r0, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.LastIs2ndFld, <variable>.CodecInfo.LastIs2ndFld
	cmp	r0, #1	@ <variable>.CodecInfo.LastIs2ndFld,
	beq	.L880	@,
.L881:
	mov	r0, #1	@ D.39494,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L882:
	add	ip, r4, #113664	@, pCtx,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	add	r1, ip, #352	@,,
	bl	FSP_ClearNotInVoQueue	@
	b	.L885	@
	.fnend
	.size	VC1DEC_GetImageBuffer, .-VC1DEC_GetImageBuffer
	.align	2
	.global	VC1_ArrangeVahbMem
	.type	VC1_ArrangeVahbMem, %function
VC1_ArrangeVahbMem:
	.fnstart
.LFB1537:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #60
	sub	sp, sp, #60	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	sub	r4, r1, #32	@ tmp167, ImgWidth,
	movw	r3, #8160	@ tmp169,
	cmp	r4, r3	@ tmp167, tmp169
	movls	ip, #0	@, tmp170
	movhi	ip, #1	@, tmp170
	mov	r3, r2	@ ImgHeight, ImgHeight
	cmp	r2, #31	@ ImgHeight,
	movhi	r2, ip	@, tmp173, tmp170
	orrls	r2, ip, #1	@,, tmp173, tmp170
	cmp	r2, #0	@ tmp173,
	mov	r4, r0	@ pVc1Ctx, pVc1Ctx
	add	r0, r0, #92160	@ pfrmbuf, pVc1Ctx,
	movw	ip, #:lower16:92200	@ tmp164,
	add	r0, r0, #40	@ pfrmbuf, pfrmbuf,
	movt	ip, #:upper16:92200	@ tmp164,
	bne	.L888	@,
	cmp	r3, #8192	@ ImgHeight,
	bhi	.L888	@,
	add	r8, r0, #1536	@, pfrmbuf,
	str	r8, [fp, #-88]	@, %sfp
	ldr	r9, [fp, #-88]	@, %sfp
	add	r5, r8, #3088	@ pfrmbuf.2775,,
	movw	sl, #:lower16:93428	@ tmp175,
	movt	sl, #:upper16:93428	@ tmp175,
	add	r8, r9, #8	@ pfrmbuf.2756,,
	movw	r9, #:lower16:92201	@ tmp177,
	movt	r9, #:upper16:92201	@ tmp177,
	str	r2, [r4, sl]	@ tmp173, <variable>.img.image_id
	strb	r2, [r4, ip]	@ tmp173, <variable>.is_to_ref
	add	r5, r5, #8	@ pfrmbuf.2775, pfrmbuf.2775,
	strb	r2, [r4, r9]	@ tmp173, <variable>.is_to_display
	add	r7, r8, #1536	@ pfrmbuf.2774, pfrmbuf.2756,
	strb	r2, [r0, #1544]	@ tmp173, <variable>.is_to_ref
	add	r6, r5, #1536	@ pfrmbuf.2776, pfrmbuf.2775,
	strb	r2, [r8, #1544]	@ tmp173, <variable>.is_to_ref
	add	r7, r7, #8	@ pfrmbuf.2774, pfrmbuf.2774,
	ldr	r0, [fp, #-88]	@, %sfp
	add	r6, r6, #8	@ pfrmbuf.2776, pfrmbuf.2776,
	strb	r2, [r8, #1]	@ tmp173, <variable>.is_to_display
	mov	sl, #1	@ tmp184,
	strb	r2, [r7, #1]	@ tmp173, <variable>.is_to_display
	str	sl, [r8, #1228]	@ tmp184, <variable>.img.image_id
	strb	r2, [r0, #3096]	@ tmp173, <variable>.is_to_ref
	mov	r0, #2	@ tmp190,
	strb	r2, [r5, #1]	@ tmp173, <variable>.is_to_display
	str	r0, [r7, #1228]	@ tmp190, <variable>.img.image_id
	mov	r0, #3	@ tmp196,
	strb	r2, [r5, #1544]	@ tmp173, <variable>.is_to_ref
	str	r0, [r5, #1228]	@ tmp196, <variable>.img.image_id
	mov	r0, #4	@ tmp202,
	strb	r2, [r6, #1]	@ tmp173, <variable>.is_to_display
	str	r0, [r6, #1228]	@ tmp202, <variable>.img.image_id
	ldr	r2, [r4, #0]	@ D.39057, <variable>.pstExtraData
	ldr	r0, [r2, #788]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r0, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L891	@,
	ldr	ip, [r2, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	ip, #25	@ <variable>.eCapLevel,
	beq	.L911	@,
.L892:
	mov	r5, r3	@ ImgHeight.2755, ImgHeight
	mov	r6, r1	@ ImgWidth.2754, ImgWidth
	mov	r7, #5	@ prephitmp.2740,
	mov	r8, #3	@ DecFsNum,
	mov	sl, #2	@ PmvBlkNum,
.L899:
	sub	r9, fp, #84	@ tmp247,,
	mov	r1, #36	@,
	mov	r0, r9	@, tmp247
	bl	__memzero	@
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r3, #0	@ tmp223,
	ldr	r1, [ip, #20]	@ <variable>.s32DnrDispOutEnable, <variable>.s32DnrDispOutEnable
	str	r6, [fp, #-56]	@ ImgWidth.2754, FspInstCfg.s32DispFsWidth
	strb	r3, [fp, #-83]	@ tmp223, FspInstCfg.s32TfEnable
	strb	r1, [fp, #-84]	@ <variable>.s32DnrDispOutEnable, FspInstCfg.s32DispLoopEnable
	mov	r1, r9	@, tmp247
	strb	r3, [fp, #-82]	@ tmp223, FspInstCfg.s32RprEnable
	str	r6, [fp, #-72]	@ ImgWidth.2754, FspInstCfg.s32DecFsWidth
	movw	r6, #:lower16:114368	@ tmp236,
	str	r5, [fp, #-52]	@ ImgHeight.2755, FspInstCfg.s32DispFsHeight
	movt	r6, #:upper16:114368	@ tmp236,
	str	r5, [fp, #-68]	@ ImgHeight.2755, FspInstCfg.s32DecFsHeight
	ldr	r5, [ip, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	strb	r7, [fp, #-77]	@ prephitmp.2740, FspInstCfg.s32ExpectedDispFsNum
	mov	r7, #0	@ tmp234,
	cmp	r5, #24	@ <variable>.eCapLevel,
	uxtbne	r3, r8	@ iftmp.460, DecFsNum
	strb	r3, [fp, #-79]	@ iftmp.460, FspInstCfg.s32ExpectedDecFsNum
	ldr	r2, [ip, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r2, #24	@ <variable>.eCapLevel,
	uxtbne	sl, sl	@ iftmp.461, PmvBlkNum
	moveq	sl, #1	@ iftmp.461,
	strb	sl, [fp, #-76]	@ iftmp.461, FspInstCfg.s32ExpectedPmvNum
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	strb	r7, [fp, #-80]	@ tmp234, FspInstCfg.s32UserDec
	bl	FSP_ConfigInstance	@
	subs	r5, r0, #0	@ D.39109,
	bne	.L909	@,
	ldr	lr, [r4, #0]	@ temp.2772, <variable>.pstExtraData
	sub	r3, fp, #48	@,,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r2, [lr, #28]	@, <variable>.s32SyntaxMemSize
	ldr	r1, [lr, #24]	@, <variable>.s32SyntaxMemAddr
	bl	FSP_PartitionFsMemory	@
	cmp	r0, r7	@,
	bne	.L912	@,
.L896:
	mov	r0, #1	@ D.39053,
	b	.L890	@
.L888:
	mov	r2, r1	@, ImgWidth
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC26	@,
	movt	r1, #:upper16:.LC26	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.39053,
.L890:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L891:
	ldr	r0, [r2, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r0, #25	@ <variable>.eCapLevel,
	bne	.L892	@,
	ldr	lr, [r2, #744]	@ temp.2759, <variable>.stChanOption.s32MaxWidth
	cmp	r1, lr	@ ImgWidth, temp.2759
	ldrhi	ip, [r2, #748]	@ prephitmp.2742, <variable>.stChanOption.s32MaxHeight
	bhi	.L901	@,
	ldr	ip, [r2, #748]	@ prephitmp.2742, <variable>.stChanOption.s32MaxHeight
	cmp	r3, ip	@ ImgHeight, prephitmp.2742
	bhi	.L901	@,
	ldr	r6, [r2, #776]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	r8, [r2, #768]	@ temp.2760, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	r6, #0	@ <variable>.stChanOption.s32SupportBFrame,
	bne	.L913	@,
.L904:
	add	r8, r8, #2	@ DecFsNum, temp.2760,
	ldrb	r7, [r2, #796]	@ zero_extendqisi2	@ prephitmp.2740, <variable>.stChanOption.s32DisplayFrameNum
	mov	r5, r3	@ ImgHeight.2755, ImgHeight
	mov	r6, r1	@ ImgWidth.2754, ImgWidth
	b	.L899	@
.L909:
	mov	r0, r7	@, tmp234
	movw	r1, #:lower16:.LC29	@,
	movt	r1, #:upper16:.LC29	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.39053, tmp234
	b	.L890	@
.L911:
	ldr	ip, [r2, #744]	@ D.39064, <variable>.stChanOption.s32MaxWidth
	cmp	r1, ip	@ ImgWidth, D.39064
	mov	r6, ip	@ ImgWidth.2754, D.39064
	ldrhi	r7, [r2, #748]	@ prephitmp.2773, <variable>.stChanOption.s32MaxHeight
	bhi	.L894	@,
	ldr	r5, [r2, #748]	@ ImgHeight.2755, <variable>.stChanOption.s32MaxHeight
	cmp	r3, r5	@ ImgHeight, ImgHeight.2755
	mov	r7, r5	@ prephitmp.2773, ImgHeight.2755
	bhi	.L894	@,
	movw	r3, #:lower16:78248	@ tmp210,
	movt	r3, #:upper16:78248	@ tmp210,
	ldrb	r1, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.CodecStatus, <variable>.CodecInfo.CodecStatus
	tst	r1, #8	@ <variable>.CodecInfo.CodecStatus,
	bne	.L896	@,
	ldr	lr, [r2, #776]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	r8, [r2, #768]	@ D.39075, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	lr, #0	@ <variable>.stChanOption.s32SupportBFrame,
	beq	.L898	@,
	add	sl, r8, #1	@ PmvBlkNum.2757, D.39075,
	cmp	sl, #17	@ PmvBlkNum.2757,
	movcs	sl, #17	@ PmvBlkNum,
.L898:
	add	r8, r8, #2	@ DecFsNum, D.39075,
	ldrb	r7, [r2, #796]	@ zero_extendqisi2	@ prephitmp.2740, <variable>.stChanOption.s32DisplayFrameNum
	b	.L899	@
.L912:
	mov	r0, r5	@, D.39109
	movw	r1, #:lower16:.LC28	@,
	movt	r1, #:upper16:.LC28	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.39053, D.39109
	b	.L890	@
.L901:
	mov	r2, r1	@, ImgWidth
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC27	@,
	movt	r1, #:upper16:.LC27	@,
	str	lr, [sp, #0]	@ temp.2759,
	str	ip, [sp, #4]	@ prephitmp.2742,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.39053,
	b	.L890	@
.L913:
	add	sl, r8, #1	@ PmvBlkNum.2763, temp.2760,
	cmp	sl, #17	@ PmvBlkNum.2763,
	movcs	sl, #17	@ PmvBlkNum,
	b	.L904	@
.L894:
	mov	r2, r1	@, ImgWidth
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC27	@,
	movt	r1, #:upper16:.LC27	@,
	str	ip, [sp, #0]	@ D.39064,
	str	r7, [sp, #4]	@ prephitmp.2773,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.39053,
	b	.L890	@
	.fnend
	.size	VC1_ArrangeVahbMem, .-VC1_ArrangeVahbMem
	.align	2
	.global	VC1_Vfmw_GetStreamInfo
	.type	VC1_Vfmw_GetStreamInfo, %function
VC1_Vfmw_GetStreamInfo:
	.fnstart
.LFB1546:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #44
	sub	sp, sp, #44	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r1, #:lower16:81344	@ tmp200,
	movt	r1, #:upper16:81344	@ tmp200,
	movw	r2, #:lower16:101480	@ tmp199,
	movt	r2, #:upper16:101480	@ tmp199,
	mov	r4, r0	@ pVC1_CTX_S, pVC1_CTX_S
	ldrsb	r3, [r0, r1]	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile, <variable>.CodecInfo.PreParseInfo.IsAdvProfile
	ldr	r5, [r0, r2]	@ MbWidth, <variable>.CodecInfo.MbWidth
	cmp	r3, #0	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile,
	beq	.L915	@,
	movw	r7, #:lower16:88996	@ tmp202,
	movt	r7, #:upper16:88996	@ tmp202,
	ldr	r0, [r0, r7]	@ <variable>.CodecInfo.AdvPicSyntax.FCM, <variable>.CodecInfo.AdvPicSyntax.FCM
	cmp	r0, #3	@ <variable>.CodecInfo.AdvPicSyntax.FCM,
	beq	.L984	@,
	movw	r0, #:lower16:101484	@ tmp751,
	movt	r0, #:upper16:101484	@ tmp751,
	ldr	r7, [r4, r0]	@ <variable>.CodecInfo.MbHeight, <variable>.CodecInfo.MbHeight
	mul	r7, r7, r5	@ TotalMbNum, <variable>.CodecInfo.MbHeight, MbWidth
.L917:
	movw	lr, #:lower16:81584	@ tmp215,
	movt	lr, #:upper16:81584	@ tmp215,
	movw	r2, #:lower16:81586	@ tmp212,
	movt	r2, #:upper16:81586	@ tmp212,
	ldrh	r0, [r4, lr]	@ <variable>.CodecInfo.SynNew.AdvSeqSyntax.MAX_CODED_WIDTH, <variable>.CodecInfo.SynNew.AdvSeqSyntax.MAX_CODED_WIDTH
	ldrh	r1, [r4, r2]	@ <variable>.CodecInfo.SynNew.AdvSeqSyntax.MAX_CODED_HEIGHT, <variable>.CodecInfo.SynNew.AdvSeqSyntax.MAX_CODED_HEIGHT
	add	r2, r0, #15	@ tmp217, <variable>.CodecInfo.SynNew.AdvSeqSyntax.MAX_CODED_WIDTH,
	add	r3, r1, #15	@ tmp214, <variable>.CodecInfo.SynNew.AdvSeqSyntax.MAX_CODED_HEIGHT,
	mov	r2, r2, asr #4	@ MEM_WIDTH_MB, tmp217,
	sub	r0, r2, #-268435454	@ tmp218, MEM_WIDTH_MB,
	mov	r1, r3, asr #4	@ MEM_HEIGHT_MB, tmp214,
	movw	r3, #8160	@ tmp220,
	cmp	r3, r0, asl #4	@ tmp220, tmp218,
	movcc	r3, r1, asl #4	@ prephitmp.2806, MEM_HEIGHT_MB,
	bcs	.L985	@,
.L920:
	mov	r2, r2, asl #4	@, MEM_WIDTH_MB,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC26	@,
	movt	r1, #:upper16:.LC26	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.39601,
.L922:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L915:
	movw	lr, #:lower16:101484	@ tmp211,
	movt	lr, #:upper16:101484	@ tmp211,
	mov	r2, r5	@ MEM_WIDTH_MB, MbWidth
	movw	r3, #8160	@ tmp220,
	ldr	r7, [r0, lr]	@ MbHeight.2838, <variable>.CodecInfo.MbHeight
	sub	r0, r2, #-268435454	@ tmp218, MEM_WIDTH_MB,
	cmp	r3, r0, asl #4	@ tmp220, tmp218,
	mov	r1, r7	@ MEM_HEIGHT_MB, MbHeight.2838
	movcc	r3, r1, asl #4	@ prephitmp.2806, MEM_HEIGHT_MB,
	mul	r7, r5, r7	@ TotalMbNum, MbWidth, MbHeight.2838
	bcc	.L920	@,
.L985:
	mov	r3, r1, asl #4	@ prephitmp.2806, MEM_HEIGHT_MB,
	cmp	r3, #31	@ prephitmp.2806,
	ble	.L920	@,
	cmp	r3, #8192	@ prephitmp.2806,
	bgt	.L920	@,
	movw	r3, #:lower16:101492	@ tmp223,
	movt	r3, #:upper16:101492	@ tmp223,
	ldr	r6, [r4, r3]	@ <variable>.CodecInfo.MbHeightLast, <variable>.CodecInfo.MbHeightLast
	cmp	r6, r1	@ <variable>.CodecInfo.MbHeightLast, MEM_HEIGHT_MB
	beq	.L986	@,
.L923:
	movw	r0, #:lower16:101480	@ tmp231,
	movt	r0, #:upper16:101480	@ tmp231,
	movw	ip, #:lower16:101484	@ tmp228,
	movt	ip, #:upper16:101484	@ tmp228,
	ldr	r6, [r4, r0]	@ <variable>.CodecInfo.MbWidth, <variable>.CodecInfo.MbWidth
	movw	r2, #:lower16:101492	@ tmp227,
	ldr	r1, [r4, ip]	@ <variable>.CodecInfo.MbHeight, <variable>.CodecInfo.MbHeight
	movt	r2, #:upper16:101492	@ tmp227,
	movw	r3, #:lower16:101488	@ tmp230,
	movt	r3, #:upper16:101488	@ tmp230,
	mov	ip, r6	@ MbWidth.2946, <variable>.CodecInfo.MbWidth
	mov	r0, #1	@ SizeChanged,
	str	r1, [r4, r2]	@ <variable>.CodecInfo.MbHeight, <variable>.CodecInfo.MbHeightLast
	str	r6, [r4, r3]	@ <variable>.CodecInfo.MbWidth, <variable>.CodecInfo.MbWidthLast
.L924:
	movw	r2, #:lower16:78256	@ tmp238,
	movt	r2, #:upper16:78256	@ tmp238,
	mov	ip, ip, asl #4	@ tmp235, MbWidth.2946,
	movw	r6, #:lower16:101504	@ tmp234,
	ldrb	r1, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.Is2ndFld, <variable>.CodecInfo.Is2ndFld
	movt	r6, #:upper16:101504	@ tmp234,
	add	r3, ip, #63	@ tmp236, tmp235,
	cmp	r1, #0	@ <variable>.CodecInfo.Is2ndFld,
	bic	lr, r3, #63	@ tmp237, tmp236,
	str	lr, [r4, r6]	@ tmp237, <variable>.CodecInfo.DDR_Stride
	bne	.L987	@,
.L925:
	movw	r6, #:lower16:78248	@ tmp244,
	movt	r6, #:upper16:78248	@ tmp244,
	ldrb	lr, [r4, r6]	@ zero_extendqisi2	@ <variable>.CodecInfo.CodecStatus, <variable>.CodecInfo.CodecStatus
	eor	r2, lr, #8	@ tmp247, <variable>.CodecInfo.CodecStatus,
	ubfx	ip, r2, #3, #1	@ tmp249, tmp247,,
	orrs	r3, r0, ip	@, SizeChanged, tmp249
	beq	.L927	@,
	movw	ip, #:lower16:101464	@ tmp256,
	movw	r2, #:lower16:101476	@ tmp257,
	movt	ip, #:upper16:101464	@ tmp256,
	movt	r2, #:upper16:101476	@ tmp257,
	movw	r1, #:lower16:101472	@ tmp258,
	movw	r8, #:lower16:101468	@ tmp259,
	movt	r1, #:upper16:101472	@ tmp258,
	movt	r8, #:upper16:101468	@ tmp259,
	movw	r6, #:lower16:114368	@ tmp260,
	movw	sl, #:lower16:101552	@ tmp262,
	movt	r6, #:upper16:114368	@ tmp260,
	movt	sl, #:upper16:101552	@ tmp262,
	add	r3, r4, #99328	@ D.39627, pVC1_CTX_S,
	add	r9, r3, #592	@ D.39627, D.39627,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	str	r9, [r4, r2]	@ D.39627, <variable>.CodecInfo.pRef
	str	r9, [r4, ip]	@ D.39627, <variable>.CodecInfo.pCurFrm
	str	r9, [r4, r1]	@ D.39627, <variable>.CodecInfo.pRef
	str	r9, [r4, r8]	@ D.39627, <variable>.CodecInfo.pRef
	ldr	r1, [r4, sl]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r8, r0, #0	@ pImg,
	beq	.L928	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	movw	lr, #:lower16:101548	@ tmp286,
	ldr	r1, [r8, #212]	@, <variable>.p_usrdat
	movt	lr, #:upper16:101548	@ tmp286,
	str	lr, [fp, #-68]	@,
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r9, #0	@ tmp276,
	ldr	r1, [r8, #216]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r8, #220]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r8, #224]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r9, [r8, #224]	@ tmp276, <variable>.p_usrdat
	str	r9, [r8, #212]	@ tmp276, <variable>.p_usrdat
	mov	r2, #1	@,
	str	r9, [r8, #216]	@ tmp276, <variable>.p_usrdat
	str	r9, [r8, #220]	@ tmp276, <variable>.p_usrdat
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, sl]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_ClearLogicFs	@
	ldr	ip, [fp, #-68]	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r4, ip]	@, <variable>.CodecInfo.FwdFsID
	bl	FSP_ClearLogicFs	@
	str	r9, [r4, sl]	@ tmp276, <variable>.CodecInfo.BwdFsID
	ldr	r8, [fp, #-68]	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	str	r9, [r4, r8]	@ tmp276, <variable>.CodecInfo.FwdFsID
	str	r8, [fp, #-68]	@,
	bl	FSP_GetNullLogicFs	@
	ldr	r6, [fp, #-68]	@,
	str	r0, [r4, sl]	@ D.39641, <variable>.CodecInfo.BwdFsID
	str	r0, [r4, r6]	@ D.39641, <variable>.CodecInfo.FwdFsID
.L928:
	add	r8, r4, #113664	@, pVC1_CTX_S,
	movw	r9, #:lower16:101544	@ tmp296,
	movw	r1, #:lower16:92201	@ tmp298,
	movt	r9, #:upper16:101544	@ tmp296,
	movt	r1, #:upper16:92201	@ tmp298,
	add	sl, r8, #352	@,,
	movw	r6, #:lower16:93744	@ tmp307,
	str	sl, [fp, #-52]	@, %sfp
	movt	r6, #:upper16:93744	@ tmp307,
	movw	sl, #:lower16:92200	@ tmp301,
	movw	r8, #:lower16:93745	@ tmp304,
	movt	sl, #:upper16:92200	@ tmp301,
	movt	r8, #:upper16:93745	@ tmp304,
	movw	lr, #:lower16:95289	@ tmp310,
	movw	ip, #:lower16:95288	@ tmp313,
	movt	lr, #:upper16:95289	@ tmp310,
	movt	ip, #:upper16:95288	@ tmp313,
	movw	r0, #:lower16:96833	@ tmp316,
	movw	r2, #:lower16:96832	@ tmp319,
	movt	r0, #:upper16:96833	@ tmp316,
	movt	r2, #:upper16:96832	@ tmp319,
	movw	r3, #:lower16:98377	@,
	movt	r3, #:upper16:98377	@,
	str	r3, [fp, #-56]	@, %sfp
	movw	r3, #:lower16:98376	@,
	movt	r3, #:upper16:98376	@,
	str	r3, [fp, #-60]	@, %sfp
	movw	r3, #:lower16:114368	@,
	movt	r3, #:upper16:114368	@,
	str	r3, [fp, #-64]	@, %sfp
	movw	r3, #:lower16:78248	@,
	movt	r3, #:upper16:78248	@,
	str	r3, [fp, #-48]	@, %sfp
	mov	r3, #0	@ tmp297,
	str	r3, [r4, r9]	@ tmp297, <variable>.CodecInfo.RefNum
	strb	r3, [r4, r1]	@ tmp297, <variable>.is_to_display
	ldr	r1, [fp, #-52]	@, %sfp
	strb	r3, [r4, sl]	@ tmp297, <variable>.is_to_ref
	strb	r3, [r4, r8]	@ tmp297, <variable>.is_to_display
	strb	r3, [r4, r6]	@ tmp297, <variable>.is_to_ref
	strb	r3, [r4, lr]	@ tmp297, <variable>.is_to_display
	strb	r3, [r4, ip]	@ tmp297, <variable>.is_to_ref
	strb	r3, [r4, r0]	@ tmp297, <variable>.is_to_display
	strb	r3, [r4, r2]	@ tmp297, <variable>.is_to_ref
	ldr	ip, [fp, #-60]	@, %sfp
	strb	r3, [r4, ip]	@ tmp297, <variable>.is_to_ref
	ldr	r6, [fp, #-56]	@, %sfp
	strb	r3, [r4, r6]	@ tmp297, <variable>.is_to_display
	ldr	r2, [fp, #-64]	@, %sfp
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	bl	FSP_ClearNotInVoQueue	@
	ldr	r1, [fp, #-48]	@, %sfp
	ldrb	r0, [r4, r1]	@ zero_extendqisi2	@ <variable>.CodecInfo.CodecStatus, <variable>.CodecInfo.CodecStatus
	ands	r6, r0, #8	@ tmp333, <variable>.CodecInfo.CodecStatus,
	beq	.L988	@,
.L927:
	mov	r0, r4	@, pVC1_CTX_S
	bl	VC1_Vfmw_GetImageBuffer	@
	subs	r6, r0, #0	@ D.39663,
	beq	.L989	@,
	movw	r6, #:lower16:114368	@ tmp367,
	movw	lr, #:lower16:101556	@ tmp369,
	movt	r6, #:upper16:114368	@ tmp367,
	movt	lr, #:upper16:101556	@ tmp369,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, lr]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_GetFsImagePtr	@
	subs	r3, r0, #0	@ pImg,
	beq	.L931	@,
	ldr	r6, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	r1, #:lower16:.LC32	@,
	mov	r0, #29	@,
	movt	r1, #:upper16:.LC32	@,
	ldrd	r8, [r6, #56]	@ <variable>.pts, <variable>.pstExtraData,
	strd	r8, [r3, #8]	@ <variable>.pts, pImg,
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r8, [lr, #72]	@ <variable>.Usertag, <variable>.pstExtraData,
	strd	r8, [r3, #16]	@ <variable>.Usertag, pImg,
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r8, [ip, #88]	@ <variable>.DispTime, <variable>.pstExtraData,
	strd	r8, [r3, #24]	@ <variable>.DispTime, pImg,
	mvn	r8, #0	@ tmp386,
	ldr	r2, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mvn	r9, #0	@,
	ldr	r6, [r2, #104]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	str	r6, [r3, #68]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	ip, [lr, #108]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	str	ip, [r3, #72]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	ldr	r2, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r6, [r2, #112]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	str	r6, [r3, #76]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	ip, [lr, #128]	@ <variable>.GopNum, <variable>.GopNum
	str	ip, [r3, #80]	@ <variable>.GopNum, <variable>.GopNum
	ldr	r2, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	strd	r8, [r2, #56]	@ tmp386, <variable>.pstExtraData,
	ldrd	r8, [r3, #16]	@ <variable>.Usertag, pImg,
	ldrd	r2, [r3, #8]	@ <variable>.PTS, pImg,
	strd	r8, [sp]	@ <variable>.Usertag,
	bl	dprint_vfmw	@
.L931:
	movw	r1, #:lower16:81344	@ tmp390,
	movt	r1, #:upper16:81344	@ tmp390,
	ldrsb	r0, [r4, r1]	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile, <variable>.CodecInfo.PreParseInfo.IsAdvProfile
	cmp	r0, #0	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile,
	beq	.L932	@,
	movw	r2, #:lower16:88996	@ tmp392,
	movt	r2, #:upper16:88996	@ tmp392,
	ldr	r3, [r4, r2]	@ <variable>.CodecInfo.AdvPicSyntax.FCM, <variable>.CodecInfo.AdvPicSyntax.FCM
	cmp	r3, #3	@ <variable>.CodecInfo.AdvPicSyntax.FCM,
	beq	.L990	@,
.L932:
	movw	r3, #:lower16:101464	@ tmp400,
	movt	r3, #:upper16:101464	@ tmp400,
	mov	r0, #0	@ tmp401,
	ldr	r1, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	str	r0, [r1, #1180]	@ tmp401, <variable>.img.is_fld_save
.L933:
	movw	r3, #:lower16:101464	@ tmp403,
	movt	r3, #:upper16:101464	@ tmp403,
	movw	lr, #:lower16:81344	@ tmp406,
	movt	lr, #:upper16:81344	@ tmp406,
	ldr	r6, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	mov	ip, #0	@ tmp404,
	strb	ip, [r6, #2]	@ tmp404, <variable>.RANGEREDFRM
	ldrsb	r2, [r4, lr]	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile, <variable>.CodecInfo.PreParseInfo.IsAdvProfile
	cmp	r2, ip	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile,
	bne	.L934	@,
	movw	r1, #:lower16:88616	@ tmp408,
	movt	r1, #:upper16:88616	@ tmp408,
	ldrb	r0, [r4, r1]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPSeqSyntax.RANGERED, <variable>.CodecInfo.SMPSeqSyntax.RANGERED
	cmp	r0, #1	@ <variable>.CodecInfo.SMPSeqSyntax.RANGERED,
	movweq	r0, #:lower16:88854	@ tmp412,
	movteq	r0, #:upper16:88854	@ tmp412,
	ldreq	r3, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	ldreqb	r0, [r4, r0]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.RANGEREDFRM, <variable>.CodecInfo.SMPPicSyntax.RANGEREDFRM
	streqb	r0, [r3, #2]	@ <variable>.CodecInfo.SMPPicSyntax.RANGEREDFRM, <variable>.RANGEREDFRM
.L934:
	movw	r3, #:lower16:78250	@ tmp415,
	movt	r3, #:upper16:78250	@ tmp415,
	ldrb	ip, [r4, r3]	@ zero_extendqisi2	@ D.39693, <variable>.CodecInfo.PicCodingType
	cmp	ip, #5	@ D.39693,
	cmpne	ip, #1	@, D.39693,
	movhi	r6, #0	@, tmp422
	movls	r6, #1	@, tmp422
	bhi	.L935	@,
	movw	r0, #:lower16:101544	@ tmp423,
	movt	r0, #:upper16:101544	@ tmp423,
	movw	r8, #:lower16:101548	@ tmp426,
	movw	r6, #:lower16:101552	@ tmp427,
	ldr	lr, [r4, r0]	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	movt	r8, #:upper16:101548	@ tmp426,
	movt	r6, #:upper16:101552	@ tmp427,
	cmp	lr, #0	@ <variable>.CodecInfo.RefNum,
	ldr	r2, [r4, r8]	@ prephitmp.2817, <variable>.CodecInfo.FwdFsID
	ldr	sl, [r4, r6]	@ <variable>.CodecInfo.BwdFsID, <variable>.CodecInfo.BwdFsID
	movne	lr, #2	@ iftmp.480,
	moveq	lr, #1	@ iftmp.480,
	cmp	r2, sl	@ prephitmp.2817, <variable>.CodecInfo.BwdFsID
	str	lr, [r4, r0]	@ iftmp.480, <variable>.CodecInfo.RefNum
	beq	.L938	@,
	mov	r0, #13	@,
	movw	r1, #:lower16:.LC33	@,
	movt	r1, #:upper16:.LC33	@,
	bl	dprint_vfmw	@
	movw	ip, #:lower16:114368	@ tmp430,
	movt	ip, #:upper16:114368	@ tmp430,
	mov	r2, #0	@,
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.FwdFsID
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	ldr	r2, [r4, r6]	@ prephitmp.2817, <variable>.CodecInfo.BwdFsID
.L938:
	movw	lr, #:lower16:101556	@ tmp437,
	movt	lr, #:upper16:101556	@ tmp437,
	movw	r6, #:lower16:101548	@ tmp435,
	movw	r3, #:lower16:101552	@ tmp436,
	ldr	r1, [r4, lr]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
	movt	r3, #:upper16:101552	@ tmp436,
	movt	r6, #:upper16:101548	@ tmp435,
	movw	sl, #:lower16:114368	@ tmp439,
	movt	sl, #:upper16:114368	@ tmp439,
	str	r1, [r4, r3]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.BwdFsID
	str	r2, [r4, r6]	@ prephitmp.2817, <variable>.CodecInfo.FwdFsID
	mov	r2, #1	@,
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.FwdFsID
	bl	FSP_RemovePmv	@
	movw	r2, #:lower16:78250	@ tmp447,
	movt	r2, #:upper16:78250	@ tmp447,
	ldrb	r8, [r4, r2]	@ zero_extendqisi2	@ D.39711, <variable>.CodecInfo.PicCodingType
	cmp	r8, #5	@ D.39711,
	cmpne	r8, #1	@, D.39711,
	bhi	.L940	@,
	movw	r3, #:lower16:101472	@ tmp471,
	movt	r3, #:upper16:101472	@ tmp471,
	movw	lr, #:lower16:101464	@ tmp475,
	movt	lr, #:upper16:101464	@ tmp475,
	ldr	r2, [r4, r3]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	mov	ip, #0	@ tmp472,
	movw	r6, #:lower16:101468	@ tmp479,
	movt	r6, #:upper16:101468	@ tmp479,
	mov	r0, #1	@ tmp476,
	strb	ip, [r2, #0]	@ tmp472, <variable>.is_to_ref
	ldr	r1, [r4, lr]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	strb	r0, [r1, #0]	@ tmp476, <variable>.is_to_ref
	ldr	sl, [r4, r6]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r8, [r4, lr]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	str	sl, [r4, r3]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	str	r8, [r4, r6]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pRef
.L940:
	movw	sl, #:lower16:114368	@ tmp484,
	movw	r6, #:lower16:101556	@ tmp486,
	movt	sl, #:upper16:114368	@ tmp484,
	movt	r6, #:upper16:101556	@ tmp486,
	movw	r8, #:lower16:101548	@ tmp490,
	movt	r8, #:upper16:101548	@ tmp490,
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.FwdFsID
	mov	r6, r0	@ pCur,
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	movw	r3, #:lower16:101552	@ tmp494,
	movt	r3, #:upper16:101552	@ tmp494,
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.BwdFsID
	mov	r8, r0	@ pFwd,
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	cmp	r6, #0	@ pCur,
	cmpne	r8, #0	@, pFwd,
	mov	sl, r0	@ pBwd,
	beq	.L941	@,
	cmp	r0, #0	@ pBwd,
	beq	.L941	@,
	movw	r1, #:lower16:81344	@ tmp522,
	movt	r1, #:upper16:81344	@ tmp522,
	ldrsb	r3, [r4, r1]	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile, <variable>.CodecInfo.PreParseInfo.IsAdvProfile
	cmp	r3, #0	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile,
	bne	.L991	@,
.L944:
	mov	r3, #0	@ tmp529,
.L980:
	str	r3, [r6, #156]	@ tmp529, <variable>.stDispImg.is_fld_save
	movw	r3, #:lower16:78250	@ tmp530,
	movt	r3, #:upper16:78250	@ tmp530,
	ldrb	r2, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.PicCodingType, <variable>.CodecInfo.PicCodingType
	cmp	r2, #5	@ <variable>.CodecInfo.PicCodingType,
	beq	.L992	@,
.L946:
	ldr	r3, [r6, #520]	@ D.39748, <variable>.pstDecodeFs
	cmp	r3, #0	@ D.39748,
	beq	.L947	@,
	ldr	ip, [r6, #528]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	cmp	ip, #0	@ <variable>.pstTfOutFs,
	beq	.L947	@,
	ldr	r2, [r6, #524]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	cmp	r2, #0	@ <variable>.pstDispOutFs,
	beq	.L947	@,
	ldr	r2, [sl, #520]	@ D.39759, <variable>.pstDecodeFs
	movw	lr, #12400	@ tmp572,
	movw	r0, #:lower16:78044	@ tmp575,
	movt	r0, #:upper16:78044	@ tmp575,
	cmp	r2, #0	@ D.39759,
	ldreq	r2, [r3, #12]	@ iftmp.484, <variable>.PhyAddr
	ldrne	r2, [r2, #12]	@ iftmp.484, <variable>.PhyAddr
	str	r2, [r4, lr]	@ iftmp.484, <variable>.Vc1DecParam.BwdRefAddr
	movw	r2, #12404	@ tmp578,
	ldr	ip, [r8, #520]	@ D.39766, <variable>.pstDecodeFs
	movw	r8, #12396	@ tmp574,
	movw	lr, #:lower16:101464	@ tmp588,
	movt	lr, #:upper16:101464	@ tmp588,
	cmp	ip, #0	@ D.39766,
	ldreq	ip, [r6, #520]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r3, [ip, #12]	@ iftmp.485, <variable>.PhyAddr
	str	r3, [r4, r8]	@ iftmp.485, <variable>.Vc1DecParam.FwdRefAddr
	movw	r3, #:lower16:78008	@ tmp585,
	ldr	r1, [r6, #520]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	movt	r3, #:upper16:78008	@ tmp585,
	ldr	r9, [r1, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r1, #12408	@ tmp580,
	str	r9, [r4, r0]	@ <variable>.PhyAddr, <variable>.Vc1DecParam.ystaddr_1d
	ldr	ip, [r6, #532]	@ <variable>.PmvAddr, <variable>.PmvAddr
	ldr	r9, [r4, lr]	@ temp.2903, <variable>.CodecInfo.pCurFrm
	str	ip, [r4, r2]	@ <variable>.PmvAddr, <variable>.Vc1DecParam.CurrColmbAddr
	movw	r2, #12392	@ tmp582,
	ldr	r0, [sl, #532]	@ <variable>.PmvAddr, <variable>.PmvAddr
	str	r0, [r4, r1]	@ <variable>.PmvAddr, <variable>.Vc1DecParam.BwdColmbAddr
	ldr	lr, [r6, #524]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	ip, [lr, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	ip, [r4, r2]	@ <variable>.PhyAddr, <variable>.Vc1DecParam.CurFrmImgLuma2dPhyAddr
	ldr	r1, [r6, #524]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	r0, [r1, #20]	@ <variable>.Stride, <variable>.Stride
	str	r0, [r4, r3]	@ <variable>.Stride, <variable>.Vc1DecParam.VahbStride
	ldr	lr, [r6, #520]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r0, [lr, #12]	@, <variable>.PhyAddr
	bl	MEM_Phy2Vir	@
	movw	ip, #:lower16:101472	@ tmp591,
	movt	ip, #:upper16:101472	@ tmp591,
	str	r0, [r9, #1064]	@, <variable>.img.luma_vir_addr
	ldr	r0, [r4, r8]	@, <variable>.Vc1DecParam.FwdRefAddr
	ldr	r6, [r4, ip]	@ temp.2906, <variable>.CodecInfo.pRef
	bl	MEM_Phy2Vir	@
	movw	r2, #12400	@ tmp595,
	movw	r1, #:lower16:101468	@ tmp594,
	movt	r1, #:upper16:101468	@ tmp594,
	str	r0, [r6, #1064]	@, <variable>.img.luma_vir_addr
	ldr	r0, [r4, r2]	@, <variable>.Vc1DecParam.BwdRefAddr
	ldr	r6, [r4, r1]	@ temp.2907, <variable>.CodecInfo.pRef
	bl	MEM_Phy2Vir	@
	str	r0, [r6, #1064]	@, <variable>.img.luma_vir_addr
.L926:
	movw	r6, #:lower16:81344	@ tmp597,
	movt	r6, #:upper16:81344	@ tmp597,
	ldrsb	r2, [r4, r6]	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile, <variable>.CodecInfo.PreParseInfo.IsAdvProfile
	cmp	r2, #0	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile,
	beq	.L993	@,
	movw	r3, #:lower16:101464	@ tmp662,
	movw	r2, #:lower16:88996	@ tmp663,
	movt	r3, #:upper16:101464	@ tmp662,
	movt	r2, #:upper16:88996	@ tmp663,
	movw	r6, #:lower16:88953	@ tmp668,
	movt	r6, #:upper16:88953	@ tmp668,
	ldr	r0, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	movw	r1, #:lower16:88966	@ tmp673,
	ldr	lr, [r4, r2]	@ <variable>.CodecInfo.AdvPicSyntax.FCM, <variable>.CodecInfo.AdvPicSyntax.FCM
	movt	r1, #:upper16:88966	@ tmp673,
	movw	r2, #:lower16:88993	@ tmp672,
	movt	r2, #:upper16:88993	@ tmp672,
	strb	lr, [r0, #1027]	@ <variable>.CodecInfo.AdvPicSyntax.FCM, <variable>.PicStruct
	ldr	r0, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	ldrb	ip, [r4, r6]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.PTYPE, <variable>.CodecInfo.AdvPicSyntax.PTYPE
	strb	ip, [r0, #1028]	@ <variable>.CodecInfo.AdvPicSyntax.PTYPE, <variable>.PicCodingType
	ldrb	r1, [r4, r1]	@ zero_extendqisi2	@ D.39835, <variable>.CodecInfo.AdvPicSyntax.MVMODE
	ldr	r0, [r4, r3]	@ temp.2938, <variable>.CodecInfo.pCurFrm
	sub	r6, r1, #2	@ tmp674, D.39835,
	ldrb	r3, [r4, r2]	@ zero_extendqisi2	@ D.39829, <variable>.CodecInfo.AdvPicSyntax.CurParity
	uxtb	r2, r6	@ tmp675, tmp674
	cmp	r2, #1	@ tmp675,
	movls	r1, #1	@ prephitmp.2810,
	bls	.L960	@,
	cmp	r1, #4	@ D.39835,
	movne	r1, #0	@ prephitmp.2810,
	beq	.L994	@,
.L960:
	add	ip, r0, r3	@ tmp683, temp.2938, D.39829
	movw	r3, #:lower16:101564	@ tmp686,
	movt	r3, #:upper16:101564	@ tmp686,
	strb	r1, [ip, #1029]	@ prephitmp.2810, <variable>.IsHalfPel
	ldr	r6, [r4, r3]	@ D.39843, <variable>.CodecInfo.SlcNum
	cmp	r6, #0	@ D.39843,
	moveq	r6, #1	@ tmp754,
	moveq	lr, #0	@ D.39857,
	streq	r6, [r4, r3]	@ tmp754, <variable>.CodecInfo.SlcNum
	beq	.L963	@,
	sub	lr, r6, #1	@ D.39857, D.39843,
	cmp	lr, #0	@ D.39857,
	ble	.L963	@,
	add	r3, r4, #101376	@ tmp698, pVC1_CTX_S,
	sub	r0, lr, #1	@ tmp772, D.39857,
	add	r2, r3, #240	@ tmp698, tmp698,
	add	r1, r3, #200	@ ivtmp.2834, ivtmp.2834,
	mov	r3, #1	@ i,
	cmp	r3, lr	@ i, D.39857
	ldr	ip, [r2, #24]	@ <variable>.SlcEndMbn, <variable>.SlcEndMbn
	and	r0, r0, r3	@ tmp774, tmp772,
	mov	r2, #0	@ i,
	strb	r2, [r1, #0]	@ i, <variable>.SlcNo
	add	r2, r1, #48	@ ivtmp.2834, ivtmp.2834,
	mul	ip, ip, r5	@ tmp699, <variable>.SlcEndMbn, MbWidth
	sub	ip, ip, #1	@ tmp701, tmp699,
	str	ip, [r1, #16]	@ tmp701, <variable>.SlcEndMbn
	bge	.L963	@,
	cmp	r0, #0	@ tmp774,
	beq	.L964	@,
	add	ip, r4, #101376	@ tmp807, pVC1_CTX_S,
	strb	r3, [r2, #0]	@ i, <variable>.SlcNo
	add	r0, ip, #288	@ tmp807, tmp807,
	mov	r3, #2	@ i,
	cmp	r3, lr	@ i, D.39857
	ldr	ip, [r0, #24]	@ <variable>.SlcEndMbn, <variable>.SlcEndMbn
	mul	r0, ip, r5	@ tmp809, <variable>.SlcEndMbn, MbWidth
	sub	ip, r0, #1	@ tmp810, tmp809,
	str	ip, [r2, #16]	@ tmp810, <variable>.SlcEndMbn
	add	r2, r1, #96	@ ivtmp.2834, ivtmp.2834,
	bge	.L963	@,
.L964:
	add	r0, r3, r3, asl #1	@, tmp780, i, i,
	add	r1, r3, #1	@ tmp775, i,
	strb	r3, [r2, #0]	@ i, <variable>.SlcNo
	add	r3, r1, #1	@ i, tmp775,
	add	ip, r4, r0, asl #4	@, tmp784, pVC1_CTX_S, tmp780,
	strb	r1, [r2, #48]	@ tmp775, <variable>.SlcNo
	add	ip, ip, #101376	@ tmp785, tmp784,
	add	r0, r1, r1, asl #1	@, tmp792, tmp775, tmp775,
	add	ip, ip, #240	@ tmp785, tmp785,
	cmp	r3, lr	@ i, D.39857
	add	r0, r4, r0, asl #4	@, tmp796, pVC1_CTX_S, tmp792,
	ldr	r1, [ip, #24]	@ <variable>.SlcEndMbn, <variable>.SlcEndMbn
	add	r0, r0, #101376	@ tmp797, tmp796,
	add	ip, r0, #240	@ tmp797, tmp797,
	mul	r1, r1, r5	@ tmp787, <variable>.SlcEndMbn, MbWidth
	sub	r1, r1, #1	@ tmp788, tmp787,
	str	r1, [r2, #16]	@ tmp788, <variable>.SlcEndMbn
	ldr	r1, [ip, #24]	@ <variable>.SlcEndMbn, <variable>.SlcEndMbn
	mul	r0, r1, r5	@ tmp799, <variable>.SlcEndMbn, MbWidth
	sub	ip, r0, #1	@ tmp800, tmp799,
	str	ip, [r2, #64]	@ tmp800, <variable>.SlcEndMbn
	add	r2, r2, #96	@ ivtmp.2834, ivtmp.2834,
	blt	.L964	@,
.L963:
	add	ip, lr, lr, asl #1	@, tmp705, D.39857, D.39857,
	movw	r1, #:lower16:101576	@ tmp702,
	movw	r2, #:lower16:101592	@ tmp712,
	movt	r1, #:upper16:101576	@ tmp702,
	add	r3, r4, ip, asl #4	@, tmp707, pVC1_CTX_S, tmp705,
	movt	r2, #:upper16:101592	@ tmp712,
	movw	lr, #:lower16:78250	@ tmp720,
	movt	lr, #:upper16:78250	@ tmp720,
	sub	r6, r6, #1	@ tmp710, D.39843,
	sub	r7, r7, #1	@ tmp719, TotalMbNum,
	strb	r6, [r3, r1]	@ tmp710, <variable>.SlcNo
	str	r7, [r3, r2]	@ tmp719, <variable>.SlcEndMbn
	ldrb	r1, [r4, lr]	@ zero_extendqisi2	@ prephitmp.2947, <variable>.CodecInfo.PicCodingType
	cmp	r1, #2	@ prephitmp.2947,
	bne	.L958	@,
	movw	r6, #:lower16:88983	@ tmp721,
	movw	r3, #:lower16:89100	@ tmp723,
	movt	r6, #:upper16:88983	@ tmp721,
	movt	r3, #:upper16:89100	@ tmp723,
	movw	r2, #:lower16:113896	@ tmp726,
	movt	r2, #:upper16:113896	@ tmp726,
	ldrb	r0, [r4, r6]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.REFDIST, <variable>.CodecInfo.AdvPicSyntax.REFDIST
	ldr	lr, [r4, r3]	@ <variable>.CodecInfo.AdvPicSyntax.ScaleFactor, <variable>.CodecInfo.AdvPicSyntax.ScaleFactor
	movw	r3, #:lower16:113900	@ tmp730,
	sub	r6, r0, #1	@ tmp729, <variable>.CodecInfo.AdvPicSyntax.REFDIST,
	movt	r3, #:upper16:113900	@ tmp730,
	mul	ip, lr, r0	@ tmp724, <variable>.CodecInfo.AdvPicSyntax.ScaleFactor, <variable>.CodecInfo.AdvPicSyntax.REFDIST
	mov	r0, ip, asr #8	@ D.39868, tmp724,
	str	r0, [r4, r2]	@ D.39868, <variable>.CodecInfo.FRFD
	rsb	lr, r0, r6	@ D.39872, D.39868, tmp729
	str	lr, [r4, r3]	@ D.39872, <variable>.CodecInfo.BRFD
	cmp	lr, #0	@ D.39872,
	movlt	lr, #0	@ tmp733,
	strlt	lr, [r4, r3]	@ tmp733, <variable>.CodecInfo.BRFD
	b	.L958	@
.L987:
	movw	r6, #:lower16:78251	@ tmp240,
	movt	r6, #:upper16:78251	@ tmp240,
	ldrsb	lr, [r4, r6]	@ <variable>.CodecInfo.Last_Struct_IPB, <variable>.CodecInfo.Last_Struct_IPB
	cmp	lr, #3	@ <variable>.CodecInfo.Last_Struct_IPB,
	bne	.L925	@,
	movw	r1, #:lower16:78257	@ tmp242,
	movt	r1, #:upper16:78257	@ tmp242,
	ldrb	r3, [r4, r1]	@ zero_extendqisi2	@ <variable>.CodecInfo.LastIs2ndFld, <variable>.CodecInfo.LastIs2ndFld
	cmp	r3, #1	@ <variable>.CodecInfo.LastIs2ndFld,
	bne	.L926	@,
	b	.L925	@
.L984:
	movw	r0, #:lower16:101484	@ tmp204,
	movt	r0, #:upper16:101484	@ tmp204,
	ldr	r1, [r4, r0]	@ <variable>.CodecInfo.MbHeight, <variable>.CodecInfo.MbHeight
	add	r3, r1, #1	@ tmp205, <variable>.CodecInfo.MbHeight,
	add	r2, r3, r3, lsr #31	@, tmp209, tmp205, tmp205,
	mov	lr, r2, asr #1	@ tmp210, tmp209,
	mul	r7, r5, lr	@ TotalMbNum, MbWidth, tmp210
	b	.L917	@
.L989:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC31	@,
	movt	r1, #:upper16:.LC31	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@ D.39601, D.39663
	b	.L922	@
.L986:
	movw	lr, #:lower16:101488	@ tmp225,
	movt	lr, #:upper16:101488	@ tmp225,
	ldr	r1, [r4, lr]	@ <variable>.CodecInfo.MbWidthLast, <variable>.CodecInfo.MbWidthLast
	cmp	r1, r2	@ <variable>.CodecInfo.MbWidthLast, MEM_WIDTH_MB
	moveq	ip, r5	@ MbWidth.2946, MbWidth
	moveq	r0, #0	@ SizeChanged,
	bne	.L923	@,
	b	.L924	@
.L935:
	movw	r0, #:lower16:101544	@ tmp455,
	movt	r0, #:upper16:101544	@ tmp455,
	ldr	r1, [r4, r0]	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r1, #1	@ <variable>.CodecInfo.RefNum,
	bhi	.L940	@,
	movw	r2, #:lower16:114368	@ tmp457,
	movw	ip, #:lower16:101556	@ tmp459,
	movt	r2, #:upper16:114368	@ tmp457,
	movt	ip, #:upper16:101556	@ tmp459,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r4, ip]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_ClearLogicFs	@
	movw	r3, #:lower16:101464	@ tmp462,
	movw	r1, #:lower16:.LC34	@,
	movt	r3, #:upper16:101464	@ tmp462,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC34	@,
	b	.L982	@
.L941:
	movw	r2, #:lower16:114368	@ tmp503,
	movw	r5, #:lower16:101556	@ tmp505,
	movt	r2, #:upper16:114368	@ tmp503,
	movt	r5, #:upper16:101556	@ tmp505,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r4, r5]	@, <variable>.CodecInfo.CurFsID
	mov	r5, #0	@ tmp509,
	bl	FSP_ClearLogicFs	@
	movw	ip, #:lower16:101464	@ tmp508,
	movt	ip, #:upper16:101464	@ tmp508,
	mov	r0, r5	@, tmp509
	mov	r3, r6	@, pCur
	movw	r1, #:lower16:.LC35	@,
	ldr	lr, [r4, ip]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	movt	r1, #:upper16:.LC35	@,
	movw	r2, #2198	@,
	strb	r5, [lr, #0]	@ tmp509, <variable>.is_to_ref
	ldr	lr, [r4, ip]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	strb	r5, [lr, #1]	@ tmp509, <variable>.is_to_display
	stmia	sp, {r8, sl}	@ phole stm
	bl	dprint_vfmw	@
	movw	r0, #:lower16:78250	@ tmp516,
	movt	r0, #:upper16:78250	@ tmp516,
	ldrb	r1, [r4, r0]	@ zero_extendqisi2	@ <variable>.CodecInfo.PicCodingType, <variable>.CodecInfo.PicCodingType
	cmp	r1, #5	@ <variable>.CodecInfo.PicCodingType,
	beq	.L995	@,
.L949:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC36	@,
	movt	r1, #:upper16:.LC36	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.39601,
	b	.L922	@
.L993:
	movw	r3, #:lower16:101464	@ tmp600,
	movt	r3, #:upper16:101464	@ tmp600,
	movw	r6, #:lower16:88855	@ tmp605,
	movt	r6, #:upper16:88855	@ tmp605,
	ldr	r5, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	movw	r1, #:lower16:88863	@ tmp609,
	movt	r1, #:upper16:88863	@ tmp609,
	strb	r2, [r5, #1027]	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile, <variable>.PicStruct
	ldrb	ip, [r4, r6]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.PTYPE, <variable>.CodecInfo.SMPPicSyntax.PTYPE
	ldr	lr, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	strb	ip, [lr, #1028]	@ <variable>.CodecInfo.SMPPicSyntax.PTYPE, <variable>.PicCodingType
	ldrb	r1, [r4, r1]	@ zero_extendqisi2	@ D.39797, <variable>.CodecInfo.SMPPicSyntax.MVMODE
	ldr	ip, [r4, r3]	@ temp.2931, <variable>.CodecInfo.pCurFrm
	sub	r0, r1, #2	@ tmp610, D.39797,
	uxtb	r5, r0	@ tmp611, tmp610
	cmp	r5, #1	@ tmp611,
	movls	r2, #1	@ prephitmp.2816,
	bls	.L956	@,
	cmp	r1, #4	@ D.39797,
	beq	.L996	@,
.L956:
	movw	r6, #:lower16:101564	@ tmp620,
	movw	r1, #:lower16:101576	@ tmp622,
	movt	r6, #:upper16:101564	@ tmp620,
	movt	r1, #:upper16:101576	@ tmp622,
	movw	r5, #:lower16:81376	@ tmp626,
	movt	r5, #:upper16:81376	@ tmp626,
	movw	lr, #:lower16:113860	@ tmp625,
	movt	lr, #:upper16:113860	@ tmp625,
	strb	r2, [ip, #1029]	@ prephitmp.2816, <variable>.IsHalfPel
	mov	r0, #0	@ tmp623,
	strb	r2, [ip, #1030]	@ prephitmp.2816, <variable>.IsHalfPel
	mov	ip, #1	@ tmp621,
	str	ip, [r4, r6]	@ tmp621, <variable>.CodecInfo.SlcNum
	strb	r0, [r4, r1]	@ tmp623, <variable>.SlcNo
	ldr	r0, [r4, r5]	@, <variable>.CodecInfo.pBs
	ldr	r6, [r4, lr]	@ D.39805, <variable>.CodecInfo.stCurPacket.BsVirAddr
	bl	BsPos	@
	movw	r2, #:lower16:101568	@ tmp628,
	movt	r2, #:upper16:101568	@ tmp628,
	movw	ip, #:lower16:113872	@ tmp634,
	movt	ip, #:upper16:113872	@ tmp634,
	add	r3, r0, #7	@ tmp631, D.39807,
	cmp	r0, #0	@ D.39807,
	movlt	r0, r3	@ D.39807, tmp631
	add	r1, r6, r0, asr #3	@, tmp633, D.39805, D.39807,
	str	r1, [r4, r2]	@ tmp633, <variable>.pStream
	ldr	r0, [r4, r5]	@, <variable>.CodecInfo.pBs
	ldr	r6, [r4, ip]	@ D.39811, <variable>.CodecInfo.stCurPacket.BsPhyAddr
	bl	BsPos	@
	movw	ip, #:lower16:101580	@ tmp637,
	movt	ip, #:upper16:101580	@ tmp637,
	add	r3, r0, #7	@ tmp640, D.39812,
	cmp	r0, #0	@ D.39812,
	movlt	r0, r3	@ D.39812, tmp640
	add	r1, r6, r0, asr #3	@, tmp642, D.39811, D.39812,
	str	r1, [r4, ip]	@ tmp642, <variable>.Phy_addr
	ldr	r0, [r4, r5]	@, <variable>.CodecInfo.pBs
	bl	BsPos	@
	movw	r2, #:lower16:101584	@ tmp645,
	movt	r2, #:upper16:101584	@ tmp645,
	movw	r3, #:lower16:113880	@ tmp647,
	movt	r3, #:upper16:113880	@ tmp647,
	and	r0, r0, #7	@ tmp646,,
	str	r0, [r4, r2]	@ tmp646, <variable>.BitOffset
	ldr	r0, [r4, r5]	@, <variable>.CodecInfo.pBs
	ldr	r6, [r4, r3]	@ <variable>.CodecInfo.stCurPacket.BsLength, <variable>.CodecInfo.stCurPacket.BsLength
	bl	BsPos	@
	movw	lr, #:lower16:101588	@ tmp651,
	movw	ip, #:lower16:113924	@ tmp654,
	movt	lr, #:upper16:101588	@ tmp651,
	movt	ip, #:upper16:113924	@ tmp654,
	movw	r3, #:lower16:113920	@ tmp655,
	movt	r3, #:upper16:113920	@ tmp655,
	mov	r5, r6, asl #3	@ D.39819, <variable>.CodecInfo.stCurPacket.BsLength,
	movw	r2, #:lower16:101592	@ tmp653,
	movw	r6, #:lower16:78250	@ tmp660,
	movt	r2, #:upper16:101592	@ tmp653,
	movt	r6, #:upper16:78250	@ tmp660,
	rsb	r1, r0, r5	@ tmp652,, D.39819
	str	r1, [r4, lr]	@ tmp652, <variable>.Len
	ldr	r1, [r4, r3]	@ <variable>.CodecInfo.CurPicMbWidth, <variable>.CodecInfo.CurPicMbWidth
	ldr	r0, [r4, ip]	@ <variable>.CodecInfo.CurPicMbHeight, <variable>.CodecInfo.CurPicMbHeight
	mul	ip, r1, r0	@ tmp656, <variable>.CodecInfo.CurPicMbWidth, <variable>.CodecInfo.CurPicMbHeight
	sub	lr, ip, #1	@ tmp659, tmp656,
	str	lr, [r4, r2]	@ tmp659, <variable>.SlcEndMbn
	ldrb	r1, [r4, r6]	@ zero_extendqisi2	@ prephitmp.2947, <variable>.CodecInfo.PicCodingType
.L958:
	add	r2, r4, #77824	@, pVC1_CTX_S,
	mov	r3, #1	@,
	add	r0, r2, #424	@,,
	mov	r2, #0	@,
	bl	VC1_Vfmw_BuildRefList	@
	subs	r6, r0, #0	@ D.39877,
	movne	r0, #1	@ D.39601,
	bne	.L922	@,
	movw	r1, #:lower16:114368	@ tmp737,
	movw	ip, #:lower16:101556	@ tmp739,
	movt	r1, #:upper16:114368	@ tmp737,
	movt	ip, #:upper16:101556	@ tmp739,
	mov	r2, #1	@,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	ldr	r1, [r4, ip]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_ClearLogicFs	@
	movw	r3, #:lower16:101464	@ tmp742,
	movw	r1, #:lower16:.LC38	@,
	movt	r3, #:upper16:101464	@ tmp742,
	movt	r1, #:upper16:.LC38	@,
	mov	r0, #1	@,
.L982:
	ldr	r2, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	strb	r6, [r2, #0]	@ D.39877, <variable>.is_to_ref
	ldr	lr, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	strb	r6, [lr, #1]	@ D.39877, <variable>.is_to_display
	bl	dprint_vfmw	@
	mov	r0, r6	@ D.39601, D.39877
	b	.L922	@
.L991:
	movw	ip, #:lower16:88996	@ tmp524,
	movt	ip, #:upper16:88996	@ tmp524,
	ldr	r0, [r4, ip]	@ <variable>.CodecInfo.AdvPicSyntax.FCM, <variable>.CodecInfo.AdvPicSyntax.FCM
	cmp	r0, #3	@ <variable>.CodecInfo.AdvPicSyntax.FCM,
	bne	.L944	@,
	movw	lr, #:lower16:USE_FF_APT_EN	@ tmp526,
	movt	lr, #:upper16:USE_FF_APT_EN	@ tmp526,
	ldr	r3, [lr, #0]	@ USE_FF_APT_EN, USE_FF_APT_EN
	cmp	r3, #1	@ USE_FF_APT_EN,
	bne	.L944	@,
	b	.L980	@
.L988:
	ldr	r0, [fp, #-52]	@, %sfp
	bl	ResetVoQueue	@
	ldr	r3, [r4, #0]	@ D.39646, <variable>.pstExtraData
	movw	ip, #:lower16:78080	@ tmp344,
	movt	ip, #:upper16:78080	@ tmp344,
	movw	r2, #:lower16:78084	@ tmp345,
	movt	r2, #:upper16:78084	@ tmp345,
	ldr	r1, [r3, #744]	@ <variable>.stChanOption.s32MaxWidth, <variable>.stChanOption.s32MaxWidth
	mov	r0, r4	@, pVC1_CTX_S
	ldr	r8, [r3, #748]	@ <variable>.stChanOption.s32MaxHeight, <variable>.stChanOption.s32MaxHeight
	mov	r3, #2	@,
	adds	lr, r1, #15	@ tmp334, <variable>.stChanOption.s32MaxWidth,
	addmi	lr, r1, #30	@, tmp336, <variable>.stChanOption.s32MaxWidth,
	adds	r1, r8, #15	@ tmp339, <variable>.stChanOption.s32MaxHeight,
	addmi	r8, r8, #30	@, tmp341, <variable>.stChanOption.s32MaxHeight,
	movpl	r8, r1	@, tmp341, tmp339
	mov	r1, lr, asr #4	@ tmp338, tmp336,
	str	r1, [r4, ip]	@ tmp338, <variable>.Vc1DecParam.ChanMaxWidthInMb
	mov	r8, r8, asr #4	@ tmp343, tmp341,
	str	r8, [r4, r2]	@ tmp343, <variable>.Vc1DecParam.ChanMaxHeightInMb
	add	lr, r8, #1	@ tmp347, tmp343,
	mov	r1, r1, asl #4	@, tmp338,
	add	ip, lr, lr, lsr #31	@, tmp350, tmp347, tmp347,
	mov	r2, ip, asr #1	@ tmp351, tmp350,
	mov	r2, r2, asl #5	@, tmp351,
	bl	VC1_ArrangeVahbMem	@
	cmp	r0, #1	@,
	bne	.L929	@,
	ldr	r0, [fp, #-48]	@, %sfp
	ldrb	r2, [r4, r0]	@ zero_extendqisi2	@ <variable>.CodecInfo.CodecStatus, <variable>.CodecInfo.CodecStatus
	orr	r6, r2, #8	@ tmp357, <variable>.CodecInfo.CodecStatus,
	strb	r6, [r4, r0]	@ tmp357, <variable>.CodecInfo.CodecStatus
	b	.L927	@
.L995:
	movw	r3, #:lower16:113940	@ tmp518,
	movt	r3, #:upper16:113940	@ tmp518,
	ldr	r2, [r4, r3]	@ temp.2925, <variable>.CodecInfo.skpic_flag
	cmp	r2, r5	@ temp.2925,
	ble	.L949	@,
.L983:
	sub	r0, r2, #1	@ tmp570, temp.2919,
	str	r0, [r4, r3]	@ tmp570, <variable>.CodecInfo.skpic_flag
	b	.L949	@
.L947:
	movw	r7, #:lower16:114368	@ tmp544,
	movw	r5, #:lower16:101556	@ tmp546,
	movt	r7, #:upper16:114368	@ tmp544,
	movt	r5, #:upper16:101556	@ tmp546,
	mov	r2, #1	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, r5]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_ClearLogicFs	@
	movw	r3, #:lower16:101464	@ tmp549,
	movt	r3, #:upper16:101464	@ tmp549,
	mov	lr, #0	@ tmp550,
	movw	ip, #:lower16:101552	@ tmp561,
	movt	ip, #:upper16:101552	@ tmp561,
	ldr	r7, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	movw	r2, #:lower16:101548	@ tmp557,
	movt	r2, #:upper16:101548	@ tmp557,
	mov	r0, lr	@, tmp550
	movw	r1, #:lower16:.LC37	@,
	movt	r1, #:upper16:.LC37	@,
	strb	lr, [r7, #0]	@ tmp550, <variable>.is_to_ref
	ldr	r3, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	strb	lr, [r3, #1]	@ tmp550, <variable>.is_to_display
	ldr	ip, [r4, ip]	@ <variable>.CodecInfo.BwdFsID, <variable>.CodecInfo.BwdFsID
	ldr	r3, [r4, r5]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
	ldr	r2, [r4, r2]	@ <variable>.CodecInfo.FwdFsID, <variable>.CodecInfo.FwdFsID
	str	ip, [sp, #0]	@ <variable>.CodecInfo.BwdFsID,
	ldr	lr, [r6, #520]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	str	lr, [sp, #4]	@ <variable>.pstDecodeFs,
	ldr	ip, [r6, #528]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	str	ip, [sp, #8]	@ <variable>.pstTfOutFs,
	ldr	lr, [r6, #524]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	str	lr, [sp, #12]	@ <variable>.pstDispOutFs,
	bl	dprint_vfmw	@
	movw	r1, #:lower16:78250	@ tmp566,
	movt	r1, #:upper16:78250	@ tmp566,
	ldrb	r3, [r4, r1]	@ zero_extendqisi2	@ <variable>.CodecInfo.PicCodingType, <variable>.CodecInfo.PicCodingType
	cmp	r3, #5	@ <variable>.CodecInfo.PicCodingType,
	bne	.L949	@,
	movw	r3, #:lower16:113940	@ tmp568,
	movt	r3, #:upper16:113940	@ tmp568,
	ldr	r2, [r4, r3]	@ temp.2919, <variable>.CodecInfo.skpic_flag
	cmp	r2, #0	@ temp.2919,
	bgt	.L983	@,
	b	.L949	@
.L992:
	ldr	r0, [r8, #156]	@ <variable>.stDispImg.is_fld_save, <variable>.stDispImg.is_fld_save
	movw	r1, #:lower16:101472	@ tmp536,
	movt	r1, #:upper16:101472	@ tmp536,
	movw	lr, #:lower16:101464	@ tmp534,
	movt	lr, #:upper16:101464	@ tmp534,
	movw	ip, #:lower16:113940	@ tmp538,
	str	r0, [r6, #156]	@ <variable>.stDispImg.is_fld_save, <variable>.stDispImg.is_fld_save
	movt	ip, #:upper16:113940	@ tmp538,
	ldr	r3, [r4, r1]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r2, [r4, lr]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	ldr	lr, [r3, #1180]	@ <variable>.img.is_fld_save, <variable>.img.is_fld_save
	str	lr, [r2, #1180]	@ <variable>.img.is_fld_save, <variable>.img.is_fld_save
	ldr	r0, [r4, ip]	@ <variable>.CodecInfo.skpic_flag, <variable>.CodecInfo.skpic_flag
	add	r1, r0, #1	@ tmp541, <variable>.CodecInfo.skpic_flag,
	str	r1, [r4, ip]	@ tmp541, <variable>.CodecInfo.skpic_flag
	b	.L946	@
.L990:
	movw	ip, #:lower16:USE_FF_APT_EN	@ tmp394,
	movt	ip, #:upper16:USE_FF_APT_EN	@ tmp394,
	ldr	r3, [ip, #0]	@ USE_FF_APT_EN, USE_FF_APT_EN
	cmp	r3, #1	@ USE_FF_APT_EN,
	bne	.L932	@,
	movw	r6, #:lower16:101464	@ tmp397,
	movt	r6, #:upper16:101464	@ tmp397,
	ldr	lr, [r4, r6]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	str	r3, [lr, #1180]	@ USE_FF_APT_EN, <variable>.img.is_fld_save
	b	.L933	@
.L929:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC30	@,
	movt	r1, #:upper16:.LC30	@,
	bl	dprint_vfmw	@
	ldr	ip, [fp, #-48]	@, %sfp
	mov	r0, r6	@ D.39601, tmp333
	ldrb	r3, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.CodecStatus, <variable>.CodecInfo.CodecStatus
	bic	r1, r3, #8	@ tmp364, <variable>.CodecInfo.CodecStatus,
	strb	r1, [r4, ip]	@ tmp364, <variable>.CodecInfo.CodecStatus
	b	.L922	@
.L996:
	movw	r3, #:lower16:88864	@ tmp612,
	movt	r3, #:upper16:88864	@ tmp612,
	ldrb	r1, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.MVMODE2, <variable>.CodecInfo.SMPPicSyntax.MVMODE2
	sub	r0, r1, #2	@ tmp615, <variable>.CodecInfo.SMPPicSyntax.MVMODE2,
	uxtb	r2, r0	@ tmp616, tmp615
	cmp	r2, #1	@ tmp616,
	movhi	r2, #0	@, prephitmp.2816
	movls	r2, #1	@, prephitmp.2816
	b	.L956	@
.L994:
	movw	r2, #:lower16:88967	@ tmp676,
	movt	r2, #:upper16:88967	@ tmp676,
	ldrb	r6, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.MVMODE2, <variable>.CodecInfo.AdvPicSyntax.MVMODE2
	sub	ip, r6, #2	@ tmp679, <variable>.CodecInfo.AdvPicSyntax.MVMODE2,
	uxtb	r1, ip	@ tmp680, tmp679
	cmp	r1, #1	@ tmp680,
	movhi	r1, #0	@, prephitmp.2810
	movls	r1, #1	@, prephitmp.2810
	b	.L960	@
	.fnend
	.size	VC1_Vfmw_GetStreamInfo, .-VC1_Vfmw_GetStreamInfo
	.align	2
	.global	VC1_Vfmw_PrepareDecode
	.type	VC1_Vfmw_PrepareDecode, %function
VC1_Vfmw_PrepareDecode:
	.fnstart
.LFB1547:
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
	bl	VC1_Vfmw_GetStreamInfo	@
	subs	r4, r0, #0	@ D.39884,
	movne	r0, #1	@ D.39888,
	ldmnefd	sp, {r3, r4, fp, sp, pc}	@
	movw	r1, #:lower16:.LC39	@,
	movt	r1, #:upper16:.LC39	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.39888, D.39884
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	VC1_Vfmw_PrepareDecode, .-VC1_Vfmw_PrepareDecode
	.align	2
	.global	VC1DEC_Decode
	.type	VC1DEC_Decode, %function
VC1DEC_Decode:
	.fnstart
.LFB1538:
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
	mov	r5, r0	@ pVC1_CTX_S, pVC1_CTX_S
	add	r0, r0, #77824	@ D.39126, pVC1_CTX_S,
	mov	r2, #160	@,
	add	r4, r0, #264	@ D.39126, D.39126,
	mov	r0, r4	@, D.39126
	bl	memcpy	@
	mov	r1, r4	@, D.39126
	mov	r0, r5	@, pVC1_CTX_S
	bl	VC1_ReceivePacket	@
	subs	r4, r0, #0	@ D.39127,
	beq	.L1012	@,
	ldr	r3, [r5, #0]	@ D.39135, <variable>.pstExtraData
	ldr	r2, [r3, #864]	@ <variable>.stChanOption.u32DynamicFrameStoreAllocEn, <variable>.stChanOption.u32DynamicFrameStoreAllocEn
	cmp	r2, #1	@ <variable>.stChanOption.u32DynamicFrameStoreAllocEn,
	beq	.L1013	@,
.L1004:
	movw	r0, #:lower16:78248	@ tmp163,
	movt	r0, #:upper16:78248	@ tmp163,
	movw	r4, #:lower16:113976	@ tmp162,
	movt	r4, #:upper16:113976	@ tmp162,
	ldrb	lr, [r5, r0]	@ zero_extendqisi2	@ <variable>.CodecInfo.CodecStatus,
	strb	lr, [r5, r4]	@ <variable>.CodecInfo.CodecStatus,
.L1005:
	add	r2, r5, #77824	@ D.39142, pVC1_CTX_S,
	movw	r6, #:lower16:114368	@ tmp169,
	add	r7, r2, #424	@ D.39142, D.39142,
	movt	r6, #:upper16:114368	@ tmp169,
	add	r3, r5, #80896	@, pVC1_CTX_S,
	add	r1, r3, #516	@,,
	mov	r0, r7	@, D.39142
	ldr	r2, [r5, r6]	@, <variable>.ChanID
	bl	VC1_Vfmw_ParseHeader	@
	subs	r4, r0, #0	@ Ret,
	bne	.L1006	@,
	add	ip, r5, #113664	@, pVC1_CTX_S,
	ldr	r0, [r5, r6]	@, <variable>.ChanID
	add	r1, ip, #196	@,,
	bl	VC1_ClearCurPacket	@
	movw	r1, #:lower16:g_event_report	@ tmp175,
	movt	r1, #:upper16:g_event_report	@ tmp175,
	ldr	ip, [r1, #0]	@ g_event_report.464, g_event_report
	cmp	ip, #0	@ g_event_report.464,
	beq	.L1003	@,
	ldr	r0, [r5, r6]	@, <variable>.ChanID
	mov	r1, #113	@,
	mov	r2, r4	@, Ret
	mov	r3, r4	@, Ret
	blx	ip	@ g_event_report.464
.L1003:
	mov	r0, r4	@, Ret
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L1006:
	mov	r0, r5	@, pVC1_CTX_S
	bl	VC1_Vfmw_DecodeArbiter	@
	cmp	r0, #0	@,
	bne	.L1014	@,
.L1007:
	mov	r4, #0	@ Ret,
	mov	r0, r4	@, Ret
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L1013:
	ldr	r1, [r3, #904]	@ <variable>.s32WaitFsFlag, <variable>.s32WaitFsFlag
	cmp	r1, #1	@ <variable>.s32WaitFsFlag,
	bne	.L1004	@,
	movw	ip, #:lower16:113976	@ tmp159,
	movt	ip, #:upper16:113976	@ tmp159,
	movw	r7, #:lower16:78248	@ tmp158,
	movt	r7, #:upper16:78248	@ tmp158,
	ldrb	r6, [r5, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.u8LastCodecStatus,
	strb	r6, [r5, r7]	@ <variable>.CodecInfo.u8LastCodecStatus,
	b	.L1005	@
.L1012:
	movw	r3, #:lower16:113856	@ tmp154,
	movt	r3, #:upper16:113856	@ tmp154,
	movw	r1, #:lower16:.LC40	@,
	movt	r1, #:upper16:.LC40	@,
	ldr	r2, [r5, r3]	@, <variable>.CodecInfo.PicCnt
	bl	dprint_vfmw	@
	mov	r0, r4	@, Ret
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L1014:
	mov	r0, r5	@, pVC1_CTX_S
	bl	VC1_Vfmw_PrepareDecode	@
	cmp	r0, #0	@,
	bne	.L1008	@,
	ldr	r3, [r5, #0]	@ temp.2996, <variable>.pstExtraData
	ldr	lr, [r3, #864]	@ <variable>.stChanOption.u32DynamicFrameStoreAllocEn, <variable>.stChanOption.u32DynamicFrameStoreAllocEn
	cmp	lr, #1	@ <variable>.stChanOption.u32DynamicFrameStoreAllocEn,
	beq	.L1015	@,
.L1009:
	movw	r3, #:lower16:114368	@ tmp180,
	movt	r3, #:upper16:114368	@ tmp180,
	mov	r0, r7	@, D.39142
	ldr	r1, [r5, r3]	@, <variable>.ChanID
	bl	VC1_ClearCurPic	@
.L1010:
	movw	r0, #:lower16:g_event_report	@ tmp182,
	movt	r0, #:upper16:g_event_report	@ tmp182,
	ldr	ip, [r0, #0]	@ g_event_report.3000, g_event_report
	cmp	ip, #0	@ g_event_report.3000,
	beq	.L1007	@,
	movw	lr, #:lower16:114368	@ tmp183,
	movt	lr, #:upper16:114368	@ tmp183,
	mov	r2, #0	@,
	mov	r1, #113	@,
	ldr	r0, [r5, lr]	@, <variable>.ChanID
	mov	r3, r2	@,
	blx	ip	@ g_event_report.3000
	mov	r4, #0	@ Ret,
	b	.L1003	@
.L1015:
	ldr	r4, [r3, #904]	@ <variable>.s32WaitFsFlag, <variable>.s32WaitFsFlag
	cmp	r4, #1	@ <variable>.s32WaitFsFlag,
	bne	.L1009	@,
	b	.L1010	@
.L1008:
	mov	r0, r5	@, pVC1_CTX_S
	bl	VC1_Vfmw_StartDecode	@
	subs	r7, r0, #0	@ D.39164,
	bne	.L1003	@,
	movw	r3, #:lower16:101556	@ tmp187,
	movt	r3, #:upper16:101556	@ tmp187,
	mov	r2, #1	@,
	ldr	r0, [r5, r6]	@, <variable>.ChanID
	ldr	r1, [r5, r3]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_ClearLogicFs	@
	movw	ip, #:lower16:101464	@ tmp190,
	movt	ip, #:upper16:101464	@ tmp190,
	movw	r2, #:lower16:g_event_report	@ tmp197,
	movt	r2, #:upper16:g_event_report	@ tmp197,
	ldr	r4, [r5, ip]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	strb	r7, [r4, #0]	@ D.39164, <variable>.is_to_ref
	ldr	r1, [r5, ip]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	strb	r7, [r1, #1]	@ D.39164, <variable>.is_to_display
	ldr	ip, [r2, #0]	@ g_event_report.3004, g_event_report
	cmp	ip, #0	@ g_event_report.3004,
	beq	.L1007	@,
	ldr	r0, [r5, r6]	@, <variable>.ChanID
	mov	r1, #113	@,
	mov	r2, r7	@, D.39164
	mov	r3, r7	@, D.39164
	blx	ip	@ g_event_report.3004
	mov	r4, r7	@ Ret, D.39164
	b	.L1003	@
	.fnend
	.size	VC1DEC_Decode, .-VC1DEC_Decode
	.align	2
	.global	VC1DEC_RecycleImage
	.type	VC1DEC_RecycleImage, %function
VC1DEC_RecycleImage:
	.fnstart
.LFB1535:
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
	moveq	r0, r5	@ D.38912, pCtx
	ldmeqfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	movw	r4, #:lower16:114368	@ tmp139,
	movt	r4, #:upper16:114368	@ tmp139,
	mov	r2, #0	@,
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	bl	FSP_SetDisplay	@
	mov	r1, r6	@, img_id
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImg,
	moveq	r0, #1	@ D.38912,
	ldmeqfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	mov	r7, #0	@ tmp146,
	ldr	r1, [r6, #212]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r7, [r6, #212]	@ tmp146, <variable>.p_usrdat
	ldr	r1, [r6, #216]	@, <variable>.p_usrdat
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r0, #1	@ D.38912,
	str	r7, [r6, #216]	@ tmp146, <variable>.p_usrdat
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	VC1DEC_RecycleImage, .-VC1DEC_RecycleImage
	.align	2
	.global	VC1_SetImgFormat
	.type	VC1_SetImgFormat, %function
VC1_SetImgFormat:
	.fnstart
.LFB1532:
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
	movw	r2, #:lower16:114368	@ tmp144,
	movw	r3, #:lower16:101556	@ tmp146,
	movt	r2, #:upper16:114368	@ tmp144,
	movt	r3, #:upper16:101556	@ tmp146,
	mov	r5, r0	@ pCtx, pCtx
	ldr	r0, [r0, r2]	@, <variable>.ChanID
	ldr	r1, [r5, r3]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pImg,
	ldmeqfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	movw	r0, #:lower16:78251	@ tmp149,
	movt	r0, #:upper16:78251	@ tmp149,
	mov	r1, #1	@ tmp148,
	str	r1, [r4, #384]	@ tmp148, <variable>.ImageDnr.video_standard
	ldrsb	r3, [r5, r0]	@ <variable>.CodecInfo.Last_Struct_IPB, <variable>.CodecInfo.Last_Struct_IPB
	cmp	r3, #3	@ <variable>.CodecInfo.Last_Struct_IPB,
	movne	r3, #0	@ tmp159,
	strneb	r3, [r4, #372]	@ tmp159, <variable>.ImageDnr.pic_structure
	movne	r3, #7168	@ tmp161,
	beq	.L1029	@,
.L1028:
	movw	r7, #:lower16:101500	@ tmp162,
	movt	r7, #:upper16:101500	@ tmp162,
	str	r3, [r4, #160]	@ tmp161, <variable>.format
	movw	r6, #:lower16:101496	@ tmp164,
	ldr	r2, [r5, r7]	@ <variable>.CodecInfo.DispPicHeight, <variable>.CodecInfo.DispPicHeight
	movt	r6, #:upper16:101496	@ tmp164,
	mov	r0, r4	@, pImg
	mov	r1, #0	@,
	str	r2, [r4, #168]	@ <variable>.CodecInfo.DispPicHeight, <variable>.image_height
	ldr	lr, [r5, r6]	@ <variable>.CodecInfo.DispPicWidth, <variable>.CodecInfo.DispPicWidth
	str	lr, [r4, #164]	@ <variable>.CodecInfo.DispPicWidth, <variable>.image_width
	bl	SetAspectRatio	@
	movw	r3, #:lower16:78052	@ tmp166,
	movt	r3, #:upper16:78052	@ tmp166,
	ldr	r2, [r4, #104]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	ldr	ip, [r4, #32]	@ <variable>.luma_vir_addr, <variable>.luma_vir_addr
	ldr	r0, [r5, r3]	@ ChromOfst, <variable>.Vc1DecParam.uvoffset_1d
	ldr	r1, [r4, #192]	@ Stride, <variable>.image_stride
	add	r3, r2, r0	@ tmp168, <variable>.luma_phy_addr, ChromOfst
	str	ip, [r4, #48]	@ <variable>.luma_vir_addr, <variable>.luma_2d_vir_addr
	add	r0, ip, r0	@ tmp170, <variable>.luma_vir_addr, ChromOfst
	str	r2, [r4, #120]	@ <variable>.luma_phy_addr, <variable>.luma_2d_phy_addr
	add	ip, r2, r1	@ tmp171, <variable>.luma_phy_addr, Stride
	str	r0, [r4, #36]	@ tmp170, <variable>.chrom_vir_addr
	str	r3, [r4, #108]	@ tmp168, <variable>.chrom_phy_addr
	add	r0, r3, r1	@ tmp172, tmp168, Stride
	str	ip, [r4, #96]	@ tmp171, <variable>.btm_luma_phy_addr
	str	r0, [r4, #100]	@ tmp172, <variable>.btm_chrom_phy_addr
	mov	r0, r3	@, tmp168
	str	r2, [r4, #88]	@ <variable>.luma_phy_addr, <variable>.top_luma_phy_addr
	str	r3, [r4, #92]	@ tmp168, <variable>.top_chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r2, [r4, #92]	@ <variable>.top_chrom_phy_addr, <variable>.top_chrom_phy_addr
	mov	ip, #8	@ tmp182,
	mov	r3, #1	@ tmp180,
	str	r2, [r4, #124]	@ <variable>.top_chrom_phy_addr, <variable>.chrom_2d_phy_addr
	str	r0, [r4, #52]	@, <variable>.chrom_2d_vir_addr
	ldr	r1, [r5, r7]	@ <variable>.CodecInfo.DispPicHeight, <variable>.CodecInfo.DispPicHeight
	str	r1, [r4, #176]	@ <variable>.CodecInfo.DispPicHeight, <variable>.disp_height
	ldr	r0, [r5, r6]	@ <variable>.CodecInfo.DispPicWidth, <variable>.CodecInfo.DispPicWidth
	strb	r3, [r4, #377]	@ tmp180, <variable>.ImageDnr.chroma_format_idc
	str	ip, [r4, #392]	@ tmp182, <variable>.ImageDnr.QP_U
	str	r0, [r4, #172]	@ <variable>.CodecInfo.DispPicWidth, <variable>.disp_width
	strb	r3, [r4, #379]	@ tmp180, <variable>.ImageDnr.use_pic_qp_en
	str	ip, [r4, #388]	@ tmp182, <variable>.ImageDnr.QP_Y
	str	ip, [r4, #396]	@ tmp182, <variable>.ImageDnr.QP_V
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L1029:
	mov	r2, #4	@ tmp151,
	strb	r2, [r4, #372]	@ tmp151, <variable>.ImageDnr.pic_structure
	ldr	r3, [r5, #4]	@ <variable>.pVc1DecParam, <variable>.pVc1DecParam
	ldr	lr, [r4, #160]	@ <variable>.format, <variable>.format
	ldrb	ip, [r3, #8]	@ zero_extendqisi2	@ <variable>.curparity, <variable>.curparity
	ubfx	r7, lr, #10, #2	@ fldflg, <variable>.format,,
	add	r6, ip, #1	@ tmp157, <variable>.curparity,
	orr	r3, r6, r7	@ fldflg.3061, tmp157, fldflg
	cmp	r3, #3	@ fldflg.3061,
	movls	r3, r3, asl #10	@ tmp158, fldflg.3061,
	movhi	r3, #4352	@ prephitmp.3050,
	orrls	r3, r3, #4352	@ prephitmp.3050, tmp158,
	b	.L1028	@
	.fnend
	.size	VC1_SetImgFormat, .-VC1_SetImgFormat
	.align	2
	.global	VC1DEC_VDMPostProc
	.type	VC1DEC_VDMPostProc, %function
VC1DEC_VDMPostProc:
	.fnstart
.LFB1536:
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
	movw	r6, #:lower16:114368	@ tmp155,
	movt	r6, #:upper16:114368	@ tmp155,
	mov	r4, r0	@ pCtx, pCtx
	movw	r5, #:lower16:101556	@ tmp159,
	add	r0, r0, #77824	@, pCtx,
	movt	r5, #:upper16:101556	@ tmp159,
	add	r0, r0, #424	@,,
	mov	r7, r1	@ ErrRatio, ErrRatio
	ldr	r1, [r4, r6]	@, <variable>.ChanID
	bl	VC1_ClearCurPic	@
	ldr	r1, [r4, r5]	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	movw	r2, #:lower16:101552	@ tmp163,
	movt	r2, #:upper16:101552	@ tmp163,
	ldr	r1, [r4, r2]	@, <variable>.CodecInfo.BwdFsID
	mov	r5, r0	@ pCurImg,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	movw	r3, #:lower16:101548	@ tmp167,
	movt	r3, #:upper16:101548	@ tmp167,
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.FwdFsID
	mov	sl, r0	@ pBwdImg,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	cmp	r5, #0	@ pCurImg,
	mov	ip, r0	@ pFwdImg,
	beq	.L1053	@,
	cmp	r7, #0	@ ErrRatio,
	movlt	r7, #0	@ iftmp.455,
	blt	.L1034	@,
	cmp	r7, #100	@ ErrRatio,
	movge	r7, #100	@ iftmp.455,
.L1034:
	str	r7, [r5, #200]	@ iftmp.455, <variable>.error_level
	mov	r0, r4	@, pCtx
	bl	VC1_SetImgFormat	@
	movw	ip, #:lower16:78251	@ tmp170,
	movt	ip, #:upper16:78251	@ tmp170,
	ldrsb	r1, [r4, ip]	@ <variable>.CodecInfo.Last_Struct_IPB, <variable>.CodecInfo.Last_Struct_IPB
	cmp	r1, #3	@ <variable>.CodecInfo.Last_Struct_IPB,
	beq	.L1054	@,
.L1035:
	mov	r8, #0	@ tmp174,
	str	r8, [r5, #212]	@ tmp174, <variable>.p_usrdat
	str	r8, [r5, #216]	@ tmp174, <variable>.p_usrdat
	ldr	r0, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r0, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r2, #1	@ <variable>.s32DecOrderOutput,
	beq	.L1037	@,
	movw	ip, #:lower16:78250	@ tmp178,
	movt	ip, #:upper16:78250	@ tmp178,
	ldrb	r1, [r4, ip]	@ zero_extendqisi2	@ D.38959, <variable>.CodecInfo.PicCodingType
	cmp	r1, #4	@ D.38959,
	cmpne	r1, #2	@, D.38959,
	moveq	r3, #0	@, tmp185
	movne	r3, #1	@, tmp185
	beq	.L1038	@,
	movw	lr, #:lower16:101544	@ tmp186,
	movt	lr, #:upper16:101544	@ tmp186,
	ldr	r5, [r4, lr]	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r5, #1	@ <variable>.CodecInfo.RefNum,
	bls	.L1039	@,
	movw	r8, #:lower16:101548	@ tmp189,
	movt	r8, #:upper16:101548	@ tmp189,
	movw	r3, #:lower16:101560	@ tmp188,
	movt	r3, #:upper16:101560	@ tmp188,
	ldr	r2, [r4, r8]	@ <variable>.CodecInfo.FwdFsID, <variable>.CodecInfo.FwdFsID
	mov	r8, #1	@ pref,
	str	r2, [r4, r3]	@ <variable>.CodecInfo.FwdFsID, <variable>.CodecInfo.ToQueFsID
.L1040:
	movw	r5, #:lower16:101560	@ tmp201,
	movt	r5, #:upper16:101560	@ tmp201,
	movw	r3, #:lower16:113856	@ tmp197,
	movt	r3, #:upper16:113856	@ tmp197,
	ldr	r1, [r4, r5]	@ D.38984, <variable>.CodecInfo.ToQueFsID
	ldr	ip, [r4, r3]	@ <variable>.CodecInfo.PicCnt, <variable>.CodecInfo.PicCnt
	cmn	r1, #1	@ D.38984,
	add	r0, ip, #1	@ tmp200, <variable>.CodecInfo.PicCnt,
	str	r0, [r4, r3]	@ tmp200, <variable>.CodecInfo.PicCnt
	beq	.L1036	@,
	movw	r7, #:lower16:114368	@ tmp202,
	movt	r7, #:upper16:114368	@ tmp202,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pToQueImg,
	beq	.L1055	@,
	ldr	r2, [r6, #200]	@ D.38994, <variable>.error_level
	cmp	r2, #0	@ D.38994,
	beq	.L1043	@,
	ldr	sl, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [sl, #4]	@ D.38996, <variable>.s32OutErrThr
	cmp	r2, r3	@ D.38994, D.38996
	bhi	.L1044	@,
.L1043:
	movw	r7, #:lower16:101560	@ tmp206,
	movt	r7, #:upper16:101560	@ tmp206,
	movw	r5, #:lower16:114368	@ tmp207,
	movt	r5, #:upper16:114368	@ tmp207,
	ldr	sl, [r4, r7]	@ temp.3116, <variable>.CodecInfo.ToQueFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r1, sl	@, temp.3116
	bl	FSP_GetRef	@
	mov	r2, sl	@, temp.3116
	movw	r1, #:lower16:.LC43	@,
	movt	r1, #:upper16:.LC43	@,
	mov	r3, r0	@ D.38999,
	mov	r0, #12	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.ToQueFsID
	mov	r2, #1	@,
	bl	FSP_SetDisplay	@
	cmp	r8, #1	@ pref,
	beq	.L1056	@,
	movw	r1, #:lower16:101464	@ tmp222,
	movt	r1, #:upper16:101464	@ tmp222,
	movw	r3, #:lower16:78249	@ tmp225,
	movt	r3, #:upper16:78249	@ tmp225,
	ldr	r5, [r4, r1]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	mov	ip, #1	@ tmp223,
	mov	r0, #2	@ tmp226,
	strb	ip, [r5, #1]	@ tmp223, <variable>.is_to_display
	strb	r0, [r4, r3]	@ tmp226, <variable>.CodecInfo.RefId
.L1046:
	movw	r5, #:lower16:114368	@ tmp228,
	movt	r5, #:upper16:114368	@ tmp228,
	add	lr, r4, #113664	@, pCtx,
	mov	r1, #1	@,
	ldr	r0, [r4, r5]	@ <variable>.ChanID, <variable>.ChanID
	add	r3, lr, #352	@,,
	mov	r2, r4	@, pCtx
	str	r6, [sp, #0]	@ pToQueImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@ D.39006,
	beq	.L1047	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r7, #0	@ tmp235,
	ldr	r1, [r6, #212]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r7, [r6, #212]	@ tmp235, <variable>.p_usrdat
	ldr	r1, [r6, #216]	@, <variable>.p_usrdat
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	movw	r3, #:lower16:101560	@ tmp242,
	movt	r3, #:upper16:101560	@ tmp242,
	str	r7, [r6, #216]	@ tmp235, <variable>.p_usrdat
	mov	r2, r7	@, tmp235
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.ToQueFsID
	bl	FSP_SetDisplay	@
	cmp	r8, #1	@ pref,
	mov	r0, r7	@ D.38941, tmp235
	movweq	r3, #:lower16:101472	@ tmp245,
	movwne	r3, #:lower16:101464	@ tmp249,
	movteq	r3, #:upper16:101472	@ tmp245,
	movtne	r3, #:upper16:101464	@ tmp249,
	ldr	r2, [r4, r3]	@ <variable>.CodecInfo.pCurFrm,
	strb	r7, [r2, #1]	@ tmp235, <variable>.is_to_display
	b	.L1032	@
.L1038:
	movw	r1, #:lower16:101556	@ tmp192,
	movt	r1, #:upper16:101556	@ tmp192,
	movw	ip, #:lower16:101560	@ tmp191,
	cmp	sl, #0	@ pBwdImg,
	ldr	r0, [r4, r1]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
	movt	ip, #:upper16:101560	@ tmp191,
	str	r0, [r4, ip]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.ToQueFsID
	beq	.L1041	@,
	ldrd	r6, [sl, #8]	@ D.38975, pBwdImg,
	ldrd	r0, [r5, #8]	@ D.38977, pCurImg,
	cmp	r6, r0	@ D.38975, D.38977
	sbcs	r2, r7, r1	@, D.38975, D.38977
	bge	.L1041	@,
	strd	r6, [r5, #8]	@ D.38975, pCurImg,
	mov	r8, r3	@ pref, tmp185
	strd	r0, [sl, #8]	@ D.38977, pBwdImg,
	b	.L1040	@
.L1054:
	movw	r3, #:lower16:78257	@ tmp172,
	movt	r3, #:upper16:78257	@ tmp172,
	ldrb	lr, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.LastIs2ndFld, <variable>.CodecInfo.LastIs2ndFld
	cmp	lr, #1	@ <variable>.CodecInfo.LastIs2ndFld,
	beq	.L1035	@,
.L1036:
	mov	r0, #1	@ D.38941,
.L1032:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L1037:
	movw	r2, #:lower16:101556	@ tmp195,
	movt	r2, #:upper16:101556	@ tmp195,
	movw	lr, #:lower16:101560	@ tmp194,
	movt	lr, #:upper16:101560	@ tmp194,
	ldr	r5, [r4, r2]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
	str	r5, [r4, lr]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.ToQueFsID
	b	.L1040	@
.L1047:
	movw	r3, #:lower16:78249	@ tmp252,
	movt	r3, #:upper16:78249	@ tmp252,
	ldrsb	r5, [r4, r3]	@ D.39014, <variable>.CodecInfo.RefId
	cmp	r5, #3	@ D.39014,
	beq	.L1057	@,
	cmp	r5, #1	@ D.39014,
	beq	.L1058	@,
	cmp	r5, #2	@ D.39014,
	bne	.L1036	@,
	movw	r2, #:lower16:101464	@ tmp271,
	movt	r2, #:upper16:101464	@ tmp271,
	mov	lr, #0	@ tmp272,
	ldr	ip, [r4, r2]	@ <variable>.CodecInfo.pCurFrm,
	strb	lr, [ip, #1]	@ tmp272, <variable>.is_to_display
	strb	lr, [r4, r3]	@ tmp272, <variable>.CodecInfo.RefId
	b	.L1032	@
.L1041:
	mov	r8, #0	@ pref,
	b	.L1040	@
.L1056:
	movw	r2, #:lower16:101472	@ tmp215,
	movt	r2, #:upper16:101472	@ tmp215,
	movw	r1, #:lower16:78249	@ tmp218,
	movt	r1, #:upper16:78249	@ tmp218,
	ldr	lr, [r4, r2]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	strb	r8, [lr, #1]	@ pref, <variable>.is_to_display
	strb	r8, [r4, r1]	@ pref, <variable>.CodecInfo.RefId
	b	.L1046	@
.L1044:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC44	@,
	movt	r1, #:upper16:.LC44	@,
	mov	sl, #0	@ tmp281,
	bl	dprint_vfmw	@
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r6, #212]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	sl, [r6, #212]	@ tmp281, <variable>.p_usrdat
	ldr	r1, [r6, #216]	@, <variable>.p_usrdat
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	sl, [r6, #216]	@ tmp281, <variable>.p_usrdat
	mov	r2, sl	@, tmp281
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, r5]	@, <variable>.CodecInfo.ToQueFsID
	bl	FSP_SetDisplay	@
	cmp	r8, #1	@ pref,
	movweq	r3, #:lower16:101472	@ tmp291,
	movwne	r3, #:lower16:101464	@ tmp295,
	moveq	r0, r8	@ D.38941, pref
	movne	r0, #1	@ D.38941,
	movteq	r3, #:upper16:101472	@ tmp291,
	movtne	r3, #:upper16:101464	@ tmp295,
	ldr	r3, [r4, r3]	@ <variable>.CodecInfo.pCurFrm,
	strb	sl, [r3, #1]	@ tmp281, <variable>.is_to_display
	b	.L1032	@
.L1039:
	movw	r5, #:lower16:101560	@ tmp299,
	movt	r5, #:upper16:101560	@ tmp299,
	mvn	r0, #0	@ tmp300,
	str	r0, [r4, r5]	@ tmp300, <variable>.CodecInfo.ToQueFsID
	b	.L1040	@
.L1058:
	movw	r1, #:lower16:101472	@ tmp263,
	movt	r1, #:upper16:101472	@ tmp263,
	mov	ip, #0	@ tmp264,
	mov	r0, r5	@ D.38941, D.39014
	ldr	r2, [r4, r1]	@ <variable>.CodecInfo.pRef,
	strb	ip, [r2, #1]	@ tmp264, <variable>.is_to_display
	strb	ip, [r4, r3]	@ tmp264, <variable>.CodecInfo.RefId
	b	.L1032	@
.L1057:
	movw	lr, #:lower16:101468	@ tmp255,
	movt	lr, #:upper16:101468	@ tmp255,
	mov	ip, #0	@ tmp256,
	ldr	r1, [r4, lr]	@ <variable>.CodecInfo.pRef,
	strb	ip, [r1, #1]	@ tmp256, <variable>.is_to_display
	strb	ip, [r4, r3]	@ tmp256, <variable>.CodecInfo.RefId
	b	.L1032	@
.L1053:
	mov	r3, sl	@, pBwdImg
	mov	r0, r5	@, pCurImg
	movw	r1, #:lower16:.LC41	@,
	mov	r2, r5	@, pCurImg
	movt	r1, #:upper16:.LC41	@,
	str	ip, [sp, #0]	@ pFwdImg,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.38941, pCurImg
	b	.L1032	@
.L1055:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC42	@,
	movw	r2, #657	@,
	movt	r1, #:upper16:.LC42	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@ D.38941, pToQueImg
	b	.L1032	@
	.fnend
	.size	VC1DEC_VDMPostProc, .-VC1DEC_VDMPostProc
	.align	2
	.global	VC1DEC_GetRemainImg
	.type	VC1DEC_GetRemainImg, %function
VC1DEC_GetRemainImg:
	.fnstart
.LFB1534:
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
	movw	r6, #:lower16:101468	@ tmp141,
	movt	r6, #:upper16:101468	@ tmp141,
	mov	r4, r0	@ pCtx, pCtx
	ldr	r3, [r0, r6]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	cmp	r3, #0	@ <variable>.CodecInfo.pRef,
	mvneq	r0, #0	@ ret,
	beq	.L1061	@,
	ldr	r1, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r0, [r1, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r0, #1	@ <variable>.s32DecOrderOutput,
	beq	.L1062	@,
	movw	r7, #:lower16:114368	@ tmp145,
	movw	r8, #:lower16:101552	@ tmp147,
	movt	r7, #:upper16:114368	@ tmp145,
	movt	r8, #:upper16:101552	@ tmp147,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pImg,
	beq	.L1062	@,
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.BwdFsID
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	beq	.L1069	@,
.L1062:
	add	r0, r4, #113664	@, pCtx,
	add	r0, r0, #352	@,,
	bl	GetVoLastImageID	@
.L1061:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L1069:
	mov	r0, r4	@, pCtx
	mov	r8, #0	@ tmp154,
	bl	VC1_SetImgFormat	@
	mov	ip, #1	@ tmp153,
	str	r8, [r5, #212]	@ tmp154, <variable>.p_usrdat
	mov	r2, ip	@, tmp153
	str	ip, [r5, #244]	@ tmp153, <variable>.last_frame
	str	r8, [r5, #216]	@ tmp154, <variable>.p_usrdat
	ldr	r1, [r5, #196]	@, <variable>.image_id
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_SetDisplay	@
	ldr	r3, [r4, r6]	@ temp.3166, <variable>.CodecInfo.pRef
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ <variable>.is_to_ref, <variable>.is_to_ref
	cmp	r2, #1	@ <variable>.is_to_ref,
	beq	.L1070	@,
.L1063:
	movw	r6, #:lower16:114368	@ tmp170,
	movt	r6, #:upper16:114368	@ tmp170,
	add	ip, r4, #113664	@, pCtx,
	mov	r1, #1	@,
	ldr	r0, [r4, r6]	@ <variable>.ChanID, <variable>.ChanID
	add	r3, ip, #352	@,,
	mov	r2, r4	@, pCtx
	str	r5, [sp, #0]	@ pImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	beq	.L1064	@,
	ldr	r1, [r5, #196]	@, <variable>.image_id
	mov	r0, r4	@, pCtx
	bl	VC1DEC_RecycleImage	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r5, #212]	@, <variable>.p_usrdat
	mov	r7, #0	@ tmp178,
	bl	FreeUsdByDec	@
	str	r7, [r5, #212]	@ tmp178, <variable>.p_usrdat
	ldr	r1, [r5, #216]	@, <variable>.p_usrdat
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r7, [r5, #216]	@ tmp178, <variable>.p_usrdat
	b	.L1062	@
.L1064:
	ldr	r1, [r5, #200]	@ <variable>.error_level, <variable>.error_level
	cmp	r1, #100	@ <variable>.error_level,
	bhi	.L1062	@,
	ldr	r2, [r5, #164]	@ <variable>.image_width, <variable>.image_width
	cmp	r2, #31	@ <variable>.image_width,
	bls	.L1062	@,
	ldr	lr, [r5, #168]	@ <variable>.image_height, <variable>.image_height
	cmp	lr, #31	@ <variable>.image_height,
	movhi	r0, #0	@ ret,
	bhi	.L1061	@,
	b	.L1062	@
.L1070:
	strb	r2, [r3, #1]	@ <variable>.is_to_ref, <variable>.is_to_display
	movw	lr, #:lower16:78249	@ tmp167,
	ldr	r3, [r4, r6]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	movt	lr, #:upper16:78249	@ tmp167,
	mov	r2, #3	@ tmp168,
	strb	r8, [r3, #0]	@ tmp154, <variable>.is_to_ref
	strb	r2, [r4, lr]	@ tmp168, <variable>.CodecInfo.RefId
	b	.L1063	@
	.fnend
	.size	VC1DEC_GetRemainImg, .-VC1DEC_GetRemainImg
	.align	2
	.global	VC1DEC_Init
	.type	VC1DEC_Init, %function
VC1DEC_Init:
	.fnstart
.LFB1530:
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
	movw	r8, #:lower16:114360	@ tmp140,
	movt	r8, #:upper16:114360	@ tmp140,
	mov	r4, r0	@ pCtx, pCtx
	mov	r6, r1	@ pstExtraData, pstExtraData
	add	r9, r4, #113664	@, pCtx,
	ldr	r7, [r0, r8]	@ D.38675, <variable>.ImageQue.ResetMagicWord
	movw	r1, #:lower16:114376	@,
	movw	r5, #:lower16:78257	@ tmp147,
	movt	r1, #:upper16:114376	@,
	movt	r5, #:upper16:78257	@ tmp147,
	bl	__memzero	@
	str	r7, [r4, r8]	@ D.38675, <variable>.ImageQue.ResetMagicWord
	add	r0, r9, #352	@,,
	bl	ResetVoQueue	@
	ldr	ip, [r6, #36]	@ <variable>.s32BpdMemAddr, <variable>.s32BpdMemAddr
	mov	r0, #1	@,
	str	r6, [r4, #0]	@ pstExtraData, <variable>.pstExtraData
	strb	r0, [r4, r5]	@, <variable>.CodecInfo.LastIs2ndFld
	movw	r3, #:lower16:113908	@,
	ldr	r2, [r6, #8]	@, <variable>.s32DecMode
	movt	r3, #:upper16:113908	@,
	str	r3, [fp, #-56]	@, %sfp
	add	r1, ip, #255	@ tmp145, <variable>.s32BpdMemAddr,
	movw	r9, #:lower16:113972	@ tmp150,
	movw	sl, #:lower16:113944	@ tmp152,
	str	r2, [fp, #-48]	@, %sfp
	movt	sl, #:upper16:113944	@ tmp152,
	ldr	r3, [fp, #-48]	@, %sfp
	movt	r9, #:upper16:113972	@ tmp150,
	movw	r7, #:lower16:113948	@ tmp153,
	movw	r6, #:lower16:113952	@ tmp155,
	movt	r7, #:upper16:113948	@ tmp153,
	movt	r6, #:upper16:113952	@ tmp155,
	movw	r5, #:lower16:113956	@ tmp157,
	movw	lr, #:lower16:113960	@ tmp159,
	movt	r5, #:upper16:113956	@ tmp157,
	movt	lr, #:upper16:113960	@ tmp159,
	movw	r0, #:lower16:113964	@ tmp161,
	movw	r8, #:lower16:113968	@ tmp163,
	movt	r0, #:upper16:113964	@ tmp161,
	movt	r8, #:upper16:113968	@ tmp163,
	movw	ip, #:lower16:78258	@ tmp165,
	movw	r2, #:lower16:113904	@ tmp168,
	movt	ip, #:upper16:78258	@ tmp165,
	movt	r2, #:upper16:113904	@ tmp168,
	bic	r1, r1, #255	@ BpdMemAddr, tmp145,
	str	r3, [r4, r9]	@, <variable>.CodecInfo.UsedDecMode
	str	r1, [r4, sl]	@ BpdMemAddr, <variable>.CodecInfo.MVTYPEMB_ADDR
	add	sl, r1, #12288	@ tmp164, BpdMemAddr,
	str	sl, [r4, r8]	@ tmp164, <variable>.CodecInfo.FORWARDMB_ADDR
	add	r8, r1, #2048	@ tmp154, BpdMemAddr,
	str	r8, [r4, r7]	@ tmp154, <variable>.CodecInfo.SKIPMB_ADDR
	add	r7, r1, #4096	@ tmp156, BpdMemAddr,
	str	r7, [r4, r6]	@ tmp156, <variable>.CodecInfo.DIRECTMB_ADDR
	add	r6, r1, #6144	@ tmp158, BpdMemAddr,
	str	r6, [r4, r5]	@ tmp158, <variable>.CodecInfo.ACPRED_ADDR
	add	r5, r1, #8192	@ tmp160, BpdMemAddr,
	add	r1, r1, #10240	@ tmp162, BpdMemAddr,
	str	r5, [r4, lr]	@ tmp160, <variable>.CodecInfo.OVERFLAGS_ADDR
	str	r1, [r4, r0]	@ tmp162, <variable>.CodecInfo.FIELDTX_ADDR
	mov	r5, #0	@ tmp169,
	mov	r0, #1	@,
	str	r5, [r4, r2]	@ tmp169, <variable>.CodecInfo.PPicFound
	strb	r0, [r4, ip]	@, <variable>.CodecInfo.LastPicRNDCTRL
	mov	r0, r4	@, pCtx
	ldr	r2, [fp, #-56]	@, %sfp
	str	r5, [r4, r2]	@ tmp169, <variable>.CodecInfo.BPicCount
	bl	VCTRL_GetChanIDByCtx	@
	movw	r3, #:lower16:114368	@ tmp172,
	movt	r3, #:upper16:114368	@ tmp172,
	cmn	r0, #1	@ D.38701,
	str	r0, [r4, r3]	@ D.38701, <variable>.ChanID
	beq	.L1075	@,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC46	@,
	movt	r1, #:upper16:.LC46	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.38706,
.L1073:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L1075:
	mov	r0, r5	@, tmp169
	movw	r1, #:lower16:.LC45	@,
	movt	r1, #:upper16:.LC45	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.38706,
	b	.L1073	@
	.fnend
	.size	VC1DEC_Init, .-VC1DEC_Init
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	C.591.42319, %object
	.size	C.591.42319, 128
C.591.42319:
	.word	0
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.word	11
	.word	12
	.word	13
	.word	14
	.word	15
	.word	16
	.word	17
	.word	18
	.word	19
	.word	20
	.word	21
	.word	22
	.word	23
	.word	24
	.word	25
	.word	27
	.word	29
	.word	31
	.type	aCount, %object
	.size	aCount, 128
aCount:
	.word	0
	.word	1
	.word	1
	.word	2
	.word	1
	.word	2
	.word	2
	.word	3
	.word	1
	.word	2
	.word	2
	.word	3
	.word	2
	.word	3
	.word	3
	.word	4
	.word	1
	.word	2
	.word	2
	.word	3
	.word	2
	.word	3
	.word	3
	.word	4
	.word	2
	.word	3
	.word	3
	.word	4
	.word	3
	.word	4
	.word	4
	.word	5
	.type	a2On4Off, %object
	.size	a2On4Off, 60
a2On4Off:
	.word	3
	.word	5
	.word	6
	.word	9
	.word	10
	.word	12
	.word	17
	.word	18
	.word	20
	.word	24
	.word	33
	.word	34
	.word	36
	.word	40
	.word	48
	.type	__func__.38716, %object
	.size	__func__.38716, 13
__func__.38716:
	.ascii	"Vc1SMPSeqHdr\000"
	.space	3
	.type	C.569.41631, %object
	.size	C.569.41631, 32
C.569.41631:
@ Code:
	.word	1
@ Len:
	.word	2
@ Code:
	.word	2
@ Len:
	.word	2
@ Code:
	.word	0
@ Len:
	.word	1
@ Code:
	.word	0
@ Len:
	.word	1
	.type	C.533.40528, %object
	.size	C.533.40528, 28
C.533.40528:
	.word	1
	.word	1
	.word	2
	.word	1
	.word	3
	.word	1
	.word	2
	.type	C.534.40529, %object
	.size	C.534.40529, 28
C.534.40529:
	.word	2
	.word	3
	.word	3
	.word	4
	.word	4
	.word	5
	.word	5
	.type	C.535.40530, %object
	.size	C.535.40530, 56
C.535.40530:
	.word	3
	.word	4
	.word	1
	.word	5
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	1
	.word	3
	.word	5
	.word	7
	.type	C.536.40531, %object
	.size	C.536.40531, 56
C.536.40531:
	.word	5
	.word	5
	.word	6
	.word	6
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	8
	.word	8
	.word	8
	.word	8
	.type	C.537.40532, %object
	.size	C.537.40532, 32
C.537.40532:
	.word	256
	.word	128
	.word	85
	.word	64
	.word	51
	.word	43
	.word	37
	.word	32
	.type	C.525.40496, %object
	.size	C.525.40496, 28
C.525.40496:
	.word	1
	.word	1
	.word	2
	.word	1
	.word	3
	.word	1
	.word	2
	.type	C.526.40497, %object
	.size	C.526.40497, 28
C.526.40497:
	.word	2
	.word	3
	.word	3
	.word	4
	.word	4
	.word	5
	.word	5
	.type	C.527.40498, %object
	.size	C.527.40498, 56
C.527.40498:
	.word	3
	.word	4
	.word	1
	.word	5
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	1
	.word	3
	.word	5
	.word	7
	.type	C.528.40499, %object
	.size	C.528.40499, 56
C.528.40499:
	.word	5
	.word	5
	.word	6
	.word	6
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	8
	.word	8
	.word	8
	.word	8
	.type	C.529.40500, %object
	.size	C.529.40500, 32
C.529.40500:
	.word	256
	.word	128
	.word	85
	.word	64
	.word	51
	.word	43
	.word	37
	.word	32
	.type	C.521.40463, %object
	.size	C.521.40463, 16
C.521.40463:
	.word	3
	.word	1
	.word	2
	.word	0
	.type	C.522.40464, %object
	.size	C.522.40464, 16
C.522.40464:
	.word	1
	.word	0
	.word	2
	.word	3
	.type	C.517.40437, %object
	.size	C.517.40437, 16
C.517.40437:
	.word	3
	.word	1
	.word	2
	.word	0
	.type	C.514.40424, %object
	.size	C.514.40424, 8
C.514.40424:
	.word	3
	.word	1
	.type	C.509.40396, %object
	.size	C.509.40396, 20
C.509.40396:
	.word	3
	.word	1
	.word	2
	.word	0
	.word	4
	.type	C.510.40397, %object
	.size	C.510.40397, 20
C.510.40397:
	.word	1
	.word	0
	.word	2
	.word	3
	.word	4
	.type	C.503.40352, %object
	.size	C.503.40352, 64
C.503.40352:
@ Code:
	.word	0
@ Len:
	.word	1
@ Code:
	.word	0
@ Len:
	.word	1
@ Code:
	.word	0
@ Len:
	.word	1
@ Code:
	.word	0
@ Len:
	.word	1
@ Code:
	.word	1
@ Len:
	.word	2
@ Code:
	.word	1
@ Len:
	.word	2
@ Code:
	.word	2
@ Len:
	.word	3
@ Code:
	.word	3
@ Len:
	.word	3
	.type	FldPTypeTab, %object
	.size	FldPTypeTab, 64
FldPTypeTab:
	.word	0
	.word	0
	.word	0
	.word	1
	.word	1
	.word	0
	.word	1
	.word	1
	.word	2
	.word	2
	.word	2
	.word	4
	.word	4
	.word	2
	.word	4
	.word	4
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"bitsream para error -----\012\000"
	.space	1
.LC1:
	.ascii	"line %d, pPacket->StreamPack[1].IsLastSeg = %d\012\000"
.LC2:
	.ascii	"%s: %s\012\000"
.LC3:
	.ascii	"picture width out of range\000"
	.space	1
.LC4:
	.ascii	"picture height out of range\000"
.LC5:
	.ascii	"Vc1SMPSeqHdr Err, BS is wrong\000"
	.space	2
.LC6:
	.ascii	"Vc1SMPSeqHdr Err, BS is wrong\012\000"
	.space	1
.LC7:
	.ascii	"SLICE_ADDR = %d,SlcEndMbn = %d, MbHeight = %d\012\000"
	.space	1
.LC8:
	.ascii	"SLICE_ADDR = %d,SlcEndMbn = %d, totalMbMin1 = %d\012"
	.ascii	"\000"
	.space	2
.LC9:
	.ascii	"VC1_RecordSlcStream stream len <= 0\012\000"
	.space	3
.LC10:
	.ascii	" pCodecInf->SlcNum = %d >= 256 \012\000"
	.space	3
.LC11:
	.ascii	"line %d, Code = VC1_SCSLC failed!\012\000"
	.space	1
.LC12:
	.ascii	"line %d, Code = VC1_SCFRM failed!\012\000"
	.space	1
.LC13:
	.ascii	"Check Pos 2: %d\012\000"
	.space	3
.LC14:
	.ascii	"Check Pos 3: %d\012\000"
	.space	3
.LC15:
	.ascii	"\012======PicNum  :%6d=========\012\000"
	.space	2
.LC16:
	.ascii	"INTERPFRM  :%#x\012\000"
	.space	3
.LC17:
	.ascii	"VC1_Vfmw_ParseMPBPicHdr err!\012\000"
	.space	2
.LC18:
	.ascii	"After VC1_Vfmw_ParseSMPPicHdr BS Len <= 0 err!\012\000"
.LC19:
	.ascii	"----------------- VC1 Imode -> %d -----------------"
	.ascii	"-\012\000"
	.space	2
.LC20:
	.ascii	"NOTE: Drop non-I\012\000"
	.space	2
.LC21:
	.ascii	"NOTE: Drop B\012\000"
	.space	2
.LC22:
	.ascii	"line: %d, pImage is NULL!\012\000"
	.space	1
.LC23:
	.ascii	"get frame store fail!\012\000"
	.space	1
.LC24:
	.ascii	"VC1_Vfmw_GetImageBuffer get imgbuf err, clear all r"
	.ascii	"ef!\012\000"
.LC25:
	.ascii	"VC1_Vfmw_GetImageBuffer get_flag!=1, FSP_ClearLogic"
	.ascii	"Fs.\012\000"
.LC26:
	.ascii	"image size abnormal(%dx%d)\012\000"
.LC27:
	.ascii	"vc1 actual frame size(%dx%d) exeed max config(%dx%d"
	.ascii	")\012\000"
	.space	2
.LC28:
	.ascii	"partition fs memory fail!\012\000"
	.space	1
.LC29:
	.ascii	"ERROR: FSP_ConfigInstance fail!\012\000"
	.space	3
.LC30:
	.ascii	"VC1_Vfmw_GetStreamInfo VC1_ArrangeVahbMem err!\012\000"
.LC31:
	.ascii	"VC1_Vfmw_GetStreamInfo VC1_Vfmw_GetImageBuffer err!"
	.ascii	"\012\000"
	.space	3
.LC32:
	.ascii	"dec_pts: %lld Usertag = %lld\012\000"
	.space	2
.LC33:
	.ascii	"---------- unref %d\012\000"
	.space	3
.LC34:
	.ascii	"VC1_Vfmw_GetStreamInfo B pic pCodecInf->RefNum < 2 "
	.ascii	"err!\012\000"
	.space	3
.LC35:
	.ascii	"line: %d (pCur,pFwd,pBwd)(%p,%p,%p)\012\000"
	.space	3
.LC36:
	.ascii	"VC1_Vfmw_GetStreamInfo imgbuf = NULL err!\012\000"
	.space	1
.LC37:
	.ascii	"CurFsID(fwd%d,%d,bwd%d) abnormal!(%p,%p,%p)\012\000"
	.space	3
.LC38:
	.ascii	"VC1_Vfmw_GetStreamInfo VC1_Vfmw_BuildRefList err!\012"
	.ascii	"\000"
	.space	1
.LC39:
	.ascii	"VC1_Vfmw_GetStreamInfo error! Release all packets!\012"
	.ascii	"\000"
.LC40:
	.ascii	"ERROR: frm %d, Invalid packet pointer!\012\000"
.LC41:
	.ascii	"pImg is null, pCurImg %#x pBwdImg %#x pFwdImg %#x\012"
	.ascii	"\000"
	.space	1
.LC42:
	.ascii	"line: %d, pToQueImg is Null!\012\000"
	.space	2
.LC43:
	.ascii	"insert buf %d ref %d\012\000"
	.space	2
.LC44:
	.ascii	"err(%d) > out_thr(%d)\012\000"
	.space	1
.LC45:
	.ascii	"-1 == VCTRL_GetChanIDByCtx() Err! \012\000"
.LC46:
	.ascii	"VC1 INIT!!!\012\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
