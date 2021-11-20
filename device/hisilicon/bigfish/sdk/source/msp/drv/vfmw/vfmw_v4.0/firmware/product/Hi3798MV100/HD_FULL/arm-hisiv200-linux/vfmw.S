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
	.file	"vfmw.c"
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
@ -DKBUILD_BASENAME=KBUILD_STR(vfmw) -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD drivers/msp/vfmw/vfmw_v4.0/firmware/product/Hi3798MV100/.vfmw.o.d
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/drivers/msp/vfmw/vfmw_v4.0/firmware/product/Hi3798MV100/vfmw.c
@ -mlittle-endian -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -marm -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/product/Hi3798MV100/vfmw.o -O2 -Wall
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
	.global	VDM_ResetClock
	.type	VDM_ResetClock, %function
VDM_ResetClock:
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
	movw	ip, #:lower16:g_pstRegCrg	@ tmp139,
	movt	ip, #:upper16:g_pstRegCrg	@ tmp139,
	ldr	r1, [ip, #0]	@ g_pstRegCrg.443, g_pstRegCrg
	ldr	r0, [r1, #120]	@ D.50141, <variable>.PERI_CRG30.u32
	bfc	r0, #12, #5	@ u32TmpValue,,
	bfc	r0, #17, #1	@ u32TmpValue,,
	str	r0, [r1, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	ldr	r2, [ip, #0]	@ g_pstRegCrg.551, g_pstRegCrg
	orr	r3, r0, #131072	@ u32TmpValue, u32TmpValue,
	str	r3, [r2, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VDM_ResetClock, .-VDM_ResetClock
	.align	2
	.global	VDM_OpenHardware
	.type	VDM_OpenHardware, %function
VDM_OpenHardware:
	.fnstart
.LFB1532:
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
	movw	r0, #:lower16:g_pstRegCrg	@ tmp138,
	movt	r0, #:upper16:g_pstRegCrg	@ tmp138,
	movw	r2, #:lower16:arm_delay_ops	@ tmp140,
	movt	r2, #:upper16:arm_delay_ops	@ tmp140,
	ldr	r1, [r0, #0]	@ g_pstRegCrg.444, g_pstRegCrg
	movw	r0, #:lower16:32212230	@ tmp141,
	movt	r0, #:upper16:32212230	@,
	ldr	lr, [r1, #120]	@ D.50148, <variable>.PERI_CRG30.u32
	orr	ip, lr, #1	@ u32TmpValue, D.50148,
	bfc	ip, #4, #1	@ u32TmpValue,,
	bfc	ip, #6, #1	@ u32TmpValue,,
	bfc	ip, #8, #2	@ u32TmpValue,,
	bfc	ip, #12, #5	@ u32TmpValue,,
	bfc	ip, #17, #1	@ u32TmpValue,,
	str	ip, [r1, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	ldr	r3, [r2, #4]	@ arm_delay_ops.const_udelay, arm_delay_ops.const_udelay
	blx	r3	@ arm_delay_ops.const_udelay
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VDM_OpenHardware, .-VDM_OpenHardware
	.align	2
	.global	DSP_OpenHardware
	.type	DSP_OpenHardware, %function
DSP_OpenHardware:
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
	movw	r0, #:lower16:g_pstRegCrg	@ tmp138,
	movt	r0, #:upper16:g_pstRegCrg	@ tmp138,
	movw	ip, #:lower16:arm_delay_ops	@ tmp140,
	movt	ip, #:upper16:arm_delay_ops	@ tmp140,
	ldr	r2, [r0, #0]	@ g_pstRegCrg.445, g_pstRegCrg
	movw	r0, #:lower16:32212230	@ tmp141,
	movt	r0, #:upper16:32212230	@,
	ldr	lr, [r2, #120]	@ D.50156, <variable>.PERI_CRG30.u32
	orr	r1, lr, #2	@ u32TmpValue, D.50156,
	str	r1, [r2, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	ldr	r3, [ip, #4]	@ arm_delay_ops.const_udelay, arm_delay_ops.const_udelay
	blx	r3	@ arm_delay_ops.const_udelay
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	DSP_OpenHardware, .-DSP_OpenHardware
	.align	2
	.global	DSP_CloseHardware
	.type	DSP_CloseHardware, %function
DSP_CloseHardware:
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
	movw	r0, #:lower16:g_pstRegCrg	@ tmp138,
	movt	r0, #:upper16:g_pstRegCrg	@ tmp138,
	movw	ip, #:lower16:arm_delay_ops	@ tmp139,
	movt	ip, #:upper16:arm_delay_ops	@ tmp139,
	ldr	r2, [r0, #0]	@ g_pstRegCrg.447, g_pstRegCrg
	movw	r0, #:lower16:32212230	@ tmp140,
	movt	r0, #:upper16:32212230	@,
	ldr	r1, [r2, #120]	@ D.50177, <variable>.PERI_CRG30.u32
	bfc	r1, #1, #1	@ u32TmpValue,,
	str	r1, [r2, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	ldr	r3, [ip, #4]	@ arm_delay_ops.const_udelay, arm_delay_ops.const_udelay
	blx	r3	@ arm_delay_ops.const_udelay
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	DSP_CloseHardware, .-DSP_CloseHardware
	.align	2
	.global	SCD_OpenHardware
	.type	SCD_OpenHardware, %function
SCD_OpenHardware:
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
	movw	r0, #:lower16:g_pstRegCrg	@ tmp138,
	movt	r0, #:upper16:g_pstRegCrg	@ tmp138,
	ldr	r3, [r0, #0]	@ g_pstRegCrg.448, g_pstRegCrg
	ldr	r2, [r3, #120]	@ D.50185, <variable>.PERI_CRG30.u32
	bfc	r2, #5, #1	@ u32TmpValue,,
	str	r2, [r3, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	SCD_OpenHardware, .-SCD_OpenHardware
	.align	2
	.global	SCD_CloseHardware
	.type	SCD_CloseHardware, %function
SCD_CloseHardware:
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
	movw	r1, #:lower16:g_pstRegCrg	@ tmp138,
	movt	r1, #:upper16:g_pstRegCrg	@ tmp138,
	ldr	r3, [r1, #0]	@ g_pstRegCrg.449, g_pstRegCrg
	ldr	r0, [r3, #120]	@ D.50192, <variable>.PERI_CRG30.u32
	orr	r2, r0, #32	@ u32TmpValue, D.50192,
	str	r2, [r3, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	SCD_CloseHardware, .-SCD_CloseHardware
	.align	2
	.global	BPD_OpenHardware
	.type	BPD_OpenHardware, %function
BPD_OpenHardware:
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
	movw	ip, #:lower16:g_pstRegCrg	@ tmp138,
	movt	ip, #:upper16:g_pstRegCrg	@ tmp138,
	mov	r0, #0	@,
	ldr	r3, [ip, #0]	@ g_pstRegCrg.450, g_pstRegCrg
	ldr	r1, [r3, #136]	@ D.50199, <variable>.PERI_CRG34.u32
	orr	r2, r1, #1	@ u32TmpValue, D.50199,
	bfc	r2, #4, #1	@ u32TmpValue,,
	str	r2, [r3, #136]	@ u32TmpValue, <variable>.PERI_CRG34.u32
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	BPD_OpenHardware, .-BPD_OpenHardware
	.align	2
	.global	BPD_CloseHardware
	.type	BPD_CloseHardware, %function
BPD_CloseHardware:
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
	movw	r2, #:lower16:g_pstRegCrg	@ tmp138,
	movt	r2, #:upper16:g_pstRegCrg	@ tmp138,
	mov	r0, #0	@,
	ldr	r3, [r2, #0]	@ g_pstRegCrg.451, g_pstRegCrg
	ldr	ip, [r3, #136]	@ D.50207, <variable>.PERI_CRG34.u32
	bic	r1, ip, #17	@ u32TmpValue, D.50207,
	orr	r2, r1, #16	@ u32TmpValue, u32TmpValue,
	str	r2, [r3, #136]	@ u32TmpValue, <variable>.PERI_CRG34.u32
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	BPD_CloseHardware, .-BPD_CloseHardware
	.align	2
	.global	VDEC_Resume
	.type	VDEC_Resume, %function
VDEC_Resume:
	.fnstart
.LFB1547:
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
	bl	VCTRL_Resume	@
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VDEC_Resume, .-VDEC_Resume
	.align	2
	.global	VDM_CloseHardware
	.type	VDM_CloseHardware, %function
VDM_CloseHardware:
	.fnstart
.LFB1534:
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
	movw	r1, #:lower16:.LANCHOR0	@ tmp141,
	movt	r1, #:upper16:.LANCHOR0	@ tmp141,
	movw	r4, #:lower16:g_pstRegCrg	@ tmp147,
	movt	r4, #:upper16:g_pstRegCrg	@ tmp147,
	ldr	r0, [r1, #60]	@ D.50165, g_vdm_hal_fun_ptr.pfun_VDMHAL_GlbReset
	ldr	r3, [r4, #0]	@ g_pstRegCrg.446, g_pstRegCrg
	cmp	r0, #0	@ D.50165,
	ldr	r5, [r3, #120]	@ D.50164, <variable>.PERI_CRG30.u32
	beq	.L20	@,
	blx	r0	@ D.50165
.L21:
	ldr	lr, [r4, #0]	@ g_pstRegCrg.760, g_pstRegCrg
	movw	ip, #:lower16:arm_delay_ops	@ tmp144,
	movt	ip, #:upper16:arm_delay_ops	@ tmp144,
	bfc	r5, #0, #1	@ u32TmpValue,,
	movw	r0, #:lower16:32212230	@,
	movt	r0, #:upper16:32212230	@,
	str	r5, [lr, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	ldr	r2, [ip, #4]	@ arm_delay_ops.const_udelay, arm_delay_ops.const_udelay
	blx	r2	@ arm_delay_ops.const_udelay
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L20:
	movw	r1, #:lower16:.LC1	@,
	mov	r2, #253	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	b	.L21	@
	.fnend
	.size	VDM_CloseHardware, .-VDM_CloseHardware
	.align	2
	.global	VDEC_Suspend
	.type	VDEC_Suspend, %function
VDEC_Suspend:
	.fnstart
.LFB1546:
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
	bl	VCTRL_Suspend	@
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VDEC_Suspend, .-VDEC_Suspend
	.align	2
	.global	GetVdecCapability
	.type	GetVdecCapability, %function
GetVdecCapability:
	.fnstart
.LFB1545:
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
	mov	r1, #148	@,
	mov	r4, r0	@ pCap, pCap
	bl	__memzero	@
	mov	r2, #16	@ tmp134,
	mov	r1, #50	@ tmp135,
	mov	r0, #4096	@ tmp136,
	mov	r3, #2304	@ tmp137,
	str	r2, [r4, #80]	@ tmp134, <variable>.SupportedStd
	movw	ip, #:lower16:424673280	@ tmp158,
	str	r1, [r4, #4]	@ tmp135, <variable>.s32MaxBitRate
	movt	ip, #:upper16:424673280	@ tmp158,
	mov	r1, #0	@ tmp139,
	str	r0, [r4, #8]	@ tmp136, <variable>.s32MaxFrameWidth
	str	r3, [r4, #12]	@ tmp137, <variable>.s32MaxFrameHeight
	mov	r0, #3	@ tmp140,
	mov	r3, #2	@ tmp141,
	str	r2, [r4, #0]	@ tmp134, <variable>.s32MaxChanNum
	str	ip, [r4, #16]	@ tmp158, <variable>.s32MaxPixelPerSec
	mov	r2, #8	@ tmp143,
	mov	ip, #6	@ tmp142,
	str	r1, [r4, #20]	@ tmp139, <variable>.SupportedStd
	str	r0, [r4, #24]	@ tmp140, <variable>.SupportedStd
	mov	r1, #9	@ tmp144,
	mov	r0, #1	@ tmp145,
	str	r3, [r4, #28]	@ tmp141, <variable>.SupportedStd
	str	ip, [r4, #32]	@ tmp142, <variable>.SupportedStd
	mov	r3, #5	@ tmp146,
	mov	ip, #4	@ tmp147,
	str	r2, [r4, #36]	@ tmp143, <variable>.SupportedStd
	str	r1, [r4, #40]	@ tmp144, <variable>.SupportedStd
	mov	r2, #10	@ tmp148,
	mov	r1, #14	@ tmp149,
	str	r0, [r4, #44]	@ tmp145, <variable>.SupportedStd
	str	r3, [r4, #48]	@ tmp146, <variable>.SupportedStd
	mov	r0, #11	@ tmp150,
	mov	r3, #12	@ tmp151,
	str	ip, [r4, #52]	@ tmp147, <variable>.SupportedStd
	str	r2, [r4, #56]	@ tmp148, <variable>.SupportedStd
	mov	ip, #13	@ tmp152,
	str	r1, [r4, #60]	@ tmp149, <variable>.SupportedStd
	mov	r2, #15	@ tmp153,
	str	r0, [r4, #64]	@ tmp150, <variable>.SupportedStd
	mov	r1, #17	@ tmp155,
	str	r3, [r4, #68]	@ tmp151, <variable>.SupportedStd
	mov	r0, #18	@ tmp156,
	mov	r3, #19	@ tmp157,
	str	ip, [r4, #72]	@ tmp152, <variable>.SupportedStd
	str	r2, [r4, #76]	@ tmp153, <variable>.SupportedStd
	str	r1, [r4, #84]	@ tmp155, <variable>.SupportedStd
	str	r0, [r4, #88]	@ tmp156, <variable>.SupportedStd
	str	r3, [r4, #92]	@ tmp157, <variable>.SupportedStd
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	GetVdecCapability, .-GetVdecCapability
	.align	2
	.global	VDEC_Control
	.type	VDEC_Control, %function
VDEC_Control:
	.fnstart
.LFB1544:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #60
	sub	sp, sp, #60	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r3, #:lower16:.LANCHOR0	@ tmp316,
	movt	r3, #:upper16:.LANCHOR0	@ tmp316,
	mov	r6, r0	@ ChanID, ChanID
	mov	r4, r2	@ pArgs, pArgs
	ldr	r0, [r3, #124]	@ g_VfmwEnableFlag, g_VfmwEnableFlag
	cmp	r0, #1	@ g_VfmwEnableFlag,
	beq	.L29	@,
	movw	r1, #:lower16:.LC3	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC3	@,
	mvn	r5, #0	@ ret,
	bl	dprint_vfmw	@
.L30:
	mov	r0, r5	@, ret
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L29:
	cmp	r1, #59	@ eCmdID,
	ldrls	pc, [pc, r1, asl #2]	@ eCmdID
	b	.L79	@
.L57:
	.word	.L32
	.word	.L33
	.word	.L32
	.word	.L32
	.word	.L34
	.word	.L35
	.word	.L32
	.word	.L32
	.word	.L36
	.word	.L37
	.word	.L32
	.word	.L32
	.word	.L32
	.word	.L32
	.word	.L38
	.word	.L39
	.word	.L40
	.word	.L79
	.word	.L41
	.word	.L42
	.word	.L43
	.word	.L44
	.word	.L32
	.word	.L32
	.word	.L45
	.word	.L79
	.word	.L79
	.word	.L79
	.word	.L79
	.word	.L79
	.word	.L46
	.word	.L47
	.word	.L79
	.word	.L48
	.word	.L49
	.word	.L32
	.word	.L79
	.word	.L79
	.word	.L79
	.word	.L79
	.word	.L79
	.word	.L79
	.word	.L79
	.word	.L79
	.word	.L79
	.word	.L79
	.word	.L79
	.word	.L79
	.word	.L79
	.word	.L79
	.word	.L32
	.word	.L32
	.word	.L50
	.word	.L51
	.word	.L52
	.word	.L53
	.word	.L54
	.word	.L55
	.word	.L32
	.word	.L56
.L130:
	mov	r2, r6	@, ChanID
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@, ChanID
	mov	r1, r4	@, pArgs
	bl	VCTRL_SetFsParamToChan	@
	mov	r0, r6	@, ChanID
	bl	VCTRL_RequestChanMem	@
	cmp	r0, #0	@,
	bne	.L131	@,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r6	@, ChanID
	mov	r1, #2	@,
	bl	VCTRL_SetChanFsPartitionState	@
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC11	@,
	movt	r1, #:upper16:.LC11	@,
	bl	dprint_vfmw	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
.L132:
	mov	r0, r6	@, ChanID
	mov	r1, #0	@,
	bl	VCTRT_SetChanCtrlState	@
	subs	r5, r0, #0	@ ret,
	beq	.L30	@,
.L79:
	mvn	r5, #0	@ ret,
	b	.L30	@
.L46:
	cmp	r2, #0	@ pArgs,
	beq	.L153	@,
.L74:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r6	@, ChanID
	sub	r1, fp, #80	@,,
	bl	VCTRL_GetUsrdecFrame	@
	ldr	r5, [fp, #-72]	@ stMem.Length, stMem.Length
	ldr	r2, [fp, #-80]	@ stMem.PhyAddr, stMem.PhyAddr
	stmia	r4, {r2, r5}	@ phole stm
.L149:
	cmp	r0, #0	@ ret
	moveq	r5, r0	@, ret, ret
	mvnne	r5, #0	@, ret,
.L150:
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L30	@
.L33:
	cmp	r2, #0	@ pArgs,
	beq	.L154	@,
.L58:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r4	@, pArgs
	bl	GetVdecCapability	@
	mov	r5, #0	@ ret,
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L30	@
.L34:
	cmp	r2, #0	@ pArgs,
	beq	.L155	@,
	ldr	r0, [r2, #0]	@ prephitmp.830,* pArgs
	cmp	r0, #33	@ prephitmp.830,
	bgt	.L156	@,
.L61:
	add	r1, r4, #4	@, pArgs,
	bl	VCTRL_CreateChan	@
	movw	r1, #:lower16:.LC7	@,
	movt	r1, #:upper16:.LC7	@,
	mov	r5, r0	@ ret.892,
	mov	r0, #2	@,
	mov	r2, r5	@, ret.892
	bl	dprint_vfmw	@
	cmp	r5, #0	@ ret.892,
	str	r5, [r4, #0]	@ ret.892,* pArgs
	blt	.L79	@,
.L84:
	mov	r5, #0	@ ret,
	b	.L30	@
.L50:
	cmp	r2, #0	@ pArgs,
	beq	.L157	@,
.L76:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r6	@, ChanID
	sub	r1, fp, #80	@,,
	mov	ip, #1	@ tmp270,
	mov	r3, #0	@ tmp271,
	str	ip, [fp, #-80]	@ tmp270, option.s32KeepBS
	str	r3, [fp, #-76]	@ tmp271, option.s32KeepSPSPPS
	bl	VCTRL_ResetChanWithOption	@
	cmp	r0, #0	@,
	bne	.L125	@,
	mov	r0, r6	@, ChanID
	mov	r1, r4	@, pArgs
	bl	VCTRL_SeekPts	@
	subs	r5, r0, #0	@ ret,
	beq	.L150	@,
.L125:
	mvn	r5, #0	@ ret,
	b	.L150	@
.L54:
	cmp	r2, #0	@ pArgs,
	beq	.L158	@,
.L81:
	add	r0, r6, r3	@ tmp284, ChanID, tmp316
	mov	ip, #1	@ tmp286,
	add	r3, r3, r6, asl #2	@, tmp291, tmp316, ChanID,
	mov	r5, #0	@ ret,
	strb	ip, [r0, #128]	@ tmp286, g_LowDelayCalcStat
	ldr	r2, [r4, #0]	@ tmp293,* pArgs
	str	r2, [r3, #144]	@ tmp293, g_LowDelayCalcHandle
	b	.L30	@
.L53:
	cmp	r2, #0	@ pArgs,
	beq	.L159	@,
.L80:
	ldr	r0, [r4, #0]	@ tmp281,* pArgs
	movw	r1, #:lower16:.LANCHOR1	@ tmp280,
	movt	r1, #:upper16:.LANCHOR1	@ tmp280,
	mov	r5, #0	@ ret,
	str	r0, [r1, r6, asl #2]	@ tmp281, g_FrameRate
	b	.L30	@
.L55:
	cmp	r2, #0	@ pArgs,
	beq	.L160	@,
.L82:
	add	r5, r6, r3	@ tmp296, ChanID, tmp316
	add	r1, r3, r6, asl #2	@, tmp303, tmp316, ChanID,
	mov	r2, #0	@ tmp298,
	strb	r2, [r5, #128]	@ tmp298, g_LowDelayCalcStat
	mov	r5, r2	@ ret, tmp298
	str	r2, [r1, #144]	@ tmp298, g_LowDelayCalcHandle
	b	.L30	@
.L35:
	cmp	r2, #0	@ pArgs,
	beq	.L161	@,
	ldr	r0, [r2, #0]	@ prephitmp.826,* pArgs
	cmp	r0, #33	@ prephitmp.826,
	bgt	.L162	@,
.L63:
	ldr	r1, [r4, #4]	@,
	mov	r2, #2	@,
	mov	r3, #0	@,
	bl	VCTRL_CreateChanWithOption	@
	cmp	r0, #0	@ ret.896,
	str	r0, [r4, #0]	@ ret.896,* pArgs
	blt	.L79	@,
	mov	r5, #0	@ ret,
	b	.L30	@
.L36:
	cmp	r2, #0	@ pArgs,
	beq	.L163	@,
.L64:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r6	@, ChanID
	mov	r1, r4	@, pArgs
	bl	VCTRL_GetChanCfg	@
	b	.L149	@
.L37:
	cmp	r2, #0	@ pArgs,
	beq	.L164	@,
.L65:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r6	@, ChanID
	mov	r1, r4	@, pArgs
	bl	VCTRL_ConfigChan	@
	cmp	r0, #0	@,
	bne	.L125	@,
	mov	r0, r6	@, ChanID
	bl	VCTRL_LoadDspCode	@
	subs	r5, r0, #0	@ ret,
	mvnne	r5, #0	@ ret,
	b	.L150	@
.L40:
	cmp	r2, #0	@ pArgs,
	beq	.L165	@,
.L68:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r6	@, ChanID
	mov	r1, r4	@, pArgs
	bl	VCTRL_GetStreamSize	@
	mov	r5, r0	@ ret,
	b	.L150	@
.L48:
	cmp	r2, #0	@ pArgs,
	beq	.L166	@,
.L73:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r6	@, ChanID
	mov	r1, r4	@, pArgs
	bl	VCTRL_SetDiscardPicParam	@
	mov	r5, r0	@ ret,
	b	.L150	@
.L49:
	cmp	r2, #0	@ pArgs,
	bne	.L79	@,
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC4	@,
	mov	r2, #780	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	mvn	r5, #0	@ ret,
	b	.L30	@
.L44:
	cmp	r2, #0	@ pArgs,
	beq	.L167	@,
.L72:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, [r4, #0]	@,* pArgs
	bl	VCTRL_GetChanIDByMemAddr	@
	cmn	r0, #1	@ D.50635,
	str	r0, [r4, #0]	@ D.50635,* pArgs
	moveq	r5, r0	@, ret, D.50635
	movne	r5, #0	@, ret,
	b	.L150	@
.L56:
	cmp	r2, #0	@ pArgs,
	beq	.L168	@,
	mov	r0, r6	@, ChanID
	mov	r1, #1	@,
	bl	VCTRT_SetChanCtrlState	@
	cmp	r0, #0	@,
	bne	.L79	@,
	mov	r0, r6	@, ChanID
	bl	VCTRL_RlsAllFrameNode	@
	subs	r5, r0, #0	@ ret,
	beq	.L130	@,
	mov	r2, r6	@, ChanID
	movw	r1, #:lower16:.LC9	@,
	mov	r0, #31	@,
	movt	r1, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	b	.L30	@
.L52:
	cmp	r2, #0	@ pArgs,
	beq	.L169	@,
.L78:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r6	@, ChanID
	mov	r1, r4	@, pArgs
	bl	VCTRL_ConfigPVRInfo	@
	b	.L149	@
.L51:
	cmp	r2, #0	@ pArgs,
	beq	.L170	@,
.L77:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r6	@, ChanID
	mov	r1, r4	@, pArgs
	bl	VCTRL_ConfigFFFBSpeed	@
	b	.L149	@
.L42:
	cmp	r2, #0	@ pArgs,
	beq	.L171	@,
.L70:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	ldmia	r4, {r0, r1}	@ phole ldm
	sub	r2, fp, #64	@,,
	mov	r3, #1	@,
	bl	VCTRL_GetChanMemSizeWithOption	@
	subs	r5, r0, #0	@ D.50615,
	bne	.L125	@,
	ldr	r3, [fp, #-60]	@ DetailMemSize.ScdDetailMem, DetailMemSize.ScdDetailMem
	ldr	r0, [fp, #-56]	@ DetailMemSize.ChanCtxDetailMem, DetailMemSize.ChanCtxDetailMem
	ldr	r1, [fp, #-64]	@ DetailMemSize.VdhDetailMem, DetailMemSize.VdhDetailMem
	str	r3, [r4, #4]	@ DetailMemSize.ScdDetailMem,
	str	r0, [r4, #8]	@ DetailMemSize.ChanCtxDetailMem,
	str	r1, [r4, #0]	@ DetailMemSize.VdhDetailMem,* pArgs
	b	.L150	@
.L38:
	cmp	r2, #0	@ pArgs,
	beq	.L172	@,
.L66:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r6	@, ChanID
	mov	r1, r4	@, pArgs
	bl	VCTRL_SetStreamInterface	@
	b	.L149	@
.L47:
	cmp	r2, #0	@ pArgs,
	beq	.L173	@,
.L75:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r6	@, ChanID
	mov	r1, r4	@, pArgs
	bl	VCTRL_PutUsrdecFrame	@
	b	.L149	@
.L39:
	cmp	r2, #0	@ pArgs,
	beq	.L174	@,
.L67:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	str	r6, [r4, #0]	@ ChanID, <variable>.image_provider_inst_id
	movw	r1, #:lower16:VCTRL_GetChanImage	@ tmp225,
	movw	r3, #:lower16:VCTRL_ReleaseChanImage	@ tmp226,
	movt	r1, #:upper16:VCTRL_GetChanImage	@ tmp225,
	movt	r3, #:upper16:VCTRL_ReleaseChanImage	@ tmp226,
	str	r1, [r4, #4]	@ tmp225, <variable>.read_image
	mov	r5, #0	@ ret,
	str	r3, [r4, #8]	@ tmp226, <variable>.release_image
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L30	@
.L41:
	cmp	r2, #0	@ pArgs,
	beq	.L175	@,
.L69:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, [r4, #0]	@,* pArgs
	sub	r1, fp, #40	@,,
	sub	r2, fp, #52	@,,
	bl	VCTRL_GetChanMemSize	@
	subs	r5, r0, #0	@ D.50602,
	bne	.L125	@,
	ldr	r2, [fp, #-40]	@ VdmMem, VdmMem
	ldr	lr, [fp, #-52]	@ ScdMem, ScdMem
	ldr	r1, [fp, #-44]	@ ScdMem, ScdMem
	ldr	r3, [fp, #-36]	@ VdmMem, VdmMem
	add	r0, lr, r2	@ tmp236, ScdMem, VdmMem
	ldr	ip, [fp, #-48]	@ ScdMem, ScdMem
	ldr	r2, [fp, #-32]	@ VdmMem, VdmMem
	add	lr, ip, r3	@ tmp239, ScdMem, VdmMem
	str	r0, [r4, #0]	@ tmp236, <variable>.MinMemSize
	add	r2, r1, r2	@ tmp242, ScdMem, VdmMem
	str	lr, [r4, #4]	@ tmp239, <variable>.NormalMemSize
	str	r2, [r4, #8]	@ tmp242, <variable>.FluentMemSize
	b	.L150	@
.L45:
	cmp	r2, #0	@ pArgs,
	beq	.L176	@,
.L59:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	ldmia	r4, {r0, r1}	@ phole ldm
	mov	r5, #0	@ ret,
	bl	VCTRL_SetVdecExtra	@
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L30	@
.L43:
	cmp	r2, #0	@ pArgs,
	beq	.L177	@,
.L71:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r6	@, ChanID
	sub	r1, fp, #80	@,,
	bl	VCTRL_GetChanMemInfo	@
	subs	r5, r0, #0	@ ret,
	bne	.L178	@,
	ldr	lr, [fp, #-76]	@ D.50627, MemRec.VirAddr
	ldr	r2, [fp, #-72]	@ D.50626, MemRec.PhyAddr
	ldr	ip, [fp, #-68]	@ MemRec.Length, MemRec.Length
	cmp	lr, #0	@ D.50627,
	stmia	r4, {r2, lr}	@ phole stm
	str	ip, [r4, #8]	@ MemRec.Length, <variable>.Length
	beq	.L125	@,
	cmp	r2, #0	@ D.50626,
	mvneq	r5, #0	@ ret,
	b	.L150	@
.L32:
	cmp	r1, #58	@ eCmdID,
	ldrls	pc, [pc, r1, asl #2]	@ eCmdID
	b	.L79	@
.L97:
	.word	.L84
	.word	.L58
	.word	.L84
	.word	.L84
	.word	.L85
	.word	.L86
	.word	.L87
	.word	.L88
	.word	.L64
	.word	.L65
	.word	.L89
	.word	.L90
	.word	.L91
	.word	.L92
	.word	.L66
	.word	.L67
	.word	.L68
	.word	.L79
	.word	.L69
	.word	.L70
	.word	.L71
	.word	.L72
	.word	.L93
	.word	.L94
	.word	.L59
	.word	.L79
	.word	.L79
	.word	.L79
	.word	.L79
	.word	.L79
	.word	.L74
	.word	.L75
	.word	.L79
	.word	.L73
	.word	.L79
	.word	.L95
	.word	.L79
	.word	.L79
	.word	.L79
	.word	.L79
	.word	.L79
	.word	.L79
	.word	.L79
	.word	.L79
	.word	.L79
	.word	.L79
	.word	.L79
	.word	.L79
	.word	.L79
	.word	.L79
	.word	.L84
	.word	.L84
	.word	.L76
	.word	.L77
	.word	.L78
	.word	.L80
	.word	.L81
	.word	.L82
	.word	.L96
.L95:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r5, #0	@ ret,
	bl	VCTRL_ExtraWakeUpThread	@
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L30	@
.L94:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r6	@, ChanID
	mov	r1, r4	@, pArgs
	bl	VCTRL_ResetChanWithOption	@
	b	.L149	@
.L93:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r6	@, ChanID
	bl	VCTRL_ReleaseStream	@
	b	.L149	@
.L92:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r6	@, ChanID
	bl	VCTRL_ResetChan	@
	b	.L149	@
.L91:
	mov	r0, r6	@, ChanID
	bl	VCTRL_StopChanWithCheck	@
	subs	r5, r0, #0	@ ret,
	beq	.L30	@,
	b	.L79	@
.L90:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r6	@, ChanID
	bl	VCTRL_StartChan	@
	b	.L149	@
.L89:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r6	@, ChanID
	mov	r1, r4	@, pArgs
	mov	r5, #0	@ ret,
	bl	VCTRL_GetChanState	@
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L30	@
.L96:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r6	@, ChanID
	mov	r1, r4	@, pArgs
	bl	VCTRL_StartChanWithOption	@
	b	.L149	@
.L156:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC6	@,
	movw	r2, #606	@,
	movt	r1, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r5, #0	@ ret,
	b	.L30	@
.L162:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC6	@,
	movw	r2, #622	@,
	movt	r1, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r5, #0	@ ret,
	b	.L30	@
.L178:
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	mvn	r5, #0	@ ret,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L30	@
.L168:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC4	@,
	movw	r2, #809	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	mvn	r5, #0	@ ret,
	b	.L30	@
.L157:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC4	@,
	movw	r2, #757	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	mvn	r5, #0	@ ret,
	b	.L30	@
.L154:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC4	@,
	movw	r2, #575	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	mvn	r5, #0	@ ret,
	b	.L30	@
.L160:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC4	@,
	movw	r2, #801	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	mvn	r5, #0	@ ret,
	b	.L30	@
.L155:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC4	@,
	movw	r2, #598	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	mvn	r5, #0	@ ret,
	b	.L30	@
.L165:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC4	@,
	movw	r2, #687	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	mvn	r5, #0	@ ret,
	b	.L30	@
.L159:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC4	@,
	movw	r2, #787	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	mvn	r5, #0	@ ret,
	b	.L30	@
.L161:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC4	@,
	movw	r2, #614	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	mvn	r5, #0	@ ret,
	b	.L30	@
.L177:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC4	@,
	movw	r2, #710	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	mvn	r5, #0	@ ret,
	b	.L30	@
.L158:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC4	@,
	movw	r2, #794	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	mvn	r5, #0	@ ret,
	b	.L30	@
.L163:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC4	@,
	movw	r2, #637	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	mvn	r5, #0	@ ret,
	b	.L30	@
.L169:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC4	@,
	movw	r2, #771	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	mvn	r5, #0	@ ret,
	b	.L30	@
.L153:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC4	@,
	movw	r2, #742	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	mvn	r5, #0	@ ret,
	b	.L30	@
.L171:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC4	@,
	movw	r2, #702	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	mvn	r5, #0	@ ret,
	b	.L30	@
.L173:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC4	@,
	movw	r2, #750	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	mvn	r5, #0	@ ret,
	b	.L30	@
.L166:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC4	@,
	movw	r2, #727	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	mvn	r5, #0	@ ret,
	b	.L30	@
.L167:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC4	@,
	movw	r2, #718	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	mvn	r5, #0	@ ret,
	b	.L30	@
.L172:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC4	@,
	mov	r2, #672	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	mvn	r5, #0	@ ret,
	b	.L30	@
.L175:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC4	@,
	movw	r2, #695	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	mvn	r5, #0	@ ret,
	b	.L30	@
.L164:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC4	@,
	movw	r2, #645	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	mvn	r5, #0	@ ret,
	b	.L30	@
.L174:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC4	@,
	mov	r2, #680	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	mvn	r5, #0	@ ret,
	b	.L30	@
.L170:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC4	@,
	mov	r2, #764	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	mvn	r5, #0	@ ret,
	b	.L30	@
.L176:
	mov	r0, r2	@, pArgs
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #589	@,
	movt	r1, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	mvn	r5, #0	@ ret,
	b	.L30	@
.L131:
	mov	r0, r6	@, ChanID
	bl	VCTRL_GetCurChanFsSize	@
	cmp	r0, #0	@,
	beq	.L132	@,
	mov	r2, r6	@, ChanID
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC12	@,
	movt	r1, #:upper16:.LC12	@,
	bl	dprint_vfmw	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r6	@, ChanID
	mov	r1, #3	@,
	bl	VCTRL_SetChanFsPartitionState	@
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L132	@
.L85:
	ldr	r0, [r2, #0]	@ prephitmp.830,* pArgs
	b	.L61	@
.L88:
	mov	r4, #500	@ s32Loop.867,
	b	.L98	@
.L179:
	cmp	r4, #0	@ s32Loop.867,
	sub	r4, r4, #1	@ s32Loop.867, s32Loop.867,
	beq	.L79	@,
	bl	msleep	@
	mov	r1, #2	@,
	mov	r0, r6	@, ChanID
	bl	VCTRT_SetChanCtrlState	@
	cmn	r0, #1	@,
	mov	r0, #1	@,
	bne	.L104	@,
	bl	msleep	@
	sub	r4, r4, #1	@ s32Loop.867, s32Loop.867,
.L98:
	mov	r1, #2	@,
	mov	r0, r6	@, ChanID
	bl	VCTRT_SetChanCtrlState	@
	cmn	r0, #1	@,
	mov	r0, #1	@,
	beq	.L179	@,
.L104:
	cmp	r4, #0	@ s32Loop.867,
	ble	.L79	@,
	mov	r0, r6	@, ChanID
	bl	VCTRL_DestroyChanWithOption	@
	subs	r5, r0, #0	@ ret,
	beq	.L30	@,
	b	.L79	@
.L87:
	mov	r4, #500	@ s32Loop,
	b	.L99	@
.L180:
	cmp	r4, #0	@ s32Loop,
	sub	r4, r4, #1	@ s32Loop, s32Loop,
	beq	.L102	@,
	bl	msleep	@
	mov	r1, #2	@,
	mov	r0, r6	@, ChanID
	bl	VCTRT_SetChanCtrlState	@
	cmn	r0, #1	@,
	mov	r0, #1	@,
	bne	.L100	@,
	bl	msleep	@
	sub	r4, r4, #1	@ s32Loop, s32Loop,
.L99:
	mov	r1, #2	@,
	mov	r0, r6	@, ChanID
	bl	VCTRT_SetChanCtrlState	@
	cmn	r0, #1	@,
	mov	r0, #1	@,
	beq	.L180	@,
.L100:
	cmp	r4, #0	@ s32Loop,
	ble	.L102	@,
	mov	r0, r6	@, ChanID
	bl	VCTRL_DestroyChan	@
	subs	r5, r0, #0	@ ret,
	beq	.L30	@,
	b	.L79	@
.L102:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC8	@,
	mvn	r2, #0	@,
	movt	r1, #:upper16:.LC8	@,
	bl	dprint_vfmw	@
	mvn	r5, #0	@ ret,
	b	.L30	@
.L86:
	ldr	r0, [r2, #0]	@ prephitmp.826,* pArgs
	b	.L63	@
	.fnend
	.size	VDEC_Control, .-VDEC_Control
	.align	2
	.global	VDEC_Exit
	.type	VDEC_Exit, %function
VDEC_Exit:
	.fnstart
.LFB1543:
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
	bl	OSAL_DOWN_INTERRUPTIBLE	@
	cmp	r0, #0	@,
	bne	.L187	@,
.L182:
	movw	r4, #:lower16:.LANCHOR0	@ tmp139,
	movt	r4, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r0, [r4, #208]	@ g_VfmwInitCount, g_VfmwInitCount
	sub	r3, r0, #1	@ g_VfmwInitCount.463, g_VfmwInitCount,
	str	r3, [r4, #208]	@ g_VfmwInitCount.463, g_VfmwInitCount
	cmp	r3, #0	@ g_VfmwInitCount.463,
	ble	.L183	@,
	bl	OSAL_UP	@
	mov	r0, #0	@ D.50335,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L183:
	bl	VCTRL_CloseVfmw	@
	mov	r5, r0	@ ret.944,
	bl	MEM_ManagerClearOperation	@
	mov	r1, #0	@ tmp143,
	str	r1, [r4, #124]	@ tmp143, g_VfmwEnableFlag
	bl	OSAL_UP	@
	cmp	r5, #0	@ ret.944,
	moveq	r0, r5	@, D.50335, ret.944
	mvnne	r0, #0	@, D.50335,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L187:
	movw	r1, #:lower16:.LC14	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	b	.L182	@
	.fnend
	.size	VDEC_Exit, .-VDEC_Exit
	.align	2
	.global	VDEC_SpinLockInit
	.type	VDEC_SpinLockInit, %function
VDEC_SpinLockInit:
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
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQInit	@
	movw	r0, #:lower16:g_RecordLock	@,
	movt	r0, #:upper16:g_RecordLock	@,
	bl	OSAL_SpinLockIRQInit	@
	movw	r0, #:lower16:g_SpinLock	@,
	movt	r0, #:upper16:g_SpinLock	@,
	bl	OSAL_SpinLockIRQInit	@
	movw	r0, #:lower16:g_SpinLock_fsp	@,
	movt	r0, #:upper16:g_SpinLock_fsp	@,
	bl	OSAL_SpinLockIRQInit	@
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinLockIRQInit	@
	movw	r0, #:lower16:g_ActivateLock	@,
	movt	r0, #:upper16:g_ActivateLock	@,
	bl	OSAL_SpinLockIRQInit	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VDEC_SpinLockInit, .-VDEC_SpinLockInit
	.align	2
	.global	VDEC_InitWithOperation
	.type	VDEC_InitWithOperation, %function
VDEC_InitWithOperation:
	.fnstart
.LFB1542:
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
	mov	r5, r0	@ pArgs, pArgs
	bl	OSAL_DOWN_INTERRUPTIBLE	@
	cmp	r5, #0	@ pArgs,
	beq	.L201	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp231,
	movt	r4, #:upper16:.LANCHOR0	@ tmp231,
	ldr	r3, [r4, #124]	@ g_VfmwEnableFlag, g_VfmwEnableFlag
	cmp	r3, #1	@ g_VfmwEnableFlag,
	beq	.L202	@,
	mov	r1, #12	@,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	movw	r6, #:lower16:.LANCHOR1	@ tmp156,
	bl	__memzero	@
	mov	r1, #12	@,
	movw	r0, #:lower16:g_RecordLock	@,
	movt	r0, #:upper16:g_RecordLock	@,
	bl	__memzero	@
	mov	r1, #12	@,
	movw	r0, #:lower16:g_SpinLock	@,
	movt	r0, #:upper16:g_SpinLock	@,
	bl	__memzero	@
	mov	r1, #12	@,
	movw	r0, #:lower16:g_SpinLock_fsp	@,
	movt	r0, #:upper16:g_SpinLock_fsp	@,
	bl	__memzero	@
	mov	r1, #12	@,
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	__memzero	@
	mov	r1, #12	@,
	movw	r0, #:lower16:g_ActivateLock	@,
	movt	r0, #:upper16:g_ActivateLock	@,
	bl	__memzero	@
	movt	r6, #:upper16:.LANCHOR1	@ tmp156,
	movw	r2, #:lower16:AcceleratorCharacter	@ tmp154,
	movt	r2, #:upper16:AcceleratorCharacter	@ tmp154,
	mov	ip, #0	@ tmp155,
	mov	r1, #10	@ tmp157,
	str	ip, [r2, #0]	@ tmp155, AcceleratorCharacter
	movw	r0, #:lower16:VDM_OpenHardware	@ tmp159,
	str	r1, [r6, #64]	@ tmp157, g_chipID
	movt	r0, #:upper16:VDM_OpenHardware	@ tmp159,
	movw	r3, #:lower16:VDM_CloseHardware	@ tmp161,
	str	r0, [r4, #0]	@ tmp159, g_vdm_hal_fun_ptr.pfun_VDMDRV_OpenHardware
	movt	r3, #:upper16:VDM_CloseHardware	@ tmp161,
	movw	ip, #:lower16:DSP_OpenHardware	@ tmp163,
	str	r3, [r4, #4]	@ tmp161, g_vdm_hal_fun_ptr.pfun_VDMDRV_CloseHardware
	movt	ip, #:upper16:DSP_OpenHardware	@ tmp163,
	movw	r6, #:lower16:DSP_CloseHardware	@ tmp165,
	str	ip, [r4, #8]	@ tmp163, g_vdm_hal_fun_ptr.pfun_DSPDRV_OpenHardware
	movt	r6, #:upper16:DSP_CloseHardware	@ tmp165,
	movw	r2, #:lower16:SCD_OpenHardware	@ tmp167,
	str	r6, [r4, #12]	@ tmp165, g_vdm_hal_fun_ptr.pfun_DSPDRV_CloseHardware
	movt	r2, #:upper16:SCD_OpenHardware	@ tmp167,
	movw	r1, #:lower16:SCD_CloseHardware	@ tmp169,
	str	r2, [r4, #16]	@ tmp167, g_vdm_hal_fun_ptr.pfun_SCDDRV_OpenHardware
	movt	r1, #:upper16:SCD_CloseHardware	@ tmp169,
	movw	r0, #:lower16:BPD_OpenHardware	@ tmp171,
	str	r1, [r4, #20]	@ tmp169, g_vdm_hal_fun_ptr.pfun_SCDDRV_CloseHardware
	movt	r0, #:upper16:BPD_OpenHardware	@ tmp171,
	movw	r3, #:lower16:BPD_CloseHardware	@ tmp173,
	str	r0, [r4, #24]	@ tmp171, g_vdm_hal_fun_ptr.pfun_BPDDRV_OpenHardware
	movt	r3, #:upper16:BPD_CloseHardware	@ tmp173,
	movw	ip, #:lower16:VDMHAL_V300R001_GetHalMemSize	@ tmp175,
	str	r3, [r4, #28]	@ tmp173, g_vdm_hal_fun_ptr.pfun_BPDDRV_CloseHardware
	movt	ip, #:upper16:VDMHAL_V300R001_GetHalMemSize	@ tmp175,
	movw	r6, #:lower16:VDMHAL_V300R001_OpenHAL	@ tmp177,
	str	ip, [r4, #36]	@ tmp175, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetHalMemSize
	movt	r6, #:upper16:VDMHAL_V300R001_OpenHAL	@ tmp177,
	movw	r2, #:lower16:VDMHAL_V300R001_CloseHAL	@ tmp179,
	str	r6, [r4, #40]	@ tmp177, g_vdm_hal_fun_ptr.pfun_VDMHAL_OpenHAL
	movt	r2, #:upper16:VDMHAL_V300R001_CloseHAL	@ tmp179,
	movw	r1, #:lower16:VDMHAL_V300R001_ArrangeMem	@ tmp181,
	str	r2, [r4, #44]	@ tmp179, g_vdm_hal_fun_ptr.pfun_VDMHAL_CloseHAL
	movt	r1, #:upper16:VDMHAL_V300R001_ArrangeMem	@ tmp181,
	movw	r0, #:lower16:VDMHAL_V300R001_ArrangeMem_BTL	@ tmp183,
	str	r1, [r4, #48]	@ tmp181, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	movt	r0, #:upper16:VDMHAL_V300R001_ArrangeMem_BTL	@ tmp183,
	movw	r3, #:lower16:VDMHAL_V300R001_ResetVdm	@ tmp185,
	str	r0, [r4, #52]	@ tmp183, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem_BTL
	movt	r3, #:upper16:VDMHAL_V300R001_ResetVdm	@ tmp185,
	movw	ip, #:lower16:VDMHAL_V300R001_GlbReset	@ tmp187,
	str	r3, [r4, #56]	@ tmp185, g_vdm_hal_fun_ptr.pfun_VDMHAL_ResetVdm
	movt	ip, #:upper16:VDMHAL_V300R001_GlbReset	@ tmp187,
	movw	r6, #:lower16:VDMHAL_V300R001_ClearIntState	@ tmp189,
	str	ip, [r4, #60]	@ tmp187, g_vdm_hal_fun_ptr.pfun_VDMHAL_GlbReset
	movt	r6, #:upper16:VDMHAL_V300R001_ClearIntState	@ tmp189,
	movw	r2, #:lower16:VDMHAL_V300R001_MaskInt	@ tmp191,
	str	r6, [r4, #68]	@ tmp189, g_vdm_hal_fun_ptr.pfun_VDMHAL_ClearIntState
	movt	r2, #:upper16:VDMHAL_V300R001_MaskInt	@ tmp191,
	movw	r1, #:lower16:VDMHAL_V300R001_EnableInt	@ tmp193,
	str	r2, [r4, #72]	@ tmp191, g_vdm_hal_fun_ptr.pfun_VDMHAL_MaskInt
	movt	r1, #:upper16:VDMHAL_V300R001_EnableInt	@ tmp193,
	movw	r0, #:lower16:VDMHAL_V300R001_CheckReg	@ tmp195,
	str	r1, [r4, #76]	@ tmp193, g_vdm_hal_fun_ptr.pfun_VDMHAL_EnableInt
	movt	r0, #:upper16:VDMHAL_V300R001_CheckReg	@ tmp195,
	movw	r3, #:lower16:VDMHAL_V300R001_StartHwRepair	@ tmp197,
	str	r0, [r4, #80]	@ tmp195, g_vdm_hal_fun_ptr.pfun_VDMHAL_CheckReg
	movt	r3, #:upper16:VDMHAL_V300R001_StartHwRepair	@ tmp197,
	movw	ip, #:lower16:VDMHAL_V300R001_StartHwDecode	@ tmp199,
	str	r3, [r4, #84]	@ tmp197, g_vdm_hal_fun_ptr.pfun_VDMHAL_StartHwRepair
	movt	ip, #:upper16:VDMHAL_V300R001_StartHwDecode	@ tmp199,
	movw	r6, #:lower16:VDMHAL_V300R001_PrepareDec	@ tmp201,
	str	ip, [r4, #88]	@ tmp199, g_vdm_hal_fun_ptr.pfun_VDMHAL_StartHwDecode
	movt	r6, #:upper16:VDMHAL_V300R001_PrepareDec	@ tmp201,
	movw	r2, #:lower16:VDMHAL_V300R001_IsVdmReady	@ tmp203,
	str	r6, [r4, #92]	@ tmp201, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareDec
	movt	r2, #:upper16:VDMHAL_V300R001_IsVdmReady	@ tmp203,
	movw	r1, #:lower16:VDMHAL_V300R001_IsVdmRun	@ tmp205,
	str	r2, [r4, #96]	@ tmp203, g_vdm_hal_fun_ptr.pfun_VDMHAL_IsVdmReady
	movt	r1, #:upper16:VDMHAL_V300R001_IsVdmRun	@ tmp205,
	movw	r0, #:lower16:VDMHAL_V300R001_PrepareRepair	@ tmp207,
	str	r1, [r4, #100]	@ tmp205, g_vdm_hal_fun_ptr.pfun_VDMHAL_IsVdmRun
	movt	r0, #:upper16:VDMHAL_V300R001_PrepareRepair	@ tmp207,
	movw	r3, #:lower16:VDMHAL_V300R001_MakeDecReport	@ tmp209,
	str	r0, [r4, #104]	@ tmp207, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareRepair
	movt	r3, #:upper16:VDMHAL_V300R001_MakeDecReport	@ tmp209,
	movw	ip, #:lower16:VDMHAL_V300R001_BackupInfo	@ tmp211,
	str	r3, [r4, #108]	@ tmp209, g_vdm_hal_fun_ptr.pfun_VDMHAL_MakeDecReport
	movt	ip, #:upper16:VDMHAL_V300R001_BackupInfo	@ tmp211,
	movw	r6, #:lower16:VDMHAL_V300R001_GetCharacter	@ tmp213,
	str	ip, [r4, #112]	@ tmp211, g_vdm_hal_fun_ptr.pfun_VDMHAL_BackupInfo
	movt	r6, #:upper16:VDMHAL_V300R001_GetCharacter	@ tmp213,
	movw	r2, #:lower16:VDMHAL_V300R001_WriteBigTitle1DYuv	@ tmp215,
	str	r6, [r4, #32]	@ tmp213, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetCharacter
	movt	r2, #:upper16:VDMHAL_V300R001_WriteBigTitle1DYuv	@ tmp215,
	str	r2, [r4, #116]	@ tmp215, g_vdm_hal_fun_ptr.pfun_VDMHAL_Write1DYuv
	bl	VDEC_SpinLockInit	@
	ldr	r3, [r4, #32]	@ D.50303, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetCharacter
	cmp	r3, #0	@ D.50303,
	beq	.L194	@,
	blx	r3	@ D.50303
.L194:
	mov	r0, r5	@, pArgs
	bl	MEM_ManagerWithOperation	@
	bl	VCTRL_OpenVfmw	@
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	mov	r6, r0	@ ret,
	mov	r0, #2	@,
	mov	r2, r6	@, ret
	bl	dprint_vfmw	@
	cmp	r6, #0	@ ret,
	ldr	r0, [r4, #60]	@ D.50312, g_vdm_hal_fun_ptr.pfun_VDMHAL_GlbReset
	moveq	r3, #1	@ tmp219,
	movne	r3, #0	@ tmp223,
	cmp	r0, #0	@ D.50312,
	str	r3, [r4, #208]	@ tmp223, g_VfmwInitCount
	str	r3, [r4, #124]	@ tmp223, g_VfmwEnableFlag
	beq	.L197	@,
	blx	r0	@ D.50312
.L198:
	ldmia	r5, {r0, r1}	@ phole ldm
	bl	VCTRL_SetCallBack	@
	bl	OSAL_UP	@
	cmp	r6, #0	@ ret,
	moveq	r0, r6	@, D.50264, ret
	mvnne	r0, #0	@, D.50264,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L202:
	ldr	r1, [r4, #208]	@ g_VfmwInitCount, g_VfmwInitCount
	add	r0, r1, #1	@ tmp145, g_VfmwInitCount,
	str	r0, [r4, #208]	@ tmp145, g_VfmwInitCount
	ldmia	r5, {r0, r1}	@ phole ldm
	bl	VCTRL_SetCallBack	@
	bl	OSAL_UP	@
	mov	r0, #0	@ D.50264,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L197:
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #505	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	b	.L198	@
.L201:
	bl	OSAL_UP	@
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC15	@,
	movt	r1, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.50264,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	VDEC_InitWithOperation, .-VDEC_InitWithOperation
	.align	2
	.global	VDEC_Init
	.type	VDEC_Init, %function
VDEC_Init:
	.fnstart
.LFB1541:
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
	sub	r4, fp, #36	@ tmp137,,
	mov	r5, r0	@ VdecCallback, VdecCallback
	mov	r1, #16	@,
	mov	r0, r4	@, tmp137
	bl	__memzero	@
	mov	r0, r4	@, tmp137
	mov	r3, #0	@ tmp138,
	str	r5, [fp, #-32]	@ VdecCallback, Args.VdecCallback
	str	r3, [fp, #-24]	@ tmp138, Args.mem_free
	str	r3, [fp, #-28]	@ tmp138, Args.mem_malloc
	bl	VDEC_InitWithOperation	@
	cmp	r0, #0	@ ret
	mvnne	r0, #0	@,,
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
	.fnend
	.size	VDEC_Init, .-VDEC_Init
	.align	2
	.global	VDEC_ExitModule
	.type	VDEC_ExitModule, %function
VDEC_ExitModule:
	.fnstart
.LFB1530:
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
	bl	vfmw_proc_exit	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VDEC_ExitModule, .-VDEC_ExitModule
	.align	2
	.global	VDEC_OpenModule
	.type	VDEC_OpenModule, %function
VDEC_OpenModule:
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
	bl	OSAL_SEMA_INTIT	@
	bl	vfmw_proc_init	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VDEC_OpenModule, .-VDEC_OpenModule
	.align	2
	.global	VDEC_Lowdelay_Event_Time
	.type	VDEC_Lowdelay_Event_Time, %function
VDEC_Lowdelay_Event_Time:
	.fnstart
.LFB1528:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #28
	sub	sp, sp, #28	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	sub	r5, fp, #28	@ tmp139,,
	mov	r4, r0	@ ChanId, ChanId
	mov	r6, #0	@ tmp138,
	str	r6, [r5, #-4]!	@ tmp138, TmpTime
	mov	r0, r5	@, tmp139
	mov	r6, r2	@ u32FrameId, u32FrameId
	mov	r5, r1	@ eventId, eventId
	bl	HI_DRV_SYS_GetTimeStampMs	@
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	add	r0, r4, r3	@ tmp147, ChanId, tmp140
	add	r4, r3, r4, asl #2	@, tmp143, tmp140, ChanId,
	ldr	r3, [fp, #-32]	@ TmpTime.442, TmpTime
	ldrb	r2, [r0, #128]	@ zero_extendqisi2	@ tmp149, g_LowDelayCalcStat
	ldr	r1, [r4, #144]	@ D.50124, g_LowDelayCalcHandle
	cmp	r2, #1	@ tmp149,
	beq	.L214	@,
.L213:
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L214:
	sub	r0, fp, #48	@,,
	str	r5, [fp, #-48]	@ eventId, evt.evt_id
	str	r6, [fp, #-40]	@ u32FrameId, evt.frame
	str	r1, [fp, #-44]	@ D.50124, evt.handle
	str	r3, [fp, #-36]	@ TmpTime.442, evt.time
	bl	HI_DRV_LD_Notify_Event	@
	b	.L213	@
	.fnend
	.size	VDEC_Lowdelay_Event_Time, .-VDEC_Lowdelay_Event_Time
	.global	g_VfmwEnableFlag
	.global	g_VfmwInitCount
	.global	g_chipID
	.global	g_ChipMaxWidth
	.global	g_ChipMaxHeight
	.global	g_vdm_hal_fun_ptr
	.global	g_FrameRate
	.global	g_LastFrameRate
	.global	g_LowDelayCalcStat
	.global	g_LowDelayCalcHandle
	.global	g_LowDelaySeqIndex
	.section	___ksymtab+VDEC_Resume,"a",%progbits
	.align	2
	.type	__ksymtab_VDEC_Resume, %object
	.size	__ksymtab_VDEC_Resume, 8
__ksymtab_VDEC_Resume:
@ value:
	.word	VDEC_Resume
@ name:
	.word	__kstrtab_VDEC_Resume
	.section	___ksymtab+VDM_ResetClock,"a",%progbits
	.align	2
	.type	__ksymtab_VDM_ResetClock, %object
	.size	__ksymtab_VDM_ResetClock, 8
__ksymtab_VDM_ResetClock:
@ value:
	.word	VDM_ResetClock
@ name:
	.word	__kstrtab_VDM_ResetClock
	.section	___ksymtab+VDEC_InitWithOperation,"a",%progbits
	.align	2
	.type	__ksymtab_VDEC_InitWithOperation, %object
	.size	__ksymtab_VDEC_InitWithOperation, 8
__ksymtab_VDEC_InitWithOperation:
@ value:
	.word	VDEC_InitWithOperation
@ name:
	.word	__kstrtab_VDEC_InitWithOperation
	.section	___ksymtab+VDEC_Control,"a",%progbits
	.align	2
	.type	__ksymtab_VDEC_Control, %object
	.size	__ksymtab_VDEC_Control, 8
__ksymtab_VDEC_Control:
@ value:
	.word	VDEC_Control
@ name:
	.word	__kstrtab_VDEC_Control
	.section	___ksymtab+VDEC_Exit,"a",%progbits
	.align	2
	.type	__ksymtab_VDEC_Exit, %object
	.size	__ksymtab_VDEC_Exit, 8
__ksymtab_VDEC_Exit:
@ value:
	.word	VDEC_Exit
@ name:
	.word	__kstrtab_VDEC_Exit
	.section	___ksymtab+VDEC_Init,"a",%progbits
	.align	2
	.type	__ksymtab_VDEC_Init, %object
	.size	__ksymtab_VDEC_Init, 8
__ksymtab_VDEC_Init:
@ value:
	.word	VDEC_Init
@ name:
	.word	__kstrtab_VDEC_Init
	.section	__ksymtab_strings,"a",%progbits
	.type	__kstrtab_VDM_ResetClock, %object
	.size	__kstrtab_VDM_ResetClock, 15
__kstrtab_VDM_ResetClock:
	.ascii	"VDM_ResetClock\000"
	.type	__kstrtab_VDEC_Resume, %object
	.size	__kstrtab_VDEC_Resume, 12
__kstrtab_VDEC_Resume:
	.ascii	"VDEC_Resume\000"
	.type	__kstrtab_VDEC_Suspend, %object
	.size	__kstrtab_VDEC_Suspend, 13
__kstrtab_VDEC_Suspend:
	.ascii	"VDEC_Suspend\000"
	.type	__kstrtab_VDEC_InitWithOperation, %object
	.size	__kstrtab_VDEC_InitWithOperation, 23
__kstrtab_VDEC_InitWithOperation:
	.ascii	"VDEC_InitWithOperation\000"
	.type	__kstrtab_VDEC_Control, %object
	.size	__kstrtab_VDEC_Control, 13
__kstrtab_VDEC_Control:
	.ascii	"VDEC_Control\000"
	.type	__kstrtab_VDEC_Exit, %object
	.size	__kstrtab_VDEC_Exit, 10
__kstrtab_VDEC_Exit:
	.ascii	"VDEC_Exit\000"
	.type	__kstrtab_VDEC_Init, %object
	.size	__kstrtab_VDEC_Init, 10
__kstrtab_VDEC_Init:
	.ascii	"VDEC_Init\000"
	.data
	.align	2
.LANCHOR1 = . + 0
	.type	g_FrameRate, %object
	.size	g_FrameRate, 64
g_FrameRate:
	.word	30
	.space	60
	.type	g_chipID, %object
	.size	g_chipID, 4
g_chipID:
	.word	4
	.type	g_ChipMaxWidth, %object
	.size	g_ChipMaxWidth, 4
g_ChipMaxWidth:
	.word	8192
	.type	g_ChipMaxHeight, %object
	.size	g_ChipMaxHeight, 4
g_ChipMaxHeight:
	.word	8192
	.type	g_LastFrameRate, %object
	.size	g_LastFrameRate, 64
g_LastFrameRate:
	.word	30
	.space	60
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"VDEC_Resume ok !\012\000"
	.space	2
.LC1:
	.ascii	"VDMHAL_NULL_FUN_PRINT,L%d\012\000"
	.space	1
.LC2:
	.ascii	"VDEC_Suspend ok !\012\000"
	.space	1
.LC3:
	.ascii	"VFMW has been destroyed, so any operation is unusef"
	.ascii	"ul!\012\000"
.LC4:
	.ascii	"vfmw.c,L%d: pArgs is NULL!\012\000"
.LC5:
	.ascii	"vfmw.c, L%d: pArgs is NULL!\012\000"
	.space	3
.LC6:
	.ascii	"vfmw.c,L%d: capability level out of range\012\000"
	.space	1
.LC7:
	.ascii	"VCTRL_CreateChan() return %d\012\000"
	.space	2
.LC8:
	.ascii	"VCTRT_SetChanCtrlState ERR: %d\012\000"
.LC9:
	.ascii	"DFS, rls chan %d frame store fail!\012\000"
.LC10:
	.ascii	"DFS, rls chan %d frame store success!\012\000"
	.space	1
.LC11:
	.ascii	"DFS, set decoding thread state to success!\012 \000"
	.space	3
.LC12:
	.ascii	"DFS, request frame store fail!, chanid: %d\012\000"
.LC13:
	.ascii	"DFS, set decoding thread state to fail\012\000"
.LC14:
	.ascii	"OSAL_DOWN_INTERRUPTIBLE ERR\012\000"
	.space	3
.LC15:
	.ascii	"VDEC_InitWithOperation has NULL parameter, error!\012"
	.ascii	"\000"
	.space	1
.LC16:
	.ascii	"VCTRL_OpenVfmw() return %d\012\000"
	.section	___ksymtab+VDEC_Suspend,"a",%progbits
	.align	2
	.type	__ksymtab_VDEC_Suspend, %object
	.size	__ksymtab_VDEC_Suspend, 8
__ksymtab_VDEC_Suspend:
@ value:
	.word	VDEC_Suspend
@ name:
	.word	__kstrtab_VDEC_Suspend
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	g_vdm_hal_fun_ptr, %object
	.size	g_vdm_hal_fun_ptr, 124
g_vdm_hal_fun_ptr:
	.space	124
	.type	g_VfmwEnableFlag, %object
	.size	g_VfmwEnableFlag, 4
g_VfmwEnableFlag:
	.space	4
	.type	g_LowDelayCalcStat, %object
	.size	g_LowDelayCalcStat, 16
g_LowDelayCalcStat:
	.space	16
	.type	g_LowDelayCalcHandle, %object
	.size	g_LowDelayCalcHandle, 64
g_LowDelayCalcHandle:
	.space	64
	.type	g_VfmwInitCount, %object
	.size	g_VfmwInitCount, 4
g_VfmwInitCount:
	.space	4
	.type	g_LowDelaySeqIndex, %object
	.size	g_LowDelaySeqIndex, 64
g_LowDelaySeqIndex:
	.space	64
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
