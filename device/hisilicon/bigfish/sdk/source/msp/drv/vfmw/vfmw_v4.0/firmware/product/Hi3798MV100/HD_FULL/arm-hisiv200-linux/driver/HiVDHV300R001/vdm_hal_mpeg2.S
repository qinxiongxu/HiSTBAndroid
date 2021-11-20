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
	.file	"vdm_hal_mpeg2.c"
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
@ -DKBUILD_BASENAME=KBUILD_STR(vdm_hal_mpeg2)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD
@ drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV300R001/.vdm_hal_mpeg2.o.d
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV300R001/vdm_hal_mpeg2.c
@ -mlittle-endian -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -marm -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV300R001/vdm_hal_mpeg2.o
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
	.global	MP2HAL_V300R001_InitHal
	.type	MP2HAL_V300R001_InitHal, %function
MP2HAL_V300R001_InitHal:
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
	.size	MP2HAL_V300R001_InitHal, .-MP2HAL_V300R001_InitHal
	.align	2
	.global	MP2HAL_V300R001_MakeReg
	.type	MP2HAL_V300R001_MakeReg, %function
MP2HAL_V300R001_MakeReg:
	.fnstart
.LFB1531:
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
	ldrh	r5, [r2, #148]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	ldrh	r4, [r2, #152]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	ldr	r3, [r0, #8]	@ <variable>.basic_cfg0, <variable>.basic_cfg0
	mul	ip, r4, r5	@ tmp142, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	ldr	r5, [r3, #0]	@ tmp144,* <variable>.basic_cfg0
	sub	r4, ip, #1	@ tmp143, tmp142,
	bfi	r5, r4, #0, #20	@ tmp144, tmp143,,
	str	r5, [r3, #0]	@ tmp144,* <variable>.basic_cfg0
	ldr	r4, [r0, #8]	@ <variable>.basic_cfg0, <variable>.basic_cfg0
	ldr	ip, [r4, #0]	@ tmp146,* <variable>.basic_cfg0
	orr	r3, ip, #1073741824	@ tmp218, tmp146,
	str	r3, [r4, #0]	@ tmp218,* <variable>.basic_cfg0
	ldr	r3, [r0, #8]	@ <variable>.basic_cfg0, <variable>.basic_cfg0
	mov	r4, #3	@ tmp152,
	ldr	ip, [r3, #0]	@ tmp149,* <variable>.basic_cfg0
	bfc	ip, #31, #1	@ tmp149,,
	str	ip, [r3, #0]	@ tmp149,* <variable>.basic_cfg0
	ldr	r3, [r0, #12]	@ <variable>.basic_cfg1, <variable>.basic_cfg1
	ldr	ip, [r3, #0]	@ tmp151,* <variable>.basic_cfg1
	bfi	ip, r4, #0, #4	@ tmp151, tmp152,,
	str	ip, [r3, #0]	@ tmp151,* <variable>.basic_cfg1
	ldr	r3, [r0, #12]	@ <variable>.basic_cfg1, <variable>.basic_cfg1
	ldr	r4, [r2, #232]	@ <variable>.VahbStride, <variable>.VahbStride
	ldr	ip, [r3, #0]	@ tmp156,* <variable>.basic_cfg1
	mov	r4, r4, lsr #6	@ tmp154, <variable>.VahbStride,
	bfi	ip, r4, #4, #10	@ tmp156, tmp154,,
	str	ip, [r3, #0]	@ tmp156,* <variable>.basic_cfg1
	ldr	r4, [r0, #12]	@ <variable>.basic_cfg1, <variable>.basic_cfg1
	ldr	ip, [r4, #0]	@ tmp158,* <variable>.basic_cfg1
	orr	r3, ip, #16384	@ tmp219, tmp158,
	str	r3, [r4, #0]	@ tmp219,* <variable>.basic_cfg1
	ldr	r3, [r0, #12]	@ <variable>.basic_cfg1, <variable>.basic_cfg1
	mov	r4, #1	@ tmp164,
	ldr	ip, [r3, #0]	@ tmp161,* <variable>.basic_cfg1
	bfc	ip, #15, #1	@ tmp161,,
	str	ip, [r3, #0]	@ tmp161,* <variable>.basic_cfg1
	ldr	r3, [r0, #12]	@ <variable>.basic_cfg1, <variable>.basic_cfg1
	ldr	ip, [r3, #0]	@ tmp163,* <variable>.basic_cfg1
	bfi	ip, r4, #16, #12	@ tmp163, tmp164,,
	str	ip, [r3, #0]	@ tmp163,* <variable>.basic_cfg1
	ldr	r4, [r0, #12]	@ <variable>.basic_cfg1, <variable>.basic_cfg1
	ldr	ip, [r4, #0]	@ tmp166,* <variable>.basic_cfg1
	orr	r3, ip, #536870912	@ tmp220, tmp166,
	str	r3, [r4, #0]	@ tmp220,* <variable>.basic_cfg1
	ldr	r3, [r0, #12]	@ <variable>.basic_cfg1, <variable>.basic_cfg1
	ldr	ip, [r3, #0]	@ tmp169,* <variable>.basic_cfg1
	bfc	ip, #31, #1	@ tmp169,,
	str	ip, [r3, #0]	@ tmp169,* <variable>.basic_cfg1
	ldr	r3, [r0, #12]	@ <variable>.basic_cfg1, <variable>.basic_cfg1
	ldr	r4, [r3, #0]	@ tmp171,* <variable>.basic_cfg1
	bfc	r4, #28, #1	@ tmp171,,
	str	r4, [r3, #0]	@ tmp171,* <variable>.basic_cfg1
	ldr	r4, [r0, #12]	@ <variable>.basic_cfg1, <variable>.basic_cfg1
	ldr	ip, [r4, #0]	@ tmp173,* <variable>.basic_cfg1
	bfc	ip, #30, #1	@ tmp173,,
	str	ip, [r4, #0]	@ tmp173,* <variable>.basic_cfg1
	ldr	r4, [r0, #60]	@ <variable>.FfAptEn, <variable>.FfAptEn
	mov	ip, #0	@ tmp177,
	ldr	r3, [r4, #0]	@ tmp175,* <variable>.FfAptEn
	bfc	r3, #0, #1	@ tmp175,,
	str	r3, [r4, #0]	@ tmp175,* <variable>.FfAptEn
	ldr	r3, [r0, #56]	@ <variable>.RefPicType, <variable>.RefPicType
	str	ip, [r3, #0]	@ tmp177,* <variable>.RefPicType
	ldr	r3, [r0, #56]	@ <variable>.RefPicType, <variable>.RefPicType
	ldr	r4, [r2, #208]	@ <variable>.FwdRefIsFldSave, <variable>.FwdRefIsFldSave
	ldr	ip, [r3, #0]	@ tmp180,* <variable>.RefPicType
	bfi	ip, r4, #0, #2	@ tmp180, <variable>.FwdRefIsFldSave,,
	str	ip, [r3, #0]	@ tmp180,* <variable>.RefPicType
	ldr	r3, [r0, #56]	@ <variable>.RefPicType, <variable>.RefPicType
	ldr	r4, [r2, #204]	@ <variable>.BwdRefIsFldSave, <variable>.BwdRefIsFldSave
	ldr	ip, [r3, #0]	@ tmp183,* <variable>.RefPicType
	bfi	ip, r4, #2, #2	@ tmp183, <variable>.BwdRefIsFldSave,,
	str	ip, [r3, #0]	@ tmp183,* <variable>.RefPicType
	ldr	r4, [r0, #16]	@ <variable>.avm_addr, <variable>.avm_addr
	ldr	r3, [r1, #48]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	bic	ip, r3, #15	@ tmp186, <variable>.MsgSlotAddr,
	str	ip, [r4, #0]	@ tmp186, <variable>.av_msg_addr
	ldr	ip, [r0, #20]	@ <variable>.vam_addr, <variable>.vam_addr
	ldr	r3, [r1, #32]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	bic	r4, r3, #15	@ tmp189, <variable>.MsgSlotAddr,
	str	r4, [ip, #0]	@ tmp189, <variable>.va_msg_addr
	ldr	r3, [r0, #28]	@ <variable>.ystaddr_1d, <variable>.ystaddr_1d
	ldr	r1, [r2, #200]	@ <variable>.CurPicPhyAddr, <variable>.CurPicPhyAddr
	bic	ip, r1, #255	@ tmp192, <variable>.CurPicPhyAddr,
	str	ip, [r3, #0]	@ tmp192, <variable>.ystaddr_1d
	ldrb	r4, [r2, #3]	@ zero_extendqisi2	@ <variable>.PictureStructure, <variable>.PictureStructure
	ldrh	r3, [r2, #148]	@ temp.574, <variable>.PicHeightInMb
	sub	r1, r4, #1	@ tmp195, <variable>.PictureStructure,
	ldr	ip, [r0, #32]	@ <variable>.ystride_1d, <variable>.ystride_1d
	ldrh	r4, [r2, #152]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	uxtb	r1, r1	@ tmp196, tmp195
	cmp	r1, #1	@ tmp196,
	str	r4, [ip, #0]	@ <variable>.PicWidthInMb, <variable>.ystride_1d
	movls	r1, #2	@ iftmp.466,
	movhi	r1, #1	@ iftmp.466,
	mul	r1, r3, r1	@ tmp200, temp.574, iftmp.466
	ldrh	ip, [r2, #152]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	ldr	r3, [r0, #36]	@ <variable>.uvoffset_1d, <variable>.uvoffset_1d
	mul	r1, ip, r1	@ tmp202, <variable>.PicWidthInMb, tmp200
	mov	r1, r1, asl #8	@ tmp203, tmp202,
	str	r1, [r3, #0]	@ tmp203, <variable>.uvoffset_1d
	ldr	ip, [r2, #176]	@ <variable>.StreamLength, <variable>.StreamLength
	ldr	r3, [r0, #24]	@ <variable>.stream_base_addr, <variable>.stream_base_addr
	cmp	ip, #0	@ <variable>.StreamLength,
	ldreq	r1, [r2, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldrne	r1, [r2, #168]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldreq	r2, [r2, #156]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	ldrne	r2, [r2, #160]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	add	r0, r2, r1, lsr #3	@, tmp214, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	bic	r2, r0, #15	@ tmp216, tmp214,
	mov	r0, #0	@,
	str	r2, [r3, #0]	@ tmp216, <variable>.stream_base_addr
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	MP2HAL_V300R001_MakeReg, .-MP2HAL_V300R001_MakeReg
	.align	2
	.global	MP2HAL_V300R001_MakeDnMsg
	.type	MP2HAL_V300R001_MakeDnMsg, %function
MP2HAL_V300R001_MakeDnMsg:
	.fnstart
.LFB1532:
	@ args = 0, pretend = 0, frame = 0
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
	ldrh	r3, [r2, #152]	@ D.39287, <variable>.PicWidthInMb
	mov	r4, r2	@ pMp2DecParam, pMp2DecParam
	mov	r5, r0	@ pDnMsgInf, pDnMsgInf
	cmp	r3, #512	@ D.39287,
	mov	r8, r1	@ pHwMem, pHwMem
	bhi	.L19	@,
	ldrh	r2, [r2, #148]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	cmp	r2, #512	@ <variable>.PicHeightInMb,
	bhi	.L20	@,
	ldr	lr, [r0, #0]	@ <variable>.d0, <variable>.d0
	sub	r0, r3, #1	@ tmp160, D.39287,
	ldr	ip, [lr, #0]	@ tmp161,* <variable>.d0
	bfi	ip, r0, #0, #9	@ tmp161, tmp160,,
	str	ip, [lr, #0]	@ tmp161,* <variable>.d0
	ldr	r3, [r5, #0]	@ <variable>.d0, <variable>.d0
	ldrh	r7, [r4, #148]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	ldr	r2, [r3, #0]	@ tmp166,* <variable>.d0
	sub	r6, r7, #1	@ tmp165, <variable>.PicHeightInMb,
	bfi	r2, r6, #16, #9	@ tmp166, tmp165,,
	str	r2, [r3, #0]	@ tmp166,* <variable>.d0
	ldr	r0, [r5, #0]	@ <variable>.d0, <variable>.d0
	ldr	r1, [r4, #180]	@ <variable>.Mpeg1Flag, <variable>.Mpeg1Flag
	ldr	lr, [r0, #0]	@ tmp169,* <variable>.d0
	bfi	lr, r1, #25, #1	@ tmp169, <variable>.Mpeg1Flag,,
	str	lr, [r0, #0]	@ tmp169,* <variable>.d0
	ldr	r7, [r5, #4]	@ <variable>.d1, <variable>.d1
	ldrb	ip, [r4, #5]	@ zero_extendqisi2	@ <variable>.FramePredFrameDct, <variable>.FramePredFrameDct
	ldr	r6, [r7, #0]	@ tmp171,* <variable>.d1
	bfi	r6, ip, #0, #1	@ tmp171, <variable>.FramePredFrameDct,,
	str	r6, [r7, #0]	@ tmp171,* <variable>.d1
	ldr	r3, [r5, #4]	@ <variable>.d1, <variable>.d1
	ldrb	r2, [r4, #3]	@ zero_extendqisi2	@ <variable>.PictureStructure, <variable>.PictureStructure
	ldr	r0, [r3, #0]	@ tmp176,* <variable>.d1
	bfi	r0, r2, #8, #2	@ tmp176, <variable>.PictureStructure,,
	str	r0, [r3, #0]	@ tmp176,* <variable>.d1
	ldr	lr, [r5, #4]	@ <variable>.d1, <variable>.d1
	ldrb	r1, [r4, #4]	@ zero_extendqisi2	@ <variable>.SecondFieldFlag, <variable>.SecondFieldFlag
	ldr	ip, [lr, #0]	@ tmp181,* <variable>.d1
	bfi	ip, r1, #10, #1	@ tmp181, <variable>.SecondFieldFlag,,
	str	ip, [lr, #0]	@ tmp181,* <variable>.d1
	ldr	r6, [r5, #4]	@ <variable>.d1, <variable>.d1
	ldrb	r7, [r4, #7]	@ zero_extendqisi2	@ <variable>.ConcealmentMotionVectors, <variable>.ConcealmentMotionVectors
	ldr	r2, [r6, #0]	@ tmp186,* <variable>.d1
	bfi	r2, r7, #16, #1	@ tmp186, <variable>.ConcealmentMotionVectors,,
	str	r2, [r6, #0]	@ tmp186,* <variable>.d1
	ldr	r3, [r5, #4]	@ <variable>.d1, <variable>.d1
	ldrb	r0, [r4, #0]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	ldr	lr, [r3, #0]	@ tmp191,* <variable>.d1
	bfi	lr, r0, #24, #3	@ tmp191, <variable>.PicCodingType,,
	str	lr, [r3, #0]	@ tmp191,* <variable>.d1
	ldr	ip, [r5, #4]	@ <variable>.d1, <variable>.d1
	ldrb	r1, [r4, #2]	@ zero_extendqisi2	@ <variable>.Mp1FwdmvFullPel, <variable>.Mp1FwdmvFullPel
	ldr	r7, [ip, #0]	@ tmp196,* <variable>.d1
	bfi	r7, r1, #27, #1	@ tmp196, <variable>.Mp1FwdmvFullPel,,
	str	r7, [ip, #0]	@ tmp196,* <variable>.d1
	ldr	r2, [r5, #4]	@ <variable>.d1, <variable>.d1
	ldrb	r6, [r4, #1]	@ zero_extendqisi2	@ <variable>.Mp1BwdmvFullPel, <variable>.Mp1BwdmvFullPel
	ldr	r0, [r2, #0]	@ tmp201,* <variable>.d1
	bfi	r0, r6, #28, #1	@ tmp201, <variable>.Mp1BwdmvFullPel,,
	str	r0, [r2, #0]	@ tmp201,* <variable>.d1
	ldr	r3, [r5, #8]	@ <variable>.d2, <variable>.d2
	ldrb	lr, [r4, #15]	@ zero_extendqisi2	@ <variable>.Fcode, <variable>.Fcode
	ldr	ip, [r3, #0]	@ tmp206,* <variable>.d2
	bfi	ip, lr, #0, #4	@ tmp206, <variable>.Fcode,,
	str	ip, [r3, #0]	@ tmp206,* <variable>.d2
	ldr	r7, [r5, #8]	@ <variable>.d2, <variable>.d2
	ldrb	r1, [r4, #14]	@ zero_extendqisi2	@ <variable>.Fcode, <variable>.Fcode
	ldr	r6, [r7, #0]	@ tmp211,* <variable>.d2
	bfi	r6, r1, #8, #4	@ tmp211, <variable>.Fcode,,
	str	r6, [r7, #0]	@ tmp211,* <variable>.d2
	ldr	r0, [r5, #8]	@ <variable>.d2, <variable>.d2
	ldrb	r2, [r4, #13]	@ zero_extendqisi2	@ <variable>.Fcode, <variable>.Fcode
	ldr	lr, [r0, #0]	@ tmp216,* <variable>.d2
	bfi	lr, r2, #16, #4	@ tmp216, <variable>.Fcode,,
	str	lr, [r0, #0]	@ tmp216,* <variable>.d2
	ldr	r3, [r5, #8]	@ <variable>.d2, <variable>.d2
	ldrb	ip, [r4, #12]	@ zero_extendqisi2	@ <variable>.Fcode, <variable>.Fcode
	ldr	r7, [r3, #0]	@ tmp221,* <variable>.d2
	bfi	r7, ip, #24, #4	@ tmp221, <variable>.Fcode,,
	str	r7, [r3, #0]	@ tmp221,* <variable>.d2
	ldr	r6, [r5, #8]	@ <variable>.d2, <variable>.d2
	ldrb	r1, [r4, #6]	@ zero_extendqisi2	@ <variable>.TopFieldFirst, <variable>.TopFieldFirst
	ldr	r2, [r6, #0]	@ tmp226,* <variable>.d2
	bfi	r2, r1, #31, #1	@ tmp226, <variable>.TopFieldFirst,,
	str	r2, [r6, #0]	@ tmp226,* <variable>.d2
	ldr	lr, [r5, #12]	@ <variable>.d3, <variable>.d3
	ldrb	r0, [r4, #11]	@ zero_extendqisi2	@ <variable>.IntraDcPrecision, <variable>.IntraDcPrecision
	ldr	ip, [lr, #0]	@ tmp231,* <variable>.d3
	bfi	ip, r0, #0, #2	@ tmp231, <variable>.IntraDcPrecision,,
	str	ip, [lr, #0]	@ tmp231,* <variable>.d3
	ldr	r3, [r5, #12]	@ <variable>.d3, <variable>.d3
	ldrb	r7, [r4, #10]	@ zero_extendqisi2	@ <variable>.QuantType, <variable>.QuantType
	ldr	r6, [r3, #0]	@ tmp236,* <variable>.d3
	bfi	r6, r7, #8, #1	@ tmp236, <variable>.QuantType,,
	str	r6, [r3, #0]	@ tmp236,* <variable>.d3
	ldr	r2, [r5, #12]	@ <variable>.d3, <variable>.d3
	ldrb	r1, [r4, #9]	@ zero_extendqisi2	@ <variable>.IntraVlcFormat, <variable>.IntraVlcFormat
	ldr	r0, [r2, #0]	@ tmp241,* <variable>.d3
	bfi	r0, r1, #16, #1	@ tmp241, <variable>.IntraVlcFormat,,
	str	r0, [r2, #0]	@ tmp241,* <variable>.d3
	ldr	ip, [r5, #12]	@ <variable>.d3, <variable>.d3
	ldrb	lr, [r4, #8]	@ zero_extendqisi2	@ <variable>.AlternateScan, <variable>.AlternateScan
	ldr	r7, [ip, #0]	@ tmp246,* <variable>.d3
	bfi	r7, lr, #24, #1	@ tmp246, <variable>.AlternateScan,,
	str	r7, [ip, #0]	@ tmp246,* <variable>.d3
	ldr	r3, [r5, #16]	@ <variable>.d4, <variable>.d4
	ldr	r6, [r4, #192]	@ <variable>.BwdRefPhyAddr, <variable>.BwdRefPhyAddr
	bic	r1, r6, #15	@ tmp252, <variable>.BwdRefPhyAddr,
	str	r1, [r3, #0]	@ tmp252, <variable>.bwd_address
	ldr	r0, [r5, #20]	@ <variable>.d5, <variable>.d5
	ldr	r2, [r4, #196]	@ <variable>.FwdRefPhyAddr, <variable>.FwdRefPhyAddr
	bic	lr, r2, #15	@ tmp255, <variable>.FwdRefPhyAddr,
	str	lr, [r0, #0]	@ tmp255, <variable>.fwd_address
	ldr	r7, [r5, #24]	@ <variable>.d6, <variable>.d6
	ldr	ip, [r4, #224]	@ <variable>.DispFramePhyAddr, <variable>.DispFramePhyAddr
	bic	r6, ip, #15	@ tmp258, <variable>.DispFramePhyAddr,
	str	r6, [r7, #0]	@ tmp258, <variable>.rcn_address
	ldr	r3, [r5, #28]	@ <variable>.d7, <variable>.d7
	ldr	r1, [r4, #240]	@ <variable>.PmvColmbPhyAddr, <variable>.PmvColmbPhyAddr
	bic	r0, r1, #15	@ tmp261, <variable>.PmvColmbPhyAddr,
	str	r0, [r3, #0]	@ tmp261, <variable>.current_pmv_addr
	ldr	r0, [r4, #156]	@, <variable>.StreamPhyAddr
	bl	MEM_Phy2Vir	@
	mov	r6, r0	@ D.39352,
	ldr	r0, [r4, #160]	@, <variable>.StreamPhyAddr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r4, #176]	@ <variable>.StreamLength, <variable>.StreamLength
	cmp	r3, #0	@ <variable>.StreamLength,
	mov	r7, r0	@ D.39356,
	beq	.L21	@,
	ldr	r3, [r4, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	cmp	r6, #0	@ D.39352,
	ldr	sl, [r4, #168]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	r0, [r4, #160]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	ldr	r2, [r4, #156]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	ldr	lr, [r5, #32]	@ <variable>.d8, <variable>.d8
	add	sl, r0, sl, lsr #3	@, BytePos1, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	add	r1, r2, r3, lsr #3	@, BytePos0.664, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	bic	r3, sl, #15	@ tmp716, BytePos1,
	bic	ip, r1, #15	@ tmp715, BytePos0.664,
	and	r1, r1, #15	@ tmp724, BytePos0.664,
	ldr	r2, [lr, #0]	@ tmp718,* <variable>.d8
	rsb	r0, r3, ip	@ tmp717, tmp716, tmp715
	bfi	r2, r0, #0, #24	@ tmp718, tmp717,,
	str	r2, [lr, #0]	@ tmp718,* <variable>.d8
	ldr	lr, [r5, #36]	@ <variable>.d9, <variable>.d9
	ldr	r3, [r4, #172]	@ <variable>.StreamLength, <variable>.StreamLength
	ldr	r2, [lr, #0]	@ tmp720,* <variable>.d9
	bfi	r2, r3, #0, #24	@ tmp720, <variable>.StreamLength,,
	str	r2, [lr, #0]	@ tmp720,* <variable>.d9
	ldr	r3, [r5, #36]	@ <variable>.d9, <variable>.d9
	ldr	ip, [r4, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	lr, [r3, #0]	@ tmp733,* <variable>.d9
	and	r0, ip, #7	@ tmp729, <variable>.StreamBitOffset,
	add	r1, r0, r1, asl #3	@, tmp732, tmp729, tmp724,
	bfi	lr, r1, #24, #7	@ tmp733, tmp732,,
	str	lr, [r3, #0]	@ tmp733,* <variable>.d9
	beq	.L15	@,
	ldr	r3, [r4, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	r0, #8	@,
	movw	r1, #:lower16:.LC5	@,
	movt	r1, #:upper16:.LC5	@,
	add	ip, r6, r3, lsr #3	@, rp, D.39352, <variable>.StreamBitOffset,
	ldrb	r2, [r6, r3, lsr #3]	@ zero_extendqisi2	@ tmp737,* D.39352
	ldrb	lr, [ip, #2]	@ zero_extendqisi2	@ tmp739,
	ldrb	r3, [ip, #1]	@ zero_extendqisi2	@ tmp738,
	str	lr, [sp, #0]	@ tmp739,
	ldrb	lr, [ip, #3]	@ zero_extendqisi2	@ tmp740,
	str	lr, [sp, #4]	@ tmp740,
	ldrb	lr, [ip, #4]	@ zero_extendqisi2	@ tmp741,
	str	lr, [sp, #8]	@ tmp741,
	ldrb	lr, [ip, #5]	@ zero_extendqisi2	@ tmp742,
	str	lr, [sp, #12]	@ tmp742,
	ldrb	lr, [ip, #6]	@ zero_extendqisi2	@ tmp743,
	str	lr, [sp, #16]	@ tmp743,
	ldrb	lr, [ip, #7]	@ zero_extendqisi2	@ tmp744,
	str	lr, [sp, #20]	@ tmp744,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #172]	@ <variable>.StreamLength, <variable>.StreamLength
	mov	r0, #9	@,
	ldr	r2, [r4, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	movw	r1, #:lower16:.LC6	@,
	add	ip, r3, #7	@ tmp751, <variable>.StreamLength,
	cmp	r3, #0	@ <variable>.StreamLength,
	movt	r1, #:upper16:.LC6	@,
	movlt	r3, ip	@ <variable>.StreamLength, tmp751
	mov	ip, r2, lsr #3	@ tmp745, <variable>.StreamBitOffset,
	sub	r2, ip, #8	@ tmp747, tmp745,
	add	r3, r2, r3, asr #3	@, tmp753, tmp747, <variable>.StreamLength,
	add	ip, r6, r3	@ rp.688, D.39352, tmp753
	ldrb	r2, [r6, r3]	@ zero_extendqisi2	@ tmp755,
	ldrb	lr, [ip, #2]	@ zero_extendqisi2	@ tmp757,
	ldrb	r3, [ip, #1]	@ zero_extendqisi2	@ tmp756,
	str	lr, [sp, #0]	@ tmp757,
	ldrb	lr, [ip, #3]	@ zero_extendqisi2	@ tmp758,
	str	lr, [sp, #4]	@ tmp758,
	ldrb	lr, [ip, #4]	@ zero_extendqisi2	@ tmp759,
	str	lr, [sp, #8]	@ tmp759,
	ldrb	lr, [ip, #5]	@ zero_extendqisi2	@ tmp760,
	str	lr, [sp, #12]	@ tmp760,
	ldrb	lr, [ip, #6]	@ zero_extendqisi2	@ tmp761,
	str	lr, [sp, #16]	@ tmp761,
	ldrb	lr, [ip, #7]	@ zero_extendqisi2	@ tmp762,
	str	lr, [sp, #20]	@ tmp762,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #172]	@ <variable>.StreamLength, <variable>.StreamLength
	movw	r1, #:lower16:.LC7	@,
	ldr	r3, [r4, #156]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	movt	r1, #:upper16:.LC7	@,
	mov	r0, #22	@,
	add	r2, ip, r3	@, <variable>.StreamLength, <variable>.StreamPhyAddr
	bl	dprint_vfmw	@
.L15:
	ldr	r3, [r5, #40]	@ <variable>.d10, <variable>.d10
	and	sl, sl, #15	@ tmp775, BytePos1,
	cmp	r7, #0	@ D.39356,
	ldr	r0, [r3, #0]	@ tmp768,* <variable>.d10
	bfc	r0, #0, #24	@ tmp768,,
	str	r0, [r3, #0]	@ tmp768,* <variable>.d10
	ldr	r2, [r5, #44]	@ <variable>.d11, <variable>.d11
	ldr	ip, [r4, #176]	@ <variable>.StreamLength, <variable>.StreamLength
	ldr	r0, [r2, #0]	@ tmp772,* <variable>.d11
	add	r1, ip, #24	@ tmp770, <variable>.StreamLength,
	bfi	r0, r1, #0, #24	@ tmp772, tmp770,,
	str	r0, [r2, #0]	@ tmp772,* <variable>.d11
	ldr	r2, [r5, #44]	@ <variable>.d11, <variable>.d11
	ldr	r3, [r4, #168]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	r0, [r2, #0]	@ tmp784,* <variable>.d11
	and	ip, r3, #7	@ tmp780, <variable>.StreamBitOffset,
	add	r1, ip, sl, asl #3	@, tmp783, tmp780, tmp775,
	bfi	r0, r1, #24, #7	@ tmp784, tmp783,,
	str	r0, [r2, #0]	@ tmp784,* <variable>.d11
	beq	.L16	@,
	ldr	r3, [r4, #168]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	r0, #8	@,
	movw	r1, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC8	@,
	add	ip, r7, r3, lsr #3	@, rp, D.39356, <variable>.StreamBitOffset,
	ldrb	r2, [r7, r3, lsr #3]	@ zero_extendqisi2	@ tmp788,* D.39356
	ldrb	lr, [ip, #2]	@ zero_extendqisi2	@ tmp790,
	ldrb	r3, [ip, #1]	@ zero_extendqisi2	@ tmp789,
	str	lr, [sp, #0]	@ tmp790,
	ldrb	lr, [ip, #3]	@ zero_extendqisi2	@ tmp791,
	str	lr, [sp, #4]	@ tmp791,
	ldrb	lr, [ip, #4]	@ zero_extendqisi2	@ tmp792,
	str	lr, [sp, #8]	@ tmp792,
	ldrb	lr, [ip, #5]	@ zero_extendqisi2	@ tmp793,
	str	lr, [sp, #12]	@ tmp793,
	ldrb	lr, [ip, #6]	@ zero_extendqisi2	@ tmp794,
	str	lr, [sp, #16]	@ tmp794,
	ldrb	lr, [ip, #7]	@ zero_extendqisi2	@ tmp795,
	str	lr, [sp, #20]	@ tmp795,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #176]	@ <variable>.StreamLength, <variable>.StreamLength
	movw	r1, #:lower16:.LC9	@,
	ldr	r2, [r4, #168]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	movt	r1, #:upper16:.LC9	@,
	add	ip, r3, #7	@ tmp802, <variable>.StreamLength,
	cmp	r3, #0	@ <variable>.StreamLength,
	mov	r0, #9	@,
	movlt	r3, ip	@ <variable>.StreamLength, tmp802
	mov	ip, r2, lsr #3	@ tmp796, <variable>.StreamBitOffset,
	sub	r2, ip, #8	@ tmp798, tmp796,
	add	r3, r2, r3, asr #3	@, tmp804, tmp798, <variable>.StreamLength,
	add	ip, r7, r3	@ rp.724, D.39356, tmp804
	ldrb	r2, [r7, r3]	@ zero_extendqisi2	@ tmp806,
	ldrb	lr, [ip, #2]	@ zero_extendqisi2	@ tmp808,
	ldrb	r3, [ip, #1]	@ zero_extendqisi2	@ tmp807,
	str	lr, [sp, #0]	@ tmp808,
	ldrb	lr, [ip, #3]	@ zero_extendqisi2	@ tmp809,
	str	lr, [sp, #4]	@ tmp809,
	ldrb	lr, [ip, #4]	@ zero_extendqisi2	@ tmp810,
	str	lr, [sp, #8]	@ tmp810,
	ldrb	lr, [ip, #5]	@ zero_extendqisi2	@ tmp811,
	str	lr, [sp, #12]	@ tmp811,
	ldrb	lr, [ip, #6]	@ zero_extendqisi2	@ tmp812,
	str	lr, [sp, #16]	@ tmp812,
	ldrb	lr, [ip, #7]	@ zero_extendqisi2	@ tmp813,
	str	lr, [sp, #20]	@ tmp813,
	bl	dprint_vfmw	@
.L16:
	ldr	r2, [r5, #48]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	mov	r0, #0	@ D.39291,
	ldrb	ip, [r4, #80]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	ip, [r2, #0]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_0
	ldr	r3, [r5, #48]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	r1, [r4, #96]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	r1, [r3, #1]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_1
	ldr	r2, [r5, #48]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	ip, [r4, #112]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	ip, [r2, #2]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_2
	ldr	r3, [r5, #48]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	r1, [r4, #128]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	r1, [r3, #3]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_3
	ldr	r2, [r5, #176]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	ip, [r4, #16]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	ip, [r2, #0]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_0
	ldr	r3, [r5, #176]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	r1, [r4, #32]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	r1, [r3, #1]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_1
	ldr	r2, [r5, #176]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	ip, [r4, #48]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	ip, [r2, #2]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_2
	ldr	r3, [r5, #176]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	r1, [r4, #64]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	r1, [r3, #3]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_3
	ldr	r2, [r5, #52]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	ip, [r4, #88]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	ip, [r2, #0]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_0
	ldr	r3, [r5, #52]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	r1, [r4, #104]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	r1, [r3, #1]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_1
	ldr	r2, [r5, #52]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	ip, [r4, #120]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	ip, [r2, #2]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_2
	ldr	r3, [r5, #52]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	r1, [r4, #136]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	r1, [r3, #3]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_3
	ldr	r2, [r5, #180]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	ip, [r4, #24]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	ip, [r2, #0]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_0
	ldr	r3, [r5, #180]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	r1, [r4, #40]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	r1, [r3, #1]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_1
	ldr	r2, [r5, #180]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	ip, [r4, #56]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	ip, [r2, #2]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_2
	ldr	r3, [r5, #180]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	r1, [r4, #72]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	r1, [r3, #3]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_3
	ldr	r2, [r5, #56]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	ip, [r4, #81]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	ip, [r2, #0]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_0
	ldr	r3, [r5, #56]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	r1, [r4, #97]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	r1, [r3, #1]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_1
	ldr	r2, [r5, #56]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	ip, [r4, #113]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	ip, [r2, #2]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_2
	ldr	r3, [r5, #56]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	r1, [r4, #129]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	r1, [r3, #3]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_3
	ldr	r2, [r5, #184]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	ip, [r4, #17]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	ip, [r2, #0]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_0
	ldr	r3, [r5, #184]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	r1, [r4, #33]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	r1, [r3, #1]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_1
	ldr	r2, [r5, #184]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	ip, [r4, #49]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	ip, [r2, #2]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_2
	ldr	r3, [r5, #184]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	r1, [r4, #65]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	r1, [r3, #3]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_3
	ldr	r2, [r5, #60]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	ip, [r4, #89]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	ip, [r2, #0]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_0
	ldr	r3, [r5, #60]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	r1, [r4, #105]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	r1, [r3, #1]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_1
	ldr	r2, [r5, #60]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	ip, [r4, #121]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	ip, [r2, #2]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_2
	ldr	r3, [r5, #60]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	r1, [r4, #137]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	r1, [r3, #3]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_3
	ldr	r2, [r5, #188]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	ip, [r4, #25]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	ip, [r2, #0]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_0
	ldr	r3, [r5, #188]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	r1, [r4, #41]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	r1, [r3, #1]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_1
	ldr	r2, [r5, #188]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	ip, [r4, #57]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	ip, [r2, #2]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_2
	ldr	r3, [r5, #188]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	r1, [r4, #73]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	r1, [r3, #3]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_3
	ldr	r2, [r5, #64]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	ip, [r4, #82]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	ip, [r2, #0]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_0
	ldr	r3, [r5, #64]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	r1, [r4, #98]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	r1, [r3, #1]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_1
	ldr	r2, [r5, #64]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	ip, [r4, #114]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	ip, [r2, #2]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_2
	ldr	r3, [r5, #64]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	r1, [r4, #130]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	r1, [r3, #3]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_3
	ldr	r2, [r5, #192]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	ip, [r4, #18]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	ip, [r2, #0]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_0
	ldr	r3, [r5, #192]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	r1, [r4, #34]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	r1, [r3, #1]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_1
	ldr	r2, [r5, #192]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	ip, [r4, #50]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	ip, [r2, #2]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_2
	ldr	r3, [r5, #192]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	r1, [r4, #66]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	r1, [r3, #3]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_3
	ldr	r2, [r5, #68]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	ip, [r4, #90]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	ip, [r2, #0]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_0
	ldr	r3, [r5, #68]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	r1, [r4, #106]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	r1, [r3, #1]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_1
	ldr	r2, [r5, #68]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	ip, [r4, #122]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	ip, [r2, #2]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_2
	ldr	r3, [r5, #68]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	r1, [r4, #138]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	r1, [r3, #3]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_3
	ldr	r2, [r5, #196]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	ip, [r4, #26]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	ip, [r2, #0]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_0
	ldr	r3, [r5, #196]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	r1, [r4, #42]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	r1, [r3, #1]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_1
	ldr	r2, [r5, #196]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	ip, [r4, #58]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	ip, [r2, #2]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_2
	ldr	r3, [r5, #196]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	r1, [r4, #74]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	r1, [r3, #3]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_3
	ldr	r2, [r5, #72]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	ip, [r4, #83]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	ip, [r2, #0]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_0
	ldr	r3, [r5, #72]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	r1, [r4, #99]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	r1, [r3, #1]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_1
	ldr	r2, [r5, #72]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	ip, [r4, #115]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	ip, [r2, #2]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_2
	ldr	r3, [r5, #72]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	r1, [r4, #131]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	r1, [r3, #3]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_3
	ldr	r2, [r5, #200]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	ip, [r4, #19]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	ip, [r2, #0]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_0
	ldr	r3, [r5, #200]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	r1, [r4, #35]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	r1, [r3, #1]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_1
	ldr	r2, [r5, #200]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	ip, [r4, #51]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	ip, [r2, #2]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_2
	ldr	r3, [r5, #200]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	r1, [r4, #67]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	r1, [r3, #3]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_3
	ldr	r2, [r5, #76]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	ip, [r4, #91]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	ip, [r2, #0]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_0
	ldr	r3, [r5, #76]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	r1, [r4, #107]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	r1, [r3, #1]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_1
	ldr	r2, [r5, #76]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	ip, [r4, #123]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	ip, [r2, #2]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_2
	ldr	r3, [r5, #76]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	r1, [r4, #139]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	r1, [r3, #3]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_3
	ldr	r2, [r5, #204]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	ip, [r4, #27]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	ip, [r2, #0]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_0
	ldr	r3, [r5, #204]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	r1, [r4, #43]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	r1, [r3, #1]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_1
	ldr	r2, [r5, #204]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	ip, [r4, #59]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	ip, [r2, #2]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_2
	ldr	r3, [r5, #204]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	r1, [r4, #75]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	r1, [r3, #3]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_3
	ldr	r2, [r5, #80]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	ip, [r4, #84]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	ip, [r2, #0]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_0
	ldr	r3, [r5, #80]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	r1, [r4, #100]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	r1, [r3, #1]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_1
	ldr	r2, [r5, #80]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	ip, [r4, #116]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	ip, [r2, #2]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_2
	ldr	r3, [r5, #80]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	r1, [r4, #132]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	r1, [r3, #3]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_3
	ldr	r2, [r5, #208]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	ip, [r4, #20]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	ip, [r2, #0]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_0
	ldr	r3, [r5, #208]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	r1, [r4, #36]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	r1, [r3, #1]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_1
	ldr	r2, [r5, #208]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	ip, [r4, #52]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	ip, [r2, #2]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_2
	ldr	r3, [r5, #208]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	r1, [r4, #68]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	r1, [r3, #3]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_3
	ldr	r2, [r5, #84]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	ip, [r4, #92]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	ip, [r2, #0]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_0
	ldr	r3, [r5, #84]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	r1, [r4, #108]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	r1, [r3, #1]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_1
	ldr	r2, [r5, #84]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	ip, [r4, #124]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	ip, [r2, #2]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_2
	ldr	r3, [r5, #84]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	r1, [r4, #140]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	r1, [r3, #3]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_3
	ldr	r2, [r5, #212]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	ip, [r4, #28]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	ip, [r2, #0]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_0
	ldr	r3, [r5, #212]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	r1, [r4, #44]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	r1, [r3, #1]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_1
	ldr	r2, [r5, #212]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	ip, [r4, #60]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	ip, [r2, #2]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_2
	ldr	r3, [r5, #212]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	r1, [r4, #76]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	r1, [r3, #3]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_3
	ldr	r2, [r5, #88]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	ip, [r4, #85]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	ip, [r2, #0]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_0
	ldr	r3, [r5, #88]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	r1, [r4, #101]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	r1, [r3, #1]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_1
	ldr	r2, [r5, #88]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	ip, [r4, #117]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	ip, [r2, #2]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_2
	ldr	r3, [r5, #88]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	r1, [r4, #133]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	r1, [r3, #3]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_3
	ldr	r2, [r5, #216]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	ip, [r4, #21]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	ip, [r2, #0]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_0
	ldr	r3, [r5, #216]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	r1, [r4, #37]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	r1, [r3, #1]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_1
	ldr	r2, [r5, #216]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	ip, [r4, #53]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	ip, [r2, #2]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_2
	ldr	r3, [r5, #216]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	r1, [r4, #69]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	r1, [r3, #3]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_3
	ldr	r2, [r5, #92]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	ip, [r4, #93]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	ip, [r2, #0]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_0
	ldr	r3, [r5, #92]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	r1, [r4, #109]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	r1, [r3, #1]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_1
	ldr	r2, [r5, #92]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	ip, [r4, #125]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	ip, [r2, #2]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_2
	ldr	r3, [r5, #92]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	r1, [r4, #141]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	r1, [r3, #3]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_3
	ldr	r2, [r5, #220]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	ip, [r4, #29]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	ip, [r2, #0]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_0
	ldr	r3, [r5, #220]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	r1, [r4, #45]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	r1, [r3, #1]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_1
	ldr	r2, [r5, #220]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	ip, [r4, #61]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	ip, [r2, #2]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_2
	ldr	r3, [r5, #220]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	r1, [r4, #77]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	r1, [r3, #3]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_3
	ldr	r2, [r5, #96]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	ip, [r4, #86]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	ip, [r2, #0]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_0
	ldr	r3, [r5, #96]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	r1, [r4, #102]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	r1, [r3, #1]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_1
	ldr	r2, [r5, #96]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	ip, [r4, #118]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	ip, [r2, #2]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_2
	ldr	r3, [r5, #96]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	r1, [r4, #134]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	r1, [r3, #3]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_3
	ldr	r2, [r5, #224]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	ip, [r4, #22]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	ip, [r2, #0]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_0
	ldr	r3, [r5, #224]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	r1, [r4, #38]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	r1, [r3, #1]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_1
	ldr	r2, [r5, #224]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	ip, [r4, #54]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	ip, [r2, #2]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_2
	ldr	r3, [r5, #224]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	r1, [r4, #70]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	r1, [r3, #3]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_3
	ldr	r2, [r5, #100]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	ip, [r4, #94]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	ip, [r2, #0]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_0
	ldr	r3, [r5, #100]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	r1, [r4, #110]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	r1, [r3, #1]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_1
	ldr	r2, [r5, #100]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	ip, [r4, #126]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	ip, [r2, #2]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_2
	ldr	r3, [r5, #100]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	r1, [r4, #142]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	r1, [r3, #3]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_3
	ldr	r2, [r5, #228]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	ip, [r4, #30]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	ip, [r2, #0]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_0
	ldr	r3, [r5, #228]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	r1, [r4, #46]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	r1, [r3, #1]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_1
	ldr	r2, [r5, #228]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	ip, [r4, #62]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	ip, [r2, #2]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_2
	ldr	r3, [r5, #228]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	r1, [r4, #78]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	r1, [r3, #3]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_3
	ldr	r2, [r5, #104]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	ip, [r4, #87]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	ip, [r2, #0]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_0
	ldr	r3, [r5, #104]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	r1, [r4, #103]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	r1, [r3, #1]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_1
	ldr	r2, [r5, #104]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	ip, [r4, #119]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	ip, [r2, #2]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_2
	ldr	r3, [r5, #104]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	r1, [r4, #135]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	r1, [r3, #3]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_3
	ldr	r2, [r5, #232]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	ip, [r4, #23]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	ip, [r2, #0]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_0
	ldr	r3, [r5, #232]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	r1, [r4, #39]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	r1, [r3, #1]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_1
	ldr	r2, [r5, #232]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	ip, [r4, #55]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	ip, [r2, #2]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_2
	ldr	r3, [r5, #232]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	r1, [r4, #71]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	r1, [r3, #3]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_3
	ldr	r2, [r5, #108]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	ip, [r4, #95]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	ip, [r2, #0]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_0
	ldr	r3, [r5, #108]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	r1, [r4, #111]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	r1, [r3, #1]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_1
	ldr	r2, [r5, #108]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	ip, [r4, #127]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	ip, [r2, #2]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_2
	ldr	r3, [r5, #108]	@ <variable>.dmatrix_intra, <variable>.dmatrix_intra
	ldrb	r1, [r4, #143]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	r1, [r3, #3]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_3
	ldr	r2, [r5, #236]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	ip, [r4, #31]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	ip, [r2, #0]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_0
	ldr	r3, [r5, #236]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	r1, [r4, #47]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	r1, [r3, #1]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_1
	ldr	r2, [r5, #236]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	ldrb	ip, [r4, #63]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	ip, [r2, #2]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_2
	ldrb	r1, [r4, #79]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	ldr	r3, [r5, #236]	@ <variable>.dmatrix_non_intra, <variable>.dmatrix_non_intra
	strb	r1, [r3, #3]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_3
	ldr	ip, [r5, #304]	@ <variable>.d48, <variable>.d48
	ldr	r2, [r8, #1140]	@ <variable>.PmvTopAddr, <variable>.PmvTopAddr
	bic	r1, r2, #15	@ tmp707, <variable>.PmvTopAddr,
	str	r1, [ip, #0]	@ tmp707, <variable>.pmv_top_addr
.L11:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L21:
	ldr	r1, [r5, #32]	@ <variable>.d8, <variable>.d8
	cmp	r6, #0	@ D.39352,
	ldr	ip, [r4, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	r2, [r4, #156]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	ldr	lr, [r1, #0]	@ tmp269,* <variable>.d8
	add	r0, r2, ip, lsr #3	@, BytePos0, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	bfi	lr, r3, #0, #24	@ tmp269, <variable>.StreamLength,,
	str	lr, [r1, #0]	@ tmp269,* <variable>.d8
	ldr	r3, [r5, #36]	@ <variable>.d9, <variable>.d9
	and	lr, r0, #15	@ tmp276, BytePos0,
	ldr	r2, [r4, #172]	@ <variable>.StreamLength, <variable>.StreamLength
	ldr	ip, [r3, #0]	@ tmp273,* <variable>.d9
	add	r1, r2, #24	@ tmp271, <variable>.StreamLength,
	bfi	ip, r1, #0, #24	@ tmp273, tmp271,,
	str	ip, [r3, #0]	@ tmp273,* <variable>.d9
	ldr	r3, [r5, #36]	@ <variable>.d9, <variable>.d9
	ldr	r2, [r4, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	and	ip, r2, #7	@ tmp281, <variable>.StreamBitOffset,
	ldr	r2, [r3, #0]	@ tmp285,* <variable>.d9
	add	r1, ip, lr, asl #3	@, tmp284, tmp281, tmp276,
	bfi	r2, r1, #24, #7	@ tmp285, tmp284,,
	str	r2, [r3, #0]	@ tmp285,* <variable>.d9
	beq	.L14	@,
	ldr	r3, [r4, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	r0, #8	@,
	movw	r1, #:lower16:.LC3	@,
	movt	r1, #:upper16:.LC3	@,
	add	ip, r6, r3, lsr #3	@, rp, D.39352, <variable>.StreamBitOffset,
	ldrb	r2, [r6, r3, lsr #3]	@ zero_extendqisi2	@ tmp289,* D.39352
	ldrb	lr, [ip, #2]	@ zero_extendqisi2	@ tmp291,
	ldrb	r3, [ip, #1]	@ zero_extendqisi2	@ tmp290,
	str	lr, [sp, #0]	@ tmp291,
	ldrb	lr, [ip, #3]	@ zero_extendqisi2	@ tmp292,
	str	lr, [sp, #4]	@ tmp292,
	ldrb	lr, [ip, #4]	@ zero_extendqisi2	@ tmp293,
	str	lr, [sp, #8]	@ tmp293,
	ldrb	lr, [ip, #5]	@ zero_extendqisi2	@ tmp294,
	str	lr, [sp, #12]	@ tmp294,
	ldrb	lr, [ip, #6]	@ zero_extendqisi2	@ tmp295,
	str	lr, [sp, #16]	@ tmp295,
	ldrb	lr, [ip, #7]	@ zero_extendqisi2	@ tmp296,
	str	lr, [sp, #20]	@ tmp296,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #172]	@ <variable>.StreamLength, <variable>.StreamLength
	movw	r1, #:lower16:.LC4	@,
	ldr	r2, [r4, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	movt	r1, #:upper16:.LC4	@,
	add	ip, r3, #7	@ tmp303, <variable>.StreamLength,
	cmp	r3, #0	@ <variable>.StreamLength,
	mov	r0, #9	@,
	movlt	r3, ip	@ <variable>.StreamLength, tmp303
	mov	ip, r2, lsr #3	@ tmp297, <variable>.StreamBitOffset,
	sub	r2, ip, #8	@ tmp299, tmp297,
	add	r3, r2, r3, asr #3	@, tmp305, tmp299, <variable>.StreamLength,
	add	ip, r6, r3	@ rp.635, D.39352, tmp305
	ldrb	r2, [r6, r3]	@ zero_extendqisi2	@ tmp307,
	ldrb	lr, [ip, #2]	@ zero_extendqisi2	@ tmp309,
	ldrb	r3, [ip, #1]	@ zero_extendqisi2	@ tmp308,
	str	lr, [sp, #0]	@ tmp309,
	ldrb	lr, [ip, #3]	@ zero_extendqisi2	@ tmp310,
	str	lr, [sp, #4]	@ tmp310,
	ldrb	lr, [ip, #4]	@ zero_extendqisi2	@ tmp311,
	str	lr, [sp, #8]	@ tmp311,
	ldrb	lr, [ip, #5]	@ zero_extendqisi2	@ tmp312,
	str	lr, [sp, #12]	@ tmp312,
	ldrb	lr, [ip, #6]	@ zero_extendqisi2	@ tmp313,
	str	lr, [sp, #16]	@ tmp313,
	ldrb	lr, [ip, #7]	@ zero_extendqisi2	@ tmp314,
	str	lr, [sp, #20]	@ tmp314,
	bl	dprint_vfmw	@
.L14:
	ldr	r3, [r5, #40]	@ <variable>.d10, <variable>.d10
	ldr	r0, [r3, #0]	@ tmp316,* <variable>.d10
	bfc	r0, #0, #24	@ tmp316,,
	str	r0, [r3, #0]	@ tmp316,* <variable>.d10
	ldr	ip, [r5, #44]	@ <variable>.d11, <variable>.d11
	ldr	r2, [ip, #0]	@ tmp318,* <variable>.d11
	bfc	r2, #0, #24	@ tmp318,,
	str	r2, [ip, #0]	@ tmp318,* <variable>.d11
	ldr	r1, [r5, #44]	@ <variable>.d11, <variable>.d11
	ldr	r0, [r1, #0]	@ tmp320,* <variable>.d11
	bfc	r0, #24, #7	@ tmp320,,
	str	r0, [r1, #0]	@ tmp320,* <variable>.d11
	b	.L16	@
.L20:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #:lower16:.LANCHOR0	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r2, #:upper16:.LANCHOR0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39291,
	b	.L11	@
.L19:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #:lower16:.LANCHOR0	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r2, #:upper16:.LANCHOR0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39291,
	b	.L11	@
	.fnend
	.size	MP2HAL_V300R001_MakeDnMsg, .-MP2HAL_V300R001_MakeDnMsg
	.align	2
	.global	MP2HAL_V300R001_WriteSliceMsg
	.type	MP2HAL_V300R001_WriteSliceMsg, %function
MP2HAL_V300R001_WriteSliceMsg:
	.fnstart
.LFB1530:
	@ args = 0, pretend = 0, frame = 48
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
	mov	r4, r0	@ pMp2DecParam, pMp2DecParam
	ldr	r0, [r0, #284]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	mov	r5, #0	@ tmp231,
	str	r3, [fp, #-72]	@ StreamBaseAddr, %sfp
	movw	r3, #45308	@ tmp232,
	cmp	r0, #0	@ <variable>.slice_start_mbn,
	str	r1, [fp, #-56]	@ SlcDnMsgVirAddr, %sfp
	str	r2, [fp, #-84]	@ SlcDnMsgPhyAddr, %sfp
	ldr	r7, [r4, r3]	@ SliceNum, <variable>.SlcNum
	str	r5, [fp, #-48]	@ tmp231, D32
	streq	r0, [fp, #-76]	@ <variable>.slice_start_mbn, %sfp
	bne	.L45	@,
.L24:
	cmp	r7, #0	@ SliceNum,
	ble	.L27	@,
	ldr	r2, [fp, #-76]	@, %sfp
	mov	r5, #0	@ i,
	ldr	sl, [r4, #284]	@ prephitmp.1025, <variable>.slice_start_mbn
	sub	r6, fp, #48	@ tmp457,,
	ldr	r3, [r4, #240]	@ prephitmp.1074, <variable>.slice_start_mbn
	mov	r9, r2, asl #2	@,,
	str	r9, [fp, #-80]	@, %sfp
	mov	r9, #44	@ tmp456,
	b	.L36	@
.L28:
	add	r5, r5, #1	@ i, i,
	cmp	r7, r5	@ SliceNum, i
	ble	.L27	@,
.L46:
	sub	sl, r5, #1	@ tmp448, i,
	mla	r2, r9, r5, r4	@ tmp446, tmp456, i, pMp2DecParam
	mla	r3, r9, sl, r4	@ tmp452, tmp456, tmp448, pMp2DecParam
	ldr	sl, [r2, #284]	@ prephitmp.1025, <variable>.slice_start_mbn
	ldr	r3, [r3, #284]	@ prephitmp.1074, <variable>.slice_start_mbn
.L36:
	cmp	r5, #0	@ i,
	movle	r1, #0	@,
	movgt	r1, #1	@,
	cmp	sl, r3	@ prephitmp.1025, prephitmp.1074
	movhi	r1, #0	@,,
	cmp	r1, #0	@ tmp296,
	mov	sl, r1	@ tmp296,
	bne	.L28	@,
	mla	r8, r9, r5, r4	@ tmp301, tmp456, i, pMp2DecParam
	str	r1, [fp, #-48]	@ tmp296, D32
	ldr	r1, [fp, #-80]	@, %sfp
	mov	r0, #4	@,
	ldr	r2, [r6, #0]	@ tmp316,
	add	r3, r5, r1	@, i,
	str	r3, [fp, #-60]	@, %sfp
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	mov	ip, r3, asl #5	@,,
	str	ip, [fp, #-64]	@, %sfp
	ldr	ip, [r8, #252]	@ temp.1069, <variable>.BsPhyAddr
	ldr	lr, [r8, #260]	@ <variable>.BsLenInBit, <variable>.BsLenInBit
	and	r3, ip, #15	@ tmp303, temp.1069,
	bfi	r2, lr, #0, #24	@ tmp316, <variable>.BsLenInBit,,
	ldr	lr, [r8, #268]	@, <variable>.BsBitOffset
	add	r3, lr, r3, asl #3	@, bit_offset_0.1078,, tmp303,
	bfi	r2, r3, #24, #7	@ tmp318, bit_offset_0.1078,,
	str	r2, [r6, #0]	@ tmp318,
	ldr	r3, [fp, #-60]	@, %sfp
	ldr	lr, [fp, #-56]	@, %sfp
	str	r2, [lr, r3, asl #5]	@ D32.1083,
	str	ip, [fp, #-88]	@,
	bl	dprint_vfmw	@
	ldr	ip, [fp, #-88]	@,
	ldr	r1, [fp, #-60]	@, %sfp
	ldr	r0, [fp, #-72]	@, %sfp
	bic	r3, ip, #15	@ tmp323, temp.1069,
	ldr	lr, [fp, #-56]	@, %sfp
	rsb	r2, r0, r3	@ tmp324,, tmp323
	mov	r0, r1, asl #3	@ tmp326,,
	add	ip, r0, #1	@ tmp327, tmp326,
	mov	r3, sl	@ tmp325, tmp296
	bfi	r3, r2, #0, #24	@ tmp325, tmp324,,
	mov	r0, #4	@,
	str	r3, [lr, ip, asl #2]	@ D32.1091,
	movw	r1, #:lower16:.LC11	@,
	mov	r2, r3	@ D32.1091, tmp325
	movt	r1, #:upper16:.LC11	@,
	str	r3, [r6, #0]	@ tmp325,
	bl	dprint_vfmw	@
	ldr	r3, [fp, #-60]	@, %sfp
	str	sl, [fp, #-48]	@ tmp296, D32
	ldr	r0, [r8, #256]	@, <variable>.BsPhyAddr
	mov	r2, r3, asl #2	@ tmp353,,
	add	lr, r2, #1	@ tmp354, tmp353,
	and	ip, r0, #15	@ tmp337,,
	str	r0, [fp, #-68]	@, %sfp
	mov	r0, #4	@,
	ldr	r1, [r8, #264]	@ <variable>.BsLenInBit, <variable>.BsLenInBit
	ldr	r3, [r8, #272]	@ <variable>.BsBitOffset, <variable>.BsBitOffset
	ldr	r2, [r6, #0]	@ tmp350,
	add	r3, r3, ip, asl #3	@, bit_offset_1.1102, <variable>.BsBitOffset, tmp337,
	bfi	r2, r1, #0, #24	@ tmp350, <variable>.BsLenInBit,,
	movw	r1, #:lower16:.LC12	@,
	bfi	r2, r3, #24, #7	@ tmp352, bit_offset_1.1102,,
	str	r2, [r6, #0]	@ tmp352,
	ldr	r3, [fp, #-56]	@, %sfp
	movt	r1, #:upper16:.LC12	@,
	str	r2, [r3, lr, asl #3]	@ D32.1107,
	bl	dprint_vfmw	@
	str	sl, [fp, #-48]	@ tmp296, D32
	ldr	sl, [r8, #256]	@ <variable>.BsPhyAddr, <variable>.BsPhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC13	@,
	cmp	sl, #0	@ <variable>.BsPhyAddr,
	ldrne	ip, [fp, #-68]	@, %sfp
	ldrne	sl, [r6, #0]	@ tmp368,
	ldrne	lr, [fp, #-72]	@, %sfp
	ldreq	r2, [r6, #0]	@ tmp370,
	bicne	r2, ip, #15	@ tmp366,,
	bfieq	r2, sl, #0, #24	@ tmp370, <variable>.BsPhyAddr,,
	rsbne	r2, lr, r2	@ tmp367,, tmp366
	streq	r2, [r6, #0]	@ tmp370,
	bfine	sl, r2, #0, #24	@ tmp368, tmp367,,
	strne	sl, [r6, #0]	@ tmp368,
	ldr	r8, [fp, #-64]	@, %sfp
	ldr	r2, [fp, #-48]	@ D32.1117, D32
	ldr	ip, [fp, #-56]	@, %sfp
	add	r3, r8, #12	@ tmp371,,
	mul	sl, r9, r5	@ tmp376, tmp456, i
	add	r5, r5, #1	@ j, i,
	str	r2, [ip, r3]	@ D32.1117,
	bl	dprint_vfmw	@
	ldr	r2, [fp, #-60]	@, %sfp
	add	r8, sl, r4	@ tmp378, tmp376, pMp2DecParam
	mov	r0, #0	@,
	str	r0, [fp, #-48]	@, D32
	mov	r0, #4	@,
	ldr	lr, [r8, #292]	@ <variable>.quantiser_scale_code, <variable>.quantiser_scale_code
	mov	r1, r2, asl #1	@ tmp389,,
	ldr	r2, [r6, #0]	@ tmp381,
	add	r3, r1, #1	@ tmp390, tmp389,
	movw	r1, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC14	@,
	bfi	r2, lr, #0, #6	@ tmp381, <variable>.quantiser_scale_code,,
	str	r2, [r6, #0]	@ tmp381,
	ldr	ip, [r8, #288]	@ <variable>.intra_slice, <variable>.intra_slice
	bfi	r2, ip, #6, #1	@ tmp388, <variable>.intra_slice,,
	str	r2, [r6, #0]	@ tmp388,
	ldr	lr, [fp, #-56]	@, %sfp
	str	r2, [lr, r3, asl #4]	@ D32.1128,
	bl	dprint_vfmw	@
	mov	r1, #0	@,
	str	r1, [fp, #-48]	@, D32
	mov	r2, r1	@ tmp401,
	ldr	ip, [r8, #284]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	movw	r1, #:lower16:.LC15	@,
	ldr	r0, [fp, #-64]	@, %sfp
	movt	r1, #:upper16:.LC15	@,
	bfi	r2, ip, #0, #20	@ tmp401, <variable>.slice_start_mbn,,
	str	r2, [r6, #0]	@ tmp401,
	ldr	lr, [fp, #-56]	@, %sfp
	add	r3, r0, #20	@ tmp403,,
	mov	r0, #4	@,
	str	r2, [lr, r3]	@ D32.1133,
	bl	dprint_vfmw	@
	cmp	r7, r5	@ SliceNum, j
	ble	.L31	@,
	mla	ip, r9, r5, r4	@ tmp414, tmp456, j, pMp2DecParam
	ldr	r2, [r8, #284]	@ temp.1146, <variable>.slice_start_mbn
	ldr	r3, [ip, #284]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	cmp	r3, r2	@ <variable>.slice_start_mbn, temp.1146
	bhi	.L31	@,
	mvn	r1, r5	@ tmp465, j
	add	r3, r1, r7	@ tmp464, tmp465, SliceNum
	tst	r3, #1	@ tmp464,
	add	sl, sl, #248	@ tmp419, tmp376,
	add	sl, r4, sl	@ tmp420, pMp2DecParam, tmp419
	add	r3, sl, #4	@ ivtmp.1043, tmp420,
	beq	.L32	@,
	ldr	ip, [r3, #120]	@ D.39175, <variable>.slice_start_mbn
	add	r5, r5, #1	@ j, j,
	add	r3, sl, #48	@ ivtmp.1043, tmp420,
	cmp	ip, r2	@ D.39175, temp.1146
	bls	.L32	@,
	b	.L31	@
.L33:
	ldr	r0, [r3, #120]	@ D.39175, <variable>.slice_start_mbn
	add	r3, r3, #88	@ ivtmp.1043, ivtmp.1043,
	cmp	r0, r2	@ D.39175, temp.1146
	bhi	.L31	@,
	ldr	r1, [r1, #120]	@ D.39175, <variable>.slice_start_mbn
	add	r5, r5, #1	@ j, j,
	cmp	r1, r2	@ D.39175, temp.1146
	bhi	.L31	@,
.L32:
	add	r5, r5, #1	@ j, j,
	add	r1, r3, #44	@ tmp467, ivtmp.1043,
	cmp	r7, r5	@ SliceNum, j
	bgt	.L33	@,
.L31:
	cmp	r5, r7	@ j, SliceNum
	mlane	r3, r9, r5, r4	@ tmp427, tmp456, j, pMp2DecParam
	ldreqh	r2, [r4, #152]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	ldreqh	r3, [r4, #148]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	moveq	r8, #0	@ prephitmp.1023,
	ldrne	lr, [fp, #-76]	@, %sfp
	ldrne	r0, [fp, #-84]	@, %sfp
	muleq	r2, r2, r3	@ tmp423, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	addne	r8, r5, lr	@ tmp430, j,
	ldrne	r2, [r3, #284]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	mov	r3, #0	@ tmp434,
	addne	r8, r0, r8, asl #5	@, prephitmp.1023,, tmp430,
	ldr	r0, [fp, #-64]	@, %sfp
	ldr	lr, [fp, #-56]	@, %sfp
	sub	r1, r2, #1	@ slice_end_mbn, <variable>.slice_start_mbn,
	bfi	r3, r1, #0, #20	@ tmp434, slice_end_mbn,,
	add	ip, r0, #24	@ tmp435,,
	movw	r1, #:lower16:.LC16	@,
	mov	r0, #4	@,
	str	r3, [lr, ip]	@ D32.1142,
	mov	r2, r3	@ D32.1142, tmp434
	movt	r1, #:upper16:.LC16	@,
	str	r3, [r6, #0]	@ tmp434,
	bl	dprint_vfmw	@
	ldr	r2, [fp, #-64]	@, %sfp
	ldr	ip, [fp, #-56]	@, %sfp
	sub	r5, r5, #1	@ i, j,
	add	r3, r2, #28	@ tmp440,,
	mov	r0, #4	@,
	mov	r2, r8	@ D32.1148, prephitmp.1023
	movw	r1, #:lower16:.LC17	@,
	str	r8, [ip, r3]	@ D32.1148,
	movt	r1, #:upper16:.LC17	@,
	str	r8, [r6, #0]	@ prephitmp.1023, <variable>.next_slice_para_addr
	add	r5, r5, #1	@ i, i,
	bl	dprint_vfmw	@
	cmp	r7, r5	@ SliceNum, i
	bgt	.L46	@,
.L27:
	mov	r0, #0	@,
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L45:
	ldr	r6, [r4, #252]	@ D.39035, <variable>.BsPhyAddr
	mov	r2, #1	@ tmp240,
	ldr	ip, [r4, #268]	@ <variable>.BsBitOffset, <variable>.BsBitOffset
	mov	r0, #4	@,
	and	lr, r6, #15	@ tmp235, D.39035,
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	add	r3, ip, lr, asl #3	@, bit_offset_0, <variable>.BsBitOffset, tmp235,
	ldr	lr, [fp, #-56]	@, %sfp
	bfi	r2, r3, #24, #7	@ tmp240, bit_offset_0,,
	str	r2, [lr, #0]	@ tmp240,
	str	r2, [fp, #-48]	@ tmp240,
	bl	dprint_vfmw	@
	ldr	r3, [fp, #-72]	@, %sfp
	bic	r0, r6, #15	@ tmp245, D.39035,
	ldr	r2, [fp, #-56]	@, %sfp
	mov	r6, r5	@ tmp247, tmp231
	rsb	r1, r3, r0	@ tmp246,, tmp245
	mov	r0, #4	@,
	bfi	r6, r1, #0, #24	@ tmp247, tmp246,,
	movw	r1, #:lower16:.LC11	@,
	str	r6, [r2, #4]	@ tmp247,
	movt	r1, #:upper16:.LC11	@,
	mov	r2, r6	@, tmp247
	str	r6, [fp, #-48]	@ tmp247,
	bl	dprint_vfmw	@
	ldr	r6, [r4, #256]	@ D.39063, <variable>.BsPhyAddr
	ldr	ip, [r4, #272]	@ <variable>.BsBitOffset, <variable>.BsBitOffset
	mov	r2, #0	@ tmp255,
	and	r3, r6, #15	@ tmp251, D.39063,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC12	@,
	movt	r1, #:upper16:.LC12	@,
	add	r3, ip, r3, asl #3	@, bit_offset_1, <variable>.BsBitOffset, tmp251,
	bfi	r2, r3, #24, #7	@ tmp255, bit_offset_1,,
	ldr	r3, [fp, #-56]	@, %sfp
	str	r2, [r3, #8]	@ tmp255,
	str	r2, [fp, #-48]	@ tmp255,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #256]	@ <variable>.BsPhyAddr, <variable>.BsPhyAddr
	mov	lr, #1	@,
	movw	r1, #:lower16:.LC13	@,
	str	lr, [fp, #-76]	@, %sfp
	cmp	r0, #0	@ <variable>.BsPhyAddr,
	movt	r1, #:upper16:.LC13	@,
	bicne	r0, r6, #15	@ tmp261, D.39063,
	streq	r0, [fp, #-48]	@ <variable>.BsPhyAddr,
	ldrne	ip, [fp, #-72]	@, %sfp
	rsbne	r0, ip, r0	@ tmp262,, tmp261
	ldr	ip, [fp, #-56]	@, %sfp
	bfine	r5, r0, #0, #24	@ tmp263, tmp262,,
	strne	r5, [fp, #-48]	@ tmp263,
	ldr	r3, [fp, #-48]	@ D32.1055, D32
	mov	r0, #4	@,
	mov	r5, #0	@ tmp268,
	str	r3, [ip, #12]	@ D32.1055,
	mov	r2, r3	@, D32.1055
	bl	dprint_vfmw	@
	ldr	r1, [r4, #292]	@ <variable>.quantiser_scale_code, <variable>.quantiser_scale_code
	ldr	r2, [r4, #288]	@ <variable>.intra_slice, <variable>.intra_slice
	mov	r0, #4	@,
	ldr	lr, [fp, #-56]	@, %sfp
	and	r3, r1, #63	@ tmp272, <variable>.quantiser_scale_code,
	bfi	r3, r2, #6, #1	@ tmp272, <variable>.intra_slice,,
	movw	r1, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC14	@,
	str	r3, [lr, #16]	@ tmp272,
	mov	r2, r3	@, tmp272
	str	r3, [fp, #-48]	@ tmp272,
	bl	dprint_vfmw	@
	ldr	r0, [fp, #-56]	@, %sfp
	mov	ip, r5	@ tmp277, tmp268
	bfi	ip, r5, #0, #20	@ tmp277, tmp268,,
	movw	r1, #:lower16:.LC15	@,
	movt	r1, #:upper16:.LC15	@,
	str	ip, [r0, #20]	@ tmp277,
	mov	r2, ip	@, tmp277
	mov	r0, #4	@,
	str	ip, [fp, #-48]	@ tmp277,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #284]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	mov	r2, r5	@ tmp284, tmp268
	mov	r0, #4	@,
	sub	ip, r3, #1	@ tmp282, <variable>.slice_start_mbn,
	ldr	r3, [fp, #-56]	@, %sfp
	bfi	r2, ip, #0, #20	@ tmp284, tmp282,,
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	str	r2, [r3, #24]	@ tmp284,
	str	r2, [fp, #-48]	@ tmp284,
	bl	dprint_vfmw	@
	ldr	r2, [fp, #-56]	@, %sfp
	ldr	ip, [fp, #-84]	@, %sfp
	add	r1, ip, #32	@ tmp289,,
	str	r1, [r2, #28]	@ tmp289,
	str	r1, [fp, #-48]	@ tmp289, <variable>.next_slice_para_addr
	b	.L24	@
	.fnend
	.size	MP2HAL_V300R001_WriteSliceMsg, .-MP2HAL_V300R001_WriteSliceMsg
	.align	2
	.global	MP2HAL_V300R001_CfgDnMsg
	.type	MP2HAL_V300R001_CfgDnMsg, %function
MP2HAL_V300R001_CfgDnMsg:
	.fnstart
.LFB1534:
	@ args = 0, pretend = 0, frame = 8
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
	mov	r4, r0	@ pMp2DecParam, pMp2DecParam
	ldr	r0, [r1, #48]	@, <variable>.MsgSlotAddr
	mov	r6, r1	@ pHwMem, pHwMem
	mov	sl, r3	@ StreamBaseAddr, StreamBaseAddr
	mov	r9, #0	@ tmp302,
	str	r9, [fp, #-48]	@ tmp302, D32
	bl	MEM_Phy2Vir	@
	subs	r5, r0, #0	@ pMsgBase,
	beq	.L61	@,
	ldrh	r3, [r4, #152]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	cmp	r3, #512	@ <variable>.PicWidthInMb,
	bhi	.L62	@,
	ldrh	r2, [r4, #148]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	cmp	r2, #512	@ <variable>.PicHeightInMb,
	bhi	.L63	@,
	sub	lr, r3, #1	@ tmp321, <variable>.PicWidthInMb,
	ldr	r8, [r4, #180]	@ <variable>.Mpeg1Flag, <variable>.Mpeg1Flag
	sub	r2, r2, #1	@ tmp325, <variable>.PicHeightInMb,
	mov	ip, lr, asl #23	@ tmp326, tmp321,
	mov	r7, ip, lsr #23	@ tmp326, tmp326,
	bfi	r7, r2, #16, #9	@ tmp326, tmp325,,
	bfi	r7, r8, #25, #1	@ tmp328, <variable>.Mpeg1Flag,,
	str	r7, [r5, #0]	@ tmp328,* pMsgBase
	ldrb	r3, [r4, #5]	@ zero_extendqisi2	@ <variable>.FramePredFrameDct, <variable>.FramePredFrameDct
	ldrb	r1, [r4, #3]	@ zero_extendqisi2	@ <variable>.PictureStructure, <variable>.PictureStructure
	ldrb	r0, [r4, #4]	@ zero_extendqisi2	@ <variable>.SecondFieldFlag, <variable>.SecondFieldFlag
	and	r7, r3, #1	@ tmp334, <variable>.FramePredFrameDct,
	ldrb	lr, [r4, #7]	@ zero_extendqisi2	@ <variable>.ConcealmentMotionVectors, <variable>.ConcealmentMotionVectors
	bfi	r7, r1, #8, #2	@ tmp334, <variable>.PictureStructure,,
	ldrb	ip, [r4, #0]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	bfi	r7, r0, #10, #1	@ tmp338, <variable>.SecondFieldFlag,,
	ldrb	r8, [r4, #2]	@ zero_extendqisi2	@ <variable>.Mp1FwdmvFullPel, <variable>.Mp1FwdmvFullPel
	bfi	r7, lr, #16, #1	@ tmp342, <variable>.ConcealmentMotionVectors,,
	ldrb	r2, [r4, #1]	@ zero_extendqisi2	@ <variable>.Mp1BwdmvFullPel, <variable>.Mp1BwdmvFullPel
	bfi	r7, ip, #24, #3	@ tmp346, <variable>.PicCodingType,,
	bfi	r7, r8, #27, #1	@ tmp350, <variable>.Mp1FwdmvFullPel,,
	bfi	r7, r2, #28, #1	@ tmp354, <variable>.Mp1BwdmvFullPel,,
	str	r7, [r5, #4]	@ tmp354,
	ldrb	r3, [r4, #15]	@ zero_extendqisi2	@ <variable>.Fcode, <variable>.Fcode
	ldrb	r1, [r4, #14]	@ zero_extendqisi2	@ <variable>.Fcode, <variable>.Fcode
	ldrb	r0, [r4, #13]	@ zero_extendqisi2	@ <variable>.Fcode, <variable>.Fcode
	and	r8, r3, #15	@ tmp363, <variable>.Fcode,
	ldrb	lr, [r4, #12]	@ zero_extendqisi2	@ <variable>.Fcode, <variable>.Fcode
	bfi	r8, r1, #8, #4	@ tmp363, <variable>.Fcode,,
	ldrb	ip, [r4, #6]	@ zero_extendqisi2	@ <variable>.TopFieldFirst, <variable>.TopFieldFirst
	bfi	r8, r0, #16, #4	@ tmp367, <variable>.Fcode,,
	bfi	r8, lr, #24, #4	@ tmp371, <variable>.Fcode,,
	bfi	r8, ip, #31, #1	@ tmp375, <variable>.TopFieldFirst,,
	str	r8, [r5, #8]	@ tmp375,
	ldrb	r7, [r4, #11]	@ zero_extendqisi2	@ <variable>.IntraDcPrecision, <variable>.IntraDcPrecision
	ldrb	r2, [r4, #10]	@ zero_extendqisi2	@ <variable>.QuantType, <variable>.QuantType
	ldrb	r1, [r4, #9]	@ zero_extendqisi2	@ <variable>.IntraVlcFormat, <variable>.IntraVlcFormat
	and	r3, r7, #3	@ tmp384, <variable>.IntraDcPrecision,
	ldrb	r0, [r4, #8]	@ zero_extendqisi2	@ <variable>.AlternateScan, <variable>.AlternateScan
	bfi	r3, r2, #8, #1	@ tmp384, <variable>.QuantType,,
	bfi	r3, r1, #16, #1	@ tmp388, <variable>.IntraVlcFormat,,
	bfi	r3, r0, #24, #1	@ tmp392, <variable>.AlternateScan,,
	str	r3, [r5, #12]	@ tmp392,
	ldr	lr, [r4, #192]	@ <variable>.BwdRefPhyAddr, <variable>.BwdRefPhyAddr
	bic	ip, lr, #15	@ tmp399, <variable>.BwdRefPhyAddr,
	str	ip, [r5, #16]	@ tmp399,
	ldr	r8, [r4, #196]	@ <variable>.FwdRefPhyAddr, <variable>.FwdRefPhyAddr
	bic	r7, r8, #15	@ tmp403, <variable>.FwdRefPhyAddr,
	str	r7, [r5, #20]	@ tmp403,
	ldr	r2, [r4, #224]	@ <variable>.DispFramePhyAddr, <variable>.DispFramePhyAddr
	bic	r1, r2, #15	@ tmp407, <variable>.DispFramePhyAddr,
	str	r1, [r5, #24]	@ tmp407,
	ldr	r0, [r4, #240]	@ <variable>.PmvColmbPhyAddr, <variable>.PmvColmbPhyAddr
	bic	r3, r0, #15	@ tmp411, <variable>.PmvColmbPhyAddr,
	str	r3, [fp, #-48]	@ tmp411, <variable>.current_pmv_addr
	str	r3, [r5, #28]	@ tmp411,
	ldr	r0, [r4, #156]	@, <variable>.StreamPhyAddr
	bl	MEM_Phy2Vir	@
	mov	r7, r0	@ D.39861,
	ldr	r0, [r4, #160]	@, <variable>.StreamPhyAddr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r4, #176]	@ <variable>.StreamLength, <variable>.StreamLength
	cmp	r3, #0	@ <variable>.StreamLength,
	mov	r8, r0	@ D.39865,
	beq	.L64	@,
	ldr	ip, [r4, #168]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	r3, r9	@ tmp744, tmp302
	ldr	r1, [r4, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	cmp	r7, #0	@ D.39861,
	ldr	r0, [r4, #160]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	ldr	lr, [r4, #156]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	add	r9, r0, ip, lsr #3	@, BytePos1, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	add	r2, lr, r1, lsr #3	@, BytePos0.1282, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	bic	r1, r9, #15	@ tmp742, BytePos1,
	bic	r0, r2, #15	@ tmp741, BytePos0.1282,
	and	lr, r2, #15	@ tmp749, BytePos0.1282,
	rsb	ip, r1, r0	@ tmp743, tmp742, tmp741
	bfi	r3, ip, #0, #24	@ tmp744, tmp743,,
	str	r3, [r5, #32]	@ tmp744,
	ldr	r3, [r4, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	ip, [r4, #172]	@ <variable>.StreamLength, <variable>.StreamLength
	and	r1, r3, #7	@ tmp754, <variable>.StreamBitOffset,
	add	r2, r1, lr, asl #3	@, tmp757, tmp754, tmp749,
	bic	lr, ip, #-16777216	@ tmp758, <variable>.StreamLength,
	bfi	lr, r2, #24, #7	@ tmp758, tmp757,,
	str	lr, [fp, #-48]	@ tmp758,
	str	lr, [r5, #36]	@ tmp758,
	beq	.L56	@,
	ldr	r3, [r4, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	r0, #8	@,
	movw	r1, #:lower16:.LC5	@,
	movt	r1, #:upper16:.LC5	@,
	add	lr, r7, r3, lsr #3	@, rp, D.39861, <variable>.StreamBitOffset,
	ldrb	r2, [r7, r3, lsr #3]	@ zero_extendqisi2	@ tmp762,* D.39861
	ldrb	ip, [lr, #2]	@ zero_extendqisi2	@ tmp764,
	ldrb	r3, [lr, #1]	@ zero_extendqisi2	@ tmp763,
	str	ip, [sp, #0]	@ tmp764,
	ldrb	ip, [lr, #3]	@ zero_extendqisi2	@ tmp765,
	str	ip, [sp, #4]	@ tmp765,
	ldrb	ip, [lr, #4]	@ zero_extendqisi2	@ tmp766,
	str	ip, [sp, #8]	@ tmp766,
	ldrb	ip, [lr, #5]	@ zero_extendqisi2	@ tmp767,
	str	ip, [sp, #12]	@ tmp767,
	ldrb	ip, [lr, #6]	@ zero_extendqisi2	@ tmp768,
	str	ip, [sp, #16]	@ tmp768,
	ldrb	ip, [lr, #7]	@ zero_extendqisi2	@ tmp769,
	str	ip, [sp, #20]	@ tmp769,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #172]	@ <variable>.StreamLength, <variable>.StreamLength
	mov	r0, #9	@,
	ldr	ip, [r4, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	movw	r1, #:lower16:.LC6	@,
	add	r2, r3, #7	@ tmp776, <variable>.StreamLength,
	cmp	r3, #0	@ <variable>.StreamLength,
	movt	r1, #:upper16:.LC6	@,
	movlt	r3, r2	@ <variable>.StreamLength, tmp776
	mov	r2, ip, lsr #3	@ tmp770, <variable>.StreamBitOffset,
	sub	r2, r2, #8	@ tmp772, tmp770,
	add	r3, r2, r3, asr #3	@, tmp778, tmp772, <variable>.StreamLength,
	add	ip, r7, r3	@ rp.1311, D.39861, tmp778
	ldrb	r2, [r7, r3]	@ zero_extendqisi2	@ tmp780,
	ldrb	r7, [ip, #2]	@ zero_extendqisi2	@ tmp782,
	ldrb	r3, [ip, #1]	@ zero_extendqisi2	@ tmp781,
	str	r7, [sp, #0]	@ tmp782,
	ldrb	lr, [ip, #3]	@ zero_extendqisi2	@ tmp783,
	str	lr, [sp, #4]	@ tmp783,
	ldrb	r7, [ip, #4]	@ zero_extendqisi2	@ tmp784,
	str	r7, [sp, #8]	@ tmp784,
	ldrb	lr, [ip, #5]	@ zero_extendqisi2	@ tmp785,
	str	lr, [sp, #12]	@ tmp785,
	ldrb	r7, [ip, #6]	@ zero_extendqisi2	@ tmp786,
	str	r7, [sp, #16]	@ tmp786,
	ldrb	lr, [ip, #7]	@ zero_extendqisi2	@ tmp787,
	str	lr, [sp, #20]	@ tmp787,
	bl	dprint_vfmw	@
	ldr	r7, [r4, #172]	@ <variable>.StreamLength, <variable>.StreamLength
	movw	r1, #:lower16:.LC7	@,
	ldr	r3, [r4, #156]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	movt	r1, #:upper16:.LC7	@,
	mov	r0, #22	@,
	add	r2, r7, r3	@, <variable>.StreamLength, <variable>.StreamPhyAddr
	bl	dprint_vfmw	@
.L56:
	mov	r1, #0	@ tmp792,
	and	r9, r9, #15	@ tmp800, BytePos1,
	mov	r3, r1	@ tmp794, tmp792
	bfi	r3, r1, #0, #24	@ tmp794, tmp792,,
	str	r3, [r5, #40]	@ tmp794,
	cmp	r8, r1	@ D.39865,
	ldr	ip, [r4, #176]	@ <variable>.StreamLength, <variable>.StreamLength
	ldr	r2, [r4, #168]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	add	lr, ip, #24	@ tmp796, <variable>.StreamLength,
	and	r7, r2, #7	@ tmp805, <variable>.StreamBitOffset,
	bic	r1, lr, #-16777216	@ tmp809, tmp796,
	add	r0, r7, r9, asl #3	@, tmp808, tmp805, tmp800,
	bfi	r1, r0, #24, #7	@ tmp809, tmp808,,
	str	r1, [fp, #-48]	@ tmp809,
	str	r1, [r5, #44]	@ tmp809,
	beq	.L57	@,
	ldr	r3, [r4, #168]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	r0, #8	@,
	movw	r1, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC8	@,
	add	r7, r8, r3, lsr #3	@, rp, D.39865, <variable>.StreamBitOffset,
	ldrb	r2, [r8, r3, lsr #3]	@ zero_extendqisi2	@ tmp813,* D.39865
	ldrb	ip, [r7, #2]	@ zero_extendqisi2	@ tmp815,
	ldrb	r3, [r7, #1]	@ zero_extendqisi2	@ tmp814,
	str	ip, [sp, #0]	@ tmp815,
	ldrb	lr, [r7, #3]	@ zero_extendqisi2	@ tmp816,
	str	lr, [sp, #4]	@ tmp816,
	ldrb	ip, [r7, #4]	@ zero_extendqisi2	@ tmp817,
	str	ip, [sp, #8]	@ tmp817,
	ldrb	lr, [r7, #5]	@ zero_extendqisi2	@ tmp818,
	str	lr, [sp, #12]	@ tmp818,
	ldrb	ip, [r7, #6]	@ zero_extendqisi2	@ tmp819,
	str	ip, [sp, #16]	@ tmp819,
	ldrb	lr, [r7, #7]	@ zero_extendqisi2	@ tmp820,
	str	lr, [sp, #20]	@ tmp820,
	bl	dprint_vfmw	@
	ldr	r7, [r4, #176]	@ <variable>.StreamLength, <variable>.StreamLength
	movw	r1, #:lower16:.LC9	@,
	ldr	r3, [r4, #168]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	movt	r1, #:upper16:.LC9	@,
	add	r2, r7, #7	@ tmp827, <variable>.StreamLength,
	cmp	r7, #0	@ <variable>.StreamLength,
	mov	r0, #9	@,
	mov	ip, r3, lsr #3	@ tmp821, <variable>.StreamBitOffset,
	movlt	r7, r2	@ <variable>.StreamLength, tmp827
	sub	r2, ip, #8	@ tmp823, tmp821,
	add	r3, r2, r7, asr #3	@, tmp829, tmp823, <variable>.StreamLength,
	add	r7, r8, r3	@ rp.1352, D.39865, tmp829
	ldrb	r2, [r8, r3]	@ zero_extendqisi2	@ tmp831,
	ldrb	ip, [r7, #2]	@ zero_extendqisi2	@ tmp833,
	ldrb	r3, [r7, #1]	@ zero_extendqisi2	@ tmp832,
	str	ip, [sp, #0]	@ tmp833,
	ldrb	lr, [r7, #3]	@ zero_extendqisi2	@ tmp834,
	str	lr, [sp, #4]	@ tmp834,
	ldrb	r8, [r7, #4]	@ zero_extendqisi2	@ tmp835,
	str	r8, [sp, #8]	@ tmp835,
	ldrb	ip, [r7, #5]	@ zero_extendqisi2	@ tmp836,
	str	ip, [sp, #12]	@ tmp836,
	ldrb	lr, [r7, #6]	@ zero_extendqisi2	@ tmp837,
	str	lr, [sp, #16]	@ tmp837,
	ldrb	r8, [r7, #7]	@ zero_extendqisi2	@ tmp838,
	str	r8, [sp, #20]	@ tmp838,
	bl	dprint_vfmw	@
.L57:
	ldrb	r0, [r4, #80]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r7, #0	@ tmp727,
	ldrb	r3, [r4, #96]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	ip, [r4, #112]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r8, [r4, #128]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	r0, [fp, #-48]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_0
	strb	r3, [fp, #-47]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_1
	strb	ip, [fp, #-46]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_2
	strb	r8, [fp, #-45]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_3
	ldr	r1, [fp, #-48]	@ D32.1461, D32
	str	r1, [r5, #64]	@ D32.1461,
	ldrb	r2, [r4, #16]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	ldrb	lr, [r4, #32]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	ldrb	r3, [r4, #48]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	ldrb	ip, [r4, #64]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	r2, [fp, #-48]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_0
	strb	lr, [fp, #-47]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_1
	strb	r3, [fp, #-46]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_2
	strb	ip, [fp, #-45]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_3
	ldr	r8, [fp, #-48]	@ D32.1429, D32
	str	r8, [r5, #128]	@ D32.1429,
	ldrb	r0, [r4, #88]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r1, [r4, #104]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r2, [r4, #120]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	lr, [r4, #136]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	r0, [fp, #-48]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_0
	strb	r1, [fp, #-47]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_1
	strb	r2, [fp, #-46]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_2
	strb	lr, [fp, #-45]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_3
	ldr	r3, [fp, #-48]	@ D32.1512, D32
	str	r3, [r5, #68]	@ D32.1512,
	ldrb	ip, [r4, #24]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	ldrb	r8, [r4, #40]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	ip, [fp, #-48]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_0
	strb	r8, [fp, #-47]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_1
	ldrb	lr, [r4, #56]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	ldrb	r0, [r4, #72]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	lr, [fp, #-46]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_2
	strb	r0, [fp, #-45]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_3
	ldr	r1, [fp, #-48]	@ D32.1520, D32
	str	r1, [r5, #132]	@ D32.1520,
	ldrb	r2, [r4, #81]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r3, [r4, #97]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	ip, [r4, #113]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r8, [r4, #129]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	r2, [fp, #-48]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_0
	strb	r3, [fp, #-47]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_1
	strb	ip, [fp, #-46]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_2
	strb	r8, [fp, #-45]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_3
	ldr	lr, [fp, #-48]	@ D32.1528, D32
	str	lr, [r5, #72]	@ D32.1528,
	ldrb	r0, [r4, #17]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	ldrb	r1, [r4, #33]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	ldrb	r2, [r4, #49]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	ldrb	r3, [r4, #65]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	r0, [fp, #-48]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_0
	strb	r1, [fp, #-47]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_1
	strb	r2, [fp, #-46]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_2
	strb	r3, [fp, #-45]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_3
	ldr	ip, [fp, #-48]	@ D32.1536, D32
	str	ip, [r5, #136]	@ D32.1536,
	ldrb	r8, [r4, #89]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	lr, [r4, #105]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r2, [r4, #121]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r3, [r4, #137]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	r8, [fp, #-48]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_0
	strb	lr, [fp, #-47]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_1
	strb	r2, [fp, #-46]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_2
	strb	r3, [fp, #-45]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_3
	ldr	r1, [fp, #-48]	@ D32.1544, D32
	str	r1, [r5, #76]	@ D32.1544,
	ldrb	r0, [r4, #25]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	ldrb	ip, [r4, #41]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	ldrb	r8, [r4, #57]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	ldrb	lr, [r4, #73]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	r0, [fp, #-48]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_0
	strb	ip, [fp, #-47]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_1
	strb	r8, [fp, #-46]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_2
	strb	lr, [fp, #-45]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_3
	ldr	r2, [fp, #-48]	@ D32.1552, D32
	str	r2, [r5, #140]	@ D32.1552,
	ldrb	r3, [r4, #82]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r1, [r4, #98]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	ip, [r4, #114]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r8, [r4, #130]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	r3, [fp, #-48]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_0
	strb	r1, [fp, #-47]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_1
	strb	ip, [fp, #-46]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_2
	strb	r8, [fp, #-45]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_3
	ldr	lr, [fp, #-48]	@ D32.1560, D32
	str	lr, [r5, #80]	@ D32.1560,
	ldrb	r0, [r4, #18]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	ldrb	r2, [r4, #34]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	ldrb	r3, [r4, #50]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	ldrb	ip, [r4, #66]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	r0, [fp, #-48]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_0
	strb	r2, [fp, #-47]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_1
	strb	r3, [fp, #-46]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_2
	strb	ip, [fp, #-45]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_3
	ldr	r1, [fp, #-48]	@ D32.1568, D32
	str	r1, [r5, #144]	@ D32.1568,
	ldrb	r8, [r4, #90]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	r8, [fp, #-48]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_0
	ldrb	lr, [r4, #106]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r2, [r4, #122]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r0, [r4, #138]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	lr, [fp, #-47]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_1
	strb	r2, [fp, #-46]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_2
	strb	r0, [fp, #-45]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_3
	ldr	r3, [fp, #-48]	@ D32.1576, D32
	str	r3, [r5, #84]	@ D32.1576,
	ldrb	ip, [r4, #26]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	ldrb	r1, [r4, #42]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	ldrb	r8, [r4, #58]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	ldrb	lr, [r4, #74]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	ip, [fp, #-48]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_0
	strb	r1, [fp, #-47]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_1
	strb	r8, [fp, #-46]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_2
	strb	lr, [fp, #-45]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_3
	ldr	r2, [fp, #-48]	@ D32.1584, D32
	str	r2, [r5, #148]	@ D32.1584,
	ldrb	r0, [r4, #83]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r3, [r4, #99]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	ip, [r4, #115]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r8, [r4, #131]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	r0, [fp, #-48]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_0
	strb	r3, [fp, #-47]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_1
	strb	ip, [fp, #-46]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_2
	strb	r8, [fp, #-45]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_3
	ldr	lr, [fp, #-48]	@ D32.1592, D32
	str	lr, [r5, #88]	@ D32.1592,
	ldrb	r1, [r4, #19]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	ldrb	r2, [r4, #35]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	ldrb	r3, [r4, #51]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	r1, [fp, #-48]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_0
	strb	r2, [fp, #-47]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_1
	strb	r3, [fp, #-46]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_2
	ldrb	r0, [r4, #67]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	r0, [fp, #-45]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_3
	ldr	ip, [fp, #-48]	@ D32.1600, D32
	str	ip, [r5, #152]	@ D32.1600,
	ldrb	r8, [r4, #91]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	lr, [r4, #107]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r2, [r4, #123]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r3, [r4, #139]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	r8, [fp, #-48]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_0
	strb	lr, [fp, #-47]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_1
	strb	r2, [fp, #-46]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_2
	strb	r3, [fp, #-45]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_3
	ldr	r1, [fp, #-48]	@ D32.1608, D32
	str	r1, [r5, #92]	@ D32.1608,
	ldrb	r0, [r4, #27]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	ldrb	ip, [r4, #43]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	ldrb	r8, [r4, #59]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	ldrb	lr, [r4, #75]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	r0, [fp, #-48]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_0
	strb	ip, [fp, #-47]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_1
	strb	r8, [fp, #-46]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_2
	strb	lr, [fp, #-45]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_3
	ldr	r2, [fp, #-48]	@ D32.1616, D32
	str	r2, [r5, #156]	@ D32.1616,
	ldrb	r3, [r4, #84]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r1, [r4, #100]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	ip, [r4, #116]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r8, [r4, #132]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	r3, [fp, #-48]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_0
	strb	r1, [fp, #-47]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_1
	strb	ip, [fp, #-46]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_2
	strb	r8, [fp, #-45]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_3
	ldr	lr, [fp, #-48]	@ D32.1624, D32
	str	lr, [r5, #96]	@ D32.1624,
	ldrb	r0, [r4, #20]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	ldrb	r2, [r4, #36]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	ldrb	r3, [r4, #52]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	ldrb	ip, [r4, #68]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	r0, [fp, #-48]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_0
	strb	r2, [fp, #-47]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_1
	strb	r3, [fp, #-46]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_2
	strb	ip, [fp, #-45]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_3
	ldr	r1, [fp, #-48]	@ D32.1632, D32
	str	r1, [r5, #160]	@ D32.1632,
	ldrb	r8, [r4, #92]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	lr, [r4, #108]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r2, [r4, #124]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r3, [r4, #140]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	r8, [fp, #-48]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_0
	strb	lr, [fp, #-47]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_1
	strb	r2, [fp, #-46]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_2
	strb	r3, [fp, #-45]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_3
	ldr	ip, [fp, #-48]	@ D32.1640, D32
	str	ip, [r5, #100]	@ D32.1640,
	ldrb	r0, [r4, #28]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	ldrb	r1, [r4, #44]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	ldrb	r8, [r4, #60]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	ldrb	lr, [r4, #76]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	r0, [fp, #-48]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_0
	strb	r1, [fp, #-47]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_1
	strb	r8, [fp, #-46]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_2
	strb	lr, [fp, #-45]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_3
	ldr	r3, [fp, #-48]	@ D32.1648, D32
	str	r3, [r5, #164]	@ D32.1648,
	ldrb	r2, [r4, #85]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	ip, [r4, #101]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	r2, [fp, #-48]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_0
	strb	ip, [fp, #-47]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_1
	ldrb	r8, [r4, #117]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r0, [r4, #133]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	r8, [fp, #-46]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_2
	strb	r0, [fp, #-45]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_3
	ldr	r1, [fp, #-48]	@ D32.1656, D32
	str	r1, [r5, #104]	@ D32.1656,
	ldrb	lr, [r4, #21]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	ldrb	r3, [r4, #37]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	ldrb	r2, [r4, #53]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	ldrb	ip, [r4, #69]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	lr, [fp, #-48]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_0
	strb	r3, [fp, #-47]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_1
	strb	r2, [fp, #-46]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_2
	strb	ip, [fp, #-45]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_3
	ldr	r8, [fp, #-48]	@ D32.1664, D32
	str	r8, [r5, #168]	@ D32.1664,
	ldrb	r0, [r4, #93]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r1, [r4, #109]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	lr, [r4, #125]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r3, [r4, #141]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	r0, [fp, #-48]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_0
	strb	r1, [fp, #-47]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_1
	strb	lr, [fp, #-46]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_2
	strb	r3, [fp, #-45]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_3
	ldr	r2, [fp, #-48]	@ D32.1672, D32
	str	r2, [r5, #108]	@ D32.1672,
	ldrb	ip, [r4, #29]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	ldrb	r8, [r4, #45]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	ldrb	lr, [r4, #61]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	ldrb	r3, [r4, #77]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	ip, [fp, #-48]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_0
	strb	r8, [fp, #-47]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_1
	strb	lr, [fp, #-46]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_2
	strb	r3, [fp, #-45]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_3
	ldr	r1, [fp, #-48]	@ D32.1680, D32
	str	r1, [r5, #172]	@ D32.1680,
	ldrb	r0, [r4, #86]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r2, [r4, #102]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	ip, [r4, #118]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r8, [r4, #134]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	r0, [fp, #-48]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_0
	strb	r2, [fp, #-47]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_1
	strb	ip, [fp, #-46]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_2
	strb	r8, [fp, #-45]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_3
	ldr	lr, [fp, #-48]	@ D32.1688, D32
	str	lr, [r5, #112]	@ D32.1688,
	ldrb	r3, [r4, #22]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	ldrb	r1, [r4, #38]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	ldrb	r2, [r4, #54]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	ldrb	ip, [r4, #70]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	r3, [fp, #-48]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_0
	strb	r1, [fp, #-47]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_1
	strb	r2, [fp, #-46]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_2
	strb	ip, [fp, #-45]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_3
	ldr	r8, [fp, #-48]	@ D32.1696, D32
	str	r8, [r5, #176]	@ D32.1696,
	ldrb	r0, [r4, #94]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	lr, [r4, #110]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r3, [r4, #126]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	ip, [r4, #142]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	r0, [fp, #-48]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_0
	strb	lr, [fp, #-47]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_1
	strb	r3, [fp, #-46]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_2
	strb	ip, [fp, #-45]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_3
	ldr	r1, [fp, #-48]	@ D32.1704, D32
	str	r1, [r5, #116]	@ D32.1704,
	ldrb	r2, [r4, #30]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	r2, [fp, #-48]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_0
	ldrb	r8, [r4, #46]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	ldrb	lr, [r4, #62]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	ldrb	r0, [r4, #78]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	r8, [fp, #-47]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_1
	strb	lr, [fp, #-46]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_2
	strb	r0, [fp, #-45]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_3
	ldr	r3, [fp, #-48]	@ D32.1712, D32
	str	r3, [r5, #180]	@ D32.1712,
	ldrb	ip, [r4, #87]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r1, [r4, #103]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r2, [r4, #119]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r8, [r4, #135]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	ip, [fp, #-48]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_0
	strb	r1, [fp, #-47]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_1
	strb	r2, [fp, #-46]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_2
	strb	r8, [fp, #-45]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_3
	ldr	lr, [fp, #-48]	@ D32.1395, D32
	str	lr, [r5, #120]	@ D32.1395,
	ldrb	r0, [r4, #23]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	ldrb	r3, [r4, #39]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	ldrb	ip, [r4, #55]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	ldrb	r8, [r4, #71]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	r0, [fp, #-48]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_0
	strb	r3, [fp, #-47]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_1
	strb	ip, [fp, #-46]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_2
	strb	r8, [fp, #-45]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_3
	ldr	r1, [fp, #-48]	@ D32.1403, D32
	str	r1, [r5, #184]	@ D32.1403,
	ldrb	r2, [r4, #95]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	lr, [r4, #111]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r3, [r4, #127]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	r2, [fp, #-48]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_0
	strb	lr, [fp, #-47]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_1
	strb	r3, [fp, #-46]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_2
	ldrb	ip, [r4, #143]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	strb	ip, [fp, #-45]	@ <variable>.IntraQuantTab, <variable>.intra_quantiser_matrix_3
	ldr	r8, [fp, #-48]	@ D32.1377, D32
	str	r8, [r5, #124]	@ D32.1377,
	ldrb	r0, [r4, #31]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	ldrb	r1, [r4, #47]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	ldrb	r2, [r4, #63]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	ldrb	lr, [r4, #79]	@ zero_extendqisi2	@ <variable>.NonIntraQuantTab, <variable>.NonIntraQuantTab
	strb	r0, [fp, #-48]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_0
	strb	r1, [fp, #-47]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_1
	strb	r2, [fp, #-46]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_2
	strb	lr, [fp, #-45]	@ <variable>.NonIntraQuantTab, <variable>.non_intra_quantiser_matrix_3
	ldr	r3, [fp, #-48]	@ D32.1380, D32
	str	r3, [r5, #188]	@ D32.1380,
	ldr	ip, [r6, #1140]	@ <variable>.PmvTopAddr, <variable>.PmvTopAddr
	bic	r8, ip, #15	@ tmp730, <variable>.PmvTopAddr,
	str	r8, [fp, #-48]	@ tmp730, <variable>.pmv_top_addr
	str	r8, [r5, #192]	@ tmp730,
	ldr	lr, [r6, #48]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	bic	r2, lr, #15	@ tmp731, <variable>.MsgSlotAddr,
	add	r8, r2, #256	@ SlcDnMsgPhyAddr, tmp731,
	mov	r0, r8	@, SlcDnMsgPhyAddr
	bl	MEM_Phy2Vir	@
	subs	r1, r0, #0	@ D.40044,
	beq	.L65	@,
	str	r8, [fp, #-48]	@ SlcDnMsgPhyAddr, <variable>.first_slc_dnmsg_addr
	mov	r0, r4	@, pMp2DecParam
	str	r8, [r5, #252]	@ SlcDnMsgPhyAddr,
	mov	r2, r8	@, SlcDnMsgPhyAddr
	mov	r3, sl	@, StreamBaseAddr
	bl	MP2HAL_V300R001_WriteSliceMsg	@
	movw	r0, #:lower16:g_PrintEnable	@ tmp842,
	movt	r0, #:upper16:g_PrintEnable	@ tmp842,
	ldr	r1, [r0, #0]	@ g_PrintEnable, g_PrintEnable
	ands	r0, r1, #16	@ tmp843, g_PrintEnable,
	beq	.L49	@,
	movw	lr, #:lower16:.LANCHOR1	@ tmp845,
	movt	lr, #:upper16:.LANCHOR1	@ tmp845,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC20	@,
	ldr	r2, [lr, #0]	@ num, num
	movt	r1, #:upper16:.LC20	@,
	add	r2, r2, #1	@ num.511, num,
	str	r2, [lr, #0]	@ num.511, num
	ldr	r3, [r6, #48]	@, <variable>.MsgSlotAddr
	bl	dprint_vfmw	@
	ldmia	r5, {r3, ip}	@ phole ldm
	mov	r2, r7	@, tmp727
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC21	@,
	str	ip, [sp, #0]	@ tmp851,
	movt	r1, #:upper16:.LC21	@,
	ldr	ip, [r5, #8]	@ tmp852,
	str	ip, [sp, #4]	@ tmp852,
	ldr	ip, [r5, #12]	@ tmp853,
	str	ip, [sp, #8]	@ tmp853,
	bl	dprint_vfmw	@
	ldr	ip, [r5, #20]	@ tmp855,
	mov	r0, #4	@,
	ldr	r3, [r5, #16]	@ tmp854,
	mov	r2, r0	@,
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	str	ip, [sp, #0]	@ tmp855,
	ldr	ip, [r5, #24]	@ tmp856,
	str	ip, [sp, #4]	@ tmp856,
	ldr	ip, [r5, #28]	@ tmp857,
	str	ip, [sp, #8]	@ tmp857,
	bl	dprint_vfmw	@
	ldr	ip, [r5, #36]	@ tmp859,
	mov	r2, #8	@,
	ldr	r3, [r5, #32]	@ tmp858,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	str	ip, [sp, #0]	@ tmp859,
	ldr	ip, [r5, #40]	@ tmp860,
	str	ip, [sp, #4]	@ tmp860,
	ldr	ip, [r5, #44]	@ tmp861,
	str	ip, [sp, #8]	@ tmp861,
	bl	dprint_vfmw	@
	ldr	ip, [r5, #52]	@ tmp863,
	mov	r2, #12	@,
	ldr	r3, [r5, #48]	@ tmp862,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	str	ip, [sp, #0]	@ tmp863,
	ldr	ip, [r5, #56]	@ tmp864,
	str	ip, [sp, #4]	@ tmp864,
	ldr	ip, [r5, #60]	@ tmp865,
	str	ip, [sp, #8]	@ tmp865,
	bl	dprint_vfmw	@
	ldr	ip, [r5, #68]	@ tmp867,
	mov	r2, #16	@,
	ldr	r3, [r5, #64]	@ tmp866,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	str	ip, [sp, #0]	@ tmp867,
	ldr	ip, [r5, #72]	@ tmp868,
	str	ip, [sp, #4]	@ tmp868,
	ldr	ip, [r5, #76]	@ tmp869,
	str	ip, [sp, #8]	@ tmp869,
	bl	dprint_vfmw	@
	ldr	ip, [r5, #84]	@ tmp871,
	mov	r2, #20	@,
	ldr	r3, [r5, #80]	@ tmp870,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	str	ip, [sp, #0]	@ tmp871,
	ldr	ip, [r5, #88]	@ tmp872,
	str	ip, [sp, #4]	@ tmp872,
	ldr	ip, [r5, #92]	@ tmp873,
	str	ip, [sp, #8]	@ tmp873,
	bl	dprint_vfmw	@
	ldr	ip, [r5, #100]	@ tmp875,
	mov	r2, #24	@,
	ldr	r3, [r5, #96]	@ tmp874,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	str	ip, [sp, #0]	@ tmp875,
	ldr	ip, [r5, #104]	@ tmp876,
	str	ip, [sp, #4]	@ tmp876,
	ldr	ip, [r5, #108]	@ tmp877,
	str	ip, [sp, #8]	@ tmp877,
	bl	dprint_vfmw	@
	ldr	ip, [r5, #116]	@ tmp879,
	mov	r2, #28	@,
	ldr	r3, [r5, #112]	@ tmp878,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	str	ip, [sp, #0]	@ tmp879,
	ldr	ip, [r5, #120]	@ tmp880,
	str	ip, [sp, #4]	@ tmp880,
	ldr	ip, [r5, #124]	@ tmp881,
	str	ip, [sp, #8]	@ tmp881,
	bl	dprint_vfmw	@
	ldr	ip, [r5, #132]	@ tmp883,
	mov	r2, #32	@,
	ldr	r3, [r5, #128]	@ tmp882,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	str	ip, [sp, #0]	@ tmp883,
	ldr	ip, [r5, #136]	@ tmp884,
	str	ip, [sp, #4]	@ tmp884,
	ldr	ip, [r5, #140]	@ tmp885,
	str	ip, [sp, #8]	@ tmp885,
	bl	dprint_vfmw	@
	ldr	ip, [r5, #148]	@ tmp887,
	mov	r2, #36	@,
	ldr	r3, [r5, #144]	@ tmp886,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	str	ip, [sp, #0]	@ tmp887,
	ldr	ip, [r5, #152]	@ tmp888,
	str	ip, [sp, #4]	@ tmp888,
	ldr	ip, [r5, #156]	@ tmp889,
	str	ip, [sp, #8]	@ tmp889,
	bl	dprint_vfmw	@
	ldr	ip, [r5, #164]	@ tmp891,
	mov	r2, #40	@,
	ldr	r3, [r5, #160]	@ tmp890,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	str	ip, [sp, #0]	@ tmp891,
	ldr	ip, [r5, #168]	@ tmp892,
	str	ip, [sp, #4]	@ tmp892,
	ldr	ip, [r5, #172]	@ tmp893,
	str	ip, [sp, #8]	@ tmp893,
	bl	dprint_vfmw	@
	ldr	ip, [r5, #180]	@ tmp895,
	mov	r2, #44	@,
	ldr	r3, [r5, #176]	@ tmp894,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	str	ip, [sp, #0]	@ tmp895,
	ldr	ip, [r5, #184]	@ tmp896,
	str	ip, [sp, #4]	@ tmp896,
	ldr	ip, [r5, #188]	@ tmp897,
	str	ip, [sp, #8]	@ tmp897,
	bl	dprint_vfmw	@
	ldr	ip, [r5, #196]	@ tmp899,
	mov	r2, #48	@,
	ldr	r3, [r5, #192]	@ tmp898,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	str	ip, [sp, #0]	@ tmp899,
	ldr	ip, [r5, #200]	@ tmp900,
	str	ip, [sp, #4]	@ tmp900,
	ldr	ip, [r5, #204]	@ tmp901,
	str	ip, [sp, #8]	@ tmp901,
	bl	dprint_vfmw	@
	ldr	ip, [r5, #212]	@ tmp903,
	mov	r2, #52	@,
	ldr	r3, [r5, #208]	@ tmp902,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	str	ip, [sp, #0]	@ tmp903,
	ldr	ip, [r5, #216]	@ tmp904,
	str	ip, [sp, #4]	@ tmp904,
	ldr	ip, [r5, #220]	@ tmp905,
	str	ip, [sp, #8]	@ tmp905,
	bl	dprint_vfmw	@
	ldr	ip, [r5, #228]	@ tmp907,
	mov	r2, #56	@,
	ldr	r3, [r5, #224]	@ tmp906,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	str	ip, [sp, #0]	@ tmp907,
	ldr	ip, [r5, #232]	@ tmp908,
	str	ip, [sp, #4]	@ tmp908,
	ldr	ip, [r5, #236]	@ tmp909,
	str	ip, [sp, #8]	@ tmp909,
	bl	dprint_vfmw	@
	ldr	ip, [r5, #244]	@ tmp911,
	mov	r2, #60	@,
	ldr	r3, [r5, #240]	@ tmp910,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	str	ip, [sp, #0]	@ tmp911,
	ldr	ip, [r5, #248]	@ tmp912,
	str	ip, [sp, #4]	@ tmp912,
	ldr	ip, [r5, #252]	@ tmp913,
	str	ip, [sp, #8]	@ tmp913,
	bl	dprint_vfmw	@
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.39786, tmp727
.L49:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L64:
	ldr	r1, [r4, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	r2, r3	@ <variable>.StreamLength, <variable>.StreamLength
	ldr	r8, [r4, #156]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	bfi	r2, r3, #0, #24	@ <variable>.StreamLength, <variable>.StreamLength,,
	str	r2, [r5, #32]	@ <variable>.StreamLength,
	cmp	r7, #0	@ D.39861,
	ldr	lr, [r4, #172]	@ <variable>.StreamLength, <variable>.StreamLength
	add	r0, r8, r1, lsr #3	@, BytePos0, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	ldr	r2, [r4, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	and	r1, r0, #15	@ tmp426, BytePos0,
	add	ip, lr, #24	@ tmp422, <variable>.StreamLength,
	and	r8, r2, #7	@ tmp431, <variable>.StreamBitOffset,
	bfi	r3, ip, #0, #24	@ <variable>.StreamLength, tmp422,,
	add	r0, r8, r1, asl #3	@, tmp434, tmp431, tmp426,
	bfi	r3, r0, #24, #7	@ <variable>.StreamLength, tmp434,,
	str	r3, [fp, #-48]	@ <variable>.StreamLength,
	str	r3, [r5, #36]	@ <variable>.StreamLength,
	beq	.L53	@,
	ldr	r3, [r4, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	r0, #8	@,
	movw	r1, #:lower16:.LC3	@,
	movt	r1, #:upper16:.LC3	@,
	add	lr, r7, r3, lsr #3	@, rp, D.39861, <variable>.StreamBitOffset,
	ldrb	r2, [r7, r3, lsr #3]	@ zero_extendqisi2	@ tmp439,* D.39861
	ldrb	ip, [lr, #2]	@ zero_extendqisi2	@ tmp441,
	ldrb	r3, [lr, #1]	@ zero_extendqisi2	@ tmp440,
	str	ip, [sp, #0]	@ tmp441,
	ldrb	r8, [lr, #3]	@ zero_extendqisi2	@ tmp442,
	str	r8, [sp, #4]	@ tmp442,
	ldrb	ip, [lr, #4]	@ zero_extendqisi2	@ tmp443,
	str	ip, [sp, #8]	@ tmp443,
	ldrb	r8, [lr, #5]	@ zero_extendqisi2	@ tmp444,
	str	r8, [sp, #12]	@ tmp444,
	ldrb	ip, [lr, #6]	@ zero_extendqisi2	@ tmp445,
	str	ip, [sp, #16]	@ tmp445,
	ldrb	r8, [lr, #7]	@ zero_extendqisi2	@ tmp446,
	str	r8, [sp, #20]	@ tmp446,
	bl	dprint_vfmw	@
	ldr	r8, [r4, #172]	@ <variable>.StreamLength, <variable>.StreamLength
	movw	r1, #:lower16:.LC4	@,
	ldr	r3, [r4, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	movt	r1, #:upper16:.LC4	@,
	add	r2, r8, #7	@ tmp453, <variable>.StreamLength,
	cmp	r8, #0	@ <variable>.StreamLength,
	mov	r0, #9	@,
	mov	ip, r3, lsr #3	@ tmp447, <variable>.StreamBitOffset,
	movlt	r8, r2	@ <variable>.StreamLength, tmp453
	sub	r2, ip, #8	@ tmp449, tmp447,
	add	r3, r2, r8, asr #3	@, tmp455, tmp449, <variable>.StreamLength,
	add	ip, r7, r3	@ rp.1250, D.39861, tmp455
	ldrb	r2, [r7, r3]	@ zero_extendqisi2	@ tmp457,
	ldrb	r8, [ip, #2]	@ zero_extendqisi2	@ tmp459,
	ldrb	r3, [ip, #1]	@ zero_extendqisi2	@ tmp458,
	str	r8, [sp, #0]	@ tmp459,
	ldrb	lr, [ip, #3]	@ zero_extendqisi2	@ tmp460,
	str	lr, [sp, #4]	@ tmp460,
	ldrb	r7, [ip, #4]	@ zero_extendqisi2	@ tmp461,
	str	r7, [sp, #8]	@ tmp461,
	ldrb	r8, [ip, #5]	@ zero_extendqisi2	@ tmp462,
	str	r8, [sp, #12]	@ tmp462,
	ldrb	lr, [ip, #6]	@ zero_extendqisi2	@ tmp463,
	str	lr, [sp, #16]	@ tmp463,
	ldrb	r7, [ip, #7]	@ zero_extendqisi2	@ tmp464,
	str	r7, [sp, #20]	@ tmp464,
	bl	dprint_vfmw	@
.L53:
	mov	r7, #0	@ tmp465,
	mov	r0, r7	@ tmp470, tmp465
	mov	r1, r7	@ tmp467, tmp465
	bfi	r0, r7, #24, #7	@ tmp470, tmp465,,
	bfi	r1, r7, #0, #24	@ tmp467, tmp465,,
	str	r1, [r5, #40]	@ tmp467,
	str	r0, [r5, #44]	@ tmp470,
	b	.L57	@
.L63:
	mov	r0, r9	@, tmp302
	movw	r1, #:lower16:.LC0	@,
	ldr	r2, .L66	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39786,
	b	.L49	@
.L62:
	mov	r0, r9	@, tmp302
	movw	r1, #:lower16:.LC0	@,
	ldr	r2, .L66	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39786,
	b	.L49	@
.L61:
	movw	r1, #:lower16:.LC0	@,
	ldr	r2, .L66	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC18	@,
	movt	r3, #:upper16:.LC18	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39786,
	b	.L49	@
.L65:
	movw	r1, #:lower16:.LC19	@,
	movt	r1, #:upper16:.LC19	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39786,
	b	.L49	@
.L67:
	.align	2
.L66:
	.word	.LANCHOR0+28
	.fnend
	.size	MP2HAL_V300R001_CfgDnMsg, .-MP2HAL_V300R001_CfgDnMsg
	.align	2
	.global	MP2HAL_V300R001_CfgReg
	.type	MP2HAL_V300R001_CfgReg, %function
MP2HAL_V300R001_CfgReg:
	.fnstart
.LFB1533:
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
	cmp	r2, #1	@ VdhId,
	mov	ip, #0	@ tmp195,
	mov	r4, r0	@ pMp2DecParam, pMp2DecParam
	mov	r5, r3	@ StreamBaseAddr, StreamBaseAddr
	str	ip, [fp, #-40]	@ tmp195, D32
	bls	.L103	@,
	mov	r0, ip	@, tmp195
	movw	r1, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC23	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39543,
.L71:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L103:
	beq	.L114	@,
	ldr	r3, [r1, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L115	@,
.L73:
	movw	r6, #:lower16:g_HwMem	@ tmp351,
	movt	r6, #:upper16:g_HwMem	@ tmp351,
	mvn	r0, #0	@ tmp207,
	mov	r2, #0	@ tmp208,
	ldr	sl, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r3, r2	@ tmp213, tmp208
	mov	ip, #3	@ tmp227,
	mov	lr, ip	@ tmp230, tmp227
	str	r0, [sl, #32]	@ tmp207,
	ldrh	r8, [r4, #148]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	ldrh	sl, [r4, #152]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	ldr	r7, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mul	r8, sl, r8	@ tmp211, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	add	r8, r8, r0	@ tmp212, tmp211,
	bfi	r3, r8, #0, #20	@ tmp213, tmp212,,
	orr	r8, r3, #1090519040	@ tmp222, tmp213,
	orr	r3, r8, #4194304	@ tmp222, tmp222,
	movw	r8, #45316	@ tmp240,
	bfi	r3, r2, #25, #1	@ tmp222, tmp208,,
	str	r3, [r7, #8]	@ tmp222,
	ldr	r3, [r4, #232]	@ <variable>.VahbStride, <variable>.VahbStride
	ldr	r7, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r8, [r4, r8]	@ <variable>.Compress_en, <variable>.Compress_en
	mov	r3, r3, lsr #6	@ tmp228, <variable>.VahbStride,
	bfi	lr, r3, #4, #10	@ tmp230, tmp228,,
	orr	r3, lr, #16384	@ tmp233, tmp230,
	bic	r3, r3, #32768	@ tmp234, tmp233,
	bfi	r3, ip, #16, #12	@ tmp234, tmp227,,
	orr	ip, r3, #536870912	@ tmp238, tmp234,
	bic	lr, ip, #-1879048192	@ tmp242, tmp238,
	bfi	lr, r8, #30, #1	@ tmp242, <variable>.Compress_en,,
	str	lr, [r7, #12]	@ tmp242,
	ldr	lr, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r3, [r1, #48]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	bic	ip, r3, #15	@ tmp248, <variable>.MsgSlotAddr,
	str	ip, [lr, #16]	@ tmp248,
	ldr	lr, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r3, [r1, #32]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	movw	r1, #45308	@ tmp258,
	bic	ip, r3, #15	@ tmp254, <variable>.MsgSlotAddr,
	str	ip, [lr, #20]	@ tmp254,
	ldr	ip, [r4, r1]	@ D.39619, <variable>.SlcNum
	str	r2, [fp, #-40]	@ tmp208, D32
	cmp	ip, r2	@ D.39619,
	beq	.L75	@,
	ldr	r3, [r4, #252]	@ temp.1819, <variable>.BsPhyAddr
	add	r2, ip, r0	@ tmp352, D.39619,
	mov	r1, r0	@ stream_base_addr.1820, tmp207
	and	r0, r2, #1	@ tmp354, tmp352,
	cmp	r3, #0	@ temp.1819,
	beq	.L92	@,
	ldr	r2, [r4, #260]	@ <variable>.BsLenInBit, <variable>.BsLenInBit
	cmp	r2, #0	@ <variable>.BsLenInBit,
	ble	.L92	@,
	bic	r3, r3, #15	@ tmp364, temp.1819,
	cmp	r1, r3	@ stream_base_addr.1820, tmp364
	movcs	r1, r3	@ stream_base_addr.1820, tmp364
.L92:
	ldr	r3, [r4, #256]	@ D.39612, <variable>.BsPhyAddr
	cmp	r3, #0	@ D.39612,
	bne	.L116	@,
.L94:
	mov	r2, #1	@ i,
	cmp	r2, ip	@ i, D.39619
	add	r3, r4, #44	@ ivtmp.1752, pMp2DecParam,
	beq	.L91	@,
	cmp	r0, #0	@ tmp354,
	beq	.L76	@,
	ldr	r0, [r3, #252]	@ temp.1819, <variable>.BsPhyAddr
	cmp	r0, #0	@ temp.1819,
	bne	.L105	@,
.L99:
	ldr	r0, [r3, #256]	@ D.39612, <variable>.BsPhyAddr
	cmp	r0, #0	@ D.39612,
	beq	.L101	@,
.L117:
	ldr	lr, [r3, #264]	@ tmp377, <variable>.BsLenInBit
	cmp	lr, #0	@ tmp377,
	ble	.L101	@,
	bic	r0, r0, #15	@ tmp378, D.39612,
	cmp	r1, r0	@ stream_base_addr.1820, tmp378
	movcs	r1, r0	@ stream_base_addr.1820, tmp378
.L101:
	add	r2, r2, #1	@ i, tmp356,
	add	r3, r3, #44	@ ivtmp.1752, tmp355,
	cmp	r2, ip	@ i, D.39619
	beq	.L91	@,
.L76:
	ldr	r0, [r3, #252]	@ temp.1819, <variable>.BsPhyAddr
	cmp	r0, #0	@ temp.1819,
	beq	.L79	@,
	ldr	lr, [r3, #260]	@ <variable>.BsLenInBit, <variable>.BsLenInBit
	cmp	lr, #0	@ <variable>.BsLenInBit,
	ble	.L79	@,
	bic	r0, r0, #15	@ tmp262, temp.1819,
	cmp	r1, r0	@ stream_base_addr.1820, tmp262
	movcs	r1, r0	@ stream_base_addr.1820, tmp262
.L79:
	ldr	r0, [r3, #256]	@ D.39612, <variable>.BsPhyAddr
	cmp	r0, #0	@ D.39612,
	beq	.L77	@,
	ldr	lr, [r3, #264]	@ tmp259, <variable>.BsLenInBit
	cmp	lr, #0	@ tmp259,
	ble	.L77	@,
	bic	r0, r0, #15	@ tmp260, D.39612,
	cmp	r1, r0	@ stream_base_addr.1820, tmp260
	movcs	r1, r0	@ stream_base_addr.1820, tmp260
.L77:
	add	r3, r3, #44	@ tmp355, ivtmp.1752,
	add	r2, r2, #1	@ tmp356, i,
	ldr	r0, [r3, #252]	@ temp.1819, <variable>.BsPhyAddr
	cmp	r0, #0	@ temp.1819,
	beq	.L99	@,
.L105:
	ldr	lr, [r3, #260]	@ <variable>.BsLenInBit, <variable>.BsLenInBit
	cmp	lr, #0	@ <variable>.BsLenInBit,
	ble	.L99	@,
	bic	r0, r0, #15	@ tmp375, temp.1819,
	cmp	r1, r0	@ stream_base_addr.1820, tmp375
	movcs	r1, r0	@ stream_base_addr.1820, tmp375
	ldr	r0, [r3, #256]	@ D.39612, <variable>.BsPhyAddr
	cmp	r0, #0	@ D.39612,
	bne	.L117	@,
	add	r2, r2, #1	@ i, tmp356,
	add	r3, r3, #44	@ ivtmp.1752, tmp355,
	cmp	r2, ip	@ i, D.39619
	bne	.L76	@,
.L91:
	cmn	r1, #1	@ stream_base_addr.1820,
	beq	.L75	@,
	str	r1, [r5, #0]	@ stream_base_addr.1820,* StreamBaseAddr
	ldr	r0, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r1, [r0, #24]	@ stream_base_addr.1820,
	movw	r0, #:lower16:-121389052	@,
	ldrh	lr, [r4, #152]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	movt	r0, #:upper16:-121389052	@,
	cmp	lr, #120	@ <variable>.PicWidthInMb,
	movhi	lr, #0	@ tmp269,
	movls	lr, #65536	@ tmp270,
	str	lr, [fp, #-40]	@ tmp270, D32
	bl	MEM_ReadPhyWord	@
	movw	ip, #:lower16:s_RegPhyBaseAddr	@ tmp272,
	movt	ip, #:upper16:s_RegPhyBaseAddr	@ tmp272,
	ldr	r1, [fp, #-40]	@ D32, D32
	ldr	r2, [ip, #0]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	orr	r1, r0, r1	@ tmp275,, D32
	add	r0, r2, #4	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r5, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	movw	r3, #:lower16:3148803	@ tmp277,
	movt	r3, #:upper16:3148803	@ tmp277,
	str	r3, [fp, #-40]	@ tmp277, D32
	movw	r1, #2047	@ tmp311,
	str	r3, [r5, #60]	@ tmp277,
	ldr	ip, [fp, #-40]	@ D32.1777, D32
	ldr	r0, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r0, #64]	@ D32.1777,
	ldr	r5, [fp, #-40]	@ D32.1780, D32
	ldr	r2, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r5, [r2, #68]	@ D32.1780,
	ldr	r0, [fp, #-40]	@ D32.1783, D32
	ldr	r3, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r0, [r3, #72]	@ D32.1783,
	ldr	r2, [fp, #-40]	@ D32.1786, D32
	ldr	ip, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [ip, #76]	@ D32.1786,
	ldr	r0, [fp, #-40]	@ D32.1789, D32
	ldr	r5, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r0, [r5, #80]	@ D32.1789,
	ldr	ip, [fp, #-40]	@ D32.1792, D32
	ldr	r3, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r3, #84]	@ D32.1792,
	ldr	r5, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r2, [r4, #200]	@ <variable>.CurPicPhyAddr, <variable>.CurPicPhyAddr
	bic	r0, r2, #15	@ tmp296, <variable>.CurPicPhyAddr,
	str	r0, [r5, #96]	@ tmp296,
	ldr	ip, [r4, #232]	@ <variable>.VahbStride, <variable>.VahbStride
	ldr	r3, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldrb	r5, [r4, #3]	@ zero_extendqisi2	@ <variable>.PictureStructure, <variable>.PictureStructure
	ldrh	r0, [r4, #148]	@ temp.1796, <variable>.PicHeightInMb
	sub	r2, r5, #1	@ tmp302, <variable>.PictureStructure,
	str	ip, [r3, #100]	@ <variable>.VahbStride,
	ldrh	r3, [r4, #152]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	uxtb	r5, r2	@ tmp303, tmp302
	cmp	r5, #1	@ tmp303,
	mov	r3, r3, asl #4	@ D.39692, <variable>.PicWidthInMb,
	sub	ip, r3, #1	@ tmp310, D.39692,
	movls	r5, #2	@ iftmp.480,
	movhi	r5, #1	@ iftmp.480,
	cmp	ip, r1	@ tmp310, tmp311
	mul	r2, r0, r5	@ height_in_mb, temp.1796, iftmp.480
	bhi	.L118	@,
.L86:
	mov	r3, #16	@ level,
.L88:
	mov	lr, r2, asl #4	@ tmp321, height_in_mb,
	add	ip, r2, #1	@ tmp326, height_in_mb,
	add	r5, lr, #31	@ tmp322, tmp321,
	ldr	r0, [r4, #232]	@ <variable>.VahbStride, <variable>.VahbStride
	mov	r2, ip, lsr #1	@ tmp327, tmp326,
	ldr	ip, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r1, r5, lsr #5	@ tmp323, tmp322,
	mov	r5, #0	@ tmp334,
	mul	lr, r0, r2	@ tmp328, <variable>.VahbStride, tmp327
	mov	r0, #3	@,
	mul	r3, r1, r3	@ D.39715, tmp323, level
	mov	r2, r5	@ tmp343, tmp334
	bfi	r2, r5, #0, #1	@ tmp343, tmp334,,
	movw	r1, #:lower16:.LC27	@,
	movt	r1, #:upper16:.LC27	@,
	add	lr, lr, r3, asl #4	@, tmp330, tmp328, D.39715,
	mov	r3, r3, asl #5	@ D32.485, D.39715,
	mov	lr, lr, asl #1	@ tmp331, tmp330,
	str	lr, [ip, #104]	@ tmp331,
	ldr	ip, [r4, #208]	@ <variable>.FwdRefIsFldSave, <variable>.FwdRefIsFldSave
	ldr	lr, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r4, [r4, #204]	@ <variable>.BwdRefIsFldSave, <variable>.BwdRefIsFldSave
	and	ip, ip, r0	@ tmp338, <variable>.FwdRefIsFldSave,
	bfi	ip, r4, #2, #2	@ tmp338, <variable>.BwdRefIsFldSave,,
	str	ip, [lr, #148]	@ tmp338,
	ldr	ip, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [ip, #152]	@ tmp343,
	ldr	r2, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [fp, #-40]	@ D32.485, D32
	str	r3, [r2, #108]	@ D32.485,
	ldr	r2, [fp, #-40]	@, D32
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.39543, tmp334
	b	.L71	@
.L118:
	sub	ip, r3, #2048	@ tmp312, D.39692,
	sub	r5, ip, #1	@ tmp312, tmp312,
	cmp	r5, r1	@ tmp312, tmp311
	movls	r3, #32	@ level,
	bls	.L88	@,
	sub	r0, r3, #4096	@ tmp315, D.39692,
	sub	lr, r0, #1	@ tmp315, tmp315,
	cmp	lr, r1	@ tmp315, tmp311
	movls	r3, #48	@ level,
	bls	.L88	@,
	sub	r3, r3, #6144	@ tmp318, D.39692,
	sub	r3, r3, #1	@ tmp318, tmp318,
	cmp	r3, r1	@ tmp318, tmp311
	movls	r3, #64	@ level,
	bls	.L88	@,
	b	.L86	@
.L116:
	ldr	lr, [r4, #264]	@ tmp366, <variable>.BsLenInBit
	cmp	lr, #0	@ tmp366,
	ble	.L94	@,
	bic	r2, r3, #15	@ tmp367, D.39612,
	cmp	r1, r2	@ stream_base_addr.1820, tmp367
	movcs	r1, r2	@ stream_base_addr.1820, tmp367
	b	.L94	@
.L114:
	mov	r3, r2	@, VdhId
	mov	r0, ip	@, tmp195
	movw	r1, #:lower16:.LC24	@,
	ldr	r2, .L119	@,
	movt	r1, #:upper16:.LC24	@,
	str	ip, [sp, #0]	@ tmp195,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39543,
	b	.L71	@
.L115:
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	str	r1, [fp, #-48]	@,
	bl	MEM_Phy2Vir	@
	ldr	r1, [fp, #-48]	@,
	subs	r2, r0, #0	@ D.39550,
	strne	r2, [r1, #0]	@ D.39550, <variable>.pVdmRegVirAddr
	bne	.L73	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39543,
	b	.L71	@
.L75:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC26	@,
	mvn	r2, #0	@,
	movt	r1, #:upper16:.LC26	@,
	bl	dprint_vfmw	@
	mov	r1, #0	@ tmp264,
	mvn	r0, #0	@ D.39543,
	str	r1, [r5, #0]	@ tmp264,* StreamBaseAddr
	b	.L71	@
.L120:
	.align	2
.L119:
	.word	.LANCHOR0+56
	.fnend
	.size	MP2HAL_V300R001_CfgReg, .-MP2HAL_V300R001_CfgReg
	.align	2
	.global	MP2HAL_V300R001_StartDec
	.type	MP2HAL_V300R001_StartDec, %function
MP2HAL_V300R001_StartDec:
	.fnstart
.LFB1529:
	@ args = 0, pretend = 0, frame = 8
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
	cmp	r1, #1	@ VdhId,
	mov	r4, r0	@ pMp2DecParam, pMp2DecParam
	bls	.L130	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC28	@,
	movt	r1, #:upper16:.LC28	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38984,
.L124:
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L130:
	beq	.L131	@,
	movw	r5, #:lower16:g_HwMem	@ tmp146,
	movt	r5, #:upper16:g_HwMem	@ tmp146,
	ldr	r3, [r5, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L132	@,
.L126:
	movw	r5, #:lower16:.LANCHOR2	@ tmp151,
	movt	r5, #:upper16:.LANCHOR2	@ tmp151,
	mov	r0, r4	@, pMp2DecParam
	movw	r1, #:lower16:g_HwMem	@,
	ldr	ip, [r5, #0]	@ FrameNum, FrameNum
	movt	r1, #:upper16:g_HwMem	@,
	mov	r2, #0	@,
	sub	r3, fp, #24	@,,
	add	lr, ip, #1	@ tmp154, FrameNum,
	str	lr, [r5, #0]	@ tmp154, FrameNum
	bl	MP2HAL_V300R001_CfgReg	@
	subs	r5, r0, #0	@ D.38998,
	bne	.L133	@,
	mov	r0, r4	@, pMp2DecParam
	movw	r1, #:lower16:g_HwMem	@,
	mov	r2, r5	@, D.38998
	movt	r1, #:upper16:g_HwMem	@,
	ldr	r3, [fp, #-24]	@, StreamBaseAddr
	bl	MP2HAL_V300R001_CfgDnMsg	@
	mov	r0, r5	@ D.38984, D.38998
	b	.L124	@
.L132:
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	bl	MEM_Phy2Vir	@
	subs	r1, r0, #0	@ D.38991,
	strne	r1, [r5, #0]	@ D.38991, <variable>.pVdmRegVirAddr
	bne	.L126	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38984,
	b	.L124	@
.L131:
	mov	ip, #0	@ tmp145,
	mov	r3, r1	@, VdhId
	mov	r0, ip	@, tmp145
	movw	r1, #:lower16:.LC24	@,
	ldr	r2, .L134	@,
	movt	r1, #:upper16:.LC24	@,
	str	ip, [sp, #0]	@ tmp145,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38984,
	b	.L124	@
.L133:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC29	@,
	movt	r1, #:upper16:.LC29	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38984,
	b	.L124	@
.L135:
	.align	2
.L134:
	.word	.LANCHOR0+80
	.fnend
	.size	MP2HAL_V300R001_StartDec, .-MP2HAL_V300R001_StartDec
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	__func__.39277, %object
	.size	__func__.39277, 26
__func__.39277:
	.ascii	"MP2HAL_V300R001_MakeDnMsg\000"
	.space	2
	.type	__func__.39766, %object
	.size	__func__.39766, 25
__func__.39766:
	.ascii	"MP2HAL_V300R001_CfgDnMsg\000"
	.space	3
	.type	__func__.39535, %object
	.size	__func__.39535, 23
__func__.39535:
	.ascii	"MP2HAL_V300R001_CfgReg\000"
	.space	1
	.type	__func__.38980, %object
	.size	__func__.38980, 25
__func__.38980:
	.ascii	"MP2HAL_V300R001_StartDec\000"
	.data
	.align	2
.LANCHOR2 = . + 0
	.type	FrameNum, %object
	.size	FrameNum, 4
FrameNum:
	.word	-1
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"%s: %s\012\000"
.LC1:
	.ascii	"picture width out of range\000"
	.space	1
.LC2:
	.ascii	"picture height out of range\000"
.LC3:
	.ascii	"Stream Head (8bytes): 0x%02x 0x%02x 0x%02x 0x%02x 0"
	.ascii	"x%02x 0x%02x 0x%02x 0x%02x\012\000"
	.space	1
.LC4:
	.ascii	"Stream Tail (8bytes): 0x%02x 0x%02x 0x%02x 0x%02x 0"
	.ascii	"x%02x 0x%02x 0x%02x 0x%02x\012\000"
	.space	1
.LC5:
	.ascii	"1p Stream Head (8bytes): 0x%02x 0x%02x 0x%02x 0x%02"
	.ascii	"x 0x%02x 0x%02x 0x%02x 0x%02x\012\000"
	.space	2
.LC6:
	.ascii	"1p Stream Tail (8bytes): 0x%02x 0x%02x 0x%02x 0x%02"
	.ascii	"x 0x%02x 0x%02x 0x%02x 0x%02x\012\000"
	.space	2
.LC7:
	.ascii	"1p last phy addr = 0x%x\012\000"
	.space	3
.LC8:
	.ascii	"2p Stream Head (8bytes): 0x%02x 0x%02x 0x%02x 0x%02"
	.ascii	"x 0x%02x 0x%02x 0x%02x 0x%02x\012\000"
	.space	2
.LC9:
	.ascii	"2p Stream Tail (8bytes): 0x%02x 0x%02x 0x%02x 0x%02"
	.ascii	"x 0x%02x 0x%02x 0x%02x 0x%02x\012\000"
	.space	2
.LC10:
	.ascii	"D0 = %#x \012\000"
	.space	1
.LC11:
	.ascii	"D1 = %#x \012\000"
	.space	1
.LC12:
	.ascii	"D2 = %#x \012\000"
	.space	1
.LC13:
	.ascii	"D3 = %#x \012\000"
	.space	1
.LC14:
	.ascii	"D4 = %#x \012\000"
	.space	1
.LC15:
	.ascii	"D5 = %#x \012\000"
	.space	1
.LC16:
	.ascii	"D6 = %#x \012\000"
	.space	1
.LC17:
	.ascii	"D7 = %#x \012\000"
	.space	1
.LC18:
	.ascii	"can not map down msg virtual address!\000"
	.space	2
.LC19:
	.ascii	"Map SlcDnMsgPhyAddr to SlcDnMsgVirAddr is NULL \012"
	.ascii	"\000"
	.space	3
.LC20:
	.ascii	"\012*****No.%2d Down Msg (phy addr: %#8x) *****\012"
	.ascii	"\000"
	.space	2
.LC21:
	.ascii	"\0120x%02x 0x%08x 0x%08x 0x%08x 0x%08x\012\000"
	.space	3
.LC22:
	.ascii	"\012***** Down Msg print finished *****\012\000"
	.space	2
.LC23:
	.ascii	"VdhId is wrong! MP2HAL_V200R003_CfgReg\012\000"
.LC24:
	.ascii	"%s: VdhId(%d) > %d\012\000"
.LC25:
	.ascii	"vdm register virtual address not mapped, reset fail"
	.ascii	"ed!\012\000"
.LC26:
	.ascii	"stream_base_addr = %#x\012\000"
.LC27:
	.ascii	"HEAD_INF_OFFSET = 0x%x\012\000"
.LC28:
	.ascii	"VdhId is wrong! MP2HAL_V200R003_StartDec\012\000"
	.space	2
.LC29:
	.ascii	"MP2HAL_V200R003_CfgReg ERROR!\012\000"
	.bss
	.align	2
.LANCHOR1 = . + 0
	.type	num.39777, %object
	.size	num.39777, 4
num.39777:
	.space	4
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
