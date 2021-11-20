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
	.file	"vfmw_ctrl.c"
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
@ -DKBUILD_BASENAME=KBUILD_STR(vfmw_ctrl)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD drivers/msp/vfmw/vfmw_v4.0/firmware/common/.vfmw_ctrl.o.d
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/drivers/msp/vfmw/vfmw_v4.0/firmware/common/vfmw_ctrl.c
@ -mlittle-endian -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -marm -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/common/vfmw_ctrl.o -O2 -Wall -Wundef
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
	.global	VCTRL_GetFrameInterface
	.type	VCTRL_GetFrameInterface, %function
VCTRL_GetFrameInterface:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r0, [r3, r0, asl #2]	@ D.50311, s_pstVfmwChan
	cmp	r0, #0	@ D.50311,
	addne	r0, r0, #176	@ D.50314, D.50311,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_GetFrameInterface, .-VCTRL_GetFrameInterface
	.align	2
	.global	VCTRL_GetSyntaxCtx
	.type	VCTRL_GetSyntaxCtx, %function
VCTRL_GetSyntaxCtx:
	.fnstart
.LFB1558:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r0, [r3, r0, asl #2]	@ D.50360, s_pstVfmwChan
	cmp	r0, #0	@ D.50360,
	addne	r0, r0, #250880	@ D.50363, D.50360,
	addne	r0, r0, #712	@ D.50363, D.50363,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_GetSyntaxCtx, .-VCTRL_GetSyntaxCtx
	.align	2
	.global	VCTRL_GetImageInterface
	.type	VCTRL_GetImageInterface, %function
VCTRL_GetImageInterface:
	.fnstart
.LFB1560:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r0, [r3, r0, asl #2]	@ D.50421, s_pstVfmwChan
	cmp	r0, #0	@ D.50421,
	addne	r0, r0, #164	@ D.50424, D.50421,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_GetImageInterface, .-VCTRL_GetImageInterface
	.align	2
	.global	VCTRL_GetChanCtxSize
	.type	VCTRL_GetChanCtxSize, %function
VCTRL_GetChanCtxSize:
	.fnstart
.LFB1565:
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
	cmp	r0, #26	@ eCapLevel,
	movweq	r3, #:lower16:11613576	@ tmp135,
	movwne	r3, #:lower16:4780712	@ tmp136,
	movteq	r3, #:upper16:11613576	@ tmp135,
	movtne	r3, #:upper16:4780712	@ tmp136,
	str	r3, [r1, #0]	@ tmp136,* s32ChanCtxSize
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_GetChanCtxSize, .-VCTRL_GetChanCtxSize
	.align	2
	.global	VCTRL_CmpConfigParameter
	.type	VCTRL_CmpConfigParameter, %function
VCTRL_CmpConfigParameter:
	.fnstart
.LFB1576:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r3, [r3, r0, asl #2]	@ D.51281, s_pstVfmwChan
	ldr	r2, [r3, #552]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r2, #19	@ <variable>.eVidStd,
	bne	.L24	@,
.L18:
	mvn	r0, #0	@ D.51334,
	ldmfd	sp, {fp, sp, pc}	@
.L24:
	ldr	r2, [r3, #48]	@ D.51286, <variable>.stChanCfg.eVidStd
	ldr	r0, [r1, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r2, r0	@ D.51286, <variable>.eVidStd
	bne	.L18	@,
	ldr	ip, [r3, #64]	@ <variable>.stChanCfg.s32ChanErrThr, <variable>.stChanCfg.s32ChanErrThr
	ldr	r0, [r1, #16]	@ <variable>.s32ChanErrThr, <variable>.s32ChanErrThr
	cmp	ip, r0	@ <variable>.stChanCfg.s32ChanErrThr, <variable>.s32ChanErrThr
	bne	.L18	@,
	ldr	ip, [r3, #60]	@ <variable>.stChanCfg.s32ChanPriority, <variable>.stChanCfg.s32ChanPriority
	ldr	r0, [r1, #12]	@ <variable>.s32ChanPriority, <variable>.s32ChanPriority
	cmp	ip, r0	@ <variable>.stChanCfg.s32ChanPriority, <variable>.s32ChanPriority
	bne	.L18	@,
	ldr	ip, [r3, #68]	@ <variable>.stChanCfg.s32ChanStrmOFThr, <variable>.stChanCfg.s32ChanStrmOFThr
	ldr	r0, [r1, #20]	@ <variable>.s32ChanStrmOFThr, <variable>.s32ChanStrmOFThr
	cmp	ip, r0	@ <variable>.stChanCfg.s32ChanStrmOFThr, <variable>.s32ChanStrmOFThr
	bne	.L18	@,
	ldr	ip, [r3, #72]	@ <variable>.stChanCfg.s32DecMode, <variable>.stChanCfg.s32DecMode
	ldr	r0, [r1, #24]	@ <variable>.s32DecMode, <variable>.s32DecMode
	cmp	ip, r0	@ <variable>.stChanCfg.s32DecMode, <variable>.s32DecMode
	bne	.L18	@,
	ldr	ip, [r3, #76]	@ <variable>.stChanCfg.s32DecOrderOutput, <variable>.stChanCfg.s32DecOrderOutput
	ldr	r0, [r1, #28]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	ip, r0	@ <variable>.stChanCfg.s32DecOrderOutput, <variable>.s32DecOrderOutput
	bne	.L18	@,
	ldr	ip, [r3, #84]	@ <variable>.stChanCfg.s32DnrDispOutEnable, <variable>.stChanCfg.s32DnrDispOutEnable
	ldr	r0, [r1, #36]	@ <variable>.s32DnrDispOutEnable, <variable>.s32DnrDispOutEnable
	cmp	ip, r0	@ <variable>.stChanCfg.s32DnrDispOutEnable, <variable>.s32DnrDispOutEnable
	bne	.L18	@,
	ldr	ip, [r3, #80]	@ <variable>.stChanCfg.s32DnrTfEnable, <variable>.stChanCfg.s32DnrTfEnable
	ldr	r0, [r1, #32]	@ <variable>.s32DnrTfEnable, <variable>.s32DnrTfEnable
	cmp	ip, r0	@ <variable>.stChanCfg.s32DnrTfEnable, <variable>.s32DnrTfEnable
	bne	.L18	@,
	ldr	ip, [r3, #100]	@ <variable>.stChanCfg.s32VcmpEn, <variable>.stChanCfg.s32VcmpEn
	ldr	r0, [r1, #52]	@ <variable>.s32VcmpEn, <variable>.s32VcmpEn
	cmp	ip, r0	@ <variable>.stChanCfg.s32VcmpEn, <variable>.s32VcmpEn
	bne	.L18	@,
	ldr	ip, [r3, #112]	@ <variable>.stChanCfg.s32VcmpWmEndLine, <variable>.stChanCfg.s32VcmpWmEndLine
	ldr	r0, [r1, #64]	@ <variable>.s32VcmpWmEndLine, <variable>.s32VcmpWmEndLine
	cmp	ip, r0	@ <variable>.stChanCfg.s32VcmpWmEndLine, <variable>.s32VcmpWmEndLine
	bne	.L18	@,
	ldr	ip, [r3, #108]	@ <variable>.stChanCfg.s32VcmpWmStartLine, <variable>.stChanCfg.s32VcmpWmStartLine
	ldr	r0, [r1, #60]	@ <variable>.s32VcmpWmStartLine, <variable>.s32VcmpWmStartLine
	cmp	ip, r0	@ <variable>.stChanCfg.s32VcmpWmStartLine, <variable>.s32VcmpWmStartLine
	bne	.L18	@,
	ldr	ip, [r3, #104]	@ <variable>.stChanCfg.s32WmEn, <variable>.stChanCfg.s32WmEn
	ldr	r0, [r1, #56]	@ <variable>.s32WmEn, <variable>.s32WmEn
	cmp	ip, r0	@ <variable>.stChanCfg.s32WmEn, <variable>.s32WmEn
	bne	.L18	@,
	ldr	ip, [r3, #116]	@ <variable>.stChanCfg.s32SupportAllP, <variable>.stChanCfg.s32SupportAllP
	ldr	r0, [r1, #68]	@ <variable>.s32SupportAllP, <variable>.s32SupportAllP
	cmp	ip, r0	@ <variable>.stChanCfg.s32SupportAllP, <variable>.s32SupportAllP
	bne	.L18	@,
	cmp	r2, #1	@ D.51286,
	beq	.L25	@,
	sub	r0, r2, #10	@ tmp170, D.51286,
	cmp	r0, #2	@ tmp170,
	bhi	.L20	@,
	ldr	r2, [r3, #52]	@ <variable>.stChanCfg.StdExt.Vp6Ext.bReversed, <variable>.stChanCfg.StdExt.Vp6Ext.bReversed
	ldr	ip, [r1, #4]	@ <variable>.StdExt.Vp6Ext.bReversed, <variable>.StdExt.Vp6Ext.bReversed
	cmp	r2, ip	@ <variable>.stChanCfg.StdExt.Vp6Ext.bReversed, <variable>.StdExt.Vp6Ext.bReversed
	bne	.L18	@,
.L20:
	mov	r0, #0	@ D.51334,
	ldmfd	sp, {fp, sp, pc}	@
.L25:
	ldr	r0, [r3, #52]	@ <variable>.stChanCfg.StdExt.Vc1Ext.IsAdvProfile, <variable>.stChanCfg.StdExt.Vc1Ext.IsAdvProfile
	ldr	r2, [r1, #4]	@ <variable>.StdExt.Vc1Ext.IsAdvProfile, <variable>.StdExt.Vc1Ext.IsAdvProfile
	cmp	r0, r2	@ <variable>.stChanCfg.StdExt.Vc1Ext.IsAdvProfile, <variable>.StdExt.Vc1Ext.IsAdvProfile
	bne	.L18	@,
	ldr	ip, [r3, #56]	@ <variable>.stChanCfg.StdExt.Vc1Ext.CodecVersion, <variable>.stChanCfg.StdExt.Vc1Ext.CodecVersion
	ldr	r3, [r1, #8]	@ <variable>.StdExt.Vc1Ext.CodecVersion, <variable>.StdExt.Vc1Ext.CodecVersion
	cmp	ip, r3	@ <variable>.stChanCfg.StdExt.Vc1Ext.CodecVersion, <variable>.StdExt.Vc1Ext.CodecVersion
	beq	.L20	@,
	b	.L18	@
	.fnend
	.size	VCTRL_CmpConfigParameter, .-VCTRL_CmpConfigParameter
	.align	2
	.global	VCTRL_IsChanSegEnough
	.type	VCTRL_IsChanSegEnough, %function
VCTRL_IsChanSegEnough:
	.fnstart
.LFB1597:
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
	movw	r1, #:lower16:.LANCHOR0	@ tmp136,
	movt	r1, #:upper16:.LANCHOR0	@ tmp136,
	ldr	r3, [r1, r0, asl #2]	@ tmp137, s_pstVfmwChan
	ldr	r0, [r3, #336]	@ <variable>.s32NoStreamFlag, <variable>.s32NoStreamFlag
	subs	r0, r0, #1	@, <variable>.s32NoStreamFlag,
	movne	r0, #1	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_IsChanSegEnough, .-VCTRL_IsChanSegEnough
	.align	2
	.global	VCTRL_IsChanActive
	.type	VCTRL_IsChanActive, %function
VCTRL_IsChanActive:
	.fnstart
.LFB1598:
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
	cmp	r0, #15	@ ChanID,
	bls	.L32	@,
.L29:
	mvn	r0, #0	@ D.52534,
	ldmfd	sp, {fp, sp, pc}	@
.L32:
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r3, r0, asl #2]	@ D.52533, s_pstVfmwChan
	cmp	r3, #0	@ D.52533,
	beq	.L29	@,
	ldr	r2, [r3, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #0	@ <variable>.s32IsOpen,
	beq	.L29	@,
	ldr	r1, [r3, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r1, #0	@ <variable>.s32IsRun,
	beq	.L29	@,
	ldr	ip, [r3, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	ip, #0	@ <variable>.s32Priority,
	beq	.L29	@,
	ldr	r3, [r3, #552]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #19	@ <variable>.eVidStd,
	movne	r0, #0	@ D.52534,
	ldmnefd	sp, {fp, sp, pc}	@
	b	.L29	@
	.fnend
	.size	VCTRL_IsChanActive, .-VCTRL_IsChanActive
	.align	2
	.global	VCTRL_GetChanMemSizeByResolution
	.type	VCTRL_GetChanMemSizeByResolution, %function
VCTRL_GetChanMemSizeByResolution:
	.fnstart
.LFB1606:
	@ args = 0, pretend = 0, frame = 944
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #968
	sub	sp, sp, #968	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	ip, #:lower16:g_vdm_hal_fun_ptr	@ tmp141,
	movt	ip, #:upper16:g_vdm_hal_fun_ptr	@ tmp141,
	mov	r5, r2	@ VdmMemSize, VdmMemSize
	mov	r4, r3	@ ScdMemSize, ScdMemSize
	ldr	ip, [ip, #48]	@ D.52917, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.52917,
	beq	.L34	@,
	mov	r2, r0	@, MaxWidth
	mov	r3, r1	@, MaxHeight
	mov	r0, #6	@ tmp142,
	mov	r1, #16	@ tmp143,
	str	r0, [sp, #0]	@ tmp142,
	mov	lr, #0	@ tmp144,
	str	r1, [sp, #4]	@ tmp143,
	mvn	r0, #0	@ tmp145,
	sub	r1, fp, #960	@ tmp147,,
	str	r0, [sp, #12]	@ tmp145,
	str	r1, [sp, #16]	@ tmp147,
	mov	r0, #1	@,
	str	lr, [sp, #8]	@ tmp144,
	mvn	r1, #-2147483648	@,
	blx	ip	@ D.52917
	cmp	r0, #0	@ ret
	bne	.L34	@,
	ldr	r2, [fp, #-956]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	mov	r3, #2129920	@ tmp149,
	str	r2, [r5, #0]	@ MemArrange.TotalMemUsed,* VdmMemSize
	str	r3, [r4, #0]	@ tmp149,* ScdMemSize
	str	r2, [r5, #4]	@ MemArrange.TotalMemUsed,
	str	r3, [r4, #4]	@ tmp149,
	str	r2, [r5, #8]	@ MemArrange.TotalMemUsed,
	str	r3, [r4, #8]	@ tmp149,
.L35:
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L34:
	mvn	r0, #0	@ D.52930,
	b	.L35	@
	.fnend
	.size	VCTRL_GetChanMemSizeByResolution, .-VCTRL_GetChanMemSizeByResolution
	.align	2
	.global	VCTRL_GetChanIDByCtx
	.type	VCTRL_GetChanIDByCtx, %function
VCTRL_GetChanIDByCtx:
	.fnstart
.LFB1612:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp201,
	movt	r3, #:upper16:.LANCHOR0	@ tmp201,
	ldr	r2, [r3, #0]	@ temp.1143, s_pstVfmwChan
	cmp	r2, #0	@ temp.1143,
	beq	.L38	@,
	add	r1, r2, #250880	@ tmp153, temp.1143,
	add	r2, r1, #720	@ tmp153, tmp153,
	cmp	r2, r0	@ tmp153, pCtx
	moveq	r0, #0	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L38:
	ldr	r2, [r3, #4]	@ temp.1145, s_pstVfmwChan
	cmp	r2, #0	@ temp.1145,
	beq	.L40	@,
	add	r2, r2, #250880	@ tmp156, temp.1145,
	add	ip, r2, #720	@ tmp156, tmp156,
	cmp	ip, r0	@ tmp156, pCtx
	moveq	r0, #1	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L40:
	ldr	r2, [r3, #8]	@ temp.1147, s_pstVfmwChan
	cmp	r2, #0	@ temp.1147,
	beq	.L41	@,
	add	ip, r2, #250880	@ tmp159, temp.1147,
	add	r1, ip, #720	@ tmp159, tmp159,
	cmp	r1, r0	@ tmp159, pCtx
	moveq	r0, #2	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L41:
	ldr	r2, [r3, #12]	@ temp.1149, s_pstVfmwChan
	cmp	r2, #0	@ temp.1149,
	beq	.L42	@,
	add	r1, r2, #250880	@ tmp162, temp.1149,
	add	r2, r1, #720	@ tmp162, tmp162,
	cmp	r2, r0	@ tmp162, pCtx
	moveq	r0, #3	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L42:
	ldr	r2, [r3, #16]	@ temp.1151, s_pstVfmwChan
	cmp	r2, #0	@ temp.1151,
	beq	.L43	@,
	add	r2, r2, #250880	@ tmp165, temp.1151,
	add	ip, r2, #720	@ tmp165, tmp165,
	cmp	ip, r0	@ tmp165, pCtx
	moveq	r0, #4	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L43:
	ldr	r2, [r3, #20]	@ temp.1153, s_pstVfmwChan
	cmp	r2, #0	@ temp.1153,
	beq	.L44	@,
	add	ip, r2, #250880	@ tmp168, temp.1153,
	add	r1, ip, #720	@ tmp168, tmp168,
	cmp	r1, r0	@ tmp168, pCtx
	moveq	r0, #5	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L44:
	ldr	r2, [r3, #24]	@ temp.1155, s_pstVfmwChan
	cmp	r2, #0	@ temp.1155,
	beq	.L45	@,
	add	r1, r2, #250880	@ tmp171, temp.1155,
	add	r2, r1, #720	@ tmp171, tmp171,
	cmp	r2, r0	@ tmp171, pCtx
	moveq	r0, #6	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L45:
	ldr	r2, [r3, #28]	@ temp.1157, s_pstVfmwChan
	cmp	r2, #0	@ temp.1157,
	beq	.L46	@,
	add	r2, r2, #250880	@ tmp174, temp.1157,
	add	ip, r2, #720	@ tmp174, tmp174,
	cmp	ip, r0	@ tmp174, pCtx
	moveq	r0, #7	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L46:
	ldr	r2, [r3, #32]	@ temp.1159, s_pstVfmwChan
	cmp	r2, #0	@ temp.1159,
	beq	.L47	@,
	add	ip, r2, #250880	@ tmp177, temp.1159,
	add	r1, ip, #720	@ tmp177, tmp177,
	cmp	r1, r0	@ tmp177, pCtx
	moveq	r0, #8	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L47:
	ldr	r2, [r3, #36]	@ temp.1161, s_pstVfmwChan
	cmp	r2, #0	@ temp.1161,
	beq	.L48	@,
	add	r1, r2, #250880	@ tmp180, temp.1161,
	add	r2, r1, #720	@ tmp180, tmp180,
	cmp	r2, r0	@ tmp180, pCtx
	moveq	r0, #9	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L48:
	ldr	r2, [r3, #40]	@ temp.1163, s_pstVfmwChan
	cmp	r2, #0	@ temp.1163,
	beq	.L49	@,
	add	r2, r2, #250880	@ tmp183, temp.1163,
	add	ip, r2, #720	@ tmp183, tmp183,
	cmp	ip, r0	@ tmp183, pCtx
	moveq	r0, #10	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L49:
	ldr	r2, [r3, #44]	@ temp.1165, s_pstVfmwChan
	cmp	r2, #0	@ temp.1165,
	beq	.L50	@,
	add	ip, r2, #250880	@ tmp186, temp.1165,
	add	r1, ip, #720	@ tmp186, tmp186,
	cmp	r1, r0	@ tmp186, pCtx
	moveq	r0, #11	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L50:
	ldr	r2, [r3, #48]	@ temp.1167, s_pstVfmwChan
	cmp	r2, #0	@ temp.1167,
	beq	.L51	@,
	add	r1, r2, #250880	@ tmp189, temp.1167,
	add	r2, r1, #720	@ tmp189, tmp189,
	cmp	r2, r0	@ tmp189, pCtx
	moveq	r0, #12	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L51:
	ldr	r2, [r3, #52]	@ temp.1169, s_pstVfmwChan
	cmp	r2, #0	@ temp.1169,
	beq	.L52	@,
	add	r2, r2, #250880	@ tmp192, temp.1169,
	add	ip, r2, #720	@ tmp192, tmp192,
	cmp	ip, r0	@ tmp192, pCtx
	moveq	r0, #13	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L52:
	ldr	r2, [r3, #56]	@ temp.1171, s_pstVfmwChan
	cmp	r2, #0	@ temp.1171,
	beq	.L53	@,
	add	ip, r2, #250880	@ tmp195, temp.1171,
	add	r1, ip, #720	@ tmp195, tmp195,
	cmp	r1, r0	@ tmp195, pCtx
	moveq	r0, #14	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L53:
	ldr	r3, [r3, #60]	@ D.53472, s_pstVfmwChan
	cmp	r3, #0	@ D.53472,
	beq	.L54	@,
	add	r2, r3, #250880	@ tmp198, D.53472,
	add	r3, r2, #720	@ tmp198, tmp198,
	cmp	r3, r0	@ tmp198, pCtx
	moveq	r0, #15	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L54:
	mvn	r0, #0	@ i,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_GetChanIDByCtx, .-VCTRL_GetChanIDByCtx
	.align	2
	.global	VCTRL_GetChanIDByMemAddr
	.type	VCTRL_GetChanIDByMemAddr, %function
VCTRL_GetChanIDByMemAddr:
	.fnstart
.LFB1613:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp265,
	movt	r3, #:upper16:.LANCHOR0	@ tmp265,
	ldr	r2, [r3, #0]	@ temp.1197, s_pstVfmwChan
	cmp	r2, #0	@ temp.1197,
	beq	.L57	@,
	ldr	r1, [r2, #228]	@ temp.1199, <variable>.stChanMem_vdh.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1199
	bge	.L58	@,
.L60:
	ldr	r1, [r2, #244]	@ temp.1198, <variable>.stChanMem_scd.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1198
	blt	.L57	@,
	ldr	r2, [r2, #248]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	add	r1, r1, r2	@ tmp185, temp.1198, <variable>.stChanMem_scd.Length
	cmp	r0, r1	@ PhyAddr, tmp185
	blt	.L106	@,
.L57:
	ldr	r2, [r3, #4]	@ temp.1204, s_pstVfmwChan
	cmp	r2, #0	@ temp.1204,
	beq	.L61	@,
	ldr	r1, [r2, #228]	@ temp.1205, <variable>.stChanMem_vdh.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1205
	bge	.L62	@,
.L63:
	ldr	r1, [r2, #244]	@ temp.1206, <variable>.stChanMem_scd.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1206
	blt	.L61	@,
	ldr	r2, [r2, #248]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	add	r1, r1, r2	@ tmp190, temp.1206, <variable>.stChanMem_scd.Length
	cmp	r0, r1	@ PhyAddr, tmp190
	blt	.L108	@,
.L61:
	ldr	r2, [r3, #8]	@ temp.1211, s_pstVfmwChan
	cmp	r2, #0	@ temp.1211,
	beq	.L64	@,
	ldr	r1, [r2, #228]	@ temp.1212, <variable>.stChanMem_vdh.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1212
	bge	.L65	@,
.L66:
	ldr	r1, [r2, #244]	@ temp.1213, <variable>.stChanMem_scd.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1213
	blt	.L64	@,
	ldr	r2, [r2, #248]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	add	r1, r1, r2	@ tmp195, temp.1213, <variable>.stChanMem_scd.Length
	cmp	r0, r1	@ PhyAddr, tmp195
	blt	.L121	@,
.L64:
	ldr	r2, [r3, #12]	@ temp.1218, s_pstVfmwChan
	cmp	r2, #0	@ temp.1218,
	beq	.L67	@,
	ldr	r1, [r2, #228]	@ temp.1219, <variable>.stChanMem_vdh.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1219
	bge	.L68	@,
.L69:
	ldr	r1, [r2, #244]	@ temp.1220, <variable>.stChanMem_scd.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1220
	blt	.L67	@,
	ldr	r2, [r2, #248]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	add	r1, r1, r2	@ tmp200, temp.1220, <variable>.stChanMem_scd.Length
	cmp	r0, r1	@ PhyAddr, tmp200
	blt	.L120	@,
.L67:
	ldr	r2, [r3, #16]	@ temp.1225, s_pstVfmwChan
	cmp	r2, #0	@ temp.1225,
	beq	.L70	@,
	ldr	r1, [r2, #228]	@ temp.1226, <variable>.stChanMem_vdh.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1226
	bge	.L71	@,
.L72:
	ldr	r1, [r2, #244]	@ temp.1227, <variable>.stChanMem_scd.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1227
	blt	.L70	@,
	ldr	r2, [r2, #248]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	add	r1, r1, r2	@ tmp205, temp.1227, <variable>.stChanMem_scd.Length
	cmp	r0, r1	@ PhyAddr, tmp205
	blt	.L119	@,
.L70:
	ldr	r2, [r3, #20]	@ temp.1232, s_pstVfmwChan
	cmp	r2, #0	@ temp.1232,
	beq	.L73	@,
	ldr	r1, [r2, #228]	@ temp.1233, <variable>.stChanMem_vdh.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1233
	bge	.L74	@,
.L75:
	ldr	r1, [r2, #244]	@ temp.1234, <variable>.stChanMem_scd.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1234
	blt	.L73	@,
	ldr	r2, [r2, #248]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	add	r1, r1, r2	@ tmp210, temp.1234, <variable>.stChanMem_scd.Length
	cmp	r0, r1	@ PhyAddr, tmp210
	blt	.L118	@,
.L73:
	ldr	r2, [r3, #24]	@ temp.1239, s_pstVfmwChan
	cmp	r2, #0	@ temp.1239,
	beq	.L76	@,
	ldr	r1, [r2, #228]	@ temp.1240, <variable>.stChanMem_vdh.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1240
	bge	.L77	@,
.L78:
	ldr	r1, [r2, #244]	@ temp.1241, <variable>.stChanMem_scd.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1241
	blt	.L76	@,
	ldr	r2, [r2, #248]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	add	r1, r1, r2	@ tmp215, temp.1241, <variable>.stChanMem_scd.Length
	cmp	r0, r1	@ PhyAddr, tmp215
	blt	.L117	@,
.L76:
	ldr	r2, [r3, #28]	@ temp.1246, s_pstVfmwChan
	cmp	r2, #0	@ temp.1246,
	beq	.L79	@,
	ldr	r1, [r2, #228]	@ temp.1247, <variable>.stChanMem_vdh.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1247
	bge	.L80	@,
.L81:
	ldr	r1, [r2, #244]	@ temp.1248, <variable>.stChanMem_scd.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1248
	blt	.L79	@,
	ldr	r2, [r2, #248]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	add	r1, r1, r2	@ tmp220, temp.1248, <variable>.stChanMem_scd.Length
	cmp	r0, r1	@ PhyAddr, tmp220
	blt	.L116	@,
.L79:
	ldr	r2, [r3, #32]	@ temp.1253, s_pstVfmwChan
	cmp	r2, #0	@ temp.1253,
	beq	.L82	@,
	ldr	r1, [r2, #228]	@ temp.1254, <variable>.stChanMem_vdh.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1254
	bge	.L83	@,
.L84:
	ldr	r1, [r2, #244]	@ temp.1255, <variable>.stChanMem_scd.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1255
	blt	.L82	@,
	ldr	r2, [r2, #248]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	add	r1, r1, r2	@ tmp225, temp.1255, <variable>.stChanMem_scd.Length
	cmp	r0, r1	@ PhyAddr, tmp225
	blt	.L115	@,
.L82:
	ldr	r2, [r3, #36]	@ temp.1260, s_pstVfmwChan
	cmp	r2, #0	@ temp.1260,
	beq	.L85	@,
	ldr	r1, [r2, #228]	@ temp.1261, <variable>.stChanMem_vdh.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1261
	bge	.L86	@,
.L87:
	ldr	r1, [r2, #244]	@ temp.1262, <variable>.stChanMem_scd.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1262
	blt	.L85	@,
	ldr	r2, [r2, #248]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	add	r1, r1, r2	@ tmp230, temp.1262, <variable>.stChanMem_scd.Length
	cmp	r0, r1	@ PhyAddr, tmp230
	blt	.L114	@,
.L85:
	ldr	r2, [r3, #40]	@ temp.1267, s_pstVfmwChan
	cmp	r2, #0	@ temp.1267,
	beq	.L88	@,
	ldr	r1, [r2, #228]	@ temp.1268, <variable>.stChanMem_vdh.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1268
	bge	.L89	@,
.L90:
	ldr	r1, [r2, #244]	@ temp.1269, <variable>.stChanMem_scd.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1269
	blt	.L88	@,
	ldr	r2, [r2, #248]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	add	r1, r1, r2	@ tmp235, temp.1269, <variable>.stChanMem_scd.Length
	cmp	r0, r1	@ PhyAddr, tmp235
	blt	.L113	@,
.L88:
	ldr	r2, [r3, #44]	@ temp.1274, s_pstVfmwChan
	cmp	r2, #0	@ temp.1274,
	beq	.L91	@,
	ldr	r1, [r2, #228]	@ temp.1275, <variable>.stChanMem_vdh.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1275
	bge	.L92	@,
.L93:
	ldr	r1, [r2, #244]	@ temp.1276, <variable>.stChanMem_scd.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1276
	blt	.L91	@,
	ldr	r2, [r2, #248]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	add	r1, r1, r2	@ tmp240, temp.1276, <variable>.stChanMem_scd.Length
	cmp	r0, r1	@ PhyAddr, tmp240
	blt	.L112	@,
.L91:
	ldr	r2, [r3, #48]	@ temp.1281, s_pstVfmwChan
	cmp	r2, #0	@ temp.1281,
	beq	.L94	@,
	ldr	r1, [r2, #228]	@ temp.1282, <variable>.stChanMem_vdh.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1282
	bge	.L95	@,
.L96:
	ldr	r1, [r2, #244]	@ temp.1283, <variable>.stChanMem_scd.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1283
	blt	.L94	@,
	ldr	r2, [r2, #248]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	add	r1, r1, r2	@ tmp245, temp.1283, <variable>.stChanMem_scd.Length
	cmp	r0, r1	@ PhyAddr, tmp245
	blt	.L111	@,
.L94:
	ldr	r2, [r3, #52]	@ temp.1288, s_pstVfmwChan
	cmp	r2, #0	@ temp.1288,
	beq	.L97	@,
	ldr	r1, [r2, #228]	@ temp.1289, <variable>.stChanMem_vdh.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1289
	bge	.L98	@,
.L99:
	ldr	r1, [r2, #244]	@ temp.1290, <variable>.stChanMem_scd.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1290
	blt	.L97	@,
	ldr	r2, [r2, #248]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	add	r1, r1, r2	@ tmp250, temp.1290, <variable>.stChanMem_scd.Length
	cmp	r0, r1	@ PhyAddr, tmp250
	blt	.L110	@,
.L97:
	ldr	r2, [r3, #56]	@ temp.1295, s_pstVfmwChan
	cmp	r2, #0	@ temp.1295,
	beq	.L100	@,
	ldr	r1, [r2, #228]	@ temp.1296, <variable>.stChanMem_vdh.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1296
	bge	.L101	@,
.L102:
	ldr	r1, [r2, #244]	@ temp.1297, <variable>.stChanMem_scd.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1297
	blt	.L100	@,
	ldr	r2, [r2, #248]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	add	r1, r1, r2	@ tmp255, temp.1297, <variable>.stChanMem_scd.Length
	cmp	r0, r1	@ PhyAddr, tmp255
	blt	.L109	@,
.L100:
	ldr	r3, [r3, #60]	@ D.53488, s_pstVfmwChan
	cmp	r3, #0	@ D.53488,
	beq	.L103	@,
	ldr	r2, [r3, #228]	@ D.53491, <variable>.stChanMem_vdh.PhyAddr
	cmp	r2, r0	@ D.53491, PhyAddr
	bgt	.L104	@,
	ldr	r1, [r3, #232]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	add	r2, r2, r1	@ tmp260, D.53491, <variable>.stChanMem_vdh.Length
	cmp	r0, r2	@ PhyAddr, tmp260
	blt	.L107	@,
.L104:
	ldr	r2, [r3, #244]	@ D.53499, <variable>.stChanMem_scd.PhyAddr
	cmp	r0, r2	@ PhyAddr, D.53499
	blt	.L103	@,
	ldr	r3, [r3, #248]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	add	ip, r2, r3	@ tmp262, D.53499, <variable>.stChanMem_scd.Length
	cmp	r0, ip	@ PhyAddr, tmp262
	blt	.L107	@,
.L103:
	mvn	r0, #0	@ i,
	ldmfd	sp, {fp, sp, pc}	@
.L58:
	ldr	ip, [r2, #232]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	add	r1, r1, ip	@ tmp187, temp.1199, <variable>.stChanMem_vdh.Length
	cmp	r0, r1	@ PhyAddr, tmp187
	bge	.L60	@,
.L106:
	mov	r0, #0	@ i,
	ldmfd	sp, {fp, sp, pc}	@
.L62:
	ldr	ip, [r2, #232]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	add	r1, r1, ip	@ tmp192, temp.1205, <variable>.stChanMem_vdh.Length
	cmp	r0, r1	@ PhyAddr, tmp192
	bge	.L63	@,
.L108:
	mov	r0, #1	@ i,
	ldmfd	sp, {fp, sp, pc}	@
.L65:
	ldr	ip, [r2, #232]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	add	r1, r1, ip	@ tmp197, temp.1212, <variable>.stChanMem_vdh.Length
	cmp	r0, r1	@ PhyAddr, tmp197
	bge	.L66	@,
.L121:
	mov	r0, #2	@ i,
	ldmfd	sp, {fp, sp, pc}	@
.L68:
	ldr	ip, [r2, #232]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	add	r1, r1, ip	@ tmp202, temp.1219, <variable>.stChanMem_vdh.Length
	cmp	r0, r1	@ PhyAddr, tmp202
	bge	.L69	@,
.L120:
	mov	r0, #3	@ i,
	ldmfd	sp, {fp, sp, pc}	@
.L71:
	ldr	ip, [r2, #232]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	add	r1, r1, ip	@ tmp207, temp.1226, <variable>.stChanMem_vdh.Length
	cmp	r0, r1	@ PhyAddr, tmp207
	bge	.L72	@,
.L119:
	mov	r0, #4	@ i,
	ldmfd	sp, {fp, sp, pc}	@
.L74:
	ldr	ip, [r2, #232]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	add	r1, r1, ip	@ tmp212, temp.1233, <variable>.stChanMem_vdh.Length
	cmp	r0, r1	@ PhyAddr, tmp212
	bge	.L75	@,
.L118:
	mov	r0, #5	@ i,
	ldmfd	sp, {fp, sp, pc}	@
.L77:
	ldr	ip, [r2, #232]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	add	r1, r1, ip	@ tmp217, temp.1240, <variable>.stChanMem_vdh.Length
	cmp	r0, r1	@ PhyAddr, tmp217
	bge	.L78	@,
.L117:
	mov	r0, #6	@ i,
	ldmfd	sp, {fp, sp, pc}	@
.L80:
	ldr	ip, [r2, #232]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	add	r1, r1, ip	@ tmp222, temp.1247, <variable>.stChanMem_vdh.Length
	cmp	r0, r1	@ PhyAddr, tmp222
	bge	.L81	@,
.L116:
	mov	r0, #7	@ i,
	ldmfd	sp, {fp, sp, pc}	@
.L83:
	ldr	ip, [r2, #232]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	add	r1, r1, ip	@ tmp227, temp.1254, <variable>.stChanMem_vdh.Length
	cmp	r0, r1	@ PhyAddr, tmp227
	bge	.L84	@,
.L115:
	mov	r0, #8	@ i,
	ldmfd	sp, {fp, sp, pc}	@
.L86:
	ldr	ip, [r2, #232]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	add	r1, r1, ip	@ tmp232, temp.1261, <variable>.stChanMem_vdh.Length
	cmp	r0, r1	@ PhyAddr, tmp232
	bge	.L87	@,
.L114:
	mov	r0, #9	@ i,
	ldmfd	sp, {fp, sp, pc}	@
.L89:
	ldr	ip, [r2, #232]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	add	r1, r1, ip	@ tmp237, temp.1268, <variable>.stChanMem_vdh.Length
	cmp	r0, r1	@ PhyAddr, tmp237
	bge	.L90	@,
.L113:
	mov	r0, #10	@ i,
	ldmfd	sp, {fp, sp, pc}	@
.L92:
	ldr	ip, [r2, #232]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	add	r1, r1, ip	@ tmp242, temp.1275, <variable>.stChanMem_vdh.Length
	cmp	r0, r1	@ PhyAddr, tmp242
	bge	.L93	@,
.L112:
	mov	r0, #11	@ i,
	ldmfd	sp, {fp, sp, pc}	@
.L95:
	ldr	ip, [r2, #232]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	add	r1, r1, ip	@ tmp247, temp.1282, <variable>.stChanMem_vdh.Length
	cmp	r0, r1	@ PhyAddr, tmp247
	bge	.L96	@,
.L111:
	mov	r0, #12	@ i,
	ldmfd	sp, {fp, sp, pc}	@
.L98:
	ldr	ip, [r2, #232]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	add	r1, r1, ip	@ tmp252, temp.1289, <variable>.stChanMem_vdh.Length
	cmp	r0, r1	@ PhyAddr, tmp252
	bge	.L99	@,
.L110:
	mov	r0, #13	@ i,
	ldmfd	sp, {fp, sp, pc}	@
.L101:
	ldr	ip, [r2, #232]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	add	r1, r1, ip	@ tmp257, temp.1296, <variable>.stChanMem_vdh.Length
	cmp	r0, r1	@ PhyAddr, tmp257
	bge	.L102	@,
.L109:
	mov	r0, #14	@ i,
	ldmfd	sp, {fp, sp, pc}	@
.L107:
	mov	r0, #15	@ i,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_GetChanIDByMemAddr, .-VCTRL_GetChanIDByMemAddr
	.align	2
	.global	VCTRL_GetChanVoQue
	.type	VCTRL_GetChanVoQue, %function
VCTRL_GetChanVoQue:
	.fnstart
.LFB1615:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r3, r0, asl #2]	@ D.53715, s_pstVfmwChan
	cmp	r3, #0	@ D.53715,
	beq	.L123	@,
	ldr	r2, [r3, #552]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r2, #18	@ <variable>.eVidStd,
	ldrls	pc, [pc, r2, asl #2]	@ <variable>.eVidStd
	b	.L123	@
.L138:
	.word	.L137
	.word	.L125
	.word	.L126
	.word	.L127
	.word	.L128
	.word	.L129
	.word	.L130
	.word	.L123
	.word	.L131
	.word	.L132
	.word	.L133
	.word	.L133
	.word	.L133
	.word	.L134
	.word	.L128
	.word	.L135
	.word	.L136
	.word	.L123
	.word	.L137
.L137:
	add	r0, r3, #250880	@ pstVoQue, D.53715,
	add	r0, r0, #728	@ pstVoQue, pstVoQue,
	ldmfd	sp, {fp, sp, pc}	@
.L123:
	mov	r0, #0	@ pstVoQue,
	ldmfd	sp, {fp, sp, pc}	@
.L126:
	add	ip, r3, #270336	@ pstVoQue, D.53715,
	add	r0, ip, #3872	@ pstVoQue, pstVoQue,
	ldmfd	sp, {fp, sp, pc}	@
.L127:
	add	r1, r3, #331776	@ pstVoQue, D.53715,
	add	r0, r1, #336	@ pstVoQue, pstVoQue,
	ldmfd	sp, {fp, sp, pc}	@
.L128:
	movw	r1, #:lower16:277464	@ pstVoQue,
	movt	r1, #:upper16:277464	@ pstVoQue,
	add	r0, r3, r1	@ pstVoQue, D.53715, pstVoQue
	ldmfd	sp, {fp, sp, pc}	@
.L129:
	add	ip, r3, #282624	@ pstVoQue, D.53715,
	add	r0, ip, #2784	@ pstVoQue, pstVoQue,
	ldmfd	sp, {fp, sp, pc}	@
.L125:
	add	r2, r3, #364544	@ pstVoQue, D.53715,
	add	r0, r2, #1072	@ pstVoQue, pstVoQue,
	ldmfd	sp, {fp, sp, pc}	@
.L136:
	movw	r0, #:lower16:2384336	@ pstVoQue,
	movt	r0, #:upper16:2384336	@ pstVoQue,
	add	r0, r3, r0	@ pstVoQue, D.53715, pstVoQue
	ldmfd	sp, {fp, sp, pc}	@
.L134:
	add	ip, r3, #259072	@ pstVoQue, D.53715,
	add	r0, ip, #696	@ pstVoQue, pstVoQue,
	ldmfd	sp, {fp, sp, pc}	@
.L135:
	add	r2, r3, #251904	@ pstVoQue, D.53715,
	add	r0, r2, #280	@ pstVoQue, pstVoQue,
	ldmfd	sp, {fp, sp, pc}	@
.L130:
	movw	r2, #:lower16:267688	@ pstVoQue,
	movt	r2, #:upper16:267688	@ pstVoQue,
	add	r0, r3, r2	@ pstVoQue, D.53715, pstVoQue
	ldmfd	sp, {fp, sp, pc}	@
.L131:
	movw	r0, #:lower16:297736	@ pstVoQue,
	movt	r0, #:upper16:297736	@ pstVoQue,
	add	r0, r3, r0	@ pstVoQue, D.53715, pstVoQue
	ldmfd	sp, {fp, sp, pc}	@
.L132:
	movw	r1, #:lower16:297720	@ pstVoQue,
	movt	r1, #:upper16:297720	@ pstVoQue,
	add	r0, r3, r1	@ pstVoQue, D.53715, pstVoQue
	ldmfd	sp, {fp, sp, pc}	@
.L133:
	movw	r0, #:lower16:264248	@ pstVoQue,
	movt	r0, #:upper16:264248	@ pstVoQue,
	add	r0, r3, r0	@ pstVoQue, D.53715, pstVoQue
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_GetChanVoQue, .-VCTRL_GetChanVoQue
	.align	2
	.global	str2val
	.type	str2val, %function
str2val:
	.fnstart
.LFB1649:
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
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ tmp173,* str
	cmp	r3, #48	@ tmp173,
	beq	.L184	@,
.L142:
	mov	r4, #10	@ weight,
	mov	r5, #0	@ i,
.L143:
	add	r0, r0, r5	@ ivtmp.1352, str, i
	mov	ip, #0	@ dat,
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ D.55061,* ivtmp.1352
	cmp	r3, #31	@ D.55061,
	bls	.L144	@,
	cmp	r4, #16	@ weight,
	beq	.L173	@,
.L154:
	sub	ip, r3, #48	@ tmp194, D.55061,
	uxtb	r3, ip	@ tmp195, tmp194
	cmp	r3, #9	@ tmp195,
	bhi	.L174	@,
.L175:
	mov	r2, #1	@ tmp185,
	cmp	r2, #0	@ tmp185,
	add	r0, r0, r2	@ ivtmp.1352, ivtmp.1352,
	add	r5, r5, r2	@ i, i,
	beq	.L151	@,
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ D.55061,* ivtmp.1352
	cmp	r3, #31	@ D.55061,
	bls	.L144	@,
	cmp	r4, #16	@ weight,
	beq	.L177	@,
.L159:
	sub	r3, r3, #48	@ tmp199, D.55061,
	uxtb	r2, r3	@ tmp200, tmp199
	cmp	r2, #9	@ tmp200,
	bhi	.L174	@,
.L178:
	add	r5, r5, #1	@ i, i,
	add	r0, r0, #1	@ ivtmp.1352, ivtmp.1352,
	cmp	r5, #9	@ i,
	mla	ip, r4, ip, r3	@ dat, weight, dat, d
	bls	.L151	@,
.L144:
	mov	r0, #0	@ D.55081,
	str	ip, [r1, #0]	@ dat,* data
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L146:
	cmp	r3, #64	@ D.55061,
	bhi	.L147	@,
.L145:
	sub	r3, r3, #48	@ tmp181, D.55061,
	uxtb	r2, r3	@ tmp182, tmp181
	cmp	r2, #9	@ tmp182,
	bhi	.L174	@,
.L148:
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ D.55061,
	add	r5, r5, #1	@ tmp186, i,
	mla	ip, r4, ip, r3	@ dat, weight, dat, d
	cmp	r2, #31	@ D.55061,
	add	r0, r0, #1	@ tmp187, ivtmp.1352,
	bls	.L144	@,
	cmp	r4, #16	@ weight,
	beq	.L180	@,
.L165:
	sub	r2, r2, #48	@ tmp203, D.55061,
	uxtb	r3, r2	@ tmp204, tmp203
	cmp	r3, #9	@ tmp204,
	bhi	.L174	@,
.L181:
	add	r5, r5, #1	@ i, tmp186,
	add	r0, r0, #1	@ ivtmp.1352, tmp187,
	cmp	r5, #9	@ i,
	mla	ip, r4, ip, r2	@ dat, weight, dat, d
	bhi	.L144	@,
.L151:
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ D.55061,* ivtmp.1352
	cmp	r3, #31	@ D.55061,
	bls	.L144	@,
	cmp	r4, #16	@ weight,
	bne	.L145	@,
	cmp	r3, #96	@ D.55061,
	bls	.L146	@,
	cmp	r3, #102	@ D.55061,
	subls	r3, r3, #87	@ d, D.55061,
	bls	.L148	@,
.L147:
	cmp	r3, #70	@ D.55061,
	subls	r3, r3, #55	@ d, D.55061,
	bls	.L148	@,
	b	.L145	@
.L180:
	cmp	r2, #96	@ D.55061,
	bls	.L167	@,
	cmp	r2, #102	@ D.55061,
	bhi	.L168	@,
	sub	r2, r2, #87	@ d, D.55061,
	b	.L181	@
.L167:
	cmp	r2, #64	@ D.55061,
	bls	.L165	@,
.L168:
	cmp	r2, #70	@ D.55061,
	subls	r2, r2, #55	@ d, D.55061,
	bls	.L181	@,
	b	.L165	@
.L184:
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ D.55055,
	cmp	r2, #120	@ D.55055,
	cmpne	r2, #88	@, D.55055,
	moveq	r4, #16	@ weight,
	moveq	r5, #2	@ i,
	beq	.L143	@,
	b	.L142	@
.L173:
	cmp	r3, #96	@ D.55061,
	bls	.L156	@,
	cmp	r3, #102	@ D.55061,
	bhi	.L157	@,
	sub	ip, r3, #87	@ d, D.55061,
	b	.L175	@
.L156:
	cmp	r3, #64	@ D.55061,
	bls	.L154	@,
.L157:
	cmp	r3, #70	@ D.55061,
	subls	ip, r3, #55	@ d, D.55061,
	bls	.L175	@,
	b	.L154	@
.L177:
	cmp	r3, #96	@ D.55061,
	bls	.L161	@,
	cmp	r3, #102	@ D.55061,
	bhi	.L162	@,
	sub	r3, r3, #87	@ d, D.55061,
	b	.L178	@
.L161:
	cmp	r3, #64	@ D.55061,
	bls	.L159	@,
.L162:
	cmp	r3, #70	@ D.55061,
	subls	r3, r3, #55	@ d, D.55061,
	bhi	.L159	@,
	add	r5, r5, #1	@ i, i,
	add	r0, r0, #1	@ ivtmp.1352, ivtmp.1352,
	cmp	r5, #9	@ i,
	mla	ip, r4, ip, r3	@ dat, weight, dat, d
	bls	.L151	@,
	b	.L144	@
.L174:
	mvn	r0, #0	@ D.55081,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	str2val, .-str2val
	.align	2
	.type	vfmw_proc_write, %function
vfmw_proc_write:
	.fnstart
.LFB1652:
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
	ldr	ip, [r0, #128]	@ <variable>.private_data, <variable>.private_data
	ldr	ip, [ip, #72]	@ <variable>.private, <variable>.private
	ldr	ip, [ip, #20]	@ D.55258, <variable>.write
	cmp	ip, #0	@ D.55258,
	mvneq	r0, #37	@ D.55261,
	ldmeqfd	sp, {fp, sp, pc}	@
	blx	ip	@ D.55258
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	vfmw_proc_write, .-vfmw_proc_write
	.align	2
	.global	VCTRL_SetChanFsPartitionState
	.type	VCTRL_SetChanFsPartitionState, %function
VCTRL_SetChanFsPartitionState:
	.fnstart
.LFB1660:
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
	movw	ip, #:lower16:.LANCHOR0	@ tmp135,
	movt	ip, #:upper16:.LANCHOR0	@ tmp135,
	movw	r3, #:lower16:249264	@ tmp138,
	movt	r3, #:upper16:249264	@ tmp138,
	ldr	r2, [ip, r0, asl #2]	@ tmp136, s_pstVfmwChan
	str	r1, [r2, r3]	@ state, <variable>.FspInst.eFspPartitionState
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_SetChanFsPartitionState, .-VCTRL_SetChanFsPartitionState
	.align	2
	.global	VCTRL_GetCurChanFsSize
	.type	VCTRL_GetCurChanFsSize, %function
VCTRL_GetCurChanFsSize:
	.fnstart
.LFB1661:
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
	movw	r1, #:lower16:.LANCHOR0	@ tmp136,
	movt	r1, #:upper16:.LANCHOR0	@ tmp136,
	movw	r3, #:lower16:249272	@ tmp140,
	movt	r3, #:upper16:249272	@ tmp140,
	ldr	r2, [r1, r0, asl #2]	@ tmp137, s_pstVfmwChan
	ldr	r0, [r2, r3]	@, <variable>.s32CurFsSize
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_GetCurChanFsSize, .-VCTRL_GetCurChanFsSize
	.align	2
	.global	VCTRL_SetFsParamToChan
	.type	VCTRL_SetFsParamToChan, %function
VCTRL_SetFsParamToChan:
	.fnstart
.LFB1666:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp135,
	movt	r3, #:upper16:.LANCHOR0	@ tmp135,
	ldr	r5, [r1, #8]	@ <variable>.Length, <variable>.Length
	movw	ip, #:lower16:249280	@ tmp158,
	movt	ip, #:upper16:249280	@ tmp158,
	ldr	r4, [r3, r0, asl #2]	@ tmp136, s_pstVfmwChan
	movw	r2, #:lower16:249292	@ tmp159,
	movt	r2, #:upper16:249292	@ tmp159,
	str	r5, [r4, #284]	@ <variable>.Length, <variable>.s32VdmChanMemSize
	ldr	r4, [r3, r0, asl #2]	@ tmp139, s_pstVfmwChan
	ldr	r5, [r1, #0]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r5, [r4, #280]	@ <variable>.PhyAddr, <variable>.s32VdmChanMemAddr
	ldr	r4, [r3, r0, asl #2]	@ tmp142, s_pstVfmwChan
	ldr	r5, [r1, #0]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r5, [r4, #228]	@ <variable>.PhyAddr, <variable>.stChanMem_vdh.PhyAddr
	ldr	r4, [r3, r0, asl #2]	@ tmp145, s_pstVfmwChan
	ldr	r5, [r1, #4]	@ <variable>.VirAddr, <variable>.VirAddr
	str	r5, [r4, #224]	@ <variable>.VirAddr, <variable>.stChanMem_vdh.VirAddr
	ldr	r4, [r3, r0, asl #2]	@ tmp148, s_pstVfmwChan
	ldr	r5, [r1, #8]	@ <variable>.Length, <variable>.Length
	str	r5, [r4, #232]	@ <variable>.Length, <variable>.stChanMem_vdh.Length
	ldr	r4, [r3, r0, asl #2]	@ tmp151, s_pstVfmwChan
	ldr	r5, [r1, #12]	@ <variable>.FrameNum, <variable>.FrameNum
	str	r5, [r4, ip]	@ <variable>.FrameNum, <variable>.s32NeededFrameNum
	ldr	r3, [r3, r0, asl #2]	@ tmp155, s_pstVfmwChan
	ldr	r1, [r1, #16]	@ <variable>.NeedMMZ, <variable>.NeedMMZ
	str	r1, [r3, r2]	@ <variable>.NeedMMZ, <variable>.s32NeedMMZ
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	VCTRL_SetFsParamToChan, .-VCTRL_SetFsParamToChan
	.align	2
	.global	VCTRL_GetImageHeight
	.type	VCTRL_GetImageHeight, %function
VCTRL_GetImageHeight:
	.fnstart
.LFB1669:
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
	movw	r2, #:lower16:.LANCHOR0	@ tmp139,
	movt	r2, #:upper16:.LANCHOR0	@ tmp139,
	movw	r3, #:lower16:251592	@ tmp140,
	movt	r3, #:upper16:251592	@ tmp140,
	ldr	r0, [r2, r0, asl #2]	@ D.56041, s_pstVfmwChan
	ldr	r3, [r0, r3]	@ <variable>.stSynCtx.eVidStd, <variable>.stSynCtx.eVidStd
	cmp	r3, #2	@ <variable>.stSynCtx.eVidStd,
	beq	.L198	@,
	cmp	r3, #16	@ <variable>.stSynCtx.eVidStd,
	beq	.L199	@,
	cmp	r3, #0	@ <variable>.stSynCtx.eVidStd,
	movne	r0, #0	@ uImageHeight,
	ldmnefd	sp, {fp, sp, pc}	@
	add	r1, r0, #250880	@, D.56041,
	add	r0, r1, #720	@,,
	bl	H264DEC_GetImageHeight	@
	ldmfd	sp, {fp, sp, pc}	@
.L199:
	add	ip, r0, #250880	@, D.56041,
	add	r0, ip, #720	@,,
	bl	HEVCDEC_GetImageHeight	@
	ldmfd	sp, {fp, sp, pc}	@
.L198:
	add	r0, r0, #250880	@, D.56041,
	add	r0, r0, #720	@,,
	bl	MPEG4DEC_GetImageHeight	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_GetImageHeight, .-VCTRL_GetImageHeight
	.align	2
	.global	VCTRL_GetImageWidth
	.type	VCTRL_GetImageWidth, %function
VCTRL_GetImageWidth:
	.fnstart
.LFB1668:
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
	movw	r2, #:lower16:.LANCHOR0	@ tmp139,
	movt	r2, #:upper16:.LANCHOR0	@ tmp139,
	movw	r3, #:lower16:251592	@ tmp140,
	movt	r3, #:upper16:251592	@ tmp140,
	ldr	r0, [r2, r0, asl #2]	@ D.56022, s_pstVfmwChan
	ldr	r3, [r0, r3]	@ <variable>.stSynCtx.eVidStd, <variable>.stSynCtx.eVidStd
	cmp	r3, #2	@ <variable>.stSynCtx.eVidStd,
	beq	.L205	@,
	cmp	r3, #16	@ <variable>.stSynCtx.eVidStd,
	beq	.L206	@,
	cmp	r3, #0	@ <variable>.stSynCtx.eVidStd,
	movne	r0, #0	@ uImageWidth,
	ldmnefd	sp, {fp, sp, pc}	@
	add	r1, r0, #250880	@, D.56022,
	add	r0, r1, #720	@,,
	bl	H264DEC_GetImageWidth	@
	ldmfd	sp, {fp, sp, pc}	@
.L206:
	add	ip, r0, #250880	@, D.56022,
	add	r0, ip, #720	@,,
	bl	HEVCDEC_GetImageWidth	@
	ldmfd	sp, {fp, sp, pc}	@
.L205:
	add	r0, r0, #250880	@, D.56022,
	add	r0, r0, #720	@,,
	bl	MPEG4DEC_GetImageWidth	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_GetImageWidth, .-VCTRL_GetImageWidth
	.align	2
	.global	VCTRL_CloseHardware
	.type	VCTRL_CloseHardware, %function
VCTRL_CloseHardware:
	.fnstart
.LFB1659:
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
	mov	r2, #0	@ ivtmp.1535,
	movw	r6, #:lower16:.LANCHOR0	@ tmp241,
	movt	r6, #:upper16:.LANCHOR0	@ tmp241,
	mov	r5, r2	@ dsp_need_flag, ivtmp.1535
	mov	r4, r2	@ bpd_need_flag, ivtmp.1535
	mov	r0, r2	@ vdm_need_flag, ivtmp.1535
.L217:
	ldr	r3, [r6, r2]	@ D.55522, s_pstVfmwChan
	cmp	r3, #0	@ D.55522,
	beq	.L210	@,
	cmp	r0, #0	@ vdm_need_flag,
	ldr	r1, [r3, #552]	@ eVidStd, <variable>.eVidStd
	bne	.L211	@,
	ldr	ip, [r3, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	ip, #1	@ <variable>.s32IsOpen,
	beq	.L226	@,
.L211:
	eor	ip, r4, #1	@ tmp216, bpd_need_flag,
	cmp	r1, #1	@ eVidStd,
	movne	ip, #0	@, tmp221
	andeq	ip, ip, #1	@,, tmp221, tmp216
	cmp	ip, #0	@ tmp221,
	beq	.L213	@,
	ldr	ip, [r3, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	ip, #1	@ <variable>.s32IsOpen,
	movne	r4, #0	@ bpd_need_flag,
	beq	.L227	@,
.L215:
	mov	ip, #0	@ ScdLowdlyEnable,
.L216:
	cmp	r5, #0	@ dsp_need_flag,
	bne	.L210	@,
	cmp	r1, #6	@ eVidStd,
	cmpne	ip, #1	@, ScdLowdlyEnable,
	bne	.L210	@,
	ldr	r1, [r3, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r1, #1	@ <variable>.s32IsOpen,
	beq	.L228	@,
.L210:
	add	r2, r2, #4	@ ivtmp.1535, ivtmp.1535,
	cmp	r2, #64	@ ivtmp.1535,
	bne	.L217	@,
	cmp	r0, #0	@ vdm_need_flag,
	bne	.L218	@,
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp234,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp234,
	ldr	r3, [r3, #4]	@ D.55583, g_vdm_hal_fun_ptr.pfun_VDMDRV_CloseHardware
	cmp	r3, #0	@ D.55583,
	beq	.L229	@,
	blx	r3	@ D.55583
.L220:
	movw	r0, #:lower16:g_ScdDrvParam	@ tmp236,
	movt	r0, #:upper16:g_ScdDrvParam	@ tmp236,
	mov	r2, #0	@ tmp237,
	str	r2, [r0, #84]	@ tmp237, <variable>.SCDState
.L218:
	cmp	r5, #0	@ dsp_need_flag,
	bne	.L221	@,
	movw	lr, #:lower16:g_vdm_hal_fun_ptr	@ tmp238,
	movt	lr, #:upper16:g_vdm_hal_fun_ptr	@ tmp238,
	ldr	r3, [lr, #12]	@ D.55593, g_vdm_hal_fun_ptr.pfun_DSPDRV_CloseHardware
	cmp	r3, #0	@ D.55593,
	beq	.L230	@,
	mov	r0, r5	@, dsp_need_flag
	blx	r3	@ D.55593
.L221:
	cmp	r4, #0	@ bpd_need_flag,
	ldmnefd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	movw	ip, #:lower16:g_vdm_hal_fun_ptr	@ tmp240,
	movt	ip, #:upper16:g_vdm_hal_fun_ptr	@ tmp240,
	ldr	r3, [ip, #28]	@ D.55600, g_vdm_hal_fun_ptr.pfun_BPDDRV_CloseHardware
	cmp	r3, #0	@ D.55600,
	ldmeqfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	blx	r3	@ D.55600
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L227:
	ldr	r4, [r3, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r4, #1	@ <variable>.s32IsRun,
	movne	r4, #0	@, bpd_need_flag
	moveq	r4, #1	@, bpd_need_flag
	b	.L215	@
.L213:
	cmp	r1, #0	@ eVidStd,
	ldreq	ip, [r3, #1268]	@ ScdLowdlyEnable, <variable>.stSynExtraData.s32LowdlyEnable
	beq	.L216	@,
	b	.L215	@
.L226:
	ldr	ip, [r3, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	ip, #1	@ <variable>.s32IsRun,
	bne	.L211	@,
	cmp	r1, #5	@ eVidStd,
	cmpne	r1, #3	@, eVidStd,
	bhi	.L231	@,
.L212:
	mov	r0, #1	@ vdm_need_flag,
	b	.L211	@
.L228:
	ldr	r5, [r3, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r5, #1	@ <variable>.s32IsRun,
	movne	r5, #0	@, dsp_need_flag,
	b	.L210	@
.L231:
	cmp	r1, #6	@ eVidStd,
	cmpne	r1, #8	@, eVidStd,
	beq	.L212	@,
	cmp	r1, #9	@ eVidStd,
	cmpne	r1, #10	@, eVidStd,
	beq	.L212	@,
	cmp	r1, #11	@ eVidStd,
	cmpne	r1, #12	@, eVidStd,
	beq	.L212	@,
	cmp	r1, #13	@ eVidStd,
	cmpne	r1, #15	@, eVidStd,
	beq	.L212	@,
	cmp	r1, #16	@ eVidStd,
	movne	r0, #0	@, vdm_need_flag
	moveq	r0, #1	@, vdm_need_flag
	b	.L211	@
.L229:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #10259	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	b	.L220	@
.L230:
	mov	r0, r5	@, dsp_need_flag
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #10271	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	b	.L221	@
	.fnend
	.size	VCTRL_CloseHardware, .-VCTRL_CloseHardware
	.align	2
	.global	VCTRL_OpenHardware
	.type	VCTRL_OpenHardware, %function
VCTRL_OpenHardware:
	.fnstart
.LFB1658:
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
	cmp	r0, #15	@ ChanID,
	mov	r5, r0	@ ChanID, ChanID
	bhi	.L331	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp585,
	movt	r4, #:upper16:.LANCHOR0	@ tmp585,
	ldr	r0, [r4, r0, asl #2]	@ D.55432, s_pstVfmwChan
	cmp	r0, #0	@ D.55432,
	beq	.L332	@,
	ldr	r3, [r0, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	bne	.L236	@,
	ldr	r3, [r0, #552]	@ D.55440, <variable>.eVidStd
	cmp	r3, #19	@ D.55440,
	beq	.L236	@,
	cmp	r3, #7	@ D.55440,
	cmpne	r3, #4	@, D.55440,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	cmp	r3, #14	@ D.55440,
	cmpne	r3, #18	@, D.55440,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	ldr	r3, [r4, #0]	@ D.56205, s_pstVfmwChan
	cmp	r3, #0	@ D.56205,
	beq	.L238	@,
	ldr	r2, [r3, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #0	@ <variable>.s32IsOpen,
	beq	.L238	@,
	ldr	r0, [r3, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r0, #0	@ <variable>.s32IsRun,
	beq	.L238	@,
	ldr	r1, [r3, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r1, #0	@ <variable>.s32Priority,
	beq	.L238	@,
	ldr	r3, [r3, #552]	@ temp.1581, <variable>.eVidStd
	cmp	r3, #19	@ temp.1581,
	beq	.L238	@,
	cmp	r3, #4	@ temp.1581,
	cmpne	r3, #7	@, temp.1581,
	beq	.L238	@,
	cmp	r3, #14	@ temp.1581,
	beq	.L238	@,
	subs	r3, r3, #18	@ activeChanNum, temp.1581,
	movne	r3, #1	@ activeChanNum
	b	.L239	@
.L236:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #10096	@,
	movt	r1, #:upper16:.LC3	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L331:
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #10084	@,
	movt	r1, #:upper16:.LC1	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L238:
	mov	r3, #0	@ activeChanNum,
.L239:
	ldr	r2, [r4, #4]	@ temp.1572, s_pstVfmwChan
	cmp	r2, #0	@ temp.1572,
	beq	.L240	@,
	ldr	ip, [r2, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	ip, #0	@ <variable>.s32IsOpen,
	beq	.L240	@,
	ldr	r0, [r2, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r0, #0	@ <variable>.s32IsRun,
	beq	.L240	@,
	ldr	r1, [r2, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r1, #0	@ <variable>.s32Priority,
	beq	.L240	@,
	ldr	r2, [r2, #552]	@ D.56200, <variable>.eVidStd
	cmp	r2, #19	@ D.56200,
	beq	.L240	@,
	cmp	r2, #4	@ D.56200,
	cmpne	r2, #7	@, D.56200,
	beq	.L240	@,
	cmp	r2, #14	@ D.56200,
	beq	.L240	@,
	cmp	r2, #18	@ D.56200,
	addne	r3, r3, #1	@ activeChanNum, activeChanNum,
.L240:
	ldr	r2, [r4, #8]	@ temp.1594, s_pstVfmwChan
	cmp	r2, #0	@ temp.1594,
	beq	.L241	@,
	ldr	ip, [r2, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	ip, #0	@ <variable>.s32IsOpen,
	beq	.L241	@,
	ldr	r0, [r2, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r0, #0	@ <variable>.s32IsRun,
	beq	.L241	@,
	ldr	r1, [r2, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r1, #0	@ <variable>.s32Priority,
	beq	.L241	@,
	ldr	r2, [r2, #552]	@ temp.1598, <variable>.eVidStd
	cmp	r2, #19	@ temp.1598,
	beq	.L241	@,
	cmp	r2, #4	@ temp.1598,
	cmpne	r2, #7	@, temp.1598,
	beq	.L241	@,
	cmp	r2, #14	@ temp.1598,
	beq	.L241	@,
	cmp	r2, #18	@ temp.1598,
	addne	r3, r3, #1	@ activeChanNum, activeChanNum,
.L241:
	ldr	r2, [r4, #12]	@ temp.1602, s_pstVfmwChan
	cmp	r2, #0	@ temp.1602,
	beq	.L242	@,
	ldr	ip, [r2, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	ip, #0	@ <variable>.s32IsOpen,
	beq	.L242	@,
	ldr	r0, [r2, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r0, #0	@ <variable>.s32IsRun,
	beq	.L242	@,
	ldr	r1, [r2, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r1, #0	@ <variable>.s32Priority,
	beq	.L242	@,
	ldr	r2, [r2, #552]	@ temp.1606, <variable>.eVidStd
	cmp	r2, #19	@ temp.1606,
	beq	.L242	@,
	cmp	r2, #4	@ temp.1606,
	cmpne	r2, #7	@, temp.1606,
	beq	.L242	@,
	cmp	r2, #14	@ temp.1606,
	beq	.L242	@,
	cmp	r2, #18	@ temp.1606,
	addne	r3, r3, #1	@ activeChanNum, activeChanNum,
.L242:
	ldr	r2, [r4, #16]	@ temp.1610, s_pstVfmwChan
	cmp	r2, #0	@ temp.1610,
	beq	.L243	@,
	ldr	ip, [r2, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	ip, #0	@ <variable>.s32IsOpen,
	beq	.L243	@,
	ldr	r0, [r2, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r0, #0	@ <variable>.s32IsRun,
	beq	.L243	@,
	ldr	r1, [r2, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r1, #0	@ <variable>.s32Priority,
	beq	.L243	@,
	ldr	r2, [r2, #552]	@ temp.1614, <variable>.eVidStd
	cmp	r2, #19	@ temp.1614,
	beq	.L243	@,
	cmp	r2, #4	@ temp.1614,
	cmpne	r2, #7	@, temp.1614,
	beq	.L243	@,
	cmp	r2, #14	@ temp.1614,
	beq	.L243	@,
	cmp	r2, #18	@ temp.1614,
	addne	r3, r3, #1	@ activeChanNum, activeChanNum,
.L243:
	ldr	r2, [r4, #20]	@ temp.1618, s_pstVfmwChan
	cmp	r2, #0	@ temp.1618,
	beq	.L244	@,
	ldr	ip, [r2, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	ip, #0	@ <variable>.s32IsOpen,
	beq	.L244	@,
	ldr	r0, [r2, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r0, #0	@ <variable>.s32IsRun,
	beq	.L244	@,
	ldr	r1, [r2, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r1, #0	@ <variable>.s32Priority,
	beq	.L244	@,
	ldr	r2, [r2, #552]	@ temp.1622, <variable>.eVidStd
	cmp	r2, #19	@ temp.1622,
	beq	.L244	@,
	cmp	r2, #4	@ temp.1622,
	cmpne	r2, #7	@, temp.1622,
	beq	.L244	@,
	cmp	r2, #14	@ temp.1622,
	beq	.L244	@,
	cmp	r2, #18	@ temp.1622,
	addne	r3, r3, #1	@ activeChanNum, activeChanNum,
.L244:
	ldr	r2, [r4, #24]	@ temp.1626, s_pstVfmwChan
	cmp	r2, #0	@ temp.1626,
	beq	.L245	@,
	ldr	ip, [r2, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	ip, #0	@ <variable>.s32IsOpen,
	beq	.L245	@,
	ldr	r0, [r2, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r0, #0	@ <variable>.s32IsRun,
	beq	.L245	@,
	ldr	r1, [r2, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r1, #0	@ <variable>.s32Priority,
	beq	.L245	@,
	ldr	r2, [r2, #552]	@ temp.1630, <variable>.eVidStd
	cmp	r2, #19	@ temp.1630,
	beq	.L245	@,
	cmp	r2, #4	@ temp.1630,
	cmpne	r2, #7	@, temp.1630,
	beq	.L245	@,
	cmp	r2, #14	@ temp.1630,
	beq	.L245	@,
	cmp	r2, #18	@ temp.1630,
	addne	r3, r3, #1	@ activeChanNum, activeChanNum,
.L245:
	ldr	r2, [r4, #28]	@ temp.1634, s_pstVfmwChan
	cmp	r2, #0	@ temp.1634,
	beq	.L246	@,
	ldr	ip, [r2, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	ip, #0	@ <variable>.s32IsOpen,
	beq	.L246	@,
	ldr	r0, [r2, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r0, #0	@ <variable>.s32IsRun,
	beq	.L246	@,
	ldr	r1, [r2, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r1, #0	@ <variable>.s32Priority,
	beq	.L246	@,
	ldr	r2, [r2, #552]	@ temp.1638, <variable>.eVidStd
	cmp	r2, #19	@ temp.1638,
	beq	.L246	@,
	cmp	r2, #4	@ temp.1638,
	cmpne	r2, #7	@, temp.1638,
	beq	.L246	@,
	cmp	r2, #14	@ temp.1638,
	beq	.L246	@,
	cmp	r2, #18	@ temp.1638,
	addne	r3, r3, #1	@ activeChanNum, activeChanNum,
.L246:
	ldr	r2, [r4, #32]	@ temp.1642, s_pstVfmwChan
	cmp	r2, #0	@ temp.1642,
	beq	.L247	@,
	ldr	ip, [r2, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	ip, #0	@ <variable>.s32IsOpen,
	beq	.L247	@,
	ldr	r0, [r2, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r0, #0	@ <variable>.s32IsRun,
	beq	.L247	@,
	ldr	r1, [r2, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r1, #0	@ <variable>.s32Priority,
	beq	.L247	@,
	ldr	r2, [r2, #552]	@ temp.1646, <variable>.eVidStd
	cmp	r2, #19	@ temp.1646,
	beq	.L247	@,
	cmp	r2, #4	@ temp.1646,
	cmpne	r2, #7	@, temp.1646,
	beq	.L247	@,
	cmp	r2, #14	@ temp.1646,
	beq	.L247	@,
	cmp	r2, #18	@ temp.1646,
	addne	r3, r3, #1	@ activeChanNum, activeChanNum,
.L247:
	ldr	r2, [r4, #36]	@ temp.1650, s_pstVfmwChan
	cmp	r2, #0	@ temp.1650,
	beq	.L248	@,
	ldr	ip, [r2, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	ip, #0	@ <variable>.s32IsOpen,
	beq	.L248	@,
	ldr	r0, [r2, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r0, #0	@ <variable>.s32IsRun,
	beq	.L248	@,
	ldr	r1, [r2, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r1, #0	@ <variable>.s32Priority,
	beq	.L248	@,
	ldr	r2, [r2, #552]	@ temp.1654, <variable>.eVidStd
	cmp	r2, #19	@ temp.1654,
	beq	.L248	@,
	cmp	r2, #4	@ temp.1654,
	cmpne	r2, #7	@, temp.1654,
	beq	.L248	@,
	cmp	r2, #14	@ temp.1654,
	beq	.L248	@,
	cmp	r2, #18	@ temp.1654,
	addne	r3, r3, #1	@ activeChanNum, activeChanNum,
.L248:
	ldr	r2, [r4, #40]	@ temp.1658, s_pstVfmwChan
	cmp	r2, #0	@ temp.1658,
	beq	.L249	@,
	ldr	ip, [r2, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	ip, #0	@ <variable>.s32IsOpen,
	beq	.L249	@,
	ldr	r0, [r2, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r0, #0	@ <variable>.s32IsRun,
	beq	.L249	@,
	ldr	r1, [r2, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r1, #0	@ <variable>.s32Priority,
	beq	.L249	@,
	ldr	r2, [r2, #552]	@ temp.1662, <variable>.eVidStd
	cmp	r2, #19	@ temp.1662,
	beq	.L249	@,
	cmp	r2, #4	@ temp.1662,
	cmpne	r2, #7	@, temp.1662,
	beq	.L249	@,
	cmp	r2, #14	@ temp.1662,
	beq	.L249	@,
	cmp	r2, #18	@ temp.1662,
	addne	r3, r3, #1	@ activeChanNum, activeChanNum,
.L249:
	ldr	r2, [r4, #44]	@ temp.1666, s_pstVfmwChan
	cmp	r2, #0	@ temp.1666,
	beq	.L250	@,
	ldr	ip, [r2, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	ip, #0	@ <variable>.s32IsOpen,
	beq	.L250	@,
	ldr	r0, [r2, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r0, #0	@ <variable>.s32IsRun,
	beq	.L250	@,
	ldr	r1, [r2, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r1, #0	@ <variable>.s32Priority,
	beq	.L250	@,
	ldr	r2, [r2, #552]	@ temp.1670, <variable>.eVidStd
	cmp	r2, #19	@ temp.1670,
	beq	.L250	@,
	cmp	r2, #4	@ temp.1670,
	cmpne	r2, #7	@, temp.1670,
	beq	.L250	@,
	cmp	r2, #14	@ temp.1670,
	beq	.L250	@,
	cmp	r2, #18	@ temp.1670,
	addne	r3, r3, #1	@ activeChanNum, activeChanNum,
.L250:
	ldr	r2, [r4, #48]	@ temp.1674, s_pstVfmwChan
	cmp	r2, #0	@ temp.1674,
	beq	.L251	@,
	ldr	ip, [r2, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	ip, #0	@ <variable>.s32IsOpen,
	beq	.L251	@,
	ldr	r0, [r2, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r0, #0	@ <variable>.s32IsRun,
	beq	.L251	@,
	ldr	r1, [r2, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r1, #0	@ <variable>.s32Priority,
	beq	.L251	@,
	ldr	r2, [r2, #552]	@ temp.1678, <variable>.eVidStd
	cmp	r2, #19	@ temp.1678,
	beq	.L251	@,
	cmp	r2, #4	@ temp.1678,
	cmpne	r2, #7	@, temp.1678,
	beq	.L251	@,
	cmp	r2, #14	@ temp.1678,
	beq	.L251	@,
	cmp	r2, #18	@ temp.1678,
	addne	r3, r3, #1	@ activeChanNum, activeChanNum,
.L251:
	ldr	r2, [r4, #52]	@ temp.1683, s_pstVfmwChan
	cmp	r2, #0	@ temp.1683,
	beq	.L252	@,
	ldr	ip, [r2, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	ip, #0	@ <variable>.s32IsOpen,
	beq	.L252	@,
	ldr	r0, [r2, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r0, #0	@ <variable>.s32IsRun,
	beq	.L252	@,
	ldr	r1, [r2, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r1, #0	@ <variable>.s32Priority,
	beq	.L252	@,
	ldr	r2, [r2, #552]	@ temp.1687, <variable>.eVidStd
	cmp	r2, #19	@ temp.1687,
	beq	.L252	@,
	cmp	r2, #4	@ temp.1687,
	cmpne	r2, #7	@, temp.1687,
	beq	.L252	@,
	cmp	r2, #14	@ temp.1687,
	beq	.L252	@,
	cmp	r2, #18	@ temp.1687,
	addne	r3, r3, #1	@ activeChanNum, activeChanNum,
.L252:
	ldr	r2, [r4, #56]	@ temp.1691, s_pstVfmwChan
	cmp	r2, #0	@ temp.1691,
	beq	.L253	@,
	ldr	ip, [r2, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	ip, #0	@ <variable>.s32IsOpen,
	beq	.L253	@,
	ldr	r0, [r2, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r0, #0	@ <variable>.s32IsRun,
	beq	.L253	@,
	ldr	r1, [r2, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r1, #0	@ <variable>.s32Priority,
	beq	.L253	@,
	ldr	r2, [r2, #552]	@ temp.1695, <variable>.eVidStd
	cmp	r2, #19	@ temp.1695,
	beq	.L253	@,
	cmp	r2, #4	@ temp.1695,
	cmpne	r2, #7	@, temp.1695,
	beq	.L253	@,
	cmp	r2, #14	@ temp.1695,
	beq	.L253	@,
	cmp	r2, #18	@ temp.1695,
	addne	r3, r3, #1	@ activeChanNum, activeChanNum,
.L253:
	ldr	r2, [r4, #60]	@ temp.1585, s_pstVfmwChan
	cmp	r2, #0	@ temp.1585,
	beq	.L254	@,
	ldr	ip, [r2, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	ip, #0	@ <variable>.s32IsOpen,
	bne	.L333	@,
.L254:
	cmp	r3, #1	@ activeChanNum,
	movwne	r2, #:lower16:g_pstRegCrg	@ tmp584,
	movtne	r2, #:upper16:g_pstRegCrg	@ tmp584,
	beq	.L334	@,
.L256:
	ldr	r3, [r4, #0]	@ temp.1699, s_pstVfmwChan
	cmp	r3, #0	@ temp.1699,
	beq	.L261	@,
	ldr	r1, [r3, #552]	@ eVidStd.1700, <variable>.eVidStd
	cmp	r1, #0	@ eVidStd.1700,
	beq	.L260	@,
	mov	r3, #0	@ prephitmp.1701,
.L262:
	cmp	r1, #6	@ eVidStd.1700,
	orreq	r3, r3, #1	@,, dsp_need_flag, prephitmp.1701
.L261:
	ldr	r1, [r4, #4]	@ temp.1705, s_pstVfmwChan
	cmp	r1, #0	@ temp.1705,
	beq	.L263	@,
	ldr	r0, [r1, #552]	@ eVidStd.1706, <variable>.eVidStd
	cmp	r0, #0	@ eVidStd.1706,
	beq	.L264	@,
	mov	r1, #0	@ prephitmp.1707,
.L266:
	cmp	r0, #6	@ eVidStd.1706,
	orreq	r1, r1, #1	@,, tmp440, prephitmp.1707
	cmp	r1, #0	@ tmp440,
	movne	r3, #1	@ dsp_need_flag,
.L263:
	ldr	r1, [r4, #8]	@ temp.1711, s_pstVfmwChan
	cmp	r1, #0	@ temp.1711,
	beq	.L267	@,
	ldr	r0, [r1, #552]	@ eVidStd.1712, <variable>.eVidStd
	cmp	r0, #0	@ eVidStd.1712,
	beq	.L268	@,
	mov	r1, #0	@ prephitmp.1713,
.L270:
	cmp	r0, #6	@ eVidStd.1712,
	orreq	r1, r1, #1	@,, tmp449, prephitmp.1713
	cmp	r1, #0	@ tmp449,
	movne	r3, #1	@ dsp_need_flag,
.L267:
	ldr	r1, [r4, #12]	@ temp.1717, s_pstVfmwChan
	cmp	r1, #0	@ temp.1717,
	beq	.L271	@,
	ldr	r0, [r1, #552]	@ eVidStd.1718, <variable>.eVidStd
	cmp	r0, #0	@ eVidStd.1718,
	beq	.L272	@,
	mov	r1, #0	@ prephitmp.1719,
.L274:
	cmp	r0, #6	@ eVidStd.1718,
	orreq	r1, r1, #1	@,, tmp458, prephitmp.1719
	cmp	r1, #0	@ tmp458,
	movne	r3, #1	@ dsp_need_flag,
.L271:
	ldr	r1, [r4, #16]	@ temp.1723, s_pstVfmwChan
	cmp	r1, #0	@ temp.1723,
	beq	.L275	@,
	ldr	r0, [r1, #552]	@ eVidStd.1724, <variable>.eVidStd
	cmp	r0, #0	@ eVidStd.1724,
	beq	.L276	@,
	mov	r1, #0	@ prephitmp.1725,
.L278:
	cmp	r0, #6	@ eVidStd.1724,
	orreq	r1, r1, #1	@,, tmp467, prephitmp.1725
	cmp	r1, #0	@ tmp467,
	movne	r3, #1	@ dsp_need_flag,
.L275:
	ldr	r1, [r4, #20]	@ temp.1729, s_pstVfmwChan
	cmp	r1, #0	@ temp.1729,
	beq	.L279	@,
	ldr	r0, [r1, #552]	@ eVidStd.1730, <variable>.eVidStd
	cmp	r0, #0	@ eVidStd.1730,
	beq	.L280	@,
	mov	r1, #0	@ prephitmp.1731,
.L282:
	cmp	r0, #6	@ eVidStd.1730,
	orreq	r1, r1, #1	@,, tmp476, prephitmp.1731
	cmp	r1, #0	@ tmp476,
	movne	r3, #1	@ dsp_need_flag,
.L279:
	ldr	r1, [r4, #24]	@ temp.1735, s_pstVfmwChan
	cmp	r1, #0	@ temp.1735,
	beq	.L283	@,
	ldr	r0, [r1, #552]	@ eVidStd.1736, <variable>.eVidStd
	cmp	r0, #0	@ eVidStd.1736,
	beq	.L284	@,
	mov	r1, #0	@ prephitmp.1737,
.L286:
	cmp	r0, #6	@ eVidStd.1736,
	orreq	r1, r1, #1	@,, tmp485, prephitmp.1737
	cmp	r1, #0	@ tmp485,
	movne	r3, #1	@ dsp_need_flag,
.L283:
	ldr	r1, [r4, #28]	@ temp.1741, s_pstVfmwChan
	cmp	r1, #0	@ temp.1741,
	beq	.L287	@,
	ldr	r0, [r1, #552]	@ eVidStd.1742, <variable>.eVidStd
	cmp	r0, #0	@ eVidStd.1742,
	beq	.L288	@,
	mov	r1, #0	@ prephitmp.1743,
.L290:
	cmp	r0, #6	@ eVidStd.1742,
	orreq	r1, r1, #1	@,, tmp494, prephitmp.1743
	cmp	r1, #0	@ tmp494,
	movne	r3, #1	@ dsp_need_flag,
.L287:
	ldr	r1, [r4, #32]	@ temp.1747, s_pstVfmwChan
	cmp	r1, #0	@ temp.1747,
	beq	.L291	@,
	ldr	r0, [r1, #552]	@ eVidStd.1748, <variable>.eVidStd
	cmp	r0, #0	@ eVidStd.1748,
	beq	.L292	@,
	mov	r1, #0	@ prephitmp.1749,
.L294:
	cmp	r0, #6	@ eVidStd.1748,
	orreq	r1, r1, #1	@,, tmp503, prephitmp.1749
	cmp	r1, #0	@ tmp503,
	movne	r3, #1	@ dsp_need_flag,
.L291:
	ldr	r1, [r4, #36]	@ temp.1753, s_pstVfmwChan
	cmp	r1, #0	@ temp.1753,
	beq	.L295	@,
	ldr	r0, [r1, #552]	@ eVidStd.1754, <variable>.eVidStd
	cmp	r0, #0	@ eVidStd.1754,
	beq	.L296	@,
	mov	r1, #0	@ prephitmp.1755,
.L298:
	cmp	r0, #6	@ eVidStd.1754,
	orreq	r1, r1, #1	@,, tmp512, prephitmp.1755
	cmp	r1, #0	@ tmp512,
	movne	r3, #1	@ dsp_need_flag,
.L295:
	ldr	r1, [r4, #40]	@ temp.1759, s_pstVfmwChan
	cmp	r1, #0	@ temp.1759,
	beq	.L299	@,
	ldr	r0, [r1, #552]	@ eVidStd.1760, <variable>.eVidStd
	cmp	r0, #0	@ eVidStd.1760,
	beq	.L300	@,
	mov	r1, #0	@ prephitmp.1761,
.L302:
	cmp	r0, #6	@ eVidStd.1760,
	orreq	r1, r1, #1	@,, tmp521, prephitmp.1761
	cmp	r1, #0	@ tmp521,
	movne	r3, #1	@ dsp_need_flag,
.L299:
	ldr	r1, [r4, #44]	@ temp.1765, s_pstVfmwChan
	cmp	r1, #0	@ temp.1765,
	beq	.L303	@,
	ldr	r0, [r1, #552]	@ eVidStd.1766, <variable>.eVidStd
	cmp	r0, #0	@ eVidStd.1766,
	beq	.L304	@,
	mov	r1, #0	@ prephitmp.1767,
.L306:
	cmp	r0, #6	@ eVidStd.1766,
	orreq	r1, r1, #1	@,, tmp530, prephitmp.1767
	cmp	r1, #0	@ tmp530,
	movne	r3, #1	@ dsp_need_flag,
.L303:
	ldr	r1, [r4, #48]	@ temp.1771, s_pstVfmwChan
	cmp	r1, #0	@ temp.1771,
	beq	.L307	@,
	ldr	r0, [r1, #552]	@ eVidStd.1772, <variable>.eVidStd
	cmp	r0, #0	@ eVidStd.1772,
	beq	.L308	@,
	mov	r1, #0	@ prephitmp.1773,
.L310:
	cmp	r0, #6	@ eVidStd.1772,
	orreq	r1, r1, #1	@,, tmp539, prephitmp.1773
	cmp	r1, #0	@ tmp539,
	movne	r3, #1	@ dsp_need_flag,
.L307:
	ldr	r1, [r4, #52]	@ temp.1777, s_pstVfmwChan
	cmp	r1, #0	@ temp.1777,
	beq	.L311	@,
	ldr	r0, [r1, #552]	@ eVidStd.1778, <variable>.eVidStd
	cmp	r0, #0	@ eVidStd.1778,
	beq	.L312	@,
	mov	r1, #0	@ prephitmp.1779,
.L314:
	cmp	r0, #6	@ eVidStd.1778,
	orreq	r1, r1, #1	@,, tmp548, prephitmp.1779
	cmp	r1, #0	@ tmp548,
	movne	r3, #1	@ dsp_need_flag,
.L311:
	ldr	r1, [r4, #56]	@ temp.1783, s_pstVfmwChan
	cmp	r1, #0	@ temp.1783,
	beq	.L315	@,
	ldr	r0, [r1, #552]	@ eVidStd.1784, <variable>.eVidStd
	cmp	r0, #0	@ eVidStd.1784,
	beq	.L316	@,
	mov	r1, #0	@ prephitmp.1785,
.L318:
	cmp	r0, #6	@ eVidStd.1784,
	orreq	r1, r1, #1	@,, tmp557, prephitmp.1785
	cmp	r1, #0	@ tmp557,
	movne	r3, #1	@ dsp_need_flag,
.L315:
	ldr	r1, [r4, #60]	@ D.55455, s_pstVfmwChan
	cmp	r1, #0	@ D.55455,
	beq	.L319	@,
	ldr	r0, [r1, #552]	@ eVidStd, <variable>.eVidStd
	cmp	r0, #0	@ eVidStd,
	movne	r1, #0	@ prephitmp.1559,
	bne	.L321	@,
	ldr	r1, [r1, #1268]	@ <variable>.stSynExtraData.s32LowdlyEnable, <variable>.stSynExtraData.s32LowdlyEnable
	cmp	r1, #1	@ <variable>.stSynExtraData.s32LowdlyEnable,
	movne	r1, #0	@, prephitmp.1559
	moveq	r1, #1	@, prephitmp.1559
.L321:
	cmp	r0, #6	@ eVidStd,
	movne	r0, r1	@, tmp569, prephitmp.1559
	orreq	r0, r1, #1	@,, tmp569, prephitmp.1559
	cmp	r0, #0	@ tmp569,
	beq	.L319	@,
	ldr	r2, [r2, #0]	@ g_pstRegCrg.1579, g_pstRegCrg
	ldr	r3, [r2, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
.L326:
	orr	r3, r3, #2	@ u32TmpValue, u32TmpValue,
	b	.L324	@
.L319:
	ldr	r2, [r2, #0]	@ g_pstRegCrg.1579, g_pstRegCrg
	cmp	r3, #1	@ dsp_need_flag,
	ldr	r3, [r2, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	bfcne	r3, #1, #1	@ u32TmpValue,,
	beq	.L326	@,
.L324:
	str	r3, [r2, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	ldr	r3, [r4, r5, asl #2]	@ tmp573, s_pstVfmwChan
	ldr	r2, [r3, #552]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r2, #1	@ <variable>.eVidStd,
	ldmnefd	sp, {r4, r5, fp, sp, pc}	@
	movw	ip, #:lower16:g_vdm_hal_fun_ptr	@ tmp575,
	movt	ip, #:upper16:g_vdm_hal_fun_ptr	@ tmp575,
	ldr	r3, [ip, #24]	@ D.55496, g_vdm_hal_fun_ptr.pfun_BPDDRV_OpenHardware
	cmp	r3, #0	@ D.55496,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	blx	r3	@ D.55496
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L260:
	ldr	r3, [r3, #1268]	@ <variable>.stSynExtraData.s32LowdlyEnable, <variable>.stSynExtraData.s32LowdlyEnable
	cmp	r3, #1	@ <variable>.stSynExtraData.s32LowdlyEnable,
	movne	r3, #0	@, prephitmp.1701
	moveq	r3, #1	@, prephitmp.1701
	b	.L262	@
.L264:
	ldr	r1, [r1, #1268]	@ <variable>.stSynExtraData.s32LowdlyEnable, <variable>.stSynExtraData.s32LowdlyEnable
	cmp	r1, #1	@ <variable>.stSynExtraData.s32LowdlyEnable,
	movne	r1, #0	@, prephitmp.1707
	moveq	r1, #1	@, prephitmp.1707
	b	.L266	@
.L268:
	ldr	ip, [r1, #1268]	@ <variable>.stSynExtraData.s32LowdlyEnable, <variable>.stSynExtraData.s32LowdlyEnable
	cmp	ip, #1	@ <variable>.stSynExtraData.s32LowdlyEnable,
	movne	r1, #0	@, prephitmp.1713
	moveq	r1, #1	@, prephitmp.1713
	b	.L270	@
.L272:
	ldr	r1, [r1, #1268]	@ <variable>.stSynExtraData.s32LowdlyEnable, <variable>.stSynExtraData.s32LowdlyEnable
	cmp	r1, #1	@ <variable>.stSynExtraData.s32LowdlyEnable,
	movne	r1, #0	@, prephitmp.1719
	moveq	r1, #1	@, prephitmp.1719
	b	.L274	@
.L276:
	ldr	ip, [r1, #1268]	@ <variable>.stSynExtraData.s32LowdlyEnable, <variable>.stSynExtraData.s32LowdlyEnable
	cmp	ip, #1	@ <variable>.stSynExtraData.s32LowdlyEnable,
	movne	r1, #0	@, prephitmp.1725
	moveq	r1, #1	@, prephitmp.1725
	b	.L278	@
.L280:
	ldr	r1, [r1, #1268]	@ <variable>.stSynExtraData.s32LowdlyEnable, <variable>.stSynExtraData.s32LowdlyEnable
	cmp	r1, #1	@ <variable>.stSynExtraData.s32LowdlyEnable,
	movne	r1, #0	@, prephitmp.1731
	moveq	r1, #1	@, prephitmp.1731
	b	.L282	@
.L284:
	ldr	ip, [r1, #1268]	@ <variable>.stSynExtraData.s32LowdlyEnable, <variable>.stSynExtraData.s32LowdlyEnable
	cmp	ip, #1	@ <variable>.stSynExtraData.s32LowdlyEnable,
	movne	r1, #0	@, prephitmp.1737
	moveq	r1, #1	@, prephitmp.1737
	b	.L286	@
.L288:
	ldr	r1, [r1, #1268]	@ <variable>.stSynExtraData.s32LowdlyEnable, <variable>.stSynExtraData.s32LowdlyEnable
	cmp	r1, #1	@ <variable>.stSynExtraData.s32LowdlyEnable,
	movne	r1, #0	@, prephitmp.1743
	moveq	r1, #1	@, prephitmp.1743
	b	.L290	@
.L292:
	ldr	ip, [r1, #1268]	@ <variable>.stSynExtraData.s32LowdlyEnable, <variable>.stSynExtraData.s32LowdlyEnable
	cmp	ip, #1	@ <variable>.stSynExtraData.s32LowdlyEnable,
	movne	r1, #0	@, prephitmp.1749
	moveq	r1, #1	@, prephitmp.1749
	b	.L294	@
.L296:
	ldr	r1, [r1, #1268]	@ <variable>.stSynExtraData.s32LowdlyEnable, <variable>.stSynExtraData.s32LowdlyEnable
	cmp	r1, #1	@ <variable>.stSynExtraData.s32LowdlyEnable,
	movne	r1, #0	@, prephitmp.1755
	moveq	r1, #1	@, prephitmp.1755
	b	.L298	@
.L300:
	ldr	ip, [r1, #1268]	@ <variable>.stSynExtraData.s32LowdlyEnable, <variable>.stSynExtraData.s32LowdlyEnable
	cmp	ip, #1	@ <variable>.stSynExtraData.s32LowdlyEnable,
	movne	r1, #0	@, prephitmp.1761
	moveq	r1, #1	@, prephitmp.1761
	b	.L302	@
.L304:
	ldr	r1, [r1, #1268]	@ <variable>.stSynExtraData.s32LowdlyEnable, <variable>.stSynExtraData.s32LowdlyEnable
	cmp	r1, #1	@ <variable>.stSynExtraData.s32LowdlyEnable,
	movne	r1, #0	@, prephitmp.1767
	moveq	r1, #1	@, prephitmp.1767
	b	.L306	@
.L308:
	ldr	ip, [r1, #1268]	@ <variable>.stSynExtraData.s32LowdlyEnable, <variable>.stSynExtraData.s32LowdlyEnable
	cmp	ip, #1	@ <variable>.stSynExtraData.s32LowdlyEnable,
	movne	r1, #0	@, prephitmp.1773
	moveq	r1, #1	@, prephitmp.1773
	b	.L310	@
.L312:
	ldr	r1, [r1, #1268]	@ <variable>.stSynExtraData.s32LowdlyEnable, <variable>.stSynExtraData.s32LowdlyEnable
	cmp	r1, #1	@ <variable>.stSynExtraData.s32LowdlyEnable,
	movne	r1, #0	@, prephitmp.1779
	moveq	r1, #1	@, prephitmp.1779
	b	.L314	@
.L316:
	ldr	ip, [r1, #1268]	@ <variable>.stSynExtraData.s32LowdlyEnable, <variable>.stSynExtraData.s32LowdlyEnable
	cmp	ip, #1	@ <variable>.stSynExtraData.s32LowdlyEnable,
	movne	r1, #0	@, prephitmp.1785
	moveq	r1, #1	@, prephitmp.1785
	b	.L318	@
.L333:
	ldr	r0, [r2, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r0, #0	@ <variable>.s32IsRun,
	beq	.L254	@,
	ldr	r1, [r2, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r1, #0	@ <variable>.s32Priority,
	beq	.L254	@,
	ldr	r2, [r2, #552]	@ temp.1589, <variable>.eVidStd
	cmp	r2, #19	@ temp.1589,
	beq	.L254	@,
	cmp	r2, #4	@ temp.1589,
	cmpne	r2, #7	@, temp.1589,
	beq	.L254	@,
	cmp	r2, #14	@ temp.1589,
	beq	.L254	@,
	cmp	r2, #18	@ temp.1589,
	addne	r3, r3, #1	@ activeChanNum, activeChanNum,
	b	.L254	@
.L334:
	movw	lr, #:lower16:g_vdm_hal_fun_ptr	@ tmp422,
	movt	lr, #:upper16:g_vdm_hal_fun_ptr	@ tmp422,
	ldr	r3, [lr, #0]	@ D.55469, g_vdm_hal_fun_ptr.pfun_VDMDRV_OpenHardware
	cmp	r3, #0	@ D.55469,
	beq	.L335	@,
	mov	r0, #0	@,
	blx	r3	@ D.55469
.L258:
	movw	r2, #:lower16:g_pstRegCrg	@ tmp584,
	movt	r2, #:upper16:g_pstRegCrg	@ tmp584,
	mov	ip, #25	@ tmp425,
	ldr	r1, [r2, #0]	@ g_pstRegCrg.886, g_pstRegCrg
	ldr	lr, [r1, #120]	@ D.55475, <variable>.PERI_CRG30.u32
	bfi	lr, ip, #12, #5	@ u32TmpValue, tmp425,,
	bfc	lr, #17, #1	@ u32TmpValue,,
	str	lr, [r1, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	ldr	r3, [r2, #0]	@ g_pstRegCrg.1574, g_pstRegCrg
	ldr	r0, [r3, #120]	@ D.55477, <variable>.PERI_CRG30.u32
	orr	ip, r0, #131072	@ u32TmpValue, D.55477,
	str	ip, [r3, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	b	.L256	@
.L332:
	movw	r1, #:lower16:.LC2	@,
	movw	r2, #10090	@,
	movt	r1, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L335:
	mov	r0, r3	@, D.55469
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #10132	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	b	.L258	@
	.fnend
	.size	VCTRL_OpenHardware, .-VCTRL_OpenHardware
	.align	2
	.global	Get_YuvFormat
	.type	Get_YuvFormat, %function
Get_YuvFormat:
	.fnstart
.LFB1657:
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
	cmp	r1, #6	@ enFmt,
	ldrls	pc, [pc, r1, asl #2]	@ enFmt
	b	.L337	@
.L345:
	.word	.L338
	.word	.L339
	.word	.L340
	.word	.L341
	.word	.L342
	.word	.L343
	.word	.L344
.L344:
	cmp	r0, #1	@ SemiPlanarFlag,
	movne	r0, #7	@, eYuvFormat,
	ldmfd	sp, {fp, sp, pc}	@
.L337:
	mov	r3, r1	@, enFmt
	movw	r2, #10062	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	mov	r0, #13	@ eYuvFormat,
	ldmfd	sp, {fp, sp, pc}	@
.L338:
	cmp	r0, #1	@ SemiPlanarFlag,
	movne	r0, #6	@ eYuvFormat,
	moveq	r0, #0	@ eYuvFormat,
	ldmfd	sp, {fp, sp, pc}	@
.L339:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #2	@ eYuvFormat,
	movne	r0, #8	@ eYuvFormat,
	ldmfd	sp, {fp, sp, pc}	@
.L340:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #4	@ eYuvFormat,
	movne	r0, #10	@ eYuvFormat,
	ldmfd	sp, {fp, sp, pc}	@
.L341:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #3	@ eYuvFormat,
	movne	r0, #9	@ eYuvFormat,
	ldmfd	sp, {fp, sp, pc}	@
.L342:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #5	@ eYuvFormat,
	movne	r0, #11	@ eYuvFormat,
	ldmfd	sp, {fp, sp, pc}	@
.L343:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #13	@ eYuvFormat,
	movne	r0, #12	@ eYuvFormat,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	Get_YuvFormat, .-Get_YuvFormat
	.align	2
	.global	VCTRL_SetLastFrameState
	.type	VCTRL_SetLastFrameState, %function
VCTRL_SetLastFrameState:
	.fnstart
.LFB1631:
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
	cmp	r0, #15	@ ChanID,
	bhi	.L359	@,
	movw	r2, #:lower16:.LANCHOR0	@ tmp138,
	movt	r2, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r3, [r2, r0, asl #2]	@ D.54351, s_pstVfmwChan
	cmp	r3, #0	@ D.54351,
	strne	r1, [r3, #344]	@ eState, <variable>.eLastFrameState
	ldmfd	sp, {fp, sp, pc}	@
.L359:
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #8409	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC6	@,
	mov	r0, #0	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_SetLastFrameState, .-VCTRL_SetLastFrameState
	.align	2
	.global	VCTRL_ReportLastFrame
	.type	VCTRL_ReportLastFrame, %function
VCTRL_ReportLastFrame:
	.fnstart
.LFB1632:
	@ args = 0, pretend = 0, frame = 8
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
	cmp	r1, #1	@ Value,
	mov	r5, r1	@ Value, Value
	movw	r4, #:lower16:.LANCHOR0	@ tmp145,
	movwls	r3, #:lower16:.LANCHOR1	@ tmp138,
	movtls	r3, #:upper16:.LANCHOR1	@ tmp138,
	movt	r4, #:upper16:.LANCHOR0	@ tmp145,
	movhi	r1, #4	@ eState,
	ldrls	r1, [r3, r5, asl #2]	@ eState, CSWTCH.925
	mov	r6, r0	@ ChanID, ChanID
	bl	VCTRL_SetLastFrameState	@
	ldr	ip, [r4, #64]	@ g_event_report.791, g_event_report
	cmp	ip, #0	@ g_event_report.791,
	beq	.L363	@,
	sub	r2, fp, #28	@ tmp140,,
	mov	r0, r6	@, ChanID
	mov	r1, #115	@,
	mov	r3, #4	@,
	str	r5, [r2, #-4]!	@ Value, para
	blx	ip	@ g_event_report.791
.L363:
	ldr	r3, [r4, r6, asl #2]	@ tmp143, s_pstVfmwChan
	mov	r2, r5	@, Value
	movw	r1, #:lower16:.LC7	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC7	@,
	ldr	r3, [r3, #344]	@, <variable>.eLastFrameState
	bl	dprint_vfmw	@
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
	.fnend
	.size	VCTRL_ReportLastFrame, .-VCTRL_ReportLastFrame
	.align	2
	.global	VCTRL_SvdecLastFrame
	.type	VCTRL_SvdecLastFrame, %function
VCTRL_SvdecLastFrame:
	.fnstart
.LFB1634:
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
	add	r1, r1, #2	@, LastFrameID,
	bl	VCTRL_ReportLastFrame	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_SvdecLastFrame, .-VCTRL_SvdecLastFrame
	.align	2
	.global	VCTRL_SetLastFrameIdPlus2
	.type	VCTRL_SetLastFrameIdPlus2, %function
VCTRL_SetLastFrameIdPlus2:
	.fnstart
.LFB1630:
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
	cmp	r0, #15	@ ChanID,
	bhi	.L371	@,
	movw	r2, #:lower16:.LANCHOR0	@ tmp138,
	movt	r2, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r3, [r2, r0, asl #2]	@ D.54339, s_pstVfmwChan
	cmp	r3, #0	@ D.54339,
	strne	r1, [r3, #340]	@ Value, <variable>.s32LastFrameIdPlus2
	ldmfd	sp, {fp, sp, pc}	@
.L371:
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #8397	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC6	@,
	mov	r0, #0	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_SetLastFrameIdPlus2, .-VCTRL_SetLastFrameIdPlus2
	.align	2
	.global	VCTRL_GetLastFrameIdPlus2
	.type	VCTRL_GetLastFrameIdPlus2, %function
VCTRL_GetLastFrameIdPlus2:
	.fnstart
.LFB1629:
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
	cmp	r0, #15	@ ChanID,
	bhi	.L377	@,
	movw	r1, #:lower16:.LANCHOR0	@ tmp139,
	movt	r1, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r3, [r1, r0, asl #2]	@ D.54327, s_pstVfmwChan
	cmp	r3, #0	@ D.54327,
	mvneq	r0, #0	@ D.54325,
	ldrne	r0, [r3, #340]	@ D.54325, <variable>.s32LastFrameIdPlus2
	ldmfd	sp, {fp, sp, pc}	@
.L377:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #8385	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.54325,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_GetLastFrameIdPlus2, .-VCTRL_GetLastFrameIdPlus2
	.align	2
	.global	VCTRL_SetVdecExtra
	.type	VCTRL_SetVdecExtra, %function
VCTRL_SetVdecExtra:
	.fnstart
.LFB1620:
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
	add	r4, r0, #4992	@ tmp138, new_extra_ref,
	add	r3, r4, #8	@ tmp138, tmp138,
	movw	r2, #10000	@ tmp140,
	movw	r4, #:lower16:.LANCHOR0	@ tmp158,
	cmp	r3, r2	@ tmp138, tmp140
	movt	r4, #:upper16:.LANCHOR0	@ tmp158,
	mov	r5, r1	@ new_extra_disp, new_extra_disp
	str	r0, [r4, #68]	@ new_extra_ref, extra_ref
	bhi	.L382	@,
.L379:
	add	r2, r5, #4992	@ tmp148, new_extra_disp,
	movw	ip, #5000	@ tmp143,
	add	r1, r2, #8	@ tmp148, tmp148,
	cmp	r0, ip	@ new_extra_ref, tmp143
	movge	r0, ip	@ iftmp.689, tmp143
	movw	r6, #:lower16:-5000	@ tmp145,
	movt	r6, #:upper16:-5000	@ tmp145,
	cmp	r0, r6	@ iftmp.689, tmp145
	strge	r0, [r4, #68]	@, iftmp.689, extra_ref
	strlt	r6, [r4, #68]	@, tmp145, extra_ref
	movw	r0, #10000	@ tmp150,
	cmp	r1, r0	@ tmp148, tmp150
	movw	r6, #:lower16:.LANCHOR0	@ tmp144,
	str	r5, [r4, #72]	@ new_extra_disp, extra_disp
	movt	r6, #:upper16:.LANCHOR0	@ tmp144,
	bhi	.L383	@,
.L380:
	movw	r0, #5000	@ tmp153,
	movw	r3, #:lower16:-5000	@ tmp155,
	cmp	r5, r0	@ new_extra_disp, tmp153
	movge	r5, r0	@ iftmp.1953, tmp153
	movt	r3, #:upper16:-5000	@ tmp155,
	cmp	r5, r3	@ iftmp.1953, tmp155
	strge	r5, [r4, #72]	@, iftmp.1953, extra_disp
	strlt	r3, [r4, #72]	@, tmp155, extra_disp
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L382:
	mov	r2, r0	@, new_extra_ref
	movw	r1, #:lower16:.LC8	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC8	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #68]	@ new_extra_ref, extra_ref
	b	.L379	@
.L383:
	mov	r2, r5	@, new_extra_disp
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	ldr	r5, [r6, #72]	@ new_extra_disp, extra_disp
	b	.L380	@
	.fnend
	.size	VCTRL_SetVdecExtra, .-VCTRL_SetVdecExtra
	.align	2
	.global	VCTRL_GetChanCapLevel
	.type	VCTRL_GetChanCapLevel, %function
VCTRL_GetChanCapLevel:
	.fnstart
.LFB1619:
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
	cmp	r0, #15	@ ChanID,
	bhi	.L389	@,
	movw	r1, #:lower16:.LANCHOR0	@ tmp139,
	movt	r1, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r3, [r1, r0, asl #2]	@ D.53787, s_pstVfmwChan
	cmp	r3, #0	@ D.53787,
	moveq	r0, #33	@ D.53785,
	ldrne	r0, [r3, #40]	@ D.53785, <variable>.eChanCapLevel
	ldmfd	sp, {fp, sp, pc}	@
.L389:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #7496	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.53785,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_GetChanCapLevel, .-VCTRL_GetChanCapLevel
	.align	2
	.global	VCTRL_GetChanHeight
	.type	VCTRL_GetChanHeight, %function
VCTRL_GetChanHeight:
	.fnstart
.LFB1618:
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
	cmp	r0, #15	@ ChanID,
	bhi	.L395	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r0, [r3, r0, asl #2]	@ D.53775, s_pstVfmwChan
	cmp	r0, #0	@ D.53775,
	beq	.L396	@,
	ldr	r0, [r0, #1308]	@ D.53773, <variable>.stSynExtraData.stChanOption.s32MaxHeight
	ldmfd	sp, {fp, sp, pc}	@
.L395:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC5	@,
	mov	r2, #7488	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.53773,
	ldmfd	sp, {fp, sp, pc}	@
.L396:
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #7489	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r3, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.53773,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_GetChanHeight, .-VCTRL_GetChanHeight
	.align	2
	.global	VCTRL_GetChanWidth
	.type	VCTRL_GetChanWidth, %function
VCTRL_GetChanWidth:
	.fnstart
.LFB1617:
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
	cmp	r0, #15	@ ChanID,
	bhi	.L402	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r0, [r3, r0, asl #2]	@ D.53763, s_pstVfmwChan
	cmp	r0, #0	@ D.53763,
	beq	.L403	@,
	ldr	r0, [r0, #1304]	@ D.53761, <variable>.stSynExtraData.stChanOption.s32MaxWidth
	ldmfd	sp, {fp, sp, pc}	@
.L402:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #7480	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.53761,
	ldmfd	sp, {fp, sp, pc}	@
.L403:
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #7481	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r3, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.53761,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_GetChanWidth, .-VCTRL_GetChanWidth
	.align	2
	.global	GetNextDecodeMode
	.type	GetNextDecodeMode, %function
GetNextDecodeMode:
	.fnstart
.LFB1610:
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
	movw	r7, #:lower16:1431655766	@ tmp146,
	mov	ip, r2, asl #1	@ tmp143, Threshould,
	movt	r7, #:upper16:1431655766	@ tmp146,
	mov	r4, r2	@ Threshould, Threshould
	add	r6, r2, #7	@ tmp140, Threshould,
	smull	r2, r3, r7, ip	@, tmp145, tmp146, tmp143
	cmp	r4, #0	@ Threshould,
	mov	r5, r0	@ CurMode, CurMode
	mov	r7, r1	@ StreamAmount, StreamAmount
	movge	r6, r4	@ Threshould, Threshould
	mov	r0, #30	@,
	mov	r6, r6, asr #3	@ tmp141, Threshould,
	movw	r1, #:lower16:.LC11	@,
	movt	r1, #:upper16:.LC11	@,
	str	r4, [sp, #0]	@ Threshould,
	mov	r2, r6	@, tmp141
	sub	r3, r3, ip, asr #31	@, tmp145, tmp143,
	str	r7, [sp, #4]	@ StreamAmount,
	bl	dprint_vfmw	@
	cmp	r5, #3	@ CurMode,
	beq	.L411	@,
	cmp	r4, r7	@ Threshould, StreamAmount
	blt	.L408	@,
.L410:
	mov	r4, r5	@ NextMode, CurMode
.L407:
	mov	r2, r5	@, CurMode
	mov	r3, r4	@, NextMode
	mov	r0, #30	@,
	movw	r1, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, NextMode
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L408:
	movw	r1, #:lower16:.LC13	@,
	mov	r0, #30	@,
	movt	r1, #:upper16:.LC13	@,
	mov	r4, #3	@ NextMode,
	bl	dprint_vfmw	@
	b	.L407	@
.L411:
	cmp	r6, r7	@ tmp141, StreamAmount
	ble	.L410	@,
	movw	r1, #:lower16:.LC12	@,
	mov	r0, #30	@,
	movt	r1, #:upper16:.LC12	@,
	mov	r4, #0	@ NextMode,
	bl	dprint_vfmw	@
	b	.L407	@
	.fnend
	.size	GetNextDecodeMode, .-GetNextDecodeMode
	.align	2
	.global	VCTRL_GetChanMemSize
	.type	VCTRL_GetChanMemSize, %function
VCTRL_GetChanMemSize:
	.fnstart
.LFB1607:
	@ args = 0, pretend = 0, frame = 968
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #1004
	sub	sp, sp, #1004	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	sl, r0, asl #3	@ tmp317, eCapLevel,
	rsb	r8, r0, sl	@ tmp169, eCapLevel, tmp317
	sub	r3, r0, #18	@ D.56216, eCapLevel,
	movw	r6, #:lower16:CapItem	@ tmp316,
	movt	r6, #:upper16:CapItem	@ tmp316,
	cmp	r3, #7	@ D.56216,
	add	r4, r6, r8, asl #2	@, tmp171, tmp316, tmp169,
	str	r2, [fp, #-996]	@ ScdMemSize, %sfp
	mov	r5, r0	@ eCapLevel, eCapLevel
	movwls	r2, #:lower16:.LANCHOR1	@ tmp197,
	ldr	r8, [r4, #12]	@ TempMinFrame, CapItem
	movtls	r2, #:upper16:.LANCHOR1	@ tmp197,
	ldr	r0, [r4, #20]	@, CapItem
	ldr	ip, [r4, #8]	@ TempPmv, CapItem
	addls	r3, r2, r3, asl #2	@, tmp200, tmp197, D.56216,
	ldr	r9, [r4, #16]	@ TempMiddleFrame, CapItem
	movw	r4, #:lower16:.LANCHOR0	@ tmp318,
	movt	r4, #:upper16:.LANCHOR0	@ tmp318,
	str	r1, [fp, #-992]	@ VdmMemSize, %sfp
	ldrls	r3, [r3, #8]	@ MinDnrFspNum, CSWTCH.928
	sub	r2, r8, #2	@ tmp202, TempMinFrame,
	ldr	r1, [r4, #68]	@ extra_ref, extra_ref
	movhi	r3, #6	@ MinDnrFspNum,
	rsb	r3, r3, r2	@ s32MaxRefFrameNum, MinDnrFspNum, tmp202
	str	r0, [fp, #-1008]	@, %sfp
	cmp	r1, #0	@ extra_ref,
	movlt	r2, #0	@ tmp206,
	strlt	r2, [r4, #68]	@ tmp206, extra_ref
	cmp	r3, #15	@ s32MaxRefFrameNum,
	movgt	r7, #0	@ extra_ref_tmp,
	bgt	.L417	@,
	ldr	r7, [r4, #68]	@ extra_ref_tmp, extra_ref
	add	r2, r3, r7	@ D.52969, s32MaxRefFrameNum, extra_ref_tmp
	cmp	r2, #16	@ D.52969,
	addgt	r7, r7, #16	@ D.52972, extra_ref_tmp,
	rsbgt	r7, r2, r7	@ extra_ref_tmp, D.52969, D.52972
.L417:
	add	r3, r7, ip	@ TempPmv.2075, extra_ref_tmp, TempPmv
	ldr	r1, [r4, #72]	@, extra_disp
	cmp	r3, #0	@ TempPmv.2075,
	str	r1, [fp, #-1000]	@, %sfp
	ble	.L433	@,
	cmp	r3, #17	@ TempPmv.2075,
	movge	r3, #17	@ TempPmv.2075,
	str	r3, [fp, #-1004]	@ TempPmv.2075, %sfp
.L419:
	cmp	r5, #23	@ eCapLevel,
	bhi	.L420	@,
	ldr	ip, [fp, #-1000]	@, %sfp
	add	r3, r7, ip	@ D.52975, extra_ref_tmp,
	add	r2, r3, r8	@ TempMinFrame.2072, D.52975, TempMinFrame
	add	r1, r3, r9	@ TempMiddleFrame.2073, D.52975, TempMiddleFrame
	cmp	r2, #0	@ TempMinFrame.2072,
	cmpgt	r1, #0	@, TempMiddleFrame.2073,
	ble	.L421	@,
	ldr	r0, [fp, #-1008]	@, %sfp
	add	lr, r3, r0	@ TempFluentFrame.2074, D.52975,
	cmp	lr, #0	@ TempFluentFrame.2074,
	strgt	lr, [fp, #-1012]	@ TempFluentFrame.2074, %sfp
	strgt	r1, [fp, #-1000]	@ TempMiddleFrame.2073, %sfp
	movgt	r8, r2	@ nMinFrame, TempMinFrame.2072
	ble	.L421	@,
.L423:
	movw	r7, #:lower16:g_vdm_hal_fun_ptr	@ tmp219,
	movt	r7, #:upper16:g_vdm_hal_fun_ptr	@ tmp219,
	ldr	ip, [r7, #48]	@ D.52993, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.52993,
	beq	.L426	@,
.L434:
	rsb	r5, r5, sl	@ tmp223, eCapLevel, tmp317
	ldr	sl, [fp, #-1004]	@, %sfp
	str	r8, [sp, #4]	@ nMinFrame,
	add	r8, r5, #1	@ tmp231, tmp223,
	mov	r9, #0	@ tmp233,
	mov	r0, #1	@,
	str	sl, [sp, #0]	@,
	mvn	r1, #-2147483648	@,
	ldr	r3, [r6, r8, asl #2]	@ tmp232, CapItem
	mvn	sl, #0	@ tmp234,
	ldr	r2, [r6, r5, asl #2]	@ tmp226, CapItem
	movw	r4, #:lower16:CapItem	@ tmp220,
	str	r9, [sp, #8]	@ tmp233,
	sub	r9, fp, #984	@ tmp236,,
	str	sl, [sp, #12]	@ tmp234,
	movt	r4, #:upper16:CapItem	@ tmp220,
	str	r9, [sp, #16]	@ tmp236,
	add	r6, r6, r5, asl #2	@, tmp225, tmp316, tmp223,
	blx	ip	@ D.52993
	subs	r3, r0, #0	@ ret,
	bne	.L426	@,
	ldr	r2, [fp, #-980]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	ldr	lr, [fp, #-992]	@, %sfp
	add	r1, r2, #47616	@ tmp238, MemArrange.TotalMemUsed,
	add	ip, r1, #16	@ tmp238, tmp238,
	str	ip, [lr, #0]	@ tmp238,
	ldr	r1, [fp, #-996]	@, %sfp
	ldr	r0, [r6, #24]	@ tmp248, CapItem
	add	r2, r0, #32768	@ tmp249, tmp248,
	str	r2, [r1, #0]	@ tmp249,
	ldr	ip, [r7, #48]	@ temp.2077, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ temp.2077,
	beq	.L428	@,
	ldr	lr, [r4, r8, asl #2]	@ tmp264, CapItem
	mov	r0, #1	@,
	ldr	r2, [fp, #-1000]	@, %sfp
	mvn	r1, #-2147483648	@,
	str	r3, [sp, #8]	@ ret,
	ldr	r3, [fp, #-1004]	@, %sfp
	str	r2, [sp, #4]	@,
	ldr	r2, [r4, r5, asl #2]	@, CapItem
	str	r3, [sp, #0]	@,
	mov	r3, lr	@, tmp264
	str	sl, [sp, #12]	@ tmp234,
	str	r9, [sp, #16]	@ tmp236,
	blx	ip	@ temp.2077
	subs	lr, r0, #0	@ ret.2080,
	bne	.L428	@,
	ldr	ip, [fp, #-980]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	ldr	r2, [fp, #-992]	@, %sfp
	add	r0, ip, #47616	@ tmp270, MemArrange.TotalMemUsed,
	add	r3, r0, #16	@ tmp270, tmp270,
	str	r3, [r2, #4]	@ tmp270,
	ldr	r0, [fp, #-996]	@, %sfp
	ldr	r1, [r6, #24]	@ tmp280, CapItem
	add	ip, r1, #32768	@ tmp281, tmp280,
	str	ip, [r0, #4]	@ tmp281,
	ldr	ip, [r7, #48]	@ temp.2084, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ temp.2084,
	beq	.L430	@,
	ldr	r3, [r4, r8, asl #2]	@ tmp296, CapItem
	mov	r0, #1	@,
	ldr	r2, [r4, r5, asl #2]	@ tmp290, CapItem
	mvn	r1, #-2147483648	@,
	ldr	r4, [fp, #-1004]	@, %sfp
	str	lr, [sp, #8]	@ ret.2080,
	str	sl, [sp, #12]	@ tmp234,
	str	r4, [sp, #0]	@,
	ldr	r4, [fp, #-1012]	@, %sfp
	str	r9, [sp, #16]	@ tmp236,
	str	r4, [sp, #4]	@,
	blx	ip	@ temp.2084
	cmp	r0, #0	@ ret.2087
	bne	.L430	@,
	ldr	r1, [fp, #-980]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	ldr	ip, [fp, #-992]	@, %sfp
	add	lr, r1, #47616	@ tmp302, MemArrange.TotalMemUsed,
	add	r2, lr, #16	@ tmp302, tmp302,
	str	r2, [ip, #8]	@ tmp302,
	ldr	lr, [fp, #-996]	@, %sfp
	ldr	r3, [r6, #24]	@ tmp312, CapItem
	add	r1, r3, #32768	@ tmp313, tmp312,
	str	r1, [lr, #8]	@ tmp313,
	b	.L425	@
.L420:
	cmp	r5, #32	@ eCapLevel,
	bls	.L424	@,
.L432:
	mvn	r0, #0	@ D.53011,
.L425:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L421:
	ldr	ip, [r4, #72]	@ extra_disp.2076, extra_disp
	mov	r3, r7	@, extra_ref_tmp
	ldr	lr, [fp, #-1008]	@, %sfp
	mov	r0, #32	@,
	str	r7, [sp, #8]	@ extra_ref_tmp,
	movw	r1, #:lower16:.LC16	@,
	str	r7, [sp, #20]	@ extra_ref_tmp,
	movw	r7, #:lower16:g_vdm_hal_fun_ptr	@ tmp219,
	movt	r7, #:upper16:g_vdm_hal_fun_ptr	@ tmp219,
	movt	r1, #:upper16:.LC16	@,
	mov	r2, r8	@, TempMinFrame
	str	ip, [sp, #24]	@ extra_disp.2076,
	str	ip, [sp, #0]	@ extra_disp.2076,
	mov	r4, lr	@,
	str	ip, [sp, #12]	@ extra_disp.2076,
	str	lr, [fp, #-1012]	@, %sfp
	str	r9, [fp, #-1000]	@ TempMiddleFrame, %sfp
	str	r9, [sp, #4]	@ TempMiddleFrame,
	str	lr, [sp, #16]	@ tmp4,
	bl	dprint_vfmw	@
	ldr	ip, [r7, #48]	@ D.52993, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.52993,
	bne	.L434	@,
.L426:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC17	@,
	movw	r2, #6197	@,
	movt	r1, #:upper16:.LC17	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.53011,
	b	.L425	@
.L424:
	ldr	r7, [fp, #-1008]	@, %sfp
	str	r9, [fp, #-1000]	@ TempMiddleFrame, %sfp
	str	r7, [fp, #-1012]	@, %sfp
	b	.L423	@
.L433:
	mov	r2, ip	@, TempPmv
	movw	r1, #:lower16:.LC15	@,
	mov	r3, r7	@, extra_ref_tmp
	movt	r1, #:upper16:.LC15	@,
	mov	r0, #32	@,
	cmp	ip, #17	@ TempPmv,
	movge	ip, #17	@ TempPmv,
	str	ip, [fp, #-1004]	@ TempPmv, %sfp
	bl	dprint_vfmw	@
	b	.L419	@
.L428:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC17	@,
	movw	r2, #6216	@,
	movt	r1, #:upper16:.LC17	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.53011,
	b	.L425	@
.L430:
	movw	r1, #:lower16:.LC17	@,
	movw	r2, #6235	@,
	movt	r1, #:upper16:.LC17	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	b	.L432	@
	.fnend
	.size	VCTRL_GetChanMemSize, .-VCTRL_GetChanMemSize
	.align	2
	.global	VCTRL_GetChanMemSizeWithOption
	.type	VCTRL_GetChanMemSizeWithOption, %function
VCTRL_GetChanMemSizeWithOption:
	.fnstart
.LFB1605:
	@ args = 0, pretend = 0, frame = 944
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #972
	sub	sp, sp, #972	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	ip, #:lower16:4780712	@ tmp242,
	cmp	r0, #26	@ eCapLevel,
	movt	ip, #:upper16:4780712	@ tmp242,
	movw	sl, #:lower16:11613576	@ tmp241,
	movt	sl, #:upper16:11613576	@ tmp241,
	movne	sl, ip	@ s32ChanCtxSize, tmp242
	cmp	r3, #2	@ flag,
	mov	r7, r0	@ eCapLevel, eCapLevel
	mov	r8, r3	@ flag, flag
	mov	r4, r1	@ pChanOption, pChanOption
	mov	r5, r2	@ pDetailMemSize, pDetailMemSize
	beq	.L438	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp165,
	movt	r3, #:upper16:.LANCHOR0	@ tmp165,
	ldr	ip, [r1, #64]	@ D.52792, <variable>.s32DisplayFrameNum
	ldr	r9, [r3, #72]	@ extra_disp.643, extra_disp
	ldr	r2, [r1, #36]	@ D.52790, <variable>.s32MaxRefFrameNum
	ldr	r3, [r3, #68]	@ extra_ref.642, extra_ref
	add	r6, r9, ip	@ TempDispNum, extra_disp.643, D.52792
	add	r1, r3, r2	@ TempRefNum, extra_ref.642, D.52790
	orrs	r0, r6, r1	@, TempDispNum, TempRefNum
	bmi	.L466	@,
	cmp	r1, #16	@ TempRefNum,
	strle	r1, [r4, #36]	@ TempRefNum, <variable>.s32MaxRefFrameNum
	strle	r6, [r4, #64]	@ TempDispNum, <variable>.s32DisplayFrameNum
	bgt	.L467	@,
.L442:
	rsbs	r8, r8, #1	@ tmp185, flag
	movcc	r8, #0	@ tmp185
	cmp	r7, #25	@ eCapLevel,
	moveq	r8, #0	@, tmp185,
	cmp	r8, #0	@ tmp185,
	bne	.L468	@,
.L438:
	ldr	r3, [r4, #4]	@ D.52811, <variable>.Purpose
	cmp	r3, #2	@ D.52811,
	bhi	.L469	@,
	bne	.L444	@,
	ldr	r3, [r4, #68]	@ D.52819, <variable>.s32SlotWidth
	cmp	r3, #0	@ D.52819,
	beq	.L445	@,
	ldr	r2, [r4, #72]	@ D.52821, <variable>.s32SlotHeight
	cmp	r2, #0	@ D.52821,
	beq	.L445	@,
	mul	r3, r2, r3	@ tmp189, D.52821, D.52819
	ldr	r1, [r4, #64]	@ <variable>.s32DisplayFrameNum, <variable>.s32DisplayFrameNum
	mov	r0, #0	@ tmp194,
	stmib	r5, {r0, sl}	@ phole stm
	mov	ip, r3, asl #1	@ tmp190, tmp189,
	mla	r2, r1, ip, ip	@ tmp193, <variable>.s32DisplayFrameNum, tmp190, tmp190
	str	r2, [r5, #0]	@ tmp193, <variable>.VdhDetailMem
.L440:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L467:
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC19	@,
	movt	r1, #:upper16:.LC19	@,
	bl	dprint_vfmw	@
	mov	r0, #16	@ tmp178,
	str	r6, [r4, #64]	@ TempDispNum, <variable>.s32DisplayFrameNum
	str	r0, [r4, #36]	@ tmp178, <variable>.s32MaxRefFrameNum
	b	.L442	@
.L444:
	cmp	r3, #1	@ D.52811,
	mvnne	r0, #0	@ D.52800,
	bne	.L440	@
.L447:
	ldr	r0, [r4, #36]	@ temp.2118, <variable>.s32MaxRefFrameNum
	cmp	r0, #0	@ temp.2118,
	blt	.L448	@,
	ldr	r2, [r4, #12]	@ D.52834, <variable>.s32MaxWidth
	cmp	r2, #31	@ D.52834,
	ble	.L448	@,
	ldr	r3, [r4, #16]	@ D.52836, <variable>.s32MaxHeight
	cmp	r3, #31	@ D.52836,
	ble	.L448	@,
	ldr	ip, [r4, #60]	@ <variable>.s32SCDBufSize, <variable>.s32SCDBufSize
	cmp	ip, #262144	@ <variable>.s32SCDBufSize,
	blt	.L448	@,
	ldr	r1, [r4, #48]	@ D.52840, <variable>.s32SupportH264
	cmp	r1, #1	@ D.52840,
	beq	.L470	@,
	cmp	r1, #2	@ D.52840,
	beq	.L471	@,
.L450:
	ldr	r6, [r4, #44]	@ <variable>.s32SupportBFrame, <variable>.s32SupportBFrame
	cmp	r6, #0	@ <variable>.s32SupportBFrame,
	moveq	lr, #1	@ PmvNum,
	beq	.L452	@,
	add	lr, r0, #1	@ PmvNum.2122, temp.2118,
	cmp	lr, #17	@ PmvNum.2122,
	movge	lr, #17	@ PmvNum,
.L452:
	movw	r1, #:lower16:g_vdm_hal_fun_ptr	@ tmp206,
	movt	r1, #:upper16:g_vdm_hal_fun_ptr	@ tmp206,
	sub	r6, r7, #27	@ D.52858, eCapLevel,
	ldr	r8, [r4, #64]	@ temp.2123, <variable>.s32DisplayFrameNum
	cmp	r6, #6	@ D.52858,
	ldr	ip, [r1, #48]	@ D.52863, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	mvncc	r1, #1	@, eFlag,
	mvncs	r1, #0	@, eFlag,
	cmp	ip, #0	@ D.52863,
	beq	.L455	@,
	add	r0, r0, r8	@ tmp207, temp.2118, temp.2123
	str	lr, [sp, #0]	@ PmvNum,
	str	r1, [sp, #12]	@ eFlag,
	sub	lr, fp, #984	@ tmp211,,
	add	r1, r0, #2	@ tmp208, tmp207,
	str	lr, [sp, #16]	@ tmp211,
	str	r1, [sp, #4]	@ tmp208,
	mov	r0, #0	@ tmp209,
	mvn	r1, #-2147483648	@,
	str	r0, [sp, #8]	@ tmp209,
	mov	r0, #1	@,
	blx	ip	@ D.52863
	cmp	r0, #0	@,
	bne	.L455	@,
	ldr	ip, [fp, #-980]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	add	r3, ip, #16	@ D.52871, MemArrange.TotalMemUsed,
	str	r3, [r5, #0]	@ D.52871, <variable>.VdhDetailMem
	ldr	r2, [r4, #132]	@ <variable>.u32DynamicFrameStoreAllocEn, <variable>.u32DynamicFrameStoreAllocEn
	cmp	r2, #1	@ <variable>.u32DynamicFrameStoreAllocEn,
	addne	r3, r3, #47616	@ tmp214, D.52871,
	strne	r3, [r5, #0]	@ tmp214, <variable>.VdhDetailMem
	ldreq	r3, [r4, #60]	@ <variable>.s32SCDBufSize, <variable>.s32SCDBufSize
	ldrne	r3, [r4, #60]	@ <variable>.s32SCDBufSize, <variable>.s32SCDBufSize
	addeq	r3, r3, #79872	@ tmp219, <variable>.s32SCDBufSize,
	str	sl, [r5, #8]	@ s32ChanCtxSize, <variable>.ChanCtxDetailMem
	addne	r3, r3, #32768	@ tmp216, <variable>.s32SCDBufSize,
	addeq	r3, r3, #528	@ tmp219, tmp219,
	str	r3, [r5, #4]	@ tmp219, <variable>.ScdDetailMem
	ldr	r3, [r4, #48]	@ <variable>.s32SupportH264, <variable>.s32SupportH264
	cmp	r3, #0	@ <variable>.s32SupportH264,
	beq	.L459	@,
	ldr	lr, [r4, #20]	@ <variable>.s32MaxSliceNum, <variable>.s32MaxSliceNum
	movw	r1, #4060	@ tmp222,
	ldr	r0, [r4, #28]	@ D.52888, <variable>.s32MaxSpsNum
	mov	r3, #4000	@ tmp224,
	ldr	r2, [r4, #32]	@ D.52891, <variable>.s32MaxPpsNum
	mov	ip, #2208	@ tmp227,
	mul	r1, r1, lr	@ D.52887, tmp222, <variable>.s32MaxSliceNum
	mla	lr, r3, r0, r1	@ tmp225, tmp224, D.52888, D.52887
	mla	r3, ip, r2, lr	@ TempAddMem, tmp227, D.52891, tmp225
	cmp	r3, #0	@ TempAddMem,
	movcc	r3, #0	@ TempAddMem,
	cmp	r7, #26	@ eCapLevel,
	beq	.L472	@,
.L459:
	cmp	r6, #5	@ D.52858,
	bhi	.L460	@,
	movw	lr, #:lower16:1718176	@ tmp234,
	movt	lr, #:upper16:1718176	@ tmp234,
	cmp	r3, lr	@ TempAddMem, tmp234
	movcc	r3, lr	@ TempAddMem, tmp234
.L460:
	add	r3, r3, sl	@ tmp235, TempAddMem, s32ChanCtxSize
	mov	r0, #0	@ D.52800,
	str	r3, [r5, #8]	@ tmp235, <variable>.ChanCtxDetailMem
	b	.L440	@
.L445:
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.52800,
	b	.L440	@
.L468:
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.52800,
	b	.L440	@
.L469:
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.52800,
	b	.L440	@
.L466:
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC18	@,
	movt	r1, #:upper16:.LC18	@,
	str	ip, [sp, #0]	@ D.52792,
	str	r9, [sp, #4]	@ extra_disp.643,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.52800,
	b	.L440	@
.L470:
	ldr	r1, [r4, #20]	@ <variable>.s32MaxSliceNum, <variable>.s32MaxSliceNum
	cmp	r1, #0	@ <variable>.s32MaxSliceNum,
	ble	.L448	@,
.L464:
	ldr	ip, [r4, #28]	@ <variable>.s32MaxSpsNum, <variable>.s32MaxSpsNum
	cmp	ip, #0	@ <variable>.s32MaxSpsNum,
	ble	.L448	@,
	ldr	r1, [r4, #32]	@ <variable>.s32MaxPpsNum, <variable>.s32MaxPpsNum
	cmp	r1, #0	@ <variable>.s32MaxPpsNum,
	bgt	.L450	@,
.L448:
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC23	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.52800,
	b	.L440	@
.L471:
	ldr	ip, [r4, #20]	@ <variable>.s32MaxSliceNum, <variable>.s32MaxSliceNum
	cmp	ip, #0	@ <variable>.s32MaxSliceNum,
	ble	.L448	@,
	ldr	r1, [r4, #24]	@ <variable>.s32MaxVpsNum, <variable>.s32MaxVpsNum
	cmp	r1, #0	@ <variable>.s32MaxVpsNum,
	bgt	.L464	@,
	b	.L448	@
.L472:
	movw	ip, #3992	@ tmp229,
	mla	r1, ip, r0, r1	@ tmp230, tmp229, D.52888, D.52887
	mov	r0, #2240	@ tmp232,
	mla	r2, r0, r2, r1	@ tmp233, tmp232, D.52891, tmp230
	cmp	r3, r2	@ TempAddMem, tmp233
	movcc	r3, r2	@ TempAddMem, tmp233
	b	.L459	@
.L455:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC24	@,
	movw	r2, #5966	@,
	movt	r1, #:upper16:.LC24	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.52800,
	b	.L440	@
	.fnend
	.size	VCTRL_GetChanMemSizeWithOption, .-VCTRL_GetChanMemSizeWithOption
	.align	2
	.global	VCTRL_ConfigFFFBSpeed
	.type	VCTRL_ConfigFFFBSpeed, %function
VCTRL_ConfigFFFBSpeed:
	.fnstart
.LFB1594:
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
	cmp	r0, #15	@ ChanID,
	bhi	.L480	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r3, [r3, r0, asl #2]	@ D.52457, s_pstVfmwChan
	cmp	r3, #0	@ D.52457,
	beq	.L481	@,
	ldr	r2, [r3, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #1	@ <variable>.s32IsOpen,
	bne	.L482	@,
	cmp	r1, #0	@ pArgs,
	beq	.L483	@,
	ldr	ip, [r1, #0]	@ tmp148,* pArgs
	mov	r0, #0	@ D.52455,
	str	ip, [r3, #1252]	@ tmp148, <variable>.stSynExtraData.s32FastForwardBackwardSpeed
	ldmfd	sp, {fp, sp, pc}	@
.L482:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #5028	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC26	@,
	movt	r3, #:upper16:.LC26	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.52455,
	ldmfd	sp, {fp, sp, pc}	@
.L480:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #5026	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.52455,
	ldmfd	sp, {fp, sp, pc}	@
.L481:
	mov	r0, r3	@, D.52457
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #5027	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC25	@,
	movt	r3, #:upper16:.LC25	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.52455,
	ldmfd	sp, {fp, sp, pc}	@
.L483:
	mov	r0, r1	@, pArgs
	movw	r2, #5029	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r3, #:lower16:.LC27	@,
	movt	r1, #:upper16:.LC5	@,
	movt	r3, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.52455,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_ConfigFFFBSpeed, .-VCTRL_ConfigFFFBSpeed
	.align	2
	.global	VCTRL_GetChanMemInfo
	.type	VCTRL_GetChanMemInfo, %function
VCTRL_GetChanMemInfo:
	.fnstart
.LFB1589:
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
	cmp	r0, #15	@ ChanId,
	bhi	.L490	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp141,
	movt	r3, #:upper16:.LANCHOR0	@ tmp141,
	ldr	r0, [r3, r0, asl #2]	@ D.52222, s_pstVfmwChan
	cmp	r0, #0	@ D.52222,
	beq	.L491	@,
	cmp	r1, #0	@ pstMemRec,
	bne	.L492	@,
.L488:
	mvn	r0, #0	@ D.52220,
	ldmfd	sp, {fp, sp, pc}	@
.L491:
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #4643	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r3, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.52220,
	ldmfd	sp, {fp, sp, pc}	@
.L492:
	ldr	r2, [r0, #200]	@ <variable>.s32OneChanMem, <variable>.s32OneChanMem
	cmp	r2, #1	@ <variable>.s32OneChanMem,
	bne	.L488	@,
	ldr	r3, [r0, #208]	@ D.52234, <variable>.stChanMem.VirAddr
	ldr	ip, [r0, #216]	@ <variable>.stChanMem.Length, <variable>.stChanMem.Length
	ldr	r2, [r0, #212]	@ <variable>.stChanMem.PhyAddr, <variable>.stChanMem.PhyAddr
	cmp	r3, #0	@ D.52234,
	str	r3, [r1, #4]	@ D.52234, <variable>.VirAddr
	str	ip, [r1, #12]	@ <variable>.stChanMem.Length, <variable>.Length
	movne	r0, #0	@ D.52220,
	str	r2, [r1, #8]	@ <variable>.stChanMem.PhyAddr, <variable>.PhyAddr
	ldmnefd	sp, {fp, sp, pc}	@
	b	.L488	@
.L490:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #4642	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC28	@,
	movt	r3, #:upper16:.LC28	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.52220,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_GetChanMemInfo, .-VCTRL_GetChanMemInfo
	.align	2
	.global	VCTRL_GetVidStd
	.type	VCTRL_GetVidStd, %function
VCTRL_GetVidStd:
	.fnstart
.LFB1586:
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
	cmp	r0, #15	@ ChanId,
	bhi	.L494	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r3, r0, asl #2]	@ D.52120, s_pstVfmwChan
	cmp	r3, #0	@ D.52120,
	beq	.L494	@,
	ldr	r2, [r3, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #1	@ <variable>.s32IsOpen,
	beq	.L497	@,
	mov	r3, r0	@, ChanId
	movw	r1, #:lower16:.LC30	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC30	@,
	movw	r2, #4463	@,
	bl	dprint_vfmw	@
	mov	r0, #19	@ D.52122,
	ldmfd	sp, {fp, sp, pc}	@
.L494:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC29	@,
	movw	r2, #4456	@,
	movt	r1, #:upper16:.LC29	@,
	bl	dprint_vfmw	@
	mov	r0, #19	@ D.52122,
	ldmfd	sp, {fp, sp, pc}	@
.L497:
	ldr	r0, [r3, #552]	@ D.52122, <variable>.eVidStd
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_GetVidStd, .-VCTRL_GetVidStd
	.align	2
	.global	VCTRL_CheckChanWH
	.type	VCTRL_CheckChanWH, %function
VCTRL_CheckChanWH:
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
	.pad #8
	sub	sp, sp, #8	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r2, #:lower16:g_chipID	@ tmp144,
	movt	r2, #:upper16:g_chipID	@ tmp144,
	movw	r3, #:lower16:.LANCHOR0	@ tmp143,
	movt	r3, #:upper16:.LANCHOR0	@ tmp143,
	ldr	ip, [r2, #0]	@ g_chipID.528, g_chipID
	ldr	r3, [r3, r0, asl #2]	@ D.51372, s_pstVfmwChan
	cmp	ip, #12	@ g_chipID.528,
	ldr	r0, [r3, #1308]	@ ChanMaxHeight, <variable>.stSynExtraData.stChanOption.s32MaxHeight
	ldr	r3, [r3, #1304]	@ ChanMaxWidth, <variable>.stSynExtraData.stChanOption.s32MaxWidth
	bgt	.L503	@,
	cmp	ip, #5	@ g_chipID.528,
	blt	.L510	@,
.L502:
	movw	r2, #:lower16:g_ChipMaxWidth	@ tmp152,
	movt	r2, #:upper16:g_ChipMaxWidth	@ tmp152,
	ldr	r2, [r2, #0]	@ g_ChipMaxWidth.2226, g_ChipMaxWidth
	cmp	r3, r2	@ ChanMaxWidth, g_ChipMaxWidth.2226
	ble	.L511	@,
	ldr	r3, [r1, #0]	@ D.51386, <variable>.eVidStd
	cmp	r3, #13	@ D.51386,
	cmpne	r3, #0	@, D.51386,
	beq	.L505	@,
.L516:
	cmp	r3, #15	@ D.51386,
	beq	.L505	@,
	cmp	r3, #18	@ D.51386,
	bne	.L512	@,
.L505:
	mov	r0, #0	@ ret,
	b	.L506	@
.L503:
	cmp	ip, #51	@ g_chipID.528,
	bge	.L513	@,
.L500:
	mov	r2, ip	@, g_chipID.528
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC33	@,
	movt	r1, #:upper16:.LC33	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
.L506:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L510:
	cmp	ip, #0	@ g_chipID.528,
	blt	.L500	@,
	movw	r2, #:lower16:g_ChipMaxWidth	@ tmp146,
	movt	r2, #:upper16:g_ChipMaxWidth	@ tmp146,
	ldr	r2, [r2, #0]	@ g_ChipMaxWidth, g_ChipMaxWidth
	cmp	r3, r2	@ ChanMaxWidth, g_ChipMaxWidth
	ble	.L514	@,
	ldr	r0, [r1, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r0, #18	@ <variable>.eVidStd,
	beq	.L505	@,
.L515:
	mov	r2, ip	@, g_chipID.528
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC31	@,
	movt	r1, #:upper16:.LC31	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	b	.L506	@
.L513:
	cmp	ip, #52	@ g_chipID.528,
	ble	.L502	@,
	sub	r2, ip, #100	@ tmp145, g_chipID.528,
	cmp	r2, #1	@ tmp145,
	bhi	.L500	@,
	b	.L502	@
.L514:
	movw	r2, #:lower16:g_ChipMaxHeight	@ tmp148,
	movt	r2, #:upper16:g_ChipMaxHeight	@ tmp148,
	ldr	r3, [r2, #0]	@ g_ChipMaxHeight, g_ChipMaxHeight
	cmp	r0, r3	@ ChanMaxHeight, g_ChipMaxHeight
	ble	.L505	@,
	ldr	r0, [r1, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r0, #18	@ <variable>.eVidStd,
	beq	.L505	@,
	b	.L515	@
.L511:
	movw	r3, #:lower16:g_ChipMaxHeight	@ tmp153,
	movt	r3, #:upper16:g_ChipMaxHeight	@ tmp153,
	ldr	r3, [r3, #0]	@ g_ChipMaxHeight, g_ChipMaxHeight
	cmp	r0, r3	@ ChanMaxHeight, g_ChipMaxHeight
	ble	.L505	@,
	ldr	r3, [r1, #0]	@ D.51386, <variable>.eVidStd
	cmp	r3, #13	@ D.51386,
	cmpne	r3, #0	@, D.51386,
	bne	.L516	@,
	b	.L505	@
.L512:
	movw	r1, #:lower16:g_ChipMaxHeight	@ tmp163,
	movt	r1, #:upper16:g_ChipMaxHeight	@ tmp163,
	mov	r0, #0	@,
	ldr	r3, [r1, #0]	@ g_ChipMaxHeight, g_ChipMaxHeight
	movw	r1, #:lower16:.LC32	@,
	movt	r1, #:upper16:.LC32	@,
	str	ip, [sp, #0]	@ g_chipID.528,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	b	.L506	@
	.fnend
	.size	VCTRL_CheckChanWH, .-VCTRL_CheckChanWH
	.align	2
	.global	RefreshDecCore
	.type	RefreshDecCore, %function
RefreshDecCore:
	.fnstart
.LFB1575:
	@ args = 0, pretend = 0, frame = 8
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp167,
	movt	r4, #:upper16:.LANCHOR0	@ tmp167,
	mov	r5, r0	@ ChanID, ChanID
	ldr	r3, [r4, r0, asl #2]	@ D.51250, s_pstVfmwChan
	ldr	r2, [r3, #552]	@ <variable>.eVidStd, <variable>.eVidStd
	ldr	ip, [r3, #1496]	@ eOldDecCore, <variable>.eDecCore
	cmp	r2, #4	@ <variable>.eVidStd,
	moveq	r2, #1	@ tmp148,
	streq	r2, [r3, #1496]	@ tmp148, <variable>.eDecCore
	beq	.L521	@,
	cmp	r2, #14	@ <variable>.eVidStd,
	movne	r2, #0	@ tmp150,
	strne	r2, [r3, #1496]	@ tmp150, <variable>.eDecCore
	moveq	r2, #2	@ tmp149,
	streq	r2, [r3, #1496]	@ tmp149, <variable>.eDecCore
.L521:
	ldr	r0, [r4, r5, asl #2]	@ prephitmp.2245, s_pstVfmwChan
	movw	r6, #:lower16:.LANCHOR0	@ tmp151,
	movt	r6, #:upper16:.LANCHOR0	@ tmp151,
	ldr	r2, [r0, #1496]	@ prephitmp.2247, <variable>.eDecCore
	cmp	r2, ip	@ prephitmp.2247, eOldDecCore
	beq	.L522	@,
	sub	ip, ip, #1	@ tmp152, eOldDecCore,
	cmp	ip, #4	@ tmp152,
	bhi	.L523	@,
	ldr	r3, [r6, #80]	@ D.51259, g_SdecFunc.pfun_iMediaSoftDEC_Destroy
	cmp	r3, #0	@ D.51259,
	beq	.L523	@,
	add	r0, r0, #250880	@, prephitmp.2245,
	str	r1, [fp, #-32]	@,
	add	r0, r0, #720	@,,
	blx	r3	@ D.51259
	ldr	r0, [r6, r5, asl #2]	@ prephitmp.2245, s_pstVfmwChan
	ldr	r1, [fp, #-32]	@,
	ldr	r2, [r0, #1496]	@ prephitmp.2247, <variable>.eDecCore
.L523:
	sub	r3, r2, #1	@ tmp157, prephitmp.2247,
	cmp	r3, #4	@ tmp157,
	bhi	.L522	@,
	ldr	ip, [r0, #40]	@ <variable>.eChanCapLevel, <variable>.eChanCapLevel
	movw	lr, #:lower16:251612	@ tmp158,
	movt	lr, #:upper16:251612	@ tmp158,
	movw	r2, #:lower16:.LANCHOR0	@ tmp160,
	movt	r2, #:upper16:.LANCHOR0	@ tmp160,
	str	ip, [r0, lr]	@ <variable>.eChanCapLevel, <variable>.stSynCtx.unSyntax.stiMediaSoftCtx.eChanCapLevel
	ldr	r3, [r4, #76]	@ D.51271, g_SdecFunc.pfun_iMediaSoftDEC_Create
	cmp	r3, #0	@ D.51271,
	beq	.L524	@,
	ldr	r2, [r2, r5, asl #2]	@ temp.2258, s_pstVfmwChan
	add	r0, r2, #250880	@, temp.2258,
	add	r0, r0, #720	@,,
	ldr	r2, [r2, #552]	@, <variable>.eVidStd
	blx	r3	@ D.51271
	cmp	r0, #0	@,
	bne	.L524	@,
.L522:
	mov	r0, #0	@ D.51275,
.L525:
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L524:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC34	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.51275,
	b	.L525	@
	.fnend
	.size	RefreshDecCore, .-RefreshDecCore
	.align	2
	.global	VCTRL_GetSendStreamAgainFlag
	.type	VCTRL_GetSendStreamAgainFlag, %function
VCTRL_GetSendStreamAgainFlag:
	.fnstart
.LFB1552:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r0, [r3, r0, asl #2]	@ D.50273, s_pstVfmwChan
	cmp	r0, #0	@ D.50273,
	beq	.L532	@,
	movw	r1, #:lower16:249300	@ tmp140,
	movt	r1, #:upper16:249300	@ tmp140,
	ldr	r0, [r0, r1]	@ D.50277, <variable>.s32SendStreamAgainFlag
	ldmfd	sp, {fp, sp, pc}	@
.L532:
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #1076	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r3, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.50277,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_GetSendStreamAgainFlag, .-VCTRL_GetSendStreamAgainFlag
	.align	2
	.global	VCTRL_SetSendStreamAgainFlag
	.type	VCTRL_SetSendStreamAgainFlag, %function
VCTRL_SetSendStreamAgainFlag:
	.fnstart
.LFB1551:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r2, [r3, r0, asl #2]	@ D.50264, s_pstVfmwChan
	cmp	r2, #0	@ D.50264,
	beq	.L537	@,
	movw	ip, #:lower16:249300	@ tmp141,
	movt	ip, #:upper16:249300	@ tmp141,
	mov	r0, #0	@ D.50268,
	str	r1, [r2, ip]	@ flag, <variable>.s32SendStreamAgainFlag
	ldmfd	sp, {fp, sp, pc}	@
.L537:
	mov	r0, r2	@, D.50264
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #1069	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r3, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.50268,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_SetSendStreamAgainFlag, .-VCTRL_SetSendStreamAgainFlag
	.align	2
	.global	VCTRL_SetCallBack
	.type	VCTRL_SetCallBack, %function
VCTRL_SetCallBack:
	.fnstart
.LFB1545:
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
	cmp	r1, #0	@ event_report
	beq	.L546	@,
	cmp	r0, #0	@ eType,
	movweq	r3, #:lower16:.LANCHOR0	@ tmp139,
	movteq	r3, #:upper16:.LANCHOR0	@ tmp139,
	streq	r1, [r3, #288]	@ event_report, s_VfmwCTrl.event_report_vdec
	ldmeqfd	sp, {fp, sp, pc}	@
	cmp	r0, #1	@ eType,
	beq	.L547	@,
	mov	r3, r0	@, eType
	ldr	r2, .L548	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC36	@,
	movt	r1, #:upper16:.LC36	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.50133,
	ldmfd	sp, {fp, sp, pc}	@
.L547:
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	mov	r0, #0	@ D.50133,
	str	r1, [r3, #292]	@ event_report, s_VfmwCTrl.event_report_omxvdec
	ldmfd	sp, {fp, sp, pc}	@
.L546:
	mov	r0, r1	@, event_report
	movw	r2, #783	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r3, #:lower16:.LC35	@,
	movt	r1, #:upper16:.LC5	@,
	movt	r3, #:upper16:.LC35	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.50133,
	ldmfd	sp, {fp, sp, pc}	@
.L549:
	.align	2
.L548:
	.word	.LANCHOR1+40
	.fnend
	.size	VCTRL_SetCallBack, .-VCTRL_SetCallBack
	.align	2
	.global	VCTRL_EventReport
	.type	VCTRL_EventReport, %function
VCTRL_EventReport:
	.fnstart
.LFB1544:
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
	cmp	r0, #15	@ InstID,
	mov	lr, r3	@ len, len
	bhi	.L561	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp145,
	movt	r4, #:upper16:.LANCHOR0	@ tmp145,
	ldr	r3, [r4, r0, asl #2]	@ D.50102, s_pstVfmwChan
	cmp	r3, #0	@ D.50102,
	beq	.L562	@,
	ldr	r3, [r3, #36]	@ eType, <variable>.eAdapterType
	cmp	r3, #0	@ eType,
	beq	.L555	@,
	cmp	r3, #1	@ eType,
	beq	.L563	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC40	@,
	ldr	r2, .L565	@,
	movt	r1, #:upper16:.LC40	@,
	str	lr, [sp, #0]	@ len,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
.L552:
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L555:
	ldr	r3, [r4, #288]	@ D.50105, s_VfmwCTrl.event_report_vdec
	cmp	r3, #0	@ D.50105,
	beq	.L564	@,
.L558:
	blx	r3	@ D.50111
	b	.L552	@
.L563:
	ldr	r3, [r4, #292]	@ D.50111, s_VfmwCTrl.event_report_omxvdec
	cmp	r3, #0	@ D.50111,
	bne	.L558	@,
	mov	r0, r3	@, D.50111
	movw	r1, #:lower16:.LC39	@,
	movt	r1, #:upper16:.LC39	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	b	.L552	@
.L564:
	mov	r0, r3	@, D.50105
	movw	r1, #:lower16:.LC38	@,
	movt	r1, #:upper16:.LC38	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	b	.L552	@
.L561:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #747	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC37	@,
	movt	r3, #:upper16:.LC37	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	b	.L552	@
.L562:
	mov	r0, r3	@, D.50102
	movw	r1, #:lower16:.LC5	@,
	mov	r2, #748	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r3, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	b	.L552	@
.L566:
	.align	2
.L565:
	.word	.LANCHOR1+60
	.fnend
	.size	VCTRL_EventReport, .-VCTRL_EventReport
	.align	2
	.global	VCTRL_SetMoreGapEnable
	.type	VCTRL_SetMoreGapEnable, %function
VCTRL_SetMoreGapEnable:
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
	cmp	r0, #15	@ ChanID,
	bhi	.L574	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r3, [r3, r0, asl #2]	@ D.50073, s_pstVfmwChan
	cmp	r3, #0	@ D.50073,
	beq	.L575	@,
	ldr	r2, [r3, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #1	@ <variable>.s32IsOpen,
	bne	.L576	@,
	cmp	r1, #1	@ MoreGapEnable,
	strls	r1, [r3, #1248]	@ MoreGapEnable, <variable>.stSynExtraData.s32MoreGapEnable
	movhi	r2, #0	@ tmp146,
	movls	r0, #0	@ D.50071,
	mvnhi	r0, #0	@ D.50071,
	strhi	r2, [r3, #1248]	@ tmp146, <variable>.stSynExtraData.s32MoreGapEnable
	ldmfd	sp, {fp, sp, pc}	@
.L576:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #727	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC41	@,
	movt	r3, #:upper16:.LC41	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.50071,
	ldmfd	sp, {fp, sp, pc}	@
.L574:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #725	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.50071,
	ldmfd	sp, {fp, sp, pc}	@
.L575:
	mov	r0, r3	@, D.50073
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #726	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r3, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.50071,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_SetMoreGapEnable, .-VCTRL_SetMoreGapEnable
	.align	2
	.global	VCTRL_RegisterSoftDecoder
	.type	VCTRL_RegisterSoftDecoder, %function
VCTRL_RegisterSoftDecoder:
	.fnstart
.LFB1528:
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
	ldr	r3, [r0, #0]	@ <variable>.pfun_iMediaSoftDEC_Create, <variable>.pfun_iMediaSoftDEC_Create
	cmp	r3, #0	@ <variable>.pfun_iMediaSoftDEC_Create,
	beq	.L587	@,
	ldr	r3, [r0, #4]	@ <variable>.pfun_iMediaSoftDEC_Destroy, <variable>.pfun_iMediaSoftDEC_Destroy
	cmp	r3, #0	@ <variable>.pfun_iMediaSoftDEC_Destroy,
	beq	.L588	@,
	ldr	r3, [r0, #8]	@ <variable>.pfun_iMediaSoftDEC_Init, <variable>.pfun_iMediaSoftDEC_Init
	cmp	r3, #0	@ <variable>.pfun_iMediaSoftDEC_Init,
	beq	.L589	@,
	ldr	r3, [r0, #12]	@ <variable>.pfun_iMediaSoftDEC_Decode, <variable>.pfun_iMediaSoftDEC_Decode
	cmp	r3, #0	@ <variable>.pfun_iMediaSoftDEC_Decode,
	beq	.L590	@,
	ldr	r3, [r0, #16]	@ <variable>.pfun_iMediaSoftDEC_RecycleImage, <variable>.pfun_iMediaSoftDEC_RecycleImage
	cmp	r3, #0	@ <variable>.pfun_iMediaSoftDEC_RecycleImage,
	beq	.L591	@,
	ldr	r3, [r0, #20]	@ <variable>.pfun_iMediaSoftDEC_GetRemainImg, <variable>.pfun_iMediaSoftDEC_GetRemainImg
	cmp	r3, #0	@ <variable>.pfun_iMediaSoftDEC_GetRemainImg,
	beq	.L592	@,
	ldr	r3, [r0, #24]	@ <variable>.pfun_iMediaSoftDEC_GetImageBuffer, <variable>.pfun_iMediaSoftDEC_GetImageBuffer
	cmp	r3, #0	@ <variable>.pfun_iMediaSoftDEC_GetImageBuffer,
	beq	.L593	@,
	mov	r4, r0	@ pstSdecFunc, pstSdecFunc
	ldr	ip, .L594	@ tmp158,
	ldmia	r4!, {r0, r1, r2, r3}	@ pstSdecFunc,,,,
	mov	r5, #0	@ D.49783,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp158,,,,
	ldmia	r4, {r0, r1, r2}	@ pstSdecFunc,,,
	stmia	ip, {r0, r1, r2}	@ tmp161,,,
.L579:
	mov	r0, r5	@, D.49783
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L587:
	mov	r0, r3	@, <variable>.pfun_iMediaSoftDEC_Create
	movw	r1, #:lower16:.LC42	@,
	movw	r2, #:lower16:.LC43	@,
	movt	r1, #:upper16:.LC42	@,
	movt	r2, #:upper16:.LC43	@,
	mvn	r5, #0	@ D.49783,
	bl	dprint_vfmw	@
	b	.L579	@
.L592:
	mov	r0, r3	@, <variable>.pfun_iMediaSoftDEC_GetRemainImg
	movw	r1, #:lower16:.LC42	@,
	movw	r2, #:lower16:.LC48	@,
	movt	r1, #:upper16:.LC42	@,
	movt	r2, #:upper16:.LC48	@,
	mvn	r5, #0	@ D.49783,
	bl	dprint_vfmw	@
	b	.L579	@
.L591:
	mov	r0, r3	@, <variable>.pfun_iMediaSoftDEC_RecycleImage
	movw	r1, #:lower16:.LC42	@,
	movw	r2, #:lower16:.LC47	@,
	movt	r1, #:upper16:.LC42	@,
	movt	r2, #:upper16:.LC47	@,
	mvn	r5, #0	@ D.49783,
	bl	dprint_vfmw	@
	b	.L579	@
.L590:
	mov	r0, r3	@, <variable>.pfun_iMediaSoftDEC_Decode
	movw	r1, #:lower16:.LC42	@,
	movw	r2, #:lower16:.LC46	@,
	movt	r1, #:upper16:.LC42	@,
	movt	r2, #:upper16:.LC46	@,
	mvn	r5, #0	@ D.49783,
	bl	dprint_vfmw	@
	b	.L579	@
.L589:
	mov	r0, r3	@, <variable>.pfun_iMediaSoftDEC_Init
	movw	r1, #:lower16:.LC42	@,
	movw	r2, #:lower16:.LC45	@,
	movt	r1, #:upper16:.LC42	@,
	movt	r2, #:upper16:.LC45	@,
	mvn	r5, #0	@ D.49783,
	bl	dprint_vfmw	@
	b	.L579	@
.L588:
	mov	r0, r3	@, <variable>.pfun_iMediaSoftDEC_Destroy
	movw	r1, #:lower16:.LC42	@,
	movw	r2, #:lower16:.LC44	@,
	movt	r1, #:upper16:.LC42	@,
	movt	r2, #:upper16:.LC44	@,
	mvn	r5, #0	@ D.49783,
	bl	dprint_vfmw	@
	b	.L579	@
.L593:
	mov	r0, r3	@, <variable>.pfun_iMediaSoftDEC_GetImageBuffer
	movw	r1, #:lower16:.LC42	@,
	movw	r2, #:lower16:.LC49	@,
	movt	r1, #:upper16:.LC42	@,
	movt	r2, #:upper16:.LC49	@,
	mvn	r5, #0	@ D.49783,
	bl	dprint_vfmw	@
	b	.L579	@
.L595:
	.align	2
.L594:
	.word	.LANCHOR0+76
	.fnend
	.size	VCTRL_RegisterSoftDecoder, .-VCTRL_RegisterSoftDecoder
	.align	2
	.global	VCTRL_ConfigPVRInfo
	.type	VCTRL_ConfigPVRInfo, %function
VCTRL_ConfigPVRInfo:
	.fnstart
.LFB1595:
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
	cmp	r0, #15	@ ChanID,
	bhi	.L603	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	ldr	ip, [r3, r0, asl #2]	@ D.52476, s_pstVfmwChan
	cmp	ip, #0	@ D.52476,
	beq	.L604	@,
	ldr	r0, [ip, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r0, #1	@ <variable>.s32IsOpen,
	bne	.L605	@,
	cmp	r1, #0	@ pArgs,
	beq	.L606	@,
	mov	r4, r1	@ pArgs, pArgs
	add	r5, ip, #1264	@ tmp148, D.52476,
	ldmia	r4!, {r0, r1, r2, r3}	@ pArgs,,,,
	add	ip, r5, #8	@ tmp148, tmp148,
	mov	r5, #0	@ D.52474,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp148,,,,
	ldr	r2, [r4, #0]	@ tmp152,* pArgs
	str	r2, [ip, #0]	@ tmp152, <variable>.stSynExtraData.stPvrInfo
.L598:
	mov	r0, r5	@, D.52474
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L605:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #5041	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC26	@,
	movt	r3, #:upper16:.LC26	@,
	bl	dprint_vfmw	@
	mvn	r5, #0	@ D.52474,
	b	.L598	@
.L603:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #5039	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r5, #0	@ D.52474,
	b	.L598	@
.L606:
	mov	r0, r1	@, pArgs
	movw	r2, #5042	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r3, #:lower16:.LC27	@,
	movt	r1, #:upper16:.LC5	@,
	movt	r3, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mvn	r5, #0	@ D.52474,
	b	.L598	@
.L604:
	mov	r0, ip	@, D.52476
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #5040	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC25	@,
	movt	r3, #:upper16:.LC25	@,
	bl	dprint_vfmw	@
	mvn	r5, #0	@ D.52474,
	b	.L598	@
	.fnend
	.size	VCTRL_ConfigPVRInfo, .-VCTRL_ConfigPVRInfo
	.align	2
	.global	VCTRL_GetChanCfg
	.type	VCTRL_GetChanCfg, %function
VCTRL_GetChanCfg:
	.fnstart
.LFB1574:
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
	cmp	r0, #15	@ ChanID,
	bhi	.L613	@,
	cmp	r1, #0	@ pstCfg,
	beq	.L614	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp142,
	movt	r3, #:upper16:.LANCHOR0	@ tmp142,
	ldr	r3, [r3, r0, asl #2]	@ D.51236, s_pstVfmwChan
	cmp	r3, #0	@ D.51236,
	beq	.L615	@,
	mov	r0, r1	@, pstCfg
	mov	r2, #104	@,
	add	r1, r3, #48	@, D.51236,
	bl	memcpy	@
	mov	r0, #0	@ D.51232,
	ldmfd	sp, {fp, sp, pc}	@
.L613:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #2892	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.51232,
	ldmfd	sp, {fp, sp, pc}	@
.L615:
	mov	r0, r3	@, D.51236
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #2894	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r3, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.51232,
	ldmfd	sp, {fp, sp, pc}	@
.L614:
	mov	r0, r1	@, pstCfg
	movw	r2, #2893	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r3, #:lower16:.LC50	@,
	movt	r1, #:upper16:.LC5	@,
	movt	r3, #:upper16:.LC50	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.51232,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_GetChanCfg, .-VCTRL_GetChanCfg
	.align	2
	.global	VCTRL_SetDiscardPicParam
	.type	VCTRL_SetDiscardPicParam, %function
VCTRL_SetDiscardPicParam:
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
	cmp	r0, #15	@ ChanID,
	mov	r2, r0	@ ChanID, ChanID
	bhi	.L623	@,
	cmp	r1, #0	@ pArgs,
	beq	.L624	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp143,
	movt	r3, #:upper16:.LANCHOR0	@ tmp143,
	ldr	ip, [r3, r0, asl #2]	@ D.50347, s_pstVfmwChan
	cmp	ip, #0	@ D.50347,
	beq	.L625	@,
	ldmia	r1, {r0, r1}	@ pArgs,,
	add	ip, ip, #1456	@ tmp146, D.50347,
	stmia	ip, {r0, r1}	@ tmp146,,
	ldr	r3, [r3, r2, asl #2]	@ temp.2484, s_pstVfmwChan
	ldr	r0, [r3, #1456]	@ <variable>.stSynExtraData.stDisParams.s32Mode, <variable>.stSynExtraData.stDisParams.s32Mode
	sub	r2, r0, #1	@ tmp150, <variable>.stSynExtraData.stDisParams.s32Mode,
	mov	r0, #0	@ D.50343,
	cmp	r2, #1	@ tmp150,
	strhi	r0, [r3, #1456]	@ tmp152, <variable>.stSynExtraData.stDisParams.s32Mode
	ldmfd	sp, {fp, sp, pc}	@
.L623:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #1154	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.50343,
	ldmfd	sp, {fp, sp, pc}	@
.L625:
	mov	r0, ip	@, D.50347
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #1156	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r3, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.50343,
	ldmfd	sp, {fp, sp, pc}	@
.L624:
	mov	r0, r1	@, pArgs
	movw	r2, #1155	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r3, #:lower16:.LC51	@,
	movt	r1, #:upper16:.LC5	@,
	movt	r3, #:upper16:.LC51	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.50343,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_SetDiscardPicParam, .-VCTRL_SetDiscardPicParam
	.align	2
	.global	VCTRL_SetFrameInterface
	.type	VCTRL_SetFrameInterface, %function
VCTRL_SetFrameInterface:
	.fnstart
.LFB1554:
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
	cmp	r1, #0	@ pstFrameIntf
	beq	.L631	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r3, [r3, r0, asl #2]	@ D.50303, s_pstVfmwChan
	cmp	r3, #0	@ D.50303,
	beq	.L632	@,
	ldmia	r1, {r0, r1, r2}	@ pstFrameIntf,,,
	add	r3, r3, #176	@ tmp143, D.50303,
	mov	ip, #0	@ D.50301,
	stmia	r3, {r0, r1, r2}	@ tmp143,,,
.L628:
	mov	r0, ip	@, D.50301
	ldmfd	sp, {fp, sp, pc}	@
.L632:
	mov	r0, r3	@, D.50303
	movw	r1, #:lower16:.LC5	@,
	mov	r2, #1104	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r3, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mvn	ip, #0	@ D.50301,
	b	.L628	@
.L631:
	mov	r0, r1	@, pstFrameIntf
	movw	r2, #1103	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r3, #:lower16:.LC52	@,
	movt	r1, #:upper16:.LC5	@,
	movt	r3, #:upper16:.LC52	@,
	bl	dprint_vfmw	@
	mvn	ip, #0	@ D.50301,
	b	.L628	@
	.fnend
	.size	VCTRL_SetFrameInterface, .-VCTRL_SetFrameInterface
	.align	2
	.global	VCTRL_SetStreamInterface
	.type	VCTRL_SetStreamInterface, %function
VCTRL_SetStreamInterface:
	.fnstart
.LFB1550:
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
	subs	r6, r1, #0	@ pstStreamParam, pstStreamParam
	mov	r5, r0	@ ChanID, ChanID
	beq	.L638	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp140,
	movt	r4, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r0, [r4, r0, asl #2]	@ D.50252, s_pstVfmwChan
	cmp	r0, #0	@ D.50252,
	beq	.L639	@,
	add	r5, r5, r5, asl #1	@, tmp152, ChanID, ChanID,
	mov	r2, #12	@,
	add	r4, r4, #312	@ tmp149, tmp140,
	add	r0, r0, #152	@, D.50252,
	bl	memcpy	@
	mov	r1, r6	@, pstStreamParam
	add	r0, r4, r5, asl #2	@,, tmp149, tmp152,
	mov	r2, #12	@,
	bl	memcpy	@
	mov	r0, #0	@ D.50250,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L639:
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #1060	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r3, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.50250,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L638:
	mov	r0, r6	@, pstStreamParam
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #1059	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC53	@,
	movt	r3, #:upper16:.LC53	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.50250,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	VCTRL_SetStreamInterface, .-VCTRL_SetStreamInterface
	.align	2
	.global	DBG_WriteBigTileYuv
	.type	DBG_WriteBigTileYuv, %function
DBG_WriteBigTileYuv:
	.fnstart
.LFB1667:
	@ args = 32, pretend = 0, frame = 40
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
	cmp	r0, #0	@
	mov	r5, r1	@ Yaddress, Yaddress
	str	r0, [fp, #-64]	@, %sfp
	str	r2, [fp, #-76]	@ Caddress, %sfp
	mov	r4, r3	@ Width, Width
	ldr	r6, [fp, #8]	@ PicStructure, PicStructure
	beq	.L677	@,
	ldr	ip, [fp, #20]	@, LeftOffset
	ldr	r1, [fp, #4]	@, Height
	ldr	r0, [fp, #28]	@, TopOffset
	rsb	r2, ip, r3	@ tmp211,, Width
	ldr	r3, [fp, #32]	@ BottomOffset, BottomOffset
	mov	ip, r4, lsr #1	@, Width,
	rsb	r8, r0, r1	@ tmp212,,
	ldr	lr, [fp, #24]	@ RightOffset, RightOffset
	rsb	r8, r3, r8	@, BottomOffset, tmp212
	mov	r0, #32	@,
	rsb	r2, lr, r2	@, RightOffset, tmp211
	movw	r1, #:lower16:.LC54	@,
	mov	r3, r8	@,
	movt	r1, #:upper16:.LC54	@,
	str	r2, [fp, #-72]	@, %sfp
	str	r8, [fp, #-60]	@, %sfp
	str	ip, [fp, #-68]	@, %sfp
	bl	dprint_vfmw	@
	ldr	r0, [fp, #4]	@, Height
	cmp	r6, #0	@ PicStructure,
	cmpne	r6, #3	@, PicStructure,
	mov	r1, r0, lsr #1	@,,
	str	r1, [fp, #-56]	@, %sfp
	bne	.L642	@,
	ldr	sl, [fp, #4]	@, Height
	cmp	sl, #0	@,
	movweq	r6, #:lower16:.LANCHOR0	@ tmp334,
	movteq	r6, #:upper16:.LANCHOR0	@ tmp334,
	beq	.L643	@,
	movw	r6, #:lower16:.LANCHOR0	@ tmp334,
	movt	r6, #:upper16:.LANCHOR0	@ tmp334,
	mov	r8, r5	@ Yaddress, Yaddress
	mov	r9, r4	@ Width, Width
	mov	sl, #0	@ ivtmp.2655,
	str	sl, [fp, #-48]	@ ivtmp.2655, %sfp
.L644:
	cmp	r9, #0	@ Width,
	beq	.L646	@,
	ldr	r1, [fp, #-48]	@, %sfp
	sub	r4, r9, #1	@ tmp373, Width,
	ldr	r2, [fp, #12]	@, Stride
	ubfx	r5, r4, #8, #1	@ tmp374, tmp373,,
	and	lr, r1, #15	@ pretmp.2752,,
	ldr	ip, [r6, #504]	@ pY, pY
	mov	r0, r1, lsr #4	@ pretmp.2755,,
	mul	r7, r2, r0	@ tmp234,, pretmp.2755
	mov	r2, #256	@,
	mla	r7, lr, r2, r7	@ pretmp.2597, pretmp.2752,, tmp234
	add	r0, sl, ip	@, ivtmp.2655, pY
	mov	r4, r2	@ j,
	add	r1, r8, r7	@, Yaddress, pretmp.2597
	bl	memcpy	@
	cmp	r9, r4	@ Width, j
	bls	.L646	@,
	cmp	r5, #0	@ tmp374,
	beq	.L645	@,
	ldr	r5, [r6, #504]	@ pY, pY
	add	ip, sl, r4	@ tmp515, ivtmp.2655, j
	add	lr, r7, #4096	@ tmp520, pretmp.2597,
	mov	r2, r4	@, j
	add	r0, ip, r5	@, tmp515, pY
	add	r1, r8, lr	@, Yaddress, tmp520
	bl	memcpy	@
	mov	r4, #512	@ j,
	cmp	r9, r4	@ Width, j
	bls	.L646	@,
.L645:
	mov	r1, r4, lsr #8	@ tmp225, j,
	ldr	r2, [r6, #504]	@ pY, pY
	add	r5, r4, #256	@ tmp375, j,
	add	ip, sl, r4	@ tmp222, ivtmp.2655, j
	add	lr, r7, r1, asl #12	@, tmp227, pretmp.2597, tmp225,
	add	r0, ip, r2	@, tmp222, pY
	add	r1, r8, lr	@, Yaddress, tmp227
	mov	r2, #256	@,
	mov	r4, r5, lsr #8	@ tmp400, tmp375,
	bl	memcpy	@
	ldr	r3, [r6, #504]	@ pY, pY
	add	r0, sl, r5	@ tmp397, ivtmp.2655, tmp375
	add	r2, r7, r4, asl #12	@, tmp402, pretmp.2597, tmp400,
	add	r4, r5, #256	@ j, tmp375,
	add	r1, r8, r2	@, Yaddress, tmp402
	add	r0, r0, r3	@, tmp397, pY
	mov	r2, #256	@,
	bl	memcpy	@
	cmp	r9, r4	@ Width, j
	bhi	.L645	@,
.L646:
	ldr	r3, [fp, #-48]	@, %sfp
	add	sl, sl, r9	@ ivtmp.2655, ivtmp.2655, Width
	ldr	r5, [fp, #4]	@, Height
	add	r0, r3, #1	@,,
	str	r0, [fp, #-48]	@, %sfp
	cmp	r5, r0	@,
	bhi	.L644	@,
	mov	r4, r9	@ Width, Width
.L643:
	ldr	r3, [fp, #-60]	@, %sfp
	ldr	ip, [fp, #4]	@, Height
	ldr	r5, [fp, #-72]	@, %sfp
	cmp	r3, ip	@,
	cmpeq	r5, r4	@,, Width
	movne	sl, #0	@,
	moveq	sl, #1	@,
	str	sl, [fp, #-80]	@, %sfp
	beq	.L771	@,
	ldr	r2, [fp, #-60]	@, %sfp
	ldr	r0, [r6, #504]	@ pY.2694, pY
	cmp	r2, #0	@,
	beq	.L650	@,
	ldr	r1, [fp, #28]	@, TopOffset
	sub	r7, r2, #1	@ tmp367,,
	ldr	r8, [fp, #20]	@, LeftOffset
	ldr	r2, [fp, #-64]	@, %sfp
	mla	sl, r4, r1, r8	@ tmp245, Width,,
	ldr	r1, [fp, #-72]	@, %sfp
	and	r8, r7, #1	@ tmp369, tmp367,
	mov	r7, #1	@ i.2695,
	add	r0, r0, sl	@ pPicAddr, pY.2694, tmp245
	add	r5, r0, r4	@ pPicAddr, pPicAddr, Width
	bl	klib_fwrite	@
	ldr	r2, [fp, #-60]	@, %sfp
	cmp	r2, r7	@,
	bls	.L650	@,
	cmp	r8, #0	@ tmp369,
	beq	.L759	@,
	mov	r0, r5	@, pPicAddr
	ldr	r1, [fp, #-72]	@, %sfp
	ldr	r2, [fp, #-64]	@, %sfp
	mov	r7, #2	@ i.2695,
	bl	klib_fwrite	@
	ldr	sl, [fp, #-60]	@, %sfp
	add	r5, r5, r4	@ pPicAddr, pPicAddr, Width
	cmp	sl, r7	@, i.2695
	bls	.L650	@,
.L759:
	mov	r0, r5	@ pPicAddr, pPicAddr
	ldr	r8, [fp, #-72]	@ disp_width, %sfp
	ldr	sl, [fp, #-64]	@ fpYuv, %sfp
	mov	r9, r6	@ tmp334, tmp334
	ldr	r5, [fp, #-60]	@ disp_height, %sfp
.L651:
	add	r6, r0, r4	@ pPicAddr, pPicAddr, Width
	add	r3, r7, #1	@ tmp370, i.2695,
	mov	r1, r8	@, disp_width
	mov	r2, sl	@, fpYuv
	add	r7, r3, #1	@ i.2695, tmp370,
	bl	klib_fwrite	@
	mov	r0, r6	@, pPicAddr
	mov	r1, r8	@, disp_width
	mov	r2, sl	@, fpYuv
	bl	klib_fwrite	@
	cmp	r5, r7	@ disp_height, i.2695
	add	r0, r6, r4	@ pPicAddr, pPicAddr, Width
	bhi	.L651	@,
	mov	r6, r9	@ tmp334, tmp334
.L650:
	ldr	lr, [fp, #-56]	@, %sfp
	cmp	lr, #0	@,
	beq	.L648	@,
	ldr	r0, [fp, #12]	@, Stride
	mov	r9, r4	@ Width, Width
	ldr	sl, [fp, #-76]	@ Caddress, %sfp
	mov	r8, #0	@ ivtmp.2643,
	str	r8, [fp, #-48]	@ i.2701, %sfp
	mov	ip, r0, lsr #1	@,,
	str	ip, [fp, #-52]	@, %sfp
.L649:
	cmp	r9, #0	@ Width,
	beq	.L653	@,
	ldr	r1, [fp, #-48]	@, %sfp
	sub	ip, r9, #1	@ tmp364, Width,
	ldr	lr, [fp, #-52]	@, %sfp
	mov	r2, #256	@,
	and	r0, r1, #7	@ pretmp.2750,,
	ldr	r3, [r6, #504]	@ pY, pY
	mov	r4, r1, lsr #3	@ pretmp.2594,,
	ubfx	r5, ip, #8, #1	@ tmp365, tmp364,,
	mov	r7, r0, asl #8	@ tmp259, pretmp.2750,
	add	r0, r8, r3	@, ivtmp.2643, pY
	mla	r7, lr, r4, r7	@ pretmp.2595,, pretmp.2594, tmp259
	mov	r4, r2	@ j.2700,
	add	r1, sl, r7	@, Caddress, pretmp.2595
	bl	memcpy	@
	cmp	r9, r4	@ Width, j.2700
	bls	.L653	@,
	cmp	r5, #0	@ tmp365,
	beq	.L652	@,
	ldr	r3, [r6, #504]	@ pY, pY
	add	r1, r8, r4	@ tmp508, ivtmp.2643, j.2700
	add	r5, r7, #2048	@ tmp513, pretmp.2595,
	mov	r2, r4	@, j.2700
	add	r0, r1, r3	@, tmp508, pY
	add	r1, sl, r5	@, Caddress, tmp513
	bl	memcpy	@
	mov	r4, #512	@ j.2700,
	cmp	r9, r4	@ Width, j.2700
	bls	.L653	@,
.L652:
	mov	r1, r4, lsr #8	@ tmp250, j.2700,
	ldr	r3, [r6, #504]	@ pY, pY
	add	r5, r4, #256	@ tmp366, j.2700,
	add	ip, r8, r4	@ tmp247, ivtmp.2643, j.2700
	add	lr, r7, r1, asl #11	@, tmp252, pretmp.2595, tmp250,
	add	r0, ip, r3	@, tmp247, pY
	add	r1, sl, lr	@, Caddress, tmp252
	mov	r2, #256	@,
	mov	r4, r5, lsr #8	@ tmp420, tmp366,
	bl	memcpy	@
	ldr	r2, [r6, #504]	@ pY, pY
	add	r0, r8, r5	@ tmp417, ivtmp.2643, tmp366
	add	ip, r7, r4, asl #11	@, tmp422, pretmp.2595, tmp420,
	add	r4, r5, #256	@ j.2700, tmp366,
	add	r0, r0, r2	@, tmp417, pY
	add	r1, sl, ip	@, Caddress, tmp422
	mov	r2, #256	@,
	bl	memcpy	@
	cmp	r9, r4	@ Width, j.2700
	bhi	.L652	@,
.L653:
	ldr	r5, [fp, #-48]	@, %sfp
	add	r8, r8, r9	@ ivtmp.2643, ivtmp.2643, Width
	ldr	r2, [fp, #-56]	@, %sfp
	add	r0, r5, #1	@,,
	str	r0, [fp, #-48]	@, %sfp
	cmp	r2, r0	@,
	bhi	.L649	@,
	mov	r4, r9	@ Width, Width
.L648:
	ldr	sl, [fp, #16]	@, chroma_idc
	movw	r5, #:lower16:.LANCHOR0	@ tmp260,
	movt	r5, #:upper16:.LANCHOR0	@ tmp260,
	cmp	sl, #1	@,
	ldr	sl, [r6, #504]	@ tmp, pY
	beq	.L772	@,
	ldr	r1, [fp, #16]	@, chroma_idc
	cmp	r1, #0	@,
	beq	.L773	@,
.L655:
	ldr	r2, [fp, #-80]	@, %sfp
	cmp	r2, #0	@,
	bne	.L774	@,
	ldr	r9, [fp, #-60]	@, %sfp
	ldr	r3, [r6, #512]	@ pUl.2707, pUl
	movs	r8, r9, lsr #1	@ disp_chroma_height,,
	ldr	r9, [r6, #508]	@ pVl.2708, pVl
	beq	.L677	@,
	ldr	r4, [fp, #28]	@, TopOffset
	sub	r6, r8, #1	@ tmp353, disp_chroma_height,
	ldr	r0, [fp, #20]	@, LeftOffset
	ldr	sl, [fp, #-72]	@, %sfp
	ldr	lr, [fp, #-68]	@, %sfp
	mov	r5, r4, lsr #1	@ tmp279,,
	mov	r7, r0, lsr #1	@ tmp281,,
	ldr	r2, [fp, #-64]	@, %sfp
	mov	r4, sl, lsr #1	@ pretmp.2591,,
	mla	sl, lr, r5, r7	@ D.55977,, tmp279, tmp281
	mov	r1, r4	@, pretmp.2591
	and	r7, r6, #1	@ tmp355, tmp353,
	mov	r6, #1	@ i.2709,
	add	r0, r3, sl	@ pCbPicAddr, pUl.2707, D.55977
	add	r5, r0, lr	@ pCbPicAddr, pCbPicAddr,
	bl	klib_fwrite	@
	cmp	r8, r6	@ disp_chroma_height,
	bls	.L742	@,
	cmp	r7, #0	@ tmp355,
	beq	.L753	@,
	mov	r0, r5	@, pCbPicAddr
	mov	r1, r4	@, pretmp.2591
	ldr	r2, [fp, #-64]	@, %sfp
	mov	r6, #2	@ i.2709,
	bl	klib_fwrite	@
	ldr	r7, [fp, #-68]	@, %sfp
	cmp	r8, r6	@ disp_chroma_height, i.2709
	add	r5, r5, r7	@ pCbPicAddr, pCbPicAddr,
	bls	.L742	@,
.L753:
	str	r9, [fp, #-48]	@ pVl.2708, %sfp
	mov	r0, r5	@ pCbPicAddr, pCbPicAddr
	ldr	r9, [fp, #-68]	@ chrom_width, %sfp
	mov	r5, sl	@ D.55977, D.55977
	ldr	sl, [fp, #-64]	@ fpYuv, %sfp
.L660:
	add	r7, r0, r9	@ pCbPicAddr, pCbPicAddr, chrom_width
	add	r3, r6, #1	@ tmp356, i.2709,
	mov	r1, r4	@, pretmp.2591
	mov	r2, sl	@, fpYuv
	add	r6, r3, #1	@ i.2709, tmp356,
	bl	klib_fwrite	@
	mov	r0, r7	@, pCbPicAddr
	mov	r1, r4	@, pretmp.2591
	mov	r2, sl	@, fpYuv
	bl	klib_fwrite	@
	cmp	r8, r6	@ disp_chroma_height, i.2709
	add	r0, r7, r9	@ pCbPicAddr, pCbPicAddr, chrom_width
	bhi	.L660	@,
	ldr	r9, [fp, #-48]	@ pVl.2708, %sfp
	mov	sl, r5	@ D.55977, D.55977
.L742:
	add	r6, r9, sl	@ pCrPicAddr, pVl.2708, D.55977
	sub	ip, r8, #1	@ tmp349, disp_chroma_height,
	mov	r1, r4	@, pretmp.2591
	ldr	r2, [fp, #-64]	@, %sfp
	mov	r0, r6	@, pCrPicAddr
	and	r7, ip, #1	@ tmp351, tmp349,
	bl	klib_fwrite	@
	ldr	r1, [fp, #-68]	@, %sfp
	cmp	r8, #1	@ disp_chroma_height,
	add	r5, r6, r1	@ pCrPicAddr, pCrPicAddr,
	mov	r6, #1	@ i.2704,
	bls	.L677	@,
	cmp	r7, #0	@ tmp351,
	beq	.L751	@,
	mov	r0, r5	@, pCrPicAddr
	mov	r1, r4	@, pretmp.2591
	ldr	r2, [fp, #-64]	@, %sfp
	mov	r6, #2	@ i.2704,
	bl	klib_fwrite	@
	ldr	r0, [fp, #-68]	@, %sfp
	cmp	r8, r6	@ disp_chroma_height, i.2704
	add	r5, r5, r0	@ pCrPicAddr, pCrPicAddr,
	bls	.L677	@,
.L751:
	ldr	r9, [fp, #-68]	@ chrom_width, %sfp
	mov	r0, r5	@ pCrPicAddr, pCrPicAddr
	ldr	sl, [fp, #-64]	@ fpYuv, %sfp
.L661:
	add	r7, r0, r9	@ pCrPicAddr, pCrPicAddr, chrom_width
	add	lr, r6, #1	@ tmp352, i.2704,
	mov	r1, r4	@, pretmp.2591
	mov	r2, sl	@, fpYuv
	add	r6, lr, #1	@ i.2704, tmp352,
	bl	klib_fwrite	@
	mov	r0, r7	@, pCrPicAddr
	mov	r1, r4	@, pretmp.2591
	mov	r2, sl	@, fpYuv
	bl	klib_fwrite	@
	cmp	r8, r6	@ disp_chroma_height, i.2704
	add	r0, r7, r9	@ pCrPicAddr, pCrPicAddr, chrom_width
	bhi	.L661	@,
.L677:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L642:
	ldr	r2, [fp, #4]	@, Height
	subs	r6, r6, #1	@, PicStructure,
	movne	r6, #1	@
	str	r6, [fp, #-60]	@, %sfp
	cmp	r2, r6	@,
	movwls	r6, #:lower16:.LANCHOR0	@ tmp454,
	movtls	r6, #:upper16:.LANCHOR0	@ tmp454,
	bls	.L662	@,
	ldr	r9, [fp, #-60]	@, %sfp
	movw	r6, #:lower16:.LANCHOR0	@ tmp454,
	movt	r6, #:upper16:.LANCHOR0	@ tmp454,
	mov	sl, r5	@ Yaddress, Yaddress
	str	r9, [fp, #-48]	@, %sfp
	mov	r9, r4	@ Width, Width
.L663:
	cmp	r9, #0	@ Width,
	beq	.L665	@,
	ldr	r2, [fp, #-48]	@, %sfp
	sub	r5, r9, #1	@ tmp393, Width,
	ldr	ip, [fp, #12]	@, Stride
	ubfx	r5, r5, #8, #1	@ tmp394, tmp393,,
	and	r1, r2, #15	@ pretmp.2749,,
	ldr	lr, [r6, #504]	@ pY, pY
	mov	r7, r2, lsr #4	@ pretmp.2742,,
	mov	r8, r2, lsr #1	@ pretmp.2744,,
	mov	r2, #256	@,
	mul	r4, ip, r7	@ tmp296,, pretmp.2742
	mla	r7, r1, r2, r4	@ pretmp.2587, pretmp.2749,, tmp296
	mov	r4, r2	@ j.2717,
	mul	r8, r9, r8	@ pretmp.2743, Width, pretmp.2744
	add	r1, sl, r7	@, Yaddress, pretmp.2587
	add	r0, r8, lr	@, pretmp.2743, pY
	bl	memcpy	@
	cmp	r9, r4	@ Width, j.2717
	bls	.L665	@,
	cmp	r5, #0	@ tmp394,
	beq	.L664	@,
	ldr	lr, [r6, #504]	@ pY, pY
	add	r0, r4, r8	@ tmp534, j.2717, pretmp.2743
	add	ip, r7, #4096	@ tmp539, pretmp.2587,
	mov	r2, r4	@, j.2717
	add	r0, r0, lr	@, tmp534, pY
	add	r1, sl, ip	@, Yaddress, tmp539
	bl	memcpy	@
	mov	r4, #512	@ j.2717,
	cmp	r9, r4	@ Width, j.2717
	bls	.L665	@,
.L664:
	mov	r1, r4, lsr #8	@ tmp287, j.2717,
	ldr	r2, [r6, #504]	@ pY, pY
	add	r5, r4, #256	@ tmp395, j.2717,
	add	lr, r4, r8	@ tmp284, j.2717, pretmp.2743
	add	ip, r7, r1, asl #12	@, tmp289, pretmp.2587, tmp287,
	add	r0, lr, r2	@, tmp284, pY
	add	r1, sl, ip	@, Yaddress, tmp289
	mov	r2, #256	@,
	mov	r4, r5, lsr #8	@ tmp459, tmp395,
	bl	memcpy	@
	ldr	r3, [r6, #504]	@ pY, pY
	add	r0, r5, r8	@ tmp456, tmp395, pretmp.2743
	add	r1, r7, r4, asl #12	@, tmp461, pretmp.2587, tmp459,
	mov	r2, #256	@,
	add	r4, r5, #256	@ j.2717, tmp395,
	add	r0, r0, r3	@, tmp456, pY
	add	r1, sl, r1	@, Yaddress, tmp461
	bl	memcpy	@
	cmp	r9, r4	@ Width, j.2717
	bhi	.L664	@,
.L665:
	ldr	r3, [fp, #-48]	@, %sfp
	ldr	r7, [fp, #4]	@, Height
	add	r0, r3, #2	@,,
	str	r0, [fp, #-48]	@, %sfp
	cmp	r7, r0	@,
	bhi	.L663	@,
	mov	r4, r9	@ Width, Width
.L662:
	ldr	lr, [fp, #4]	@, Height
	ldr	r0, [r6, #504]	@, pY
	ldr	r2, [fp, #-64]	@, %sfp
	mul	r3, r4, lr	@ tmp299, Width,
	mov	r1, r3, lsr #1	@, tmp299,
	bl	klib_fwrite	@
	ldr	r0, [fp, #-56]	@, %sfp
	cmp	r0, #0	@,
	beq	.L666	@,
	ldr	r1, [fp, #12]	@, Stride
	mov	r8, #0	@ ivtmp.2684,
	ldr	sl, [fp, #-76]	@ Caddress, %sfp
	str	r8, [fp, #-48]	@ i.2728, %sfp
	mov	r9, r1, lsr #1	@,,
	str	r9, [fp, #-52]	@, %sfp
	mov	r9, r4	@ Width, Width
.L667:
	cmp	r9, #0	@ Width,
	beq	.L669	@,
	ldr	r7, [fp, #-48]	@, %sfp
	mov	r2, #256	@,
	ldr	ip, [fp, #-52]	@, %sfp
	sub	r5, r9, #1	@ tmp388, Width,
	and	r1, r7, #7	@ pretmp.2759,,
	ldr	r4, [r6, #504]	@ pY, pY
	mov	r0, r7, lsr #3	@ pretmp.2756,,
	ubfx	r5, r5, #8, #1	@ tmp389, tmp388,,
	mul	lr, ip, r0	@ tmp314,, pretmp.2756
	add	r0, r8, r4	@, ivtmp.2684, pY
	mla	r7, r1, r2, lr	@ pretmp.2585, pretmp.2759,, tmp314
	mov	r4, r2	@ j.2727,
	add	r1, sl, r7	@, Caddress, pretmp.2585
	bl	memcpy	@
	cmp	r9, r4	@ Width, j.2727
	bls	.L669	@,
	cmp	r5, #0	@ tmp389,
	beq	.L668	@,
	ldr	r3, [r6, #504]	@ pY, pY
	add	r1, r8, r4	@ tmp527, ivtmp.2684, j.2727
	add	lr, r7, #2048	@ tmp532, pretmp.2585,
	mov	r2, r4	@, j.2727
	add	r0, r1, r3	@, tmp527, pY
	add	r1, sl, lr	@, Caddress, tmp532
	bl	memcpy	@
	mov	r4, #512	@ j.2727,
	cmp	r9, r4	@ Width, j.2727
	bls	.L669	@,
.L668:
	mov	r1, r4, lsr #8	@ tmp305, j.2727,
	ldr	ip, [r6, #504]	@ pY, pY
	add	r5, r4, #256	@ tmp390, j.2727,
	add	r0, r8, r4	@ tmp302, ivtmp.2684, j.2727
	add	lr, r7, r1, asl #11	@, tmp307, pretmp.2585, tmp305,
	add	r0, r0, ip	@, tmp302, pY
	add	r1, sl, lr	@, Caddress, tmp307
	mov	r2, #256	@,
	mov	r4, r5, lsr #8	@ tmp475, tmp390,
	bl	memcpy	@
	ldr	r3, [r6, #504]	@ pY, pY
	add	r2, r8, r5	@ tmp472, ivtmp.2684, tmp390
	add	ip, r7, r4, asl #11	@, tmp477, pretmp.2585, tmp475,
	add	r4, r5, #256	@ j.2727, tmp390,
	add	r0, r2, r3	@, tmp472, pY
	add	r1, sl, ip	@, Caddress, tmp477
	mov	r2, #256	@,
	bl	memcpy	@
	cmp	r9, r4	@ Width, j.2727
	bhi	.L668	@,
.L669:
	ldr	r3, [fp, #-48]	@, %sfp
	add	r8, r8, r9	@ ivtmp.2684, ivtmp.2684, Width
	ldr	r2, [fp, #-56]	@, %sfp
	add	r7, r3, #1	@,,
	str	r7, [fp, #-48]	@, %sfp
	cmp	r2, r7	@,
	bhi	.L667	@,
	mov	r4, r9	@ Width, Width
.L666:
	ldr	r2, [fp, #16]	@, chroma_idc
	ldr	r7, [r6, #504]	@ pY.2729, pY
	cmp	r2, #1	@,
	beq	.L775	@,
	ldr	r4, [fp, #16]	@, chroma_idc
	cmp	r4, #0	@,
	bne	.L671	@,
	ldr	r2, [fp, #-56]	@, %sfp
	ldr	r3, [fp, #-60]	@, %sfp
	cmp	r2, r3	@,
	bls	.L675	@,
	ldr	r1, [fp, #-56]	@, %sfp
	add	r3, r3, #2	@ i.2710,,
	ldr	ip, [fp, #-60]	@, %sfp
	cmp	r1, r3	@, i.2710
	mvn	r0, ip	@ tmp382,
	add	lr, r0, r1	@ tmp383, tmp382,
	ubfx	r2, lr, #1, #1	@ tmp384, tmp383,,
	bls	.L675	@,
	cmp	r2, #0	@ tmp384,
	beq	.L765	@,
	ldr	r2, [fp, #-56]	@, %sfp
	add	r3, r3, #2	@ i.2710, i.2710,
	cmp	r2, r3	@, i.2710
	bls	.L675	@,
.L765:
	ldr	r2, [fp, #-56]	@ chrom_height, %sfp
.L680:
	add	r3, r3, #4	@ i.2710, i.2710,
	cmp	r2, r3	@ chrom_height, i.2710
	bhi	.L680	@,
.L675:
	mov	r1, #128	@,
	mov	r2, #1048576	@,
	ldr	r0, [r6, #508]	@, pVl
	bl	memset	@
	ldr	r0, [r6, #512]	@, pUl
	mov	r1, #128	@,
	mov	r2, #1048576	@,
	bl	memset	@
.L671:
	ldr	r2, [fp, #-68]	@, %sfp
	ldr	r3, [fp, #-56]	@, %sfp
	ldr	r0, [r6, #512]	@, pUl
	mul	r4, r2, r3	@ tmp329,,
	ldr	r2, [fp, #-64]	@, %sfp
	mov	r4, r4, lsr #1	@ D.56011, tmp329,
.L770:
	mov	r1, r4	@, D.56011
	bl	klib_fwrite	@
	ldr	r0, [r6, #508]	@, pVl
	mov	r1, r4	@, D.56011
	ldr	r2, [fp, #-64]	@, %sfp
	bl	klib_fwrite	@
	b	.L677	@
.L771:
	mul	r1, r4, ip	@, Width,
	ldr	r0, [r6, #504]	@, pY
	ldr	r2, [fp, #-64]	@, %sfp
	bl	klib_fwrite	@
	b	.L650	@
.L772:
	ldr	r2, [fp, #-56]	@, %sfp
	cmp	r2, #0	@,
	beq	.L655	@,
	ldr	r5, [fp, #-68]	@ chrom_width, %sfp
	mov	r1, #0	@ ivtmp.2635,
	mov	r9, r1	@ i.2703, ivtmp.2635
	str	r4, [fp, #-48]	@ Width, %sfp
.L656:
	cmp	r5, #0	@ chrom_width,
	beq	.L658	@,
	ldrb	r0, [sl, #0]	@ zero_extendqisi2	@ tmp443,* tmp
	mov	r2, #1	@ j.2702,
	ldr	lr, [r6, #508]	@ pVl, pVl
	cmp	r5, r2	@ chrom_width, j.2702
	sub	r4, r5, #1	@ tmp357, chrom_width,
	add	r3, sl, #2	@ ivtmp.2622, tmp,
	and	r4, r4, r2	@ tmp359, tmp357,
	strb	r0, [lr, r1]	@ tmp443,* ivtmp.2635
	ldr	r0, [r6, #512]	@ pUl, pUl
	ldrb	ip, [sl, #1]	@ zero_extendqisi2	@ tmp445,
	strb	ip, [r0, r1]	@ tmp445,* ivtmp.2635
	bls	.L658	@,
	cmp	r4, #0	@ tmp359,
	beq	.L657	@,
	ldrb	r4, [r3, #0]	@ zero_extendqisi2	@ tmp505,* ivtmp.2622
	add	lr, r1, r2	@ D.55945, ivtmp.2635, j.2702
	ldr	r0, [r6, #508]	@ pVl, pVl
	mov	r2, #2	@ j.2702,
	cmp	r5, r2	@ chrom_width, j.2702
	strb	r4, [r0, lr]	@ tmp505,* D.55945
	ldrb	r4, [r3, #1]	@ zero_extendqisi2	@ tmp507,
	add	r3, r3, r2	@ ivtmp.2622, ivtmp.2622,
	ldr	ip, [r6, #512]	@ pUl, pUl
	strb	r4, [ip, lr]	@ tmp507,* D.55945
	bls	.L658	@,
.L657:
	ldrb	r8, [r3, #0]	@ zero_extendqisi2	@ tmp263,* ivtmp.2622
	add	ip, r1, r2	@ D.55945, ivtmp.2635, j.2702
	ldr	r4, [r6, #508]	@ pVl, pVl
	add	r2, r2, #1	@ tmp360, j.2702,
	add	lr, r1, r2	@ D.55945, ivtmp.2635, tmp360
	add	r0, r3, #2	@ tmp361, ivtmp.2622,
	add	r2, r2, #1	@ j.2702, tmp360,
	strb	r8, [r4, ip]	@ tmp263,* D.55945
	cmp	r5, r2	@ chrom_width, j.2702
	ldrb	r8, [r3, #1]	@ zero_extendqisi2	@ tmp267,
	ldr	r7, [r6, #512]	@ pUl, pUl
	strb	r8, [r7, ip]	@ tmp267,* D.55945
	ldrb	r7, [r3, #2]	@ zero_extendqisi2	@ tmp436,
	add	r3, r0, #2	@ ivtmp.2622, tmp361,
	ldr	r4, [r6, #508]	@ pVl, pVl
	strb	r7, [r4, lr]	@ tmp436,* D.55945
	ldr	r4, [r6, #512]	@ pUl, pUl
	ldrb	ip, [r0, #1]	@ zero_extendqisi2	@ tmp438,
	strb	ip, [r4, lr]	@ tmp438,* D.55945
	bhi	.L657	@,
.L658:
	ldr	r3, [fp, #-56]	@, %sfp
	add	r9, r9, #1	@ i.2703, i.2703,
	add	r1, r1, r5	@ ivtmp.2635, ivtmp.2635, chrom_width
	cmp	r3, r9	@, i.2703
	bls	.L655	@,
	ldr	lr, [fp, #-48]	@, %sfp
	add	sl, sl, lr	@ tmp, tmp,
	b	.L656	@
.L775:
	ldr	r3, [fp, #-56]	@, %sfp
	cmp	r3, #0	@,
	beq	.L671	@,
	ldr	r8, [fp, #-60]	@, %sfp
	mov	sl, r4, asl #1	@ pretmp.2582, Width,
	mla	r7, r4, r8, r7	@ tmp.2730, Width,, pY.2729
	ldr	r4, [fp, #-68]	@ chrom_width, %sfp
	mov	r8, #0	@ i.2737,
.L672:
	cmp	r4, #0	@ chrom_width,
	beq	.L674	@,
	mov	r3, r8, lsr #1	@ pretmp.2748, i.2737,
	ldr	r1, [r6, #508]	@ pVl, pVl
	ldrb	r0, [r7, #0]	@ zero_extendqisi2	@ tmp498,* tmp.2730
	mov	r2, #1	@ j.2736,
	mul	lr, r4, r3	@ pretmp.2745, chrom_width, pretmp.2748
	cmp	r4, r2	@ chrom_width, j.2736
	sub	ip, r4, #1	@ tmp376, chrom_width,
	add	r3, r7, #2	@ ivtmp.2659, tmp.2730,
	and	ip, ip, r2	@ tmp378, tmp376,
	strb	r0, [r1, lr]	@ tmp498,* pretmp.2745
	ldr	r1, [r6, #512]	@ pUl, pUl
	ldrb	r0, [r7, #1]	@ zero_extendqisi2	@ tmp500,
	strb	r0, [r1, lr]	@ tmp500,* pretmp.2745
	bls	.L674	@,
	cmp	ip, #0	@ tmp378,
	beq	.L673	@,
	ldrb	ip, [r3, #0]	@ zero_extendqisi2	@ tmp524,* ivtmp.2659
	add	r1, r2, lr	@ D.55993, j.2736, pretmp.2745
	ldr	r0, [r6, #508]	@ pVl, pVl
	mov	r2, #2	@ j.2736,
	cmp	r4, r2	@ chrom_width, j.2736
	strb	ip, [r0, r1]	@ tmp524,* D.55993
	ldrb	ip, [r3, #1]	@ zero_extendqisi2	@ tmp526,
	add	r3, r3, r2	@ ivtmp.2659, ivtmp.2659,
	ldr	r0, [r6, #512]	@ pUl, pUl
	strb	ip, [r0, r1]	@ tmp526,* D.55993
	bls	.L674	@,
.L673:
	ldrb	r9, [r3, #0]	@ zero_extendqisi2	@ tmp319,* ivtmp.2659
	add	ip, r2, lr	@ D.55993, j.2736, pretmp.2745
	ldr	r5, [r6, #508]	@ pVl, pVl
	add	r2, r2, #1	@ tmp379, j.2736,
	add	r1, r2, lr	@ D.55993, tmp379, pretmp.2745
	add	r0, r3, #2	@ tmp380, ivtmp.2659,
	add	r2, r2, #1	@ j.2736, tmp379,
	strb	r9, [r5, ip]	@ tmp319,* D.55993
	cmp	r4, r2	@ chrom_width, j.2736
	ldrb	r9, [r3, #1]	@ zero_extendqisi2	@ tmp323,
	ldr	r5, [r6, #512]	@ pUl, pUl
	strb	r9, [r5, ip]	@ tmp323,* D.55993
	ldrb	r5, [r3, #2]	@ zero_extendqisi2	@ tmp491,
	add	r3, r0, #2	@ ivtmp.2659, tmp380,
	ldr	ip, [r6, #508]	@ pVl, pVl
	strb	r5, [ip, r1]	@ tmp491,* D.55993
	ldr	ip, [r6, #512]	@ pUl, pUl
	ldrb	r0, [r0, #1]	@ zero_extendqisi2	@ tmp493,
	strb	r0, [ip, r1]	@ tmp493,* D.55993
	bhi	.L673	@,
.L674:
	ldr	lr, [fp, #-56]	@, %sfp
	add	r8, r8, #2	@ i.2737, i.2737,
	cmp	lr, r8	@, i.2737
	bls	.L671	@,
	add	r7, r7, sl	@ tmp.2730, tmp.2730, pretmp.2582
	b	.L672	@
.L773:
	mov	r1, #128	@,
	mov	r2, #1048576	@,
	ldr	r0, [r5, #508]	@, pVl
	bl	memset	@
	ldr	r0, [r5, #512]	@, pUl
	mov	r1, #128	@,
	mov	r2, #1048576	@,
	bl	memset	@
	b	.L655	@
.L774:
	ldr	r3, [fp, #-68]	@, %sfp
	ldr	ip, [fp, #-56]	@, %sfp
	ldr	r2, [fp, #-64]	@, %sfp
	ldr	r0, [r6, #512]	@, pUl
	mul	r4, r3, ip	@ D.55972,,
	b	.L770	@
	.fnend
	.size	DBG_WriteBigTileYuv, .-DBG_WriteBigTileYuv
	.align	2
	.global	VCTRL_GetDecParam
	.type	VCTRL_GetDecParam, %function
VCTRL_GetDecParam:
	.fnstart
.LFB1587:
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
	cmp	r0, #15	@ ChanId,
	bhi	.L777	@,
	movw	r2, #:lower16:.LANCHOR0	@ tmp159,
	movt	r2, #:upper16:.LANCHOR0	@ tmp159,
	ldr	r5, [r2, r0, asl #2]	@ D.52155, s_pstVfmwChan
	cmp	r5, #0	@ D.52155,
	beq	.L777	@,
	ldr	r3, [r5, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	beq	.L798	@,
.L780:
	mov	r4, #0	@ pDecParam,
.L779:
	mov	r0, r4	@, pDecParam
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L777:
	mov	r3, r0	@, ChanId
	mov	r2, #4480	@,
	mov	r4, #0	@ pDecParam,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC55	@,
	movt	r1, #:upper16:.LC55	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pDecParam
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L798:
	ldr	r0, [r5, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r0, #1	@ <variable>.s32IsRun,
	bne	.L780	@,
	ldr	r1, [r5, #552]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r1, #16	@ <variable>.eVidStd,
	ldrls	pc, [pc, r1, asl #2]	@ <variable>.eVidStd
	b	.L780	@
.L794:
	.word	.L782
	.word	.L797
	.word	.L784
	.word	.L797
	.word	.L780
	.word	.L797
	.word	.L797
	.word	.L780
	.word	.L797
	.word	.L797
	.word	.L790
	.word	.L790
	.word	.L790
	.word	.L797
	.word	.L780
	.word	.L792
	.word	.L793
.L790:
	ldr	r4, [r2, #516]	@ g_VdmCharacter, g_VdmCharacter
	tst	r4, #1	@ g_VdmCharacter,
	beq	.L780	@,
.L797:
	movw	r0, #:lower16:251604	@ tmp156,
	movt	r0, #:upper16:251604	@ tmp156,
	ldr	r4, [r5, r0]	@ pDecParam,
.L795:
	cmp	r4, #0	@ pDecParam,
	beq	.L779	@,
	bl	OSAL_GetTimeInMs	@
	str	r0, [r5, #44]	@, <variable>.u32timeLastDecParamReady
	b	.L779	@
.L782:
	movw	r2, #:lower16:251960	@ tmp143,
	movt	r2, #:upper16:251960	@ tmp143,
	ldr	r4, [r5, r2]	@ pDecParam,
	b	.L795	@
.L793:
	movw	ip, #:lower16:2211792	@ tmp144,
	movt	ip, #:upper16:2211792	@ tmp144,
	ldr	r4, [r5, ip]	@ pDecParam,
	b	.L795	@
.L792:
	movw	r1, #:lower16:251828	@ tmp157,
	movt	r1, #:upper16:251828	@ tmp157,
	ldr	r4, [r5, r1]	@ pDecParam,
	b	.L795	@
.L784:
	movw	r3, #:lower16:252636	@ tmp146,
	movt	r3, #:upper16:252636	@ tmp146,
	ldr	r4, [r5, r3]	@ pDecParam,
	b	.L795	@
	.fnend
	.size	VCTRL_GetDecParam, .-VCTRL_GetDecParam
	.align	2
	.global	VCTRL_ChanDecparamInValidFlag
	.type	VCTRL_ChanDecparamInValidFlag, %function
VCTRL_ChanDecparamInValidFlag:
	.fnstart
.LFB1588:
	@ args = 0, pretend = 0, frame = 8
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
	cmp	r0, #15	@ ChanId,
	mov	r2, r0	@ ChanId, ChanId
	bhi	.L800	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp144,
	movt	r4, #:upper16:.LANCHOR0	@ tmp144,
	ldr	r3, [r4, r0, asl #2]	@ D.52182, s_pstVfmwChan
	cmp	r3, #0	@ D.52182,
	beq	.L800	@,
	ldr	r1, [r3, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r1, #1	@ <variable>.s32IsOpen,
	bne	.L803	@,
	ldr	r5, [r3, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r5, #1	@ <variable>.s32IsRun,
	beq	.L804	@,
.L803:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC56	@,
	movt	r1, #:upper16:.LC56	@,
	bl	dprint_vfmw	@
	mov	r3, #0	@ D.52184,
.L802:
	mov	r0, r3	@, D.52184
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L800:
	mov	r3, r2	@, ChanId
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC55	@,
	movw	r2, #4590	@,
	movt	r1, #:upper16:.LC55	@,
	bl	dprint_vfmw	@
	mov	r3, #0	@ D.52184,
	b	.L802	@
.L804:
	str	r0, [fp, #-32]	@ tmp2,
	bl	VCTRL_GetDecParam	@
	ldr	r2, [fp, #-32]	@,
	subs	r6, r0, #0	@ pDecParam,
	beq	.L810	@,
	ldr	r0, [r4, r2, asl #2]	@ tmp154, s_pstVfmwChan
	mov	ip, #0	@ tmp155,
	mov	r3, ip	@ D.52184, tmp155
	str	ip, [r0, #348]	@ tmp155, <variable>.s32CountNoDecparamFlag
	ldr	r2, [r4, r2, asl #2]	@ tmp157, s_pstVfmwChan
	str	ip, [r2, #352]	@ tmp155, <variable>.u32NoDecparamStartTime
	b	.L802	@
.L810:
	ldr	r3, [r4, r2, asl #2]	@ temp.2806, s_pstVfmwChan
	ldr	r7, [r3, #348]	@ <variable>.s32CountNoDecparamFlag, <variable>.s32CountNoDecparamFlag
	cmp	r7, #0	@ <variable>.s32CountNoDecparamFlag,
	beq	.L811	@,
	str	r2, [fp, #-32]	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r2, [fp, #-32]	@,
	ldr	r3, [r4, r2, asl #2]	@ temp.2810, s_pstVfmwChan
	ldr	r1, [r3, #352]	@ D.52205, <variable>.u32NoDecparamStartTime
	cmp	r0, r1	@ tmp, D.52205
	bls	.L807	@,
	rsb	lr, r1, r0	@ tmp160, D.52205, tmp
	cmp	lr, #40	@ tmp160,
	movls	r3, r6	@ D.52184, pDecParam
	bls	.L802	@,
.L807:
	str	r6, [r3, #348]	@ pDecParam, <variable>.s32CountNoDecparamFlag
	mov	r3, r5	@ D.52184, <variable>.s32IsRun
	ldr	r1, [r4, r2, asl #2]	@ tmp167, s_pstVfmwChan
	str	r6, [r1, #352]	@ pDecParam, <variable>.u32NoDecparamStartTime
	b	.L802	@
.L811:
	str	r5, [r3, #348]	@ <variable>.s32IsRun, <variable>.s32CountNoDecparamFlag
	ldr	r4, [r4, r2, asl #2]	@ temp.2807, s_pstVfmwChan
	bl	OSAL_GetTimeInMs	@
	mov	r3, r7	@ D.52184, <variable>.s32CountNoDecparamFlag
	str	r0, [r4, #352]	@, <variable>.u32NoDecparamStartTime
	b	.L802	@
	.fnend
	.size	VCTRL_ChanDecparamInValidFlag, .-VCTRL_ChanDecparamInValidFlag
	.align	2
	.global	VCTRL_StartTask
	.type	VCTRL_StartTask, %function
VCTRL_StartTask:
	.fnstart
.LFB1548:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp145,
	movt	r4, #:upper16:.LANCHOR0	@ tmp145,
	ldr	r3, [r4, #104]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r3, #1	@ s_VfmwCTrl.s32IsVCTRLOpen,
	mvnne	r0, #0	@ ret,
	ldmnefd	sp, {r4, r5, fp, sp, pc}	@
	mov	r5, #0	@ i,
	str	r3, [r4, #144]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.eTaskCommand
	b	.L817	@
.L815:
	bl	msleep	@
	ldr	r1, [r4, #140]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	mov	r0, #10	@,
	cmp	r1, #2	@ s_VfmwCTrl.eTaskState,
	beq	.L822	@,
	bl	msleep	@
	cmp	r5, #50	@ i,
	beq	.L824	@,
.L817:
	ldr	r3, [r4, #140]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	add	r5, r5, #1	@ tmp147, i,
	mov	r0, #10	@,
	add	r5, r5, #1	@ i, tmp147,
	cmp	r3, #2	@ s_VfmwCTrl.eTaskState,
	bne	.L815	@,
.L822:
	mov	r2, #0	@ tmp143,
	mov	r0, #0	@ ret,
	str	r2, [r4, #144]	@ tmp143, s_VfmwCTrl.eTaskCommand
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L824:
	mov	r2, #0	@ tmp143,
	mvn	r0, #0	@ ret,
	str	r2, [r4, #144]	@ tmp143, s_VfmwCTrl.eTaskCommand
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	VCTRL_StartTask, .-VCTRL_StartTask
	.align	2
	.global	VCTRL_StopTask
	.type	VCTRL_StopTask, %function
VCTRL_StopTask:
	.fnstart
.LFB1547:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp145,
	movt	r4, #:upper16:.LANCHOR0	@ tmp145,
	ldr	r3, [r4, #104]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r3, #1	@ s_VfmwCTrl.s32IsVCTRLOpen,
	mvnne	r0, #0	@ ret,
	ldmnefd	sp, {r4, r5, fp, sp, pc}	@
	mov	r0, #2	@ tmp139,
	mov	r5, #0	@ i,
	str	r0, [r4, #144]	@ tmp139, s_VfmwCTrl.eTaskCommand
	b	.L830	@
.L828:
	bl	msleep	@
	ldr	r2, [r4, #140]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	mov	r0, #10	@,
	cmp	r2, #1	@ s_VfmwCTrl.eTaskState,
	beq	.L835	@,
	bl	msleep	@
	cmp	r5, #50	@ i,
	beq	.L837	@,
.L830:
	ldr	r1, [r4, #140]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	add	r5, r5, #1	@ tmp147, i,
	mov	r0, #10	@,
	add	r5, r5, #1	@ i, tmp147,
	cmp	r1, #1	@ s_VfmwCTrl.eTaskState,
	bne	.L828	@,
.L835:
	mov	ip, #0	@ tmp143,
	mov	r0, #0	@ ret,
	str	ip, [r4, #144]	@ tmp143, s_VfmwCTrl.eTaskCommand
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L837:
	mov	ip, #0	@ tmp143,
	mvn	r0, #0	@ ret,
	str	ip, [r4, #144]	@ tmp143, s_VfmwCTrl.eTaskCommand
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	VCTRL_StopTask, .-VCTRL_StopTask
	.align	2
	.global	VCTRT_SetChanCtrlState
	.type	VCTRT_SetChanCtrlState, %function
VCTRT_SetChanCtrlState:
	.fnstart
.LFB1662:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp137,
	movt	r4, #:upper16:.LANCHOR0	@ tmp137,
	mov	r5, r0	@ ChanID, ChanID
	add	r0, r4, #520	@, tmp137,
	mov	r6, r1	@ ChanCtrlState, ChanCtrlState
	bl	OSAL_SpinLockIRQ	@
	cmp	r6, #1	@ ChanCtrlState,
	beq	.L841	@,
	bcs	.L847	@,
	mov	r3, #0	@ tmp144,
	add	r4, r4, r5, asl #2	@, tmp142, tmp137, ChanID,
	mov	r6, r3	@ ret, tmp144
	str	r3, [r4, #532]	@ tmp144, s_ChanControlState
.L843:
	ldr	r0, .L849	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r6	@, ret
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L847:
	cmp	r6, #2	@ ChanCtrlState,
	beq	.L842	@,
	mov	r6, #0	@ ret,
.L848:
	ldr	r0, .L849	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r6	@, ret
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L842:
	add	r4, r4, r5, asl #2	@, tmp160, tmp137, ChanID,
	ldr	r1, [r4, #532]	@ tmp162, s_ChanControlState
	cmp	r1, #1	@ tmp162,
	beq	.L844	@,
	str	r6, [r4, #532]	@ ChanCtrlState, s_ChanControlState
	mov	r6, #0	@ ret,
	b	.L848	@
.L841:
	add	r4, r4, r5, asl #2	@, tmp148, tmp137, ChanID,
	ldr	r0, [r4, #532]	@ tmp150, s_ChanControlState
	cmp	r0, #0	@ tmp150,
	streq	r6, [r4, #532]	@ ChanCtrlState, s_ChanControlState
	moveq	r6, r0	@ ret, tmp150
	beq	.L843	@,
.L844:
	mvn	r6, #0	@ ret,
	ldr	r0, .L849	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r6	@, ret
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L850:
	.align	2
.L849:
	.word	.LANCHOR0+520
	.fnend
	.size	VCTRT_SetChanCtrlState, .-VCTRT_SetChanCtrlState
	.align	2
	.global	vfmw_proc_destroy
	.type	vfmw_proc_destroy, %function
vfmw_proc_destroy:
	.fnstart
.LFB1654:
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
	ldr	r4, .L861	@ ivtmp.2927,
	mov	r5, r0	@ proc_name, proc_name
	add	r7, r4, #768	@ D.58359, ivtmp.2927,
	b	.L854	@
.L852:
	add	r4, r4, #24	@ ivtmp.2927, ivtmp.2927,
	mov	r1, r4	@, ivtmp.2927
	bl	strncmp	@
	subs	r6, r0, #0	@ tmp143,
	beq	.L859	@,
	add	r4, r4, #24	@ ivtmp.2927, ivtmp.2927,
	cmp	r4, r7	@ ivtmp.2927, D.58359
	beq	.L860	@,
.L854:
	mov	r2, #16	@,
	mov	r1, r4	@, ivtmp.2927
	mov	r0, r5	@, proc_name
	bl	strncmp	@
	mov	r2, #16	@,
	subs	r6, r0, #0	@ tmp143,
	mov	r0, r5	@, proc_name
	bne	.L852	@,
.L859:
	mov	r0, r5	@, proc_name
	mov	r1, r6	@, tmp143
	bl	remove_proc_entry	@
	mov	r0, r4	@, ivtmp.2927
	mov	r1, #16	@,
	bl	__memzero	@
	str	r6, [r4, #20]	@ tmp143, <variable>.write
	str	r6, [r4, #16]	@ tmp143, <variable>.read
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L860:
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L862:
	.align	2
.L861:
	.word	.LANCHOR0+596
	.fnend
	.size	vfmw_proc_destroy, .-vfmw_proc_destroy
	.align	2
	.global	vfmw_proc_exit
	.type	vfmw_proc_exit, %function
vfmw_proc_exit:
	.fnstart
.LFB1656:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #20
	sub	sp, sp, #20	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r5, #:lower16:.LC57	@ tmp134,
	sub	r4, fp, #44	@ tmp133,,
	movt	r5, #:upper16:.LC57	@ tmp134,
	mov	r3, #0	@,
	mov	r1, #16	@,
	mov	r2, r5	@, tmp134
	mov	r0, r4	@, tmp133
	mov	r6, r3	@ tmp135,
	bl	snprintf	@
	mov	r0, r4	@, tmp133
	strb	r6, [fp, #-29]	@ tmp135, name
	bl	vfmw_proc_destroy	@
	mov	r2, r5	@, tmp134
	mov	r1, #16	@,
	mov	r3, #1	@,
	mov	r0, r4	@, tmp133
	bl	snprintf	@
	mov	r0, r4	@, tmp133
	strb	r6, [fp, #-29]	@ tmp135, name
	bl	vfmw_proc_destroy	@
	mov	r2, r5	@, tmp134
	mov	r1, #16	@,
	mov	r3, #2	@,
	mov	r0, r4	@, tmp133
	bl	snprintf	@
	mov	r0, r4	@, tmp133
	strb	r6, [fp, #-29]	@ tmp135, name
	bl	vfmw_proc_destroy	@
	mov	r2, r5	@, tmp134
	mov	r1, #16	@,
	mov	r3, #3	@,
	mov	r0, r4	@, tmp133
	bl	snprintf	@
	mov	r0, r4	@, tmp133
	strb	r6, [fp, #-29]	@ tmp135, name
	bl	vfmw_proc_destroy	@
	mov	r2, r5	@, tmp134
	mov	r1, #16	@,
	mov	r3, #4	@,
	mov	r0, r4	@, tmp133
	bl	snprintf	@
	mov	r0, r4	@, tmp133
	strb	r6, [fp, #-29]	@ tmp135, name
	bl	vfmw_proc_destroy	@
	mov	r2, r5	@, tmp134
	mov	r1, #16	@,
	mov	r3, #5	@,
	mov	r0, r4	@, tmp133
	bl	snprintf	@
	mov	r0, r4	@, tmp133
	strb	r6, [fp, #-29]	@ tmp135, name
	bl	vfmw_proc_destroy	@
	mov	r2, r5	@, tmp134
	mov	r1, #16	@,
	mov	r3, #6	@,
	mov	r0, r4	@, tmp133
	bl	snprintf	@
	mov	r0, r4	@, tmp133
	strb	r6, [fp, #-29]	@ tmp135, name
	bl	vfmw_proc_destroy	@
	mov	r2, r5	@, tmp134
	mov	r1, #16	@,
	mov	r3, #7	@,
	mov	r0, r4	@, tmp133
	bl	snprintf	@
	mov	r0, r4	@, tmp133
	strb	r6, [fp, #-29]	@ tmp135, name
	bl	vfmw_proc_destroy	@
	mov	r2, r5	@, tmp134
	mov	r1, #16	@,
	mov	r3, #8	@,
	mov	r0, r4	@, tmp133
	bl	snprintf	@
	mov	r0, r4	@, tmp133
	strb	r6, [fp, #-29]	@ tmp135, name
	bl	vfmw_proc_destroy	@
	mov	r2, r5	@, tmp134
	mov	r1, #16	@,
	mov	r3, #9	@,
	mov	r0, r4	@, tmp133
	bl	snprintf	@
	mov	r0, r4	@, tmp133
	strb	r6, [fp, #-29]	@ tmp135, name
	bl	vfmw_proc_destroy	@
	mov	r2, r5	@, tmp134
	mov	r1, #16	@,
	mov	r3, #10	@,
	mov	r0, r4	@, tmp133
	bl	snprintf	@
	mov	r0, r4	@, tmp133
	strb	r6, [fp, #-29]	@ tmp135, name
	bl	vfmw_proc_destroy	@
	mov	r2, r5	@, tmp134
	mov	r1, #16	@,
	mov	r3, #11	@,
	mov	r0, r4	@, tmp133
	bl	snprintf	@
	mov	r0, r4	@, tmp133
	strb	r6, [fp, #-29]	@ tmp135, name
	bl	vfmw_proc_destroy	@
	mov	r2, r5	@, tmp134
	mov	r1, #16	@,
	mov	r3, #12	@,
	mov	r0, r4	@, tmp133
	bl	snprintf	@
	mov	r0, r4	@, tmp133
	strb	r6, [fp, #-29]	@ tmp135, name
	bl	vfmw_proc_destroy	@
	mov	r2, r5	@, tmp134
	mov	r1, #16	@,
	mov	r3, #13	@,
	mov	r0, r4	@, tmp133
	bl	snprintf	@
	mov	r0, r4	@, tmp133
	strb	r6, [fp, #-29]	@ tmp135, name
	bl	vfmw_proc_destroy	@
	mov	r2, r5	@, tmp134
	mov	r1, #16	@,
	mov	r3, #14	@,
	mov	r0, r4	@, tmp133
	bl	snprintf	@
	mov	r0, r4	@, tmp133
	strb	r6, [fp, #-29]	@ tmp135, name
	bl	vfmw_proc_destroy	@
	mov	r2, r5	@, tmp134
	mov	r1, #16	@,
	mov	r3, #15	@,
	mov	r0, r4	@, tmp133
	bl	snprintf	@
	mov	r0, r4	@, tmp133
	strb	r6, [fp, #-29]	@ tmp135, name
	bl	vfmw_proc_destroy	@
	movw	r0, #:lower16:.LC58	@,
	movt	r0, #:upper16:.LC58	@,
	bl	vfmw_proc_destroy	@
	movw	r0, #:lower16:.LC59	@,
	movt	r0, #:upper16:.LC59	@,
	bl	vfmw_proc_destroy	@
	movw	r0, #:lower16:.LC60	@,
	movt	r0, #:upper16:.LC60	@,
	bl	vfmw_proc_destroy	@
	movw	r0, #:lower16:.LC61	@,
	movt	r0, #:upper16:.LC61	@,
	bl	vfmw_proc_destroy	@
	movw	r0, #:lower16:.LC62	@,
	movt	r0, #:upper16:.LC62	@,
	bl	vfmw_proc_destroy	@
	movw	r0, #:lower16:.LC63	@,
	movt	r0, #:upper16:.LC63	@,
	bl	vfmw_proc_destroy	@
	movw	r0, #:lower16:.LC64	@,
	movt	r0, #:upper16:.LC64	@,
	bl	vfmw_proc_destroy	@
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
	.fnend
	.size	vfmw_proc_exit, .-vfmw_proc_exit
	.align	2
	.global	ChanCtx_Init
	.type	ChanCtx_Init, %function
ChanCtx_Init:
	.fnstart
.LFB1532:
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
	movw	r4, #:lower16:g_ChanCtx	@ tmp133,
	movt	r4, #:upper16:g_ChanCtx	@ tmp133,
	mov	r1, #192	@,
	mov	r0, r4	@, tmp133
	bl	__memzero	@
	mvn	r3, #0	@ tmp135,
	str	r3, [r4, #124]	@ tmp135, g_ChanCtx.ChanIdTabByPrior
	str	r3, [r4, #64]	@ tmp135, g_ChanCtx.ChanIdTabByPrior
	str	r3, [r4, #68]	@ tmp135, g_ChanCtx.ChanIdTabByPrior
	str	r3, [r4, #72]	@ tmp135, g_ChanCtx.ChanIdTabByPrior
	str	r3, [r4, #76]	@ tmp135, g_ChanCtx.ChanIdTabByPrior
	str	r3, [r4, #80]	@ tmp135, g_ChanCtx.ChanIdTabByPrior
	str	r3, [r4, #84]	@ tmp135, g_ChanCtx.ChanIdTabByPrior
	str	r3, [r4, #88]	@ tmp135, g_ChanCtx.ChanIdTabByPrior
	str	r3, [r4, #92]	@ tmp135, g_ChanCtx.ChanIdTabByPrior
	str	r3, [r4, #96]	@ tmp135, g_ChanCtx.ChanIdTabByPrior
	str	r3, [r4, #100]	@ tmp135, g_ChanCtx.ChanIdTabByPrior
	str	r3, [r4, #104]	@ tmp135, g_ChanCtx.ChanIdTabByPrior
	str	r3, [r4, #108]	@ tmp135, g_ChanCtx.ChanIdTabByPrior
	str	r3, [r4, #112]	@ tmp135, g_ChanCtx.ChanIdTabByPrior
	str	r3, [r4, #116]	@ tmp135, g_ChanCtx.ChanIdTabByPrior
	str	r3, [r4, #120]	@ tmp135, g_ChanCtx.ChanIdTabByPrior
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	ChanCtx_Init, .-ChanCtx_Init
	.align	2
	.global	VCTRL_UnRegisterSoftDecoder
	.type	VCTRL_UnRegisterSoftDecoder, %function
VCTRL_UnRegisterSoftDecoder:
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
	ldr	r0, .L869	@,
	mov	r1, #28	@,
	bl	__memzero	@
	ldmfd	sp, {fp, sp, pc}	@
.L870:
	.align	2
.L869:
	.word	.LANCHOR0+76
	.fnend
	.size	VCTRL_UnRegisterSoftDecoder, .-VCTRL_UnRegisterSoftDecoder
	.align	2
	.global	vfmw_proc_create
	.type	vfmw_proc_create, %function
vfmw_proc_create:
	.fnstart
.LFB1653:
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
	ldr	r3, .L886	@ tmp161,
	mov	sl, r2	@ write, write
	mov	r7, r0	@ proc_name, proc_name
	mov	r8, r1	@ read, read
	mov	r5, #0	@ i,
	mov	r2, r3	@ ivtmp.3034, tmp161
	b	.L875	@
.L872:
	ldr	r2, [r1, #16]	@ <variable>.read, <variable>.read
	add	r5, r5, #1	@ i, i,
	cmp	r2, #0	@ <variable>.read,
	mov	r2, r5	@ tmp162, i
	beq	.L884	@,
.L879:
	add	r5, r2, #1	@ i, tmp162,
	add	r2, r1, #24	@ ivtmp.3034, tmp163,
	cmp	r5, #32	@ i,
	beq	.L873	@,
.L875:
	ldr	r0, [r2, #16]	@ <variable>.read, <variable>.read
	add	r1, r2, #24	@ tmp163, ivtmp.3034,
	cmp	r0, #0	@ <variable>.read,
	bne	.L872	@,
	ldr	r6, [r2, #20]	@ <variable>.write, <variable>.write
	cmp	r6, #0	@ <variable>.write,
	bne	.L872	@,
.L883:
	add	r4, r5, r5, asl #1	@, tmp153, i, i,
	mov	r1, r7	@, proc_name
	mov	r2, #16	@,
	add	r4, r3, r4, asl #3	@, proc, tmp161, tmp153,
	mov	r0, r4	@, proc
	bl	strncpy	@
	cmp	r5, #31	@ i,
	strb	r6, [r4, #15]	@ <variable>.write, <variable>.proc_name
	str	r8, [r4, #16]	@ read, <variable>.read
	str	sl, [r4, #20]	@ write, <variable>.write
	bls	.L885	@,
.L873:
	mvn	r0, #0	@ D.55288,
.L876:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L884:
	ldr	r6, [r1, #20]	@ <variable>.write, <variable>.write
	cmp	r6, #0	@ <variable>.write,
	bne	.L879	@,
	b	.L883	@
.L885:
	mov	r0, r7	@, proc_name
	mov	r1, #420	@,
	mov	r2, #0	@,
	ldr	r3, .L886+4	@,
	str	r4, [sp, #0]	@ proc,
	bl	proc_create_data	@
	cmp	r0, #0	@,
	movne	r0, #0	@ D.55288,
	bne	.L876	@,
	b	.L873	@
.L887:
	.align	2
.L886:
	.word	.LANCHOR0+596
	.word	.LANCHOR1+80
	.fnend
	.size	vfmw_proc_create, .-vfmw_proc_create
	.align	2
	.global	vfmw_proc_init
	.type	vfmw_proc_init, %function
vfmw_proc_init:
	.fnstart
.LFB1655:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #16
	sub	sp, sp, #16	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	sub	r4, fp, #36	@ tmp294,,
	mov	r1, #16	@,
	mov	r3, #0	@,
	movw	r2, #:lower16:.LC57	@,
	mov	r0, r4	@, tmp294
	movt	r2, #:upper16:.LC57	@,
	bl	snprintf	@
	mov	r0, r4	@, tmp294
	movw	r1, #:lower16:vfmw_read_proc_info	@,
	movw	r2, #:lower16:vfmw_write_proc	@,
	movt	r1, #:upper16:vfmw_read_proc_info	@,
	movt	r2, #:upper16:vfmw_write_proc	@,
	mov	r3, #0	@ tmp160,
	strb	r3, [fp, #-21]	@ tmp160, name
	bl	vfmw_proc_create	@
	subs	r5, r0, #0	@ ret.3066,
	bne	.L889	@,
	mov	r1, #16	@,
	mov	r3, #1	@,
	mov	r0, r4	@, tmp294
	movw	r2, #:lower16:.LC57	@,
	movt	r2, #:upper16:.LC57	@,
	bl	snprintf	@
	mov	r0, r4	@, tmp294
	movw	r1, #:lower16:vfmw_read_proc_info	@,
	movw	r2, #:lower16:vfmw_write_proc	@,
	movt	r1, #:upper16:vfmw_read_proc_info	@,
	movt	r2, #:upper16:vfmw_write_proc	@,
	strb	r5, [fp, #-21]	@ ret.3066, name
	bl	vfmw_proc_create	@
	subs	r5, r0, #0	@ ret.3067,
	bne	.L889	@,
	mov	r1, #16	@,
	mov	r3, #2	@,
	mov	r0, r4	@, tmp294
	movw	r2, #:lower16:.LC57	@,
	movt	r2, #:upper16:.LC57	@,
	bl	snprintf	@
	mov	r0, r4	@, tmp294
	movw	r1, #:lower16:vfmw_read_proc_info	@,
	movw	r2, #:lower16:vfmw_write_proc	@,
	movt	r1, #:upper16:vfmw_read_proc_info	@,
	movt	r2, #:upper16:vfmw_write_proc	@,
	strb	r5, [fp, #-21]	@ ret.3067, name
	bl	vfmw_proc_create	@
	subs	r5, r0, #0	@ ret.3068,
	bne	.L889	@,
	mov	r1, #16	@,
	mov	r3, #3	@,
	mov	r0, r4	@, tmp294
	movw	r2, #:lower16:.LC57	@,
	movt	r2, #:upper16:.LC57	@,
	bl	snprintf	@
	mov	r0, r4	@, tmp294
	movw	r1, #:lower16:vfmw_read_proc_info	@,
	movw	r2, #:lower16:vfmw_write_proc	@,
	movt	r1, #:upper16:vfmw_read_proc_info	@,
	movt	r2, #:upper16:vfmw_write_proc	@,
	strb	r5, [fp, #-21]	@ ret.3068, name
	bl	vfmw_proc_create	@
	subs	r5, r0, #0	@ ret.3069,
	bne	.L889	@,
	mov	r1, #16	@,
	mov	r3, #4	@,
	mov	r0, r4	@, tmp294
	movw	r2, #:lower16:.LC57	@,
	movt	r2, #:upper16:.LC57	@,
	bl	snprintf	@
	mov	r0, r4	@, tmp294
	movw	r1, #:lower16:vfmw_read_proc_info	@,
	movw	r2, #:lower16:vfmw_write_proc	@,
	movt	r1, #:upper16:vfmw_read_proc_info	@,
	movt	r2, #:upper16:vfmw_write_proc	@,
	strb	r5, [fp, #-21]	@ ret.3069, name
	bl	vfmw_proc_create	@
	subs	r5, r0, #0	@ ret.3070,
	bne	.L889	@,
	mov	r1, #16	@,
	mov	r3, #5	@,
	mov	r0, r4	@, tmp294
	movw	r2, #:lower16:.LC57	@,
	movt	r2, #:upper16:.LC57	@,
	bl	snprintf	@
	mov	r0, r4	@, tmp294
	movw	r1, #:lower16:vfmw_read_proc_info	@,
	movw	r2, #:lower16:vfmw_write_proc	@,
	movt	r1, #:upper16:vfmw_read_proc_info	@,
	movt	r2, #:upper16:vfmw_write_proc	@,
	strb	r5, [fp, #-21]	@ ret.3070, name
	bl	vfmw_proc_create	@
	subs	r5, r0, #0	@ ret.3071,
	bne	.L889	@,
	mov	r1, #16	@,
	mov	r3, #6	@,
	mov	r0, r4	@, tmp294
	movw	r2, #:lower16:.LC57	@,
	movt	r2, #:upper16:.LC57	@,
	bl	snprintf	@
	mov	r0, r4	@, tmp294
	movw	r1, #:lower16:vfmw_read_proc_info	@,
	movw	r2, #:lower16:vfmw_write_proc	@,
	movt	r1, #:upper16:vfmw_read_proc_info	@,
	movt	r2, #:upper16:vfmw_write_proc	@,
	strb	r5, [fp, #-21]	@ ret.3071, name
	bl	vfmw_proc_create	@
	subs	r5, r0, #0	@ ret.3072,
	bne	.L889	@,
	mov	r1, #16	@,
	mov	r3, #7	@,
	mov	r0, r4	@, tmp294
	movw	r2, #:lower16:.LC57	@,
	movt	r2, #:upper16:.LC57	@,
	bl	snprintf	@
	mov	r0, r4	@, tmp294
	movw	r1, #:lower16:vfmw_read_proc_info	@,
	movw	r2, #:lower16:vfmw_write_proc	@,
	movt	r1, #:upper16:vfmw_read_proc_info	@,
	movt	r2, #:upper16:vfmw_write_proc	@,
	strb	r5, [fp, #-21]	@ ret.3072, name
	bl	vfmw_proc_create	@
	subs	r5, r0, #0	@ ret.3073,
	bne	.L889	@,
	mov	r1, #16	@,
	mov	r3, #8	@,
	mov	r0, r4	@, tmp294
	movw	r2, #:lower16:.LC57	@,
	movt	r2, #:upper16:.LC57	@,
	bl	snprintf	@
	mov	r0, r4	@, tmp294
	movw	r1, #:lower16:vfmw_read_proc_info	@,
	movw	r2, #:lower16:vfmw_write_proc	@,
	movt	r1, #:upper16:vfmw_read_proc_info	@,
	movt	r2, #:upper16:vfmw_write_proc	@,
	strb	r5, [fp, #-21]	@ ret.3073, name
	bl	vfmw_proc_create	@
	subs	r5, r0, #0	@ ret.3074,
	bne	.L889	@,
	mov	r1, #16	@,
	mov	r3, #9	@,
	mov	r0, r4	@, tmp294
	movw	r2, #:lower16:.LC57	@,
	movt	r2, #:upper16:.LC57	@,
	bl	snprintf	@
	mov	r0, r4	@, tmp294
	movw	r1, #:lower16:vfmw_read_proc_info	@,
	movw	r2, #:lower16:vfmw_write_proc	@,
	movt	r1, #:upper16:vfmw_read_proc_info	@,
	movt	r2, #:upper16:vfmw_write_proc	@,
	strb	r5, [fp, #-21]	@ ret.3074, name
	bl	vfmw_proc_create	@
	cmp	r0, #0	@,
	bne	.L889	@,
	mov	r1, #16	@,
	mov	r3, #10	@,
	mov	r0, r4	@, tmp294
	movw	r2, #:lower16:.LC57	@,
	movt	r2, #:upper16:.LC57	@,
	mov	r5, #0	@ tmp230,
	bl	snprintf	@
	mov	r0, r4	@, tmp294
	movw	r1, #:lower16:vfmw_read_proc_info	@,
	movw	r2, #:lower16:vfmw_write_proc	@,
	movt	r1, #:upper16:vfmw_read_proc_info	@,
	movt	r2, #:upper16:vfmw_write_proc	@,
	strb	r5, [fp, #-21]	@ tmp230, name
	bl	vfmw_proc_create	@
	subs	r5, r0, #0	@ ret.3076,
	bne	.L889	@,
	mov	r1, #16	@,
	mov	r3, #11	@,
	mov	r0, r4	@, tmp294
	movw	r2, #:lower16:.LC57	@,
	movt	r2, #:upper16:.LC57	@,
	bl	snprintf	@
	mov	r0, r4	@, tmp294
	movw	r1, #:lower16:vfmw_read_proc_info	@,
	movw	r2, #:lower16:vfmw_write_proc	@,
	movt	r1, #:upper16:vfmw_read_proc_info	@,
	movt	r2, #:upper16:vfmw_write_proc	@,
	strb	r5, [fp, #-21]	@ ret.3076, name
	bl	vfmw_proc_create	@
	subs	r5, r0, #0	@ ret.3077,
	bne	.L889	@,
	mov	r1, #16	@,
	mov	r3, #12	@,
	mov	r0, r4	@, tmp294
	movw	r2, #:lower16:.LC57	@,
	movt	r2, #:upper16:.LC57	@,
	bl	snprintf	@
	mov	r0, r4	@, tmp294
	movw	r1, #:lower16:vfmw_read_proc_info	@,
	movw	r2, #:lower16:vfmw_write_proc	@,
	movt	r1, #:upper16:vfmw_read_proc_info	@,
	movt	r2, #:upper16:vfmw_write_proc	@,
	strb	r5, [fp, #-21]	@ ret.3077, name
	bl	vfmw_proc_create	@
	subs	r5, r0, #0	@ ret.3078,
	bne	.L889	@,
	mov	r1, #16	@,
	mov	r3, #13	@,
	mov	r0, r4	@, tmp294
	movw	r2, #:lower16:.LC57	@,
	movt	r2, #:upper16:.LC57	@,
	bl	snprintf	@
	mov	r0, r4	@, tmp294
	movw	r1, #:lower16:vfmw_read_proc_info	@,
	movw	r2, #:lower16:vfmw_write_proc	@,
	movt	r1, #:upper16:vfmw_read_proc_info	@,
	movt	r2, #:upper16:vfmw_write_proc	@,
	strb	r5, [fp, #-21]	@ ret.3078, name
	bl	vfmw_proc_create	@
	subs	r5, r0, #0	@ ret.3079,
	bne	.L889	@,
	mov	r1, #16	@,
	mov	r3, #14	@,
	mov	r0, r4	@, tmp294
	movw	r2, #:lower16:.LC57	@,
	movt	r2, #:upper16:.LC57	@,
	bl	snprintf	@
	mov	r0, r4	@, tmp294
	movw	r1, #:lower16:vfmw_read_proc_info	@,
	movw	r2, #:lower16:vfmw_write_proc	@,
	movt	r1, #:upper16:vfmw_read_proc_info	@,
	movt	r2, #:upper16:vfmw_write_proc	@,
	strb	r5, [fp, #-21]	@ ret.3079, name
	bl	vfmw_proc_create	@
	subs	r5, r0, #0	@ ret.3080,
	bne	.L889	@,
	mov	r1, #16	@,
	mov	r3, #15	@,
	mov	r0, r4	@, tmp294
	movw	r2, #:lower16:.LC57	@,
	movt	r2, #:upper16:.LC57	@,
	bl	snprintf	@
	mov	r0, r4	@, tmp294
	movw	r1, #:lower16:vfmw_read_proc_priv	@,
	movw	r2, #:lower16:vfmw_write_proc	@,
	movt	r1, #:upper16:vfmw_read_proc_priv	@,
	movt	r2, #:upper16:vfmw_write_proc	@,
	strb	r5, [fp, #-21]	@ ret.3080, name
	bl	vfmw_proc_create	@
	cmp	r0, #0	@,
	bne	.L889	@,
	movw	r0, #:lower16:.LC58	@,
	movw	r1, #:lower16:vfmw_read_proc	@,
	movt	r0, #:upper16:.LC58	@,
	movt	r1, #:upper16:vfmw_read_proc	@,
	movw	r2, #:lower16:vfmw_write_proc	@,
	movt	r2, #:upper16:vfmw_write_proc	@,
	bl	vfmw_proc_create	@
	cmp	r0, #0	@,
	beq	.L892	@,
.L889:
	mvn	r0, #0	@ D.55332,
.L890:
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L892:
	movw	r0, #:lower16:.LC59	@,
	movw	r1, #:lower16:vfmw_read_proc_dbg	@,
	movt	r0, #:upper16:.LC59	@,
	movt	r1, #:upper16:vfmw_read_proc_dbg	@,
	movw	r2, #:lower16:vfmw_write_proc	@,
	movt	r2, #:upper16:vfmw_write_proc	@,
	bl	vfmw_proc_create	@
	cmp	r0, #0	@,
	bne	.L889	@,
	movw	r0, #:lower16:.LC60	@,
	movw	r1, #:lower16:vfmw_read_proc_prn	@,
	movt	r0, #:upper16:.LC60	@,
	movt	r1, #:upper16:vfmw_read_proc_prn	@,
	movw	r2, #:lower16:vfmw_write_proc	@,
	movt	r2, #:upper16:vfmw_write_proc	@,
	bl	vfmw_proc_create	@
	cmp	r0, #0	@,
	bne	.L889	@,
	movw	r0, #:lower16:.LC61	@,
	movw	r1, #:lower16:vfmw_read_proc_scd	@,
	movt	r0, #:upper16:.LC61	@,
	movt	r1, #:upper16:vfmw_read_proc_scd	@,
	movw	r2, #:lower16:vfmw_write_proc	@,
	movt	r2, #:upper16:vfmw_write_proc	@,
	bl	vfmw_proc_create	@
	cmp	r0, #0	@,
	bne	.L889	@,
	movw	r0, #:lower16:.LC62	@,
	movw	r1, #:lower16:vfmw_read_proc_dec	@,
	movt	r0, #:upper16:.LC62	@,
	movt	r1, #:upper16:vfmw_read_proc_dec	@,
	movw	r2, #:lower16:vfmw_write_proc	@,
	movt	r2, #:upper16:vfmw_write_proc	@,
	bl	vfmw_proc_create	@
	cmp	r0, #0	@,
	bne	.L889	@,
	movw	r0, #:lower16:.LC63	@,
	movw	r1, #:lower16:vfmw_read_proc_lwd	@,
	movt	r0, #:upper16:.LC63	@,
	movt	r1, #:upper16:vfmw_read_proc_lwd	@,
	movw	r2, #:lower16:vfmw_write_proc	@,
	movt	r2, #:upper16:vfmw_write_proc	@,
	bl	vfmw_proc_create	@
	cmp	r0, #0	@,
	bne	.L889	@,
	movw	r0, #:lower16:.LC64	@,
	movw	r1, #:lower16:vfmw_read_proc_chn	@,
	movt	r0, #:upper16:.LC64	@,
	movt	r1, #:upper16:vfmw_read_proc_chn	@,
	movw	r2, #:lower16:vfmw_write_proc	@,
	movt	r2, #:upper16:vfmw_write_proc	@,
	bl	vfmw_proc_create	@
	cmp	r0, #0	@ ret.3065
	beq	.L890	@,
	b	.L889	@
	.fnend
	.size	vfmw_proc_init, .-vfmw_proc_init
	.align	2
	.type	vfmw_proc_open, %function
vfmw_proc_open:
	.fnstart
.LFB1651:
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
	mov	r4, r1	@ file, file
	bl	PDE_DATA	@
	subs	r2, r0, #0	@ D.55240,
	bne	.L897	@,
.L894:
	mvn	r0, #37	@ D.55243,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L897:
	ldr	r1, [r2, #16]	@ D.55244, <variable>.read
	cmp	r1, #0	@ D.55244,
	beq	.L894	@,
	mov	r0, r4	@, file
	bl	single_open	@
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	vfmw_proc_open, .-vfmw_proc_open
	.align	2
	.global	vfmw_read_proc_lwd
	.type	vfmw_read_proc_lwd, %function
vfmw_read_proc_lwd:
	.fnstart
.LFB1648:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	movw	r7, #:lower16:g_stLowdlyInfo	@ tmp143,
	movw	r4, #:lower16:.LC66	@ tmp145,
	movt	r7, #:upper16:g_stLowdlyInfo	@ tmp143,
	ldr	r8, [r3, #1364]	@ g_CurProcChan, g_CurProcChan
	movt	r4, #:upper16:.LC66	@ tmp145,
	mov	r5, r0	@ p, p
	movw	r1, #:lower16:.LC65	@,
	movt	r1, #:upper16:.LC65	@,
	rsb	r8, r8, r8, asl #3	@, tmp141, g_CurProcChan, g_CurProcChan,
	bl	seq_printf	@
	mov	r1, r4	@, tmp145
	mov	r0, r5	@, p
	add	r6, r7, r8, asl #3	@, pLwd, tmp143, tmp141,
	ldr	r3, [r7, r8, asl #3]	@, <variable>.lowdly_enable
	movw	r2, #:lower16:.LC67	@,
	movt	r2, #:upper16:.LC67	@,
	bl	seq_printf	@
	mov	r1, r4	@, tmp145
	ldr	r3, [r6, #4]	@, <variable>.chan_id
	mov	r0, r5	@, p
	movw	r2, #:lower16:.LC68	@,
	movt	r2, #:upper16:.LC68	@,
	bl	seq_printf	@
	mov	r1, r4	@, tmp145
	ldr	r3, [r6, #20]	@, <variable>.scd_count
	mov	r0, r5	@, p
	movw	r2, #:lower16:.LC69	@,
	movt	r2, #:upper16:.LC69	@,
	bl	seq_printf	@
	mov	r1, r4	@, tmp145
	ldr	r3, [r6, #32]	@, <variable>.vdh_count
	mov	r0, r5	@, p
	movw	r2, #:lower16:.LC70	@,
	movt	r2, #:upper16:.LC70	@,
	bl	seq_printf	@
	mov	r0, r5	@, p
	movw	r1, #:lower16:.LC71	@,
	movt	r1, #:upper16:.LC71	@,
	bl	seq_printf	@
	mov	r0, #0	@,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	vfmw_read_proc_lwd, .-vfmw_read_proc_lwd
	.align	2
	.global	vfmw_read_proc_chn
	.type	vfmw_read_proc_chn, %function
vfmw_read_proc_chn:
	.fnstart
.LFB1646:
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
	movw	r1, #:lower16:.LC72	@,
	mov	r4, r0	@ p, p
	movt	r1, #:upper16:.LC72	@,
	movw	r6, #:lower16:g_ChanCtx	@ tmp155,
	movt	r6, #:upper16:g_ChanCtx	@ tmp155,
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC73	@,
	movt	r1, #:upper16:.LC73	@,
	bl	seq_printf	@
	ldr	r2, [r6, #128]	@ g_ChanCtx.ChanDecByVdhPlusOne, g_ChanCtx.ChanDecByVdhPlusOne
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC74	@,
	sub	r2, r2, #1	@, g_ChanCtx.ChanDecByVdhPlusOne,
	movt	r1, #:upper16:.LC74	@,
	bl	seq_printf	@
	ldr	ip, [r6, #132]	@ g_ChanCtx.ChanDecByVdhPlusOne, g_ChanCtx.ChanDecByVdhPlusOne
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC74	@,
	sub	r2, ip, #1	@, g_ChanCtx.ChanDecByVdhPlusOne,
	movt	r1, #:upper16:.LC74	@,
	bl	seq_printf	@
	ldr	r3, [r6, #136]	@ g_ChanCtx.ChanDecByVdhPlusOne, g_ChanCtx.ChanDecByVdhPlusOne
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC74	@,
	sub	r2, r3, #1	@, g_ChanCtx.ChanDecByVdhPlusOne,
	movt	r1, #:upper16:.LC74	@,
	bl	seq_printf	@
	ldr	r2, [r6, #140]	@ g_ChanCtx.ChanDecByVdhPlusOne, g_ChanCtx.ChanDecByVdhPlusOne
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC74	@,
	sub	r2, r2, #1	@, g_ChanCtx.ChanDecByVdhPlusOne,
	movt	r1, #:upper16:.LC74	@,
	bl	seq_printf	@
	ldr	ip, [r6, #144]	@ g_ChanCtx.ChanDecByVdhPlusOne, g_ChanCtx.ChanDecByVdhPlusOne
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC74	@,
	sub	r2, ip, #1	@, g_ChanCtx.ChanDecByVdhPlusOne,
	movt	r1, #:upper16:.LC74	@,
	bl	seq_printf	@
	ldr	r3, [r6, #148]	@ g_ChanCtx.ChanDecByVdhPlusOne, g_ChanCtx.ChanDecByVdhPlusOne
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC74	@,
	sub	r2, r3, #1	@, g_ChanCtx.ChanDecByVdhPlusOne,
	movt	r1, #:upper16:.LC74	@,
	bl	seq_printf	@
	ldr	r2, [r6, #152]	@ g_ChanCtx.ChanDecByVdhPlusOne, g_ChanCtx.ChanDecByVdhPlusOne
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC74	@,
	sub	r2, r2, #1	@, g_ChanCtx.ChanDecByVdhPlusOne,
	movt	r1, #:upper16:.LC74	@,
	bl	seq_printf	@
	ldr	ip, [r6, #156]	@ g_ChanCtx.ChanDecByVdhPlusOne, g_ChanCtx.ChanDecByVdhPlusOne
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC74	@,
	sub	r2, ip, #1	@, g_ChanCtx.ChanDecByVdhPlusOne,
	movt	r1, #:upper16:.LC74	@,
	bl	seq_printf	@
	ldr	r3, [r6, #160]	@ g_ChanCtx.ChanDecByVdhPlusOne, g_ChanCtx.ChanDecByVdhPlusOne
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC74	@,
	sub	r2, r3, #1	@, g_ChanCtx.ChanDecByVdhPlusOne,
	movt	r1, #:upper16:.LC74	@,
	bl	seq_printf	@
	ldr	r2, [r6, #164]	@ g_ChanCtx.ChanDecByVdhPlusOne, g_ChanCtx.ChanDecByVdhPlusOne
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC74	@,
	sub	r2, r2, #1	@, g_ChanCtx.ChanDecByVdhPlusOne,
	movt	r1, #:upper16:.LC74	@,
	bl	seq_printf	@
	ldr	ip, [r6, #168]	@ g_ChanCtx.ChanDecByVdhPlusOne, g_ChanCtx.ChanDecByVdhPlusOne
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC74	@,
	sub	r2, ip, #1	@, g_ChanCtx.ChanDecByVdhPlusOne,
	movt	r1, #:upper16:.LC74	@,
	bl	seq_printf	@
	ldr	r3, [r6, #172]	@ g_ChanCtx.ChanDecByVdhPlusOne, g_ChanCtx.ChanDecByVdhPlusOne
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC74	@,
	sub	r2, r3, #1	@, g_ChanCtx.ChanDecByVdhPlusOne,
	movt	r1, #:upper16:.LC74	@,
	bl	seq_printf	@
	ldr	r2, [r6, #176]	@ g_ChanCtx.ChanDecByVdhPlusOne, g_ChanCtx.ChanDecByVdhPlusOne
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC74	@,
	sub	r2, r2, #1	@, g_ChanCtx.ChanDecByVdhPlusOne,
	movt	r1, #:upper16:.LC74	@,
	bl	seq_printf	@
	ldr	ip, [r6, #180]	@ g_ChanCtx.ChanDecByVdhPlusOne, g_ChanCtx.ChanDecByVdhPlusOne
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC74	@,
	sub	r2, ip, #1	@, g_ChanCtx.ChanDecByVdhPlusOne,
	movt	r1, #:upper16:.LC74	@,
	bl	seq_printf	@
	ldr	r3, [r6, #184]	@ g_ChanCtx.ChanDecByVdhPlusOne, g_ChanCtx.ChanDecByVdhPlusOne
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC74	@,
	sub	r2, r3, #1	@, g_ChanCtx.ChanDecByVdhPlusOne,
	movt	r1, #:upper16:.LC74	@,
	bl	seq_printf	@
	ldr	r2, [r6, #188]	@ g_ChanCtx.ChanDecByVdhPlusOne, g_ChanCtx.ChanDecByVdhPlusOne
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC74	@,
	sub	r2, r2, #1	@, g_ChanCtx.ChanDecByVdhPlusOne,
	movt	r1, #:upper16:.LC74	@,
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC71	@,
	movt	r1, #:upper16:.LC71	@,
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC75	@,
	movt	r1, #:upper16:.LC75	@,
	bl	seq_printf	@
	ldr	r2, [r6, #64]	@, g_ChanCtx.ChanIdTabByPrior
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC74	@,
	movt	r1, #:upper16:.LC74	@,
	movw	r5, #:lower16:.LANCHOR0	@ tmp403,
	bl	seq_printf	@
	ldr	r2, [r6, #68]	@, g_ChanCtx.ChanIdTabByPrior
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC74	@,
	movt	r1, #:upper16:.LC74	@,
	movt	r5, #:upper16:.LANCHOR0	@ tmp403,
	bl	seq_printf	@
	ldr	r2, [r6, #72]	@, g_ChanCtx.ChanIdTabByPrior
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC74	@,
	movt	r1, #:upper16:.LC74	@,
	bl	seq_printf	@
	ldr	r2, [r6, #76]	@, g_ChanCtx.ChanIdTabByPrior
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC74	@,
	movt	r1, #:upper16:.LC74	@,
	bl	seq_printf	@
	ldr	r2, [r6, #80]	@, g_ChanCtx.ChanIdTabByPrior
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC74	@,
	movt	r1, #:upper16:.LC74	@,
	bl	seq_printf	@
	ldr	r2, [r6, #84]	@, g_ChanCtx.ChanIdTabByPrior
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC74	@,
	movt	r1, #:upper16:.LC74	@,
	bl	seq_printf	@
	ldr	r2, [r6, #88]	@, g_ChanCtx.ChanIdTabByPrior
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC74	@,
	movt	r1, #:upper16:.LC74	@,
	bl	seq_printf	@
	ldr	r2, [r6, #92]	@, g_ChanCtx.ChanIdTabByPrior
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC74	@,
	movt	r1, #:upper16:.LC74	@,
	bl	seq_printf	@
	ldr	r2, [r6, #96]	@, g_ChanCtx.ChanIdTabByPrior
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC74	@,
	movt	r1, #:upper16:.LC74	@,
	bl	seq_printf	@
	ldr	r2, [r6, #100]	@, g_ChanCtx.ChanIdTabByPrior
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC74	@,
	movt	r1, #:upper16:.LC74	@,
	bl	seq_printf	@
	ldr	r2, [r6, #104]	@, g_ChanCtx.ChanIdTabByPrior
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC74	@,
	movt	r1, #:upper16:.LC74	@,
	bl	seq_printf	@
	ldr	r2, [r6, #108]	@, g_ChanCtx.ChanIdTabByPrior
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC74	@,
	movt	r1, #:upper16:.LC74	@,
	bl	seq_printf	@
	ldr	r2, [r6, #112]	@, g_ChanCtx.ChanIdTabByPrior
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC74	@,
	movt	r1, #:upper16:.LC74	@,
	bl	seq_printf	@
	ldr	r2, [r6, #116]	@, g_ChanCtx.ChanIdTabByPrior
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC74	@,
	movt	r1, #:upper16:.LC74	@,
	bl	seq_printf	@
	ldr	r2, [r6, #120]	@, g_ChanCtx.ChanIdTabByPrior
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC74	@,
	movt	r1, #:upper16:.LC74	@,
	bl	seq_printf	@
	ldr	r2, [r6, #124]	@, g_ChanCtx.ChanIdTabByPrior
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC74	@,
	movt	r1, #:upper16:.LC74	@,
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC71	@,
	movt	r1, #:upper16:.LC71	@,
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC76	@,
	movt	r1, #:upper16:.LC76	@,
	bl	seq_printf	@
	ldr	r2, [r6, #0]	@, g_ChanCtx.PriorByChanId
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC74	@,
	movt	r1, #:upper16:.LC74	@,
	bl	seq_printf	@
	ldr	r2, [r6, #4]	@, g_ChanCtx.PriorByChanId
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC74	@,
	movt	r1, #:upper16:.LC74	@,
	bl	seq_printf	@
	ldr	r2, [r6, #8]	@, g_ChanCtx.PriorByChanId
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC74	@,
	movt	r1, #:upper16:.LC74	@,
	bl	seq_printf	@
	ldr	r2, [r6, #12]	@, g_ChanCtx.PriorByChanId
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC74	@,
	movt	r1, #:upper16:.LC74	@,
	bl	seq_printf	@
	ldr	r2, [r6, #16]	@, g_ChanCtx.PriorByChanId
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC74	@,
	movt	r1, #:upper16:.LC74	@,
	bl	seq_printf	@
	ldr	r2, [r6, #20]	@, g_ChanCtx.PriorByChanId
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC74	@,
	movt	r1, #:upper16:.LC74	@,
	bl	seq_printf	@
	ldr	r2, [r6, #24]	@, g_ChanCtx.PriorByChanId
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC74	@,
	movt	r1, #:upper16:.LC74	@,
	bl	seq_printf	@
	ldr	r2, [r6, #28]	@, g_ChanCtx.PriorByChanId
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC74	@,
	movt	r1, #:upper16:.LC74	@,
	bl	seq_printf	@
	ldr	r2, [r6, #32]	@, g_ChanCtx.PriorByChanId
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC74	@,
	movt	r1, #:upper16:.LC74	@,
	bl	seq_printf	@
	ldr	r2, [r6, #36]	@, g_ChanCtx.PriorByChanId
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC74	@,
	movt	r1, #:upper16:.LC74	@,
	bl	seq_printf	@
	ldr	r2, [r6, #40]	@, g_ChanCtx.PriorByChanId
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC74	@,
	movt	r1, #:upper16:.LC74	@,
	bl	seq_printf	@
	ldr	r2, [r6, #44]	@, g_ChanCtx.PriorByChanId
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC74	@,
	movt	r1, #:upper16:.LC74	@,
	bl	seq_printf	@
	ldr	r2, [r6, #48]	@, g_ChanCtx.PriorByChanId
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC74	@,
	movt	r1, #:upper16:.LC74	@,
	bl	seq_printf	@
	ldr	r2, [r6, #52]	@, g_ChanCtx.PriorByChanId
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC74	@,
	movt	r1, #:upper16:.LC74	@,
	bl	seq_printf	@
	ldr	r2, [r6, #56]	@, g_ChanCtx.PriorByChanId
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC74	@,
	movt	r1, #:upper16:.LC74	@,
	bl	seq_printf	@
	ldr	r2, [r6, #60]	@, g_ChanCtx.PriorByChanId
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC74	@,
	movt	r1, #:upper16:.LC74	@,
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC71	@,
	movt	r1, #:upper16:.LC71	@,
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC77	@,
	movt	r1, #:upper16:.LC77	@,
	bl	seq_printf	@
	ldr	r0, [r5, #0]	@ temp.3216, s_pstVfmwChan
	cmp	r0, #0	@ temp.3216,
	beq	.L901	@,
	ldr	lr, [r0, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	movw	r1, #:lower16:.LC78	@,
	ldr	r2, [r0, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	movt	r1, #:upper16:.LC78	@,
	ldr	r3, [r0, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	mov	r0, r4	@, p
	str	lr, [sp, #0]	@ <variable>.s32Priority,
	bl	seq_printf	@
.L901:
	ldr	r0, [r5, #4]	@ temp.3220, s_pstVfmwChan
	cmp	r0, #0	@ temp.3220,
	beq	.L902	@,
	ldr	ip, [r0, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	movw	r1, #:lower16:.LC78	@,
	ldr	r2, [r0, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	movt	r1, #:upper16:.LC78	@,
	ldr	r3, [r0, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	mov	r0, r4	@, p
	str	ip, [sp, #0]	@ <variable>.s32Priority,
	bl	seq_printf	@
.L902:
	ldr	r0, [r5, #8]	@ temp.3224, s_pstVfmwChan
	cmp	r0, #0	@ temp.3224,
	beq	.L903	@,
	ldr	lr, [r0, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	movw	r1, #:lower16:.LC78	@,
	ldr	r2, [r0, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	movt	r1, #:upper16:.LC78	@,
	ldr	r3, [r0, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	mov	r0, r4	@, p
	str	lr, [sp, #0]	@ <variable>.s32Priority,
	bl	seq_printf	@
.L903:
	ldr	r0, [r5, #12]	@ temp.3228, s_pstVfmwChan
	cmp	r0, #0	@ temp.3228,
	beq	.L904	@,
	ldr	ip, [r0, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	movw	r1, #:lower16:.LC78	@,
	ldr	r2, [r0, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	movt	r1, #:upper16:.LC78	@,
	ldr	r3, [r0, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	mov	r0, r4	@, p
	str	ip, [sp, #0]	@ <variable>.s32Priority,
	bl	seq_printf	@
.L904:
	ldr	r0, [r5, #16]	@ temp.3232, s_pstVfmwChan
	cmp	r0, #0	@ temp.3232,
	beq	.L905	@,
	ldr	lr, [r0, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	movw	r1, #:lower16:.LC78	@,
	ldr	r2, [r0, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	movt	r1, #:upper16:.LC78	@,
	ldr	r3, [r0, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	mov	r0, r4	@, p
	str	lr, [sp, #0]	@ <variable>.s32Priority,
	bl	seq_printf	@
.L905:
	ldr	r0, [r5, #20]	@ temp.3236, s_pstVfmwChan
	cmp	r0, #0	@ temp.3236,
	beq	.L906	@,
	ldr	ip, [r0, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	movw	r1, #:lower16:.LC78	@,
	ldr	r2, [r0, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	movt	r1, #:upper16:.LC78	@,
	ldr	r3, [r0, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	mov	r0, r4	@, p
	str	ip, [sp, #0]	@ <variable>.s32Priority,
	bl	seq_printf	@
.L906:
	ldr	r0, [r5, #24]	@ temp.3240, s_pstVfmwChan
	cmp	r0, #0	@ temp.3240,
	beq	.L907	@,
	ldr	lr, [r0, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	movw	r1, #:lower16:.LC78	@,
	ldr	r2, [r0, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	movt	r1, #:upper16:.LC78	@,
	ldr	r3, [r0, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	mov	r0, r4	@, p
	str	lr, [sp, #0]	@ <variable>.s32Priority,
	bl	seq_printf	@
.L907:
	ldr	r0, [r5, #28]	@ temp.3244, s_pstVfmwChan
	cmp	r0, #0	@ temp.3244,
	beq	.L908	@,
	ldr	ip, [r0, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	movw	r1, #:lower16:.LC78	@,
	ldr	r2, [r0, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	movt	r1, #:upper16:.LC78	@,
	ldr	r3, [r0, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	mov	r0, r4	@, p
	str	ip, [sp, #0]	@ <variable>.s32Priority,
	bl	seq_printf	@
.L908:
	ldr	r0, [r5, #32]	@ temp.3248, s_pstVfmwChan
	cmp	r0, #0	@ temp.3248,
	beq	.L909	@,
	ldr	lr, [r0, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	movw	r1, #:lower16:.LC78	@,
	ldr	r2, [r0, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	movt	r1, #:upper16:.LC78	@,
	ldr	r3, [r0, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	mov	r0, r4	@, p
	str	lr, [sp, #0]	@ <variable>.s32Priority,
	bl	seq_printf	@
.L909:
	ldr	r0, [r5, #36]	@ temp.3252, s_pstVfmwChan
	cmp	r0, #0	@ temp.3252,
	beq	.L910	@,
	ldr	ip, [r0, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	movw	r1, #:lower16:.LC78	@,
	ldr	r2, [r0, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	movt	r1, #:upper16:.LC78	@,
	ldr	r3, [r0, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	mov	r0, r4	@, p
	str	ip, [sp, #0]	@ <variable>.s32Priority,
	bl	seq_printf	@
.L910:
	ldr	r0, [r5, #40]	@ temp.3256, s_pstVfmwChan
	cmp	r0, #0	@ temp.3256,
	beq	.L911	@,
	ldr	lr, [r0, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	movw	r1, #:lower16:.LC78	@,
	ldr	r2, [r0, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	movt	r1, #:upper16:.LC78	@,
	ldr	r3, [r0, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	mov	r0, r4	@, p
	str	lr, [sp, #0]	@ <variable>.s32Priority,
	bl	seq_printf	@
.L911:
	ldr	r0, [r5, #44]	@ temp.3260, s_pstVfmwChan
	cmp	r0, #0	@ temp.3260,
	beq	.L912	@,
	ldr	ip, [r0, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	movw	r1, #:lower16:.LC78	@,
	ldr	r2, [r0, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	movt	r1, #:upper16:.LC78	@,
	ldr	r3, [r0, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	mov	r0, r4	@, p
	str	ip, [sp, #0]	@ <variable>.s32Priority,
	bl	seq_printf	@
.L912:
	ldr	r0, [r5, #48]	@ temp.3264, s_pstVfmwChan
	cmp	r0, #0	@ temp.3264,
	beq	.L913	@,
	ldr	lr, [r0, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	movw	r1, #:lower16:.LC78	@,
	ldr	r2, [r0, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	movt	r1, #:upper16:.LC78	@,
	ldr	r3, [r0, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	mov	r0, r4	@, p
	str	lr, [sp, #0]	@ <variable>.s32Priority,
	bl	seq_printf	@
.L913:
	ldr	r0, [r5, #52]	@ temp.3268, s_pstVfmwChan
	cmp	r0, #0	@ temp.3268,
	beq	.L914	@,
	ldr	ip, [r0, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	movw	r1, #:lower16:.LC78	@,
	ldr	r2, [r0, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	movt	r1, #:upper16:.LC78	@,
	ldr	r3, [r0, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	mov	r0, r4	@, p
	str	ip, [sp, #0]	@ <variable>.s32Priority,
	bl	seq_printf	@
.L914:
	ldr	r0, [r5, #56]	@ temp.3272, s_pstVfmwChan
	cmp	r0, #0	@ temp.3272,
	beq	.L915	@,
	ldr	lr, [r0, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	movw	r1, #:lower16:.LC78	@,
	ldr	r2, [r0, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	movt	r1, #:upper16:.LC78	@,
	ldr	r3, [r0, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	mov	r0, r4	@, p
	str	lr, [sp, #0]	@ <variable>.s32Priority,
	bl	seq_printf	@
.L915:
	ldr	r0, [r5, #60]	@ D.54826, s_pstVfmwChan
	cmp	r0, #0	@ D.54826,
	beq	.L916	@,
	ldr	ip, [r0, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	movw	r1, #:lower16:.LC78	@,
	ldr	r2, [r0, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	movt	r1, #:upper16:.LC78	@,
	ldr	r3, [r0, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	mov	r0, r4	@, p
	str	ip, [sp, #0]	@ <variable>.s32Priority,
	bl	seq_printf	@
.L916:
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC71	@,
	movt	r1, #:upper16:.LC71	@,
	bl	seq_printf	@
	mov	r0, #0	@,
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
	.fnend
	.size	vfmw_read_proc_chn, .-vfmw_read_proc_chn
	.align	2
	.global	vfmw_read_proc_prn
	.type	vfmw_read_proc_prn, %function
vfmw_read_proc_prn:
	.fnstart
.LFB1644:
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
	movw	r6, #:lower16:.LC80	@ tmp137,
	movt	r6, #:upper16:.LC80	@ tmp137,
	mov	r4, r0	@ p, p
	movw	r1, #:lower16:.LC79	@,
	movt	r1, #:upper16:.LC79	@,
	bl	seq_printf	@
	mov	r1, r6	@, tmp137
	mov	r0, r4	@, p
	movw	r5, #:lower16:.LC90	@ tmp149,
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC81	@,
	movt	r1, #:upper16:.LC81	@,
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC82	@,
	movt	r1, #:upper16:.LC82	@,
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC83	@,
	movt	r1, #:upper16:.LC83	@,
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC84	@,
	movt	r1, #:upper16:.LC84	@,
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC85	@,
	movt	r1, #:upper16:.LC85	@,
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC86	@,
	movt	r1, #:upper16:.LC86	@,
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC87	@,
	movt	r1, #:upper16:.LC87	@,
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC88	@,
	movt	r1, #:upper16:.LC88	@,
	bl	seq_printf	@
	mov	r1, r6	@, tmp137
	mov	r0, r4	@, p
	movt	r5, #:upper16:.LC90	@ tmp149,
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC89	@,
	movt	r1, #:upper16:.LC89	@,
	bl	seq_printf	@
	mov	r1, r6	@, tmp137
	mov	r0, r4	@, p
	bl	seq_printf	@
	mov	r1, r5	@, tmp149
	mov	r0, r4	@, p
	bl	seq_printf	@
	mov	r1, r5	@, tmp149
	mov	r0, r4	@, p
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC91	@,
	movt	r1, #:upper16:.LC91	@,
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC92	@,
	movt	r1, #:upper16:.LC92	@,
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC93	@,
	movt	r1, #:upper16:.LC93	@,
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC94	@,
	movt	r1, #:upper16:.LC94	@,
	bl	seq_printf	@
	mov	r1, r6	@, tmp137
	mov	r0, r4	@, p
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC95	@,
	movt	r1, #:upper16:.LC95	@,
	bl	seq_printf	@
	mov	r1, r6	@, tmp137
	mov	r0, r4	@, p
	bl	seq_printf	@
	mov	r1, r5	@, tmp149
	mov	r0, r4	@, p
	bl	seq_printf	@
	mov	r1, r5	@, tmp149
	mov	r0, r4	@, p
	bl	seq_printf	@
	mov	r1, r5	@, tmp149
	mov	r0, r4	@, p
	bl	seq_printf	@
	mov	r1, r5	@, tmp149
	mov	r0, r4	@, p
	bl	seq_printf	@
	mov	r1, r5	@, tmp149
	mov	r0, r4	@, p
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC96	@,
	movt	r1, #:upper16:.LC96	@,
	bl	seq_printf	@
	mov	r0, r4	@, p
	mov	r1, r6	@, tmp137
	bl	seq_printf	@
	mov	r0, #0	@,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	vfmw_read_proc_prn, .-vfmw_read_proc_prn
	.align	2
	.global	vfmw_read_proc_dbg
	.type	vfmw_read_proc_dbg, %function
vfmw_read_proc_dbg:
	.fnstart
.LFB1643:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #20
	sub	sp, sp, #20	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r6, #:lower16:.LC98	@ tmp137,
	movw	r5, #:lower16:TracerPhyAddr	@ tmp139,
	movt	r6, #:upper16:.LC98	@ tmp137,
	movt	r5, #:upper16:TracerPhyAddr	@ tmp139,
	mov	r4, r0	@ p, p
	movw	r1, #:lower16:.LC97	@,
	movt	r1, #:upper16:.LC97	@,
	bl	seq_printf	@
	mov	r1, r6	@, tmp137
	ldr	r3, [r5, #0]	@, TracerPhyAddr
	mov	r0, r4	@, p
	movw	r2, #:lower16:.LC99	@,
	movt	r2, #:upper16:.LC99	@,
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC100	@,
	movw	r2, #:lower16:.LC101	@,
	movt	r1, #:upper16:.LC100	@,
	movt	r2, #:upper16:.LC101	@,
	movw	r3, #:lower16:.LANCHOR2	@,
	movt	r3, #:upper16:.LANCHOR2	@,
	bl	seq_printf	@
	movw	ip, #:lower16:g_PrintEnable	@ tmp146,
	movt	ip, #:upper16:g_PrintEnable	@ tmp146,
	mov	r1, r6	@, tmp137
	mov	r0, r4	@, p
	movw	r2, #:lower16:.LC102	@,
	ldr	r3, [ip, #0]	@, g_PrintEnable
	movt	r2, #:upper16:.LC102	@,
	bl	seq_printf	@
	movw	r3, #:lower16:g_TraceCtrl	@ tmp150,
	movt	r3, #:upper16:g_TraceCtrl	@ tmp150,
	mov	r1, r6	@, tmp137
	mov	r0, r4	@, p
	movw	r2, #:lower16:.LC103	@,
	ldr	r3, [r3, #0]	@, g_TraceCtrl
	movt	r2, #:upper16:.LC103	@,
	bl	seq_printf	@
	movw	r5, #:lower16:.LC104	@ tmp152,
	movw	r2, #:lower16:g_TraceBsPeriod	@ tmp154,
	movt	r5, #:upper16:.LC104	@ tmp152,
	movt	r2, #:upper16:g_TraceBsPeriod	@ tmp154,
	mov	r0, r4	@, p
	mov	r1, r5	@, tmp152
	movw	r6, #:lower16:.LC80	@ tmp164,
	ldr	r3, [r2, #0]	@, g_TraceBsPeriod
	movw	r2, #:lower16:.LC105	@,
	movt	r2, #:upper16:.LC105	@,
	movt	r6, #:upper16:.LC80	@ tmp164,
	bl	seq_printf	@
	movw	ip, #:lower16:g_TraceFramePeriod	@ tmp158,
	movt	ip, #:upper16:g_TraceFramePeriod	@ tmp158,
	mov	r1, r5	@, tmp152
	mov	r0, r4	@, p
	movw	r2, #:lower16:.LC106	@,
	ldr	r3, [ip, #0]	@, g_TraceFramePeriod
	movt	r2, #:upper16:.LC106	@,
	bl	seq_printf	@
	movw	r3, #:lower16:g_TraceImgPeriod	@ tmp162,
	movt	r3, #:upper16:g_TraceImgPeriod	@ tmp162,
	mov	r1, r5	@, tmp152
	mov	r0, r4	@, p
	movw	r2, #:lower16:.LC107	@,
	ldr	r3, [r3, #0]	@, g_TraceImgPeriod
	movt	r2, #:upper16:.LC107	@,
	bl	seq_printf	@
	mov	r1, r6	@, tmp164
	mov	r0, r4	@, p
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC108	@,
	movt	r1, #:upper16:.LC108	@,
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC109	@,
	movt	r1, #:upper16:.LC109	@,
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC110	@,
	movt	r1, #:upper16:.LC110	@,
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC111	@,
	movt	r1, #:upper16:.LC111	@,
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC112	@,
	movt	r1, #:upper16:.LC112	@,
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC113	@,
	movt	r1, #:upper16:.LC113	@,
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC114	@,
	movt	r1, #:upper16:.LC114	@,
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC115	@,
	movt	r1, #:upper16:.LC115	@,
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC116	@,
	movt	r1, #:upper16:.LC116	@,
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC117	@,
	movt	r1, #:upper16:.LC117	@,
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC118	@,
	movt	r1, #:upper16:.LC118	@,
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC119	@,
	movt	r1, #:upper16:.LC119	@,
	bl	seq_printf	@
	movw	ip, #:lower16:.LC121	@ tmp178,
	movt	ip, #:upper16:.LC121	@ tmp178,
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC120	@,
	movt	r1, #:upper16:.LC120	@,
	mov	r2, ip	@, tmp178
	mov	r3, ip	@, tmp2
	str	ip, [sp, #0]	@ tmp178,
	str	ip, [sp, #4]	@ tmp178,
	str	ip, [sp, #8]	@ tmp178,
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC122	@,
	movt	r1, #:upper16:.LC122	@,
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC123	@,
	movt	r1, #:upper16:.LC123	@,
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC124	@,
	movt	r1, #:upper16:.LC124	@,
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC125	@,
	movt	r1, #:upper16:.LC125	@,
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC126	@,
	movt	r1, #:upper16:.LC126	@,
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC127	@,
	movt	r1, #:upper16:.LC127	@,
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC128	@,
	movt	r1, #:upper16:.LC128	@,
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC129	@,
	movt	r1, #:upper16:.LC129	@,
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC130	@,
	movt	r1, #:upper16:.LC130	@,
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC131	@,
	movt	r1, #:upper16:.LC131	@,
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC132	@,
	movt	r1, #:upper16:.LC132	@,
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC133	@,
	movt	r1, #:upper16:.LC133	@,
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC134	@,
	movt	r1, #:upper16:.LC134	@,
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC135	@,
	movt	r1, #:upper16:.LC135	@,
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC136	@,
	movt	r1, #:upper16:.LC136	@,
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC137	@,
	movt	r1, #:upper16:.LC137	@,
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC138	@,
	movt	r1, #:upper16:.LC138	@,
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC139	@,
	movt	r1, #:upper16:.LC139	@,
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC140	@,
	movt	r1, #:upper16:.LC140	@,
	bl	seq_printf	@
	mov	r0, r4	@, p
	mov	r1, r6	@, tmp164
	bl	seq_printf	@
	mov	r0, #0	@,
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
	.fnend
	.size	vfmw_read_proc_dbg, .-vfmw_read_proc_dbg
	.align	2
	.global	vfmw_read_proc
	.type	vfmw_read_proc, %function
vfmw_read_proc:
	.fnstart
.LFB1642:
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
	movw	r4, #:lower16:.LC142	@ tmp137,
	movt	r4, #:upper16:.LC142	@ tmp137,
	mov	r6, r0	@ p, p
	movw	r1, #:lower16:.LC141	@,
	movw	r5, #:lower16:.LANCHOR0	@ tmp142,
	movt	r1, #:upper16:.LC141	@,
	movt	r5, #:upper16:.LANCHOR0	@ tmp142,
	bl	seq_printf	@
	mov	r1, r4	@, tmp137
	mov	r0, r6	@, p
	movw	r3, #:lower16:2015071093	@ tmp139,
	movw	r2, #:lower16:.LC143	@,
	movt	r3, #:upper16:2015071093	@,
	movt	r2, #:upper16:.LC143	@,
	bl	seq_printf	@
	ldr	r3, [r5, #68]	@, extra_ref
	mov	r1, r4	@, tmp137
	mov	r0, r6	@, p
	movw	r2, #:lower16:.LC144	@,
	movt	r2, #:upper16:.LC144	@,
	bl	seq_printf	@
	mov	r1, r4	@, tmp137
	ldr	r3, [r5, #72]	@, extra_disp
	mov	r0, r6	@, p
	movw	r2, #:lower16:.LC145	@,
	movt	r2, #:upper16:.LC145	@,
	bl	seq_printf	@
	mov	r1, r4	@, tmp137
	ldr	r3, [r5, #1368]	@, extra_cmd
	mov	r0, r6	@, p
	movw	r2, #:lower16:.LC146	@,
	movt	r2, #:upper16:.LC146	@,
	bl	seq_printf	@
	movw	r3, #:lower16:USE_FF_APT_EN	@ tmp154,
	movt	r3, #:upper16:USE_FF_APT_EN	@ tmp154,
	mov	r1, r4	@, tmp137
	mov	r0, r6	@, p
	movw	r2, #:lower16:.LC147	@,
	ldr	r3, [r3, #0]	@, USE_FF_APT_EN
	movt	r2, #:upper16:.LC147	@,
	bl	seq_printf	@
	mov	r0, r6	@, p
	mov	r1, r4	@, tmp137
	ldr	r3, [r5, #1372]	@, g_ResetCreateNewSave
	movw	r2, #:lower16:.LC148	@,
	movt	r2, #:upper16:.LC148	@,
	bl	seq_printf	@
	mov	r0, #0	@,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	vfmw_read_proc, .-vfmw_read_proc
	.align	2
	.global	vfmw_read_proc_priv
	.type	vfmw_read_proc_priv, %function
vfmw_read_proc_priv:
	.fnstart
.LFB1641:
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
	movw	r1, #:lower16:.LC149	@,
	mov	r4, r0	@ p, p
	movt	r1, #:upper16:.LC149	@,
	bl	seq_printf	@
	movw	r5, #:lower16:.LANCHOR0	@ tmp274,
	mov	r0, r4	@, p
	movt	r5, #:upper16:.LANCHOR0	@ tmp274,
	movw	r1, #:lower16:.LC150	@,
	movw	r2, #:lower16:.LC151	@,
	movt	r1, #:upper16:.LC150	@,
	movt	r2, #:upper16:.LC151	@,
	movw	r3, #:lower16:2015071093	@,
	movt	r3, #:upper16:2015071093	@,
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC152	@,
	movt	r1, #:upper16:.LC152	@,
	bl	seq_printf	@
	ldr	ip, [r5, #1388]	@ D.54701, <variable>.u32VaVdmLoad
	movw	r6, #:lower16:-858993459	@ tmp164,
	movt	r6, #:upper16:-858993459	@ tmp164,
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC153	@,
	umull	r2, r3, r6, ip	@, tmp163, tmp164, D.54701
	movt	r1, #:upper16:.LC153	@,
	movw	r2, #:lower16:.LC154	@,
	movt	r2, #:upper16:.LC154	@,
	mov	r3, r3, lsr #3	@ tmp162, tmp163,
	add	lr, r3, r3, asl #2	@, tmp170, tmp162, tmp162,
	sub	ip, ip, lr, asl #1	@ tmp172, D.54701, tmp170,
	str	ip, [sp, #0]	@ tmp172,
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC155	@,
	movt	r1, #:upper16:.LC155	@,
	bl	seq_printf	@
	ldr	ip, [r5, #1452]	@ D.54709, <variable>.u32SaScdLoad
	mov	r2, #0	@,
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC156	@,
	movt	r1, #:upper16:.LC156	@,
	umull	lr, r3, r6, ip	@, tmp177, tmp164, D.54709
	mov	r3, r3, lsr #3	@ tmp176, tmp177,
	add	lr, r3, r3, asl #2	@, tmp184, tmp176, tmp176,
	sub	ip, ip, lr, asl #1	@ tmp186, D.54709, tmp184,
	str	ip, [sp, #0]	@ tmp186,
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC157	@,
	movt	r1, #:upper16:.LC157	@,
	bl	seq_printf	@
	movw	r3, #:lower16:g_DspDrvState	@ tmp189,
	movt	r3, #:upper16:g_DspDrvState	@ tmp189,
	mov	r2, #0	@,
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC158	@,
	ldr	r3, [r3, #0]	@, g_DspDrvState
	movt	r1, #:upper16:.LC158	@,
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC159	@,
	movt	r1, #:upper16:.LC159	@,
	bl	seq_printf	@
	ldr	r3, [r5, #0]	@ pChan, s_pstVfmwChan
	cmp	r3, #0	@ pChan,
	beq	.L925	@,
	ldr	ip, [r3, #32]	@ <variable>.MatchVdhIdPlus1, <variable>.MatchVdhIdPlus1
	movw	r2, #:lower16:192380	@ tmp194,
	movt	r2, #:upper16:192380	@ tmp194,
	movw	r1, #:lower16:.LC160	@,
	mov	r0, r4	@, p
	movt	r1, #:upper16:.LC160	@,
	ldr	r3, [r3, r2]	@ <variable>.SmInstArray.MatchScdIdPlus1, <variable>.SmInstArray.MatchScdIdPlus1
	mov	r2, #0	@,
	str	ip, [sp, #0]	@ <variable>.MatchVdhIdPlus1,
	bl	seq_printf	@
.L925:
	ldr	r3, [r5, #4]	@ pChan.3374, s_pstVfmwChan
	cmp	r3, #0	@ pChan.3374,
	beq	.L926	@,
	ldr	lr, [r3, #32]	@ <variable>.MatchVdhIdPlus1, <variable>.MatchVdhIdPlus1
	movw	r0, #:lower16:192380	@ tmp199,
	movt	r0, #:upper16:192380	@ tmp199,
	movw	r1, #:lower16:.LC160	@,
	mov	r2, #1	@,
	movt	r1, #:upper16:.LC160	@,
	ldr	r3, [r3, r0]	@ <variable>.SmInstArray.MatchScdIdPlus1, <variable>.SmInstArray.MatchScdIdPlus1
	mov	r0, r4	@, p
	str	lr, [sp, #0]	@ <variable>.MatchVdhIdPlus1,
	bl	seq_printf	@
.L926:
	ldr	r3, [r5, #8]	@ pChan.3377, s_pstVfmwChan
	cmp	r3, #0	@ pChan.3377,
	beq	.L927	@,
	ldr	ip, [r3, #32]	@ <variable>.MatchVdhIdPlus1, <variable>.MatchVdhIdPlus1
	movw	r2, #:lower16:192380	@ tmp204,
	movt	r2, #:upper16:192380	@ tmp204,
	movw	r1, #:lower16:.LC160	@,
	mov	r0, r4	@, p
	movt	r1, #:upper16:.LC160	@,
	ldr	r3, [r3, r2]	@ <variable>.SmInstArray.MatchScdIdPlus1, <variable>.SmInstArray.MatchScdIdPlus1
	mov	r2, #2	@,
	str	ip, [sp, #0]	@ <variable>.MatchVdhIdPlus1,
	bl	seq_printf	@
.L927:
	ldr	r3, [r5, #12]	@ pChan.3380, s_pstVfmwChan
	cmp	r3, #0	@ pChan.3380,
	beq	.L928	@,
	ldr	lr, [r3, #32]	@ <variable>.MatchVdhIdPlus1, <variable>.MatchVdhIdPlus1
	movw	r0, #:lower16:192380	@ tmp209,
	movt	r0, #:upper16:192380	@ tmp209,
	movw	r1, #:lower16:.LC160	@,
	mov	r2, #3	@,
	movt	r1, #:upper16:.LC160	@,
	ldr	r3, [r3, r0]	@ <variable>.SmInstArray.MatchScdIdPlus1, <variable>.SmInstArray.MatchScdIdPlus1
	mov	r0, r4	@, p
	str	lr, [sp, #0]	@ <variable>.MatchVdhIdPlus1,
	bl	seq_printf	@
.L928:
	ldr	r3, [r5, #16]	@ pChan.3383, s_pstVfmwChan
	cmp	r3, #0	@ pChan.3383,
	beq	.L929	@,
	ldr	ip, [r3, #32]	@ <variable>.MatchVdhIdPlus1, <variable>.MatchVdhIdPlus1
	movw	r2, #:lower16:192380	@ tmp214,
	movt	r2, #:upper16:192380	@ tmp214,
	movw	r1, #:lower16:.LC160	@,
	mov	r0, r4	@, p
	movt	r1, #:upper16:.LC160	@,
	ldr	r3, [r3, r2]	@ <variable>.SmInstArray.MatchScdIdPlus1, <variable>.SmInstArray.MatchScdIdPlus1
	mov	r2, #4	@,
	str	ip, [sp, #0]	@ <variable>.MatchVdhIdPlus1,
	bl	seq_printf	@
.L929:
	ldr	r3, [r5, #20]	@ pChan.3386, s_pstVfmwChan
	cmp	r3, #0	@ pChan.3386,
	beq	.L930	@,
	ldr	lr, [r3, #32]	@ <variable>.MatchVdhIdPlus1, <variable>.MatchVdhIdPlus1
	movw	r0, #:lower16:192380	@ tmp219,
	movt	r0, #:upper16:192380	@ tmp219,
	movw	r1, #:lower16:.LC160	@,
	mov	r2, #5	@,
	movt	r1, #:upper16:.LC160	@,
	ldr	r3, [r3, r0]	@ <variable>.SmInstArray.MatchScdIdPlus1, <variable>.SmInstArray.MatchScdIdPlus1
	mov	r0, r4	@, p
	str	lr, [sp, #0]	@ <variable>.MatchVdhIdPlus1,
	bl	seq_printf	@
.L930:
	ldr	r3, [r5, #24]	@ pChan.3389, s_pstVfmwChan
	cmp	r3, #0	@ pChan.3389,
	beq	.L931	@,
	ldr	ip, [r3, #32]	@ <variable>.MatchVdhIdPlus1, <variable>.MatchVdhIdPlus1
	movw	r2, #:lower16:192380	@ tmp224,
	movt	r2, #:upper16:192380	@ tmp224,
	movw	r1, #:lower16:.LC160	@,
	mov	r0, r4	@, p
	movt	r1, #:upper16:.LC160	@,
	ldr	r3, [r3, r2]	@ <variable>.SmInstArray.MatchScdIdPlus1, <variable>.SmInstArray.MatchScdIdPlus1
	mov	r2, #6	@,
	str	ip, [sp, #0]	@ <variable>.MatchVdhIdPlus1,
	bl	seq_printf	@
.L931:
	ldr	r3, [r5, #28]	@ pChan.3392, s_pstVfmwChan
	cmp	r3, #0	@ pChan.3392,
	beq	.L932	@,
	ldr	lr, [r3, #32]	@ <variable>.MatchVdhIdPlus1, <variable>.MatchVdhIdPlus1
	movw	r0, #:lower16:192380	@ tmp229,
	movt	r0, #:upper16:192380	@ tmp229,
	movw	r1, #:lower16:.LC160	@,
	mov	r2, #7	@,
	movt	r1, #:upper16:.LC160	@,
	ldr	r3, [r3, r0]	@ <variable>.SmInstArray.MatchScdIdPlus1, <variable>.SmInstArray.MatchScdIdPlus1
	mov	r0, r4	@, p
	str	lr, [sp, #0]	@ <variable>.MatchVdhIdPlus1,
	bl	seq_printf	@
.L932:
	ldr	r3, [r5, #32]	@ pChan.3395, s_pstVfmwChan
	cmp	r3, #0	@ pChan.3395,
	beq	.L933	@,
	ldr	ip, [r3, #32]	@ <variable>.MatchVdhIdPlus1, <variable>.MatchVdhIdPlus1
	movw	r2, #:lower16:192380	@ tmp234,
	movt	r2, #:upper16:192380	@ tmp234,
	movw	r1, #:lower16:.LC160	@,
	mov	r0, r4	@, p
	movt	r1, #:upper16:.LC160	@,
	ldr	r3, [r3, r2]	@ <variable>.SmInstArray.MatchScdIdPlus1, <variable>.SmInstArray.MatchScdIdPlus1
	mov	r2, #8	@,
	str	ip, [sp, #0]	@ <variable>.MatchVdhIdPlus1,
	bl	seq_printf	@
.L933:
	ldr	r3, [r5, #36]	@ pChan.3398, s_pstVfmwChan
	cmp	r3, #0	@ pChan.3398,
	beq	.L934	@,
	ldr	lr, [r3, #32]	@ <variable>.MatchVdhIdPlus1, <variable>.MatchVdhIdPlus1
	movw	r0, #:lower16:192380	@ tmp239,
	movt	r0, #:upper16:192380	@ tmp239,
	movw	r1, #:lower16:.LC160	@,
	mov	r2, #9	@,
	movt	r1, #:upper16:.LC160	@,
	ldr	r3, [r3, r0]	@ <variable>.SmInstArray.MatchScdIdPlus1, <variable>.SmInstArray.MatchScdIdPlus1
	mov	r0, r4	@, p
	str	lr, [sp, #0]	@ <variable>.MatchVdhIdPlus1,
	bl	seq_printf	@
.L934:
	ldr	r3, [r5, #40]	@ pChan.3401, s_pstVfmwChan
	cmp	r3, #0	@ pChan.3401,
	beq	.L935	@,
	ldr	ip, [r3, #32]	@ <variable>.MatchVdhIdPlus1, <variable>.MatchVdhIdPlus1
	movw	r2, #:lower16:192380	@ tmp244,
	movt	r2, #:upper16:192380	@ tmp244,
	movw	r1, #:lower16:.LC160	@,
	mov	r0, r4	@, p
	movt	r1, #:upper16:.LC160	@,
	ldr	r3, [r3, r2]	@ <variable>.SmInstArray.MatchScdIdPlus1, <variable>.SmInstArray.MatchScdIdPlus1
	mov	r2, #10	@,
	str	ip, [sp, #0]	@ <variable>.MatchVdhIdPlus1,
	bl	seq_printf	@
.L935:
	ldr	r3, [r5, #44]	@ pChan.3404, s_pstVfmwChan
	cmp	r3, #0	@ pChan.3404,
	beq	.L936	@,
	ldr	lr, [r3, #32]	@ <variable>.MatchVdhIdPlus1, <variable>.MatchVdhIdPlus1
	movw	r0, #:lower16:192380	@ tmp249,
	movt	r0, #:upper16:192380	@ tmp249,
	movw	r1, #:lower16:.LC160	@,
	mov	r2, #11	@,
	movt	r1, #:upper16:.LC160	@,
	ldr	r3, [r3, r0]	@ <variable>.SmInstArray.MatchScdIdPlus1, <variable>.SmInstArray.MatchScdIdPlus1
	mov	r0, r4	@, p
	str	lr, [sp, #0]	@ <variable>.MatchVdhIdPlus1,
	bl	seq_printf	@
.L936:
	ldr	r3, [r5, #48]	@ pChan.3407, s_pstVfmwChan
	cmp	r3, #0	@ pChan.3407,
	beq	.L937	@,
	ldr	ip, [r3, #32]	@ <variable>.MatchVdhIdPlus1, <variable>.MatchVdhIdPlus1
	movw	r2, #:lower16:192380	@ tmp254,
	movt	r2, #:upper16:192380	@ tmp254,
	movw	r1, #:lower16:.LC160	@,
	mov	r0, r4	@, p
	movt	r1, #:upper16:.LC160	@,
	ldr	r3, [r3, r2]	@ <variable>.SmInstArray.MatchScdIdPlus1, <variable>.SmInstArray.MatchScdIdPlus1
	mov	r2, #12	@,
	str	ip, [sp, #0]	@ <variable>.MatchVdhIdPlus1,
	bl	seq_printf	@
.L937:
	ldr	r3, [r5, #52]	@ pChan.3410, s_pstVfmwChan
	cmp	r3, #0	@ pChan.3410,
	beq	.L938	@,
	ldr	lr, [r3, #32]	@ <variable>.MatchVdhIdPlus1, <variable>.MatchVdhIdPlus1
	movw	r0, #:lower16:192380	@ tmp259,
	movt	r0, #:upper16:192380	@ tmp259,
	movw	r1, #:lower16:.LC160	@,
	mov	r2, #13	@,
	movt	r1, #:upper16:.LC160	@,
	ldr	r3, [r3, r0]	@ <variable>.SmInstArray.MatchScdIdPlus1, <variable>.SmInstArray.MatchScdIdPlus1
	mov	r0, r4	@, p
	str	lr, [sp, #0]	@ <variable>.MatchVdhIdPlus1,
	bl	seq_printf	@
.L938:
	ldr	r3, [r5, #56]	@ pChan.3413, s_pstVfmwChan
	cmp	r3, #0	@ pChan.3413,
	beq	.L939	@,
	ldr	ip, [r3, #32]	@ <variable>.MatchVdhIdPlus1, <variable>.MatchVdhIdPlus1
	movw	r2, #:lower16:192380	@ tmp264,
	movt	r2, #:upper16:192380	@ tmp264,
	movw	r1, #:lower16:.LC160	@,
	mov	r0, r4	@, p
	movt	r1, #:upper16:.LC160	@,
	ldr	r3, [r3, r2]	@ <variable>.SmInstArray.MatchScdIdPlus1, <variable>.SmInstArray.MatchScdIdPlus1
	mov	r2, #14	@,
	str	ip, [sp, #0]	@ <variable>.MatchVdhIdPlus1,
	bl	seq_printf	@
.L939:
	ldr	r3, [r5, #60]	@ pChan.3371, s_pstVfmwChan
	cmp	r3, #0	@ pChan.3371,
	beq	.L940	@,
	ldr	lr, [r3, #32]	@ <variable>.MatchVdhIdPlus1, <variable>.MatchVdhIdPlus1
	movw	r0, #:lower16:192380	@ tmp269,
	movt	r0, #:upper16:192380	@ tmp269,
	movw	r1, #:lower16:.LC160	@,
	mov	r2, #15	@,
	movt	r1, #:upper16:.LC160	@,
	ldr	r3, [r3, r0]	@ <variable>.SmInstArray.MatchScdIdPlus1, <variable>.SmInstArray.MatchScdIdPlus1
	mov	r0, r4	@, p
	str	lr, [sp, #0]	@ <variable>.MatchVdhIdPlus1,
	bl	seq_printf	@
.L940:
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC71	@,
	movt	r1, #:upper16:.LC71	@,
	bl	seq_printf	@
	mov	r0, #0	@,
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
	.fnend
	.size	vfmw_read_proc_priv, .-vfmw_read_proc_priv
	.align	2
	.global	VCTRL_GetStreamSize
	.type	VCTRL_GetStreamSize, %function
VCTRL_GetStreamSize:
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
	cmp	r0, #15	@ ChanID,
	bhi	.L948	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r0, [r3, r0, asl #2]	@ D.50327, s_pstVfmwChan
	cmp	r0, #0	@ D.50327,
	beq	.L949	@,
	ldr	r2, [r0, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #1	@ <variable>.s32IsOpen,
	bne	.L950	@,
	add	r0, r0, #99328	@, D.50327,
	add	r0, r0, #712	@,,
	bl	GetSegStreamSize	@
	ldmfd	sp, {fp, sp, pc}	@
.L950:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #1142	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC162	@,
	movt	r3, #:upper16:.LC162	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	ldmfd	sp, {fp, sp, pc}	@
.L948:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #1140	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	ldmfd	sp, {fp, sp, pc}	@
.L949:
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #1141	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC161	@,
	movt	r3, #:upper16:.LC161	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_GetStreamSize, .-VCTRL_GetStreamSize
	.global	__aeabi_idiv
	.align	2
	.global	vfmw_read_proc_info
	.type	vfmw_read_proc_info, %function
vfmw_read_proc_info:
	.fnstart
.LFB1640:
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
	movw	r1, #:lower16:g_pSmIISBase	@ tmp163,
	movt	r1, #:upper16:g_pSmIISBase	@ tmp163,
	movw	r5, #:lower16:.LANCHOR0	@ tmp262,
	movt	r5, #:upper16:.LANCHOR0	@ tmp262,
	movw	r3, #:lower16:s_pFspInst	@ tmp161,
	ldr	r2, [r1, #0]	@ g_pSmIISBase, g_pSmIISBase
	movt	r3, #:upper16:s_pFspInst	@ tmp161,
	ldr	sl, [r5, #1364]	@ chanID, g_CurProcChan
	mov	r4, r0	@ p, p
	ldr	r8, [r2, #40]	@ pInst, <variable>.pSmInstArray
	ldr	r7, [r3, sl, asl #2]	@ pFsp, s_pFspInst
	cmp	r8, #0	@ pInst,
	beq	.L952	@,
	movw	ip, #:lower16:190880	@ tmp164,
	movt	ip, #:upper16:190880	@ tmp164,
	ldr	r0, [r8, ip]	@ <variable>.Mode, <variable>.Mode
	cmp	r0, #0	@ <variable>.Mode,
	bne	.L982	@,
.L952:
	mov	r0, #0	@,
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L982:
	add	r6, r8, #208	@ D.54631, pInst,
	sub	r1, fp, #52	@,,
	mov	r0, r6	@, D.54631
	bl	GetRawStreamSize	@
	cmp	r0, #0	@,
	bne	.L983	@,
.L953:
	mov	r0, r6	@, D.54631
	sub	r1, fp, #48	@,,
	bl	GetRawStreamNum	@
	cmp	r0, #0	@,
	bne	.L984	@,
.L954:
	add	r6, r8, #98304	@ D.54639, pInst,
	sub	r1, fp, #60	@,,
	add	r6, r6, #232	@ D.54639, D.54639,
	mov	r0, r6	@, D.54639
	bl	GetSegStreamSize	@
	cmp	r0, #0	@,
	bne	.L985	@,
.L955:
	mov	r0, r6	@, D.54639
	sub	r1, fp, #56	@,,
	bl	GetSegStreamNum	@
	cmp	r0, #0	@,
	bne	.L986	@,
.L956:
	movw	lr, #:lower16:190724	@ tmp183,
	movt	lr, #:upper16:190724	@ tmp183,
	ldr	r8, [r8, lr]	@ BufSize, <variable>.StreamSegArray.SegBufSize
	cmp	r8, #0	@ BufSize,
	moveq	r9, r8	@ s32percent, BufSize
	bne	.L987	@,
.L958:
	mov	r2, sl	@, chanID
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC164	@,
	movt	r1, #:upper16:.LC164	@,
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC150	@,
	movw	r2, #:lower16:.LC151	@,
	movt	r1, #:upper16:.LC150	@,
	movt	r2, #:upper16:.LC151	@,
	movw	r3, #:lower16:2015071093	@,
	movt	r3, #:upper16:2015071093	@,
	bl	seq_printf	@
	mov	r3, sl	@, chanID
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC150	@,
	movw	r2, #:lower16:.LC165	@,
	movt	r1, #:upper16:.LC150	@,
	movt	r2, #:upper16:.LC165	@,
	movw	r6, #:lower16:-858993459	@ tmp214,
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC166	@,
	movt	r1, #:upper16:.LC166	@,
	bl	seq_printf	@
	ldr	ip, [fp, #-48]	@ RawNum, RawNum
	ldr	r3, [fp, #-52]	@, RawSize
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC167	@,
	movw	r2, #:lower16:.LC168	@,
	movt	r1, #:upper16:.LC167	@,
	movt	r2, #:upper16:.LC168	@,
	str	ip, [sp, #0]	@ RawNum,
	bl	seq_printf	@
	ldr	ip, [fp, #-56]	@ SegNum, SegNum
	mov	r0, r4	@, p
	ldr	r3, [fp, #-60]	@, SegSize
	movw	r1, #:lower16:.LC167	@,
	movw	r2, #:lower16:.LC169	@,
	movt	r1, #:upper16:.LC167	@,
	movt	r2, #:upper16:.LC169	@,
	str	ip, [sp, #0]	@ SegNum,
	bl	seq_printf	@
	ldr	ip, [fp, #-60]	@ SegSize, SegSize
	mov	r3, r8	@, BufSize
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC170	@,
	movw	r2, #:lower16:.LC171	@,
	movt	r1, #:upper16:.LC170	@,
	movt	r2, #:upper16:.LC171	@,
	str	ip, [sp, #0]	@ SegSize,
	movt	r6, #:upper16:-858993459	@ tmp214,
	str	r9, [sp, #4]	@ s32percent,
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC172	@,
	movt	r1, #:upper16:.LC172	@,
	bl	seq_printf	@
	ldr	lr, [r5, #1388]	@ D.54656, <variable>.u32VaVdmLoad
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC153	@,
	movw	r2, #:lower16:.LC154	@,
	movt	r1, #:upper16:.LC153	@,
	umull	ip, r3, r6, lr	@, tmp213, tmp214, D.54656
	movt	r2, #:upper16:.LC154	@,
	mov	r3, r3, lsr #3	@ tmp212, tmp213,
	add	ip, r3, r3, asl #2	@, tmp220, tmp212, tmp212,
	sub	ip, lr, ip, asl #1	@ tmp222, D.54656, tmp220,
	str	ip, [sp, #0]	@ tmp222,
	bl	seq_printf	@
	ldr	ip, [r7, #72]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	ldr	r3, [r7, #68]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC173	@,
	movw	r2, #:lower16:.LC174	@,
	movt	r1, #:upper16:.LC173	@,
	movt	r2, #:upper16:.LC174	@,
	str	ip, [sp, #0]	@ <variable>.stInstCfg.s32DecFsHeight,
	bl	seq_printf	@
	ldr	ip, [r7, #88]	@ <variable>.stInstCfg.s32DispFsHeight, <variable>.stInstCfg.s32DispFsHeight
	mov	r0, r4	@, p
	ldr	r3, [r7, #84]	@ <variable>.stInstCfg.s32DispFsWidth, <variable>.stInstCfg.s32DispFsWidth
	movw	r1, #:lower16:.LC173	@,
	movw	r2, #:lower16:.LC175	@,
	movt	r1, #:upper16:.LC173	@,
	movt	r2, #:upper16:.LC175	@,
	str	ip, [sp, #0]	@ <variable>.stInstCfg.s32DispFsHeight,
	bl	seq_printf	@
	ldr	ip, [r5, #1468]	@ D.54668, <variable>.u32FrFrameRate
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC176	@,
	movw	r2, #:lower16:.LC177	@,
	movt	r1, #:upper16:.LC176	@,
	umull	lr, r3, r6, ip	@, tmp235, tmp214, D.54668
	movt	r2, #:upper16:.LC177	@,
	mov	r3, r3, lsr #3	@ tmp234, tmp235,
	add	r6, r3, r3, asl #2	@, tmp242, tmp234, tmp234,
	sub	ip, ip, r6, asl #1	@ tmp244, D.54668, tmp242,
	str	ip, [sp, #0]	@ tmp244,
	bl	seq_printf	@
	ldrb	ip, [r7, #10]	@ zero_extendqisi2	@ D.54677, <variable>.s32DecFsNum
	sxtb	r6, ip	@ D.54678, D.54677
	cmp	r6, #0	@ D.54678,
	movle	r5, #0	@ usedFrameNum,
	ble	.L960	@,
	add	r3, r7, #34816	@ ivtmp.3467, pFsp,
	rsb	r0, r6, r6, asl #4	@, tmp249, D.54678, D.54678,
	mov	r5, #0	@ usedFrameNum,
	ldrsb	r1, [r3, #158]!	@ <variable>.DispState, <variable>.DispState
	mov	lr, r0, asl #2	@ D.58903, tmp249,
	sub	r2, lr, #60	@ tmp266, D.58903,
	cmp	r1, #3	@ <variable>.DispState,
	ubfx	r1, r2, #2, #1	@ tmp270, tmp266,,
	beq	.L968	@,
	ldrsb	r2, [r3, #-2]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r2, #1	@ <variable>.IsDecRef,
	beq	.L968	@,
.L969:
	mov	r2, #60	@ ivtmp.3468,
	cmp	r2, lr	@ ivtmp.3468, D.58903
	add	r3, r3, r2	@ ivtmp.3467, ivtmp.3467,
	beq	.L960	@,
	cmp	r1, #0	@ tmp270,
	beq	.L963	@,
	ldrsb	r1, [r3, #0]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #3	@ <variable>.DispState,
	beq	.L971	@,
	ldrsb	r0, [r3, #-2]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r0, #1	@ <variable>.IsDecRef,
	beq	.L971	@,
	add	r2, r2, #60	@ ivtmp.3468, ivtmp.3468,
	add	r3, r3, #60	@ ivtmp.3467, ivtmp.3467,
	cmp	r2, lr	@ ivtmp.3468, D.58903
	bne	.L963	@,
.L960:
	cmp	ip, #0	@ D.54677,
	bne	.L988	@,
.L965:
	mov	r3, r6	@, D.54678
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC170	@,
	movw	r2, #:lower16:.LC178	@,
	movt	r1, #:upper16:.LC170	@,
	movt	r2, #:upper16:.LC178	@,
	stmia	sp, {r5, ip}	@ phole stm
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC179	@,
	movt	r1, #:upper16:.LC179	@,
	bl	seq_printf	@
	b	.L952	@
.L989:
	ldrsb	r0, [r3, #-2]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r0, #1	@ <variable>.IsDecRef,
	beq	.L961	@,
	ldrsb	r3, [r3, #60]	@ <variable>.DispState, <variable>.DispState
	cmp	r3, #3	@ <variable>.DispState,
	beq	.L975	@,
.L980:
	ldrsb	r3, [r1, #-2]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r3, #1	@ <variable>.IsDecRef,
	beq	.L975	@,
.L976:
	add	r2, r2, #60	@ ivtmp.3468, tmp272,
	add	r3, r1, #60	@ ivtmp.3467, tmp271,
	cmp	r2, lr	@ ivtmp.3468, D.58903
	beq	.L960	@,
.L963:
	ldrsb	r0, [r3, #0]	@ <variable>.DispState, <variable>.DispState
	add	r2, r2, #60	@ tmp272, ivtmp.3468,
	add	r1, r3, #60	@ tmp271, ivtmp.3467,
	cmp	r0, #3	@ <variable>.DispState,
	bne	.L989	@,
.L961:
	ldrsb	r3, [r3, #60]	@ <variable>.DispState, <variable>.DispState
	add	r5, r5, #1	@ usedFrameNum, usedFrameNum,
	cmp	r3, #3	@ <variable>.DispState,
	bne	.L980	@,
.L975:
	add	r5, r5, #1	@ usedFrameNum, usedFrameNum,
	b	.L976	@
.L988:
	mov	lr, #100	@ tmp254,
	mov	r1, r6	@, D.54678
	mul	r0, lr, r5	@, tmp254, usedFrameNum
	bl	__aeabi_idiv	@
	mov	ip, r0	@ s32percent.3471,
	b	.L965	@
.L987:
	ldr	r3, [fp, #-60]	@ SegSize, SegSize
	mov	r9, #100	@ tmp186,
	mov	r1, r8	@, BufSize
	mul	r0, r9, r3	@, tmp186, SegSize
	bl	__aeabi_idiv	@
	mov	r9, r0	@ s32percent,
	b	.L958	@
.L968:
	mov	r5, #1	@ usedFrameNum,
	b	.L969	@
.L971:
	add	r2, r2, #60	@ ivtmp.3468, ivtmp.3468,
	add	r5, r5, #1	@ usedFrameNum, usedFrameNum,
	cmp	r2, lr	@ ivtmp.3468, D.58903
	add	r3, r3, #60	@ ivtmp.3467, ivtmp.3467,
	bne	.L963	@,
	b	.L960	@
.L986:
	movw	r1, #:lower16:.LC163	@,
	ldr	r2, .L990	@,
	movt	r1, #:upper16:.LC163	@,
	movw	r3, #8823	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	b	.L956	@
.L985:
	movw	r1, #:lower16:.LC163	@,
	ldr	r2, .L990	@,
	movt	r1, #:upper16:.LC163	@,
	movw	r3, #8818	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	b	.L955	@
.L984:
	movw	r1, #:lower16:.LC163	@,
	ldr	r2, .L990	@,
	movt	r1, #:upper16:.LC163	@,
	movw	r3, #8813	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	b	.L954	@
.L983:
	movw	r1, #:lower16:.LC163	@,
	ldr	r2, .L990	@,
	movt	r1, #:upper16:.LC163	@,
	movw	r3, #8808	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	b	.L953	@
.L991:
	.align	2
.L990:
	.word	.LANCHOR1+188
	.fnend
	.size	vfmw_read_proc_info, .-vfmw_read_proc_info
	.align	2
	.global	VCTRL_OutputLastFrame
	.type	VCTRL_OutputLastFrame, %function
VCTRL_OutputLastFrame:
	.fnstart
.LFB1633:
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
	movw	r1, #:lower16:.LANCHOR0	@ tmp137,
	movt	r1, #:upper16:.LANCHOR0	@ tmp137,
	mov	r5, r0	@ ChanId, ChanId
	movw	r2, #:lower16:251592	@ tmp138,
	movt	r2, #:upper16:251592	@ tmp138,
	ldr	r0, [r1, r0, asl #2]	@ D.54415, s_pstVfmwChan
	ldr	r3, [r0, r2]	@ <variable>.stSynCtx.eVidStd, <variable>.stSynCtx.eVidStd
	cmp	r3, #16	@ <variable>.stSynCtx.eVidStd,
	ldrls	pc, [pc, r3, asl #2]	@ <variable>.stSynCtx.eVidStd
	b	.L993	@
.L1006:
	.word	.L994
	.word	.L995
	.word	.L996
	.word	.L997
	.word	.L993
	.word	.L998
	.word	.L999
	.word	.L993
	.word	.L1000
	.word	.L1001
	.word	.L1002
	.word	.L1002
	.word	.L1002
	.word	.L1003
	.word	.L993
	.word	.L1004
	.word	.L1005
.L1005:
	add	lr, r0, #250880	@, D.54415,
	add	r0, lr, #720	@,,
	bl	HEVCDEC_GetRemainImg	@
	mov	r4, r0	@ ret,
.L1007:
	cmn	r4, #1	@ ret,
	beq	.L1009	@,
	cmp	r4, #0	@ ret,
	bne	.L1017	@,
	mov	r0, r5	@, ChanId
	mov	r1, r4	@, ret
	bl	VCTRL_ReportLastFrame	@
	movw	r1, #:lower16:.LC181	@,
	mov	r0, #2	@,
	movt	r1, #:upper16:.LC181	@,
	bl	dprint_vfmw	@
.L1011:
	mov	r0, r4	@, ret
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L993:
	mvn	r4, #0	@ ret,
.L1009:
	mov	r0, r5	@, ChanId
	mov	r1, #1	@,
	bl	VCTRL_ReportLastFrame	@
	movw	r1, #:lower16:.LC180	@,
	mov	r0, #2	@,
	movt	r1, #:upper16:.LC180	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, ret
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L994:
	add	ip, r0, #250880	@, D.54415,
	add	r0, ip, #720	@,,
	bl	H264DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L1007	@
.L995:
	add	r4, r0, #250880	@, D.54415,
	add	r0, r4, #720	@,,
	bl	VC1DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L1007	@
.L996:
	add	r4, r0, #250880	@, D.54415,
	add	r0, r4, #720	@,,
	bl	MPEG4DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L1007	@
.L997:
	add	r0, r0, #250880	@, D.54415,
	add	r0, r0, #720	@,,
	bl	MPEG2DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L1007	@
.L998:
	add	r0, r0, #250880	@, D.54415,
	add	r0, r0, #720	@,,
	bl	DIVX3DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L1007	@
.L999:
	add	r3, r0, #250880	@, D.54415,
	add	r0, r3, #720	@,,
	bl	AVSDEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L1007	@
.L1000:
	add	r2, r0, #250880	@, D.54415,
	add	r0, r2, #720	@,,
	bl	REAL8DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L1007	@
.L1001:
	add	r1, r0, #250880	@, D.54415,
	add	r0, r1, #720	@,,
	bl	REAL9DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L1007	@
.L1002:
	add	ip, r0, #250880	@, D.54415,
	add	r0, ip, #720	@,,
	bl	VP6DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L1007	@
.L1003:
	add	lr, r0, #250880	@, D.54415,
	add	r0, lr, #720	@,,
	bl	VP8DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L1007	@
.L1004:
	add	r3, r0, #250880	@, D.54415,
	add	r0, r3, #720	@,,
	bl	MVC_DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L1007	@
.L1017:
	movw	r2, #:lower16:g_chipID	@ tmp166,
	movt	r2, #:upper16:g_chipID	@ tmp166,
	ldr	r3, [r2, #0]	@ g_chipID, g_chipID
	cmp	r3, #12	@ g_chipID,
	bgt	.L1014	@,
	cmp	r3, #8	@ g_chipID,
	bge	.L1013	@,
	cmp	r3, #0	@ g_chipID,
	blt	.L1011	@,
	cmp	r3, #5	@ g_chipID,
	bgt	.L1018	@,
	mov	r0, r5	@, ChanId
	mov	r1, r4	@, ret
	bl	VCTRL_ReportLastFrame	@
	sub	r2, r4, #2	@, ret,
	movw	r1, #:lower16:.LC182	@,
	mov	r0, #2	@,
	movt	r1, #:upper16:.LC182	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, ret
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L1014:
	cmp	r3, #51	@ g_chipID,
	blt	.L1011	@,
	cmp	r3, #52	@ g_chipID,
	bgt	.L1019	@,
.L1013:
	mov	r0, r5	@, ChanId
	mov	r1, r4	@, ret
	bl	VCTRL_ReportLastFrame	@
	sub	r2, r4, #2	@, ret,
	movw	r1, #:lower16:.LC182	@,
	mov	r0, #2	@,
	movt	r1, #:upper16:.LC182	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, ret
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L1019:
	sub	r1, r3, #100	@ tmp168, g_chipID,
	cmp	r1, #1	@ tmp168,
	bhi	.L1011	@,
	b	.L1013	@
.L1018:
	cmp	r3, #6	@ g_chipID,
	bne	.L1011	@,
	b	.L1013	@
	.fnend
	.size	VCTRL_OutputLastFrame, .-VCTRL_OutputLastFrame
	.align	2
	.global	VCTRL_RlsAllFrameNode
	.type	VCTRL_RlsAllFrameNode, %function
VCTRL_RlsAllFrameNode:
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
	mov	r8, #0	@ i,
	movw	r5, #:lower16:.LANCHOR0	@ tmp200,
	mov	r6, r0	@ ChanID, ChanID
	movt	r5, #:upper16:.LANCHOR0	@ tmp200,
	mov	r0, r8	@ s32Ret, i
	b	.L1023	@
.L1022:
	add	r2, r9, r8	@ tmp166, tmp202, i
	mov	r8, r2, asl #2	@ tmp167, tmp166,
	add	r1, r8, sl	@ tmp168, tmp167, D.50513
	add	r0, r1, #248832	@ tmp177, tmp168,
	add	lr, r0, #472	@ tmp177, tmp177,
	add	sl, r0, #480	@ tmp169, tmp169,
	ldr	r1, [lr, #4]	@, <variable>.stFrameBuffer.VirAddr
	ldmia	sl, {r0, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	ldr	r3, [r5, r6, asl #2]	@ tmp188, s_pstVfmwChan
	mvn	r1, #0	@,
	add	ip, r8, r3	@ tmp194, tmp167, tmp188
	add	r2, ip, #248832	@ tmp195, tmp194,
	add	r8, r2, #488	@ tmp195, tmp195,
	strb	r1, [r8, #0]	@, <variable>.u8BufferNodeState
.L1021:
	ldr	r8, [r5, r6, asl #2]	@ D.50513, s_pstVfmwChan
	add	r1, r7, r4	@ tmp213, tmp212, tmp208
	add	r2, r8, r1, asl #2	@, tmp215, D.50513, tmp213,
	add	r3, r2, #248832	@ tmp216, tmp215,
	add	ip, r3, #488	@ tmp216, tmp216,
	ldrb	r3, [ip, #0]	@ zero_extendqisi2	@ D.50515, <variable>.u8BufferNodeState
	cmp	r3, #255	@ D.50515,
	beq	.L1027	@,
	cmp	r3, #1	@ D.50515,
	beq	.L1031	@,
.L1028:
	add	r2, r7, r4	@ tmp219, tmp212, tmp208
	mov	r7, r2, asl #2	@ tmp220, tmp219,
	add	r8, r7, r8	@ tmp221, tmp220, D.50513
	add	r3, r8, #248832	@ tmp225, tmp221,
	mvn	r8, #0	@,
	add	lr, r3, #480	@ tmp222, tmp222,
	add	r0, r3, #472	@ tmp225, tmp225,
	ldr	r2, [lr, #4]	@, <variable>.stFrameBuffer.Length
	ldr	r1, [r0, #4]	@, <variable>.stFrameBuffer.VirAddr
	ldr	r0, [lr, #0]	@, <variable>.stFrameBuffer.PhyAddr
	bl	MEM_DelMemRecord	@
	ldr	ip, [r5, r6, asl #2]	@ tmp228, s_pstVfmwChan
	add	r2, r7, ip	@ tmp230, tmp220, tmp228
	add	r7, r2, #248832	@ tmp231, tmp230,
	add	r7, r7, #488	@ tmp231, tmp231,
	strb	r8, [r7, #0]	@, <variable>.u8BufferNodeState
.L1027:
	add	r8, r4, #1	@ i, tmp208,
	cmp	r8, #64	@ i,
	beq	.L1033	@,
.L1023:
	mov	r9, r8, asl #2	@ tmp202, i,
	ldr	sl, [r5, r6, asl #2]	@ D.50513, s_pstVfmwChan
	add	r2, r9, r8	@ tmp143, tmp202, i
	add	r4, r8, #1	@ tmp208, i,
	add	r2, sl, r2, asl #2	@, tmp145, D.50513, tmp143,
	mov	r7, r4, asl #2	@ tmp212, tmp208,
	add	r1, r2, #248832	@ tmp146, tmp145,
	add	r3, r1, #488	@ tmp146, tmp146,
	ldrb	r3, [r3, #0]	@ zero_extendqisi2	@ D.50515, <variable>.u8BufferNodeState
	cmp	r3, #255	@ D.50515,
	beq	.L1021	@,
	cmp	r3, #1	@ D.50515,
	bne	.L1022	@,
	add	r0, r2, #248832	@ tmp161, tmp145,
	add	ip, r0, #472	@ tmp161, tmp161,
	add	lr, r0, #480	@ tmp153, tmp153,
	ldr	r1, [ip, #4]	@, <variable>.stFrameBuffer.VirAddr
	ldr	r0, [lr, #0]	@, <variable>.stFrameBuffer.PhyAddr
	bl	MEM_ReleaseMemBlock	@
	b	.L1022	@
.L1031:
	add	r0, r2, #248832	@ tmp235, tmp215,
	add	ip, r0, #472	@ tmp235, tmp235,
	add	lr, r0, #480	@ tmp233, tmp233,
	ldr	r1, [ip, #4]	@, <variable>.stFrameBuffer.VirAddr
	ldr	r0, [lr, #0]	@, <variable>.stFrameBuffer.PhyAddr
	bl	MEM_ReleaseMemBlock	@
	b	.L1028	@
.L1033:
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	.fnend
	.size	VCTRL_RlsAllFrameNode, .-VCTRL_RlsAllFrameNode
	.align	2
	.type	VCTRL_AllocMemPre, %function
VCTRL_AllocMemPre:
	.fnstart
.LFB1663:
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
	movw	r8, #:lower16:.LANCHOR0	@ tmp249,
	movt	r8, #:upper16:.LANCHOR0	@ tmp249,
	mov	r5, r1	@ s32FrmNum, s32FrmNum
	movw	r3, #:lower16:249272	@ tmp150,
	movt	r3, #:upper16:249272	@ tmp150,
	ldr	r2, [r8, r0, asl #2]	@ prephitmp.3559, s_pstVfmwChan
	mov	r4, r0	@ ChanID, ChanID
	ldr	r1, [r2, #228]	@, <variable>.stChanMem_vdh.PhyAddr
	str	r1, [fp, #-52]	@, %sfp
	ldr	ip, [r2, #224]	@, <variable>.stChanMem_vdh.VirAddr
	cmp	ip, #0	@,
	cmpne	r1, #0	@,,
	str	ip, [fp, #-48]	@, %sfp
	ldr	r9, [r2, r3]	@ s32FrameSize, <variable>.s32CurFsSize
	beq	.L1035	@,
	cmp	r5, #63	@ s32FrmNum,
	bgt	.L1035	@,
	mov	sl, #0	@ ivtmp.3585,
	str	sl, [fp, #-56]	@ ivtmp.3585, %sfp
	mov	r7, sl	@ s32AllocedFrameNum, ivtmp.3585
	mov	r6, sl	@ i, ivtmp.3585
	b	.L1040	@
.L1036:
	cmp	r5, r7	@ s32FrmNum, s32AllocedFrameNum
	ble	.L1038	@,
	add	r6, r6, #1	@ i, i,
	add	ip, sl, r9	@ ivtmp.3585, ivtmp.3585, s32FrameSize
	cmp	r6, #64	@ i,
	mov	sl, r6	@ tmp252, i
	beq	.L1053	@,
.L1039:
	add	r1, r6, r6, asl #2	@, tmp259, tmp252, tmp252,
	ldr	r0, [r8, r4, asl #2]	@ prephitmp.3559, s_pstVfmwChan
	cmp	r7, r5	@ s32AllocedFrameNum, s32FrmNum
	movge	r3, #0	@, prephitmp.3561
	movlt	r3, #1	@, prephitmp.3561
	mov	r1, r1, asl #2	@ tmp260, tmp259,
	add	r0, r1, r0	@ tmp261, tmp260, prephitmp.3559
	add	r2, r0, #248832	@ tmp262, tmp261,
	add	r2, r2, #488	@ tmp262, tmp262,
	ldrb	r2, [r2, #0]	@ zero_extendqisi2	@ <variable>.u8BufferNodeState, <variable>.u8BufferNodeState
	cmp	r2, #255	@ <variable>.u8BufferNodeState,
	movne	r2, #0	@, tmp267
	andeq	r2, r3, #1	@,, tmp267, prephitmp.3561
	cmp	r2, #0	@ tmp267,
	bne	.L1054	@,
	cmp	r5, r7	@ s32FrmNum, s32AllocedFrameNum
	ble	.L1038	@,
.L1049:
	add	r6, sl, #1	@ i, tmp252,
	ldr	r0, [r8, r4, asl #2]	@ prephitmp.3559, s_pstVfmwChan
	cmp	r7, r5	@ s32AllocedFrameNum, s32FrmNum
	movge	r3, #0	@, prephitmp.3561
	movlt	r3, #1	@, prephitmp.3561
	add	ip, ip, r9	@ ivtmp.3585, ivtmp.3585, s32FrameSize
	add	r1, r6, r6, asl #2	@, tmp294, i, i,
	mov	r1, r1, asl #2	@ tmp295, tmp294,
	add	r0, r1, r0	@ tmp296, tmp295, prephitmp.3559
	add	r2, r0, #248832	@ tmp297, tmp296,
	add	r2, r2, #488	@ tmp297, tmp297,
	ldrb	r2, [r2, #0]	@ zero_extendqisi2	@ <variable>.u8BufferNodeState, <variable>.u8BufferNodeState
	cmp	r2, #255	@ <variable>.u8BufferNodeState,
	movne	r2, #0	@, tmp302
	andeq	r2, r3, #1	@,, tmp302, prephitmp.3561
	cmp	r2, #0	@ tmp302,
	bne	.L1050	@,
	cmp	r5, r7	@ s32FrmNum, s32AllocedFrameNum
	ble	.L1038	@,
.L1051:
	ldr	r2, [r8, r4, asl #2]	@ prephitmp.3559, s_pstVfmwChan
	add	r6, sl, #2	@ i, tmp252,
	add	sl, ip, r9	@ ivtmp.3585, ivtmp.3585, s32FrameSize
.L1040:
	add	r0, r6, r6, asl #2	@, tmp163, i, i,
	cmp	r7, r5	@ s32AllocedFrameNum, s32FrmNum
	movge	r3, #0	@, prephitmp.3561
	movlt	r3, #1	@, prephitmp.3561
	mov	r0, r0, asl #2	@ tmp164, tmp163,
	add	r2, r0, r2	@ tmp165, tmp164, prephitmp.3559
	add	ip, r2, #248832	@ tmp166, tmp165,
	add	r1, ip, #488	@ tmp166, tmp166,
	ldrb	ip, [r1, #0]	@ zero_extendqisi2	@ <variable>.u8BufferNodeState, <variable>.u8BufferNodeState
	cmp	ip, #255	@ <variable>.u8BufferNodeState,
	movne	r1, #0	@, tmp172
	andeq	r1, r3, #1	@,, tmp172, prephitmp.3561
	cmp	r1, #0	@ tmp172,
	beq	.L1036	@,
	add	ip, r2, #248832	@ tmp179, tmp165,
	ldr	lr, [fp, #-52]	@, %sfp
	add	r2, ip, #480	@ tmp179, tmp179,
	ldr	r1, [fp, #-48]	@, %sfp
	add	r3, sl, lr	@ tmp180, ivtmp.3585,
	add	r6, r6, #1	@ i, i,
	str	r3, [r2, #0]	@ tmp180, <variable>.stFrameBuffer.PhyAddr
	add	lr, sl, r1	@ tmp190, ivtmp.3585,
	ldr	ip, [r8, r4, asl #2]	@ tmp182, s_pstVfmwChan
	add	r7, r7, #1	@ s32AllocedFrameNum, s32AllocedFrameNum,
	add	r1, r0, ip	@ tmp188, tmp164, tmp182
	add	r2, r1, #248832	@ tmp189, tmp188,
	add	r3, r2, #472	@ tmp189, tmp189,
	str	lr, [r3, #4]	@ tmp190, <variable>.stFrameBuffer.VirAddr
	ldr	ip, [r8, r4, asl #2]	@ tmp192, s_pstVfmwChan
	add	r1, r0, ip	@ tmp198, tmp164, tmp192
	add	r2, r1, #248832	@ tmp199, tmp198,
	add	r3, r2, #480	@ tmp199, tmp199,
	mov	r2, #0	@,
	str	r9, [r3, #4]	@ s32FrameSize, <variable>.stFrameBuffer.Length
	ldr	lr, [r8, r4, asl #2]	@ tmp201, s_pstVfmwChan
	add	ip, r0, lr	@ tmp207, tmp164, tmp201
	add	r1, ip, #248832	@ tmp208, tmp207,
	add	r3, r1, #488	@ tmp208, tmp208,
	strb	r2, [r3, #0]	@, <variable>.u8BufferNodeState
	ldr	lr, [r8, r4, asl #2]	@ temp.3591, s_pstVfmwChan
	add	ip, r0, lr	@ tmp217, tmp164, temp.3591
	add	r2, ip, #248832	@ tmp226, tmp217,
	add	lr, r2, #480	@ tmp218, tmp218,
	add	r3, r2, #472	@ tmp226, tmp226,
	ldmia	lr, {r0, r2}	@ phole ldm
	ldr	r1, [r3, #4]	@, <variable>.stFrameBuffer.VirAddr
	bl	MEM_AddMemRecord	@
	cmp	r6, #64	@ i,
	add	ip, sl, r9	@ ivtmp.3585, ivtmp.3585, s32FrameSize
	mov	sl, r6	@ tmp252, i
	str	r0, [fp, #-56]	@, %sfp
	bne	.L1039	@,
.L1053:
	cmp	r7, r5	@ s32AllocedFrameNum, s32FrmNum
	movge	r3, #0	@, prephitmp.3561
	movlt	r3, #1	@, prephitmp.3561
.L1038:
	cmp	r6, #64	@ i,
	movne	r3, #0	@, tmp244
	andeq	r3, r3, #1	@,, tmp244, prephitmp.3561
	cmp	r3, #0	@ tmp244,
	bne	.L1055	@,
.L1041:
	ldr	r0, [fp, #-56]	@, %sfp
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L1054:
	ldr	r2, [fp, #-52]	@, %sfp
	add	r6, r0, #248832	@ tmp268, tmp261,
	ldr	lr, [fp, #-48]	@, %sfp
	add	r7, r7, #1	@ s32AllocedFrameNum, s32AllocedFrameNum,
	add	r3, ip, r2	@ tmp269, ivtmp.3585,
	add	r2, r6, #480	@ tmp268, tmp268,
	add	r6, ip, lr	@ tmp273, ivtmp.3585,
	str	r3, [r2, #0]	@ tmp269, <variable>.stFrameBuffer.PhyAddr
	ldr	r0, [r8, r4, asl #2]	@ tmp270, s_pstVfmwChan
	add	r2, r1, r0	@ tmp271, tmp260, tmp270
	add	lr, r2, #248832	@ tmp272, tmp271,
	add	r3, lr, #472	@ tmp272, tmp272,
	str	r6, [r3, #4]	@ tmp273, <variable>.stFrameBuffer.VirAddr
	ldr	r0, [r8, r4, asl #2]	@ tmp274, s_pstVfmwChan
	add	r2, r1, r0	@ tmp275, tmp260, tmp274
	add	lr, r2, #248832	@ tmp276, tmp275,
	add	r6, lr, #480	@ tmp276, tmp276,
	str	r9, [r6, #4]	@ s32FrameSize, <variable>.stFrameBuffer.Length
	mov	r6, #0	@,
	ldr	r3, [r8, r4, asl #2]	@ tmp277, s_pstVfmwChan
	add	r0, r1, r3	@ tmp278, tmp260, tmp277
	add	r2, r0, #248832	@ tmp279, tmp278,
	add	lr, r2, #488	@ tmp279, tmp279,
	strb	r6, [lr, #0]	@, <variable>.u8BufferNodeState
	ldr	r3, [r8, r4, asl #2]	@ temp.3591, s_pstVfmwChan
	add	r1, r1, r3	@ tmp282, tmp260, temp.3591
	add	r2, r1, #248832	@ tmp285, tmp282,
	add	lr, r2, #472	@ tmp285, tmp285,
	add	r6, r2, #480	@ tmp283, tmp283,
	ldr	r1, [lr, #4]	@, <variable>.stFrameBuffer.VirAddr
	ldmia	r6, {r0, r2}	@ phole ldm
	str	ip, [fp, #-60]	@,
	bl	MEM_AddMemRecord	@
	ldr	ip, [fp, #-60]	@,
	str	r0, [fp, #-56]	@, %sfp
	b	.L1049	@
.L1050:
	ldr	r2, [fp, #-52]	@, %sfp
	add	r6, r0, #248832	@ tmp303, tmp296,
	ldr	lr, [fp, #-48]	@, %sfp
	add	r7, r7, #1	@ s32AllocedFrameNum, s32AllocedFrameNum,
	add	r3, ip, r2	@ tmp304, ivtmp.3585,
	add	r2, r6, #480	@ tmp303, tmp303,
	add	r6, ip, lr	@ tmp308, ivtmp.3585,
	str	r3, [r2, #0]	@ tmp304, <variable>.stFrameBuffer.PhyAddr
	ldr	r0, [r8, r4, asl #2]	@ tmp305, s_pstVfmwChan
	add	r2, r1, r0	@ tmp306, tmp295, tmp305
	add	lr, r2, #248832	@ tmp307, tmp306,
	add	r3, lr, #472	@ tmp307, tmp307,
	str	r6, [r3, #4]	@ tmp308, <variable>.stFrameBuffer.VirAddr
	ldr	r0, [r8, r4, asl #2]	@ tmp309, s_pstVfmwChan
	add	r2, r1, r0	@ tmp310, tmp295, tmp309
	add	r6, r2, #248832	@ tmp311, tmp310,
	add	lr, r6, #480	@ tmp311, tmp311,
	str	r9, [lr, #4]	@ s32FrameSize, <variable>.stFrameBuffer.Length
	mov	lr, #0	@,
	ldr	r3, [r8, r4, asl #2]	@ tmp312, s_pstVfmwChan
	add	r0, r1, r3	@ tmp313, tmp295, tmp312
	add	r2, r0, #248832	@ tmp314, tmp313,
	add	r6, r2, #488	@ tmp314, tmp314,
	strb	lr, [r6, #0]	@, <variable>.u8BufferNodeState
	ldr	r3, [r8, r4, asl #2]	@ temp.3591, s_pstVfmwChan
	add	r0, r1, r3	@ tmp317, tmp295, temp.3591
	add	r6, r0, #248832	@ tmp320, tmp317,
	add	r3, r6, #480	@ tmp318, tmp318,
	add	lr, r6, #472	@ tmp320, tmp320,
	ldr	r2, [r3, #4]	@, <variable>.stFrameBuffer.Length
	ldr	r1, [lr, #4]	@, <variable>.stFrameBuffer.VirAddr
	ldr	r0, [r3, #0]	@, <variable>.stFrameBuffer.PhyAddr
	str	ip, [fp, #-60]	@,
	bl	MEM_AddMemRecord	@
	ldr	ip, [fp, #-60]	@,
	str	r0, [fp, #-56]	@, %sfp
	b	.L1051	@
.L1035:
	ldr	r3, [fp, #-48]	@, %sfp
	mov	r0, #31	@,
	ldr	r2, [fp, #-52]	@, %sfp
	movw	r1, #:lower16:.LC183	@,
	movt	r1, #:upper16:.LC183	@,
	str	r5, [sp, #0]	@ s32FrmNum,
	bl	dprint_vfmw	@
	mvn	r3, #0	@,
	str	r3, [fp, #-56]	@, %sfp
	b	.L1041	@
.L1055:
	mov	r2, r5	@, s32FrmNum
	mov	r3, r7	@, s32AllocedFrameNum
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC184	@,
	movt	r1, #:upper16:.LC184	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, ChanID
	bl	VCTRL_RlsAllFrameNode	@
	cmp	r0, #0	@,
	mvneq	r2, #0	@,
	streq	r2, [fp, #-56]	@, %sfp
	beq	.L1041	@,
	mov	r2, r4	@, ChanID
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC185	@,
	movt	r1, #:upper16:.LC185	@,
	bl	dprint_vfmw	@
	mvn	ip, #0	@,
	str	ip, [fp, #-56]	@, %sfp
	b	.L1041	@
	.fnend
	.size	VCTRL_AllocMemPre, .-VCTRL_AllocMemPre
	.align	2
	.type	VCTRL_AllocMemMMZ, %function
VCTRL_AllocMemMMZ:
	.fnstart
.LFB1664:
	@ args = 0, pretend = 0, frame = 32
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
	movw	r5, #:lower16:.LANCHOR0	@ tmp218,
	movt	r5, #:upper16:.LANCHOR0	@ tmp218,
	str	r1, [fp, #-60]	@ s32FrmNum, %sfp
	mov	r6, r0	@ ChanID, ChanID
	movw	r8, #:lower16:249272	@ tmp147,
	ldr	r7, [r5, r0, asl #2]	@ prephitmp.3614, s_pstVfmwChan
	mov	r0, #0	@,
	str	r0, [fp, #-52]	@, %sfp
	movt	r8, #:upper16:249272	@ tmp147,
	mov	r4, r0	@ s32Times,
	mov	sl, r0	@ i, s32Times
	ldr	r2, [r7, #1428]	@ <variable>.stSynExtraData.stChanOption.s32DelayTime, <variable>.stSynExtraData.stChanOption.s32DelayTime
	ldr	r9, [r7, r8]	@ s32FrameSize, <variable>.s32CurFsSize
	mov	r8, r0	@ tmp227, s32Ret
	str	r4, [fp, #-72]	@ s32Times, %sfp
	add	r1, r2, r2, lsr #31	@, tmp150, <variable>.stSynExtraData.stChanOption.s32DelayTime, <variable>.stSynExtraData.stChanOption.s32DelayTime,
	mov	r3, r1, asr #1	@, tmp150,
	str	r3, [fp, #-48]	@, %sfp
	b	.L1063	@
.L1057:
	ldr	r3, [fp, #-60]	@, %sfp
	ldr	r1, [fp, #-52]	@, %sfp
	cmp	r3, r1	@,
	ble	.L1062	@,
	add	sl, sl, #1	@ i, i,
	cmp	sl, #64	@ i,
	beq	.L1060	@,
.L1070:
	ldr	r7, [r5, r6, asl #2]	@ prephitmp.3614, s_pstVfmwChan
.L1063:
	mov	ip, sl, asl #2	@, i,
	str	ip, [fp, #-56]	@, %sfp
	add	r2, ip, sl	@ tmp157,, i
	ldr	ip, [fp, #-52]	@, %sfp
	mov	r2, r2, asl #2	@ tmp158, tmp157,
	add	r1, r2, r7	@ tmp159, tmp158, prephitmp.3614
	add	r3, r1, #248832	@ tmp160, tmp159,
	ldr	r1, [fp, #-60]	@, %sfp
	add	r4, r3, #488	@ tmp160, tmp160,
	ldrb	r3, [r4, #0]	@ zero_extendqisi2	@ <variable>.u8BufferNodeState, <variable>.u8BufferNodeState
	cmp	ip, r1	@,
	movge	r4, #0	@,
	movlt	r4, #1	@,
	cmp	r3, #255	@ <variable>.u8BufferNodeState,
	movne	r4, #0	@,,
	cmp	r4, #0	@ tmp166,
	beq	.L1057	@,
	add	r3, r2, #248832	@ tmp171, tmp158,
	mov	r1, r8	@, tmp227
	add	lr, r3, #472	@ tmp171, tmp171,
	movw	r0, #:lower16:.LC186	@,
	add	r7, r7, lr	@ MEM_RECORD, prephitmp.3614, tmp171
	movt	r0, #:upper16:.LC186	@,
	mov	r2, r9	@, s32FrameSize
	str	r8, [sp, #0]	@ tmp227,
	mov	r3, r7	@, MEM_RECORD
	str	lr, [fp, #-68]	@,
	bl	MEM_AllocMemBlock	@
	ldr	r1, [fp, #-48]	@, %sfp
	ldr	r3, [fp, #-72]	@, %sfp
	ldr	ip, [fp, #-68]	@,
	cmp	r0, #0	@ s32Ret,
	cmpne	r1, r3	@,,
	ble	.L1058	@,
	str	sl, [fp, #-64]	@ i, %sfp
	mov	r4, r3	@ s32Times,
	mov	sl, ip	@ tmp223, tmp223
.L1066:
	mov	r0, #2	@,
	add	r4, r4, #1	@ s32Times, s32Times,
	bl	msleep	@
	ldr	r7, [r5, r6, asl #2]	@ tmp188, s_pstVfmwChan
	mov	r2, r9	@, s32FrameSize
	movw	r0, #:lower16:.LC186	@,
	add	r7, sl, r7	@ MEM_RECORD, tmp223, tmp188
	movt	r0, #:upper16:.LC186	@,
	mov	r1, r8	@, tmp227
	str	r8, [sp, #0]	@ tmp227,
	mov	r3, r7	@, MEM_RECORD
	bl	MEM_AllocMemBlock	@
	ldr	r2, [fp, #-48]	@, %sfp
	cmp	r0, #0	@ s32Ret,
	cmpne	r2, r4	@,, s32Times
	bgt	.L1066	@,
	ldr	sl, [fp, #-64]	@ i, %sfp
	str	r4, [fp, #-72]	@ s32Times, %sfp
.L1058:
	cmp	r0, #0	@ s32Ret,
	bne	.L1060	@,
	ldr	lr, [fp, #-52]	@, %sfp
	ldr	r2, [r7, #12]	@, <variable>.Length
	add	r0, lr, #1	@,,
	str	r0, [fp, #-52]	@, %sfp
	ldr	r1, [r7, #4]	@, <variable>.VirAddr
	ldr	r0, [r7, #8]	@, <variable>.PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	ip, [fp, #-56]	@, %sfp
	ldr	r3, [r5, r6, asl #2]	@ tmp201, s_pstVfmwChan
	add	r2, ip, sl	@ tmp205,, i
	add	sl, sl, #1	@ i, i,
	cmp	sl, #64	@ i,
	add	r1, r3, r2, asl #2	@, tmp207, tmp201, tmp205,
	add	r4, r1, #248832	@ tmp208, tmp207,
	add	ip, r4, #488	@ tmp208, tmp208,
	mov	r4, #1	@,
	strb	r4, [ip, #0]	@, <variable>.u8BufferNodeState
	bne	.L1070	@,
.L1060:
	ldr	r2, [fp, #-60]	@, %sfp
	ldr	r3, [fp, #-52]	@, %sfp
	cmp	r2, r3	@,
	bgt	.L1071	@,
.L1062:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L1071:
	ldr	r4, [fp, #-60]	@, %sfp
	mov	r2, r6	@, ChanID
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC187	@,
	movt	r1, #:upper16:.LC187	@,
	stmia	sp, {r4, sl}	@ phole stm
	bl	dprint_vfmw	@
	mov	r0, r6	@, ChanID
	bl	VCTRL_RlsAllFrameNode	@
	cmp	r0, #0	@,
	mvneq	r0, #0	@ s32Ret,
	beq	.L1062	@
.L1064:
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC188	@,
	movt	r1, #:upper16:.LC188	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ s32Ret,
	b	.L1062	@
	.fnend
	.size	VCTRL_AllocMemMMZ, .-VCTRL_AllocMemMMZ
	.align	2
	.global	VCTRL_RequestChanMem
	.type	VCTRL_RequestChanMem, %function
VCTRL_RequestChanMem:
	.fnstart
.LFB1665:
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
	movw	r5, #:lower16:.LANCHOR0	@ tmp210,
	movt	r5, #:upper16:.LANCHOR0	@ tmp210,
	movw	r2, #:lower16:249272	@ tmp154,
	movt	r2, #:upper16:249272	@ tmp154,
	movw	ip, #:lower16:249280	@ tmp153,
	ldr	r3, [r5, r0, asl #2]	@ D.55748, s_pstVfmwChan
	movt	ip, #:upper16:249280	@ tmp153,
	mov	r6, r0	@ ChanID, ChanID
	ldr	r1, [r3, r2]	@ s32FrameSize, <variable>.s32CurFsSize
	ldr	r7, [r3, ip]	@ s32NeededFrmNum, <variable>.s32NeededFrameNum
	cmp	r1, #0	@ s32FrameSize,
	ldr	r2, [r3, #284]	@ s32PreAllocSize, <variable>.s32VdmChanMemSize
	ble	.L1082	@,
	ldr	r4, [r3, #280]	@ <variable>.s32VdmChanMemAddr, <variable>.s32VdmChanMemAddr
	cmp	r4, #0	@ <variable>.s32VdmChanMemAddr,
	cmpne	r2, #0	@, s32PreAllocSize,
	bgt	.L1083	@,
	movw	r4, #:lower16:249292	@ tmp197,
	movt	r4, #:upper16:249292	@ tmp197,
	ldr	r3, [r3, r4]	@ temp.3674, <variable>.s32NeedMMZ
	cmp	r3, #1	@ temp.3674,
	bne	.L1080	@,
	mov	r1, r7	@, s32NeededFrmNum
	bl	VCTRL_AllocMemMMZ	@
	ldr	r8, [r5, r6, asl #2]	@ temp.3675, s_pstVfmwChan
	mov	r4, r0	@ s32Ret,
	bl	OSAL_GetTimeInMs	@
	movw	ip, #:lower16:251540	@ tmp199,
	movt	ip, #:upper16:251540	@ tmp199,
	movw	r3, #:lower16:249288	@ tmp202,
	cmp	r4, #0	@ s32Ret,
	movt	r3, #:upper16:249288	@ tmp202,
	str	r0, [r8, ip]	@, <variable>.stDynamicFSTimestamp.u32MMZEndTime
	ldr	r1, [r5, r6, asl #2]	@ tmp201, s_pstVfmwChan
	str	r7, [r1, r3]	@ s32NeededFrmNum, <variable>.s32MMZFrmNum
	bne	.L1084	@,
.L1074:
	mov	r0, r4	@, s32Ret
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L1083:
	mov	r0, r2	@, s32PreAllocSize
	bl	__aeabi_idiv	@
	cmp	r7, r0	@ s32NeededFrmNum, tmp166
	mov	r8, r0	@ tmp166,
	bgt	.L1085	@,
.L1076:
	mov	r1, r7	@, s32NeededFrmNum
	mov	r0, r6	@, ChanID
	bl	VCTRL_AllocMemPre	@
	ldr	r8, [r5, r6, asl #2]	@ temp.3671, s_pstVfmwChan
	mov	r4, r0	@ s32Ret,
	bl	OSAL_GetTimeInMs	@
	movw	r2, #:lower16:251536	@ tmp190,
	movt	r2, #:upper16:251536	@ tmp190,
	movw	ip, #:lower16:249284	@ tmp193,
	cmp	r4, #0	@ s32Ret,
	movt	ip, #:upper16:249284	@ tmp193,
	str	r0, [r8, r2]	@, <variable>.stDynamicFSTimestamp.u32PreEndTime
	ldr	r0, [r5, r6, asl #2]	@ tmp192, s_pstVfmwChan
	str	r7, [r0, ip]	@ s32NeededFrmNum, <variable>.s32PreAllocFrmNum
	beq	.L1074	@,
	movw	r1, #:lower16:.LC192	@,
	ldr	r2, .L1087	@,
	movt	r1, #:upper16:.LC192	@,
	movw	r3, #10508	@,
	mov	r0, #31	@,
	bl	dprint_vfmw	@
	b	.L1074	@
.L1085:
	rsb	sl, r0, r7	@ s32MMZFrmNum, tmp166, s32NeededFrmNum
	cmp	sl, #0	@ s32MMZFrmNum,
	ble	.L1076	@,
	mov	r1, r0	@, tmp166
	mov	r0, r6	@, ChanID
	bl	VCTRL_AllocMemPre	@
	ldr	r7, [r5, r6, asl #2]	@ temp.3666, s_pstVfmwChan
	mov	r4, r0	@ s32Ret,
	bl	OSAL_GetTimeInMs	@
	movw	r1, #:lower16:251536	@ tmp168,
	movt	r1, #:upper16:251536	@ tmp168,
	movw	r3, #:lower16:249284	@ tmp171,
	cmp	r4, #0	@ s32Ret,
	movt	r3, #:upper16:249284	@ tmp171,
	str	r0, [r7, r1]	@, <variable>.stDynamicFSTimestamp.u32PreEndTime
	ldr	r0, [r5, r6, asl #2]	@ tmp170, s_pstVfmwChan
	str	r8, [r0, r3]	@ tmp166, <variable>.s32PreAllocFrmNum
	bne	.L1077	@,
	ldr	ip, [r5, r6, asl #2]	@ tmp173, s_pstVfmwChan
	movw	lr, #:lower16:249292	@ tmp174,
	movt	lr, #:upper16:249292	@ tmp174,
	ldr	r3, [ip, lr]	@ D.55769, <variable>.s32NeedMMZ
	cmp	r3, #1	@ D.55769,
	bne	.L1078	@,
	mov	r0, r6	@, ChanID
	mov	r1, sl	@, s32MMZFrmNum
	bl	VCTRL_AllocMemMMZ	@
	subs	r4, r0, #0	@ s32Ret,
	bne	.L1086	@,
	ldr	r7, [r5, r6, asl #2]	@ temp.3669, s_pstVfmwChan
	bl	OSAL_GetTimeInMs	@
	movw	r1, #:lower16:251540	@ tmp179,
	movt	r1, #:upper16:251540	@ tmp179,
	movw	r3, #:lower16:249288	@ tmp182,
	movt	r3, #:upper16:249288	@ tmp182,
	str	r0, [r7, r1]	@, <variable>.stDynamicFSTimestamp.u32MMZEndTime
	mov	r0, r4	@, s32Ret
	ldr	r2, [r5, r6, asl #2]	@ tmp181, s_pstVfmwChan
	str	sl, [r2, r3]	@ s32MMZFrmNum, <variable>.s32MMZFrmNum
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L1084:
	ldr	r2, .L1087	@,
	movw	r3, #10521	@,
	movw	r1, #:lower16:.LC190	@,
	mov	r0, #31	@,
	movt	r1, #:upper16:.LC190	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, s32Ret
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L1077:
	ldr	r2, .L1087	@,
	movw	r3, #10498	@,
	movw	r1, #:lower16:.LC192	@,
	mov	r0, #31	@,
	movt	r1, #:upper16:.LC192	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, s32Ret
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L1080:
	movw	r1, #:lower16:.LC193	@,
	ldr	r2, .L1087	@,
	movt	r1, #:upper16:.LC193	@,
	mov	r0, #31	@,
	mvn	r4, #0	@ s32Ret,
	bl	dprint_vfmw	@
	b	.L1074	@
.L1078:
	movw	r1, #:lower16:.LC191	@,
	ldr	r2, .L1087	@,
	movt	r1, #:upper16:.LC191	@,
	mov	r0, #31	@,
	mvn	r4, #0	@ s32Ret,
	bl	dprint_vfmw	@
	b	.L1074	@
.L1086:
	movw	r1, #:lower16:.LC190	@,
	ldr	r2, .L1087	@,
	movt	r1, #:upper16:.LC190	@,
	movw	r3, #10484	@,
	mov	r0, #31	@,
	mvn	r4, #0	@ s32Ret,
	bl	dprint_vfmw	@
	b	.L1074	@
.L1082:
	mov	r2, r1	@, s32FrameSize
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC189	@,
	movt	r1, #:upper16:.LC189	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ s32Ret,
	b	.L1074	@
.L1088:
	.align	2
.L1087:
	.word	.LANCHOR1+208
	.fnend
	.size	VCTRL_RequestChanMem, .-VCTRL_RequestChanMem
	.align	2
	.global	VCTRL_EnableAllInt
	.type	VCTRL_EnableAllInt, %function
VCTRL_EnableAllInt:
	.fnstart
.LFB1624:
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
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp134,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp134,
	ldr	r3, [r3, #76]	@ D.53919, g_vdm_hal_fun_ptr.pfun_VDMHAL_EnableInt
	cmp	r3, #0	@ D.53919,
	beq	.L1093	@,
	mov	r0, #0	@,
	blx	r3	@ D.53919
	mov	r0, #0	@,
	bl	SCDDRV_EnableInt	@
	ldmfd	sp, {fp, sp, pc}	@
.L1093:
	mov	r0, r3	@, D.53919
	movw	r2, #7742	@,
	movw	r1, #:lower16:.LC0	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@,
	bl	SCDDRV_EnableInt	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_EnableAllInt, .-VCTRL_EnableAllInt
	.align	2
	.global	VCTRL_MaskAllInt
	.type	VCTRL_MaskAllInt, %function
VCTRL_MaskAllInt:
	.fnstart
.LFB1623:
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
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp134,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp134,
	ldr	r3, [r3, #72]	@ D.53904, g_vdm_hal_fun_ptr.pfun_VDMHAL_MaskInt
	cmp	r3, #0	@ D.53904,
	beq	.L1098	@,
	mov	r0, #0	@,
	blx	r3	@ D.53904
	mov	r0, #0	@,
	bl	SCDDRV_MaskInt	@
	ldmfd	sp, {fp, sp, pc}	@
.L1098:
	mov	r0, r3	@, D.53904
	movw	r2, #7707	@,
	movw	r1, #:lower16:.LC0	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@,
	bl	SCDDRV_MaskInt	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_MaskAllInt, .-VCTRL_MaskAllInt
	.align	2
	.global	VCTRL_GetChanImgNum
	.type	VCTRL_GetChanImgNum, %function
VCTRL_GetChanImgNum:
	.fnstart
.LFB1616:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp140,
	movt	r4, #:upper16:.LANCHOR0	@ tmp140,
	mov	r5, r0	@ ChanID, ChanID
	mov	r6, r1	@ pRefImgNum, pRefImgNum
	mov	r7, r2	@ pReadImgNum, pReadImgNum
	ldr	ip, [r4, r0, asl #2]	@ tmp141, s_pstVfmwChan
	mov	r8, r3	@ pNewImgNum, pNewImgNum
	cmp	ip, #0	@ tmp141,
	beq	.L1107	@,
	bl	VCTRL_GetChanVoQue	@
	subs	r3, r0, #0	@ pstVoQue,
	streq	r3, [r8, #0]	@ pstVoQue,* pNewImgNum
	streq	r3, [r7, #0]	@ pstVoQue,* pReadImgNum
	streq	r3, [r6, #0]	@ pstVoQue,* pRefImgNum
	ldmeqfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	mov	r2, r8	@, pNewImgNum
	mov	r1, r7	@, pReadImgNum
	bl	GetQueueImgNum	@
	ldr	r2, [r4, r5, asl #2]	@ temp.3747, s_pstVfmwChan
	ldr	r3, [r2, #552]	@ D.53735, <variable>.eVidStd
	cmp	r3, #0	@ D.53735,
	beq	.L1108	@,
	cmp	r3, #16	@ D.53735,
	beq	.L1109	@,
	cmp	r3, #15	@ D.53735,
	movweq	r3, #:lower16:11374616	@ tmp149,
	movteq	r3, #:upper16:11374616	@ tmp149,
	movne	r3, #2	@ tmp151,
	ldreq	r3, [r2, r3]	@ <variable>.stSynCtx.unSyntax.stMvcCtx.DPB.size,
	str	r3, [r6, #0]	@ tmp151,* pRefImgNum
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L1108:
	movw	r1, #:lower16:278232	@ tmp145,
	movt	r1, #:upper16:278232	@ tmp145,
	ldr	r0, [r2, r1]	@ <variable>.stSynCtx.unSyntax.stH264Ctx.DPB.size,
	str	r0, [r6, #0]	@ <variable>.stSynCtx.unSyntax.stH264Ctx.DPB.size,* pRefImgNum
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L1107:
	mov	r0, ip	@, tmp141
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #7434	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r3, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L1109:
	movw	lr, #:lower16:2211968	@ tmp147,
	movt	lr, #:upper16:2211968	@ tmp147,
	ldr	ip, [r2, lr]	@ <variable>.stSynCtx.unSyntax.stHevcCtx.DPB.size,
	str	ip, [r6, #0]	@ <variable>.stSynCtx.unSyntax.stHevcCtx.DPB.size,* pRefImgNum
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	VCTRL_GetChanImgNum, .-VCTRL_GetChanImgNum
	.align	2
	.global	VCTRL_GetChanState
	.type	VCTRL_GetChanState, %function
VCTRL_GetChanState:
	.fnstart
.LFB1559:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #68
	sub	sp, sp, #68	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r0, #15	@ ChanID,
	mov	r5, r0	@ ChanID, ChanID
	mov	r4, r1	@ pstChanState, pstChanState
	bhi	.L1130	@,
	cmp	r1, #0	@ pstChanState,
	beq	.L1117	@,
	movw	r6, #:lower16:.LANCHOR0	@ tmp205,
	movt	r6, #:upper16:.LANCHOR0	@ tmp205,
	mov	r0, r1	@, pstChanState
	mov	r1, #108	@,
	mov	r7, #0	@ tmp144,
	str	r7, [fp, #-40]	@ tmp144, RefNum
	str	r7, [fp, #-44]	@ tmp144, ReadNum
	str	r7, [fp, #-48]	@ tmp144, NewNum
	bl	__memzero	@
	ldr	r1, [r6, r5, asl #2]	@ D.50395, s_pstVfmwChan
	cmp	r1, r7	@ D.50395,
	beq	.L1117	@,
	add	r1, r1, #1120	@, D.50395,
	mov	r0, r4	@, pstChanState
	add	r1, r1, #4	@,,
	mov	r2, #108	@,
	bl	memcpy	@
	ldr	r0, [r6, r5, asl #2]	@ temp.3782, s_pstVfmwChan
	movw	r3, #:lower16:206418	@ tmp155,
	movt	r3, #:upper16:206418	@ tmp155,
	ldrsb	lr, [r0, r3]	@ temp.3781, <variable>.FspInst.s32DecFsNum
	cmp	lr, r7	@ temp.3781,
	ble	.L1114	@,
	movw	r1, #:lower16:241382	@ tmp163,
	movt	r1, #:upper16:241382	@ tmp163,
	add	r3, r0, r1	@ tmp163, temp.3782, tmp163
	rsb	lr, lr, lr, asl #4	@, tmp160, temp.3781, temp.3781,
	ldrsb	r2, [r3, #0]	@ <variable>.DispState, <variable>.DispState
	mov	lr, lr, asl #2	@ D.59224, tmp160,
	sub	ip, lr, #60	@ tmp209, D.59224,
	cmp	r2, #3	@ <variable>.DispState,
	ubfx	r2, ip, #2, #1	@ tmp213, tmp209,,
	beq	.L1131	@,
.L1119:
	mov	r3, #60	@ ivtmp.3777,
	cmp	r3, lr	@ ivtmp.3777, D.59224
	beq	.L1114	@,
	cmp	r2, #0	@ tmp213,
	beq	.L1116	@,
	movw	ip, #:lower16:241442	@ tmp228,
	movt	ip, #:upper16:241442	@ tmp228,
	add	r1, r0, ip	@ tmp228, temp.3782, tmp228
	add	r3, r3, #60	@ ivtmp.3777, ivtmp.3777,
	ldrsb	r2, [r1, #0]	@ <variable>.DispState, <variable>.DispState
	cmp	r2, #3	@ <variable>.DispState,
	addeq	r7, r7, #1	@ s32DecodedFrameNum, s32DecodedFrameNum,
	cmp	r3, lr	@ ivtmp.3777, D.59224
	bne	.L1116	@,
	b	.L1114	@
.L1124:
	add	r3, r1, #60	@ ivtmp.3777, tmp214,
	cmp	r3, lr	@ ivtmp.3777, D.59224
	beq	.L1114	@,
.L1116:
	movw	r2, #:lower16:241382	@ tmp219,
	movt	r2, #:upper16:241382	@ tmp219,
	add	r1, r3, #60	@ tmp214, ivtmp.3777,
	add	r8, r0, r3	@ tmp217, temp.3782, ivtmp.3777
	add	ip, r0, r1	@ tmp222, temp.3782, tmp214
	mov	r3, r2	@ tmp224, tmp219
	add	r2, r8, r2	@ tmp219, tmp217, tmp219
	add	r3, ip, r3	@ tmp224, tmp222, tmp224
	ldrsb	r2, [r2, #0]	@ <variable>.DispState, <variable>.DispState
	ldrsb	ip, [r3, #0]	@ <variable>.DispState, <variable>.DispState
	cmp	r2, #3	@ <variable>.DispState,
	addeq	r7, r7, #1	@ s32DecodedFrameNum, s32DecodedFrameNum,
	cmp	ip, #3	@ <variable>.DispState,
	bne	.L1124	@,
	add	r3, r1, #60	@ ivtmp.3777, tmp214,
	add	r7, r7, #1	@ s32DecodedFrameNum, s32DecodedFrameNum,
	cmp	r3, lr	@ ivtmp.3777, D.59224
	bne	.L1116	@,
.L1114:
	str	r7, [r4, #92]	@ prephitmp.3762, <variable>.wait_disp_frame_num
	movw	ip, #:lower16:206418	@ tmp168,
	ldr	lr, [r6, r5, asl #2]	@ tmp167, s_pstVfmwChan
	movt	ip, #:upper16:206418	@ tmp168,
	sub	r2, fp, #44	@,,
	sub	r3, fp, #48	@,,
	mov	r0, r5	@, ChanID
	sub	r1, fp, #40	@,,
	ldrsb	ip, [lr, ip]	@ <variable>.FspInst.s32DecFsNum, <variable>.FspInst.s32DecFsNum
	str	ip, [r4, #100]	@ <variable>.FspInst.s32DecFsNum, <variable>.total_disp_frame_num
	bl	VCTRL_GetChanImgNum	@
	mov	r1, #300	@ tmp179,
	mla	r3, r1, r5, r6	@ tmp180, tmp179, ChanID, tmp205
	ldr	ip, [fp, #-48]	@ NewNum, NewNum
	ldr	r2, [fp, #-44]	@ ReadNum, ReadNum
	sub	r1, fp, #96	@,,
	mov	r0, r5	@, ChanID
	add	r2, ip, r2	@ tmp175, NewNum, ReadNum
	str	r2, [r4, #56]	@ tmp175, <variable>.decoded_1d_frame_num
	ldr	ip, [r3, #1480]	@ <variable>.u32IsFieldFlag, <variable>.u32IsFieldFlag
	str	ip, [r4, #104]	@ <variable>.u32IsFieldFlag, <variable>.is_field_flg
	ldr	r2, [r3, #1468]	@ <variable>.u32FrFrameRate, <variable>.u32FrFrameRate
	str	r2, [r4, #24]	@ <variable>.u32FrFrameRate, <variable>.frame_rate
	bl	SM_GetInfo	@
	ldr	r3, [fp, #-88]	@ SmInstInfo.SegNum, SmInstInfo.SegNum
	ldr	ip, [fp, #-80]	@ SmInstInfo.TotalSegSize, SmInstInfo.TotalSegSize
	sub	r1, fp, #72	@,,
	mov	r0, r5	@, ChanID
	str	r3, [r4, #64]	@ SmInstInfo.SegNum, <variable>.buffered_stream_num
	str	ip, [r4, #60]	@ SmInstInfo.TotalSegSize, <variable>.buffered_stream_size
	bl	SM_GetInfo	@
	ldr	r0, [fp, #-52]	@ ScdInstInfo.numReadSegFail, ScdInstInfo.numReadSegFail
	movw	r3, #:lower16:267464	@ tmp198,
	movt	r3, #:upper16:267464	@ tmp198,
	cmp	r0, #10	@ ScdInstInfo.numReadSegFail,
	movle	r2, #0	@, tmp195
	movgt	r2, #1	@, tmp195
	str	r2, [r4, #88]	@ tmp195, <variable>.stream_not_enough
	ldr	ip, [r6, r5, asl #2]	@ tmp197, s_pstVfmwChan
	ldrb	r1, [ip, r3]	@ zero_extendqisi2	@ tmp200,
	and	r0, r1, #1	@ tmp202, tmp200,
	str	r0, [r4, #96]	@ tmp202, <variable>.mpeg4_shorthead
.L1117:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L1130:
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #1199	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC194	@,
	mov	r0, #0	@,
	movt	r3, #:upper16:.LC194	@,
	bl	dprint_vfmw	@
	b	.L1117	@
.L1131:
	mov	r7, #1	@ s32DecodedFrameNum,
	b	.L1119	@
	.fnend
	.size	VCTRL_GetChanState, .-VCTRL_GetChanState
	.align	2
	.global	CloseDrivers
	.type	CloseDrivers, %function
CloseDrivers:
	.fnstart
.LFB1609:
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
	ldr	r5, [r0, #12]	@ Length, <variable>.Length
	mov	r4, r0	@ pstDrvMem, pstDrvMem
	ldr	r7, [r0, #8]	@ PhyAddr, <variable>.PhyAddr
	cmp	r5, #0	@ Length,
	ldr	r6, [r0, #4]	@ VirAddr, <variable>.VirAddr
	beq	.L1133	@,
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp157,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp157,
	ldr	r3, [r3, #44]	@ D.53306, g_vdm_hal_fun_ptr.pfun_VDMHAL_CloseHAL
	cmp	r3, #0	@ D.53306,
	beq	.L1134	@,
	mov	r0, #0	@,
	blx	r3	@ D.53306
.L1135:
	ldr	r1, [r4, #4]	@, <variable>.VirAddr
	ldr	r0, [r4, #8]	@, <variable>.PhyAddr
	bl	MEM_ReleaseMemBlock	@
	mov	r0, r4	@, pstDrvMem
	mov	r1, #16	@,
	bl	__memzero	@
.L1133:
	mov	r0, r7	@, PhyAddr
	mov	r1, r6	@, VirAddr
	mov	r2, r5	@, Length
	bl	MEM_DelMemRecord	@
	ldr	r6, [r4, #28]	@ Length.3810, <variable>.Length
	ldr	r5, [r4, #24]	@ PhyAddr.3808, <variable>.PhyAddr
	cmp	r6, #0	@ Length.3810,
	ldr	r7, [r4, #20]	@ VirAddr.3809, <variable>.VirAddr
	bne	.L1145	@,
.L1136:
	mov	r1, r7	@, VirAddr.3809
	mov	r2, r6	@, Length.3810
	mov	r0, r5	@, PhyAddr.3808
	bl	MEM_DelMemRecord	@
	bl	SM_InstInit	@
	ldr	r5, [r4, #60]	@ Length.3817, <variable>.Length
	ldr	r7, [r4, #56]	@ PhyAddr.3815, <variable>.PhyAddr
	cmp	r5, #0	@ Length.3817,
	ldr	r6, [r4, #52]	@ VirAddr.3816, <variable>.VirAddr
	bne	.L1146	@,
.L1137:
	mov	r0, r7	@, PhyAddr.3815
	mov	r1, r6	@, VirAddr.3816
	mov	r2, r5	@, Length.3817
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #108]	@ Length.3822, <variable>.stBpdReg.Length
	ldr	r7, [r4, #104]	@ PhyAddr.3820, <variable>.stBpdReg.PhyAddr
	cmp	r5, #0	@ Length.3822,
	ldr	r6, [r4, #100]	@ VirAddr.3821, <variable>.stBpdReg.VirAddr
	bne	.L1147	@,
.L1138:
	mov	r0, r7	@, PhyAddr.3820
	mov	r1, r6	@, VirAddr.3821
	mov	r2, r5	@, Length.3822
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #92]	@ Length.3827, <variable>.Length
	ldr	r7, [r4, #88]	@ PhyAddr.3825, <variable>.PhyAddr
	cmp	r5, #0	@ Length.3827,
	ldr	r6, [r4, #84]	@ VirAddr.3826, <variable>.VirAddr
	bne	.L1148	@,
.L1139:
	mov	r0, r7	@, PhyAddr.3825
	mov	r1, r6	@, VirAddr.3826
	mov	r2, r5	@, Length.3827
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #76]	@ Length.3832, <variable>.stFodReg.Length
	ldr	r7, [r4, #72]	@ PhyAddr.3830, <variable>.stFodReg.PhyAddr
	cmp	r5, #0	@ Length.3832,
	ldr	r6, [r4, #68]	@ VirAddr.3831, <variable>.stFodReg.VirAddr
	bne	.L1149	@,
.L1140:
	mov	r0, r7	@, PhyAddr.3830
	mov	r1, r6	@, VirAddr.3831
	mov	r2, r5	@, Length.3832
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #124]	@ Length.3837, <variable>.stSystemReg.Length
	ldr	r7, [r4, #120]	@ PhyAddr.3835, <variable>.stSystemReg.PhyAddr
	cmp	r5, #0	@ Length.3837,
	ldr	r6, [r4, #116]	@ VirAddr.3836, <variable>.stSystemReg.VirAddr
	bne	.L1150	@,
.L1141:
	movw	r4, #:lower16:.LANCHOR0	@ tmp178,
	movt	r4, #:upper16:.LANCHOR0	@ tmp178,
	mov	r0, r7	@, PhyAddr.3835
	mov	r1, r6	@, VirAddr.3836
	mov	r2, r5	@, Length.3837
	bl	MEM_DelMemRecord	@
	ldr	r0, [r4, #296]	@ s_VfmwCTrl.stIrqRecord.VdhIrq, s_VfmwCTrl.stIrqRecord.VdhIrq
	cmp	r0, #1	@ s_VfmwCTrl.stIrqRecord.VdhIrq,
	beq	.L1151	@,
.L1142:
	ldr	r2, [r4, #300]	@ s_VfmwCTrl.stIrqRecord.ScdIrq, s_VfmwCTrl.stIrqRecord.ScdIrq
	movw	r4, #:lower16:.LANCHOR0	@ tmp173,
	movt	r4, #:upper16:.LANCHOR0	@ tmp173,
	cmp	r2, #1	@ s_VfmwCTrl.stIrqRecord.ScdIrq,
	beq	.L1152	@,
	mov	r0, #0	@,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L1145:
	mov	r0, #0	@,
	bl	SM_CloseSCDDrv	@
	ldr	r0, [r4, #24]	@, <variable>.PhyAddr
	ldr	r1, [r4, #20]	@, <variable>.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, r4, #16	@, pstDrvMem,
	mov	r1, #16	@,
	bl	__memzero	@
	b	.L1136	@
.L1147:
	mov	r0, r7	@, PhyAddr.3820
	mov	r1, r6	@, VirAddr.3821
	bl	MEM_UnmapRegisterAddr	@
	add	r0, r4, #96	@, pstDrvMem,
	mov	r1, #16	@,
	bl	__memzero	@
	b	.L1138	@
.L1146:
	mov	r0, r7	@, PhyAddr.3815
	mov	r1, r6	@, VirAddr.3816
	bl	MEM_UnmapRegisterAddr	@
	add	r0, r4, #48	@, pstDrvMem,
	mov	r1, #16	@,
	bl	__memzero	@
	b	.L1137	@
.L1150:
	mov	r0, r7	@, PhyAddr.3835
	mov	r1, r6	@, VirAddr.3836
	bl	MEM_UnmapRegisterAddr	@
	add	r0, r4, #112	@, pstDrvMem,
	mov	r1, #16	@,
	bl	__memzero	@
	b	.L1141	@
.L1149:
	mov	r0, r7	@, PhyAddr.3830
	mov	r1, r6	@, VirAddr.3831
	bl	MEM_UnmapRegisterAddr	@
	add	r0, r4, #64	@, pstDrvMem,
	mov	r1, #16	@,
	bl	__memzero	@
	b	.L1140	@
.L1148:
	mov	r0, r7	@, PhyAddr.3825
	mov	r1, r6	@, VirAddr.3826
	bl	MEM_UnmapRegisterAddr	@
	add	r0, r4, #80	@, pstDrvMem,
	mov	r1, #16	@,
	bl	__memzero	@
	b	.L1139	@
.L1134:
	mov	r0, r3	@, D.53306
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #6652	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	b	.L1135	@
.L1152:
	mov	r0, #136	@,
	mov	r1, #0	@,
	bl	free_irq	@
	mov	ip, #0	@ tmp176,
	mov	r0, #0	@,
	str	ip, [r4, #300]	@ tmp176, s_VfmwCTrl.stIrqRecord.ScdIrq
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L1151:
	mov	r1, #0	@,
	mov	r0, #127	@,
	bl	free_irq	@
	mov	r1, #0	@ tmp172,
	str	r1, [r4, #296]	@ tmp172, s_VfmwCTrl.stIrqRecord.VdhIrq
	b	.L1142	@
	.fnend
	.size	CloseDrivers, .-CloseDrivers
	.align	2
	.global	OpenDrivers
	.type	OpenDrivers, %function
OpenDrivers:
	.fnstart
.LFB1608:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #44
	sub	sp, sp, #44	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	add	r5, r0, #48	@ pstMem, pstDrvMem,
	mov	r4, r0	@ pstDrvMem, pstDrvMem
	mov	r1, #4096	@,
	movw	r0, #:lower16:-121438208	@,
	mov	r2, r5	@, pstMem
	movt	r0, #:upper16:-121438208	@,
	bl	MEM_MapRegisterAddr	@
	cmp	r0, #0	@,
	bne	.L1154	@,
	add	r6, r4, #96	@ pstMem.3863, pstDrvMem,
	ldr	r1, [r4, #52]	@, <variable>.VirAddr
	ldr	r2, [r4, #60]	@, <variable>.Length
	ldr	r0, [r4, #56]	@, <variable>.PhyAddr
	bl	MEM_AddMemRecord	@
	movw	r0, #:lower16:-121241600	@,
	mov	r1, #4096	@,
	movt	r0, #:upper16:-121241600	@,
	mov	r2, r6	@, pstMem.3863
	bl	MEM_MapRegisterAddr	@
	cmp	r0, #0	@,
	bne	.L1174	@,
	movw	r5, #:lower16:g_vdm_hal_fun_ptr	@ tmp161,
	movt	r5, #:upper16:g_vdm_hal_fun_ptr	@ tmp161,
	ldr	r3, [r5, #24]	@ D.53140, g_vdm_hal_fun_ptr.pfun_BPDDRV_OpenHardware
	cmp	r3, #0	@ D.53140,
	beq	.L1174	@,
	blx	r3	@ D.53140
	cmp	r0, #0	@,
	bne	.L1174	@,
	add	r7, r4, #80	@ pstMem.3867, pstDrvMem,
	ldr	r1, [r4, #100]	@, <variable>.stBpdReg.VirAddr
	ldr	r2, [r4, #108]	@, <variable>.stBpdReg.Length
	ldr	r0, [r4, #104]	@, <variable>.stBpdReg.PhyAddr
	bl	MEM_AddMemRecord	@
	movw	r0, #:lower16:-121389056	@,
	mov	r1, #4096	@,
	movt	r0, #:upper16:-121389056	@,
	mov	r2, r7	@, pstMem.3867
	bl	MEM_MapRegisterAddr	@
	subs	r6, r0, #0	@ D.53175,
	bne	.L1178	@,
	sub	r8, fp, #68	@ tmp201,,
	ldr	r1, [r4, #84]	@, <variable>.VirAddr
	ldr	r2, [r4, #92]	@, <variable>.Length
	ldr	r0, [r4, #88]	@, <variable>.PhyAddr
	bl	MEM_AddMemRecord	@
	mov	r3, r6	@, D.53175
	mov	r0, r8	@, tmp201
	mov	r1, #20	@,
	movw	r2, #:lower16:.LC195	@,
	movt	r2, #:upper16:.LC195	@,
	bl	snprintf	@
	ldr	r3, [r5, #36]	@ D.53186, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetHalMemSize
	cmp	r3, #0	@ D.53186,
	beq	.L1178	@,
	blx	r3	@ D.53186
	subs	r2, r0, #0	@ Size,
	ble	.L1178	@,
	mov	r1, r6	@, D.53175
	mov	r0, r8	@, tmp201
	mov	r3, r4	@, pstDrvMem
	str	r6, [sp, #0]	@ D.53175,
	bl	MEM_AllocMemBlock	@
	subs	r7, r0, #0	@ D.53199,
	bne	.L1165	@,
	sub	r6, fp, #48	@ tmp176,,
	ldr	r2, [r4, #12]	@, <variable>.Length
	ldr	r1, [r4, #4]	@, <variable>.VirAddr
	ldr	r0, [r4, #8]	@, <variable>.PhyAddr
	bl	MEM_AddMemRecord	@
	mov	r1, #12	@,
	mov	r0, r6	@, tmp176
	bl	__memzero	@
	ldr	r3, [r5, #40]	@ D.53209, g_vdm_hal_fun_ptr.pfun_VDMHAL_OpenHAL
	ldr	r1, [r4, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	ldr	r2, [r4, #12]	@ <variable>.Length, <variable>.Length
	cmp	r3, #0	@ D.53209,
	str	r7, [fp, #-40]	@ D.53199, VDMOpenParam.VdhId
	str	r1, [fp, #-48]	@ <variable>.PhyAddr, VDMOpenParam.MemBaseAddr
	str	r2, [fp, #-44]	@ <variable>.Length, VDMOpenParam.Size
	beq	.L1165	@,
	mov	r0, r6	@, tmp176
	blx	r3	@ D.53209
	cmp	r0, #0	@,
	bne	.L1165	@,
	mov	r0, #0	@,
	add	r7, r4, #16	@ pstMem.3877, pstDrvMem,
	bl	VDMDRV_Init	@
	mov	r1, #20	@,
	mov	r3, #0	@,
	mov	r0, r8	@, tmp201
	movw	r2, #:lower16:.LC196	@,
	movt	r2, #:upper16:.LC196	@,
	bl	snprintf	@
	mov	ip, #0	@ tmp184,
	mov	r0, r8	@, tmp201
	mov	r1, ip	@, tmp184
	mov	r2, #716800	@,
	mov	r3, r7	@, pstMem.3877
	str	ip, [sp, #0]	@ tmp184,
	bl	MEM_AllocMemBlock	@
	subs	r5, r0, #0	@ D.53224,
	bne	.L1178	@,
	ldr	r1, [r4, #20]	@, <variable>.VirAddr
	ldr	r2, [r4, #28]	@, <variable>.Length
	ldr	r0, [r4, #24]	@, <variable>.PhyAddr
	bl	MEM_AddMemRecord	@
	mov	r2, r5	@, D.53224
	ldr	r0, [r4, #24]	@, <variable>.PhyAddr
	ldr	r1, [r4, #28]	@, <variable>.Length
	bl	SM_OpenSCDDrv	@
	subs	r5, r0, #0	@ D.53227,
	bne	.L1178	@,
	bl	SM_InstInit	@
	mov	r2, r5	@, D.53227
	mov	r0, #127	@,
	movw	r1, #:lower16:VCTRL_Isr_0	@,
	mov	r3, #32	@,
	movt	r1, #:upper16:VCTRL_Isr_0	@,
	str	r5, [sp, #4]	@ D.53227,
	movw	ip, #:lower16:.LC197	@ tmp191,
	movt	ip, #:upper16:.LC197	@ tmp191,
	str	ip, [sp, #0]	@ tmp191,
	bl	request_threaded_irq	@
	subs	ip, r0, #0	@ D.56236,
	bne	.L1178	@,
	movw	r5, #:lower16:.LANCHOR0	@ tmp193,
	movt	r5, #:upper16:.LANCHOR0	@ tmp193,
	str	ip, [sp, #4]	@ D.56236,
	mov	r6, #1	@ tmp194,
	mov	r2, ip	@, D.56236
	str	r6, [r5, #296]	@ tmp194, s_VfmwCTrl.stIrqRecord.VdhIrq
	mov	r0, #136	@,
	movw	r1, #:lower16:VCTRL_Scd_Isr	@,
	mov	r3, #32	@,
	movt	r1, #:upper16:VCTRL_Scd_Isr	@,
	movw	lr, #:lower16:.LC198	@ tmp196,
	movt	lr, #:upper16:.LC198	@ tmp196,
	str	lr, [sp, #0]	@ tmp196,
	bl	request_threaded_irq	@
	cmp	r0, #0	@ D.56243
	streq	r6, [r5, #300]	@ tmp194, s_VfmwCTrl.stIrqRecord.ScdIrq
	bne	.L1178	@,
.L1157:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L1174:
	mov	r0, r6	@, pstMem.3863
.L1179:
	mov	r1, #16	@,
	bl	__memzero	@
	mov	r0, r4	@, pstDrvMem
	bl	CloseDrivers	@
	mvn	r0, #0	@ D.53122,
	b	.L1157	@
.L1178:
	mov	r0, r7	@, pstMem.3877
	b	.L1179	@
.L1165:
	mov	r1, #16	@,
	mov	r0, r4	@, pstDrvMem
	bl	__memzero	@
	mov	r0, r4	@, pstDrvMem
	bl	CloseDrivers	@
	mvn	r0, #0	@ D.53122,
	b	.L1157	@
.L1154:
	mov	r0, r5	@, pstMem
	b	.L1179	@
	.fnend
	.size	OpenDrivers, .-OpenDrivers
	.align	2
	.global	VCTRL_GetUsrdecFrame
	.type	VCTRL_GetUsrdecFrame, %function
VCTRL_GetUsrdecFrame:
	.fnstart
.LFB1602:
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
	movw	r5, #:lower16:.LANCHOR0	@ tmp144,
	movt	r5, #:upper16:.LANCHOR0	@ tmp144,
	mov	r6, r0	@ ChanID, ChanID
	mov	r7, r1	@ pMem, pMem
	ldr	r3, [r5, r0, asl #2]	@ D.52663, s_pstVfmwChan
	cmp	r3, #0	@ D.52663,
	beq	.L1190	@,
	ldr	r8, [r3, #552]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r8, #18	@ <variable>.eVidStd,
	bne	.L1191	@,
	ldr	r3, [r3, #488]	@ <variable>.s32UsrdecFrameNum, <variable>.s32UsrdecFrameNum
	cmp	r3, #2	@ <variable>.s32UsrdecFrameNum,
	ble	.L1192	@,
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@ D.52676,
	bne	.L1193	@,
	mov	r1, r0	@, D.52676
	mov	r0, r6	@, ChanID
	bl	FSP_NewLogicFs	@
	subs	sl, r0, #0	@ id,
	blt	.L1194	@,
	mov	r1, sl	@, id
	mov	r0, r6	@, ChanID
	bl	FSP_GetLogicFs	@
	mov	r2, sl	@, id
	movw	r1, #:lower16:.LC203	@,
	movt	r1, #:upper16:.LC203	@,
	mov	r4, r0	@ pLf,
	mov	r0, r8	@, <variable>.eVidStd
	bl	dprint_vfmw	@
	cmp	r4, #0	@ pLf,
	beq	.L1195	@,
	ldr	r2, [r4, #520]	@ D.52691, <variable>.pstDecodeFs
	cmp	r2, #0	@ D.52691,
	beq	.L1188	@,
	ldr	r3, [r4, #524]	@ D.52693, <variable>.pstDispOutFs
	cmp	r3, #0	@ D.52693,
	beq	.L1188	@,
	ldr	ip, [r4, #528]	@ D.52695, <variable>.pstTfOutFs
	cmp	ip, #0	@ D.52695,
	beq	.L1188	@,
	ldr	lr, [ip, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	mov	r0, r8	@, <variable>.eVidStd
	ldr	r2, [r2, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r1, #:lower16:.LC205	@,
	ldr	r3, [r3, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movt	r1, #:upper16:.LC205	@,
	str	lr, [sp, #0]	@ <variable>.PhyAddr,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #520]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	mov	r0, #0	@ D.52667,
	ldr	ip, [r3, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	ip, [r7, #0]	@ <variable>.PhyAddr, <variable>.PhyAddr
	ldr	r2, [r5, r6, asl #2]	@ tmp162, s_pstVfmwChan
	ldr	r1, [r2, #484]	@ <variable>.s32UsrdecFrameSize, <variable>.s32UsrdecFrameSize
	str	r1, [r7, #8]	@ <variable>.s32UsrdecFrameSize, <variable>.Length
.L1182:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L1193:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC201	@,
	movt	r1, #:upper16:.LC201	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.52667,
	b	.L1182	@
.L1191:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC199	@,
	movt	r1, #:upper16:.LC199	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.52667,
	b	.L1182	@
.L1192:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC200	@,
	movt	r1, #:upper16:.LC200	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.52667,
	b	.L1182	@
.L1188:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC206	@,
	movt	r1, #:upper16:.LC206	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.52667,
	b	.L1182	@
.L1194:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC202	@,
	movt	r1, #:upper16:.LC202	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.52667,
	b	.L1182	@
.L1190:
	mov	r0, r3	@, D.52663
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #5381	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r3, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.52667,
	b	.L1182	@
.L1195:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC204	@,
	movw	r2, #5412	@,
	movt	r1, #:upper16:.LC204	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.52667,
	b	.L1182	@
	.fnend
	.size	VCTRL_GetUsrdecFrame, .-VCTRL_GetUsrdecFrame
	.align	2
	.global	VDH_PutUsrdecFrame
	.type	VDH_PutUsrdecFrame, %function
VDH_PutUsrdecFrame:
	.fnstart
.LFB1601:
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
	mov	r8, r1	@ pstUsrdecFrame, pstUsrdecFrame
	ldr	r1, [r1, #28]	@, <variable>.s32LumaPhyAddr
	mov	r7, r0	@ ChanID, ChanID
	bl	FSP_GetLogicIdByPhyAddr	@
	cmn	r0, #1	@ PicBufID,
	mov	r5, r0	@ PicBufID,
	beq	.L1205	@,
	ldr	r3, [r8, #4]	@ <variable>.s32IsFrameValid, <variable>.s32IsFrameValid
	cmp	r3, #1	@ <variable>.s32IsFrameValid,
	beq	.L1199	@,
	mov	r0, r7	@, ChanID
	mov	r1, r5	@, PicBufID
	mov	r2, #0	@,
	bl	FSP_ClearLogicFs	@
	mov	r0, #0	@ D.52594,
.L1198:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L1199:
	ldr	r0, [r8, #36]	@, <variable>.s32CbPhyAddr
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@,
	beq	.L1206	@,
.L1200:
	mov	r0, r7	@, ChanID
	mov	r1, r5	@, PicBufID
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pLogic,
	beq	.L1207	@,
	str	r5, [r4, #196]	@ PicBufID, <variable>.image_id
	mov	r6, #0	@ tmp166,
	ldrd	r0, [r8, #8]	@ <variable>.Pts, pstUsrdecFrame,
	mov	sl, #1	@ tmp165,
	strd	r0, [r4]	@ <variable>.Pts, <variable>.SrcPts
	ldrd	r2, [r8, #8]	@ <variable>.Pts, pstUsrdecFrame,
	strd	r2, [r4, #8]	@ <variable>.Pts, pLogic,
	ldrd	r0, [r8, #8]	@ <variable>.Pts, pstUsrdecFrame,
	strd	r0, [r4, #16]	@ <variable>.Pts, pLogic,
	ldrd	r2, [r8, #8]	@ <variable>.Pts, pstUsrdecFrame,
	str	sl, [r4, #68]	@ tmp165, <variable>.DispEnableFlag
	str	r6, [r4, #72]	@ tmp166, <variable>.DispFrameDistance
	strd	r2, [r4, #24]	@ <variable>.Pts, pLogic,
	str	r6, [r4, #76]	@ tmp166, <variable>.DistanceBeforeFirstFrame
	str	r6, [r4, #80]	@ tmp166, <variable>.GopNum
	ldr	r1, [r8, #28]	@ temp.3944, <variable>.s32LumaPhyAddr
	str	r1, [r4, #88]	@ temp.3944, <variable>.top_luma_phy_addr
	mov	r0, r1	@, temp.3944
	str	r1, [r4, #120]	@ temp.3944, <variable>.luma_2d_phy_addr
	str	r1, [r4, #104]	@ temp.3944, <variable>.luma_phy_addr
	ldr	lr, [r8, #36]	@ temp.3945, <variable>.s32CbPhyAddr
	str	lr, [r4, #108]	@ temp.3945, <variable>.chrom_phy_addr
	str	lr, [r4, #92]	@ temp.3945, <variable>.top_chrom_phy_addr
	str	lr, [r4, #124]	@ temp.3945, <variable>.chrom_2d_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r4, #32]	@ D.52617, <variable>.luma_vir_addr
	str	r0, [r4, #48]	@ D.52617, <variable>.luma_2d_vir_addr
	ldr	r0, [r4, #92]	@, <variable>.top_chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	ip, [r4, #88]	@ <variable>.top_luma_phy_addr, <variable>.top_luma_phy_addr
	str	r0, [r4, #36]	@ D.52620, <variable>.chrom_vir_addr
	str	r0, [r4, #52]	@ D.52620, <variable>.chrom_2d_vir_addr
	ldr	r3, [r8, #32]	@ <variable>.s32LumaStride, <variable>.s32LumaStride
	ldr	r0, [r4, #92]	@ <variable>.top_chrom_phy_addr, <variable>.top_chrom_phy_addr
	add	r2, r3, ip	@ tmp172, <variable>.s32LumaStride, <variable>.top_luma_phy_addr
	str	r2, [r4, #96]	@ tmp172, <variable>.btm_luma_phy_addr
	ldr	r1, [r8, #32]	@ <variable>.s32LumaStride, <variable>.s32LumaStride
	str	r6, [r4, #148]	@ tmp166, <variable>.is_fld_save
	add	r3, r1, r0	@ tmp175, <variable>.s32LumaStride, <variable>.top_chrom_phy_addr
	str	r3, [r4, #100]	@ tmp175, <variable>.btm_chrom_phy_addr
	ldr	ip, [r8, #20]	@ <variable>.s32YWidth, <variable>.s32YWidth
	str	ip, [r4, #164]	@ <variable>.s32YWidth, <variable>.image_width
	ldr	r2, [r8, #24]	@ <variable>.s32YHeight, <variable>.s32YHeight
	str	r2, [r4, #168]	@ <variable>.s32YHeight, <variable>.image_height
	movw	r2, #11296	@ tmp185,
	ldr	r0, [r8, #20]	@ temp.3949, <variable>.s32YWidth
	str	r0, [r4, #172]	@ temp.3949, <variable>.disp_width
	mov	r1, r0, lsr sl	@ tmp179, temp.3949,
	ldr	r3, [r8, #24]	@ temp.3951, <variable>.s32YHeight
	str	r1, [r4, #180]	@ tmp179, <variable>.disp_center_x
	str	r3, [r4, #176]	@ temp.3951, <variable>.disp_height
	mov	ip, r3, lsr sl	@ tmp180, temp.3951,
	str	ip, [r4, #184]	@ tmp180, <variable>.disp_center_y
	ldr	r0, [r8, #32]	@ <variable>.s32LumaStride, <variable>.s32LumaStride
	str	r2, [r4, #160]	@ tmp185, <variable>.format
	str	r6, [r4, #188]	@ tmp166, <variable>.frame_rate
	str	r0, [r4, #192]	@ <variable>.s32LumaStride, <variable>.image_stride
	str	r6, [r4, #200]	@ tmp166, <variable>.error_level
	str	sl, [r4, #228]	@ tmp165, <variable>.chroma_idc
	str	r6, [r4, #276]	@ tmp166, <variable>.line_num_phy_addr
	str	r6, [r4, #56]	@ tmp166, <variable>.line_num_vir_addr
	ldr	r0, [r8, #16]	@, <variable>.s32IsSemiPlanar
	ldr	r1, [r8, #0]	@, <variable>.enFmt
	bl	Get_YuvFormat	@
	cmp	r0, #13	@ eYuvFormat,
	mov	r2, r0	@ eYuvFormat,
	beq	.L1208	@,
	str	r0, [r4, #476]	@ eYuvFormat, <variable>.BTLInfo.YUVFormat
	mov	r2, sl	@, tmp165
	ldr	ip, [r8, #44]	@ <variable>.s32ChromStride, <variable>.s32ChromStride
	mov	sl, #18	@ tmp194,
	mov	r0, r7	@, ChanID
	mov	r1, r5	@, PicBufID
	str	ip, [r4, #452]	@ <variable>.s32ChromStride, <variable>.BTLInfo.u32CStride
	ldr	r3, [r8, #48]	@ <variable>.s32ChromCrStride, <variable>.s32ChromCrStride
	str	r3, [r4, #448]	@ <variable>.s32ChromCrStride, <variable>.BTLInfo.u32CrStride
	ldr	lr, [r8, #40]	@ <variable>.s32CrPhyAddr, <variable>.s32CrPhyAddr
	str	sl, [r4, #384]	@ tmp194, <variable>.ImageDnr.video_standard
	str	lr, [r4, #456]	@ <variable>.s32CrPhyAddr, <variable>.BTLInfo.u32CrAddr
	bl	FSP_SetDisplay	@
	movw	ip, #:lower16:.LANCHOR0	@ tmp195,
	movt	ip, #:upper16:.LANCHOR0	@ tmp195,
	str	r4, [sp, #0]	@ pLogic,
	mov	r1, sl	@, tmp194
	mov	r0, r7	@, ChanID
	ldr	r2, [ip, r7, asl #2]	@ D.52648, s_pstVfmwChan
	add	ip, r2, #250880	@, D.52648,
	add	r2, ip, #720	@, tmp3,
	add	r3, ip, #728	@,,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	moveq	r0, r6	@ D.52594, tmp166
	beq	.L1198	@,
	mov	r0, r7	@, ChanID
	ldr	r1, [r4, #212]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	mov	r0, r7	@, ChanID
	ldr	r1, [r4, #216]	@, <variable>.p_usrdat
	str	r6, [r4, #212]	@ tmp166, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	mov	r0, r7	@, ChanID
	str	r6, [r4, #216]	@ tmp166, <variable>.p_usrdat
	mov	r1, r5	@, PicBufID
	mov	r2, r6	@, tmp166
	bl	FSP_SetDisplay	@
	mvn	r0, #0	@ D.52594,
	b	.L1198	@
.L1206:
	ldr	r1, [r8, #4]	@ <variable>.s32IsFrameValid, <variable>.s32IsFrameValid
	cmp	r1, #1	@ <variable>.s32IsFrameValid,
	bne	.L1200	@,
	ldr	r2, [r8, #36]	@, <variable>.s32CbPhyAddr
	movw	r1, #:lower16:.LC208	@,
	movt	r1, #:upper16:.LC208	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.52594,
	b	.L1198	@
.L1205:
	ldr	r2, [r8, #28]	@, <variable>.s32LumaPhyAddr
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC207	@,
	movt	r1, #:upper16:.LC207	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.52594, PicBufID
	b	.L1198	@
.L1208:
	mov	r0, sl	@, tmp165
	movw	r1, #:lower16:.LC210	@,
	movt	r1, #:upper16:.LC210	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.52594,
	b	.L1198	@
.L1207:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC209	@,
	movw	r2, #5215	@,
	movt	r1, #:upper16:.LC209	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.52594,
	b	.L1198	@
	.fnend
	.size	VDH_PutUsrdecFrame, .-VDH_PutUsrdecFrame
	.align	2
	.global	VCTRL_PutUsrdecFrame
	.type	VCTRL_PutUsrdecFrame, %function
VCTRL_PutUsrdecFrame:
	.fnstart
.LFB1603:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	mov	r6, r0	@ ChanID, ChanID
	mov	ip, r1	@ pUsrdecFrame, pUsrdecFrame
	ldr	lr, [r3, r0, asl #2]	@ D.52708, s_pstVfmwChan
	cmp	lr, #0	@ D.52708,
	beq	.L1216	@,
	cmp	r1, #0	@ pUsrdecFrame,
	beq	.L1217	@,
	ldr	r2, [lr, #552]	@ D.52715, <variable>.eVidStd
	cmp	r2, #18	@ D.52715,
	bne	.L1218	@,
	mov	r4, r1	@ pUsrdecFrame, pUsrdecFrame
	add	lr, lr, #496	@ tmp146, D.52708,
	ldmia	r4!, {r0, r1, r2, r3}	@ pUsrdecFrame,,,,
	mov	r5, lr	@ tmp147, tmp146
	stmia	r5!, {r0, r1, r2, r3}	@ tmp147,,,,
	mov	lr, r5	@ tmp152, tmp147
	ldmia	r4!, {r0, r1, r2, r3}	@ pUsrdecFrame,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp152,,,,
	ldmia	r4!, {r0, r1, r2, r3}	@ pUsrdecFrame,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp152,,,,
	ldmia	r4, {r0, r1}	@ pUsrdecFrame,,
	stmia	lr, {r0, r1}	@ tmp154,,
	mov	r0, r6	@, ChanID
	mov	r1, ip	@, pUsrdecFrame
	bl	VDH_PutUsrdecFrame	@
	cmp	r0, #0	@ D.52720
	ldmeqfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC213	@,
	movt	r1, #:upper16:.LC213	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.52712,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L1218:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC212	@,
	movt	r1, #:upper16:.LC212	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.52712,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L1217:
	mov	r0, r1	@, pUsrdecFrame
	movw	r2, #5464	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r3, #:lower16:.LC211	@,
	movt	r1, #:upper16:.LC5	@,
	movt	r3, #:upper16:.LC211	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.52712,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L1216:
	mov	r0, lr	@, D.52708
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #5463	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r3, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.52712,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	VCTRL_PutUsrdecFrame, .-VCTRL_PutUsrdecFrame
	.align	2
	.global	USERDEC_RecycleImage
	.type	USERDEC_RecycleImage, %function
USERDEC_RecycleImage:
	.fnstart
.LFB1600:
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
	subs	r4, r0, #0	@ pCtx, pCtx
	mov	r5, r1	@ ImgID, ImgID
	mvneq	r0, #1	@ D.52573,
	ldmeqfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	ldr	r0, [r4, #360]	@, <variable>.ChanID
	mov	r2, #0	@,
	bl	FSP_SetDisplay	@
	mov	r1, r5	@, ImgID
	ldr	r0, [r4, #360]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pImg,
	moveq	r0, #1	@ D.52573,
	ldmeqfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	ldr	r0, [r4, #360]	@, <variable>.ChanID
	mov	r6, #0	@ tmp143,
	ldr	r1, [r5, #212]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r6, [r5, #212]	@ tmp143, <variable>.p_usrdat
	ldr	r1, [r5, #216]	@, <variable>.p_usrdat
	ldr	r0, [r4, #360]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r0, #1	@ D.52573,
	str	r6, [r5, #216]	@ tmp143, <variable>.p_usrdat
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	USERDEC_RecycleImage, .-USERDEC_RecycleImage
	.align	2
	.global	USERDEC_Init
	.type	USERDEC_Init, %function
USERDEC_Init:
	.fnstart
.LFB1599:
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
	ldr	r6, [r0, #352]	@ D.52552, <variable>.ImageQue.ResetMagicWord
	mov	r4, r0	@ pCtx, pCtx
	mov	r5, r1	@ pstExtraData, pstExtraData
	mov	r1, #368	@,
	bl	__memzero	@
	add	r0, r4, #8	@, pCtx,
	str	r6, [r4, #352]	@ D.52552, <variable>.ImageQue.ResetMagicWord
	bl	ResetVoQueue	@
	movw	r3, #:lower16:.LANCHOR0	@ tmp207,
	movt	r3, #:upper16:.LANCHOR0	@ tmp207,
	str	r5, [r4, #0]	@ pstExtraData, <variable>.pstExtraData
	ldr	r2, [r3, #0]	@ temp.4031, s_pstVfmwChan
	cmp	r2, #0	@ temp.4031,
	beq	.L1225	@,
	add	r0, r2, #250880	@ tmp157, temp.4031,
	add	r2, r0, #720	@ tmp157, tmp157,
	cmp	r4, r2	@ pCtx, tmp157
	moveq	r3, #0	@ i,
	beq	.L1226	@,
.L1225:
	ldr	r2, [r3, #4]	@ temp.4033, s_pstVfmwChan
	cmp	r2, #0	@ temp.4033,
	beq	.L1227	@,
	add	ip, r2, #250880	@ tmp160, temp.4033,
	add	r1, ip, #720	@ tmp160, tmp160,
	cmp	r4, r1	@ pCtx, tmp160
	moveq	r3, #1	@ i,
	beq	.L1226	@,
.L1227:
	ldr	r2, [r3, #8]	@ temp.4035, s_pstVfmwChan
	cmp	r2, #0	@ temp.4035,
	beq	.L1228	@,
	add	r2, r2, #250880	@ tmp163, temp.4035,
	add	lr, r2, #720	@ tmp163, tmp163,
	cmp	r4, lr	@ pCtx, tmp163
	moveq	r3, #2	@ i,
	beq	.L1226	@,
.L1228:
	ldr	r2, [r3, #12]	@ temp.4037, s_pstVfmwChan
	cmp	r2, #0	@ temp.4037,
	beq	.L1229	@,
	add	r1, r2, #250880	@ tmp166, temp.4037,
	add	r0, r1, #720	@ tmp166, tmp166,
	cmp	r4, r0	@ pCtx, tmp166
	moveq	r3, #3	@ i,
	beq	.L1226	@,
.L1229:
	ldr	r2, [r3, #16]	@ temp.4039, s_pstVfmwChan
	cmp	r2, #0	@ temp.4039,
	beq	.L1230	@,
	add	lr, r2, #250880	@ tmp169, temp.4039,
	add	ip, lr, #720	@ tmp169, tmp169,
	cmp	r4, ip	@ pCtx, tmp169
	moveq	r3, #4	@ i,
	beq	.L1226	@,
.L1230:
	ldr	r2, [r3, #20]	@ temp.4041, s_pstVfmwChan
	cmp	r2, #0	@ temp.4041,
	beq	.L1231	@,
	add	r0, r2, #250880	@ tmp172, temp.4041,
	add	r2, r0, #720	@ tmp172, tmp172,
	cmp	r4, r2	@ pCtx, tmp172
	moveq	r3, #5	@ i,
	beq	.L1226	@,
.L1231:
	ldr	r2, [r3, #24]	@ temp.4043, s_pstVfmwChan
	cmp	r2, #0	@ temp.4043,
	beq	.L1232	@,
	add	ip, r2, #250880	@ tmp175, temp.4043,
	add	r1, ip, #720	@ tmp175, tmp175,
	cmp	r4, r1	@ pCtx, tmp175
	moveq	r3, #6	@ i,
	beq	.L1226	@,
.L1232:
	ldr	r2, [r3, #28]	@ temp.4045, s_pstVfmwChan
	cmp	r2, #0	@ temp.4045,
	beq	.L1233	@,
	add	r2, r2, #250880	@ tmp178, temp.4045,
	add	lr, r2, #720	@ tmp178, tmp178,
	cmp	r4, lr	@ pCtx, tmp178
	moveq	r3, #7	@ i,
	beq	.L1226	@,
.L1233:
	ldr	r2, [r3, #32]	@ temp.4047, s_pstVfmwChan
	cmp	r2, #0	@ temp.4047,
	beq	.L1234	@,
	add	r1, r2, #250880	@ tmp181, temp.4047,
	add	r0, r1, #720	@ tmp181, tmp181,
	cmp	r4, r0	@ pCtx, tmp181
	moveq	r3, #8	@ i,
	beq	.L1226	@,
.L1234:
	ldr	r2, [r3, #36]	@ temp.4049, s_pstVfmwChan
	cmp	r2, #0	@ temp.4049,
	beq	.L1235	@,
	add	lr, r2, #250880	@ tmp184, temp.4049,
	add	ip, lr, #720	@ tmp184, tmp184,
	cmp	r4, ip	@ pCtx, tmp184
	moveq	r3, #9	@ i,
	beq	.L1226	@,
.L1235:
	ldr	r2, [r3, #40]	@ temp.4051, s_pstVfmwChan
	cmp	r2, #0	@ temp.4051,
	beq	.L1236	@,
	add	r0, r2, #250880	@ tmp187, temp.4051,
	add	r2, r0, #720	@ tmp187, tmp187,
	cmp	r4, r2	@ pCtx, tmp187
	moveq	r3, #10	@ i,
	beq	.L1226	@,
.L1236:
	ldr	r2, [r3, #44]	@ temp.4053, s_pstVfmwChan
	cmp	r2, #0	@ temp.4053,
	beq	.L1237	@,
	add	ip, r2, #250880	@ tmp190, temp.4053,
	add	r1, ip, #720	@ tmp190, tmp190,
	cmp	r4, r1	@ pCtx, tmp190
	moveq	r3, #11	@ i,
	beq	.L1226	@,
.L1237:
	ldr	r2, [r3, #48]	@ temp.4055, s_pstVfmwChan
	cmp	r2, #0	@ temp.4055,
	beq	.L1238	@,
	add	r2, r2, #250880	@ tmp193, temp.4055,
	add	lr, r2, #720	@ tmp193, tmp193,
	cmp	r4, lr	@ pCtx, tmp193
	moveq	r3, #12	@ i,
	beq	.L1226	@,
.L1238:
	ldr	r2, [r3, #52]	@ temp.4057, s_pstVfmwChan
	cmp	r2, #0	@ temp.4057,
	beq	.L1239	@,
	add	r1, r2, #250880	@ tmp196, temp.4057,
	add	r0, r1, #720	@ tmp196, tmp196,
	cmp	r4, r0	@ pCtx, tmp196
	moveq	r3, #13	@ i,
	beq	.L1226	@,
.L1239:
	ldr	r2, [r3, #56]	@ temp.4059, s_pstVfmwChan
	cmp	r2, #0	@ temp.4059,
	beq	.L1240	@,
	add	lr, r2, #250880	@ tmp199, temp.4059,
	add	ip, lr, #720	@ tmp199, tmp199,
	cmp	r4, ip	@ pCtx, tmp199
	moveq	r3, #14	@ i,
	beq	.L1226	@,
.L1240:
	ldr	r3, [r3, #60]	@ D.56249, s_pstVfmwChan
	cmp	r3, #0	@ D.56249,
	beq	.L1241	@,
	add	r2, r3, #250880	@ tmp202, D.56249,
	add	r3, r2, #720	@ tmp202, tmp202,
	cmp	r4, r3	@ pCtx, tmp202
	beq	.L1242	@,
.L1241:
	mvn	r0, #0	@ tmp204,
	movw	r1, #:lower16:.LC214	@,
	str	r0, [r4, #360]	@ tmp204, <variable>.ChanID
	movt	r1, #:upper16:.LC214	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.52565,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L1242:
	mov	r3, #15	@ i,
.L1226:
	mov	r0, #1	@ D.52565,
	str	r3, [r4, #360]	@ i, <variable>.ChanID
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	USERDEC_Init, .-USERDEC_Init
	.align	2
	.global	InitSyntaxCtx
	.type	InitSyntaxCtx, %function
InitSyntaxCtx:
	.fnstart
.LFB1604:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp184,
	movt	r3, #:upper16:.LANCHOR0	@ tmp184,
	ldr	r1, [r3, r0, asl #2]	@ D.52747, s_pstVfmwChan
	cmp	r1, #0	@ D.52747,
	beq	.L1264	@,
	ldr	r2, [r1, #552]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r2, #18	@ <variable>.eVidStd,
	ldrls	pc, [pc, r2, asl #2]	@ <variable>.eVidStd
	b	.L1263	@
.L1262:
	.word	.L1248
	.word	.L1249
	.word	.L1250
	.word	.L1251
	.word	.L1252
	.word	.L1253
	.word	.L1254
	.word	.L1263
	.word	.L1255
	.word	.L1256
	.word	.L1257
	.word	.L1257
	.word	.L1257
	.word	.L1258
	.word	.L1252
	.word	.L1259
	.word	.L1260
	.word	.L1263
	.word	.L1261
.L1261:
	add	lr, r1, #250880	@, D.52747,
	add	r1, r1, #560	@, D.52747,
	add	r0, lr, #720	@,,
	bl	USERDEC_Init	@
.L1263:
	ldmfd	sp, {fp, sp, pc}	@
.L1248:
	add	ip, r1, #250880	@, D.52747,
	add	r1, r1, #560	@, D.52747,
	add	r0, ip, #720	@,,
	bl	H264DEC_Init	@
	ldmfd	sp, {fp, sp, pc}	@
.L1249:
	add	lr, r1, #250880	@, D.52747,
	add	r1, r1, #560	@, D.52747,
	add	r0, lr, #720	@,,
	bl	VC1DEC_Init	@
	ldmfd	sp, {fp, sp, pc}	@
.L1250:
	add	r3, r1, #250880	@, D.52747,
	add	r1, r1, #560	@, D.52747,
	add	r0, r3, #720	@,,
	bl	MPEG4DEC_Init	@
	ldmfd	sp, {fp, sp, pc}	@
.L1251:
	add	r0, r1, #250880	@, D.52747,
	add	r1, r1, #560	@, D.52747,
	add	r0, r0, #720	@,,
	bl	MPEG2DEC_Init	@
	ldmfd	sp, {fp, sp, pc}	@
.L1252:
	ldr	r3, [r3, #84]	@ D.52764, g_SdecFunc.pfun_iMediaSoftDEC_Init
	cmp	r3, #0	@ D.52764,
	ldmeqfd	sp, {fp, sp, pc}	@
	add	r0, r1, #250880	@, D.52747,
	add	r1, r1, #560	@, D.52747,
	add	r0, r0, #720	@,,
	blx	r3	@ D.52764
	ldmfd	sp, {fp, sp, pc}	@
.L1253:
	add	ip, r1, #250880	@, D.52747,
	add	r1, r1, #560	@, D.52747,
	add	r0, ip, #720	@,,
	bl	DIVX3DEC_Init	@
	ldmfd	sp, {fp, sp, pc}	@
.L1254:
	add	r2, r1, #250880	@, D.52747,
	add	r1, r1, #560	@, D.52747,
	add	r0, r2, #720	@,,
	bl	AVSDEC_Init	@
	ldmfd	sp, {fp, sp, pc}	@
.L1255:
	add	r0, r1, #250880	@, D.52747,
	add	r1, r1, #560	@, D.52747,
	add	r0, r0, #720	@,,
	bl	REAL8DEC_Init	@
	ldmfd	sp, {fp, sp, pc}	@
.L1256:
	add	r3, r1, #250880	@, D.52747,
	add	r1, r1, #560	@, D.52747,
	add	r0, r3, #720	@,,
	bl	REAL9DEC_Init	@
	ldmfd	sp, {fp, sp, pc}	@
.L1257:
	add	r2, r1, #250880	@, D.52747,
	add	r1, r1, #560	@, D.52747,
	add	r0, r2, #720	@,,
	bl	VP6DEC_Init	@
	ldmfd	sp, {fp, sp, pc}	@
.L1258:
	add	r3, r1, #250880	@, D.52747,
	add	r1, r1, #560	@, D.52747,
	add	r0, r3, #720	@,,
	bl	VP8DEC_Init	@
	ldmfd	sp, {fp, sp, pc}	@
.L1259:
	add	ip, r1, #250880	@, D.52747,
	add	r1, r1, #560	@, D.52747,
	add	r0, ip, #720	@,,
	bl	MVC_DEC_Init	@
	ldmfd	sp, {fp, sp, pc}	@
.L1260:
	add	lr, r1, #250880	@, D.52747,
	add	r1, r1, #560	@, D.52747,
	add	r0, lr, #720	@,,
	bl	HEVCDEC_Init	@
	ldmfd	sp, {fp, sp, pc}	@
.L1264:
	mov	r0, r1	@, D.52747
	movw	r2, #5491	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC5	@,
	movt	r3, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	InitSyntaxCtx, .-InitSyntaxCtx
	.align	2
	.global	VCTRL_GetImageBuffer
	.type	VCTRL_GetImageBuffer, %function
VCTRL_GetImageBuffer:
	.fnstart
.LFB1593:
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
	cmp	r0, #15	@ ChanId,
	bhi	.L1286	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp174,
	movt	r3, #:upper16:.LANCHOR0	@ tmp174,
	ldr	r0, [r3, r0, asl #2]	@ D.52411, s_pstVfmwChan
	cmp	r0, #0	@ D.52411,
	beq	.L1287	@,
	ldr	r2, [r0, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r2, #1	@ <variable>.s32IsRun,
	bne	.L1288	@,
	ldr	r1, [r0, #552]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r1, #16	@ <variable>.eVidStd,
	ldrls	pc, [pc, r1, asl #2]	@ <variable>.eVidStd
	b	.L1270	@
.L1284:
	.word	.L1271
	.word	.L1272
	.word	.L1273
	.word	.L1274
	.word	.L1275
	.word	.L1276
	.word	.L1277
	.word	.L1270
	.word	.L1278
	.word	.L1279
	.word	.L1280
	.word	.L1280
	.word	.L1280
	.word	.L1281
	.word	.L1275
	.word	.L1282
	.word	.L1283
.L1280:
	ldr	r2, [r3, #516]	@ g_VdmCharacter, g_VdmCharacter
	tst	r2, #1	@ g_VdmCharacter,
	bne	.L1289	@,
.L1275:
	mov	r0, #1	@ Ret,
	ldmfd	sp, {fp, sp, pc}	@
.L1276:
	add	r3, r0, #250880	@, D.52411,
	add	r0, r3, #720	@,,
	bl	DIVX3DEC_GetImageBuffer	@
	ldmfd	sp, {fp, sp, pc}	@
.L1277:
	add	r2, r0, #250880	@, D.52411,
	add	r0, r2, #720	@,,
	bl	AVSDEC_GetImageBuffer	@
	ldmfd	sp, {fp, sp, pc}	@
.L1278:
	add	r1, r0, #250880	@, D.52411,
	add	r0, r1, #720	@,,
	bl	REAL8DEC_GetImageBuffer	@
	ldmfd	sp, {fp, sp, pc}	@
.L1279:
	add	r0, r0, #250880	@, D.52411,
	add	r0, r0, #720	@,,
	bl	REAL9DEC_GetImageBuffer	@
	ldmfd	sp, {fp, sp, pc}	@
.L1281:
	add	r1, r0, #250880	@, D.52411,
	add	r0, r1, #720	@,,
	bl	VP8DEC_GetImageBuffer	@
	ldmfd	sp, {fp, sp, pc}	@
.L1282:
	add	r0, r0, #250880	@, D.52411,
	add	r0, r0, #720	@,,
	bl	MVC_DEC_GetImageBuffer	@
	ldmfd	sp, {fp, sp, pc}	@
.L1283:
	add	r3, r0, #250880	@, D.52411,
	add	r0, r3, #720	@,,
	bl	HEVCDEC_GetImageBuffer	@
	ldmfd	sp, {fp, sp, pc}	@
.L1270:
	mov	r0, #0	@ Ret,
	ldmfd	sp, {fp, sp, pc}	@
.L1271:
	add	r0, r0, #250880	@, D.52411,
	add	r0, r0, #720	@,,
	bl	H264DEC_GetImageBuffer	@
	ldmfd	sp, {fp, sp, pc}	@
.L1272:
	add	ip, r0, #250880	@, D.52411,
	add	r0, ip, #720	@,,
	bl	VC1DEC_GetImageBuffer	@
	ldmfd	sp, {fp, sp, pc}	@
.L1273:
	add	lr, r0, #250880	@, D.52411,
	add	r0, lr, #720	@,,
	bl	MPEG4DEC_GetImageBuffer	@
	ldmfd	sp, {fp, sp, pc}	@
.L1274:
	add	ip, r0, #250880	@, D.52411,
	add	r0, ip, #720	@,,
	bl	MPEG2DEC_GetImageBuffer	@
	ldmfd	sp, {fp, sp, pc}	@
.L1289:
	add	lr, r0, #250880	@, D.52411,
	add	r0, lr, #720	@,,
	bl	VP6DEC_GetImageBuffer	@
	ldmfd	sp, {fp, sp, pc}	@
.L1288:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #4932	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC216	@,
	movt	r3, #:upper16:.LC216	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ Ret,
	ldmfd	sp, {fp, sp, pc}	@
.L1286:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #4930	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC28	@,
	movt	r3, #:upper16:.LC28	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ Ret,
	ldmfd	sp, {fp, sp, pc}	@
.L1287:
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #4931	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC215	@,
	movt	r3, #:upper16:.LC215	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ Ret,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_GetImageBuffer, .-VCTRL_GetImageBuffer
	.align	2
	.global	DecChanSyntax
	.type	DecChanSyntax, %function
DecChanSyntax:
	.fnstart
.LFB1614:
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
	cmp	r0, #15	@ ChanID,
	mov	r4, r0	@ ChanID, ChanID
	bhi	.L1329	@,
	movw	r5, #:lower16:.LANCHOR0	@ tmp414,
	movt	r5, #:upper16:.LANCHOR0	@ tmp414,
	ldr	r0, [r5, r0, asl #2]	@ D.53525, s_pstVfmwChan
	cmp	r0, #0	@ D.53525,
	beq	.L1330	@,
	ldr	sl, [r0, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	sl, #1	@ <variable>.s32IsRun,
	bne	.L1331	@,
	ldr	r6, [r0, #28]	@ <variable>.s32StopSyntax, <variable>.s32StopSyntax
	cmp	r6, #0	@ <variable>.s32StopSyntax,
	bne	.L1332	@,
	str	r6, [r0, #336]	@ <variable>.s32StopSyntax, <variable>.s32NoStreamFlag
	mov	r0, r4, asl #2	@, ChanID,
	str	r0, [fp, #-88]	@, %sfp
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [fp, #-88]	@, %sfp
	movw	r7, #:lower16:.LANCHOR3	@ tmp415,
	movt	r7, #:upper16:.LANCHOR3	@ tmp415,
	movw	r1, #:lower16:g_TraceBsPeriod	@ tmp189,
	add	ip, r3, r7	@ tmp185,, tmp415
	movt	r1, #:upper16:g_TraceBsPeriod	@ tmp189,
	ldr	r2, [ip, #-1924]	@ tmp188, last_rec_pos_time
	ldr	r3, [r1, #0]	@ g_TraceBsPeriod, g_TraceBsPeriod
	rsb	r1, r2, r0	@ tmp187, tmp188, currtime
	ldr	r2, [r5, r4, asl #2]	@ tmp197, s_pstVfmwChan
	cmp	r1, r3	@ tmp187, g_TraceBsPeriod
	strhi	r0, [ip, #-1924]	@ currtime, last_rec_pos_time
	movw	r3, #:lower16:.LANCHOR0	@ tmp196,
	movt	r3, #:upper16:.LANCHOR0	@ tmp196,
	ldr	r2, [r2, #552]	@ D.53544, <variable>.eVidStd
	movls	sl, r6	@ rec_pos_print_flag, <variable>.s32StopSyntax
	sub	r1, r2, #10	@ tmp198, D.53544,
	cmp	r1, #2	@ tmp198,
	bls	.L1333	@,
	cmp	r2, #14	@ D.53544,
	beq	.L1300	@,
	cmp	r2, #4	@ D.53544,
	bne	.L1299	@,
.L1300:
	mov	r0, r4	@, ChanID
	bl	VCTRL_GetImageBuffer	@
	cmp	r0, #1	@,
	bne	.L1334	@,
	ldr	r6, [r5, r4, asl #2]	@ temp.4169, s_pstVfmwChan
	ldr	r2, [r6, #1424]	@ D.53569, <variable>.stSynExtraData.stChanOption.u32DynamicFrameStoreAllocEn
	cmp	r2, #0	@ D.53569,
	beq	.L1304	@,
	cmp	r2, #1	@ D.53569,
	beq	.L1335	@,
	movw	lr, #:lower16:249264	@ tmp409,
	movt	lr, #:upper16:249264	@ tmp409,
	ldr	r3, [r6, lr]	@ prephitmp.4152, <variable>.FspInst.eFspPartitionState
.L1324:
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC227	@,
	movt	r1, #:upper16:.LC227	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.53523,
.L1292:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L1333:
	ldr	lr, [r3, #516]	@ g_VdmCharacter, g_VdmCharacter
	tst	lr, #1	@ g_VdmCharacter,
	beq	.L1300	@,
.L1299:
	cmp	r2, #18	@ D.53544,
	beq	.L1300	@,
	mov	r0, r4	@, ChanID
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	beq	.L1300	@,
	cmp	sl, #1	@ rec_pos_print_flag,
	beq	.L1301	@,
	mvn	r0, #1	@ D.53523,
	b	.L1292	@
.L1304:
	ldrb	r2, [r6, #697]	@ zero_extendqisi2	@ <variable>.stSynExtraData.stSegPacket.IsCurrSegWaitDec, <variable>.stSynExtraData.stSegPacket.IsCurrSegWaitDec
	cmp	r2, #0	@ <variable>.stSynExtraData.stSegPacket.IsCurrSegWaitDec,
	bne	.L1307	@,
	ldr	r1, [r6, #1464]	@ <variable>.stSynExtraData.s32WaitFsFlag, <variable>.stSynExtraData.s32WaitFsFlag
	cmp	r1, #0	@ <variable>.stSynExtraData.s32WaitFsFlag,
	beq	.L1336	@,
.L1307:
	mov	r0, #728	@ tmp221,
	mov	ip, #744	@ tmp223,
	ldrd	r8, [r6, r0]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.Pts, temp.4169, tmp221
	movw	r1, #:lower16:.LC221	@,
	ldrd	r2, [r6, ip]	@, temp.4169, tmp223
	movt	r1, #:upper16:.LC221	@,
	mov	r0, #29	@,
	strd	r2, [sp]	@,
	mov	r2, r8	@, <variable>.stSynExtraData.stSegPacket.CurrSeg.Pts
	mov	r3, r9	@, <variable>.stSynExtraData.stSegPacket.CurrSeg.Pts
	bl	dprint_vfmw	@
	ldr	r0, [r5, r4, asl #2]	@ prephitmp.4150, s_pstVfmwChan
	ldr	r1, [r0, #48]	@ D.53596, <variable>.stChanCfg.eVidStd
	cmp	r1, #1	@ D.53596,
	beq	.L1337	@,
	sub	ip, r1, #2	@ tmp235, D.53596,
	cmp	r1, #6	@ D.53596,
	cmpne	ip, #1	@, tmp235,
	bls	.L1311	@,
.L1310:
	mov	r3, #728	@ tmp337,
	mvn	r8, #0	@,
	ldrd	r2, [r3, r6]	@ temp.4172, tmp337, temp.4169
	mvn	r9, #0	@,
	cmp	r3, r9	@ temp.4172,
	cmpeq	r2, r8	@ temp.4172,
	movne	r1, #616	@ tmp339,
	strned	r2, [r0, r1]	@ temp.4172, prephitmp.4150, tmp339
	ldrne	r0, [r5, r4, asl #2]	@ prephitmp.4150, s_pstVfmwChan
.L1319:
	mov	r1, #744	@ tmp342,
	mov	r3, #632	@ tmp341,
	ldrd	r8, [r6, r1]	@, temp.4169, tmp342
	mov	r2, #648	@ tmp346,
	ldr	lr, [r6, #760]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DispEnableFlag, <variable>.stSynExtraData.stSegPacket.CurrSeg.DispEnableFlag
	movw	r1, #:lower16:.LC224	@,
	movt	r1, #:upper16:.LC224	@,
	strd	r8, [r0, r3]	@, prephitmp.4150, tmp341
	mov	r0, #752	@ tmp347,
	ldr	ip, [r5, r4, asl #2]	@ tmp345, s_pstVfmwChan
	ldrd	r8, [r6, r0]	@, temp.4169, tmp347
	mov	r0, #29	@,
	strd	r8, [ip, r2]	@, tmp345, tmp346
	ldr	ip, [r5, r4, asl #2]	@ tmp350, s_pstVfmwChan
	ldr	r9, [r6, #764]	@, <variable>.stSynExtraData.stSegPacket.CurrSeg.DispFrameDistance
	ldr	r2, [r6, #772]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.GopNum, <variable>.stSynExtraData.stSegPacket.CurrSeg.GopNum
	str	lr, [ip, #664]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DispEnableFlag, <variable>.stSynExtraData.DispEnableFlag
	ldr	ip, [r5, r4, asl #2]	@ tmp353, s_pstVfmwChan
	ldr	lr, [r6, #768]	@, <variable>.stSynExtraData.stSegPacket.CurrSeg.DistanceBeforeFirstFrame
	str	r9, [ip, #668]	@, <variable>.stSynExtraData.DispFrameDistance
	ldr	ip, [r5, r4, asl #2]	@ tmp356, s_pstVfmwChan
	str	lr, [ip, #672]	@, <variable>.stSynExtraData.DistanceBeforeFirstFrame
	mov	ip, #616	@ tmp363,
	ldr	r9, [r5, r4, asl #2]	@ tmp359, s_pstVfmwChan
	str	r2, [r9, #688]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.GopNum, <variable>.stSynExtraData.GopNum
	ldr	lr, [r5, r4, asl #2]	@ temp.4179, s_pstVfmwChan
	add	r2, lr, ip	@, temp.4179, tmp363
	ldrd	r8, [lr, r3]	@, temp.4179, tmp341
	ldrd	r2, [r2]	@ <variable>.stSynExtraData.pts,
	strd	r8, [sp]	@,
	bl	dprint_vfmw	@
.L1318:
	mov	r0, #3	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L1320	@,
	cmp	sl, #1	@ rec_pos_print_flag,
	beq	.L1338	@,
.L1320:
	ldr	lr, [r5, r4, asl #2]	@ temp.4221, s_pstVfmwChan
	add	r0, r6, #696	@, temp.4169,
	movw	r6, #:lower16:.LANCHOR0	@ tmp371,
	movt	r6, #:upper16:.LANCHOR0	@ tmp371,
	add	ip, lr, #250880	@, temp.4221,
	add	r2, ip, #720	@,,
	ldr	r1, [lr, #552]	@, <variable>.eVidStd
	bl	DecodeStream	@
	ldr	r0, [r5, r4, asl #2]	@ temp.4223, s_pstVfmwChan
	ldr	r2, [r0, #552]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r2, #16	@ <variable>.eVidStd,
	beq	.L1339	@,
.L1321:
	mov	r0, #4	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L1340	@,
.L1323:
	mov	r0, #0	@ D.53523,
	b	.L1292	@
.L1337:
	movw	r3, #:lower16:251600	@ tmp227,
	movt	r3, #:upper16:251600	@ tmp227,
	ldr	lr, [r0, r3]	@ <variable>.stSynCtx.unSyntax.stVc1Ctx.pstExtraData, <variable>.stSynCtx.unSyntax.stVc1Ctx.pstExtraData
	ldrb	r2, [lr, #556]	@ zero_extendqisi2	@ <variable>.StdExt.Vc1Ext.IsAdvProfile, <variable>.StdExt.Vc1Ext.IsAdvProfile
	cmp	r2, #1	@ <variable>.StdExt.Vc1Ext.IsAdvProfile,
	bne	.L1310	@,
.L1311:
	add	r0, r0, #1104	@, prephitmp.4150,
	add	r2, r6, #704	@, temp.4169,
	add	r0, r0, #8	@,,
	bl	IsNewpicSeg	@
	cmp	r0, #0	@,
	beq	.L1341	@,
.L1312:
	ldr	r3, [r5, r4, asl #2]	@ temp.4170, s_pstVfmwChan
	ldr	r1, [r3, #48]	@ <variable>.stChanCfg.eVidStd, <variable>.stChanCfg.eVidStd
	cmp	r1, #3	@ <variable>.stChanCfg.eVidStd,
	beq	.L1316	@,
.L1315:
	mov	r9, #728	@ tmp308,
	mvn	r8, #0	@,
	ldrd	r0, [r6, r9]	@ temp.4207, temp.4169, tmp308
	mvn	r9, #0	@,
	cmp	r1, r9	@ temp.4207,
	cmpeq	r0, r8	@ temp.4207,
	movne	ip, #624	@ tmp310,
	strned	r0, [r3, ip]	@ temp.4207, temp.4170, tmp310
.L1317:
	mov	r8, #744	@ tmp314,
	ldr	ip, [r5, r4, asl #2]	@ tmp312, s_pstVfmwChan
	ldrd	r0, [r6, r8]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.Usertag, temp.4169, tmp314
	mov	r2, #752	@ tmp319,
	mov	r3, #640	@ tmp313,
	ldrd	r8, [r6, r2]	@, temp.4169, tmp319
	mov	lr, #656	@ tmp318,
	strd	r0, [ip, r3]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.Usertag, tmp312, tmp313
	ldr	r2, [r5, r4, asl #2]	@ tmp317, s_pstVfmwChan
	ldr	ip, [r6, #760]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DispEnableFlag, <variable>.stSynExtraData.stSegPacket.CurrSeg.DispEnableFlag
	ldr	r0, [r6, #764]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DispFrameDistance, <variable>.stSynExtraData.stSegPacket.CurrSeg.DispFrameDistance
	strd	r8, [r2, lr]	@, tmp317, tmp318
	ldr	r3, [r5, r4, asl #2]	@ tmp322, s_pstVfmwChan
	ldr	lr, [r6, #768]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DistanceBeforeFirstFrame, <variable>.stSynExtraData.stSegPacket.CurrSeg.DistanceBeforeFirstFrame
	ldr	r2, [r6, #772]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.GopNum, <variable>.stSynExtraData.stSegPacket.CurrSeg.GopNum
	str	ip, [r3, #676]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DispEnableFlag, <variable>.stSynExtraData.NextDispEnableFlag
	ldr	ip, [r5, r4, asl #2]	@ tmp325, s_pstVfmwChan
	str	r0, [ip, #680]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DispFrameDistance, <variable>.stSynExtraData.NextDispFrameDistance
	ldr	r0, [r5, r4, asl #2]	@ tmp328, s_pstVfmwChan
	str	lr, [r0, #684]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DistanceBeforeFirstFrame, <variable>.stSynExtraData.NextDistanceBeforeFirstFrame
	ldr	r3, [r5, r4, asl #2]	@ tmp331, s_pstVfmwChan
	str	r2, [r3, #692]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.GopNum, <variable>.stSynExtraData.NextGopNum
	ldr	r3, [r5, r4, asl #2]	@ temp.4170, s_pstVfmwChan
.L1316:
	mov	r0, #632	@ tmp335,
	add	r2, r3, r0	@, temp.4170, tmp335
	movw	r1, #:lower16:.LC223	@,
	mov	r0, #29	@,
	ldrd	r2, [r2]	@,
	movt	r1, #:upper16:.LC223	@,
	bl	dprint_vfmw	@
	b	.L1318	@
.L1340:
	bl	OSAL_GetTimeInMs	@
	ldr	r9, [fp, #-88]	@, %sfp
	movw	r2, #:lower16:g_TraceFramePeriod	@ tmp397,
	movt	r2, #:upper16:g_TraceFramePeriod	@ tmp397,
	add	r7, r9, r7	@ tmp393,, tmp415
	ldr	r1, [r7, #-1860]	@ tmp396, last_rec_pos_decparam_time
	mov	r3, r0	@ currtime.4228,
	ldr	r0, [r2, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	rsb	ip, r1, r3	@ tmp395, tmp396, currtime.4228
	cmp	ip, r0	@ tmp395, g_TraceFramePeriod
	bls	.L1323	@,
	mov	r0, r4	@, ChanID
	str	r3, [r7, #-1860]	@ currtime.4228, last_rec_pos_decparam_time
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	beq	.L1323	@,
	mov	r3, r4, asl #24	@ tmp406, ChanID,
	ldr	r0, .L1345	@,
	add	r2, r3, #262144	@, tmp406,
	movw	r1, #7313	@,
	bl	DBG_AddTrace	@
	mov	r0, #0	@ D.53523,
	b	.L1292	@
.L1341:
	ldr	r3, [r5, r4, asl #2]	@ prephitmp.4146, s_pstVfmwChan
	movw	r2, #:lower16:.LANCHOR0	@ tmp246,
	movt	r2, #:upper16:.LANCHOR0	@ tmp246,
	ldr	r8, [r3, #48]	@ <variable>.stChanCfg.eVidStd, <variable>.stChanCfg.eVidStd
	cmp	r8, #3	@ <variable>.stChanCfg.eVidStd,
	beq	.L1342	@,
	mov	r1, #624	@ tmp252,
	mvn	r8, #0	@,
	ldrd	r0, [r1, r3]	@ temp.4182, tmp252, prephitmp.4146
	mvn	r9, #0	@,
	cmp	r1, r9	@ temp.4182,
	cmpeq	r0, r8	@ temp.4182,
	movne	r9, #616	@ tmp254,
	strned	r0, [r3, r9]	@ temp.4182, prephitmp.4146, tmp254
	ldrne	r3, [r2, r4, asl #2]	@ prephitmp.4146, s_pstVfmwChan
.L1314:
	mov	r9, #624	@,
	mvn	r0, #0	@ tmp257,
	mvn	r1, #0	@,
	strd	r0, [r3, r9]	@ tmp257, prephitmp.4146,
	ldr	lr, [r5, r4, asl #2]	@ temp.4184, s_pstVfmwChan
	mov	ip, #640	@ tmp260,
	mov	r8, #632	@ tmp259,
	mov	r0, #29	@,
	movw	r1, #:lower16:.LC222	@,
	movt	r1, #:upper16:.LC222	@,
	ldrd	r2, [lr, ip]	@, temp.4184, tmp260
	movw	r9, #:lower16:.LANCHOR0	@ tmp258,
	movt	r9, #:upper16:.LANCHOR0	@ tmp258,
	strd	r2, [lr, r8]	@, temp.4184, tmp259
	mov	r3, #656	@,
	ldr	lr, [r5, r4, asl #2]	@ temp.4185, s_pstVfmwChan
	mov	r8, #648	@ tmp263,
	ldrd	r2, [r3, lr]	@,, temp.4185
	strd	r2, [lr, r8]	@, temp.4185, tmp263
	ldr	r3, [r5, r4, asl #2]	@ temp.4186, s_pstVfmwChan
	ldr	r8, [r3, #676]	@ <variable>.stSynExtraData.NextDispEnableFlag, <variable>.stSynExtraData.NextDispEnableFlag
	str	r8, [r3, #664]	@ <variable>.stSynExtraData.NextDispEnableFlag, <variable>.stSynExtraData.DispEnableFlag
	ldr	r2, [r5, r4, asl #2]	@ temp.4187, s_pstVfmwChan
	ldr	lr, [r2, #680]	@ <variable>.stSynExtraData.NextDispFrameDistance, <variable>.stSynExtraData.NextDispFrameDistance
	str	lr, [r2, #668]	@ <variable>.stSynExtraData.NextDispFrameDistance, <variable>.stSynExtraData.DispFrameDistance
	ldr	r3, [r5, r4, asl #2]	@ temp.4188, s_pstVfmwChan
	ldr	r8, [r3, #684]	@ <variable>.stSynExtraData.NextDistanceBeforeFirstFrame, <variable>.stSynExtraData.NextDistanceBeforeFirstFrame
	str	r8, [r3, #672]	@ <variable>.stSynExtraData.NextDistanceBeforeFirstFrame, <variable>.stSynExtraData.DistanceBeforeFirstFrame
	mov	r3, #616	@ tmp277,
	ldr	r2, [r5, r4, asl #2]	@ temp.4189, s_pstVfmwChan
	ldr	lr, [r2, #692]	@ <variable>.stSynExtraData.NextGopNum, <variable>.stSynExtraData.NextGopNum
	str	lr, [r2, #688]	@ <variable>.stSynExtraData.NextGopNum, <variable>.stSynExtraData.GopNum
	ldr	r8, [r5, r4, asl #2]	@ tmp276, s_pstVfmwChan
	add	r2, r8, r3	@, tmp276, tmp277
	ldrd	r2, [r2]	@,
	str	ip, [fp, #-80]	@,
	bl	dprint_vfmw	@
	ldr	r3, [r5, r4, asl #2]	@ temp.4170, s_pstVfmwChan
	ldr	ip, [fp, #-80]	@,
	ldr	r2, [r3, #48]	@ <variable>.stChanCfg.eVidStd, <variable>.stChanCfg.eVidStd
	cmp	r2, #3	@ <variable>.stChanCfg.eVidStd,
	bne	.L1315	@,
	mov	r8, #728	@ tmp282,
	mov	lr, #744	@ tmp287,
	ldrd	r0, [r6, r8]	@, temp.4169, tmp282
	mov	r2, #752	@ tmp292,
	mov	r8, #624	@,
	strd	r0, [fp, #-76]	@,,
	ldrd	r0, [r6, lr]	@, temp.4169, tmp287
	strd	r0, [fp, #-52]	@,,
	ldrd	r0, [r6, r2]	@, temp.4169, tmp292
	strd	r0, [fp, #-60]	@,,
	ldrd	r0, [fp, #-76]	@,,
	ldr	lr, [r6, #764]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DispFrameDistance, <variable>.stSynExtraData.stSegPacket.CurrSeg.DispFrameDistance
	strd	r0, [r3, r8]	@, temp.4170,
	ldrd	r0, [fp, #-52]	@,,
	ldr	r3, [r9, r4, asl #2]	@ tmp285, s_pstVfmwChan
	ldr	r8, [r6, #760]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DispEnableFlag, <variable>.stSynExtraData.stSegPacket.CurrSeg.DispEnableFlag
	strd	r0, [r3, ip]	@, tmp285, tmp260
	mov	ip, #656	@,
	ldr	r0, [r9, r4, asl #2]	@ tmp290, s_pstVfmwChan
	ldrd	r2, [fp, #-60]	@,,
	ldr	r1, [r6, #768]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DistanceBeforeFirstFrame, <variable>.stSynExtraData.stSegPacket.CurrSeg.DistanceBeforeFirstFrame
	strd	r2, [r0, ip]	@, tmp290,
	ldr	r0, [r9, r4, asl #2]	@ tmp295, s_pstVfmwChan
	str	r8, [r0, #676]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DispEnableFlag, <variable>.stSynExtraData.NextDispEnableFlag
	ldr	r2, [r9, r4, asl #2]	@ tmp298, s_pstVfmwChan
	str	lr, [r2, #680]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DispFrameDistance, <variable>.stSynExtraData.NextDispFrameDistance
	ldr	ip, [r9, r4, asl #2]	@ tmp301, s_pstVfmwChan
	str	r1, [ip, #684]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DistanceBeforeFirstFrame, <variable>.stSynExtraData.NextDistanceBeforeFirstFrame
	ldr	r1, [r6, #772]	@, <variable>.stSynExtraData.stSegPacket.CurrSeg.GopNum
	ldr	r0, [r9, r4, asl #2]	@ tmp304, s_pstVfmwChan
	str	r1, [r0, #692]	@, <variable>.stSynExtraData.NextGopNum
	b	.L1312	@
.L1336:
	mov	r0, r4	@, ChanID
	add	r1, r6, #704	@, temp.4169,
	bl	SM_ReadStreamSeg	@
	cmp	r0, #0	@,
	beq	.L1307	@,
	cmp	sl, #1	@ rec_pos_print_flag,
	beq	.L1343	@,
.L1308:
	ldr	r3, [r5, r4, asl #2]	@ tmp218, s_pstVfmwChan
	mov	lr, #1	@ tmp219,
	mvn	r0, #3	@ D.53523,
	str	lr, [r3, #336]	@ tmp219, <variable>.s32NoStreamFlag
	b	.L1292	@
.L1339:
	ldr	r1, [r0, #1488]	@ <variable>.stSynExtraData.s32IsHevcMain10, <variable>.stSynExtraData.s32IsHevcMain10
	cmp	r1, #1	@ <variable>.stSynExtraData.s32IsHevcMain10,
	beq	.L1321	@,
	add	r0, r0, #250880	@, temp.4223,
	add	r0, r0, #720	@,,
	bl	IsMain10Profile	@
	cmp	r0, #0	@ D.53666
	bne	.L1344	@,
	ldr	lr, [r6, r4, asl #2]	@ tmp388, s_pstVfmwChan
	str	r0, [lr, #1488]	@ D.53666, <variable>.stSynExtraData.s32IsHevcMain10
	b	.L1321	@
.L1335:
	movw	ip, #:lower16:249264	@ tmp205,
	movt	ip, #:upper16:249264	@ tmp205,
	ldr	r3, [r6, ip]	@ prephitmp.4152, <variable>.FspInst.eFspPartitionState
	cmp	r3, #0	@ prephitmp.4152,
	cmpne	r3, #2	@, prephitmp.4152,
	beq	.L1304	@,
	cmp	r3, #1	@ prephitmp.4152,
	bne	.L1324	@,
	movw	r1, #:lower16:.LC226	@,
	mov	r0, #31	@,
	movt	r1, #:upper16:.LC226	@,
	bl	dprint_vfmw	@
.L1328:
	mvn	r0, #2	@ D.53523,
	b	.L1292	@
.L1334:
	cmp	sl, #1	@ rec_pos_print_flag,
	bne	.L1328	@,
	mov	r2, r4	@, ChanID
	mov	r0, #23	@,
	movw	r1, #:lower16:.LC219	@,
	movt	r1, #:upper16:.LC219	@,
	bl	dprint_vfmw	@
	mvn	r0, #2	@ D.53523,
	b	.L1292	@
.L1344:
	mov	r3, r4	@, ChanID
	ldr	r2, .L1345	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC225	@,
	movt	r1, #:upper16:.LC225	@,
	bl	dprint_vfmw	@
	ldr	r3, [r6, r4, asl #2]	@ tmp385, s_pstVfmwChan
	mov	r2, #1	@ tmp386,
	str	r2, [r3, #1488]	@ tmp386, <variable>.stSynExtraData.s32IsHevcMain10
	bl	VDMDRV_AddMatchMode	@
	b	.L1321	@
.L1301:
	mov	r2, r4	@, ChanID
	mov	r0, #23	@,
	movw	r1, #:lower16:.LC218	@,
	movt	r1, #:upper16:.LC218	@,
	bl	dprint_vfmw	@
	mvn	r0, #1	@ D.53523,
	b	.L1292	@
.L1331:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #7092	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC216	@,
	movt	r3, #:upper16:.LC216	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.53523,
	b	.L1292	@
.L1332:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #7093	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC217	@,
	movt	r3, #:upper16:.LC217	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.53523,
	b	.L1292	@
.L1342:
	mov	lr, #624	@ tmp249,
	mov	r1, #616	@ tmp248,
	ldrd	r8, [r3, lr]	@, prephitmp.4146, tmp249
	strd	r8, [r3, r1]	@, prephitmp.4146, tmp248
	ldr	r3, [r2, r4, asl #2]	@ prephitmp.4146, s_pstVfmwChan
	b	.L1314	@
.L1338:
	mov	r3, r4, asl #24	@ tmp369, ChanID,
	ldr	r0, .L1345	@,
	add	r2, r3, #196608	@, tmp369,
	movw	r1, #7280	@,
	bl	DBG_AddTrace	@
	b	.L1320	@
.L1329:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #7090	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.53523,
	b	.L1292	@
.L1343:
	movw	r1, #:lower16:.LC220	@,
	mov	r2, r4	@, ChanID
	movt	r1, #:upper16:.LC220	@,
	mov	r0, #23	@,
	bl	dprint_vfmw	@
	b	.L1308	@
.L1330:
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #7091	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC215	@,
	movt	r3, #:upper16:.LC215	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.53523,
	b	.L1292	@
.L1346:
	.align	2
.L1345:
	.word	.LANCHOR1+232
	.fnend
	.size	DecChanSyntax, .-DecChanSyntax
	.align	2
	.global	DecSyntax
	.type	DecSyntax, %function
DecSyntax:
	.fnstart
.LFB1611:
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
	movw	r6, #:lower16:.LANCHOR0	@ tmp302,
	movt	r6, #:upper16:.LANCHOR0	@ tmp302,
	movw	r4, #:lower16:.LANCHOR3	@ tmp304,
	movt	r4, #:upper16:.LANCHOR3	@ tmp304,
	ldr	r9, [r6, #0]	@ temp.4278, s_pstVfmwChan
	ldr	r8, [r6, #4]	@ temp.4280, s_pstVfmwChan
	cmp	r9, #0	@ temp.4278,
	ldr	r7, [r6, #8]	@ D.53417, s_pstVfmwChan
	ldr	r2, [r6, #12]	@ temp.4282, s_pstVfmwChan
	ldrne	r9, [r9, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r8, #0	@ temp.4280,
	ldr	r1, [r6, #16]	@ temp.4284, s_pstVfmwChan
	ldr	r0, [r6, #20]	@ temp.4286, s_pstVfmwChan
	str	r9, [r4, #-1796]	@ <variable>.s32Priority, ChanPriTab
	ldrne	r8, [r8, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r7, #0	@ D.53417,
	ldr	r3, [r6, #24]	@ temp.4288, s_pstVfmwChan
	ldr	ip, [r6, #28]	@ temp.4290, s_pstVfmwChan
	str	r8, [r4, #-1792]	@ <variable>.s32Priority, ChanPriTab
	ldrne	r7, [r7, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r2, #0	@ temp.4282,
	ldr	sl, [r6, #32]	@ temp.4292, s_pstVfmwChan
	ldr	r9, [r6, #36]	@ temp.4294, s_pstVfmwChan
	str	r7, [r4, #-1788]	@ <variable>.s32Priority, ChanPriTab
	ldrne	r2, [r2, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r1, #0	@ temp.4284,
	ldr	r8, [r6, #40]	@ temp.4296, s_pstVfmwChan
	ldr	r7, [r6, #44]	@ temp.4298, s_pstVfmwChan
	str	r2, [r4, #-1784]	@ <variable>.s32Priority, ChanPriTab
	ldrne	r1, [r1, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r0, #0	@ temp.4286,
	str	r1, [r4, #-1780]	@ <variable>.s32Priority, ChanPriTab
	ldrne	r0, [r0, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r3, #0	@ temp.4288,
	str	r0, [r4, #-1776]	@ <variable>.s32Priority, ChanPriTab
	ldrne	r3, [r3, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	ip, #0	@ temp.4290,
	str	r3, [r4, #-1772]	@ <variable>.s32Priority, ChanPriTab
	ldrne	ip, [ip, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	sl, #0	@ temp.4292,
	str	ip, [r4, #-1768]	@ <variable>.s32Priority, ChanPriTab
	ldrne	sl, [sl, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r9, #0	@ temp.4294,
	str	sl, [r4, #-1764]	@ <variable>.s32Priority, ChanPriTab
	movw	sl, #:lower16:.LANCHOR0	@ tmp311,
	ldrne	r9, [r9, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r8, #0	@ temp.4296,
	movt	sl, #:upper16:.LANCHOR0	@ tmp311,
	str	r9, [r4, #-1760]	@ <variable>.s32Priority, ChanPriTab
	sub	r9, fp, #68	@ tmp312,,
	ldrne	r8, [r8, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r7, #0	@ temp.4298,
	str	r8, [r4, #-1756]	@ <variable>.s32Priority, ChanPriTab
	mvn	r8, #0	@ ret,
	ldrne	r7, [r7, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	str	r7, [r4, #-1752]	@ <variable>.s32Priority, ChanPriTab
	mov	r7, #0	@ MaxPriChan.4307,
	ldr	r2, [r6, #48]	@ temp.4300, s_pstVfmwChan
	ldr	r1, [r6, #52]	@ temp.4302, s_pstVfmwChan
	cmp	r2, #0	@ temp.4300,
	ldr	r0, [r6, #56]	@ temp.4304, s_pstVfmwChan
	ldr	r3, [r6, #60]	@ temp.4268, s_pstVfmwChan
	ldrne	r2, [r2, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r1, #0	@ temp.4302,
	str	r2, [r4, #-1748]	@ <variable>.s32Priority, ChanPriTab
	ldrne	r1, [r1, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r0, #0	@ temp.4304,
	str	r1, [r4, #-1744]	@ <variable>.s32Priority, ChanPriTab
	ldrne	r0, [r0, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r3, #0	@ temp.4268,
	str	r0, [r4, #-1740]	@ <variable>.s32Priority, ChanPriTab
	ldrne	r3, [r3, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	str	r3, [r4, #-1736]	@ temp.4268, ChanPriTab
.L1408:
	ldr	r3, [r4, #-1796]	@ MaxPri, ChanPriTab
	ldr	r2, [r4, #-1792]	@ MaxPri.4306, ChanPriTab
	ldr	r1, [r4, #-1788]	@ MaxPri.4308, ChanPriTab
	cmp	r3, r2	@ MaxPri, MaxPri.4306
	ldr	r0, [r4, #-1784]	@ MaxPri.4309, ChanPriTab
	ldr	ip, [r4, #-1780]	@ MaxPri.4310, ChanPriTab
	movlt	r3, r2	@ MaxPri, MaxPri.4306
	movlt	r5, #1	@ MaxPriChan.4307,
	movge	r5, #0	@ MaxPriChan.4307,
	cmp	r3, r1	@ MaxPri, MaxPri.4308
	ldr	r2, [r4, #-1776]	@ MaxPri.4311, ChanPriTab
	movlt	r3, r1	@ MaxPri, MaxPri.4308
	movlt	r5, #2	@ MaxPriChan.4307,
	cmp	r3, r0	@ MaxPri, MaxPri.4309
	ldr	r1, [r4, #-1772]	@ MaxPri.4312, ChanPriTab
	movlt	r3, r0	@ MaxPri, MaxPri.4309
	movlt	r5, #3	@ MaxPriChan.4307,
	cmp	r3, ip	@ MaxPri, MaxPri.4310
	ldr	r0, [r4, #-1768]	@ MaxPri.4313, ChanPriTab
	movlt	r3, ip	@ MaxPri, MaxPri.4310
	movlt	r5, #4	@ MaxPriChan.4307,
	cmp	r3, r2	@ MaxPri, MaxPri.4311
	ldr	ip, [r4, #-1764]	@ MaxPri.4314, ChanPriTab
	movlt	r3, r2	@ MaxPri, MaxPri.4311
	movlt	r5, #5	@ MaxPriChan.4307,
	cmp	r3, r1	@ MaxPri, MaxPri.4312
	ldr	r2, [r4, #-1760]	@ MaxPri.4315, ChanPriTab
	movlt	r3, r1	@ MaxPri, MaxPri.4312
	movlt	r5, #6	@ MaxPriChan.4307,
	cmp	r3, r0	@ MaxPri, MaxPri.4313
	ldr	r1, [r4, #-1756]	@ MaxPri.4316, ChanPriTab
	movlt	r3, r0	@ MaxPri, MaxPri.4313
	movlt	r5, #7	@ MaxPriChan.4307,
	cmp	r3, ip	@ MaxPri, MaxPri.4314
	ldr	r0, [r4, #-1752]	@ MaxPri.4317, ChanPriTab
	movlt	r3, ip	@ MaxPri, MaxPri.4314
	movlt	r5, #8	@ MaxPriChan.4307,
	cmp	r3, r2	@ MaxPri, MaxPri.4315
	ldr	ip, [r4, #-1748]	@ MaxPri.4318, ChanPriTab
	movlt	r3, r2	@ MaxPri, MaxPri.4315
	movlt	r5, #9	@ MaxPriChan.4307,
	cmp	r3, r1	@ MaxPri, MaxPri.4316
	ldr	r2, [r4, #-1744]	@ MaxPri.4319, ChanPriTab
	movlt	r3, r1	@ MaxPri, MaxPri.4316
	movlt	r5, #10	@ MaxPriChan.4307,
	cmp	r3, r0	@ MaxPri, MaxPri.4317
	ldr	r1, [r4, #-1740]	@ MaxPri.4320, ChanPriTab
	movlt	r3, r0	@ MaxPri, MaxPri.4317
	movlt	r5, #11	@ MaxPriChan.4307,
	cmp	r3, ip	@ MaxPri, MaxPri.4318
	ldr	r0, [r4, #-1736]	@ MaxPri.4321, ChanPriTab
	movlt	r3, ip	@ MaxPri, MaxPri.4318
	movlt	r5, #12	@ MaxPriChan.4307,
	cmp	r3, r2	@ MaxPri, MaxPri.4319
	movlt	r3, r2	@ MaxPri, MaxPri.4319
	movlt	r5, #13	@ MaxPriChan.4307,
	cmp	r3, r1	@ MaxPri, MaxPri.4320
	movlt	r5, #14	@ MaxPriChan.4307,
	movlt	r3, r1	@ MaxPri, MaxPri.4320
	cmp	r3, r0	@ MaxPri, MaxPri.4321
	movlt	r5, #15	@ MaxPriChan.4307,
	movlt	r3, r0	@ MaxPri, MaxPri.4321
	add	ip, r4, r5, asl #2	@, tmp278, tmp304, MaxPriChan.4307,
	cmp	r3, #0	@ MaxPri,
	add	r2, r5, #1	@ s_VfmwCTrl__s32ThisChanIDPlus1s_VfmwCTrl.4259, MaxPriChan.4307,
	str	r7, [ip, #-1796]	@ MaxPriChan.4307, ChanPriTab
	ble	.L1396	@,
	ldr	r3, [r6, r5, asl #2]	@ D.53428, s_pstVfmwChan
	cmp	r3, #0	@ D.53428,
	beq	.L1408	@,
	str	r2, [sl, #156]	@ s_VfmwCTrl__s32ThisChanIDPlus1s_VfmwCTrl.4259, s_VfmwCTrl.s32ThisChanIDPlus1
	ldr	ip, [r3, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	ip, #1	@ <variable>.s32IsRun,
	bne	.L1408	@,
	ldr	lr, [r3, #68]	@ <variable>.stChanCfg.s32ChanStrmOFThr, <variable>.stChanCfg.s32ChanStrmOFThr
	cmp	lr, #0	@ <variable>.stChanCfg.s32ChanStrmOFThr,
	ble	.L1398	@,
	ldr	r8, [r3, #72]	@ <variable>.stChanCfg.s32DecMode, <variable>.stChanCfg.s32DecMode
	cmp	r8, #0	@ <variable>.stChanCfg.s32DecMode,
	beq	.L1424	@,
.L1398:
	mov	r3, #0	@ i,
.L1403:
	mov	r0, r5	@, MaxPriChan.4307
	str	r3, [fp, #-72]	@,
	bl	DecChanSyntax	@
	ldr	r3, [fp, #-72]	@,
	cmn	r0, #1	@ ret,
	mov	r8, r0	@ ret,
	beq	.L1425	@,
	cmp	r0, #0	@ ret,
	bne	.L1408	@,
	add	r3, r3, #1	@ i, i,
	cmp	r3, #200	@ i,
	beq	.L1408	@,
	b	.L1403	@
.L1396:
	str	r7, [r6, #156]	@ MaxPriChan.4307, s_VfmwCTrl.s32ThisChanIDPlus1
.L1402:
	mov	r0, r8	@, ret
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L1424:
	mov	r0, r5	@, MaxPriChan.4307
	mov	r1, r9	@, tmp312
	bl	SM_GetInfo	@
	cmp	r0, #0	@,
	beq	.L1399	@,
	mov	r0, r9	@, tmp312
	mov	r1, #24	@,
	bl	__memzero	@
.L1399:
	ldr	r8, [r6, r5, asl #2]	@ temp.4269, s_pstVfmwChan
	ldr	r1, [fp, #-56]	@, stScdInstInfo.TotalRawSize
	ldr	r0, [r8, #568]	@, <variable>.stSynExtraData.s32DecMode
	ldr	r2, [r8, #68]	@, <variable>.stChanCfg.s32ChanStrmOFThr
	bl	GetNextDecodeMode	@
	str	r0, [r8, #568]	@, <variable>.stSynExtraData.s32DecMode
	ldr	r3, [r6, r5, asl #2]	@ temp.4271, s_pstVfmwChan
	ldr	r0, [r3, #568]	@ <variable>.stSynExtraData.s32DecMode, <variable>.stSynExtraData.s32DecMode
	cmp	r0, #0	@ <variable>.stSynExtraData.s32DecMode,
	strne	r7, [r3, #564]	@ MaxPriChan.4307, <variable>.stSynExtraData.s32OutErrThr
	ldreq	r0, [r3, #64]	@ <variable>.stChanCfg.s32ChanErrThr, <variable>.stChanCfg.s32ChanErrThr
	ldrne	r3, [sl, r5, asl #2]	@ tmp293, s_pstVfmwChan
	streq	r0, [r3, #564]	@ <variable>.stChanCfg.s32ChanErrThr, <variable>.stSynExtraData.s32OutErrThr
	ldreq	r3, [sl, r5, asl #2]	@ temp.4274, s_pstVfmwChan
	strne	r7, [r3, #560]	@ MaxPriChan.4307, <variable>.stSynExtraData.s32RefErrThr
	ldreq	r0, [r3, #64]	@ <variable>.stChanCfg.s32ChanErrThr, <variable>.stChanCfg.s32ChanErrThr
	streq	r0, [r3, #560]	@ <variable>.stChanCfg.s32ChanErrThr, <variable>.stSynExtraData.s32RefErrThr
	b	.L1398	@
.L1425:
	ldr	ip, [r6, #64]	@ g_event_report.662, g_event_report
	cmp	ip, #0	@ g_event_report.662,
	beq	.L1402	@,
	mov	r2, #0	@,
	mov	r0, r5	@, MaxPriChan.4307
	mov	r1, #102	@,
	mov	r3, r2	@,
	blx	ip	@ g_event_report.662
	b	.L1402	@
	.fnend
	.size	DecSyntax, .-DecSyntax
	.align	2
	.global	VCTRL_IsChanDecable
	.type	VCTRL_IsChanDecable, %function
VCTRL_IsChanDecable:
	.fnstart
.LFB1596:
	@ args = 0, pretend = 0, frame = 24
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp149,
	movt	r4, #:upper16:.LANCHOR0	@ tmp149,
	mov	r5, r0	@ ChanID, ChanID
	ldr	r3, [r4, r0, asl #2]	@ tmp140, s_pstVfmwChan
	cmp	r3, #0	@ tmp140,
	beq	.L1429	@,
	sub	r1, fp, #44	@,,
	bl	SM_GetInfo	@
	cmp	r0, #0	@,
	bne	.L1429	@,
	ldr	r0, [fp, #-36]	@ SmInstInfo.SegNum, SmInstInfo.SegNum
	cmp	r0, #16	@ SmInstInfo.SegNum,
	bgt	.L1430	@,
	ldr	r1, [fp, #-28]	@ SmInstInfo.TotalSegSize, SmInstInfo.TotalSegSize
	cmp	r1, #524288	@ SmInstInfo.TotalSegSize,
	bgt	.L1430	@,
.L1429:
	mvn	r0, #0	@ ret,
.L1428:
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L1430:
	mov	r0, r5	@, ChanID
	bl	VCTRL_GetImageBuffer	@
	cmp	r0, #1	@,
	bne	.L1429	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r4, r5, asl #2]	@ tmp146, s_pstVfmwChan
	ldr	ip, [r3, #44]	@ <variable>.u32timeLastDecParamReady, <variable>.u32timeLastDecParamReady
	rsb	r2, ip, r0	@ tmp147, <variable>.u32timeLastDecParamReady,
	cmp	r2, #50	@ tmp147,
	movls	r0, #0	@ ret,
	bls	.L1428	@,
	b	.L1429	@
	.fnend
	.size	VCTRL_IsChanDecable, .-VCTRL_IsChanDecable
	.align	2
	.global	VCTRL_FlushDecoder
	.type	VCTRL_FlushDecoder, %function
VCTRL_FlushDecoder:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp184,
	movt	r4, #:upper16:.LANCHOR0	@ tmp184,
	mov	r5, r0	@ ChanID, ChanID
	ldr	r0, [r4, r0, asl #2]	@ D.52351, s_pstVfmwChan
	cmp	r0, #0	@ D.52351,
	beq	.L1452	@,
	movw	r1, #:lower16:251592	@ tmp143,
	movt	r1, #:upper16:251592	@ tmp143,
	ldr	r3, [r0, r1]	@ <variable>.stSynCtx.eVidStd, <variable>.stSynCtx.eVidStd
	cmp	r3, #16	@ <variable>.stSynCtx.eVidStd,
	ldrls	pc, [pc, r3, asl #2]	@ <variable>.stSynCtx.eVidStd
	b	.L1436	@
.L1449:
	.word	.L1437
	.word	.L1438
	.word	.L1439
	.word	.L1440
	.word	.L1436
	.word	.L1441
	.word	.L1442
	.word	.L1436
	.word	.L1443
	.word	.L1444
	.word	.L1445
	.word	.L1445
	.word	.L1445
	.word	.L1446
	.word	.L1436
	.word	.L1447
	.word	.L1448
.L1437:
	add	lr, r0, #250880	@, D.52351,
	add	r0, lr, #720	@,,
	bl	H264_FlushDecoder	@
	bl	VDMDRV_WakeUpVdm	@
	bl	VDMDRV_WakeUpVdm	@
	ldr	r3, [r4, r5, asl #2]	@ tmp154, s_pstVfmwChan
	add	ip, r3, #250880	@, tmp154,
	add	r0, ip, #720	@,,
	bl	FlushDPB	@
	cmp	r0, #0	@,
	bne	.L1453	@,
.L1436:
	mov	r0, #0	@ D.52355,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L1438:
	add	r2, r0, #250880	@, D.52351,
	add	r0, r2, #720	@,,
	bl	VC1DEC_GetRemainImg	@
	mov	r0, #0	@ D.52355,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L1439:
	add	r2, r0, #250880	@, D.52351,
	add	r0, r2, #720	@,,
	bl	MPEG4DEC_GetRemainImg	@
	mov	r0, #0	@ D.52355,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L1440:
	add	r0, r0, #250880	@, D.52351,
	add	r0, r0, #720	@,,
	bl	MPEG2DEC_GetRemainImg	@
	mov	r0, #0	@ D.52355,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L1441:
	add	r1, r0, #250880	@, D.52351,
	add	r0, r1, #720	@,,
	bl	DIVX3DEC_GetRemainImg	@
	mov	r0, #0	@ D.52355,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L1442:
	add	r3, r0, #250880	@, D.52351,
	add	r0, r3, #720	@,,
	bl	AVSDEC_GetRemainImg	@
	mov	r0, #0	@ D.52355,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L1443:
	add	lr, r0, #250880	@, D.52351,
	add	r0, lr, #720	@,,
	bl	REAL8DEC_GetRemainImg	@
	mov	r0, #0	@ D.52355,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L1444:
	add	r0, r0, #250880	@, D.52351,
	add	r0, r0, #720	@,,
	bl	REAL9DEC_GetRemainImg	@
	mov	r0, #0	@ D.52355,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L1445:
	add	ip, r0, #250880	@, D.52351,
	add	r0, ip, #720	@,,
	bl	VP6DEC_GetRemainImg	@
	mov	r0, #0	@ D.52355,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L1446:
	add	r3, r0, #250880	@, D.52351,
	add	r0, r3, #720	@,,
	bl	VP8DEC_GetRemainImg	@
	mov	r0, #0	@ D.52355,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L1447:
	add	ip, r0, #250880	@, D.52351,
	add	r0, ip, #720	@,,
	bl	MVC_FlushDecoder	@
	bl	VDMDRV_WakeUpVdm	@
	bl	VDMDRV_WakeUpVdm	@
	ldr	r2, [r4, r5, asl #2]	@ tmp165, s_pstVfmwChan
	mvn	r1, #0	@,
	add	r0, r2, #250880	@, tmp165,
	add	r0, r0, #720	@,,
	bl	MVC_FlushDPB	@
	cmp	r0, #0	@,
	beq	.L1436	@,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC230	@,
	ldr	r2, .L1455	@,
	movt	r1, #:upper16:.LC230	@,
	movw	r3, #4877	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.52355,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L1448:
	add	r1, r0, #250880	@, D.52351,
	add	r0, r1, #720	@,,
	bl	HEVC_FlushOutputFrmFromDPB	@
	cmp	r0, #0	@,
	bne	.L1454	@,
.L1450:
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC229	@,
	movt	r1, #:upper16:.LC229	@,
	bl	dprint_vfmw	@
	bl	VDMDRV_WakeUpVdm	@
	bl	VDMDRV_WakeUpVdm	@
	mov	r0, #0	@ D.52355,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L1454:
	movw	r1, #:lower16:.LC228	@,
	movw	r2, #4863	@,
	movt	r1, #:upper16:.LC228	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	b	.L1450	@
.L1453:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC228	@,
	movw	r2, #4855	@,
	movt	r1, #:upper16:.LC228	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.52355,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L1452:
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #4834	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r3, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.52355,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L1456:
	.align	2
.L1455:
	.word	.LANCHOR1+248
	.fnend
	.size	VCTRL_FlushDecoder, .-VCTRL_FlushDecoder
	.align	2
	.global	VCTRL_PostProc
	.type	VCTRL_PostProc, %function
VCTRL_PostProc:
	.fnstart
.LFB1590:
	@ args = 4, pretend = 0, frame = 0
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp274,
	movt	r4, #:upper16:.LANCHOR0	@ tmp274,
	mov	r5, r0	@ ChanId, ChanId
	ldr	ip, [fp, #4]	@ VdhId, VdhId
	ldr	r0, [r4, r0, asl #2]	@ D.52265, s_pstVfmwChan
	cmp	r0, #0	@ D.52265,
	beq	.L1491	@,
	ldr	r7, [r0, #552]	@ <variable>.eVidStd, <variable>.eVidStd
	ldr	r6, [r0, #1264]	@ ModuleLowlyEnable, <variable>.stSynExtraData.s32ModuleLowlyEnable
	cmp	r7, #16	@ <variable>.eVidStd,
	ldrls	pc, [pc, r7, asl #2]	@ <variable>.eVidStd
	b	.L1480	@
.L1472:
	.word	.L1460
	.word	.L1461
	.word	.L1462
	.word	.L1463
	.word	.L1480
	.word	.L1464
	.word	.L1465
	.word	.L1480
	.word	.L1466
	.word	.L1467
	.word	.L1468
	.word	.L1468
	.word	.L1468
	.word	.L1469
	.word	.L1480
	.word	.L1470
	.word	.L1471
.L1460:
	add	r2, r0, #250880	@, D.52265,
	str	ip, [sp, #4]	@ VdhId,
	add	r0, r2, #720	@,,
	mov	r2, #1	@,
	str	r6, [sp, #0]	@ ModuleLowlyEnable,
	bl	H264DEC_VDMPostProc	@
	ldr	r0, [r4, r5, asl #2]	@ tmp152, s_pstVfmwChan
	movw	r7, #:lower16:265160	@ tmp153,
	movt	r7, #:upper16:265160	@ tmp153,
	movw	r8, #:lower16:.LANCHOR0	@ tmp151,
	movt	r8, #:upper16:.LANCHOR0	@ tmp151,
	ldrb	r3, [r0, r7]	@ zero_extendqisi2	@ <variable>.stSynCtx.unSyntax.stH264Ctx.IsStreamEndFlag, <variable>.stSynCtx.unSyntax.stH264Ctx.IsStreamEndFlag
	cmp	r3, #1	@ <variable>.stSynCtx.unSyntax.stH264Ctx.IsStreamEndFlag,
	beq	.L1492	@,
.L1473:
	cmp	r6, #1	@ ModuleLowlyEnable,
	beq	.L1480	@,
	ldr	r0, [r4, r5, asl #2]	@ tmp161, s_pstVfmwChan
	movw	r3, #:lower16:251960	@ tmp162,
	movt	r3, #:upper16:251960	@ tmp162,
	mov	lr, #0	@ tmp163,
	str	lr, [r0, r3]	@ tmp163,
.L1480:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L1471:
	add	r7, r0, #250880	@, D.52265,
	mov	r2, #1	@,
	add	r0, r7, #720	@,,
	stmia	sp, {r6, ip}	@ phole stm
	bl	HEVCDEC_VDMPostProc	@
	ldr	r1, [r4, r5, asl #2]	@ tmp167, s_pstVfmwChan
	movw	r7, #:lower16:251606	@ tmp168,
	movt	r7, #:upper16:251606	@ tmp168,
	movw	r8, #:lower16:.LANCHOR0	@ tmp166,
	movt	r8, #:upper16:.LANCHOR0	@ tmp166,
	ldrb	r2, [r1, r7]	@ zero_extendqisi2	@ <variable>.stSynCtx.unSyntax.stHevcCtx.IsStreamEndFlag, <variable>.stSynCtx.unSyntax.stHevcCtx.IsStreamEndFlag
	cmp	r2, #1	@ <variable>.stSynCtx.unSyntax.stHevcCtx.IsStreamEndFlag,
	beq	.L1493	@,
.L1474:
	cmp	r6, #1	@ ModuleLowlyEnable,
	beq	.L1480	@,
	ldr	r2, [r4, r5, asl #2]	@ tmp176, s_pstVfmwChan
	movw	r3, #:lower16:2211792	@ tmp177,
	movt	r3, #:upper16:2211792	@ tmp177,
	mov	lr, #0	@ tmp178,
	str	lr, [r2, r3]	@ tmp178,
	b	.L1480	@
.L1461:
	add	r2, r0, #250880	@, D.52265,
	movw	r6, #:lower16:329855	@ tmp239,
	add	r0, r2, #720	@,,
	movt	r6, #:upper16:329855	@ tmp239,
	bl	VC1DEC_VDMPostProc	@
	ldr	r2, [r4, r5, asl #2]	@ prephitmp.4439, s_pstVfmwChan
.L1490:
	ldrb	lr, [r2, r6]	@ zero_extendqisi2	@ <variable>.stSynCtx.unSyntax.stVc1Ctx.CodecInfo.IsStreamEndFlag,
	movw	r4, #:lower16:.LANCHOR0	@ tmp238,
	movt	r4, #:upper16:.LANCHOR0	@ tmp238,
	cmp	lr, #1	@ <variable>.stSynCtx.unSyntax.stVc1Ctx.CodecInfo.IsStreamEndFlag,
	beq	.L1494	@,
.L1484:
	movw	r0, #:lower16:251604	@ tmp234,
	movt	r0, #:upper16:251604	@ tmp234,
	mov	r1, #0	@ tmp235,
	str	r1, [r2, r0]	@ tmp235,
	b	.L1480	@
.L1462:
	add	ip, r0, #250880	@, D.52265,
	mov	r2, r3	@, pLumaInfo
	add	r0, ip, #720	@,,
	movw	r6, #:lower16:.LANCHOR0	@ tmp194,
	bl	MPEG4DEC_VDMPostProc	@
	ldr	r2, [r4, r5, asl #2]	@ prephitmp.4433, s_pstVfmwChan
	movw	r4, #:lower16:308408	@ tmp195,
	movt	r4, #:upper16:308408	@ tmp195,
	movt	r6, #:upper16:.LANCHOR0	@ tmp194,
	ldrb	r1, [r2, r4]	@ zero_extendqisi2	@ <variable>.stSynCtx.unSyntax.stMpeg4Ctx.IsStreamEndFlag, <variable>.stSynCtx.unSyntax.stMpeg4Ctx.IsStreamEndFlag
	cmp	r1, #1	@ <variable>.stSynCtx.unSyntax.stMpeg4Ctx.IsStreamEndFlag,
	beq	.L1495	@,
.L1476:
	movw	r3, #:lower16:252636	@ tmp203,
	movt	r3, #:upper16:252636	@ tmp203,
	mov	lr, #0	@ tmp204,
	str	lr, [r2, r3]	@ tmp204,
	b	.L1480	@
.L1463:
	add	r6, r0, #250880	@, D.52265,
	add	r0, r6, #720	@,,
	movw	r6, #:lower16:366290	@ tmp182,
	bl	MPEG2DEC_VDMPostProc	@
	movt	r6, #:upper16:366290	@ tmp182,
	ldr	r2, [r4, r5, asl #2]	@ prephitmp.4430, s_pstVfmwChan
	b	.L1490	@
.L1464:
	add	ip, r0, #250880	@, D.52265,
	add	r0, ip, #720	@,,
	bl	DIVX3DEC_VDMPostProc	@
	ldr	r2, [r4, r5, asl #2]	@ tmp233, s_pstVfmwChan
	b	.L1484	@
.L1465:
	add	r6, r0, #250880	@, D.52265,
	add	r0, r6, #720	@,,
	movw	r6, #:lower16:268724	@ tmp208,
	bl	AVSDEC_VDMPostProc	@
	movt	r6, #:upper16:268724	@ tmp208,
	ldr	r2, [r4, r5, asl #2]	@ prephitmp.4436, s_pstVfmwChan
	b	.L1490	@
.L1466:
	add	lr, r0, #250880	@, D.52265,
	add	r0, lr, #720	@,,
	bl	REAL8DEC_VDMPostProc	@
	ldr	ip, [r4, r5, asl #2]	@ tmp221, s_pstVfmwChan
	movw	r0, #:lower16:251604	@ tmp222,
	movt	r0, #:upper16:251604	@ tmp222,
	mov	r1, #0	@ tmp223,
	str	r1, [ip, r0]	@ tmp223,
	b	.L1480	@
.L1467:
	add	r3, r0, #250880	@, D.52265,
	add	r0, r3, #720	@,,
	bl	REAL9DEC_VDMPostProc	@
	ldr	r2, [r4, r5, asl #2]	@ tmp233, s_pstVfmwChan
	b	.L1484	@
.L1468:
	add	r0, r0, #250880	@, D.52265,
	add	r0, r0, #720	@,,
	bl	VP6DEC_VDMPostProc	@
	ldr	r2, [r4, r5, asl #2]	@ tmp233, s_pstVfmwChan
	b	.L1484	@
.L1469:
	add	r2, r0, #250880	@, D.52265,
	add	r0, r2, #720	@,,
	bl	VP8DEC_VDMPostProc	@
	ldr	r2, [r4, r5, asl #2]	@ tmp233, s_pstVfmwChan
	b	.L1484	@
.L1470:
	add	r6, r0, #250880	@, D.52265,
	mov	r2, #1	@,
	add	r0, r6, #720	@,,
	movw	r6, #:lower16:.LANCHOR0	@ tmp263,
	bl	MVC_DEC_VDMPostProc	@
	ldr	r2, [r4, r5, asl #2]	@ prephitmp.4400, s_pstVfmwChan
	movw	r4, #:lower16:251601	@ tmp264,
	movt	r4, #:upper16:251601	@ tmp264,
	movt	r6, #:upper16:.LANCHOR0	@ tmp263,
	ldrb	r1, [r2, r4]	@ zero_extendqisi2	@ <variable>.stSynCtx.unSyntax.stMvcCtx.IsStreamEndFlag, <variable>.stSynCtx.unSyntax.stMvcCtx.IsStreamEndFlag
	cmp	r1, #1	@ <variable>.stSynCtx.unSyntax.stMvcCtx.IsStreamEndFlag,
	beq	.L1496	@,
.L1479:
	movw	r0, #:lower16:251828	@ tmp272,
	movt	r0, #:upper16:251828	@ tmp272,
	mov	lr, #0	@ tmp273,
	str	lr, [r2, r0]	@ tmp273,
	b	.L1480	@
.L1491:
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #4671	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r3, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	b	.L1480	@
.L1494:
	mov	r0, r5	@, ChanId
	bl	VCTRL_OutputLastFrame	@
	ldr	r3, [r4, r5, asl #2]	@ tmp242, s_pstVfmwChan
	mov	ip, #0	@ tmp244,
	strb	ip, [r3, r6]	@ tmp244,
	ldr	r2, [r4, r5, asl #2]	@ prephitmp.4439, s_pstVfmwChan
	b	.L1484	@
.L1495:
	mov	r0, r5	@, ChanId
	bl	VCTRL_OutputLastFrame	@
	ldr	r2, [r6, r5, asl #2]	@ tmp198, s_pstVfmwChan
	mov	r0, #0	@ tmp200,
	strb	r0, [r2, r4]	@ tmp200, <variable>.stSynCtx.unSyntax.stMpeg4Ctx.IsStreamEndFlag
	ldr	r2, [r6, r5, asl #2]	@ prephitmp.4433, s_pstVfmwChan
	b	.L1476	@
.L1496:
	mov	r0, r5	@, ChanId
	bl	VCTRL_OutputLastFrame	@
	ldr	r3, [r6, r5, asl #2]	@ tmp267, s_pstVfmwChan
	mov	ip, #0	@ tmp269,
	strb	ip, [r3, r4]	@ tmp269, <variable>.stSynCtx.unSyntax.stMvcCtx.IsStreamEndFlag
	ldr	r2, [r6, r5, asl #2]	@ prephitmp.4400, s_pstVfmwChan
	b	.L1479	@
.L1492:
	mov	r0, r5	@, ChanId
	bl	VCTRL_OutputLastFrame	@
	ldr	ip, [r8, r5, asl #2]	@ tmp156, s_pstVfmwChan
	mov	r1, #0	@ tmp158,
	strb	r1, [ip, r7]	@ tmp158, <variable>.stSynCtx.unSyntax.stH264Ctx.IsStreamEndFlag
	b	.L1473	@
.L1493:
	mov	r0, r5	@, ChanId
	bl	VCTRL_OutputLastFrame	@
	ldr	r0, [r8, r5, asl #2]	@ tmp171, s_pstVfmwChan
	mov	ip, #0	@ tmp173,
	strb	ip, [r0, r7]	@ tmp173, <variable>.stSynCtx.unSyntax.stHevcCtx.IsStreamEndFlag
	b	.L1474	@
	.fnend
	.size	VCTRL_PostProc, .-VCTRL_PostProc
	.align	2
	.global	VCTRL_VdmPostProc
	.type	VCTRL_VdmPostProc, %function
VCTRL_VdmPostProc:
	.fnstart
.LFB1591:
	@ args = 4, pretend = 0, frame = 0
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
	cmp	r0, #15	@ ChanId,
	mov	r4, r0	@ ChanId, ChanId
	mov	r7, r1	@ ErrRatio, ErrRatio
	mov	r6, r2	@ Mb0QpInCurrPic, Mb0QpInCurrPic
	mov	r5, r3	@ pLumaInfo, pLumaInfo
	bhi	.L1503	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp142,
	movt	r3, #:upper16:.LANCHOR0	@ tmp142,
	ldr	r3, [r3, r0, asl #2]	@ D.52321, s_pstVfmwChan
	cmp	r3, #0	@ D.52321,
	beq	.L1504	@,
	ldr	r1, [r3, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r1, #1	@ <variable>.s32IsRun,
	beq	.L1501	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r3, #:lower16:.LC216	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r2, #4820	@,
	movt	r3, #:upper16:.LC216	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
.L1502:
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L1501:
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	beq	.L1502	@,
	ldr	ip, [fp, #4]	@ VdhId, VdhId
	mov	r0, r4	@, ChanId
	mov	r1, r7	@, ErrRatio
	mov	r2, r6	@, Mb0QpInCurrPic
	mov	r3, r5	@, pLumaInfo
	str	ip, [sp, #0]	@ VdhId,
	bl	VCTRL_PostProc	@
	b	.L1502	@
.L1503:
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #4818	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC28	@,
	mov	r0, #0	@,
	movt	r3, #:upper16:.LC28	@,
	bl	dprint_vfmw	@
	b	.L1502	@
.L1504:
	mov	r0, r3	@, D.52321
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #4819	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC215	@,
	movt	r3, #:upper16:.LC215	@,
	bl	dprint_vfmw	@
	b	.L1502	@
	.fnend
	.size	VCTRL_VdmPostProc, .-VCTRL_VdmPostProc
	.align	2
	.global	VCTRL_ExtAccPostProcess
	.type	VCTRL_ExtAccPostProcess, %function
VCTRL_ExtAccPostProcess:
	.fnstart
.LFB1621:
	@ args = 0, pretend = 0, frame = 136
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #148
	sub	sp, sp, #148	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	ldr	r4, .L1507	@ tmp138,
	sub	r7, fp, #172	@ tmp136,,
	ldr	r5, .L1507+4	@ tmp140,
	mov	r6, r0	@ ChanID, ChanID
	mov	r8, r1	@ ErrorRatio, ErrorRatio
	mov	r0, r7	@, tmp136
	mov	r1, #136	@,
	bl	__memzero	@
	mov	r0, r4	@, tmp138
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r5	@, tmp140
	bl	OSAL_SpinLockIRQ	@
	mov	ip, #0	@ tmp143,
	mov	r1, r8	@, ErrorRatio
	mov	r2, ip	@, tmp143
	mov	r3, r7	@, tmp136
	mov	r0, r6	@, ChanID
	str	ip, [sp, #0]	@ tmp143,
	bl	VCTRL_VdmPostProc	@
	mov	r0, r6	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, r5	@, tmp140
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r4	@, tmp138
	bl	OSAL_SpinUnLockIRQ	@
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L1508:
	.align	2
.L1507:
	.word	.LANCHOR0+520
	.word	.LANCHOR3-1732
	.fnend
	.size	VCTRL_ExtAccPostProcess, .-VCTRL_ExtAccPostProcess
	.align	2
	.global	VCTRL_ReleaseChanImage
	.type	VCTRL_ReleaseChanImage, %function
VCTRL_ReleaseChanImage:
	.fnstart
.LFB1585:
	@ args = 0, pretend = 0, frame = 504
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #504
	sub	sp, sp, #504	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r0, #15	@ ChanID,
	mov	r4, r0	@ ChanID, ChanID
	mov	r6, r1	@ pImage, pImage
	bhi	.L1523	@,
	movw	r5, #:lower16:.LANCHOR0	@ tmp145,
	movt	r5, #:upper16:.LANCHOR0	@ tmp145,
	ldr	r0, [r5, r0, asl #2]	@ D.52066, s_pstVfmwChan
	cmp	r0, #0	@ D.52066,
	beq	.L1524	@,
	ldr	r3, [r0, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	bne	.L1525	@,
	cmp	r1, #0	@ pImage,
	beq	.L1526	@,
	mov	r2, r4	@, ChanID
	ldr	r3, [r1, #196]	@, <variable>.image_id
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC232	@,
	movt	r1, #:upper16:.LC232	@,
	bl	dprint_vfmw	@
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, [r5, r4, asl #2]	@ temp.4518, s_pstVfmwChan
	cmp	r0, #0	@ temp.4518,
	movweq	r1, #:lower16:.LC233	@,
	movweq	r2, #4377	@,
	movteq	r1, #:upper16:.LC233	@,
	beq	.L1522	@,
	ldr	r1, [r0, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r1, #1	@ <variable>.s32IsOpen,
	bne	.L1527	@,
	add	r0, r0, #250880	@, temp.4518,
	mov	r1, r6	@, pImage
	add	r0, r0, #712	@,,
	bl	SYNTAX_ReleaseImage	@
	ldr	r3, [r6, #252]	@ D.52084, <variable>.image_id_1
	cmn	r3, #1	@ D.52084,
	mov	r7, r0	@ ret,
	beq	.L1517	@,
	ldr	r7, [r5, r4, asl #2]	@ tmp167, s_pstVfmwChan
	sub	r1, fp, #532	@,,
	str	r3, [fp, #-336]	@ D.52084, Image_1.image_id
	add	r2, r7, #250880	@, tmp167,
	add	r0, r2, #712	@,,
	bl	SYNTAX_ReleaseImage	@
	mov	r7, r0	@ ret,
.L1517:
	mov	r0, #13	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L1528	@,
.L1518:
	cmp	r7, #1	@ ret,
	beq	.L1529	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC235	@,
	ldr	r2, .L1530	@,
	movt	r1, #:upper16:.LC235	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ ret.4514,
.L1520:
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinUnLockIRQ	@
.L1511:
	mov	r0, r4	@, ret.4514
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L1528:
	bl	OSAL_GetTimeInMs	@
	movw	r3, #:lower16:.LANCHOR3	@ tmp170,
	movt	r3, #:upper16:.LANCHOR3	@ tmp170,
	movw	r2, #:lower16:g_TraceImgPeriod	@ tmp177,
	add	r3, r3, r4, asl #2	@, tmp173, tmp170, ChanID,
	movt	r2, #:upper16:g_TraceImgPeriod	@ tmp177,
	ldr	r1, [r3, #-1720]	@ tmp176, last_rec_pos_time
	mov	ip, r0	@ currtime,
	ldr	r0, [r2, #0]	@ g_TraceImgPeriod, g_TraceImgPeriod
	rsb	r1, r1, ip	@ tmp175, tmp176, currtime
	cmp	r1, r0	@ tmp175, g_TraceImgPeriod
	bls	.L1518	@,
	mov	r4, r4, asl #24	@ tmp186, ChanID,
	ldr	r0, .L1530	@,
	add	r2, r4, #851968	@ tmp187, tmp186,
	movw	r1, #4414	@,
	cmp	r7, #1	@ ret,
	addeq	r2, r2, #1	@,,, tmp187
	str	ip, [r3, #-1720]	@ currtime, last_rec_pos_time
	bl	DBG_AddTrace	@
	b	.L1518	@
.L1529:
	mov	r4, #0	@ ret.4514,
	b	.L1520	@
.L1527:
	movw	r1, #:lower16:.LC234	@,
	movt	r1, #:upper16:.LC234	@,
	movw	r2, #4383	@,
	mov	r0, #0	@,
.L1522:
	bl	dprint_vfmw	@
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	mvn	r4, #0	@ ret.4514,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L1511	@
.L1525:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #4369	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC215	@,
	movt	r3, #:upper16:.LC215	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ ret.4514,
	b	.L1511	@
.L1523:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #4367	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ ret.4514,
	b	.L1511	@
.L1526:
	mov	r0, r1	@, pImage
	movw	r2, #4370	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r3, #:lower16:.LC231	@,
	movt	r1, #:upper16:.LC5	@,
	movt	r3, #:upper16:.LC231	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ ret.4514,
	b	.L1511	@
.L1524:
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #4368	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r3, #:upper16:.LC10	@,
	mvn	r4, #0	@ ret.4514,
	bl	dprint_vfmw	@
	b	.L1511	@
.L1531:
	.align	2
.L1530:
	.word	.LANCHOR1+268
	.fnend
	.size	VCTRL_ReleaseChanImage, .-VCTRL_ReleaseChanImage
	.align	2
	.global	VCTRL_GetChanImage
	.type	VCTRL_GetChanImage, %function
VCTRL_GetChanImage:
	.fnstart
.LFB1584:
	@ args = 0, pretend = 0, frame = 512
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #548
	sub	sp, sp, #548	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r5, r0	@ ChanID, ChanID
	mov	r4, r1	@ pImage, pImage
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC236	@,
	mov	r2, r5	@, ChanID
	movt	r1, #:upper16:.LC236	@,
	bl	dprint_vfmw	@
	cmp	r5, #15	@ ChanID,
	bhi	.L1556	@,
	movw	r6, #:lower16:.LANCHOR0	@ tmp327,
	movt	r6, #:upper16:.LANCHOR0	@ tmp327,
	ldr	r0, [r6, r5, asl #2]	@ D.51943, s_pstVfmwChan
	cmp	r0, #0	@ D.51943,
	beq	.L1557	@,
	ldr	r3, [r0, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	bne	.L1558	@,
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, [r6, r5, asl #2]	@ temp.4561, s_pstVfmwChan
	cmp	r0, #0	@ temp.4561,
	movweq	r1, #:lower16:.LC233	@,
	movweq	r2, #4161	@,
	movteq	r1, #:upper16:.LC233	@,
	beq	.L1555	@,
	ldr	r1, [r0, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r1, #1	@ <variable>.s32IsOpen,
	bne	.L1559	@,
	add	r0, r0, #250880	@, temp.4561,
	mov	r1, r4	@, pImage
	add	r0, r0, #712	@,,
	bl	SYNTAX_ReceiveImage	@
	cmp	r0, #1	@ ret,
	movne	r3, #0	@, D.51957
	moveq	r3, #1	@, D.51957
	mov	r7, r0	@ ret,
	cmp	r4, #0	@ pImage,
	moveq	r2, #0	@, tmp170
	andne	r2, r3, #1	@,, tmp170, D.51957
	cmp	r2, #0	@ tmp170,
	bne	.L1560	@,
	cmp	r3, #0	@ D.51957,
	bne	.L1540	@,
.L1542:
	mov	r0, #12	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L1561	@,
.L1550:
	cmp	r7, #1	@ ret,
	mvnne	r7, #0	@ ret,
	beq	.L1562	@,
.L1552:
	ldr	ip, [r6, r5, asl #2]	@ tmp319, s_pstVfmwChan
	movw	lr, #:lower16:267684	@ tmp320,
	movt	lr, #:upper16:267684	@ tmp320,
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	ldrb	r3, [ip, lr]	@ zero_extendqisi2	@ <variable>.stSynCtx.unSyntax.stAvsCtx.SyntaxNew.bAvsPlus, <variable>.stSynCtx.unSyntax.stAvsCtx.SyntaxNew.bAvsPlus
	strb	r3, [r4, #480]	@ <variable>.stSynCtx.unSyntax.stAvsCtx.SyntaxNew.bAvsPlus, <variable>.optm_inf.bAvsPlus
	bl	OSAL_SpinUnLockIRQ	@
.L1534:
	mov	r0, r7	@, ret
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L1560:
	movw	r3, #:lower16:.LANCHOR3	@ tmp171,
	movt	r3, #:upper16:.LANCHOR3	@ tmp171,
	add	r8, r3, r5, asl #2	@, tmp174, tmp171, ChanID,
	ldr	r0, [r8, #-1656]	@ D.51962, vfmw_save_yuv_file
	cmp	r0, #0	@ D.51962,
	beq	.L1540	@,
	ldr	r7, [r4, #160]	@ <variable>.format, <variable>.format
	ldr	lr, [r3, #-1528]	@ save_yuv_with_crop, save_yuv_with_crop
	tst	r7, #28	@ <variable>.format,
	movne	ip, #0	@, tmp179
	moveq	ip, #1	@, tmp179
	cmp	lr, #0	@ save_yuv_with_crop,
	beq	.L1541	@,
	ldr	lr, [r4, #352]	@, <variable>.bottom_offset
	ldr	r9, [r4, #348]	@ <variable>.top_offset, <variable>.top_offset
	ldr	r1, [r4, #32]	@ <variable>.luma_vir_addr, <variable>.luma_vir_addr
	ldr	r2, [r4, #36]	@ <variable>.chrom_vir_addr, <variable>.chrom_vir_addr
	ldr	r3, [r4, #164]	@ <variable>.image_width, <variable>.image_width
	ldr	r7, [r4, #192]	@ <variable>.image_stride, <variable>.image_stride
	ldr	r8, [r4, #340]	@ <variable>.left_offset, <variable>.left_offset
	ldr	sl, [r4, #344]	@ <variable>.right_offset, <variable>.right_offset
	str	lr, [fp, #-552]	@, %sfp
	ldr	lr, [r4, #168]	@, <variable>.image_height
	str	r9, [sp, #24]	@ <variable>.top_offset,
	ldr	r9, [fp, #-552]	@, %sfp
	str	lr, [sp, #0]	@,
	mov	lr, #0	@ tmp186,
	str	r7, [sp, #8]	@ <variable>.image_stride,
	str	lr, [sp, #4]	@ tmp186,
	str	ip, [sp, #12]	@ tmp179,
	str	r8, [sp, #16]	@ <variable>.left_offset,
	str	sl, [sp, #20]	@ <variable>.right_offset,
	str	r9, [sp, #28]	@,
	bl	DBG_WriteBigTileYuv	@
.L1540:
	ldr	ip, [r4, #256]	@ <variable>.is_3D, <variable>.is_3D
	mvn	r8, #0	@ tmp202,
	str	r8, [r4, #252]	@ tmp202, <variable>.image_id_1
	cmp	ip, #1	@ <variable>.is_3D,
	movne	r7, #1	@ ret,
	bne	.L1542	@,
.L1564:
	ldr	sl, [r4, #244]	@ <variable>.last_frame, <variable>.last_frame
	cmp	sl, #0	@ <variable>.last_frame,
	beq	.L1563	@,
	add	sl, r4, #420	@ tmp285, pImage,
	ldr	r9, [r4, #92]	@, <variable>.top_chrom_phy_addr
	add	lr, r4, #280	@ tmp284, pImage,
	mov	r7, ip	@ ret, <variable>.is_3D
	ldmia	sl!, {r0, r1, r2, r3}	@ tmp287,,,,
	str	r9, [r4, #264]	@, <variable>.top_chrom_phy_addr_1
	ldr	r9, [r4, #88]	@, <variable>.top_luma_phy_addr
	str	r9, [r4, #260]	@, <variable>.top_luma_phy_addr_1
	mov	r9, lr	@ tmp286, tmp284
	mov	lr, sl	@ tmp341, tmp287
	stmia	r9!, {r0, r1, r2, r3}	@ tmp286,,,,
	mov	sl, r9	@ tmp342, tmp286
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp341,,,,
	stmia	sl!, {r0, r1, r2, r3}	@ tmp342,,,,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp343,,,,
	stmia	sl!, {r0, r1, r2, r3}	@ tmp342,,,,
	ldmia	lr, {r0, r1, r2}	@ tmp343,,,
	stmia	sl, {r0, r1, r2}	@ tmp344,,,
	mov	r1, #3	@ tmp289,
	str	r8, [r4, #252]	@ tmp202, <variable>.image_id_1
	str	r1, [r4, #364]	@ tmp289, <variable>.eFramePackingType
	str	ip, [r4, #244]	@ <variable>.is_3D, <variable>.last_frame
	b	.L1542	@
.L1561:
	bl	OSAL_GetTimeInMs	@
	movw	r3, #:lower16:.LANCHOR3	@ tmp291,
	movt	r3, #:upper16:.LANCHOR3	@ tmp291,
	add	r3, r3, r5, asl #2	@, tmp294, tmp291, ChanID,
	ldr	r1, [r3, #-1524]	@ tmp297, last_rec_pos_time
	mov	ip, r0	@ currtime,
	movw	r0, #:lower16:g_TraceImgPeriod	@ tmp298,
	movt	r0, #:upper16:g_TraceImgPeriod	@ tmp298,
	ldr	r2, [r0, #0]	@ g_TraceImgPeriod, g_TraceImgPeriod
	rsb	r0, r1, ip	@ tmp296, tmp297, currtime
	cmp	r0, r2	@ tmp296, g_TraceImgPeriod
	bls	.L1550	@,
	mov	lr, r5, asl #24	@ tmp307, ChanID,
	ldr	r0, .L1569	@,
	add	r2, lr, #786432	@ tmp308, tmp307,
	movw	r1, #4327	@,
	cmp	r7, #1	@ ret,
	addeq	r2, r2, #1	@,,, tmp308
	str	ip, [r3, #-1524]	@ currtime, last_rec_pos_time
	bl	DBG_AddTrace	@
	b	.L1550	@
.L1562:
	mov	r2, #0	@,
	mov	r0, r5	@, ChanID
	mov	r1, #12	@,
	mov	r7, r2	@ ret,
	bl	DBG_CountTimeInfo	@
	ldr	r0, [r6, r5, asl #2]	@ tmp313, s_pstVfmwChan
	ldr	r1, [r4, #160]	@ <variable>.format, <variable>.format
	str	r1, [r0, #328]	@ <variable>.format, <variable>.stRecentImgformat
	ldr	r2, [r6, r5, asl #2]	@ tmp316, s_pstVfmwChan
	ldr	ip, [r4, #364]	@ <variable>.eFramePackingType, <variable>.eFramePackingType
	str	ip, [r2, #332]	@ <variable>.eFramePackingType, <variable>.stRecentImgPackingType
	b	.L1552	@
.L1541:
	ldr	r7, [r4, #168]	@ <variable>.image_height, <variable>.image_height
	ldr	r8, [r4, #192]	@ <variable>.image_stride, <variable>.image_stride
	ldr	r1, [r4, #32]	@ <variable>.luma_vir_addr, <variable>.luma_vir_addr
	ldr	r2, [r4, #36]	@ <variable>.chrom_vir_addr, <variable>.chrom_vir_addr
	ldr	r3, [r4, #164]	@ <variable>.image_width, <variable>.image_width
	str	ip, [sp, #12]	@ tmp179,
	str	r7, [sp, #0]	@ <variable>.image_height,
	str	r8, [sp, #8]	@ <variable>.image_stride,
	mvn	r8, #0	@ tmp202,
	str	lr, [sp, #28]	@ save_yuv_with_crop,
	str	lr, [sp, #4]	@ save_yuv_with_crop,
	str	lr, [sp, #16]	@ save_yuv_with_crop,
	str	lr, [sp, #20]	@ save_yuv_with_crop,
	str	lr, [sp, #24]	@ save_yuv_with_crop,
	bl	DBG_WriteBigTileYuv	@
	ldr	ip, [r4, #256]	@ <variable>.is_3D, <variable>.is_3D
	str	r8, [r4, #252]	@ tmp202, <variable>.image_id_1
	cmp	ip, #1	@ <variable>.is_3D,
	movne	r7, #1	@ ret,
	bne	.L1542	@,
	b	.L1564	@
.L1558:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #4154	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC215	@,
	movt	r3, #:upper16:.LC215	@,
	bl	dprint_vfmw	@
	mvn	r7, #0	@ ret,
	b	.L1534	@
.L1559:
	movw	r1, #:lower16:.LC234	@,
	movt	r1, #:upper16:.LC234	@,
	movw	r2, #4167	@,
	mov	r0, #0	@,
.L1555:
	bl	dprint_vfmw	@
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	mvn	r7, #0	@ ret,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L1534	@
.L1563:
	ldr	r3, [r6, r5, asl #2]	@ tmp208, s_pstVfmwChan
	sub	sl, fp, #548	@ tmp209,,
	movw	r9, #:lower16:.LANCHOR0	@ tmp205,
	movt	r9, #:upper16:.LANCHOR0	@ tmp205,
	add	ip, r3, #250880	@, tmp208,
	mov	r1, sl	@, tmp209
	add	r0, ip, #712	@,,
	bl	SYNTAX_ReceiveImage	@
	cmp	r0, #1	@ ret,
	mov	r7, r0	@ ret,
	bne	.L1565	@,
	ldr	r3, [r4, #248]	@ D.51993, <variable>.view_id
	ldr	r0, [fp, #-300]	@ D.51994, Image_1.view_id
	cmp	r3, r0	@ D.51993, D.51994
	blt	.L1566	@,
	bgt	.L1567	@,
	cmp	r3, #0	@ D.51993,
	bne	.L1548	@,
	ldr	r0, [r9, r5, asl #2]	@ tmp242, s_pstVfmwChan
	add	lr, r0, #250880	@, tmp242,
	add	r0, lr, #712	@,,
	bl	SYNTAX_ReturnImage	@
	ldr	r2, [r9, r5, asl #2]	@ tmp246, s_pstVfmwChan
	mov	r1, r4	@, pImage
	add	ip, r2, #250880	@, tmp246,
	add	r0, ip, #712	@,,
	bl	SYNTAX_ReleaseImage	@
	mov	r0, r7	@, ret
	movw	r1, #:lower16:.LC238	@,
	ldr	r2, .L1569	@,
	movt	r1, #:upper16:.LC238	@,
	ldr	r3, [r4, #248]	@, <variable>.view_id
	mvn	r7, #1	@ ret,
	bl	dprint_vfmw	@
	b	.L1542	@
.L1556:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #4150	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r7, #0	@ ret,
	b	.L1534	@
.L1565:
	ldr	r2, [r9, r5, asl #2]	@ tmp214, s_pstVfmwChan
	add	r1, r2, #250880	@, tmp214,
	add	r0, r1, #712	@,,
	bl	SYNTAX_ReturnImage	@
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L1534	@
.L1566:
	ldr	r8, [fp, #-456]	@ Image_1.top_chrom_phy_addr, Image_1.top_chrom_phy_addr
	sub	lr, fp, #128	@ tmp221,,
	add	ip, r4, #280	@ tmp220, pImage,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp329,,,,
	str	r8, [r4, #264]	@ Image_1.top_chrom_phy_addr, <variable>.top_chrom_phy_addr_1
	ldr	r8, [fp, #-460]	@ Image_1.top_luma_phy_addr, Image_1.top_luma_phy_addr
	str	r8, [r4, #260]	@ Image_1.top_luma_phy_addr, <variable>.top_luma_phy_addr_1
	ldr	r8, [fp, #-452]	@ Image_1.btm_luma_phy_addr, Image_1.btm_luma_phy_addr
	str	r8, [r4, #268]	@ Image_1.btm_luma_phy_addr, <variable>.btm_luma_phy_addr_1
	ldr	r8, [fp, #-448]	@ Image_1.btm_chrom_phy_addr, Image_1.btm_chrom_phy_addr
	str	r8, [r4, #272]	@ Image_1.btm_chrom_phy_addr, <variable>.btm_chrom_phy_addr_1
	mov	r8, ip	@ tmp330, tmp220
	stmia	r8!, {r0, r1, r2, r3}	@ tmp330,,,,
	mov	ip, r8	@ tmp332, tmp330
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp331,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp332,,,,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp333,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp332,,,,
	ldmia	lr, {r0, r1, r2}	@ tmp333,,,
	stmia	ip, {r0, r1, r2}	@ tmp334,,,
	ldr	r3, [fp, #-304]	@ Image_1.last_frame, Image_1.last_frame
	ldr	lr, [fp, #-352]	@ Image_1.image_id, Image_1.image_id
	mov	ip, #3	@ tmp223,
	cmp	r3, #0	@ Image_1.last_frame,
	str	ip, [r4, #364]	@ tmp223, <variable>.eFramePackingType
	str	lr, [r4, #252]	@ Image_1.image_id, <variable>.image_id_1
	strne	r7, [r4, #244]	@ ret, <variable>.last_frame
	b	.L1542	@
.L1548:
	ldr	ip, [r9, r5, asl #2]	@ tmp254, s_pstVfmwChan
	mov	r1, r4	@, pImage
	add	r3, ip, #250880	@, tmp254,
	add	r0, r3, #712	@,,
	bl	SYNTAX_ReleaseImage	@
	ldr	r1, [fp, #-304]	@ Image_1.last_frame, Image_1.last_frame
	cmp	r1, #0	@ Image_1.last_frame,
	beq	.L1568	@,
	ldr	r3, [r4, #248]	@, <variable>.view_id
	mov	r0, r7	@, ret
	ldr	r2, .L1569	@,
	movw	r1, #:lower16:.LC239	@,
	movt	r1, #:upper16:.LC239	@,
	bl	dprint_vfmw	@
	mov	r1, sl	@, tmp209
	mov	r2, #504	@,
	mov	r0, r4	@, pImage
	bl	memcpy	@
	sub	lr, fp, #128	@ tmp278,,
	ldr	sl, [fp, #-456]	@ Image_1.top_chrom_phy_addr, Image_1.top_chrom_phy_addr
	add	ip, r4, #280	@ tmp277, pImage,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp335,,,,
	str	sl, [r4, #264]	@ Image_1.top_chrom_phy_addr, <variable>.top_chrom_phy_addr_1
	ldr	sl, [fp, #-460]	@ Image_1.top_luma_phy_addr, Image_1.top_luma_phy_addr
	str	sl, [r4, #260]	@ Image_1.top_luma_phy_addr, <variable>.top_luma_phy_addr_1
	mov	sl, ip	@ tmp336, tmp277
	mov	ip, lr	@ tmp337, tmp335
	stmia	sl!, {r0, r1, r2, r3}	@ tmp336,,,,
	mov	lr, sl	@ tmp338, tmp336
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp337,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp338,,,,
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp339,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp338,,,,
	ldmia	ip, {r0, r1, r2}	@ tmp339,,,
	stmia	lr, {r0, r1, r2}	@ tmp340,,,
	mov	r0, #3	@ tmp280,
	str	r8, [r4, #252]	@ tmp202, <variable>.image_id_1
	str	r0, [r4, #364]	@ tmp280, <variable>.eFramePackingType
	str	r7, [r4, #244]	@ ret, <variable>.last_frame
	b	.L1542	@
.L1567:
	ldr	r3, [r9, r5, asl #2]	@ tmp229, s_pstVfmwChan
	add	r1, r3, #250880	@, tmp229,
	add	r0, r1, #712	@,,
	bl	SYNTAX_ReturnImage	@
	ldr	r0, [r9, r5, asl #2]	@ tmp233, s_pstVfmwChan
	mov	r1, r4	@, pImage
	add	r2, r0, #250880	@, tmp233,
	add	r0, r2, #712	@,,
	bl	SYNTAX_ReleaseImage	@
	mov	r0, r7	@, ret
	ldr	r7, [fp, #-300]	@ Image_1.view_id, Image_1.view_id
	movw	r1, #:lower16:.LC237	@,
	ldr	r3, [r4, #248]	@ <variable>.view_id, <variable>.view_id
	movt	r1, #:upper16:.LC237	@,
	ldr	r2, .L1569	@,
	str	r7, [sp, #0]	@ Image_1.view_id,
	bl	dprint_vfmw	@
	mvn	r7, #1	@ ret,
	b	.L1542	@
.L1557:
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #4151	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r3, #:upper16:.LC10	@,
	mvn	r7, #0	@ ret,
	bl	dprint_vfmw	@
	b	.L1534	@
.L1568:
	ldr	lr, [r9, r5, asl #2]	@ tmp259, s_pstVfmwChan
	mov	r1, sl	@, tmp209
	add	r2, lr, #250880	@, tmp259,
	add	r0, r2, #712	@,,
	bl	SYNTAX_ReleaseImage	@
	mov	r0, r7	@, ret
	movw	r1, #:lower16:.LC239	@,
	ldr	r2, .L1569	@,
	movt	r1, #:upper16:.LC239	@,
	ldr	r3, [r4, #248]	@, <variable>.view_id
	mvn	r7, #1	@ ret,
	bl	dprint_vfmw	@
	b	.L1542	@
.L1570:
	.align	2
.L1569:
	.word	.LANCHOR1+292
	.fnend
	.size	VCTRL_GetChanImage, .-VCTRL_GetChanImage
	.align	2
	.global	VCTRL_ReleaseStream
	.type	VCTRL_ReleaseStream, %function
VCTRL_ReleaseStream:
	.fnstart
.LFB1582:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r3, r0, asl #2]	@ tmp138, s_pstVfmwChan
	cmp	r3, #0	@ tmp138,
	beq	.L1576	@,
	bl	SM_Reset	@
	cmp	r0, #0	@ ret
	mvnne	r0, #0	@, D.51856,
	ldmfd	sp, {fp, sp, pc}	@
.L1576:
	mov	r0, r3	@, tmp138
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #4029	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r3, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.51856,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_ReleaseStream, .-VCTRL_ReleaseStream
	.align	2
	.global	VCTRL_LoadDspCode
	.type	VCTRL_LoadDspCode, %function
VCTRL_LoadDspCode:
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
	.pad #8
	sub	sp, sp, #8	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r4, #:lower16:.LANCHOR0	@ tmp403,
	movt	r4, #:upper16:.LANCHOR0	@ tmp403,
	movw	r5, #:lower16:.LANCHOR3	@ tmp404,
	movt	r5, #:upper16:.LANCHOR3	@ tmp404,
	mov	r7, r0	@ ChanID, ChanID
	ldr	r2, [r4, r0, asl #2]	@ D.51731, s_pstVfmwChan
	ldr	ip, [r5, #-1460]	@ eDSPState, g_DSPState
	ldr	r3, [r2, #552]	@ D.51732, <variable>.eVidStd
	cmp	r3, #0	@ D.51732,
	movne	r2, #0	@ ScdLowdlyEnable,
	ldreq	r2, [r2, #1268]	@ ScdLowdlyEnable, <variable>.stSynExtraData.s32LowdlyEnable
	cmp	ip, #0	@ eDSPState,
	bne	.L1580	@,
	ldr	ip, [r5, #-1456]	@ eDSPState, g_DSPState
	cmp	ip, #0	@ eDSPState,
	bne	.L1580	@,
	ldr	ip, [r5, #-1452]	@ eDSPState, g_DSPState
	cmp	ip, #0	@ eDSPState,
	bne	.L1580	@,
	ldr	ip, [r5, #-1448]	@ eDSPState, g_DSPState
	cmp	ip, #0	@ eDSPState,
	bne	.L1580	@,
	ldr	ip, [r5, #-1444]	@ eDSPState, g_DSPState
	cmp	ip, #0	@ eDSPState,
	bne	.L1580	@,
	ldr	ip, [r5, #-1440]	@ eDSPState, g_DSPState
	cmp	ip, #0	@ eDSPState,
	bne	.L1580	@,
	ldr	ip, [r5, #-1436]	@ eDSPState, g_DSPState
	cmp	ip, #0	@ eDSPState,
	bne	.L1580	@,
	ldr	ip, [r5, #-1432]	@ eDSPState, g_DSPState
	cmp	ip, #0	@ eDSPState,
	bne	.L1580	@,
	ldr	ip, [r5, #-1428]	@ eDSPState, g_DSPState
	cmp	ip, #0	@ eDSPState,
	bne	.L1580	@,
	ldr	ip, [r5, #-1424]	@ eDSPState, g_DSPState
	cmp	ip, #0	@ eDSPState,
	bne	.L1580	@,
	ldr	ip, [r5, #-1420]	@ eDSPState, g_DSPState
	cmp	ip, #0	@ eDSPState,
	bne	.L1580	@,
	ldr	ip, [r5, #-1416]	@ eDSPState, g_DSPState
	cmp	ip, #0	@ eDSPState,
	bne	.L1580	@,
	ldr	ip, [r5, #-1412]	@ eDSPState, g_DSPState
	cmp	ip, #0	@ eDSPState,
	bne	.L1580	@,
	ldr	ip, [r5, #-1408]	@ eDSPState, g_DSPState
	cmp	ip, #0	@ eDSPState,
	bne	.L1580	@,
	ldr	ip, [r5, #-1404]	@ eDSPState, g_DSPState
	cmp	ip, #0	@ eDSPState,
	bne	.L1580	@,
	ldr	ip, [r5, #-1400]	@ eDSPState, g_DSPState
	cmp	ip, #0	@ eDSPState,
	bne	.L1580	@,
	cmp	r2, #1	@ ScdLowdlyEnable,
	movne	sl, #0	@, D.51742
	moveq	sl, #1	@, D.51742
	mov	r8, #1	@ prephitmp.4657,
.L1584:
	movw	r6, #:lower16:g_vdm_hal_fun_ptr	@ tmp405,
	movt	r6, #:upper16:g_vdm_hal_fun_ptr	@ tmp405,
	ldr	r3, [r6, #0]	@ D.51751, g_vdm_hal_fun_ptr.pfun_VDMDRV_OpenHardware
	cmp	r3, #0	@ D.51751,
	beq	.L1661	@,
	mov	r0, #0	@,
	blx	r3	@ D.51751
.L1588:
	ldr	r3, [r6, #8]	@ D.51756, g_vdm_hal_fun_ptr.pfun_DSPDRV_OpenHardware
	cmp	r3, #0	@ D.51756,
	beq	.L1589	@,
	mov	r0, #0	@,
	blx	r3	@ D.51756
.L1590:
	ands	r1, r8, sl	@ tmp234, prephitmp.4657, D.51742
	beq	.L1591	@,
	ldr	r2, [r4, r7, asl #2]	@ tmp236, s_pstVfmwChan
	add	r5, r5, r7, asl #2	@, tmp241, tmp404, ChanID,
	mov	r1, #0	@,
	ldr	r0, [r2, #552]	@, <variable>.eVidStd
	bl	WriteHexFile	@
	mov	r3, #1	@ tmp243,
	str	r3, [r5, #-1460]	@ tmp243, g_DSPState
.L1592:
	ldr	r0, [r4, #0]	@ temp.4662, s_pstVfmwChan
	cmp	r0, #0	@ temp.4662,
	beq	.L1595	@,
	ldr	r3, [r0, #552]	@ eVidStd.4663, <variable>.eVidStd
	cmp	r3, #0	@ eVidStd.4663,
	beq	.L1594	@,
	mov	r0, #0	@ prephitmp.4664,
.L1596:
	cmp	r3, #6	@ eVidStd.4663,
	orreq	r0, r0, #1	@,, dsp_need_flag, prephitmp.4664
.L1595:
	ldr	r3, [r4, #4]	@ temp.4668, s_pstVfmwChan
	cmp	r3, #0	@ temp.4668,
	beq	.L1597	@,
	ldr	r2, [r3, #552]	@ eVidStd.4669, <variable>.eVidStd
	cmp	r2, #0	@ eVidStd.4669,
	beq	.L1598	@,
	mov	r3, #0	@ prephitmp.4670,
.L1600:
	cmp	r2, #6	@ eVidStd.4669,
	orreq	r3, r3, #1	@,, tmp270, prephitmp.4670
	cmp	r3, #0	@ tmp270,
	movne	r0, #1	@ dsp_need_flag,
.L1597:
	ldr	r3, [r4, #8]	@ temp.4674, s_pstVfmwChan
	cmp	r3, #0	@ temp.4674,
	beq	.L1601	@,
	ldr	r2, [r3, #552]	@ eVidStd.4675, <variable>.eVidStd
	cmp	r2, #0	@ eVidStd.4675,
	beq	.L1602	@,
	mov	r3, #0	@ prephitmp.4676,
.L1604:
	cmp	r2, #6	@ eVidStd.4675,
	orreq	r3, r3, #1	@,, tmp279, prephitmp.4676
	cmp	r3, #0	@ tmp279,
	movne	r0, #1	@ dsp_need_flag,
.L1601:
	ldr	r3, [r4, #12]	@ temp.4680, s_pstVfmwChan
	cmp	r3, #0	@ temp.4680,
	beq	.L1605	@,
	ldr	r2, [r3, #552]	@ eVidStd.4681, <variable>.eVidStd
	cmp	r2, #0	@ eVidStd.4681,
	beq	.L1606	@,
	mov	r3, #0	@ prephitmp.4682,
.L1608:
	cmp	r2, #6	@ eVidStd.4681,
	orreq	r3, r3, #1	@,, tmp288, prephitmp.4682
	cmp	r3, #0	@ tmp288,
	movne	r0, #1	@ dsp_need_flag,
.L1605:
	ldr	r3, [r4, #16]	@ temp.4686, s_pstVfmwChan
	cmp	r3, #0	@ temp.4686,
	beq	.L1609	@,
	ldr	r2, [r3, #552]	@ eVidStd.4687, <variable>.eVidStd
	cmp	r2, #0	@ eVidStd.4687,
	beq	.L1610	@,
	mov	r3, #0	@ prephitmp.4688,
.L1612:
	cmp	r2, #6	@ eVidStd.4687,
	orreq	r3, r3, #1	@,, tmp297, prephitmp.4688
	cmp	r3, #0	@ tmp297,
	movne	r0, #1	@ dsp_need_flag,
.L1609:
	ldr	r3, [r4, #20]	@ temp.4692, s_pstVfmwChan
	cmp	r3, #0	@ temp.4692,
	beq	.L1613	@,
	ldr	r2, [r3, #552]	@ eVidStd.4693, <variable>.eVidStd
	cmp	r2, #0	@ eVidStd.4693,
	beq	.L1614	@,
	mov	r3, #0	@ prephitmp.4694,
.L1616:
	cmp	r2, #6	@ eVidStd.4693,
	orreq	r3, r3, #1	@,, tmp306, prephitmp.4694
	cmp	r3, #0	@ tmp306,
	movne	r0, #1	@ dsp_need_flag,
.L1613:
	ldr	r3, [r4, #24]	@ temp.4698, s_pstVfmwChan
	cmp	r3, #0	@ temp.4698,
	beq	.L1617	@,
	ldr	r2, [r3, #552]	@ eVidStd.4699, <variable>.eVidStd
	cmp	r2, #0	@ eVidStd.4699,
	beq	.L1618	@,
	mov	r3, #0	@ prephitmp.4700,
.L1620:
	cmp	r2, #6	@ eVidStd.4699,
	orreq	r3, r3, #1	@,, tmp315, prephitmp.4700
	cmp	r3, #0	@ tmp315,
	movne	r0, #1	@ dsp_need_flag,
.L1617:
	ldr	r3, [r4, #28]	@ temp.4704, s_pstVfmwChan
	cmp	r3, #0	@ temp.4704,
	beq	.L1621	@,
	ldr	r2, [r3, #552]	@ eVidStd.4705, <variable>.eVidStd
	cmp	r2, #0	@ eVidStd.4705,
	beq	.L1622	@,
	mov	r3, #0	@ prephitmp.4706,
.L1624:
	cmp	r2, #6	@ eVidStd.4705,
	orreq	r3, r3, #1	@,, tmp324, prephitmp.4706
	cmp	r3, #0	@ tmp324,
	movne	r0, #1	@ dsp_need_flag,
.L1621:
	ldr	r3, [r4, #32]	@ temp.4710, s_pstVfmwChan
	cmp	r3, #0	@ temp.4710,
	beq	.L1625	@,
	ldr	r2, [r3, #552]	@ eVidStd.4711, <variable>.eVidStd
	cmp	r2, #0	@ eVidStd.4711,
	beq	.L1626	@,
	mov	r3, #0	@ prephitmp.4712,
.L1628:
	cmp	r2, #6	@ eVidStd.4711,
	orreq	r3, r3, #1	@,, tmp333, prephitmp.4712
	cmp	r3, #0	@ tmp333,
	movne	r0, #1	@ dsp_need_flag,
.L1625:
	ldr	r3, [r4, #36]	@ temp.4716, s_pstVfmwChan
	cmp	r3, #0	@ temp.4716,
	beq	.L1629	@,
	ldr	r2, [r3, #552]	@ eVidStd.4717, <variable>.eVidStd
	cmp	r2, #0	@ eVidStd.4717,
	beq	.L1630	@,
	mov	r3, #0	@ prephitmp.4718,
.L1632:
	cmp	r2, #6	@ eVidStd.4717,
	orreq	r3, r3, #1	@,, tmp342, prephitmp.4718
	cmp	r3, #0	@ tmp342,
	movne	r0, #1	@ dsp_need_flag,
.L1629:
	ldr	r3, [r4, #40]	@ temp.4722, s_pstVfmwChan
	cmp	r3, #0	@ temp.4722,
	beq	.L1633	@,
	ldr	r2, [r3, #552]	@ eVidStd.4723, <variable>.eVidStd
	cmp	r2, #0	@ eVidStd.4723,
	beq	.L1634	@,
	mov	r3, #0	@ prephitmp.4724,
.L1636:
	cmp	r2, #6	@ eVidStd.4723,
	orreq	r3, r3, #1	@,, tmp351, prephitmp.4724
	cmp	r3, #0	@ tmp351,
	movne	r0, #1	@ dsp_need_flag,
.L1633:
	ldr	r3, [r4, #44]	@ temp.4728, s_pstVfmwChan
	cmp	r3, #0	@ temp.4728,
	beq	.L1637	@,
	ldr	r2, [r3, #552]	@ eVidStd.4729, <variable>.eVidStd
	cmp	r2, #0	@ eVidStd.4729,
	beq	.L1638	@,
	mov	r3, #0	@ prephitmp.4730,
.L1640:
	cmp	r2, #6	@ eVidStd.4729,
	orreq	r3, r3, #1	@,, tmp360, prephitmp.4730
	cmp	r3, #0	@ tmp360,
	movne	r0, #1	@ dsp_need_flag,
.L1637:
	ldr	r3, [r4, #48]	@ temp.4734, s_pstVfmwChan
	cmp	r3, #0	@ temp.4734,
	beq	.L1641	@,
	ldr	r2, [r3, #552]	@ eVidStd.4735, <variable>.eVidStd
	cmp	r2, #0	@ eVidStd.4735,
	beq	.L1642	@,
	mov	r3, #0	@ prephitmp.4736,
.L1644:
	cmp	r2, #6	@ eVidStd.4735,
	orreq	r3, r3, #1	@,, tmp369, prephitmp.4736
	cmp	r3, #0	@ tmp369,
	movne	r0, #1	@ dsp_need_flag,
.L1641:
	ldr	r3, [r4, #52]	@ temp.4740, s_pstVfmwChan
	cmp	r3, #0	@ temp.4740,
	beq	.L1645	@,
	ldr	r2, [r3, #552]	@ eVidStd.4741, <variable>.eVidStd
	cmp	r2, #0	@ eVidStd.4741,
	beq	.L1646	@,
	mov	r3, #0	@ prephitmp.4742,
.L1648:
	cmp	r2, #6	@ eVidStd.4741,
	orreq	r3, r3, #1	@,, tmp378, prephitmp.4742
	cmp	r3, #0	@ tmp378,
	movne	r0, #1	@ dsp_need_flag,
.L1645:
	ldr	r3, [r4, #56]	@ temp.4746, s_pstVfmwChan
	cmp	r3, #0	@ temp.4746,
	beq	.L1649	@,
	ldr	r2, [r3, #552]	@ eVidStd.4747, <variable>.eVidStd
	cmp	r2, #0	@ eVidStd.4747,
	beq	.L1650	@,
	mov	r3, #0	@ prephitmp.4748,
.L1652:
	cmp	r2, #6	@ eVidStd.4747,
	orreq	r3, r3, #1	@,, tmp387, prephitmp.4748
	cmp	r3, #0	@ tmp387,
	movne	r0, #1	@ dsp_need_flag,
.L1649:
	ldr	r3, [r4, #60]	@ D.51770, s_pstVfmwChan
	cmp	r3, #0	@ D.51770,
	beq	.L1653	@,
	ldr	r2, [r3, #552]	@ eVidStd, <variable>.eVidStd
	cmp	r2, #0	@ eVidStd,
	movne	r3, #0	@ prephitmp.4638,
	bne	.L1655	@,
	ldr	r1, [r3, #1268]	@ <variable>.stSynExtraData.s32LowdlyEnable, <variable>.stSynExtraData.s32LowdlyEnable
	cmp	r1, #1	@ <variable>.stSynExtraData.s32LowdlyEnable,
	movne	r3, #0	@, prephitmp.4638
	moveq	r3, #1	@, prephitmp.4638
.L1655:
	cmp	r2, #6	@ eVidStd,
	movne	r2, r3	@, tmp399, prephitmp.4638
	orreq	r2, r3, #1	@,, tmp399, prephitmp.4638
	cmp	r2, #0	@ tmp399,
	bne	.L1656	@,
.L1653:
	cmp	r0, #0	@ dsp_need_flag,
	bne	.L1656	@,
	ldr	r3, [r6, #12]	@ D.51784, g_vdm_hal_fun_ptr.pfun_DSPDRV_CloseHardware
	cmp	r3, #0	@ D.51784,
	beq	.L1662	@,
	blx	r3	@ D.51784
.L1656:
	bl	VCTRL_CloseHardware	@
	mov	r0, #0	@ ret,
.L1587:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L1580:
	cmp	r2, #1	@ ScdLowdlyEnable,
	movne	sl, #0	@, D.51742
	moveq	sl, #1	@, D.51742
	cmp	ip, #2	@ eDSPState,
	cmpeq	r2, #1	@, ScdLowdlyEnable,
	beq	.L1582	@,
	cmp	ip, #1	@ eDSPState,
	cmpeq	r3, #6	@, D.51732,
	movne	r8, #0	@, tmp226
	moveq	r8, #1	@, tmp226
	bne	.L1584	@,
.L1582:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC240	@,
	movt	r1, #:upper16:.LC240	@,
	str	ip, [sp, #0]	@ eDSPState,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	b	.L1587	@
.L1591:
	ldr	ip, [r4, r7, asl #2]	@ tmp245, s_pstVfmwChan
	ldr	r0, [ip, #552]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r0, #6	@ <variable>.eVidStd,
	movne	r8, #0	@, tmp251
	andeq	r8, r8, #1	@,, tmp251, prephitmp.4657
	cmp	r8, #0	@ tmp251,
	beq	.L1592	@,
	add	r5, r5, r7, asl #2	@, tmp255, tmp404, ChanID,
	mov	r0, #6	@,
	bl	WriteHexFile	@
	mov	r1, #2	@ tmp257,
	str	r1, [r5, #-1460]	@ tmp257, g_DSPState
	b	.L1592	@
.L1598:
	ldr	r3, [r3, #1268]	@ <variable>.stSynExtraData.s32LowdlyEnable, <variable>.stSynExtraData.s32LowdlyEnable
	cmp	r3, #1	@ <variable>.stSynExtraData.s32LowdlyEnable,
	movne	r3, #0	@, prephitmp.4670
	moveq	r3, #1	@, prephitmp.4670
	b	.L1600	@
.L1650:
	ldr	ip, [r3, #1268]	@ <variable>.stSynExtraData.s32LowdlyEnable, <variable>.stSynExtraData.s32LowdlyEnable
	cmp	ip, #1	@ <variable>.stSynExtraData.s32LowdlyEnable,
	movne	r3, #0	@, prephitmp.4748
	moveq	r3, #1	@, prephitmp.4748
	b	.L1652	@
.L1594:
	ldr	lr, [r0, #1268]	@ <variable>.stSynExtraData.s32LowdlyEnable, <variable>.stSynExtraData.s32LowdlyEnable
	cmp	lr, #1	@ <variable>.stSynExtraData.s32LowdlyEnable,
	movne	r0, #0	@, prephitmp.4664
	moveq	r0, #1	@, prephitmp.4664
	b	.L1596	@
.L1602:
	ldr	ip, [r3, #1268]	@ <variable>.stSynExtraData.s32LowdlyEnable, <variable>.stSynExtraData.s32LowdlyEnable
	cmp	ip, #1	@ <variable>.stSynExtraData.s32LowdlyEnable,
	movne	r3, #0	@, prephitmp.4676
	moveq	r3, #1	@, prephitmp.4676
	b	.L1604	@
.L1606:
	ldr	r1, [r3, #1268]	@ <variable>.stSynExtraData.s32LowdlyEnable, <variable>.stSynExtraData.s32LowdlyEnable
	cmp	r1, #1	@ <variable>.stSynExtraData.s32LowdlyEnable,
	movne	r3, #0	@, prephitmp.4682
	moveq	r3, #1	@, prephitmp.4682
	b	.L1608	@
.L1610:
	ldr	lr, [r3, #1268]	@ <variable>.stSynExtraData.s32LowdlyEnable, <variable>.stSynExtraData.s32LowdlyEnable
	cmp	lr, #1	@ <variable>.stSynExtraData.s32LowdlyEnable,
	movne	r3, #0	@, prephitmp.4688
	moveq	r3, #1	@, prephitmp.4688
	b	.L1612	@
.L1614:
	ldr	r3, [r3, #1268]	@ <variable>.stSynExtraData.s32LowdlyEnable, <variable>.stSynExtraData.s32LowdlyEnable
	cmp	r3, #1	@ <variable>.stSynExtraData.s32LowdlyEnable,
	movne	r3, #0	@, prephitmp.4694
	moveq	r3, #1	@, prephitmp.4694
	b	.L1616	@
.L1618:
	ldr	ip, [r3, #1268]	@ <variable>.stSynExtraData.s32LowdlyEnable, <variable>.stSynExtraData.s32LowdlyEnable
	cmp	ip, #1	@ <variable>.stSynExtraData.s32LowdlyEnable,
	movne	r3, #0	@, prephitmp.4700
	moveq	r3, #1	@, prephitmp.4700
	b	.L1620	@
.L1622:
	ldr	r1, [r3, #1268]	@ <variable>.stSynExtraData.s32LowdlyEnable, <variable>.stSynExtraData.s32LowdlyEnable
	cmp	r1, #1	@ <variable>.stSynExtraData.s32LowdlyEnable,
	movne	r3, #0	@, prephitmp.4706
	moveq	r3, #1	@, prephitmp.4706
	b	.L1624	@
.L1626:
	ldr	lr, [r3, #1268]	@ <variable>.stSynExtraData.s32LowdlyEnable, <variable>.stSynExtraData.s32LowdlyEnable
	cmp	lr, #1	@ <variable>.stSynExtraData.s32LowdlyEnable,
	movne	r3, #0	@, prephitmp.4712
	moveq	r3, #1	@, prephitmp.4712
	b	.L1628	@
.L1630:
	ldr	r3, [r3, #1268]	@ <variable>.stSynExtraData.s32LowdlyEnable, <variable>.stSynExtraData.s32LowdlyEnable
	cmp	r3, #1	@ <variable>.stSynExtraData.s32LowdlyEnable,
	movne	r3, #0	@, prephitmp.4718
	moveq	r3, #1	@, prephitmp.4718
	b	.L1632	@
.L1634:
	ldr	ip, [r3, #1268]	@ <variable>.stSynExtraData.s32LowdlyEnable, <variable>.stSynExtraData.s32LowdlyEnable
	cmp	ip, #1	@ <variable>.stSynExtraData.s32LowdlyEnable,
	movne	r3, #0	@, prephitmp.4724
	moveq	r3, #1	@, prephitmp.4724
	b	.L1636	@
.L1638:
	ldr	r1, [r3, #1268]	@ <variable>.stSynExtraData.s32LowdlyEnable, <variable>.stSynExtraData.s32LowdlyEnable
	cmp	r1, #1	@ <variable>.stSynExtraData.s32LowdlyEnable,
	movne	r3, #0	@, prephitmp.4730
	moveq	r3, #1	@, prephitmp.4730
	b	.L1640	@
.L1642:
	ldr	lr, [r3, #1268]	@ <variable>.stSynExtraData.s32LowdlyEnable, <variable>.stSynExtraData.s32LowdlyEnable
	cmp	lr, #1	@ <variable>.stSynExtraData.s32LowdlyEnable,
	movne	r3, #0	@, prephitmp.4736
	moveq	r3, #1	@, prephitmp.4736
	b	.L1644	@
.L1646:
	ldr	r3, [r3, #1268]	@ <variable>.stSynExtraData.s32LowdlyEnable, <variable>.stSynExtraData.s32LowdlyEnable
	cmp	r3, #1	@ <variable>.stSynExtraData.s32LowdlyEnable,
	movne	r3, #0	@, prephitmp.4742
	moveq	r3, #1	@, prephitmp.4742
	b	.L1648	@
.L1589:
	mov	r0, r3	@, D.51756
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #3799	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	b	.L1590	@
.L1661:
	mov	r0, r3	@, D.51751
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #3798	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	b	.L1588	@
.L1662:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #3852	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	b	.L1656	@
	.fnend
	.size	VCTRL_LoadDspCode, .-VCTRL_LoadDspCode
	.align	2
	.global	VCTRL_SeekPts
	.type	VCTRL_SeekPts, %function
VCTRL_SeekPts:
	.fnstart
.LFB1579:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r2, [r3, r0, asl #2]	@ D.51684, s_pstVfmwChan
	cmp	r2, #0	@ D.51684,
	beq	.L1670	@,
	ldr	r2, [r2, #552]	@ D.51692, <variable>.eVidStd
	sub	ip, r2, #10	@ tmp143, D.51692,
	cmp	ip, #2	@ tmp143,
	bls	.L1671	@,
	cmp	r2, #4	@ D.51692,
	bne	.L1672	@,
.L1667:
	mvn	r0, #0	@ D.51688,
	ldmfd	sp, {fp, sp, pc}	@
.L1671:
	ldr	r3, [r3, #516]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #1	@ g_VdmCharacter,
	beq	.L1667	@,
.L1668:
	bl	SM_SeekPts	@
	cmp	r0, #0	@ ret
	ldmeqfd	sp, {fp, sp, pc}	@
	b	.L1667	@
.L1672:
	cmp	r2, #14	@ D.51692,
	beq	.L1667	@,
	b	.L1668	@
.L1670:
	mov	r0, r2	@, D.51684
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #3593	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r3, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.51688,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_SeekPts, .-VCTRL_SeekPts
	.align	2
	.global	VCTRL_StopChan
	.type	VCTRL_StopChan, %function
VCTRL_StopChan:
	.fnstart
.LFB1573:
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
	cmp	r0, #15	@ ChanID,
	mov	r5, r0	@ ChanID, ChanID
	bhi	.L1679	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp140,
	movt	r4, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r3, [r4, r0, asl #2]	@ D.51215, s_pstVfmwChan
	cmp	r3, #0	@ D.51215,
	beq	.L1680	@,
	ldr	r2, [r3, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #1	@ <variable>.s32IsOpen,
	beq	.L1681	@,
.L1677:
	mvn	r0, #0	@ D.51213,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L1680:
	mov	r0, r3	@, D.51215
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #2844	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC241	@,
	movt	r3, #:upper16:.LC241	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.51213,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L1679:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #2843	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.51213,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L1681:
	str	r2, [r3, #28]	@ <variable>.s32IsOpen, <variable>.s32StopSyntax
	mov	r2, #0	@ tmp147,
	ldr	r3, [r4, r0, asl #2]	@ tmp146, s_pstVfmwChan
	str	r2, [r3, #16]	@ tmp147, <variable>.s32IsRun
	bl	SM_Stop	@
	subs	r6, r0, #0	@ s32Ret,
	bne	.L1677	@,
	mov	r1, r6	@, s32Ret
	mov	r0, r5	@, ChanID
	bl	DeleteRawPacketInBuffer	@
	mov	r0, r5	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	ldr	r0, [r4, r5, asl #2]	@ tmp149, s_pstVfmwChan
	str	r6, [r0, #28]	@ s32Ret, <variable>.s32StopSyntax
	bl	VCTRL_CloseHardware	@
	mov	r0, r6	@ D.51213, s32Ret
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	VCTRL_StopChan, .-VCTRL_StopChan
	.align	2
	.global	VCTRL_StopChanWithCheck
	.type	VCTRL_StopChanWithCheck, %function
VCTRL_StopChanWithCheck:
	.fnstart
.LFB1572:
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
	mov	r5, #0	@ i,
	mov	r6, r0	@ ChanID, ChanID
	b	.L1684	@
.L1689:
	bl	msleep	@
	ldr	r0, .L1690	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r6	@, ChanID
	bl	VCTRL_StopChan	@
	mov	r4, r0	@ ret,
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L1690	@,
	bl	OSAL_SpinUnLockIRQ	@
	cmp	r4, #0	@ ret,
	mov	r0, #10	@,
	beq	.L1683	@,
	bl	msleep	@
	cmp	r5, #50	@ i,
	beq	.L1683	@,
.L1684:
	ldr	r0, .L1690	@,
	add	r5, r5, #1	@ tmp146, i,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r6	@, ChanID
	bl	VCTRL_StopChan	@
	add	r5, r5, #1	@ i, tmp146,
	mov	r4, r0	@ ret,
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L1690	@,
	bl	OSAL_SpinUnLockIRQ	@
	cmp	r4, #0	@ ret,
	mov	r0, #10	@,
	bne	.L1689	@,
.L1683:
	mov	r0, r4	@, ret
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L1691:
	.align	2
.L1690:
	.word	.LANCHOR0+520
	.fnend
	.size	VCTRL_StopChanWithCheck, .-VCTRL_StopChanWithCheck
	.align	2
	.global	VCTRL_StartChan
	.type	VCTRL_StartChan, %function
VCTRL_StartChan:
	.fnstart
.LFB1570:
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
	cmp	r0, #15	@ ChanID,
	mov	r5, r0	@ ChanID, ChanID
	bhi	.L1732	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp326,
	movt	r4, #:upper16:.LANCHOR0	@ tmp326,
	ldr	r3, [r4, r0, asl #2]	@ D.51139, s_pstVfmwChan
	cmp	r3, #0	@ D.51139,
	beq	.L1733	@,
	ldr	r6, [r3, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r6, #1	@ <variable>.s32IsOpen,
	bne	.L1734	@,
	ldr	r3, [r3, #552]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #19	@ <variable>.eVidStd,
	beq	.L1735	@,
	bl	SM_Start	@
	ldr	r2, [r4, r5, asl #2]	@ tmp167, s_pstVfmwChan
	mov	ip, #0	@ tmp171,
	str	r6, [r2, #16]	@ <variable>.s32IsOpen, <variable>.s32IsRun
	ldr	r3, [r4, r5, asl #2]	@ tmp170, s_pstVfmwChan
	str	ip, [r3, #28]	@ tmp171, <variable>.s32StopSyntax
	ldr	r1, [r4, r5, asl #2]	@ tmp173, s_pstVfmwChan
	str	r6, [r1, #20]	@ <variable>.s32IsOpen, <variable>.s32IsInit
	ldr	r3, [r4, r5, asl #2]	@ temp.4860, s_pstVfmwChan
	ldr	r2, [r3, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r2, #0	@ <variable>.s32Priority,
	bne	.L1698	@,
	str	r6, [r3, #24]	@ <variable>.s32IsOpen, <variable>.s32Priority
	ldr	r1, [r4, #0]	@ temp.4862, s_pstVfmwChan
	cmp	r1, #0	@ temp.4862,
	beq	.L1736	@,
	ldr	r0, [r1, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	movw	r3, #:lower16:.LANCHOR3	@ tmp327,
	movt	r3, #:upper16:.LANCHOR3	@ tmp327,
	movw	r2, #:lower16:g_ChanCtx	@ tmp328,
	movt	r2, #:upper16:g_ChanCtx	@ tmp328,
	str	r0, [r3, #-1396]	@ <variable>.s32Priority, PrioArray
	ldr	lr, [r1, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	str	lr, [r2, #0]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
.L1700:
	ldr	lr, [r4, #4]	@ temp.4865, s_pstVfmwChan
	ldr	ip, [r4, #8]	@ temp.4868, s_pstVfmwChan
	cmp	lr, #0	@ temp.4865,
	ldr	r1, [r4, #12]	@ temp.4871, s_pstVfmwChan
	streq	lr, [r3, #-1392]	@ temp.4865, PrioArray
	ldrne	r0, [lr, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	lr, [r2, #4]	@ temp.4865, g_ChanCtx.PriorByChanId
	strne	r0, [r3, #-1392]	@ <variable>.s32Priority, PrioArray
	ldrne	lr, [lr, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	lr, [r2, #4]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	cmp	ip, #0	@ temp.4868,
	streq	ip, [r3, #-1388]	@ temp.4868, PrioArray
	ldrne	r0, [ip, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	ip, [r2, #8]	@ temp.4868, g_ChanCtx.PriorByChanId
	ldr	lr, [r4, #16]	@ temp.4874, s_pstVfmwChan
	strne	r0, [r3, #-1388]	@ <variable>.s32Priority, PrioArray
	ldrne	ip, [ip, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	ip, [r2, #8]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	cmp	r1, #0	@ temp.4871,
	streq	r1, [r3, #-1384]	@ temp.4871, PrioArray
	ldrne	r0, [r1, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	r1, [r2, #12]	@ temp.4871, g_ChanCtx.PriorByChanId
	ldr	ip, [r4, #20]	@ temp.4877, s_pstVfmwChan
	strne	r0, [r3, #-1384]	@ <variable>.s32Priority, PrioArray
	ldrne	r1, [r1, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	r1, [r2, #12]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	cmp	lr, #0	@ temp.4874,
	streq	lr, [r3, #-1380]	@ temp.4874, PrioArray
	ldrne	r0, [lr, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	lr, [r2, #16]	@ temp.4874, g_ChanCtx.PriorByChanId
	strne	r0, [r3, #-1380]	@ <variable>.s32Priority, PrioArray
	ldrne	lr, [lr, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	lr, [r2, #16]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	cmp	ip, #0	@ temp.4877,
	streq	ip, [r3, #-1376]	@ temp.4877, PrioArray
	ldrne	r0, [ip, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	ip, [r2, #20]	@ temp.4877, g_ChanCtx.PriorByChanId
	strne	r0, [r3, #-1376]	@ <variable>.s32Priority, PrioArray
	ldrne	ip, [ip, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	ip, [r2, #20]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	ldr	r1, [r4, #24]	@ temp.4880, s_pstVfmwChan
	ldr	lr, [r4, #28]	@ temp.4883, s_pstVfmwChan
	cmp	r1, #0	@ temp.4880,
	ldr	ip, [r4, #32]	@ temp.4886, s_pstVfmwChan
	streq	r1, [r3, #-1372]	@ temp.4880, PrioArray
	ldrne	r0, [r1, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	r1, [r2, #24]	@ temp.4880, g_ChanCtx.PriorByChanId
	strne	r0, [r3, #-1372]	@ <variable>.s32Priority, PrioArray
	ldrne	r1, [r1, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	r1, [r2, #24]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	cmp	lr, #0	@ temp.4883,
	streq	lr, [r3, #-1368]	@ temp.4883, PrioArray
	ldrne	r0, [lr, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	lr, [r2, #28]	@ temp.4883, g_ChanCtx.PriorByChanId
	ldr	r1, [r4, #36]	@ temp.4889, s_pstVfmwChan
	strne	r0, [r3, #-1368]	@ <variable>.s32Priority, PrioArray
	ldrne	lr, [lr, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	lr, [r2, #28]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	cmp	ip, #0	@ temp.4886,
	streq	ip, [r3, #-1364]	@ temp.4886, PrioArray
	ldrne	r0, [ip, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	ip, [r2, #32]	@ temp.4886, g_ChanCtx.PriorByChanId
	ldr	lr, [r4, #40]	@ temp.4892, s_pstVfmwChan
	strne	r0, [r3, #-1364]	@ <variable>.s32Priority, PrioArray
	ldrne	ip, [ip, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	ip, [r2, #32]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	cmp	r1, #0	@ temp.4889,
	streq	r1, [r3, #-1360]	@ temp.4889, PrioArray
	ldrne	r0, [r1, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	r1, [r2, #36]	@ temp.4889, g_ChanCtx.PriorByChanId
	strne	r0, [r3, #-1360]	@ <variable>.s32Priority, PrioArray
	ldrne	r1, [r1, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	r1, [r2, #36]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	cmp	lr, #0	@ temp.4892,
	streq	lr, [r3, #-1356]	@ temp.4892, PrioArray
	ldrne	r0, [lr, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	lr, [r2, #40]	@ temp.4892, g_ChanCtx.PriorByChanId
	strne	r0, [r3, #-1356]	@ <variable>.s32Priority, PrioArray
	ldrne	lr, [lr, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	lr, [r2, #40]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	ldr	ip, [r4, #44]	@ temp.4895, s_pstVfmwChan
	ldr	r1, [r4, #48]	@ temp.4898, s_pstVfmwChan
	cmp	ip, #0	@ temp.4895,
	ldr	lr, [r4, #52]	@ temp.4901, s_pstVfmwChan
	streq	ip, [r2, #44]	@ temp.4895, g_ChanCtx.PriorByChanId
	ldrne	r0, [ip, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	ip, [r3, #-1352]	@ temp.4895, PrioArray
	strne	r0, [r3, #-1352]	@ <variable>.s32Priority, PrioArray
	ldrne	ip, [ip, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	ip, [r2, #44]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	cmp	r1, #0	@ temp.4898,
	streq	r1, [r2, #48]	@ temp.4898, g_ChanCtx.PriorByChanId
	ldrne	r0, [r1, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	r1, [r3, #-1348]	@ temp.4898, PrioArray
	ldr	ip, [r4, #56]	@ temp.4904, s_pstVfmwChan
	strne	r0, [r3, #-1348]	@ <variable>.s32Priority, PrioArray
	ldrne	r1, [r1, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	r1, [r2, #48]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	cmp	lr, #0	@ temp.4901,
	streq	lr, [r2, #52]	@ temp.4901, g_ChanCtx.PriorByChanId
	ldrne	r0, [lr, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	lr, [r3, #-1344]	@ temp.4901, PrioArray
	ldr	r1, [r4, #60]	@ D.51152, s_pstVfmwChan
	strne	r0, [r3, #-1344]	@ <variable>.s32Priority, PrioArray
	ldrne	lr, [lr, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	lr, [r2, #52]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	cmp	ip, #0	@ temp.4904,
	streq	ip, [r2, #56]	@ temp.4904, g_ChanCtx.PriorByChanId
	ldrne	r0, [ip, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	ip, [r3, #-1340]	@ temp.4904, PrioArray
	strne	r0, [r3, #-1340]	@ <variable>.s32Priority, PrioArray
	ldrne	ip, [ip, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	ip, [r2, #56]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	cmp	r1, #0	@ D.51152,
	ldrne	r0, [r1, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	r0, [r3, #-1336]	@ <variable>.s32Priority, PrioArray
	ldrne	r3, [r1, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	ldr	r0, .L1737	@,
	strne	r3, [r2, #60]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	streq	r1, [r2, #60]	@ D.51152, g_ChanCtx.PriorByChanId
	streq	r1, [r3, #-1336]	@ D.51152, PrioArray
	bl	VDMDRV_SetPriority	@
	mov	r0, r5	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
.L1698:
	mov	r0, r5	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, r5	@, ChanID
	bl	VCTRL_OpenHardware	@
	mov	r0, #0	@ D.51137,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L1736:
	movw	r3, #:lower16:.LANCHOR3	@ tmp327,
	movw	r2, #:lower16:g_ChanCtx	@ tmp328,
	movt	r3, #:upper16:.LANCHOR3	@ tmp327,
	movt	r2, #:upper16:g_ChanCtx	@ tmp328,
	str	r1, [r3, #-1396]	@ temp.4862, PrioArray
	str	r1, [r2, #0]	@ temp.4862, g_ChanCtx.PriorByChanId
	b	.L1700	@
.L1734:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #2676	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC26	@,
	movt	r3, #:upper16:.LC26	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.51137,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L1732:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #2674	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.51137,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L1735:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #2677	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC242	@,
	movt	r3, #:upper16:.LC242	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.51137,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L1733:
	mov	r0, r3	@, D.51139
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #2675	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC161	@,
	movt	r3, #:upper16:.LC161	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.51137,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L1738:
	.align	2
.L1737:
	.word	.LANCHOR3-1396
	.fnend
	.size	VCTRL_StartChan, .-VCTRL_StartChan
	.align	2
	.global	VCTRL_FreeChanResource
	.type	VCTRL_FreeChanResource, %function
VCTRL_FreeChanResource:
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
	ldr	r3, [r1, #104]	@ <variable>.u32DynamicAllocEn, <variable>.u32DynamicAllocEn
	mov	r6, r1	@ pstChan, pstChan
	cmp	r3, #1	@ <variable>.u32DynamicAllocEn,
	beq	.L1740	@,
	ldr	r0, [r1, #24]	@, <variable>.stChanMem_vdh.PhyAddr
	ldr	r2, [r6, #28]	@, <variable>.stChanMem_vdh.Length
	ldr	r1, [r1, #20]	@, <variable>.stChanMem_vdh.VirAddr
	bl	MEM_DelMemRecord	@
.L1741:
	ldr	r2, [r6, #44]	@ D.50561, <variable>.stChanMem_scd.Length
	cmp	r2, #0	@ D.50561,
	bne	.L1762	@,
	ldr	ip, [r6, #80]	@ <variable>.s32SelfAllocChanMem_vdh, <variable>.s32SelfAllocChanMem_vdh
	cmp	ip, #1	@ <variable>.s32SelfAllocChanMem_vdh,
	beq	.L1763	@,
.L1747:
	ldr	lr, [r6, #28]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	cmp	lr, #0	@ <variable>.stChanMem_vdh.Length,
	bne	.L1764	@,
.L1748:
	ldr	r1, [r6, #84]	@ <variable>.s32SelfAllocChanMem_scd, <variable>.s32SelfAllocChanMem_scd
	cmp	r1, #1	@ <variable>.s32SelfAllocChanMem_scd,
	beq	.L1765	@,
.L1749:
	ldr	r2, [r6, #44]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	cmp	r2, #0	@ <variable>.stChanMem_scd.Length,
	bne	.L1766	@,
.L1750:
	ldr	lr, [r6, #88]	@ <variable>.s32SelfAllocChanMem_ctx, <variable>.s32SelfAllocChanMem_ctx
	cmp	lr, #1	@ <variable>.s32SelfAllocChanMem_ctx,
	beq	.L1767	@,
.L1751:
	ldr	r0, [r6, #52]	@, <variable>.stChanMem_ctx.VirAddr
	bl	KernelMunmap	@
.L1752:
	ldr	r1, [r6, #52]	@, <variable>.stChanMem_ctx.VirAddr
	ldr	r2, [r6, #60]	@, <variable>.stChanMem_ctx.Length
	ldr	r0, [r6, #56]	@, <variable>.stChanMem_ctx.PhyAddr
	bl	MEM_DelMemRecord	@
	add	r0, r6, #64	@, pstChan,
	bl	SM_DeletDSPCtxMem	@
	mov	r0, #0	@,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L1766:
	ldrsb	ip, [r6, #32]	@ <variable>.stChanMem_scd.IsCached, <variable>.stChanMem_scd.IsCached
	cmp	ip, #1	@ <variable>.stChanMem_scd.IsCached,
	bne	.L1750	@,
	ldr	r0, [r6, #36]	@, <variable>.stChanMem_scd.VirAddr
	bl	KernelMunmap	@
	ldr	r0, [r6, #40]	@, <variable>.stChanMem_scd.PhyAddr
	ldr	r1, [r6, #44]	@, <variable>.stChanMem_scd.Length
	bl	KernelMmap	@
	mov	r3, #0	@ tmp187,
	strb	r3, [r6, #32]	@ tmp187, <variable>.stChanMem_scd.IsCached
	b	.L1750	@
.L1764:
	ldrsb	r3, [r6, #16]	@ <variable>.stChanMem_vdh.IsCached, <variable>.stChanMem_vdh.IsCached
	cmp	r3, #1	@ <variable>.stChanMem_vdh.IsCached,
	bne	.L1748	@,
	ldr	r0, [r6, #20]	@, <variable>.stChanMem_vdh.VirAddr
	bl	KernelMunmap	@
	ldr	r0, [r6, #24]	@, <variable>.stChanMem_vdh.PhyAddr
	ldr	r1, [r6, #28]	@, <variable>.stChanMem_vdh.Length
	bl	KernelMmap	@
	mov	r0, #0	@ tmp178,
	strb	r0, [r6, #16]	@ tmp178, <variable>.stChanMem_vdh.IsCached
	b	.L1748	@
.L1740:
	mov	r4, #0	@ ivtmp.4944,
	mvn	r7, #0	@ tmp197,
	b	.L1745	@
.L1744:
	ldr	r1, [r6, #108]	@ <variable>.pstChanFrmBuf, <variable>.pstChanFrmBuf
	add	r0, r1, r4	@ tmp165, <variable>.pstChanFrmBuf, ivtmp.4944
	strb	r7, [r0, #16]	@ tmp197, <variable>.u8BufferNodeState
.L1742:
	ldr	r2, [r6, #108]	@ <variable>.pstChanFrmBuf, <variable>.pstChanFrmBuf
	add	r4, r4, #20	@ tmp202, ivtmp.4944,
	add	r5, r4, r2	@ D.50546, tmp202, <variable>.pstChanFrmBuf
	ldrb	r3, [r5, #16]	@ zero_extendqisi2	@ D.50547, <variable>.u8BufferNodeState
	cmp	r3, #255	@ D.50547,
	beq	.L1755	@,
	cmp	r3, #1	@ D.50547,
	beq	.L1760	@,
.L1756:
	ldr	r0, [r5, #8]	@, <variable>.stFrameBuffer.PhyAddr
	ldr	r1, [r5, #4]	@, <variable>.stFrameBuffer.VirAddr
	ldr	r2, [r5, #12]	@, <variable>.stFrameBuffer.Length
	bl	MEM_DelMemRecord	@
	cmp	r0, #0	@,
	bne	.L1761	@,
.L1757:
	ldr	r1, [r6, #108]	@ <variable>.pstChanFrmBuf, <variable>.pstChanFrmBuf
	add	r0, r1, r4	@ tmp212, <variable>.pstChanFrmBuf, tmp202
	strb	r7, [r0, #16]	@ tmp197, <variable>.u8BufferNodeState
.L1755:
	add	r4, r4, #20	@ ivtmp.4944, tmp202,
	cmp	r4, #1280	@ ivtmp.4944,
	beq	.L1741	@,
.L1745:
	ldr	r5, [r6, #108]	@ <variable>.pstChanFrmBuf, <variable>.pstChanFrmBuf
	add	r5, r4, r5	@ D.50546, ivtmp.4944, <variable>.pstChanFrmBuf
	ldrb	r3, [r5, #16]	@ zero_extendqisi2	@ D.50547, <variable>.u8BufferNodeState
	cmp	r3, #255	@ D.50547,
	beq	.L1742	@,
	cmp	r3, #1	@ D.50547,
	beq	.L1768	@,
.L1743:
	ldr	r0, [r5, #8]	@, <variable>.stFrameBuffer.PhyAddr
	ldr	r1, [r5, #4]	@, <variable>.stFrameBuffer.VirAddr
	ldr	r2, [r5, #12]	@, <variable>.stFrameBuffer.Length
	bl	MEM_DelMemRecord	@
	cmp	r0, #0	@,
	beq	.L1744	@,
	ldr	r2, [r5, #8]	@, <variable>.stFrameBuffer.PhyAddr
	movw	r1, #:lower16:.LC244	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC244	@,
	bl	dprint_vfmw	@
	b	.L1744	@
.L1761:
	ldr	r2, [r5, #8]	@, <variable>.stFrameBuffer.PhyAddr
	movw	r1, #:lower16:.LC244	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC244	@,
	bl	dprint_vfmw	@
	b	.L1757	@
.L1768:
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC243	@,
	movt	r1, #:upper16:.LC243	@,
	bl	dprint_vfmw	@
	ldr	r0, [r5, #8]	@, <variable>.stFrameBuffer.PhyAddr
	ldr	r1, [r5, #4]	@, <variable>.stFrameBuffer.VirAddr
	bl	MEM_ReleaseMemBlock	@
	b	.L1743	@
.L1760:
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC243	@,
	movt	r1, #:upper16:.LC243	@,
	bl	dprint_vfmw	@
	ldr	r0, [r5, #8]	@, <variable>.stFrameBuffer.PhyAddr
	ldr	r1, [r5, #4]	@, <variable>.stFrameBuffer.VirAddr
	bl	MEM_ReleaseMemBlock	@
	b	.L1756	@
.L1767:
	ldr	r0, [r6, #56]	@ D.50596, <variable>.stChanMem_ctx.PhyAddr
	cmp	r0, #0	@ D.50596,
	beq	.L1751	@,
	ldr	r1, [r6, #52]	@, <variable>.stChanMem_ctx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	b	.L1752	@
.L1762:
	ldr	r0, [r6, #40]	@, <variable>.stChanMem_scd.PhyAddr
	ldr	r1, [r6, #36]	@, <variable>.stChanMem_scd.VirAddr
	bl	MEM_DelMemRecord	@
	ldr	ip, [r6, #80]	@ <variable>.s32SelfAllocChanMem_vdh, <variable>.s32SelfAllocChanMem_vdh
	cmp	ip, #1	@ <variable>.s32SelfAllocChanMem_vdh,
	bne	.L1747	@,
.L1763:
	ldr	r0, [r6, #24]	@ temp.4950, <variable>.stChanMem_vdh.PhyAddr
	cmp	r0, #0	@ temp.4950,
	beq	.L1747	@,
	ldr	r1, [r6, #20]	@, <variable>.stChanMem_vdh.VirAddr
	bl	MEM_ReleaseMemBlock	@
	b	.L1748	@
.L1765:
	ldr	r0, [r6, #40]	@ temp.4957, <variable>.stChanMem_scd.PhyAddr
	cmp	r0, #0	@ temp.4957,
	beq	.L1749	@,
	ldr	r1, [r6, #36]	@, <variable>.stChanMem_scd.VirAddr
	bl	MEM_ReleaseMemBlock	@
	b	.L1750	@
	.fnend
	.size	VCTRL_FreeChanResource, .-VCTRL_FreeChanResource
	.align	2
	.global	VCTRL_UnInstallChan
	.type	VCTRL_UnInstallChan, %function
VCTRL_UnInstallChan:
	.fnstart
.LFB1562:
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
	mov	r4, r0	@ ChanID, ChanID
	bl	FSP_DisableInstance	@
	mov	r0, r4	@, ChanID
	bl	CloseUsdPool_WithMem	@
	mov	r0, #0	@,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	VCTRL_UnInstallChan, .-VCTRL_UnInstallChan
	.align	2
	.global	VCTRL_PartitionMemForStdUser
	.type	VCTRL_PartitionMemForStdUser, %function
VCTRL_PartitionMemForStdUser:
	.fnstart
.LFB1561:
	@ args = 4, pretend = 0, frame = 48
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
	mov	r7, r2	@ MaxHeight, MaxHeight
	movw	r2, #:lower16:.LANCHOR0	@ tmp151,
	cmp	r1, #31	@ MaxWidth,
	cmpgt	r7, #31	@, MaxHeight,
	movt	r2, #:upper16:.LANCHOR0	@ tmp151,
	mov	r5, r1	@ MaxWidth, MaxWidth
	mov	r6, r0	@ ChanID, ChanID
	movgt	r1, #0	@, tmp158
	movle	r1, #1	@, tmp158
	ldr	r4, [r2, r0, asl #2]	@ pstChan, s_pstVfmwChan
	mov	sl, r3	@ MemAddr, MemAddr
	ldr	r2, [fp, #4]	@ MemSize, MemSize
	ble	.L1787	@,
	cmp	r3, #0	@ MemAddr,
	cmpne	r2, #0	@, MemSize,
	movne	r8, #0	@, tmp166
	moveq	r8, #1	@, tmp166
	beq	.L1788	@,
	sub	r9, fp, #84	@ tmp168,,
	mov	r1, #36	@,
	str	r2, [fp, #-88]	@,
	mov	r0, r9	@, tmp168
	bl	__memzero	@
	mov	r1, r9	@, tmp168
	mov	r0, r6	@, ChanID
	str	r5, [fp, #-56]	@ MaxWidth, FspInstCfg.s32DispFsWidth
	str	r5, [fp, #-72]	@ MaxWidth, FspInstCfg.s32DecFsWidth
	mov	r3, #1	@,
	str	r7, [fp, #-52]	@ MaxHeight, FspInstCfg.s32DispFsHeight
	strb	r8, [fp, #-84]	@ tmp166, FspInstCfg.s32DispLoopEnable
	strb	r8, [fp, #-82]	@ tmp166, FspInstCfg.s32RprEnable
	str	r7, [fp, #-68]	@ MaxHeight, FspInstCfg.s32DecFsHeight
	strb	r8, [fp, #-79]	@ tmp166, FspInstCfg.s32ExpectedDecFsNum
	strb	r8, [fp, #-77]	@ tmp166, FspInstCfg.s32ExpectedDispFsNum
	strb	r8, [fp, #-76]	@ tmp166, FspInstCfg.s32ExpectedPmvNum
	strb	r3, [fp, #-80]	@, FspInstCfg.s32UserDec
	bl	FSP_ConfigInstance	@
	ldr	r2, [fp, #-88]	@,
	subs	r5, r0, #0	@ D.50470,
	bne	.L1775	@,
	mov	r1, sl	@, MemAddr
	mov	r0, r6	@, ChanID
	sub	r3, fp, #48	@,,
	bl	FSP_PartitionFsMemory	@
	subs	r7, r0, #0	@ Ret,
	bne	.L1789	@,
	movw	r5, #:lower16:.LANCHOR3	@ tmp184,
	movt	r5, #:upper16:.LANCHOR3	@ tmp184,
	mov	r0, r6	@, ChanID
	ldr	r1, .L1791	@,
	bl	FSP_GetInstInfo	@
	ldrb	r1, [r5, #-1331]	@ zero_extendqisi2	@, FspInstInfo.s32DecFsNum
	sxtb	r0, r1	@ D.50480, FspInstInfo.s32DecFsNum
	cmp	r0, #16	@ D.50480,
	movge	r0, #16	@ D.50480,
	str	r0, [r4, #488]	@ D.50480, <variable>.s32UsrdecFrameNum
	cmp	r0, #2	@ D.50480,
	ble	.L1790	@,
	ldr	ip, [r5, #2516]	@ FspInstInfo.s32DecFsSize, FspInstInfo.s32DecFsSize
	add	r0, r4, #420	@, pstChan,
	mov	r1, #64	@,
	str	ip, [r4, #484]	@ FspInstInfo.s32DecFsSize, <variable>.s32UsrdecFrameSize
	bl	__memzero	@
	add	r0, r4, #356	@, pstChan,
	mov	r1, #64	@,
	bl	__memzero	@
	ldr	r5, [r4, #488]	@ D.50479, <variable>.s32UsrdecFrameNum
	cmp	r5, #0	@ D.50479,
	ble	.L1778	@,
	ldr	r3, .L1791	@ ivtmp.5018,
	mov	r2, #1	@ i,
	cmp	r2, r5	@ i, D.50479
	sub	r0, r5, #1	@ tmp203, D.50479,
	and	ip, r0, r2	@ tmp205, tmp203,
	add	r1, r4, #4	@ ivtmp.5021, pstChan,
	ldr	lr, [r3, #20]	@ <variable>.PhyAddr, <variable>.PhyAddr
	ldr	r3, .L1791+4	@ ivtmp.5018,
	str	lr, [r4, #420]	@ <variable>.PhyAddr, <variable>.s32UsrdecFramePhyAddr
	bge	.L1778	@,
	cmp	ip, #0	@ tmp205,
	beq	.L1779	@,
	ldr	lr, [r3, #20]	@ <variable>.PhyAddr, <variable>.PhyAddr
	mov	r2, #2	@ i,
	cmp	r2, r5	@ i, D.50479
	ldr	r3, .L1791+8	@ ivtmp.5018,
	str	lr, [r1, #420]	@ <variable>.PhyAddr, <variable>.s32UsrdecFramePhyAddr
	add	r1, r1, #4	@ ivtmp.5021, ivtmp.5021,
	bge	.L1778	@,
.L1779:
	ldr	r0, [r3, #20]	@ <variable>.PhyAddr, <variable>.PhyAddr
	add	r2, r2, #2	@ i, i,
	add	lr, r1, #4	@ tmp208, ivtmp.5021,
	cmp	r2, r5	@ i, D.50479
	str	r0, [r1, #420]	@ <variable>.PhyAddr, <variable>.s32UsrdecFramePhyAddr
	add	r1, lr, #4	@ ivtmp.5021, tmp208,
	ldr	ip, [r3, #80]	@ <variable>.PhyAddr, <variable>.PhyAddr
	add	r3, r3, #120	@ ivtmp.5018, ivtmp.5018,
	str	ip, [lr, #420]	@ <variable>.PhyAddr, <variable>.s32UsrdecFramePhyAddr
	blt	.L1779	@,
.L1778:
	mov	r0, #0	@ D.50458,
.L1773:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L1788:
	mov	r0, r1	@, tmp158
	movw	r1, #:lower16:.LC246	@,
	movt	r1, #:upper16:.LC246	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.50458,
	b	.L1773	@
.L1775:
	mov	r0, r8	@, tmp166
	movw	r1, #:lower16:.LC249	@,
	movt	r1, #:upper16:.LC249	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.50458,
	b	.L1773	@
.L1789:
	mov	r0, r5	@, D.50470
	movw	r1, #:lower16:.LC247	@,
	movt	r1, #:upper16:.LC247	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.50458,
	b	.L1773	@
.L1790:
	mov	r0, r7	@, Ret
	movw	r1, #:lower16:.LC248	@,
	ldr	r2, .L1791+12	@,
	movt	r1, #:upper16:.LC248	@,
	movw	r3, #1381	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.50458,
	b	.L1773	@
.L1787:
	mov	r2, r5	@, MaxWidth
	mov	r3, r7	@, MaxHeight
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC245	@,
	movt	r1, #:upper16:.LC245	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.50458,
	b	.L1773	@
.L1792:
	.align	2
.L1791:
	.word	.LANCHOR3-1332
	.word	.LANCHOR3-1272
	.word	.LANCHOR3-1212
	.word	.LANCHOR1+312
	.fnend
	.size	VCTRL_PartitionMemForStdUser, .-VCTRL_PartitionMemForStdUser
	.align	2
	.global	VCTRL_GetStreamInterface
	.type	VCTRL_GetStreamInterface, %function
VCTRL_GetStreamInterface:
	.fnstart
.LFB1553:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	mov	r5, r0	@ ChanID, ChanID
	ldr	r4, [r3, r0, asl #2]	@ D.50282, s_pstVfmwChan
	cmp	r4, #0	@ D.50282,
	beq	.L1795	@,
	add	r4, r4, #152	@ D.50285, D.50282,
	add	r0, r0, r0, asl #1	@, tmp143, ChanID, ChanID,
	add	r3, r3, #312	@ tmp140, tmp138,
	mov	r2, #12	@,
	add	r0, r3, r0, asl #2	@,, tmp140, tmp143,
	mov	r1, r4	@, D.50285
	bl	memcmp	@
	cmp	r0, #0	@,
	bne	.L1797	@,
.L1795:
	mov	r0, r4	@, D.50285
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L1797:
	mov	r3, r5	@, ChanID
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC250	@,
	movw	r2, #1091	@,
	movt	r1, #:upper16:.LC250	@,
	mov	r4, r0	@ D.50285,
	bl	dprint_vfmw	@
	b	.L1795	@
	.fnend
	.size	VCTRL_GetStreamInterface, .-VCTRL_GetStreamInterface
	.align	2
	.global	VCTRL_OpenVfmw
	.type	VCTRL_OpenVfmw, %function
VCTRL_OpenVfmw:
	.fnstart
.LFB1546:
	@ args = 0, pretend = 0, frame = 16
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
	sub	r5, fp, #48	@ tmp307,,
	movw	r4, #:lower16:.LANCHOR0	@ tmp305,
	movt	r4, #:upper16:.LANCHOR0	@ tmp305,
	mov	r1, #8	@,
	mov	r0, r5	@, tmp307
	bl	__memzero	@
	ldr	r8, [r4, #104]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r8, #0	@ s_VfmwCTrl.s32IsVCTRLOpen,
	beq	.L1822	@,
.L1799:
	mvn	r0, #0	@ D.50159,
.L1820:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L1822:
	movw	r6, #:lower16:.LANCHOR3	@ tmp306,
	movw	r7, #:lower16:saved_command_line	@ tmp304,
	movt	r6, #:upper16:.LANCHOR3	@ tmp306,
	movt	r7, #:upper16:saved_command_line	@ tmp304,
	add	r1, r6, #2512	@, tmp306,
	mov	r2, #1024	@,
	add	r0, r1, #8	@,,
	ldr	r1, [r7, #0]	@, saved_command_line
	str	r8, [fp, #-40]	@ s_VfmwCTrl.s32IsVCTRLOpen, p
	bl	strlcpy	@
	add	r0, r6, #2512	@, tmp306,
	movw	r1, #:lower16:.LC251	@,
	add	r0, r0, #8	@,,
	movt	r1, #:upper16:.LC251	@,
	bl	strstr	@
	cmp	r0, #0	@ tmp173,
	str	r0, [fp, #-40]	@ tmp173, p
	beq	.L1800	@,
	sub	sl, fp, #40	@ p.704,,
	movw	r1, #:lower16:.LC252	@,
	movt	r1, #:upper16:.LC252	@,
	mov	r0, sl	@, p.704
	bl	strsep	@
	subs	r3, r0, #0	@ D.60520,
	beq	.L1805	@,
	mov	r0, sl	@, p.704
	movw	r1, #:lower16:.LC121	@,
	movt	r1, #:upper16:.LC121	@,
	bl	strsep	@
	cmp	r0, #0	@,
	beq	.L1823	@,
	mov	r1, r8	@, s_VfmwCTrl.s32IsVCTRLOpen
	mov	r2, r8	@, tmp1
	bl	simple_strtol	@
	str	r0, [r4, #68]	@ prephitmp.5120, extra_ref
.L1804:
	add	r8, r0, #4992	@ tmp184, prephitmp.5120,
	movw	r2, #10000	@ tmp186,
	add	r3, r8, #8	@ tmp184, tmp184,
	cmp	r3, r2	@ tmp184, tmp186
	bhi	.L1806	@,
	movw	ip, #5000	@ tmp187,
	movw	sl, #:lower16:-5000	@ tmp188,
	cmp	r0, ip	@ prephitmp.5120, tmp187
	movge	r0, ip	@ pretmp.5117, tmp187
	movt	sl, #:upper16:-5000	@ tmp188,
	cmp	r0, sl	@ pretmp.5117, tmp188
	movge	r3, r0	@ prephitmp.5119, pretmp.5117
	movlt	r3, sl	@ prephitmp.5119, tmp188
.L1805:
	str	r3, [r4, #68]	@ prephitmp.5119, extra_ref
.L1803:
	ldr	r1, [r7, #0]	@, saved_command_line
	mov	r2, #1024	@,
	ldr	r0, .L1826	@,
	mov	r8, #0	@ tmp194,
	str	r8, [fp, #-40]	@ tmp194, p
	bl	strlcpy	@
	ldr	r0, .L1826	@,
	movw	r1, #:lower16:.LC254	@,
	movt	r1, #:upper16:.LC254	@,
	bl	strstr	@
	cmp	r0, r8	@ tmp198,
	str	r0, [fp, #-40]	@ tmp198, p
	beq	.L1807	@,
	sub	sl, fp, #40	@ p.715,,
	movw	r1, #:lower16:.LC252	@,
	movt	r1, #:upper16:.LC252	@,
	mov	r0, sl	@, p.715
	bl	strsep	@
	subs	r3, r0, #0	@ D.60540,
	beq	.L1812	@,
	mov	r0, sl	@, p.715
	movw	r1, #:lower16:.LC121	@,
	movt	r1, #:upper16:.LC121	@,
	bl	strsep	@
	cmp	r0, r8	@,
	beq	.L1824	@,
	mov	r1, r8	@, tmp194
	mov	r2, r8	@, tmp1
	bl	simple_strtol	@
	str	r0, [r4, #72]	@ prephitmp.5115, extra_disp
.L1811:
	add	sl, r0, #4992	@ tmp209, prephitmp.5115,
	movw	lr, #10000	@ tmp211,
	add	r8, sl, #8	@ tmp209, tmp209,
	cmp	r8, lr	@ tmp209, tmp211
	bhi	.L1813	@,
	movw	r2, #5000	@ tmp212,
	movw	ip, #:lower16:-5000	@ tmp213,
	cmp	r0, r2	@ prephitmp.5115, tmp212
	movge	r0, r2	@ pretmp.5087, tmp212
	movt	ip, #:upper16:-5000	@ tmp213,
	cmp	r0, ip	@ pretmp.5087, tmp213
	movge	r3, r0	@ prephitmp.5088, pretmp.5087
	movlt	r3, ip	@ prephitmp.5088, tmp213
.L1812:
	str	r3, [r4, #72]	@ prephitmp.5088, extra_disp
.L1810:
	ldr	r8, [r4, #1368]	@ extra_cmd.721, extra_cmd
	mov	lr, #0	@ tmp219,
	movw	sl, #:lower16:.LANCHOR0	@ tmp220,
	str	lr, [fp, #-40]	@ tmp219, p
	cmp	r8, lr	@ extra_cmd.721,
	movt	sl, #:upper16:.LANCHOR0	@ tmp220,
	beq	.L1814	@,
	movw	r0, #:lower16:.LANCHOR2	@ tmp225,
	movt	r0, #:upper16:.LANCHOR2	@ tmp225,
	ubfx	r3, r8, #3, #1	@ tmp238, extra_cmd.721,,
	and	r2, r8, #1	@ tmp223, extra_cmd.721,
	ubfx	ip, r8, #1, #1	@ tmp228, extra_cmd.721,,
	strb	r3, [r6, #3546]	@ tmp238, g_apple_airplay_mirrorinig_flag
	ubfx	r8, r8, #2, #1	@ tmp233, extra_cmd.721,,
	strb	r2, [r6, #3544]	@ tmp223, g_allow_B_before_P
	strb	ip, [r0, #64]	@ tmp228, g_not_direct_8x8_inference_flag
	strb	r8, [r6, #3545]	@ tmp233, g_not_allow_H264FullPictureRepair_flag
.L1815:
	movw	r6, #:lower16:.LANCHOR0	@ tmp271,
	movt	r6, #:upper16:.LANCHOR0	@ tmp271,
	mov	r1, #208	@,
	add	r0, r6, #104	@, tmp271,
	bl	__memzero	@
	mov	r0, r6	@, tmp271
	mov	r1, #64	@,
	bl	__memzero	@
	mov	r0, r5	@, tmp307
	movw	r2, #:lower16:VCTRL_EventReport	@ tmp275,
	movt	r2, #:upper16:VCTRL_EventReport	@ tmp275,
	str	r2, [r4, #64]	@ tmp275, g_event_report
	mov	ip, #134217728	@ tmp276,
	mov	r1, #75497472	@ tmp277,
	str	ip, [fp, #-48]	@ tmp276, MemInit.MemBaseAddr
	str	r1, [fp, #-44]	@ tmp277, MemInit.MemSize
	bl	MEM_InitMemManager	@
	bl	FSP_Init	@
	bl	ChanCtx_Init	@
	ldr	r0, .L1826+4	@,
	mov	r1, #64	@,
	bl	__memzero	@
	add	r0, r6, #160	@, tmp271,
	bl	OpenDrivers	@
	cmp	r0, #0	@,
	bne	.L1799	@,
	bl	DBG_CreateTracer	@
	mov	r1, #1	@,
	ldr	r0, .L1826+8	@,
	bl	OSAL_InitEvent	@
	add	r0, r6, #148	@, tmp271,
	movw	r1, #:lower16:.LC257	@,
	movw	r2, #:lower16:VFMW_CTRL_thread_proc	@,
	movt	r1, #:upper16:.LC257	@,
	movt	r2, #:upper16:VFMW_CTRL_thread_proc	@,
	bl	OSAL_CreateTask	@
	subs	r4, r0, #0	@ D.50179,
	bne	.L1819	@,
	mov	lr, #3	@ tmp294,
	add	r0, r6, #148	@, tmp271,
	str	lr, [r6, #140]	@ tmp294, s_VfmwCTrl.eTaskState
	bl	OSAL_WakeupTask	@
	mov	r3, #1	@ tmp299,
	mov	r0, r4	@ D.50159, D.50179
	str	r3, [r6, #104]	@ tmp299, s_VfmwCTrl.s32IsVCTRLOpen
	b	.L1820	@
.L1814:
	ldr	r1, [r7, #0]	@, saved_command_line
	mov	r2, #1024	@,
	ldr	r0, .L1826	@,
	bl	strlcpy	@
	ldr	r0, .L1826	@,
	movw	r1, #:lower16:.LC256	@,
	movt	r1, #:upper16:.LC256	@,
	bl	strstr	@
	cmp	r0, #0	@ tmp243,
	str	r0, [fp, #-40]	@ tmp243, p
	beq	.L1815	@,
	sub	r7, fp, #40	@ p.731,,
	movw	r1, #:lower16:.LC252	@,
	movt	r1, #:upper16:.LC252	@,
	mov	r0, r7	@, p.731
	bl	strsep	@
	cmp	r0, #0	@,
	ldreq	r0, [sl, #1368]	@ prephitmp.5086, extra_cmd
	beq	.L1817	@,
	mov	r0, r7	@, p.731
	movw	r1, #:lower16:.LC121	@,
	movt	r1, #:upper16:.LC121	@,
	bl	strsep	@
	cmp	r0, #0	@,
	beq	.L1825	@,
	mov	r1, r8	@, extra_cmd.721
	mov	r2, r8	@, tmp1
	bl	simple_strtol	@
	str	r0, [sl, #1368]	@ prephitmp.5086, extra_cmd
.L1817:
	movw	ip, #:lower16:.LANCHOR2	@ tmp256,
	movt	ip, #:upper16:.LANCHOR2	@ tmp256,
	ubfx	r3, r0, #3, #1	@ tmp269, prephitmp.5086,,
	and	r2, r0, #1	@ tmp254, prephitmp.5086,
	ubfx	lr, r0, #1, #1	@ tmp259, prephitmp.5086,,
	ubfx	r1, r0, #2, #1	@ tmp264, prephitmp.5086,,
	strb	r3, [r6, #3546]	@ tmp269, g_apple_airplay_mirrorinig_flag
	strb	r2, [r6, #3544]	@ tmp254, g_allow_B_before_P
	strb	lr, [ip, #64]	@ tmp259, g_not_direct_8x8_inference_flag
	strb	r1, [r6, #3545]	@ tmp264, g_not_allow_H264FullPictureRepair_flag
	b	.L1815	@
.L1807:
	ldr	r0, [r4, #72]	@ prephitmp.5115, extra_disp
	b	.L1811	@
.L1800:
	ldr	r0, [r4, #68]	@ prephitmp.5120, extra_ref
	b	.L1804	@
.L1806:
	mov	r2, r0	@, prephitmp.5120
	movw	r1, #:lower16:.LC253	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC253	@,
	bl	dprint_vfmw	@
	ldr	r1, [r4, #68]	@ pretmp.5116, extra_ref
	movw	r3, #5000	@ tmp191,
	movw	r0, #:lower16:-5000	@ tmp192,
	cmp	r1, r3	@ pretmp.5116, tmp191
	movlt	r2, r1	@ prephitmp.5119, pretmp.5116
	movge	r2, r3	@ prephitmp.5119, tmp191
	movt	r0, #:upper16:-5000	@ tmp192,
	cmp	r2, r0	@ prephitmp.5119, tmp192
	movge	r3, r2	@ prephitmp.5119, prephitmp.5119
	movlt	r3, r0	@ prephitmp.5119, tmp192
	b	.L1805	@
.L1813:
	mov	r2, r0	@, prephitmp.5115
	movw	r1, #:lower16:.LC255	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC255	@,
	bl	dprint_vfmw	@
	ldr	r1, [r4, #72]	@ pretmp.5100, extra_disp
	movw	r3, #5000	@ tmp216,
	movw	r0, #:lower16:-5000	@ tmp217,
	cmp	r1, r3	@ pretmp.5100, tmp216
	movlt	r8, r1	@ prephitmp.5088, pretmp.5100
	movge	r8, r3	@ prephitmp.5088, tmp216
	movt	r0, #:upper16:-5000	@ tmp217,
	cmp	r8, r0	@ prephitmp.5088, tmp217
	movge	r3, r8	@ prephitmp.5088, prephitmp.5088
	movlt	r3, r0	@ prephitmp.5088, tmp217
	b	.L1812	@
.L1823:
	movw	r1, #:lower16:.LC163	@,
	ldr	r2, .L1826+12	@,
	movt	r1, #:upper16:.LC163	@,
	movw	r3, #7783	@,
	add	r0, r0, #22	@,,
	bl	dprint_vfmw	@
	b	.L1803	@
.L1824:
	movw	r1, #:lower16:.LC163	@,
	ldr	r2, .L1826+16	@,
	movt	r1, #:upper16:.LC163	@,
	movw	r3, #7818	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	b	.L1810	@
.L1825:
	movw	r1, #:lower16:.LC163	@,
	ldr	r2, .L1826+20	@,
	movt	r1, #:upper16:.LC163	@,
	movw	r3, #7864	@,
	add	r0, r0, #22	@,,
	bl	dprint_vfmw	@
	b	.L1815	@
.L1819:
	add	r0, r6, #160	@, tmp271,
	bl	CloseDrivers	@
	mvn	r0, #0	@ D.50159,
	b	.L1820	@
.L1827:
	.align	2
.L1826:
	.word	.LANCHOR3+2520
	.word	.LANCHOR3-1460
	.word	.LANCHOR3+3548
	.word	.LANCHOR1+344
	.word	.LANCHOR1+364
	.word	.LANCHOR1+384
	.fnend
	.size	VCTRL_OpenVfmw, .-VCTRL_OpenVfmw
	.align	2
	.global	VCTRL_ExtraWakeUpThread
	.type	VCTRL_ExtraWakeUpThread, %function
VCTRL_ExtraWakeUpThread:
	.fnstart
.LFB1542:
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
	ldr	r0, .L1830	@,
	bl	OSAL_GiveEvent	@
	ldmfd	sp, {fp, sp, pc}	@
.L1831:
	.align	2
.L1830:
	.word	.LANCHOR3+3548
	.fnend
	.size	VCTRL_ExtraWakeUpThread, .-VCTRL_ExtraWakeUpThread
	.align	2
	.global	VCTRL_ExtAccGetDecParam
	.type	VCTRL_ExtAccGetDecParam, %function
VCTRL_ExtAccGetDecParam:
	.fnstart
.LFB1622:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp241,
	movt	r4, #:upper16:.LANCHOR0	@ tmp241,
	mov	r6, r0	@ pDecParamInfo, pDecParamInfo
	add	r0, r4, #520	@, tmp241,
	movw	r7, #:lower16:.LANCHOR3	@ tmp242,
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, .L1880	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r8, [r6, #0]	@ D.53841, <variable>.ChanID
	movt	r7, #:upper16:.LANCHOR3	@ tmp242,
	cmn	r8, #1	@ D.53841,
	beq	.L1871	@,
	cmp	r8, #15	@ D.53841,
	bls	.L1872	@,
.L1843:
	mov	r3, r8	@, D.53841
	ldr	r2, .L1880+4	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC261	@,
	movt	r1, #:upper16:.LC261	@,
	bl	dprint_vfmw	@
	mov	r3, #0	@ tmp188,
	str	r3, [r6, #8]	@ tmp188, <variable>.pDecParam
.L1834:
	ldr	r0, .L1880	@,
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r0, .L1880+8	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.53876,
.L1841:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L1872:
	ldr	r3, [r4, r8, asl #2]	@ D.56267, s_pstVfmwChan
	cmp	r3, #0	@ D.56267,
	beq	.L1843	@,
	ldr	r1, [r3, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r1, #0	@ <variable>.s32IsOpen,
	beq	.L1843	@,
	ldr	r0, [r3, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r0, #0	@ <variable>.s32IsRun,
	beq	.L1843	@,
	ldr	r2, [r3, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r2, #0	@ <variable>.s32Priority,
	beq	.L1843	@,
	ldr	ip, [r3, #552]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	ip, #19	@ <variable>.eVidStd,
	beq	.L1843	@,
	mov	r0, r8	@, D.53841
	bl	VDMDRV_IsChanDec	@
	cmp	r0, #1	@,
	beq	.L1873	@,
	mov	r0, r8	@, D.53841
	bl	VCTRL_GetDecParam	@
	subs	r5, r0, #0	@ pDecParam.5193,
	beq	.L1874	@,
	ldr	r3, [r4, r8, asl #2]	@ temp.5195, s_pstVfmwChan
	cmp	r3, #0	@ temp.5195,
	beq	.L1875	@,
	str	r8, [fp, #-56]	@ D.53841, DecParamInfo.ChanID
	sub	r0, fp, #56	@,,
	ldr	lr, [r3, #552]	@ <variable>.eVidStd, <variable>.eVidStd
	ldr	ip, [r7, #3564]	@ AcceleratorCharacter, AcceleratorCharacter
	str	r5, [fp, #-48]	@ pDecParam.5193, DecParamInfo.pDecParam
	str	lr, [fp, #-52]	@ <variable>.eVidStd, DecParamInfo.VidStd
	blx	ip	@ AcceleratorCharacter
	cmp	r0, #1	@,
	bne	.L1847	@,
	mov	r0, r8	@, D.53841
.L1869:
	ldr	ip, [fp, #-56]	@ DecParamInfo.ChanID, DecParamInfo.ChanID
	mov	r1, #4	@,
	ldr	r3, [fp, #-52]	@ DecParamInfo.VidStd, DecParamInfo.VidStd
	ldr	r2, [fp, #-48]	@ DecParamInfo.pDecParam, DecParamInfo.pDecParam
	str	ip, [r6, #0]	@ DecParamInfo.ChanID, <variable>.ChanID
	str	r3, [r6, #4]	@ DecParamInfo.VidStd, <variable>.VidStd
	str	r2, [r6, #8]	@ DecParamInfo.pDecParam, <variable>.pDecParam
	bl	VDMDRV_SetChanIsDec	@
	ldr	r0, .L1880	@,
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r0, .L1880+8	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #0	@ D.53876,
	b	.L1841	@
.L1871:
	movw	r5, #:lower16:g_ChanCtx	@ ivtmp.5190,
	movt	r5, #:upper16:g_ChanCtx	@ ivtmp.5190,
	add	r8, r5, #64	@ D.60723, ivtmp.5190,
	sub	r9, fp, #56	@ tmp248,,
	mov	sl, r4	@ tmp247, tmp241
.L1842:
	ldr	r3, [r5, #64]	@ D.53847,
	cmp	r3, #0	@ D.53847,
	blt	.L1834	@,
	cmp	r3, #15	@ D.53847,
	bhi	.L1835	@,
	ldr	r2, [r4, r3, asl #2]	@ D.56258, s_pstVfmwChan
	cmp	r2, #0	@ D.56258,
	beq	.L1835	@,
	ldr	r1, [r2, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r1, #0	@ <variable>.s32IsOpen,
	beq	.L1835	@,
	ldr	r0, [r2, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r0, #0	@ <variable>.s32IsRun,
	bne	.L1876	@,
.L1835:
	movw	r1, #:lower16:.LC258	@,
	ldr	r2, .L1880+4	@,
	movt	r1, #:upper16:.LC258	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
.L1837:
	add	r5, r5, #4	@ tmp253, ivtmp.5190,
	ldr	r3, [r5, #64]	@ D.53847,
	cmp	r3, #0	@ D.53847,
	blt	.L1834	@,
	cmp	r3, #15	@ D.53847,
	bls	.L1864	@,
.L1854:
	movw	r1, #:lower16:.LC258	@,
	ldr	r2, .L1880+4	@,
	movt	r1, #:upper16:.LC258	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
.L1865:
	add	r5, r5, #4	@ ivtmp.5190, tmp253,
	cmp	r5, r8	@ ivtmp.5190, D.60723
	bne	.L1842	@,
	b	.L1834	@
.L1864:
	ldr	r2, [r4, r3, asl #2]	@ D.56258, s_pstVfmwChan
	cmp	r2, #0	@ D.56258,
	beq	.L1854	@,
	ldr	r0, [r2, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r0, #0	@ <variable>.s32IsOpen,
	beq	.L1854	@,
	ldr	lr, [r2, #16]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	lr, #0	@ <variable>.s32IsRun,
	beq	.L1854	@,
	ldr	ip, [r2, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	ip, #0	@ <variable>.s32Priority,
	beq	.L1854	@,
	ldr	r2, [r2, #552]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r2, #19	@ <variable>.eVidStd,
	beq	.L1854	@,
	mov	r0, r3	@, D.53847
	str	r3, [fp, #-64]	@,
	bl	VDMDRV_IsChanDec	@
	ldr	r3, [fp, #-64]	@,
	cmp	r0, #1	@,
	beq	.L1856	@,
	mov	r0, r3	@, D.53847
	bl	VCTRL_GetDecParam	@
	ldr	r3, [fp, #-64]	@,
	subs	r2, r0, #0	@ pDecParam,
	beq	.L1866	@,
	ldr	r1, [sl, r3, asl #2]	@ D.53866, s_pstVfmwChan
	cmp	r1, #0	@ D.53866,
	beq	.L1867	@,
	str	r3, [fp, #-56]	@ D.53847, DecParamInfo.ChanID
	mov	r0, r9	@, tmp248
	ldr	r1, [r1, #552]	@ <variable>.eVidStd, <variable>.eVidStd
	ldr	r3, [r7, #3564]	@ AcceleratorCharacter, AcceleratorCharacter
	str	r2, [fp, #-48]	@ pDecParam, DecParamInfo.pDecParam
	str	r1, [fp, #-52]	@ <variable>.eVidStd, DecParamInfo.VidStd
	blx	r3	@ AcceleratorCharacter
	ldr	r3, [fp, #-64]	@,
	cmp	r0, #1	@,
	beq	.L1868	@,
	mov	r0, #0	@,
	str	r0, [r6, #8]	@, <variable>.pDecParam
	b	.L1865	@
.L1876:
	ldr	ip, [r2, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	ip, #0	@ <variable>.s32Priority,
	beq	.L1835	@,
	ldr	r2, [r2, #552]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r2, #19	@ <variable>.eVidStd,
	beq	.L1835	@,
	mov	r0, r3	@, D.53847
	str	r3, [fp, #-64]	@,
	bl	VDMDRV_IsChanDec	@
	ldr	r3, [fp, #-64]	@,
	cmp	r0, #1	@,
	beq	.L1877	@,
	mov	r0, r3	@, D.53847
	str	r3, [fp, #-64]	@,
	bl	VCTRL_GetDecParam	@
	ldr	r3, [fp, #-64]	@,
	subs	r2, r0, #0	@ pDecParam,
	beq	.L1878	@,
	ldr	r1, [sl, r3, asl #2]	@ D.53866, s_pstVfmwChan
	cmp	r1, #0	@ D.53866,
	beq	.L1879	@,
	str	r3, [fp, #-56]	@ D.53847, DecParamInfo.ChanID
	mov	r0, r9	@, tmp248
	ldr	lr, [r1, #552]	@ <variable>.eVidStd, <variable>.eVidStd
	ldr	ip, [r7, #3564]	@ AcceleratorCharacter, AcceleratorCharacter
	str	r3, [fp, #-64]	@,
	str	r2, [fp, #-48]	@ pDecParam, DecParamInfo.pDecParam
	str	lr, [fp, #-52]	@ <variable>.eVidStd, DecParamInfo.VidStd
	blx	ip	@ AcceleratorCharacter
	ldr	r3, [fp, #-64]	@,
	cmp	r0, #1	@,
	beq	.L1868	@,
	mov	r3, #0	@,
	str	r3, [r6, #8]	@, <variable>.pDecParam
	b	.L1837	@
.L1879:
	movw	r1, #:lower16:.LC55	@,
	movw	r2, #7597	@,
	movt	r1, #:upper16:.LC55	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L1837	@
.L1867:
	movw	r1, #:lower16:.LC55	@,
	movw	r2, #7597	@,
	movt	r1, #:upper16:.LC55	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L1865	@
.L1877:
	mov	r2, r3	@, D.53847
	movw	r1, #:lower16:.LC259	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC259	@,
	bl	dprint_vfmw	@
	b	.L1837	@
.L1856:
	mov	r2, r3	@, D.53847
	movw	r1, #:lower16:.LC259	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC259	@,
	bl	dprint_vfmw	@
	b	.L1865	@
.L1847:
	mov	r1, #0	@ tmp228,
	str	r1, [r6, #8]	@ tmp228, <variable>.pDecParam
	b	.L1834	@
.L1868:
	mov	r0, r3	@, D.53847
	b	.L1869	@
.L1878:
	mov	r2, r3	@, D.53847
	movw	r1, #:lower16:.LC260	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC260	@,
	bl	dprint_vfmw	@
	b	.L1837	@
.L1866:
	mov	r2, r3	@, D.53847
	movw	r1, #:lower16:.LC260	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC260	@,
	bl	dprint_vfmw	@
	b	.L1865	@
.L1875:
	mov	r3, r8	@, D.53841
	movw	r2, #7658	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC55	@,
	movt	r1, #:upper16:.LC55	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ tmp210,
	str	r0, [r6, #8]	@ tmp210, <variable>.pDecParam
	b	.L1834	@
.L1873:
	mov	r2, r8	@, D.53841
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC259	@,
	movt	r1, #:upper16:.LC259	@,
	bl	dprint_vfmw	@
	mov	r1, #0	@ tmp195,
	str	r1, [r6, #8]	@ tmp195, <variable>.pDecParam
.L1870:
	ldr	r0, .L1880	@,
	bl	OSAL_SpinUnLockIRQ	@
	add	r0, r4, #520	@, tmp241,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.53876,
	b	.L1841	@
.L1874:
	bl	VCTRL_ExtraWakeUpThread	@
	mov	r2, r8	@, D.53841
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC260	@,
	movt	r1, #:upper16:.LC260	@,
	bl	dprint_vfmw	@
	str	r5, [r6, #8]	@ pDecParam.5193, <variable>.pDecParam
	b	.L1870	@
.L1881:
	.align	2
.L1880:
	.word	.LANCHOR3-1732
	.word	.LANCHOR1+400
	.word	.LANCHOR0+520
	.fnend
	.size	VCTRL_ExtAccGetDecParam, .-VCTRL_ExtAccGetDecParam
	.align	2
	.global	VCTRL_InformVdmFree
	.type	VCTRL_InformVdmFree, %function
VCTRL_InformVdmFree:
	.fnstart
.LFB1541:
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
	movw	r4, #:lower16:.LANCHOR3	@ tmp143,
	bl	OSAL_GetTimeInMs	@
	movt	r4, #:upper16:.LANCHOR3	@ tmp143,
	ldr	r3, [r4, #3568]	@ LastEventTime.461, LastEventTime
	cmp	r0, r3	@ CurTime, LastEventTime.461
	mov	r5, r0	@ CurTime,
	strls	r0, [r4, #3568]	@ CurTime, LastEventTime
	bhi	.L1887	@,
.L1884:
	ldr	r0, .L1888	@,
	bl	OSAL_GiveEvent	@
	str	r5, [r4, #3568]	@ CurTime, LastEventTime
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L1887:
	rsb	r3, r3, r0	@ tmp137, LastEventTime.461, CurTime
	cmp	r3, #9	@ tmp137,
	ldmlsfd	sp, {r4, r5, fp, sp, pc}	@
	b	.L1884	@
.L1889:
	.align	2
.L1888:
	.word	.LANCHOR3+3548
	.fnend
	.size	VCTRL_InformVdmFree, .-VCTRL_InformVdmFree
	.align	2
	.global	VCTRL_Scd_Isr_2
	.type	VCTRL_Scd_Isr_2, %function
VCTRL_Scd_Isr_2:
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
	mov	r0, #2	@,
	bl	SM_SCDIntServeProc	@
	mov	r0, #1	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_Scd_Isr_2, .-VCTRL_Scd_Isr_2
	.align	2
	.global	VCTRL_Scd_Isr_1
	.type	VCTRL_Scd_Isr_1, %function
VCTRL_Scd_Isr_1:
	.fnstart
.LFB1539:
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
	bl	SM_SCDIntServeProc	@
	mov	r0, #1	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_Scd_Isr_1, .-VCTRL_Scd_Isr_1
	.align	2
	.global	VCTRL_Scd_Isr
	.type	VCTRL_Scd_Isr, %function
VCTRL_Scd_Isr:
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
	mov	r0, #0	@,
	bl	SM_SCDIntServeProc	@
	mov	r0, #1	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_Scd_Isr, .-VCTRL_Scd_Isr
	.align	2
	.global	VCTRL_Isr_2
	.type	VCTRL_Isr_2, %function
VCTRL_Isr_2:
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
	mov	r0, #2	@,
	bl	VDMDRV_VdmIntServProc	@
	mov	r0, #1	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_Isr_2, .-VCTRL_Isr_2
	.align	2
	.global	VCTRL_Isr_1
	.type	VCTRL_Isr_1, %function
VCTRL_Isr_1:
	.fnstart
.LFB1536:
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
	bl	VDMDRV_VdmIntServProc	@
	mov	r0, #1	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_Isr_1, .-VCTRL_Isr_1
	.align	2
	.global	VCTRL_Isr_0
	.type	VCTRL_Isr_0, %function
VCTRL_Isr_0:
	.fnstart
.LFB1535:
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
	bl	VDMDRV_VdmIntServProc	@
	mov	r0, #1	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_Isr_0, .-VCTRL_Isr_0
	.align	2
	.global	VCTRL_Resume
	.type	VCTRL_Resume, %function
VCTRL_Resume:
	.fnstart
.LFB1531:
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
	bl	OSAL_GetTimeInMs	@
	mov	r4, r0	@ EntrTime,
	mov	r0, #0	@,
	bl	SCDDRV_ExitSleep	@
	mov	r0, #0	@,
	bl	VDMDRV_ExitSleep	@
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp138,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp138,
	ldr	r3, [r3, #24]	@ D.49921, g_vdm_hal_fun_ptr.pfun_BPDDRV_OpenHardware
	cmp	r3, #0	@ D.49921,
	beq	.L1903	@,
	blx	r3	@ D.49921
.L1903:
	bl	VCTRL_StartTask	@
	bl	OSAL_GetTimeInMs	@
	movw	r1, #:lower16:.LC262	@,
	movt	r1, #:upper16:.LC262	@,
	cmp	r4, r0	@ EntrTime, CurTime
	rsbls	r2, r4, r0	@ iftmp.453, EntrTime, CurTime
	mvnhi	r4, r4	@ tmp139, EntrTime
	addhi	r2, r0, r4	@ iftmp.453, CurTime, tmp139
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	VCTRL_Resume, .-VCTRL_Resume
	.align	2
	.global	VCTRL_Suspend
	.type	VCTRL_Suspend, %function
VCTRL_Suspend:
	.fnstart
.LFB1530:
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
	bl	OSAL_GetTimeInMs	@
	mov	r4, r0	@ EntrTime,
	bl	VDM_ResetClock	@
	mov	r0, #0	@,
	bl	SCDDRV_PrepareSleep	@
	mov	r0, #0	@,
	bl	VDMDRV_PrepareSleep	@
	bl	OSAL_GetTimeInMs	@
	mov	r9, r0	@ BeginTime,
	mov	r0, #0	@,
	bl	SCDDRV_GetSleepStage	@
	cmp	r0, #2	@,
	movne	r6, #0	@, isScdSleep
	moveq	r6, #1	@, isScdSleep
	mov	r0, #0	@,
	bl	VDMDRV_GetSleepStage	@
	cmp	r0, #2	@,
	movne	r5, #0	@, isVdmSleep
	moveq	r5, #1	@, isVdmSleep
	tst	r5, r6	@ isVdmSleep, isScdSleep
	bne	.L1912	@,
	mov	r0, #10	@,
	bl	msleep	@
	cmp	r6, #1	@ isScdSleep,
	cmpeq	r5, #1	@, isVdmSleep,
	movne	r8, #1	@ SleepCount,
	beq	.L1912	@,
.L1917:
	mov	r0, #0	@,
	add	sl, r8, #1	@ tmp174, SleepCount,
	bl	SCDDRV_GetSleepStage	@
	cmp	r0, #2	@,
	mov	r0, #0	@,
	moveq	r6, #1	@ isScdSleep,
	bl	VDMDRV_GetSleepStage	@
	cmp	r0, #2	@,
	mov	r0, #10	@,
	moveq	r5, #1	@ isVdmSleep,
	and	r7, r5, r6	@ tmp182, isVdmSleep, isScdSleep
	uxtb	r7, r7	@ tmp183, tmp182
	cmp	r7, #0	@ tmp183,
	bne	.L1912	@,
	cmp	r8, #31	@ SleepCount,
	add	r8, sl, #1	@ SleepCount, tmp174,
	beq	.L1930	@,
	bl	msleep	@
	cmp	r6, #1	@ isScdSleep,
	cmpeq	r5, #1	@, isVdmSleep,
	mov	r0, r7	@, tmp183
	beq	.L1912	@,
	bl	SCDDRV_GetSleepStage	@
	cmp	r0, #2	@,
	mov	r0, r7	@, tmp183
	moveq	r6, #1	@ isScdSleep,
	bl	VDMDRV_GetSleepStage	@
	cmp	r0, #2	@,
	mov	r0, #10	@,
	moveq	r5, #1	@ isVdmSleep,
	and	r3, r5, r6	@ tmp189, isVdmSleep, isScdSleep
	tst	r3, #255	@ tmp189
	bne	.L1912	@,
	bl	msleep	@
	cmp	r6, #1	@ isScdSleep,
	cmpeq	r5, #1	@, isVdmSleep,
	bne	.L1917	@,
.L1912:
	movw	r5, #:lower16:g_vdm_hal_fun_ptr	@ tmp171,
	movt	r5, #:upper16:g_vdm_hal_fun_ptr	@ tmp171,
	ldr	r3, [r5, #20]	@ D.49885, g_vdm_hal_fun_ptr.pfun_SCDDRV_CloseHardware
	cmp	r3, #0	@ D.49885,
	beq	.L1918	@,
	mov	r0, #0	@,
	blx	r3	@ D.49885
.L1919:
	ldr	r3, [r5, #28]	@ D.49891, g_vdm_hal_fun_ptr.pfun_BPDDRV_CloseHardware
	cmp	r3, #0	@ D.49891,
	beq	.L1920	@,
	blx	r3	@ D.49891
.L1920:
	ldr	r3, [r5, #4]	@ D.49896, g_vdm_hal_fun_ptr.pfun_VDMDRV_CloseHardware
	cmp	r3, #0	@ D.49896,
	beq	.L1921	@,
	mov	r0, #0	@,
	blx	r3	@ D.49896
.L1922:
	bl	VCTRL_StopTask	@
	bl	OSAL_GetTimeInMs	@
	movw	r1, #:lower16:.LC266	@,
	movt	r1, #:upper16:.LC266	@,
	cmp	r4, r0	@ EntrTime, CurTime.5417
	rsbls	r2, r4, r0	@ iftmp.449, EntrTime, CurTime.5417
	mvnhi	r2, r4	@ tmp169, EntrTime
	addhi	r2, r0, r2	@ iftmp.449, CurTime.5417, tmp169
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L1918:
	mov	r0, r3	@, D.49885
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #388	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	b	.L1919	@
.L1921:
	mov	r0, r3	@, D.49896
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #393	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	b	.L1922	@
.L1930:
	bl	OSAL_GetTimeInMs	@
	movw	r1, #:lower16:.LC263	@,
	mov	r3, r6	@, isScdSleep
	movt	r1, #:upper16:.LC263	@,
	str	r5, [sp, #0]	@ isVdmSleep,
	cmp	r9, r0	@ BeginTime, CurTime
	rsbls	r2, r9, r0	@ iftmp.446, BeginTime, CurTime
	mvnhi	r2, r9	@ tmp153, BeginTime
	addhi	r2, r0, r2	@ iftmp.446, CurTime, tmp153
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	cmp	r6, #1	@ isScdSleep,
	beq	.L1916	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC264	@,
	mov	r2, r0	@,
	movt	r1, #:upper16:.LC264	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@,
	bl	SCDDRV_ForceSleep	@
.L1916:
	cmp	r5, #1	@ isVdmSleep,
	beq	.L1912	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC265	@,
	mov	r2, r0	@,
	movt	r1, #:upper16:.LC265	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@,
	bl	VDMDRV_ForceSleep	@
	b	.L1912	@
	.fnend
	.size	VCTRL_Suspend, .-VCTRL_Suspend
	.align	2
	.global	VCTRL_SetDbgOption
	.type	VCTRL_SetDbgOption, %function
VCTRL_SetDbgOption:
	.fnstart
.LFB1628:
	@ args = 0, pretend = 0, frame = 416
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #428
	sub	sp, sp, #428	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r1, #0	@ p_args
	bne	.L2006	@,
.L1932:
	mvn	r0, #1	@ D.54123,
.L1979:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L2006:
	cmp	r0, #516	@ opt,
	ldr	r4, [r1, #0]	@ dat,* p_args
	beq	.L1948	@,
	bhi	.L1968	@,
	cmp	r0, #8	@ opt,
	beq	.L1934	@,
	bhi	.L1969	@,
	cmp	r0, #3	@ opt,
	beq	.L1934	@,
	bhi	.L1970	@,
	cmp	r0, #1	@ opt,
	beq	.L1934	@,
	bls	.L2007	@,
	bic	r5, r4, #-16777216	@ Thr, dat,
	mov	r4, r4, lsr #24	@ ChanID, dat,
	sub	r6, fp, #148	@ tmp483,,
	mov	r0, #32	@,
	mov	r2, r4	@, ChanID
	mov	r3, r5	@, Thr
	movw	r1, #:lower16:.LC267	@,
	movt	r1, #:upper16:.LC267	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, ChanID
	mov	r1, r6	@, tmp483
	bl	VCTRL_GetChanCfg	@
	cmp	r0, #0	@,
	beq	.L2008	@,
.L1934:
	mov	r0, #1	@ D.54123,
	b	.L1979	@
.L1968:
	cmp	r0, #1280	@ opt,
	beq	.L1958	@,
	bhi	.L1974	@,
	movw	r3, #898	@ tmp196,
	cmp	r0, r3	@ opt, tmp196
	beq	.L2004	@,
	bhi	.L1975	@,
	movw	r1, #769	@ tmp198,
	cmp	r0, r1	@ opt, tmp198
	beq	.L1950	@,
	bhi	.L1976	@,
	cmp	r0, #768	@ opt,
	bne	.L1932	@,
	bl	VCTRL_Suspend	@
	mov	r0, #1	@ D.54123,
	b	.L1979	@
.L1958:
	movw	r3, #:lower16:g_TraceCtrl	@ tmp440,
	movt	r3, #:upper16:g_TraceCtrl	@ tmp440,
	mov	r2, r4	@, dat
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC305	@,
	str	r4, [r3, #0]	@ dat,
	movt	r1, #:upper16:.LC305	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.54123,
	b	.L1979	@
.L2008:
	mov	r0, r4	@, ChanID
	mov	r1, r6	@, tmp483
	str	r5, [fp, #-132]	@ Thr, ChanCfg.s32ChanErrThr
	bl	VCTRL_ConfigChan	@
	mov	r0, #1	@ D.54123,
	b	.L1979	@
.L1969:
	movw	r3, #257	@ tmp190,
	cmp	r0, r3	@ opt, tmp190
	beq	.L1943	@,
	bhi	.L1971	@,
	cmp	r0, #12	@ opt,
	beq	.L1940	@,
	bhi	.L1972	@,
	cmp	r0, #11	@ opt,
	bne	.L1932	@,
	cmp	r4, #1	@ dat,
	bls	.L2009	@,
	mov	r2, r4	@, dat
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC273	@,
	movt	r1, #:upper16:.LC273	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.54123,
	b	.L1979	@
.L1974:
	movw	r2, #1537	@ tmp204,
	cmp	r0, r2	@ opt, tmp204
	beq	.L1963	@,
	bhi	.L1978	@,
	movw	ip, #1282	@ tmp206,
	cmp	r0, ip	@ opt, tmp206
	beq	.L1960	@,
	bcc	.L1959	@,
	movw	r3, #1283	@ tmp208,
	cmp	r0, r3	@ opt, tmp208
	beq	.L1961	@,
	cmp	r0, #1536	@ opt,
	bne	.L1932	@,
	cmp	r4, #15	@ dat,
	bhi	.L2003	@,
	movw	r0, #:lower16:.LANCHOR0	@ tmp449,
	movt	r0, #:upper16:.LANCHOR0	@ tmp449,
	mov	r5, #1	@ tmp451,
	mov	r2, r4	@, dat
	ldr	ip, [r0, r4, asl #2]	@ tmp450, s_pstVfmwChan
	movw	r1, #:lower16:.LC310	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC310	@,
	str	r5, [ip, #1264]	@ tmp451, <variable>.stSynExtraData.s32ModuleLowlyEnable
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.54123, tmp451
	b	.L1979	@
.L1975:
	cmp	r0, #1024	@ opt,
	beq	.L1955	@,
	bhi	.L1977	@,
	movw	ip, #899	@ tmp201,
	cmp	r0, ip	@ opt, tmp201
	bne	.L1932	@,
	mov	r0, r4	@, dat
	bl	VCTRL_StopChan	@
	mov	r2, r4	@, dat
	movw	r1, #:lower16:.LC299	@,
	movt	r1, #:upper16:.LC299	@,
	mov	r3, r0	@ ret.5479,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, dat
	bl	VCTRL_ResetChan	@
	movw	r1, #:lower16:.LC300	@,
	mov	r2, r4	@, dat
	movt	r1, #:upper16:.LC300	@,
	mov	r3, r0	@ ret.5481,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
.L2004:
	mov	r0, r4	@, dat
	bl	VCTRL_StartChan	@
	mov	r2, r4	@, dat
	movw	r1, #:lower16:.LC301	@,
	movt	r1, #:upper16:.LC301	@,
	mov	r3, r0	@ ret.5483,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.54123,
	b	.L1979	@
.L1970:
	cmp	r0, #5	@ opt,
	beq	.L1937	@,
	bcc	.L1936	@,
	cmp	r0, #6	@ opt,
	beq	.L1934	@,
	cmp	r0, #7	@ opt,
	bne	.L1932	@,
	bic	r5, r4, #-16777216	@ Thr, dat,
	mov	r4, r4, lsr #24	@ ChanID, dat,
	sub	r6, fp, #460	@ tmp227,,
	mov	r0, #32	@,
	mov	r2, r4	@, ChanID
	mov	r3, r5	@, Thr
	movw	r1, #:lower16:.LC271	@,
	movt	r1, #:upper16:.LC271	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, ChanID
	mov	r1, r6	@, tmp227
	bl	VCTRL_GetChanCfg	@
	cmp	r0, #0	@,
	bne	.L1934	@,
	mov	r0, r4	@, ChanID
	mov	r1, r6	@, tmp227
	str	r5, [fp, #-440]	@ Thr, ChanCfg.s32ChanStrmOFThr
	bl	VCTRL_ConfigChan	@
	mov	r0, #1	@ D.54123,
	b	.L1979	@
.L1971:
	movw	r1, #513	@ tmp192,
	cmp	r0, r1	@ opt, tmp192
	beq	.L1945	@,
	bhi	.L1973	@,
	cmp	r0, #512	@ opt,
	bne	.L1932	@,
	cmp	r4, #15	@ dat,
	bhi	.L1934	@,
	movw	r5, #:lower16:.LANCHOR3	@ tmp245,
	movt	r5, #:upper16:.LANCHOR3	@ tmp245,
	add	r6, r5, r4, asl #2	@, tmp248, tmp245, dat,
	ldr	r7, [r6, #3572]	@ tmp250, vfmw_save_str_file
	cmp	r7, #0	@ tmp250,
	beq	.L2010	@,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC282	@,
	movt	r1, #:upper16:.LC282	@,
	bl	dprint_vfmw	@
	ldr	r0, [r6, #3572]	@, vfmw_save_str_file
	bl	klib_fclose	@
	mov	r0, #0	@ tmp278,
	str	r0, [r6, #3572]	@ tmp278, vfmw_save_str_file
	mov	r0, #1	@ D.54123,
	b	.L1979	@
.L1978:
	movw	r1, #1539	@ tmp209,
	cmp	r0, r1	@ opt, tmp209
	beq	.L1965	@,
	bcc	.L1964	@,
	movw	r2, #1540	@ tmp211,
	cmp	r0, r2	@ opt, tmp211
	beq	.L1966	@,
	movw	ip, #1541	@ tmp212,
	cmp	r0, ip	@ opt, tmp212
	bne	.L1932	@,
	movw	lr, #:lower16:.LANCHOR3	@ tmp480,
	movt	lr, #:upper16:.LANCHOR3	@ tmp480,
	mov	r2, r4	@, dat
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC311	@,
	str	r4, [lr, #3876]	@ dat, g_SCDID
	movt	r1, #:upper16:.LC311	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.54123,
	b	.L1979	@
.L2003:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC309	@,
	movt	r1, #:upper16:.LC309	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.54123,
	b	.L1979	@
.L1943:
	movw	r6, #:lower16:g_PrintEnable	@ tmp241,
	movt	r6, #:upper16:g_PrintEnable	@ tmp241,
	mov	r0, r4	@, dat
	mov	r2, #67108864	@ tmp243,
	ldr	r4, [r6, #0]	@ TmpPrintEnable, g_PrintEnable
	mov	r1, #1	@,
	str	r2, [r6, #0]	@ tmp243, g_PrintEnable
	bl	PrintScdRawState	@
	mov	r0, #1	@ D.54123,
	str	r4, [r6, #0]	@ TmpPrintEnable, g_PrintEnable
	b	.L1979	@
.L1963:
	cmp	r4, #15	@ dat,
	bhi	.L2003	@,
	movw	r1, #:lower16:.LANCHOR0	@ tmp454,
	movt	r1, #:upper16:.LANCHOR0	@ tmp454,
	mov	ip, #0	@ tmp456,
	mov	r2, r4	@, dat
	ldr	lr, [r1, r4, asl #2]	@ tmp455, s_pstVfmwChan
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC310	@,
	movt	r1, #:upper16:.LC310	@,
	str	ip, [lr, #1264]	@ tmp456, <variable>.stSynExtraData.s32ModuleLowlyEnable
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.54123,
	b	.L1979	@
.L1961:
	movw	r3, #:lower16:g_TraceImgPeriod	@ tmp446,
	movt	r3, #:upper16:g_TraceImgPeriod	@ tmp446,
	mov	r2, r4	@, dat
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC308	@,
	str	r4, [r3, #0]	@ dat,
	movt	r1, #:upper16:.LC308	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.54123,
	b	.L1979	@
.L1966:
	add	r4, r4, r4, asl #1	@, tmp474, dat, dat,
	movw	r1, #:lower16:s_SmIIS	@ tmp470,
	movt	r1, #:upper16:s_SmIIS	@ tmp470,
	mov	r2, #0	@ tmp479,
	add	ip, r1, r4, asl #4	@, tmp476, tmp470, tmp474,
	mov	r0, #1	@ D.54123,
	ldr	r3, [ip, #40]	@ <variable>.pSmInstArray, <variable>.pSmInstArray
	str	r2, [r3, #88]	@ tmp479, <variable>.Config.ScdLowdlyEnable
	b	.L1979	@
.L1964:
	movw	r3, #:lower16:g_TunnelLineNumber	@ tmp458,
	movt	r3, #:upper16:g_TunnelLineNumber	@ tmp458,
	mov	r2, r4	@, dat
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC310	@,
	str	r4, [r3, #0]	@ dat,
	movt	r1, #:upper16:.LC310	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.54123,
	b	.L1979	@
.L1965:
	add	r4, r4, r4, asl #1	@, tmp464, dat, dat,
	movw	r0, #:lower16:s_SmIIS	@ tmp460,
	movt	r0, #:upper16:s_SmIIS	@ tmp460,
	mov	r2, #1	@ tmp469,
	add	r1, r0, r4, asl #4	@, tmp466, tmp460, tmp464,
	mov	r0, r2	@ D.54123, tmp469
	ldr	ip, [r1, #40]	@ <variable>.pSmInstArray, <variable>.pSmInstArray
	str	r2, [ip, #88]	@ tmp469, <variable>.Config.ScdLowdlyEnable
	b	.L1979	@
.L2007:
	movw	r3, #:lower16:g_PrintEnable	@ tmp213,
	movt	r3, #:upper16:g_PrintEnable	@ tmp213,
	mov	r0, #1	@ D.54123,
	str	r4, [r3, #0]	@ dat, g_PrintEnable
	b	.L1979	@
.L1948:
#APP
@ 182 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/arch/arm/include/asm/memory.h" 1
	@ __pv_stub
1:	sub	r5, r4, #-2130706432	@ ptr, dat,
	.pushsection .pv_table,"a"
	.long	1b
	.popsection

@ 0 "" 2
	cmp	r5, #0	@ ptr,
	ldmib	r1, {r7, r8}	@ phole ldm
	beq	.L2005	@,
	sub	r6, fp, #148	@ tmp487,,
	mov	r1, #50	@,
	movw	r2, #:lower16:.LC297	@,
	movw	r3, #:lower16:.LANCHOR2	@,
	movt	r2, #:upper16:.LC297	@,
	movt	r3, #:upper16:.LANCHOR2	@,
	mov	r0, r6	@, tmp487
	str	r4, [sp, #0]	@ dat,
	bl	snprintf	@
	mov	r0, r6	@, tmp487
	mov	r1, #66	@,
	mov	r2, #0	@,
	bl	klib_fopen	@
	subs	r4, r0, #0	@ fp,
	beq	.L1996	@,
	movw	lr, #:lower16:g_vdm_hal_fun_ptr	@ tmp420,
	movt	lr, #:upper16:g_vdm_hal_fun_ptr	@ tmp420,
	ldr	ip, [lr, #116]	@ D.54276, g_vdm_hal_fun_ptr.pfun_VDMHAL_Write1DYuv
	cmp	ip, #0	@ D.54276,
	beq	.L1997	@,
	mov	r1, #1	@ tmp421,
	mov	r2, r7	@, D.54266
	str	r1, [sp, #0]	@ tmp421,
	mov	r3, r8	@, D.54268
	mov	r1, r5	@, ptr
	blx	ip	@ D.54276
.L1998:
	mov	r0, r4	@, fp
	bl	klib_fclose	@
	movw	r1, #:lower16:.LC298	@,
	mov	r2, r6	@, tmp487
	movt	r1, #:upper16:.LC298	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
.L1995:
	mov	r0, r5	@, ptr
	bl	__arm_iounmap	@
	mov	r0, #1	@ D.54123,
	b	.L1979	@
.L1940:
	cmp	r4, #1	@ dat,
	bls	.L2011	@,
	mov	r2, r4	@, dat
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC275	@,
	movt	r1, #:upper16:.LC275	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.54123,
	b	.L1979	@
.L1936:
	and	r5, r4, #3	@ DecOrderOutput, dat,
	mov	r4, r4, lsr #24	@ ChanID, dat,
	sub	r6, fp, #252	@ tmp485,,
	mov	r0, #32	@,
	mov	r2, r4	@, ChanID
	mov	r3, r5	@, DecOrderOutput
	movw	r1, #:lower16:.LC268	@,
	movt	r1, #:upper16:.LC268	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, ChanID
	mov	r1, r6	@, tmp485
	bl	VCTRL_GetChanCfg	@
	cmp	r0, #0	@,
	bne	.L1934	@,
	mov	r0, r4	@, ChanID
	mov	r1, r6	@, tmp485
	str	r5, [fp, #-224]	@ DecOrderOutput, ChanCfg.s32DecOrderOutput
	bl	VCTRL_ConfigChan	@
	mov	r0, #1	@ D.54123,
	b	.L1979	@
.L1950:
	bl	VCTRL_Resume	@
	mov	r0, #1	@ D.54123,
	b	.L1979	@
.L1945:
	cmp	r4, #15	@ dat,
	bhi	.L1934	@,
	movw	r5, #:lower16:.LANCHOR3	@ tmp486,
	mov	r6, r4, asl #2	@ tmp484, dat,
	movt	r5, #:upper16:.LANCHOR3	@ tmp486,
	add	r3, r6, r5	@ tmp282, tmp484, tmp486
	ldr	r1, [r3, #3708]	@ tmp284, vfmw_save_seg_file
	cmp	r1, #0	@ tmp284,
	beq	.L2012	@,
	add	r5, r6, r5	@ tmp304, tmp484, tmp486
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC286	@,
	movt	r1, #:upper16:.LC286	@,
	bl	dprint_vfmw	@
	ldr	r0, [r5, #3708]	@, vfmw_save_seg_file
	bl	klib_fclose	@
	mov	r2, #0	@ tmp312,
	mov	r0, #1	@ D.54123,
	str	r2, [r5, #3708]	@ tmp312, vfmw_save_seg_file
	b	.L1979	@
.L1959:
	movw	ip, #:lower16:g_TraceBsPeriod	@ tmp442,
	movt	ip, #:upper16:g_TraceBsPeriod	@ tmp442,
	mov	r2, r4	@, dat
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC306	@,
	str	r4, [ip, #0]	@ dat,
	movt	r1, #:upper16:.LC306	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.54123,
	b	.L1979	@
.L1955:
	movw	r3, #:lower16:.LANCHOR3	@ tmp434,
	movt	r3, #:upper16:.LANCHOR3	@ tmp434,
	mov	r2, r4	@, dat
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC302	@,
	str	r4, [r3, #3864]	@ dat, g_SleepTime
	movt	r1, #:upper16:.LC302	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.54123,
	b	.L1979	@
.L1960:
	movw	lr, #:lower16:g_TraceFramePeriod	@ tmp444,
	movt	lr, #:upper16:g_TraceFramePeriod	@ tmp444,
	mov	r2, r4	@, dat
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC307	@,
	str	r4, [lr, #0]	@ dat,
	movt	r1, #:upper16:.LC307	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.54123,
	b	.L1979	@
.L1937:
	and	r5, r4, #7	@ Mode, dat,
	mov	r4, r4, lsr #24	@ ChanID, dat,
	sub	r6, fp, #356	@ tmp221,,
	mov	r0, #32	@,
	mov	r2, r4	@, ChanID
	mov	r3, r5	@, Mode
	movw	r1, #:lower16:.LC269	@,
	movt	r1, #:upper16:.LC269	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, ChanID
	mov	r1, r6	@, tmp221
	bl	VCTRL_GetChanCfg	@
	cmp	r0, #0	@,
	bne	.L1980	@,
	mov	r0, r4	@, ChanID
	mov	r1, r6	@, tmp221
	str	r5, [fp, #-332]	@ Mode, ChanCfg.s32DecMode
	bl	VCTRL_ConfigChan	@
	mov	r0, #1	@ D.54123,
	b	.L1979	@
.L1976:
	cmp	r0, #896	@ opt,
	beq	.L1951	@,
	movw	r2, #897	@ tmp200,
	cmp	r0, r2	@ opt, tmp200
	bne	.L1932	@,
	mov	r0, r4	@, dat
	bl	VCTRL_ResetChan	@
	mov	r2, r4	@, dat
	movw	r1, #:lower16:.LC300	@,
	movt	r1, #:upper16:.LC300	@,
	mov	r3, r0	@ ret.5475,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.54123,
	b	.L1979	@
.L1951:
	mov	r0, r4	@, dat
	bl	VCTRL_StopChan	@
	mov	r2, r4	@, dat
	movw	r1, #:lower16:.LC299	@,
	movt	r1, #:upper16:.LC299	@,
	mov	r3, r0	@ ret,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.54123,
	b	.L1979	@
.L1977:
	movw	r3, #1025	@ tmp202,
	cmp	r0, r3	@ opt, tmp202
	beq	.L1956	@,
	movw	r1, #1026	@ tmp203,
	cmp	r0, r1	@ opt, tmp203
	bne	.L1932	@,
	movw	lr, #:lower16:.LANCHOR3	@ tmp438,
	movt	lr, #:upper16:.LANCHOR3	@ tmp438,
	mov	r2, r4	@, dat
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC304	@,
	str	r4, [lr, #3872]	@ dat, g_StopDec
	movt	r1, #:upper16:.LC304	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.54123,
	b	.L1979	@
.L1956:
	movw	ip, #:lower16:.LANCHOR3	@ tmp436,
	movt	ip, #:upper16:.LANCHOR3	@ tmp436,
	mov	r2, r4	@, dat
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC303	@,
	str	r4, [ip, #3868]	@ dat, g_DnrSleepTime
	movt	r1, #:upper16:.LC303	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.54123,
	b	.L1979	@
.L1973:
	movw	r2, #514	@ tmp194,
	cmp	r0, r2	@ opt, tmp194
	beq	.L1946	@,
	movw	ip, #515	@ tmp195,
	cmp	r0, ip	@ opt, tmp195
	bne	.L1932	@,
#APP
@ 182 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/arch/arm/include/asm/memory.h" 1
	@ __pv_stub
1:	sub	r5, r4, #-2130706432	@ ptr, dat,
	.pushsection .pv_table,"a"
	.long	1b
	.popsection

@ 0 "" 2
	cmp	r5, #0	@ ptr,
	beq	.L2005	@,
	sub	r6, fp, #148	@ tmp407,,
	mov	r1, #50	@,
	movw	r2, #:lower16:.LC294	@,
	movw	r3, #:lower16:.LANCHOR2	@,
	movt	r2, #:upper16:.LC294	@,
	movt	r3, #:upper16:.LANCHOR2	@,
	mov	r0, r6	@, tmp407
	str	r4, [sp, #0]	@ dat,
	bl	snprintf	@
	mov	r0, r6	@, tmp407
	mov	r1, #66	@,
	mov	r2, #0	@,
	bl	klib_fopen	@
	subs	r4, r0, #0	@ fp,
	beq	.L1996	@,
	mov	r2, r4	@, fp
	mov	r1, #3145728	@,
	mov	r0, r5	@, ptr
	bl	klib_fwrite	@
	mov	r0, r4	@, fp
	bl	klib_fclose	@
	mov	r2, r6	@, tmp407
	movw	r1, #:lower16:.LC295	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC295	@,
	bl	dprint_vfmw	@
	b	.L1995	@
.L1946:
	cmp	r4, #15	@ dat,
	bhi	.L1934	@,
	movw	r5, #:lower16:.LANCHOR3	@ tmp313,
	movt	r5, #:upper16:.LANCHOR3	@ tmp313,
	add	r7, r5, r4, asl #2	@, tmp316, tmp313, dat,
	sub	r8, r7, #1648	@ tmp317, tmp316,
	ldr	r6, [r7, #-1656]	@ tmp318, vfmw_save_yuv_file
	sub	r8, r8, #8	@ tmp317, tmp317,
	cmp	r6, #0	@ tmp318,
	beq	.L2013	@,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC292	@,
	movt	r1, #:upper16:.LC292	@,
	bl	dprint_vfmw	@
	ldr	r0, [r7, #-1656]	@, vfmw_save_yuv_file
	bl	klib_fclose	@
	ldr	r0, [r5, #3856]	@ temp.5463, MemRecord_YUV.PhyAddr
	movw	r3, #:lower16:.LANCHOR0	@ tmp388,
	movw	r1, #:lower16:.LANCHOR2	@ tmp394,
	movt	r3, #:upper16:.LANCHOR0	@ tmp388,
	movt	r1, #:upper16:.LANCHOR2	@ tmp394,
	cmp	r0, #0	@ temp.5463,
	mov	r2, #0	@ tmp387,
	mvn	ip, #0	@ tmp395,
	str	r2, [r7, #-1656]	@ tmp387, vfmw_save_yuv_file
	str	ip, [r1, #68]	@ tmp395, save_yuv_chan_num
	str	r2, [r3, #504]	@ tmp387, pY
	str	r2, [r5, #-1528]	@ tmp387, save_yuv_with_crop
	str	r2, [r3, #508]	@ tmp387, pVl
	str	r2, [r3, #512]	@ tmp387, pUl
	beq	.L1934	@,
	ldr	r1, [r5, #3852]	@, MemRecord_YUV.VirAddr
	bl	MEM_ReleaseMemBlock	@
	ldr	r2, [r5, #3860]	@, MemRecord_YUV.Length
	ldr	r1, [r5, #3852]	@, MemRecord_YUV.VirAddr
	ldr	r0, [r5, #3856]	@, MemRecord_YUV.PhyAddr
	bl	MEM_DelMemRecord	@
	ldr	r0, .L2014	@,
	mov	r1, #16	@,
	bl	__memzero	@
	mov	r0, #1	@ D.54123,
	b	.L1979	@
.L1972:
	cmp	r0, #13	@ opt,
	beq	.L1941	@,
	cmp	r0, #256	@ opt,
	bne	.L1932	@,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC278	@,
	movt	r1, #:upper16:.LC278	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, dat
	bl	DBG_PrintTracer	@
	mov	r0, #1	@ D.54123,
	b	.L1979	@
.L1941:
	cmp	r4, #16	@ dat,
	bls	.L1983	@,
	mov	r2, r4	@, dat
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC276	@,
	movt	r1, #:upper16:.LC276	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.54123,
	b	.L1979	@
.L1980:
	mov	r2, r4	@, ChanID
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC270	@,
	movt	r1, #:upper16:.LC270	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.54123,
	b	.L1979	@
.L1983:
	movw	r3, #:lower16:.LANCHOR0	@ tmp238,
	movt	r3, #:upper16:.LANCHOR0	@ tmp238,
	mov	r2, r4	@, dat
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC277	@,
	str	r4, [r3, #1364]	@ dat, g_CurProcChan
	movt	r1, #:upper16:.LC277	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.54123,
	b	.L1979	@
.L2005:
	mov	r2, r4	@, dat
	movw	r1, #:lower16:.LC293	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC293	@,
	bl	dprint_vfmw	@
	b	.L1995	@
.L2009:
	movw	lr, #:lower16:USE_FF_APT_EN	@ tmp231,
	movt	lr, #:upper16:USE_FF_APT_EN	@ tmp231,
	mov	r2, r4	@, dat
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC272	@,
	str	r4, [lr, #0]	@ dat,
	movt	r1, #:upper16:.LC272	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.54123,
	b	.L1979	@
.L2011:
	movw	ip, #:lower16:.LANCHOR0	@ tmp234,
	movt	ip, #:upper16:.LANCHOR0	@ tmp234,
	mov	r2, r4	@, dat
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC274	@,
	str	r4, [ip, #1372]	@ dat, g_ResetCreateNewSave
	movt	r1, #:upper16:.LC274	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.54123,
	b	.L1979	@
.L1996:
	mov	r2, r6	@, tmp487
	movw	r1, #:lower16:.LC296	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC296	@,
	bl	dprint_vfmw	@
	b	.L1995	@
.L1997:
	mov	r0, ip	@, D.54276
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #8263	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	b	.L1998	@
.L2013:
	ldr	ip, [r5, #3844]	@ save_file_cnt.755, save_file_cnt
	sub	r9, fp, #148	@ str.752,,
	movw	sl, #:lower16:.LANCHOR2	@ tmp323,
	movt	sl, #:upper16:.LANCHOR2	@ tmp323,
	add	lr, ip, #1	@ tmp321, save_file_cnt.755,
	mov	r1, #100	@,
	str	ip, [sp, #0]	@ save_file_cnt.755,
	mov	r3, sl	@, tmp323
	str	lr, [r5, #3844]	@ tmp321, save_file_cnt
	mov	r0, r9	@, str.752
	movw	r2, #:lower16:.LC287	@,
	movt	r2, #:upper16:.LC287	@,
	bl	snprintf	@
	mov	r0, r9	@, str.752
	movw	r1, #578	@,
	mov	r2, r6	@, tmp318
	bl	klib_fopen	@
	cmp	r0, #0	@ D.54210,
	str	r0, [r7, #-1656]	@ D.54210, vfmw_save_yuv_file
	beq	.L1989	@,
	ldr	r0, .L2014	@,
	mov	r1, #16	@,
	bl	__memzero	@
	movw	r0, #:lower16:.LC288	@,
	mov	r1, r6	@, tmp318
	movt	r0, #:upper16:.LC288	@,
	mov	r2, #14155776	@,
	ldr	r3, .L2014	@,
	str	r6, [sp, #0]	@ tmp318,
	bl	MEM_AllocMemBlock	@
	subs	r7, r0, #0	@ D.54223,
	beq	.L1990	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC289	@,
	movt	r1, #:upper16:.LC289	@,
	bl	dprint_vfmw	@
	ldr	r0, [r8, #0]	@, vfmw_save_yuv_file
	bl	klib_fclose	@
	movw	r1, #:lower16:.LANCHOR0	@ tmp350,
	movt	r1, #:upper16:.LANCHOR0	@ tmp350,
	mvn	r0, #0	@ tmp357,
	str	r6, [r5, #-1528]	@ tmp318, save_yuv_with_crop
	str	r0, [sl, #68]	@ tmp357, save_yuv_chan_num
	mov	r0, #1	@ D.54123,
	str	r6, [r8, #0]	@ tmp318, vfmw_save_yuv_file
	str	r6, [r1, #504]	@ tmp318, pY
	str	r6, [r1, #508]	@ tmp318, pVl
	str	r6, [r1, #512]	@ tmp318, pUl
	b	.L1979	@
.L2012:
	ldr	ip, [r5, #3836]	@ save_file_cnt.749, save_file_cnt
	sub	r7, fp, #148	@ str.746,,
	mov	r1, #50	@,
	movw	r2, #:lower16:.LC283	@,
	add	lr, ip, #1	@ tmp287, save_file_cnt.749,
	movt	r2, #:upper16:.LC283	@,
	str	ip, [sp, #0]	@ save_file_cnt.749,
	mov	r0, r7	@, str.746
	str	lr, [r5, #3836]	@ tmp287, save_file_cnt
	movw	r3, #:lower16:.LANCHOR2	@,
	movt	r3, #:upper16:.LANCHOR2	@,
	add	r6, r6, r5	@ tmp293, tmp484, tmp486
	bl	snprintf	@
	mov	r0, r7	@, str.746
	mov	r1, #66	@,
	mov	r2, #0	@,
	bl	klib_fopen	@
	str	r4, [r5, #3840]	@ dat, save_seg_chan_num
	cmp	r0, #0	@ D.54192,
	str	r0, [r6, #3708]	@ D.54192, vfmw_save_seg_file
	beq	.L1987	@,
	mov	r2, r7	@, str.746
	mov	r3, r4	@, dat
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC284	@,
	movt	r1, #:upper16:.LC284	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.54123,
	b	.L1979	@
.L2010:
	ldr	ip, [r5, #3700]	@ save_file_cnt.743, save_file_cnt
	sub	r8, fp, #148	@ str.739,,
	mov	r1, #50	@,
	movw	r2, #:lower16:.LC279	@,
	add	lr, ip, #1	@ tmp253, save_file_cnt.743,
	movt	r2, #:upper16:.LC279	@,
	str	ip, [sp, #0]	@ save_file_cnt.743,
	mov	r0, r8	@, str.739
	str	lr, [r5, #3700]	@ tmp253, save_file_cnt
	movw	r3, #:lower16:.LANCHOR2	@,
	movt	r3, #:upper16:.LANCHOR2	@,
	bl	snprintf	@
	mov	r0, r8	@, str.739
	mov	r2, r7	@, tmp250
	mov	r1, #66	@,
	bl	klib_fopen	@
	str	r4, [r5, #3704]	@ dat, save_str_chan_num
	cmp	r0, #0	@ D.54174,
	str	r0, [r6, #3572]	@ D.54174, vfmw_save_str_file
	beq	.L1985	@,
	mov	r2, r8	@, str.739
	mov	r3, r4	@, dat
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC280	@,
	movt	r1, #:upper16:.LC280	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.54123,
	b	.L1979	@
.L1990:
	ldr	r1, [r5, #3852]	@, MemRecord_YUV.VirAddr
	and	r4, r4, #3	@ save_yuv_with_crop.764, dat,
	ldr	r2, [r5, #3860]	@, MemRecord_YUV.Length
	ldr	r0, [r5, #3856]	@, MemRecord_YUV.PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	lr, [r5, #3852]	@ pY.759, MemRecord_YUV.VirAddr
	movw	ip, #:lower16:.LANCHOR0	@ tmp364,
	movt	ip, #:upper16:.LANCHOR0	@ tmp364,
	str	r4, [r5, #-1528]	@ save_yuv_with_crop.764, save_yuv_with_crop
	add	r6, lr, #11796480	@ tmp367, pY.759,
	mov	r2, r9	@, str.752
	str	r6, [ip, #508]	@ tmp367, pVl
	mov	r3, r7	@, D.54223
	str	r4, [sp, #0]	@ save_yuv_with_crop.764,
	mov	r0, #32	@,
	add	r4, lr, #9437184	@ pUl.761, pY.759,
	movw	r1, #:lower16:.LC290	@,
	str	r4, [ip, #512]	@ pUl.761, pUl
	movt	r1, #:upper16:.LC290	@,
	str	lr, [ip, #504]	@ pY.759, pY
	str	r7, [sl, #68]	@ D.54223, save_yuv_chan_num
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.54123,
	b	.L1979	@
.L1987:
	mov	r2, r7	@, str.746
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC285	@,
	movt	r1, #:upper16:.LC285	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.54123,
	b	.L1979	@
.L1989:
	mov	r2, r9	@, str.752
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC291	@,
	movt	r1, #:upper16:.LC291	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.54123,
	b	.L1979	@
.L1985:
	mov	r2, r8	@, str.739
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC281	@,
	movt	r1, #:upper16:.LC281	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.54123,
	b	.L1979	@
.L2015:
	.align	2
.L2014:
	.word	.LANCHOR3+3848
	.fnend
	.size	VCTRL_SetDbgOption, .-VCTRL_SetDbgOption
	.align	2
	.global	vfmw_write_proc
	.type	vfmw_write_proc, %function
vfmw_write_proc:
	.fnstart
.LFB1650:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #48
	sub	sp, sp, #48	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r2, #255	@ count,
	mov	r3, #0	@ tmp164,
	mov	r4, r2	@ count, count
	mov	r7, r1	@ buffer, buffer
	str	r3, [fp, #-32]	@ tmp164, dat1
	str	r3, [fp, #-44]	@ tmp164, dat4
	str	r3, [fp, #-40]	@ tmp164, dat3
	str	r3, [fp, #-36]	@ tmp164, dat2
	bhi	.L2187	@,
	movw	r6, #:lower16:.LANCHOR3	@ tmp169,
	movt	r6, #:upper16:.LANCHOR3	@ tmp169,
	add	r5, r6, #3872	@ tmp339, tmp169,
	mov	r1, #256	@,
	add	r5, r5, #8	@ tmp339, tmp339,
	mov	r0, r5	@, tmp339
	bl	__memzero	@
	mov	r2, sp	@,
	bic	ip, r2, #8128	@ tmp172,,
	bic	r1, ip, #63	@ tmp172, tmp172,
	ldr	r0, [r1, #8]	@ <variable>.addr_limit, <variable>.addr_limit
#APP
@ 434 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/arch/arm/include/asm/uaccess.h" 1
	adds r2, r7, r4; sbcccs r2, r2, r0; movcc r0, #0	@ roksum, buffer, count, flag
@ 0 "" 2
	cmp	r0, #0	@ flag,
	beq	.L2188	@,
	cmp	r4, #0	@ count,
	streqb	r4, [r6, #3880]	@ count, cmd
	bne	.L2189	@,
.L2184:
	movw	r7, #:lower16:.LANCHOR4	@ tmp336,
	movt	r7, #:upper16:.LANCHOR4	@ tmp336,
	mov	r6, r4	@ i, count
	mov	r3, r4	@ j, count
.L2024:
	add	r3, r3, r7	@ tmp201, j, tmp336
	mov	lr, #0	@ tmp203,
	ldr	r0, .L2196	@,
	sub	r1, fp, #32	@,,
	strb	lr, [r3, #-4048]	@ tmp203, str
	bl	str2val	@
	subs	r3, r0, #0	@ D.55152,
	bne	.L2056	@,
	cmp	r4, r6	@ count, i
	bls	.L2032	@,
	add	r2, r5, r6	@ ivtmp.5543, tmp339, i
	mvn	r1, r6	@ tmp362, i
	add	r0, r1, r4	@ tmp361, tmp362, count
	ldrb	r1, [r2, #0]	@ zero_extendqisi2	@ prephitmp.5567, cmd
	and	r0, r0, #1	@ tmp363, tmp361,
	cmp	r1, #32	@ prephitmp.5567,
	beq	.L2114	@,
	movhi	r3, #1	@ j.5548,
	strhib	r1, [r7, #-4048]	@ prephitmp.5567, str
.L2114:
	add	r6, r6, #1	@ i, i,
	add	r2, r2, #1	@ ivtmp.5543, ivtmp.5543,
	cmp	r6, r4	@ i, count
	bcs	.L2032	@,
	cmp	r0, #0	@ tmp363,
	beq	.L2037	@,
	cmp	r3, #0	@ j.5548,
	bne	.L2190	@,
	ldrb	r1, [r2, #0]	@ zero_extendqisi2	@ prephitmp.5567, cmd
	cmp	r1, #32	@ prephitmp.5567,
	beq	.L2118	@,
.L2176:
	cmp	r1, #32	@ prephitmp.5567,
	addhi	r0, r3, r7	@ tmp422, j.5548, tmp336
	addhi	r3, r3, #1	@ j.5548, j.5548,
	strhib	r1, [r0, #-4048]	@ prephitmp.5567, str
	cmp	r3, #0	@ j.5548,
	beq	.L2118	@,
	cmp	r1, #32	@ prephitmp.5567,
	beq	.L2032	@,
.L2118:
	add	r6, r6, #1	@ i, i,
	add	r2, r2, #1	@ ivtmp.5543, ivtmp.5543,
	cmp	r6, r4	@ i, count
	bcc	.L2037	@,
	b	.L2032	@
.L2121:
	ldrb	r2, [r2, #1]	@ zero_extendqisi2	@ prephitmp.5567, cmd
	cmp	r2, #32	@ prephitmp.5567,
	beq	.L2123	@,
.L2178:
	cmp	r2, #32	@ prephitmp.5567,
	addhi	ip, r3, r7	@ tmp426, j.5548, tmp336
	addhi	r3, r3, #1	@ j.5548, j.5548,
	strhib	r2, [ip, #-4048]	@ prephitmp.5567, str
	cmp	r3, #0	@ j.5548,
	beq	.L2123	@,
	cmp	r2, #32	@ prephitmp.5567,
	beq	.L2032	@,
.L2123:
	add	r6, r0, #1	@ i, tmp365,
	add	r2, r1, #1	@ ivtmp.5543, tmp364,
	cmp	r6, r4	@ i, count
	bcs	.L2032	@,
.L2037:
	cmp	r3, #0	@ j.5548,
	ldrneb	r1, [r2, #0]	@ zero_extendqisi2	@ prephitmp.5567, cmd
	bne	.L2034	@,
	ldrb	r1, [r2, #0]	@ zero_extendqisi2	@ prephitmp.5567, cmd
	cmp	r1, #32	@ prephitmp.5567,
	beq	.L2035	@,
.L2034:
	cmp	r1, #32	@ prephitmp.5567,
	addhi	r0, r3, r7	@ tmp218, j.5548, tmp336
	addhi	r3, r3, #1	@ j.5548, j.5548,
	strhib	r1, [r0, #-4048]	@ prephitmp.5567, str
	cmp	r3, #0	@ j.5548,
	beq	.L2035	@,
	cmp	r1, #32	@ prephitmp.5567,
	beq	.L2032	@,
.L2035:
	add	r6, r6, #1	@ i, i,
	cmp	r3, #0	@ j.5548,
	add	r1, r2, #1	@ tmp364, ivtmp.5543,
	mov	r0, r6	@ tmp365, i
	beq	.L2121	@,
	ldrb	r2, [r2, #1]	@ zero_extendqisi2	@ prephitmp.5567, cmd
	b	.L2178	@
.L2032:
	add	r2, r3, r7	@ tmp223, j.5548, tmp336
	mov	ip, #0	@ tmp225,
	ldr	r0, .L2196	@,
	sub	r1, fp, #36	@,,
	strb	ip, [r2, #-4048]	@ tmp225, str
	bl	str2val	@
	subs	r3, r0, #0	@ D.55165,
	bne	.L2056	@,
	ldr	r2, [fp, #-32]	@ prephitmp.5515, dat1
	sub	lr, r2, #512	@ tmp235, prephitmp.5515,
	cmp	lr, #255	@ tmp235,
	bhi	.L2039	@,
	cmp	r2, #516	@ prephitmp.5515,
	beq	.L2191	@,
.L2040:
	cmp	r4, r6	@ count, i
	movls	r3, #0	@ j.5551,
	bls	.L2058	@,
	add	r5, r5, r6	@ ivtmp.5531, tmp339, i
	mvn	r3, r6	@ tmp347, i
	add	r1, r3, r4	@ tmp346, tmp347, count
	mov	r3, #0	@ j.5551,
	ldrb	r2, [r5, #0]	@ zero_extendqisi2	@ prephitmp.5556, cmd
	and	r1, r1, #1	@ tmp348, tmp346,
	cmp	r2, #32	@ prephitmp.5556,
	beq	.L2075	@,
	movhi	r3, #1	@ j.5551,
	strhib	r2, [r7, #-4048]	@ prephitmp.5556, str
.L2075:
	add	r6, r6, #1	@ i, i,
	add	r5, r5, #1	@ ivtmp.5531, ivtmp.5531,
	cmp	r4, r6	@ count, i
	bls	.L2058	@,
	cmp	r1, #0	@ tmp348,
	beq	.L2063	@,
	cmp	r3, #0	@ j.5551,
	bne	.L2192	@,
	ldrb	r2, [r5, #0]	@ zero_extendqisi2	@ prephitmp.5556, cmd
	cmp	r2, #32	@ prephitmp.5556,
	beq	.L2079	@,
.L2161:
	cmp	r2, #32	@ prephitmp.5556,
	addhi	r1, r3, r7	@ tmp386, j.5551, tmp336
	addhi	r3, r3, #1	@ j.5551, j.5551,
	strhib	r2, [r1, #-4048]	@ prephitmp.5556, str
	cmp	r3, #0	@ j.5551,
	beq	.L2079	@,
	cmp	r2, #32	@ prephitmp.5556,
	bls	.L2058	@,
.L2079:
	add	r6, r6, #1	@ i, i,
	add	r5, r5, #1	@ ivtmp.5531, ivtmp.5531,
	cmp	r4, r6	@ count, i
	bhi	.L2063	@,
	b	.L2058	@
.L2082:
	ldrb	r2, [r5, #1]	@ zero_extendqisi2	@ prephitmp.5556, cmd
	cmp	r2, #32	@ prephitmp.5556,
	beq	.L2084	@,
.L2163:
	cmp	r2, #32	@ prephitmp.5556,
	addhi	r0, r3, r7	@ tmp390, j.5551, tmp336
	addhi	r3, r3, #1	@ j.5551, j.5551,
	strhib	r2, [r0, #-4048]	@ prephitmp.5556, str
	cmp	r3, #0	@ j.5551,
	beq	.L2084	@,
	cmp	r2, #32	@ prephitmp.5556,
	bls	.L2058	@,
.L2084:
	add	r6, r6, #1	@ i, tmp349,
	add	r5, r1, #1	@ ivtmp.5531, tmp350,
	cmp	r4, r6	@ count, i
	bls	.L2058	@,
.L2063:
	cmp	r3, #0	@ j.5551,
	ldrneb	r2, [r5, #0]	@ zero_extendqisi2	@ prephitmp.5556, cmd
	bne	.L2060	@,
	ldrb	r2, [r5, #0]	@ zero_extendqisi2	@ prephitmp.5556, cmd
	cmp	r2, #32	@ prephitmp.5556,
	beq	.L2061	@,
.L2060:
	cmp	r2, #32	@ prephitmp.5556,
	addhi	r1, r3, r7	@ tmp286, j.5551, tmp336
	addhi	r3, r3, #1	@ j.5551, j.5551,
	strhib	r2, [r1, #-4048]	@ prephitmp.5556, str
	cmp	r3, #0	@ j.5551,
	beq	.L2061	@,
	cmp	r2, #32	@ prephitmp.5556,
	bls	.L2058	@,
.L2061:
	cmp	r3, #0	@ j.5551,
	add	r6, r6, #1	@ tmp349, i,
	add	r1, r5, #1	@ tmp350, ivtmp.5531,
	beq	.L2082	@,
	ldrb	r2, [r5, #1]	@ zero_extendqisi2	@ prephitmp.5556, cmd
	b	.L2163	@
.L2058:
	add	r0, r3, r7	@ tmp291, j.5551, tmp336
	mov	r1, #0	@ tmp293,
	movw	r2, #:lower16:.LANCHOR4	@ tmp289,
	movt	r2, #:upper16:.LANCHOR4	@ tmp289,
	strb	r1, [r0, #-4048]	@ tmp293, str
	ldrb	lr, [r7, #-4048]	@ zero_extendqisi2	@ str, str
	cmp	lr, #47	@ str,
	bne	.L2185	@,
	cmp	r3, #0	@ j.5551,
	beq	.L2065	@,
	sub	r3, r3, #1	@ D.55212, j.5551,
	mov	r0, #32	@,
	add	r5, r3, r2	@ tmp299, D.55212, tmp289
	ldr	r2, .L2196	@,
	ldrb	ip, [r5, #-4048]	@ zero_extendqisi2	@ tmp301, str
	cmp	ip, #47	@ tmp301,
	streqb	r1, [r5, #-4048]	@ tmp293, str
	movw	r5, #:lower16:.LANCHOR2	@ tmp312,
	movt	r5, #:upper16:.LANCHOR2	@ tmp312,
	movw	r1, #:lower16:.LC315	@,
	movt	r1, #:upper16:.LC315	@,
	bl	dprint_vfmw	@
	mov	r2, #64	@,
	mov	r0, r5	@, tmp312
	ldr	r1, .L2196	@,
	bl	strncpy	@
	mov	r2, #0	@ tmp317,
	strb	r2, [r5, #63]	@ tmp317, s_VfmwSavePath
.L2185:
	ldr	r2, [fp, #-32]	@ prephitmp.5515, dat1
.L2039:
	ldr	r3, [fp, #-36]	@, dat2
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC317	@,
	movt	r1, #:upper16:.LC317	@,
	bl	dprint_vfmw	@
	ldr	r3, [fp, #-36]	@ dat2, dat2
	ldr	ip, [fp, #-40]	@ dat3, dat3
	sub	r1, fp, #76	@,,
	ldr	r2, [fp, #-44]	@ dat4, dat4
	ldr	r0, [fp, #-32]	@, dat1
	str	r3, [fp, #-76]	@ dat2, args
	str	ip, [fp, #-72]	@ dat3, args
	str	r2, [fp, #-68]	@ dat4, args
	bl	VCTRL_SetDbgOption	@
	mov	r0, r4	@ D.55128, count
.L2018:
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L2190:
	ldrb	r1, [r2, #0]	@ zero_extendqisi2	@ prephitmp.5567, cmd
	b	.L2176	@
.L2192:
	ldrb	r2, [r5, #0]	@ zero_extendqisi2	@ prephitmp.5556, cmd
	b	.L2161	@
.L2188:
	mov	r1, r7	@, buffer
	mov	r0, r5	@, tmp339
	mov	r2, r4	@, count
	bl	__copy_from_user	@
	subs	r3, r0, #0	@ count.5563,
	bne	.L2020	@,
	add	r6, r4, r6	@ tmp184, count, tmp169
	cmp	r4, #0	@ count,
	strb	r3, [r6, #3880]	@ count.5563, cmd
	beq	.L2184	@,
	ldrb	r2, [r5, #0]	@ zero_extendqisi2	@ prephitmp.5517, cmd
	sub	r7, r4, #1	@ tmp366, count,
	and	r1, r7, #1	@ tmp368, tmp366,
	movw	r7, #:lower16:.LANCHOR4	@ tmp336,
	cmp	r2, #32	@ prephitmp.5517,
	movt	r7, #:upper16:.LANCHOR4	@ tmp336,
	beq	.L2127	@,
	movhi	r3, #1	@ j,
	strhib	r2, [r7, #-4048]	@ prephitmp.5517, str
.L2127:
	mov	r6, #1	@ i,
	cmp	r4, r6	@ count, i
	bls	.L2024	@,
	cmp	r1, #0	@ tmp368,
	beq	.L2029	@,
	cmp	r3, #0	@ j,
	bne	.L2193	@,
	ldrb	r2, [r5, r6]	@ zero_extendqisi2	@ prephitmp.5517, cmd
	cmp	r2, #32	@ prephitmp.5517,
	beq	.L2131	@,
.L2181:
	cmp	r2, #32	@ prephitmp.5517,
	addhi	r1, r3, r7	@ tmp434, j, tmp336
	addhi	r3, r3, #1	@ j, j,
	strhib	r2, [r1, #-4048]	@ prephitmp.5517, str
	cmp	r3, #0	@ j,
	beq	.L2131	@,
	cmp	r2, #32	@ prephitmp.5517,
	beq	.L2024	@,
.L2131:
	add	r6, r6, #1	@ i, i,
	cmp	r4, r6	@ count, i
	bhi	.L2029	@,
	b	.L2024	@
.L2134:
	ldrb	r2, [r5, r6]	@ zero_extendqisi2	@ prephitmp.5517, cmd
	cmp	r2, #32	@ prephitmp.5517,
	beq	.L2136	@,
.L2183:
	cmp	r2, #32	@ prephitmp.5517,
	addhi	r0, r3, r7	@ tmp438, j, tmp336
	addhi	r3, r3, #1	@ j, j,
	strhib	r2, [r0, #-4048]	@ prephitmp.5517, str
	cmp	r3, #0	@ j,
	beq	.L2136	@,
	cmp	r2, #32	@ prephitmp.5517,
	beq	.L2024	@,
.L2136:
	add	r6, r1, #1	@ i, tmp369,
	cmp	r4, r6	@ count, i
	bls	.L2024	@,
.L2029:
	cmp	r3, #0	@ j,
	ldrneb	r2, [r5, r6]	@ zero_extendqisi2	@ prephitmp.5517, cmd
	bne	.L2026	@,
	ldrb	r2, [r5, r6]	@ zero_extendqisi2	@ prephitmp.5517, cmd
	cmp	r2, #32	@ prephitmp.5517,
	beq	.L2027	@,
.L2026:
	cmp	r2, #32	@ prephitmp.5517,
	addhi	r1, r3, r7	@ tmp196, j, tmp336
	addhi	r3, r3, #1	@ j, j,
	strhib	r2, [r1, #-4048]	@ prephitmp.5517, str
	cmp	r3, #0	@ j,
	beq	.L2027	@,
	cmp	r2, #32	@ prephitmp.5517,
	beq	.L2024	@,
.L2027:
	add	r6, r6, #1	@ i, i,
	cmp	r3, #0	@ j,
	mov	r1, r6	@ tmp369, i
	beq	.L2134	@,
	ldrb	r2, [r5, r6]	@ zero_extendqisi2	@ prephitmp.5517, cmd
	b	.L2183	@
.L2193:
	ldrb	r2, [r5, r6]	@ zero_extendqisi2	@ prephitmp.5517, cmd
	b	.L2181	@
.L2189:
	mov	r0, r5	@, tmp339
	mov	r1, r4	@, count
	bl	__memzero	@
.L2020:
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC313	@,
	movt	r1, #:upper16:.LC313	@,
	bl	dprint_vfmw	@
	mvn	r0, #4	@ D.55128,
	b	.L2018	@
.L2191:
	cmp	r4, r6	@ count, i
	bls	.L2042	@,
	add	r2, r5, r6	@ ivtmp.5539, tmp339, i
	mvn	r1, r6	@ tmp357, i
	add	r0, r1, r4	@ tmp356, tmp357, count
	ldrb	r1, [r2, #0]	@ zero_extendqisi2	@ prephitmp.5553, cmd
	and	r0, r0, #1	@ tmp358, tmp356,
	cmp	r1, #32	@ prephitmp.5553,
	beq	.L2101	@,
	movhi	r3, #1	@ j.5549,
	strhib	r1, [r7, #-4048]	@ prephitmp.5553, str
.L2101:
	add	r6, r6, #1	@ i, i,
	add	r2, r2, #1	@ ivtmp.5539, ivtmp.5539,
	cmp	r4, r6	@ count, i
	bls	.L2042	@,
	cmp	r0, #0	@ tmp358,
	beq	.L2047	@,
	cmp	r3, #0	@ j.5549,
	bne	.L2194	@,
	ldrb	r1, [r2, #0]	@ zero_extendqisi2	@ prephitmp.5553, cmd
	cmp	r1, #32	@ prephitmp.5553,
	beq	.L2105	@,
.L2171:
	cmp	r1, #32	@ prephitmp.5553,
	addhi	r0, r3, r7	@ tmp410, j.5549, tmp336
	addhi	r3, r3, #1	@ j.5549, j.5549,
	strhib	r1, [r0, #-4048]	@ prephitmp.5553, str
	cmp	r3, #0	@ j.5549,
	beq	.L2105	@,
	cmp	r1, #32	@ prephitmp.5553,
	bls	.L2042	@,
.L2105:
	add	r6, r6, #1	@ i, i,
	add	r2, r2, #1	@ ivtmp.5539, ivtmp.5539,
	cmp	r4, r6	@ count, i
	bhi	.L2047	@,
	b	.L2042	@
.L2108:
	ldrb	r2, [r2, #1]	@ zero_extendqisi2	@ prephitmp.5553, cmd
	cmp	r2, #32	@ prephitmp.5553,
	beq	.L2110	@,
.L2173:
	cmp	r2, #32	@ prephitmp.5553,
	addhi	ip, r3, r7	@ tmp414, j.5549, tmp336
	addhi	r3, r3, #1	@ j.5549, j.5549,
	strhib	r2, [ip, #-4048]	@ prephitmp.5553, str
	cmp	r3, #0	@ j.5549,
	beq	.L2110	@,
	cmp	r2, #32	@ prephitmp.5553,
	bls	.L2042	@,
.L2110:
	add	r6, r0, #1	@ i, tmp359,
	add	r2, r1, #1	@ ivtmp.5539, tmp360,
	cmp	r4, r6	@ count, i
	bls	.L2042	@,
.L2047:
	cmp	r3, #0	@ j.5549,
	ldrneb	r1, [r2, #0]	@ zero_extendqisi2	@ prephitmp.5553, cmd
	bne	.L2044	@,
	ldrb	r1, [r2, #0]	@ zero_extendqisi2	@ prephitmp.5553, cmd
	cmp	r1, #32	@ prephitmp.5553,
	beq	.L2045	@,
.L2044:
	cmp	r1, #32	@ prephitmp.5553,
	addhi	r0, r3, r7	@ tmp242, j.5549, tmp336
	addhi	r3, r3, #1	@ j.5549, j.5549,
	strhib	r1, [r0, #-4048]	@ prephitmp.5553, str
	cmp	r3, #0	@ j.5549,
	beq	.L2045	@,
	cmp	r1, #32	@ prephitmp.5553,
	bls	.L2042	@,
.L2045:
	add	r6, r6, #1	@ i, i,
	cmp	r3, #0	@ j.5549,
	add	r1, r2, #1	@ tmp360, ivtmp.5539,
	mov	r0, r6	@ tmp359, i
	beq	.L2108	@,
	ldrb	r2, [r2, #1]	@ zero_extendqisi2	@ prephitmp.5553, cmd
	b	.L2173	@
.L2042:
	add	r3, r3, r7	@ tmp247, j.5549, tmp336
	mov	ip, #0	@ tmp249,
	ldr	r0, .L2196	@,
	sub	r1, fp, #40	@,,
	strb	ip, [r3, #-4048]	@ tmp249, str
	bl	str2val	@
	subs	r3, r0, #0	@ D.55183,
	bne	.L2056	@,
	cmp	r4, r6	@ count, i
	bls	.L2050	@,
	add	r2, r5, r6	@ ivtmp.5535, tmp339, i
	mvn	r0, r6	@ tmp352, i
	add	lr, r0, r4	@ tmp351, tmp352, count
	ldrb	r1, [r2, #0]	@ zero_extendqisi2	@ prephitmp.5566, cmd
	and	r0, lr, #1	@ tmp353, tmp351,
	cmp	r1, #32	@ prephitmp.5566,
	beq	.L2088	@,
	movhi	r3, #1	@ j.5550,
	strhib	r1, [r7, #-4048]	@ prephitmp.5566, str
.L2088:
	add	r6, r6, #1	@ i, i,
	add	r2, r2, #1	@ ivtmp.5535, ivtmp.5535,
	cmp	r4, r6	@ count, i
	bls	.L2050	@,
	cmp	r0, #0	@ tmp353,
	beq	.L2055	@,
	cmp	r3, #0	@ j.5550,
	bne	.L2195	@,
	ldrb	r1, [r2, #0]	@ zero_extendqisi2	@ prephitmp.5566, cmd
	cmp	r1, #32	@ prephitmp.5566,
	beq	.L2092	@,
.L2166:
	cmp	r1, #32	@ prephitmp.5566,
	addhi	r0, r3, r7	@ tmp398, j.5550, tmp336
	addhi	r3, r3, #1	@ j.5550, j.5550,
	strhib	r1, [r0, #-4048]	@ prephitmp.5566, str
	cmp	r3, #0	@ j.5550,
	beq	.L2092	@,
	cmp	r1, #32	@ prephitmp.5566,
	bls	.L2050	@,
.L2092:
	add	r6, r6, #1	@ i, i,
	add	r2, r2, #1	@ ivtmp.5535, ivtmp.5535,
	cmp	r4, r6	@ count, i
	bhi	.L2055	@,
	b	.L2050	@
.L2095:
	ldrb	r2, [r2, #1]	@ zero_extendqisi2	@ prephitmp.5566, cmd
	cmp	r2, #32	@ prephitmp.5566,
	beq	.L2097	@,
.L2168:
	cmp	r2, #32	@ prephitmp.5566,
	addhi	ip, r3, r7	@ tmp402, j.5550, tmp336
	addhi	r3, r3, #1	@ j.5550, j.5550,
	strhib	r2, [ip, #-4048]	@ prephitmp.5566, str
	cmp	r3, #0	@ j.5550,
	beq	.L2097	@,
	cmp	r2, #32	@ prephitmp.5566,
	bls	.L2050	@,
.L2097:
	add	r6, r0, #1	@ i, tmp354,
	add	r2, r1, #1	@ ivtmp.5535, tmp355,
	cmp	r4, r6	@ count, i
	bls	.L2050	@,
.L2055:
	cmp	r3, #0	@ j.5550,
	ldrneb	r1, [r2, #0]	@ zero_extendqisi2	@ prephitmp.5566, cmd
	bne	.L2052	@,
	ldrb	r1, [r2, #0]	@ zero_extendqisi2	@ prephitmp.5566, cmd
	cmp	r1, #32	@ prephitmp.5566,
	beq	.L2053	@,
.L2052:
	cmp	r1, #32	@ prephitmp.5566,
	addhi	r0, r3, r7	@ tmp264, j.5550, tmp336
	addhi	r3, r3, #1	@ j.5550, j.5550,
	strhib	r1, [r0, #-4048]	@ prephitmp.5566, str
	cmp	r3, #0	@ j.5550,
	beq	.L2053	@,
	cmp	r1, #32	@ prephitmp.5566,
	bls	.L2050	@,
.L2053:
	add	r6, r6, #1	@ i, i,
	cmp	r3, #0	@ j.5550,
	add	r1, r2, #1	@ tmp355, ivtmp.5535,
	mov	r0, r6	@ tmp354, i
	beq	.L2095	@,
	ldrb	r2, [r2, #1]	@ zero_extendqisi2	@ prephitmp.5566, cmd
	b	.L2168	@
.L2050:
	add	ip, r3, r7	@ tmp269, j.5550, tmp336
	mov	r2, #0	@ tmp271,
	ldr	r0, .L2196	@,
	sub	r1, fp, #44	@,,
	strb	r2, [ip, #-4048]	@ tmp271, str
	bl	str2val	@
	cmp	r0, #0	@,
	beq	.L2040	@,
.L2056:
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC314	@,
	ldr	r2, .L2196+4	@,
	movt	r1, #:upper16:.LC314	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.55128,
	b	.L2018	@
.L2194:
	ldrb	r1, [r2, #0]	@ zero_extendqisi2	@ prephitmp.5553, cmd
	b	.L2171	@
.L2195:
	ldrb	r1, [r2, #0]	@ zero_extendqisi2	@ prephitmp.5566, cmd
	b	.L2166	@
.L2187:
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC312	@,
	movt	r1, #:upper16:.LC312	@,
	bl	dprint_vfmw	@
	mvn	r0, #4	@ D.55128,
	b	.L2018	@
.L2065:
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC316	@,
	ldr	r2, .L2196+8	@,
	movt	r1, #:upper16:.LC316	@,
	movw	r3, #9758	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.55128,
	b	.L2018	@
.L2197:
	.align	2
.L2196:
	.word	.LANCHOR4-4048
	.word	.LANCHOR3+3880
	.word	.LANCHOR1+424
	.fnend
	.size	vfmw_write_proc, .-vfmw_write_proc
	.align	2
	.global	VCTRL_ResetChan
	.type	VCTRL_ResetChan, %function
VCTRL_ResetChan:
	.fnstart
.LFB1583:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #8
	sub	sp, sp, #8	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r5, #:lower16:.LANCHOR0	@ tmp208,
	movt	r5, #:upper16:.LANCHOR0	@ tmp208,
	mov	r4, r0	@ ChanID, ChanID
	ldr	r3, [r5, r0, asl #2]	@ D.51877, s_pstVfmwChan
	cmp	r3, #0	@ D.51877,
	beq	.L2208	@,
	ldr	r7, [r3, #16]	@ ChanIsRun, <variable>.s32IsRun
	bl	VCTRL_StopChan	@
	ldr	r3, [r5, r4, asl #2]	@ tmp145, s_pstVfmwChan
	mov	r6, #0	@ tmp146,
	add	r1, r5, #1456	@ tmp151, tmp208,
	mov	r0, #300	@ tmp154,
	add	r2, r1, #4	@ tmp151, tmp151,
	mov	r1, r0	@, tmp154
	str	r6, [r3, #348]	@ tmp146, <variable>.s32CountNoDecparamFlag
	ldr	ip, [r5, r4, asl #2]	@ tmp148, s_pstVfmwChan
	mla	r0, r0, r4, r2	@, tmp154, ChanID, tmp151
	str	r6, [ip, #352]	@ tmp146, <variable>.u32NoDecparamStartTime
	bl	__memzero	@
	mov	r1, r6	@, tmp146
	mov	r0, r4	@, ChanID
	bl	VCTRL_SetSendStreamAgainFlag	@
	mov	r1, #896	@,
	movw	r0, #:lower16:g_stLowdlyInfo	@,
	movt	r0, #:upper16:g_stLowdlyInfo	@,
	bl	__memzero	@
	ldr	r9, [r5, r4, asl #2]	@ tmp158, s_pstVfmwChan
	mov	r0, r4	@, ChanID
	str	r6, [r9, #1256]	@ tmp146, <variable>.stSynExtraData.s32KeepSPSPPS
	mvn	r9, #0	@,
	bl	InitSyntaxCtx	@
	ldr	r8, [r5, r4, asl #2]	@ tmp162, s_pstVfmwChan
	mov	r1, #416	@,
	add	r0, r8, #696	@, tmp162,
	mvn	r8, #0	@ tmp166,
	bl	__memzero	@
	ldr	r2, [r5, r4, asl #2]	@ tmp164, s_pstVfmwChan
	mov	r3, #616	@ tmp165,
	mov	r0, #624	@ tmp169,
	movw	r1, #:lower16:251572	@ tmp176,
	movt	r1, #:upper16:251572	@ tmp176,
	strd	r8, [r2, r3]	@ tmp166, tmp164, tmp165
	movw	r2, #:lower16:251564	@ tmp180,
	ldr	ip, [r5, r4, asl #2]	@ tmp168, s_pstVfmwChan
	movt	r2, #:upper16:251564	@ tmp180,
	movw	r3, #:lower16:251568	@ tmp184,
	movt	r3, #:upper16:251568	@ tmp184,
	strd	r8, [ip, r0]	@ tmp166, tmp168, tmp169
	ldr	r0, [r5, r4, asl #2]	@ tmp172, s_pstVfmwChan
	str	r6, [r0, #1112]	@ tmp146, <variable>.stSynExtraData.s32NewPicSegDetector
	ldr	ip, [r5, r4, asl #2]	@ tmp175, s_pstVfmwChan
	str	r6, [ip, r1]	@ tmp146, <variable>.s32FindStartCodeCnt
	ldr	r0, [r5, r4, asl #2]	@ tmp179, s_pstVfmwChan
	str	r6, [r0, r2]	@ tmp146, <variable>.s32H264Score
	mov	r0, r4	@, ChanID
	ldr	ip, [r5, r4, asl #2]	@ tmp183, s_pstVfmwChan
	str	r6, [ip, r3]	@ tmp146, <variable>.s32Mpeg2Score
	ldr	r1, [r5, r4, asl #2]	@ temp.5603, s_pstVfmwChan
	ldr	r2, [r1, #1424]	@ <variable>.stSynExtraData.stChanOption.u32DynamicFrameStoreAllocEn, <variable>.stSynExtraData.stChanOption.u32DynamicFrameStoreAllocEn
	cmp	r2, #1	@ <variable>.stSynExtraData.stChanOption.u32DynamicFrameStoreAllocEn,
	streq	r6, [r1, #1464]	@ tmp146, <variable>.stSynExtraData.s32WaitFsFlag
	bl	FSP_SwitchNotify	@
	ldr	r0, [r5, r4, asl #2]	@ tmp190, s_pstVfmwChan
	ldr	r3, [r0, #552]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #18	@ <variable>.eVidStd,
	beq	.L2202	@,
	mov	r0, r4	@, ChanID
	bl	FSP_ResetInstance	@
.L2203:
	mov	r0, r4	@, ChanID
	bl	InitUsdPool	@
	mov	r0, r4	@, ChanID
	bl	SM_Reset	@
	ldr	ip, [r5, #1372]	@ g_ResetCreateNewSave, g_ResetCreateNewSave
	cmp	ip, #0	@ g_ResetCreateNewSave,
	beq	.L2204	@,
	movw	r5, #:lower16:.LANCHOR3	@ tmp194,
	movt	r5, #:upper16:.LANCHOR3	@ tmp194,
	add	r5, r5, r4, asl #2	@, tmp197, tmp194, ChanID,
	str	r4, [fp, #-40]	@ ChanID, data
	ldr	lr, [r5, #3572]	@ tmp199, vfmw_save_str_file
	cmp	lr, #0	@ tmp199,
	beq	.L2205	@,
	sub	r6, fp, #40	@ data.567,,
	mov	r0, #512	@,
	mov	r1, r6	@, data.567
	bl	VCTRL_SetDbgOption	@
	ldr	r0, [r5, #3572]	@ tmp205, vfmw_save_str_file
	cmp	r0, #0	@ tmp205,
	beq	.L2205	@,
	mov	r1, r6	@, data.567
	mov	r0, #512	@,
	bl	VCTRL_SetDbgOption	@
.L2205:
	movw	r1, #:lower16:.LC318	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC318	@,
	bl	dprint_vfmw	@
.L2204:
	cmp	r7, #0	@ ChanIsRun,
	bne	.L2209	@,
.L2206:
	mov	r0, r4	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.51881,
.L2200:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, fp, sp, pc}
.L2209:
	mov	r0, r4	@, ChanID
	bl	VCTRL_StartChan	@
	b	.L2206	@
.L2202:
	mov	r0, r4	@, ChanID
	bl	FSP_EmptyInstance	@
	b	.L2203	@
.L2208:
	mov	r0, r3	@, D.51877
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #4042	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r3, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.51881,
	b	.L2200	@
	.fnend
	.size	VCTRL_ResetChan, .-VCTRL_ResetChan
	.align	2
	.global	VCTRL_ConfigChan
	.type	VCTRL_ConfigChan, %function
VCTRL_ConfigChan:
	.fnstart
.LFB1578:
	@ args = 0, pretend = 0, frame = 200
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #212
	sub	sp, sp, #212	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r0, #15	@ ChanID,
	mov	r6, #0	@ tmp212,
	mov	r5, r0	@ ChanID, ChanID
	str	r6, [fp, #-52]	@ tmp212, s32supportFlag
	mov	r8, r1	@ pstCfg, pstCfg
	bhi	.L2309	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp673,
	movt	r4, #:upper16:.LANCHOR0	@ tmp673,
	ldr	r3, [r4, r0, asl #2]	@ D.51439, s_pstVfmwChan
	cmp	r3, #0	@ D.51439,
	beq	.L2310	@,
	ldr	r3, [r3, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	bne	.L2311	@,
	bl	VCTRL_CheckChanWH	@
	cmp	r0, #0	@,
	bne	.L2312	@,
	movw	r6, #:lower16:.LANCHOR4	@ tmp675,
	movt	r6, #:upper16:.LANCHOR4	@ tmp675,
	sub	r0, r6, #3792	@, tmp675,
	bl	GetVdecCapability	@
	ldr	r2, [r8, #0]	@ prephitmp.5625, <variable>.eVidStd
	sub	r3, r6, #3792	@ ivtmp.5652, tmp675,
	sub	ip, r6, #3664	@ D.61210, tmp675,
	b	.L2218	@
.L2216:
	cmp	r1, r2	@ D.51450, prephitmp.5625
	beq	.L2217	@,
	ldr	r1, [r0, #20]	@ D.51450, Capability.SupportedStd
	cmp	r1, #18	@ D.51450,
	bhi	.L2304	@,
	cmp	r1, r2	@ D.51450, prephitmp.5625
	beq	.L2217	@,
	cmp	r3, ip	@ ivtmp.5652, D.61210
	beq	.L2217	@,
.L2218:
	ldr	r1, [r3, #20]	@ D.51450, Capability.SupportedStd
	add	r0, r3, #4	@ tmp677, ivtmp.5652,
	add	r3, r0, #4	@ ivtmp.5652, tmp677,
	cmp	r1, #18	@ D.51450,
	bls	.L2216	@,
.L2304:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC320	@,
	movt	r1, #:upper16:.LC320	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.51437,
.L2212:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L2217:
	cmp	r2, #8	@ prephitmp.5625,
	beq	.L2313	@,
.L2219:
	cmp	r2, #9	@ prephitmp.5625,
	beq	.L2314	@,
.L2221:
	mov	r0, r5	@, ChanID
	mov	r1, r8	@, pstCfg
	bl	VCTRL_CmpConfigParameter	@
	subs	r7, r0, #0	@ D.51466,
	beq	.L2315	@,
	ldr	r2, [r8, #80]	@ <variable>.s32IsOmxPath, <variable>.s32IsOmxPath
	cmp	r2, #0	@ <variable>.s32IsOmxPath,
	bne	.L2223	@,
	ldr	r3, [r8, #0]	@ D.51454, <variable>.eVidStd
	sub	r7, r3, #10	@ tmp235, D.51454,
	cmp	r7, #2	@ tmp235,
	bls	.L2316	@,
	cmp	r3, #4	@ D.51454,
	beq	.L2225	@,
.L2226:
	ldr	r7, [r4, r5, asl #2]	@ prephitmp.5627, s_pstVfmwChan
	cmp	r3, #14	@ D.51454,
	movne	r1, #0	@, prephitmp.5757
	moveq	r1, #1	@, prephitmp.5757
	movw	r3, #:lower16:.LANCHOR0	@ tmp241,
	movt	r3, #:upper16:.LANCHOR0	@ tmp241,
	ldr	r2, [r7, #48]	@ D.51489, <variable>.stChanCfg.eVidStd
	sub	sl, r2, #10	@ tmp242, D.51489,
	cmp	sl, #2	@ tmp242,
	bhi	.L2228	@,
.L2323:
	ldr	ip, [r3, #516]	@ g_VdmCharacter, g_VdmCharacter
	tst	ip, #1	@ g_VdmCharacter,
	beq	.L2229	@,
.L2230:
	cmp	r2, #14	@ D.51489,
	movne	r2, #0	@, prephitmp.5632
	moveq	r2, #1	@, prephitmp.5632
	cmp	r2, r1	@ prephitmp.5632, prephitmp.5757
	beq	.L2232	@,
.L2324:
	ldr	lr, [r7, #200]	@ <variable>.s32OneChanMem, <variable>.s32OneChanMem
	cmp	lr, #0	@ <variable>.s32OneChanMem,
	bne	.L2233	@,
	ldr	r0, .L2330	@,
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r3, [r7, #248]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	cmp	r3, #0	@ <variable>.stChanMem_scd.Length,
	bne	.L2317	@,
.L2234:
	ldr	r0, [r7, #224]	@, <variable>.stChanMem_vdh.VirAddr
	bl	KernelMunmap	@
	ldr	r3, [r8, #0]	@ temp.5665, <variable>.eVidStd
	sub	r0, r3, #10	@ tmp257, temp.5665,
	cmp	r0, #2	@ tmp257,
	bhi	.L2235	@,
	ldr	r1, [r4, #516]	@ g_VdmCharacter, g_VdmCharacter
	tst	r1, #1	@ g_VdmCharacter,
	beq	.L2236	@,
.L2237:
	ldr	r1, [r7, #232]	@, <variable>.stChanMem_vdh.Length
	mov	sl, #0	@ tmp270,
	ldr	r0, [r7, #228]	@, <variable>.stChanMem_vdh.PhyAddr
	bl	KernelMmap	@
	ldr	r1, [r7, #248]	@ temp.5670, <variable>.stChanMem_scd.Length
	strb	sl, [r7, #220]	@ tmp270, <variable>.stChanMem_vdh.IsCached
	cmp	r1, sl	@ temp.5670,
	mov	r9, r0	@ pVir_vdh,
	bne	.L2318	@,
.L2238:
	mov	r2, #0	@,
	str	r2, [fp, #-232]	@, %sfp
.L2239:
	movw	sl, #:lower16:.LANCHOR0	@ tmp274,
	movt	sl, #:upper16:.LANCHOR0	@ tmp274,
	add	r0, sl, #520	@, tmp274,
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, [r4, r5, asl #2]	@ tmp277, s_pstVfmwChan
	cmp	r0, #0	@ tmp277,
	beq	.L2319	@,
	cmp	r9, #0	@ pVir_vdh,
	beq	.L2241	@,
	ldr	lr, [r7, #248]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	ldr	r3, [fp, #-232]	@, %sfp
	rsbs	ip, r3, #1	@,
	movcc	ip, #0	@
	cmp	lr, #0	@ <variable>.stChanMem_scd.Length,
	moveq	ip, #0	@,,
	cmp	ip, #0	@ tmp289,
	bne	.L2241	@,
	ldr	r0, [r7, #228]	@, <variable>.stChanMem_vdh.PhyAddr
	ldr	r1, [r7, #224]	@, <variable>.stChanMem_vdh.VirAddr
	ldr	r2, [r7, #232]	@, <variable>.stChanMem_vdh.Length
	str	ip, [fp, #-240]	@ tmp3,
	bl	MEM_DelMemRecord	@
	ldr	r3, [fp, #-240]	@,
	cmp	r0, #0	@
	str	r0, [fp, #-236]	@, %sfp
	bne	.L2320	@,
	str	r9, [r7, #224]	@ pVir_vdh, <variable>.stChanMem_vdh.VirAddr
	mov	r1, r9	@, pVir_vdh
	ldr	r0, [r7, #228]	@, <variable>.stChanMem_vdh.PhyAddr
	ldr	r2, [r7, #232]	@, <variable>.stChanMem_vdh.Length
	bl	MEM_AddMemRecord	@
	subs	r9, r0, #0	@ D.51544,
	bne	.L2321	@,
	ldr	r2, [r7, #248]	@ temp.5693, <variable>.stChanMem_scd.Length
	cmp	r2, #0	@ temp.5693,
	beq	.L2305	@,
	ldr	r0, [r7, #244]	@, <variable>.stChanMem_scd.PhyAddr
	ldr	r1, [r7, #240]	@, <variable>.stChanMem_scd.VirAddr
	bl	MEM_DelMemRecord	@
	subs	r3, r0, #0	@ D.51549,
	bne	.L2322	@,
	ldr	r0, [fp, #-232]	@, %sfp
	ldr	r2, [r7, #248]	@, <variable>.stChanMem_scd.Length
	str	r0, [r7, #240]	@, <variable>.stChanMem_scd.VirAddr
	ldr	r1, [fp, #-232]	@, %sfp
	ldr	r0, [r7, #244]	@, <variable>.stChanMem_scd.PhyAddr
	str	r3, [fp, #-240]	@,
	bl	MEM_AddMemRecord	@
	ldr	r3, [fp, #-240]	@,
	cmp	r0, #0	@,
	beq	.L2305	@,
	ldr	r2, [r7, #248]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	mov	r0, r3	@, D.51549
	movw	r1, #:lower16:.LC324	@,
	movt	r1, #:upper16:.LC324	@,
	str	r2, [sp, #0]	@ <variable>.stChanMem_scd.Length,
	ldr	r3, [r7, #240]	@, <variable>.stChanMem_scd.VirAddr
	ldr	r2, [r7, #244]	@, <variable>.stChanMem_scd.PhyAddr
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.51437,
	b	.L2212	@
.L2316:
	ldr	r9, [r4, #516]	@ g_VdmCharacter, g_VdmCharacter
	tst	r9, #1	@ g_VdmCharacter,
	bne	.L2226	@,
.L2225:
	ldr	r7, [r4, r5, asl #2]	@ prephitmp.5627, s_pstVfmwChan
	movw	r3, #:lower16:.LANCHOR0	@ tmp241,
	mov	r1, #1	@ prephitmp.5757,
	movt	r3, #:upper16:.LANCHOR0	@ tmp241,
	ldr	r2, [r7, #48]	@ D.51489, <variable>.stChanCfg.eVidStd
	sub	sl, r2, #10	@ tmp242, D.51489,
	cmp	sl, #2	@ tmp242,
	bls	.L2323	@,
.L2228:
	cmp	r2, #4	@ D.51489,
	bne	.L2230	@,
.L2229:
	mov	r2, #1	@ prephitmp.5632,
	cmp	r2, r1	@ prephitmp.5632, prephitmp.5757
	bne	.L2324	@,
.L2232:
	add	r0, r7, #48	@, prephitmp.5627,
	mov	r2, #104	@,
	mov	r1, r8	@, pstCfg
	sub	r7, fp, #228	@ tmp676,,
	bl	memcpy	@
	ldr	r9, [r4, r5, asl #2]	@ tmp374, s_pstVfmwChan
	ldr	sl, [r8, #12]	@ <variable>.s32ChanPriority, <variable>.s32ChanPriority
	mov	r1, #160	@,
	mov	r0, r7	@, tmp676
	str	sl, [r9, #24]	@ <variable>.s32ChanPriority, <variable>.s32Priority
	ldr	r2, [r8, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	ldr	ip, [r4, r5, asl #2]	@ tmp377, s_pstVfmwChan
	str	r2, [ip, #552]	@ <variable>.eVidStd, <variable>.eVidStd
	ldr	r3, [r4, r5, asl #2]	@ tmp380, s_pstVfmwChan
	ldr	r9, [r8, #92]	@ <variable>.s32ExtraFrameStoreNum, <variable>.s32ExtraFrameStoreNum
	str	r9, [r3, #1432]	@ <variable>.s32ExtraFrameStoreNum, <variable>.stSynExtraData.stChanOption.s32ExtraFrameStoreNum
	mvn	r9, #0	@ tmp397,
	bl	__memzero	@
	ldr	ip, [r4, r5, asl #2]	@ tmp384, s_pstVfmwChan
	ldr	sl, [ip, #296]	@ <variable>.s32ScdChanMemAddr, <variable>.s32ScdChanMemAddr
	str	sl, [fp, #-216]	@ <variable>.s32ScdChanMemAddr, ScdInstCfg.BufPhyAddr
	ldr	r0, [ip, #296]	@, <variable>.s32ScdChanMemAddr
	bl	MEM_Phy2Vir	@
	ldr	r2, [r4, r5, asl #2]	@ tmp390, s_pstVfmwChan
	ldr	r1, [r8, #80]	@ <variable>.s32IsOmxPath, <variable>.s32IsOmxPath
	mov	lr, #0	@ tmp396,
	ldr	ip, [r8, #12]	@ <variable>.s32ChanPriority, <variable>.s32ChanPriority
	movw	r3, #:lower16:-121389056	@ tmp395,
	ldr	sl, [r8, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r1, #1	@ <variable>.s32IsOmxPath,
	movt	r3, #:upper16:-121389056	@ tmp395,
	str	r0, [fp, #-228]	@, ScdInstCfg.pBufVirAddr
	ldr	r0, [r2, #308]	@ <variable>.s32ScdChanMemSize, <variable>.s32ScdChanMemSize
	strb	ip, [fp, #-224]	@ <variable>.s32ChanPriority, ScdInstCfg.Priority
	str	r3, [fp, #-208]	@ tmp395, ScdInstCfg.RegPhyBaseAddr
	sub	r3, fp, #204	@ tmp404,,
	str	lr, [fp, #-192]	@ tmp396, ScdInstCfg.DisContinueRawPacketFlag
	str	r9, [fp, #-196]	@ tmp397, ScdInstCfg.LastRawDisContinueCount
	str	sl, [fp, #-220]	@ <variable>.eVidStd, ScdInstCfg.VidStd
	str	r0, [fp, #-212]	@ <variable>.s32ScdChanMemSize, ScdInstCfg.BufSize
	ldreq	r0, [r8, #84]	@ <variable>.s32MaxRawPacketNum, <variable>.s32MaxRawPacketNum
	ldreq	r9, [r8, #88]	@ <variable>.s32MaxRawPacketSize, <variable>.s32MaxRawPacketSize
	streq	r1, [fp, #-180]	@ <variable>.s32IsOmxPath, ScdInstCfg.IsOmxPath
	streq	r0, [fp, #-76]	@ <variable>.s32MaxRawPacketNum, ScdInstCfg.MaxRawPacketNum
	streq	r9, [fp, #-72]	@ <variable>.s32MaxRawPacketSize, ScdInstCfg.MaxRawPacketSize
	cmp	sl, #0	@ <variable>.eVidStd,
	add	sl, r8, #4	@ tmp670, pstCfg,
	ldr	r2, [r8, #76]	@ <variable>.s32ChanLowlyEnable, <variable>.s32ChanLowlyEnable
	ldreq	ip, [r8, #48]	@ iftmp.547, <variable>.s32LowdlyEnable
	sub	r9, fp, #48	@ tmp407,,
	ldmia	sl, {r0, r1}	@ tmp670,,
	movne	ip, #0	@ iftmp.547,
	str	r2, [fp, #-184]	@ <variable>.s32ChanLowlyEnable, ScdInstCfg.s32ChanLowlyEnable
	str	ip, [fp, #-188]	@ iftmp.547, ScdInstCfg.ScdLowdlyEnable
	stmia	r3, {r0, r1}	@ tmp404,,
	mov	r1, r7	@, tmp676
	mov	r0, r5	@, ChanID
	bl	SM_Config	@
	mov	r0, r9	@, tmp407
	mov	r1, #1	@,
	bl	__memzero	@
	ldr	r3, [r8, #80]	@ <variable>.s32IsOmxPath, <variable>.s32IsOmxPath
	cmp	r3, #1	@ <variable>.s32IsOmxPath,
	beq	.L2325	@,
.L2262:
	ldr	r3, [r4, r5, asl #2]	@ temp.5773, s_pstVfmwChan
	mov	r2, #0	@ tmp458,
	movw	lr, #:lower16:251592	@ tmp473,
	movt	lr, #:upper16:251592	@ tmp473,
	movw	r7, #:lower16:.LANCHOR0	@ tmp412,
	movt	r7, #:upper16:.LANCHOR0	@ tmp412,
	ldr	r1, [r3, #260]	@ <variable>.stChanMem_ctx.PhyAddr, <variable>.stChanMem_ctx.PhyAddr
	str	r1, [r3, #1236]	@ <variable>.stChanMem_ctx.PhyAddr, <variable>.stSynExtraData.s32ContextMemAddr
	ldr	ip, [r4, r5, asl #2]	@ temp.5774, s_pstVfmwChan
	ldr	r0, [ip, #264]	@ <variable>.stChanMem_ctx.Length, <variable>.stChanMem_ctx.Length
	str	r0, [ip, #1240]	@ <variable>.stChanMem_ctx.Length, <variable>.stSynExtraData.s32ContextMemSize
	ldr	r3, [r4, r5, asl #2]	@ temp.5775, s_pstVfmwChan
	ldr	r1, [r3, #280]	@ <variable>.s32VdmChanMemAddr, <variable>.s32VdmChanMemAddr
	str	r1, [r3, #584]	@ <variable>.s32VdmChanMemAddr, <variable>.stSynExtraData.s32SyntaxMemAddr
	ldr	ip, [r4, r5, asl #2]	@ temp.5776, s_pstVfmwChan
	ldr	r0, [ip, #284]	@ <variable>.s32VdmChanMemSize, <variable>.s32VdmChanMemSize
	str	r0, [ip, #588]	@ <variable>.s32VdmChanMemSize, <variable>.stSynExtraData.s32SyntaxMemSize
	ldr	r3, [r4, r5, asl #2]	@ temp.5777, s_pstVfmwChan
	ldr	r1, [r3, #312]	@ <variable>.s32BpdChanMemAddr, <variable>.s32BpdChanMemAddr
	str	r1, [r3, #596]	@ <variable>.s32BpdChanMemAddr, <variable>.stSynExtraData.s32BpdMemAddr
	ldr	ip, [r4, r5, asl #2]	@ temp.5778, s_pstVfmwChan
	ldr	r0, [ip, #316]	@ <variable>.s32BpdChanMemSize, <variable>.s32BpdChanMemSize
	str	r0, [ip, #600]	@ <variable>.s32BpdChanMemSize, <variable>.stSynExtraData.s32BpdMemSize
	ldr	r3, [r4, r5, asl #2]	@ temp.5779, s_pstVfmwChan
	ldr	r1, [r3, #320]	@ <variable>.s32Vp8SegIdChanMemAddr, <variable>.s32Vp8SegIdChanMemAddr
	str	r1, [r3, #604]	@ <variable>.s32Vp8SegIdChanMemAddr, <variable>.stSynExtraData.s32Vp8SegIdMemAddr
	ldr	ip, [r4, r5, asl #2]	@ temp.5780, s_pstVfmwChan
	ldr	r0, [ip, #324]	@ <variable>.s32Vp8SegIdChanMemSize, <variable>.s32Vp8SegIdChanMemSize
	str	r0, [ip, #608]	@ <variable>.s32Vp8SegIdChanMemSize, <variable>.stSynExtraData.s32Vp8SegIdMemSize
	ldr	r3, [r4, r5, asl #2]	@ tmp429, s_pstVfmwChan
	ldr	r1, [r8, #16]	@ <variable>.s32ChanErrThr, <variable>.s32ChanErrThr
	str	r1, [r3, #564]	@ <variable>.s32ChanErrThr, <variable>.stSynExtraData.s32OutErrThr
	ldr	ip, [r4, r5, asl #2]	@ tmp432, s_pstVfmwChan
	ldr	r0, [r8, #16]	@ <variable>.s32ChanErrThr, <variable>.s32ChanErrThr
	str	r0, [ip, #560]	@ <variable>.s32ChanErrThr, <variable>.stSynExtraData.s32RefErrThr
	ldr	r3, [r4, r5, asl #2]	@ tmp435, s_pstVfmwChan
	ldr	r1, [r8, #24]	@ <variable>.s32DecMode, <variable>.s32DecMode
	str	r1, [r3, #568]	@ <variable>.s32DecMode, <variable>.stSynExtraData.s32DecMode
	ldr	ip, [r4, r5, asl #2]	@ tmp438, s_pstVfmwChan
	ldr	r0, [r8, #28]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	str	r0, [ip, #572]	@ <variable>.s32DecOrderOutput, <variable>.stSynExtraData.s32DecOrderOutput
	ldr	r3, [r4, r5, asl #2]	@ tmp441, s_pstVfmwChan
	ldr	r1, [r8, #32]	@ <variable>.s32DnrTfEnable, <variable>.s32DnrTfEnable
	str	r1, [r3, #576]	@ <variable>.s32DnrTfEnable, <variable>.stSynExtraData.s32DnrTfEnable
	ldr	ip, [r4, r5, asl #2]	@ tmp444, s_pstVfmwChan
	ldr	r0, [r8, #52]	@ <variable>.s32VcmpEn, <variable>.s32VcmpEn
	str	r0, [ip, #1244]	@ <variable>.s32VcmpEn, <variable>.stSynExtraData.s32Compress_en
	ldr	r3, [r4, r5, asl #2]	@ tmp447, s_pstVfmwChan
	ldr	r1, [r8, #68]	@ <variable>.s32SupportAllP, <variable>.s32SupportAllP
	cmp	r1, #1	@ <variable>.s32SupportAllP,
	movne	ip, #0	@, tmp449
	moveq	ip, #1	@, tmp449
	str	ip, [r3, #1260]	@ tmp449, <variable>.stSynExtraData.s32SupportAllP
	ldr	r0, [r4, r5, asl #2]	@ tmp451, s_pstVfmwChan
	ldr	r1, [r8, #72]	@ <variable>.s32ModuleLowlyEnable, <variable>.s32ModuleLowlyEnable
	str	r1, [r0, #1264]	@ <variable>.s32ModuleLowlyEnable, <variable>.stSynExtraData.s32ModuleLowlyEnable
	ldr	r3, [r4, r5, asl #2]	@ tmp454, s_pstVfmwChan
	ldr	ip, [r8, #48]	@ <variable>.s32LowdlyEnable, <variable>.s32LowdlyEnable
	str	ip, [r3, #1268]	@ <variable>.s32LowdlyEnable, <variable>.stSynExtraData.s32LowdlyEnable
	ldr	r0, [r4, r5, asl #2]	@ tmp457, s_pstVfmwChan
	str	r2, [r0, #1464]	@ tmp458, <variable>.stSynExtraData.s32WaitFsFlag
	ldr	r1, [r4, r5, asl #2]	@ tmp460, s_pstVfmwChan
	str	r2, [r1, #1484]	@ tmp458, <variable>.stSynExtraData.s32Is4k60fps
	ldr	r3, [r4, r5, asl #2]	@ tmp464, s_pstVfmwChan
	ldmia	sl, {r0, r1}	@ tmp670,,
	add	ip, r3, #1104	@ tmp463, tmp464,
	add	r3, ip, #12	@ tmp463, tmp463,
	stmia	r3, {r0, r1}	@ tmp463,,
	ldr	r0, [r4, r5, asl #2]	@ tmp470, s_pstVfmwChan
	str	r2, [r0, #580]	@ tmp458, <variable>.stSynExtraData.s32DnrDispOutEnable
	ldr	r0, [r4, r5, asl #2]	@ prephitmp.5741, s_pstVfmwChan
	ldr	r3, [r0, lr]	@ prephitmp.5629, <variable>.stSynCtx.eVidStd
	ldr	r1, [r0, #552]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, r1	@ prephitmp.5629, <variable>.eVidStd
	beq	.L2263	@,
	mov	r0, r5	@, ChanID
	bl	VCTRL_ResetChan	@
	ldr	r2, [r8, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	ldr	r0, [r7, r5, asl #2]	@ prephitmp.5741, s_pstVfmwChan
	cmp	r2, #18	@ <variable>.eVidStd,
	bne	.L2306	@,
	ldr	ip, [r0, #1296]	@ <variable>.stSynExtraData.stChanOption.Purpose, <variable>.stSynExtraData.stChanOption.Purpose
	ldr	lr, [r0, #304]	@ <variable>.s32SdecMemSize, <variable>.s32SdecMemSize
	cmp	ip, #2	@ <variable>.stSynExtraData.stChanOption.Purpose,
	ldr	r3, [r0, #300]	@ <variable>.s32SdecMemAddr, <variable>.s32SdecMemAddr
	ldrne	r1, [r0, #1304]	@ MaxWidth, <variable>.stSynExtraData.stChanOption.s32MaxWidth
	ldrne	r2, [r0, #1308]	@ MaxHeight, <variable>.stSynExtraData.stChanOption.s32MaxHeight
	ldreq	r1, [r0, #1360]	@ MaxWidth, <variable>.stSynExtraData.stChanOption.s32SlotWidth
	ldreq	r2, [r0, #1364]	@ MaxHeight, <variable>.stSynExtraData.stChanOption.s32SlotHeight
	mov	r0, r5	@, ChanID
	str	lr, [sp, #0]	@ <variable>.s32SdecMemSize,
	bl	VCTRL_PartitionMemForStdUser	@
	cmp	r0, #0	@,
	bne	.L2267	@,
	ldr	r0, [r4, r5, asl #2]	@ prephitmp.5741, s_pstVfmwChan
.L2306:
	ldr	r3, [r0, #552]	@ prephitmp.5629, <variable>.eVidStd
.L2263:
	movw	lr, #:lower16:251592	@ tmp482,
	movt	lr, #:upper16:251592	@ tmp482,
	movw	r7, #:lower16:.LANCHOR0	@ tmp483,
	movt	r7, #:upper16:.LANCHOR0	@ tmp483,
	str	r3, [r0, lr]	@ prephitmp.5629, <variable>.stSynCtx.eVidStd
	ldr	r0, [r4, r5, asl #2]	@ tmp484, s_pstVfmwChan
	ldr	r1, [r0, #300]	@ temp.5797, <variable>.s32SdecMemAddr
	mov	r0, r1	@, temp.5797
	str	r1, [fp, #-68]	@ temp.5797, stMem.PhyAddr
	bl	MEM_Phy2Vir	@
	ldr	r2, [r4, r5, asl #2]	@ tmp486, s_pstVfmwChan
	sub	r1, fp, #68	@,,
	str	r0, [fp, #-64]	@, stMem.VirAddr
	mov	r0, r5	@, ChanID
	ldr	r3, [r2, #304]	@ <variable>.s32SdecMemSize, <variable>.s32SdecMemSize
	str	r3, [fp, #-60]	@ <variable>.s32SdecMemSize, stMem.Length
	bl	RefreshDecCore	@
	cmp	r0, #0	@,
	bne	.L2220	@,
	ldr	lr, [r7, #0]	@ temp.5659, s_pstVfmwChan
	ldr	r0, [r4, #4]	@ temp.5663, s_pstVfmwChan
	cmp	lr, #0	@ temp.5659,
	ldr	r2, [r4, #8]	@ temp.5804, s_pstVfmwChan
	streq	lr, [r6, #-3644]	@ temp.5659, PrioArray
	ldrne	r1, [lr, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	movweq	r3, #:lower16:g_ChanCtx	@ tmp672,
	movwne	r3, #:lower16:g_ChanCtx	@ tmp672,
	movteq	r3, #:upper16:g_ChanCtx	@ tmp672,
	movtne	r3, #:upper16:g_ChanCtx	@ tmp672,
	ldr	ip, [r4, #12]	@ temp.5808, s_pstVfmwChan
	strne	r1, [r6, #-3644]	@ <variable>.s32Priority, PrioArray
	ldrne	lr, [lr, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r0, #0	@ temp.5663,
	streq	r0, [r3, #4]	@ temp.5663, g_ChanCtx.PriorByChanId
	streq	r0, [r6, #-3640]	@ temp.5663, PrioArray
	str	lr, [r3, #0]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	ldrne	r1, [r0, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	ldr	lr, [r4, #16]	@ temp.5812, s_pstVfmwChan
	strne	r1, [r6, #-3640]	@ <variable>.s32Priority, PrioArray
	ldrne	r0, [r0, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	r0, [r3, #4]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	cmp	r2, #0	@ temp.5804,
	streq	r2, [r3, #8]	@ temp.5804, g_ChanCtx.PriorByChanId
	ldrne	r1, [r2, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	r2, [r6, #-3636]	@ temp.5804, PrioArray
	strne	r1, [r6, #-3636]	@ <variable>.s32Priority, PrioArray
	ldrne	r2, [r2, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	r2, [r3, #8]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	cmp	ip, #0	@ temp.5808,
	streq	ip, [r3, #12]	@ temp.5808, g_ChanCtx.PriorByChanId
	ldrne	r1, [ip, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	ip, [r6, #-3632]	@ temp.5808, PrioArray
	strne	r1, [r6, #-3632]	@ <variable>.s32Priority, PrioArray
	ldrne	ip, [ip, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	ip, [r3, #12]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	cmp	lr, #0	@ temp.5812,
	streq	lr, [r3, #16]	@ temp.5812, g_ChanCtx.PriorByChanId
	ldrne	r1, [lr, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	lr, [r6, #-3628]	@ temp.5812, PrioArray
	strne	r1, [r6, #-3628]	@ <variable>.s32Priority, PrioArray
	ldrne	lr, [lr, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	lr, [r3, #16]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	ldr	r0, [r4, #20]	@ temp.5816, s_pstVfmwChan
	ldr	r2, [r4, #24]	@ temp.5820, s_pstVfmwChan
	cmp	r0, #0	@ temp.5816,
	ldr	ip, [r4, #28]	@ temp.5824, s_pstVfmwChan
	streq	r0, [r3, #20]	@ temp.5816, g_ChanCtx.PriorByChanId
	ldrne	r1, [r0, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	r0, [r6, #-3624]	@ temp.5816, PrioArray
	ldr	lr, [r4, #32]	@ temp.5828, s_pstVfmwChan
	strne	r1, [r6, #-3624]	@ <variable>.s32Priority, PrioArray
	ldrne	r0, [r0, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	r0, [r3, #20]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	cmp	r2, #0	@ temp.5820,
	streq	r2, [r3, #24]	@ temp.5820, g_ChanCtx.PriorByChanId
	ldrne	r1, [r2, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	r2, [r6, #-3620]	@ temp.5820, PrioArray
	ldr	r0, [r4, #36]	@ temp.5832, s_pstVfmwChan
	strne	r1, [r6, #-3620]	@ <variable>.s32Priority, PrioArray
	ldrne	r2, [r2, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	r2, [r3, #24]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	cmp	ip, #0	@ temp.5824,
	streq	ip, [r3, #28]	@ temp.5824, g_ChanCtx.PriorByChanId
	ldrne	r1, [ip, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	ip, [r6, #-3616]	@ temp.5824, PrioArray
	strne	r1, [r6, #-3616]	@ <variable>.s32Priority, PrioArray
	ldrne	ip, [ip, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	ip, [r3, #28]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	cmp	lr, #0	@ temp.5828,
	streq	lr, [r3, #32]	@ temp.5828, g_ChanCtx.PriorByChanId
	ldrne	r1, [lr, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	lr, [r6, #-3612]	@ temp.5828, PrioArray
	strne	r1, [r6, #-3612]	@ <variable>.s32Priority, PrioArray
	ldrne	lr, [lr, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	lr, [r3, #32]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	cmp	r0, #0	@ temp.5832,
	streq	r0, [r3, #36]	@ temp.5832, g_ChanCtx.PriorByChanId
	ldrne	r1, [r0, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	r0, [r6, #-3608]	@ temp.5832, PrioArray
	strne	r1, [r6, #-3608]	@ <variable>.s32Priority, PrioArray
	ldrne	r0, [r0, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	r0, [r3, #36]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	ldr	r2, [r4, #40]	@ temp.5836, s_pstVfmwChan
	ldr	ip, [r4, #44]	@ temp.5840, s_pstVfmwChan
	cmp	r2, #0	@ temp.5836,
	ldr	lr, [r4, #48]	@ temp.5844, s_pstVfmwChan
	streq	r2, [r3, #40]	@ temp.5836, g_ChanCtx.PriorByChanId
	ldrne	r1, [r2, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	r2, [r6, #-3604]	@ temp.5836, PrioArray
	ldr	r0, [r4, #52]	@ temp.5848, s_pstVfmwChan
	strne	r1, [r6, #-3604]	@ <variable>.s32Priority, PrioArray
	ldrne	r2, [r2, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	r2, [r3, #40]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	cmp	ip, #0	@ temp.5840,
	streq	ip, [r3, #44]	@ temp.5840, g_ChanCtx.PriorByChanId
	ldrne	r1, [ip, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	ip, [r6, #-3600]	@ temp.5840, PrioArray
	ldr	r2, [r4, #56]	@ temp.5852, s_pstVfmwChan
	strne	r1, [r6, #-3600]	@ <variable>.s32Priority, PrioArray
	ldrne	ip, [ip, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	ip, [r3, #44]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	cmp	lr, #0	@ temp.5844,
	streq	lr, [r3, #48]	@ temp.5844, g_ChanCtx.PriorByChanId
	ldrne	r1, [lr, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	lr, [r6, #-3596]	@ temp.5844, PrioArray
	strne	r1, [r6, #-3596]	@ <variable>.s32Priority, PrioArray
	ldrne	lr, [lr, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	lr, [r3, #48]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	cmp	r0, #0	@ temp.5848,
	streq	r0, [r3, #52]	@ temp.5848, g_ChanCtx.PriorByChanId
	ldrne	r1, [r0, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	r0, [r6, #-3592]	@ temp.5848, PrioArray
	strne	r1, [r6, #-3592]	@ <variable>.s32Priority, PrioArray
	ldrne	r0, [r0, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	r0, [r3, #52]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	cmp	r2, #0	@ temp.5852,
	streq	r2, [r3, #56]	@ temp.5852, g_ChanCtx.PriorByChanId
	ldrne	r1, [r2, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	r2, [r6, #-3588]	@ temp.5852, PrioArray
	ldr	r0, .L2330+4	@,
	strne	r1, [r6, #-3588]	@ <variable>.s32Priority, PrioArray
	ldrne	r2, [r2, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	r2, [r3, #56]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	ldr	ip, [r4, #60]	@ temp.5800, s_pstVfmwChan
	cmp	ip, #0	@ temp.5800,
	streq	ip, [r3, #60]	@ temp.5800, g_ChanCtx.PriorByChanId
	ldrne	r1, [ip, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	ip, [r6, #-3584]	@ temp.5800, PrioArray
	strne	r1, [r6, #-3584]	@ <variable>.s32Priority, PrioArray
	ldrne	ip, [ip, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	ip, [r3, #60]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	bl	VDMDRV_SetPriority	@
	mov	r0, r5	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.51437,
	b	.L2212	@
.L2315:
	movw	r1, #:lower16:.LC321	@,
	movt	r1, #:upper16:.LC321	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.51437, D.51466
	b	.L2212	@
.L2223:
	ldr	r7, [r4, r5, asl #2]	@ prephitmp.5627, s_pstVfmwChan
	b	.L2232	@
.L2314:
	sub	r0, fp, #52	@,,
	bl	REAL9DEC_Support	@
	ldr	r1, [fp, #-52]	@ s32supportFlag, s32supportFlag
	cmp	r1, #0	@ s32supportFlag,
	bne	.L2221	@,
.L2220:
	mvn	r0, #0	@ D.51437,
	b	.L2212	@
.L2267:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC326	@,
	movt	r1, #:upper16:.LC326	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.51437,
	b	.L2212	@
.L2311:
	mov	r0, r6	@, tmp212
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #3119	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC41	@,
	movt	r3, #:upper16:.LC41	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.51437,
	b	.L2212	@
.L2233:
	movw	sl, #:lower16:.LANCHOR0	@ tmp310,
	movt	sl, #:upper16:.LANCHOR0	@ tmp310,
	add	r0, sl, #520	@, tmp310,
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r0, [r7, #208]	@, <variable>.stChanMem.VirAddr
	bl	KernelMunmap	@
	ldr	r3, [r8, #0]	@ temp.5706, <variable>.eVidStd
	sub	r9, r3, #10	@ tmp313, temp.5706,
	cmp	r9, #2	@ tmp313,
	bhi	.L2248	@,
	ldr	r1, [sl, #516]	@ g_VdmCharacter, g_VdmCharacter
	tst	r1, #1	@ g_VdmCharacter,
	beq	.L2249	@,
.L2250:
	ldr	r0, [r7, #212]	@, <variable>.stChanMem.PhyAddr
	ldr	r1, [r7, #216]	@, <variable>.stChanMem.Length
	bl	KernelMmap	@
	mov	r9, r0	@ pVir,
.L2251:
	movw	sl, #:lower16:.LANCHOR0	@ tmp321,
	movt	sl, #:upper16:.LANCHOR0	@ tmp321,
	add	r0, sl, #520	@, tmp321,
	bl	OSAL_SpinLockIRQ	@
	ldr	r3, [r4, r5, asl #2]	@ temp.5716, s_pstVfmwChan
	cmp	r3, #0	@ temp.5716,
	beq	.L2326	@,
	cmp	r9, #0	@ pVir,
	beq	.L2327	@,
	ldr	r2, [r3, #248]	@, <variable>.stChanMem_scd.Length
	ldr	r0, [r3, #244]	@, <variable>.stChanMem_scd.PhyAddr
	ldr	r1, [r3, #240]	@, <variable>.stChanMem_scd.VirAddr
	bl	MEM_DelMemRecord	@
	cmp	r0, #0	@
	str	r0, [fp, #-232]	@, %sfp
	ldrne	r2, [sl, r5, asl #2]	@ temp.5719, s_pstVfmwChan
	movne	r0, #0	@,
	bne	.L2308	@,
	ldr	r3, [sl, r5, asl #2]	@ temp.5723, s_pstVfmwChan
	ldr	r2, [r3, #232]	@, <variable>.stChanMem_vdh.Length
	ldr	r0, [r3, #228]	@, <variable>.stChanMem_vdh.PhyAddr
	ldr	r1, [r3, #224]	@, <variable>.stChanMem_vdh.VirAddr
	bl	MEM_DelMemRecord	@
	cmp	r0, #0	@
	str	r0, [fp, #-236]	@, %sfp
	ldrne	r2, [sl, r5, asl #2]	@ temp.5725, s_pstVfmwChan
	ldrne	r0, [fp, #-232]	@, %sfp
	bne	.L2307	@,
	str	r9, [r7, #208]	@ pVir, <variable>.stChanMem.VirAddr
	mov	r1, r9	@, pVir
	ldr	lr, [sl, r5, asl #2]	@ tmp343, s_pstVfmwChan
	ldr	r0, [r7, #212]	@, <variable>.stChanMem.PhyAddr
	ldr	r2, [r7, #216]	@, <variable>.stChanMem.Length
	str	r9, [lr, #240]	@ pVir, <variable>.stChanMem_scd.VirAddr
	ldr	ip, [sl, r5, asl #2]	@ temp.5730, s_pstVfmwChan
	ldr	r3, [ip, #248]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	add	lr, r9, r3	@ tmp346, pVir, <variable>.stChanMem_scd.Length
	str	lr, [ip, #224]	@ tmp346, <variable>.stChanMem_vdh.VirAddr
	bl	MEM_AddMemRecord	@
	subs	r9, r0, #0	@ D.51591,
	bne	.L2328	@,
	ldr	r7, [sl, r5, asl #2]	@ temp.5739, s_pstVfmwChan
	ldr	r2, [r7, #248]	@, <variable>.stChanMem_scd.Length
	ldr	r0, [r7, #244]	@, <variable>.stChanMem_scd.PhyAddr
	ldr	r1, [r7, #240]	@, <variable>.stChanMem_scd.VirAddr
	bl	MEM_AddMemRecord	@
	subs	r7, r0, #0	@ D.51594,
	bne	.L2329	@,
	ldr	r3, [sl, r5, asl #2]	@ temp.5749, s_pstVfmwChan
	ldr	r2, [r3, #232]	@, <variable>.stChanMem_vdh.Length
	ldr	r0, [r3, #228]	@, <variable>.stChanMem_vdh.PhyAddr
	ldr	r1, [r3, #224]	@, <variable>.stChanMem_vdh.VirAddr
	bl	MEM_AddMemRecord	@
	cmp	r0, #0	@,
	bne	.L2258	@,
.L2305:
	ldr	r7, [sl, r5, asl #2]	@ prephitmp.5627, s_pstVfmwChan
	b	.L2232	@
.L2325:
	mov	r1, r9	@, tmp407
	mov	r0, r5	@, ChanID
	strb	r3, [fp, #-48]	@ <variable>.s32IsOmxPath, FspInstCfg.s8LowBufEnable
	bl	FSP_ConfigAttribute	@
	b	.L2262	@
.L2248:
	cmp	r3, #4	@ temp.5706,
	beq	.L2249	@,
	cmp	r3, #14	@ temp.5706,
	bne	.L2250	@,
.L2249:
	ldr	r0, [r7, #212]	@, <variable>.stChanMem.PhyAddr
	ldr	r1, [r7, #216]	@, <variable>.stChanMem.Length
	bl	KernelMmapCache	@
	mov	r9, r0	@ pVir,
	b	.L2251	@
.L2235:
	cmp	r3, #4	@ temp.5665,
	beq	.L2236	@,
	cmp	r3, #14	@ temp.5665,
	bne	.L2237	@,
.L2236:
	ldr	r1, [r7, #232]	@, <variable>.stChanMem_vdh.Length
	mov	sl, #1	@ tmp263,
	ldr	r0, [r7, #228]	@, <variable>.stChanMem_vdh.PhyAddr
	bl	KernelMmapCache	@
	ldr	r1, [r7, #248]	@ temp.5675, <variable>.stChanMem_scd.Length
	strb	sl, [r7, #220]	@ tmp263, <variable>.stChanMem_vdh.IsCached
	cmp	r1, #0	@ temp.5675,
	mov	r9, r0	@ pVir_vdh,
	beq	.L2238	@,
	ldr	r0, [r7, #244]	@, <variable>.stChanMem_scd.PhyAddr
	bl	KernelMmapCache	@
	str	r0, [fp, #-232]	@, %sfp
	strb	sl, [r7, #236]	@ tmp263, <variable>.stChanMem_scd.IsCached
	b	.L2239	@
.L2258:
	ldr	r2, [sl, r5, asl #2]	@ temp.5754, s_pstVfmwChan
	mov	r0, r7	@, D.51594
.L2307:
	ldr	lr, [r2, #232]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	movw	r1, #:lower16:.LC324	@,
	movt	r1, #:upper16:.LC324	@,
	str	lr, [sp, #0]	@ <variable>.stChanMem_vdh.Length,
	ldr	r3, [r2, #224]	@, <variable>.stChanMem_vdh.VirAddr
	ldr	r2, [r2, #228]	@, <variable>.stChanMem_vdh.PhyAddr
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.51437,
	b	.L2212	@
.L2312:
	mov	r0, r6	@, tmp212
	movw	r1, #:lower16:.LC319	@,
	movt	r1, #:upper16:.LC319	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.51437,
	b	.L2212	@
.L2317:
	ldr	r0, [r7, #240]	@, <variable>.stChanMem_scd.VirAddr
	bl	KernelMunmap	@
	b	.L2234	@
.L2309:
	mov	r0, r6	@, tmp212
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #3117	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.51437,
	b	.L2212	@
.L2241:
	mov	r2, r5	@, ChanID
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC323	@,
	movt	r1, #:upper16:.LC323	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.51437,
	b	.L2212	@
.L2318:
	ldr	r0, [r7, #244]	@, <variable>.stChanMem_scd.PhyAddr
	bl	KernelMmap	@
	str	r0, [fp, #-232]	@, %sfp
	strb	sl, [r7, #236]	@ tmp270, <variable>.stChanMem_scd.IsCached
	b	.L2239	@
.L2329:
	ldr	r2, [sl, r5, asl #2]	@ temp.5745, s_pstVfmwChan
	mov	r0, r9	@, D.51591
.L2308:
	ldr	ip, [r2, #248]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	movw	r1, #:lower16:.LC324	@,
	movt	r1, #:upper16:.LC324	@,
	str	ip, [sp, #0]	@ <variable>.stChanMem_scd.Length,
	ldr	r3, [r2, #240]	@, <variable>.stChanMem_scd.VirAddr
	ldr	r2, [r2, #244]	@, <variable>.stChanMem_scd.PhyAddr
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.51437,
	b	.L2212	@
.L2313:
	sub	r0, fp, #52	@,,
	bl	REAL8DEC_Support	@
	ldr	r0, [fp, #-52]	@ s32supportFlag, s32supportFlag
	cmp	r0, #0	@ s32supportFlag,
	beq	.L2220	@,
	ldr	r2, [r8, #0]	@ prephitmp.5625, <variable>.eVidStd
	b	.L2219	@
.L2310:
	mov	r0, r3	@, D.51439
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #3118	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r3, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.51437,
	b	.L2212	@
.L2320:
	ldr	r2, [r7, #232]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	mov	r0, r3	@, tmp289
	movw	r1, #:lower16:.LC324	@,
	movt	r1, #:upper16:.LC324	@,
	str	r2, [sp, #0]	@ <variable>.stChanMem_vdh.Length,
	ldr	r3, [r7, #224]	@, <variable>.stChanMem_vdh.VirAddr
	ldr	r2, [r7, #228]	@, <variable>.stChanMem_vdh.PhyAddr
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.51437,
	b	.L2212	@
.L2328:
	ldr	r2, [r7, #216]	@ <variable>.stChanMem.Length, <variable>.stChanMem.Length
	movw	r1, #:lower16:.LC324	@,
	ldr	r0, [fp, #-236]	@, %sfp
	movt	r1, #:upper16:.LC324	@,
	str	r2, [sp, #0]	@ <variable>.stChanMem.Length,
	ldr	r3, [r7, #208]	@, <variable>.stChanMem.VirAddr
	ldr	r2, [r7, #212]	@, <variable>.stChanMem.PhyAddr
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.51437,
	b	.L2212	@
.L2321:
	ldr	ip, [r7, #232]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	movw	r1, #:lower16:.LC324	@,
	ldr	r0, [fp, #-236]	@, %sfp
	movt	r1, #:upper16:.LC324	@,
	str	ip, [sp, #0]	@ <variable>.stChanMem_vdh.Length,
	ldr	r3, [r7, #224]	@, <variable>.stChanMem_vdh.VirAddr
	ldr	r2, [r7, #228]	@, <variable>.stChanMem_vdh.PhyAddr
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.51437,
	b	.L2212	@
.L2322:
	ldr	lr, [r7, #248]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	mov	r0, r9	@, D.51544
	movw	r1, #:lower16:.LC324	@,
	movt	r1, #:upper16:.LC324	@,
	str	lr, [sp, #0]	@ <variable>.stChanMem_scd.Length,
	ldr	r3, [r7, #240]	@, <variable>.stChanMem_scd.VirAddr
	ldr	r2, [r7, #244]	@, <variable>.stChanMem_scd.PhyAddr
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.51437,
	b	.L2212	@
.L2327:
	mov	r0, r9	@, pVir
	mov	r2, r5	@, ChanID
	movw	r1, #:lower16:.LC325	@,
	movt	r1, #:upper16:.LC325	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.51437,
	b	.L2212	@
.L2319:
	movw	r1, #:lower16:.LC322	@,
	ldr	r2, .L2330+8	@,
	movt	r1, #:upper16:.LC322	@,
	movw	r3, #3213	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.51437,
	b	.L2212	@
.L2326:
	mov	r0, r3	@, temp.5716
	movw	r1, #:lower16:.LC322	@,
	ldr	r2, .L2330+8	@,
	movt	r1, #:upper16:.LC322	@,
	movw	r3, #3282	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.51437,
	b	.L2212	@
.L2331:
	.align	2
.L2330:
	.word	.LANCHOR0+520
	.word	.LANCHOR4-3644
	.word	.LANCHOR1+440
	.fnend
	.size	VCTRL_ConfigChan, .-VCTRL_ConfigChan
	.align	2
	.global	VCTRL_StartChanWithOption
	.type	VCTRL_StartChanWithOption, %function
VCTRL_StartChanWithOption:
	.fnstart
.LFB1571:
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
	cmp	r0, #15	@ ChanID,
	mov	r5, r0	@ ChanID, ChanID
	mov	r7, r1	@ pChanMemVdh, pChanMemVdh
	bhi	.L2372	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp342,
	movt	r4, #:upper16:.LANCHOR0	@ tmp342,
	ldr	r3, [r4, r0, asl #2]	@ D.51172, s_pstVfmwChan
	cmp	r3, #0	@ D.51172,
	beq	.L2373	@,
	ldr	r6, [r3, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r6, #1	@ <variable>.s32IsOpen,
	bne	.L2374	@,
	ldr	r3, [r3, #552]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #19	@ <variable>.eVidStd,
	beq	.L2375	@,
	bl	VCTRL_ResetChan	@
	ldr	r3, [r4, r5, asl #2]	@ temp.5884, s_pstVfmwChan
	ldr	r2, [r3, #232]	@, <variable>.stChanMem_vdh.Length
	ldr	r1, [r3, #224]	@, <variable>.stChanMem_vdh.VirAddr
	ldr	r0, [r3, #228]	@, <variable>.stChanMem_vdh.PhyAddr
	bl	MEM_DelMemRecord	@
	ldmia	r7, {r0, r1, r2, r3}	@ pChanMemVdh,,,,
	ldr	ip, [r4, r5, asl #2]	@ tmp175, s_pstVfmwChan
	add	ip, ip, #220	@ tmp174, tmp175,
	stmia	ip, {r0, r1, r2, r3}	@ tmp174,,,,
	ldr	ip, [r4, r5, asl #2]	@ temp.5886, s_pstVfmwChan
	ldr	r2, [ip, #232]	@, <variable>.stChanMem_vdh.Length
	ldr	r1, [ip, #224]	@, <variable>.stChanMem_vdh.VirAddr
	ldr	r0, [ip, #228]	@, <variable>.stChanMem_vdh.PhyAddr
	bl	MEM_AddMemRecord	@
	mov	r0, r5	@, ChanID
	bl	SM_Start	@
	ldr	r2, [r4, r5, asl #2]	@ tmp183, s_pstVfmwChan
	mov	ip, #0	@ tmp187,
	str	r6, [r2, #16]	@ <variable>.s32IsOpen, <variable>.s32IsRun
	ldr	r3, [r4, r5, asl #2]	@ tmp186, s_pstVfmwChan
	str	ip, [r3, #28]	@ tmp187, <variable>.s32StopSyntax
	ldr	r1, [r4, r5, asl #2]	@ tmp189, s_pstVfmwChan
	str	r6, [r1, #20]	@ <variable>.s32IsOpen, <variable>.s32IsInit
	ldr	r3, [r4, r5, asl #2]	@ temp.5893, s_pstVfmwChan
	ldr	r2, [r3, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r2, #0	@ <variable>.s32Priority,
	bne	.L2338	@,
	str	r6, [r3, #24]	@ <variable>.s32IsOpen, <variable>.s32Priority
	ldr	r1, [r4, #0]	@ D.51189, s_pstVfmwChan
	cmp	r1, #0	@ D.51189,
	beq	.L2376	@,
	ldr	r0, [r1, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	movw	r3, #:lower16:.LANCHOR4	@ tmp343,
	movt	r3, #:upper16:.LANCHOR4	@ tmp343,
	movw	r2, #:lower16:g_ChanCtx	@ tmp344,
	movt	r2, #:upper16:g_ChanCtx	@ tmp344,
	str	r0, [r3, #-3580]	@ <variable>.s32Priority, PrioArray
	ldr	lr, [r1, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	str	lr, [r2, #0]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
.L2340:
	ldr	lr, [r4, #4]	@ temp.5898, s_pstVfmwChan
	ldr	ip, [r4, #8]	@ temp.5901, s_pstVfmwChan
	cmp	lr, #0	@ temp.5898,
	ldr	r1, [r4, #12]	@ temp.5904, s_pstVfmwChan
	streq	lr, [r3, #-3576]	@ temp.5898, PrioArray
	ldrne	r0, [lr, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	lr, [r2, #4]	@ temp.5898, g_ChanCtx.PriorByChanId
	strne	r0, [r3, #-3576]	@ <variable>.s32Priority, PrioArray
	ldrne	lr, [lr, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	lr, [r2, #4]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	cmp	ip, #0	@ temp.5901,
	streq	ip, [r3, #-3572]	@ temp.5901, PrioArray
	ldrne	r0, [ip, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	ip, [r2, #8]	@ temp.5901, g_ChanCtx.PriorByChanId
	ldr	lr, [r4, #16]	@ temp.5907, s_pstVfmwChan
	strne	r0, [r3, #-3572]	@ <variable>.s32Priority, PrioArray
	ldrne	ip, [ip, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	ip, [r2, #8]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	cmp	r1, #0	@ temp.5904,
	streq	r1, [r3, #-3568]	@ temp.5904, PrioArray
	ldrne	r0, [r1, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	r1, [r2, #12]	@ temp.5904, g_ChanCtx.PriorByChanId
	ldr	ip, [r4, #20]	@ temp.5910, s_pstVfmwChan
	strne	r0, [r3, #-3568]	@ <variable>.s32Priority, PrioArray
	ldrne	r1, [r1, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	r1, [r2, #12]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	cmp	lr, #0	@ temp.5907,
	streq	lr, [r3, #-3564]	@ temp.5907, PrioArray
	ldrne	r0, [lr, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	lr, [r2, #16]	@ temp.5907, g_ChanCtx.PriorByChanId
	strne	r0, [r3, #-3564]	@ <variable>.s32Priority, PrioArray
	ldrne	lr, [lr, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	lr, [r2, #16]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	cmp	ip, #0	@ temp.5910,
	streq	ip, [r3, #-3560]	@ temp.5910, PrioArray
	ldrne	r0, [ip, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	ip, [r2, #20]	@ temp.5910, g_ChanCtx.PriorByChanId
	strne	r0, [r3, #-3560]	@ <variable>.s32Priority, PrioArray
	ldrne	ip, [ip, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	ip, [r2, #20]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	ldr	r1, [r4, #24]	@ temp.5913, s_pstVfmwChan
	ldr	lr, [r4, #28]	@ temp.5916, s_pstVfmwChan
	cmp	r1, #0	@ temp.5913,
	ldr	ip, [r4, #32]	@ temp.5919, s_pstVfmwChan
	streq	r1, [r3, #-3556]	@ temp.5913, PrioArray
	ldrne	r0, [r1, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	r1, [r2, #24]	@ temp.5913, g_ChanCtx.PriorByChanId
	strne	r0, [r3, #-3556]	@ <variable>.s32Priority, PrioArray
	ldrne	r1, [r1, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	r1, [r2, #24]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	cmp	lr, #0	@ temp.5916,
	streq	lr, [r3, #-3552]	@ temp.5916, PrioArray
	ldrne	r0, [lr, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	lr, [r2, #28]	@ temp.5916, g_ChanCtx.PriorByChanId
	ldr	r1, [r4, #36]	@ temp.5922, s_pstVfmwChan
	strne	r0, [r3, #-3552]	@ <variable>.s32Priority, PrioArray
	ldrne	lr, [lr, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	lr, [r2, #28]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	cmp	ip, #0	@ temp.5919,
	streq	ip, [r3, #-3548]	@ temp.5919, PrioArray
	ldrne	r0, [ip, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	ip, [r2, #32]	@ temp.5919, g_ChanCtx.PriorByChanId
	ldr	lr, [r4, #40]	@ temp.5925, s_pstVfmwChan
	strne	r0, [r3, #-3548]	@ <variable>.s32Priority, PrioArray
	ldrne	ip, [ip, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	ip, [r2, #32]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	cmp	r1, #0	@ temp.5922,
	streq	r1, [r3, #-3544]	@ temp.5922, PrioArray
	ldrne	r0, [r1, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	r1, [r2, #36]	@ temp.5922, g_ChanCtx.PriorByChanId
	strne	r0, [r3, #-3544]	@ <variable>.s32Priority, PrioArray
	ldrne	r1, [r1, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	r1, [r2, #36]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	cmp	lr, #0	@ temp.5925,
	streq	lr, [r3, #-3540]	@ temp.5925, PrioArray
	ldrne	r0, [lr, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	lr, [r2, #40]	@ temp.5925, g_ChanCtx.PriorByChanId
	strne	r0, [r3, #-3540]	@ <variable>.s32Priority, PrioArray
	ldrne	lr, [lr, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	lr, [r2, #40]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	ldr	ip, [r4, #44]	@ temp.5928, s_pstVfmwChan
	ldr	r1, [r4, #48]	@ temp.5931, s_pstVfmwChan
	cmp	ip, #0	@ temp.5928,
	ldr	lr, [r4, #52]	@ temp.5934, s_pstVfmwChan
	streq	ip, [r2, #44]	@ temp.5928, g_ChanCtx.PriorByChanId
	ldrne	r0, [ip, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	ip, [r3, #-3536]	@ temp.5928, PrioArray
	strne	r0, [r3, #-3536]	@ <variable>.s32Priority, PrioArray
	ldrne	ip, [ip, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	ip, [r2, #44]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	cmp	r1, #0	@ temp.5931,
	streq	r1, [r2, #48]	@ temp.5931, g_ChanCtx.PriorByChanId
	ldrne	r0, [r1, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	r1, [r3, #-3532]	@ temp.5931, PrioArray
	ldr	ip, [r4, #56]	@ temp.5937, s_pstVfmwChan
	strne	r0, [r3, #-3532]	@ <variable>.s32Priority, PrioArray
	ldrne	r1, [r1, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	r1, [r2, #48]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	cmp	lr, #0	@ temp.5934,
	streq	lr, [r2, #52]	@ temp.5934, g_ChanCtx.PriorByChanId
	ldrne	r0, [lr, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	lr, [r3, #-3528]	@ temp.5934, PrioArray
	ldr	r1, [r4, #60]	@ temp.5894, s_pstVfmwChan
	strne	r0, [r3, #-3528]	@ <variable>.s32Priority, PrioArray
	ldrne	lr, [lr, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	lr, [r2, #52]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	cmp	ip, #0	@ temp.5937,
	streq	ip, [r2, #56]	@ temp.5937, g_ChanCtx.PriorByChanId
	ldrne	r0, [ip, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	ip, [r3, #-3524]	@ temp.5937, PrioArray
	strne	r0, [r3, #-3524]	@ <variable>.s32Priority, PrioArray
	ldrne	ip, [ip, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	ip, [r2, #56]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	cmp	r1, #0	@ temp.5894,
	ldrne	r0, [r1, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	r0, [r3, #-3520]	@ <variable>.s32Priority, PrioArray
	ldrne	r3, [r1, #24]	@ <variable>.s32Priority, <variable>.s32Priority
	ldr	r0, .L2377	@,
	strne	r3, [r2, #60]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	streq	r1, [r2, #60]	@ temp.5894, g_ChanCtx.PriorByChanId
	streq	r1, [r3, #-3520]	@ temp.5894, PrioArray
	bl	VDMDRV_SetPriority	@
	mov	r0, r5	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
.L2338:
	mov	r0, r5	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, r5	@, ChanID
	bl	VCTRL_OpenHardware	@
	mov	r0, #0	@ D.51170,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L2376:
	movw	r3, #:lower16:.LANCHOR4	@ tmp343,
	movw	r2, #:lower16:g_ChanCtx	@ tmp344,
	movt	r3, #:upper16:.LANCHOR4	@ tmp343,
	movt	r2, #:upper16:g_ChanCtx	@ tmp344,
	str	r1, [r3, #-3580]	@ D.51189, PrioArray
	str	r1, [r2, #0]	@ D.51189, g_ChanCtx.PriorByChanId
	b	.L2340	@
.L2374:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #2746	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC26	@,
	movt	r3, #:upper16:.LC26	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.51170,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L2372:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #2744	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.51170,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L2375:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #2747	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC242	@,
	movt	r3, #:upper16:.LC242	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.51170,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L2373:
	mov	r0, r3	@, D.51172
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #2745	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC161	@,
	movt	r3, #:upper16:.LC161	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.51170,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L2378:
	.align	2
.L2377:
	.word	.LANCHOR4-3580
	.fnend
	.size	VCTRL_StartChanWithOption, .-VCTRL_StartChanWithOption
	.align	2
	.global	VCTRL_DestroyChanWithOption
	.type	VCTRL_DestroyChanWithOption, %function
VCTRL_DestroyChanWithOption:
	.fnstart
.LFB1569:
	@ args = 0, pretend = 0, frame = 136
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #140
	sub	sp, sp, #140	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r5, #:lower16:.LANCHOR0	@ tmp223,
	movt	r5, #:upper16:.LANCHOR0	@ tmp223,
	mov	r4, r0	@ ChanID, ChanID
	add	r0, r5, #520	@, tmp223,
	bl	OSAL_SpinLockIRQ	@
	cmp	r4, #15	@ ChanID,
	bhi	.L2388	@,
	ldr	r6, [r5, r4, asl #2]	@ D.51101, s_pstVfmwChan
	cmp	r6, #0	@ D.51101,
	beq	.L2389	@,
	ldr	r3, [r6, #12]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	bne	.L2390	@,
	movw	lr, #:lower16:g_FrameRate	@ tmp157,
	movw	r1, #:lower16:g_LastFrameRate	@ tmp159,
	movt	lr, #:upper16:g_FrameRate	@ tmp157,
	movt	r1, #:upper16:g_LastFrameRate	@ tmp159,
	movw	r7, #:lower16:g_LowDelaySeqIndex	@ tmp161,
	movt	r7, #:upper16:g_LowDelaySeqIndex	@ tmp161,
	mov	ip, #30	@ tmp158,
	mov	r2, #0	@ tmp162,
	str	ip, [r1, r4, asl #2]	@ tmp158, g_LastFrameRate
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	str	r2, [r7, r4, asl #2]	@ tmp162, g_LowDelaySeqIndex
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	str	ip, [lr, r4, asl #2]	@ tmp158, g_FrameRate
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r4	@, ChanID
	bl	VCTRL_StopChan	@
	subs	r7, r0, #0	@ ret,
	bne	.L2391	@,
	mov	r0, r4	@, ChanID
	movw	r9, #:lower16:.LANCHOR3	@ tmp168,
	movt	r9, #:upper16:.LANCHOR3	@ tmp168,
	bl	SCDDRV_ResetSCD	@
	add	r8, r9, r4, asl #2	@, tmp171, tmp168, ChanID,
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r4	@, ChanID
	bl	VCTRL_ResetChan	@
	bl	VDMDRV_ParamInit	@
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	str	r7, [r8, #-1460]	@ ret, g_DSPState
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, [r6, #552]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r0, #4	@ <variable>.eVidStd,
	beq	.L2392	@,
.L2385:
	mov	r0, r4	@, ChanID
	sub	r8, fp, #140	@,,
	bl	VCTRL_UnInstallChan	@
	ldr	r3, [r5, r4, asl #2]	@ temp.5965, s_pstVfmwChan
	str	r8, [fp, #-168]	@, %sfp
	movw	r6, #:lower16:s_SmIIS	@ tmp194,
	add	ip, r3, #236	@, temp.5965,
	movt	r6, #:upper16:s_SmIIS	@ tmp194,
	ldr	r0, [r3, #276]	@ <variable>.s32SelfAllocChanMem_ctx, <variable>.s32SelfAllocChanMem_ctx
	add	r2, r3, #204	@ tmp187, temp.5965,
	str	ip, [fp, #-160]	@, %sfp
	add	ip, r4, r4, asl #1	@, tmp197, ChanID, ChanID,
	add	r9, r3, #248832	@ tmp185, temp.5965,
	add	r8, r3, #252	@ tmp189, temp.5965,
	str	r0, [fp, #-68]	@ <variable>.s32SelfAllocChanMem_ctx, ChanMem.s32SelfAllocChanMem_ctx
	add	ip, r6, ip, asl #4	@, tmp199, tmp194, tmp197,
	ldr	lr, [r3, #268]	@ <variable>.s32SelfAllocChanMem_vdh, <variable>.s32SelfAllocChanMem_vdh
	add	r6, r3, #152	@, temp.5965,
	sub	r0, fp, #124	@,,
	str	r6, [fp, #-164]	@, %sfp
	str	r0, [fp, #-172]	@, %sfp
	sub	r6, fp, #64	@,,
	str	lr, [fp, #-76]	@ <variable>.s32SelfAllocChanMem_vdh, ChanMem.s32SelfAllocChanMem_vdh
	sub	r0, fp, #92	@,,
	str	r6, [fp, #-180]	@, %sfp
	add	r1, r9, #472	@ tmp185, tmp185,
	str	r0, [fp, #-176]	@, %sfp
	add	r9, r3, #220	@ tmp191, temp.5965,
	ldr	r0, [r3, #272]	@ <variable>.s32SelfAllocChanMem_scd, <variable>.s32SelfAllocChanMem_scd
	sub	r7, fp, #156	@ tmp186,,
	sub	sl, fp, #108	@ tmp188,,
	mov	r6, #0	@ tmp212,
	movw	lr, #:lower16:s_pFspInst	@ tmp213,
	movt	lr, #:upper16:s_pFspInst	@ tmp213,
	str	r0, [fp, #-72]	@ <variable>.s32SelfAllocChanMem_scd, ChanMem.s32SelfAllocChanMem_scd
	ldr	r0, [r3, #1424]	@ <variable>.stSynExtraData.stChanOption.u32DynamicFrameStoreAllocEn, <variable>.stSynExtraData.stChanOption.u32DynamicFrameStoreAllocEn
	str	r1, [fp, #-48]	@ tmp185, ChanMem.pstChanFrmBuf
	str	r0, [fp, #-52]	@ <variable>.stSynExtraData.stChanOption.u32DynamicFrameStoreAllocEn, ChanMem.u32DynamicAllocEn
	ldmia	r2, {r0, r1, r2, r3}	@ tmp187,,,,
	stmia	r7, {r0, r1, r2, r3}	@ tmp186,,,,
	ldmia	r8, {r0, r1, r2, r3}	@ tmp189,,,,
	ldr	r8, [fp, #-168]	@, %sfp
	stmia	sl, {r0, r1, r2, r3}	@ tmp188,,,,
	ldmia	r9, {r0, r1, r2, r3}	@ tmp191,,,,
	stmia	r8, {r0, r1, r2, r3}	@,,,,
	ldr	r8, [fp, #-160]	@, %sfp
	ldmia	r8, {r0, r1, r2, r3}	@,,,,
	ldr	r8, [fp, #-172]	@, %sfp
	stmia	r8, {r0, r1, r2, r3}	@,,,,
	ldr	r8, [fp, #-176]	@, %sfp
	ldmia	ip, {r0, r1, r2, r3}	@ tmp199,,,,
	stmia	r8, {r0, r1, r2, r3}	@,,,,
	ldr	r3, [fp, #-164]	@, %sfp
	ldmia	r3, {r0, r1, r2}	@,,,
	str	r6, [ip, #40]	@ tmp212, <variable>.pSmInstArray
	ldr	r8, [fp, #-180]	@, %sfp
	str	r6, [lr, r4, asl #2]	@ tmp212, s_pFspInst
	str	r6, [r5, r4, asl #2]	@ tmp212, s_pstVfmwChan
	stmia	r8, {r0, r1, r2}	@,,,
	mov	r0, r4	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, r4	@, ChanID
	bl	VDMDRV_ResetVDH	@
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinUnLockIRQ	@
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L2393	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r4	@, ChanID
	mov	r1, r7	@, tmp186
	bl	VCTRL_FreeChanResource	@
	mov	r0, r6	@ D.51099, tmp212
.L2381:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L2392:
	ldr	r3, [r5, #80]	@ D.51114, g_SdecFunc.pfun_iMediaSoftDEC_Destroy
	cmp	r3, #0	@ D.51114,
	beq	.L2385	@,
	add	sl, r6, #250880	@, D.51101,
	add	r0, sl, #720	@,,
	blx	r3	@ D.51114
	b	.L2385	@
.L2390:
	movw	r1, #:lower16:.LC327	@,
	movw	r3, #:lower16:.LC329	@,
	movt	r1, #:upper16:.LC327	@,
	movt	r3, #:upper16:.LC329	@,
	mov	r2, #2528	@,
	mov	r0, #0	@,
.L2387:
	bl	dprint_vfmw	@
	bl	VCTRL_EnableAllInt	@
	add	r0, r5, #520	@, tmp223,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.51099,
	b	.L2381	@
.L2391:
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinUnLockIRQ	@
	add	r0, r5, #520	@, tmp223,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.51099,
	b	.L2381	@
.L2388:
	movw	r1, #:lower16:.LC327	@,
	movw	r3, #:lower16:.LC6	@,
	movw	r2, #2510	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC327	@,
	movt	r3, #:upper16:.LC6	@,
	b	.L2387	@
.L2389:
	movw	r1, #:lower16:.LC327	@,
	movw	r3, #:lower16:.LC328	@,
	mov	r0, r6	@, D.51101
	movw	r2, #2517	@,
	movt	r1, #:upper16:.LC327	@,
	movt	r3, #:upper16:.LC328	@,
	b	.L2387	@
.L2394:
	.align	2
.L2393:
	.word	.LANCHOR0+520
	.fnend
	.size	VCTRL_DestroyChanWithOption, .-VCTRL_DestroyChanWithOption
	.align	2
	.global	VCTRL_DestroyChan
	.type	VCTRL_DestroyChan, %function
VCTRL_DestroyChan:
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
	bl	VCTRL_DestroyChanWithOption	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VCTRL_DestroyChan, .-VCTRL_DestroyChan
	.align	2
	.global	VCTRL_CloseVfmw
	.type	VCTRL_CloseVfmw, %function
VCTRL_CloseVfmw:
	.fnstart
.LFB1549:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp185,
	movt	r4, #:upper16:.LANCHOR0	@ tmp185,
	ldr	r3, [r4, #104]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r3, #1	@ s_VfmwCTrl.s32IsVCTRLOpen,
	mvnne	r0, #0	@ D.50230,
	ldmnefd	sp, {r4, r5, fp, sp, pc}	@
	ldr	r0, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r0, #0	@ s_pstVfmwChan,
	beq	.L2400	@,
	mov	r0, #0	@,
	bl	VCTRL_DestroyChanWithOption	@
.L2400:
	ldr	r1, [r4, #4]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r1, #0	@ s_pstVfmwChan,
	beq	.L2401	@,
	mov	r0, #1	@,
	bl	VCTRL_DestroyChanWithOption	@
.L2401:
	ldr	r2, [r4, #8]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r2, #0	@ s_pstVfmwChan,
	beq	.L2402	@,
	mov	r0, #2	@,
	bl	VCTRL_DestroyChanWithOption	@
.L2402:
	ldr	r5, [r4, #12]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r5, #0	@ s_pstVfmwChan,
	beq	.L2403	@,
	mov	r0, #3	@,
	bl	VCTRL_DestroyChanWithOption	@
.L2403:
	ldr	ip, [r4, #16]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	ip, #0	@ s_pstVfmwChan,
	beq	.L2404	@,
	mov	r0, #4	@,
	bl	VCTRL_DestroyChanWithOption	@
.L2404:
	ldr	lr, [r4, #20]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	lr, #0	@ s_pstVfmwChan,
	beq	.L2405	@,
	mov	r0, #5	@,
	bl	VCTRL_DestroyChanWithOption	@
.L2405:
	ldr	r3, [r4, #24]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r3, #0	@ s_pstVfmwChan,
	beq	.L2406	@,
	mov	r0, #6	@,
	bl	VCTRL_DestroyChanWithOption	@
.L2406:
	ldr	r0, [r4, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r0, #0	@ s_pstVfmwChan,
	beq	.L2407	@,
	mov	r0, #7	@,
	bl	VCTRL_DestroyChanWithOption	@
.L2407:
	ldr	r1, [r4, #32]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r1, #0	@ s_pstVfmwChan,
	beq	.L2408	@,
	mov	r0, #8	@,
	bl	VCTRL_DestroyChanWithOption	@
.L2408:
	ldr	r2, [r4, #36]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r2, #0	@ s_pstVfmwChan,
	beq	.L2409	@,
	mov	r0, #9	@,
	bl	VCTRL_DestroyChanWithOption	@
.L2409:
	ldr	r5, [r4, #40]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r5, #0	@ s_pstVfmwChan,
	beq	.L2410	@,
	mov	r0, #10	@,
	bl	VCTRL_DestroyChanWithOption	@
.L2410:
	ldr	ip, [r4, #44]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	ip, #0	@ s_pstVfmwChan,
	beq	.L2411	@,
	mov	r0, #11	@,
	bl	VCTRL_DestroyChanWithOption	@
.L2411:
	ldr	lr, [r4, #48]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	lr, #0	@ s_pstVfmwChan,
	beq	.L2412	@,
	mov	r0, #12	@,
	bl	VCTRL_DestroyChanWithOption	@
.L2412:
	ldr	r3, [r4, #52]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r3, #0	@ s_pstVfmwChan,
	beq	.L2413	@,
	mov	r0, #13	@,
	bl	VCTRL_DestroyChanWithOption	@
.L2413:
	ldr	r0, [r4, #56]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r0, #0	@ s_pstVfmwChan,
	beq	.L2414	@,
	mov	r0, #14	@,
	bl	VCTRL_DestroyChanWithOption	@
.L2414:
	ldr	r1, [r4, #60]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r1, #0	@ s_pstVfmwChan,
	beq	.L2415	@,
	mov	r0, #15	@,
	bl	VCTRL_DestroyChanWithOption	@
.L2415:
	bl	FSP_Exit	@
	mov	r5, #0	@ i,
	mov	r2, #3	@ tmp171,
	str	r2, [r4, #144]	@ tmp171, s_VfmwCTrl.eTaskCommand
	b	.L2417	@
.L2422:
	bl	msleep	@
	ldr	r3, [r4, #140]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	mov	r0, #10	@,
	cmp	r3, #0	@ s_VfmwCTrl.eTaskState,
	beq	.L2416	@,
	bl	msleep	@
	cmp	r5, #50	@ i,
	beq	.L2416	@,
.L2417:
	ldr	ip, [r4, #140]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	add	r5, r5, #1	@ tmp187, i,
	mov	r0, #10	@,
	add	r5, r5, #1	@ i, tmp187,
	cmp	ip, #0	@ s_VfmwCTrl.eTaskState,
	bne	.L2422	@,
.L2416:
	mov	r1, #64	@,
	ldr	r0, .L2423	@,
	mov	r5, #0	@ tmp175,
	str	r5, [r4, #144]	@ tmp175, s_VfmwCTrl.eTaskCommand
	bl	__memzero	@
	ldr	r0, .L2423+4	@,
	bl	CloseDrivers	@
	bl	DBG_DestroyTracer	@
	mov	r0, r5	@ D.50230, tmp175
	str	r5, [r4, #104]	@ tmp175, s_VfmwCTrl.s32IsVCTRLOpen
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L2424:
	.align	2
.L2423:
	.word	.LANCHOR3-1460
	.word	.LANCHOR0+160
	.fnend
	.size	VCTRL_CloseVfmw, .-VCTRL_CloseVfmw
	.align	2
	.global	VCTRL_CreateChanWithOption
	.type	VCTRL_CreateChanWithOption, %function
VCTRL_CreateChanWithOption:
	.fnstart
.LFB1567:
	@ args = 0, pretend = 0, frame = 248
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #260
	sub	sp, sp, #260	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	sub	r7, fp, #72	@ tmp718,,
	sub	sl, fp, #88	@ tmp717,,
	mov	r5, r0	@ eCapLevel, eCapLevel
	mov	r4, r1	@ pChanOption, pChanOption
	mov	r0, r7	@, tmp718
	mov	r1, #16	@,
	sub	r6, fp, #104	@ tmp716,,
	mov	r8, r2	@ flag, flag
	str	r3, [fp, #-264]	@ OneChanMemFlag, %sfp
	bl	__memzero	@
	sub	r0, fp, #232	@,,
	mov	r1, #16	@,
	str	r0, [fp, #-272]	@, %sfp
	mov	r0, sl	@, tmp717
	bl	__memzero	@
	mov	r0, r6	@, tmp716
	mov	r1, #16	@,
	bl	__memzero	@
	sub	r0, fp, #232	@,,
	mov	r1, #112	@,
	bl	__memzero	@
	rsbs	r0, r8, #1	@ tmp192, flag
	movcc	r0, #0	@ tmp192
	cmp	r5, #25	@ eCapLevel,
	movw	r1, #:lower16:4780712	@ tmp732,
	movt	r1, #:upper16:4780712	@ tmp732,
	movw	r2, #:lower16:11613576	@ tmp731,
	moveq	r0, #0	@, tmp192,
	cmp	r5, #26	@ eCapLevel,
	movt	r2, #:upper16:11613576	@ tmp731,
	movw	r3, #:lower16:.LANCHOR4	@ tmp185,
	movne	r2, r1	@ tmp731, tmp732
	movt	r3, #:upper16:.LANCHOR4	@ tmp185,
	cmp	r0, #0	@ tmp192,
	str	r2, [fp, #-252]	@ tmp731, %sfp
	str	r4, [r3, #-3516]	@ pChanOption, pOption
	bne	.L2516	@,
	ldr	r3, [r4, #4]	@ D.50810, <variable>.Purpose
	cmp	r3, #2	@ D.50810,
	bhi	.L2517	@,
	beq	.L2518	@,
	cmp	r3, #1	@ D.50810,
	beq	.L2519	@,
.L2433:
	ldr	lr, [r4, #132]	@ <variable>.u32DynamicFrameStoreAllocEn, <variable>.u32DynamicFrameStoreAllocEn
	mov	r3, r8	@, flag
	mov	r0, r5	@, eCapLevel
	mov	r1, r4	@, pChanOption
	cmp	lr, #1	@ <variable>.u32DynamicFrameStoreAllocEn,
	sub	r2, fp, #56	@,,
	movhi	lr, #0	@ tmp212,
	strhi	lr, [r4, #132]	@ tmp212, <variable>.u32DynamicFrameStoreAllocEn
	bl	VCTRL_GetChanMemSizeWithOption	@
	subs	ip, r0, #0	@ D.50851,
	bne	.L2520	@,
	ldr	r3, [r4, #8]	@ D.50855, <variable>.MemAllocMode
	cmp	r3, #1	@ D.50855,
	beq	.L2521	@,
	cmp	r3, #2	@ D.50855,
	beq	.L2522	@,
	cmp	r3, #3	@ D.50855,
	bne	.L2455	@,
	ldr	lr, [r4, #120]	@ <variable>.MemDetail.ChanMemCtx.VirAddr, <variable>.MemDetail.ChanMemCtx.VirAddr
	cmp	lr, #0	@ <variable>.MemDetail.ChanMemCtx.VirAddr,
	beq	.L2456	@,
	ldr	r2, [r4, #124]	@ <variable>.MemDetail.ChanMemCtx.Length, <variable>.MemDetail.ChanMemCtx.Length
	cmp	r2, #0	@ <variable>.MemDetail.ChanMemCtx.Length,
	bne	.L2457	@,
.L2456:
	movw	r0, #:lower16:.LC335	@,
	mov	r1, #0	@,
	movt	r0, #:upper16:.LC335	@,
	sub	r3, fp, #120	@,,
	ldr	r2, [fp, #-48]	@, DetailMemSize.ChanCtxDetailMem
	mov	r6, #1	@ tmp285,
	str	r6, [sp, #0]	@ tmp285,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L2523	@,
	ldr	r1, [fp, #-116]	@, MemRecord.VirAddr
	ldr	r0, [fp, #-112]	@, MemRecord.PhyAddr
	ldr	r2, [fp, #-108]	@, MemRecord.Length
	str	r6, [fp, #-256]	@ tmp285, %sfp
	bl	MEM_AddMemRecord	@
	ldr	r0, [fp, #-112]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	r3, [fp, #-116]	@ MemRecord.VirAddr, MemRecord.VirAddr
	ldr	r1, [fp, #-108]	@ MemRecord.Length, MemRecord.Length
	str	r0, [fp, #-104]	@ MemRecord.PhyAddr, ChanMemCtx.PhyAddr
	str	r3, [fp, #-100]	@ MemRecord.VirAddr, ChanMemCtx.VirAddr
	str	r1, [fp, #-96]	@ MemRecord.Length, ChanMemCtx.Length
.L2459:
	ldr	ip, [r4, #88]	@ <variable>.MemDetail.ChanMemVdh.VirAddr, <variable>.MemDetail.ChanMemVdh.VirAddr
	cmp	ip, #0	@ <variable>.MemDetail.ChanMemVdh.VirAddr,
	beq	.L2461	@,
	ldr	r1, [r4, #92]	@ <variable>.MemDetail.ChanMemVdh.Length, <variable>.MemDetail.ChanMemVdh.Length
	cmp	r1, #0	@ <variable>.MemDetail.ChanMemVdh.Length,
	beq	.L2461	@,
	add	r3, r4, #84	@ tmp320, pChanOption,
	ldr	lr, [r4, #132]	@ <variable>.u32DynamicFrameStoreAllocEn, <variable>.u32DynamicFrameStoreAllocEn
	ldmia	r3, {r0, r1, r2, r3}	@ tmp320,,,,
	cmp	lr, #1	@ <variable>.u32DynamicFrameStoreAllocEn,
	stmia	r7, {r0, r1, r2, r3}	@ tmp718,,,,
	beq	.L2467	@,
	ldr	r2, [fp, #-64]	@ prephitmp.6134, ChanMemVDH.Length
	ldr	ip, [fp, #-56]	@ prephitmp.6135, DetailMemSize.VdhDetailMem
	cmp	r2, ip	@ prephitmp.6134, prephitmp.6135
	blt	.L2524	@,
.L2468:
	ldr	r0, [fp, #-72]	@, ChanMemVDH.PhyAddr
	mov	ip, #0	@,
	ldr	r1, [fp, #-68]	@, ChanMemVDH.VirAddr
	str	ip, [fp, #-240]	@, %sfp
	bl	MEM_AddMemRecord	@
.L2466:
	ldr	r0, [r4, #104]	@ <variable>.MemDetail.ChanMemScd.VirAddr, <variable>.MemDetail.ChanMemScd.VirAddr
	cmp	r0, #0	@ <variable>.MemDetail.ChanMemScd.VirAddr,
	beq	.L2470	@,
	ldr	r2, [r4, #108]	@ <variable>.MemDetail.ChanMemScd.Length, <variable>.MemDetail.ChanMemScd.Length
	cmp	r2, #0	@ <variable>.MemDetail.ChanMemScd.Length,
	beq	.L2470	@,
	add	r7, r4, #100	@ tmp345, pChanOption,
	ldr	ip, [r4, #4]	@ temp.6159, <variable>.Purpose
	ldmia	r7, {r0, r1, r2, r3}	@ tmp345,,,,
	cmp	ip, #2	@ temp.6159,
	stmia	sl, {r0, r1, r2, r3}	@ tmp717,,,,
	beq	.L2476	@,
	ldr	r1, [fp, #-84]	@ temp.6160, ChanMemScd.VirAddr
	cmp	r1, #0	@ temp.6160,
	beq	.L2477	@,
	ldr	r2, [fp, #-80]	@ prephitmp.6052, ChanMemScd.Length
	ldr	r3, [fp, #-52]	@ DetailMemSize.ScdDetailMem, DetailMemSize.ScdDetailMem
	cmp	r2, r3	@ prephitmp.6052, DetailMemSize.ScdDetailMem
	bge	.L2478	@,
.L2477:
	cmp	ip, #1	@ temp.6159,
	ldrne	r2, [fp, #-80]	@ prephitmp.6052, ChanMemScd.Length
	beq	.L2525	@,
.L2478:
	ldr	r0, [fp, #-88]	@, ChanMemScd.PhyAddr
	mov	r8, #0	@,
	str	r8, [fp, #-260]	@, %sfp
	bl	MEM_AddMemRecord	@
.L2446:
	movw	r7, #:lower16:.LANCHOR0	@ tmp719,
	movt	r7, #:upper16:.LANCHOR0	@ tmp719,
	add	r0, r7, #520	@, tmp719,
	bl	OSAL_SpinLockIRQ	@
	bl	VCTRL_MaskAllInt	@
	ldr	r3, [r7, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r3, #0	@ s_pstVfmwChan,
	beq	.L2515	@,
	ldr	r1, [r7, #4]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r1, #0	@ s_pstVfmwChan,
	moveq	lr, #1	@,
	streq	lr, [fp, #-244]	@, %sfp
	moveq	r6, lr	@ ChanID.6307,
	beq	.L2483	@,
	ldr	ip, [r7, #8]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	ip, #0	@ s_pstVfmwChan,
	moveq	r0, #2	@,
	streq	r0, [fp, #-244]	@, %sfp
	moveq	r6, r0	@ ChanID.6307,
	beq	.L2483	@,
	ldr	r3, [r7, #12]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r3, #0	@ s_pstVfmwChan,
	moveq	r1, #3	@,
	streq	r1, [fp, #-244]	@, %sfp
	moveq	r6, r1	@ ChanID.6307,
	beq	.L2483	@,
	ldr	r2, [r7, #16]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r2, #0	@ s_pstVfmwChan,
	moveq	r2, #4	@,
	streq	r2, [fp, #-244]	@, %sfp
	moveq	r6, r2	@ ChanID.6307,
	beq	.L2483	@,
	ldr	ip, [r7, #20]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	ip, #0	@ s_pstVfmwChan,
	addeq	ip, ip, #5	@,,
	streq	ip, [fp, #-244]	@, %sfp
	moveq	r6, ip	@ ChanID.6307,
	beq	.L2483	@,
	ldr	r3, [r7, #24]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r3, #0	@ s_pstVfmwChan,
	moveq	r8, #6	@,
	streq	r8, [fp, #-244]	@, %sfp
	moveq	r6, r8	@ ChanID.6307,
	beq	.L2483	@,
	ldr	ip, [r7, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	ip, #0	@ s_pstVfmwChan,
	moveq	r9, #7	@,
	streq	r9, [fp, #-244]	@, %sfp
	moveq	r6, r9	@ ChanID.6307,
	beq	.L2483	@,
	ldr	r9, [r7, #32]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r9, #0	@ s_pstVfmwChan,
	moveq	ip, #8	@,
	streq	ip, [fp, #-244]	@, %sfp
	moveq	r6, ip	@ ChanID.6307,
	beq	.L2483	@,
	ldr	r3, [r7, #36]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r3, #0	@ s_pstVfmwChan,
	moveq	lr, #9	@,
	streq	lr, [fp, #-244]	@, %sfp
	moveq	r6, lr	@ ChanID.6307,
	beq	.L2483	@,
	ldr	lr, [r7, #40]	@ s_pstVfmwChan, s_pstVfmwChan
	movw	r6, #:lower16:.LANCHOR0	@ tmp373,
	movt	r6, #:upper16:.LANCHOR0	@ tmp373,
	cmp	lr, #0	@ s_pstVfmwChan,
	moveq	r0, #10	@,
	streq	r0, [fp, #-244]	@, %sfp
	moveq	r6, r0	@ ChanID.6307,
	beq	.L2483	@,
	ldr	r0, [r6, #44]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r0, #0	@ s_pstVfmwChan,
	moveq	r1, #11	@,
	streq	r1, [fp, #-244]	@, %sfp
	moveq	r6, r1	@ ChanID.6307,
	beq	.L2483	@,
	ldr	r1, [r6, #48]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r1, #0	@ s_pstVfmwChan,
	moveq	r2, #12	@,
	streq	r2, [fp, #-244]	@, %sfp
	moveq	r6, r2	@ ChanID.6307,
	beq	.L2483	@,
	ldr	r3, [r6, #52]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r3, #0	@ s_pstVfmwChan,
	beq	.L2526	@,
	ldr	r2, [r6, #56]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r2, #0	@ s_pstVfmwChan,
	moveq	r8, #14	@,
	streq	r8, [fp, #-244]	@, %sfp
	moveq	r6, r8	@ ChanID.6307,
	beq	.L2483	@,
	ldr	ip, [r6, #60]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	ip, #0	@ s_pstVfmwChan,
	beq	.L2498	@,
	mov	r2, #16	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC347	@,
	movt	r1, #:upper16:.LC347	@,
	bl	dprint_vfmw	@
	mvn	r9, #0	@,
	str	r9, [fp, #-244]	@, %sfp
	bl	VCTRL_EnableAllInt	@
	add	r0, r6, #520	@, tmp373,
	bl	OSAL_SpinUnLockIRQ	@
.L2429:
	ldr	r0, [fp, #-244]	@, %sfp
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L2519:
	ldr	r1, [r4, #36]	@ <variable>.s32MaxRefFrameNum, <variable>.s32MaxRefFrameNum
	cmp	r1, #0	@ <variable>.s32MaxRefFrameNum,
	blt	.L2434	@,
	ldr	r0, [r4, #12]	@ <variable>.s32MaxWidth, <variable>.s32MaxWidth
	cmp	r0, #31	@ <variable>.s32MaxWidth,
	ble	.L2434	@,
	ldr	ip, [r4, #16]	@ <variable>.s32MaxHeight, <variable>.s32MaxHeight
	cmp	ip, #31	@ <variable>.s32MaxHeight,
	ble	.L2434	@,
	ldr	lr, [r4, #60]	@ <variable>.s32SCDBufSize, <variable>.s32SCDBufSize
	cmp	lr, #262144	@ <variable>.s32SCDBufSize,
	blt	.L2434	@,
	ldr	r3, [r4, #48]	@ D.50835, <variable>.s32SupportH264
	cmp	r3, #1	@ D.50835,
	beq	.L2527	@,
	cmp	r3, #2	@ D.50835,
	bne	.L2433	@,
	ldr	r2, [r4, #20]	@ <variable>.s32MaxSliceNum, <variable>.s32MaxSliceNum
	cmp	r2, #0	@ <variable>.s32MaxSliceNum,
	ble	.L2434	@,
	ldr	r1, [r4, #24]	@ <variable>.s32MaxVpsNum, <variable>.s32MaxVpsNum
	cmp	r1, #0	@ <variable>.s32MaxVpsNum,
	ble	.L2434	@,
.L2513:
	ldr	r0, [r4, #28]	@ <variable>.s32MaxSpsNum, <variable>.s32MaxSpsNum
	cmp	r0, #0	@ <variable>.s32MaxSpsNum,
	ble	.L2434	@,
	ldr	ip, [r4, #32]	@ <variable>.s32MaxPpsNum, <variable>.s32MaxPpsNum
	cmp	ip, #0	@ <variable>.s32MaxPpsNum,
	bgt	.L2433	@,
.L2434:
	movw	r1, #:lower16:.LC23	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC23	@,
	mvn	r7, #0	@,
	str	r7, [fp, #-244]	@, %sfp
	bl	dprint_vfmw	@
	b	.L2429	@
.L2457:
	add	r3, r4, #116	@ tmp295, pChanOption,
	ldr	lr, [fp, #-48]	@ DetailMemSize.ChanCtxDetailMem, DetailMemSize.ChanCtxDetailMem
	ldmia	r3, {r0, r1, r2, r3}	@ tmp295,,,,
	stmia	r6, {r0, r1, r2, r3}	@ tmp716,,,,
	ldr	r2, [fp, #-96]	@ temp.6121, ChanMemCtx.Length
	cmp	r2, lr	@ temp.6121, DetailMemSize.ChanCtxDetailMem
	blt	.L2528	@,
	ldr	r0, [fp, #-104]	@, ChanMemCtx.PhyAddr
	ldr	r1, [fp, #-100]	@, ChanMemCtx.VirAddr
	str	ip, [fp, #-256]	@ D.50851, %sfp
	bl	MEM_AddMemRecord	@
	b	.L2459	@
.L2461:
	ldr	r0, [r4, #132]	@ <variable>.u32DynamicFrameStoreAllocEn, <variable>.u32DynamicFrameStoreAllocEn
	cmp	r0, #1	@ <variable>.u32DynamicFrameStoreAllocEn,
	beq	.L2463	@,
	mov	lr, #0	@ tmp307,
	movw	r0, #:lower16:.LC337	@,
	mov	r1, lr	@, tmp307
	movt	r0, #:upper16:.LC337	@,
	sub	r3, fp, #120	@,,
	ldr	r2, [fp, #-56]	@, DetailMemSize.VdhDetailMem
	str	lr, [sp, #0]	@ tmp307,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L2529	@,
	ldr	r2, [fp, #-108]	@, MemRecord.Length
	mov	r7, #1	@,
	ldr	r0, [fp, #-112]	@, MemRecord.PhyAddr
	ldr	r1, [fp, #-116]	@, MemRecord.VirAddr
	str	r7, [fp, #-240]	@, %sfp
	bl	MEM_AddMemRecord	@
	ldr	ip, [fp, #-112]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	r2, [fp, #-116]	@ MemRecord.VirAddr, MemRecord.VirAddr
	ldr	r3, [fp, #-108]	@ MemRecord.Length, MemRecord.Length
	str	ip, [fp, #-72]	@ MemRecord.PhyAddr, ChanMemVDH.PhyAddr
	str	r2, [fp, #-68]	@ MemRecord.VirAddr, ChanMemVDH.VirAddr
	str	r3, [fp, #-64]	@ MemRecord.Length, ChanMemVDH.Length
	b	.L2466	@
.L2518:
	ldr	r3, [r4, #68]	@ <variable>.s32SlotWidth, <variable>.s32SlotWidth
	cmp	r3, #0	@ <variable>.s32SlotWidth,
	beq	.L2432	@,
	ldr	r2, [r4, #72]	@ <variable>.s32SlotHeight, <variable>.s32SlotHeight
	cmp	r2, #0	@ <variable>.s32SlotHeight,
	bne	.L2433	@,
.L2432:
	movw	r1, #:lower16:.LC22	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC22	@,
	mvn	r5, #0	@,
	str	r5, [fp, #-244]	@, %sfp
	bl	dprint_vfmw	@
	b	.L2429	@
.L2521:
	add	r3, r4, #84	@ tmp217, pChanOption,
	add	lr, r4, #100	@ tmp219, pChanOption,
	add	ip, r4, #116	@ tmp221, pChanOption,
	ldmia	r3, {r0, r1, r2, r3}	@ tmp217,,,,
	stmia	r7, {r0, r1, r2, r3}	@ tmp718,,,,
	ldmia	lr, {r0, r1, r2, r3}	@ tmp219,,,,
	stmia	sl, {r0, r1, r2, r3}	@ tmp717,,,,
	ldmia	ip, {r0, r1, r2, r3}	@ tmp221,,,,
	stmia	r6, {r0, r1, r2, r3}	@ tmp716,,,,
	ldr	r3, [fp, #-100]	@ ChanMemCtx.VirAddr, ChanMemCtx.VirAddr
	cmp	r3, #0	@ ChanMemCtx.VirAddr,
	beq	.L2439	@,
	ldr	r1, [fp, #-48]	@ DetailMemSize.ChanCtxDetailMem, DetailMemSize.ChanCtxDetailMem
	ldr	r2, [fp, #-96]	@ ChanMemCtx.Length, ChanMemCtx.Length
	cmp	r2, r1	@ ChanMemCtx.Length, DetailMemSize.ChanCtxDetailMem
	blt	.L2439	@,
	ldr	r0, [fp, #-84]	@ ChanMemScd.VirAddr, ChanMemScd.VirAddr
	cmp	r0, #0	@ ChanMemScd.VirAddr,
	beq	.L2441	@,
	ldr	lr, [fp, #-52]	@ DetailMemSize.ScdDetailMem, DetailMemSize.ScdDetailMem
	ldr	ip, [fp, #-80]	@ ChanMemScd.Length, ChanMemScd.Length
	cmp	ip, lr	@ ChanMemScd.Length, DetailMemSize.ScdDetailMem
	blt	.L2441	@,
.L2442:
	ldr	r1, [fp, #-68]	@ D.50876, ChanMemVDH.VirAddr
	cmp	r1, #0	@ D.50876,
	beq	.L2443	@,
	ldr	r2, [fp, #-64]	@ D.50878, ChanMemVDH.Length
	ldr	r0, [fp, #-56]	@ DetailMemSize.VdhDetailMem, DetailMemSize.VdhDetailMem
	cmp	r2, r0	@ D.50878, DetailMemSize.VdhDetailMem
	blt	.L2443	@,
	ldr	r0, [fp, #-72]	@, ChanMemVDH.PhyAddr
	bl	MEM_AddMemRecord	@
	sub	r0, fp, #104
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_AddMemRecord	@
	ldr	r7, [r4, #4]	@ <variable>.Purpose, <variable>.Purpose
	cmp	r7, #2	@ <variable>.Purpose,
	beq	.L2530	@,
	ldr	r0, [fp, #-88]	@, ChanMemScd.PhyAddr
	mov	lr, #0	@,
	ldr	r1, [fp, #-84]	@, ChanMemScd.VirAddr
	mov	ip, #0	@,
	ldr	r2, [fp, #-80]	@, ChanMemScd.Length
	str	lr, [fp, #-256]	@, %sfp
	str	lr, [fp, #-260]	@, %sfp
	str	ip, [fp, #-240]	@, %sfp
	bl	MEM_AddMemRecord	@
	b	.L2446	@
.L2463:
	mov	r1, #0	@ tmp316,
	str	r1, [fp, #-72]	@ tmp316, ChanMemVDH.PhyAddr
	str	r1, [fp, #-68]	@ tmp316, ChanMemVDH.VirAddr
	str	r1, [fp, #-240]	@ tmp316, %sfp
	str	r1, [fp, #-64]	@ tmp316, ChanMemVDH.Length
	b	.L2466	@
.L2441:
	ldr	r0, [r4, #4]	@ <variable>.Purpose, <variable>.Purpose
	cmp	r0, #1	@ <variable>.Purpose,
	bne	.L2442	@,
	movw	r1, #:lower16:.LC333	@,
	movw	r2, #1894	@,
	movt	r1, #:upper16:.LC333	@,
	bl	dprint_vfmw	@
	mvn	r3, #0	@,
	str	r3, [fp, #-244]	@, %sfp
	b	.L2429	@
.L2530:
	mov	r1, #0	@,
	str	r1, [fp, #-256]	@, %sfp
	str	r1, [fp, #-260]	@, %sfp
	str	r1, [fp, #-240]	@, %sfp
	b	.L2446	@
.L2527:
	ldr	r3, [r4, #20]	@ <variable>.s32MaxSliceNum, <variable>.s32MaxSliceNum
	cmp	r3, #0	@ <variable>.s32MaxSliceNum,
	bgt	.L2513	@,
	b	.L2434	@
.L2498:
	mov	r8, #15	@,
	str	r8, [fp, #-244]	@, %sfp
	mov	r6, r8	@ ChanID.6307,
.L2483:
	ldr	lr, [fp, #-252]	@, %sfp
	movw	r9, #:lower16:g_FrameRate	@ tmp388,
	ldr	r0, [fp, #-100]	@ prephitmp.6070, ChanMemCtx.VirAddr
	movt	r9, #:upper16:g_FrameRate	@ tmp388,
	sub	r1, lr, #207872	@ __n,,
	movw	r3, #:lower16:g_LastFrameRate	@ tmp390,
	sub	r1, r1, #8	@ __n, __n,
	movt	r3, #:upper16:g_LastFrameRate	@ tmp390,
	cmp	r1, #0	@ __n,
	mov	sl, #30	@ tmp389,
	movw	r8, #:lower16:.LANCHOR0	@ tmp392,
	str	r0, [r7, r6, asl #2]	@ prephitmp.6070, s_pstVfmwChan
	str	sl, [r3, r6, asl #2]	@ tmp389, g_LastFrameRate
	movt	r8, #:upper16:.LANCHOR0	@ tmp392,
	str	sl, [r9, r6, asl #2]	@ tmp389, g_FrameRate
	beq	.L2499	@,
	bl	__memzero	@
	ldr	r2, [fp, #-244]	@, %sfp
	ldr	r0, [r8, r2, asl #2]	@ prephitmp.6070, s_pstVfmwChan
.L2499:
	add	r9, r0, #1280	@, prephitmp.6070,
	mov	r1, r4	@, pChanOption
	add	r0, r9, #12	@,,
	mov	r2, #164	@,
	bl	memcpy	@
	ldr	ip, [r7, r6, asl #2]	@ tmp402, s_pstVfmwChan
	ldr	r8, [fp, #-252]	@, %sfp
	movw	r3, #:lower16:s_SmIIS	@,
	movt	r3, #:upper16:s_SmIIS	@,
	add	r0, r6, r6, asl #1	@, tmp430, ChanID.6307, ChanID.6307,
	mov	r9, #0	@ tmp409,
	mov	r1, #19	@ tmp417,
	str	r8, [ip, #1232]	@, <variable>.stSynExtraData.s32BasicCtxSize
	add	lr, r3, r0, asl #4	@, tmp432,, tmp430,
	ldr	sl, [r7, r6, asl #2]	@ tmp404, s_pstVfmwChan
	movw	r2, #:lower16:251592	@ tmp420,
	str	r3, [fp, #-248]	@, %sfp
	movt	r2, #:upper16:251592	@ tmp420,
	movw	r8, #:lower16:s_pFspInst	@ tmp435,
	movt	r8, #:upper16:s_pFspInst	@ tmp435,
	str	r5, [sl, #40]	@ eCapLevel, <variable>.eChanCapLevel
	mov	r0, r6	@, ChanID.6307
	ldr	ip, [r7, r6, asl #2]	@ tmp406, s_pstVfmwChan
	mvn	sl, #0	@ tmp727,
	str	r9, [fp, #-292]	@ tmp409, %sfp
	str	r5, [ip, #592]	@ eCapLevel, <variable>.stSynExtraData.eCapLevel
	ldr	r3, [r7, r6, asl #2]	@ tmp408, s_pstVfmwChan
	str	r9, [r3, #1248]	@ tmp409, <variable>.stSynExtraData.s32MoreGapEnable
	ldr	r5, [r7, r6, asl #2]	@ tmp411, s_pstVfmwChan
	str	r6, [r5, #8]	@ ChanID.6307, <variable>.s32ChanID
	ldr	r3, [r4, #0]	@ <variable>.eAdapterType, <variable>.eAdapterType
	ldr	ip, [r7, r6, asl #2]	@ tmp413, s_pstVfmwChan
	str	r3, [ip, #36]	@ <variable>.eAdapterType, <variable>.eAdapterType
	ldr	r5, [r7, r6, asl #2]	@ tmp416, s_pstVfmwChan
	str	r1, [r5, #552]	@ tmp417, <variable>.eVidStd
	ldr	ip, [r7, r6, asl #2]	@ tmp419, s_pstVfmwChan
	str	r1, [ip, r2]	@ tmp417, <variable>.stSynCtx.eVidStd
	ldr	r3, [r7, r6, asl #2]	@ tmp423, s_pstVfmwChan
	str	r9, [r3, #32]	@ tmp409, <variable>.MatchVdhIdPlus1
	ldr	r2, [r7, r6, asl #2]	@ temp.6209, s_pstVfmwChan
	add	ip, r2, #205824	@ tmp437, temp.6209,
	add	r5, r2, #1504	@ tmp434, temp.6209,
	add	r1, ip, #584	@ tmp437, tmp437,
	str	r5, [lr, #40]	@ tmp434, <variable>.pSmInstArray
	str	r1, [r8, r6, asl #2]	@ tmp437, s_pFspInst
	bl	VCTRL_ResetChan	@
	ldr	r2, [fp, #-240]	@, %sfp
	ldr	r3, [r7, r6, asl #2]	@ tmp439, s_pstVfmwChan
	movw	lr, #:lower16:249272	@ tmp446,
	movt	lr, #:upper16:249272	@ tmp446,
	movw	ip, #:lower16:249276	@ tmp450,
	movt	ip, #:upper16:249276	@ tmp450,
	movw	r0, #:lower16:249284	@ tmp454,
	str	r2, [r3, #268]	@, <variable>.s32SelfAllocChanMem_vdh
	movt	r0, #:upper16:249284	@ tmp454,
	ldr	r5, [fp, #-260]	@, %sfp
	movw	r1, #:lower16:249288	@ tmp458,
	ldr	r8, [r7, r6, asl #2]	@, s_pstVfmwChan
	movt	r1, #:upper16:249288	@ tmp458,
	movw	r2, #:lower16:249280	@ tmp462,
	movt	r2, #:upper16:249280	@ tmp462,
	movw	r3, #:lower16:249296	@ tmp466,
	movt	r3, #:upper16:249296	@ tmp466,
	str	r5, [r8, #272]	@, <variable>.s32SelfAllocChanMem_scd
	movw	r5, #:lower16:251556	@,
	ldr	r8, [fp, #-256]	@, %sfp
	movt	r5, #:upper16:251556	@,
	str	r5, [fp, #-240]	@, %sfp
	ldr	r5, [r7, r6, asl #2]	@, s_pstVfmwChan
	str	r8, [r5, #276]	@, <variable>.s32SelfAllocChanMem_ctx
	ldr	r5, [r7, r6, asl #2]	@ tmp445, s_pstVfmwChan
	str	r9, [r5, lr]	@ tmp409, <variable>.s32CurFsSize
	ldr	r8, [r7, r6, asl #2]	@ tmp449, s_pstVfmwChan
	str	r9, [r8, ip]	@ tmp409, <variable>.s32RefNum
	ldr	r5, [r7, r6, asl #2]	@ tmp453, s_pstVfmwChan
	str	r9, [r5, r0]	@ tmp409, <variable>.s32PreAllocFrmNum
	ldr	lr, [r7, r6, asl #2]	@ tmp457, s_pstVfmwChan
	str	r9, [lr, r1]	@ tmp409, <variable>.s32MMZFrmNum
	ldr	r1, [r7, r6, asl #2]	@ tmp461, s_pstVfmwChan
	str	r9, [r1, r2]	@ tmp409, <variable>.s32NeededFrameNum
	ldr	r8, [r7, r6, asl #2]	@ tmp465, s_pstVfmwChan
	str	r9, [r8, r3]	@ tmp409, <variable>.s32RefNumChanged
	ldr	ip, [fp, #-240]	@, %sfp
	ldr	r0, [r7, r6, asl #2]	@ tmp469, s_pstVfmwChan
	ldr	r5, [r4, #132]	@ <variable>.u32DynamicFrameStoreAllocEn, <variable>.u32DynamicFrameStoreAllocEn
	str	r5, [r0, ip]	@ <variable>.u32DynamicFrameStoreAllocEn, <variable>.u32DynamicFrameStoreAllocEn
	ldr	r8, [fp, #-292]	@ u32i, %sfp
.L2500:
	add	r2, r8, r8, asl #2	@, tmp477, u32i, u32i,
	ldr	ip, [r7, r6, asl #2]	@ tmp473, s_pstVfmwChan
	add	r5, r8, #1	@ tmp730, u32i,
	mov	r1, #16	@,
	mov	r3, r2, asl #2	@ tmp478, tmp477,
	add	r8, r5, #1	@ u32i, tmp730,
	add	lr, r3, ip	@ tmp479, tmp478, tmp473
	add	r0, r3, #248832	@ tmp488, tmp478,
	add	r9, lr, #248832	@ tmp480, tmp479,
	add	ip, r0, #472	@ tmp488, tmp488,
	add	r2, r9, #488	@ tmp480, tmp480,
	movw	r9, #:lower16:.LANCHOR0	@ tmp734,
	movt	r9, #:upper16:.LANCHOR0	@ tmp734,
	strb	sl, [r2, #0]	@ tmp727, <variable>.u8BufferNodeState
	ldr	lr, [r7, r6, asl #2]	@ tmp491, s_pstVfmwChan
	add	r0, ip, lr	@, tmp488, tmp491
	bl	__memzero	@
	add	r3, r5, r5, asl #2	@, tmp738, tmp730, tmp730,
	ldr	r0, [r7, r6, asl #2]	@ tmp735, s_pstVfmwChan
	mov	r1, #16	@,
	mov	r5, r3, asl #2	@ tmp739, tmp738,
	add	r2, r5, r0	@ tmp740, tmp739, tmp735
	add	ip, r5, #248832	@ tmp744, tmp739,
	add	r3, r2, #248832	@ tmp741, tmp740,
	add	r5, ip, #472	@ tmp744, tmp744,
	add	r0, r3, #488	@ tmp741, tmp741,
	strb	sl, [r0, #0]	@ tmp727, <variable>.u8BufferNodeState
	ldr	r2, [r7, r6, asl #2]	@ tmp745, s_pstVfmwChan
	add	r0, r5, r2	@, tmp744, tmp745
	bl	__memzero	@
	cmp	r8, #64	@ u32i,
	bne	.L2500	@,
	ldr	ip, [r9, r6, asl #2]	@ tmp495, s_pstVfmwChan
	mov	r1, #948	@,
	add	r5, r9, r6, asl #2	@, tmp503, tmp734, ChanID.6307,
	mov	r8, #0	@ tmp505,
	add	lr, ip, #249856	@, tmp495,
	add	r0, lr, #728	@,,
	bl	__memzero	@
	ldr	r3, [r9, r6, asl #2]	@ tmp499, s_pstVfmwChan
	mov	r1, #24	@,
	add	r0, r3, #250880	@, tmp499,
	add	r0, r0, #652	@,,
	bl	__memzero	@
	str	r8, [r5, #532]	@ tmp505, s_ChanControlState
	ldr	r1, [r4, #8]	@ <variable>.MemAllocMode, <variable>.MemAllocMode
	cmp	r1, #3	@ <variable>.MemAllocMode,
	beq	.L2531	@,
	ldr	r2, [fp, #-244]	@, %sfp
	ldr	r3, [r9, r2, asl #2]	@ prephitmp.6048, s_pstVfmwChan
.L2502:
	mov	r1, #0	@ tmp533,
	str	r1, [r3, #200]	@ tmp533, <variable>.s32OneChanMem
.L2503:
	ldr	r0, [r7, r6, asl #2]	@ tmp535, s_pstVfmwChan
	movw	lr, #:lower16:249264	@ tmp569,
	ldr	r2, [fp, #-72]	@ ChanMemVDH.PhyAddr, ChanMemVDH.PhyAddr
	movt	lr, #:upper16:249264	@ tmp569,
	mov	r1, #0	@ tmp570,
	movw	r3, #:lower16:.LANCHOR0	@ tmp534,
	movt	r3, #:upper16:.LANCHOR0	@ tmp534,
	str	r2, [r0, #228]	@ ChanMemVDH.PhyAddr, <variable>.stChanMem_vdh.PhyAddr
	ldr	ip, [fp, #-68]	@ ChanMemVDH.VirAddr, ChanMemVDH.VirAddr
	ldr	r5, [r7, r6, asl #2]	@ tmp538, s_pstVfmwChan
	str	ip, [r5, #224]	@ ChanMemVDH.VirAddr, <variable>.stChanMem_vdh.VirAddr
	ldr	r8, [fp, #-64]	@ ChanMemVDH.Length, ChanMemVDH.Length
	ldr	r2, [r7, r6, asl #2]	@ tmp541, s_pstVfmwChan
	str	r8, [r2, #232]	@ ChanMemVDH.Length, <variable>.stChanMem_vdh.Length
	ldr	r0, [fp, #-88]	@ ChanMemScd.PhyAddr, ChanMemScd.PhyAddr
	ldr	r5, [r7, r6, asl #2]	@ tmp544, s_pstVfmwChan
	str	r0, [r5, #244]	@ ChanMemScd.PhyAddr, <variable>.stChanMem_scd.PhyAddr
	ldr	ip, [fp, #-84]	@ ChanMemScd.VirAddr, ChanMemScd.VirAddr
	ldr	r8, [r7, r6, asl #2]	@ tmp547, s_pstVfmwChan
	str	ip, [r8, #240]	@ ChanMemScd.VirAddr, <variable>.stChanMem_scd.VirAddr
	ldr	r2, [fp, #-80]	@ ChanMemScd.Length, ChanMemScd.Length
	ldr	r0, [r7, r6, asl #2]	@ tmp550, s_pstVfmwChan
	str	r2, [r0, #248]	@ ChanMemScd.Length, <variable>.stChanMem_scd.Length
	ldr	r5, [fp, #-104]	@ ChanMemCtx.PhyAddr, ChanMemCtx.PhyAddr
	ldr	r8, [r7, r6, asl #2]	@ tmp553, s_pstVfmwChan
	str	r5, [r8, #260]	@ ChanMemCtx.PhyAddr, <variable>.stChanMem_ctx.PhyAddr
	ldr	ip, [fp, #-100]	@ ChanMemCtx.VirAddr, ChanMemCtx.VirAddr
	ldr	r2, [r7, r6, asl #2]	@ tmp556, s_pstVfmwChan
	str	ip, [r2, #256]	@ ChanMemCtx.VirAddr, <variable>.stChanMem_ctx.VirAddr
	ldr	r0, [fp, #-96]	@ ChanMemCtx.Length, ChanMemCtx.Length
	ldr	r5, [r7, r6, asl #2]	@ tmp559, s_pstVfmwChan
	str	r0, [r5, #264]	@ ChanMemCtx.Length, <variable>.stChanMem_ctx.Length
	ldr	r8, [fp, #-72]	@ ChanMemVDH.PhyAddr, ChanMemVDH.PhyAddr
	ldr	r2, [r7, r6, asl #2]	@ tmp562, s_pstVfmwChan
	str	r8, [r2, #300]	@ ChanMemVDH.PhyAddr, <variable>.s32SdecMemAddr
	ldr	ip, [fp, #-64]	@ ChanMemVDH.Length, ChanMemVDH.Length
	ldr	r0, [r7, r6, asl #2]	@ tmp565, s_pstVfmwChan
	str	ip, [r0, #304]	@ ChanMemVDH.Length, <variable>.s32SdecMemSize
	ldr	r5, [r7, r6, asl #2]	@ tmp568, s_pstVfmwChan
	str	r1, [r5, lr]	@ tmp570, <variable>.FspInst.eFspPartitionState
	ldr	r2, [r7, r6, asl #2]	@ temp.6259, s_pstVfmwChan
	ldr	r8, [r2, #1424]	@ <variable>.stSynExtraData.stChanOption.u32DynamicFrameStoreAllocEn, <variable>.stSynExtraData.stChanOption.u32DynamicFrameStoreAllocEn
	cmp	r8, #1	@ <variable>.stSynExtraData.stChanOption.u32DynamicFrameStoreAllocEn,
	beq	.L2504	@,
	ldr	r5, [fp, #-72]	@ ChanMemVDH.PhyAddr, ChanMemVDH.PhyAddr
	ldr	r1, [r2, #292]	@ <variable>.s32OffLineDNRMemSize, <variable>.s32OffLineDNRMemSize
	ldr	r8, [r2, #4]	@ <variable>.s32BtlMemSize, <variable>.s32BtlMemSize
	add	r0, r1, r5	@ tmp573, <variable>.s32OffLineDNRMemSize, ChanMemVDH.PhyAddr
	add	lr, r0, r8	@ tmp577, tmp573, <variable>.s32BtlMemSize
	str	lr, [r2, #280]	@ tmp577, <variable>.s32VdmChanMemAddr
	ldr	lr, [r3, r6, asl #2]	@ temp.6262, s_pstVfmwChan
	ldr	ip, [fp, #-64]	@ ChanMemVDH.Length, ChanMemVDH.Length
	ldr	r1, [lr, #292]	@ <variable>.s32OffLineDNRMemSize, <variable>.s32OffLineDNRMemSize
	ldr	r8, [lr, #4]	@ <variable>.s32BtlMemSize, <variable>.s32BtlMemSize
	rsb	r5, r1, ip	@ tmp579, <variable>.s32OffLineDNRMemSize, ChanMemVDH.Length
	rsb	r2, r8, r5	@ tmp582, <variable>.s32BtlMemSize, tmp579
	sub	r0, r2, #16	@ tmp584, tmp582,
	str	r0, [lr, #284]	@ tmp584, <variable>.s32VdmChanMemSize
	ldr	ip, [r3, r6, asl #2]	@ temp.6265, s_pstVfmwChan
	ldr	r1, [ip, #284]	@ <variable>.s32VdmChanMemSize, <variable>.s32VdmChanMemSize
	sub	r5, r1, #14848	@ tmp588, <variable>.s32VdmChanMemSize,
	str	r5, [ip, #284]	@ tmp588, <variable>.s32VdmChanMemSize
	ldr	r2, [r3, r6, asl #2]	@ temp.6266, s_pstVfmwChan
	ldr	r8, [r2, #284]	@ <variable>.s32VdmChanMemSize, <variable>.s32VdmChanMemSize
	sub	lr, r8, #32768	@ tmp592, <variable>.s32VdmChanMemSize,
	str	lr, [r2, #284]	@ tmp592, <variable>.s32VdmChanMemSize
	ldr	r8, [r3, r6, asl #2]	@ temp.6268, s_pstVfmwChan
	ldr	r0, [r8, #280]	@ <variable>.s32VdmChanMemAddr, <variable>.s32VdmChanMemAddr
	ldr	r1, [r8, #284]	@ <variable>.s32VdmChanMemSize, <variable>.s32VdmChanMemSize
	add	ip, r0, r1	@ tmp594, <variable>.s32VdmChanMemAddr, <variable>.s32VdmChanMemSize
	mov	r1, #14848	@ tmp601,
	add	r5, ip, #15	@ tmp597, tmp594,
	bic	lr, r5, #15	@ tmp598, tmp597,
	str	lr, [r8, #312]	@ tmp598, <variable>.s32BpdChanMemAddr
	ldr	r2, [r3, r6, asl #2]	@ tmp600, s_pstVfmwChan
	str	r1, [r2, #316]	@ tmp601, <variable>.s32BpdChanMemSize
	ldr	r2, [r3, r6, asl #2]	@ temp.6271, s_pstVfmwChan
	ldr	ip, [r2, #280]	@ <variable>.s32VdmChanMemAddr, <variable>.s32VdmChanMemAddr
	ldr	r0, [r2, #284]	@ <variable>.s32VdmChanMemSize, <variable>.s32VdmChanMemSize
	ldr	lr, [r2, #316]	@ <variable>.s32BpdChanMemSize, <variable>.s32BpdChanMemSize
	add	r5, ip, r0	@ tmp603, <variable>.s32VdmChanMemAddr, <variable>.s32VdmChanMemSize
	add	r8, r5, #15	@ tmp606, tmp603,
	mov	r5, #32768	@ tmp612,
	add	r1, r8, lr	@ tmp607, tmp606, <variable>.s32BpdChanMemSize
	bic	r0, r1, #15	@ tmp609, tmp607,
	str	r0, [r2, #320]	@ tmp609, <variable>.s32Vp8SegIdChanMemAddr
	ldr	ip, [r3, r6, asl #2]	@ tmp611, s_pstVfmwChan
	str	r5, [ip, #324]	@ tmp612, <variable>.s32Vp8SegIdChanMemSize
	ldr	lr, [fp, #-88]	@ ChanMemScd.PhyAddr, ChanMemScd.PhyAddr
	ldr	r8, [r3, r6, asl #2]	@ tmp614, s_pstVfmwChan
	str	lr, [r8, #296]	@ ChanMemScd.PhyAddr, <variable>.s32ScdChanMemAddr
	ldr	r1, [fp, #-80]	@ ChanMemScd.Length, ChanMemScd.Length
	ldr	r3, [r3, r6, asl #2]	@ tmp617, s_pstVfmwChan
	str	r1, [r3, #308]	@ ChanMemScd.Length, <variable>.s32ScdChanMemSize
.L2505:
	ldr	r5, [r7, r6, asl #2]	@ tmp659, s_pstVfmwChan
	movw	r8, #:lower16:206408	@ tmp666,
	movt	r8, #:upper16:206408	@ tmp666,
	movw	r3, #:lower16:192368	@ tmp670,
	movt	r3, #:upper16:192368	@ tmp670,
	mov	r0, r6	@, ChanID.6307
	str	r6, [r5, #8]	@ ChanID.6307, <variable>.s32ChanID
	movw	r5, #:lower16:.LANCHOR0	@ tmp658,
	ldr	ip, [r7, r6, asl #2]	@ tmp661, s_pstVfmwChan
	movt	r5, #:upper16:.LANCHOR0	@ tmp658,
	str	r6, [ip, #188]	@ ChanID.6307, <variable>.s32SCDInstID
	ldr	r2, [r7, r6, asl #2]	@ tmp663, s_pstVfmwChan
	str	r6, [r2, #192]	@ ChanID.6307, <variable>.s32VDMInstID
	ldr	lr, [r7, r6, asl #2]	@ tmp665, s_pstVfmwChan
	strb	r6, [lr, r8]	@ ChanID.6307, <variable>.FspInst.s32InstID
	ldr	r1, [r7, r6, asl #2]	@ tmp669, s_pstVfmwChan
	str	r6, [r1, r3]	@ ChanID.6307, <variable>.SmInstArray.InstID
	bl	FSP_EnableInstance	@
	cmp	r0, #0	@,
	bne	.L2532	@,
	mov	r0, r6	@, ChanID.6307
	mov	r7, #1	@ tmp680,
	bl	SM_ClearInst	@
	ldr	r2, [r5, r6, asl #2]	@ tmp673, s_pstVfmwChan
	ldr	r8, [fp, #-252]	@, %sfp
	mov	r0, r6	@, ChanID.6307
	ldr	r1, [r2, #256]	@ <variable>.stChanMem_ctx.VirAddr, <variable>.stChanMem_ctx.VirAddr
	sub	ip, r8, #205824	@ tmp674,,
	sub	r3, ip, #8	@ tmp674, tmp674,
	add	r1, r3, r1	@, tmp674, <variable>.stChanMem_ctx.VirAddr
	bl	OpenUsdPool_WithMem	@
	ldr	ip, [r5, r6, asl #2]	@ tmp679, s_pstVfmwChan
	mov	r0, r6	@, ChanID.6307
	str	r7, [ip, #12]	@ tmp680, <variable>.s32IsOpen
	bl	VDMDRV_ClearChanIsDec	@
	bl	VCTRL_EnableAllInt	@
	bl	VDMDRV_ParamInit	@
	add	r0, r5, #520	@, tmp658,
	bl	OSAL_SpinUnLockIRQ	@
	str	r7, [r4, #52]	@ tmp680, <variable>.s32ScdLowdlyEnable
	mov	r0, r6	@, ChanID.6307
	bl	SM_AllocDSPCtxMem	@
	b	.L2429	@
.L2470:
	ldr	r1, [r4, #4]	@ <variable>.Purpose, <variable>.Purpose
	cmp	r1, #2	@ <variable>.Purpose,
	beq	.L2472	@,
	mov	lr, #0	@ tmp332,
	movw	r0, #:lower16:.LC339	@,
	mov	r1, lr	@, tmp332
	movt	r0, #:upper16:.LC339	@,
	sub	r3, fp, #120	@,,
	ldr	r2, [fp, #-52]	@, DetailMemSize.ScdDetailMem
	str	lr, [sp, #0]	@ tmp332,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L2533	@,
	ldr	r0, [fp, #-112]	@, MemRecord.PhyAddr
	mov	r7, #1	@,
	ldr	r1, [fp, #-116]	@, MemRecord.VirAddr
	str	r7, [fp, #-260]	@, %sfp
.L2514:
	ldr	r2, [fp, #-108]	@, MemRecord.Length
	bl	MEM_AddMemRecord	@
	ldr	r3, [fp, #-112]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	r1, [fp, #-116]	@ MemRecord.VirAddr, MemRecord.VirAddr
	ldr	r2, [fp, #-108]	@ MemRecord.Length, MemRecord.Length
	str	r3, [fp, #-88]	@ MemRecord.PhyAddr, ChanMemScd.PhyAddr
	str	r1, [fp, #-84]	@ MemRecord.VirAddr, ChanMemScd.VirAddr
	str	r2, [fp, #-80]	@ MemRecord.Length, ChanMemScd.Length
	b	.L2446	@
.L2504:
	str	r1, [r2, #280]	@ tmp570, <variable>.s32VdmChanMemAddr
	ldr	ip, [r3, r6, asl #2]	@ tmp621, s_pstVfmwChan
	str	r1, [ip, #284]	@ tmp570, <variable>.s32VdmChanMemSize
	ldr	r0, [fp, #-88]	@ ChanMemScd.PhyAddr, ChanMemScd.PhyAddr
	ldr	r2, [r3, r6, asl #2]	@ tmp624, s_pstVfmwChan
	str	r0, [r2, #296]	@ ChanMemScd.PhyAddr, <variable>.s32ScdChanMemAddr
	ldr	r8, [r3, r6, asl #2]	@ tmp627, s_pstVfmwChan
	ldr	r5, [fp, #-80]	@ ChanMemScd.Length, ChanMemScd.Length
	sub	lr, r5, #16	@ tmp629, ChanMemScd.Length,
	str	lr, [r8, #308]	@ tmp629, <variable>.s32ScdChanMemSize
	ldr	ip, [r3, r6, asl #2]	@ temp.6285, s_pstVfmwChan
	ldr	r1, [ip, #308]	@ <variable>.s32ScdChanMemSize, <variable>.s32ScdChanMemSize
	sub	r0, r1, #14848	@ tmp633, <variable>.s32ScdChanMemSize,
	str	r0, [ip, #308]	@ tmp633, <variable>.s32ScdChanMemSize
	ldr	r5, [r3, r6, asl #2]	@ temp.6286, s_pstVfmwChan
	ldr	r2, [r5, #308]	@ <variable>.s32ScdChanMemSize, <variable>.s32ScdChanMemSize
	sub	r8, r2, #32768	@ tmp637, <variable>.s32ScdChanMemSize,
	str	r8, [r5, #308]	@ tmp637, <variable>.s32ScdChanMemSize
	ldr	r2, [r3, r6, asl #2]	@ temp.6288, s_pstVfmwChan
	ldr	lr, [r2, #296]	@ <variable>.s32ScdChanMemAddr, <variable>.s32ScdChanMemAddr
	ldr	ip, [r2, #308]	@ <variable>.s32ScdChanMemSize, <variable>.s32ScdChanMemSize
	add	r1, lr, ip	@ tmp639, <variable>.s32ScdChanMemAddr, <variable>.s32ScdChanMemSize
	mov	lr, #14848	@ tmp646,
	add	r0, r1, #15	@ tmp642, tmp639,
	bic	r5, r0, #15	@ tmp643, tmp642,
	str	r5, [r2, #312]	@ tmp643, <variable>.s32BpdChanMemAddr
	ldr	r8, [r3, r6, asl #2]	@ tmp645, s_pstVfmwChan
	str	lr, [r8, #316]	@ tmp646, <variable>.s32BpdChanMemSize
	ldr	lr, [r3, r6, asl #2]	@ temp.6291, s_pstVfmwChan
	ldr	ip, [lr, #296]	@ <variable>.s32ScdChanMemAddr, <variable>.s32ScdChanMemAddr
	ldr	r2, [lr, #308]	@ <variable>.s32ScdChanMemSize, <variable>.s32ScdChanMemSize
	ldr	r5, [lr, #316]	@ <variable>.s32BpdChanMemSize, <variable>.s32BpdChanMemSize
	add	r1, ip, r2	@ tmp648, <variable>.s32ScdChanMemAddr, <variable>.s32ScdChanMemSize
	mov	r2, #32768	@ tmp657,
	add	r0, r1, #15	@ tmp651, tmp648,
	add	r8, r0, r5	@ tmp652, tmp651, <variable>.s32BpdChanMemSize
	bic	ip, r8, #15	@ tmp654, tmp652,
	str	ip, [lr, #320]	@ tmp654, <variable>.s32Vp8SegIdChanMemAddr
	ldr	r3, [r3, r6, asl #2]	@ tmp656, s_pstVfmwChan
	str	r2, [r3, #324]	@ tmp657, <variable>.s32Vp8SegIdChanMemSize
	b	.L2505	@
.L2531:
	ldr	r3, [r9, r6, asl #2]	@ prephitmp.6048, s_pstVfmwChan
	ldr	r2, [r3, #276]	@ <variable>.s32SelfAllocChanMem_ctx, <variable>.s32SelfAllocChanMem_ctx
	cmp	r2, #1	@ <variable>.s32SelfAllocChanMem_ctx,
	bne	.L2502	@,
	ldr	r1, [r3, #268]	@ <variable>.s32SelfAllocChanMem_vdh, <variable>.s32SelfAllocChanMem_vdh
	cmp	r1, #0	@ <variable>.s32SelfAllocChanMem_vdh,
	bne	.L2502	@,
	ldr	r8, [r3, #272]	@ <variable>.s32SelfAllocChanMem_scd, <variable>.s32SelfAllocChanMem_scd
	cmp	r8, #0	@ <variable>.s32SelfAllocChanMem_scd,
	bne	.L2502	@,
	ldr	r1, [fp, #-88]	@ temp.6226, ChanMemScd.PhyAddr
	ldr	ip, [fp, #-80]	@ ChanMemScd.Length, ChanMemScd.Length
	ldr	r5, [fp, #-72]	@ ChanMemVDH.PhyAddr, ChanMemVDH.PhyAddr
	ldr	lr, [fp, #-264]	@, %sfp
	add	r0, r1, ip	@ tmp513, temp.6226, ChanMemScd.Length
	cmp	lr, #1	@,
	cmpeq	r0, r5	@, tmp513, ChanMemVDH.PhyAddr
	bne	.L2502	@,
	str	r1, [r3, #212]	@ temp.6226, <variable>.stChanMem.PhyAddr
	ldr	lr, [fp, #-84]	@ ChanMemScd.VirAddr, ChanMemScd.VirAddr
	ldr	ip, [r9, r6, asl #2]	@ tmp522, s_pstVfmwChan
	str	lr, [ip, #208]	@ ChanMemScd.VirAddr, <variable>.stChanMem.VirAddr
	ldr	r8, [r9, r6, asl #2]	@ tmp525, s_pstVfmwChan
	ldr	r5, [fp, #-80]	@ ChanMemScd.Length, ChanMemScd.Length
	ldr	r0, [fp, #-64]	@ ChanMemVDH.Length, ChanMemVDH.Length
	add	r1, r0, r5	@ tmp528, ChanMemVDH.Length, ChanMemScd.Length
	str	r1, [r8, #216]	@ tmp528, <variable>.stChanMem.Length
	ldr	r3, [r9, r6, asl #2]	@ tmp530, s_pstVfmwChan
	str	r2, [r3, #200]	@ <variable>.s32SelfAllocChanMem_ctx, <variable>.s32OneChanMem
	b	.L2503	@
.L2472:
	ldr	ip, [fp, #-72]	@ ChanMemVDH.PhyAddr, ChanMemVDH.PhyAddr
	mov	r0, #0	@ tmp343,
	ldr	lr, [fp, #-68]	@ ChanMemVDH.VirAddr, ChanMemVDH.VirAddr
	str	r0, [fp, #-260]	@ tmp343, %sfp
	str	r0, [fp, #-80]	@ tmp343, ChanMemScd.Length
	str	ip, [fp, #-88]	@ ChanMemVDH.PhyAddr, ChanMemScd.PhyAddr
	str	lr, [fp, #-84]	@ ChanMemVDH.VirAddr, ChanMemScd.VirAddr
	b	.L2446	@
.L2522:
	sub	r8, fp, #120	@ tmp715,,
	mov	r1, ip	@, D.50851
	movw	r0, #:lower16:.LC335	@,
	ldr	r2, [fp, #-48]	@, DetailMemSize.ChanCtxDetailMem
	movt	r0, #:upper16:.LC335	@,
	mov	r3, r8	@, tmp715
	mov	r7, #1	@ tmp247,
	str	r7, [sp, #0]	@ tmp247,
	bl	MEM_AllocMemBlock	@
	subs	r6, r0, #0	@ D.50890,
	bne	.L2534	@,
	ldr	r1, [fp, #-116]	@, MemRecord.VirAddr
	ldr	r2, [fp, #-108]	@, MemRecord.Length
	ldr	r0, [fp, #-112]	@, MemRecord.PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	r1, [r4, #132]	@ <variable>.u32DynamicFrameStoreAllocEn, <variable>.u32DynamicFrameStoreAllocEn
	ldr	r2, [fp, #-112]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	r0, [fp, #-116]	@ MemRecord.VirAddr, MemRecord.VirAddr
	cmp	r1, #1	@ <variable>.u32DynamicFrameStoreAllocEn,
	ldr	r3, [fp, #-108]	@ MemRecord.Length, MemRecord.Length
	str	r2, [fp, #-104]	@ MemRecord.PhyAddr, ChanMemCtx.PhyAddr
	str	r0, [fp, #-100]	@ MemRecord.VirAddr, ChanMemCtx.VirAddr
	str	r3, [fp, #-96]	@ MemRecord.Length, ChanMemCtx.Length
	beq	.L2449	@,
	mov	r1, r6	@, D.50890
	movw	r0, #:lower16:.LC337	@,
	ldr	r2, [fp, #-56]	@, DetailMemSize.VdhDetailMem
	movt	r0, #:upper16:.LC337	@,
	mov	r3, r8	@, tmp715
	str	r6, [sp, #0]	@ D.50890,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L2535	@,
	ldr	r0, [fp, #-112]	@, MemRecord.PhyAddr
	ldr	r1, [fp, #-116]	@, MemRecord.VirAddr
	ldr	r2, [fp, #-108]	@, MemRecord.Length
	str	r7, [fp, #-240]	@ tmp247, %sfp
	bl	MEM_AddMemRecord	@
	ldr	r0, [fp, #-112]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	r3, [fp, #-116]	@ MemRecord.VirAddr, MemRecord.VirAddr
	ldr	ip, [fp, #-108]	@ MemRecord.Length, MemRecord.Length
	str	r0, [fp, #-72]	@ MemRecord.PhyAddr, ChanMemVDH.PhyAddr
	str	r3, [fp, #-68]	@ MemRecord.VirAddr, ChanMemVDH.VirAddr
	str	ip, [fp, #-64]	@ MemRecord.Length, ChanMemVDH.Length
.L2451:
	ldr	lr, [r4, #4]	@ <variable>.Purpose, <variable>.Purpose
	cmp	lr, #2	@ <variable>.Purpose,
	bne	.L2536	@,
	ldr	r1, [fp, #-72]	@ ChanMemVDH.PhyAddr, ChanMemVDH.PhyAddr
	mov	r0, #0	@ tmp279,
	ldr	r2, [fp, #-68]	@ ChanMemVDH.VirAddr, ChanMemVDH.VirAddr
	mov	r3, #1	@,
	str	r0, [fp, #-260]	@ tmp279, %sfp
	str	r0, [fp, #-80]	@ tmp279, ChanMemScd.Length
	str	r3, [fp, #-256]	@, %sfp
	str	r1, [fp, #-88]	@ ChanMemVDH.PhyAddr, ChanMemScd.PhyAddr
	str	r2, [fp, #-84]	@ ChanMemVDH.VirAddr, ChanMemScd.VirAddr
	b	.L2446	@
.L2476:
	mov	r2, #0	@,
	str	r2, [fp, #-260]	@, %sfp
	b	.L2446	@
.L2526:
	add	r3, r3, #13	@,,
.L2515:
	str	r3, [fp, #-244]	@, %sfp
	mov	r6, r3	@ ChanID.6307,
	b	.L2483	@
.L2449:
	str	r6, [fp, #-240]	@ D.50890, %sfp
	str	r6, [fp, #-72]	@ D.50890, ChanMemVDH.PhyAddr
	str	r6, [fp, #-68]	@ D.50890, ChanMemVDH.VirAddr
	str	r6, [fp, #-64]	@ D.50890, ChanMemVDH.Length
	b	.L2451	@
.L2467:
	ldr	r2, [fp, #-64]	@ prephitmp.6134, ChanMemVDH.Length
	b	.L2468	@
.L2536:
	mov	ip, #0	@ tmp271,
	mov	r3, r8	@, tmp715
	mov	r1, ip	@, tmp271
	movw	r0, #:lower16:.LC339	@,
	ldr	r2, [fp, #-52]	@, DetailMemSize.ScdDetailMem
	movt	r0, #:upper16:.LC339	@,
	str	ip, [sp, #0]	@ tmp271,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L2537	@,
	mov	r7, #1	@,
	ldr	r0, [fp, #-112]	@, MemRecord.PhyAddr
	str	r7, [fp, #-256]	@, %sfp
	ldr	r1, [fp, #-116]	@, MemRecord.VirAddr
	str	r7, [fp, #-260]	@, %sfp
	b	.L2514	@
.L2532:
.L2507:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC348	@,
	movt	r1, #:upper16:.LC348	@,
	mvn	lr, #0	@,
	str	lr, [fp, #-244]	@, %sfp
	bl	dprint_vfmw	@
	mov	r0, r6	@, ChanID.6307
	sub	r8, fp, #216	@,,
	bl	VCTRL_UnInstallChan	@
	ldr	r3, [r5, r6, asl #2]	@ temp.6302, s_pstVfmwChan
	str	r8, [fp, #-288]	@, %sfp
	sub	r7, fp, #200	@,,
	ldr	r9, [fp, #-248]	@, %sfp
	add	sl, r3, #152	@, temp.6302,
	ldr	r0, [r3, #276]	@ <variable>.s32SelfAllocChanMem_ctx, <variable>.s32SelfAllocChanMem_ctx
	add	r2, r3, #204	@ tmp691, temp.6302,
	str	r7, [fp, #-276]	@, %sfp
	add	r4, r3, #248832	@ tmp689, temp.6302,
	add	r1, r4, #472	@ tmp689, tmp689,
	add	ip, r3, #252	@ tmp693, temp.6302,
	str	r0, [fp, #-144]	@ <variable>.s32SelfAllocChanMem_ctx, ChanMem.s32SelfAllocChanMem_ctx
	mov	r0, #48	@ tmp700,
	ldr	r7, [r3, #268]	@ <variable>.s32SelfAllocChanMem_vdh, <variable>.s32SelfAllocChanMem_vdh
	add	r4, r3, #220	@ tmp695, temp.6302,
	str	sl, [fp, #-240]	@, %sfp
	add	r8, r3, #236	@ tmp697, temp.6302,
	mla	sl, r0, r6, r9	@ tmp701, tmp700, ChanID.6307,
	str	r7, [fp, #-152]	@ <variable>.s32SelfAllocChanMem_vdh, ChanMem.s32SelfAllocChanMem_vdh
	sub	r7, fp, #140	@,,
	str	r7, [fp, #-280]	@, %sfp
	ldr	r0, [r3, #272]	@ <variable>.s32SelfAllocChanMem_scd, <variable>.s32SelfAllocChanMem_scd
	sub	lr, fp, #184	@ tmp692,,
	str	r1, [fp, #-124]	@ tmp689, ChanMem.pstChanFrmBuf
	sub	r9, fp, #168	@ tmp702,,
	ldr	r7, [fp, #-272]	@, %sfp
	str	r0, [fp, #-148]	@ <variable>.s32SelfAllocChanMem_scd, ChanMem.s32SelfAllocChanMem_scd
	ldmia	r2, {r0, r1, r2, r3}	@ tmp691,,,,
	stmia	r7, {r0, r1, r2, r3}	@,,,,
	mov	r7, #0	@ tmp707,
	ldmia	ip, {r0, r1, r2, r3}	@ tmp693,,,,
	ldr	ip, [fp, #-288]	@, %sfp
	stmia	lr, {r0, r1, r2, r3}	@ tmp692,,,,
	ldmia	r4, {r0, r1, r2, r3}	@ tmp695,,,,
	stmia	ip, {r0, r1, r2, r3}	@,,,,
	ldr	lr, [fp, #-276]	@, %sfp
	ldmia	r8, {r0, r1, r2, r3}	@ tmp697,,,,
	stmia	lr, {r0, r1, r2, r3}	@,,,,
	ldmia	sl, {r0, r1, r2, r3}	@ tmp701,,,,
	stmia	r9, {r0, r1, r2, r3}	@ tmp702,,,,
	ldr	r3, [fp, #-240]	@, %sfp
	ldmia	r3, {r0, r1, r2}	@,,,
	str	r7, [r5, r6, asl #2]	@ tmp707, s_pstVfmwChan
	ldr	r7, [fp, #-280]	@, %sfp
	stmia	r7, {r0, r1, r2}	@,,,
	mov	r0, r6	@, ChanID.6307
	bl	VDMDRV_ClearChanIsDec	@
	bl	VCTRL_EnableAllInt	@
	add	r0, r5, #520	@, tmp658,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r6	@, ChanID.6307
	sub	r1, fp, #232	@,,
	bl	VCTRL_FreeChanResource	@
	b	.L2429	@
.L2443:
	movw	r2, #1900	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC334	@,
	movt	r1, #:upper16:.LC334	@,
	bl	dprint_vfmw	@
	mvn	r2, #0	@,
	str	r2, [fp, #-244]	@, %sfp
	b	.L2429	@
.L2455:
	movw	r1, #:lower16:.LC346	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC346	@,
	mvn	r9, #0	@,
	str	r9, [fp, #-244]	@, %sfp
	bl	dprint_vfmw	@
	b	.L2429	@
.L2529:
	ldr	r5, [fp, #-256]	@, %sfp
	cmp	r5, #1	@,
	bne	.L2465	@,
	ldr	r0, [fp, #-104]	@, ChanMemCtx.PhyAddr
	ldr	r1, [fp, #-100]	@, ChanMemCtx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	sub	r0, fp, #104
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
.L2465:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC343	@,
	movw	r2, #2025	@,
	movt	r1, #:upper16:.LC343	@,
	bl	dprint_vfmw	@
	mvn	r5, #0	@,
	str	r5, [fp, #-244]	@, %sfp
	b	.L2429	@
.L2533:
	ldr	r3, [fp, #-256]	@, %sfp
	cmp	r3, #1	@,
	beq	.L2538	@,
.L2474:
	ldr	ip, [fp, #-240]	@, %sfp
	cmp	ip, #1	@,
	bne	.L2475	@,
	ldr	r0, [fp, #-72]	@, ChanMemVDH.PhyAddr
	ldr	r1, [fp, #-68]	@, ChanMemVDH.VirAddr
	bl	MEM_ReleaseMemBlock	@
	sub	r0, fp, #72
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
.L2475:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC345	@,
	movw	r2, #2087	@,
	movt	r1, #:upper16:.LC345	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@,
	str	r0, [fp, #-244]	@, %sfp
	b	.L2429	@
.L2516:
	movw	r1, #:lower16:.LC330	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC330	@,
	mvn	ip, #0	@,
	str	ip, [fp, #-244]	@, %sfp
	bl	dprint_vfmw	@
	b	.L2429	@
.L2520:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC331	@,
	movw	r2, #1877	@,
	movt	r1, #:upper16:.LC331	@,
	bl	dprint_vfmw	@
	mvn	r8, #0	@,
	str	r8, [fp, #-244]	@, %sfp
	b	.L2429	@
.L2517:
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	mvn	lr, #0	@,
	str	lr, [fp, #-244]	@, %sfp
	bl	dprint_vfmw	@
	b	.L2429	@
.L2523:
	mov	r0, r6	@, tmp285
	movw	r1, #:lower16:.LC341	@,
	movw	r2, #1990	@,
	movt	r1, #:upper16:.LC341	@,
	bl	dprint_vfmw	@
	mvn	ip, #0	@,
	str	ip, [fp, #-244]	@, %sfp
	b	.L2429	@
.L2524:
	ldr	r8, [fp, #-256]	@, %sfp
	cmp	r8, #1	@,
	beq	.L2539	@,
.L2469:
	mov	r3, r2	@, prephitmp.6134
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC344	@,
	movw	r2, #2057	@,
	movt	r1, #:upper16:.LC344	@,
	str	ip, [sp, #0]	@ prephitmp.6135,
	mvn	r9, #0	@,
	bl	dprint_vfmw	@
	str	r9, [fp, #-244]	@, %sfp
	b	.L2429	@
.L2439:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC332	@,
	movw	r2, #1889	@,
	movt	r1, #:upper16:.LC332	@,
	bl	dprint_vfmw	@
	mvn	r9, #0	@,
	str	r9, [fp, #-244]	@, %sfp
	b	.L2429	@
.L2528:
	movw	r2, #2004	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC342	@,
	movt	r1, #:upper16:.LC342	@,
	bl	dprint_vfmw	@
	mvn	r2, #0	@,
	str	r2, [fp, #-244]	@, %sfp
	b	.L2429	@
.L2534:
	mov	r0, r7	@, tmp247
	movw	r1, #:lower16:.LC336	@,
	movw	r2, #1916	@,
	movt	r1, #:upper16:.LC336	@,
	ldr	r3, [fp, #-48]	@, DetailMemSize.ChanCtxDetailMem
	mvn	r5, #0	@,
	str	r5, [fp, #-244]	@, %sfp
	bl	dprint_vfmw	@
	b	.L2429	@
.L2538:
	ldr	r0, [fp, #-104]	@, ChanMemCtx.PhyAddr
	ldr	r1, [fp, #-100]	@, ChanMemCtx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	sub	r0, fp, #104
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	b	.L2474	@
.L2525:
	ldr	r5, [fp, #-256]	@, %sfp
	cmp	r5, #1	@,
	bne	.L2480	@,
	ldr	r0, [fp, #-104]	@, ChanMemCtx.PhyAddr
	ldr	r1, [fp, #-100]	@, ChanMemCtx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	sub	r0, fp, #104
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
.L2480:
	ldr	r5, [fp, #-240]	@, %sfp
	cmp	r5, #1	@,
	bne	.L2481	@,
	ldr	r0, [fp, #-72]	@, ChanMemVDH.PhyAddr
	ldr	r1, [fp, #-68]	@, ChanMemVDH.VirAddr
	bl	MEM_ReleaseMemBlock	@
	sub	r0, fp, #72
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
.L2481:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC333	@,
	movw	r2, #2129	@,
	movt	r1, #:upper16:.LC333	@,
	bl	dprint_vfmw	@
	mvn	r7, #0	@,
	str	r7, [fp, #-244]	@, %sfp
	b	.L2429	@
.L2539:
	ldr	r0, [fp, #-104]	@, ChanMemCtx.PhyAddr
	ldr	r1, [fp, #-100]	@, ChanMemCtx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	sub	r0, fp, #104
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	ldr	r2, [fp, #-64]	@ prephitmp.6134, ChanMemVDH.Length
	ldr	ip, [fp, #-56]	@ prephitmp.6135, DetailMemSize.VdhDetailMem
	b	.L2469	@
.L2537:
	ldr	r0, [fp, #-104]	@, ChanMemCtx.PhyAddr
	ldr	r1, [fp, #-100]	@, ChanMemCtx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	sub	r0, fp, #104
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	ldr	r9, [fp, #-240]	@, %sfp
	cmp	r9, #1	@,
	bne	.L2454	@,
	ldr	r0, [fp, #-72]	@, ChanMemVDH.PhyAddr
	ldr	r1, [fp, #-68]	@, ChanMemVDH.VirAddr
	bl	MEM_ReleaseMemBlock	@
	sub	r0, fp, #72
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
.L2454:
	movw	r1, #:lower16:.LC340	@,
	movw	r2, #1967	@,
	movt	r1, #:upper16:.LC340	@,
	ldr	r3, [fp, #-52]	@, DetailMemSize.ScdDetailMem
	mov	r0, #1	@,
	mvn	lr, #0	@,
	str	lr, [fp, #-244]	@, %sfp
	bl	dprint_vfmw	@
	b	.L2429	@
.L2535:
	ldr	r0, [fp, #-104]	@, ChanMemCtx.PhyAddr
	mvn	r8, #0	@,
	ldr	r1, [fp, #-100]	@, ChanMemCtx.VirAddr
	str	r8, [fp, #-244]	@, %sfp
	bl	MEM_ReleaseMemBlock	@
	sub	r0, fp, #104
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	mov	r0, r7	@, tmp247
	movw	r1, #:lower16:.LC338	@,
	movw	r2, #1934	@,
	movt	r1, #:upper16:.LC338	@,
	ldr	r3, [fp, #-56]	@, DetailMemSize.VdhDetailMem
	bl	dprint_vfmw	@
	b	.L2429	@
	.fnend
	.size	VCTRL_CreateChanWithOption, .-VCTRL_CreateChanWithOption
	.align	2
	.global	VCTRL_CreateChan
	.type	VCTRL_CreateChan, %function
VCTRL_CreateChan:
	.fnstart
.LFB1566:
	@ args = 0, pretend = 0, frame = 232
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #244
	sub	sp, sp, #244	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r0, #32	@ eCapLevel,
	mov	r4, r0	@ eCapLevel, eCapLevel
	mov	r8, r1	@ pChanMem, pChanMem
	bhi	.L2555	@,
	sub	r6, fp, #264	@ tmp240,,
	sub	r5, fp, #84	@ tmp241,,
	mov	r1, #164	@,
	sub	r7, fp, #100	@ tmp237,,
	mov	r0, r6	@, tmp240
	bl	__memzero	@
	mov	r0, r5	@, tmp241
	mov	r1, #16	@,
	bl	__memzero	@
	mov	r0, r7	@, tmp237
	mov	r1, #16	@,
	bl	__memzero	@
	mov	r2, r4, asl #3	@ tmp239, eCapLevel,
	rsb	r1, r4, r2	@ tmp155, eCapLevel, tmp239
	movw	r3, #:lower16:CapItem	@ tmp238,
	movt	r3, #:upper16:CapItem	@ tmp238,
	sub	r0, r4, #18	@ D.56302, eCapLevel,
	cmp	r0, #7	@ D.56302,
	add	ip, r1, #1	@ tmp163, tmp155,
	ldr	r1, [r3, r1, asl #2]	@ tmp158, CapItem
	mov	lr, #1	@ tmp150,
	str	lr, [fp, #-260]	@ tmp150, stChanOption.Purpose
	mov	lr, #2	@ tmp151,
	str	lr, [fp, #-256]	@ tmp151, stChanOption.MemAllocMode
	mov	lr, #32	@ tmp166,
	str	lr, [fp, #-236]	@ tmp166, stChanOption.s32MaxSpsNum
	mov	lr, #256	@ tmp167,
	str	lr, [fp, #-232]	@ tmp167, stChanOption.s32MaxPpsNum
	movwls	lr, #:lower16:.LANCHOR1	@ tmp168,
	movtls	lr, #:upper16:.LANCHOR1	@ tmp168,
	str	r1, [fp, #-252]	@ tmp158, stChanOption.s32MaxWidth
	addls	r0, lr, r0, asl #2	@, tmp171, tmp168, D.56302,
	mov	r1, #136	@ tmp165,
	str	r1, [fp, #-244]	@ tmp165, stChanOption.s32MaxSliceNum
	rsb	r1, r4, r2	@ tmp177, eCapLevel, tmp239
	ldrls	lr, [r0, #460]	@ MinDispFspNum, CSWTCH.931
	movhi	lr, #6	@ MinDispFspNum,
	add	r0, r3, r1, asl #2	@, tmp179, tmp238, tmp177,
	ldr	ip, [r3, ip, asl #2]	@ tmp164, CapItem
	ldr	r1, [r0, #12]	@ D.50691, CapItem
	rsb	r0, r4, r2	@ tmp191, eCapLevel, tmp239
	str	ip, [fp, #-248]	@ tmp164, stChanOption.s32MaxHeight
	addls	ip, lr, #2	@ prephitmp.6338, MinDispFspNum,
	add	r3, r3, r0, asl #2	@, tmp193, tmp238, tmp191,
	movhi	ip, #8	@ prephitmp.6338,
	cmp	r1, ip	@ D.50691, prephitmp.6338
	mov	r2, #1	@ tmp184,
	subgt	r1, r1, #2	@ tmp182, D.50691,
	ldr	r3, [r3, #24]	@ tmp195, CapItem
	movle	r1, #1	@ tmp181,
	rsbgt	r1, lr, r1	@ tmp183, MinDispFspNum, tmp182
	cmp	r4, #24	@ eCapLevel,
	str	r1, [fp, #-228]	@ tmp183, stChanOption.s32MaxRefFrameNum
	str	lr, [fp, #-200]	@ MinDispFspNum, stChanOption.s32DisplayFrameNum
	mov	r1, #0	@ tmp196,
	str	r2, [fp, #-220]	@ tmp184, stChanOption.s32SupportBFrame
	str	r2, [fp, #-216]	@ tmp184, stChanOption.s32SupportH264
	str	r2, [fp, #-208]	@ tmp184, stChanOption.s32ReRangeEn
	str	r1, [fp, #-196]	@ tmp196, stChanOption.s32SlotWidth
	str	r3, [fp, #-204]	@ tmp195, stChanOption.s32SCDBufSize
	str	r1, [fp, #-192]	@ tmp196, stChanOption.s32SlotHeight
	streq	r1, [fp, #-228]	@ tmp196, stChanOption.s32MaxRefFrameNum
	streq	r2, [fp, #-200]	@ tmp184, stChanOption.s32DisplayFrameNum
	beq	.L2548	@,
	cmp	r4, #26	@ eCapLevel,
	beq	.L2556	@,
	cmp	r4, #18	@ eCapLevel,
	moveq	r3, #4	@ tmp202,
	streq	r3, [fp, #-228]	@ tmp202, stChanOption.s32MaxRefFrameNum
	moveq	r3, #2	@ tmp203,
	streq	r3, [fp, #-200]	@ tmp203, stChanOption.s32DisplayFrameNum
.L2548:
	mov	r0, r4	@, eCapLevel
	sub	r1, fp, #56	@,,
	sub	r2, fp, #68	@,,
	bl	VCTRL_GetChanMemSize	@
	cmp	r0, #0	@,
	bne	.L2557	@,
	cmp	r8, #0	@ pChanMem,
	beq	.L2551	@,
	ldr	r3, [r8, #8]	@ D.50711, <variable>.Length
	cmp	r3, #0	@ D.50711,
	beq	.L2551	@,
	ldr	ip, [r8, #0]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	ip, #0	@ <variable>.PhyAddr,
	beq	.L2552	@,
	ldr	sl, [r8, #4]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	sl, #0	@ <variable>.VirAddr,
	beq	.L2552	@,
	ldr	lr, [fp, #-56]	@ VdmChanMemSize, VdmChanMemSize
	ldr	r1, [fp, #-68]	@ ScdChanMemSize, ScdChanMemSize
	add	r0, r1, lr	@ tmp209, ScdChanMemSize, VdmChanMemSize
	cmp	r3, r0	@ D.50711, tmp209
	blt	.L2552	@,
	ldr	lr, [fp, #-64]	@ D.50724, ScdChanMemSize
	sub	r8, fp, #180	@,,
	str	ip, [fp, #-100]	@ <variable>.PhyAddr, scd_MemRecord.PhyAddr
	sub	r9, fp, #164	@ tmp221,,
	str	r8, [fp, #-272]	@, %sfp
	rsb	r8, lr, r3	@ tmp220, D.50724, D.50711
	str	lr, [fp, #-92]	@ D.50724, scd_MemRecord.Length
	add	ip, ip, lr	@ tmp216, <variable>.PhyAddr, D.50724
	str	sl, [fp, #-96]	@ <variable>.VirAddr, scd_MemRecord.VirAddr
	add	lr, sl, lr	@ tmp218, <variable>.VirAddr, D.50724
	ldmia	r7, {r0, r1, r2, r3}	@ tmp237,,,,
	str	ip, [fp, #-84]	@ tmp216, vdh_MemRecord.PhyAddr
	str	lr, [fp, #-80]	@ tmp218, vdh_MemRecord.VirAddr
	mov	ip, #3	@ tmp212,
	str	r8, [fp, #-76]	@ tmp220, vdh_MemRecord.Length
	ldr	lr, [fp, #-272]	@, %sfp
	stmia	r9, {r0, r1, r2, r3}	@ tmp221,,,,
	str	ip, [fp, #-256]	@ tmp212, stChanOption.MemAllocMode
	ldmia	r5, {r0, r1, r2, r3}	@ tmp241,,,,
	mov	ip, #1	@ OneChanMemFlag,
	stmia	lr, {r0, r1, r2, r3}	@,,,,
	b	.L2553	@
.L2551:
	mov	ip, #0	@ OneChanMemFlag,
.L2553:
	mov	r0, r4	@, eCapLevel
	mov	r1, r6	@, tmp240
	mov	r3, ip	@, OneChanMemFlag
	mov	r2, #1	@,
	bl	VCTRL_CreateChanWithOption	@
	orr	r0, r0, r0, asr #31	@ D.50672,
.L2542:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L2556:
	mov	r2, #16	@ tmp200,
	mov	r3, #6	@ tmp201,
	str	r2, [fp, #-228]	@ tmp200, stChanOption.s32MaxRefFrameNum
	str	r3, [fp, #-200]	@ tmp201, stChanOption.s32DisplayFrameNum
	b	.L2548	@
.L2555:
	mov	r2, r0	@, eCapLevel
	movw	r1, #:lower16:.LC349	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC349	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.50672,
	b	.L2542	@
.L2552:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC351	@,
	movt	r1, #:upper16:.LC351	@,
	bl	dprint_vfmw	@
	ldr	ip, [r8, #8]	@ <variable>.Length, <variable>.Length
	ldr	r2, [r8, #0]	@ <variable>.PhyAddr, <variable>.PhyAddr
	mov	r0, #1	@,
	ldr	r3, [r8, #4]	@ <variable>.VirAddr, <variable>.VirAddr
	movw	r1, #:lower16:.LC352	@,
	movt	r1, #:upper16:.LC352	@,
	str	ip, [sp, #0]	@ <variable>.Length,
	bl	dprint_vfmw	@
	ldr	r3, [fp, #-56]	@ VdmChanMemSize, VdmChanMemSize
	ldr	r2, [fp, #-68]	@ ScdChanMemSize, ScdChanMemSize
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC353	@,
	movt	r1, #:upper16:.LC353	@,
	add	r2, r2, r3	@, ScdChanMemSize, VdmChanMemSize
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.50672,
	b	.L2542	@
.L2557:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC350	@,
	movt	r1, #:upper16:.LC350	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.50672,
	b	.L2542	@
	.fnend
	.size	VCTRL_CreateChan, .-VCTRL_CreateChan
	.align	2
	.global	VCTRL_RunProcess
	.type	VCTRL_RunProcess, %function
VCTRL_RunProcess:
	.fnstart
.LFB1534:
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
	movw	r5, #:lower16:.LANCHOR3	@ tmp207,
	movt	r5, #:upper16:.LANCHOR3	@ tmp207,
	movw	r4, #:lower16:.LANCHOR0	@ tmp206,
	movt	r4, #:upper16:.LANCHOR0	@ tmp206,
	mov	r3, #100	@ tmp186,
	ldr	r0, [r5, #3864]	@ g_SleepTime.455, g_SleepTime
	str	r3, [r4, #152]	@ tmp186, s_VfmwCTrl.s32ThreadPos
	cmp	r0, #0	@ g_SleepTime.455,
	ble	.L2559	@,
	bl	msleep	@
.L2559:
	ldr	r0, .L2631	@,
	bl	OSAL_SpinLockIRQ	@
	bl	SM_Wakeup	@
	ldr	r0, [r5, #3872]	@ g_StopDec, g_StopDec
	mov	r2, #101	@ tmp191,
	str	r2, [r4, #152]	@ tmp191, s_VfmwCTrl.s32ThreadPos
	cmp	r0, #0	@ g_StopDec,
	movne	r5, #0	@ ret,
	beq	.L2613	@,
.L2561:
	mov	r6, #102	@ tmp195,
	str	r6, [r4, #152]	@ tmp195, s_VfmwCTrl.s32ThreadPos
	bl	VDMDRV_WakeUpVdm	@
	mov	r0, #0	@,
	bl	SCDDRV_EnableInt	@
	movw	r1, #:lower16:g_vdm_hal_fun_ptr	@ tmp196,
	movt	r1, #:upper16:g_vdm_hal_fun_ptr	@ tmp196,
	ldr	r3, [r1, #76]	@ D.50003, g_vdm_hal_fun_ptr.pfun_VDMHAL_EnableInt
	cmp	r3, #0	@ D.50003,
	beq	.L2614	@,
	mov	r0, #0	@,
	blx	r3	@ D.50003
.L2565:
	mov	r0, #0	@,
	mov	r1, r0	@,
	bl	DeleteRawPacketInBuffer	@
	mov	r1, #0	@,
	mov	r0, #1	@,
	bl	DeleteRawPacketInBuffer	@
	mov	r1, #0	@,
	mov	r0, #2	@,
	bl	DeleteRawPacketInBuffer	@
	mov	r1, #0	@,
	mov	r0, #3	@,
	bl	DeleteRawPacketInBuffer	@
	mov	r1, #0	@,
	mov	r0, #4	@,
	bl	DeleteRawPacketInBuffer	@
	mov	r1, #0	@,
	mov	r0, #5	@,
	bl	DeleteRawPacketInBuffer	@
	mov	r1, #0	@,
	mov	r0, #6	@,
	bl	DeleteRawPacketInBuffer	@
	mov	r1, #0	@,
	mov	r0, #7	@,
	bl	DeleteRawPacketInBuffer	@
	mov	r1, #0	@,
	mov	r0, #8	@,
	bl	DeleteRawPacketInBuffer	@
	mov	r1, #0	@,
	mov	r0, #9	@,
	bl	DeleteRawPacketInBuffer	@
	mov	r1, #0	@,
	mov	r0, #10	@,
	bl	DeleteRawPacketInBuffer	@
	mov	r1, #0	@,
	mov	r0, #11	@,
	bl	DeleteRawPacketInBuffer	@
	mov	r1, #0	@,
	mov	r0, #12	@,
	bl	DeleteRawPacketInBuffer	@
	mov	r1, #0	@,
	mov	r0, #13	@,
	bl	DeleteRawPacketInBuffer	@
	mov	r1, #0	@,
	mov	r0, #14	@,
	bl	DeleteRawPacketInBuffer	@
	mov	r1, #0	@,
	mov	r0, #15	@,
	bl	DeleteRawPacketInBuffer	@
	mov	r0, #0	@,
	bl	SM_GetInstanceRawDiscontinue	@
	cmp	r0, #1	@,
	beq	.L2615	@,
.L2564:
	mov	r0, #1	@,
	bl	SM_GetInstanceRawDiscontinue	@
	cmp	r0, #1	@ temp.6389,
	mov	r6, r0	@ temp.6389,
	beq	.L2616	@,
.L2568:
	mov	r0, #2	@,
	bl	SM_GetInstanceRawDiscontinue	@
	cmp	r0, #1	@,
	beq	.L2617	@,
.L2571:
	mov	r0, #3	@,
	bl	SM_GetInstanceRawDiscontinue	@
	cmp	r0, #1	@,
	beq	.L2618	@,
.L2574:
	mov	r0, #4	@,
	bl	SM_GetInstanceRawDiscontinue	@
	cmp	r0, #1	@,
	beq	.L2619	@,
.L2577:
	mov	r0, #5	@,
	bl	SM_GetInstanceRawDiscontinue	@
	cmp	r0, #1	@,
	beq	.L2620	@,
.L2580:
	mov	r0, #6	@,
	bl	SM_GetInstanceRawDiscontinue	@
	cmp	r0, #1	@,
	beq	.L2621	@,
.L2583:
	mov	r0, #7	@,
	bl	SM_GetInstanceRawDiscontinue	@
	cmp	r0, #1	@,
	beq	.L2622	@,
.L2586:
	mov	r0, #8	@,
	bl	SM_GetInstanceRawDiscontinue	@
	cmp	r0, #1	@,
	beq	.L2623	@,
.L2589:
	mov	r0, #9	@,
	bl	SM_GetInstanceRawDiscontinue	@
	cmp	r0, #1	@,
	beq	.L2624	@,
.L2592:
	mov	r0, #10	@,
	bl	SM_GetInstanceRawDiscontinue	@
	cmp	r0, #1	@,
	beq	.L2625	@,
.L2595:
	mov	r0, #11	@,
	bl	SM_GetInstanceRawDiscontinue	@
	cmp	r0, #1	@,
	beq	.L2626	@,
.L2598:
	mov	r0, #12	@,
	bl	SM_GetInstanceRawDiscontinue	@
	cmp	r0, #1	@,
	beq	.L2627	@,
.L2601:
	mov	r0, #13	@,
	bl	SM_GetInstanceRawDiscontinue	@
	cmp	r0, #1	@,
	beq	.L2628	@,
.L2604:
	mov	r0, #14	@,
	bl	SM_GetInstanceRawDiscontinue	@
	cmp	r0, #1	@,
	beq	.L2629	@,
.L2607:
	mov	r0, #15	@,
	bl	SM_GetInstanceRawDiscontinue	@
	cmp	r0, #1	@,
	beq	.L2630	@,
.L2610:
	ldr	r0, .L2631	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r1, #10	@,
	ldr	r0, .L2631+4	@,
	mov	ip, #105	@ tmp201,
	str	ip, [r4, #152]	@ tmp201, s_VfmwCTrl.s32ThreadPos
	bl	OSAL_WaitEvent	@
	mov	r0, r5	@, ret
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L2613:
	bl	DecSyntax	@
	mov	r5, r0	@ ret,
	b	.L2561	@
.L2614:
	mov	r0, r3	@, D.50003
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #591	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	b	.L2565	@
.L2622:
	mov	r0, #7	@,
	bl	VCTRL_ChanDecparamInValidFlag	@
	mov	r6, r0	@ tmp.6408,
	mov	r0, #7	@,
	bl	SM_GetInstanceStreamEmptyFlag	@
	cmp	r0, #1	@,
	beq	.L2588	@,
	cmp	r6, #1	@ tmp.6408,
	bne	.L2586	@,
.L2588:
	mov	r1, #3	@,
	mov	r0, #7	@,
	bl	SM_SetRawDiscontinueFlag	@
	mov	r0, #7	@,
	bl	VCTRL_ResetChan	@
	mov	r1, #2	@,
	mov	r0, #7	@,
	bl	SM_SetRawDiscontinueFlag	@
	b	.L2586	@
.L2623:
	mov	r0, #8	@,
	bl	VCTRL_ChanDecparamInValidFlag	@
	mov	r6, r0	@ tmp.6411,
	mov	r0, #8	@,
	bl	SM_GetInstanceStreamEmptyFlag	@
	cmp	r0, #1	@,
	beq	.L2591	@,
	cmp	r6, #1	@ tmp.6411,
	bne	.L2589	@,
.L2591:
	mov	r1, #3	@,
	mov	r0, #8	@,
	bl	SM_SetRawDiscontinueFlag	@
	mov	r0, #8	@,
	bl	VCTRL_ResetChan	@
	mov	r1, #2	@,
	mov	r0, #8	@,
	bl	SM_SetRawDiscontinueFlag	@
	b	.L2589	@
.L2624:
	mov	r0, #9	@,
	bl	VCTRL_ChanDecparamInValidFlag	@
	mov	r6, r0	@ tmp.6414,
	mov	r0, #9	@,
	bl	SM_GetInstanceStreamEmptyFlag	@
	cmp	r0, #1	@,
	beq	.L2594	@,
	cmp	r6, #1	@ tmp.6414,
	bne	.L2592	@,
.L2594:
	mov	r1, #3	@,
	mov	r0, #9	@,
	bl	SM_SetRawDiscontinueFlag	@
	mov	r0, #9	@,
	bl	VCTRL_ResetChan	@
	mov	r1, #2	@,
	mov	r0, #9	@,
	bl	SM_SetRawDiscontinueFlag	@
	b	.L2592	@
.L2625:
	mov	r0, #10	@,
	bl	VCTRL_ChanDecparamInValidFlag	@
	mov	r6, r0	@ tmp.6417,
	mov	r0, #10	@,
	bl	SM_GetInstanceStreamEmptyFlag	@
	cmp	r0, #1	@,
	beq	.L2597	@,
	cmp	r6, #1	@ tmp.6417,
	bne	.L2595	@,
.L2597:
	mov	r1, #3	@,
	mov	r0, #10	@,
	bl	SM_SetRawDiscontinueFlag	@
	mov	r0, #10	@,
	bl	VCTRL_ResetChan	@
	mov	r1, #2	@,
	mov	r0, #10	@,
	bl	SM_SetRawDiscontinueFlag	@
	b	.L2595	@
.L2626:
	mov	r0, #11	@,
	bl	VCTRL_ChanDecparamInValidFlag	@
	mov	r6, r0	@ tmp.6420,
	mov	r0, #11	@,
	bl	SM_GetInstanceStreamEmptyFlag	@
	cmp	r0, #1	@,
	beq	.L2600	@,
	cmp	r6, #1	@ tmp.6420,
	bne	.L2598	@,
.L2600:
	mov	r1, #3	@,
	mov	r0, #11	@,
	bl	SM_SetRawDiscontinueFlag	@
	mov	r0, #11	@,
	bl	VCTRL_ResetChan	@
	mov	r1, #2	@,
	mov	r0, #11	@,
	bl	SM_SetRawDiscontinueFlag	@
	b	.L2598	@
.L2627:
	mov	r0, #12	@,
	bl	VCTRL_ChanDecparamInValidFlag	@
	mov	r6, r0	@ tmp.6423,
	mov	r0, #12	@,
	bl	SM_GetInstanceStreamEmptyFlag	@
	cmp	r0, #1	@,
	beq	.L2603	@,
	cmp	r6, #1	@ tmp.6423,
	bne	.L2601	@,
.L2603:
	mov	r1, #3	@,
	mov	r0, #12	@,
	bl	SM_SetRawDiscontinueFlag	@
	mov	r0, #12	@,
	bl	VCTRL_ResetChan	@
	mov	r1, #2	@,
	mov	r0, #12	@,
	bl	SM_SetRawDiscontinueFlag	@
	b	.L2601	@
.L2628:
	mov	r0, #13	@,
	bl	VCTRL_ChanDecparamInValidFlag	@
	mov	r6, r0	@ tmp.6426,
	mov	r0, #13	@,
	bl	SM_GetInstanceStreamEmptyFlag	@
	cmp	r0, #1	@,
	beq	.L2606	@,
	cmp	r6, #1	@ tmp.6426,
	bne	.L2604	@,
.L2606:
	mov	r1, #3	@,
	mov	r0, #13	@,
	bl	SM_SetRawDiscontinueFlag	@
	mov	r0, #13	@,
	bl	VCTRL_ResetChan	@
	mov	r1, #2	@,
	mov	r0, #13	@,
	bl	SM_SetRawDiscontinueFlag	@
	b	.L2604	@
.L2629:
	mov	r0, #14	@,
	bl	VCTRL_ChanDecparamInValidFlag	@
	mov	r6, r0	@ tmp.6429,
	mov	r0, #14	@,
	bl	SM_GetInstanceStreamEmptyFlag	@
	cmp	r0, #1	@,
	beq	.L2609	@,
	cmp	r6, #1	@ tmp.6429,
	bne	.L2607	@,
.L2609:
	mov	r1, #3	@,
	mov	r0, #14	@,
	bl	SM_SetRawDiscontinueFlag	@
	mov	r0, #14	@,
	bl	VCTRL_ResetChan	@
	mov	r1, #2	@,
	mov	r0, #14	@,
	bl	SM_SetRawDiscontinueFlag	@
	b	.L2607	@
.L2618:
	mov	r0, #3	@,
	bl	VCTRL_ChanDecparamInValidFlag	@
	mov	r6, r0	@ tmp.6396,
	mov	r0, #3	@,
	bl	SM_GetInstanceStreamEmptyFlag	@
	cmp	r0, #1	@,
	beq	.L2576	@,
	cmp	r6, #1	@ tmp.6396,
	bne	.L2574	@,
.L2576:
	mov	r0, #3	@,
	mov	r1, r0	@,
	bl	SM_SetRawDiscontinueFlag	@
	mov	r0, #3	@,
	bl	VCTRL_ResetChan	@
	mov	r1, #2	@,
	mov	r0, #3	@,
	bl	SM_SetRawDiscontinueFlag	@
	b	.L2574	@
.L2619:
	mov	r0, #4	@,
	bl	VCTRL_ChanDecparamInValidFlag	@
	mov	r6, r0	@ tmp.6399,
	mov	r0, #4	@,
	bl	SM_GetInstanceStreamEmptyFlag	@
	cmp	r0, #1	@,
	beq	.L2579	@,
	cmp	r6, #1	@ tmp.6399,
	bne	.L2577	@,
.L2579:
	mov	r1, #3	@,
	mov	r0, #4	@,
	bl	SM_SetRawDiscontinueFlag	@
	mov	r0, #4	@,
	bl	VCTRL_ResetChan	@
	mov	r1, #2	@,
	mov	r0, #4	@,
	bl	SM_SetRawDiscontinueFlag	@
	b	.L2577	@
.L2620:
	mov	r0, #5	@,
	bl	VCTRL_ChanDecparamInValidFlag	@
	mov	r6, r0	@ tmp.6402,
	mov	r0, #5	@,
	bl	SM_GetInstanceStreamEmptyFlag	@
	cmp	r0, #1	@,
	beq	.L2582	@,
	cmp	r6, #1	@ tmp.6402,
	bne	.L2580	@,
.L2582:
	mov	r1, #3	@,
	mov	r0, #5	@,
	bl	SM_SetRawDiscontinueFlag	@
	mov	r0, #5	@,
	bl	VCTRL_ResetChan	@
	mov	r1, #2	@,
	mov	r0, #5	@,
	bl	SM_SetRawDiscontinueFlag	@
	b	.L2580	@
.L2621:
	mov	r0, #6	@,
	bl	VCTRL_ChanDecparamInValidFlag	@
	mov	r6, r0	@ tmp.6405,
	mov	r0, #6	@,
	bl	SM_GetInstanceStreamEmptyFlag	@
	cmp	r0, #1	@,
	beq	.L2585	@,
	cmp	r6, #1	@ tmp.6405,
	bne	.L2583	@,
.L2585:
	mov	r1, #3	@,
	mov	r0, #6	@,
	bl	SM_SetRawDiscontinueFlag	@
	mov	r0, #6	@,
	bl	VCTRL_ResetChan	@
	mov	r1, #2	@,
	mov	r0, #6	@,
	bl	SM_SetRawDiscontinueFlag	@
	b	.L2583	@
.L2616:
	bl	VCTRL_ChanDecparamInValidFlag	@
	mov	r7, r0	@ tmp.6390,
	mov	r0, r6	@, temp.6389
	bl	SM_GetInstanceStreamEmptyFlag	@
	cmp	r0, #1	@,
	beq	.L2570	@,
	cmp	r7, #1	@ tmp.6390,
	bne	.L2568	@,
.L2570:
	mov	r1, #3	@,
	mov	r0, #1	@,
	bl	SM_SetRawDiscontinueFlag	@
	mov	r0, #1	@,
	bl	VCTRL_ResetChan	@
	mov	r1, #2	@,
	mov	r0, #1	@,
	bl	SM_SetRawDiscontinueFlag	@
	b	.L2568	@
.L2617:
	mov	r0, #2	@,
	bl	VCTRL_ChanDecparamInValidFlag	@
	mov	r6, r0	@ tmp.6393,
	mov	r0, #2	@,
	bl	SM_GetInstanceStreamEmptyFlag	@
	cmp	r0, #1	@,
	beq	.L2573	@,
	cmp	r6, #1	@ tmp.6393,
	bne	.L2571	@,
.L2573:
	mov	r1, #3	@,
	mov	r0, #2	@,
	bl	SM_SetRawDiscontinueFlag	@
	mov	r0, #2	@,
	bl	VCTRL_ResetChan	@
	mov	r0, #2	@,
	mov	r1, r0	@,
	bl	SM_SetRawDiscontinueFlag	@
	b	.L2571	@
.L2615:
	mov	r0, #0	@,
	bl	VCTRL_ChanDecparamInValidFlag	@
	mov	r6, r0	@ tmp.6387,
	mov	r0, #0	@,
	bl	SM_GetInstanceStreamEmptyFlag	@
	cmp	r0, #1	@,
	beq	.L2567	@,
	cmp	r6, #1	@ tmp.6387,
	bne	.L2564	@,
.L2567:
	mov	r1, #3	@,
	mov	r0, #0	@,
	bl	SM_SetRawDiscontinueFlag	@
	mov	r0, #0	@,
	bl	VCTRL_ResetChan	@
	mov	r1, #2	@,
	mov	r0, #0	@,
	bl	SM_SetRawDiscontinueFlag	@
	b	.L2564	@
.L2630:
	mov	r0, #15	@,
	bl	VCTRL_ChanDecparamInValidFlag	@
	mov	r6, r0	@ tmp,
	mov	r0, #15	@,
	bl	SM_GetInstanceStreamEmptyFlag	@
	cmp	r0, #1	@,
	beq	.L2611	@,
	cmp	r6, #1	@ tmp,
	bne	.L2610	@,
.L2611:
	mov	r1, #3	@,
	mov	r0, #15	@,
	bl	SM_SetRawDiscontinueFlag	@
	mov	r0, #15	@,
	bl	VCTRL_ResetChan	@
	mov	r1, #2	@,
	mov	r0, #15	@,
	bl	SM_SetRawDiscontinueFlag	@
	b	.L2610	@
.L2632:
	.align	2
.L2631:
	.word	.LANCHOR0+520
	.word	.LANCHOR3+3548
	.fnend
	.size	VCTRL_RunProcess, .-VCTRL_RunProcess
	.align	2
	.global	VFMW_CTRL_thread_proc
	.type	VFMW_CTRL_thread_proc, %function
VFMW_CTRL_thread_proc:
	.fnstart
.LFB1533:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
.L2634:
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, fp, ip, lr, pc}	@,
	.pad #4
	.save {r3, r4, r5, r6, r7, r8, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r4, #:lower16:.LANCHOR0	@ tmp171,
	movt	r4, #:upper16:.LANCHOR0	@ tmp171,
	mov	r8, #1	@ tmp182,
	mov	r7, #5	@ tmp187,
	mov	r6, r4	@ tmp183, tmp171
.L2639:
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC354	@,
	movt	r1, #:upper16:.LC354	@,
	mov	r3, #0	@ tmp142,
	str	r3, [r4, #152]	@ tmp142, s_VfmwCTrl.s32ThreadPos
	bl	dprint_vfmw	@
	ldr	r3, [r4, #144]	@ temp.6459, s_VfmwCTrl.eTaskCommand
	mov	r5, #2	@ tmp144,
	str	r5, [r4, #140]	@ tmp144, s_VfmwCTrl.eTaskState
	cmp	r3, r5	@ temp.6459,
	beq	.L2635	@,
	cmp	r3, #3	@ temp.6459,
	bne	.L2645	@,
	b	.L2636	@
.L2638:
	cmp	r3, #3	@ D.49961,
	beq	.L2636	@,
	ldr	r0, [r6, #140]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	cmp	r0, #0	@ s_VfmwCTrl.eTaskState,
	beq	.L2636	@,
.L2645:
	str	r5, [r4, #152]	@ tmp178, s_VfmwCTrl.s32ThreadPos
	bl	VCTRL_RunProcess	@
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC355	@,
	movt	r1, #:upper16:.LC355	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #144]	@ D.49961, s_VfmwCTrl.eTaskCommand
	cmp	r3, #2	@ D.49961,
	bne	.L2638	@,
.L2635:
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC356	@,
	movt	r1, #:upper16:.LC356	@,
	mov	r2, #4	@ tmp156,
	str	r2, [r4, #152]	@ tmp156, s_VfmwCTrl.s32ThreadPos
	bl	dprint_vfmw	@
	str	r8, [r4, #140]	@ tmp182, s_VfmwCTrl.eTaskState
.L2640:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC357	@,
	movt	r1, #:upper16:.LC357	@,
	str	r7, [r4, #152]	@ tmp187, s_VfmwCTrl.s32ThreadPos
	bl	dprint_vfmw	@
	ldr	r3, [r4, #144]	@ temp.6455, s_VfmwCTrl.eTaskCommand
	cmp	r3, #1	@ temp.6455,
	beq	.L2639	@,
	cmp	r3, #3	@ temp.6455,
	mov	r0, #10	@,
	beq	.L2636	@,
	bl	msleep	@
	ldr	r1, [r6, #140]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	cmp	r1, #0	@ s_VfmwCTrl.eTaskState,
	bne	.L2640	@,
.L2636:
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC358	@,
	movt	r1, #:upper16:.LC358	@,
	mov	ip, #6	@ tmp166,
	str	ip, [r4, #152]	@ tmp166, s_VfmwCTrl.s32ThreadPos
	bl	dprint_vfmw	@
	mov	r0, #0	@ tmp169,
	str	r0, [r4, #140]	@ tmp169, s_VfmwCTrl.eTaskState
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	VFMW_CTRL_thread_proc, .-VFMW_CTRL_thread_proc
	.align	2
	.global	VCTRL_ResetChanWithOption
	.type	VCTRL_ResetChanWithOption, %function
VCTRL_ResetChanWithOption:
	.fnstart
.LFB1581:
	@ args = 0, pretend = 0, frame = 8
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
	movw	r5, #:lower16:.LANCHOR0	@ tmp203,
	movt	r5, #:upper16:.LANCHOR0	@ tmp203,
	mov	r4, r0	@ ChanID, ChanID
	mov	r7, r1	@ pOption, pOption
	ldr	r3, [r5, r0, asl #2]	@ D.51801, s_pstVfmwChan
	cmp	r3, #0	@ D.51801,
	beq	.L2658	@,
	ldr	r2, [r1, #0]	@ <variable>.s32KeepBS, <variable>.s32KeepBS
	cmp	r2, #1	@ <variable>.s32KeepBS,
	bhi	.L2659	@,
	ldr	r8, [r3, #16]	@ ChanIsRun, <variable>.s32IsRun
	bl	VCTRL_StopChan	@
	ldr	r3, [r5, r4, asl #2]	@ tmp149, s_pstVfmwChan
	mov	r6, #0	@ tmp150,
	add	r1, r5, #1456	@ tmp155, tmp203,
	mov	r0, #300	@ tmp158,
	add	ip, r1, #4	@ tmp155, tmp155,
	mov	r1, r0	@, tmp158
	str	r6, [r3, #348]	@ tmp150, <variable>.s32CountNoDecparamFlag
	ldr	r3, [r5, r4, asl #2]	@ tmp152, s_pstVfmwChan
	mla	r0, r0, r4, ip	@, tmp158, ChanID, tmp155
	str	r6, [r3, #352]	@ tmp150, <variable>.u32NoDecparamStartTime
	bl	__memzero	@
	mov	r1, r6	@, tmp150
	mov	r0, r4	@, ChanID
	bl	VCTRL_SetSendStreamAgainFlag	@
	ldr	ip, [r7, #4]	@ <variable>.s32KeepSPSPPS, <variable>.s32KeepSPSPPS
	ldr	r2, [r5, r4, asl #2]	@ tmp161, s_pstVfmwChan
	mov	r0, r4	@, ChanID
	str	ip, [r2, #1256]	@ <variable>.s32KeepSPSPPS, <variable>.stSynExtraData.s32KeepSPSPPS
	bl	InitSyntaxCtx	@
	ldr	r3, [r5, r4, asl #2]	@ temp.6489, s_pstVfmwChan
	add	r1, r3, #250880	@, temp.6489,
	ldr	r0, [r3, #552]	@, <variable>.eVidStd
	add	r1, r1, #720	@,,
	bl	ReleaseCurPic	@
	ldr	r2, [r5, r4, asl #2]	@ tmp169, s_pstVfmwChan
	mov	r1, #416	@,
	add	r0, r2, #696	@, tmp169,
	bl	__memzero	@
	ldr	ip, [r5, r4, asl #2]	@ tmp171, s_pstVfmwChan
	mov	r0, #616	@ tmp172,
	mvn	r3, #0	@,
	mvn	r2, #0	@ tmp173,
	mov	r1, #624	@ tmp176,
	strd	r2, [ip, r0]	@ tmp173, tmp171, tmp172
	ldr	r0, [r5, r4, asl #2]	@ tmp175, s_pstVfmwChan
	strd	r2, [r0, r1]	@ tmp173, tmp175, tmp176
	ldr	ip, [r5, r4, asl #2]	@ tmp179, s_pstVfmwChan
	str	r6, [ip, #1112]	@ tmp150, <variable>.stSynExtraData.s32NewPicSegDetector
	ldr	r0, [r5, r4, asl #2]	@ prephitmp.6475, s_pstVfmwChan
	ldr	r1, [r0, #1424]	@ <variable>.stSynExtraData.stChanOption.u32DynamicFrameStoreAllocEn, <variable>.stSynExtraData.stChanOption.u32DynamicFrameStoreAllocEn
	cmp	r1, #1	@ <variable>.stSynExtraData.stChanOption.u32DynamicFrameStoreAllocEn,
	streq	r6, [r0, #1464]	@ tmp150, <variable>.stSynExtraData.s32WaitFsFlag
	ldreq	r0, [r5, r4, asl #2]	@ prephitmp.6475, s_pstVfmwChan
	ldr	r3, [r0, #552]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #18	@ <variable>.eVidStd,
	beq	.L2651	@,
	mov	r0, r4	@, ChanID
	bl	FSP_ResetInstance	@
.L2652:
	mov	r0, r4	@, ChanID
	bl	InitUsdPool	@
	ldr	r2, [r7, #0]	@ <variable>.s32KeepBS, <variable>.s32KeepBS
	cmp	r2, #0	@ <variable>.s32KeepBS,
	beq	.L2660	@,
.L2653:
	ldr	lr, [r5, #1372]	@ g_ResetCreateNewSave, g_ResetCreateNewSave
	cmp	lr, #0	@ g_ResetCreateNewSave,
	beq	.L2654	@,
	movw	r5, #:lower16:.LANCHOR3	@ tmp189,
	movt	r5, #:upper16:.LANCHOR3	@ tmp189,
	add	r5, r5, r4, asl #2	@, tmp192, tmp189, ChanID,
	str	r4, [fp, #-40]	@ ChanID, data
	ldr	r0, [r5, #3572]	@ tmp194, vfmw_save_str_file
	cmp	r0, #0	@ tmp194,
	beq	.L2655	@,
	sub	r6, fp, #40	@ data.559,,
	mov	r0, #512	@,
	mov	r1, r6	@, data.559
	bl	VCTRL_SetDbgOption	@
	ldr	ip, [r5, #3572]	@ tmp200, vfmw_save_str_file
	cmp	ip, #0	@ tmp200,
	beq	.L2655	@,
	mov	r1, r6	@, data.559
	mov	r0, #512	@,
	bl	VCTRL_SetDbgOption	@
.L2655:
	movw	r1, #:lower16:.LC318	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC318	@,
	bl	dprint_vfmw	@
.L2654:
	cmp	r8, #0	@ ChanIsRun,
	bne	.L2661	@,
.L2656:
	mov	r0, r4	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.51805,
.L2648:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L2660:
	mov	r0, r4	@, ChanID
	bl	SM_Reset	@
	b	.L2653	@
.L2661:
	mov	r0, r4	@, ChanID
	bl	VCTRL_StartChan	@
	b	.L2656	@
.L2651:
	mov	r0, r4	@, ChanID
	bl	FSP_EmptyInstance	@
	b	.L2652	@
.L2659:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC359	@,
	movw	r2, #3931	@,
	movt	r1, #:upper16:.LC359	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.51805,
	b	.L2648	@
.L2658:
	mov	r0, r3	@, D.51801
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #3927	@,
	movt	r1, #:upper16:.LC5	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r3, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.51805,
	b	.L2648	@
	.fnend
	.size	VCTRL_ResetChanWithOption, .-VCTRL_ResetChanWithOption
	.align	2
	.global	VID_EofState_Enum2Str
	.type	VID_EofState_Enum2Str, %function
VID_EofState_Enum2Str:
	.fnstart
.LFB1639:
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
	mov	r4, r1	@ strState, strState
	cmp	r0, #4	@ eState,
	ldrls	pc, [pc, r0, asl #2]	@ eState
	b	.L2663	@
.L2669:
	.word	.L2664
	.word	.L2665
	.word	.L2666
	.word	.L2667
	.word	.L2668
.L2668:
	mov	r0, r1	@, strState
	mov	r2, #7	@,
	movw	r1, #:lower16:.LC364	@,
	movt	r1, #:upper16:.LC364	@,
	bl	memcpy	@
	mov	ip, #0	@ tmp168,
	strb	ip, [r4, #7]	@ tmp168,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L2663:
	mov	r3, #0	@ tmp170,
	strb	r3, [r1, #0]	@ tmp170,* strState
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L2664:
	mov	r0, r1	@, strState
	mov	r2, #5	@,
	movw	r1, #:lower16:.LC360	@,
	movt	r1, #:upper16:.LC360	@,
	bl	memcpy	@
	mov	r3, #0	@ tmp140,
	strb	r3, [r4, #5]	@ tmp140,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L2665:
	mov	r0, r1	@, strState
	mov	r2, #8	@,
	movw	r1, #:lower16:.LC361	@,
	movt	r1, #:upper16:.LC361	@,
	bl	memcpy	@
	mov	r0, #0	@ tmp147,
	strb	r0, [r4, #8]	@ tmp147,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L2666:
	mov	r0, r1	@, strState
	mov	r2, #7	@,
	movw	r1, #:lower16:.LC362	@,
	movt	r1, #:upper16:.LC362	@,
	bl	memcpy	@
	mov	r1, #0	@ tmp154,
	strb	r1, [r4, #7]	@ tmp154,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L2667:
	mov	r0, r1	@, strState
	mov	r2, #7	@,
	movw	r1, #:lower16:.LC363	@,
	movt	r1, #:upper16:.LC363	@,
	bl	memcpy	@
	mov	r2, #0	@ tmp161,
	strb	r2, [r4, #7]	@ tmp161,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	VID_EofState_Enum2Str, .-VID_EofState_Enum2Str
	.align	2
	.global	VID_STD_Enum2Str
	.type	VID_STD_Enum2Str, %function
VID_STD_Enum2Str:
	.fnstart
.LFB1638:
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
	mov	r4, r1	@ strVidStd, strVidStd
	cmp	r0, #19	@ eVidStd,
	ldrls	pc, [pc, r0, asl #2]	@ eVidStd
	b	.L2673	@
.L2694:
	.word	.L2674
	.word	.L2675
	.word	.L2676
	.word	.L2677
	.word	.L2678
	.word	.L2679
	.word	.L2680
	.word	.L2681
	.word	.L2682
	.word	.L2683
	.word	.L2684
	.word	.L2685
	.word	.L2686
	.word	.L2687
	.word	.L2688
	.word	.L2689
	.word	.L2690
	.word	.L2691
	.word	.L2692
	.word	.L2693
.L2693:
	mov	r0, r1	@, strVidStd
	mov	r2, #8	@,
	movw	r1, #:lower16:.LC384	@,
	movt	r1, #:upper16:.LC384	@,
	bl	memcpy	@
	mov	ip, #0	@ tmp273,
	strb	ip, [r4, #8]	@ tmp273,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L2692:
	mov	r0, r1	@, strVidStd
	mov	r2, #4	@,
	movw	r1, #:lower16:.LC383	@,
	movt	r1, #:upper16:.LC383	@,
	bl	memcpy	@
	mov	r2, #0	@ tmp266,
	strb	r2, [r4, #4]	@ tmp266,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L2691:
	mov	r0, r1	@, strVidStd
	mov	r2, #3	@,
	movw	r1, #:lower16:.LC382	@,
	movt	r1, #:upper16:.LC382	@,
	bl	memcpy	@
	mov	r1, #0	@ tmp259,
	strb	r1, [r4, #3]	@ tmp259,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L2690:
	mov	r0, r1	@, strVidStd
	mov	r2, #4	@,
	movw	r1, #:lower16:.LC381	@,
	movt	r1, #:upper16:.LC381	@,
	bl	memcpy	@
	mov	r0, #0	@ tmp252,
	strb	r0, [r4, #4]	@ tmp252,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L2689:
	mov	r0, r1	@, strVidStd
	mov	r2, #3	@,
	movw	r1, #:lower16:.LC380	@,
	movt	r1, #:upper16:.LC380	@,
	bl	memcpy	@
	mov	r3, #0	@ tmp245,
	strb	r3, [r4, #3]	@ tmp245,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L2688:
	mov	r0, r1	@, strVidStd
	mov	r2, #8	@,
	movw	r1, #:lower16:.LC379	@,
	movt	r1, #:upper16:.LC379	@,
	bl	memcpy	@
	mov	ip, #0	@ tmp238,
	strb	ip, [r4, #8]	@ tmp238,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L2687:
	mov	r0, r1	@, strVidStd
	mov	r2, #3	@,
	movw	r1, #:lower16:.LC378	@,
	movt	r1, #:upper16:.LC378	@,
	bl	memcpy	@
	mov	r2, #0	@ tmp231,
	strb	r2, [r4, #3]	@ tmp231,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L2686:
	mov	r0, r1	@, strVidStd
	mov	r2, #4	@,
	movw	r1, #:lower16:.LC377	@,
	movt	r1, #:upper16:.LC377	@,
	bl	memcpy	@
	mov	r1, #0	@ tmp224,
	strb	r1, [r4, #4]	@ tmp224,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L2685:
	mov	r0, r1	@, strVidStd
	mov	r2, #4	@,
	movw	r1, #:lower16:.LC376	@,
	movt	r1, #:upper16:.LC376	@,
	bl	memcpy	@
	mov	r0, #0	@ tmp217,
	strb	r0, [r4, #4]	@ tmp217,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L2684:
	mov	r0, r1	@, strVidStd
	mov	r2, #3	@,
	movw	r1, #:lower16:.LC375	@,
	movt	r1, #:upper16:.LC375	@,
	bl	memcpy	@
	mov	r3, #0	@ tmp210,
	strb	r3, [r4, #3]	@ tmp210,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L2683:
	mov	r0, r1	@, strVidStd
	mov	r2, #5	@,
	movw	r1, #:lower16:.LC374	@,
	movt	r1, #:upper16:.LC374	@,
	bl	memcpy	@
	mov	ip, #0	@ tmp203,
	strb	ip, [r4, #5]	@ tmp203,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L2682:
	mov	r0, r1	@, strVidStd
	mov	r2, #5	@,
	movw	r1, #:lower16:.LC373	@,
	movt	r1, #:upper16:.LC373	@,
	bl	memcpy	@
	mov	r2, #0	@ tmp196,
	strb	r2, [r4, #5]	@ tmp196,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L2681:
	mov	r0, r1	@, strVidStd
	mov	r2, #4	@,
	movw	r1, #:lower16:.LC372	@,
	movt	r1, #:upper16:.LC372	@,
	bl	memcpy	@
	mov	r1, #0	@ tmp189,
	strb	r1, [r4, #4]	@ tmp189,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L2680:
	mov	r0, r1	@, strVidStd
	mov	r2, #3	@,
	movw	r1, #:lower16:.LC371	@,
	movt	r1, #:upper16:.LC371	@,
	bl	memcpy	@
	mov	r0, #0	@ tmp182,
	strb	r0, [r4, #3]	@ tmp182,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L2679:
	mov	r0, r1	@, strVidStd
	mov	r2, #5	@,
	movw	r1, #:lower16:.LC370	@,
	movt	r1, #:upper16:.LC370	@,
	bl	memcpy	@
	mov	r3, #0	@ tmp175,
	strb	r3, [r4, #5]	@ tmp175,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L2678:
	mov	r0, r1	@, strVidStd
	mov	r2, #4	@,
	movw	r1, #:lower16:.LC369	@,
	movt	r1, #:upper16:.LC369	@,
	bl	memcpy	@
	mov	ip, #0	@ tmp168,
	strb	ip, [r4, #4]	@ tmp168,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L2677:
	mov	r0, r1	@, strVidStd
	mov	r2, #5	@,
	movw	r1, #:lower16:.LC368	@,
	movt	r1, #:upper16:.LC368	@,
	bl	memcpy	@
	mov	r2, #0	@ tmp161,
	strb	r2, [r4, #5]	@ tmp161,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L2676:
	mov	r0, r1	@, strVidStd
	mov	r2, #5	@,
	movw	r1, #:lower16:.LC367	@,
	movt	r1, #:upper16:.LC367	@,
	bl	memcpy	@
	mov	r1, #0	@ tmp154,
	strb	r1, [r4, #5]	@ tmp154,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L2675:
	mov	r0, r1	@, strVidStd
	mov	r2, #3	@,
	movw	r1, #:lower16:.LC366	@,
	movt	r1, #:upper16:.LC366	@,
	bl	memcpy	@
	mov	r0, #0	@ tmp147,
	strb	r0, [r4, #3]	@ tmp147,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L2674:
	mov	r0, r1	@, strVidStd
	mov	r2, #4	@,
	movw	r1, #:lower16:.LC365	@,
	movt	r1, #:upper16:.LC365	@,
	bl	memcpy	@
	mov	r3, #0	@ tmp140,
	strb	r3, [r4, #4]	@ tmp140,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L2673:
	mov	r3, #0	@ tmp275,
	strb	r3, [r1, #0]	@ tmp275,* strVidStd
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	VID_STD_Enum2Str, .-VID_STD_Enum2Str
	.align	2
	.global	vfmw_read_proc_scd
	.type	vfmw_read_proc_scd, %function
vfmw_read_proc_scd:
	.fnstart
.LFB1645:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #40
	sub	sp, sp, #40	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r7, #:lower16:g_pScdDrvParamBase	@ tmp145,
	movt	r7, #:upper16:g_pScdDrvParamBase	@ tmp145,
	mov	r4, r0	@ p, p
	movw	r1, #:lower16:.LC385	@,
	movt	r1, #:upper16:.LC385	@,
	ldr	r5, [r7, #0]	@ pScdDrvParam, g_pScdDrvParamBase
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC66	@,
	movw	r2, #:lower16:.LC386	@,
	movt	r1, #:upper16:.LC66	@,
	ldr	r3, [r5, #76]	@, <variable>.IsScdDrvOpen
	movt	r2, #:upper16:.LC386	@,
	bl	seq_printf	@
	ldr	r3, [r5, #84]	@, <variable>.SCDState
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC66	@,
	movw	r2, #:lower16:.LC387	@,
	movt	r1, #:upper16:.LC66	@,
	movt	r2, #:upper16:.LC387	@,
	bl	seq_printf	@
	ldr	r3, [r5, #80]	@, <variable>.ThisInstID
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC66	@,
	movw	r2, #:lower16:.LC388	@,
	movt	r1, #:upper16:.LC66	@,
	movt	r2, #:upper16:.LC388	@,
	bl	seq_printf	@
	ldr	r3, [r5, #88]	@, <variable>.LastProcessTime
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC66	@,
	movw	r2, #:lower16:.LC389	@,
	movt	r1, #:upper16:.LC66	@,
	movt	r2, #:upper16:.LC389	@,
	bl	seq_printf	@
	ldr	r3, [r5, #0]	@, <variable>.ScdDrvMem.HwMemAddr
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC390	@,
	movw	r2, #:lower16:.LC391	@,
	movt	r1, #:upper16:.LC390	@,
	movt	r2, #:upper16:.LC391	@,
	bl	seq_printf	@
	ldr	r3, [r5, #4]	@, <variable>.ScdDrvMem.HwMemSize
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC66	@,
	movw	r2, #:lower16:.LC392	@,
	movt	r1, #:upper16:.LC66	@,
	movt	r2, #:upper16:.LC392	@,
	bl	seq_printf	@
	ldr	r3, [r5, #8]	@, <variable>.ScdDrvMem.DownMsgMemAddr
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC390	@,
	movw	r2, #:lower16:.LC393	@,
	movt	r1, #:upper16:.LC390	@,
	movt	r2, #:upper16:.LC393	@,
	bl	seq_printf	@
	ldr	r3, [r5, #20]	@, <variable>.ScdDrvMem.UpMsgMemAddr
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC390	@,
	movw	r2, #:lower16:.LC394	@,
	movt	r1, #:upper16:.LC390	@,
	movt	r2, #:upper16:.LC394	@,
	bl	seq_printf	@
	movw	r0, #:lower16:g_pSmIISBase	@ tmp173,
	movt	r0, #:upper16:g_pSmIISBase	@ tmp173,
	movw	r3, #:lower16:.LANCHOR0	@ tmp171,
	movt	r3, #:upper16:.LANCHOR0	@ tmp171,
	ldr	r2, [r0, #0]	@ g_pSmIISBase, g_pSmIISBase
	ldr	r7, [r3, #1364]	@ i, g_CurProcChan
	ldr	r5, [r2, #40]	@ pInst, <variable>.pSmInstArray
	cmp	r5, #0	@ pInst,
	beq	.L2698	@,
	movw	ip, #:lower16:190880	@ tmp174,
	movt	ip, #:upper16:190880	@ tmp174,
	ldr	r1, [r5, ip]	@ <variable>.Mode, <variable>.Mode
	cmp	r1, #0	@ <variable>.Mode,
	bne	.L2704	@,
.L2698:
	mov	r0, #0	@,
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L2704:
	add	r6, r5, #208	@ D.54774, pInst,
	sub	r1, fp, #36	@,,
	mov	r0, r6	@, D.54774
	bl	GetRawStreamSize	@
	cmp	r0, #0	@,
	bne	.L2705	@,
	mov	r0, r6	@, D.54774
	sub	r1, fp, #32	@,,
	bl	GetRawStreamNum	@
	cmp	r0, #0	@,
	bne	.L2706	@,
.L2700:
	add	r6, r5, #98304	@ D.54782, pInst,
	sub	r1, fp, #44	@,,
	add	r6, r6, #232	@ D.54782, D.54782,
	mov	r0, r6	@, D.54782
	bl	GetSegStreamSize	@
	cmp	r0, #0	@,
	bne	.L2707	@,
.L2701:
	mov	r0, r6	@, D.54782
	sub	r1, fp, #40	@,,
	bl	GetSegStreamNum	@
	cmp	r0, #0	@,
	bne	.L2708	@,
.L2702:
	sub	r6, fp, #64	@ tmp194,,
	ldr	r0, [r5, #56]	@, <variable>.Config.VidStd
	mov	r1, r6	@, tmp194
	bl	VID_STD_Enum2Str	@
	mov	r2, r7	@, i
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC395	@,
	movt	r1, #:upper16:.LC395	@,
	bl	seq_printf	@
	movw	ip, #:lower16:190880	@ tmp198,
	movt	ip, #:upper16:190880	@ tmp198,
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC66	@,
	movw	r2, #:lower16:.LC396	@,
	ldr	r3, [r5, ip]	@, <variable>.Mode
	movt	r1, #:upper16:.LC66	@,
	movt	r2, #:upper16:.LC396	@,
	bl	seq_printf	@
	mov	r3, r6	@, tmp194
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC397	@,
	movw	r2, #:lower16:.LC398	@,
	movt	r1, #:upper16:.LC397	@,
	movt	r2, #:upper16:.LC398	@,
	bl	seq_printf	@
	ldrsb	r3, [r5, #1]	@, <variable>.IsCounting
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC66	@,
	movw	r2, #:lower16:.LC399	@,
	movt	r1, #:upper16:.LC66	@,
	movt	r2, #:upper16:.LC399	@,
	bl	seq_printf	@
	ldr	r3, [r5, #96]	@, <variable>.Config.IsOmxPath
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC66	@,
	movw	r2, #:lower16:.LC400	@,
	movt	r1, #:upper16:.LC66	@,
	movt	r2, #:upper16:.LC400	@,
	bl	seq_printf	@
	ldr	r3, [r5, #60]	@, <variable>.Config.BufPhyAddr
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC390	@,
	movw	r2, #:lower16:.LC401	@,
	movt	r1, #:upper16:.LC390	@,
	movt	r2, #:upper16:.LC401	@,
	bl	seq_printf	@
	ldr	r3, [r5, #64]	@, <variable>.Config.BufSize
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC66	@,
	movw	r2, #:lower16:.LC402	@,
	movt	r1, #:upper16:.LC66	@,
	movt	r2, #:upper16:.LC402	@,
	bl	seq_printf	@
	movw	r3, #:lower16:204760	@ tmp217,
	movt	r3, #:upper16:204760	@ tmp217,
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC66	@,
	movw	r2, #:lower16:.LC403	@,
	ldr	r3, [r5, r3]	@, <variable>.u32RawSizeCount
	movt	r1, #:upper16:.LC66	@,
	movt	r2, #:upper16:.LC403	@,
	bl	seq_printf	@
	movw	r2, #:lower16:204764	@ tmp221,
	movt	r2, #:upper16:204764	@ tmp221,
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC66	@,
	movt	r1, #:upper16:.LC66	@,
	ldr	r3, [r5, r2]	@, <variable>.u32RawNumCount
	movw	r2, #:lower16:.LC404	@,
	movt	r2, #:upper16:.LC404	@,
	bl	seq_printf	@
	ldr	r3, [fp, #-36]	@, RawSize
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC66	@,
	movw	r2, #:lower16:.LC405	@,
	movt	r1, #:upper16:.LC66	@,
	movt	r2, #:upper16:.LC405	@,
	bl	seq_printf	@
	ldr	r3, [fp, #-32]	@, RawNum
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC66	@,
	movw	r2, #:lower16:.LC406	@,
	movt	r1, #:upper16:.LC66	@,
	movt	r2, #:upper16:.LC406	@,
	bl	seq_printf	@
	ldr	r3, [fp, #-44]	@, SegSize
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC66	@,
	movw	r2, #:lower16:.LC407	@,
	movt	r1, #:upper16:.LC66	@,
	movt	r2, #:upper16:.LC407	@,
	bl	seq_printf	@
	ldr	r3, [fp, #-40]	@, SegNum
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC66	@,
	movw	r2, #:lower16:.LC408	@,
	movt	r1, #:upper16:.LC66	@,
	movt	r2, #:upper16:.LC408	@,
	bl	seq_printf	@
	movw	ip, #:lower16:190728	@ tmp237,
	movt	ip, #:upper16:190728	@ tmp237,
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC390	@,
	movw	r2, #:lower16:.LC409	@,
	ldr	r3, [r5, ip]	@, <variable>.StreamSegArray.SegBufReadAddr
	movt	r1, #:upper16:.LC390	@,
	movt	r2, #:upper16:.LC409	@,
	bl	seq_printf	@
	movw	r3, #:lower16:190732	@ tmp241,
	movt	r3, #:upper16:190732	@ tmp241,
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC390	@,
	movw	r2, #:lower16:.LC410	@,
	ldr	r3, [r5, r3]	@, <variable>.StreamSegArray.SegBufWriteAddr
	movt	r1, #:upper16:.LC390	@,
	movt	r2, #:upper16:.LC410	@,
	bl	seq_printf	@
	movw	r2, #:lower16:204744	@ tmp245,
	movt	r2, #:upper16:204744	@ tmp245,
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC411	@,
	movt	r1, #:upper16:.LC411	@,
	ldr	r3, [r5, r2]	@, <variable>.BitRate
	movw	r2, #:lower16:.LC412	@,
	movt	r2, #:upper16:.LC412	@,
	bl	seq_printf	@
	mov	r0, r4	@, p
	movw	r1, #:lower16:.LC71	@,
	movt	r1, #:upper16:.LC71	@,
	bl	seq_printf	@
	b	.L2698	@
.L2705:
	ldr	r2, .L2709	@,
	movw	r3, #9127	@,
	movw	r1, #:lower16:.LC163	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC163	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@, D.54774
	sub	r1, fp, #32	@,,
	bl	GetRawStreamNum	@
	cmp	r0, #0	@,
	beq	.L2700	@,
.L2706:
	add	r6, r5, #98304	@ D.54782, pInst,
	ldr	r2, .L2709	@,
	add	r6, r6, #232	@ D.54782, D.54782,
	movw	r3, #9132	@,
	movw	r1, #:lower16:.LC163	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC163	@,
	bl	dprint_vfmw	@
	sub	r1, fp, #44	@,,
	mov	r0, r6	@, D.54782
	bl	GetSegStreamSize	@
	cmp	r0, #0	@,
	beq	.L2701	@,
.L2707:
	ldr	r2, .L2709	@,
	movw	r3, #9137	@,
	movw	r1, #:lower16:.LC163	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC163	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@, D.54782
	sub	r1, fp, #40	@,,
	bl	GetSegStreamNum	@
	cmp	r0, #0	@,
	beq	.L2702	@,
.L2708:
	movw	r1, #:lower16:.LC163	@,
	ldr	r2, .L2709	@,
	movt	r1, #:upper16:.LC163	@,
	movw	r3, #9142	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	b	.L2702	@
.L2710:
	.align	2
.L2709:
	.word	.LANCHOR1+492
	.fnend
	.size	vfmw_read_proc_scd, .-vfmw_read_proc_scd
	.global	__aeabi_uidiv
	.align	2
	.global	vfmw_read_proc_dec
	.type	vfmw_read_proc_dec, %function
vfmw_read_proc_dec:
	.fnstart
.LFB1647:
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #116
	sub	sp, sp, #116	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r9, #:lower16:.LANCHOR0	@ tmp493,
	movt	r9, #:upper16:.LANCHOR0	@ tmp493,
	movw	r1, #:lower16:.LC413	@,
	movt	r1, #:upper16:.LC413	@,
	mov	r4, #0	@ tmp165,
	ldr	r2, [r9, #1364]	@, g_CurProcChan
	movw	r6, #16718	@ tmp164,
	str	r4, [fp, #-64]	@ tmp165, szAttach
	mov	r5, r0	@ p, p
	str	r6, [fp, #-68]	@ tmp164, szAttach
	str	r4, [fp, #-60]	@ tmp165, szAttach
	bl	seq_printf	@
	ldr	r6, [r9, #1364]	@ i, g_CurProcChan
	movw	r3, #:lower16:s_pFspInst	@ tmp172,
	movt	r3, #:upper16:s_pFspInst	@ tmp172,
	str	r4, [fp, #-48]	@ tmp165, RefNum
	ldr	r8, [r3, r6, asl #2]	@ pFsp, s_pFspInst
	cmp	r8, r4	@ pFsp,
	beq	.L2712	@,
	ldr	sl, [r9, r6, asl #2]	@ pChan, s_pstVfmwChan
	cmp	sl, r4	@ pChan,
	beq	.L2712	@,
	movw	r7, #:lower16:g_ChanCtx	@ tmp176,
	add	r2, r6, #32	@ tmp177, i,
	movt	r7, #:upper16:g_ChanCtx	@ tmp176,
	str	r4, [fp, #-56]	@ tmp165, NewNum
	str	r4, [fp, #-52]	@ tmp165, ReadNum
	ldr	r1, [r7, r2, asl #2]	@ tmp178, g_ChanCtx.ChanDecByVdhPlusOne
	subs	r0, r1, #1	@, tmp178,
	str	r0, [fp, #-116]	@, %sfp
	bmi	.L2741	@,
	ldr	r1, [fp, #-116]	@, %sfp
	movw	r4, #:lower16:g_VdmExtParam	@ tmp186,
	movt	r4, #:upper16:g_VdmExtParam	@ tmp186,
	mov	r2, #140	@ tmp189,
	mla	r7, r2, r1, r4	@ tmp190, tmp189,, tmp186
	ldr	r0, [r7, #4]	@ <variable>.VdmAttachStr.VdmAttachMode, <variable>.VdmAttachStr.VdmAttachMode
	cmp	r0, #0	@ <variable>.VdmAttachStr.VdmAttachMode,
	beq	.L2742	@,
	movw	r2, #:lower16:.LC416	@ tmp200,
	movt	r2, #:upper16:.LC416	@ tmp200,
	sub	r1, fp, #68	@,,
	str	r1, [fp, #-112]	@, %sfp
	ldmia	r2, {r0, r1}	@ tmp200,,
	mov	r4, r1, lsr #16	@ tmp203,,
	strb	r4, [fp, #-62]	@ tmp203, szAttach
	str	r0, [fp, #-68]	@, szAttach
	strh	r1, [fp, #-64]	@ movhi	@, szAttach
.L2714:
	sub	r2, fp, #52	@,,
	sub	r1, fp, #48	@,,
	sub	r3, fp, #56	@,,
	mov	r0, r6	@, i
	bl	VCTRL_GetChanImgNum	@
	mov	r0, r6	@, i
	bl	VCTRL_GetChanVoQue	@
	sub	r7, fp, #88	@ tmp209,,
	sub	r4, fp, #108	@ tmp211,,
	cmp	r0, #0	@ pstDecQue
	streq	r0, [fp, #-120]	@ pstDecQue, %sfp
	streq	r0, [fp, #-124]	@ pstDecQue, %sfp
	ldrneh	r1, [r0, #8]	@, <variable>.tail
	streq	r0, [fp, #-128]	@ pstDecQue, %sfp
	strne	r1, [fp, #-120]	@, %sfp
	mov	r1, r7	@, tmp209
	ldrneh	r2, [r0, #4]	@, <variable>.history
	strne	r2, [fp, #-128]	@, %sfp
	ldrneh	r0, [r0, #6]	@, <variable>.head
	strne	r0, [fp, #-124]	@, %sfp
	ldr	r0, [sl, #552]	@, <variable>.eVidStd
	bl	VID_STD_Enum2Str	@
	ldr	r0, [sl, #344]	@, <variable>.eLastFrameState
	mov	r1, r4	@, tmp211
	bl	VID_EofState_Enum2Str	@
	ldr	ip, [fp, #-112]	@, %sfp
	ldr	r3, [fp, #-116]	@, %sfp
	mov	r0, r5	@, p
	movw	r1, #:lower16:.LC417	@,
	movw	r2, #:lower16:.LC418	@,
	movt	r1, #:upper16:.LC417	@,
	movt	r2, #:upper16:.LC418	@,
	str	ip, [sp, #0]	@,
	bl	seq_printf	@
	ldr	r3, [sl, #12]	@, <variable>.s32IsOpen
	mov	r0, r5	@, p
	movw	r1, #:lower16:.LC66	@,
	movw	r2, #:lower16:.LC419	@,
	movt	r1, #:upper16:.LC66	@,
	movt	r2, #:upper16:.LC419	@,
	bl	seq_printf	@
	ldr	r3, [sl, #16]	@, <variable>.s32IsRun
	mov	r0, r5	@, p
	movw	r1, #:lower16:.LC66	@,
	movw	r2, #:lower16:.LC420	@,
	movt	r1, #:upper16:.LC66	@,
	movt	r2, #:upper16:.LC420	@,
	bl	seq_printf	@
	ldr	r3, [sl, #24]	@, <variable>.s32Priority
	mov	r0, r5	@, p
	movw	r1, #:lower16:.LC66	@,
	movw	r2, #:lower16:.LC421	@,
	movt	r1, #:upper16:.LC66	@,
	movt	r2, #:upper16:.LC421	@,
	bl	seq_printf	@
	mov	r3, r7	@, tmp209
	mov	r0, r5	@, p
	movw	r1, #:lower16:.LC397	@,
	movw	r2, #:lower16:.LC422	@,
	movt	r1, #:upper16:.LC397	@,
	movt	r2, #:upper16:.LC422	@,
	bl	seq_printf	@
	ldr	r3, [sl, #40]	@, <variable>.eChanCapLevel
	mov	r0, r5	@, p
	movw	r1, #:lower16:.LC66	@,
	movw	r2, #:lower16:.LC423	@,
	movt	r1, #:upper16:.LC66	@,
	movt	r2, #:upper16:.LC423	@,
	bl	seq_printf	@
	mov	r3, r4	@, tmp211
	mov	r0, r5	@, p
	movw	r1, #:lower16:.LC397	@,
	movw	r2, #:lower16:.LC424	@,
	movt	r1, #:upper16:.LC397	@,
	movt	r2, #:upper16:.LC424	@,
	bl	seq_printf	@
	ldr	r3, [sl, #128]	@, <variable>.stChanCfg.s32IsOmxPath
	mov	r0, r5	@, p
	movw	r1, #:lower16:.LC66	@,
	movw	r2, #:lower16:.LC425	@,
	movt	r1, #:upper16:.LC66	@,
	movt	r2, #:upper16:.LC425	@,
	bl	seq_printf	@
	ldr	r3, [sl, #72]	@, <variable>.stChanCfg.s32DecMode
	mov	r0, r5	@, p
	movw	r1, #:lower16:.LC66	@,
	movw	r2, #:lower16:.LC426	@,
	movt	r1, #:upper16:.LC66	@,
	movt	r2, #:upper16:.LC426	@,
	bl	seq_printf	@
	ldr	r3, [sl, #76]	@, <variable>.stChanCfg.s32DecOrderOutput
	mov	r0, r5	@, p
	movw	r1, #:lower16:.LC66	@,
	movw	r2, #:lower16:.LC427	@,
	movt	r1, #:upper16:.LC66	@,
	movt	r2, #:upper16:.LC427	@,
	bl	seq_printf	@
	ldr	r3, [sl, #64]	@, <variable>.stChanCfg.s32ChanErrThr
	mov	r0, r5	@, p
	movw	r1, #:lower16:.LC66	@,
	movw	r2, #:lower16:.LC428	@,
	movt	r1, #:upper16:.LC66	@,
	movt	r2, #:upper16:.LC428	@,
	bl	seq_printf	@
	ldr	r3, [sl, #68]	@, <variable>.stChanCfg.s32ChanStrmOFThr
	mov	r0, r5	@, p
	movw	r1, #:lower16:.LC66	@,
	movw	r2, #:lower16:.LC429	@,
	movt	r1, #:upper16:.LC66	@,
	movt	r2, #:upper16:.LC429	@,
	bl	seq_printf	@
	ldr	r3, [sl, #552]	@ temp.6619, <variable>.eVidStd
	cmp	r3, #1	@ temp.6619,
	beq	.L2743	@,
	sub	r0, r3, #10	@ tmp258, temp.6619,
	cmp	r0, #2	@ tmp258,
	bls	.L2744	@,
	cmp	r3, #2	@ temp.6619,
	beq	.L2745	@,
	cmp	r3, #18	@ temp.6619,
	beq	.L2746	@,
.L2719:
	mov	r0, r5	@, p
	movw	r1, #:lower16:.LC71	@,
	movt	r1, #:upper16:.LC71	@,
	bl	seq_printf	@
	ldr	r3, [sl, #228]	@, <variable>.stChanMem_vdh.PhyAddr
	mov	r0, r5	@, p
	movw	r1, #:lower16:.LC390	@,
	movw	r2, #:lower16:.LC437	@,
	movt	r1, #:upper16:.LC390	@,
	movt	r2, #:upper16:.LC437	@,
	bl	seq_printf	@
	ldr	r3, [sl, #232]	@, <variable>.stChanMem_vdh.Length
	mov	r0, r5	@, p
	movw	r1, #:lower16:.LC66	@,
	movw	r2, #:lower16:.LC438	@,
	movt	r1, #:upper16:.LC66	@,
	movt	r2, #:upper16:.LC438	@,
	bl	seq_printf	@
	ldr	r3, [sl, #244]	@, <variable>.stChanMem_scd.PhyAddr
	mov	r0, r5	@, p
	movw	r1, #:lower16:.LC390	@,
	movw	r2, #:lower16:.LC439	@,
	movt	r1, #:upper16:.LC390	@,
	movt	r2, #:upper16:.LC439	@,
	bl	seq_printf	@
	ldr	r3, [sl, #248]	@, <variable>.stChanMem_scd.Length
	mov	r0, r5	@, p
	movw	r1, #:lower16:.LC66	@,
	movw	r2, #:lower16:.LC440	@,
	movt	r1, #:upper16:.LC66	@,
	movt	r2, #:upper16:.LC440	@,
	bl	seq_printf	@
	ldr	r3, [sl, #260]	@, <variable>.stChanMem_ctx.PhyAddr
	mov	r0, r5	@, p
	movw	r1, #:lower16:.LC390	@,
	movw	r2, #:lower16:.LC441	@,
	movt	r1, #:upper16:.LC390	@,
	movt	r2, #:upper16:.LC441	@,
	bl	seq_printf	@
	ldr	r3, [sl, #264]	@, <variable>.stChanMem_ctx.Length
	mov	r0, r5	@, p
	movw	r1, #:lower16:.LC66	@,
	movw	r2, #:lower16:.LC442	@,
	movt	r1, #:upper16:.LC66	@,
	movt	r2, #:upper16:.LC442	@,
	bl	seq_printf	@
	mov	r0, r5	@, p
	movw	r1, #:lower16:.LC71	@,
	movt	r1, #:upper16:.LC71	@,
	bl	seq_printf	@
	ldr	r7, [fp, #-52]	@ ReadNum, ReadNum
	ldr	ip, [fp, #-56]	@ NewNum, NewNum
	mov	r0, r5	@, p
	ldr	r3, [fp, #-48]	@, RefNum
	movw	r1, #:lower16:.LC443	@,
	movw	r2, #:lower16:.LC444	@,
	movt	r1, #:upper16:.LC443	@,
	movt	r2, #:upper16:.LC444	@,
	stmia	sp, {r7, ip}	@ phole stm
	bl	seq_printf	@
	ldr	ip, [fp, #-120]	@, %sfp
	mov	r0, r5	@, p
	ldr	r7, [fp, #-124]	@, %sfp
	movw	r1, #:lower16:.LC445	@,
	ldr	r3, [fp, #-128]	@, %sfp
	movt	r1, #:upper16:.LC445	@,
	movw	r2, #:lower16:.LC446	@,
	movt	r2, #:upper16:.LC446	@,
	stmia	sp, {r7, ip}	@ phole stm
	bl	seq_printf	@
	ldr	r3, [sl, #568]	@, <variable>.stSynExtraData.s32DecMode
	mov	r0, r5	@, p
	movw	r1, #:lower16:.LC66	@,
	movw	r2, #:lower16:.LC447	@,
	movt	r1, #:upper16:.LC66	@,
	movt	r2, #:upper16:.LC447	@,
	bl	seq_printf	@
	ldr	r3, [sl, #572]	@, <variable>.stSynExtraData.s32DecOrderOutput
	mov	r0, r5	@, p
	movw	r1, #:lower16:.LC66	@,
	movw	r2, #:lower16:.LC448	@,
	movt	r1, #:upper16:.LC66	@,
	movt	r2, #:upper16:.LC448	@,
	bl	seq_printf	@
	ldr	r3, [sl, #328]	@, <variable>.stRecentImgformat
	mov	r0, r5	@, p
	movw	r1, #:lower16:.LC390	@,
	movw	r2, #:lower16:.LC449	@,
	movt	r1, #:upper16:.LC390	@,
	movt	r2, #:upper16:.LC449	@,
	bl	seq_printf	@
	ldr	r3, [sl, #332]	@, <variable>.stRecentImgPackingType
	mov	r0, r5	@, p
	movw	r1, #:lower16:.LC66	@,
	movw	r2, #:lower16:.LC450	@,
	movt	r1, #:upper16:.LC66	@,
	movt	r2, #:upper16:.LC450	@,
	bl	seq_printf	@
	mov	r0, r5	@, p
	movw	r1, #:lower16:.LC71	@,
	movt	r1, #:upper16:.LC71	@,
	bl	seq_printf	@
	mov	r0, r5	@, p
	movw	r1, #:lower16:.LC451	@,
	movt	r1, #:upper16:.LC451	@,
	bl	seq_printf	@
	ldr	r3, [r8, #68]	@, <variable>.stInstCfg.s32DecFsWidth
	mov	r0, r5	@, p
	movw	r1, #:lower16:.LC66	@,
	movw	r2, #:lower16:.LC452	@,
	movt	r1, #:upper16:.LC66	@,
	movt	r2, #:upper16:.LC452	@,
	bl	seq_printf	@
	ldr	r3, [r8, #72]	@, <variable>.stInstCfg.s32DecFsHeight
	mov	r0, r5	@, p
	movw	r1, #:lower16:.LC66	@,
	movw	r2, #:lower16:.LC453	@,
	movt	r1, #:upper16:.LC66	@,
	movt	r2, #:upper16:.LC453	@,
	bl	seq_printf	@
	ldr	r3, [r8, #84]	@, <variable>.stInstCfg.s32DispFsWidth
	mov	r0, r5	@, p
	movw	r1, #:lower16:.LC66	@,
	movw	r2, #:lower16:.LC454	@,
	movt	r1, #:upper16:.LC66	@,
	movt	r2, #:upper16:.LC454	@,
	bl	seq_printf	@
	ldr	r3, [r8, #88]	@, <variable>.stInstCfg.s32DispFsHeight
	mov	r0, r5	@, p
	movw	r1, #:lower16:.LC66	@,
	movw	r2, #:lower16:.LC455	@,
	movt	r1, #:upper16:.LC66	@,
	movt	r2, #:upper16:.LC455	@,
	bl	seq_printf	@
	ldrsb	r3, [r8, #61]	@, <variable>.stInstCfg.s32ExpectedDecFsNum
	mov	r0, r5	@, p
	movw	r1, #:lower16:.LC66	@,
	movw	r2, #:lower16:.LC456	@,
	movt	r1, #:upper16:.LC66	@,
	movt	r2, #:upper16:.LC456	@,
	bl	seq_printf	@
	ldrsb	r3, [r8, #9]	@, <variable>.s8TotalValidFsNum
	mov	r0, r5	@, p
	movw	r1, #:lower16:.LC66	@,
	movw	r2, #:lower16:.LC457	@,
	movt	r1, #:upper16:.LC66	@,
	movt	r2, #:upper16:.LC457	@,
	bl	seq_printf	@
	ldrsb	r3, [r8, #13]	@, <variable>.s32PmvNum
	mov	r0, r5	@, p
	movw	r1, #:lower16:.LC66	@,
	movw	r2, #:lower16:.LC458	@,
	movt	r1, #:upper16:.LC66	@,
	movt	r2, #:upper16:.LC458	@,
	bl	seq_printf	@
	ldrb	r3, [r8, #56]	@ zero_extendqisi2	@ D.54952, <variable>.stInstCfg.s32DispLoopEnable
	cmp	r3, #0	@ D.54952,
	bne	.L2747	@,
.L2722:
	ldrsb	r3, [r8, #10]	@, <variable>.s32DecFsNum
	mov	r0, r5	@, p
	movw	r1, #:lower16:.LC66	@,
	movw	r2, #:lower16:.LC464	@,
	movt	r1, #:upper16:.LC66	@,
	movt	r2, #:upper16:.LC464	@,
	bl	seq_printf	@
	ldrsb	r3, [r8, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r3, #0	@ <variable>.s32DecFsNum,
	addgt	r4, r8, #34816	@ ivtmp.6609, pFsp,
	movgt	r6, #0	@ j.6625,
	addgt	r4, r4, #156	@ ivtmp.6609, ivtmp.6609,
	ble	.L2727	@,
.L2728:
	ldrsb	r2, [r4, #0]	@, <variable>.IsDecRef
	mov	r0, r5	@, p
	ldrsb	r3, [r4, #2]	@, <variable>.DispState
	movw	r1, #:lower16:.LC463	@,
	movt	r1, #:upper16:.LC463	@,
	add	r6, r6, #1	@ j.6625, j.6625,
	bl	seq_printf	@
	ldrsb	r2, [r8, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	r4, r4, #60	@ ivtmp.6609, ivtmp.6609,
	cmp	r2, r6	@ <variable>.s32DecFsNum, j.6625
	ble	.L2727	@,
	tst	r6, #15	@ j.6625,
	bne	.L2728	@,
	movw	r1, #:lower16:.LC71	@,
	mov	r0, r5	@, p
	movt	r1, #:upper16:.LC71	@,
	bl	seq_printf	@
	b	.L2728	@
.L2751:
	mov	r0, r5	@, p
	movw	r1, #:lower16:.LC71	@,
	movt	r1, #:upper16:.LC71	@,
	bl	seq_printf	@
	ldr	r4, [sl, #1424]	@ <variable>.stSynExtraData.stChanOption.u32DynamicFrameStoreAllocEn, <variable>.stSynExtraData.stChanOption.u32DynamicFrameStoreAllocEn
	cmp	r4, #1	@ <variable>.stSynExtraData.stChanOption.u32DynamicFrameStoreAllocEn,
	beq	.L2748	@,
.L2735:
	mov	r0, r5	@, p
	movw	r1, #:lower16:.LC71	@,
	movt	r1, #:upper16:.LC71	@,
	movw	r6, #:lower16:-858993459	@ tmp433,
	bl	seq_printf	@
	mov	r0, r5	@, p
	movw	r1, #:lower16:.LC475	@,
	movt	r1, #:upper16:.LC475	@,
	bl	seq_printf	@
	ldr	r1, [r9, #1468]	@ <variable>.u32FrFrameRate, <variable>.u32FrFrameRate
	movt	r6, #:upper16:-858993459	@ tmp433,
	movw	r2, #:lower16:.LANCHOR0	@ tmp429,
	movt	r2, #:upper16:.LANCHOR0	@ tmp429,
	umull	r0, r3, r6, r1	@, tmp432, tmp433, <variable>.u32FrFrameRate
	ldr	r6, [r9, #1388]	@ D.55000, <variable>.u32VaVdmLoad
	movs	r7, r3, lsr #3	@ VdhFps, tmp432,
	beq	.L2736	@,
	ldr	r4, [r8, #68]	@ temp.6628, <variable>.stInstCfg.s32DecFsWidth
	add	sl, r4, #15	@ tmp434, temp.6628,
	cmp	sl, #30	@ tmp434,
	bls	.L2736	@,
	ldr	r8, [r8, #72]	@ temp.6629, <variable>.stInstCfg.s32DecFsHeight
	add	r3, r8, #15	@ tmp435, temp.6629,
	cmp	r3, #30	@ tmp435,
	bhi	.L2749	@,
.L2736:
	mov	r8, #0	@ VdhCycle,
.L2737:
	movw	r4, #:lower16:-858993459	@ tmp463,
	movt	r4, #:upper16:-858993459	@ tmp463,
	mov	r3, #0	@,
	mov	r0, r5	@, p
	umull	r1, lr, r4, r6	@, tmp462, tmp463, D.55000
	movw	r2, #:lower16:.LC477	@,
	movw	r1, #:lower16:.LC476	@,
	movt	r2, #:upper16:.LC477	@,
	movt	r1, #:upper16:.LC476	@,
	mov	ip, lr, lsr #3	@ tmp461, tmp462,
	str	ip, [sp, #0]	@ tmp461,
	add	lr, ip, ip, asl #2	@, tmp469, tmp461, tmp461,
	sub	ip, r6, lr, asl #1	@ tmp471, D.55000, tmp469,
	str	ip, [sp, #4]	@ tmp471,
	bl	seq_printf	@
	ldr	ip, [r9, #1468]	@ <variable>.u32FrFrameRate, <variable>.u32FrFrameRate
	mov	r3, r7	@, VdhFps
	mov	r0, r5	@, p
	movw	r1, #:lower16:.LC478	@,
	movt	r1, #:upper16:.LC478	@,
	umull	r2, lr, r4, ip	@, tmp477, tmp463, <variable>.u32FrFrameRate
	movw	r2, #:lower16:.LC479	@,
	movt	r2, #:upper16:.LC479	@,
	mov	r4, #0	@ tmp484,
	str	r4, [sp, #4]	@ tmp484,
	mov	lr, lr, lsr #3	@ tmp475, tmp477,
	add	lr, lr, lr, asl #2	@, tmp481, tmp475, tmp475,
	sub	ip, ip, lr, asl #1	@ tmp483, <variable>.u32FrFrameRate, tmp481,
	str	ip, [sp, #0]	@ tmp483,
	bl	seq_printf	@
	mov	r0, r5	@, p
	mov	r3, r8	@, VdhCycle
	movw	r1, #:lower16:.LC480	@,
	movw	r2, #:lower16:.LC481	@,
	movt	r1, #:upper16:.LC480	@,
	movt	r2, #:upper16:.LC481	@,
	bl	seq_printf	@
	movw	r1, #:lower16:.LC71	@,
	mov	r0, r5	@, p
	movt	r1, #:upper16:.LC71	@,
	bl	seq_printf	@
.L2712:
	mov	r0, #0	@,
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L2742:
	movw	r7, #:lower16:.LC415	@ tmp194,
	movt	r7, #:upper16:.LC415	@ tmp194,
	sub	r0, fp, #68	@,,
	str	r0, [fp, #-112]	@, %sfp
	ldmia	r7, {r0, r1, r2}	@ tmp194,,,
	ldr	lr, [fp, #-112]	@, %sfp
	mov	r3, r2, lsr #16	@ tmp197,,
	strb	r3, [fp, #-58]	@ tmp197, szAttach
	stmia	lr!, {r0, r1}	@,,
	strh	r2, [lr, #0]	@ movhi	@, szAttach
	b	.L2714	@
.L2727:
	mov	r0, r5	@, p
	movw	r1, #:lower16:.LC71	@,
	movt	r1, #:upper16:.LC71	@,
	mov	r4, r8	@ ivtmp.6605, pFsp
	bl	seq_printf	@
	mov	r0, r5	@, p
	movw	r1, #:lower16:.LC66	@,
	movw	r2, #:lower16:.LC465	@,
	movt	r1, #:upper16:.LC66	@,
	movt	r2, #:upper16:.LC465	@,
	mov	r3, #64	@,
	mov	r7, #1	@ ivtmp.6602,
	bl	seq_printf	@
	mov	r6, #0	@ ivtmp.6601,
	b	.L2731	@
.L2752:
	tst	r6, #15	@ ivtmp.6601,
	beq	.L2750	@,
.L2733:
	ldrsb	r2, [r4, #96]	@, <variable>.s32IsRef
	mov	r0, r5	@, p
	ldrsb	r3, [r4, #97]	@, <variable>.s32DispState
	movw	r1, #:lower16:.LC463	@,
	movt	r1, #:upper16:.LC463	@,
	bl	seq_printf	@
	cmp	r7, #63	@ ivtmp.6602,
	bgt	.L2751	@,
.L2734:
	add	r6, r6, #1	@ ivtmp.6601, ivtmp.6601,
	add	r7, r7, #1	@ ivtmp.6602, ivtmp.6602,
	add	r4, r4, #544	@ ivtmp.6605, ivtmp.6605,
.L2731:
	cmp	r6, #0	@ ivtmp.6601,
	movw	r1, #:lower16:.LC463	@,
	mov	r0, r5	@, p
	movt	r1, #:upper16:.LC463	@,
	bne	.L2752	@,
	ldrsb	r2, [r4, #96]	@, <variable>.s32IsRef
	ldrsb	r3, [r4, #97]	@, <variable>.s32DispState
	bl	seq_printf	@
	b	.L2734	@
.L2750:
	movw	r1, #:lower16:.LC71	@,
	movt	r1, #:upper16:.LC71	@,
	bl	seq_printf	@
	b	.L2733	@
.L2747:
	sxtb	r3, r3	@, D.54952
	mov	r0, r5	@, p
	movw	r1, #:lower16:.LC459	@,
	movw	r2, #:lower16:.LC460	@,
	movt	r1, #:upper16:.LC459	@,
	movt	r2, #:upper16:.LC460	@,
	bl	seq_printf	@
	ldrsb	r3, [r8, #63]	@, <variable>.stInstCfg.s32ExpectedDispFsNum
	mov	r0, r5	@, p
	movw	r1, #:lower16:.LC66	@,
	movw	r2, #:lower16:.LC461	@,
	movt	r1, #:upper16:.LC66	@,
	movt	r2, #:upper16:.LC461	@,
	bl	seq_printf	@
	mov	r0, r5	@, p
	movw	r1, #:lower16:.LC459	@,
	movw	r2, #:lower16:.LC462	@,
	movt	r1, #:upper16:.LC459	@,
	movt	r2, #:upper16:.LC462	@,
	ldrsb	r3, [r8, #11]	@, <variable>.s32DispFsNum
	bl	seq_printf	@
	ldrsb	r1, [r8, #11]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	cmp	r1, #0	@ <variable>.s32DispFsNum,
	addgt	r4, r8, #38656	@ ivtmp.6615, pFsp,
	movgt	r6, #0	@ j,
	addgt	r4, r4, #156	@ ivtmp.6615, ivtmp.6615,
	ble	.L2723	@,
.L2724:
	ldrsb	r2, [r4, #0]	@, <variable>.IsDecRef
	mov	r0, r5	@, p
	ldrsb	r3, [r4, #2]	@, <variable>.DispState
	movw	r1, #:lower16:.LC463	@,
	movt	r1, #:upper16:.LC463	@,
	add	r6, r6, #1	@ j, j,
	bl	seq_printf	@
	ldrsb	r0, [r8, #11]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	add	r4, r4, #60	@ ivtmp.6615, ivtmp.6615,
	cmp	r0, r6	@ <variable>.s32DispFsNum, j
	ble	.L2723	@,
	tst	r6, #15	@ j,
	bne	.L2724	@,
	movw	r1, #:lower16:.LC71	@,
	mov	r0, r5	@, p
	movt	r1, #:upper16:.LC71	@,
	bl	seq_printf	@
	b	.L2724	@
.L2723:
	movw	r1, #:lower16:.LC71	@,
	mov	r0, r5	@, p
	movt	r1, #:upper16:.LC71	@,
	bl	seq_printf	@
	b	.L2722	@
.L2744:
	mov	r0, r5	@, p
	movw	r1, #:lower16:.LC66	@,
	movw	r2, #:lower16:.LC432	@,
	movt	r1, #:upper16:.LC66	@,
	movt	r2, #:upper16:.LC432	@,
	ldr	r3, [sl, #52]	@, <variable>.stChanCfg.StdExt.Vp6Ext.bReversed
	bl	seq_printf	@
	b	.L2719	@
.L2749:
	ldr	ip, [r2, #1432]	@ <variable>.u32VaVdmKiloCycle, <variable>.u32VaVdmKiloCycle
	mov	lr, #1000	@ tmp439,
	mov	r1, r7	@, VdhFps
	str	r3, [fp, #-132]	@,
	mul	r0, lr, ip	@, tmp439, <variable>.u32VaVdmKiloCycle
	bl	__aeabi_uidiv	@
	cmp	r4, #0	@ temp.6628,
	movlt	r4, sl	@ temp.6628, tmp434
	mov	r1, r4, asr #4	@, temp.6628,
	bl	__aeabi_uidiv	@
	ldr	r2, [fp, #-132]	@,
	cmp	r8, #0	@ temp.6629,
	movlt	r8, r2	@ temp.6629, tmp435
	mov	r1, r8, asr #4	@, temp.6629,
	bl	__aeabi_uidiv	@
	mov	r8, r0	@ VdhCycle,
	b	.L2737	@
.L2748:
	movw	r4, #:lower16:249272	@ tmp399,
	movt	r4, #:upper16:249272	@ tmp399,
	mov	r0, r5	@, p
	movw	r1, #:lower16:.LC466	@,
	movw	r7, #:lower16:.LANCHOR4	@ tmp403,
	movt	r1, #:upper16:.LC466	@,
	movt	r7, #:upper16:.LANCHOR4	@ tmp403,
	bl	seq_printf	@
	ldr	r3, [sl, r4]	@, <variable>.s32CurFsSize
	mov	r0, r5	@, p
	movw	r1, #:lower16:.LC467	@,
	movw	r2, #:lower16:.LC468	@,
	movt	r1, #:upper16:.LC467	@,
	movt	r2, #:upper16:.LC468	@,
	bl	seq_printf	@
	ldr	r3, [r7, #-3512]	@, g_u32DFSMaxAllocTime
	mov	r0, r5	@, p
	movw	r1, #:lower16:.LC467	@,
	movw	r2, #:lower16:.LC469	@,
	movt	r1, #:upper16:.LC467	@,
	movt	r2, #:upper16:.LC469	@,
	movw	r7, #:lower16:249280	@ tmp423,
	bl	seq_printf	@
	movw	ip, #:lower16:249276	@ tmp407,
	movt	ip, #:upper16:249276	@ tmp407,
	mov	r0, r5	@, p
	movw	r1, #:lower16:.LC467	@,
	movw	r2, #:lower16:.LC470	@,
	ldr	r3, [sl, ip]	@, <variable>.s32RefNum
	movt	r1, #:upper16:.LC467	@,
	movt	r2, #:upper16:.LC470	@,
	movt	r7, #:upper16:249280	@ tmp423,
	bl	seq_printf	@
	movw	r2, #:lower16:251544	@ tmp413,
	movt	r2, #:upper16:251544	@ tmp413,
	movw	r3, #:lower16:249284	@ tmp411,
	movt	r3, #:upper16:249284	@ tmp411,
	mov	r0, r5	@, p
	ldr	r6, [sl, r2]	@ <variable>.stDynamicFSTimestamp.u32PreAllocTime, <variable>.stDynamicFSTimestamp.u32PreAllocTime
	movw	r1, #:lower16:.LC471	@,
	ldr	r3, [sl, r3]	@ <variable>.s32PreAllocFrmNum, <variable>.s32PreAllocFrmNum
	movt	r1, #:upper16:.LC471	@,
	movw	r2, #:lower16:.LC472	@,
	movt	r2, #:upper16:.LC472	@,
	str	r6, [sp, #0]	@ <variable>.stDynamicFSTimestamp.u32PreAllocTime,
	bl	seq_printf	@
	movw	r1, #:lower16:251548	@ tmp419,
	movt	r1, #:upper16:251548	@ tmp419,
	movw	r0, #:lower16:249288	@ tmp417,
	movt	r0, #:upper16:249288	@ tmp417,
	ldr	r4, [sl, r1]	@ <variable>.stDynamicFSTimestamp.u32MMZAllocTime, <variable>.stDynamicFSTimestamp.u32MMZAllocTime
	movw	r2, #:lower16:.LC473	@,
	ldr	r3, [sl, r0]	@ <variable>.s32MMZFrmNum, <variable>.s32MMZFrmNum
	movt	r2, #:upper16:.LC473	@,
	mov	r0, r5	@, p
	movw	r1, #:lower16:.LC471	@,
	movt	r1, #:upper16:.LC471	@,
	str	r4, [sp, #0]	@ <variable>.stDynamicFSTimestamp.u32MMZAllocTime,
	bl	seq_printf	@
	movw	ip, #:lower16:251552	@ tmp425,
	movt	ip, #:upper16:251552	@ tmp425,
	ldr	r3, [sl, r7]	@ <variable>.s32NeededFrameNum, <variable>.s32NeededFrameNum
	movw	r1, #:lower16:.LC471	@,
	movw	r2, #:lower16:.LC474	@,
	ldr	r6, [sl, ip]	@ <variable>.stDynamicFSTimestamp.u32AllTime, <variable>.stDynamicFSTimestamp.u32AllTime
	movt	r1, #:upper16:.LC471	@,
	movt	r2, #:upper16:.LC474	@,
	mov	r0, r5	@, p
	str	r6, [sp, #0]	@ <variable>.stDynamicFSTimestamp.u32AllTime,
	bl	seq_printf	@
	b	.L2735	@
.L2743:
	movw	lr, #:lower16:USE_FF_APT_EN	@ tmp250,
	movt	lr, #:upper16:USE_FF_APT_EN	@ tmp250,
	mov	r0, r5	@, p
	movw	r1, #:lower16:.LC66	@,
	ldr	r3, [lr, #0]	@, USE_FF_APT_EN
	movt	r1, #:upper16:.LC66	@,
	movw	r2, #:lower16:.LC147	@,
	movt	r2, #:upper16:.LC147	@,
	bl	seq_printf	@
	ldr	r3, [sl, #52]	@, <variable>.stChanCfg.StdExt.Vc1Ext.IsAdvProfile
	mov	r0, r5	@, p
	movw	r1, #:lower16:.LC66	@,
	movw	r2, #:lower16:.LC430	@,
	movt	r1, #:upper16:.LC66	@,
	movt	r2, #:upper16:.LC430	@,
	bl	seq_printf	@
	mov	r0, r5	@, p
	movw	r1, #:lower16:.LC66	@,
	movw	r2, #:lower16:.LC431	@,
	movt	r1, #:upper16:.LC66	@,
	movt	r2, #:upper16:.LC431	@,
	ldr	r3, [sl, #56]	@, <variable>.stChanCfg.StdExt.Vc1Ext.CodecVersion
	bl	seq_printf	@
	b	.L2719	@
.L2741:
	movw	lr, #:lower16:.LC414	@ tmp180,
	movt	lr, #:upper16:.LC414	@ tmp180,
	sub	r3, fp, #68	@,,
	str	r3, [fp, #-112]	@, %sfp
	ldr	r4, [lr, #0]	@ tmp183,
	mov	ip, r4, lsr #16	@ tmp184, tmp183,
	strh	r4, [fp, #-68]	@ movhi	@ tmp183, szAttach
	strb	ip, [fp, #-66]	@ tmp184, szAttach
	b	.L2714	@
.L2745:
	mov	r4, #300	@ tmp267,
	mov	r0, r5	@, p
	mla	r4, r4, r6, r9	@ tmp268, tmp267, i, tmp493
	movw	r1, #:lower16:.LC66	@,
	movw	r2, #:lower16:.LC433	@,
	movt	r1, #:upper16:.LC66	@,
	movt	r2, #:upper16:.LC433	@,
	ldr	r3, [r4, #1472]	@, <variable>.u32SkipFind
	bl	seq_printf	@
	ldr	r3, [r4, #1476]	@, <variable>.u32SkipDiscard
	mov	r0, r5	@, p
	movw	r1, #:lower16:.LC66	@,
	movw	r2, #:lower16:.LC434	@,
	movt	r1, #:upper16:.LC66	@,
	movt	r2, #:upper16:.LC434	@,
	bl	seq_printf	@
	movw	r2, #:lower16:267464	@ tmp282,
	movt	r2, #:upper16:267464	@ tmp282,
	mov	r0, r5	@, p
	movw	r1, #:lower16:.LC66	@,
	movt	r1, #:upper16:.LC66	@,
	ldrb	r3, [sl, r2]	@ zero_extendqisi2	@ tmp284,
	movw	r2, #:lower16:.LC435	@,
	movt	r2, #:upper16:.LC435	@,
	and	r3, r3, #1	@, tmp284,
	bl	seq_printf	@
	b	.L2719	@
.L2746:
	ldr	lr, [sl, #520]	@ <variable>.stRecentUsrdecFrame.s32YHeight, <variable>.stRecentUsrdecFrame.s32YHeight
	mov	ip, #504	@ tmp293,
	ldr	r2, [sl, #496]	@ <variable>.stRecentUsrdecFrame.enFmt, <variable>.stRecentUsrdecFrame.enFmt
	movw	r1, #:lower16:.LC436	@,
	ldr	r3, [sl, #516]	@ <variable>.stRecentUsrdecFrame.s32YWidth, <variable>.stRecentUsrdecFrame.s32YWidth
	movt	r1, #:upper16:.LC436	@,
	str	lr, [sp, #0]	@ <variable>.stRecentUsrdecFrame.s32YHeight,
	mov	r0, r5	@, p
	ldr	r7, [sl, #528]	@ <variable>.stRecentUsrdecFrame.s32LumaStride, <variable>.stRecentUsrdecFrame.s32LumaStride
	str	r7, [sp, #4]	@ <variable>.stRecentUsrdecFrame.s32LumaStride,
	ldr	r6, [sl, #540]	@ <variable>.stRecentUsrdecFrame.s32ChromStride, <variable>.stRecentUsrdecFrame.s32ChromStride
	str	r6, [sp, #8]	@ <variable>.stRecentUsrdecFrame.s32ChromStride,
	ldrd	r6, [sl, ip]	@ <variable>.stRecentUsrdecFrame.Pts, pChan, tmp293
	strd	r6, [sp, #16]	@ <variable>.stRecentUsrdecFrame.Pts,,
	bl	seq_printf	@
	b	.L2719	@
	.fnend
	.size	vfmw_read_proc_dec, .-vfmw_read_proc_dec
	.global	g_DSPState
	.global	g_SCDID
	.global	g_SdecFunc
	.global	s_pstVfmwChan
	.global	extra_ref
	.global	extra_disp
	.global	extra_cmd
	.global	g_allow_B_before_P
	.global	g_not_direct_8x8_inference_flag
	.global	g_not_allow_H264FullPictureRepair_flag
	.global	g_apple_airplay_mirrorinig_flag
	.global	vfmw_save_str_file
	.global	save_str_chan_num
	.global	vfmw_save_seg_file
	.global	save_seg_chan_num
	.global	vfmw_save_yuv_file
	.global	save_yuv_chan_num
	.global	save_yuv_with_crop
	.global	g_ResetCreateNewSave
	.global	g_CurProcChan
	.global	g_VdmCharacter
	.global	g_u32DFSMaxAllocTime
	.global	g_SleepTime
	.global	g_DnrSleepTime
	.global	g_StopDec
	.global	g_VdecIrqHandle
	.global	g_DnrIrqHandle
	.global	g_event_report
	.global	g_VfmwChanStat
	.global	g_VfmwGlobalStat
	.global	g_eVdmVersion
	.global	AcceleratorCharacter
	.global	g_TaskLock
	.global	g_IntEvent
	.global	g_ActivateLock
	.global	pOption
	.global	pY
	.global	pUl
	.global	pVl
	.global	MemRecord_YUV
	.section	.rodata
	.align	2
.LANCHOR1 = . + 0
	.type	CSWTCH.925, %object
	.size	CSWTCH.925, 8
CSWTCH.925:
	.word	2
	.word	3
	.type	CSWTCH.928, %object
	.size	CSWTCH.928, 32
CSWTCH.928:
	.word	3
	.word	3
	.word	3
	.word	3
	.word	3
	.word	1
	.word	1
	.word	1
	.type	__func__.50129, %object
	.size	__func__.50129, 18
__func__.50129:
	.ascii	"VCTRL_SetCallBack\000"
	.space	2
	.type	__func__.50095, %object
	.size	__func__.50095, 18
__func__.50095:
	.ascii	"VCTRL_EventReport\000"
	.space	2
	.type	vfmw_proc_fops, %object
	.size	vfmw_proc_fops, 108
vfmw_proc_fops:
@ owner:
	.word	0
@ llseek:
	.word	seq_lseek
@ read:
	.word	seq_read
@ write:
	.word	vfmw_proc_write
@ open:
	.space	28
	.word	vfmw_proc_open
@ release:
	.space	4
	.word	single_release
	.space	52
	.type	__func__.54621, %object
	.size	__func__.54621, 20
__func__.54621:
	.ascii	"vfmw_read_proc_info\000"
	.type	__func__.55746, %object
	.size	__func__.55746, 21
__func__.55746:
	.ascii	"VCTRL_RequestChanMem\000"
	.space	3
	.type	__func__.53518, %object
	.size	__func__.53518, 14
__func__.53518:
	.ascii	"DecChanSyntax\000"
	.space	2
	.type	__func__.52339, %object
	.size	__func__.52339, 19
__func__.52339:
	.ascii	"VCTRL_FlushDecoder\000"
	.space	1
	.type	__func__.52059, %object
	.size	__func__.52059, 23
__func__.52059:
	.ascii	"VCTRL_ReleaseChanImage\000"
	.space	1
	.type	__func__.51928, %object
	.size	__func__.51928, 19
__func__.51928:
	.ascii	"VCTRL_GetChanImage\000"
	.space	1
	.type	__func__.50441, %object
	.size	__func__.50441, 29
__func__.50441:
	.ascii	"VCTRL_PartitionMemForStdUser\000"
	.space	3
	.type	__func__.53930, %object
	.size	__func__.53930, 18
__func__.53930:
	.ascii	"GetExtraRefFrmNum\000"
	.space	2
	.type	__func__.53966, %object
	.size	__func__.53966, 19
__func__.53966:
	.ascii	"GetExtraDispFrmNum\000"
	.space	1
	.type	__func__.54002, %object
	.size	__func__.54002, 16
__func__.54002:
	.ascii	"GetExtraCtrlCmd\000"
	.type	__func__.53837, %object
	.size	__func__.53837, 24
__func__.53837:
	.ascii	"VCTRL_ExtAccGetDecParam\000"
	.type	__func__.55121, %object
	.size	__func__.55121, 16
__func__.55121:
	.ascii	"vfmw_write_proc\000"
	.type	__func__.51421, %object
	.size	__func__.51421, 17
__func__.51421:
	.ascii	"VCTRL_ConfigChan\000"
	.space	3
	.type	CSWTCH.931, %object
	.size	CSWTCH.931, 32
CSWTCH.931:
	.word	3
	.word	3
	.word	3
	.word	3
	.word	3
	.word	1
	.word	1
	.word	1
	.type	__func__.54760, %object
	.size	__func__.54760, 19
__func__.54760:
	.ascii	"vfmw_read_proc_scd\000"
	.space	1
	.type	__param_str_extra_cmd, %object
	.size	__param_str_extra_cmd, 18
__param_str_extra_cmd:
	.ascii	"hi_vfmw.extra_cmd\000"
	.space	2
	.type	__param_str_extra_disp, %object
	.size	__param_str_extra_disp, 19
__param_str_extra_disp:
	.ascii	"hi_vfmw.extra_disp\000"
	.space	1
	.type	__param_str_extra_ref, %object
	.size	__param_str_extra_ref, 18
__param_str_extra_ref:
	.ascii	"hi_vfmw.extra_ref\000"
	.section	___ksymtab+VCTRL_SetDbgOption,"a",%progbits
	.align	2
	.type	__ksymtab_VCTRL_SetDbgOption, %object
	.size	__ksymtab_VCTRL_SetDbgOption, 8
__ksymtab_VCTRL_SetDbgOption:
@ value:
	.word	VCTRL_SetDbgOption
@ name:
	.word	__kstrtab_VCTRL_SetDbgOption
	.section	__ksymtab_strings,"a",%progbits
	.type	__kstrtab_VCTRL_SetDbgOption, %object
	.size	__kstrtab_VCTRL_SetDbgOption, 19
__kstrtab_VCTRL_SetDbgOption:
	.ascii	"VCTRL_SetDbgOption\000"
	.data
	.align	2
.LANCHOR2 = . + 0
	.type	s_VfmwSavePath, %object
	.size	s_VfmwSavePath, 64
s_VfmwSavePath:
	.byte	47
	.byte	109
	.byte	110
	.byte	116
	.byte	0
	.space	59
	.type	g_not_direct_8x8_inference_flag, %object
	.size	g_not_direct_8x8_inference_flag, 1
g_not_direct_8x8_inference_flag:
	.byte	1
	.space	3
	.type	save_yuv_chan_num, %object
	.size	save_yuv_chan_num, 4
save_yuv_chan_num:
	.word	-1
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"VDMHAL_NULL_FUN_PRINT,L%d\012\000"
	.space	1
.LC1:
	.ascii	"L:%d ChanID out of range\012\000"
	.space	2
.LC2:
	.ascii	"L:%d This Chan has not been created!!!\012\000"
.LC3:
	.ascii	"L:%d WARNING: vidio std not setted!\012\000"
	.space	3
.LC4:
	.ascii	"line %d can not know YuvFormat = %d\012\000"
	.space	3
.LC5:
	.ascii	"vfmw_ctrl.c,L%d: %s\012\000"
	.space	3
.LC6:
	.ascii	"ChanID out of range\000"
.LC7:
	.ascii	"Report Last Frame, Value=%d, LastFrameState=%d\012\000"
.LC8:
	.ascii	"SetVdecExtra ERROR: extra_ref = %d is out of [ -500"
	.ascii	"0, 5000 ]!\012\000"
	.space	1
.LC9:
	.ascii	"SetVdecExtra ERROR: extra_disp = %d is out of [ -50"
	.ascii	"00, 5000 ]!\012\000"
.LC10:
	.ascii	"Chan inactive\000"
	.space	2
.LC11:
	.ascii	"(safe,warn,danger) :amount = %d,%d,%d,%d\012\000"
	.space	2
.LC12:
	.ascii	"strm_ctrl: I->IPB\012\000"
	.space	1
.LC13:
	.ascii	"strm_ctrl: IPB->I\012\000"
	.space	1
.LC14:
	.ascii	"(CurrMode,NextMode) = %d,%d\012\000"
	.space	3
.LC15:
	.ascii	"ERROR: (nPmv(%d) + extra_ref(%d)) <= 0\012\000"
.LC16:
	.ascii	"ERROR: TempMinFrame(%d + %d + %d), TempMiddleFrame("
	.ascii	"%d + %d + %d), TempFluentFrame(%d + %d + %d)\012\000"
	.space	3
.LC17:
	.ascii	"VCTRL_GetChanMemSize L%d: arrange return failure\012"
	.ascii	"\000"
	.space	2
.LC18:
	.ascii	"ERROR: s32MaxRefFrameNum(%d), extra_ref(%d), s32Dis"
	.ascii	"playFrameNum(%d), extra_disp(%d)\012\000"
	.space	3
.LC19:
	.ascii	"ERROR: (MaxRefFrameNum(%d) + extra_ref(%d)) > 16\012"
	.ascii	"\000"
	.space	2
.LC20:
	.ascii	"VDEC_CID_GET_CHAN_DETAIL_MEMSIZE_BY_OPTION is desig"
	.ascii	"ned for CAP_LEVEL_USER_DEFINE_WITH_OPTION, please c"
	.ascii	"hange channel's capability or use VDEC_CID_GET_CHAN"
	.ascii	"_MEMSIZE.\012\000"
.LC21:
	.ascii	"VDEC_CID_CREATE_CHAN_WITH_OPTION the purpose of cre"
	.ascii	"ating the channel is not clear.\012\000"
.LC22:
	.ascii	"s32SlotWidth or s32SlotHeight is 0.\012\000"
	.space	3
.LC23:
	.ascii	"CAP_LEVEL_USER_DEFINE_WITH_OPTION option is illegal"
	.ascii	".\012\000"
	.space	2
.LC24:
	.ascii	"VCTRL_GetChanMemSizeByOption L%d: arrange return fa"
	.ascii	"ilure\012\000"
	.space	2
.LC25:
	.ascii	"chan not create\000"
.LC26:
	.ascii	"can NOT start a not-opened Chan\000"
.LC27:
	.ascii	"NULL == pArgs\000"
	.space	2
.LC28:
	.ascii	"ChanId out of range\000"
.LC29:
	.ascii	"vfmw_ctrl.c, line %d: ChanID out of range\012\000"
	.space	1
.LC30:
	.ascii	"vfmw_ctrl.c, line %d: Chan %d is not open or not ru"
	.ascii	"nning\012\000"
	.space	2
.LC31:
	.ascii	"Chip(id: %d) not support beyond 2032x2032 when Std "
	.ascii	"!= USER.\012\000"
	.space	3
.LC32:
	.ascii	"Chip(id: %d) not support beyond %dx%d when Std != H"
	.ascii	"264/VP8/MVC/USER.\012\000"
	.space	2
.LC33:
	.ascii	"Unknow Chip ID: %d\012\000"
.LC34:
	.ascii	"create soft-decoder fail!\012\000"
	.space	1
.LC35:
	.ascii	"event_report null!\000"
	.space	1
.LC36:
	.ascii	"%s Unkown Adapter Type: %d\012\000"
.LC37:
	.ascii	"InstID out of range\000"
.LC38:
	.ascii	"s_VfmwCTrl.event_report_vdec = NULL\012\000"
	.space	3
.LC39:
	.ascii	"s_VfmwCTrl.event_report_omxvdec = NULL\012\000"
.LC40:
	.ascii	"%s Unkown Adapter Type: %d, Len: %d\012\000"
	.space	3
.LC41:
	.ascii	"can NOT config a not-opened Chan\000"
	.space	3
.LC42:
	.ascii	"register soft decoder fail: '%s' can not be NULL\012"
	.ascii	"\000"
	.space	2
.LC43:
	.ascii	"pfun_iMediaSoftDEC_Create\000"
	.space	2
.LC44:
	.ascii	"pfun_iMediaSoftDEC_Destroy\000"
	.space	1
.LC45:
	.ascii	"pfun_iMediaSoftDEC_Init\000"
.LC46:
	.ascii	"pfun_iMediaSoftDEC_Decode\000"
	.space	2
.LC47:
	.ascii	"pfun_iMediaSoftDEC_RecycleImage\000"
.LC48:
	.ascii	"pfun_iMediaSoftDEC_GetRemainImg\000"
.LC49:
	.ascii	"pfun_iMediaSoftDEC_GetImageBuffer\000"
	.space	2
.LC50:
	.ascii	"pstCfg is null\000"
	.space	1
.LC51:
	.ascii	"pArgs is null\000"
	.space	2
.LC52:
	.ascii	"pstStreamIntf is NULL\000"
	.space	2
.LC53:
	.ascii	"pstStreamParam is NULL\000"
	.space	1
.LC54:
	.ascii	"VFMW: WriteBigTileYuv %dx%d...\012\000"
.LC55:
	.ascii	"vfmw_ctrl.c, line %d: ChanID out of range is %d\012"
	.ascii	"\000"
	.space	3
.LC56:
	.ascii	"Chan %d is not open or not running\012\000"
.LC57:
	.ascii	"vfmw%02d\000"
	.space	3
.LC58:
	.ascii	"vfmw\000"
	.space	3
.LC59:
	.ascii	"vfmw_dbg\000"
	.space	3
.LC60:
	.ascii	"vfmw_prn\000"
	.space	3
.LC61:
	.ascii	"vfmw_scd\000"
	.space	3
.LC62:
	.ascii	"vfmw_dec\000"
	.space	3
.LC63:
	.ascii	"vfmw_lwd\000"
	.space	3
.LC64:
	.ascii	"vfmw_chn\000"
	.space	3
.LC65:
	.ascii	"=============== lowdly info ================\012\000"
	.space	2
.LC66:
	.ascii	"%-25s :%d\012\000"
	.space	1
.LC67:
	.ascii	"LowdlyEnable\000"
	.space	3
.LC68:
	.ascii	"ChanID\000"
	.space	1
.LC69:
	.ascii	"ScdCount\000"
	.space	3
.LC70:
	.ascii	"VdhCount\000"
	.space	3
.LC71:
	.ascii	"\012\000"
	.space	2
.LC72:
	.ascii	"=============== chn info =========================="
	.ascii	"====\012\000"
	.space	3
.LC73:
	.ascii	"=============== chn by vdh ========================"
	.ascii	"====\012\000"
	.space	3
.LC74:
	.ascii	"%d \000"
.LC75:
	.ascii	"=============== chanid by prior ==================="
	.ascii	"====\012\000"
	.space	3
.LC76:
	.ascii	"=============== chan prior ========================"
	.ascii	"====\012\000"
	.space	3
.LC77:
	.ascii	"=============== chan isopen isrun ================="
	.ascii	"====\012\000"
	.space	3
.LC78:
	.ascii	"%d %d %d\012\000"
	.space	2
.LC79:
	.ascii	"'print_enable_word' definition, from bit31 to bit0:"
	.ascii	"\012\000"
	.space	3
.LC80:
	.ascii	"---------------------------------------------------"
	.ascii	"------------\012\000"
	.space	3
.LC81:
	.ascii	"<not used>  DEC_MODE    PTS         DNR\012\000"
	.space	3
.LC82:
	.ascii	"FOD         SCD_INFO    SCD_STREAM  SCD_REGMSG\012\000"
.LC83:
	.ascii	"BLOCK       DBG         SE          SEI\012\000"
	.space	3
.LC84:
	.ascii	"SLICE       PIC         SEQ         MARK_MMCO\012\000"
	.space	1
.LC85:
	.ascii	"POC         DPB         REF         QUEUE\012\000"
	.space	1
.LC86:
	.ascii	"IMAGE       STR_BODY    STR_TAIL    STR_HEAD\012\000"
	.space	2
.LC87:
	.ascii	"STREAM      UPMSG       RPMSG       DNMSG\012\000"
	.space	1
.LC88:
	.ascii	"VDMREG      CTRL        ERROR       FATAL\012\000"
	.space	1
.LC89:
	.ascii	"'vfmw_state' definition, from bit31 to bit0:\012\000"
	.space	2
.LC90:
	.ascii	"<not used>       <not used>       <not used>    <no"
	.ascii	"t used>\012\000"
.LC91:
	.ascii	"<not used>       <not used>       <VO_REL_IMG>  <VO"
	.ascii	"_RCV_IMG>\012\000"
	.space	2
.LC92:
	.ascii	"<2D_TO_QUEUE>    <DNR_INTERRUPT>  <DNR_START>   <1D"
	.ascii	"_TO_QUEUE>\012\000"
	.space	1
.LC93:
	.ascii	"<VDH_REPAIR>     <VDH_INTERRUPT>  <VDH_START>   <GE"
	.ascii	"NERATE_DECPARAM>\012\000"
	.space	3
.LC94:
	.ascii	"<DECSYNTAX_SEG>  <SCD_INTERRUPT>  <SCD_START>   <RC"
	.ascii	"V_RAW>\012\000"
	.space	1
.LC95:
	.ascii	"'extra_cmd' definition, from bit31 to bit0:\012\000"
	.space	3
.LC96:
	.ascii	"<not used>       <not used>      <direct 8x8>   <B "
	.ascii	"before P>\012\000"
	.space	2
.LC97:
	.ascii	"------------------------debug options--------------"
	.ascii	"------------\012\000"
	.space	3
.LC98:
	.ascii	"%-27s :%#x\012\000"
.LC99:
	.ascii	"tracer address\000"
	.space	1
.LC100:
	.ascii	"%-27s :%s\012\000"
	.space	1
.LC101:
	.ascii	"path to save debug data\000"
.LC102:
	.ascii	"print enable word\000"
	.space	2
.LC103:
	.ascii	"vfmw_state enable word\000"
	.space	1
.LC104:
	.ascii	"%-27s :%d\012\000"
	.space	1
.LC105:
	.ascii	"bitstream control period\000"
	.space	3
.LC106:
	.ascii	"frame control period\000"
	.space	3
.LC107:
	.ascii	"rcv/rls img control period\000"
	.space	1
.LC108:
	.ascii	"you can perform vfmw debug with such commond:\012\000"
	.space	1
.LC109:
	.ascii	"echo [arg1] [arg2] > /proc/vfmw\012\012\000"
	.space	2
.LC110:
	.ascii	"debug action                    arg1       arg2\012"
	.ascii	"\000"
	.space	3
.LC111:
	.ascii	"------------------------------  --------  ---------"
	.ascii	"------------\012\000"
	.space	3
.LC112:
	.ascii	"set print enable                0x0       print_ena"
	.ascii	"ble_word\012\000"
	.space	3
.LC113:
	.ascii	"set err_thr                     0x2       (chan_id<"
	.ascii	"<24)|err_thr\012\000"
	.space	3
.LC114:
	.ascii	"set dec order output            0x4       (chan_id<"
	.ascii	"<24)|dec_order_output_enable\012\000"
	.space	3
.LC115:
	.ascii	"set dec_mode(0/1/2=IPB/IP/I)    0x5       (chan_id<"
	.ascii	"<24)|dec_mode\012\000"
	.space	2
.LC116:
	.ascii	"set discard_before_dec_thr      0x7       (chan_id<"
	.ascii	"<24)|stream_size_thr\012\000"
	.space	3
.LC117:
	.ascii	"set postprocess options         0xa       (dc<<8)|("
	.ascii	"db<<4)|dr, 0000=auto,0001=on,0010=off\012\000"
	.space	2
.LC118:
	.ascii	"set frame/adaptive storage      0xb       0:frame o"
	.ascii	"nly, 1:adaptive\012\000"
.LC119:
	.ascii	"pay attention to the channel    0xd       channel n"
	.ascii	"umber\012\000"
	.space	2
.LC120:
	.ascii	"channel vcmp config             0xe       chanId: a"
	.ascii	"rg2>>27,\012%42smirror_en: (arg2>>26)&1,\012%42svcm"
	.ascii	"p_en: (arg2>>25)&1,\012%42swm_en: (arg2>>24)&1,\012"
	.ascii	"%42swm_start: (arg2>>12)&0xfff,\012%42swm_end: (arg"
	.ascii	"2)&0xfff\012\000"
	.space	1
.LC121:
	.ascii	" \000"
	.space	2
.LC122:
	.ascii	"print tracer                    0x100     tracer ad"
	.ascii	"dress. do not care if vfmw still running\012\000"
	.space	3
.LC123:
	.ascii	"start/stop raw stream saving    0x200     chan_id\012"
	.ascii	"\000"
	.space	1
.LC124:
	.ascii	"start/stop stream seg saving    0x201     chan_id\012"
	.ascii	"\000"
	.space	1
.LC125:
	.ascii	"start/stop 2D yuv saving        0x202     (chan_id<"
	.ascii	"<24)|crop_enable\012\000"
	.space	3
.LC126:
	.ascii	"save a single 2D frame          0x203     frame phy"
	.ascii	" addr\012\000"
	.space	2
.LC127:
	.ascii	"save a single 1D frame          0x204     frame phy"
	.ascii	" addr width height=(height+PicStructure)\012\000"
	.space	3
.LC128:
	.ascii	"set dec_task_schedule_delay     0x400     schedual_"
	.ascii	"delay_time(ms)\012\000"
	.space	1
.LC129:
	.ascii	"set dnr_active_interval         0x401     dnr_activ"
	.ascii	"e_interval(ms)\012\000"
	.space	1
.LC130:
	.ascii	"stop/start syntax dec           0x402     do not ca"
	.ascii	"re\012\000"
	.space	1
.LC131:
	.ascii	"set trace controller            0x500     vfmw_stat"
	.ascii	"e_word in /proc/vfmw_prn\012\000"
	.space	3
.LC132:
	.ascii	"set bitstream control period    0x501     period (m"
	.ascii	"s)\012\000"
	.space	1
.LC133:
	.ascii	"set frame control period        0x502     period (m"
	.ascii	"s)\012\000"
	.space	1
.LC134:
	.ascii	"set rcv/rls img control period  0x503     period (m"
	.ascii	"s)\012\000"
	.space	1
.LC135:
	.ascii	"set no stream report period     0x504     period (m"
	.ascii	"s)\012\000"
	.space	1
.LC136:
	.ascii	"set module lowdelay start       0x600     channel n"
	.ascii	"umber\012\000"
	.space	2
.LC137:
	.ascii	"set module lowdelay stop        0x601     channel n"
	.ascii	"umber\012\000"
	.space	2
.LC138:
	.ascii	"set tunnel line number          0x602     channel n"
	.ascii	"umber\012\000"
	.space	2
.LC139:
	.ascii	"set scd lowdelay start          0x603     channel n"
	.ascii	"umber\012\000"
	.space	2
.LC140:
	.ascii	"set scd lowdelay stop           0x604     channel n"
	.ascii	"umber\012\000"
	.space	2
.LC141:
	.ascii	"=============== vfmw info =============\012\000"
	.space	3
.LC142:
	.ascii	"%-35s :%d\012\000"
	.space	1
.LC143:
	.ascii	"version num\000"
.LC144:
	.ascii	"extra_ref\000"
	.space	2
.LC145:
	.ascii	"extra_disp\000"
	.space	1
.LC146:
	.ascii	"extra_cmd\000"
	.space	2
.LC147:
	.ascii	"USE_FF_APT_EN\000"
	.space	2
.LC148:
	.ascii	"ResetCreateNewSave\000"
	.space	1
.LC149:
	.ascii	"============================= vfmw PrivInfo ======="
	.ascii	"=======================\012\000"
.LC150:
	.ascii	"%-45s :%d\012\000"
	.space	1
.LC151:
	.ascii	"VersionNum\000"
	.space	1
.LC152:
	.ascii	"----------------------------- vdh  info -----------"
	.ascii	"-----------------\012\000"
	.space	2
.LC153:
	.ascii	"%-45s :%d.%d%%\012\000"
.LC154:
	.ascii	"VDH 0 load\000"
	.space	1
.LC155:
	.ascii	"----------------------------- scd  info -----------"
	.ascii	"-----------------\012\000"
	.space	2
.LC156:
	.ascii	"SCD %d load             :%d.%d%%\012\000"
	.space	2
.LC157:
	.ascii	"----------------------------- dsp  info -----------"
	.ascii	"-----------------\012\000"
	.space	2
.LC158:
	.ascii	"DSP %d state             :%d\012\000"
	.space	2
.LC159:
	.ascii	"----------------------------- chan  info ----------"
	.ascii	"------------------\012\000"
	.space	1
.LC160:
	.ascii	"chanId[%d]-->MatchScdIdPlus1 [%d]    MatchVdhIdPlus"
	.ascii	"1 [%d]\012\000"
	.space	1
.LC161:
	.ascii	"This Chan has not been created!!!\000"
	.space	2
.LC162:
	.ascii	"can NOT get a not-opened Chan's information of bits"
	.ascii	"tream\000"
	.space	3
.LC163:
	.ascii	"fuction return value is null,%s %d unknow error!!\012"
	.ascii	"\000"
	.space	1
.LC164:
	.ascii	"============================= vfmw%02d info ======="
	.ascii	"=======================\012\000"
.LC165:
	.ascii	"VfmwID\000"
	.space	1
.LC166:
	.ascii	"----------------------------- scd stream info -----"
	.ascii	"----------------------\012\000"
	.space	1
.LC167:
	.ascii	"%-45s :%d/%d\012\000"
	.space	2
.LC168:
	.ascii	"RawStream(Size/Num)\000"
.LC169:
	.ascii	"SCDSegStream(Size/Num)\000"
	.space	1
.LC170:
	.ascii	"%-45s :%d/%d/%d%%\012\000"
	.space	1
.LC171:
	.ascii	"SCDSegBuffer(Total/Use/Percent)\000"
.LC172:
	.ascii	"----------------------------- vdh frame info ------"
	.ascii	"----------------------\012\000"
	.space	1
.LC173:
	.ascii	"%-45s :%d*%d\012\000"
	.space	2
.LC174:
	.ascii	"Decode(Width*Height)\000"
	.space	3
.LC175:
	.ascii	"Display(Width*Height)\000"
	.space	2
.LC176:
	.ascii	"%-45s :%d.%d fps\012\000"
	.space	2
.LC177:
	.ascii	"FrameRate\000"
	.space	2
.LC178:
	.ascii	"VDHFrameBuffer(Total/Use/Percent)\000"
	.space	2
.LC179:
	.ascii	"==================================================="
	.ascii	"========================\012\000"
	.space	3
.LC180:
	.ascii	"Last frame output failed!\012\000"
	.space	1
.LC181:
	.ascii	"Last frame output successed!\012\000"
	.space	2
.LC182:
	.ascii	"Last frame already output, image id: %d!\012\000"
	.space	2
.LC183:
	.ascii	"DFS, Wrong! Phyaddr:0x%x, Viraddr:0x%x, frm_num: 0x"
	.ascii	"%x\012\000"
	.space	1
.LC184:
	.ascii	"DFS, Not enough Frame node,rls all node, FrmNum:%d,"
	.ascii	" AllocedFrameNum: %d\012\000"
	.space	3
.LC185:
	.ascii	"DFS, Rls Fail, chanid: %d\012\000"
	.space	1
.LC186:
	.ascii	"VFMW_FRM_BUF\000"
	.space	3
.LC187:
	.ascii	"DFS, Not enough resource, ChanID: %d, AllocedFrmNum"
	.ascii	": %d, FrmNum: %d, i: %d\012\000"
.LC188:
	.ascii	"DFS, Rls Frame Node Fail!\012\000"
	.space	1
.LC189:
	.ascii	"DFS, framsize wrong! framesize: 0x%x\012\000"
	.space	2
.LC190:
	.ascii	"%s, %d, AllocMemMMZ fail!\012\000"
	.space	1
.LC191:
	.ascii	"%s,can not use mmz. NeedMMZ: %d\012\000"
	.space	3
.LC192:
	.ascii	"%s, %d, AllocMemPre fail!\012\000"
	.space	1
.LC193:
	.ascii	"%s,can't use mmz. NeedMMZ: %d\012\000"
	.space	1
.LC194:
	.ascii	"ChanID out of range!\000"
	.space	3
.LC195:
	.ascii	"VFMW_Hal_%d\000"
.LC196:
	.ascii	"VFMW_ScdMsg_%d\000"
	.space	1
.LC197:
	.ascii	"hi_vdec_vdh_irq\000"
.LC198:
	.ascii	"hi_vdec_scd_irq\000"
.LC199:
	.ascii	"VCTRL_GetUsrdecFrame but VFMW_USER != s_pstVfmwChan"
	.ascii	"[ChanID]->eVidStd!\012\000"
	.space	1
.LC200:
	.ascii	"VCTRL_GetUsrdecFrame but s_pstVfmwChan[ChanID]->s32"
	.ascii	"UsrdecFrameNum < MIN_USERDEC_FRAME_NUM!\012\000"
.LC201:
	.ascii	"VCTRL_GetUsrdecFrame but FSP_IsNewFsAvalible(ChanID"
	.ascii	") != 1!\012\000"
.LC202:
	.ascii	"get frame store fail!\012\000"
	.space	1
.LC203:
	.ascii	"get image buffer ok: LogicFsID = %d\012\000"
	.space	3
.LC204:
	.ascii	"line: %d, pLf is NULL!\012\000"
.LC205:
	.ascii	"decode %p, disp %p, tf %p\012\000"
	.space	1
.LC206:
	.ascii	"VCTRL_GetUsrdecFrame get LogicFs fail!\012\000"
.LC207:
	.ascii	"userdec frame(phy=%#x) address error!\012\000"
	.space	1
.LC208:
	.ascii	"can not map vir addr for usrdat frame(cbphy=%#x)\012"
	.ascii	"\000"
	.space	2
.LC209:
	.ascii	"line: %d, pLogic is Null!\012\000"
	.space	1
.LC210:
	.ascii	"eYuvFormat %d is not support!!\012\000"
.LC211:
	.ascii	"pUsrdecFrame == NULL\000"
	.space	3
.LC212:
	.ascii	"VCTRL_PutUsrdecFrame: VidStd is %d\012\000"
.LC213:
	.ascii	"VCTRL_PutUsrdecFrame return err\012\000"
	.space	3
.LC214:
	.ascii	"-1 == VCTRL_GetChanIDByCtx() Err! \012\000"
.LC215:
	.ascii	"This channel is not opened\000"
	.space	1
.LC216:
	.ascii	"This channel is not running\000"
.LC217:
	.ascii	"Syntax is stopped from This channel\000"
.LC218:
	.ascii	"[%d] vdm busy\012\000"
	.space	1
.LC219:
	.ascii	"[%d] no frame\012\000"
	.space	1
.LC220:
	.ascii	"[%d] no stream\012\000"
.LC221:
	.ascii	"seg_pts: %lld, seg_usertag = %lld\012\000"
	.space	1
.LC222:
	.ascii	"pic_pts: %lld\012\000"
	.space	1
.LC223:
	.ascii	"pic_usertag: %lld\012\000"
	.space	1
.LC224:
	.ascii	"pic_pts: %lld pic_usertag = %lld\012\000"
	.space	2
.LC225:
	.ascii	"%s:ChanId %d this hevc file is 10bit!!!\012\000"
	.space	3
.LC226:
	.ascii	"DFS, Wait Partition\012\000"
	.space	3
.LC227:
	.ascii	"DFS, Partition fail, u32DynamicFrameStoreAllocEn: %"
	.ascii	"d, eFspPartitionState: %d\012\000"
	.space	2
.LC228:
	.ascii	"line: %d Flush DPB failed!\012\000"
.LC229:
	.ascii	"VCTRL_FlushDecoder\012\000"
.LC230:
	.ascii	"fuction return value is null,%s %d MVC_OK != MVC_Fl"
	.ascii	"ushDPB!!\012\000"
	.space	3
.LC231:
	.ascii	"pImage is NULL\000"
	.space	1
.LC232:
	.ascii	"call VCTRL_ReleaseChanImage, ChanID, ImgID = %d,%d\012"
	.ascii	"\000"
.LC233:
	.ascii	"vdm_ctrl.c,L%d: Chan inactive\012\000"
	.space	1
.LC234:
	.ascii	"vdm_ctrl.c,L%d: This channel is not opened\012\000"
.LC235:
	.ascii	"%s call SYNTAX_ReleaseImage failed\012\000"
.LC236:
	.ascii	"call VCTRL_GetChanImage, ChanID = %d,\012\000"
	.space	1
.LC237:
	.ascii	"%s: view_0 id(%d) > view_1 id(%d), error!\012\000"
	.space	1
.LC238:
	.ascii	"%s: continuous view0 id(%d)!\012\000"
	.space	2
.LC239:
	.ascii	"%s: continuous view1 id(%d)!\012\000"
	.space	2
.LC240:
	.ascii	"WARNNING: ScdLowdlyEnable = %d, VidStd = %d, eDSPSt"
	.ascii	"ate = %d AVS(+) and LOWDLY  cannot supported in the"
	.ascii	" same time!!!\012\000"
	.space	3
.LC241:
	.ascii	"This Chan has not been created or has been destroye"
	.ascii	"d !\000"
	.space	1
.LC242:
	.ascii	"WARNING: vidio std not setted!\000"
	.space	1
.LC243:
	.ascii	"DFS, rls MMZ Node\012\000"
	.space	1
.LC244:
	.ascii	"DelMemRecord 0x%x failed!\012\000"
	.space	1
.LC245:
	.ascii	"image size abnormal(%dx%d)\012\000"
.LC246:
	.ascii	"no mem to arrange for soft dec\012\000"
.LC247:
	.ascii	"partition fs memory fail!\012\000"
	.space	1
.LC248:
	.ascii	"%s: L%d : vdm chan memory is too small to support u"
	.ascii	"ser decoder\012\000"
.LC249:
	.ascii	"FSP_ConfigInstance fail!\012\000"
	.space	2
.LC250:
	.ascii	"L: %d, Stream Interface Error!!, ChanID: %d\000"
.LC251:
	.ascii	"extra_ref=\000"
	.space	1
.LC252:
	.ascii	"=\000"
	.space	2
.LC253:
	.ascii	"ERROR: extra_ref = %d is out of [ -5000, 5000 ]!\012"
	.ascii	"\000"
	.space	2
.LC254:
	.ascii	"extra_disp=\000"
.LC255:
	.ascii	"ERROR: extra_disp = %d is out of [ -5000, 5000 ]!\012"
	.ascii	"\000"
	.space	1
.LC256:
	.ascii	"extra_cmd=\000"
	.space	1
.LC257:
	.ascii	"HI_VFMW_VideoDecode\000"
.LC258:
	.ascii	"%s 1 The channel %d is not active\012\000"
	.space	1
.LC259:
	.ascii	"The channel %d is deced\012\000"
	.space	3
.LC260:
	.ascii	"The pDecParam of channel %d is NULL\012\000"
	.space	3
.LC261:
	.ascii	"%s 2 The channel %d is not active\012\000"
	.space	1
.LC262:
	.ascii	"Vfmw resume totally take %d ms\012\000"
.LC263:
	.ascii	"Wait sleep time out %d ms (isScdSleep=%d, isVdmSlee"
	.ascii	"p=%d)!\012\000"
	.space	1
.LC264:
	.ascii	"Force scd %d sleep.\012\000"
	.space	3
.LC265:
	.ascii	"Force vdm %d sleep.\012\000"
	.space	3
.LC266:
	.ascii	"Vfmw suspend totally take %d ms\012\000"
	.space	3
.LC267:
	.ascii	"chan %d: new ChanErrThr = %d\012\000"
	.space	2
.LC268:
	.ascii	"chan %d: new DecOrderOutput = %d\012\000"
	.space	2
.LC269:
	.ascii	"chan %d: new DecMode = %d\012\000"
	.space	1
.LC270:
	.ascii	"chan %d: GetChanCfg failed!\012\000"
	.space	3
.LC271:
	.ascii	"chan %d: new StrmOFThr = %d\012\000"
	.space	3
.LC272:
	.ascii	"USE_FF_APT_EN = %d\012\000"
.LC273:
	.ascii	"USE_FF_APT_EN can NOT be set to %d, must be 0 or 1\012"
	.ascii	"\000"
.LC274:
	.ascii	"ResetCreateNewSave = %d\012\000"
	.space	3
.LC275:
	.ascii	"ResetCreateNewSave can NOT be set to %d, must be 0 "
	.ascii	"or 1\012\000"
	.space	3
.LC276:
	.ascii	"NO SUCH CHANNEL : %d\012\000"
	.space	2
.LC277:
	.ascii	"Pay attention to  CHANNEL : %d\012\000"
.LC278:
	.ascii	"print memory tracer...\012\000"
.LC279:
	.ascii	"%s/vfmw_raw_save_%d.dat\000"
.LC280:
	.ascii	"OK create file '%s' for channel %d raw stream save\012"
	.ascii	"\000"
.LC281:
	.ascii	"failed create file '%s' for raw stream save!\012\000"
	.space	2
.LC282:
	.ascii	">>>> close raw stream saving >>>>\012\000"
	.space	1
.LC283:
	.ascii	"%s/vfmw_seg_save_%d.dat\000"
.LC284:
	.ascii	"OK create file '%s' for channel %d seg stream save\012"
	.ascii	"\000"
.LC285:
	.ascii	"failed create file '%s' for seg stream save!\012\000"
	.space	2
.LC286:
	.ascii	">>>> close seg stream saving >>>>\012\000"
	.space	1
.LC287:
	.ascii	"%s/vfmw_yuv_save_%d.yuv\000"
.LC288:
	.ascii	"VFMW_BigTile1d_YUV\000"
	.space	1
.LC289:
	.ascii	"Failed Alloc VFMW_BigTile1d_YUV for yuv save!\012\000"
	.space	1
.LC290:
	.ascii	"OK create file '%s' for chan %d yuv save.(crop %d)\012"
	.ascii	"\000"
.LC291:
	.ascii	"failed create file '%s' for yuv save!\012\000"
	.space	1
.LC292:
	.ascii	"OK close yuv save.\012\000"
.LC293:
	.ascii	"address '0x%x' is not valid!\012\000"
	.space	2
.LC294:
	.ascii	"%s/2d_0x%x.yuv\000"
	.space	1
.LC295:
	.ascii	"2d image has been saved to '%s'\012\000"
	.space	3
.LC296:
	.ascii	"open file '%s' fail!\012\000"
	.space	2
.LC297:
	.ascii	"%s/1d_0x%x.yuv\000"
	.space	1
.LC298:
	.ascii	"1d image has been saved to '%s'\012\000"
	.space	3
.LC299:
	.ascii	"stop chan %d: VCTRL_StopChan return %d\012\000"
.LC300:
	.ascii	"reset chan %d: VCTRL_ResetChan return %d\012\000"
	.space	2
.LC301:
	.ascii	"start chan %d: VCTRL_StartChan return %d\012\000"
	.space	2
.LC302:
	.ascii	"------ dec task delay %d ms ------\012\000"
.LC303:
	.ascii	"------ dnr active per %d ms ------\012\000"
.LC304:
	.ascii	"------ dec stop = %d ------\012\000"
	.space	3
.LC305:
	.ascii	"------ g_TraceCtrl = %x ------\012\000"
.LC306:
	.ascii	"------ g_TraceBsPeriod = %x ------\012\000"
.LC307:
	.ascii	"------ g_TraceFramePeriod = %x ------\012\000"
	.space	1
.LC308:
	.ascii	"------ g_TraceImgPeriod = %x ------\012\000"
	.space	3
.LC309:
	.ascii	"The channel number is to Large.\012\000"
	.space	3
.LC310:
	.ascii	"------ s_pstVfmwChan[%d]->stSynExtraData.s32ModuleL"
	.ascii	"owlyEnable = 1 ------\012\000"
	.space	2
.LC311:
	.ascii	"------ Set SCD[%d] to work  ------\012\000"
.LC312:
	.ascii	"MMZ: your parameter string is too long!\012\000"
	.space	3
.LC313:
	.ascii	"MMZ: copy_from_user failed!\012\000"
	.space	3
.LC314:
	.ascii	"error echo cmd '%s'!\012\000"
	.space	2
.LC315:
	.ascii	"******* vfmw save path: %s ********\012\000"
	.space	3
.LC316:
	.ascii	"%s %d j < 1!!\012\000"
	.space	1
.LC317:
	.ascii	"\012vfmw debug: arg1=%#x, arg2=%#x\012\000"
	.space	3
.LC318:
	.ascii	"---------------------------------------------------"
	.ascii	"----------------------\012\000"
	.space	1
.LC319:
	.ascii	"VCTRL_CheckChanWH return err.\012\000"
	.space	1
.LC320:
	.ascii	"VFMW didn't support std %d.\012\000"
	.space	3
.LC321:
	.ascii	"VCTRL_ConfigChan with same config paramater.\012\000"
	.space	2
.LC322:
	.ascii	"%s %d: s_pstVfmwChan has been destroyed!!\012\000"
	.space	1
.LC323:
	.ascii	"====== Fatal Error0: can NOT re-map vir address for"
	.ascii	" channel %d ======\012\000"
	.space	1
.LC324:
	.ascii	"fatal error: can not del mem record(phy=0x%x,vir=%p"
	.ascii	",len=%d)\012\000"
	.space	3
.LC325:
	.ascii	"====== Fatal Error1: can NOT re-map vir address for"
	.ascii	" channel %d ======\012\000"
	.space	1
.LC326:
	.ascii	"can NOT VCTRL_PartitionMemForStdUser\012\000"
	.space	2
.LC327:
	.ascii	"vdm_ctrl.c,L%d: %s\012\000"
.LC328:
	.ascii	"This Chan has not been created or has been destroye"
	.ascii	"d !!!\000"
	.space	3
.LC329:
	.ascii	"can NOT stop a not-opened Chan\000"
	.space	1
.LC330:
	.ascii	"VDEC_CID_CREATE_CHAN_WITH_OPTION is designed for CA"
	.ascii	"P_LEVEL_USER_DEFINE_WITH_OPTION, please change chan"
	.ascii	"nel's capability.\012\000"
	.space	3
.LC331:
	.ascii	"line %d VCTRL_GetChanMemSizeWithOption failed!\012\000"
.LC332:
	.ascii	"L: %d : sdk can NOT alloc buffer for channel contex"
	.ascii	"t\012\000"
	.space	2
.LC333:
	.ascii	"L: %d : can NOT alloc buffer for SCD\012\000"
	.space	2
.LC334:
	.ascii	"L: %d : can NOT alloc buffer for VDH\012\000"
	.space	2
.LC335:
	.ascii	"VFMW_Chan_Ctx\000"
	.space	2
.LC336:
	.ascii	"L: %d : we can NOT alloc buffer for channel context"
	.ascii	", size = %d\012\000"
.LC337:
	.ascii	"VFMW_Chan_Vdh\000"
	.space	2
.LC338:
	.ascii	"L: %d : can NOT alloc buffer for channel vdh, size "
	.ascii	"= %d\012\000"
	.space	3
.LC339:
	.ascii	"VFMW_Chan_Scd\000"
	.space	2
.LC340:
	.ascii	"L: %d : can NOT alloc buffer for channel scd, size "
	.ascii	"= %d\012\000"
	.space	3
.LC341:
	.ascii	"L: %d : part we can NOT alloc buffer for channel co"
	.ascii	"ntext\012\000"
	.space	2
.LC342:
	.ascii	"L: %d : can NOT alloc buffer for channel context\012"
	.ascii	"\000"
	.space	2
.LC343:
	.ascii	"L: %d : can NOT alloc buffer for channel vdh\012\000"
	.space	2
.LC344:
	.ascii	"L: %d : can NOT alloc buffer for channel vdh, %#x <"
	.ascii	" %#x\012\000"
	.space	3
.LC345:
	.ascii	"L: %d : can NOT alloc buffer for channel scd\012\000"
	.space	2
.LC346:
	.ascii	"mem alloc mode is not supportted\012\000"
	.space	2
.LC347:
	.ascii	"vfmw have max(%d) channels opened, can NOT crerate "
	.ascii	"more channels\012\000"
	.space	2
.LC348:
	.ascii	"can NOT enable FSP instance\012\000"
	.space	3
.LC349:
	.ascii	"VCTRL_CreateChan eCapLevel = %d error! Try to use V"
	.ascii	"CTRL_CreateChanWithOption(CAP_LEVEL_USER_DEFINE_WIT"
	.ascii	"H_OPTION, ...)\012\000"
	.space	2
.LC350:
	.ascii	"VCTRL_GetChanMemSize ERROR\012\000"
.LC351:
	.ascii	"channel memory have been allocated outside, but the"
	.ascii	" mem-info is not correct!\012\000"
	.space	2
.LC352:
	.ascii	"mem-info(phy, vir, size) = (%#x, %p, %d)\012\000"
	.space	2
.LC353:
	.ascii	"this channel totally need %d bytes memory\012\000"
	.space	1
.LC354:
	.ascii	"Thread running...\012\000"
	.space	1
.LC355:
	.ascii	"thread running...\012\000"
	.space	1
.LC356:
	.ascii	"Thread stopped!\012\000"
	.space	3
.LC357:
	.ascii	"thread stopped...\012\000"
	.space	1
.LC358:
	.ascii	"Thread killed!\012\000"
.LC359:
	.ascii	"vdm_ctrl.c,L%d: pOption->s32KeepBS error\012\000"
	.space	2
.LC360:
	.ascii	"BLANK\000"
	.space	2
.LC361:
	.ascii	"RECEIVED\000"
	.space	3
.LC362:
	.ascii	"SUCCESS\000"
.LC363:
	.ascii	"FAILURE\000"
.LC364:
	.ascii	"FRAMEID\000"
.LC365:
	.ascii	"H264\000"
	.space	3
.LC366:
	.ascii	"VC1\000"
.LC367:
	.ascii	"MPEG4\000"
	.space	2
.LC368:
	.ascii	"MPEG2\000"
	.space	2
.LC369:
	.ascii	"H263\000"
	.space	3
.LC370:
	.ascii	"DIVX3\000"
	.space	2
.LC371:
	.ascii	"AVS\000"
.LC372:
	.ascii	"JPEG\000"
	.space	3
.LC373:
	.ascii	"REAL8\000"
	.space	2
.LC374:
	.ascii	"REAL9\000"
	.space	2
.LC375:
	.ascii	"VP6\000"
.LC376:
	.ascii	"VP6F\000"
	.space	3
.LC377:
	.ascii	"VP6A\000"
	.space	3
.LC378:
	.ascii	"VP8\000"
.LC379:
	.ascii	"SORENSON\000"
	.space	3
.LC380:
	.ascii	"MVC\000"
.LC381:
	.ascii	"HEVC\000"
	.space	3
.LC382:
	.ascii	"RAW\000"
.LC383:
	.ascii	"USER\000"
	.space	3
.LC384:
	.ascii	"RESERVED\000"
	.space	3
.LC385:
	.ascii	"=============== scd info =========================="
	.ascii	"====\012\000"
	.space	3
.LC386:
	.ascii	"IsScdDrvOpen\000"
	.space	3
.LC387:
	.ascii	"SCDState\000"
	.space	3
.LC388:
	.ascii	"ThisInstID\000"
	.space	1
.LC389:
	.ascii	"LastProcessTime\000"
.LC390:
	.ascii	"%-25s :%#x\012\000"
.LC391:
	.ascii	"HwMemAddr\000"
	.space	2
.LC392:
	.ascii	"HwMemSize\000"
	.space	2
.LC393:
	.ascii	"DownMsgMemAddr\000"
	.space	1
.LC394:
	.ascii	"UpMsgMemAddr\000"
	.space	3
.LC395:
	.ascii	"--------------- inst[%d] -------------\012\000"
.LC396:
	.ascii	"Mode\000"
	.space	3
.LC397:
	.ascii	"%-25s :%s\012\000"
	.space	1
.LC398:
	.ascii	"cfg VidStd\000"
	.space	1
.LC399:
	.ascii	"is wait seg ext\000"
.LC400:
	.ascii	"is_omx_path\000"
.LC401:
	.ascii	"cfg BufPhyAddr\000"
	.space	1
.LC402:
	.ascii	"cfg BufSize\000"
.LC403:
	.ascii	"raw size count\000"
	.space	1
.LC404:
	.ascii	"raw num count\000"
	.space	2
.LC405:
	.ascii	"raw Total size\000"
	.space	1
.LC406:
	.ascii	"raw Total num\000"
	.space	2
.LC407:
	.ascii	"seg Total size\000"
	.space	1
.LC408:
	.ascii	"seg Total num\000"
	.space	2
.LC409:
	.ascii	"seg read_addr\000"
	.space	2
.LC410:
	.ascii	"seg write_addr\000"
	.space	1
.LC411:
	.ascii	"%-25s :%d Kbps\012\000"
.LC412:
	.ascii	"actual bitrate\000"
	.space	1
.LC413:
	.ascii	"\012============== DEC INFO Chan [%d] ============="
	.ascii	"=\012\000"
	.space	1
.LC414:
	.ascii	"NA\000"
	.space	1
.LC415:
	.ascii	"Non_Attach\000"
	.space	1
.LC416:
	.ascii	"Attach\000"
	.space	1
.LC417:
	.ascii	"%-25s :%d(%s)\012\000"
	.space	1
.LC418:
	.ascii	"Dec by VDH\000"
	.space	1
.LC419:
	.ascii	"IsOpen\000"
	.space	1
.LC420:
	.ascii	"IsRun\000"
	.space	2
.LC421:
	.ascii	"Priority\000"
	.space	3
.LC422:
	.ascii	"eVidStd\000"
.LC423:
	.ascii	"ChanCapLevel\000"
	.space	3
.LC424:
	.ascii	"LastFrameState\000"
	.space	1
.LC425:
	.ascii	"IsOmxPath\000"
	.space	2
.LC426:
	.ascii	"DecMode\000"
.LC427:
	.ascii	"DecOrderOutput\000"
	.space	1
.LC428:
	.ascii	"ErrorThred\000"
	.space	1
.LC429:
	.ascii	"StreamThred\000"
.LC430:
	.ascii	"StdExt AP\000"
	.space	2
.LC431:
	.ascii	"StdExt CodecVer\000"
.LC432:
	.ascii	"StdExt Reversed\000"
.LC433:
	.ascii	"Skip Frame Found\000"
	.space	3
.LC434:
	.ascii	"Skip Frame Discarded\000"
	.space	3
.LC435:
	.ascii	"Is Short Headed\000"
.LC436:
	.ascii	"Recent UsrdecFrame: enFmt=%d,w=%d,h=%d,Ystride=%d,C"
	.ascii	"stride=%d,PTS=%lld\012\000"
	.space	1
.LC437:
	.ascii	"ChanMem VDH Mem Phy\000"
.LC438:
	.ascii	"ChanMem VDH Mem Size\000"
	.space	3
.LC439:
	.ascii	"ChanMem SCD Mem Phy\000"
.LC440:
	.ascii	"ChanMem SCD Mem Size\000"
	.space	3
.LC441:
	.ascii	"ChanMem CTX Mem Phy\000"
.LC442:
	.ascii	"ChanMem CTX Mem Size\000"
	.space	3
.LC443:
	.ascii	"%-25s :%d,%d,%d\012\000"
	.space	3
.LC444:
	.ascii	"Ref,Read,New\000"
	.space	3
.LC445:
	.ascii	"%-25s :(%d,%d,%d)\012\000"
	.space	1
.LC446:
	.ascii	"VoQue Detail\000"
	.space	3
.LC447:
	.ascii	"Actual DecMode\000"
	.space	1
.LC448:
	.ascii	"Actual DecOrderOutput\000"
	.space	2
.LC449:
	.ascii	"Image Format\000"
	.space	3
.LC450:
	.ascii	"Frame Packing Type\000"
	.space	1
.LC451:
	.ascii	"------------------- FSP INFO ------------------\012"
	.ascii	"\000"
	.space	3
.LC452:
	.ascii	"FSP DecFsWidth\000"
	.space	1
.LC453:
	.ascii	"FSP DecFsHeight\000"
.LC454:
	.ascii	"FSP DispFsWidth\000"
.LC455:
	.ascii	"FSP DispFsHeight\000"
	.space	3
.LC456:
	.ascii	"FSP ExpectedDecFsNum\000"
	.space	3
.LC457:
	.ascii	"FSP TotalValidFSNum\000"
.LC458:
	.ascii	"FSP ActualPmvNum\000"
	.space	3
.LC459:
	.ascii	"\012%-25s :%d\012\000"
.LC460:
	.ascii	"FSP DispLoopEnable\000"
	.space	1
.LC461:
	.ascii	"FSP ExpectedDispFsNum\000"
	.space	2
.LC462:
	.ascii	"FSP s32DispFsNum\000"
	.space	3
.LC463:
	.ascii	"%d%d \000"
	.space	2
.LC464:
	.ascii	"FSP ActualDecFsNum\000"
	.space	1
.LC465:
	.ascii	"FSP LogicFsNum\000"
	.space	1
.LC466:
	.ascii	"---------------Dynamic Frame Store---------------\012"
	.ascii	"\000"
	.space	1
.LC467:
	.ascii	"%-40s : %d\012\000"
.LC468:
	.ascii	"Frame Size(byte)\000"
	.space	3
.LC469:
	.ascii	"Max Time(ms)\000"
	.space	3
.LC470:
	.ascii	"Reference Frame Number\000"
	.space	1
.LC471:
	.ascii	"%-40s : %d/%d\012\000"
	.space	1
.LC472:
	.ascii	"Pre-alloced Frame Number/Time(ms)\000"
	.space	2
.LC473:
	.ascii	"Dynamic alloced Frame Number/Time(ms)\000"
	.space	2
.LC474:
	.ascii	"All Frame Number/Time(ms)\000"
	.space	2
.LC475:
	.ascii	"------------------- VDH INFO ------------------\012"
	.ascii	"\000"
	.space	3
.LC476:
	.ascii	"%s%-21d :%d.%d%%\012\000"
	.space	2
.LC477:
	.ascii	"VDH \000"
	.space	3
.LC478:
	.ascii	"%-25s :%d.%d fps(Chan %d)\012\000"
	.space	1
.LC479:
	.ascii	"Frame Rate\000"
	.space	1
.LC480:
	.ascii	"%-25s :%d/mb\012\000"
	.space	2
.LC481:
	.ascii	"Cycle State\000"
	.section	__param,"a",%progbits
	.align	2
	.type	__param_extra_cmd, %object
	.size	__param_extra_cmd, 16
__param_extra_cmd:
@ name:
	.word	__param_str_extra_cmd
@ ops:
	.word	param_ops_int
@ perm:
	.short	0
@ level:
	.short	-1
@ <anonymous>:
@ arg:
	.word	extra_cmd
	.type	__param_extra_disp, %object
	.size	__param_extra_disp, 16
__param_extra_disp:
@ name:
	.word	__param_str_extra_disp
@ ops:
	.word	param_ops_int
@ perm:
	.short	0
@ level:
	.short	-1
@ <anonymous>:
@ arg:
	.word	extra_disp
	.type	__param_extra_ref, %object
	.size	__param_extra_ref, 16
__param_extra_ref:
@ name:
	.word	__param_str_extra_ref
@ ops:
	.word	param_ops_int
@ perm:
	.short	0
@ level:
	.short	-1
@ <anonymous>:
@ arg:
	.word	extra_ref
	.bss
	.align	2
.LANCHOR0 = . + 0
.LANCHOR3 = . + 8184
.LANCHOR4 = . + 16368
	.type	s_pstVfmwChan, %object
	.size	s_pstVfmwChan, 64
s_pstVfmwChan:
	.space	64
	.type	g_event_report, %object
	.size	g_event_report, 4
g_event_report:
	.space	4
	.type	extra_ref, %object
	.size	extra_ref, 4
extra_ref:
	.space	4
	.type	extra_disp, %object
	.size	extra_disp, 4
extra_disp:
	.space	4
	.type	g_SdecFunc, %object
	.size	g_SdecFunc, 28
g_SdecFunc:
	.space	28
	.type	s_VfmwCTrl, %object
	.size	s_VfmwCTrl, 208
s_VfmwCTrl:
	.space	208
	.type	s_StreamIntf, %object
	.size	s_StreamIntf, 192
s_StreamIntf:
	.space	192
	.type	pY, %object
	.size	pY, 4
pY:
	.space	4
	.type	pVl, %object
	.size	pVl, 4
pVl:
	.space	4
	.type	pUl, %object
	.size	pUl, 4
pUl:
	.space	4
	.type	g_VdmCharacter, %object
	.size	g_VdmCharacter, 4
g_VdmCharacter:
	.space	4
	.type	g_TaskLock, %object
	.size	g_TaskLock, 12
g_TaskLock:
	.space	12
	.type	s_ChanControlState, %object
	.size	s_ChanControlState, 64
s_ChanControlState:
	.space	64
	.type	vfmw_proc, %object
	.size	vfmw_proc, 768
vfmw_proc:
	.space	768
	.type	g_CurProcChan, %object
	.size	g_CurProcChan, 4
g_CurProcChan:
	.space	4
	.type	extra_cmd, %object
	.size	extra_cmd, 4
extra_cmd:
	.space	4
	.type	g_ResetCreateNewSave, %object
	.size	g_ResetCreateNewSave, 4
g_ResetCreateNewSave:
	.space	4
	.type	g_VfmwGlobalStat, %object
	.size	g_VfmwGlobalStat, 84
g_VfmwGlobalStat:
	.space	84
	.type	g_VfmwChanStat, %object
	.size	g_VfmwChanStat, 4800
g_VfmwChanStat:
	.space	4800
	.type	last_rec_pos_time.53512, %object
	.size	last_rec_pos_time.53512, 64
last_rec_pos_time.53512:
	.space	64
	.type	last_rec_pos_decparam_time.53513, %object
	.size	last_rec_pos_decparam_time.53513, 64
last_rec_pos_decparam_time.53513:
	.space	64
	.type	ChanPriTab.53396, %object
	.size	ChanPriTab.53396, 64
ChanPriTab.53396:
	.space	64
	.type	g_ActivateLock, %object
	.size	g_ActivateLock, 12
g_ActivateLock:
	.space	12
	.type	last_rec_pos_time.52056, %object
	.size	last_rec_pos_time.52056, 64
last_rec_pos_time.52056:
	.space	64
	.type	vfmw_save_yuv_file, %object
	.size	vfmw_save_yuv_file, 128
vfmw_save_yuv_file:
	.space	128
	.type	save_yuv_with_crop, %object
	.size	save_yuv_with_crop, 4
save_yuv_with_crop:
	.space	4
	.type	last_rec_pos_time.51933, %object
	.size	last_rec_pos_time.51933, 64
last_rec_pos_time.51933:
	.space	64
	.type	g_DSPState, %object
	.size	g_DSPState, 64
g_DSPState:
	.space	64
	.type	PrioArray.51129, %object
	.size	PrioArray.51129, 64
PrioArray.51129:
	.space	64
	.type	FspInstInfo.50434, %object
	.size	FspInstInfo.50434, 3852
FspInstInfo.50434:
	.space	3852
	.type	cmdline, %object
	.size	cmdline, 1024
cmdline:
	.space	1024
	.type	g_allow_B_before_P, %object
	.size	g_allow_B_before_P, 1
g_allow_B_before_P:
	.space	1
	.type	g_not_allow_H264FullPictureRepair_flag, %object
	.size	g_not_allow_H264FullPictureRepair_flag, 1
g_not_allow_H264FullPictureRepair_flag:
	.space	1
	.type	g_apple_airplay_mirrorinig_flag, %object
	.size	g_apple_airplay_mirrorinig_flag, 1
g_apple_airplay_mirrorinig_flag:
	.space	1
	.space	1
	.type	g_IntEvent, %object
	.size	g_IntEvent, 16
g_IntEvent:
	.space	16
	.type	AcceleratorCharacter, %object
	.size	AcceleratorCharacter, 4
AcceleratorCharacter:
	.space	4
	.type	LastEventTime.50050, %object
	.size	LastEventTime.50050, 4
LastEventTime.50050:
	.space	4
	.type	vfmw_save_str_file, %object
	.size	vfmw_save_str_file, 128
vfmw_save_str_file:
	.space	128
	.type	save_file_cnt.54076, %object
	.size	save_file_cnt.54076, 4
save_file_cnt.54076:
	.space	4
	.type	save_str_chan_num, %object
	.size	save_str_chan_num, 4
save_str_chan_num:
	.space	4
	.type	vfmw_save_seg_file, %object
	.size	vfmw_save_seg_file, 128
vfmw_save_seg_file:
	.space	128
	.type	save_file_cnt.54079, %object
	.size	save_file_cnt.54079, 4
save_file_cnt.54079:
	.space	4
	.type	save_seg_chan_num, %object
	.size	save_seg_chan_num, 4
save_seg_chan_num:
	.space	4
	.type	save_file_cnt.54084, %object
	.size	save_file_cnt.54084, 4
save_file_cnt.54084:
	.space	4
	.type	MemRecord_YUV, %object
	.size	MemRecord_YUV, 16
MemRecord_YUV:
	.space	16
	.type	g_SleepTime, %object
	.size	g_SleepTime, 4
g_SleepTime:
	.space	4
	.type	g_DnrSleepTime, %object
	.size	g_DnrSleepTime, 4
g_DnrSleepTime:
	.space	4
	.type	g_StopDec, %object
	.size	g_StopDec, 4
g_StopDec:
	.space	4
	.type	g_SCDID, %object
	.size	g_SCDID, 4
g_SCDID:
	.space	4
	.type	cmd.55089, %object
	.size	cmd.55089, 256
cmd.55089:
	.space	256
	.type	str.55090, %object
	.size	str.55090, 256
str.55090:
	.space	256
	.type	Capability.51407, %object
	.size	Capability.51407, 148
Capability.51407:
	.space	148
	.type	PrioArray.51406, %object
	.size	PrioArray.51406, 64
PrioArray.51406:
	.space	64
	.type	PrioArray.51162, %object
	.size	PrioArray.51162, 64
PrioArray.51162:
	.space	64
	.type	pOption, %object
	.size	pOption, 4
pOption:
	.space	4
	.type	g_u32DFSMaxAllocTime, %object
	.size	g_u32DFSMaxAllocTime, 4
g_u32DFSMaxAllocTime:
	.space	4
	.type	g_VdecIrqHandle, %object
	.size	g_VdecIrqHandle, 4
g_VdecIrqHandle:
	.space	4
	.type	g_DnrIrqHandle, %object
	.size	g_DnrIrqHandle, 4
g_DnrIrqHandle:
	.space	4
	.type	g_eVdmVersion, %object
	.size	g_eVdmVersion, 4
g_eVdmVersion:
	.space	4
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
