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
	.file	"vp6.c"
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
@ -DKBUILD_BASENAME=KBUILD_STR(vp6) -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD drivers/msp/vfmw/vfmw_v4.0/firmware/common/syntax/.vp6.o.d
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/drivers/msp/vfmw/vfmw_v4.0/firmware/common/syntax/vp6.c
@ -mlittle-endian -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -marm -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/common/syntax/vp6.o -O2 -Wall -Wundef
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
	.global	VP6_BuildScanOrder
	.type	VP6_BuildScanOrder, %function
VP6_BuildScanOrder:
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
	mov	r5, #1	@ ScanOrderIndex,
	mov	r6, r1	@ pbi, pbi
	mov	r3, #0	@ tmp199,
	strb	r3, [r0, #960]	@ tmp199, <variable>.ModifiedScanOrder
.L2:
	ldrb	r1, [r0, #1089]	@ zero_extendqisi2	@ tmp229, <variable>.ScanBands
	cmp	r1, r3	@ tmp229, i
	beq	.L31	@,
.L17:
	mov	ip, #0	@ tmp221,
	cmp	ip, ip	@ tmp221,
	mov	r2, #2	@ j,
	add	r1, r0, #1	@ ivtmp.584, pVp6CodecInfo,
	beq	.L4	@,
	ldrb	r7, [r1, #1089]	@ zero_extendqisi2	@ tmp241, <variable>.ScanBands
	add	r1, r1, #1	@ ivtmp.584, ivtmp.584,
	cmp	r7, r3	@ tmp241, i
	addeq	r7, r5, r0	@ tmp242, ScanOrderIndex, pVp6CodecInfo
	addeq	r5, r5, #1	@ ScanOrderIndex, ScanOrderIndex,
	streqb	r2, [r7, #960]	@ j, <variable>.ModifiedScanOrder
	add	r2, r2, #1	@ j, j,
	cmp	r2, #64	@ j,
	bne	.L4	@,
	b	.L29	@
.L22:
	add	r2, r1, #1	@ j, tmp222,
	add	r1, ip, #1	@ ivtmp.584, tmp223,
	cmp	r2, #64	@ j,
	beq	.L29	@,
.L4:
	ldrb	r4, [r1, #1089]	@ zero_extendqisi2	@ tmp201, <variable>.ScanBands
	add	ip, r1, #1	@ tmp223, ivtmp.584,
	add	r1, r2, #1	@ tmp222, j,
	cmp	r4, r3	@ tmp201, i
	addeq	r4, r5, r0	@ tmp203, ScanOrderIndex, pVp6CodecInfo
	addeq	r5, r5, #1	@ ScanOrderIndex, ScanOrderIndex,
	streqb	r2, [r4, #960]	@ j, <variable>.ModifiedScanOrder
	ldrb	r2, [ip, #1089]	@ zero_extendqisi2	@ tmp226, <variable>.ScanBands
	cmp	r2, r3	@ tmp226, i
	bne	.L22	@,
	add	r2, r5, r0	@ tmp244, ScanOrderIndex, pVp6CodecInfo
	add	r5, r5, #1	@ ScanOrderIndex, ScanOrderIndex,
	strb	r1, [r2, #960]	@ tmp222, <variable>.ModifiedScanOrder
	add	r2, r1, #1	@ j, tmp222,
	cmp	r2, #64	@ j,
	add	r1, ip, #1	@ ivtmp.584, tmp223,
	bne	.L4	@,
.L29:
	add	r3, r3, #1	@ i, i,
	cmp	r3, #16	@ i,
	bne	.L2	@,
	mov	r7, r0	@ ivtmp.593, pVp6CodecInfo
	mov	r5, #0	@ i.592,
.L5:
	ldrb	ip, [r0, #960]	@ zero_extendqisi2	@ tmp237, <variable>.ModifiedScanOrder
	mov	r2, #1	@ j.591,
	and	r1, r5, r2	@ tmp217, i.592,
	add	r3, r0, r2	@ ivtmp.590, pVp6CodecInfo,
	cmp	ip, #0	@ tmp237,
	movcc	ip, #0	@ MaxOffset,
	cmp	r2, r5	@ j.591, i.592
	bhi	.L28	@,
	cmp	r1, #0	@ tmp217,
	beq	.L6	@,
	ldrb	r1, [r0, #961]	@ zero_extendqisi2	@ tmp238, <variable>.ModifiedScanOrder
	mov	r2, #2	@ j.591,
	add	r3, r3, #1	@ ivtmp.590, ivtmp.590,
	cmp	ip, r1	@ MaxOffset, tmp238
	movcc	ip, r1	@ MaxOffset, tmp238
	cmp	r2, r5	@ j.591, i.592
	bhi	.L28	@,
.L6:
	ldrb	r4, [r3, #960]	@ zero_extendqisi2	@ tmp206, <variable>.ModifiedScanOrder
	add	r2, r2, #2	@ j.591, j.591,
	ldrb	r1, [r3, #961]	@ zero_extendqisi2	@ tmp233, <variable>.ModifiedScanOrder
	add	r3, r3, #2	@ ivtmp.590, ivtmp.590,
	cmp	ip, r4	@ MaxOffset, tmp206
	movcc	ip, r4	@ MaxOffset, tmp206
	cmp	ip, r1	@ MaxOffset, tmp233
	movcc	ip, r1	@ MaxOffset, tmp233
	cmp	r2, r5	@ j.591, i.592
	bls	.L6	@,
.L28:
	uxtb	ip, ip	@ D.38779, MaxOffset
	strb	ip, [r7, #1024]	@ D.38779, <variable>.EobOffsetTable
	ldr	r3, [r6, #12]	@ <variable>.Vp3VersionNo, <variable>.Vp3VersionNo
	add	r5, r5, #1	@ i.592, i.592,
	cmp	r3, #6	@ <variable>.Vp3VersionNo,
	addhi	ip, ip, #1	@ tmp209, D.38779,
	strhib	ip, [r7, #1024]	@ tmp209, <variable>.EobOffsetTable
	cmp	r5, #64	@ i.592,
	add	r7, r7, #1	@ ivtmp.593, ivtmp.593,
	bne	.L5	@,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L31:
	add	r2, r5, r0	@ tmp239, ScanOrderIndex, pVp6CodecInfo
	mov	r7, #1	@ j,
	add	r5, r5, #1	@ ScanOrderIndex, ScanOrderIndex,
	strb	r7, [r2, #960]	@ j, <variable>.ModifiedScanOrder
	b	.L17	@
	.fnend
	.size	VP6_BuildScanOrder, .-VP6_BuildScanOrder
	.global	__aeabi_idiv
	.global	__aeabi_uidiv
	.align	2
	.global	VP6_BuildModeTree
	.type	VP6_BuildModeTree, %function
VP6_BuildModeTree:
	.fnstart
.LFB1536:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #84
	sub	sp, sp, #84	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r8, #0	@ ivtmp.697,
	mov	r6, r0	@ pVp6CodecInfo, pVp6CodecInfo
	mov	sl, r0	@ ivtmp.682, pVp6CodecInfo
	mov	r4, r0	@ ivtmp.891, pVp6CodecInfo
	mov	r5, r8	@ i, ivtmp.697
	mov	r7, #100	@ tmp771,
	b	.L33	@
.L129:
	ldrb	lr, [r6, #404]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #1	@ i,
	mul	r3, r7, lr	@ prephitmp.763, tmp771, <variable>.probXmitted
	str	r3, [fp, #-84]	@ prephitmp.763, Counts
	beq	.L100	@,
	ldrb	ip, [r6, #405]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #2	@ i,
	mul	r9, r7, ip	@ temp.748, tmp771, <variable>.probXmitted
	add	r3, r9, r3	@ total.782, temp.748, prephitmp.763
	str	r9, [fp, #-80]	@ temp.748, Counts
	beq	.L101	@,
.L58:
	ldrb	r9, [r6, #406]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #3	@ i,
	mul	r2, r7, r9	@ D.38810, tmp771, <variable>.probXmitted
	add	r1, r2, r3	@ total.1018, D.38810, total.782
	str	r2, [fp, #-76]	@ D.38810, Counts
	beq	.L102	@,
	ldrb	lr, [r6, #407]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #4	@ i,
	mul	r3, r7, lr	@ temp.786, tmp771, <variable>.probXmitted
	add	r1, r3, r1	@ total.1019, temp.786, total.1018
	str	r3, [fp, #-72]	@ temp.786, Counts
	beq	.L103	@,
.L62:
	ldrb	r3, [r6, #408]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #5	@ i,
	mul	r0, r7, r3	@ temp.791, tmp771, <variable>.probXmitted
	add	r2, r0, r1	@ total.1020, temp.791, total.1019
	str	r0, [fp, #-68]	@ temp.791, Counts
	beq	.L104	@,
	ldrb	ip, [r6, #409]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #6	@ i,
	mul	r1, r7, ip	@ temp.796, tmp771, <variable>.probXmitted
	add	r2, r1, r2	@ total.1021, temp.796, total.1020
	str	r1, [fp, #-64]	@ temp.796, Counts
	beq	.L105	@,
.L66:
	ldrb	r1, [r6, #410]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #7	@ i,
	mul	r9, r7, r1	@ temp.801, tmp771, <variable>.probXmitted
	add	r2, r9, r2	@ total.1022, temp.801, total.1021
	str	r9, [fp, #-60]	@ temp.801, Counts
	beq	.L106	@,
	ldrb	r9, [r6, #411]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #8	@ i,
	mul	r3, r7, r9	@ temp.806, tmp771, <variable>.probXmitted
	add	r2, r3, r2	@ total.1023, temp.806, total.1022
	str	r3, [fp, #-56]	@ temp.806, Counts
	beq	.L107	@,
.L70:
	ldrb	r3, [r6, #412]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #9	@ i,
	mul	lr, r7, r3	@ temp.811, tmp771, <variable>.probXmitted
	add	r2, lr, r2	@, temp.811, total.1023
	str	r2, [fp, #-88]	@, %sfp
	str	lr, [fp, #-52]	@ temp.811, Counts
	beq	.L108	@,
.L72:
	ldrb	r3, [r6, #413]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	mul	r9, r7, r3	@ prephitmp.814, tmp771, <variable>.probXmitted
	str	r9, [fp, #-48]	@ prephitmp.814, Counts
.L73:
	ldrb	r3, [sl, #404]	@ zero_extendqisi2	@ tmp492, <variable>.probXmitted
	add	r2, r6, r5	@ tmp488, pVp6CodecInfo, i
	ldrb	r0, [sl, #414]	@ zero_extendqisi2	@ temp.820, <variable>.probXmitted
	str	r2, [fp, #-116]	@,
	add	ip, r0, r3	@ tmp493, temp.820, tmp492
	add	r1, ip, #1	@, tmp493,
	rsb	r0, r0, r0, asl #8	@,, temp.820, temp.820,
	bl	__aeabi_idiv	@
	ldr	r3, [fp, #-116]	@,
	ldr	lr, [fp, #-88]	@, %sfp
	add	r1, r9, lr	@ tmp507, prephitmp.814,
	add	r1, r1, #1	@, tmp507,
	mvn	ip, r0	@ tmp500,
	strb	ip, [r3, #4]	@ tmp500, <variable>.probModeSame
	ldr	r2, [fp, #-72]	@, Counts
	ldr	r0, [fp, #-84]	@, Counts
	ldr	r3, [fp, #-68]	@ Counts, Counts
	str	r2, [fp, #-96]	@, %sfp
	ldr	lr, [fp, #-96]	@, %sfp
	ldr	r9, [fp, #-76]	@ Counts, Counts
	add	ip, lr, r3	@,, Counts
	str	r0, [fp, #-100]	@, %sfp
	add	r2, r0, r9	@ temp.831,, Counts
	str	ip, [fp, #-112]	@, %sfp
	add	r9, ip, r2	@ temp.835,, temp.831
	str	r2, [fp, #-120]	@,
	rsb	r0, r9, r9, asl #8	@,, temp.835, temp.835,
	bl	__aeabi_uidiv	@
	add	r1, r9, #1	@, temp.835,
	add	r0, r0, #1	@ tmp514,,
	strb	r0, [r4, #44]	@ tmp514, <variable>.probMode
	ldr	r3, [fp, #-120]	@,
	rsb	r0, r3, r3, asl #8	@,, temp.831, temp.831,
	bl	__aeabi_uidiv	@
	add	ip, r0, #1	@ tmp525,,
	strb	ip, [r4, #45]	@ tmp525, <variable>.probMode
	ldr	r2, [fp, #-52]	@, Counts
	ldr	r0, [fp, #-64]	@, Counts
	ldr	r3, [fp, #-60]	@ Counts, Counts
	str	r2, [fp, #-88]	@, %sfp
	ldr	ip, [fp, #-80]	@ temp.846, Counts
	add	r2, r0, r3	@ temp.854,, Counts
	ldr	lr, [fp, #-88]	@, %sfp
	ldr	r9, [fp, #-56]	@ Counts, Counts
	ldr	r1, [fp, #-48]	@ Counts, Counts
	str	r0, [fp, #-92]	@, %sfp
	add	r0, r2, #1	@, temp.854,
	str	r0, [fp, #-108]	@, %sfp
	add	r9, ip, r9	@ temp.848, temp.846, Counts
	add	r1, lr, r1	@,, Counts
	ldr	lr, [fp, #-108]	@, %sfp
	str	r1, [fp, #-104]	@, %sfp
	add	r1, r1, r9	@ tmp533,, temp.848
	add	r1, r1, lr	@, tmp533,
	ldr	lr, [fp, #-104]	@, %sfp
	rsb	r0, r9, r9, asl #8	@,, temp.848, temp.848,
	str	ip, [fp, #-124]	@,
	add	lr, lr, #1	@,,
	str	r2, [fp, #-116]	@,
	str	lr, [fp, #-104]	@, %sfp
	bl	__aeabi_uidiv	@
	ldr	r3, [fp, #-120]	@,
	add	r1, r3, #1	@, temp.831,
	add	r0, r0, #1	@ tmp540,,
	strb	r0, [r4, #46]	@ tmp540, <variable>.probMode
	ldr	r2, [fp, #-100]	@, %sfp
	rsb	r0, r2, r2, asl #8	@,,,,
	bl	__aeabi_uidiv	@
	ldr	ip, [fp, #-112]	@, %sfp
	add	r1, ip, #1	@,,
	add	lr, r0, #1	@ tmp551,,
	strb	lr, [r4, #47]	@ tmp551, <variable>.probMode
	ldr	r3, [fp, #-96]	@, %sfp
	rsb	r0, r3, r3, asl #8	@,,,,
	bl	__aeabi_uidiv	@
	add	r1, r9, #1	@, temp.848,
	add	r0, r0, #1	@ tmp562,,
	strb	r0, [r4, #48]	@ tmp562, <variable>.probMode
	ldr	r2, [fp, #-124]	@,
	rsb	r0, r2, r2, asl #8	@,, temp.846, temp.846,
	bl	__aeabi_uidiv	@
	ldr	r9, [fp, #-116]	@,
	ldr	ip, [fp, #-104]	@, %sfp
	add	r1, ip, r9	@,, temp.854
	add	lr, r0, #1	@ tmp573,,
	rsb	r0, r9, r9, asl #8	@,, temp.854, temp.854,
	strb	lr, [r4, #49]	@ tmp573, <variable>.probMode
	bl	__aeabi_uidiv	@
	ldr	r1, [fp, #-108]	@, %sfp
	add	r3, r0, #1	@ tmp584,,
	strb	r3, [r4, #50]	@ tmp584, <variable>.probMode
	ldr	r2, [fp, #-92]	@, %sfp
	rsb	r0, r2, r2, asl #8	@,,,,
	bl	__aeabi_uidiv	@
	ldr	r1, [fp, #-104]	@, %sfp
	add	r0, r0, #1	@ tmp594,,
	strb	r0, [r4, #51]	@ tmp594, <variable>.probMode
	ldr	ip, [fp, #-88]	@, %sfp
	rsb	r0, ip, ip, asl #8	@,,,,
	bl	__aeabi_uidiv	@
	cmp	r5, #0	@ i,
	add	r9, r0, #1	@ tmp604,,
	strb	r9, [r4, #52]	@ tmp604, <variable>.probMode
	beq	.L74	@,
	ldrb	r9, [r6, #424]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #1	@ i,
	mul	r3, r7, r9	@ prephitmp.895, tmp771, <variable>.probXmitted
	str	r3, [fp, #-84]	@ prephitmp.895, Counts
	beq	.L109	@,
.L76:
	ldrb	r2, [r6, #425]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #2	@ i,
	mul	lr, r7, r2	@ temp.899, tmp771, <variable>.probXmitted
	add	r3, lr, r3	@ total.1031, temp.899, prephitmp.895
	str	lr, [fp, #-80]	@ temp.899, Counts
	beq	.L110	@,
.L78:
	ldrb	r1, [r6, #426]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #3	@ i,
	mul	lr, r7, r1	@ temp.904, tmp771, <variable>.probXmitted
	add	r1, lr, r3	@ total.1030, temp.904, total.1031
	str	lr, [fp, #-76]	@ temp.904, Counts
	beq	.L111	@,
.L80:
	ldrb	r9, [r6, #427]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #4	@ i,
	mul	r3, r7, r9	@ temp.909, tmp771, <variable>.probXmitted
	add	r1, r3, r1	@ total.1029, temp.909, total.1030
	str	r3, [fp, #-72]	@ temp.909, Counts
	beq	.L112	@,
.L82:
	ldrb	r3, [r6, #428]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #5	@ i,
	mul	r0, r7, r3	@ temp.914, tmp771, <variable>.probXmitted
	add	r2, r0, r1	@ total.1028, temp.914, total.1029
	str	r0, [fp, #-68]	@ temp.914, Counts
	beq	.L113	@,
.L84:
	ldrb	r0, [r6, #429]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #6	@ i,
	mul	r1, r7, r0	@ temp.919, tmp771, <variable>.probXmitted
	add	r2, r1, r2	@ total.1027, temp.919, total.1028
	str	r1, [fp, #-64]	@ temp.919, Counts
	beq	.L114	@,
.L86:
	ldrb	r1, [r6, #430]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #7	@ i,
	mul	lr, r7, r1	@ temp.924, tmp771, <variable>.probXmitted
	add	r2, lr, r2	@ total.1026, temp.924, total.1027
	str	lr, [fp, #-60]	@ temp.924, Counts
	beq	.L115	@,
.L88:
	ldrb	lr, [r6, #431]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #8	@ i,
	mul	ip, r7, lr	@ temp.929, tmp771, <variable>.probXmitted
	add	r2, ip, r2	@ total.762, temp.929, total.1026
	str	ip, [fp, #-56]	@ temp.929, Counts
	beq	.L116	@,
.L90:
	ldrb	ip, [r6, #432]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #9	@ i,
	mul	r9, r7, ip	@ temp.934, tmp771, <variable>.probXmitted
	add	r2, r9, r2	@, temp.934, total.762
	str	r2, [fp, #-88]	@, %sfp
	str	r9, [fp, #-52]	@ temp.934, Counts
	beq	.L117	@,
.L92:
	ldrb	ip, [r6, #433]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	mul	r9, r7, ip	@ prephitmp.936, tmp771, <variable>.probXmitted
	str	r9, [fp, #-48]	@ prephitmp.936, Counts
.L93:
	ldrb	r2, [sl, #424]	@ zero_extendqisi2	@ tmp657, <variable>.probXmitted
	ldrb	r0, [sl, #434]	@ zero_extendqisi2	@ temp.942, <variable>.probXmitted
	add	lr, r0, r2	@ tmp658, temp.942, tmp657
	add	r1, lr, #1	@, tmp658,
	rsb	r0, r0, r0, asl #8	@,, temp.942, temp.942,
	bl	__aeabi_idiv	@
	ldr	r3, [fp, #-88]	@, %sfp
	add	r1, r9, r3	@ tmp672, prephitmp.936,
	add	r1, r1, #1	@, tmp672,
	mvn	ip, r0	@ tmp665,
	strb	ip, [sl, #14]	@ tmp665, <variable>.probModeSame
	ldr	lr, [fp, #-72]	@, Counts
	ldr	r9, [fp, #-84]	@, Counts
	ldr	r2, [fp, #-76]	@ Counts, Counts
	ldr	r3, [fp, #-68]	@ Counts, Counts
	add	ip, r9, r2	@ temp.953,, Counts
	str	r9, [fp, #-100]	@, %sfp
	add	r0, lr, r3	@,, Counts
	str	r0, [fp, #-112]	@, %sfp
	add	r9, r0, ip	@ temp.957,, temp.953
	str	lr, [fp, #-96]	@, %sfp
	str	ip, [fp, #-120]	@,
	rsb	r0, r9, r9, asl #8	@,, temp.957, temp.957,
	bl	__aeabi_uidiv	@
	add	r1, r9, #1	@, temp.957,
	add	r2, r0, #1	@ tmp679,,
	strb	r2, [r4, #134]	@ tmp679, <variable>.probMode
	ldr	r3, [fp, #-120]	@,
	rsb	r0, r3, r3, asl #8	@,, temp.953, temp.953,
	bl	__aeabi_uidiv	@
	add	ip, r0, #1	@ tmp690,,
	strb	ip, [r4, #135]	@ tmp690, <variable>.probMode
	ldr	r0, [fp, #-52]	@, Counts
	ldr	r2, [fp, #-64]	@, Counts
	ldr	r3, [fp, #-60]	@ Counts, Counts
	str	r0, [fp, #-88]	@, %sfp
	ldr	ip, [fp, #-80]	@ temp.968, Counts
	add	r3, r2, r3	@ temp.976,, Counts
	ldr	r1, [fp, #-48]	@ Counts, Counts
	add	r0, r3, #1	@, temp.976,
	ldr	lr, [fp, #-88]	@, %sfp
	ldr	r9, [fp, #-56]	@ Counts, Counts
	str	r0, [fp, #-108]	@, %sfp
	add	r9, ip, r9	@ temp.970, temp.968, Counts
	str	r2, [fp, #-92]	@, %sfp
	add	r2, lr, r1	@,, Counts
	ldr	lr, [fp, #-108]	@, %sfp
	str	r2, [fp, #-104]	@, %sfp
	add	r1, r2, r9	@ tmp698,, temp.970
	ldr	r2, [fp, #-104]	@, %sfp
	add	r1, r1, lr	@, tmp698,
	rsb	r0, r9, r9, asl #8	@,, temp.970, temp.970,
	str	ip, [fp, #-124]	@,
	add	lr, r2, #1	@,,
	str	r3, [fp, #-116]	@,
	str	lr, [fp, #-104]	@, %sfp
	bl	__aeabi_uidiv	@
	ldr	r2, [fp, #-120]	@,
	add	r1, r2, #1	@, temp.953,
	add	r0, r0, #1	@ tmp705,,
	strb	r0, [r4, #136]	@ tmp705, <variable>.probMode
	ldr	r3, [fp, #-100]	@, %sfp
	rsb	r0, r3, r3, asl #8	@,,,,
	bl	__aeabi_uidiv	@
	ldr	lr, [fp, #-112]	@, %sfp
	add	r1, lr, #1	@,,
	add	ip, r0, #1	@ tmp716,,
	strb	ip, [r4, #137]	@ tmp716, <variable>.probMode
	ldr	r2, [fp, #-96]	@, %sfp
	rsb	r0, r2, r2, asl #8	@,,,,
	bl	__aeabi_uidiv	@
	add	r1, r9, #1	@, temp.970,
	add	r0, r0, #1	@ tmp727,,
	strb	r0, [r4, #138]	@ tmp727, <variable>.probMode
	ldr	r9, [fp, #-124]	@,
	rsb	r0, r9, r9, asl #8	@,, temp.968, temp.968,
	bl	__aeabi_uidiv	@
	ldr	ip, [fp, #-116]	@,
	ldr	r3, [fp, #-104]	@, %sfp
	add	r1, r3, ip	@,, temp.976
	add	lr, r0, #1	@ tmp738,,
	rsb	r0, ip, ip, asl #8	@,, temp.976, temp.976,
	strb	lr, [r4, #139]	@ tmp738, <variable>.probMode
	bl	__aeabi_uidiv	@
	ldr	r1, [fp, #-108]	@, %sfp
	add	r2, r0, #1	@ tmp749,,
	strb	r2, [r4, #140]	@ tmp749, <variable>.probMode
	ldr	r9, [fp, #-92]	@, %sfp
	rsb	r0, r9, r9, asl #8	@,,,,
	bl	__aeabi_uidiv	@
	ldr	r1, [fp, #-104]	@, %sfp
	add	r0, r0, #1	@ tmp759,,
	strb	r0, [r4, #141]	@ tmp759, <variable>.probMode
	ldr	r3, [fp, #-88]	@, %sfp
	rsb	r0, r3, r3, asl #8	@,,,,
	bl	__aeabi_uidiv	@
	cmp	r5, #0	@ i,
	add	r1, r0, #1	@ tmp769,,
	strb	r1, [r4, #142]	@ tmp769, <variable>.probMode
	beq	.L118	@,
	ldrb	r9, [r6, #444]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #1	@ i,
	mul	r3, r7, r9	@ prephitmp.728, tmp771, <variable>.probXmitted
	str	r3, [fp, #-84]	@ prephitmp.728, Counts
	beq	.L119	@,
.L37:
	ldrb	ip, [r6, #445]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #2	@ i,
	mul	r1, r7, ip	@ temp.734, tmp771, <variable>.probXmitted
	add	r3, r1, r3	@ total.813, temp.734, prephitmp.728
	str	r1, [fp, #-80]	@ temp.734, Counts
	beq	.L120	@,
.L39:
	ldrb	r1, [r6, #446]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #3	@ i,
	mul	r2, r7, r1	@ temp.740, tmp771, <variable>.probXmitted
	add	r1, r2, r3	@ total.723, temp.740, total.813
	str	r2, [fp, #-76]	@ temp.740, Counts
	beq	.L121	@,
.L41:
	ldrb	r9, [r6, #447]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #4	@ i,
	mul	r3, r7, r9	@ temp.746, tmp771, <variable>.probXmitted
	add	r1, r1, r3	@ total.1013, total.723, temp.746
	str	r3, [fp, #-72]	@ temp.746, Counts
	beq	.L122	@,
.L43:
	ldrb	r3, [r6, #448]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #5	@ i,
	mul	lr, r7, r3	@ temp.754, tmp771, <variable>.probXmitted
	add	r2, lr, r1	@ total.1014, temp.754, total.1013
	str	lr, [fp, #-68]	@ temp.754, Counts
	beq	.L123	@,
.L45:
	ldrb	r0, [r6, #449]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #6	@ i,
	mul	r1, r7, r0	@ temp.760, tmp771, <variable>.probXmitted
	add	r2, r1, r2	@ total.1015, temp.760, total.1014
	str	r1, [fp, #-64]	@ temp.760, Counts
	beq	.L124	@,
.L47:
	ldrb	r1, [r6, #450]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #7	@ i,
	mul	ip, r7, r1	@ temp.767, tmp771, <variable>.probXmitted
	add	r2, ip, r2	@ total.1016, temp.767, total.1015
	str	ip, [fp, #-60]	@ temp.767, Counts
	beq	.L125	@,
.L49:
	ldrb	ip, [r6, #451]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #8	@ i,
	mul	r9, r7, ip	@ temp.774, tmp771, <variable>.probXmitted
	add	r2, r9, r2	@ total.1017, temp.774, total.1016
	str	r9, [fp, #-56]	@ temp.774, Counts
	beq	.L126	@,
.L51:
	ldrb	r9, [r6, #452]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #9	@ i,
	mul	lr, r7, r9	@ temp.780, tmp771, <variable>.probXmitted
	add	r2, lr, r2	@, temp.780, total.1017
	str	r2, [fp, #-88]	@, %sfp
	str	lr, [fp, #-52]	@ temp.780, Counts
	beq	.L127	@,
.L53:
	ldrb	r9, [r6, #453]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	mul	r9, r7, r9	@ prephitmp.662, tmp771, <variable>.probXmitted
	str	r9, [fp, #-48]	@ prephitmp.662, Counts
.L34:
	ldrb	lr, [sl, #454]	@ zero_extendqisi2	@ D.38814, <variable>.probXmitted
	add	r5, r5, #1	@ i, i,
	ldrb	r0, [sl, #444]	@ zero_extendqisi2	@ tmp282, <variable>.probXmitted
	add	r8, r8, #4	@ ivtmp.697, ivtmp.697,
	add	r3, lr, r0	@ tmp283, D.38814, tmp282
	rsb	r0, lr, lr, asl #8	@,, D.38814, D.38814,
	add	r1, r3, #1	@, tmp283,
	bl	__aeabi_idiv	@
	ldr	ip, [fp, #-88]	@, %sfp
	add	r1, r9, ip	@ tmp297, prephitmp.662,
	add	r1, r1, #1	@, tmp297,
	mvn	r2, r0	@ tmp290,
	strb	r2, [sl, #24]	@ tmp290, <variable>.probModeSame
	ldr	lr, [fp, #-72]	@, Counts
	add	sl, sl, #1	@ ivtmp.682, ivtmp.682,
	ldr	r9, [fp, #-84]	@, Counts
	ldr	r3, [fp, #-68]	@ Counts, Counts
	ldr	r0, [fp, #-76]	@ Counts, Counts
	add	ip, lr, r3	@,, Counts
	str	r9, [fp, #-100]	@, %sfp
	add	r2, r9, r0	@ D.38825,, Counts
	str	lr, [fp, #-96]	@, %sfp
	add	r9, ip, r2	@ D.38829,, D.38825
	str	ip, [fp, #-112]	@, %sfp
	str	r2, [fp, #-120]	@,
	rsb	r0, r9, r9, asl #8	@,, D.38829, D.38829,
	bl	__aeabi_uidiv	@
	add	r1, r9, #1	@, D.38829,
	add	r0, r0, #1	@ tmp304,,
	strb	r0, [r4, #224]	@ tmp304, <variable>.probMode
	ldr	r3, [fp, #-120]	@,
	rsb	r0, r3, r3, asl #8	@,, D.38825, D.38825,
	bl	__aeabi_uidiv	@
	add	ip, r0, #1	@ tmp315,,
	strb	ip, [r4, #225]	@ tmp315, <variable>.probMode
	ldr	r2, [fp, #-52]	@, Counts
	ldr	r0, [fp, #-64]	@, Counts
	ldr	r3, [fp, #-60]	@ Counts, Counts
	str	r2, [fp, #-88]	@, %sfp
	ldr	ip, [fp, #-80]	@ D.38840, Counts
	add	r2, r0, r3	@ D.38845,, Counts
	ldr	lr, [fp, #-88]	@, %sfp
	ldr	r9, [fp, #-56]	@ Counts, Counts
	ldr	r1, [fp, #-48]	@ Counts, Counts
	str	r0, [fp, #-92]	@, %sfp
	add	r0, r2, #1	@, D.38845,
	str	r0, [fp, #-108]	@, %sfp
	add	r9, ip, r9	@ D.38842, D.38840, Counts
	add	r1, lr, r1	@,, Counts
	ldr	lr, [fp, #-108]	@, %sfp
	str	r1, [fp, #-104]	@, %sfp
	add	r1, r1, r9	@ tmp323,, D.38842
	add	r1, r1, lr	@, tmp323,
	ldr	lr, [fp, #-104]	@, %sfp
	rsb	r0, r9, r9, asl #8	@,, D.38842, D.38842,
	str	ip, [fp, #-124]	@,
	add	lr, lr, #1	@,,
	str	r2, [fp, #-116]	@,
	str	lr, [fp, #-104]	@, %sfp
	bl	__aeabi_uidiv	@
	ldr	r3, [fp, #-120]	@,
	add	r1, r3, #1	@, D.38825,
	add	r0, r0, #1	@ tmp330,,
	strb	r0, [r4, #226]	@ tmp330, <variable>.probMode
	ldr	r2, [fp, #-100]	@, %sfp
	rsb	r0, r2, r2, asl #8	@,,,,
	bl	__aeabi_uidiv	@
	ldr	ip, [fp, #-112]	@, %sfp
	add	r1, ip, #1	@,,
	add	lr, r0, #1	@ tmp341,,
	strb	lr, [r4, #227]	@ tmp341, <variable>.probMode
	ldr	r3, [fp, #-96]	@, %sfp
	rsb	r0, r3, r3, asl #8	@,,,,
	bl	__aeabi_uidiv	@
	add	r1, r9, #1	@, D.38842,
	add	r0, r0, #1	@ tmp352,,
	strb	r0, [r4, #228]	@ tmp352, <variable>.probMode
	ldr	r2, [fp, #-124]	@,
	rsb	r0, r2, r2, asl #8	@,, D.38840, D.38840,
	bl	__aeabi_uidiv	@
	ldr	r3, [fp, #-116]	@,
	ldr	ip, [fp, #-104]	@, %sfp
	add	r1, ip, r3	@,, D.38845
	add	lr, r0, #1	@ tmp363,,
	rsb	r0, r3, r3, asl #8	@,, D.38845, D.38845,
	strb	lr, [r4, #229]	@ tmp363, <variable>.probMode
	bl	__aeabi_uidiv	@
	ldr	r1, [fp, #-108]	@, %sfp
	add	r0, r0, #1	@ tmp374,,
	strb	r0, [r4, #230]	@ tmp374, <variable>.probMode
	ldr	r2, [fp, #-92]	@, %sfp
	rsb	r0, r2, r2, asl #8	@,,,,
	bl	__aeabi_uidiv	@
	ldr	r1, [fp, #-104]	@, %sfp
	add	ip, r0, #1	@ tmp384,,
	strb	ip, [r4, #231]	@ tmp384, <variable>.probMode
	ldr	r3, [fp, #-88]	@, %sfp
	rsb	r0, r3, r3, asl #8	@,,,,
	bl	__aeabi_uidiv	@
	cmp	r5, #10	@ i,
	add	r2, r0, #1	@ tmp394,,
	strb	r2, [r4, #232]	@ tmp394, <variable>.probMode
	add	r4, r4, #9	@ ivtmp.891, ivtmp.891,
	beq	.L128	@,
.L33:
	cmp	r5, #0	@ i,
	bne	.L129	@,
	sub	r2, fp, #84	@,,
	cmp	r5, #2	@ i,
	str	r5, [r2, r8]	@ i, Counts
	ldrb	ip, [r6, #405]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	ldr	r3, [fp, #-84]	@ prephitmp.763, Counts
	mul	r9, r7, ip	@ temp.748, tmp771, <variable>.probXmitted
	add	r3, r9, r3	@ total.782, temp.748, prephitmp.763
	str	r9, [fp, #-80]	@ temp.748, Counts
	bne	.L58	@,
.L101:
	sub	r0, fp, #84	@,,
	mov	r1, #0	@,
	cmp	r5, #4	@ i,
	str	r1, [r0, r8]	@, Counts
	ldrb	lr, [r6, #407]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	ldr	ip, [fp, #-76]	@ Counts, Counts
	add	r1, r3, ip	@ total.1018, total.782, Counts
	mul	r3, r7, lr	@ temp.786, tmp771, <variable>.probXmitted
	add	r1, r3, r1	@ total.1019, temp.786, total.1018
	str	r3, [fp, #-72]	@ temp.786, Counts
	bne	.L62	@,
.L103:
	sub	r9, fp, #84	@,,
	mov	r2, #0	@,
	cmp	r5, #6	@ i,
	str	r2, [r9, r8]	@, Counts
	ldrb	ip, [r6, #409]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	ldr	lr, [fp, #-68]	@ Counts, Counts
	add	r2, r1, lr	@ total.1020, total.1019, Counts
	mul	r1, r7, ip	@ temp.796, tmp771, <variable>.probXmitted
	add	r2, r1, r2	@ total.1021, temp.796, total.1020
	str	r1, [fp, #-64]	@ temp.796, Counts
	bne	.L66	@,
.L105:
	sub	lr, fp, #84	@,,
	mov	r0, #0	@,
	cmp	r5, #8	@ i,
	str	r0, [lr, r8]	@, Counts
	ldrb	r9, [r6, #411]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	ldr	ip, [fp, #-60]	@ Counts, Counts
	mul	r3, r7, r9	@ temp.806, tmp771, <variable>.probXmitted
	add	r2, r2, ip	@ total.1022, total.1021, Counts
	add	r2, r3, r2	@ total.1023, temp.806, total.1022
	str	r3, [fp, #-56]	@ temp.806, Counts
	bne	.L70	@,
.L107:
	sub	r0, fp, #84	@,,
	mov	ip, #0	@,
	str	ip, [r0, r8]	@, Counts
	ldr	r1, [fp, #-52]	@ Counts, Counts
	add	r9, r2, r1	@, total.1023, Counts
	str	r9, [fp, #-88]	@, %sfp
	b	.L72	@
.L127:
	sub	r0, fp, #84	@,,
	mov	r1, #0	@,
	str	r1, [r0, r8]	@, Counts
	ldr	r9, [fp, #-48]	@ prephitmp.662, Counts
	b	.L34	@
.L126:
	sub	r0, fp, #84	@,,
	mov	r3, #0	@,
	str	r3, [r0, r8]	@, Counts
	ldr	r1, [fp, #-52]	@ Counts, Counts
	add	ip, r2, r1	@, total.1017, Counts
	str	ip, [fp, #-88]	@, %sfp
	b	.L53	@
.L125:
	sub	r0, fp, #84	@,,
	mov	r3, #0	@,
	str	r3, [r0, r8]	@, Counts
	ldr	r1, [fp, #-56]	@ Counts, Counts
	add	r2, r2, r1	@ total.1017, total.1016, Counts
	b	.L51	@
.L124:
	sub	r3, fp, #84	@,,
	mov	lr, #0	@,
	str	lr, [r3, r8]	@, Counts
	ldr	r0, [fp, #-60]	@ Counts, Counts
	add	r2, r2, r0	@ total.1016, total.1015, Counts
	b	.L49	@
.L123:
	sub	r3, fp, #84	@,,
	mov	r9, #0	@,
	str	r9, [r3, r8]	@, Counts
	ldr	lr, [fp, #-64]	@ Counts, Counts
	add	r2, r2, lr	@ total.1015, total.1014, Counts
	b	.L47	@
.L122:
	sub	r2, fp, #84	@,,
	mov	ip, #0	@,
	str	ip, [r2, r8]	@, Counts
	ldr	r9, [fp, #-68]	@ Counts, Counts
	add	r2, r1, r9	@ total.1014, total.1013, Counts
	b	.L45	@
.L121:
	sub	ip, fp, #84	@,,
	mov	r0, #0	@,
	str	r0, [ip, r8]	@, Counts
	ldr	r2, [fp, #-72]	@ Counts, Counts
	add	r1, r1, r2	@ total.1013, total.723, Counts
	b	.L43	@
.L120:
	sub	r0, fp, #84	@,,
	mov	lr, #0	@,
	str	lr, [r0, r8]	@, Counts
	ldr	ip, [fp, #-76]	@ Counts, Counts
	add	r1, r3, ip	@ total.723, total.813, Counts
	b	.L41	@
.L119:
	sub	r0, fp, #84	@,,
	mov	r9, #0	@,
	str	r9, [r0, r8]	@, Counts
	ldr	lr, [fp, #-80]	@ Counts, Counts
	add	r3, r3, lr	@ total.813, prephitmp.728, Counts
	b	.L39	@
.L118:
	sub	r2, fp, #84	@,,
	str	r5, [r2, r8]	@ i, Counts
	ldr	r3, [fp, #-84]	@ prephitmp.728, Counts
	b	.L37	@
.L117:
	sub	r9, fp, #84	@,,
	mov	r2, #0	@,
	str	r2, [r9, r8]	@, Counts
	ldr	r9, [fp, #-48]	@ prephitmp.936, Counts
	b	.L93	@
.L116:
	sub	r0, fp, #84	@,,
	mov	r3, #0	@,
	str	r3, [r0, r8]	@, Counts
	ldr	r1, [fp, #-52]	@ Counts, Counts
	add	lr, r2, r1	@, total.762, Counts
	str	lr, [fp, #-88]	@, %sfp
	b	.L92	@
.L115:
	sub	r0, fp, #84	@,,
	mov	r3, #0	@,
	str	r3, [r0, r8]	@, Counts
	ldr	r1, [fp, #-56]	@ Counts, Counts
	add	r2, r2, r1	@ total.762, total.1026, Counts
	b	.L90	@
.L114:
	sub	r3, fp, #84	@,,
	mov	r9, #0	@,
	str	r9, [r3, r8]	@, Counts
	ldr	r0, [fp, #-60]	@ Counts, Counts
	add	r2, r2, r0	@ total.1026, total.1027, Counts
	b	.L88	@
.L113:
	sub	r9, fp, #84	@,,
	mov	ip, #0	@,
	str	ip, [r9, r8]	@, Counts
	ldr	r3, [fp, #-64]	@ Counts, Counts
	add	r2, r2, r3	@ total.1027, total.1028, Counts
	b	.L86	@
.L112:
	sub	ip, fp, #84	@,,
	mov	lr, #0	@,
	str	lr, [ip, r8]	@, Counts
	ldr	r9, [fp, #-68]	@ Counts, Counts
	add	r2, r1, r9	@ total.1028, total.1029, Counts
	b	.L84	@
.L111:
	sub	ip, fp, #84	@,,
	mov	r2, #0	@,
	str	r2, [ip, r8]	@, Counts
	ldr	lr, [fp, #-72]	@ Counts, Counts
	add	r1, r1, lr	@ total.1029, total.1030, Counts
	b	.L82	@
.L110:
	sub	ip, fp, #84	@,,
	mov	r0, #0	@,
	str	r0, [ip, r8]	@, Counts
	ldr	r2, [fp, #-76]	@ Counts, Counts
	add	r1, r3, r2	@ total.1030, total.1031, Counts
	b	.L80	@
.L109:
	sub	r0, fp, #84	@,,
	mov	r9, #0	@,
	str	r9, [r0, r8]	@, Counts
	ldr	ip, [fp, #-80]	@ Counts, Counts
	add	r3, r3, ip	@ total.1031, prephitmp.895, Counts
	b	.L78	@
.L74:
	sub	r1, fp, #84	@,,
	str	r5, [r1, r8]	@ i, Counts
	ldr	r3, [fp, #-84]	@ prephitmp.895, Counts
	b	.L76	@
.L108:
	sub	lr, fp, #84	@,,
	mov	r2, #0	@,
	str	r2, [lr, r8]	@, Counts
	ldr	r9, [fp, #-48]	@ prephitmp.814, Counts
	b	.L73	@
.L106:
	sub	ip, fp, #84	@,,
	mov	r0, #0	@,
	str	r0, [ip, r8]	@, Counts
	ldr	r1, [fp, #-56]	@ Counts, Counts
	add	r2, r2, r1	@ total.1023, total.1022, Counts
	b	.L70	@
.L104:
	sub	lr, fp, #84	@,,
	mov	r3, #0	@,
	str	r3, [lr, r8]	@, Counts
	ldr	r0, [fp, #-64]	@ Counts, Counts
	add	r2, r2, r0	@ total.1021, total.1020, Counts
	b	.L66	@
.L102:
	sub	r9, fp, #84	@,,
	mov	ip, #0	@,
	str	ip, [r9, r8]	@, Counts
	ldr	r2, [fp, #-72]	@ Counts, Counts
	add	r1, r1, r2	@ total.1019, total.1018, Counts
	b	.L62	@
.L100:
	sub	r0, fp, #84	@,,
	mov	lr, #0	@,
	str	lr, [r0, r8]	@, Counts
	ldr	r1, [fp, #-80]	@ Counts, Counts
	add	r3, r3, r1	@ total.782, prephitmp.763, Counts
	b	.L58	@
.L128:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
	.fnend
	.size	VP6_BuildModeTree, .-VP6_BuildModeTree
	.align	2
	.global	VP6_ConfigureContexts
	.type	VP6_ConfigureContexts, %function
VP6_ConfigureContexts:
	.fnstart
.LFB1537:
	@ args = 0, pretend = 0, frame = 192
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #196
	sub	sp, sp, #196	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r3, #:lower16:.LANCHOR0	@ tmp196,
	movt	r3, #:upper16:.LANCHOR0	@ tmp196,
	ldrb	r6, [r0, #514]	@ zero_extendqisi2	@ <variable>.DcProbs, <variable>.DcProbs
	ldrb	r5, [r0, #515]	@ zero_extendqisi2	@ <variable>.DcProbs, <variable>.DcProbs
	ldr	r2, [r3, #0]	@, <variable>.M
	ldr	r9, [r3, #24]	@, <variable>.M
	ldr	r8, [r3, #48]	@, <variable>.M
	ldr	sl, [r3, #72]	@, <variable>.M
	str	r2, [fp, #-52]	@, %sfp
	str	r9, [fp, #-56]	@, %sfp
	ldr	r7, [r3, #96]	@, <variable>.M
	ldr	r2, [r3, #8]	@, <variable>.M
	str	r8, [fp, #-48]	@, %sfp
	str	sl, [fp, #-72]	@, %sfp
	ldr	r8, [r3, #4]	@, <variable>.C
	ldr	r9, [fp, #-52]	@, %sfp
	ldr	sl, [fp, #-56]	@, %sfp
	ldrb	r4, [r0, #516]	@ zero_extendqisi2	@ <variable>.DcProbs, <variable>.DcProbs
	ldrb	ip, [r0, #517]	@ zero_extendqisi2	@ <variable>.DcProbs, <variable>.DcProbs
	str	r7, [fp, #-80]	@, %sfp
	str	r2, [fp, #-108]	@, %sfp
	ldr	r7, [r3, #28]	@, <variable>.C
	mul	r2, r9, r6	@ tmp197,, <variable>.DcProbs
	str	r8, [fp, #-60]	@, %sfp
	ldr	r9, [fp, #-48]	@, %sfp
	mul	r8, sl, r5	@ tmp207,, <variable>.DcProbs
	ldr	sl, [fp, #-72]	@, %sfp
	ldrb	r1, [r0, #518]	@ zero_extendqisi2	@ <variable>.DcProbs, <variable>.DcProbs
	add	r2, r2, #128	@ tmp199, tmp197,
	str	r7, [fp, #-64]	@, %sfp
	mul	r7, r9, r4	@ tmp217,, <variable>.DcProbs
	add	r8, r8, #128	@, tmp207,
	mul	r9, sl, ip	@ tmp227,, <variable>.DcProbs
	ldr	sl, [fp, #-80]	@, %sfp
	str	r8, [fp, #-92]	@, %sfp
	mul	r8, sl, r1	@ tmp237,, <variable>.DcProbs
	add	sl, r7, #128	@, tmp217,
	ldr	r7, [fp, #-108]	@, %sfp
	add	r9, r9, #128	@ tmp229, tmp227,
	str	sl, [fp, #-84]	@, %sfp
	add	r8, r8, #128	@, tmp237,
	str	r8, [fp, #-96]	@, %sfp
	mul	sl, r7, r6	@ tmp259,, <variable>.DcProbs
	ldr	r8, [r3, #76]	@, <variable>.C
	ldr	r7, [r3, #52]	@, <variable>.C
	add	sl, sl, #128	@ tmp261, tmp259,
	str	r7, [fp, #-68]	@, %sfp
	str	r8, [fp, #-76]	@, %sfp
	ldr	r8, [r3, #100]	@, <variable>.C
	ldr	r7, [fp, #-60]	@, %sfp
	add	r2, r7, r2, asr #8	@,,, tmp199,
	ldr	r7, [r3, #12]	@, <variable>.C
	str	r2, [fp, #-100]	@, %sfp
	ldr	r2, [fp, #-92]	@, %sfp
	str	r8, [fp, #-104]	@, %sfp
	ldr	r8, [fp, #-64]	@, %sfp
	str	r7, [fp, #-144]	@, %sfp
	add	r7, r8, r2, asr #8	@,,,,
	ldr	r8, [fp, #-84]	@, %sfp
	str	r7, [fp, #-88]	@, %sfp
	ldr	r7, [fp, #-68]	@, %sfp
	ldrb	r2, [r0, #519]	@ zero_extendqisi2	@ <variable>.DcProbs, <variable>.DcProbs
	add	r7, r7, r8, asr #8	@,,,,
	ldrb	r8, [r0, #520]	@ zero_extendqisi2	@, <variable>.DcProbs
	str	r7, [fp, #-116]	@, %sfp
	ldr	r7, [fp, #-76]	@, %sfp
	str	r8, [fp, #-92]	@, %sfp
	ldrb	r8, [r0, #521]	@ zero_extendqisi2	@, <variable>.DcProbs
	add	r9, r7, r9, asr #8	@, Temp.1320,, tmp229,
	ldr	r7, [fp, #-96]	@, %sfp
	cmp	r9, #255	@ Temp.1320,
	movge	r9, #255	@ Temp.1321,
	cmp	r9, #1	@ Temp.1321,
	movlt	r9, #1	@ tmp233,
	str	r8, [fp, #-136]	@, %sfp
	ldr	r8, [fp, #-104]	@, %sfp
	add	r8, r8, r7, asr #8	@,,,,
	ldrb	r7, [r0, #522]	@ zero_extendqisi2	@, <variable>.DcProbs
	str	r8, [fp, #-84]	@, %sfp
	ldr	r8, [fp, #-144]	@, %sfp
	str	r7, [fp, #-96]	@, %sfp
	ldrb	r7, [r0, #523]	@ zero_extendqisi2	@, <variable>.DcProbs
	add	sl, r8, sl, asr #8	@, Temp.1348,, tmp261,
	ldr	r8, [fp, #-100]	@, %sfp
	cmp	sl, #255	@ Temp.1348,
	movge	sl, #255	@ Temp.1349,
	cmp	sl, #1	@ Temp.1349,
	movlt	sl, #1	@ Temp.1349,
	str	r7, [fp, #-140]	@, %sfp
	cmp	r8, #255	@,
	movge	r8, #255	@,
	ldrb	r7, [r0, #524]	@ zero_extendqisi2	@, <variable>.DcProbs
	str	r8, [fp, #-112]	@, %sfp
	ldr	r8, [fp, #-88]	@, %sfp
	str	r7, [fp, #-100]	@, %sfp
	ldr	r7, [fp, #-84]	@, %sfp
	cmp	r8, #255	@,
	movge	r8, #255	@,
	str	r8, [fp, #-88]	@, %sfp
	cmp	r7, #255	@,
	movge	r7, #255	@,
	ldr	r8, [fp, #-116]	@ Temp.1310, %sfp
	str	r7, [fp, #-116]	@, %sfp
	ldr	r7, [fp, #-112]	@, %sfp
	cmp	r8, #255	@ Temp.1310,
	movge	r8, #255	@ Temp.1310,
	str	sl, [fp, #-112]	@ Temp.1349, %sfp
	cmp	r8, #1	@ Temp.1310,
	movlt	r8, #1	@ tmp223,
	cmp	r7, #1	@,
	movlt	r7, #1	@,
	str	r7, [fp, #-84]	@, %sfp
	ldr	sl, [fp, #-84]	@, %sfp
	ldr	r7, [fp, #-88]	@, %sfp
	strb	r9, [r0, #1155]	@ tmp233, <variable>.DcNodeContexts
	cmp	r7, #1	@,
	movlt	r7, #1	@,
	str	r7, [fp, #-88]	@, %sfp
	strb	sl, [r0, #1152]	@, <variable>.DcNodeContexts
	ldr	sl, [fp, #-88]	@, %sfp
	ldr	r9, [fp, #-92]	@, %sfp
	ldr	r7, [fp, #-116]	@ tmp243, %sfp
	strb	sl, [r0, #1153]	@, <variable>.DcNodeContexts
	ldr	sl, [fp, #-136]	@, %sfp
	cmp	r7, #1	@ tmp243,
	movlt	r7, #1	@ tmp243,
	strb	r8, [r0, #1154]	@ tmp223, <variable>.DcNodeContexts
	strb	r7, [r0, #1156]	@ tmp243, <variable>.DcNodeContexts
	ldr	r8, [fp, #-140]	@, %sfp
	ldr	r7, [fp, #-96]	@, %sfp
	strb	r9, [r0, #1158]	@, <variable>.DcNodeContexts
	strb	sl, [r0, #1159]	@, <variable>.DcNodeContexts
	ldr	r9, [fp, #-100]	@, %sfp
	ldr	sl, [fp, #-112]	@, %sfp
	strb	r7, [r0, #1160]	@, <variable>.DcNodeContexts
	strb	r8, [r0, #1161]	@, <variable>.DcNodeContexts
	ldr	r7, [r3, #32]	@, <variable>.M
	ldr	r8, [r3, #56]	@, <variable>.M
	strb	r9, [r0, #1162]	@, <variable>.DcNodeContexts
	strb	sl, [r0, #1163]	@, <variable>.DcNodeContexts
	ldr	r9, [r3, #80]	@, <variable>.M
	ldr	sl, [r3, #104]	@, <variable>.M
	strb	r2, [r0, #1157]	@ <variable>.DcProbs, <variable>.DcNodeContexts
	str	r7, [fp, #-84]	@, %sfp
	str	r8, [fp, #-112]	@, %sfp
	str	r9, [fp, #-152]	@, %sfp
	str	sl, [fp, #-160]	@, %sfp
	ldr	r7, [r3, #16]	@, <variable>.M
	ldr	r8, [r3, #40]	@, <variable>.M
	ldr	r9, [r3, #64]	@, <variable>.M
	str	r7, [fp, #-116]	@, %sfp
	str	r8, [fp, #-120]	@, %sfp
	ldr	r8, [fp, #-116]	@, %sfp
	ldr	sl, [r3, #88]	@, <variable>.M
	ldr	r7, [r3, #112]	@, <variable>.M
	mul	r6, r8, r6	@ tmp321,, <variable>.DcProbs
	str	r9, [fp, #-124]	@, %sfp
	str	sl, [fp, #-128]	@, %sfp
	ldr	r9, [r3, #116]	@, <variable>.C
	ldr	sl, [fp, #-120]	@, %sfp
	str	r7, [fp, #-132]	@, %sfp
	ldr	r8, [fp, #-124]	@, %sfp
	ldr	r7, [r3, #36]	@, <variable>.C
	str	r9, [fp, #-184]	@, %sfp
	mul	r9, sl, r5	@ tmp331,, <variable>.DcProbs
	add	sl, r6, #128	@, tmp321,
	ldr	r6, [fp, #-128]	@, %sfp
	str	r7, [fp, #-88]	@, %sfp
	str	sl, [fp, #-192]	@, %sfp
	mul	r7, r8, r4	@ tmp341,, <variable>.DcProbs
	add	r8, r9, #128	@, tmp331,
	mul	sl, r6, ip	@ tmp351,, <variable>.DcProbs
	ldr	r6, [fp, #-132]	@, %sfp
	str	r8, [fp, #-200]	@, %sfp
	add	r7, r7, #128	@, tmp341,
	ldr	r9, [fp, #-84]	@, %sfp
	mul	r8, r6, r1	@ tmp361,, <variable>.DcProbs
	str	r7, [fp, #-208]	@, %sfp
	ldr	r7, [fp, #-112]	@, %sfp
	add	r6, sl, #128	@, tmp351,
	mul	r5, r9, r5	@ tmp269,, <variable>.DcProbs
	str	r6, [fp, #-216]	@, %sfp
	add	r9, r8, #128	@, tmp361,
	ldr	r8, [fp, #-152]	@, %sfp
	mul	r6, r7, r4	@ tmp279,, <variable>.DcProbs
	ldr	sl, [fp, #-160]	@, %sfp
	mul	r7, r8, ip	@ tmp289,, <variable>.DcProbs
	str	r9, [fp, #-224]	@, %sfp
	mul	r8, sl, r1	@ tmp299,, <variable>.DcProbs
	add	r4, r6, #128	@ tmp281, tmp279,
	ldr	sl, [r3, #60]	@, <variable>.C
	add	r5, r5, #128	@ tmp271, tmp269,
	ldr	r6, [r3, #84]	@, <variable>.C
	add	ip, r7, #128	@ tmp291, tmp289,
	ldr	r9, [fp, #-88]	@, %sfp
	add	r1, r8, #128	@ tmp301, tmp299,
	str	sl, [fp, #-148]	@, %sfp
	add	r4, sl, r4, asr #8	@, Temp.1370,, tmp281,
	add	r5, r9, r5, asr #8	@,,, tmp271,
	str	r6, [fp, #-156]	@, %sfp
	str	r5, [fp, #-232]	@, %sfp
	add	ip, r6, ip, asr #8	@, Temp.1381,, tmp291,
	ldr	r7, [r3, #108]	@, <variable>.C
	cmp	r4, #255	@ Temp.1370,
	movge	r4, #255	@ Temp.1371,
	ldr	r9, [r3, #20]	@, <variable>.C
	cmp	ip, #255	@ Temp.1381,
	movge	ip, #255	@ Temp.1382,
	ldr	sl, [r3, #44]	@, <variable>.C
	add	r1, r7, r1, asr #8	@, Temp.1392,, tmp301,
	ldr	r8, [fp, #-192]	@, %sfp
	cmp	r4, #1	@ Temp.1371,
	movlt	r4, #1	@ tmp285,
	str	r7, [fp, #-164]	@, %sfp
	cmp	ip, #1	@ Temp.1382,
	movlt	ip, #1	@ tmp295,
	ldr	r7, [fp, #-200]	@, %sfp
	cmp	r1, #255	@ Temp.1392,
	movge	r1, #255	@ Temp.1393,
	ldr	r5, [r3, #68]	@, <variable>.C
	add	r6, r9, r8, asr #8	@, Temp.1409,,,
	str	r9, [fp, #-168]	@, %sfp
	cmp	r6, #255	@ Temp.1409,
	movge	r6, #255	@ Temp.1410,
	add	r9, sl, r7, asr #8	@, Temp.1420,,,
	str	sl, [fp, #-172]	@, %sfp
	ldr	sl, [fp, #-208]	@, %sfp
	cmp	r9, #255	@ Temp.1420,
	movge	r9, #255	@ Temp.1421,
	ldr	r3, [r3, #92]	@, <variable>.C
	cmp	r9, #1	@ Temp.1421,
	movlt	r9, #1	@ tmp337,
	ldr	r8, [fp, #-216]	@, %sfp
	cmp	r1, #1	@ Temp.1393,
	movlt	r1, #1	@ tmp305,
	add	r7, r5, sl, asr #8	@, Temp.1431,,,
	str	r5, [fp, #-176]	@, %sfp
	ldr	r5, [fp, #-224]	@, %sfp
	cmp	r7, #255	@ Temp.1431,
	movge	r7, #255	@ Temp.1432,
	add	sl, r3, r8, asr #8	@, Temp.1442,,,
	str	r3, [fp, #-180]	@, %sfp
	ldr	r3, [fp, #-184]	@, %sfp
	cmp	sl, #255	@ Temp.1442,
	movge	sl, #255	@ Temp.1443,
	strb	r4, [r0, #1165]	@ tmp285, <variable>.DcNodeContexts
	cmp	r6, #1	@ Temp.1410,
	movlt	r6, #1	@ tmp327,
	add	r8, r3, r5, asr #8	@, Temp.1453,,,
	ldr	r4, [fp, #-136]	@, %sfp
	ldr	r5, [fp, #-92]	@, %sfp
	cmp	r8, #255	@ Temp.1453,
	movge	r8, #255	@ Temp.1454,
	ldr	r3, [fp, #-232]	@ Temp.1360, %sfp
	cmp	r7, #1	@ Temp.1432,
	movlt	r7, #1	@ tmp347,
	strb	ip, [r0, #1166]	@ tmp295, <variable>.DcNodeContexts
	cmp	sl, #1	@ Temp.1443,
	movlt	sl, #1	@ tmp357,
	ldr	ip, [fp, #-96]	@, %sfp
	cmp	r3, #255	@ Temp.1360,
	movge	r3, #255	@ Temp.1360,
	strb	r9, [r0, #1175]	@ tmp337, <variable>.DcNodeContexts
	cmp	r3, #1	@ Temp.1360,
	movlt	r3, #1	@ tmp275,
	ldr	r9, [fp, #-140]	@, %sfp
	cmp	r8, #1	@ Temp.1454,
	movlt	r8, #1	@ tmp367,
	strb	r3, [r0, #1164]	@ tmp275, <variable>.DcNodeContexts
	strb	r1, [r0, #1167]	@ tmp305, <variable>.DcNodeContexts
	strb	r6, [r0, #1174]	@ tmp327, <variable>.DcNodeContexts
	strb	r7, [r0, #1176]	@ tmp347, <variable>.DcNodeContexts
	strb	sl, [r0, #1177]	@ tmp357, <variable>.DcNodeContexts
	strb	r8, [r0, #1178]	@ tmp367, <variable>.DcNodeContexts
	strb	r2, [r0, #1168]	@ <variable>.DcProbs, <variable>.DcNodeContexts
	strb	r5, [r0, #1169]	@, <variable>.DcNodeContexts
	strb	r4, [r0, #1170]	@, <variable>.DcNodeContexts
	strb	ip, [r0, #1171]	@, <variable>.DcNodeContexts
	strb	r9, [r0, #1172]	@, <variable>.DcNodeContexts
	ldrb	r5, [r0, #525]	@ zero_extendqisi2	@ <variable>.DcProbs, <variable>.DcProbs
	ldrb	r4, [r0, #526]	@ zero_extendqisi2	@ <variable>.DcProbs, <variable>.DcProbs
	ldr	r7, [fp, #-52]	@, %sfp
	ldr	r8, [fp, #-56]	@, %sfp
	ldrb	sl, [r0, #530]	@ zero_extendqisi2	@, <variable>.DcProbs
	ldrb	r6, [r0, #532]	@ zero_extendqisi2	@, <variable>.DcProbs
	strb	r2, [r0, #1179]	@ <variable>.DcProbs, <variable>.DcNodeContexts
	ldr	r2, [fp, #-116]	@, %sfp
	ldrb	ip, [r0, #527]	@ zero_extendqisi2	@ <variable>.DcProbs, <variable>.DcProbs
	mul	r1, r7, r5	@ tmp383,, <variable>.DcProbs
	str	sl, [fp, #-52]	@, %sfp
	ldr	r7, [fp, #-120]	@, %sfp
	mul	sl, r8, r4	@ tmp393,, <variable>.DcProbs
	ldr	r8, [fp, #-124]	@, %sfp
	str	r6, [fp, #-56]	@, %sfp
	add	r1, r1, #128	@ tmp385, tmp383,
	mul	r6, r2, r5	@ tmp507,, <variable>.DcProbs
	ldrb	r9, [r0, #528]	@ zero_extendqisi2	@ <variable>.DcProbs, <variable>.DcProbs
	ldr	r3, [fp, #-100]	@, %sfp
	add	sl, sl, #128	@ tmp395, tmp393,
	mul	r2, r7, r4	@ tmp517,, <variable>.DcProbs
	add	r6, r6, #128	@, tmp507,
	mul	r7, r8, ip	@ tmp527,, <variable>.DcProbs
	ldr	r8, [fp, #-128]	@, %sfp
	strb	r3, [r0, #1173]	@, <variable>.DcNodeContexts
	add	r2, r2, #128	@, tmp517,
	ldrb	r3, [r0, #529]	@ zero_extendqisi2	@ <variable>.DcProbs, <variable>.DcProbs
	str	r6, [fp, #-116]	@, %sfp
	mul	r6, r8, r9	@ tmp537,, <variable>.DcProbs
	ldr	r8, [fp, #-132]	@, %sfp
	str	r2, [fp, #-120]	@, %sfp
	mul	r2, r8, r3	@ tmp547,, <variable>.DcProbs
	add	r8, r7, #128	@, tmp527,
	ldr	r7, [fp, #-48]	@, %sfp
	str	r8, [fp, #-124]	@, %sfp
	mul	r8, r7, ip	@ tmp403,, <variable>.DcProbs
	add	r7, r6, #128	@, tmp537,
	ldr	r6, [fp, #-72]	@, %sfp
	str	r7, [fp, #-128]	@, %sfp
	add	r8, r8, #128	@ tmp405, tmp403,
	mul	r7, r6, r9	@ tmp413,, <variable>.DcProbs
	add	r6, r2, #128	@, tmp547,
	ldr	r2, [fp, #-80]	@, %sfp
	str	r6, [fp, #-132]	@, %sfp
	add	r7, r7, #128	@ tmp415, tmp413,
	mul	r6, r2, r3	@ tmp423,, <variable>.DcProbs
	ldr	r2, [fp, #-108]	@, %sfp
	mul	r5, r2, r5	@ tmp445,, <variable>.DcProbs
	ldr	r2, [fp, #-84]	@, %sfp
	add	r6, r6, #128	@ tmp425, tmp423,
	mul	r4, r2, r4	@ tmp455,, <variable>.DcProbs
	ldr	r2, [fp, #-112]	@, %sfp
	add	r5, r5, #128	@ tmp447, tmp445,
	mul	ip, r2, ip	@ tmp465,, <variable>.DcProbs
	ldr	r2, [fp, #-152]	@, %sfp
	add	r4, r4, #128	@ tmp457, tmp455,
	mul	r9, r2, r9	@ tmp475,, <variable>.DcProbs
	ldr	r2, [fp, #-160]	@, %sfp
	add	ip, ip, #128	@ tmp467, tmp465,
	mul	r3, r2, r3	@ tmp485,, <variable>.DcProbs
	ldr	r2, [fp, #-60]	@, %sfp
	add	r9, r9, #128	@ tmp477, tmp475,
	add	r1, r2, r1, asr #8	@, Temp.1110,, tmp385,
	ldr	r2, [fp, #-64]	@, %sfp
	add	r3, r3, #128	@, tmp485,
	cmp	r1, #255	@ Temp.1110,
	movge	r1, #255	@ Temp.1110,
	add	sl, r2, sl, asr #8	@, Temp.1115,, tmp395,
	ldrb	r2, [r0, #533]	@ zero_extendqisi2	@, <variable>.DcProbs
	cmp	sl, #255	@ Temp.1115,
	movge	sl, #255	@ Temp.1115,
	str	r2, [fp, #-60]	@, %sfp
	str	sl, [fp, #-64]	@ Temp.1115, %sfp
	ldr	sl, [fp, #-68]	@, %sfp
	str	r3, [fp, #-48]	@, %sfp
	add	r8, sl, r8, asr #8	@, Temp.1188,, tmp405,
	ldr	sl, [fp, #-76]	@, %sfp
	str	r1, [fp, #-80]	@ Temp.1110, %sfp
	add	r7, sl, r7, asr #8	@, Temp.1199,, tmp415,
	ldr	sl, [fp, #-104]	@, %sfp
	ldrb	r2, [r0, #534]	@ zero_extendqisi2	@ <variable>.DcProbs, <variable>.DcProbs
	add	r6, sl, r6, asr #8	@, Temp.1210,, tmp425,
	ldr	sl, [fp, #-144]	@, %sfp
	ldrb	r3, [r0, #535]	@ zero_extendqisi2	@ <variable>.DcProbs, <variable>.DcProbs
	add	r5, sl, r5, asr #8	@, Temp.1227,, tmp447,
	ldr	sl, [fp, #-88]	@, %sfp
	ldrb	r1, [r0, #531]	@ zero_extendqisi2	@ <variable>.DcProbs, <variable>.DcProbs
	add	r4, sl, r4, asr #8	@,,, tmp457,
	str	r4, [fp, #-88]	@, %sfp
	ldr	r4, [fp, #-148]	@, %sfp
	ldr	sl, [fp, #-156]	@, %sfp
	add	ip, r4, ip, asr #8	@,,, tmp467,
	ldr	r4, [fp, #-48]	@, %sfp
	str	ip, [fp, #-84]	@, %sfp
	add	r9, sl, r9, asr #8	@, Temp.1260,, tmp477,
	ldr	ip, [fp, #-164]	@, %sfp
	add	sl, ip, r4, asr #8	@, Temp.1271,,,
	ldr	r4, [fp, #-116]	@, %sfp
	ldr	ip, [fp, #-168]	@, %sfp
	add	ip, ip, r4, asr #8	@,,,,
	ldr	r4, [fp, #-120]	@, %sfp
	str	ip, [fp, #-76]	@, %sfp
	ldr	ip, [fp, #-172]	@, %sfp
	add	ip, ip, r4, asr #8	@,,,,
	ldr	r4, [fp, #-124]	@, %sfp
	str	ip, [fp, #-72]	@, %sfp
	ldr	ip, [fp, #-176]	@, %sfp
	add	ip, ip, r4, asr #8	@,,,,
	ldr	r4, [fp, #-128]	@, %sfp
	str	ip, [fp, #-68]	@, %sfp
	ldr	ip, [fp, #-180]	@, %sfp
	add	ip, ip, r4, asr #8	@,,,,
	ldr	r4, [fp, #-132]	@, %sfp
	str	ip, [fp, #-48]	@, %sfp
	ldr	ip, [fp, #-184]	@, %sfp
	add	ip, ip, r4, asr #8	@,,,,
	ldr	r4, [fp, #-80]	@, %sfp
	str	ip, [fp, #-104]	@, %sfp
	cmp	r4, #1	@,
	movlt	r4, #1	@,
	str	r4, [fp, #-80]	@, %sfp
	ldr	ip, [fp, #-64]	@, %sfp
	ldr	r4, [fp, #-88]	@ Temp.1239, %sfp
	cmp	ip, #1	@,
	movlt	ip, #1	@,
	cmp	sl, #255	@ Temp.1271,
	movge	sl, #255	@ Temp.1271,
	str	ip, [fp, #-108]	@, %sfp
	cmp	r8, #255	@ Temp.1188,
	movge	r8, #255	@ Temp.1189,
	ldr	ip, [fp, #-84]	@ Temp.1250, %sfp
	cmp	r7, #255	@ Temp.1199,
	movge	r7, #255	@ Temp.1200,
	str	sl, [fp, #-84]	@ Temp.1271, %sfp
	cmp	r6, #255	@ Temp.1210,
	movge	r6, #255	@ Temp.1211,
	ldr	sl, [fp, #-76]	@, %sfp
	cmp	r9, #255	@ Temp.1260,
	movge	r9, #255	@ Temp.1261,
	cmp	r8, #1	@ Temp.1189,
	movlt	r8, #1	@ tmp409,
	cmp	r7, #1	@ Temp.1200,
	movlt	r7, #1	@ tmp419,
	cmp	sl, #255	@,
	movge	sl, #255	@,
	str	sl, [fp, #-76]	@, %sfp
	ldr	sl, [fp, #-72]	@, %sfp
	cmp	r6, #1	@ Temp.1211,
	movlt	r6, #1	@ tmp429,
	cmp	r9, #1	@ Temp.1261,
	movlt	r9, #1	@ tmp481,
	strb	r8, [r0, #1187]	@ tmp409, <variable>.DcNodeContexts
	cmp	sl, #255	@,
	movge	sl, #255	@,
	str	sl, [fp, #-72]	@, %sfp
	ldr	sl, [fp, #-68]	@, %sfp
	cmp	r5, #255	@ Temp.1227,
	movge	r5, #255	@ Temp.1228,
	strb	r7, [r0, #1188]	@ tmp419, <variable>.DcNodeContexts
	cmp	r4, #255	@ Temp.1239,
	movge	r4, #255	@ Temp.1239,
	cmp	sl, #255	@,
	movge	sl, #255	@,
	str	sl, [fp, #-68]	@, %sfp
	ldr	sl, [fp, #-48]	@, %sfp
	cmp	ip, #255	@ Temp.1250,
	movge	ip, #255	@ Temp.1250,
	ldr	r7, [fp, #-76]	@ tmp513, %sfp
	cmp	r5, #1	@ Temp.1228,
	movlt	r5, #1	@ tmp451,
	cmp	sl, #255	@,
	movge	sl, #255	@,
	str	sl, [fp, #-64]	@, %sfp
	ldr	sl, [fp, #-104]	@, %sfp
	cmp	r4, #1	@ Temp.1239,
	movlt	r4, #1	@ tmp461,
	cmp	ip, #1	@ Temp.1250,
	movlt	ip, #1	@ tmp471,
	cmp	r7, #1	@ tmp513,
	movlt	r7, #1	@ tmp513,
	cmp	sl, #255	@,
	movge	sl, #255	@,
	str	sl, [fp, #-48]	@, %sfp
	ldr	sl, [fp, #-92]	@, %sfp
	strb	sl, [r0, #1180]	@, <variable>.DcNodeContexts
	ldr	sl, [fp, #-136]	@, %sfp
	strb	sl, [r0, #1181]	@, <variable>.DcNodeContexts
	ldr	sl, [fp, #-96]	@, %sfp
	strb	sl, [r0, #1182]	@, <variable>.DcNodeContexts
	ldr	sl, [fp, #-140]	@, %sfp
	strb	sl, [r0, #1183]	@, <variable>.DcNodeContexts
	ldr	sl, [fp, #-100]	@, %sfp
	strb	sl, [r0, #1184]	@, <variable>.DcNodeContexts
	ldr	sl, [fp, #-80]	@, %sfp
	strb	sl, [r0, #1185]	@, <variable>.DcNodeContexts
	ldr	sl, [fp, #-108]	@, %sfp
	strb	sl, [r0, #1186]	@, <variable>.DcNodeContexts
	ldr	sl, [fp, #-84]	@ tmp491, %sfp
	strb	r6, [r0, #1189]	@ tmp429, <variable>.DcNodeContexts
	cmp	sl, #1	@ tmp491,
	movlt	sl, #1	@ tmp491,
	ldr	r8, [fp, #-52]	@, %sfp
	strb	r9, [r0, #1199]	@ tmp481, <variable>.DcNodeContexts
	strb	sl, [r0, #1200]	@ tmp491, <variable>.DcNodeContexts
	ldr	r9, [fp, #-56]	@, %sfp
	ldr	sl, [fp, #-60]	@, %sfp
	ldr	r6, [fp, #-72]	@ tmp523, %sfp
	strb	r5, [r0, #1196]	@ tmp451, <variable>.DcNodeContexts
	strb	r4, [r0, #1197]	@ tmp461, <variable>.DcNodeContexts
	cmp	r6, #1	@ tmp523,
	movlt	r6, #1	@ tmp523,
	ldr	r5, [fp, #-68]	@ tmp533, %sfp
	ldr	r4, [fp, #-64]	@ tmp543, %sfp
	strb	ip, [r0, #1198]	@ tmp471, <variable>.DcNodeContexts
	cmp	r5, #1	@ tmp533,
	movlt	r5, #1	@ tmp533,
	ldr	ip, [fp, #-48]	@ tmp553, %sfp
	cmp	r4, #1	@ tmp543,
	movlt	r4, #1	@ tmp543,
	strb	r8, [r0, #1190]	@, <variable>.DcNodeContexts
	cmp	ip, #1	@ tmp553,
	movlt	ip, #1	@ tmp553,
	strb	r1, [r0, #1191]	@ <variable>.DcProbs, <variable>.DcNodeContexts
	strb	r9, [r0, #1192]	@, <variable>.DcNodeContexts
	strb	sl, [r0, #1193]	@, <variable>.DcNodeContexts
	strb	r2, [r0, #1194]	@ <variable>.DcProbs, <variable>.DcNodeContexts
	strb	r3, [r0, #1195]	@ <variable>.DcProbs, <variable>.DcNodeContexts
	strb	r8, [r0, #1201]	@, <variable>.DcNodeContexts
	strb	r1, [r0, #1202]	@ <variable>.DcProbs, <variable>.DcNodeContexts
	strb	r3, [r0, #1217]	@ <variable>.DcProbs, <variable>.DcNodeContexts
	strb	r7, [r0, #1207]	@ tmp513, <variable>.DcNodeContexts
	strb	r6, [r0, #1208]	@ tmp523, <variable>.DcNodeContexts
	strb	r5, [r0, #1209]	@ tmp533, <variable>.DcNodeContexts
	strb	r4, [r0, #1210]	@ tmp543, <variable>.DcNodeContexts
	strb	ip, [r0, #1211]	@ tmp553, <variable>.DcNodeContexts
	strb	r8, [r0, #1212]	@, <variable>.DcNodeContexts
	strb	r1, [r0, #1213]	@ <variable>.DcProbs, <variable>.DcNodeContexts
	strb	r9, [r0, #1214]	@, <variable>.DcNodeContexts
	strb	sl, [r0, #1215]	@, <variable>.DcNodeContexts
	strb	r2, [r0, #1216]	@ <variable>.DcProbs, <variable>.DcNodeContexts
	strb	r9, [r0, #1203]	@, <variable>.DcNodeContexts
	strb	sl, [r0, #1204]	@, <variable>.DcNodeContexts
	strb	r2, [r0, #1205]	@ <variable>.DcProbs, <variable>.DcNodeContexts
	strb	r3, [r0, #1206]	@ <variable>.DcProbs, <variable>.DcNodeContexts
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
	.fnend
	.size	VP6_ConfigureContexts, .-VP6_ConfigureContexts
	.align	2
	.global	VP6_BoolTreeToHuffCodes
	.type	VP6_BoolTreeToHuffCodes, %function
VP6_BoolTreeToHuffCodes:
	.fnstart
.LFB1542:
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
	ldrb	ip, [r0, #1]	@ zero_extendqisi2	@ tmp159,
	ldrb	r2, [r0, #0]	@ zero_extendqisi2	@ tmp160,* pBoolTreeProbs
	mul	r3, r2, ip	@ tmp161, tmp160, tmp159
	mov	r4, r3, lsr #8	@ tmp162, tmp161,
	str	r4, [r1, #44]	@ tmp162,
	ldrb	ip, [r0, #1]	@ zero_extendqisi2	@ tmp163,
	ldrb	r2, [r0, #0]	@ zero_extendqisi2	@ tmp165,* pBoolTreeProbs
	rsb	r3, ip, #255	@ tmp164, tmp163,
	mul	r4, r2, r3	@ tmp166, tmp165, tmp164
	mov	ip, r4, lsr #8	@ tmp167, tmp166,
	str	ip, [r1, #0]	@ tmp167,* pHuffProbs
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ tmp168,* pBoolTreeProbs
	ldrb	r4, [r0, #2]	@ zero_extendqisi2	@ tmp169,
	rsb	r3, r3, #255	@ Prob, tmp168,
	mul	r2, r3, r4	@ tmp170, Prob, tmp169
	mov	ip, r2, lsr #8	@ tmp171, tmp170,
	str	ip, [r1, #4]	@ tmp171,
	ldrb	r4, [r0, #2]	@ zero_extendqisi2	@ tmp172,
	ldrb	ip, [r0, #3]	@ zero_extendqisi2	@ tmp174,
	rsb	r2, r4, #255	@ tmp173, tmp172,
	ldrb	r4, [r0, #4]	@ zero_extendqisi2	@ tmp176,
	mul	r2, r3, r2	@ D.39214, Prob, tmp173
	mov	r2, r2, lsr #8	@ Prob.1493, D.39214,
	mul	ip, ip, r2	@ tmp175, tmp174, Prob.1493
	mov	ip, ip, lsr #8	@ Prob1, tmp175,
	mul	r3, r4, ip	@ tmp177, tmp176, Prob1
	mov	r4, r3, lsr #8	@ tmp178, tmp177,
	str	r4, [r1, #8]	@ tmp178,
	ldrb	r3, [r0, #4]	@ zero_extendqisi2	@ tmp179,
	ldrb	r4, [r0, #5]	@ zero_extendqisi2	@ tmp181,
	rsb	r3, r3, #255	@ tmp180, tmp179,
	mul	r3, r3, ip	@ D.39227, tmp180, Prob1
	mov	r3, r3, lsr #8	@ Prob1.1495, D.39227,
	mul	ip, r4, r3	@ tmp182, tmp181, Prob1.1495
	mov	ip, ip, lsr #8	@ tmp183, tmp182,
	str	ip, [r1, #12]	@ tmp183,
	ldrb	r4, [r0, #5]	@ zero_extendqisi2	@ tmp184,
	rsb	ip, r4, #255	@ tmp185, tmp184,
	mul	r4, ip, r3	@ tmp186, tmp185, Prob1.1495
	mov	r3, r4, lsr #8	@ tmp187, tmp186,
	str	r3, [r1, #16]	@ tmp187,
	ldrb	r4, [r0, #3]	@ zero_extendqisi2	@ tmp188,
	ldrb	r3, [r0, #6]	@ zero_extendqisi2	@ tmp190,
	rsb	ip, r4, #255	@ tmp189, tmp188,
	ldrb	r4, [r0, #7]	@ zero_extendqisi2	@ tmp192,
	mul	r2, ip, r2	@ D.39241, tmp189, Prob.1493
	mov	ip, r2, lsr #8	@ Prob.1498, D.39241,
	mul	r3, r3, ip	@ tmp191, tmp190, Prob.1498
	mov	r3, r3, lsr #8	@ Prob1.1499, tmp191,
	mul	r2, r4, r3	@ tmp193, tmp192, Prob1.1499
	mov	r2, r2, lsr #8	@ tmp194, tmp193,
	str	r2, [r1, #20]	@ tmp194,
	ldrb	r4, [r0, #7]	@ zero_extendqisi2	@ tmp195,
	rsb	r2, r4, #255	@ tmp196, tmp195,
	mul	r4, r2, r3	@ tmp197, tmp196, Prob1.1499
	mov	r3, r4, lsr #8	@ tmp198, tmp197,
	str	r3, [r1, #24]	@ tmp198,
	ldrb	r4, [r0, #6]	@ zero_extendqisi2	@ tmp199,
	ldrb	r3, [r0, #8]	@ zero_extendqisi2	@ tmp201,
	rsb	r2, r4, #255	@ tmp200, tmp199,
	ldrb	r4, [r0, #9]	@ zero_extendqisi2	@ tmp203,
	mul	r2, r2, ip	@ D.39259, tmp200, Prob.1498
	mov	r2, r2, lsr #8	@ Prob.1502, D.39259,
	mul	r3, r3, r2	@ tmp202, tmp201, Prob.1502
	mov	r3, r3, lsr #8	@ Prob1.1503, tmp202,
	mul	ip, r4, r3	@ tmp204, tmp203, Prob1.1503
	mov	ip, ip, lsr #8	@ tmp205, tmp204,
	str	ip, [r1, #28]	@ tmp205,
	ldrb	ip, [r0, #9]	@ zero_extendqisi2	@ tmp206,
	rsb	ip, ip, #255	@ tmp207, tmp206,
	mul	r3, ip, r3	@ tmp208, tmp207, Prob1.1503
	mov	ip, r3, lsr #8	@ tmp209, tmp208,
	str	ip, [r1, #32]	@ tmp209,
	ldrb	r3, [r0, #8]	@ zero_extendqisi2	@ tmp210,
	ldrb	ip, [r0, #10]	@ zero_extendqisi2	@ tmp212,
	rsb	r3, r3, #255	@ tmp211, tmp210,
	mul	r3, r3, r2	@ D.39277, tmp211, Prob.1502
	mov	r3, r3, lsr #8	@ Prob.1506, D.39277,
	mul	r2, ip, r3	@ tmp213, tmp212, Prob.1506
	mov	r2, r2, lsr #8	@ tmp214, tmp213,
	str	r2, [r1, #36]	@ tmp214,
	ldrb	ip, [r0, #10]	@ zero_extendqisi2	@ tmp215,
	rsb	r2, ip, #255	@ tmp216, tmp215,
	mul	r0, r2, r3	@ tmp217, tmp216, Prob.1506
	mov	r3, r0, lsr #8	@ tmp218, tmp217,
	str	r3, [r1, #40]	@ tmp218,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	VP6_BoolTreeToHuffCodes, .-VP6_BoolTreeToHuffCodes
	.align	2
	.global	VP6_ZerosBoolTreeToHuffCodes
	.type	VP6_ZerosBoolTreeToHuffCodes, %function
VP6_ZerosBoolTreeToHuffCodes:
	.fnstart
.LFB1543:
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
	ldrb	r4, [r0, #1]	@ zero_extendqisi2	@ tmp148,
	ldrb	ip, [r0, #0]	@ zero_extendqisi2	@ tmp149,* pBoolTreeProbs
	ldrb	r2, [r0, #2]	@ zero_extendqisi2	@ tmp151,
	mul	r3, ip, r4	@ tmp150, tmp149, tmp148
	mov	ip, r3, lsr #8	@ Prob, tmp150,
	mul	r4, r2, ip	@ tmp152, tmp151, Prob
	mov	r2, r4, lsr #8	@ tmp153, tmp152,
	str	r2, [r1, #0]	@ tmp153,* pHuffProbs
	ldrb	r4, [r0, #2]	@ zero_extendqisi2	@ tmp154,
	rsb	r2, r4, #255	@ tmp155, tmp154,
	mul	r4, ip, r2	@ tmp156, Prob, tmp155
	mov	r3, r4, lsr #8	@ tmp157, tmp156,
	str	r3, [r1, #4]	@ tmp157,
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ tmp158,
	ldrb	ip, [r0, #0]	@ zero_extendqisi2	@ tmp160,* pBoolTreeProbs
	rsb	r4, r2, #255	@ tmp159, tmp158,
	ldrb	r2, [r0, #3]	@ zero_extendqisi2	@ tmp162,
	mul	r3, ip, r4	@ tmp161, tmp160, tmp159
	mov	r4, r3, lsr #8	@ Prob.1535, tmp161,
	mul	ip, r2, r4	@ tmp163, tmp162, Prob.1535
	mov	r2, ip, lsr #8	@ tmp164, tmp163,
	str	r2, [r1, #8]	@ tmp164,
	ldrb	ip, [r0, #3]	@ zero_extendqisi2	@ tmp165,
	rsb	r2, ip, #255	@ tmp166, tmp165,
	mul	r3, r2, r4	@ tmp167, tmp166, Prob.1535
	mov	ip, r3, lsr #8	@ tmp168, tmp167,
	str	ip, [r1, #12]	@ tmp168,
	ldrb	r2, [r0, #0]	@ zero_extendqisi2	@ tmp169,* pBoolTreeProbs
	ldrb	r4, [r0, #4]	@ zero_extendqisi2	@ tmp171,
	rsb	r3, r2, #255	@ tmp170, tmp169,
	ldrb	ip, [r0, #5]	@ zero_extendqisi2	@ tmp174,
	ldrb	r2, [r0, #6]	@ zero_extendqisi2	@ tmp175,
	mul	r3, r4, r3	@ tmp172, tmp171, tmp170
	mov	r4, r3, lsr #8	@ tmp173, tmp172,
	mul	r3, ip, r4	@ D.39337, tmp174, tmp173
	mov	r3, r3, lsr #8	@ Prob.1539, D.39337,
	mul	r2, r2, r3	@ tmp176, tmp175, Prob.1539
	mov	ip, r2, lsr #8	@ tmp177, tmp176,
	str	ip, [r1, #16]	@ tmp177,
	ldrb	r4, [r0, #6]	@ zero_extendqisi2	@ tmp178,
	rsb	r2, r4, #255	@ tmp179, tmp178,
	mul	ip, r2, r3	@ tmp180, tmp179, Prob.1539
	mov	r4, ip, lsr #8	@ tmp181, tmp180,
	str	r4, [r1, #20]	@ tmp181,
	ldrb	r2, [r0, #0]	@ zero_extendqisi2	@ tmp182,* pBoolTreeProbs
	ldrb	r4, [r0, #4]	@ zero_extendqisi2	@ tmp184,
	rsb	r3, r2, #255	@ tmp183, tmp182,
	ldrb	ip, [r0, #5]	@ zero_extendqisi2	@ tmp187,
	ldrb	r2, [r0, #7]	@ zero_extendqisi2	@ tmp189,
	mul	r3, r4, r3	@ tmp185, tmp184, tmp183
	rsb	ip, ip, #255	@ tmp188, tmp187,
	mov	r3, r3, lsr #8	@ tmp186, tmp185,
	mul	r3, ip, r3	@ D.39353, tmp188, tmp186
	mov	ip, r3, lsr #8	@ Prob.1550, D.39353,
	mul	r2, r2, ip	@ tmp190, tmp189, Prob.1550
	mov	r2, r2, lsr #8	@ tmp191, tmp190,
	str	r2, [r1, #24]	@ tmp191,
	ldrb	r2, [r0, #7]	@ zero_extendqisi2	@ tmp192,
	rsb	r2, r2, #255	@ tmp193, tmp192,
	mul	r3, r2, ip	@ tmp194, tmp193, Prob.1550
	mov	r2, r3, lsr #8	@ tmp195, tmp194,
	str	r2, [r1, #28]	@ tmp195,
	ldrb	ip, [r0, #0]	@ zero_extendqisi2	@ tmp198,* pBoolTreeProbs
	ldrb	r3, [r0, #4]	@ zero_extendqisi2	@ tmp196,
	rsb	r2, ip, #255	@ tmp199, tmp198,
	rsb	ip, r3, #255	@ tmp197, tmp196,
	mul	r0, r2, ip	@ tmp200, tmp199, tmp197
	mov	r3, r0, lsr #8	@ tmp201, tmp200,
	str	r3, [r1, #32]	@ tmp201,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	VP6_ZerosBoolTreeToHuffCodes, .-VP6_ZerosBoolTreeToHuffCodes
	.align	2
	.global	VP6_InsertSorted
	.type	VP6_InsertSorted, %function
VP6_InsertSorted:
	.fnstart
.LFB1544:
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
	ldr	r3, [r2, #0]	@ which,* pStartnode
	cmn	r3, #1	@ which,
	beq	.L137	@,
	add	r8, r1, r1, asl #1	@, tmp146, node, node,
	add	r4, r3, r3, asl #1	@, tmp150, which, which,
	add	r8, r0, r8, asl #2	@, prephitmp.1576, pSn, tmp146,
	add	r4, r0, r4, asl #2	@, D.39382, pSn, tmp150,
	ldr	r7, [r8, #8]	@ D.39386, <variable>.freq
	ldr	ip, [r4, #8]	@ <variable>.freq, <variable>.freq
	cmp	r7, ip	@ D.39386, <variable>.freq
	bls	.L138	@,
	mov	r6, r3	@ which.1591, which
	b	.L141	@
.L144:
	add	r4, r0, r4, asl #2	@, D.39382, pSn, tmp155,
	ldr	r5, [r4, #8]	@ <variable>.freq, <variable>.freq
	cmp	r7, r5	@ D.39386, <variable>.freq
	bls	.L140	@,
	mov	r6, ip	@ which.1591, which.1587
.L141:
	ldr	ip, [r4, #4]	@ which.1587, <variable>.next
	cmn	ip, #1	@ which.1587,
	add	r4, ip, ip, asl #1	@, tmp155, which.1587, which.1587,
	bne	.L144	@,
.L139:
	add	r6, r6, r6, asl #1	@, tmp160, which.1591, which.1591,
	add	r0, r0, r6, asl #2	@, tmp162, pSn, tmp160,
	str	r1, [r0, #4]	@ node, <variable>.next
	str	ip, [r8, #4]	@ which.1587, <variable>.next
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L140:
	cmp	ip, r3	@ which.1587, which
	bne	.L139	@,
.L138:
	str	r1, [r2, #0]	@ node,* pStartnode
	str	r3, [r8, #4]	@ which, <variable>.next
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L137:
	add	ip, r1, r1, asl #1	@, tmp165, node, node,
	add	r8, r0, ip, asl #2	@, prephitmp.1576, pSn, tmp165,
	b	.L138	@
	.fnend
	.size	VP6_InsertSorted, .-VP6_InsertSorted
	.align	2
	.global	VP6_BuildHuffTree
	.type	VP6_BuildHuffTree, %function
VP6_BuildHuffTree:
	.fnstart
.LFB1545:
	@ args = 0, pretend = 0, frame = 376
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #380
	sub	sp, sp, #380	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r2, #0	@
	mov	r4, #0	@ tmp306,
	str	r2, [fp, #-416]	@, %sfp
	str	r0, [fp, #-420]	@ pHn, %sfp
	str	r4, [fp, #-48]	@ tmp306, startnode
	beq	.L147	@,
	sub	r3, fp, #408	@ tmp307,,
	ldr	r0, [r1, #0]	@ prephitmp.1653,* pCounts
	ldr	r2, [fp, #-416]	@, %sfp
	ldrb	r9, [r3, #0]	@ zero_extendqisi2	@ tmp317,
	cmp	r0, #0	@ prephitmp.1653,
	sub	ip, r2, #1	@ tmp456,,
	add	r2, r3, #8	@ ivtmp.1649, tmp307,
	orr	r5, r9, #1	@ tmp327, tmp317,
	and	ip, ip, #1	@ tmp458, tmp456,
	and	r5, r5, #225	@ tmp336, tmp327,
	mvn	r9, #0	@ tmp451,
	bfi	r5, r4, #5, #3	@ tmp336, tmp306,,
	strb	r5, [r3, #0]	@ tmp336,
	beq	.L179	@,
.L162:
	ldr	r4, [fp, #-416]	@, %sfp
	mov	r3, #1	@ i,
	str	r0, [r2, #0]	@ prephitmp.1653, <variable>.freq
	add	r0, r2, #12	@ ivtmp.1649, ivtmp.1649,
	cmp	r3, r4	@ i,
	str	r9, [r2, #-4]	@ tmp451, <variable>.next
	mov	r4, #4	@ ivtmp.1648,
	beq	.L174	@,
	cmp	ip, #0	@ tmp458,
	beq	.L149	@,
	sub	r2, fp, #32	@ tmp510,,
	ldr	ip, [r1, r4]	@ prephitmp.1653,* ivtmp.1648
	ldrb	r5, [r2, #-364]!	@ zero_extendqisi2	@ tmp511,
	cmp	ip, #0	@ prephitmp.1653,
	orr	r5, r5, r3	@ tmp514, tmp511,
	moveq	ip, r3	@ prephitmp.1653, i
	bfi	r5, r3, #1, #4	@ tmp514, i,,
	add	r3, r3, #1	@ i, i,
	bfc	r5, #5, #3	@ tmp516,,
	strb	r5, [r2, #0]	@ tmp516,
	streq	ip, [r1, r4]	@ prephitmp.1653,* ivtmp.1648
	add	r4, r4, #4	@ ivtmp.1648, ivtmp.1648,
	str	ip, [r0, #0]	@ prephitmp.1653, <variable>.freq
	ldr	r8, [fp, #-416]	@, %sfp
	str	r9, [r0, #-4]	@ tmp451, <variable>.next
	add	r0, r0, #12	@ ivtmp.1649, ivtmp.1649,
	cmp	r3, r8	@ i,
	beq	.L174	@,
.L149:
	add	r2, r3, #1	@ tmp459, i,
	add	r7, r3, r3, asl #1	@, tmp465, i, i,
	sub	r8, fp, #44	@,,
	ldr	r6, [r1, r4]	@ prephitmp.1653,* ivtmp.1648
	add	r7, r8, r7, asl #2	@, tmp467,, tmp465,
	add	sl, r2, r2, asl #1	@, tmp483, tmp459, tmp459,
	cmp	r6, #0	@ prephitmp.1653,
	add	r5, r4, #4	@ tmp460, ivtmp.1648,
	add	sl, r8, sl, asl #2	@, tmp485,, tmp483,
	ldrb	r8, [r7, #-364]	@ zero_extendqisi2	@ tmp469,
	moveq	r6, #1	@ prephitmp.1653,
	add	ip, r0, #12	@ tmp461, ivtmp.1649,
	orr	r8, r8, #1	@ tmp472, tmp469,
	bfi	r8, r3, #1, #4	@ tmp472, i,,
	bfc	r8, #5, #3	@ tmp474,,
	strb	r8, [r7, #-364]	@ tmp474,
	streq	r6, [r1, r4]	@ prephitmp.1653,* ivtmp.1648
	str	r6, [r0, #0]	@ prephitmp.1653, <variable>.freq
	str	r9, [r0, #-4]	@ tmp451, <variable>.next
	ldrb	r3, [sl, #-364]	@ zero_extendqisi2	@ tmp487,
	ldr	r0, [r1, r5]	@ prephitmp.1653,
	orr	r4, r3, #1	@ tmp490, tmp487,
	cmp	r0, #0	@ prephitmp.1653,
	bfi	r4, r2, #1, #4	@ tmp490, tmp459,,
	bfc	r4, #5, #3	@ tmp492,,
	strb	r4, [sl, #-364]	@ tmp492,
	moveq	sl, #1	@,
	streq	sl, [r1, r5]	@,
	moveq	r0, sl	@ prephitmp.1653,
.L167:
	str	r0, [ip, #0]	@ prephitmp.1653, <variable>.freq
	add	r3, r2, #1	@ i, tmp459,
	ldr	r0, [fp, #-416]	@, %sfp
	add	r4, r5, #4	@ ivtmp.1648, tmp460,
	str	r9, [ip, #-4]	@ tmp451, <variable>.next
	cmp	r3, r0	@ i,
	add	r0, ip, #12	@ ivtmp.1649, tmp461,
	bne	.L149	@,
.L174:
	ldr	sl, [fp, #-416]	@, %sfp
	cmp	sl, #1	@,
	beq	.L173	@,
	sub	r6, fp, #48	@ tmp436,,
	sub	r7, fp, #408	@ tmp447,,
	ldr	lr, [fp, #-416]	@, %sfp
	mov	r1, #1	@,
	mov	r0, r7	@, tmp447
	mov	r2, r6	@, tmp436
	and	r5, lr, r1	@ tmp454,,
	bl	VP6_InsertSorted	@
	ldr	r0, [fp, #-416]	@, %sfp
	mov	r4, #2	@ i.1654,
	cmp	r0, #2	@,
	bls	.L173	@,
	cmp	r5, #0	@ tmp454,
	beq	.L176	@,
	mov	r1, r4	@, i.1654
	mov	r0, r7	@, tmp447
	mov	r2, r6	@, tmp436
	mov	r4, #3	@ i.1654,
	bl	VP6_InsertSorted	@
	ldr	r1, [fp, #-416]	@, %sfp
	cmp	r1, r4	@, i.1654
	bls	.L173	@,
.L176:
	ldr	r8, [fp, #-416]	@ values, %sfp
.L151:
	add	r5, r4, #1	@ tmp455, i.1654,
	mov	r1, r4	@, i.1654
	mov	r0, r7	@, tmp447
	mov	r2, r6	@, tmp436
	bl	VP6_InsertSorted	@
	add	r4, r5, #1	@ i.1654, tmp455,
	mov	r0, r7	@, tmp447
	mov	r1, r5	@, tmp455
	mov	r2, r6	@, tmp436
	bl	VP6_InsertSorted	@
	cmp	r8, r4	@ values, i.1654
	bhi	.L151	@,
.L173:
	ldr	r2, [fp, #-48]	@ prephitmp.1612, startnode
.L147:
	mov	r1, r2, asl #1	@ tmp440, prephitmp.1612,
	sub	r4, fp, #44	@,,
	add	r3, r1, r2	@ tmp346, tmp440, prephitmp.1612
	add	ip, r4, r3, asl #2	@, tmp348,, tmp346,
	ldr	r3, [ip, #-360]	@ D.39435, <variable>.next
	cmn	r3, #1	@ D.39435,
	beq	.L154	@,
	ldr	r9, [fp, #-416]	@, %sfp
	sub	r7, fp, #408	@ tmp355,,
	ldr	r4, [fp, #-420]	@, %sfp
	sub	r6, r9, #-2147483646	@ tmp350,,
	sub	sl, r9, #2	@ tmp352,,
	add	r8, r9, r9, asl #1	@, tmp359,,,
	add	r6, r4, r6, asl #1	@, ivtmp.1632,, tmp350,
	mov	r4, r9	@ sncount,
	add	r5, r7, r8, asl #2	@, tmp361, tmp355, tmp359,
	and	r7, sl, #15	@ ivtmp.1636, tmp352,
	add	r5, r5, #8	@ ivtmp.1638, tmp361,
.L153:
	add	sl, r1, r2	@ tmp372, tmp440, prephitmp.1612
	add	r3, r3, r3, asl #1	@, tmp365, D.39435, D.39435,
	sub	r8, fp, #44	@,,
	add	ip, r4, r4, asl #1	@, tmp399, sncount, sncount,
	add	r3, r8, r3, asl #2	@, tmp367,, tmp365,
	add	lr, r8, sl, asl #2	@, tmp374, tmp2, tmp372,
	add	ip, r8, ip, asl #2	@, tmp401,, tmp399,
	mov	r1, r4	@, sncount
	ldrb	r8, [r3, #-364]	@ zero_extendqisi2	@ <variable>.value, <variable>.value
	sub	r0, fp, #408	@,,
	ldrb	r9, [lr, #-364]	@ zero_extendqisi2	@, <variable>.value
	sub	r2, fp, #48	@,,
	add	r4, r4, #1	@ sncount, sncount,
	str	r9, [fp, #-416]	@, %sfp
	ldr	r9, [r3, #-356]	@ <variable>.freq, <variable>.freq
	ldr	sl, [lr, #-356]	@ <variable>.freq, <variable>.freq
	strb	r8, [r6, #1]	@ <variable>.value, <variable>.rightunion.right
	ldr	r8, [fp, #-416]	@, %sfp
	add	sl, r9, sl	@ sumfreq, <variable>.freq, <variable>.freq
	ldrb	lr, [ip, #-364]	@ zero_extendqisi2	@,
	and	lr, lr, #254	@ tmp412, tmp403,
	strb	r8, [r6, #0]	@, <variable>.leftunion.left
	bfi	lr, r7, #1, #4	@ tmp412, ivtmp.1636,,
	strb	lr, [ip, #-364]	@ tmp412,
	mvn	ip, #0	@,
	str	ip, [r5, #-4]	@, <variable>.next
	ldr	lr, [r3, #-360]	@ <variable>.next, <variable>.next
	sub	r6, r6, #2	@ ivtmp.1632, ivtmp.1632,
	str	sl, [r5, #0]	@ sumfreq, <variable>.freq
	add	r5, r5, #12	@ ivtmp.1638, ivtmp.1638,
	str	lr, [fp, #-48]	@ <variable>.next, startnode
	bl	VP6_InsertSorted	@
	ldr	r2, [fp, #-48]	@ prephitmp.1612, startnode
	sub	r1, r7, #1	@ tmp433, ivtmp.1636,
	and	r7, r1, #15	@ ivtmp.1636, tmp433,
	sub	r0, fp, #44	@,,
	mov	r1, r2, asl #1	@ tmp440, prephitmp.1612,
	add	r3, r1, r2	@ tmp429, tmp440, prephitmp.1612
	add	ip, r0, r3, asl #2	@, tmp431,, tmp429,
	ldr	r3, [ip, #-360]	@ D.39435, <variable>.next
	cmn	r3, #1	@ D.39435,
	bne	.L153	@,
.L154:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L179:
	mov	r0, #1	@ prephitmp.1653,
	str	r0, [r1, #0]	@ prephitmp.1653,* pCounts
	b	.L162	@
	.fnend
	.size	VP6_BuildHuffTree, .-VP6_BuildHuffTree
	.align	2
	.global	VP6_BuildHuffLookupTable
	.type	VP6_BuildHuffLookupTable, %function
VP6_BuildHuffLookupTable:
	.fnstart
.LFB1546:
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
	mov	r6, r1	@ pHuffTable, pHuffTable
.L184:
	mov	r3, #0	@ j,
	mov	r2, r3	@ tmp193, j
.L183:
	add	r3, r3, #1	@ j, j,
	add	ip, r0, r2	@ D.39459, pHuffTreeRoot, tmp193
	rsb	r1, r3, #6	@ tmp145, j,
	mov	r1, r5, asr r1	@ tmp146, i,
	tst	r1, #1	@ tmp146,
	ldreqb	r4, [r0, r2]	@ zero_extendqisi2	@ tmp160,
	ldrneb	r4, [ip, #1]	@ zero_extendqisi2	@ tmp150,
	ubfx	r1, r4, #1, #4	@ torp$value, tmp160,,
	and	ip, r4, #1	@ torp$selector, tmp160,
	mov	r4, r4, lsr #5	@ torp$unused, tmp160,
	mov	r2, r1, asl #1	@ tmp193, torp$value,
	orr	r4, ip, r4, asl #5	@, SR.528, torp$selector, torp$unused,
	orr	r4, r4, r2	@ tmp176, SR.528, tmp193
	eor	r4, r4, #1	@ tmp178, tmp176,
	cmp	r3, #5	@ j,
	movhi	r4, #0	@, tmp186
	andls	r4, r4, #1	@,, tmp186, tmp178
	cmp	r4, #0	@ tmp186,
	bne	.L183	@,
	ldrb	r2, [r5, r6]	@ zero_extendqisi2	@,* pHuffTable
	bfi	r2, r1, #4, #4	@ tmp187, torp$value,,
	bfi	r2, r3, #1, #3	@ tmp189, j,,
	mov	r3, r2	@ tmp191, tmp189
	bfi	r3, ip, #0, #1	@ tmp191, torp$selector,,
	strb	r3, [r5, r6]	@ tmp191,* pHuffTable
	add	r5, r5, #1	@ i, i,
	cmp	r5, #64	@ i,
	bne	.L184	@,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	VP6_BuildHuffLookupTable, .-VP6_BuildHuffLookupTable
	.align	2
	.global	VP6_BuildTreeTab
	.type	VP6_BuildTreeTab, %function
VP6_BuildTreeTab:
	.fnstart
.LFB1547:
	@ args = 0, pretend = 0, frame = 296
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #300
	sub	sp, sp, #300	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r1, #0	@,
	mov	r2, r1	@ k.1857,
	str	r1, [fp, #-332]	@, %sfp
.L189:
	ldr	r9, [fp, #-332]	@, %sfp
	mov	r1, #432	@,
	mla	r3, r1, r9, r0	@ tmp1043,,, pVp6CodecInfo
	mov	r1, #0	@ j,
	add	sl, r3, #8576	@ ivtmp.1751, tmp1043,
	add	r3, sl, #12	@ ivtmp.1751, ivtmp.1751,
.L190:
	ldrb	r9, [r3, #0]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	add	r8, r2, #1	@ k.1991, k.1857,
	add	r4, r2, r0	@ tmp248, k.1857, pVp6CodecInfo
	add	r6, r8, #1	@ k.1987, k.1991,
	add	r5, r6, #1	@ k.1983, k.1987,
	add	ip, r8, r0	@ tmp253, k.1991, pVp6CodecInfo
	strb	r9, [r4, #1218]	@ <variable>.leftunion.l, <variable>.TreeTab
	add	r7, r5, #1	@ k.1979, k.1983,
	ldrb	sl, [r3, #1]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	add	r2, r7, #1	@ k.1973, k.1979,
	add	r8, r2, #1	@ k.1969, k.1973,
	add	r4, r6, r0	@ tmp258, k.1987, pVp6CodecInfo
	add	r6, r5, r0	@ tmp263, k.1983, pVp6CodecInfo
	add	r5, r7, r0	@ tmp268, k.1979, pVp6CodecInfo
	strb	sl, [ip, #1218]	@ <variable>.rightunion.r, <variable>.TreeTab
	add	sl, r2, r0	@ tmp273, k.1973, pVp6CodecInfo
	ldrb	r9, [r3, #2]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	add	r2, r8, #1	@ k.1963, k.1969,
	add	ip, r8, r0	@ tmp278, k.1969, pVp6CodecInfo
	add	r8, r2, r0	@ tmp283, k.1963, pVp6CodecInfo
	add	r2, r2, #1	@ k.1959, k.1963,
	add	r1, r1, #1	@ j, j,
	strb	r9, [r4, #1218]	@ <variable>.leftunion.l, <variable>.TreeTab
	add	r7, r2, r0	@, k.1959, pVp6CodecInfo
	str	r7, [fp, #-48]	@, %sfp
	add	r2, r2, #1	@ k.1948, k.1959,
	ldrb	r7, [r3, #3]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	add	r4, r2, #1	@ k.1944, k.1948,
	add	r9, r2, r0	@, k.1948, pVp6CodecInfo
	str	r9, [fp, #-52]	@, %sfp
	add	r9, r4, r0	@, k.1944, pVp6CodecInfo
	str	r9, [fp, #-56]	@, %sfp
	str	r9, [fp, #-60]	@ tmp4, %sfp
	cmp	r1, #3	@ j,
	strb	r7, [r6, #1218]	@ <variable>.rightunion.r, <variable>.TreeTab
	add	r7, r2, r0	@ tmp308, k.1948, pVp6CodecInfo
	ldrb	r4, [r3, #4]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	add	r2, r2, #119	@ k.1857, k.1948,
	str	r7, [fp, #-64]	@ tmp6, %sfp
	mov	r6, r7	@, tmp308
	str	r7, [fp, #-68]	@ tmp9, %sfp
	mov	r9, r7	@, tmp6
	str	r7, [fp, #-72]	@ tmp6, %sfp
	str	r7, [fp, #-76]	@ tmp9, %sfp
	str	r7, [fp, #-80]	@ tmp6, %sfp
	strb	r4, [r5, #1218]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldrb	r4, [r3, #5]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	str	r7, [fp, #-84]	@ tmp9, %sfp
	str	r7, [fp, #-88]	@ tmp9, %sfp
	str	r7, [fp, #-92]	@ tmp9, %sfp
	str	r7, [fp, #-96]	@ tmp9, %sfp
	strb	r4, [sl, #1218]	@ <variable>.rightunion.r, <variable>.TreeTab
	str	r7, [fp, #-336]	@ tmp4, %sfp
	ldrb	sl, [r3, #6]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	str	r7, [fp, #-100]	@ tmp4, %sfp
	str	r7, [fp, #-104]	@ tmp4, %sfp
	str	r7, [fp, #-108]	@ tmp4, %sfp
	str	r7, [fp, #-112]	@ tmp4, %sfp
	strb	sl, [ip, #1218]	@ <variable>.leftunion.l, <variable>.TreeTab
	mov	ip, r7	@ tmp398, tmp4
	ldrb	sl, [r3, #7]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	str	r7, [fp, #-116]	@ tmp4, %sfp
	str	r7, [fp, #-120]	@ tmp4, %sfp
	str	r7, [fp, #-124]	@ tmp4, %sfp
	str	r7, [fp, #-128]	@ tmp4, %sfp
	str	r7, [fp, #-132]	@ tmp4, %sfp
	strb	sl, [r8, #1218]	@ <variable>.rightunion.r, <variable>.TreeTab
	mov	sl, r7	@ tmp428, tmp4
	ldrb	r8, [r3, #8]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldr	r4, [fp, #-48]	@, %sfp
	str	r7, [fp, #-136]	@ tmp4, %sfp
	str	r7, [fp, #-140]	@ tmp4, %sfp
	str	r7, [fp, #-144]	@ tmp4, %sfp
	str	r7, [fp, #-148]	@ tmp4, %sfp
	str	r7, [fp, #-152]	@ tmp4, %sfp
	strb	r8, [r4, #1218]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r4, [fp, #-52]	@, %sfp
	str	r7, [fp, #-48]	@ tmp4, %sfp
	ldrb	r8, [r3, #9]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	str	r7, [fp, #-156]	@ tmp4, %sfp
	str	r7, [fp, #-160]	@ tmp4, %sfp
	str	r7, [fp, #-164]	@ tmp4, %sfp
	str	r7, [fp, #-168]	@ tmp4, %sfp
	str	r7, [fp, #-172]	@ tmp4, %sfp
	strb	r8, [r4, #1218]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r4, [fp, #-56]	@, %sfp
	str	r7, [fp, #-52]	@ tmp4, %sfp
	ldrb	r8, [r3, #10]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	str	r7, [fp, #-176]	@ tmp4, %sfp
	str	r7, [fp, #-180]	@ tmp4, %sfp
	str	r7, [fp, #-184]	@ tmp4, %sfp
	str	r7, [fp, #-188]	@ tmp4, %sfp
	str	r7, [fp, #-192]	@ tmp4, %sfp
	strb	r8, [r4, #1218]	@ <variable>.leftunion.l, <variable>.TreeTab
	str	r7, [fp, #-56]	@ tmp4, %sfp
	ldrb	r8, [r3, #11]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	str	r7, [fp, #-196]	@ tmp4, %sfp
	ldr	r4, [fp, #-60]	@, %sfp
	str	r7, [fp, #-200]	@ tmp4, %sfp
	str	r7, [fp, #-204]	@ tmp4, %sfp
	str	r7, [fp, #-208]	@ tmp4, %sfp
	str	r7, [fp, #-212]	@ tmp4, %sfp
	strb	r8, [r4, #1219]	@ <variable>.rightunion.r, <variable>.TreeTab
	str	r7, [fp, #-60]	@ tmp4, %sfp
	ldrb	r8, [r3, #12]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	str	r7, [fp, #-216]	@ tmp4, %sfp
	str	r7, [fp, #-220]	@ tmp4, %sfp
	str	r7, [fp, #-224]	@ tmp4, %sfp
	str	r7, [fp, #-228]	@ tmp4, %sfp
	str	r7, [fp, #-232]	@ tmp4, %sfp
	strb	r8, [r7, #1225]	@ <variable>.leftunion.l, <variable>.TreeTab
	mov	r8, r7	@ tmp578, tmp4
	ldr	r4, [fp, #-64]	@, %sfp
	ldrb	r7, [r3, #13]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	str	r6, [fp, #-236]	@ tmp4, %sfp
	str	r6, [fp, #-240]	@ tmp4, %sfp
	str	r6, [fp, #-244]	@ tmp4, %sfp
	str	r6, [fp, #-248]	@ tmp4, %sfp
	str	r6, [fp, #-252]	@ tmp4, %sfp
	strb	r7, [r4, #1226]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r4, [fp, #-68]	@, %sfp
	str	r6, [fp, #-64]	@ tmp4, %sfp
	ldrb	r7, [r3, #14]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	str	r6, [fp, #-256]	@ tmp4, %sfp
	str	r6, [fp, #-260]	@ tmp4, %sfp
	str	r6, [fp, #-264]	@ tmp4, %sfp
	str	r6, [fp, #-268]	@ tmp4, %sfp
	str	r6, [fp, #-272]	@ tmp4, %sfp
	strb	r7, [r4, #1227]	@ <variable>.leftunion.l, <variable>.TreeTab
	str	r6, [fp, #-68]	@ tmp4, %sfp
	ldrb	r7, [r3, #15]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	str	r6, [fp, #-276]	@ tmp4, %sfp
	ldr	r4, [fp, #-72]	@, %sfp
	str	r6, [fp, #-280]	@ tmp4, %sfp
	str	r6, [fp, #-284]	@ tmp4, %sfp
	str	r6, [fp, #-288]	@ tmp4, %sfp
	str	r6, [fp, #-292]	@ tmp4, %sfp
	strb	r7, [r4, #1228]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r4, [fp, #-76]	@, %sfp
	str	r6, [fp, #-72]	@ tmp4, %sfp
	ldrb	r7, [r3, #16]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	str	r6, [fp, #-296]	@ tmp4, %sfp
	str	r6, [fp, #-300]	@ tmp4, %sfp
	str	r6, [fp, #-304]	@ tmp4, %sfp
	str	r6, [fp, #-308]	@ tmp4, %sfp
	str	r6, [fp, #-312]	@ tmp4, %sfp
	strb	r7, [r4, #1229]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r4, [fp, #-80]	@, %sfp
	str	r6, [fp, #-76]	@ tmp4, %sfp
	ldrb	r7, [r3, #17]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	str	r6, [fp, #-316]	@ tmp4, %sfp
	str	r6, [fp, #-320]	@ tmp4, %sfp
	str	r6, [fp, #-324]	@ tmp4, %sfp
	str	r6, [fp, #-328]	@ tmp4, %sfp
	strb	r7, [r4, #1230]	@ <variable>.rightunion.r, <variable>.TreeTab
	str	r6, [fp, #-80]	@ tmp4, %sfp
	ldrb	r7, [r3, #18]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r7, [r6, #1231]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldrb	r4, [r3, #19]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r4, [r6, #1232]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r6, [fp, #-84]	@, %sfp
	ldrb	r5, [r3, #20]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r5, [r6, #1233]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r4, [fp, #-88]	@, %sfp
	ldrb	r7, [r3, #21]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r7, [r4, #1234]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldrb	r5, [r3, #22]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldr	r6, [fp, #-92]	@, %sfp
	strb	r5, [r6, #1235]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r4, [fp, #-96]	@, %sfp
	ldrb	r7, [r3, #23]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r7, [r4, #1236]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r6, [fp, #-336]	@, %sfp
	ldrb	r5, [r3, #24]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r5, [r6, #1241]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldrb	r7, [r3, #25]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r7, [r9, #1242]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r4, [fp, #-100]	@, %sfp
	ldrb	r5, [r3, #26]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r5, [r4, #1243]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r6, [fp, #-104]	@, %sfp
	ldrb	r9, [r3, #27]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r9, [r6, #1244]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r7, [fp, #-108]	@, %sfp
	ldrb	r4, [r3, #28]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r4, [r7, #1245]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r5, [fp, #-112]	@, %sfp
	ldrb	r6, [r3, #29]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r6, [r5, #1246]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldrb	r9, [r3, #30]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r9, [ip, #1247]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r4, [fp, #-116]	@, %sfp
	ldrb	r7, [r3, #31]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r7, [r4, #1248]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r5, [fp, #-120]	@, %sfp
	ldrb	ip, [r3, #32]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	ip, [r5, #1249]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r9, [fp, #-124]	@, %sfp
	ldrb	r6, [r3, #33]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r6, [r9, #1250]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldrb	r7, [r3, #34]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldr	r4, [fp, #-128]	@, %sfp
	strb	r7, [r4, #1251]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r5, [fp, #-132]	@, %sfp
	ldrb	ip, [r3, #35]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	ip, [r5, #1252]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldrb	r6, [r3, #36]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r6, [sl, #1257]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r7, [fp, #-136]	@, %sfp
	ldrb	r9, [r3, #37]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r9, [r7, #1258]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r5, [fp, #-140]	@, %sfp
	ldrb	r4, [r3, #38]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r4, [r5, #1259]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r6, [fp, #-144]	@, %sfp
	ldrb	ip, [r3, #39]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	ip, [r6, #1260]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r9, [fp, #-148]	@, %sfp
	ldrb	sl, [r3, #40]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	sl, [r9, #1261]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r4, [fp, #-152]	@, %sfp
	ldrb	r7, [r3, #41]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r7, [r4, #1262]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r6, [fp, #-48]	@, %sfp
	ldrb	r5, [r3, #42]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r5, [r6, #1263]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	sl, [fp, #-156]	@, %sfp
	ldrb	ip, [r3, #43]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	ip, [sl, #1264]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r7, [fp, #-160]	@, %sfp
	ldrb	r9, [r3, #44]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r9, [r7, #1265]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r5, [fp, #-164]	@, %sfp
	ldrb	r4, [r3, #45]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r4, [r5, #1266]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldrb	r6, [r3, #46]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldr	sl, [fp, #-168]	@, %sfp
	strb	r6, [sl, #1267]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r9, [fp, #-172]	@, %sfp
	ldrb	ip, [r3, #47]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	ip, [r9, #1268]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r4, [fp, #-52]	@, %sfp
	ldrb	r7, [r3, #48]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r7, [r4, #1273]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r6, [fp, #-176]	@, %sfp
	ldrb	r5, [r3, #49]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r5, [r6, #1274]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r9, [fp, #-180]	@, %sfp
	ldrb	sl, [r3, #50]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	sl, [r9, #1275]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r7, [fp, #-184]	@, %sfp
	ldrb	ip, [r3, #51]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	ip, [r7, #1276]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r5, [fp, #-188]	@, %sfp
	ldrb	r4, [r3, #52]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r4, [r5, #1277]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	sl, [fp, #-192]	@, %sfp
	ldrb	r6, [r3, #53]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r6, [sl, #1278]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r7, [fp, #-56]	@, %sfp
	ldrb	r9, [r3, #54]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r9, [r7, #1279]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r4, [fp, #-196]	@, %sfp
	ldrb	ip, [r3, #55]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	ip, [r4, #1280]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r6, [fp, #-200]	@, %sfp
	ldrb	r5, [r3, #56]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r5, [r6, #1281]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r9, [fp, #-204]	@, %sfp
	ldrb	sl, [r3, #57]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	sl, [r9, #1282]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldrb	r7, [r3, #58]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldr	r4, [fp, #-208]	@, %sfp
	strb	r7, [r4, #1283]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r5, [fp, #-212]	@, %sfp
	ldrb	ip, [r3, #59]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	ip, [r5, #1284]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	sl, [fp, #-60]	@, %sfp
	ldrb	r6, [r3, #60]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r6, [sl, #1289]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r7, [fp, #-216]	@, %sfp
	ldrb	r9, [r3, #61]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r9, [r7, #1290]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r5, [fp, #-220]	@, %sfp
	ldrb	r4, [r3, #62]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r4, [r5, #1291]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r6, [fp, #-224]	@, %sfp
	ldrb	ip, [r3, #63]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	ip, [r6, #1292]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r9, [fp, #-228]	@, %sfp
	ldrb	sl, [r3, #64]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	sl, [r9, #1293]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r4, [fp, #-232]	@, %sfp
	ldrb	r7, [r3, #65]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r7, [r4, #1294]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldrb	r5, [r3, #66]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r5, [r8, #1295]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r6, [fp, #-236]	@, %sfp
	ldrb	ip, [r3, #67]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	ip, [r6, #1296]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r9, [fp, #-240]	@, %sfp
	ldrb	sl, [r3, #68]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	sl, [r9, #1297]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r7, [fp, #-244]	@, %sfp
	ldrb	r8, [r3, #69]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r8, [r7, #1298]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldrb	r4, [r3, #70]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldr	r5, [fp, #-248]	@, %sfp
	strb	r4, [r5, #1299]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r6, [fp, #-252]	@, %sfp
	ldrb	ip, [r3, #71]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	ip, [r6, #1300]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r9, [fp, #-64]	@, %sfp
	ldrb	sl, [r3, #72]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	sl, [r9, #1305]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r7, [fp, #-256]	@, %sfp
	ldrb	r8, [r3, #73]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r8, [r7, #1306]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r5, [fp, #-260]	@, %sfp
	ldrb	r4, [r3, #74]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r4, [r5, #1307]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r6, [fp, #-264]	@, %sfp
	ldrb	ip, [r3, #75]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	ip, [r6, #1308]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r9, [fp, #-268]	@, %sfp
	ldrb	sl, [r3, #76]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	sl, [r9, #1309]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r7, [fp, #-272]	@, %sfp
	ldrb	r8, [r3, #77]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r8, [r7, #1310]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r5, [fp, #-68]	@, %sfp
	ldrb	r4, [r3, #78]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r4, [r5, #1311]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r6, [fp, #-276]	@, %sfp
	ldrb	ip, [r3, #79]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	ip, [r6, #1312]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r9, [fp, #-280]	@, %sfp
	ldrb	sl, [r3, #80]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	sl, [r9, #1313]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r7, [fp, #-284]	@, %sfp
	ldrb	r8, [r3, #81]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r8, [r7, #1314]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldrb	r4, [r3, #82]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldr	r5, [fp, #-288]	@, %sfp
	strb	r4, [r5, #1315]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r6, [fp, #-292]	@, %sfp
	ldrb	ip, [r3, #83]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	ip, [r6, #1316]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r9, [fp, #-72]	@, %sfp
	ldrb	sl, [r3, #84]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	sl, [r9, #1321]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r7, [fp, #-296]	@, %sfp
	ldrb	r8, [r3, #85]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r8, [r7, #1322]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r5, [fp, #-300]	@, %sfp
	ldrb	r4, [r3, #86]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r4, [r5, #1323]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r6, [fp, #-304]	@, %sfp
	ldrb	ip, [r3, #87]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	ip, [r6, #1324]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r9, [fp, #-308]	@, %sfp
	ldrb	sl, [r3, #88]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	sl, [r9, #1325]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r7, [fp, #-312]	@, %sfp
	ldrb	r8, [r3, #89]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r8, [r7, #1326]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r5, [fp, #-76]	@, %sfp
	ldrb	r4, [r3, #90]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r4, [r5, #1327]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r6, [fp, #-316]	@, %sfp
	ldrb	ip, [r3, #91]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	ip, [r6, #1328]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r9, [fp, #-320]	@, %sfp
	ldrb	sl, [r3, #92]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	sl, [r9, #1329]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r7, [fp, #-324]	@, %sfp
	ldrb	r8, [r3, #93]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r8, [r7, #1330]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldrb	r4, [r3, #94]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldr	r5, [fp, #-328]	@, %sfp
	strb	r4, [r5, #1331]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r6, [fp, #-80]	@, %sfp
	ldrb	ip, [r3, #95]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	add	r3, r3, #144	@ ivtmp.1751, ivtmp.1751,
	strb	ip, [r6, #1332]	@ <variable>.rightunion.r, <variable>.TreeTab
	bne	.L190	@,
	ldr	r1, [fp, #-332]	@, %sfp
	add	r3, r1, #1	@,,
	str	r3, [fp, #-332]	@, %sfp
	cmp	r3, #2	@,
	bne	.L189	@,
	movw	r8, #9452	@ tmp727,
	movw	r7, #9453	@ tmp730,
	movw	r6, #9454	@ tmp733,
	movw	r5, #9455	@ tmp736,
	movw	r4, #9456	@ tmp739,
	movw	ip, #9457	@ tmp742,
	movw	r1, #9458	@ tmp745,
	movw	r2, #9459	@ tmp748,
	movw	r9, #9460	@ tmp751,
	movw	r3, #9461	@ tmp754,
	ldrb	sl, [r0, r8]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r8, [r0, r7]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r7, [r0, r6]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r6, [r0, r5]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r5, [r0, r4]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r4, [r0, ip]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	ip, [r0, r1]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r1, [r0, r2]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r2, [r0, r9]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.rightunion.r
	movw	r3, #9462	@ tmp757,
	str	r9, [fp, #-48]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.leftunion.l
	movw	r3, #9463	@ tmp760,
	str	r9, [fp, #-52]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.rightunion.r
	movw	r3, #9464	@ tmp763,
	str	r9, [fp, #-56]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.leftunion.l
	movw	r3, #9465	@ tmp766,
	str	r9, [fp, #-60]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.rightunion.r
	movw	r3, #9466	@ tmp769,
	str	r9, [fp, #-64]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.leftunion.l
	movw	r3, #9467	@ tmp772,
	str	r9, [fp, #-68]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	movw	r3, #9468	@ tmp775,
	ldrb	r3, [r0, r3]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r5, [r0, #1990]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r5, [fp, #-48]	@, %sfp
	strb	sl, [r0, #1986]	@ <variable>.leftunion.l, <variable>.TreeTab
	strb	r8, [r0, #1987]	@ <variable>.rightunion.r, <variable>.TreeTab
	movw	r8, #9469	@ tmp778,
	strb	r7, [r0, #1988]	@ <variable>.leftunion.l, <variable>.TreeTab
	movw	r7, #9470	@ tmp781,
	strb	r6, [r0, #1989]	@ <variable>.rightunion.r, <variable>.TreeTab
	movw	r6, #9471	@ tmp784,
	strb	r4, [r0, #1991]	@ <variable>.rightunion.r, <variable>.TreeTab
	strb	ip, [r0, #1992]	@ <variable>.leftunion.l, <variable>.TreeTab
	strb	r1, [r0, #1993]	@ <variable>.rightunion.r, <variable>.TreeTab
	strb	r2, [r0, #1994]	@ <variable>.leftunion.l, <variable>.TreeTab
	strb	r5, [r0, #1995]	@, <variable>.TreeTab
	mov	r5, #9472	@ tmp787,
	ldr	r4, [fp, #-52]	@, %sfp
	ldr	ip, [fp, #-56]	@, %sfp
	ldr	r1, [fp, #-60]	@, %sfp
	ldr	r2, [fp, #-64]	@, %sfp
	ldr	sl, [fp, #-68]	@, %sfp
	strb	r4, [r0, #1996]	@, <variable>.TreeTab
	movw	r4, #9473	@ tmp790,
	strb	ip, [r0, #1997]	@, <variable>.TreeTab
	movw	ip, #9474	@ tmp793,
	strb	r1, [r0, #2002]	@, <variable>.TreeTab
	movw	r1, #9475	@ tmp796,
	strb	r2, [r0, #2003]	@, <variable>.TreeTab
	movw	r2, #9476	@ tmp799,
	strb	r9, [r0, #2005]	@ <variable>.rightunion.r, <variable>.TreeTab
	movw	r9, #9477	@ tmp802,
	strb	r3, [r0, #2006]	@ <variable>.leftunion.l, <variable>.TreeTab
	movw	r3, #9478	@ tmp805,
	strb	sl, [r0, #2004]	@, <variable>.TreeTab
	ldrb	sl, [r0, r8]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r8, [r0, r7]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r7, [r0, r6]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r6, [r0, r5]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r5, [r0, r4]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r4, [r0, ip]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	ip, [r0, r1]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r1, [r0, r2]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r2, [r0, r9]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.leftunion.l
	movw	r3, #9479	@ tmp808,
	str	r9, [fp, #-48]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.rightunion.r
	movw	r3, #9480	@ tmp811,
	str	r9, [fp, #-52]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.leftunion.l
	movw	r3, #9481	@ tmp814,
	str	r9, [fp, #-56]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.rightunion.r
	movw	r3, #9482	@ tmp817,
	str	r9, [fp, #-60]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.leftunion.l
	movw	r3, #9483	@ tmp820,
	str	r9, [fp, #-64]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.rightunion.r
	movw	r3, #9484	@ tmp823,
	str	r9, [fp, #-68]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	movw	r3, #9485	@ tmp826,
	ldrb	r3, [r0, r3]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	sl, [r0, #2007]	@ <variable>.rightunion.r, <variable>.TreeTab
	strb	r5, [r0, #2011]	@ <variable>.rightunion.r, <variable>.TreeTab
	strb	r4, [r0, #2012]	@ <variable>.leftunion.l, <variable>.TreeTab
	strb	ip, [r0, #2013]	@ <variable>.rightunion.r, <variable>.TreeTab
	strb	r1, [r0, #2018]	@ <variable>.leftunion.l, <variable>.TreeTab
	strb	r2, [r0, #2019]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r5, [fp, #-48]	@, %sfp
	ldr	r4, [fp, #-52]	@, %sfp
	ldr	ip, [fp, #-56]	@, %sfp
	ldr	r1, [fp, #-60]	@, %sfp
	ldr	r2, [fp, #-64]	@, %sfp
	ldr	sl, [fp, #-68]	@, %sfp
	strb	r8, [r0, #2008]	@ <variable>.leftunion.l, <variable>.TreeTab
	movw	r8, #9486	@ tmp829,
	strb	r7, [r0, #2009]	@ <variable>.rightunion.r, <variable>.TreeTab
	movw	r7, #9487	@ tmp832,
	strb	r6, [r0, #2010]	@ <variable>.leftunion.l, <variable>.TreeTab
	movw	r6, #9488	@ tmp835,
	strb	r5, [r0, #2020]	@, <variable>.TreeTab
	movw	r5, #9489	@ tmp838,
	strb	r4, [r0, #2021]	@, <variable>.TreeTab
	movw	r4, #9490	@ tmp841,
	strb	ip, [r0, #2022]	@, <variable>.TreeTab
	movw	ip, #9491	@ tmp844,
	strb	r1, [r0, #2023]	@, <variable>.TreeTab
	movw	r1, #9492	@ tmp847,
	strb	r2, [r0, #2024]	@, <variable>.TreeTab
	movw	r2, #9493	@ tmp850,
	strb	r9, [r0, #2026]	@ <variable>.leftunion.l, <variable>.TreeTab
	movw	r9, #9494	@ tmp853,
	strb	r3, [r0, #2027]	@ <variable>.rightunion.r, <variable>.TreeTab
	movw	r3, #9495	@ tmp856,
	strb	sl, [r0, #2025]	@, <variable>.TreeTab
	ldrb	sl, [r0, r8]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r8, [r0, r7]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r7, [r0, r6]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r6, [r0, r5]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r5, [r0, r4]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r4, [r0, ip]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	ip, [r0, r1]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r1, [r0, r2]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r2, [r0, r9]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.rightunion.r
	movw	r3, #9496	@ tmp859,
	str	r9, [fp, #-48]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.leftunion.l
	movw	r3, #9497	@ tmp862,
	str	r9, [fp, #-52]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.rightunion.r
	movw	r3, #9498	@ tmp865,
	str	r9, [fp, #-56]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.leftunion.l
	movw	r3, #9499	@ tmp868,
	str	r9, [fp, #-60]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.rightunion.r
	movw	r3, #8532	@ tmp871,
	str	r9, [fp, #-64]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.leftunion.l
	movw	r3, #8533	@ tmp874,
	str	r9, [fp, #-68]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	movw	r3, #8534	@ tmp877,
	ldrb	r3, [r0, r3]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r5, [r0, #2036]	@ <variable>.leftunion.l, <variable>.TreeTab
	strb	r4, [r0, #2037]	@ <variable>.rightunion.r, <variable>.TreeTab
	strb	ip, [r0, #2038]	@ <variable>.leftunion.l, <variable>.TreeTab
	strb	r1, [r0, #2039]	@ <variable>.rightunion.r, <variable>.TreeTab
	strb	r2, [r0, #2040]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r5, [fp, #-48]	@, %sfp
	ldr	r4, [fp, #-52]	@, %sfp
	ldr	ip, [fp, #-56]	@, %sfp
	ldr	r1, [fp, #-60]	@, %sfp
	ldr	r2, [fp, #-64]	@, %sfp
	strb	sl, [r0, #2028]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	sl, [fp, #-68]	@, %sfp
	strb	r8, [r0, #2029]	@ <variable>.rightunion.r, <variable>.TreeTab
	movw	r8, #8535	@ tmp880,
	strb	r7, [r0, #2034]	@ <variable>.leftunion.l, <variable>.TreeTab
	movw	r7, #8536	@ tmp883,
	strb	r6, [r0, #2035]	@ <variable>.rightunion.r, <variable>.TreeTab
	movw	r6, #8537	@ tmp886,
	strb	r5, [r0, #2041]	@, <variable>.TreeTab
	movw	r5, #8538	@ tmp889,
	strb	r4, [r0, #2042]	@, <variable>.TreeTab
	movw	r4, #8539	@ tmp892,
	strb	ip, [r0, #2043]	@, <variable>.TreeTab
	movw	ip, #8540	@ tmp895,
	strb	r1, [r0, #2044]	@, <variable>.TreeTab
	movw	r1, #8541	@ tmp898,
	strb	r2, [r0, #2045]	@, <variable>.TreeTab
	movw	r2, #8542	@ tmp901,
	strb	r9, [r0, #2051]	@ <variable>.rightunion.r, <variable>.TreeTab
	movw	r9, #8543	@ tmp904,
	strb	r3, [r0, #2052]	@ <variable>.leftunion.l, <variable>.TreeTab
	movw	r3, #8544	@ tmp907,
	strb	sl, [r0, #2050]	@, <variable>.TreeTab
	ldrb	sl, [r0, r8]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r8, [r0, r7]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r7, [r0, r6]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r6, [r0, r5]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r5, [r0, r4]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r4, [r0, ip]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	ip, [r0, r1]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r1, [r0, r2]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r2, [r0, r9]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.leftunion.l
	movw	r3, #8545	@ tmp910,
	str	r9, [fp, #-48]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.rightunion.r
	movw	r3, #8546	@ tmp913,
	str	r9, [fp, #-52]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.leftunion.l
	movw	r3, #8547	@ tmp916,
	str	r9, [fp, #-56]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.rightunion.r
	movw	r3, #8548	@ tmp919,
	str	r9, [fp, #-60]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.leftunion.l
	movw	r3, #8549	@ tmp922,
	str	r9, [fp, #-64]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.rightunion.r
	movw	r3, #8550	@ tmp925,
	str	r9, [fp, #-68]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	movw	r3, #8551	@ tmp928,
	ldrb	r3, [r0, r3]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	sl, [r0, #2053]	@ <variable>.rightunion.r, <variable>.TreeTab
	strb	r5, [r0, #2057]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	sl, [fp, #-68]	@, %sfp
	ldr	r5, [fp, #-48]	@, %sfp
	strb	r4, [r0, #2058]	@ <variable>.leftunion.l, <variable>.TreeTab
	strb	ip, [r0, #2059]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r4, [fp, #-52]	@, %sfp
	ldr	ip, [fp, #-56]	@, %sfp
	strb	r1, [r0, #2060]	@ <variable>.leftunion.l, <variable>.TreeTab
	strb	r2, [r0, #2061]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r1, [fp, #-60]	@, %sfp
	ldr	r2, [fp, #-64]	@, %sfp
	strb	r8, [r0, #2054]	@ <variable>.leftunion.l, <variable>.TreeTab
	movw	r8, #8552	@ tmp931,
	strb	r7, [r0, #2055]	@ <variable>.rightunion.r, <variable>.TreeTab
	movw	r7, #8553	@ tmp934,
	strb	r6, [r0, #2056]	@ <variable>.leftunion.l, <variable>.TreeTab
	movw	r6, #8554	@ tmp937,
	strb	r5, [r0, #2066]	@, <variable>.TreeTab
	movw	r5, #8555	@ tmp940,
	strb	r4, [r0, #2067]	@, <variable>.TreeTab
	movw	r4, #8556	@ tmp943,
	strb	ip, [r0, #2068]	@, <variable>.TreeTab
	movw	ip, #8557	@ tmp946,
	strb	r1, [r0, #2069]	@, <variable>.TreeTab
	movw	r1, #8558	@ tmp949,
	strb	r2, [r0, #2070]	@, <variable>.TreeTab
	movw	r2, #8559	@ tmp952,
	strb	sl, [r0, #2071]	@, <variable>.TreeTab
	strb	r9, [r0, #2072]	@ <variable>.leftunion.l, <variable>.TreeTab
	movw	r9, #8560	@ tmp955,
	strb	r3, [r0, #2073]	@ <variable>.rightunion.r, <variable>.TreeTab
	movw	r3, #8561	@ tmp958,
	ldrb	sl, [r0, r8]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r8, [r0, r7]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r7, [r0, r6]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r6, [r0, r5]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r5, [r0, r4]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r4, [r0, ip]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	ip, [r0, r1]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r1, [r0, r2]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r2, [r0, r9]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.rightunion.r
	movw	r3, #8562	@ tmp961,
	str	r9, [fp, #-48]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.leftunion.l
	movw	r3, #8563	@ tmp964,
	str	r9, [fp, #-52]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.rightunion.r
	movw	r3, #8564	@ tmp967,
	str	r9, [fp, #-56]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.leftunion.l
	movw	r3, #8565	@ tmp970,
	str	r9, [fp, #-60]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.rightunion.r
	movw	r3, #8566	@ tmp973,
	str	r9, [fp, #-64]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.leftunion.l
	movw	r3, #8567	@ tmp976,
	str	r9, [fp, #-68]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	movw	r3, #8568	@ tmp979,
	ldrb	r3, [r0, r3]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r5, [r0, #2082]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r5, [fp, #-48]	@, %sfp
	strb	sl, [r0, #2074]	@ <variable>.leftunion.l, <variable>.TreeTab
	strb	r8, [r0, #2075]	@ <variable>.rightunion.r, <variable>.TreeTab
	movw	r8, #8569	@ tmp982,
	strb	r7, [r0, #2076]	@ <variable>.leftunion.l, <variable>.TreeTab
	movw	r7, #8570	@ tmp985,
	strb	r6, [r0, #2077]	@ <variable>.rightunion.r, <variable>.TreeTab
	movw	r6, #8571	@ tmp988,
	strb	r4, [r0, #2083]	@ <variable>.rightunion.r, <variable>.TreeTab
	strb	ip, [r0, #2084]	@ <variable>.leftunion.l, <variable>.TreeTab
	strb	r1, [r0, #2085]	@ <variable>.rightunion.r, <variable>.TreeTab
	strb	r2, [r0, #2114]	@ <variable>.leftunion.l, <variable>.TreeTab
	strb	r5, [r0, #2115]	@, <variable>.TreeTab
	movw	r5, #8572	@ tmp991,
	ldr	r4, [fp, #-52]	@, %sfp
	ldr	ip, [fp, #-56]	@, %sfp
	ldr	r1, [fp, #-60]	@, %sfp
	ldr	r2, [fp, #-64]	@, %sfp
	ldr	sl, [fp, #-68]	@, %sfp
	strb	r4, [r0, #2116]	@, <variable>.TreeTab
	movw	r4, #8573	@ tmp994,
	strb	ip, [r0, #2117]	@, <variable>.TreeTab
	movw	ip, #8574	@ tmp997,
	strb	r1, [r0, #2118]	@, <variable>.TreeTab
	movw	r1, #8575	@ tmp1000,
	strb	r2, [r0, #2119]	@, <variable>.TreeTab
	mov	r2, #8576	@ tmp1003,
	strb	r9, [r0, #2121]	@ <variable>.rightunion.r, <variable>.TreeTab
	movw	r9, #8577	@ tmp1006,
	strb	r3, [r0, #2122]	@ <variable>.leftunion.l, <variable>.TreeTab
	movw	r3, #8578	@ tmp1009,
	strb	sl, [r0, #2120]	@, <variable>.TreeTab
	ldrb	sl, [r0, r8]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r8, [r0, r7]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r7, [r0, r6]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r6, [r0, r5]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r5, [r0, r4]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r4, [r0, ip]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	ip, [r0, r1]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r1, [r0, r2]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r2, [r0, r9]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.leftunion.l
	movw	r3, #8579	@ tmp1012,
	str	r9, [fp, #-48]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.rightunion.r
	movw	r3, #8580	@ tmp1015,
	str	r9, [fp, #-52]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.leftunion.l
	movw	r3, #8581	@ tmp1018,
	str	r9, [fp, #-56]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.rightunion.r
	movw	r3, #8582	@ tmp1021,
	str	r9, [fp, #-60]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.leftunion.l
	movw	r3, #8583	@ tmp1024,
	str	r9, [fp, #-64]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@, <variable>.rightunion.r
	movw	r3, #8584	@ tmp1027,
	str	r9, [fp, #-68]	@, %sfp
	ldrb	r9, [r0, r3]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	movw	r3, #8585	@ tmp1030,
	ldrb	r3, [r0, r3]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	sl, [r0, #2123]	@ <variable>.rightunion.r, <variable>.TreeTab
	strb	r6, [r0, #2130]	@ <variable>.leftunion.l, <variable>.TreeTab
	strb	r5, [r0, #2131]	@ <variable>.rightunion.r, <variable>.TreeTab
	strb	r4, [r0, #2132]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r6, [fp, #-52]	@, %sfp
	ldr	r4, [fp, #-48]	@, %sfp
	ldr	r5, [fp, #-56]	@, %sfp
	strb	r6, [r0, #2137]	@, <variable>.TreeTab
	strb	r4, [r0, #2136]	@, <variable>.TreeTab
	strb	r5, [r0, #2138]	@, <variable>.TreeTab
	ldr	r4, [fp, #-60]	@, %sfp
	ldr	r5, [fp, #-64]	@, %sfp
	ldr	r6, [fp, #-68]	@, %sfp
	strb	r1, [r0, #2134]	@ <variable>.leftunion.l, <variable>.TreeTab
	movw	r1, #8586	@ tmp1033,
	strb	r3, [r0, #2147]	@ <variable>.rightunion.r, <variable>.TreeTab
	movw	r3, #8587	@ tmp1036,
	strb	r8, [r0, #2124]	@ <variable>.leftunion.l, <variable>.TreeTab
	strb	r7, [r0, #2125]	@ <variable>.rightunion.r, <variable>.TreeTab
	strb	ip, [r0, #2133]	@ <variable>.rightunion.r, <variable>.TreeTab
	strb	r2, [r0, #2135]	@ <variable>.rightunion.r, <variable>.TreeTab
	strb	r4, [r0, #2139]	@, <variable>.TreeTab
	strb	r5, [r0, #2140]	@, <variable>.TreeTab
	strb	r6, [r0, #2141]	@, <variable>.TreeTab
	strb	r9, [r0, #2146]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldrb	r2, [r0, r1]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	ip, [r0, r3]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r2, [r0, #2148]	@ <variable>.leftunion.l, <variable>.TreeTab
	strb	ip, [r0, #2149]	@ <variable>.rightunion.r, <variable>.TreeTab
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
	.fnend
	.size	VP6_BuildTreeTab, .-VP6_BuildTreeTab
	.align	2
	.global	VP6DEC_Destroy
	.type	VP6DEC_Destroy, %function
VP6DEC_Destroy:
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
	mov	r0, #1	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VP6DEC_Destroy, .-VP6DEC_Destroy
	.align	2
	.global	IsFrameSizeChanged
	.type	IsFrameSizeChanged, %function
IsFrameSizeChanged:
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
	movw	ip, #12132	@ tmp136,
	movw	r1, #12276	@ tmp137,
	ldr	r2, [r0, ip]	@ <variable>.OldHeaderInfo.pic_height_in_mb, <variable>.OldHeaderInfo.pic_height_in_mb
	ldr	r3, [r0, r1]	@ <variable>.NewHeaderInfo.pic_height_in_mb, <variable>.NewHeaderInfo.pic_height_in_mb
	cmp	r2, r3	@ <variable>.OldHeaderInfo.pic_height_in_mb, <variable>.NewHeaderInfo.pic_height_in_mb
	movne	r0, #1	@ D.40289,
	ldmnefd	sp, {fp, sp, pc}	@
	movw	r1, #12280	@ tmp141,
	movw	r2, #12136	@ tmp140,
	ldr	r3, [r0, r1]	@ <variable>.NewHeaderInfo.pic_width_in_mb, <variable>.NewHeaderInfo.pic_width_in_mb
	ldr	r0, [r0, r2]	@ <variable>.OldHeaderInfo.pic_width_in_mb, <variable>.OldHeaderInfo.pic_width_in_mb
	subs	r0, r0, r3	@ D.40289, <variable>.OldHeaderInfo.pic_width_in_mb, <variable>.NewHeaderInfo.pic_width_in_mb
	movne	r0, #1	@ D.40289
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	IsFrameSizeChanged, .-IsFrameSizeChanged
	.align	2
	.global	VP6DEC_GetRemainImg
	.type	VP6DEC_GetRemainImg, %function
VP6DEC_GetRemainImg:
	.fnstart
.LFB1564:
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
	add	r0, r0, #12608	@, pCtx,
	add	r0, r0, #40	@,,
	bl	GetVoLastImageID	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	VP6DEC_GetRemainImg, .-VP6DEC_GetRemainImg
	.align	2
	.global	VP6DEC_RecycleImage
	.type	VP6DEC_RecycleImage, %function
VP6DEC_RecycleImage:
	.fnstart
.LFB1563:
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
	subs	r4, r0, #0	@ pCtx, pCtx
	mov	r6, r1	@ ImgID, ImgID
	moveq	r0, r4	@ D.40551, pCtx
	ldmeqfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	movw	r5, #13000	@ tmp139,
	mov	r2, #0	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_SetDisplay	@
	mov	r1, r6	@, ImgID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImg,
	moveq	r0, #1	@ D.40551,
	ldmeqfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r7, #0	@ tmp146,
	ldr	r1, [r6, #212]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r7, [r6, #212]	@ tmp146, <variable>.p_usrdat
	ldr	r1, [r6, #216]	@, <variable>.p_usrdat
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r0, #1	@ D.40551,
	str	r7, [r6, #216]	@ tmp146, <variable>.p_usrdat
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	VP6DEC_RecycleImage, .-VP6DEC_RecycleImage
	.align	2
	.global	VP6_ConvertBoolToHuff
	.type	VP6_ConvertBoolToHuff, %function
VP6_ConvertBoolToHuff:
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
	add	r7, r0, #6592	@ tmp200, pVp6CodecInfo,
	add	r9, r7, #4	@ D.39555, tmp200,
	mov	r4, r0	@ pVp6CodecInfo, pVp6CodecInfo
	add	r8, r0, #512	@ tmp199, pVp6CodecInfo,
	add	r6, r0, #9408	@ tmp201, pVp6CodecInfo,
	movw	r1, #:lower16:.LC0	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC0	@,
	add	r5, r6, #44	@ D.39559, tmp201,
	bl	dprint_vfmw	@
	add	sl, r4, #9472	@ tmp202, pVp6CodecInfo,
	add	r0, r8, #2	@, tmp199,
	mov	r1, r9	@, D.39555
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r1, r9	@, D.39555
	add	r9, sl, #28	@ D.39563, tmp202,
	add	r7, r7, #52	@ D.39557, tmp200,
	mov	r0, r5	@, D.39559
	mov	r2, #12	@,
	bl	VP6_BuildHuffTree	@
	add	r6, r6, #68	@ D.39561, tmp201,
	mov	r0, r5	@, D.39559
	mov	r1, r9	@, D.39563
	bl	VP6_BuildHuffLookupTable	@
	add	r5, r4, #6656	@ tmp205, pVp6CodecInfo,
	add	r0, r8, #13	@, tmp199,
	mov	r1, r7	@, D.39557
	add	r2, r4, #536	@, pVp6CodecInfo,
	str	r2, [fp, #-48]	@, %sfp
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r2, #12	@,
	mov	r1, r7	@, D.39557
	mov	r0, r6	@, D.39561
	add	r7, r5, #36	@ D.39571, tmp205,
	bl	VP6_BuildHuffTree	@
	add	r9, r4, #8512	@ tmp206, pVp6CodecInfo,
	mov	r0, r6	@, D.39561
	add	r1, sl, #92	@, tmp202,
	add	r6, r9, #20	@ D.39575, tmp206,
	bl	VP6_BuildHuffLookupTable	@
	add	r8, r4, #11904	@ tmp207, pVp6CodecInfo,
	mov	r1, r7	@, D.39571
	ldr	r0, [fp, #-48]	@, %sfp
	bl	VP6_ZerosBoolTreeToHuffCodes	@
	mov	r1, r7	@, D.39571
	add	r7, r8, #28	@ D.39579, tmp207,
	mov	r2, #9	@,
	mov	r0, r6	@, D.39575
	add	sl, r5, #92	@ D.39573, tmp205,
	bl	VP6_BuildHuffTree	@
	mov	r0, r6	@, D.39575
	mov	r1, r7	@, D.39579
	add	r9, r9, #48	@ D.39577, tmp206,
	bl	VP6_BuildHuffLookupTable	@
	ldr	r3, [fp, #-48]	@, %sfp
	mov	r1, sl	@, D.39573
	add	r6, r4, #6784	@ ivtmp.2298, pVp6CodecInfo,
	add	r0, r3, #14	@,,
	add	r5, r4, #8576	@ ivtmp.2300, pVp6CodecInfo,
	bl	VP6_ZerosBoolTreeToHuffCodes	@
	mov	r1, sl	@, D.39573
	mov	r2, #9	@,
	mov	r0, r9	@, D.39577
	bl	VP6_BuildHuffTree	@
	mov	r0, r9	@, D.39577
	add	r1, r8, #92	@, tmp207,
	add	sl, r4, #9600	@ ivtmp.2302, pVp6CodecInfo,
	bl	VP6_BuildHuffLookupTable	@
	add	r6, r6, #20	@ ivtmp.2298, ivtmp.2298,
	add	r5, r5, #12	@ ivtmp.2300, ivtmp.2300,
	add	sl, sl, #28	@ ivtmp.2302, ivtmp.2302,
	mov	r7, #0	@ ivtmp.2297,
.L208:
	add	lr, r7, r4	@ tmp214, ivtmp.2297, pVp6CodecInfo
	mov	r1, r6	@, ivtmp.2298
	add	r0, lr, #564	@, tmp214,
	add	r8, r6, #48	@ temp.2389, ivtmp.2298,
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r0, r5	@, ivtmp.2300
	mov	r1, r6	@, ivtmp.2298
	mov	r2, #12	@,
	bl	VP6_BuildHuffTree	@
	mov	r0, r5	@, ivtmp.2300
	mov	r1, sl	@, ivtmp.2302
	add	r9, r5, #24	@ temp.2390, ivtmp.2300,
	bl	VP6_BuildHuffLookupTable	@
	add	r1, r7, r4	@ tmp218, ivtmp.2297, pVp6CodecInfo
	add	r2, r1, #572	@, tmp218,
	mov	r1, r8	@, temp.2389
	add	r0, r2, #3	@,,
	add	r3, r6, #96	@, ivtmp.2298,
	str	r3, [fp, #-52]	@, %sfp
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r1, r8	@, temp.2389
	mov	r2, #12	@,
	mov	r0, r9	@, temp.2390
	add	r8, r5, #72	@ temp.2398, ivtmp.2300,
	bl	VP6_BuildHuffTree	@
	mov	r0, r9	@, temp.2390
	add	r1, sl, #64	@, ivtmp.2302,
	add	r9, r5, #48	@ temp.2394, ivtmp.2300,
	bl	VP6_BuildHuffLookupTable	@
	add	ip, r7, r4	@ tmp223, ivtmp.2297, pVp6CodecInfo
	add	r0, ip, #584	@, tmp223,
	ldr	r1, [fp, #-52]	@, %sfp
	add	r0, r0, #2	@,,
	add	r2, r6, #144	@, ivtmp.2298,
	str	r2, [fp, #-48]	@, %sfp
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r2, #12	@,
	mov	r0, r9	@, temp.2394
	ldr	r1, [fp, #-52]	@, %sfp
	bl	VP6_BuildHuffTree	@
	mov	r0, r9	@, temp.2394
	add	r1, sl, #128	@, ivtmp.2302,
	add	r9, r6, #192	@ temp.2401, ivtmp.2298,
	bl	VP6_BuildHuffLookupTable	@
	add	r1, r7, r4	@ tmp228, ivtmp.2297, pVp6CodecInfo
	add	r3, r1, #596	@, tmp228,
	ldr	r1, [fp, #-48]	@, %sfp
	add	r0, r3, #1	@,,
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r2, #12	@,
	mov	r0, r8	@, temp.2398
	ldr	r1, [fp, #-48]	@, %sfp
	bl	VP6_BuildHuffTree	@
	mov	r0, r8	@, temp.2398
	add	r1, sl, #192	@, ivtmp.2302,
	add	r8, r5, #96	@ temp.2402, ivtmp.2300,
	bl	VP6_BuildHuffLookupTable	@
	add	ip, r7, r4	@ tmp232, ivtmp.2297, pVp6CodecInfo
	add	r0, ip, #608	@, tmp232,
	mov	r1, r9	@, temp.2401
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r1, r9	@, temp.2401
	mov	r2, #12	@,
	mov	r0, r8	@, temp.2402
	bl	VP6_BuildHuffTree	@
	mov	r0, r8	@, temp.2402
	add	r1, sl, #256	@, ivtmp.2302,
	add	r9, r6, #240	@ temp.2405, ivtmp.2298,
	bl	VP6_BuildHuffLookupTable	@
	add	r0, r7, r4	@ tmp237, ivtmp.2297, pVp6CodecInfo
	add	r8, r5, #120	@ temp.2406, ivtmp.2300,
	add	r2, r0, #616	@, tmp237,
	add	r0, r2, #3	@,,
	mov	r1, r9	@, temp.2405
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r2, #12	@,
	mov	r1, r9	@, temp.2405
	mov	r0, r8	@, temp.2406
	bl	VP6_BuildHuffTree	@
	mov	r0, r8	@, temp.2406
	add	r1, sl, #320	@, ivtmp.2302,
	add	r9, r6, #288	@ temp.2409, ivtmp.2298,
	bl	VP6_BuildHuffLookupTable	@
	add	r3, r7, r4	@ tmp242, ivtmp.2297, pVp6CodecInfo
	add	r1, r3, #628	@, tmp242,
	add	r8, r5, #144	@ temp.2410, ivtmp.2300,
	add	r0, r1, #2	@,,
	mov	r1, r9	@, temp.2409
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r2, #12	@,
	mov	r1, r9	@, temp.2409
	mov	r0, r8	@, temp.2410
	bl	VP6_BuildHuffTree	@
	mov	r0, r8	@, temp.2410
	add	r1, sl, #384	@, ivtmp.2302,
	add	r9, r6, #336	@ temp.2413, ivtmp.2298,
	bl	VP6_BuildHuffLookupTable	@
	add	ip, r7, r4	@ tmp247, ivtmp.2297, pVp6CodecInfo
	add	r0, ip, #640	@, tmp247,
	add	r8, r5, #168	@ temp.2414, ivtmp.2300,
	mov	r1, r9	@, temp.2413
	add	r0, r0, #1	@,,
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r1, r9	@, temp.2413
	mov	r2, #12	@,
	mov	r0, r8	@, temp.2414
	bl	VP6_BuildHuffTree	@
	add	r9, r6, #384	@ temp.2417, ivtmp.2298,
	mov	r0, r8	@, temp.2414
	add	r1, sl, #448	@, ivtmp.2302,
	bl	VP6_BuildHuffLookupTable	@
	add	r8, r5, #192	@ temp.2418, ivtmp.2300,
	add	r2, r7, r4	@ tmp251, ivtmp.2297, pVp6CodecInfo
	mov	r1, r9	@, temp.2417
	add	r0, r2, #652	@, tmp251,
	add	r3, r6, #432	@, ivtmp.2298,
	str	r3, [fp, #-48]	@, %sfp
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r2, #12	@,
	mov	r1, r9	@, temp.2417
	mov	r0, r8	@, temp.2418
	add	r9, r6, #480	@ temp.2425, ivtmp.2298,
	bl	VP6_BuildHuffTree	@
	mov	r0, r8	@, temp.2418
	add	r1, sl, #512	@, ivtmp.2302,
	add	r8, r5, #216	@ temp.2422, ivtmp.2300,
	bl	VP6_BuildHuffLookupTable	@
	add	r1, r7, r4	@ tmp256, ivtmp.2297, pVp6CodecInfo
	add	ip, r1, #660	@, tmp256,
	ldr	r1, [fp, #-48]	@, %sfp
	add	r0, ip, #3	@,,
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r2, #12	@,
	mov	r0, r8	@, temp.2422
	ldr	r1, [fp, #-48]	@, %sfp
	bl	VP6_BuildHuffTree	@
	mov	r0, r8	@, temp.2422
	add	r1, sl, #576	@, ivtmp.2302,
	add	r8, r5, #240	@ temp.2426, ivtmp.2300,
	bl	VP6_BuildHuffLookupTable	@
	add	r0, r7, r4	@ tmp261, ivtmp.2297, pVp6CodecInfo
	add	r2, r0, #672	@, tmp261,
	mov	r1, r9	@, temp.2425
	add	r0, r2, #2	@,,
	add	r3, r6, #528	@, ivtmp.2298,
	str	r3, [fp, #-48]	@, %sfp
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r2, #12	@,
	mov	r1, r9	@, temp.2425
	mov	r0, r8	@, temp.2426
	add	r9, r6, #576	@ temp.2433, ivtmp.2298,
	bl	VP6_BuildHuffTree	@
	mov	r0, r8	@, temp.2426
	add	r1, sl, #640	@, ivtmp.2302,
	add	r8, r5, #264	@ temp.2430, ivtmp.2300,
	bl	VP6_BuildHuffLookupTable	@
	add	r1, r7, r4	@ tmp266, ivtmp.2297, pVp6CodecInfo
	add	ip, r1, #684	@, tmp266,
	ldr	r1, [fp, #-48]	@, %sfp
	add	r0, ip, #1	@,,
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r2, #12	@,
	mov	r0, r8	@, temp.2430
	ldr	r1, [fp, #-48]	@, %sfp
	bl	VP6_BuildHuffTree	@
	mov	r0, r8	@, temp.2430
	add	r1, sl, #704	@, ivtmp.2302,
	add	r8, r5, #288	@ temp.2434, ivtmp.2300,
	bl	VP6_BuildHuffLookupTable	@
	add	r0, r7, r4	@ tmp270, ivtmp.2297, pVp6CodecInfo
	mov	r1, r9	@, temp.2433
	add	r0, r0, #696	@, tmp270,
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r1, r9	@, temp.2433
	mov	r2, #12	@,
	mov	r0, r8	@, temp.2434
	bl	VP6_BuildHuffTree	@
	mov	r0, r8	@, temp.2434
	add	r1, sl, #768	@, ivtmp.2302,
	add	r9, r6, #624	@ temp.2437, ivtmp.2298,
	bl	VP6_BuildHuffLookupTable	@
	add	r2, r7, r4	@ tmp275, ivtmp.2297, pVp6CodecInfo
	add	r3, r2, #704	@, tmp275,
	add	r8, r5, #312	@ temp.2438, ivtmp.2300,
	add	r0, r3, #3	@,,
	mov	r1, r9	@, temp.2437
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r2, #12	@,
	mov	r1, r9	@, temp.2437
	mov	r0, r8	@, temp.2438
	bl	VP6_BuildHuffTree	@
	mov	r0, r8	@, temp.2438
	add	r1, sl, #832	@, ivtmp.2302,
	add	r9, r6, #672	@ temp.2441, ivtmp.2298,
	bl	VP6_BuildHuffLookupTable	@
	add	ip, r7, r4	@ tmp280, ivtmp.2297, pVp6CodecInfo
	add	r1, ip, #716	@, tmp280,
	add	r8, r5, #336	@ temp.2442, ivtmp.2300,
	add	r0, r1, #2	@,,
	mov	r1, r9	@, temp.2441
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r1, r9	@, temp.2441
	mov	r2, #12	@,
	mov	r0, r8	@, temp.2442
	bl	VP6_BuildHuffTree	@
	mov	r0, r8	@, temp.2442
	add	r1, sl, #896	@, ivtmp.2302,
	add	r9, r6, #720	@ temp.2445, ivtmp.2298,
	bl	VP6_BuildHuffLookupTable	@
	add	r0, r7, r4	@ tmp285, ivtmp.2297, pVp6CodecInfo
	add	r8, r5, #360	@ temp.2446, ivtmp.2300,
	add	r2, r0, #728	@, tmp285,
	add	r0, r2, #1	@,,
	mov	r1, r9	@, temp.2445
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r2, #12	@,
	mov	r1, r9	@, temp.2445
	mov	r0, r8	@, temp.2446
	bl	VP6_BuildHuffTree	@
	add	r9, r6, #768	@ temp.2449, ivtmp.2298,
	mov	r0, r8	@, temp.2446
	add	r1, sl, #960	@, ivtmp.2302,
	bl	VP6_BuildHuffLookupTable	@
	add	r8, r5, #384	@ temp.2450, ivtmp.2300,
	add	r3, r7, r4	@ tmp289, ivtmp.2297, pVp6CodecInfo
	mov	r1, r9	@, temp.2449
	add	r0, r3, #740	@, tmp289,
	add	ip, r6, #816	@, ivtmp.2298,
	str	ip, [fp, #-48]	@, %sfp
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r2, #12	@,
	mov	r0, r8	@, temp.2450
	mov	r1, r9	@, temp.2449
	add	r6, r6, #864	@ ivtmp.2298, ivtmp.2298,
	bl	VP6_BuildHuffTree	@
	mov	r0, r8	@, temp.2450
	add	r1, sl, #1024	@, ivtmp.2302,
	add	r8, r5, #408	@ temp.2454, ivtmp.2300,
	bl	VP6_BuildHuffLookupTable	@
	add	r1, r7, r4	@ tmp294, ivtmp.2297, pVp6CodecInfo
	add	r0, r1, #748	@, tmp294,
	ldr	r1, [fp, #-48]	@, %sfp
	add	r0, r0, #3	@,,
	add	r7, r7, #198	@ ivtmp.2297, ivtmp.2297,
	bl	VP6_BoolTreeToHuffCodes	@
	ldr	r1, [fp, #-48]	@, %sfp
	mov	r2, #12	@,
	mov	r0, r8	@, temp.2454
	bl	VP6_BuildHuffTree	@
	add	r1, sl, #1088	@, ivtmp.2302,
	mov	r0, r8	@, temp.2454
	add	r5, r5, #432	@ ivtmp.2300, ivtmp.2300,
	bl	VP6_BuildHuffLookupTable	@
	cmp	r7, #396	@ ivtmp.2297,
	add	sl, sl, #1152	@ ivtmp.2302, ivtmp.2302,
	bne	.L208	@,
	mov	r0, r4	@, pVp6CodecInfo
	bl	VP6_BuildTreeTab	@
	movw	r1, #:lower16:.LC1	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
	.fnend
	.size	VP6_ConvertBoolToHuff, .-VP6_ConvertBoolToHuff
	.align	2
	.global	VP6_DecodeDecide
	.type	VP6_DecodeDecide, %function
VP6_DecodeDecide:
	.fnstart
.LFB1554:
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
	movw	r3, #12296	@ tmp143,
	ldr	r4, [r0, r3]	@ <variable>.Vp6CodecInfo.Imgbuf_allocated, <variable>.Vp6CodecInfo.Imgbuf_allocated
	mov	r5, r0	@ pCtx, pCtx
	cmp	r4, #0	@ <variable>.Vp6CodecInfo.Imgbuf_allocated,
	beq	.L228	@,
	mov	r2, #12288	@ tmp146,
	ldr	r1, [r0, r2]	@ <variable>.Vp6CodecInfo.UsedDecMode, <variable>.Vp6CodecInfo.UsedDecMode
	sub	r0, r1, #2	@ tmp147, <variable>.Vp6CodecInfo.UsedDecMode,
	cmp	r0, #1	@ tmp147,
	bls	.L214	@,
	ldr	ip, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [ip, #8]	@ prephitmp.2476, <variable>.s32DecMode
.L215:
	mov	r0, #12288	@ tmp178,
	str	r2, [r5, r0]	@ prephitmp.2476, <variable>.Vp6CodecInfo.UsedDecMode
	cmp	r2, #4	@ prephitmp.2476,
	ldrls	pc, [pc, r2, asl #2]	@ prephitmp.2476
	b	.L216	@
.L220:
	.word	.L217
	.word	.L217
	.word	.L218
	.word	.L227
	.word	.L217
.L218:
	movw	lr, #12300	@ tmp179,
	ldrb	r2, [r5, lr]	@ zero_extendqisi2	@ D.39870, <variable>.Vp6CodecInfo.FrameType
	cmp	r2, #0	@ D.39870,
	bne	.L229	@,
.L221:
	movw	r4, #13000	@ tmp196,
	movw	lr, #12316	@ tmp198,
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	ldr	r1, [r5, lr]	@, <variable>.Vp6CodecInfo.FwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pFwdImg,
	beq	.L230	@,
	movw	r2, #12300	@ tmp191,
	ldrb	r1, [r5, r2]	@ zero_extendqisi2	@ <variable>.Vp6CodecInfo.FrameType, <variable>.Vp6CodecInfo.FrameType
	cmp	r1, #0	@ <variable>.Vp6CodecInfo.FrameType,
	beq	.L222	@,
	ldr	r0, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r4, #200]	@ D.39897, <variable>.error_level
	ldr	r3, [r0, #0]	@ D.39898, <variable>.s32RefErrThr
	cmp	r2, r3	@ D.39897, D.39898
	bls	.L222	@,
	movw	r1, #:lower16:.LC9	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
.L227:
	mov	r0, #0	@ D.39851,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L214:
	ldr	r3, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r3, #8]	@ prephitmp.2476, <variable>.s32DecMode
	cmp	r2, #4	@ prephitmp.2476,
	cmpne	r2, #1	@, prephitmp.2476,
	bhi	.L215	@,
	movw	r8, #13000	@ tmp159,
	movw	r7, #12312	@ tmp161,
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC3	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r4, #12316	@ tmp165,
	bl	dprint_vfmw	@
	ldr	r0, [r5, r8]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r5, r7]	@, <variable>.Vp6CodecInfo.GoldenFsID
	bl	FSP_ClearLogicFs	@
	ldr	r1, [r5, r4]	@, <variable>.Vp6CodecInfo.FwdFsID
	mov	r2, #1	@,
	ldr	r0, [r5, r8]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	mov	r6, #0	@ tmp168,
	ldr	r0, [r5, r8]	@, <variable>.ChanID
	str	r6, [r5, r7]	@ tmp168, <variable>.Vp6CodecInfo.GoldenFsID
	str	r6, [r5, r4]	@ tmp168, <variable>.Vp6CodecInfo.FwdFsID
	bl	FSP_GetNullLogicFs	@
	ldr	r1, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	r2, #12292	@ tmp175,
	str	r6, [r5, r2]	@ tmp168, <variable>.Vp6CodecInfo.RefNum
	str	r0, [r5, r7]	@ D.39868, <variable>.Vp6CodecInfo.GoldenFsID
	str	r0, [r5, r4]	@ D.39868, <variable>.Vp6CodecInfo.FwdFsID
	ldr	r2, [r1, #8]	@ prephitmp.2476, <variable>.s32DecMode
	b	.L215	@
.L228:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.39851, <variable>.Vp6CodecInfo.Imgbuf_allocated
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L216:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC7	@,
	movt	r1, #:upper16:.LC7	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.39851,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L217:
	movw	ip, #12300	@ tmp181,
	ldrb	r4, [r5, ip]	@ zero_extendqisi2	@ <variable>.Vp6CodecInfo.FrameType, <variable>.Vp6CodecInfo.FrameType
	cmp	r4, #0	@ <variable>.Vp6CodecInfo.FrameType,
	beq	.L221	@,
	movw	r3, #12292	@ tmp183,
	ldr	r4, [r5, r3]	@ <variable>.Vp6CodecInfo.RefNum, <variable>.Vp6CodecInfo.RefNum
	cmp	r4, #0	@ <variable>.Vp6CodecInfo.RefNum,
	bne	.L221	@,
	mov	r0, #18	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC5	@,
	movt	r2, #:upper16:.LC6	@,
	mov	r3, r4	@, <variable>.Vp6CodecInfo.RefNum
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.39851, <variable>.Vp6CodecInfo.RefNum
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L222:
	mov	r0, #1	@ D.39851,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L229:
	mov	r0, #18	@,
	movw	r1, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.39851,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L230:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC8	@,
	ldr	r2, .L231	@,
	movt	r1, #:upper16:.LC8	@,
	movw	r3, #2117	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.39851, pFwdImg
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L232:
	.align	2
.L231:
	.word	.LANCHOR0+120
	.fnend
	.size	VP6_DecodeDecide, .-VP6_DecodeDecide
	.align	2
	.global	VP6_SetImgFormat
	.type	VP6_SetImgFormat, %function
VP6_SetImgFormat:
	.fnstart
.LFB1561:
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
	movw	r1, #13000	@ tmp144,
	mov	r5, r0	@ pCtx, pCtx
	movw	r3, #12308	@ tmp146,
	ldr	r0, [r0, r1]	@, <variable>.ChanID
	ldr	r1, [r5, r3]	@, <variable>.Vp6CodecInfo.CurFsID
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pImg,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	movw	r1, #12300	@ tmp148,
	mov	lr, #0	@ tmp153,
	ldrb	r2, [r5, r1]	@ zero_extendqisi2	@ <variable>.Vp6CodecInfo.FrameType, <variable>.Vp6CodecInfo.FrameType
	mov	r1, lr	@, tmp153
	strb	lr, [r4, #372]	@ tmp153, <variable>.ImageDnr.pic_structure
	mov	lr, #8	@ tmp157,
	and	r3, r2, #3	@ D.40440, <variable>.Vp6CodecInfo.FrameType,
	str	lr, [r4, #392]	@ tmp157, <variable>.ImageDnr.QP_U
	orr	ip, r3, #7168	@ tmp150, D.40440,
	mov	r2, #1	@ tmp155,
	str	r3, [r4, #156]	@ D.40440, <variable>.bottom_fld_type
	orr	ip, ip, #32	@ tmp150, tmp150,
	str	r3, [r4, #152]	@ D.40440, <variable>.top_fld_type
	str	ip, [r4, #160]	@ tmp150, <variable>.format
	mov	ip, #10	@ tmp152,
	strb	r2, [r4, #377]	@ tmp155, <variable>.ImageDnr.chroma_format_idc
	str	ip, [r4, #384]	@ tmp152, <variable>.ImageDnr.video_standard
	strb	r2, [r4, #379]	@ tmp155, <variable>.ImageDnr.use_pic_qp_en
	str	lr, [r4, #388]	@ tmp157, <variable>.ImageDnr.QP_Y
	str	lr, [r4, #396]	@ tmp157, <variable>.ImageDnr.QP_V
	bl	SetAspectRatio	@
	movw	r0, #12500	@ tmp162,
	ldr	r3, [r5, r0]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.pic_width_in_mb, <variable>.Vp6CodecInfo.NewHeaderInfo.pic_width_in_mb
	movw	r1, #12496	@ tmp164,
	mov	r3, r3, asl #4	@ prephitmp.2510, <variable>.Vp6CodecInfo.NewHeaderInfo.pic_width_in_mb,
	str	r3, [r4, #164]	@ prephitmp.2510, <variable>.image_width
	ldr	r2, [r5, r1]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.pic_height_in_mb, <variable>.Vp6CodecInfo.NewHeaderInfo.pic_height_in_mb
	mov	r2, r2, asl #4	@ D.40447, <variable>.Vp6CodecInfo.NewHeaderInfo.pic_height_in_mb,
	str	r2, [r4, #168]	@ D.40447, <variable>.image_height
	ldr	ip, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r0, [ip, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r0, #25	@ <variable>.eCapLevel,
	movne	r2, r3	@ <variable>.image_width, prephitmp.2510
	beq	.L239	@,
.L235:
	ldr	r0, [r4, #168]	@ <variable>.image_height, <variable>.image_height
	mov	r3, r3, lsr #1	@ tmp180, prephitmp.2510,
	str	r2, [r4, #172]	@ <variable>.image_width, <variable>.disp_width
	str	r3, [r4, #180]	@ tmp180, <variable>.disp_center_x
	mov	r1, r0, lsr #1	@ tmp182, <variable>.image_height,
	str	r0, [r4, #176]	@ <variable>.image_height, <variable>.disp_height
	str	r1, [r4, #184]	@ tmp182, <variable>.disp_center_y
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L239:
	ldr	r1, [r4, #192]	@ D.40452, <variable>.image_stride
	mov	r2, r2, lsr #4	@ tmp170, D.40447,
	ldr	r3, [r4, #104]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	ldr	r0, [r4, #32]	@ <variable>.luma_vir_addr, <variable>.luma_vir_addr
	mov	lr, r1, asl #4	@ tmp168, D.40452,
	add	ip, r3, r1	@ tmp175, <variable>.luma_phy_addr, D.40452
	str	r3, [r4, #120]	@ <variable>.luma_phy_addr, <variable>.luma_2d_phy_addr
	mul	r2, r2, lr	@ D.40458, tmp170, tmp168
	str	r3, [r4, #88]	@ <variable>.luma_phy_addr, <variable>.top_luma_phy_addr
	str	ip, [r4, #96]	@ tmp175, <variable>.btm_luma_phy_addr
	str	r0, [r4, #48]	@ <variable>.luma_vir_addr, <variable>.luma_2d_vir_addr
	add	r3, r2, r3	@ tmp172, D.40458, <variable>.luma_phy_addr
	add	r2, r0, r2	@ tmp174, <variable>.luma_vir_addr, D.40458
	str	r3, [r4, #108]	@ tmp172, <variable>.chrom_phy_addr
	add	r0, r3, r1	@ tmp176, tmp172, D.40452
	str	r2, [r4, #36]	@ tmp174, <variable>.chrom_vir_addr
	str	r0, [r4, #100]	@ tmp176, <variable>.btm_chrom_phy_addr
	mov	r0, r3	@, tmp172
	str	r3, [r4, #92]	@ tmp172, <variable>.top_chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r2, [r4, #164]	@ <variable>.image_width, <variable>.image_width
	ldr	ip, [r4, #92]	@ <variable>.top_chrom_phy_addr, <variable>.top_chrom_phy_addr
	mov	r3, r2	@ prephitmp.2510, <variable>.image_width
	str	ip, [r4, #124]	@ <variable>.top_chrom_phy_addr, <variable>.chrom_2d_phy_addr
	str	r0, [r4, #52]	@, <variable>.chrom_2d_vir_addr
	b	.L235	@
	.fnend
	.size	VP6_SetImgFormat, .-VP6_SetImgFormat
	.align	2
	.global	VP6DEC_VDMPostProc
	.type	VP6DEC_VDMPostProc, %function
VP6DEC_VDMPostProc:
	.fnstart
.LFB1562:
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
	mov	r2, r1	@, ErrRatio
	mov	r6, r1	@ ErrRatio, ErrRatio
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	movw	r5, #13000	@ tmp147,
	bl	dprint_vfmw	@
	mov	r0, #10	@,
	mov	r1, r4	@, pCtx
	bl	ReleasePacket	@
	movw	r3, #12308	@ tmp149,
	ldr	r1, [r4, r3]	@, <variable>.Vp6CodecInfo.CurFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r3, r0, #0	@ pCurImg,
	beq	.L257	@,
	cmp	r6, #0	@ ErrRatio,
	blt	.L243	@,
	cmp	r6, #100	@ ErrRatio,
	movge	r6, #100	@ iftmp.514,
	str	r6, [r3, #200]	@ iftmp.514, <variable>.error_level
	ldr	r0, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [r0, #0]	@ D.40500, <variable>.s32RefErrThr
	cmp	r6, r3	@ iftmp.514, D.40500
	bhi	.L258	@,
.L244:
	mov	r0, r4	@, pCtx
	mov	r8, #1	@ tmp173,
	bl	VP6_SetImgFormat	@
	mov	ip, #12288	@ tmp174,
	ldr	r6, [r4, ip]	@ <variable>.Vp6CodecInfo.UsedDecMode, <variable>.Vp6CodecInfo.UsedDecMode
	movw	r2, #12292	@ tmp172,
	str	r8, [r4, r2]	@ tmp173, <variable>.Vp6CodecInfo.RefNum
	cmp	r6, #2	@ <variable>.Vp6CodecInfo.UsedDecMode,
	beq	.L259	@,
.L245:
	movw	r2, #12308	@ tmp185,
	movw	r0, #12320	@ tmp186,
	ldr	r1, [r4, r2]	@ prephitmp.2541, <variable>.Vp6CodecInfo.CurFsID
	str	r1, [r4, r0]	@ prephitmp.2541, <variable>.Vp6CodecInfo.ToQueFsID
.L246:
	cmn	r1, #1	@ prephitmp.2541,
	beq	.L247	@,
	movw	r5, #13000	@ tmp187,
	mov	r2, #1	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	movw	r7, #12320	@ tmp191,
	bl	FSP_SetDisplay	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.Vp6CodecInfo.ToQueFsID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pToQueImg,
	beq	.L260	@,
	add	ip, r4, #12608	@, pCtx,
	ldr	r0, [r4, r5]	@ <variable>.ChanID, <variable>.ChanID
	add	r3, ip, #40	@,,
	mov	r1, #10	@,
	mov	r2, r4	@, pCtx
	str	r6, [sp, #0]	@ pToQueImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@ ret,
	mov	r8, r0	@ ret,
	bne	.L261	@,
.L247:
	movw	r6, #12316	@ tmp211,
	movw	r3, #12312	@ tmp212,
	ldr	lr, [r4, r3]	@ <variable>.Vp6CodecInfo.GoldenFsID, <variable>.Vp6CodecInfo.GoldenFsID
	ldr	r1, [r4, r6]	@ prephitmp.2554, <variable>.Vp6CodecInfo.FwdFsID
	cmp	r1, lr	@ prephitmp.2554, <variable>.Vp6CodecInfo.GoldenFsID
	beq	.L249	@,
	movw	r5, #12308	@ tmp214,
	ldr	r8, [r4, r5]	@ <variable>.Vp6CodecInfo.CurFsID, <variable>.Vp6CodecInfo.CurFsID
	cmp	r1, r8	@ prephitmp.2554, <variable>.Vp6CodecInfo.CurFsID
	beq	.L250	@,
	movw	r2, #13000	@ tmp216,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #0	@,
	bl	FSP_SetRef	@
	ldr	r1, [r4, r5]	@ prephitmp.2554, <variable>.Vp6CodecInfo.CurFsID
.L250:
	movw	lr, #13000	@ tmp229,
	movw	r8, #12316	@ tmp228,
	str	r1, [r4, r8]	@ prephitmp.2554, <variable>.Vp6CodecInfo.FwdFsID
	mov	r2, #1	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	movw	r3, #12300	@ tmp231,
	ldrb	r1, [r4, r3]	@ zero_extendqisi2	@ <variable>.Vp6CodecInfo.FrameType, <variable>.Vp6CodecInfo.FrameType
	cmp	r1, #0	@ <variable>.Vp6CodecInfo.FrameType,
	bne	.L262	@,
	movw	r5, #12308	@ tmp236,
	movw	r3, #12312	@ tmp235,
	ldr	r1, [r4, r3]	@ prephitmp.2570, <variable>.Vp6CodecInfo.GoldenFsID
	ldr	ip, [r4, r5]	@ <variable>.Vp6CodecInfo.CurFsID, <variable>.Vp6CodecInfo.CurFsID
	cmp	r1, ip	@ prephitmp.2570, <variable>.Vp6CodecInfo.CurFsID
	beq	.L253	@,
.L263:
	movw	lr, #13000	@ tmp238,
	mov	r2, #0	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	ldr	r1, [r4, r5]	@ prephitmp.2570, <variable>.Vp6CodecInfo.CurFsID
.L253:
	movw	r2, #12312	@ tmp241,
	movw	r8, #13000	@ tmp242,
	str	r1, [r4, r2]	@ prephitmp.2570, <variable>.Vp6CodecInfo.GoldenFsID
	mov	r2, #1	@,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	bl	FSP_SetRef	@
.L255:
	mov	r8, #1	@ ret,
.L242:
	mov	r0, r8	@, ret
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L262:
	movw	r0, #12304	@ tmp233,
	ldr	r2, [r4, r0]	@ <variable>.Vp6CodecInfo.RefreshGoldenFrame, <variable>.Vp6CodecInfo.RefreshGoldenFrame
	cmp	r2, #0	@ <variable>.Vp6CodecInfo.RefreshGoldenFrame,
	beq	.L255	@,
	movw	r5, #12308	@ tmp236,
	movw	r3, #12312	@ tmp235,
	ldr	r1, [r4, r3]	@ prephitmp.2570, <variable>.Vp6CodecInfo.GoldenFsID
	ldr	ip, [r4, r5]	@ <variable>.Vp6CodecInfo.CurFsID, <variable>.Vp6CodecInfo.CurFsID
	cmp	r1, ip	@ prephitmp.2570, <variable>.Vp6CodecInfo.CurFsID
	bne	.L263	@,
	b	.L253	@
.L243:
	mov	r6, #0	@ tmp245,
	str	r6, [r3, #200]	@ tmp245, <variable>.error_level
	b	.L244	@
.L259:
	movw	r3, #12300	@ tmp176,
	ldrb	lr, [r4, r3]	@ zero_extendqisi2	@ <variable>.Vp6CodecInfo.FrameType, <variable>.Vp6CodecInfo.FrameType
	cmp	lr, #0	@ <variable>.Vp6CodecInfo.FrameType,
	beq	.L245	@,
	movw	r5, #12320	@ tmp178,
	movw	r1, #13000	@ tmp180,
	movw	r8, #12308	@ tmp182,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	mvn	r6, #0	@ tmp179,
	ldr	r1, [r4, r8]	@, <variable>.Vp6CodecInfo.CurFsID
	str	r6, [r4, r5]	@ tmp179, <variable>.Vp6CodecInfo.ToQueFsID
	mov	r2, #0	@,
	bl	FSP_SetDisplay	@
	ldr	r1, [r4, r5]	@ prephitmp.2541, <variable>.Vp6CodecInfo.ToQueFsID
	b	.L246	@
.L261:
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	sl, #0	@ tmp201,
	ldr	r1, [r6, #212]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	sl, [r6, #212]	@ tmp201, <variable>.p_usrdat
	ldr	r1, [r6, #216]	@, <variable>.p_usrdat
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	sl, [r6, #216]	@ tmp201, <variable>.p_usrdat
	mov	r2, sl	@, tmp201
	ldr	r1, [r4, r7]	@, <variable>.Vp6CodecInfo.ToQueFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_SetDisplay	@
	mov	r0, sl	@, tmp201
	movw	r1, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	b	.L242	@
.L249:
	movw	r7, #13000	@ tmp219,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_GetRef	@
	subs	r2, r0, #0	@ D.40533,
	movwne	r0, #12308	@ tmp221,
	ldrne	r1, [r4, r0]	@ prephitmp.2554, <variable>.Vp6CodecInfo.CurFsID
	bne	.L250	@
.L251:
	movw	r5, #12308	@ tmp223,
	ldr	r1, [r4, r6]	@ prephitmp.2554, <variable>.Vp6CodecInfo.FwdFsID
	ldr	ip, [r4, r5]	@ <variable>.Vp6CodecInfo.CurFsID, <variable>.Vp6CodecInfo.CurFsID
	cmp	r1, ip	@ prephitmp.2554, <variable>.Vp6CodecInfo.CurFsID
	beq	.L250	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	ldr	r1, [r4, r5]	@ prephitmp.2554, <variable>.Vp6CodecInfo.CurFsID
	b	.L250	@
.L258:
	mov	r2, r6	@, iftmp.514
	movw	sl, #12312	@ tmp156,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC12	@,
	movt	r1, #:upper16:.LC12	@,
	movw	r6, #12316	@ tmp160,
	bl	dprint_vfmw	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r4, sl]	@, <variable>.Vp6CodecInfo.GoldenFsID
	bl	FSP_ClearLogicFs	@
	ldr	r1, [r4, r6]	@, <variable>.Vp6CodecInfo.FwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	mov	r7, #0	@ tmp163,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mvn	r8, #0	@ ret,
	str	r7, [r4, sl]	@ tmp163, <variable>.Vp6CodecInfo.GoldenFsID
	str	r7, [r4, r6]	@ tmp163, <variable>.Vp6CodecInfo.FwdFsID
	bl	FSP_GetNullLogicFs	@
	movw	r1, #12292	@ tmp170,
	str	r7, [r4, r1]	@ tmp163, <variable>.Vp6CodecInfo.RefNum
	str	r0, [r4, sl]	@ D.40507, <variable>.Vp6CodecInfo.GoldenFsID
	str	r0, [r4, r6]	@ D.40507, <variable>.Vp6CodecInfo.FwdFsID
	b	.L242	@
.L260:
	mov	r2, r6	@, pToQueImg
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	mvn	r8, #0	@ ret,
	b	.L242	@
.L257:
	movw	r1, #:lower16:.LC11	@,
	movt	r1, #:upper16:.LC11	@,
	bl	dprint_vfmw	@
	mvn	r8, #0	@ ret,
	b	.L242	@
	.fnend
	.size	VP6DEC_VDMPostProc, .-VP6DEC_VDMPostProc
	.align	2
	.global	VP6_CfgTable
	.type	VP6_CfgTable, %function
VP6_CfgTable:
	.fnstart
.LFB1556:
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
	sub	r7, fp, #60	@ tmp799,,
	add	lr, r7, #4	@ tmp803, tmp799,
	add	r8, r0, #2240	@ tmp161, pVp6CodecInfo,
	mov	r4, r0	@ pVp6CodecInfo, pVp6CodecInfo
	mov	sl, #0	@ tmp157,
	str	r1, [fp, #-76]	@ pPictureHeader, %sfp
	mov	r2, #10	@,
	str	sl, [lr], #4	@ tmp157, _ptr_msg_bank
	add	r1, r0, #4	@, pVp6CodecInfo,
	str	sl, [lr], #4	@ tmp157, _ptr_msg_bank
	add	r0, r8, #2	@, tmp161,
	str	sl, [lr, #0]	@ tmp157, _ptr_msg_bank
	add	r6, r4, #2304	@ tmp178, pVp6CodecInfo,
	str	sl, [fp, #-60]	@ tmp157, _ptr_msg_bank
	bl	memcpy	@
	add	r1, r4, #14	@, pVp6CodecInfo,
	mov	r2, #10	@,
	add	r0, r8, #18	@, tmp161,
	add	r5, r6, #162	@ tmp801, tmp178,
	bl	memcpy	@
	add	r0, r8, #34	@, tmp161,
	add	r1, r4, #24	@, pVp6CodecInfo,
	mov	r2, #10	@,
	bl	memcpy	@
	add	r1, r4, #44	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r6, #2	@, tmp178,
	bl	memcpy	@
	add	r1, r4, #53	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r6, #18	@, tmp178,
	bl	memcpy	@
	add	r1, r4, #62	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r6, #34	@, tmp178,
	bl	memcpy	@
	add	r1, r4, #71	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r6, #50	@, tmp178,
	bl	memcpy	@
	add	r1, r4, #80	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r6, #66	@, tmp178,
	bl	memcpy	@
	add	r1, r4, #89	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r6, #82	@, tmp178,
	bl	memcpy	@
	add	r1, r4, #98	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r6, #98	@, tmp178,
	bl	memcpy	@
	add	r1, r4, #107	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r6, #114	@, tmp178,
	add	r8, r4, #134	@ tmp802, pVp6CodecInfo,
	bl	memcpy	@
	add	r1, r4, #116	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r6, #130	@, tmp178,
	add	r9, r4, #224	@ ivtmp.2724, pVp6CodecInfo,
	bl	memcpy	@
	add	r1, r4, #125	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r6, #146	@, tmp178,
	bl	memcpy	@
	mov	r1, r8	@, tmp802
	mov	r2, #9	@,
	mov	r0, r5	@, tmp801
	bl	memcpy	@
	add	r1, r4, #143	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r6, #178	@, tmp178,
	bl	memcpy	@
	add	r1, r4, #152	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r6, #194	@, tmp178,
	bl	memcpy	@
	add	r1, r4, #161	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r6, #210	@, tmp178,
	bl	memcpy	@
	add	r1, r4, #170	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r6, #226	@, tmp178,
	bl	memcpy	@
	add	r0, r6, #242	@, tmp178,
	add	r1, r4, #179	@, pVp6CodecInfo,
	mov	r2, #9	@,
	bl	memcpy	@
	add	r1, r4, #188	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r5, #96	@, tmp801,
	bl	memcpy	@
	add	r1, r4, #197	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r5, #112	@, tmp801,
	bl	memcpy	@
	add	r1, r4, #206	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r5, #128	@, tmp801,
	bl	memcpy	@
	add	r1, r4, #215	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r5, #144	@, tmp801,
	bl	memcpy	@
	mov	r1, r9	@, ivtmp.2724
	mov	r2, #9	@,
	add	r0, r5, #160	@, tmp801,
	bl	memcpy	@
	add	r1, r4, #233	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r5, #176	@, tmp801,
	bl	memcpy	@
	add	r1, r4, #242	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r5, #192	@, tmp801,
	bl	memcpy	@
	add	r1, r4, #251	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r5, #208	@, tmp801,
	bl	memcpy	@
	add	r1, r4, #260	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r5, #224	@, tmp801,
	bl	memcpy	@
	add	r1, r9, #45	@, ivtmp.2724,
	mov	r2, #9	@,
	add	r0, r5, #240	@, tmp801,
	bl	memcpy	@
	add	r1, r9, #54	@, ivtmp.2724,
	mov	r2, #9	@,
	add	r0, r5, #256	@, tmp801,
	bl	memcpy	@
	add	r1, r9, #63	@, ivtmp.2724,
	mov	r2, #9	@,
	add	r0, r5, #272	@, tmp801,
	bl	memcpy	@
	add	r6, r8, #180	@ ivtmp.2724, tmp802,
	add	r1, r4, #296	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r5, #288	@, tmp801,
	add	ip, r4, #2944	@, pVp6CodecInfo,
	str	ip, [fp, #-64]	@, %sfp
	bl	memcpy	@
	add	r1, r9, #81	@, ivtmp.2724,
	mov	r2, #9	@,
	add	r0, r5, #304	@, tmp801,
	bl	memcpy	@
	mov	r1, r6	@, ivtmp.2724
	mov	r2, #9	@,
	add	r0, r5, #320	@, tmp801,
	bl	memcpy	@
	add	r1, r8, #189	@, tmp802,
	mov	r2, #9	@,
	add	r0, r5, #336	@, tmp801,
	bl	memcpy	@
	add	r1, r4, #332	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r5, #352	@, tmp801,
	bl	memcpy	@
	add	r1, r8, #207	@, tmp802,
	mov	r2, #9	@,
	add	r0, r5, #368	@, tmp801,
	bl	memcpy	@
	add	r1, r8, #216	@, tmp802,
	mov	r2, #9	@,
	add	r0, r5, #384	@, tmp801,
	bl	memcpy	@
	add	r1, r8, #225	@, tmp802,
	mov	r2, #9	@,
	add	r0, r5, #400	@, tmp801,
	bl	memcpy	@
	add	r1, r4, #368	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r5, #416	@, tmp801,
	bl	memcpy	@
	add	r1, r8, #243	@, tmp802,
	mov	r2, #9	@,
	add	r0, r5, #432	@, tmp801,
	bl	memcpy	@
	add	r1, r8, #252	@, tmp802,
	mov	r2, #9	@,
	add	r0, r5, #448	@, tmp801,
	bl	memcpy	@
	add	r1, r6, #81	@, ivtmp.2724,
	mov	r2, #9	@,
	add	r0, r5, #464	@, tmp801,
	bl	memcpy	@
	mov	r0, r7	@, tmp799
	mov	r1, #16	@,
	bl	__memzero	@
	ldrb	r3, [r4, #488]	@ zero_extendqisi2	@, <variable>.MvShortProbs
	ldr	r9, [fp, #-64]	@, %sfp
	mov	r2, #16	@,
	ldrb	lr, [r4, #2]	@ zero_extendqisi2	@ <variable>.IsMvShortProb, <variable>.IsMvShortProb
	mov	r1, r7	@, tmp799
	ldrb	ip, [r4, #484]	@ zero_extendqisi2	@ <variable>.MvShortProbs, <variable>.MvShortProbs
	add	r0, r9, #2	@,,
	ldrb	r5, [r4, #0]	@ zero_extendqisi2	@ <variable>.MvSignProbs, <variable>.MvSignProbs
	ldrb	r6, [r4, #485]	@ zero_extendqisi2	@ <variable>.MvShortProbs, <variable>.MvShortProbs
	ldrb	r8, [r4, #486]	@ zero_extendqisi2	@ <variable>.MvShortProbs, <variable>.MvShortProbs
	ldrb	r9, [r4, #487]	@ zero_extendqisi2	@ <variable>.MvShortProbs, <variable>.MvShortProbs
	str	r3, [fp, #-68]	@, %sfp
	ldrb	r3, [r4, #489]	@ zero_extendqisi2	@, <variable>.MvShortProbs
	str	r3, [fp, #-72]	@, %sfp
	ldrb	r3, [r4, #490]	@ zero_extendqisi2	@ <variable>.MvShortProbs, <variable>.MvShortProbs
	strb	r6, [fp, #-57]	@ <variable>.MvShortProbs, _ptr_msg_bank
	strb	r8, [fp, #-56]	@ <variable>.MvShortProbs, _ptr_msg_bank
	ldr	r6, [fp, #-68]	@, %sfp
	ldr	r8, [fp, #-72]	@, %sfp
	strb	lr, [fp, #-59]	@ <variable>.IsMvShortProb, _ptr_msg_bank
	strb	ip, [fp, #-58]	@ <variable>.MvShortProbs, _ptr_msg_bank
	strb	r3, [fp, #-52]	@ <variable>.MvShortProbs, _ptr_msg_bank
	strb	r5, [fp, #-60]	@ <variable>.MvSignProbs, _ptr_msg_bank
	strb	r9, [fp, #-55]	@ <variable>.MvShortProbs, _ptr_msg_bank
	strb	r6, [fp, #-54]	@, _ptr_msg_bank
	strb	r8, [fp, #-53]	@, _ptr_msg_bank
	bl	memcpy	@
	mov	r0, r7	@, tmp799
	mov	r1, #16	@,
	bl	__memzero	@
	ldrb	r3, [r4, #503]	@ zero_extendqisi2	@, <variable>.MvSizeProbs
	ldr	r9, [fp, #-64]	@, %sfp
	mov	r2, #16	@,
	ldrb	lr, [r4, #498]	@ zero_extendqisi2	@ <variable>.MvSizeProbs, <variable>.MvSizeProbs
	mov	r1, r7	@, tmp799
	ldrb	ip, [r4, #499]	@ zero_extendqisi2	@ <variable>.MvSizeProbs, <variable>.MvSizeProbs
	add	r0, r9, #18	@,,
	ldrb	r5, [r4, #0]	@ zero_extendqisi2	@ <variable>.MvSignProbs, <variable>.MvSignProbs
	ldrb	r6, [r4, #500]	@ zero_extendqisi2	@ <variable>.MvSizeProbs, <variable>.MvSizeProbs
	ldrb	r8, [r4, #501]	@ zero_extendqisi2	@ <variable>.MvSizeProbs, <variable>.MvSizeProbs
	ldrb	r9, [r4, #502]	@ zero_extendqisi2	@ <variable>.MvSizeProbs, <variable>.MvSizeProbs
	str	r3, [fp, #-68]	@, %sfp
	ldrb	r3, [r4, #504]	@ zero_extendqisi2	@, <variable>.MvSizeProbs
	str	r3, [fp, #-72]	@, %sfp
	ldrb	r3, [r4, #505]	@ zero_extendqisi2	@ <variable>.MvSizeProbs, <variable>.MvSizeProbs
	strb	r6, [fp, #-57]	@ <variable>.MvSizeProbs, _ptr_msg_bank
	strb	r8, [fp, #-56]	@ <variable>.MvSizeProbs, _ptr_msg_bank
	ldr	r6, [fp, #-68]	@, %sfp
	ldr	r8, [fp, #-72]	@, %sfp
	strb	lr, [fp, #-59]	@ <variable>.MvSizeProbs, _ptr_msg_bank
	strb	ip, [fp, #-58]	@ <variable>.MvSizeProbs, _ptr_msg_bank
	strb	r3, [fp, #-52]	@ <variable>.MvSizeProbs, _ptr_msg_bank
	strb	r5, [fp, #-60]	@ <variable>.MvSignProbs, _ptr_msg_bank
	strb	r9, [fp, #-55]	@ <variable>.MvSizeProbs, _ptr_msg_bank
	strb	r6, [fp, #-54]	@, _ptr_msg_bank
	strb	r8, [fp, #-53]	@, _ptr_msg_bank
	strb	sl, [fp, #-51]	@ tmp157, _ptr_msg_bank
	strb	sl, [fp, #-50]	@ tmp157, _ptr_msg_bank
	bl	memcpy	@
	mov	r0, r7	@, tmp799
	mov	r1, #16	@,
	bl	__memzero	@
	ldrb	r3, [r4, #495]	@ zero_extendqisi2	@, <variable>.MvShortProbs
	ldr	r9, [fp, #-64]	@, %sfp
	mov	r2, #16	@,
	ldrb	lr, [r4, #3]	@ zero_extendqisi2	@ <variable>.IsMvShortProb, <variable>.IsMvShortProb
	mov	r1, r7	@, tmp799
	ldrb	r5, [r4, #1]	@ zero_extendqisi2	@ <variable>.MvSignProbs, <variable>.MvSignProbs
	add	r0, r9, #34	@,,
	ldrb	ip, [r4, #491]	@ zero_extendqisi2	@ <variable>.MvShortProbs, <variable>.MvShortProbs
	ldrb	r6, [r4, #492]	@ zero_extendqisi2	@ <variable>.MvShortProbs, <variable>.MvShortProbs
	ldrb	r8, [r4, #493]	@ zero_extendqisi2	@ <variable>.MvShortProbs, <variable>.MvShortProbs
	ldrb	r9, [r4, #494]	@ zero_extendqisi2	@ <variable>.MvShortProbs, <variable>.MvShortProbs
	str	r3, [fp, #-68]	@, %sfp
	ldrb	r3, [r4, #496]	@ zero_extendqisi2	@, <variable>.MvShortProbs
	str	r3, [fp, #-72]	@, %sfp
	ldrb	r3, [r4, #497]	@ zero_extendqisi2	@ <variable>.MvShortProbs, <variable>.MvShortProbs
	strb	ip, [fp, #-58]	@ <variable>.MvShortProbs, _ptr_msg_bank
	strb	r9, [fp, #-55]	@ <variable>.MvShortProbs, _ptr_msg_bank
	ldr	ip, [fp, #-68]	@, %sfp
	ldr	r9, [fp, #-72]	@, %sfp
	strb	lr, [fp, #-59]	@ <variable>.IsMvShortProb, _ptr_msg_bank
	strb	ip, [fp, #-54]	@, _ptr_msg_bank
	strb	r3, [fp, #-52]	@ <variable>.MvShortProbs, _ptr_msg_bank
	strb	r5, [fp, #-60]	@ <variable>.MvSignProbs, _ptr_msg_bank
	strb	r6, [fp, #-57]	@ <variable>.MvShortProbs, _ptr_msg_bank
	strb	r8, [fp, #-56]	@ <variable>.MvShortProbs, _ptr_msg_bank
	strb	r9, [fp, #-53]	@, _ptr_msg_bank
	bl	memcpy	@
	mov	r0, r7	@, tmp799
	mov	r1, #16	@,
	bl	__memzero	@
	ldrb	r1, [r4, #507]	@ zero_extendqisi2	@, <variable>.MvSizeProbs
	ldrb	r8, [r4, #1]	@ zero_extendqisi2	@ <variable>.MvSignProbs, <variable>.MvSignProbs
	ldrb	r9, [r4, #506]	@ zero_extendqisi2	@ <variable>.MvSizeProbs, <variable>.MvSizeProbs
	ldr	r2, [fp, #-64]	@, %sfp
	str	r1, [fp, #-64]	@, %sfp
	mov	r1, r7	@, tmp799
	ldrb	ip, [r4, #511]	@ zero_extendqisi2	@ <variable>.MvSizeProbs, <variable>.MvSizeProbs
	add	r0, r2, #50	@,,
	ldrb	r3, [r4, #513]	@ zero_extendqisi2	@ <variable>.MvSizeProbs, <variable>.MvSizeProbs
	mov	r2, #16	@,
	ldrb	r6, [r4, #508]	@ zero_extendqisi2	@ <variable>.MvSizeProbs, <variable>.MvSizeProbs
	ldrb	r5, [r4, #509]	@ zero_extendqisi2	@ <variable>.MvSizeProbs, <variable>.MvSizeProbs
	ldrb	lr, [r4, #510]	@ zero_extendqisi2	@ <variable>.MvSizeProbs, <variable>.MvSizeProbs
	ldrb	r7, [r4, #512]	@ zero_extendqisi2	@ <variable>.MvSizeProbs, <variable>.MvSizeProbs
	strb	r8, [fp, #-60]	@ <variable>.MvSignProbs, _ptr_msg_bank
	ldr	r8, [fp, #-64]	@, %sfp
	strb	ip, [fp, #-54]	@ <variable>.MvSizeProbs, _ptr_msg_bank
	strb	r3, [fp, #-52]	@ <variable>.MvSizeProbs, _ptr_msg_bank
	strb	r9, [fp, #-59]	@ <variable>.MvSizeProbs, _ptr_msg_bank
	strb	r8, [fp, #-58]	@, _ptr_msg_bank
	strb	r6, [fp, #-57]	@ <variable>.MvSizeProbs, _ptr_msg_bank
	strb	r5, [fp, #-56]	@ <variable>.MvSizeProbs, _ptr_msg_bank
	strb	lr, [fp, #-55]	@ <variable>.MvSizeProbs, _ptr_msg_bank
	strb	r7, [fp, #-53]	@ <variable>.MvSizeProbs, _ptr_msg_bank
	strb	sl, [fp, #-50]	@ tmp157, _ptr_msg_bank
	strb	sl, [fp, #-51]	@ tmp157, _ptr_msg_bank
	bl	memcpy	@
	ldr	ip, [fp, #-76]	@, %sfp
	ldr	r3, [ip, #68]	@ <variable>.UseHuffman, <variable>.UseHuffman
	cmp	r3, sl	@ <variable>.UseHuffman,
	bne	.L266	@,
	add	r7, r4, #1152	@ D.40221, pVp6CodecInfo,
	add	sl, r4, #4096	@ tmp346, pVp6CodecInfo,
	add	r0, sl, #2	@, tmp346,
	mov	r2, #11	@,
	mov	r1, r7	@, D.40221
	add	r8, r4, #536	@ D.40229, pVp6CodecInfo,
	bl	memcpy	@
	add	r1, r7, #11	@, D.40221,
	add	r0, sl, #18	@, tmp346,
	mov	r2, #11	@,
	bl	memcpy	@
	add	r1, r7, #22	@, D.40221,
	add	r0, sl, #34	@, tmp346,
	mov	r2, #11	@,
	bl	memcpy	@
	add	r1, r7, #33	@, D.40221,
	add	r0, sl, #50	@, tmp346,
	mov	r2, #11	@,
	bl	memcpy	@
	add	r1, r7, #44	@, D.40221,
	add	r0, sl, #66	@, tmp346,
	mov	r2, #11	@,
	bl	memcpy	@
	add	r1, r7, #55	@, D.40221,
	add	r0, sl, #82	@, tmp346,
	add	r7, r4, #4160	@ tmp392, pVp6CodecInfo,
	add	sl, r4, #4736	@ tmp381, pVp6CodecInfo,
	mov	r2, #11	@,
	add	r5, r7, #34	@ D.40232, tmp392,
	add	r6, r4, #564	@ D.40242, pVp6CodecInfo,
	bl	memcpy	@
	mov	r1, r8	@, D.40229
	mov	r2, #14	@,
	add	r0, sl, #34	@, tmp381,
	bl	memcpy	@
	add	r1, r8, #14	@, D.40229,
	mov	r2, #14	@,
	add	r0, sl, #50	@, tmp381,
	bl	memcpy	@
	mov	r1, r6	@, D.40242
	mov	r2, #11	@,
	mov	r0, r5	@, D.40232
	bl	memcpy	@
	add	r1, r6, #66	@, D.40242,
	mov	r2, #11	@,
	add	r0, r7, #50	@, tmp392,
	bl	memcpy	@
	add	r1, r4, #696	@, pVp6CodecInfo,
	mov	r2, #11	@,
	add	r0, r7, #66	@, tmp392,
	bl	memcpy	@
	add	r1, r6, #11	@, D.40242,
	mov	r2, #11	@,
	add	r0, r7, #82	@, tmp392,
	bl	memcpy	@
	add	r1, r6, #77	@, D.40242,
	mov	r2, #11	@,
	add	r0, r7, #98	@, tmp392,
	bl	memcpy	@
	add	r1, r6, #143	@, D.40242,
	mov	r2, #11	@,
	add	r0, r7, #114	@, tmp392,
	bl	memcpy	@
	add	r1, r6, #22	@, D.40242,
	mov	r2, #11	@,
	add	r0, r7, #130	@, tmp392,
	bl	memcpy	@
	add	r1, r4, #652	@, pVp6CodecInfo,
	mov	r2, #11	@,
	add	r0, r7, #146	@, tmp392,
	bl	memcpy	@
	add	r1, r6, #154	@, D.40242,
	mov	r2, #11	@,
	add	r0, r7, #162	@, tmp392,
	bl	memcpy	@
	add	r1, r6, #33	@, D.40242,
	mov	r2, #11	@,
	add	r0, r7, #178	@, tmp392,
	bl	memcpy	@
	add	r1, r6, #99	@, D.40242,
	mov	r2, #11	@,
	add	r0, r7, #194	@, tmp392,
	bl	memcpy	@
	add	r1, r6, #165	@, D.40242,
	mov	r2, #11	@,
	add	r0, r7, #210	@, tmp392,
	bl	memcpy	@
	add	r1, r4, #608	@, pVp6CodecInfo,
	mov	r2, #11	@,
	add	r0, r7, #226	@, tmp392,
	bl	memcpy	@
	add	r1, r6, #110	@, D.40242,
	mov	r2, #11	@,
	add	r0, r7, #242	@, tmp392,
	bl	memcpy	@
	add	r1, r4, #740	@, pVp6CodecInfo,
	mov	r2, #11	@,
	add	r0, r5, #224	@, D.40232,
	bl	memcpy	@
	add	r1, r6, #55	@, D.40242,
	mov	r2, #11	@,
	add	r0, r5, #240	@, D.40232,
	bl	memcpy	@
	add	r1, r6, #121	@, D.40242,
	mov	r2, #11	@,
	add	r0, r5, #256	@, D.40232,
	bl	memcpy	@
	add	r1, r6, #187	@, D.40242,
	mov	r2, #11	@,
	add	r0, r5, #272	@, D.40232,
	bl	memcpy	@
	add	r1, r6, #198	@, D.40242,
	mov	r2, #11	@,
	add	r0, r5, #288	@, D.40232,
	bl	memcpy	@
	add	r1, r4, #828	@, pVp6CodecInfo,
	mov	r2, #11	@,
	add	r0, r5, #304	@, D.40232,
	bl	memcpy	@
	add	r3, r4, #892	@, pVp6CodecInfo,
	add	r1, r3, #2	@,,
	mov	r2, #11	@,
	add	r0, r5, #320	@, D.40232,
	bl	memcpy	@
	add	r1, r6, #209	@, D.40242,
	mov	r2, #11	@,
	add	r0, r5, #336	@, D.40232,
	bl	memcpy	@
	add	r2, r4, #836	@, pVp6CodecInfo,
	add	r1, r2, #3	@,,
	add	r0, r5, #352	@, D.40232,
	mov	r2, #11	@,
	bl	memcpy	@
	add	r0, r4, #904	@, pVp6CodecInfo,
	add	r1, r0, #1	@,,
	mov	r2, #11	@,
	add	r0, r5, #368	@, D.40232,
	bl	memcpy	@
	add	r1, r4, #784	@, pVp6CodecInfo,
	mov	r2, #11	@,
	add	r0, r5, #384	@, D.40232,
	bl	memcpy	@
	add	r1, r4, #848	@, pVp6CodecInfo,
	add	r1, r1, #2	@,,
	mov	r2, #11	@,
	add	r0, r5, #400	@, D.40232,
	bl	memcpy	@
	add	r1, r4, #916	@, pVp6CodecInfo,
	mov	r2, #11	@,
	add	r0, r5, #416	@, D.40232,
	bl	memcpy	@
	add	r1, r6, #231	@, D.40242,
	mov	r2, #11	@,
	add	r0, r5, #432	@, D.40232,
	bl	memcpy	@
	add	ip, r4, #860	@, pVp6CodecInfo,
	add	r1, ip, #1	@,,
	mov	r2, #11	@,
	add	r0, r5, #448	@, D.40232,
	bl	memcpy	@
	add	r3, r4, #924	@, pVp6CodecInfo,
	add	r1, r3, #3	@,,
	mov	r2, #11	@,
	add	r0, r5, #464	@, D.40232,
	bl	memcpy	@
	add	r1, r6, #242	@, D.40242,
	mov	r2, #11	@,
	add	r0, r5, #480	@, D.40232,
	bl	memcpy	@
	add	r1, r4, #872	@, pVp6CodecInfo,
	mov	r2, #11	@,
	add	r0, r5, #496	@, D.40232,
	bl	memcpy	@
	add	r2, r4, #936	@, pVp6CodecInfo,
	add	r1, r2, #2	@,,
	add	r0, r5, #512	@, D.40232,
	mov	r2, #11	@,
	bl	memcpy	@
	add	r1, r6, #253	@, D.40242,
	mov	r2, #11	@,
	add	r0, r5, #528	@, D.40232,
	bl	memcpy	@
	add	r0, r4, #880	@, pVp6CodecInfo,
	add	r1, r0, #3	@,,
	mov	r2, #11	@,
	add	r0, r5, #544	@, D.40232,
	bl	memcpy	@
	add	r1, r4, #948	@, pVp6CodecInfo,
	add	r0, r5, #560	@, D.40232,
	add	r1, r1, #1	@,,
	mov	r2, #11	@,
	bl	memcpy	@
.L267:
	add	lr, r4, #3008	@, pVp6CodecInfo,
	add	r1, r4, #960	@, pVp6CodecInfo,
	add	r0, lr, #2	@,,
	mov	r2, #64	@,
	bl	memcpy	@
	add	r3, r4, #3072	@, pVp6CodecInfo,
	add	r0, r3, #2	@,,
	add	r1, r4, #1024	@, pVp6CodecInfo,
	mov	r2, #64	@,
	bl	memcpy	@
	mov	r0, #0	@,
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L266:
	add	r5, r4, #4800	@, pVp6CodecInfo,
	add	r6, r4, #9472	@, pVp6CodecInfo,
	add	r7, r4, #9600	@ tmp633, pVp6CodecInfo,
	add	r8, r4, #4928	@ tmp632, pVp6CodecInfo,
	add	r1, r6, #28	@,,
	add	r0, r5, #2	@,,
	mov	r2, #128	@,
	add	r5, r8, #2	@ D.40198, tmp632,
	add	r6, r7, #28	@ D.40207, tmp633,
	bl	memcpy	@
	add	r2, r4, #11904	@, pVp6CodecInfo,
	add	r0, r4, #6464	@, pVp6CodecInfo,
	add	r1, r2, #28	@,,
	add	r0, r0, #2	@,,
	mov	r2, #128	@,
	bl	memcpy	@
	mov	r1, r6	@, D.40207
	mov	r2, #64	@,
	mov	r0, r5	@, D.40198
	bl	memcpy	@
	add	r1, r7, #92	@, tmp633,
	mov	r2, #64	@,
	add	r0, r8, #66	@, tmp632,
	bl	memcpy	@
	add	r1, r7, #156	@, tmp633,
	mov	r2, #64	@,
	add	r0, r8, #130	@, tmp632,
	bl	memcpy	@
	add	r1, r7, #220	@, tmp633,
	add	r0, r8, #194	@, tmp632,
	mov	r2, #64	@,
	bl	memcpy	@
	add	r1, r7, #412	@, tmp633,
	mov	r2, #64	@,
	add	r0, r5, #256	@, D.40198,
	bl	memcpy	@
	add	r1, r7, #476	@, tmp633,
	mov	r2, #64	@,
	add	r0, r5, #320	@, D.40198,
	bl	memcpy	@
	add	r1, r7, #540	@, tmp633,
	mov	r2, #64	@,
	add	r0, r5, #384	@, D.40198,
	bl	memcpy	@
	add	r1, r7, #604	@, tmp633,
	mov	r2, #64	@,
	add	r0, r5, #448	@, D.40198,
	bl	memcpy	@
	add	r1, r7, #796	@, tmp633,
	mov	r2, #64	@,
	add	r0, r5, #512	@, D.40198,
	bl	memcpy	@
	add	r1, r7, #860	@, tmp633,
	mov	r2, #64	@,
	add	r0, r5, #576	@, D.40198,
	bl	memcpy	@
	add	r1, r7, #924	@, tmp633,
	mov	r2, #64	@,
	add	r0, r5, #640	@, D.40198,
	bl	memcpy	@
	add	r1, r7, #988	@, tmp633,
	mov	r2, #64	@,
	add	r0, r5, #704	@, D.40198,
	bl	memcpy	@
	add	r1, r6, #1152	@, D.40207,
	mov	r2, #64	@,
	add	r0, r5, #768	@, D.40198,
	bl	memcpy	@
	add	r1, r6, #1216	@, D.40207,
	mov	r2, #64	@,
	add	r0, r5, #832	@, D.40198,
	bl	memcpy	@
	add	r1, r6, #1280	@, D.40207,
	mov	r2, #64	@,
	add	r0, r5, #896	@, D.40198,
	bl	memcpy	@
	add	r1, r6, #1344	@, D.40207,
	mov	r2, #64	@,
	add	r0, r5, #960	@, D.40198,
	bl	memcpy	@
	add	r1, r6, #1536	@, D.40207,
	mov	r2, #64	@,
	add	r0, r5, #1024	@, D.40198,
	bl	memcpy	@
	add	r1, r6, #1600	@, D.40207,
	mov	r2, #64	@,
	add	r0, r5, #1088	@, D.40198,
	bl	memcpy	@
	add	r1, r6, #1664	@, D.40207,
	mov	r2, #64	@,
	add	r0, r5, #1152	@, D.40198,
	bl	memcpy	@
	add	r1, r6, #1728	@, D.40207,
	mov	r2, #64	@,
	add	r0, r5, #1216	@, D.40198,
	bl	memcpy	@
	add	r1, r6, #1920	@, D.40207,
	mov	r2, #64	@,
	add	r0, r5, #1280	@, D.40198,
	bl	memcpy	@
	add	r1, r6, #1984	@, D.40207,
	mov	r2, #64	@,
	add	r0, r5, #1344	@, D.40198,
	bl	memcpy	@
	add	r1, r6, #2048	@, D.40207,
	mov	r2, #64	@,
	add	r0, r5, #1408	@, D.40198,
	bl	memcpy	@
	add	r1, r6, #2112	@, D.40207,
	add	r0, r5, #1472	@, D.40198,
	mov	r2, #64	@,
	bl	memcpy	@
	add	r1, r4, #3136	@, pVp6CodecInfo,
	add	ip, r4, #1216	@, pVp6CodecInfo,
	add	r0, r1, #2	@,,
	mov	r2, #960	@,
	add	r1, ip, #2	@,,
	bl	memcpy	@
	b	.L267	@
	.fnend
	.size	VP6_CfgTable, .-VP6_CfgTable
	.align	2
	.global	VP6_Set_DecParam
	.type	VP6_Set_DecParam, %function
VP6_Set_DecParam:
	.fnstart
.LFB1555:
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
	movw	r3, #12300	@ tmp168,
	ldrb	r3, [r0, r3]	@ zero_extendqisi2	@ <variable>.Vp6CodecInfo.FrameType, <variable>.Vp6CodecInfo.FrameType
	mov	r4, r0	@ pCtx, pCtx
	add	r5, r0, #8	@ pVp6DecParam, pCtx,
	ldr	r7, [r0, #204]	@ pVp6StreamParam, <variable>.pVp6StreamParam
	cmp	r3, #3	@ <variable>.Vp6CodecInfo.FrameType,
	beq	.L298	@,
	mov	r0, r5	@, pVp6DecParam
	mov	r1, #196	@,
	movw	sl, #12492	@ tmp198,
	bl	__memzero	@
	ldr	r8, [r4, sl]	@, <variable>.Vp6CodecInfo.NewHeaderInfo.FrameType
	movw	r3, #12474	@ tmp204,
	movw	ip, #12540	@ tmp206,
	movw	r2, #12528	@ tmp208,
	ldr	r1, [r4, ip]	@, <variable>.Vp6CodecInfo.NewHeaderInfo.UseHuffman
	movw	r9, #12476	@ tmp210,
	ldr	r0, [r4, r2]	@, <variable>.Vp6CodecInfo.NewHeaderInfo.PredictionFilterMode
	movw	r2, #12496	@ tmp231,
	str	r8, [r4, #68]	@, <variable>.Vp6DecParam.FrameType
	movw	r6, #12472	@ tmp202,
	ldrb	r8, [r4, r3]	@ zero_extendqisi2	@ <variable>.Vp6CodecInfo.NewHeaderInfo.MultiStream, <variable>.Vp6CodecInfo.NewHeaderInfo.MultiStream
	movw	r3, #12500	@ tmp229,
	ldrh	ip, [r4, r3]	@, <variable>.Vp6CodecInfo.NewHeaderInfo.pic_width_in_mb
	movw	r3, #12536	@ tmp216,
	str	r1, [r4, #80]	@, <variable>.Vp6DecParam.UseHuffman
	movw	r1, #12477	@ tmp212,
	str	r0, [r4, #92]	@, <variable>.Vp6DecParam.PredictionFilterMode
	ldrh	r0, [r4, r2]	@, <variable>.Vp6CodecInfo.NewHeaderInfo.pic_height_in_mb
	movw	r2, #12473	@ tmp218,
	strh	ip, [r4, #60]	@ movhi	@, <variable>.Vp6DecParam.PicWidthInMb
	ldrb	ip, [r4, r1]	@ zero_extendqisi2	@ <variable>.Vp6CodecInfo.NewHeaderInfo.PredictionFilterMvSizeThresh, <variable>.Vp6CodecInfo.NewHeaderInfo.PredictionFilterMvSizeThresh
	ldr	r1, [r4, r3]	@, <variable>.Vp6CodecInfo.NewHeaderInfo.UseLoopFilter
	movw	r3, #12482	@ tmp223,
	ldrb	lr, [r4, r9]	@ zero_extendqisi2	@ <variable>.Vp6CodecInfo.NewHeaderInfo.PredictionFilterVarThresh, <variable>.Vp6CodecInfo.NewHeaderInfo.PredictionFilterVarThresh
	movw	r9, #12478	@ tmp214,
	strh	r0, [r4, #62]	@ movhi	@, <variable>.Vp6DecParam.PicHeightInMb
	ldrb	r0, [r4, r9]	@ zero_extendqisi2	@ <variable>.Vp6CodecInfo.NewHeaderInfo.PredictionFilterAlpha, <variable>.Vp6CodecInfo.NewHeaderInfo.PredictionFilterAlpha
	mov	r9, #12480	@ tmp221,
	str	r1, [r4, #116]	@, <variable>.Vp6DecParam.UseLoopFilter
	ldrb	r1, [r4, r2]	@ zero_extendqisi2	@ <variable>.Vp6CodecInfo.NewHeaderInfo.FLimit, <variable>.Vp6CodecInfo.NewHeaderInfo.FLimit
	ldrh	r2, [r4, r9]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.DcQuant, <variable>.Vp6CodecInfo.NewHeaderInfo.DcQuant
	movw	r9, #12488	@ tmp225,
	ldr	r9, [r4, r9]	@, <variable>.Vp6CodecInfo.NewHeaderInfo.VpProfile
	ldrb	sl, [r4, r6]	@ zero_extendqisi2	@ <variable>.Vp6CodecInfo.NewHeaderInfo.DctQMask, <variable>.Vp6CodecInfo.NewHeaderInfo.DctQMask
	movw	r6, #13000	@ tmp233,
	ldrh	r3, [r4, r3]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.AcQuant, <variable>.Vp6CodecInfo.NewHeaderInfo.AcQuant
	str	r9, [r4, #112]	@, <variable>.Vp6DecParam.VpProfile
	movw	r9, #12484	@ tmp227,
	ldr	r9, [r4, r9]	@, <variable>.Vp6CodecInfo.NewHeaderInfo.Vp3VersionNo
	str	r8, [r4, #76]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.MultiStream, <variable>.Vp6DecParam.MultiStream
	movw	r8, #12308	@ tmp235,
	str	lr, [r4, #96]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.PredictionFilterVarThresh, <variable>.Vp6DecParam.PredictionFilterVarThresh
	str	ip, [r4, #100]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.PredictionFilterMvSizeThresh, <variable>.Vp6DecParam.PredictionFilterMvSizeThresh
	str	r2, [r4, #84]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.DcQuant, <variable>.Vp6DecParam.DcQuant
	str	r3, [r4, #88]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.AcQuant, <variable>.Vp6DecParam.AcQuant
	str	r9, [r4, #108]	@, <variable>.Vp6DecParam.Vp3VersionNo
	mov	r9, #0	@ tmp200,
	str	sl, [r4, #72]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.DctQMask, <variable>.Vp6DecParam.DctQMask
	movw	sl, #12316	@ tmp239,
	str	r0, [r4, #104]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.PredictionFilterAlpha, <variable>.Vp6DecParam.PredictionFilterAlpha
	strb	r1, [r4, #8]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.FLimit, <variable>.Vp6DecParam.FLimit
	strb	r9, [r4, #9]	@ tmp200, <variable>.Vp6DecParam.IsNvopCopy
	ldr	r1, [r4, r8]	@, <variable>.Vp6CodecInfo.CurFsID
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	ldr	r1, [r4, sl]	@, <variable>.Vp6CodecInfo.FwdFsID
	mov	r8, r0	@ pCur.2917,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	movw	ip, #12312	@ tmp243,
	ldr	r1, [r4, ip]	@, <variable>.Vp6CodecInfo.GoldenFsID
	mov	sl, r0	@ pFwd.2920,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	cmp	r8, r9	@ pCur.2917,
	cmpne	sl, r9	@, pFwd.2920,
	beq	.L283	@,
	cmp	r0, r9	@ pGolden.2923,
	beq	.L283	@,
	ldr	r6, [r8, #520]	@ temp.2927, <variable>.pstDecodeFs
	cmp	r6, #0	@ temp.2927,
	beq	.L299	@,
	ldr	lr, [r6, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	ip, #12324	@ tmp259,
	add	r6, r4, #12608	@ pBs, pCtx,
	add	r6, r6, #8	@ pBs, pBs,
	str	lr, [r4, #180]	@ <variable>.PhyAddr, <variable>.Vp6DecParam.image_curr_recon_addr
	ldr	r1, [r8, #532]	@ <variable>.PmvAddr, <variable>.PmvAddr
	str	r1, [r4, #192]	@ <variable>.PmvAddr, <variable>.Vp6DecParam.CurPmvAddr
	ldr	r2, [r0, #520]	@ temp.2933, <variable>.pstDecodeFs
	movw	r0, #12556	@ tmp265,
	ldr	r1, [r4, ip]	@ <variable>.Vp6CodecInfo.DDR_Stride, <variable>.Vp6CodecInfo.DDR_Stride
	cmp	r2, #0	@ temp.2933,
	ldreq	r2, [r8, #520]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r9, [r2, #12]	@ iftmp.498, <variable>.PhyAddr
	str	r9, [r4, #184]	@ iftmp.498, <variable>.Vp6DecParam.image_golden_ref_addr
	ldr	r3, [sl, #520]	@ temp.2937, <variable>.pstDecodeFs
	movw	sl, #12552	@ tmp261,
	ldr	r2, [r4, sl]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.br.value, <variable>.Vp6CodecInfo.NewHeaderInfo.br.value
	cmp	r3, #0	@ temp.2937,
	ldreq	r3, [r8, #520]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	movw	r8, #12548	@ tmp263,
	ldr	r9, [r4, r8]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.br.range, <variable>.Vp6CodecInfo.NewHeaderInfo.br.range
	ldr	lr, [r3, #12]	@ iftmp.499, <variable>.PhyAddr
	ldr	r3, [r4, r0]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.br.count, <variable>.Vp6CodecInfo.NewHeaderInfo.br.count
	mov	r0, r6	@, pBs
	str	r1, [r4, #196]	@ <variable>.Vp6CodecInfo.DDR_Stride, <variable>.Vp6DecParam.VahbStride
	str	lr, [r4, #188]	@ iftmp.499, <variable>.Vp6DecParam.image_last_ref_addr
	str	r2, [r4, #168]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.br.value, <variable>.Vp6DecParam.value
	str	r3, [r4, #176]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.br.count, <variable>.Vp6DecParam.count
	str	r9, [r4, #172]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.br.range, <variable>.Vp6DecParam.range
	movw	r9, #12474	@ tmp273,
	ldr	sl, [r7, #0]	@ D.40007, <variable>.VirAddr
	bl	BsPos	@
	cmp	r0, #0	@ D.40008,
	add	ip, r0, #7	@ tmp269, D.40008,
	movlt	r0, ip	@ D.40008, tmp269
	add	r8, sl, r0, asr #3	@, BaseAddrUnAligned, D.40007, D.40008,
	mov	r0, r8	@, BaseAddrUnAligned
	bl	MEM_Vir2Phy	@
	bic	r1, r0, #15	@ tmp271,,
	mov	r0, r8	@, BaseAddrUnAligned
	sub	r2, r1, #16	@ tmp272, tmp271,
	str	r2, [r4, #64]	@ tmp272, <variable>.Vp6DecParam.StreamBaseAddr
	bl	MEM_Vir2Phy	@
	ldrb	r8, [r4, r9]	@ zero_extendqisi2	@ <variable>.Vp6CodecInfo.NewHeaderInfo.MultiStream, <variable>.Vp6CodecInfo.NewHeaderInfo.MultiStream
	cmp	r8, #0	@ <variable>.Vp6CodecInfo.NewHeaderInfo.MultiStream,
	and	r0, r0, #15	@ ResideBytes,,
	bne	.L290	@,
	movw	ip, #12488	@ tmp275,
	ldr	sl, [r4, ip]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.VpProfile, <variable>.Vp6CodecInfo.NewHeaderInfo.VpProfile
	cmp	sl, #0	@ <variable>.Vp6CodecInfo.NewHeaderInfo.VpProfile,
	bne	.L291	@,
.L290:
	movw	r8, #12524	@ tmp279,
	mov	r3, r0, asl #3	@ tmp278, ResideBytes,
	ldr	lr, [r4, r8]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.Buff2Offset, <variable>.Vp6CodecInfo.NewHeaderInfo.Buff2Offset
	mov	r0, r6	@, pBs
	str	r3, [r4, #124]	@ tmp278, <variable>.Vp6DecParam.bit0_offset_0
	mov	r6, #16	@ tmp277,
	str	r6, [r4, #128]	@ tmp277, <variable>.Vp6DecParam.bit0_stream_addr_0
	mov	r6, #0	@ tmp282,
	mov	r9, lr, asl #3	@ D.40023, <variable>.Vp6CodecInfo.NewHeaderInfo.Buff2Offset,
	bl	BsPos	@
	ldr	r2, [r4, r8]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.Buff2Offset, <variable>.Vp6CodecInfo.NewHeaderInfo.Buff2Offset
	str	r6, [r4, #140]	@ tmp282, <variable>.Vp6DecParam.bit0_stream_addr_1
	str	r6, [r4, #136]	@ tmp282, <variable>.Vp6DecParam.bit0_offset_1
	str	r6, [r4, #132]	@ tmp282, <variable>.Vp6DecParam.bit0_len_1
	rsb	r1, r0, r9	@ tmp281,, D.40023
	str	r1, [r4, #120]	@ tmp281, <variable>.Vp6DecParam.bit0_len_0
	ldr	r0, [r7, #0]	@ <variable>.VirAddr, <variable>.VirAddr
	add	sl, r0, r2	@ BaseAddrUnAligned.2947, <variable>.VirAddr, <variable>.Vp6CodecInfo.NewHeaderInfo.Buff2Offset
	mov	r0, sl	@, BaseAddrUnAligned.2947
	bl	MEM_Vir2Phy	@
	mov	r9, r0	@ D.40027,
	mov	r0, sl	@, BaseAddrUnAligned.2947
	bl	MEM_Vir2Phy	@
	and	ip, r9, #15	@ tmp291, D.40027,
	ldr	r2, [r4, #64]	@ <variable>.Vp6DecParam.StreamBaseAddr, <variable>.Vp6DecParam.StreamBaseAddr
	ldr	r3, [r4, r8]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.Buff2Offset, <variable>.Vp6CodecInfo.NewHeaderInfo.Buff2Offset
	mov	sl, ip, asl #3	@ tmp292, tmp291,
	str	sl, [r4, #148]	@ tmp292, <variable>.Vp6DecParam.bit1_offset_0
	mov	r8, r3, asl #3	@ tmp296, <variable>.Vp6CodecInfo.NewHeaderInfo.Buff2Offset,
	bic	r1, r0, #15	@ tmp288,,
	rsb	r9, r2, r1	@ tmp290, <variable>.Vp6DecParam.StreamBaseAddr, tmp288
	str	r9, [r4, #152]	@ tmp290, <variable>.Vp6DecParam.bit1_stream_addr_0
	ldr	r0, [r7, #8]	@ <variable>.Length, <variable>.Length
	str	r6, [r4, #156]	@ tmp282, <variable>.Vp6DecParam.bit1_len_1
	str	r6, [r4, #164]	@ tmp282, <variable>.Vp6DecParam.bit1_stream_addr_1
	rsb	r7, r8, r0, asl #3	@, tmp298, tmp296, <variable>.Length,
	str	r6, [r4, #160]	@ tmp282, <variable>.Vp6DecParam.bit1_offset_1
	str	r7, [r4, #144]	@ tmp298, <variable>.Vp6DecParam.bit1_len_0
.L292:
	add	r0, r4, #3344	@ tmp325, pCtx,
	add	r9, r4, #2448	@ tmp331, pCtx,
	add	sl, r4, #5120	@ tmp315, pCtx,
	add	r8, r4, #4352	@ tmp317, pCtx,
	add	r7, r4, #4992	@ tmp319, pCtx,
	add	r6, r4, #4288	@ tmp321, pCtx,
	add	ip, r4, #3280	@ tmp323, pCtx,
	add	r1, r4, #3216	@ tmp327, pCtx,
	add	r2, r4, #2512	@ tmp329, pCtx,
	add	r3, r4, #3152	@, pCtx,
	add	lr, r4, #6656	@, pCtx,
	str	r3, [fp, #-48]	@, %sfp
	str	lr, [fp, #-52]	@, %sfp
	add	r3, r0, #14	@ tmp325, tmp325,
	add	r8, r8, #62	@ tmp317, tmp317,
	str	r3, [r4, #32]	@ tmp325, <variable>.Vp6DecParam.TblHuffTree
	str	r8, [r4, #40]	@ tmp317, <variable>.Vp6DecParam.TblACProbs
	add	r0, r9, #14	@ tmp331, tmp331,
	add	ip, ip, #14	@ tmp323, tmp323,
	str	r0, [r4, #12]	@ tmp331, <variable>.Vp6DecParam.TblProbModeSame
	str	ip, [r4, #28]	@ tmp323, <variable>.Vp6DecParam.TblEobOffsetTable
	add	r1, r1, #14	@ tmp327, tmp327,
	add	sl, sl, #30	@ tmp315, tmp315,
	str	r1, [r4, #24]	@ tmp327, <variable>.Vp6DecParam.TblModifiedScanOrder
	str	sl, [r4, #52]	@ tmp315, <variable>.Vp6DecParam.TblAcHuffLUT
	add	r7, r7, #30	@ tmp319, tmp319,
	add	r6, r6, #30	@ tmp321, tmp321,
	str	r7, [r4, #48]	@ tmp319, <variable>.Vp6DecParam.TblDcHuffLUT
	str	r6, [r4, #36]	@ tmp321, <variable>.Vp6DecParam.TblDcNodeContexts
	add	r2, r2, #14	@ tmp329, tmp329,
	str	r2, [r4, #16]	@ tmp329, <variable>.Vp6DecParam.TblProbMode
	add	lr, r4, #4928	@ tmp337, pCtx,
	ldr	r8, [fp, #-48]	@, %sfp
	add	ip, lr, #62	@ tmp337, tmp337,
	ldr	lr, [r4, #0]	@, <variable>.pstExtraData
	mov	r0, #1	@ D.39934,
	add	r8, r8, #14	@,,
	str	r8, [r4, #20]	@, <variable>.Vp6DecParam.TblProbMv
	ldr	r9, [fp, #-52]	@, %sfp
	str	ip, [r4, #44]	@ tmp337, <variable>.Vp6DecParam.TblZeroProbs
	add	r9, r9, #30	@,,
	str	r9, [r4, #56]	@, <variable>.Vp6DecParam.TblZeroHuffLUT
	ldr	r3, [lr, #684]	@ <variable>.s32Compress_en, <variable>.s32Compress_en
	str	r5, [r4, #4]	@ pVp6DecParam, <variable>.pVp6DecParam
	str	r3, [r4, #200]	@ <variable>.s32Compress_en, <variable>.Vp6DecParam.Compress_en
	ldr	r1, [lr, #684]	@ <variable>.s32Compress_en, <variable>.s32Compress_en
	str	r1, [r4, #200]	@ <variable>.s32Compress_en, <variable>.Vp6DecParam.Compress_en
.L277:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L298:
	str	r3, [r0, #68]	@ <variable>.Vp6CodecInfo.FrameType, <variable>.Vp6DecParam.FrameType
	movw	r6, #13000	@ tmp173,
	movw	r0, #12308	@ tmp175,
	mov	sl, #1	@ tmp171,
	ldr	r1, [r4, r0]	@, <variable>.Vp6CodecInfo.CurFsID
	movw	r8, #12316	@ tmp179,
	strb	sl, [r4, #9]	@ tmp171, <variable>.Vp6DecParam.IsNvopCopy
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	ldr	r1, [r4, r8]	@, <variable>.Vp6CodecInfo.FwdFsID
	mov	r7, r0	@ pCur,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	movw	r2, #12312	@ tmp183,
	ldr	r1, [r4, r2]	@, <variable>.Vp6CodecInfo.GoldenFsID
	mov	r8, r0	@ pFwd,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	cmp	r7, #0	@ pCur,
	cmpne	r8, #0	@, pFwd,
	beq	.L283	@,
	cmp	r0, #0	@ pGolden,
	bne	.L276	@,
.L283:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC15	@,
	movt	r1, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.39934,
	b	.L277	@
.L276:
	ldr	r6, [r7, #520]	@ D.39935, <variable>.pstDecodeFs
	cmp	r6, #0	@ D.39935,
	beq	.L300	@,
	ldr	r1, [r6, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r1, [r4, #180]	@ <variable>.PhyAddr, <variable>.Vp6DecParam.image_curr_recon_addr
	ldr	r2, [r7, #532]	@ <variable>.PmvAddr, <variable>.PmvAddr
	str	r2, [r4, #192]	@ <variable>.PmvAddr, <variable>.Vp6DecParam.CurPmvAddr
	ldr	r3, [r0, #520]	@ D.39944, <variable>.pstDecodeFs
	mov	r0, #1	@ D.39934,
	cmp	r3, #0	@ D.39944,
	ldreq	r3, [r7, #520]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	lr, [r3, #12]	@ iftmp.493, <variable>.PhyAddr
	str	lr, [r4, #184]	@ iftmp.493, <variable>.Vp6DecParam.image_golden_ref_addr
	ldr	ip, [r8, #520]	@ D.39950, <variable>.pstDecodeFs
	cmp	ip, #0	@ D.39950,
	ldreq	ip, [r7, #520]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r1, [ip, #12]	@ iftmp.494, <variable>.PhyAddr
	str	r5, [r4, #4]	@ pVp6DecParam, <variable>.pVp6DecParam
	str	r1, [r4, #188]	@ iftmp.494, <variable>.Vp6DecParam.image_last_ref_addr
	b	.L277	@
.L291:
	mov	r2, r0, asl #3	@ tmp303, ResideBytes,
	mov	r0, #16	@ tmp302,
	str	r2, [r4, #124]	@ tmp303, <variable>.Vp6DecParam.bit0_offset_0
	str	r0, [r4, #128]	@ tmp302, <variable>.Vp6DecParam.bit0_stream_addr_0
	mov	r0, r6	@, pBs
	ldr	ip, [r7, #8]	@ <variable>.Length, <variable>.Length
	mov	sl, ip, asl #3	@ D.40035, <variable>.Length,
	bl	BsPos	@
	str	r8, [r4, #156]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.MultiStream, <variable>.Vp6DecParam.bit1_len_1
	str	r8, [r4, #140]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.MultiStream, <variable>.Vp6DecParam.bit0_stream_addr_1
	str	r8, [r4, #136]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.MultiStream, <variable>.Vp6DecParam.bit0_offset_1
	str	r8, [r4, #132]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.MultiStream, <variable>.Vp6DecParam.bit0_len_1
	str	r8, [r4, #152]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.MultiStream, <variable>.Vp6DecParam.bit1_stream_addr_0
	str	r8, [r4, #148]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.MultiStream, <variable>.Vp6DecParam.bit1_offset_0
	str	r8, [r4, #144]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.MultiStream, <variable>.Vp6DecParam.bit1_len_0
	str	r8, [r4, #164]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.MultiStream, <variable>.Vp6DecParam.bit1_stream_addr_1
	str	r8, [r4, #160]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.MultiStream, <variable>.Vp6DecParam.bit1_offset_1
	rsb	r7, r0, sl	@ tmp305,, D.40035
	str	r7, [r4, #120]	@ tmp305, <variable>.Vp6DecParam.bit0_len_0
	b	.L292	@
.L299:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@ D.39934, temp.2927
	b	.L277	@
.L300:
	mov	r0, sl	@, tmp171
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@ D.39934, D.39935
	b	.L277	@
	.fnend
	.size	VP6_Set_DecParam, .-VP6_Set_DecParam
	.align	2
	.global	VP6DEC_Init
	.type	VP6DEC_Init, %function
VP6DEC_Init:
	.fnstart
.LFB1552:
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
	mov	r5, #12992	@ tmp139,
	ldr	r7, [r0, r5]	@ D.39804, <variable>.ImageQue.ResetMagicWord
	mov	r6, r1	@ pstExtraData, pstExtraData
	movw	r1, #13008	@,
	mov	r4, r0	@ pCtx, pCtx
	bl	__memzero	@
	add	r0, r4, #12608	@, pCtx,
	add	r0, r0, #40	@,,
	str	r7, [r4, r5]	@ D.39804, <variable>.ImageQue.ResetMagicWord
	bl	ResetVoQueue	@
	str	r6, [r4, #0]	@ pstExtraData, <variable>.pstExtraData
	mov	r0, r4	@, pCtx
	bl	VCTRL_GetChanIDByCtx	@
	movw	r3, #13000	@ tmp143,
	cmn	r0, #1	@ D.39812,
	str	r0, [r4, r3]	@ D.39812, <variable>.ChanID
	beq	.L305	@,
	add	r0, r4, #220	@, pCtx,
	movw	r1, #12396	@,
	bl	__memzero	@
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	r2, #12324	@ tmp146,
	movw	r0, #12296	@ tmp148,
	mov	ip, #1024	@ tmp147,
	mov	r1, #0	@ tmp149,
	str	ip, [r4, r2]	@ tmp147, <variable>.Vp6CodecInfo.DDR_Stride
	mov	ip, #12288	@ tmp150,
	str	r1, [r4, r0]	@ tmp149, <variable>.Vp6CodecInfo.Imgbuf_allocated
	mov	r0, #22	@,
	ldr	r2, [r3, #8]	@ <variable>.s32DecMode, <variable>.s32DecMode
	movw	r1, #:lower16:.LC18	@,
	movt	r1, #:upper16:.LC18	@,
	str	r2, [r4, ip]	@ <variable>.s32DecMode, <variable>.Vp6CodecInfo.UsedDecMode
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.39817,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L305:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC17	@,
	movt	r1, #:upper16:.LC17	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.39817,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	VP6DEC_Init, .-VP6DEC_Init
	.align	2
	.global	Vp6_Vfmw_StartDecode
	.type	Vp6_Vfmw_StartDecode, %function
Vp6_Vfmw_StartDecode:
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
	mov	r4, r1	@ pBr, pBr
	mov	r2, #0	@ tmp136,
	mov	r3, #8	@ tmp138,
	str	r2, [r1, #0]	@ tmp136, <variable>.lowvalue
	mov	r1, #255	@ tmp137,
	str	r3, [r4, #12]	@ tmp138, <variable>.count
	str	r1, [r4, #4]	@ tmp137, <variable>.range
	mov	r1, #24	@,
	bl	BsGet	@
	str	r0, [r4, #8]	@, <variable>.value
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	Vp6_Vfmw_StartDecode, .-Vp6_Vfmw_StartDecode
	.align	2
	.global	Vp6_Vfmw_DecodeBool128
	.type	Vp6_Vfmw_DecodeBool128, %function
Vp6_Vfmw_DecodeBool128:
	.fnstart
.LFB1529:
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
	mov	r4, r1	@ pBr, pBr
	ldr	r1, [r1, #4]	@ range.3027, <variable>.range
	ldr	r5, [r4, #8]	@ value.3028, <variable>.value
	add	r7, r1, #1	@ tmp148, range.3027,
	ldr	r3, [r4, #12]	@ count.3026, <variable>.count
	mov	r7, r7, lsr #1	@ split, tmp148,
	mov	r2, r7, asl #16	@ bigsplit, split,
	cmp	r5, r2	@ value.3028, bigsplit
	rsbcs	r7, r7, r1	@ D.38583, split, range.3027
	rsbcs	r5, r2, r5	@ D.38584, bigsplit, value.3028
	movcs	r6, #1	@ bit,
	movcc	r7, r7, asl #1	@ range, split,
	movcs	r7, r7, asl r6	@ range, D.38583,
	movcs	r5, r5, asl r6	@ value, D.38584,
	movcc	r5, r5, asl #1	@ value, value.3028,
	movcc	r6, #0	@ bit,
	subs	r3, r3, #1	@ count, count.3026,
	bne	.L311	@,
	mov	r1, #8	@,
	bl	BsGet	@
	mov	r3, #8	@ count,
	orr	r5, r5, r0	@ value, value,
.L311:
	str	r7, [r4, #4]	@ range, <variable>.range
	mov	r0, r6	@, bit
	str	r3, [r4, #12]	@ count, <variable>.count
	str	r5, [r4, #8]	@ value, <variable>.value
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	Vp6_Vfmw_DecodeBool128, .-Vp6_Vfmw_DecodeBool128
	.align	2
	.global	Vp6_Vfmw_BoolRead
	.type	Vp6_Vfmw_BoolRead, %function
Vp6_Vfmw_BoolRead:
	.fnstart
.LFB1530:
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
	subs	r6, r2, #1	@ i, nBits,
	mov	r8, r0	@ pBs, pBs
	mov	r7, r1	@ pBr, pBr
	movmi	r6, #0	@ value,
	bmi	.L315	@,
	bl	Vp6_Vfmw_DecodeBool128	@
	subs	r4, r6, #1	@ i, i,
	and	r3, r6, #1	@ tmp144, i,
	mov	r6, r0, asl r6	@ value,,
	bmi	.L315	@,
	cmp	r3, #0	@ tmp144,
	beq	.L316	@,
	mov	r0, r8	@, pBs
	mov	r1, r7	@, pBr
	bl	Vp6_Vfmw_DecodeBool128	@
	orr	r6, r6, r0, asl r4	@, value, value,,
	subs	r4, r4, #1	@ i, i,
	bmi	.L315	@,
.L316:
	mov	r1, r7	@, pBr
	mov	r0, r8	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	mov	r1, r7	@, pBr
	sub	r5, r4, #1	@ tmp145, i,
	orr	r6, r6, r0, asl r4	@, value, value,,
	mov	r0, r8	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	subs	r4, r5, #1	@ i, tmp145,
	orr	r6, r6, r0, asl r5	@, value, value,,
	bpl	.L316	@,
.L315:
	mov	r0, r6	@, value
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	Vp6_Vfmw_BoolRead, .-Vp6_Vfmw_BoolRead
	.align	2
	.global	VP6_InterFrmHeader
	.type	VP6_InterFrmHeader, %function
VP6_InterFrmHeader:
	.fnstart
.LFB1550:
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
	movw	r3, #12120	@ tmp149,
	ldr	r2, [r0, r3]	@ D.39707, <variable>.OldHeaderInfo.Vp3VersionNo
	mov	r4, r0	@ pVp6CodecInfo, pVp6CodecInfo
	mov	r6, r1	@ pBs, pBs
	cmp	r2, #0	@ D.39707,
	beq	.L338	@,
	movw	r3, #12254	@ tmp157,
	movw	lr, #12124	@ tmp155,
	ldrb	ip, [r0, r3]	@ zero_extendqisi2	@ <variable>.NewHeaderInfo.MultiStream, <variable>.NewHeaderInfo.MultiStream
	movw	r5, #12264	@ tmp153,
	ldr	r1, [r0, lr]	@ <variable>.OldHeaderInfo.VpProfile, <variable>.OldHeaderInfo.VpProfile
	cmp	ip, #0	@ <variable>.NewHeaderInfo.MultiStream,
	str	r2, [r0, r5]	@ D.39707, <variable>.NewHeaderInfo.Vp3VersionNo
	movw	r2, #12268	@ tmp154,
	str	r1, [r0, r2]	@ <variable>.OldHeaderInfo.VpProfile, <variable>.NewHeaderInfo.VpProfile
	bne	.L339	@,
	add	r5, r0, #12288	@ temp.3082, pVp6CodecInfo,
	mov	r0, r6	@, pBs
	add	r5, r5, #36	@ temp.3082, temp.3082,
	mov	r1, r5	@, temp.3082
	bl	Vp6_Vfmw_StartDecode	@
.L328:
	mov	r1, r5	@, temp.3082
	mov	r0, r6	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	movw	r1, #12124	@ tmp167,
	ldr	r2, [r4, r1]	@ <variable>.OldHeaderInfo.VpProfile, <variable>.OldHeaderInfo.VpProfile
	movw	r3, #12084	@ tmp166,
	movw	ip, #12312	@ tmp165,
	cmp	r2, #0	@ <variable>.OldHeaderInfo.VpProfile,
	str	r0, [r4, r3]	@ D.39721, <variable>.RefreshGoldenFrame
	str	r0, [r4, ip]	@ D.39721, <variable>.NewHeaderInfo.RefreshGoldenFrame
	bne	.L340	@,
	movw	r0, #12308	@ tmp193,
	mov	r3, #1	@ D.39712,
	str	r2, [r4, r0]	@ <variable>.OldHeaderInfo.VpProfile, <variable>.NewHeaderInfo.PredictionFilterMode
	movw	r2, #12258	@ tmp190,
	mov	ip, #14	@ tmp191,
	strb	ip, [r4, r2]	@ tmp191, <variable>.NewHeaderInfo.PredictionFilterAlpha
.L326:
	mov	r0, r3	@, D.39712
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L339:
	mov	r0, r6	@, pBs
	mov	r1, #16	@,
	bl	BsGet	@
	add	r1, r4, #12288	@ temp.3082, pVp6CodecInfo,
	add	r5, r1, #36	@ temp.3082, temp.3082,
	movw	r2, #12304	@ tmp159,
	mov	r1, r5	@, temp.3082
	str	r0, [r4, r2]	@, <variable>.NewHeaderInfo.Buff2Offset
	mov	r0, r6	@, pBs
	bl	Vp6_Vfmw_StartDecode	@
	b	.L328	@
.L340:
	mov	r0, r6	@, pBs
	mov	r1, r5	@, temp.3082
	bl	Vp6_Vfmw_DecodeBool128	@
	movw	r8, #12316	@ tmp169,
	cmp	r0, #0	@ D.39725,
	mov	r7, r0	@ D.39725,
	str	r0, [r4, r8]	@ D.39725, <variable>.NewHeaderInfo.UseLoopFilter
	bne	.L341	@,
.L330:
	movw	r2, #12120	@ tmp173,
	ldr	lr, [r4, r2]	@ <variable>.OldHeaderInfo.Vp3VersionNo, <variable>.OldHeaderInfo.Vp3VersionNo
	cmp	lr, #7	@ <variable>.OldHeaderInfo.Vp3VersionNo,
	movwls	lr, #12258	@ tmp187,
	movls	r2, #16	@ tmp188,
	strlsb	r2, [r4, lr]	@ tmp188, <variable>.NewHeaderInfo.PredictionFilterAlpha
	bhi	.L342	@,
.L337:
	mov	r3, #1	@ D.39712,
	mov	r0, r3	@, D.39712
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L342:
	mov	r0, r6	@, pBs
	mov	r1, r5	@, temp.3082
	bl	Vp6_Vfmw_DecodeBool128	@
	cmp	r0, #0	@,
	beq	.L337	@,
	mov	r0, r6	@, pBs
	mov	r1, r5	@, temp.3082
	bl	Vp6_Vfmw_DecodeBool128	@
	cmp	r0, #0	@,
	beq	.L333	@,
	movw	lr, #12308	@ tmp175,
	mov	r1, r5	@, temp.3082
	mov	r2, #5	@,
	mov	r0, #2	@ tmp176,
	str	r0, [r4, lr]	@ tmp176, <variable>.NewHeaderInfo.PredictionFilterMode
	mov	r0, r6	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	movw	r3, #12256	@ tmp177,
	mov	r1, r5	@, temp.3082
	mov	r2, #3	@,
	strb	r0, [r4, r3]	@, <variable>.NewHeaderInfo.PredictionFilterVarThresh
	mov	r0, r6	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	movw	ip, #12257	@ tmp179,
	strb	r0, [r4, ip]	@, <variable>.NewHeaderInfo.PredictionFilterMvSizeThresh
.L334:
	mov	r1, r5	@, temp.3082
	mov	r0, r6	@, pBs
	mov	r2, #4	@,
	bl	Vp6_Vfmw_BoolRead	@
	movw	r1, #12258	@ tmp185,
	mov	r3, #1	@ D.39712,
	strb	r0, [r4, r1]	@, <variable>.NewHeaderInfo.PredictionFilterAlpha
	b	.L326	@
.L341:
	mov	r0, r6	@, pBs
	mov	r1, r5	@, temp.3082
	bl	Vp6_Vfmw_DecodeBool128	@
	orr	r0, r0, r7, asl #1	@, tmp172,, D.39725,
	str	r0, [r4, r8]	@ tmp172, <variable>.NewHeaderInfo.UseLoopFilter
	b	.L330	@
.L333:
	mov	r0, r6	@, pBs
	mov	r1, r5	@, temp.3082
	bl	Vp6_Vfmw_DecodeBool128	@
	cmp	r0, #0	@ D.39745
	movwne	r3, #12308	@ tmp181,
	movweq	r3, #12308	@ tmp183,
	movne	r2, #1	@ tmp182,
	streq	r0, [r4, r3]	@ D.39745, <variable>.NewHeaderInfo.PredictionFilterMode
	strne	r2, [r4, r3]	@ tmp182, <variable>.NewHeaderInfo.PredictionFilterMode
	b	.L334	@
.L338:
	movw	r0, #12264	@ tmp151,
	movw	r1, #:lower16:.LC19	@,
	ldr	r3, [r4, r0]	@, <variable>.NewHeaderInfo.Vp3VersionNo
	movt	r1, #:upper16:.LC19	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r3, #87	@ D.39712,
	b	.L326	@
	.fnend
	.size	VP6_InterFrmHeader, .-VP6_InterFrmHeader
	.align	2
	.global	VP6_IntraFrmHeader
	.type	VP6_IntraFrmHeader, %function
VP6_IntraFrmHeader:
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
	.pad #12
	sub	sp, sp, #12	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r4, r0	@ pVp6CodecInfo, pVp6CodecInfo
	mov	r5, r1	@ pBs, pBs
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	bl	dprint_vfmw	@
	mov	r1, #5	@,
	mov	r0, r5	@, pBs
	movw	r6, #12264	@ tmp160,
	bl	BsGet	@
	mov	r1, #2	@,
	uxtb	r2, r0	@ D.39622,
	mov	r0, r5	@, pBs
	str	r2, [r4, r6]	@ D.39622, <variable>.NewHeaderInfo.Vp3VersionNo
	bl	BsGet	@
	ldr	r2, [r4, r6]	@ D.39628, <variable>.NewHeaderInfo.Vp3VersionNo
	movw	r3, #12268	@ tmp162,
	cmp	r2, #8	@ D.39628,
	uxtb	r0, r0	@ D.39625,
	str	r0, [r4, r3]	@ D.39625, <variable>.NewHeaderInfo.VpProfile
	bhi	.L361	@,
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	tst	r0, #255	@
	bne	.L362	@,
	movw	r6, #12254	@ tmp169,
	ldrb	r1, [r4, r6]	@ zero_extendqisi2	@ <variable>.NewHeaderInfo.MultiStream, <variable>.NewHeaderInfo.MultiStream
	cmp	r1, #0	@ <variable>.NewHeaderInfo.MultiStream,
	beq	.L347	@,
	mov	r1, #16	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	add	r8, r4, #12288	@ temp.3112, pVp6CodecInfo,
	add	r6, r8, #36	@ temp.3112, temp.3112,
	movw	r7, #12304	@ tmp171,
	mov	r1, r6	@, temp.3112
	str	r0, [r4, r7]	@, <variable>.NewHeaderInfo.Buff2Offset
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_StartDecode	@
.L348:
	mov	r1, r6	@, temp.3112
	mov	r2, #8	@,
	mov	r0, r5	@, pBs
	movw	r8, #12276	@ tmp177,
	bl	Vp6_Vfmw_BoolRead	@
	mov	r1, r6	@, temp.3112
	mov	r2, #8	@,
	uxtb	r3, r0	@ D.39645,
	mov	r0, r5	@, pBs
	str	r3, [r4, r8]	@ D.39645, <variable>.NewHeaderInfo.pic_height_in_mb
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r7, [r4, r8]	@ <variable>.NewHeaderInfo.pic_height_in_mb, <variable>.NewHeaderInfo.pic_height_in_mb
	mov	ip, #12288	@ tmp184,
	movw	r2, #12284	@ tmp180,
	mov	r1, r6	@, temp.3112
	mov	r7, r7, asl #1	@ tmp183, <variable>.NewHeaderInfo.pic_height_in_mb,
	str	r7, [r4, r2]	@ tmp183, <variable>.NewHeaderInfo.VMacroblockCount
	mov	r2, #8	@,
	uxtb	r8, r0	@ D.39650,
	movw	r0, #12280	@ tmp179,
	str	r8, [r4, r0]	@ D.39650, <variable>.NewHeaderInfo.pic_width_in_mb
	mov	r0, r5	@, pBs
	mov	r8, r8, asl #1	@ D.39654, D.39650,
	str	r8, [r4, ip]	@ D.39654, <variable>.NewHeaderInfo.HMacroblockCount
	bl	Vp6_Vfmw_BoolRead	@
	mov	r1, r6	@, temp.3112
	mov	r2, #8	@,
	uxtb	r3, r0	@ D.39655,
	mov	r0, r5	@, pBs
	mov	ip, r3, asl #1	@ tmp189, D.39655,
	movw	r3, #12292	@ tmp187,
	str	ip, [r4, r3]	@ tmp189, <variable>.NewHeaderInfo.OutputVMacroblockCount
	bl	Vp6_Vfmw_BoolRead	@
	mov	r2, #2	@,
	mov	r1, r6	@, temp.3112
	uxtb	r3, r0	@ D.39660,
	mov	r0, r5	@, pBs
	mov	ip, r3, asl #1	@ tmp192, D.39660,
	movw	r3, #12296	@ tmp190,
	str	ip, [r4, r3]	@ tmp192, <variable>.NewHeaderInfo.OutputHMacroblockCount
	bl	Vp6_Vfmw_BoolRead	@
	movw	r3, #12064	@ tmp195,
	ldr	r3, [r4, r3]	@ D.39669, <variable>.VOldScaled
	movw	r2, #12255	@ tmp193,
	cmp	r3, r7	@ D.39669, tmp183
	strb	r0, [r4, r2]	@, <variable>.NewHeaderInfo.ScalingMode
	beq	.L349	@,
	movw	lr, #12060	@ tmp196,
	ldr	r2, [r4, lr]	@ prephitmp.3100, <variable>.HOldScaled
.L350:
	movw	r1, #:lower16:.LC23	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC23	@,
	str	r8, [sp, #0]	@ D.39654,
	str	r7, [sp, #4]	@ tmp183,
	bl	dprint_vfmw	@
.L351:
	movw	r2, #12268	@ tmp201,
	movw	r0, #12060	@ tmp199,
	ldr	r3, [r4, r2]	@ <variable>.NewHeaderInfo.VpProfile, <variable>.NewHeaderInfo.VpProfile
	movw	ip, #12064	@ tmp200,
	str	r8, [r4, r0]	@ D.39654, <variable>.HOldScaled
	cmp	r3, #0	@ <variable>.NewHeaderInfo.VpProfile,
	str	r7, [r4, ip]	@ tmp183, <variable>.VOldScaled
	bne	.L363	@,
	movw	r0, #12308	@ tmp227,
	movw	lr, #12258	@ tmp224,
	mov	r1, #14	@ tmp225,
	str	r3, [r4, r0]	@ <variable>.NewHeaderInfo.VpProfile, <variable>.NewHeaderInfo.PredictionFilterMode
	strb	r1, [r4, lr]	@ tmp225, <variable>.NewHeaderInfo.PredictionFilterAlpha
.L359:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC24	@,
	movt	r1, #:upper16:.LC24	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.39632,
.L345:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L361:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.39632,
	b	.L345	@
.L347:
	add	ip, r4, #12288	@ temp.3112, pVp6CodecInfo,
	mov	r0, r5	@, pBs
	add	r6, ip, #36	@ temp.3112, temp.3112,
	mov	r1, r6	@, temp.3112
	bl	Vp6_Vfmw_StartDecode	@
	b	.L348	@
.L349:
	movw	r1, #12060	@ tmp197,
	ldr	r2, [r4, r1]	@ prephitmp.3100, <variable>.HOldScaled
	cmp	r8, r2	@ D.39654, prephitmp.3100
	bne	.L350	@,
	b	.L351	@
.L362:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.39632,
	b	.L345	@
.L363:
	mov	r0, r5	@, pBs
	mov	r1, r6	@, temp.3112
	bl	Vp6_Vfmw_DecodeBool128	@
	cmp	r0, #0	@,
	beq	.L353	@,
	movw	r0, #12308	@ tmp203,
	mov	lr, #2	@ tmp204,
	mov	r1, r6	@, temp.3112
	str	lr, [r4, r0]	@ tmp204, <variable>.NewHeaderInfo.PredictionFilterMode
	mov	r2, #5	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	movw	r1, #12264	@ tmp205,
	ldr	r3, [r4, r1]	@ <variable>.NewHeaderInfo.Vp3VersionNo, <variable>.NewHeaderInfo.Vp3VersionNo
	movw	ip, #12256	@ tmp207,
	mov	r1, r6	@, temp.3112
	mov	r2, #3	@,
	cmp	r3, #7	@ <variable>.NewHeaderInfo.Vp3VersionNo,
	movls	r3, #5	@ iftmp.484,
	movhi	r3, #0	@ iftmp.484,
	mov	r3, r0, asl r3	@ tmp209,,
	mov	r0, r5	@, pBs
	strb	r3, [r4, ip]	@ tmp209, <variable>.NewHeaderInfo.PredictionFilterVarThresh
	bl	Vp6_Vfmw_BoolRead	@
	movw	r3, #12257	@ tmp211,
	strb	r0, [r4, r3]	@, <variable>.NewHeaderInfo.PredictionFilterMvSizeThresh
.L356:
	movw	r3, #12264	@ tmp217,
	ldr	ip, [r4, r3]	@ <variable>.NewHeaderInfo.Vp3VersionNo, <variable>.NewHeaderInfo.Vp3VersionNo
	cmp	ip, #7	@ <variable>.NewHeaderInfo.Vp3VersionNo,
	movwls	ip, #12258	@ tmp221,
	movls	r2, #16	@ tmp222,
	strlsb	r2, [r4, ip]	@ tmp222, <variable>.NewHeaderInfo.PredictionFilterAlpha
	bls	.L359	@,
	mov	r2, #4	@,
	mov	r0, r5	@, pBs
	mov	r1, r6	@, temp.3112
	bl	Vp6_Vfmw_BoolRead	@
	movw	r2, #12258	@ tmp219,
	strb	r0, [r4, r2]	@, <variable>.NewHeaderInfo.PredictionFilterAlpha
	b	.L359	@
.L353:
	mov	r0, r5	@, pBs
	mov	r1, r6	@, temp.3112
	bl	Vp6_Vfmw_DecodeBool128	@
	cmp	r0, #0	@ D.39691
	movwne	r3, #12308	@ tmp213,
	movweq	r3, #12308	@ tmp215,
	movne	r2, #1	@ tmp214,
	streq	r0, [r4, r3]	@ D.39691, <variable>.NewHeaderInfo.PredictionFilterMode
	strne	r2, [r4, r3]	@ tmp214, <variable>.NewHeaderInfo.PredictionFilterMode
	b	.L356	@
	.fnend
	.size	VP6_IntraFrmHeader, .-VP6_IntraFrmHeader
	.align	2
	.global	VP6_GetPictureHeader
	.type	VP6_GetPictureHeader, %function
VP6_GetPictureHeader:
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
	cmp	r0, #0	@ pVp6CodecInfo,
	cmpne	r1, #0	@, pBs,
	mov	r5, r1	@ pBs, pBs
	mov	r4, r0	@ pVp6CodecInfo, pVp6CodecInfo
	beq	.L370	@,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC26	@,
	movt	r1, #:upper16:.LC26	@,
	movw	r6, #12272	@ tmp153,
	bl	dprint_vfmw	@
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	movw	r3, #12080	@ tmp154,
	mov	r1, #6	@,
	uxtb	ip, r0	@ D.39768,
	mov	r0, r5	@, pBs
	strb	ip, [r4, r3]	@ D.39768, <variable>.FrameType
	str	ip, [r4, r6]	@ D.39768, <variable>.NewHeaderInfo.FrameType
	bl	BsGet	@
	movw	r3, #:lower16:.LANCHOR0	@ tmp159,
	movt	r3, #:upper16:.LANCHOR0	@ tmp159,
	movw	lr, #12260	@ tmp165,
	mov	r1, #1	@,
	uxtb	r2, r0	@ D.39773,
	movw	r0, #12252	@ tmp156,
	add	ip, r2, r3	@ tmp161, D.39773, tmp159
	strb	r2, [r4, r0]	@ D.39773, <variable>.NewHeaderInfo.DctQMask
	add	r3, r3, r2, asl #1	@, tmp169, tmp159, D.39773,
	mov	r0, r5	@, pBs
	ldrb	r2, [ip, #140]	@ zero_extendqisi2	@ tmp163, VP6_LoopFilterLimitValues
	add	ip, r3, #332	@ tmp178, tmp169,
	ldrh	r3, [r3, #204]	@, DcQuantTab
	strh	r3, [r4, lr]	@ movhi	@, <variable>.NewHeaderInfo.DcQuant
	movw	lr, #12262	@ tmp173,
	ldrh	r3, [ip, #0]	@, AcQuantTab
	movw	ip, #12253	@ tmp158,
	strb	r2, [r4, ip]	@ tmp163, <variable>.NewHeaderInfo.FLimit
	strh	r3, [r4, lr]	@ movhi	@, <variable>.NewHeaderInfo.AcQuant
	bl	BsGet	@
	ldr	r1, [r4, r6]	@ <variable>.NewHeaderInfo.FrameType, <variable>.NewHeaderInfo.FrameType
	movw	r3, #12254	@ tmp181,
	cmp	r1, #0	@ <variable>.NewHeaderInfo.FrameType,
	strb	r0, [r4, r3]	@, <variable>.NewHeaderInfo.MultiStream
	beq	.L371	@,
	mov	r0, r4	@, pVp6CodecInfo
	mov	r1, r5	@, pBs
	bl	VP6_InterFrmHeader	@
	mov	r6, r0	@ ret,
	cmp	r6, #1	@ ret,
	beq	.L372	@,
.L366:
	mov	r0, r6	@, ret
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L371:
	mov	r0, r4	@, pVp6CodecInfo
	mov	r1, r5	@, pBs
	bl	VP6_IntraFrmHeader	@
	mov	r6, r0	@ ret,
	cmp	r6, #1	@ ret,
	bne	.L366	@,
.L372:
	add	lr, r4, #12288	@, pVp6CodecInfo,
	mov	r0, r5	@, pBs
	add	r1, lr, #36	@,,
	bl	Vp6_Vfmw_DecodeBool128	@
	movw	r1, #12252	@ tmp189,
	ldrb	ip, [r4, r1]	@ zero_extendqisi2	@ <variable>.NewHeaderInfo.DctQMask, <variable>.NewHeaderInfo.DctQMask
	movw	r3, #12300	@ tmp188,
	movw	r2, #12320	@ tmp187,
	movw	r1, #:lower16:.LC27	@,
	movt	r1, #:upper16:.LC27	@,
	str	ip, [r4, r3]	@ <variable>.NewHeaderInfo.DctQMask, <variable>.NewHeaderInfo.LastFrameQIndex
	str	r0, [r4, r2]	@, <variable>.NewHeaderInfo.UseHuffman
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@, ret
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L370:
	mov	r6, #0	@ ret,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@, ret
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	VP6_GetPictureHeader, .-VP6_GetPictureHeader
	.align	2
	.global	Vp6_Vfmw_DecodeBool
	.type	Vp6_Vfmw_DecodeBool, %function
Vp6_Vfmw_DecodeBool:
	.fnstart
.LFB1528:
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
	mov	r5, r1	@ pBr, pBr
	ldr	r1, [r1, #4]	@ range.3162, <variable>.range
	mov	r6, r0	@ pBs, pBs
	ldr	r4, [r5, #8]	@ value, <variable>.value
	sub	r0, r1, #1	@ tmp145, range.3162,
	ldr	r3, [r5, #12]	@ count, <variable>.count
	mul	ip, r0, r2	@ tmp146, tmp145, probability
	mov	r7, ip, lsr #8	@ tmp147, tmp146,
	add	r7, r7, #1	@ split, tmp147,
	mov	r2, r7, asl #16	@ bigsplit, split,
	cmp	r4, r2	@ value, bigsplit
	rsbcs	r7, r7, r1	@ range, split, range.3162
	rsbcs	r4, r2, r4	@ value, bigsplit, value
	movcc	r8, #0	@ bit,
	movcs	r8, #1	@ bit,
	cmp	r7, #127	@ range,
	strhi	r7, [r5, #4]	@ range, <variable>.range
	strhi	r4, [r5, #8]	@ value, <variable>.value
	bls	.L380	@,
	b	.L377	@
.L378:
	cmp	r7, #127	@ range,
	bhi	.L382	@,
.L380:
	subs	r3, r3, #1	@ count, count,
	mov	r7, r7, asl #1	@ range, range,
	mov	r4, r4, asl #1	@ value, value,
	bne	.L378	@,
	mov	r0, r6	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
	cmp	r7, #127	@ range,
	mov	r3, #8	@ count,
	orr	r4, r4, r0	@ value, value,
	bls	.L380	@,
.L382:
	str	r7, [r5, #4]	@ range, <variable>.range
	str	r3, [r5, #12]	@ count, <variable>.count
	str	r4, [r5, #8]	@ value, <variable>.value
.L377:
	mov	r0, r8	@, bit
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	Vp6_Vfmw_DecodeBool, .-Vp6_Vfmw_DecodeBool
	.align	2
	.global	VP6_ConfigureMvEntropyDecoder
	.type	VP6_ConfigureMvEntropyDecoder, %function
VP6_ConfigureMvEntropyDecoder:
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
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r6, #:lower16:.LANCHOR0	@ tmp477,
	add	r4, r2, #72	@ D.39143, pbi,
	movt	r6, #:upper16:.LANCHOR0	@ tmp477,
	mov	r5, r1	@ pBs, pBs
	mov	r7, r0	@ pVp6CodecInfo, pVp6CodecInfo
	mov	r1, r4	@, D.39143
	mov	r0, r5	@, pBs
	ldrb	r2, [r6, #460]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L423	@,
.L384:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.39143
	ldrb	r2, [r6, #461]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L424	@,
.L385:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.39143
	ldrb	r2, [r6, #477]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L425	@,
.L386:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.39143
	ldrb	r2, [r6, #478]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L426	@,
.L387:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.39143
	ldrb	r2, [r6, #462]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L427	@,
.L388:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.39143
	ldrb	r2, [r6, #463]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L428	@,
.L389:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.39143
	ldrb	r2, [r6, #464]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L429	@,
.L390:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.39143
	ldrb	r2, [r6, #465]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L430	@,
.L391:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.39143
	ldrb	r2, [r6, #466]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L431	@,
.L392:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.39143
	ldrb	r2, [r6, #467]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L432	@,
.L393:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.39143
	ldrb	r2, [r6, #468]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L433	@,
.L394:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.39143
	ldrb	r2, [r6, #479]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L434	@,
.L396:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.39143
	ldrb	r2, [r6, #480]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L435	@,
.L408:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.39143
	ldrb	r2, [r6, #481]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L436	@,
.L409:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.39143
	ldrb	r2, [r6, #482]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L437	@,
.L410:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.39143
	ldrb	r2, [r6, #483]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L438	@,
.L411:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.39143
	ldrb	r2, [r6, #484]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L439	@,
.L412:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.39143
	ldrb	r2, [r6, #485]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L440	@,
.L397:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.39143
	ldrb	r2, [r6, #469]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L441	@,
.L398:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.39143
	ldrb	r2, [r6, #470]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L442	@,
.L399:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.39143
	ldrb	r2, [r6, #471]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L443	@,
.L400:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.39143
	ldrb	r2, [r6, #472]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L444	@,
.L401:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.39143
	ldrb	r2, [r6, #473]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L445	@,
.L402:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.39143
	ldrb	r2, [r6, #474]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L446	@,
.L403:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.39143
	ldrb	r2, [r6, #475]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L447	@,
.L404:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.39143
	ldrb	r2, [r6, #476]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L448	@,
.L405:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.39143
	ldrb	r2, [r6, #486]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L449	@,
.L407:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.39143
	ldrb	r2, [r6, #487]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L450	@,
.L415:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.39143
	ldrb	r2, [r6, #488]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L451	@,
.L416:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.39143
	ldrb	r2, [r6, #489]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L452	@,
.L417:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.39143
	ldrb	r2, [r6, #490]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L453	@,
.L418:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.39143
	ldrb	r2, [r6, #491]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L454	@,
.L419:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.39143
	ldrb	r2, [r6, #492]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L455	@,
	ldrb	r2, [r6, #493]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.39143
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	ldmeqfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L456:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.39143
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	r3, r0, asl #1	@ tmp424,,
	uxtb	ip, r3	@ D.39185, tmp424
	strb	ip, [r7, #513]	@ D.39185, <variable>.MvSizeProbs
	cmp	ip, #0	@ D.39185,
	moveq	ip, #1	@ tmp426,
	streqb	ip, [r7, #513]	@ tmp426, <variable>.MvSizeProbs
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L455:
	mov	r1, r4	@, D.39143
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	ldrb	r2, [r6, #493]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	mov	r1, r4	@, D.39143
	mov	r3, r0, asl #1	@ tmp471,,
	mov	r0, r5	@, pBs
	uxtb	ip, r3	@ temp.3292, tmp471
	strb	ip, [r7, #512]	@ temp.3292, <variable>.MvSizeProbs
	cmp	ip, #0	@ temp.3292,
	moveq	ip, #1	@ tmp473,
	streqb	ip, [r7, #512]	@ tmp473, <variable>.MvSizeProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	ldmeqfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	b	.L456	@
.L454:
	mov	r1, r4	@, D.39143
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	mov	r2, r0, asl #1	@ tmp464,,
	uxtb	r1, r2	@ temp.3285, tmp464
	strb	r1, [r7, #511]	@ temp.3285, <variable>.MvSizeProbs
	cmp	r1, #0	@ temp.3285,
	moveq	r1, #1	@ tmp466,
	streqb	r1, [r7, #511]	@ tmp466, <variable>.MvSizeProbs
	b	.L419	@
.L453:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.39143
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	r3, r0, asl #1	@ tmp457,,
	uxtb	r0, r3	@ temp.3277, tmp457
	strb	r0, [r7, #510]	@ temp.3277, <variable>.MvSizeProbs
	cmp	r0, #0	@ temp.3277,
	moveq	r0, #1	@ tmp459,
	streqb	r0, [r7, #510]	@ tmp459, <variable>.MvSizeProbs
	b	.L418	@
.L452:
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.39143
	bl	Vp6_Vfmw_BoolRead	@
	mov	ip, r0, asl #1	@ tmp450,,
	uxtb	r2, ip	@ temp.3272, tmp450
	strb	r2, [r7, #509]	@ temp.3272, <variable>.MvSizeProbs
	cmp	r2, #0	@ temp.3272,
	moveq	r2, #1	@ tmp452,
	streqb	r2, [r7, #509]	@ tmp452, <variable>.MvSizeProbs
	b	.L417	@
.L451:
	mov	r1, r4	@, D.39143
	mov	r0, r5	@, pBs
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	r1, r0, asl #1	@ tmp443,,
	uxtb	r3, r1	@ temp.3265, tmp443
	strb	r3, [r7, #508]	@ temp.3265, <variable>.MvSizeProbs
	cmp	r3, #0	@ temp.3265,
	moveq	r3, #1	@ tmp445,
	streqb	r3, [r7, #508]	@ tmp445, <variable>.MvSizeProbs
	b	.L416	@
.L450:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.39143
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	ip, r0, asl #1	@ tmp436,,
	uxtb	r0, ip	@ temp.3257, tmp436
	strb	r0, [r7, #507]	@ temp.3257, <variable>.MvSizeProbs
	cmp	r0, #0	@ temp.3257,
	moveq	r0, #1	@ tmp438,
	streqb	r0, [r7, #507]	@ tmp438, <variable>.MvSizeProbs
	b	.L415	@
.L449:
	mov	r1, r4	@, D.39143
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	mov	r2, r0, asl #1	@ tmp429,,
	uxtb	r1, r2	@ temp.3252, tmp429
	strb	r1, [r7, #506]	@ temp.3252, <variable>.MvSizeProbs
	cmp	r1, #0	@ temp.3252,
	moveq	r1, #1	@ tmp431,
	streqb	r1, [r7, #506]	@ tmp431, <variable>.MvSizeProbs
	b	.L407	@
.L448:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.39143
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	r3, r0, asl #1	@ tmp375,,
	uxtb	r0, r3	@ temp.3342, tmp375
	strb	r0, [r7, #505]	@ temp.3342, <variable>.MvSizeProbs
	cmp	r0, #0	@ temp.3342,
	moveq	r0, #1	@ tmp377,
	streqb	r0, [r7, #505]	@ tmp377, <variable>.MvSizeProbs
	b	.L405	@
.L447:
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.39143
	bl	Vp6_Vfmw_BoolRead	@
	mov	ip, r0, asl #1	@ tmp368,,
	uxtb	r2, ip	@ temp.3337, tmp368
	strb	r2, [r7, #504]	@ temp.3337, <variable>.MvSizeProbs
	cmp	r2, #0	@ temp.3337,
	moveq	r2, #1	@ tmp370,
	streqb	r2, [r7, #504]	@ tmp370, <variable>.MvSizeProbs
	b	.L404	@
.L446:
	mov	r1, r4	@, D.39143
	mov	r0, r5	@, pBs
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	r1, r0, asl #1	@ tmp361,,
	uxtb	r3, r1	@ temp.3332, tmp361
	strb	r3, [r7, #503]	@ temp.3332, <variable>.MvSizeProbs
	cmp	r3, #0	@ temp.3332,
	moveq	r3, #1	@ tmp363,
	streqb	r3, [r7, #503]	@ tmp363, <variable>.MvSizeProbs
	b	.L403	@
.L445:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.39143
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	ip, r0, asl #1	@ tmp354,,
	uxtb	r0, ip	@ temp.3327, tmp354
	strb	r0, [r7, #502]	@ temp.3327, <variable>.MvSizeProbs
	cmp	r0, #0	@ temp.3327,
	moveq	r0, #1	@ tmp356,
	streqb	r0, [r7, #502]	@ tmp356, <variable>.MvSizeProbs
	b	.L402	@
.L444:
	mov	r1, r4	@, D.39143
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	mov	r2, r0, asl #1	@ tmp347,,
	uxtb	r1, r2	@ temp.3322, tmp347
	strb	r1, [r7, #501]	@ temp.3322, <variable>.MvSizeProbs
	cmp	r1, #0	@ temp.3322,
	moveq	r1, #1	@ tmp349,
	streqb	r1, [r7, #501]	@ tmp349, <variable>.MvSizeProbs
	b	.L401	@
.L443:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.39143
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	r3, r0, asl #1	@ tmp340,,
	uxtb	ip, r3	@ temp.3317, tmp340
	strb	ip, [r7, #500]	@ temp.3317, <variable>.MvSizeProbs
	cmp	ip, #0	@ temp.3317,
	moveq	ip, #1	@ tmp342,
	streqb	ip, [r7, #500]	@ tmp342, <variable>.MvSizeProbs
	b	.L400	@
.L442:
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.39143
	bl	Vp6_Vfmw_BoolRead	@
	mov	r2, r0, asl #1	@ tmp333,,
	uxtb	r0, r2	@ temp.3312, tmp333
	strb	r0, [r7, #499]	@ temp.3312, <variable>.MvSizeProbs
	cmp	r0, #0	@ temp.3312,
	moveq	r0, #1	@ tmp335,
	streqb	r0, [r7, #499]	@ tmp335, <variable>.MvSizeProbs
	b	.L399	@
.L441:
	mov	r1, r4	@, D.39143
	mov	r0, r5	@, pBs
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	r1, r0, asl #1	@ tmp326,,
	uxtb	r3, r1	@ temp.3307, tmp326
	strb	r3, [r7, #498]	@ temp.3307, <variable>.MvSizeProbs
	cmp	r3, #0	@ temp.3307,
	moveq	r3, #1	@ tmp328,
	streqb	r3, [r7, #498]	@ tmp328, <variable>.MvSizeProbs
	b	.L398	@
.L440:
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.39143
	bl	Vp6_Vfmw_BoolRead	@
	mov	ip, r0, asl #1	@ tmp319,,
	uxtb	r2, ip	@ D.39173, tmp319
	strb	r2, [r7, #497]	@ D.39173, <variable>.MvShortProbs
	cmp	r2, #0	@ D.39173,
	moveq	r2, #1	@ tmp321,
	streqb	r2, [r7, #497]	@ tmp321, <variable>.MvShortProbs
	b	.L397	@
.L439:
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.39143
	bl	Vp6_Vfmw_BoolRead	@
	mov	r2, r0, asl #1	@ tmp417,,
	uxtb	r0, r2	@ temp.3247, tmp417
	strb	r0, [r7, #496]	@ temp.3247, <variable>.MvShortProbs
	cmp	r0, #0	@ temp.3247,
	moveq	r0, #1	@ tmp419,
	streqb	r0, [r7, #496]	@ tmp419, <variable>.MvShortProbs
	b	.L412	@
.L438:
	mov	r1, r4	@, D.39143
	mov	r0, r5	@, pBs
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	r1, r0, asl #1	@ tmp410,,
	uxtb	r3, r1	@ temp.3240, tmp410
	strb	r3, [r7, #495]	@ temp.3240, <variable>.MvShortProbs
	cmp	r3, #0	@ temp.3240,
	moveq	r3, #1	@ tmp412,
	streqb	r3, [r7, #495]	@ tmp412, <variable>.MvShortProbs
	b	.L411	@
.L437:
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.39143
	bl	Vp6_Vfmw_BoolRead	@
	mov	ip, r0, asl #1	@ tmp403,,
	uxtb	r2, ip	@ temp.3232, tmp403
	strb	r2, [r7, #494]	@ temp.3232, <variable>.MvShortProbs
	cmp	r2, #0	@ temp.3232,
	moveq	r2, #1	@ tmp405,
	streqb	r2, [r7, #494]	@ tmp405, <variable>.MvShortProbs
	b	.L410	@
.L436:
	mov	r1, r4	@, D.39143
	mov	r0, r5	@, pBs
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	r1, r0, asl #1	@ tmp396,,
	uxtb	r0, r1	@ temp.3227, tmp396
	strb	r0, [r7, #493]	@ temp.3227, <variable>.MvShortProbs
	cmp	r0, #0	@ temp.3227,
	moveq	r0, #1	@ tmp398,
	streqb	r0, [r7, #493]	@ tmp398, <variable>.MvShortProbs
	b	.L409	@
.L435:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.39143
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	r3, r0, asl #1	@ tmp389,,
	uxtb	ip, r3	@ temp.3220, tmp389
	strb	ip, [r7, #492]	@ temp.3220, <variable>.MvShortProbs
	cmp	ip, #0	@ temp.3220,
	moveq	ip, #1	@ tmp391,
	streqb	ip, [r7, #492]	@ tmp391, <variable>.MvShortProbs
	b	.L408	@
.L434:
	mov	r1, r4	@, D.39143
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	mov	r2, r0, asl #1	@ tmp382,,
	uxtb	r1, r2	@ temp.3212, tmp382
	strb	r1, [r7, #491]	@ temp.3212, <variable>.MvShortProbs
	cmp	r1, #0	@ temp.3212,
	moveq	r1, #1	@ tmp384,
	streqb	r1, [r7, #491]	@ tmp384, <variable>.MvShortProbs
	b	.L396	@
.L433:
	mov	r1, r4	@, D.39143
	mov	r0, r5	@, pBs
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	r1, r0, asl #1	@ tmp312,,
	uxtb	r0, r1	@ temp.3302, tmp312
	strb	r0, [r7, #490]	@ temp.3302, <variable>.MvShortProbs
	cmp	r0, #0	@ temp.3302,
	moveq	r0, #1	@ tmp314,
	streqb	r0, [r7, #490]	@ tmp314, <variable>.MvShortProbs
	b	.L394	@
.L432:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.39143
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	r3, r0, asl #1	@ tmp305,,
	uxtb	ip, r3	@ temp.3297, tmp305
	strb	ip, [r7, #489]	@ temp.3297, <variable>.MvShortProbs
	cmp	ip, #0	@ temp.3297,
	moveq	ip, #1	@ tmp307,
	streqb	ip, [r7, #489]	@ tmp307, <variable>.MvShortProbs
	b	.L393	@
.L431:
	mov	r1, r4	@, D.39143
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	mov	r2, r0, asl #1	@ tmp298,,
	uxtb	r1, r2	@ temp.3201, tmp298
	strb	r1, [r7, #488]	@ temp.3201, <variable>.MvShortProbs
	cmp	r1, #0	@ temp.3201,
	moveq	r1, #1	@ tmp300,
	streqb	r1, [r7, #488]	@ tmp300, <variable>.MvShortProbs
	b	.L392	@
.L430:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.39143
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	r3, r0, asl #1	@ tmp291,,
	uxtb	r0, r3	@ temp.3213, tmp291
	strb	r0, [r7, #487]	@ temp.3213, <variable>.MvShortProbs
	cmp	r0, #0	@ temp.3213,
	moveq	r0, #1	@ tmp293,
	streqb	r0, [r7, #487]	@ tmp293, <variable>.MvShortProbs
	b	.L391	@
.L429:
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.39143
	bl	Vp6_Vfmw_BoolRead	@
	mov	ip, r0, asl #1	@ tmp284,,
	uxtb	r2, ip	@ temp.3233, tmp284
	strb	r2, [r7, #486]	@ temp.3233, <variable>.MvShortProbs
	cmp	r2, #0	@ temp.3233,
	moveq	r2, #1	@ tmp286,
	streqb	r2, [r7, #486]	@ tmp286, <variable>.MvShortProbs
	b	.L390	@
.L428:
	mov	r1, r4	@, D.39143
	mov	r0, r5	@, pBs
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	r1, r0, asl #1	@ tmp277,,
	uxtb	r3, r1	@ temp.3258, tmp277
	strb	r3, [r7, #485]	@ temp.3258, <variable>.MvShortProbs
	cmp	r3, #0	@ temp.3258,
	moveq	r3, #1	@ tmp279,
	streqb	r3, [r7, #485]	@ tmp279, <variable>.MvShortProbs
	b	.L389	@
.L427:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.39143
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	ip, r0, asl #1	@ tmp270,,
	uxtb	r0, ip	@ temp.3278, tmp270
	strb	r0, [r7, #484]	@ temp.3278, <variable>.MvShortProbs
	cmp	r0, #0	@ temp.3278,
	moveq	r0, #1	@ tmp272,
	streqb	r0, [r7, #484]	@ tmp272, <variable>.MvShortProbs
	b	.L388	@
.L426:
	mov	r1, r4	@, D.39143
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	mov	r2, r0, asl #1	@ tmp263,,
	uxtb	r1, r2	@ D.39161, tmp263
	strb	r1, [r7, #1]	@ D.39161, <variable>.MvSignProbs
	cmp	r1, #0	@ D.39161,
	moveq	r1, #1	@ tmp265,
	streqb	r1, [r7, #1]	@ tmp265, <variable>.MvSignProbs
	b	.L387	@
.L425:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.39143
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	r3, r0, asl #1	@ tmp256,,
	uxtb	ip, r3	@ D.39151, tmp256
	strb	ip, [r7, #3]	@ D.39151, <variable>.IsMvShortProb
	cmp	ip, #0	@ D.39151,
	moveq	ip, #1	@ tmp258,
	streqb	ip, [r7, #3]	@ tmp258, <variable>.IsMvShortProb
	b	.L386	@
.L424:
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.39143
	bl	Vp6_Vfmw_BoolRead	@
	mov	r2, r0, asl #1	@ tmp249,,
	uxtb	r0, r2	@ temp.3200, tmp249
	strb	r0, [r7, #0]	@ temp.3200, <variable>.MvSignProbs
	cmp	r0, #0	@ temp.3200,
	moveq	r0, #1	@ tmp251,
	streqb	r0, [r7, #0]	@ tmp251, <variable>.MvSignProbs
	b	.L385	@
.L423:
	mov	r1, r4	@, D.39143
	mov	r0, r5	@, pBs
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	r1, r0, asl #1	@ tmp242,,
	uxtb	r3, r1	@ temp.3203, tmp242
	strb	r3, [r7, #2]	@ temp.3203, <variable>.IsMvShortProb
	cmp	r3, #0	@ temp.3203,
	moveq	r3, #1	@ tmp244,
	streqb	r3, [r7, #2]	@ tmp244, <variable>.IsMvShortProb
	b	.L384	@
	.fnend
	.size	VP6_ConfigureMvEntropyDecoder, .-VP6_ConfigureMvEntropyDecoder
	.align	2
	.global	VP6_decodeModeDiff
	.type	VP6_decodeModeDiff, %function
VP6_decodeModeDiff:
	.fnstart
.LFB1539:
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
	add	r4, r1, #72	@ D.39042, pbi,
	mov	r2, #205	@,
	mov	r5, r0	@ pBs, pBs
	mov	r1, r4	@, D.39042
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@ D.39043
	ldmeqfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	mov	r1, r4	@, D.39042
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	mov	r1, r4	@, D.39042
	mov	r2, #171	@,
	rsb	r3, r0, r0, asl #31	@, tmp150,,,
	mov	r0, r5	@, pBs
	mov	r6, r3, asl #1	@ tmp151, tmp150,
	bl	Vp6_Vfmw_DecodeBool	@
	add	r6, r6, #1	@ sign, tmp151,
	cmp	r0, #0	@,
	beq	.L466	@,
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.39042
	mov	r2, #199	@,
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L461	@,
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.39042
	mov	r2, #140	@,
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	addne	r6, r6, r6, asl #1	@, tmp155, sign, sign,
	movne	r0, r6, asl #2	@ D.39046, tmp155,
	ldmnefd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.39042
	mov	r2, #125	@,
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	movne	r0, r6, asl #4	@ D.39046, sign,
	ldmnefd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.39042
	mov	r2, #104	@,
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	addne	r6, r6, r6, asl #2	@, tmp159, sign, sign,
	addeq	r6, r6, r6, asl #1	@, tmp163, sign, sign,
	movne	r0, r6, asl #2	@ D.39046, tmp159,
	moveq	r0, r6, asl #3	@ D.39046, tmp163,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L461:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.39042
	mov	r2, #7	@,
	mov	r6, r6, asl #2	@ tmp165, sign,
	bl	Vp6_Vfmw_BoolRead	@
	mul	r0, r0, r6	@ D.39046,, tmp165
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L466:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.39042
	mov	r2, #83	@,
	bl	Vp6_Vfmw_DecodeBool	@
	rsb	r0, r0, #3	@ tmp152,,
	mov	r0, r6, asl r0	@ D.39046, sign,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	VP6_decodeModeDiff, .-VP6_decodeModeDiff
	.align	2
	.global	VP6_DecodeModeProbs
	.type	VP6_DecodeModeProbs, %function
VP6_DecodeModeProbs:
	.fnstart
.LFB1540:
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
	mov	r6, r2	@ pbi, pbi
	add	r8, r6, #72	@ D.39088, pbi,
	mov	sl, r0	@ pVp6CodecInfo, pVp6CodecInfo
	mov	r5, r1	@ pBs, pBs
	mov	r4, r0	@ ivtmp.3403, pVp6CodecInfo
	mov	r7, #0	@ j,
	movw	r2, #:lower16:.LANCHOR0	@,
	movt	r2, #:upper16:.LANCHOR0	@,
	str	r2, [fp, #-48]	@, %sfp
.L510:
	mov	r0, r5	@, pBs
	mov	r1, r8	@, D.39088
	mov	r2, #174	@,
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L513	@,
.L468:
	mov	r0, r5	@, pBs
	mov	r1, r8	@, D.39088
	mov	r2, #254	@,
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L469	@,
	mov	r1, r6	@, pbi
	mov	r0, r5	@, pBs
	bl	VP6_decodeModeDiff	@
	mov	r3, r7, asl #2	@ tmp596, j,
	add	r1, r3, r7	@ tmp511, tmp596, j
	add	r9, sl, r1, asl #2	@, tmp513, pVp6CodecInfo, tmp511,
	ldrb	r2, [r9, #414]	@ zero_extendqisi2	@ tmp515, <variable>.probXmitted
	adds	r2, r2, r0	@ diff.3448, tmp515,
	movmi	r2, #0	@ iftmp.3450,
	bmi	.L471	@,
	cmp	r2, #255	@ diff.3448,
	movge	r2, #255	@ tmp516,
	uxtb	r2, r2	@ iftmp.3450, tmp516
.L471:
	add	lr, r3, r7	@ tmp520, tmp596, j
	mov	r0, r5	@, pBs
	mov	r1, r6	@, pbi
	add	r9, sl, lr, asl #2	@, tmp522, pVp6CodecInfo, tmp520,
	strb	r2, [r9, #414]	@ iftmp.3450, <variable>.probXmitted
	str	r3, [fp, #-96]	@,
	bl	VP6_decodeModeDiff	@
	ldrb	r3, [r9, #404]	@ zero_extendqisi2	@ tmp532, <variable>.probXmitted
	adds	r2, r0, r3	@ diff.3454,, tmp532
	ldr	r3, [fp, #-96]	@,
	movmi	r2, #0	@ iftmp.3456,
	bmi	.L473	@,
	cmp	r2, #255	@ diff.3454,
	movge	r2, #255	@ tmp533,
	uxtb	r2, r2	@ iftmp.3456, tmp533
.L473:
	add	lr, r3, r7	@ tmp537, tmp596, j
	mov	r0, r5	@, pBs
	mov	r1, r6	@, pbi
	add	r3, sl, lr, asl #2	@, tmp539, pVp6CodecInfo, tmp537,
	strb	r2, [r3, #404]	@ iftmp.3456, <variable>.probXmitted
	bl	VP6_decodeModeDiff	@
	ldrb	ip, [r4, #415]	@ zero_extendqisi2	@ tmp542, <variable>.probXmitted
	adds	r3, r0, ip	@ diff.3460,, tmp542
	movmi	r3, #0	@ iftmp.3462,
	bmi	.L475	@,
	cmp	r3, #255	@ diff.3460,
	movge	r3, #255	@ tmp543,
	uxtb	r3, r3	@ iftmp.3462, tmp543
.L475:
	strb	r3, [r4, #415]	@ iftmp.3462, <variable>.probXmitted
	mov	r0, r5	@, pBs
	mov	r1, r6	@, pbi
	bl	VP6_decodeModeDiff	@
	ldrb	r2, [r4, #405]	@ zero_extendqisi2	@ tmp545, <variable>.probXmitted
	adds	r3, r0, r2	@ diff.3466,, tmp545
	movmi	r3, #0	@ iftmp.3468,
	bmi	.L477	@,
	cmp	r3, #255	@ diff.3466,
	movge	r3, #255	@ tmp546,
	uxtb	r3, r3	@ iftmp.3468, tmp546
.L477:
	strb	r3, [r4, #405]	@ iftmp.3468, <variable>.probXmitted
	mov	r1, r6	@, pbi
	mov	r0, r5	@, pBs
	bl	VP6_decodeModeDiff	@
	ldrb	r1, [r4, #416]	@ zero_extendqisi2	@ tmp548, <variable>.probXmitted
	adds	r3, r0, r1	@ diff.3472,, tmp548
	movmi	r3, #0	@ iftmp.3474,
	bmi	.L479	@,
	cmp	r3, #255	@ diff.3472,
	movge	r3, #255	@ tmp549,
	uxtb	r3, r3	@ iftmp.3474, tmp549
.L479:
	strb	r3, [r4, #416]	@ iftmp.3474, <variable>.probXmitted
	mov	r0, r5	@, pBs
	mov	r1, r6	@, pbi
	bl	VP6_decodeModeDiff	@
	ldrb	ip, [r4, #406]	@ zero_extendqisi2	@ tmp551, <variable>.probXmitted
	adds	r3, r0, ip	@ diff.3478,, tmp551
	movmi	r3, #0	@ iftmp.3480,
	bmi	.L481	@,
	cmp	r3, #255	@ diff.3478,
	movge	r3, #255	@ tmp552,
	uxtb	r3, r3	@ iftmp.3480, tmp552
.L481:
	strb	r3, [r4, #406]	@ iftmp.3480, <variable>.probXmitted
	mov	r0, r5	@, pBs
	mov	r1, r6	@, pbi
	bl	VP6_decodeModeDiff	@
	ldrb	r3, [r4, #417]	@ zero_extendqisi2	@ tmp554, <variable>.probXmitted
	adds	r3, r0, r3	@ diff.3484,, tmp554
	movmi	r3, #0	@ iftmp.3486,
	bmi	.L483	@,
	cmp	r3, #255	@ diff.3484,
	movge	r3, #255	@ tmp555,
	uxtb	r3, r3	@ iftmp.3486, tmp555
.L483:
	strb	r3, [r4, #417]	@ iftmp.3486, <variable>.probXmitted
	mov	r0, r5	@, pBs
	mov	r1, r6	@, pbi
	bl	VP6_decodeModeDiff	@
	ldrb	r2, [r4, #407]	@ zero_extendqisi2	@ tmp557, <variable>.probXmitted
	adds	r3, r0, r2	@ diff.3490,, tmp557
	movmi	r3, #0	@ iftmp.3492,
	bmi	.L485	@,
	cmp	r3, #255	@ diff.3490,
	movge	r3, #255	@ tmp558,
	uxtb	r3, r3	@ iftmp.3492, tmp558
.L485:
	strb	r3, [r4, #407]	@ iftmp.3492, <variable>.probXmitted
	mov	r1, r6	@, pbi
	mov	r0, r5	@, pBs
	bl	VP6_decodeModeDiff	@
	ldrb	r1, [r4, #418]	@ zero_extendqisi2	@ tmp560, <variable>.probXmitted
	adds	r3, r0, r1	@ diff.3496,, tmp560
	movmi	r3, #0	@ iftmp.3498,
	bmi	.L487	@,
	cmp	r3, #255	@ diff.3496,
	movge	r3, #255	@ tmp561,
	uxtb	r3, r3	@ iftmp.3498, tmp561
.L487:
	strb	r3, [r4, #418]	@ iftmp.3498, <variable>.probXmitted
	mov	r0, r5	@, pBs
	mov	r1, r6	@, pbi
	bl	VP6_decodeModeDiff	@
	ldrb	ip, [r4, #408]	@ zero_extendqisi2	@ tmp563, <variable>.probXmitted
	adds	r3, r0, ip	@ diff.3502,, tmp563
	movmi	r3, #0	@ iftmp.3504,
	bmi	.L489	@,
	cmp	r3, #255	@ diff.3502,
	movge	r3, #255	@ tmp564,
	uxtb	r3, r3	@ iftmp.3504, tmp564
.L489:
	strb	r3, [r4, #408]	@ iftmp.3504, <variable>.probXmitted
	mov	r0, r5	@, pBs
	mov	r1, r6	@, pbi
	bl	VP6_decodeModeDiff	@
	ldrb	r3, [r4, #419]	@ zero_extendqisi2	@ tmp566, <variable>.probXmitted
	adds	r3, r0, r3	@ diff.3508,, tmp566
	movmi	r3, #0	@ iftmp.3510,
	bmi	.L491	@,
	cmp	r3, #255	@ diff.3508,
	movge	r3, #255	@ tmp567,
	uxtb	r3, r3	@ iftmp.3510, tmp567
.L491:
	strb	r3, [r4, #419]	@ iftmp.3510, <variable>.probXmitted
	mov	r0, r5	@, pBs
	mov	r1, r6	@, pbi
	bl	VP6_decodeModeDiff	@
	ldrb	r2, [r4, #409]	@ zero_extendqisi2	@ tmp569, <variable>.probXmitted
	adds	r3, r0, r2	@ diff.3514,, tmp569
	movmi	r3, #0	@ iftmp.3516,
	bmi	.L493	@,
	cmp	r3, #255	@ diff.3514,
	movge	r3, #255	@ tmp570,
	uxtb	r3, r3	@ iftmp.3516, tmp570
.L493:
	strb	r3, [r4, #409]	@ iftmp.3516, <variable>.probXmitted
	mov	r1, r6	@, pbi
	mov	r0, r5	@, pBs
	bl	VP6_decodeModeDiff	@
	ldrb	r1, [r4, #420]	@ zero_extendqisi2	@ tmp572, <variable>.probXmitted
	adds	r3, r0, r1	@ diff.3520,, tmp572
	movmi	r3, #0	@ iftmp.3522,
	bmi	.L495	@,
	cmp	r3, #255	@ diff.3520,
	movge	r3, #255	@ tmp573,
	uxtb	r3, r3	@ iftmp.3522, tmp573
.L495:
	strb	r3, [r4, #420]	@ iftmp.3522, <variable>.probXmitted
	mov	r0, r5	@, pBs
	mov	r1, r6	@, pbi
	bl	VP6_decodeModeDiff	@
	ldrb	ip, [r4, #410]	@ zero_extendqisi2	@ tmp575, <variable>.probXmitted
	adds	r3, r0, ip	@ diff.3526,, tmp575
	movmi	r3, #0	@ iftmp.3528,
	bmi	.L497	@,
	cmp	r3, #255	@ diff.3526,
	movge	r3, #255	@ tmp576,
	uxtb	r3, r3	@ iftmp.3528, tmp576
.L497:
	strb	r3, [r4, #410]	@ iftmp.3528, <variable>.probXmitted
	mov	r0, r5	@, pBs
	mov	r1, r6	@, pbi
	bl	VP6_decodeModeDiff	@
	ldrb	r3, [r4, #421]	@ zero_extendqisi2	@ tmp578, <variable>.probXmitted
	adds	r3, r0, r3	@ diff.3532,, tmp578
	movmi	r3, #0	@ iftmp.3534,
	bmi	.L499	@,
	cmp	r3, #255	@ diff.3532,
	movge	r3, #255	@ tmp579,
	uxtb	r3, r3	@ iftmp.3534, tmp579
.L499:
	strb	r3, [r4, #421]	@ iftmp.3534, <variable>.probXmitted
	mov	r0, r5	@, pBs
	mov	r1, r6	@, pbi
	bl	VP6_decodeModeDiff	@
	ldrb	r2, [r4, #411]	@ zero_extendqisi2	@ tmp581, <variable>.probXmitted
	adds	r3, r0, r2	@ diff.3538,, tmp581
	movmi	r3, #0	@ iftmp.3540,
	bmi	.L501	@,
	cmp	r3, #255	@ diff.3538,
	movge	r3, #255	@ tmp582,
	uxtb	r3, r3	@ iftmp.3540, tmp582
.L501:
	strb	r3, [r4, #411]	@ iftmp.3540, <variable>.probXmitted
	mov	r1, r6	@, pbi
	mov	r0, r5	@, pBs
	bl	VP6_decodeModeDiff	@
	ldrb	r1, [r4, #422]	@ zero_extendqisi2	@ tmp584, <variable>.probXmitted
	adds	r3, r0, r1	@ diff.3544,, tmp584
	movmi	r3, #0	@ iftmp.3546,
	bmi	.L503	@,
	cmp	r3, #255	@ diff.3544,
	movge	r3, #255	@ tmp585,
	uxtb	r3, r3	@ iftmp.3546, tmp585
.L503:
	strb	r3, [r4, #422]	@ iftmp.3546, <variable>.probXmitted
	mov	r0, r5	@, pBs
	mov	r1, r6	@, pbi
	bl	VP6_decodeModeDiff	@
	ldrb	ip, [r4, #412]	@ zero_extendqisi2	@ tmp587, <variable>.probXmitted
	adds	r3, r0, ip	@ diff.3550,, tmp587
	movmi	r3, #0	@ iftmp.3552,
	bmi	.L505	@,
	cmp	r3, #255	@ diff.3550,
	movge	r3, #255	@ tmp588,
	uxtb	r3, r3	@ iftmp.3552, tmp588
.L505:
	strb	r3, [r4, #412]	@ iftmp.3552, <variable>.probXmitted
	mov	r0, r5	@, pBs
	mov	r1, r6	@, pbi
	bl	VP6_decodeModeDiff	@
	ldrb	r3, [r4, #423]	@ zero_extendqisi2	@ tmp590, <variable>.probXmitted
	adds	r3, r0, r3	@ diff.3424,, tmp590
	movmi	r3, #0	@ iftmp.465,
	bmi	.L507	@,
	cmp	r3, #255	@ diff.3424,
	movge	r3, #255	@ tmp591,
	uxtb	r3, r3	@ iftmp.465, tmp591
.L507:
	strb	r3, [r4, #423]	@ iftmp.465, <variable>.probXmitted
	mov	r0, r5	@, pBs
	mov	r1, r6	@, pbi
	bl	VP6_decodeModeDiff	@
	ldrb	r2, [r4, #413]	@ zero_extendqisi2	@ tmp593, <variable>.probXmitted
	adds	r3, r0, r2	@ diff.3426,, tmp593
	movmi	r3, #0	@ iftmp.467,
	bmi	.L509	@,
	cmp	r3, #255	@ diff.3426,
	movge	r3, #255	@ tmp594,
	uxtb	r3, r3	@ iftmp.467, tmp594
.L509:
	strb	r3, [r4, #413]	@ iftmp.467, <variable>.probXmitted
.L469:
	add	r7, r7, #1	@ j, j,
	add	r4, r4, #20	@ ivtmp.3403, ivtmp.3403,
	cmp	r7, #3	@ j,
	bne	.L510	@,
	mov	r0, sl	@, pVp6CodecInfo
	mov	r1, r6	@, pbi
	bl	VP6_BuildModeTree	@
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L513:
	mov	r1, r8	@, D.39088
	mov	r2, #4	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	add	ip, r7, r7, asl #2	@, tmp216, j, j,
	ldr	r1, [fp, #-48]	@, %sfp
	mov	r3, ip, asl #6	@ tmp217, tmp216,
	add	r0, r0, r0, asl #2	@, tmp212,,,
	add	r9, r3, r0, asl #2	@, tmp218, tmp217, tmp212,
	add	r3, r9, r1	@ tmp219, tmp218,
	ldrb	r2, [r3, #501]	@ zero_extendqisi2	@, VP6_ModeVq
	ldrb	lr, [r3, #497]	@ zero_extendqisi2	@ tmp236, VP6_ModeVq
	ldrb	ip, [r3, #498]	@ zero_extendqisi2	@ tmp251, VP6_ModeVq
	str	r2, [fp, #-52]	@, %sfp
	ldrb	r2, [r3, #502]	@ zero_extendqisi2	@, VP6_ModeVq
	ldrb	r0, [r3, #499]	@ zero_extendqisi2	@ tmp266, VP6_ModeVq
	ldrb	r9, [r3, #496]	@ zero_extendqisi2	@ tmp221, VP6_ModeVq
	str	r2, [fp, #-56]	@, %sfp
	ldrb	r2, [r3, #503]	@ zero_extendqisi2	@, VP6_ModeVq
	ldrb	r1, [r3, #500]	@ zero_extendqisi2	@ tmp281, VP6_ModeVq
	str	r2, [fp, #-60]	@, %sfp
	ldrb	r2, [r3, #504]	@ zero_extendqisi2	@, VP6_ModeVq
	str	r2, [fp, #-64]	@, %sfp
	ldrb	r2, [r3, #505]	@ zero_extendqisi2	@, VP6_ModeVq
	str	r2, [fp, #-68]	@, %sfp
	ldrb	r2, [r3, #506]	@ zero_extendqisi2	@, VP6_ModeVq
	str	r2, [fp, #-72]	@, %sfp
	ldrb	r2, [r3, #507]	@ zero_extendqisi2	@, VP6_ModeVq
	str	r2, [fp, #-76]	@, %sfp
	ldrb	r2, [r3, #508]	@ zero_extendqisi2	@, VP6_ModeVq
	str	r2, [fp, #-80]	@, %sfp
	ldrb	r2, [r3, #509]	@ zero_extendqisi2	@, VP6_ModeVq
	str	r2, [fp, #-84]	@, %sfp
	ldrb	r2, [r3, #510]	@ zero_extendqisi2	@, VP6_ModeVq
	str	r2, [fp, #-88]	@, %sfp
	ldrb	r2, [r3, #511]	@ zero_extendqisi2	@, VP6_ModeVq
	str	r2, [fp, #-92]	@, %sfp
	ldrb	r2, [r3, #512]	@ zero_extendqisi2	@ tmp461, VP6_ModeVq
	strb	lr, [r4, #404]	@ tmp236, <variable>.probXmitted
	strb	ip, [r4, #415]	@ tmp251, <variable>.probXmitted
	strb	r0, [r4, #405]	@ tmp266, <variable>.probXmitted
	strb	r9, [r4, #414]	@ tmp221, <variable>.probXmitted
	strb	r1, [r4, #416]	@ tmp281, <variable>.probXmitted
	ldr	r0, [fp, #-52]	@, %sfp
	strb	r0, [r4, #406]	@, <variable>.probXmitted
	ldr	lr, [fp, #-56]	@, %sfp
	strb	lr, [r4, #417]	@, <variable>.probXmitted
	ldr	ip, [fp, #-60]	@, %sfp
	strb	ip, [r4, #407]	@, <variable>.probXmitted
	ldr	r1, [fp, #-64]	@, %sfp
	strb	r1, [r4, #418]	@, <variable>.probXmitted
	ldr	r0, [fp, #-68]	@, %sfp
	strb	r0, [r4, #408]	@, <variable>.probXmitted
	ldr	lr, [fp, #-72]	@, %sfp
	strb	lr, [r4, #419]	@, <variable>.probXmitted
	ldr	ip, [fp, #-76]	@, %sfp
	strb	ip, [r4, #409]	@, <variable>.probXmitted
	ldr	r1, [fp, #-80]	@, %sfp
	strb	r1, [r4, #420]	@, <variable>.probXmitted
	ldr	r0, [fp, #-84]	@, %sfp
	ldrb	r1, [r3, #515]	@ zero_extendqisi2	@ tmp506, VP6_ModeVq
	strb	r0, [r4, #410]	@, <variable>.probXmitted
	ldr	lr, [fp, #-88]	@, %sfp
	ldrb	r0, [r3, #513]	@ zero_extendqisi2	@ tmp476, VP6_ModeVq
	ldrb	r3, [r3, #514]	@ zero_extendqisi2	@ tmp491, VP6_ModeVq
	strb	lr, [r4, #421]	@, <variable>.probXmitted
	ldr	ip, [fp, #-92]	@, %sfp
	strb	r2, [r4, #422]	@ tmp461, <variable>.probXmitted
	strb	r1, [r4, #413]	@ tmp506, <variable>.probXmitted
	strb	ip, [r4, #411]	@, <variable>.probXmitted
	strb	r0, [r4, #412]	@ tmp476, <variable>.probXmitted
	strb	r3, [r4, #423]	@ tmp491, <variable>.probXmitted
	b	.L468	@
	.fnend
	.size	VP6_DecodeModeProbs, .-VP6_DecodeModeProbs
	.align	2
	.global	VP6_ConfigureEntropyDecoder
	.type	VP6_ConfigureEntropyDecoder, %function
VP6_ConfigureEntropyDecoder:
	.fnstart
.LFB1538:
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
	movw	r7, #:lower16:.LANCHOR0	@ tmp987,
	add	r4, r2, #72	@ D.38976, pbi,
	movt	r7, #:upper16:.LANCHOR0	@ tmp987,
	str	r2, [fp, #-88]	@ pbi, %sfp
	mov	r5, r1	@ pBs, pBs
	str	r0, [fp, #-64]	@ pVp6CodecInfo, %sfp
	mov	r1, #128	@,
	mov	r2, #11	@,
	sub	r0, fp, #56	@,,
	mov	r6, r3	@ FrameType, FrameType
	bl	memset	@
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	ldrb	r2, [r7, #1456]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L515	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [fp, #-56]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	r1, [fp, #-64]	@, %sfp
	streqb	r3, [r1, #514]	@ LastProb, <variable>.DcProbs
.L516:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	ldrb	r2, [r7, #1457]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L517	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [fp, #-55]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	ip, [fp, #-64]	@, %sfp
	streqb	r3, [ip, #515]	@ LastProb, <variable>.DcProbs
.L518:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	ldrb	r2, [r7, #1458]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L519	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [fp, #-54]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	r2, [fp, #-64]	@, %sfp
	streqb	r3, [r2, #516]	@ LastProb, <variable>.DcProbs
.L520:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	ldrb	r2, [r7, #1459]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L521	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [fp, #-53]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	r1, [fp, #-64]	@, %sfp
	streqb	r3, [r1, #517]	@ LastProb, <variable>.DcProbs
.L522:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	ldrb	r2, [r7, #1460]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L523	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [fp, #-52]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	ip, [fp, #-64]	@, %sfp
	streqb	r3, [ip, #518]	@ LastProb, <variable>.DcProbs
.L524:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	ldrb	r2, [r7, #1461]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L525	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [fp, #-51]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	r2, [fp, #-64]	@, %sfp
	streqb	r3, [r2, #519]	@ LastProb, <variable>.DcProbs
.L526:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	ldrb	r2, [r7, #1462]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L527	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [fp, #-50]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	r1, [fp, #-64]	@, %sfp
	streqb	r3, [r1, #520]	@ LastProb, <variable>.DcProbs
.L528:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	ldrb	r2, [r7, #1463]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L529	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [fp, #-49]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	ip, [fp, #-64]	@, %sfp
	streqb	r3, [ip, #521]	@ LastProb, <variable>.DcProbs
.L530:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	ldrb	r2, [r7, #1464]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L531	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [fp, #-48]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	r2, [fp, #-64]	@, %sfp
	streqb	r3, [r2, #522]	@ LastProb, <variable>.DcProbs
.L532:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	ldrb	r2, [r7, #1465]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L533	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [fp, #-47]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	r1, [fp, #-64]	@, %sfp
	streqb	r3, [r1, #523]	@ LastProb, <variable>.DcProbs
.L534:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	ldrb	r2, [r7, #1466]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L636	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [fp, #-46]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	r1, [fp, #-64]	@, %sfp
	streqb	r3, [r1, #524]	@ LastProb, <variable>.DcProbs
.L536:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	ldrb	r2, [r7, #1467]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L637	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [fp, #-56]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	r1, [fp, #-64]	@, %sfp
	streqb	r3, [r1, #525]	@ LastProb, <variable>.DcProbs
.L541:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	ldrb	r2, [r7, #1468]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L542	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [fp, #-55]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	ip, [fp, #-64]	@, %sfp
	streqb	r3, [ip, #526]	@ LastProb, <variable>.DcProbs
.L543:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	ldrb	r2, [r7, #1469]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L544	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [fp, #-54]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	r2, [fp, #-64]	@, %sfp
	streqb	r3, [r2, #527]	@ LastProb, <variable>.DcProbs
.L545:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	ldrb	r2, [r7, #1470]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L546	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [fp, #-53]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	r1, [fp, #-64]	@, %sfp
	streqb	r3, [r1, #528]	@ LastProb, <variable>.DcProbs
.L547:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	ldrb	r2, [r7, #1471]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L548	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [fp, #-52]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	ip, [fp, #-64]	@, %sfp
	streqb	r3, [ip, #529]	@ LastProb, <variable>.DcProbs
.L549:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	ldrb	r2, [r7, #1472]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L550	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [fp, #-51]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	r2, [fp, #-64]	@, %sfp
	streqb	r3, [r2, #530]	@ LastProb, <variable>.DcProbs
.L551:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	ldrb	r2, [r7, #1473]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L552	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [fp, #-50]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	r1, [fp, #-64]	@, %sfp
	streqb	r3, [r1, #531]	@ LastProb, <variable>.DcProbs
.L553:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	ldrb	r2, [r7, #1474]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L554	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [fp, #-49]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	ip, [fp, #-64]	@, %sfp
	streqb	r3, [ip, #532]	@ LastProb, <variable>.DcProbs
.L555:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	ldrb	r2, [r7, #1475]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L556	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [fp, #-48]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	r2, [fp, #-64]	@, %sfp
	streqb	r3, [r2, #533]	@ LastProb, <variable>.DcProbs
.L557:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	ldrb	r2, [r7, #1476]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L558	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [fp, #-47]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	r1, [fp, #-64]	@, %sfp
	streqb	r3, [r1, #534]	@ LastProb, <variable>.DcProbs
.L559:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	ldrb	r2, [r7, #1477]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L638	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [fp, #-46]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	ip, [fp, #-64]	@, %sfp
	streqb	r3, [ip, #535]	@ LastProb, <variable>.DcProbs
	beq	.L539	@,
.L540:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	bl	Vp6_Vfmw_DecodeBool128	@
	cmp	r0, #0	@,
	beq	.L562	@,
	ldr	r8, [fp, #-64]	@ ivtmp.3649, %sfp
	mov	sl, #1	@ i,
	str	r6, [fp, #-68]	@ FrameType, %sfp
	mov	r9, r7	@ tmp987, tmp987
	b	.L564	@
.L563:
	ldr	r0, .L681	@,
	mov	r1, r4	@, D.38976
	ldrb	r2, [r0, r6]	@ zero_extendqisi2	@, ScanBandUpdateProbs
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L639	@,
.L626:
	add	r3, r6, #1	@ i, tmp998,
	add	sl, r6, #2	@ i, tmp998,
	ldr	r6, .L681	@,
	mov	r1, r4	@, D.38976
	mov	r0, r5	@, pBs
	add	r8, r7, #2	@ ivtmp.3649, tmp999,
	add	r7, r7, #1	@ ivtmp.3649, tmp999,
	ldrb	r2, [r6, r3]	@ zero_extendqisi2	@, ScanBandUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L640	@,
	cmp	sl, #64	@ i,
	beq	.L641	@,
.L564:
	ldr	r7, .L681	@,
	mov	r1, r4	@, D.38976
	mov	r0, r5	@, pBs
	add	r6, sl, #1	@ tmp998, i,
	ldrb	r2, [r7, sl]	@ zero_extendqisi2	@, ScanBandUpdateProbs
	add	r7, r8, #1	@ tmp999, ivtmp.3649,
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L563	@,
	mov	r1, r4	@, D.38976
	mov	r2, #4	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	mov	r1, r4	@, D.38976
	strb	r0, [r8, #1089]	@, <variable>.ScanBands
	ldr	r0, .L681	@,
	ldrb	r2, [r0, r6]	@ zero_extendqisi2	@, ScanBandUpdateProbs
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L626	@,
.L639:
	mov	r2, #4	@,
	mov	r1, r4	@, D.38976
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	strb	r0, [r7, #1089]	@, <variable>.ScanBands
	b	.L626	@
.L640:
	mov	r2, #4	@,
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	bl	Vp6_Vfmw_BoolRead	@
	cmp	sl, #64	@ i,
	strb	r0, [r7, #1089]	@, <variable>.ScanBands
	bne	.L564	@,
.L641:
	ldr	r0, [fp, #-64]	@, %sfp
	mov	r7, r9	@ tmp987, tmp987
	ldr	r1, [fp, #-88]	@, %sfp
	ldr	r6, [fp, #-68]	@ FrameType, %sfp
	bl	VP6_BuildScanOrder	@
.L562:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	ldrb	r2, [r7, #1572]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L642	@,
.L565:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	ldrb	r2, [r7, #1573]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L643	@,
.L566:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	ldrb	r2, [r7, #1574]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L644	@,
.L567:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	ldrb	r2, [r7, #1575]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L645	@,
.L568:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	ldrb	r2, [r7, #1576]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L646	@,
.L569:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	ldrb	r2, [r7, #1577]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L647	@,
.L570:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	ldrb	r2, [r7, #1578]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L648	@,
.L571:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	ldrb	r2, [r7, #1579]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L649	@,
.L572:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	ldrb	r2, [r7, #1580]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L650	@,
.L573:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	ldrb	r2, [r7, #1581]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L651	@,
.L574:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	ldrb	r2, [r7, #1582]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L652	@,
.L575:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	ldrb	r2, [r7, #1583]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L653	@,
.L576:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	ldrb	r2, [r7, #1584]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L654	@,
.L577:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	ldrb	r2, [r7, #1585]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L655	@,
.L578:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	ldrb	r2, [r7, #1586]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L656	@,
.L580:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	ldrb	r2, [r7, #1587]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L657	@,
.L582:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	ldrb	r2, [r7, #1588]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L658	@,
.L583:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	ldrb	r2, [r7, #1589]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L659	@,
.L584:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	ldrb	r2, [r7, #1590]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L660	@,
.L585:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	ldrb	r2, [r7, #1591]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L661	@,
.L586:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	ldrb	r2, [r7, #1592]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L662	@,
.L587:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	ldrb	r2, [r7, #1593]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L663	@,
.L588:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	ldrb	r2, [r7, #1594]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L664	@,
.L589:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	ldrb	r2, [r7, #1595]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L665	@,
.L590:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	ldrb	r2, [r7, #1596]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L666	@,
.L591:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	ldrb	r2, [r7, #1597]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L667	@,
.L592:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	ldrb	r2, [r7, #1598]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L668	@,
.L593:
	ldrb	r2, [r7, #1599]	@ zero_extendqisi2	@, ZrlUpdateProbs
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L669	@,
.L595:
	mov	lr, #0	@,
	str	lr, [fp, #-80]	@, %sfp
	str	lr, [fp, #-76]	@, %sfp
.L581:
	ldr	r9, [fp, #-76]	@, %sfp
	mov	sl, #0	@,
	str	sl, [fp, #-72]	@, %sfp
	str	sl, [fp, #-68]	@, %sfp
	add	r8, r9, r9, asl #5	@, tmp989,,,
	mov	r7, r8, asl #2	@, tmp989,
	str	r7, [fp, #-84]	@, %sfp
.L623:
	ldr	r0, [fp, #-80]	@, %sfp
	ldr	r3, [fp, #-72]	@, %sfp
	ldr	r2, [fp, #-68]	@, %sfp
	ldr	lr, [fp, #-64]	@, %sfp
	add	r9, r0, r3	@ tmp980,,
	ldr	r1, [fp, #-84]	@, %sfp
	add	sl, lr, r9	@ tmp982,, tmp980
	add	ip, r2, r2, asl #5	@, tmp973,,,
	ldr	r8, .L681+4	@,
	add	sl, sl, #564	@ ivtmp.3595, tmp982,
	add	r7, r1, ip, asl #1	@, tmp979,, tmp973,
	mov	r9, #0	@ Band,
	add	r7, r8, r7	@ ivtmp.3593,, tmp979
	mov	r8, sl	@ ivtmp.3666, ivtmp.3595
	b	.L621	@
.L671:
	cmp	r6, #0	@ FrameType,
	ldreqb	lr, [fp, #-56]	@ zero_extendqisi2	@ LastProb, LastProb
	streqb	lr, [r8, #0]	@ LastProb, <variable>.AcProbs
.L599:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	ldrb	r2, [r7, #1]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L600	@,
.L672:
	cmp	r6, #0	@ FrameType,
	ldreqb	r1, [fp, #-55]	@ zero_extendqisi2	@ LastProb, LastProb
	streqb	r1, [r8, #1]	@ LastProb, <variable>.AcProbs
.L601:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	ldrb	r2, [r7, #2]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L602	@,
.L673:
	cmp	r6, #0	@ FrameType,
	ldreqb	lr, [fp, #-54]	@ zero_extendqisi2	@ LastProb, LastProb
	streqb	lr, [r8, #2]	@ LastProb, <variable>.AcProbs
.L603:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	ldrb	r2, [r7, #3]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L604	@,
.L674:
	cmp	r6, #0	@ FrameType,
	ldreqb	r0, [fp, #-53]	@ zero_extendqisi2	@ LastProb, LastProb
	streqb	r0, [r8, #3]	@ LastProb, <variable>.AcProbs
.L605:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	ldrb	r2, [r7, #4]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L606	@,
.L675:
	cmp	r6, #0	@ FrameType,
	ldreqb	lr, [fp, #-52]	@ zero_extendqisi2	@ LastProb, LastProb
	streqb	lr, [r8, #4]	@ LastProb, <variable>.AcProbs
.L607:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	ldrb	r2, [r7, #5]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L608	@,
.L676:
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [fp, #-51]	@ zero_extendqisi2	@ LastProb, LastProb
	streqb	r3, [r8, #5]	@ LastProb, <variable>.AcProbs
.L609:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	ldrb	r2, [r7, #6]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L610	@,
.L677:
	cmp	r6, #0	@ FrameType,
	ldreqb	lr, [fp, #-50]	@ zero_extendqisi2	@ LastProb, LastProb
	streqb	lr, [r8, #6]	@ LastProb, <variable>.AcProbs
.L611:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	ldrb	r2, [r7, #7]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L612	@,
.L678:
	cmp	r6, #0	@ FrameType,
	ldreqb	ip, [fp, #-49]	@ zero_extendqisi2	@ LastProb, LastProb
	streqb	ip, [r8, #7]	@ LastProb, <variable>.AcProbs
.L613:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	ldrb	r2, [r7, #8]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L614	@,
.L679:
	cmp	r6, #0	@ FrameType,
	ldreqb	lr, [fp, #-48]	@ zero_extendqisi2	@ LastProb, LastProb
	streqb	lr, [r8, #8]	@ LastProb, <variable>.AcProbs
.L615:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	ldrb	r2, [r7, #9]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L616	@,
.L680:
	cmp	r6, #0	@ FrameType,
	ldreqb	r0, [fp, #-47]	@ zero_extendqisi2	@ LastProb, LastProb
	streqb	r0, [r8, #9]	@ LastProb, <variable>.AcProbs
.L617:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	ldrb	r2, [r7, #10]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L670	@,
.L633:
	cmp	r6, #0	@ FrameType,
	add	r9, r9, #1	@ Band, Band,
	add	r7, r7, #11	@ ivtmp.3593, ivtmp.3593,
	add	sl, sl, #11	@ ivtmp.3595, ivtmp.3595,
	ldreqb	r3, [fp, #-46]	@ zero_extendqisi2	@ LastProb, LastProb
	streqb	r3, [r8, #10]	@ LastProb, <variable>.AcProbs
	cmp	r9, #6	@ Band,
	add	r8, r8, #11	@ ivtmp.3666, ivtmp.3666,
	beq	.L597	@,
.L621:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	ldrb	r2, [r7, #0]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L671	@,
	mov	r1, r4	@, D.38976
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	mov	r1, r4	@, D.38976
	mov	r3, r0, asl #1	@ tmp872,,
	uxtb	r2, r3	@ temp.3879, tmp872
	cmp	r2, #0	@ temp.3879,
	addeq	r2, r2, #1	@,, tmp875, temp.3879
	uxtb	r0, r2	@ temp.3881, tmp875
	ldrb	r2, [r7, #1]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	strb	r0, [fp, #-56]	@ temp.3881, LastProb
	strb	r0, [sl, #0]	@ temp.3881, <variable>.AcProbs
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L672	@,
.L600:
	mov	r1, r4	@, D.38976
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	mov	r1, r4	@, D.38976
	mov	r2, r0, asl #1	@ tmp882,,
	uxtb	r0, r2	@ temp.3888, tmp882
	ldrb	r2, [r7, #2]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	cmp	r0, #0	@ temp.3888,
	addeq	r0, r0, #1	@,, tmp885, temp.3888
	uxtb	ip, r0	@ temp.3890, tmp885
	mov	r0, r5	@, pBs
	strb	ip, [fp, #-55]	@ temp.3890, LastProb
	strb	ip, [sl, #1]	@ temp.3890, <variable>.AcProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L673	@,
.L602:
	mov	r1, r4	@, D.38976
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	ldrb	r2, [r7, #3]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	mov	ip, r0, asl #1	@ tmp892,,
	mov	r0, r5	@, pBs
	uxtb	r1, ip	@ temp.3896, tmp892
	cmp	r1, #0	@ temp.3896,
	addeq	r1, r1, #1	@,, tmp895, temp.3896
	uxtb	r3, r1	@ temp.3898, tmp895
	mov	r1, r4	@, D.38976
	strb	r3, [fp, #-54]	@ temp.3898, LastProb
	strb	r3, [sl, #2]	@ temp.3898, <variable>.AcProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L674	@,
.L604:
	mov	r1, r4	@, D.38976
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	mov	r1, r0, asl #1	@ tmp902,,
	mov	r0, r5	@, pBs
	uxtb	r3, r1	@ temp.3909, tmp902
	mov	r1, r4	@, D.38976
	cmp	r3, #0	@ temp.3909,
	addeq	r3, r3, #1	@,, tmp905, temp.3909
	uxtb	r2, r3	@ temp.3911, tmp905
	strb	r2, [fp, #-53]	@ temp.3911, LastProb
	strb	r2, [sl, #3]	@ temp.3911, <variable>.AcProbs
	ldrb	r2, [r7, #4]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L675	@,
.L606:
	mov	r1, r4	@, D.38976
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	mov	r1, r4	@, D.38976
	mov	r2, r0, asl #1	@ tmp912,,
	uxtb	r0, r2	@ temp.3918, tmp912
	ldrb	r2, [r7, #5]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	cmp	r0, #0	@ temp.3918,
	addeq	r0, r0, #1	@,, tmp915, temp.3918
	uxtb	ip, r0	@ temp.3920, tmp915
	mov	r0, r5	@, pBs
	strb	ip, [fp, #-52]	@ temp.3920, LastProb
	strb	ip, [sl, #4]	@ temp.3920, <variable>.AcProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L676	@,
.L608:
	mov	r1, r4	@, D.38976
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	mov	r2, r0, asl #1	@ tmp922,,
	mov	r0, r5	@, pBs
	uxtb	ip, r2	@ temp.3928, tmp922
	ldrb	r2, [r7, #6]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	cmp	ip, #0	@ temp.3928,
	addeq	ip, ip, #1	@,, tmp925, temp.3928
	uxtb	r1, ip	@ temp.3930, tmp925
	strb	r1, [fp, #-51]	@ temp.3930, LastProb
	strb	r1, [sl, #5]	@ temp.3930, <variable>.AcProbs
	mov	r1, r4	@, D.38976
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L677	@,
.L610:
	mov	r1, r4	@, D.38976
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	ldrb	r2, [r7, #7]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	mov	r1, r0, asl #1	@ tmp932,,
	uxtb	r3, r1	@ temp.3936, tmp932
	mov	r1, r4	@, D.38976
	cmp	r3, #0	@ temp.3936,
	addeq	r3, r3, #1	@,, tmp935, temp.3936
	uxtb	r0, r3	@ temp.3938, tmp935
	strb	r0, [fp, #-50]	@ temp.3938, LastProb
	strb	r0, [sl, #6]	@ temp.3938, <variable>.AcProbs
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L678	@,
.L612:
	mov	r1, r4	@, D.38976
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	mov	r1, r4	@, D.38976
	mov	r3, r0, asl #1	@ tmp942,,
	uxtb	r0, r3	@ temp.3948, tmp942
	cmp	r0, #0	@ temp.3948,
	addeq	r0, r0, #1	@,, tmp945, temp.3948
	uxtb	r2, r0	@ temp.3950, tmp945
	mov	r0, r5	@, pBs
	strb	r2, [fp, #-49]	@ temp.3950, LastProb
	strb	r2, [sl, #7]	@ temp.3950, <variable>.AcProbs
	ldrb	r2, [r7, #8]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L679	@,
.L614:
	mov	r1, r4	@, D.38976
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	mov	r2, r0, asl #1	@ tmp952,,
	mov	r0, r5	@, pBs
	uxtb	ip, r2	@ temp.3958, tmp952
	ldrb	r2, [r7, #9]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	cmp	ip, #0	@ temp.3958,
	addeq	ip, ip, #1	@,, tmp955, temp.3958
	uxtb	r1, ip	@ temp.3960, tmp955
	strb	r1, [fp, #-48]	@ temp.3960, LastProb
	strb	r1, [sl, #8]	@ temp.3960, <variable>.AcProbs
	mov	r1, r4	@, D.38976
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L680	@,
.L616:
	mov	r1, r4	@, D.38976
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	ldrb	r2, [r7, #10]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	mov	ip, r0, asl #1	@ tmp962,,
	mov	r0, r5	@, pBs
	uxtb	r1, ip	@ temp.3968, tmp962
	cmp	r1, #0	@ temp.3968,
	addeq	r1, r1, #1	@,, tmp965, temp.3968
	uxtb	r3, r1	@ temp.3970, tmp965
	mov	r1, r4	@, D.38976
	strb	r3, [fp, #-47]	@ temp.3970, LastProb
	strb	r3, [sl, #9]	@ temp.3970, <variable>.AcProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L633	@,
.L670:
	mov	r1, r4	@, D.38976
	mov	r0, r5	@, pBs
	mov	r2, #7	@,
	add	r9, r9, #1	@ Band, Band,
	bl	Vp6_Vfmw_BoolRead	@
	add	r7, r7, #11	@ ivtmp.3593, ivtmp.3593,
	add	r8, r8, #11	@ ivtmp.3666, ivtmp.3666,
	mov	ip, r0, asl #1	@ tmp860,,
	uxtb	r1, ip	@ D.39025, tmp860
	cmp	r1, #0	@ D.39025,
	addeq	r1, r1, #1	@,, tmp863, D.39025
	cmp	r9, #6	@ Band,
	uxtb	r3, r1	@ temp.3653, tmp863
	strb	r3, [fp, #-46]	@ temp.3653, LastProb
	strb	r3, [sl, #10]	@ temp.3653, <variable>.AcProbs
	add	sl, sl, #11	@ ivtmp.3595, ivtmp.3595,
	bne	.L621	@,
.L597:
	ldr	r3, [fp, #-68]	@, %sfp
	ldr	r0, [fp, #-72]	@, %sfp
	add	lr, r3, #1	@,,
	str	lr, [fp, #-68]	@, %sfp
	cmp	lr, #2	@,
	add	r2, r0, #198	@,,
	str	r2, [fp, #-72]	@, %sfp
	bne	.L623	@,
	ldr	r1, [fp, #-76]	@, %sfp
	ldr	r2, [fp, #-80]	@, %sfp
	add	ip, r1, #1	@,,
	str	ip, [fp, #-76]	@, %sfp
	cmp	ip, #3	@,
	add	lr, r2, #66	@,,
	str	lr, [fp, #-80]	@, %sfp
	bne	.L581	@,
	ldr	r0, [fp, #-64]	@, %sfp
	ldr	r1, [fp, #-88]	@, %sfp
	bl	VP6_ConfigureContexts	@
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L638:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r9, [fp, #-64]	@, %sfp
	mov	ip, r0, asl #1	@ tmp506,,
	uxtb	sl, ip	@ D.38985, tmp506
	cmp	sl, #0	@ D.38985,
	addeq	sl, sl, #1	@,, tmp509, D.38985
	cmp	r6, #0	@ FrameType,
	uxtb	r8, sl	@ D.38988, tmp509
	strb	r8, [r9, #535]	@ D.38988, <variable>.DcProbs
	strb	r8, [fp, #-46]	@ D.38988, LastProb
	bne	.L540	@,
.L539:
	ldr	lr, .L681+8	@ tmp626,
	ldr	r2, [fp, #-64]	@, %sfp
	add	r8, r2, #536	@ tmp624,,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp629,,,,
	stmia	r8!, {r0, r1, r2, r3}	@ tmp624,,,,
	ldmia	lr, {r0, r1, r2}	@ tmp629,,,
	stmia	r8, {r0, r1, r2}	@ tmp628,,,
	b	.L540	@
.L558:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r9, [fp, #-64]	@, %sfp
	mov	ip, r0, asl #1	@ tmp616,,
	uxtb	sl, ip	@ temp.3753, tmp616
	cmp	sl, #0	@ temp.3753,
	addeq	sl, sl, #1	@,, tmp619, temp.3753
	uxtb	r8, sl	@ temp.3755, tmp619
	strb	r8, [r9, #534]	@ temp.3755, <variable>.DcProbs
	strb	r8, [fp, #-47]	@ temp.3755, LastProb
	b	.L559	@
.L556:
	mov	r1, r4	@, D.38976
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r2, [fp, #-64]	@, %sfp
	mov	r1, r0, asl #1	@ tmp605,,
	uxtb	r0, r1	@ temp.3742, tmp605
	cmp	r0, #0	@ temp.3742,
	addeq	r0, r0, #1	@,, tmp608, temp.3742
	uxtb	r3, r0	@ temp.3744, tmp608
	strb	r3, [r2, #533]	@ temp.3744, <variable>.DcProbs
	strb	r3, [fp, #-48]	@ temp.3744, LastProb
	b	.L557	@
.L554:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r9, [fp, #-64]	@, %sfp
	mov	ip, r0, asl #1	@ tmp594,,
	uxtb	sl, ip	@ temp.3732, tmp594
	cmp	sl, #0	@ temp.3732,
	addeq	sl, sl, #1	@,, tmp597, temp.3732
	uxtb	r8, sl	@ temp.3734, tmp597
	strb	r8, [r9, #532]	@ temp.3734, <variable>.DcProbs
	strb	r8, [fp, #-49]	@ temp.3734, LastProb
	b	.L555	@
.L552:
	mov	r1, r4	@, D.38976
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r2, [fp, #-64]	@, %sfp
	mov	r1, r0, asl #1	@ tmp583,,
	uxtb	r0, r1	@ temp.3724, tmp583
	cmp	r0, #0	@ temp.3724,
	addeq	r0, r0, #1	@,, tmp586, temp.3724
	uxtb	r3, r0	@ temp.3726, tmp586
	strb	r3, [r2, #531]	@ temp.3726, <variable>.DcProbs
	strb	r3, [fp, #-50]	@ temp.3726, LastProb
	b	.L553	@
.L550:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r9, [fp, #-64]	@, %sfp
	mov	ip, r0, asl #1	@ tmp572,,
	uxtb	sl, ip	@ temp.3713, tmp572
	cmp	sl, #0	@ temp.3713,
	addeq	sl, sl, #1	@,, tmp575, temp.3713
	uxtb	r8, sl	@ temp.3715, tmp575
	strb	r8, [r9, #530]	@ temp.3715, <variable>.DcProbs
	strb	r8, [fp, #-51]	@ temp.3715, LastProb
	b	.L551	@
.L548:
	mov	r1, r4	@, D.38976
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r2, [fp, #-64]	@, %sfp
	mov	r1, r0, asl #1	@ tmp561,,
	uxtb	r0, r1	@ temp.3704, tmp561
	cmp	r0, #0	@ temp.3704,
	addeq	r0, r0, #1	@,, tmp564, temp.3704
	uxtb	r3, r0	@ temp.3706, tmp564
	strb	r3, [r2, #529]	@ temp.3706, <variable>.DcProbs
	strb	r3, [fp, #-52]	@ temp.3706, LastProb
	b	.L549	@
.L546:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r9, [fp, #-64]	@, %sfp
	mov	ip, r0, asl #1	@ tmp550,,
	uxtb	sl, ip	@ temp.3692, tmp550
	cmp	sl, #0	@ temp.3692,
	addeq	sl, sl, #1	@,, tmp553, temp.3692
	uxtb	r8, sl	@ temp.3694, tmp553
	strb	r8, [r9, #528]	@ temp.3694, <variable>.DcProbs
	strb	r8, [fp, #-53]	@ temp.3694, LastProb
	b	.L547	@
.L544:
	mov	r1, r4	@, D.38976
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r2, [fp, #-64]	@, %sfp
	mov	r1, r0, asl #1	@ tmp539,,
	uxtb	r0, r1	@ temp.3684, tmp539
	cmp	r0, #0	@ temp.3684,
	addeq	r0, r0, #1	@,, tmp542, temp.3684
	uxtb	r3, r0	@ temp.3682, tmp542
	strb	r3, [r2, #527]	@ temp.3682, <variable>.DcProbs
	strb	r3, [fp, #-54]	@ temp.3682, LastProb
	b	.L545	@
.L542:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r9, [fp, #-64]	@, %sfp
	mov	ip, r0, asl #1	@ tmp528,,
	uxtb	sl, ip	@ temp.3676, tmp528
	cmp	sl, #0	@ temp.3676,
	addeq	sl, sl, #1	@,, tmp531, temp.3676
	uxtb	r8, sl	@ temp.3674, tmp531
	strb	r8, [r9, #526]	@ temp.3674, <variable>.DcProbs
	strb	r8, [fp, #-55]	@ temp.3674, LastProb
	b	.L543	@
.L637:
	mov	r1, r4	@, D.38976
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r2, [fp, #-64]	@, %sfp
	mov	r1, r0, asl #1	@ tmp517,,
	uxtb	r0, r1	@ temp.3668, tmp517
	cmp	r0, #0	@ temp.3668,
	addeq	r0, r0, #1	@,, tmp520, temp.3668
	uxtb	r3, r0	@ temp.3664, tmp520
	strb	r3, [r2, #525]	@ temp.3664, <variable>.DcProbs
	strb	r3, [fp, #-56]	@ temp.3664, LastProb
	b	.L541	@
.L636:
	mov	r1, r4	@, D.38976
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r2, [fp, #-64]	@, %sfp
	mov	r1, r0, asl #1	@ tmp495,,
	uxtb	r0, r1	@ temp.3989, tmp495
	cmp	r0, #0	@ temp.3989,
	addeq	r0, r0, #1	@,, tmp498, temp.3989
	uxtb	r3, r0	@ temp.3991, tmp498
	strb	r3, [r2, #524]	@ temp.3991, <variable>.DcProbs
	strb	r3, [fp, #-46]	@ temp.3991, LastProb
	b	.L536	@
.L533:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r9, [fp, #-64]	@, %sfp
	mov	ip, r0, asl #1	@ tmp486,,
	uxtb	sl, ip	@ temp.3982, tmp486
	cmp	sl, #0	@ temp.3982,
	addeq	sl, sl, #1	@,, tmp489, temp.3982
	uxtb	r8, sl	@ temp.3984, tmp489
	strb	r8, [r9, #523]	@ temp.3984, <variable>.DcProbs
	strb	r8, [fp, #-47]	@ temp.3984, LastProb
	b	.L534	@
.L531:
	mov	r1, r4	@, D.38976
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r2, [fp, #-64]	@, %sfp
	mov	r1, r0, asl #1	@ tmp475,,
	uxtb	r0, r1	@ temp.3974, tmp475
	cmp	r0, #0	@ temp.3974,
	addeq	r0, r0, #1	@,, tmp478, temp.3974
	uxtb	r3, r0	@ temp.3976, tmp478
	strb	r3, [r2, #522]	@ temp.3976, <variable>.DcProbs
	strb	r3, [fp, #-48]	@ temp.3976, LastProb
	b	.L532	@
.L529:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r9, [fp, #-64]	@, %sfp
	mov	ip, r0, asl #1	@ tmp464,,
	uxtb	sl, ip	@ temp.3872, tmp464
	cmp	sl, #0	@ temp.3872,
	addeq	sl, sl, #1	@,, tmp467, temp.3872
	uxtb	r8, sl	@ temp.3870, tmp467
	strb	r8, [r9, #521]	@ temp.3870, <variable>.DcProbs
	strb	r8, [fp, #-49]	@ temp.3870, LastProb
	b	.L530	@
.L527:
	mov	r1, r4	@, D.38976
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r2, [fp, #-64]	@, %sfp
	mov	r1, r0, asl #1	@ tmp453,,
	uxtb	r0, r1	@ temp.3697, tmp453
	cmp	r0, #0	@ temp.3697,
	addeq	r0, r0, #1	@,, tmp456, temp.3697
	uxtb	r3, r0	@ temp.3695, tmp456
	strb	r3, [r2, #520]	@ temp.3695, <variable>.DcProbs
	strb	r3, [fp, #-50]	@ temp.3695, LastProb
	b	.L528	@
.L525:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r9, [fp, #-64]	@, %sfp
	mov	ip, r0, asl #1	@ tmp442,,
	uxtb	sl, ip	@ temp.3745, tmp442
	cmp	sl, #0	@ temp.3745,
	addeq	sl, sl, #1	@,, tmp445, temp.3745
	uxtb	r8, sl	@ temp.3735, tmp445
	strb	r8, [r9, #519]	@ temp.3735, <variable>.DcProbs
	strb	r8, [fp, #-51]	@ temp.3735, LastProb
	b	.L526	@
.L523:
	mov	r1, r4	@, D.38976
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r2, [fp, #-64]	@, %sfp
	mov	r1, r0, asl #1	@ tmp431,,
	uxtb	r0, r1	@ temp.3781, tmp431
	cmp	r0, #0	@ temp.3781,
	addeq	r0, r0, #1	@,, tmp434, temp.3781
	uxtb	r3, r0	@ temp.3779, tmp434
	strb	r3, [r2, #518]	@ temp.3779, <variable>.DcProbs
	strb	r3, [fp, #-52]	@ temp.3779, LastProb
	b	.L524	@
.L521:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r9, [fp, #-64]	@, %sfp
	mov	ip, r0, asl #1	@ tmp420,,
	uxtb	sl, ip	@ temp.3817, tmp420
	cmp	sl, #0	@ temp.3817,
	addeq	sl, sl, #1	@,, tmp423, temp.3817
	uxtb	r8, sl	@ temp.3815, tmp423
	strb	r8, [r9, #517]	@ temp.3815, <variable>.DcProbs
	strb	r8, [fp, #-53]	@ temp.3815, LastProb
	b	.L522	@
.L519:
	mov	r1, r4	@, D.38976
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r2, [fp, #-64]	@, %sfp
	mov	r1, r0, asl #1	@ tmp409,,
	uxtb	r0, r1	@ temp.3853, tmp409
	cmp	r0, #0	@ temp.3853,
	addeq	r0, r0, #1	@,, tmp412, temp.3853
	uxtb	r3, r0	@ temp.3851, tmp412
	strb	r3, [r2, #516]	@ temp.3851, <variable>.DcProbs
	strb	r3, [fp, #-54]	@ temp.3851, LastProb
	b	.L520	@
.L517:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r9, [fp, #-64]	@, %sfp
	mov	ip, r0, asl #1	@ tmp398,,
	uxtb	sl, ip	@ temp.3901, tmp398
	cmp	sl, #0	@ temp.3901,
	addeq	sl, sl, #1	@,, tmp401, temp.3901
	uxtb	r8, sl	@ temp.3899, tmp401
	strb	r8, [r9, #515]	@ temp.3899, <variable>.DcProbs
	strb	r8, [fp, #-55]	@ temp.3899, LastProb
	b	.L518	@
.L515:
	mov	r1, r4	@, D.38976
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r2, [fp, #-64]	@, %sfp
	mov	r1, r0, asl #1	@ tmp387,,
	uxtb	r0, r1	@ temp.3941, tmp387
	cmp	r0, #0	@ temp.3941,
	addeq	r0, r0, #1	@,, tmp390, temp.3941
	uxtb	r3, r0	@ temp.3939, tmp390
	strb	r3, [r2, #514]	@ temp.3939, <variable>.DcProbs
	strb	r3, [fp, #-56]	@ temp.3939, LastProb
	b	.L516	@
.L669:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r7, [fp, #-64]	@, %sfp
	mov	r8, r0, asl #1	@ tmp750,,
	uxtb	r0, r8	@ D.39013, tmp750
	cmp	r0, #0	@ D.39013,
	addeq	r0, r0, #1	@,, tmp753, D.39013
	strb	r0, [r7, #563]	@ tmp753, <variable>.ZeroRunProbs
	b	.L595	@
.L668:
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	bl	Vp6_Vfmw_BoolRead	@
	ldr	ip, [fp, #-64]	@, %sfp
	mov	r2, r0, asl #1	@ tmp852,,
	uxtb	r8, r2	@ temp.3867, tmp852
	cmp	r8, #0	@ temp.3867,
	addeq	r8, r8, #1	@,, tmp855, temp.3867
	strb	r8, [ip, #562]	@ tmp855, <variable>.ZeroRunProbs
	b	.L593	@
.L667:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	sl, r0, asl #1	@ tmp844,,
	ldr	r0, [fp, #-64]	@, %sfp
	uxtb	r9, sl	@ temp.3858, tmp844
	cmp	r9, #0	@ temp.3858,
	addeq	r9, r9, #1	@,, tmp847, temp.3858
	strb	r9, [r0, #561]	@ tmp847, <variable>.ZeroRunProbs
	b	.L592	@
.L666:
	mov	r1, r4	@, D.38976
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r2, [fp, #-64]	@, %sfp
	mov	r1, r0, asl #1	@ tmp836,,
	uxtb	r3, r1	@ temp.3848, tmp836
	cmp	r3, #0	@ temp.3848,
	addeq	r3, r3, #1	@,, tmp839, temp.3848
	strb	r3, [r2, #560]	@ tmp839, <variable>.ZeroRunProbs
	b	.L591	@
.L665:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	ip, [fp, #-64]	@, %sfp
	mov	r8, r0, asl #1	@ tmp828,,
	uxtb	sl, r8	@ temp.3841, tmp828
	cmp	sl, #0	@ temp.3841,
	addeq	sl, sl, #1	@,, tmp831, temp.3841
	strb	sl, [ip, #559]	@ tmp831, <variable>.ZeroRunProbs
	b	.L590	@
.L664:
	mov	r1, r4	@, D.38976
	mov	r0, r5	@, pBs
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	r9, r0, asl #1	@ tmp820,,
	ldr	r0, [fp, #-64]	@, %sfp
	uxtb	r1, r9	@ temp.3831, tmp820
	cmp	r1, #0	@ temp.3831,
	addeq	r1, r1, #1	@,, tmp823, temp.3831
	strb	r1, [r0, #558]	@ tmp823, <variable>.ZeroRunProbs
	b	.L589	@
.L663:
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r8, [fp, #-64]	@, %sfp
	mov	r2, r0, asl #1	@ tmp812,,
	uxtb	r3, r2	@ temp.3823, tmp812
	cmp	r3, #0	@ temp.3823,
	addeq	r3, r3, #1	@,, tmp815, temp.3823
	strb	r3, [r8, #557]	@ tmp815, <variable>.ZeroRunProbs
	b	.L588	@
.L682:
	.align	2
.L681:
	.word	.LANCHOR0+1508
	.word	.LANCHOR0+1600
	.word	.LANCHOR0+1480
.L662:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	ip, [fp, #-64]	@, %sfp
	mov	sl, r0, asl #1	@ tmp804,,
	uxtb	r9, sl	@ temp.3812, tmp804
	cmp	r9, #0	@ temp.3812,
	addeq	r9, r9, #1	@,, tmp807, temp.3812
	strb	r9, [ip, #556]	@ tmp807, <variable>.ZeroRunProbs
	b	.L587	@
.L661:
	mov	r1, r4	@, D.38976
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	mov	r1, r0, asl #1	@ tmp796,,
	ldr	r0, [fp, #-64]	@, %sfp
	uxtb	r2, r1	@ temp.3805, tmp796
	cmp	r2, #0	@ temp.3805,
	addeq	r2, r2, #1	@,, tmp799, temp.3805
	strb	r2, [r0, #555]	@ tmp799, <variable>.ZeroRunProbs
	b	.L586	@
.L660:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	sl, [fp, #-64]	@, %sfp
	mov	r8, r0, asl #1	@ tmp788,,
	uxtb	r3, r8	@ temp.3796, tmp788
	cmp	r3, #0	@ temp.3796,
	addeq	r3, r3, #1	@,, tmp791, temp.3796
	strb	r3, [sl, #554]	@ tmp791, <variable>.ZeroRunProbs
	b	.L585	@
.L659:
	mov	r1, r4	@, D.38976
	mov	r0, r5	@, pBs
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	ip, [fp, #-64]	@, %sfp
	mov	r9, r0, asl #1	@ tmp780,,
	uxtb	r1, r9	@ temp.3788, tmp780
	cmp	r1, #0	@ temp.3788,
	addeq	r1, r1, #1	@,, tmp783, temp.3788
	strb	r1, [ip, #553]	@ tmp783, <variable>.ZeroRunProbs
	b	.L584	@
.L658:
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	bl	Vp6_Vfmw_BoolRead	@
	mov	r2, r0, asl #1	@ tmp772,,
	ldr	r0, [fp, #-64]	@, %sfp
	uxtb	r8, r2	@ temp.3776, tmp772
	cmp	r8, #0	@ temp.3776,
	addeq	r8, r8, #1	@,, tmp775, temp.3776
	strb	r8, [r0, #552]	@ tmp775, <variable>.ZeroRunProbs
	b	.L583	@
.L657:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r9, [fp, #-64]	@, %sfp
	mov	sl, r0, asl #1	@ tmp764,,
	uxtb	r3, sl	@ temp.3769, tmp764
	cmp	r3, #0	@ temp.3769,
	addeq	r3, r3, #1	@,, tmp767, temp.3769
	strb	r3, [r9, #551]	@ tmp767, <variable>.ZeroRunProbs
	b	.L582	@
.L656:
	mov	r1, r4	@, D.38976
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	ldr	ip, [fp, #-64]	@, %sfp
	mov	r1, r0, asl #1	@ tmp756,,
	uxtb	r2, r1	@ temp.3760, tmp756
	cmp	r2, #0	@ temp.3760,
	addeq	r2, r2, #1	@,, tmp759, temp.3760
	strb	r2, [ip, #550]	@ tmp759, <variable>.ZeroRunProbs
	b	.L580	@
.L655:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r9, [fp, #-64]	@, %sfp
	mov	sl, r0, asl #1	@ tmp742,,
	uxtb	r3, sl	@ temp.4088, tmp742
	cmp	r3, #0	@ temp.4088,
	addeq	r3, r3, #1	@,, tmp745, temp.4088
	strb	r3, [r9, #549]	@ tmp745, <variable>.ZeroRunProbs
	b	.L578	@
.L654:
	mov	r1, r4	@, D.38976
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	ldr	ip, [fp, #-64]	@, %sfp
	mov	r1, r0, asl #1	@ tmp734,,
	uxtb	r2, r1	@ temp.4081, tmp734
	cmp	r2, #0	@ temp.4081,
	addeq	r2, r2, #1	@,, tmp737, temp.4081
	strb	r2, [ip, #548]	@ tmp737, <variable>.ZeroRunProbs
	b	.L577	@
.L653:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	r8, r0, asl #1	@ tmp726,,
	ldr	r0, [fp, #-64]	@, %sfp
	uxtb	sl, r8	@ temp.4074, tmp726
	cmp	sl, #0	@ temp.4074,
	addeq	sl, sl, #1	@,, tmp729, temp.4074
	strb	sl, [r0, #547]	@ tmp729, <variable>.ZeroRunProbs
	b	.L576	@
.L652:
	mov	r1, r4	@, D.38976
	mov	r0, r5	@, pBs
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r1, [fp, #-64]	@, %sfp
	mov	r9, r0, asl #1	@ tmp718,,
	uxtb	r3, r9	@ temp.4067, tmp718
	cmp	r3, #0	@ temp.4067,
	addeq	r3, r3, #1	@,, tmp721, temp.4067
	strb	r3, [r1, #546]	@ tmp721, <variable>.ZeroRunProbs
	b	.L575	@
.L651:
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	bl	Vp6_Vfmw_BoolRead	@
	ldr	ip, [fp, #-64]	@, %sfp
	mov	r2, r0, asl #1	@ tmp710,,
	uxtb	r8, r2	@ temp.4060, tmp710
	cmp	r8, #0	@ temp.4060,
	addeq	r8, r8, #1	@,, tmp713, temp.4060
	strb	r8, [ip, #545]	@ tmp713, <variable>.ZeroRunProbs
	b	.L574	@
.L650:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	sl, r0, asl #1	@ tmp702,,
	ldr	r0, [fp, #-64]	@, %sfp
	uxtb	r9, sl	@ temp.4053, tmp702
	cmp	r9, #0	@ temp.4053,
	addeq	r9, r9, #1	@,, tmp705, temp.4053
	strb	r9, [r0, #544]	@ tmp705, <variable>.ZeroRunProbs
	b	.L573	@
.L649:
	mov	r1, r4	@, D.38976
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r2, [fp, #-64]	@, %sfp
	mov	r1, r0, asl #1	@ tmp694,,
	uxtb	r3, r1	@ temp.4046, tmp694
	cmp	r3, #0	@ temp.4046,
	addeq	r3, r3, #1	@,, tmp697, temp.4046
	strb	r3, [r2, #543]	@ tmp697, <variable>.ZeroRunProbs
	b	.L572	@
.L648:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	ip, [fp, #-64]	@, %sfp
	mov	r8, r0, asl #1	@ tmp686,,
	uxtb	sl, r8	@ temp.4039, tmp686
	cmp	sl, #0	@ temp.4039,
	addeq	sl, sl, #1	@,, tmp689, temp.4039
	strb	sl, [ip, #542]	@ tmp689, <variable>.ZeroRunProbs
	b	.L571	@
.L647:
	mov	r1, r4	@, D.38976
	mov	r0, r5	@, pBs
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	r9, r0, asl #1	@ tmp678,,
	ldr	r0, [fp, #-64]	@, %sfp
	uxtb	r1, r9	@ temp.4032, tmp678
	cmp	r1, #0	@ temp.4032,
	addeq	r1, r1, #1	@,, tmp681, temp.4032
	strb	r1, [r0, #541]	@ tmp681, <variable>.ZeroRunProbs
	b	.L570	@
.L646:
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r8, [fp, #-64]	@, %sfp
	mov	r2, r0, asl #1	@ tmp670,,
	uxtb	r3, r2	@ temp.4025, tmp670
	cmp	r3, #0	@ temp.4025,
	addeq	r3, r3, #1	@,, tmp673, temp.4025
	strb	r3, [r8, #540]	@ tmp673, <variable>.ZeroRunProbs
	b	.L569	@
.L645:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	sl, [fp, #-64]	@, %sfp
	mov	ip, r0, asl #1	@ tmp662,,
	uxtb	r9, ip	@ temp.4018, tmp662
	cmp	r9, #0	@ temp.4018,
	addeq	r9, r9, #1	@,, tmp665, temp.4018
	strb	r9, [sl, #539]	@ tmp665, <variable>.ZeroRunProbs
	b	.L568	@
.L644:
	mov	r1, r4	@, D.38976
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r2, [fp, #-64]	@, %sfp
	mov	r1, r0, asl #1	@ tmp654,,
	uxtb	r0, r1	@ temp.4011, tmp654
	cmp	r0, #0	@ temp.4011,
	addeq	r0, r0, #1	@,, tmp657, temp.4011
	strb	r0, [r2, #538]	@ tmp657, <variable>.ZeroRunProbs
	b	.L567	@
.L643:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.38976
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	ip, [fp, #-64]	@, %sfp
	mov	r8, r0, asl #1	@ tmp646,,
	uxtb	r3, r8	@ temp.4004, tmp646
	cmp	r3, #0	@ temp.4004,
	addeq	r3, r3, #1	@,, tmp649, temp.4004
	strb	r3, [ip, #537]	@ tmp649, <variable>.ZeroRunProbs
	b	.L566	@
.L642:
	mov	r1, r4	@, D.38976
	mov	r0, r5	@, pBs
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r9, [fp, #-64]	@, %sfp
	mov	sl, r0, asl #1	@ tmp638,,
	uxtb	r1, sl	@ temp.3997, tmp638
	cmp	r1, #0	@ temp.3997,
	addeq	r1, r1, #1	@,, tmp641, temp.3997
	strb	r1, [r9, #536]	@ tmp641, <variable>.ZeroRunProbs
	b	.L565	@
	.fnend
	.size	VP6_ConfigureEntropyDecoder, .-VP6_ConfigureEntropyDecoder
	.align	2
	.global	VP6_BuildTables
	.type	VP6_BuildTables, %function
VP6_BuildTables:
	.fnstart
.LFB1557:
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
	cmp	r0, #0	@ pVp6CodecInfo,
	cmpne	r1, #0	@, pPictureHeader,
	mov	r4, r1	@ pPictureHeader, pPictureHeader
	mov	r6, r2	@ pBs, pBs
	mov	r5, r0	@ pVp6CodecInfo, pVp6CodecInfo
	beq	.L684	@,
	cmp	r2, #0	@ pBs,
	beq	.L684	@,
	ldr	r3, [r1, #20]	@ <variable>.FrameType, <variable>.FrameType
	cmp	r3, #0	@ <variable>.FrameType,
	bne	.L690	@,
	ldr	r7, .L692	@ tmp157,
	mov	r2, #80	@,
	ldr	r1, .L692+4	@,
	add	r0, r0, #404	@, pVp6CodecInfo,
	bl	memcpy	@
	add	r3, r7, #16	@ tmp162, tmp157,
	ldrh	r1, [r7, #12]	@, DefaultIsShortProbs
	add	ip, r5, #484	@ tmp160, pVp6CodecInfo,
	ldrh	lr, [r7, #32]	@, DefaultSignProbs
	strh	r1, [r5, #2]	@ movhi	@, <variable>.IsMvShortProb
	ldmia	r3, {r0, r1, r2, r3}	@ tmp162,,,,
	strh	lr, [r5, #0]	@ movhi	@, <variable>.MvSignProbs
	stmia	ip!, {r0, r1, r2}	@ tmp160,,,
	add	r1, r7, #36	@, tmp157,
	add	r0, r5, #496	@, pVp6CodecInfo,
	add	r7, r7, #52	@ tmp180, tmp157,
	strh	r3, [ip, #0]	@ movhi	@, <variable>.MvShortProbs
	mov	r2, #16	@,
	add	r0, r0, #2	@,,
	bl	memcpy	@
	ldmia	r7!, {r0, r1, r2, r3}	@ tmp183,,,,
	add	lr, r5, #1088	@ tmp178, pVp6CodecInfo,
	mov	ip, lr	@ tmp182, tmp178
	stmia	ip!, {r0, r1, r2, r3}	@ tmp182,,,,
	mov	lr, ip	@ tmp188, tmp182
	ldmia	r7!, {r0, r1, r2, r3}	@ tmp187,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp188,,,,
	mov	ip, lr	@ tmp190, tmp188
	ldmia	r7!, {r0, r1, r2, r3}	@ tmp189,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp190,,,,
	ldmia	r7, {r0, r1, r2, r3}	@ tmp189,,,,
	stmia	ip, {r0, r1, r2, r3}	@ tmp190,,,,
	mov	r0, r5	@, pVp6CodecInfo
	mov	r1, r4	@, pPictureHeader
	bl	VP6_BuildScanOrder	@
	mov	r0, r5	@, pVp6CodecInfo
	mov	r1, r6	@, pBs
	mov	r2, r4	@, pPictureHeader
	ldr	r3, [r4, #20]	@, <variable>.FrameType
	bl	VP6_ConfigureEntropyDecoder	@
	ldr	r0, [r4, #68]	@ <variable>.UseHuffman, <variable>.UseHuffman
	cmp	r0, #0	@ <variable>.UseHuffman,
	bne	.L691	@,
.L687:
	mov	r0, r5	@, pVp6CodecInfo
	mov	r1, r4	@, pPictureHeader
	bl	VP6_CfgTable	@
	mov	r0, #1	@ D.40265,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L690:
	mov	r1, r2	@, pBs
	mov	r2, r4	@, pPictureHeader
	bl	VP6_DecodeModeProbs	@
	mov	r0, r5	@, pVp6CodecInfo
	mov	r1, r6	@, pBs
	mov	r2, r4	@, pPictureHeader
	bl	VP6_ConfigureMvEntropyDecoder	@
	mov	r0, r5	@, pVp6CodecInfo
	mov	r1, r6	@, pBs
	mov	r2, r4	@, pPictureHeader
	ldr	r3, [r4, #20]	@, <variable>.FrameType
	bl	VP6_ConfigureEntropyDecoder	@
	ldr	r0, [r4, #68]	@ <variable>.UseHuffman, <variable>.UseHuffman
	cmp	r0, #0	@ <variable>.UseHuffman,
	beq	.L687	@,
.L691:
	mov	r0, r5	@, pVp6CodecInfo
	bl	VP6_ConvertBoolToHuff	@
	mov	r0, r5	@, pVp6CodecInfo
	mov	r1, r4	@, pPictureHeader
	bl	VP6_CfgTable	@
	mov	r0, #1	@ D.40265,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L684:
	mov	r0, #0	@ D.40265,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L693:
	.align	2
.L692:
	.word	.LANCHOR0+2064
	.word	.LANCHOR0+1996
	.fnend
	.size	VP6_BuildTables, .-VP6_BuildTables
	.align	2
	.global	VP6DEC_GetImageBuffer
	.type	VP6DEC_GetImageBuffer, %function
VP6DEC_GetImageBuffer:
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
	movw	r5, #13000	@ tmp138,
	mov	r4, r0	@ pCtx, pCtx
	ldr	r0, [r0, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@ D.38739,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmn	r0, #1	@,
	movne	r0, #0	@ D.38742,
	ldmnefd	sp, {r4, r5, fp, sp, pc}	@
	add	r1, r4, #12608	@, pCtx,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	add	r1, r1, #40	@,,
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, #0	@ D.38742,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	VP6DEC_GetImageBuffer, .-VP6DEC_GetImageBuffer
	.align	2
	.global	VP6_GetImageBuffer
	.type	VP6_GetImageBuffer, %function
VP6_GetImageBuffer:
	.fnstart
.LFB1533:
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
	movw	r6, #13000	@ tmp140,
	mov	r4, r0	@ pCtx, pCtx
	mov	r1, #1	@,
	ldr	r0, [r0, r6]	@, <variable>.ChanID
	movw	r7, #12308	@ tmp142,
	bl	FSP_NewLogicFs	@
	cmp	r0, #0	@ D.38706,
	mov	r1, r0	@ D.38706,
	str	r0, [r4, r7]	@ D.38706, <variable>.Vp6CodecInfo.CurFsID
	blt	.L705	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	subs	r5, r0, #0	@ pLf,
	beq	.L706	@,
	ldr	r2, [r4, r7]	@, <variable>.Vp6CodecInfo.CurFsID
	mov	r0, #18	@,
	movw	r1, #:lower16:.LC30	@,
	movt	r1, #:upper16:.LC30	@,
	bl	dprint_vfmw	@
	ldr	r0, [r5, #520]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	cmp	r0, #0	@ <variable>.pstDecodeFs,
	beq	.L703	@,
	ldr	r3, [r5, #524]	@ D.38725, <variable>.pstDispOutFs
	cmp	r3, #0	@ D.38725,
	beq	.L703	@,
	ldr	r2, [r5, #528]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	cmp	r2, #0	@ <variable>.pstTfOutFs,
	beq	.L703	@,
	ldr	ip, [r3, #20]	@ <variable>.Stride, <variable>.Stride
	movw	lr, #12324	@ tmp174,
	mov	r0, #18	@,
	movw	r1, #:lower16:.LC31	@,
	movt	r1, #:upper16:.LC31	@,
	str	ip, [r4, lr]	@ <variable>.Stride, <variable>.Vp6CodecInfo.DDR_Stride
	add	r2, r5, #520
	ldmia	r2, {r2, r3, lr}	@ phole ldm
	ldr	ip, [lr, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	ldr	r2, [r2, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	ldr	r3, [r3, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	ip, [sp, #0]	@ <variable>.PhyAddr,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.38715,
.L701:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L703:
	mov	r0, #0	@ D.38715,
	b	.L701	@
.L705:
	movw	r8, #12312	@ tmp146,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC28	@,
	movt	r1, #:upper16:.LC28	@,
	bl	dprint_vfmw	@
	movw	r7, #12316	@ tmp150,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r4, r8]	@, <variable>.Vp6CodecInfo.GoldenFsID
	mov	r5, #0	@ tmp153,
	bl	FSP_ClearLogicFs	@
	ldr	r1, [r4, r7]	@, <variable>.Vp6CodecInfo.FwdFsID
	mov	r2, #1	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	str	r5, [r4, r8]	@ tmp153, <variable>.Vp6CodecInfo.GoldenFsID
	str	r5, [r4, r7]	@ tmp153, <variable>.Vp6CodecInfo.FwdFsID
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetNullLogicFs	@
	movw	r3, #12292	@ tmp160,
	add	r1, r4, #12608	@, pCtx,
	str	r5, [r4, r3]	@ tmp153, <variable>.Vp6CodecInfo.RefNum
	add	r1, r1, #40	@,,
	str	r0, [r4, r8]	@ D.38713, <variable>.Vp6CodecInfo.GoldenFsID
	str	r0, [r4, r7]	@ D.38713, <variable>.Vp6CodecInfo.FwdFsID
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, r5	@ D.38715, tmp153
	b	.L701	@
.L706:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC29	@,
	movw	r2, #657	@,
	movt	r1, #:upper16:.LC29	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.38715, pLf
	b	.L701	@
	.fnend
	.size	VP6_GetImageBuffer, .-VP6_GetImageBuffer
	.align	2
	.global	VP6_ArrangeVHBMem
	.type	VP6_ArrangeVHBMem, %function
VP6_ArrangeVHBMem:
	.fnstart
.LFB1532:
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
	movw	r3, #12496	@ tmp159,
	ldr	r3, [r0, r3]	@ D.38630, <variable>.Vp6CodecInfo.NewHeaderInfo.pic_height_in_mb
	mov	r4, r0	@ pCtx, pCtx
	cmp	r3, #2	@ D.38630,
	bls	.L734	@,
	movw	r0, #12500	@ tmp161,
	ldr	r2, [r4, r0]	@ prephitmp.4185, <variable>.Vp6CodecInfo.NewHeaderInfo.pic_width_in_mb
	cmp	r2, #2	@ prephitmp.4185,
	bls	.L709	@,
	cmp	r3, #512	@ D.38630,
	bhi	.L709	@,
	cmp	r2, #512	@ prephitmp.4185,
	bhi	.L709	@,
	ldr	r1, [r4, #0]	@ D.38639, <variable>.pstExtraData
	ldr	ip, [r1, #788]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	ip, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L712	@,
	ldr	r5, [r1, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r5, #25	@ <variable>.eCapLevel,
	beq	.L735	@,
.L713:
	mov	r8, #3	@ PmvNum,
	mov	r5, r2, asl #4	@ PicWidth, prephitmp.4185,
	mov	r6, r3, asl #4	@ PicHeight, D.38630,
	mov	sl, #5	@ prephitmp.4187,
	mov	r9, r8	@ DecFsNum, PmvNum
.L720:
	sub	r7, fp, #84	@ tmp203,,
	mov	r1, #36	@,
	mov	r0, r7	@, tmp203
	bl	__memzero	@
	ldr	r0, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r2, #0	@ tmp178,
	ldr	r3, [r0, #20]	@ <variable>.s32DnrDispOutEnable, <variable>.s32DnrDispOutEnable
	str	r5, [fp, #-56]	@ PicWidth, FspInstCfg.s32DispFsWidth
	str	r6, [fp, #-52]	@ PicHeight, FspInstCfg.s32DispFsHeight
	strb	r2, [fp, #-82]	@ tmp178, FspInstCfg.s32RprEnable
	str	r5, [fp, #-72]	@ PicWidth, FspInstCfg.s32DecFsWidth
	str	r6, [fp, #-68]	@ PicHeight, FspInstCfg.s32DecFsHeight
	movw	r6, #13000	@ tmp189,
	strb	r3, [fp, #-84]	@ <variable>.s32DnrDispOutEnable, FspInstCfg.s32DispLoopEnable
	ldr	ip, [r0, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	strb	sl, [fp, #-77]	@ prephitmp.4187, FspInstCfg.s32ExpectedDispFsNum
	cmp	ip, #24	@ <variable>.eCapLevel,
	uxtbne	r2, r9	@ iftmp.442, DecFsNum
	strb	r2, [fp, #-79]	@ iftmp.442, FspInstCfg.s32ExpectedDecFsNum
	ldr	r1, [r0, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	cmp	r1, #24	@ <variable>.eCapLevel,
	mov	r1, r7	@, tmp203
	uxtbne	r8, r8	@ iftmp.443, PmvNum
	mov	r7, #0	@ tmp187,
	moveq	r8, #1	@ iftmp.443,
	strb	r7, [fp, #-80]	@ tmp187, FspInstCfg.s32UserDec
	strb	r8, [fp, #-76]	@ iftmp.443, FspInstCfg.s32ExpectedPmvNum
	bl	FSP_ConfigInstance	@
	subs	r5, r0, #0	@ D.38688,
	bne	.L731	@,
	ldr	lr, [r4, #0]	@ temp.4223, <variable>.pstExtraData
	sub	r3, fp, #48	@,,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r2, [lr, #28]	@, <variable>.s32SyntaxMemSize
	ldr	r1, [lr, #24]	@, <variable>.s32SyntaxMemAddr
	bl	FSP_PartitionFsMemory	@
	cmp	r0, r7	@,
	bne	.L736	@,
	mov	r2, #1	@ tmp200,
	movw	r1, #12296	@ tmp199,
	mov	r0, r2	@ D.38636, tmp200
	str	r2, [r4, r1]	@ tmp200, <variable>.Vp6CodecInfo.Imgbuf_allocated
	b	.L711	@
.L734:
	movw	r2, #12500	@ tmp160,
	ldr	r2, [r0, r2]	@ prephitmp.4185, <variable>.Vp6CodecInfo.NewHeaderInfo.pic_width_in_mb
.L709:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC32	@,
	movt	r1, #:upper16:.LC32	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.38636,
.L711:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L712:
	ldr	lr, [r1, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	lr, #25	@ <variable>.eCapLevel,
	bne	.L713	@,
	ldr	ip, [r1, #744]	@ D.38647, <variable>.stChanOption.s32MaxWidth
	mov	r2, r2, asl #4	@ temp.4209, prephitmp.4185,
	cmp	r2, ip	@ temp.4209, D.38647
	bhi	.L737	@,
	ldr	lr, [r1, #748]	@ prephitmp.4189, <variable>.stChanOption.s32MaxHeight
	mov	r3, r3, asl #4	@ prephitmp.4191, D.38630,
	cmp	r3, lr	@ prephitmp.4191, prephitmp.4189
	bhi	.L723	@,
	ldr	r6, [r1, #776]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	r9, [r1, #768]	@ temp.4212, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	r6, #0	@ <variable>.stChanOption.s32SupportBFrame,
	moveq	r8, #1	@ PmvNum,
	beq	.L726	@,
	add	r8, r9, #1	@ PmvNum.4214, temp.4212,
	cmp	r8, #17	@ PmvNum.4214,
	movge	r8, #17	@ PmvNum,
.L726:
	ldrb	sl, [r1, #796]	@ zero_extendqisi2	@ prephitmp.4187, <variable>.stChanOption.s32DisplayFrameNum
	add	r9, r9, #2	@ DecFsNum, temp.4212,
	mov	r5, r2	@ PicWidth, temp.4209
	mov	r6, r3	@ PicHeight, prephitmp.4191
	b	.L720	@
.L731:
	mov	r0, r7	@, tmp187
	movw	r1, #:lower16:.LC35	@,
	movt	r1, #:upper16:.LC35	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.38636, tmp187
	b	.L711	@
.L735:
	ldr	r5, [r1, #744]	@ PicWidth, <variable>.stChanOption.s32MaxWidth
	mov	r2, r2, asl #4	@ D.38646, prephitmp.4185,
	cmp	r2, r5	@ D.38646, PicWidth
	bhi	.L738	@,
	ldr	r6, [r1, #748]	@ PicHeight, <variable>.stChanOption.s32MaxHeight
	mov	r3, r3, asl #4	@ prephitmp.4195, D.38630,
	cmp	r3, r6	@ prephitmp.4195, PicHeight
	bhi	.L715	@,
	movw	r3, #12296	@ tmp166,
	ldr	r0, [r4, r3]	@ <variable>.Vp6CodecInfo.Imgbuf_allocated, <variable>.Vp6CodecInfo.Imgbuf_allocated
	cmp	r0, #1	@ <variable>.Vp6CodecInfo.Imgbuf_allocated,
	beq	.L711	@,
	ldr	r7, [r1, #776]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	r9, [r1, #768]	@ D.38657, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	r7, #0	@ <variable>.stChanOption.s32SupportBFrame,
	moveq	r8, #1	@ PmvNum,
	beq	.L719	@,
	add	r8, r9, #1	@ PmvNum.4206, D.38657,
	cmp	r8, #17	@ PmvNum.4206,
	movge	r8, #17	@ PmvNum,
.L719:
	add	r9, r9, #2	@ DecFsNum, D.38657,
	ldrb	sl, [r1, #796]	@ zero_extendqisi2	@ prephitmp.4187, <variable>.stChanOption.s32DisplayFrameNum
	b	.L720	@
.L737:
	ldr	lr, [r1, #748]	@ prephitmp.4189, <variable>.stChanOption.s32MaxHeight
	mov	r3, r3, asl #4	@ prephitmp.4191, D.38630,
.L723:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC33	@,
	movt	r1, #:upper16:.LC33	@,
	stmia	sp, {ip, lr}	@ phole stm
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.38636,
	b	.L711	@
.L736:
	mov	r0, r5	@, D.38688
	movw	r1, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC34	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.38636, D.38688
	b	.L711	@
.L738:
	ldr	r6, [r1, #748]	@ PicHeight, <variable>.stChanOption.s32MaxHeight
	mov	r3, r3, asl #4	@ prephitmp.4195, D.38630,
.L715:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC33	@,
	movt	r1, #:upper16:.LC33	@,
	stmia	sp, {r5, r6}	@ phole stm
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.38636,
	b	.L711	@
	.fnend
	.size	VP6_ArrangeVHBMem, .-VP6_ArrangeVHBMem
	.align	2
	.global	VP6DEC_Decode
	.type	VP6DEC_Decode, %function
VP6DEC_Decode:
	.fnstart
.LFB1560:
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
	push	{lr}
	bl	__gnu_mcount_nc
	ldr	r3, [r1, #0]	@ D.40313, <variable>.VirAddr
	mov	r4, r0	@ pCtx, pCtx
	str	r3, [r0, #208]	@ D.40313, <variable>.Vp6StreamParam.VirAddr
	ldr	r2, [r1, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r2, [r0, #212]	@ <variable>.PhyAddr, <variable>.Vp6StreamParam.PhyAddr
	ldr	r2, [r1, #16]	@ D.40316, <variable>.LenInByte
	cmp	r2, #0	@ D.40316,
	str	r2, [r0, #216]	@ D.40316, <variable>.Vp6StreamParam.Length
	movweq	r3, #12300	@ tmp158,
	moveq	r2, #3	@ tmp159,
	streqb	r2, [r0, r3]	@ tmp159, <variable>.Vp6CodecInfo.FrameType
	beq	.L741	@,
	cmp	r2, #2	@ D.40316,
	ble	.L761	@,
	add	r5, r0, #12608	@ tmp278, pCtx,
	add	r7, r0, #220	@ pVp6CodecInfo, pCtx,
	add	r6, r5, #8	@ pBs, tmp278,
	mov	r1, r3	@, D.40313
	mov	r0, r6	@, pBs
	bl	BsInit	@
	add	r3, r4, #208	@ tmp163, pCtx,
	mov	r0, r7	@, pVp6CodecInfo
	str	r3, [r4, #204]	@ tmp163, <variable>.pVp6StreamParam
	mov	r1, r6	@, pBs
	bl	VP6_GetPictureHeader	@
	cmp	r0, #1	@ D.40325,
	mov	r8, r0	@ D.40325,
	beq	.L744	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC37	@,
	movt	r1, #:upper16:.LC37	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.40323,
	b	.L743	@
.L744:
	add	r1, r4, #12416	@, pCtx,
	mov	r0, r7	@, pVp6CodecInfo
	add	r1, r1, #56	@,,
	mov	r2, r6	@, pBs
	bl	VP6_BuildTables	@
	cmp	r0, #1	@,
	bne	.L762	@,
	movw	r6, #12296	@ tmp168,
	ldr	r0, [r4, r6]	@ <variable>.Vp6CodecInfo.Imgbuf_allocated, <variable>.Vp6CodecInfo.Imgbuf_allocated
	cmp	r0, #0	@ <variable>.Vp6CodecInfo.Imgbuf_allocated,
	beq	.L746	@,
	mov	r3, #12352	@ tmp170,
	movw	r2, #12496	@ tmp171,
	ldr	ip, [r4, r3]	@ <variable>.Vp6CodecInfo.OldHeaderInfo.pic_height_in_mb, <variable>.Vp6CodecInfo.OldHeaderInfo.pic_height_in_mb
	ldr	lr, [r4, r2]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.pic_height_in_mb, <variable>.Vp6CodecInfo.NewHeaderInfo.pic_height_in_mb
	cmp	ip, lr	@ <variable>.Vp6CodecInfo.OldHeaderInfo.pic_height_in_mb, <variable>.Vp6CodecInfo.NewHeaderInfo.pic_height_in_mb
	bne	.L746	@,
	movw	ip, #12356	@ tmp174,
	movw	r6, #12500	@ tmp175,
	ldr	r1, [r4, ip]	@ <variable>.Vp6CodecInfo.OldHeaderInfo.pic_width_in_mb, <variable>.Vp6CodecInfo.OldHeaderInfo.pic_width_in_mb
	ldr	r0, [r4, r6]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.pic_width_in_mb, <variable>.Vp6CodecInfo.NewHeaderInfo.pic_width_in_mb
	cmp	r1, r0	@ <variable>.Vp6CodecInfo.OldHeaderInfo.pic_width_in_mb, <variable>.Vp6CodecInfo.NewHeaderInfo.pic_width_in_mb
	bne	.L746	@,
.L741:
	mov	r0, r4	@, pCtx
	bl	VP6_DecodeDecide	@
	cmp	r0, #1	@ ret.4256,
	mov	r6, r0	@ ret.4256,
	beq	.L753	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC41	@,
	movt	r1, #:upper16:.LC41	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.40323,
.L743:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L753:
	mov	r0, r4	@, pCtx
	bl	VP6_GetImageBuffer	@
	cmp	r0, #1	@ D.40379,
	mov	r5, r0	@ D.40379,
	beq	.L754	@,
	mov	r0, r6	@, ret.4256
	movw	r1, #:lower16:.LC42	@,
	movt	r1, #:upper16:.LC42	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.40323,
	b	.L743	@
.L761:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC36	@,
	movt	r1, #:upper16:.LC36	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.40323,
	b	.L743	@
.L754:
	movw	r7, #13000	@ tmp224,
	movw	r6, #12308	@ tmp226,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	mov	r2, r5	@, D.40379
	ldr	r1, [r4, r6]	@, <variable>.Vp6CodecInfo.CurFsID
	bl	FSP_SetRef	@
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, r6]	@, <variable>.Vp6CodecInfo.CurFsID
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pImage,
	beq	.L763	@,
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r6, #0	@ tmp247,
	mov	r0, #29	@,
	movw	r1, #:lower16:.LC43	@,
	movt	r1, #:upper16:.LC43	@,
	ldrd	r2, [r3, #56]	@ <variable>.pts, <variable>.pstExtraData,
	strd	r2, [r7, #8]	@ <variable>.pts, pImage,
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r2, [r3, #72]	@ <variable>.Usertag, <variable>.pstExtraData,
	strd	r2, [r7, #16]	@ <variable>.Usertag, pImage,
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r2, [r3, #88]	@ <variable>.DispTime, <variable>.pstExtraData,
	strd	r2, [r7, #24]	@ <variable>.DispTime, pImage,
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r8, [ip, #104]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	str	r8, [r7, #68]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	ldr	r9, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [r9, #108]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	str	r3, [r7, #72]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	ip, [lr, #112]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	str	ip, [r7, #76]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	ldr	r8, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r9, [r8, #128]	@ <variable>.GopNum, <variable>.GopNum
	mvn	r8, #0	@ tmp249,
	str	r6, [r7, #148]	@ tmp247, <variable>.is_fld_save
	str	r9, [r7, #80]	@ <variable>.GopNum, <variable>.GopNum
	mvn	r9, #0	@,
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	strd	r8, [r3, #56]	@ tmp249, <variable>.pstExtraData,
	ldrd	r8, [r7, #16]	@ <variable>.Usertag, pImage,
	ldrd	r2, [r7, #8]	@ <variable>.PTS, pImage,
	strd	r8, [sp]	@ <variable>.Usertag,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	VP6_Set_DecParam	@
	cmp	r0, #1	@,
	bne	.L764	@,
	movw	r0, #12300	@ tmp254,
	ldrb	r1, [r4, r0]	@ zero_extendqisi2	@ <variable>.Vp6CodecInfo.FrameType, <variable>.Vp6CodecInfo.FrameType
	cmp	r1, #0	@ <variable>.Vp6CodecInfo.FrameType,
	bne	.L757	@,
	add	r2, r4, #12288	@, pCtx,
	add	lr, r4, #12416	@, pCtx,
	add	r0, r2, #40	@,,
	add	r1, lr, #56	@,,
	mov	r2, #144	@,
	bl	memcpy	@
.L758:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC45	@,
	movt	r1, #:upper16:.LC45	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.40323,
	b	.L743	@
.L746:
	movw	r7, #:lower16:g_event_report	@ tmp178,
	movt	r7, #:upper16:g_event_report	@ tmp178,
	ldr	ip, [r7, #0]	@ g_event_report.506, g_event_report
	cmp	ip, #0	@ g_event_report.506,
	beq	.L747	@,
	movw	r7, #12356	@ tmp179,
	mov	r0, #12352	@ tmp181,
	ldrh	r6, [r4, r7]	@, <variable>.Vp6CodecInfo.OldHeaderInfo.pic_width_in_mb
	movw	r3, #12500	@ tmp183,
	movw	lr, #12496	@ tmp185,
	movw	r8, #13000	@ tmp187,
	strh	r6, [fp, #-52]	@ movhi	@, para
	ldrh	r1, [r4, r0]	@, <variable>.Vp6CodecInfo.OldHeaderInfo.pic_height_in_mb
	strh	r1, [fp, #-50]	@ movhi	@, para
	mov	r1, #2	@,
	ldrh	r2, [r4, r3]	@, <variable>.Vp6CodecInfo.NewHeaderInfo.pic_width_in_mb
	mov	r3, #8	@,
	strh	r2, [fp, #-48]	@ movhi	@, para
	sub	r2, fp, #52	@,,
	ldrh	sl, [r4, lr]	@, <variable>.Vp6CodecInfo.NewHeaderInfo.pic_height_in_mb
	strh	sl, [fp, #-46]	@ movhi	@, para
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	blx	ip	@ g_event_report.506
.L747:
	movw	r6, #13000	@ tmp190,
	movw	r8, #12312	@ tmp192,
	movw	r7, #12316	@ tmp196,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r8]	@, <variable>.Vp6CodecInfo.GoldenFsID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	ldr	r1, [r4, r7]	@, <variable>.Vp6CodecInfo.FwdFsID
	mov	r2, #1	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	mov	sl, #0	@ tmp199,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	add	r5, r5, #40	@ D.40354, tmp278,
	str	sl, [r4, r8]	@ tmp199, <variable>.Vp6CodecInfo.GoldenFsID
	str	sl, [r4, r7]	@ tmp199, <variable>.Vp6CodecInfo.FwdFsID
	bl	FSP_GetNullLogicFs	@
	movw	r2, #12292	@ tmp206,
	str	sl, [r4, r2]	@ tmp199, <variable>.Vp6CodecInfo.RefNum
	mov	r1, r5	@, D.40354
	str	r0, [r4, r8]	@ D.40353, <variable>.Vp6CodecInfo.GoldenFsID
	str	r0, [r4, r7]	@ D.40353, <variable>.Vp6CodecInfo.FwdFsID
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_ClearNotInVoQueue	@
	movw	ip, #12500	@ tmp211,
	ldr	r2, [r4, ip]	@ temp.4253, <variable>.Vp6CodecInfo.NewHeaderInfo.pic_width_in_mb
	cmp	r2, #512	@ temp.4253,
	bhi	.L765	@,
	movw	r3, #12496	@ tmp213,
	ldr	r3, [r4, r3]	@ prephitmp.4238, <variable>.Vp6CodecInfo.NewHeaderInfo.pic_height_in_mb
	cmp	r3, #512	@ prephitmp.4238,
	bhi	.L749	@,
	ldr	r3, [r4, #0]	@ D.40361, <variable>.pstExtraData
	ldr	r1, [r3, #788]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r1, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L751	@,
	ldr	r0, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r0, #25	@ <variable>.eCapLevel,
	beq	.L766	@,
.L751:
	movw	lr, #13000	@ tmp219,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	beq	.L760	@,
.L752:
	mov	r0, r4	@, pCtx
	bl	VP6_ArrangeVHBMem	@
	cmp	r0, #1	@,
	beq	.L741	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC40	@,
	movt	r1, #:upper16:.LC40	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.40323,
	b	.L743	@
.L764:
	mov	r0, r5	@, D.40379
	movw	r1, #:lower16:.LC44	@,
	movt	r1, #:upper16:.LC44	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@ D.40323, tmp247
	b	.L743	@
.L765:
	movw	lr, #12496	@ tmp212,
	ldr	r3, [r4, lr]	@ prephitmp.4238, <variable>.Vp6CodecInfo.NewHeaderInfo.pic_height_in_mb
.L749:
	mov	r0, #18	@,
	movw	r1, #:lower16:.LC39	@,
	movt	r1, #:upper16:.LC39	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.40323,
	b	.L743	@
.L762:
	mov	r0, r8	@, D.40325
	movw	r1, #:lower16:.LC38	@,
	movt	r1, #:upper16:.LC38	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.40323,
	b	.L743	@
.L757:
	movw	r5, #12340	@ tmp264,
	movw	r6, #12344	@ tmp265,
	ldr	r7, [r4, r5]	@ TmpVp3VersionNo, <variable>.Vp6CodecInfo.OldHeaderInfo.Vp3VersionNo
	add	ip, r4, #12288	@, pCtx,
	ldr	r8, [r4, r6]	@ TmpVpProfile, <variable>.Vp6CodecInfo.OldHeaderInfo.VpProfile
	add	r3, r4, #12416	@, pCtx,
	add	r0, ip, #40	@,,
	add	r1, r3, #56	@,,
	mov	r2, #144	@,
	bl	memcpy	@
	str	r8, [r4, r6]	@ TmpVpProfile, <variable>.Vp6CodecInfo.OldHeaderInfo.VpProfile
	str	r7, [r4, r5]	@ TmpVp3VersionNo, <variable>.Vp6CodecInfo.OldHeaderInfo.Vp3VersionNo
	b	.L758	@
.L763:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC29	@,
	movw	r2, #2638	@,
	movt	r1, #:upper16:.LC29	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.40323, pImage
	b	.L743	@
.L766:
	movw	r2, #12296	@ tmp217,
	ldr	ip, [r4, r2]	@ <variable>.Vp6CodecInfo.Imgbuf_allocated, <variable>.Vp6CodecInfo.Imgbuf_allocated
	cmp	ip, #0	@ <variable>.Vp6CodecInfo.Imgbuf_allocated,
	bne	.L752	@,
.L760:
	mov	r0, r5	@, D.40354
	bl	ResetVoQueue	@
	b	.L752	@
	.fnend
	.size	VP6DEC_Decode, .-VP6DEC_Decode
	.global	VP6_DcNodeEqs
	.global	VP6_ModeVq
	.global	VP6_BaselineXmittedProbs
	.global	VP6_MvUpdateProbs
	.global	DefaultMvShortProbs
	.global	DefaultMvLongProbs
	.global	DefaultIsShortProbs
	.global	DefaultSignProbs
	.global	VP6_DcUpdateProbs
	.global	VP6_AcUpdateProbs
	.global	ZeroRunProbDefaults
	.global	ScanBandUpdateProbs
	.global	ZrlUpdateProbs
	.global	DefaultScanBands
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	VP6_DcNodeEqs, %object
	.size	VP6_DcNodeEqs, 120
VP6_DcNodeEqs:
@ M:
	.word	122
@ C:
	.word	133
@ M:
	.word	133
@ C:
	.word	51
@ M:
	.word	142
@ C:
	.word	-16
@ M:
	.word	0
@ C:
	.word	1
@ M:
	.word	0
@ C:
	.word	1
@ M:
	.word	0
@ C:
	.word	1
@ M:
	.word	78
@ C:
	.word	171
@ M:
	.word	169
@ C:
	.word	71
@ M:
	.word	221
@ C:
	.word	-30
@ M:
	.word	139
@ C:
	.word	117
@ M:
	.word	214
@ C:
	.word	44
@ M:
	.word	246
@ C:
	.word	-3
@ M:
	.word	168
@ C:
	.word	79
@ M:
	.word	210
@ C:
	.word	38
@ M:
	.word	203
@ C:
	.word	17
	.type	__func__.39845, %object
	.size	__func__.39845, 17
__func__.39845:
	.ascii	"VP6_DecodeDecide\000"
	.space	3
	.type	VP6_LoopFilterLimitValues, %object
	.size	VP6_LoopFilterLimitValues, 64
VP6_LoopFilterLimitValues:
	.byte	14
	.byte	14
	.byte	13
	.byte	13
	.byte	12
	.byte	12
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	2
	.type	DcQuantTab, %object
	.size	DcQuantTab, 128
DcQuantTab:
	.short	188
	.short	188
	.short	188
	.short	188
	.short	180
	.short	172
	.short	172
	.short	172
	.short	172
	.short	172
	.short	168
	.short	164
	.short	164
	.short	160
	.short	160
	.short	160
	.short	160
	.short	140
	.short	140
	.short	140
	.short	140
	.short	132
	.short	132
	.short	132
	.short	132
	.short	128
	.short	128
	.short	128
	.short	108
	.short	108
	.short	104
	.short	104
	.short	100
	.short	100
	.short	96
	.short	96
	.short	92
	.short	92
	.short	76
	.short	76
	.short	76
	.short	76
	.short	72
	.short	72
	.short	68
	.short	64
	.short	64
	.short	64
	.short	64
	.short	64
	.short	60
	.short	44
	.short	44
	.short	44
	.short	40
	.short	40
	.short	36
	.short	32
	.short	28
	.short	20
	.short	12
	.short	12
	.short	8
	.short	8
	.type	AcQuantTab, %object
	.size	AcQuantTab, 128
AcQuantTab:
	.short	376
	.short	368
	.short	360
	.short	352
	.short	344
	.short	328
	.short	312
	.short	296
	.short	280
	.short	264
	.short	248
	.short	232
	.short	216
	.short	212
	.short	208
	.short	204
	.short	200
	.short	196
	.short	192
	.short	188
	.short	184
	.short	180
	.short	176
	.short	172
	.short	168
	.short	160
	.short	156
	.short	148
	.short	144
	.short	140
	.short	136
	.short	132
	.short	128
	.short	124
	.short	120
	.short	116
	.short	112
	.short	108
	.short	104
	.short	100
	.short	96
	.short	92
	.short	88
	.short	84
	.short	80
	.short	76
	.short	72
	.short	68
	.short	64
	.short	60
	.short	56
	.short	52
	.short	48
	.short	44
	.short	40
	.short	36
	.short	32
	.short	28
	.short	24
	.short	20
	.short	16
	.short	12
	.short	8
	.short	4
	.type	VP6_MvUpdateProbs, %object
	.size	VP6_MvUpdateProbs, 34
VP6_MvUpdateProbs:
	.byte	-19
	.byte	-10
	.byte	-3
	.byte	-3
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-6
	.byte	-6
	.byte	-4
	.byte	-25
	.byte	-13
	.byte	-11
	.byte	-3
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-5
	.byte	-5
	.byte	-2
	.space	2
	.type	VP6_ModeVq, %object
	.size	VP6_ModeVq, 960
VP6_ModeVq:
	.byte	9
	.byte	15
	.byte	32
	.byte	25
	.byte	7
	.byte	19
	.byte	9
	.byte	21
	.byte	1
	.byte	12
	.byte	14
	.byte	12
	.byte	3
	.byte	18
	.byte	14
	.byte	23
	.byte	3
	.byte	10
	.byte	0
	.byte	4
	.byte	48
	.byte	39
	.byte	1
	.byte	2
	.byte	11
	.byte	27
	.byte	29
	.byte	44
	.byte	7
	.byte	27
	.byte	1
	.byte	4
	.byte	0
	.byte	3
	.byte	1
	.byte	6
	.byte	1
	.byte	2
	.byte	0
	.byte	0
	.byte	21
	.byte	32
	.byte	1
	.byte	2
	.byte	4
	.byte	10
	.byte	32
	.byte	43
	.byte	6
	.byte	23
	.byte	2
	.byte	3
	.byte	1
	.byte	19
	.byte	1
	.byte	6
	.byte	12
	.byte	21
	.byte	0
	.byte	7
	.byte	69
	.byte	83
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	10
	.byte	29
	.byte	3
	.byte	12
	.byte	0
	.byte	1
	.byte	0
	.byte	3
	.byte	0
	.byte	3
	.byte	2
	.byte	2
	.byte	0
	.byte	0
	.byte	11
	.byte	20
	.byte	1
	.byte	4
	.byte	18
	.byte	36
	.byte	43
	.byte	48
	.byte	13
	.byte	35
	.byte	0
	.byte	2
	.byte	0
	.byte	5
	.byte	3
	.byte	12
	.byte	1
	.byte	2
	.byte	0
	.byte	0
	.byte	70
	.byte	44
	.byte	0
	.byte	1
	.byte	2
	.byte	10
	.byte	37
	.byte	46
	.byte	8
	.byte	26
	.byte	0
	.byte	2
	.byte	0
	.byte	2
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	8
	.byte	15
	.byte	0
	.byte	1
	.byte	8
	.byte	21
	.byte	74
	.byte	53
	.byte	22
	.byte	42
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	3
	.byte	1
	.byte	2
	.byte	0
	.byte	0
	.byte	-115
	.byte	42
	.byte	0
	.byte	0
	.byte	1
	.byte	4
	.byte	11
	.byte	24
	.byte	1
	.byte	11
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	8
	.byte	19
	.byte	4
	.byte	10
	.byte	24
	.byte	45
	.byte	21
	.byte	37
	.byte	9
	.byte	29
	.byte	0
	.byte	3
	.byte	1
	.byte	7
	.byte	11
	.byte	25
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	46
	.byte	42
	.byte	0
	.byte	1
	.byte	2
	.byte	10
	.byte	54
	.byte	51
	.byte	10
	.byte	30
	.byte	0
	.byte	2
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	28
	.byte	32
	.byte	0
	.byte	0
	.byte	3
	.byte	10
	.byte	75
	.byte	51
	.byte	14
	.byte	33
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	1
	.byte	2
	.byte	0
	.byte	0
	.byte	100
	.byte	46
	.byte	0
	.byte	1
	.byte	3
	.byte	9
	.byte	21
	.byte	37
	.byte	5
	.byte	20
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	1
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	27
	.byte	29
	.byte	0
	.byte	1
	.byte	9
	.byte	25
	.byte	53
	.byte	51
	.byte	12
	.byte	34
	.byte	0
	.byte	1
	.byte	0
	.byte	3
	.byte	1
	.byte	5
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	80
	.byte	38
	.byte	0
	.byte	0
	.byte	1
	.byte	4
	.byte	69
	.byte	33
	.byte	5
	.byte	16
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	16
	.byte	20
	.byte	0
	.byte	0
	.byte	2
	.byte	8
	.byte	104
	.byte	49
	.byte	15
	.byte	33
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	-62
	.byte	16
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	9
	.byte	1
	.byte	3
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	41
	.byte	22
	.byte	1
	.byte	0
	.byte	1
	.byte	31
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	7
	.byte	0
	.byte	1
	.byte	98
	.byte	25
	.byte	4
	.byte	10
	.byte	123
	.byte	37
	.byte	6
	.byte	4
	.byte	1
	.byte	27
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	5
	.byte	8
	.byte	1
	.byte	7
	.byte	0
	.byte	1
	.byte	12
	.byte	10
	.byte	0
	.byte	2
	.byte	26
	.byte	14
	.byte	14
	.byte	12
	.byte	0
	.byte	24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	55
	.byte	17
	.byte	1
	.byte	9
	.byte	0
	.byte	36
	.byte	5
	.byte	7
	.byte	1
	.byte	3
	.byte	-47
	.byte	5
	.byte	0
	.byte	0
	.byte	0
	.byte	27
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	5
	.byte	4
	.byte	5
	.byte	0
	.byte	121
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.byte	2
	.byte	4
	.byte	1
	.byte	4
	.byte	2
	.byte	2
	.byte	0
	.byte	1
	.byte	-81
	.byte	5
	.byte	0
	.byte	1
	.byte	0
	.byte	48
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	83
	.byte	5
	.byte	2
	.byte	3
	.byte	0
	.byte	102
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	3
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-23
	.byte	6
	.byte	0
	.byte	0
	.byte	0
	.byte	8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	34
	.byte	16
	.byte	112
	.byte	21
	.byte	1
	.byte	28
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	6
	.byte	8
	.byte	1
	.byte	7
	.byte	0
	.byte	3
	.byte	2
	.byte	5
	.byte	0
	.byte	2
	.byte	-97
	.byte	35
	.byte	2
	.byte	2
	.byte	0
	.byte	25
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.byte	6
	.byte	0
	.byte	5
	.byte	0
	.byte	1
	.byte	4
	.byte	4
	.byte	0
	.byte	1
	.byte	75
	.byte	39
	.byte	5
	.byte	7
	.byte	2
	.byte	48
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.byte	11
	.byte	2
	.byte	16
	.byte	1
	.byte	4
	.byte	7
	.byte	10
	.byte	0
	.byte	2
	.byte	-44
	.byte	21
	.byte	0
	.byte	1
	.byte	0
	.byte	9
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	2
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	2
	.byte	2
	.byte	0
	.byte	0
	.byte	4
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	-84
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	-69
	.byte	22
	.byte	1
	.byte	1
	.byte	0
	.byte	17
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.byte	6
	.byte	0
	.byte	4
	.byte	0
	.byte	1
	.byte	4
	.byte	4
	.byte	0
	.byte	1
	.byte	-123
	.byte	6
	.byte	1
	.byte	2
	.byte	1
	.byte	70
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	4
	.byte	0
	.byte	3
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	-5
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	3
	.byte	2
	.byte	3
	.byte	0
	.byte	2
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	11
	.byte	4
	.byte	1
	.byte	4
	.byte	0
	.byte	2
	.byte	3
	.byte	2
	.byte	0
	.byte	4
	.byte	49
	.byte	46
	.byte	3
	.byte	4
	.byte	7
	.byte	31
	.byte	42
	.byte	41
	.byte	0
	.byte	0
	.byte	2
	.byte	6
	.byte	1
	.byte	7
	.byte	1
	.byte	4
	.byte	2
	.byte	4
	.byte	0
	.byte	1
	.byte	26
	.byte	25
	.byte	1
	.byte	1
	.byte	2
	.byte	10
	.byte	67
	.byte	39
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	14
	.byte	0
	.byte	2
	.byte	31
	.byte	26
	.byte	1
	.byte	6
	.byte	103
	.byte	46
	.byte	1
	.byte	2
	.byte	2
	.byte	10
	.byte	33
	.byte	42
	.byte	0
	.byte	0
	.byte	1
	.byte	4
	.byte	0
	.byte	3
	.byte	0
	.byte	1
	.byte	1
	.byte	3
	.byte	0
	.byte	0
	.byte	14
	.byte	31
	.byte	9
	.byte	13
	.byte	14
	.byte	54
	.byte	22
	.byte	29
	.byte	0
	.byte	0
	.byte	2
	.byte	6
	.byte	4
	.byte	18
	.byte	6
	.byte	13
	.byte	1
	.byte	5
	.byte	0
	.byte	1
	.byte	85
	.byte	39
	.byte	0
	.byte	0
	.byte	1
	.byte	9
	.byte	69
	.byte	40
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	3
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	0
	.byte	0
	.byte	31
	.byte	28
	.byte	0
	.byte	0
	.byte	3
	.byte	14
	.byte	-126
	.byte	34
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	3
	.byte	0
	.byte	1
	.byte	3
	.byte	3
	.byte	0
	.byte	1
	.byte	-85
	.byte	25
	.byte	0
	.byte	0
	.byte	1
	.byte	5
	.byte	25
	.byte	21
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	17
	.byte	21
	.byte	68
	.byte	29
	.byte	6
	.byte	15
	.byte	13
	.byte	22
	.byte	0
	.byte	0
	.byte	6
	.byte	12
	.byte	3
	.byte	14
	.byte	4
	.byte	10
	.byte	1
	.byte	7
	.byte	0
	.byte	3
	.byte	51
	.byte	39
	.byte	0
	.byte	1
	.byte	2
	.byte	12
	.byte	91
	.byte	44
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	3
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	0
	.byte	1
	.byte	81
	.byte	25
	.byte	0
	.byte	0
	.byte	2
	.byte	9
	.byte	106
	.byte	26
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	-116
	.byte	37
	.byte	0
	.byte	1
	.byte	1
	.byte	8
	.byte	24
	.byte	33
	.byte	0
	.byte	0
	.byte	1
	.byte	2
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	1
	.byte	2
	.byte	0
	.byte	0
	.byte	14
	.byte	23
	.byte	1
	.byte	3
	.byte	11
	.byte	53
	.byte	90
	.byte	31
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.byte	1
	.byte	5
	.byte	2
	.byte	6
	.byte	1
	.byte	2
	.byte	0
	.byte	0
	.byte	123
	.byte	29
	.byte	0
	.byte	0
	.byte	1
	.byte	7
	.byte	57
	.byte	30
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	13
	.byte	14
	.byte	0
	.byte	0
	.byte	4
	.byte	20
	.byte	-81
	.byte	20
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	-54
	.byte	23
	.byte	0
	.byte	0
	.byte	1
	.byte	3
	.byte	2
	.byte	9
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.type	VP6_DcUpdateProbs, %object
	.size	VP6_DcUpdateProbs, 22
VP6_DcUpdateProbs:
	.byte	-110
	.byte	-1
	.byte	-75
	.byte	-49
	.byte	-24
	.byte	-13
	.byte	-18
	.byte	-5
	.byte	-12
	.byte	-6
	.byte	-7
	.byte	-77
	.byte	-1
	.byte	-42
	.byte	-16
	.byte	-6
	.byte	-1
	.byte	-12
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.space	2
	.type	ZeroRunProbDefaults, %object
	.size	ZeroRunProbDefaults, 28
ZeroRunProbDefaults:
	.byte	-58
	.byte	-59
	.byte	-60
	.byte	-110
	.byte	-58
	.byte	-52
	.byte	-87
	.byte	-114
	.byte	-126
	.byte	-120
	.byte	-107
	.byte	-107
	.byte	-65
	.byte	-7
	.byte	-121
	.byte	-55
	.byte	-75
	.byte	-102
	.byte	98
	.byte	117
	.byte	-124
	.byte	126
	.byte	-110
	.byte	-87
	.byte	-72
	.byte	-16
	.byte	-10
	.byte	-2
	.type	ScanBandUpdateProbs, %object
	.size	ScanBandUpdateProbs, 64
ScanBandUpdateProbs:
	.byte	-1
	.byte	-124
	.byte	-124
	.byte	-97
	.byte	-103
	.byte	-105
	.byte	-95
	.byte	-86
	.byte	-92
	.byte	-94
	.byte	-120
	.byte	110
	.byte	103
	.byte	114
	.byte	-127
	.byte	118
	.byte	124
	.byte	125
	.byte	-124
	.byte	-120
	.byte	114
	.byte	110
	.byte	-114
	.byte	-121
	.byte	-122
	.byte	123
	.byte	-113
	.byte	126
	.byte	-103
	.byte	-73
	.byte	-90
	.byte	-95
	.byte	-85
	.byte	-76
	.byte	-77
	.byte	-92
	.byte	-53
	.byte	-38
	.byte	-31
	.byte	-39
	.byte	-41
	.byte	-50
	.byte	-53
	.byte	-39
	.byte	-27
	.byte	-15
	.byte	-8
	.byte	-13
	.byte	-3
	.byte	-1
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.type	ZrlUpdateProbs, %object
	.size	ZrlUpdateProbs, 28
ZrlUpdateProbs:
	.byte	-37
	.byte	-10
	.byte	-18
	.byte	-7
	.byte	-24
	.byte	-17
	.byte	-7
	.byte	-1
	.byte	-8
	.byte	-3
	.byte	-17
	.byte	-12
	.byte	-15
	.byte	-8
	.byte	-58
	.byte	-24
	.byte	-5
	.byte	-3
	.byte	-37
	.byte	-15
	.byte	-3
	.byte	-1
	.byte	-8
	.byte	-7
	.byte	-12
	.byte	-18
	.byte	-5
	.byte	-1
	.type	VP6_AcUpdateProbs, %object
	.size	VP6_AcUpdateProbs, 396
VP6_AcUpdateProbs:
	.byte	-29
	.byte	-10
	.byte	-26
	.byte	-9
	.byte	-12
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-47
	.byte	-25
	.byte	-25
	.byte	-7
	.byte	-7
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-31
	.byte	-14
	.byte	-15
	.byte	-5
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-15
	.byte	-3
	.byte	-4
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-8
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-16
	.byte	-1
	.byte	-8
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-16
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-50
	.byte	-53
	.byte	-29
	.byte	-17
	.byte	-9
	.byte	-1
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-49
	.byte	-57
	.byte	-36
	.byte	-20
	.byte	-13
	.byte	-4
	.byte	-4
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-44
	.byte	-37
	.byte	-26
	.byte	-13
	.byte	-12
	.byte	-3
	.byte	-4
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-20
	.byte	-19
	.byte	-9
	.byte	-4
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-16
	.byte	-16
	.byte	-8
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-26
	.byte	-23
	.byte	-7
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-18
	.byte	-18
	.byte	-6
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-8
	.byte	-5
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-31
	.byte	-17
	.byte	-29
	.byte	-25
	.byte	-12
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-1
	.byte	-3
	.byte	-1
	.byte	-24
	.byte	-22
	.byte	-32
	.byte	-28
	.byte	-14
	.byte	-7
	.byte	-14
	.byte	-4
	.byte	-5
	.byte	-5
	.byte	-1
	.byte	-21
	.byte	-7
	.byte	-18
	.byte	-16
	.byte	-5
	.byte	-1
	.byte	-7
	.byte	-1
	.byte	-3
	.byte	-3
	.byte	-1
	.byte	-7
	.byte	-3
	.byte	-5
	.byte	-6
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-5
	.byte	-6
	.byte	-7
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-13
	.byte	-12
	.byte	-6
	.byte	-6
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-7
	.byte	-8
	.byte	-6
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.type	VP6_BaselineXmittedProbs, %object
	.size	VP6_BaselineXmittedProbs, 80
VP6_BaselineXmittedProbs:
	.byte	42
	.byte	2
	.byte	7
	.byte	42
	.byte	22
	.byte	3
	.byte	2
	.byte	5
	.byte	1
	.byte	0
	.byte	69
	.byte	1
	.byte	1
	.byte	44
	.byte	6
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	8
	.byte	1
	.byte	8
	.byte	0
	.byte	0
	.byte	2
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	-27
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	35
	.byte	1
	.byte	6
	.byte	34
	.byte	0
	.byte	2
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	122
	.byte	1
	.byte	1
	.byte	46
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	64
	.byte	0
	.byte	64
	.byte	64
	.byte	64
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	64
	.byte	0
	.byte	64
	.byte	64
	.byte	64
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.type	DefaultIsShortProbs, %object
	.size	DefaultIsShortProbs, 2
DefaultIsShortProbs:
	.byte	-94
	.byte	-92
	.space	2
	.type	DefaultMvShortProbs, %object
	.size	DefaultMvShortProbs, 14
DefaultMvShortProbs:
	.byte	-31
	.byte	-110
	.byte	-84
	.byte	-109
	.byte	-42
	.byte	39
	.byte	-100
	.byte	-52
	.byte	-86
	.byte	119
	.byte	-21
	.byte	-116
	.byte	-26
	.byte	-28
	.space	2
	.type	DefaultSignProbs, %object
	.size	DefaultSignProbs, 2
DefaultSignProbs:
	.byte	-128
	.byte	-128
	.space	2
	.type	DefaultMvLongProbs, %object
	.size	DefaultMvLongProbs, 16
DefaultMvLongProbs:
	.byte	-9
	.byte	-46
	.byte	-121
	.byte	68
	.byte	-118
	.byte	-36
	.byte	-17
	.byte	-10
	.byte	-12
	.byte	-72
	.byte	-55
	.byte	44
	.byte	-83
	.byte	-35
	.byte	-17
	.byte	-3
	.type	DefaultScanBands, %object
	.size	DefaultScanBands, 64
DefaultScanBands:
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	3
	.byte	3
	.byte	4
	.byte	4
	.byte	4
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	6
	.byte	6
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	8
	.byte	8
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	10
	.byte	10
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"enter VP6_ConvertBoolToHuff\012\000"
	.space	3
.LC1:
	.ascii	"leave VP6_ConvertBoolToHuff\012\000"
	.space	3
.LC2:
	.ascii	"ERROR: No Img buffer is allocated\012\000"
	.space	1
.LC3:
	.ascii	"----------------- vp6 Imode -> %d -----------------"
	.ascii	"-\012\000"
	.space	2
.LC4:
	.ascii	"-----I_MODE, but FrameType is %d-----\012\000"
	.space	1
.LC5:
	.ascii	"-----cur framtype is %s, but refnum=%d-----\012\000"
	.space	3
.LC6:
	.ascii	"P-frm\000"
	.space	2
.LC7:
	.ascii	"error: DecMode illegal\012\000"
.LC8:
	.ascii	"%s %d NULL == pFwdImg!!\012\000"
	.space	3
.LC9:
	.ascii	"dec P frame, fwd ref err(%d) > ref_thr(%d)\012\000"
.LC10:
	.ascii	"ErrRatio = %d\012\000"
	.space	1
.LC11:
	.ascii	"pCurImg is null\012\000"
	.space	3
.LC12:
	.ascii	"err_level(%d) over ref_thr(%d)\012\000"
.LC13:
	.ascii	"line: %d pToQueImg is null!\012\000"
	.space	3
.LC14:
	.ascii	"insert img to Voqueue failed!\012\000"
	.space	1
.LC15:
	.ascii	"VP6_Set_DecParam but logic fs is null!\012\000"
.LC16:
	.ascii	"Decord FS is NULL!\012\000"
.LC17:
	.ascii	"-1 == VCTRL_GetChanIDByCtx() Err! \012\000"
.LC18:
	.ascii	"VP6DEC_Init leave\012\000"
	.space	1
.LC19:
	.ascii	"VP6_InterFrmHeader VersionNo fault,old:%d,new:%d\012"
	.ascii	"\000"
	.space	2
.LC20:
	.ascii	"enter VP6_IntraFrmHeader\012\000"
	.space	2
.LC21:
	.ascii	"error: Vp3VersionNo %d > CURRENT_DECODE_VERSION(8)\012"
	.ascii	"\000"
.LC22:
	.ascii	"error: bitstream error!\012\000"
	.space	3
.LC23:
	.ascii	"We have a new size image!\012 The old size is %d x "
	.ascii	"%d, and the new is %d x %d\012\000"
.LC24:
	.ascii	"leave VP6_IntraFrmHeader\012\000"
	.space	2
.LC25:
	.ascii	"[ERR]VP6_GetPictureHeader invalid param!\012\000"
	.space	2
.LC26:
	.ascii	"VP6_GetPictureHeader enter!\012\000"
	.space	3
.LC27:
	.ascii	"VP6_GetPictureHeader leave!\012\000"
	.space	3
.LC28:
	.ascii	"get frame store fail!\012\000"
	.space	1
.LC29:
	.ascii	"line: %d, pImage is NULL!\012\000"
	.space	1
.LC30:
	.ascii	"get image buffer ok: LogicFsID = %d\012\000"
	.space	3
.LC31:
	.ascii	"decode %p, disp %p, tf %p\012\000"
	.space	1
.LC32:
	.ascii	"image_size_in_mb abnormal(%d x %d)\012\000"
.LC33:
	.ascii	"vp6 actual frame size(%dx%d) exeed max config(%dx%d"
	.ascii	")\012\000"
	.space	2
.LC34:
	.ascii	"partition fs memory fail!\012\000"
	.space	1
.LC35:
	.ascii	"FSP_ConfigInstance fail!\012\000"
	.space	2
.LC36:
	.ascii	"Error! Truncated packet\012\000"
	.space	3
.LC37:
	.ascii	"[ERR]VP6_GetPictureHeader Error!\012\000"
	.space	2
.LC38:
	.ascii	"[ERR] VP6_DecodeDecide Error!\012\000"
	.space	1
.LC39:
	.ascii	"pic width/height to large,MbWidth = %d, MbHeight = "
	.ascii	"%d\000"
	.space	2
.LC40:
	.ascii	"VP6_ArrangeVHBMem err\012\000"
	.space	1
.LC41:
	.ascii	"VP6_DecodeDecide err\012\000"
	.space	2
.LC42:
	.ascii	"VP6DEC_GetImageBuffer err\012\000"
	.space	1
.LC43:
	.ascii	"dec_pts: %lld Usertag = %lld\012\000"
	.space	2
.LC44:
	.ascii	"VP6_PrePare_decode Error!\012\000"
	.space	1
.LC45:
	.ascii	"leave VP6DEC_Decode\012\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
