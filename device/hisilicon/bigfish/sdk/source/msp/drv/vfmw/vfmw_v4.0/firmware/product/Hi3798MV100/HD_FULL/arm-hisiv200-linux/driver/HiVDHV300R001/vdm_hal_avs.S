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
	.file	"vdm_hal_avs.c"
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
@ -DKBUILD_BASENAME=KBUILD_STR(vdm_hal_avs)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD
@ drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV300R001/.vdm_hal_avs.o.d
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV300R001/vdm_hal_avs.c
@ -mlittle-endian -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -marm -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV300R001/vdm_hal_avs.o
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
	.global	AVSHAL_V300R001_InitHal
	.type	AVSHAL_V300R001_InitHal, %function
AVSHAL_V300R001_InitHal:
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
	.size	AVSHAL_V300R001_InitHal, .-AVSHAL_V300R001_InitHal
	.align	2
	.global	AVSHAL_V300R001_WirteSlicMsg
	.type	AVSHAL_V300R001_WirteSlicMsg, %function
AVSHAL_V300R001_WirteSlicMsg:
	.fnstart
.LFB1530:
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
	str	r2, [fp, #-68]	@ VdhId, %sfp
	ldr	ip, [fp, #-68]	@, %sfp
	movw	r4, #:lower16:g_HwMem	@ tmp225,
	movt	r4, #:upper16:g_HwMem	@ tmp225,
	movw	r2, #1208	@ tmp228,
	str	r1, [fp, #-64]	@ stream_base_addr, %sfp
	mov	r5, r0	@ pAvsDecParam, pAvsDecParam
	mla	r6, r2, ip, r4	@ tmp229, tmp228,, tmp225
	ldr	r4, [r6, #48]	@ D.39400, <variable>.MsgSlotAddr
	add	r0, r4, #320	@, D.39400,
	str	r0, [fp, #-84]	@, %sfp
	mov	r0, r4	@, D.39400
	bl	MEM_Phy2Vir	@
	ldr	r3, [r5, #104]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	cmp	r3, #0	@ <variable>.slice_start_mbn,
	streq	r3, [fp, #-80]	@ <variable>.slice_start_mbn, %sfp
	add	r6, r0, #320	@ pMsgBase.562, D.39403,
	beq	.L5	@,
	ldr	ip, [r5, #88]	@ <variable>.stream_phy_addr, <variable>.stream_phy_addr
	mov	r1, #1	@,
	ldr	r3, [fp, #-64]	@, %sfp
	mov	r2, #0	@ tmp238,
	add	lr, ip, #4	@ tmp232, <variable>.stream_phy_addr,
	str	r1, [fp, #-80]	@, %sfp
	rsb	r1, r3, lr	@ D.39415,, tmp232
	add	r4, r4, #576	@ D32.568, D.39400,
	bic	sl, r1, #-16777216	@ D32.564, D.39415,
	bic	r3, sl, #15	@ D32.564, D32.564,
	mov	ip, r1, asl #28	@ D32, D.39415,
	str	ip, [r0, #320]	@ D32,
	str	r3, [r0, #324]	@ D32.564,
	str	r2, [r0, #328]	@ tmp238,
	str	r2, [r0, #332]	@ tmp238,
	ldr	lr, [r5, #104]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	sub	sl, lr, #1	@ tmp240, <variable>.slice_start_mbn,
	mov	r1, sl, asl #16	@ D32.567, tmp240,
	str	r1, [r0, #336]	@ D32.567,
	str	r4, [r0, #572]	@ D32.568,
.L5:
	movw	sl, #14424	@ tmp244,
	ldr	r0, [r5, sl]	@ <variable>.SlcNum, <variable>.SlcNum
	cmp	r0, #0	@ <variable>.SlcNum,
	ble	.L26	@,
	mov	r2, #0	@ k,
	movw	r4, #:lower16:s_RegPhyBaseAddr	@,
	movw	r7, #:lower16:s_RegPhyBaseAddr_1	@,
	movt	r4, #:upper16:s_RegPhyBaseAddr	@,
	movt	r7, #:upper16:s_RegPhyBaseAddr_1	@,
	str	r4, [fp, #-72]	@, %sfp
	str	r7, [fp, #-76]	@, %sfp
	mov	r4, r2	@ i, k
	mov	r7, r2	@ j, k
.L25:
	movw	lr, #511	@,
	cmp	r7, lr	@ j,
	bgt	.L7	@,
	sub	ip, r4, #1	@ tmp256, i,
	mov	r8, r4, asl #3	@ tmp439, i,
	rsb	r3, r4, r8	@ tmp252, i, tmp439
	rsb	lr, ip, ip, asl #3	@, tmp260, tmp256, tmp256,
	cmp	r4, #0	@ i,
	movle	ip, #0	@,
	movgt	ip, #1	@,
	add	r3, r5, r3, asl #2	@, tmp254, pAvsDecParam, tmp252,
	add	r0, r5, lr, asl #2	@, tmp262, pAvsDecParam, tmp260,
	ldr	r9, [r3, #104]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	ldr	r1, [r0, #104]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	cmp	r9, r1	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	movhi	ip, #0	@,,
	cmp	ip, #0	@ tmp270,
	mov	r9, ip	@ tmp270,
	bne	.L8	@,
	ldr	r2, [r3, #88]	@ temp.570, <variable>.stream_phy_addr
	add	ip, r2, #3	@ tmp278, temp.570,
#APP
@ 182 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/arch/arm/include/asm/memory.h" 1
	@ __pv_stub
1:	sub	lr, ip, #-2130706432	@ t, tmp278,
	.pushsection .pv_table,"a"
	.long	1b
	.popsection

@ 0 "" 2
	ldr	r0, [lr, #0]	@ tmp280,* t
	bic	r1, r0, #-16777216	@ tmp279, tmp280,
	cmp	r1, #131072	@ tmp279,
	beq	.L41	@,
	ldr	ip, [fp, #-64]	@, %sfp
	add	r1, r2, #4	@ tmp316, temp.570,
	rsb	lr, ip, r1	@ temp.587,, tmp316
	and	r0, lr, #15	@ tmp317, temp.587,
	bic	r3, lr, #15	@, temp.587,
	str	r3, [fp, #-48]	@, %sfp
	mov	r9, r0, asl #3	@, tmp317,
	str	r9, [fp, #-52]	@, %sfp
.L13:
	rsb	lr, r4, r8	@ tmp347, i, tmp439
	add	r3, r5, lr, asl #2	@, tmp349, pAvsDecParam, tmp347,
	ldr	r2, [r3, #92]	@ D.39508, <variable>.stream_phy_addr
	ldr	r1, [r3, #96]	@ <variable>.stream_lenInByte, <variable>.stream_lenInByte
	cmp	r2, #0	@ D.39508,
	mov	r0, r1, asl #3	@ bit_len_0, <variable>.stream_lenInByte,
	beq	.L16	@,
	ldr	r3, [r3, #100]	@ <variable>.stream_lenInByte, <variable>.stream_lenInByte
	cmp	r3, #0	@ <variable>.stream_lenInByte,
	ble	.L16	@,
	ldr	r9, [fp, #-64]	@, %sfp
	cmp	r0, #0	@ bit_len_0,
	mov	ip, r3, asl #3	@ bit_len_1, <variable>.stream_lenInByte,
	rsb	lr, r9, r2	@ D.39513,, D.39508
	bicne	ip, ip, #-33554432	@ pretmp.573, bit_len_1,
	and	r1, lr, #15	@ tmp367, D.39513,
	bic	r2, lr, #15	@ bit_stream_addr_1, D.39513,
	bicne	r3, r2, #-16777216	@ prephitmp.539, bit_stream_addr_1,
	moveq	r0, ip	@ bit_len_0, bit_len_1
	mov	r9, r1, asl #3	@ bit_offset_1, tmp367,
	moveq	r3, #0	@ prephitmp.539,
	streq	r2, [fp, #-48]	@ bit_stream_addr_1, %sfp
	orrne	r9, ip, r9, asl #25	@,, pretmp.573, bit_offset_1,
	streq	r9, [fp, #-52]	@ bit_offset_1, %sfp
	streq	r3, [fp, #-60]	@ prephitmp.539, %sfp
	strne	r9, [fp, #-60]	@, %sfp
.L18:
	mov	ip, r4, asl #5	@ tmp382, i,
	mov	r9, r4, asl #8	@ D.39425, i,
	add	r1, ip, #1	@, tmp382,
	ldr	ip, [fp, #-48]	@, %sfp
	add	lr, r9, #12	@, D.39425,
	mov	r2, r4, asl #6	@ tmp379, i,
	str	lr, [fp, #-56]	@, %sfp
	bic	lr, ip, #-16777216	@ D32.595,,
	ldr	ip, [fp, #-52]	@, %sfp
	add	r2, r2, #1	@ tmp380, tmp379,
	str	r1, [fp, #-96]	@, %sfp
	bic	r1, r0, #-33554432	@ tmp378, bit_len_0,
	orr	r0, r1, ip, asl #25	@, D32.592, tmp378,,
	str	r0, [r6, r4, asl #8]	@ D32.592,* pMsgBase.562
	str	lr, [r6, r2, asl #2]	@ D32.595,* pMsgBase.562
	add	r2, r4, #1	@ k, i,
	ldr	ip, [fp, #-96]	@, %sfp
	ldr	r1, [fp, #-60]	@, %sfp
	str	r1, [r6, ip, asl #3]	@,* pMsgBase.562
	ldr	r0, [fp, #-56]	@, %sfp
	str	r3, [r6, r0]	@ prephitmp.539,
	ldr	ip, [r5, sl]	@ temp.589, <variable>.SlcNum
	cmp	ip, r2	@ temp.589, k
	ble	.L42	@,
	rsb	r3, r4, r8	@ tmp397, i, tmp439
	rsb	lr, r2, r2, asl #3	@, tmp404, k, k,
	mov	r3, r3, asl #2	@ tmp398, tmp397,
	add	r0, r5, lr, asl #2	@, tmp406, pAvsDecParam, tmp404,
	add	r1, r3, r5	@ tmp399, tmp398, pAvsDecParam
	ldr	lr, [r0, #104]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	ldr	r1, [r1, #104]	@ prephitmp.541, <variable>.slice_start_mbn
	cmp	r1, lr	@ prephitmp.541, <variable>.slice_start_mbn
	bcc	.L20	@,
	mvn	r0, r2	@ tmp450, k
	add	lr, r0, ip	@ tmp449, tmp450, temp.589
	tst	lr, #1	@ tmp449,
	add	r0, r3, #88	@ tmp413, tmp398,
	add	r3, r5, r0	@ ivtmp.560, pAvsDecParam, tmp413
	beq	.L38	@,
	ldr	r0, [r3, #72]	@ D.39522, <variable>.slice_start_mbn
	add	r2, r2, #1	@ k, k,
	add	r3, r3, #28	@ ivtmp.560, ivtmp.560,
	cmp	r1, r0	@ prephitmp.541, D.39522
	bcc	.L20	@,
.L38:
	mov	r8, r6	@ pMsgBase.562, pMsgBase.562
	b	.L21	@
.L22:
	ldr	r6, [r3, #72]	@ D.39522, <variable>.slice_start_mbn
	add	r3, r3, #56	@ ivtmp.560, ivtmp.560,
	cmp	r1, r6	@ prephitmp.541, D.39522
	bcc	.L39	@,
	ldr	r6, [r0, #72]	@ D.39522, <variable>.slice_start_mbn
	add	r2, r2, #1	@ k, k,
	cmp	r1, r6	@ prephitmp.541, D.39522
	bcc	.L39	@,
.L21:
	add	r2, r2, #1	@ k, k,
	add	r0, r3, #28	@ tmp452, ivtmp.560,
	cmp	ip, r2	@ temp.589, k
	bgt	.L22	@,
.L39:
	mov	r6, r8	@ pMsgBase.562, pMsgBase.562
.L20:
	cmp	ip, r2	@ temp.589, k
	beq	.L43	@,
	rsb	lr, r2, r2, asl #3	@, tmp420, k, k,
	ldr	r0, [fp, #-80]	@, %sfp
	ldr	ip, [fp, #-84]	@, %sfp
	add	r3, r2, r0	@ tmp425, k,
	add	r0, r5, lr, asl #2	@, tmp422, pAvsDecParam, tmp420,
	ldr	lr, [r0, #104]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	add	r3, ip, r3, asl #8	@, prephitmp.543,, tmp425,
	sub	r0, lr, #1	@ slice_end_mbn, <variable>.slice_start_mbn,
.L24:
	mov	lr, r4, asl #4	@ tmp432, i,
	add	r9, r9, #252	@ tmp435, D.39425,
	add	r4, lr, #1	@ tmp433, tmp432,
	add	r7, r7, #1	@ j, j,
	uxth	ip, r1	@ tmp430, prephitmp.541
	orr	r1, ip, r0, asl #16	@, D32.606, tmp430, slice_end_mbn,
	str	r1, [r6, r4, asl #4]	@ D32.606,* pMsgBase.562
	str	r3, [r6, r9]	@ prephitmp.543,
.L7:
	sub	r4, r2, #1	@ i, k,
.L8:
	ldr	r3, [r5, sl]	@ <variable>.SlcNum, <variable>.SlcNum
	add	r4, r4, #1	@ i, i,
	cmp	r3, r4	@ <variable>.SlcNum, i
	bgt	.L25	@,
.L26:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L16:
	mov	r3, #0	@ prephitmp.539,
	str	r3, [fp, #-60]	@ prephitmp.539, %sfp
	b	.L18	@
.L43:
	ldrh	r0, [r5, #50]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	mov	r3, #0	@ prephitmp.543,
	ldrh	ip, [r5, #48]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	mul	lr, ip, r0	@ tmp416, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	sub	r0, lr, #1	@ slice_end_mbn, tmp416,
	b	.L24	@
.L41:
	ldr	r0, [fp, #-68]	@, %sfp
	add	ip, r2, #2	@ tmp281, temp.570,
#APP
@ 182 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/arch/arm/include/asm/memory.h" 1
	@ __pv_stub
1:	sub	r2, ip, #-2130706432	@ t, tmp281,
	.pushsection .pv_table,"a"
	.long	1b
	.popsection

@ 0 "" 2
	strb	r9, [r2, #0]	@ tmp270,* t
	ldr	r1, [r3, #88]	@ <variable>.stream_phy_addr, <variable>.stream_phy_addr
	add	lr, r1, #4	@ tmp291, <variable>.stream_phy_addr,
#APP
@ 182 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/arch/arm/include/asm/memory.h" 1
	@ __pv_stub
1:	sub	ip, lr, #-2130706432	@ t, tmp291,
	.pushsection .pv_table,"a"
	.long	1b
	.popsection

@ 0 "" 2
	mov	lr, #64	@,
	strb	lr, [ip, #0]	@,* t
	ldr	r2, [r3, #88]	@ <variable>.stream_phy_addr, <variable>.stream_phy_addr
	add	r1, r2, #5	@ tmp302, <variable>.stream_phy_addr,
#APP
@ 182 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/arch/arm/include/asm/memory.h" 1
	@ __pv_stub
1:	sub	ip, r1, #-2130706432	@ t, tmp302,
	.pushsection .pv_table,"a"
	.long	1b
	.popsection

@ 0 "" 2
	strb	lr, [ip, #0]	@,* t
	str	r3, [fp, #-88]	@,
	bl	VDMHAL_V300R001_ResetVdm	@
	ldr	r2, [fp, #-88]	@,
	ldr	r3, [fp, #-64]	@, %sfp
	ldr	r1, [r2, #88]	@ <variable>.stream_phy_addr, <variable>.stream_phy_addr
	ldr	r2, [fp, #-68]	@, %sfp
	add	r0, r1, #2	@ tmp313, <variable>.stream_phy_addr,
	rsb	ip, r3, r0	@ D.39493,, tmp313
	cmp	r2, #0	@,
	and	r0, ip, #15	@ tmp315, D.39493,
	bic	r1, ip, #15	@, D.39493,
	str	r1, [fp, #-48]	@, %sfp
	mov	r3, r0, asl #3	@, tmp315,
	str	r3, [fp, #-52]	@, %sfp
	bne	.L44	@,
	ldr	r9, [fp, #-72]	@, %sfp
	mov	r1, #1	@,
	ldr	lr, [r9, #0]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	movw	r9, #:lower16:s_RegPhyBaseAddr	@ tmp438,
	movt	r9, #:upper16:s_RegPhyBaseAddr	@ tmp438,
	add	r0, lr, #2032	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r1, [fp, #-72]	@, %sfp
	ldr	ip, [r1, #0]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r1, #1	@,
	add	r3, ip, #1792	@, s_RegPhyBaseAddr,
	add	r0, r3, #12	@,,
	bl	MEM_WritePhyWord	@
	ldr	r0, [fp, #-72]	@, %sfp
	ldr	r1, [fp, #-68]	@, %sfp
	ldr	r2, [r0, #0]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, r2, #2032	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
.L14:
	ldr	r3, [r9, #0]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r1, #0	@,
	add	r0, r3, #8	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	b	.L13	@
.L44:
	cmp	r2, #1	@,
	beq	.L45	@,
	ldr	r3, [fp, #-68]	@, %sfp
	cmp	r3, #0	@,
	movweq	r9, #:lower16:s_RegPhyBaseAddr	@ tmp438,
	movteq	r9, #:upper16:s_RegPhyBaseAddr	@ tmp438,
	beq	.L14	@,
	ldr	r9, [fp, #-68]	@, %sfp
	cmp	r9, #1	@,
	movweq	r3, #:lower16:s_RegPhyBaseAddr_1	@ tmp440,
	movteq	r3, #:upper16:s_RegPhyBaseAddr_1	@ tmp440,
	bne	.L13	@,
	ldr	ip, [r3, #0]	@ s_RegPhyBaseAddr_1, s_RegPhyBaseAddr_1
	mov	r1, #0	@,
	add	r0, ip, #8	@, s_RegPhyBaseAddr_1,
	bl	MEM_WritePhyWord	@
	b	.L13	@
.L45:
	ldr	r2, [fp, #-76]	@, %sfp
	movw	lr, #:lower16:s_RegPhyBaseAddr_1	@ tmp440,
	ldr	r1, [fp, #-68]	@, %sfp
	movt	lr, #:upper16:s_RegPhyBaseAddr_1	@ tmp440,
	ldr	r0, [r2, #0]	@ s_RegPhyBaseAddr_1, s_RegPhyBaseAddr_1
	str	lr, [fp, #-88]	@,
	add	r0, r0, #2032	@, s_RegPhyBaseAddr_1,
	bl	MEM_WritePhyWord	@
	ldr	r1, [fp, #-76]	@, %sfp
	ldr	ip, [r1, #0]	@ s_RegPhyBaseAddr_1, s_RegPhyBaseAddr_1
	ldr	r1, [fp, #-68]	@, %sfp
	add	r3, ip, #1792	@, s_RegPhyBaseAddr_1,
	add	r0, r3, #12	@,,
	bl	MEM_WritePhyWord	@
	ldr	r2, [fp, #-76]	@, %sfp
	mov	r1, r9	@, tmp270
	ldr	r0, [r2, #0]	@ s_RegPhyBaseAddr_1, s_RegPhyBaseAddr_1
	add	r0, r0, #2032	@, s_RegPhyBaseAddr_1,
	bl	MEM_WritePhyWord	@
	ldr	r3, [fp, #-88]	@,
	mov	r1, #0	@,
	ldr	ip, [r3, #0]	@ s_RegPhyBaseAddr_1, s_RegPhyBaseAddr_1
	add	r0, ip, #8	@, s_RegPhyBaseAddr_1,
	bl	MEM_WritePhyWord	@
	b	.L13	@
.L42:
	rsb	r0, r4, r8	@ tmp390, i, tmp439
	add	r3, r5, r0, asl #2	@, tmp392, pAvsDecParam, tmp390,
	ldr	r1, [r3, #104]	@ prephitmp.541, <variable>.slice_start_mbn
	b	.L20	@
	.fnend
	.size	AVSHAL_V300R001_WirteSlicMsg, .-AVSHAL_V300R001_WirteSlicMsg
	.align	2
	.global	AVSHAL_V300R001_StartDec
	.type	AVSHAL_V300R001_StartDec, %function
AVSHAL_V300R001_StartDec:
	.fnstart
.LFB1529:
	@ args = 0, pretend = 0, frame = 64
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
	ldrh	r3, [r0, #48]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	mov	r5, r0	@ pAvsDecParam, pAvsDecParam
	cmp	r3, #512	@ <variable>.PicWidthInMb,
	bhi	.L105	@,
	ldrh	r0, [r0, #50]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	cmp	r0, #512	@ <variable>.PicHeightInMb,
	bhi	.L105	@,
	cmp	r1, #1	@ VdhId,
	bls	.L94	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38949,
.L48:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L94:
	beq	.L113	@,
	movw	r6, #:lower16:g_HwMem	@ tmp759,
	movt	r6, #:upper16:g_HwMem	@ tmp759,
	ldr	r1, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r1, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L114	@,
.L53:
	movw	r2, #14424	@ tmp293,
	ldr	r0, [r5, r2]	@ D.38974, <variable>.SlcNum
	cmp	r0, #0	@ D.38974,
	ble	.L55	@,
	ldr	r3, [r5, #88]	@ temp.876, <variable>.stream_phy_addr
	sub	r4, r0, #1	@ tmp765, D.38974,
	and	r1, r4, #1	@ tmp767, tmp765,
	mvn	r4, #0	@ stream_base_addr,
	cmp	r3, #0	@ temp.876,
	beq	.L83	@,
	ldr	r2, [r5, #96]	@ <variable>.stream_lenInByte, <variable>.stream_lenInByte
	cmp	r2, #0	@ <variable>.stream_lenInByte,
	ble	.L83	@,
	bic	r3, r3, #15	@ tmp868, temp.876,
	cmp	r4, r3	@ stream_base_addr, tmp868
	movcs	r4, r3	@ stream_base_addr, tmp868
.L83:
	ldr	r3, [r5, #92]	@ D.38968, <variable>.stream_phy_addr
	cmp	r3, #0	@ D.38968,
	bne	.L115	@,
.L85:
	mov	r2, #1	@ i,
	cmp	r2, r0	@ i, D.38974
	add	r3, r5, #28	@ ivtmp.711, pAvsDecParam,
	beq	.L82	@,
	cmp	r1, #0	@ tmp767,
	beq	.L56	@,
	ldr	r1, [r3, #88]	@ temp.876, <variable>.stream_phy_addr
	cmp	r1, #0	@ temp.876,
	bne	.L96	@,
.L90:
	ldr	r1, [r3, #92]	@ D.38968, <variable>.stream_phy_addr
	cmp	r1, #0	@ D.38968,
	beq	.L92	@,
.L116:
	ldr	lr, [r3, #100]	@ tmp881, <variable>.stream_lenInByte
	cmp	lr, #0	@ tmp881,
	ble	.L92	@,
	bic	ip, r1, #15	@ tmp882, D.38968,
	cmp	r4, ip	@ stream_base_addr, tmp882
	movcs	r4, ip	@ stream_base_addr, tmp882
.L92:
	add	r2, r2, #1	@ i, tmp768,
	add	r3, r3, #28	@ ivtmp.711, tmp769,
	cmp	r2, r0	@ i, D.38974
	beq	.L82	@,
.L56:
	ldr	r1, [r3, #88]	@ temp.876, <variable>.stream_phy_addr
	cmp	r1, #0	@ temp.876,
	beq	.L59	@,
	ldr	lr, [r3, #96]	@ <variable>.stream_lenInByte, <variable>.stream_lenInByte
	cmp	lr, #0	@ <variable>.stream_lenInByte,
	ble	.L59	@,
	bic	r1, r1, #15	@ tmp298, temp.876,
	cmp	r4, r1	@ stream_base_addr, tmp298
	movcs	r4, r1	@ stream_base_addr, tmp298
.L59:
	ldr	r1, [r3, #92]	@ D.38968, <variable>.stream_phy_addr
	cmp	r1, #0	@ D.38968,
	beq	.L57	@,
	ldr	lr, [r3, #100]	@ tmp295, <variable>.stream_lenInByte
	cmp	lr, #0	@ tmp295,
	ble	.L57	@,
	bic	ip, r1, #15	@ tmp296, D.38968,
	cmp	r4, ip	@ stream_base_addr, tmp296
	movcs	r4, ip	@ stream_base_addr, tmp296
.L57:
	add	r3, r3, #28	@ tmp769, ivtmp.711,
	add	r2, r2, #1	@ tmp768, i,
	ldr	r1, [r3, #88]	@ temp.876, <variable>.stream_phy_addr
	cmp	r1, #0	@ temp.876,
	beq	.L90	@,
.L96:
	ldr	ip, [r3, #96]	@ <variable>.stream_lenInByte, <variable>.stream_lenInByte
	cmp	ip, #0	@ <variable>.stream_lenInByte,
	ble	.L90	@,
	bic	r1, r1, #15	@ tmp879, temp.876,
	cmp	r4, r1	@ stream_base_addr, tmp879
	movcs	r4, r1	@ stream_base_addr, tmp879
	ldr	r1, [r3, #92]	@ D.38968, <variable>.stream_phy_addr
	cmp	r1, #0	@ D.38968,
	bne	.L116	@,
	add	r2, r2, #1	@ i, tmp768,
	add	r3, r3, #28	@ ivtmp.711, tmp769,
	cmp	r2, r0	@ i, D.38974
	bne	.L56	@,
.L82:
	cmn	r4, #1	@ stream_base_addr,
	beq	.L55	@,
	ldrh	ip, [r5, #50]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	mov	r7, #0	@ tmp300,
	ldrh	lr, [r5, #48]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	mov	r3, r7	@ tmp305, tmp300
	ldr	sl, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC6	@,
	mul	r8, lr, ip	@ tmp303, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	sub	r9, r8, #1	@ tmp304, tmp303,
	bfi	r3, r9, #0, #20	@ tmp305, tmp304,,
	mov	r9, #805306374	@ tmp325,
	orr	r2, r3, #1090519040	@ tmp314, tmp305,
	orr	lr, r2, #4194304	@ tmp314, tmp314,
	bfi	lr, r7, #25, #1	@ tmp314, tmp300,,
	str	lr, [fp, #-48]	@ tmp314,
	str	lr, [sl, #8]	@ tmp314,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	movw	ip, #14844	@ tmp322,
	ldr	r8, [r5, ip]	@ <variable>.VahbStride, <variable>.VahbStride
	movw	r0, #14864	@ tmp334,
	mov	r2, #1	@ tmp330,
	ldr	ip, [r5, r0]	@ <variable>.Compress_en, <variable>.Compress_en
	mov	r0, #3	@,
	mov	r1, r8, lsr #6	@ tmp323, <variable>.VahbStride,
	ldr	r8, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	bfi	r9, r1, #4, #10	@ tmp325, tmp323,,
	movw	r1, #:lower16:.LC7	@,
	orr	r3, r9, #16384	@ tmp328, tmp325,
	movt	r1, #:upper16:.LC7	@,
	bic	sl, r3, #32768	@ tmp329, tmp328,
	bfi	sl, r2, #16, #12	@ tmp329, tmp330,,
	bic	r9, sl, #805306368	@ tmp331, tmp329,
	orr	lr, r9, #536870912	@ tmp336, tmp331,
	bfi	lr, ip, #30, #1	@ tmp336, <variable>.Compress_en,,
	bfi	lr, r7, #31, #1	@ tmp337, tmp300,,
	str	lr, [fp, #-48]	@ tmp337,
	str	lr, [r8, #12]	@ tmp337,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	sl, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r2, [r6, #48]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC8	@,
	bic	r3, r2, #15	@ tmp346, <variable>.MsgSlotAddr,
	str	r3, [fp, #-48]	@ tmp346, <variable>.av_msg_addr
	str	r3, [sl, #16]	@ tmp346,
	movw	sl, #:lower16:s_RegPhyBaseAddr	@ tmp370,
	ldr	r2, [fp, #-48]	@, D32
	movt	sl, #:upper16:s_RegPhyBaseAddr	@ tmp370,
	bl	dprint_vfmw	@
	ldr	ip, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r9, [r6, #32]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC9	@,
	bic	r8, r9, #15	@ tmp355, <variable>.MsgSlotAddr,
	str	r8, [fp, #-48]	@ tmp355, <variable>.va_msg_addr
	str	r8, [ip, #20]	@ tmp355,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r4, [fp, #-48]	@ stream_base_addr, <variable>.stream_base_addr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	str	r4, [r2, #24]	@ stream_base_addr,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldrh	r3, [r5, #48]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	movw	r0, #:lower16:-121389052	@,
	movt	r0, #:upper16:-121389052	@,
	cmp	r3, #120	@ <variable>.PicWidthInMb,
	strhi	r7, [fp, #-48]	@ tmp300, D32
	movls	r3, #65536	@ tmp368,
	strls	r3, [fp, #-48]	@ tmp368, D32
	bl	MEM_ReadPhyWord	@
	ldr	r8, [sl, #0]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r9, [fp, #-48]	@ D32, D32
	orr	r1, r0, r9	@ tmp373,, D32
	add	r0, r8, #4	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r0, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	movw	r1, #:lower16:3148803	@ tmp375,
	movt	r1, #:upper16:3148803	@ tmp375,
	str	r1, [fp, #-48]	@ tmp375, D32
	str	r1, [r0, #60]	@ tmp375,
	mov	r0, #3	@,
	ldr	ip, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	movw	r1, #:lower16:.LC11	@,
	ldr	r2, [fp, #-48]	@ D32.743, D32
	movt	r1, #:upper16:.LC11	@,
	str	r2, [ip, #64]	@ D32.743,
	ldr	r7, [fp, #-48]	@ D32.746, D32
	ldr	r3, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r7, [r3, #68]	@ D32.746,
	ldr	r9, [fp, #-48]	@ D32.749, D32
	ldr	sl, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r9, [sl, #72]	@ D32.749,
	movw	r9, #14440	@ tmp393,
	ldr	r8, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	ip, [fp, #-48]	@ D32.752, D32
	str	ip, [r8, #76]	@ D32.752,
	ldr	r7, [fp, #-48]	@ D32.755, D32
	ldr	r2, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r7, [r2, #80]	@ D32.755,
	movw	r7, #14844	@ tmp402,
	ldr	r3, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	sl, [fp, #-48]	@ D32.758, D32
	str	sl, [r3, #84]	@ D32.758,
	ldr	r2, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r8, [r5, r9]	@ <variable>.CurPicAddr, <variable>.CurPicAddr
	bic	ip, r8, #15	@ tmp395, <variable>.CurPicAddr,
	str	ip, [fp, #-48]	@ tmp395, <variable>.ystaddr_1d
	str	ip, [r2, #96]	@ tmp395,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r5, r7]	@ <variable>.VahbStride, <variable>.VahbStride
	ldr	sl, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, #3	@,
	ldrh	r7, [r5, #50]	@ height_in_mb, <variable>.PicHeightInMb
	movw	r1, #:lower16:.LC12	@,
	str	r3, [fp, #-48]	@ <variable>.VahbStride, <variable>.ystride_1d
	movt	r1, #:upper16:.LC12	@,
	str	r3, [sl, #100]	@ <variable>.VahbStride,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldrh	r9, [r5, #48]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	movw	r3, #2047	@ tmp411,
	mov	r2, r9, asl #4	@ D.39093, <variable>.PicWidthInMb,
	sub	r8, r2, #1	@ tmp410, D.39093,
	cmp	r8, r3	@ tmp410, tmp411
	bhi	.L117	@,
.L64:
	mov	r3, #16	@ level,
.L66:
	mov	r8, r7, asl #4	@ tmp421, height_in_mb,
	movw	ip, #14844	@ tmp428,
	add	r1, r8, #31	@ tmp422, tmp421,
	add	r0, r7, #1	@ tmp426, height_in_mb,
	ldr	sl, [r5, ip]	@ <variable>.VahbStride, <variable>.VahbStride
	mov	r9, r1, lsr #5	@ tmp423, tmp422,
	mov	r7, r0, lsr #1	@ tmp427, tmp426,
	ldr	r2, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, #3	@,
	mul	r8, r9, r3	@ D.39116, tmp423, level
	movw	r1, #:lower16:.LC13	@,
	mul	r3, sl, r7	@ tmp429, <variable>.VahbStride, tmp427
	movt	r1, #:upper16:.LC13	@,
	mov	r7, #0	@ tmp444,
	mvn	r9, #0	@ tmp458,
	movw	sl, #:lower16:g_HwMem	@ tmp433,
	movt	sl, #:upper16:g_HwMem	@ tmp433,
	add	r3, r3, r8, asl #4	@, tmp431, tmp429, D.39116,
	mov	lr, r3, asl #1	@ tmp432, tmp431,
	str	lr, [fp, #-48]	@ tmp432, <variable>.uvoffset_1d
	str	lr, [r2, #104]	@ tmp432,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r2, r8, asl #5	@ D32.455, D.39116,
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC14	@,
	str	r2, [ip, #108]	@ D32.455,
	ldr	r3, [r6, #1184]	@ D32.456, <variable>.DnrMbInfoAddr
	ldr	r8, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [fp, #-48]	@ D32.456, D32
	str	r3, [r8, #144]	@ D32.456,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r7, [fp, #-48]	@ tmp444, D32
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC15	@,
	movt	r1, #:upper16:.LC15	@,
	str	r7, [r2, #148]	@ tmp444,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r7, [fp, #-48]	@ tmp444, D32
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	str	r7, [ip, #152]	@ tmp444,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r9, [r3, #32]	@ tmp458,
	ldr	r0, [r6, #48]	@, <variable>.MsgSlotAddr
	bl	MEM_Phy2Vir	@
	subs	r8, r0, #0	@ pMsgBase,
	beq	.L118	@,
	ldrh	r2, [r5, #48]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	mov	r9, r8	@ p32.796, pMsgBase
	ldrh	r3, [r5, #50]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	mov	r0, #4	@,
	ldr	lr, [fp, #-48]	@ tmp467,
	sub	ip, r2, #1	@ tmp466, <variable>.PicWidthInMb,
	sub	r1, r3, #1	@ tmp470, <variable>.PicHeightInMb,
	ldrb	r2, [r5, #31]	@ zero_extendqisi2	@ <variable>.ChromaFormat, <variable>.ChromaFormat
	bfi	lr, ip, #0, #9	@ tmp467, tmp466,,
	ldrb	ip, [r5, #30]	@ zero_extendqisi2	@ <variable>.SamplePrecision, <variable>.SamplePrecision
	bfi	lr, r1, #16, #9	@ tmp471, tmp470,,
	movw	r1, #:lower16:.LC18	@,
	bfi	lr, r2, #25, #2	@ tmp472, <variable>.ChromaFormat,,
	movt	r1, #:upper16:.LC18	@,
	bfi	lr, ip, #27, #2	@ tmp476, <variable>.SamplePrecision,,
	bic	r3, lr, #65024	@ tmp481, tmp476,
	bfi	r3, r7, #29, #3	@ tmp481, tmp444,,
	str	r3, [fp, #-48]	@ tmp481,
	str	r3, [r9], #4	@ tmp481,
	add	r2, r9, r0	@, p32.796,
	str	r2, [fp, #-100]	@, %sfp
	ldr	ip, [fp, #-100]	@, %sfp
	ldr	r2, [fp, #-48]	@, D32
	add	lr, ip, r0	@,,
	str	lr, [fp, #-96]	@, %sfp
	bl	dprint_vfmw	@
	ldrb	r3, [r5, #16]	@ zero_extendqisi2	@ <variable>.ProgrsvFrame, <variable>.ProgrsvFrame
	ldrb	r1, [r5, #8]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	mov	r0, #4	@,
	ldrb	r2, [r5, #7]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	and	r3, r3, #1	@ tmp489, <variable>.ProgrsvFrame,
	bfi	r3, r1, #1, #2	@ tmp489, <variable>.PicStruct,,
	ldrb	ip, [r5, #15]	@ zero_extendqisi2	@ <variable>.TopFieldFirst, <variable>.TopFieldFirst
	bfi	r3, r2, #3, #2	@ tmp493, <variable>.PicCodingType,,
	ldrb	r2, [r5, #13]	@ zero_extendqisi2	@, <variable>.FixQPFlag
	ldrb	lr, [r5, #14]	@ zero_extendqisi2	@ <variable>.RepeatFirstField, <variable>.RepeatFirstField
	bfi	r3, ip, #5, #1	@ tmp497, <variable>.TopFieldFirst,,
	movw	r1, #:lower16:.LC19	@,
	movt	r1, #:upper16:.LC19	@,
	str	r2, [fp, #-56]	@, %sfp
	bfi	r3, lr, #6, #1	@ tmp501, <variable>.RepeatFirstField,,
	ldr	r2, [fp, #-96]	@, %sfp
	ldrb	ip, [r5, #12]	@ zero_extendqisi2	@ <variable>.PicQuant, <variable>.PicQuant
	add	r2, r2, r0	@,,
	str	r2, [fp, #-92]	@, %sfp
	ldrb	lr, [r5, #11]	@ zero_extendqisi2	@, <variable>.SkipModeFlag
	str	lr, [fp, #-60]	@, %sfp
	add	lr, r2, r0	@,,
	ldr	r2, [fp, #-56]	@, %sfp
	str	lr, [fp, #-88]	@, %sfp
	ldrb	lr, [r5, #22]	@ zero_extendqisi2	@, <variable>.AdvPredModeDisable
	bfi	r3, r2, #7, #1	@ tmp505,,,
	ldr	r2, [fp, #-88]	@, %sfp
	bfi	r3, ip, #8, #6	@ tmp509, <variable>.PicQuant,,
	str	lr, [fp, #-56]	@, %sfp
	add	lr, r2, r0	@,,
	add	r2, lr, r0	@,,
	str	lr, [fp, #-84]	@, %sfp
	ldrb	ip, [r5, #10]	@ zero_extendqisi2	@ <variable>.PicRefFlag, <variable>.PicRefFlag
	str	r2, [fp, #-80]	@, %sfp
	ldr	lr, [fp, #-80]	@, %sfp
	ldr	r2, [fp, #-60]	@, %sfp
	add	lr, lr, r0	@,,
	bfi	r3, r2, #14, #1	@ tmp513,,,
	ldrb	r2, [r5, #9]	@ zero_extendqisi2	@ <variable>.NoFwdRefFlag, <variable>.NoFwdRefFlag
	str	lr, [fp, #-76]	@, %sfp
	ldr	lr, [fp, #-56]	@, %sfp
	bfi	r3, lr, #15, #1	@ tmp517,,,
	ldr	lr, [fp, #-76]	@, %sfp
	bfi	r3, ip, #16, #1	@ tmp521, <variable>.PicRefFlag,,
	add	lr, lr, r0	@,,
	bfi	r3, r2, #17, #1	@ tmp525, <variable>.NoFwdRefFlag,,
	add	ip, lr, r0	@,,
	str	lr, [fp, #-72]	@, %sfp
	add	lr, ip, r0	@,,
	bfi	r3, r7, #18, #14	@ tmp529, tmp444,,
	add	r2, lr, r0	@,,
	str	r3, [fp, #-48]	@ tmp529,
	str	ip, [fp, #-68]	@, %sfp
	add	ip, r2, r0	@,,
	str	lr, [fp, #-64]	@, %sfp
	add	lr, ip, r0	@,,
	str	r2, [fp, #-60]	@, %sfp
	str	r3, [r8, #4]	@ tmp529,
	ldr	r2, [fp, #-48]	@, D32
	str	ip, [fp, #-56]	@, %sfp
	str	lr, [fp, #-104]	@, %sfp
	bl	dprint_vfmw	@
	ldrb	r3, [r5, #20]	@ zero_extendqisi2	@ <variable>.LoopFiltDisable, <variable>.LoopFiltDisable
	mov	r0, #4	@,
	ldrb	r1, [r5, #19]	@ zero_extendqisi2	@ <variable>.LoopFiltParamFlag, <variable>.LoopFiltParamFlag
	ldrb	r2, [r5, #18]	@ zero_extendqisi2	@ <variable>.AlphaOffset, <variable>.AlphaOffset
	and	r3, r3, #1	@ tmp537, <variable>.LoopFiltDisable,
	ldrb	ip, [r5, #17]	@ zero_extendqisi2	@ <variable>.BetaOffset, <variable>.BetaOffset
	bfi	r3, r1, #1, #1	@ tmp537, <variable>.LoopFiltParamFlag,,
	bfi	r3, r2, #2, #5	@ tmp541, <variable>.AlphaOffset,,
	movw	r1, #:lower16:.LC20	@,
	bfi	r3, ip, #7, #5	@ tmp545, <variable>.BetaOffset,,
	str	r3, [fp, #-48]	@ tmp545,
	str	r3, [r9, #4]	@ tmp545,
	movt	r1, #:upper16:.LC20	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldrb	r3, [r5, #25]	@ zero_extendqisi2	@ <variable>.FwdTopFieldFirst0, <variable>.FwdTopFieldFirst0
	ldrb	r1, [r5, #26]	@ zero_extendqisi2	@ <variable>.FwdPicStruct0, <variable>.FwdPicStruct0
	mov	r0, #4	@,
	ldrb	ip, [r5, #27]	@ zero_extendqisi2	@ <variable>.FwdTopFieldFirst1, <variable>.FwdTopFieldFirst1
	and	r3, r3, #1	@ tmp556, <variable>.FwdTopFieldFirst0,
	ldrb	r2, [r5, #28]	@ zero_extendqisi2	@ <variable>.FwdPicStruct1, <variable>.FwdPicStruct1
	bfi	r3, r1, #1, #2	@ tmp556, <variable>.FwdPicStruct0,,
	ldrb	lr, [r5, #23]	@ zero_extendqisi2	@ <variable>.BwdTopFieldFirst, <variable>.BwdTopFieldFirst
	bfi	r3, ip, #3, #1	@ tmp560, <variable>.FwdTopFieldFirst1,,
	bfi	r3, r2, #4, #2	@ tmp564, <variable>.FwdPicStruct1,,
	ldrb	ip, [r5, #24]	@ zero_extendqisi2	@ <variable>.BwdPicStruct, <variable>.BwdPicStruct
	bfi	r3, lr, #6, #1	@ tmp568, <variable>.BwdTopFieldFirst,,
	ldr	lr, [fp, #-100]	@, %sfp
	bfi	r3, ip, #7, #2	@ tmp572, <variable>.BwdPicStruct,,
	movw	r1, #:lower16:.LC21	@,
	bfi	r3, r7, #9, #23	@ tmp576, tmp444,,
	str	r3, [fp, #-48]	@ tmp576,
	str	r3, [lr, #4]	@ tmp576,
	movt	r1, #:upper16:.LC21	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [fp, #-96]	@, %sfp
	movw	r1, #14428	@ tmp581,
	mov	r0, #4	@,
	ldr	r3, [r5, r1]	@ <variable>.BwdRefPicAddr, <variable>.BwdRefPicAddr
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	bic	ip, r3, #15	@ tmp583, <variable>.BwdRefPicAddr,
	str	ip, [fp, #-48]	@ tmp583, <variable>.bwd_address
	str	ip, [r2, #4]	@ tmp583,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [fp, #-92]	@, %sfp
	movw	r0, #14432	@ tmp588,
	movw	r1, #:lower16:.LC23	@,
	ldr	r3, [r5, r0]	@ <variable>.FwdRefPic0Addr, <variable>.FwdRefPic0Addr
	movt	r1, #:upper16:.LC23	@,
	mov	r0, #4	@,
	bic	r2, r3, #15	@ tmp590, <variable>.FwdRefPic0Addr,
	str	r2, [fp, #-48]	@ tmp590, <variable>.fwd_address_0
	str	r2, [ip, #4]	@ tmp590,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	lr, [fp, #-88]	@, %sfp
	movw	r1, #14436	@ tmp595,
	mov	r0, #4	@,
	ldr	r3, [r5, r1]	@ <variable>.FwdRefPic1Addr, <variable>.FwdRefPic1Addr
	movw	r1, #:lower16:.LC24	@,
	movt	r1, #:upper16:.LC24	@,
	bic	ip, r3, #15	@ tmp597, <variable>.FwdRefPic1Addr,
	str	ip, [fp, #-48]	@ tmp597, <variable>.fwd_address_1
	str	ip, [lr, #4]	@ tmp597,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [fp, #-84]	@, %sfp
	movw	r0, #14452	@ tmp602,
	movw	r1, #:lower16:.LC25	@,
	ldr	r2, [r5, r0]	@ <variable>.rcn_address, <variable>.rcn_address
	movt	r1, #:upper16:.LC25	@,
	mov	r0, #4	@,
	bic	r3, r2, #15	@ tmp604, <variable>.rcn_address,
	str	r3, [fp, #-48]	@ tmp604, <variable>.rcn_address
	str	r3, [ip, #4]	@ tmp604,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldrb	r1, [r5, #29]	@ zero_extendqisi2	@ <variable>.ColPicType, <variable>.ColPicType
	ldr	ip, [fp, #-80]	@, %sfp
	mov	r0, #4	@,
	ldrb	r2, [r5, #21]	@ zero_extendqisi2	@ <variable>.ColPicStruct, <variable>.ColPicStruct
	and	r3, r1, #1	@ tmp612, <variable>.ColPicType,
	movw	r1, #:lower16:.LC26	@,
	movt	r1, #:upper16:.LC26	@,
	bfi	r3, r2, #24, #2	@ tmp612, <variable>.ColPicStruct,,
	str	r3, [fp, #-48]	@ tmp612,
	str	r3, [ip, #4]	@ tmp612,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	lr, [fp, #-76]	@, %sfp
	ldr	r2, [r5, #64]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	mov	r3, r7	@ tmp620, tmp444
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC27	@,
	bfi	r3, r2, #0, #24	@ tmp620, <variable>.StreamPhyAddr,,
	str	r3, [fp, #-48]	@ tmp620,
	str	r3, [lr, #4]	@ tmp620,
	movt	r1, #:upper16:.LC27	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r1, [r5, #80]	@ <variable>.StreamLength, <variable>.StreamLength
	ldr	r2, [fp, #-72]	@, %sfp
	mov	r0, #4	@,
	ldr	ip, [r5, #72]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	bic	r3, r1, #-16777216	@ tmp628, <variable>.StreamLength,
	movw	r1, #:lower16:.LC28	@,
	movt	r1, #:upper16:.LC28	@,
	bfi	r3, ip, #24, #7	@ tmp628, <variable>.StreamBitOffset,,
	str	r3, [fp, #-48]	@ tmp628,
	str	r3, [r2, #4]	@ tmp628,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [fp, #-68]	@, %sfp
	ldr	ip, [r5, #68]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC29	@,
	movt	r1, #:upper16:.LC29	@,
	bfi	r7, ip, #0, #24	@ tmp633, <variable>.StreamPhyAddr,,
	str	r7, [fp, #-48]	@ tmp633,
	str	r7, [r2, #4]	@ tmp633,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldrb	r3, [r5, #32]	@ zero_extendqisi2	@ <variable>.weighting_quant_flag, <variable>.weighting_quant_flag
	ldrb	r1, [r5, #33]	@ zero_extendqisi2	@ <variable>.chroma_quant_param_disable, <variable>.chroma_quant_param_disable
	mov	r0, #4	@,
	ldrb	ip, [r5, #35]	@ zero_extendqisi2	@ <variable>.chroma_quant_param_delta_v, <variable>.chroma_quant_param_delta_v
	and	r3, r3, #1	@ tmp642, <variable>.weighting_quant_flag,
	ldrb	r2, [r5, #34]	@ zero_extendqisi2	@ <variable>.chroma_quant_param_delta_u, <variable>.chroma_quant_param_delta_u
	bfi	r3, r1, #1, #1	@ tmp642, <variable>.chroma_quant_param_disable,,
	ldrb	lr, [r5, #36]	@ zero_extendqisi2	@ <variable>.aec_enable, <variable>.aec_enable
	bfi	r3, ip, #2, #6	@ tmp646, <variable>.chroma_quant_param_delta_v,,
	bfi	r3, r2, #8, #6	@ tmp650, <variable>.chroma_quant_param_delta_u,,
	ldrb	ip, [r5, #37]	@ zero_extendqisi2	@ <variable>.p_filed_enhanced_flag, <variable>.p_filed_enhanced_flag
	bfi	r3, lr, #14, #1	@ tmp654, <variable>.aec_enable,,
	ldrb	r2, [r5, #38]	@ zero_extendqisi2	@ <variable>.b_filed_enhanced_flag, <variable>.b_filed_enhanced_flag
	bfi	r3, ip, #15, #1	@ tmp658, <variable>.p_filed_enhanced_flag,,
	ldr	ip, [fp, #-64]	@, %sfp
	bfi	r3, r2, #16, #1	@ tmp662, <variable>.b_filed_enhanced_flag,,
	str	r3, [fp, #-48]	@ tmp662,
	movw	r1, #:lower16:.LC30	@,
	movt	r1, #:upper16:.LC30	@,
	str	r3, [ip, #4]	@ tmp662,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	lr, [fp, #-60]	@, %sfp
	ldr	r2, [sl, #1140]	@ <variable>.PmvTopAddr, <variable>.PmvTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC31	@,
	movt	r1, #:upper16:.LC31	@,
	bic	ip, r2, #15	@ tmp672, <variable>.PmvTopAddr,
	str	ip, [fp, #-48]	@ tmp672, <variable>.pmv_top_addr
	str	ip, [lr, #4]	@ tmp672,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [fp, #-56]	@, %sfp
	ldr	r3, [sl, #1144]	@ <variable>.RcnTopAddr, <variable>.RcnTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC32	@,
	movt	r1, #:upper16:.LC32	@,
	bic	r2, r3, #15	@ tmp679, <variable>.RcnTopAddr,
	str	r2, [fp, #-48]	@ tmp679, <variable>.topmb_intra_addr
	str	r2, [ip, #4]	@ tmp679,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r1, [fp, #-104]	@, %sfp
	movw	r0, #14448	@ tmp684,
	ldr	r3, [r5, r0]	@ <variable>.ColPmvAddr, <variable>.ColPmvAddr
	add	r2, r1, #4	@ p32.852,,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC33	@,
	bic	r3, r3, #15	@ tmp686, <variable>.ColPmvAddr,
	str	r3, [fp, #-48]	@ tmp686, <variable>.colpic_mv_addr
	str	r3, [r2, #4]	@ tmp686,
	movt	r1, #:upper16:.LC33	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	add	r2, r5, #14400	@ ivtmp.702, pAvsDecParam,
	add	r0, r2, #60	@ ivtmp.702, ivtmp.702,
	add	r3, r8, #68	@ ivtmp.705, pMsgBase,
	add	lr, r8, #196	@ D.39817, pMsgBase,
.L69:
	mov	r1, r0	@ tmp763, ivtmp.702
	mov	r2, r3	@ tmp764, ivtmp.705
	ldr	ip, [r1], #4	@ D32.475, <variable>.PmvConfigTab
	str	ip, [fp, #-48]	@ D32.475, D32
	str	ip, [r2], #4	@ D32.475,
	ldr	ip, [r0, #4]	@ D32.475, <variable>.PmvConfigTab
	add	r0, r1, #4	@ ivtmp.702, tmp763,
	str	ip, [fp, #-48]	@ D32.475, D32
	str	ip, [r3, #4]	@ D32.475,
	add	r3, r2, #4	@ ivtmp.705, tmp764,
	cmp	r3, lr	@ ivtmp.705, D.39817
	bne	.L69	@,
	movw	r1, #14444	@ tmp692,
	mov	r0, #4	@,
	ldr	r3, [r5, r1]	@ <variable>.CurPmvAddr, <variable>.CurPmvAddr
	movw	r1, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC34	@,
	bic	lr, r3, #15	@ tmp694, <variable>.CurPmvAddr,
	str	lr, [fp, #-48]	@ tmp694, <variable>.pmv_colmb_addr
	str	lr, [r8, #196]	@ tmp694,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r6, #1152]	@ <variable>.DblkTopAddr, <variable>.DblkTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC35	@,
	bic	r2, ip, #15	@ tmp701, <variable>.DblkTopAddr,
	str	r2, [fp, #-48]	@ tmp701, <variable>.dblk_top_addr
	str	r2, [r8, #200]	@ tmp701,
	movt	r1, #:upper16:.LC35	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r6, #1136]	@ <variable>.SedTopAddr, <variable>.SedTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC36	@,
	bic	ip, r3, #15	@ tmp708, <variable>.SedTopAddr,
	str	ip, [fp, #-48]	@ tmp708, <variable>.sed_top_addr
	str	ip, [r8, #204]	@ tmp708,
	movt	r1, #:upper16:.LC36	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, #48]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC37	@,
	add	r3, r2, #320	@ D32.479, <variable>.MsgSlotAddr,
	str	r3, [fp, #-48]	@ D32.479, D32
	str	r3, [r8, #252]	@ D32.479,
	movt	r1, #:upper16:.LC37	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldrb	r0, [r5, #32]	@ zero_extendqisi2	@ <variable>.weighting_quant_flag, <variable>.weighting_quant_flag
	cmp	r0, #1	@ <variable>.weighting_quant_flag,
	beq	.L119	@,
.L70:
	mov	r0, r5	@, pAvsDecParam
	mov	r1, r4	@, stream_base_addr
	mov	r2, #0	@,
	bl	AVSHAL_V300R001_WirteSlicMsg	@
	mov	r0, #0	@ D.38949,
	b	.L48	@
.L117:
	sub	r0, r2, #2048	@ tmp412, D.39093,
	sub	r1, r0, #1	@ tmp412, tmp412,
	cmp	r1, r3	@ tmp412, tmp411
	movls	r3, #32	@ level,
	bls	.L66	@,
	sub	r9, r2, #4096	@ tmp415, D.39093,
	sub	sl, r9, #1	@ tmp415, tmp415,
	cmp	sl, r3	@ tmp415, tmp411
	movls	r3, #48	@ level,
	bls	.L66	@,
	sub	r8, r2, #6144	@ tmp418, D.39093,
	sub	r2, r8, #1	@ tmp418, tmp418,
	cmp	r2, r3	@ tmp418, tmp411
	movls	r3, #64	@ level,
	bls	.L66	@,
	b	.L64	@
.L115:
	ldr	ip, [r5, #100]	@ tmp870, <variable>.stream_lenInByte
	cmp	ip, #0	@ tmp870,
	ble	.L85	@,
	bic	lr, r3, #15	@ tmp871, D.38968,
	cmp	r4, lr	@ stream_base_addr, tmp871
	movcs	r4, lr	@ stream_base_addr, tmp871
	b	.L85	@
.L119:
	add	r8, r8, #256	@ p32.786, pMsgBase,
	mov	r2, #0	@ ivtmp.678,
	mov	r3, r2	@ ivtmp.658, ivtmp.678
	mov	r1, r8	@ p32.786, p32.786
	b	.L73	@
.L120:
	add	r7, r5, r2	@ D.39786, pAvsDecParam, ivtmp.678
	add	r0, r7, #14592	@ tmp718, D.39786,
	add	ip, r7, #14528	@ tmp729, D.39786,
	ldrb	r6, [r0, #12]	@ zero_extendqisi2	@ tmp724, <variable>.cur_wq_matrix
	ldrb	r7, [r0, #20]	@ zero_extendqisi2	@ tmp719, <variable>.cur_wq_matrix
	ldrb	lr, [ip, #60]	@ zero_extendqisi2	@ tmp730, <variable>.cur_wq_matrix
	mov	r6, r6, asl #16	@ tmp726, tmp724,
	ldrb	ip, [r0, #4]	@ zero_extendqisi2	@ tmp735, <variable>.cur_wq_matrix
	orr	r0, r6, r7, asl #24	@, tmp727, tmp726, tmp719,
	orr	r0, r0, lr	@ tmp732, tmp727, tmp730
	orr	r0, r0, ip, asl #8	@, prephitmp.643, tmp732, tmp735,
	str	r0, [fp, #-48]	@ prephitmp.643, D32
.L72:
	add	r3, r3, #1	@ tmp760, ivtmp.658,
	str	r0, [r1, #0]	@ prephitmp.643,* p32.786
	cmp	r3, #16	@ tmp760,
	add	r2, r2, #16	@ tmp761, ivtmp.678,
	beq	.L70	@,
	tst	r3, #1	@ tmp760,
	add	r1, r1, #4	@ tmp762, p32.786,
	bne	.L77	@,
	add	lr, r5, r2	@ D.39786, pAvsDecParam, tmp761
	add	r0, lr, #14592	@ tmp804, D.39786,
	add	ip, lr, #14528	@ tmp814, D.39786,
	ldrb	r6, [r0, #12]	@ zero_extendqisi2	@ tmp811, <variable>.cur_wq_matrix
	ldrb	r7, [r0, #20]	@ zero_extendqisi2	@ tmp807, <variable>.cur_wq_matrix
	ldrb	lr, [ip, #60]	@ zero_extendqisi2	@ tmp817, <variable>.cur_wq_matrix
	mov	r6, r6, asl #16	@ tmp812, tmp811,
	ldrb	ip, [r0, #4]	@ zero_extendqisi2	@ tmp821, <variable>.cur_wq_matrix
	orr	r0, r6, r7, asl #24	@, tmp813, tmp812, tmp807,
	orr	r7, r0, lr	@ tmp818, tmp813, tmp817
	orr	r0, r7, ip, asl #8	@, prephitmp.643, tmp818, tmp821,
.L98:
	tst	r3, #1	@ tmp760,
	str	r0, [r1, #0]	@ prephitmp.643,
	add	r0, r2, #16	@ ivtmp.678, tmp761,
	bne	.L99	@,
	add	r6, r5, r0	@ D.39794, pAvsDecParam, ivtmp.678
	add	lr, r6, #14592	@ tmp828, D.39794,
	add	ip, r6, #14528	@ tmp837, D.39794,
	ldrb	r0, [lr, #0]	@ zero_extendqisi2	@ tmp834, <variable>.cur_wq_matrix
	ldrb	r7, [lr, #8]	@ zero_extendqisi2	@ tmp831, <variable>.cur_wq_matrix
	ldrb	lr, [ip, #56]	@ zero_extendqisi2	@ tmp844, <variable>.cur_wq_matrix
	mov	r6, r0, asl #16	@ tmp835, tmp834,
	ldrb	r0, [ip, #48]	@ zero_extendqisi2	@ tmp840, <variable>.cur_wq_matrix
	orr	ip, r6, r7, asl #24	@, tmp836, tmp835, tmp831,
	orr	r7, ip, r0	@ tmp841, tmp836, tmp840
	orr	r0, r7, lr, asl #8	@, prephitmp.643, tmp841, tmp844,
.L100:
	str	r0, [r1, #4]	@ prephitmp.643,
	add	r3, r3, #2	@ ivtmp.658, tmp760,
	add	r2, r2, #32	@ ivtmp.678, tmp761,
	add	r1, r1, #8	@ p32.786, tmp762,
.L73:
	tst	r3, #1	@ ivtmp.658,
	beq	.L120	@,
	add	r7, r5, r2	@ D.39794, pAvsDecParam, ivtmp.678
	add	lr, r7, #14592	@ tmp739, D.39794,
	add	ip, r7, #14528	@ tmp749, D.39794,
	ldrb	r6, [lr, #0]	@ zero_extendqisi2	@ tmp744, <variable>.cur_wq_matrix
	ldrb	r7, [lr, #8]	@ zero_extendqisi2	@ tmp740, <variable>.cur_wq_matrix
	ldrb	r0, [ip, #48]	@ zero_extendqisi2	@ tmp750, <variable>.cur_wq_matrix
	ldrb	lr, [ip, #56]	@ zero_extendqisi2	@ tmp755, <variable>.cur_wq_matrix
	mov	r6, r6, asl #16	@ tmp746, tmp744,
	orr	ip, r6, r7, asl #24	@, tmp747, tmp746, tmp740,
	orr	r0, ip, r0	@ tmp752, tmp747, tmp750
	orr	r0, r0, lr, asl #8	@, prephitmp.643, tmp752, tmp755,
	str	r0, [fp, #-48]	@ prephitmp.643, D32
	b	.L72	@
.L99:
	add	lr, r5, r0	@ D.39786, pAvsDecParam, ivtmp.678
	add	r0, lr, #14592	@ tmp848, D.39786,
	add	ip, lr, #14528	@ tmp858, D.39786,
	ldrb	r6, [r0, #12]	@ zero_extendqisi2	@ tmp855, <variable>.cur_wq_matrix
	ldrb	r7, [r0, #20]	@ zero_extendqisi2	@ tmp851, <variable>.cur_wq_matrix
	ldrb	lr, [ip, #60]	@ zero_extendqisi2	@ tmp861, <variable>.cur_wq_matrix
	mov	r6, r6, asl #16	@ tmp856, tmp855,
	ldrb	ip, [r0, #4]	@ zero_extendqisi2	@ tmp865, <variable>.cur_wq_matrix
	orr	r0, r6, r7, asl #24	@, tmp857, tmp856, tmp851,
	orr	r7, r0, lr	@ tmp862, tmp857, tmp861
	orr	r0, r7, ip, asl #8	@, prephitmp.643, tmp862, tmp865,
	b	.L100	@
.L77:
	add	r0, r5, r2	@ D.39794, pAvsDecParam, tmp761
	add	lr, r0, #14592	@ tmp784, D.39794,
	add	ip, r0, #14528	@ tmp793, D.39794,
	ldrb	r6, [lr, #0]	@ zero_extendqisi2	@ tmp790, <variable>.cur_wq_matrix
	ldrb	r7, [lr, #8]	@ zero_extendqisi2	@ tmp787, <variable>.cur_wq_matrix
	ldrb	r0, [ip, #48]	@ zero_extendqisi2	@ tmp796, <variable>.cur_wq_matrix
	ldrb	lr, [ip, #56]	@ zero_extendqisi2	@ tmp800, <variable>.cur_wq_matrix
	mov	r6, r6, asl #16	@ tmp791, tmp790,
	orr	ip, r6, r7, asl #24	@, tmp792, tmp791, tmp787,
	orr	r0, ip, r0	@ tmp797, tmp792, tmp796
	orr	r0, r0, lr, asl #8	@, prephitmp.643, tmp797, tmp800,
	b	.L98	@
.L105:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #:lower16:.LANCHOR0	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r2, #:upper16:.LANCHOR0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38949,
	b	.L48	@
.L113:
	mov	ip, #0	@ tmp288,
	mov	r3, r1	@, VdhId
	mov	r0, ip	@, tmp288
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #:lower16:.LANCHOR0	@,
	movt	r1, #:upper16:.LC3	@,
	movt	r2, #:upper16:.LANCHOR0	@,
	str	ip, [sp, #0]	@ tmp288,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38949,
	b	.L48	@
.L114:
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	bl	MEM_Phy2Vir	@
	subs	r3, r0, #0	@ D.38961,
	strne	r3, [r6, #0]	@ D.38961, <variable>.pVdmRegVirAddr
	bne	.L53	@
.L54:
	movw	r1, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38949,
	b	.L48	@
.L118:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #:lower16:.LANCHOR0	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r2, #:upper16:.LANCHOR0	@,
	movw	r3, #:lower16:.LC17	@,
	movt	r3, #:upper16:.LC17	@,
	bl	dprint_vfmw	@
	mov	r0, r9	@ D.38949, tmp458
	b	.L48	@
.L55:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC5	@,
	mvn	r2, #0	@,
	movt	r1, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38949,
	b	.L48	@
	.fnend
	.size	AVSHAL_V300R001_StartDec, .-AVSHAL_V300R001_StartDec
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	__func__.38928, %object
	.size	__func__.38928, 25
__func__.38928:
	.ascii	"AVSHAL_V300R001_StartDec\000"
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"%s: %s\012\000"
.LC1:
	.ascii	"picture width out of range\000"
	.space	1
.LC2:
	.ascii	"VdhId is wrong! AVSHAL_V200R003_StartDec\012\000"
	.space	2
.LC3:
	.ascii	"%s: VdhId(%d) > %d\012\000"
.LC4:
	.ascii	"vdm register virtual address not mapped, reset fail"
	.ascii	"ed!\012\000"
.LC5:
	.ascii	"stream_base_addr = %#x\012\000"
.LC6:
	.ascii	"BASIC_V300R001_CFG0 = 0x%x\012\000"
.LC7:
	.ascii	"BASIC_V300R001_CFG1 = 0x%x\012\000"
.LC8:
	.ascii	"AVM_V300R001_ADDR = 0x%x\012\000"
	.space	2
.LC9:
	.ascii	"VAM_V300R001_ADDR = 0x%x\012\000"
	.space	2
.LC10:
	.ascii	"STREAM_V300R001_BASE_ADDR = 0x%x\012\000"
	.space	2
.LC11:
	.ascii	"YSTADDR_V300R001_1D = 0x%x\012\000"
.LC12:
	.ascii	"YSTRIDE_V300R001_1D = 0x%x\012\000"
.LC13:
	.ascii	"UVOFFSET_V300R001_1D = 0x%x\012\000"
	.space	3
.LC14:
	.ascii	"VREG_V300R001_DNR_MBINFO_STADDR = 0x%x\012\000"
.LC15:
	.ascii	"VREG_V200R003_REF_PIC_TYPE = 0x%x\012\000"
	.space	1
.LC16:
	.ascii	"VREG_V300R001_FF_APT_EN = 0x%x\012\000"
.LC17:
	.ascii	"can not map down msg virtual address!\000"
	.space	2
.LC18:
	.ascii	"D0 = 0x%x\012\000"
	.space	1
.LC19:
	.ascii	"D1 = 0x%x\012\000"
	.space	1
.LC20:
	.ascii	"D2 = 0x%x\012\000"
	.space	1
.LC21:
	.ascii	"D3 = 0x%x\012\000"
	.space	1
.LC22:
	.ascii	"D4 = 0x%x\012\000"
	.space	1
.LC23:
	.ascii	"D5 = 0x%x\012\000"
	.space	1
.LC24:
	.ascii	"D6 = 0x%x\012\000"
	.space	1
.LC25:
	.ascii	"D7 = 0x%x\012\000"
	.space	1
.LC26:
	.ascii	"D8 = 0x%x\012\000"
	.space	1
.LC27:
	.ascii	"D9 = 0x%x\012\000"
	.space	1
.LC28:
	.ascii	"D10 = 0x%x\012\000"
.LC29:
	.ascii	"D11 = 0x%x\012\000"
.LC30:
	.ascii	"D12 = 0x%x\012\000"
.LC31:
	.ascii	"D13 = 0x%x\012\000"
.LC32:
	.ascii	"D14 = 0x%x\012\000"
.LC33:
	.ascii	"D16 = 0x%x\012\000"
.LC34:
	.ascii	"D49 = 0x%x\012\000"
.LC35:
	.ascii	"D50 = 0x%x\012\000"
.LC36:
	.ascii	"D51 = 0x%x\012\000"
.LC37:
	.ascii	"D63 = 0x%x\012\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
