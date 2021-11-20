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
	.file	"vdm_hal_mpeg4.c"
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
@ -DKBUILD_BASENAME=KBUILD_STR(vdm_hal_mpeg4)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD
@ drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV300R001/.vdm_hal_mpeg4.o.d
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV300R001/vdm_hal_mpeg4.c
@ -mlittle-endian -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -marm -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV300R001/vdm_hal_mpeg4.o
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
	.global	MP4HAL_V300R001_Log2bin
	.type	MP4HAL_V300R001_Log2bin, %function
MP4HAL_V300R001_Log2bin:
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
	cmp	r0, #0	@ value
	ldmeqfd	sp, {fp, sp, pc}	@
	mov	r3, #0	@ n,
.L4:
	add	r3, r3, #1	@ tmp142, n,
	movs	r0, r0, lsr #1	@ value, value,
	uxth	r3, r3	@ n, tmp142
	bne	.L4	@,
	sxth	r0, r3	@ prephitmp.497, n
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	MP4HAL_V300R001_Log2bin, .-MP4HAL_V300R001_Log2bin
	.align	2
	.global	MP4HAL_V300R001_InitHal
	.type	MP4HAL_V300R001_InitHal, %function
MP4HAL_V300R001_InitHal:
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
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	MP4HAL_V300R001_InitHal, .-MP4HAL_V300R001_InitHal
	.align	2
	.global	MP4HAL_V300R001_WriteSlicMsg
	.type	MP4HAL_V300R001_WriteSlicMsg, %function
MP4HAL_V300R001_WriteSlicMsg:
	.fnstart
.LFB1533:
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
	movw	r4, #:lower16:g_HwMem	@ tmp239,
	movt	r4, #:upper16:g_HwMem	@ tmp239,
	movw	r7, #1208	@ tmp242,
	str	r2, [fp, #-72]	@ StreamBaseAddr, %sfp
	movw	r2, #14576	@ tmp238,
	mla	r9, r7, r1, r4	@ tmp243, tmp242, VdhId, tmp239
	mov	r6, r0	@ pMp4DecParam, pMp4DecParam
	ldr	r7, [r0, r2]	@ D.39437, <variable>.SlcNum
	mov	r4, #0	@ tmp237,
	str	r4, [fp, #-48]	@ tmp237, D32
	ldr	r0, [r9, #48]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	add	r3, r0, #256	@, <variable>.MsgSlotAddr,
	str	r3, [fp, #-76]	@, %sfp
	mov	r0, r3	@,
	bl	MEM_Phy2Vir	@
	subs	r9, r0, #0	@ SlcDnMsgVirAddr,
	beq	.L35	@,
	ldr	r1, [r6, #264]	@ <variable>.mb_start_num, <variable>.mb_start_num
	cmp	r1, #0	@ <variable>.mb_start_num,
	streq	r1, [fp, #-80]	@ <variable>.mb_start_num, %sfp
	bne	.L36	@,
.L14:
	cmp	r7, #0	@ D.39437,
	ble	.L17	@,
	ldr	r0, [fp, #-80]	@, %sfp
	mov	r4, #0	@ i,
	ldr	r2, [r6, #264]	@ prephitmp.566, <variable>.mb_start_num
	sub	r5, fp, #48	@ tmp557,,
	ldr	r8, [r6, #236]	@ prephitmp.677, <variable>.mb_start_num
	mov	r1, r0, asl #2	@,,
	str	r1, [fp, #-84]	@, %sfp
	b	.L26	@
.L18:
	add	r4, r4, #1	@ i, i,
	cmp	r7, r4	@ D.39437, i
	ble	.L17	@,
.L38:
	sub	ip, r4, #1	@ tmp546, i,
	rsb	r2, r4, r4, asl #3	@, tmp542, i, i,
	rsb	r1, ip, ip, asl #3	@, tmp550, tmp546, tmp546,
	add	r8, r6, r2, asl #2	@, tmp544, pMp4DecParam, tmp542,
	add	r0, r6, r1, asl #2	@, tmp552, pMp4DecParam, tmp550,
	ldr	r2, [r8, #264]	@ prephitmp.566, <variable>.mb_start_num
	ldr	r8, [r0, #264]	@ prephitmp.677, <variable>.mb_start_num
.L26:
	cmp	r4, #0	@ i,
	movle	r3, #0	@,
	movgt	r3, #1	@,
	cmp	r2, r8	@ prephitmp.566, prephitmp.677
	movhi	r3, #0	@,,
	cmp	r3, #0	@ tmp328,
	mov	r8, r3	@ tmp328,
	bne	.L18	@,
	mov	r0, r4, asl #3	@, i,
	str	r0, [fp, #-68]	@, %sfp
	rsb	sl, r4, r0	@ tmp333, i,
	mov	r0, #4	@,
	ldr	r1, [fp, #-84]	@, %sfp
	mla	sl, sl, r0, r6	@ tmp335, tmp333,, pMp4DecParam
	add	lr, r4, r1	@, i,
	str	r3, [fp, #-48]	@ tmp328, D32
	movw	r1, #:lower16:.LC1	@,
	ldr	r3, [r5, #0]	@ tmp354,
	mov	ip, lr, asl #5	@,,
	str	lr, [fp, #-56]	@, %sfp
	movt	r1, #:upper16:.LC1	@,
	str	ip, [fp, #-60]	@, %sfp
	ldrb	r2, [sl, #246]	@ zero_extendqisi2	@, <variable>.bit_offset
	ldr	ip, [sl, #256]	@ temp.610, <variable>.phy_address
	str	r2, [fp, #-64]	@, %sfp
	and	r2, ip, #15	@ tmp337, temp.610,
	ldr	lr, [sl, #248]	@, <variable>.bit_len
	bfi	r3, lr, #0, #24	@ tmp354,,,
	ldr	lr, [fp, #-64]	@, %sfp
	add	r2, lr, r2, asl #3	@, bit_offset_0.618,, tmp337,
	bfi	r3, r2, #24, #7	@ tmp356, bit_offset_0.618,,
	str	r3, [r5, #0]	@ tmp356,
	ldr	lr, [fp, #-56]	@, %sfp
	str	r3, [r9, lr, asl #5]	@ D32.623,* SlcDnMsgVirAddr
	ldr	r2, [fp, #-48]	@, D32
	str	ip, [fp, #-88]	@,
	bl	dprint_vfmw	@
	ldr	r0, [fp, #-56]	@, %sfp
	mov	lr, r8	@ tmp363, tmp328
	ldr	ip, [fp, #-88]	@,
	ldr	r3, [fp, #-72]	@, %sfp
	mov	r1, r0, asl #3	@ tmp364,,
	bic	r2, ip, #15	@ tmp361, temp.610,
	rsb	ip, r3, r2	@ tmp362,, tmp361
	add	r2, r1, #1	@ tmp365, tmp364,
	bfi	lr, ip, #0, #24	@ tmp363, tmp362,,
	str	lr, [r5, #0]	@ tmp363,
	str	lr, [r9, r2, asl #2]	@ D32.631,* SlcDnMsgVirAddr
	mov	r0, #4	@,
	ldr	r2, [fp, #-48]	@, D32
	movw	r1, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	str	r8, [fp, #-48]	@ tmp328, D32
	ldr	r3, [fp, #-56]	@, %sfp
	ldr	r0, [sl, #260]	@, <variable>.phy_address
	mov	lr, r3, asl #2	@ tmp397,,
	and	ip, r0, #15	@ tmp377,,
	str	r0, [fp, #-64]	@, %sfp
	add	lr, lr, #1	@ tmp398, tmp397,
	ldr	r1, [sl, #252]	@ <variable>.bit_len, <variable>.bit_len
	mov	r0, #4	@,
	ldrb	r2, [sl, #247]	@ zero_extendqisi2	@ <variable>.bit_offset, <variable>.bit_offset
	ldr	r3, [r5, #0]	@ tmp394,
	add	r2, r2, ip, asl #3	@, bit_offset_1.642, <variable>.bit_offset, tmp377,
	bfi	r3, r1, #0, #24	@ tmp394, <variable>.bit_len,,
	movw	r1, #:lower16:.LC3	@,
	bfi	r3, r2, #24, #7	@ tmp396, bit_offset_1.642,,
	str	r3, [r5, #0]	@ tmp396,
	str	r3, [r9, lr, asl #3]	@ D32.647,* SlcDnMsgVirAddr
	movt	r1, #:upper16:.LC3	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	str	r8, [fp, #-48]	@ tmp328, D32
	ldr	r3, [sl, #260]	@ <variable>.phy_address, <variable>.phy_address
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC4	@,
	cmp	r3, #0	@ <variable>.phy_address,
	ldrne	r3, [fp, #-64]	@, %sfp
	ldrne	lr, [fp, #-72]	@, %sfp
	bicne	r2, r3, #15	@ tmp412,,
	ldreq	r2, [r5, #0]	@ tmp416,
	ldrne	r3, [r5, #0]	@ tmp414,
	rsbne	r2, lr, r2	@ tmp413,, tmp412
	bfieq	r2, r3, #0, #24	@ tmp416, <variable>.phy_address,,
	bfine	r3, r2, #0, #24	@ tmp414, tmp413,,
	streq	r2, [r5, #0]	@ tmp416,
	strne	r3, [r5, #0]	@ tmp414,
	ldr	r8, [fp, #-60]	@, %sfp
	ldr	r2, [fp, #-48]	@ D32.657, D32
	add	lr, r8, #12	@ tmp417,,
	add	r8, r4, #1	@ j, i,
	str	r2, [r9, lr]	@ D32.657,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	sl, [fp, #-68]	@, %sfp
	mov	r2, #0	@,
	str	r2, [fp, #-48]	@, D32
	rsb	r0, r4, sl	@ tmp424, i,
	ldr	r4, [fp, #-56]	@, %sfp
	mov	sl, r0, asl #2	@ tmp425, tmp424,
	mov	r0, #4	@,
	mov	r1, r4, asl #1	@ tmp476,,
	add	r4, sl, r6	@ tmp426, tmp425, pMp4DecParam
	add	r3, r4, #240	@ tmp427, tmp426,
	add	lr, r1, #1	@ tmp477, tmp476,
	movw	r1, #:lower16:.LC5	@,
	movt	r1, #:upper16:.LC5	@,
	ldrb	ip, [r3, #5]	@ zero_extendqisi2	@ <variable>.vop_quant, <variable>.vop_quant
	bfi	r2, ip, #0, #5	@ tmp428, <variable>.vop_quant,,
	str	r2, [r5, #0]	@ tmp428,
	ldrb	ip, [r3, #4]	@ zero_extendqisi2	@ <variable>.vop_coding_type, <variable>.vop_coding_type
	bfi	r2, ip, #5, #2	@ tmp439, <variable>.vop_coding_type,,
	str	r2, [r5, #0]	@ tmp439,
	ldrb	ip, [r3, #3]	@ zero_extendqisi2	@ <variable>.intra_dc_vlc_thr, <variable>.intra_dc_vlc_thr
	bfi	r2, ip, #7, #3	@ tmp450, <variable>.intra_dc_vlc_thr,,
	str	r2, [r5, #0]	@ tmp450,
	ldrb	ip, [r3, #1]	@ zero_extendqisi2	@ <variable>.vop_fcode_forward, <variable>.vop_fcode_forward
	bfi	r2, ip, #10, #3	@ tmp461, <variable>.vop_fcode_forward,,
	str	r2, [r5, #0]	@ tmp461,
	ldrb	r3, [r3, #2]	@ zero_extendqisi2	@ <variable>.vop_fcode_backward, <variable>.vop_fcode_backward
	bfi	r2, r3, #13, #3	@ tmp472, <variable>.vop_fcode_backward,,
	str	r2, [r5, #0]	@ tmp472,
	str	r2, [r9, lr, asl #4]	@ D32.672,* SlcDnMsgVirAddr
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r1, [fp, #-60]	@, %sfp
	mov	r0, #0	@,
	str	r0, [fp, #-48]	@, D32
	add	lr, r1, #20	@ tmp492,,
	ldr	ip, [r4, #264]	@ <variable>.mb_start_num, <variable>.mb_start_num
	mov	r2, r0	@ tmp490,
	movw	r1, #:lower16:.LC6	@,
	bfi	r2, ip, #0, #20	@ tmp490, <variable>.mb_start_num,,
	str	r2, [r5, #0]	@ tmp490,
	str	r2, [r9, lr]	@ D32.679,
	mov	r0, #4	@,
	movt	r1, #:upper16:.LC6	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	cmp	r7, r8	@ D.39437, j
	ble	.L21	@,
	rsb	ip, r8, r8, asl #3	@, tmp505, j, j,
	ldr	r3, [r4, #264]	@ D.39548, <variable>.mb_start_num
	add	r2, r6, ip, asl #2	@, tmp507, pMp4DecParam, tmp505,
	ldr	r4, [r2, #264]	@ <variable>.mb_start_num, <variable>.mb_start_num
	cmp	r3, r4	@ D.39548, <variable>.mb_start_num
	bcc	.L21	@,
	mvn	r0, r8	@ tmp566, j
	add	r1, r0, r7	@ tmp565, tmp566, D.39437
	tst	r1, #1	@ tmp565,
	add	lr, sl, #240	@ tmp514, tmp425,
	add	sl, r6, lr	@ ivtmp.584, pMp4DecParam, tmp514
	beq	.L22	@,
	ldr	r4, [sl, #80]	@ temp.682, <variable>.mb_start_num
	add	r8, r8, #1	@ j, j,
	add	sl, sl, #28	@ ivtmp.584, ivtmp.584,
	cmp	r3, r4	@ D.39548, temp.682
	bcs	.L22	@,
	b	.L21	@
.L23:
	ldr	r4, [sl, #80]	@ temp.682, <variable>.mb_start_num
	add	sl, sl, #56	@ ivtmp.584, ivtmp.584,
	cmp	r3, r4	@ D.39548, temp.682
	bcc	.L21	@,
	ldr	lr, [r2, #80]	@ temp.682, <variable>.mb_start_num
	add	r8, r8, #1	@ j, j,
	cmp	r3, lr	@ D.39548, temp.682
	bcc	.L21	@,
.L22:
	add	r8, r8, #1	@ j, j,
	add	r2, sl, #28	@ tmp568, ivtmp.584,
	cmp	r7, r8	@ D.39437, j
	bgt	.L23	@,
.L21:
	cmp	r8, r7	@ j, D.39437
	beq	.L37	@,
	rsb	r4, r8, r8, asl #3	@, tmp521, j, j,
	ldr	r3, [fp, #-80]	@, %sfp
	ldr	ip, [fp, #-76]	@, %sfp
	add	r1, r6, r4, asl #2	@, tmp523, pMp4DecParam, tmp521,
	add	r0, r8, r3	@ tmp526, j,
	ldr	lr, [r1, #264]	@ <variable>.mb_start_num, <variable>.mb_start_num
	add	r4, ip, r0, asl #5	@, prephitmp.564,, tmp526,
	sub	r3, lr, #1	@ slice_end_mbn, <variable>.mb_start_num,
.L25:
	ldr	lr, [fp, #-60]	@, %sfp
	mov	ip, #0	@ tmp530,
	bfi	ip, r3, #0, #20	@ tmp530, slice_end_mbn,,
	str	ip, [r5, #0]	@ tmp530,
	add	r3, lr, #24	@ tmp531,,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC7	@,
	movt	r1, #:upper16:.LC7	@,
	str	ip, [r9, r3]	@ D32.688,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r1, [fp, #-60]	@, %sfp
	str	r4, [r5, #0]	@ prephitmp.564, <variable>.next_slice_para_addr
	mov	r0, #4	@,
	add	r2, r1, #28	@ tmp536,,
	movw	r1, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC8	@,
	str	r4, [r9, r2]	@ D32.693,
	sub	r4, r8, #1	@ i, j,
	ldr	r2, [fp, #-48]	@, D32
	add	r4, r4, #1	@ i, i,
	bl	dprint_vfmw	@
	cmp	r7, r4	@ D.39437, i
	bgt	.L38	@,
.L17:
	mov	r0, #0	@ D.39446,
.L12:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L37:
	ldrh	ip, [r6, #166]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	mov	r4, #0	@ prephitmp.564,
	ldrh	r2, [r6, #164]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	mul	r3, r2, ip	@ tmp517, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	sub	r3, r3, #1	@ slice_end_mbn, tmp517,
	b	.L25	@
.L36:
	ldr	r5, [r6, #256]	@ D.39453, <variable>.phy_address
	mov	lr, #0	@ tmp254,
	ldrb	ip, [r6, #246]	@ zero_extendqisi2	@ <variable>.bit_offset, <variable>.bit_offset
	mov	r0, #4	@,
	and	r3, r5, #15	@ tmp250, D.39453,
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	add	r2, ip, r3, asl #3	@, bit_offset_0, <variable>.bit_offset, tmp250,
	bfi	lr, r2, #24, #7	@ tmp254, bit_offset_0,,
	str	lr, [fp, #-48]	@ tmp254,
	str	lr, [r9, #0]	@ tmp254,* SlcDnMsgVirAddr
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r0, [fp, #-72]	@, %sfp
	bic	r3, r5, #15	@ tmp259, D.39453,
	mov	r5, r4	@ tmp261, tmp237
	rsb	r1, r0, r3	@ tmp260,, tmp259
	mov	r0, #4	@,
	bfi	r5, r1, #0, #24	@ tmp261, tmp260,,
	str	r5, [fp, #-48]	@ tmp261,
	str	r5, [r9, #4]	@ tmp261,
	movw	r1, #:lower16:.LC2	@,
	ldr	r2, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	ldr	r5, [r6, #260]	@ D.39481, <variable>.phy_address
	ldrb	ip, [r6, #247]	@ zero_extendqisi2	@ <variable>.bit_offset, <variable>.bit_offset
	mov	r3, #0	@ tmp269,
	and	r2, r5, #15	@ tmp265, D.39481,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC3	@,
	movt	r1, #:upper16:.LC3	@,
	add	r2, ip, r2, asl #3	@, bit_offset_1, <variable>.bit_offset, tmp265,
	bfi	r3, r2, #24, #7	@ tmp269, bit_offset_1,,
	str	r3, [fp, #-48]	@ tmp269,
	str	r3, [r9, #8]	@ tmp269,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	r0, [r6, #260]	@ <variable>.phy_address, <variable>.phy_address
	mov	r2, #1	@,
	str	r2, [fp, #-80]	@, %sfp
	cmp	r0, #0	@ <variable>.phy_address,
	bicne	r0, r5, #15	@ tmp275, D.39481,
	streq	r0, [fp, #-48]	@ <variable>.phy_address,
	ldrne	r1, [fp, #-72]	@, %sfp
	rsbne	r0, r1, r0	@ tmp276,, tmp275
	movw	r1, #:lower16:.LC4	@,
	bfine	r4, r0, #0, #24	@ tmp277, tmp276,,
	strne	r4, [fp, #-48]	@ tmp277,
	ldr	ip, [fp, #-48]	@ D32.595, D32
	movt	r1, #:upper16:.LC4	@,
	mov	r0, #4	@,
	mov	r4, #0	@ tmp282,
	str	ip, [r9, #12]	@ D32.595,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldrb	r3, [r6, #245]	@ zero_extendqisi2	@ <variable>.vop_quant, <variable>.vop_quant
	ldrb	r1, [r6, #244]	@ zero_extendqisi2	@ <variable>.vop_coding_type, <variable>.vop_coding_type
	mov	r0, #4	@,
	ldrb	r2, [r6, #243]	@ zero_extendqisi2	@ <variable>.intra_dc_vlc_thr, <variable>.intra_dc_vlc_thr
	and	r3, r3, #31	@ tmp287, <variable>.vop_quant,
	ldrb	ip, [r6, #241]	@ zero_extendqisi2	@ <variable>.vop_fcode_forward, <variable>.vop_fcode_forward
	bfi	r3, r1, #5, #2	@ tmp287, <variable>.vop_coding_type,,
	ldrb	lr, [r6, #242]	@ zero_extendqisi2	@ <variable>.vop_fcode_backward, <variable>.vop_fcode_backward
	bfi	r3, r2, #7, #3	@ tmp291, <variable>.intra_dc_vlc_thr,,
	bfi	r3, ip, #10, #3	@ tmp295, <variable>.vop_fcode_forward,,
	movw	r1, #:lower16:.LC5	@,
	bfi	r3, lr, #13, #3	@ tmp299, <variable>.vop_fcode_backward,,
	str	r3, [fp, #-48]	@ tmp299,
	str	r3, [r9, #16]	@ tmp299,
	movt	r1, #:upper16:.LC5	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	mov	r0, r4	@ tmp307, tmp282
	bfi	r0, r4, #0, #20	@ tmp307, tmp282,,
	str	r0, [fp, #-48]	@ tmp307,
	str	r0, [r9, #20]	@ tmp307,
	movw	r1, #:lower16:.LC6	@,
	ldr	r2, [fp, #-48]	@, D32
	movt	r1, #:upper16:.LC6	@,
	mov	r0, #4	@,
	bl	dprint_vfmw	@
	ldr	r2, [r6, #264]	@ <variable>.mb_start_num, <variable>.mb_start_num
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC7	@,
	sub	r3, r2, #1	@ tmp312, <variable>.mb_start_num,
	movt	r1, #:upper16:.LC7	@,
	bfi	r4, r3, #0, #20	@ tmp314, tmp312,,
	str	r4, [fp, #-48]	@ tmp314,
	str	r4, [r9, #24]	@ tmp314,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	ldr	lr, [fp, #-76]	@, %sfp
	movw	r1, #:lower16:.LC8	@,
	mov	r0, #4	@,
	add	ip, lr, #32	@ tmp319,,
	str	ip, [fp, #-48]	@ tmp319, <variable>.next_slice_para_addr
	str	ip, [r9, #28]	@ tmp319,
	movt	r1, #:upper16:.LC8	@,
	ldr	r2, [fp, #-48]	@, D32
	bl	dprint_vfmw	@
	b	.L14	@
.L35:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #:lower16:.LANCHOR0	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r2, #:upper16:.LANCHOR0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39446,
	b	.L12	@
	.fnend
	.size	MP4HAL_V300R001_WriteSlicMsg, .-MP4HAL_V300R001_WriteSlicMsg
	.global	__aeabi_idiv
	.align	2
	.global	MP4HAL_V300R001_CfgDnMsg
	.type	MP4HAL_V300R001_CfgDnMsg, %function
MP4HAL_V300R001_CfgDnMsg:
	.fnstart
.LFB1532:
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
	ldrh	r9, [r0, #164]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	ldrh	r3, [r0, #166]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	mov	r4, r0	@ pMp4DecParam, pMp4DecParam
	mov	sl, r1	@ VdhId, VdhId
	mul	r3, r9, r3	@ MbCnt, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	cmp	r3, #0	@ MbCnt,
	moveq	r9, r3	@ prephitmp.903, MbCnt
	beq	.L41	@,
	mov	r9, #0	@ n,
.L42:
	add	r9, r9, #1	@ tmp320, n,
	movs	r3, r3, lsr #1	@ MbCnt, MbCnt,
	uxth	r9, r9	@ n, tmp320
	bne	.L42	@,
	sxth	r9, r9	@ prephitmp.903, n
.L41:
	movw	r6, #:lower16:g_HwMem	@ tmp869,
	movt	r6, #:upper16:g_HwMem	@ tmp869,
	movw	r0, #1208	@ tmp324,
	mla	r1, r0, sl, r6	@ tmp325, tmp324, VdhId, tmp869
	ldr	r0, [r1, #48]	@, <variable>.MsgSlotAddr
	bl	MEM_Phy2Vir	@
	subs	r5, r0, #0	@ pMsgBlock,
	beq	.L63	@,
	ldrb	r2, [r4, #2]	@ zero_extendqisi2	@ <variable>.IsShortHeader, <variable>.IsShortHeader
	cmp	r2, #1	@ <variable>.IsShortHeader,
	beq	.L64	@,
	mov	r8, #0	@ tmp350,
	mov	r7, r5	@ pReg.969, pMsgBlock
	str	r8, [r7], #4	@ tmp350,
	mov	r2, r8	@, tmp350
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	ldrb	r1, [r4, #3]	@ zero_extendqisi2	@ <variable>.VopQuant, <variable>.VopQuant
	ldrb	ip, [r4, #1]	@ zero_extendqisi2	@ <variable>.PicQuantType, <variable>.PicQuantType
	mov	r0, #4	@,
	and	r2, r1, #31	@ tmp353, <variable>.VopQuant,
	movw	r1, #:lower16:.LC11	@,
	movt	r1, #:upper16:.LC11	@,
	mov	r3, ip, asl #31	@ tmp356, <variable>.PicQuantType,
	orr	r2, r3, r2, asl #26	@, Dat.968, tmp356, tmp353,
	str	r2, [r5, #4]	@ Dat.968,
	bl	dprint_vfmw	@
	ldrb	r3, [r4, #0]	@ zero_extendqisi2	@ prephitmp.936, <variable>.PicCodingType
	movw	ip, #14616	@ tmp363,
	movw	r0, #14624	@ tmp372,
	cmp	r3, #2	@ prephitmp.936,
	streq	r8, [fp, #-48]	@ tmp350, %sfp
	streqb	r8, [r4, #12]	@ tmp350, <variable>.vop_rounding_type
	ldrneb	r2, [r4, #12]	@ zero_extendqisi2	@ pretmp.933, <variable>.vop_rounding_type
	andne	r2, r2, #1	@ tmp358, pretmp.933,
	movne	r2, r2, asl #3	@, tmp358,
	strne	r2, [fp, #-48]	@, %sfp
	ldr	lr, [r4, ip]	@ <variable>.sprite_enable, <variable>.sprite_enable
	movw	r2, #14620	@ tmp368,
	ldrb	r1, [r4, #15]	@ zero_extendqisi2	@ <variable>.Interlaced, <variable>.Interlaced
	ldr	ip, [r4, r0]	@ <variable>.sprite_warping_accuracy, <variable>.sprite_warping_accuracy
	and	r8, lr, #3	@ tmp364, <variable>.sprite_enable,
	ldr	r2, [r4, r2]	@ <variable>.sprite_warping_points, <variable>.sprite_warping_points
	and	r1, r1, #1	@ tmp362, <variable>.Interlaced,
	ldrb	r0, [r4, #14]	@ zero_extendqisi2	@ <variable>.top_field_first, <variable>.top_field_first
	orr	lr, r1, r8, asl #26	@, tmp367, tmp362, tmp364,
	and	r8, ip, #3	@ tmp373, <variable>.sprite_warping_accuracy,
	ldrb	ip, [r4, #13]	@ zero_extendqisi2	@ <variable>.alternate_vertical_scan, <variable>.alternate_vertical_scan
	ldrb	r1, [r4, #11]	@ zero_extendqisi2	@ <variable>.QuarterSample, <variable>.QuarterSample
	orr	lr, lr, r2, asl #30	@, tmp371, tmp367, <variable>.sprite_warping_points,
	and	r0, r0, #1	@ tmp378, <variable>.top_field_first,
	ldrb	r2, [r4, #10]	@ zero_extendqisi2	@ <variable>.resync_marker_disable, <variable>.resync_marker_disable
	orr	lr, lr, r8, asl #28	@, tmp376, tmp371, tmp373,
	and	ip, ip, #1	@ tmp382, <variable>.alternate_vertical_scan,
	orr	lr, lr, r0, asl #1	@, tmp380, tmp376, tmp378,
	ldrb	r8, [r4, #9]	@ zero_extendqisi2	@ <variable>.intra_dc_vlc_thr, <variable>.intra_dc_vlc_thr
	and	r1, r1, #1	@ tmp386, <variable>.QuarterSample,
	ldrb	r0, [r4, #7]	@ zero_extendqisi2	@ <variable>.FwdFcode, <variable>.FwdFcode
	orr	ip, lr, ip, asl #2	@, tmp384, tmp380, tmp382,
	mov	r2, r2, asl #7	@ tmp390, <variable>.resync_marker_disable,
	ldrb	lr, [r4, #8]	@ zero_extendqisi2	@ <variable>.BwdFcode, <variable>.BwdFcode
	orr	r1, ip, r1, asl #4	@, tmp388, tmp384, tmp386,
	and	r8, r8, #7	@ tmp394, <variable>.intra_dc_vlc_thr,
	and	ip, r2, #255	@ tmp391, tmp390,
	orr	r1, r1, ip	@ tmp392, tmp388, tmp391
	and	r2, r0, #7	@ tmp398, <variable>.FwdFcode,
	ldrb	ip, [r4, #6]	@ zero_extendqisi2	@ <variable>.BitsOfVopTimeIncr, <variable>.BitsOfVopTimeIncr
	orr	r1, r1, r8, asl #8	@, tmp396, tmp392, tmp394,
	and	lr, lr, #7	@ tmp402, <variable>.BwdFcode,
	orr	r0, r1, r2, asl #11	@, tmp400, tmp396, tmp398,
	and	r2, ip, #31	@ tmp406, <variable>.BitsOfVopTimeIncr,
	and	ip, r9, #15	@ tmp409, prephitmp.903,
	orr	r8, r0, lr, asl #14	@, tmp404, tmp400, tmp402,
	ldr	r1, [fp, #-48]	@, %sfp
	orr	r0, r8, r2, asl #17	@, tmp408, tmp404, tmp406,
	and	r8, r3, #3	@ tmp413, prephitmp.936,
	orr	r2, r0, ip, asl #22	@, tmp411, tmp408, tmp409,
	mov	r0, #4	@,
	orr	lr, r2, r1	@ tmp412, tmp411,
	movw	r1, #:lower16:.LC12	@,
	orr	r2, lr, r8, asl #5	@, Dat.979, tmp412, tmp413,
	movt	r1, #:upper16:.LC12	@,
	str	r2, [r7, #4]	@ Dat.979,
	add	r7, r7, r0	@ pReg.980, pReg.969,
	bl	dprint_vfmw	@
	ldrb	r9, [r4, #0]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	cmp	r9, #2	@ <variable>.PicCodingType,
	beq	.L65	@,
.L46:
	ldrh	r7, [r4, #164]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	mov	r0, #4	@,
	ldrh	r2, [r4, #166]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	movw	r1, #:lower16:.LC14	@,
	sub	r8, r7, #1	@ tmp428, <variable>.PicWidthInMb,
	movt	r1, #:upper16:.LC14	@,
	sub	r9, r2, #1	@ tmp425, <variable>.PicHeightInMb,
	uxth	lr, r8	@ tmp429, tmp428
	orr	r2, lr, r9, asl #16	@, Dat.992, tmp429, tmp425,
	str	r2, [r5, #16]	@ Dat.992,
	bl	dprint_vfmw	@
	movw	r1, #14608	@ tmp432,
	ldr	ip, [r4, r1]	@ <variable>.image_height, <variable>.image_height
	movw	r0, #14612	@ tmp435,
	ldr	r3, [r4, r0]	@ <variable>.image_width, <variable>.image_width
	movw	r1, #:lower16:.LC15	@,
	mov	r0, #4	@,
	movt	r1, #:upper16:.LC15	@,
	orr	r2, r3, ip, asl #16	@, Dat.996, <variable>.image_width, <variable>.image_height,
	str	r2, [r5, #20]	@ Dat.996,
	bl	dprint_vfmw	@
	ldrb	r7, [r4, #0]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	cmp	r7, #3	@ <variable>.PicCodingType,
	beq	.L66	@,
.L49:
	mov	r7, #0	@ tmp494,
	mov	r0, #4	@,
	mov	r2, r7	@, tmp494
	str	r7, [r5, #32]	@ tmp494,
	movw	r1, #:lower16:.LC18	@,
	movt	r1, #:upper16:.LC18	@,
	bl	dprint_vfmw	@
	mov	r2, r7	@, tmp494
	str	r7, [r5, #36]	@ tmp494,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC19	@,
	movt	r1, #:upper16:.LC19	@,
	bl	dprint_vfmw	@
	mov	r2, r7	@, tmp494
	str	r7, [r5, #40]	@ tmp494,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	bl	dprint_vfmw	@
	mov	r2, r7	@, tmp494
	str	r7, [r5, #44]	@ tmp494,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	bl	dprint_vfmw	@
	mov	r1, #14592	@ tmp502,
	ldr	r9, [r4, r1]	@ <variable>.DispFramePhyAddr, <variable>.DispFramePhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	bic	r2, r9, #15	@ Dat.1051, <variable>.DispFramePhyAddr,
	str	r2, [r5, #48]	@ Dat.1051,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #220]	@ <variable>.FwdRefPicPhyAddr, <variable>.FwdRefPicPhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC23	@,
	bic	r2, r2, #15	@ Dat.1055, <variable>.FwdRefPicPhyAddr,
	movt	r1, #:upper16:.LC23	@,
	str	r2, [r5, #52]	@ Dat.1055,
	add	r9, r5, #72	@ pReg.1076, pMsgBlock,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #224]	@ <variable>.BwdRefPicPhyAddr, <variable>.BwdRefPicPhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC24	@,
	bic	r2, ip, #15	@ Dat.1059, <variable>.BwdRefPicPhyAddr,
	movt	r1, #:upper16:.LC24	@,
	str	r2, [r5, #56]	@ Dat.1059,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #228]	@ <variable>.CurPmvPhyAddr, <variable>.CurPmvPhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC25	@,
	bic	r2, r3, #15	@ Dat.1063, <variable>.CurPmvPhyAddr,
	movt	r1, #:upper16:.LC25	@,
	str	r2, [r5, #60]	@ Dat.1063,
	bl	dprint_vfmw	@
	ldr	r8, [r4, #232]	@ <variable>.BwdPmvPhyAddr, <variable>.BwdPmvPhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC26	@,
	bic	r2, r8, #15	@ Dat.1067, <variable>.BwdPmvPhyAddr,
	movt	r1, #:upper16:.LC26	@,
	str	r2, [r5, #64]	@ Dat.1067,
	bl	dprint_vfmw	@
	movw	r0, #1208	@ tmp516,
	mla	r8, r0, sl, r6	@ tmp517, tmp516, VdhId, tmp869
	movw	r1, #:lower16:.LC27	@,
	mov	r0, #4	@,
	movt	r1, #:upper16:.LC27	@,
	ldr	r2, [r8, #1136]	@ <variable>.SedTopAddr, <variable>.SedTopAddr
	bic	r2, r2, #15	@ Dat.1071, <variable>.SedTopAddr,
	str	r2, [r5, #68]	@ Dat.1071,
	bl	dprint_vfmw	@
	ldr	ip, [r8, #1140]	@ <variable>.PmvTopAddr, <variable>.PmvTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC28	@,
	bic	r2, ip, #15	@ Dat.1075, <variable>.PmvTopAddr,
	movt	r1, #:upper16:.LC28	@,
	str	r2, [r5, #72]	@ Dat.1075,
	bl	dprint_vfmw	@
	ldrb	r3, [r4, #0]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	strb	r7, [r4, #157]	@ tmp494, <variable>.FF_BUG_QPEL_FILED
	cmp	r3, #3	@ <variable>.PicCodingType,
	beq	.L67	@,
	ldrb	r1, [r4, #153]	@ zero_extendqisi2	@ <variable>.FF_BUG_EDGE_EXTEND, <variable>.FF_BUG_EDGE_EXTEND
	mov	r2, r1	@ prephitmp.905, <variable>.FF_BUG_EDGE_EXTEND
	strb	r1, [r4, #152]	@ <variable>.FF_BUG_EDGE_EXTEND, <variable>.FF_BUG_EDGE_FIND_POINT
.L58:
	ldrb	r3, [r4, #156]	@ zero_extendqisi2	@ <variable>.FF_BUG_QPEL_CHROMA2, <variable>.FF_BUG_QPEL_CHROMA2
	and	ip, r1, #1	@ tmp544, <variable>.FF_BUG_EDGE_EXTEND,
	ldrb	r0, [r4, #155]	@ zero_extendqisi2	@ <variable>.FF_BUG_QPEL_CHROMA, <variable>.FF_BUG_QPEL_CHROMA
	and	lr, r2, #1	@ tmp551, prephitmp.905,
	and	r3, r3, #1	@ tmp541, <variable>.FF_BUG_QPEL_CHROMA2,
	mov	r1, ip, asl #2	@ tmp545, tmp544,
	and	ip, r0, #1	@ tmp548, <variable>.FF_BUG_QPEL_CHROMA,
	mov	r0, #4	@,
	orr	r3, r1, r3, asl #1	@, tmp546, tmp545, tmp541,
	movw	r1, #:lower16:.LC29	@,
	orr	r3, r3, ip	@ tmp549, tmp546, tmp548
	movt	r1, #:upper16:.LC29	@,
	orr	r7, r3, r7	@ tmp550, tmp549, prephitmp.907
	orr	r2, r7, lr, asl #3	@, Dat.1080, tmp550, tmp551,
	str	r2, [r9, #4]	@ Dat.1080,
	bl	dprint_vfmw	@
	movw	r2, #14628	@ tmp554,
	ldr	r3, [r4, r2]	@ D.39339, <variable>.dU
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC30	@,
	movt	r1, #:upper16:.LC30	@,
	mov	r2, r3	@, D.39339
	str	r3, [r5, #80]	@ D.39339,
	bl	dprint_vfmw	@
	movw	r1, #14632	@ tmp556,
	ldr	ip, [r4, r1]	@ D.39341, <variable>.dU
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC31	@,
	movt	r1, #:upper16:.LC31	@,
	mov	r2, ip	@, D.39341
	str	ip, [r5, #84]	@ D.39341,
	bl	dprint_vfmw	@
	movw	r0, #14636	@ tmp558,
	ldr	r3, [r4, r0]	@ D.39343, <variable>.dV
	movw	r1, #:lower16:.LC32	@,
	mov	r0, #4	@,
	movt	r1, #:upper16:.LC32	@,
	mov	r2, r3	@, D.39343
	str	r3, [r5, #88]	@ D.39343,
	bl	dprint_vfmw	@
	movw	r2, #14640	@ tmp560,
	ldr	ip, [r4, r2]	@ D.39345, <variable>.dV
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC33	@,
	movt	r1, #:upper16:.LC33	@,
	mov	r2, ip	@, D.39345
	str	ip, [r5, #92]	@ D.39345,
	bl	dprint_vfmw	@
	movw	r1, #14644	@ tmp562,
	ldr	r3, [r4, r1]	@ temp.1097, <variable>.Uo
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC34	@,
	mov	r2, r3	@, temp.1097
	str	r3, [r5, #96]	@ temp.1097,
	bl	dprint_vfmw	@
	movw	r0, #14648	@ tmp564,
	ldr	ip, [r4, r0]	@ temp.1101, <variable>.Vo
	movw	r1, #:lower16:.LC35	@,
	mov	r0, #4	@,
	movt	r1, #:upper16:.LC35	@,
	mov	r2, ip	@, temp.1101
	str	ip, [r5, #100]	@ temp.1101,
	bl	dprint_vfmw	@
	movw	r2, #14652	@ tmp566,
	ldr	r3, [r4, r2]	@ D.39349, <variable>.Uco
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC36	@,
	movt	r1, #:upper16:.LC36	@,
	mov	r2, r3	@, D.39349
	str	r3, [r5, #104]	@ D.39349,
	bl	dprint_vfmw	@
	mov	r1, #14656	@ tmp568,
	ldr	r2, [r4, r1]	@ D.39351, <variable>.Vco
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC37	@,
	movt	r1, #:upper16:.LC37	@,
	str	r2, [r5, #108]	@ D.39351,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #2]	@ zero_extendqisi2	@ <variable>.IsShortHeader, <variable>.IsShortHeader
	cmp	ip, #2	@ <variable>.IsShortHeader,
	beq	.L68	@,
.L59:
	movw	r1, #1208	@ tmp863,
	mov	r0, #4	@,
	mla	r6, r1, sl, r6	@ tmp864, tmp863, VdhId, tmp869
	movw	r1, #:lower16:.LC39	@,
	movt	r1, #:upper16:.LC39	@,
	ldr	r2, [r6, #48]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	add	r2, r2, #256	@ D.39408, <variable>.MsgSlotAddr,
	str	r2, [r5, #252]	@ D.39408,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.39129,
.L44:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L64:
	mov	r7, #4	@ tmp331,
	mov	r8, r5	@ pReg.956, pMsgBlock
	str	r7, [r8], #4	@ tmp331,
	mov	r2, r7	@, tmp331
	mov	r0, r7	@, tmp331
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #4]	@ zero_extendqisi2	@ <variable>.GobMbNum, <variable>.GobMbNum
	ldrb	r1, [r4, #3]	@ zero_extendqisi2	@ <variable>.VopQuant, <variable>.VopQuant
	mov	r0, r7	@, tmp331
	ldrb	r3, [r4, #5]	@ zero_extendqisi2	@ <variable>.VopGobNum, <variable>.VopGobNum
	and	r2, ip, #127	@ tmp337, <variable>.GobMbNum,
	and	ip, r1, #31	@ tmp334, <variable>.VopQuant,
	movw	r1, #:lower16:.LC11	@,
	sub	r3, r3, #1	@ tmp341, <variable>.VopGobNum,
	mov	r2, r2, asl #5	@ tmp338, tmp337,
	orr	r2, r2, ip, asl #26	@, tmp339, tmp338, tmp334,
	and	ip, r3, #31	@ tmp342, tmp341,
	orr	r2, r2, ip	@ Dat.955, tmp339, tmp342
	movt	r1, #:upper16:.LC11	@,
	str	r2, [r5, #4]	@ Dat.955,
	bl	dprint_vfmw	@
	ldrb	r1, [r4, #0]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	and	ip, r9, #15	@ tmp344, prephitmp.903,
	mov	r0, r7	@, tmp331
	and	r3, r1, #3	@ tmp347, <variable>.PicCodingType,
	movw	r1, #:lower16:.LC12	@,
	movt	r1, #:upper16:.LC12	@,
	mov	r7, r3, asl #5	@ tmp348, tmp347,
	orr	r2, r7, ip, asl #22	@, Dat.958, tmp348, tmp344,
	str	r2, [r8, #4]	@ Dat.958,
	bl	dprint_vfmw	@
	b	.L46	@
.L68:
	ldrb	r2, [r4, #1]	@ zero_extendqisi2	@ <variable>.PicQuantType, <variable>.PicQuantType
	cmp	r2, #0	@ <variable>.PicQuantType,
	beq	.L59	@,
	ldrb	r7, [r4, #56]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #24	@,
	ldrb	lr, [r4, #40]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	ldrb	r3, [r4, #24]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	movw	r1, #:lower16:.LC38	@,
	mov	ip, r7, asl #16	@ tmp575, <variable>.IntraQuantTab,
	ldrb	r7, [r4, #72]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	orr	ip, ip, lr, asl #8	@, tmp576, tmp575, <variable>.IntraQuantTab,
	movt	r1, #:upper16:.LC38	@,
	orr	r3, ip, r3	@ tmp578, tmp576, <variable>.IntraQuantTab
	orr	r3, r3, r7, asl r2	@, temp.1176, tmp578, <variable>.IntraQuantTab,
	str	r3, [r5, #112]	@ temp.1176,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #64]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	lr, [r4, #48]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #24	@,
	ldrb	r3, [r4, #32]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	mov	r1, ip, asl #16	@ tmp584, <variable>.IntraQuantTab,
	ldrb	ip, [r4, #80]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	orr	lr, r1, lr, asl #8	@, tmp585, tmp584, <variable>.IntraQuantTab,
	movw	r1, #:lower16:.LC38	@,
	orr	r3, lr, r3	@ tmp587, tmp585, <variable>.IntraQuantTab
	movt	r1, #:upper16:.LC38	@,
	orr	r3, r3, ip, asl r2	@, temp.1194, tmp587, <variable>.IntraQuantTab,
	str	r3, [r5, #116]	@ temp.1194,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #57]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	lr, [r4, #41]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #32	@,
	ldrb	r3, [r4, #25]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	mov	r1, ip, asl #16	@ tmp593, <variable>.IntraQuantTab,
	ldrb	ip, [r4, #73]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	orr	lr, r1, lr, asl #8	@, tmp594, tmp593, <variable>.IntraQuantTab,
	movw	r1, #:lower16:.LC38	@,
	orr	r3, lr, r3	@ tmp596, tmp594, <variable>.IntraQuantTab
	movt	r1, #:upper16:.LC38	@,
	orr	r3, r3, ip, asl #24	@, temp.1212, tmp596, <variable>.IntraQuantTab,
	str	r3, [r5, #120]	@ temp.1212,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #65]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	lr, [r4, #49]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #32	@,
	ldrb	r3, [r4, #33]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	mov	r1, ip, asl #16	@ tmp602, <variable>.IntraQuantTab,
	ldrb	ip, [r4, #81]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	orr	lr, r1, lr, asl #8	@, tmp603, tmp602, <variable>.IntraQuantTab,
	movw	r1, #:lower16:.LC38	@,
	orr	r3, lr, r3	@ tmp605, tmp603, <variable>.IntraQuantTab
	movt	r1, #:upper16:.LC38	@,
	orr	r3, r3, ip, asl #24	@, temp.1230, tmp605, <variable>.IntraQuantTab,
	str	r3, [r5, #124]	@ temp.1230,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #58]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	lr, [r4, #42]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #40	@,
	ldrb	r3, [r4, #26]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	mov	r1, ip, asl #16	@ tmp611, <variable>.IntraQuantTab,
	ldrb	ip, [r4, #74]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	orr	lr, r1, lr, asl #8	@, tmp612, tmp611, <variable>.IntraQuantTab,
	movw	r1, #:lower16:.LC38	@,
	orr	r3, lr, r3	@ tmp614, tmp612, <variable>.IntraQuantTab
	movt	r1, #:upper16:.LC38	@,
	orr	r3, r3, ip, asl #24	@, temp.1248, tmp614, <variable>.IntraQuantTab,
	str	r3, [r5, #128]	@ temp.1248,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #66]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	lr, [r4, #50]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #40	@,
	ldrb	r3, [r4, #34]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	mov	r1, ip, asl #16	@ tmp620, <variable>.IntraQuantTab,
	ldrb	ip, [r4, #82]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	orr	lr, r1, lr, asl #8	@, tmp621, tmp620, <variable>.IntraQuantTab,
	movw	r1, #:lower16:.LC38	@,
	orr	r3, lr, r3	@ tmp623, tmp621, <variable>.IntraQuantTab
	movt	r1, #:upper16:.LC38	@,
	orr	r3, r3, ip, asl #24	@, temp.1266, tmp623, <variable>.IntraQuantTab,
	str	r3, [r5, #132]	@ temp.1266,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #59]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	lr, [r4, #43]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #48	@,
	ldrb	r3, [r4, #27]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	mov	r1, ip, asl #16	@ tmp629, <variable>.IntraQuantTab,
	ldrb	ip, [r4, #75]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	orr	lr, r1, lr, asl #8	@, tmp630, tmp629, <variable>.IntraQuantTab,
	movw	r1, #:lower16:.LC38	@,
	orr	r3, lr, r3	@ tmp632, tmp630, <variable>.IntraQuantTab
	movt	r1, #:upper16:.LC38	@,
	orr	r3, r3, ip, asl #24	@, temp.1284, tmp632, <variable>.IntraQuantTab,
	str	r3, [r5, #136]	@ temp.1284,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #67]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	lr, [r4, #51]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #48	@,
	ldrb	r3, [r4, #35]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	mov	r1, ip, asl #16	@ tmp638, <variable>.IntraQuantTab,
	ldrb	ip, [r4, #83]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	orr	lr, r1, lr, asl #8	@, tmp639, tmp638, <variable>.IntraQuantTab,
	movw	r1, #:lower16:.LC38	@,
	orr	r3, lr, r3	@ tmp641, tmp639, <variable>.IntraQuantTab
	movt	r1, #:upper16:.LC38	@,
	orr	r3, r3, ip, asl #24	@, temp.1302, tmp641, <variable>.IntraQuantTab,
	str	r3, [r5, #140]	@ temp.1302,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #60]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	lr, [r4, #44]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #56	@,
	ldrb	r3, [r4, #28]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	mov	r1, ip, asl #16	@ tmp647, <variable>.IntraQuantTab,
	ldrb	ip, [r4, #76]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	orr	lr, r1, lr, asl #8	@, tmp648, tmp647, <variable>.IntraQuantTab,
	movw	r1, #:lower16:.LC38	@,
	orr	r3, lr, r3	@ tmp650, tmp648, <variable>.IntraQuantTab
	movt	r1, #:upper16:.LC38	@,
	orr	r3, r3, ip, asl #24	@, temp.1320, tmp650, <variable>.IntraQuantTab,
	str	r3, [r5, #144]	@ temp.1320,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #68]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	lr, [r4, #52]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #56	@,
	ldrb	r3, [r4, #36]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	mov	r1, ip, asl #16	@ tmp656, <variable>.IntraQuantTab,
	ldrb	ip, [r4, #84]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	orr	lr, r1, lr, asl #8	@, tmp657, tmp656, <variable>.IntraQuantTab,
	movw	r1, #:lower16:.LC38	@,
	orr	r3, lr, r3	@ tmp659, tmp657, <variable>.IntraQuantTab
	movt	r1, #:upper16:.LC38	@,
	orr	r3, r3, ip, asl #24	@, temp.1338, tmp659, <variable>.IntraQuantTab,
	str	r3, [r5, #148]	@ temp.1338,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #61]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	lr, [r4, #45]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #64	@,
	ldrb	r3, [r4, #29]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	mov	r1, ip, asl #16	@ tmp665, <variable>.IntraQuantTab,
	ldrb	ip, [r4, #77]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	orr	lr, r1, lr, asl #8	@, tmp666, tmp665, <variable>.IntraQuantTab,
	movw	r1, #:lower16:.LC38	@,
	orr	r3, lr, r3	@ tmp668, tmp666, <variable>.IntraQuantTab
	movt	r1, #:upper16:.LC38	@,
	orr	r3, r3, ip, asl #24	@, temp.1356, tmp668, <variable>.IntraQuantTab,
	str	r3, [r5, #152]	@ temp.1356,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #69]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	lr, [r4, #53]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #64	@,
	ldrb	r3, [r4, #37]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	mov	r1, ip, asl #16	@ tmp674, <variable>.IntraQuantTab,
	ldrb	ip, [r4, #85]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	orr	lr, r1, lr, asl #8	@, tmp675, tmp674, <variable>.IntraQuantTab,
	movw	r1, #:lower16:.LC38	@,
	orr	r3, lr, r3	@ tmp677, tmp675, <variable>.IntraQuantTab
	movt	r1, #:upper16:.LC38	@,
	orr	r3, r3, ip, asl #24	@, temp.1374, tmp677, <variable>.IntraQuantTab,
	str	r3, [r5, #156]	@ temp.1374,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #62]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	lr, [r4, #46]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #72	@,
	ldrb	r3, [r4, #30]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	mov	r1, ip, asl #16	@ tmp683, <variable>.IntraQuantTab,
	ldrb	ip, [r4, #78]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	orr	lr, r1, lr, asl #8	@, tmp684, tmp683, <variable>.IntraQuantTab,
	movw	r1, #:lower16:.LC38	@,
	orr	r3, lr, r3	@ tmp686, tmp684, <variable>.IntraQuantTab
	movt	r1, #:upper16:.LC38	@,
	orr	r3, r3, ip, asl #24	@, temp.1392, tmp686, <variable>.IntraQuantTab,
	str	r3, [r5, #160]	@ temp.1392,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #70]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	lr, [r4, #54]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #72	@,
	ldrb	r3, [r4, #38]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	mov	r1, ip, asl #16	@ tmp692, <variable>.IntraQuantTab,
	ldrb	ip, [r4, #86]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	orr	lr, r1, lr, asl #8	@, tmp693, tmp692, <variable>.IntraQuantTab,
	movw	r1, #:lower16:.LC38	@,
	orr	r3, lr, r3	@ tmp695, tmp693, <variable>.IntraQuantTab
	movt	r1, #:upper16:.LC38	@,
	orr	r3, r3, ip, asl #24	@, temp.1410, tmp695, <variable>.IntraQuantTab,
	str	r3, [r5, #164]	@ temp.1410,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #47]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	lr, [r4, #63]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #80	@,
	ldrb	r3, [r4, #31]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	mov	r1, ip, asl #8	@ tmp701, <variable>.IntraQuantTab,
	ldrb	ip, [r4, #79]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	orr	lr, r1, lr, asl #16	@, tmp702, tmp701, <variable>.IntraQuantTab,
	movw	r1, #:lower16:.LC38	@,
	orr	r3, lr, r3	@ tmp704, tmp702, <variable>.IntraQuantTab
	movt	r1, #:upper16:.LC38	@,
	orr	r3, r3, ip, asl #24	@, temp.1143, tmp704, <variable>.IntraQuantTab,
	str	r3, [r5, #168]	@ temp.1143,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #71]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	lr, [r4, #55]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #80	@,
	ldrb	r3, [r4, #39]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	mov	r1, ip, asl #16	@ tmp710, <variable>.IntraQuantTab,
	ldrb	ip, [r4, #87]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	orr	lr, r1, lr, asl #8	@, tmp711, tmp710, <variable>.IntraQuantTab,
	movw	r1, #:lower16:.LC38	@,
	orr	r3, lr, r3	@ tmp713, tmp711, <variable>.IntraQuantTab
	movt	r1, #:upper16:.LC38	@,
	orr	r3, r3, ip, asl #24	@, D.39375, tmp713, <variable>.IntraQuantTab,
	str	r3, [r5, #172]	@ D.39375,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #120]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #104]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r2, #24	@,
	ldrb	r3, [r4, #88]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r0, #4	@,
	mov	r1, ip, asl #16	@ tmp719, <variable>.NonintraQuantTab,
	ldrb	ip, [r4, #136]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	lr, r1, lr, asl #8	@, tmp720, tmp719, <variable>.NonintraQuantTab,
	movw	r1, #:lower16:.LC38	@,
	orr	r3, lr, r3	@ tmp722, tmp720, <variable>.NonintraQuantTab
	movt	r1, #:upper16:.LC38	@,
	orr	r3, r3, ip, asl r2	@, temp.1428, tmp722, <variable>.NonintraQuantTab,
	str	r3, [r5, #176]	@ temp.1428,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #128]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #112]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r2, #24	@,
	ldrb	r3, [r4, #96]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r0, #4	@,
	mov	r1, ip, asl #16	@ tmp728, <variable>.NonintraQuantTab,
	ldrb	ip, [r4, #144]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	lr, r1, lr, asl #8	@, tmp729, tmp728, <variable>.NonintraQuantTab,
	movw	r1, #:lower16:.LC38	@,
	orr	r3, lr, r3	@ tmp731, tmp729, <variable>.NonintraQuantTab
	movt	r1, #:upper16:.LC38	@,
	orr	r3, r3, ip, asl r2	@, temp.1446, tmp731, <variable>.NonintraQuantTab,
	str	r3, [r5, #180]	@ temp.1446,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #121]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #105]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r2, #32	@,
	ldrb	r3, [r4, #89]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r0, #4	@,
	mov	r1, ip, asl #16	@ tmp737, <variable>.NonintraQuantTab,
	ldrb	ip, [r4, #137]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	lr, r1, lr, asl #8	@, tmp738, tmp737, <variable>.NonintraQuantTab,
	movw	r1, #:lower16:.LC38	@,
	orr	r3, lr, r3	@ tmp740, tmp738, <variable>.NonintraQuantTab
	movt	r1, #:upper16:.LC38	@,
	orr	r3, r3, ip, asl #24	@, temp.1464, tmp740, <variable>.NonintraQuantTab,
	str	r3, [r5, #184]	@ temp.1464,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #129]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #113]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r2, #32	@,
	ldrb	r3, [r4, #97]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r0, #4	@,
	mov	r1, ip, asl #16	@ tmp746, <variable>.NonintraQuantTab,
	ldrb	ip, [r4, #145]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	lr, r1, lr, asl #8	@, tmp747, tmp746, <variable>.NonintraQuantTab,
	movw	r1, #:lower16:.LC38	@,
	orr	r3, lr, r3	@ tmp749, tmp747, <variable>.NonintraQuantTab
	movt	r1, #:upper16:.LC38	@,
	orr	r3, r3, ip, asl #24	@, temp.1482, tmp749, <variable>.NonintraQuantTab,
	str	r3, [r5, #188]	@ temp.1482,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #122]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #106]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r2, #40	@,
	ldrb	r3, [r4, #90]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r0, #4	@,
	mov	r1, ip, asl #16	@ tmp755, <variable>.NonintraQuantTab,
	ldrb	ip, [r4, #138]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	lr, r1, lr, asl #8	@, tmp756, tmp755, <variable>.NonintraQuantTab,
	movw	r1, #:lower16:.LC38	@,
	orr	r3, lr, r3	@ tmp758, tmp756, <variable>.NonintraQuantTab
	movt	r1, #:upper16:.LC38	@,
	orr	r3, r3, ip, asl #24	@, temp.1500, tmp758, <variable>.NonintraQuantTab,
	str	r3, [r5, #192]	@ temp.1500,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #130]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #114]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r2, #40	@,
	ldrb	r3, [r4, #98]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r0, #4	@,
	mov	r1, ip, asl #16	@ tmp764, <variable>.NonintraQuantTab,
	ldrb	ip, [r4, #146]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	lr, r1, lr, asl #8	@, tmp765, tmp764, <variable>.NonintraQuantTab,
	movw	r1, #:lower16:.LC38	@,
	orr	r3, lr, r3	@ tmp767, tmp765, <variable>.NonintraQuantTab
	movt	r1, #:upper16:.LC38	@,
	orr	r3, r3, ip, asl #24	@, temp.1518, tmp767, <variable>.NonintraQuantTab,
	str	r3, [r5, #196]	@ temp.1518,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #123]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #107]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r2, #48	@,
	ldrb	r3, [r4, #91]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r0, #4	@,
	mov	r1, ip, asl #16	@ tmp773, <variable>.NonintraQuantTab,
	ldrb	ip, [r4, #139]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	lr, r1, lr, asl #8	@, tmp774, tmp773, <variable>.NonintraQuantTab,
	movw	r1, #:lower16:.LC38	@,
	orr	r3, lr, r3	@ tmp776, tmp774, <variable>.NonintraQuantTab
	movt	r1, #:upper16:.LC38	@,
	orr	r3, r3, ip, asl #24	@, temp.1536, tmp776, <variable>.NonintraQuantTab,
	str	r3, [r5, #200]	@ temp.1536,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #131]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #115]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r2, #48	@,
	ldrb	r3, [r4, #99]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r0, #4	@,
	mov	r1, ip, asl #16	@ tmp782, <variable>.NonintraQuantTab,
	ldrb	ip, [r4, #147]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	lr, r1, lr, asl #8	@, tmp783, tmp782, <variable>.NonintraQuantTab,
	movw	r1, #:lower16:.LC38	@,
	orr	r3, lr, r3	@ tmp785, tmp783, <variable>.NonintraQuantTab
	movt	r1, #:upper16:.LC38	@,
	orr	r3, r3, ip, asl #24	@, temp.1554, tmp785, <variable>.NonintraQuantTab,
	str	r3, [r5, #204]	@ temp.1554,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #124]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #108]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r2, #56	@,
	ldrb	r3, [r4, #92]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r0, #4	@,
	mov	r1, ip, asl #16	@ tmp791, <variable>.NonintraQuantTab,
	ldrb	ip, [r4, #140]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	lr, r1, lr, asl #8	@, tmp792, tmp791, <variable>.NonintraQuantTab,
	movw	r1, #:lower16:.LC38	@,
	orr	r3, lr, r3	@ tmp794, tmp792, <variable>.NonintraQuantTab
	movt	r1, #:upper16:.LC38	@,
	orr	r3, r3, ip, asl #24	@, temp.1572, tmp794, <variable>.NonintraQuantTab,
	str	r3, [r5, #208]	@ temp.1572,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #132]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #116]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r2, #56	@,
	ldrb	r3, [r4, #100]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r0, #4	@,
	mov	r1, ip, asl #16	@ tmp800, <variable>.NonintraQuantTab,
	ldrb	ip, [r4, #148]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	lr, r1, lr, asl #8	@, tmp801, tmp800, <variable>.NonintraQuantTab,
	movw	r1, #:lower16:.LC38	@,
	orr	r3, lr, r3	@ tmp803, tmp801, <variable>.NonintraQuantTab
	movt	r1, #:upper16:.LC38	@,
	orr	r3, r3, ip, asl #24	@, temp.1590, tmp803, <variable>.NonintraQuantTab,
	str	r3, [r5, #212]	@ temp.1590,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #125]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #109]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r2, #64	@,
	ldrb	r3, [r4, #93]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r0, #4	@,
	mov	r1, ip, asl #16	@ tmp809, <variable>.NonintraQuantTab,
	ldrb	ip, [r4, #141]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	lr, r1, lr, asl #8	@, tmp810, tmp809, <variable>.NonintraQuantTab,
	movw	r1, #:lower16:.LC38	@,
	orr	r3, lr, r3	@ tmp812, tmp810, <variable>.NonintraQuantTab
	movt	r1, #:upper16:.LC38	@,
	orr	r3, r3, ip, asl #24	@, temp.1608, tmp812, <variable>.NonintraQuantTab,
	str	r3, [r5, #216]	@ temp.1608,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #133]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #117]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r2, #64	@,
	ldrb	r3, [r4, #101]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r0, #4	@,
	mov	r1, ip, asl #16	@ tmp818, <variable>.NonintraQuantTab,
	ldrb	ip, [r4, #149]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	lr, r1, lr, asl #8	@, tmp819, tmp818, <variable>.NonintraQuantTab,
	movw	r1, #:lower16:.LC38	@,
	orr	r3, lr, r3	@ tmp821, tmp819, <variable>.NonintraQuantTab
	movt	r1, #:upper16:.LC38	@,
	orr	r3, r3, ip, asl #24	@, temp.1626, tmp821, <variable>.NonintraQuantTab,
	str	r3, [r5, #220]	@ temp.1626,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #126]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #110]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r2, #72	@,
	ldrb	r3, [r4, #94]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r0, #4	@,
	mov	r1, ip, asl #16	@ tmp827, <variable>.NonintraQuantTab,
	ldrb	ip, [r4, #142]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	lr, r1, lr, asl #8	@, tmp828, tmp827, <variable>.NonintraQuantTab,
	movw	r1, #:lower16:.LC38	@,
	orr	r3, lr, r3	@ tmp830, tmp828, <variable>.NonintraQuantTab
	movt	r1, #:upper16:.LC38	@,
	orr	r3, r3, ip, asl #24	@, temp.1644, tmp830, <variable>.NonintraQuantTab,
	str	r3, [r5, #224]	@ temp.1644,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #134]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #118]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r2, #72	@,
	ldrb	r3, [r4, #102]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r0, #4	@,
	mov	r1, ip, asl #16	@ tmp836, <variable>.NonintraQuantTab,
	ldrb	ip, [r4, #150]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	lr, r1, lr, asl #8	@, tmp837, tmp836, <variable>.NonintraQuantTab,
	movw	r1, #:lower16:.LC38	@,
	orr	r3, lr, r3	@ tmp839, tmp837, <variable>.NonintraQuantTab
	movt	r1, #:upper16:.LC38	@,
	orr	r3, r3, ip, asl #24	@, temp.1662, tmp839, <variable>.NonintraQuantTab,
	str	r3, [r5, #228]	@ temp.1662,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #127]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #111]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r2, #80	@,
	ldrb	r3, [r4, #95]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r0, #4	@,
	mov	r1, ip, asl #16	@ tmp845, <variable>.NonintraQuantTab,
	ldrb	ip, [r4, #143]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	lr, r1, lr, asl #8	@, tmp846, tmp845, <variable>.NonintraQuantTab,
	movw	r1, #:lower16:.LC38	@,
	orr	r3, lr, r3	@ tmp848, tmp846, <variable>.NonintraQuantTab
	movt	r1, #:upper16:.LC38	@,
	orr	r3, r3, ip, asl #24	@, temp.1160, tmp848, <variable>.NonintraQuantTab,
	str	r3, [r5, #232]	@ temp.1160,
	bl	dprint_vfmw	@
	ldrb	r3, [r4, #135]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	r0, [r4, #119]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	movw	r1, #:lower16:.LC38	@,
	ldrb	ip, [r4, #151]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	movt	r1, #:upper16:.LC38	@,
	mov	r2, r3, asl #16	@ tmp854, <variable>.NonintraQuantTab,
	ldrb	r3, [r4, #103]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r2, r2, r0, asl #8	@, tmp855, tmp854, <variable>.NonintraQuantTab,
	mov	r0, #4	@,
	orr	r3, r2, r3	@ tmp857, tmp855, <variable>.NonintraQuantTab
	mov	r2, #80	@,
	orr	r3, r3, ip, asl #24	@, D.39400, tmp857, <variable>.NonintraQuantTab,
	str	r3, [r5, #236]	@ D.39400,
	bl	dprint_vfmw	@
	b	.L59	@
.L67:
	movw	r0, #14620	@ tmp532,
	ldr	lr, [r4, r0]	@ prephitmp.930, <variable>.sprite_warping_points
	cmp	lr, #1	@ prephitmp.930,
	streqb	lr, [r4, #152]	@ prephitmp.930, <variable>.FF_BUG_EDGE_FIND_POINT
	beq	.L62	@,
	bls	.L62	@,
	ldrb	r1, [r4, #153]	@ zero_extendqisi2	@ <variable>.FF_BUG_EDGE_EXTEND, <variable>.FF_BUG_EDGE_EXTEND
	strb	r1, [r4, #152]	@ <variable>.FF_BUG_EDGE_EXTEND, <variable>.FF_BUG_EDGE_FIND_POINT
	mov	r2, r1	@ prephitmp.905, <variable>.FF_BUG_EDGE_EXTEND
	b	.L58	@
.L66:
	movw	ip, #14620	@ tmp439,
	ldr	r3, [r4, ip]	@ <variable>.sprite_warping_points, <variable>.sprite_warping_points
	cmp	r3, #1	@ <variable>.sprite_warping_points,
	bne	.L49	@,
	ldrb	r7, [r4, #154]	@ zero_extendqisi2	@ <variable>.FF_BUG_DIVX500B413, <variable>.FF_BUG_DIVX500B413
	cmp	r7, #1	@ <variable>.FF_BUG_DIVX500B413,
	beq	.L69	@,
	movw	r9, #14644	@ tmp464,
	ldrb	r7, [r4, #11]	@ zero_extendqisi2	@ <variable>.QuarterSample, <variable>.QuarterSample
	ldr	r0, [r4, r9]	@ <variable>.Uo, <variable>.Uo
	mov	r1, r0, asl r7	@ D.39269, <variable>.Uo,
	cmp	r1, #0	@ D.39269,
	ble	.L51	@,
	movw	ip, #14624	@ tmp467,
	ldr	r8, [r4, ip]	@ D.39272, <variable>.sprite_warping_accuracy
	mov	r3, r3, asl r8	@ tmp468, <variable>.sprite_warping_points,
	add	lr, r1, r3, asr #1	@, tmp471, D.39269, tmp468,
	mov	r2, lr, asr r8	@ Dat, tmp471,
.L52:
	str	r2, [r5, #24]	@ Dat,
	movw	r8, #14648	@ tmp479,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	mov	r7, #1	@ tmp490,
	bl	dprint_vfmw	@
	ldr	r9, [r4, r8]	@ <variable>.Vo, <variable>.Vo
	ldrb	r1, [r4, #11]	@ zero_extendqisi2	@ <variable>.QuarterSample, <variable>.QuarterSample
	movw	r2, #14624	@ tmp482,
	ldr	r8, [r4, r2]	@ temp.1032, <variable>.sprite_warping_accuracy
	mov	ip, r9, asl r1	@ D.39281, <variable>.Vo,
	movw	r1, #:lower16:.LC17	@,
	mov	r0, r7, asl r8	@ tmp489, tmp490,
	cmp	ip, #0	@ D.39281,
	suble	ip, ip, #1	@ tmp488, D.39281,
	movt	r1, #:upper16:.LC17	@,
	add	r3, ip, r0, asr #1	@, tmp492, tmp488, tmp489,
	mov	r0, #4	@,
	mov	r2, r3, asr r8	@ Dat.954, tmp492,
	str	r2, [r5, #28]	@ Dat.954,
	bl	dprint_vfmw	@
	b	.L49	@
.L65:
	ldr	r2, [r4, #204]	@ <variable>.Trb, <variable>.Trb
	movw	r1, #:lower16:.LC13	@,
	ldr	r8, [r4, #208]	@ <variable>.Trd, <variable>.Trd
	movt	r1, #:upper16:.LC13	@,
	mov	r0, #4	@,
	mov	r9, r2, asl #17	@ tmp420, <variable>.Trb,
	mov	lr, r8, asl #17	@ tmp421, <variable>.Trd,
	orr	r2, lr, r9, lsr #16	@, Dat.985, tmp421, tmp420,
	str	r2, [r7, #4]	@ Dat.985,
	bl	dprint_vfmw	@
	b	.L46	@
.L62:
	ldrb	r3, [r4, #157]	@ zero_extendqisi2	@ pretmp.1134, <variable>.FF_BUG_QPEL_FILED
	ldrb	r2, [r4, #152]	@ zero_extendqisi2	@ prephitmp.905, <variable>.FF_BUG_EDGE_FIND_POINT
	and	r7, r3, #1	@ tmp536, pretmp.1134,
	ldrb	r1, [r4, #153]	@ zero_extendqisi2	@ <variable>.FF_BUG_EDGE_EXTEND, <variable>.FF_BUG_EDGE_EXTEND
	mov	r7, r7, asl #4	@ prephitmp.907, tmp536,
	b	.L58	@
.L51:
	movw	r9, #14624	@ tmp472,
	sub	r1, r1, #1	@ tmp473, D.39269,
	ldr	r2, [r4, r9]	@ temp.1020, <variable>.sprite_warping_accuracy
	mov	r7, r3, asl r2	@ tmp474, <variable>.sprite_warping_points,
	add	r0, r1, r7, asr #1	@, tmp477, tmp473, tmp474,
	mov	r2, r0, asr r2	@ Dat, tmp477,
	b	.L52	@
.L69:
	movw	r8, #14624	@ tmp443,
	ldrb	r1, [r4, #11]	@ zero_extendqisi2	@ <variable>.QuarterSample, <variable>.QuarterSample
	ldr	ip, [r4, r8]	@ <variable>.sprite_warping_accuracy, <variable>.sprite_warping_accuracy
	movw	r2, #14644	@ tmp442,
	ldr	r0, [r4, r2]	@, <variable>.Uo
	rsb	lr, r1, ip	@ tmp445, <variable>.QuarterSample, <variable>.sprite_warping_accuracy
	mov	r1, r7, asl lr	@, <variable>.FF_BUG_DIVX500B413,
	bl	__aeabi_idiv	@
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	mov	r2, r0	@, tmp451
	str	r0, [r5, #24]	@ tmp451,
	mov	r0, #4	@,
	bl	dprint_vfmw	@
	ldr	r9, [r4, r8]	@ <variable>.sprite_warping_accuracy, <variable>.sprite_warping_accuracy
	ldrb	r3, [r4, #11]	@ zero_extendqisi2	@ <variable>.QuarterSample, <variable>.QuarterSample
	movw	r8, #14648	@ tmp453,
	ldr	r0, [r4, r8]	@, <variable>.Vo
	rsb	r1, r3, r9	@ tmp456, <variable>.QuarterSample, <variable>.sprite_warping_accuracy
	mov	r1, r7, asl r1	@, <variable>.FF_BUG_DIVX500B413,
	bl	__aeabi_idiv	@
	movw	r1, #:lower16:.LC17	@,
	movt	r1, #:upper16:.LC17	@,
	mov	r2, r0	@, tmp462
	str	r0, [r5, #28]	@ tmp462,
	mov	r0, #4	@,
	bl	dprint_vfmw	@
	b	.L49	@
.L63:
	movw	r1, #:lower16:.LC9	@,
	movw	r2, #969	@,
	movt	r1, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39129,
	b	.L44	@
	.fnend
	.size	MP4HAL_V300R001_CfgDnMsg, .-MP4HAL_V300R001_CfgDnMsg
	.align	2
	.global	MP4HAL_V300R001_CfgReg
	.type	MP4HAL_V300R001_CfgReg, %function
MP4HAL_V300R001_CfgReg:
	.fnstart
.LFB1531:
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
	movw	r3, #14576	@ tmp188,
	ldr	r3, [r0, r3]	@ D.38914, <variable>.SlcNum
	mov	r7, r0	@ pMp4DecParam, pMp4DecParam
	mov	r8, r1	@ VdhId, VdhId
	cmp	r3, #0	@ D.38914,
	beq	.L71	@,
	ldr	r1, [r0, #256]	@ temp.1768, <variable>.phy_address
	sub	ip, r3, #1	@ tmp427, D.38914,
	and	ip, ip, #1	@ tmp429, tmp427,
	mvn	r4, #0	@ stream_base_addr,
	cmp	r1, #0	@ temp.1768,
	beq	.L98	@,
	ldr	r0, [r0, #248]	@ <variable>.bit_len, <variable>.bit_len
	cmp	r0, #0	@ <variable>.bit_len,
	bne	.L119	@,
.L98:
	ldr	r1, [r7, #260]	@ D.38907, <variable>.phy_address
	cmp	r1, #0	@ D.38907,
	beq	.L100	@,
	ldr	lr, [r7, #252]	@ tmp441, <variable>.bit_len
	cmp	lr, #0	@ tmp441,
	bne	.L120	@,
.L100:
	mov	r0, #1	@ i,
	cmp	r0, r3	@ i, D.38914
	add	r1, r7, #28	@ ivtmp.1701, pMp4DecParam,
	beq	.L97	@,
	cmp	ip, #0	@ tmp429,
	beq	.L72	@,
	ldr	ip, [r1, #256]	@ temp.1768, <variable>.phy_address
	cmp	ip, #0	@ temp.1768,
	beq	.L105	@,
	b	.L110	@
.L72:
	ldr	ip, [r1, #256]	@ temp.1768, <variable>.phy_address
	cmp	ip, #0	@ temp.1768,
	beq	.L75	@,
	ldr	lr, [r1, #248]	@ <variable>.bit_len, <variable>.bit_len
	cmp	lr, #0	@ <variable>.bit_len,
	beq	.L75	@,
	bic	ip, ip, #15	@ tmp192, temp.1768,
	cmp	r4, ip	@ stream_base_addr, tmp192
	movcs	r4, ip	@ stream_base_addr, tmp192
.L75:
	ldr	ip, [r1, #260]	@ D.38907, <variable>.phy_address
	cmp	ip, #0	@ D.38907,
	beq	.L73	@,
	ldr	lr, [r1, #252]	@ tmp189, <variable>.bit_len
	cmp	lr, #0	@ tmp189,
	beq	.L73	@,
	bic	ip, ip, #15	@ tmp190, D.38907,
	cmp	r4, ip	@ stream_base_addr, tmp190
	movcs	r4, ip	@ stream_base_addr, tmp190
.L73:
	add	r1, r1, #28	@ tmp431, ivtmp.1701,
	add	r0, r0, #1	@ tmp430, i,
	ldr	ip, [r1, #256]	@ temp.1768, <variable>.phy_address
	cmp	ip, #0	@ temp.1768,
	beq	.L105	@,
.L110:
	ldr	lr, [r1, #248]	@ <variable>.bit_len, <variable>.bit_len
	cmp	lr, #0	@ <variable>.bit_len,
	beq	.L105	@,
	bic	ip, ip, #15	@ tmp450, temp.1768,
	cmp	r4, ip	@ stream_base_addr, tmp450
	movcs	r4, ip	@ stream_base_addr, tmp450
.L105:
	ldr	ip, [r1, #260]	@ D.38907, <variable>.phy_address
	cmp	ip, #0	@ D.38907,
	beq	.L107	@,
	ldr	lr, [r1, #252]	@ tmp452, <variable>.bit_len
	cmp	lr, #0	@ tmp452,
	beq	.L107	@,
	bic	ip, ip, #15	@ tmp453, D.38907,
	cmp	r4, ip	@ stream_base_addr, tmp453
	movcs	r4, ip	@ stream_base_addr, tmp453
.L107:
	add	r0, r0, #1	@ i, tmp430,
	add	r1, r1, #28	@ ivtmp.1701, tmp431,
	cmp	r0, r3	@ i, D.38914
	bne	.L72	@,
.L97:
	cmn	r4, #1	@ stream_base_addr,
	beq	.L71	@,
	str	r4, [r2, #0]	@ stream_base_addr,* pBaseAddr
	cmp	r8, #0	@ VdhId,
	ldrh	r9, [r7, #166]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	ldrh	r6, [r7, #164]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	mul	r5, r6, r9	@ tmp196, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	sub	r2, r5, #1	@ tmp197, tmp196,
	bic	r1, r2, #-16777216	@ tmp198, tmp197,
	bic	r0, r1, #15728640	@ tmp198, tmp198,
	orr	sl, r0, #1107296256	@ D32.1706, tmp198,
	orr	sl, sl, #4194304	@ D32.1706, D32.1706,
	ble	.L121	@,
	mov	r3, r8	@, VdhId
	ldr	r2, .L125	@,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC45	@,
	movt	r1, #:upper16:.LC45	@,
	mov	r9, #1	@ tmp256,
	str	r9, [sp, #0]	@ tmp256,
	bl	dprint_vfmw	@
	mov	r2, sl	@, D32.1706
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC41	@,
	movt	r1, #:upper16:.LC41	@,
	bl	dprint_vfmw	@
	movw	r3, #14604	@ tmp258,
	ldr	ip, [r7, r3]	@ <variable>.VahbStride, <variable>.VahbStride
	movw	r2, #14660	@ tmp264,
	ldr	r1, [r7, r2]	@ <variable>.Compress_en, <variable>.Compress_en
	mov	r3, r8	@, VdhId
	ldr	r2, .L125	@,
	mov	r0, #32	@,
	mov	sl, ip, lsr #6	@ tmp259, <variable>.VahbStride,
	and	ip, r1, r9	@ tmp265, <variable>.Compress_en,
	movw	r1, #:lower16:.LC45	@,
	movt	r1, #:upper16:.LC45	@,
	mov	r5, sl, asl #4	@ tmp261, tmp259,
	str	r9, [sp, #0]	@ tmp256,
	orr	r6, r5, #536870914	@ tmp262, tmp261,
	movw	r5, #:lower16:g_HwMem	@ tmp426,
	orr	sl, r6, #114688	@ tmp262, tmp262,
	movt	r5, #:upper16:g_HwMem	@ tmp426,
	orr	r6, sl, ip, asl #30	@, D32.1772, tmp262, tmp265,
	movw	sl, #1208	@ tmp275,
	mla	sl, sl, r8, r5	@ tmp276, tmp275, VdhId, tmp426
	bl	dprint_vfmw	@
	mov	r2, r6	@, D32.1772
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC42	@,
	movt	r1, #:upper16:.LC42	@,
	bl	dprint_vfmw	@
	str	r9, [sp, #0]	@ tmp256,
	mov	r3, r8	@, VdhId
	ldr	r2, .L125	@,
	ldr	ip, [sl, #48]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC45	@,
	movt	r1, #:upper16:.LC45	@,
	bic	r6, ip, #15	@ D32.1775, <variable>.MsgSlotAddr,
	bl	dprint_vfmw	@
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC43	@,
	mov	r2, r6	@, D32.1775
	movt	r1, #:upper16:.LC43	@,
	bl	dprint_vfmw	@
	ldr	ip, [sl, #32]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r3, r8	@, VdhId
	ldr	r2, .L125	@,
	bic	r6, ip, #15	@ D32.1777, <variable>.MsgSlotAddr,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC45	@,
	movt	r1, #:upper16:.LC45	@,
	str	r9, [sp, #0]	@ tmp256,
	bl	dprint_vfmw	@
	mov	r2, r6	@, D32.1777
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC44	@,
	movt	r1, #:upper16:.LC44	@,
	bl	dprint_vfmw	@
	movw	r1, #:lower16:.LC45	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC45	@,
	ldr	r2, .L125	@,
	mov	r3, r8	@, VdhId
	str	r9, [sp, #0]	@ tmp256,
	bl	dprint_vfmw	@
.L80:
	mov	r2, r4	@, stream_base_addr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC46	@,
	movt	r1, #:upper16:.LC46	@,
	bl	dprint_vfmw	@
	ldrh	r4, [r7, #164]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	cmp	r4, #120	@ <variable>.PicWidthInMb,
	movls	r4, #65536	@ D32,
	movhi	r4, #0	@ D32,
	cmp	r8, #0	@ VdhId,
	bne	.L122	@,
	movw	r0, #:lower16:-121389052	@,
	movt	r0, #:upper16:-121389052	@,
	bl	MEM_ReadPhyWord	@
	cmp	r4, #0	@ D32,
	mov	r1, r0	@ datTmp.1721,
	biceq	r1, r0, #65536	@ datTmp, datTmp.1721,
	movw	r0, #:lower16:s_RegPhyBaseAddr	@ tmp300,
	movt	r0, #:upper16:s_RegPhyBaseAddr	@ tmp300,
	orrne	r1, r1, #65536	@ datTmp, datTmp.1721,
	ldr	r4, [r0, #0]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, r4, #4	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
.L88:
	movw	r1, #1208	@ tmp313,
	movw	r3, #:lower16:3148803	@ tmp316,
	mul	r4, r1, r8	@ tmp312, tmp313, VdhId
	movt	r3, #:upper16:3148803	@ tmp316,
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC48	@,
	movt	r1, #:upper16:.LC48	@,
	ldr	lr, [r4, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [lr, #60]	@ tmp316,
	ldr	ip, [r4, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [ip, #64]	@ tmp316,
	ldr	r6, [r4, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [r6, #68]	@ tmp316,
	ldr	r2, [r4, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [r2, #72]	@ tmp316,
	ldr	lr, [r4, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [lr, #76]	@ tmp316,
	ldr	ip, [r4, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [ip, #80]	@ tmp316,
	ldr	r6, [r4, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [r6, #84]	@ tmp316,
	ldr	lr, [r4, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r2, [r7, #212]	@ <variable>.CurPicPhyAddr, <variable>.CurPicPhyAddr
	bic	r2, r2, #15	@ D32.1737, <variable>.CurPicPhyAddr,
	str	r2, [lr, #96]	@ D32.1737,
	bl	dprint_vfmw	@
	movw	r0, #14604	@ tmp360,
	ldr	r3, [r7, r0]	@ D32.1742, <variable>.VahbStride
	movw	r1, #:lower16:.LC49	@,
	ldr	ip, [r4, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	movt	r1, #:upper16:.LC49	@,
	ldrh	r4, [r7, #166]	@ height_in_mb, <variable>.PicHeightInMb
	mov	r0, #3	@,
	mov	r2, r3	@, D32.1742
	str	r3, [ip, #100]	@ D32.1742,
	bl	dprint_vfmw	@
	ldrh	r1, [r7, #164]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	movw	r3, #2047	@ tmp369,
	mov	r2, r1, asl #4	@ D.39039, <variable>.PicWidthInMb,
	sub	r6, r2, #1	@ tmp368, D.39039,
	cmp	r6, r3	@ tmp368, tmp369
	bhi	.L123	@,
.L92:
	mov	r1, #16	@ level,
.L94:
	mov	ip, r4, asl #4	@ tmp379, height_in_mb,
	add	r3, r4, #1	@ tmp383, height_in_mb,
	add	lr, ip, #31	@ tmp380, tmp379,
	movw	r2, #14604	@ tmp385,
	movw	r0, #1208	@ tmp391,
	ldr	r4, [r7, r2]	@ <variable>.VahbStride, <variable>.VahbStride
	mov	r6, lr, lsr #5	@ tmp381, tmp380,
	mov	r7, r3, lsr #1	@ tmp384, tmp383,
	mul	r8, r0, r8	@ tmp390, tmp391, VdhId
	mov	r0, #3	@,
	mul	r6, r6, r1	@ D.39061, tmp381, level
	movw	r1, #:lower16:.LC50	@,
	mul	ip, r4, r7	@ tmp386, <variable>.VahbStride, tmp384
	movt	r1, #:upper16:.LC50	@,
	ldr	lr, [r8, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r4, #0	@ tmp405,
	add	r7, r8, r5	@ tmp392, tmp390, tmp426
	add	r2, ip, r6, asl #4	@, tmp388, tmp386, D.39061,
	mov	r6, r6, asl #5	@ D32.1756, D.39061,
	mov	r2, r2, asl #1	@ D32.1752, tmp388,
	str	r2, [lr, #104]	@ D32.1752,
	bl	dprint_vfmw	@
	ldr	ip, [r8, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r2, r4	@, tmp405
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC51	@,
	movt	r1, #:upper16:.LC51	@,
	str	r6, [ip, #108]	@ D32.1756,
	ldr	r3, [r8, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r4, [r3, #152]	@ tmp405,
	bl	dprint_vfmw	@
	ldr	r3, [r7, #1184]	@ D32.1761, <variable>.DnrMbInfoAddr
	ldr	ip, [r8, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC52	@,
	movt	r1, #:upper16:.LC52	@,
	mov	r2, r3	@, D32.1761
	str	r3, [ip, #144]	@ D32.1761,
	bl	dprint_vfmw	@
	ldr	r3, [r8, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, r4	@ D.38918, tmp405
	mvn	r1, #0	@ tmp424,
	str	r1, [r3, #32]	@ tmp424,
.L78:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L122:
	cmp	r8, #1	@ VdhId,
	beq	.L124	@,
	cmp	r8, #0	@ VdhId,
	ble	.L88	@,
	b	.L91	@
.L120:
	bic	r0, r1, #15	@ tmp442, D.38907,
	cmp	r4, r0	@ stream_base_addr, tmp442
	movcs	r4, r0	@ stream_base_addr, tmp442
	b	.L100	@
.L119:
	bic	r1, r1, #15	@ tmp439, temp.1768,
	cmp	r4, r1	@ stream_base_addr, tmp439
	movcs	r4, r1	@ stream_base_addr, tmp439
	b	.L98	@
.L123:
	sub	r0, r2, #2048	@ tmp370, D.39039,
	sub	r1, r0, #1	@ tmp370, tmp370,
	cmp	r1, r3	@ tmp370, tmp369
	movls	r1, #32	@ level,
	bls	.L94	@,
	sub	r6, r2, #4096	@ tmp373, D.39039,
	sub	r1, r6, #1	@ tmp373, tmp373,
	cmp	r1, r3	@ tmp373, tmp369
	movls	r1, #48	@ level,
	bls	.L94	@,
	sub	ip, r2, #6144	@ tmp376, D.39039,
	sub	r2, ip, #1	@ tmp376, tmp376,
	cmp	r2, r3	@ tmp376, tmp369
	movls	r1, #64	@ level,
	bls	.L94	@,
	b	.L92	@
.L124:
	movw	r0, #:lower16:-121389052	@,
	movt	r0, #:upper16:-121389052	@,
	bl	MEM_ReadPhyWord	@
	movw	r2, #:lower16:s_RegPhyBaseAddr_1	@ tmp304,
	movt	r2, #:upper16:s_RegPhyBaseAddr_1	@ tmp304,
	cmp	r4, #0	@ D32,
	ldr	ip, [r2, #0]	@ s_RegPhyBaseAddr_1, s_RegPhyBaseAddr_1
	mov	r1, r0	@ datTmp.1722,
	biceq	r1, r0, #65536	@ datTmp.1705, datTmp.1722,
	orrne	r1, r1, #65536	@ datTmp.1705, datTmp.1722,
	add	r0, ip, #4	@, s_RegPhyBaseAddr_1,
	bl	MEM_WritePhyWord	@
.L91:
	mov	lr, #0	@ tmp310,
	mov	r3, r8	@, VdhId
	mov	r0, lr	@, tmp310
	movw	r1, #:lower16:.LC47	@,
	ldr	r2, .L125	@,
	movt	r1, #:upper16:.LC47	@,
	str	lr, [sp, #0]	@ tmp310,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38918,
	b	.L78	@
.L121:
	movw	r6, #1208	@ tmp203,
	movw	r5, #:lower16:g_HwMem	@ tmp426,
	mul	r6, r6, r8	@ tmp202, tmp203, VdhId
	movt	r5, #:upper16:g_HwMem	@ tmp426,
	mov	r2, sl	@, D32.1706
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC41	@,
	movt	r1, #:upper16:.LC41	@,
	add	r9, r6, r5	@ tmp204, tmp202, tmp426
	ldr	lr, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	sl, [lr, #8]	@ D32.1706,
	bl	dprint_vfmw	@
	movw	r1, #14604	@ tmp207,
	ldr	r3, [r7, r1]	@ <variable>.VahbStride, <variable>.VahbStride
	movw	r0, #14660	@ tmp213,
	ldr	r2, [r7, r0]	@ <variable>.Compress_en, <variable>.Compress_en
	movw	r1, #:lower16:.LC42	@,
	ldr	ip, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	movt	r1, #:upper16:.LC42	@,
	mov	r3, r3, lsr #6	@ tmp208, <variable>.VahbStride,
	and	r2, r2, #1	@ tmp214, <variable>.Compress_en,
	mov	r0, #3	@,
	mov	r3, r3, asl #4	@ tmp210, tmp208,
	orr	r3, r3, #536870914	@ tmp211, tmp210,
	orr	r3, r3, #114688	@ tmp211, tmp211,
	orr	r2, r3, r2, asl #30	@, D32.1708, tmp211, tmp214,
	str	r2, [ip, #12]	@ D32.1708,
	bl	dprint_vfmw	@
	ldr	r3, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r2, [r9, #48]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC43	@,
	movt	r1, #:upper16:.LC43	@,
	bic	r2, r2, #15	@ D32.1711, <variable>.MsgSlotAddr,
	str	r2, [r3, #16]	@ D32.1711,
	bl	dprint_vfmw	@
	ldr	ip, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r1, [r9, #32]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r0, #3	@,
	bic	r2, r1, #15	@ D32.1714, <variable>.MsgSlotAddr,
	movw	r1, #:lower16:.LC44	@,
	str	r2, [ip, #20]	@ D32.1714,
	movt	r1, #:upper16:.LC44	@,
	bl	dprint_vfmw	@
	ldr	r3, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r4, [r3, #24]	@ stream_base_addr,
	b	.L80	@
.L71:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC40	@,
	mvn	r2, #0	@,
	movt	r1, #:upper16:.LC40	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38918,
	b	.L78	@
.L126:
	.align	2
.L125:
	.word	.LANCHOR0+32
	.fnend
	.size	MP4HAL_V300R001_CfgReg, .-MP4HAL_V300R001_CfgReg
	.align	2
	.global	MP4HAL_V300R001_StartDec
	.type	MP4HAL_V300R001_StartDec, %function
MP4HAL_V300R001_StartDec:
	.fnstart
.LFB1530:
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
	ldrh	r3, [r0, #164]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	mov	r6, #0	@ tmp140,
	mov	r4, r0	@ pMp4DecParam, pMp4DecParam
	cmp	r3, #512	@ <variable>.PicWidthInMb,
	mov	r5, r1	@ VdhId, VdhId
	str	r6, [fp, #-32]	@ tmp140, StreamBaseAddr
	bhi	.L135	@,
	ldrh	r2, [r0, #166]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	cmp	r2, #512	@ <variable>.PicHeightInMb,
	bhi	.L135	@,
	sub	r2, fp, #32	@,,
	bl	MP4HAL_V300R001_CfgReg	@
	subs	r7, r0, #0	@ ret,
	bne	.L136	@,
	mov	r0, r4	@, pMp4DecParam
	mov	r1, r5	@, VdhId
	bl	MP4HAL_V300R001_CfgDnMsg	@
	subs	r6, r0, #0	@ ret.1806,
	bne	.L137	@,
	mov	r0, r4	@, pMp4DecParam
	mov	r1, r5	@, VdhId
	ldr	r2, [fp, #-32]	@, StreamBaseAddr
	bl	MP4HAL_V300R001_WriteSlicMsg	@
	cmp	r0, #0	@ ret.1807
	bne	.L138	@,
.L129:
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L135:
	mov	r0, r6	@, tmp140
	movw	r1, #:lower16:.LC53	@,
	ldr	r2, .L139	@,
	movt	r1, #:upper16:.LC53	@,
	movw	r3, #:lower16:.LC54	@,
	movt	r3, #:upper16:.LC54	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38864,
	b	.L129	@
.L136:
	mov	r0, r6	@, tmp140
	movw	r1, #:lower16:.LC55	@,
	movt	r1, #:upper16:.LC55	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38864,
	b	.L129	@
.L137:
	mov	r0, r7	@, ret
	movw	r1, #:lower16:.LC56	@,
	movt	r1, #:upper16:.LC56	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38864,
	b	.L129	@
.L138:
	mov	r0, r6	@, ret.1806
	movw	r1, #:lower16:.LC57	@,
	movt	r1, #:upper16:.LC57	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38864,
	b	.L129	@
.L140:
	.align	2
.L139:
	.word	.LANCHOR0+56
	.fnend
	.size	MP4HAL_V300R001_StartDec, .-MP4HAL_V300R001_StartDec
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	__func__.39429, %object
	.size	__func__.39429, 29
__func__.39429:
	.ascii	"MP4HAL_V300R001_WriteSlicMsg\000"
	.space	3
	.type	__func__.38900, %object
	.size	__func__.38900, 23
__func__.38900:
	.ascii	"MP4HAL_V300R001_CfgReg\000"
	.space	1
	.type	__func__.38859, %object
	.size	__func__.38859, 25
__func__.38859:
	.ascii	"MP4HAL_V300R001_StartDec\000"
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"%s: SlcDnMsgVirAddr = NULL\012\000"
.LC1:
	.ascii	"D0 = %#x \012\000"
	.space	1
.LC2:
	.ascii	"D1 = %#x \012\000"
	.space	1
.LC3:
	.ascii	"D2 = %#x \012\000"
	.space	1
.LC4:
	.ascii	"D3 = %#x \012\000"
	.space	1
.LC5:
	.ascii	"D4 = %#x \012\000"
	.space	1
.LC6:
	.ascii	"D5 = %#x \012\000"
	.space	1
.LC7:
	.ascii	"D6 = %#x \012\000"
	.space	1
.LC8:
	.ascii	"D7 = %#x \012\000"
	.space	1
.LC9:
	.ascii	"line: %d ,pMsgBlock = NULL is not expected value!\012"
	.ascii	"\000"
	.space	1
.LC10:
	.ascii	"D0=0x%x\012\000"
	.space	3
.LC11:
	.ascii	"D1=0x%x\012\000"
	.space	3
.LC12:
	.ascii	"D2=0x%x\012\000"
	.space	3
.LC13:
	.ascii	"D3=0x%x\012\000"
	.space	3
.LC14:
	.ascii	"D4=0x%x\012\000"
	.space	3
.LC15:
	.ascii	"D5=0x%x\012\000"
	.space	3
.LC16:
	.ascii	"D6=0x%x\012\000"
	.space	3
.LC17:
	.ascii	"D7=0x%x\012\000"
	.space	3
.LC18:
	.ascii	"D8=0x%x\012\000"
	.space	3
.LC19:
	.ascii	"D9=0x%x\012\000"
	.space	3
.LC20:
	.ascii	"D10=0x%x\012\000"
	.space	2
.LC21:
	.ascii	"D11=0x%x\012\000"
	.space	2
.LC22:
	.ascii	"D12= 0x%x\012\000"
	.space	1
.LC23:
	.ascii	"D13= 0x%x\012\000"
	.space	1
.LC24:
	.ascii	"D14= 0x%x\012\000"
	.space	1
.LC25:
	.ascii	"D15= 0x%x\012\000"
	.space	1
.LC26:
	.ascii	"D16= 0x%x\012\000"
	.space	1
.LC27:
	.ascii	"D17= 0x%x\012\000"
	.space	1
.LC28:
	.ascii	"D18= 0x%x\012\000"
	.space	1
.LC29:
	.ascii	"D19= 0x%x\012\000"
	.space	1
.LC30:
	.ascii	"D20= 0x%x\012\000"
	.space	1
.LC31:
	.ascii	"D21= 0x%x\012\000"
	.space	1
.LC32:
	.ascii	"D22= 0x%x\012\000"
	.space	1
.LC33:
	.ascii	"D23= 0x%x\012\000"
	.space	1
.LC34:
	.ascii	"D24= 0x%x\012\000"
	.space	1
.LC35:
	.ascii	"D25= 0x%x\012\000"
	.space	1
.LC36:
	.ascii	"D26= 0x%x\012\000"
	.space	1
.LC37:
	.ascii	"D27= 0x%x\012\000"
	.space	1
.LC38:
	.ascii	"D%d= 0x%x\012\000"
	.space	1
.LC39:
	.ascii	"D63= 0x%x\012\000"
	.space	1
.LC40:
	.ascii	"stream_base_addr = %#x\012\000"
.LC41:
	.ascii	"BASIC_V300R001_CFG0=0x%x\012\000"
	.space	2
.LC42:
	.ascii	"BASIC_V300R001_CFG1=0x%x\012\000"
	.space	2
.LC43:
	.ascii	"AVM_V300R001_ADDR=0x%x\012\000"
.LC44:
	.ascii	"VAM_V300R001_ADDR=0x%x\012\000"
.LC45:
	.ascii	"%s: WR_VREG but VdhId(%d) > MAX_VDH_NUM(%d)\012\000"
	.space	3
.LC46:
	.ascii	"STREAM_V300R001_BASE_ADDR=0x%x\012\000"
.LC47:
	.ascii	"%s: VdhId(%d) > %d\012\000"
.LC48:
	.ascii	"YSTADDR_V200R003_1D=0x%x\012\000"
	.space	2
.LC49:
	.ascii	"YSTRIDE_V200R003_1D=0x%x\012\000"
	.space	2
.LC50:
	.ascii	"UVOFFSET_V200R003_1D=0x%x\012\000"
	.space	1
.LC51:
	.ascii	"PRCMEM2_1D_CNT=0x%x\012\000"
	.space	3
.LC52:
	.ascii	"DNR_MBINFO_STADDR=0x%x\012\000"
.LC53:
	.ascii	"%s: %s\012\000"
.LC54:
	.ascii	"picture width out of range\000"
	.space	1
.LC55:
	.ascii	"MP4HAL_V200R003_CfgReg failed!\012\000"
.LC56:
	.ascii	"MP4HAL_V200R003_CfgDnMsg failed!\012\000"
	.space	2
.LC57:
	.ascii	"MP4HAL_V200R003_WriteSlicMsg failed!\012\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
