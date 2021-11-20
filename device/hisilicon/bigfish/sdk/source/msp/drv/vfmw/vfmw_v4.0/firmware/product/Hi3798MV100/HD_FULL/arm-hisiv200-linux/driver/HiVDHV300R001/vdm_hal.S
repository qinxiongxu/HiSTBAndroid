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
	.file	"vdm_hal.c"
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
@ -DKBUILD_BASENAME=KBUILD_STR(vdm_hal)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV300R001/.vdm_hal.o.d
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV300R001/vdm_hal.c
@ -mlittle-endian -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -marm -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV300R001/vdm_hal.o -O2
@ -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs
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
	.global	VDMHAL_V300R001_GetHalMemSize
	.type	VDMHAL_V300R001_GetHalMemSize, %function
VDMHAL_V300R001_GetHalMemSize:
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
	movw	r0, #:lower16:4296704	@,
	movt	r0, #:upper16:4296704	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VDMHAL_V300R001_GetHalMemSize, .-VDMHAL_V300R001_GetHalMemSize
	.align	2
	.global	VDMHAL_V300R001_GetCharacter
	.type	VDMHAL_V300R001_GetCharacter, %function
VDMHAL_V300R001_GetCharacter:
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
	movw	r0, #:lower16:g_VdmCharacter	@ tmp133,
	movw	r3, #:lower16:g_eVdmVersion	@ tmp135,
	movt	r0, #:upper16:g_VdmCharacter	@ tmp133,
	movt	r3, #:upper16:g_eVdmVersion	@ tmp135,
	mov	r1, #15	@ tmp134,
	mov	r2, #4	@ tmp136,
	str	r1, [r0, #0]	@ tmp134, g_VdmCharacter
	str	r2, [r3, #0]	@ tmp136, g_eVdmVersion
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VDMHAL_V300R001_GetCharacter, .-VDMHAL_V300R001_GetCharacter
	.align	2
	.global	VDMHAL_V300R001_IsVdmRun
	.type	VDMHAL_V300R001_IsVdmRun, %function
VDMHAL_V300R001_IsVdmRun:
	.fnstart
.LFB1543:
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
	movw	r1, #1208	@ tmp141,
	mul	r3, r1, r0	@ tmp140, tmp141, VdhId
	movw	r2, #:lower16:g_HwMem	@ tmp139,
	movt	r2, #:upper16:g_HwMem	@ tmp139,
	ldr	r4, [r3, r2]	@ D.52675, <variable>.pVdmRegVirAddr
	cmp	r4, #0	@ D.52675,
	beq	.L11	@,
	cmp	r0, #0	@ VdhId,
	ble	.L12	@,
	mov	r3, r0	@, VdhId
	mov	r4, #1	@ tmp148,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LANCHOR0	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LANCHOR0	@,
	str	r4, [sp, #0]	@ tmp148,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.52679, tmp148
.L7:
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L12:
	ldr	r0, [r4, #40]	@ Data32,
	subs	r0, r0, #1	@ D.52679, Data32,
	movne	r0, #1	@ D.52679
	b	.L7	@
.L11:
	mov	r0, r4	@, D.52675
	movw	r1, #:lower16:.LC0	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.52679, D.52675
	b	.L7	@
	.fnend
	.size	VDMHAL_V300R001_IsVdmRun, .-VDMHAL_V300R001_IsVdmRun
	.align	2
	.global	VDMHAL_V300R001_IsVdmReady
	.type	VDMHAL_V300R001_IsVdmReady, %function
VDMHAL_V300R001_IsVdmReady:
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
	.pad #8
	sub	sp, sp, #8	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r1, #1208	@ tmp142,
	mul	r3, r1, r0	@ tmp141, tmp142, VdhId
	movw	r2, #:lower16:g_HwMem	@ tmp140,
	movt	r2, #:upper16:g_HwMem	@ tmp140,
	ldr	r3, [r3, r2]	@ D.52656, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ D.52656,
	beq	.L18	@,
	cmp	r0, #0	@ VdhId,
	ble	.L19	@,
	mov	r3, r0	@, VdhId
	movw	r1, #:lower16:.LC1	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC1	@,
	ldr	r2, .L20	@,
	mov	ip, #1	@ tmp151,
	str	ip, [sp, #0]	@ tmp151,
	bl	dprint_vfmw	@
	mov	r0, #0	@ Data32,
.L15:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L19:
	ldr	r0, [r3, #28]	@ Data32.649,
	ubfx	r0, r0, #17, #1	@ Data32, Data32.649,,
	b	.L15	@
.L18:
	mov	r0, r3	@, D.52656
	movw	r1, #:lower16:.LC2	@,
	ldr	r2, .L20	@,
	movt	r1, #:upper16:.LC2	@,
	movw	r3, #:lower16:.LC3	@,
	movt	r3, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ Data32,
	b	.L15	@
.L21:
	.align	2
.L20:
	.word	.LANCHOR0+28
	.fnend
	.size	VDMHAL_V300R001_IsVdmReady, .-VDMHAL_V300R001_IsVdmReady
	.align	2
	.global	VDMHAL_V300R001_WriteMsgSlot
	.type	VDMHAL_V300R001_WriteMsgSlot, %function
VDMHAL_V300R001_WriteMsgSlot:
	.fnstart
.LFB1546:
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
	cmp	r0, #0	@ pDst,
	cmpne	r1, #0	@, pSrc,
	beq	.L23	@,
	rsbs	r4, r2, #1	@ tmp148, dnmsg_size
	movcc	r4, #0	@ tmp148
	cmp	r2, #256	@ dnmsg_size,
	orrhi	r4, r4, #1	@,, tmp151, tmp148
	cmp	r4, #0	@ tmp151,
	bne	.L23	@,
	mov	r2, r2, asl #2	@, dnmsg_size,
	bl	memcpy	@
	mov	r0, r4	@ D.52906, tmp151
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L23:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.52906,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	VDMHAL_V300R001_WriteMsgSlot, .-VDMHAL_V300R001_WriteMsgSlot
	.align	2
	.global	VDMHAL_V300R001_ReadMsgSlot
	.type	VDMHAL_V300R001_ReadMsgSlot, %function
VDMHAL_V300R001_ReadMsgSlot:
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
	cmp	r0, #0	@ pDst,
	cmpne	r1, #0	@, pSrc,
	mov	r3, r1	@ pSrc, pSrc
	movne	r4, #0	@, tmp144
	moveq	r4, #1	@, tmp144
	beq	.L32	@,
	cmp	r2, #800	@ upmsg_size,
	bhi	.L33	@,
	mov	r2, r2, asl #2	@, upmsg_size,
	bl	memcpy	@
	mov	r0, r4	@ D.52886, tmp144
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L33:
	mov	r0, r4	@, tmp144
	movw	r1, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.52886,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L32:
	mov	r2, r0	@, pDst
	movw	r1, #:lower16:.LC5	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.52886,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	VDMHAL_V300R001_ReadMsgSlot, .-VDMHAL_V300R001_ReadMsgSlot
	.align	2
	.global	VDMHAL_V300R001_WriteBigTitle1DYuv
	.type	VDMHAL_V300R001_WriteBigTitle1DYuv, %function
VDMHAL_V300R001_WriteBigTitle1DYuv:
	.fnstart
.LFB1555:
	@ args = 4, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #92
	sub	sp, sp, #92	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	ubfx	r8, r3, #29, #2	@ PicStructure.836, Height,,
	cmp	r8, #1	@ PicStructure.836,
	mov	r6, r3	@ Height, Height
	str	r0, [fp, #-100]	@ fpYuv, %sfp
	mov	r4, r1	@ Yaddress, Yaddress
	mov	r7, r2	@ Width, Width
	moveq	r8, #0	@ PicStructure,
	beq	.L36	@,
	cmp	r8, #2	@ PicStructure.836,
	moveq	r8, #1	@ PicStructure,
	movne	r8, #2	@ PicStructure,
.L36:
	ldr	r1, [fp, #-100]	@, %sfp
	cmp	r1, #0	@,
	beq	.L72	@,
	sub	r3, fp, #60	@ tmp242,,
	sub	r2, fp, #76	@,,
	add	lr, r3, #4	@ tmp400, tmp242,
	add	r5, r2, #4	@ tmp397,,
	mov	ip, #0	@ tmp238,
	movw	r0, #:lower16:.LC7	@,
	str	ip, [r5], #4	@ tmp238, MemRecord_ul
	mov	r1, ip	@, tmp238
	str	ip, [lr], #4	@ tmp238, MemRecord_y
	movt	r0, #:upper16:.LC7	@,
	str	ip, [r5], #4	@ tmp238, MemRecord_ul
	mov	r2, #4194304	@,
	str	ip, [lr], #4	@ tmp238, MemRecord_y
	str	ip, [r5, #0]	@ tmp238, MemRecord_ul
	str	ip, [lr, #0]	@ tmp238, MemRecord_y
	str	ip, [fp, #-76]	@ tmp238, MemRecord_ul
	str	ip, [fp, #-60]	@ tmp238, MemRecord_y
	str	ip, [sp, #0]	@ tmp238,
	bl	MEM_AllocMemBlock	@
	subs	ip, r0, #0	@ D.53667,
	bne	.L133	@,
	mov	r1, ip	@, D.53667
	movw	r0, #:lower16:.LC9	@,
	mov	r2, #4194304	@,
	movt	r0, #:upper16:.LC9	@,
	sub	r3, fp, #76	@,,
	str	ip, [sp, #0]	@ D.53667,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L133	@,
	add	r5, r7, #15	@ tmp255, Width,
	add	lr, r6, #15	@ tmp257, Height,
	bic	r5, r5, #15	@ ImgWidthInPixAln, tmp255,
	bic	r1, lr, #15	@, tmp257,
	add	ip, r5, #255	@ tmp259, ImgWidthInPixAln,
	str	r1, [fp, #-88]	@, %sfp
	bic	r3, ip, #255	@ tmp260, tmp259,
	ldr	r0, [fp, #-56]	@, MemRecord_y.VirAddr
	ldr	r9, [fp, #-72]	@, MemRecord_ul.VirAddr
	mov	r7, r7, lsr #1	@, Width,
	mov	r2, r3, asl #4	@, tmp260,
	str	r2, [fp, #-92]	@, %sfp
	ldr	r1, [fp, #-92]	@, %sfp
	add	lr, r9, #2097152	@,,
	ldr	r2, [fp, #-88]	@, %sfp
	mov	r6, r6, lsr #1	@, Height,
	cmp	r1, #0	@,
	add	ip, r1, #15	@ tmp263,,
	str	r0, [fp, #-96]	@, %sfp
	movge	ip, r1	@ Stride,
	adds	r0, r2, #31	@ tmp265,,
	addmi	r0, r2, #62	@, tmp267,,
	str	r9, [fp, #-108]	@, %sfp
	mov	r3, ip, asr #4	@ tmp264, Stride,
	cmp	r8, #0	@ PicStructure,
	mov	r9, r0, asr #5	@ tmp269, tmp267,
	str	r7, [fp, #-120]	@, %sfp
	str	r6, [fp, #-104]	@, %sfp
	str	lr, [fp, #-116]	@, %sfp
	mla	r9, r9, r3, r4	@ Caddress, tmp269, tmp264, Yaddress
	bne	.L41	@,
	cmp	r2, #0	@,
	beq	.L42	@,
	ldr	sl, [fp, #-96]	@, %sfp
	str	r9, [fp, #-112]	@ Caddress, %sfp
	mov	r9, r8	@ i, i
	str	sl, [fp, #-80]	@, %sfp
	str	sl, [fp, #-84]	@, %sfp
	mov	sl, r5	@ ImgWidthInPixAln, ImgWidthInPixAln
.L43:
	cmp	sl, #0	@ ImgWidthInPixAln,
	beq	.L46	@,
	and	r7, r9, #15	@ pretmp.741, i,
	ldr	r6, [fp, #-92]	@, %sfp
	mov	r3, r9, lsr #4	@ pretmp.885, i,
	ldr	r0, [fp, #-84]	@, %sfp
	mov	r8, r7, asl #8	@ tmp280, pretmp.741,
	mov	r2, #256	@,
	sub	r5, sl, #1	@ tmp370, ImgWidthInPixAln,
	mla	r8, r6, r3, r8	@ pretmp.742,, pretmp.885, tmp280
	ubfx	r7, r5, #8, #1	@ tmp371, tmp370,,
	add	r6, r0, r2	@ ivtmp.847,,
	mov	r5, r2	@ j,
	add	r1, r4, r8	@, Yaddress, pretmp.742
	bl	memcpy	@
	cmp	sl, r5	@ ImgWidthInPixAln, j
	bls	.L46	@,
	cmp	r7, #0	@ tmp371,
	beq	.L44	@,
	add	r0, r8, #4096	@ tmp485, pretmp.742,
	mov	r2, r5	@, j
	add	r1, r4, r0	@, Yaddress, tmp485
	mov	r0, r6	@, ivtmp.847
	bl	memcpy	@
	mov	r5, #512	@ j,
	cmp	sl, r5	@ ImgWidthInPixAln, j
	add	r6, r6, #256	@ ivtmp.847, ivtmp.847,
	bls	.L46	@,
.L44:
	mov	r1, r5, lsr #8	@ tmp271, j,
	add	r7, r5, #256	@ tmp372, j,
	mov	r2, #256	@,
	add	r5, r7, r2	@ j, tmp372,
	add	ip, r8, r1, asl #12	@, tmp273, pretmp.742, tmp271,
	mov	r7, r7, lsr #8	@ tmp404, tmp372,
	add	r1, r4, ip	@, Yaddress, tmp273
	mov	r0, r6	@, ivtmp.847
	add	r6, r6, r2	@ tmp373, ivtmp.847,
	bl	memcpy	@
	add	r3, r8, r7, asl #12	@, tmp406, pretmp.742, tmp404,
	mov	r2, #256	@,
	mov	r0, r6	@, tmp373
	add	r1, r4, r3	@, Yaddress, tmp406
	add	r6, r6, r2	@ ivtmp.847, tmp373,
	bl	memcpy	@
	cmp	sl, r5	@ ImgWidthInPixAln, j
	bhi	.L44	@,
.L46:
	ldr	r2, [fp, #-88]	@, %sfp
	add	r9, r9, #1	@ i, i,
	ldr	lr, [fp, #-84]	@, %sfp
	cmp	r2, r9	@, i
	add	r0, lr, sl	@,, ImgWidthInPixAln
	str	r0, [fp, #-84]	@, %sfp
	bhi	.L43	@,
	ldr	lr, [fp, #-88]	@, %sfp
	mov	r5, sl	@ ImgWidthInPixAln, ImgWidthInPixAln
	ldr	r0, [fp, #-96]	@, %sfp
	ldr	r2, [fp, #-100]	@, %sfp
	mul	r1, sl, lr	@, ImgWidthInPixAln,
	ldr	r9, [fp, #-112]	@ Caddress, %sfp
	bl	klib_fwrite	@
	ldr	ip, [fp, #-88]	@, %sfp
	movs	r4, ip, lsr #1	@,,
	str	r4, [fp, #-84]	@, %sfp
	beq	.L47	@,
	ldr	r1, [fp, #-92]	@, %sfp
	mov	r8, r5	@ ImgWidthInPixAln, ImgWidthInPixAln
	mov	sl, r1, asr #1	@,,
	str	sl, [fp, #-88]	@, %sfp
	mov	sl, #0	@ i.846,
.L48:
	cmp	r8, #0	@ ImgWidthInPixAln,
	beq	.L50	@,
	and	r6, sl, #7	@ pretmp.877, i.846,
	ldr	r1, [fp, #-88]	@, %sfp
	mov	r3, sl, lsr #3	@ pretmp.884, i.846,
	ldr	r0, [fp, #-80]	@, %sfp
	mov	r7, r6, asl #8	@ tmp294, pretmp.877,
	mov	r2, #256	@,
	sub	r5, r8, #1	@ tmp364, ImgWidthInPixAln,
	mov	r4, r2	@ j.845,
	mla	r7, r1, r3, r7	@ pretmp.746,, pretmp.884, tmp294
	ubfx	r6, r5, #8, #1	@ tmp365, tmp364,,
	add	r5, r0, r2	@ ivtmp.841,,
	add	r1, r9, r7	@, Caddress, pretmp.746
	bl	memcpy	@
	cmp	r8, r4	@ ImgWidthInPixAln, j.845
	bls	.L50	@,
	cmp	r6, #0	@ tmp365,
	beq	.L49	@,
	add	lr, r7, #2048	@ tmp481, pretmp.746,
	mov	r2, r4	@, j.845
	mov	r0, r5	@, ivtmp.841
	add	r1, r9, lr	@, Caddress, tmp481
	bl	memcpy	@
	mov	r4, #512	@ j.845,
	cmp	r8, r4	@ ImgWidthInPixAln, j.845
	add	r5, r5, #256	@ ivtmp.841, ivtmp.841,
	bls	.L50	@,
.L49:
	mov	ip, r4, lsr #8	@ tmp285, j.845,
	add	r6, r4, #256	@ tmp366, j.845,
	mov	r2, #256	@,
	mov	r0, r5	@, ivtmp.841
	add	r4, r7, ip, asl #11	@, tmp287, pretmp.746, tmp285,
	add	r5, r5, r2	@ tmp367, ivtmp.841,
	add	r1, r9, r4	@, Caddress, tmp287
	add	r4, r6, r2	@ j.845, tmp366,
	mov	r6, r6, lsr #8	@ tmp416, tmp366,
	bl	memcpy	@
	mov	r0, r5	@, tmp367
	mov	r2, #256	@,
	add	r3, r7, r6, asl #11	@, tmp418, pretmp.746, tmp416,
	add	r5, r5, r2	@ ivtmp.841, tmp367,
	add	r1, r9, r3	@, Caddress, tmp418
	bl	memcpy	@
	cmp	r8, r4	@ ImgWidthInPixAln, j.845
	bhi	.L49	@,
.L50:
	ldr	r2, [fp, #-84]	@, %sfp
	add	sl, sl, #1	@ i.846, i.846,
	ldr	lr, [fp, #-80]	@, %sfp
	cmp	sl, r2	@ i.846,
	add	r0, lr, r8	@,, ImgWidthInPixAln
	str	r0, [fp, #-80]	@, %sfp
	bcc	.L48	@,
	mov	r5, r8	@ ImgWidthInPixAln, ImgWidthInPixAln
.L47:
	ldr	r4, [fp, #4]	@, chroma_idc
	cmp	r4, #1	@,
	beq	.L134	@,
	ldr	r2, [fp, #4]	@, chroma_idc
	cmp	r2, #0	@,
	beq	.L70	@,
.L66:
	ldr	r3, [fp, #-104]	@, %sfp
	ldr	r0, [fp, #-120]	@, %sfp
	ldr	r2, [fp, #-100]	@, %sfp
	mul	r4, r0, r3	@ temp.874,,
	ldr	r0, [fp, #-108]	@, %sfp
	mov	r1, r4	@, temp.874
	bl	klib_fwrite	@
	ldr	r2, [fp, #-100]	@, %sfp
	mov	r1, r4	@, temp.874
	ldr	r0, [fp, #-116]	@, %sfp
	bl	klib_fwrite	@
	ldr	r1, [fp, #-56]	@, MemRecord_y.VirAddr
	ldr	r0, [fp, #-52]	@, MemRecord_y.PhyAddr
	bl	MEM_ReleaseMemBlock	@
	sub	r0, fp, #60	@,,
	mov	r1, #16	@,
	bl	__memzero	@
	ldr	r1, [fp, #-72]	@, MemRecord_ul.VirAddr
	ldr	r0, [fp, #-68]	@, MemRecord_ul.PhyAddr
	bl	MEM_ReleaseMemBlock	@
	sub	r0, fp, #76	@,,
	mov	r1, #16	@,
	bl	__memzero	@
.L72:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L133:
	movw	r1, #:lower16:.LC8	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC8	@,
	bl	dprint_vfmw	@
	b	.L72	@
.L41:
	ldr	r0, [fp, #-88]	@, %sfp
	subs	r8, r8, #1	@, PicStructure,
	movne	r8, #1	@
	str	r8, [fp, #-112]	@, %sfp
	cmp	r0, r8	@,
	bls	.L57	@,
	str	r9, [fp, #-80]	@ Caddress, %sfp
	mov	sl, r5	@ ImgWidthInPixAln, ImgWidthInPixAln
	mov	r9, r8	@ i.857, i.857
.L58:
	cmp	sl, #0	@ ImgWidthInPixAln,
	beq	.L60	@,
	ldr	r5, [fp, #-96]	@, %sfp
	mov	r2, r9, lsr #1	@ pretmp.886, i.857,
	ldr	r1, [fp, #-92]	@, %sfp
	mov	r7, r9, lsr #4	@ pretmp.880, i.857,
	and	lr, r9, #15	@ pretmp.892, i.857,
	sub	r6, sl, #1	@ tmp393, ImgWidthInPixAln,
	mla	r0, sl, r2, r5	@ ivtmp.830, ImgWidthInPixAln, pretmp.886,
	mov	r2, #256	@,
	mul	r8, r1, r7	@ tmp310,, pretmp.880
	mov	r5, r2	@ j.856,
	mla	r8, lr, r2, r8	@ pretmp.738, pretmp.892,, tmp310
	ubfx	r7, r6, #8, #1	@ tmp394, tmp393,,
	add	r6, r0, r2	@ ivtmp.830, ivtmp.830,
	add	r1, r4, r8	@, Yaddress, pretmp.738
	bl	memcpy	@
	cmp	sl, r5	@ ImgWidthInPixAln, j.856
	bls	.L60	@,
	cmp	r7, #0	@ tmp394,
	beq	.L59	@,
	add	ip, r8, #4096	@ tmp496, pretmp.738,
	mov	r2, r5	@, j.856
	mov	r0, r6	@, ivtmp.830
	add	r1, r4, ip	@, Yaddress, tmp496
	bl	memcpy	@
	mov	r5, #512	@ j.856,
	cmp	sl, r5	@ ImgWidthInPixAln, j.856
	add	r6, r6, #256	@ ivtmp.830, ivtmp.830,
	bls	.L60	@,
.L59:
	mov	r3, r5, lsr #8	@ tmp301, j.856,
	add	r7, r5, #256	@ tmp395, j.856,
	mov	r2, #256	@,
	mov	r0, r6	@, ivtmp.830
	add	r5, r8, r3, asl #12	@, tmp303, pretmp.738, tmp301,
	add	r6, r6, r2	@ tmp396, ivtmp.830,
	add	r1, r4, r5	@, Yaddress, tmp303
	add	r5, r7, r2	@ j.856, tmp395,
	mov	r7, r7, lsr #8	@ tmp440, tmp395,
	bl	memcpy	@
	mov	r0, r6	@, tmp396
	mov	r2, #256	@,
	add	r1, r8, r7, asl #12	@, tmp442, pretmp.738, tmp440,
	add	r6, r6, r2	@ ivtmp.830, tmp396,
	add	r1, r4, r1	@, Yaddress, tmp442
	bl	memcpy	@
	cmp	sl, r5	@ ImgWidthInPixAln, j.856
	bhi	.L59	@,
.L60:
	ldr	ip, [fp, #-88]	@, %sfp
	add	r9, r9, #2	@ i.857, i.857,
	cmp	ip, r9	@, i.857
	bhi	.L58	@,
	ldr	r9, [fp, #-80]	@ Caddress, %sfp
	mov	r5, sl	@ ImgWidthInPixAln, ImgWidthInPixAln
.L57:
	ldr	ip, [fp, #-88]	@, %sfp
	ldr	r0, [fp, #-96]	@, %sfp
	ldr	r2, [fp, #-100]	@, %sfp
	mul	r3, r5, ip	@ tmp312, ImgWidthInPixAln,
	mov	r1, r3, lsr #1	@, tmp312,
	bl	klib_fwrite	@
	ldr	r0, [fp, #-88]	@, %sfp
	movs	r4, r0, lsr #1	@,,
	str	r4, [fp, #-84]	@, %sfp
	beq	.L61	@,
	ldr	sl, [fp, #-96]	@, %sfp
	ldr	lr, [fp, #-92]	@, %sfp
	str	sl, [fp, #-80]	@, %sfp
	mov	sl, #0	@ i.864,
	mov	r8, lr, asr #1	@,,
	str	r8, [fp, #-88]	@, %sfp
	mov	r8, r5	@ ImgWidthInPixAln, ImgWidthInPixAln
.L62:
	cmp	r8, #0	@ ImgWidthInPixAln,
	beq	.L64	@,
	and	r6, sl, #7	@ pretmp.894, i.864,
	ldr	lr, [fp, #-88]	@, %sfp
	mov	r1, sl, lsr #3	@ pretmp.735, i.864,
	ldr	r0, [fp, #-80]	@, %sfp
	mov	r7, r6, asl #8	@ tmp326, pretmp.894,
	mov	r2, #256	@,
	sub	r5, r8, #1	@ tmp387, ImgWidthInPixAln,
	mov	r4, r2	@ j.863,
	mla	r7, lr, r1, r7	@ pretmp.736,, pretmp.735, tmp326
	ubfx	r6, r5, #8, #1	@ tmp388, tmp387,,
	add	r5, r0, r2	@ ivtmp.868,,
	add	r1, r9, r7	@, Caddress, pretmp.736
	bl	memcpy	@
	cmp	r8, r4	@ ImgWidthInPixAln, j.863
	bls	.L64	@,
	cmp	r6, #0	@ tmp388,
	beq	.L63	@,
	add	r3, r7, #2048	@ tmp492, pretmp.736,
	mov	r2, r4	@, j.863
	mov	r0, r5	@, ivtmp.868
	add	r1, r9, r3	@, Caddress, tmp492
	bl	memcpy	@
	mov	r4, #512	@ j.863,
	cmp	r8, r4	@ ImgWidthInPixAln, j.863
	add	r5, r5, #256	@ ivtmp.868, ivtmp.868,
	bls	.L64	@,
.L63:
	mov	r3, r4, lsr #8	@ tmp317, j.863,
	add	r6, r4, #256	@ tmp389, j.863,
	mov	r2, #256	@,
	mov	r0, r5	@, ivtmp.868
	add	r4, r7, r3, asl #11	@, tmp319, pretmp.736, tmp317,
	add	r5, r5, r2	@ tmp390, ivtmp.868,
	add	r1, r9, r4	@, Caddress, tmp319
	add	r4, r6, r2	@ j.863, tmp389,
	mov	r6, r6, lsr #8	@ tmp452, tmp389,
	bl	memcpy	@
	mov	r0, r5	@, tmp390
	mov	r2, #256	@,
	add	r1, r7, r6, asl #11	@, tmp454, pretmp.736, tmp452,
	add	r5, r5, r2	@ ivtmp.868, tmp390,
	add	r1, r9, r1	@, Caddress, tmp454
	bl	memcpy	@
	cmp	r8, r4	@ ImgWidthInPixAln, j.863
	bhi	.L63	@,
.L64:
	ldr	r2, [fp, #-84]	@, %sfp
	add	sl, sl, #1	@ i.864, i.864,
	ldr	ip, [fp, #-80]	@, %sfp
	cmp	sl, r2	@ i.864,
	add	r0, ip, r8	@,, ImgWidthInPixAln
	str	r0, [fp, #-80]	@, %sfp
	bcc	.L62	@,
	mov	r5, r8	@ ImgWidthInPixAln, ImgWidthInPixAln
.L61:
	ldr	r4, [fp, #4]	@, chroma_idc
	cmp	r4, #1	@,
	beq	.L135	@,
	ldr	r0, [fp, #4]	@, chroma_idc
	cmp	r0, #0	@,
	bne	.L66	@,
	ldr	lr, [fp, #-104]	@, %sfp
	ldr	r3, [fp, #-112]	@, %sfp
	cmp	lr, r3	@,
	bls	.L70	@,
	ldr	r4, [fp, #-104]	@, %sfp
	add	r3, r3, #2	@ i.851,,
	ldr	r1, [fp, #-112]	@, %sfp
	cmp	r4, r3	@, i.851
	mvn	r2, r1	@ tmp381,
	add	ip, r2, r4	@ tmp382, tmp381,
	ubfx	r2, ip, #1, #1	@ tmp383, tmp382,,
	bls	.L70	@,
	cmp	r2, #0	@ tmp383,
	beq	.L128	@,
	ldr	r2, [fp, #-104]	@, %sfp
	add	r3, r3, #2	@ i.851, i.851,
	cmp	r2, r3	@, i.851
	bls	.L70	@,
.L128:
	ldr	r2, [fp, #-104]	@ chrom_height, %sfp
.L73:
	add	r3, r3, #4	@ i.851, i.851,
	cmp	r2, r3	@ chrom_height, i.851
	bhi	.L73	@,
.L70:
	mov	r1, #128	@,
	mov	r2, #1048576	@,
	ldr	r0, [fp, #-116]	@, %sfp
	bl	memset	@
	ldr	r0, [fp, #-108]	@, %sfp
	mov	r1, #128	@,
	mov	r2, #1048576	@,
	bl	memset	@
	b	.L66	@
.L135:
	ldr	r3, [fp, #-104]	@, %sfp
	cmp	r3, #0	@,
	beq	.L66	@,
	ldr	ip, [fp, #-112]	@, %sfp
	ldr	r2, [fp, #-96]	@, %sfp
	ldr	r7, [fp, #-108]	@ ul, %sfp
	ldr	lr, [fp, #-120]	@ chrom_width, %sfp
	mla	r0, r5, ip, r2	@ tmp.865, ImgWidthInPixAln,,
	mov	r5, r5, asl #1	@ D.53751, ImgWidthInPixAln,
	mov	ip, #0	@ i.871,
.L67:
	cmp	lr, #0	@ chrom_width,
	beq	.L69	@,
	mov	r3, ip, lsr #1	@ pretmp.878, i.871,
	ldrb	sl, [r0, #0]	@ zero_extendqisi2	@ tmp472,* tmp.865
	mov	r1, #1	@ j.870,
	cmp	lr, r1	@ chrom_width, j.870
	mul	r6, lr, r3	@ tmp333, chrom_width, pretmp.878
	sub	r9, lr, #1	@ tmp374, chrom_width,
	and	r9, r9, r1	@ tmp376, tmp374,
	add	r3, r0, #2	@ ivtmp.798, tmp.865,
	add	r4, r7, r6	@ ivtmp.801, ul, tmp333
	add	r8, r4, #2097152	@ tmp471, ivtmp.801,
	add	r2, r4, r1	@ ivtmp.801, ivtmp.801,
	strb	sl, [r8, #0]	@ tmp472,
	ldrb	r8, [r0, #1]	@ zero_extendqisi2	@ tmp473,
	strb	r8, [r7, r6]	@ tmp473,
	bls	.L69	@,
	cmp	r9, #0	@ tmp376,
	beq	.L68	@,
	ldrb	r8, [r3, #0]	@ zero_extendqisi2	@ tmp488,* ivtmp.798
	add	r6, r2, #2097152	@ tmp487, ivtmp.801,
	mov	r1, #2	@ j.870,
	cmp	lr, r1	@ chrom_width, j.870
	add	r2, r2, #1	@ ivtmp.801, ivtmp.801,
	strb	r8, [r6, #0]	@ tmp488,
	ldrb	r6, [r3, #1]	@ zero_extendqisi2	@ tmp489,
	add	r3, r3, r1	@ ivtmp.798, ivtmp.798,
	strb	r6, [r4, #1]	@ tmp489,
	bls	.L69	@,
.L68:
	ldrb	sl, [r3, #0]	@ zero_extendqisi2	@ tmp329,* ivtmp.798
	add	r8, r2, #2097152	@ tmp328, ivtmp.801,
	mov	r4, r2	@ tmp379, ivtmp.801
	add	r6, r3, #2	@ tmp378, ivtmp.798,
	add	r1, r1, #2	@ j.870, j.870,
	strb	sl, [r8, #0]	@ tmp329,
	cmp	lr, r1	@ chrom_width, j.870
	ldrb	sl, [r3, #1]	@ zero_extendqisi2	@ tmp331,
	strb	sl, [r4], #1	@ tmp331,
	add	r8, r4, #2097152	@ tmp465, tmp379,
	ldrb	sl, [r3, #2]	@ zero_extendqisi2	@ tmp466,
	add	r3, r6, #2	@ ivtmp.798, tmp378,
	strb	sl, [r8, #0]	@ tmp466,
	ldrb	r6, [r6, #1]	@ zero_extendqisi2	@ tmp467,
	strb	r6, [r2, #1]	@ tmp467,
	add	r2, r4, #1	@ ivtmp.801, tmp379,
	bhi	.L68	@,
.L69:
	ldr	r1, [fp, #-104]	@, %sfp
	add	ip, ip, #2	@ i.871, i.871,
	cmp	r1, ip	@, i.871
	bls	.L66	@,
	add	r0, r0, r5	@ tmp.865, tmp.865, D.53751
	b	.L67	@
.L134:
	ldr	r3, [fp, #-104]	@, %sfp
	cmp	r3, #0	@,
	beq	.L66	@,
	ldr	r6, [fp, #-96]	@ tmp, %sfp
	mov	r8, #0	@ i.850,
	ldr	r7, [fp, #-108]	@ ivtmp.848, %sfp
	mov	r9, r3	@ chrom_height,
	ldr	lr, [fp, #-120]	@ chrom_width, %sfp
.L53:
	cmp	lr, #0	@ chrom_width,
	beq	.L55	@,
	ldrb	ip, [r6, #0]	@ zero_extendqisi2	@ tmp436,* tmp
	add	r4, r7, #2097152	@ tmp435, ivtmp.848,
	mov	r0, #1	@ j.849,
	cmp	lr, r0	@ chrom_width, j.849
	sub	r3, lr, #1	@ tmp356, chrom_width,
	mov	r2, r7	@ ivtmp.763, ivtmp.848
	strb	ip, [r4, #0]	@ tmp436,
	and	ip, r3, r0	@ tmp358, tmp356,
	ldrb	r1, [r6, #1]	@ zero_extendqisi2	@ tmp437,
	add	r3, r6, #2	@ ivtmp.760, tmp,
	strb	r1, [r2], #1	@ tmp437,
	bls	.L55	@,
	cmp	ip, #0	@ tmp358,
	beq	.L54	@,
	ldrb	r1, [r3, #0]	@ zero_extendqisi2	@ tmp477,* ivtmp.760
	add	r4, r2, #2097152	@ tmp476, ivtmp.763,
	mov	r0, #2	@ j.849,
	cmp	lr, r0	@ chrom_width, j.849
	strb	r1, [r4, #0]	@ tmp477,
	ldrb	ip, [r3, #1]	@ zero_extendqisi2	@ tmp478,
	add	r3, r3, r0	@ ivtmp.760, ivtmp.760,
	strb	ip, [r2], #1	@ tmp478,
	bls	.L55	@,
.L54:
	ldrb	sl, [r3, #0]	@ zero_extendqisi2	@ tmp296,* ivtmp.760
	add	r4, r2, #2097152	@ tmp295, ivtmp.763,
	mov	r1, r2	@ tmp361, ivtmp.763
	add	ip, r3, #2	@ tmp360, ivtmp.760,
	add	r0, r0, #2	@ j.849, j.849,
	strb	sl, [r4, #0]	@ tmp296,
	cmp	lr, r0	@ chrom_width, j.849
	ldrb	sl, [r3, #1]	@ zero_extendqisi2	@ tmp298,
	strb	sl, [r1], #1	@ tmp298,
	add	r4, r1, #2097152	@ tmp429, tmp361,
	ldrb	sl, [r3, #2]	@ zero_extendqisi2	@ tmp430,
	add	r3, ip, #2	@ ivtmp.760, tmp360,
	strb	sl, [r4, #0]	@ tmp430,
	ldrb	ip, [ip, #1]	@ zero_extendqisi2	@ tmp431,
	strb	ip, [r2, #1]	@ tmp431,
	add	r2, r1, #1	@ ivtmp.763, tmp361,
	bhi	.L54	@,
.L55:
	add	r8, r8, #1	@ i.850, i.850,
	add	r7, r7, lr	@ ivtmp.848, ivtmp.848, chrom_width
	cmp	r9, r8	@ chrom_height, i.850
	bls	.L66	@,
	add	r6, r6, r5	@ tmp, tmp, ImgWidthInPixAln
	b	.L53	@
.L42:
	mov	r1, r8	@, PicStructure
	ldr	r0, [fp, #-96]	@, %sfp
	ldr	r2, [fp, #-100]	@, %sfp
	bl	klib_fwrite	@
	b	.L47	@
	.fnend
	.size	VDMHAL_V300R001_WriteBigTitle1DYuv, .-VDMHAL_V300R001_WriteBigTitle1DYuv
	.global	__aeabi_idiv
	.align	2
	.global	VDMHAL_V300R001_ArrangeMem_BTL
	.type	VDMHAL_V300R001_ArrangeMem_BTL, %function
VDMHAL_V300R001_ArrangeMem_BTL:
	.fnstart
.LFB1534:
	@ args = 28, pretend = 0, frame = 16
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
	subs	r4, r0, #0	@ MemAddr, MemAddr
	str	r1, [fp, #-52]	@ MemSize, %sfp
	mov	r5, r2	@ Width, Width
	mov	r6, r3	@ Height, Height
	ldr	r7, [fp, #20]	@ pVdmMemArrange, pVdmMemArrange
	beq	.L197	@,
	ldr	r3, [fp, #16]	@ UserDec, UserDec
	cmp	r3, #1	@ UserDec,
	beq	.L198	@,
	cmp	r6, #31	@ Height,
	movgt	ip, #0	@, tmp239
	movle	ip, #1	@, tmp239
	sub	r0, r2, #32	@ tmp234, Width,
	movw	r3, #8160	@ tmp236,
	cmp	r0, r3	@ tmp234, tmp236
	movls	lr, ip	@, tmp242, tmp239
	orrhi	lr, ip, #1	@,, tmp242, tmp239
	cmp	lr, #0	@ tmp242,
	bne	.L142	@,
	cmp	r6, #8192	@ Height,
	bgt	.L142	@,
.L141:
	cmp	r7, #0	@ pVdmMemArrange,
	beq	.L199	@,
	mov	r0, r7	@, pVdmMemArrange
	mov	r1, #940	@,
	ldr	sl, [fp, #4]	@ PmvNum, PmvNum
	bl	__memzero	@
	add	r1, r6, #15	@ tmp251, Height,
	add	r0, r5, #15	@ D.52226, Width,
	movw	r2, #:lower16:g_not_direct_8x8_inference_flag	@ tmp259,
	movt	r2, #:upper16:g_not_direct_8x8_inference_flag	@ tmp259,
	mov	r3, r1, asr #4	@ ImgHeightInMb, tmp251,
	mov	r1, r0, asr #4	@ ImgWidthInMb, D.52226,
	ldrb	r6, [r2, #0]	@ zero_extendqisi2	@ g_not_direct_8x8_inference_flag, g_not_direct_8x8_inference_flag
	cmp	sl, #20	@ PmvNum,
	movge	sl, #20	@ PmvNum.956,
	mul	r2, r1, r3	@ tmp261, ImgWidthInMb, ImgHeightInMb
	cmp	r3, #36	@ ImgHeightInMb,
	cmple	r1, #45	@, ImgWidthInMb,
	movle	ip, #64	@, ColMbSize,
	movgt	ip, #32	@, ColMbSize,
	cmp	r6, #1	@ g_not_direct_8x8_inference_flag,
	moveq	ip, #64	@ ColMbSize,
	mul	r2, ip, r2	@ tmp262, ColMbSize, tmp261
	ldr	ip, [fp, #-52]	@, %sfp
	add	r6, r2, #127	@ tmp263, tmp262,
	bic	r6, r6, #127	@ PmvSlotLen, tmp263,
	mul	r2, sl, r6	@, PmvNum.956, PmvSlotLen
	cmp	r2, ip	@,
	str	r2, [fp, #-56]	@, %sfp
	bge	.L200	@,
	mov	r1, r1, asl #4	@ ImgWidthInPixAln, ImgWidthInMb,
	add	r9, r4, #1020	@ tmp271, MemAddr,
	add	ip, r9, #3	@ tmp271, tmp271,
	add	r8, r1, #255	@ tmp275, ImgWidthInPixAln,
	sub	r9, r1, #1	@ tmp277, ImgWidthInPixAln,
	bic	lr, ip, #1020	@ tmp273, tmp271,
	bic	ip, r8, #255	@ SlotWidth, tmp275,
	movw	r8, #2047	@ tmp278,
	cmp	r9, r8	@ tmp277, tmp278
	bic	r2, lr, #3	@ tmp273, tmp273,
	rsb	lr, r4, r2	@, MemAddr, tmp273
	str	sl, [r7, #936]	@ PmvNum.956, <variable>.ValidPMVNum
	mov	r2, r6, asr #1	@ tmp270, PmvSlotLen,
	str	lr, [fp, #-48]	@, %sfp
	mov	lr, ip, asl #4	@ tmp276, SlotWidth,
	str	r2, [r7, #932]	@ tmp270, <variable>.HafPmvOffset
	str	lr, [r7, #0]	@ tmp276, <variable>.VahbStride
	bhi	.L201	@,
.L148:
	mov	r9, #16	@ level,
.L150:
	mov	r3, r3, asl #4	@ ImgHeightInPixAln, ImgHeightInMb,
	ldr	r1, [fp, #28]	@, BtlDbdrEnable
	adds	lr, r3, #31	@ tmp288, ImgHeightInPixAln,
	addmi	lr, r3, #62	@, tmp289, ImgHeightInPixAln,
	cmp	r1, #0	@,
	mov	r8, lr, asr #5	@ tmp291, tmp289,
	mul	r9, r8, r9	@ D.52271, tmp291, level
	mul	r8, ip, r8	@ D.52266, SlotWidth, tmp291
	add	ip, r9, r8	@ tmp292, D.52271, D.52266
	mov	r2, ip, asl #5	@ tmp293, tmp292,
	str	r2, [r7, #536]	@ tmp293, <variable>.ChromOffset
	ldreq	r2, [fp, #28]	@ DbdrInfoSlotLen, BtlDbdrEnable
	bne	.L202	@,
	ldr	r1, [fp, #24]	@, Btl1Dt2DEnable
	cmp	r1, #0	@,
	moveq	r5, r1	@ ImgInfoSlotLen,
	bne	.L203	@,
.L155:
	ldr	r1, [fp, #12]	@, s32DisplayFrameNum
	cmp	r1, #0	@,
	bne	.L156	@,
.L205:
	str	r1, [r7, #808]	@, <variable>.ValidBTLFrameNum
	ldr	r5, [fp, #12]	@ prephitmp.916, s32DisplayFrameNum
.L157:
	ldr	r2, [fp, #8]	@, s32MaxRefFrameNum
	ldr	r3, [fp, #-48]	@, %sfp
	cmp	r2, #0	@,
	add	r5, r5, r3	@ Offset.960, prephitmp.916,
	bne	.L162	@,
.L204:
	str	r2, [r7, #548]	@, <variable>.ValidFrameNum
	ldr	sl, [fp, #8]	@ prephitmp.965, s32MaxRefFrameNum
.L163:
	ldr	r9, [r7, #936]	@ D.52329, <variable>.ValidPMVNum
	add	r5, sl, r5	@ Offset.963, prephitmp.965, Offset.960
	add	r2, r5, r4	@ MemAddr.964, Offset.963, MemAddr
	cmp	r9, #0	@ D.52329,
	ble	.L168	@,
	mov	r1, #1	@ i,
	cmp	r1, r9	@ i, D.52329
	sub	lr, r9, #1	@ tmp359, D.52329,
	str	r2, [r7, #812]	@ MemAddr.964, <variable>.PMVAddr
	and	r0, lr, r1	@ tmp361, tmp359,
	add	r2, r2, r6	@ ivtmp.929, MemAddr.964, PmvSlotLen
	add	r3, r7, #4	@ ivtmp.933, pVdmMemArrange,
	bge	.L168	@,
	cmp	r0, #0	@ tmp361,
	beq	.L169	@,
	mov	r1, #2	@ i,
	cmp	r1, r9	@ i, D.52329
	str	r2, [r3, #812]	@ ivtmp.929, <variable>.PMVAddr
	add	r2, r2, r6	@ ivtmp.929, ivtmp.929, PmvSlotLen
	add	r3, r3, #4	@ ivtmp.933, ivtmp.933,
	bge	.L168	@,
.L169:
	add	r1, r1, #2	@ i, i,
	add	r0, r3, #4	@ tmp363, ivtmp.933,
	cmp	r1, r9	@ i, D.52329
	add	ip, r2, r6	@ ivtmp.929, ivtmp.929, PmvSlotLen
	str	r2, [r3, #812]	@ ivtmp.929, <variable>.PMVAddr
	add	r2, ip, r6	@ ivtmp.929, ivtmp.929, PmvSlotLen
	str	ip, [r0, #812]	@ ivtmp.929, <variable>.PMVAddr
	add	r3, r0, #4	@ ivtmp.933, tmp363,
	blt	.L169	@,
.L168:
	mla	r5, r9, r6, r5	@ tmp357, D.52329, PmvSlotLen, Offset.963
	mov	r0, #0	@ D.52204,
	str	r5, [r7, #4]	@ tmp357, <variable>.TotalMemUsed
.L138:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L156:
	ldr	r3, [fp, #24]	@, Btl1Dt2DEnable
	cmp	r3, #0	@,
	beq	.L159	@,
	ldr	r0, [fp, #12]	@, s32DisplayFrameNum
	str	r0, [r7, #808]	@, <variable>.ValidBTLFrameNum
	ldr	r3, [fp, #12]	@ s32DisplayFrameNum.959, s32DisplayFrameNum
.L160:
	cmp	r3, #0	@ s32DisplayFrameNum.959,
	addle	r2, r5, r2	@ tmp335, ImgInfoSlotLen, DbdrInfoSlotLen
	mulle	r5, r2, r3	@ prephitmp.916, tmp335, s32DisplayFrameNum.959
	ble	.L157	@,
	ldr	sl, [r7, #808]	@ D.52311, <variable>.ValidBTLFrameNum
	add	r5, r5, r2	@ pretmp.968, ImgInfoSlotLen, DbdrInfoSlotLen
	ldr	ip, [fp, #-48]	@, %sfp
	add	r3, r7, #4	@ ivtmp.947, pVdmMemArrange,
	cmp	sl, #1	@ D.52311,
	sub	r1, sl, #1	@ tmp369, D.52311,
	add	r2, ip, r4	@ ivtmp.943,, MemAddr
	and	r0, r1, #1	@ tmp371, tmp369,
	str	r2, [r7, #552]	@ ivtmp.943, <variable>.BtlAddr
	mov	r1, #1	@ i.958,
	add	r2, r2, r5	@ ivtmp.943, ivtmp.943, pretmp.968
	ble	.L189	@,
	cmp	r0, #0	@ tmp371,
	beq	.L161	@,
	mov	r1, #2	@ i.958,
	cmp	sl, r1	@ D.52311, i.958
	str	r2, [r3, #552]	@ ivtmp.943, <variable>.BtlAddr
	add	r2, r2, r5	@ ivtmp.943, ivtmp.943, pretmp.968
	add	r3, r3, #4	@ ivtmp.947, ivtmp.947,
	ble	.L189	@,
.L161:
	add	r1, r1, #2	@ i.958, i.958,
	add	lr, r3, #4	@ tmp373, ivtmp.947,
	cmp	sl, r1	@ D.52311, i.958
	add	r0, r2, r5	@ ivtmp.943, ivtmp.943, pretmp.968
	str	r2, [r3, #552]	@ ivtmp.943, <variable>.BtlAddr
	add	r2, r0, r5	@ ivtmp.943, ivtmp.943, pretmp.968
	str	r0, [lr, #552]	@ ivtmp.943, <variable>.BtlAddr
	add	r3, lr, #4	@ ivtmp.947, tmp373,
	bgt	.L161	@,
.L189:
	mul	r5, r5, sl	@ prephitmp.916, pretmp.968, D.52311
	ldr	r2, [fp, #8]	@, s32MaxRefFrameNum
	ldr	r3, [fp, #-48]	@, %sfp
	cmp	r2, #0	@,
	add	r5, r5, r3	@ Offset.960, prephitmp.916,
	beq	.L204	@,
.L162:
	ldr	lr, [fp, #24]	@, Btl1Dt2DEnable
	add	r8, r8, r8, asl #1	@, tmp345, D.52266, D.52266,
	add	r0, r9, r9, asl #1	@, tmp340, D.52271, D.52271,
	ldr	ip, [fp, #-52]	@, %sfp
	cmp	lr, #0	@,
	ldreq	r2, [fp, #8]	@, s32MaxRefFrameNum
	ldreq	r3, [fp, #12]	@, s32DisplayFrameNum
	ldrne	r1, [fp, #8]	@, s32MaxRefFrameNum
	addeq	sl, r2, #2	@ tmp337,,
	addeq	sl, sl, r3	@ ValidFrameNum, tmp337,
	mov	r3, r8, asl #5	@ tmp346, tmp345,
	addne	sl, r1, #2	@ ValidFrameNum,,
	mov	r8, r0, asl #5	@ tmp341, tmp340,
	ldr	r1, [fp, #-56]	@, %sfp
	mov	r9, r3, asr #1	@ tmp350, tmp346,
	ldr	r2, [fp, #-48]	@, %sfp
	add	r8, r9, r8, lsr #1	@, ImgSlotLen, tmp350, tmp341,
	rsb	lr, r1, ip	@ tmp351,,
	rsb	r1, r2, lr	@ FramePoolSize,, tmp351
	rsb	r0, r5, r1	@, Offset.960, FramePoolSize
	mov	r1, r8	@, ImgSlotLen
	bl	__aeabi_idiv	@
	cmp	r0, #64	@,
	movge	r0, #64	@ D.52322,
	cmp	r0, sl	@ D.52322, ValidFrameNum
	movlt	sl, r0	@ D.52322, D.52322
	movge	sl, sl	@ D.52322, ValidFrameNum
	str	sl, [r7, #548]	@ D.52322, <variable>.ValidFrameNum
	cmp	sl, #0	@ D.52322,
	ble	.L190	@,
	cmp	sl, #1	@ D.52322,
	add	r9, r5, r4	@ ivtmp.936, Offset.960, MemAddr
	sub	r3, sl, #1	@ tmp364, D.52322,
	str	r9, [r7, #8]	@ ivtmp.936, <variable>.FrameAddr
	and	r0, r3, #1	@ tmp366, tmp364,
	add	r2, r9, r8	@ ivtmp.936, ivtmp.936, ImgSlotLen
	mov	r1, #1	@ i.962,
	add	r3, r7, #4	@ ivtmp.940, pVdmMemArrange,
	ble	.L190	@,
	cmp	r0, #0	@ tmp366,
	beq	.L167	@,
	mov	r1, #2	@ i.962,
	cmp	sl, r1	@ D.52322, i.962
	str	r2, [r3, #8]	@ ivtmp.936, <variable>.FrameAddr
	add	r2, r2, r8	@ ivtmp.936, ivtmp.936, ImgSlotLen
	add	r3, r3, #4	@ ivtmp.940, ivtmp.940,
	ble	.L190	@,
.L167:
	add	r1, r1, #2	@ i.962, i.962,
	add	r0, r3, #4	@ tmp368, ivtmp.940,
	cmp	sl, r1	@ D.52322, i.962
	add	ip, r2, r8	@ ivtmp.936, ivtmp.936, ImgSlotLen
	str	r2, [r3, #8]	@ ivtmp.936, <variable>.FrameAddr
	add	r2, ip, r8	@ ivtmp.936, ivtmp.936, ImgSlotLen
	str	ip, [r0, #8]	@ ivtmp.936, <variable>.FrameAddr
	add	r3, r0, #4	@ ivtmp.940, tmp368,
	bgt	.L167	@,
.L190:
	mul	sl, sl, r8	@ prephitmp.965, D.52322, ImgSlotLen
	b	.L163	@
.L203:
	adds	lr, r5, #127	@ tmp321, Width,
	ldr	r1, [fp, #12]	@, s32DisplayFrameNum
	addmi	lr, r5, #254	@, tmp323, Width,
	cmp	r1, #0	@,
	mov	ip, lr, asr #7	@ tmp325, tmp323,
	add	r0, ip, ip, asl #1	@, tmp328, tmp325, tmp325,
	mov	r5, r0, asl #7	@ tmp329, tmp328,
	mul	r3, r3, r5	@ tmp330, ImgHeightInPixAln, tmp329
	mov	r5, r3, asr #1	@ ImgInfoSlotLen, tmp330,
	bne	.L156	@,
	b	.L205	@
.L202:
	cmp	r0, #0	@ D.52226,
	add	lr, r0, #15	@ tmp296, D.52226,
	movge	lr, r0	@ D.52226, D.52226
	mov	r2, lr, asr #4	@ tmp297, D.52226,
	adds	ip, r2, #7	@ tmp298, tmp297,
	addmi	r0, r2, #14	@, tmp300, tmp297,
	movpl	r0, ip	@, tmp300, tmp298
	mov	r1, r0, asr #3	@ tmp302, tmp300,
	mul	lr, r1, r3	@ tmp303, tmp302, ImgHeightInPixAln
	mov	r2, lr, asl #4	@ tmp304, tmp303,
	add	ip, r2, #7	@ tmp307, tmp304,
	cmp	r2, #0	@ tmp304,
	movlt	r2, ip	@ tmp306, tmp307
	mov	r0, r2, asr #3	@ tmp308, tmp306,
	add	r1, r0, r0, asl #1	@, tmp311, tmp308, tmp308,
	add	lr, r1, r1, lsr #31	@, tmp314, tmp311, tmp311,
	ldr	r1, [fp, #24]	@, Btl1Dt2DEnable
	mov	r2, lr, asr #1	@ tmp315, tmp314,
	adds	ip, r2, #127	@ tmp316, tmp315,
	addmi	r0, r2, #254	@, tmp318, tmp315,
	movpl	r0, ip	@, tmp318, tmp316
	cmp	r1, #0	@,
	bic	r2, r0, #127	@ DbdrInfoSlotLen, tmp318,
	moveq	r5, r1	@ ImgInfoSlotLen,
	beq	.L155	@,
	b	.L203	@
.L201:
	sub	lr, r1, #2048	@ tmp279, ImgWidthInPixAln,
	sub	r2, lr, #1	@ tmp279, tmp279,
	cmp	r2, r8	@ tmp279, tmp278
	movls	r9, #32	@ level,
	bls	.L150	@,
	sub	lr, r1, #4096	@ tmp282, ImgWidthInPixAln,
	sub	r2, lr, #1	@ tmp282, tmp282,
	cmp	r2, r8	@ tmp282, tmp278
	movls	r9, #48	@ level,
	bls	.L150	@,
	sub	r2, r1, #6144	@ tmp285, ImgWidthInPixAln,
	sub	r1, r2, #1	@ tmp285, tmp285,
	cmp	r1, r8	@ tmp285, tmp278
	movls	r9, #64	@ level,
	bls	.L150	@,
	b	.L148	@
.L198:
	cmp	r6, #31	@ Height,
	movgt	r2, #0	@, tmp226
	movle	r2, #1	@, tmp226
	sub	r1, r5, #32	@ tmp221, Width,
	movw	ip, #8160	@ tmp223,
	cmp	r1, ip	@ tmp221, tmp223
	movls	r0, r2	@, tmp229, tmp226
	orrhi	r0, r2, #1	@,, tmp229, tmp226
	cmp	r0, #0	@ tmp229,
	bne	.L142	@,
	cmp	r6, #16384	@ Height,
	ble	.L141	@,
.L142:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC2	@,
	ldr	r2, .L206	@,
	movt	r1, #:upper16:.LC2	@,
	movw	r3, #:lower16:.LC11	@,
	movt	r3, #:upper16:.LC11	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.52204,
	b	.L138	@
.L159:
	ldr	r3, [fp, #12]	@ s32DisplayFrameNum.959, s32DisplayFrameNum
	cmp	r3, #6	@ s32DisplayFrameNum.959,
	movlt	r3, #6	@ s32DisplayFrameNum.959,
	str	r3, [r7, #808]	@ s32DisplayFrameNum.959, <variable>.ValidBTLFrameNum
	b	.L160	@
.L200:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC2	@,
	ldr	r2, .L206	@,
	movt	r1, #:upper16:.LC2	@,
	movw	r3, #:lower16:.LC13	@,
	movt	r3, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.52204,
	b	.L138	@
.L197:
	movw	r1, #:lower16:.LC2	@,
	ldr	r2, .L206	@,
	movt	r1, #:upper16:.LC2	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r3, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.52204,
	b	.L138	@
.L199:
	mov	r0, r7	@, pVdmMemArrange
	movw	r1, #:lower16:.LC2	@,
	ldr	r2, .L206	@,
	movt	r1, #:upper16:.LC2	@,
	movw	r3, #:lower16:.LC12	@,
	movt	r3, #:upper16:.LC12	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.52204,
	b	.L138	@
.L207:
	.align	2
.L206:
	.word	.LANCHOR0+56
	.fnend
	.size	VDMHAL_V300R001_ArrangeMem_BTL, .-VDMHAL_V300R001_ArrangeMem_BTL
	.align	2
	.global	VDMHAL_V300R001_SetVdhClkSkip
	.type	VDMHAL_V300R001_SetVdhClkSkip, %function
VDMHAL_V300R001_SetVdhClkSkip:
	.fnstart
.LFB1552:
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
	movw	r5, #:lower16:g_ChanCtx	@ ivtmp.1005,
	movt	r5, #:upper16:g_ChanCtx	@ ivtmp.1005,
	movw	r4, #:lower16:s_pFspInst	@,
	movt	r4, #:upper16:s_pFspInst	@,
	str	r4, [fp, #-52]	@, %sfp
	ldr	r4, [r5, #64]	@ D.53454,
	movw	r1, #:lower16:g_FrameRate	@,
	movw	r0, #:lower16:86236207	@,
	movt	r1, #:upper16:g_FrameRate	@,
	cmp	r4, #0	@ D.53454,
	movt	r0, #:upper16:86236207	@,
	movw	r3, #:lower16:s_pstVfmwChan	@,
	movw	r2, #:lower16:g_LastFrameRate	@,
	movt	r3, #:upper16:s_pstVfmwChan	@,
	movt	r2, #:upper16:g_LastFrameRate	@,
	mov	r8, #0	@ clk_need,
	str	r1, [fp, #-56]	@, %sfp
	str	r0, [fp, #-60]	@, %sfp
	add	sl, r5, #64	@ D.54311, ivtmp.1005,
	str	r3, [fp, #-68]	@, %sfp
	mov	r7, #30	@ s32FrameRate.1089,
	str	r2, [fp, #-64]	@, %sfp
	str	r8, [fp, #-48]	@ clk_need, %sfp
	blt	.L209	@,
.L233:
	mov	r0, r4	@, D.53454
	bl	VCTRL_IsChanActive	@
	cmp	r0, #0	@,
	movne	r6, r7	@ s32FrameRate, s32FrameRate.1089
	bne	.L211	@,
	ldr	r6, [fp, #-52]	@, %sfp
	ldr	r0, [fp, #-56]	@, %sfp
	ldr	r3, [r6, r4, asl #2]	@ pFsp, s_pFspInst
	ldr	r6, [r0, r4, asl #2]	@ s32FrameRate, g_FrameRate
	mov	r0, r4	@, D.53454
	ldr	r2, [r3, #68]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	ldr	r8, [r3, #72]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	adds	lr, r2, #15	@ tmp178, <variable>.stInstCfg.s32DecFsWidth,
	addmi	lr, r2, #30	@, tmp180, <variable>.stInstCfg.s32DecFsWidth,
	adds	r9, r8, #15	@ tmp183, <variable>.stInstCfg.s32DecFsHeight,
	addmi	ip, r8, #30	@, tmp185, <variable>.stInstCfg.s32DecFsHeight,
	movpl	ip, r9	@, tmp185, tmp183
	cmp	r6, #30	@ s32FrameRate,
	mov	r8, lr, asr #4	@ picWidthInMb, tmp180,
	mov	r9, ip, asr #4	@ picHeightInMb, tmp185,
	ldrgt	ip, [fp, #-64]	@, %sfp
	movle	r6, r7	@ s32FrameRate, s32FrameRate.1089
	strgt	r6, [ip, r4, asl #2]	@ s32FrameRate, g_LastFrameRate
	bl	VCTRL_GetVidStd	@
	cmp	r0, #16	@,
	ldrls	pc, [pc, r0, asl #2]	@
	b	.L211	@
.L226:
	.word	.L223
	.word	.L215
	.word	.L223
	.word	.L223
	.word	.L211
	.word	.L223
	.word	.L223
	.word	.L211
	.word	.L223
	.word	.L223
	.word	.L223
	.word	.L223
	.word	.L223
	.word	.L223
	.word	.L211
	.word	.L224
	.word	.L223
.L223:
	mul	r2, r8, r9	@ tmp271, picWidthInMb, picHeightInMb
	mul	r8, r6, r2	@ tmp272, s32FrameRate, tmp271
	ubfx	r3, r8, #1, #26	@ tmp275, tmp272,,
.L231:
	ldr	ip, [fp, #-60]	@, %sfp
	ldr	r1, [fp, #-48]	@, %sfp
	umull	r2, r3, ip, r3	@, tmp276,, tmp275
	add	r0, r1, r3, lsr #7	@,,, tmp276,
	str	r0, [fp, #-48]	@, %sfp
.L211:
	add	r5, r5, #4	@ ivtmp.1005, ivtmp.1005,
	cmp	r5, sl	@ ivtmp.1005, D.54311
	beq	.L209	@,
	ldr	r4, [r5, #64]	@ D.53454,
	mov	r7, r6	@ s32FrameRate.1089, s32FrameRate
	cmp	r4, #0	@ D.53454,
	bge	.L233	@,
.L209:
	movw	r3, #:lower16:g_pstRegCrg	@ tmp278,
	movt	r3, #:upper16:g_pstRegCrg	@ tmp278,
	ldr	r8, [fp, #-48]	@ clk_need, %sfp
	ldr	ip, [r3, #0]	@ g_pstRegCrg.549, g_pstRegCrg
	rsb	r8, r8, #32	@ clk_skip, clk_need,
	cmp	r8, #25	@ clk_skip,
	movge	r8, #25	@ clk_skip.1082,
	ldr	r2, [ip, #120]	@ D.53486, <variable>.PERI_CRG30.u32
	cmp	r8, #0	@ clk_skip.1082,
	bfigt	r2, r8, #12, #5	@ u32TmpValue, clk_skip.1082,,
	bfcle	r2, #12, #5	@ u32TmpValue,,
	bfc	r2, #17, #1	@ u32TmpValue,,
	str	r2, [ip, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	ldr	r0, [r3, #0]	@ g_pstRegCrg.1087, g_pstRegCrg
	ldr	r1, [r0, #120]	@ D.53493, <variable>.PERI_CRG30.u32
	orr	r2, r1, #131072	@ u32TmpValue, D.53493,
	str	r2, [r0, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L224:
	mul	lr, r9, r8	@ tmp204, picHeightInMb, picWidthInMb
	mov	ip, lr, asl #1	@ tmp205, tmp204,
	mul	r1, r6, ip	@ tmp206, s32FrameRate, tmp205
	ubfx	r3, r1, #1, #26	@ tmp209, tmp206,,
	b	.L231	@
.L215:
	ldr	lr, [fp, #-68]	@, %sfp
	ldr	ip, [lr, r4, asl #2]	@ D.53478, s_pstVfmwChan
	ldr	r1, [ip, #1472]	@ <variable>.stSynExtraData.heightInMB, <variable>.stSynExtraData.heightInMB
	ldr	r0, [ip, #1468]	@ <variable>.stSynExtraData.widthInMB, <variable>.stSynExtraData.widthInMB
	mul	r3, r1, r0	@ tmp255, <variable>.stSynExtraData.heightInMB, <variable>.stSynExtraData.widthInMB
	mov	r2, r3, asl #5	@ tmp258, tmp255,
	mul	r8, r6, r2	@ tmp259, s32FrameRate, tmp258
	mov	r3, r8, lsr #6	@ tmp261, tmp259,
	b	.L231	@
	.fnend
	.size	VDMHAL_V300R001_SetVdhClkSkip, .-VDMHAL_V300R001_SetVdhClkSkip
	.align	2
	.global	VDMHAL_V300R001_StartHwDecode
	.type	VDMHAL_V300R001_StartHwDecode, %function
VDMHAL_V300R001_StartHwDecode:
	.fnstart
.LFB1553:
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
	mov	r6, r0, asl #3	@ tmp234, VdhId,
	rsb	r7, r0, r6	@ tmp156, VdhId, tmp234
	movw	r5, #:lower16:g_VdmDrvParam	@ tmp233,
	add	r1, r7, #1	@ tmp157, tmp156,
	movt	r5, #:upper16:g_VdmDrvParam	@ tmp233,
	movw	r8, #:lower16:s_pstVfmwChan	@ tmp235,
	movt	r8, #:upper16:s_pstVfmwChan	@ tmp235,
	ldr	r2, [r5, r1, asl #3]	@ <variable>.ChanId, <variable>.ChanId
	add	sl, r5, r1, asl #3	@, tmp160, tmp233, tmp157,
	movw	r7, #:lower16:g_pstRegCrg	@ tmp232,
	movt	r7, #:upper16:g_pstRegCrg	@ tmp232,
	ldr	r9, [sl, #4]	@ VidStd, <variable>.VidStd
	mov	r4, r0	@ VdhId, VdhId
	ldr	r3, [r8, r2, asl #2]	@ tmp169, s_pstVfmwChan
	ldr	r1, [r7, #0]	@ g_pstRegCrg.552, g_pstRegCrg
	ldr	r3, [r3, #592]	@ eCapLevel, <variable>.stSynExtraData.eCapLevel
	ldr	r2, [r1, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	cmp	r3, #9	@ eCapLevel,
	movls	ip, #0	@,
	movhi	ip, #1	@,
	cmp	r9, #0	@ VidStd,
	movne	ip, #0	@,,
	cmp	ip, #0	@ tmp177,
	beq	.L235	@,
	cmp	r3, #23	@ eCapLevel,
	orrls	r2, r2, #768	@ u32TmpValue, u32TmpValue,
	bhi	.L235	@,
.L236:
	movw	lr, #:lower16:arm_delay_ops	@ tmp179,
	movt	lr, #:upper16:arm_delay_ops	@ tmp179,
	str	r2, [r1, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	rsb	r9, r4, r6	@ tmp185, VdhId, tmp234
	ldr	r3, [lr, #4]	@ arm_delay_ops.const_udelay, arm_delay_ops.const_udelay
	movw	r0, #:lower16:32212230	@,
	movt	r0, #:upper16:32212230	@,
	movw	sl, #:lower16:s_pstVfmwChan	@ tmp187,
	blx	r3	@ arm_delay_ops.const_udelay
	add	ip, r9, #1	@ tmp186, tmp185,
	movt	sl, #:upper16:s_pstVfmwChan	@ tmp187,
	ldr	r9, [r5, ip, asl #3]	@ s32ChanId.1115, <variable>.ChanId
	ldr	r3, [r8, r9, asl #2]	@ prephitmp.1104, s_pstVfmwChan
	ldr	r0, [r3, #1264]	@ <variable>.stSynExtraData.s32ModuleLowlyEnable, <variable>.stSynExtraData.s32ModuleLowlyEnable
	cmp	r0, #0	@ <variable>.stSynExtraData.s32ModuleLowlyEnable,
	bne	.L237	@,
	ldr	ip, [r3, #1252]	@ <variable>.stSynExtraData.s32FastForwardBackwardSpeed, <variable>.stSynExtraData.s32FastForwardBackwardSpeed
	movw	r1, #4094	@ tmp192,
	add	r0, ip, #2032	@ tmp189, <variable>.stSynExtraData.s32FastForwardBackwardSpeed,
	add	r2, r0, #15	@ tmp189, tmp189,
	cmp	r2, r1	@ tmp189, tmp192
	bls	.L249	@,
.L238:
	ldr	r1, [r3, #552]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r1, #16	@ <variable>.eVidStd,
	movne	r1, #3	@ ClockGatingData,
	moveq	r1, #0	@ ClockGatingData,
	cmp	r4, #0	@ VdhId,
	bne	.L250	@,
.L242:
	movw	lr, #:lower16:s_RegPhyBaseAddr	@ tmp199,
	movt	lr, #:upper16:s_RegPhyBaseAddr	@ tmp199,
	ldr	ip, [lr, #0]	@ s_RegPhyBaseAddr,
	add	r0, ip, #12	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
.L244:
#APP
@ 2825 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV300R001/vdm_hal.c" 1
	dsb
@ 0 "" 2
	cmp	r4, #0	@ VdhId,
	bgt	.L251	@,
.L245:
	movw	r1, #1208	@ tmp212,
	movw	r2, #:lower16:g_HwMem	@ tmp210,
	mul	r0, r1, r4	@ tmp211, tmp212, VdhId
	movt	r2, #:upper16:g_HwMem	@ tmp210,
	rsb	r4, r4, r6	@ tmp228, VdhId, tmp234
	mov	ip, #0	@ tmp214,
	add	r4, r4, #1	@ tmp229, tmp228,
	movw	r3, #:lower16:g_LowDelaySeqIndex	@ tmp230,
	movt	r3, #:upper16:g_LowDelaySeqIndex	@ tmp230,
	mov	r1, #4	@,
	ldr	r6, [r0, r2]	@ D.53547, <variable>.pVdmRegVirAddr
	str	ip, [r6, #0]	@ tmp214,* D.53547
	mov	r6, #1	@ tmp219,
	ldr	lr, [r0, r2]	@ temp.1121, <variable>.pVdmRegVirAddr
	str	r6, [lr, #0]	@ tmp219,* temp.1121
	ldr	lr, [r0, r2]	@ temp.1123, <variable>.pVdmRegVirAddr
	str	ip, [lr, #0]	@ tmp214,* temp.1123
	ldr	r0, [r5, r4, asl #3]	@ D.53556, <variable>.ChanId
	ldr	r2, [r3, r0, asl #2]	@, g_LowDelaySeqIndex
	bl	VDEC_Lowdelay_Event_Time	@
.L247:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L235:
	bfc	r2, #8, #2	@ u32TmpValue,,
	b	.L236	@
.L237:
	ldr	r2, [r7, #0]	@ g_pstRegCrg.1116, g_pstRegCrg
	ldr	r0, [r2, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	bfc	r0, #12, #5	@ u32TmpValue,,
	bfc	r0, #17, #1	@ u32TmpValue,,
	str	r0, [r2, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	ldr	r3, [r7, #0]	@ g_pstRegCrg.1118, g_pstRegCrg
	ldr	r1, [r3, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	orr	lr, r1, #131072	@ u32TmpValue, u32TmpValue,
	str	lr, [r3, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	ldr	r3, [sl, r9, asl #2]	@ prephitmp.1104, s_pstVfmwChan
	ldr	r1, [r3, #552]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r1, #16	@ <variable>.eVidStd,
	movne	r1, #3	@ ClockGatingData,
	moveq	r1, #0	@ ClockGatingData,
	cmp	r4, #0	@ VdhId,
	beq	.L242	@,
.L250:
	cmp	r4, #1	@ VdhId,
	beq	.L252	@,
	movw	r1, #:lower16:.LC14	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
#APP
@ 2825 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV300R001/vdm_hal.c" 1
	dsb
@ 0 "" 2
	cmp	r4, #0	@ VdhId,
	ble	.L245	@,
.L251:
	mov	ip, #0	@ tmp209,
	mov	r3, r4	@, VdhId
	mov	r0, ip	@, tmp209
	movw	r1, #:lower16:.LC15	@,
	ldr	r2, .L253	@,
	movt	r1, #:upper16:.LC15	@,
	str	ip, [sp, #0]	@ tmp209,
	bl	dprint_vfmw	@
	b	.L247	@
.L252:
	movw	r3, #:lower16:s_RegPhyBaseAddr_1	@ tmp202,
	movt	r3, #:upper16:s_RegPhyBaseAddr_1	@ tmp202,
	ldr	r2, [r3, #0]	@ s_RegPhyBaseAddr_1,
	add	r0, r2, #12	@, s_RegPhyBaseAddr_1,
	bl	MEM_WritePhyWord	@
	b	.L244	@
.L249:
	mov	r0, r4	@, VdhId
	bl	VDMHAL_V300R001_SetVdhClkSkip	@
	ldr	r3, [sl, r9, asl #2]	@ prephitmp.1104, s_pstVfmwChan
	b	.L238	@
.L254:
	.align	2
.L253:
	.word	.LANCHOR0+88
	.fnend
	.size	VDMHAL_V300R001_StartHwDecode, .-VDMHAL_V300R001_StartHwDecode
	.align	2
	.global	VDMHAL_V300R001_StartHwRepair
	.type	VDMHAL_V300R001_StartHwRepair, %function
VDMHAL_V300R001_StartHwRepair:
	.fnstart
.LFB1551:
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
	subs	r4, r0, #0	@ VdhId, VdhId
	ble	.L261	@,
	mov	r3, r4	@, VdhId
	ldr	r2, .L263	@,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	mov	r5, #1	@ tmp163,
	str	r5, [sp, #0]	@ tmp163,
	bl	dprint_vfmw	@
	movw	r0, #:lower16:-121389052	@,
	movt	r0, #:upper16:-121389052	@,
	bl	MEM_ReadPhyWord	@
	movw	r2, #:lower16:s_RegPhyBaseAddr	@ tmp165,
	movt	r2, #:upper16:s_RegPhyBaseAddr	@ tmp165,
	ldr	r3, [r2, #0]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	uxth	r1, r0	@ tmp168,
	add	r0, r3, #4	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r2, .L263	@,
	mov	r3, r4	@, VdhId
	movw	r1, #:lower16:.LC16	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC16	@,
	str	r5, [sp, #0]	@ tmp163,
	bl	dprint_vfmw	@
#APP
@ 2579 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV300R001/vdm_hal.c" 1
	dsb
@ 0 "" 2
	cmp	r4, #0	@ VdhId,
	ble	.L262	@,
.L258:
	ldr	r2, .L263	@,
	mov	r3, r4	@, VdhId
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	mov	r5, #1	@ tmp191,
	str	r5, [sp, #0]	@ tmp191,
	bl	dprint_vfmw	@
	ldr	r2, .L263	@,
	mov	r3, r4	@, VdhId
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	str	r5, [sp, #0]	@ tmp191,
	bl	dprint_vfmw	@
	movw	r1, #:lower16:.LC16	@,
	mov	r3, r4	@, VdhId
	movt	r1, #:upper16:.LC16	@,
	mov	r0, #32	@,
	ldr	r2, .L263	@,
	str	r5, [sp, #0]	@ tmp191,
	bl	dprint_vfmw	@
.L260:
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L261:
	movw	r6, #1208	@ tmp146,
	movw	r5, #:lower16:g_HwMem	@ tmp144,
	mul	r6, r6, r4	@ tmp145, tmp146, VdhId
	movt	r5, #:upper16:g_HwMem	@ tmp144,
	movw	r0, #:lower16:-121389052	@,
	movt	r0, #:upper16:-121389052	@,
	ldr	ip, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r7, [ip, #8]	@ dat,
	bl	MEM_ReadPhyWord	@
	movw	r1, #:lower16:s_RegPhyBaseAddr	@ tmp150,
	movt	r1, #:upper16:s_RegPhyBaseAddr	@ tmp150,
	orr	r7, r7, #67108864	@ dat.1147, dat,
	ldr	r2, [r1, #0]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	uxth	r1, r0	@ tmp153,
	add	r0, r2, #4	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r3, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r7, [r3, #8]	@ dat.1147,
#APP
@ 2579 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV300R001/vdm_hal.c" 1
	dsb
@ 0 "" 2
	cmp	r4, #0	@ VdhId,
	bgt	.L258	@,
.L262:
	movw	lr, #1208	@ tmp176,
	movw	ip, #:lower16:g_HwMem	@ tmp174,
	mul	r4, lr, r4	@ tmp175, tmp176, VdhId
	movt	ip, #:upper16:g_HwMem	@ tmp174,
	mov	lr, #0	@ tmp178,
	mov	r3, #1	@ tmp183,
	ldr	r2, [r4, ip]	@ D.53407, <variable>.pVdmRegVirAddr
	str	lr, [r2, #0]	@ tmp178,* D.53407
	ldr	r1, [r4, ip]	@ temp.1156, <variable>.pVdmRegVirAddr
	str	r3, [r1, #0]	@ tmp183,* temp.1156
	ldr	r0, [r4, ip]	@ temp.1158, <variable>.pVdmRegVirAddr
	str	lr, [r0, #0]	@ tmp178,* temp.1158
	b	.L260	@
.L264:
	.align	2
.L263:
	.word	.LANCHOR0+120
	.fnend
	.size	VDMHAL_V300R001_StartHwRepair, .-VDMHAL_V300R001_StartHwRepair
	.align	2
	.global	VDMHAL_V300R001_CfgRpReg
	.type	VDMHAL_V300R001_CfgRpReg, %function
VDMHAL_V300R001_CfgRpReg:
	.fnstart
.LFB1548:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #28
	sub	sp, sp, #28	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r3, #1	@ VdhId,
	mov	ip, #0	@ tmp152,
	str	ip, [fp, #-24]	@ tmp152, D32
	bls	.L273	@,
	mov	r0, ip	@, tmp152
	movw	r1, #:lower16:.LC17	@,
	movt	r1, #:upper16:.LC17	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.53125,
.L268:
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L273:
	beq	.L274	@,
	ldr	r3, [r1, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L275	@,
.L270:
	movw	r3, #:lower16:g_HwMem	@ tmp166,
	movt	r3, #:upper16:g_HwMem	@ tmp166,
	ldr	r2, [r1, #40]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	movw	r1, #:lower16:536920579	@ tmp172,
	ldr	r0, [r3, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	movt	r1, #:upper16:536920579	@ tmp172,
	bic	r4, r2, #15	@ tmp165, <variable>.MsgSlotAddr,
	movw	r2, #:lower16:3148803	@ tmp176,
	movt	r2, #:upper16:3148803	@ tmp176,
	str	r4, [r0, #16]	@ tmp165,
	mov	r4, #7	@ tmp168,
	ldr	ip, [r3, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, #0	@ D.53125,
	str	r4, [ip, #36]	@ tmp168,
	ldr	ip, [r3, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r1, [ip, #12]	@ tmp172,
	ldr	r1, [r3, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [r1, #60]	@ tmp176,
	ldr	ip, [r3, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [ip, #64]	@ tmp176,
	ldr	r1, [r3, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [r1, #68]	@ tmp176,
	ldr	ip, [r3, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [ip, #72]	@ tmp176,
	ldr	r1, [r3, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [r1, #76]	@ tmp176,
	ldr	ip, [r3, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [ip, #80]	@ tmp176,
	ldr	r1, [r3, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [r1, #84]	@ tmp176,
	b	.L268	@
.L275:
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	str	r1, [fp, #-32]	@,
	bl	MEM_Phy2Vir	@
	ldr	r1, [fp, #-32]	@,
	subs	r2, r0, #0	@ D.53132,
	strne	r2, [r1, #0]	@ D.53132, <variable>.pVdmRegVirAddr
	bne	.L270	@,
	movw	r1, #:lower16:.LC18	@,
	movt	r1, #:upper16:.LC18	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.53125,
	b	.L268	@
.L274:
	mov	r0, ip	@, tmp152
	movw	r1, #:lower16:.LC15	@,
	ldr	r2, .L276	@,
	movt	r1, #:upper16:.LC15	@,
	str	ip, [sp, #0]	@ tmp152,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.53125,
	b	.L268	@
.L277:
	.align	2
.L276:
	.word	.LANCHOR0+152
	.fnend
	.size	VDMHAL_V300R001_CfgRpReg, .-VDMHAL_V300R001_CfgRpReg
	.global	__aeabi_uidiv
	.global	__aeabi_idivmod
	.align	2
	.global	VDMHAL_V300R001_CfgRpMsg
	.type	VDMHAL_V300R001_CfgRpMsg, %function
VDMHAL_V300R001_CfgRpMsg:
	.fnstart
.LFB1547:
	@ args = 0, pretend = 0, frame = 40
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
	mov	r9, r0	@ pRepairParam, pRepairParam
	ldr	r0, [r1, #40]	@, <variable>.MsgSlotAddr
	bl	MEM_Phy2Vir	@
	subs	r1, r0, #0	@,
	str	r1, [fp, #-68]	@, %sfp
	beq	.L320	@,
	ldr	r2, [r9, #840]	@ D.52946, <variable>.ValidGroupNum
	sub	r3, r2, #1	@ tmp238, D.52946,
	cmp	r3, #199	@ tmp238,
	bhi	.L321	@,
	ldr	r1, [r9, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	ldr	r2, [r9, #864]	@ D.52954, <variable>.CtbSize
	ldr	r0, [r9, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	mov	r3, r1, asl r2	@ pic_width, <variable>.ImageWidth,
	ldr	lr, [r9, #0]	@ <variable>.VidStd, <variable>.VidStd
	add	ip, r3, #255	@ tmp242, pic_width,
	cmp	lr, #16	@ <variable>.VidStd,
	bic	r1, ip, #255	@ SlotWidth, tmp242,
	mov	r2, r0, asl r2	@ pic_height, <variable>.ImageHeight,
	moveq	r3, #0	@ prephitmp.1236,
	muleq	r2, r2, r1	@ ChromaOffset, pic_height, SlotWidth
	beq	.L283	@,
	adds	ip, r2, #31	@ tmp244, pic_height,
	addmi	r2, r2, #62	@, tmp245, pic_height,
	movpl	r2, ip	@, tmp245, tmp244
	adds	r0, r3, #127	@ tmp249, pic_width,
	addmi	lr, r3, #254	@, tmp251, pic_width,
	movpl	lr, r0	@, tmp251, tmp249
	mov	r2, r2, asr #5	@ tmp247, tmp245,
	mov	r3, lr, asr #7	@ tmp253, tmp251,
	adds	ip, r3, #15	@ tmp254, tmp253,
	mov	r0, r2, asl #9	@ tmp248, tmp247,
	addmi	lr, r3, #30	@, tmp256, tmp253,
	movpl	lr, ip	@, tmp256, tmp254
	mul	r2, r2, r1	@ tmp259, tmp247, SlotWidth
	mov	r3, lr, asr #4	@ tmp258, tmp256,
	mul	r3, r3, r0	@ HeadInfOffset, tmp258, tmp248
	add	r2, r3, r2, asl #5	@, ChromaOffset, HeadInfOffset, tmp259,
.L283:
	ldr	r0, [r9, #16]	@ <variable>.RefImageAddr, <variable>.RefImageAddr
	mov	ip, r1, asl #4	@ tmp277, SlotWidth,
	ldr	lr, [fp, #-68]	@, %sfp
	str	r0, [lr, #0]	@ <variable>.RefImageAddr,
	ldr	r0, [r9, #16]	@ <variable>.RefImageAddr, <variable>.RefImageAddr
	add	r0, r2, r0	@ tmp267, ChromaOffset, <variable>.RefImageAddr
	str	r0, [lr, #4]	@ tmp267,
	ldr	r0, [r9, #4]	@ <variable>.ImageAddr, <variable>.ImageAddr
	str	r0, [lr, #8]	@ <variable>.ImageAddr,
	ldr	r0, [r9, #4]	@ <variable>.ImageAddr, <variable>.ImageAddr
	add	r2, r2, r0	@ tmp274, ChromaOffset, <variable>.ImageAddr
	str	r2, [lr, #12]	@ tmp274,
	str	ip, [lr, #16]	@ tmp277,
	str	r3, [lr, #20]	@ prephitmp.1236,
	ldr	r1, [r9, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	ldr	ip, [r9, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	sub	r0, r1, #1	@ tmp283, <variable>.ImageWidth,
	sub	r2, ip, #1	@ tmp287, <variable>.ImageHeight,
	mov	r3, r0, asl #23	@ tmp288, tmp283,
	mov	r1, r3, lsr #23	@ tmp288, tmp288,
	bfi	r1, r2, #16, #9	@ tmp288, tmp287,,
	str	r1, [fp, #-48]	@ tmp288,
	str	r1, [lr, #24]	@ tmp288,
	ldr	r3, [r9, #864]	@ temp.1290, <variable>.CtbSize
	cmp	r3, #6	@ temp.1290,
	moveq	r4, #2	@ align_mb,
	beq	.L285	@,
	cmp	r3, #5	@ temp.1290,
	moveq	r4, #4	@ align_mb,
	beq	.L285	@,
	cmp	r3, #4	@ temp.1290,
	moveq	r4, #8	@ align_mb,
	beq	.L285	@,
	movw	r1, #:lower16:.LC21	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC21	@,
	mov	r4, #1	@ align_mb,
	bl	dprint_vfmw	@
.L285:
	ldr	r3, [r9, #856]	@ prephitmp.1240, <variable>.FullRepair
	cmp	r3, #0	@ prephitmp.1240,
	movne	r5, #0	@ actual_repairTime,
	bne	.L289	@,
	ldr	lr, [r9, #840]	@, <variable>.ValidGroupNum
	cmp	lr, #0	@,
	str	lr, [fp, #-56]	@, %sfp
	movle	r5, r3	@ actual_repairTime, prephitmp.1240
	ble	.L291	@,
	sub	r5, r4, #1	@, align_mb,
	str	r3, [fp, #-60]	@ prephitmp.1240, %sfp
	str	r5, [fp, #-76]	@, %sfp
	mov	r6, r3	@ i, prephitmp.1240
	b	.L305	@
.L323:
	add	r3, r9, r6, asl #2	@, tmp310, pRepairParam, i,
	mov	r1, r4	@, align_mb
	ldrsh	lr, [r3, #38]	@ <variable>.EndMbn, <variable>.EndMbn
	sub	r0, lr, #1	@ tmp313, <variable>.EndMbn,
	add	r0, r0, r4	@, tmp313, align_mb
	bl	__aeabi_uidiv	@
	mul	r1, r4, r0	@ tmp319, align_mb,
	cmp	r5, r1	@ cur_EndMb, tmp319
	ldrle	r5, [fp, #-60]	@ actual_repairTime, %sfp
	bgt	.L322	@,
	ldr	r0, [fp, #-56]	@, %sfp
	add	r6, r6, #1	@ i, i,
	cmp	r0, r6	@, i
	ble	.L304	@,
.L325:
	str	r5, [fp, #-60]	@ actual_repairTime, %sfp
.L305:
	add	sl, r6, #10	@ tmp426, i,
	mov	r1, r4	@, align_mb
	mov	r2, sl, asl #2	@ tmp291, tmp426,
	add	sl, r2, r9	@ tmp292, tmp291, pRepairParam
	ldrh	r8, [r2, r9]	@, <variable>.StartMbn
	str	r8, [fp, #-72]	@, %sfp
	ldrh	r8, [sl, #2]	@ prephitmp.1249, <variable>.EndMbn
	sxth	ip, r8	@, prephitmp.1249
	str	ip, [fp, #-64]	@, %sfp
	sub	r3, ip, #1	@ tmp299,,
	add	r0, r3, r4	@, tmp299, align_mb
	bl	__aeabi_uidiv	@
	cmp	r6, #0	@ i,
	mul	r5, r4, r0	@ cur_EndMb, align_mb,
	bne	.L323	@,
.L296:
	ldr	r3, [r9, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	ldr	sl, [r9, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	ldr	r0, [fp, #-60]	@, %sfp
	mul	sl, sl, r3	@ D.53063, <variable>.ImageWidth, <variable>.ImageHeight
	cmp	r5, sl	@ cur_EndMb, D.53063
	subge	sl, sl, #1	@ end_Mb, D.53063,
	movlt	sl, r5	@ end_Mb, cur_EndMb
	add	r5, r0, #1	@ actual_repairTime,,
	cmp	r5, #252	@ actual_repairTime,
	bgt	.L324	@,
	ldr	lr, [fp, #-72]	@, %sfp
	mov	r1, r4	@, align_mb
	mov	r8, #0	@,
	add	r6, r6, #1	@ i, i,
	sxth	r0, lr	@,
	bl	__aeabi_uidiv	@
	ldr	r1, [r9, #24]	@, <variable>.ImageWidth
	str	r8, [fp, #-48]	@, D32
	mul	r8, r4, r0	@ cur_StartMb, align_mb,
	mov	r0, r8	@, cur_StartMb
	bl	__aeabi_idivmod	@
	ldr	r7, [fp, #-48]	@ tmp371,
	mov	r0, r8	@, cur_StartMb
	bfi	r7, r1, #0, #9	@ tmp371,,,
	ldr	r1, [r9, #24]	@, <variable>.ImageWidth
	bl	__aeabi_idiv	@
	ldr	r3, [fp, #-60]	@, %sfp
	ldr	ip, [fp, #-68]	@, %sfp
	add	r2, r3, #4	@ tmp377,,
	bfi	r7, r0, #16, #9	@ tmp376,,,
	mov	r0, sl	@, end_Mb
	str	r7, [ip, r2, asl #3]	@ D32.1310,
	mov	r7, #0	@,
	ldr	r1, [r9, #24]	@, <variable>.ImageWidth
	str	r7, [fp, #-48]	@, D32
	bl	__aeabi_idivmod	@
	ldr	r7, [fp, #-48]	@ tmp386,
	mov	r0, sl	@, end_Mb
	bfi	r7, r1, #0, #9	@ tmp386,,,
	ldr	r1, [r9, #24]	@, <variable>.ImageWidth
	bl	__aeabi_idiv	@
	ldr	r1, [fp, #-60]	@, %sfp
	ldr	ip, [fp, #-68]	@, %sfp
	mov	r3, r1, asl #3	@ tmp392,,
	add	r2, r3, #36	@ tmp393, tmp392,
	bfi	r7, r0, #16, #9	@ tmp391,,,
	str	r7, [fp, #-48]	@ tmp391,
	str	r7, [ip, r2]	@ D32.1314,
	ldr	r1, [r9, #840]	@, <variable>.ValidGroupNum
	str	r1, [fp, #-56]	@, %sfp
	ldr	r0, [fp, #-56]	@, %sfp
	cmp	r0, r6	@, i
	bgt	.L325	@,
.L304:
	ldr	r3, [r9, #856]	@ prephitmp.1240, <variable>.FullRepair
.L289:
	cmp	r3, #1	@ prephitmp.1240,
	beq	.L303	@,
.L291:
	sub	r5, r5, #1	@ tmp395, actual_repairTime,
	uxth	r5, r5	@ prephitmp.1238, tmp395
.L306:
	ldr	lr, [r9, #848]	@ <variable>.Compress_en, <variable>.Compress_en
	mov	r0, #0	@ D.52945,
	ldrb	r3, [fp, #-46]	@ zero_extendqisi2	@,
	ldr	r2, [r9, #852]	@ <variable>.Pic_type, <variable>.Pic_type
	bfi	r3, lr, #0, #1	@ tmp410, <variable>.Compress_en,,
	strb	r3, [fp, #-46]	@ tmp410,
	ldr	ip, [r9, #864]	@ <variable>.CtbSize, <variable>.CtbSize
	ldrb	r1, [fp, #-45]	@ zero_extendqisi2	@,
	uxtb	lr, r3	@ tmp413, tmp410
	bfi	lr, r2, #4, #2	@ tmp413, <variable>.Pic_type,,
	sub	ip, ip, #4	@ tmp420, <variable>.CtbSize,
	strh	r5, [fp, #-48]	@ movhi	@ prephitmp.1238, <variable>.total_grp_num_minus1
	bfi	lr, r2, #6, #2	@ tmp416, <variable>.Pic_type,,
	bfi	r1, ip, #0, #2	@ tmp421, tmp420,,
	strb	lr, [fp, #-46]	@ tmp416,
	strb	r1, [fp, #-45]	@ tmp421,
	ldr	r3, [fp, #-48]	@ D32.1334, D32
	ldr	lr, [fp, #-68]	@, %sfp
	str	r3, [lr, #28]	@ D32.1334,
.L280:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L322:
	ldr	ip, [fp, #-56]	@, %sfp
	mvn	r5, r6	@ tmp434, i
	add	r7, r5, ip	@ tmp433, tmp434,
	tst	r7, #1	@ tmp433,
	mov	r7, sl	@ ivtmp.1267, tmp292
	bne	.L326	@,
	str	r9, [fp, #-64]	@ pRepairParam, %sfp
	ldr	r9, [fp, #-76]	@ tmp431, %sfp
	b	.L297	@
.L298:
	bl	__aeabi_uidiv	@
	mov	r1, r4	@, align_mb
	mul	r5, r4, r0	@ temp.1296, align_mb,
	ldrsh	r0, [r7, #4]	@, <variable>.StartMbn
	bl	__aeabi_uidiv	@
	mul	r1, r4, r0	@ D.53059, align_mb,
	cmp	r5, r1	@ temp.1296, D.53059
	add	r3, r1, #1	@ tmp347, D.53059,
	bhi	.L299	@,
	cmp	r5, r3	@ temp.1296, tmp347
	mov	r1, r4	@, align_mb
	beq	.L299	@,
	ldrsh	lr, [r7, #-2]	@ <variable>.EndMbn, <variable>.EndMbn
	sub	r2, lr, #1	@ tmp349, <variable>.EndMbn,
	add	r0, r2, r4	@, tmp349, align_mb
	bl	__aeabi_uidiv	@
	mul	ip, r4, r0	@ tmp355, align_mb,
	cmp	r5, ip	@ temp.1296, tmp355
	bhi	.L319	@,
.L299:
	ldrsh	r2, [r7, #6]	@ prephitmp.1249, <variable>.EndMbn
	mov	r1, r4	@, align_mb
	mov	r6, sl	@ i, i.1291
	add	r0, r9, r2	@, tmp431, prephitmp.1249
	bl	__aeabi_uidiv	@
	mov	r1, r4	@, align_mb
	mul	r5, r4, r0	@ temp.1296, align_mb,
	ldrsh	r0, [r8, #4]	@, <variable>.StartMbn
	bl	__aeabi_uidiv	@
	mul	r0, r4, r0	@ D.53059, align_mb,
	cmp	r5, r0	@ temp.1296, D.53059
	bhi	.L313	@,
	add	r2, r0, #1	@ tmp462, D.53059,
	mov	r1, r4	@, align_mb
	cmp	r5, r2	@ temp.1296, tmp462
	beq	.L313	@,
	ldrsh	ip, [r8, #-2]	@ <variable>.EndMbn, <variable>.EndMbn
	sub	r0, ip, #1	@ tmp464, <variable>.EndMbn,
	add	r0, r0, r4	@, tmp464, align_mb
	bl	__aeabi_uidiv	@
	mul	r1, r4, r0	@ tmp467, align_mb,
	cmp	r5, r1	@ temp.1296, tmp467
	bhi	.L319	@,
.L313:
	add	r7, r8, #4	@ ivtmp.1267, tmp436,
	ldrh	r8, [r8, #6]	@ prephitmp.1249, <variable>.EndMbn
	add	r6, sl, #1	@ i, i.1291,
.L297:
	ldr	lr, [fp, #-56]	@, %sfp
	add	sl, r6, #1	@ i.1291, i,
	sxtah	r0, r9, r8	@, tmp431, prephitmp.1249
	mov	r1, r4	@, align_mb
	cmp	sl, lr	@ i.1291,
	add	r8, r7, #4	@ tmp436, ivtmp.1267,
	blt	.L298	@,
	ldr	r9, [fp, #-64]	@ pRepairParam, %sfp
.L316:
	add	r3, r9, r6, asl #2	@, tmp330, pRepairParam, i,
	mov	r1, r4	@, align_mb
	ldrsh	r0, [r3, #42]	@ pretmp.1280, <variable>.EndMbn
	sub	sl, r0, #1	@ pretmp.1286, pretmp.1280,
	add	r0, sl, r4	@, pretmp.1286, align_mb
	bl	__aeabi_uidiv	@
	mul	r5, r4, r0	@ cur_EndMb, align_mb,
	b	.L296	@
.L326:
	ldr	r5, [fp, #-56]	@, %sfp
	add	r3, r6, #1	@ i.1291, i,
	cmp	r3, r5	@ i.1291,
	bge	.L316	@,
	ldr	r2, [fp, #-64]	@, %sfp
	ldr	r1, [fp, #-76]	@, %sfp
	str	r3, [fp, #-80]	@,
	add	r0, r1, r2	@,,
	mov	r1, r4	@, align_mb
	bl	__aeabi_uidiv	@
	mov	r1, r4	@, align_mb
	mul	r5, r4, r0	@ temp.1296, align_mb,
	ldrsh	r0, [sl, #4]	@, <variable>.StartMbn
	bl	__aeabi_uidiv	@
	ldr	r3, [fp, #-80]	@,
	mul	r0, r4, r0	@ D.53059, align_mb,
	cmp	r5, r0	@ temp.1296, D.53059
	bhi	.L310	@,
	add	r0, r0, #1	@ tmp456, D.53059,
	cmp	r5, r0	@ temp.1296, tmp456
	beq	.L310	@,
	ldrsh	lr, [sl, #-2]	@ <variable>.EndMbn, <variable>.EndMbn
	mov	r1, r4	@, align_mb
	sub	r3, lr, #1	@ tmp458, <variable>.EndMbn,
	add	r0, r3, r4	@, tmp458, align_mb
	bl	__aeabi_uidiv	@
	ldr	r3, [fp, #-80]	@,
	mul	ip, r4, r0	@ tmp461, align_mb,
	cmp	r5, ip	@ temp.1296, tmp461
	bhi	.L296	@,
.L310:
	ldrh	r8, [sl, #6]	@ prephitmp.1249, <variable>.EndMbn
	add	r7, r7, #4	@ ivtmp.1267, ivtmp.1267,
	str	r9, [fp, #-64]	@ pRepairParam, %sfp
	mov	r6, r3	@ i, i.1291
	ldr	r9, [fp, #-76]	@ tmp431, %sfp
	b	.L297	@
.L319:
	ldr	r9, [fp, #-64]	@ pRepairParam, %sfp
	b	.L296	@
.L324:
	mov	r5, #1	@ tmp358,
	str	r5, [r9, #856]	@ tmp358, <variable>.FullRepair
.L303:
	mov	ip, #1	@ tmp396,
	str	ip, [r9, #840]	@ tmp396, <variable>.ValidGroupNum
	ldr	ip, [fp, #-68]	@, %sfp
	mov	r5, #0	@ tmp397,
	mov	r2, r5	@ tmp399, tmp397
	bfi	r2, r5, #16, #9	@ tmp399, tmp397,,
	str	r2, [ip, #32]	@ tmp399,
	ldr	r1, [r9, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	ldr	r0, [r9, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	sub	lr, r1, #1	@ tmp403, <variable>.ImageWidth,
	sub	r2, r0, #1	@ tmp407, <variable>.ImageHeight,
	mov	r3, lr, asl #23	@ tmp408, tmp403,
	mov	r1, r3, lsr #23	@ tmp408, tmp408,
	bfi	r1, r2, #16, #9	@ tmp408, tmp407,,
	str	r1, [fp, #-48]	@ tmp408,
	str	r1, [ip, #36]	@ tmp408,
	b	.L306	@
.L321:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.52945,
	b	.L280	@
.L320:
	movw	r1, #:lower16:.LC2	@,
	ldr	r2, .L327	@,
	movt	r1, #:upper16:.LC2	@,
	movw	r3, #:lower16:.LC19	@,
	movt	r3, #:upper16:.LC19	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.52945,
	b	.L280	@
.L328:
	.align	2
.L327:
	.word	.LANCHOR0+180
	.fnend
	.size	VDMHAL_V300R001_CfgRpMsg, .-VDMHAL_V300R001_CfgRpMsg
	.align	2
	.global	VDMHAL_V300R001_PrepareRepair
	.type	VDMHAL_V300R001_PrepareRepair, %function
VDMHAL_V300R001_PrepareRepair:
	.fnstart
.LFB1550:
	@ args = 0, pretend = 0, frame = 8
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
	cmp	r3, #1	@ VdhId,
	mov	r4, r0	@ VidStd, VidStd
	mov	r5, r1	@ pDecParam, pDecParam
	bls	.L345	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.53337,
.L332:
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L345:
	beq	.L347	@,
	movw	r6, #:lower16:g_HwMem	@ tmp151,
	movt	r6, #:upper16:g_HwMem	@ tmp151,
	ldr	r3, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L348	@,
.L334:
	cmp	r2, #0	@ RepairTime,
	movw	r3, #:lower16:g_RepairParam	@ g_RepairParam.537,
	movt	r3, #:upper16:g_RepairParam	@ g_RepairParam.537,
	bne	.L336	@,
	ldr	r0, [r3, #840]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	cmp	r0, #0	@ <variable>.ValidGroupNum,
	ble	.L337	@,
	cmp	r4, #6	@ VidStd,
	bne	.L338	@,
	ldrb	r2, [r5, #8]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	cmp	r2, #1	@ <variable>.PicStruct,
	movne	r2, #0	@, tmp176,
	str	r2, [r3, #1724]	@ tmp176, <variable>.Pic_type
.L338:
	mov	r2, r5	@, pDecParam
	mov	r0, r4	@, VidStd
	mov	r3, #0	@,
	movw	r1, #:lower16:g_HwMem	@,
	movt	r1, #:upper16:g_HwMem	@,
	bl	VDMHAL_V300R001_CfgRpReg	@
	movw	r0, #:lower16:g_RepairParam	@,
	movt	r0, #:upper16:g_RepairParam	@,
.L346:
	movw	r1, #:lower16:g_HwMem	@,
	mov	r2, #0	@,
	movt	r1, #:upper16:g_HwMem	@,
	bl	VDMHAL_V300R001_CfgRpMsg	@
	mov	r0, #0	@ D.53337,
	b	.L332	@
.L336:
	cmp	r2, #1	@ RepairTime,
	movne	r0, #0	@ D.53337,
	bne	.L332	@,
	cmp	r4, #6	@ VidStd,
	bne	.L341	@,
	ldrb	lr, [r5, #8]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	cmp	lr, #1	@ <variable>.PicStruct,
	bne	.L341	@,
	ldr	ip, [r3, #1712]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	cmp	ip, #0	@ <variable>.ValidGroupNum,
	ble	.L341	@,
	movw	r0, #:lower16:g_vdm_hal_fun_ptr	@ tmp169,
	movt	r0, #:upper16:g_vdm_hal_fun_ptr	@ tmp169,
	mov	r1, #2	@ tmp166,
	str	r1, [r3, #1724]	@ tmp166, <variable>.Pic_type
	ldr	r3, [r0, #56]	@ D.53376, g_vdm_hal_fun_ptr.pfun_VDMHAL_ResetVdm
	cmp	r3, #0	@ D.53376,
	beq	.L342	@,
	mov	r0, #0	@,
	blx	r3	@ D.53376
.L343:
	mov	r2, r5	@, pDecParam
	mov	r3, #0	@,
	mov	r0, #6	@,
	movw	r1, #:lower16:g_HwMem	@,
	movt	r1, #:upper16:g_HwMem	@,
	bl	VDMHAL_V300R001_CfgRpReg	@
	ldr	r0, .L349	@,
	b	.L346	@
.L348:
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	str	r2, [fp, #-32]	@,
	bl	MEM_Phy2Vir	@
	ldr	r2, [fp, #-32]	@,
	subs	r1, r0, #0	@ D.53344,
	strne	r1, [r6, #0]	@ D.53344, <variable>.pVdmRegVirAddr
	bne	.L334	@,
	movw	r1, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC23	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.53337,
	b	.L332	@
.L347:
	mov	ip, #0	@ tmp150,
	movw	r1, #:lower16:.LC15	@,
	mov	r0, ip	@, tmp150
	movt	r1, #:upper16:.LC15	@,
	ldr	r2, .L349+4	@,
	str	ip, [sp, #0]	@ tmp150,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.53337,
	b	.L332	@
.L341:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC26	@,
	movt	r1, #:upper16:.LC26	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.53337,
	b	.L332	@
.L342:
	mov	r0, r3	@, D.53376
	movw	r1, #:lower16:.LC25	@,
	movw	r2, #2539	@,
	movt	r1, #:upper16:.LC25	@,
	bl	dprint_vfmw	@
	b	.L343	@
.L337:
	mov	r0, r2	@, RepairTime
	movw	r1, #:lower16:.LC24	@,
	movt	r1, #:upper16:.LC24	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.53337,
	b	.L332	@
.L350:
	.align	2
.L349:
	.word	g_RepairParam+872
	.word	.LANCHOR0+208
	.fnend
	.size	VDMHAL_V300R001_PrepareRepair, .-VDMHAL_V300R001_PrepareRepair
	.align	2
	.global	VDMHAL_V300R001_BackupInfo
	.type	VDMHAL_V300R001_BackupInfo, %function
VDMHAL_V300R001_BackupInfo:
	.fnstart
.LFB1544:
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
	subs	r2, r0, #0	@ pBackUpInfo, pBackUpInfo
	beq	.L373	@,
	ldr	r3, [r2, #4]	@ VdhId, <variable>.VdhId
	ldr	r8, [r2, #0]	@ pMb0QpInCurrPic, <variable>.pMb0QpInCurrPic
	cmp	r3, #1	@ VdhId,
	bls	.L372	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC28	@,
	movt	r1, #:upper16:.LC28	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.52716,
.L353:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L372:
	cmp	r3, #0	@ VdhId,
	bne	.L374	@,
	movw	r3, #:lower16:g_DSPState	@ tmp277,
	movt	r3, #:upper16:g_DSPState	@ tmp277,
	ldr	r2, [r3, #0]	@ g_DSPState, g_DSPState
	cmp	r2, #1	@ g_DSPState,
	beq	.L357	@,
	ldr	r0, [r3, #4]	@ g_DSPState, g_DSPState
	cmp	r0, #1	@ g_DSPState,
	beq	.L357	@,
	ldr	r1, [r3, #8]	@ g_DSPState, g_DSPState
	cmp	r1, #1	@ g_DSPState,
	beq	.L357	@,
	ldr	r5, [r3, #12]	@ g_DSPState, g_DSPState
	cmp	r5, #1	@ g_DSPState,
	beq	.L357	@,
	ldr	r6, [r3, #16]	@ g_DSPState, g_DSPState
	cmp	r6, #1	@ g_DSPState,
	beq	.L357	@,
	ldr	ip, [r3, #20]	@ g_DSPState, g_DSPState
	cmp	ip, #1	@ g_DSPState,
	beq	.L357	@,
	ldr	r2, [r3, #24]	@ g_DSPState, g_DSPState
	cmp	r2, #1	@ g_DSPState,
	beq	.L357	@,
	ldr	r0, [r3, #28]	@ g_DSPState, g_DSPState
	movw	r3, #:lower16:g_DSPState	@ tmp207,
	movt	r3, #:upper16:g_DSPState	@ tmp207,
	cmp	r0, #1	@ g_DSPState,
	beq	.L357	@,
	ldr	r1, [r3, #32]	@ g_DSPState, g_DSPState
	cmp	r1, #1	@ g_DSPState,
	beq	.L357	@,
	ldr	r5, [r3, #36]	@ g_DSPState, g_DSPState
	cmp	r5, #1	@ g_DSPState,
	beq	.L357	@,
	ldr	r6, [r3, #40]	@ g_DSPState, g_DSPState
	cmp	r6, #1	@ g_DSPState,
	beq	.L357	@,
	ldr	ip, [r3, #44]	@ g_DSPState, g_DSPState
	cmp	ip, #1	@ g_DSPState,
	beq	.L357	@,
	ldr	r2, [r3, #48]	@ g_DSPState, g_DSPState
	cmp	r2, #1	@ g_DSPState,
	beq	.L357	@,
	ldr	r0, [r3, #52]	@ g_DSPState, g_DSPState
	cmp	r0, #1	@ g_DSPState,
	beq	.L357	@,
	ldr	r1, [r3, #56]	@ g_DSPState, g_DSPState
	cmp	r1, #1	@ g_DSPState,
	beq	.L357	@,
	ldr	r5, [r3, #60]	@ g_DSPState, g_DSPState
	cmp	r5, #1	@ g_DSPState,
	movne	r6, #0	@, LowdlyFlag
	moveq	r6, #1	@, LowdlyFlag
.L358:
	movw	r5, #:lower16:g_HwMem	@ tmp278,
	movt	r5, #:upper16:g_HwMem	@ tmp278,
	ldr	r3, [r5, #0]	@ p32, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ p32,
	beq	.L375	@,
.L359:
	ldr	r7, [r3, #12]	@ D.52741,
	movw	r4, #:lower16:g_BackUp	@ tmp276,
	movt	r4, #:upper16:g_BackUp	@ tmp276,
	cmp	r6, #1	@ LowdlyFlag,
	str	r7, [r4, #0]	@ D.52741, <variable>.BasicCfg1
	ldr	r7, [r3, #28]	@ D.52749,
	str	r7, [r4, #4]	@ D.52749, <variable>.VdmState
	beq	.L376	@,
	add	r2, r3, #4096	@ D.52779, D.52738,
	ldr	r0, [r2, #0]	@ D.52780,* D.52779
	str	r0, [r4, #16]	@ D.52780, <variable>.SedSta
	ldr	ip, [r2, #20]	@ D.52787,
	str	ip, [r4, #20]	@ D.52787, <variable>.SedEnd0
	ldr	r5, [r3, #208]	@ D.52794,
	str	r5, [r4, #8]	@ D.52794, <variable>.Mb0QpInCurrPic
	ldr	r1, [r3, #212]	@ D.52801,
	str	r1, [r4, #12]	@ D.52801, <variable>.SwitchRounding
	ldr	r7, [r3, #176]	@ D.52810,
	str	r7, [r4, #24]	@ D.52810, <variable>.DecCyclePerPic
	ldr	r0, [r3, #180]	@ D.52817,
	str	r0, [r4, #28]	@ D.52817, <variable>.RdBdwidthPerPic
	ldr	r2, [r3, #184]	@ D.52824,
	str	r2, [r4, #32]	@ D.52824, <variable>.WrBdWidthPerPic
	ldr	ip, [r3, #188]	@ D.52831,
	str	ip, [r4, #36]	@ D.52831, <variable>.RdReqPerPic
	ldr	r5, [r3, #192]	@ D.52838,
	str	r5, [r4, #40]	@ D.52838, <variable>.WrReqPerPic
.L365:
	add	r3, r3, #33024	@ tmp275, D.52738,
	movw	r2, #:lower16:g_BackUp	@ ivtmp.1412,
	movt	r2, #:upper16:g_BackUp	@ ivtmp.1412,
	add	r7, r2, #128	@ D.54726, ivtmp.1412,
	mov	r0, r3	@ ivtmp.1408, tmp275
.L366:
	mov	r1, r0	@ tmp279, ivtmp.1408
	add	ip, r2, #4	@ tmp280, ivtmp.1412,
	ldr	r5, [r1], #4	@ D.52847,
	str	r5, [r2, #52]	@ D.52847, <variable>.LumaHistorgam
	add	r2, ip, #4	@ ivtmp.1412, tmp280,
	ldr	r5, [r0, #4]	@ D.52847,
	cmp	r2, r7	@ ivtmp.1412, D.54726
	add	r0, r1, #4	@ ivtmp.1408, tmp279,
	str	r5, [ip, #52]	@ D.52847, <variable>.LumaHistorgam
	bne	.L366	@,
	cmp	r6, #0	@ LowdlyFlag,
	ldr	ip, [r4, #0]	@ <variable>.BasicCfg1, <variable>.BasicCfg1
	ldreq	r2, [r3, #128]	@ D.52856,
	streq	r2, [r4, #48]	@ D.52856, <variable>.LumaSumLow
	and	r2, ip, #15	@ tmp266, <variable>.BasicCfg1,
	ldreq	r3, [r3, #132]	@ D.52863,
	streq	r3, [r4, #44]	@ D.52863, <variable>.LumaSumHigh
	cmp	r2, #5	@ tmp266,
	movw	r3, #:lower16:g_BackUp	@ tmp265,
	movt	r3, #:upper16:g_BackUp	@ tmp265,
	moveq	r0, #0	@ D.52716,
	movne	r0, #0	@ D.52716,
	ldreq	r3, [r3, #12]	@ <variable>.SwitchRounding, <variable>.SwitchRounding
	ldrne	r3, [r3, #8]	@ <variable>.Mb0QpInCurrPic, <variable>.Mb0QpInCurrPic
	andeq	r3, r3, #1	@ tmp270, <variable>.SwitchRounding,
	andne	r3, r3, #31	@ tmp273, <variable>.Mb0QpInCurrPic,
	str	r3, [r8, #0]	@ tmp273,* pMb0QpInCurrPic
	b	.L353	@
.L357:
	mov	r6, #1	@ LowdlyFlag,
	b	.L358	@
.L376:
	ldr	r0, [r5, #32]	@, <variable>.MsgSlotAddr
	bl	MEM_Phy2Vir	@
	subs	r2, r0, #0	@ pMsgBase,
	beq	.L377	@,
	bic	r1, r7, #-16777216	@ DecSliceNum, D.52749,
	bic	r7, r1, #16646144	@ DecSliceNum, DecSliceNum,
	sub	r3, r7, #1	@ tmp240, DecSliceNum,
	cmp	r3, #199	@ tmp240,
	subls	r3, r7, #-1073741823	@ tmp241, DecSliceNum,
	movls	r1, r7, asl #4	@ tmp243, DecSliceNum,
	movhi	r3, #0	@ prephitmp.1388,
	subls	r1, r1, #8	@ prephitmp.1390, tmp243,
	movls	r3, r3, asl #4	@ prephitmp.1388, tmp241,
	movhi	r1, #8	@ prephitmp.1390,
	ldr	r0, [r2, r3]	@ tmp245,* prephitmp.1388
	ldr	r3, [r5, #0]	@ D.52738, <variable>.pVdmRegVirAddr
	str	r0, [r4, #16]	@ tmp245, <variable>.SedSta
	ldr	r2, [r2, r1]	@ tmp247,* prephitmp.1390
	str	r2, [r4, #20]	@ tmp247, <variable>.SedEnd0
	ldr	ip, [r3, #208]	@ temp.1419,
	str	ip, [r4, #8]	@ temp.1419, <variable>.Mb0QpInCurrPic
	ldr	lr, [r3, #212]	@ temp.1421,
	str	lr, [r4, #12]	@ temp.1421, <variable>.SwitchRounding
	b	.L365	@
.L375:
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	bl	MEM_Phy2Vir	@
	subs	r3, r0, #0	@ p32,
	strne	r3, [r5, #0]	@ p32, <variable>.pVdmRegVirAddr
	bne	.L359	@,
	movw	r1, #:lower16:.LC18	@,
	movt	r1, #:upper16:.LC18	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.52716,
	b	.L353	@
.L374:
	mov	ip, #0	@ tmp192,
	movw	r1, #:lower16:.LC15	@,
	mov	r0, ip	@, tmp192
	movt	r1, #:upper16:.LC15	@,
	ldr	r2, .L378	@,
	str	ip, [sp, #0]	@ tmp192,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.52716,
	b	.L353	@
.L373:
	movw	r1, #:lower16:.LC2	@,
	ldr	r2, .L378	@,
	movt	r1, #:upper16:.LC2	@,
	movw	r3, #:lower16:.LC27	@,
	movt	r3, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.52716,
	b	.L353	@
.L377:
	movw	r1, #:lower16:.LC2	@,
	ldr	r2, .L378	@,
	movt	r1, #:upper16:.LC2	@,
	movw	r3, #:lower16:.LC29	@,
	movt	r3, #:upper16:.LC29	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.52716,
	b	.L353	@
.L379:
	.align	2
.L378:
	.word	.LANCHOR0+240
	.fnend
	.size	VDMHAL_V300R001_BackupInfo, .-VDMHAL_V300R001_BackupInfo
	.align	2
	.global	VDMHAL_V300R001_CheckReg
	.type	VDMHAL_V300R001_CheckReg, %function
VDMHAL_V300R001_CheckReg:
	.fnstart
.LFB1540:
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
	cmp	r1, #0	@ VdhId
	mov	r6, r0	@ reg_id, reg_id
	bgt	.L395	@,
	bne	.L396	@,
	movw	r5, #:lower16:g_HwMem	@ tmp161,
	movt	r5, #:upper16:g_HwMem	@ tmp161,
	ldr	r3, [r5, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L397	@,
.L385:
	sub	r0, r6, #1	@ tmp154, reg_id,
	cmp	r0, #3	@ tmp154,
	ldrls	pc, [pc, r0, asl #2]	@ tmp154
	b	.L387	@
.L392:
	.word	.L388
	.word	.L389
	.word	.L390
	.word	.L391
.L396:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC31	@,
	ldr	r2, .L398	@,
	movt	r1, #:upper16:.LC31	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ dat,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L387:
	mov	r3, r6	@, reg_id
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC33	@,
	ldr	r2, .L398	@,
	movt	r1, #:upper16:.LC33	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ dat,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L388:
	ldr	r1, [r5, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r2, #28	@ reg_type,
	ldr	r0, [r2, r1]	@ dat,* <variable>.pVdmRegVirAddr
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L389:
	ldr	r1, [r5, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r2, #32	@ reg_type,
	ldr	r0, [r2, r1]	@ dat,* <variable>.pVdmRegVirAddr
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L390:
	ldr	r1, [r5, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r2, #36	@ reg_type,
	ldr	r0, [r2, r1]	@ dat,* <variable>.pVdmRegVirAddr
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L391:
	ldr	r1, [r5, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r2, #40	@ reg_type,
	ldr	r0, [r2, r1]	@ dat,* <variable>.pVdmRegVirAddr
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L397:
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	bl	MEM_Phy2Vir	@
	subs	r4, r0, #0	@ D.52574,
	strne	r4, [r5, #0]	@ D.52574, <variable>.pVdmRegVirAddr
	bne	.L385	@,
	movw	r1, #:lower16:.LC32	@,
	ldr	r2, .L398	@,
	movt	r1, #:upper16:.LC32	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ dat, D.52574
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L395:
	mov	r3, r1	@, VdhId
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC30	@,
	ldr	r2, .L398	@,
	movt	r1, #:upper16:.LC30	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ dat,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L399:
	.align	2
.L398:
	.word	.LANCHOR0+268
	.fnend
	.size	VDMHAL_V300R001_CheckReg, .-VDMHAL_V300R001_CheckReg
	.align	2
	.global	VDMHAL_V300R001_EnableInt
	.type	VDMHAL_V300R001_EnableInt, %function
VDMHAL_V300R001_EnableInt:
	.fnstart
.LFB1539:
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
	rsb	r5, r0, r0, asl #3	@, tmp144, VdhId, VdhId,
	add	r1, r5, #1	@ tmp145, tmp144,
	movw	r2, #:lower16:g_VdmDrvParam	@ tmp141,
	movt	r2, #:upper16:g_VdmDrvParam	@ tmp141,
	movw	r3, #:lower16:s_pstVfmwChan	@ tmp140,
	movt	r3, #:upper16:s_pstVfmwChan	@ tmp140,
	ldr	r2, [r2, r1, asl #3]	@ <variable>.ChanId, <variable>.ChanId
	ldr	r5, [r3, r2, asl #2]	@ D.52517, s_pstVfmwChan
	cmp	r5, #0	@ D.52517,
	ldrne	r5, [r5, #1264]	@ ModuleLowlyEnable, <variable>.stSynExtraData.s32ModuleLowlyEnable
	cmp	r0, #1	@ VdhId,
	bls	.L411	@,
	movw	r1, #:lower16:.LC34	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC34	@,
	bl	dprint_vfmw	@
.L410:
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L411:
	beq	.L412	@,
	movw	r4, #:lower16:g_HwMem	@ tmp153,
	movt	r4, #:upper16:g_HwMem	@ tmp153,
	ldr	r3, [r4, #0]	@ p32, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ p32,
	beq	.L413	@,
.L407:
	cmp	r5, #1	@ ModuleLowlyEnable,
	mvneq	r2, #5	@ tmp157,
	mvnne	r2, #1	@ tmp158,
	str	r2, [r3, #36]	@ tmp158,
	b	.L410	@
.L412:
	mov	ip, #0	@ tmp152,
	mov	r3, r0	@, VdhId
	movw	r1, #:lower16:.LC15	@,
	mov	r0, ip	@, tmp152
	movt	r1, #:upper16:.LC15	@,
	ldr	r2, .L414	@,
	str	ip, [sp, #0]	@ tmp152,
	bl	dprint_vfmw	@
	b	.L410	@
.L413:
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	bl	MEM_Phy2Vir	@
	subs	r3, r0, #0	@ p32,
	strne	r3, [r4, #0]	@ p32, <variable>.pVdmRegVirAddr
	bne	.L407	@,
	movw	r1, #:lower16:.LC18	@,
	movt	r1, #:upper16:.LC18	@,
	bl	dprint_vfmw	@
	b	.L410	@
.L415:
	.align	2
.L414:
	.word	.LANCHOR0+296
	.fnend
	.size	VDMHAL_V300R001_EnableInt, .-VDMHAL_V300R001_EnableInt
	.align	2
	.global	VDMHAL_V300R001_MaskInt
	.type	VDMHAL_V300R001_MaskInt, %function
VDMHAL_V300R001_MaskInt:
	.fnstart
.LFB1538:
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
	cmp	r0, #1	@ VdhId,
	bls	.L424	@,
	movw	r1, #:lower16:.LC35	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC35	@,
	bl	dprint_vfmw	@
.L423:
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L424:
	beq	.L425	@,
	movw	r4, #:lower16:g_HwMem	@ tmp143,
	movt	r4, #:upper16:g_HwMem	@ tmp143,
	ldr	r3, [r4, #0]	@ p32, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ p32,
	beq	.L426	@,
.L421:
	mvn	r2, #0	@ tmp147,
	str	r2, [r3, #36]	@ tmp147,
	b	.L423	@
.L425:
	mov	ip, #0	@ tmp142,
	mov	r3, r0	@, VdhId
	movw	r1, #:lower16:.LC15	@,
	mov	r0, ip	@, tmp142
	movt	r1, #:upper16:.LC15	@,
	ldr	r2, .L427	@,
	str	ip, [sp, #0]	@ tmp142,
	bl	dprint_vfmw	@
	b	.L423	@
.L426:
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	bl	MEM_Phy2Vir	@
	subs	r3, r0, #0	@ p32,
	strne	r3, [r4, #0]	@ p32, <variable>.pVdmRegVirAddr
	bne	.L421	@,
	movw	r1, #:lower16:.LC18	@,
	movt	r1, #:upper16:.LC18	@,
	bl	dprint_vfmw	@
	b	.L423	@
.L428:
	.align	2
.L427:
	.word	.LANCHOR0+324
	.fnend
	.size	VDMHAL_V300R001_MaskInt, .-VDMHAL_V300R001_MaskInt
	.align	2
	.global	VDMHAL_V300R001_ClearIntState
	.type	VDMHAL_V300R001_ClearIntState, %function
VDMHAL_V300R001_ClearIntState:
	.fnstart
.LFB1537:
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
	rsb	r6, r0, r0, asl #3	@, tmp150, VdhId, VdhId,
	add	r1, r6, #1	@ tmp151, tmp150,
	movw	r4, #:lower16:g_VdmDrvParam	@ tmp168,
	movt	r4, #:upper16:g_VdmDrvParam	@ tmp168,
	movw	r3, #:lower16:s_pstVfmwChan	@ tmp146,
	movt	r3, #:upper16:s_pstVfmwChan	@ tmp146,
	ldr	r2, [r4, r1, asl #3]	@ <variable>.ChanId, <variable>.ChanId
	ldr	r6, [r3, r2, asl #2]	@ D.52423, s_pstVfmwChan
	cmp	r6, #0	@ D.52423,
	ldrne	r6, [r6, #1264]	@ ModuleLowlyEnable, <variable>.stSynExtraData.s32ModuleLowlyEnable
	cmp	r0, #1	@ VdhId,
	bls	.L442	@,
	movw	r1, #:lower16:.LC36	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC36	@,
	bl	dprint_vfmw	@
.L441:
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L442:
	beq	.L443	@,
	movw	r5, #:lower16:g_HwMem	@ tmp159,
	movt	r5, #:upper16:g_HwMem	@ tmp159,
	ldr	r3, [r5, #0]	@ p32, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ p32,
	beq	.L444	@,
.L436:
	cmp	r6, #1	@ ModuleLowlyEnable,
	beq	.L445	@,
.L438:
	mvn	r0, #0	@ tmp167,
	str	r0, [r3, #32]	@ tmp167,
	b	.L441	@
.L443:
	mov	ip, #0	@ tmp158,
	mov	r3, r0	@, VdhId
	movw	r1, #:lower16:.LC15	@,
	mov	r0, ip	@, tmp158
	movt	r1, #:upper16:.LC15	@,
	ldr	r2, .L446	@,
	str	ip, [sp, #0]	@ tmp158,
	bl	dprint_vfmw	@
	b	.L441	@
.L445:
	ldr	r2, [r4, #52]	@ D.52441, <variable>.ChanIntState
	cmp	r2, #1	@ D.52441,
	beq	.L438	@,
	cmp	r2, #2	@ D.52441,
	ldr	r1, [r3, #28]	@ dat,
	mvneq	r2, #11	@ tmp165,
	streq	r2, [r3, #32]	@ tmp165,
	beq	.L441	@,
	cmp	r2, #3	@ D.52441,
	mvneq	r2, #14	@ tmp166,
	streq	r2, [r3, #32]	@ tmp166,
	b	.L441	@
.L444:
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	bl	MEM_Phy2Vir	@
	subs	r3, r0, #0	@ p32,
	strne	r3, [r5, #0]	@ p32, <variable>.pVdmRegVirAddr
	bne	.L436	@,
	movw	r1, #:lower16:.LC18	@,
	movt	r1, #:upper16:.LC18	@,
	bl	dprint_vfmw	@
	b	.L441	@
.L447:
	.align	2
.L446:
	.word	.LANCHOR0+348
	.fnend
	.size	VDMHAL_V300R001_ClearIntState, .-VDMHAL_V300R001_ClearIntState
	.align	2
	.global	VDMHAL_V300R001_GlbReset
	.type	VDMHAL_V300R001_GlbReset, %function
VDMHAL_V300R001_GlbReset:
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
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	bl	MEM_Phy2Vir	@
	subs	r2, r0, #0	@ D.52390,
	beq	.L459	@,
	movw	r4, #:lower16:g_pstRegCrg	@ tmp160,
	movt	r4, #:upper16:g_pstRegCrg	@ tmp160,
	ldr	r3, [r4, #0]	@ g_pstRegCrg.470, g_pstRegCrg
	ldr	r5, [r3, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	tst	r5, #1	@ u32TmpValue,
	beq	.L454	@,
	orr	r5, r5, #16	@ u32TmpValue, u32TmpValue,
	mov	r2, #0	@ i,
	str	r5, [r3, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	movw	ip, #10000	@ tmp161,
	ldr	r1, [r4, #0]	@ prephitmp.1564, g_pstRegCrg
	b	.L452	@
.L461:
	ldr	lr, [r1, #372]	@ D.52401, <variable>.PERI_CRG93.u32
	ands	r0, lr, #1	@ tmp169, D.52401,
	str	lr, [fp, #-24]	@ D.52401, u32TmpValue_93.u32
	bne	.L451	@,
	cmp	r2, ip	@ i, tmp161
	beq	.L460	@,
.L452:
	ldr	r3, [r1, #372]	@ D.52401, <variable>.PERI_CRG93.u32
	add	r2, r2, #1	@ tmp162, i,
	add	r2, r2, #1	@ i, tmp162,
	tst	r3, #1	@ D.52401,
	str	r3, [fp, #-24]	@ D.52401, u32TmpValue_93.u32
	beq	.L461	@,
.L451:
	bfc	r5, #4, #1	@ u32TmpValue,,
	str	r5, [r1, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
.L454:
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L460:
	movw	r1, #:lower16:.LC38	@,
	movt	r1, #:upper16:.LC38	@,
	bl	dprint_vfmw	@
	ldr	r1, [r4, #0]	@ prephitmp.1564, g_pstRegCrg
	b	.L451	@
.L459:
	movw	r1, #:lower16:.LC37	@,
	movt	r1, #:upper16:.LC37	@,
	bl	dprint_vfmw	@
	b	.L454	@
	.fnend
	.size	VDMHAL_V300R001_GlbReset, .-VDMHAL_V300R001_GlbReset
	.align	2
	.global	VDMHAL_V300R001_ResetVdm
	.type	VDMHAL_V300R001_ResetVdm, %function
VDMHAL_V300R001_ResetVdm:
	.fnstart
.LFB1535:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #16
	sub	sp, sp, #16	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	subs	r4, r0, #0	@ VdhId, VdhId
	bne	.L478	@,
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	bl	MEM_Phy2Vir	@
	subs	r2, r0, #0	@ D.52348,
	beq	.L479	@,
	movw	r5, #:lower16:g_HwMem	@ tmp170,
	movw	r6, #:lower16:g_pstRegCrg	@ tmp171,
	movt	r5, #:upper16:g_HwMem	@ tmp170,
	movt	r6, #:upper16:g_pstRegCrg	@ tmp171,
	mov	r2, r4	@ i, VdhId
	movw	ip, #10000	@ tmp172,
	ldr	r1, [r5, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r3, [r6, #0]	@ g_pstRegCrg.469, g_pstRegCrg
	ldr	r7, [r1, #36]	@ tmp,
	ldr	r4, [r3, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	orr	r4, r4, #64	@ u32TmpValue, u32TmpValue,
	str	r4, [r3, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	ldr	r1, [r6, #0]	@ prephitmp.1596, g_pstRegCrg
	b	.L470	@
.L481:
	ldr	r3, [r1, #372]	@ D.52369, <variable>.PERI_CRG93.u32
	and	lr, r3, #4	@ tmp179, D.52369,
	str	r3, [fp, #-32]	@ D.52369, u32TmpValue_93.u32
	uxtb	r0, lr	@ tmp180, tmp179
	cmp	r0, #0	@ tmp180,
	bne	.L469	@,
	cmp	r2, ip	@ i, tmp172
	beq	.L480	@,
.L470:
	ldr	r0, [r1, #372]	@ D.52369, <variable>.PERI_CRG93.u32
	add	r2, r2, #1	@ tmp173, i,
	add	r2, r2, #1	@ i, tmp173,
	tst	r0, #4	@ D.52369,
	str	r0, [fp, #-32]	@ D.52369, u32TmpValue_93.u32
	beq	.L481	@,
.L469:
	bfc	r4, #6, #1	@ u32TmpValue,,
	str	r4, [r1, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	ldr	ip, [r5, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r7, [ip, #36]	@ tmp,
	b	.L471	@
.L478:
	cmp	r4, #1	@ VdhId,
	beq	.L482	@,
	movw	r1, #:lower16:.LC39	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC39	@,
	bl	dprint_vfmw	@
.L471:
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L482:
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	bl	MEM_Phy2Vir	@
	mov	ip, #0	@ tmp152,
	mov	r0, ip	@, tmp152
	mov	r3, r4	@, VdhId
	movw	r1, #:lower16:.LC15	@,
	ldr	r2, .L483	@,
	movt	r1, #:upper16:.LC15	@,
	str	ip, [sp, #0]	@ tmp152,
	bl	dprint_vfmw	@
	b	.L471	@
.L480:
	movw	r1, #:lower16:.LC40	@,
	mov	r2, r0	@,
	movt	r1, #:upper16:.LC40	@,
	bl	dprint_vfmw	@
	ldr	r1, [r6, #0]	@ prephitmp.1596, g_pstRegCrg
	b	.L469	@
.L479:
	movw	r1, #:lower16:.LC37	@,
	movt	r1, #:upper16:.LC37	@,
	bl	dprint_vfmw	@
	b	.L471	@
.L484:
	.align	2
.L483:
	.word	.LANCHOR0+380
	.fnend
	.size	VDMHAL_V300R001_ResetVdm, .-VDMHAL_V300R001_ResetVdm
	.align	2
	.global	VDMHAL_V300R001_CloseHAL
	.type	VDMHAL_V300R001_CloseHAL, %function
VDMHAL_V300R001_CloseHAL:
	.fnstart
.LFB1530:
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
	cmp	r0, #1	@ VdhId,
	mov	r4, r0	@ VdhId, VdhId
	bls	.L491	@,
	movw	r1, #:lower16:.LC41	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC41	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L491:
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@,
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp139,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp139,
	ldr	r3, [r3, #56]	@ D.51759, g_vdm_hal_fun_ptr.pfun_VDMHAL_ResetVdm
	cmp	r3, #0	@ D.51759,
	beq	.L489	@,
	mov	r0, r4	@, VdhId
	blx	r3	@ D.51759
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L489:
	mov	r0, r3	@, D.51759
	movw	r1, #:lower16:.LC25	@,
	movw	r2, #379	@,
	movt	r1, #:upper16:.LC25	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	VDMHAL_V300R001_CloseHAL, .-VDMHAL_V300R001_CloseHAL
	.align	2
	.global	VDMHAL_V300R001_MakeDecReport
	.type	VDMHAL_V300R001_MakeDecReport, %function
VDMHAL_V300R001_MakeDecReport:
	.fnstart
.LFB1549:
	@ args = 0, pretend = 0, frame = 0
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
	subs	r3, r0, #0	@ pMakeDecReport, pMakeDecReport
	beq	.L518	@,
	ldmib	r3, {r6, r7}	@ phole ldm
	cmp	r6, #0	@ pDecReport,
	ldr	r5, [r3, #0]	@ VidStd, <variable>.VidStd
	beq	.L519	@,
	movw	r0, #1208	@ tmp166,
	movw	r3, #:lower16:g_HwMem	@ tmp167,
	mul	r2, r0, r7	@ tmp165, tmp166, VdhId
	movt	r3, #:upper16:g_HwMem	@ tmp167,
	add	r4, r3, r2	@ pHwMem, tmp167, tmp165
	ldr	r0, [r3, r2]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r0, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L520	@,
	movw	r3, #:lower16:g_DSPState	@ tmp305,
	movt	r3, #:upper16:g_DSPState	@ tmp305,
	ldr	r1, [r3, #0]	@ g_DSPState, g_DSPState
	cmp	r1, #1	@ g_DSPState,
	beq	.L497	@,
	ldr	r8, [r3, #4]	@ g_DSPState, g_DSPState
	cmp	r8, #1	@ g_DSPState,
	beq	.L497	@,
	ldr	ip, [r3, #8]	@ g_DSPState, g_DSPState
	cmp	ip, #1	@ g_DSPState,
	beq	.L497	@,
	ldr	lr, [r3, #12]	@ g_DSPState, g_DSPState
	cmp	lr, #1	@ g_DSPState,
	beq	.L497	@,
	ldr	r2, [r3, #16]	@ g_DSPState, g_DSPState
	cmp	r2, #1	@ g_DSPState,
	beq	.L497	@,
	ldr	r0, [r3, #20]	@ g_DSPState, g_DSPState
	cmp	r0, #1	@ g_DSPState,
	beq	.L497	@,
	ldr	r1, [r3, #24]	@ g_DSPState, g_DSPState
	cmp	r1, #1	@ g_DSPState,
	beq	.L497	@,
	ldr	r8, [r3, #28]	@ g_DSPState, g_DSPState
	movw	r3, #:lower16:g_DSPState	@ tmp187,
	movt	r3, #:upper16:g_DSPState	@ tmp187,
	cmp	r8, #1	@ g_DSPState,
	beq	.L497	@,
	ldr	ip, [r3, #32]	@ g_DSPState, g_DSPState
	cmp	ip, #1	@ g_DSPState,
	beq	.L497	@,
	ldr	lr, [r3, #36]	@ g_DSPState, g_DSPState
	cmp	lr, #1	@ g_DSPState,
	beq	.L497	@,
	ldr	r2, [r3, #40]	@ g_DSPState, g_DSPState
	cmp	r2, #1	@ g_DSPState,
	beq	.L497	@,
	ldr	r0, [r3, #44]	@ g_DSPState, g_DSPState
	cmp	r0, #1	@ g_DSPState,
	beq	.L497	@,
	ldr	r1, [r3, #48]	@ g_DSPState, g_DSPState
	cmp	r1, #1	@ g_DSPState,
	beq	.L497	@,
	ldr	r8, [r3, #52]	@ g_DSPState, g_DSPState
	cmp	r8, #1	@ g_DSPState,
	beq	.L497	@,
	ldr	ip, [r3, #56]	@ g_DSPState, g_DSPState
	cmp	ip, #1	@ g_DSPState,
	beq	.L497	@,
	ldr	lr, [r3, #60]	@ g_DSPState, g_DSPState
	cmp	lr, #1	@ g_DSPState,
	movne	r8, #0	@, LowdlyFlag
	moveq	r8, #1	@, LowdlyFlag
.L498:
	mov	r0, r6	@, pDecReport
	mov	r1, #816	@,
	bl	__memzero	@
	movw	r3, #:lower16:g_BackUp	@ tmp304,
	movt	r3, #:upper16:g_BackUp	@ tmp304,
	mov	r0, #180	@ tmp211,
	ldr	r1, [r4, #24]	@ <variable>.VahbStride, <variable>.VahbStride
	mla	ip, r0, r7, r3	@ tmp212, tmp211, VdhId, tmp304
	str	r1, [r6, #4]	@ <variable>.VahbStride, <variable>.ImgStride
	ldr	r2, [ip, #4]	@ D.53248, <variable>.VdmState
	mov	r2, r2, lsr #17	@ tmp214, D.53248,
	and	r0, r2, #3	@ tmp215, tmp214,
	cmp	r0, #1	@ tmp215,
	moveq	r2, #0	@ prephitmp.1659,
	beq	.L500	@,
	eor	lr, r2, #1	@ tmp217, tmp214,
	and	r2, lr, #1	@ tmp219, tmp217,
	cmp	r5, #3	@ VidStd,
	orrne	r2, r2, #1	@,, prephitmp.1659, tmp219
.L500:
	mov	r1, #180	@ tmp227,
	str	r2, [r6, #0]	@ prephitmp.1659, <variable>.RetType
	mla	r3, r1, r7, r3	@ tmp228, tmp227, VdhId, tmp304
	cmp	r5, #0	@ VidStd,
	cmpne	r5, #15	@, VidStd,
	ldr	ip, [r3, #4]	@ <variable>.VdmState, <variable>.VdmState
	bic	r2, ip, #-16777216	@ D.53258, <variable>.VdmState,
	bic	r2, r2, #16646144	@ D.53258, D.53258,
	str	r2, [r6, #8]	@ D.53258, <variable>.DecSliceNum
	bne	.L501	@,
	cmp	r8, #1	@ LowdlyFlag,
	beq	.L521	@,
	movw	ip, #:lower16:g_not_allow_H264FullPictureRepair_flag	@ tmp253,
	movt	ip, #:upper16:g_not_allow_H264FullPictureRepair_flag	@ tmp253,
	ldrb	r1, [ip, #0]	@ zero_extendqisi2	@ g_not_allow_H264FullPictureRepair_flag, g_not_allow_H264FullPictureRepair_flag
	cmp	r1, #0	@ g_not_allow_H264FullPictureRepair_flag,
	beq	.L522	@,
.L501:
	cmp	r2, #200	@ D.53258,
	bhi	.L523	@,
.L503:
	ldr	r8, [r4, #32]	@ D.53283, <variable>.MsgSlotAddr
	mov	r0, r8	@, D.53283
	bl	MEM_Phy2Vir	@
	subs	r1, r0, #0	@ D.53285,
	beq	.L524	@,
	movw	r4, #:lower16:g_UpMsg	@ tmp306,
	movt	r4, #:upper16:g_UpMsg	@ tmp306,
	mov	r5, #3200	@ tmp276,
	ldr	lr, [r6, #8]	@ <variable>.DecSliceNum, <variable>.DecSliceNum
	mla	r5, r5, r7, r4	@ tmp277, tmp276, VdhId, tmp306
	mov	r2, lr, asl #2	@, <variable>.DecSliceNum,
	mov	r0, r5	@, tmp277
	bl	VDMHAL_V300R001_ReadMsgSlot	@
	ldr	ip, [r6, #8]	@ temp.1706, <variable>.DecSliceNum
	cmp	ip, #0	@ temp.1706,
	beq	.L505	@,
	ldrh	r2, [r5, #4]	@, g_UpMsg
	mov	r0, #1	@ i,
	cmp	r0, ip	@ i, temp.1706
	sub	r3, ip, #1	@ tmp309, temp.1706,
	strh	r2, [r6, #12]	@ movhi	@, <variable>.SliceMbRange
	and	r2, r3, r0	@ tmp311, tmp309,
	ldrh	r1, [r5, #8]	@, g_UpMsg
	add	r3, r6, #4	@ ivtmp.1689, pDecReport,
	add	r5, r5, #16	@ ivtmp.1686, tmp277,
	strh	r1, [r6, #14]	@ movhi	@, <variable>.SliceMbRange
	bcs	.L505	@,
	cmp	r2, #0	@ tmp311,
	beq	.L506	@,
	ldrh	r1, [r5, #4]	@, g_UpMsg
	mov	r0, #2	@ i,
	cmp	r0, ip	@ i, temp.1706
	strh	r1, [r3, #12]	@ movhi	@, <variable>.SliceMbRange
	ldrh	r2, [r5, #8]	@, g_UpMsg
	add	r5, r5, #16	@ ivtmp.1686, ivtmp.1686,
	strh	r2, [r3, #14]	@ movhi	@, <variable>.SliceMbRange
	add	r3, r3, #4	@ ivtmp.1689, ivtmp.1689,
	bcs	.L505	@,
.L506:
	ldrh	lr, [r5, #4]	@, g_UpMsg
	add	r2, r5, #16	@ tmp313, ivtmp.1686,
	add	r0, r0, #2	@ i, i,
	cmp	r0, ip	@ i, temp.1706
	strh	lr, [r3, #12]	@ movhi	@, <variable>.SliceMbRange
	add	lr, r3, #4	@ tmp314, ivtmp.1689,
	ldrh	r1, [r5, #8]	@, g_UpMsg
	strh	r1, [r3, #14]	@ movhi	@, <variable>.SliceMbRange
	add	r3, lr, #4	@ ivtmp.1689, tmp314,
	ldrh	r5, [r2, #4]	@, g_UpMsg
	strh	r5, [lr, #12]	@ movhi	@, <variable>.SliceMbRange
	add	r5, r2, #16	@ ivtmp.1686, tmp313,
	ldrh	r1, [r2, #8]	@, g_UpMsg
	strh	r1, [lr, #14]	@ movhi	@, <variable>.SliceMbRange
	bcc	.L506	@,
.L505:
	mov	r0, #6	@,
	bl	IsDprintTypeEnable	@
	cmp	r0, #0	@ D.53299
	bne	.L525	@,
.L494:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L497:
	mov	r8, #1	@ LowdlyFlag,
	b	.L498	@
.L525:
	ldr	r2, [r6, #8]	@, <variable>.DecSliceNum
	mov	r0, #6	@,
	movw	r1, #:lower16:.LC45	@,
	movt	r1, #:upper16:.LC45	@,
	bl	dprint_vfmw	@
	mov	r2, r8	@, D.53283
	mov	r0, #6	@,
	movw	r1, #:lower16:.LC46	@,
	movt	r1, #:upper16:.LC46	@,
	bl	dprint_vfmw	@
	ldr	r0, [r6, #8]	@ <variable>.DecSliceNum, <variable>.DecSliceNum
	mov	ip, r0, asl #2	@ tmp289, <variable>.DecSliceNum,
	cmp	ip, #3	@ tmp289,
	beq	.L508	@,
	mov	r3, #3200	@ tmp292,
	mov	r5, #0	@ i_cnt,
	mla	r4, r3, r7, r4	@ ivtmp.1676, tmp292, VdhId, tmp306
.L509:
	ldr	ip, [r4, #8]	@ tmp296, g_UpMsg
	mov	r2, r5	@, i_cnt
	ldr	lr, [r4, #4]	@ tmp295, g_UpMsg
	mov	r0, #6	@,
	ldr	r7, [r4, #12]	@ tmp297, g_UpMsg
	movw	r1, #:lower16:.LC47	@,
	ldr	r3, [r4, #0]	@ tmp294, g_UpMsg
	movt	r1, #:upper16:.LC47	@,
	str	ip, [sp, #4]	@ tmp296,
	add	r5, r5, #4	@ i_cnt, i_cnt,
	str	lr, [sp, #0]	@ tmp295,
	add	r4, r4, #16	@ ivtmp.1676, ivtmp.1676,
	str	r7, [sp, #8]	@ tmp297,
	bl	dprint_vfmw	@
	ldr	ip, [r6, #8]	@ <variable>.DecSliceNum, <variable>.DecSliceNum
	mov	r1, ip, asl #2	@ tmp298, <variable>.DecSliceNum,
	sub	r2, r1, #3	@ tmp300, tmp298,
	cmp	r2, r5	@ tmp300, i_cnt
	bhi	.L509	@,
.L508:
	mov	r0, #6	@,
	movw	r1, #:lower16:.LC48	@,
	movt	r1, #:upper16:.LC48	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.53225,
	b	.L494	@
.L523:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC44	@,
	mov	r3, #200	@,
	movt	r1, #:upper16:.LC44	@,
	bl	dprint_vfmw	@
	mov	r8, #0	@ tmp270,
	str	r8, [r6, #8]	@ tmp270, <variable>.DecSliceNum
	b	.L503	@
.L522:
	ldrb	r0, [r3, #19]	@ zero_extendqisi2	@ tmp261, <variable>.SedSta
	and	r3, r0, #3	@ tmp263, tmp261,
	cmp	r3, #2	@ tmp263,
	bne	.L501	@,
	mov	r2, #1	@ tmp264,
	strh	r1, [r6, #14]	@ movhi	@ g_not_allow_H264FullPictureRepair_flag, <variable>.SliceMbRange
	mov	r0, r1	@ D.53225, g_not_allow_H264FullPictureRepair_flag
	strh	r1, [r6, #12]	@ movhi	@ g_not_allow_H264FullPictureRepair_flag, <variable>.SliceMbRange
	str	r2, [r6, #8]	@ tmp264, <variable>.DecSliceNum
	b	.L494	@
.L521:
	ldr	r0, [r3, #16]	@ <variable>.SedSta, <variable>.SedSta
	ubfx	r3, r0, #21, #2	@ tmp247, <variable>.SedSta,,
	cmp	r3, #2	@ tmp247,
	bne	.L501	@,
	mov	lr, #0	@ movhi	@,
	str	r8, [r6, #8]	@ LowdlyFlag, <variable>.DecSliceNum
	strh	lr, [r6, #14]	@ movhi	@, <variable>.SliceMbRange
	mov	r0, #0	@ D.53225,
	strh	lr, [r6, #12]	@ movhi	@, <variable>.SliceMbRange
	b	.L494	@
.L524:
	movw	r1, #:lower16:.LC2	@,
	ldr	r2, .L526	@,
	movt	r1, #:upper16:.LC2	@,
	movw	r3, #:lower16:.LC29	@,
	movt	r3, #:upper16:.LC29	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.53225,
	b	.L494	@
.L518:
	movw	r1, #:lower16:.LC2	@,
	ldr	r2, .L526	@,
	movt	r1, #:upper16:.LC2	@,
	movw	r3, #:lower16:.LC42	@,
	movt	r3, #:upper16:.LC42	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.53225,
	b	.L494	@
.L520:
	movw	r1, #:lower16:.LC2	@,
	ldr	r2, .L526	@,
	movt	r1, #:upper16:.LC2	@,
	movw	r3, #:lower16:.LC3	@,
	movt	r3, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.53225,
	b	.L494	@
.L519:
	mov	r0, r6	@, pDecReport
	movw	r1, #:lower16:.LC2	@,
	ldr	r2, .L526	@,
	movt	r1, #:upper16:.LC2	@,
	movw	r3, #:lower16:.LC43	@,
	movt	r3, #:upper16:.LC43	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.53225,
	b	.L494	@
.L527:
	.align	2
.L526:
	.word	.LANCHOR0+408
	.fnend
	.size	VDMHAL_V300R001_MakeDecReport, .-VDMHAL_V300R001_MakeDecReport
	.align	2
	.global	VDMHAL_V300R001_PrepareDec
	.type	VDMHAL_V300R001_PrepareDec, %function
VDMHAL_V300R001_PrepareDec:
	.fnstart
.LFB1541:
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
	subs	r5, r1, #0	@ pDecParam, pDecParam
	mov	r4, r0	@ VidStd, VidStd
	mov	r7, r2	@ VdhId, VdhId
	beq	.L538	@,
	cmp	r0, #6	@ VidStd,
	movw	r6, #:lower16:s_RegPhyBaseAddr	@ tmp153,
	movt	r6, #:upper16:s_RegPhyBaseAddr	@ tmp153,
	moveq	r1, #1	@,
	movne	r1, #0	@,
	ldr	r0, [r6, #0]	@, s_RegPhyBaseAddr
	bl	MEM_WritePhyWord	@
	cmp	r7, #0	@ VdhId,
	beq	.L534	@,
	cmp	r7, #1	@ VdhId,
	beq	.L554	@,
	cmp	r7, #0	@ VdhId,
	bgt	.L537	@,
.L536:
	cmp	r4, #16	@ VidStd,
	ldrls	pc, [pc, r4, asl #2]	@ VidStd
	b	.L538	@
.L551:
	.word	.L549
	.word	.L540
	.word	.L541
	.word	.L542
	.word	.L538
	.word	.L543
	.word	.L544
	.word	.L538
	.word	.L545
	.word	.L546
	.word	.L547
	.word	.L547
	.word	.L547
	.word	.L548
	.word	.L538
	.word	.L549
	.word	.L550
.L534:
	ldr	r0, [r6, #0]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r1, #1	@,
	add	r0, r0, #8	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	b	.L536	@
.L554:
	movw	r3, #:lower16:s_RegPhyBaseAddr_1	@ tmp145,
	movt	r3, #:upper16:s_RegPhyBaseAddr_1	@ tmp145,
	mov	r1, r7	@, VdhId
	ldr	r2, [r3, #0]	@ s_RegPhyBaseAddr_1, s_RegPhyBaseAddr_1
	add	r0, r2, #8	@, s_RegPhyBaseAddr_1,
	bl	MEM_WritePhyWord	@
.L537:
	mov	ip, #0	@ tmp151,
	mov	r3, r7	@, VdhId
	mov	r0, ip	@, tmp151
	movw	r1, #:lower16:.LC15	@,
	ldr	r2, .L555	@,
	movt	r1, #:upper16:.LC15	@,
	str	ip, [sp, #0]	@ tmp151,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ s32ret,
.L530:
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L549:
	mov	r0, r5	@, pDecParam
	mov	r1, r7	@, VdhId
	bl	H264HAL_V300R001_StartDec	@
	b	.L530	@
.L538:
	mvn	r0, #0	@ s32ret,
	b	.L530	@
.L548:
	mov	r0, r5	@, pDecParam
	mov	r1, r7	@, VdhId
	bl	VP8HAL_V300R001_StartDec	@
	b	.L530	@
.L547:
	mov	r0, r5	@, pDecParam
	mov	r1, r7	@, VdhId
	bl	VP6HAL_V300R001_StartDec	@
	b	.L530	@
.L546:
	mov	r0, r5	@, pDecParam
	mov	r1, r7	@, VdhId
	bl	RV9HAL_V300R001_StartDec	@
	b	.L530	@
.L545:
	mov	r0, r5	@, pDecParam
	mov	r1, r7	@, VdhId
	bl	RV8HAL_V300R001_StartDec	@
	b	.L530	@
.L544:
	mov	r0, r5	@, pDecParam
	mov	r1, r7	@, VdhId
	bl	AVSHAL_V300R001_StartDec	@
	b	.L530	@
.L543:
	mov	r0, r5	@, pDecParam
	mov	r1, r7	@, VdhId
	bl	DIVX3HAL_V300R001_StartDec	@
	b	.L530	@
.L542:
	mov	r0, r5	@, pDecParam
	mov	r1, r7	@, VdhId
	bl	MP2HAL_V300R001_StartDec	@
	b	.L530	@
.L541:
	mov	r0, r5	@, pDecParam
	mov	r1, r7	@, VdhId
	bl	MP4HAL_V300R001_StartDec	@
	b	.L530	@
.L540:
	mov	r0, r5	@, pDecParam
	mov	r1, r7	@, VdhId
	bl	VC1HAL_V300R001_StartDec	@
	b	.L530	@
.L550:
	mov	r0, r5	@, pDecParam
	mov	r1, r7	@, VdhId
	bl	HEVCHAL_V300R001_StartDec	@
	b	.L530	@
.L556:
	.align	2
.L555:
	.word	.LANCHOR0+440
	.fnend
	.size	VDMHAL_V300R001_PrepareDec, .-VDMHAL_V300R001_PrepareDec
	.align	2
	.global	VDMHAL_V300R001_ArrangeMem
	.type	VDMHAL_V300R001_ArrangeMem, %function
VDMHAL_V300R001_ArrangeMem:
	.fnstart
.LFB1533:
	@ args = 20, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #76
	sub	sp, sp, #76	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	ldr	r4, [fp, #16]	@ eFlag, eFlag
	mov	r5, r0	@ MemAddr, MemAddr
	str	r1, [fp, #-76]	@ MemSize, %sfp
	cmn	r4, #2	@ eFlag,
	mov	r7, r2	@ Width, Width
	mov	sl, r3	@ Height, Height
	ldr	r8, [fp, #20]	@ pVdmMemArrange, pVdmMemArrange
	beq	.L558	@,
	cmp	r4, #0	@ eFlag,
	movlt	r9, #19	@ VidStd,
	blt	.L560	@,
	mov	r0, r4	@, eFlag
	movw	r6, #:lower16:s_pstVfmwChan	@ tmp608,
	bl	VCTRL_GetVidStd	@
	movt	r6, #:upper16:s_pstVfmwChan	@ tmp608,
	mov	r9, r0	@ VidStd,
	ldr	r0, [r6, r4, asl #2]	@ D.51971, s_pstVfmwChan
	ldr	r3, [r0, #1424]	@ <variable>.stSynExtraData.stChanOption.u32DynamicFrameStoreAllocEn, <variable>.stSynExtraData.stChanOption.u32DynamicFrameStoreAllocEn
	cmp	r3, #1	@ <variable>.stSynExtraData.stChanOption.u32DynamicFrameStoreAllocEn,
	beq	.L676	@,
.L560:
	cmp	r5, #0	@ MemAddr,
	beq	.L677	@,
	cmp	sl, #31	@ Height,
	movgt	lr, #0	@, tmp434
	movle	lr, #1	@, tmp434
	sub	ip, r7, #32	@ tmp429, Width,
	movw	r3, #8160	@ tmp431,
	cmp	ip, r3	@ tmp429, tmp431
	movls	r0, lr	@, tmp437, tmp434
	orrhi	r0, lr, #1	@,, tmp437, tmp434
	cmp	r0, #0	@ tmp437,
	bne	.L599	@,
	cmp	sl, #8192	@ Height,
	bgt	.L599	@,
	cmp	r8, #0	@ pVdmMemArrange,
	beq	.L678	@,
	mov	r0, r8	@, pVdmMemArrange
	mov	r1, #940	@,
	bl	__memzero	@
	add	r0, r7, #15	@ tmp446, Width,
	add	r2, sl, #15	@ tmp447, Height,
	movw	r1, #:lower16:g_not_direct_8x8_inference_flag	@ tmp455,
	mov	r3, r0, asr #4	@ ImgWidthInMb, tmp446,
	movt	r1, #:upper16:g_not_direct_8x8_inference_flag	@ tmp455,
	mov	r0, r2, asr #4	@ ImgHeightInMb, tmp447,
	ldr	r2, [fp, #4]	@ PmvNum, PmvNum
	ldrb	r6, [r1, #0]	@ zero_extendqisi2	@ g_not_direct_8x8_inference_flag, g_not_direct_8x8_inference_flag
	cmp	r2, #20	@ PmvNum,
	movge	r2, #20	@ PmvNum.1836,
	cmp	r0, #36	@ ImgHeightInMb,
	cmple	r3, #45	@, ImgWidthInMb,
	mul	r1, r3, r0	@ tmp457, ImgWidthInMb, ImgHeightInMb
	movle	ip, #64	@, ColMbSize,
	movgt	ip, #32	@, ColMbSize,
	cmp	r6, #1	@ g_not_direct_8x8_inference_flag,
	moveq	ip, #64	@ ColMbSize,
	cmp	r9, #16	@ VidStd,
	moveq	ip, #16	@ ColMbSize,
	mul	lr, ip, r1	@ tmp458, ColMbSize, tmp457
	ldr	ip, [fp, #-76]	@, %sfp
	add	r6, lr, #127	@ tmp459, tmp458,
	bic	r6, r6, #127	@ PmvSlotLen, tmp459,
	mul	r1, r2, r6	@ PmvPoolSize, PmvNum.1836, PmvSlotLen
	cmp	r1, ip	@ PmvPoolSize,
	bge	.L679	@,
	cmp	r9, #16	@ VidStd,
	mov	r3, r3, asl #4	@ ImgWidthInPixAln, ImgWidthInMb,
	mov	ip, r6, asr #1	@ tmp466, PmvSlotLen,
	sub	lr, r3, #1	@ tmp470, ImgWidthInPixAln,
	str	ip, [r8, #932]	@ tmp466, <variable>.HafPmvOffset
	addeq	ip, r7, #255	@ tmp467, Width,
	addne	ip, r3, #255	@ tmp468, ImgWidthInPixAln,
	str	r2, [r8, #936]	@ PmvNum.1836, <variable>.ValidPMVNum
	bic	r2, ip, #255	@ SlotWidth, tmp468,
	movw	ip, #2047	@ tmp471,
	cmp	lr, ip	@ tmp470, tmp471
	mov	lr, r2, asl #4	@ tmp469, SlotWidth,
	str	lr, [r8, #0]	@ tmp469, <variable>.VahbStride
	bhi	.L680	@,
.L608:
	mov	ip, #16	@ level,
.L610:
	ldr	r3, [fp, #12]	@, UserDec
	cmp	r3, #1	@,
	mov	r3, r0, asl #4	@ ImgHeightInPixAln, ImgHeightInMb,
	addeq	r0, r3, r0, asl #5	@, tmp483, ImgHeightInPixAln, ImgHeightInMb,
	muleq	r7, r2, r0	@ ImgSlotLen, SlotWidth, tmp483
	beq	.L613	@,
	cmp	r9, #16	@ VidStd,
	beq	.L681	@,
	adds	r0, r3, #31	@ tmp491, ImgHeightInPixAln,
	addmi	r0, r3, #62	@, tmp492, ImgHeightInPixAln,
	mov	r7, r0, asr #5	@ tmp494, tmp492,
	add	lr, r7, r7, asl #1	@, tmp497, tmp494, tmp494,
	mov	r0, lr, asl #5	@ tmp498, tmp497,
	mul	r7, r2, r0	@ tmp505, SlotWidth, tmp498
	mul	r0, ip, r0	@ tmp499, level, tmp498
	mov	lr, r7, asr #1	@ tmp509, tmp505,
	add	r7, lr, r0, lsr #1	@, ImgSlotLen, tmp509, tmp499,
.L613:
	cmp	r4, #0	@ eFlag,
	blt	.L615	@,
	mov	r0, r4	@, eFlag
	str	r1, [fp, #-96]	@,
	str	r2, [fp, #-88]	@,
	str	r3, [fp, #-84]	@,
	str	ip, [fp, #-92]	@,
	bl	VCTRL_GetChanWidth	@
	str	r0, [fp, #-68]	@, %sfp
	mov	r0, r4	@, eFlag
	bl	VCTRL_GetChanHeight	@
	ldr	r4, [fp, #-68]	@, %sfp
	ldr	r1, [fp, #-96]	@,
	ldr	r2, [fp, #-88]	@,
	ldr	r3, [fp, #-84]	@,
	ldr	ip, [fp, #-92]	@,
	cmn	r0, #1	@ ChanHeight,
	cmnne	r4, #1	@,,
	beq	.L682	@,
	ldr	r4, [fp, #-68]	@, %sfp
	add	r0, r0, #15	@, ChanHeight,
	str	r0, [fp, #-68]	@, %sfp
	add	lr, r4, #15	@ tmp518,,
	movw	r4, #2047	@ tmp524,
	bic	lr, lr, #15	@ ChanImgWidthInPixAln, tmp518,
	sub	r0, lr, #1	@, ChanImgWidthInPixAln,
	str	r0, [fp, #-64]	@, %sfp
	add	r0, lr, #255	@, ChanImgWidthInPixAln,
	str	r0, [fp, #-80]	@, %sfp
	ldr	r0, [fp, #-64]	@, %sfp
	cmp	r0, r4	@, tmp524
	ldr	r0, [fp, #-68]	@, %sfp
	bic	r0, r0, #15	@,,
	str	r0, [fp, #-68]	@, %sfp
	ldr	r0, [fp, #-80]	@, %sfp
	bic	r0, r0, #255	@,,
	str	r0, [fp, #-80]	@, %sfp
	bls	.L617	@,
	sub	r0, lr, #2048	@ tmp525, ChanImgWidthInPixAln,
	sub	r0, r0, #1	@ tmp525, tmp525,
	cmp	r0, r4	@ tmp525, tmp524
	movls	r4, #32	@,
	strls	r4, [fp, #-64]	@, %sfp
	bhi	.L683	@,
.L619:
	ldr	r0, [fp, #12]	@, UserDec
	cmp	r0, #1	@,
	beq	.L684	@,
.L621:
	ldr	r0, [fp, #-68]	@, %sfp
	ldr	r4, [fp, #-80]	@, %sfp
	adds	lr, r0, #31	@ tmp537,,
	addmi	lr, r0, #62	@, tmp538,,
	mov	r0, lr, asr #5	@ tmp540, tmp538,
	mul	lr, r0, r4	@ tmp547, tmp540,
	add	r4, r0, r0, asl #1	@, tmp543, tmp540, tmp540,
	mov	r0, r4, asl #5	@ tmp544, tmp543,
	ldr	r4, [fp, #-64]	@, %sfp
	mul	r0, r4, r0	@ tmp545,, tmp544
	add	lr, lr, lr, asl #1	@, tmp550, tmp547, tmp547,
	mov	lr, lr, asl #5	@ tmp551, tmp550,
	mov	lr, lr, asr #1	@ tmp555, tmp551,
	add	r0, lr, r0, lsr #1	@, ChanSlotLen, tmp555, tmp545,
.L622:
	cmp	r7, r0	@ ImgSlotLen, ChanSlotLen
	bgt	.L685	@,
.L615:
	cmp	r9, #16	@ VidStd,
	muleq	r2, sl, r2	@ tmp560, Height, SlotWidth
	streq	r2, [r8, #536]	@ tmp560, <variable>.ChromOffset
	beq	.L624	@,
	adds	r0, r3, #31	@ tmp561, ImgHeightInPixAln,
	addmi	r9, r3, #62	@, tmp562, ImgHeightInPixAln,
	movpl	r9, r0	@, tmp562, tmp561
	mov	lr, r9, asr #5	@ tmp564, tmp562,
	mul	r2, lr, r2	@ tmp566, tmp564, SlotWidth
	mla	r3, lr, ip, r2	@ tmp567, tmp564, level, tmp566
	mov	r9, r3, asl #5	@ tmp568, tmp567,
	str	r9, [r8, #536]	@ tmp568, <variable>.ChromOffset
.L624:
	ldr	r9, [fp, #8]	@, FrameNum
	cmp	r9, #0	@,
	streq	r9, [r8, #548]	@, <variable>.ValidFrameNum
	bne	.L686	@,
.L626:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC2	@,
	ldr	r2, .L692	@,
	movt	r1, #:upper16:.LC2	@,
	movw	r3, #:lower16:.LC58	@,
	movt	r3, #:upper16:.LC58	@,
	bl	dprint_vfmw	@
	mvn	r3, #0	@ ret,
.L579:
	mov	r0, r3	@, ret
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L680:
	sub	lr, r3, #2048	@ tmp472, ImgWidthInPixAln,
	sub	lr, lr, #1	@ tmp472, tmp472,
	cmp	lr, ip	@ tmp472, tmp471
	movls	ip, #32	@ level,
	bls	.L610	@,
	sub	lr, r3, #4096	@ tmp475, ImgWidthInPixAln,
	sub	lr, lr, #1	@ tmp475, tmp475,
	cmp	lr, ip	@ tmp475, tmp471
	movls	ip, #48	@ level,
	bls	.L610	@,
	sub	lr, r3, #6144	@ tmp478, ImgWidthInPixAln,
	sub	r3, lr, #1	@ tmp478, tmp478,
	cmp	r3, ip	@ tmp478, tmp471
	movls	ip, #64	@ level,
	bls	.L610	@,
	b	.L608	@
.L686:
	add	lr, r5, #1020	@ tmp570, MemAddr,
	ldr	r2, [fp, #-76]	@, %sfp
	add	sl, lr, #3	@ tmp570, tmp570,
	bic	r4, sl, #1020	@ tmp572, tmp570,
	rsb	r3, r1, r2	@ tmp574, PmvPoolSize,
	bic	ip, r4, #3	@ tmp572, tmp572,
	mov	r1, r7	@, ImgSlotLen
	rsb	r4, r5, ip	@ Offset, MemAddr, tmp572
	ldr	sl, [fp, #8]	@ D.52142, FrameNum
	rsb	r0, r4, r3	@, Offset, tmp574
	bl	__aeabi_idiv	@
	cmp	sl, #64	@ D.52142,
	movge	sl, #64	@ D.52142,
	cmp	sl, r0	@ D.52142,
	movlt	r0, sl	@ D.52142, D.52142
	movge	r0, r0	@ D.52142,
	str	r0, [r8, #548]	@ D.52142, <variable>.ValidFrameNum
	cmp	r0, #0	@ D.52142,
	beq	.L626	@,
	ble	.L687	@,
	cmp	r0, #1	@ D.52142,
	add	r1, r4, r5	@ ivtmp.1812, Offset, MemAddr
	sub	r3, r0, #1	@ tmp624, D.52142,
	str	r1, [r8, #8]	@ ivtmp.1812, <variable>.FrameAddr
	and	ip, r3, #1	@ tmp626, tmp624,
	add	r2, r1, r7	@ ivtmp.1812, ivtmp.1812, ImgSlotLen
	add	r3, r8, #4	@ ivtmp.1816, pVdmMemArrange,
	mov	r1, #1	@ i,
	ble	.L663	@,
	cmp	ip, #0	@ tmp626,
	beq	.L629	@,
	mov	r1, #2	@ i,
	cmp	r0, r1	@ D.52142, i
	str	r2, [r3, #8]	@ ivtmp.1812, <variable>.FrameAddr
	add	r2, r2, r7	@ ivtmp.1812, ivtmp.1812, ImgSlotLen
	add	r3, r3, #4	@ ivtmp.1816, ivtmp.1816,
	ble	.L663	@,
.L629:
	add	r1, r1, #2	@ i, i,
	add	ip, r3, #4	@ tmp628, ivtmp.1816,
	cmp	r0, r1	@ D.52142, i
	add	sl, r2, r7	@ ivtmp.1812, ivtmp.1812, ImgSlotLen
	str	r2, [r3, #8]	@ ivtmp.1812, <variable>.FrameAddr
	add	r2, sl, r7	@ ivtmp.1812, ivtmp.1812, ImgSlotLen
	str	sl, [ip, #8]	@ ivtmp.1812, <variable>.FrameAddr
	add	r3, ip, #4	@ ivtmp.1816, tmp628,
	bgt	.L629	@,
.L663:
	mla	r4, r0, r7, r4	@ Offset.1846, D.52142, ImgSlotLen, Offset
	ldr	r0, [r8, #548]	@ D.52142, <variable>.ValidFrameNum
	mov	r1, #1	@ i.1847,
	add	r3, r8, #4	@ ivtmp.1880, pVdmMemArrange,
	cmp	r0, r1	@ D.52142,
	sub	r2, r0, #1	@ tmp618, D.52142,
	add	lr, r4, r5	@ ivtmp.1805, Offset.1846, MemAddr
	and	ip, r2, r1	@ tmp620, tmp618,
	str	lr, [r8, #264]	@ ivtmp.1805, <variable>.LineNumAddr
	add	r2, lr, #32	@ ivtmp.1805, ivtmp.1805,
	ble	.L634	@,
	cmp	ip, #0	@ tmp620,
	beq	.L630	@,
	mov	r1, #2	@ i.1847,
	cmp	r0, r1	@ D.52142, i.1847
	str	r2, [r3, #264]	@ ivtmp.1805, <variable>.LineNumAddr
	add	r2, r2, #32	@ ivtmp.1805, ivtmp.1805,
	add	r3, r3, #4	@ ivtmp.1880, ivtmp.1880,
	ble	.L634	@,
.L630:
	add	r1, r1, #2	@ i.1847, i.1847,
	add	ip, r3, #4	@ tmp621, ivtmp.1880,
	cmp	r0, r1	@ D.52142, i.1847
	add	r7, r2, #32	@ tmp623, ivtmp.1805,
	str	r2, [r3, #264]	@ ivtmp.1805, <variable>.LineNumAddr
	add	r2, r7, #32	@ ivtmp.1805, tmp623,
	str	r7, [ip, #264]	@ tmp623, <variable>.LineNumAddr
	add	r3, ip, #4	@ ivtmp.1880, tmp621,
	bgt	.L630	@,
.L634:
	ldr	sl, [r8, #936]	@ D.52155, <variable>.ValidPMVNum
	add	r0, r4, r0, asl #5	@, Offset.1848, Offset.1846, D.52142,
	add	r2, r0, r5	@ MemAddr.1849, Offset.1848, MemAddr
	cmp	sl, #0	@ D.52155,
	ble	.L631	@,
	mov	r1, #1	@ i.1850,
	cmp	r1, sl	@ i.1850, D.52155
	sub	r3, sl, #1	@ tmp613, D.52155,
	str	r2, [r8, #812]	@ MemAddr.1849, <variable>.PMVAddr
	and	ip, r3, r1	@ tmp615, tmp613,
	add	r2, r2, r6	@ ivtmp.1798, MemAddr.1849, PmvSlotLen
	add	r3, r8, #4	@ ivtmp.1802, pVdmMemArrange,
	bge	.L631	@,
	cmp	ip, #0	@ tmp615,
	beq	.L632	@,
	mov	r1, #2	@ i.1850,
	cmp	r1, sl	@ i.1850, D.52155
	str	r2, [r3, #812]	@ ivtmp.1798, <variable>.PMVAddr
	add	r2, r2, r6	@ ivtmp.1798, ivtmp.1798, PmvSlotLen
	add	r3, r3, #4	@ ivtmp.1802, ivtmp.1802,
	bge	.L631	@,
.L632:
	add	r1, r1, #2	@ i.1850, i.1850,
	add	lr, r3, #4	@ tmp617, ivtmp.1802,
	cmp	r1, sl	@ i.1850, D.52155
	add	r4, r2, r6	@ ivtmp.1798, ivtmp.1798, PmvSlotLen
	str	r2, [r3, #812]	@ ivtmp.1798, <variable>.PMVAddr
	add	r2, r4, r6	@ ivtmp.1798, ivtmp.1798, PmvSlotLen
	str	r4, [lr, #812]	@ ivtmp.1798, <variable>.PMVAddr
	add	r3, lr, #4	@ ivtmp.1802, tmp617,
	blt	.L632	@,
.L631:
	mla	r0, sl, r6, r0	@ tmp587, D.52155, PmvSlotLen, Offset.1848
	mov	r3, #0	@ ret,
	str	r0, [r8, #4]	@ tmp587, <variable>.TotalMemUsed
	b	.L579	@
.L558:
	mov	r9, #16	@ VidStd,
	b	.L560	@
.L683:
	sub	r0, lr, #4096	@ tmp528, ChanImgWidthInPixAln,
	sub	r0, r0, #1	@ tmp528, tmp528,
	cmp	r0, r4	@ tmp528, tmp524
	movls	lr, #48	@,
	strls	lr, [fp, #-64]	@, %sfp
	bls	.L619	@,
	sub	lr, lr, #6144	@ tmp531, ChanImgWidthInPixAln,
	sub	lr, lr, #1	@ tmp531, tmp531,
	cmp	lr, r4	@ tmp531, tmp524
	movls	r0, #64	@,
	strls	r0, [fp, #-64]	@, %sfp
	bls	.L619	@,
.L617:
	ldr	r0, [fp, #12]	@, UserDec
	mov	r4, #16	@,
	str	r4, [fp, #-64]	@, %sfp
	cmp	r0, #1	@,
	bne	.L621	@,
.L684:
	ldr	r4, [fp, #-68]	@, %sfp
	ldr	lr, [fp, #-80]	@, %sfp
	add	r0, r4, r4, asl #1	@, tmp536,,,
	mul	r0, lr, r0	@ ChanSlotLen,, tmp536
	b	.L622	@
.L676:
	movw	r2, #:lower16:249272	@ tmp226,
	movt	r2, #:upper16:249272	@ tmp226,
	cmp	sl, #31	@ Height,
	movgt	r1, #0	@, tmp232
	movle	r1, #1	@, tmp232
	sub	r3, r7, #32	@ tmp227, Width,
	movw	lr, #8160	@ tmp229,
	cmp	r3, lr	@ tmp227, tmp229
	movls	ip, r1	@, tmp235, tmp232
	orrhi	ip, r1, #1	@,, tmp235, tmp232
	ldr	r1, [r0, r2]	@, <variable>.s32CurFsSize
	cmp	ip, #0	@ tmp235,
	str	r1, [fp, #-76]	@, %sfp
	bne	.L561	@,
	cmp	sl, #8192	@ Height,
	ble	.L562	@,
.L561:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC2	@,
	ldr	r2, .L692+4	@,
	movt	r1, #:upper16:.LC2	@,
	movw	r3, #:lower16:.LC11	@,
	movt	r3, #:upper16:.LC11	@,
	bl	dprint_vfmw	@
	mvn	r9, #0	@ CurFsSize,
.L563:
	mov	r2, r9	@, CurFsSize
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC49	@,
	movt	r1, #:upper16:.LC49	@,
	bl	dprint_vfmw	@
	mvn	r3, #0	@ ret,
	b	.L579	@
.L681:
	add	r0, sl, sl, asl #1	@, tmp486, Height, Height,
	mul	r7, r2, r0	@ tmp487, SlotWidth, tmp486
	mov	r7, r7, asr #1	@ ImgSlotLen, tmp487,
	b	.L613	@
.L599:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC2	@,
	ldr	r2, .L692	@,
	movt	r1, #:upper16:.LC2	@,
	movw	r3, #:lower16:.LC11	@,
	movt	r3, #:upper16:.LC11	@,
	bl	dprint_vfmw	@
	mvn	r3, #0	@ ret,
	b	.L579	@
.L562:
	add	r2, r7, #15	@ tmp240, Width,
	add	r3, sl, #15	@ tmp241, Height,
	movw	ip, #:lower16:g_not_direct_8x8_inference_flag	@ tmp249,
	movt	ip, #:upper16:g_not_direct_8x8_inference_flag	@ tmp249,
	mov	r2, r2, asr #4	@ ImgWidthInMb, tmp240,
	mov	r3, r3, asr #4	@ ImgHeightInMb, tmp241,
	cmp	r3, #36	@ ImgHeightInMb,
	cmple	r2, #45	@, ImgWidthInMb,
	ldrb	lr, [ip, #0]	@ zero_extendqisi2	@ g_not_direct_8x8_inference_flag, g_not_direct_8x8_inference_flag
	mov	r5, r3, asl #4	@, ImgHeightInMb,
	mov	r1, r2, asl #4	@ ImgWidthInPixAln, ImgWidthInMb,
	movle	ip, #64	@, ColMbSize,
	movgt	ip, #32	@, ColMbSize,
	cmp	lr, #1	@ g_not_direct_8x8_inference_flag,
	str	r5, [fp, #-72]	@, %sfp
	moveq	ip, #64	@ ColMbSize,
	cmp	r9, #16	@ VidStd,
	beq	.L567	@,
	mul	lr, r2, r3	@ tmp251, ImgWidthInMb, ImgHeightInMb
	add	r5, r1, #255	@ tmp254, ImgWidthInPixAln,
	bic	r5, r5, #255	@ SlotWidth, tmp254,
	mul	r3, ip, lr	@ tmp252, ColMbSize, tmp251
	add	lr, r3, #127	@ tmp253, tmp252,
	bic	r3, lr, #127	@ PmvSlotLen, tmp253,
.L633:
	sub	ip, r1, #1	@ tmp255, ImgWidthInPixAln,
	movw	r2, #2047	@ tmp256,
	cmp	ip, r2	@ tmp255, tmp256
	movls	r2, #16	@ level,
	bls	.L569	@,
	sub	ip, r1, #2048	@ tmp257, ImgWidthInPixAln,
	sub	lr, ip, #1	@ tmp257, tmp257,
	cmp	lr, r2	@ tmp257, tmp256
	movls	r2, #32	@ level,
	bls	.L569	@,
	sub	ip, r1, #4096	@ tmp260, ImgWidthInPixAln,
	sub	lr, ip, #1	@ tmp260, tmp260,
	cmp	lr, r2	@ tmp260, tmp256
	movls	r2, #48	@ level,
	bls	.L569	@,
	sub	lr, r1, #6144	@ tmp263, ImgWidthInPixAln,
	sub	r1, lr, #1	@ tmp263, tmp263,
	cmp	r1, r2	@ tmp263, tmp256
	movls	r2, #64	@ level,
	movhi	r2, #0	@ level,
.L569:
	ldr	ip, [fp, #12]	@, UserDec
	cmp	ip, #1	@,
	beq	.L688	@,
	cmp	r9, #16	@ VidStd,
	beq	.L689	@,
	ldr	r1, [fp, #-72]	@, %sfp
	mov	ip, #96	@ tmp300,
	add	r0, r0, #249856	@, D.51971,
	str	r2, [fp, #-88]	@,
	add	r9, r1, #31	@,,
	add	r0, r0, #728	@,,
	mov	r1, #948	@,
	str	r9, [fp, #-72]	@, %sfp
	mov	lr, r9, asr #5	@ tmp299,,
	str	r3, [fp, #-84]	@,
	movw	r9, #:lower16:250584	@ tmp309,
	movt	r9, #:upper16:250584	@ tmp309,
	mul	ip, ip, lr	@ D.55111, tmp300, tmp299
	mul	lr, ip, r5	@ tmp303, D.55111, SlotWidth
	mul	ip, ip, r2	@, D.55111, level
	str	ip, [fp, #-64]	@, %sfp
	mov	ip, lr, asr #1	@ tmp307, tmp303,
	ldr	lr, [fp, #-64]	@, %sfp
	add	ip, ip, lr, asr #1	@,, tmp307,,
	str	ip, [fp, #-64]	@, %sfp
	bl	__memzero	@
	ldr	r3, [fp, #-84]	@,
	ldr	lr, [r6, r4, asl #2]	@ tmp311, s_pstVfmwChan
	movw	r1, #:lower16:251516	@ tmp312,
	movt	r1, #:upper16:251516	@ tmp312,
	mov	r2, r5, asl #4	@ tmp319, SlotWidth,
	mov	ip, r3, asr #1	@ tmp315, PmvSlotLen,
	str	ip, [lr, r1]	@ tmp315, <variable>.stMemArrangeInfo.stMemArrange.HafPmvOffset
	ldr	r0, [r6, r4, asl #2]	@ tmp317, s_pstVfmwChan
	str	r2, [r0, r9]	@ tmp319, <variable>.stMemArrangeInfo.stMemArrange.VahbStride
	ldr	r2, [fp, #-88]	@,
.L575:
	add	r1, r2, r5	@ tmp330, level, SlotWidth
	ldr	r5, [fp, #-72]	@, %sfp
	ldr	lr, [r6, r4, asl #2]	@ tmp325, s_pstVfmwChan
	movw	r0, #:lower16:251120	@ tmp326,
	bic	ip, r5, #31	@ tmp329,,
	movt	r0, #:upper16:251120	@ tmp326,
	mul	r9, r1, ip	@ tmp331, tmp330, tmp329
	str	r9, [lr, r0]	@ tmp331, <variable>.stMemArrangeInfo.stMemArrange.ChromOffset
.L577:
	ldr	r2, [r6, r4, asl #2]	@ tmp333, s_pstVfmwChan
	movw	r0, #:lower16:251524	@ tmp334,
	ldr	r5, [fp, #-64]	@, %sfp
	movt	r0, #:upper16:251524	@ tmp334,
	ldr	r1, [fp, #-64]	@, %sfp
	add	r9, r3, #1056	@ tmp338, PmvSlotLen,
	str	r5, [r2, r0]	@, <variable>.stMemArrangeInfo.ImgSlotLen
	adds	r9, r9, r1	@ CurFsSize, tmp338,
	ldr	lr, [r6, r4, asl #2]	@ tmp336, s_pstVfmwChan
	movw	r1, #:lower16:251528	@ tmp337,
	movt	r1, #:upper16:251528	@ tmp337,
	movw	r2, #:lower16:s_pstVfmwChan	@ tmp332,
	movt	r2, #:upper16:s_pstVfmwChan	@ tmp332,
	str	r3, [lr, r1]	@ PmvSlotLen, <variable>.stMemArrangeInfo.PmvSlotLen
	bmi	.L563	@,
	ldr	r5, [r2, r4, asl #2]	@ prephitmp.1779, s_pstVfmwChan
	movw	ip, #:lower16:249276	@ tmp341,
	movt	ip, #:upper16:249276	@ tmp341,
	ldr	lr, [fp, #-76]	@, %sfp
	ldr	r3, [r5, ip]	@, <variable>.s32RefNum
	cmp	lr, r9	@, CurFsSize
	str	r3, [fp, #-64]	@, %sfp
	beq	.L690	@,
.L580:
	movw	r2, #:lower16:249272	@ tmp344,
	movw	r0, #:lower16:g_event_report	@ tmp345,
	movt	r2, #:upper16:249272	@ tmp344,
	movt	r0, #:upper16:g_event_report	@ tmp345,
	str	r9, [r5, r2]	@ CurFsSize, <variable>.s32CurFsSize
	ldr	ip, [r0, #0]	@ g_event_report.452, g_event_report
	cmp	ip, #0	@ g_event_report.452,
	beq	.L582	@,
	ldr	r5, [fp, #-64]	@, %sfp
	mov	r0, r4	@, eFlag
	str	r7, [fp, #-52]	@ Width, para
	mov	r1, #118	@,
	str	sl, [fp, #-48]	@ Height, para
	sub	r2, fp, #60	@,,
	str	r5, [fp, #-60]	@, para
	mov	r3, #16	@,
	str	r9, [fp, #-56]	@ CurFsSize, para
	blx	ip	@ g_event_report.452
.L582:
	ldr	r5, [r6, r4, asl #2]	@ tmp349, s_pstVfmwChan
	movw	r1, #:lower16:249296	@ tmp350,
	movt	r1, #:upper16:249296	@ tmp350,
	mov	r2, r9	@, CurFsSize
	ldr	r3, [fp, #-64]	@, %sfp
	mov	r0, #31	@,
	ldr	lr, [r5, r1]	@ <variable>.s32RefNumChanged, <variable>.s32RefNumChanged
	movw	r1, #:lower16:.LC50	@,
	movt	r1, #:upper16:.LC50	@,
	str	lr, [sp, #0]	@ <variable>.s32RefNumChanged,
	bl	dprint_vfmw	@
	ldr	r5, [r6, r4, asl #2]	@ temp.1826, s_pstVfmwChan
	bl	OSAL_GetTimeInMs	@
	movw	ip, #:lower16:251532	@ tmp353,
	movt	ip, #:upper16:251532	@ tmp353,
	movw	r2, #:lower16:249264	@ tmp356,
	movt	r2, #:upper16:249264	@ tmp356,
	mov	r3, #2	@ ret,
	str	r0, [r5, ip]	@, <variable>.stDynamicFSTimestamp.u32StartTime
	mov	ip, #1	@ tmp357,
	ldr	r1, [r6, r4, asl #2]	@ tmp355, s_pstVfmwChan
	str	ip, [r1, r2]	@ tmp357, <variable>.FspInst.eFspPartitionState
	b	.L579	@
.L690:
	movw	ip, #:lower16:249296	@ tmp342,
	movt	ip, #:upper16:249296	@ tmp342,
	ldr	r3, [r5, ip]	@ <variable>.s32RefNumChanged, <variable>.s32RefNumChanged
	cmp	r3, #1	@ <variable>.s32RefNumChanged,
	beq	.L580	@,
	cmp	r8, #0	@ pVdmMemArrange,
	beq	.L691	@,
	ldr	r3, [fp, #-64]	@, %sfp
	ldr	r7, [r5, r1]	@, <variable>.stMemArrangeInfo.PmvSlotLen
	cmp	r3, #0	@,
	ldr	sl, [r5, r0]	@ ImgSlotLen, <variable>.stMemArrangeInfo.ImgSlotLen
	movne	r3, r5	@ prephitmp.1879, prephitmp.1779
	str	r7, [fp, #-64]	@, %sfp
	bne	.L585	@,
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC52	@,
	movt	r1, #:upper16:.LC52	@,
	str	r2, [fp, #-88]	@,
	bl	dprint_vfmw	@
	ldr	r0, [fp, #-88]	@,
	ldr	r3, [r0, r4, asl #2]	@ prephitmp.1879, s_pstVfmwChan
.L585:
	movw	r7, #:lower16:249280	@ tmp366,
	movt	r7, #:upper16:249280	@ tmp366,
	ldr	r2, [r3, r7]	@ prephitmp.1781, <variable>.s32NeededFrameNum
	cmp	r2, #30	@ prephitmp.1781,
	ble	.L586	@,
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC53	@,
	movt	r1, #:upper16:.LC53	@,
	bl	dprint_vfmw	@
	ldr	ip, [r6, r4, asl #2]	@ tmp369, s_pstVfmwChan
	mov	r2, #30	@ tmp371,
	str	r2, [ip, r7]	@ tmp371, <variable>.s32NeededFrameNum
	ldr	r3, [r6, r4, asl #2]	@ tmp373, s_pstVfmwChan
	ldr	r2, [r3, r7]	@ prephitmp.1781, <variable>.s32NeededFrameNum
.L586:
	movw	lr, #:lower16:251132	@ tmp375,
	cmp	r2, #0	@ prephitmp.1781,
	movt	lr, #:upper16:251132	@ tmp375,
	str	r2, [r5, lr]	@ prephitmp.1781, <variable>.stMemArrangeInfo.stMemArrange.ValidFrameNum
	ble	.L587	@,
	ldr	r0, [r6, r4, asl #2]	@ temp.1881, s_pstVfmwChan
	movw	r7, #:lower16:249312	@ tmp377,
	movt	r7, #:upper16:249312	@ tmp377,
	movw	r1, #:lower16:s_pstVfmwChan	@ tmp376,
	movt	r1, #:upper16:s_pstVfmwChan	@ tmp376,
	ldr	ip, [r0, r7]	@ s32PhyAddr, <variable>.stFrameBuffer.PhyAddr
	cmp	ip, #0	@ s32PhyAddr,
	beq	.L588	@,
	add	r3, ip, #1020	@ tmp378, s32PhyAddr,
	movw	r7, #:lower16:250592	@ tmp382,
	add	lr, r3, #3	@ tmp378, tmp378,
	movt	r7, #:upper16:250592	@ tmp382,
	bic	r0, lr, #1020	@ tmp380, tmp378,
	movw	lr, #:lower16:250848	@ tmp384,
	bic	r3, r0, #3	@ tmp380, tmp380,
	movt	lr, #:upper16:250848	@ tmp384,
	rsb	r9, ip, r3	@ s32Offset.1884, s32PhyAddr, tmp380
	movw	r0, #:lower16:251396	@ tmp386,
	add	r9, r9, sl	@, s32Offset.1884, ImgSlotLen
	str	r9, [fp, #-68]	@, %sfp
	add	r9, r9, #32	@,,
	str	r9, [fp, #-72]	@, %sfp
	str	r3, [r5, r7]	@ tmp380, <variable>.stMemArrangeInfo.stMemArrange.FrameAddr
	movt	r0, #:upper16:251396	@ tmp386,
	ldr	r7, [fp, #-68]	@, %sfp
	add	r9, r7, ip	@ tmp385,, s32PhyAddr
	str	r9, [r5, lr]	@ tmp385, <variable>.stMemArrangeInfo.stMemArrange.LineNumAddr
	ldr	r9, [fp, #-72]	@, %sfp
	add	r3, r9, ip	@ tmp387,, s32PhyAddr
	str	r3, [r5, r0]	@ tmp387, <variable>.stMemArrangeInfo.stMemArrange.PMVAddr
	ldr	r1, [r1, r4, asl #2]	@ D.55161, s_pstVfmwChan
	movw	r3, #:lower16:249272	@ tmp389,
	movt	r3, #:upper16:249272	@ tmp389,
	ldr	r0, [fp, #-64]	@, %sfp
	ldr	lr, [r1, r3]	@ prephitmp.1783, <variable>.s32CurFsSize
	add	r7, r9, r0	@ s32Offset.1864,,
	cmp	r7, lr	@ s32Offset.1864, prephitmp.1783
	movgt	r3, #0	@ i,
	bgt	.L590	@,
	tst	r2, #1	@ prephitmp.1781,
	add	ip, r5, #249856	@ ivtmp.1819, prephitmp.1779,
	add	r0, ip, #740	@ ivtmp.1819, ivtmp.1819,
	mov	r3, #0	@ i,
	bne	.L672	@,
	add	ip, r1, #248832	@ tmp662, D.55161,
	mov	r3, #1	@ i,
	add	lr, ip, #500	@ tmp662, tmp662,
	ldr	ip, [lr, #0]	@ s32PhyAddr, <variable>.stFrameBuffer.PhyAddr
	cmp	ip, #0	@ s32PhyAddr,
	beq	.L664	@,
	add	r7, ip, #1020	@ tmp663, s32PhyAddr,
	add	r9, r7, #3	@ tmp664, tmp663,
	bic	lr, r9, #1020	@ tmp665, tmp664,
	bic	r1, lr, #3	@ tmp665, tmp665,
	str	r1, [r0, #0]	@ tmp665, <variable>.stMemArrangeInfo.stMemArrange.FrameAddr
	rsb	r7, ip, r1	@ s32Offset, s32PhyAddr, tmp665
	add	r9, r7, sl	@ s32Offset.1860, s32Offset, ImgSlotLen
	add	r7, r9, #32	@ s32Offset.1862, s32Offset.1860,
	add	lr, r9, ip	@ tmp669, s32Offset.1860, s32PhyAddr
	add	r1, r7, ip	@ tmp671, s32Offset.1862, s32PhyAddr
	str	lr, [r0, #256]	@ tmp669, <variable>.stMemArrangeInfo.stMemArrange.LineNumAddr
	str	r1, [r0, #804]	@ tmp671, <variable>.stMemArrangeInfo.stMemArrange.PMVAddr
	add	r0, r0, #4	@ ivtmp.1819, ivtmp.1819,
	ldr	r9, [fp, #-64]	@, %sfp
	ldr	r1, [r6, r4, asl #2]	@ D.55161, s_pstVfmwChan
	add	r7, r7, r9	@ s32Offset.1864, s32Offset.1862,
	movw	r9, #:lower16:249272	@,
	movt	r9, #:upper16:249272	@,
	ldr	lr, [r1, r9]	@ prephitmp.1783, <variable>.s32CurFsSize
	cmp	r7, lr	@ s32Offset.1864, prephitmp.1783
	bgt	.L590	@,
.L672:
	str	r5, [fp, #-68]	@ prephitmp.1779, %sfp
	b	.L591	@
.L593:
	add	ip, r1, ip, asl #2	@, tmp396, D.55161, tmp394,
	add	lr, ip, #248832	@ tmp397, tmp396,
	add	ip, lr, #480	@ tmp397, tmp397,
	ldr	ip, [ip, #0]	@ s32PhyAddr, <variable>.stFrameBuffer.PhyAddr
	add	lr, ip, #1020	@ tmp399, s32PhyAddr,
	cmp	ip, #0	@ s32PhyAddr,
	add	lr, lr, #3	@ tmp399, tmp399,
	bic	lr, lr, #1020	@ tmp401, tmp399,
	beq	.L664	@,
	bic	r7, lr, #3	@ tmp401, tmp401,
	str	r7, [r0, #0]	@ tmp401, <variable>.stMemArrangeInfo.stMemArrange.FrameAddr
	rsb	r5, ip, r7	@ s32Offset, s32PhyAddr, tmp401
	add	r1, r5, sl	@ s32Offset.1860, s32Offset, ImgSlotLen
	add	r5, r1, #32	@ s32Offset.1862, s32Offset.1860,
	add	lr, r1, ip	@ tmp404, s32Offset.1860, s32PhyAddr
	add	r7, r5, ip	@ tmp405, s32Offset.1862, s32PhyAddr
	str	lr, [r0, #256]	@ tmp404, <variable>.stMemArrangeInfo.stMemArrange.LineNumAddr
	str	r7, [r0, #804]	@ tmp405, <variable>.stMemArrangeInfo.stMemArrange.PMVAddr
	add	r0, r9, #4	@ ivtmp.1819, tmp632,
	ldr	r1, [fp, #-64]	@, %sfp
	add	r7, r5, r1	@ s32Offset.1864, s32Offset.1862,
	ldr	r1, [r6, r4, asl #2]	@ D.55161, s_pstVfmwChan
	movw	r5, #:lower16:249272	@,
	movt	r5, #:upper16:249272	@,
	ldr	lr, [r1, r5]	@ prephitmp.1783, <variable>.s32CurFsSize
	cmp	r7, lr	@ s32Offset.1864, prephitmp.1783
	bgt	.L590	@,
	add	r3, r3, #1	@ i, i,
	add	lr, r3, r3, asl #2	@, tmp675, i, i,
	add	ip, r1, lr, asl #2	@, tmp677, D.55161, tmp675,
	add	lr, ip, #248832	@ tmp678, tmp677,
	add	ip, lr, #480	@ tmp678, tmp678,
	ldr	ip, [ip, #0]	@ s32PhyAddr, <variable>.stFrameBuffer.PhyAddr
	add	lr, ip, #1020	@ tmp680, s32PhyAddr,
	cmp	ip, #0	@ s32PhyAddr,
	add	lr, lr, #3	@ tmp680, tmp680,
	bic	lr, lr, #1020	@ tmp681, tmp680,
	beq	.L664	@,
	bic	r7, lr, #3	@ tmp681, tmp681,
	str	r7, [r9, #0]	@ tmp681, <variable>.stMemArrangeInfo.stMemArrange.FrameAddr
	rsb	r5, ip, r7	@ s32Offset, s32PhyAddr, tmp681
	add	r1, r5, sl	@ s32Offset.1860, s32Offset, ImgSlotLen
	add	r5, r1, #32	@ s32Offset.1862, s32Offset.1860,
	add	lr, r1, ip	@ tmp685, s32Offset.1860, s32PhyAddr
	add	r7, r5, ip	@ tmp687, s32Offset.1862, s32PhyAddr
	str	lr, [r9, #256]	@ tmp685, <variable>.stMemArrangeInfo.stMemArrange.LineNumAddr
	str	r7, [r9, #804]	@ tmp687, <variable>.stMemArrangeInfo.stMemArrange.PMVAddr
	ldr	r1, [fp, #-64]	@, %sfp
	add	r7, r5, r1	@ s32Offset.1864, s32Offset.1862,
	ldr	r1, [r6, r4, asl #2]	@ D.55161, s_pstVfmwChan
	movw	r5, #:lower16:249272	@,
	movt	r5, #:upper16:249272	@,
	ldr	lr, [r1, r5]	@ prephitmp.1783, <variable>.s32CurFsSize
	cmp	r7, lr	@ s32Offset.1864, prephitmp.1783
	bgt	.L590	@,
.L591:
	add	r3, r3, #1	@ i, i,
	add	r9, r0, #4	@ tmp632, ivtmp.1819,
	cmp	r2, r3	@ prephitmp.1781, i
	add	ip, r3, r3, asl #2	@, tmp394, i, i,
	bgt	.L593	@,
	ldr	r5, [fp, #-68]	@ prephitmp.1779, %sfp
.L594:
	movw	r0, #:lower16:249272	@ tmp594,
	movt	r0, #:upper16:249272	@ tmp594,
	movw	r3, #:lower16:250588	@ tmp593,
	movw	lr, #:lower16:251520	@ tmp597,
	ldr	ip, [r1, r0]	@ <variable>.s32CurFsSize, <variable>.s32CurFsSize
	movt	r3, #:upper16:250588	@ tmp593,
	movt	lr, #:upper16:251520	@ tmp597,
	add	r1, r5, #249856	@, prephitmp.1779,
	mov	r0, r8	@, pVdmMemArrange
	add	r1, r1, #728	@,,
	mul	ip, ip, r2	@ tmp596, <variable>.s32CurFsSize, prephitmp.1781
	str	r2, [r5, lr]	@ prephitmp.1781, <variable>.stMemArrangeInfo.stMemArrange.ValidPMVNum
	mov	r2, #940	@,
	str	ip, [r5, r3]	@ tmp596, <variable>.stMemArrangeInfo.stMemArrange.TotalMemUsed
	bl	memcpy	@
	mov	r3, #0	@ ret,
	b	.L579	@
.L679:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC2	@,
	ldr	r2, .L692	@,
	movt	r1, #:upper16:.LC2	@,
	movw	r3, #:lower16:.LC13	@,
	movt	r3, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	mvn	r3, #0	@ ret,
	b	.L579	@
.L677:
	mov	r0, r5	@, MemAddr
	movw	r1, #:lower16:.LC2	@,
	ldr	r2, .L692	@,
	movt	r1, #:upper16:.LC2	@,
	movw	r3, #:lower16:.LC55	@,
	movt	r3, #:upper16:.LC55	@,
	bl	dprint_vfmw	@
	mvn	r3, #0	@ ret,
	b	.L579	@
.L687:
	mla	r4, r7, r0, r4	@ Offset.1846, ImgSlotLen, D.52142, Offset
	b	.L634	@
.L664:
	movw	r2, #:lower16:249272	@ tmp398,
	movt	r2, #:upper16:249272	@ tmp398,
	ldr	lr, [r1, r2]	@ prephitmp.1783, <variable>.s32CurFsSize
.L590:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC54	@,
	ldr	r2, .L692+8	@,
	movt	r1, #:upper16:.LC54	@,
	stmia	sp, {r7, lr}	@ phole stm
	str	ip, [sp, #8]	@ s32PhyAddr,
	bl	dprint_vfmw	@
	mvn	r3, #0	@ ret,
	b	.L579	@
.L685:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC2	@,
	ldr	r2, .L692	@,
	movt	r1, #:upper16:.LC2	@,
	movw	r3, #:lower16:.LC57	@,
	movt	r3, #:upper16:.LC57	@,
	bl	dprint_vfmw	@
	mvn	r3, #0	@ ret,
	b	.L579	@
.L689:
	mov	r9, #3	@ tmp281,
	add	r1, r0, #249856	@, D.51971,
	mul	ip, r9, sl	@ tmp280, tmp281, Height
	add	r0, r1, #728	@,,
	mov	r1, #948	@,
	str	r3, [fp, #-84]	@,
	movw	r9, #:lower16:250584	@ tmp287,
	movt	r9, #:upper16:250584	@ tmp287,
	mul	r2, r5, ip	@ tmp282, SlotWidth, tmp280
	mov	lr, r2, asr #1	@, tmp282,
	str	lr, [fp, #-64]	@, %sfp
	bl	__memzero	@
	ldr	r3, [fp, #-84]	@,
	ldr	ip, [r6, r4, asl #2]	@ tmp289, s_pstVfmwChan
	movw	r2, #:lower16:251516	@ tmp290,
	movt	r2, #:upper16:251516	@ tmp290,
	mov	r1, r5, asl #4	@ tmp297, SlotWidth,
	mov	r0, r3, asr #1	@ tmp293, PmvSlotLen,
	str	r0, [ip, r2]	@ tmp293, <variable>.stMemArrangeInfo.stMemArrange.HafPmvOffset
	ldr	r2, [r6, r4, asl #2]	@ tmp295, s_pstVfmwChan
	str	r1, [r2, r9]	@ tmp297, <variable>.stMemArrangeInfo.stMemArrange.VahbStride
.L574:
	mul	r5, sl, r5	@ tmp323, Height, SlotWidth
	ldr	ip, [r6, r4, asl #2]	@ tmp321, s_pstVfmwChan
	movw	r2, #:lower16:251120	@ tmp322,
	movt	r2, #:upper16:251120	@ tmp322,
	str	r5, [ip, r2]	@ tmp323, <variable>.stMemArrangeInfo.stMemArrange.ChromOffset
	b	.L577	@
.L688:
	ldr	r1, [fp, #-72]	@, %sfp
	mov	ip, #3	@ tmp267,
	add	r0, r0, #249856	@, D.51971,
	str	r2, [fp, #-88]	@,
	add	r0, r0, #728	@,,
	str	r3, [fp, #-84]	@,
	mul	lr, ip, r1	@ tmp266, tmp267,
	mov	r1, #948	@,
	movw	ip, #:lower16:250584	@ tmp269,
	movt	ip, #:upper16:250584	@ tmp269,
	str	ip, [fp, #-92]	@,
	mul	lr, r5, lr	@, SlotWidth, tmp266
	str	lr, [fp, #-64]	@, %sfp
	bl	__memzero	@
	ldr	r3, [fp, #-84]	@,
	movw	r0, #:lower16:251516	@ tmp272,
	ldr	lr, [r6, r4, asl #2]	@ tmp271, s_pstVfmwChan
	movt	r0, #:upper16:251516	@ tmp272,
	cmp	r9, #16	@ VidStd,
	mov	ip, r3, asr #1	@ tmp275, PmvSlotLen,
	str	ip, [lr, r0]	@ tmp275, <variable>.stMemArrangeInfo.stMemArrange.HafPmvOffset
	mov	r0, r5, asl #4	@ tmp279, SlotWidth,
	ldr	r2, [r6, r4, asl #2]	@ tmp277, s_pstVfmwChan
	ldr	r1, [fp, #-92]	@,
	str	r0, [r2, r1]	@ tmp279, <variable>.stMemArrangeInfo.stMemArrange.VahbStride
	ldrne	r9, [fp, #-72]	@, %sfp
	ldr	r2, [fp, #-88]	@,
	addne	r9, r9, #31	@,,
	strne	r9, [fp, #-72]	@, %sfp
	bne	.L575	@,
	b	.L574	@
.L567:
	mul	ip, r3, r1	@ tmp589, ImgHeightInMb, ImgWidthInPixAln
	add	r5, r7, #255	@ tmp591, Width,
	bic	r5, r5, #255	@ SlotWidth, tmp591,
	add	r2, ip, #127	@ tmp590, tmp589,
	bic	r3, r2, #127	@ PmvSlotLen, tmp590,
	b	.L633	@
.L678:
	mov	r0, r8	@, pVdmMemArrange
	movw	r1, #:lower16:.LC2	@,
	ldr	r2, .L692	@,
	movt	r1, #:upper16:.LC2	@,
	movw	r3, #:lower16:.LC12	@,
	movt	r3, #:upper16:.LC12	@,
	bl	dprint_vfmw	@
	mvn	r3, #0	@ ret,
	b	.L579	@
.L682:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC56	@,
	movt	r1, #:upper16:.LC56	@,
	bl	dprint_vfmw	@
	mvn	r3, #0	@ ret,
	b	.L579	@
.L691:
	mov	r0, r8	@, pVdmMemArrange
	movw	r1, #:lower16:.LC2	@,
	ldr	r2, .L692+8	@,
	movt	r1, #:upper16:.LC2	@,
	movw	r3, #:lower16:.LC51	@,
	movt	r3, #:upper16:.LC51	@,
	bl	dprint_vfmw	@
	mvn	r3, #0	@ ret,
	b	.L579	@
.L587:
	ldr	r1, [r6, r4, asl #2]	@ D.55161, s_pstVfmwChan
	b	.L594	@
.L588:
	movw	r2, #:lower16:249272	@ tmp408,
	movt	r2, #:upper16:249272	@ tmp408,
	mov	r3, ip	@ i, s32PhyAddr
	mov	r7, ip	@ s32Offset.1864, s32PhyAddr
	ldr	lr, [r0, r2]	@ prephitmp.1783, <variable>.s32CurFsSize
	b	.L590	@
.L693:
	.align	2
.L692:
	.word	.LANCHOR0+532
	.word	.LANCHOR0+468
	.word	.LANCHOR0+496
	.fnend
	.size	VDMHAL_V300R001_ArrangeMem, .-VDMHAL_V300R001_ArrangeMem
	.align	2
	.global	VDMHAL_V300R001_OpenHAL
	.type	VDMHAL_V300R001_OpenHAL, %function
VDMHAL_V300R001_OpenHAL:
	.fnstart
.LFB1529:
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
	subs	r2, r0, #0	@ pOpenParam, pOpenParam
	beq	.L711	@,
	ldr	r5, [r2, #0]	@ MemBaseAddr, <variable>.MemBaseAddr
	ldr	r3, [r2, #8]	@ VdhId, <variable>.VdhId
	cmp	r5, #0	@ MemBaseAddr,
	ldr	r6, [r2, #4]	@ Size, <variable>.Size
	beq	.L712	@,
	movw	r2, #:lower16:4296703	@ tmp187,
	movt	r2, #:upper16:4296703	@ tmp187,
	cmp	r6, r2	@ Size, tmp187
	ble	.L713	@,
	cmp	r3, #1	@ VdhId,
	bhi	.L714	@,
	beq	.L715	@,
	movw	r4, #:lower16:g_HwMem	@ tmp259,
	movt	r4, #:upper16:g_HwMem	@ tmp259,
	movw	r1, #1208	@,
	add	sl, r5, #1020	@ tmp205, MemBaseAddr,
	mov	r0, r4	@, tmp259
	add	r9, r6, r5	@ tmp210, Size, MemBaseAddr
	bl	__memzero	@
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	bl	MEM_Phy2Vir	@
	movw	r1, #:lower16:.LC63	@,
	movt	r1, #:upper16:.LC63	@,
	mov	ip, r0	@ D.51704,
	mov	r2, r0	@, D.51704
	str	ip, [r4, #0]	@ D.51704, <variable>.pVdmRegVirAddr
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	movw	r0, #:lower16:-121241600	@,
	movt	r0, #:upper16:-121241600	@,
	bl	MEM_Phy2Vir	@
	movw	r1, #:lower16:.LC64	@,
	movt	r1, #:upper16:.LC64	@,
	mov	r7, r0	@ D.51708,
	mov	r2, r0	@, D.51708
	str	r7, [r4, #8]	@ D.51708, <variable>.pBpdRegVirAddr
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	add	r3, sl, #3	@ tmp205, tmp205,
	bic	r0, r3, #1020	@ D.51713, tmp205,
	movw	r7, #:lower16:268800	@ tmp261,
	movt	r7, #:upper16:268800	@ tmp261,
	bic	r0, r0, #3	@ D.51713, D.51713,
	mov	r2, r4	@ ivtmp.1925, tmp259
	mov	r3, #0	@ ivtmp.1922,
	rsb	r8, r0, r9	@ tmp211, D.51713, tmp210
	mov	r1, #1024	@ tmp213,
	str	r8, [r4, #20]	@ tmp211, <variable>.HALMemSize
	str	r1, [r4, #24]	@ tmp213, <variable>.VahbStride
	str	r0, [r4, #16]	@ D.51713, <variable>.HALMemBaseAddr
.L702:
	add	r9, r3, r0	@ tmp215, ivtmp.1922, D.51713
	add	r8, r3, #1280	@ tmp262, ivtmp.1922,
	add	r3, r3, #2560	@ ivtmp.1922, ivtmp.1922,
	add	r1, r2, #4	@ tmp263, ivtmp.1925,
	cmp	r3, r7	@ ivtmp.1922, tmp261
	str	r9, [r2, #32]	@ tmp215, <variable>.MsgSlotAddr
	add	lr, r8, r0	@ tmp266, tmp262, D.51713
	add	r2, r1, #4	@ ivtmp.1925, tmp263,
	str	lr, [r1, #32]	@ tmp266, <variable>.MsgSlotAddr
	bne	.L702	@,
	add	r0, r0, r3	@ PhyAddr.1928, D.51713, ivtmp.1922
	movw	r3, #:lower16:1081343	@ D.51720,
	add	r7, r0, #5120	@ PhyAddr.1929, PhyAddr.1928,
	movt	r3, #:upper16:1081343	@ D.51720,
	add	r8, r7, r3	@ D.51720, PhyAddr.1929, D.51720
	mov	r9, #210	@ tmp219,
	bic	sl, r8, #32512	@ PhyAddr.1930, D.51720,
	str	r7, [r4, #1100]	@ PhyAddr.1929, <variable>.mn_phy_addr
	bic	r1, sl, #255	@ PhyAddr.1930, PhyAddr.1930,
	str	r9, [r4, #1056]	@ tmp219, <variable>.ValidMsgSlotNum
	add	ip, r1, #191488	@ PhyAddr.1934, PhyAddr.1930,
	add	r3, r1, #2850816	@ PhyAddr_HEVC.1943, PhyAddr.1930,
	add	r2, ip, #158720	@ PhyAddr.1939, PhyAddr.1934,
	add	sl, r1, #78848	@ PhyAddr.1932, PhyAddr.1930,
	cmp	r2, r3	@ PhyAddr.1939, PhyAddr_HEVC.1943
	rsbge	r2, r5, r2	@,, D.51731, MemBaseAddr, PhyAddr.1939
	rsblt	r2, r5, r3	@,, D.51731, MemBaseAddr, PhyAddr_HEVC.1943
	add	r8, ip, #121856	@ PhyAddr.1937, PhyAddr.1934,
	cmp	r6, r2	@ Size, D.51731
	add	r7, r1, #589824	@ PhyAddr_HEVC, PhyAddr.1930,
	add	r5, r1, #1212416	@ PhyAddr_HEVC.1941, PhyAddr.1930,
	add	lr, r1, #1802240	@ PhyAddr_HEVC.1942, PhyAddr.1930,
	add	r9, r1, #33792	@ PhyAddr.1931, PhyAddr.1930,
	str	r1, [r4, #1136]	@ PhyAddr.1930, <variable>.SedTopAddr
	str	ip, [r4, #1156]	@ PhyAddr.1934, <variable>.PpfdBufAddr
	str	r1, [r4, #1084]	@ PhyAddr.1930, <variable>.sed_top_phy_addr
	str	r1, [r4, #1088]	@ PhyAddr.1930, <variable>.pmv_top_phy_addr
	str	r1, [r4, #1092]	@ PhyAddr.1930, <variable>.pmv_left_phy_addr
	str	r9, [r4, #1140]	@ PhyAddr.1931, <variable>.PmvTopAddr
	add	r9, r1, #123904	@ PhyAddr.1933, PhyAddr.1930,
	str	r0, [r4, #1080]	@ PhyAddr.1928, <variable>.H264MnAddr
	str	r9, [r4, #1152]	@ PhyAddr.1933, <variable>.DblkTopAddr
	movw	r9, #799	@ tmp231,
	str	sl, [r4, #1148]	@ PhyAddr.1932, <variable>.ItransTopAddr
	str	r9, [r4, #1160]	@ tmp231, <variable>.PpfdBufLen
	add	r9, ip, #102400	@ PhyAddr.1935, PhyAddr.1934,
	str	r8, [r4, #1180]	@ PhyAddr.1937, <variable>.Vp8TabAddr
	str	r9, [r4, #1168]	@ PhyAddr.1935, <variable>.IntensityConvTabAddr
	add	r9, ip, #105472	@ PhyAddr.1936, PhyAddr.1934,
	str	r7, [r4, #1104]	@ PhyAddr_HEVC, <variable>.tile_segment_info_phy_addr
	add	ip, ip, #154624	@ PhyAddr.1938, PhyAddr.1934,
	str	r5, [r4, #1116]	@ PhyAddr_HEVC.1941, <variable>.sao_left_phy_addr
	str	ip, [r4, #1176]	@ PhyAddr.1938, <variable>.Vp6TabAddr
	add	ip, r1, #622592	@ PhyAddr_HEVC.1940, PhyAddr.1930,
	str	lr, [r4, #1124]	@ PhyAddr_HEVC.1942, <variable>.upmsgslot_phy_addr
	mov	r1, #0	@ tmp249,
	str	r9, [r4, #1172]	@ PhyAddr.1936, <variable>.BitplaneInfoAddr
	str	ip, [r4, #1108]	@ PhyAddr_HEVC.1940, <variable>.dblk_left_phy_addr
	str	sl, [r4, #1144]	@ PhyAddr.1932, <variable>.RcnTopAddr
	str	r8, [r4, #1184]	@ PhyAddr.1937, <variable>.DnrMbInfoAddr
	str	r7, [r4, #1096]	@ PhyAddr_HEVC, <variable>.rcn_top_phy_addr
	str	r5, [r4, #1112]	@ PhyAddr_HEVC.1941, <variable>.dblk_top_phy_addr
	str	lr, [r4, #1120]	@ PhyAddr_HEVC.1942, <variable>.sao_top_phy_addr
	str	r3, [r4, #1128]	@ PhyAddr_HEVC.1943, <variable>.ppfd_phy_addr
	str	r1, [r4, #1132]	@ tmp249, <variable>.ppfd_buf_len
	blt	.L703	@,
	bl	H264HAL_V300R001_InitHal	@
	subs	r5, r0, #0	@ D.51735,
	ldr	r0, [r4, #1100]	@, <variable>.mn_phy_addr
	mvnne	r5, #0	@, Ret,
	bl	HEVCHAL_V300R001_InitHal	@
	cmp	r0, #0	@,
	ldr	r0, [r4, #1080]	@, <variable>.H264MnAddr
	moveq	r4, r5	@, Ret, Ret
	mvnne	r4, #0	@, Ret,
	bl	H264HAL_V300R001_InitHal	@
	cmp	r0, #0	@,
	moveq	r0, r4	@, Ret, Ret
	mvnne	r0, #0	@, Ret,
.L696:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L715:
	mov	ip, #0	@ tmp197,
	movw	r1, #:lower16:.LC15	@,
	mov	r0, ip	@, tmp197
	movt	r1, #:upper16:.LC15	@,
	ldr	r2, .L716	@,
	str	ip, [sp, #0]	@ tmp197,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ Ret,
	b	.L696	@
.L714:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC62	@,
	movt	r1, #:upper16:.LC62	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ Ret,
	b	.L696	@
.L703:
	mov	r0, r1	@, tmp249
	mov	r3, r6	@, Size
	movw	r1, #:lower16:.LC65	@,
	movt	r1, #:upper16:.LC65	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ Ret,
	b	.L696	@
.L712:
	mov	r0, r5	@, MemBaseAddr
	movw	r1, #:lower16:.LC2	@,
	ldr	r2, .L716	@,
	movt	r1, #:upper16:.LC2	@,
	movw	r3, #:lower16:.LC60	@,
	movt	r3, #:upper16:.LC60	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ Ret,
	b	.L696	@
.L713:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC2	@,
	ldr	r2, .L716	@,
	movt	r1, #:upper16:.LC2	@,
	movw	r3, #:lower16:.LC61	@,
	movt	r3, #:upper16:.LC61	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ Ret,
	b	.L696	@
.L711:
	movw	r1, #:lower16:.LC2	@,
	ldr	r2, .L716	@,
	movt	r1, #:upper16:.LC2	@,
	movw	r3, #:lower16:.LC59	@,
	movt	r3, #:upper16:.LC59	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ Ret,
	b	.L696	@
.L717:
	.align	2
.L716:
	.word	.LANCHOR0+560
	.fnend
	.size	VDMHAL_V300R001_OpenHAL, .-VDMHAL_V300R001_OpenHAL
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	__func__.52673, %object
	.size	__func__.52673, 25
__func__.52673:
	.ascii	"VDMHAL_V300R001_IsVdmRun\000"
	.space	3
	.type	__func__.52654, %object
	.size	__func__.52654, 27
__func__.52654:
	.ascii	"VDMHAL_V300R001_IsVdmReady\000"
	.space	1
	.type	__func__.52188, %object
	.size	__func__.52188, 31
__func__.52188:
	.ascii	"VDMHAL_V300R001_ArrangeMem_BTL\000"
	.space	1
	.type	__func__.53506, %object
	.size	__func__.53506, 30
__func__.53506:
	.ascii	"VDMHAL_V300R001_StartHwDecode\000"
	.space	2
	.type	__func__.53388, %object
	.size	__func__.53388, 30
__func__.53388:
	.ascii	"VDMHAL_V300R001_StartHwRepair\000"
	.space	2
	.type	__func__.53123, %object
	.size	__func__.53123, 25
__func__.53123:
	.ascii	"VDMHAL_V300R001_CfgRpReg\000"
	.space	3
	.type	__func__.52932, %object
	.size	__func__.52932, 25
__func__.52932:
	.ascii	"VDMHAL_V300R001_CfgRpMsg\000"
	.space	3
	.type	__func__.53329, %object
	.size	__func__.53329, 30
__func__.53329:
	.ascii	"VDMHAL_V300R001_PrepareRepair\000"
	.space	2
	.type	__func__.52702, %object
	.size	__func__.52702, 27
__func__.52702:
	.ascii	"VDMHAL_V300R001_BackupInfo\000"
	.space	1
	.type	__func__.52554, %object
	.size	__func__.52554, 25
__func__.52554:
	.ascii	"VDMHAL_V300R001_CheckReg\000"
	.space	3
	.type	__func__.52514, %object
	.size	__func__.52514, 26
__func__.52514:
	.ascii	"VDMHAL_V300R001_EnableInt\000"
	.space	2
	.type	__func__.52482, %object
	.size	__func__.52482, 24
__func__.52482:
	.ascii	"VDMHAL_V300R001_MaskInt\000"
	.type	__func__.52420, %object
	.size	__func__.52420, 30
__func__.52420:
	.ascii	"VDMHAL_V300R001_ClearIntState\000"
	.space	2
	.type	__func__.52343, %object
	.size	__func__.52343, 25
__func__.52343:
	.ascii	"VDMHAL_V300R001_ResetVdm\000"
	.space	3
	.type	__func__.53208, %object
	.size	__func__.53208, 30
__func__.53208:
	.ascii	"VDMHAL_V300R001_MakeDecReport\000"
	.space	2
	.type	__func__.52597, %object
	.size	__func__.52597, 27
__func__.52597:
	.ascii	"VDMHAL_V300R001_PrepareDec\000"
	.space	1
	.type	__func__.51782, %object
	.size	__func__.51782, 27
__func__.51782:
	.ascii	"VDMHAL_V300R001_CalcFsSize\000"
	.space	1
	.type	__func__.51880, %object
	.size	__func__.51880, 34
__func__.51880:
	.ascii	"VDMHAL_V300R001_FillVdmMemElement\000"
	.space	2
	.type	__func__.51949, %object
	.size	__func__.51949, 27
__func__.51949:
	.ascii	"VDMHAL_V300R001_ArrangeMem\000"
	.space	1
	.type	__func__.51673, %object
	.size	__func__.51673, 24
__func__.51673:
	.ascii	"VDMHAL_V300R001_OpenHAL\000"
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"VDM register not mapped yet!\012\000"
	.space	2
.LC1:
	.ascii	"%s: RD_VREG but VdhId(%d) > MAX_VDH_NUM(%d)\012\000"
	.space	3
.LC2:
	.ascii	"%s: %s\012\000"
.LC3:
	.ascii	"VDM register not mapped yet!\000"
	.space	3
.LC4:
	.ascii	"WriteMsgSlot error!\012\000"
	.space	3
.LC5:
	.ascii	"ReadUpMsgSlot error! pDst=%p, pSrc=%p\012\000"
	.space	1
.LC6:
	.ascii	"ReadUpMsgSlot error! upmsg_size(%d) > 512\012\000"
	.space	1
.LC7:
	.ascii	"BigTile1d_y\000"
.LC8:
	.ascii	"failed mem_allocMemBlock BigTile_yuv save!\012\000"
.LC9:
	.ascii	"BigTile1d_uv\000"
	.space	3
.LC10:
	.ascii	"Mem addr is 0\000"
	.space	2
.LC11:
	.ascii	"image size out of range\000"
.LC12:
	.ascii	"'pVdmMemArrange' is NULL\000"
	.space	3
.LC13:
	.ascii	"MemSize not enough for pmv slot\000"
.LC14:
	.ascii	"VdhId is wrong! VDMHAL_V300R001_StartHwDecode\012\000"
	.space	1
.LC15:
	.ascii	"%s: VdhId(%d) > %d\012\000"
.LC16:
	.ascii	"%s: WR_VREG but VdhId(%d) > MAX_VDH_NUM(%d)\012\000"
	.space	3
.LC17:
	.ascii	"VdhId is wrong! VDMHAL_V300_CfgRpReg\012\000"
	.space	2
.LC18:
	.ascii	"vdm register virtual address not mapped, reset fail"
	.ascii	"ed!\012\000"
.LC19:
	.ascii	"can not map repair msg virtual address!\000"
.LC20:
	.ascii	"ValidGroupNum=%d out of range!\012\000"
.LC21:
	.ascii	"align_mb error\012\000"
.LC22:
	.ascii	"VdhId is wrong! VDMHAL_V200R003_PrepareRepair\012\000"
	.space	1
.LC23:
	.ascii	"vdm register virtual address not mapped, VDMHAL_V20"
	.ascii	"0R003_PrepareRepair failed!\012\000"
.LC24:
	.ascii	"FIRST_REPAIR Parameter Error!\012\000"
	.space	1
.LC25:
	.ascii	"VDMHAL_NULL_FUN_PRINT,L%d\012\000"
	.space	1
.LC26:
	.ascii	"SECOND_REPAIR Parameter Error!\012\000"
.LC27:
	.ascii	"pBackUpInfo = NULL!\000"
.LC28:
	.ascii	"VdhId is wrong! VDMHAL_V300R001_BackupInfo\012\000"
.LC29:
	.ascii	"can NOT map vir addr for up-msg\000"
.LC30:
	.ascii	"%s: VdhId(%d) Invalid!\012\000"
.LC31:
	.ascii	"%s: VdhId is wrong!\012\000"
	.space	3
.LC32:
	.ascii	"%s: vdm register virtual address not mapped, reset "
	.ascii	"failed!\012\000"
.LC33:
	.ascii	"%s: unkown reg_id = %d\012\000"
.LC34:
	.ascii	"VdhId is wrong! VDMHAL_V200R003_EnableInt\012\000"
	.space	1
.LC35:
	.ascii	"VdhId is wrong! VDMHAL_V200_MaskInt\012\000"
	.space	3
.LC36:
	.ascii	"VdhId is wrong! VDMHAL_V200R003_ClearIntState\012\000"
	.space	1
.LC37:
	.ascii	"VDMHAL_V300R001_ResetVdm: map vdm register fail, vi"
	.ascii	"r(reg) = (%p)\012\000"
	.space	2
.LC38:
	.ascii	"GLB Reset failed!\012\000"
	.space	1
.LC39:
	.ascii	"VdhId is wrong! VDMHAL_V300R001_ResetVdm\012\000"
	.space	2
.LC40:
	.ascii	"VDH: %d VDMHAL_V300R001_ResetVdm ERROR!!!\012\000"
	.space	1
.LC41:
	.ascii	"VdhId is wrong! VDMHAL_V300R001_CloseHAL\012\000"
	.space	2
.LC42:
	.ascii	"'pMakeDecReport' is NULL\000"
	.space	3
.LC43:
	.ascii	"'pDecReport' is NULL\000"
	.space	3
.LC44:
	.ascii	"pDecReport->DecSliceNum(%d) > %d, set to 0 for full"
	.ascii	" repair.\012\000"
	.space	3
.LC45:
	.ascii	"\012***** UpMsg DecSliceNum=%d\012\000"
	.space	3
.LC46:
	.ascii	"\012***** Up Msg (phy addr: %#8x) *****\012\000"
	.space	2
.LC47:
	.ascii	"\0120x%02x 0x%08x 0x%08x 0x%08x 0x%08x\012\000"
	.space	3
.LC48:
	.ascii	"\012***** Up Msg print finished *****\012\000"
.LC49:
	.ascii	"DFS, CurFsSize < 0, CurFsSize: %d\012\000"
	.space	1
.LC50:
	.ascii	"DFS, report event. Size: %#x, Num: %#x, RefChanged:"
	.ascii	" %#x\012\000"
	.space	3
.LC51:
	.ascii	"pVdmMemArrange is NULL\000"
	.space	1
.LC52:
	.ascii	"DFS, no ref frame!\012\000"
.LC53:
	.ascii	"DFS, Frame number = %d > 30, Then, Frame num = 30, "
	.ascii	"\012\000"
	.space	3
.LC54:
	.ascii	"%s, FrameStore %d over bountry, Offset: 0x%x, curFs"
	.ascii	"Size: 0x%x, phyadd: 0x%x\012\000"
	.space	3
.LC55:
	.ascii	"VDMHAL_V300R001_ArrangeMem Mem addr is NULL\000"
.LC56:
	.ascii	"VDMHAL_V200R003_ArrangeMem get ChanWidth/ChanHeight"
	.ascii	" failed!\012\000"
	.space	3
.LC57:
	.ascii	"ImgSlotLen > ChanSlotLen\000"
	.space	3
.LC58:
	.ascii	"cann't allocate img slot\000"
	.space	3
.LC59:
	.ascii	"pOpenParam = NULL error!\000"
	.space	3
.LC60:
	.ascii	"MemBaseAddr = 0 error!\000"
	.space	1
.LC61:
	.ascii	"VDMHAL_V300R001_OpenHAL: Size error!\000"
	.space	3
.LC62:
	.ascii	"VdhId is wrong! VDMHAL_V300R001_OpenHAL\012\000"
	.space	3
.LC63:
	.ascii	"g_VdmRegVirAddr, g_VdmResetVirAddr = %p\012\000"
	.space	3
.LC64:
	.ascii	"BPDRegVirAddr %p\012\000"
	.space	2
.LC65:
	.ascii	"!!!!!! HAL memory not enouph! need %d, have %d\012\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
