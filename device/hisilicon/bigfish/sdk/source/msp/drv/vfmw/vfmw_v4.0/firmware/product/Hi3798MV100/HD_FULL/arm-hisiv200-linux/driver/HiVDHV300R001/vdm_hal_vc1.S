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
	.file	"vdm_hal_vc1.c"
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
@ -DKBUILD_BASENAME=KBUILD_STR(vdm_hal_vc1)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD
@ drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV300R001/.vdm_hal_vc1.o.d
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV300R001/vdm_hal_vc1.c
@ -mlittle-endian -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -marm -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/driver/HiVDHV300R001/vdm_hal_vc1.o
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
	.global	VC1HAL_V300R001_InitHal
	.type	VC1HAL_V300R001_InitHal, %function
VC1HAL_V300R001_InitHal:
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
	.size	VC1HAL_V300R001_InitHal, .-VC1HAL_V300R001_InitHal
	.align	2
	.global	VC1HAL_V300R001_CfgSliceMsg
	.type	VC1HAL_V300R001_CfgSliceMsg, %function
VC1HAL_V300R001_CfgSliceMsg:
	.fnstart
.LFB1530:
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
	ldr	r1, [r1, #52]	@, <variable>.MsgSlotAddr
	mov	r4, r0	@ pVc1DecParam, pVc1DecParam
	mov	r0, r1	@,
	str	r1, [fp, #-56]	@, %sfp
	bl	MEM_Phy2Vir	@
	subs	r6, r0, #0	@ D.39248,
	beq	.L91	@,
	ldrb	r3, [r4, #4]	@ zero_extendqisi2	@ <variable>.profile, <variable>.profile
	cmp	r3, #2	@ <variable>.profile,
	beq	.L92	@,
	ldrb	r1, [r4, #70]	@ zero_extendqisi2	@ D.39267, <variable>.SlcNum
	movw	r3, #:lower16:77996	@ tmp309,
	ldr	r0, [r4, #96]	@ <variable>.Phy_addr, <variable>.Phy_addr
	movt	r3, #:upper16:77996	@ tmp309,
	cmp	r1, #0	@ D.39267,
	bic	r2, r0, #15	@, <variable>.Phy_addr,
	str	r2, [fp, #-48]	@, %sfp
	str	r2, [r4, r3]	@, <variable>.stream_base_addr
	beq	.L44	@,
	mov	r9, #0	@ pre.660,
	mov	r0, r6	@ ivtmp.641, D.39248
	mov	sl, r9	@ i, pre.660
	cmp	sl, #0	@ i,
	mov	r6, r4	@ ivtmp.679, pVc1DecParam
	str	r9, [fp, #-52]	@ pre.660, %sfp
	bne	.L29	@,
.L94:
	ldr	r5, [r4, #108]	@ slice_end_mbn.657, <variable>.SlcEndMbn
	cmp	r1, #1	@ D.39267,
	moveq	r2, sl	@ prephitmp.546, i
	moveq	r1, sl	@ slice_start_mbn.658, i
	streq	r5, [fp, #-52]	@ slice_end_mbn.657, %sfp
	beq	.L31	@,
	movle	r3, #1	@ k.712,
	ble	.L33	@,
	ldr	r3, [r4, #156]	@ <variable>.SlcEndMbn, <variable>.SlcEndMbn
	cmp	r5, r3	@ slice_end_mbn.657, <variable>.SlcEndMbn
	movlt	r3, #1	@ k.712,
	blt	.L35	@,
	tst	r1, #1	@ D.39267,
	mov	r2, r4	@ ivtmp.684, pVc1DecParam
	mov	r3, #1	@ k.712,
	beq	.L36	@,
	mov	r3, #2	@ k.712,
	cmp	r3, r1	@ k.712, D.39267
	bge	.L33	@,
	ldr	r7, [r4, #204]	@ temp.689, <variable>.SlcEndMbn
	add	r2, r4, #48	@ ivtmp.684, pVc1DecParam,
	cmp	r5, r7	@ slice_end_mbn.657, temp.689
	bge	.L36	@,
	b	.L33	@
.L37:
	ldr	r9, [r2, #204]	@ temp.689, <variable>.SlcEndMbn
	add	r2, r2, #96	@ ivtmp.684, ivtmp.684,
	cmp	r5, r9	@ slice_end_mbn.657, temp.689
	blt	.L33	@,
	ldr	lr, [ip, #204]	@ temp.689, <variable>.SlcEndMbn
	add	r3, r3, #1	@ k.712, k.712,
	cmp	r5, lr	@ slice_end_mbn.657, temp.689
	blt	.L33	@,
.L36:
	add	r3, r3, #1	@ k.712, k.712,
	add	ip, r2, #48	@ tmp379, ivtmp.684,
	cmp	r3, r1	@ k.712, D.39267
	blt	.L37	@,
.L33:
	cmp	r3, r1	@ k.712, D.39267
	beq	.L93	@,
.L35:
	ldr	r7, [fp, #-56]	@, %sfp
	mov	r9, r3	@ pre.660, k.712
	mov	r1, #0	@ slice_start_mbn.658,
	str	r5, [fp, #-52]	@ slice_end_mbn.657, %sfp
	add	r2, r7, r3, asl #8	@, prephitmp.546,, k.712,
.L31:
	ldr	r7, [r6, #96]	@ <variable>.Phy_addr, <variable>.Phy_addr
	add	r5, r1, r5, asl #16	@, D32.716, slice_start_mbn.658, slice_end_mbn.657,
	ldr	lr, [fp, #-48]	@, %sfp
	add	sl, sl, #1	@ i, i,
	ldr	ip, [r6, #100]	@ <variable>.BitOffset, <variable>.BitOffset
	rsb	r3, lr, r7	@ bit_steam_addr_0.699,, <variable>.Phy_addr
	ldr	r1, [r6, #104]	@ <variable>.Len, <variable>.Len
	and	r7, r3, #15	@ tmp335, bit_steam_addr_0.699,
	bic	lr, r3, #15	@ D32.711, bit_steam_addr_0.699,
	mov	r3, #0	@,
	add	r6, r6, #48	@ ivtmp.679, ivtmp.679,
	add	ip, ip, r7, asl #3	@, tmp337, <variable>.BitOffset, tmp335,
	add	ip, r1, ip, asl #25	@, D32.710, <variable>.Len, tmp337,
	str	ip, [r0, #0]	@ D32.710,* ivtmp.641
	str	lr, [r0, #4]	@ D32.711,
	str	r3, [r0, #8]	@,
	str	r3, [r0, #12]	@,
	str	r5, [r0, #16]	@ D32.716,
	str	r2, [r0, #252]	@ prephitmp.546,
	add	r0, r0, #256	@ ivtmp.641, ivtmp.641,
	ldrb	r1, [r4, #70]	@ zero_extendqisi2	@ D.39267, <variable>.SlcNum
	cmp	r1, sl	@ D.39267, i
	ble	.L44	@,
	movw	ip, #:lower16:77996	@,
	movt	ip, #:upper16:77996	@,
	cmp	sl, #0	@ i,
	ldr	r5, [r4, ip]	@, <variable>.stream_base_addr
	str	r5, [fp, #-48]	@, %sfp
	beq	.L94	@,
.L29:
	add	r5, r9, r9, asl #1	@, tmp315, pre.660, pre.660,
	add	r3, r9, #1	@ j.655, pre.660,
	cmp	r3, r1	@ j.655, D.39267
	mov	r7, r5, asl #4	@ tmp316, tmp315,
	add	r2, r7, r4	@ tmp317, tmp316, pVc1DecParam
	ldr	ip, [r2, #108]	@ temp.694, <variable>.SlcEndMbn
	mov	r5, ip	@ slice_end_mbn.657, temp.694
	bge	.L38	@,
	add	r2, r3, r3, asl #1	@, tmp322, j.655, j.655,
	add	lr, r4, r2, asl #4	@, tmp324, pVc1DecParam, tmp322,
	ldr	r2, [lr, #108]	@ <variable>.SlcEndMbn, <variable>.SlcEndMbn
	cmp	ip, r2	@ temp.694, <variable>.SlcEndMbn
	blt	.L38	@,
	mvn	r2, r3	@ tmp382, j.655
	add	lr, r2, r1	@ tmp381, tmp382, D.39267
	add	r8, r7, #80	@ tmp331, tmp316,
	tst	lr, #1	@ tmp381,
	add	r7, r4, r8	@ tmp332, pVc1DecParam, tmp331
	add	r2, r7, #4	@ ivtmp.626, tmp332,
	beq	.L84	@,
	ldr	r8, [r2, #120]	@ temp.695, <variable>.SlcEndMbn
	add	r3, r3, #1	@ j.655, j.655,
	add	r2, r7, #52	@ ivtmp.626, tmp332,
	cmp	ip, r8	@ temp.694, temp.695
	blt	.L38	@,
.L84:
	mov	r8, r6	@ ivtmp.679, ivtmp.679
	b	.L39	@
.L40:
	ldr	r7, [r2, #120]	@ temp.695, <variable>.SlcEndMbn
	add	r2, r2, #96	@ ivtmp.626, ivtmp.626,
	cmp	ip, r7	@ temp.694, temp.695
	blt	.L87	@,
	ldr	r6, [r6, #120]	@ temp.695, <variable>.SlcEndMbn
	add	r3, r3, #1	@ j.655, j.655,
	cmp	ip, r6	@ temp.694, temp.695
	blt	.L87	@,
.L39:
	add	r3, r3, #1	@ j.655, j.655,
	add	r6, r2, #48	@ tmp385, ivtmp.626,
	cmp	r3, r1	@ j.655, D.39267
	blt	.L40	@,
.L87:
	mov	r6, r8	@ ivtmp.679, ivtmp.679
.L38:
	cmp	r3, r1	@ j.655, D.39267
	ldrne	r1, [fp, #-56]	@, %sfp
	movne	r9, r3	@ pre.660, j.655
	moveq	r2, #0	@ next_slice_para_addr.656,
	addne	r2, r1, r3, asl #8	@, next_slice_para_addr.656,, j.655,
	ldr	r3, [fp, #-52]	@, %sfp
	str	ip, [fp, #-52]	@ temp.694, %sfp
	add	r1, r3, #1	@ slice_start_mbn.658,,
	b	.L31	@
.L93:
	mov	r2, #0	@ prephitmp.546,
	mov	r9, r3	@ pre.660, k.712
	str	r5, [fp, #-52]	@ slice_end_mbn.657, %sfp
	mov	r1, r2	@ slice_start_mbn.658, prephitmp.546
	b	.L31	@
.L91:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #:lower16:.LANCHOR0	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r2, #:upper16:.LANCHOR0	@,
	bl	dprint_vfmw	@
.L44:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L92:
	ldrb	r2, [r4, #70]	@ zero_extendqisi2	@ <variable>.SlcNum, <variable>.SlcNum
	movw	r0, #:lower16:77996	@ tmp261,
	ldr	ip, [r4, #96]	@ prephitmp.556, <variable>.Phy_addr
	movt	r0, #:upper16:77996	@ tmp261,
	cmp	r2, #0	@ <variable>.SlcNum,
	str	ip, [r4, r0]	@ prephitmp.556, <variable>.stream_base_addr
	beq	.L7	@,
	tst	r2, #1	@ <variable>.SlcNum,
	mov	r1, r4	@ ivtmp.608, pVc1DecParam
	mov	r3, #0	@ i.661,
	beq	.L65	@,
.L11:
	ldr	lr, [r1, #88]	@ <variable>.pStream2, <variable>.pStream2
	cmp	lr, #0	@ <variable>.pStream2,
	beq	.L8	@,
	ldr	lr, [r1, #112]	@ D.39261, <variable>.Phy_addr2
	cmp	lr, ip	@ D.39261, prephitmp.556
	bcc	.L86	@,
.L8:
	ldr	lr, [r1, #96]	@ D.39264, <variable>.Phy_addr
	cmp	lr, ip	@ D.39264, prephitmp.556
	bcc	.L86	@,
	add	r3, r3, #1	@ tmp375, i.661,
	add	r1, r1, #48	@ tmp374, ivtmp.608,
	cmp	r3, r2	@ tmp375, <variable>.SlcNum
	bge	.L10	@,
.L95:
	ldr	r5, [r1, #88]	@ <variable>.pStream2, <variable>.pStream2
	ldr	ip, [r4, r0]	@ prephitmp.556, <variable>.stream_base_addr
	cmp	r5, #0	@ <variable>.pStream2,
	beq	.L56	@,
	ldr	lr, [r1, #112]	@ D.39261, <variable>.Phy_addr2
	cmp	lr, ip	@ D.39261, prephitmp.556
	bcc	.L89	@,
.L56:
	ldr	lr, [r1, #96]	@ D.39264, <variable>.Phy_addr
	cmp	lr, ip	@ D.39264, prephitmp.556
	bcs	.L57	@,
.L89:
	str	lr, [r4, r0]	@ D.39261, <variable>.stream_base_addr
.L57:
	add	r3, r3, #1	@ i.661, tmp375,
	add	r1, r1, #48	@ ivtmp.608, tmp374,
	ldr	ip, [r4, r0]	@ prephitmp.556, <variable>.stream_base_addr
	b	.L11	@
.L86:
	add	r3, r3, #1	@ tmp375, i.661,
	str	lr, [r4, r0]	@ D.39264, <variable>.stream_base_addr
	cmp	r3, r2	@ tmp375, <variable>.SlcNum
	add	r1, r1, #48	@ tmp374, ivtmp.608,
	blt	.L95	@,
.L10:
	movw	r0, #:lower16:77996	@ tmp266,
	movt	r0, #:upper16:77996	@ tmp266,
	ldr	ip, [r4, r0]	@ prephitmp.556, <variable>.stream_base_addr
.L7:
	movw	r5, #:lower16:77996	@ tmp267,
	movt	r5, #:upper16:77996	@ tmp267,
	bic	r1, ip, #15	@ tmp268, prephitmp.556,
	mov	r0, #4	@,
	str	r1, [r4, r5]	@ tmp268, <variable>.stream_base_addr
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	ldrb	r3, [r4, #70]	@ zero_extendqisi2	@ temp.678, <variable>.SlcNum
	cmp	r3, #0	@ temp.678,
	beq	.L44	@,
	mov	r2, #0	@,
	mov	r5, r4	@ ivtmp.672, pVc1DecParam
	mov	r8, r2	@ i.670,
	str	r2, [fp, #-52]	@, %sfp
	str	r2, [fp, #-80]	@, %sfp
.L28:
	ldr	ip, [r5, #100]	@, <variable>.BitOffset
	movw	r1, #:lower16:77996	@,
	movt	r1, #:upper16:77996	@,
	ldr	sl, [r5, #88]	@ <variable>.pStream2, <variable>.pStream2
	ldr	lr, [r5, #96]	@ <variable>.Phy_addr, <variable>.Phy_addr
	ldr	r7, [r4, r1]	@ D.39262, <variable>.stream_base_addr
	cmp	sl, #0	@ <variable>.pStream2,
	str	ip, [fp, #-72]	@, %sfp
	ldr	r0, [r5, #104]	@, <variable>.Len
	rsb	lr, r7, lr	@ bit_steam_addr_0, D.39262, <variable>.Phy_addr
	bic	r2, lr, #15	@, bit_steam_addr_0,
	str	r2, [fp, #-48]	@, %sfp
	streq	sl, [fp, #-60]	@ bit_steam_addr_1, %sfp
	str	r0, [fp, #-68]	@, %sfp
	ldrne	sl, [r5, #112]	@ <variable>.Phy_addr2, <variable>.Phy_addr2
	ldrne	r2, [r5, #116]	@ <variable>.BitOffset2, <variable>.BitOffset2
	ldrne	ip, [r5, #120]	@, <variable>.Len2
	rsbne	sl, r7, sl	@ bit_steam_addr_1, D.39262, <variable>.Phy_addr2
	andne	r7, sl, #15	@ tmp275, bit_steam_addr_1,
	streq	sl, [fp, #-64]	@ bit_steam_addr_1, %sfp
	addne	r2, r2, r7, asl #3	@,, <variable>.BitOffset2, tmp275,
	strne	ip, [fp, #-60]	@, %sfp
	strne	r2, [fp, #-64]	@, %sfp
	cmp	r8, #0	@ i.670,
	bne	.L14	@,
	cmp	r3, #1	@ temp.678,
	ldr	r7, [r4, #108]	@ slice_end_mbn, <variable>.SlcEndMbn
	beq	.L96	@,
	movle	r2, #1	@ k,
	ble	.L18	@,
	ldr	r2, [r4, #156]	@ <variable>.SlcEndMbn, <variable>.SlcEndMbn
	cmp	r7, r2	@ slice_end_mbn, <variable>.SlcEndMbn
	movlt	r2, #1	@ k,
	blt	.L20	@,
	tst	r3, #1	@ temp.678,
	mov	r1, r4	@ ivtmp.586, pVc1DecParam
	mov	r2, #1	@ k,
	beq	.L21	@,
	mov	r2, #2	@ k,
	cmp	r2, r3	@ k, temp.678
	bge	.L18	@,
	ldr	r0, [r4, #204]	@ D.39293, <variable>.SlcEndMbn
	add	r1, r4, #48	@ ivtmp.586, pVc1DecParam,
	cmp	r7, r0	@ slice_end_mbn, D.39293
	bge	.L21	@,
	b	.L18	@
.L22:
	ldr	r9, [r1, #204]	@ D.39293, <variable>.SlcEndMbn
	add	r1, r1, #96	@ ivtmp.586, ivtmp.586,
	cmp	r7, r9	@ slice_end_mbn, D.39293
	blt	.L18	@,
	ldr	r9, [r0, #204]	@ D.39293, <variable>.SlcEndMbn
	add	r2, r2, #1	@ k, k,
	cmp	r7, r9	@ slice_end_mbn, D.39293
	blt	.L18	@,
.L21:
	add	r2, r2, #1	@ k, k,
	add	r0, r1, #48	@ tmp364, ivtmp.586,
	cmp	r2, r3	@ k, temp.678
	blt	.L22	@,
.L18:
	cmp	r2, r3	@ k, temp.678
	beq	.L97	@,
.L20:
	ldr	ip, [fp, #-56]	@, %sfp
	mov	r3, #0	@,
	str	r3, [fp, #-76]	@, %sfp
	add	r9, ip, r2, asl #8	@, next_slice_para_addr,, k,
	str	r2, [fp, #-52]	@ k, %sfp
	str	r7, [fp, #-80]	@ slice_end_mbn, %sfp
	mov	r3, r9	@ prephitmp.553, next_slice_para_addr
.L16:
	ldr	ip, [fp, #-72]	@, %sfp
	and	r2, lr, #15	@ tmp302, bit_steam_addr_0,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC2	@,
	add	lr, ip, r2, asl #3	@, tmp304,, tmp302,
	ldr	ip, [fp, #-68]	@, %sfp
	movt	r1, #:upper16:.LC2	@,
	add	r8, r8, #1	@ i.670, i.670,
	add	r2, ip, lr, asl #25	@, D32,, tmp304,
	str	r2, [r6, #0]	@ D32,* ivtmp.590
	str	r3, [fp, #-84]	@,
	bl	dprint_vfmw	@
	ldr	r2, [fp, #-48]	@, %sfp
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC3	@,
	movt	r1, #:upper16:.LC3	@,
	add	r5, r5, #48	@ ivtmp.672, ivtmp.672,
	str	r2, [r6, #4]	@,
	ldr	r2, [fp, #-48]	@, %sfp
	bl	dprint_vfmw	@
	ldr	ip, [fp, #-64]	@, %sfp
	ldr	r3, [fp, #-60]	@, %sfp
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC4	@,
	add	r2, r3, ip, asl #25	@, D32.677,,,
	str	r2, [r6, #8]	@ D32.677,
	bl	dprint_vfmw	@
	str	sl, [r6, #12]	@ bit_steam_addr_1,
	mov	r2, sl	@, bit_steam_addr_1
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC5	@,
	movt	r1, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	ldr	r1, [fp, #-76]	@, %sfp
	mov	r0, #4	@,
	add	r2, r1, r7, asl #16	@, D32.683,, slice_end_mbn,
	movw	r1, #:lower16:.LC6	@,
	str	r2, [r6, #16]	@ D32.683,
	movt	r1, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	ldr	r0, [fp, #-84]	@,
	mov	r2, r9	@, next_slice_para_addr
	movw	r1, #:lower16:.LC7	@,
	movt	r1, #:upper16:.LC7	@,
	str	r0, [r6, #252]	@ prephitmp.553,
	mov	r0, #4	@,
	bl	dprint_vfmw	@
	ldrb	r3, [r4, #70]	@ zero_extendqisi2	@ temp.678, <variable>.SlcNum
	add	r6, r6, #256	@ ivtmp.590, ivtmp.590,
	cmp	r3, r8	@ temp.678, i.670
	bgt	.L28	@,
	b	.L44	@
.L65:
	ldr	r1, [r4, #88]	@ <variable>.pStream2, <variable>.pStream2
	cmp	r1, #0	@ <variable>.pStream2,
	beq	.L53	@,
	ldr	r3, [r4, #112]	@ D.39261, <variable>.Phy_addr2
	cmp	r3, ip	@ D.39261, prephitmp.556
	bcs	.L53	@,
.L88:
	str	r3, [r4, r0]	@ D.39261, <variable>.stream_base_addr
.L54:
	mov	r3, #1	@ i.661,
	cmp	r3, r2	@ i.661, <variable>.SlcNum
	add	r1, r4, #48	@ ivtmp.608, pVc1DecParam,
	bge	.L10	@,
	ldr	ip, [r4, r0]	@ prephitmp.556, <variable>.stream_base_addr
	b	.L11	@
.L14:
	ldr	r2, [fp, #-52]	@, %sfp
	add	r0, r2, r2, asl #1	@, tmp283,,,
	add	r2, r2, #1	@ j,,
	cmp	r2, r3	@ j, temp.678
	mov	r1, r0, asl #4	@ tmp284, tmp283,
	add	r7, r1, r4	@ tmp285, tmp284, pVc1DecParam
	ldr	r0, [r7, #108]	@ D.39304, <variable>.SlcEndMbn
	mov	r7, r0	@ slice_end_mbn, D.39304
	bge	.L23	@,
	add	ip, r2, r2, asl #1	@, tmp290, j, j,
	add	ip, r4, ip, asl #4	@, tmp292, pVc1DecParam, tmp290,
	ldr	ip, [ip, #108]	@ <variable>.SlcEndMbn, <variable>.SlcEndMbn
	cmp	r0, ip	@ D.39304, <variable>.SlcEndMbn
	blt	.L23	@,
	mvn	ip, r2	@ tmp367, j
	add	ip, ip, r3	@ tmp366, tmp367, temp.678
	add	r1, r1, #80	@ tmp299, tmp284,
	tst	ip, #1	@ tmp366,
	add	ip, r4, r1	@ tmp300, pVc1DecParam, tmp299
	add	r1, ip, #4	@ ivtmp.581, tmp300,
	beq	.L24	@,
	ldr	r9, [r1, #120]	@ D.39308, <variable>.SlcEndMbn
	add	r2, r2, #1	@ j, j,
	add	r1, ip, #52	@ ivtmp.581, tmp300,
	cmp	r0, r9	@ D.39304, D.39308
	bge	.L24	@,
	b	.L23	@
.L25:
	ldr	r9, [r1, #120]	@ D.39308, <variable>.SlcEndMbn
	add	r1, r1, #96	@ ivtmp.581, ivtmp.581,
	cmp	r0, r9	@ D.39304, D.39308
	blt	.L23	@,
	ldr	ip, [ip, #120]	@ D.39308, <variable>.SlcEndMbn
	add	r2, r2, #1	@ j, j,
	cmp	r0, ip	@ D.39304, D.39308
	blt	.L23	@,
.L24:
	add	r2, r2, #1	@ j, j,
	add	ip, r1, #48	@ tmp369, ivtmp.581,
	cmp	r3, r2	@ temp.678, j
	bgt	.L25	@,
.L23:
	cmp	r2, r3	@ j, temp.678
	strne	r2, [fp, #-52]	@ j, %sfp
	ldrne	r3, [fp, #-56]	@, %sfp
	moveq	r9, #0	@ next_slice_para_addr,
	addne	r9, r3, r2, asl #8	@, next_slice_para_addr,, j,
	ldr	r2, [fp, #-80]	@, %sfp
	str	r0, [fp, #-80]	@ D.39304, %sfp
	add	r3, r2, #1	@,,
	str	r3, [fp, #-76]	@, %sfp
	mov	r3, r9	@ prephitmp.553, next_slice_para_addr
	b	.L16	@
.L96:
	str	r7, [fp, #-80]	@ slice_end_mbn, %sfp
	mov	r3, r8	@ prephitmp.553, i.670
	str	r8, [fp, #-76]	@ i.670, %sfp
	mov	r9, r8	@ next_slice_para_addr, i.670
	b	.L16	@
.L97:
	mov	r3, #0	@ prephitmp.553,
	str	r2, [fp, #-52]	@ k, %sfp
	str	r7, [fp, #-80]	@ slice_end_mbn, %sfp
	mov	r9, r3	@ next_slice_para_addr, prephitmp.553
	str	r3, [fp, #-76]	@ prephitmp.553, %sfp
	b	.L16	@
.L53:
	ldr	r3, [r4, #96]	@ D.39264, <variable>.Phy_addr
	cmp	r3, ip	@ D.39264, prephitmp.556
	bcs	.L54	@,
	b	.L88	@
	.fnend
	.size	VC1HAL_V300R001_CfgSliceMsg, .-VC1HAL_V300R001_CfgSliceMsg
	.align	2
	.global	VC1HAL_V300R001_CfgDnMsg
	.type	VC1HAL_V300R001_CfgDnMsg, %function
VC1HAL_V300R001_CfgDnMsg:
	.fnstart
.LFB1532:
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
	mov	r5, r0	@ pVc1DecParam, pVc1DecParam
	ldr	r0, [r1, #48]	@, <variable>.MsgSlotAddr
	mov	r6, r1	@ pHwMem, pHwMem
	bl	MEM_Phy2Vir	@
	subs	r3, r0, #0	@ D.39548,
	beq	.L103	@,
	ldrb	ip, [r5, #5]	@ zero_extendqisi2	@ <variable>.fcm, <variable>.fcm
	mov	r4, #0	@ tmp235,
	ldrb	r7, [r5, #4]	@ zero_extendqisi2	@ <variable>.profile, <variable>.profile
	ldrb	r1, [r5, #3]	@ zero_extendqisi2	@ <variable>.ptype, <variable>.ptype
	mov	r0, ip, asl #14	@ tmp236, <variable>.fcm,
	and	r2, r0, #49152	@ tmp240, tmp236,
	bfi	r2, r7, #4, #2	@ tmp240, <variable>.profile,,
	bfi	r2, r1, #0, #2	@ tmp244, <variable>.ptype,,
	str	r2, [r3, #0]	@ tmp244,* D.39548
	ldrh	lr, [r5, #80]	@, <variable>.mbheight
	ldrh	ip, [r5, #78]	@, <variable>.mbwidth
	str	r4, [fp, #-32]	@ tmp235, D32
	strb	lr, [fp, #-30]	@ <variable>.mbheight, <variable>.bits.mbheight
	strb	ip, [fp, #-32]	@ <variable>.mbwidth, <variable>.bits.mbwidth
	ldr	r0, [fp, #-32]	@ D32.754, D32
	str	r0, [r3, #4]	@ D32.754,
	ldrb	r7, [r5, #8]	@ zero_extendqisi2	@ <variable>.curparity, <variable>.curparity
	ldrb	r1, [r5, #6]	@ zero_extendqisi2	@ <variable>.loopfilter, <variable>.loopfilter
	ldrb	lr, [r5, #9]	@ zero_extendqisi2	@ <variable>.numref, <variable>.numref
	mov	r2, r7, asl #2	@ tmp256, <variable>.curparity,
	ldrb	ip, [r5, #7]	@ zero_extendqisi2	@ <variable>.issecondfld, <variable>.issecondfld
	and	r7, r2, #4	@ tmp260, tmp256,
	ldrb	r0, [r5, #10]	@ zero_extendqisi2	@ <variable>.fwd_fcm, <variable>.fwd_fcm
	bfi	r7, r1, #0, #1	@ tmp260, <variable>.loopfilter,,
	ldrb	r1, [r5, #11]	@ zero_extendqisi2	@ <variable>.bwd_fcm, <variable>.bwd_fcm
	bfi	r7, lr, #3, #1	@ tmp264, <variable>.numref,,
	bfi	r7, ip, #1, #1	@ tmp268, <variable>.issecondfld,,
	bfi	r7, r0, #4, #2	@ tmp272, <variable>.fwd_fcm,,
	bfi	r7, r1, #6, #2	@ tmp276, <variable>.bwd_fcm,,
	str	r7, [r3, #8]	@ tmp276,
	ldrb	r2, [r5, #15]	@ zero_extendqisi2	@ <variable>.condover, <variable>.condover
	ldrb	ip, [r5, #13]	@ zero_extendqisi2	@ <variable>.fastuvmc, <variable>.fastuvmc
	ldrb	r0, [r5, #14]	@ zero_extendqisi2	@ <variable>.overlap, <variable>.overlap
	mov	r1, r2, asl #4	@ tmp281, <variable>.condover,
	ldrb	lr, [r5, #12]	@ zero_extendqisi2	@ <variable>.rndctrl, <variable>.rndctrl
	and	r7, r1, #48	@ tmp285, tmp281,
	bfi	r7, ip, #1, #1	@ tmp285, <variable>.fastuvmc,,
	bfi	r7, r0, #2, #1	@ tmp289, <variable>.overlap,,
	bfi	r7, lr, #0, #1	@ tmp293, <variable>.rndctrl,,
	str	r7, [r3, #12]	@ tmp293,
	ldrb	r2, [r5, #18]	@ zero_extendqisi2	@ <variable>.altpquant, <variable>.altpquant
	ldrb	ip, [r5, #19]	@ zero_extendqisi2	@ <variable>.halfqp, <variable>.halfqp
	ldrb	r0, [r5, #17]	@ zero_extendqisi2	@ <variable>.pqindex, <variable>.pqindex
	mov	r1, r2, asl #16	@ tmp298, <variable>.altpquant,
	ldrb	lr, [r5, #16]	@ zero_extendqisi2	@ <variable>.pquant, <variable>.pquant
	and	r7, r1, #2031616	@ tmp302, tmp298,
	bfi	r7, ip, #24, #1	@ tmp302, <variable>.halfqp,,
	bfi	r7, r0, #8, #5	@ tmp306, <variable>.pqindex,,
	bfi	r7, lr, #0, #5	@ tmp310, <variable>.pquant,,
	str	r7, [r3, #16]	@ tmp310,
	ldrb	r2, [r5, #20]	@ zero_extendqisi2	@ <variable>.buniform, <variable>.buniform
	ldrb	r1, [r5, #24]	@ zero_extendqisi2	@ <variable>.dqbilevel, <variable>.dqbilevel
	ldrb	r0, [r5, #23]	@ zero_extendqisi2	@ <variable>.dqprofile, <variable>.dqprofile
	and	r2, r2, #1	@ tmp319, <variable>.buniform,
	ldrb	lr, [r5, #22]	@ zero_extendqisi2	@ <variable>.dquant, <variable>.dquant
	bfi	r2, r1, #12, #1	@ tmp319, <variable>.dqbilevel,,
	ldrb	ip, [r5, #25]	@ zero_extendqisi2	@ <variable>.dquantfrm, <variable>.dquantfrm
	bfi	r2, r0, #8, #2	@ tmp323, <variable>.dqprofile,,
	ldrb	r7, [r5, #26]	@ zero_extendqisi2	@ <variable>.quantmode, <variable>.quantmode
	bfi	r2, lr, #2, #2	@ tmp327, <variable>.dquant,,
	ldrb	r1, [r5, #21]	@ zero_extendqisi2	@ <variable>.usealtqp, <variable>.usealtqp
	bfi	r2, ip, #14, #1	@ tmp331, <variable>.dquantfrm,,
	bfi	r2, r7, #16, #4	@ tmp335, <variable>.quantmode,,
	bfi	r2, r1, #1, #1	@ tmp339, <variable>.usealtqp,,
	str	r2, [r3, #20]	@ tmp339,
	ldrb	lr, [r5, #27]	@ zero_extendqisi2	@ <variable>.mvmode, <variable>.mvmode
	ldrb	ip, [r5, #28]	@ zero_extendqisi2	@ <variable>.mvmode2, <variable>.mvmode2
	and	r0, lr, #7	@ tmp348, <variable>.mvmode,
	bfi	r0, ip, #4, #2	@ tmp348, <variable>.mvmode2,,
	str	r0, [r3, #24]	@ tmp348,
	ldrb	r7, [r5, #34]	@ zero_extendqisi2	@ <variable>.reffiled, <variable>.reffiled
	ldrb	r1, [r5, #33]	@ zero_extendqisi2	@ <variable>.dmvrange, <variable>.dmvrange
	ldrb	lr, [r5, #30]	@ zero_extendqisi2	@ <variable>.colishalfpel, <variable>.colishalfpel
	mov	r2, r7, asl #14	@ tmp353, <variable>.reffiled,
	ldrb	ip, [r5, #29]	@ zero_extendqisi2	@ <variable>.curishalfpel, <variable>.curishalfpel
	and	r7, r2, #16384	@ tmp357, tmp353,
	ldrb	r0, [r5, #31]	@ zero_extendqisi2	@ <variable>.mvrange, <variable>.mvrange
	bfi	r7, r1, #12, #2	@ tmp357, <variable>.dmvrange,,
	ldrb	r1, [r5, #32]	@ zero_extendqisi2	@ <variable>.refdist, <variable>.refdist
	bfi	r7, lr, #1, #1	@ tmp361, <variable>.colishalfpel,,
	bfi	r7, ip, #0, #1	@ tmp365, <variable>.curishalfpel,,
	bfi	r7, r0, #2, #2	@ tmp369, <variable>.mvrange,,
	bfi	r7, r1, #4, #5	@ tmp373, <variable>.refdist,,
	str	r7, [r3, #28]	@ tmp373,
	ldrb	r2, [r5, #35]	@ zero_extendqisi2	@ <variable>.transdctab, <variable>.transdctab
	ldrb	lr, [r5, #36]	@ zero_extendqisi2	@ <variable>.vstransform, <variable>.vstransform
	ldrb	r1, [r5, #37]	@ zero_extendqisi2	@ <variable>.ttmbf, <variable>.ttmbf
	and	r7, r2, #1	@ tmp382, <variable>.transdctab,
	ldrb	ip, [r5, #38]	@ zero_extendqisi2	@ <variable>.transacfrm, <variable>.transacfrm
	bfi	r7, lr, #1, #1	@ tmp382, <variable>.vstransform,,
	ldrb	r0, [r5, #39]	@ zero_extendqisi2	@ <variable>.transacfrm2, <variable>.transacfrm2
	bfi	r7, r1, #2, #1	@ tmp386, <variable>.ttmbf,,
	ldrb	lr, [r5, #40]	@ zero_extendqisi2	@ <variable>.ttfrm, <variable>.ttfrm
	bfi	r7, ip, #4, #2	@ tmp390, <variable>.transacfrm,,
	bfi	r7, r0, #6, #2	@ tmp394, <variable>.transacfrm2,,
	bfi	r7, lr, #8, #2	@ tmp398, <variable>.ttfrm,,
	str	r7, [r3, #32]	@ tmp398,
	ldrb	r0, [r5, #46]	@ zero_extendqisi2	@ <variable>.acpredmodeisskipraw, <variable>.acpredmodeisskipraw
	ldrb	r1, [r5, #42]	@ zero_extendqisi2	@ <variable>.directmbmodeisskipraw, <variable>.directmbmodeisskipraw
	ldrb	r7, [r5, #44]	@ zero_extendqisi2	@ <variable>.fieldtxmodeisskipraw, <variable>.fieldtxmodeisskipraw
	mov	r2, r0, asl #5	@ tmp403, <variable>.acpredmodeisskipraw,
	ldrb	lr, [r5, #41]	@ zero_extendqisi2	@ <variable>.forwardmbmodeisskipraw, <variable>.forwardmbmodeisskipraw
	and	r2, r2, #32	@ tmp407, tmp403,
	ldrb	ip, [r5, #43]	@ zero_extendqisi2	@ <variable>.mvtypembmodeisskipraw, <variable>.mvtypembmodeisskipraw
	bfi	r2, r1, #1, #1	@ tmp407, <variable>.directmbmodeisskipraw,,
	ldrb	r0, [r5, #47]	@ zero_extendqisi2	@ <variable>.overflagsmodeisskipraw, <variable>.overflagsmodeisskipraw
	bfi	r2, r7, #3, #1	@ tmp411, <variable>.fieldtxmodeisskipraw,,
	ldrb	r1, [r5, #45]	@ zero_extendqisi2	@ <variable>.skipmbmodeisskipraw, <variable>.skipmbmodeisskipraw
	bfi	r2, lr, #0, #1	@ tmp415, <variable>.forwardmbmodeisskipraw,,
	bfi	r2, ip, #2, #1	@ tmp419, <variable>.mvtypembmodeisskipraw,,
	bfi	r2, r0, #6, #1	@ tmp423, <variable>.overflagsmodeisskipraw,,
	bfi	r2, r1, #4, #1	@ tmp427, <variable>.skipmbmodeisskipraw,,
	str	r2, [r3, #36]	@ tmp427,
	ldrb	r2, [r5, #50]	@ zero_extendqisi2	@ <variable>.bfraction, <variable>.bfraction
	ldrb	r0, [r5, #49]	@ zero_extendqisi2	@ <variable>.cbptab, <variable>.cbptab
	ldrb	ip, [r5, #48]	@ zero_extendqisi2	@ <variable>.mvtab, <variable>.mvtab
	mov	r1, r2, asl #16	@ tmp432, <variable>.bfraction,
	and	lr, r1, #8323072	@ tmp436, tmp432,
	bfi	lr, r0, #8, #3	@ tmp436, <variable>.cbptab,,
	bfi	lr, ip, #0, #3	@ tmp440, <variable>.mvtab,,
	str	lr, [r3, #40]	@ tmp440,
	ldrb	r2, [r5, #53]	@ zero_extendqisi2	@ <variable>.fourmvbptab, <variable>.fourmvbptab
	ldrb	ip, [r5, #54]	@ zero_extendqisi2	@ <variable>.fourmvswtich, <variable>.fourmvswtich
	ldrb	r0, [r5, #51]	@ zero_extendqisi2	@ <variable>.mbmodetab, <variable>.mbmodetab
	mov	r1, r2, asl #8	@ tmp445, <variable>.fourmvbptab,
	ldrb	lr, [r5, #52]	@ zero_extendqisi2	@ <variable>.twomvbptab, <variable>.twomvbptab
	and	r2, r1, #768	@ tmp449, tmp445,
	movw	r1, #12372	@ tmp463,
	bfi	r2, ip, #12, #1	@ tmp449, <variable>.fourmvswtich,,
	bfi	r2, r0, #0, #3	@ tmp453, <variable>.mbmodetab,,
	movw	r0, #12380	@ tmp471,
	bfi	r2, lr, #4, #2	@ tmp457, <variable>.twomvbptab,,
	str	r2, [r3, #44]	@ tmp457,
	ldr	lr, [r5, r1]	@ <variable>.ScaleFactor, <variable>.ScaleFactor
	movw	r2, #12376	@ tmp467,
	str	lr, [r3, #48]	@ <variable>.ScaleFactor,
	ldr	ip, [r5, r2]	@ <variable>.FRFD, <variable>.FRFD
	str	ip, [r3, #52]	@ <variable>.FRFD,
	ldr	r1, [r5, r0]	@ <variable>.BRFD, <variable>.BRFD
	str	r1, [r3, #56]	@ <variable>.BRFD,
	ldrb	lr, [r5, #55]	@ zero_extendqisi2	@ <variable>.rangemapyflag, <variable>.rangemapyflag
	ldrb	ip, [r5, #56]	@ zero_extendqisi2	@ <variable>.rangemapy, <variable>.rangemapy
	ldrb	r0, [r5, #57]	@ zero_extendqisi2	@ <variable>.rangemapuvflag, <variable>.rangemapuvflag
	mov	r2, lr, asl #20	@ tmp474, <variable>.rangemapyflag,
	ldrb	r1, [r5, #58]	@ zero_extendqisi2	@ <variable>.rangemapuv, <variable>.rangemapuv
	and	lr, r2, #1048576	@ tmp478, tmp474,
	bfi	lr, ip, #21, #3	@ tmp478, <variable>.rangemapy,,
	bfi	lr, r0, #24, #1	@ tmp482, <variable>.rangemapuvflag,,
	movw	r0, #12388	@ tmp498,
	bfi	lr, r1, #25, #3	@ tmp486, <variable>.rangemapuv,,
	str	lr, [fp, #-32]	@ tmp486,
	ldrh	r1, [r5, #72]	@, <variable>.totalslicenum
	movw	lr, #12384	@ tmp494,
	strh	r1, [fp, #-32]	@ movhi	@, <variable>.bits.totalslicenum
	ldr	r2, [fp, #-32]	@ D32.782, D32
	str	r2, [r3, #60]	@ D32.782,
	movw	r2, #12392	@ tmp502,
	ldr	ip, [r5, lr]	@ <variable>.CurFrmImgLuma2dPhyAddr, <variable>.CurFrmImgLuma2dPhyAddr
	str	ip, [r3, #64]	@ <variable>.CurFrmImgLuma2dPhyAddr,
	movw	ip, #12396	@ tmp506,
	ldr	r1, [r5, r0]	@ <variable>.FwdRefAddr, <variable>.FwdRefAddr
	str	r1, [r3, #68]	@ <variable>.FwdRefAddr,
	movw	r1, #12400	@ tmp510,
	ldr	lr, [r5, r2]	@ <variable>.BwdRefAddr, <variable>.BwdRefAddr
	str	lr, [r3, #72]	@ <variable>.BwdRefAddr,
	ldr	r0, [r5, ip]	@ <variable>.CurrColmbAddr, <variable>.CurrColmbAddr
	str	r0, [r3, #76]	@ <variable>.CurrColmbAddr,
	ldr	r2, [r5, r1]	@ <variable>.BwdColmbAddr, <variable>.BwdColmbAddr
	str	r2, [r3, #80]	@ <variable>.BwdColmbAddr,
	ldr	lr, [r6, #1136]	@ <variable>.SedTopAddr, <variable>.SedTopAddr
	str	lr, [r3, #84]	@ <variable>.SedTopAddr,
	ldr	ip, [r6, #1140]	@ <variable>.PmvTopAddr, <variable>.PmvTopAddr
	str	ip, [r3, #88]	@ <variable>.PmvTopAddr,
	ldr	r0, [r6, #1148]	@ <variable>.ItransTopAddr, <variable>.ItransTopAddr
	str	r0, [r3, #92]	@ <variable>.ItransTopAddr,
	ldr	r1, [r6, #1152]	@ <variable>.DblkTopAddr, <variable>.DblkTopAddr
	str	r1, [r3, #96]	@ <variable>.DblkTopAddr,
	ldr	r2, [r6, #1168]	@ <variable>.IntensityConvTabAddr, <variable>.IntensityConvTabAddr
	str	r2, [r3, #104]	@ <variable>.IntensityConvTabAddr,
	ldrh	lr, [r5, #74]	@, <variable>.DispPicWidth
	strh	lr, [fp, #-32]	@ movhi	@, <variable>.bits.DispPicWidth
	ldrh	ip, [r5, #76]	@, <variable>.DispPicHeight
	strh	ip, [fp, #-30]	@ movhi	@, <variable>.bits.DispPicHeight
	ldr	r0, [fp, #-32]	@ D32.804, D32
	str	r0, [r3, #108]	@ D32.804,
	ldrb	r1, [r5, #63]	@ zero_extendqisi2	@ <variable>.CodecVersion, <variable>.CodecVersion
	ldrb	lr, [r5, #59]	@ zero_extendqisi2	@ <variable>.RANGEREDFRM, <variable>.RANGEREDFRM
	ldrb	ip, [r5, #60]	@ zero_extendqisi2	@ <variable>.RANGEREDFRM0, <variable>.RANGEREDFRM0
	mov	r2, r1, asl #25	@ tmp533, <variable>.CodecVersion,
	ldrb	r0, [r5, #61]	@ zero_extendqisi2	@ <variable>.RANGEREDFRM1, <variable>.RANGEREDFRM1
	and	r2, r2, #234881024	@ tmp537, tmp533,
	ldrb	r1, [r5, #62]	@ zero_extendqisi2	@ <variable>.PostCresent, <variable>.PostCresent
	bfi	r2, lr, #20, #1	@ tmp537, <variable>.RANGEREDFRM,,
	movw	lr, #12408	@ tmp559,
	bfi	r2, ip, #21, #1	@ tmp541, <variable>.RANGEREDFRM0,,
	bfi	r2, r0, #22, #1	@ tmp545, <variable>.RANGEREDFRM1,,
	movw	r0, #12404	@ tmp555,
	bfi	r2, r1, #24, #1	@ tmp549, <variable>.PostCresent,,
	str	r2, [r3, #112]	@ tmp549,
	ldr	r2, [r5, r0]	@ <variable>.BPD_STRIDE, <variable>.BPD_STRIDE
	movw	r1, #12412	@ tmp563,
	str	r2, [r3, #116]	@ <variable>.BPD_STRIDE,
	mov	r2, #12416	@ tmp567,
	ldr	ip, [r5, lr]	@ <variable>.MVTYPEMB_ADDR, <variable>.MVTYPEMB_ADDR
	str	ip, [r3, #120]	@ <variable>.MVTYPEMB_ADDR,
	movw	ip, #12420	@ tmp571,
	ldr	r0, [r5, r1]	@ <variable>.SKIPMB_ADDR, <variable>.SKIPMB_ADDR
	str	r0, [r3, #124]	@ <variable>.SKIPMB_ADDR,
	movw	r0, #12424	@ tmp575,
	ldr	lr, [r5, r2]	@ <variable>.DIRECTMB_ADDR, <variable>.DIRECTMB_ADDR
	str	lr, [r3, #128]	@ <variable>.DIRECTMB_ADDR,
	movw	lr, #12428	@ tmp579,
	ldr	r1, [r5, ip]	@ <variable>.ACPRED_ADDR, <variable>.ACPRED_ADDR
	str	r1, [r3, #132]	@ <variable>.ACPRED_ADDR,
	movw	r1, #12432	@ tmp583,
	ldr	r2, [r5, r0]	@ <variable>.OVERFLAGS_ADDR, <variable>.OVERFLAGS_ADDR
	str	r2, [r3, #136]	@ <variable>.OVERFLAGS_ADDR,
	ldr	ip, [r5, lr]	@ <variable>.FIELDTX_ADDR, <variable>.FIELDTX_ADDR
	str	ip, [r3, #140]	@ <variable>.FIELDTX_ADDR,
	ldr	r0, [r5, r1]	@ <variable>.FORWARDMB_ADDR, <variable>.FORWARDMB_ADDR
	str	r0, [r3, #144]	@ <variable>.FORWARDMB_ADDR,
	ldr	r2, [r6, #52]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	str	r2, [fp, #-32]	@ <variable>.MsgSlotAddr, <variable>.bits.SliceInfoPhyAddr
	str	r2, [r3, #252]	@ <variable>.MsgSlotAddr,
	ldr	r0, [r6, #1168]	@, <variable>.IntensityConvTabAddr
	bl	MEM_Phy2Vir	@
	cmp	r0, r4	@,
	beq	.L104	@,
	ldr	r1, [r5, #64]	@, <variable>.pIntensityConvertTab
	mov	r2, #3072	@,
	bl	memcpy	@
	mov	r0, r4	@ D.39552, tmp235
.L100:
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L103:
	movw	r1, #:lower16:.LC0	@,
	ldr	r2, .L105	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39552,
	b	.L100	@
.L104:
	movw	r1, #:lower16:.LC8	@,
	ldr	r2, .L105	@,
	movt	r1, #:upper16:.LC8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39552,
	b	.L100	@
.L106:
	.align	2
.L105:
	.word	.LANCHOR0+28
	.fnend
	.size	VC1HAL_V300R001_CfgDnMsg, .-VC1HAL_V300R001_CfgDnMsg
	.align	2
	.global	VC1HAL_V300R001_CfgReg
	.type	VC1HAL_V300R001_CfgReg, %function
VC1HAL_V300R001_CfgReg:
	.fnstart
.LFB1531:
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
	subs	r5, r2, #0	@ VdhId, VdhId
	mov	r4, r0	@ pVc1DecParam, pVc1DecParam
	ble	.L124	@,
	ldr	r2, .L128	@,
	mov	r3, r5	@, VdhId
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC9	@,
	mov	r6, #1	@ tmp212,
	str	r6, [sp, #0]	@ tmp212,
	bl	dprint_vfmw	@
	ldr	r2, .L128	@,
	mov	r3, r5	@, VdhId
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC9	@,
	str	r6, [sp, #0]	@ tmp212,
	bl	dprint_vfmw	@
	ldr	r2, .L128	@,
	mov	r3, r5	@, VdhId
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC9	@,
	str	r6, [sp, #0]	@ tmp212,
	bl	dprint_vfmw	@
	ldr	r2, .L128	@,
	mov	r3, r5	@, VdhId
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC9	@,
	str	r6, [sp, #0]	@ tmp212,
	bl	dprint_vfmw	@
	ldr	r2, .L128	@,
	mov	r3, r5	@, VdhId
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC9	@,
	str	r6, [sp, #0]	@ tmp212,
	bl	dprint_vfmw	@
	movw	r1, #:lower16:.LC9	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC9	@,
	ldr	r2, .L128	@,
	mov	r3, r5	@, VdhId
	str	r6, [sp, #0]	@ tmp212,
	bl	dprint_vfmw	@
.L109:
	ldrh	r1, [r4, #78]	@ <variable>.mbwidth, <variable>.mbwidth
	movw	r0, #:lower16:96016	@ tmp348,
	movt	r0, #:upper16:96016	@ tmp348,
	movw	r3, #30480	@ tmp346,
	cmp	r1, #256	@ <variable>.mbwidth,
	movhi	r1, r3	@ D32, tmp346
	movls	r1, r0	@ D32, tmp348
	cmp	r5, #0	@ VdhId,
	bne	.L125	@,
	movw	r2, #:lower16:s_RegPhyBaseAddr	@ tmp229,
	movt	r2, #:upper16:s_RegPhyBaseAddr	@ tmp229,
	ldr	lr, [r2, #0]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, lr, #4	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
.L115:
	movw	r6, #1208	@ tmp241,
	movw	r3, #:lower16:g_HwMem	@ tmp345,
	mul	r2, r6, r5	@ tmp240, tmp241, VdhId
	movt	r3, #:upper16:g_HwMem	@ tmp345,
	movw	r8, #:lower16:3148803	@ tmp244,
	movt	r8, #:upper16:3148803	@ tmp244,
	movw	ip, #:lower16:78000	@ tmp281,
	movt	ip, #:upper16:78000	@ tmp281,
	movw	r0, #:lower16:78040	@ tmp282,
	movw	r6, #2047	@ tmp285,
	movt	r0, #:upper16:78040	@ tmp282,
	ldr	r7, [r2, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r8, [r7, #60]	@ tmp244,
	ldr	r7, [r2, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r8, [r7, #64]	@ tmp244,
	ldr	r7, [r2, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r8, [r7, #68]	@ tmp244,
	ldr	r7, [r2, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r8, [r7, #72]	@ tmp244,
	ldr	r7, [r2, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r8, [r7, #76]	@ tmp244,
	ldr	r7, [r2, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r8, [r7, #80]	@ tmp244,
	ldr	r1, [r2, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r8, [r1, #84]	@ tmp244,
	ldrh	r1, [r4, #74]	@ D.39473, <variable>.DispPicWidth
	ldr	r8, [r4, ip]	@ D.39472, <variable>.VahbStride
	sub	r2, r1, #1	@ tmp283, D.39473,
	uxth	r7, r2	@ tmp284, tmp283
	str	r8, [r4, r0]	@ D.39472, <variable>.ystride_1d
	cmp	r7, r6	@ tmp284, tmp285
	bhi	.L126	@,
.L118:
	mov	ip, #16	@ level,
.L120:
	ldrh	r0, [r4, #76]	@ <variable>.DispPicHeight, <variable>.DispPicHeight
	add	r8, ip, r8, lsr #4	@, tmp304, level, D.39472,
	movw	r1, #1208	@ tmp308,
	movw	r2, #:lower16:78044	@ tmp298,
	add	r6, r0, #31	@ tmp300, <variable>.DispPicHeight,
	movt	r2, #:upper16:78044	@ tmp298,
	mul	r5, r1, r5	@ tmp307, tmp308, VdhId
	mov	r7, r6, asr #5	@ tmp301, tmp300,
	movw	r0, #:lower16:78036	@ tmp311,
	movt	r0, #:upper16:78036	@ tmp311,
	mov	r6, r7, asl #5	@ tmp302, tmp301,
	movw	r1, #:lower16:78040	@ tmp317,
	ldr	r7, [r4, r0]	@ D.39503, <variable>.ystaddr_1d
	movt	r1, #:upper16:78040	@ tmp317,
	mul	r6, r8, r6	@ tmp305, tmp304, tmp302
	mov	r0, #0	@ D.39436,
	str	r6, [r4, r2]	@ tmp305, <variable>.uvoffset_1d
	ldr	r6, [r5, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r7, [r6, #96]	@ D.39503,
	ldr	r6, [r4, r1]	@ D.39510, <variable>.ystride_1d
	ldr	r1, [r5, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r6, [r1, #100]	@ D.39510,
	ldr	r1, [r4, r2]	@ D.39517, <variable>.uvoffset_1d
	ldr	r2, [r5, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r1, [r2, #104]	@ D.39517,
	ldr	r2, [r5, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldrb	r1, [r4, #69]	@ zero_extendqisi2	@ D.39524, <variable>.ff_apt_en
	str	r1, [r2, #152]	@ D.39524,
	ldr	r2, [r5, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldrb	r1, [r4, #68]	@ zero_extendqisi2	@ D.39531, <variable>.ref_pic_type
	str	r1, [r2, #148]	@ D.39531,
	ldrh	r2, [r4, #76]	@ <variable>.DispPicHeight, <variable>.DispPicHeight
	ldr	r3, [r5, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	add	r1, r2, #31	@ tmp340, <variable>.DispPicHeight,
	mov	r2, r1, asr #5	@ tmp341, tmp340,
	mov	r1, r2, asl #5	@ tmp342, tmp341,
	mul	ip, ip, r1	@ D32.898, level, tmp342
	str	ip, [r3, #108]	@ D32.898,
.L117:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L125:
	cmp	r5, #1	@ VdhId,
	beq	.L127	@,
	cmp	r5, #0	@ VdhId,
	ble	.L115	@,
	b	.L116	@
.L126:
	sub	r7, r1, #2048	@ tmp286, D.39473,
	sub	r2, r7, #1	@ tmp286, tmp286,
	uxth	r0, r2	@ tmp288, tmp286
	cmp	r0, r6	@ tmp288, tmp285
	movls	ip, #32	@ level,
	bls	.L120	@,
	sub	r7, r1, #4096	@ tmp290, D.39473,
	sub	r2, r7, #1	@ tmp290, tmp290,
	uxth	r0, r2	@ tmp292, tmp290
	cmp	r0, r6	@ tmp292, tmp285
	movls	ip, #48	@ level,
	bls	.L120	@,
	sub	r2, r1, #6144	@ tmp294, D.39473,
	sub	r0, r2, #1	@ tmp294, tmp294,
	uxth	r1, r0	@ tmp296, tmp294
	cmp	r1, r6	@ tmp296, tmp285
	movls	ip, #64	@ level,
	bls	.L120	@,
	b	.L118	@
.L127:
	movw	r0, #:lower16:s_RegPhyBaseAddr_1	@ tmp232,
	movt	r0, #:upper16:s_RegPhyBaseAddr_1	@ tmp232,
	ldr	ip, [r0, #0]	@ s_RegPhyBaseAddr_1, s_RegPhyBaseAddr_1
	add	r0, ip, #4	@, s_RegPhyBaseAddr_1,
	bl	MEM_WritePhyWord	@
.L116:
	mov	lr, #0	@ tmp238,
	mov	r3, r5	@, VdhId
	mov	r0, lr	@, tmp238
	movw	r1, #:lower16:.LC10	@,
	ldr	r2, .L128	@,
	movt	r1, #:upper16:.LC10	@,
	str	lr, [sp, #0]	@ tmp238,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39436,
	b	.L117	@
.L124:
	movw	r8, #1208	@ tmp175,
	movw	r3, #:lower16:g_HwMem	@ tmp173,
	mul	r2, r8, r5	@ tmp174, tmp175, VdhId
	movt	r3, #:upper16:g_HwMem	@ tmp173,
	movw	r6, #:lower16:77988	@ tmp184,
	movt	r6, #:upper16:77988	@ tmp184,
	mvn	r8, #0	@ tmp178,
	movw	ip, #:lower16:77992	@ tmp193,
	movt	ip, #:upper16:77992	@ tmp193,
	movw	r0, #:lower16:77996	@ tmp209,
	movt	r0, #:upper16:77996	@ tmp209,
	ldr	r7, [r2, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r8, [r7, #32]	@ tmp178,
	ldr	r6, [r4, r6]	@ <variable>.basic_cfg0, <variable>.basic_cfg0
	ldr	r7, [r2, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	bic	r6, r6, #-16777216	@ tmp185, <variable>.basic_cfg0,
	bic	r6, r6, #15728640	@ tmp185, tmp185,
	orr	r6, r6, #1090519040	@ D32.451, tmp185,
	str	r6, [r7, #8]	@ D32.451,
	ldr	r6, [r4, ip]	@ D.39403, <variable>.basic_cfg1
	ldr	ip, [r2, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r6, [ip, #12]	@ D.39403,
	ldr	ip, [r2, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r6, [r1, #48]	@ D.39409, <variable>.MsgSlotAddr
	str	r6, [ip, #16]	@ D.39409,
	ldr	ip, [r1, #32]	@ D.39415, <variable>.MsgSlotAddr
	ldr	r1, [r2, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r1, #20]	@ D.39415,
	ldr	r3, [r2, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r2, [r4, r0]	@ D.39422, <variable>.stream_base_addr
	str	r2, [r3, #24]	@ D.39422,
	b	.L109	@
.L129:
	.align	2
.L128:
	.word	.LANCHOR0+56
	.fnend
	.size	VC1HAL_V300R001_CfgReg, .-VC1HAL_V300R001_CfgReg
	.align	2
	.global	VC1HAL_V300R001_StartDec
	.type	VC1HAL_V300R001_StartDec, %function
VC1HAL_V300R001_StartDec:
	.fnstart
.LFB1529:
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
	cmp	r1, #1	@ VdhId,
	mov	r6, r1	@ VdhId, VdhId
	mov	r4, r0	@ pVc1DecParam, pVc1DecParam
	bls	.L141	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC11	@,
	movt	r1, #:upper16:.LC11	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39180,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L141:
	cmp	r0, #0	@ pVc1DecParam,
	beq	.L142	@,
	ldrh	r3, [r0, #78]	@ <variable>.mbwidth, <variable>.mbwidth
	cmp	r3, #512	@ <variable>.mbwidth,
	bhi	.L143	@,
	ldrh	r0, [r0, #80]	@ <variable>.mbheight, <variable>.mbheight
	cmp	r0, #512	@ <variable>.mbheight,
	bhi	.L144	@,
	movw	r8, #1208	@ tmp158,
	movw	r7, #:lower16:g_HwMem	@ tmp159,
	mul	r8, r8, r1	@ tmp157, tmp158, VdhId
	movt	r7, #:upper16:g_HwMem	@ tmp159,
	add	r5, r7, r8	@ pHwMem, tmp159, tmp157
	ldr	r0, [r5, #48]	@, <variable>.MsgSlotAddr
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@,
	beq	.L145	@,
	ldr	r1, [r7, r8]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r1, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L146	@,
.L138:
	mov	r0, r4	@, pVc1DecParam
	mov	r1, r5	@, pHwMem
	bl	VC1HAL_V300R001_CfgSliceMsg	@
	mov	r1, r5	@, pHwMem
	mov	r2, r6	@, VdhId
	mov	r0, r4	@, pVc1DecParam
	bl	VC1HAL_V300R001_CfgReg	@
	mov	r0, r4	@, pVc1DecParam
	mov	r1, r5	@, pHwMem
	bl	VC1HAL_V300R001_CfgDnMsg	@
	mov	r0, #0	@ D.39180,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L146:
	movw	r0, #:lower16:-121438208	@,
	movt	r0, #:upper16:-121438208	@,
	bl	MEM_Phy2Vir	@
	subs	r2, r0, #0	@ D.39197,
	strne	r2, [r7, r8]	@ D.39197, <variable>.pVdmRegVirAddr
	bne	.L138	@,
	movw	r1, #:lower16:.LC17	@,
	movt	r1, #:upper16:.LC17	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39180,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L144:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC12	@,
	ldr	r2, .L147	@,
	movt	r1, #:upper16:.LC12	@,
	movw	r3, #:lower16:.LC15	@,
	movt	r3, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39180,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L143:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC12	@,
	ldr	r2, .L147	@,
	movt	r1, #:upper16:.LC12	@,
	movw	r3, #:lower16:.LC14	@,
	movt	r3, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39180,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L142:
	movw	r1, #:lower16:.LC12	@,
	ldr	r2, .L147	@,
	movt	r1, #:upper16:.LC12	@,
	movw	r3, #:lower16:.LC13	@,
	movt	r3, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39180,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L145:
	movw	r1, #:lower16:.LC12	@,
	ldr	r2, .L147	@,
	movt	r1, #:upper16:.LC12	@,
	movw	r3, #:lower16:.LC16	@,
	movt	r3, #:upper16:.LC16	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39180,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L148:
	.align	2
.L147:
	.word	.LANCHOR0+80
	.fnend
	.size	VC1HAL_V300R001_StartDec, .-VC1HAL_V300R001_StartDec
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	__func__.39225, %object
	.size	__func__.39225, 28
__func__.39225:
	.ascii	"VC1HAL_V300R001_CfgSliceMsg\000"
	.type	__func__.39546, %object
	.size	__func__.39546, 25
__func__.39546:
	.ascii	"VC1HAL_V300R001_CfgDnMsg\000"
	.space	3
	.type	__func__.39376, %object
	.size	__func__.39376, 23
__func__.39376:
	.ascii	"VC1HAL_V300R001_CfgReg\000"
	.space	1
	.type	__func__.39176, %object
	.size	__func__.39176, 25
__func__.39176:
	.ascii	"VC1HAL_V300R001_StartDec\000"
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"%s: pMsgBase = NULL\012\000"
	.space	3
.LC1:
	.ascii	"pVc1DecParam->SlcNum = %d\012\000"
	.space	1
.LC2:
	.ascii	"D0 = 0x%08x\012\000"
	.space	3
.LC3:
	.ascii	"D1 = 0x%08x\012\000"
	.space	3
.LC4:
	.ascii	"D2 = 0x%08x\012\000"
	.space	3
.LC5:
	.ascii	"D3 = 0x%08x\012\000"
	.space	3
.LC6:
	.ascii	"D4 = 0x%08x\012\000"
	.space	3
.LC7:
	.ascii	"D63 = 0x%08x\012\000"
	.space	2
.LC8:
	.ascii	"%s: u8Tmp = NULL\012\000"
	.space	2
.LC9:
	.ascii	"%s: WR_VREG but VdhId(%d) > MAX_VDH_NUM(%d)\012\000"
	.space	3
.LC10:
	.ascii	"%s: VdhId(%d) > %d\012\000"
.LC11:
	.ascii	"VdhId is wrong! VC1HAL_V200R003_StartDec\012\000"
	.space	2
.LC12:
	.ascii	"%s: %s\012\000"
.LC13:
	.ascii	"point of picture para null\012\000"
.LC14:
	.ascii	"picture width out of range\000"
	.space	1
.LC15:
	.ascii	"picture height out of range\000"
.LC16:
	.ascii	"can not map down msg virtual address!\000"
	.space	2
.LC17:
	.ascii	"vdm register virtual address not mapped, reset fail"
	.ascii	"ed!\012\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
