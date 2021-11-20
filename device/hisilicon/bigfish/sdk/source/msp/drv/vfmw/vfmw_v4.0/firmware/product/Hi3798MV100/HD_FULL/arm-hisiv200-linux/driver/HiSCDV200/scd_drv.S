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
	.file	"scd_drv.c"
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
@ -DKBUILD_BASENAME=KBUILD_STR(scd_drv)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiSCDV200/.scd_drv.o.d
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiSCDV200/scd_drv.c
@ -mlittle-endian -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -marm -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiSCDV200/scd_drv.o -O2 -Wall
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
	.global	GetInstIDByRawArray
	.type	GetInstIDByRawArray, %function
GetInstIDByRawArray:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp185,
	movt	r3, #:upper16:.LANCHOR0	@ tmp185,
	ldr	r2, [r3, #40]	@ temp.763, <variable>.pSmInstArray
	cmp	r2, #0	@ temp.763,
	beq	.L2	@,
	add	r2, r2, #208	@ tmp153, temp.763,
	cmp	r2, r0	@ tmp153, pRawArray
	moveq	r0, #0	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L2:
	ldr	r2, [r3, #88]	@ temp.765, <variable>.pSmInstArray
	cmp	r2, #0	@ temp.765,
	beq	.L4	@,
	add	r1, r2, #208	@ tmp155, temp.765,
	cmp	r1, r0	@ tmp155, pRawArray
	moveq	r0, #1	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L4:
	ldr	r2, [r3, #136]	@ temp.767, <variable>.pSmInstArray
	cmp	r2, #0	@ temp.767,
	beq	.L5	@,
	add	ip, r2, #208	@ tmp157, temp.767,
	cmp	ip, r0	@ tmp157, pRawArray
	moveq	r0, #2	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L5:
	ldr	r2, [r3, #184]	@ temp.769, <variable>.pSmInstArray
	cmp	r2, #0	@ temp.769,
	beq	.L6	@,
	add	r2, r2, #208	@ tmp159, temp.769,
	cmp	r2, r0	@ tmp159, pRawArray
	moveq	r0, #3	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L6:
	ldr	r2, [r3, #232]	@ temp.771, <variable>.pSmInstArray
	cmp	r2, #0	@ temp.771,
	beq	.L7	@,
	add	r1, r2, #208	@ tmp161, temp.771,
	cmp	r1, r0	@ tmp161, pRawArray
	moveq	r0, #4	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L7:
	ldr	r2, [r3, #280]	@ temp.773, <variable>.pSmInstArray
	cmp	r2, #0	@ temp.773,
	beq	.L8	@,
	add	ip, r2, #208	@ tmp163, temp.773,
	cmp	ip, r0	@ tmp163, pRawArray
	moveq	r0, #5	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L8:
	ldr	r2, [r3, #328]	@ temp.775, <variable>.pSmInstArray
	cmp	r2, #0	@ temp.775,
	beq	.L9	@,
	add	r2, r2, #208	@ tmp165, temp.775,
	cmp	r2, r0	@ tmp165, pRawArray
	moveq	r0, #6	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L9:
	ldr	r2, [r3, #376]	@ temp.777, <variable>.pSmInstArray
	cmp	r2, #0	@ temp.777,
	beq	.L10	@,
	add	r1, r2, #208	@ tmp167, temp.777,
	cmp	r1, r0	@ tmp167, pRawArray
	moveq	r0, #7	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L10:
	ldr	r2, [r3, #424]	@ temp.779, <variable>.pSmInstArray
	cmp	r2, #0	@ temp.779,
	beq	.L11	@,
	add	ip, r2, #208	@ tmp169, temp.779,
	cmp	ip, r0	@ tmp169, pRawArray
	moveq	r0, #8	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L11:
	ldr	r2, [r3, #472]	@ temp.781, <variable>.pSmInstArray
	cmp	r2, #0	@ temp.781,
	beq	.L12	@,
	add	r2, r2, #208	@ tmp171, temp.781,
	cmp	r2, r0	@ tmp171, pRawArray
	moveq	r0, #9	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L12:
	ldr	r2, [r3, #520]	@ temp.783, <variable>.pSmInstArray
	cmp	r2, #0	@ temp.783,
	beq	.L13	@,
	add	r1, r2, #208	@ tmp173, temp.783,
	cmp	r1, r0	@ tmp173, pRawArray
	moveq	r0, #10	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L13:
	ldr	r2, [r3, #568]	@ temp.785, <variable>.pSmInstArray
	cmp	r2, #0	@ temp.785,
	beq	.L14	@,
	add	ip, r2, #208	@ tmp175, temp.785,
	cmp	ip, r0	@ tmp175, pRawArray
	moveq	r0, #11	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L14:
	ldr	r2, [r3, #616]	@ temp.787, <variable>.pSmInstArray
	cmp	r2, #0	@ temp.787,
	beq	.L15	@,
	add	r2, r2, #208	@ tmp177, temp.787,
	cmp	r2, r0	@ tmp177, pRawArray
	moveq	r0, #12	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L15:
	ldr	r2, [r3, #664]	@ temp.789, <variable>.pSmInstArray
	cmp	r2, #0	@ temp.789,
	beq	.L16	@,
	add	r1, r2, #208	@ tmp179, temp.789,
	cmp	r1, r0	@ tmp179, pRawArray
	moveq	r0, #13	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L16:
	ldr	r2, [r3, #712]	@ temp.791, <variable>.pSmInstArray
	cmp	r2, #0	@ temp.791,
	beq	.L17	@,
	add	ip, r2, #208	@ tmp181, temp.791,
	cmp	ip, r0	@ tmp181, pRawArray
	moveq	r0, #14	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L17:
	ldr	r3, [r3, #760]	@ D.49684, <variable>.pSmInstArray
	cmp	r3, #0	@ D.49684,
	beq	.L18	@,
	add	r3, r3, #208	@ tmp183, D.49684,
	cmp	r3, r0	@ tmp183, pRawArray
	moveq	r0, #15	@ i,
	ldmeqfd	sp, {fp, sp, pc}	@
.L18:
	mvn	r0, #0	@ i,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	GetInstIDByRawArray, .-GetInstIDByRawArray
	.align	2
	.global	GetRawState
	.type	GetRawState, %function
GetRawState:
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
	cmp	r0, #15	@ SmID,
	bls	.L25	@,
.L22:
	mvn	r0, #3	@ Ret,
	ldmfd	sp, {fp, sp, pc}	@
.L25:
	add	r0, r0, r0, asl #1	@, tmp141, SmID, SmID,
	movw	r1, #:lower16:.LANCHOR0	@ tmp137,
	movt	r1, #:upper16:.LANCHOR0	@ tmp137,
	add	r3, r1, r0, asl #4	@, tmp143, tmp137, tmp141,
	ldr	r3, [r3, #40]	@ D.49782, <variable>.pSmInstArray
	cmp	r3, #0	@ D.49782,
	beq	.L22	@,
	movw	ip, #:lower16:98516	@ tmp145,
	movt	ip, #:upper16:98516	@ tmp145,
	movw	r2, #:lower16:98520	@ tmp155,
	movt	r2, #:upper16:98520	@ tmp155,
	ldr	r0, [r3, ip]	@ <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Tail
	ldr	ip, [r3, r2]	@ <variable>.RawPacketArray.History, <variable>.RawPacketArray.History
	add	r3, r0, #1	@ tmp146, <variable>.RawPacketArray.Tail,
	mov	r2, r3, asr #31	@ tmp149, tmp146,
	mov	r2, r2, lsr #22	@ tmp150, tmp149,
	add	r1, r3, r2	@ tmp151, tmp146, tmp150
	mov	r3, r1, asl #22	@ tmp152, tmp151,
	mov	r1, r3, lsr #22	@ tmp152, tmp152,
	rsb	r3, r2, r1	@ tmp154, tmp150, tmp152
	cmp	r3, ip	@ tmp154, <variable>.RawPacketArray.History
	movne	r0, #0	@ Ret,
	ldmnefd	sp, {fp, sp, pc}	@
	b	.L22	@
	.fnend
	.size	GetRawState, .-GetRawState
	.align	2
	.global	SetFirstOffset
	.type	SetFirstOffset, %function
SetFirstOffset:
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
	cmp	r0, #0	@ pRawStreamArray
	bne	.L31	@,
.L27:
	mvn	r0, #0	@ D.49838,
	ldmfd	sp, {fp, sp, pc}	@
.L31:
	movw	ip, #:lower16:98308	@ tmp140,
	movt	ip, #:upper16:98308	@ tmp140,
	mov	r2, #98304	@ tmp139,
	ldr	r2, [r0, r2]	@ D.49839, <variable>.Head
	ldr	r3, [r0, ip]	@ <variable>.Tail, <variable>.Tail
	cmp	r2, r3	@ D.49839, <variable>.Tail
	mvneq	r0, #2	@ D.49838,
	ldmeqfd	sp, {fp, sp, pc}	@
	add	ip, r2, r2, asl #1	@, tmp146, D.49839, D.49839,
	movw	r3, #:lower16:98316	@ tmp142,
	movt	r3, #:upper16:98316	@ tmp142,
	add	r2, r0, ip, asl #5	@, tmp148, pRawStreamArray, tmp146,
	ldr	ip, [r0, r3]	@ <variable>.FirstPacketOffset, <variable>.FirstPacketOffset
	ldr	r2, [r2, #8]	@ <variable>.Length, <variable>.Length
	add	r1, r1, ip	@ TargetOffset, Offset, <variable>.FirstPacketOffset
	cmp	r1, r2	@ TargetOffset, <variable>.Length
	strlt	r1, [r0, r3]	@ TargetOffset, <variable>.FirstPacketOffset
	movlt	r0, #0	@ D.49838,
	ldmltfd	sp, {fp, sp, pc}	@
	b	.L27	@
	.fnend
	.size	SetFirstOffset, .-SetFirstOffset
	.align	2
	.global	GetFirstOffset
	.type	GetFirstOffset, %function
GetFirstOffset:
	.fnstart
.LFB1541:
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
	cmp	r0, #0	@ pRawStreamArray,
	cmpne	r1, #0	@, pOffset,
	mov	r3, r0	@ pRawStreamArray, pRawStreamArray
	movne	r0, #0	@, tmp143
	moveq	r0, #1	@, tmp143
	mvneq	r0, #0	@ D.49858,
	ldmeqfd	sp, {fp, sp, pc}	@
	movw	r2, #:lower16:98308	@ tmp145,
	movt	r2, #:upper16:98308	@ tmp145,
	mov	ip, #98304	@ tmp144,
	ldr	r2, [r3, r2]	@ <variable>.Tail, <variable>.Tail
	ldr	ip, [r3, ip]	@ <variable>.Head, <variable>.Head
	cmp	ip, r2	@ <variable>.Head, <variable>.Tail
	movwne	r2, #:lower16:98316	@ tmp148,
	movtne	r2, #:upper16:98316	@ tmp148,
	mvneq	r0, #2	@ D.49858,
	ldrne	r3, [r3, r2]	@ <variable>.FirstPacketOffset, <variable>.FirstPacketOffset
	strne	r3, [r1, #0]	@ <variable>.FirstPacketOffset,* pOffset
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	GetFirstOffset, .-GetFirstOffset
	.align	2
	.global	GetRawStreamSize
	.type	GetRawStreamSize, %function
GetRawStreamSize:
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
	cmp	r0, #0	@ pRawStreamArray
	bne	.L41	@,
.L38:
	mvn	r0, #0	@ D.50082,
	ldmfd	sp, {fp, sp, pc}	@
.L41:
	movw	ip, #:lower16:98324	@ tmp139,
	movt	ip, #:upper16:98324	@ tmp139,
	movw	r3, #:lower16:98316	@ tmp140,
	movt	r3, #:upper16:98316	@ tmp140,
	ldr	r2, [r0, ip]	@ D.50083, <variable>.RawTotalSize
	str	r2, [r1, #0]	@ D.50083,* pStreamSize
	ldr	ip, [r0, r3]	@ <variable>.FirstPacketOffset, <variable>.FirstPacketOffset
	rsb	r3, ip, r2	@ D.50086, <variable>.FirstPacketOffset, D.50083
	str	r3, [r1, #0]	@ D.50086,* pStreamSize
	cmp	r3, #0	@ D.50086,
	movge	r0, #0	@ D.50082,
	ldmgefd	sp, {fp, sp, pc}	@
	b	.L38	@
	.fnend
	.size	GetRawStreamSize, .-GetRawStreamSize
	.align	2
	.global	GetRawStreamNum
	.type	GetRawStreamNum, %function
GetRawStreamNum:
	.fnstart
.LFB1548:
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
	cmp	r0, #0	@ pRawStreamArray
	mvneq	r0, #0	@ D.50095,
	ldmeqfd	sp, {fp, sp, pc}	@
	movw	r3, #:lower16:98308	@ tmp138,
	movt	r3, #:upper16:98308	@ tmp138,
	mov	ip, #98304	@ tmp139,
	ldr	r2, [r0, ip]	@ <variable>.Head, <variable>.Head
	ldr	ip, [r0, r3]	@ <variable>.Tail, <variable>.Tail
	mov	r0, #0	@ D.50095,
	rsb	r3, r2, ip	@ D.50098, <variable>.Head, <variable>.Tail
	str	r3, [r1, #0]	@ D.50098,* pStreamNum
	cmp	r3, #0	@ D.50098,
	addlt	r3, r3, #1024	@ tmp142, D.50098,
	strlt	r3, [r1, #0]	@ tmp142,* pStreamNum
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	GetRawStreamNum, .-GetRawStreamNum
	.align	2
	.global	GetRawStreamNumInBuffer
	.type	GetRawStreamNumInBuffer, %function
GetRawStreamNumInBuffer:
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
	cmp	r0, #0	@ pRawStreamArray
	mvneq	r0, #0	@ D.50109,
	ldmeqfd	sp, {fp, sp, pc}	@
	movw	ip, #:lower16:98308	@ tmp138,
	movw	r3, #:lower16:98312	@ tmp139,
	movt	ip, #:upper16:98308	@ tmp138,
	movt	r3, #:upper16:98312	@ tmp139,
	ldr	r2, [r0, ip]	@ <variable>.Tail, <variable>.Tail
	ldr	ip, [r0, r3]	@ <variable>.History, <variable>.History
	mov	r0, #0	@ D.50109,
	rsb	r3, ip, r2	@ D.50112, <variable>.History, <variable>.Tail
	str	r3, [r1, #0]	@ D.50112,* pStreamNum
	cmp	r3, #0	@ D.50112,
	addlt	r3, r3, #1024	@ tmp142, D.50112,
	strlt	r3, [r1, #0]	@ tmp142,* pStreamNum
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	GetRawStreamNumInBuffer, .-GetRawStreamNumInBuffer
	.align	2
	.global	GetSegBuf
	.type	GetSegBuf, %function
GetSegBuf:
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
	cmp	r0, #0	@ pStreamSegArray,
	cmpne	r1, #0	@, pBufAddr,
	ldmeqfd	sp, {fp, sp, pc}	@
	cmp	r2, #0	@ pBufLength,
	ldmeqfd	sp, {fp, sp, pc}	@
	movw	ip, #:lower16:92184	@ tmp143,
	movt	ip, #:upper16:92184	@ tmp143,
	movw	r3, #:lower16:92188	@ tmp145,
	movt	r3, #:upper16:92188	@ tmp145,
	ldr	ip, [r0, ip]	@ <variable>.SegBufPhyAddr, <variable>.SegBufPhyAddr
	str	ip, [r1, #0]	@ <variable>.SegBufPhyAddr,* pBufAddr
	ldr	r3, [r0, r3]	@ <variable>.SegBufSize, <variable>.SegBufSize
	str	r3, [r2, #0]	@ <variable>.SegBufSize,* pBufLength
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	GetSegBuf, .-GetSegBuf
	.align	2
	.global	GetFreeSegBuf
	.type	GetFreeSegBuf, %function
GetFreeSegBuf:
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
	cmp	r0, #0	@ pStreamSegArray,
	cmpne	r1, #0	@, pAddr,
	movne	r3, #0	@, tmp146
	moveq	r3, #1	@, tmp146
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	cmp	r2, #0	@ pLength,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	movw	ip, #:lower16:92196	@ tmp147,
	movt	ip, #:upper16:92196	@ tmp147,
	movw	r4, #:lower16:92192	@ tmp151,
	movt	r4, #:upper16:92192	@ tmp151,
	ldr	r5, [r0, ip]	@ <variable>.SegBufWriteAddr, <variable>.SegBufWriteAddr
	str	r5, [r1, #0]	@ <variable>.SegBufWriteAddr,* pAddr
	str	r3, [r2, #0]	@ tmp146,* pLength
	ldr	r1, [r0, ip]	@ temp.979, <variable>.SegBufWriteAddr
	ldr	ip, [r0, r4]	@ D.50185, <variable>.SegBufReadAddr
	cmp	r1, ip	@ temp.979, D.50185
	bgt	.L61	@,
	movw	r3, #:lower16:92188	@ tmp156,
	movt	r3, #:upper16:92188	@ tmp156,
	sublt	ip, ip, #1	@ tmp155, D.50185,
	ldrge	r3, [r0, r3]	@ prephitmp.968, <variable>.SegBufSize
	rsblt	r1, r1, ip	@ Len, temp.979, tmp155
	ldrlt	r3, [r0, r3]	@ prephitmp.968, <variable>.SegBufSize
	subge	r1, r3, #1	@ Len, prephitmp.968,
	cmp	r1, r3	@ Len, prephitmp.968
	strle	r1, [r2, #0]	@ Len,* pLength
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L61:
	movw	r3, #:lower16:92188	@ tmp152,
	movt	r3, #:upper16:92188	@ tmp152,
	ldr	r3, [r0, r3]	@ prephitmp.968, <variable>.SegBufSize
	add	ip, ip, r3	@ tmp153, D.50185, prephitmp.968
	sub	r0, ip, #1	@ tmp154, tmp153,
	rsb	r1, r1, r0	@ Len, temp.979, tmp154
	cmp	r1, r3	@ Len, prephitmp.968
	strle	r1, [r2, #0]	@ Len,* pLength
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	GetFreeSegBuf, .-GetFreeSegBuf
	.align	2
	.global	CheckStream
	.type	CheckStream, %function
CheckStream:
	.fnstart
.LFB1554:
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
	movw	r3, #:lower16:s_pstVfmwChan	@ tmp149,
	movt	r3, #:upper16:s_pstVfmwChan	@ tmp149,
	mov	r5, r1	@ InstID, InstID
	ldr	r4, [r3, r1, asl #2]	@ pstChan, s_pstVfmwChan
	ldr	r3, [r4, #552]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #0	@ <variable>.eVidStd,
	cmpne	r3, #3	@, <variable>.eVidStd,
	ldmnefd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	movw	r2, #:lower16:251572	@ tmp157,
	movt	r2, #:upper16:251572	@ tmp157,
	ldr	r1, [r4, r2]	@ D.50210, <variable>.s32FindStartCodeCnt
	cmp	r1, #199	@ D.50210,
	ldmgtfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	ldrb	ip, [r0, #0]	@ zero_extendqisi2	@ tmp158,* pSegBufVirAddr
	cmp	ip, #0	@ tmp158,
	bne	.L64	@,
	ldrb	r6, [r0, #1]	@ zero_extendqisi2	@ tmp159,
	cmp	r6, #0	@ tmp159,
	bne	.L64	@,
	ldrb	r7, [r0, #2]	@ zero_extendqisi2	@ tmp160,
	cmp	r7, #1	@ tmp160,
	beq	.L75	@,
.L64:
	movw	r2, #:lower16:251580	@ tmp255,
	movw	r0, #:lower16:251584	@ tmp258,
	movt	r2, #:upper16:251580	@ tmp255,
	movt	r0, #:upper16:251584	@ tmp258,
	movw	r6, #:lower16:251572	@ tmp252,
	movw	r7, #:lower16:251576	@ tmp254,
	ldr	sl, [r4, r2]	@ <variable>.s32LastOneStartCode, <variable>.s32LastOneStartCode
	movt	r6, #:upper16:251572	@ tmp252,
	ldr	r8, [r4, r0]	@ <variable>.s32CurrentStartCode, <variable>.s32CurrentStartCode
	movt	r7, #:upper16:251576	@ tmp254,
	mov	ip, #0	@ tmp261,
	add	r1, r1, #1	@ tmp253, D.50210,
	str	ip, [r4, r0]	@ tmp261, <variable>.s32CurrentStartCode
	str	sl, [r4, r7]	@ <variable>.s32LastOneStartCode, <variable>.s32LastTwoStartCode
	str	r8, [r4, r2]	@ <variable>.s32CurrentStartCode, <variable>.s32LastOneStartCode
	str	r1, [r4, r6]	@ tmp253, <variable>.s32FindStartCodeCnt
.L67:
	movw	r2, #:lower16:251568	@ tmp221,
	movt	r2, #:upper16:251568	@ tmp221,
	ldr	r1, [r4, r2]	@ <variable>.s32Mpeg2Score, <variable>.s32Mpeg2Score
	add	r0, r1, #1	@ tmp224, <variable>.s32Mpeg2Score,
	str	r0, [r4, r2]	@ tmp224, <variable>.s32Mpeg2Score
.L68:
	movw	r0, #:lower16:251572	@ tmp225,
	movt	r0, #:upper16:251572	@ tmp225,
	ldr	r2, [r4, r0]	@ prephitmp.1001, <variable>.s32FindStartCodeCnt
	cmp	r2, #2	@ prephitmp.1001,
	ldmlefd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	cmp	ip, #0	@ D.50238,
	beq	.L69	@,
	movw	r0, #:lower16:251584	@ tmp226,
	movw	r1, #:lower16:251580	@ tmp227,
	movt	r0, #:upper16:251584	@ tmp226,
	movt	r1, #:upper16:251580	@ tmp227,
	ldr	r0, [r4, r0]	@ temp.1015, <variable>.s32CurrentStartCode
	ldr	r1, [r4, r1]	@ temp.1016, <variable>.s32LastOneStartCode
	rsb	ip, r1, r0	@ tmp228, temp.1016, temp.1015
	cmp	ip, #1	@ tmp228,
	beq	.L76	@,
.L70:
	cmp	r0, r1	@ temp.1015, temp.1016
	beq	.L77	@,
.L69:
	cmp	r2, #199	@ prephitmp.1001,
	ldmlefd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	movw	r7, #:lower16:251564	@ tmp242,
	movw	r6, #:lower16:251568	@ tmp243,
	movt	r7, #:upper16:251564	@ tmp242,
	movt	r6, #:upper16:251568	@ tmp243,
	ldr	r2, [r4, r7]	@ prephitmp.1026, <variable>.s32H264Score
	ldr	r1, [r4, r6]	@ prephitmp.1025, <variable>.s32Mpeg2Score
	rsb	ip, r1, r2	@ tmp244, prephitmp.1025, prephitmp.1026
	cmp	ip, #49	@ tmp244,
	ble	.L73	@,
	cmp	r3, #3	@ <variable>.eVidStd,
	beq	.L78	@,
.L73:
	rsb	r2, r2, r1	@ tmp249, prephitmp.1026, prephitmp.1025
	cmp	r2, #49	@ tmp249,
	ldmlefd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	ldr	r2, [r4, #552]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r2, #0	@ <variable>.eVidStd,
	ldmnefd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	movw	r0, #:lower16:g_event_report	@ tmp251,
	movt	r0, #:upper16:g_event_report	@ tmp251,
	ldr	ip, [r0, #0]	@ g_event_report.1023, g_event_report
	cmp	ip, #0	@ g_event_report.1023,
	ldmeqfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	mov	r0, r5	@, InstID
	mov	r1, #121	@,
	mov	r3, r2	@,
	blx	ip	@ g_event_report.1023
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L76:
	movw	ip, #:lower16:251576	@ tmp229,
	movt	ip, #:upper16:251576	@ tmp229,
	ldr	ip, [r4, ip]	@ <variable>.s32LastTwoStartCode, <variable>.s32LastTwoStartCode
	rsb	ip, ip, r1	@ tmp230, <variable>.s32LastTwoStartCode, temp.1016
	cmp	ip, #1	@ tmp230,
	bne	.L70	@,
.L71:
	cmp	r0, #1	@ temp.1015,
	beq	.L69	@,
	cmp	r0, #20	@ temp.1015,
	beq	.L69	@,
	movw	r1, #:lower16:251564	@ tmp234,
	movt	r1, #:upper16:251564	@ tmp234,
	movw	r2, #:lower16:251572	@ tmp241,
	movt	r2, #:upper16:251572	@ tmp241,
	ldr	r0, [r4, r1]	@ temp.1018, <variable>.s32H264Score
	ldr	r2, [r4, r2]	@ prephitmp.1001, <variable>.s32FindStartCodeCnt
	cmp	r0, #0	@ temp.1018,
	subgt	r0, r0, #1	@ tmp236, temp.1018,
	strgt	r0, [r4, r1]	@ tmp236, <variable>.s32H264Score
	movw	r1, #:lower16:251568	@ tmp237,
	movt	r1, #:upper16:251568	@ tmp237,
	ldr	ip, [r4, r1]	@ <variable>.s32Mpeg2Score, <variable>.s32Mpeg2Score
	add	r0, ip, #1	@ tmp240, <variable>.s32Mpeg2Score,
	str	r0, [r4, r1]	@ tmp240, <variable>.s32Mpeg2Score
	b	.L69	@
.L77:
	movw	ip, #:lower16:251576	@ tmp232,
	movt	ip, #:upper16:251576	@ tmp232,
	ldr	r1, [r4, ip]	@ <variable>.s32LastTwoStartCode, <variable>.s32LastTwoStartCode
	cmp	r0, r1	@ temp.1015, <variable>.s32LastTwoStartCode
	bne	.L69	@,
	b	.L71	@
.L78:
	movw	r3, #:lower16:g_event_report	@ tmp246,
	movt	r3, #:upper16:g_event_report	@ tmp246,
	ldr	ip, [r3, #0]	@ g_event_report.485, g_event_report
	cmp	ip, #0	@ g_event_report.485,
	beq	.L73	@,
	mov	r2, #0	@,
	mov	r1, #121	@,
	mov	r3, r2	@,
	mov	r0, r5	@, InstID
	blx	ip	@ g_event_report.485
	ldr	r1, [r4, r6]	@ prephitmp.1025, <variable>.s32Mpeg2Score
	ldr	r2, [r4, r7]	@ prephitmp.1026, <variable>.s32H264Score
	b	.L73	@
.L75:
	ldrb	r0, [r0, #3]	@ zero_extendqisi2	@ u8Data,
	movw	r6, #:lower16:251580	@ tmp164,
	movw	r7, #:lower16:251584	@ tmp167,
	movt	r6, #:upper16:251580	@ tmp164,
	movt	r7, #:upper16:251584	@ tmp167,
	and	ip, r0, #31	@ D.50238, u8Data,
	ldr	r9, [r4, r6]	@ <variable>.s32LastOneStartCode, <variable>.s32LastOneStartCode
	sub	r8, ip, #1	@ tmp171, D.50238,
	ldr	sl, [r4, r7]	@ <variable>.s32CurrentStartCode, <variable>.s32CurrentStartCode
	cmp	r8, #12	@ tmp171,
	movw	r8, #:lower16:251576	@ tmp163,
	movt	r8, #:upper16:251576	@ tmp163,
	add	r1, r1, #1	@ tmp162, D.50210,
	str	ip, [r4, r7]	@ D.50238, <variable>.s32CurrentStartCode
	str	r9, [r4, r8]	@ <variable>.s32LastOneStartCode, <variable>.s32LastTwoStartCode
	str	r1, [r4, r2]	@ tmp162, <variable>.s32FindStartCodeCnt
	str	sl, [r4, r6]	@ <variable>.s32CurrentStartCode, <variable>.s32LastOneStartCode
	bhi	.L79	@,
.L65:
	movw	r2, #:lower16:251564	@ tmp177,
	movt	r2, #:upper16:251564	@ tmp177,
	cmp	r0, #0	@ u8Data,
	cmpne	r0, #177	@, u8Data,
	ldr	r6, [r4, r2]	@ <variable>.s32H264Score, <variable>.s32H264Score
	movne	r1, #0	@, prephitmp.1003
	moveq	r1, #1	@, prephitmp.1003
	add	r6, r6, #1	@ tmp180, <variable>.s32H264Score,
	str	r6, [r4, r2]	@ tmp180, <variable>.s32H264Score
.L66:
	cmp	r1, #0	@ prephitmp.1003,
	bne	.L67	@,
	cmp	r0, #178	@ u8Data,
	cmpne	r0, #179	@, u8Data,
	beq	.L67	@,
	cmp	r0, #180	@ u8Data,
	cmpne	r0, #181	@, u8Data,
	beq	.L67	@,
	cmp	r0, #183	@ u8Data,
	cmpne	r0, #184	@, u8Data,
	beq	.L67	@,
	cmp	r0, #185	@ u8Data,
	cmpne	r0, #186	@, u8Data,
	beq	.L67	@,
	cmp	r0, #187	@ u8Data,
	movne	r1, #0	@, tmp217
	moveq	r1, #1	@, tmp217
	cmp	r0, #184	@ u8Data,
	movls	r0, r1	@, tmp220, tmp217
	orrhi	r0, r1, #1	@,, tmp220, tmp217
	cmp	r0, #0	@ tmp220,
	beq	.L68	@,
	b	.L67	@
.L79:
	cmp	ip, #19	@ D.50238,
	beq	.L65	@,
	cmp	r0, #0	@ u8Data,
	cmpne	r0, #177	@, u8Data,
	movne	r1, #0	@, prephitmp.1003
	moveq	r1, #1	@, prephitmp.1003
	cmp	ip, #30	@ D.50238,
	beq	.L65	@,
	cmp	ip, #31	@ D.50238,
	beq	.L65	@,
	b	.L66	@
	.fnend
	.size	CheckStream, .-CheckStream
	.align	2
	.global	GetSegStreamSize
	.type	GetSegStreamSize, %function
GetSegStreamSize:
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
	subs	r3, r0, #0	@ pSegStreamArray, pSegStreamArray
	movwne	r2, #:lower16:92200	@ tmp137,
	movtne	r2, #:upper16:92200	@ tmp137,
	mvneq	r0, #0	@ D.50467,
	movne	r0, #0	@ D.50467,
	ldrne	r3, [r3, r2]	@ <variable>.SegTotalSize, <variable>.SegTotalSize
	strne	r3, [r1, #0]	@ <variable>.SegTotalSize,* pStreamSize
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	GetSegStreamSize, .-GetSegStreamSize
	.align	2
	.global	GetSegStreamNum
	.type	GetSegStreamNum, %function
GetSegStreamNum:
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
	cmp	r0, #0	@ pSegStreamArray
	mvneq	r0, #0	@ D.50475,
	ldmeqfd	sp, {fp, sp, pc}	@
	movw	ip, #:lower16:92172	@ tmp138,
	movw	r3, #:lower16:92168	@ tmp139,
	movt	ip, #:upper16:92172	@ tmp138,
	movt	r3, #:upper16:92168	@ tmp139,
	ldr	r2, [r0, ip]	@ <variable>.Tail, <variable>.Tail
	ldr	ip, [r0, r3]	@ <variable>.Head, <variable>.Head
	mov	r0, #0	@ D.50475,
	rsb	r3, ip, r2	@ D.50478, <variable>.Head, <variable>.Tail
	str	r3, [r1, #0]	@ D.50478,* pStreamNum
	cmp	r3, #0	@ D.50478,
	addlt	r3, r3, #1152	@ tmp142, D.50478,
	strlt	r3, [r1, #0]	@ tmp142,* pStreamNum
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	GetSegStreamNum, .-GetSegStreamNum
	.align	2
	.global	GetFreshSegStream
	.type	GetFreshSegStream, %function
GetFreshSegStream:
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
	cmp	r0, #0	@ pSegStreamArray
	ldmeqfd	sp, {fp, sp, pc}	@
	movw	ip, #:lower16:92208	@ tmp136,
	movt	ip, #:upper16:92208	@ tmp136,
	movw	r3, #:lower16:92204	@ tmp138,
	movt	r3, #:upper16:92204	@ tmp138,
	ldr	ip, [r0, ip]	@ <variable>.SegFreshNum, <variable>.SegFreshNum
	str	ip, [r1, #0]	@ <variable>.SegFreshNum,* pFreshNum
	ldr	r3, [r0, r3]	@ <variable>.SegFreshSize, <variable>.SegFreshSize
	str	r3, [r2, #0]	@ <variable>.SegFreshSize,* pFreshSize
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	GetFreshSegStream, .-GetFreshSegStream
	.align	2
	.global	SCDDRV_PrepareSleep
	.type	SCDDRV_PrepareSleep, %function
SCDDRV_PrepareSleep:
	.fnstart
.LFB1561:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp136,
	movt	r3, #:upper16:.LANCHOR0	@ tmp136,
	add	r2, r3, r0, asl #2	@, tmp139, tmp136, ScdId,
	ldr	r1, [r2, #768]	@ tmp141, s_eScdDrvSleepStage
	cmp	r1, #0	@ tmp141,
	mvnne	r0, #0	@ ret,
	ldmnefd	sp, {fp, sp, pc}	@
	add	r0, r0, r0, asl #1	@, tmp146, ScdId, ScdId,
	add	r3, r3, r0, asl #5	@, tmp148, tmp136, tmp146,
	ldr	r0, [r3, #856]	@ <variable>.SCDState, <variable>.SCDState
	cmp	r0, #0	@ <variable>.SCDState,
	moveq	r3, #2	@ tmp156,
	movne	r3, #1	@ tmp162,
	streq	r3, [r2, #768]	@ tmp156, s_eScdDrvSleepStage
	movne	r0, r1	@ ret, tmp141
	strne	r3, [r2, #768]	@ tmp162, s_eScdDrvSleepStage
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	SCDDRV_PrepareSleep, .-SCDDRV_PrepareSleep
	.align	2
	.global	SCDDRV_GetSleepStage
	.type	SCDDRV_GetSleepStage, %function
SCDDRV_GetSleepStage:
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
	movw	r1, #:lower16:.LANCHOR0	@ tmp136,
	movt	r1, #:upper16:.LANCHOR0	@ tmp136,
	add	r3, r1, r0, asl #2	@, tmp139, tmp136, ScdId,
	ldr	r0, [r3, #768]	@, s_eScdDrvSleepStage
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	SCDDRV_GetSleepStage, .-SCDDRV_GetSleepStage
	.align	2
	.global	SCDDRV_ForceSleep
	.type	SCDDRV_ForceSleep, %function
SCDDRV_ForceSleep:
	.fnstart
.LFB1563:
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
	movw	r1, #:lower16:.LANCHOR0	@ tmp134,
	movt	r1, #:upper16:.LANCHOR0	@ tmp134,
	add	r3, r1, r0, asl #2	@, tmp137, tmp134, ScdId,
	ldr	r2, [r3, #768]	@ tmp139, s_eScdDrvSleepStage
	cmp	r2, #2	@ tmp139,
	movne	r2, #2	@ tmp145,
	strne	r2, [r3, #768]	@ tmp145, s_eScdDrvSleepStage
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	SCDDRV_ForceSleep, .-SCDDRV_ForceSleep
	.align	2
	.global	SM_Start
	.type	SM_Start, %function
SM_Start:
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
	add	r0, r0, r0, asl #1	@, tmp141, SmID, SmID,
	movw	r2, #:lower16:.LANCHOR0	@ tmp137,
	movt	r2, #:upper16:.LANCHOR0	@ tmp137,
	add	r3, r2, r0, asl #4	@, tmp143, tmp137, tmp141,
	ldr	r3, [r3, #40]	@ D.50951, <variable>.pSmInstArray
	cmp	r3, #0	@ D.50951,
	bne	.L106	@,
.L103:
	mvn	r0, #6	@ ret,
	ldmfd	sp, {fp, sp, pc}	@
.L106:
	ldr	ip, [r3, #64]	@ <variable>.Config.BufSize, <variable>.Config.BufSize
	cmp	ip, #0	@ <variable>.Config.BufSize,
	beq	.L103	@,
	movw	r2, #:lower16:190880	@ tmp146,
	movt	r2, #:upper16:190880	@ tmp146,
	ldr	r0, [r3, r2]	@ <variable>.Mode, <variable>.Mode
	cmp	r0, #0	@ <variable>.Mode,
	moveq	r1, #1	@ tmp149,
	streq	r1, [r3, r2]	@ tmp149, <variable>.Mode
	ldmeqfd	sp, {fp, sp, pc}	@
	b	.L103	@
	.fnend
	.size	SM_Start, .-SM_Start
	.align	2
	.global	SM_Stop
	.type	SM_Stop, %function
SM_Stop:
	.fnstart
.LFB1575:
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
	add	r0, r0, r0, asl #1	@, tmp141, SmID, SmID,
	movw	r1, #:lower16:.LANCHOR0	@ tmp137,
	movt	r1, #:upper16:.LANCHOR0	@ tmp137,
	add	r3, r1, r0, asl #4	@, tmp143, tmp137, tmp141,
	ldr	r2, [r3, #40]	@ pSmInstArray, <variable>.pSmInstArray
	cmp	r2, #0	@ pSmInstArray,
	beq	.L108	@,
	movw	r3, #:lower16:190880	@ tmp145,
	movt	r3, #:upper16:190880	@ tmp145,
	ldr	ip, [r2, r3]	@ <variable>.Mode, <variable>.Mode
	cmp	ip, #0	@ <variable>.Mode,
	bne	.L112	@,
.L108:
	mov	r0, #0	@ D.50967,
	ldmfd	sp, {fp, sp, pc}	@
.L112:
	movw	ip, #:lower16:190868	@ tmp147,
	movt	ip, #:upper16:190868	@ tmp147,
	ldr	r1, [r2, ip]	@ <variable>.ScdID, <variable>.ScdID
	cmp	r1, #0	@ <variable>.ScdID,
	movle	r0, #0	@ tmp150,
	mvngt	r0, #6	@ D.50967,
	strle	r0, [r2, r3]	@ tmp150, <variable>.Mode
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	SM_Stop, .-SM_Stop
	.align	2
	.global	SM_GetInfo
	.type	SM_GetInfo, %function
SM_GetInfo:
	.fnstart
.LFB1576:
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
	cmp	r0, #15	@ SmID,
	bhi	.L114	@,
	add	r0, r0, r0, asl #1	@, tmp145, SmID, SmID,
	movw	r2, #:lower16:.LANCHOR0	@ tmp141,
	movt	r2, #:upper16:.LANCHOR0	@ tmp141,
	add	r3, r2, r0, asl #4	@, tmp147, tmp141, tmp145,
	ldr	r3, [r3, #40]	@ pSmInstArray, <variable>.pSmInstArray
	cmp	r3, #0	@ pSmInstArray,
	beq	.L120	@,
	movw	r2, #:lower16:190880	@ tmp151,
	movt	r2, #:upper16:190880	@ tmp151,
	movw	ip, #:lower16:204748	@ tmp154,
	movt	ip, #:upper16:204748	@ tmp154,
	ldr	r4, [r3, r2]	@ <variable>.Mode, <variable>.Mode
	movw	r0, #:lower16:98516	@ tmp156,
	movw	r2, #:lower16:98512	@ tmp157,
	movt	r0, #:upper16:98516	@ tmp156,
	movt	r2, #:upper16:98512	@ tmp157,
	strb	r4, [r1, #0]	@ <variable>.Mode, <variable>.InstMode
	ldr	r4, [r3, ip]	@ <variable>.numReadSegFail, <variable>.numReadSegFail
	str	r4, [r1, #20]	@ <variable>.numReadSegFail, <variable>.numReadSegFail
	ldr	ip, [r3, r2]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	movw	r2, #:lower16:98532	@ tmp161,
	ldr	r0, [r3, r0]	@ <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Tail
	movt	r2, #:upper16:98532	@ tmp161,
	rsb	r4, ip, r0	@ D.53801, <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Tail
	str	r4, [r1, #4]	@ D.53801, <variable>.RawNum
	cmp	r4, #0	@ D.53801,
	movw	ip, #:lower16:98524	@ tmp162,
	addlt	r4, r4, #1024	@ tmp160, D.53801,
	strlt	r4, [r1, #4]	@ tmp160, <variable>.RawNum
	ldr	r4, [r3, r2]	@ D.53811, <variable>.RawPacketArray.RawTotalSize
	movt	ip, #:upper16:98524	@ tmp162,
	movw	r0, #:lower16:190708	@ tmp165,
	movw	r2, #:lower16:190704	@ tmp166,
	movt	r0, #:upper16:190708	@ tmp165,
	movt	r2, #:upper16:190704	@ tmp166,
	str	r4, [r1, #12]	@ D.53811, <variable>.TotalRawSize
	ldr	ip, [r3, ip]	@ <variable>.RawPacketArray.FirstPacketOffset, <variable>.RawPacketArray.FirstPacketOffset
	rsb	r4, ip, r4	@ tmp164, <variable>.RawPacketArray.FirstPacketOffset, D.53811
	str	r4, [r1, #12]	@ tmp164, <variable>.TotalRawSize
	ldr	r0, [r3, r0]	@ <variable>.StreamSegArray.Tail, <variable>.StreamSegArray.Tail
	ldr	r2, [r3, r2]	@ <variable>.StreamSegArray.Head, <variable>.StreamSegArray.Head
	rsb	ip, r2, r0	@ D.53818, <variable>.StreamSegArray.Head, <variable>.StreamSegArray.Tail
	movw	r2, #:lower16:190736	@ tmp170,
	movt	r2, #:upper16:190736	@ tmp170,
	cmp	ip, #0	@ D.53818,
	str	ip, [r1, #8]	@ D.53818, <variable>.SegNum
	addlt	ip, ip, #1152	@ tmp169, D.53818,
	strlt	ip, [r1, #8]	@ tmp169, <variable>.SegNum
	mov	r0, #0	@ D.50980,
	ldr	ip, [r3, r2]	@ <variable>.StreamSegArray.SegTotalSize, <variable>.StreamSegArray.SegTotalSize
	str	ip, [r1, #16]	@ <variable>.StreamSegArray.SegTotalSize, <variable>.TotalSegSize
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L120:
	cmp	r1, #0	@ pSmInstInfo,
	strneb	r3, [r1, #0]	@ pSmInstArray, <variable>.InstMode
	mvnne	r0, #0	@ D.50980,
	ldmnefd	sp, {r3, r4, fp, sp, pc}	@
.L114:
	mvn	r0, #0	@ D.50980,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	SM_GetInfo, .-SM_GetInfo
	.align	2
	.global	SetInstMode
	.type	SetInstMode, %function
SetInstMode:
	.fnstart
.LFB1584:
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
	add	ip, r0, r0, asl #1	@, tmp142, SmID, SmID,
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	sub	r2, r1, #1	@ tmp146, Mode,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	cmp	r2, #1	@ tmp146,
	add	r0, r3, ip, asl #4	@, tmp144, tmp138, tmp142,
	ldr	r3, [r0, #40]	@ pSmInstArray, <variable>.pSmInstArray
	bls	.L125	@,
.L122:
	mvn	r0, #0	@ D.51358,
	ldmfd	sp, {fp, sp, pc}	@
.L125:
	cmp	r3, #0	@ pSmInstArray,
	beq	.L122	@,
	movw	r2, #:lower16:190880	@ tmp147,
	movt	r2, #:upper16:190880	@ tmp147,
	mov	r0, #0	@ D.51358,
	str	r1, [r3, r2]	@ Mode, <variable>.Mode
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	SetInstMode, .-SetInstMode
	.align	2
	.global	CheckScdStateReg
	.type	CheckScdStateReg, %function
CheckScdStateReg:
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
	ldr	r3, [r0, #16]	@ <variable>.ScdRollAddr, <variable>.ScdRollAddr
	cmp	r3, #0	@ <variable>.ScdRollAddr,
	mvneq	r0, #6	@,,
	movne	r0, #0	@,,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	CheckScdStateReg, .-CheckScdStateReg
	.align	2
	.global	ScdParseUpMsgInfo
	.type	ScdParseUpMsgInfo, %function
ScdParseUpMsgInfo:
	.fnstart
.LFB1591:
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
	cmp	r1, #0	@ ParseUpMsgInfo
	mvneq	r5, #0	@ D.51638,
	beq	.L132	@,
	ldr	r5, [r0, #12]	@ <variable>.ModeFlag, <variable>.ModeFlag
	ldrb	r4, [r1, #72]	@ zero_extendqisi2	@,
	mul	r2, r2, r3	@ D.51644, SegNum, UpMsgStepNum
	cmp	r5, #1	@ <variable>.ModeFlag,
	bfceq	r4, #0, #1	@ tmp142,,
	orrne	r4, r4, #1	@ tmp146, tmp145,
	strb	r4, [r1, #72]	@ tmp146,
	mov	r5, #0	@ D.51638,
	ldr	r3, [r0, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	add	ip, r2, #2	@ tmp153, D.51644,
	ldrb	r4, [r1, #72]	@ zero_extendqisi2	@,
	ldr	r3, [r3, r2, asl #2]	@ tmp150,* <variable>.pScdUpMsg
	mov	r3, r3, lsr #31	@ tmp149, tmp150,
	bfi	r4, r3, #1, #1	@ tmp151, tmp149,,
	strb	r4, [r1, #72]	@ tmp151,
	ldr	r2, [r0, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	uxtb	r3, r4	@ tmp163, tmp151
	ldr	r2, [r2, ip, asl #2]	@ tmp156,* <variable>.pScdUpMsg
	ubfx	r2, r2, #16, #1	@ tmp158, tmp156,,
	bfi	r3, r2, #2, #1	@ tmp163, tmp158,,
	strb	r3, [r1, #72]	@ tmp163,
	ldr	r2, [r0, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	uxtb	r3, r3	@ tmp174, tmp163
	ldr	r2, [r2, ip, asl #2]	@ tmp167,* <variable>.pScdUpMsg
	ubfx	r2, r2, #4, #3	@ tmp171, tmp167,,
	bfi	r3, r2, #3, #4	@ tmp174, tmp171,,
	strb	r3, [r1, #72]	@ tmp174,
	ldr	r2, [r0, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	ldrh	r3, [r1, #72]	@,
	ldr	r0, [r2, ip, asl #2]	@ tmp177,* <variable>.pScdUpMsg
	and	r2, r0, #7	@ tmp181, tmp177,
	bfi	r3, r2, #7, #4	@ tmp184, tmp181,,
	strh	r3, [r1, #72]	@ movhi	@ tmp184,
.L132:
	mov	r0, r5	@, D.51638
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	ScdParseUpMsgInfo, .-ScdParseUpMsgInfo
	.align	2
	.global	CheckSegValid
	.type	CheckSegValid, %function
CheckSegValid:
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
	cmp	r0, #0	@ pSegPacket
	mvneq	r0, #0	@ D.51791,
	ldmeqfd	sp, {fp, sp, pc}	@
	ldr	r3, [r0, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	r3, #0	@ <variable>.PhyAddr,
	bne	.L141	@,
.L139:
	mvn	r0, #6	@ D.51791,
	ldmfd	sp, {fp, sp, pc}	@
.L141:
	ldr	r2, [r0, #0]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	r2, #0	@ <variable>.VirAddr,
	beq	.L139	@,
	ldr	ip, [r0, #16]	@ <variable>.LenInByte, <variable>.LenInByte
	cmp	ip, r1	@ <variable>.LenInByte, SegFreeBufLen
	movle	r0, #0	@ D.51791,
	ldmlefd	sp, {fp, sp, pc}	@
	b	.L139	@
	.fnend
	.size	CheckSegValid, .-CheckSegValid
	.align	2
	.global	IsVopHeader
	.type	IsVopHeader, %function
IsVopHeader:
	.fnstart
.LFB1595:
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
	cmp	r0, #1	@ ModeFlag,
	beq	.L149	@,
	cmp	r0, #2	@ ModeFlag,
	beq	.L150	@,
.L145:
	movw	ip, #:lower16:-33488896	@ tmp142,
	movt	ip, #:upper16:-33488896	@ tmp142,
	cmp	r1, ip	@ StartCode, tmp142
	mov	r0, #0	@ flag,
	ldmnefd	sp, {fp, sp, pc}	@
.L144:
	mov	r0, #1	@ flag,
	ldmfd	sp, {fp, sp, pc}	@
.L150:
	ubfx	r2, r1, #16, #8	@ tmp139, StartCode,,
	movw	ip, #:lower16:-33488896	@ tmp142,
	sub	r0, r2, #128	@ tmp140, tmp139,
	movt	ip, #:upper16:-33488896	@ tmp142,
	cmp	r0, #3	@ tmp140,
	movhi	r0, #0	@, flag
	movls	r0, #1	@, flag
	cmp	r1, ip	@ StartCode, tmp142
	ldmnefd	sp, {fp, sp, pc}	@
	b	.L144	@
.L149:
	movw	r3, #:lower16:-1241448448	@ tmp137,
	movt	r3, #:upper16:-1241448448	@ tmp137,
	cmp	r1, r3	@ StartCode, tmp137
	bne	.L145	@,
	b	.L144	@
	.fnend
	.size	IsVopHeader, .-IsVopHeader
	.align	2
	.global	SM_GetExteriorState
	.type	SM_GetExteriorState, %function
SM_GetExteriorState:
	.fnstart
.LFB1599:
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
	.size	SM_GetExteriorState, .-SM_GetExteriorState
	.align	2
	.global	SM_GetInstanceRawDiscontinue
	.type	SM_GetInstanceRawDiscontinue, %function
SM_GetInstanceRawDiscontinue:
	.fnstart
.LFB1600:
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
	cmp	r0, #15	@ InstID,
	bhi	.L154	@,
	add	r0, r0, r0, asl #1	@, tmp141, InstID, InstID,
	movw	r1, #:lower16:.LANCHOR0	@ tmp137,
	movt	r1, #:upper16:.LANCHOR0	@ tmp137,
	add	r3, r1, r0, asl #4	@, tmp143, tmp137, tmp141,
	ldr	r2, [r3, #40]	@ pSmInstArray, <variable>.pSmInstArray
	cmp	r2, #0	@ pSmInstArray,
	beq	.L154	@,
	movw	r3, #:lower16:190880	@ tmp145,
	movt	r3, #:upper16:190880	@ tmp145,
	ldr	ip, [r2, r3]	@ <variable>.Mode, <variable>.Mode
	cmp	ip, #0	@ <variable>.Mode,
	beq	.L154	@,
	ldr	r1, [r2, #84]	@ <variable>.Config.DisContinueRawPacketFlag, <variable>.Config.DisContinueRawPacketFlag
	cmp	r1, #1	@ <variable>.Config.DisContinueRawPacketFlag,
	movne	r0, #0	@, D.52321
	moveq	r0, #1	@, D.52321
	ldmfd	sp, {fp, sp, pc}	@
.L154:
	mov	r0, #0	@ D.52321,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	SM_GetInstanceRawDiscontinue, .-SM_GetInstanceRawDiscontinue
	.align	2
	.global	SM_GetInstanceStreamEmptyFlag
	.type	SM_GetInstanceStreamEmptyFlag, %function
SM_GetInstanceStreamEmptyFlag:
	.fnstart
.LFB1602:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {fp, ip, lr, pc}	@,
	.pad #4
	.save {fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #24
	sub	sp, sp, #24	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r0, #15	@ InstID,
	bls	.L162	@,
.L158:
	mov	r0, #0	@ D.52358,
.L160:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L162:
	sub	r1, fp, #36	@,,
	bl	SM_GetInfo	@
	ldrsb	r3, [fp, #-36]	@ stInstInfo.InstMode, stInstInfo.InstMode
	cmp	r3, #0	@ stInstInfo.InstMode,
	beq	.L158	@,
	ldr	ip, [fp, #-24]	@ stInstInfo.TotalRawSize, stInstInfo.TotalRawSize
	ldr	r2, [fp, #-20]	@ stInstInfo.TotalSegSize, stInstInfo.TotalSegSize
	add	r1, r2, ip	@ tmp138, stInstInfo.TotalSegSize, stInstInfo.TotalRawSize
	cmp	r1, #102400	@ tmp138,
	movlt	r0, #1	@ D.52358,
	blt	.L160	@,
	ldr	r0, [fp, #-28]	@ stInstInfo.SegNum, stInstInfo.SegNum
	cmp	r0, #9	@ stInstInfo.SegNum,
	bgt	.L158	@,
	ldr	lr, [fp, #-32]	@ stInstInfo.RawNum, stInstInfo.RawNum
	cmp	lr, #1	@ stInstInfo.RawNum,
	movgt	r0, #0	@, D.52358
	movle	r0, #1	@, D.52358
	b	.L160	@
	.fnend
	.size	SM_GetInstanceStreamEmptyFlag, .-SM_GetInstanceStreamEmptyFlag
	.align	2
	.global	SCDDRV_MarkReloadDsp
	.type	SCDDRV_MarkReloadDsp, %function
SCDDRV_MarkReloadDsp:
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
	cmp	r0, #0	@ ScdId,
	ldmnefd	sp, {fp, sp, pc}	@
	add	r3, r1, #1	@ tmp135, SmID,
	cmp	r3, #16	@ tmp135,
	ldmhifd	sp, {fp, sp, pc}	@
	movw	r3, #:lower16:.LANCHOR0	@ tmp136,
	cmn	r1, #1	@ SmID,
	movt	r3, #:upper16:.LANCHOR0	@ tmp136,
	mov	r2, #1	@ tmp137,
	str	r2, [r3, #864]	@ tmp137, <variable>.DspReloadFlag
	ldmeqfd	sp, {fp, sp, pc}	@
	add	r2, r1, r1, asl #1	@, tmp142, SmID, SmID,
	movw	r0, #:lower16:190876	@ tmp147,
	movt	r0, #:upper16:190876	@ tmp147,
	mvn	r1, #0	@ tmp148,
	add	r3, r3, r2, asl #4	@, tmp144, tmp136, tmp142,
	ldr	ip, [r3, #40]	@ <variable>.pSmInstArray, <variable>.pSmInstArray
	str	r1, [ip, r0]	@ tmp148, <variable>.MatchScdIdPlus1
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	SCDDRV_MarkReloadDsp, .-SCDDRV_MarkReloadDsp
	.align	2
	.global	SM_UpdateMatchMode
	.type	SM_UpdateMatchMode, %function
SM_UpdateMatchMode:
	.fnstart
.LFB1616:
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
	cmp	r0, #0	@ ScdId,
	ldmnefd	sp, {fp, sp, pc}	@
	cmp	r1, #15	@ SmID,
	ldmhifd	sp, {fp, sp, pc}	@
	add	r1, r1, r1, asl #1	@, tmp139, SmID, SmID,
	movw	ip, #:lower16:.LANCHOR0	@ tmp135,
	movt	ip, #:upper16:.LANCHOR0	@ tmp135,
	movw	r3, #:lower16:190876	@ tmp144,
	add	r0, ip, r1, asl #4	@, tmp141, tmp135, tmp139,
	movt	r3, #:upper16:190876	@ tmp144,
	mov	r1, #1	@ tmp145,
	ldr	r2, [r0, #40]	@ <variable>.pSmInstArray, <variable>.pSmInstArray
	str	r1, [r2, r3]	@ tmp145, <variable>.MatchScdIdPlus1
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	SM_UpdateMatchMode, .-SM_UpdateMatchMode
	.align	2
	.global	PrintScdInputRawAfterStart
	.type	PrintScdInputRawAfterStart, %function
PrintScdInputRawAfterStart:
	.fnstart
.LFB1622:
	@ args = 4, pretend = 0, frame = 0
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
	.size	PrintScdInputRawAfterStart, .-PrintScdInputRawAfterStart
	.align	2
	.global	PrintSmInfo
	.type	PrintSmInfo, %function
PrintSmInfo:
	.fnstart
.LFB1624:
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
	add	r4, r0, r0, asl #1	@, tmp152, SmID, SmID,
	sub	r1, fp, #68	@ tmp141,,
	movw	r7, #:lower16:.LANCHOR0	@ tmp148,
	movt	r7, #:upper16:.LANCHOR0	@ tmp148,
	add	r3, r1, #4	@ tmp282, tmp141,
	add	r2, r7, r4, asl #4	@, tmp154, tmp148, tmp152,
	mov	r5, #0	@ tmp142,
	str	r5, [r3], #4	@ tmp142, SmInstInfo
	mov	r6, r0	@ SmID, SmID
	str	r5, [r3], #4	@ tmp142, SmInstInfo
	ldr	r4, [r2, #40]	@ pSmInstArray, <variable>.pSmInstArray
	str	r5, [r3], #4	@ tmp142, SmInstInfo
	str	r5, [r3], #4	@ tmp142, SmInstInfo
	str	r5, [r3, #0]	@ tmp142, SmInstInfo
	str	r5, [fp, #-68]	@ tmp142, SmInstInfo
	bl	SM_GetInfo	@
	cmp	r4, r5	@ pSmInstArray,
	beq	.L177	@,
	mov	r2, r6	@, SmID
	movw	r6, #:lower16:190880	@ tmp159,
	movt	r6, #:upper16:190880	@ tmp159,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC0	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, r6]	@, <variable>.Mode
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC2	@,
	movw	r8, #:lower16:98520	@,
	bl	dprint_vfmw	@
	ldrb	r3, [r4, #52]	@ zero_extendqisi2	@, <variable>.Config.Priority
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC3	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC3	@,
	movt	r8, #:upper16:98520	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #56]	@, <variable>.Config.VidStd
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC4	@,
	movw	r6, #:lower16:98516	@ tmp274,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #60]	@, <variable>.Config.BufPhyAddr
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC5	@,
	movt	r2, #:upper16:.LC6	@,
	movw	sl, #:lower16:1717986919	@ tmp278,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #48]	@, <variable>.Config.pBufVirAddr
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #:lower16:.LC7	@,
	movt	r1, #:upper16:.LC5	@,
	movt	r2, #:upper16:.LC7	@,
	movt	r6, #:upper16:98516	@ tmp274,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #64]	@, <variable>.Config.BufSize
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC8	@,
	movt	sl, #:upper16:1717986919	@ tmp278,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #68]	@, <variable>.Config.RegPhyBaseAddr
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC5	@,
	movt	r2, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	movw	r2, #:lower16:190752	@ tmp174,
	movt	r2, #:upper16:190752	@ tmp174,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	ldr	r3, [r4, r2]	@, <variable>.SmPushRaw.PushRawNum
	movw	r2, #:lower16:.LC10	@,
	movt	r2, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	movw	r3, #:lower16:190756	@ tmp177,
	movt	r3, #:upper16:190756	@ tmp177,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC11	@,
	movt	r1, #:upper16:.LC1	@,
	ldr	r3, [r4, r3]	@, <variable>.SmPushRaw.PushRawTotalLen
	movt	r2, #:upper16:.LC11	@,
	bl	dprint_vfmw	@
	movw	ip, #:lower16:190768	@ tmp180,
	movt	ip, #:upper16:190768	@ tmp180,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #:lower16:.LC12	@,
	ldr	r3, [r4, ip]	@, <variable>.BufAddrCfg.DownMsgPhyAddr
	movt	r1, #:upper16:.LC5	@,
	movt	r2, #:upper16:.LC12	@,
	bl	dprint_vfmw	@
	movw	r2, #:lower16:190776	@ tmp183,
	movt	r2, #:upper16:190776	@ tmp183,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	ldr	r3, [r4, r2]	@, <variable>.BufAddrCfg.DownMsgSize
	movw	r2, #:lower16:.LC13	@,
	movt	r2, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	movw	r3, #:lower16:190780	@ tmp186,
	movt	r3, #:upper16:190780	@ tmp186,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC5	@,
	ldr	r3, [r4, r3]	@, <variable>.BufAddrCfg.UpMsgPhyAddr
	movt	r2, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	movw	ip, #:lower16:190792	@ tmp189,
	movt	ip, #:upper16:190792	@ tmp189,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC15	@,
	ldr	r3, [r4, ip]	@, <variable>.BufAddrCfg.UpMsgNum
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
	movw	r2, #:lower16:190788	@ tmp192,
	movt	r2, #:upper16:190788	@ tmp192,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	ldr	r3, [r4, r2]	@, <variable>.BufAddrCfg.UpMsgSize
	movw	r2, #:lower16:.LC16	@,
	movt	r2, #:upper16:.LC16	@,
	bl	dprint_vfmw	@
	movw	r3, #:lower16:190856	@ tmp195,
	movt	r3, #:upper16:190856	@ tmp195,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #:lower16:.LC17	@,
	movt	r1, #:upper16:.LC5	@,
	ldr	r3, [r4, r3]	@, <variable>.BufAddrCfg.SegBufPhyAddr
	movt	r2, #:upper16:.LC17	@,
	bl	dprint_vfmw	@
	movw	ip, #:lower16:190860	@ tmp198,
	movt	ip, #:upper16:190860	@ tmp198,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC18	@,
	ldr	r3, [r4, ip]	@, <variable>.BufAddrCfg.SegBufSize
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC18	@,
	bl	dprint_vfmw	@
	ldr	r3, [fp, #-52]	@, SmInstInfo.TotalSegSize
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC19	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC19	@,
	bl	dprint_vfmw	@
	ldr	r3, [fp, #-60]	@, SmInstInfo.SegNum
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC20	@,
	bl	dprint_vfmw	@
	ldr	r3, [fp, #-56]	@, SmInstInfo.TotalRawSize
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC21	@,
	bl	dprint_vfmw	@
	ldr	r3, [fp, #-64]	@, SmInstInfo.RawNum
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC22	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #16]	@, <variable>.SegFilter.ProtocolType
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC23	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #20]	@, <variable>.SegFilter.ModeFlag
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC24	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC24	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #24]	@, <variable>.SegFilter.LastH263Num
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC25	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #28]	@, <variable>.SegFilter.SegBufPhyAddr
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #:lower16:.LC26	@,
	movt	r1, #:upper16:.LC5	@,
	movt	r2, #:upper16:.LC26	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #32]	@, <variable>.SegFilter.SegBufSize
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC27	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #36]	@, <variable>.SegFilter.SegBufRollAddr
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #:lower16:.LC28	@,
	movt	r1, #:upper16:.LC5	@,
	movt	r2, #:upper16:.LC28	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #12]	@, <variable>.SegFilter.pScdUpMsg
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #:lower16:.LC29	@,
	movt	r1, #:upper16:.LC5	@,
	movt	r2, #:upper16:.LC29	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #40]	@, <variable>.SegFilter.SegNum
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC30	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC30	@,
	bl	dprint_vfmw	@
	movw	r2, #:lower16:204708	@ tmp225,
	movt	r2, #:upper16:204708	@ tmp225,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	ldr	r3, [r4, r2]	@, <variable>.BlockTimeInMs
	movw	r2, #:lower16:.LC31	@,
	movt	r2, #:upper16:.LC31	@,
	bl	dprint_vfmw	@
	movw	r3, #:lower16:204712	@ tmp228,
	movt	r3, #:upper16:204712	@ tmp228,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC32	@,
	movt	r1, #:upper16:.LC1	@,
	ldr	r3, [r4, r3]	@, <variable>.LastBlockTime
	movt	r2, #:upper16:.LC32	@,
	bl	dprint_vfmw	@
	movw	ip, #:lower16:204720	@ tmp232,
	movt	ip, #:upper16:204720	@ tmp232,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC33	@,
	movt	r1, #:upper16:.LC33	@,
	ldrd	r2, [r4, ip]	@, pSmInstArray, tmp232
	strd	r2, [sp]	@,
	movw	r2, #:lower16:.LC34	@,
	movt	r2, #:upper16:.LC34	@,
	bl	dprint_vfmw	@
	movw	r2, #:lower16:190864	@ tmp235,
	movt	r2, #:upper16:190864	@ tmp235,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	ldr	r3, [r4, r2]	@, <variable>.InstID
	movw	r2, #:lower16:.LC35	@,
	movt	r2, #:upper16:.LC35	@,
	bl	dprint_vfmw	@
	ldr	r3, [r7, #856]	@, <variable>.SCDState
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC36	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC36	@,
	movw	r7, #:lower16:98524	@ tmp247,
	bl	dprint_vfmw	@
	ldr	ip, [r4, r8]	@ <variable>.RawPacketArray.History, <variable>.RawPacketArray.History
	movw	r3, #:lower16:98512	@ tmp242,
	movt	r3, #:upper16:98512	@ tmp242,
	movt	r7, #:upper16:98524	@ tmp247,
	mov	r0, #32	@,
	ldr	r3, [r4, r3]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	movw	r1, #:lower16:.LC37	@,
	movw	r2, #:lower16:.LC36	@,
	movt	r1, #:upper16:.LC37	@,
	movt	r2, #:upper16:.LC36	@,
	str	ip, [sp, #0]	@ <variable>.RawPacketArray.History,
	bl	dprint_vfmw	@
	ldr	r2, [r4, r7]	@, <variable>.RawPacketArray.FirstPacketOffset
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC38	@,
	movt	r1, #:upper16:.LC38	@,
	bl	dprint_vfmw	@
	ldr	r7, [r4, r8]	@ idx, <variable>.RawPacketArray.History
.L188:
	ldr	r3, [r4, r6]	@ <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Tail
	cmp	r3, r7	@ <variable>.RawPacketArray.Tail, idx
	beq	.L174	@,
.L191:
	add	r2, r7, r7, asl #1	@, tmp266, idx, idx,
	mov	r0, #32	@,
	add	r7, r7, #1	@ idx, idx,
	movw	r1, #:lower16:.LC40	@,
	mla	r8, r2, r0, r4	@ tmp268, tmp266,, pSmInstArray
	movt	r1, #:upper16:.LC40	@,
	add	r5, r5, #1	@ tmp280, i,
	ldr	r2, [r8, #216]	@, <variable>.Length
	movw	r8, #1023	@,
	bl	dprint_vfmw	@
	cmp	r7, r8	@ idx,
	subgt	r7, r7, #1024	@ idx, idx,
	cmp	r5, #1024	@ tmp280,
	beq	.L174	@,
	smull	r3, ip, sl, r5	@, tmp251, tmp278, tmp280
	mov	lr, r5, asr #31	@ tmp254, tmp280,
	rsb	r1, lr, ip, asr #2	@, tmp250, tmp254, tmp251,
	add	r0, r1, r1, asl #2	@, tmp257, tmp250, tmp250,
	cmp	r5, r0, asl #1	@ tmp280, tmp257,
	beq	.L189	@,
.L185:
	ldr	r0, [r4, r6]	@ <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Tail
	cmp	r0, r7	@ <variable>.RawPacketArray.Tail, idx
	beq	.L174	@,
	add	lr, r7, r7, asl #1	@, tmp291, idx, idx,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC40	@,
	movt	r1, #:upper16:.LC40	@,
	mla	r9, lr, r0, r4	@ tmp293, tmp291,, pSmInstArray
	add	r7, r7, #1	@ idx, idx,
	ldr	r2, [r9, #216]	@, <variable>.Length
	movw	r9, #1023	@,
	bl	dprint_vfmw	@
	add	r3, r5, #1	@ i, tmp280,
	cmp	r7, r9	@ idx,
	smull	ip, r0, sl, r3	@, tmp300, tmp278, i
	mov	r2, r3, asr #31	@ tmp302, i,
	subgt	r7, r7, #1024	@ idx, idx,
	rsb	ip, r2, r0, asr #2	@, tmp303, tmp302, tmp300,
	add	r1, ip, ip, asl #2	@, tmp305, tmp303, tmp303,
	cmp	r3, r1, asl #1	@ i, tmp305,
	beq	.L190	@,
.L186:
	ldr	r1, [r4, r6]	@ <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Tail
	cmp	r1, r7	@ <variable>.RawPacketArray.Tail, idx
	beq	.L174	@,
	add	r3, r7, r7, asl #1	@, tmp311, idx, idx,
	mov	r0, #32	@,
	add	r5, r5, #2	@ i, tmp280,
	movw	r1, #:lower16:.LC40	@,
	mla	lr, r3, r0, r4	@ tmp313, tmp311,, pSmInstArray
	movt	r1, #:upper16:.LC40	@,
	add	r7, r7, #1	@ idx, idx,
	ldr	r2, [lr, #216]	@, <variable>.Length
	bl	dprint_vfmw	@
	smull	r3, r2, sl, r5	@, tmp318, tmp278, i
	mov	r0, r5, asr #31	@ tmp320, i,
	movw	r1, #1023	@,
	cmp	r7, r1	@ idx,
	subgt	r7, r7, #1024	@ idx, idx,
	rsb	ip, r0, r2, asr #2	@, tmp321, tmp320, tmp318,
	add	r3, ip, ip, asl #2	@, tmp323, tmp321, tmp321,
	cmp	r5, r3, asl #1	@ i, tmp323,
	bne	.L188	@,
	movw	r1, #:lower16:.LC39	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC39	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, r6]	@ <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Tail
	cmp	r3, r7	@ <variable>.RawPacketArray.Tail, idx
	bne	.L191	@,
.L174:
	movw	r1, #:lower16:.LC39	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC39	@,
	bl	dprint_vfmw	@
.L177:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L189:
	movw	r1, #:lower16:.LC39	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC39	@,
	bl	dprint_vfmw	@
	b	.L185	@
.L190:
	movw	r1, #:lower16:.LC39	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC39	@,
	bl	dprint_vfmw	@
	b	.L186	@
	.fnend
	.size	PrintSmInfo, .-PrintSmInfo
	.align	2
	.global	PrintScdStateReg
	.type	PrintScdStateReg, %function
PrintScdStateReg:
	.fnstart
.LFB1621:
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
	mov	r4, r0	@ pSmStateReg, pSmStateReg
	mov	r2, r1	@ ScdId, ScdId
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC41	@,
	movt	r1, #:upper16:.LC41	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #0]	@, <variable>.Scdover
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC42	@,
	movt	r1, #:upper16:.LC42	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #4]	@, <variable>.ScdInt
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC43	@,
	movt	r1, #:upper16:.LC43	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #8]	@, <variable>.ShortScdNum
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC44	@,
	movt	r1, #:upper16:.LC44	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #12]	@, <variable>.ScdNum
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC45	@,
	movt	r1, #:upper16:.LC45	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #16]	@, <variable>.ScdRollAddr
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC46	@,
	movt	r1, #:upper16:.LC46	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #20]	@, <variable>.SrcEaten
	movw	r1, #:lower16:.LC47	@,
	mov	r0, #24	@,
	movt	r1, #:upper16:.LC47	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	PrintScdStateReg, .-PrintScdStateReg
	.align	2
	.global	PrintDownMsg
	.type	PrintDownMsg, %function
PrintDownMsg:
	.fnstart
.LFB1620:
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
	mov	r4, r0	@ DownMsgPhyAddr, DownMsgPhyAddr
	mov	r7, r1	@ pDownMsgVirAddr, pDownMsgVirAddr
	mov	r8, r2	@ PushRawNum, PushRawNum
	mov	r0, #24	@,
	mov	r2, r3	@, ScdId
	movw	r1, #:lower16:.LC48	@,
	movt	r1, #:upper16:.LC48	@,
	bl	dprint_vfmw	@
	mov	r2, r7	@, pDownMsgVirAddr
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC49	@,
	movt	r1, #:upper16:.LC49	@,
	bl	dprint_vfmw	@
	mov	r2, r4	@, DownMsgPhyAddr
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC50	@,
	movt	r1, #:upper16:.LC50	@,
	bl	dprint_vfmw	@
	cmp	r8, #0	@ PushRawNum,
	ldmlefd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	mov	r2, #0	@,
	ldr	r3, [r7, #0]	@,* pDownMsgVirAddr
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC51	@,
	movt	r1, #:upper16:.LC51	@,
	sub	sl, r8, #1	@ tmp189, PushRawNum,
	bl	dprint_vfmw	@
	mov	r2, #1	@,
	ldr	r3, [r7, #4]	@,
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC51	@,
	movt	r1, #:upper16:.LC51	@,
	bl	dprint_vfmw	@
	mov	r2, #2	@,
	ldr	r3, [r7, #8]	@,
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC51	@,
	movt	r1, #:upper16:.LC51	@,
	bl	dprint_vfmw	@
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC39	@,
	movt	r1, #:upper16:.LC39	@,
	bl	dprint_vfmw	@
	cmp	r8, #1	@ PushRawNum,
	and	sl, sl, #1	@ tmp191, tmp189,
	mov	r4, #3	@ j,
	mov	r6, #1	@ i,
	add	r5, r7, #12	@ ivtmp.1596, pDownMsgVirAddr,
	ldmlefd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	cmp	sl, #0	@ tmp191,
	beq	.L196	@,
	mov	r2, r4	@, j
	ldr	r3, [r5, #0]	@,* ivtmp.1596
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC51	@,
	movt	r1, #:upper16:.LC51	@,
	mov	r6, #2	@ i,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #4]	@,
	mov	r2, #4	@,
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC51	@,
	movt	r1, #:upper16:.LC51	@,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #8]	@,
	mov	r2, #5	@,
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC51	@,
	movt	r1, #:upper16:.LC51	@,
	bl	dprint_vfmw	@
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC39	@,
	movt	r1, #:upper16:.LC39	@,
	bl	dprint_vfmw	@
	cmp	r8, r6	@ PushRawNum, i
	add	r5, r7, #24	@ ivtmp.1596, pDownMsgVirAddr,
	mov	r4, #6	@ j,
	ldmlefd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L196:
	mov	r2, r4	@, j
	ldr	r3, [r5, #0]	@,* ivtmp.1596
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC51	@,
	movt	r1, #:upper16:.LC51	@,
	add	sl, r4, #3	@ tmp194, j,
	bl	dprint_vfmw	@
	add	r2, r4, #1	@, j,
	ldr	r3, [r5, #4]	@,
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC51	@,
	movt	r1, #:upper16:.LC51	@,
	bl	dprint_vfmw	@
	add	r2, r4, #2	@, j,
	ldr	r3, [r5, #8]	@,
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC51	@,
	movt	r1, #:upper16:.LC51	@,
	bl	dprint_vfmw	@
	add	r7, r5, #12	@ tmp193, ivtmp.1596,
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC39	@,
	movt	r1, #:upper16:.LC39	@,
	add	r6, r6, #1	@ tmp192, i,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #12]	@,
	mov	r2, sl	@, tmp194
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC51	@,
	movt	r1, #:upper16:.LC51	@,
	bl	dprint_vfmw	@
	add	r2, r4, #4	@, j,
	ldr	r3, [r7, #4]	@,
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC51	@,
	movt	r1, #:upper16:.LC51	@,
	bl	dprint_vfmw	@
	add	r2, r4, #5	@, j,
	ldr	r3, [r7, #8]	@,
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC51	@,
	movt	r1, #:upper16:.LC51	@,
	bl	dprint_vfmw	@
	add	r6, r6, #1	@ i, tmp192,
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC39	@,
	movt	r1, #:upper16:.LC39	@,
	add	r4, r4, #6	@ j, j,
	bl	dprint_vfmw	@
	cmp	r8, r6	@ PushRawNum, i
	add	r5, r5, #24	@ ivtmp.1596, ivtmp.1596,
	bgt	.L196	@,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	.fnend
	.size	PrintDownMsg, .-PrintDownMsg
	.align	2
	.global	SM_AddMatchMode
	.type	SM_AddMatchMode, %function
SM_AddMatchMode:
	.fnstart
.LFB1611:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp373,
	movt	r4, #:upper16:.LANCHOR0	@ tmp373,
	ldr	r5, [r4, #40]	@ temp.1633, <variable>.pSmInstArray
	cmp	r5, #0	@ temp.1633,
	beq	.L205	@,
	ldr	r3, [r5, #88]	@ <variable>.Config.ScdLowdlyEnable, <variable>.Config.ScdLowdlyEnable
	cmp	r3, #0	@ <variable>.Config.ScdLowdlyEnable,
	beq	.L205	@,
	movw	r3, #:lower16:g_DspDrvState	@ tmp183,
	movt	r3, #:upper16:g_DspDrvState	@ tmp183,
	ldr	r2, [r3, #0]	@ temp.1635, g_DspDrvState
	cmp	r2, #1	@ temp.1635,
	ldrne	r3, [r3, #4]	@ prephitmp.1636, g_DspDrvState
	beq	.L301	@,
.L208:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC52	@,
	movt	r1, #:upper16:.LC52	@,
	bl	dprint_vfmw	@
	movw	r0, #:lower16:190876	@ tmp185,
	movt	r0, #:upper16:190876	@ tmp185,
	mov	r2, #0	@ tmp186,
	str	r2, [r5, r0]	@ tmp186, <variable>.MatchScdIdPlus1
.L205:
	ldr	r5, [r4, #88]	@ temp.1638, <variable>.pSmInstArray
	cmp	r5, #0	@ temp.1638,
	beq	.L210	@,
	ldr	r3, [r5, #88]	@ <variable>.Config.ScdLowdlyEnable, <variable>.Config.ScdLowdlyEnable
	cmp	r3, #0	@ <variable>.Config.ScdLowdlyEnable,
	beq	.L210	@,
	movw	r3, #:lower16:g_DspDrvState	@ tmp195,
	movt	r3, #:upper16:g_DspDrvState	@ tmp195,
	ldr	r2, [r3, #0]	@ temp.1640, g_DspDrvState
	cmp	r2, #1	@ temp.1640,
	ldrne	r3, [r3, #4]	@ prephitmp.1641, g_DspDrvState
	beq	.L302	@,
.L213:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC52	@,
	movt	r1, #:upper16:.LC52	@,
	bl	dprint_vfmw	@
	movw	r0, #:lower16:190876	@ tmp197,
	movt	r0, #:upper16:190876	@ tmp197,
	mov	r2, #0	@ tmp198,
	str	r2, [r5, r0]	@ tmp198, <variable>.MatchScdIdPlus1
.L210:
	ldr	r5, [r4, #136]	@ temp.1643, <variable>.pSmInstArray
	cmp	r5, #0	@ temp.1643,
	beq	.L215	@,
	ldr	r3, [r5, #88]	@ <variable>.Config.ScdLowdlyEnable, <variable>.Config.ScdLowdlyEnable
	cmp	r3, #0	@ <variable>.Config.ScdLowdlyEnable,
	beq	.L215	@,
	movw	r3, #:lower16:g_DspDrvState	@ tmp207,
	movt	r3, #:upper16:g_DspDrvState	@ tmp207,
	ldr	r2, [r3, #0]	@ temp.1645, g_DspDrvState
	cmp	r2, #1	@ temp.1645,
	ldrne	r3, [r3, #4]	@ prephitmp.1646, g_DspDrvState
	beq	.L303	@,
.L218:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC52	@,
	movt	r1, #:upper16:.LC52	@,
	bl	dprint_vfmw	@
	movw	r0, #:lower16:190876	@ tmp209,
	movt	r0, #:upper16:190876	@ tmp209,
	mov	r2, #0	@ tmp210,
	str	r2, [r5, r0]	@ tmp210, <variable>.MatchScdIdPlus1
.L215:
	ldr	r5, [r4, #184]	@ temp.1648, <variable>.pSmInstArray
	cmp	r5, #0	@ temp.1648,
	beq	.L220	@,
	ldr	r3, [r5, #88]	@ <variable>.Config.ScdLowdlyEnable, <variable>.Config.ScdLowdlyEnable
	cmp	r3, #0	@ <variable>.Config.ScdLowdlyEnable,
	beq	.L220	@,
	movw	r3, #:lower16:g_DspDrvState	@ tmp219,
	movt	r3, #:upper16:g_DspDrvState	@ tmp219,
	ldr	r2, [r3, #0]	@ temp.1650, g_DspDrvState
	cmp	r2, #1	@ temp.1650,
	ldrne	r3, [r3, #4]	@ prephitmp.1651, g_DspDrvState
	beq	.L304	@,
.L223:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC52	@,
	movt	r1, #:upper16:.LC52	@,
	bl	dprint_vfmw	@
	movw	r0, #:lower16:190876	@ tmp221,
	movt	r0, #:upper16:190876	@ tmp221,
	mov	r2, #0	@ tmp222,
	str	r2, [r5, r0]	@ tmp222, <variable>.MatchScdIdPlus1
.L220:
	ldr	r5, [r4, #232]	@ temp.1653, <variable>.pSmInstArray
	cmp	r5, #0	@ temp.1653,
	beq	.L225	@,
	ldr	r3, [r5, #88]	@ <variable>.Config.ScdLowdlyEnable, <variable>.Config.ScdLowdlyEnable
	cmp	r3, #0	@ <variable>.Config.ScdLowdlyEnable,
	beq	.L225	@,
	movw	r3, #:lower16:g_DspDrvState	@ tmp231,
	movt	r3, #:upper16:g_DspDrvState	@ tmp231,
	ldr	r2, [r3, #0]	@ temp.1655, g_DspDrvState
	cmp	r2, #1	@ temp.1655,
	ldrne	r3, [r3, #4]	@ prephitmp.1656, g_DspDrvState
	beq	.L305	@,
.L228:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC52	@,
	movt	r1, #:upper16:.LC52	@,
	bl	dprint_vfmw	@
	movw	r0, #:lower16:190876	@ tmp233,
	movt	r0, #:upper16:190876	@ tmp233,
	mov	r2, #0	@ tmp234,
	str	r2, [r5, r0]	@ tmp234, <variable>.MatchScdIdPlus1
.L225:
	ldr	r5, [r4, #280]	@ temp.1658, <variable>.pSmInstArray
	cmp	r5, #0	@ temp.1658,
	beq	.L230	@,
	ldr	r3, [r5, #88]	@ <variable>.Config.ScdLowdlyEnable, <variable>.Config.ScdLowdlyEnable
	cmp	r3, #0	@ <variable>.Config.ScdLowdlyEnable,
	beq	.L230	@,
	movw	r3, #:lower16:g_DspDrvState	@ tmp243,
	movt	r3, #:upper16:g_DspDrvState	@ tmp243,
	ldr	r2, [r3, #0]	@ temp.1660, g_DspDrvState
	cmp	r2, #1	@ temp.1660,
	ldrne	r3, [r3, #4]	@ prephitmp.1661, g_DspDrvState
	beq	.L306	@,
.L233:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC52	@,
	movt	r1, #:upper16:.LC52	@,
	bl	dprint_vfmw	@
	movw	r0, #:lower16:190876	@ tmp245,
	movt	r0, #:upper16:190876	@ tmp245,
	mov	r2, #0	@ tmp246,
	str	r2, [r5, r0]	@ tmp246, <variable>.MatchScdIdPlus1
.L230:
	ldr	r5, [r4, #328]	@ temp.1663, <variable>.pSmInstArray
	cmp	r5, #0	@ temp.1663,
	beq	.L235	@,
	ldr	r3, [r5, #88]	@ <variable>.Config.ScdLowdlyEnable, <variable>.Config.ScdLowdlyEnable
	cmp	r3, #0	@ <variable>.Config.ScdLowdlyEnable,
	beq	.L235	@,
	movw	r3, #:lower16:g_DspDrvState	@ tmp255,
	movt	r3, #:upper16:g_DspDrvState	@ tmp255,
	ldr	r2, [r3, #0]	@ temp.1665, g_DspDrvState
	cmp	r2, #1	@ temp.1665,
	ldrne	r3, [r3, #4]	@ prephitmp.1666, g_DspDrvState
	beq	.L307	@,
.L238:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC52	@,
	movt	r1, #:upper16:.LC52	@,
	bl	dprint_vfmw	@
	movw	r0, #:lower16:190876	@ tmp257,
	movt	r0, #:upper16:190876	@ tmp257,
	mov	r2, #0	@ tmp258,
	str	r2, [r5, r0]	@ tmp258, <variable>.MatchScdIdPlus1
.L235:
	ldr	r5, [r4, #376]	@ temp.1668, <variable>.pSmInstArray
	cmp	r5, #0	@ temp.1668,
	beq	.L240	@,
	ldr	r3, [r5, #88]	@ <variable>.Config.ScdLowdlyEnable, <variable>.Config.ScdLowdlyEnable
	cmp	r3, #0	@ <variable>.Config.ScdLowdlyEnable,
	beq	.L240	@,
	movw	r3, #:lower16:g_DspDrvState	@ tmp267,
	movt	r3, #:upper16:g_DspDrvState	@ tmp267,
	ldr	r2, [r3, #0]	@ temp.1670, g_DspDrvState
	cmp	r2, #1	@ temp.1670,
	ldrne	r3, [r3, #4]	@ prephitmp.1671, g_DspDrvState
	beq	.L308	@,
.L243:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC52	@,
	movt	r1, #:upper16:.LC52	@,
	bl	dprint_vfmw	@
	movw	r0, #:lower16:190876	@ tmp269,
	movt	r0, #:upper16:190876	@ tmp269,
	mov	r2, #0	@ tmp270,
	str	r2, [r5, r0]	@ tmp270, <variable>.MatchScdIdPlus1
.L240:
	ldr	r5, [r4, #424]	@ temp.1673, <variable>.pSmInstArray
	cmp	r5, #0	@ temp.1673,
	beq	.L245	@,
	ldr	r3, [r5, #88]	@ <variable>.Config.ScdLowdlyEnable, <variable>.Config.ScdLowdlyEnable
	cmp	r3, #0	@ <variable>.Config.ScdLowdlyEnable,
	beq	.L245	@,
	movw	r3, #:lower16:g_DspDrvState	@ tmp279,
	movt	r3, #:upper16:g_DspDrvState	@ tmp279,
	ldr	r2, [r3, #0]	@ temp.1675, g_DspDrvState
	cmp	r2, #1	@ temp.1675,
	ldrne	r3, [r3, #4]	@ prephitmp.1676, g_DspDrvState
	beq	.L309	@,
.L248:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC52	@,
	movt	r1, #:upper16:.LC52	@,
	bl	dprint_vfmw	@
	movw	r0, #:lower16:190876	@ tmp281,
	movt	r0, #:upper16:190876	@ tmp281,
	mov	r2, #0	@ tmp282,
	str	r2, [r5, r0]	@ tmp282, <variable>.MatchScdIdPlus1
.L245:
	ldr	r5, [r4, #472]	@ temp.1678, <variable>.pSmInstArray
	cmp	r5, #0	@ temp.1678,
	beq	.L250	@,
	ldr	r3, [r5, #88]	@ <variable>.Config.ScdLowdlyEnable, <variable>.Config.ScdLowdlyEnable
	cmp	r3, #0	@ <variable>.Config.ScdLowdlyEnable,
	beq	.L250	@,
	movw	r3, #:lower16:g_DspDrvState	@ tmp291,
	movt	r3, #:upper16:g_DspDrvState	@ tmp291,
	ldr	r2, [r3, #0]	@ temp.1680, g_DspDrvState
	cmp	r2, #1	@ temp.1680,
	ldrne	r3, [r3, #4]	@ prephitmp.1681, g_DspDrvState
	beq	.L310	@,
.L253:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC52	@,
	movt	r1, #:upper16:.LC52	@,
	bl	dprint_vfmw	@
	movw	r0, #:lower16:190876	@ tmp293,
	movt	r0, #:upper16:190876	@ tmp293,
	mov	r2, #0	@ tmp294,
	str	r2, [r5, r0]	@ tmp294, <variable>.MatchScdIdPlus1
.L250:
	ldr	r5, [r4, #520]	@ temp.1683, <variable>.pSmInstArray
	cmp	r5, #0	@ temp.1683,
	beq	.L255	@,
	ldr	r3, [r5, #88]	@ <variable>.Config.ScdLowdlyEnable, <variable>.Config.ScdLowdlyEnable
	cmp	r3, #0	@ <variable>.Config.ScdLowdlyEnable,
	beq	.L255	@,
	movw	r3, #:lower16:g_DspDrvState	@ tmp303,
	movt	r3, #:upper16:g_DspDrvState	@ tmp303,
	ldr	r2, [r3, #0]	@ temp.1685, g_DspDrvState
	cmp	r2, #1	@ temp.1685,
	ldrne	r3, [r3, #4]	@ prephitmp.1686, g_DspDrvState
	beq	.L311	@,
.L258:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC52	@,
	movt	r1, #:upper16:.LC52	@,
	bl	dprint_vfmw	@
	movw	r0, #:lower16:190876	@ tmp305,
	movt	r0, #:upper16:190876	@ tmp305,
	mov	r2, #0	@ tmp306,
	str	r2, [r5, r0]	@ tmp306, <variable>.MatchScdIdPlus1
.L255:
	ldr	r5, [r4, #568]	@ temp.1688, <variable>.pSmInstArray
	cmp	r5, #0	@ temp.1688,
	beq	.L260	@,
	ldr	r3, [r5, #88]	@ <variable>.Config.ScdLowdlyEnable, <variable>.Config.ScdLowdlyEnable
	cmp	r3, #0	@ <variable>.Config.ScdLowdlyEnable,
	beq	.L260	@,
	movw	r3, #:lower16:g_DspDrvState	@ tmp315,
	movt	r3, #:upper16:g_DspDrvState	@ tmp315,
	ldr	r2, [r3, #0]	@ temp.1690, g_DspDrvState
	cmp	r2, #1	@ temp.1690,
	ldrne	r3, [r3, #4]	@ prephitmp.1691, g_DspDrvState
	beq	.L312	@,
.L263:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC52	@,
	movt	r1, #:upper16:.LC52	@,
	bl	dprint_vfmw	@
	movw	r0, #:lower16:190876	@ tmp317,
	movt	r0, #:upper16:190876	@ tmp317,
	mov	r2, #0	@ tmp318,
	str	r2, [r5, r0]	@ tmp318, <variable>.MatchScdIdPlus1
.L260:
	ldr	r5, [r4, #616]	@ temp.1693, <variable>.pSmInstArray
	cmp	r5, #0	@ temp.1693,
	beq	.L265	@,
	ldr	r3, [r5, #88]	@ <variable>.Config.ScdLowdlyEnable, <variable>.Config.ScdLowdlyEnable
	cmp	r3, #0	@ <variable>.Config.ScdLowdlyEnable,
	beq	.L265	@,
	movw	r3, #:lower16:g_DspDrvState	@ tmp327,
	movt	r3, #:upper16:g_DspDrvState	@ tmp327,
	ldr	r2, [r3, #0]	@ temp.1695, g_DspDrvState
	cmp	r2, #1	@ temp.1695,
	ldrne	r3, [r3, #4]	@ prephitmp.1696, g_DspDrvState
	beq	.L313	@,
.L268:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC52	@,
	movt	r1, #:upper16:.LC52	@,
	bl	dprint_vfmw	@
	movw	r0, #:lower16:190876	@ tmp329,
	movt	r0, #:upper16:190876	@ tmp329,
	mov	r2, #0	@ tmp330,
	str	r2, [r5, r0]	@ tmp330, <variable>.MatchScdIdPlus1
.L265:
	ldr	r5, [r4, #664]	@ temp.1698, <variable>.pSmInstArray
	cmp	r5, #0	@ temp.1698,
	beq	.L270	@,
	ldr	r3, [r5, #88]	@ <variable>.Config.ScdLowdlyEnable, <variable>.Config.ScdLowdlyEnable
	cmp	r3, #0	@ <variable>.Config.ScdLowdlyEnable,
	beq	.L270	@,
	movw	r3, #:lower16:g_DspDrvState	@ tmp339,
	movt	r3, #:upper16:g_DspDrvState	@ tmp339,
	ldr	r2, [r3, #0]	@ temp.1700, g_DspDrvState
	cmp	r2, #1	@ temp.1700,
	ldrne	r3, [r3, #4]	@ prephitmp.1701, g_DspDrvState
	beq	.L314	@,
.L273:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC52	@,
	movt	r1, #:upper16:.LC52	@,
	bl	dprint_vfmw	@
	movw	r0, #:lower16:190876	@ tmp341,
	movt	r0, #:upper16:190876	@ tmp341,
	mov	r2, #0	@ tmp342,
	str	r2, [r5, r0]	@ tmp342, <variable>.MatchScdIdPlus1
.L270:
	ldr	r5, [r4, #712]	@ temp.1703, <variable>.pSmInstArray
	cmp	r5, #0	@ temp.1703,
	beq	.L275	@,
	ldr	r3, [r5, #88]	@ <variable>.Config.ScdLowdlyEnable, <variable>.Config.ScdLowdlyEnable
	cmp	r3, #0	@ <variable>.Config.ScdLowdlyEnable,
	beq	.L275	@,
	movw	r3, #:lower16:g_DspDrvState	@ tmp351,
	movt	r3, #:upper16:g_DspDrvState	@ tmp351,
	ldr	r2, [r3, #0]	@ temp.1705, g_DspDrvState
	cmp	r2, #1	@ temp.1705,
	ldrne	r3, [r3, #4]	@ prephitmp.1706, g_DspDrvState
	beq	.L315	@,
.L278:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC52	@,
	movt	r1, #:upper16:.LC52	@,
	bl	dprint_vfmw	@
	movw	r0, #:lower16:190876	@ tmp353,
	movt	r0, #:upper16:190876	@ tmp353,
	mov	r2, #0	@ tmp354,
	str	r2, [r5, r0]	@ tmp354, <variable>.MatchScdIdPlus1
.L275:
	ldr	r4, [r4, #760]	@ D.53163, <variable>.pSmInstArray
	cmp	r4, #0	@ D.53163,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	ldr	r3, [r4, #88]	@ <variable>.Config.ScdLowdlyEnable, <variable>.Config.ScdLowdlyEnable
	cmp	r3, #0	@ <variable>.Config.ScdLowdlyEnable,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	movw	r3, #:lower16:g_DspDrvState	@ tmp363,
	movt	r3, #:upper16:g_DspDrvState	@ tmp363,
	ldr	r2, [r3, #0]	@ D.53171, g_DspDrvState
	cmp	r2, #1	@ D.53171,
	ldrne	r3, [r3, #4]	@ prephitmp.1621, g_DspDrvState
	beq	.L316	@,
.L283:
	movw	r1, #:lower16:.LC52	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC52	@,
	bl	dprint_vfmw	@
.L300:
	movw	r0, #:lower16:190876	@ tmp371,
	movt	r0, #:upper16:190876	@ tmp371,
	mov	r2, #0	@ tmp372,
	str	r2, [r4, r0]	@ tmp372, <variable>.MatchScdIdPlus1
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L316:
	ldr	r3, [r3, #4]	@ prephitmp.1621, g_DspDrvState
	cmp	r3, #1	@ prephitmp.1621,
	beq	.L300	@,
	cmp	r3, #2	@ prephitmp.1621,
	movweq	r3, #:lower16:190876	@ tmp367,
	movteq	r3, #:upper16:190876	@ tmp367,
	streq	r2, [r4, r3]	@ D.53171, <variable>.MatchScdIdPlus1
	bne	.L283	@,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L301:
	ldr	r3, [r3, #4]	@ prephitmp.1636, g_DspDrvState
	cmp	r3, #1	@ prephitmp.1636,
	beq	.L209	@,
	cmp	r3, #2	@ prephitmp.1636,
	movweq	r3, #:lower16:190876	@ tmp189,
	movteq	r3, #:upper16:190876	@ tmp189,
	streq	r2, [r5, r3]	@ temp.1635, <variable>.MatchScdIdPlus1
	bne	.L208	@,
	b	.L205	@
.L302:
	ldr	r3, [r3, #4]	@ prephitmp.1641, g_DspDrvState
	cmp	r3, #1	@ prephitmp.1641,
	beq	.L214	@,
	cmp	r3, #2	@ prephitmp.1641,
	movweq	r3, #:lower16:190876	@ tmp201,
	movteq	r3, #:upper16:190876	@ tmp201,
	streq	r2, [r5, r3]	@ temp.1640, <variable>.MatchScdIdPlus1
	bne	.L213	@,
	b	.L210	@
.L303:
	ldr	r3, [r3, #4]	@ prephitmp.1646, g_DspDrvState
	cmp	r3, #1	@ prephitmp.1646,
	beq	.L219	@,
	cmp	r3, #2	@ prephitmp.1646,
	movweq	r3, #:lower16:190876	@ tmp213,
	movteq	r3, #:upper16:190876	@ tmp213,
	streq	r2, [r5, r3]	@ temp.1645, <variable>.MatchScdIdPlus1
	bne	.L218	@,
	b	.L215	@
.L304:
	ldr	r3, [r3, #4]	@ prephitmp.1651, g_DspDrvState
	cmp	r3, #1	@ prephitmp.1651,
	beq	.L224	@,
	cmp	r3, #2	@ prephitmp.1651,
	movweq	r3, #:lower16:190876	@ tmp225,
	movteq	r3, #:upper16:190876	@ tmp225,
	streq	r2, [r5, r3]	@ temp.1650, <variable>.MatchScdIdPlus1
	bne	.L223	@,
	b	.L220	@
.L305:
	ldr	r3, [r3, #4]	@ prephitmp.1656, g_DspDrvState
	cmp	r3, #1	@ prephitmp.1656,
	beq	.L229	@,
	cmp	r3, #2	@ prephitmp.1656,
	movweq	r3, #:lower16:190876	@ tmp237,
	movteq	r3, #:upper16:190876	@ tmp237,
	streq	r2, [r5, r3]	@ temp.1655, <variable>.MatchScdIdPlus1
	bne	.L228	@,
	b	.L225	@
.L306:
	ldr	r3, [r3, #4]	@ prephitmp.1661, g_DspDrvState
	cmp	r3, #1	@ prephitmp.1661,
	beq	.L234	@,
	cmp	r3, #2	@ prephitmp.1661,
	movweq	r3, #:lower16:190876	@ tmp249,
	movteq	r3, #:upper16:190876	@ tmp249,
	streq	r2, [r5, r3]	@ temp.1660, <variable>.MatchScdIdPlus1
	bne	.L233	@,
	b	.L230	@
.L307:
	ldr	r3, [r3, #4]	@ prephitmp.1666, g_DspDrvState
	cmp	r3, #1	@ prephitmp.1666,
	beq	.L239	@,
	cmp	r3, #2	@ prephitmp.1666,
	movweq	r3, #:lower16:190876	@ tmp261,
	movteq	r3, #:upper16:190876	@ tmp261,
	streq	r2, [r5, r3]	@ temp.1665, <variable>.MatchScdIdPlus1
	bne	.L238	@,
	b	.L235	@
.L308:
	ldr	r3, [r3, #4]	@ prephitmp.1671, g_DspDrvState
	cmp	r3, #1	@ prephitmp.1671,
	beq	.L244	@,
	cmp	r3, #2	@ prephitmp.1671,
	movweq	r3, #:lower16:190876	@ tmp273,
	movteq	r3, #:upper16:190876	@ tmp273,
	streq	r2, [r5, r3]	@ temp.1670, <variable>.MatchScdIdPlus1
	bne	.L243	@,
	b	.L240	@
.L309:
	ldr	r3, [r3, #4]	@ prephitmp.1676, g_DspDrvState
	cmp	r3, #1	@ prephitmp.1676,
	beq	.L249	@,
	cmp	r3, #2	@ prephitmp.1676,
	movweq	r3, #:lower16:190876	@ tmp285,
	movteq	r3, #:upper16:190876	@ tmp285,
	streq	r2, [r5, r3]	@ temp.1675, <variable>.MatchScdIdPlus1
	bne	.L248	@,
	b	.L245	@
.L310:
	ldr	r3, [r3, #4]	@ prephitmp.1681, g_DspDrvState
	cmp	r3, #1	@ prephitmp.1681,
	beq	.L254	@,
	cmp	r3, #2	@ prephitmp.1681,
	movweq	r3, #:lower16:190876	@ tmp297,
	movteq	r3, #:upper16:190876	@ tmp297,
	streq	r2, [r5, r3]	@ temp.1680, <variable>.MatchScdIdPlus1
	bne	.L253	@,
	b	.L250	@
.L311:
	ldr	r3, [r3, #4]	@ prephitmp.1686, g_DspDrvState
	cmp	r3, #1	@ prephitmp.1686,
	beq	.L259	@,
	cmp	r3, #2	@ prephitmp.1686,
	movweq	r3, #:lower16:190876	@ tmp309,
	movteq	r3, #:upper16:190876	@ tmp309,
	streq	r2, [r5, r3]	@ temp.1685, <variable>.MatchScdIdPlus1
	bne	.L258	@,
	b	.L255	@
.L312:
	ldr	r3, [r3, #4]	@ prephitmp.1691, g_DspDrvState
	cmp	r3, #1	@ prephitmp.1691,
	beq	.L264	@,
	cmp	r3, #2	@ prephitmp.1691,
	movweq	r3, #:lower16:190876	@ tmp321,
	movteq	r3, #:upper16:190876	@ tmp321,
	streq	r2, [r5, r3]	@ temp.1690, <variable>.MatchScdIdPlus1
	bne	.L263	@,
	b	.L260	@
.L313:
	ldr	r3, [r3, #4]	@ prephitmp.1696, g_DspDrvState
	cmp	r3, #1	@ prephitmp.1696,
	beq	.L269	@,
	cmp	r3, #2	@ prephitmp.1696,
	movweq	r3, #:lower16:190876	@ tmp333,
	movteq	r3, #:upper16:190876	@ tmp333,
	streq	r2, [r5, r3]	@ temp.1695, <variable>.MatchScdIdPlus1
	bne	.L268	@,
	b	.L265	@
.L314:
	ldr	r3, [r3, #4]	@ prephitmp.1701, g_DspDrvState
	cmp	r3, #1	@ prephitmp.1701,
	beq	.L274	@,
	cmp	r3, #2	@ prephitmp.1701,
	movweq	r3, #:lower16:190876	@ tmp345,
	movteq	r3, #:upper16:190876	@ tmp345,
	streq	r2, [r5, r3]	@ temp.1700, <variable>.MatchScdIdPlus1
	bne	.L273	@,
	b	.L270	@
.L315:
	ldr	r3, [r3, #4]	@ prephitmp.1706, g_DspDrvState
	cmp	r3, #1	@ prephitmp.1706,
	beq	.L279	@,
	cmp	r3, #2	@ prephitmp.1706,
	movweq	r3, #:lower16:190876	@ tmp357,
	movteq	r3, #:upper16:190876	@ tmp357,
	streq	r2, [r5, r3]	@ temp.1705, <variable>.MatchScdIdPlus1
	bne	.L278	@,
	b	.L275	@
.L209:
	movw	ip, #:lower16:190876	@ tmp191,
	movt	ip, #:upper16:190876	@ tmp191,
	mov	r1, #0	@ tmp192,
	str	r1, [r5, ip]	@ tmp192, <variable>.MatchScdIdPlus1
	b	.L205	@
.L279:
	movw	ip, #:lower16:190876	@ tmp359,
	movt	ip, #:upper16:190876	@ tmp359,
	mov	r1, #0	@ tmp360,
	str	r1, [r5, ip]	@ tmp360, <variable>.MatchScdIdPlus1
	b	.L275	@
.L274:
	movw	ip, #:lower16:190876	@ tmp347,
	movt	ip, #:upper16:190876	@ tmp347,
	mov	r1, #0	@ tmp348,
	str	r1, [r5, ip]	@ tmp348, <variable>.MatchScdIdPlus1
	b	.L270	@
.L269:
	movw	ip, #:lower16:190876	@ tmp335,
	movt	ip, #:upper16:190876	@ tmp335,
	mov	r1, #0	@ tmp336,
	str	r1, [r5, ip]	@ tmp336, <variable>.MatchScdIdPlus1
	b	.L265	@
.L264:
	movw	ip, #:lower16:190876	@ tmp323,
	movt	ip, #:upper16:190876	@ tmp323,
	mov	r1, #0	@ tmp324,
	str	r1, [r5, ip]	@ tmp324, <variable>.MatchScdIdPlus1
	b	.L260	@
.L259:
	movw	ip, #:lower16:190876	@ tmp311,
	movt	ip, #:upper16:190876	@ tmp311,
	mov	r1, #0	@ tmp312,
	str	r1, [r5, ip]	@ tmp312, <variable>.MatchScdIdPlus1
	b	.L255	@
.L254:
	movw	ip, #:lower16:190876	@ tmp299,
	movt	ip, #:upper16:190876	@ tmp299,
	mov	r1, #0	@ tmp300,
	str	r1, [r5, ip]	@ tmp300, <variable>.MatchScdIdPlus1
	b	.L250	@
.L249:
	movw	ip, #:lower16:190876	@ tmp287,
	movt	ip, #:upper16:190876	@ tmp287,
	mov	r1, #0	@ tmp288,
	str	r1, [r5, ip]	@ tmp288, <variable>.MatchScdIdPlus1
	b	.L245	@
.L244:
	movw	ip, #:lower16:190876	@ tmp275,
	movt	ip, #:upper16:190876	@ tmp275,
	mov	r1, #0	@ tmp276,
	str	r1, [r5, ip]	@ tmp276, <variable>.MatchScdIdPlus1
	b	.L240	@
.L239:
	movw	ip, #:lower16:190876	@ tmp263,
	movt	ip, #:upper16:190876	@ tmp263,
	mov	r1, #0	@ tmp264,
	str	r1, [r5, ip]	@ tmp264, <variable>.MatchScdIdPlus1
	b	.L235	@
.L234:
	movw	ip, #:lower16:190876	@ tmp251,
	movt	ip, #:upper16:190876	@ tmp251,
	mov	r1, #0	@ tmp252,
	str	r1, [r5, ip]	@ tmp252, <variable>.MatchScdIdPlus1
	b	.L230	@
.L229:
	movw	ip, #:lower16:190876	@ tmp239,
	movt	ip, #:upper16:190876	@ tmp239,
	mov	r1, #0	@ tmp240,
	str	r1, [r5, ip]	@ tmp240, <variable>.MatchScdIdPlus1
	b	.L225	@
.L224:
	movw	ip, #:lower16:190876	@ tmp227,
	movt	ip, #:upper16:190876	@ tmp227,
	mov	r1, #0	@ tmp228,
	str	r1, [r5, ip]	@ tmp228, <variable>.MatchScdIdPlus1
	b	.L220	@
.L219:
	movw	ip, #:lower16:190876	@ tmp215,
	movt	ip, #:upper16:190876	@ tmp215,
	mov	r1, #0	@ tmp216,
	str	r1, [r5, ip]	@ tmp216, <variable>.MatchScdIdPlus1
	b	.L215	@
.L214:
	movw	ip, #:lower16:190876	@ tmp203,
	movt	ip, #:upper16:190876	@ tmp203,
	mov	r1, #0	@ tmp204,
	str	r1, [r5, ip]	@ tmp204, <variable>.MatchScdIdPlus1
	b	.L210	@
	.fnend
	.size	SM_AddMatchMode, .-SM_AddMatchMode
	.align	2
	.global	SM_SetRawDiscontinueFlag
	.type	SM_SetRawDiscontinueFlag, %function
SM_SetRawDiscontinueFlag:
	.fnstart
.LFB1601:
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
	cmp	r0, #15	@ InstID,
	bhi	.L323	@,
	add	r0, r0, r0, asl #1	@, tmp142, InstID, InstID,
	movw	ip, #:lower16:.LANCHOR0	@ tmp138,
	movt	ip, #:upper16:.LANCHOR0	@ tmp138,
	add	r2, ip, r0, asl #4	@, tmp144, tmp138, tmp142,
	ldr	ip, [r2, #40]	@ pSmInstArray, <variable>.pSmInstArray
	rsbs	r3, ip, #1	@ tmp149, pSmInstArray
	movcc	r3, #0	@ tmp149
	orrs	r3, r3, r1, lsr #31	@,, tmp149, Flag,
	bne	.L324	@,
	movw	r2, #:lower16:190880	@ tmp155,
	movt	r2, #:upper16:190880	@ tmp155,
	ldr	r3, [ip, r2]	@ <variable>.Mode, <variable>.Mode
	cmp	r3, #0	@ <variable>.Mode,
	strne	r1, [ip, #84]	@ Flag, <variable>.Config.DisContinueRawPacketFlag
	streq	r3, [ip, #84]	@ <variable>.Mode, <variable>.Config.DisContinueRawPacketFlag
	moveq	r0, #1	@ D.52339,
	movne	r0, #1	@ D.52339,
	b	.L319	@
.L324:
	mov	r3, r1	@, Flag
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC53	@,
	movw	r2, #4332	@,
	movt	r1, #:upper16:.LC53	@,
	str	ip, [sp, #0]	@ pSmInstArray,
	bl	dprint_vfmw	@
.L323:
	mov	r0, #0	@ D.52339,
.L319:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.fnend
	.size	SM_SetRawDiscontinueFlag, .-SM_SetRawDiscontinueFlag
	.align	2
	.global	SM_CfgBuf
	.type	SM_CfgBuf, %function
SM_CfgBuf:
	.fnstart
.LFB1573:
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
	cmp	r0, #15	@ SmID,
	bhi	.L332	@,
	cmp	r1, #0	@ ScdId,
	bne	.L333	@,
	add	r0, r0, r0, asl #1	@, tmp144, SmID, SmID,
	movw	r2, #:lower16:.LANCHOR0	@ tmp140,
	movt	r2, #:upper16:.LANCHOR0	@ tmp140,
	add	r0, r2, r0, asl #4	@, tmp146, tmp140, tmp144,
	ldr	ip, [r0, #40]	@ pSmInstArray, <variable>.pSmInstArray
	cmp	ip, #0	@ pSmInstArray,
	mvneq	r0, #0	@ D.50916,
	beq	.L327	@,
	movw	r3, #:lower16:190868	@ tmp148,
	movt	r3, #:upper16:190868	@ tmp148,
	ldr	r0, [ip, r3]	@ <variable>.ScdID, <variable>.ScdID
	cmp	r0, #0	@ <variable>.ScdID,
	beq	.L327	@,
	ldr	sl, [r2, #780]	@ <variable>.ScdDrvMem.DownMsgMemAddr, <variable>.ScdDrvMem.DownMsgMemAddr
	movw	r7, #:lower16:190768	@ tmp150,
	movt	r7, #:upper16:190768	@ tmp150,
	movw	r8, #:lower16:190772	@ tmp153,
	movt	r8, #:upper16:190772	@ tmp153,
	movw	r4, #:lower16:190776	@ tmp156,
	str	sl, [ip, r7]	@ <variable>.ScdDrvMem.DownMsgMemAddr, <variable>.BufAddrCfg.DownMsgPhyAddr
	movt	r4, #:upper16:190776	@ tmp156,
	ldr	r6, [r2, #784]	@ <variable>.ScdDrvMem.pDownMsgMemVirAddr, <variable>.ScdDrvMem.pDownMsgMemVirAddr
	movw	r0, #:lower16:190780	@ tmp159,
	movt	r0, #:upper16:190780	@ tmp159,
	movw	r9, #:lower16:190828	@,
	movt	r9, #:upper16:190828	@,
	movw	sl, #:lower16:190784	@ tmp162,
	str	r6, [ip, r8]	@ <variable>.ScdDrvMem.pDownMsgMemVirAddr, <variable>.BufAddrCfg.pDownMsgVirAddr
	movt	sl, #:upper16:190784	@ tmp162,
	ldr	r5, [r2, #788]	@ <variable>.ScdDrvMem.DownMsgMemSize, <variable>.ScdDrvMem.DownMsgMemSize
	movw	r7, #:lower16:190788	@ tmp165,
	movw	r8, #:lower16:190792	@ tmp168,
	movt	r7, #:upper16:190788	@ tmp165,
	movt	r8, #:upper16:190792	@ tmp168,
	movw	r6, #:lower16:190820	@ tmp170,
	str	r5, [ip, r4]	@ <variable>.ScdDrvMem.DownMsgMemSize, <variable>.BufAddrCfg.DownMsgSize
	movt	r6, #:upper16:190820	@ tmp170,
	ldr	r4, [r2, #792]	@ <variable>.ScdDrvMem.UpMsgMemAddr, <variable>.ScdDrvMem.UpMsgMemAddr
	movw	r5, #:lower16:190824	@ tmp173,
	str	r9, [fp, #-56]	@, %sfp
	movw	r9, #:lower16:190832	@,
	movt	r9, #:upper16:190832	@,
	str	r9, [fp, #-48]	@, %sfp
	str	r4, [ip, r0]	@ <variable>.ScdDrvMem.UpMsgMemAddr, <variable>.BufAddrCfg.UpMsgPhyAddr
	movw	r0, #:lower16:190840	@,
	movt	r0, #:upper16:190840	@,
	str	r0, [fp, #-52]	@, %sfp
	ldr	r4, [r2, #796]	@, <variable>.ScdDrvMem.pUpMsgMemVirAddr
	movt	r5, #:upper16:190824	@ tmp173,
	movw	r9, #:lower16:190836	@ tmp182,
	movt	r9, #:upper16:190836	@ tmp182,
	mov	r0, r1	@ D.50916, ScdId
	str	r4, [ip, sl]	@, <variable>.BufAddrCfg.pUpMsgVirAddr
	ldr	sl, [r2, #800]	@, <variable>.ScdDrvMem.UpMsgMemSize
	str	sl, [ip, r7]	@, <variable>.BufAddrCfg.UpMsgSize
	mov	sl, #1152	@ tmp169,
	str	sl, [ip, r8]	@ tmp169, <variable>.BufAddrCfg.UpMsgNum
	ldr	r7, [r2, #804]	@ <variable>.ScdDrvMem.DvmMemAddr, <variable>.ScdDrvMem.DvmMemAddr
	str	r7, [ip, r6]	@ <variable>.ScdDrvMem.DvmMemAddr, <variable>.BufAddrCfg.DvmMemAddr
	ldr	r6, [r2, #808]	@ <variable>.ScdDrvMem.pDvmMemVirAddr, <variable>.ScdDrvMem.pDvmMemVirAddr
	str	r6, [ip, r5]	@ <variable>.ScdDrvMem.pDvmMemVirAddr, <variable>.BufAddrCfg.pDvmMemVirAddr
	ldr	r4, [fp, #-56]	@, %sfp
	ldr	r5, [r2, #812]	@ <variable>.ScdDrvMem.DvmMemSize, <variable>.ScdDrvMem.DvmMemSize
	str	r5, [ip, r4]	@ <variable>.ScdDrvMem.DvmMemSize, <variable>.BufAddrCfg.DvmMemSize
	ldr	r5, [fp, #-48]	@, %sfp
	ldr	r4, [r2, #816]	@ <variable>.ScdDrvMem.DspSedTopMemAddr, <variable>.ScdDrvMem.DspSedTopMemAddr
	str	r4, [ip, r5]	@ <variable>.ScdDrvMem.DspSedTopMemAddr, <variable>.BufAddrCfg.DspSedTopMemAddr
	ldr	r4, [r2, #820]	@ <variable>.ScdDrvMem.pDspSedTopMemVirAddr, <variable>.ScdDrvMem.pDspSedTopMemVirAddr
	str	r4, [ip, r9]	@ <variable>.ScdDrvMem.pDspSedTopMemVirAddr, <variable>.BufAddrCfg.pDspSedTopMemVirAddr
	ldr	r2, [r2, #824]	@ <variable>.ScdDrvMem.DspSedTopMemSize, <variable>.ScdDrvMem.DspSedTopMemSize
	str	r1, [ip, r3]	@ ScdId, <variable>.ScdID
	ldr	r9, [fp, #-52]	@, %sfp
	str	r2, [ip, r9]	@ <variable>.ScdDrvMem.DspSedTopMemSize, <variable>.BufAddrCfg.DspSedTopMemSize
.L327:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L333:
	mov	r3, r1	@, ScdId
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC55	@,
	mov	r2, #2192	@,
	movt	r1, #:upper16:.LC55	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.50916,
	b	.L327	@
.L332:
	mov	r3, r0	@, SmID
	movw	r1, #:lower16:.LC54	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC54	@,
	movw	r2, #2186	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.50916,
	b	.L327	@
	.fnend
	.size	SM_CfgBuf, .-SM_CfgBuf
	.align	2
	.global	SCDDRV_ExitSleep
	.type	SCDDRV_ExitSleep, %function
SCDDRV_ExitSleep:
	.fnstart
.LFB1564:
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
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp135,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp135,
	mov	r4, r0	@ ScdId, ScdId
	ldr	r3, [r3, #16]	@ D.50521, g_vdm_hal_fun_ptr.pfun_SCDDRV_OpenHardware
	cmp	r3, #0	@ D.50521,
	beq	.L335	@,
	blx	r3	@ D.50521
	movw	r1, #:lower16:.LANCHOR0	@ tmp137,
	movt	r1, #:upper16:.LANCHOR0	@ tmp137,
	mov	r0, #0	@ tmp142,
	add	r4, r1, r4, asl #2	@, tmp140, tmp137, ScdId,
	str	r0, [r4, #768]	@ tmp142, s_eScdDrvSleepStage
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L335:
	mov	r0, r3	@, D.50521
	movw	r1, #:lower16:.LC56	@,
	movw	r2, #1560	@,
	movt	r1, #:upper16:.LC56	@,
	bl	dprint_vfmw	@
	movw	r1, #:lower16:.LANCHOR0	@ tmp137,
	movt	r1, #:upper16:.LANCHOR0	@ tmp137,
	mov	r0, #0	@ tmp142,
	add	r4, r1, r4, asl #2	@, tmp140, tmp137, ScdId,
	str	r0, [r4, #768]	@ tmp142, s_eScdDrvSleepStage
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	SCDDRV_ExitSleep, .-SCDDRV_ExitSleep
	.align	2
	.global	ReleaseStreamSeg
	.type	ReleaseStreamSeg, %function
ReleaseStreamSeg:
	.fnstart
.LFB1557:
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
	subs	r4, r0, #0	@ pStreamSegArray, pStreamSegArray
	mov	r5, r1	@ StreamID, StreamID
	bne	.L360	@,
.L339:
	mvn	r0, #0	@ Ret,
.L353:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L360:
	sub	r2, r1, #1152	@ tmp147, StreamID,
	movw	r3, #:lower16:-1154	@ tmp149,
	movt	r3, #:upper16:-1154	@ tmp149,
	cmp	r2, r3	@ tmp147, tmp149
	bls	.L339	@,
	cmn	r1, #1	@ StreamID,
	beq	.L361	@,
	movw	r3, #:lower16:92168	@ tmp194,
	movw	r2, #:lower16:92172	@ tmp195,
	movt	r3, #:upper16:92168	@ tmp194,
	movt	r2, #:upper16:92172	@ tmp195,
	ldr	r3, [r4, r3]	@ i.1814, <variable>.Head
	ldr	r0, [r4, r2]	@ temp.1824, <variable>.Tail
	cmp	r3, r0	@ i.1814, temp.1824
	beq	.L341	@,
	cmp	r1, r3	@ StreamID, i.1814
	movwne	r1, #:lower16:954437177	@ tmp287,
	movtne	r1, #:upper16:954437177	@ tmp287,
	bne	.L355	@,
	b	.L345	@
.L359:
	cmp	r5, r3	@ StreamID, i.1814
	beq	.L345	@,
.L355:
	add	r3, r3, #1	@ D.50436, i.1814,
	umull	ip, r2, r1, r3	@, tmp212, tmp287, D.50436
	mov	r2, r2, lsr #8	@ i.1814, tmp212,
	add	ip, r2, r2, asl #3	@, tmp216, i.1814, i.1814,
	sub	r3, r3, ip, asl #7	@ i.1814, D.50436, tmp216,
	cmp	r3, r0	@ i.1814, temp.1824
	bne	.L359	@,
.L341:
	mvn	r0, #2	@ Ret,
	b	.L353	@
.L345:
	add	sl, r5, r5, asl #2	@, tmp198, StreamID, StreamID,
	add	r1, r4, sl, asl #4	@, tmp202, pStreamSegArray, tmp198,
	add	sl, r1, #8	@ tmp203, tmp202,
	ldrsb	r0, [sl, #4]	@ <variable>.SegState, <variable>.SegState
	cmp	r0, #2	@ <variable>.SegState,
	bne	.L341	@,
.L344:
	ldrb	ip, [sl, #5]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	mov	lr, #0	@ tmp218,
	ldr	r2, [sl, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	mov	r0, #26	@,
	ldr	r3, [sl, #16]	@ <variable>.LenInByte, <variable>.LenInByte
	movw	r1, #:lower16:.LC59	@,
	strb	lr, [sl, #4]	@ tmp218, <variable>.SegState
	movt	r1, #:upper16:.LC59	@,
	str	ip, [sp, #0]	@ <variable>.IsLastSeg,
	str	r5, [sp, #4]	@ StreamID,
	bl	dprint_vfmw	@
	movw	r1, #:lower16:92168	@ tmp224,
	movt	r1, #:upper16:92168	@ tmp224,
	ldr	r0, [r4, r1]	@ <variable>.Head, <variable>.Head
	cmp	r0, r5	@ <variable>.Head, StreamID
	beq	.L362	@,
.L348:
	movw	r3, #:lower16:92200	@ tmp262,
	movt	r3, #:upper16:92200	@ tmp262,
	ldr	r2, [sl, #16]	@ <variable>.LenInByte, <variable>.LenInByte
	mov	r0, #0	@ Ret,
	ldr	r1, [r4, r3]	@ <variable>.SegTotalSize, <variable>.SegTotalSize
	rsb	ip, r2, r1	@ tmp266, <variable>.LenInByte, <variable>.SegTotalSize
	bic	r2, ip, ip, asr #31	@ tmp267, tmp266
	str	r2, [r4, r3]	@ tmp267, <variable>.SegTotalSize
	b	.L353	@
.L361:
	movw	ip, #:lower16:92168	@ tmp150,
	movw	r1, #:lower16:92172	@ tmp151,
	movt	ip, #:upper16:92168	@ tmp150,
	movt	r1, #:upper16:92172	@ tmp151,
	ldr	sl, [r4, ip]	@ D.50407, <variable>.Head
	ldr	r0, [r4, r1]	@ <variable>.Tail, <variable>.Tail
	cmp	sl, r0	@ D.50407, <variable>.Tail
	beq	.L341	@,
	mov	r2, sl	@, D.50407
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC57	@,
	mov	r9, sl, asl #2	@ tmp270, D.50407,
	movt	r1, #:upper16:.LC57	@,
	mov	r5, sl	@ StreamID, D.50407
	bl	dprint_vfmw	@
	add	r3, r9, sl	@ tmp156, tmp270, D.50407
	mov	r8, r3, asl #1	@ tmp158, tmp156,
	add	r8, r8, #3	@ tmp159, tmp158,
	ldr	r2, [r4, r8, asl #3]	@ <variable>.LenInByte, <variable>.LenInByte
	cmp	r2, #0	@ <variable>.LenInByte,
	beq	.L342	@,
	mov	r6, r3, asl #1	@ tmp280, tmp156,
	add	r7, r6, #1	@ tmp281, tmp280,
	mov	r6, #0	@ i.1812,
.L343:
	ldr	lr, [r4, r7, asl #3]	@ <variable>.VirAddr, <variable>.VirAddr
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC58	@,
	movt	r1, #:upper16:.LC58	@,
	ldrb	r2, [lr, r6]	@ zero_extendqisi2	@,* i.1812
	add	r6, r6, #1	@ i.1812, i.1812,
	bl	dprint_vfmw	@
	ldr	r1, [r4, r8, asl #3]	@ <variable>.LenInByte, <variable>.LenInByte
	cmp	r6, #15	@ i.1812,
	movhi	r0, #0	@,
	movls	r0, #1	@,
	cmp	r1, r6	@ <variable>.LenInByte, i.1812
	movls	r0, #0	@,,
	cmp	r0, #0	@ tmp186,
	bne	.L343	@,
.L342:
	add	ip, r9, sl	@ tmp189, tmp270, D.50407
	movw	r1, #:lower16:.LC39	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC39	@,
	add	sl, r4, ip, asl #4	@, tmp192, pStreamSegArray, tmp189,
	add	sl, sl, #8	@ pSeg, tmp192,
	bl	dprint_vfmw	@
	b	.L344	@
.L362:
	movw	r7, #:lower16:92172	@ tmp277,
	movw	r6, #:lower16:954437177	@ tmp278,
	movt	r7, #:upper16:92172	@ tmp277,
	movt	r6, #:upper16:954437177	@ tmp278,
	movw	r8, #1151	@ tmp273,
	b	.L352	@
.L349:
	ldr	r0, [r4, r7]	@ temp.1817, <variable>.Tail
	add	r3, r5, #1	@ temp.1819, i,
	add	r1, r5, r5, asl #2	@, tmp237, i, i,
	cmp	r0, r5	@ temp.1817, i
	umull	ip, r2, r6, r3	@, tmp256, tmp278, temp.1819
	add	ip, r4, r1, asl #4	@, tmp241, pStreamSegArray, tmp237,
	beq	.L363	@,
	cmp	r5, r8	@ i, tmp273
	mov	r2, r2, lsr #8	@ i, tmp256,
	bhi	.L351	@,
	ldrsb	r0, [ip, #12]	@ <variable>.SegState, <variable>.SegState
	cmp	r0, #0	@ <variable>.SegState,
	bne	.L364	@,
.L351:
	add	r0, r2, r2, asl #3	@, tmp260, i, i,
	sub	r5, r3, r0, asl #7	@ i, temp.1819, tmp260,
.L352:
	cmp	r5, r8	@ i, tmp273
	bls	.L349	@,
	movw	r1, #:lower16:.LC60	@,
	movw	r2, #:lower16:.LANCHOR1	@,
	movt	r1, #:upper16:.LC60	@,
	movt	r2, #:upper16:.LANCHOR1	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L349	@
.L363:
	movw	ip, #:lower16:92196	@ tmp232,
	movt	ip, #:upper16:92196	@ tmp232,
	movw	r2, #:lower16:92168	@ tmp230,
	movw	r3, #:lower16:92192	@ tmp231,
	ldr	r1, [r4, ip]	@ <variable>.SegBufWriteAddr, <variable>.SegBufWriteAddr
	movt	r2, #:upper16:92168	@ tmp230,
	movt	r3, #:upper16:92192	@ tmp231,
	str	r5, [r4, r2]	@ i, <variable>.Head
	str	r1, [r4, r3]	@ <variable>.SegBufWriteAddr, <variable>.SegBufReadAddr
	b	.L348	@
.L364:
	add	r1, r4, r1, asl #4	@, tmp253, pStreamSegArray, tmp237,
	movw	ip, #:lower16:92168	@ tmp245,
	movt	ip, #:upper16:92168	@ tmp245,
	movw	r3, #:lower16:92192	@ tmp246,
	movt	r3, #:upper16:92192	@ tmp246,
	str	r5, [r4, ip]	@ i, <variable>.Head
	ldr	r2, [r1, #20]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r2, [r4, r3]	@ <variable>.PhyAddr, <variable>.SegBufReadAddr
	b	.L348	@
	.fnend
	.size	ReleaseStreamSeg, .-ReleaseStreamSeg
	.align	2
	.global	SM_ReleaseStreamSeg
	.type	SM_ReleaseStreamSeg, %function
SM_ReleaseStreamSeg:
	.fnstart
.LFB1581:
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
	add	r0, r0, r0, asl #1	@, tmp142, SmID, SmID,
	movw	r2, #:lower16:.LANCHOR0	@ tmp138,
	movt	r2, #:upper16:.LANCHOR0	@ tmp138,
	add	r3, r2, r0, asl #4	@, tmp144, tmp138, tmp142,
	ldr	r0, [r3, #40]	@ pSmInstArray, <variable>.pSmInstArray
	cmp	r0, #0	@ pSmInstArray,
	mvneq	r0, #0	@ ret,
	ldmeqfd	sp, {fp, sp, pc}	@
	add	ip, r0, #98304	@, pSmInstArray,
	add	r0, ip, #232	@,,
	bl	ReleaseStreamSeg	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	SM_ReleaseStreamSeg, .-SM_ReleaseStreamSeg
	.align	2
	.global	GetRawNumOffsert
	.type	GetRawNumOffsert, %function
GetRawNumOffsert:
	.fnstart
.LFB1544:
	@ args = 32, pretend = 0, frame = 32
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
	rsbs	ip, r0, #1	@ tmp161, pRawStreamArray
	movcc	ip, #0	@ tmp161
	orrs	ip, ip, r1, lsr #31	@,, tmp161, Len,
	beq	.L382	@,
.L370:
	mvn	ip, #0	@ D.49991,
.L378:
	mov	r0, ip	@, D.49991
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L382:
	cmp	r2, #0	@ pNum,
	cmpne	r3, #0	@, pOffset,
	beq	.L370	@,
	mov	ip, #98304	@ tmp173,
	movw	sl, #:lower16:98308	@ tmp180,
	ldr	r8, [r0, ip]	@ D.49997, <variable>.Head
	movt	sl, #:upper16:98308	@ tmp180,
	movw	r4, #:lower16:98316	@ tmp179,
	movt	r4, #:upper16:98316	@ tmp179,
	ldr	r6, [r0, sl]	@ <variable>.Tail, <variable>.Tail
	mov	r5, r8, asl #1	@ tmp333, D.49997,
	ldr	sl, [r0, r4]	@ D.49999, <variable>.FirstPacketOffset
	add	r7, r5, r8	@ tmp176, tmp333, D.49997
	add	r4, r5, r8	@ tmp184, tmp333, D.49997
	subs	r6, r6, r8	@ RawNum, <variable>.Tail, D.49997
	add	r9, r0, r7, asl #5	@, tmp178, pRawStreamArray, tmp176,
	addmi	r6, r6, #1024	@ RawNum, RawNum,
	add	ip, r6, r8	@, RawNum, D.49997
	ldr	r6, [fp, #4]	@, pPts
	ldr	r7, [r9, #8]	@ D.49998, <variable>.Length
	mov	r9, r4, asl #5	@ tmp186, tmp184,
	str	ip, [fp, #-48]	@, %sfp
	add	ip, r9, #16	@ tmp187, tmp186,
	add	r5, r0, r4, asl #5	@, tmp194, pRawStreamArray, tmp184,
	ldrd	r8, [ip, r0]	@ <variable>.Pts, tmp187, pRawStreamArray
	mov	r4, r5	@ tmp210, tmp194
	strd	r8, [r6]	@ <variable>.Pts,
	ldr	r6, [fp, #8]	@, pUsertag
	ldrd	r8, [r5, #32]	@ <variable>.UserTag, tmp194,
	strd	r8, [r6]	@ <variable>.UserTag,
	ldrd	r8, [ip, r0]	@ <variable>.Pts, tmp187, pRawStreamArray
	ldr	ip, [fp, #32]	@, pRawPts
	strd	r8, [ip]	@ <variable>.Pts,
	ldrd	r8, [r5, #40]	@ <variable>.DispTime, tmp210,
	ldr	r5, [fp, #12]	@, pDisptime
	strd	r8, [r5]	@ <variable>.DispTime,
	ldr	r5, [fp, #16]	@, pDispEnableFlag
	ldr	r6, [r4, #56]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	str	r6, [r5, #0]	@ <variable>.DispEnableFlag,
	ldr	r6, [fp, #20]	@, pDispFrameDistance
	ldr	ip, [r4, #60]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	str	ip, [r6, #0]	@ <variable>.DispFrameDistance,
	ldr	r8, [fp, #24]	@, pDistanceBeforeFirstFrame
	ldr	ip, [r4, #64]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	str	ip, [r8, #0]	@ <variable>.DistanceBeforeFirstFrame,
	ldr	r9, [fp, #28]	@, pGopNum
	ldr	ip, [r4, #68]	@ <variable>.GopNum, <variable>.GopNum
	str	ip, [r9, #0]	@ <variable>.GopNum,
	mov	ip, #98304	@ tmp245,
	ldr	r4, [r0, ip]	@ i, <variable>.Head
	ldr	ip, [fp, #-48]	@, %sfp
	cmp	ip, r4	@, i
	ble	.L372	@,
	rsb	r6, sl, r7	@ TotalLen, D.49999, D.49998
	cmp	r1, r6	@ Len, TotalLen
	blt	.L372	@,
	str	r6, [fp, #-72]	@ TotalLen, %sfp
	mov	sl, r1	@ Len, Len
	str	r2, [fp, #-52]	@ pNum, %sfp
	str	r3, [fp, #-56]	@ pOffset, %sfp
	b	.L381	@
.L375:
	ldr	r7, [fp, #-48]	@, %sfp
	ldr	r9, [fp, #4]	@, pPts
	cmp	r7, r4	@, i
	ldrd	r6, [fp, #-68]	@,,
	strd	r6, [r9]	@,
	ldr	ip, [fp, #8]	@, pUsertag
	ldrd	r8, [r1, #32]	@ <variable>.UserTag, tmp270,
	strd	r8, [ip]	@ <variable>.UserTag,
	ldr	r1, [fp, #32]	@, pRawPts
	ldrd	r8, [r2, #16]	@ <variable>.Pts, tmp278,
	strd	r8, [r1]	@ <variable>.Pts,
	ldr	r2, [fp, #12]	@, pDisptime
	ldrd	r8, [r3, #40]	@ <variable>.DispTime, tmp286,
	strd	r8, [r2]	@ <variable>.DispTime,
	ldr	r6, [fp, #16]	@, pDispEnableFlag
	ldr	ip, [r3, #56]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	str	ip, [r6, #0]	@ <variable>.DispEnableFlag,
	ldr	r1, [fp, #20]	@, pDispFrameDistance
	ldr	r2, [r3, #60]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	str	r2, [r1, #0]	@ <variable>.DispFrameDistance,
	ldr	r8, [fp, #24]	@, pDistanceBeforeFirstFrame
	ldr	r6, [r3, #64]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	str	r6, [r8, #0]	@ <variable>.DistanceBeforeFirstFrame,
	ldr	r9, [fp, #28]	@, pGopNum
	ldr	r7, [r3, #68]	@ <variable>.GopNum, <variable>.GopNum
	str	r7, [r9, #0]	@ <variable>.GopNum,
	ble	.L383	@,
	ldr	r1, [fp, #-72]	@, %sfp
	cmp	sl, r1	@ Len,
	blt	.L384	@,
.L381:
	add	r4, r4, #1	@ i, i,
	mvn	r7, #0	@,
	mvn	r6, #0	@,
	mov	r5, r4, asr #31	@ tmp246, i,
	mov	r1, r5, lsr #22	@ tmp247, tmp246,
	add	ip, r4, r1	@ tmp248, i, tmp247
	mov	r9, ip, asl #22	@ tmp249, tmp248,
	mov	r8, r9, lsr #22	@ tmp249, tmp249,
	rsb	r5, r1, r8	@ Index, tmp247, tmp249
	mov	r2, r5, asl #1	@, Index,
	str	r2, [fp, #-76]	@, %sfp
	add	r3, r2, r5	@ tmp268,, Index
	add	r1, r0, r3, asl #5	@, tmp270, pRawStreamArray, tmp268,
	ldrd	r8, [r1, #16]	@, tmp263,
	mov	r2, r1	@ tmp278, tmp270
	mov	r3, r1	@ tmp286, tmp278
	cmp	r9, r7	@,
	cmpeq	r8, r6	@,
	ldr	r7, [fp, #-72]	@, %sfp
	strd	r8, [fp, #-68]	@,,
	ldr	ip, [r1, #8]	@ <variable>.Length, <variable>.Length
	add	r7, r7, ip	@,, <variable>.Length
	str	r7, [fp, #-72]	@, %sfp
	ldreq	r9, [fp, #4]	@, pPts
	ldreqd	r8, [r9]	@,
	streqd	r8, [fp, #-68]	@,,
	b	.L375	@
.L383:
	ldr	r6, [fp, #-72]	@ TotalLen, %sfp
	mov	r1, sl	@ Len, Len
	ldr	r2, [fp, #-52]	@ pNum, %sfp
	ldr	r3, [fp, #-56]	@ pOffset, %sfp
	ldr	r7, [fp, #-76]	@ tmp332, %sfp
.L374:
	mov	ip, #98304	@ tmp321,
	ldr	ip, [r0, ip]	@ temp.1884, <variable>.Head
	cmp	ip, r4	@ temp.1884, i
	beq	.L372	@,
	add	r5, r7, r5	@ tmp325, tmp332, Index
	rsb	r4, ip, r4	@ tmp329, temp.1884, i
	mov	ip, #0	@ D.49991,
	add	r0, r0, r5, asl #5	@, tmp327, pRawStreamArray, tmp325,
	ldr	r0, [r0, #8]	@ <variable>.Length, <variable>.Length
	str	r4, [r2, #0]	@ tmp329,* pNum
	rsb	r6, r0, r6	@ TotalLen.1886, <variable>.Length, TotalLen
	rsb	r0, r6, r1	@ tmp330, TotalLen.1886, Len
	str	r0, [r3, #0]	@ tmp330,* pOffset
	b	.L378	@
.L384:
	mov	r6, r1	@ TotalLen,
	ldr	r2, [fp, #-52]	@ pNum, %sfp
	mov	r1, sl	@ Len, Len
	ldr	r3, [fp, #-56]	@ pOffset, %sfp
	ldr	r7, [fp, #-76]	@ tmp332, %sfp
	b	.L374	@
.L372:
	mov	ip, #0	@ tmp322,
	str	ip, [r2, #0]	@ tmp322,* pNum
	str	r1, [r3, #0]	@ Len,* pOffset
	b	.L378	@
	.fnend
	.size	GetRawNumOffsert, .-GetRawNumOffsert
	.align	2
	.global	GetSegPts
	.type	GetSegPts, %function
GetSegPts:
	.fnstart
.LFB1594:
	@ args = 0, pretend = 0, frame = 8
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
	mov	r4, r3	@ pSegPacket, pSegPacket
	mvn	r9, #0	@ tmp144,
	mvn	r6, #0	@ tmp140,
	str	r9, [r3, #68]	@ tmp144, <variable>.GopNum
	mvn	r7, #0	@,
	str	r9, [r4, #56]	@ tmp144, <variable>.DispEnableFlag
	mov	r5, r2	@ pLastPts, pLastPts
	strd	r6, [r3, #24]	@ tmp140, pSegPacket,
	sub	r2, fp, #48	@,,
	strd	r6, [r3, #40]	@ tmp140, pSegPacket,
	mov	lr, #0	@ tmp138,
	strd	r6, [r3, #32]	@ tmp140, pSegPacket,
	sub	r3, fp, #52	@,,
	str	r9, [r4, #60]	@ tmp144, <variable>.DispFrameDistance
	add	r8, r4, #24	@ tmp150, pSegPacket,
	str	r9, [r4, #64]	@ tmp144, <variable>.DistanceBeforeFirstFrame
	add	sl, r4, #40	@ tmp151, pSegPacket,
	strd	r6, [r4, #48]	@ tmp140, pSegPacket,
	add	ip, r4, #48	@ tmp152, pSegPacket,
	str	r8, [sp, #0]	@ tmp150,
	add	r9, r4, #56	@ tmp153, pSegPacket,
	add	r8, r4, #60	@, pSegPacket,
	str	sl, [sp, #4]	@ tmp151,
	str	r8, [sp, #16]	@,
	add	sl, r4, #64	@ tmp155, pSegPacket,
	str	ip, [sp, #8]	@ tmp152,
	add	r8, r4, #68	@ tmp156, pSegPacket,
	add	ip, r4, #32	@ tmp157, pSegPacket,
	str	lr, [fp, #-52]	@ tmp138, Offset
	str	r9, [sp, #12]	@ tmp153,
	str	sl, [sp, #20]	@ tmp155,
	str	r8, [sp, #24]	@ tmp156,
	str	ip, [sp, #28]	@ tmp157,
	str	lr, [fp, #-48]	@ tmp138, Num
	bl	GetRawNumOffsert	@
	ldrd	r2, [r4, #24]	@ D.51818, pSegPacket,
	ldrd	r0, [r5]	@ tmp158,* pLastPts
	cmp	r1, r3	@ tmp158, D.51818
	cmpeq	r0, r2	@ tmp158, D.51818
	beq	.L389	@,
	strd	r2, [r5]	@ D.51818,* pLastPts
.L388:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L389:
	strd	r6, [r4, #24]	@ tmp140, pSegPacket,
	b	.L388	@
	.fnend
	.size	GetSegPts, .-GetSegPts
	.align	2
	.global	DeleteRawPacket
	.type	DeleteRawPacket, %function
DeleteRawPacket:
	.fnstart
.LFB1542:
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
	cmp	r0, #0	@ pRawStreamArray,
	cmpne	r1, #0	@, DelNum,
	mov	r9, r1	@ DelNum, DelNum
	mov	r4, r0	@ pRawStreamArray, pRawStreamArray
	movne	r6, #0	@, tmp170
	moveq	r6, #1	@, tmp170
	beq	.L426	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp261,
	movt	r3, #:upper16:.LANCHOR0	@ tmp261,
	ldr	r2, [r3, #40]	@ D.53840, <variable>.pSmInstArray
	cmp	r2, #0	@ D.53840,
	beq	.L393	@,
	add	r2, r2, #208	@ tmp172, D.53840,
	cmp	r0, r2	@ pRawStreamArray, tmp172
	beq	.L394	@,
.L393:
	ldr	r2, [r3, #88]	@ temp.1949, <variable>.pSmInstArray
	cmp	r2, #0	@ temp.1949,
	beq	.L395	@,
	add	r0, r2, #208	@ tmp174, temp.1949,
	cmp	r4, r0	@ pRawStreamArray, tmp174
	moveq	r6, #1	@ SmID,
	beq	.L394	@,
.L395:
	ldr	r2, [r3, #136]	@ temp.1951, <variable>.pSmInstArray
	cmp	r2, #0	@ temp.1951,
	beq	.L396	@,
	add	r1, r2, #208	@ tmp176, temp.1951,
	cmp	r4, r1	@ pRawStreamArray, tmp176
	moveq	r6, #2	@ SmID,
	beq	.L394	@,
.L396:
	ldr	r2, [r3, #184]	@ temp.1953, <variable>.pSmInstArray
	cmp	r2, #0	@ temp.1953,
	beq	.L397	@,
	add	ip, r2, #208	@ tmp178, temp.1953,
	cmp	r4, ip	@ pRawStreamArray, tmp178
	moveq	r6, #3	@ SmID,
	beq	.L394	@,
.L397:
	ldr	r2, [r3, #232]	@ temp.1955, <variable>.pSmInstArray
	cmp	r2, #0	@ temp.1955,
	beq	.L398	@,
	add	lr, r2, #208	@ tmp180, temp.1955,
	cmp	r4, lr	@ pRawStreamArray, tmp180
	moveq	r6, #4	@ SmID,
	beq	.L394	@,
.L398:
	ldr	r2, [r3, #280]	@ temp.1957, <variable>.pSmInstArray
	cmp	r2, #0	@ temp.1957,
	beq	.L399	@,
	add	r2, r2, #208	@ tmp182, temp.1957,
	cmp	r4, r2	@ pRawStreamArray, tmp182
	moveq	r6, #5	@ SmID,
	beq	.L394	@,
.L399:
	ldr	r2, [r3, #328]	@ temp.1959, <variable>.pSmInstArray
	cmp	r2, #0	@ temp.1959,
	beq	.L400	@,
	add	r0, r2, #208	@ tmp184, temp.1959,
	cmp	r4, r0	@ pRawStreamArray, tmp184
	moveq	r6, #6	@ SmID,
	beq	.L394	@,
.L400:
	ldr	r2, [r3, #376]	@ temp.1961, <variable>.pSmInstArray
	cmp	r2, #0	@ temp.1961,
	beq	.L401	@,
	add	r1, r2, #208	@ tmp186, temp.1961,
	cmp	r4, r1	@ pRawStreamArray, tmp186
	moveq	r6, #7	@ SmID,
	beq	.L394	@,
.L401:
	ldr	r2, [r3, #424]	@ temp.1963, <variable>.pSmInstArray
	cmp	r2, #0	@ temp.1963,
	beq	.L402	@,
	add	ip, r2, #208	@ tmp188, temp.1963,
	cmp	r4, ip	@ pRawStreamArray, tmp188
	moveq	r6, #8	@ SmID,
	beq	.L394	@,
.L402:
	ldr	r2, [r3, #472]	@ temp.1965, <variable>.pSmInstArray
	cmp	r2, #0	@ temp.1965,
	beq	.L403	@,
	add	lr, r2, #208	@ tmp190, temp.1965,
	cmp	r4, lr	@ pRawStreamArray, tmp190
	moveq	r6, #9	@ SmID,
	beq	.L394	@,
.L403:
	ldr	r2, [r3, #520]	@ temp.1967, <variable>.pSmInstArray
	cmp	r2, #0	@ temp.1967,
	beq	.L404	@,
	add	r2, r2, #208	@ tmp192, temp.1967,
	cmp	r4, r2	@ pRawStreamArray, tmp192
	moveq	r6, #10	@ SmID,
	beq	.L394	@,
.L404:
	ldr	r2, [r3, #568]	@ temp.1969, <variable>.pSmInstArray
	cmp	r2, #0	@ temp.1969,
	beq	.L405	@,
	add	r0, r2, #208	@ tmp194, temp.1969,
	cmp	r4, r0	@ pRawStreamArray, tmp194
	moveq	r6, #11	@ SmID,
	beq	.L394	@,
.L405:
	ldr	r2, [r3, #616]	@ temp.1971, <variable>.pSmInstArray
	cmp	r2, #0	@ temp.1971,
	beq	.L406	@,
	add	r1, r2, #208	@ tmp196, temp.1971,
	cmp	r4, r1	@ pRawStreamArray, tmp196
	moveq	r6, #12	@ SmID,
	beq	.L394	@,
.L406:
	ldr	r2, [r3, #664]	@ temp.1973, <variable>.pSmInstArray
	cmp	r2, #0	@ temp.1973,
	beq	.L407	@,
	add	ip, r2, #208	@ tmp198, temp.1973,
	cmp	r4, ip	@ pRawStreamArray, tmp198
	moveq	r6, #13	@ SmID,
	beq	.L394	@,
.L407:
	ldr	r2, [r3, #712]	@ temp.1975, <variable>.pSmInstArray
	cmp	r2, #0	@ temp.1975,
	beq	.L408	@,
	add	lr, r2, #208	@ tmp200, temp.1975,
	cmp	r4, lr	@ pRawStreamArray, tmp200
	moveq	r6, #14	@ SmID,
	beq	.L394	@,
.L408:
	ldr	r2, [r3, #760]	@ temp.1947, <variable>.pSmInstArray
	cmp	r2, #0	@ temp.1947,
	beq	.L409	@,
	add	r2, r2, #208	@ tmp202, temp.1947,
	cmp	r4, r2	@ pRawStreamArray, tmp202
	beq	.L410	@,
.L409:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC61	@,
	movw	r2, #705	@,
	movt	r1, #:upper16:.LC61	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.49880,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L410:
	mov	r6, #15	@ SmID,
.L394:
	movw	ip, #:lower16:98308	@ tmp205,
	movt	ip, #:upper16:98308	@ tmp205,
	mov	r1, #98304	@ tmp204,
	ldr	r0, [r4, ip]	@ D.49887, <variable>.Tail
	ldr	r7, [r4, r1]	@ D.49886, <variable>.Head
	cmp	r7, r0	@ D.49886, D.49887
	addgt	r0, r0, #1024	@ tmp206, D.49887,
	rsb	r2, r7, r0	@ PacketNum, D.49886, tmp206
	cmp	r2, r9	@ PacketNum, DelNum
	bcc	.L427	@,
	add	sl, r7, r7, asl #1	@, tmp210, D.49886, D.49886,
	add	r6, r6, r6, asl #1	@, tmp266, SmID, SmID,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC63	@,
	mov	lr, sl, asl #2	@ tmp217, tmp210,
	add	r6, r3, r6, asl #4	@, tmp269, tmp261, tmp266,
	add	r8, lr, #1	@ tmp218, tmp217,
	ldr	r2, [r4, sl, asl #5]	@, <variable>.PhyAddr
	movt	r1, #:upper16:.LC63	@,
	sub	r5, r9, #1	@ tmp271, DelNum,
	ldr	r3, [r4, r8, asl #3]	@, <variable>.Length
	and	sl, r5, #1	@ tmp273, tmp271,
	bl	dprint_vfmw	@
	ldr	r3, [r6, #40]!	@ D.49902, <variable>.pSmInstArray
	movw	r5, #:lower16:98532	@ tmp270,
	movt	r5, #:upper16:98532	@ tmp270,
	ldr	r2, [r4, r8, asl #3]	@ <variable>.Length, <variable>.Length
	add	r8, r7, #1	@ D.49906, D.49886,
	ldr	r1, [r3, r5]	@ <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.RawTotalSize
	cmp	r9, #1	@ DelNum,
	mov	r7, r8, asl #22	@ j, D.49906,
	mov	r8, #1	@ i,
	rsb	ip, r2, r1	@ tmp237, <variable>.Length, <variable>.RawPacketArray.RawTotalSize
	str	ip, [r3, r5]	@ tmp237, <variable>.RawPacketArray.RawTotalSize
	ldr	r3, [r6, #0]	@ temp.1945, <variable>.pSmInstArray
	mov	r7, r7, lsr #22	@ j, j,
	ldr	r0, [r3, r5]	@ <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.RawTotalSize
	bic	r2, r0, r0, asr #31	@ tmp249, <variable>.RawPacketArray.RawTotalSize
	str	r2, [r3, r5]	@ tmp249, <variable>.RawPacketArray.RawTotalSize
	bls	.L423	@,
	cmp	sl, #0	@ tmp273,
	beq	.L414	@,
	add	r8, r7, r7, asl #1	@, tmp324, j, j,
	movw	r1, #:lower16:.LC63	@,
	mov	r0, #26	@,
	movt	r1, #:upper16:.LC63	@,
	mov	sl, r8, asl #2	@ tmp328, tmp324,
	ldr	r2, [r4, r8, asl #5]	@, <variable>.PhyAddr
	add	sl, sl, #1	@ tmp329, tmp328,
	mov	r8, #2	@ i,
	b	.L425	@
.L414:
	add	r3, r7, r7, asl #1	@, tmp278, j, j,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC63	@,
	movt	r1, #:upper16:.LC63	@,
	mov	lr, r3, asl #2	@ tmp282, tmp278,
	ldr	r2, [r4, r3, asl #5]	@, <variable>.PhyAddr
	add	sl, lr, #1	@ tmp283, tmp282,
	add	r8, r8, #1	@ tmp274, i,
	add	r8, r8, #1	@ i, tmp274,
	ldr	r3, [r4, sl, asl #3]	@, <variable>.Length
	bl	dprint_vfmw	@
	ldr	r3, [r6, #0]	@ D.49902, <variable>.pSmInstArray
	add	r1, r7, #1	@ D.49906, j,
	ldr	r2, [r4, sl, asl #3]	@ <variable>.Length, <variable>.Length
	mov	r0, #26	@,
	ldr	ip, [r3, r5]	@ <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.RawTotalSize
	mov	r7, r1, asl #22	@ j, D.49906,
	movw	r1, #:lower16:.LC63	@,
	movt	r1, #:upper16:.LC63	@,
	rsb	r2, r2, ip	@ tmp293, <variable>.Length, <variable>.RawPacketArray.RawTotalSize
	str	r2, [r3, r5]	@ tmp293, <variable>.RawPacketArray.RawTotalSize
	ldr	r2, [r6, #0]	@ temp.1945, <variable>.pSmInstArray
	mov	r7, r7, lsr #22	@ j, j,
	add	r3, r7, r7, asl #1	@, tmp302, j, j,
	ldr	ip, [r2, r5]	@ <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.RawTotalSize
	mov	sl, r3, asl #2	@ tmp306, tmp302,
	bic	ip, ip, ip, asr #31	@ tmp296, <variable>.RawPacketArray.RawTotalSize
	str	ip, [r2, r5]	@ tmp296, <variable>.RawPacketArray.RawTotalSize
	ldr	r2, [r4, r3, asl #5]	@, <variable>.PhyAddr
	add	sl, sl, #1	@ tmp307, tmp306,
.L425:
	ldr	r3, [r4, sl, asl #3]	@, <variable>.Length
	bl	dprint_vfmw	@
	ldr	r3, [r6, #0]	@ D.49902, <variable>.pSmInstArray
	ldr	r2, [r4, sl, asl #3]	@ <variable>.Length, <variable>.Length
	add	ip, r7, #1	@ D.49906, j,
	cmp	r9, r8	@ DelNum, i
	ldr	r1, [r3, r5]	@ <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.RawTotalSize
	mov	r7, ip, asl #22	@ j, D.49906,
	rsb	r0, r2, r1	@ tmp339, <variable>.Length, <variable>.RawPacketArray.RawTotalSize
	str	r0, [r3, r5]	@ tmp339, <variable>.RawPacketArray.RawTotalSize
	ldr	r3, [r6, #0]	@ temp.1945, <variable>.pSmInstArray
	mov	r7, r7, lsr #22	@ j, j,
	ldr	ip, [r3, r5]	@ <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.RawTotalSize
	bic	r2, ip, ip, asr #31	@ tmp342, <variable>.RawPacketArray.RawTotalSize
	str	r2, [r3, r5]	@ tmp342, <variable>.RawPacketArray.RawTotalSize
	bhi	.L414	@,
.L423:
	mov	r0, #98304	@ tmp251,
	movw	ip, #:lower16:98316	@ tmp258,
	ldr	r1, [r4, r0]	@ <variable>.Head, <variable>.Head
	movt	ip, #:upper16:98316	@ tmp258,
	mov	r2, #0	@ tmp259,
	add	r9, r9, r1	@ D.49909, DelNum, <variable>.Head
	str	r2, [r4, ip]	@ tmp259, <variable>.FirstPacketOffset
	cmp	r9, #1024	@ D.49909,
	str	r9, [r4, r0]	@ D.49909, <variable>.Head
	subge	r9, r9, #1024	@ tmp257, D.49909,
	strge	r9, [r4, r0]	@ tmp257, <variable>.Head
	mov	r0, r2	@ D.49880, tmp259
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L427:
	movw	r1, #:lower16:.LC62	@,
	mov	r3, r9	@, DelNum
	mov	r0, #26	@,
	movt	r1, #:upper16:.LC62	@,
	bl	dprint_vfmw	@
.L426:
	mvn	r0, #0	@ D.49880,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	.fnend
	.size	DeleteRawPacket, .-DeleteRawPacket
	.align	2
	.global	DeleteRawLen
	.type	DeleteRawLen, %function
DeleteRawLen:
	.fnstart
.LFB1545:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #92
	sub	sp, sp, #92	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	rsbs	r6, r0, #1	@ tmp144, pRawStreamArray
	movcc	r6, #0	@ tmp144
	mov	r5, r0	@ pRawStreamArray, pRawStreamArray
	orrs	r6, r6, r1, lsr #31	@, tmp148, tmp144, DelLen,
	bne	.L429	@,
	movw	r2, #:lower16:98324	@ tmp151,
	movw	r4, #:lower16:98316	@ tmp152,
	movt	r2, #:upper16:98324	@ tmp151,
	movt	r4, #:upper16:98316	@ tmp152,
	str	r6, [fp, #-32]	@ tmp148, DelNum
	str	r6, [fp, #-36]	@ tmp148, RawPacketOffSet
	ldr	ip, [r0, r2]	@ <variable>.RawTotalSize, <variable>.RawTotalSize
	ldr	r2, [r0, r4]	@ <variable>.FirstPacketOffset, <variable>.FirstPacketOffset
	subs	r2, ip, r2	@ TotallLen, <variable>.RawTotalSize, <variable>.FirstPacketOffset
	bmi	.L429	@,
	cmp	r1, r2	@ DelLen, TotallLen
	ble	.L438	@,
.L429:
	mvn	r0, #0	@ Ret,
.L432:
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L438:
	sub	r2, fp, #32	@,,
	sub	r3, fp, #36	@,,
	sub	ip, fp, #60	@ tmp157,,
	sub	lr, fp, #68	@ tmp158,,
	str	ip, [sp, #0]	@ tmp157,
	sub	ip, fp, #76	@ tmp159,,
	str	lr, [sp, #4]	@ tmp158,
	sub	lr, fp, #40	@ tmp160,,
	str	ip, [sp, #8]	@ tmp159,
	sub	ip, fp, #44	@ tmp161,,
	str	lr, [sp, #12]	@ tmp160,
	sub	lr, fp, #48	@ tmp162,,
	str	ip, [sp, #16]	@ tmp161,
	sub	ip, fp, #52	@ tmp163,,
	str	lr, [sp, #20]	@ tmp162,
	sub	lr, fp, #84	@ tmp164,,
	str	ip, [sp, #24]	@ tmp163,
	str	lr, [sp, #28]	@ tmp164,
	bl	GetRawNumOffsert	@
	ldr	r1, [fp, #-32]	@, DelNum
	mov	r0, r5	@, pRawStreamArray
	bl	DeleteRawPacket	@
	movw	r1, #:lower16:98308	@ tmp167,
	movt	r1, #:upper16:98308	@ tmp167,
	mov	ip, #98304	@ tmp166,
	ldr	r2, [r5, ip]	@ D.53858, <variable>.Head
	ldr	r3, [r5, r1]	@ <variable>.Tail, <variable>.Tail
	ldr	r1, [fp, #-36]	@ RawPacketOffSet.478, RawPacketOffSet
	cmp	r2, r3	@ D.53858, <variable>.Tail
	mvneq	r0, #2	@ Ret,
	beq	.L432	@,
	add	ip, r2, r2, asl #1	@, tmp173, D.53858, D.53858,
	ldr	r0, [r5, r4]	@ <variable>.FirstPacketOffset, <variable>.FirstPacketOffset
	add	lr, r5, ip, asl #5	@, tmp175, pRawStreamArray, tmp173,
	add	r2, r1, r0	@ TargetOffset, RawPacketOffSet.478, <variable>.FirstPacketOffset
	ldr	r3, [lr, #8]	@ <variable>.Length, <variable>.Length
	cmp	r2, r3	@ TargetOffset, <variable>.Length
	strlt	r2, [r5, r4]	@ TargetOffset, <variable>.FirstPacketOffset
	movlt	r0, r6	@ Ret, tmp148
	blt	.L432	@,
	b	.L429	@
	.fnend
	.size	DeleteRawLen, .-DeleteRawLen
	.align	2
	.global	DeleteLastSendRaw
	.type	DeleteLastSendRaw, %function
DeleteLastSendRaw:
	.fnstart
.LFB1546:
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
	cmp	r0, #15	@ SmID,
	ldmhifd	sp, {r4, r5, fp, sp, pc}	@
	add	r0, r0, r0, asl #1	@, tmp140, SmID, SmID,
	movw	r1, #:lower16:.LANCHOR0	@ tmp136,
	movt	r1, #:upper16:.LANCHOR0	@ tmp136,
	add	r3, r1, r0, asl #4	@, tmp142, tmp136, tmp140,
	ldr	r5, [r3, #40]	@ pSmInstArray, <variable>.pSmInstArray
	cmp	r5, #0	@ pSmInstArray,
	beq	.L443	@,
	movw	r4, #:lower16:190752	@ tmp145,
	movt	r4, #:upper16:190752	@ tmp145,
	ldr	r1, [r5, r4]	@ LastPushRawNum, <variable>.SmPushRaw.PushRawNum
	cmp	r1, #0	@ LastPushRawNum,
	ldmlefd	sp, {r4, r5, fp, sp, pc}	@
	add	r0, r5, #208	@, pSmInstArray,
	bl	DeleteRawPacket	@
	mov	r2, #0	@ tmp148,
	str	r2, [r5, r4]	@ tmp148, <variable>.SmPushRaw.PushRawNum
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L443:
	mov	r0, r5	@, pSmInstArray
	movw	r1, #:lower16:.LC64	@,
	movw	r2, #969	@,
	movt	r1, #:upper16:.LC64	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	DeleteLastSendRaw, .-DeleteLastSendRaw
	.align	2
	.global	SetMaxSegSize
	.type	SetMaxSegSize, %function
SetMaxSegSize:
	.fnstart
.LFB1626:
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
	mov	r4, r1	@ pSmCfg, pSmCfg
	mov	r5, r0	@ ChanID, ChanID
	bl	VCTRL_GetChanCapLevel	@
	cmp	r0, #32	@ eCapLevel,
	bhi	.L451	@,
	cmp	r0, #25	@ eCapLevel,
	beq	.L452	@,
	ldr	r1, [r4, #8]	@ D.53697, <variable>.VidStd
	cmp	r1, #16	@ D.53697,
	cmpne	r1, #0	@, D.53697,
	bne	.L449	@,
	sub	r0, r0, #13	@ D.53862, eCapLevel,
	cmp	r0, #19	@ D.53862,
	bhi	.L449	@,
	movw	r2, #:lower16:.LANCHOR1	@ tmp160,
	movt	r2, #:upper16:.LANCHOR1	@ tmp160,
	add	r0, r2, r0, asl #2	@, tmp163, tmp160, D.53862,
	ldr	r0, [r0, #20]	@ MaxSegSize, CSWTCH.727
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L452:
	mov	r0, r5	@, ChanID
	bl	VCTRL_GetChanWidth	@
	mov	r4, r0	@ ChanWidth,
	mov	r0, r5	@, ChanID
	bl	VCTRL_GetChanHeight	@
	cmn	r0, #1	@ ChanHeight,
	cmnne	r4, #1	@, ChanWidth,
	beq	.L453	@,
	mul	r4, r4, r0	@ tmp151, ChanWidth, ChanHeight
	movw	r3, #:lower16:2088960	@ tmp152,
	movt	r3, #:upper16:2088960	@ tmp152,
	cmp	r4, r3	@ tmp151, tmp152
	movgt	r0, #20971520	@ MaxSegSize,
	ldmgtfd	sp, {r4, r5, fp, sp, pc}	@
.L449:
	mov	r0, #3145728	@ MaxSegSize,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L451:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC65	@,
	movt	r1, #:upper16:.LC65	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ MaxSegSize,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L453:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC66	@,
	movt	r1, #:upper16:.LC66	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ MaxSegSize,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	SetMaxSegSize, .-SetMaxSegSize
	.align	2
	.global	PrintScdSegState
	.type	PrintScdSegState, %function
PrintScdSegState:
	.fnstart
.LFB1625:
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
	mov	r8, r0	@ SmID, SmID
	mov	r0, #26	@,
	mov	r7, r1	@ PrintDetail, PrintDetail
	bl	IsDprintTypeEnable	@
	cmp	r0, #0	@,
	ldmeqfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	add	r2, r8, r8, asl #1	@, tmp213, SmID, SmID,
	movw	r0, #:lower16:.LANCHOR0	@ tmp209,
	movt	r0, #:upper16:.LANCHOR0	@ tmp209,
	movw	r6, #:lower16:190704	@ tmp219,
	add	r1, r0, r2, asl #4	@, tmp215, tmp209, tmp213,
	movt	r6, #:upper16:190704	@ tmp219,
	mov	r2, r8	@, SmID
	mov	r0, #26	@,
	ldr	r4, [r1, #40]	@ D.53612, <variable>.pSmInstArray
	movw	r5, #:lower16:190708	@ tmp222,
	movw	r1, #:lower16:.LC67	@,
	movt	r5, #:upper16:190708	@ tmp222,
	movt	r1, #:upper16:.LC67	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, r6]	@, <variable>.StreamSegArray.Head
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC68	@,
	movt	r1, #:upper16:.LC68	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, r5]	@, <variable>.StreamSegArray.Tail
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC69	@,
	movt	r1, #:upper16:.LC69	@,
	bl	dprint_vfmw	@
	movw	ip, #:lower16:190716	@ tmp225,
	movt	ip, #:upper16:190716	@ tmp225,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC70	@,
	movt	r1, #:upper16:.LC70	@,
	ldr	r2, [r4, ip]	@, <variable>.StreamSegArray.Current
	bl	dprint_vfmw	@
	movw	r3, #:lower16:190720	@ tmp228,
	movt	r3, #:upper16:190720	@ tmp228,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC71	@,
	movt	r1, #:upper16:.LC71	@,
	ldr	r2, [r4, r3]	@, <variable>.StreamSegArray.SegBufPhyAddr
	bl	dprint_vfmw	@
	movw	ip, #:lower16:98536	@ tmp231,
	movt	ip, #:upper16:98536	@ tmp231,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC72	@,
	movt	r1, #:upper16:.LC72	@,
	ldr	r2, [r4, ip]	@, <variable>.StreamSegArray.pSegBufVirAddr
	bl	dprint_vfmw	@
	movw	r3, #:lower16:190724	@ tmp234,
	movt	r3, #:upper16:190724	@ tmp234,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC73	@,
	movt	r1, #:upper16:.LC73	@,
	ldr	r2, [r4, r3]	@, <variable>.StreamSegArray.SegBufSize
	bl	dprint_vfmw	@
	movw	ip, #:lower16:190728	@ tmp237,
	movt	ip, #:upper16:190728	@ tmp237,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC74	@,
	movt	r1, #:upper16:.LC74	@,
	ldr	r2, [r4, ip]	@, <variable>.StreamSegArray.SegBufReadAddr
	bl	dprint_vfmw	@
	movw	r3, #:lower16:190732	@ tmp240,
	movt	r3, #:upper16:190732	@ tmp240,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC75	@,
	movt	r1, #:upper16:.LC75	@,
	ldr	r2, [r4, r3]	@, <variable>.StreamSegArray.SegBufWriteAddr
	bl	dprint_vfmw	@
	cmp	r7, #1	@ PrintDetail,
	beq	.L467	@,
.L456:
	mov	r2, r8	@, SmID
	movw	r1, #:lower16:.LC77	@,
	mov	r0, #26	@,
	movt	r1, #:upper16:.LC77	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L467:
	add	r3, r4, #98304	@ tmp242, D.53612,
	add	lr, r3, #232	@ tmp242, tmp242,
	cmp	lr, #0	@ tmp242,
	beq	.L457	@,
	ldr	sl, [r4, r6]	@ D.53874, <variable>.StreamSegArray.Head
	ldr	r7, [r4, r5]	@ <variable>.StreamSegArray.Tail, <variable>.StreamSegArray.Tail
	subs	r7, r7, sl	@ SegNum, <variable>.StreamSegArray.Tail, D.53874
	addmi	r7, r7, #1152	@ SegNum, SegNum,
	cmp	r7, #0	@ SegNum,
	ble	.L456	@,
	add	r2, sl, sl, asl #2	@, tmp260, D.53874, D.53874,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC78	@,
	movt	r1, #:upper16:.LC78	@,
	mov	ip, r2, asl #4	@ tmp262, tmp260,
	mov	r6, #1	@ i,
	add	r5, ip, #98304	@ tmp263, tmp262,
	sub	r9, r7, #1	@ tmp275, SegNum,
	add	sl, r5, #248	@ tmp263, tmp263,
	and	r9, r9, #1	@ tmp277, tmp275,
	add	sl, r4, sl	@ tmp265, D.53612, tmp263
	add	r4, sl, #84	@ ivtmp.2075, tmp265,
	mov	r5, sl	@ ivtmp.2075, tmp265
	ldr	r2, [r5, #4]!	@, <variable>.PhyAddr
	bl	dprint_vfmw	@
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC79	@,
	movt	r1, #:upper16:.LC79	@,
	ldr	r2, [r5, #-12]	@, <variable>.VirAddr
	bl	dprint_vfmw	@
	ldr	r2, [r5, #4]	@, <variable>.LenInByte
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC80	@,
	movt	r1, #:upper16:.LC80	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #8]	@, <variable>.StreamID
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC81	@,
	movt	r1, #:upper16:.LC81	@,
	bl	dprint_vfmw	@
	ldrsb	r2, [r5, #-8]	@, <variable>.SegState
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC82	@,
	movt	r1, #:upper16:.LC82	@,
	bl	dprint_vfmw	@
	ldrb	r2, [r5, #-7]	@ zero_extendqisi2	@, <variable>.IsLastSeg
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC83	@,
	movt	r1, #:upper16:.LC83	@,
	bl	dprint_vfmw	@
	ldrd	r2, [r5, #12]	@, ivtmp.2075,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC84	@,
	movt	r1, #:upper16:.LC84	@,
	bl	dprint_vfmw	@
	cmp	r6, r7	@ i, SegNum
	bge	.L456	@,
	cmp	r9, #0	@ tmp277,
	beq	.L459	@,
	ldr	r2, [r4, #0]	@, <variable>.PhyAddr
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC78	@,
	movt	r1, #:upper16:.LC78	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #-12]	@, <variable>.VirAddr
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC79	@,
	movt	r1, #:upper16:.LC79	@,
	mov	r6, #2	@ i,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #4]	@, <variable>.LenInByte
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC80	@,
	movt	r1, #:upper16:.LC80	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #8]	@, <variable>.StreamID
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC81	@,
	movt	r1, #:upper16:.LC81	@,
	bl	dprint_vfmw	@
	ldrsb	r2, [r4, #-8]	@, <variable>.SegState
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC82	@,
	movt	r1, #:upper16:.LC82	@,
	bl	dprint_vfmw	@
	ldrb	r2, [r4, #-7]	@ zero_extendqisi2	@, <variable>.IsLastSeg
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC83	@,
	movt	r1, #:upper16:.LC83	@,
	bl	dprint_vfmw	@
	ldrd	r2, [r4, #12]	@, ivtmp.2075,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC84	@,
	movt	r1, #:upper16:.LC84	@,
	add	r4, sl, #164	@ ivtmp.2075, tmp265,
	bl	dprint_vfmw	@
	cmp	r6, r7	@ i, SegNum
	bge	.L456	@,
.L459:
	ldr	r2, [r4, #0]	@, <variable>.PhyAddr
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC78	@,
	movt	r1, #:upper16:.LC78	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #-12]	@, <variable>.VirAddr
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC79	@,
	movt	r1, #:upper16:.LC79	@,
	add	r5, r4, #80	@ tmp279, ivtmp.2075,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #4]	@, <variable>.LenInByte
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC80	@,
	movt	r1, #:upper16:.LC80	@,
	add	r6, r6, #1	@ tmp278, i,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #8]	@, <variable>.StreamID
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC81	@,
	movt	r1, #:upper16:.LC81	@,
	add	r6, r6, #1	@ i, tmp278,
	bl	dprint_vfmw	@
	ldrsb	r2, [r4, #-8]	@, <variable>.SegState
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC82	@,
	movt	r1, #:upper16:.LC82	@,
	bl	dprint_vfmw	@
	ldrb	r2, [r4, #-7]	@ zero_extendqisi2	@, <variable>.IsLastSeg
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC83	@,
	movt	r1, #:upper16:.LC83	@,
	bl	dprint_vfmw	@
	ldrd	r2, [r4, #12]	@, ivtmp.2075,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC84	@,
	movt	r1, #:upper16:.LC84	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #80]	@, <variable>.PhyAddr
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC78	@,
	movt	r1, #:upper16:.LC78	@,
	add	r4, r4, #160	@ ivtmp.2075, ivtmp.2075,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #-12]	@, <variable>.VirAddr
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC79	@,
	movt	r1, #:upper16:.LC79	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #4]	@, <variable>.LenInByte
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC80	@,
	movt	r1, #:upper16:.LC80	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #8]	@, <variable>.StreamID
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC81	@,
	movt	r1, #:upper16:.LC81	@,
	bl	dprint_vfmw	@
	ldrsb	r2, [r5, #-8]	@, <variable>.SegState
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC82	@,
	movt	r1, #:upper16:.LC82	@,
	bl	dprint_vfmw	@
	ldrb	r2, [r5, #-7]	@ zero_extendqisi2	@, <variable>.IsLastSeg
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC83	@,
	movt	r1, #:upper16:.LC83	@,
	bl	dprint_vfmw	@
	ldrd	r2, [r5, #12]	@, tmp279,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC84	@,
	movt	r1, #:upper16:.LC84	@,
	bl	dprint_vfmw	@
	cmp	r6, r7	@ i, SegNum
	blt	.L459	@,
	b	.L456	@
.L457:
	movw	r1, #:lower16:.LC76	@,
	ldr	r2, .L468	@,
	movt	r1, #:upper16:.LC76	@,
	movw	r3, #6417	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	b	.L456	@
.L469:
	.align	2
.L468:
	.word	.LANCHOR1+100
	.fnend
	.size	PrintScdSegState, .-PrintScdSegState
	.align	2
	.global	PrintScdRawState
	.type	PrintScdRawState, %function
PrintScdRawState:
	.fnstart
.LFB1623:
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
	mov	r8, r0	@ SmID, SmID
	mov	r0, #26	@,
	mov	r7, r1	@ PrintDetail, PrintDetail
	bl	IsDprintTypeEnable	@
	cmp	r0, #0	@,
	ldmeqfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	add	r2, r8, r8, asl #1	@, tmp153, SmID, SmID,
	movw	r0, #:lower16:.LANCHOR0	@ tmp149,
	movt	r0, #:upper16:.LANCHOR0	@ tmp149,
	movw	r6, #:lower16:98512	@ tmp159,
	add	r1, r0, r2, asl #4	@, tmp155, tmp149, tmp153,
	movt	r6, #:upper16:98512	@ tmp159,
	mov	r2, r8	@, SmID
	mov	r0, #26	@,
	ldr	r4, [r1, #40]	@ D.53497, <variable>.pSmInstArray
	movw	r5, #:lower16:98516	@ tmp162,
	movw	r1, #:lower16:.LC85	@,
	movt	r5, #:upper16:98516	@ tmp162,
	movt	r1, #:upper16:.LC85	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, r6]	@, <variable>.RawPacketArray.Head
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC86	@,
	movt	r1, #:upper16:.LC86	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, r5]	@, <variable>.RawPacketArray.Tail
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC87	@,
	movt	r1, #:upper16:.LC87	@,
	bl	dprint_vfmw	@
	movw	r3, #:lower16:98520	@ tmp165,
	movt	r3, #:upper16:98520	@ tmp165,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC88	@,
	movt	r1, #:upper16:.LC88	@,
	ldr	r2, [r4, r3]	@, <variable>.RawPacketArray.History
	bl	dprint_vfmw	@
	movw	ip, #:lower16:98524	@ tmp168,
	movt	ip, #:upper16:98524	@ tmp168,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC89	@,
	movt	r1, #:upper16:.LC89	@,
	ldr	r2, [r4, ip]	@, <variable>.RawPacketArray.FirstPacketOffset
	bl	dprint_vfmw	@
	movw	r3, #:lower16:98528	@ tmp171,
	movt	r3, #:upper16:98528	@ tmp171,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC90	@,
	movt	r1, #:upper16:.LC90	@,
	ldr	r2, [r4, r3]	@, <variable>.RawPacketArray.CurShowIndex
	bl	dprint_vfmw	@
	cmp	r7, #1	@ PrintDetail,
	beq	.L483	@,
.L472:
	mov	r2, r8	@, SmID
	movw	r1, #:lower16:.LC92	@,
	mov	r0, #26	@,
	movt	r1, #:upper16:.LC92	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L483:
	cmn	r4, #208	@ D.53497,
	beq	.L473	@,
	ldr	r3, [r4, r6]	@ D.53883, <variable>.RawPacketArray.Head
	ldr	r7, [r4, r5]	@ <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Tail
	subs	r7, r7, r3	@ RawNum, <variable>.RawPacketArray.Tail, D.53883
	addmi	r7, r7, #1024	@ RawNum, RawNum,
	cmp	r7, #0	@ RawNum,
	ble	.L472	@,
	add	r5, r3, r3, asl #1	@, tmp187, D.53883, D.53883,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC93	@,
	movt	r1, #:upper16:.LC93	@,
	add	r4, r4, r5, asl #5	@, tmp189, D.53497, tmp187,
	mov	r6, #1	@ i,
	add	r5, r4, #216	@ ivtmp.2123, tmp189,
	sub	sl, r7, #1	@ tmp195, RawNum,
	and	sl, sl, #1	@ tmp197, tmp195,
	add	r4, r5, #96	@ ivtmp.2123, ivtmp.2123,
	ldr	r2, [r5, #-8]	@, <variable>.PhyAddr
	bl	dprint_vfmw	@
	ldr	r2, [r5, #-4]	@, <variable>.VirAddr
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC94	@,
	movt	r1, #:upper16:.LC94	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #0]	@, <variable>.Length
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC95	@,
	movt	r1, #:upper16:.LC95	@,
	bl	dprint_vfmw	@
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC96	@,
	ldrd	r2, [r5, #8]	@, ivtmp.2123,
	movt	r1, #:upper16:.LC96	@,
	bl	dprint_vfmw	@
	cmp	r6, r7	@ i, RawNum
	bge	.L472	@,
	cmp	sl, #0	@ tmp197,
	beq	.L475	@,
	ldr	r2, [r4, #-8]	@, <variable>.PhyAddr
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC93	@,
	movt	r1, #:upper16:.LC93	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #-4]	@, <variable>.VirAddr
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC94	@,
	movt	r1, #:upper16:.LC94	@,
	mov	r6, #2	@ i,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #0]	@, <variable>.Length
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC95	@,
	movt	r1, #:upper16:.LC95	@,
	bl	dprint_vfmw	@
	ldrd	r2, [r4, #8]	@, ivtmp.2123,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC96	@,
	movt	r1, #:upper16:.LC96	@,
	add	r4, r5, #192	@ ivtmp.2123, ivtmp.2123,
	bl	dprint_vfmw	@
	cmp	r6, r7	@ i, RawNum
	bge	.L472	@,
.L475:
	ldr	r2, [r4, #-8]	@, <variable>.PhyAddr
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC93	@,
	movt	r1, #:upper16:.LC93	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #-4]	@, <variable>.VirAddr
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC94	@,
	movt	r1, #:upper16:.LC94	@,
	add	r5, r4, #96	@ tmp199, ivtmp.2123,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #0]	@, <variable>.Length
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC95	@,
	movt	r1, #:upper16:.LC95	@,
	add	r6, r6, #1	@ tmp198, i,
	bl	dprint_vfmw	@
	ldrd	r2, [r4, #8]	@, ivtmp.2123,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC96	@,
	movt	r1, #:upper16:.LC96	@,
	add	r6, r6, #1	@ i, tmp198,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #-8]	@, <variable>.PhyAddr
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC93	@,
	movt	r1, #:upper16:.LC93	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #-4]	@, <variable>.VirAddr
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC94	@,
	movt	r1, #:upper16:.LC94	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #96]	@, <variable>.Length
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC95	@,
	movt	r1, #:upper16:.LC95	@,
	add	r4, r4, #192	@ ivtmp.2123, ivtmp.2123,
	bl	dprint_vfmw	@
	ldrd	r2, [r5, #8]	@, tmp199,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC96	@,
	movt	r1, #:upper16:.LC96	@,
	bl	dprint_vfmw	@
	cmp	r6, r7	@ i, RawNum
	blt	.L475	@,
	b	.L472	@
.L473:
	movw	r1, #:lower16:.LC91	@,
	ldr	r2, .L484	@,
	movt	r1, #:upper16:.LC91	@,
	movw	r3, #6281	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	b	.L472	@
.L485:
	.align	2
.L484:
	.word	.LANCHOR1+120
	.fnend
	.size	PrintScdRawState, .-PrintScdRawState
	.align	2
	.global	PrintScdVtrlReg
	.type	PrintScdVtrlReg, %function
PrintScdVtrlReg:
	.fnstart
.LFB1619:
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
	mov	r2, r0	@ ScdId, ScdId
	movw	r0, #:lower16:-121387004	@ tmp142,
	movt	r0, #:upper16:-121387004	@,
	str	r2, [fp, #-48]	@,
	bl	MEM_ReadPhyWord	@
	mov	r8, r0	@ D.53410,
	movw	r0, #:lower16:-121387000	@ tmp143,
	movt	r0, #:upper16:-121387000	@,
	bl	MEM_ReadPhyWord	@
	mov	r7, r0	@ D.53411,
	movw	r0, #:lower16:-121386996	@ tmp144,
	movt	r0, #:upper16:-121386996	@,
	bl	MEM_ReadPhyWord	@
	mov	r6, r0	@ D.53412,
	movw	r0, #:lower16:-121386992	@ tmp145,
	movt	r0, #:upper16:-121386992	@,
	bl	MEM_ReadPhyWord	@
	mov	r5, r0	@ D.53413,
	movw	r0, #:lower16:-121386988	@ tmp146,
	movt	r0, #:upper16:-121386988	@,
	bl	MEM_ReadPhyWord	@
	mov	r4, r0	@ D.53414,
	movw	r0, #:lower16:-121386984	@ tmp147,
	movt	r0, #:upper16:-121386984	@,
	bl	MEM_ReadPhyWord	@
	mov	sl, r0	@ D.53415,
	movw	r0, #:lower16:-121386976	@ tmp148,
	movt	r0, #:upper16:-121386976	@,
	bl	MEM_ReadPhyWord	@
	mov	r9, r0	@ D.53416,
	movw	r0, #:lower16:-121387008	@ tmp149,
	movt	r0, #:upper16:-121387008	@,
	bl	MEM_ReadPhyWord	@
	ldr	r2, [fp, #-48]	@,
	movw	r1, #:lower16:.LC97	@,
	movt	r1, #:upper16:.LC97	@,
	mov	ip, r0	@ D.53417,
	mov	r0, #24	@,
	str	ip, [fp, #-48]	@,
	bl	dprint_vfmw	@
	mov	r2, r8	@, D.53410
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC98	@,
	movt	r1, #:upper16:.LC98	@,
	bl	dprint_vfmw	@
	mov	r2, r7	@, D.53411
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC99	@,
	movt	r1, #:upper16:.LC99	@,
	bl	dprint_vfmw	@
	mov	r2, r6	@, D.53412
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC100	@,
	movt	r1, #:upper16:.LC100	@,
	bl	dprint_vfmw	@
	mov	r2, r5	@, D.53413
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC101	@,
	movt	r1, #:upper16:.LC101	@,
	bl	dprint_vfmw	@
	mov	r2, r4	@, D.53414
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC102	@,
	movt	r1, #:upper16:.LC102	@,
	bl	dprint_vfmw	@
	mov	r2, sl	@, D.53415
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC103	@,
	movt	r1, #:upper16:.LC103	@,
	bl	dprint_vfmw	@
	mov	r2, r9	@, D.53416
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC104	@,
	movt	r1, #:upper16:.LC104	@,
	bl	dprint_vfmw	@
	ldr	r3, [fp, #-48]	@,
	movw	r1, #:lower16:.LC105	@,
	mov	r0, #24	@,
	movt	r1, #:upper16:.LC105	@,
	sxtb	r2, r3	@, D.53417
	bl	dprint_vfmw	@
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
	.fnend
	.size	PrintScdVtrlReg, .-PrintScdVtrlReg
	.align	2
	.global	ReadScdStateReg
	.type	ReadScdStateReg, %function
ReadScdStateReg:
	.fnstart
.LFB1589:
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
	mov	r4, r0	@ pSmStateReg, pSmStateReg
	movw	r0, #:lower16:-121386944	@ tmp141,
	movt	r0, #:upper16:-121386944	@,
	mov	r6, r1	@ ScdId, ScdId
	bl	MEM_ReadPhyWord	@
	movw	r5, #:lower16:-121386932	@ tmp154,
	movt	r5, #:upper16:-121386932	@ tmp154,
	and	ip, r0, #1	@ tmp142,,
	movw	r0, #:lower16:-121386940	@ tmp143,
	str	ip, [r4, #0]	@ tmp142, <variable>.Scdover
	movt	r0, #:upper16:-121386940	@,
	bl	MEM_ReadPhyWord	@
	and	r2, r0, #1	@ tmp144,,
	mov	r0, r5	@, tmp154
	str	r2, [r4, #4]	@ tmp144, <variable>.ScdInt
	bl	MEM_ReadPhyWord	@
	mov	r0, r0, lsr #22	@ tmp146,,
	str	r0, [r4, #8]	@ tmp146, <variable>.ShortScdNum
	mov	r0, r5	@, tmp154
	bl	MEM_ReadPhyWord	@
	bic	r1, r0, #-16777216	@ tmp149,,
	movw	r0, #:lower16:-121386928	@ tmp150,
	bic	r3, r1, #12582912	@ tmp149, tmp149,
	movt	r0, #:upper16:-121386928	@,
	str	r3, [r4, #12]	@ tmp149, <variable>.ScdNum
	bl	MEM_ReadPhyWord	@
	str	r0, [r4, #16]	@, <variable>.ScdRollAddr
	movw	r0, #:lower16:-121386924	@ tmp151,
	movt	r0, #:upper16:-121386924	@,
	bl	MEM_ReadPhyWord	@
	mov	r1, r6	@, ScdId
	str	r0, [r4, #20]	@, <variable>.SrcEaten
	mov	r0, r4	@, pSmStateReg
	bl	PrintScdStateReg	@
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	ReadScdStateReg, .-ReadScdStateReg
	.align	2
	.global	GetNextVop
	.type	GetNextVop, %function
GetNextVop:
	.fnstart
.LFB1596:
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
	mov	r6, r0	@ pScdInstance, pScdInstance
	movw	r0, #:lower16:-121386976	@,
	movt	r0, #:upper16:-121386976	@,
	mov	r4, r2	@ pStreamSegArray, pStreamSegArray
	mov	r7, r3	@ Seg_num, Seg_num
	mov	r8, r1	@ pUsedSeg, pUsedSeg
	mov	r1, #0	@ tmp157,
	str	r1, [fp, #-48]	@ tmp157, SegNum
	bl	MEM_ReadPhyWord	@
	ldr	r1, [fp, #4]	@, ScdId
	sub	r0, fp, #72	@,,
	bl	ReadScdStateReg	@
	ldr	r3, [fp, #-56]	@ SmStateReg.ScdRollAddr, SmStateReg.ScdRollAddr
	cmp	r3, #0	@ SmStateReg.ScdRollAddr,
	mvneq	r5, #6	@, Ret,
	movne	r5, #0	@, Ret,
	cmp	r4, #0	@ pStreamSegArray,
	beq	.L493	@,
	movw	lr, #:lower16:92172	@ tmp161,
	movw	ip, #:lower16:92168	@ tmp162,
	movt	lr, #:upper16:92172	@ tmp161,
	movt	ip, #:upper16:92168	@ tmp162,
	ldr	r2, [r4, lr]	@ <variable>.Tail, <variable>.Tail
	ldr	r0, [r4, ip]	@ <variable>.Head, <variable>.Head
	subs	r3, r2, r0	@ prephitmp.2228, <variable>.Tail, <variable>.Head
	addmi	r3, r3, #1152	@ prephitmp.2228, prephitmp.2228,
.L494:
	cmp	r5, #0	@ Ret,
	rsb	r3, r3, #1152	@, prephitmp.2228,
	str	r3, [fp, #-88]	@, %sfp
	str	r3, [fp, #-48]	@, SegNum
	bne	.L495	@,
	subs	r3, r7, #1	@ i, Seg_num,
	movmi	r5, r7	@ Ret, Seg_num
	bmi	.L495	@,
	movw	r1, #:lower16:204756	@ tmp170,
	movt	r1, #:upper16:204756	@ tmp170,
	movw	r2, #:lower16:92184	@ tmp171,
	tst	r3, #1	@ i,
	ldr	r0, [r6, r1]	@ pretmp.2219, <variable>.UpMsgStepNum
	movt	r2, #:upper16:92184	@ tmp171,
	ldr	r1, [r6, #20]	@ pretmp.2226, <variable>.SegFilter.ModeFlag
	movw	sl, #:lower16:-1241448448	@,
	str	r5, [fp, #-80]	@ Ret, %sfp
	movt	sl, #:upper16:-1241448448	@,
	mov	r7, r0, asl #2	@ pretmp.2247, pretmp.2219,
	ldr	r6, [r4, r2]	@ pretmp.2225, <variable>.SegBufPhyAddr
	movw	r5, #:lower16:-33488896	@ tmp191,
	str	sl, [fp, #-84]	@, %sfp
	movt	r5, #:upper16:-33488896	@ tmp191,
	ldr	r2, [r4, #0]	@ pretmp.2221, <variable>.pSegBufVirAddr
	mla	r0, r7, r3, r8	@ ivtmp.2243, pretmp.2247, i, pUsedSeg
	rsb	ip, r7, #0	@ D.55594, pretmp.2247
	bne	.L515	@,
.L503:
	ldr	r7, [r0, #0]	@ tmp174,* ivtmp.2243
	cmp	r1, #1	@ pretmp.2226,
	rsb	r8, r6, r7	@ tmp173, pretmp.2225, tmp174
	add	r4, r2, r8	@ VirAddr, pretmp.2221, tmp173
	ldrb	r7, [r2, r8]	@ zero_extendqisi2	@ tmp180,
	ldrb	lr, [r4, #2]	@ zero_extendqisi2	@ tmp177,
	ldrb	r8, [r4, #1]	@ zero_extendqisi2	@ tmp175,
	ldrb	r4, [r4, #3]	@ zero_extendqisi2	@ tmp182,
	mov	sl, lr, asl #16	@ tmp178, tmp177,
	add	lr, sl, r8, asl #8	@, tmp179, tmp178, tmp175,
	add	sl, lr, r7	@ tmp181, tmp179, tmp180
	add	r4, sl, r4, asl #24	@, start_code, tmp181, tmp182,
	beq	.L526	@,
	cmp	r1, #2	@ pretmp.2226,
	beq	.L527	@,
.L499:
	mov	r7, #0	@ flag,
.L500:
	cmp	r4, r5	@ start_code, tmp191
	beq	.L498	@,
	cmp	r7, #1	@ flag,
	beq	.L498	@,
.L501:
	subs	r4, r3, #1	@ i.2246, i,
	add	r9, r0, ip	@ ivtmp.2243, ivtmp.2243, D.55594
	bmi	.L502	@,
	ldr	r7, [r0, ip]	@ tmp198,* D.55594
	cmp	r1, #1	@ pretmp.2226,
	mov	r3, r4	@ i, i.2246
	rsb	r8, r6, r7	@ tmp199, pretmp.2225, tmp198
	add	r0, r2, r8	@ VirAddr, pretmp.2221, tmp199
	ldrb	lr, [r2, r8]	@ zero_extendqisi2	@ tmp206,
	ldrb	sl, [r0, #2]	@ zero_extendqisi2	@ tmp203,
	ldrb	r8, [r0, #1]	@ zero_extendqisi2	@ tmp201,
	ldrb	r0, [r0, #3]	@ zero_extendqisi2	@ tmp208,
	mov	sl, sl, asl #16	@ tmp204, tmp203,
	add	sl, sl, r8, asl #8	@, tmp205, tmp204, tmp201,
	add	sl, sl, lr	@ tmp207, tmp205, tmp206
	add	r0, sl, r0, asl #24	@, start_code, tmp207, tmp208,
	beq	.L528	@,
	cmp	r1, #2	@ pretmp.2226,
	beq	.L529	@,
.L513:
	cmp	r0, r5	@ start_code, tmp191
	mov	r7, #0	@ flag,
	beq	.L512	@,
.L532:
	cmp	r7, #1	@ flag,
	beq	.L512	@,
.L511:
	add	r0, r9, ip	@ ivtmp.2243, ivtmp.2243, D.55594
	sub	r3, r4, #1	@ i, i.2246,
	b	.L503	@
.L515:
	ldr	lr, [r0, #0]	@ tmp211,* ivtmp.2243
	cmp	r1, #1	@ pretmp.2226,
	rsb	r8, r6, lr	@ tmp212, pretmp.2225, tmp211
	add	sl, r2, r8	@ VirAddr, pretmp.2221, tmp212
	ldrb	r7, [sl, #2]	@ zero_extendqisi2	@ tmp216,
	ldrb	r8, [sl, #1]	@ zero_extendqisi2	@ tmp214,
	ldrb	lr, [sl, #3]	@ zero_extendqisi2	@ tmp221,
	mov	r7, r7, asl #16	@ tmp217, tmp216,
	ldrb	r4, [sl, #0]	@ zero_extendqisi2	@ tmp219,* VirAddr
	add	sl, r7, r8, asl #8	@, tmp218, tmp217, tmp214,
	add	r7, sl, r4	@ tmp220, tmp218, tmp219
	add	sl, r7, lr, asl #24	@, start_code, tmp220, tmp221,
	beq	.L530	@,
	cmp	r1, #2	@ pretmp.2226,
	beq	.L531	@,
.L508:
	mov	r4, #0	@ flag,
.L518:
	cmp	sl, r5	@ start_code, tmp191
	beq	.L507	@,
	cmp	r4, #1	@ flag,
	beq	.L507	@,
.L506:
	subs	r4, r3, #1	@ i.2246, i,
	add	r0, r0, ip	@ ivtmp.2243, ivtmp.2243, D.55594
	movpl	r3, r4	@ i, i.2246
	bpl	.L503	@,
.L502:
	mov	r5, r3	@ Ret, i
.L495:
	mov	r0, r5	@, Ret
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L526:
	ldr	r7, [fp, #-84]	@, %sfp
	cmp	r4, r7	@ start_code,
	bne	.L499	@,
.L498:
	ldr	r4, [fp, #-80]	@, %sfp
	add	r4, r4, #1	@,,
	str	r4, [fp, #-80]	@, %sfp
	cmp	r4, #0	@,
	ble	.L501	@,
	ldr	r7, [fp, #-88]	@, %sfp
	cmp	r7, r3	@, i
	bcc	.L501	@,
	mov	r5, r3	@ Ret, i
	b	.L495	@
.L527:
	ubfx	r7, r4, #16, #8	@ tmp186, start_code,,
	sub	lr, r7, #128	@ tmp187, tmp186,
	cmp	lr, #3	@ tmp187,
	movhi	r7, #0	@, flag
	movls	r7, #1	@, flag
	b	.L500	@
.L529:
	ubfx	lr, r0, #16, #8	@ tmp234, start_code,,
	sub	r7, lr, #128	@ tmp235, tmp234,
	cmp	r7, #3	@ tmp235,
	movhi	r7, #0	@, flag
	movls	r7, #1	@, flag
	cmp	r0, r5	@ start_code, tmp191
	bne	.L532	@,
.L512:
	ldr	r0, [fp, #-80]	@, %sfp
	add	r7, r0, #1	@,,
	str	r7, [fp, #-80]	@, %sfp
	cmp	r7, #0	@,
	ble	.L511	@,
	ldr	lr, [fp, #-88]	@, %sfp
	cmp	lr, r4	@, i.2246
	bcc	.L511	@,
	mov	r5, r3	@ Ret, i
	b	.L495	@
.L528:
	ldr	r7, [fp, #-84]	@, %sfp
	cmp	r0, r7	@ start_code,
	bne	.L513	@,
	b	.L512	@
.L530:
	ldr	r4, [fp, #-84]	@, %sfp
	cmp	sl, r4	@ start_code,
	bne	.L508	@,
.L507:
	ldr	r4, [fp, #-88]	@, %sfp
	mov	r7, #1	@,
	str	r7, [fp, #-80]	@, %sfp
	cmp	r4, r3	@, i
	bcc	.L506	@,
	mov	r5, r3	@ Ret, i
	b	.L495	@
.L531:
	ubfx	lr, sl, #16, #8	@ tmp227, start_code,,
	sub	r4, lr, #128	@ tmp228, tmp227,
	cmp	r4, #3	@ tmp228,
	movhi	r4, #0	@, flag
	movls	r4, #1	@, flag
	b	.L518	@
.L493:
	movw	r3, #3694	@,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC106	@,
	ldr	r2, .L533	@,
	movt	r1, #:upper16:.LC106	@,
	bl	dprint_vfmw	@
	ldr	r3, [fp, #-48]	@ prephitmp.2228, SegNum
	b	.L494	@
.L534:
	.align	2
.L533:
	.word	.LANCHOR1+140
	.fnend
	.size	GetNextVop, .-GetNextVop
	.align	2
	.global	WaitSCDFinish
	.type	WaitSCDFinish, %function
WaitSCDFinish:
	.fnstart
.LFB1618:
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
	add	r0, r0, r0, asl #1	@, tmp145, ScdId, ScdId,
	movw	r2, #:lower16:.LANCHOR0	@ tmp141,
	movt	r2, #:upper16:.LANCHOR0	@ tmp141,
	add	r1, r2, r0, asl #5	@, tmp147, tmp141, tmp145,
	ldr	r3, [r1, #856]	@ <variable>.SCDState, <variable>.SCDState
	cmp	r3, #1	@ <variable>.SCDState,
	beq	.L552	@,
.L536:
	mov	r0, #0	@ D.53396,
.L540:
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L552:
	bl	OSAL_GetTimeInMs	@
	movw	r6, #:lower16:500000	@ tmp158,
	mov	r5, #0	@ i,
	movt	r6, #:upper16:500000	@ tmp158,
	mov	r4, r0	@ t_start,
	b	.L541	@
.L554:
	bl	OSAL_GetTimeInMs	@
	cmp	r4, r0	@ t_start, t_now
	rsbhi	ip, r0, r4	@ tmp152, t_now, t_start
	rsbls	ip, r4, r0	@ t_wait, t_start, t_now
	mvnhi	ip, ip	@ t_wait, tmp152
	cmp	ip, #1000	@ t_wait,
	bhi	.L550	@,
	movw	r0, #:lower16:-121386944	@,
	movt	r0, #:upper16:-121386944	@,
	bl	MEM_ReadPhyWord	@
	add	r5, r5, #1	@ tmp159, i,
	tst	r0, #1	@,
	bne	.L536	@,
	bl	OSAL_GetTimeInMs	@
	cmp	r4, r0	@ t_start, t_now
	rsbhi	ip, r0, r4	@ tmp164, t_now, t_start
	rsbls	ip, r4, r0	@ t_wait, t_start, t_now
	mvnhi	ip, ip	@ t_wait, tmp164
	cmp	ip, #1000	@ t_wait,
	bhi	.L550	@,
	add	r5, r5, #1	@ i, tmp159,
	cmp	r5, r6	@ i, tmp158
	beq	.L553	@,
.L541:
	movw	r0, #:lower16:-121386944	@,
	movt	r0, #:upper16:-121386944	@,
	bl	MEM_ReadPhyWord	@
	tst	r0, #1	@,
	beq	.L554	@,
	b	.L536	@
.L550:
	mov	r3, r0	@, t_now
	mov	r2, r4	@, t_start
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC107	@,
	movt	r1, #:upper16:.LC107	@,
	str	ip, [sp, #0]	@ t_wait,
	bl	dprint_vfmw	@
	mvn	r0, #6	@ D.53396,
	b	.L540	@
.L553:
	mvn	r0, #6	@ D.53396,
	b	.L540	@
	.fnend
	.size	WaitSCDFinish, .-WaitSCDFinish
	.align	2
	.global	CalcInstBlockTime
	.type	CalcInstBlockTime, %function
CalcInstBlockTime:
	.fnstart
.LFB1583:
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
	add	r0, r0, r0, asl #1	@, tmp145, SmID, SmID,
	movw	r2, #:lower16:.LANCHOR0	@ tmp141,
	movt	r2, #:upper16:.LANCHOR0	@ tmp141,
	add	r3, r2, r0, asl #4	@, tmp147, tmp141, tmp145,
	mov	r5, r1	@ FirstCalc, FirstCalc
	ldr	r4, [r3, #40]	@ pSmInstArray, <variable>.pSmInstArray
	cmp	r4, #0	@ pSmInstArray,
	moveq	r0, r4	@ prephitmp.2292, pSmInstArray
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	bl	OSAL_GetTimeInMs	@
	cmp	r5, #0	@ FirstCalc,
	mov	r3, r0	@ CurTime,
	beq	.L558	@,
	movw	r1, #:lower16:204708	@ tmp149,
	movw	ip, #:lower16:204712	@ tmp151,
	movt	r1, #:upper16:204708	@ tmp149,
	movt	ip, #:upper16:204712	@ tmp151,
	mov	r0, #0	@ tmp150,
	str	r0, [r4, r1]	@ tmp150, <variable>.BlockTimeInMs
	str	r3, [r4, ip]	@ CurTime,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L558:
	movw	r2, #:lower16:204712	@ tmp152,
	movt	r2, #:upper16:204712	@ tmp152,
	ldr	r1, [r4, r2]	@ D.51342, <variable>.LastBlockTime
	cmp	r0, r1	@ CurTime, D.51342
	bls	.L559	@,
	rsb	r3, r1, r0	@ D.51345, D.51342, CurTime
	movw	lr, #:lower16:204708	@ tmp153,
	movt	lr, #:upper16:204708	@ tmp153,
	mov	r0, r3	@ prephitmp.2292, D.51345
	str	r3, [r4, lr]	@ D.51345,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L559:
	movw	ip, #:lower16:204708	@ tmp154,
	movt	ip, #:upper16:204708	@ tmp154,
	mov	r0, r5	@ prephitmp.2292, FirstCalc
	str	r3, [r4, r2]	@ CurTime, <variable>.LastBlockTime
	str	r5, [r4, ip]	@ FirstCalc, <variable>.BlockTimeInMs
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	CalcInstBlockTime, .-CalcInstBlockTime
	.align	2
	.global	WriteScdVtrlReg
	.type	WriteScdVtrlReg, %function
WriteScdVtrlReg:
	.fnstart
.LFB1586:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp220,
	movt	r4, #:upper16:.LANCHOR0	@ tmp220,
	mov	r5, r0	@ pSmCtrlReg, pSmCtrlReg
	mov	r6, r1	@ ScdId, ScdId
	ldr	r1, [r0, #4]	@, <variable>.DownMsgPhyAddr
	ldr	r3, [r4, #868]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	lr, r3, #2048	@, s_RegPhyBaseAddr,
	add	r0, lr, #4	@,,
	bl	MEM_WritePhyWord	@
	ldr	r2, [r4, #868]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r1, [r5, #12]	@, <variable>.UpMsgPhyAddr
	add	ip, r2, #2048	@, s_RegPhyBaseAddr,
	add	r0, ip, #8	@,,
	bl	MEM_WritePhyWord	@
	ldr	r0, [r4, #868]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r1, [r5, #20]	@, <variable>.UpLen
	add	r3, r0, #2048	@, s_RegPhyBaseAddr,
	add	r0, r3, #12	@,,
	bl	MEM_WritePhyWord	@
	ldr	r2, [r4, #868]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r1, [r5, #24]	@, <variable>.BufferFirst
	add	r0, r2, #2064	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	ip, [r4, #868]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r1, [r5, #28]	@, <variable>.BufferLast
	add	r0, ip, #2064	@, s_RegPhyBaseAddr,
	add	r0, r0, #4	@,,
	bl	MEM_WritePhyWord	@
	ldr	r3, [r4, #868]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r1, [r5, #32]	@, <variable>.BufferIni
	add	r2, r3, #2064	@, s_RegPhyBaseAddr,
	add	r0, r2, #8	@,,
	bl	MEM_WritePhyWord	@
	ldrsb	r0, [r5, #1]	@ <variable>.SliceCheckFlag, <variable>.SliceCheckFlag
	ldr	ip, [r5, #36]	@ <variable>.ScdProtocol, <variable>.ScdProtocol
	ldr	r2, [r5, #104]	@ <variable>.ScdLowdlyEnable, <variable>.ScdLowdlyEnable
	mov	r3, r0, asl #4	@ tmp173, <variable>.SliceCheckFlag,
	and	r1, ip, #15	@ tmp167, <variable>.ScdProtocol,
	ldr	r0, [r4, #868]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	and	ip, r3, #16	@ tmp174, tmp173,
	orr	r1, r1, r2, asl #8	@, tmp171, tmp167, <variable>.ScdLowdlyEnable,
	orr	r1, r1, ip	@, tmp171, tmp174
	add	r0, r0, #2080	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r3, [r5, #104]	@ <variable>.ScdLowdlyEnable, <variable>.ScdLowdlyEnable
	cmp	r3, #0	@ <variable>.ScdLowdlyEnable,
	beq	.L562	@,
	ldr	r0, [r4, #868]	@, s_RegPhyBaseAddr
	ldr	r1, [r5, #108]	@, <variable>.reg_avs_flag
	bl	MEM_WritePhyWord	@
.L562:
	ldr	r2, [r4, #868]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r1, [r5, #44]	@, <variable>.DspSpsMsgMemAddr
	add	lr, r2, #2080	@, s_RegPhyBaseAddr,
	add	r0, lr, #8	@,,
	bl	MEM_WritePhyWord	@
	ldr	ip, [r4, #868]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r1, [r5, #56]	@, <variable>.DspPpsMsgMemAddr
	add	r0, ip, #2080	@, s_RegPhyBaseAddr,
	add	r0, r0, #12	@,,
	bl	MEM_WritePhyWord	@
	ldr	r3, [r4, #868]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r1, [r5, #68]	@, <variable>.DvmMemAddr
	add	r0, r3, #2096	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r2, [r4, #868]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r1, [r5, #80]	@, <variable>.DspSedTopMemAddr
	add	ip, r2, #2096	@, s_RegPhyBaseAddr,
	add	r0, ip, #4	@,,
	bl	MEM_WritePhyWord	@
	add	r0, r6, r6, asl #1	@, tmp207, ScdId, ScdId,
	ldr	r1, [r4, #868]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r3, r4, r0, asl #5	@, tmp209, tmp220, tmp207,
	add	r2, r1, #2096	@, s_RegPhyBaseAddr,
	add	r0, r2, #8	@,,
	ldr	r1, [r3, #828]	@, <variable>.ScdDrvMem.DspCaMnMemAddr
	bl	MEM_WritePhyWord	@
	mov	r0, r6	@, ScdId
	bl	PrintScdVtrlReg	@
	ldr	ip, [r4, #868]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r1, #0	@,
	add	r0, ip, #2048	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r0, [r4, #868]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldrb	r1, [r5, #2]	@ zero_extendqisi2	@ <variable>.ScdStart, <variable>.ScdStart
	add	r0, r0, #2048	@, s_RegPhyBaseAddr,
	and	r1, r1, #1	@, <variable>.ScdStart,
	bl	MEM_WritePhyWord	@
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	WriteScdVtrlReg, .-WriteScdVtrlReg
	.align	2
	.global	SCDDRV_EnableInt
	.type	SCDDRV_EnableInt, %function
SCDDRV_EnableInt:
	.fnstart
.LFB1534:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp134,
	movt	r3, #:upper16:.LANCHOR0	@ tmp134,
	mov	r1, #0	@,
	ldr	r2, [r3, #868]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, r2, #2064	@, s_RegPhyBaseAddr,
	add	r0, r0, #12	@,,
	bl	MEM_WritePhyWord	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	SCDDRV_EnableInt, .-SCDDRV_EnableInt
	.align	2
	.global	SCDDRV_MaskInt
	.type	SCDDRV_MaskInt, %function
SCDDRV_MaskInt:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp134,
	movt	r3, #:upper16:.LANCHOR0	@ tmp134,
	mov	r1, #1	@,
	ldr	r2, [r3, #868]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, r2, #2064	@, s_RegPhyBaseAddr,
	add	r0, r0, #12	@,,
	bl	MEM_WritePhyWord	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	SCDDRV_MaskInt, .-SCDDRV_MaskInt
	.align	2
	.global	ResetSCD
	.type	ResetSCD, %function
ResetSCD:
	.fnstart
.LFB1531:
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
	movw	r0, #:lower16:-121386980	@,
	movt	r0, #:upper16:-121386980	@,
	movw	r4, #:lower16:g_pstRegCrg	@ tmp162,
	bl	MEM_ReadPhyWord	@
	movt	r4, #:upper16:g_pstRegCrg	@ tmp162,
	mov	r3, #0	@ i,
	movw	ip, #10000	@ tmp163,
	ldr	r2, [r4, #0]	@ g_pstRegCrg.449, g_pstRegCrg
	ldr	r5, [r2, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	orr	r5, r5, #32	@ u32TmpValue, u32TmpValue,
	str	r5, [r2, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	ldr	r1, [r4, #0]	@ prephitmp.2401, g_pstRegCrg
	mov	r6, r0	@ D.49701,
	b	.L570	@
.L578:
	ldr	r2, [r1, #372]	@ D.49705, <variable>.PERI_CRG93.u32
	and	lr, r2, #2	@ tmp170, D.49705,
	str	r2, [fp, #-32]	@ D.49705, u32TmpValue_93.u32
	uxtb	r0, lr	@ tmp171, tmp170
	cmp	r0, #0	@ tmp171,
	bne	.L569	@,
	cmp	r3, ip	@ i, tmp163
	beq	.L577	@,
.L570:
	ldr	r0, [r1, #372]	@ D.49705, <variable>.PERI_CRG93.u32
	add	r3, r3, #1	@ tmp164, i,
	add	r3, r3, #1	@ i, tmp164,
	tst	r0, #2	@ D.49705,
	str	r0, [fp, #-32]	@ D.49705, u32TmpValue_93.u32
	beq	.L578	@,
.L569:
	movw	r3, #:lower16:.LANCHOR0	@ tmp154,
	movt	r3, #:upper16:.LANCHOR0	@ tmp154,
	bfc	r5, #5, #1	@ u32TmpValue,,
	str	r5, [r1, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	ldr	r0, [r3, #868]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	and	r1, r6, #1	@, D.49701,
	add	ip, r0, #2064	@, s_RegPhyBaseAddr,
	add	r0, ip, #12	@,,
	bl	MEM_WritePhyWord	@
	mov	r0, #1	@,
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L577:
	movw	r1, #:lower16:.LC108	@,
	movt	r1, #:upper16:.LC108	@,
	bl	dprint_vfmw	@
	ldr	r1, [r4, #0]	@ prephitmp.2401, g_pstRegCrg
	b	.L569	@
	.fnend
	.size	ResetSCD, .-ResetSCD
	.align	2
	.global	SCDDRV_CheckDevice
	.type	SCDDRV_CheckDevice, %function
SCDDRV_CheckDevice:
	.fnstart
.LFB1613:
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
	subs	r5, r0, #0	@ ScdId, ScdId
	mvnne	r0, #0	@ D.53287,
	beq	.L586	@,
.L581:
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L586:
	movw	r4, #:lower16:.LANCHOR0	@ tmp144,
	movt	r4, #:upper16:.LANCHOR0	@ tmp144,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC109	@,
	ldr	ip, [r4, #856]	@ <variable>.SCDState, <variable>.SCDState
	movt	r1, #:upper16:.LC109	@,
	ldr	r2, .L588	@,
	movw	r3, #5847	@,
	stmia	sp, {r5, ip}	@ phole stm
	bl	dprint_vfmw	@
	ldr	r6, [r4, #856]	@ temp.2442, <variable>.SCDState
	cmp	r6, #0	@ temp.2442,
	beq	.L587	@,
	movw	r3, #5856	@,
	ldr	r2, .L588	@,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC109	@,
	movt	r1, #:upper16:.LC109	@,
	stmia	sp, {r5, r6}	@ phole stm
	bl	dprint_vfmw	@
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r4, #860]	@ D.53296, <variable>.LastProcessTime
	cmp	r0, r3	@ CurTime, D.53296
	strcc	r0, [r4, #860]	@ CurTime, <variable>.LastProcessTime
	bcc	.L584	@,
	rsb	r3, r3, r0	@ DelayTime, D.53296, CurTime
	cmp	r3, #2000	@ DelayTime,
	bls	.L584	@,
	mov	r2, r5	@, ScdId
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC111	@,
	movt	r1, #:upper16:.LC111	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@, ScdId
	bl	ResetSCD	@
	ldr	r0, [r4, #852]	@, <variable>.ThisInstID
	str	r5, [r4, #856]	@ ScdId, <variable>.SCDState
	bl	DeleteLastSendRaw	@
	mov	r0, r5	@ D.53287, ScdId
	b	.L581	@
.L584:
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC112	@,
	ldr	r2, .L588	@,
	movt	r1, #:upper16:.LC112	@,
	mov	r3, #5888	@,
	mov	lr, #0	@ tmp164,
	str	lr, [sp, #0]	@ tmp164,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.53287,
	b	.L581	@
.L587:
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC110	@,
	ldr	r2, .L588	@,
	movt	r1, #:upper16:.LC110	@,
	movw	r3, #5850	@,
	str	r6, [sp, #0]	@ temp.2442,
	bl	dprint_vfmw	@
	mov	r0, r6	@ D.53287, temp.2442
	b	.L581	@
.L589:
	.align	2
.L588:
	.word	.LANCHOR1+152
	.fnend
	.size	SCDDRV_CheckDevice, .-SCDDRV_CheckDevice
	.align	2
	.global	SCDDRV_ResetSCD
	.type	SCDDRV_ResetSCD, %function
SCDDRV_ResetSCD:
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
	movw	r1, #:lower16:.LANCHOR0	@ tmp134,
	movt	r1, #:upper16:.LANCHOR0	@ tmp134,
	ldr	r3, [r1, #852]	@ <variable>.ThisInstID, <variable>.ThisInstID
	cmp	r3, r0	@ <variable>.ThisInstID, ChanID
	ldmnefd	sp, {fp, sp, pc}	@
	mov	r0, #0	@,
	bl	ResetSCD	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	SCDDRV_ResetSCD, .-SCDDRV_ResetSCD
	.align	2
	.global	FillEosRawStream
	.type	FillEosRawStream, %function
FillEosRawStream:
	.fnstart
.LFB1604:
	@ args = 0, pretend = 0, frame = 104
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #116
	sub	sp, sp, #116	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	add	r0, r0, r0, asl #1	@, tmp146, InstID, InstID,
	movw	r2, #:lower16:.LANCHOR0	@ tmp142,
	sub	r5, fp, #128	@ tmp177,,
	movt	r2, #:upper16:.LANCHOR0	@ tmp142,
	mov	r4, r1	@ pRawPacket, pRawPacket
	add	r3, r2, r0, asl #4	@, tmp148, tmp142, tmp146,
	ldr	r1, .L612	@,
	mov	r0, r5	@, tmp177
	mov	r2, #100	@,
	ldr	r6, [r3, #40]	@ pSmInstArray, <variable>.pSmInstArray
	bl	memcpy	@
	cmp	r4, #0	@ pRawPacket,
	beq	.L610	@,
	ldr	r3, [r6, #56]	@ D.52578, <variable>.Config.VidStd
	cmp	r3, #16	@ D.52578,
	ldrls	pc, [pc, r3, asl #2]	@ D.52578
	b	.L596	@
.L605:
	.word	.L603
	.word	.L598
	.word	.L599
	.word	.L600
	.word	.L601
	.word	.L601
	.word	.L609
	.word	.L596
	.word	.L601
	.word	.L601
	.word	.L601
	.word	.L601
	.word	.L601
	.word	.L601
	.word	.L601
	.word	.L603
	.word	.L604
.L598:
	ldr	r1, [r6, #72]	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile, <variable>.Config.StdExt.Vc1Ext.IsAdvProfile
	cmp	r1, #1	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile,
	beq	.L609	@,
.L601:
	mov	r0, #0	@ D.52577,
.L595:
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L603:
	mov	r1, r5	@ pu8Flag, tmp177
	mov	r6, #15	@ u32FlagLen,
.L606:
	ldr	ip, [r4, #8]	@ D.52583, <variable>.Length
	cmp	r6, ip	@ u32FlagLen, D.52583
	bhi	.L611	@,
	ldr	r0, [r4, #4]	@, <variable>.VirAddr
	mov	r2, r6	@, u32FlagLen
	bl	memcpy	@
	str	r6, [r4, #8]	@ u32FlagLen, <variable>.Length
	mov	r0, #0	@ D.52577,
	b	.L595	@
.L609:
	add	r1, r5, #20	@ pu8Flag, tmp177,
	mov	r6, #15	@ u32FlagLen,
	b	.L606	@
.L596:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC114	@,
	ldr	r2, .L612+4	@,
	movt	r1, #:upper16:.LC114	@,
	bl	dprint_vfmw	@
	mvn	r0, #6	@ D.52577,
	b	.L595	@
.L604:
	add	r1, r5, #80	@ pu8Flag, tmp177,
	mov	r6, #16	@ u32FlagLen,
	b	.L606	@
.L599:
	add	r1, r5, #40	@ pu8Flag, tmp177,
	mov	r6, #19	@ u32FlagLen,
	b	.L606	@
.L600:
	add	r1, r5, #60	@ pu8Flag, tmp177,
	mov	r6, #16	@ u32FlagLen,
	b	.L606	@
.L611:
	mov	r3, r6	@, u32FlagLen
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC115	@,
	ldr	r2, .L612+4	@,
	movt	r1, #:upper16:.LC115	@,
	str	ip, [sp, #0]	@ D.52583,
	bl	dprint_vfmw	@
	mvn	r0, #6	@ D.52577,
	b	.L595	@
.L610:
	mov	r0, r4	@, pRawPacket
	movw	r1, #:lower16:.LC113	@,
	ldr	r2, .L612+4	@,
	movt	r1, #:upper16:.LC113	@,
	bl	dprint_vfmw	@
	mvn	r0, #6	@ D.52577,
	b	.L595	@
.L613:
	.align	2
.L612:
	.word	.LANCHOR1+172
	.word	.LANCHOR1+272
	.fnend
	.size	FillEosRawStream, .-FillEosRawStream
	.align	2
	.global	GetStreamSeg
	.type	GetStreamSeg, %function
GetStreamSeg:
	.fnstart
.LFB1556:
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
	cmp	r0, #0	@ pStreamSegArray,
	cmpne	r1, #0	@, pStreamSeg,
	mov	r4, r0	@ pStreamSegArray, pStreamSegArray
	mvneq	r0, #0	@ Ret,
	beq	.L616	@,
	movw	r2, #:lower16:92168	@ tmp151,
	movw	r3, #:lower16:92172	@ tmp152,
	movt	r2, #:upper16:92168	@ tmp151,
	movt	r3, #:upper16:92172	@ tmp152,
	ldr	r6, [r4, r2]	@ i, <variable>.Head
	ldr	ip, [r4, r3]	@ D.50361, <variable>.Tail
	cmp	r6, ip	@ i, D.50361
	beq	.L617	@,
	mov	r3, r6, asl #2	@ tmp240, i,
	add	r2, r3, r6	@ tmp155, tmp240, i
	add	r2, r4, r2, asl #4	@, tmp159, pStreamSegArray, tmp155,
	ldrsb	r2, [r2, #12]	@ <variable>.SegState, <variable>.SegState
	cmp	r2, #1	@ <variable>.SegState,
	movwne	r0, #:lower16:954437177	@ tmp241,
	movtne	r0, #:upper16:954437177	@ tmp241,
	bne	.L622	@,
	b	.L618	@
.L620:
	add	r2, r4, r2, asl #4	@, tmp169, pStreamSegArray, tmp165,
	ldrsb	r2, [r2, #12]	@ <variable>.SegState, <variable>.SegState
	cmp	r2, #1	@ <variable>.SegState,
	beq	.L618	@,
.L622:
	add	r6, r6, #1	@ D.50370, i,
	smull	r3, r2, r0, r6	@, tmp230, tmp241, D.50370
	mov	r3, r6, asr #31	@ tmp233, D.50370,
	rsb	r3, r3, r2, asr #8	@, i, tmp233, tmp230,
	add	r3, r3, r3, asl #3	@, tmp236, i, i,
	sub	r6, r6, r3, asl #7	@ i, D.50370, tmp236,
	cmp	r6, ip	@ i, D.50361
	mov	r3, r6, asl #2	@ tmp240, i,
	add	r2, r3, r6	@ tmp165, tmp240, i
	bne	.L620	@,
.L617:
	mvn	r0, #2	@ Ret,
.L616:
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L618:
	add	r7, r3, r6	@ tmp175, tmp240, i
	mov	r0, r1	@, pStreamSeg
	add	r6, r7, #1	@ tmp198, tmp175,
	mov	r2, #80	@,
	add	r5, r4, r7, asl #4	@, tmp178, pStreamSegArray, tmp175,
	add	r5, r5, #8	@ tmp179, tmp178,
	mov	r1, r5	@, tmp179
	bl	memcpy	@
	add	r0, r4, r6, asl #4	@, tmp200, pStreamSegArray, tmp198,
	movw	ip, #:lower16:92204	@ tmp201,
	movw	r2, #:lower16:92208	@ tmp204,
	movt	ip, #:upper16:92204	@ tmp201,
	movt	r2, #:upper16:92208	@ tmp204,
	ldr	r3, [r0, #8]	@ D.50374, <variable>.LenInByte
	mov	r1, #2	@ tmp193,
	strb	r1, [r5, #4]	@ tmp193, <variable>.SegState
	mov	r6, r0	@ tmp217, tmp200
	ldr	r7, [r4, ip]	@ <variable>.SegFreshSize, <variable>.SegFreshSize
	mov	r0, #26	@,
	ldr	lr, [r4, r2]	@ <variable>.SegFreshNum, <variable>.SegFreshNum
	movw	r1, #:lower16:.LC116	@,
	rsb	r7, r3, r7	@ D.50375, D.50374, <variable>.SegFreshSize
	movt	r1, #:upper16:.LC116	@,
	sub	lr, lr, #1	@ D.50377, <variable>.SegFreshNum,
	bic	r7, r7, r7, asr #31	@ tmp207, D.50375
	str	r7, [r4, ip]	@ tmp207, <variable>.SegFreshSize
	bic	ip, lr, lr, asr #31	@ tmp209, D.50377
	str	ip, [r4, r2]	@ tmp209, <variable>.SegFreshNum
	ldrb	ip, [r5, #5]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	ldr	r2, [r6, #4]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	ip, [sp, #0]	@ <variable>.IsLastSeg,
	bl	dprint_vfmw	@
	mov	r0, #0	@ Ret,
	b	.L616	@
	.fnend
	.size	GetStreamSeg, .-GetStreamSeg
	.align	2
	.global	InsertStreamSeg
	.type	InsertStreamSeg, %function
InsertStreamSeg:
	.fnstart
.LFB1555:
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
	cmp	r0, #0	@ pStreamSegArray,
	cmpne	r1, #0	@, pStreamSeg,
	mov	r4, r0	@ pStreamSegArray, pStreamSegArray
	mov	r5, r1	@ pStreamSeg, pStreamSeg
	movne	r8, #0	@, tmp145
	moveq	r8, #1	@, tmp145
	mvneq	r0, #0	@ Ret,
	ldmeqfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	movw	r6, #:lower16:92172	@ tmp146,
	movt	r6, #:upper16:92172	@ tmp146,
	movw	r7, #:lower16:954437177	@ tmp151,
	movw	r0, #:lower16:92168	@ tmp159,
	ldr	r1, [r4, r6]	@ <variable>.Tail, <variable>.Tail
	movt	r0, #:upper16:92168	@ tmp159,
	movt	r7, #:upper16:954437177	@ tmp151,
	add	r3, r1, #1	@ tmp147, <variable>.Tail,
	ldr	r1, [r4, r0]	@ <variable>.Head, <variable>.Head
	smull	r0, ip, r7, r3	@, tmp150, tmp151, tmp147
	mov	r0, r3, asr #31	@ tmp153, tmp147,
	rsb	r0, r0, ip, asr #8	@, tmp149, tmp153, tmp150,
	add	r0, r0, r0, asl #3	@, tmp156, tmp149, tmp149,
	sub	r3, r3, r0, asl #7	@ tmp158, tmp147, tmp156,
	cmp	r3, r1	@ tmp158, <variable>.Head
	mvneq	r0, #3	@ Ret,
	ldmeqfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	mov	r1, r2	@, InstID
	ldr	r0, [r5, #0]	@, <variable>.VirAddr
	bl	CheckStream	@
	ldr	r9, [r4, r6]	@ D.50334, <variable>.Tail
	mov	r1, r5	@, pStreamSeg
	mov	r2, #80	@,
	add	sl, r9, r9, asl #2	@, tmp165, D.50334, D.50334,
	add	ip, r4, sl, asl #4	@, tmp168, pStreamSegArray, tmp165,
	add	r9, r4, sl, asl #4	@, tmp194, pStreamSegArray, tmp165,
	add	r0, ip, #8	@, tmp168,
	mov	sl, #1	@ tmp185,
	bl	memcpy	@
	ldr	r3, [r4, r6]	@ <variable>.Tail, <variable>.Tail
	movw	ip, #:lower16:92196	@ tmp213,
	movw	r1, #:lower16:92200	@ tmp217,
	movt	ip, #:upper16:92196	@ tmp213,
	movt	r1, #:upper16:92200	@ tmp217,
	add	r2, r3, r3, asl #2	@, tmp178, <variable>.Tail, <variable>.Tail,
	movw	r3, #:lower16:92204	@ tmp222,
	movt	r3, #:upper16:92204	@ tmp222,
	add	r0, r4, r2, asl #4	@, tmp182, pStreamSegArray, tmp178,
	movw	r2, #:lower16:92208	@ tmp227,
	movt	r2, #:upper16:92208	@ tmp227,
	strb	sl, [r0, #12]	@ tmp185, <variable>.SegState
	mov	r0, r8	@ Ret, tmp145
	ldr	r8, [r4, r6]	@ <variable>.Tail, <variable>.Tail
	str	r8, [r9, #28]	@ <variable>.Tail, <variable>.StreamID
	ldr	r8, [r4, r6]	@ <variable>.Tail, <variable>.Tail
	ldr	r9, [r4, r2]	@ <variable>.SegFreshNum, <variable>.SegFreshNum
	add	r8, r8, sl	@ tmp201, <variable>.Tail,
	add	r9, r9, #1	@ tmp230, <variable>.SegFreshNum,
	smull	sl, r7, r7, r8	@, tmp203, tmp151, tmp201
	mov	sl, r8, asr #31	@ tmp206, tmp201,
	rsb	r7, sl, r7, asr #8	@, tmp207, tmp206, tmp203,
	add	sl, r7, r7, asl #3	@, tmp210, tmp207, tmp207,
	sub	r7, r8, sl, asl #7	@ tmp212, tmp201, tmp210,
	str	r7, [r4, r6]	@ tmp212, <variable>.Tail
	ldr	sl, [r5, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	ldr	r7, [r5, #16]	@ <variable>.LenInByte, <variable>.LenInByte
	add	r6, r7, sl	@ tmp216, <variable>.LenInByte, <variable>.PhyAddr
	str	r6, [r4, ip]	@ tmp216, <variable>.SegBufWriteAddr
	ldr	r6, [r4, r1]	@, <variable>.SegTotalSize
	ldr	ip, [r5, #16]	@ <variable>.LenInByte, <variable>.LenInByte
	add	sl, ip, r6	@ tmp221, <variable>.LenInByte,
	str	sl, [r4, r1]	@ tmp221, <variable>.SegTotalSize
	ldr	sl, [r4, r3]	@, <variable>.SegFreshSize
	ldr	ip, [r5, #16]	@ <variable>.LenInByte, <variable>.LenInByte
	str	r9, [r4, r2]	@ tmp230, <variable>.SegFreshNum
	add	r2, ip, sl	@ tmp226, <variable>.LenInByte,
	str	r2, [r4, r3]	@ tmp226, <variable>.SegFreshSize
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	.fnend
	.size	InsertStreamSeg, .-InsertStreamSeg
	.align	2
	.global	ShowNextRawPacket
	.type	ShowNextRawPacket, %function
ShowNextRawPacket:
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
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r0, #0	@ pRawStreamArray,
	cmpne	r1, #0	@, pRawPacket,
	mov	r3, r0	@ pRawStreamArray, pRawStreamArray
	movne	r4, #0	@, tmp144
	moveq	r4, #1	@, tmp144
	mvneq	r0, #0	@ D.49820,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	movw	r2, #:lower16:98320	@ tmp145,
	movt	r2, #:upper16:98320	@ tmp145,
	movw	r0, #:lower16:98308	@ tmp154,
	movt	r0, #:upper16:98308	@ tmp154,
	ldr	ip, [r3, r2]	@ <variable>.CurShowIndex, <variable>.CurShowIndex
	ldr	r5, [r3, r0]	@ <variable>.Tail, <variable>.Tail
	add	r0, ip, #1	@ tmp146, <variable>.CurShowIndex,
	mov	ip, r0, asr #31	@ tmp148, tmp146,
	mov	ip, ip, lsr #22	@ tmp149, tmp148,
	add	r0, r0, ip	@ tmp150, tmp146, tmp149
	mov	r0, r0, asl #22	@ tmp151, tmp150,
	mov	r0, r0, lsr #22	@ tmp151, tmp151,
	rsb	r0, ip, r0	@ tmp153, tmp149, tmp151
	cmp	r5, r0	@ <variable>.Tail, tmp153
	mvneq	r0, #2	@ D.49820,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	add	lr, r0, r0, asl #1	@, tmp159, tmp153, tmp153,
	str	r0, [r3, r2]	@ tmp153, <variable>.CurShowIndex
	mov	r0, r1	@, pRawPacket
	mov	r2, #96	@,
	add	r1, r3, lr, asl #5	@,, pRawStreamArray, tmp159,
	bl	memcpy	@
	mov	r0, r4	@ D.49820, tmp144
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	ShowNextRawPacket, .-ShowNextRawPacket
	.align	2
	.global	ShowFirstRawPacket
	.type	ShowFirstRawPacket, %function
ShowFirstRawPacket:
	.fnstart
.LFB1538:
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
	cmp	r0, #0	@ pRawStreamArray,
	cmpne	r1, #0	@, pRawPacket,
	mov	r3, r0	@ pRawStreamArray, pRawStreamArray
	movne	r4, #0	@, tmp144
	moveq	r4, #1	@, tmp144
	mvneq	r0, #0	@ D.49801,
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	movw	r2, #:lower16:98308	@ tmp146,
	movt	r2, #:upper16:98308	@ tmp146,
	mov	r0, #98304	@ tmp145,
	ldr	ip, [r3, r0]	@ D.49802, <variable>.Head
	ldr	r2, [r3, r2]	@ <variable>.Tail, <variable>.Tail
	cmp	ip, r2	@ D.49802, <variable>.Tail
	mvneq	r0, #2	@ D.49801,
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	add	r2, ip, ip, asl #1	@, tmp151, D.49802, D.49802,
	movw	lr, #:lower16:98320	@ tmp148,
	movt	lr, #:upper16:98320	@ tmp148,
	mov	r0, r1	@, pRawPacket
	add	r1, r3, r2, asl #5	@,, pRawStreamArray, tmp151,
	mov	r2, #96	@,
	str	ip, [r3, lr]	@ D.49802, <variable>.CurShowIndex
	bl	memcpy	@
	mov	r0, r4	@ D.49801, tmp144
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	ShowFirstRawPacket, .-ShowFirstRawPacket
	.align	2
	.global	WriteScdMsg
	.type	WriteScdMsg, %function
WriteScdMsg:
	.fnstart
.LFB1587:
	@ args = 12, pretend = 0, frame = 112
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
	sub	r9, fp, #140	@ tmp220,,
	mov	r6, r2	@ pRawStreamArray, pRawStreamArray
	str	r1, [fp, #-144]	@ SegStreamSize, %sfp
	mov	sl, r0	@ pSmPushRaw, pSmPushRaw
	mov	r1, #0	@,
	mov	r0, r9	@, tmp220
	mov	r2, #96	@,
	mov	r5, r3	@ pDownMsgVirAddr, pDownMsgVirAddr
	bl	memset	@
	cmp	r6, #0	@ pRawStreamArray,
	beq	.L641	@,
	movw	r0, #:lower16:98308	@ tmp160,
	movt	r0, #:upper16:98308	@ tmp160,
	mov	r1, #98304	@ tmp159,
	ldr	r2, [r6, r1]	@ <variable>.Head, <variable>.Head
	ldr	r3, [r6, r0]	@ <variable>.Tail, <variable>.Tail
	cmp	r2, r3	@ <variable>.Head, <variable>.Tail
	beq	.L641	@,
	movw	r7, #:lower16:98316	@ tmp163,
	movt	r7, #:upper16:98316	@ tmp163,
	ldr	r4, [r6, r7]	@ FirstRawOffset, <variable>.FirstPacketOffset
	mov	r8, r4	@ prephitmp.2605, FirstRawOffset
.L642:
	mov	r1, r9	@, tmp220
	mov	r0, r6	@, pRawStreamArray
	bl	ShowFirstRawPacket	@
	ldr	r0, [fp, #-132]	@ RawPacket.Length, RawPacket.Length
	ldr	r3, [fp, #-136]	@ RawPacket.VirAddr, RawPacket.VirAddr
	mov	r2, #0	@ tmp170,
	rsb	r7, r4, r0	@ RawShowTotalLen, FirstRawOffset, RawPacket.Length
	ldr	r0, [fp, #-144]	@, %sfp
	ldr	r1, [fp, #-140]	@ RawPacket.PhyAddr, RawPacket.PhyAddr
	add	r8, r3, r8	@ tmp168, RawPacket.VirAddr, prephitmp.2605
	cmp	r7, r0	@ RawShowTotalLen,
	movgt	ip, #0	@, tmp178
	movle	ip, #1	@, tmp178
	str	r8, [fp, #-136]	@ tmp168, RawPacket.VirAddr
	cmp	ip, r2	@ tmp178,
	add	r4, r1, r4	@ tmp166, RawPacket.PhyAddr, FirstRawOffset
	mov	r3, r7	@ RawPacket.Length, RawShowTotalLen
	str	r4, [fp, #-140]	@ tmp166, RawPacket.PhyAddr
	moveq	r8, ip	@ j.2648, tmp178
	str	r2, [r5, #0]	@ tmp170,* pDownMsgVirAddr
	str	r2, [r5, #4]	@ tmp170,
	moveq	r4, r8	@ PushRawNum, j.2648
	str	r2, [r5, #8]	@ tmp170,
	str	r7, [fp, #-132]	@ RawShowTotalLen, RawPacket.Length
	str	r2, [sl, #4]	@ tmp170, <variable>.PushRawTotalLen
	beq	.L644	@,
	mov	r8, r2	@ j.2648, tmp170
	str	r6, [fp, #-152]	@ pRawStreamArray, %sfp
	mov	r2, r7	@ prephitmp.2607, RawShowTotalLen
	mov	r4, r8	@ PushRawNum, j.2648
	b	.L646	@
.L653:
	ldr	r3, [fp, #-132]	@ RawPacket.Length, RawPacket.Length
	movw	r0, #1023	@,
	ldr	r2, [fp, #-144]	@, %sfp
	cmp	r4, r0	@ PushRawNum,
	movgt	r1, #0	@, tmp195
	movle	r1, #1	@, tmp195
	add	r7, r7, r3	@ RawShowTotalLen, RawShowTotalLen, RawPacket.Length
	cmp	r2, r7	@, RawShowTotalLen
	mov	r2, r3	@ prephitmp.2607, RawPacket.Length
	movlt	r1, #0	@, tmp195,
	cmp	r1, #0	@ tmp195,
	beq	.L644	@,
.L646:
	cmp	r2, #0	@ prephitmp.2607,
	add	ip, r8, #1	@ j, j.2648,
	ldr	r0, [fp, #-152]	@, %sfp
	mov	r1, r9	@, tmp220
	add	r2, ip, #1	@ j.2626, j,
	add	r4, r4, #1	@ PushRawNum, PushRawNum,
	ble	.L645	@,
	ldr	lr, [fp, #-140]	@ RawPacket.PhyAddr, RawPacket.PhyAddr
	mov	r6, #0	@,
	str	r6, [fp, #-132]	@, RawPacket.Length
	add	r3, lr, r3	@ tmp180, RawPacket.PhyAddr, RawPacket.Length
	str	lr, [r5, r8, asl #2]	@ RawPacket.PhyAddr,* pDownMsgVirAddr
	sub	r3, r3, #1	@ tmp183, tmp180,
	str	r3, [r5, ip, asl #2]	@ tmp183,* pDownMsgVirAddr
	add	r8, r2, #1	@ j.2648, j.2626,
	ldr	ip, [fp, #4]	@, DownMsgPhyAddr
	add	lr, ip, r8, asl #2	@, tmp185,, j.2648,
	str	lr, [r5, r2, asl #2]	@ tmp185,* pDownMsgVirAddr
.L645:
	str	r7, [sl, #4]	@ RawShowTotalLen, <variable>.PushRawTotalLen
	bl	ShowNextRawPacket	@
	cmp	r0, #0	@,
	beq	.L653	@,
.L644:
	ldr	ip, [fp, #8]	@, LowdlyFlag
	cmp	ip, #0	@,
	bne	.L647	@,
	ldr	r3, [fp, #-132]	@ temp.2631, RawPacket.Length
	cmp	r3, #0	@ temp.2631,
	bne	.L654	@,
.L647:
	cmp	r4, #0	@ PushRawNum,
	mvneq	r0, #5	@ D.51584,
	bne	.L648	@,
.L649:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L654:
	ldr	r6, [fp, #-144]	@, %sfp
	ldr	r2, [sl, #4]	@ D.51569, <variable>.PushRawTotalLen
	sub	lr, r6, #16	@ tmp198,,
	cmp	r6, r7	@, RawShowTotalLen
	cmplt	r2, lr	@, D.51569, tmp198
	bge	.L647	@,
	cmp	r4, #1024	@ PushRawNum,
	bge	.L648	@,
	rsb	r2, r2, r6	@ D.51578, D.51569,
	cmp	r3, r2	@ temp.2631, D.51578
	blt	.L647	@,
	ldr	r0, [fp, #-140]	@ RawPacket.PhyAddr, RawPacket.PhyAddr
	add	r6, r8, #1	@ j.2636, j.2648,
	ldr	ip, [fp, #8]	@, LowdlyFlag
	add	r3, r6, #1	@ j.2644, j.2636,
	add	r1, r0, r2	@ tmp206, RawPacket.PhyAddr, D.51578
	add	r4, r4, #1	@ PushRawNum, PushRawNum,
	sub	lr, r1, #1	@ tmp209, tmp206,
	str	ip, [fp, #-132]	@, RawPacket.Length
	str	r0, [r5, r8, asl #2]	@ RawPacket.PhyAddr,* pDownMsgVirAddr
	add	r8, r3, #1	@ j.2648, j.2644,
	str	lr, [r5, r6, asl #2]	@ tmp209,* pDownMsgVirAddr
	ldr	ip, [fp, #4]	@, DownMsgPhyAddr
	add	r1, ip, r8, asl #2	@, tmp211,, j.2648,
	str	r1, [r5, r3, asl #2]	@ tmp211,* pDownMsgVirAddr
	ldr	r0, [sl, #4]	@ <variable>.PushRawTotalLen, <variable>.PushRawTotalLen
	add	r6, r0, r2	@ tmp214, <variable>.PushRawTotalLen, D.51578
	str	r6, [sl, #4]	@ tmp214, <variable>.PushRawTotalLen
.L648:
	sub	r8, r8, #1	@ tmp216, j.2648,
	ldr	r0, [fp, #4]	@, DownMsgPhyAddr
	ldr	r3, [fp, #12]	@, ScdId
	mov	r6, #0	@ tmp217,
	mov	lr, #1	@ tmp218,
	str	r6, [r5, r8, asl #2]	@ tmp217,* pDownMsgVirAddr
	mov	r1, r5	@, pDownMsgVirAddr
	mov	r2, r4	@, PushRawNum
	str	lr, [sl, #8]	@ tmp218, <variable>.PushRawOver
	str	r4, [sl, #0]	@ PushRawNum, <variable>.PushRawNum
	bl	PrintDownMsg	@
	mov	r0, r6	@ D.51584, tmp217
	b	.L649	@
.L641:
	mov	r8, #0	@ prephitmp.2605,
	mov	r4, r8	@ FirstRawOffset, prephitmp.2605
	b	.L642	@
	.fnend
	.size	WriteScdMsg, .-WriteScdMsg
	.align	2
	.global	ScdDriver
	.type	ScdDriver, %function
ScdDriver:
	.fnstart
.LFB1588:
	@ args = 12, pretend = 0, frame = 0
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
	ldr	r4, [fp, #12]	@ ScdId, ScdId
	mov	r5, r0	@ pSmCtrlReg, pSmCtrlReg
	mov	r6, r1	@ pSmPushRaw, pSmPushRaw
	mov	r8, r2	@ SegStreamSize, SegStreamSize
	mov	r7, r3	@ pRawStreamArray, pRawStreamArray
	mov	r0, r4	@, ScdId
	bl	ResetSCD	@
	ldr	ip, [r5, #104]	@ <variable>.ScdLowdlyEnable, <variable>.ScdLowdlyEnable
	ldr	lr, [fp, #8]	@ DownMsgPhyAddr, DownMsgPhyAddr
	mov	r0, r6	@, pSmPushRaw
	mov	r1, r8	@, SegStreamSize
	mov	r2, r7	@, pRawStreamArray
	ldr	r3, [fp, #4]	@, pDownMsgVirAddr
	str	lr, [sp, #0]	@ DownMsgPhyAddr,
	str	ip, [sp, #4]	@ <variable>.ScdLowdlyEnable,
	str	r4, [sp, #8]	@ ScdId,
	bl	WriteScdMsg	@
	subs	r6, r0, #0	@ Ret,
	bne	.L656	@,
	bl	OSAL_GetTimeInMs	@
	movw	r3, #:lower16:g_VfmwGlobalStat	@ tmp144,
	movt	r3, #:upper16:g_VfmwGlobalStat	@ tmp144,
	mov	r2, #84	@ tmp147,
	mov	r1, r4	@, ScdId
	mla	r4, r2, r4, r3	@ tmp148, tmp147, ScdId, tmp144
	str	r0, [r4, #68]	@, <variable>.u32SaLastStartTime
	mov	r0, r5	@, pSmCtrlReg
	bl	WriteScdVtrlReg	@
.L656:
	mov	r0, r6	@, Ret
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
	.fnend
	.size	ScdDriver, .-ScdDriver
	.align	2
	.global	InsertRawPacket
	.type	InsertRawPacket, %function
InsertRawPacket:
	.fnstart
.LFB1536:
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
	cmp	r0, #0	@ pRawStreamArray,
	cmpne	r1, #0	@, pRawPacket,
	mov	r4, r0	@ pRawStreamArray, pRawStreamArray
	movne	r5, #0	@, tmp144
	moveq	r5, #1	@, tmp144
	mvneq	r0, #0	@ D.49761,
	ldmeqfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	movw	r6, #:lower16:98308	@ tmp145,
	movt	r6, #:upper16:98308	@ tmp145,
	movw	r3, #:lower16:98312	@ tmp154,
	movt	r3, #:upper16:98312	@ tmp154,
	ldr	r2, [r4, r6]	@ D.49762, <variable>.Tail
	ldr	ip, [r4, r3]	@ <variable>.History, <variable>.History
	add	r3, r2, #1	@ tmp146, D.49762,
	mov	r0, r3, asr #31	@ tmp148, tmp146,
	mov	r0, r0, lsr #22	@ tmp149, tmp148,
	add	r3, r3, r0	@ tmp150, tmp146, tmp149
	mov	r3, r3, asl #22	@ tmp151, tmp150,
	mov	r3, r3, lsr #22	@ tmp151, tmp151,
	rsb	r3, r0, r3	@ tmp153, tmp149, tmp151
	cmp	r3, ip	@ tmp153, <variable>.History
	mvneq	r0, #3	@ D.49761,
	ldmeqfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	add	lr, r2, r2, asl #1	@, tmp158, D.49762, D.49762,
	mov	r2, #96	@,
	add	r0, r4, lr, asl #5	@,, pRawStreamArray, tmp158,
	bl	memcpy	@
	ldr	r3, [r4, r6]	@ <variable>.Tail, <variable>.Tail
	mov	r0, r5	@ D.49761, tmp144
	add	ip, r3, #1	@ tmp167, <variable>.Tail,
	mov	r2, ip, asr #31	@ tmp169, tmp167,
	mov	r2, r2, lsr #22	@ tmp170, tmp169,
	add	r1, ip, r2	@ tmp171, tmp167, tmp170
	mov	r3, r1, asl #22	@ tmp172, tmp171,
	mov	ip, r3, lsr #22	@ tmp172, tmp172,
	rsb	r1, r2, ip	@ tmp174, tmp170, tmp172
	str	r1, [r4, r6]	@ tmp174, <variable>.Tail
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	InsertRawPacket, .-InsertRawPacket
	.align	2
	.global	SM_PushRaw
	.type	SM_PushRaw, %function
SM_PushRaw:
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
	add	r0, r0, r0, asl #1	@, tmp142, SmID, SmID,
	ldr	ip, [r1, #0]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r2, #:lower16:.LANCHOR0	@ tmp138,
	movt	r2, #:upper16:.LANCHOR0	@ tmp138,
	add	r2, r2, r0, asl #4	@, tmp144, tmp138, tmp142,
	cmp	ip, #0	@ <variable>.PhyAddr,
	ldr	r0, [r2, #40]	@ pSmInstArray, <variable>.pSmInstArray
	bne	.L667	@,
.L664:
	mvn	r0, #0	@ Ret,
	ldmfd	sp, {fp, sp, pc}	@
.L667:
	ldr	r3, [r1, #4]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	r3, #0	@ <variable>.VirAddr,
	beq	.L664	@,
	cmp	r0, #0	@ pSmInstArray,
	beq	.L664	@,
	add	r0, r0, #208	@, pSmInstArray,
	bl	InsertRawPacket	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	SM_PushRaw, .-SM_PushRaw
	.align	2
	.global	ReleaseRawStreamData
	.type	ReleaseRawStreamData, %function
ReleaseRawStreamData:
	.fnstart
.LFB1607:
	@ args = 0, pretend = 0, frame = 16
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
	mov	r7, r1	@ pRawPacket, pRawPacket
	mov	r6, r0	@ InstID, InstID
	bl	VCTRL_GetStreamInterface	@
	sub	r5, fp, #48	@ tmp138,,
	mov	r1, #12	@,
	mov	r4, r0	@ pStreamIntf,
	mov	r0, r5	@, tmp138
	bl	__memzero	@
	cmp	r4, #0	@ pStreamIntf,
	beq	.L678	@,
	ldmia	r4, {r0, r1, r2}	@ pStreamIntf,,,
	stmia	r5, {r0, r1, r2}	@ tmp138,,,
	ldr	r3, [r4, #8]	@ <variable>.release_stream, <variable>.release_stream
	cmp	r3, #0	@ <variable>.release_stream,
	moveq	r8, r6, asl #1	@ tmp171, InstID,
	movweq	r5, #:lower16:.LANCHOR0	@ tmp170,
	movteq	r5, #:upper16:.LANCHOR0	@ tmp170,
	beq	.L671	@,
	mov	r8, r6, asl #1	@ tmp171, InstID,
	movw	r5, #:lower16:.LANCHOR0	@ tmp170,
	add	r4, r8, r6	@ tmp147, tmp171, InstID
	movt	r5, #:upper16:.LANCHOR0	@ tmp170,
	add	r2, r5, r4, asl #4	@, tmp149, tmp170, tmp147,
	ldr	r1, [r2, #40]	@ <variable>.pSmInstArray, <variable>.pSmInstArray
	ldr	r0, [r1, #96]	@ <variable>.Config.IsOmxPath, <variable>.Config.IsOmxPath
	cmp	r0, #1	@ <variable>.Config.IsOmxPath,
	beq	.L679	@,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r1, r7	@, pRawPacket
	ldr	r0, [fp, #-48]	@, StreamIntf.stream_provider_inst_id
	ldr	r3, [fp, #-40]	@ StreamIntf.release_stream, StreamIntf.release_stream
	blx	r3	@ StreamIntf.release_stream
	mov	r4, r0	@ ret,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
.L673:
	cmp	r4, #0	@ ret,
	bne	.L671	@,
.L674:
	add	r8, r8, r6	@ tmp163, tmp171, InstID
	add	r5, r5, r8, asl #4	@, tmp165, tmp170, tmp163,
	ldr	r0, [r5, #40]	@ <variable>.pSmInstArray, <variable>.pSmInstArray
	cmp	r0, #0	@ <variable>.pSmInstArray,
	beq	.L680	@,
.L670:
	mov	r0, r4	@, ret
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L671:
	mvn	r4, #6	@ ret,
	b	.L674	@
.L679:
	mov	r1, r7	@, pRawPacket
	ldr	r0, [fp, #-48]	@, StreamIntf.stream_provider_inst_id
	ldr	ip, [fp, #-40]	@ StreamIntf.release_stream, StreamIntf.release_stream
	blx	ip	@ StreamIntf.release_stream
	mov	r4, r0	@ ret,
	b	.L673	@
.L678:
	mov	r0, r4	@, pStreamIntf
	mov	r2, r6	@, InstID
	movw	r1, #:lower16:.LC117	@,
	movt	r1, #:upper16:.LC117	@,
	bl	dprint_vfmw	@
	mvn	r4, #6	@ ret,
	b	.L670	@
.L680:
	mov	r3, r6	@, InstID
	movw	r1, #:lower16:.LC118	@,
	movw	r2, #4979	@,
	movt	r1, #:upper16:.LC118	@,
	mvn	r4, #6	@ ret,
	bl	dprint_vfmw	@
	b	.L670	@
	.fnend
	.size	ReleaseRawStreamData, .-ReleaseRawStreamData
	.align	2
	.global	SM_MoveRawData
	.type	SM_MoveRawData, %function
SM_MoveRawData:
	.fnstart
.LFB1609:
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
	movw	r3, #:lower16:98516	@ tmp144,
	movt	r3, #:upper16:98516	@ tmp144,
	mov	r4, r0	@ pSmInstArray, pSmInstArray
	ldr	ip, [r4, #204]	@ D.53012, <variable>.Config.MaxRawPacketSize
	ldr	r1, [r0, r3]	@ D.52995, <variable>.RawPacketArray.Tail
	subs	r6, r1, #1	@ LastPos, D.52995,
	addmi	r6, r6, #1024	@ LastPos, LastPos,
	subs	r0, r1, #2	@ PrePos, D.52995,
	addmi	r0, r0, #1024	@ PrePos, PrePos,
	add	r8, r6, r6, asl #1	@, tmp155, LastPos, LastPos,
	add	r5, r0, r0, asl #1	@, tmp148, PrePos, PrePos,
	mov	r8, r8, asl #5	@ tmp156, tmp155,
	add	r5, r4, r5, asl #5	@, tmp150, pSmInstArray, tmp148,
	add	r7, r8, r4	@ tmp157, tmp156, pSmInstArray
	ldr	r0, [r5, #216]	@ D.53009, <variable>.Length
	ldr	r3, [r7, #216]	@ D.53010, <variable>.Length
	add	r2, r3, r0	@ tmp159, D.53010, D.53009
	cmp	r2, ip	@ tmp159, D.53012
	bgt	.L684	@,
	ldr	lr, [r5, #212]	@ <variable>.VirAddr, <variable>.VirAddr
	mov	r2, r3	@, D.53010
	ldr	r1, [r7, #212]	@, <variable>.VirAddr
	add	r0, r0, lr	@, D.53009, <variable>.VirAddr
	bl	memcpy	@
	ldr	r0, [r7, #216]	@ <variable>.Length, <variable>.Length
	ldr	ip, [r5, #216]	@ <variable>.Length, <variable>.Length
	movw	r3, #:lower16:190864	@ tmp205,
	movt	r3, #:upper16:190864	@ tmp205,
	add	r1, r8, #208	@ tmp211, tmp156,
	add	r2, r0, ip	@ tmp204, <variable>.Length, <variable>.Length
	add	r1, r4, r1	@, pSmInstArray, tmp211
	str	r2, [r5, #216]	@ tmp204, <variable>.Length
	ldr	r0, [r4, r3]	@, <variable>.InstID
	bl	ReleaseRawStreamData	@
	movw	ip, #:lower16:98516	@ tmp213,
	movt	ip, #:upper16:98516	@ tmp213,
	mov	r0, #0	@ D.53023,
	str	r6, [r4, ip]	@ LastPos, <variable>.RawPacketArray.Tail
.L685:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L684:
	mov	r2, r0	@, D.53009
	movw	r1, #:lower16:.LC119	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC119	@,
	str	ip, [sp, #0]	@ D.53012,
	bl	dprint_vfmw	@
	mvn	r0, #6	@ D.53023,
	b	.L685	@
	.fnend
	.size	SM_MoveRawData, .-SM_MoveRawData
	.align	2
	.global	DeleteRawPacketInBuffer
	.type	DeleteRawPacketInBuffer, %function
DeleteRawPacketInBuffer:
	.fnstart
.LFB1543:
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
	cmp	r0, #15	@ SmID,
	mov	r4, r0	@ SmID, SmID
	bhi	.L707	@,
	add	r2, r0, r0, asl #1	@, tmp152, SmID, SmID,
	movw	r0, #:lower16:.LANCHOR0	@ tmp148,
	movt	r0, #:upper16:.LANCHOR0	@ tmp148,
	add	r3, r0, r2, asl #4	@, tmp154, tmp148, tmp152,
	ldr	r5, [r3, #40]	@ pSmInstArray, <variable>.pSmInstArray
	cmp	r5, #0	@ pSmInstArray,
	beq	.L690	@,
	cmp	r1, #0	@ ResetFlag,
	bne	.L691	@,
	movw	ip, #:lower16:190880	@ tmp156,
	movt	ip, #:upper16:190880	@ tmp156,
	ldr	r1, [r5, ip]	@ <variable>.Mode, <variable>.Mode
	cmp	r1, #0	@ <variable>.Mode,
	bne	.L691	@,
.L690:
	mvn	r0, #0	@ D.49932,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L707:
	mov	r2, r0	@, SmID
	movw	r1, #:lower16:.LC120	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC120	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.49932,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L691:
	movw	r6, #:lower16:98512	@ tmp158,
	movw	r3, #:lower16:98520	@ tmp159,
	movt	r6, #:upper16:98512	@ tmp158,
	movt	r3, #:upper16:98520	@ tmp159,
	ldr	sl, [r5, r6]	@ RawHead, <variable>.RawPacketArray.Head
	ldr	r6, [r5, r3]	@ D.49944, <variable>.RawPacketArray.History
	cmp	sl, r6	@ RawHead, D.49944
	addlt	sl, sl, #1024	@ tmp160, RawHead,
	rsb	sl, r6, sl	@ DelNum, D.49944, tmp160
	cmp	sl, #0	@ DelNum,
	beq	.L690	@,
	add	r8, r6, r6, asl #1	@, tmp164, D.49944, D.49944,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC63	@,
	movt	r1, #:upper16:.LC63	@,
	mov	r8, r8, asl #5	@ tmp165, tmp164,
	mov	r7, #1	@ i,
	add	lr, r8, r5	@ tmp166, tmp165, pSmInstArray
	sub	r9, sl, #1	@ tmp195, DelNum,
	and	r9, r9, #1	@ tmp197, tmp195,
	ldr	r2, [lr, #208]	@, <variable>.PhyAddr
	ldr	r3, [lr, #216]	@, <variable>.Length
	bl	dprint_vfmw	@
	add	r1, r8, #208	@ tmp181, tmp165,
	add	r1, r5, r1	@, pSmInstArray, tmp181
	mov	r0, r4	@, SmID
	bl	ReleaseRawStreamData	@
	add	r2, r6, r7	@ D.49958, D.49944,
	cmp	r7, sl	@ i, DelNum
	mov	r0, r2, asl #22	@ j, D.49958,
	mov	r6, r0, lsr #22	@ j, j,
	bcs	.L703	@,
	cmp	r9, #0	@ tmp197,
	beq	.L694	@,
	add	r3, r6, r6, asl #1	@, tmp228, j, j,
	movw	r1, #:lower16:.LC63	@,
	mov	r0, #26	@,
	movt	r1, #:upper16:.LC63	@,
	mov	r8, r3, asl #5	@ tmp229, tmp228,
	mov	r7, #2	@ i,
	b	.L705	@
.L694:
	add	lr, r6, r6, asl #1	@, tmp202, j, j,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC63	@,
	movt	r1, #:upper16:.LC63	@,
	mov	r8, lr, asl #5	@ tmp203, tmp202,
	add	r6, r6, #1	@ D.49958, j,
	add	r2, r8, r5	@ tmp204, tmp203, pSmInstArray
	add	r7, r7, #1	@ tmp198, i,
	add	r7, r7, #1	@ i, tmp198,
	ldr	r3, [r2, #216]	@, <variable>.Length
	ldr	r2, [r2, #208]	@, <variable>.PhyAddr
	bl	dprint_vfmw	@
	add	r0, r8, #208	@ tmp209, tmp203,
	add	r1, r5, r0	@, pSmInstArray, tmp209
	mov	r0, r4	@, SmID
	bl	ReleaseRawStreamData	@
	mov	r3, r6, asl #22	@ j, D.49958,
	movw	r1, #:lower16:.LC63	@,
	movt	r1, #:upper16:.LC63	@,
	mov	r6, r3, lsr #22	@ j, j,
	mov	r0, #26	@,
	add	ip, r6, r6, asl #1	@, tmp216, j, j,
	mov	r8, ip, asl #5	@ tmp217, tmp216,
.L705:
	add	lr, r8, r5	@ tmp230, tmp229, pSmInstArray
	ldr	r2, [lr, #208]	@, <variable>.PhyAddr
	ldr	r3, [lr, #216]	@, <variable>.Length
	bl	dprint_vfmw	@
	add	r2, r8, #208	@ tmp235, tmp229,
	add	r1, r5, r2	@, pSmInstArray, tmp235
	mov	r0, r4	@, SmID
	bl	ReleaseRawStreamData	@
	add	r0, r6, #1	@ D.49958, j,
	cmp	r7, sl	@ i, DelNum
	mov	r6, r0, asl #22	@ j, D.49958,
	mov	r6, r6, lsr #22	@ j, j,
	bcc	.L694	@,
.L703:
	movw	r1, #:lower16:98520	@ tmp184,
	movt	r1, #:upper16:98520	@ tmp184,
	mov	r0, #0	@ D.49932,
	ldr	ip, [r5, r1]	@ <variable>.RawPacketArray.History, <variable>.RawPacketArray.History
	add	sl, sl, ip	@ D.49960, DelNum, <variable>.RawPacketArray.History
	str	sl, [r5, r1]	@ D.49960, <variable>.RawPacketArray.History
	cmp	sl, #1024	@ D.49960,
	subge	sl, sl, #1024	@ tmp190, D.49960,
	strge	sl, [r5, r1]	@ tmp190, <variable>.RawPacketArray.History
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	.fnend
	.size	DeleteRawPacketInBuffer, .-DeleteRawPacketInBuffer
	.align	2
	.global	CutStreamWithSCD
	.type	CutStreamWithSCD, %function
CutStreamWithSCD:
	.fnstart
.LFB1585:
	@ args = 0, pretend = 0, frame = 192
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
	adds	r7, r0, #208	@ pRawStreamArray, pScdInstance,
	mov	r3, #0	@ tmp150,
	mov	r4, r0	@ pScdInstance, pScdInstance
	str	r3, [fp, #-56]	@ tmp150, SegBufSize
	mov	sl, r1	@ ScdId, ScdId
	ldr	r6, [r0, #56]	@ StdType, <variable>.Config.VidStd
	ldr	r8, [r0, #88]	@ D.51380, <variable>.Config.ScdLowdlyEnable
	bne	.L729	@,
.L709:
	mvn	r5, #0	@ Ret,
.L716:
	mov	r0, r5	@, Ret
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L729:
	add	r5, r0, #98304	@ pStreamSegArray, pScdInstance,
	add	r5, r5, #232	@ pStreamSegArray, pStreamSegArray,
	cmp	r5, r3	@ pStreamSegArray,
	beq	.L709	@,
	add	lr, r0, #190464	@, pScdInstance,
	mov	r1, #12	@,
	add	r0, lr, #288	@,,
	str	r3, [fp, #-52]	@ tmp150, FreeSegBufAddr
	str	r3, [fp, #-48]	@ tmp150, SegStreamSize
	bl	__memzero	@
	movw	r3, #:lower16:98516	@ tmp156,
	movw	ip, #:lower16:98512	@ tmp157,
	movt	r3, #:upper16:98516	@ tmp156,
	movt	ip, #:upper16:98512	@ tmp157,
	mov	r0, #26	@,
	ldr	r1, [r4, ip]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	ldr	r9, [r4, r3]	@ <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Tail
	subs	r9, r9, r1	@ StreamNum, <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Head
	movw	r1, #:lower16:.LC121	@,
	addmi	r9, r9, #1024	@ StreamNum, StreamNum,
	movt	r1, #:upper16:.LC121	@,
	mov	r2, r9	@, StreamNum
	bl	dprint_vfmw	@
	movw	r2, #:lower16:98532	@ tmp161,
	movw	r0, #:lower16:98524	@ tmp162,
	movt	r2, #:upper16:98532	@ tmp161,
	movt	r0, #:upper16:98524	@ tmp162,
	ldr	ip, [r4, r2]	@ <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.RawTotalSize
	ldr	r3, [r4, r0]	@ <variable>.RawPacketArray.FirstPacketOffset, <variable>.RawPacketArray.FirstPacketOffset
	subs	ip, ip, r3	@ RawStreamSize, <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.FirstPacketOffset
	bmi	.L709	@,
	mov	r2, ip	@, RawStreamSize
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC125	@,
	movt	r1, #:upper16:.LC125	@,
	str	ip, [fp, #-224]	@,
	bl	dprint_vfmw	@
	cmp	r9, #0	@ StreamNum,
	ldr	ip, [fp, #-224]	@,
	bgt	.L730	@,
.L712:
	mvn	r5, #4	@ Ret,
	b	.L716	@
.L730:
	cmp	ip, #3	@ RawStreamSize,
	ble	.L712	@,
	movw	r3, #:lower16:190708	@ tmp165,
	movw	r1, #:lower16:190704	@ tmp166,
	movt	r3, #:upper16:190708	@ tmp165,
	movt	r1, #:upper16:190704	@ tmp166,
	ldr	r9, [r4, r3]	@ <variable>.StreamSegArray.Tail, <variable>.StreamSegArray.Tail
	ldr	r2, [r4, r1]	@ <variable>.StreamSegArray.Head, <variable>.StreamSegArray.Head
	movw	r1, #:lower16:.LC122	@,
	movt	r1, #:upper16:.LC122	@,
	str	ip, [fp, #-224]	@,
	subs	r0, r9, r2	@ StreamNum.2854, <variable>.StreamSegArray.Tail, <variable>.StreamSegArray.Head
	addmi	r0, r0, #1152	@ StreamNum.2854, StreamNum.2854,
	rsb	r9, r0, #1152	@ StreamNum.561, StreamNum.2854,
	mov	r0, #26	@,
	mov	r2, r9	@, StreamNum.561
	bl	dprint_vfmw	@
	cmp	r9, #288	@ StreamNum.561,
	bgt	.L731	@,
.L714:
	mvn	r5, #5	@ Ret,
	b	.L716	@
.L731:
	mov	r0, r5	@, pStreamSegArray
	sub	r1, fp, #52	@,,
	sub	r2, fp, #48	@,,
	bl	GetFreeSegBuf	@
	ldr	r1, [fp, #-48]	@ SegStreamSize, SegStreamSize
	ldr	r2, [fp, #-52]	@ FreeSegBufAddr, FreeSegBufAddr
	mov	r0, #26	@,
	sub	lr, r1, #79	@ SegStreamSize.566, SegStreamSize,
	movw	r1, #:lower16:.LC123	@,
	add	r5, r2, #3	@ tmp172, FreeSegBufAddr,
	movt	r1, #:upper16:.LC123	@,
	mov	r2, lr	@, SegStreamSize.566
	bic	r3, r5, #3	@ tmp174, tmp172,
	str	lr, [fp, #-48]	@ SegStreamSize.566, SegStreamSize
	str	r3, [fp, #-52]	@ tmp174, FreeSegBufAddr
	bl	dprint_vfmw	@
	movw	ip, #:lower16:190724	@ tmp177,
	movt	ip, #:upper16:190724	@ tmp177,
	ldr	r5, [fp, #-48]	@ SegStreamSize, SegStreamSize
	ldr	r3, [r4, ip]	@ D.51418, <variable>.StreamSegArray.SegBufSize
	cmp	r5, r3, asr #3	@ SegStreamSize, D.51418,
	ble	.L714	@,
	movw	r5, #:lower16:190864	@ tmp182,
	movw	lr, #:lower16:190720	@ tmp180,
	movt	r5, #:upper16:190864	@ tmp182,
	movt	lr, #:upper16:190720	@ tmp180,
	mov	r1, sl	@, ScdId
	ldr	r0, [r4, r5]	@, <variable>.InstID
	str	r3, [fp, #-56]	@ D.51418,
	ldr	ip, [r4, lr]	@, <variable>.StreamSegArray.SegBufPhyAddr
	str	ip, [fp, #-184]	@, %sfp
	bl	SM_CfgBuf	@
	ldr	ip, [fp, #-224]	@,
	subs	r5, r0, #0	@ Ret,
	bne	.L732	@,
	movw	r1, #:lower16:204756	@ tmp188,
	movt	r1, #:upper16:204756	@ tmp188,
	movw	lr, #:lower16:190768	@ tmp194,
	movt	lr, #:upper16:190768	@ tmp194,
	ldr	r2, [r4, r1]	@ <variable>.UpMsgStepNum, <variable>.UpMsgStepNum
	movw	r0, #:lower16:190772	@ tmp196,
	movt	r0, #:upper16:190772	@ tmp196,
	movw	r1, #:lower16:190780	@ tmp198,
	movt	r1, #:upper16:190780	@ tmp198,
	mov	r3, r2, asl #2	@, <variable>.UpMsgStepNum,
	str	r3, [fp, #-176]	@, %sfp
	movw	r3, #:lower16:190796	@,
	movt	r3, #:upper16:190796	@,
	str	r3, [fp, #-208]	@, %sfp
	mul	r3, r2, r9	@, <variable>.UpMsgStepNum, StreamNum.561
	ldr	r2, [fp, #-176]	@, %sfp
	mul	r2, r9, r2	@, StreamNum.561,
	str	r3, [fp, #-204]	@, %sfp
	movw	r3, #:lower16:190808	@ tmp212,
	movt	r3, #:upper16:190808	@ tmp212,
	str	r2, [fp, #-188]	@, %sfp
	movw	r2, #:lower16:190820	@,
	movt	r2, #:upper16:190820	@,
	str	r2, [fp, #-176]	@, %sfp
	movw	r2, #:lower16:190832	@,
	movt	r2, #:upper16:190832	@,
	str	r2, [fp, #-180]	@, %sfp
	cmp	r6, #6	@ StdType,
	movne	r2, #0	@,
	moveq	r2, #1	@,
	ldr	lr, [r4, lr]	@, <variable>.BufAddrCfg.DownMsgPhyAddr
	cmp	r6, #1	@ StdType,
	cmpne	r6, #15	@, StdType,
	str	r2, [fp, #-220]	@, %sfp
	moveq	r6, r5	@ prephitmp.2833, Ret
	str	lr, [fp, #-192]	@, %sfp
	ldr	r0, [r4, r0]	@, <variable>.BufAddrCfg.pDownMsgVirAddr
	ldr	lr, [fp, #-208]	@, %sfp
	str	r0, [fp, #-196]	@, %sfp
	ldr	r1, [r4, r1]	@, <variable>.BufAddrCfg.UpMsgPhyAddr
	ldr	r0, [fp, #-176]	@, %sfp
	str	r1, [fp, #-200]	@, %sfp
	movw	r1, #:lower16:190872	@ tmp184,
	ldr	r2, [r4, lr]	@, <variable>.BufAddrCfg.DspSpsMsgMemAddr
	movt	r1, #:upper16:190872	@ tmp184,
	str	r2, [fp, #-208]	@, %sfp
	ldr	r3, [r4, r3]	@, <variable>.BufAddrCfg.DspPpsMsgMemAddr
	ldr	r2, [fp, #-180]	@, %sfp
	str	r3, [fp, #-212]	@, %sfp
	movw	r3, #:lower16:190792	@ tmp186,
	ldr	lr, [r4, r0]	@, <variable>.BufAddrCfg.DvmMemAddr
	movt	r3, #:upper16:190792	@ tmp186,
	str	lr, [fp, #-216]	@, %sfp
	ldr	lr, [fp, #-52]	@, FreeSegBufAddr
	ldr	r0, [r4, r2]	@, <variable>.BufAddrCfg.DspSedTopMemAddr
	ldr	r2, [fp, #-56]	@, SegBufSize
	str	lr, [fp, #-176]	@, %sfp
	ldr	lr, [fp, #-188]	@, %sfp
	str	r0, [fp, #-180]	@, %sfp
	movw	r0, #:lower16:190788	@ tmp187,
	movt	r0, #:upper16:190788	@ tmp187,
	str	r2, [fp, #-232]	@, %sfp
	mov	r2, #1	@ tmp185,
	str	lr, [r4, r0]	@, <variable>.BufAddrCfg.UpMsgSize
	ldr	lr, [fp, #-232]	@, %sfp
	ldr	r0, [fp, #-184]	@, %sfp
	add	r0, r0, lr	@,,
	str	r0, [fp, #-188]	@, %sfp
	str	r2, [r4, r1]	@ tmp185, <variable>.CutingFlag
	str	r9, [r4, r3]	@ StreamNum.561, <variable>.BufAddrCfg.UpMsgNum
	ldr	lr, [fp, #-192]	@, %sfp
	ldr	r1, [fp, #-196]	@, %sfp
	ldr	r3, [fp, #-200]	@, %sfp
	ldr	r0, [fp, #-204]	@, %sfp
	str	lr, [fp, #-164]	@, ScdCtrlReg.DownMsgPhyAddr
	str	r1, [fp, #-160]	@, ScdCtrlReg.pDownMsgVirAddr
	ldr	lr, [fp, #-188]	@, %sfp
	ldr	r1, [fp, #-176]	@, %sfp
	str	r3, [fp, #-156]	@, ScdCtrlReg.UpMsgPhyAddr
	str	r0, [fp, #-148]	@, ScdCtrlReg.UpLen
	ldr	r3, [fp, #-208]	@, %sfp
	ldr	r0, [fp, #-212]	@, %sfp
	str	lr, [fp, #-140]	@, ScdCtrlReg.BufferLast
	str	r1, [fp, #-136]	@, ScdCtrlReg.BufferIni
	str	r3, [fp, #-124]	@, ScdCtrlReg.DspSpsMsgMemAddr
	str	r0, [fp, #-112]	@, ScdCtrlReg.DspPpsMsgMemAddr
	ldr	lr, [fp, #-216]	@, %sfp
	ldr	r1, [fp, #-180]	@, %sfp
	ldr	r3, [fp, #-220]	@, %sfp
	ldr	r0, [fp, #-184]	@, %sfp
	str	r8, [fp, #-64]	@ D.51380, ScdCtrlReg.ScdLowdlyEnable
	str	lr, [fp, #-100]	@, ScdCtrlReg.DvmMemAddr
	str	r1, [fp, #-88]	@, ScdCtrlReg.DspSedTopMemAddr
	str	r3, [fp, #-60]	@, ScdCtrlReg.reg_avs_flag
	strb	r2, [fp, #-166]	@ tmp185, ScdCtrlReg.ScdStart
	str	r0, [fp, #-144]	@, ScdCtrlReg.BufferFirst
	strb	r2, [fp, #-168]	@ tmp185, ScdCtrlReg.ScdIntMask
	beq	.L721	@,
	cmp	r6, #6	@ StdType,
	beq	.L728	@,
	sub	r5, r6, #2	@ tmp228, StdType,
	cmp	r5, #1	@ tmp228,
	bls	.L728	@,
.L721:
	mov	r0, #0	@ tmp231,
	strb	r0, [fp, #-167]	@ tmp231, ScdCtrlReg.SliceCheckFlag
.L719:
	movw	r1, #:lower16:190772	@ tmp237,
	movw	r3, #:lower16:190768	@ tmp239,
	movt	r1, #:upper16:190772	@ tmp237,
	movt	r3, #:upper16:190768	@ tmp239,
	add	r2, r4, #190464	@, pScdInstance,
	sub	r0, fp, #168	@,,
	ldr	r5, [r4, r3]	@ <variable>.BufAddrCfg.DownMsgPhyAddr, <variable>.BufAddrCfg.DownMsgPhyAddr
	mov	r3, r7	@, pRawStreamArray
	ldr	lr, [r4, r1]	@ <variable>.BufAddrCfg.pDownMsgVirAddr, <variable>.BufAddrCfg.pDownMsgVirAddr
	add	r1, r2, #288	@,,
	ldr	r2, [fp, #-48]	@, SegStreamSize
	mov	r7, #1	@ tmp233,
	str	r5, [sp, #4]	@ <variable>.BufAddrCfg.DownMsgPhyAddr,
	str	ip, [fp, #-224]	@,
	str	r6, [fp, #-132]	@ prephitmp.2833, ScdCtrlReg.ScdProtocol
	str	lr, [sp, #0]	@ <variable>.BufAddrCfg.pDownMsgVirAddr,
	str	sl, [sp, #8]	@ ScdId,
	str	r7, [fp, #-128]	@ tmp233, ScdCtrlReg.ScdIniClr
	bl	ScdDriver	@
	ldr	ip, [fp, #-224]	@,
	subs	r5, r0, #0	@ Ret,
	bne	.L716	@,
	ldr	r6, [fp, #-48]	@ SegStreamSize, SegStreamSize
	movw	lr, #:lower16:204728	@ tmp243,
	movw	r0, #:lower16:204732	@ tmp244,
	movt	lr, #:upper16:204728	@ tmp243,
	movt	r0, #:upper16:204732	@ tmp244,
	cmp	r6, ip	@ SegStreamSize, RawStreamSize
	str	ip, [r4, lr]	@ RawStreamSize, <variable>.PrevCfgRawSize
	str	r6, [r4, r0]	@ SegStreamSize, <variable>.PrevCfgSegSize
	mov	r6, #0	@ tmp251,
	strb	r7, [r4, #5]	@ tmp233, <variable>.IsWaitSCD
	strgeb	r7, [r4, #2]	@ tmp233, <variable>.LastCfgAllRawFlag
	strltb	r5, [r4, #2]	@ Ret, <variable>.LastCfgAllRawFlag
	strb	r6, [r4, #4]	@ tmp251, <variable>.FillNewRawFlag
	bl	OSAL_GetTimeInMs	@
	movw	ip, #:lower16:204752	@ tmp253,
	movt	ip, #:upper16:204752	@ tmp253,
	strb	r6, [r4, #3]	@ tmp251, <variable>.InsertNewSegFlag
	str	r0, [r4, ip]	@, <variable>.LastSCDStartTime
	b	.L716	@
.L732:
	movw	r1, #:lower16:.LC124	@,
	mov	r2, r5	@, Ret
	movt	r1, #:upper16:.LC124	@,
	mov	r0, #26	@,
	bl	dprint_vfmw	@
	b	.L716	@
.L728:
	strb	r2, [fp, #-167]	@ tmp185, ScdCtrlReg.SliceCheckFlag
	b	.L719	@
	.fnend
	.size	CutStreamWithSCD, .-CutStreamWithSCD
	.align	2
	.global	SM_CloseSCDDrv
	.type	SM_CloseSCDDrv, %function
SM_CloseSCDDrv:
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
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r3, #:lower16:.LANCHOR0	@ tmp278,
	movt	r3, #:upper16:.LANCHOR0	@ tmp278,
	mov	r5, r0	@ ScdId, ScdId
	ldr	r1, [r3, #40]	@ pSmInstArray.2880, <variable>.pSmInstArray
	cmp	r1, #0	@ pSmInstArray.2880,
	beq	.L734	@,
	movw	r2, #:lower16:190880	@ tmp152,
	movt	r2, #:upper16:190880	@ tmp152,
	ldr	r0, [r1, r2]	@ <variable>.Mode, <variable>.Mode
	cmp	r0, #0	@ <variable>.Mode,
	bne	.L751	@,
.L734:
	ldr	r1, [r3, #88]	@ pSmInstArray.2883, <variable>.pSmInstArray
	cmp	r1, #0	@ pSmInstArray.2883,
	beq	.L735	@,
	movw	r2, #:lower16:190880	@ tmp159,
	movt	r2, #:upper16:190880	@ tmp159,
	ldr	lr, [r1, r2]	@ <variable>.Mode, <variable>.Mode
	cmp	lr, #0	@ <variable>.Mode,
	bne	.L752	@,
.L735:
	ldr	r1, [r3, #136]	@ pSmInstArray.2886, <variable>.pSmInstArray
	cmp	r1, #0	@ pSmInstArray.2886,
	beq	.L736	@,
	movw	r2, #:lower16:190880	@ tmp166,
	movt	r2, #:upper16:190880	@ tmp166,
	ldr	ip, [r1, r2]	@ <variable>.Mode, <variable>.Mode
	cmp	ip, #0	@ <variable>.Mode,
	bne	.L753	@,
.L736:
	ldr	r1, [r3, #184]	@ pSmInstArray.2889, <variable>.pSmInstArray
	cmp	r1, #0	@ pSmInstArray.2889,
	beq	.L737	@,
	movw	r2, #:lower16:190880	@ tmp173,
	movt	r2, #:upper16:190880	@ tmp173,
	ldr	r4, [r1, r2]	@ <variable>.Mode, <variable>.Mode
	cmp	r4, #0	@ <variable>.Mode,
	bne	.L754	@,
.L737:
	ldr	r1, [r3, #232]	@ pSmInstArray.2892, <variable>.pSmInstArray
	cmp	r1, #0	@ pSmInstArray.2892,
	beq	.L738	@,
	movw	r2, #:lower16:190880	@ tmp180,
	movt	r2, #:upper16:190880	@ tmp180,
	ldr	r0, [r1, r2]	@ <variable>.Mode, <variable>.Mode
	cmp	r0, #0	@ <variable>.Mode,
	bne	.L755	@,
.L738:
	ldr	r1, [r3, #280]	@ pSmInstArray.2895, <variable>.pSmInstArray
	cmp	r1, #0	@ pSmInstArray.2895,
	beq	.L739	@,
	movw	r2, #:lower16:190880	@ tmp187,
	movt	r2, #:upper16:190880	@ tmp187,
	ldr	lr, [r1, r2]	@ <variable>.Mode, <variable>.Mode
	cmp	lr, #0	@ <variable>.Mode,
	bne	.L756	@,
.L739:
	ldr	r1, [r3, #328]	@ pSmInstArray.2898, <variable>.pSmInstArray
	cmp	r1, #0	@ pSmInstArray.2898,
	beq	.L740	@,
	movw	r2, #:lower16:190880	@ tmp194,
	movt	r2, #:upper16:190880	@ tmp194,
	ldr	ip, [r1, r2]	@ <variable>.Mode, <variable>.Mode
	cmp	ip, #0	@ <variable>.Mode,
	bne	.L757	@,
.L740:
	ldr	r1, [r3, #376]	@ pSmInstArray.2901, <variable>.pSmInstArray
	cmp	r1, #0	@ pSmInstArray.2901,
	beq	.L741	@,
	movw	r2, #:lower16:190880	@ tmp201,
	movt	r2, #:upper16:190880	@ tmp201,
	ldr	r4, [r1, r2]	@ <variable>.Mode, <variable>.Mode
	cmp	r4, #0	@ <variable>.Mode,
	bne	.L758	@,
.L741:
	ldr	r1, [r3, #424]	@ pSmInstArray.2904, <variable>.pSmInstArray
	cmp	r1, #0	@ pSmInstArray.2904,
	beq	.L742	@,
	movw	r2, #:lower16:190880	@ tmp208,
	movt	r2, #:upper16:190880	@ tmp208,
	ldr	r0, [r1, r2]	@ <variable>.Mode, <variable>.Mode
	cmp	r0, #0	@ <variable>.Mode,
	bne	.L759	@,
.L742:
	ldr	r1, [r3, #472]	@ pSmInstArray.2907, <variable>.pSmInstArray
	cmp	r1, #0	@ pSmInstArray.2907,
	beq	.L743	@,
	movw	r2, #:lower16:190880	@ tmp215,
	movt	r2, #:upper16:190880	@ tmp215,
	ldr	lr, [r1, r2]	@ <variable>.Mode, <variable>.Mode
	cmp	lr, #0	@ <variable>.Mode,
	bne	.L760	@,
.L743:
	ldr	r1, [r3, #520]	@ pSmInstArray.2910, <variable>.pSmInstArray
	cmp	r1, #0	@ pSmInstArray.2910,
	beq	.L744	@,
	movw	r2, #:lower16:190880	@ tmp222,
	movt	r2, #:upper16:190880	@ tmp222,
	ldr	ip, [r1, r2]	@ <variable>.Mode, <variable>.Mode
	cmp	ip, #0	@ <variable>.Mode,
	bne	.L761	@,
.L744:
	ldr	r1, [r3, #568]	@ pSmInstArray.2913, <variable>.pSmInstArray
	cmp	r1, #0	@ pSmInstArray.2913,
	beq	.L745	@,
	movw	r2, #:lower16:190880	@ tmp229,
	movt	r2, #:upper16:190880	@ tmp229,
	ldr	r4, [r1, r2]	@ <variable>.Mode, <variable>.Mode
	cmp	r4, #0	@ <variable>.Mode,
	bne	.L762	@,
.L745:
	ldr	r1, [r3, #616]	@ pSmInstArray.2916, <variable>.pSmInstArray
	cmp	r1, #0	@ pSmInstArray.2916,
	beq	.L746	@,
	movw	r2, #:lower16:190880	@ tmp236,
	movt	r2, #:upper16:190880	@ tmp236,
	ldr	r0, [r1, r2]	@ <variable>.Mode, <variable>.Mode
	cmp	r0, #0	@ <variable>.Mode,
	bne	.L763	@,
.L746:
	ldr	r1, [r3, #664]	@ pSmInstArray.2919, <variable>.pSmInstArray
	cmp	r1, #0	@ pSmInstArray.2919,
	beq	.L747	@,
	movw	r2, #:lower16:190880	@ tmp243,
	movt	r2, #:upper16:190880	@ tmp243,
	ldr	lr, [r1, r2]	@ <variable>.Mode, <variable>.Mode
	cmp	lr, #0	@ <variable>.Mode,
	bne	.L764	@,
.L747:
	ldr	r1, [r3, #712]	@ pSmInstArray.2922, <variable>.pSmInstArray
	cmp	r1, #0	@ pSmInstArray.2922,
	beq	.L748	@,
	movw	r2, #:lower16:190880	@ tmp250,
	movt	r2, #:upper16:190880	@ tmp250,
	ldr	ip, [r1, r2]	@ <variable>.Mode, <variable>.Mode
	cmp	ip, #0	@ <variable>.Mode,
	bne	.L765	@,
.L748:
	ldr	r2, [r3, #760]	@ pSmInstArray, <variable>.pSmInstArray
	cmp	r2, #0	@ pSmInstArray,
	beq	.L749	@,
	movw	r3, #:lower16:190880	@ tmp257,
	movt	r3, #:upper16:190880	@ tmp257,
	ldr	r1, [r2, r3]	@ <variable>.Mode, <variable>.Mode
	cmp	r1, #0	@ <variable>.Mode,
	bne	.L766	@,
.L749:
	mov	r0, r5	@, ScdId
	mov	r4, #0	@ tmp269,
	bl	ResetSCD	@
	movw	r1, #:lower16:g_VfmwGlobalStat	@ tmp263,
	movt	r1, #:upper16:g_VfmwGlobalStat	@ tmp263,
	mov	r2, #84	@ tmp266,
	add	r0, r5, r5, asl #1	@, tmp274, ScdId, ScdId,
	ldr	r3, .L767	@ tmp271,
	mla	r5, r2, r5, r1	@ tmp267, tmp266, ScdId, tmp263
	add	r0, r3, r0, asl #5	@,, tmp271, tmp274,
	mov	r1, #96	@,
	str	r4, [r5, #76]	@ tmp269, <variable>.u32SaScdLoad
	bl	__memzero	@
	mov	r0, r4	@, tmp269
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L766:
	movw	ip, #:lower16:190868	@ tmp259,
	movt	ip, #:upper16:190868	@ tmp259,
	ldr	r4, [r2, ip]	@ <variable>.ScdID, <variable>.ScdID
	cmp	r4, #0	@ <variable>.ScdID,
	movle	r4, #0	@ tmp262,
	strle	r4, [r2, r3]	@ tmp262, <variable>.Mode
	b	.L749	@
.L765:
	movw	r0, #:lower16:190868	@ tmp252,
	movt	r0, #:upper16:190868	@ tmp252,
	ldr	lr, [r1, r0]	@ <variable>.ScdID, <variable>.ScdID
	cmp	lr, #0	@ <variable>.ScdID,
	movle	lr, #0	@ tmp255,
	strle	lr, [r1, r2]	@ tmp255, <variable>.Mode
	b	.L748	@
.L764:
	movw	r4, #:lower16:190868	@ tmp245,
	movt	r4, #:upper16:190868	@ tmp245,
	ldr	r0, [r1, r4]	@ <variable>.ScdID, <variable>.ScdID
	cmp	r0, #0	@ <variable>.ScdID,
	movle	r0, #0	@ tmp248,
	strle	r0, [r1, r2]	@ tmp248, <variable>.Mode
	b	.L747	@
.L763:
	movw	ip, #:lower16:190868	@ tmp238,
	movt	ip, #:upper16:190868	@ tmp238,
	ldr	r4, [r1, ip]	@ <variable>.ScdID, <variable>.ScdID
	cmp	r4, #0	@ <variable>.ScdID,
	movle	r4, #0	@ tmp241,
	strle	r4, [r1, r2]	@ tmp241, <variable>.Mode
	b	.L746	@
.L762:
	movw	lr, #:lower16:190868	@ tmp231,
	movt	lr, #:upper16:190868	@ tmp231,
	ldr	ip, [r1, lr]	@ <variable>.ScdID, <variable>.ScdID
	cmp	ip, #0	@ <variable>.ScdID,
	movle	ip, #0	@ tmp234,
	strle	ip, [r1, r2]	@ tmp234, <variable>.Mode
	b	.L745	@
.L761:
	movw	r0, #:lower16:190868	@ tmp224,
	movt	r0, #:upper16:190868	@ tmp224,
	ldr	lr, [r1, r0]	@ <variable>.ScdID, <variable>.ScdID
	cmp	lr, #0	@ <variable>.ScdID,
	movle	lr, #0	@ tmp227,
	strle	lr, [r1, r2]	@ tmp227, <variable>.Mode
	b	.L744	@
.L760:
	movw	r4, #:lower16:190868	@ tmp217,
	movt	r4, #:upper16:190868	@ tmp217,
	ldr	r0, [r1, r4]	@ <variable>.ScdID, <variable>.ScdID
	cmp	r0, #0	@ <variable>.ScdID,
	movle	r0, #0	@ tmp220,
	strle	r0, [r1, r2]	@ tmp220, <variable>.Mode
	b	.L743	@
.L759:
	movw	ip, #:lower16:190868	@ tmp210,
	movt	ip, #:upper16:190868	@ tmp210,
	ldr	r4, [r1, ip]	@ <variable>.ScdID, <variable>.ScdID
	cmp	r4, #0	@ <variable>.ScdID,
	movle	r4, #0	@ tmp213,
	strle	r4, [r1, r2]	@ tmp213, <variable>.Mode
	b	.L742	@
.L758:
	movw	lr, #:lower16:190868	@ tmp203,
	movt	lr, #:upper16:190868	@ tmp203,
	ldr	ip, [r1, lr]	@ <variable>.ScdID, <variable>.ScdID
	cmp	ip, #0	@ <variable>.ScdID,
	movle	ip, #0	@ tmp206,
	strle	ip, [r1, r2]	@ tmp206, <variable>.Mode
	b	.L741	@
.L757:
	movw	r0, #:lower16:190868	@ tmp196,
	movt	r0, #:upper16:190868	@ tmp196,
	ldr	lr, [r1, r0]	@ <variable>.ScdID, <variable>.ScdID
	cmp	lr, #0	@ <variable>.ScdID,
	movle	lr, #0	@ tmp199,
	strle	lr, [r1, r2]	@ tmp199, <variable>.Mode
	b	.L740	@
.L756:
	movw	r4, #:lower16:190868	@ tmp189,
	movt	r4, #:upper16:190868	@ tmp189,
	ldr	r0, [r1, r4]	@ <variable>.ScdID, <variable>.ScdID
	cmp	r0, #0	@ <variable>.ScdID,
	movle	r0, #0	@ tmp192,
	strle	r0, [r1, r2]	@ tmp192, <variable>.Mode
	b	.L739	@
.L755:
	movw	ip, #:lower16:190868	@ tmp182,
	movt	ip, #:upper16:190868	@ tmp182,
	ldr	r4, [r1, ip]	@ <variable>.ScdID, <variable>.ScdID
	cmp	r4, #0	@ <variable>.ScdID,
	movle	r4, #0	@ tmp185,
	strle	r4, [r1, r2]	@ tmp185, <variable>.Mode
	b	.L738	@
.L754:
	movw	lr, #:lower16:190868	@ tmp175,
	movt	lr, #:upper16:190868	@ tmp175,
	ldr	ip, [r1, lr]	@ <variable>.ScdID, <variable>.ScdID
	cmp	ip, #0	@ <variable>.ScdID,
	movle	ip, #0	@ tmp178,
	strle	ip, [r1, r2]	@ tmp178, <variable>.Mode
	b	.L737	@
.L753:
	movw	r0, #:lower16:190868	@ tmp168,
	movt	r0, #:upper16:190868	@ tmp168,
	ldr	lr, [r1, r0]	@ <variable>.ScdID, <variable>.ScdID
	cmp	lr, #0	@ <variable>.ScdID,
	movle	lr, #0	@ tmp171,
	strle	lr, [r1, r2]	@ tmp171, <variable>.Mode
	b	.L736	@
.L752:
	movw	r4, #:lower16:190868	@ tmp161,
	movt	r4, #:upper16:190868	@ tmp161,
	ldr	r0, [r1, r4]	@ <variable>.ScdID, <variable>.ScdID
	cmp	r0, #0	@ <variable>.ScdID,
	movle	r0, #0	@ tmp164,
	strle	r0, [r1, r2]	@ tmp164, <variable>.Mode
	b	.L735	@
.L751:
	movw	ip, #:lower16:190868	@ tmp154,
	movt	ip, #:upper16:190868	@ tmp154,
	ldr	r4, [r1, ip]	@ <variable>.ScdID, <variable>.ScdID
	cmp	r4, #0	@ <variable>.ScdID,
	movle	r4, #0	@ tmp157,
	strle	r4, [r1, r2]	@ tmp157, <variable>.Mode
	b	.L734	@
.L768:
	.align	2
.L767:
	.word	.LANCHOR0+772
	.fnend
	.size	SM_CloseSCDDrv, .-SM_CloseSCDDrv
	.align	2
	.global	SM_InstInit
	.type	SM_InstInit, %function
SM_InstInit:
	.fnstart
.LFB1569:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp133,
	movt	r4, #:upper16:.LANCHOR0	@ tmp133,
	mov	r1, #48	@,
	mov	r0, r4	@, tmp133
	bl	__memzero	@
	add	r0, r4, #48	@, tmp133,
	mov	r1, #48	@,
	bl	__memzero	@
	add	r0, r4, #96	@, tmp133,
	mov	r1, #48	@,
	bl	__memzero	@
	add	r0, r4, #144	@, tmp133,
	mov	r1, #48	@,
	bl	__memzero	@
	add	r0, r4, #192	@, tmp133,
	mov	r1, #48	@,
	bl	__memzero	@
	add	r0, r4, #240	@, tmp133,
	mov	r1, #48	@,
	bl	__memzero	@
	add	r0, r4, #288	@, tmp133,
	mov	r1, #48	@,
	bl	__memzero	@
	add	r0, r4, #336	@, tmp133,
	mov	r1, #48	@,
	bl	__memzero	@
	add	r0, r4, #384	@, tmp133,
	mov	r1, #48	@,
	bl	__memzero	@
	add	r0, r4, #432	@, tmp133,
	mov	r1, #48	@,
	bl	__memzero	@
	add	r0, r4, #480	@, tmp133,
	mov	r1, #48	@,
	bl	__memzero	@
	add	r0, r4, #528	@, tmp133,
	mov	r1, #48	@,
	bl	__memzero	@
	add	r0, r4, #576	@, tmp133,
	mov	r1, #48	@,
	bl	__memzero	@
	add	r0, r4, #624	@, tmp133,
	mov	r1, #48	@,
	bl	__memzero	@
	add	r0, r4, #672	@, tmp133,
	mov	r1, #48	@,
	bl	__memzero	@
	add	r0, r4, #720	@, tmp133,
	mov	r1, #48	@,
	bl	__memzero	@
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	SM_InstInit, .-SM_InstInit
	.align	2
	.global	SM_ClearInst
	.type	SM_ClearInst, %function
SM_ClearInst:
	.fnstart
.LFB1566:
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
	cmp	r0, #15	@ SmID,
	mvnhi	r0, #0	@ D.50581,
	ldmhifd	sp, {r4, r5, fp, sp, pc}	@
	add	r0, r0, r0, asl #1	@, tmp140, SmID, SmID,
	movw	r5, #:lower16:.LANCHOR0	@ tmp136,
	movt	r5, #:upper16:.LANCHOR0	@ tmp136,
	movw	r1, #:lower16:204904	@,
	add	r4, r5, r0, asl #4	@, tmp142, tmp136, tmp140,
	movt	r1, #:upper16:204904	@,
	mvn	r5, #0	@,
	ldr	r0, [r4, #40]	@, <variable>.pSmInstArray
	bl	__memzero	@
	ldr	r2, [r4, #40]	@ <variable>.pSmInstArray, <variable>.pSmInstArray
	movw	r3, #:lower16:204720	@ tmp155,
	movt	r3, #:upper16:204720	@ tmp155,
	mvn	r4, #0	@ tmp156,
	mov	r0, #0	@ D.50581,
	strd	r4, [r2, r3]	@ tmp156, <variable>.pSmInstArray, tmp155
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	SM_ClearInst, .-SM_ClearInst
	.align	2
	.global	ResetStreamSegArray
	.type	ResetStreamSegArray, %function
ResetStreamSegArray:
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
	subs	r4, r0, #0	@ pStreamSegArray, pStreamSegArray
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	add	r0, r4, #8	@, pStreamSegArray,
	mov	r1, #92160	@,
	bl	__memzero	@
	movw	r0, #:lower16:92184	@ tmp142,
	movt	r0, #:upper16:92184	@ tmp142,
	movw	r1, #:lower16:92168	@ tmp135,
	movw	r3, #:lower16:92172	@ tmp137,
	movt	r1, #:upper16:92168	@ tmp135,
	ldr	r5, [r4, r0]	@ <variable>.SegBufPhyAddr, <variable>.SegBufPhyAddr
	movt	r3, #:upper16:92172	@ tmp137,
	movw	r0, #:lower16:92176	@ tmp139,
	movw	r2, #:lower16:92192	@ tmp141,
	movt	r0, #:upper16:92176	@ tmp139,
	movt	r2, #:upper16:92192	@ tmp141,
	movw	ip, #:lower16:92196	@ tmp144,
	movt	ip, #:upper16:92196	@ tmp144,
	str	r5, [r4, r2]	@ <variable>.SegBufPhyAddr, <variable>.SegBufReadAddr
	mov	r2, #0	@ tmp136,
	str	r5, [r4, ip]	@ <variable>.SegBufPhyAddr, <variable>.SegBufWriteAddr
	str	r2, [r4, r0]	@ tmp136, <variable>.History
	str	r2, [r4, r1]	@ tmp136, <variable>.Head
	str	r2, [r4, r3]	@ tmp136, <variable>.Tail
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	ResetStreamSegArray, .-ResetStreamSegArray
	.align	2
	.global	SM_CopyYuvToDnr
	.type	SM_CopyYuvToDnr, %function
SM_CopyYuvToDnr:
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
	add	r0, r0, r0, asl #1	@, tmp152, SmID, SmID,
	movw	r1, #:lower16:.LANCHOR0	@ tmp148,
	movt	r1, #:upper16:.LANCHOR0	@ tmp148,
	add	r3, r1, r0, asl #4	@, tmp154, tmp148, tmp152,
	ldr	r4, [r3, #40]	@ pSmInstArray, <variable>.pSmInstArray
	cmp	r4, #0	@ pSmInstArray,
	mvneq	r0, #0	@ D.51175,
	ldmeqfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	movw	r3, #:lower16:98512	@ tmp156,
	movw	ip, #:lower16:98516	@ tmp157,
	movt	r3, #:upper16:98512	@ tmp156,
	movt	ip, #:upper16:98516	@ tmp157,
	ldr	r5, [r4, r3]	@ D.51182, <variable>.RawPacketArray.Head
	ldr	r2, [r4, ip]	@ <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Tail
	cmp	r2, r5	@ <variable>.RawPacketArray.Tail, D.51182
	mvneq	r0, #3	@ D.51175,
	ldmeqfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	add	r7, r4, #98304	@, pSmInstArray,
	mov	r6, r5, asl #1	@ tmp221, D.51182,
	add	r0, r7, #232	@,,
	add	r7, r4, #208	@ pRawPacketArray, pSmInstArray,
	bl	ResetStreamSegArray	@
	add	r0, r6, r5	@ tmp164, tmp221, D.51182
	add	r1, r4, r0, asl #5	@, tmp166, pSmInstArray, tmp164,
	ldr	r3, [r1, #212]	@ pu32tmp, <variable>.VirAddr
	ldmia	r3, {r0, r2}	@ phole ldm
	sub	ip, r0, #32	@ tmp170, D.51190,
	cmp	ip, #1888	@ tmp170,
	movls	ip, #0	@, tmp172
	movhi	ip, #1	@, tmp172
	cmp	r2, #31	@ h,
	orrle	ip, ip, #1	@,, tmp175, tmp172
	cmp	ip, #0	@ tmp175,
	bne	.L782	@,
	cmp	r2, #1088	@ h,
	bgt	.L782	@,
	ldr	r1, [r1, #216]	@ D.51202, <variable>.Length
	cmp	r1, #1552	@ D.51202,
	blt	.L782	@,
	movw	lr, #:lower16:3133456	@ tmp184,
	movt	lr, #:upper16:3133456	@ tmp184,
	cmp	r1, lr	@ D.51202, tmp184
	bgt	.L782	@,
	mov	lr, #3	@ tmp186,
	movw	ip, #:lower16:190724	@ tmp188,
	mul	r0, lr, r0	@ tmp185, tmp186, D.51190
	movt	ip, #:upper16:190724	@ tmp188,
	ldr	lr, [r4, ip]	@ <variable>.StreamSegArray.SegBufSize, <variable>.StreamSegArray.SegBufSize
	sub	ip, lr, #262144	@ tmp189, <variable>.StreamSegArray.SegBufSize,
	mul	r2, r2, r0	@ tmp187, h, tmp185
	mov	r2, r2, asr #1	@ D.51207, tmp187,
	cmp	r2, ip	@ D.51207, tmp189
	bgt	.L782	@,
	add	r2, r2, #16	@ tmp191, D.51207,
	cmp	r1, r2	@ D.51202, tmp191
	blt	.L782	@,
	ldr	r2, [r3, #8]	@ tmp205,
	movw	lr, #1916	@ tmp207,
	ldr	r3, [r3, #12]	@ disp_h,
	sub	r0, r2, #4	@ tmp204, tmp205,
	cmp	r0, lr	@ tmp204, tmp207
	movls	ip, #0	@, tmp208
	movhi	ip, #1	@, tmp208
	cmp	r3, #3	@ disp_h,
	orrle	ip, ip, #1	@,, tmp211, tmp208
	cmp	ip, #0	@ tmp211,
	bne	.L785	@,
	cmp	r3, #1088	@ disp_h,
	ble	.L786	@,
.L785:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC128	@,
	movt	r1, #:upper16:.LC128	@,
	bl	dprint_vfmw	@
	mov	r1, #96	@ tmp215,
	mla	r4, r1, r5, r4	@ tmp216, tmp215, D.51182, pSmInstArray
	mov	r0, r7	@, pRawPacketArray
	ldr	r1, [r4, #216]	@, <variable>.Length
	bl	DeleteRawLen	@
	cmp	r0, #0	@,
	bne	.L788	@,
.L784:
	mov	r0, #0	@ D.51175,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L782:
	add	r5, r6, r5	@ tmp196, tmp221, D.51182
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC126	@,
	movt	r1, #:upper16:.LC126	@,
	add	r4, r4, r5, asl #5	@, tmp198, pSmInstArray, tmp196,
	bl	dprint_vfmw	@
	mov	r0, r7	@, pRawPacketArray
	ldr	r1, [r4, #216]	@, <variable>.Length
	bl	DeleteRawLen	@
	cmp	r0, #0	@,
	beq	.L784	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC127	@,
	movw	r2, #2642	@,
	movt	r1, #:upper16:.LC127	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.51175,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L786:
	mov	r0, r7	@, pRawPacketArray
	bl	DeleteRawLen	@
	mov	r0, #0	@ D.51175,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L788:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC127	@,
	movw	r2, #2653	@,
	movt	r1, #:upper16:.LC127	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.51175,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	SM_CopyYuvToDnr, .-SM_CopyYuvToDnr
	.align	2
	.global	SM_DoNextInstance
	.type	SM_DoNextInstance, %function
SM_DoNextInstance:
	.fnstart
.LFB1610:
	@ args = 0, pretend = 0, frame = 72
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
	cmp	r0, #0	@ ScdId
	mov	r3, #0	@ tmp156,
	str	r1, [fp, #-112]	@ pNextInstId, %sfp
	str	r3, [fp, #-52]	@ tmp156, SegBufAddr
	str	r3, [fp, #-48]	@ tmp156, SegBufTotalSize
	bne	.L810	@,
	movw	r9, #:lower16:.LANCHOR0	@ tmp269,
	movt	r9, #:upper16:.LANCHOR0	@ tmp269,
	ldr	r3, [r9, #768]	@ D.53053, s_eScdDrvSleepStage
	cmp	r3, #0	@ D.53053,
	bne	.L811	@,
	ldr	r5, [r9, #852]	@ NextInstId, <variable>.ThisInstID
	movw	r8, #:lower16:190872	@ tmp272,
	str	r3, [fp, #-88]	@ D.53053, %sfp
	movw	r7, #:lower16:204752	@ tmp273,
	ldr	r2, [fp, #-88]	@, %sfp
	movw	r6, #:lower16:190744	@,
	movw	r4, #:lower16:190740	@,
	movt	r6, #:upper16:190744	@,
	movt	r4, #:upper16:190740	@,
	str	r6, [fp, #-92]	@, %sfp
	movw	r1, #:lower16:190720	@,
	movw	r0, #:lower16:190724	@,
	movt	r1, #:upper16:190720	@,
	movt	r0, #:upper16:190724	@,
	movt	r8, #:upper16:190872	@ tmp272,
	movt	r7, #:upper16:204752	@ tmp273,
	str	r4, [fp, #-96]	@, %sfp
	mov	r6, r2	@ i,
	str	r1, [fp, #-100]	@, %sfp
	str	r0, [fp, #-104]	@, %sfp
	str	r2, [fp, #-108]	@, %sfp
	str	r9, [fp, #-80]	@ tmp269, %sfp
	b	.L807	@
.L795:
	cmp	r3, #11	@ D.53069,
	beq	.L794	@,
	cmp	r3, #14	@ D.53069,
	beq	.L794	@,
	cmp	r3, #4	@ D.53069,
	beq	.L794	@,
	cmp	r3, #12	@ D.53069,
	beq	.L794	@,
	cmp	r3, #10	@ D.53069,
	beq	.L794	@,
	cmp	r3, #13	@ D.53069,
	beq	.L794	@,
	cmp	r3, #18	@ D.53069,
	beq	.L794	@,
	cmp	r3, #17	@ D.53069,
	beq	.L812	@,
.L797:
	mov	r1, #0	@,
	mov	r0, r5	@, NextInstId
	bl	PrintScdRawState	@
	mov	r0, r5	@, NextInstId
	mov	r1, #0	@,
	bl	PrintScdSegState	@
	bl	OSAL_GetTimeInMs	@
	ldr	r2, [r4, r7]	@ <variable>.LastSCDStartTime, <variable>.LastSCDStartTime
	ldrsb	r3, [r4, #2]	@ <variable>.LastCfgAllRawFlag, <variable>.LastCfgAllRawFlag
	subs	r2, r0, r2	@ WaitTime, CurTimeInMs, <variable>.LastSCDStartTime
	strmi	r0, [r4, r7]	@ CurTimeInMs, <variable>.LastSCDStartTime
	movmi	r2, #200	@ WaitTime,
	cmp	r3, #1	@ <variable>.LastCfgAllRawFlag,
	beq	.L813	@,
	ldrsb	r9, [r4, #0]	@ <variable>.SegFullFlag, <variable>.SegFullFlag
	str	r0, [r4, r7]	@ CurTimeInMs, <variable>.LastSCDStartTime
	cmp	r9, #1	@ <variable>.SegFullFlag,
	movne	r3, #0	@ tmp232,
	strneb	r3, [r4, #1]	@ tmp232, <variable>.IsCounting
	beq	.L814	@,
.L803:
	mov	r0, r4	@, pSmInstArray
	mov	r1, #0	@,
	bl	CutStreamWithSCD	@
	cmn	r0, #6	@ Ret,
	moveq	r3, #1	@ tmp234,
	streqb	r3, [r4, #0]	@ tmp234, <variable>.SegFullFlag
	beq	.L794	@,
	cmp	r0, #0	@ Ret,
	mov	r3, #0	@ tmp236,
	strb	r3, [r4, #0]	@ tmp236, <variable>.SegFullFlag
	beq	.L815	@,
.L794:
	add	r6, r6, #1	@ i, i,
	cmp	r6, #16	@ i,
	beq	.L793	@,
.L807:
	add	r4, r5, #1	@ D.53058, NextInstId,
	ldr	r2, [fp, #-80]	@, %sfp
	sub	r1, fp, #76	@,,
	mov	ip, r4, asr #31	@ tmp163, D.53058,
	mov	sl, ip, lsr #28	@ tmp164, tmp163,
	add	r0, r4, sl	@ tmp165, D.53058, tmp164
	and	r5, r0, #15	@ tmp166, tmp165,
	rsb	r5, sl, r5	@ NextInstId, tmp164, tmp166
	mov	sl, r5, asl #1	@ tmp270, NextInstId,
	mov	r0, r5	@, NextInstId
	add	r3, sl, r5	@ tmp172, tmp270, NextInstId
	add	lr, r2, r3, asl #4	@, tmp174,, tmp172,
	ldr	r4, [lr, #40]	@ pSmInstArray, <variable>.pSmInstArray
	bl	SM_GetInfo	@
	ldrsb	ip, [fp, #-76]	@ stInstInfo.InstMode, stInstInfo.InstMode
	cmp	ip, #0	@ stInstInfo.InstMode,
	beq	.L794	@,
	ldr	r1, [r4, r8]	@ <variable>.CutingFlag, <variable>.CutingFlag
	cmp	r1, #1	@ <variable>.CutingFlag,
	beq	.L794	@,
	ldr	r3, [r4, #56]	@ D.53069, <variable>.Config.VidStd
	sub	lr, r3, #8	@ tmp180, D.53069,
	cmp	r3, #5	@ D.53069,
	cmpne	lr, #1	@, tmp180,
	bls	.L794	@,
	cmp	r3, #1	@ D.53069,
	bne	.L795	@,
	ldr	r3, [r4, #72]	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile, <variable>.Config.StdExt.Vc1Ext.IsAdvProfile
	cmp	r3, #0	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile,
	bne	.L797	@,
	b	.L794	@
.L811:
	cmp	r3, #1	@ D.53053,
	moveq	r3, #2	@ tmp161,
	mvneq	r0, #2	@ D.53051,
	streq	r3, [r9, #768]	@ tmp161, s_eScdDrvSleepStage
	beq	.L791	@,
.L793:
	mvn	r0, #2	@ D.53051,
.L791:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L813:
	ldrsb	r3, [r4, #4]	@ <variable>.FillNewRawFlag, <variable>.FillNewRawFlag
	cmp	r2, #500	@ WaitTime,
	movge	ip, #0	@, tmp202
	movlt	ip, #1	@, tmp202
	cmp	r3, #0	@ <variable>.FillNewRawFlag,
	movne	ip, #0	@, tmp202,
	cmp	ip, #0	@ tmp202,
	bne	.L794	@,
	ldrsb	r9, [r4, #0]	@ <variable>.SegFullFlag, <variable>.SegFullFlag
	str	r0, [r4, r7]	@ CurTimeInMs, <variable>.LastSCDStartTime
	cmp	r9, #1	@ <variable>.SegFullFlag,
	movne	r3, #0	@ tmp232,
	strneb	r3, [r4, #1]	@ tmp232, <variable>.IsCounting
	bne	.L803	@,
.L814:
	mov	r0, r5	@, NextInstId
	mov	r1, #0	@,
	add	lr, r4, #98304	@, pSmInstArray,
	str	lr, [fp, #-84]	@, %sfp
	bl	PrintScdRawState	@
	ldr	r2, [fp, #-84]	@, %sfp
	mov	r0, r5	@, NextInstId
	mov	r1, r9	@, <variable>.SegFullFlag
	add	r3, r2, #232	@,,
	str	r3, [fp, #-84]	@, %sfp
	bl	PrintScdSegState	@
	ldr	r0, [fp, #-84]	@, %sfp
	cmp	r0, #0	@,
	beq	.L801	@,
	ldr	r1, [fp, #-92]	@, %sfp
	ldr	ip, [fp, #-100]	@, %sfp
	ldr	r2, [fp, #-96]	@, %sfp
	ldr	lr, [r4, r1]	@, <variable>.StreamSegArray.SegFreshNum
	ldr	r0, [r4, ip]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	ldr	ip, [fp, #-104]	@, %sfp
	str	lr, [fp, #-88]	@, %sfp
	ldr	r3, [r4, r2]	@, <variable>.StreamSegArray.SegFreshSize
	str	r0, [fp, #-52]	@ <variable>.StreamSegArray.SegBufPhyAddr,
	str	r3, [fp, #-108]	@, %sfp
	ldr	r1, [r4, ip]	@ <variable>.StreamSegArray.SegBufSize, <variable>.StreamSegArray.SegBufSize
	str	r1, [fp, #-48]	@ <variable>.StreamSegArray.SegBufSize,
.L801:
	ldrsb	r0, [r4, #1]	@ <variable>.IsCounting, <variable>.IsCounting
	cmp	r0, #0	@ <variable>.IsCounting,
	bne	.L802	@,
	ldr	lr, [fp, #-48]	@ SegBufTotalSize, SegBufTotalSize
	ldr	r2, [fp, #-108]	@, %sfp
	add	r3, lr, lr, lsr #31	@, tmp218, SegBufTotalSize, SegBufTotalSize,
	cmp	r2, r3, asr #1	@, tmp218,
	bge	.L803	@,
	ldr	r1, [fp, #-88]	@, %sfp
	cmp	r1, #127	@,
	bgt	.L803	@,
	mov	r1, #1	@ tmp220,
	mov	r0, r5	@, NextInstId
	strb	r1, [r4, #1]	@ tmp220, <variable>.IsCounting
	bl	CalcInstBlockTime	@
	b	.L803	@
.L815:
	ldr	r9, [fp, #-80]	@ tmp269, %sfp
	add	sl, sl, r5	@ tmp242, tmp270, NextInstId
	ldr	r2, [fp, #-112]	@, %sfp
	mov	r0, r5	@, NextInstId
	add	sl, r9, sl, asl #4	@, tmp244, tmp269, tmp242,
	str	r5, [r2, #0]	@ NextInstId,
	ldr	ip, [sl, #40]	@ pSmInstArray, <variable>.pSmInstArray
	ldr	r2, [r4, #88]	@, <variable>.Config.ScdLowdlyEnable
	cmp	ip, r3	@ pSmInstArray,
	movwne	r3, #:lower16:190880	@ tmp246,
	movtne	r3, #:upper16:190880	@ tmp246,
	movne	r1, #1	@ tmp247,
	strne	r1, [ip, r3]	@ tmp247, <variable>.Mode
	mov	r1, #1	@,
	bl	DBG_CountTimeInfo	@
	mov	r0, #1	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L816	@,
.L806:
	mov	r0, #0	@ D.53051,
	b	.L791	@
.L816:
	bl	OSAL_GetTimeInMs	@
	add	r9, r9, r5, asl #2	@, tmp252, tmp269, NextInstId,
	movw	r2, #:lower16:g_TraceBsPeriod	@ tmp256,
	movt	r2, #:upper16:g_TraceBsPeriod	@ tmp256,
	ldr	ip, [r9, #872]	@ tmp255, last_rec_pos_time
	mov	r3, r0	@ D.53141,
	ldr	r0, [r2, #0]	@ g_TraceBsPeriod, g_TraceBsPeriod
	rsb	r1, ip, r3	@ tmp254, tmp255, D.53141
	cmp	r1, r0	@ tmp254, g_TraceBsPeriod
	bls	.L806	@,
	mov	lr, r5, asl #24	@ tmp265, NextInstId,
	ldr	r0, .L817	@,
	add	r2, lr, #65536	@, tmp265,
	movw	r1, #5556	@,
	str	r3, [r9, #872]	@ D.53141, last_rec_pos_time
	bl	DBG_AddTrace	@
	mov	r0, #0	@ D.53051,
	b	.L791	@
.L802:
	mov	r0, r5	@, NextInstId
	mov	r1, #0	@,
	bl	CalcInstBlockTime	@
	cmp	r0, #1000	@ WaitSegTime,
	ble	.L803	@,
	ldr	r3, [fp, #-48]	@ SegBufTotalSize, SegBufTotalSize
	ldr	ip, [fp, #-108]	@, %sfp
	cmp	r3, #0	@ SegBufTotalSize,
	add	r2, r3, #3	@ tmp225, SegBufTotalSize,
	movlt	r3, r2	@ SegBufTotalSize, tmp225
	cmp	ip, r3, asr #2	@, SegBufTotalSize,
	bge	.L803	@,
	ldr	lr, [fp, #-88]	@, %sfp
	cmp	lr, #63	@,
	bgt	.L803	@,
	mov	r2, r0	@, WaitSegTime
	movw	r1, #:lower16:.LC131	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC131	@,
	bl	dprint_vfmw	@
	ldr	r0, [fp, #-84]	@, %sfp
	mvn	r1, #0	@,
	bl	ReleaseStreamSeg	@
	mov	r0, #0	@ tmp228,
	strb	r0, [r4, #0]	@ tmp228, <variable>.SegFullFlag
	strb	r0, [r4, #1]	@ tmp228, <variable>.IsCounting
	b	.L803	@
.L812:
	mov	r0, r5	@, NextInstId
	bl	SM_CopyYuvToDnr	@
	cmp	r0, #0	@,
	beq	.L794	@,
	movw	r1, #:lower16:.LC130	@,
	mov	r0, #26	@,
	movt	r1, #:upper16:.LC130	@,
	bl	dprint_vfmw	@
	b	.L794	@
.L810:
	mov	r2, r0	@, ScdId
	movw	r1, #:lower16:.LC129	@,
	mov	r0, #26	@,
	movt	r1, #:upper16:.LC129	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.53051,
	b	.L791	@
.L818:
	.align	2
.L817:
	.word	.LANCHOR1+292
	.fnend
	.size	SM_DoNextInstance, .-SM_DoNextInstance
	.align	2
	.global	SCDDRV_ActivateSCD
	.type	SCDDRV_ActivateSCD, %function
SCDDRV_ActivateSCD:
	.fnstart
.LFB1614:
	@ args = 0, pretend = 0, frame = 8
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
	cmp	r0, #0	@ ScdId,
	beq	.L822	@,
.L821:
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L822:
	sub	r1, fp, #24	@,,
	bl	SM_DoNextInstance	@
	cmp	r0, #0	@,
	bne	.L821	@,
	ldr	r0, [fp, #-24]	@ NextInstID, NextInstID
	movw	r4, #:lower16:.LANCHOR0	@ tmp137,
	movt	r4, #:upper16:.LANCHOR0	@ tmp137,
	mov	r3, #1	@ tmp140,
	str	r0, [r4, #852]	@ NextInstID, <variable>.ThisInstID
	str	r3, [r4, #856]	@ tmp140, <variable>.SCDState
	bl	OSAL_GetTimeInMs	@
	movw	r1, #:lower16:.LC132	@,
	ldr	r2, .L823	@,
	movt	r1, #:upper16:.LC132	@,
	movw	r3, #5907	@,
	str	r0, [r4, #860]	@, <variable>.LastProcessTime
	mov	r0, #26	@,
	bl	dprint_vfmw	@
	b	.L821	@
.L824:
	.align	2
.L823:
	.word	.LANCHOR1+312
	.fnend
	.size	SCDDRV_ActivateSCD, .-SCDDRV_ActivateSCD
	.align	2
	.global	ConfigStreamSegArray
	.type	ConfigStreamSegArray, %function
ConfigStreamSegArray:
	.fnstart
.LFB1550:
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
	cmp	r0, #0	@ pStreamSegArray,
	cmpne	r1, #0	@, BufPhyAddr,
	mov	r4, r1	@ BufPhyAddr, BufPhyAddr
	mov	r5, r0	@ pStreamSegArray, pStreamSegArray
	bne	.L829	@,
.L826:
	mvn	r0, #0	@ D.50135,
.L827:
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L829:
	rsbs	r6, r2, #1	@ tmp151, pBufVirAddr
	movcc	r6, #0	@ tmp151
	cmp	r3, #262144	@ BufSize,
	orrcc	r6, r6, #1	@,, tmp154, tmp151
	cmp	r6, #0	@ tmp154,
	bne	.L826	@,
	movw	r1, #:lower16:92216	@,
	movt	r1, #:upper16:92216	@,
	str	r2, [fp, #-32]	@,
	movw	r7, #:lower16:92184	@ tmp156,
	str	r3, [fp, #-36]	@,
	movt	r7, #:upper16:92184	@ tmp156,
	bl	__memzero	@
	movw	r0, #:lower16:92196	@ tmp158,
	movt	r0, #:upper16:92196	@ tmp158,
	str	r4, [r5, r7]	@ BufPhyAddr, <variable>.SegBufPhyAddr
	movw	ip, #:lower16:92188	@ tmp159,
	movt	ip, #:upper16:92188	@ tmp159,
	str	r4, [r5, r0]	@ BufPhyAddr, <variable>.SegBufWriteAddr
	movw	r1, #:lower16:92192	@ tmp157,
	ldr	r3, [fp, #-36]	@,
	movt	r1, #:upper16:92192	@ tmp157,
	mov	r0, r6	@ D.50135, tmp154
	str	r3, [r5, ip]	@ BufSize, <variable>.SegBufSize
	ldr	r2, [fp, #-32]	@,
	str	r4, [r5, r1]	@ BufPhyAddr, <variable>.SegBufReadAddr
	str	r2, [r5, #0]	@ pBufVirAddr, <variable>.pSegBufVirAddr
	b	.L827	@
	.fnend
	.size	ConfigStreamSegArray, .-ConfigStreamSegArray
	.align	2
	.global	SM_Config
	.type	SM_Config, %function
SM_Config:
	.fnstart
.LFB1572:
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
	cmp	r0, #15	@ SmID,
	movls	r3, #0	@, tmp151
	movhi	r3, #1	@, tmp151
	cmp	r1, #0	@ pSmCfg,
	orreq	r3, r3, #1	@,, tmp154, tmp151
	mov	r5, r0	@ SmID, SmID
	cmp	r3, #0	@ tmp154,
	mov	r6, r1	@ pSmCfg, pSmCfg
	bne	.L845	@,
	add	r7, r0, r0, asl #1	@, tmp160, SmID, SmID,
	movw	r3, #:lower16:.LANCHOR0	@ tmp156,
	movt	r3, #:upper16:.LANCHOR0	@ tmp156,
	add	ip, r3, r7, asl #4	@, tmp162, tmp156, tmp160,
	ldr	r4, [ip, #40]	@ pSmInstArray, <variable>.pSmInstArray
	cmp	r4, #0	@ pSmInstArray,
	beq	.L833	@,
	ldr	r8, [r1, #44]	@ <variable>.s32ChanLowlyEnable, <variable>.s32ChanLowlyEnable
	movw	r2, #:lower16:204768	@ tmp164,
	movt	r2, #:upper16:204768	@ tmp164,
	ldr	sl, [r4, #60]	@ <variable>.Config.BufPhyAddr, <variable>.Config.BufPhyAddr
	str	r8, [r4, r2]	@ <variable>.s32ChanLowlyEnable, <variable>.s32ChanLowlyEnable
	ldr	r2, [r1, #12]	@ D.50846, <variable>.BufPhyAddr
	cmp	sl, r2	@ <variable>.Config.BufPhyAddr, D.50846
	addeq	r7, r4, #48	@ tmp304, pSmInstArray,
	bne	.L846	@,
.L834:
	mov	r1, r6	@, pSmCfg
	mov	r0, r7	@, tmp304
	mov	r2, #160	@,
	bl	memcpy	@
	movw	ip, #:lower16:204756	@ tmp296,
	movt	ip, #:upper16:204756	@ tmp296,
	mov	r0, #2	@ tmp297,
	movw	r3, #:lower16:190864	@ tmp301,
	movt	r3, #:upper16:190864	@ tmp301,
	str	r0, [r4, ip]	@ tmp297, <variable>.UpMsgStepNum
	mov	r0, #0	@ D.50837,
	ldr	r1, [r6, #8]	@ <variable>.VidStd, <variable>.VidStd
	str	r5, [r4, r3]	@ SmID, <variable>.InstID
	cmp	r1, #2	@ <variable>.VidStd,
	moveq	r1, #3	@ tmp300,
	streq	r1, [r4, ip]	@ tmp300, <variable>.UpMsgStepNum
.L832:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L845:
	mov	r3, r0	@, SmID
	movw	r1, #:lower16:.LC133	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC133	@,
	movw	r2, #2071	@,
	str	r6, [sp, #0]	@ pSmCfg,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.50837,
	b	.L832	@
.L846:
	cmp	r2, #0	@ D.50846,
	bne	.L847	@,
.L833:
	mvn	r0, #0	@ D.50837,
	b	.L832	@
.L847:
	ldr	r2, [r1, #0]	@ <variable>.pBufVirAddr, <variable>.pBufVirAddr
	cmp	r2, #0	@ <variable>.pBufVirAddr,
	beq	.L833	@,
	ldr	sl, [r3, #780]	@ <variable>.ScdDrvMem.DownMsgMemAddr, <variable>.ScdDrvMem.DownMsgMemAddr
	movw	lr, #:lower16:190768	@ tmp168,
	movt	lr, #:upper16:190768	@ tmp168,
	movw	r9, #:lower16:190788	@,
	movw	r2, #:lower16:190772	@ tmp171,
	movt	r2, #:upper16:190772	@ tmp171,
	str	sl, [r4, lr]	@ <variable>.ScdDrvMem.DownMsgMemAddr, <variable>.BufAddrCfg.DownMsgPhyAddr
	movw	r8, #:lower16:190776	@ tmp174,
	str	r9, [fp, #-88]	@, %sfp
	movt	r8, #:upper16:190776	@ tmp174,
	ldr	r9, [r3, #784]	@, <variable>.ScdDrvMem.pDownMsgMemVirAddr
	movw	lr, #:lower16:190780	@ tmp177,
	movt	lr, #:upper16:190780	@ tmp177,
	movw	sl, #:lower16:190784	@ tmp180,
	movt	sl, #:upper16:190784	@ tmp180,
	add	r7, r7, #1	@, tmp160,
	str	r9, [r4, r2]	@, <variable>.BufAddrCfg.pDownMsgVirAddr
	movw	r9, #:lower16:190820	@,
	ldr	r2, [fp, #-88]	@, %sfp
	movt	r9, #:upper16:190820	@,
	str	r9, [fp, #-48]	@, %sfp
	movt	r2, #:upper16:190788	@,
	str	r2, [fp, #-88]	@, %sfp
	ldr	r9, [r3, #788]	@, <variable>.ScdDrvMem.DownMsgMemSize
	movw	r2, #:lower16:190792	@ tmp186,
	movt	r2, #:upper16:190792	@ tmp186,
	str	r9, [r4, r8]	@, <variable>.BufAddrCfg.DownMsgSize
	movw	r8, #:lower16:190824	@,
	str	r8, [fp, #-52]	@, %sfp
	movw	r9, #:lower16:190824	@,
	ldr	r8, [r3, #792]	@ <variable>.ScdDrvMem.UpMsgMemAddr, <variable>.ScdDrvMem.UpMsgMemAddr
	movt	r9, #:upper16:190824	@,
	str	r9, [fp, #-52]	@, %sfp
	movw	r9, #:lower16:190828	@,
	movt	r9, #:upper16:190828	@,
	str	r9, [fp, #-56]	@, %sfp
	movw	r9, #:lower16:190832	@,
	movt	r9, #:upper16:190832	@,
	str	r9, [fp, #-60]	@, %sfp
	movw	r9, #:lower16:190836	@,
	str	r8, [r4, lr]	@ <variable>.ScdDrvMem.UpMsgMemAddr, <variable>.BufAddrCfg.UpMsgPhyAddr
	movw	lr, #:lower16:190836	@,
	str	lr, [fp, #-64]	@, %sfp
	movt	r9, #:upper16:190836	@,
	ldr	lr, [r3, #796]	@ <variable>.ScdDrvMem.pUpMsgMemVirAddr, <variable>.ScdDrvMem.pUpMsgMemVirAddr
	movw	r8, #:lower16:190840	@,
	str	r9, [fp, #-64]	@, %sfp
	movt	r8, #:upper16:190840	@,
	str	r7, [fp, #-80]	@, %sfp
	movw	r9, #:lower16:190796	@,
	str	r8, [fp, #-68]	@, %sfp
	str	r9, [fp, #-72]	@, %sfp
	movw	r9, #:lower16:190800	@,
	str	lr, [r4, sl]	@ <variable>.ScdDrvMem.pUpMsgMemVirAddr, <variable>.BufAddrCfg.pUpMsgVirAddr
	mov	sl, #1152	@ tmp187,
	ldr	r7, [fp, #-80]	@, %sfp
	movt	r9, #:upper16:190800	@,
	ldr	lr, [fp, #-72]	@, %sfp
	add	r8, r3, r7, asl #4	@,, tmp156,,
	movt	lr, #:upper16:190796	@,
	str	r8, [fp, #-84]	@, %sfp
	ldr	r7, [r3, #800]	@ <variable>.ScdDrvMem.UpMsgMemSize, <variable>.ScdDrvMem.UpMsgMemSize
	str	lr, [fp, #-72]	@, %sfp
	movw	lr, #:lower16:190804	@,
	str	sl, [r4, r2]	@ tmp187, <variable>.BufAddrCfg.UpMsgNum
	movt	lr, #:upper16:190804	@,
	ldr	r8, [fp, #-88]	@, %sfp
	movw	r2, #:lower16:190808	@,
	str	r9, [fp, #-92]	@, %sfp
	movt	r2, #:upper16:190808	@,
	str	r7, [r4, r8]	@ <variable>.ScdDrvMem.UpMsgMemSize, <variable>.BufAddrCfg.UpMsgSize
	str	lr, [fp, #-76]	@, %sfp
	movw	lr, #:lower16:190812	@ tmp244,
	ldr	sl, [r3, #804]	@ <variable>.ScdDrvMem.DvmMemAddr, <variable>.ScdDrvMem.DvmMemAddr
	movt	lr, #:upper16:190812	@ tmp244,
	str	r2, [fp, #-88]	@, %sfp
	movw	r2, #:lower16:190816	@ tmp254,
	ldr	r9, [fp, #-48]	@, %sfp
	movt	r2, #:upper16:190816	@ tmp254,
	str	sl, [r4, r9]	@ <variable>.ScdDrvMem.DvmMemAddr, <variable>.BufAddrCfg.DvmMemAddr
	movw	sl, #:lower16:190856	@ tmp267,
	ldr	r8, [r3, #808]	@, <variable>.ScdDrvMem.pDvmMemVirAddr
	movt	sl, #:upper16:190856	@ tmp267,
	ldr	r7, [fp, #-52]	@, %sfp
	movw	r9, #:lower16:190764	@ tmp269,
	movt	r9, #:upper16:190764	@ tmp269,
	str	r8, [r4, r7]	@, <variable>.BufAddrCfg.pDvmMemVirAddr
	ldr	r7, [fp, #-56]	@, %sfp
	ldr	r8, [r3, #812]	@, <variable>.ScdDrvMem.DvmMemSize
	str	r8, [r4, r7]	@, <variable>.BufAddrCfg.DvmMemSize
	ldr	r7, [fp, #-60]	@, %sfp
	ldr	r8, [r3, #816]	@, <variable>.ScdDrvMem.DspSedTopMemAddr
	str	r8, [r4, r7]	@, <variable>.BufAddrCfg.DspSedTopMemAddr
	ldr	r7, [fp, #-64]	@, %sfp
	ldr	r8, [r3, #820]	@, <variable>.ScdDrvMem.pDspSedTopMemVirAddr
	str	r8, [r4, r7]	@, <variable>.BufAddrCfg.pDspSedTopMemVirAddr
	ldr	r7, [fp, #-68]	@, %sfp
	ldr	r8, [r3, #824]	@, <variable>.ScdDrvMem.DspSedTopMemSize
	str	r8, [r4, r7]	@, <variable>.BufAddrCfg.DspSedTopMemSize
	ldr	r7, [fp, #-80]	@, %sfp
	ldr	r8, [fp, #-72]	@, %sfp
	ldr	r3, [r3, r7, asl #4]	@ <variable>.DspCtxMem.DspSpsMsgMemAddr, <variable>.DspCtxMem.DspSpsMsgMemAddr
	str	r3, [r4, r8]	@ <variable>.DspCtxMem.DspSpsMsgMemAddr, <variable>.BufAddrCfg.DspSpsMsgMemAddr
	ldr	r7, [fp, #-84]	@, %sfp
	ldr	r8, [fp, #-92]	@, %sfp
	ldr	r3, [r7, #4]	@ <variable>.DspCtxMem.pDspSpsMsgMemVirAddr, <variable>.DspCtxMem.pDspSpsMsgMemVirAddr
	str	r3, [r4, r8]	@ <variable>.DspCtxMem.pDspSpsMsgMemVirAddr, <variable>.BufAddrCfg.pDspSpsMsgMemVirAddr
	ldr	r7, [fp, #-76]	@, %sfp
	ldr	r3, [ip, #24]	@ <variable>.DspCtxMem.DspSpsMsgMemSize, <variable>.DspCtxMem.DspSpsMsgMemSize
	str	r3, [r4, r7]	@ <variable>.DspCtxMem.DspSpsMsgMemSize, <variable>.BufAddrCfg.DspSpsMsgMemSize
	ldr	r8, [fp, #-88]	@, %sfp
	ldr	r7, [ip, #28]	@ <variable>.DspCtxMem.DspPpsMsgMemAddr, <variable>.DspCtxMem.DspPpsMsgMemAddr
	str	r7, [r4, r8]	@ <variable>.DspCtxMem.DspPpsMsgMemAddr, <variable>.BufAddrCfg.DspPpsMsgMemAddr
	ldr	r3, [ip, #32]	@ <variable>.DspCtxMem.pDspPpsMsgMemVirAddr, <variable>.DspCtxMem.pDspPpsMsgMemVirAddr
	str	r3, [r4, lr]	@ <variable>.DspCtxMem.pDspPpsMsgMemVirAddr, <variable>.BufAddrCfg.pDspPpsMsgMemVirAddr
	ldr	r7, [ip, #36]	@ <variable>.DspCtxMem.DspPpsMsgMemSize, <variable>.DspCtxMem.DspPpsMsgMemSize
	str	r7, [r4, r2]	@ <variable>.DspCtxMem.DspPpsMsgMemSize, <variable>.BufAddrCfg.DspPpsMsgMemSize
	ldr	r8, [r1, #12]	@ temp.3135, <variable>.BufPhyAddr
	ldr	r7, [r1, #8]	@ <variable>.VidStd, <variable>.VidStd
	add	lr, r8, #3	@ tmp265, temp.3135,
	ldr	r2, [r1, #0]	@ <variable>.pBufVirAddr, <variable>.pBufVirAddr
	bic	ip, lr, #3	@ TmpPhyAddr, tmp265,
	cmp	r7, #6	@ <variable>.VidStd,
	rsb	r8, r8, ip	@ ByteOffsetInWord, temp.3135, TmpPhyAddr
	add	lr, r8, r2	@ pTmpVirAddr, ByteOffsetInWord, <variable>.pBufVirAddr
	moveq	r7, #1048576	@ prephitmp.3123,
	movne	r7, #131072	@ prephitmp.3123,
	add	r3, r7, ip	@ tmp268, prephitmp.3123, TmpPhyAddr
	add	ip, lr, r7	@ tmp270, pTmpVirAddr, prephitmp.3123
	str	r3, [r4, sl]	@ tmp268, <variable>.BufAddrCfg.SegBufPhyAddr
	str	ip, [r4, r9]	@ tmp270, <variable>.BufAddrCfg.pSegBufVirAddr
	bl	SetMaxSegSize	@
	ldr	r1, [r6, #16]	@ <variable>.BufSize, <variable>.BufSize
	rsb	r8, r8, r1	@ D.50886, ByteOffsetInWord, <variable>.BufSize
	cmn	r0, #1	@,
	moveq	r0, #2097152	@ SmMaxSegBufSize,
	cmp	r0, r8	@ SmMaxSegBufSize, D.50886
	bge	.L838	@,
	movw	r3, #:lower16:-1024	@ tmp272,
	movw	r1, #:lower16:190860	@ tmp274,
	movt	r3, #:upper16:-1024	@ tmp272,
	movt	r1, #:upper16:190860	@ tmp274,
	rsb	ip, r7, r3	@ tmp272, prephitmp.3123, tmp272
	add	r3, ip, r0	@ prephitmp.3124, tmp272, SmMaxSegBufSize
	str	r3, [r4, r1]	@ prephitmp.3124, <variable>.BufAddrCfg.SegBufSize
.L839:
	movw	r2, #:lower16:190856	@ tmp280,
	movw	r0, #:lower16:190764	@ tmp282,
	movt	r2, #:upper16:190856	@ tmp280,
	movt	r0, #:upper16:190764	@ tmp282,
	add	lr, r4, #98304	@, pSmInstArray,
	add	r7, r4, #48	@ tmp304, pSmInstArray,
	ldr	r1, [r4, r2]	@, <variable>.BufAddrCfg.SegBufPhyAddr
	ldr	r2, [r4, r0]	@, <variable>.BufAddrCfg.pSegBufVirAddr
	add	r0, lr, #232	@,,
	bl	ConfigStreamSegArray	@
	mov	r1, r6	@, pSmCfg
	mov	r0, r7	@, tmp304
	mov	r2, #160	@,
	bl	memcpy	@
	movw	ip, #:lower16:190868	@ tmp289,
	movt	ip, #:upper16:190868	@ tmp289,
	mov	r1, #0	@ tmp290,
	str	r1, [r4, ip]	@ tmp290, <variable>.ScdID
	b	.L834	@
.L838:
	sub	r2, r8, #1024	@ tmp275, D.50886,
	movw	r0, #:lower16:190860	@ tmp276,
	rsb	r3, r7, r2	@ prephitmp.3124, prephitmp.3123, tmp275
	movt	r0, #:upper16:190860	@ tmp276,
	cmp	r3, #262144	@ prephitmp.3124,
	str	r3, [r4, r0]	@ prephitmp.3124, <variable>.BufAddrCfg.SegBufSize
	bge	.L839	@,
	mvn	r0, #0	@ D.50837,
	b	.L832	@
	.fnend
	.size	SM_Config, .-SM_Config
	.align	2
	.global	SM_Reset
	.type	SM_Reset, %function
SM_Reset:
	.fnstart
.LFB1565:
	@ args = 0, pretend = 0, frame = 304
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #308
	sub	sp, sp, #308	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r0, #15	@ SmID,
	mov	r5, r0	@ SmID, SmID
	bhi	.L858	@,
	mov	sl, r0, asl #1	@ tmp210, SmID,
	movw	r6, #:lower16:.LANCHOR0	@ tmp212,
	add	r1, sl, r0	@ tmp146, tmp210, SmID
	movt	r6, #:upper16:.LANCHOR0	@ tmp212,
	add	r3, r6, r1, asl #4	@, tmp148, tmp212, tmp146,
	ldr	r4, [r3, #40]	@ pSmInstArray, <variable>.pSmInstArray
	cmp	r4, #0	@ pSmInstArray,
	beq	.L859	@,
	ldr	r7, [r4, #84]	@ <variable>.Config.DisContinueRawPacketFlag, <variable>.Config.DisContinueRawPacketFlag
	sub	r2, r7, #1	@ tmp151, <variable>.Config.DisContinueRawPacketFlag,
	cmp	r2, #1	@ tmp151,
	bls	.L860	@,
.L852:
	add	lr, r4, #203776	@ D.50554, pSmInstArray,
	mov	r8, #0	@ tmp154,
	add	r1, r4, #48	@, pSmInstArray,
	str	r8, [r4, #84]	@ tmp154, <variable>.Config.DisContinueRawPacketFlag
	mov	r2, #160	@,
	mvn	r0, #0	@ tmp155,
	str	r0, [r4, #80]	@ tmp155, <variable>.Config.LastRawDisContinueCount
	sub	r0, fp, #332	@,,
	add	r7, lr, #1000	@ D.50554, D.50554,
	str	r8, [fp, #-344]	@,
	bl	memcpy	@
	movw	r3, #:lower16:204772	@ tmp162,
	movt	r3, #:upper16:204772	@ tmp162,
	movw	r8, #:lower16:190880	@ tmp161,
	movt	r8, #:upper16:190880	@ tmp161,
	add	sl, sl, r5	@ tmp173, tmp210, SmID
	ldr	ip, [r4, r3]	@, <variable>.HeaderLen
	sub	r0, fp, #172	@,,
	add	r6, r6, sl, asl #4	@, tmp175, tmp212, tmp173,
	mov	r1, r7	@, D.50554
	mov	r2, #128	@,
	str	ip, [fp, #-336]	@, %sfp
	ldr	r9, [r4, r8]	@, <variable>.Mode
	str	r9, [fp, #-340]	@, %sfp
	bl	memcpy	@
	ldr	r3, [r6, #40]	@ pSmInstArray, <variable>.pSmInstArray
	ldr	ip, [fp, #-344]	@,
	cmp	r3, #0	@ pSmInstArray,
	beq	.L853	@,
	ldr	r1, [r3, r8]	@ <variable>.Mode, <variable>.Mode
	cmp	r1, #0	@ <variable>.Mode,
	bne	.L861	@,
.L853:
	movw	r0, #:lower16:98516	@ tmp183,
	movw	r9, #:lower16:98512	@ tmp184,
	movt	r0, #:upper16:98516	@ tmp183,
	movt	r9, #:upper16:98512	@ tmp184,
	ldr	r8, [r4, r0]	@ <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Tail
	add	r0, r4, #208	@, pSmInstArray,
	ldr	lr, [r4, r9]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	mvn	r9, #0	@,
	subs	r1, r8, lr	@ RawNum, <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Head
	mvn	r8, #0	@,
	addmi	r1, r1, #1024	@ RawNum, RawNum,
	bl	DeleteRawPacket	@
	mov	r1, #1	@,
	mov	r0, r5	@, SmID
	bl	DeleteRawPacketInBuffer	@
	mov	r0, r4	@, pSmInstArray
	movw	r1, #:lower16:204904	@,
	movt	r1, #:upper16:204904	@,
	bl	__memzero	@
	movw	r3, #:lower16:204720	@ tmp189,
	movw	ip, #:lower16:204756	@ tmp191,
	movt	r3, #:upper16:204720	@ tmp189,
	movt	ip, #:upper16:204756	@ tmp191,
	mov	r2, #2	@ tmp192,
	strd	r8, [r4, r3]	@, pSmInstArray, tmp189
	sub	r1, fp, #332	@,,
	str	r2, [r4, ip]	@ tmp192, <variable>.UpMsgStepNum
	mov	r0, r5	@, SmID
	bl	SM_Config	@
	ldr	r9, [fp, #-340]	@, %sfp
	movw	r0, #:lower16:190880	@ tmp196,
	movt	r0, #:upper16:190880	@ tmp196,
	sub	r1, r9, #1	@ tmp195,,
	movw	r3, #:lower16:204772	@ tmp200,
	cmp	r1, #1	@ tmp195,
	movt	r3, #:upper16:204772	@ tmp200,
	sub	r1, fp, #172	@,,
	movls	r2, #1	@ tmp197,
	movhi	r2, #0	@ tmp199,
	str	r2, [r4, r0]	@ tmp199, <variable>.Mode
	mov	r0, r7	@, D.50554
	ldr	ip, [fp, #-336]	@, %sfp
	mov	r2, #128	@,
	str	ip, [r4, r3]	@, <variable>.HeaderLen
	bl	memcpy	@
	mov	r0, #0	@ D.50543,
.L850:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L861:
	movw	r9, #:lower16:190868	@ tmp179,
	movt	r9, #:upper16:190868	@ tmp179,
	ldr	r2, [r3, r9]	@ <variable>.ScdID, <variable>.ScdID
	cmp	r2, #0	@ <variable>.ScdID,
	strle	ip, [r3, r8]	@ tmp154, <variable>.Mode
	b	.L853	@
.L859:
	movw	r1, #:lower16:.LC134	@,
	mov	r0, r4	@, pSmInstArray
	movt	r1, #:upper16:.LC134	@,
	movw	r2, #1588	@,
	bl	dprint_vfmw	@
.L858:
	mvn	r0, #0	@ D.50543,
	b	.L850	@
.L860:
	add	r1, r4, #104	@, pSmInstArray,
	bl	ReleaseRawStreamData	@
	b	.L852	@
	.fnend
	.size	SM_Reset, .-SM_Reset
	.align	2
	.global	ResetRawStreamArray
	.type	ResetRawStreamArray, %function
ResetRawStreamArray:
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
	cmp	r0, #0	@ pRawStreamArray,
	ldmeqfd	sp, {fp, sp, pc}	@
	movw	r1, #:lower16:98328	@,
	movt	r1, #:upper16:98328	@,
	bl	__memzero	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	ResetRawStreamArray, .-ResetRawStreamArray
	.align	2
	.global	FillExtraData
	.type	FillExtraData, %function
FillExtraData:
	.fnstart
.LFB1605:
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
	cmp	r0, #15	@ InstID,
	mov	r4, r1	@ pRawPacket, pRawPacket
	bls	.L887	@,
.L866:
	mvn	r0, #0	@ D.52610,
.L868:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L887:
	cmp	r1, #0	@ pRawPacket,
	beq	.L866	@,
	ldr	ip, [r1, #8]	@ D.52613, <variable>.Length
	cmp	ip, #0	@ D.52613,
	ble	.L888	@,
	add	r0, r0, r0, asl #1	@, tmp167, InstID, InstID,
	movw	r1, #:lower16:.LANCHOR0	@ tmp163,
	movt	r1, #:upper16:.LANCHOR0	@ tmp163,
	add	r3, r1, r0, asl #4	@, tmp169, tmp163, tmp167,
	ldr	r5, [r3, #40]	@ pSmInstArray, <variable>.pSmInstArray
	ldr	r3, [r5, #56]	@ <variable>.Config.VidStd, <variable>.Config.VidStd
	cmp	r3, #5	@ <variable>.Config.VidStd,
	beq	.L871	@,
	cmp	r3, #8	@ <variable>.Config.VidStd,
	beq	.L872	@,
	cmp	r3, #1	@ <variable>.Config.VidStd,
	beq	.L889	@,
.L869:
	mov	r0, #0	@ D.52610,
	b	.L868	@
.L889:
	ldr	r0, [r5, #72]	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile, <variable>.Config.StdExt.Vc1Ext.IsAdvProfile
	cmp	r0, #1	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile,
	beq	.L890	@,
	ldr	r7, [r4, #76]	@ <variable>.RawExt.Flags, <variable>.RawExt.Flags
	ands	r7, r7, #128	@ tmp205, <variable>.RawExt.Flags,
	beq	.L877	@,
	ldr	r6, [r4, #80]	@ temp.3221, <variable>.RawExt.BufLen
	add	lr, ip, #12	@ D.52649, D.52613,
	cmp	lr, r6	@ D.52649, temp.3221
	bhi	.L878	@,
	cmp	lr, #128	@ D.52649,
	bgt	.L878	@,
	ldr	r1, [r4, #4]	@ temp.3222, <variable>.VirAddr
	mov	r2, ip	@, D.52613
	add	r0, r1, #8	@, temp.3222,
	bl	memmove	@
	add	r1, r4, #84	@, pRawPacket,
	mov	r2, #4	@,
	ldr	r0, [r4, #4]	@, <variable>.VirAddr
	bl	memcpy	@
	ldr	r0, [r4, #4]	@ <variable>.VirAddr, <variable>.VirAddr
	mov	r2, #4	@,
	add	r1, r4, #88	@, pRawPacket,
	add	r0, r0, r2	@, <variable>.VirAddr,
	bl	memcpy	@
	ldr	r2, [r4, #4]	@ <variable>.VirAddr, <variable>.VirAddr
	mov	r1, #4	@,
	add	r0, r2, #12	@, <variable>.VirAddr,
	bl	__memzero	@
	movw	r3, #:lower16:204772	@ tmp228,
	movt	r3, #:upper16:204772	@ tmp228,
	add	r1, r5, #203776	@, pSmInstArray,
	mov	ip, #16	@ tmp227,
	add	r0, r1, #1000	@,,
	str	ip, [r4, #8]	@ tmp227, <variable>.Length
	str	ip, [r5, r3]	@ tmp227, <variable>.HeaderLen
	ldmib	r4, {r1, r2}	@ phole ldm
	bl	memcpy	@
	mov	r0, #0	@ D.52610,
	b	.L868	@
.L872:
	ldr	r7, [r4, #76]	@ <variable>.RawExt.Flags, <variable>.RawExt.Flags
	ands	r7, r7, #128	@ tmp273, <variable>.RawExt.Flags,
	beq	.L882	@,
	cmp	ip, #128	@ D.52613,
	bgt	.L891	@,
.L883:
	movw	r2, #:lower16:204772	@ tmp279,
	movt	r2, #:upper16:204772	@ tmp279,
	add	r1, r5, #203776	@, pSmInstArray,
	str	ip, [r5, r2]	@ D.52613, <variable>.HeaderLen
	add	r0, r1, #1000	@,,
	ldmib	r4, {r1, r2}	@ phole ldm
	bl	memcpy	@
	mov	r0, #0	@ D.52610,
	b	.L868	@
.L871:
	ldr	lr, [r4, #80]	@ temp.3246, <variable>.RawExt.BufLen
	add	r5, ip, #8	@ D.52665, D.52613,
	cmp	r5, lr	@ D.52665, temp.3246
	bhi	.L892	@,
	ldr	r1, [r4, #4]	@ temp.3247, <variable>.VirAddr
	mov	r2, ip	@, D.52613
	add	r0, r1, #8	@, temp.3247,
	bl	memmove	@
	add	r1, r4, #84	@, pRawPacket,
	mov	r2, #4	@,
	ldr	r0, [r4, #4]	@, <variable>.VirAddr
	bl	memcpy	@
	ldr	r0, [r4, #4]	@ <variable>.VirAddr, <variable>.VirAddr
	mov	r2, #4	@,
	add	r1, r4, #88	@, pRawPacket,
	add	r0, r0, r2	@, <variable>.VirAddr,
	bl	memcpy	@
	ldr	r3, [r4, #8]	@ <variable>.Length, <variable>.Length
	mov	r0, #0	@ D.52610,
	add	ip, r3, #8	@ tmp272, <variable>.Length,
	str	ip, [r4, #8]	@ tmp272, <variable>.Length
	b	.L868	@
.L882:
	movw	r6, #:lower16:204772	@ tmp287,
	movt	r6, #:upper16:204772	@ tmp287,
	ldr	r8, [r4, #80]	@ temp.3268, <variable>.RawExt.BufLen
	ldr	r0, [r5, r6]	@ temp.3266, <variable>.HeaderLen
	add	lr, ip, r0	@ temp.3267, D.52613, temp.3266
	cmp	lr, r8	@ temp.3267, temp.3268
	bhi	.L893	@,
.L884:
	ldr	r1, [r4, #4]	@ temp.3270, <variable>.VirAddr
	mov	r2, ip	@, D.52613
	add	r0, r1, r0	@, temp.3270, temp.3266
	bl	memmove	@
	add	r0, r5, #203776	@, pSmInstArray,
	add	r1, r0, #1000	@,,
	ldr	r2, [r5, r6]	@, <variable>.HeaderLen
	ldr	r0, [r4, #4]	@, <variable>.VirAddr
	bl	memcpy	@
	ldr	r3, [r5, r6]	@ <variable>.HeaderLen, <variable>.HeaderLen
	ldr	r1, [r4, #8]	@ <variable>.Length, <variable>.Length
	mov	r0, r7	@ D.52610, tmp273
	add	ip, r1, r3	@ tmp303, <variable>.Length, <variable>.HeaderLen
	str	ip, [r4, #8]	@ tmp303, <variable>.Length
	b	.L868	@
.L877:
	movw	r6, #:lower16:204772	@ tmp237,
	movt	r6, #:upper16:204772	@ tmp237,
	ldr	r8, [r4, #80]	@ temp.3234, <variable>.RawExt.BufLen
	ldr	r0, [r5, r6]	@ temp.3232, <variable>.HeaderLen
	add	lr, ip, r0	@ temp.3233, D.52613, temp.3232
	cmp	lr, r8	@ temp.3233, temp.3234
	bls	.L884	@,
	mov	r0, r3	@, <variable>.Config.VidStd
	movw	r1, #:lower16:.LC137	@,
	ldr	r2, .L895	@,
	movt	r1, #:upper16:.LC137	@,
	str	lr, [sp, #0]	@ temp.3233,
	str	r8, [sp, #4]	@ temp.3234,
	bl	dprint_vfmw	@
	mvn	r0, #1	@ D.52610,
	b	.L868	@
.L890:
	ldr	r2, [r4, #76]	@ <variable>.RawExt.Flags, <variable>.RawExt.Flags
	tst	r2, #128	@ <variable>.RawExt.Flags,
	beq	.L874	@,
	cmp	ip, #128	@ D.52613,
	ble	.L883	@,
	ldr	r2, .L895	@,
	movw	r1, #:lower16:.LC136	@,
	movt	r1, #:upper16:.LC136	@,
	mov	r3, r0	@,
.L886:
	mov	lr, #128	@ tmp278,
	stmia	sp, {ip, lr}	@ phole stm
	bl	dprint_vfmw	@
	mvn	r0, #1	@ D.52610,
	b	.L868	@
.L874:
	ldrb	r3, [r4, #72]	@ zero_extendqisi2	@ <variable>.RawExt.IsSeekPending, <variable>.RawExt.IsSeekPending
	cmp	r3, #0	@ <variable>.RawExt.IsSeekPending,
	beq	.L869	@,
	movw	r6, #:lower16:204772	@ tmp188,
	movt	r6, #:upper16:204772	@ tmp188,
	ldr	lr, [r4, #80]	@ D.52638, <variable>.RawExt.BufLen
	ldr	r0, [r5, r6]	@ D.52636, <variable>.HeaderLen
	add	r6, ip, r0	@ D.52637, D.52613, D.52636
	cmp	r6, lr	@ D.52637, D.52638
	bhi	.L894	@,
	ldr	r1, [r4, #4]	@ temp.3211, <variable>.VirAddr
	mov	r2, ip	@, D.52613
	movw	r6, #:lower16:204772	@ tmp194,
	movt	r6, #:upper16:204772	@ tmp194,
	add	r0, r1, r0	@, temp.3211, D.52636
	bl	memmove	@
	add	r0, r5, #203776	@, pSmInstArray,
	add	r1, r0, #1000	@,,
	ldr	r2, [r5, r6]	@, <variable>.HeaderLen
	ldr	r0, [r4, #4]	@, <variable>.VirAddr
	bl	memcpy	@
	ldr	r1, [r5, r6]	@ <variable>.HeaderLen, <variable>.HeaderLen
	ldr	r2, [r4, #8]	@ <variable>.Length, <variable>.Length
	mov	r0, #0	@ D.52610,
	add	ip, r2, r1	@ tmp204, <variable>.Length, <variable>.HeaderLen
	str	ip, [r4, #8]	@ tmp204, <variable>.Length
	b	.L868	@
.L892:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC139	@,
	ldr	r2, .L895	@,
	movt	r1, #:upper16:.LC139	@,
	stmia	sp, {r5, lr}	@ phole stm
	bl	dprint_vfmw	@
	mvn	r0, #1	@ D.52610,
	b	.L868	@
.L878:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC138	@,
	ldr	r2, .L895	@,
	movt	r1, #:upper16:.LC138	@,
	mov	r3, r0	@,
	str	lr, [sp, #0]	@ D.52649,
	str	r6, [sp, #4]	@ temp.3221,
	mov	lr, #128	@ tmp210,
	str	lr, [sp, #8]	@ tmp210,
	bl	dprint_vfmw	@
	mvn	r0, #1	@ D.52610,
	b	.L868	@
.L893:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC137	@,
	ldr	r2, .L895	@,
	movt	r1, #:upper16:.LC137	@,
	str	lr, [sp, #0]	@ temp.3267,
	str	r8, [sp, #4]	@ temp.3268,
	bl	dprint_vfmw	@
	mvn	r0, #1	@ D.52610,
	b	.L868	@
.L888:
	mov	r3, ip	@, D.52613
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC135	@,
	ldr	r2, .L895	@,
	movt	r1, #:upper16:.LC135	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.52610,
	b	.L868	@
.L891:
	movw	r1, #:lower16:.LC136	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC136	@,
	ldr	r2, .L895	@,
	b	.L886	@
.L894:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC137	@,
	ldr	r2, .L895	@,
	movt	r1, #:upper16:.LC137	@,
	mov	r3, r0	@,
	stmia	sp, {r6, lr}	@ phole stm
	bl	dprint_vfmw	@
	mvn	r0, #1	@ D.52610,
	b	.L868	@
.L896:
	.align	2
.L895:
	.word	.LANCHOR1+332
	.fnend
	.size	FillExtraData, .-FillExtraData
	.align	2
	.global	ReadRawStreamData
	.type	ReadRawStreamData, %function
ReadRawStreamData:
	.fnstart
.LFB1606:
	@ args = 0, pretend = 0, frame = 16
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
	add	r7, r0, r0, asl #1	@, tmp146, InstID, InstID,
	movw	r3, #:lower16:.LANCHOR0	@ tmp142,
	movt	r3, #:upper16:.LANCHOR0	@ tmp142,
	add	r7, r3, r7, asl #4	@, tmp148, tmp142, tmp146,
	sub	r4, fp, #48	@ tmp150,,
	mov	r5, r0	@ InstID, InstID
	mov	r8, r1	@ pRawPacket, pRawPacket
	ldr	r6, [r7, #40]	@ pSmInstArray, <variable>.pSmInstArray
	mov	r1, #12	@,
	mov	r0, r4	@, tmp150
	bl	__memzero	@
	cmp	r6, #0	@ pSmInstArray,
	beq	.L901	@,
	mov	r0, r5	@, InstID
	bl	VCTRL_GetStreamInterface	@
	subs	r3, r0, #0	@ pStreamIntf,
	beq	.L911	@,
	ldmia	r3, {r0, r1, r2}	@ pStreamIntf,,,
	stmia	r4, {r0, r1, r2}	@ tmp150,,,
	ldr	r0, [r3, #4]	@ <variable>.read_stream, <variable>.read_stream
	cmp	r0, #0	@ <variable>.read_stream,
	beq	.L901	@,
	ldr	r1, [r6, #96]	@ <variable>.Config.IsOmxPath, <variable>.Config.IsOmxPath
	cmp	r1, #1	@ <variable>.Config.IsOmxPath,
	beq	.L912	@,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r1, r8	@, pRawPacket
	ldr	r4, [fp, #-44]	@ StreamIntf.read_stream, StreamIntf.read_stream
	ldr	r0, [fp, #-48]	@, StreamIntf.stream_provider_inst_id
	blx	r4	@ StreamIntf.read_stream
	mov	r4, r0	@ ret,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, [r7, #40]	@ <variable>.pSmInstArray, <variable>.pSmInstArray
	cmp	r0, #0	@ <variable>.pSmInstArray,
	beq	.L913	@,
.L903:
	cmp	r4, #0	@ ret,
	bne	.L901	@,
	ldrb	r7, [r8, #53]	@ zero_extendqisi2	@ <variable>.is_stream_end_flag, <variable>.is_stream_end_flag
	cmp	r7, #1	@ <variable>.is_stream_end_flag,
	beq	.L914	@,
	ldr	ip, [r6, #96]	@ <variable>.Config.IsOmxPath, <variable>.Config.IsOmxPath
	cmp	ip, #1	@ <variable>.Config.IsOmxPath,
	beq	.L915	@,
.L906:
	movw	r3, #:lower16:98532	@ tmp177,
	movt	r3, #:upper16:98532	@ tmp177,
	ldr	r1, [r8, #8]	@ <variable>.Length, <variable>.Length
	ldr	r0, [r6, r3]	@ <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.RawTotalSize
	add	lr, r1, r0	@ tmp181, <variable>.Length, <variable>.RawPacketArray.RawTotalSize
	str	lr, [r6, r3]	@ tmp181, <variable>.RawPacketArray.RawTotalSize
	b	.L900	@
.L901:
	mvn	r4, #6	@ ret,
.L900:
	mov	r0, r4	@, ret
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L912:
	mov	r1, r8	@, pRawPacket
	ldr	r0, [fp, #-48]	@, StreamIntf.stream_provider_inst_id
	ldr	r2, [fp, #-44]	@ StreamIntf.read_stream, StreamIntf.read_stream
	blx	r2	@ StreamIntf.read_stream
	mov	r4, r0	@ ret,
	b	.L903	@
.L914:
	mov	r0, r5	@, InstID
	mov	r1, r8	@, pRawPacket
	bl	FillEosRawStream	@
	cmp	r0, #0	@,
	bne	.L916	@,
	mov	r0, r5	@, InstID
	mov	r1, r7	@, <variable>.is_stream_end_flag
	bl	VCTRL_SetLastFrameState	@
	b	.L906	@
.L915:
	mov	r0, r5	@, InstID
	mov	r1, r8	@, pRawPacket
	bl	FillExtraData	@
	cmp	r0, #0	@,
	beq	.L906	@,
	mov	r2, r5	@, InstID
	mov	r0, r4	@, ret
	movw	r1, #:lower16:.LC143	@,
	movt	r1, #:upper16:.LC143	@,
	bl	dprint_vfmw	@
	mov	r1, r8	@, pRawPacket
	ldr	r0, [fp, #-48]	@, StreamIntf.stream_provider_inst_id
	bl	ReleaseRawStreamData	@
	cmp	r0, #0	@,
	beq	.L901	@,
	mov	r0, r4	@, ret
	movw	r1, #:lower16:.LC144	@,
	movt	r1, #:upper16:.LC144	@,
	mvn	r4, #6	@ ret,
	bl	dprint_vfmw	@
	b	.L900	@
.L916:
	mov	r0, r4	@, ret
	mov	r2, r5	@, InstID
	movw	r1, #:lower16:.LC142	@,
	movt	r1, #:upper16:.LC142	@,
	bl	dprint_vfmw	@
	mvn	r4, #6	@ ret,
	b	.L900	@
.L911:
	mov	r2, r5	@, InstID
	movw	r1, #:lower16:.LC140	@,
	movt	r1, #:upper16:.LC140	@,
	mvn	r4, #6	@ ret,
	bl	dprint_vfmw	@
	b	.L900	@
.L913:
	mov	r3, r5	@, InstID
	movw	r1, #:lower16:.LC141	@,
	movw	r2, #4899	@,
	movt	r1, #:upper16:.LC141	@,
	mvn	r4, #6	@ ret,
	bl	dprint_vfmw	@
	b	.L900	@
	.fnend
	.size	ReadRawStreamData, .-ReadRawStreamData
	.global	__aeabi_uidiv
	.align	2
	.global	FillRawData
	.type	FillRawData, %function
FillRawData:
	.fnstart
.LFB1603:
	@ args = 0, pretend = 0, frame = 120
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #124
	sub	sp, sp, #124	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r5, r0	@ InstID, InstID
	add	r0, r0, r0, asl #1	@, tmp159, InstID, InstID,
	movw	r6, #:lower16:.LANCHOR0	@ tmp364,
	movt	r6, #:upper16:.LANCHOR0	@ tmp364,
	mov	r1, #96	@,
	add	r3, r6, r0, asl #4	@, tmp161, tmp364, tmp159,
	sub	r0, fp, #140	@,,
	ldr	r4, [r3, #40]	@ pSmInstArray, <variable>.pSmInstArray
	bl	__memzero	@
	cmp	r4, #0	@ pSmInstArray,
	beq	.L939	@,
	ldr	r1, [r4, #56]	@ <variable>.Config.VidStd, <variable>.Config.VidStd
	cmp	r1, #18	@ <variable>.Config.VidStd,
	beq	.L939	@,
	ldr	r3, [r4, #84]	@ D.52400, <variable>.Config.DisContinueRawPacketFlag
	cmp	r3, #1	@ D.52400,
	beq	.L939	@,
	cmp	r3, #2	@ D.52400,
	movne	r0, r5, asl #24	@, InstID,
	strne	r0, [fp, #-156]	@, %sfp
	beq	.L951	@,
.L947:
	add	r2, r6, r5, asl #2	@, tmp373, tmp364, InstID,
	movw	r7, #:lower16:204764	@ tmp370,
	movw	r6, #:lower16:204736	@ tmp369,
	movw	sl, #:lower16:204760	@ tmp371,
	movt	r6, #:upper16:204736	@ tmp369,
	movt	r7, #:upper16:204764	@ tmp370,
	movt	sl, #:upper16:204760	@ tmp371,
	add	lr, r2, #936	@, tmp373,
	movw	r1, #:lower16:g_TraceBsPeriod	@,
	movw	ip, #:lower16:vfmw_save_str_file	@,
	movt	r1, #:upper16:g_TraceBsPeriod	@,
	movt	ip, #:upper16:vfmw_save_str_file	@,
	str	lr, [fp, #-152]	@, %sfp
	str	r1, [fp, #-148]	@, %sfp
	str	ip, [fp, #-144]	@, %sfp
.L945:
	mov	r0, r5	@, InstID
	bl	GetRawState	@
	cmp	r0, #0	@,
	bne	.L928	@,
.L956:
	mov	r0, r5	@, InstID
	sub	r1, fp, #140	@,,
	bl	ReadRawStreamData	@
	cmp	r0, #0	@,
	bne	.L939	@,
	ldr	r3, [r4, #80]	@ prephitmp.3335, <variable>.Config.LastRawDisContinueCount
	cmn	r3, #1	@ prephitmp.3335,
	ldreq	r3, [fp, #-92]	@ prephitmp.3335, RawPacket.discontinue_count
	streq	r3, [r4, #80]	@ prephitmp.3335, <variable>.Config.LastRawDisContinueCount
	ldr	r0, [fp, #-92]	@ RawPacket.discontinue_count, RawPacket.discontinue_count
	cmp	r0, r3	@ RawPacket.discontinue_count, prephitmp.3335
	beq	.L930	@,
	ldr	ip, [r4, #56]	@ D.52483, <variable>.Config.VidStd
	cmp	ip, #3	@ D.52483,
	cmpne	ip, #1	@, D.52483,
	beq	.L952	@,
.L930:
	ldr	r9, [fp, #-132]	@ RawPacket.Length, RawPacket.Length
	movw	r8, #:lower16:204740	@ tmp282,
	ldr	ip, [r4, r6]	@ <variable>.TotalRawSize, <variable>.TotalRawSize
	movt	r8, #:upper16:204740	@ tmp282,
	ldr	r0, [r4, r7]	@ <variable>.u32RawNumCount, <variable>.u32RawNumCount
	add	r3, r9, ip	@ tmp272, RawPacket.Length, <variable>.TotalRawSize
	str	r3, [r4, r6]	@ tmp272, <variable>.TotalRawSize
	add	r2, r0, #1	@ tmp276, <variable>.u32RawNumCount,
	str	r2, [r4, r7]	@ tmp276, <variable>.u32RawNumCount
	ldr	r1, [r4, sl]	@ <variable>.u32RawSizeCount, <variable>.u32RawSizeCount
	ldr	lr, [fp, #-132]	@ RawPacket.Length, RawPacket.Length
	add	r9, lr, r1	@ tmp281, RawPacket.Length, <variable>.u32RawSizeCount
	str	r9, [r4, sl]	@ tmp281, <variable>.u32RawSizeCount
	bl	OSAL_GetTimeInMs	@
	ldr	r1, [r4, r8]	@ temp.3357, <variable>.LastStatTime
	cmp	r1, #0	@ temp.3357,
	mov	r9, r0	@ ThisTime.3356,
	streq	r0, [r4, r8]	@ ThisTime.3356, <variable>.LastStatTime
	beq	.L932	@,
	rsb	r1, r1, r0	@ TimePeriod.3358, temp.3357, ThisTime.3356
	cmp	r1, #2000	@ TimePeriod.3358,
	bls	.L932	@,
	ldr	r0, [r4, r6]	@ <variable>.TotalRawSize, <variable>.TotalRawSize
	movw	lr, #:lower16:204744	@ tmp284,
	movt	lr, #:upper16:204744	@ tmp284,
	str	lr, [fp, #-160]	@,
	mov	r0, r0, asl #3	@, <variable>.TotalRawSize,
	bl	__aeabi_uidiv	@
	mov	r3, #1000	@ tmp293,
	str	r9, [r4, r8]	@ ThisTime.3356, <variable>.LastStatTime
	mov	ip, #0	@ tmp296,
	str	ip, [r4, r6]	@ tmp296, <variable>.TotalRawSize
	ldr	r1, [fp, #-160]	@,
	mul	r2, r3, r0	@ tmp292, tmp293,
	mov	r8, r2, lsr #10	@ tmp294, tmp292,
	str	r8, [r4, r1]	@ tmp294, <variable>.BitRate
.L932:
	ldrd	r2, [fp, #-124]	@,,
	mov	r0, #29	@,
	movw	r1, #:lower16:.LC145	@,
	movt	r1, #:upper16:.LC145	@,
	bl	dprint_vfmw	@
	ldr	r2, [fp, #-140]	@, RawPacket.PhyAddr
	ldr	r3, [fp, #-132]	@, RawPacket.Length
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC146	@,
	movt	r1, #:upper16:.LC146	@,
	bl	dprint_vfmw	@
	ldrd	r0, [fp, #-124]	@ RawPacket.Pts,,
	mvn	r2, #0	@ tmp304,
	mov	r3, #0	@,
	cmp	r1, r3	@ RawPacket.Pts, tmp304
	cmpeq	r0, r2	@ RawPacket.Pts, tmp304
	beq	.L953	@,
	mov	r0, r5	@, InstID
	sub	r1, fp, #140	@,,
	bl	SM_PushRaw	@
	subs	r8, r0, #0	@ D.52509,
	bne	.L950	@,
.L934:
	mov	r3, #1	@ tmp308,
	mov	r1, r8	@, D.52509
	mov	r2, r8	@, D.52509
	strb	r3, [r4, #4]	@ tmp308, <variable>.FillNewRawFlag
	mov	r0, r5	@, InstID
	bl	DBG_CountTimeInfo	@
	mov	r0, r8	@, D.52509
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L954	@,
.L935:
	ldr	r2, [fp, #-144]	@, %sfp
	ldr	r3, [r2, r5, asl #2]	@ tmp327, vfmw_save_str_file
	cmp	r3, #0	@ tmp327,
	beq	.L945	@,
	ldr	r8, [r4, #56]	@ eStd, <variable>.Config.VidStd
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	sub	r0, r8, #10	@ tmp329, eStd,
	cmp	r8, #4	@ eStd,
	cmpne	r0, #3	@, tmp329,
	bls	.L937	@,
	cmp	r8, #14	@ eStd,
	cmpne	r8, #17	@, eStd,
	bne	.L955	@,
.L937:
	ldr	lr, [fp, #-144]	@, %sfp
	sub	r1, fp, #140	@,,
	add	r0, r1, #8	@,,
	mov	r1, #4	@,
	ldr	r2, [lr, r5, asl #2]	@, vfmw_save_str_file
	bl	klib_fwrite	@
.L938:
	ldr	r3, [fp, #-144]	@, %sfp
	ldr	r1, [fp, #-132]	@, RawPacket.Length
	ldr	r0, [fp, #-136]	@, RawPacket.VirAddr
	ldr	r2, [r3, r5, asl #2]	@, vfmw_save_str_file
	bl	klib_fwrite	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r5	@, InstID
	bl	GetRawState	@
	cmp	r0, #0	@,
	beq	.L956	@,
.L928:
	mov	r2, r5	@, InstID
	mov	r0, #23	@,
	movw	r1, #:lower16:.LC149	@,
	movt	r1, #:upper16:.LC149	@,
	bl	dprint_vfmw	@
	movw	r2, #:lower16:190864	@ tmp362,
	movt	r2, #:upper16:190864	@ tmp362,
	mov	r1, #0	@,
	ldr	r0, [r4, r2]	@, <variable>.InstID
	bl	PrintScdRawState	@
.L939:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L954:
	bl	OSAL_GetTimeInMs	@
	ldr	r1, [fp, #-152]	@, %sfp
	ldr	ip, [fp, #-148]	@, %sfp
	ldr	r2, [ip, #0]	@ g_TraceBsPeriod, g_TraceBsPeriod
	mov	r3, r0	@ ThisTime.3370,
	ldr	r0, [r1, #0]	@ tmp316, last_rec_pos_time
	rsb	r1, r0, r3	@ tmp315, tmp316, ThisTime.3370
	cmp	r1, r2	@ tmp315, g_TraceBsPeriod
	bls	.L935	@,
	ldr	lr, [fp, #-152]	@, %sfp
	movw	r1, #4566	@,
	ldr	r0, .L960	@,
	ldr	r2, [fp, #-156]	@, %sfp
	str	r3, [lr, #0]	@ ThisTime.3370, last_rec_pos_time
	bl	DBG_AddTrace	@
	b	.L935	@
.L953:
	mov	r0, r5	@, InstID
	sub	r1, fp, #140	@,,
	mvn	r2, #0	@ tmp305,
	mvn	r3, #0	@,
	strd	r2, [fp, #-124]	@ tmp305,,
	bl	SM_PushRaw	@
	subs	r8, r0, #0	@ D.52509,
	beq	.L934	@,
.L950:
	movw	r1, #:lower16:.LC147	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC147	@,
	bl	dprint_vfmw	@
	b	.L939	@
.L955:
	cmp	r8, #8	@ eStd,
	cmpne	r8, #9	@, eStd,
	beq	.L937	@,
	cmp	r8, #5	@ eStd,
	beq	.L937	@,
	cmp	r8, #1	@ eStd,
	bne	.L938	@,
	ldr	ip, [r4, #72]	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile, <variable>.Config.StdExt.Vc1Ext.IsAdvProfile
	cmp	ip, #1	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile,
	bne	.L937	@,
	b	.L938	@
.L951:
	movw	r7, #:lower16:204736	@ tmp165,
	movt	r7, #:upper16:204736	@ tmp165,
	ldr	r2, [r4, #112]	@ <variable>.Config.DisContinueRawPacket.Length, <variable>.Config.DisContinueRawPacket.Length
	movw	r8, #:lower16:204740	@ tmp170,
	ldr	ip, [r4, r7]	@ <variable>.TotalRawSize, <variable>.TotalRawSize
	movt	r8, #:upper16:204740	@ tmp170,
	add	sl, r2, ip	@ tmp169, <variable>.Config.DisContinueRawPacket.Length, <variable>.TotalRawSize
	str	sl, [r4, r7]	@ tmp169, <variable>.TotalRawSize
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r4, r8]	@ D.52409, <variable>.LastStatTime
	cmp	r3, #0	@ D.52409,
	mov	sl, r0	@ ThisTime,
	streq	r0, [r4, r8]	@ ThisTime, <variable>.LastStatTime
	beq	.L921	@,
	rsb	r1, r3, r0	@ TimePeriod, D.52409, ThisTime
	cmp	r1, #2000	@ TimePeriod,
	bls	.L921	@,
	ldr	lr, [r4, r7]	@ <variable>.TotalRawSize, <variable>.TotalRawSize
	movw	r9, #:lower16:204744	@ tmp172,
	movt	r9, #:upper16:204744	@ tmp172,
	mov	r0, lr, asl #3	@, <variable>.TotalRawSize,
	bl	__aeabi_uidiv	@
	mov	r1, #1000	@ tmp181,
	mov	ip, #0	@ tmp184,
	str	sl, [r4, r8]	@ ThisTime, <variable>.LastStatTime
	str	ip, [r4, r7]	@ tmp184, <variable>.TotalRawSize
	mul	r3, r1, r0	@ tmp180, tmp181,
	mov	r7, r3, lsr #10	@ tmp182, tmp180,
	str	r7, [r4, r9]	@ tmp182, <variable>.BitRate
.L921:
	ldrd	r2, [r4, #120]	@, pSmInstArray,
	mov	r0, #29	@,
	movw	r1, #:lower16:.LC145	@,
	movt	r1, #:upper16:.LC145	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #104]	@, <variable>.Config.DisContinueRawPacket.PhyAddr
	ldr	r3, [r4, #112]	@, <variable>.Config.DisContinueRawPacket.Length
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC146	@,
	movt	r1, #:upper16:.LC146	@,
	bl	dprint_vfmw	@
	ldrd	r0, [r4, #120]	@ <variable>.Config.DisContinueRawPacket.Pts, pSmInstArray,
	mvn	r2, #0	@ tmp192,
	mov	r3, #0	@,
	cmp	r1, r3	@ <variable>.Config.DisContinueRawPacket.Pts, tmp192
	cmpeq	r0, r2	@ <variable>.Config.DisContinueRawPacket.Pts, tmp192
	beq	.L957	@,
.L922:
	mov	r0, r5	@, InstID
	add	r1, r4, #104	@, pSmInstArray,
	bl	SM_PushRaw	@
	subs	r7, r0, #0	@ D.52427,
	bne	.L950	@,
	mov	r1, r7	@, D.52427
	mov	r2, r7	@, D.52427
	mov	r0, #1	@ tmp196,
	strb	r0, [r4, #4]	@ tmp196, <variable>.FillNewRawFlag
	mov	r0, r5	@, InstID
	bl	DBG_CountTimeInfo	@
	mov	r0, r7	@, D.52427
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	moveq	r1, r5, asl #24	@, InstID,
	streq	r1, [fp, #-156]	@, %sfp
	bne	.L958	@,
.L924:
	movw	r7, #:lower16:vfmw_save_str_file	@ tmp367,
	movt	r7, #:upper16:vfmw_save_str_file	@ tmp367,
	ldr	r2, [r7, r5, asl #2]	@ tmp216, vfmw_save_str_file
	cmp	r2, #0	@ tmp216,
	beq	.L925	@,
	ldr	r8, [r4, #56]	@ eStd, <variable>.Config.VidStd
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	sub	r3, r8, #10	@ tmp218, eStd,
	cmp	r8, #4	@ eStd,
	cmpne	r3, #3	@, tmp218,
	bls	.L926	@,
	cmp	r8, #14	@ eStd,
	cmpne	r8, #17	@, eStd,
	beq	.L926	@,
	cmp	r8, #8	@ eStd,
	cmpne	r8, #9	@, eStd,
	beq	.L926	@,
	cmp	r8, #5	@ eStd,
	beq	.L926	@,
	cmp	r8, #1	@ eStd,
	beq	.L959	@,
.L927:
	ldr	r2, [r7, r5, asl #2]	@, vfmw_save_str_file
	ldr	r0, [r4, #108]	@, <variable>.Config.DisContinueRawPacket.VirAddr
	ldr	r1, [r4, #112]	@, <variable>.Config.DisContinueRawPacket.Length
	bl	klib_fwrite	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
.L925:
	ldr	sl, [r4, #152]	@ <variable>.Config.DisContinueRawPacket.discontinue_count, <variable>.Config.DisContinueRawPacket.discontinue_count
	mov	r7, #0	@ tmp250,
	str	r7, [r4, #84]	@ tmp250, <variable>.Config.DisContinueRawPacketFlag
	str	sl, [r4, #80]	@ <variable>.Config.DisContinueRawPacket.discontinue_count, <variable>.Config.LastRawDisContinueCount
	b	.L947	@
.L952:
	sub	r1, fp, #140	@,,
	add	r0, r4, #104	@, pSmInstArray,
	mov	r2, #96	@,
	bl	memcpy	@
	mov	r0, #1	@ tmp264,
	str	r0, [r4, #84]	@ tmp264, <variable>.Config.DisContinueRawPacketFlag
	movw	r1, #:lower16:.LC148	@,
	ldr	r2, [r4, #80]	@, <variable>.Config.LastRawDisContinueCount
	movt	r1, #:upper16:.LC148	@,
	ldr	r3, [fp, #-92]	@, RawPacket.discontinue_count
	bl	dprint_vfmw	@
	b	.L939	@
.L959:
	ldr	r0, [r4, #72]	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile, <variable>.Config.StdExt.Vc1Ext.IsAdvProfile
	cmp	r0, #1	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile,
	beq	.L927	@,
.L926:
	add	r0, r4, #112	@, pSmInstArray,
	mov	r1, #4	@,
	ldr	r2, [r7, r5, asl #2]	@, vfmw_save_str_file
	bl	klib_fwrite	@
	b	.L927	@
.L957:
	mvn	r2, #0	@ tmp193,
	mvn	r3, #0	@,
	strd	r2, [r4, #120]	@ tmp193, pSmInstArray,
	b	.L922	@
.L958:
	bl	OSAL_GetTimeInMs	@
	add	r3, r6, r5, asl #2	@, tmp201, tmp364, InstID,
	movw	r1, #:lower16:g_TraceBsPeriod	@ tmp205,
	movt	r1, #:upper16:g_TraceBsPeriod	@ tmp205,
	ldr	ip, [r3, #936]	@ tmp204, last_rec_pos_time
	ldr	r7, [r1, #0]	@ g_TraceBsPeriod, g_TraceBsPeriod
	rsb	sl, ip, r0	@ tmp203, tmp204, ThisTime.3349
	mov	r2, r0	@ ThisTime.3349,
	cmp	sl, r7	@ tmp203, g_TraceBsPeriod
	movls	r2, r5, asl #24	@, InstID,
	strls	r2, [fp, #-156]	@, %sfp
	bls	.L924	@,
	mov	lr, r5, asl #24	@, InstID,
	str	r2, [r3, #936]	@ ThisTime.3349, last_rec_pos_time
	ldr	r0, .L960	@,
	movw	r1, #4457	@,
	mov	r2, lr	@,
	str	lr, [fp, #-156]	@, %sfp
	bl	DBG_AddTrace	@
	b	.L924	@
.L961:
	.align	2
.L960:
	.word	.LANCHOR1+348
	.fnend
	.size	FillRawData, .-FillRawData
	.align	2
	.global	SM_Wakeup
	.type	SM_Wakeup, %function
SM_Wakeup:
	.fnstart
.LFB1617:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp211,
	movt	r4, #:upper16:.LANCHOR0	@ tmp211,
	ldr	r2, [r4, #40]	@ D.53363, <variable>.pSmInstArray
	cmp	r2, #0	@ D.53363,
	beq	.L963	@,
	movw	r0, #:lower16:190880	@ tmp151,
	movt	r0, #:upper16:190880	@ tmp151,
	ldr	r3, [r2, r0]	@ <variable>.Mode, <variable>.Mode
	cmp	r3, #1	@ <variable>.Mode,
	beq	.L982	@,
.L963:
	ldr	r2, [r4, #88]	@ temp.3409, <variable>.pSmInstArray
	cmp	r2, #0	@ temp.3409,
	beq	.L964	@,
	movw	r1, #:lower16:190880	@ tmp154,
	movt	r1, #:upper16:190880	@ tmp154,
	ldr	r0, [r2, r1]	@ <variable>.Mode, <variable>.Mode
	cmp	r0, #1	@ <variable>.Mode,
	beq	.L983	@,
.L964:
	ldr	r2, [r4, #136]	@ temp.3411, <variable>.pSmInstArray
	cmp	r2, #0	@ temp.3411,
	beq	.L965	@,
	movw	ip, #:lower16:190880	@ tmp157,
	movt	ip, #:upper16:190880	@ tmp157,
	ldr	r5, [r2, ip]	@ <variable>.Mode, <variable>.Mode
	cmp	r5, #1	@ <variable>.Mode,
	beq	.L984	@,
.L965:
	ldr	r2, [r4, #184]	@ temp.3413, <variable>.pSmInstArray
	cmp	r2, #0	@ temp.3413,
	beq	.L966	@,
	movw	r3, #:lower16:190880	@ tmp160,
	movt	r3, #:upper16:190880	@ tmp160,
	ldr	lr, [r2, r3]	@ <variable>.Mode, <variable>.Mode
	cmp	lr, #1	@ <variable>.Mode,
	beq	.L985	@,
.L966:
	ldr	r2, [r4, #232]	@ temp.3415, <variable>.pSmInstArray
	cmp	r2, #0	@ temp.3415,
	beq	.L967	@,
	movw	r1, #:lower16:190880	@ tmp163,
	movt	r1, #:upper16:190880	@ tmp163,
	ldr	r0, [r2, r1]	@ <variable>.Mode, <variable>.Mode
	cmp	r0, #1	@ <variable>.Mode,
	beq	.L986	@,
.L967:
	ldr	r2, [r4, #280]	@ temp.3417, <variable>.pSmInstArray
	cmp	r2, #0	@ temp.3417,
	beq	.L968	@,
	movw	ip, #:lower16:190880	@ tmp166,
	movt	ip, #:upper16:190880	@ tmp166,
	ldr	r5, [r2, ip]	@ <variable>.Mode, <variable>.Mode
	cmp	r5, #1	@ <variable>.Mode,
	beq	.L987	@,
.L968:
	ldr	r2, [r4, #328]	@ temp.3419, <variable>.pSmInstArray
	cmp	r2, #0	@ temp.3419,
	beq	.L969	@,
	movw	r3, #:lower16:190880	@ tmp169,
	movt	r3, #:upper16:190880	@ tmp169,
	ldr	lr, [r2, r3]	@ <variable>.Mode, <variable>.Mode
	cmp	lr, #1	@ <variable>.Mode,
	beq	.L988	@,
.L969:
	ldr	r2, [r4, #376]	@ temp.3421, <variable>.pSmInstArray
	cmp	r2, #0	@ temp.3421,
	beq	.L970	@,
	movw	r1, #:lower16:190880	@ tmp172,
	movt	r1, #:upper16:190880	@ tmp172,
	ldr	r0, [r2, r1]	@ <variable>.Mode, <variable>.Mode
	cmp	r0, #1	@ <variable>.Mode,
	beq	.L989	@,
.L970:
	ldr	r2, [r4, #424]	@ temp.3423, <variable>.pSmInstArray
	cmp	r2, #0	@ temp.3423,
	beq	.L971	@,
	movw	ip, #:lower16:190880	@ tmp175,
	movt	ip, #:upper16:190880	@ tmp175,
	ldr	r5, [r2, ip]	@ <variable>.Mode, <variable>.Mode
	cmp	r5, #1	@ <variable>.Mode,
	beq	.L990	@,
.L971:
	ldr	r2, [r4, #472]	@ temp.3425, <variable>.pSmInstArray
	cmp	r2, #0	@ temp.3425,
	beq	.L972	@,
	movw	r3, #:lower16:190880	@ tmp178,
	movt	r3, #:upper16:190880	@ tmp178,
	ldr	lr, [r2, r3]	@ <variable>.Mode, <variable>.Mode
	cmp	lr, #1	@ <variable>.Mode,
	beq	.L991	@,
.L972:
	ldr	r2, [r4, #520]	@ temp.3427, <variable>.pSmInstArray
	cmp	r2, #0	@ temp.3427,
	beq	.L973	@,
	movw	r1, #:lower16:190880	@ tmp181,
	movt	r1, #:upper16:190880	@ tmp181,
	ldr	r0, [r2, r1]	@ <variable>.Mode, <variable>.Mode
	cmp	r0, #1	@ <variable>.Mode,
	beq	.L992	@,
.L973:
	ldr	r2, [r4, #568]	@ temp.3429, <variable>.pSmInstArray
	cmp	r2, #0	@ temp.3429,
	beq	.L974	@,
	movw	ip, #:lower16:190880	@ tmp184,
	movt	ip, #:upper16:190880	@ tmp184,
	ldr	r5, [r2, ip]	@ <variable>.Mode, <variable>.Mode
	cmp	r5, #1	@ <variable>.Mode,
	beq	.L993	@,
.L974:
	ldr	r2, [r4, #616]	@ temp.3431, <variable>.pSmInstArray
	cmp	r2, #0	@ temp.3431,
	beq	.L975	@,
	movw	r3, #:lower16:190880	@ tmp187,
	movt	r3, #:upper16:190880	@ tmp187,
	ldr	lr, [r2, r3]	@ <variable>.Mode, <variable>.Mode
	cmp	lr, #1	@ <variable>.Mode,
	beq	.L994	@,
.L975:
	ldr	r2, [r4, #664]	@ temp.3433, <variable>.pSmInstArray
	cmp	r2, #0	@ temp.3433,
	beq	.L976	@,
	movw	r1, #:lower16:190880	@ tmp190,
	movt	r1, #:upper16:190880	@ tmp190,
	ldr	r0, [r2, r1]	@ <variable>.Mode, <variable>.Mode
	cmp	r0, #1	@ <variable>.Mode,
	beq	.L995	@,
.L976:
	ldr	r2, [r4, #712]	@ temp.3435, <variable>.pSmInstArray
	cmp	r2, #0	@ temp.3435,
	beq	.L977	@,
	movw	ip, #:lower16:190880	@ tmp193,
	movt	ip, #:upper16:190880	@ tmp193,
	ldr	r5, [r2, ip]	@ <variable>.Mode, <variable>.Mode
	cmp	r5, #1	@ <variable>.Mode,
	beq	.L996	@,
.L977:
	ldr	r2, [r4, #760]	@ temp.3407, <variable>.pSmInstArray
	cmp	r2, #0	@ temp.3407,
	beq	.L978	@,
	movw	lr, #:lower16:190880	@ tmp196,
	movt	lr, #:upper16:190880	@ tmp196,
	ldr	r4, [r2, lr]	@ <variable>.Mode, <variable>.Mode
	cmp	r4, #1	@ <variable>.Mode,
	beq	.L997	@,
.L978:
	mov	r4, #0	@ tmp201,
	ldr	r2, .L998	@,
	movw	r3, #5974	@,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC150	@,
	movt	r1, #:upper16:.LC150	@,
	mov	r5, #1	@ tmp202,
	stmia	sp, {r4, r5}	@ phole stm
	bl	dprint_vfmw	@
	mov	r0, r4	@, tmp201
	bl	SCDDRV_CheckDevice	@
	subs	r5, r0, #0	@ D.53370,
	bne	.L979	@,
	ldr	r2, .L998	@,
	movw	r3, #5977	@,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC151	@,
	movt	r1, #:upper16:.LC151	@,
	str	r5, [sp, #0]	@ D.53370,
	bl	dprint_vfmw	@
	mov	r0, r5	@, D.53370
	bl	SCDDRV_ActivateSCD	@
.L981:
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L979:
	movw	r1, #:lower16:.LC152	@,
	ldr	r2, .L998	@,
	movt	r1, #:upper16:.LC152	@,
	movw	r3, #5982	@,
	mov	r0, #26	@,
	str	r4, [sp, #0]	@ tmp201,
	bl	dprint_vfmw	@
	b	.L981	@
.L982:
	mov	r0, #0	@,
	bl	FillRawData	@
	b	.L963	@
.L983:
	bl	FillRawData	@
	b	.L964	@
.L984:
	mov	r0, #2	@,
	bl	FillRawData	@
	b	.L965	@
.L985:
	mov	r0, #3	@,
	bl	FillRawData	@
	b	.L966	@
.L986:
	mov	r0, #4	@,
	bl	FillRawData	@
	b	.L967	@
.L987:
	mov	r0, #5	@,
	bl	FillRawData	@
	b	.L968	@
.L988:
	mov	r0, #6	@,
	bl	FillRawData	@
	b	.L969	@
.L989:
	mov	r0, #7	@,
	bl	FillRawData	@
	b	.L970	@
.L990:
	mov	r0, #8	@,
	bl	FillRawData	@
	b	.L971	@
.L991:
	mov	r0, #9	@,
	bl	FillRawData	@
	b	.L972	@
.L992:
	mov	r0, #10	@,
	bl	FillRawData	@
	b	.L973	@
.L993:
	mov	r0, #11	@,
	bl	FillRawData	@
	b	.L974	@
.L994:
	mov	r0, #12	@,
	bl	FillRawData	@
	b	.L975	@
.L995:
	mov	r0, #13	@,
	bl	FillRawData	@
	b	.L976	@
.L996:
	mov	r0, #14	@,
	bl	FillRawData	@
	b	.L977	@
.L997:
	mov	r0, #15	@,
	bl	FillRawData	@
	b	.L978	@
.L999:
	.align	2
.L998:
	.word	.LANCHOR1+360
	.fnend
	.size	SM_Wakeup, .-SM_Wakeup
	.align	2
	.global	SM_SeekPts
	.type	SM_SeekPts, %function
SM_SeekPts:
	.fnstart
.LFB1608:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #68
	sub	sp, sp, #68	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	add	r2, r0, r0, asl #1	@, tmp215, ChanID, ChanID,
	movw	r4, #:lower16:.LANCHOR0	@ tmp211,
	movt	r4, #:upper16:.LANCHOR0	@ tmp211,
	add	r3, r4, r2, asl #4	@, tmp217, tmp211, tmp215,
	str	r0, [fp, #-56]	@ ChanID, %sfp
	str	r1, [fp, #-60]	@ pArgs, %sfp
	ldr	r4, [r3, #40]	@ pSmInstArray, <variable>.pSmInstArray
	cmp	r4, #0	@ pSmInstArray,
	mvneq	r0, #0	@ D.52825,
	bne	.L1087	@,
.L1002:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L1087:
	ldr	r1, [fp, #-60]	@, %sfp
	movw	sl, #:lower16:190760	@ tmp220,
	movt	sl, #:upper16:190760	@ tmp220,
	ldr	r7, [fp, #-60]	@, %sfp
	movw	r5, #:lower16:190704	@ tmp224,
	movt	r5, #:upper16:190704	@ tmp224,
	ldrd	r0, [r1]	@,
	add	r8, r4, #98304	@ pStreamSegArray, pSmInstArray,
	movw	r3, #:lower16:190712	@ tmp223,
	add	r8, r8, #232	@ pStreamSegArray, pStreamSegArray,
	movt	r3, #:upper16:190712	@ tmp223,
	strd	r0, [fp, #-52]	@,,
	ldr	r9, [r4, sl]	@, <variable>.SmPushRaw.PushRawOver
	ldr	r1, [fp, #-60]	@, %sfp
	cmp	r9, #1	@,
	str	r9, [fp, #-64]	@, %sfp
	ldrd	r6, [r7, #8]	@,,
	moveq	r9, #3	@ tmp222,
	strd	r6, [fp, #-92]	@,,
	ldrd	r0, [r1, #16]	@,,
	strd	r0, [fp, #-76]	@,,
	streq	r9, [r4, sl]	@ tmp222, <variable>.SmPushRaw.PushRawOver
	movw	r9, #:lower16:190708	@ tmp227,
	movt	r9, #:upper16:190708	@ tmp227,
	ldr	ip, [r4, r5]	@ <variable>.StreamSegArray.Head, <variable>.StreamSegArray.Head
	movw	sl, #:lower16:954437177	@ tmp637,
	movt	sl, #:upper16:954437177	@ tmp637,
	ldr	r7, [r4, r9]	@ prephitmp.3451, <variable>.StreamSegArray.Tail
	mov	r5, ip	@ i.3524, <variable>.StreamSegArray.Head
	str	ip, [r4, r3]	@ <variable>.StreamSegArray.Head, <variable>.StreamSegArray.History
.L1077:
	cmp	r5, r7	@ i.3524, prephitmp.3451
	mov	r6, r5, asl #2	@ tmp593, i.3524,
	mov	r1, r5	@, i.3524
	mov	r0, r8	@, pStreamSegArray
	add	r3, r6, r5	@ tmp269, tmp593, i.3524
	beq	.L1088	@,
.L1004:
	add	r3, r4, r3, asl #4	@, tmp271, pSmInstArray, tmp269,
	movw	ip, #:lower16:98576	@ tmp274,
	add	r2, r3, #98304	@ tmp280, tmp271,
	movt	ip, #:upper16:98576	@ tmp274,
	add	r3, r2, #240	@ tmp272, tmp272,
	add	r2, r2, #272	@ tmp280, tmp280,
	ldrsb	r3, [r3, #4]	@ <variable>.SegState, <variable>.SegState
	cmp	r3, #1	@ <variable>.SegState,
	bne	.L1007	@,
	ldrd	r2, [r2]	@ D.52853, <variable>.RawPts
	mvn	r0, #0	@,
	mvn	r1, #0	@,
	cmp	r3, r1	@ D.52853,
	cmpeq	r2, r0	@ D.52853,
	beq	.L1089	@,
	add	r0, r5, #1	@, i.3524,
	str	r0, [fp, #-80]	@, %sfp
	ldrd	r0, [fp, #-52]	@,,
	cmp	r1, r3	@, D.52853
	cmpeq	r0, r2	@, D.52853
	ldr	r1, [fp, #-80]	@, %sfp
	ldr	r0, [fp, #-80]	@, %sfp
	smull	r1, r2, sl, r1	@, tmp291, tmp637,
	mov	r3, r0, asr #31	@ tmp294,,
	bls	.L1010	@,
	rsb	r3, r3, r2, asr #8	@, i.3524, tmp294, tmp291,
	movw	r7, #:lower16:190712	@,
	movt	r7, #:upper16:190712	@,
	add	r2, r3, r3, asl #3	@, tmp297, i.3524, i.3524,
	str	r5, [r4, r7]	@ i.3524, <variable>.StreamSegArray.History
	ldr	r7, [r4, r9]	@ prephitmp.3451, <variable>.StreamSegArray.Tail
	sub	r5, r0, r2, asl #7	@ i.3524,, tmp297,
	mov	r0, r8	@, pStreamSegArray
	cmp	r5, r7	@ i.3524, prephitmp.3451
	mov	r6, r5, asl #2	@ tmp593, i.3524,
	mov	r1, r5	@, i.3524
	add	r3, r6, r5	@ tmp269, tmp593, i.3524
	bne	.L1004	@,
.L1088:
	movw	r0, #:lower16:190704	@ tmp228,
	movt	r0, #:upper16:190704	@ tmp228,
	ldr	r6, [r4, r0]	@ j, <variable>.StreamSegArray.Head
	cmp	r5, r6	@ i.3524, j
	beq	.L1005	@,
	movw	r7, #:lower16:190740	@ tmp619,
	movw	r5, #:lower16:190744	@ tmp621,
	movw	r9, #:lower16:954437177	@ tmp622,
	movw	sl, #:lower16:190708	@ tmp623,
	movt	r7, #:upper16:190740	@ tmp619,
	movt	r5, #:upper16:190744	@ tmp621,
	movt	r9, #:upper16:954437177	@ tmp622,
	movt	sl, #:upper16:190708	@ tmp623,
.L1080:
	add	ip, r6, r6, asl #2	@, tmp232, j, j,
	mov	r1, r6	@, j
	add	r6, r6, #1	@ D.52848, j,
	mov	r0, r8	@, pStreamSegArray
	add	lr, r4, ip, asl #4	@, tmp234, pSmInstArray, tmp232,
	mov	ip, #2	@,
	add	r3, lr, #98304	@ tmp245, tmp234,
	add	lr, r3, #240	@ tmp235, tmp235,
	add	r3, r3, #256	@ tmp245, tmp245,
	strb	ip, [lr, #4]	@, <variable>.SegState
	ldr	ip, [r3, #0]	@ <variable>.LenInByte, <variable>.LenInByte
	ldr	r2, [r4, r7]	@ <variable>.StreamSegArray.SegFreshSize, <variable>.StreamSegArray.SegFreshSize
	ldr	lr, [r4, r5]	@ <variable>.StreamSegArray.SegFreshNum, <variable>.StreamSegArray.SegFreshNum
	rsb	r3, ip, r2	@ D.52842, <variable>.LenInByte, <variable>.StreamSegArray.SegFreshSize
	sub	ip, lr, #1	@ D.52844, <variable>.StreamSegArray.SegFreshNum,
	bic	r2, r3, r3, asr #31	@ tmp253, D.52842
	bic	lr, ip, ip, asr #31	@ tmp255, D.52844
	str	r2, [r4, r7]	@ tmp253, <variable>.StreamSegArray.SegFreshSize
	str	lr, [r4, r5]	@ tmp255, <variable>.StreamSegArray.SegFreshNum
	bl	ReleaseStreamSeg	@
	smull	r0, r1, r9, r6	@, tmp256, tmp622, D.52848
	mov	r3, r6, asr #31	@ tmp259, D.52848,
	ldr	ip, [r4, sl]	@ <variable>.StreamSegArray.Tail, <variable>.StreamSegArray.Tail
	rsb	r2, r3, r1, asr #8	@, j, tmp259, tmp256,
	add	r1, r2, r2, asl #3	@, tmp262, j, j,
	sub	r6, r6, r1, asl #7	@ j, D.52848, tmp262,
	cmp	ip, r6	@ <variable>.StreamSegArray.Tail, j
	bne	.L1080	@,
.L1005:
	mov	r1, #0	@,
	ldr	r0, [fp, #-56]	@, %sfp
	bl	DeleteRawPacketInBuffer	@
	movw	ip, #:lower16:98512	@ tmp410,
	movw	r0, #:lower16:98516	@ tmp411,
	movt	ip, #:upper16:98512	@ tmp410,
	movt	r0, #:upper16:98516	@ tmp411,
	add	r1, r4, #208	@, pSmInstArray,
	str	r1, [fp, #-96]	@, %sfp
	movw	r9, #:lower16:98512	@ tmp414,
	ldr	r1, [r4, ip]	@ D.52882, <variable>.RawPacketArray.Head
	movt	r9, #:upper16:98512	@ tmp414,
	ldr	r3, [r4, r0]	@ D.52883, <variable>.RawPacketArray.Tail
	movw	r7, #:lower16:98520	@ tmp413,
	movt	r7, #:upper16:98520	@ tmp413,
	cmp	r1, r3	@ D.52882, D.52883
	addgt	r3, r3, #1024	@ tmp412, D.52883,
	rsb	sl, r1, r3	@, D.52882, tmp412
	str	sl, [fp, #-80]	@, %sfp
	movw	sl, #:lower16:98516	@ tmp415,
	movt	sl, #:upper16:98516	@ tmp415,
	ldr	r3, [r4, r9]	@ i, <variable>.RawPacketArray.Head
	mov	r9, r7	@ tmp615, tmp413
	ldr	ip, [r4, sl]	@ prephitmp.3456, <variable>.RawPacketArray.Tail
	str	r1, [r4, r7]	@ D.52882, <variable>.RawPacketArray.History
.L1078:
	add	lr, r3, r3, asl #1	@, tmp423, i, i,
	cmp	r3, ip	@ i, prephitmp.3456
	add	r2, r4, lr, asl #5	@, tmp425, pSmInstArray, tmp423,
	beq	.L1090	@,
.L1021:
	ldrd	r0, [r2, #224]	@ temp.3504, tmp425,
	mvn	r6, #0	@,
	mvn	r7, #0	@,
	add	r8, r2, #224	@ tmp426, tmp425,
	cmp	r1, r7	@ temp.3504,
	cmpeq	r0, r6	@ temp.3504,
	beq	.L1091	@,
	ldrd	r6, [fp, #-52]	@,,
	add	r2, r3, #1	@ temp.3506, i,
	cmp	r7, r1	@, temp.3504
	cmpeq	r6, r0	@, temp.3504
	mov	r5, r2, asr #31	@ tmp435, temp.3506,
	bls	.L1028	@,
	mov	r5, r5, lsr #22	@ tmp436, tmp435,
	str	r3, [r4, r9]	@ i, <variable>.RawPacketArray.History
	add	r0, r2, r5	@ tmp437, temp.3506, tmp436
	ldr	ip, [r4, sl]	@ prephitmp.3456, <variable>.RawPacketArray.Tail
	mov	r3, r0, asl #22	@ tmp438, tmp437,
	mov	r2, r3, lsr #22	@ tmp438, tmp438,
	rsb	r3, r5, r2	@ i, tmp436, tmp438
	cmp	r3, ip	@ i, prephitmp.3456
	add	lr, r3, r3, asl #1	@, tmp423, i, i,
	add	r2, r4, lr, asl #5	@, tmp425, pSmInstArray, tmp423,
	bne	.L1021	@,
.L1090:
	movw	r6, #:lower16:98512	@ tmp416,
	movt	r6, #:upper16:98512	@ tmp416,
	ldr	r2, [r4, r6]	@ temp.3481, <variable>.RawPacketArray.Head
	cmp	r3, r2	@ i, temp.3481
	rsblt	r1, r2, #1024	@ tmp417, temp.3481,
	rsbge	r1, r2, r3	@ DelNum.3475, temp.3481, i
	addlt	r1, r1, r3	@ DelNum.3475, tmp417, i
	cmp	r1, #0	@ DelNum.3475,
	movweq	r3, #:lower16:98520	@ tmp418,
	movteq	r3, #:upper16:98520	@ tmp418,
	streq	r2, [r4, r3]	@ temp.3481, <variable>.RawPacketArray.History
	bne	.L1092	@,
.L1025:
	ldr	r9, [fp, #-80]	@, %sfp
	ldrd	r0, [fp, #-76]	@,,
	mov	r6, r9	@ RawNumInVfmw,
	mov	r7, r6, asr #31	@ RawNumInVfmw
	cmp	r1, r7	@, RawNumInVfmw
	cmpeq	r0, r6	@, RawNumInVfmw
	bls	.L1093	@,
	ldrd	r2, [fp, #-76]	@,,
	mov	ip, #0	@,
	subs	r6, r2, r6	@ RawNumToSeek,, RawNumInVfmw
	sbc	r7, r3, r7	@ RawNumToSeek,, RawNumInVfmw
	movw	r2, #1023	@ tmp506,
	and	r3, ip, r7	@,, RawNumToSeek
	and	r2, r2, r6	@ tmp505, tmp506, RawNumToSeek
	mov	lr, r6, lsr #10	@ tmp585, RawNumToSeek,
	orrs	r8, r2, r3	@, tmp505
	orr	r0, lr, r7, asl #22	@, tmp648, tmp585, RawNumToSeek,
	addne	r0, r0, #1	@ SeekTime, tmp648,
	add	r8, r0, #1	@, SeekTime,
	str	r8, [fp, #-100]	@, %sfp
	cmp	r8, #0	@,
	ble	.L1044	@,
	movw	sl, #:lower16:98520	@ tmp607,
	movt	sl, #:upper16:98520	@ tmp607,
	movw	r3, #:lower16:98512	@,
	movw	r6, #:lower16:98516	@,
	movt	r3, #:upper16:98512	@,
	movt	r6, #:upper16:98516	@,
	mov	r9, #0	@,
	str	r3, [fp, #-76]	@, %sfp
	str	r6, [fp, #-64]	@, %sfp
	str	r9, [fp, #-80]	@, %sfp
.L1063:
	mov	r1, #0	@,
	ldr	r0, [fp, #-56]	@, %sfp
	bl	DeleteRawPacketInBuffer	@
	ldr	r0, [fp, #-56]	@, %sfp
	bl	FillRawData	@
	ldr	r1, [fp, #-76]	@, %sfp
	ldr	r2, [fp, #-64]	@, %sfp
	ldr	ip, [r4, r1]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	ldr	r0, [r4, r2]	@ prephitmp.3460, <variable>.RawPacketArray.Tail
	mov	r3, ip	@ i.3478, <variable>.RawPacketArray.Head
	str	ip, [r4, sl]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.History
.L1079:
	add	lr, r3, r3, asl #1	@, tmp525, i.3478, i.3478,
	cmp	r3, r0	@ i.3478, prephitmp.3460
	add	r2, r4, lr, asl #5	@, tmp527, pSmInstArray, tmp525,
	beq	.L1094	@,
.L1045:
	ldrd	r8, [r2, #224]	@ D.52897, tmp527,
	mvn	r6, #0	@,
	mvn	r7, #0	@,
	add	r5, r2, #224	@ tmp528, tmp527,
	cmp	r9, r7	@ D.52897,
	cmpeq	r8, r6	@ D.52897,
	beq	.L1095	@,
	ldrd	r6, [fp, #-52]	@,,
	add	r1, r3, #1	@ temp.3489, i.3478,
	cmp	r7, r9	@, D.52897
	cmpeq	r6, r8	@, D.52897
	mov	ip, r1, asr #31	@ tmp537, temp.3489,
	bls	.L1052	@,
	mov	r6, ip, lsr #22	@ tmp538, tmp537,
	str	r3, [r4, sl]	@ i.3478, <variable>.RawPacketArray.History
	add	lr, r1, r6	@ tmp539, temp.3489, tmp538
	ldr	r7, [fp, #-64]	@, %sfp
	mov	r3, lr, asl #22	@ tmp540, tmp539,
	ldr	r0, [r4, r7]	@ prephitmp.3460, <variable>.RawPacketArray.Tail
	mov	r9, r3, lsr #22	@ tmp540, tmp540,
	rsb	r3, r6, r9	@ i.3478, tmp538, tmp540
	cmp	r3, r0	@ i.3478, prephitmp.3460
	add	lr, r3, r3, asl #1	@, tmp525, i.3478, i.3478,
	add	r2, r4, lr, asl #5	@, tmp527, pSmInstArray, tmp525,
	bne	.L1045	@,
.L1094:
	ldr	r6, [fp, #-76]	@, %sfp
	ldr	r2, [r4, r6]	@ temp.3485, <variable>.RawPacketArray.Head
	cmp	r3, r2	@ i.3478, temp.3485
	rsblt	r1, r2, #1024	@ tmp519, temp.3485,
	rsbge	r1, r2, r3	@ DelNum.3476, temp.3485, i.3478
	addlt	r1, r1, r3	@ DelNum.3476, tmp519, i.3478
	cmp	r1, #0	@ DelNum.3476,
	streq	r2, [r4, sl]	@ temp.3485, <variable>.RawPacketArray.History
	bne	.L1096	@,
.L1049:
	ldr	r9, [fp, #-80]	@, %sfp
	ldr	r0, [fp, #-100]	@, %sfp
	add	r9, r9, #1	@,,
	str	r9, [fp, #-80]	@, %sfp
	cmp	r9, r0	@,
	blt	.L1063	@,
.L1044:
	mvn	r0, #1	@ D.52825,
	b	.L1002	@
.L1007:
	add	r5, r5, #1	@ temp.3548, i.3524,
	bl	ReleaseStreamSeg	@
	ldr	r7, [r4, r9]	@ prephitmp.3451, <variable>.StreamSegArray.Tail
	smull	r3, r2, sl, r5	@, tmp401, tmp637, temp.3548
	mov	ip, r5, asr #31	@ tmp404, temp.3548,
	rsb	r0, ip, r2, asr #8	@, i.3524, tmp404, tmp401,
	add	r6, r0, r0, asl #3	@, tmp407, i.3524, i.3524,
	sub	r5, r5, r6, asl #7	@ i.3524, temp.3548, tmp407,
	b	.L1077	@
.L1028:
	beq	.L1097	@,
	bcs	.L1078	@,
	movw	r2, #:lower16:98520	@ tmp460,
	movt	r2, #:upper16:98520	@ tmp460,
	mov	ip, r8	@ tmp426, tmp426
	ldr	r1, [r4, r2]	@ i.3512, <variable>.RawPacketArray.History
	add	r9, r1, r1, asl #1	@, tmp464, i.3512, i.3512,
	add	r8, r4, r9, asl #5	@, tmp466, pSmInstArray, tmp464,
	ldrd	r6, [r8, #224]	@, tmp466,
	strd	r6, [fp, #-76]	@,,
	mvn	r6, #0	@ tmp427,
	ldrd	r8, [fp, #-76]	@,,
	mvn	r7, #0	@,
	cmp	r9, r7	@, tmp427
	cmpeq	r8, r6	@, tmp427
	beq	.L1083	@,
	ldrd	r6, [fp, #-52]	@,,
	ldrd	r8, [fp, #-76]	@,,
	cmp	r7, r9	@,
	cmpeq	r6, r8	@,
	bls	.L1036	@,
	subs	r6, r6, r8	@ tmp477, tmp477,
	sbc	r7, r7, r9	@ tmp477, tmp477,
	ldrd	r8, [fp, #-92]	@,,
	cmp	r9, r7	@, tmp477
	cmpeq	r8, r6	@, tmp477
	bcs	.L1036	@,
.L1083:
	str	r3, [r4, r2]	@ i, <variable>.RawPacketArray.History
	ldrd	r0, [ip]	@, <variable>.Pts
	strd	r0, [fp, #-76]	@,,
.L1035:
	movw	r6, #:lower16:98512	@ tmp486,
	movt	r6, #:upper16:98512	@ tmp486,
	ldr	r1, [r4, r6]	@ temp.3514, <variable>.RawPacketArray.Head
	cmp	r3, r1	@ i, temp.3514
	rsblt	r1, r1, #1024	@ tmp487, temp.3514,
	rsbge	r3, r1, r3	@ DelNum.3473, temp.3514, i
	addlt	r3, r1, r3	@ DelNum.3473, tmp487, i
	cmp	r3, #0	@ DelNum.3473,
	beq	.L1039	@,
	movw	r5, #:lower16:190752	@ tmp488,
	movt	r5, #:upper16:190752	@ tmp488,
	ldr	r0, [fp, #-64]	@, %sfp
	ldr	lr, [r4, r5]	@ <variable>.SmPushRaw.PushRawNum, <variable>.SmPushRaw.PushRawNum
	cmp	r3, lr	@ DelNum.3473, <variable>.SmPushRaw.PushRawNum
	cmple	r0, #1	@,,
	movne	r5, #0	@, tmp496
	moveq	r5, #1	@, tmp496
	bne	.L1040	@,
.L1039:
	ldrd	r6, [fp, #-76]	@,,
	movw	r2, #:lower16:98512	@ tmp498,
	ldr	r8, [fp, #-60]	@, %sfp
	movt	r2, #:upper16:98512	@ tmp498,
	strd	r6, [r8]	@,
.L1086:
	ldr	ip, [r4, r2]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	movw	r3, #:lower16:98520	@ tmp497,
	ldr	r9, [fp, #-64]	@, %sfp
	movt	r3, #:upper16:98520	@ tmp497,
	movw	r2, #:lower16:190760	@ tmp500,
	movt	r2, #:upper16:190760	@ tmp500,
	mov	r0, #0	@ D.52825,
	str	ip, [r4, r3]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.History
	str	r9, [r4, r2]	@, <variable>.SmPushRaw.PushRawOver
	b	.L1002	@
.L1010:
	beq	.L1098	@,
	bcs	.L1077	@,
	movw	r3, #:lower16:190712	@ tmp344,
	movt	r3, #:upper16:190712	@ tmp344,
	mvn	r1, #0	@,
	ldr	r2, [r4, r3]	@ i.3537, <variable>.StreamSegArray.History
	add	r6, r2, r2, asl #2	@, tmp348, i.3537, i.3537,
	add	r0, r4, r6, asl #4	@, tmp350, pSmInstArray, tmp348,
	ldrd	r6, [r0, ip]	@ D.52867, tmp350, tmp274
	mvn	r0, #0	@ tmp281,
	cmp	r7, r1	@ D.52867, tmp281
	cmpeq	r6, r0	@ D.52867, tmp281
	beq	.L1081	@,
	ldrd	r0, [fp, #-52]	@,,
	cmp	r1, r7	@, D.52867
	cmpeq	r0, r6	@, D.52867
	bls	.L1016	@,
	subs	r6, r0, r6	@ tmp354,, D.52867
	sbc	r7, r1, r7	@ tmp354,, D.52867
	ldrd	r0, [fp, #-92]	@,,
	cmp	r1, r7	@, tmp354
	cmpeq	r0, r6	@, tmp354
	bcc	.L1081	@,
.L1016:
	mov	r5, r2	@ i.3524, i.3537
.L1015:
	movw	r3, #:lower16:190704	@ tmp356,
	movt	r3, #:upper16:190704	@ tmp356,
	ldr	r6, [r4, r3]	@ j.3480, <variable>.StreamSegArray.Head
	cmp	r5, r6	@ i.3524, j.3480
	moveq	r3, r5	@ j.3479, i.3524
	beq	.L1018	@,
	movw	sl, #:lower16:190740	@ tmp632,
	movw	r7, #:lower16:190744	@ tmp634,
	movw	r5, #:lower16:954437177	@ tmp635,
	movw	r9, #:lower16:190712	@ tmp636,
	movt	sl, #:upper16:190740	@ tmp632,
	movt	r7, #:upper16:190744	@ tmp634,
	movt	r5, #:upper16:954437177	@ tmp635,
	movt	r9, #:upper16:190712	@ tmp636,
.L1070:
	add	ip, r6, r6, asl #2	@, tmp360, j.3480, j.3480,
	mov	r1, r6	@, j.3480
	mov	r0, r8	@, pStreamSegArray
	add	lr, r4, ip, asl #4	@, tmp362, pSmInstArray, tmp360,
	mov	ip, #2	@,
	add	r3, lr, #98304	@ tmp373, tmp362,
	add	lr, r3, #240	@ tmp363, tmp363,
	add	r3, r3, #256	@ tmp373, tmp373,
	strb	ip, [lr, #4]	@, <variable>.SegState
	ldr	lr, [r3, #0]	@ <variable>.LenInByte, <variable>.LenInByte
	ldr	r2, [r4, sl]	@ <variable>.StreamSegArray.SegFreshSize, <variable>.StreamSegArray.SegFreshSize
	ldr	ip, [r4, r7]	@ <variable>.StreamSegArray.SegFreshNum, <variable>.StreamSegArray.SegFreshNum
	rsb	r3, lr, r2	@ temp.3541, <variable>.LenInByte, <variable>.StreamSegArray.SegFreshSize
	sub	lr, ip, #1	@ temp.3543, <variable>.StreamSegArray.SegFreshNum,
	bic	r2, r3, r3, asr #31	@ tmp381, temp.3541
	bic	r3, lr, lr, asr #31	@ tmp383, temp.3543
	str	r2, [r4, sl]	@ tmp381, <variable>.StreamSegArray.SegFreshSize
	str	r3, [r4, r7]	@ tmp383, <variable>.StreamSegArray.SegFreshNum
	bl	ReleaseStreamSeg	@
	add	ip, r6, #1	@ temp.3546, j.3480,
	ldr	r3, [r4, r9]	@ j.3479, <variable>.StreamSegArray.History
	smull	r0, r1, r5, ip	@, tmp384, tmp635, temp.3546
	mov	r2, ip, asr #31	@ tmp387, temp.3546,
	rsb	r0, r2, r1, asr #8	@, j.3480, tmp387, tmp384,
	add	r2, r0, r0, asl #3	@, tmp390, j.3480, j.3480,
	sub	r6, ip, r2, asl #7	@ j.3480, temp.3546, tmp390,
	cmp	r3, r6	@ j.3479, j.3480
	bne	.L1070	@,
.L1018:
	add	r3, r3, r3, asl #2	@, tmp396, j.3479, j.3479,
	movw	r2, #:lower16:98576	@ tmp393,
	movt	r2, #:upper16:98576	@ tmp393,
	ldr	r1, [fp, #-60]	@, %sfp
	add	r4, r4, r3, asl #4	@, tmp398, pSmInstArray, tmp396,
	mov	r0, #0	@ D.52825,
	ldrd	r2, [r2, r4]	@ <variable>.RawPts, tmp393, tmp398
	strd	r2, [r1]	@ <variable>.RawPts,
	b	.L1002	@
.L1091:
	add	r6, r3, #1	@ temp.3505, i,
	mov	r7, r6, asr #31	@ tmp428, temp.3505,
	mov	r2, r7, lsr #22	@ tmp429, tmp428,
	add	lr, r6, r2	@ tmp430, temp.3505, tmp429
	mov	r0, lr, asl #22	@ tmp431, tmp430,
	mov	r3, r0, lsr #22	@ tmp431, tmp431,
	rsb	r3, r2, r3	@ i, tmp429, tmp431
	b	.L1078	@
.L1089:
	add	r5, r5, #1	@ temp.3523, i.3524,
	smull	r1, ip, sl, r5	@, tmp282, tmp637, temp.3523
	mov	r1, r5, asr #31	@ tmp285, temp.3523,
	rsb	r6, r1, ip, asr #8	@, i.3524, tmp285, tmp282,
	add	r0, r6, r6, asl #3	@, tmp288, i.3524, i.3524,
	sub	r5, r5, r0, asl #7	@ i.3524, temp.3523, tmp288,
	b	.L1077	@
.L1093:
	mov	r2, r0	@,
	mov	r3, r1	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC153	@,
	movt	r1, #:upper16:.LC153	@,
	strd	r6, [sp]	@ RawNumInVfmw,
	bl	dprint_vfmw	@
	mvn	r0, #1	@ D.52825,
	b	.L1002	@
.L1092:
	movw	r7, #:lower16:98520	@ tmp419,
	movt	r7, #:upper16:98520	@ tmp419,
	ldr	r0, [fp, #-96]	@, %sfp
	str	r2, [r4, r7]	@ temp.3481, <variable>.RawPacketArray.History
	bl	DeleteRawPacket	@
	ldr	r0, [fp, #-56]	@, %sfp
	mov	r1, #0	@,
	bl	DeleteRawPacketInBuffer	@
	b	.L1025	@
.L1081:
	str	r5, [r4, r3]	@ i.3524, <variable>.StreamSegArray.History
	b	.L1015	@
.L1052:
	beq	.L1099	@,
	bcs	.L1079	@,
	movw	r1, #:lower16:98520	@ tmp552,
	movt	r1, #:upper16:98520	@ tmp552,
	ldr	r0, [r4, r1]	@ i.3495, <variable>.RawPacketArray.History
	add	r7, r0, r0, asl #1	@, tmp556, i.3495, i.3495,
	add	r8, r4, r7, asl #5	@, tmp558, pSmInstArray, tmp556,
	ldrd	r6, [r8, #224]	@, tmp558,
	strd	r6, [fp, #-76]	@,,
	mvn	r6, #0	@ tmp529,
	ldrd	r8, [fp, #-76]	@,,
	mvn	r7, #0	@,
	cmp	r9, r7	@, tmp529
	cmpeq	r8, r6	@, tmp529
	beq	.L1100	@,
	ldrd	r6, [fp, #-52]	@,,
	ldrd	r8, [fp, #-76]	@,,
	cmp	r7, r9	@,
	cmpeq	r6, r8	@,
	bls	.L1059	@,
	subs	r6, r6, r8	@,,
	sbc	r7, r7, r9	@,,
	ldrd	r8, [fp, #-92]	@,,
	cmp	r9, r7	@,
	cmpeq	r8, r6	@,
	bcs	.L1059	@,
	str	r3, [r4, r1]	@ i.3478, <variable>.RawPacketArray.History
	ldrd	r0, [r2, #224]	@, tmp527,
	strd	r0, [fp, #-76]	@,,
.L1058:
	movw	r2, #:lower16:98512	@ tmp576,
	movt	r2, #:upper16:98512	@ tmp576,
	ldr	r6, [r4, r2]	@ temp.3496, <variable>.RawPacketArray.Head
	cmp	r3, r6	@ i.3478, temp.3496
	rsblt	r6, r6, #1024	@ tmp577, temp.3496,
	rsbge	r0, r6, r3	@ DelNum, temp.3496, i.3478
	addlt	r0, r6, r3	@ DelNum, tmp577, i.3478
	cmp	r0, #0	@ DelNum,
	bne	.L1062	@,
	ldrd	r6, [fp, #-76]	@,,
	movw	r1, #:lower16:98512	@ tmp579,
	ldr	r8, [fp, #-60]	@, %sfp
	movt	r1, #:upper16:98512	@ tmp579,
	movw	r3, #:lower16:98520	@ tmp578,
	movt	r3, #:upper16:98520	@ tmp578,
	strd	r6, [r8]	@,
	ldr	lr, [r4, r1]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	str	lr, [r4, r3]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.History
	b	.L1002	@
.L1095:
	add	lr, r3, #1	@ D.52856, i.3478,
	mov	r2, lr, asr #31	@ tmp530, D.52856,
	mov	r6, r2, lsr #22	@ tmp531, tmp530,
	add	ip, lr, r6	@ tmp532, D.52856, tmp531
	mov	r3, ip, asl #22	@ tmp533, tmp532,
	mov	r9, r3, lsr #22	@ tmp533, tmp533,
	rsb	r3, r6, r9	@ i.3478, tmp531, tmp533
	b	.L1079	@
.L1097:
	movw	lr, #:lower16:98512	@ tmp442,
	movt	lr, #:upper16:98512	@ tmp442,
	ldr	ip, [r4, lr]	@ temp.3507, <variable>.RawPacketArray.Head
	cmp	r3, ip	@ i, temp.3507
	rsblt	ip, ip, #1024	@ tmp443, temp.3507,
	rsbge	r3, ip, r3	@ DelNum.3477, temp.3507, i
	addlt	r3, ip, r3	@ DelNum.3477, tmp443, i
	cmp	r3, #0	@ DelNum.3477,
	beq	.L1032	@,
	movw	r7, #:lower16:190752	@ tmp444,
	movt	r7, #:upper16:190752	@ tmp444,
	ldr	r5, [r4, r7]	@ <variable>.SmPushRaw.PushRawNum, <variable>.SmPushRaw.PushRawNum
	ldr	r7, [fp, #-64]	@, %sfp
	cmp	r3, r5	@ DelNum.3477, <variable>.SmPushRaw.PushRawNum
	cmple	r7, #1	@,,
	movne	r5, #0	@, tmp452
	moveq	r5, #1	@, tmp452
	bne	.L1033	@,
.L1032:
	ldr	r8, [fp, #-60]	@, %sfp
	movw	r2, #:lower16:98512	@ tmp454,
	movt	r2, #:upper16:98512	@ tmp454,
	strd	r0, [r8]	@ temp.3504,
	b	.L1086	@
.L1099:
	movw	ip, #:lower16:98512	@ tmp544,
	movt	ip, #:upper16:98512	@ tmp544,
	ldr	r1, [r4, ip]	@ temp.3490, <variable>.RawPacketArray.Head
	cmp	r1, r3	@ temp.3490, i.3478
	rsbgt	r1, r1, #1024	@ tmp545, temp.3490,
	rsble	r0, r1, r3	@ DelNum.3474, temp.3490, i.3478
	addgt	r0, r1, r3	@ DelNum.3474, tmp545, i.3478
	cmp	r0, #0	@ DelNum.3474,
	bne	.L1056	@,
	ldr	r1, [fp, #-60]	@, %sfp
	movw	lr, #:lower16:98512	@ tmp547,
	movt	lr, #:upper16:98512	@ tmp547,
	movw	r3, #:lower16:98520	@ tmp546,
	movt	r3, #:upper16:98520	@ tmp546,
	strd	r8, [r1]	@ D.52897,
	ldr	r2, [r4, lr]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	str	r2, [r4, r3]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.History
	b	.L1002	@
.L1098:
	movw	ip, #:lower16:190704	@ tmp300,
	movt	ip, #:upper16:190704	@ tmp300,
	ldr	r7, [r4, ip]	@ j.3526, <variable>.StreamSegArray.Head
	cmp	r5, r7	@ i.3524, j.3526
	beq	.L1012	@,
	movw	lr, #:lower16:954437177	@ tmp629,
	movt	lr, #:upper16:954437177	@ tmp629,
	movw	r9, #:lower16:190740	@ tmp626,
	movw	sl, #:lower16:190744	@ tmp628,
	movt	r9, #:upper16:190740	@ tmp626,
	movt	sl, #:upper16:190744	@ tmp628,
	str	r6, [fp, #-52]	@ tmp593, %sfp
	mov	r6, lr	@ tmp629, tmp629
.L1069:
	add	ip, r7, r7, asl #2	@, tmp304, j.3526, j.3526,
	mov	r1, r7	@, j.3526
	mov	r0, r8	@, pStreamSegArray
	add	r2, r4, ip, asl #4	@, tmp306, pSmInstArray, tmp304,
	mov	ip, #2	@,
	add	r3, r2, #98304	@ tmp317, tmp306,
	add	r2, r3, #240	@ tmp307, tmp307,
	add	lr, r3, #256	@ tmp317, tmp317,
	strb	ip, [r2, #4]	@, <variable>.SegState
	ldr	r2, [lr, #0]	@ <variable>.LenInByte, <variable>.LenInByte
	ldr	r3, [r4, r9]	@ <variable>.StreamSegArray.SegFreshSize, <variable>.StreamSegArray.SegFreshSize
	ldr	lr, [r4, sl]	@ <variable>.StreamSegArray.SegFreshNum, <variable>.StreamSegArray.SegFreshNum
	rsb	r2, r2, r3	@ temp.3530, <variable>.LenInByte, <variable>.StreamSegArray.SegFreshSize
	sub	r3, lr, #1	@ temp.3532, <variable>.StreamSegArray.SegFreshNum,
	bic	ip, r2, r2, asr #31	@ tmp325, temp.3530
	bic	lr, r3, r3, asr #31	@ tmp327, temp.3532
	str	ip, [r4, r9]	@ tmp325, <variable>.StreamSegArray.SegFreshSize
	str	lr, [r4, sl]	@ tmp327, <variable>.StreamSegArray.SegFreshNum
	bl	ReleaseStreamSeg	@
	add	r1, r7, #1	@ temp.3535, j.3526,
	smull	r0, r2, r6, r1	@, tmp328, tmp629, temp.3535
	mov	ip, r1, asr #31	@ tmp331, temp.3535,
	rsb	r3, ip, r2, asr #8	@, j.3526, tmp331, tmp328,
	add	r0, r3, r3, asl #3	@, tmp334, j.3526, j.3526,
	sub	r7, r1, r0, asl #7	@ j.3526, temp.3535, tmp334,
	cmp	r5, r7	@ i.3524, j.3526
	bne	.L1069	@,
	ldr	r6, [fp, #-52]	@ tmp593, %sfp
.L1012:
	add	r5, r6, r5	@ tmp339, tmp593, i.3524
	movw	r3, #:lower16:98576	@ tmp336,
	movt	r3, #:upper16:98576	@ tmp336,
	ldr	r1, [fp, #-60]	@, %sfp
	add	r4, r4, r5, asl #4	@, tmp341, pSmInstArray, tmp339,
	mov	r0, #0	@ D.52825,
	ldrd	r2, [r3, r4]	@ <variable>.RawPts, tmp336, tmp341
	strd	r2, [r1]	@ <variable>.RawPts,
	b	.L1002	@
.L1096:
	str	r2, [r4, sl]	@ temp.3485, <variable>.RawPacketArray.History
	ldr	r0, [fp, #-96]	@, %sfp
	bl	DeleteRawPacket	@
	ldr	r0, [fp, #-56]	@, %sfp
	mov	r1, #0	@,
	bl	DeleteRawPacketInBuffer	@
	b	.L1049	@
.L1036:
	mov	r3, r1	@ i, i.3512
	b	.L1035	@
.L1059:
	mov	r3, r0	@ i.3478, i.3495
	b	.L1058	@
.L1062:
	ldrd	r6, [fp, #-76]	@,,
	movw	r3, #:lower16:98512	@ tmp582,
	ldr	r8, [fp, #-60]	@, %sfp
	movt	r3, #:upper16:98512	@ tmp582,
	strd	r6, [r8]	@,
.L1084:
	ldr	ip, [r4, r3]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	movw	r2, #:lower16:98520	@ tmp581,
	movt	r2, #:upper16:98520	@ tmp581,
	mov	r1, r0	@, DelNum
	ldr	r0, [fp, #-96]	@, %sfp
	str	ip, [r4, r2]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.History
	bl	DeleteRawPacket	@
	ldr	r0, [fp, #-56]	@, %sfp
	mov	r1, #0	@,
	bl	DeleteRawPacketInBuffer	@
	mov	r0, #0	@ D.52825,
	b	.L1002	@
.L1056:
	ldr	ip, [fp, #-60]	@, %sfp
	movw	r3, #:lower16:98512	@ tmp550,
	movt	r3, #:upper16:98512	@ tmp550,
	strd	r8, [ip]	@ D.52897,
	b	.L1084	@
.L1100:
	str	r3, [r4, r1]	@ i.3478, <variable>.RawPacketArray.History
	ldrd	r0, [r5]	@, <variable>.Pts
	strd	r0, [fp, #-76]	@,,
	b	.L1058	@
.L1040:
	ldrd	r6, [fp, #-76]	@,,
	movw	r1, #:lower16:98512	@ tmp502,
	ldr	r8, [fp, #-60]	@, %sfp
	movt	r1, #:upper16:98512	@ tmp502,
	movw	r2, #:lower16:98520	@ tmp501,
	strd	r6, [r8]	@,
	ldr	ip, [r4, r1]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
.L1085:
	movt	r2, #:upper16:98520	@ tmp501,
	mov	r1, r3	@, DelNum.3473
	ldr	r0, [fp, #-96]	@, %sfp
	str	ip, [r4, r2]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.History
	bl	DeleteRawPacket	@
	ldr	r0, [fp, #-56]	@, %sfp
	mov	r1, r5	@, tmp496
	bl	DeleteRawPacketInBuffer	@
	mov	r0, r5	@ D.52825, tmp496
	b	.L1002	@
.L1033:
	ldr	r2, [fp, #-60]	@, %sfp
	movw	ip, #:lower16:98512	@ tmp458,
	movt	ip, #:upper16:98512	@ tmp458,
	strd	r0, [r2]	@ temp.3504,
	movw	r2, #:lower16:98520	@ tmp457,
	ldr	ip, [r4, ip]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	b	.L1085	@
	.fnend
	.size	SM_SeekPts, .-SM_SeekPts
	.align	2
	.global	ScdReturnSegFilter
	.type	ScdReturnSegFilter, %function
ScdReturnSegFilter:
	.fnstart
.LFB1592:
	@ args = 4, pretend = 0, frame = 24
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
	mov	sl, r1	@ pTransFormSeg, pTransFormSeg
	ldr	r1, [r0, #32]	@, <variable>.SegNum
	mov	r4, r0	@ pSegStreamFilter, pSegStreamFilter
	mov	r5, #0	@ tmp169,
	mov	r0, #24	@,
	str	r1, [fp, #-52]	@, %sfp
	movw	r1, #:lower16:.LC154	@,
	str	r5, [r2, #0]	@ tmp169,* pExtraSrcBack
	movt	r1, #:upper16:.LC154	@,
	str	r3, [fp, #-56]	@ pSegNum, %sfp
	ldr	r6, [fp, #4]	@ UpMsgStepNum, UpMsgStepNum
	bl	dprint_vfmw	@
	ldr	r7, [r4, #8]	@ <variable>.ProtocolType, <variable>.ProtocolType
	cmp	r7, #2	@ <variable>.ProtocolType,
	beq	.L1102	@,
	ldr	r2, [fp, #-52]	@, %sfp
	cmp	r2, r5	@,
	ble	.L1103	@,
	ldr	r3, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	mov	r2, r5	@, tmp169
	ldr	r5, [r4, #20]	@ <variable>.SegBufPhyAddr, <variable>.SegBufPhyAddr
	mov	r0, #24	@,
	ldr	r1, [fp, #-52]	@, %sfp
	ldr	ip, [r3, #0]	@ tmp174,* <variable>.pScdUpMsg
	and	r7, r5, #-2147483648	@ tmp175, <variable>.SegBufPhyAddr,
	mov	r5, r6, asl #2	@ D.57053, UpMsgStepNum,
	sub	r9, r1, #1	@ tmp256,,
	bic	r8, ip, #-2147483648	@ tmp173, tmp174,
	movw	r1, #:lower16:.LC155	@,
	orr	r6, r8, r7	@ tmp177, tmp173, tmp175
	str	r6, [sl, #0]	@ tmp177,* pTransFormSeg
	ldr	lr, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	movt	r1, #:upper16:.LC155	@,
	mov	r7, #1	@ i.3615,
	and	r9, r9, #1	@ tmp258, tmp256,
	add	r6, sl, r5	@ ivtmp.3594, pTransFormSeg, D.57053
	mov	r8, r5	@ ivtmp.3593, D.57053
	ldr	ip, [lr, #4]	@ tmp182,
	str	ip, [sl, #4]	@ tmp182,
	ldr	r3, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	ldr	r3, [r3, #0]	@,* <variable>.pScdUpMsg
	bl	dprint_vfmw	@
	ldr	r0, [fp, #-52]	@, %sfp
	cmp	r0, r7	@,
	ble	.L1103	@,
	cmp	r9, #0	@ tmp258,
	beq	.L1104	@,
	ldr	r8, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	mov	r2, r7	@, i.3615
	ldr	r7, [r4, #20]	@ <variable>.SegBufPhyAddr, <variable>.SegBufPhyAddr
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC155	@,
	movt	r1, #:upper16:.LC155	@,
	ldr	lr, [r8, r5]	@ tmp291,* D.57053
	and	ip, r7, #-2147483648	@ tmp294, <variable>.SegBufPhyAddr,
	mov	r7, #2	@ i.3615,
	mov	r8, r5, asl #1	@ ivtmp.3593, D.57053,
	bic	r3, lr, #-2147483648	@ tmp292, tmp291,
	orr	lr, r3, ip	@ tmp295, tmp292, tmp294
	str	lr, [r6, #0]	@ tmp295,* ivtmp.3594
	ldr	r3, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	add	ip, r5, r3	@ tmp297, D.57053, <variable>.pScdUpMsg
	ldr	lr, [ip, #4]	@ tmp299,
	str	lr, [r6, #4]	@ tmp299,
	add	r6, r6, r5	@ ivtmp.3594, ivtmp.3594, D.57053
	ldr	r3, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	ldr	r3, [r3, #4]	@,
	bl	dprint_vfmw	@
	ldr	ip, [fp, #-52]	@, %sfp
	cmp	ip, r7	@, i.3615
	ble	.L1103	@,
.L1104:
	ldr	r3, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	add	lr, r6, r5	@, ivtmp.3594, D.57053
	ldr	sl, [r4, #20]	@ <variable>.SegBufPhyAddr, <variable>.SegBufPhyAddr
	mov	r2, r7	@, i.3615
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC155	@,
	ldr	r9, [r3, r8]	@ tmp264,* ivtmp.3593
	and	ip, sl, #-2147483648	@ tmp267, <variable>.SegBufPhyAddr,
	str	lr, [fp, #-48]	@, %sfp
	movt	r1, #:upper16:.LC155	@,
	bic	lr, r9, #-2147483648	@ tmp265, tmp264,
	add	sl, r8, r5	@ ivtmp.3593, ivtmp.3593, D.57053
	orr	r3, lr, ip	@ tmp268, tmp265, tmp267
	str	r3, [r6, #0]	@ tmp268,* ivtmp.3594
	ldr	lr, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	add	r9, r7, #1	@ tmp259, i.3615,
	add	ip, r8, lr	@ tmp270, ivtmp.3593, <variable>.pScdUpMsg
	add	r8, sl, r5	@ ivtmp.3593, ivtmp.3593, D.57053
	ldr	r3, [ip, #4]	@ tmp272,
	str	r3, [r6, #4]	@ tmp272,
	ldr	lr, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	ldr	r3, [lr, r7, asl #2]	@,* <variable>.pScdUpMsg
	add	r7, r9, #1	@ i.3615, tmp259,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	ldr	r2, [r4, #20]	@ <variable>.SegBufPhyAddr, <variable>.SegBufPhyAddr
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC155	@,
	movt	r1, #:upper16:.LC155	@,
	ldr	r3, [ip, sl]	@ tmp279,* ivtmp.3593
	and	ip, r2, #-2147483648	@ tmp282, <variable>.SegBufPhyAddr,
	mov	r2, r9	@, tmp259
	bic	r3, r3, #-2147483648	@ tmp280, tmp279,
	orr	r3, r3, ip	@ tmp283, tmp280, tmp282
	str	r3, [r6, r5]	@ tmp283,* D.57053
	ldr	r3, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	ldr	ip, [fp, #-48]	@, %sfp
	add	sl, sl, r3	@ tmp285, ivtmp.3593, <variable>.pScdUpMsg
	add	r6, ip, r5	@ ivtmp.3594,, D.57053
	ldr	r3, [sl, #4]	@ tmp287,
	str	r3, [ip, #4]	@ tmp287,
	ldr	ip, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	ldr	r3, [ip, r9, asl #2]	@,* <variable>.pScdUpMsg
	bl	dprint_vfmw	@
	ldr	r2, [fp, #-52]	@, %sfp
	cmp	r2, r7	@, i.3615
	bgt	.L1104	@,
.L1103:
	mov	r0, #0	@ tmp185,
	str	r0, [r4, #16]	@ tmp185, <variable>.LastH263Num
	str	r0, [r4, #12]	@ tmp185, <variable>.ModeFlag
	ldr	r1, [fp, #-52]	@, %sfp
	ldr	r2, [fp, #-56]	@, %sfp
	str	r1, [r2, #0]	@,
.L1105:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L1102:
	ldr	r0, [r4, #20]	@, <variable>.SegBufPhyAddr
	bl	MEM_Phy2Vir	@
	subs	r3, r0, #0	@ D.51718,
	bne	.L1126	@,
.L1106:
	mvn	r0, #6	@ D.51721,
	b	.L1105	@
.L1126:
	ldrb	lr, [r3, #1]	@ zero_extendqisi2	@ D.51726,
	ldrb	ip, [r3, #2]	@ zero_extendqisi2	@ D.51731,
	ldr	r0, [r4, #28]	@, <variable>.SegBufRollAddr
	ldrb	r9, [r3, #3]	@ zero_extendqisi2	@ D.51736,
	ldrb	r8, [r3, #0]	@ zero_extendqisi2	@ D.51722,* D.51718
	str	lr, [fp, #-68]	@,
	str	ip, [fp, #-64]	@,
	bl	MEM_Phy2Vir	@
	ldr	r2, [fp, #-68]	@,
	ldr	r3, [fp, #-64]	@,
	cmp	r0, #0	@ D.51739
	beq	.L1106	@,
	orr	r8, r9, r8, asl #24	@, tmp188, D.51736, D.51722,
	mov	r9, sl	@ ivtmp.3608, pTransFormSeg
	orr	ip, r8, r2, asl #16	@, tmp190, tmp188, D.51726,
	mov	sl, r5	@ i, tmp169
	orr	r7, ip, r3, asl #8	@, Data32, tmp190, D.51731,
	mov	r2, r6, asl #2	@, UpMsgStepNum,
	strb	r7, [r0, #3]	@ Data32,
	mov	r5, r7, lsr #16	@ tmp194, Data32,
	str	r2, [fp, #-48]	@, %sfp
	mov	r6, r7, lsr #8	@ tmp196, Data32,
	strb	r5, [r0, #1]	@ tmp194,
	strb	r6, [r0, #2]	@ tmp196,
	mov	r1, r7, lsr #24	@ tmp192, Data32,
	add	r6, r9, #4	@ ivtmp.3611, ivtmp.3608,
	strb	r1, [r0, #0]	@ tmp192,* D.51739
	mov	r7, r9	@ ivtmp.3666, ivtmp.3608
	movw	r0, #:lower16:g_event_report	@,
	mov	r5, #4	@ ivtmp.3610,
	movt	r0, #:upper16:g_event_report	@,
	str	r0, [fp, #-60]	@, %sfp
	b	.L1107	@
.L1128:
	mov	r2, #1	@,
	mov	ip, #0	@,
	str	r2, [r4, #12]	@, <variable>.ModeFlag
	str	ip, [r4, #16]	@, <variable>.LastH263Num
	str	r8, [r7, #0]	@ TmpPhyAddr.3630,* ivtmp.3666
	ldr	lr, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	ldr	r0, [lr, r5]	@ tmp227,* ivtmp.3610
	str	r0, [r6, #0]	@ tmp227,* ivtmp.3611
.L1109:
	ldr	r0, [fp, #-48]	@, %sfp
	add	sl, sl, #1	@ i, i,
	add	r7, r7, r0	@ ivtmp.3666, ivtmp.3666,
	add	r5, r5, r0	@ ivtmp.3610, ivtmp.3610,
	add	r6, r6, r0	@ ivtmp.3611, ivtmp.3611,
.L1107:
	ldr	lr, [fp, #-52]	@, %sfp
	cmp	sl, lr	@ i,
	bge	.L1127	@,
	ldr	r2, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	ldr	r1, [r4, #20]	@ <variable>.SegBufPhyAddr, <variable>.SegBufPhyAddr
	add	r0, r5, r2	@ tmp201, ivtmp.3610, <variable>.pScdUpMsg
	and	r3, r1, #-2147483648	@ tmp205, <variable>.SegBufPhyAddr,
	ldr	lr, [r0, #-4]	@ tmp204,
	bic	r8, lr, #-2147483648	@ tmp203, tmp204,
	orrs	r8, r8, r3	@ TmpPhyAddr.3630, tmp203, tmp205
	beq	.L1106	@,
	mov	r0, r8	@, TmpPhyAddr.3630
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ D.51751
	beq	.L1106	@,
	ldrb	r1, [r0, #0]	@ zero_extendqisi2	@ tmp208,* D.51751
	ldrb	r3, [r0, #3]	@ zero_extendqisi2	@ tmp207,
	ldrb	ip, [r0, #1]	@ zero_extendqisi2	@ tmp211,
	ldrb	lr, [r0, #2]	@ zero_extendqisi2	@ tmp214,
	orr	r2, r3, r1, asl #24	@, tmp210, tmp207, tmp208,
	orr	r3, r2, ip, asl #16	@, tmp213, tmp210, tmp211,
	movw	ip, #438	@,
	orr	r0, r3, lr, asl #8	@, Data32.3649, tmp213, tmp214,
	cmp	r0, ip	@ Data32.3649,
	cmpne	r0, #288	@, Data32.3649,
	movne	r2, #0	@, tmp223
	moveq	r2, #1	@, tmp223
	beq	.L1128	@,
	bic	r1, r0, #1020	@ tmp228, Data32.3649,
	bic	r3, r1, #3	@ tmp228, tmp228,
	cmp	r3, #32768	@ tmp228,
	beq	.L1129	@,
.L1110:
	str	r8, [r7, #0]	@ TmpPhyAddr.3630,* ivtmp.3666
	ldr	r1, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	ldr	r3, [r1, r5]	@ tmp242,* ivtmp.3610
	str	r3, [r6, #0]	@ tmp242,* ivtmp.3611
	b	.L1109	@
.L1129:
	ldr	r0, [r4, #12]	@ <variable>.ModeFlag, <variable>.ModeFlag
	cmp	r0, #1	@ <variable>.ModeFlag,
	beq	.L1111	@,
	mov	r2, #2	@,
	str	r2, [r4, #12]	@, <variable>.ModeFlag
	str	r8, [r7, #0]	@ TmpPhyAddr.3630,* ivtmp.3666
	ldr	ip, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	ldr	lr, [ip, r5]	@ tmp233,* ivtmp.3610
	str	lr, [r6, #0]	@ tmp233,* ivtmp.3611
	b	.L1109	@
.L1127:
	ldr	r4, [fp, #-56]	@, %sfp
	str	sl, [r4, #0]	@ i,
	mov	r4, #0	@ i.3612,
	ldr	r5, [fp, #-48]	@ D.57072, %sfp
	b	.L1115	@
.L1116:
	ldr	r3, [r3, #0]	@,
	bl	dprint_vfmw	@
.L1115:
	cmp	r4, sl	@ i.3612, i
	add	r9, r9, r5	@ ivtmp.3608, ivtmp.3608, D.57072
	mov	r2, r4	@, i.3612
	movw	r1, #:lower16:.LC155	@,
	mov	r0, #24	@,
	movt	r1, #:upper16:.LC155	@,
	add	r4, r4, #1	@ i.3612, i.3612,
	rsb	r3, r5, r9	@ tmp244, D.57072, ivtmp.3608
	blt	.L1116	@,
	mov	r0, #0	@ D.51721,
	b	.L1105	@
.L1111:
	ldr	r1, [r4, #16]	@ <variable>.LastH263Num, <variable>.LastH263Num
	add	r3, r1, #1	@ D.51775, <variable>.LastH263Num,
	str	r3, [r4, #16]	@ D.51775, <variable>.LastH263Num
	cmp	r3, #12	@ D.51775,
	ble	.L1110	@,
	ldr	r0, [fp, #-60]	@, %sfp
	ldr	ip, [r0, #0]	@ g_event_report.589, g_event_report
	cmp	ip, #0	@ g_event_report.589,
	beq	.L1113	@,
	ldr	r0, [r4, #36]	@, <variable>.SMInstID
	mov	r1, #102	@,
	mov	r3, r2	@,
	blx	ip	@ g_event_report.589
.L1113:
	mov	r2, #2	@,
	str	r2, [r4, #12]	@, <variable>.ModeFlag
	str	r8, [r7, #0]	@ TmpPhyAddr.3630,* ivtmp.3666
	ldr	ip, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	ldr	lr, [ip, r5]	@ tmp238,* ivtmp.3610
	str	lr, [r6, #0]	@ tmp238,* ivtmp.3611
	b	.L1109	@
	.fnend
	.size	ScdReturnSegFilter, .-ScdReturnSegFilter
	.align	2
	.global	SM_CopyRawToSeg
	.type	SM_CopyRawToSeg, %function
SM_CopyRawToSeg:
	.fnstart
.LFB1578:
	@ args = 0, pretend = 0, frame = 56
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
	mov	r4, r0	@ SmID, SmID
	add	r2, r4, r4, asl #1	@, tmp171, SmID, SmID,
	movw	r0, #:lower16:.LANCHOR0	@ tmp167,
	movt	r0, #:upper16:.LANCHOR0	@ tmp167,
	mov	r6, r1	@ pStreamSeg, pStreamSeg
	add	r3, r0, r2, asl #4	@, tmp173, tmp167, tmp171,
	ldr	r5, [r3, #40]	@ pSmInstArray, <variable>.pSmInstArray
	cmp	r5, #0	@ pSmInstArray,
	bne	.L1153	@,
.L1131:
	mvn	r0, #0	@ D.51051,
.L1137:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L1153:
	cmp	r1, #0	@ pStreamSeg,
	beq	.L1131	@,
	movw	ip, #:lower16:98516	@ tmp175,
	movw	r1, #:lower16:98512	@ tmp176,
	movt	ip, #:upper16:98516	@ tmp175,
	movt	r1, #:upper16:98512	@ tmp176,
	ldr	r0, [r5, ip]	@ D.51058, <variable>.RawPacketArray.Tail
	ldr	r3, [r5, r1]	@, <variable>.RawPacketArray.Head
	cmp	r0, r3	@ D.51058,
	str	r3, [fp, #-48]	@, %sfp
	beq	.L1132	@,
	mov	r1, r3, asl #1	@ tmp419,,
	mov	r7, #1	@ rawnum,
	add	sl, r1, r3	@ tmp180, tmp419, index
	add	r9, r5, sl, asl #5	@, tmp182, pSmInstArray, tmp180,
	ldr	sl, [r9, #216]	@ TotalSrcLength, <variable>.Length
	mov	r9, r6	@ pStreamSeg, pStreamSeg
	str	r4, [fp, #-52]	@ SmID, %sfp
	b	.L1133	@
.L1134:
	mov	r2, r2, lsr #22	@ index, index,
	cmp	r0, ip	@ D.51058, index
	add	r3, r2, #1	@ D.51066, index,
	add	r7, r7, #1	@ rawnum, rawnum,
	add	ip, r2, r2, asl #1	@, tmp442, index, index,
	ldr	r1, [r6, #216]	@ D.51068, <variable>.Length
	mov	r3, r3, asl #22	@ index, D.51066,
	beq	.L1132	@,
	movw	r4, #1025	@,
	cmp	r7, r4	@ rawnum,
	add	ip, r5, ip, asl #5	@, tmp444, pSmInstArray, tmp442,
	mov	r3, r3, lsr #22	@ index, index,
	add	sl, sl, r1	@ TotalSrcLength, TotalSrcLength, D.51068
	mov	r4, r7	@ tmp430, rawnum
	beq	.L1132	@,
	ldrb	r8, [r6, #260]	@ zero_extendqisi2	@ <variable>.is_not_last_packet_flag, <variable>.is_not_last_packet_flag
	mov	r1, r3, asl #1	@ tmp422, index,
	add	r6, r1, r3	@ tmp455, tmp422, index
	cmp	r8, #0	@ <variable>.is_not_last_packet_flag,
	add	r6, r5, r6, asl #5	@, tmp457, pSmInstArray, tmp455,
	beq	.L1152	@,
	cmp	r0, r2	@ D.51058, index
	add	r7, r7, #1	@ rawnum, rawnum,
	ldr	r2, [ip, #216]	@ D.51068, <variable>.Length
	beq	.L1132	@,
	ldrb	ip, [ip, #260]	@ zero_extendqisi2	@ <variable>.is_not_last_packet_flag, <variable>.is_not_last_packet_flag
	add	sl, sl, r2	@ TotalSrcLength, TotalSrcLength, D.51068
	cmp	ip, #0	@ <variable>.is_not_last_packet_flag,
	beq	.L1152	@,
	cmp	r0, r3	@ D.51058, index
	add	r7, r4, #2	@ rawnum, tmp430,
	ldr	r2, [r6, #216]	@ D.51068, <variable>.Length
	beq	.L1132	@,
	add	sl, sl, r2	@ TotalSrcLength, TotalSrcLength, D.51068
.L1133:
	add	r2, r1, r3	@ tmp433, tmp422, index
	add	r6, r3, #1	@ D.51066, index,
	mov	ip, r6, asl #22	@ index, D.51066,
	add	r6, r5, r2, asl #5	@, tmp435, pSmInstArray, tmp433,
	mov	ip, ip, lsr #22	@ index, index,
	ldrb	r3, [r6, #260]	@ zero_extendqisi2	@ <variable>.is_not_last_packet_flag, <variable>.is_not_last_packet_flag
	add	r2, ip, #1	@ D.51066, index,
	add	r1, ip, ip, asl #1	@, tmp188, index, index,
	cmp	r3, #0	@ <variable>.is_not_last_packet_flag,
	mov	r2, r2, asl #22	@ index, D.51066,
	add	r6, r5, r1, asl #5	@, tmp190, pSmInstArray, tmp188,
	bne	.L1134	@,
.L1152:
	add	ip, r5, #98304	@, pSmInstArray,
	add	r2, r5, #208	@, pSmInstArray,
	add	lr, ip, #232	@,,
	ldr	r4, [fp, #-52]	@ SmID, %sfp
	str	lr, [fp, #-56]	@, %sfp
	movw	r8, #:lower16:98536	@ tmp201,
	mov	r0, lr	@,
	str	r2, [fp, #-68]	@, %sfp
	bl	ResetStreamSegArray	@
	movw	r3, #:lower16:190724	@ tmp202,
	movt	r3, #:upper16:190724	@ tmp202,
	mov	r6, r9	@ pStreamSeg, pStreamSeg
	movt	r8, #:upper16:98536	@ tmp201,
	ldr	r1, [r5, r3]	@ <variable>.StreamSegArray.SegBufSize, <variable>.StreamSegArray.SegBufSize
	sub	r0, r1, #262144	@ tmp203, <variable>.StreamSegArray.SegBufSize,
	cmp	r0, sl	@ tmp203, TotalSrcLength
	blt	.L1154	@,
	ldr	r3, [r5, #56]	@ prephitmp.3694, <variable>.Config.VidStd
	movw	r0, #:lower16:190720	@ tmp208,
	movt	r0, #:upper16:190720	@ tmp208,
	ldr	r9, [r5, r8]	@ TmpVirAddr, <variable>.StreamSegArray.pSegBufVirAddr
	cmp	r3, #10	@ prephitmp.3694,
	cmpne	r3, #12	@, prephitmp.3694,
	ldr	ip, [r5, r0]	@ TmpPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	bne	.L1138	@,
	movw	r0, #:lower16:g_VdmCharacter	@ tmp420,
	movt	r0, #:upper16:g_VdmCharacter	@ tmp420,
	ldr	r2, [r0, #0]	@ g_VdmCharacter, g_VdmCharacter
	ands	lr, r2, #1	@ tmp218, g_VdmCharacter,
	streqb	lr, [r9], #1	@ tmp218,
	ldr	r8, [fp, #-48]	@, %sfp
	mov	r2, #96	@ tmp224,
	ldreq	r3, [r5, #56]	@ prephitmp.3694, <variable>.Config.VidStd
	mla	r1, r2, r8, r5	@ tmp225, tmp224,, pSmInstArray
	cmp	r3, #12	@ prephitmp.3694,
	movw	r3, #:lower16:98512	@ tmp232,
	movt	r3, #:upper16:98512	@ tmp232,
	ldr	r8, [r5, r3]	@ index.3721, <variable>.RawPacketArray.Head
	ldr	r3, [r1, #216]	@ SrcLength, <variable>.Length
	ldr	r1, [r1, #212]	@, <variable>.VirAddr
	str	r1, [fp, #-52]	@, %sfp
	bne	.L1140	@,
	ldr	r0, [r0, #0]	@ g_VdmCharacter, g_VdmCharacter
	cmp	r3, #0	@ SrcLength,
	moveq	r0, #0	@, tmp241
	andne	r0, r0, #1	@,, tmp241, g_VdmCharacter
	cmp	r0, #0	@ tmp241,
	beq	.L1140	@,
	cmp	r3, #2	@ SrcLength,
	ble	.L1141	@,
	sub	r3, r3, #3	@ SrcLength, SrcLength,
	add	r1, r1, #3	@,,
	str	r1, [fp, #-52]	@, %sfp
.L1140:
	str	ip, [r6, #12]	@ TmpPhyAddr, <variable>.PhyAddr
	mov	r0, ip	@, TmpPhyAddr
	str	r3, [fp, #-88]	@,
	bl	MEM_Phy2Vir	@
	mov	r2, #96	@ tmp302,
	mov	r1, #3	@ tmp313,
	cmp	r7, #0	@ rawnum,
	mov	r3, r0	@ D.51129,
	ldr	r0, [fp, #-48]	@, %sfp
	rsb	ip, r3, r9	@ tmp299, D.51129, TmpVirAddr
	str	r3, [r6, #0]	@ D.51129, <variable>.VirAddr
	str	ip, [r6, #16]	@ tmp299, <variable>.LenInByte
	mov	ip, #1	@ tmp320,
	mla	r2, r2, r0, r5	@ tmp303, tmp302,, pSmInstArray
	mul	r1, r1, r0	@, tmp313,
	add	r3, r5, r1, asl #5	@, tmp317, pSmInstArray,,
	ldrd	r0, [r2, #224]	@, tmp303,
	strd	r0, [r6, #24]	@, pStreamSeg,
	ldrd	r0, [r2, #224]	@, tmp303,
	strd	r0, [r6, #32]	@, pStreamSeg,
	ldrd	r0, [r3, #240]	@, tmp317,
	strb	ip, [r6, #5]	@ tmp320, <variable>.IsLastSeg
	strd	r0, [r6, #40]	@, pStreamSeg,
	ldr	r3, [fp, #-88]	@,
	beq	.L1143	@,
	ldr	lr, [fp, #-52]	@, %sfp
	cmp	lr, #0	@,
	cmpne	r9, #0	@, TmpVirAddr,
	beq	.L1132	@,
	add	ip, r2, #272	@ tmp428, tmp303,
	add	r1, r2, #248	@, tmp303,
	mov	r0, r8, asl #1	@ tmp421, index.3721,
	add	r2, r2, #264	@ tmp427, tmp303,
	mov	lr, #0	@,
	str	r1, [fp, #-60]	@, %sfp
	str	r7, [fp, #-64]	@ rawnum, %sfp
	mov	r7, r5	@ pSmInstArray, pSmInstArray
	str	sl, [fp, #-72]	@ TotalSrcLength, %sfp
	mov	r5, ip	@ tmp428, tmp428
	str	lr, [fp, #-48]	@, %sfp
	mov	sl, r2	@ tmp427, tmp427
	str	r3, [fp, #-96]	@ SrcLength, %sfp
	mov	ip, r0	@ tmp421, tmp421
	ldr	r1, [fp, #-52]	@ SrcVirAddr, %sfp
	str	r4, [fp, #-76]	@ SmID, %sfp
	b	.L1144	@
.L1145:
	adds	r9, r9, r4	@ TmpVirAddr, TmpVirAddr, SrcLength.539
	moveq	r3, #0	@, tmp330
	movne	r3, #1	@, tmp330
	cmp	r1, #0	@ SrcVirAddr,
	moveq	r3, #0	@, tmp335
	andne	r3, r3, #1	@,, tmp335, tmp330
	cmp	r3, #0	@ tmp335,
	beq	.L1132	@,
.L1144:
	ldr	r4, [fp, #-96]	@ SrcLength.539, %sfp
	mov	r0, r9	@, TmpVirAddr
	str	ip, [fp, #-88]	@,
	mov	r2, r4	@, SrcLength.539
	bl	memcpy	@
	ldr	ip, [fp, #-88]	@,
	ldr	r1, [fp, #-48]	@, %sfp
	add	r2, r8, #1	@ temp.3740, index.3721,
	add	r3, ip, r8	@ tmp343, tmp421, index.3721
	ldr	r0, [r6, #16]	@ <variable>.LenInByte, <variable>.LenInByte
	mov	r8, r2, asl #22	@ index.3721, temp.3740,
	add	r2, r1, #1	@,,
	add	r3, r7, r3, asl #5	@, tmp345, pSmInstArray, tmp343,
	str	r2, [fp, #-48]	@, %sfp
	add	r2, r0, r4	@ tmp350, <variable>.LenInByte, SrcLength.539
	ldr	ip, [fp, #-64]	@, %sfp
	ldrb	r0, [r3, #261]	@ zero_extendqisi2	@ <variable>.is_stream_end_flag, <variable>.is_stream_end_flag
	mov	r8, r8, lsr #22	@ index.3721, index.3721,
	ldr	r1, [fp, #-48]	@, %sfp
	str	r2, [r6, #16]	@ tmp350, <variable>.LenInByte
	strb	r0, [r6, #6]	@ <variable>.is_stream_end_flag, <variable>.IsStreamEnd
	cmp	ip, r1	@,
	ldr	r1, [fp, #-60]	@, %sfp
	mov	ip, r8, asl #1	@ tmp421, index.3721,
	add	r2, ip, r8	@ tmp355, tmp421, index.3721
	ldrd	r0, [r1]	@, <variable>.DispTime
	add	r2, r7, r2, asl #5	@, tmp357, pSmInstArray, tmp355,
	strd	r0, [fp, #-84]	@,,
	ldr	r3, [r2, #216]	@, <variable>.Length
	str	r3, [fp, #-96]	@, %sfp
	ldr	r1, [r2, #212]	@ SrcVirAddr, <variable>.VirAddr
	ldrd	r2, [fp, #-84]	@,,
	strd	r2, [r6, #48]	@, pStreamSeg,
	ldr	r2, [sl, #0]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	str	r2, [r6, #56]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	ldr	r2, [sl, #4]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	str	r2, [r6, #60]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	ldr	r2, [r5, #0]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	str	r2, [r6, #64]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	ldr	r2, [r5, #4]	@ <variable>.GopNum, <variable>.GopNum
	str	r2, [r6, #68]	@ <variable>.GopNum, <variable>.GopNum
	bhi	.L1145	@,
	ldr	sl, [fp, #-72]	@ TotalSrcLength, %sfp
	ldr	r4, [fp, #-76]	@ SmID, %sfp
.L1143:
	mov	r2, r4	@, SmID
	mov	r1, r6	@, pStreamSeg
	ldr	r0, [fp, #-56]	@, %sfp
	bl	InsertStreamSeg	@
	ldr	r0, [fp, #-68]	@, %sfp
	mov	r1, sl	@, TotalSrcLength
	bl	DeleteRawLen	@
	mov	r0, #0	@ D.51051,
	b	.L1137	@
.L1132:
	mvn	r0, #3	@ D.51051,
	b	.L1137	@
.L1138:
	ldr	r0, [fp, #-48]	@, %sfp
	mov	r8, #96	@ tmp409,
	movw	r3, #:lower16:98512	@ tmp417,
	movt	r3, #:upper16:98512	@ tmp417,
	mla	r1, r8, r0, r5	@ tmp410, tmp409,, pSmInstArray
	ldr	r8, [r5, r3]	@ index.3721, <variable>.RawPacketArray.Head
	ldr	lr, [r1, #212]	@, <variable>.VirAddr
	ldr	r3, [r1, #216]	@ SrcLength, <variable>.Length
	str	lr, [fp, #-52]	@, %sfp
	b	.L1140	@
.L1154:
	mov	r2, sl	@, TotalSrcLength
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC156	@,
	movt	r1, #:upper16:.LC156	@,
	bl	dprint_vfmw	@
	ldr	r0, [fp, #-68]	@, %sfp
	mov	r1, sl	@, TotalSrcLength
	bl	DeleteRawLen	@
	cmp	r0, #0	@ D.51080
	beq	.L1137	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC127	@,
	movw	r2, #2440	@,
	movt	r1, #:upper16:.LC127	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.51051,
	b	.L1137	@
.L1141:
	cmp	r7, #1	@ rawnum,
	beq	.L1132	@,
	add	lr, r8, #1	@ temp.3726, index.3721,
	mov	r8, lr, asl #22	@ index.3721, temp.3726,
	mov	r8, r8, lsr #22	@ index.3721, index.3721,
	mla	r1, r2, r8, r5	@ tmp246, tmp224, index.3721, pSmInstArray
	ldr	lr, [r1, #216]	@ <variable>.Length, <variable>.Length
	ldr	r0, [r1, #212]	@, <variable>.VirAddr
	add	r3, r3, lr	@ SrcLength.3728, SrcLength, <variable>.Length
	cmp	r3, #2	@ SrcLength.3728,
	str	r0, [fp, #-52]	@, %sfp
	ble	.L1142	@,
	add	r1, r8, #1020	@ tmp254, index.3721,
	sub	r3, r3, #3	@ SrcLength, SrcLength.3728,
	add	lr, r1, #3	@ tmp254, tmp254,
	sub	r7, r7, #1	@ rawnum, rawnum,
	mov	r0, lr, asl #22	@ tmp256, tmp254,
	mov	r1, r0, lsr #22	@ tmp256, tmp256,
	ldr	r0, [fp, #-52]	@, %sfp
	mla	r2, r2, r1, r5	@ tmp261, tmp224, tmp256, pSmInstArray
	ldr	lr, [r2, #216]	@ <variable>.Length, <variable>.Length
	rsb	r1, lr, #3	@ tmp263, <variable>.Length,
	add	r2, r0, r1	@,, tmp263
	str	r2, [fp, #-52]	@, %sfp
	b	.L1140	@
.L1142:
	cmp	r7, #2	@ rawnum,
	beq	.L1132	@,
	add	r0, r8, #1	@ temp.3730, index.3721,
	mov	r8, r0, asl #22	@ index.3721, temp.3730,
	mov	r8, r8, lsr #22	@ index.3721, index.3721,
	mla	r1, r2, r8, r5	@ tmp269, tmp224, index.3721, pSmInstArray
	ldr	r0, [r1, #216]	@ <variable>.Length, <variable>.Length
	ldr	lr, [r1, #212]	@, <variable>.VirAddr
	add	r3, r3, r0	@ SrcLength.3732, SrcLength.3728, <variable>.Length
	cmp	r3, #2	@ SrcLength.3732,
	str	lr, [fp, #-52]	@, %sfp
	ble	.L1132	@,
	add	r1, r8, #1020	@ tmp277, index.3721,
	sub	r3, r3, #3	@ SrcLength, SrcLength.3732,
	add	r0, r1, #3	@ tmp277, tmp277,
	add	r1, r1, #2	@ tmp288, tmp288,
	sub	r7, r7, #2	@ rawnum, rawnum,
	mov	lr, r0, asl #22	@ tmp279, tmp277,
	mov	r1, r1, asl #22	@ tmp290, tmp288,
	mov	r0, lr, lsr #22	@ tmp279, tmp279,
	mov	lr, r1, lsr #22	@ tmp290, tmp290,
	mla	r0, r2, r0, r5	@ tmp284, tmp224, tmp279, pSmInstArray
	mla	r2, r2, lr, r5	@ tmp295, tmp224, tmp290, pSmInstArray
	ldr	r1, [r0, #216]	@ <variable>.Length, <variable>.Length
	ldr	lr, [r2, #216]	@ <variable>.Length, <variable>.Length
	rsb	r0, r1, #3	@ tmp286, <variable>.Length,
	ldr	r2, [fp, #-52]	@, %sfp
	rsb	r1, lr, r0	@ tmp297, <variable>.Length, tmp286
	add	lr, r2, r1	@,, tmp297
	str	lr, [fp, #-52]	@, %sfp
	b	.L1140	@
	.fnend
	.size	SM_CopyRawToSeg, .-SM_CopyRawToSeg
	.align	2
	.global	SM_ReadStreamSeg
	.type	SM_ReadStreamSeg, %function
SM_ReadStreamSeg:
	.fnstart
.LFB1580:
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
	mov	r7, r0	@ SmID, SmID
	add	r2, r7, r7, asl #1	@, tmp144, SmID, SmID,
	movw	r0, #:lower16:.LANCHOR0	@ tmp140,
	movt	r0, #:upper16:.LANCHOR0	@ tmp140,
	subs	r6, r1, #0	@ pStreamSeg, pStreamSeg
	add	r3, r0, r2, asl #4	@, tmp146, tmp140, tmp144,
	ldr	r5, [r3, #40]	@ pSmInstArray, <variable>.pSmInstArray
	bne	.L1163	@,
.L1156:
	mvn	r4, #0	@ ret,
.L1161:
	mov	r0, r4	@, ret
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L1163:
	cmp	r5, #0	@ pSmInstArray,
	beq	.L1156	@,
	ldr	r3, [r5, #56]	@ D.51252, <variable>.Config.VidStd
	sub	r1, r3, #8	@ tmp148, D.51252,
	cmp	r3, #5	@ D.51252,
	cmpne	r1, #1	@, tmp148,
	bls	.L1157	@,
	cmp	r3, #4	@ D.51252,
	beq	.L1157	@,
	cmp	r3, #10	@ D.51252,
	beq	.L1157	@,
	cmp	r3, #14	@ D.51252,
	beq	.L1157	@,
	cmp	r3, #11	@ D.51252,
	beq	.L1157	@,
	cmp	r3, #12	@ D.51252,
	beq	.L1157	@,
	cmp	r3, #13	@ D.51252,
	beq	.L1157	@,
	cmp	r3, #1	@ D.51252,
	bne	.L1158	@,
	ldr	r4, [r5, #72]	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile, <variable>.Config.StdExt.Vc1Ext.IsAdvProfile
	cmp	r4, #0	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile,
	bne	.L1158	@,
.L1157:
	mov	r0, r7	@, SmID
	mov	r1, r6	@, pStreamSeg
	bl	SM_CopyRawToSeg	@
	cmp	r0, #0	@,
	bne	.L1164	@,
.L1158:
	add	ip, r5, #98304	@, pSmInstArray,
	mov	r1, r6	@, pStreamSeg
	add	r0, ip, #232	@,,
	bl	GetStreamSeg	@
	subs	r4, r0, #0	@ ret,
	beq	.L1165	@,
.L1159:
	movw	r3, #:lower16:204748	@ tmp168,
	movt	r3, #:upper16:204748	@ tmp168,
	ldr	r2, [r5, r3]	@ <variable>.numReadSegFail, <variable>.numReadSegFail
	add	r0, r2, #1	@ tmp171, <variable>.numReadSegFail,
	str	r0, [r5, r3]	@ tmp171, <variable>.numReadSegFail
	b	.L1161	@
.L1165:
	movw	r8, #:lower16:vfmw_save_seg_file	@ tmp160,
	movt	r8, #:upper16:vfmw_save_seg_file	@ tmp160,
	ldr	lr, [r8, r7, asl #2]	@ tmp161, vfmw_save_seg_file
	cmp	lr, #0	@ tmp161,
	beq	.L1160	@,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r2, [r8, r7, asl #2]	@, vfmw_save_seg_file
	ldr	r1, [r6, #16]	@, <variable>.LenInByte
	ldr	r0, [r6, #0]	@, <variable>.VirAddr
	bl	klib_fwrite	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
.L1160:
	movw	ip, #:lower16:204748	@ tmp173,
	movt	ip, #:upper16:204748	@ tmp173,
	mov	r1, #0	@ tmp174,
	str	r1, [r5, ip]	@ tmp174, <variable>.numReadSegFail
	b	.L1161	@
.L1164:
	movw	r1, #:lower16:.LC157	@,
	mov	r0, #26	@,
	movt	r1, #:upper16:.LC157	@,
	mvn	r4, #6	@ ret,
	bl	dprint_vfmw	@
	b	.L1159	@
	.fnend
	.size	SM_ReadStreamSeg, .-SM_ReadStreamSeg
	.align	2
	.global	WriteHexFile
	.type	WriteHexFile, %function
WriteHexFile:
	.fnstart
.LFB1529:
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
	subs	r6, r1, #0	@ ScdId, ScdId
	mov	r5, r0	@ eVidStd, eVidStd
	ldmnefd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	movw	r4, #:lower16:.LANCHOR0	@ tmp176,
	movt	r4, #:upper16:.LANCHOR0	@ tmp176,
	ldr	r0, [r4, #1000]	@, g_hex_base_addr
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@,
	beq	.L1176	@,
	cmp	r5, #6	@ eVidStd,
	beq	.L1177	@,
	cmp	r5, #0	@ eVidStd,
	bne	.L1171	@,
	ldr	r1, .L1179	@,
	mov	r2, #17920	@,
	bl	memcpy	@
.L1170:
	ldr	ip, [r4, #868]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r1, #4480	@,
	add	r0, ip, #264	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r3, [r4, #868]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r1, [r4, #1000]	@, g_hex_base_addr
	add	r0, r3, #268	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r2, [r4, #868]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r1, #0	@,
	add	r0, r2, #256	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r0, [r4, #868]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r1, #1	@,
	add	r0, r0, #256	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
.L1172:
	movw	r0, #:lower16:-121388796	@,
	movt	r0, #:upper16:-121388796	@,
	bl	MEM_ReadPhyWord	@
	and	r0, r0, #1	@ tmp170,,
	cmp	r0, #1	@ tmp170,
	bne	.L1172	@,
	cmp	r5, #6	@ eVidStd,
	beq	.L1178	@,
	cmp	r5, #0	@ eVidStd,
	movweq	r3, #:lower16:g_DspDrvState	@ tmp173,
	movteq	r3, #:upper16:g_DspDrvState	@ tmp173,
	streq	r0, [r3, #0]	@ tmp170, g_DspDrvState
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L1171:
	mov	r0, r6	@, ScdId
	movw	r1, #:lower16:.LC159	@,
	movt	r1, #:upper16:.LC159	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L1177:
	movw	r1, #:lower16:.LANCHOR2	@,
	mov	r2, #17920	@,
	movt	r1, #:upper16:.LANCHOR2	@,
	bl	memcpy	@
	b	.L1170	@
.L1178:
	movw	lr, #:lower16:g_DspDrvState	@ tmp171,
	movt	lr, #:upper16:g_DspDrvState	@ tmp171,
	mov	r1, #2	@ tmp172,
	str	r1, [lr, #0]	@ tmp172, g_DspDrvState
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L1176:
	ldr	r2, [r4, #1000]	@, g_hex_base_addr
	movw	r1, #:lower16:.LC158	@,
	movt	r1, #:upper16:.LC158	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L1180:
	.align	2
.L1179:
	.word	.LANCHOR3+1552
	.fnend
	.size	WriteHexFile, .-WriteHexFile
	.align	2
	.global	WriteCabacTabDsp
	.type	WriteCabacTabDsp, %function
WriteCabacTabDsp:
	.fnstart
.LFB1528:
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
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ p
	addne	r4, r0, #5120	@ D.57326, p,
	movwne	r3, #:lower16:g_CabacMN	@ ivtmp.3835,
	movtne	r3, #:upper16:g_CabacMN	@ ivtmp.3835,
	beq	.L1188	@,
.L1183:
	ldr	ip, [r3, #0]	@ tmp144, g_CabacMN
	add	lr, r3, #32	@ tmp153, ivtmp.3835,
	add	r2, r0, #32	@ tmp152, p,
	str	ip, [r0, #0]	@ tmp144,* p
	ldr	r1, [r3, #4]	@ tmp145, g_CabacMN
	str	r1, [r0, #4]	@ tmp145,
	ldr	ip, [r3, #8]	@ tmp146, g_CabacMN
	str	ip, [r0, #8]	@ tmp146,
	ldr	r1, [r3, #12]	@ tmp147, g_CabacMN
	str	r1, [r0, #12]	@ tmp147,
	ldr	ip, [r3, #16]	@ tmp148, g_CabacMN
	str	ip, [r0, #16]	@ tmp148,
	ldr	r1, [r3, #20]	@ tmp149, g_CabacMN
	str	r1, [r0, #20]	@ tmp149,
	ldr	ip, [r3, #24]	@ tmp150, g_CabacMN
	str	ip, [r0, #24]	@ tmp150,
	ldr	r1, [r3, #28]	@ tmp151, g_CabacMN
	str	r1, [r0, #28]	@ tmp151,
	ldr	ip, [r3, #32]	@ tmp156, g_CabacMN
	add	r3, lr, #32	@ ivtmp.3835, tmp153,
	str	ip, [r0, #32]	@ tmp156,
	add	r0, r2, #32	@ p, tmp152,
	ldr	r1, [lr, #4]	@ tmp157, g_CabacMN
	cmp	r0, r4	@ p, D.57326
	str	r1, [r2, #4]	@ tmp157,
	ldr	ip, [lr, #8]	@ tmp158, g_CabacMN
	str	ip, [r2, #8]	@ tmp158,
	ldr	r1, [lr, #12]	@ tmp159, g_CabacMN
	str	r1, [r2, #12]	@ tmp159,
	ldr	ip, [lr, #16]	@ tmp160, g_CabacMN
	str	ip, [r2, #16]	@ tmp160,
	ldr	r1, [lr, #20]	@ tmp161, g_CabacMN
	str	r1, [r2, #20]	@ tmp161,
	ldr	ip, [lr, #24]	@ tmp162, g_CabacMN
	str	ip, [r2, #24]	@ tmp162,
	ldr	r1, [lr, #28]	@ tmp163, g_CabacMN
	str	r1, [r2, #28]	@ tmp163,
	bne	.L1183	@,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L1188:
	movw	r1, #:lower16:.LC160	@,
	mov	r2, #127	@,
	movt	r1, #:upper16:.LC160	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	WriteCabacTabDsp, .-WriteCabacTabDsp
	.align	2
	.global	SM_OpenSCDDrv
	.type	SM_OpenSCDDrv, %function
SM_OpenSCDDrv:
	.fnstart
.LFB1570:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp240,
	cmp	r2, #1	@ ScdId,
	movt	r4, #:upper16:.LANCHOR0	@ tmp240,
	movw	r3, #:lower16:-121389056	@ tmp163,
	mov	r5, r0	@ MemAddr, MemAddr
	movt	r3, #:upper16:-121389056	@ tmp163,
	mov	r6, r1	@ MemSize, MemSize
	str	r3, [r4, #1004]	@ tmp163, s_RegPhyBaseAddr_1
	str	r3, [r4, #868]	@ tmp163, s_RegPhyBaseAddr
	bls	.L1202	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC161	@,
	ldr	r2, .L1208	@,
	movt	r1, #:upper16:.LC161	@,
	bl	dprint_vfmw	@
	mvn	r0, #6	@ D.50706,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L1202:
	bne	.L1193	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC162	@,
	ldr	r2, .L1208	@,
	movt	r1, #:upper16:.LC162	@,
	movw	r3, #1785	@,
	bl	dprint_vfmw	@
	mvn	r0, #6	@ D.50706,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L1193:
	movw	r0, #:lower16:g_vdm_hal_fun_ptr	@ tmp173,
	movt	r0, #:upper16:g_vdm_hal_fun_ptr	@ tmp173,
	ldr	r3, [r0, #16]	@ D.50710, g_vdm_hal_fun_ptr.pfun_SCDDRV_OpenHardware
	cmp	r3, #0	@ D.50710,
	beq	.L1194	@,
	mov	r0, #0	@,
	blx	r3	@ D.50710
.L1195:
	ldr	r1, [r4, #848]	@ <variable>.IsScdDrvOpen, <variable>.IsScdDrvOpen
	movw	r4, #:lower16:.LANCHOR0	@ tmp175,
	movt	r4, #:upper16:.LANCHOR0	@ tmp175,
	cmp	r1, #1	@ <variable>.IsScdDrvOpen,
	beq	.L1196	@,
	mov	r0, #0	@,
	mov	sl, r0	@ tmp180,
	bl	ResetSCD	@
	mov	r1, #96	@,
	add	r0, r4, #772	@, tmp175,
	bl	__memzero	@
	add	ip, r5, #3	@ tmp183, MemAddr,
	bic	r8, ip, #3	@ tmp184, tmp183,
	movw	r0, #:lower16:g_VfmwGlobalStat	@ tmp181,
	rsb	r8, r5, r8	@ Offset, MemAddr, tmp184
	movt	r0, #:upper16:g_VfmwGlobalStat	@ tmp181,
	add	r3, r8, r5	@ D.50731, Offset, MemAddr
	str	sl, [r4, #768]	@ tmp180, s_eScdDrvSleepStage
	str	sl, [r0, #76]	@ tmp180, <variable>.u32SaScdLoad
	mov	r0, r3	@, D.50731
	str	r3, [r4, #780]	@ D.50731, <variable>.ScdDrvMem.DownMsgMemAddr
	str	r5, [r4, #772]	@ MemAddr, <variable>.ScdDrvMem.HwMemAddr
	str	r6, [r4, #776]	@ MemSize, <variable>.ScdDrvMem.HwMemSize
	bl	MEM_Phy2Vir	@
	add	r1, r8, #12288	@ D.50736, Offset,
	mov	r2, #12288	@ tmp190,
	add	ip, r1, r5	@ temp.3884, D.50736, MemAddr
	str	r2, [r4, #788]	@ tmp190, <variable>.ScdDrvMem.DownMsgMemSize
	str	ip, [r4, #792]	@ temp.3884, <variable>.ScdDrvMem.UpMsgMemAddr
	str	r0, [r4, #784]	@, <variable>.ScdDrvMem.pDownMsgMemVirAddr
	mov	r0, ip	@, temp.3884
	bl	MEM_Phy2Vir	@
	add	r3, r8, #21504	@ Offset.3885, Offset,
	add	ip, r3, r5	@ temp.3886, Offset.3885, MemAddr
	mov	r1, #9216	@ tmp194,
	str	ip, [r4, #804]	@ temp.3886, <variable>.ScdDrvMem.DvmMemAddr
	str	r1, [r4, #800]	@ tmp194, <variable>.ScdDrvMem.UpMsgMemSize
	str	r0, [r4, #796]	@, <variable>.ScdDrvMem.pUpMsgMemVirAddr
	mov	r0, ip	@, temp.3886
	bl	MEM_Phy2Vir	@
	cmp	r0, sl	@ D.50742,
	str	r0, [r4, #808]	@ D.50742, <variable>.ScdDrvMem.pDvmMemVirAddr
	beq	.L1203	@,
	mov	r1, #512	@,
	add	r8, r8, #22016	@ Offset.3887, Offset,
	bl	__memzero	@
	add	r0, r8, r5	@ temp.3888, Offset.3887, MemAddr
	mov	r1, #512	@ tmp201,
	str	r0, [r4, #816]	@ temp.3888, <variable>.ScdDrvMem.DspSedTopMemAddr
	str	r1, [r4, #812]	@ tmp201, <variable>.ScdDrvMem.DvmMemSize
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ D.50754,
	str	r0, [r4, #820]	@ D.50754, <variable>.ScdDrvMem.pDspSedTopMemVirAddr
	beq	.L1204	@,
	mov	r7, #278528	@ tmp208,
	str	r7, [r4, #824]	@ tmp208, <variable>.ScdDrvMem.DspSedTopMemSize
	mov	r1, r7	@, tmp208
	bl	__memzero	@
	add	r0, r8, r7	@ Offset.3889, Offset.3887,
	add	r0, r0, r5	@ temp.3890, Offset.3889, MemAddr
	str	r0, [r4, #828]	@ temp.3890, <variable>.ScdDrvMem.DspCaMnMemAddr
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ D.50766,
	str	r0, [r4, #832]	@ D.50766, <variable>.ScdDrvMem.pDspCaMnMemVirAddr
	beq	.L1205	@,
	mov	r1, r7	@, tmp208
	add	r8, r8, #557056	@ Offset.3891, Offset.3887,
	bl	__memzero	@
	ldr	r0, [r4, #828]	@, <variable>.ScdDrvMem.DspCaMnMemAddr
	str	r7, [r4, #836]	@ tmp208, <variable>.ScdDrvMem.DspCaMnMemSize
	bl	WriteCabacTabDsp	@
	add	r1, r8, r5	@ tmp218, Offset.3891, MemAddr
	add	r2, r1, #127	@ tmp219, tmp218,
	bic	r0, r2, #127	@ g_hex_base_addr.508, tmp219,
	str	r0, [r4, #1000]	@ g_hex_base_addr.508, g_hex_base_addr
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ D.50783,
	str	r0, [r4, #1008]	@ D.50783, g_hex_base_vir_addr
	beq	.L1206	@,
	add	r8, r8, #17920	@ D.50791, Offset.3891,
	ldr	lr, [r4, #868]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	cmp	r6, r8	@ MemSize, D.50791
	mov	r3, #17920	@ tmp227,
	str	sl, [r4, #844]	@ tmp180, <variable>.ScdDrvMem.ScdResetRegAddr
	str	r3, [r4, #1012]	@ tmp227, g_hex_len
	str	lr, [r4, #840]	@ s_RegPhyBaseAddr, <variable>.ScdDrvMem.ScdRegAddr
	bge	.L1207	@,
.L1196:
	mvn	r0, #6	@ D.50706,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L1194:
	mov	r0, r3	@, D.50710
	movw	r1, #:lower16:.LC56	@,
	movw	r2, #1789	@,
	movt	r1, #:upper16:.LC56	@,
	bl	dprint_vfmw	@
	b	.L1195	@
.L1206:
	movw	r1, #:lower16:.LC166	@,
	ldr	r2, .L1208	@,
	movt	r1, #:upper16:.LC166	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.50706,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L1207:
	ldr	ip, [r4, #784]	@ <variable>.ScdDrvMem.pDownMsgMemVirAddr, <variable>.ScdDrvMem.pDownMsgMemVirAddr
	cmp	ip, #0	@ <variable>.ScdDrvMem.pDownMsgMemVirAddr,
	beq	.L1196	@,
	ldr	r2, [r4, #796]	@ <variable>.ScdDrvMem.pUpMsgMemVirAddr, <variable>.ScdDrvMem.pUpMsgMemVirAddr
	cmp	r2, #0	@ <variable>.ScdDrvMem.pUpMsgMemVirAddr,
	movne	r2, #1	@ tmp238,
	movne	r0, sl	@ D.50706, tmp180
	strne	r2, [r4, #848]	@ tmp238, <variable>.IsScdDrvOpen
	ldmnefd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	b	.L1196	@
.L1205:
	movw	r1, #:lower16:.LC165	@,
	ldr	r2, .L1208	@,
	movt	r1, #:upper16:.LC165	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.50706,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L1203:
	movw	r1, #:lower16:.LC163	@,
	ldr	r2, .L1208	@,
	movt	r1, #:upper16:.LC163	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.50706,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L1204:
	movw	r1, #:lower16:.LC164	@,
	ldr	r2, .L1208	@,
	movt	r1, #:upper16:.LC164	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.50706,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L1209:
	.align	2
.L1208:
	.word	.LANCHOR1+372
	.fnend
	.size	SM_OpenSCDDrv, .-SM_OpenSCDDrv
	.align	2
	.global	JudgeH264NewFrame
	.type	JudgeH264NewFrame, %function
JudgeH264NewFrame:
	.fnstart
.LFB1597:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #36
	sub	sp, sp, #36	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r1, #5	@ length,
	mov	r2, r1	@ length, length
	ble	.L1211	@,
	cmp	r0, #0	@ pInput,
	beq	.L1211	@,
	sub	r4, fp, #52	@ tmp140,,
	mov	r1, r0	@, pInput
	mov	r0, r4	@, tmp140
	bl	BsInit	@
	mov	r0, r4	@, tmp140
	mov	r1, #32	@,
	bl	BsGet	@
	and	r0, r0, #31	@ NalUnitType,,
	cmp	r0, #1	@ NalUnitType,
	cmpne	r0, #5	@, NalUnitType,
	beq	.L1214	@,
.L1211:
	mov	r0, #0	@ D.51922,
.L1212:
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L1214:
	mov	r0, r4	@, tmp140
	bl	BsUeV	@
	rsbs	r0, r0, #1	@ D.51922,
	movcc	r0, #0	@ D.51922
	b	.L1212	@
	.fnend
	.size	JudgeH264NewFrame, .-JudgeH264NewFrame
	.align	2
	.global	ProcessScdReturn
	.type	ProcessScdReturn, %function
ProcessScdReturn:
	.fnstart
.LFB1598:
	@ args = 0, pretend = 0, frame = 280
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #292
	sub	sp, sp, #292	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	ldrsb	r3, [r0, #5]	@ <variable>.IsWaitSCD, <variable>.IsWaitSCD
	mov	r6, #0	@ tmp199,
	mov	r4, r0	@ pScdInstance, pScdInstance
	cmp	r3, r6	@ <variable>.IsWaitSCD,
	mov	r5, r1	@ ScdId, ScdId
	str	r6, [fp, #-52]	@ tmp199, SegBufAddr
	str	r6, [fp, #-56]	@ tmp199, SegBufLength
	beq	.L1216	@,
	movw	r7, #:lower16:190760	@ tmp202,
	movt	r7, #:upper16:190760	@ tmp202,
	ldr	r0, [r0, r7]	@ <variable>.SmPushRaw.PushRawOver, <variable>.SmPushRaw.PushRawOver
	cmp	r0, #3	@ <variable>.SmPushRaw.PushRawOver,
	beq	.L1277	@,
	movw	r0, #:lower16:-121386976	@,
	movt	r0, #:upper16:-121386976	@,
	bl	MEM_ReadPhyWord	@
	sub	r8, fp, #92	@ tmp211,,
	mov	ip, #2	@ tmp208,
	sub	r0, fp, #172	@,,
	str	ip, [r4, r7]	@ tmp208, <variable>.SmPushRaw.PushRawOver
	mov	r1, #80	@,
	bl	__memzero	@
	sub	r0, fp, #252	@,,
	mov	r1, #80	@,
	bl	__memzero	@
	mov	r0, r8	@, tmp211
	mov	r1, #24	@,
	bl	__memzero	@
	movw	r2, #:lower16:204756	@ tmp214,
	movt	r2, #:upper16:204756	@ tmp214,
	str	r6, [fp, #-64]	@ tmp199, TmpAddr
	str	r6, [fp, #-60]	@ tmp199, SegFreeBufLen
	mov	r0, r8	@, tmp211
	ldr	r3, [r4, r2]	@, <variable>.UpMsgStepNum
	mov	r1, r5	@, ScdId
	str	r3, [fp, #-260]	@, %sfp
	bl	ReadScdStateReg	@
	ldr	ip, [fp, #-76]	@ SmStateReg.ScdRollAddr, SmStateReg.ScdRollAddr
	cmp	ip, #0	@ SmStateReg.ScdRollAddr,
	beq	.L1216	@,
	ldr	r8, [fp, #-80]	@, SmStateReg.ScdNum
	movw	lr, #:lower16:100000	@ tmp643,
	movt	lr, #:upper16:100000	@ tmp643,
	add	r1, r4, #208	@, pScdInstance,
	cmp	r8, lr	@, tmp643
	str	r1, [fp, #-292]	@, %sfp
	str	r8, [fp, #-280]	@, %sfp
	str	r8, [fp, #-48]	@, ScdSegNum
	bls	.L1220	@,
	ldr	r0, [r4, #56]	@ <variable>.Config.VidStd, <variable>.Config.VidStd
	cmp	r0, #0	@ <variable>.Config.VidStd,
	beq	.L1278	@,
.L1220:
	add	r7, r4, #98304	@, pScdInstance,
	add	r6, r7, #232	@,,
	str	r6, [fp, #-264]	@, %sfp
	cmp	r6, #0	@,
	beq	.L1221	@,
	movw	lr, #:lower16:190720	@ tmp221,
	movw	sl, #:lower16:190724	@ tmp224,
	movt	lr, #:upper16:190720	@ tmp221,
	movt	sl, #:upper16:190724	@ tmp224,
	ldr	r9, [r4, lr]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	ldr	r8, [r4, sl]	@ <variable>.StreamSegArray.SegBufSize, <variable>.StreamSegArray.SegBufSize
	str	r9, [fp, #-52]	@ <variable>.StreamSegArray.SegBufPhyAddr,
	str	r8, [fp, #-56]	@ <variable>.StreamSegArray.SegBufSize,
.L1221:
	movw	r0, #:lower16:-121386976	@,
	movt	r0, #:upper16:-121386976	@,
	bl	MEM_ReadPhyWord	@
	ldr	r6, [fp, #-48]	@ ScdSegNum, ScdSegNum
	cmp	r6, #1152	@ ScdSegNum,
	movge	r6, #1152	@ D.52025,
	and	r0, r0, #15	@ tmp227,,
	str	r0, [r4, #16]	@ tmp227, <variable>.SegFilter.ProtocolType
	movw	r0, #:lower16:-121386996	@,
	movt	r0, #:upper16:-121386996	@,
	bl	MEM_ReadPhyWord	@
	ldr	r1, [fp, #-260]	@, %sfp
	bl	__aeabi_uidiv	@
	cmp	r6, r0	@ D.52025,
	bhi	.L1279	@,
	ldr	r3, [fp, #-48]	@ ScdSegNum.3975, ScdSegNum
	cmp	r3, #1152	@ ScdSegNum.3975,
	movlt	r0, r3	@ iftmp.602, ScdSegNum.3975
	movge	r0, #1152	@ iftmp.602,
.L1223:
	cmp	r0, r3	@ iftmp.602, ScdSegNum.3975
	str	r0, [r4, #40]	@ iftmp.602, <variable>.SegFilter.SegNum
	bge	.L1224	@,
	ldrsb	r1, [r4, #2]	@ <variable>.LastCfgAllRawFlag, <variable>.LastCfgAllRawFlag
	cmp	r1, #1	@ <variable>.LastCfgAllRawFlag,
	moveq	r1, #0	@ tmp241,
	streqb	r1, [r4, #2]	@ tmp241, <variable>.LastCfgAllRawFlag
.L1224:
	movw	r0, #:lower16:190784	@ tmp243,
	movw	r6, #:lower16:190720	@ tmp247,
	movt	r0, #:upper16:190784	@ tmp243,
	movt	r6, #:upper16:190720	@ tmp247,
	movw	r9, #:lower16:190864	@ tmp255,
	movt	r9, #:upper16:190864	@ tmp255,
	add	sl, r4, #190464	@ D.52052, pScdInstance,
	movw	r2, #:lower16:98536	@ tmp246,
	movt	r2, #:upper16:98536	@ tmp246,
	ldr	lr, [fp, #-52]	@ SegBufAddr, SegBufAddr
	ldr	r8, [fp, #-56]	@ SegBufLength, SegBufLength
	ldr	r3, [r4, r0]	@ <variable>.BufAddrCfg.pUpMsgVirAddr, <variable>.BufAddrCfg.pUpMsgVirAddr
	add	r0, r4, #8	@, pScdInstance,
	ldr	r7, [r4, r6]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	add	r6, sl, #420	@ D.52052, D.52052,
	ldr	sl, [r4, r9]	@ <variable>.InstID, <variable>.InstID
	ldr	r9, [fp, #-76]	@ SmStateReg.ScdRollAddr, SmStateReg.ScdRollAddr
	rsb	r7, r7, lr	@ tmp248, <variable>.StreamSegArray.SegBufPhyAddr, SegBufAddr
	str	r0, [fp, #-296]	@, %sfp
	mov	r1, r6	@, D.52052
	ldr	ip, [r4, r2]	@ <variable>.StreamSegArray.pSegBufVirAddr, <variable>.StreamSegArray.pSegBufVirAddr
	sub	r2, fp, #68	@,,
	str	r3, [r4, #12]	@ <variable>.BufAddrCfg.pUpMsgVirAddr, <variable>.SegFilter.pScdUpMsg
	sub	r3, fp, #48	@,,
	str	r8, [r4, #32]	@ SegBufLength, <variable>.SegFilter.SegBufSize
	add	ip, ip, r7	@ tmp252, <variable>.StreamSegArray.pSegBufVirAddr, tmp248
	str	r9, [r4, #36]	@ SmStateReg.ScdRollAddr, <variable>.SegFilter.SegBufRollAddr
	str	ip, [r4, #8]	@ tmp252, <variable>.SegFilter.pSegBufVirAddr
	str	sl, [r4, #44]	@ <variable>.InstID, <variable>.SegFilter.SMInstID
	str	lr, [r4, #28]	@ SegBufAddr, <variable>.SegFilter.SegBufPhyAddr
	ldr	r8, [fp, #-260]	@, %sfp
	str	r8, [sp, #0]	@,
	bl	ScdReturnSegFilter	@
	cmp	r0, #0	@
	str	r0, [fp, #-268]	@, %sfp
	bne	.L1216	@,
	ldr	r7, [fp, #-48]	@ ScdSegNum.3975, ScdSegNum
	cmp	r7, #1	@ ScdSegNum.3975,
	ble	.L1280	@,
	ldr	r8, [fp, #-268]	@, %sfp
	movw	r0, #:lower16:-121386996	@,
	movt	r0, #:upper16:-121386996	@,
	strb	r8, [r4, #0]	@, <variable>.SegFullFlag
	bl	MEM_ReadPhyWord	@
	ldr	r1, [fp, #-260]	@, %sfp
	bl	__aeabi_uidiv	@
	cmp	r7, r0	@ ScdSegNum.3975,
	bcs	.L1233	@,
	ldr	r3, [fp, #-48]	@ ScdSegNum, ScdSegNum
	ldr	r8, [fp, #-260]	@, %sfp
	sub	r3, r3, #1	@ prephitmp.3947, ScdSegNum,
	str	r3, [fp, #-48]	@ prephitmp.3947, ScdSegNum
	mul	lr, r8, r3	@ tmp336,, prephitmp.3947
	add	ip, lr, #47616	@ tmp337, tmp336,
	add	r1, ip, #105	@ tmp337, tmp337,
	add	r2, r4, r1, asl #2	@, tmp341, pScdInstance, tmp337,
	ldr	r0, [r2, #4]	@ tmp343, <variable>.TransFormSeg
	bic	r7, r0, #-2147483648	@, tmp343,
	str	r7, [fp, #-316]	@, %sfp
.L1234:
	ldr	r1, [r4, #56]	@ <variable>.Config.VidStd, <variable>.Config.VidStd
	cmp	r1, #2	@ <variable>.Config.VidStd,
	beq	.L1237	@,
	ldr	r6, [fp, #-48]	@, ScdSegNum
	str	r6, [fp, #-308]	@, %sfp
.L1238:
	movw	lr, #:lower16:190708	@ tmp356,
	movt	lr, #:upper16:190708	@ tmp356,
	add	r2, r4, #203776	@, pScdInstance,
	movw	r0, #:lower16:190720	@,
	add	r8, r2, #944	@,,
	movt	r0, #:upper16:190720	@,
	str	r8, [fp, #-288]	@, %sfp
	movw	r7, #:lower16:190864	@,
	movw	r8, #:lower16:98536	@,
	str	r0, [fp, #-276]	@, %sfp
	movt	r8, #:upper16:98536	@,
	movt	r7, #:upper16:190864	@,
	str	r8, [fp, #-272]	@, %sfp
	movw	r3, #:lower16:190704	@,
	str	r7, [fp, #-284]	@, %sfp
	movt	r3, #:upper16:190704	@,
	str	r3, [fp, #-304]	@, %sfp
	mov	r1, #0	@ ivtmp.3968,
	ldr	ip, [r4, lr]	@, <variable>.StreamSegArray.Tail
	mov	r6, r1	@ i.3989, ivtmp.3968
	ldr	r3, [fp, #-308]	@ prephitmp.4105, %sfp
	str	r1, [fp, #-300]	@ ivtmp.3968, %sfp
	str	ip, [fp, #-312]	@, %sfp
.L1239:
	cmp	r6, r3	@ i.3989, prephitmp.4105
	bge	.L1281	@,
	ldr	r9, [fp, #-260]	@, %sfp
	add	ip, r1, #1	@ D.52147, ivtmp.3968,
	add	r7, r1, r9	@ ivtmp.4098, ivtmp.3968,
	add	r1, r1, #47616	@ tmp358, ivtmp.3968,
	add	r0, r7, #47616	@ tmp364, ivtmp.4098,
	add	sl, r1, #104	@ tmp358, tmp358,
	add	r3, r0, #104	@ tmp364, tmp364,
	add	r9, ip, #47616	@ tmp648, D.52147,
	add	r1, r4, sl, asl #2	@, tmp362, pScdInstance, tmp358,
	add	r0, r6, #1	@, i.3989,
	add	r8, r4, r3, asl #2	@, tmp368, pScdInstance, tmp364,
	ldr	r3, [fp, #-52]	@ SegBufAddr, SegBufAddr
	add	r2, r4, r9, asl #2	@, tmp374, pScdInstance, tmp648,
	ldr	sl, [r8, #4]	@ NextSegPhyAddr, <variable>.TransFormSeg
	ldr	r2, [r2, #420]	@ tmp377, <variable>.TransFormSeg
	cmp	r3, sl	@ SegBufAddr, NextSegPhyAddr
	str	r0, [fp, #-256]	@, %sfp
	ldr	r8, [r1, #4]	@ CurrSegPhyAddr, <variable>.TransFormSeg
	ldreq	r5, [fp, #-76]	@ SmStateReg.ScdRollAddr, SmStateReg.ScdRollAddr
	mov	r1, r2, lsr #31	@ tmp376, tmp377,
	rsbne	r5, r8, sl	@ SegPacketLen, CurrSegPhyAddr, NextSegPhyAddr
	strb	r1, [fp, #-165]	@ tmp376, SegPacket.DspCheckPicOverFlag
	rsbeq	r5, r8, r5	@ SegPacketLen, CurrSegPhyAddr, SmStateReg.ScdRollAddr
	cmp	r5, #3	@ SegPacketLen,
	ble	.L1242	@,
	ldr	ip, [fp, #-240]	@ LastSegPacket.PhyAddr, LastSegPacket.PhyAddr
	cmp	ip, #0	@ LastSegPacket.PhyAddr,
	bne	.L1282	@,
	ldr	lr, [r4, #56]	@ <variable>.Config.VidStd, <variable>.Config.VidStd
	cmp	lr, #2	@ <variable>.Config.VidStd,
	beq	.L1283	@,
.L1248:
	ldr	r0, [fp, #-276]	@, %sfp
	ldr	r1, [fp, #-272]	@, %sfp
	ldr	r2, [r4, r0]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	ldr	ip, [r4, r1]	@ <variable>.StreamSegArray.pSegBufVirAddr, <variable>.StreamSegArray.pSegBufVirAddr
	sub	r1, fp, #64	@,,
	rsb	r3, r2, r8	@ tmp421, <variable>.StreamSegArray.SegBufPhyAddr, CurrSegPhyAddr
	ldr	r0, [fp, #-264]	@, %sfp
	sub	r2, fp, #60	@,,
	add	lr, ip, r3	@ tmp424, <variable>.StreamSegArray.pSegBufVirAddr, tmp421
	str	r5, [fp, #-156]	@ SegPacketLen, SegPacket.LenInByte
	mov	ip, #1	@ tmp417,
	str	lr, [fp, #-172]	@ tmp424, SegPacket.VirAddr
	strb	ip, [fp, #-167]	@ tmp417, SegPacket.IsLastSeg
	str	r8, [fp, #-160]	@ CurrSegPhyAddr, SegPacket.PhyAddr
	bl	GetFreeSegBuf	@
	ldr	r3, [fp, #-160]	@ SegPacket.PhyAddr, SegPacket.PhyAddr
	ldr	r2, [fp, #-60]	@ SegFreeBufLen.4002, SegFreeBufLen
	cmp	r3, #0	@ SegPacket.PhyAddr,
	bne	.L1284	@,
.L1249:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC177	@,
	movt	r1, #:upper16:.LC177	@,
	mov	r5, #1	@ ScdErrFlag,
	bl	dprint_vfmw	@
	ldr	r3, [fp, #-316]	@, %sfp
	ldr	r2, [fp, #-60]	@, SegFreeBufLen
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC178	@,
	movt	r1, #:upper16:.LC178	@,
	bl	dprint_vfmw	@
	ldrb	r7, [fp, #-167]	@ zero_extendqisi2	@ SegPacket.IsLastSeg, SegPacket.IsLastSeg
	movw	r1, #:lower16:.LC171	@,
	mov	r0, #0	@,
	ldr	r2, [fp, #-160]	@, SegPacket.PhyAddr
	movt	r1, #:upper16:.LC171	@,
	ldr	r3, [fp, #-156]	@, SegPacket.LenInByte
	str	r7, [sp, #0]	@ SegPacket.IsLastSeg,
	bl	dprint_vfmw	@
.L1246:
	movw	r0, #:lower16:190704	@ tmp580,
	movw	r7, #:lower16:190708	@ tmp581,
	movt	r0, #:upper16:190704	@ tmp580,
	movt	r7, #:upper16:190708	@ tmp581,
	ldr	r3, [r4, r0]	@ prephitmp.3949, <variable>.StreamSegArray.Head
	ldr	r2, [r4, r7]	@ prephitmp.4086, <variable>.StreamSegArray.Tail
	cmp	r3, r2	@ prephitmp.3949, prephitmp.4086
	beq	.L1261	@,
	ldr	r3, [r4, #56]	@ <variable>.Config.VidStd, <variable>.Config.VidStd
	cmp	r3, #0	@ <variable>.Config.VidStd,
	movne	r3, r2	@ prephitmp.3949, prephitmp.4086
	beq	.L1285	@,
.L1261:
	ldr	r2, [fp, #-312]	@, %sfp
	cmp	r2, r3	@, prephitmp.3949
	movne	r3, #1	@ tmp620,
	moveq	r3, #0	@ tmp622,
	cmp	r6, #0	@ i.3989,
	strb	r3, [r4, #3]	@ tmp622, <variable>.InsertNewSegFlag
	bgt	.L1286	@,
	ldr	r8, [fp, #-308]	@, %sfp
	ldr	ip, [fp, #-280]	@, %sfp
	rsbs	r2, r8, #1	@ tmp639,
	movcc	r2, #0	@ tmp639
	cmp	ip, #1152	@,
	movls	r2, #0	@, tmp639,
	cmp	r2, #0	@ tmp639,
	beq	.L1268	@,
	ldr	r3, [r4, #56]	@ <variable>.Config.VidStd, <variable>.Config.VidStd
	cmp	r3, #2	@ <variable>.Config.VidStd,
	beq	.L1287	@,
.L1268:
	cmp	r5, #1	@ ScdErrFlag,
	bne	.L1218	@,
.L1216:
	mvn	ip, #6	@,
	str	ip, [fp, #-268]	@, %sfp
.L1218:
	ldr	r0, [fp, #-268]	@, %sfp
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L1279:
	movw	r0, #:lower16:-121386996	@,
	movt	r0, #:upper16:-121386996	@,
	bl	MEM_ReadPhyWord	@
	ldr	r1, [fp, #-260]	@, %sfp
	bl	__aeabi_uidiv	@
	ldr	r3, [fp, #-48]	@ ScdSegNum.3975, ScdSegNum
	b	.L1223	@
.L1242:
	sub	r2, r5, #1	@ tmp467, SegPacketLen,
	cmp	r2, #2	@ tmp467,
	bhi	.L1251	@,
	ldr	r0, [r4, #56]	@ <variable>.Config.VidStd, <variable>.Config.VidStd
	cmp	r0, #2	@ <variable>.Config.VidStd,
	beq	.L1288	@,
.L1247:
	ldr	r3, [fp, #-48]	@ prephitmp.4105, ScdSegNum
	mov	r1, r7	@ ivtmp.3968, ivtmp.4098
	ldr	r6, [fp, #-256]	@ i.3989, %sfp
	b	.L1239	@
.L1251:
	cmp	r5, #0	@ SegPacketLen,
	beq	.L1247	@,
	ldr	r5, [r4, #56]	@ <variable>.Config.VidStd, <variable>.Config.VidStd
	cmp	r5, #2	@ <variable>.Config.VidStd,
	beq	.L1289	@,
.L1252:
	ldr	r5, [fp, #-276]	@, %sfp
	rsb	lr, r3, sl	@ tmp511, SegBufAddr, NextSegPhyAddr
	ldr	r3, [fp, #-272]	@, %sfp
	ldr	r2, [fp, #-76]	@ SmStateReg.ScdRollAddr, SmStateReg.ScdRollAddr
	ldr	r1, [r4, r5]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	ldr	r5, [r4, r3]	@ <variable>.StreamSegArray.pSegBufVirAddr, <variable>.StreamSegArray.pSegBufVirAddr
	rsb	r3, r8, r2	@ D.52249, CurrSegPhyAddr, SmStateReg.ScdRollAddr
	ldr	r0, [fp, #-264]	@, %sfp
	rsb	ip, r1, r8	@ tmp506, <variable>.StreamSegArray.SegBufPhyAddr, CurrSegPhyAddr
	sub	r2, fp, #60	@,,
	sub	r1, fp, #64	@,,
	add	ip, r5, ip	@ tmp509, <variable>.StreamSegArray.pSegBufVirAddr, tmp506
	add	r3, lr, r3	@ tmp513, tmp511, D.52249
	str	ip, [fp, #-172]	@ tmp509, SegPacket.VirAddr
	mov	ip, #0	@,
	str	r3, [fp, #-156]	@ tmp513, SegPacket.LenInByte
	strb	ip, [fp, #-167]	@, SegPacket.IsLastSeg
	str	r8, [fp, #-160]	@ CurrSegPhyAddr, SegPacket.PhyAddr
	bl	GetFreeSegBuf	@
	ldr	r0, [fp, #-156]	@ SegPacket.LenInByte, SegPacket.LenInByte
	cmp	r0, #3	@ SegPacket.LenInByte,
	ble	.L1247	@,
	ldr	r0, [fp, #-264]	@, %sfp
	cmp	r0, #0	@,
	beq	.L1253	@,
	movw	r8, #:lower16:190708	@,
	movt	r8, #:upper16:190708	@,
	ldr	r2, [r4, r8]	@ <variable>.StreamSegArray.Tail, <variable>.StreamSegArray.Tail
	ldr	r8, [fp, #-304]	@, %sfp
	ldr	ip, [r4, r8]	@ <variable>.StreamSegArray.Head, <variable>.StreamSegArray.Head
	subs	lr, r2, ip	@, <variable>.StreamSegArray.Tail, <variable>.StreamSegArray.Head
	str	lr, [fp, #-300]	@, %sfp
	addmi	lr, lr, #1152	@,,
	strmi	lr, [fp, #-300]	@, %sfp
.L1254:
	ldr	r0, [fp, #-160]	@ D.54053, SegPacket.PhyAddr
	ldr	r1, [fp, #-300]	@, %sfp
	cmp	r0, #0	@ D.54053,
	ldr	r2, [fp, #-60]	@ SegFreeBufLen.4037, SegFreeBufLen
	rsb	ip, r1, #1152	@,,
	str	ip, [fp, #-300]	@, %sfp
	bne	.L1290	@,
.L1255:
	ldr	r5, [fp, #-300]	@, %sfp
	cmp	r5, #1	@,
	ble	.L1291	@,
	movw	r2, #4215	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC172	@,
	movt	r1, #:upper16:.LC172	@,
	bl	dprint_vfmw	@
	ldr	r8, [fp, #-316]	@, %sfp
	movw	r2, #4216	@,
	ldr	r3, [fp, #-60]	@, SegFreeBufLen
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC173	@,
	movt	r1, #:upper16:.LC173	@,
	str	r8, [sp, #0]	@,
	bl	dprint_vfmw	@
	ldrb	ip, [fp, #-247]	@ zero_extendqisi2	@ LastSegPacket.IsLastSeg, LastSegPacket.IsLastSeg
	ldr	r3, [fp, #-240]	@, LastSegPacket.PhyAddr
	movw	r1, #:lower16:.LC174	@,
	movt	r1, #:upper16:.LC174	@,
	mov	r0, #1	@,
	movw	r2, #4217	@,
.L1274:
	ldr	lr, [fp, #-236]	@ LastSegPacket.LenInByte, LastSegPacket.LenInByte
	mov	r5, #1	@ ScdErrFlag,
	str	ip, [sp, #4]	@ LastSegPacket.IsLastSeg,
	str	lr, [sp, #0]	@ LastSegPacket.LenInByte,
	bl	dprint_vfmw	@
	b	.L1246	@
.L1284:
	ldr	lr, [fp, #-172]	@ SegPacket.VirAddr, SegPacket.VirAddr
	cmp	lr, #0	@ SegPacket.VirAddr,
	beq	.L1249	@,
	ldr	r3, [fp, #-156]	@ SegPacket.LenInByte, SegPacket.LenInByte
	cmp	r2, r3	@ SegFreeBufLen.4002, SegPacket.LenInByte
	blt	.L1249	@,
	add	r9, r9, #104	@ tmp430, tmp648,
	ldr	r2, [fp, #-288]	@, %sfp
	sub	r3, fp, #172	@,,
	ldr	r0, [fp, #-292]	@, %sfp
	add	r9, r4, r9, asl #2	@, tmp434, pScdInstance, tmp430,
	ldr	r1, [r9, #4]	@ tmp437, <variable>.TransFormSeg
	bic	r1, r1, #-2147483648	@, tmp437,
	bl	GetSegPts	@
	ldr	ip, [fp, #-284]	@, %sfp
	ldr	r0, [fp, #-264]	@, %sfp
	sub	r1, fp, #172	@,,
	ldr	r2, [r4, ip]	@, <variable>.InstID
	bl	InsertStreamSeg	@
	cmp	r0, #0	@,
	bne	.L1292	@,
	ldr	r6, [r9, #4]	@ tmp454, <variable>.TransFormSeg
	movw	r1, #:lower16:.LC176	@,
	ldrd	r8, [fp, #-148]	@ SegPacket.Pts,,
	mov	r0, #26	@,
	bic	r2, r6, #-2147483648	@, tmp454,
	movt	r1, #:upper16:.LC176	@,
	strd	r8, [sp]	@ SegPacket.Pts,
	bl	dprint_vfmw	@
.L1258:
	ldrb	r6, [fp, #-167]	@ zero_extendqisi2	@ SegPacket.IsLastSeg, SegPacket.IsLastSeg
	movw	r1, #:lower16:.LC171	@,
	ldr	r2, [fp, #-160]	@, SegPacket.PhyAddr
	movt	r1, #:upper16:.LC171	@,
	ldr	r3, [fp, #-156]	@, SegPacket.LenInByte
	mov	r0, #26	@,
	str	r6, [sp, #0]	@ SegPacket.IsLastSeg,
	bl	dprint_vfmw	@
	b	.L1247	@
.L1282:
	ldr	r3, [fp, #-236]	@ LastSegPacket.LenInByte, LastSegPacket.LenInByte
	sub	r2, fp, #60	@,,
	ldr	r0, [fp, #-264]	@, %sfp
	sub	r1, fp, #64	@,,
	add	lr, r3, r5	@ tmp383, LastSegPacket.LenInByte, SegPacketLen
	str	lr, [fp, #-236]	@ tmp383, LastSegPacket.LenInByte
	bl	GetFreeSegBuf	@
	ldr	r5, [fp, #-240]	@ LastSegPacket.PhyAddr, LastSegPacket.PhyAddr
	ldr	r2, [fp, #-60]	@ SegFreeBufLen.614, SegFreeBufLen
	cmp	r5, #0	@ LastSegPacket.PhyAddr,
	bne	.L1293	@,
.L1244:
	movw	r2, #4075	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC172	@,
	movt	r1, #:upper16:.LC172	@,
	bl	dprint_vfmw	@
	ldr	r8, [fp, #-316]	@, %sfp
	movw	r2, #4076	@,
	ldr	r3, [fp, #-60]	@, SegFreeBufLen
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC173	@,
	movt	r1, #:upper16:.LC173	@,
	str	r8, [sp, #0]	@,
	bl	dprint_vfmw	@
	movw	r1, #:lower16:.LC174	@,
	mov	r0, #1	@,
	ldrb	ip, [fp, #-247]	@ zero_extendqisi2	@ LastSegPacket.IsLastSeg, LastSegPacket.IsLastSeg
	ldr	r3, [fp, #-240]	@, LastSegPacket.PhyAddr
	movt	r1, #:upper16:.LC174	@,
	movw	r2, #4077	@,
	b	.L1274	@
.L1293:
	ldr	r1, [fp, #-252]	@ LastSegPacket.VirAddr, LastSegPacket.VirAddr
	cmp	r1, #0	@ LastSegPacket.VirAddr,
	beq	.L1244	@,
	ldr	r0, [fp, #-236]	@ LastSegPacket.LenInByte, LastSegPacket.LenInByte
	cmp	r2, r0	@ SegFreeBufLen.614, LastSegPacket.LenInByte
	blt	.L1244	@,
	ldr	ip, [fp, #-284]	@, %sfp
	sub	r1, fp, #252	@,,
	ldr	r0, [fp, #-264]	@, %sfp
	ldr	r2, [r4, ip]	@, <variable>.InstID
	bl	InsertStreamSeg	@
	mov	r1, #80	@,
	mov	r5, r0	@ Ret.3988,
	sub	r0, fp, #252	@,,
	bl	__memzero	@
	cmp	r5, #0	@ Ret.3988,
	bne	.L1294	@,
	add	r8, r4, r9, asl #2	@, tmp399, pScdInstance, tmp648,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC170	@,
	movt	r1, #:upper16:.LC170	@,
	ldr	r2, [r8, #420]	@ tmp402, <variable>.TransFormSeg
	ldrd	r8, [fp, #-228]	@ LastSegPacket.Pts,,
	bic	r2, r2, #-2147483648	@, tmp402,
	strd	r8, [sp]	@ LastSegPacket.Pts,
	bl	dprint_vfmw	@
	ldrb	r6, [fp, #-247]	@ zero_extendqisi2	@ LastSegPacket.IsLastSeg, LastSegPacket.IsLastSeg
	movw	r1, #:lower16:.LC171	@,
	ldr	r2, [fp, #-240]	@, LastSegPacket.PhyAddr
	movt	r1, #:upper16:.LC171	@,
	ldr	r3, [fp, #-236]	@, LastSegPacket.LenInByte
	mov	r0, #26	@,
	str	r6, [sp, #0]	@ LastSegPacket.IsLastSeg,
	bl	dprint_vfmw	@
	b	.L1247	@
.L1283:
	ldr	r0, [fp, #-296]	@, %sfp
	sub	r1, fp, #172	@,,
	mov	r2, r6	@, i.3989
	ldr	r3, [fp, #-260]	@, %sfp
	bl	ScdParseUpMsgInfo	@
	b	.L1248	@
.L1278:
	ldr	r3, [fp, #-280]	@, %sfp
	movw	r2, #3879	@,
	movw	r1, #:lower16:.LC167	@,
	movt	r1, #:upper16:.LC167	@,
	mvn	r8, #6	@,
	str	r8, [fp, #-268]	@, %sfp
	bl	dprint_vfmw	@
	ldr	r0, [fp, #-292]	@, %sfp
	mov	r1, #1	@,
	bl	DeleteRawPacket	@
	b	.L1218	@
.L1281:
	mov	r5, #0	@ ScdErrFlag,
	b	.L1246	@
.L1290:
	ldr	r3, [fp, #-172]	@ SegPacket.VirAddr, SegPacket.VirAddr
	cmp	r3, #0	@ SegPacket.VirAddr,
	beq	.L1255	@,
	ldr	r3, [fp, #-156]	@ prephitmp.4040, SegPacket.LenInByte
	cmp	r2, r3	@ SegFreeBufLen.4037, prephitmp.4040
	blt	.L1255	@,
	cmp	ip, #1	@,
	ble	.L1256	@,
	add	r9, r9, #104	@ tmp527, tmp648,
	ldr	r1, [fp, #-76]	@ SmStateReg.ScdRollAddr, SmStateReg.ScdRollAddr
	ldr	r2, [fp, #-288]	@, %sfp
	sub	r3, fp, #172	@,,
	add	r9, r4, r9, asl #2	@, tmp531, pScdInstance, tmp527,
	rsb	ip, r0, r1	@ tmp526, D.54053, SmStateReg.ScdRollAddr
	str	ip, [fp, #-156]	@ tmp526, SegPacket.LenInByte
	ldr	lr, [r9, #4]	@ tmp534, <variable>.TransFormSeg
	ldr	r0, [fp, #-292]	@, %sfp
	bic	r1, lr, #-2147483648	@, tmp534,
	bl	GetSegPts	@
	ldr	r5, [fp, #-284]	@, %sfp
	ldr	r0, [fp, #-264]	@, %sfp
	sub	r1, fp, #172	@,,
	ldr	r2, [r4, r5]	@, <variable>.InstID
	bl	InsertStreamSeg	@
	subs	r5, r0, #0	@ Ret.4044,
	bne	.L1295	@,
	ldr	lr, [r9, #4]	@ tmp549, <variable>.TransFormSeg
	mov	r0, #26	@,
	ldrd	r8, [fp, #-148]	@ SegPacket.Pts,,
	movw	r1, #:lower16:.LC176	@,
	bic	r2, lr, #-2147483648	@, tmp549,
	movt	r1, #:upper16:.LC176	@,
	strd	r8, [sp]	@ SegPacket.Pts,
	bl	dprint_vfmw	@
	ldrb	ip, [fp, #-167]	@ zero_extendqisi2	@ SegPacket.IsLastSeg, SegPacket.IsLastSeg
	mov	r0, #26	@,
	ldr	r2, [fp, #-160]	@, SegPacket.PhyAddr
	movw	r1, #:lower16:.LC171	@,
	ldr	r3, [fp, #-156]	@, SegPacket.LenInByte
	movt	r1, #:upper16:.LC171	@,
	str	ip, [sp, #0]	@ SegPacket.IsLastSeg,
	bl	dprint_vfmw	@
	ldr	r8, [fp, #-276]	@, %sfp
	sub	r1, fp, #172	@,,
	ldr	r2, [fp, #-272]	@, %sfp
	ldr	ip, [fp, #-52]	@ SegBufAddr.4059, SegBufAddr
	ldr	r3, [r4, r8]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	ldr	r8, [fp, #-284]	@, %sfp
	rsb	sl, ip, sl	@ tmp562, SegBufAddr.4059, NextSegPhyAddr
	ldr	lr, [r4, r2]	@ <variable>.StreamSegArray.pSegBufVirAddr, <variable>.StreamSegArray.pSegBufVirAddr
	rsb	r3, r3, ip	@ tmp558, <variable>.StreamSegArray.SegBufPhyAddr, SegBufAddr.4059
	ldr	r0, [fp, #-264]	@, %sfp
	ldr	r2, [r4, r8]	@, <variable>.InstID
	add	r3, lr, r3	@ tmp561, <variable>.StreamSegArray.pSegBufVirAddr, tmp558
	str	sl, [fp, #-156]	@ tmp562, SegPacket.LenInByte
	str	r3, [fp, #-172]	@ tmp561, SegPacket.VirAddr
	mov	r3, #1	@ tmp554,
	str	ip, [fp, #-160]	@ SegBufAddr.4059, SegPacket.PhyAddr
	strb	r3, [fp, #-167]	@ tmp554, SegPacket.IsLastSeg
	bl	InsertStreamSeg	@
	cmp	r0, #0	@,
	beq	.L1258	@,
	ldrb	r7, [fp, #-167]	@ zero_extendqisi2	@ SegPacket.IsLastSeg, SegPacket.IsLastSeg
	movw	r1, #:lower16:.LC175	@,
	ldr	r2, [fp, #-160]	@, SegPacket.PhyAddr
	movt	r1, #:upper16:.LC175	@,
	ldr	r3, [fp, #-156]	@, SegPacket.LenInByte
	mov	r0, #26	@,
	str	r7, [sp, #0]	@ SegPacket.IsLastSeg,
	bl	dprint_vfmw	@
	b	.L1246	@
.L1233:
	movw	r0, #:lower16:-121386996	@,
	movt	r0, #:upper16:-121386996	@,
	bl	MEM_ReadPhyWord	@
	ldr	r1, [fp, #-260]	@, %sfp
	rsb	r0, r1, r0	@,,
	bl	__aeabi_uidiv	@
	sub	r3, r0, #1	@ prephitmp.3947,,
	str	r3, [fp, #-48]	@ prephitmp.3947, ScdSegNum
	cmp	r3, #0	@ prephitmp.3947,
	ldrge	ip, [fp, #-260]	@, %sfp
	movlt	r1, #4	@ prephitmp.3954,
	ldrlt	r3, [fp, #-268]	@ prephitmp.3947, %sfp
	mulge	r1, ip, r3	@ tmp350,, prephitmp.3947
	strlt	r3, [fp, #-48]	@ prephitmp.3947, ScdSegNum
	ldr	r2, [r4, #12]	@ <variable>.SegFilter.pScdUpMsg, <variable>.SegFilter.pScdUpMsg
	addge	r1, r1, #1	@ tmp351, tmp350,
	movge	r1, r1, asl #2	@ prephitmp.3954, tmp351,
	ldr	r0, [r2, r1]	@ tmp354,* prephitmp.3954
	bic	r7, r0, #-2147483648	@, tmp354,
	str	r7, [fp, #-316]	@, %sfp
	b	.L1234	@
.L1289:
	ldr	r3, [fp, #-260]	@, %sfp
	sub	r1, fp, #172	@,,
	ldr	r0, [fp, #-296]	@, %sfp
	mov	r2, r6	@, i.3989
	bl	ScdParseUpMsgInfo	@
	ldr	r3, [fp, #-52]	@ SegBufAddr, SegBufAddr
	b	.L1252	@
.L1285:
	ldr	r1, [fp, #-280]	@, %sfp
	ldr	r0, [fp, #-260]	@, %sfp
	sub	r3, r1, #-1073741823	@ tmp583,,
	mul	r2, r0, r3	@ temp.4089,, tmp583
	add	r8, r2, #47616	@ tmp585, temp.4089,
	add	lr, r4, r8, asl #2	@, tmp588, pScdInstance, tmp585,
	add	r8, r4, r8, asl #2	@, tmp596, pScdInstance, tmp585,
	ldr	r0, [lr, #420]	@, <variable>.TransFormSeg
	bl	MEM_Phy2Vir	@
	movw	ip, #:lower16:190756	@ tmp591,
	movt	ip, #:upper16:190756	@ tmp591,
	ldr	r1, [r8, #424]	@ tmp599, <variable>.TransFormSeg
	ldr	r3, [r4, ip]	@ <variable>.SmPushRaw.PushRawTotalLen, <variable>.SmPushRaw.PushRawTotalLen
	bic	r2, r1, #-2147483648	@ tmp598, tmp599,
	rsb	r1, r2, r3	@, tmp598, <variable>.SmPushRaw.PushRawTotalLen
	bl	JudgeH264NewFrame	@
	cmp	r0, #0	@,
	beq	.L1276	@,
	ldr	r3, [r4, r7]	@ temp.4096, <variable>.StreamSegArray.Tail
	cmp	r3, #0	@ temp.4096,
	ble	.L1264	@,
	sub	r1, r3, #1	@ tmp604, temp.4096,
	movw	r3, #:lower16:98536	@ tmp609,
	movt	r3, #:upper16:98536	@ tmp609,
	mov	lr, #1	@ tmp613,
	add	r0, r1, r1, asl #2	@, tmp607, tmp604, tmp604,
	add	r2, r0, #1	@ tmp608, tmp607,
	add	ip, r4, r2, asl #4	@, tmp611, pScdInstance, tmp608,
	strb	lr, [ip, r3]	@ tmp613, <variable>.IsFrameLastSegFlag
.L1276:
	ldr	r3, [r4, r7]	@ prephitmp.3949, <variable>.StreamSegArray.Tail
	b	.L1261	@
.L1292:
	ldrb	ip, [fp, #-167]	@ zero_extendqisi2	@ SegPacket.IsLastSeg, SegPacket.IsLastSeg
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC175	@,
.L1275:
	movt	r1, #:upper16:.LC175	@,
	ldr	r2, [fp, #-160]	@, SegPacket.PhyAddr
	ldr	r3, [fp, #-156]	@, SegPacket.LenInByte
	mov	r5, #0	@ ScdErrFlag,
	str	ip, [sp, #0]	@ SegPacket.IsLastSeg,
	bl	dprint_vfmw	@
	b	.L1246	@
.L1277:
	mov	r2, #2	@ tmp205,
	mvn	r1, #6	@,
	str	r2, [r4, r7]	@ tmp205, <variable>.SmPushRaw.PushRawOver
	str	r1, [fp, #-268]	@, %sfp
	b	.L1218	@
.L1237:
	mov	r1, r6	@, D.52052
	mov	r0, r4	@, pScdInstance
	ldr	r2, [fp, #-264]	@, %sfp
	str	r5, [sp, #0]	@ ScdId,
	bl	GetNextVop	@
	str	r0, [fp, #-308]	@, %sfp
	str	r0, [fp, #-48]	@, ScdSegNum
	b	.L1238	@
.L1253:
	movw	r1, #:lower16:.LC179	@,
	ldr	r2, .L1297	@,
	movt	r1, #:upper16:.LC179	@,
	movw	r3, #4172	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	b	.L1254	@
.L1287:
	mov	r2, ip	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC181	@,
	movt	r1, #:upper16:.LC181	@,
	bl	dprint_vfmw	@
	ldr	r0, [fp, #-292]	@, %sfp
	mov	r1, #1	@,
	bl	DeleteRawPacket	@
	b	.L1268	@
.L1294:
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC169	@,
	mov	r2, #4064	@,
	movt	r1, #:upper16:.LC169	@,
	bl	dprint_vfmw	@
	mov	r5, #0	@ ScdErrFlag,
	b	.L1246	@
.L1286:
	ldr	r0, [fp, #-260]	@, %sfp
	mul	r1, r0, r6	@ tmp624,, i.3989
	ldr	r0, [fp, #-292]	@, %sfp
	add	lr, r1, #47616	@ tmp625, tmp624,
	add	ip, lr, #105	@ tmp625, tmp625,
	add	r3, r4, ip, asl #2	@, tmp629, pScdInstance, tmp625,
	ldr	r1, [r3, #4]	@ tmp632, <variable>.TransFormSeg
	bic	r1, r1, #-2147483648	@, tmp632,
	bl	DeleteRawLen	@
	cmp	r0, #0	@,
	beq	.L1268	@,
	b	.L1216	@
.L1288:
	mov	r0, sl	@, NextSegPhyAddr
	str	ip, [fp, #-320]	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ D.52218
	beq	.L1216	@,
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ tmp470,* D.52218
	ldrb	r2, [r0, #3]	@ zero_extendqisi2	@ tmp469,
	ldrb	r1, [r0, #1]	@ zero_extendqisi2	@ tmp473,
	ldrb	r0, [r0, #2]	@ zero_extendqisi2	@ tmp476,
	orr	lr, r2, r3, asl #24	@, tmp472, tmp469, tmp470,
	orr	ip, lr, r1, asl #16	@, tmp475, tmp472, tmp473,
	orr	r3, ip, r0, asl #8	@, tmp478, tmp475, tmp476,
	bic	lr, r3, #255	@ tmp479, tmp478,
	cmp	lr, #256	@ tmp479,
	beq	.L1247	@,
	mov	r2, r6	@, i.3989
	ldr	r3, [fp, #-260]	@, %sfp
	sub	r1, fp, #252	@,,
	ldr	r0, [fp, #-296]	@, %sfp
	bl	ScdParseUpMsgInfo	@
	ldr	r3, [fp, #-276]	@, %sfp
	ldr	r1, [fp, #-272]	@, %sfp
	ldr	r0, [fp, #-264]	@, %sfp
	ldr	r2, [r4, r3]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	ldr	lr, [r4, r1]	@ <variable>.StreamSegArray.pSegBufVirAddr, <variable>.StreamSegArray.pSegBufVirAddr
	sub	r1, fp, #64	@,,
	rsb	ip, r2, r8	@ tmp485, <variable>.StreamSegArray.SegBufPhyAddr, CurrSegPhyAddr
	sub	r2, fp, #60	@,,
	add	r6, lr, ip	@ tmp488, <variable>.StreamSegArray.pSegBufVirAddr, tmp485
	str	r5, [fp, #-236]	@ SegPacketLen, LastSegPacket.LenInByte
	str	r6, [fp, #-252]	@ tmp488, LastSegPacket.VirAddr
	mov	lr, #1	@ tmp481,
	str	r8, [fp, #-240]	@ CurrSegPhyAddr, LastSegPacket.PhyAddr
	strb	lr, [fp, #-247]	@ tmp481, LastSegPacket.IsLastSeg
	bl	GetFreeSegBuf	@
	ldr	r0, [fp, #-320]	@,
	ldr	r2, [fp, #-288]	@, %sfp
	add	r3, r0, #47616	@ tmp491, D.52147,
	ldr	r0, [fp, #-292]	@, %sfp
	add	r1, r3, #104	@ tmp491, tmp491,
	sub	r3, fp, #252	@,,
	add	ip, r4, r1, asl #2	@, tmp495, pScdInstance, tmp491,
	ldr	r6, [ip, #4]	@ tmp498, <variable>.TransFormSeg
	bic	r1, r6, #-2147483648	@, tmp498,
	bl	GetSegPts	@
	b	.L1247	@
.L1280:
	movw	r3, #:lower16:204728	@ tmp261,
	movw	lr, #:lower16:204732	@ tmp262,
	movt	r3, #:upper16:204728	@ tmp261,
	movt	lr, #:upper16:204732	@ tmp262,
	ldr	r1, [r4, r3]	@ <variable>.PrevCfgRawSize, <variable>.PrevCfgRawSize
	ldr	r5, [r4, lr]	@ <variable>.PrevCfgSegSize, <variable>.PrevCfgSegSize
	cmp	r1, r5	@ <variable>.PrevCfgRawSize, <variable>.PrevCfgSegSize
	ldrle	ip, [fp, #-268]	@, %sfp
	movgt	r5, #1	@ tmp265,
	strgtb	r5, [r4, #0]	@ tmp265, <variable>.SegFullFlag
	strleb	ip, [r4, #0]	@, <variable>.SegFullFlag
	cmp	r7, #0	@ ScdSegNum.3975,
	bne	.L1228	@,
	movw	ip, #:lower16:190756	@ tmp269,
	movt	ip, #:upper16:190756	@ tmp269,
	ldr	r5, [r4, ip]	@ SrcEaten.3976, <variable>.SmPushRaw.PushRawTotalLen
	cmp	r5, #3	@ SrcEaten.3976,
	subgt	r5, r5, #3	@ SrcEaten, SrcEaten.3976,
	ble	.L1229	@,
.L1230:
	movw	r0, #:lower16:190704	@ tmp286,
	movw	r6, #:lower16:190708	@ tmp287,
	movt	r0, #:upper16:190704	@ tmp286,
	movt	r6, #:upper16:190708	@ tmp287,
	ldr	r1, [r4, r0]	@ <variable>.StreamSegArray.Head, <variable>.StreamSegArray.Head
	ldr	lr, [r4, r6]	@ <variable>.StreamSegArray.Tail, <variable>.StreamSegArray.Tail
	ldr	r0, [fp, #-280]	@, %sfp
	cmp	r0, #0	@,
	cmpne	r1, lr	@, <variable>.StreamSegArray.Head, <variable>.StreamSegArray.Tail
	beq	.L1231	@,
	ldr	r3, [r4, #56]	@ <variable>.Config.VidStd, <variable>.Config.VidStd
	cmp	r3, #0	@ <variable>.Config.VidStd,
	beq	.L1296	@,
.L1231:
	ldr	r0, [fp, #-292]	@, %sfp
	mov	r1, r5	@, SrcEaten
	bl	DeleteRawLen	@
	cmp	r0, #0	@
	str	r0, [fp, #-268]	@, %sfp
	bne	.L1216	@,
	b	.L1218	@
.L1229:
	mov	r5, #0	@ SrcEaten,
	b	.L1230	@
.L1264:
	movw	lr, #:lower16:190632	@ tmp616,
	movt	lr, #:upper16:190632	@ tmp616,
	mov	ip, #1	@ tmp617,
	strb	ip, [r4, lr]	@ tmp617, <variable>.IsFrameLastSegFlag
	b	.L1261	@
.L1228:
	cmp	r7, #1	@ ScdSegNum.3975,
	bne	.L1229	@,
	movw	r6, #:lower16:190724	@ tmp271,
	movt	r6, #:upper16:190724	@ tmp271,
	mov	ip, #3	@ tmp274,
	movw	r2, #:lower16:190888	@ tmp270,
	ldr	r3, [r4, r6]	@ <variable>.StreamSegArray.SegBufSize, <variable>.StreamSegArray.SegBufSize
	movt	r2, #:upper16:190888	@ tmp270,
	movw	r6, #:lower16:190756	@ tmp279,
	movt	r6, #:upper16:190756	@ tmp279,
	ldr	r5, [r4, r2]	@ SrcEaten, <variable>.TransFormSeg
	mul	r0, ip, r3	@ tmp272, tmp274, <variable>.StreamSegArray.SegBufSize
	ldr	lr, [r4, r6]	@ <variable>.SmPushRaw.PushRawTotalLen, <variable>.SmPushRaw.PushRawTotalLen
	rsb	r2, r5, lr	@ tmp280, SrcEaten, <variable>.SmPushRaw.PushRawTotalLen
	cmp	r0, #0	@ tmp272,
	add	r1, r0, #3	@ tmp277, tmp272,
	movlt	r0, r1	@ tmp276, tmp277
	cmp	r2, r0, asr #2	@ tmp280, tmp276,
	ble	.L1230	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC168	@,
	movt	r1, #:upper16:.LC168	@,
	bl	dprint_vfmw	@
	ldr	r5, [r4, r6]	@ SrcEaten, <variable>.SmPushRaw.PushRawTotalLen
	b	.L1230	@
.L1295:
	ldrb	ip, [fp, #-167]	@ zero_extendqisi2	@ SegPacket.IsLastSeg, SegPacket.IsLastSeg
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC175	@,
	b	.L1275	@
.L1291:
	ldr	r3, [fp, #-156]	@ prephitmp.4040, SegPacket.LenInByte
.L1256:
	ldrb	ip, [fp, #-167]	@ zero_extendqisi2	@ SegPacket.IsLastSeg, SegPacket.IsLastSeg
	mov	r2, r0	@, D.54053
	movw	r1, #:lower16:.LC180	@,
	mov	r0, #26	@,
	movt	r1, #:upper16:.LC180	@,
	mov	r5, #0	@ ScdErrFlag,
	str	ip, [sp, #0]	@ SegPacket.IsLastSeg,
	bl	dprint_vfmw	@
	b	.L1246	@
.L1296:
	ldr	r1, [fp, #-260]	@, %sfp
	sub	r3, r0, #-1073741823	@ tmp296,,
	mul	r7, r1, r3	@ D.52089,, tmp296
	add	r2, r7, #47616	@ tmp297, D.52089,
	add	r0, r2, #104	@ tmp297, tmp297,
	add	lr, r4, r0, asl #2	@, tmp301, pScdInstance, tmp297,
	ldr	r0, [lr, #4]	@, <variable>.TransFormSeg
	bl	MEM_Phy2Vir	@
	add	ip, r7, #47616	@ tmp304, D.52089,
	add	r7, ip, #105	@ tmp304, tmp304,
	movw	r3, #:lower16:190756	@ tmp303,
	movt	r3, #:upper16:190756	@ tmp303,
	add	r7, r4, r7, asl #2	@, tmp308, pScdInstance, tmp304,
	ldr	ip, [r4, r3]	@ <variable>.SmPushRaw.PushRawTotalLen, <variable>.SmPushRaw.PushRawTotalLen
	ldr	r1, [r7, #4]	@ tmp311, <variable>.TransFormSeg
	bic	r2, r1, #-2147483648	@ tmp310, tmp311,
	rsb	r1, r2, ip	@, tmp310, <variable>.SmPushRaw.PushRawTotalLen
	bl	JudgeH264NewFrame	@
	cmp	r0, #0	@,
	beq	.L1231	@,
	ldr	lr, [r4, r6]	@ temp.3979, <variable>.StreamSegArray.Tail
	mov	ip, #1	@ tmp326,
	cmp	lr, #0	@ temp.3979,
	subgt	r2, lr, #1	@ tmp315, temp.3979,
	movgt	r1, #5	@ tmp317,
	movwgt	lr, #:lower16:98536	@ tmp319,
	mulgt	r2, r1, r2	@ tmp316, tmp317, tmp315
	movwle	lr, #:lower16:190632	@ tmp325,
	movtgt	lr, #:upper16:98536	@ tmp319,
	movtle	lr, #:upper16:190632	@ tmp325,
	addgt	r2, r2, #1	@ tmp318, tmp316,
	addgt	r4, r4, r2, asl #4	@, tmp321, pScdInstance, tmp318,
	strb	ip, [r4, lr]	@ tmp326, <variable>.IsFrameLastSegFlag
	b	.L1231	@
.L1298:
	.align	2
.L1297:
	.word	.LANCHOR1+388
	.fnend
	.size	ProcessScdReturn, .-ProcessScdReturn
	.align	2
	.global	SM_GiveThreadEvent
	.type	SM_GiveThreadEvent, %function
SM_GiveThreadEvent:
	.fnstart
.LFB1582:
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
	mov	r6, r0	@ SmID, SmID
	bl	OSAL_GetTimeInMs	@
	movw	r4, #:lower16:.LANCHOR0	@ tmp160,
	movt	r4, #:upper16:.LANCHOR0	@ tmp160,
	mov	r5, r0	@ CurTime,
	add	r0, r6, r6, asl #1	@, tmp145, SmID, SmID,
	add	r3, r4, r0, asl #4	@, tmp147, tmp160, tmp145,
	ldr	r3, [r3, #40]	@ pSmInstArray, <variable>.pSmInstArray
	cmp	r3, #0	@ pSmInstArray,
	ldmeqfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	ldrsb	r7, [r3, #3]	@ <variable>.InsertNewSegFlag, <variable>.InsertNewSegFlag
	cmp	r7, #1	@ <variable>.InsertNewSegFlag,
	beq	.L1306	@,
.L1301:
	mov	r7, #0	@ prephitmp.4131,
.L1302:
	ldr	r2, [r4, #1016]	@ LastEventTime.551, LastEventTime
	movw	r1, #:lower16:.LANCHOR0	@ tmp150,
	movt	r1, #:upper16:.LANCHOR0	@ tmp150,
	cmp	r5, r2	@ CurTime, LastEventTime.551
	strls	r5, [r1, #1016]	@ CurTime, LastEventTime
	movls	r2, #1	@ prephitmp.4120,
	bls	.L1304	@,
	rsb	r2, r2, r5	@ tmp151, LastEventTime.551, CurTime
	cmp	r2, #1	@ tmp151,
	movls	r2, #0	@, prephitmp.4120
	movhi	r2, #1	@, prephitmp.4120
.L1304:
	tst	r2, r7	@ prephitmp.4120, prephitmp.4131
	ldmeqfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	movw	r0, #:lower16:g_IntEvent	@,
	movt	r0, #:upper16:g_IntEvent	@,
	bl	OSAL_GiveEvent	@
	str	r5, [r4, #1016]	@ CurTime, LastEventTime
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L1306:
	mov	r0, r6	@, SmID
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	bne	.L1301	@,
	mov	r0, r6	@, SmID
	bl	VCTRL_IsChanSegEnough	@
	cmp	r0, #0	@,
	beq	.L1302	@,
	b	.L1301	@
	.fnend
	.size	SM_GiveThreadEvent, .-SM_GiveThreadEvent
	.align	2
	.global	SM_SCDIntServeProc
	.type	SM_SCDIntServeProc, %function
SM_SCDIntServeProc:
	.fnstart
.LFB1612:
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
	subs	r4, r0, #0	@ ScdId, ScdId
	ble	.L1308	@,
	mov	ip, #0	@ tmp151,
	movw	r1, #:lower16:.LC182	@,
	mov	r3, r4	@, ScdId
	mov	r0, ip	@, tmp151
	movt	r1, #:upper16:.LC182	@,
	ldr	r2, .L1331	@,
	str	ip, [sp, #0]	@ tmp151,
	bl	dprint_vfmw	@
.L1324:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L1308:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	movw	r0, #:lower16:-121386944	@,
	movt	r0, #:upper16:-121386944	@,
	bl	MEM_ReadPhyWord	@
	tst	r0, #1	@,
	beq	.L1323	@,
	movw	r5, #:lower16:.LANCHOR0	@ tmp345,
	movt	r5, #:upper16:.LANCHOR0	@ tmp345,
	mov	r1, #1	@,
	mov	sl, r4, asl #2	@ tmp343, ScdId,
	ldr	r7, [r5, #868]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r6, r4, r4, asl #1	@, tmp160, ScdId, ScdId,
	add	r8, r5, #772	@ tmp157, tmp345,
	add	r0, r7, #2080	@, s_RegPhyBaseAddr,
	add	r6, r8, r6, asl #5	@, pScdDrvParam, tmp157, tmp160,
	add	r0, r0, #4	@,,
	bl	MEM_WritePhyWord	@
	add	r3, sl, r5	@ tmp169, tmp343, tmp345
	mov	r2, #1	@ tmp171,
	mov	r0, #2	@,
	str	r2, [r3, #1020]	@ tmp171, s_SCDInISR
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L1311	@,
.L1325:
	ldr	r8, [r6, #80]	@ prephitmp.4158, <variable>.ThisInstID
.L1312:
	add	r2, r8, r8, asl #1	@, tmp194, prephitmp.4158, prephitmp.4158,
	ldr	ip, [r6, #76]	@ <variable>.IsScdDrvOpen, <variable>.IsScdDrvOpen
	movw	r3, #:lower16:.LANCHOR0	@ tmp190,
	movt	r3, #:upper16:.LANCHOR0	@ tmp190,
	add	r1, r5, r2, asl #4	@, tmp196, tmp345, tmp194,
	ldr	r7, [r1, #40]	@ pSmInstArray, <variable>.pSmInstArray
	cmp	ip, #0	@ <variable>.IsScdDrvOpen,
	cmpne	r7, #0	@, pSmInstArray,
	movne	r2, #0	@, tmp205
	moveq	r2, #1	@, tmp205
	beq	.L1326	@,
	movw	r9, #:lower16:g_VfmwGlobalStat	@ tmp342,
	movt	r9, #:upper16:g_VfmwGlobalStat	@ tmp342,
	mov	lr, #84	@ tmp217,
	mla	r3, lr, r4, r9	@ tmp218, tmp217, ScdId, tmp342
	ldr	r0, [r3, #68]	@ <variable>.u32SaLastStartTime, <variable>.u32SaLastStartTime
	cmp	r0, #0	@ <variable>.u32SaLastStartTime,
	bne	.L1327	@,
.L1314:
	ldr	lr, [r6, #84]	@ <variable>.SCDState, <variable>.SCDState
	cmp	lr, #1	@ <variable>.SCDState,
	beq	.L1328	@,
.L1317:
	add	r5, sl, r5	@ tmp335, tmp343, tmp345
	movw	r3, #:lower16:204768	@ tmp338,
	movt	r3, #:upper16:204768	@ tmp338,
	mov	lr, #0	@ tmp337,
	str	lr, [r5, #1020]	@ tmp337, s_SCDInISR
	ldr	r1, [r7, r3]	@ <variable>.s32ChanLowlyEnable, <variable>.s32ChanLowlyEnable
	cmp	r1, lr	@ <variable>.s32ChanLowlyEnable,
	beq	.L1322	@,
	movw	r0, #:lower16:g_IntEvent	@,
	movt	r0, #:upper16:g_IntEvent	@,
	bl	OSAL_GiveEvent	@
.L1323:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L1324	@
.L1311:
	bl	OSAL_GetTimeInMs	@
	ldr	r8, [r6, #80]	@ prephitmp.4158, <variable>.ThisInstID
	movw	r7, #:lower16:g_TraceBsPeriod	@ tmp179,
	movt	r7, #:upper16:g_TraceBsPeriod	@ tmp179,
	add	r3, r5, r8, asl #2	@, tmp175, tmp345, prephitmp.4158,
	ldr	r2, [r7, #0]	@ g_TraceBsPeriod, g_TraceBsPeriod
	mov	ip, r0	@ CurTimeInMs,
	ldr	r0, [r3, #1024]	@ tmp178, last_rec_pos_time
	rsb	r1, r0, ip	@ tmp177, tmp178, CurTimeInMs
	cmp	r1, r2	@ tmp177, g_TraceBsPeriod
	bls	.L1312	@,
	mov	lr, r8, asl #24	@ tmp188, prephitmp.4158,
	ldr	r0, .L1331	@,
	add	r2, lr, #131072	@, tmp188,
	movw	r1, #5661	@,
	str	ip, [r3, #1024]	@ CurTimeInMs, last_rec_pos_time
	bl	DBG_AddTrace	@
	b	.L1325	@
.L1322:
	mov	r0, r8	@, prephitmp.4158
	bl	SM_GiveThreadEvent	@
	b	.L1323	@
.L1327:
	str	r2, [fp, #-60]	@,
	str	r3, [fp, #-56]	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [fp, #-56]	@,
	ldr	r2, [r3, #64]	@ <variable>.u32SaBeginTime, <variable>.u32SaBeginTime
	ldr	ip, [r3, #68]	@ prephitmp.4160, <variable>.u32SaLastStartTime
	add	r1, r2, #49920	@ tmp233, <variable>.u32SaBeginTime,
	ldr	r2, [fp, #-60]	@,
	add	r1, r1, #80	@ tmp233, tmp233,
	cmp	r1, ip	@ tmp233, prephitmp.4160
	strcc	ip, [r3, #64]	@ prephitmp.4160, <variable>.u32SaBeginTime
	strcc	r2, [r3, #72]	@ tmp205, <variable>.u32SaScdWorkTime
	ldrcs	r1, [r3, #72]	@ prephitmp.4176, <variable>.u32SaScdWorkTime
	movcc	r1, r2	@ prephitmp.4176, tmp205
	mov	r3, #0	@ tmp275,
	add	r2, r1, r0	@ tmp267, prephitmp.4176, CurTime
	mov	r1, #84	@ tmp264,
	mla	r9, r1, r4, r9	@ tmp265, tmp264, ScdId, tmp342
	rsb	r2, ip, r2	@ tmp268, prephitmp.4160, tmp267
	ldr	ip, [r9, #64]	@ <variable>.u32SaBeginTime, <variable>.u32SaBeginTime
	str	r2, [r9, #72]	@ tmp268, <variable>.u32SaScdWorkTime
	rsb	r1, ip, r0	@ Period, <variable>.u32SaBeginTime, CurTime
	str	r3, [r9, #68]	@ tmp275, <variable>.u32SaLastStartTime
	cmp	r1, #1000	@ Period,
	bcc	.L1314	@,
	mov	r0, #1000	@ tmp298,
	str	r3, [fp, #-56]	@,
	mul	r0, r0, r2	@, tmp298, tmp268
	bl	__aeabi_uidiv	@
	ldr	ip, [fp, #-56]	@,
	str	ip, [r9, #64]	@ tmp275, <variable>.u32SaBeginTime
	str	r0, [r9, #76]	@, <variable>.u32SaScdLoad
	b	.L1314	@
.L1328:
	movw	r1, #:lower16:190880	@ tmp310,
	movt	r1, #:upper16:190880	@ tmp310,
	ldr	r3, [r7, r1]	@ <variable>.Mode, <variable>.Mode
	cmp	r3, #1	@ <variable>.Mode,
	beq	.L1329	@,
.L1318:
	movw	r2, #:lower16:190872	@ tmp326,
	movt	r2, #:upper16:190872	@ tmp326,
	mov	r0, r4	@, ScdId
	sub	r1, fp, #48	@,,
	mov	r4, #0	@ tmp327,
	str	r4, [r7, r2]	@ tmp327, <variable>.CutingFlag
	bl	SM_DoNextInstance	@
	cmp	r0, r4	@,
	strne	r4, [r6, #84]	@ tmp327, <variable>.SCDState
	bne	.L1317	@,
	mov	r0, #1	@ tmp330,
	str	r0, [r6, #84]	@ tmp330, <variable>.SCDState
	ldr	ip, [fp, #-48]	@ NextInstID, NextInstID
	str	ip, [r6, #80]	@ NextInstID, <variable>.ThisInstID
	bl	OSAL_GetTimeInMs	@
	str	r0, [r6, #88]	@, <variable>.LastProcessTime
	b	.L1317	@
.L1326:
	add	sl, sl, r3	@ tmp209, tmp343, tmp190
	movw	r0, #:lower16:g_TaskLock	@,
	mov	r3, #0	@ tmp211,
	movt	r0, #:upper16:g_TaskLock	@,
	str	r3, [sl, #1020]	@ tmp211, s_SCDInISR
	str	r3, [r6, #84]	@ tmp211, <variable>.SCDState
	bl	OSAL_SpinUnLockIRQ	@
	b	.L1324	@
.L1329:
	ldr	r0, [r6, #80]	@, <variable>.ThisInstID
	mov	r1, #0	@,
	bl	PrintScdRawState	@
	ldr	r0, [r6, #80]	@, <variable>.ThisInstID
	mov	r1, #0	@,
	bl	PrintScdSegState	@
	mov	r2, #0	@,
	ldr	r0, [r6, #80]	@, <variable>.ThisInstID
	mov	r1, #2	@,
	bl	DBG_CountTimeInfo	@
	mov	r0, r7	@, pSmInstArray
	mov	r1, r4	@, ScdId
	bl	ProcessScdReturn	@
	ldr	r2, [r7, #96]	@ <variable>.Config.IsOmxPath, <variable>.Config.IsOmxPath
	cmp	r2, #1	@ <variable>.Config.IsOmxPath,
	beq	.L1330	@,
.L1319:
	ldr	r0, [r6, #80]	@, <variable>.ThisInstID
	mov	r1, #0	@,
	bl	PrintScdRawState	@
	ldr	r0, [r6, #80]	@, <variable>.ThisInstID
	mov	r1, #0	@,
	bl	PrintScdSegState	@
	b	.L1318	@
.L1330:
	movw	lr, #:lower16:98516	@ tmp316,
	movw	r0, #:lower16:98512	@ tmp317,
	movt	lr, #:upper16:98516	@ tmp316,
	movt	r0, #:upper16:98512	@ tmp317,
	ldr	ip, [r7, lr]	@ <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Tail
	ldr	r9, [r7, r0]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	subs	r3, ip, r9	@ CurRawNum, <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Head
	ldrsb	r9, [r7, #2]	@ <variable>.LastCfgAllRawFlag, <variable>.LastCfgAllRawFlag
	addmi	r3, r3, #1024	@ CurRawNum, CurRawNum,
	cmp	r9, #1	@ <variable>.LastCfgAllRawFlag,
	bne	.L1319	@,
	ldr	r1, [r7, #200]	@ <variable>.Config.MaxRawPacketNum, <variable>.Config.MaxRawPacketNum
	cmp	r3, r1	@ CurRawNum, <variable>.Config.MaxRawPacketNum
	bne	.L1319	@,
	mov	r0, r7	@, pSmInstArray
	bl	SM_MoveRawData	@
	cmp	r0, #0	@,
	beq	.L1319	@,
	mov	r0, r9	@, <variable>.LastCfgAllRawFlag
	movw	r1, #:lower16:.LC183	@,
	movt	r1, #:upper16:.LC183	@,
	bl	dprint_vfmw	@
	movw	r3, #:lower16:190864	@ tmp323,
	movt	r3, #:upper16:190864	@ tmp323,
	ldr	r0, [r7, r3]	@, <variable>.InstID
	bl	SM_Reset	@
	b	.L1319	@
.L1332:
	.align	2
.L1331:
	.word	.LANCHOR1+408
	.fnend
	.size	SM_SCDIntServeProc, .-SM_SCDIntServeProc
	.align	2
	.global	SM_DeletDSPCtxMem
	.type	SM_DeletDSPCtxMem, %function
SM_DeletDSPCtxMem:
	.fnstart
.LFB1568:
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
	mov	r4, r0	@ pstDSPMem, pstDSPMem
	ldr	r0, [r0, #8]	@ D.50655, <variable>.PhyAddr
	cmp	r0, #0	@ D.50655,
	bne	.L1337	@,
	movw	r1, #:lower16:.LC184	@,
	movt	r1, #:upper16:.LC184	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #12]	@, <variable>.Length
	ldr	r0, [r4, #8]	@, <variable>.PhyAddr
	ldr	r1, [r4, #4]	@, <variable>.VirAddr
	bl	MEM_DelMemRecord	@
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L1337:
	ldr	r1, [r4, #4]	@, <variable>.VirAddr
	bl	MEM_ReleaseMemBlock	@
	ldr	r2, [r4, #12]	@, <variable>.Length
	ldr	r0, [r4, #8]	@, <variable>.PhyAddr
	ldr	r1, [r4, #4]	@, <variable>.VirAddr
	bl	MEM_DelMemRecord	@
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	SM_DeletDSPCtxMem, .-SM_DeletDSPCtxMem
	.align	2
	.global	SM_AllocDSPCtxMem
	.type	SM_AllocDSPCtxMem, %function
SM_AllocDSPCtxMem:
	.fnstart
.LFB1567:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #24
	sub	sp, sp, #24	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	sub	r4, fp, #52	@ tmp145,,
	mov	r1, #16	@,
	mov	r5, #0	@ tmp148,
	mov	r7, r0	@ SmID, SmID
	mov	r0, r4	@, tmp145
	bl	__memzero	@
	movw	r0, #:lower16:.LC185	@,
	mov	r1, r5	@, tmp148
	movt	r0, #:upper16:.LC185	@,
	movw	r2, #9248	@,
	mov	r3, r4	@, tmp145
	str	r5, [sp, #0]	@ tmp148,
	bl	MEM_AllocMemBlock	@
	subs	sl, r0, #0	@ D.50615,
	bne	.L1339	@,
	ldr	r1, [fp, #-48]	@, stTempMem.VirAddr
	add	r7, r7, r7, asl #1	@, tmp155, SmID, SmID,
	ldr	r2, [fp, #-40]	@, stTempMem.Length
	movw	r5, #:lower16:.LANCHOR0	@ tmp152,
	ldr	r0, [fp, #-44]	@, stTempMem.PhyAddr
	movt	r5, #:upper16:.LANCHOR0	@ tmp152,
	bl	MEM_AddMemRecord	@
	ldr	r6, [fp, #-44]	@ MemAddr, stTempMem.PhyAddr
	ldmia	r4, {r0, r1, r2, r3}	@ tmp145,,,,
	add	r4, r6, #3	@ tmp159, MemAddr,
	bic	r8, r4, #3	@ tmp160, tmp159,
	add	r4, r7, #1	@ tmp165, tmp155,
	rsb	r8, r6, r8	@ Offset, MemAddr, tmp160
	add	r7, r5, r7, asl #4	@, tmp157, tmp152, tmp155,
	add	ip, r8, r6	@ D.50627, Offset, MemAddr
	stmia	r7, {r0, r1, r2, r3}	@ tmp157,,,,
	str	ip, [r5, r4, asl #4]	@ D.50627, <variable>.DspCtxMem.DspSpsMsgMemAddr
	mov	r0, ip	@, D.50627
	add	r5, r5, r4, asl #4	@, tmp173, tmp152, tmp165,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ D.50629,
	str	r0, [r5, #4]	@ D.50629, <variable>.DspCtxMem.pDspSpsMsgMemVirAddr
	beq	.L1346	@,
	mov	r1, #1024	@ tmp189,
	add	r6, r6, #1024	@ tmp200, MemAddr,
	str	r1, [r7, #24]	@ tmp189, <variable>.DspCtxMem.DspSpsMsgMemSize
	bl	__memzero	@
	add	r0, r6, r8	@ temp.4238, tmp200, Offset
	str	r0, [r7, #28]	@ temp.4238, <variable>.DspCtxMem.DspPpsMsgMemAddr
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ D.50641,
	str	r0, [r7, #32]	@ D.50641, <variable>.DspCtxMem.pDspPpsMsgMemVirAddr
	beq	.L1347	@,
	mov	r1, #8192	@ tmp228,
	str	r1, [r7, #36]	@ tmp228, <variable>.DspCtxMem.DspPpsMsgMemSize
	bl	__memzero	@
	mov	r0, sl	@ D.50623, D.50615
.L1342:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L1339:
	mov	r0, r5	@, tmp148
	movw	r1, #:lower16:.LC186	@,
	ldr	r2, .L1348	@,
	movt	r1, #:upper16:.LC186	@,
	bl	dprint_vfmw	@
	mvn	r0, #6	@ D.50623,
	b	.L1342	@
.L1347:
	movw	r1, #:lower16:.LC188	@,
	ldr	r2, .L1348	@,
	movt	r1, #:upper16:.LC188	@,
	bl	dprint_vfmw	@
	mvn	r0, #6	@ D.50623,
	b	.L1342	@
.L1346:
	movw	r1, #:lower16:.LC187	@,
	ldr	r2, .L1348	@,
	movt	r1, #:upper16:.LC187	@,
	bl	dprint_vfmw	@
	mvn	r0, #6	@ D.50623,
	b	.L1342	@
.L1349:
	.align	2
.L1348:
	.word	.LANCHOR1+428
	.fnend
	.size	SM_AllocDSPCtxMem, .-SM_AllocDSPCtxMem
	.global	g_hex_flag
	.global	ForceRelease
	.global	s_RegPhyBaseAddr
	.global	s_RegPhyBaseAddr_1
	.global	g_pScdDrvParamBase
	.global	g_pSmIISBase
	.global	g_hex_base_vir_addr
	.global	g_hex_base_addr
	.global	g_hex_len
	.global	s_SmIIS
	.global	g_ScdDrvParam
	.section	.rodata
	.align	2
.LANCHOR1 = . + 0
	.type	__func__.50397, %object
	.size	__func__.50397, 17
__func__.50397:
	.ascii	"ReleaseStreamSeg\000"
	.space	3
	.type	CSWTCH.727, %object
	.size	CSWTCH.727, 80
CSWTCH.727:
	.word	4194304
	.word	4194304
	.word	4194304
	.word	4194304
	.word	4194304
	.word	20971520
	.word	20971520
	.word	20971520
	.word	20971520
	.word	20971520
	.word	20971520
	.word	3145728
	.word	3145728
	.word	3145728
	.word	3145728
	.word	3145728
	.word	3145728
	.word	3145728
	.word	3145728
	.word	20971520
	.type	__func__.53604, %object
	.size	__func__.53604, 17
__func__.53604:
	.ascii	"PrintScdSegState\000"
	.space	3
	.type	__func__.53489, %object
	.size	__func__.53489, 17
__func__.53489:
	.ascii	"PrintScdRawState\000"
	.space	3
	.type	__func__.51859, %object
	.size	__func__.51859, 11
__func__.51859:
	.ascii	"GetNextVop\000"
	.space	1
	.type	__func__.53284, %object
	.size	__func__.53284, 19
__func__.53284:
	.ascii	"SCDDRV_CheckDevice\000"
	.space	1
	.type	C.639.52573, %object
	.size	C.639.52573, 100
C.639.52573:
	.byte	0
	.byte	0
	.byte	1
	.byte	11
	.byte	72
	.byte	83
	.byte	80
	.byte	73
	.byte	67
	.byte	69
	.byte	78
	.byte	68
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	-2
	.byte	72
	.byte	83
	.byte	80
	.byte	73
	.byte	67
	.byte	69
	.byte	78
	.byte	68
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	-2
	.byte	72
	.byte	83
	.byte	80
	.byte	73
	.byte	67
	.byte	69
	.byte	78
	.byte	68
	.byte	0
	.byte	0
	.byte	1
	.byte	-2
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	-73
	.byte	72
	.byte	83
	.byte	80
	.byte	73
	.byte	67
	.byte	69
	.byte	78
	.byte	68
	.byte	0
	.byte	0
	.byte	1
	.byte	-73
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	98
	.byte	0
	.byte	72
	.byte	83
	.byte	80
	.byte	73
	.byte	67
	.byte	69
	.byte	78
	.byte	68
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.type	__func__.52553, %object
	.size	__func__.52553, 17
__func__.52553:
	.ascii	"FillEosRawStream\000"
	.space	3
	.type	__func__.53044, %object
	.size	__func__.53044, 18
__func__.53044:
	.ascii	"SM_DoNextInstance\000"
	.space	2
	.type	__func__.53310, %object
	.size	__func__.53310, 19
__func__.53310:
	.ascii	"SCDDRV_ActivateSCD\000"
	.space	1
	.type	__func__.52598, %object
	.size	__func__.52598, 14
__func__.52598:
	.ascii	"FillExtraData\000"
	.space	2
	.type	__func__.52384, %object
	.size	__func__.52384, 12
__func__.52384:
	.ascii	"FillRawData\000"
	.type	__func__.53358, %object
	.size	__func__.53358, 10
__func__.53358:
	.ascii	"SM_Wakeup\000"
	.space	2
	.type	__func__.50692, %object
	.size	__func__.50692, 14
__func__.50692:
	.ascii	"SM_OpenSCDDrv\000"
	.space	2
	.type	__func__.51982, %object
	.size	__func__.51982, 17
__func__.51982:
	.ascii	"ProcessScdReturn\000"
	.space	3
	.type	__func__.53192, %object
	.size	__func__.53192, 19
__func__.53192:
	.ascii	"SM_SCDIntServeProc\000"
	.space	1
	.type	__func__.50601, %object
	.size	__func__.50601, 18
__func__.50601:
	.ascii	"SM_AllocDSPCtxMem\000"
	.data
	.align	2
.LANCHOR2 = . + 0
.LANCHOR3 = . + 16368
	.type	g_avsp_firmware, %object
	.size	g_avsp_firmware, 17920
g_avsp_firmware:
	.word	0
	.word	16283648
	.word	16349954
	.word	9468936
	.word	-252085482
	.word	9468688
	.word	9468692
	.word	16284426
	.word	9468680
	.word	18807566
	.word	-258442240
	.word	10517258
	.word	18807566
	.word	-258442239
	.word	10517258
	.word	18807566
	.word	-258442238
	.word	10517258
	.word	18807566
	.word	-258442237
	.word	10517258
	.word	18807566
	.word	-258442236
	.word	10517258
	.word	18807566
	.word	-258442235
	.word	10517258
	.word	18807566
	.word	-258442234
	.word	10517258
	.word	18807566
	.word	-258442233
	.word	10517258
	.word	-251200754
	.word	10517258
	.word	17758990
	.word	33128448
	.word	24738824
	.word	-1879048192
	.word	16349954
	.word	0
	.word	18512896
	.word	33390592
	.word	24738817
	.word	-250447311
	.word	9468672
	.word	17988136
	.word	-795837688
	.word	12090128
	.word	18807566
	.word	24967950
	.word	-249398743
	.word	33259520
	.word	554859056
	.word	-258966784
	.word	19561007
	.word	-235307008
	.word	-1063027960
	.word	16349968
	.word	0
	.word	11041536
	.word	0
	.word	1073741824
	.word	33259520
	.word	554859057
	.word	9468672
	.word	0
	.word	-1342177280
	.word	0
	.word	33128448
	.word	-1592624595
	.word	-258966776
	.word	12090128
	.word	0
	.word	17988137
	.word	9468680
	.word	16349968
	.word	17988143
	.word	-258966784
	.word	0
	.word	33521664
	.word	-1879048192
	.word	0
	.word	-1610612736
	.word	-248874449
	.word	9468688
	.word	9468692
	.word	11041536
	.word	0
	.word	0
	.word	0
	.word	286948352
	.word	9467906
	.word	33128448
	.word	-1320519377
	.word	1630697896
	.word	33128448
	.word	-786269183
	.word	17988140
	.word	9468680
	.word	12090128
	.word	21953294
	.word	19400197
	.word	33128448
	.word	-1059883006
	.word	33062912
	.word	-1073741824
	.word	1358526466
	.word	-1342177280
	.word	-1879048192
	.word	17988009
	.word	1620081416
	.word	1354267408
	.word	21953294
	.word	19400216
	.word	33128448
	.word	-2133624830
	.word	33062912
	.word	-2147483648
	.word	-2131134462
	.word	19400222
	.word	33128448
	.word	0
	.word	19036462
	.word	33390592
	.word	33398784
	.word	1092253959
	.word	33128448
	.word	1362626056
	.word	17988013
	.word	9468680
	.word	12090128
	.word	21429006
	.word	1092253999
	.word	33128448
	.word	-250447444
	.word	9468680
	.word	12090128
	.word	24673282
	.word	-250447445
	.word	814775048
	.word	12090128
	.word	0
	.word	-785744896
	.word	556956675
	.word	33128448
	.word	-235298816
	.word	-235290624
	.word	25000964
	.word	-2147483648
	.word	33128448
	.word	-1050147328
	.word	18351619
	.word	18875907
	.word	554858927
	.word	33128448
	.word	-235290624
	.word	-1073741824
	.word	10517258
	.word	9468680
	.word	0
	.word	-1845493760
	.word	23594500
	.word	18875906
	.word	554858927
	.word	33128448
	.word	-1073741824
	.word	10517258
	.word	9468680
	.word	0
	.word	872415232
	.word	-2147483648
	.word	18351646
	.word	24926480
	.word	-2124785392
	.word	-2147483648
	.word	0
	.word	19028272
	.word	20601264
	.word	554858927
	.word	10517258
	.word	546339592
	.word	0
	.word	-268435456
	.word	-1592100601
	.word	12090128
	.word	33128448
	.word	1634207232
	.word	18351619
	.word	18875907
	.word	554859050
	.word	33128448
	.word	-235290624
	.word	-1073741824
	.word	10517258
	.word	9468680
	.word	0
	.word	17988139
	.word	9468680
	.word	0
	.word	-771751936
	.word	23594500
	.word	18875906
	.word	554859050
	.word	33128448
	.word	-1073741824
	.word	10517258
	.word	9468680
	.word	0
	.word	17988139
	.word	9468680
	.word	0
	.word	-1543503872
	.word	1073741824
	.word	18351646
	.word	24926480
	.word	1096440080
	.word	-2147483648
	.word	17988138
	.word	19028272
	.word	20601264
	.word	536870912
	.word	10517258
	.word	9468680
	.word	17988139
	.word	9468680
	.word	0
	.word	-1879048192
	.word	1366850566
	.word	33398784
	.word	17987886
	.word	33398784
	.word	33398784
	.word	-518882770
	.word	9468680
	.word	16349968
	.word	0
	.word	-536870912
	.word	1903720450
	.word	1092093440
	.word	17988010
	.word	9468680
	.word	12090128
	.word	18807566
	.word	33259520
	.word	293436421
	.word	25000967
	.word	-1055753810
	.word	9468680
	.word	12090128
	.word	0
	.word	33460224
	.word	33460224
	.word	33198080
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1011712
	.word	0
	.word	0
	.word	1013760
	.word	18687
	.word	0
	.word	0
	.word	18688
	.word	0
	.word	0
	.word	103084
	.word	0
	.word	0
	.word	102700
	.word	0
	.word	0
	.word	102700
	.word	0
	.word	0
	.word	102700
	.word	0
	.word	0
	.word	102700
	.word	0
	.word	0
	.word	102700
	.word	0
	.word	0
	.word	102700
	.word	0
	.word	0
	.word	102700
	.word	0
	.word	102700
	.word	0
	.word	18432
	.word	916608
	.word	0
	.word	1027074
	.word	0
	.word	1013760
	.word	18432
	.word	916620
	.word	908352
	.word	1027075
	.word	0
	.word	1013760
	.word	105964
	.word	0
	.word	1013760
	.word	0
	.word	1031171
	.word	916484
	.word	1031173
	.word	98348
	.word	1013760
	.word	904428
	.word	1027075
	.word	0
	.word	1013760
	.word	0
	.word	1013760
	.word	1027075
	.word	916484
	.word	1031173
	.word	0
	.word	1013760
	.word	1035269
	.word	1031168
	.word	916712
	.word	1031172
	.word	23807
	.word	0
	.word	1013760
	.word	0
	.word	0
	.word	0
	.word	1013760
	.word	98348
	.word	1013760
	.word	916484
	.word	1031170
	.word	1007616
	.word	1018885
	.word	18687
	.word	0
	.word	0
	.word	0
	.word	1013760
	.word	1018880
	.word	1007616
	.word	18432
	.word	20480
	.word	916688
	.word	1031175
	.word	23552
	.word	916696
	.word	1027078
	.word	908752
	.word	0
	.word	0
	.word	1013760
	.word	108112
	.word	917096
	.word	1031174
	.word	917076
	.word	1027078
	.word	25600
	.word	1018887
	.word	23553
	.word	908752
	.word	19456
	.word	22528
	.word	1013760
	.word	108112
	.word	917096
	.word	1031175
	.word	917076
	.word	1027079
	.word	25601
	.word	108108
	.word	917076
	.word	222628
	.word	19456
	.word	917068
	.word	917072
	.word	1027086
	.word	917068
	.word	1027080
	.word	0
	.word	0
	.word	0
	.word	1013760
	.word	23552
	.word	917068
	.word	1027080
	.word	0
	.word	0
	.word	1013760
	.word	1027080
	.word	23552
	.word	0
	.word	1013760
	.word	19457
	.word	20480
	.word	916756
	.word	916908
	.word	916844
	.word	0
	.word	1027083
	.word	917068
	.word	1027082
	.word	105120
	.word	595340
	.word	105112
	.word	916816
	.word	916844
	.word	185196
	.word	0
	.word	0
	.word	1013760
	.word	989193
	.word	105120
	.word	595340
	.word	105112
	.word	916816
	.word	185196
	.word	0
	.word	0
	.word	1013760
	.word	989194
	.word	1018891
	.word	113316
	.word	112296
	.word	1031179
	.word	310092
	.word	113572
	.word	0
	.word	0
	.word	69916
	.word	0
	.word	23552
	.word	1013760
	.word	988170
	.word	23553
	.word	0
	.word	917068
	.word	1027085
	.word	105120
	.word	595340
	.word	105112
	.word	916816
	.word	916844
	.word	185196
	.word	0
	.word	0
	.word	1013760
	.word	0
	.word	0
	.word	1013760
	.word	989195
	.word	105120
	.word	595340
	.word	105112
	.word	916816
	.word	185196
	.word	0
	.word	0
	.word	1013760
	.word	0
	.word	0
	.word	1013760
	.word	989196
	.word	1018894
	.word	113316
	.word	112296
	.word	1031182
	.word	310092
	.word	113572
	.word	0
	.word	0
	.word	69916
	.word	0
	.word	0
	.word	1013760
	.word	0
	.word	1013760
	.word	988173
	.word	19456
	.word	917068
	.word	19456
	.word	917068
	.word	917064
	.word	1027086
	.word	0
	.word	0
	.word	1013760
	.word	1018894
	.word	23552
	.word	1027087
	.word	0
	.word	0
	.word	0
	.word	1013760
	.word	916712
	.word	23556
	.word	0
	.word	1027087
	.word	0
	.word	0
	.word	1013760
	.word	999424
	.word	999424
	.word	999424
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	65537
	.word	1900544
	.word	513
	.word	1537
	.word	336598617
	.word	336598617
	.word	65536
	.word	131074
	.word	4
	.word	0
	.word	65537
	.word	131073
	.word	131074
	.word	131074
	.word	131074
	.word	131074
	.word	131074
	.word	131074
	.word	131074
	.word	131074
	.word	2
	.word	327686
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	131072
	.word	1
	.word	131072
	.word	1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	65538
	.word	1
	.word	0
	.word	0
	.word	131072
	.word	131073
	.word	131073
	.word	1
	.word	131072
	.word	1
	.word	131072
	.word	131073
	.word	131073
	.word	1
	.word	0
	.word	0
	.word	2
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	3
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	524289
	.word	4196352
	.word	1048608
	.word	8396800
	.word	0
	.word	0
	.word	0
	.word	0
	.word	65536
	.word	0
	.word	65536
	.word	1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	65536
	.word	65537
	.word	65537
	.word	1
	.word	65536
	.word	1
	.word	65536
	.word	1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	131073
	.word	33554688
	.word	1073741828
	.word	132096
	.word	65540
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.type	g_h264_firmware, %object
	.size	g_h264_firmware, 17920
g_h264_firmware:
	.word	0
	.word	823064910
	.word	8419328
	.word	9239400
	.word	16349184
	.word	285670144
	.word	33128448
	.word	-1879048192
	.word	1342177280
	.word	0
	.word	8420384
	.word	8420386
	.word	8420387
	.word	8420388
	.word	8420389
	.word	8420390
	.word	8420391
	.word	8420393
	.word	8420394
	.word	8420395
	.word	8420392
	.word	8420396
	.word	8715424
	.word	8715428
	.word	8682668
	.word	8682542
	.word	8682671
	.word	268435456
	.word	8420385
	.word	-1342177280
	.word	24673452
	.word	-268435456
	.word	24673326
	.word	1610612736
	.word	17234198
	.word	0
	.word	-2130020076
	.word	33259520
	.word	1610612736
	.word	1091206148
	.word	33259520
	.word	1610612736
	.word	17234274
	.word	822770726
	.word	33259520
	.word	1610612736
	.word	33325056
	.word	1610612736
	.word	-1342177280
	.word	16349184
	.word	286194442
	.word	805306368
	.word	0
	.word	33128448
	.word	-2147483648
	.word	268435456
	.word	16349184
	.word	277150492
	.word	9239324
	.word	805306368
	.word	8419328
	.word	0
	.word	805306368
	.word	8419328
	.word	17234796
	.word	17758530
	.word	0
	.word	-268435456
	.word	1342177280
	.word	-235044864
	.word	1628371250
	.word	0
	.word	17464358
	.word	0
	.word	-235044864
	.word	1610612736
	.word	0
	.word	536870912
	.word	1610612736
	.word	24673326
	.word	-536870912
	.word	17234200
	.word	0
	.word	-2130020076
	.word	33259520
	.word	1610612736
	.word	1091206148
	.word	33259520
	.word	1610612736
	.word	17234274
	.word	822770726
	.word	33259520
	.word	1610612736
	.word	33325056
	.word	1610612736
	.word	-1342177280
	.word	16349184
	.word	286194442
	.word	805306368
	.word	0
	.word	33128448
	.word	1879048192
	.word	0
	.word	16349184
	.word	277150492
	.word	9239324
	.word	805306368
	.word	8419328
	.word	0
	.word	805306368
	.word	8419328
	.word	17234796
	.word	17758530
	.word	0
	.word	-268435456
	.word	1342177280
	.word	-235044864
	.word	1628371250
	.word	0
	.word	17464358
	.word	0
	.word	-235044864
	.word	-536870912
	.word	268435456
	.word	536870912
	.word	1610612736
	.word	24673455
	.word	1610612736
	.word	24935457
	.word	1610612736
	.word	24706208
	.word	1610612736
	.word	0
	.word	536870912
	.word	16349184
	.word	17758488
	.word	8715034
	.word	9239322
	.word	0
	.word	17234228
	.word	17758984
	.word	17758980
	.word	268435456
	.word	0
	.word	-234913792
	.word	1342177280
	.word	21428994
	.word	23525654
	.word	21952790
	.word	20904718
	.word	17758520
	.word	0
	.word	17234288
	.word	18282794
	.word	18807142
	.word	-2147483648
	.word	19331382
	.word	17235072
	.word	18283652
	.word	0
	.word	8715418
	.word	0
	.word	9763996
	.word	33325056
	.word	-1610612736
	.word	18282774
	.word	824113430
	.word	9239710
	.word	17235098
	.word	1610612736
	.word	16349184
	.word	9239710
	.word	17235098
	.word	17758988
	.word	0
	.word	805306368
	.word	17235098
	.word	18283278
	.word	18807964
	.word	0
	.word	805306368
	.word	18283278
	.word	-1073741824
	.word	268435456
	.word	17988648
	.word	286194026
	.word	33128448
	.word	-1879048192
	.word	33128448
	.word	-1861813906
	.word	33128448
	.word	822540652
	.word	33128448
	.word	-536870912
	.word	0
	.word	-1073741824
	.word	24673280
	.word	805306368
	.word	16349184
	.word	17234704
	.word	19037185
	.word	-2129725162
	.word	18282848
	.word	18807144
	.word	-2147483648
	.word	805306368
	.word	805306368
	.word	24673296
	.word	805306368
	.word	16349184
	.word	17234706
	.word	19037201
	.word	-2129725088
	.word	18282848
	.word	18807144
	.word	-2147483648
	.word	805306368
	.word	17235098
	.word	17759388
	.word	18283678
	.word	8715424
	.word	9239714
	.word	9764004
	.word	14711981
	.word	822609409
	.word	17827328
	.word	1879048192
	.word	21952864
	.word	-2147483648
	.word	16349184
	.word	17234228
	.word	17758984
	.word	0
	.word	17758980
	.word	268435456
	.word	33062912
	.word	-2147483648
	.word	-235175936
	.word	0
	.word	-235110400
	.word	-2147483648
	.word	16349184
	.word	17234288
	.word	17758978
	.word	18282782
	.word	18807142
	.word	-2147483648
	.word	16349184
	.word	20904718
	.word	17758520
	.word	0
	.word	19331382
	.word	17235072
	.word	0
	.word	0
	.word	8715420
	.word	16349184
	.word	17235100
	.word	17758982
	.word	0
	.word	17758988
	.word	33259520
	.word	-805306368
	.word	17235100
	.word	17758982
	.word	805306368
	.word	18282774
	.word	18807062
	.word	1879048192
	.word	17235100
	.word	17758988
	.word	0
	.word	0
	.word	805306368
	.word	17235100
	.word	18283278
	.word	18807558
	.word	0
	.word	805306368
	.word	-1073741824
	.word	268435456
	.word	17988648
	.word	286194026
	.word	33128448
	.word	1073741824
	.word	33128448
	.word	1073741824
	.word	822609409
	.word	17827328
	.word	1879048192
	.word	0
	.word	8420524
	.word	24706208
	.word	-2147483648
	.word	17759396
	.word	33521664
	.word	-536870912
	.word	17235104
	.word	17759396
	.word	18282774
	.word	18807062
	.word	-1879048192
	.word	16349184
	.word	17235104
	.word	17758988
	.word	0
	.word	805306368
	.word	17235104
	.word	18283278
	.word	18807970
	.word	0
	.word	805306368
	.word	18283278
	.word	-1073741824
	.word	268435456
	.word	17988648
	.word	286194026
	.word	33390592
	.word	0
	.word	536870912
	.word	33390592
	.word	-2147483648
	.word	268435456
	.word	1879048192
	.word	268435456
	.word	268435456
	.word	8420524
	.word	0
	.word	0
	.word	8420398
	.word	0
	.word	16349184
	.word	17234708
	.word	8715430
	.word	17758498
	.word	0
	.word	8715432
	.word	17758488
	.word	18807562
	.word	1073741824
	.word	0
	.word	805306368
	.word	8419328
	.word	16940070
	.word	17758514
	.word	0
	.word	-250676968
	.word	-268435456
	.word	1342177280
	.word	17758488
	.word	-268435456
	.word	1610612736
	.word	0
	.word	-268435456
	.word	-268435456
	.word	268435456
	.word	0
	.word	8715104
	.word	268435456
	.word	-536870912
	.word	8715106
	.word	16349184
	.word	17234708
	.word	805306368
	.word	10516480
	.word	8715108
	.word	17235088
	.word	8715110
	.word	17234214
	.word	8715120
	.word	17234244
	.word	8715118
	.word	16940060
	.word	-268435456
	.word	-805306368
	.word	17464339
	.word	-268435456
	.word	-1073741824
	.word	17464340
	.word	-268435456
	.word	-1323894504
	.word	17464322
	.word	0
	.word	-268435456
	.word	-1610612736
	.word	17464324
	.word	-268435456
	.word	268435456
	.word	24673285
	.word	-2147483648
	.word	17758486
	.word	805306368
	.word	24673316
	.word	-512197595
	.word	-1055983330
	.word	805306368
	.word	17758488
	.word	805306368
	.word	24673286
	.word	286193958
	.word	805306368
	.word	17758486
	.word	805306368
	.word	-536870912
	.word	17464323
	.word	0
	.word	8715328
	.word	17235110
	.word	18282776
	.word	18807144
	.word	-2147483648
	.word	16349184
	.word	17234710
	.word	8715330
	.word	1090976934
	.word	0
	.word	286718232
	.word	18807144
	.word	-2147483648
	.word	17235112
	.word	8715332
	.word	1090976934
	.word	0
	.word	555153688
	.word	18807144
	.word	-2147483648
	.word	16349184
	.word	17234712
	.word	8715334
	.word	-2130248538
	.word	0
	.word	823589144
	.word	18807144
	.word	-2147483648
	.word	17235090
	.word	8715336
	.word	16940202
	.word	8715338
	.word	17235092
	.word	33259520
	.word	-1610612736
	.word	0
	.word	8715340
	.word	17235094
	.word	8715342
	.word	16940203
	.word	8715344
	.word	17235096
	.word	33259520
	.word	805306368
	.word	0
	.word	8715346
	.word	-1593672675
	.word	17464365
	.word	0
	.word	-268435456
	.word	-1342177280
	.word	822770723
	.word	0
	.word	-268435456
	.word	-1879048192
	.word	17464353
	.word	0
	.word	8715348
	.word	-251495381
	.word	0
	.word	-268435456
	.word	1628077098
	.word	0
	.word	-268435456
	.word	268435456
	.word	17464327
	.word	-536870912
	.word	17464354
	.word	18807064
	.word	33128448
	.word	0
	.word	33128448
	.word	536870912
	.word	1091500310
	.word	268435456
	.word	1073741824
	.word	536870912
	.word	1073741824
	.word	0
	.word	8715350
	.word	17235112
	.word	1092024672
	.word	18807144
	.word	-2147483648
	.word	16940070
	.word	17758514
	.word	0
	.word	-268435456
	.word	8715352
	.word	17235112
	.word	0
	.word	-1055459048
	.word	18807144
	.word	-2147483648
	.word	0
	.word	8715354
	.word	-1056506712
	.word	0
	.word	-787023592
	.word	18807144
	.word	-2147483648
	.word	0
	.word	554173952
	.word	17827336
	.word	1879048192
	.word	-251200684
	.word	0
	.word	8420526
	.word	822609408
	.word	17827352
	.word	1879048192
	.word	-1073741824
	.word	11566081
	.word	-250446847
	.word	33325056
	.word	-805306368
	.word	17988609
	.word	33325056
	.word	-805306368
	.word	20085934
	.word	554203411
	.word	33128448
	.word	0
	.word	33128448
	.word	0
	.word	-2130151150
	.word	33128448
	.word	0
	.word	33128448
	.word	0
	.word	-519538416
	.word	33128448
	.word	0
	.word	33128448
	.word	16808209
	.word	33128448
	.word	0
	.word	-805306368
	.word	1091074311
	.word	33128448
	.word	-1342177280
	.word	33128448
	.word	-1342177280
	.word	-1593280239
	.word	33128448
	.word	-1342177280
	.word	33128448
	.word	-1342177280
	.word	-805306368
	.word	-1073741824
	.word	11566082
	.word	17827329
	.word	0
	.word	0
	.word	33390592
	.word	-805306368
	.word	-1073741824
	.word	0
	.word	33390592
	.word	-805306368
	.word	-1073741824
	.word	0
	.word	33390592
	.word	-805306368
	.word	554173952
	.word	17827329
	.word	1879048192
	.word	20380500
	.word	822609408
	.word	17827329
	.word	1879048192
	.word	0
	.word	33390592
	.word	-805306368
	.word	554173952
	.word	17827329
	.word	1879048192
	.word	20380500
	.word	822609408
	.word	17827329
	.word	1879048192
	.word	268435456
	.word	33390592
	.word	-268435456
	.word	0
	.word	554173952
	.word	17827329
	.word	1879048192
	.word	20380500
	.word	11566254
	.word	822609408
	.word	17827329
	.word	1879048192
	.word	24673454
	.word	-1073741824
	.word	-2128083448
	.word	0
	.word	0
	.word	33128448
	.word	805306368
	.word	-805306368
	.word	18282786
	.word	0
	.word	17758564
	.word	0
	.word	0
	.word	33128448
	.word	1879048192
	.word	0
	.word	286193948
	.word	0
	.word	33062912
	.word	-1073741824
	.word	-1342177280
	.word	-234881024
	.word	0
	.word	554173952
	.word	17827329
	.word	1879048192
	.word	20380500
	.word	11566254
	.word	822609408
	.word	17827329
	.word	1879048192
	.word	24673454
	.word	-1342177280
	.word	-2128083448
	.word	0
	.word	0
	.word	33128448
	.word	536870912
	.word	-805306368
	.word	18282786
	.word	0
	.word	17758564
	.word	0
	.word	0
	.word	33128448
	.word	1610612736
	.word	0
	.word	286193964
	.word	0
	.word	33062912
	.word	-1342177280
	.word	-1610612736
	.word	-536870912
	.word	-268435456
	.word	268435456
	.word	8420354
	.word	-1073741824
	.word	11566088
	.word	-1073741824
	.word	33259520
	.word	1342177280
	.word	-805306368
	.word	-1073741824
	.word	11566089
	.word	0
	.word	33128448
	.word	268435456
	.word	268435456
	.word	33128448
	.word	1879048192
	.word	536870912
	.word	33128448
	.word	-805306368
	.word	-805306368
	.word	-1073741824
	.word	11566091
	.word	-1073741824
	.word	33521664
	.word	-805306368
	.word	-805306368
	.word	554173952
	.word	17827329
	.word	1879048192
	.word	17234772
	.word	8420362
	.word	822609408
	.word	17827329
	.word	1879048192
	.word	1879048192
	.word	1879048192
	.word	-1073741824
	.word	11566254
	.word	-268435456
	.word	33259520
	.word	-805306368
	.word	0
	.word	33521664
	.word	-805306368
	.word	16940206
	.word	0
	.word	1879048192
	.word	-1342177280
	.word	-1073741824
	.word	822609408
	.word	17827329
	.word	1879048192
	.word	-1073741824
	.word	11566083
	.word	286193960
	.word	33325056
	.word	-805306368
	.word	33062912
	.word	-805306368
	.word	-1073741824
	.word	11566084
	.word	554173952
	.word	17827329
	.word	1879048192
	.word	20380500
	.word	11566085
	.word	822609408
	.word	17827329
	.word	1879048192
	.word	0
	.word	33128448
	.word	1610612736
	.word	-2147483648
	.word	554173952
	.word	17827329
	.word	1879048192
	.word	20380500
	.word	11566086
	.word	822609408
	.word	17827329
	.word	1879048192
	.word	286193946
	.word	20085764
	.word	33325056
	.word	-805306368
	.word	33062912
	.word	-805306368
	.word	825392131
	.word	33325056
	.word	-805306368
	.word	0
	.word	0
	.word	8420358
	.word	286193956
	.word	20085764
	.word	33325056
	.word	-805306368
	.word	33062912
	.word	-805306368
	.word	554173952
	.word	17827329
	.word	1879048192
	.word	20380500
	.word	11566087
	.word	24673455
	.word	-805306368
	.word	822609409
	.word	17827329
	.word	1879048192
	.word	268435456
	.word	8420352
	.word	0
	.word	822609409
	.word	17827328
	.word	1879048192
	.word	0
	.word	8420352
	.word	0
	.word	-1073741824
	.word	11566097
	.word	17827583
	.word	33325056
	.word	-1342177280
	.word	33259520
	.word	-1342177280
	.word	-1073741824
	.word	11566098
	.word	17827359
	.word	33325056
	.word	-1342177280
	.word	33259520
	.word	-1342177280
	.word	16349184
	.word	286194442
	.word	805306368
	.word	0
	.word	33128448
	.word	-2147483648
	.word	268435456
	.word	16349184
	.word	17758992
	.word	19037202
	.word	-2130249450
	.word	18282848
	.word	18807142
	.word	-2147483648
	.word	24935424
	.word	-1342177280
	.word	554173952
	.word	17827329
	.word	1879048192
	.word	20380500
	.word	11566099
	.word	822609408
	.word	17827329
	.word	1879048192
	.word	554173952
	.word	17827329
	.word	1879048192
	.word	20380500
	.word	11566101
	.word	822609408
	.word	17827329
	.word	1879048192
	.word	-1073741824
	.word	0
	.word	33390592
	.word	-1342177280
	.word	-1073741824
	.word	11566103
	.word	-268435456
	.word	33259520
	.word	-1342177280
	.word	-1073741824
	.word	11566104
	.word	-268435456
	.word	33259520
	.word	-1342177280
	.word	554173952
	.word	17827329
	.word	1879048192
	.word	20380500
	.word	11566106
	.word	822609408
	.word	17827329
	.word	1879048192
	.word	554173952
	.word	17827330
	.word	1879048192
	.word	20380500
	.word	11566107
	.word	822609408
	.word	17827330
	.word	1879048192
	.word	805306368
	.word	33062912
	.word	-1342177280
	.word	-805306368
	.word	11566109
	.word	-805306368
	.word	-805306368
	.word	554173952
	.word	17827329
	.word	1879048192
	.word	20380500
	.word	11566105
	.word	822609408
	.word	17827329
	.word	1879048192
	.word	554173952
	.word	17827329
	.word	1879048192
	.word	20380500
	.word	11566100
	.word	822609408
	.word	17827329
	.word	1879048192
	.word	554173952
	.word	17827329
	.word	1879048192
	.word	20380500
	.word	11566102
	.word	822609408
	.word	17827329
	.word	1879048192
	.word	17234198
	.word	8420380
	.word	822541470
	.word	17759062
	.word	0
	.word	33521664
	.word	805306368
	.word	554173952
	.word	17827329
	.word	1879048192
	.word	20380500
	.word	11566108
	.word	822609408
	.word	17827329
	.word	1879048192
	.word	24935452
	.word	805306368
	.word	0
	.word	554173952
	.word	17827329
	.word	1879048192
	.word	20380500
	.word	33390592
	.word	268435456
	.word	822609408
	.word	17827329
	.word	1879048192
	.word	17235102
	.word	17759062
	.word	33521664
	.word	-536870912
	.word	-268435456
	.word	0
	.word	8420380
	.word	805306368
	.word	268435456
	.word	8420380
	.word	24673455
	.word	-1342177280
	.word	822609409
	.word	17827328
	.word	1879048192
	.word	268435456
	.word	8420368
	.word	0
	.word	822609409
	.word	17827328
	.word	1879048192
	.word	0
	.word	8420368
	.word	0
	.word	-1073741824
	.word	11566113
	.word	17758528
	.word	33062912
	.word	268435456
	.word	-1073741824
	.word	536870912
	.word	33128448
	.word	1610612736
	.word	1073741824
	.word	33128448
	.word	1610612736
	.word	1879048192
	.word	33128448
	.word	1610612736
	.word	-1879048192
	.word	33128448
	.word	1610612736
	.word	0
	.word	33128448
	.word	-1879048192
	.word	805306368
	.word	33128448
	.word	-1879048192
	.word	1342177280
	.word	33128448
	.word	-1879048192
	.word	-2147483648
	.word	33128448
	.word	-1879048192
	.word	268435456
	.word	33128448
	.word	-1073741824
	.word	1610612736
	.word	33128448
	.word	-1073741824
	.word	268435456
	.word	536870912
	.word	8944674
	.word	-536870912
	.word	0
	.word	8944674
	.word	-536870912
	.word	268435456
	.word	8944674
	.word	-1073741824
	.word	11566112
	.word	-268435456
	.word	33259520
	.word	268435456
	.word	16349184
	.word	286194442
	.word	805306368
	.word	0
	.word	33128448
	.word	-1610612736
	.word	805306368
	.word	16349184
	.word	17758994
	.word	19037216
	.word	-2130249376
	.word	18282848
	.word	18807142
	.word	-2147483648
	.word	24935440
	.word	268435456
	.word	16349184
	.word	17758992
	.word	19037202
	.word	-2130249450
	.word	18282848
	.word	18807142
	.word	-2147483648
	.word	24935424
	.word	268435456
	.word	822609408
	.word	1092254728
	.word	0
	.word	1879048192
	.word	0
	.word	8420388
	.word	8420389
	.word	24673285
	.word	1879048192
	.word	554173952
	.word	17827329
	.word	1879048192
	.word	20380500
	.word	11566116
	.word	822609408
	.word	17827329
	.word	1879048192
	.word	24673316
	.word	1879048192
	.word	554173952
	.word	17827329
	.word	1879048192
	.word	20380500
	.word	11566117
	.word	822609408
	.word	17827329
	.word	1879048192
	.word	16940035
	.word	17464324
	.word	-268435456
	.word	-268435456
	.word	-2147483648
	.word	8420390
	.word	24673285
	.word	-1610612736
	.word	24673316
	.word	-1610612736
	.word	554335270
	.word	-2147483648
	.word	8420390
	.word	554335236
	.word	-268435456
	.word	-2147483648
	.word	268435456
	.word	0
	.word	8420356
	.word	285375524
	.word	17464326
	.word	0
	.word	8420391
	.word	1359641640
	.word	33390592
	.word	1342177280
	.word	-1073741824
	.word	17758528
	.word	33259520
	.word	268435456
	.word	17464329
	.word	33390592
	.word	536870912
	.word	822609408
	.word	1092254731
	.word	0
	.word	1879048192
	.word	16940053
	.word	285899812
	.word	0
	.word	33521664
	.word	536870912
	.word	1879048192
	.word	16940041
	.word	285899786
	.word	0
	.word	33521664
	.word	-536870912
	.word	1879048192
	.word	16940053
	.word	285899812
	.word	0
	.word	33521664
	.word	-536870912
	.word	1879048192
	.word	24935446
	.word	1073741824
	.word	-1073741824
	.word	0
	.word	33259520
	.word	268435456
	.word	285899810
	.word	33390592
	.word	-536870912
	.word	554173952
	.word	17827329
	.word	1879048192
	.word	17234772
	.word	822609408
	.word	17827329
	.word	1879048192
	.word	16940055
	.word	17464344
	.word	8420394
	.word	8944683
	.word	554335266
	.word	33128448
	.word	1610612736
	.word	554173952
	.word	17827329
	.word	1879048192
	.word	20380500
	.word	11566121
	.word	822609408
	.word	17827329
	.word	1879048192
	.word	24935465
	.word	1610612736
	.word	-1073741824
	.word	11566122
	.word	285899810
	.word	33390592
	.word	1610612736
	.word	-1073741824
	.word	11566123
	.word	554335266
	.word	33390592
	.word	-1342177280
	.word	0
	.word	8420394
	.word	285899810
	.word	33128448
	.word	0
	.word	0
	.word	8420395
	.word	554335266
	.word	33390592
	.word	1073741824
	.word	1610612736
	.word	554173952
	.word	17827329
	.word	1879048192
	.word	20380500
	.word	11566254
	.word	822609408
	.word	17827329
	.word	1879048192
	.word	24935598
	.word	1610612736
	.word	0
	.word	554335274
	.word	0
	.word	-1073741824
	.word	805306368
	.word	33259520
	.word	268435456
	.word	805306368
	.word	33128448
	.word	1610612736
	.word	0
	.word	33128448
	.word	536870912
	.word	268435456
	.word	33128448
	.word	536870912
	.word	536870912
	.word	33128448
	.word	1073741824
	.word	1342177280
	.word	1879048192
	.word	1342177280
	.word	1879048192
	.word	268435456
	.word	285899810
	.word	33390592
	.word	-1342177280
	.word	554173952
	.word	17827329
	.word	1879048192
	.word	20380500
	.word	11566254
	.word	822609408
	.word	17827329
	.word	1879048192
	.word	24935598
	.word	-1342177280
	.word	0
	.word	554335275
	.word	0
	.word	-1073741824
	.word	805306368
	.word	33259520
	.word	268435456
	.word	805306368
	.word	33128448
	.word	-1342177280
	.word	0
	.word	33128448
	.word	1879048192
	.word	268435456
	.word	33128448
	.word	1879048192
	.word	536870912
	.word	33128448
	.word	-1879048192
	.word	-1610612736
	.word	1879048192
	.word	-1610612736
	.word	1879048192
	.word	1610612736
	.word	17464354
	.word	286948379
	.word	33390592
	.word	293108762
	.word	-2147483648
	.word	1879048192
	.word	17464354
	.word	33390592
	.word	1879048192
	.word	-235044864
	.word	1879048192
	.word	-2147483648
	.word	536870912
	.word	-1073741824
	.word	24673282
	.word	-1073741824
	.word	-1073741824
	.word	17464362
	.word	268435456
	.word	0
	.word	554173952
	.word	17827329
	.word	1879048192
	.word	20380500
	.word	11566254
	.word	822609408
	.word	17827329
	.word	1879048192
	.word	24673454
	.word	-1342177280
	.word	-805306368
	.word	-805306368
	.word	24673282
	.word	-1342177280
	.word	554173952
	.word	17827329
	.word	1879048192
	.word	20380500
	.word	11566254
	.word	822609408
	.word	17827329
	.word	1879048192
	.word	24673454
	.word	-1342177280
	.word	-805306368
	.word	-805306368
	.word	-805306368
	.word	-805306368
	.word	-268435456
	.word	285899810
	.word	17988635
	.word	33390592
	.word	536870912
	.word	-235044864
	.word	536870912
	.word	17464363
	.word	268435456
	.word	0
	.word	554173952
	.word	17827329
	.word	1879048192
	.word	20380500
	.word	11566254
	.word	822609408
	.word	17827329
	.word	1879048192
	.word	24673454
	.word	268435456
	.word	-805306368
	.word	-805306368
	.word	24673282
	.word	268435456
	.word	554173952
	.word	17827329
	.word	1879048192
	.word	20380500
	.word	11566254
	.word	822609408
	.word	17827329
	.word	1879048192
	.word	24673454
	.word	268435456
	.word	-805306368
	.word	-805306368
	.word	-805306368
	.word	-805306368
	.word	1342177280
	.word	24673324
	.word	-536870912
	.word	1359641640
	.word	33390592
	.word	-1342177280
	.word	822609408
	.word	17827330
	.word	1879048192
	.word	-536870912
	.word	554173952
	.word	17827329
	.word	1879048192
	.word	20380500
	.word	11566254
	.word	822609408
	.word	17827329
	.word	1879048192
	.word	24673454
	.word	-536870912
	.word	-1073741824
	.word	11566254
	.word	268435456
	.word	33128448
	.word	1879048192
	.word	536870912
	.word	33128448
	.word	1879048192
	.word	1073741824
	.word	33128448
	.word	1879048192
	.word	1610612736
	.word	33128448
	.word	1879048192
	.word	805306368
	.word	33128448
	.word	-1879048192
	.word	-1342177280
	.word	-1073741824
	.word	-1342177280
	.word	-1073741824
	.word	-1073741824
	.word	16940206
	.word	33259520
	.word	1342177280
	.word	24673299
	.word	-1073741824
	.word	16940066
	.word	33128448
	.word	1879048192
	.word	268435456
	.word	33128448
	.word	1879048192
	.word	-1073741824
	.word	-1073741824
	.word	11566115
	.word	805306368
	.word	33062912
	.word	268435456
	.word	-805306368
	.word	11566125
	.word	24935449
	.word	-1879048192
	.word	-1073741824
	.word	536870912
	.word	33259520
	.word	268435456
	.word	17827329
	.word	33128448
	.word	-1879048192
	.word	-805306368
	.word	-805306368
	.word	24673455
	.word	268435456
	.word	822609409
	.word	17827328
	.word	1879048192
	.word	268435456
	.word	8420398
	.word	0
	.word	822609409
	.word	17827328
	.word	1879048192
	.word	0
	.word	8420398
	.word	0
	.word	1073741824
	.word	9992192
	.word	-2147483648
	.word	-1610612736
	.word	-268435456
	.word	268435456
	.word	0
	.word	17827329
	.word	0
	.word	8715072
	.word	0
	.word	286194520
	.word	-268435456
	.word	-536870912
	.word	18282776
	.word	33128448
	.word	-1879048192
	.word	-1342177280
	.word	268435456
	.word	8420527
	.word	0
	.word	1073741824
	.word	11565056
	.word	19331386
	.word	20379926
	.word	33390592
	.word	-536870912
	.word	20379926
	.word	11336516
	.word	11860806
	.word	19855676
	.word	0
	.word	805306368
	.word	11336520
	.word	9239370
	.word	9763660
	.word	11860814
	.word	10287952
	.word	-536870912
	.word	20379926
	.word	11336516
	.word	0
	.word	0
	.word	11336518
	.word	19855676
	.word	0
	.word	805306368
	.word	11336520
	.word	9239370
	.word	11860812
	.word	19855676
	.word	0
	.word	805306368
	.word	11336526
	.word	10287952
	.word	268435456
	.word	8715074
	.word	0
	.word	1073741824
	.word	11565056
	.word	823064854
	.word	18282784
	.word	1879048192
	.word	554629398
	.word	18282848
	.word	1879048192
	.word	-251200684
	.word	17758502
	.word	1342177280
	.word	9468968
	.word	9993260
	.word	823064854
	.word	18282848
	.word	1879048192
	.word	0
	.word	0
	.word	33390592
	.word	-1342177280
	.word	16349184
	.word	-2129724670
	.word	18906285
	.word	-2130249360
	.word	18282782
	.word	18807142
	.word	-2147483648
	.word	17235074
	.word	17758488
	.word	-268435456
	.word	-268435456
	.word	268435456
	.word	0
	.word	8715394
	.word	16349184
	.word	-2130248958
	.word	18906285
	.word	-2129725072
	.word	18282782
	.word	18807144
	.word	-2147483648
	.word	1879048192
	.word	16349184
	.word	-2129724670
	.word	19331848
	.word	-268435456
	.word	-2130249360
	.word	18282782
	.word	18807142
	.word	-2147483648
	.word	16349184
	.word	17234694
	.word	17759362
	.word	0
	.word	9239686
	.word	17234694
	.word	17759360
	.word	18283276
	.word	33259520
	.word	-536870912
	.word	805306368
	.word	17235072
	.word	17758988
	.word	18283270
	.word	18283278
	.word	0
	.word	9239684
	.word	17235074
	.word	17758488
	.word	-268435456
	.word	-268435456
	.word	268435456
	.word	0
	.word	8715394
	.word	16349184
	.word	-2130248958
	.word	19331848
	.word	-268435456
	.word	-2129725072
	.word	18282794
	.word	18807144
	.word	-2147483648
	.word	16349184
	.word	287767304
	.word	0
	.word	8715016
	.word	0
	.word	536870912
	.word	10516480
	.word	8715042
	.word	277674784
	.word	546634532
	.word	33128448
	.word	1073741824
	.word	33128448
	.word	-2147483648
	.word	33128448
	.word	-1073741824
	.word	-268435456
	.word	268435456
	.word	8715046
	.word	0
	.word	-268435456
	.word	268435456
	.word	8715048
	.word	0
	.word	-268435456
	.word	268435456
	.word	8715050
	.word	0
	.word	0
	.word	1073741824
	.word	11565056
	.word	20380502
	.word	24935443
	.word	-1879048192
	.word	1898379590
	.word	0
	.word	0
	.word	0
	.word	16349184
	.word	0
	.word	33390592
	.word	-1879048192
	.word	17235104
	.word	17759394
	.word	33259520
	.word	1610612736
	.word	17235104
	.word	17758988
	.word	0
	.word	805306368
	.word	33259520
	.word	1610612736
	.word	9763988
	.word	19331386
	.word	18283278
	.word	0
	.word	9763984
	.word	17235104
	.word	19331386
	.word	0
	.word	19855676
	.word	0
	.word	0
	.word	825162046
	.word	0
	.word	0
	.word	805306368
	.word	11336850
	.word	19855662
	.word	0
	.word	11041962
	.word	0
	.word	10288278
	.word	19331388
	.word	18283278
	.word	0
	.word	805306368
	.word	9993387
	.word	17759394
	.word	0
	.word	805306368
	.word	10288280
	.word	1342177280
	.word	19331386
	.word	18283278
	.word	0
	.word	9763984
	.word	17235104
	.word	17758988
	.word	0
	.word	805306368
	.word	0
	.word	17234236
	.word	17758990
	.word	0
	.word	805306368
	.word	0
	.word	19855678
	.word	0
	.word	805306368
	.word	10288274
	.word	19855662
	.word	0
	.word	9993386
	.word	17234702
	.word	17759394
	.word	0
	.word	805306368
	.word	0
	.word	10288276
	.word	0
	.word	10288278
	.word	9993387
	.word	10288280
	.word	-1073741824
	.word	17235104
	.word	17759396
	.word	-1879048192
	.word	17235100
	.word	17758982
	.word	18283276
	.word	33259520
	.word	1342177280
	.word	17235100
	.word	17758988
	.word	0
	.word	805306368
	.word	33259520
	.word	805306368
	.word	9763988
	.word	19331386
	.word	18283278
	.word	0
	.word	9763984
	.word	17235100
	.word	19331386
	.word	0
	.word	19855676
	.word	0
	.word	0
	.word	825162046
	.word	0
	.word	0
	.word	805306368
	.word	11336850
	.word	19855662
	.word	0
	.word	11041962
	.word	0
	.word	10288278
	.word	19331388
	.word	18283278
	.word	0
	.word	805306368
	.word	9993387
	.word	17758982
	.word	823590036
	.word	0
	.word	10288280
	.word	1073741824
	.word	19331386
	.word	18283278
	.word	0
	.word	9763984
	.word	17235100
	.word	17758988
	.word	0
	.word	805306368
	.word	0
	.word	17234236
	.word	17758990
	.word	0
	.word	805306368
	.word	0
	.word	19855678
	.word	0
	.word	805306368
	.word	10288274
	.word	19855662
	.word	0
	.word	9993386
	.word	17234694
	.word	17759388
	.word	18283276
	.word	0
	.word	0
	.word	805306368
	.word	0
	.word	10288276
	.word	0
	.word	10288278
	.word	9993387
	.word	10288280
	.word	-1073741824
	.word	17235100
	.word	17758982
	.word	805306368
	.word	-1879048192
	.word	19331386
	.word	0
	.word	10288272
	.word	19331388
	.word	0
	.word	805306368
	.word	19331374
	.word	0
	.word	11041962
	.word	0
	.word	9239700
	.word	19331390
	.word	0
	.word	805306368
	.word	11336850
	.word	0
	.word	10288278
	.word	9993387
	.word	10288280
	.word	0
	.word	1090520577
	.word	9992192
	.word	-2147483648
	.word	-1610612736
	.word	17827329
	.word	0
	.word	8715072
	.word	0
	.word	17758538
	.word	20380498
	.word	18807090
	.word	0
	.word	33128448
	.word	-1055983284
	.word	0
	.word	286194514
	.word	-268435456
	.word	-805306368
	.word	18282776
	.word	33128448
	.word	-1879048192
	.word	286194520
	.word	-268435456
	.word	-536870912
	.word	18282776
	.word	33128448
	.word	-1879048192
	.word	-1342177280
	.word	268435456
	.word	8420527
	.word	0
	.word	1090520576
	.word	9992192
	.word	-2147483648
	.word	-1610612736
	.word	17827329
	.word	0
	.word	8715072
	.word	0
	.word	17234226
	.word	20380498
	.word	0
	.word	286194514
	.word	-268435456
	.word	-805306368
	.word	18282776
	.word	33128448
	.word	1073741824
	.word	286194520
	.word	-268435456
	.word	-536870912
	.word	18282776
	.word	33128448
	.word	1073741824
	.word	1610612736
	.word	268435456
	.word	8420527
	.word	0
	.word	18875904
	.word	0
	.word	1091044864
	.word	546863104
	.word	17827332
	.word	-2147483648
	.word	-1610612736
	.word	-268435456
	.word	268435456
	.word	0
	.word	17827329
	.word	0
	.word	8715072
	.word	0
	.word	17234772
	.word	0
	.word	17455440
	.word	16778756
	.word	33390592
	.word	-1342177280
	.word	1091044864
	.word	815298560
	.word	17827332
	.word	-2147483648
	.word	-1610612736
	.word	-268435456
	.word	268435456
	.word	0
	.word	17827329
	.word	0
	.word	8715072
	.word	0
	.word	17303041
	.word	17827336
	.word	33325056
	.word	-1879048192
	.word	17303072
	.word	33062912
	.word	268435456
	.word	285738497
	.word	18351620
	.word	-2147483648
	.word	0
	.word	17827352
	.word	33062912
	.word	1073741824
	.word	17303064
	.word	0
	.word	1091044864
	.word	815298560
	.word	17827352
	.word	-2147483648
	.word	-1610612736
	.word	-268435456
	.word	268435456
	.word	0
	.word	17827329
	.word	0
	.word	8715072
	.word	0
	.word	536870912
	.word	1091044864
	.word	815298560
	.word	0
	.word	-2147483648
	.word	-1610612736
	.word	-268435456
	.word	268435456
	.word	0
	.word	17827329
	.word	0
	.word	8715072
	.word	0
	.word	-536870912
	.word	1091044864
	.word	815298560
	.word	-2147483648
	.word	0
	.word	-2147483648
	.word	-1610612736
	.word	-268435456
	.word	268435456
	.word	0
	.word	17827329
	.word	0
	.word	8715072
	.word	0
	.word	286194520
	.word	-268435456
	.word	-536870912
	.word	18282776
	.word	33128448
	.word	1342177280
	.word	1879048192
	.word	268435456
	.word	8420527
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1011712
	.word	16384
	.word	0
	.word	0
	.word	0
	.word	17408
	.word	916484
	.word	1031168
	.word	1018880
	.word	16384
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	16384
	.word	0
	.word	1035272
	.word	0
	.word	1031172
	.word	0
	.word	1027080
	.word	0
	.word	1035361
	.word	16391
	.word	916544
	.word	1031176
	.word	16388
	.word	916544
	.word	1031176
	.word	0
	.word	18432
	.word	916544
	.word	1031176
	.word	916552
	.word	1031176
	.word	1035284
	.word	0
	.word	16384
	.word	99972
	.word	590912
	.word	916544
	.word	1031171
	.word	1018883
	.word	16384
	.word	17408
	.word	0
	.word	16384
	.word	0
	.word	1013760
	.word	16384
	.word	0
	.word	0
	.word	0
	.word	593924
	.word	103056
	.word	103056
	.word	905516
	.word	1031176
	.word	589828
	.word	0
	.word	902208
	.word	916588
	.word	1031176
	.word	16384
	.word	1035355
	.word	1018888
	.word	0
	.word	1027079
	.word	0
	.word	1035361
	.word	16391
	.word	916544
	.word	1031176
	.word	16388
	.word	916544
	.word	1031176
	.word	0
	.word	18432
	.word	916544
	.word	1031176
	.word	916552
	.word	1031176
	.word	1035284
	.word	0
	.word	16384
	.word	99972
	.word	590912
	.word	916544
	.word	1031174
	.word	1018886
	.word	16384
	.word	17408
	.word	0
	.word	16384
	.word	0
	.word	1013760
	.word	16384
	.word	0
	.word	0
	.word	0
	.word	593924
	.word	103056
	.word	103056
	.word	905516
	.word	1031176
	.word	589828
	.word	0
	.word	902208
	.word	916588
	.word	1031175
	.word	16384
	.word	1035355
	.word	1018888
	.word	0
	.word	1031176
	.word	0
	.word	1027080
	.word	0
	.word	1027080
	.word	16384
	.word	1035355
	.word	0
	.word	16384
	.word	0
	.word	0
	.word	1007616
	.word	0
	.word	0
	.word	589828
	.word	99972
	.word	622596
	.word	901164
	.word	1031182
	.word	0
	.word	109184
	.word	0
	.word	0
	.word	0
	.word	597444
	.word	107044
	.word	100000
	.word	0
	.word	1035359
	.word	0
	.word	0
	.word	589840
	.word	98332
	.word	592016
	.word	100508
	.word	0
	.word	902272
	.word	1031178
	.word	0
	.word	67204
	.word	0
	.word	0
	.word	1018891
	.word	17408
	.word	0
	.word	0
	.word	0
	.word	902208
	.word	67204
	.word	0
	.word	0
	.word	0
	.word	904392
	.word	69260
	.word	0
	.word	1035351
	.word	1035354
	.word	0
	.word	16384
	.word	916608
	.word	1031181
	.word	916612
	.word	1031181
	.word	916608
	.word	1031180
	.word	916608
	.word	1031180
	.word	1018894
	.word	1035295
	.word	0
	.word	1027086
	.word	0
	.word	0
	.word	21506
	.word	300368
	.word	98324
	.word	0
	.word	1035359
	.word	1018894
	.word	1035312
	.word	0
	.word	1027086
	.word	0
	.word	0
	.word	21506
	.word	300368
	.word	98324
	.word	0
	.word	1035359
	.word	1018894
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	16384
	.word	0
	.word	1035350
	.word	0
	.word	983049
	.word	0
	.word	0
	.word	0
	.word	589828
	.word	0
	.word	99972
	.word	916484
	.word	1031188
	.word	916524
	.word	1031184
	.word	916524
	.word	1031188
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1035359
	.word	0
	.word	0
	.word	0
	.word	597444
	.word	0
	.word	0
	.word	589840
	.word	98332
	.word	0
	.word	0
	.word	0
	.word	0
	.word	98308
	.word	0
	.word	916484
	.word	1031184
	.word	0
	.word	0
	.word	67204
	.word	0
	.word	0
	.word	1018897
	.word	0
	.word	0
	.word	902208
	.word	103044
	.word	67204
	.word	0
	.word	0
	.word	0
	.word	904400
	.word	69260
	.word	1035351
	.word	1035354
	.word	0
	.word	16384
	.word	916608
	.word	1031188
	.word	916612
	.word	1031188
	.word	16384
	.word	0
	.word	1035350
	.word	16384
	.word	0
	.word	0
	.word	1027092
	.word	16384
	.word	916544
	.word	1031186
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1018899
	.word	0
	.word	0
	.word	0
	.word	902208
	.word	67204
	.word	0
	.word	0
	.word	0
	.word	904392
	.word	69260
	.word	0
	.word	1035351
	.word	1035354
	.word	0
	.word	16384
	.word	916608
	.word	1031188
	.word	1018900
	.word	916612
	.word	1031188
	.word	1035322
	.word	1018900
	.word	1035322
	.word	16384
	.word	0
	.word	999424
	.word	16384
	.word	0
	.word	999424
	.word	0
	.word	0
	.word	0
	.word	0
	.word	98308
	.word	0
	.word	0
	.word	0
	.word	102028
	.word	592972
	.word	16384
	.word	0
	.word	0
	.word	0
	.word	589828
	.word	901164
	.word	67204
	.word	67204
	.word	606212
	.word	67204
	.word	67204
	.word	606212
	.word	69260
	.word	69260
	.word	69260
	.word	606220
	.word	0
	.word	16384
	.word	66176
	.word	0
	.word	0
	.word	0
	.word	20480
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	66176
	.word	66176
	.word	0
	.word	67204
	.word	67204
	.word	606212
	.word	67204
	.word	67204
	.word	606212
	.word	590920
	.word	67204
	.word	67204
	.word	606212
	.word	67204
	.word	67204
	.word	606212
	.word	1027096
	.word	0
	.word	1018905
	.word	0
	.word	1027096
	.word	1027096
	.word	1018905
	.word	0
	.word	1018905
	.word	0
	.word	1027097
	.word	1018905
	.word	0
	.word	1018905
	.word	67204
	.word	606212
	.word	606212
	.word	0
	.word	0
	.word	17410
	.word	0
	.word	1035359
	.word	0
	.word	0
	.word	0
	.word	17409
	.word	98308
	.word	17410
	.word	0
	.word	1035359
	.word	0
	.word	0
	.word	17410
	.word	98308
	.word	17410
	.word	0
	.word	1035359
	.word	0
	.word	0
	.word	0
	.word	17414
	.word	98308
	.word	17410
	.word	0
	.word	1035359
	.word	0
	.word	0
	.word	0
	.word	0
	.word	17408
	.word	901124
	.word	1031195
	.word	16384
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	17408
	.word	901124
	.word	1031196
	.word	16384
	.word	0
	.word	17409
	.word	98308
	.word	98308
	.word	66176
	.word	66176
	.word	18432
	.word	590980
	.word	67204
	.word	67204
	.word	606212
	.word	606212
	.word	0
	.word	18433
	.word	589832
	.word	66176
	.word	66176
	.word	590920
	.word	67204
	.word	67204
	.word	606212
	.word	67204
	.word	606212
	.word	18432
	.word	916552
	.word	1031198
	.word	916556
	.word	1031198
	.word	1018910
	.word	17408
	.word	1018910
	.word	17408
	.word	1018910
	.word	606212
	.word	0
	.word	0
	.word	17410
	.word	0
	.word	1035359
	.word	0
	.word	0
	.word	589828
	.word	901164
	.word	0
	.word	17419
	.word	98308
	.word	17410
	.word	0
	.word	1035359
	.word	16384
	.word	0
	.word	17423
	.word	98308
	.word	17410
	.word	0
	.word	1035359
	.word	999424
	.word	16384
	.word	0
	.word	1035350
	.word	17423
	.word	589828
	.word	0
	.word	16384
	.word	0
	.word	1035350
	.word	1035374
	.word	0
	.word	16385
	.word	916488
	.word	1031215
	.word	16384
	.word	916608
	.word	1031215
	.word	0
	.word	16388
	.word	916864
	.word	1031202
	.word	916868
	.word	1031202
	.word	16389
	.word	916864
	.word	1031202
	.word	916868
	.word	1031202
	.word	16390
	.word	916864
	.word	1031202
	.word	916868
	.word	1031202
	.word	916864
	.word	1031202
	.word	1031215
	.word	16390
	.word	916864
	.word	1031202
	.word	916868
	.word	1031202
	.word	16391
	.word	916864
	.word	1031202
	.word	916868
	.word	1031202
	.word	1018920
	.word	1035374
	.word	0
	.word	17408
	.word	902532
	.word	903560
	.word	605256
	.word	1031215
	.word	1035374
	.word	17408
	.word	902532
	.word	1031215
	.word	1035374
	.word	17408
	.word	902532
	.word	1031215
	.word	16384
	.word	0
	.word	1035350
	.word	0
	.word	16384
	.word	0
	.word	1035350
	.word	17408
	.word	902532
	.word	1031215
	.word	16384
	.word	0
	.word	1035350
	.word	0
	.word	16384
	.word	0
	.word	1035350
	.word	17408
	.word	902532
	.word	1031208
	.word	29696
	.word	16384
	.word	0
	.word	1035350
	.word	0
	.word	0
	.word	16384
	.word	0
	.word	1035350
	.word	0
	.word	1027110
	.word	20480
	.word	30720
	.word	16384
	.word	916800
	.word	1031206
	.word	1035372
	.word	0
	.word	104840
	.word	104848
	.word	595332
	.word	16384
	.word	906560
	.word	1031206
	.word	103060
	.word	16384
	.word	112696
	.word	917380
	.word	1031206
	.word	1018917
	.word	990244
	.word	29696
	.word	16384
	.word	0
	.word	1035350
	.word	0
	.word	0
	.word	16384
	.word	0
	.word	1035350
	.word	0
	.word	1027112
	.word	20480
	.word	30720
	.word	16384
	.word	916800
	.word	1031208
	.word	1035372
	.word	0
	.word	104840
	.word	104848
	.word	595332
	.word	16384
	.word	906560
	.word	1031208
	.word	103060
	.word	16384
	.word	112696
	.word	917380
	.word	1031208
	.word	1018919
	.word	990246
	.word	1018920
	.word	16384
	.word	0
	.word	1035374
	.word	0
	.word	17408
	.word	916868
	.word	1027113
	.word	1018927
	.word	1035374
	.word	0
	.word	17408
	.word	916868
	.word	1031210
	.word	17408
	.word	916868
	.word	1031210
	.word	17408
	.word	916868
	.word	1031211
	.word	1018927
	.word	1035374
	.word	0
	.word	17408
	.word	916868
	.word	1031211
	.word	1018927
	.word	16384
	.word	0
	.word	1035350
	.word	0
	.word	0
	.word	16384
	.word	0
	.word	1035350
	.word	1035376
	.word	1035376
	.word	1035374
	.word	0
	.word	17423
	.word	916868
	.word	1031215
	.word	17408
	.word	916868
	.word	1031211
	.word	29696
	.word	110208
	.word	1035376
	.word	988203
	.word	1035374
	.word	16384
	.word	0
	.word	1035350
	.word	1035374
	.word	0
	.word	16384
	.word	916864
	.word	1031215
	.word	916868
	.word	1031215
	.word	1035374
	.word	0
	.word	16384
	.word	0
	.word	1035350
	.word	0
	.word	0
	.word	16384
	.word	0
	.word	1035350
	.word	17408
	.word	916868
	.word	1031213
	.word	1018926
	.word	16384
	.word	0
	.word	1035350
	.word	0
	.word	0
	.word	16384
	.word	0
	.word	1035350
	.word	16384
	.word	0
	.word	916864
	.word	1031215
	.word	916868
	.word	1031215
	.word	16384
	.word	916864
	.word	1031215
	.word	1018927
	.word	16384
	.word	0
	.word	16384
	.word	0
	.word	916864
	.word	1031215
	.word	916868
	.word	1031215
	.word	16384
	.word	0
	.word	1035350
	.word	0
	.word	0
	.word	0
	.word	1031215
	.word	16384
	.word	0
	.word	1035350
	.word	16384
	.word	0
	.word	999424
	.word	16384
	.word	0
	.word	1035350
	.word	16384
	.word	0
	.word	999424
	.word	1035374
	.word	0
	.word	17408
	.word	916868
	.word	1031225
	.word	916872
	.word	1031225
	.word	1035374
	.word	0
	.word	17408
	.word	916868
	.word	1031225
	.word	916872
	.word	1031225
	.word	0
	.word	16384
	.word	99972
	.word	590912
	.word	916544
	.word	1031217
	.word	1018929
	.word	0
	.word	0
	.word	21506
	.word	300368
	.word	99412
	.word	0
	.word	1035359
	.word	0
	.word	1031225
	.word	16384
	.word	0
	.word	1035350
	.word	0
	.word	0
	.word	16384
	.word	0
	.word	1035350
	.word	16384
	.word	0
	.word	1035350
	.word	0
	.word	0
	.word	16384
	.word	0
	.word	1035350
	.word	1035374
	.word	17408
	.word	916868
	.word	1031225
	.word	1035374
	.word	0
	.word	17409
	.word	916868
	.word	1031225
	.word	1035374
	.word	0
	.word	17409
	.word	916868
	.word	1031225
	.word	16384
	.word	0
	.word	1035350
	.word	0
	.word	0
	.word	16384
	.word	0
	.word	1035350
	.word	16384
	.word	0
	.word	1035350
	.word	0
	.word	0
	.word	16384
	.word	0
	.word	1035350
	.word	17408
	.word	916868
	.word	1031225
	.word	1035372
	.word	0
	.word	1035372
	.word	1035372
	.word	16384
	.word	0
	.word	1035350
	.word	0
	.word	0
	.word	16384
	.word	0
	.word	1035350
	.word	16384
	.word	0
	.word	1035350
	.word	0
	.word	0
	.word	16384
	.word	0
	.word	1035350
	.word	16384
	.word	0
	.word	1035350
	.word	0
	.word	0
	.word	16384
	.word	0
	.word	1035350
	.word	0
	.word	0
	.word	18432
	.word	0
	.word	901124
	.word	901128
	.word	1031225
	.word	16384
	.word	0
	.word	1035350
	.word	0
	.word	0
	.word	16384
	.word	0
	.word	1035350
	.word	0
	.word	1031225
	.word	20480
	.word	16384
	.word	0
	.word	1035350
	.word	0
	.word	916880
	.word	1031225
	.word	16384
	.word	0
	.word	1035350
	.word	0
	.word	0
	.word	916484
	.word	1031224
	.word	1018935
	.word	16384
	.word	0
	.word	1018937
	.word	16384
	.word	0
	.word	0
	.word	1031225
	.word	16384
	.word	0
	.word	1035350
	.word	16384
	.word	0
	.word	999424
	.word	16384
	.word	0
	.word	1035350
	.word	16384
	.word	0
	.word	999424
	.word	1035374
	.word	0
	.word	0
	.word	916868
	.word	1031254
	.word	1035374
	.word	17408
	.word	916868
	.word	1031228
	.word	17408
	.word	916868
	.word	1031228
	.word	17408
	.word	916868
	.word	1031228
	.word	17408
	.word	916868
	.word	1031228
	.word	17408
	.word	916868
	.word	1031228
	.word	17408
	.word	916868
	.word	1031228
	.word	17408
	.word	916868
	.word	1031228
	.word	17408
	.word	916868
	.word	1031228
	.word	17408
	.word	916868
	.word	1031228
	.word	17408
	.word	916868
	.word	1031228
	.word	1018966
	.word	17408
	.word	0
	.word	1018940
	.word	17408
	.word	0
	.word	1018940
	.word	17408
	.word	0
	.word	1035374
	.word	0
	.word	17423
	.word	916868
	.word	1031254
	.word	0
	.word	16384
	.word	99972
	.word	590912
	.word	916544
	.word	1031229
	.word	1018941
	.word	0
	.word	0
	.word	21506
	.word	300368
	.word	99412
	.word	0
	.word	1035359
	.word	0
	.word	1031254
	.word	0
	.word	0
	.word	21506
	.word	300368
	.word	99412
	.word	0
	.word	1035359
	.word	0
	.word	1031254
	.word	16384
	.word	18432
	.word	100492
	.word	1035350
	.word	16384
	.word	0
	.word	0
	.word	0
	.word	1031232
	.word	16384
	.word	0
	.word	1035350
	.word	0
	.word	0
	.word	16384
	.word	0
	.word	1035350
	.word	0
	.word	1027136
	.word	16384
	.word	0
	.word	1035350
	.word	0
	.word	0
	.word	16384
	.word	0
	.word	1035350
	.word	0
	.word	0
	.word	98348
	.word	99436
	.word	294916
	.word	0
	.word	0
	.word	1031233
	.word	0
	.word	1031233
	.word	16384
	.word	294916
	.word	0
	.word	16384
	.word	99436
	.word	294916
	.word	17408
	.word	901124
	.word	0
	.word	18432
	.word	49160
	.word	589828
	.word	0
	.word	16384
	.word	916544
	.word	1031234
	.word	1035374
	.word	0
	.word	916868
	.word	1031254
	.word	16384
	.word	916544
	.word	1031235
	.word	16384
	.word	18432
	.word	100492
	.word	1035350
	.word	0
	.word	18432
	.word	50248
	.word	605188
	.word	1031235
	.word	1035376
	.word	0
	.word	18432
	.word	50308
	.word	605188
	.word	1031235
	.word	1035376
	.word	0
	.word	18432
	.word	50308
	.word	605188
	.word	1031235
	.word	1035376
	.word	0
	.word	1031236
	.word	1035374
	.word	17408
	.word	916868
	.word	1031254
	.word	16384
	.word	916484
	.word	1031236
	.word	16384
	.word	0
	.word	1035350
	.word	0
	.word	16384
	.word	0
	.word	1035350
	.word	0
	.word	0
	.word	0
	.word	0
	.word	16384
	.word	916544
	.word	1031238
	.word	16384
	.word	0
	.word	1035350
	.word	0
	.word	0
	.word	16384
	.word	0
	.word	1035350
	.word	0
	.word	1031238
	.word	1035374
	.word	0
	.word	16384
	.word	916484
	.word	1031238
	.word	1035374
	.word	0
	.word	16384
	.word	916484
	.word	1031238
	.word	16386
	.word	0
	.word	16384
	.word	916484
	.word	1031239
	.word	16386
	.word	0
	.word	16384
	.word	916484
	.word	1031239
	.word	1018953
	.word	16384
	.word	0
	.word	1035350
	.word	0
	.word	0
	.word	16384
	.word	0
	.word	1035350
	.word	0
	.word	1031241
	.word	28672
	.word	16384
	.word	108548
	.word	1035374
	.word	17408
	.word	916868
	.word	1031254
	.word	17408
	.word	916868
	.word	1031241
	.word	17408
	.word	916868
	.word	1031241
	.word	18432
	.word	916872
	.word	1031241
	.word	17408
	.word	916868
	.word	1031241
	.word	1018953
	.word	1035376
	.word	1018953
	.word	1035376
	.word	983112
	.word	16384
	.word	902148
	.word	1031243
	.word	16384
	.word	0
	.word	1035350
	.word	0
	.word	0
	.word	16384
	.word	0
	.word	1035350
	.word	0
	.word	1031243
	.word	28672
	.word	16384
	.word	108548
	.word	1035374
	.word	17408
	.word	916868
	.word	1031254
	.word	17408
	.word	916868
	.word	1031243
	.word	17408
	.word	916868
	.word	1031243
	.word	18432
	.word	916872
	.word	1031243
	.word	17408
	.word	916868
	.word	1031243
	.word	1018955
	.word	1035376
	.word	1018955
	.word	1035376
	.word	983114
	.word	16384
	.word	18432
	.word	901124
	.word	1031244
	.word	1031244
	.word	1018956
	.word	0
	.word	916612
	.word	1031244
	.word	130284
	.word	1031244
	.word	1018956
	.word	1018961
	.word	1035374
	.word	0
	.word	1027148
	.word	1035374
	.word	28672
	.word	16384
	.word	108548
	.word	16384
	.word	0
	.word	1035350
	.word	0
	.word	0
	.word	16384
	.word	0
	.word	1035350
	.word	0
	.word	1027149
	.word	1035372
	.word	1035372
	.word	0
	.word	1027150
	.word	16384
	.word	0
	.word	1035350
	.word	0
	.word	0
	.word	16384
	.word	0
	.word	1035350
	.word	0
	.word	1027150
	.word	1035372
	.word	1035372
	.word	1035372
	.word	1035372
	.word	983116
	.word	16384
	.word	0
	.word	916484
	.word	1031249
	.word	916652
	.word	1031249
	.word	28672
	.word	16384
	.word	108548
	.word	16384
	.word	0
	.word	1035350
	.word	0
	.word	0
	.word	16384
	.word	0
	.word	1035350
	.word	0
	.word	1027152
	.word	1035372
	.word	1035372
	.word	0
	.word	1027153
	.word	16384
	.word	0
	.word	1035350
	.word	0
	.word	0
	.word	16384
	.word	0
	.word	1035350
	.word	0
	.word	1027153
	.word	1035372
	.word	1035372
	.word	1035372
	.word	1035372
	.word	983119
	.word	0
	.word	1027155
	.word	16384
	.word	916544
	.word	1031249
	.word	16384
	.word	0
	.word	1035350
	.word	1018963
	.word	16384
	.word	0
	.word	1035350
	.word	0
	.word	0
	.word	16384
	.word	0
	.word	1035350
	.word	0
	.word	1027155
	.word	1035374
	.word	0
	.word	17408
	.word	916868
	.word	1031251
	.word	17408
	.word	916868
	.word	1031251
	.word	17408
	.word	916868
	.word	1031251
	.word	17408
	.word	916868
	.word	1031251
	.word	17408
	.word	916868
	.word	1031251
	.word	1018963
	.word	1035374
	.word	1018963
	.word	1035374
	.word	1035374
	.word	17408
	.word	916484
	.word	1031250
	.word	0
	.word	1027156
	.word	17408
	.word	916484
	.word	1031252
	.word	18432
	.word	916488
	.word	1031252
	.word	1018964
	.word	1035374
	.word	0
	.word	17408
	.word	916868
	.word	1031254
	.word	1035372
	.word	0
	.word	0
	.word	1031253
	.word	1035374
	.word	17408
	.word	916868
	.word	1031254
	.word	0
	.word	916872
	.word	1031253
	.word	1035372
	.word	1035372
	.word	0
	.word	1031254
	.word	16384
	.word	0
	.word	1035350
	.word	16384
	.word	0
	.word	999424
	.word	16384
	.word	0
	.word	1035350
	.word	16384
	.word	0
	.word	999424
	.word	19456
	.word	0
	.word	66176
	.word	67204
	.word	68232
	.word	68232
	.word	606212
	.word	606216
	.word	606216
	.word	0
	.word	1013760
	.word	16384
	.word	99972
	.word	99972
	.word	589888
	.word	916608
	.word	1031255
	.word	1018967
	.word	16384
	.word	0
	.word	999424
	.word	22528
	.word	0
	.word	0
	.word	0
	.word	916632
	.word	1031256
	.word	594960
	.word	0
	.word	0
	.word	0
	.word	594964
	.word	71316
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1018969
	.word	595088
	.word	0
	.word	593936
	.word	906516
	.word	0
	.word	0
	.word	594964
	.word	71316
	.word	0
	.word	0
	.word	0
	.word	0
	.word	595092
	.word	71316
	.word	0
	.word	0
	.word	16384
	.word	0
	.word	999424
	.word	22528
	.word	0
	.word	16384
	.word	0
	.word	1035350
	.word	16384
	.word	0
	.word	1035350
	.word	17409
	.word	591876
	.word	98944
	.word	592900
	.word	0
	.word	16384
	.word	0
	.word	1035350
	.word	999424
	.word	17408
	.word	916484
	.word	1031260
	.word	0
	.word	21504
	.word	0
	.word	300368
	.word	99652
	.word	0
	.word	1035359
	.word	0
	.word	0
	.word	67204
	.word	67204
	.word	67204
	.word	606212
	.word	0
	.word	0
	.word	21504
	.word	0
	.word	300368
	.word	98624
	.word	0
	.word	1035359
	.word	1018975
	.word	0
	.word	21504
	.word	0
	.word	905516
	.word	300368
	.word	99652
	.word	0
	.word	1035359
	.word	0
	.word	0
	.word	0
	.word	99392
	.word	0
	.word	0
	.word	0
	.word	99392
	.word	916552
	.word	1031261
	.word	1018974
	.word	0
	.word	0
	.word	902208
	.word	902276
	.word	99460
	.word	0
	.word	0
	.word	0
	.word	67204
	.word	67204
	.word	67204
	.word	606212
	.word	0
	.word	0
	.word	21504
	.word	0
	.word	905516
	.word	300368
	.word	98624
	.word	0
	.word	1035359
	.word	0
	.word	16384
	.word	98560
	.word	0
	.word	999424
	.word	20480
	.word	0
	.word	20480
	.word	21504
	.word	22528
	.word	916688
	.word	1031264
	.word	916692
	.word	1031264
	.word	916696
	.word	1031264
	.word	1018976
	.word	16384
	.word	0
	.word	1013760
	.word	1018976
	.word	16384
	.word	0
	.word	1013760
	.word	1018976
	.word	16384
	.word	0
	.word	1013760
	.word	999424
	.word	22528
	.word	0
	.word	0
	.word	108184
	.word	1031265
	.word	19456
	.word	104664
	.word	596248
	.word	108184
	.word	0
	.word	17408
	.word	916484
	.word	1031270
	.word	0
	.word	0
	.word	916544
	.word	1031270
	.word	104088
	.word	0
	.word	903232
	.word	68232
	.word	903316
	.word	1027172
	.word	0
	.word	0
	.word	0
	.word	592136
	.word	0
	.word	0
	.word	0
	.word	594176
	.word	905480
	.word	595264
	.word	102676
	.word	70288
	.word	102680
	.word	595220
	.word	104084
	.word	0
	.word	0
	.word	595220
	.word	0
	.word	19456
	.word	0
	.word	0
	.word	0
	.word	593040
	.word	69260
	.word	0
	.word	0
	.word	904264
	.word	69260
	.word	0
	.word	1018982
	.word	0
	.word	0
	.word	592136
	.word	0
	.word	0
	.word	0
	.word	903232
	.word	68232
	.word	903560
	.word	108168
	.word	0
	.word	589828
	.word	66176
	.word	100480
	.word	0
	.word	593044
	.word	102028
	.word	0
	.word	0
	.word	593044
	.word	0
	.word	0
	.word	0
	.word	904256
	.word	69260
	.word	904420
	.word	0
	.word	19456
	.word	0
	.word	0
	.word	0
	.word	1018988
	.word	0
	.word	0
	.word	1018987
	.word	0
	.word	0
	.word	98308
	.word	916608
	.word	1031275
	.word	104088
	.word	0
	.word	903232
	.word	68232
	.word	903316
	.word	1027177
	.word	0
	.word	0
	.word	0
	.word	592136
	.word	0
	.word	0
	.word	0
	.word	594176
	.word	905480
	.word	595264
	.word	102676
	.word	70288
	.word	102680
	.word	595220
	.word	104084
	.word	0
	.word	0
	.word	595220
	.word	0
	.word	19456
	.word	0
	.word	0
	.word	0
	.word	593040
	.word	69260
	.word	0
	.word	0
	.word	67204
	.word	904264
	.word	0
	.word	1018987
	.word	0
	.word	0
	.word	592136
	.word	0
	.word	0
	.word	0
	.word	903232
	.word	68232
	.word	903560
	.word	108168
	.word	0
	.word	589828
	.word	66176
	.word	100480
	.word	0
	.word	593044
	.word	102028
	.word	0
	.word	0
	.word	593044
	.word	0
	.word	0
	.word	0
	.word	0
	.word	903300
	.word	904200
	.word	69260
	.word	904420
	.word	0
	.word	19456
	.word	0
	.word	0
	.word	0
	.word	1018988
	.word	0
	.word	0
	.word	67204
	.word	1018987
	.word	0
	.word	592912
	.word	0
	.word	0
	.word	592912
	.word	69260
	.word	101592
	.word	595152
	.word	0
	.word	902244
	.word	0
	.word	0
	.word	595152
	.word	104084
	.word	0
	.word	19456
	.word	0
	.word	0
	.word	0
	.word	999424
	.word	19456
	.word	17408
	.word	66176
	.word	67204
	.word	606212
	.word	606216
	.word	0
	.word	1013760
	.word	16384
	.word	0
	.word	590936
	.word	596184
	.word	916544
	.word	1031277
	.word	612440
	.word	16384
	.word	99972
	.word	99972
	.word	589888
	.word	916608
	.word	1031278
	.word	16384
	.word	99972
	.word	99972
	.word	589888
	.word	916608
	.word	1031278
	.word	1018990
	.word	16384
	.word	0
	.word	999424
	.word	19456
	.word	17408
	.word	66176
	.word	67204
	.word	606212
	.word	606216
	.word	0
	.word	1013760
	.word	0
	.word	0
	.word	595992
	.word	16384
	.word	99972
	.word	99972
	.word	589888
	.word	916608
	.word	1031280
	.word	16384
	.word	99972
	.word	99972
	.word	589888
	.word	916608
	.word	1031280
	.word	1018992
	.word	16384
	.word	0
	.word	999424
	.word	21504
	.word	22528
	.word	19456
	.word	16384
	.word	0
	.word	66176
	.word	67204
	.word	68232
	.word	68232
	.word	606212
	.word	606216
	.word	606216
	.word	0
	.word	1013760
	.word	0
	.word	113280
	.word	0
	.word	102660
	.word	916544
	.word	1031282
	.word	19456
	.word	16384
	.word	0
	.word	66176
	.word	67204
	.word	68232
	.word	68232
	.word	606212
	.word	606216
	.word	606216
	.word	0
	.word	1013760
	.word	0
	.word	104836
	.word	916872
	.word	1031280
	.word	104080
	.word	916804
	.word	1031285
	.word	70288
	.word	102660
	.word	295128
	.word	905472
	.word	104080
	.word	916628
	.word	1031284
	.word	0
	.word	905476
	.word	19456
	.word	16384
	.word	0
	.word	66176
	.word	67204
	.word	68232
	.word	68232
	.word	606212
	.word	606216
	.word	606216
	.word	0
	.word	1013760
	.word	1018995
	.word	19456
	.word	16384
	.word	101008
	.word	66176
	.word	67204
	.word	68232
	.word	68232
	.word	606212
	.word	606216
	.word	606216
	.word	0
	.word	1013760
	.word	1018997
	.word	19456
	.word	16384
	.word	299224
	.word	903504
	.word	66176
	.word	67204
	.word	68232
	.word	68232
	.word	606212
	.word	606216
	.word	606216
	.word	0
	.word	1013760
	.word	16384
	.word	99972
	.word	99972
	.word	589888
	.word	916608
	.word	1031286
	.word	1018998
	.word	16384
	.word	0
	.word	999424
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	65537
	.word	7208960
	.word	513
	.word	1537
	.word	319365736
	.word	319365736
	.word	9437306
	.word	5046372
	.word	0
	.word	0
	.word	1
	.word	131
	.word	16
	.word	2
	.word	24
	.word	256
	.word	263
	.word	3
	.word	351
	.word	4
	.word	64
	.word	127
	.word	262143
	.word	1048575
	.word	4194303
	.word	2147483647
	.word	-2147483648
	.word	-16
	.word	15
	.word	-128
	.word	8192
	.word	1048576
	.word	96000
	.word	-8
	.word	-1
	.word	262144
	.word	-524288
	.word	65280000
	.word	196612
	.word	131074
	.word	65537
	.word	65537
	.word	0
	.word	0
	.word	0
	.word	0
	.word	8
	.word	8160
	.word	255
	.word	0
	.word	1
	.word	5
	.word	8
	.word	7
	.word	64
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.type	g_hex_flag, %object
	.size	g_hex_flag, 4
g_hex_flag:
	.word	1
	.type	g_pScdDrvParamBase, %object
	.size	g_pScdDrvParamBase, 4
g_pScdDrvParamBase:
	.word	g_ScdDrvParam
	.type	g_pSmIISBase, %object
	.size	g_pSmIISBase, 4
g_pSmIISBase:
	.word	s_SmIIS
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"------------------ s_SmIIS[%d].SmInstArray --------"
	.ascii	"------------\012\000"
	.space	3
.LC1:
	.ascii	"%-25s :%d\012\000"
	.space	1
.LC2:
	.ascii	"Mode\000"
	.space	3
.LC3:
	.ascii	"Priority\000"
	.space	3
.LC4:
	.ascii	"VidStd\000"
	.space	1
.LC5:
	.ascii	"%-25s :0x%x\012\000"
	.space	3
.LC6:
	.ascii	"BufPhyAddr\000"
	.space	1
.LC7:
	.ascii	"pBufVirAddr\000"
.LC8:
	.ascii	"BufSize\000"
.LC9:
	.ascii	"RegPhyBaseAddr\000"
	.space	1
.LC10:
	.ascii	"SmPushRaw.PushRawNum\000"
	.space	3
.LC11:
	.ascii	"SmPushRaw.PushRawTotalLen\000"
	.space	2
.LC12:
	.ascii	"DownMsgPhyAddr\000"
	.space	1
.LC13:
	.ascii	"DownMsgSize\000"
.LC14:
	.ascii	"UpMsgPhyAddr\000"
	.space	3
.LC15:
	.ascii	"UpMsgNum\000"
	.space	3
.LC16:
	.ascii	"UpMsgSize\000"
	.space	2
.LC17:
	.ascii	"seg BufPhyAddr\000"
	.space	1
.LC18:
	.ascii	"seg BufSize\000"
.LC19:
	.ascii	"seg BufUsed\000"
.LC20:
	.ascii	"seg BufItemNum\000"
	.space	1
.LC21:
	.ascii	"raw StreamHold\000"
	.space	1
.LC22:
	.ascii	"raw StreamPacketNum\000"
.LC23:
	.ascii	"filter ProtocolType\000"
.LC24:
	.ascii	"filter ModeFlag\000"
.LC25:
	.ascii	"filter LastH263Num\000"
	.space	1
.LC26:
	.ascii	"filter SegBufPhyAddr\000"
	.space	3
.LC27:
	.ascii	"filter SegBufSize\000"
	.space	2
.LC28:
	.ascii	"filter SegBufRollAddr\000"
	.space	2
.LC29:
	.ascii	"filter pScdUpMsg\000"
	.space	3
.LC30:
	.ascii	"filter SegNum\000"
	.space	2
.LC31:
	.ascii	"BlockTimeInMs\000"
	.space	2
.LC32:
	.ascii	"LastBlockTime\000"
	.space	2
.LC33:
	.ascii	"%-25s :%lld\012\000"
	.space	3
.LC34:
	.ascii	"LastPts\000"
.LC35:
	.ascii	"ThisInstID\000"
	.space	1
.LC36:
	.ascii	"SCDState\000"
	.space	3
.LC37:
	.ascii	"\012raw packets Head : %d, Histroy : %d\012\000"
	.space	2
.LC38:
	.ascii	"\012raw packets length is(first packet %d bytes use"
	.ascii	"d):\012\000"
	.space	3
.LC39:
	.ascii	"\012\000"
	.space	2
.LC40:
	.ascii	"%5d \000"
	.space	3
.LC41:
	.ascii	"***Print Scd[%d] State Reg\012\000"
.LC42:
	.ascii	"Scdover = %d \012\000"
	.space	1
.LC43:
	.ascii	"ScdInt = %d \012\000"
	.space	2
.LC44:
	.ascii	"ShortScdNum = %d \012\000"
	.space	1
.LC45:
	.ascii	"ScdNum = %d \012\000"
	.space	2
.LC46:
	.ascii	"ScdRollAddr = %0x \012\000"
.LC47:
	.ascii	"SrcEaten = %d \012\000"
.LC48:
	.ascii	"***Print SCD[%d] Down Msg Now\012\000"
	.space	1
.LC49:
	.ascii	"DownMsgVirAddr = %x   \012\000"
.LC50:
	.ascii	"DownMsgPhyAddr = %x   \012\000"
.LC51:
	.ascii	"DownMsg[%d] = %x   \000"
.LC52:
	.ascii	"Error:now DspState[0]= %d,[1]= %d not except!!\012\000"
.LC53:
	.ascii	"line; %d, Flag = %d, pSmInstArray = %p\012\000"
.LC54:
	.ascii	"line: %d, SmID = %d is not expected!\012\000"
	.space	2
.LC55:
	.ascii	"line: %d, SmID = %d, ScdId = %d is not expected!\012"
	.ascii	"\000"
	.space	2
.LC56:
	.ascii	"VDMHAL_NULL_FUN_PRINT,L%d\012\000"
	.space	1
.LC57:
	.ascii	"-------- forece release seg[%d] -----------\012\000"
	.space	3
.LC58:
	.ascii	"0x%02x,\000"
.LC59:
	.ascii	"Release SegPacket.PhyAddr=0x%x,LenByte=%d,IsLastSeg"
	.ascii	"=%d StreamID=%d\012\000"
.LC60:
	.ascii	"Array out of bound in function %s\012\000"
	.space	1
.LC61:
	.ascii	"line: %d Get SmID fail!\000"
.LC62:
	.ascii	"DelRaw err PacketNum=%d,DelNum=%d\012\000"
	.space	1
.LC63:
	.ascii	"Release RawPhyAddr=0x%x,Len=%d\012\000"
.LC64:
	.ascii	"line: %d pSmInstArray is NULL!\012\000"
.LC65:
	.ascii	"SetMaxSegSize get eCapLevel failed!\012\000"
	.space	3
.LC66:
	.ascii	"SetMaxSegSize get ChanWidth/ChanHeight failed!\012\000"
.LC67:
	.ascii	"********** SmID [%d] SegState begin **********\012\000"
.LC68:
	.ascii	"SegHead=%d\012\000"
.LC69:
	.ascii	"SegTail=%d\012\000"
.LC70:
	.ascii	"SegCurrent=%d\012\000"
	.space	1
.LC71:
	.ascii	"SegBufPhyAddr=%p\012\000"
	.space	2
.LC72:
	.ascii	"SegBufVirAddr=%p\012\000"
	.space	2
.LC73:
	.ascii	"SegBufSize=%d\012\000"
	.space	1
.LC74:
	.ascii	"SegBufReadAddr=%p\012\000"
	.space	1
.LC75:
	.ascii	"SegBufWriteAddr=%pd\012\000"
	.space	3
.LC76:
	.ascii	"%s %d FMW_OK !=  GetSegStreamNum\012\000"
	.space	2
.LC77:
	.ascii	"********** SmID [%d] SegState end   **********\012\000"
.LC78:
	.ascii	"SegPhyAddr=0x%x\012\000"
	.space	3
.LC79:
	.ascii	"SegVirAddr=0x%x\012\000"
	.space	3
.LC80:
	.ascii	"SegLength=%d\012\000"
	.space	2
.LC81:
	.ascii	"SegStreamID=%d\012\000"
.LC82:
	.ascii	"SegState=%d\012\000"
	.space	3
.LC83:
	.ascii	"SegIsLastSeg=%d\012\000"
	.space	3
.LC84:
	.ascii	"SegPts=%lld\012\000"
	.space	3
.LC85:
	.ascii	"********** SmID [%d] RawState begin **********\012\000"
.LC86:
	.ascii	"RawHead=%d\012\000"
.LC87:
	.ascii	"RawTail=%d\012\000"
.LC88:
	.ascii	"RawHistory=%d\012\000"
	.space	1
.LC89:
	.ascii	"RawFirstPacketOffset=%d\012\000"
	.space	3
.LC90:
	.ascii	"CurShowIndex=%d\012\000"
	.space	3
.LC91:
	.ascii	"%s %d FMW_OK !=  GetRawStreamNum!!\012\000"
.LC92:
	.ascii	"********** SmID [%d] RawState end   **********\012\000"
.LC93:
	.ascii	"RawPhyAddr=0x%x\012\000"
	.space	3
.LC94:
	.ascii	"RawVirAddr=0x%x\012\000"
	.space	3
.LC95:
	.ascii	"RawLength=%d\012\000"
	.space	2
.LC96:
	.ascii	"RawPts=%ld\012\000"
.LC97:
	.ascii	"***Print Scd[%d] Vtrl Reg Now\012\000"
	.space	1
.LC98:
	.ascii	"DownMsgPhyAddr = %x\012\000"
	.space	3
.LC99:
	.ascii	"UpMsgPhyAddr = %x\012\000"
	.space	1
.LC100:
	.ascii	"UpLen = %x\012\000"
.LC101:
	.ascii	"BufferFirst = %x\012\000"
	.space	2
.LC102:
	.ascii	"BufferLast = %x\012\000"
	.space	3
.LC103:
	.ascii	"BufferIni = %x\012\000"
.LC104:
	.ascii	"ScdProtocol = %x\012\000"
	.space	2
.LC105:
	.ascii	"ScdStart = %x\012\000"
	.space	1
.LC106:
	.ascii	"%s %d FMW_OK !=  GetSegStreamNum!!\012\000"
.LC107:
	.ascii	"scd time out: t_start,t_now,t_wait = %d,%d,%d\012\000"
	.space	1
.LC108:
	.ascii	"ResetSCD ERROR!!!\012\000"
	.space	1
.LC109:
	.ascii	"%s,%d,SCD(ID = %d) SCDState = %d\012\000"
	.space	2
.LC110:
	.ascii	"%s,%d,SCD(ID = %d) return Idle!\012\000"
	.space	3
.LC111:
	.ascii	"SCD[%d] Time Out(%d ms), Reset SCD!\012\000"
	.space	3
.LC112:
	.ascii	"%s,%d,SCD(ID = %d) really busy!\012\000"
	.space	3
.LC113:
	.ascii	"%s: pRawPacket = NULL!\012\000"
.LC114:
	.ascii	"%s: unkown standard type = %d!\012\000"
.LC115:
	.ascii	"%s: FlagLen(%d) > RawPacketLength(%d)\012\000"
	.space	1
.LC116:
	.ascii	"Read_seg SegPacket.PhyAddr=0x%x, LenByte=%d, IsLast"
	.ascii	"Seg=%d\012\000"
	.space	1
.LC117:
	.ascii	"Chan %d has been destroyed or the function pointer "
	.ascii	"-- ReleaseRawStreamData pStreamIntf is NULL!\000"
.LC118:
	.ascii	"line: %d s_SmIIS[%d].pSmInstArray is NULL\012\000"
	.space	1
.LC119:
	.ascii	"No space for raw move, total:%d+%d > max:%d!\012\000"
	.space	2
.LC120:
	.ascii	"SmID = %d is not expected!\012\000"
.LC121:
	.ascii	"RawStreamNum=%d\012\000"
	.space	3
.LC122:
	.ascii	"SegStreamNum=%d\012\000"
	.space	3
.LC123:
	.ascii	"SegStreamSize=%d\012\000"
	.space	2
.LC124:
	.ascii	"SM_CfgBuf Err! ret =%d\012\000"
.LC125:
	.ascii	"RawStreamSize=%d\012\000"
	.space	2
.LC126:
	.ascii	"Raw packet(VFMW_RAW YUV) TOO BIG(maybe caused by w/"
	.ascii	"h... err)! can't copy to seg!\012\000"
	.space	2
.LC127:
	.ascii	"line: %d, delet raw failed!\012\000"
	.space	3
.LC128:
	.ascii	"VFMW_RAW YUV disp w/h err)! discard raw packet!\012"
	.ascii	"\000"
	.space	3
.LC129:
	.ascii	"SM_DoNextInstance parm 1:scdId(%d) Error!\012\000"
	.space	1
.LC130:
	.ascii	"VFMW_RAW SM_CopyYuvToDnr fail\012\000"
	.space	1
.LC131:
	.ascii	"long time(%d ms) not release stream seg, release an"
	.ascii	"yway!\012\000"
	.space	2
.LC132:
	.ascii	"%s,%d, active scd Success!\012\000"
.LC133:
	.ascii	"line: %d, SmID = %d, pSmCfg = %p is not expected!\012"
	.ascii	"\000"
	.space	1
.LC134:
	.ascii	"line: %d, pSmInstArray is NULL!\012\000"
	.space	3
.LC135:
	.ascii	"%s: RawPacket Length %d <= 0\012\000"
	.space	2
.LC136:
	.ascii	"%s(): Std(%d) buffer has no enough space,(act:%d, h"
	.ascii	"eader_buf:%d)\012\000"
	.space	2
.LC137:
	.ascii	"%s(): Std(%d) buffer has no enough space,(act:%d, s"
	.ascii	"tr_buf:%d)\012\000"
	.space	1
.LC138:
	.ascii	"%s(): Std(%d) buffer has no enough space,(act:%d, s"
	.ascii	"tr_buf:%d, header_buf:%d)\012\000"
	.space	2
.LC139:
	.ascii	"%s(): Std(%d) buffer has no enough space, (act:%d, "
	.ascii	"str_buf:%d)\012\000"
.LC140:
	.ascii	"Chan %d has been destroyed or the function pointer "
	.ascii	"-- ReadRawStreamData pStreamIntf is NULL!\000"
	.space	3
.LC141:
	.ascii	"line: %d s_SmIIS.pSmInstArray[%d] is NULL\012\000"
	.space	1
.LC142:
	.ascii	"Chan %d FillEosRawStream failed!\012\000"
	.space	2
.LC143:
	.ascii	"Chan %d FillExtraData failed!\012\000"
	.space	1
.LC144:
	.ascii	"Release this packet failed!\012\000"
	.space	3
.LC145:
	.ascii	"raw_pts: %lld\012\000"
	.space	1
.LC146:
	.ascii	"Get RawPhyAddr=0x%x,Len=%d\012\000"
.LC147:
	.ascii	"!!!push raw err!!!\012\000"
.LC148:
	.ascii	"DisContinueRawPacket found! %d ---> %d\012\000"
.LC149:
	.ascii	"Chan%d raw full\012\000"
	.space	3
.LC150:
	.ascii	"%s,%d, prepare to check SCD(%d) !(MAX_SCD_NUM = %d)"
	.ascii	"\012\000"
	.space	3
.LC151:
	.ascii	"%s,%d,find idle SCD(ID = %d)\012\000"
	.space	2
.LC152:
	.ascii	"%s,%d,SCD(ID = %d) return BUSY!!\012\000"
	.space	2
.LC153:
	.ascii	"RawNum %lld <= RawNumInVfmw %lld\012\000"
	.space	2
.LC154:
	.ascii	"***Print Up Msg Now\012\000"
	.space	3
.LC155:
	.ascii	"ScdUpMsg[%d] = 0x%x\012\000"
	.space	3
.LC156:
	.ascii	"Raw packet TOO BIG! can't copy to seg! Len: %#x\012"
	.ascii	"\000"
	.space	3
.LC157:
	.ascii	"copy raw to seg fail\012\000"
	.space	2
.LC158:
	.ascii	"Fatal: get g_hex_base_addr(0x%x) vir addr failed!\012"
	.ascii	"\000"
	.space	1
.LC159:
	.ascii	"Warn: eVidStd = %d have not DSP vfmw bin file!!\012"
	.ascii	"\000"
	.space	3
.LC160:
	.ascii	"line: %d, p = NULL is not expected value!\012\000"
	.space	1
.LC161:
	.ascii	"ScdId is wrong! %s error\012\000"
	.space	2
.LC162:
	.ascii	"%s,line: %d\012\000"
	.space	3
.LC163:
	.ascii	"%s: pScdDrvParam->ScdDrvMem.pDvmMemVirAddr = NULL\012"
	.ascii	"\000"
	.space	1
.LC164:
	.ascii	"%s: pScdDrvParam->ScdDrvMem.pDspSedTopMemVirAddr = "
	.ascii	"NULL\012\000"
	.space	3
.LC165:
	.ascii	"%s: pScdDrvParam->ScdDrvMem.pDspCaMnMemVirAddr = NU"
	.ascii	"LL\012\000"
	.space	1
.LC166:
	.ascii	"%s: g_hex_base_vir_addr = NULL\012\000"
.LC167:
	.ascii	"line:%d ReadScdSegNum = %d, FilterScdSegNum = 0 rel"
	.ascii	"ease raw packet anyway!\012\000"
.LC168:
	.ascii	"Error! (PushRawTotalLen - SrcEaten) > SM_RAW_DISCAR"
	.ascii	"D_SIZE, packet discard...\012\000"
	.space	2
.LC169:
	.ascii	"Insert err Scd SegPacket; line %d\012\000"
	.space	1
.LC170:
	.ascii	"RawLen = %d, Pts = %ld, \012\000"
	.space	2
.LC171:
	.ascii	"Scd SegPacket.PhyAddr=0x%x,LenByte=%d,IsLastSeg=%d\012"
	.ascii	"\000"
.LC172:
	.ascii	"line %d CheckSeg err\012\000"
	.space	2
.LC173:
	.ascii	"line %d SegFreeBufLen=%d,SrcEaten=%d\000"
	.space	3
.LC174:
	.ascii	"line %d Scd SegPacket.PhyAddr=0x%x,LenByte=%d,IsLas"
	.ascii	"tSeg=%d\012\000"
.LC175:
	.ascii	"Insert err Scd SegPacket.PhyAddr=0x%x,LenByte=%d,Is"
	.ascii	"LastSeg=%d\012\000"
	.space	1
.LC176:
	.ascii	"RawLen = %d, Pts =  %lld, \012\000"
.LC177:
	.ascii	"CheckSeg err\012\000"
	.space	2
.LC178:
	.ascii	"SegFreeBufLen=%d,SrcEaten=%d\000"
	.space	3
.LC179:
	.ascii	"%s %d FMW_OK != GetSegStreamNum!!\012\000"
	.space	1
.LC180:
	.ascii	"Insert 2 err Scd SegPacket.PhyAddr=0x%x,LenByte=%d,"
	.ascii	"IsLastSeg=%d\012\000"
	.space	3
.LC181:
	.ascii	"ReadScdSegNum = %d, FilterScdSegNum = 0 release raw"
	.ascii	" packet anyway!\012\000"
.LC182:
	.ascii	"%s: ScdId(%d) > %d\012\000"
.LC183:
	.ascii	"Move raw data failed, force to reset scd.\012\000"
	.space	1
.LC184:
	.ascii	"pstDSPMem->PhyAddr = 0 is not right address\012\000"
	.space	3
.LC185:
	.ascii	"VFMW_DspCtxMem\000"
	.space	1
.LC186:
	.ascii	"%s Alloc mem for DSP (SPS PPS) failed!\012\000"
.LC187:
	.ascii	"%s pDspSpsMsgMemVirAddr is NULL!\012\000"
	.space	2
.LC188:
	.ascii	"%s pDspPpsMsgMemVirAddr is NULL!\012\000"
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	s_SmIIS, %object
	.size	s_SmIIS, 768
s_SmIIS:
	.space	768
	.type	s_eScdDrvSleepStage, %object
	.size	s_eScdDrvSleepStage, 4
s_eScdDrvSleepStage:
	.space	4
	.type	g_ScdDrvParam, %object
	.size	g_ScdDrvParam, 96
g_ScdDrvParam:
	.space	96
	.type	s_RegPhyBaseAddr, %object
	.size	s_RegPhyBaseAddr, 4
s_RegPhyBaseAddr:
	.space	4
	.type	last_rec_pos_time.53040, %object
	.size	last_rec_pos_time.53040, 64
last_rec_pos_time.53040:
	.space	64
	.type	last_rec_pos_time.52377, %object
	.size	last_rec_pos_time.52377, 64
last_rec_pos_time.52377:
	.space	64
	.type	g_hex_base_addr, %object
	.size	g_hex_base_addr, 4
g_hex_base_addr:
	.space	4
	.type	s_RegPhyBaseAddr_1, %object
	.size	s_RegPhyBaseAddr_1, 4
s_RegPhyBaseAddr_1:
	.space	4
	.type	g_hex_base_vir_addr, %object
	.size	g_hex_base_vir_addr, 4
g_hex_base_vir_addr:
	.space	4
	.type	g_hex_len, %object
	.size	g_hex_len, 4
g_hex_len:
	.space	4
	.type	LastEventTime.51301, %object
	.size	LastEventTime.51301, 4
LastEventTime.51301:
	.space	4
	.type	s_SCDInISR, %object
	.size	s_SCDInISR, 4
s_SCDInISR:
	.space	4
	.type	last_rec_pos_time.53191, %object
	.size	last_rec_pos_time.53191, 64
last_rec_pos_time.53191:
	.space	64
	.type	ForceRelease, %object
	.size	ForceRelease, 4
ForceRelease:
	.space	4
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
