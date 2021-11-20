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
	.file	"fsp.c"
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
@ -DKBUILD_BASENAME=KBUILD_STR(fsp) -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD drivers/msp/vfmw/vfmw_v4.0/firmware/common/.fsp.o.d
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/drivers/msp/vfmw/vfmw_v4.0/firmware/common/fsp.c
@ -mlittle-endian -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -marm -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/common/fsp.o -O2 -Wall -Wundef
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
	.global	FSP_GetUsedBufferNum
	.type	FSP_GetUsedBufferNum, %function
FSP_GetUsedBufferNum:
	.fnstart
.LFB1543:
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
	movw	r2, #:lower16:s_pstVfmwChan	@ tmp172,
	movt	r2, #:upper16:s_pstVfmwChan	@ tmp172,
	movw	r3, #:lower16:206418	@ tmp173,
	movt	r3, #:upper16:206418	@ tmp173,
	ldr	ip, [r2, r0, asl #2]	@ D.38813, s_pstVfmwChan
	ldrsb	r6, [ip, r3]	@ D.38818, <variable>.FspInst.s32DecFsNum
	cmp	r6, #0	@ D.38818,
	movle	r0, #0	@ s32UsedFrameNum,
	ldmlefd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	movw	r0, #:lower16:241382	@ tmp181,
	movt	r0, #:upper16:241382	@ tmp181,
	add	r3, ip, r0	@ tmp181, D.38813, tmp181
	rsb	r6, r6, r6, asl #4	@, tmp178, D.38818, D.38818,
	mov	r0, #0	@ s32UsedFrameNum,
	ldrsb	r2, [r3, #0]	@ <variable>.DispState, <variable>.DispState
	mov	r6, r6, asl #2	@ D.40422, tmp178,
	sub	r1, r6, #60	@ tmp189, D.40422,
	cmp	r2, #3	@ <variable>.DispState,
	ubfx	r2, r1, #2, #1	@ tmp193, tmp189,,
	beq	.L19	@,
	mov	r3, #60	@ ivtmp.609,
	cmp	r3, r6	@ ivtmp.609, D.40422
	ldmeqfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L21:
	cmp	r2, #0	@ tmp193,
	beq	.L5	@,
	movw	r1, #:lower16:241442	@ tmp208,
	movt	r1, #:upper16:241442	@ tmp208,
	add	r2, ip, r1	@ tmp208, D.38813, tmp208
	add	r3, r3, #60	@ ivtmp.609, ivtmp.609,
	ldrsb	r1, [r2, #0]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #3	@ <variable>.DispState,
	addeq	r0, r0, #1	@ s32UsedFrameNum, s32UsedFrameNum,
	cmp	r3, r6	@ ivtmp.609, D.40422
	bne	.L5	@,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L13:
	add	r3, r1, #60	@ ivtmp.609, tmp194,
	cmp	r3, r6	@ ivtmp.609, D.40422
	beq	.L20	@,
.L5:
	movw	r2, #:lower16:241382	@ tmp199,
	movt	r2, #:upper16:241382	@ tmp199,
	add	r5, ip, r3	@ tmp197, D.38813, ivtmp.609
	add	r1, r3, #60	@ tmp194, ivtmp.609,
	mov	r3, r2	@ tmp204, tmp199
	add	r2, r5, r2	@ tmp199, tmp197, tmp199
	add	r4, ip, r1	@ tmp202, D.38813, tmp194
	ldrsb	r2, [r2, #0]	@ <variable>.DispState, <variable>.DispState
	add	r3, r4, r3	@ tmp204, tmp202, tmp204
	cmp	r2, #3	@ <variable>.DispState,
	ldrsb	r2, [r3, #0]	@ <variable>.DispState, <variable>.DispState
	addeq	r0, r0, #1	@ s32UsedFrameNum, s32UsedFrameNum,
	cmp	r2, #3	@ <variable>.DispState,
	bne	.L13	@,
	add	r3, r1, #60	@ ivtmp.609, tmp194,
	add	r0, r0, #1	@ s32UsedFrameNum, s32UsedFrameNum,
	cmp	r3, r6	@ ivtmp.609, D.40422
	bne	.L5	@,
.L20:
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L19:
	mov	r3, #60	@ ivtmp.609,
	cmp	r3, r6	@ ivtmp.609, D.40422
	mov	r0, #1	@ s32UsedFrameNum,
	bne	.L21	@,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	FSP_GetUsedBufferNum, .-FSP_GetUsedBufferNum
	.align	2
	.global	FindLeastTickPhyFs
	.type	FindLeastTickPhyFs, %function
FindLeastTickPhyFs:
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
	cmp	r1, #0	@ PhyNum
	movle	r5, #0	@ LeastFsID,
	ble	.L26	@,
	tst	r1, #1	@ PhyNum,
	mov	r5, #0	@ LeastFsID,
	mvn	ip, #0	@ LeastTick.648,
	mov	r2, r5	@ i, LeastFsID
	bne	.L27	@,
	ldr	r3, [r0, #56]	@ LeastTick, <variable>.u32Tick
	add	r0, r0, #60	@ pstPhyFs, pstPhyFs,
	mov	r2, #1	@ i,
	add	r4, r0, #60	@ tmp172, pstPhyFs,
	cmn	r3, #1	@ LeastTick,
	movcs	r3, ip	@, LeastTick, LeastTick.648
	mov	ip, r3	@ LeastTick.648, LeastTick
	ldr	r3, [r0, #56]	@ LeastTick, <variable>.u32Tick
	cmp	r3, ip	@ LeastTick, LeastTick.648
	movcc	r5, r2	@ LeastFsID, i
	add	r2, r2, #1	@ tmp171, i,
	movcs	r3, ip	@ LeastTick, LeastTick.648
	cmp	r2, r1	@ tmp171, PhyNum
	beq	.L26	@,
.L39:
	ldr	ip, [r4, #56]	@ LeastTick, <variable>.u32Tick
	cmp	ip, r3	@ LeastTick, LeastTick
	movcs	ip, r3	@ LeastTick, LeastTick
	movcc	r5, r2	@ LeastFsID, tmp171
.L38:
	add	r2, r2, #1	@ i, tmp171,
	add	r0, r4, #60	@ pstPhyFs, tmp172,
.L27:
	ldr	r3, [r0, #56]	@ LeastTick, <variable>.u32Tick
	add	r4, r0, #60	@ tmp172, pstPhyFs,
	cmp	r3, ip	@ LeastTick, LeastTick.648
	movcc	r5, r2	@ LeastFsID, i
	add	r2, r2, #1	@ tmp171, i,
	movcs	r3, ip	@ LeastTick, LeastTick.648
	cmp	r2, r1	@ tmp171, PhyNum
	bne	.L39	@,
.L26:
	mov	r0, r5	@, LeastFsID
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	FindLeastTickPhyFs, .-FindLeastTickPhyFs
	.align	2
	.global	FSP_GetLogicFs
	.type	FSP_GetLogicFs, %function
FSP_GetLogicFs:
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
	cmp	r1, #63	@ LogicFrameID,
	cmpls	r0, #15	@, InstID,
	bls	.L44	@,
.L41:
	mov	r0, #0	@ pstLogicFs,
	ldmfd	sp, {fp, sp, pc}	@
.L44:
	movw	r2, #:lower16:.LANCHOR0	@ tmp146,
	movt	r2, #:upper16:.LANCHOR0	@ tmp146,
	ldr	r3, [r2, r0, asl #2]	@ D.39817, s_pFspInst
	cmp	r3, #0	@ D.39817,
	addne	r1, r1, r1, asl #4	@, tmp149, LogicFrameID, LogicFrameID,
	addne	r0, r3, r1, asl #5	@, tmp151, D.39817, tmp149,
	addne	r0, r0, #96	@ pstLogicFs, tmp151,
	ldmnefd	sp, {fp, sp, pc}	@
	b	.L41	@
	.fnend
	.size	FSP_GetLogicFs, .-FSP_GetLogicFs
	.align	2
	.global	FSP_GetFsImagePtr
	.type	FSP_GetFsImagePtr, %function
FSP_GetFsImagePtr:
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
	cmp	r1, #63	@ LogicFrameID,
	cmpls	r0, #15	@, InstID,
	bls	.L49	@,
.L46:
	mov	r0, #0	@ D.39841,
	ldmfd	sp, {fp, sp, pc}	@
.L49:
	movw	r2, #:lower16:.LANCHOR0	@ tmp146,
	movt	r2, #:upper16:.LANCHOR0	@ tmp146,
	ldr	r3, [r2, r0, asl #2]	@ D.39836, s_pFspInst
	cmp	r3, #0	@ D.39836,
	addne	r1, r1, r1, asl #4	@, tmp149, LogicFrameID, LogicFrameID,
	addne	r0, r3, r1, asl #5	@, tmp151, D.39836, tmp149,
	addne	r0, r0, #104	@ D.39841, tmp151,
	ldmnefd	sp, {fp, sp, pc}	@
	b	.L46	@
	.fnend
	.size	FSP_GetFsImagePtr, .-FSP_GetFsImagePtr
	.align	2
	.global	FSP_GetDecPhyFs
	.type	FSP_GetDecPhyFs, %function
FSP_GetDecPhyFs:
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
	cmp	r1, #63	@ LogicFrameID,
	cmpls	r0, #15	@, InstID,
	bls	.L54	@,
.L51:
	mov	r0, #0	@ D.39860,
	ldmfd	sp, {fp, sp, pc}	@
.L54:
	movw	r3, #:lower16:.LANCHOR0	@ tmp146,
	movt	r3, #:upper16:.LANCHOR0	@ tmp146,
	ldr	r3, [r3, r0, asl #2]	@ D.39855, s_pFspInst
	cmp	r3, #0	@ D.39855,
	beq	.L51	@,
	add	r1, r1, r1, asl #4	@, tmp150, LogicFrameID, LogicFrameID,
	add	r2, r3, r1, asl #5	@, tmp152, D.39855, tmp150,
	ldr	r0, [r2, #616]	@ D.39860, <variable>.pstDecodeFs
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	FSP_GetDecPhyFs, .-FSP_GetDecPhyFs
	.align	2
	.global	FSP_GetDispPhyFs
	.type	FSP_GetDispPhyFs, %function
FSP_GetDispPhyFs:
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
	cmp	r1, #63	@ LogicFrameID,
	cmpls	r0, #15	@, InstID,
	bls	.L59	@,
.L56:
	mov	r0, #0	@ D.39879,
	ldmfd	sp, {fp, sp, pc}	@
.L59:
	movw	r3, #:lower16:.LANCHOR0	@ tmp146,
	movt	r3, #:upper16:.LANCHOR0	@ tmp146,
	ldr	r3, [r3, r0, asl #2]	@ D.39874, s_pFspInst
	cmp	r3, #0	@ D.39874,
	beq	.L56	@,
	add	r1, r1, r1, asl #4	@, tmp150, LogicFrameID, LogicFrameID,
	add	r2, r3, r1, asl #5	@, tmp152, D.39874, tmp150,
	ldr	r0, [r2, #620]	@ D.39879, <variable>.pstDispOutFs
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	FSP_GetDispPhyFs, .-FSP_GetDispPhyFs
	.align	2
	.global	FSP_GetPmvAddr
	.type	FSP_GetPmvAddr, %function
FSP_GetPmvAddr:
	.fnstart
.LFB1566:
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
	cmp	r1, #63	@ LogicFrameID,
	cmpls	r0, #15	@, InstID,
	bhi	.L61	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp146,
	movt	r3, #:upper16:.LANCHOR0	@ tmp146,
	ldr	r3, [r3, r0, asl #2]	@ D.39893, s_pFspInst
	cmp	r3, #0	@ D.39893,
	beq	.L61	@,
	add	r1, r1, r1, asl #4	@, tmp150, LogicFrameID, LogicFrameID,
	add	r2, r3, r1, asl #5	@, tmp152, D.39893, tmp150,
	ldr	r0, [r2, #628]	@ D.39898, <variable>.PmvAddr
	ldmfd	sp, {fp, sp, pc}	@
.L61:
	mov	r0, #0	@ D.39898,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	FSP_GetPmvAddr, .-FSP_GetPmvAddr
	.align	2
	.global	FSP_IsFsInVO
	.type	FSP_IsFsInVO, %function
FSP_IsFsInVO:
	.fnstart
.LFB1574:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp187,
	movt	r3, #:upper16:.LANCHOR0	@ tmp187,
	ldr	r4, [r3, r0, asl #2]	@ pstInst, s_pFspInst
	cmp	r4, #0	@ pstInst,
	beq	.L66	@,
	add	r0, r0, r0, asl #5	@, tmp148, InstID, InstID,
	add	r2, r3, r0, asl #3	@, tmp150, tmp187, tmp148,
	add	r2, r2, #64	@ tmp151, tmp150,
	ldrsh	ip, [r2, #2]	@ D.40134, <variable>.history
	cmn	ip, #1	@ D.40134,
	beq	.L66	@,
	ldrh	r2, [r2, #4]	@ i.788, <variable>.head
	cmp	r2, ip	@ i.788, D.40134
	beq	.L66	@,
	ldr	r4, [r4, #4]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r4, #1	@ <variable>.eFspInstState,
	beq	.L75	@,
.L66:
	mov	r0, #0	@ ret,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L75:
	and	r2, r2, #63	@ i, i.788,
	cmp	ip, r2	@ D.40134, i
	beq	.L66	@,
	mov	r4, r0, asl #1	@ tmp166, tmp148,
	add	r0, r4, r2	@ tmp167, tmp166, i
	add	r0, r3, r0, asl #2	@, tmp171, tmp187, tmp167,
	ldr	r0, [r0, #72]	@ tmp173, <variable>.Addr
	cmp	r0, r1	@ tmp173, DecPhyAddr
	bne	.L73	@,
	b	.L67	@
.L74:
	ldr	r0, [r0, #72]	@ tmp185, <variable>.Addr
	cmp	r0, r1	@ tmp185, DecPhyAddr
	beq	.L67	@,
.L73:
	add	r2, r2, #1	@ i.790, i,
	and	r2, r2, #63	@ i, i.790,
	add	r0, r4, r2	@ tmp179, tmp190, i
	cmp	ip, r2	@ D.40134, i
	add	r0, r3, r0, asl #2	@, tmp183, tmp187, tmp179,
	bne	.L74	@,
	b	.L66	@
.L67:
	mov	r0, #1	@ ret,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	FSP_IsFsInVO, .-FSP_IsFsInVO
	.align	2
	.global	FSP_GetNullLogicFs
	.type	FSP_GetNullLogicFs, %function
FSP_GetNullLogicFs:
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
	movw	r2, #:lower16:.LANCHOR0	@ tmp149,
	movt	r2, #:upper16:.LANCHOR0	@ tmp149,
	mov	r3, #63	@ i,
	ldr	r2, [r2, r0, asl #2]	@ pstInst, s_pFspInst
	add	r1, r2, #34304	@ ivtmp.824, pstInst,
	add	r1, r1, #65	@ ivtmp.824, ivtmp.824,
	b	.L79	@
.L77:
	ldrb	ip, [r1, #-544]	@ zero_extendqisi2	@ <variable>.s32DispState, <variable>.s32DispState
	sub	r3, r3, #1	@ i, i,
	sub	r1, r1, #1088	@ ivtmp.824, ivtmp.824,
	cmp	ip, #0	@ <variable>.s32DispState,
	beq	.L84	@,
	subs	r3, r3, #1	@ i, i,
	bcc	.L86	@,
.L79:
	ldrsb	r0, [r1, #0]	@ <variable>.s32DispState, <variable>.s32DispState
	cmp	r0, #0	@ <variable>.s32DispState,
	bne	.L77	@,
.L84:
	mov	r0, r3	@ ret_id, i
.L78:
	add	ip, r0, r0, asl #4	@, tmp156, ret_id, ret_id,
	mov	r3, #0	@ tmp160,
	add	r2, r2, ip, asl #5	@, tmp158, pstInst, tmp156,
	add	r1, r2, #616	@ tmp159, tmp158,
	str	r3, [r2, #616]	@ tmp160, <variable>.pstDecodeFs
	str	r3, [r1, #4]	@ tmp160, <variable>.pstDispOutFs
	ldmfd	sp, {fp, sp, pc}	@
.L86:
	mov	r0, #0	@ ret_id,
	b	.L78	@
	.fnend
	.size	FSP_GetNullLogicFs, .-FSP_GetNullLogicFs
	.align	2
	.global	FSP_GetTotalValidFsNum
	.type	FSP_GetTotalValidFsNum, %function
FSP_GetTotalValidFsNum:
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
	cmp	r0, #15	@ InstID,
	bhi	.L92	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r0, [r3, r0, asl #2]	@ D.40251, s_pFspInst
	cmp	r0, #0	@ D.40251,
	beq	.L93	@,
	ldrsb	r0, [r0, #9]	@ D.40249, <variable>.s8TotalValidFsNum
	ldmfd	sp, {fp, sp, pc}	@
.L92:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #3140	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40249,
	ldmfd	sp, {fp, sp, pc}	@
.L93:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #3141	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40249,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	FSP_GetTotalValidFsNum, .-FSP_GetTotalValidFsNum
	.align	2
	.global	FSP_GetFspType
	.type	FSP_GetFspType, %function
FSP_GetFspType:
	.fnstart
.LFB1578:
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
	bhi	.L100	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r0, [r3, r0, asl #2]	@ D.40236, s_pFspInst
	cmp	r0, #0	@ D.40236,
	beq	.L101	@,
	ldr	r1, [r0, #4]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r1, #1	@ <variable>.eFspInstState,
	moveq	r0, #0	@, D.40234,
	mvnne	r0, #0	@, D.40234,
	ldmfd	sp, {fp, sp, pc}	@
.L100:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #3116	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40234,
	ldmfd	sp, {fp, sp, pc}	@
.L101:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #3117	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40234,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	FSP_GetFspType, .-FSP_GetFspType
	.align	2
	.global	FSP_SwitchNotify
	.type	FSP_SwitchNotify, %function
FSP_SwitchNotify:
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
	cmp	r0, #15	@ InstID,
	ldmlsfd	sp, {fp, sp, pc}	@
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC1	@,
	movw	r2, #3087	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	FSP_SwitchNotify, .-FSP_SwitchNotify
	.align	2
	.global	FSP_ProcFspQue
	.type	FSP_ProcFspQue, %function
FSP_ProcFspQue:
	.fnstart
.LFB1575:
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
	cmp	r1, #0	@ p_image
	beq	.L124	@,
	cmp	r2, #1	@ Flag,
	bhi	.L125	@,
	beq	.L126	@,
	mov	r9, r0, asl #5	@ tmp307, InstID,
	movw	ip, #:lower16:.LANCHOR0	@ tmp309,
	add	r4, r9, r0	@ tmp195, tmp307, InstID
	movt	ip, #:upper16:.LANCHOR0	@ tmp309,
	add	r8, ip, r4, asl #3	@, tmp197, tmp309, tmp195,
	add	r8, r8, #64	@ tmp198, tmp197,
	ldrh	r2, [r8, #4]	@ prephitmp.918, <variable>.head
	ldrh	r5, [r8, #6]	@ <variable>.tail, <variable>.tail
	and	r3, r2, #63	@ i.934, prephitmp.918,
	cmp	r5, r3	@ <variable>.tail, i.934
	beq	.L110	@,
	mov	r4, r4, asl #1	@ tmp317, tmp195,
.L120:
	add	r2, r4, r3	@ tmp213, tmp317, i.934
	ldr	r5, [r1, #88]	@ <variable>.top_luma_phy_addr, <variable>.top_luma_phy_addr
	add	r2, ip, r2, asl #2	@, tmp217, tmp309, tmp213,
	ldr	r2, [r2, #72]	@ D.40178, <variable>.Addr
	cmp	r5, r2	@ <variable>.top_luma_phy_addr, D.40178
	moveq	sl, #1	@ SameImageFlag,
	beq	.L122	@,
	cmp	r2, #0	@ D.40178,
	addne	r3, r3, #1	@ i.933, i.934,
	bne	.L113	@,
	mov	sl, #2	@ SameImageFlag,
	b	.L122	@
.L127:
	mov	r3, r2	@ i.934, j
.L122:
	cmp	r3, #0	@ i.934,
	sub	r2, r3, #1	@ j, i.934,
	add	r5, r4, r3	@ tmp225, tmp317, i.934
	ldrh	r7, [r8, #4]	@ D.40174, <variable>.head
	moveq	r2, #63	@ j,
	add	r6, r4, r2	@ tmp236, tmp317, j
	add	r5, ip, r5, asl #2	@, tmp229, tmp309, tmp225,
	cmp	r7, r3	@ D.40174, i.934
	add	r6, ip, r6, asl #2	@, tmp240, tmp309, tmp236,
	ldr	r6, [r6, #72]	@ tmp242, <variable>.Addr
	str	r6, [r5, #72]	@ tmp242, <variable>.Addr
	bne	.L127	@,
	cmp	sl, #1	@ SameImageFlag,
	add	r3, r3, #1	@ i.933, i.934,
	and	r2, r3, #63	@ prephitmp.918, i.933,
	strh	r2, [r8, #4]	@ movhi	@ prephitmp.918, <variable>.head
	beq	.L110	@,
.L113:
	ldrh	r2, [r8, #6]	@ <variable>.tail, <variable>.tail
	and	r3, r3, #63	@ i.934, i.933,
	cmp	r2, r3	@ <variable>.tail, i.934
	bne	.L120	@,
	ldrh	r2, [r8, #4]	@ prephitmp.918, <variable>.head
.L110:
	add	r0, r9, r0	@ tmp282, tmp307, InstID
	add	ip, ip, r0, asl #3	@, tmp284, tmp309, tmp282,
	add	r3, ip, #64	@ tmp285, tmp284,
	ldrsh	r1, [r3, #2]	@ <variable>.history, <variable>.history
	cmp	r2, r1	@ prephitmp.918, <variable>.history
	mvneq	r2, #0	@ movhi	@,
	streqh	r2, [r3, #2]	@ movhi	@, <variable>.history
	moveq	r3, #0	@ tmp295,
	streqb	r3, [ip, #64]	@ tmp295, <variable>.SwitchFlag
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L125:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2961	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC4	@,
	mov	r0, #0	@,
	movt	r3, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L126:
	add	r0, r0, r0, asl #5	@, tmp154, InstID, InstID,
	movw	r3, #:lower16:.LANCHOR0	@ tmp149,
	movt	r3, #:upper16:.LANCHOR0	@ tmp149,
	ldr	ip, [r1, #88]	@ <variable>.top_luma_phy_addr, <variable>.top_luma_phy_addr
	add	r2, r3, r0, asl #3	@, tmp156, tmp149, tmp154,
	add	r2, r2, #64	@ tmp157, tmp156,
	ldrh	r1, [r2, #6]	@ <variable>.tail, <variable>.tail
	add	r0, r1, r0, asl #1	@, tmp163, <variable>.tail, tmp154,
	add	r1, r1, #1	@ tmp188, <variable>.tail,
	and	r1, r1, #63	@ tmp190, tmp188,
	strh	r1, [r2, #6]	@ movhi	@ tmp190, <variable>.tail
	add	r3, r3, r0, asl #2	@, tmp167, tmp149, tmp163,
	str	ip, [r3, #72]	@ <variable>.top_luma_phy_addr, <variable>.Addr
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L124:
	mov	r0, r1	@, p_image
	mov	r2, #2960	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC3	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	.fnend
	.size	FSP_ProcFspQue, .-FSP_ProcFspQue
	.align	2
	.global	FSP_SetQueSwitchFlag
	.type	FSP_SetQueSwitchFlag, %function
FSP_SetQueSwitchFlag:
	.fnstart
.LFB1573:
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
	bhi	.L132	@,
	add	r0, r0, r0, asl #5	@, tmp140, InstID, InstID,
	movw	r1, #:lower16:.LANCHOR0	@ tmp136,
	movt	r1, #:upper16:.LANCHOR0	@ tmp136,
	mov	r2, #1	@ tmp144,
	add	r3, r1, r0, asl #3	@, tmp142, tmp136, tmp140,
	strb	r2, [r3, #64]	@ tmp144, <variable>.SwitchFlag
	ldmfd	sp, {fp, sp, pc}	@
.L132:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2835	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	mov	r0, #0	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	FSP_SetQueSwitchFlag, .-FSP_SetQueSwitchFlag
	.align	2
	.global	FSP_GetQueSwitchFlag
	.type	FSP_GetQueSwitchFlag, %function
FSP_GetQueSwitchFlag:
	.fnstart
.LFB1572:
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
	bhi	.L137	@,
	add	r0, r0, r0, asl #5	@, tmp142, InstID, InstID,
	movw	r1, #:lower16:.LANCHOR0	@ tmp138,
	movt	r1, #:upper16:.LANCHOR0	@ tmp138,
	add	r3, r1, r0, asl #3	@, tmp144, tmp138, tmp142,
	ldrb	r0, [r3, #64]	@ zero_extendqisi2	@ D.40109, <variable>.SwitchFlag
	ldmfd	sp, {fp, sp, pc}	@
.L137:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2825	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mov	r0, #255	@ D.40109,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	FSP_GetQueSwitchFlag, .-FSP_GetQueSwitchFlag
	.align	2
	.global	FSP_PrintContext
	.type	FSP_PrintContext, %function
FSP_PrintContext:
	.fnstart
.LFB1571:
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
	cmp	r0, #15	@ InstID,
	bhi	.L161	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp151,
	movt	r3, #:upper16:.LANCHOR0	@ tmp151,
	ldr	r5, [r3, r0, asl #2]	@ D.40034, s_pFspInst
	cmp	r5, #0	@ D.40034,
	beq	.L162	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC5	@,
	movt	r1, #:upper16:.LC5	@,
	mov	r8, r5	@ ivtmp.1028, D.40034
	bl	dprint_vfmw	@
	ldr	r3, [r5, #4]	@, <variable>.eFspInstState
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC6	@,
	movw	r2, #:lower16:.LC7	@,
	movt	r1, #:upper16:.LC6	@,
	movt	r2, #:upper16:.LC7	@,
	mov	r6, r5	@ ivtmp.1062, D.40034
	bl	dprint_vfmw	@
	ldr	r3, [r5, #68]	@, <variable>.stInstCfg.s32DecFsWidth
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC6	@,
	movw	r2, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC6	@,
	movt	r2, #:upper16:.LC8	@,
	mov	r7, #1	@ ivtmp.1025,
	bl	dprint_vfmw	@
	mov	r0, #0	@,
	mov	r4, r0	@ ivtmp.1024,
	ldr	r3, [r5, #72]	@, <variable>.stInstCfg.s32DecFsHeight
	movw	r1, #:lower16:.LC6	@,
	movw	r2, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC6	@,
	movt	r2, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #84]	@, <variable>.stInstCfg.s32DispFsWidth
	mov	r0, r4	@, ivtmp.1024
	movw	r1, #:lower16:.LC6	@,
	movw	r2, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC6	@,
	movt	r2, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #88]	@, <variable>.stInstCfg.s32DispFsHeight
	mov	r0, r4	@, ivtmp.1024
	movw	r1, #:lower16:.LC6	@,
	movw	r2, #:lower16:.LC11	@,
	movt	r1, #:upper16:.LC6	@,
	movt	r2, #:upper16:.LC11	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r5, #61]	@, <variable>.stInstCfg.s32ExpectedDecFsNum
	mov	r0, r4	@, ivtmp.1024
	movw	r1, #:lower16:.LC6	@,
	movw	r2, #:lower16:.LC12	@,
	movt	r1, #:upper16:.LC6	@,
	movt	r2, #:upper16:.LC12	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r5, #63]	@, <variable>.stInstCfg.s32ExpectedDispFsNum
	mov	r0, r4	@, ivtmp.1024
	movw	r1, #:lower16:.LC6	@,
	movw	r2, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC6	@,
	movt	r2, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r5, #64]	@, <variable>.stInstCfg.s32ExpectedPmvNum
	mov	r0, r4	@, ivtmp.1024
	movw	r1, #:lower16:.LC6	@,
	movw	r2, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC6	@,
	movt	r2, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r5, #10]	@, <variable>.s32DecFsNum
	mov	r0, r4	@, ivtmp.1024
	movw	r1, #:lower16:.LC6	@,
	movw	r2, #:lower16:.LC15	@,
	movt	r1, #:upper16:.LC6	@,
	movt	r2, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r5, #11]	@, <variable>.s32DispFsNum
	mov	r0, r4	@, ivtmp.1024
	movw	r1, #:lower16:.LC6	@,
	movw	r2, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC6	@,
	movt	r2, #:upper16:.LC16	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r5, #13]	@, <variable>.s32PmvNum
	mov	r0, r4	@, ivtmp.1024
	movw	r1, #:lower16:.LC6	@,
	movw	r2, #:lower16:.LC17	@,
	movt	r1, #:upper16:.LC6	@,
	movt	r2, #:upper16:.LC17	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, ivtmp.1024
	movw	r1, #:lower16:.LC18	@,
	mov	r2, #64	@,
	movt	r1, #:upper16:.LC18	@,
	bl	dprint_vfmw	@
	b	.L142	@
.L165:
	ands	r0, r4, #7	@ tmp179, ivtmp.1024,
	beq	.L163	@,
	ldrsb	r2, [r6, #96]	@, <variable>.s32IsRef
	mov	r0, #0	@,
	ldrsb	r3, [r6, #97]	@, <variable>.s32DispState
	movw	r1, #:lower16:.LC19	@,
	movt	r1, #:upper16:.LC19	@,
	bl	dprint_vfmw	@
	cmp	r7, #63	@ ivtmp.1025,
	bgt	.L164	@,
.L145:
	add	r4, r4, #1	@ ivtmp.1024, ivtmp.1024,
	add	r7, r7, #1	@ ivtmp.1025, ivtmp.1025,
	add	r6, r6, #544	@ ivtmp.1062, ivtmp.1062,
.L142:
	cmp	r4, #0	@ ivtmp.1024,
	movw	r1, #:lower16:.LC19	@,
	mov	r0, r4	@, ivtmp.1024
	movt	r1, #:upper16:.LC19	@,
	bne	.L165	@,
	ldrsb	r2, [r6, #96]	@, <variable>.s32IsRef
	ldrsb	r3, [r6, #97]	@, <variable>.s32DispState
	bl	dprint_vfmw	@
	b	.L145	@
.L163:
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	bl	dprint_vfmw	@
	ldrsb	r2, [r6, #96]	@, <variable>.s32IsRef
	mov	r0, #0	@,
	ldrsb	r3, [r6, #97]	@, <variable>.s32DispState
	movw	r1, #:lower16:.LC19	@,
	movt	r1, #:upper16:.LC19	@,
	bl	dprint_vfmw	@
	cmp	r7, #63	@ ivtmp.1025,
	ble	.L145	@,
.L164:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC21	@,
	ldrsb	r2, [r5, #10]	@, <variable>.s32DecFsNum
	movt	r1, #:upper16:.LC21	@,
	bl	dprint_vfmw	@
	ldrsb	r0, [r5, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r0, #0	@ <variable>.s32DecFsNum,
	movgt	r4, #0	@ i,
	ble	.L146	@,
.L160:
	rsb	r3, r4, r4, asl #4	@, tmp191, i, i,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC19	@,
	movt	r1, #:upper16:.LC19	@,
	add	lr, r5, r3, asl #2	@, tmp193, D.40034, tmp191,
	add	r4, r4, #1	@ i, i,
	add	ip, lr, #34816	@ tmp194, tmp193,
	add	r2, ip, #152	@ tmp194, tmp194,
	ldrsb	r3, [r2, #6]	@, <variable>.DispState
	ldrsb	r2, [r2, #4]	@, <variable>.IsDecRef
	bl	dprint_vfmw	@
	ldrsb	r1, [r5, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r1, r4	@ <variable>.s32DecFsNum, i
	ble	.L146	@,
	ands	r0, r4, #7	@ tmp186, i,
	bne	.L160	@,
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	bl	dprint_vfmw	@
	b	.L160	@
.L146:
	ldrsb	r2, [r5, #11]	@, <variable>.s32DispFsNum
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	bl	dprint_vfmw	@
	ldrsb	r0, [r5, #11]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	cmp	r0, #0	@ <variable>.s32DispFsNum,
	movgt	r2, #0	@ i.1061,
	movgt	r4, r2	@ i.1049, i.1061
	ble	.L150	@,
.L151:
	rsb	r3, r2, r2, asl #4	@, tmp213, i.1061, i.1061,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC19	@,
	movt	r1, #:upper16:.LC19	@,
	add	lr, r5, r3, asl #2	@, tmp215, D.40034, tmp213,
	add	r4, r4, #1	@ i.1049, i.1049,
	add	ip, lr, #38656	@ tmp216, tmp215,
	add	r2, ip, #152	@ tmp216, tmp216,
	ldrsb	r3, [r2, #6]	@, <variable>.DispState
	ldrsb	r2, [r2, #4]	@, <variable>.IsDecRef
	bl	dprint_vfmw	@
	ldrsb	r1, [r5, #11]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	cmp	r1, r4	@ <variable>.s32DispFsNum, i.1049
	ble	.L150	@,
	ands	r0, r4, #7	@ tmp208, i.1049,
	movne	r2, r4	@ i.1061, i.1049
	bne	.L151	@
.L166:
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	bl	dprint_vfmw	@
	mov	r2, r4	@ i.1061, i.1049
	b	.L151	@
.L150:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC23	@,
	ldrsb	r2, [r5, #13]	@, <variable>.s32PmvNum
	movt	r1, #:upper16:.LC23	@,
	bl	dprint_vfmw	@
	ldrsb	r0, [r5, #13]	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	cmp	r0, #0	@ <variable>.s32PmvNum,
	movgt	r4, #0	@ i.1055,
	ble	.L154	@,
.L155:
	ldrsb	r2, [r8, #14]	@, <variable>.IsPmvInUse
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC24	@,
	movt	r1, #:upper16:.LC24	@,
	bl	dprint_vfmw	@
	ldrsb	r1, [r5, #13]	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	add	r4, r4, #1	@ i.1055, i.1055,
	add	r8, r8, #1	@ ivtmp.1028, ivtmp.1028,
	cmp	r1, r4	@ <variable>.s32PmvNum, i.1055
	ble	.L154	@,
	ands	r0, r4, #15	@ tmp230, i.1055,
	bne	.L155	@,
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	bl	dprint_vfmw	@
	b	.L155	@
.L154:
	movw	r1, #:lower16:.LC25	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC25	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L161:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2668	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	mov	r0, #0	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L162:
	mov	r0, r5	@, D.40034
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2669	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	FSP_PrintContext, .-FSP_PrintContext
	.align	2
	.global	FSP_GetLogicIdByPhyAddr
	.type	FSP_GetLogicIdByPhyAddr, %function
FSP_GetLogicIdByPhyAddr:
	.fnstart
.LFB1570:
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
	bhi	.L179	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp142,
	movt	r3, #:upper16:.LANCHOR0	@ tmp142,
	ldr	r3, [r3, r0, asl #2]	@ D.39999, s_pFspInst
	cmp	r3, #0	@ D.39999,
	movne	r0, #0	@ i,
	beq	.L180	@,
.L172:
	ldr	r2, [r3, #616]	@ D.40003, <variable>.pstDecodeFs
	add	ip, r3, #544	@ tmp148, ivtmp.1096,
	cmp	r2, #0	@ D.40003,
	beq	.L171	@,
	ldr	r2, [r2, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	r2, r1	@ <variable>.PhyAddr, PhyAddr
	ldmeqfd	sp, {fp, sp, pc}	@
.L171:
	ldr	r3, [r3, #1160]	@ D.40003, <variable>.pstDecodeFs
	add	r0, r0, #1	@ i, i,
	cmp	r3, #0	@ D.40003,
	mov	r2, r0	@ tmp147, i
	beq	.L175	@,
	ldr	r3, [r3, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	r3, r1	@ <variable>.PhyAddr, PhyAddr
	ldmeqfd	sp, {fp, sp, pc}	@
.L175:
	add	r0, r2, #1	@ i, tmp147,
	add	r3, ip, #544	@ ivtmp.1096, tmp148,
	cmp	r0, #64	@ i,
	bne	.L172	@,
	mvn	r0, #0	@ i,
	ldmfd	sp, {fp, sp, pc}	@
.L180:
	mov	r0, r3	@, D.39999
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2614	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ i,
	ldmfd	sp, {fp, sp, pc}	@
.L179:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2613	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ i,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	FSP_GetLogicIdByPhyAddr, .-FSP_GetLogicIdByPhyAddr
	.align	2
	.global	FSP_GetPmvAddrTab
	.type	FSP_GetPmvAddrTab, %function
FSP_GetPmvAddrTab:
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
	cmp	r0, #15	@ InstID,
	bhi	.L190	@,
	cmp	r2, #0	@ PmvAddrTab,
	beq	.L191	@,
	cmp	r1, #0	@ PmvNum,
	beq	.L192	@,
	movw	ip, #:lower16:.LANCHOR0	@ tmp146,
	movt	ip, #:upper16:.LANCHOR0	@ tmp146,
	ldr	r3, [ip, r0, asl #2]	@ tmp147, s_pFspInst
	cmp	r3, #0	@ tmp147,
	beq	.L193	@,
	mov	r3, #0	@ tmp150,
	str	r3, [r1, #0]	@ tmp150,* PmvNum
	ldr	ip, [ip, r0, asl #2]	@ pstInst, s_pFspInst
	ldrsb	r0, [ip, #13]	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	str	r0, [r1, #0]	@ <variable>.s32PmvNum,* PmvNum
	ldrsb	r1, [ip, #13]	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	cmp	r1, r3	@ <variable>.s32PmvNum,
	ldmlefd	sp, {fp, sp, pc}	@
	mov	r1, r3	@ i, ivtmp.1126
.L187:
	add	r0, ip, r3	@ tmp154, pstInst, ivtmp.1126
	add	r1, r1, #1	@ i, i,
	add	r0, r0, #42752	@ tmp156, tmp154,
	ldr	r0, [r0, #24]	@ tmp157, <variable>.PmvAddr
	str	r0, [r2, r3]	@ tmp157,* ivtmp.1126
	add	r3, r3, #4	@ ivtmp.1126, ivtmp.1126,
	ldrsb	r0, [ip, #13]	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	cmp	r0, r1	@ <variable>.s32PmvNum, i
	bgt	.L187	@,
	ldmfd	sp, {fp, sp, pc}	@
.L190:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2530	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	mov	r0, #0	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {fp, sp, pc}	@
.L191:
	mov	r0, r2	@, PmvAddrTab
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2531	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC26	@,
	movt	r3, #:upper16:.LC26	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {fp, sp, pc}	@
.L192:
	mov	r0, r1	@, PmvNum
	movw	r2, #2532	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC27	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {fp, sp, pc}	@
.L193:
	mov	r0, r3	@, tmp147
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2533	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	FSP_GetPmvAddrTab, .-FSP_GetPmvAddrTab
	.align	2
	.global	FSP_GetDecFsAddrTab
	.type	FSP_GetDecFsAddrTab, %function
FSP_GetDecFsAddrTab:
	.fnstart
.LFB1567:
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
	cmp	r0, #15	@ InstID,
	bhi	.L203	@,
	cmp	r2, #0	@ DecFsAddrTab,
	beq	.L204	@,
	cmp	r1, #0	@ DecFsNum,
	beq	.L205	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp153,
	movt	r4, #:upper16:.LANCHOR0	@ tmp153,
	ldr	ip, [r4, r0, asl #2]	@ tmp154, s_pFspInst
	cmp	ip, #0	@ tmp154,
	beq	.L206	@,
	mov	ip, #0	@ tmp158,
	str	ip, [r1, #0]	@ tmp158,* DecFsNum
	ldr	r5, [r4, r0, asl #2]	@ tmp160, s_pFspInst
	ldrsb	r5, [r5, #10]	@ D.39923, <variable>.s32DecFsNum
	cmp	r5, ip	@ D.39923,
	str	r5, [r1, #0]	@ D.39923,* DecFsNum
	ldr	r0, [r4, r0, asl #2]	@ temp.1172, s_pFspInst
	ldmlefd	sp, {r4, r5, fp, sp, pc}	@
	add	r0, r0, #34816	@ ivtmp.1161, temp.1172,
	mov	r4, ip	@ i, ivtmp.1165
	add	r0, r0, #168	@ ivtmp.1161, ivtmp.1161,
.L200:
	ldr	r5, [r0, #0]	@ <variable>.PhyAddr, <variable>.PhyAddr
	add	r4, r4, #1	@ i, i,
	str	r5, [r2, ip]	@ <variable>.PhyAddr,* ivtmp.1165
	ldr	r5, [r0, #4]	@ <variable>.LineNumAddr, <variable>.LineNumAddr
	add	r0, r0, #60	@ ivtmp.1161, ivtmp.1161,
	str	r5, [r3, ip]	@ <variable>.LineNumAddr,* ivtmp.1165
	add	ip, ip, #4	@ ivtmp.1165, ivtmp.1165,
	ldr	r5, [r1, #0]	@ tmp165,* DecFsNum
	cmp	r5, r4	@ tmp165, i
	bgt	.L200	@,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L203:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2466	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	mov	r0, #0	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L204:
	mov	r0, r2	@, DecFsAddrTab
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2467	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC28	@,
	movt	r3, #:upper16:.LC28	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L206:
	mov	r0, ip	@, tmp154
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2469	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L205:
	mov	r0, r1	@, DecFsNum
	movw	r2, #2468	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC29	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC29	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	FSP_GetDecFsAddrTab, .-FSP_GetDecFsAddrTab
	.align	2
	.global	FSP_GetStoreType
	.type	FSP_GetStoreType, %function
FSP_GetStoreType:
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
	cmp	r0, #15	@ InstID,
	bhi	.L214	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp141,
	movt	r3, #:upper16:.LANCHOR0	@ tmp141,
	ldr	r0, [r3, r0, asl #2]	@ D.39764, s_pFspInst
	cmp	r0, #0	@ D.39764,
	beq	.L215	@,
	cmp	r1, #0	@ ePhyFsType,
	bne	.L211	@,
	ldrsb	r1, [r0, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r1, r2	@ <variable>.s32DecFsNum, PhyFsID
	ble	.L212	@,
	rsb	r3, r2, r2, asl #4	@, tmp148, PhyFsID, PhyFsID,
	add	ip, r0, r3, asl #2	@, tmp150, D.39764, tmp148,
	add	r2, ip, #34816	@ tmp151, tmp150,
	add	r0, r2, #160	@ tmp151, tmp151,
	ldr	r0, [r0, #4]	@ eStoreType, <variable>.eStoreType
	ldmfd	sp, {fp, sp, pc}	@
.L211:
	cmp	r1, #1	@ ePhyFsType,
	beq	.L216	@,
.L212:
	mov	r0, #2	@ eStoreType,
	ldmfd	sp, {fp, sp, pc}	@
.L214:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2225	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ eStoreType,
	ldmfd	sp, {fp, sp, pc}	@
.L215:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2226	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ eStoreType,
	ldmfd	sp, {fp, sp, pc}	@
.L216:
	ldrsb	r1, [r0, #11]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	cmp	r2, r1	@ PhyFsID, <variable>.s32DispFsNum
	bge	.L212	@,
	rsb	r3, r2, r2, asl #4	@, tmp156, PhyFsID, PhyFsID,
	add	ip, r0, r3, asl #2	@, tmp158, D.39764, tmp156,
	add	r2, ip, #38656	@ tmp159, tmp158,
	add	r0, r2, #160	@ tmp159, tmp159,
	ldr	r0, [r0, #4]	@ eStoreType, <variable>.eStoreType
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	FSP_GetStoreType, .-FSP_GetStoreType
	.align	2
	.global	FSP_SetStoreType
	.type	FSP_SetStoreType, %function
FSP_SetStoreType:
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
	cmp	r0, #15	@ InstID,
	bhi	.L224	@,
	movw	ip, #:lower16:.LANCHOR0	@ tmp142,
	movt	ip, #:upper16:.LANCHOR0	@ tmp142,
	ldr	ip, [ip, r0, asl #2]	@ D.39734, s_pFspInst
	cmp	ip, #0	@ D.39734,
	beq	.L225	@,
	cmp	r1, #0	@ ePhyFsType,
	bne	.L221	@,
	ldrsb	r0, [ip, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r0, r2	@ <variable>.s32DecFsNum, PhyFsID
	ble	.L222	@,
	rsb	r2, r2, r2, asl #4	@, tmp149, PhyFsID, PhyFsID,
	mov	r0, r1	@ Ret, ePhyFsType
	add	ip, ip, r2, asl #2	@, tmp151, D.39734, tmp149,
	add	r2, ip, #34816	@ tmp152, tmp151,
	add	r1, r2, #160	@ tmp152, tmp152,
	str	r3, [r1, #4]	@ eStoreType, <variable>.eStoreType
	ldmfd	sp, {fp, sp, pc}	@
.L221:
	cmp	r1, #1	@ ePhyFsType,
	beq	.L226	@,
.L222:
	mvn	r0, #0	@ Ret,
	ldmfd	sp, {fp, sp, pc}	@
.L226:
	ldrsb	r0, [ip, #11]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	cmp	r2, r0	@ PhyFsID, <variable>.s32DispFsNum
	bge	.L222	@,
	rsb	r2, r2, r2, asl #4	@, tmp157, PhyFsID, PhyFsID,
	mov	r0, #0	@ Ret,
	add	r1, ip, r2, asl #2	@, tmp159, D.39734, tmp157,
	add	ip, r1, #38656	@ tmp160, tmp159,
	add	r1, ip, #160	@ tmp160, tmp160,
	str	r3, [r1, #4]	@ eStoreType, <variable>.eStoreType
	ldmfd	sp, {fp, sp, pc}	@
.L224:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2153	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ Ret,
	ldmfd	sp, {fp, sp, pc}	@
.L225:
	mov	r0, ip	@, D.39734
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2154	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ Ret,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	FSP_SetStoreType, .-FSP_SetStoreType
	.align	2
	.global	FSP_GetDisplay
	.type	FSP_GetDisplay, %function
FSP_GetDisplay:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r0, [r3, r0, asl #2]	@ D.39711, s_pFspInst
	cmp	r0, #0	@ D.39711,
	beq	.L231	@,
	add	r1, r1, r1, asl #4	@, tmp144, LogicFrameID, LogicFrameID,
	add	r0, r0, r1, asl #5	@, tmp146, D.39711, tmp144,
	ldrsb	r0, [r0, #97]	@ D.39715, <variable>.s32DispState
	ldmfd	sp, {fp, sp, pc}	@
.L231:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2126	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39715,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	FSP_GetDisplay, .-FSP_GetDisplay
	.align	2
	.global	FSP_GetRef
	.type	FSP_GetRef, %function
FSP_GetRef:
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
	cmp	r0, #15	@ InstID,
	bhi	.L238	@,
	cmp	r1, #63	@ LogicFrameID,
	bhi	.L239	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp143,
	movt	r3, #:upper16:.LANCHOR0	@ tmp143,
	ldr	r0, [r3, r0, asl #2]	@ D.39644, s_pFspInst
	cmp	r0, #0	@ D.39644,
	beq	.L240	@,
	add	r1, r1, r1, asl #4	@, tmp149, LogicFrameID, LogicFrameID,
	add	r0, r0, r1, asl #5	@, tmp151, D.39644, tmp149,
	ldrsb	r0, [r0, #96]	@ D.39639, <variable>.s32IsRef
	ldmfd	sp, {fp, sp, pc}	@
.L238:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2020	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC30	@,
	movt	r3, #:upper16:.LC30	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39639,
	ldmfd	sp, {fp, sp, pc}	@
.L239:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2021	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC31	@,
	movt	r3, #:upper16:.LC31	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39639,
	ldmfd	sp, {fp, sp, pc}	@
.L240:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2022	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC32	@,
	movt	r3, #:upper16:.LC32	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39639,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	FSP_GetRef, .-FSP_GetRef
	.align	2
	.global	FSP_SetRef
	.type	FSP_SetRef, %function
FSP_SetRef:
	.fnstart
.LFB1555:
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
	cmp	r0, #15	@ InstID,
	mov	r4, r1	@ LogicFrameID, LogicFrameID
	mov	r6, r2	@ IsRef, IsRef
	bhi	.L256	@,
	cmp	r1, #63	@ LogicFrameID,
	bhi	.L257	@,
	movw	r1, #:lower16:.LANCHOR0	@ tmp149,
	movt	r1, #:upper16:.LANCHOR0	@ tmp149,
	ldr	r5, [r1, r0, asl #2]	@ D.39561, s_pFspInst
	cmp	r5, #0	@ D.39561,
	beq	.L258	@,
	mov	r8, r4, asl #4	@ tmp312, LogicFrameID,
	uxtb	sl, r2	@ D.39569, IsRef
	add	r7, r8, r4	@ tmp155, tmp312, LogicFrameID
	add	r7, r5, r7, asl #5	@, tmp157, D.39561, tmp155,
	ldrsb	r3, [r7, #98]	@ <variable>.IsDummyFs, <variable>.IsDummyFs
	strb	sl, [r7, #96]	@ D.39569, <variable>.s32IsRef
	cmp	r3, #0	@ <variable>.IsDummyFs,
	ldmnefd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	ldr	r3, [r7, #616]	@ prephitmp.1285, <variable>.pstDecodeFs
	cmp	r3, #0	@ prephitmp.1285,
	beq	.L246	@,
	ldr	ip, [r3, #56]	@ <variable>.u32Tick, <variable>.u32Tick
	ldr	r1, [r7, #608]	@ <variable>.u32Tick, <variable>.u32Tick
	cmp	ip, r1	@ <variable>.u32Tick, <variable>.u32Tick
	beq	.L259	@,
.L246:
	add	r0, r8, r4	@ tmp207, tmp312, LogicFrameID
	add	r3, r5, r0, asl #5	@, tmp209, D.39561, tmp207,
	ldrb	r2, [r3, #100]	@ zero_extendqisi2	@ D.39589, <variable>.PmvIdc
	cmp	r2, #19	@ D.39589,
	bhi	.L249	@,
	cmp	r6, #1	@ IsRef,
	beq	.L260	@,
	cmp	r6, #0	@ IsRef,
	bne	.L251	@,
	add	r1, r3, #608	@ tmp240, tmp209,
	ldr	r0, [r1, #4]	@ <variable>.eLfsPmvState, <variable>.eLfsPmvState
	cmp	r0, #2	@ <variable>.eLfsPmvState,
	beq	.L261	@,
.L252:
	add	r2, r8, r4	@ tmp269, tmp312, LogicFrameID
	add	r3, r5, r2, asl #5	@, tmp271, D.39561, tmp269,
	ldr	r3, [r3, #620]	@ D.39612, <variable>.pstDispOutFs
	cmp	r3, #0	@ D.39612,
	beq	.L253	@,
	ldrsb	r1, [r3, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #1	@ <variable>.DispState,
	beq	.L262	@,
.L254:
	add	r2, r8, r4	@ tmp286, tmp312, LogicFrameID
	ldr	r0, [r3, #56]	@ <variable>.u32Tick, <variable>.u32Tick
	add	r2, r5, r2, asl #5	@, tmp288, D.39561, tmp286,
	ldr	r1, [r2, #608]	@ <variable>.u32Tick, <variable>.u32Tick
	cmp	r0, r1	@ <variable>.u32Tick, <variable>.u32Tick
	beq	.L263	@,
.L253:
	cmp	r6, #0	@ IsRef,
	addeq	r4, r8, r4	@ tmp307, tmp312, LogicFrameID
	addeq	r5, r5, r4, asl #5	@, tmp309, D.39561, tmp307,
	streq	r6, [r5, #616]	@ IsRef, <variable>.pstDecodeFs
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L256:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1874	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	mov	r0, #0	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L260:
	add	r3, r3, #608	@ tmp218, tmp209,
	ldr	ip, [r3, #4]	@ <variable>.eLfsPmvState, <variable>.eLfsPmvState
	cmp	ip, #1	@ <variable>.eLfsPmvState,
	beq	.L264	@,
.L251:
	add	r3, r8, r4	@ tmp279, tmp312, LogicFrameID
	add	ip, r5, r3, asl #5	@, tmp281, D.39561, tmp279,
	ldr	r3, [ip, #620]	@ D.39612, <variable>.pstDispOutFs
	cmp	r3, #0	@ D.39612,
	bne	.L254	@,
	b	.L253	@
.L257:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1875	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC33	@,
	mov	r0, #0	@,
	movt	r3, #:upper16:.LC33	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L249:
	sxtb	r2, r2	@, D.39589
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC35	@,
	movt	r1, #:upper16:.LC35	@,
	bl	dprint_vfmw	@
	cmp	r6, #0	@ IsRef,
	beq	.L252	@,
	b	.L251	@
.L259:
	ldrsb	r1, [r3, #0]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r1, r2	@ <variable>.IsDecRef, IsRef
	beq	.L247	@,
	movw	ip, #:lower16:.LANCHOR1	@ tmp185,
	movt	ip, #:upper16:.LANCHOR1	@ tmp185,
	ldr	r1, [ip, #-3896]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	r1, #0	@ g_IsFrameIntfValid,
	beq	.L247	@,
	ldr	ip, [ip, #-3880]	@ D.40317, g_FspFrameIntf.SetFrameRef
	ldr	r1, [r3, #12]	@ D.39587, <variable>.PhyAddr
	cmp	ip, #0	@ D.40317,
	beq	.L265	@,
	blx	ip	@ D.40317
	ldr	r3, [r7, #616]	@ prephitmp.1285, <variable>.pstDecodeFs
.L247:
	strb	sl, [r3, #0]	@ D.39569, <variable>.IsDecRef
	b	.L246	@
.L263:
	cmp	r6, #1	@ IsRef,
	bne	.L253	@,
	ldrsb	ip, [r3, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	ip, #1	@ <variable>.DispState,
	moveq	ip, #2	@ tmp293,
	streqb	ip, [r3, #2]	@ tmp293, <variable>.DispState
	streqb	ip, [r2, #97]	@ tmp293, <variable>.s32DispState
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L262:
	mov	r0, #0	@ tmp274,
	strb	r0, [r3, #2]	@ tmp274, <variable>.DispState
	b	.L251	@
.L261:
	sxtab	ip, r5, r2	@ tmp244, D.39561, D.39589
	strb	r6, [ip, #14]	@ IsRef, <variable>.IsPmvInUse
	str	r6, [r3, #628]	@ IsRef, <variable>.PmvAddr
	str	r6, [r1, #4]	@ IsRef, <variable>.eLfsPmvState
	b	.L252	@
.L258:
	mov	r0, r5	@, D.39561
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1876	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L264:
	sxtab	r1, r5, r2	@ tmp222, D.39561, D.39589
	mov	r2, #2	@ tmp233,
	strb	r6, [r1, #14]	@ IsRef, <variable>.IsPmvInUse
	str	r2, [r3, #4]	@ tmp233, <variable>.eLfsPmvState
	b	.L251	@
.L265:
	mov	r0, ip	@, D.40317
	movw	r1, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC34	@,
	bl	dprint_vfmw	@
	ldr	r3, [r7, #616]	@ prephitmp.1285, <variable>.pstDecodeFs
	strb	sl, [r3, #0]	@ D.39569, <variable>.IsDecRef
	b	.L246	@
	.fnend
	.size	FSP_SetRef, .-FSP_SetRef
	.align	2
	.global	FSP_RemovePmv
	.type	FSP_RemovePmv, %function
FSP_RemovePmv:
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
	cmp	r0, #15	@ InstID,
	bhi	.L273	@,
	cmp	r1, #63	@ LogicFrameID,
	bhi	.L274	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp142,
	movt	r3, #:upper16:.LANCHOR0	@ tmp142,
	ldr	r0, [r3, r0, asl #2]	@ D.39532, s_pFspInst
	cmp	r0, #0	@ D.39532,
	beq	.L275	@,
	mov	r3, r1, asl #4	@ tmp175, LogicFrameID,
	add	r2, r3, r1	@ tmp148, tmp175, LogicFrameID
	add	r2, r0, r2, asl #5	@, tmp150, D.39532, tmp148,
	ldr	ip, [r2, #612]	@ <variable>.eLfsPmvState, <variable>.eLfsPmvState
	cmp	ip, #2	@ <variable>.eLfsPmvState,
	ldmnefd	sp, {fp, sp, pc}	@
	ldrb	r2, [r2, #100]	@ zero_extendqisi2	@ D.39540, <variable>.PmvIdc
	cmp	r2, #19	@ D.39540,
	sxtabls	r2, r0, r2	@ tmp163, D.39532, D.39540
	addls	r2, r2, #8	@ tmp164, tmp163,
	movls	ip, #0	@ tmp165,
	strlsb	ip, [r2, #6]	@ tmp165, <variable>.IsPmvInUse
	add	r2, r3, r1	@ tmp170, tmp175, LogicFrameID
	mov	r1, #0	@ tmp174,
	add	ip, r0, r2, asl #5	@, tmp172, D.39532, tmp170,
	add	r0, ip, #608	@ tmp173, tmp172,
	str	r1, [r0, #4]	@ tmp174, <variable>.eLfsPmvState
	ldmfd	sp, {fp, sp, pc}	@
.L273:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1827	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	mov	r0, #0	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {fp, sp, pc}	@
.L274:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1828	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC33	@,
	mov	r0, #0	@,
	movt	r3, #:upper16:.LC33	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {fp, sp, pc}	@
.L275:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1829	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	FSP_RemovePmv, .-FSP_RemovePmv
	.align	2
	.global	FSP_FirstFsCheck
	.type	FSP_FirstFsCheck, %function
FSP_FirstFsCheck:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp185,
	movt	r3, #:upper16:.LANCHOR0	@ tmp185,
	ldr	ip, [r3, r0, asl #2]	@ D.39258, s_pFspInst
	cmp	ip, #0	@ D.39258,
	beq	.L285	@,
	add	r0, r0, r0, asl #5	@, tmp153, InstID, InstID,
	add	r2, r3, r0, asl #3	@, tmp155, tmp185, tmp153,
	add	r2, r2, #64	@ tmp156, tmp155,
	ldrsh	r4, [r2, #2]	@ D.39265, <variable>.history
	cmn	r4, #1	@ D.39265,
	beq	.L279	@,
	ldrh	r2, [r2, #4]	@ i, <variable>.head
	cmp	r2, r4	@ i, D.39265
	beq	.L279	@,
	ldr	r5, [ip, #4]	@ <variable>.eFspInstState, <variable>.eFspInstState
	movw	r6, #35044	@ tmp166,
	ldr	r7, [ip, r6]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	r5, #1	@ <variable>.eFspInstState,
	movw	r5, #34984	@ tmp167,
	ldr	r6, [ip, r5]	@ <variable>.PhyAddr, <variable>.PhyAddr
	ldr	r5, [ip, #52]	@ PreSlotLen, <variable>.stPreInfo.s32PreDecSlotLen
	rsb	r7, r6, r7	@ SlotLen, <variable>.PhyAddr, <variable>.PhyAddr
	beq	.L286	@,
.L280:
	mov	r0, #0	@ ret,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L279:
	mov	r0, #0	@ ret,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L286:
	and	r2, r2, #63	@ i.1353, i,
	cmp	r4, r2	@ D.39265, i.1353
	beq	.L280	@,
	mov	r6, r0, asl #1	@ tmp188, tmp153,
	add	r7, r1, r7	@ tmp189, DecPhyAddr, SlotLen
.L284:
	add	r0, r6, r2	@ tmp176, tmp188, i.1353
	add	r2, r2, #1	@ i.1354, i.1353,
	and	r2, r2, #63	@ i.1353, i.1354,
	add	ip, r3, r0, asl #2	@, tmp180, tmp185, tmp176,
	ldr	ip, [ip, #72]	@ D.39277, <variable>.Addr
	add	r0, ip, r5	@ tmp182, D.39277, PreSlotLen
	cmp	r0, r1	@ tmp182, DecPhyAddr
	blt	.L281	@,
	cmp	ip, r7	@ D.39277, tmp189
	ble	.L287	@,
.L281:
	cmp	r4, r2	@ D.39265, i.1353
	bne	.L284	@,
	mov	r0, #0	@ ret,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L287:
	mov	r0, #1	@ ret,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L285:
	mov	r0, ip	@, D.39258
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1449	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	FSP_FirstFsCheck, .-FSP_FirstFsCheck
	.align	2
	.global	FSP_GetDecodePmvTable
	.type	FSP_GetDecodePmvTable, %function
FSP_GetDecodePmvTable:
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
	cmp	r0, #15	@ InstID,
	bhi	.L297	@,
	cmp	r1, #0	@ PhyAddr,
	beq	.L298	@,
	cmp	r2, #0	@ pPmvNum,
	beq	.L299	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp145,
	movt	r3, #:upper16:.LANCHOR0	@ tmp145,
	ldr	r0, [r3, r0, asl #2]	@ D.39147, s_pFspInst
	cmp	r0, #0	@ D.39147,
	beq	.L300	@,
	ldrsb	ip, [r0, #13]	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	str	ip, [r2, #0]	@ <variable>.s32PmvNum,* pPmvNum
	ldrsb	r2, [r0, #13]	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	cmp	r2, #0	@ <variable>.s32PmvNum,
	ldmlefd	sp, {fp, sp, pc}	@
	mov	r3, #0	@ ivtmp.1383,
	mov	r2, r3	@ i, ivtmp.1383
.L294:
	add	ip, r0, r3	@ tmp150, D.39147, ivtmp.1383
	add	r2, r2, #1	@ i, i,
	add	ip, ip, #42752	@ tmp152, tmp150,
	ldr	ip, [ip, #24]	@ tmp153, <variable>.PmvAddr
	str	ip, [r1, r3]	@ tmp153,* ivtmp.1383
	add	r3, r3, #4	@ ivtmp.1383, ivtmp.1383,
	ldrsb	ip, [r0, #13]	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	cmp	ip, r2	@ <variable>.s32PmvNum, i
	bgt	.L294	@,
	ldmfd	sp, {fp, sp, pc}	@
.L297:
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #1072	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	mov	r0, #0	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {fp, sp, pc}	@
.L298:
	mov	r0, r1	@, PhyAddr
	movw	r2, #1073	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC36	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC36	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {fp, sp, pc}	@
.L299:
	mov	r0, r2	@, pPmvNum
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1074	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC37	@,
	movt	r3, #:upper16:.LC37	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {fp, sp, pc}	@
.L300:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1075	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	FSP_GetDecodePmvTable, .-FSP_GetDecodePmvTable
	.align	2
	.global	FSP_GetDecodeFrameTable
	.type	FSP_GetDecodeFrameTable, %function
FSP_GetDecodeFrameTable:
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
	cmp	r0, #15	@ InstID,
	bhi	.L310	@,
	cmp	r1, #0	@ PhyAddr,
	beq	.L311	@,
	cmp	r2, #0	@ pFsNum,
	beq	.L312	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp147,
	movt	r3, #:upper16:.LANCHOR0	@ tmp147,
	ldr	r0, [r3, r0, asl #2]	@ D.39117, s_pFspInst
	cmp	r0, #0	@ D.39117,
	beq	.L313	@,
	ldrsb	ip, [r0, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	str	ip, [r2, #0]	@ <variable>.s32DecFsNum,* pFsNum
	ldrsb	r2, [r0, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r2, #0	@ <variable>.s32DecFsNum,
	ldmlefd	sp, {fp, sp, pc}	@
	add	r2, r0, #34816	@ ivtmp.1418, D.39117,
	mov	r3, #0	@ i,
	add	r2, r2, #168	@ ivtmp.1418, ivtmp.1418,
.L307:
	ldr	ip, [r2], #60	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	ip, [r1, r3, asl #2]	@ <variable>.PhyAddr,* PhyAddr
	add	r3, r3, #1	@ i, i,
	ldrsb	ip, [r0, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	ip, r3	@ <variable>.s32DecFsNum, i
	bgt	.L307	@,
	ldmfd	sp, {fp, sp, pc}	@
.L310:
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #1016	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	mov	r0, #0	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {fp, sp, pc}	@
.L311:
	mov	r0, r1	@, PhyAddr
	movw	r2, #1017	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC36	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC36	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {fp, sp, pc}	@
.L313:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1019	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {fp, sp, pc}	@
.L312:
	mov	r0, r2	@, pFsNum
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1018	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC37	@,
	movt	r3, #:upper16:.LC37	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	FSP_GetDecodeFrameTable, .-FSP_GetDecodeFrameTable
	.align	2
	.global	FSP_DisableInstance
	.type	FSP_DisableInstance, %function
FSP_DisableInstance:
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
	cmp	r0, #15	@ InstID,
	bhi	.L319	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r0, [r3, r0, asl #2]	@ D.38716, s_pFspInst
	cmp	r0, #0	@ D.38716,
	beq	.L320	@,
	ldr	r1, [r0, #4]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r1, #1	@ <variable>.eFspInstState,
	moveq	r1, #0	@ tmp141,
	streq	r1, [r0, #4]	@ tmp141, <variable>.eFspInstState
	ldmfd	sp, {fp, sp, pc}	@
.L319:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #333	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	mov	r0, #0	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {fp, sp, pc}	@
.L320:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #334	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	FSP_DisableInstance, .-FSP_DisableInstance
	.align	2
	.global	FSP_Exit
	.type	FSP_Exit, %function
FSP_Exit:
	.fnstart
.LFB1536:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp181,
	movt	r4, #:upper16:.LANCHOR0	@ tmp181,
	ldr	r3, [r4, #0]	@ temp.1477, s_pFspInst
	cmp	r3, #0	@ temp.1477,
	beq	.L322	@,
	ldr	r3, [r3, #4]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r3, #0	@ <variable>.eFspInstState,
	bne	.L339	@,
.L322:
	ldr	r3, [r4, #4]	@ temp.1479, s_pFspInst
	cmp	r3, #0	@ temp.1479,
	beq	.L323	@,
	ldr	r0, [r3, #4]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r0, #0	@ <variable>.eFspInstState,
	bne	.L340	@,
.L323:
	ldr	r3, [r4, #8]	@ temp.1481, s_pFspInst
	cmp	r3, #0	@ temp.1481,
	beq	.L324	@,
	ldr	r1, [r3, #4]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r1, #0	@ <variable>.eFspInstState,
	bne	.L341	@,
.L324:
	ldr	r3, [r4, #12]	@ temp.1483, s_pFspInst
	cmp	r3, #0	@ temp.1483,
	beq	.L325	@,
	ldr	r2, [r3, #4]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r2, #0	@ <variable>.eFspInstState,
	bne	.L342	@,
.L325:
	ldr	r3, [r4, #16]	@ temp.1485, s_pFspInst
	cmp	r3, #0	@ temp.1485,
	beq	.L326	@,
	ldr	ip, [r3, #4]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	ip, #0	@ <variable>.eFspInstState,
	bne	.L343	@,
.L326:
	ldr	r3, [r4, #20]	@ temp.1487, s_pFspInst
	cmp	r3, #0	@ temp.1487,
	beq	.L327	@,
	ldr	r3, [r3, #4]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r3, #0	@ <variable>.eFspInstState,
	bne	.L344	@,
.L327:
	ldr	r3, [r4, #24]	@ temp.1489, s_pFspInst
	cmp	r3, #0	@ temp.1489,
	beq	.L328	@,
	ldr	r0, [r3, #4]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r0, #0	@ <variable>.eFspInstState,
	bne	.L345	@,
.L328:
	ldr	r3, [r4, #28]	@ temp.1491, s_pFspInst
	cmp	r3, #0	@ temp.1491,
	beq	.L329	@,
	ldr	r1, [r3, #4]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r1, #0	@ <variable>.eFspInstState,
	bne	.L346	@,
.L329:
	ldr	r3, [r4, #32]	@ temp.1493, s_pFspInst
	cmp	r3, #0	@ temp.1493,
	beq	.L330	@,
	ldr	r2, [r3, #4]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r2, #0	@ <variable>.eFspInstState,
	bne	.L347	@,
.L330:
	ldr	r3, [r4, #36]	@ temp.1495, s_pFspInst
	cmp	r3, #0	@ temp.1495,
	beq	.L331	@,
	ldr	ip, [r3, #4]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	ip, #0	@ <variable>.eFspInstState,
	bne	.L348	@,
.L331:
	ldr	r3, [r4, #40]	@ temp.1497, s_pFspInst
	cmp	r3, #0	@ temp.1497,
	beq	.L332	@,
	ldr	r3, [r3, #4]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r3, #0	@ <variable>.eFspInstState,
	bne	.L349	@,
.L332:
	ldr	r3, [r4, #44]	@ temp.1499, s_pFspInst
	cmp	r3, #0	@ temp.1499,
	beq	.L333	@,
	ldr	r0, [r3, #4]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r0, #0	@ <variable>.eFspInstState,
	bne	.L350	@,
.L333:
	ldr	r3, [r4, #48]	@ temp.1501, s_pFspInst
	cmp	r3, #0	@ temp.1501,
	beq	.L334	@,
	ldr	r1, [r3, #4]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r1, #0	@ <variable>.eFspInstState,
	bne	.L351	@,
.L334:
	ldr	r3, [r4, #52]	@ temp.1503, s_pFspInst
	cmp	r3, #0	@ temp.1503,
	beq	.L335	@,
	ldr	r2, [r3, #4]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r2, #0	@ <variable>.eFspInstState,
	bne	.L352	@,
.L335:
	ldr	r3, [r4, #56]	@ temp.1505, s_pFspInst
	cmp	r3, #0	@ temp.1505,
	beq	.L336	@,
	ldr	ip, [r3, #4]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	ip, #0	@ <variable>.eFspInstState,
	bne	.L353	@,
.L336:
	ldr	r3, [r4, #60]	@ D.38640, s_pFspInst
	cmp	r3, #0	@ D.38640,
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
.L354:
	ldr	r3, [r3, #4]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r3, #0	@ <variable>.eFspInstState,
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	mov	r0, #15	@,
	bl	FSP_DisableInstance	@
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L353:
	mov	r0, #14	@,
	bl	FSP_DisableInstance	@
	ldr	r3, [r4, #60]	@ D.38640, s_pFspInst
	cmp	r3, #0	@ D.38640,
	bne	.L354	@,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L352:
	mov	r0, #13	@,
	bl	FSP_DisableInstance	@
	b	.L335	@
.L351:
	mov	r0, #12	@,
	bl	FSP_DisableInstance	@
	b	.L334	@
.L350:
	mov	r0, #11	@,
	bl	FSP_DisableInstance	@
	b	.L333	@
.L349:
	mov	r0, #10	@,
	bl	FSP_DisableInstance	@
	b	.L332	@
.L348:
	mov	r0, #9	@,
	bl	FSP_DisableInstance	@
	b	.L331	@
.L347:
	mov	r0, #8	@,
	bl	FSP_DisableInstance	@
	b	.L330	@
.L346:
	mov	r0, #7	@,
	bl	FSP_DisableInstance	@
	b	.L329	@
.L345:
	mov	r0, #6	@,
	bl	FSP_DisableInstance	@
	b	.L328	@
.L344:
	mov	r0, #5	@,
	bl	FSP_DisableInstance	@
	b	.L327	@
.L343:
	mov	r0, #4	@,
	bl	FSP_DisableInstance	@
	b	.L326	@
.L342:
	mov	r0, #3	@,
	bl	FSP_DisableInstance	@
	b	.L325	@
.L341:
	mov	r0, #2	@,
	bl	FSP_DisableInstance	@
	b	.L324	@
.L340:
	mov	r0, #1	@,
	bl	FSP_DisableInstance	@
	b	.L323	@
.L339:
	mov	r0, #0	@,
	bl	FSP_DisableInstance	@
	b	.L322	@
	.fnend
	.size	FSP_Exit, .-FSP_Exit
	.align	2
	.global	FSP_ConfigAttribute
	.type	FSP_ConfigAttribute, %function
FSP_ConfigAttribute:
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
	cmp	r0, #15	@ InstID,
	bhi	.L360	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r3, [r3, r0, asl #2]	@ D.38657, s_pFspInst
	ldr	r2, [r3, #4]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r2, #1	@ <variable>.eFspInstState,
	bne	.L361	@,
	ldrb	ip, [r1, #0]	@ zero_extendqisi2	@ <variable>.s8LowBufEnable, <variable>.s8LowBufEnable
	mov	r0, #0	@ D.38655,
	strb	ip, [r3, #1]	@ <variable>.s8LowBufEnable, <variable>.s8LowBufEnable
	ldmfd	sp, {fp, sp, pc}	@
.L361:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #268	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC38	@,
	movt	r3, #:upper16:.LC38	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38655,
	ldmfd	sp, {fp, sp, pc}	@
.L360:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #267	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38655,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	FSP_ConfigAttribute, .-FSP_ConfigAttribute
	.align	2
	.global	FSP_UdateInfo
	.type	FSP_UdateInfo, %function
FSP_UdateInfo:
	.fnstart
.LFB1528:
	@ args = 0, pretend = 0, frame = 944
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #968
	sub	sp, sp, #968	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r0, #15	@ InstID,
	mov	r5, r1	@ Width, Width
	mov	r4, r2	@ Height, Height
	bhi	.L371	@,
	movw	r2, #:lower16:g_vdm_hal_fun_ptr	@ tmp153,
	movt	r2, #:upper16:g_vdm_hal_fun_ptr	@ tmp153,
	movw	r3, #:lower16:.LANCHOR0	@ tmp152,
	movt	r3, #:upper16:.LANCHOR0	@ tmp152,
	ldr	ip, [r2, #48]	@ D.38533, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	ldr	r6, [r3, r0, asl #2]	@ pstInst, s_pFspInst
	cmp	ip, #0	@ D.38533,
	beq	.L365	@,
	mov	r1, #10	@ tmp154,
	str	r0, [sp, #12]	@ InstID,
	str	r1, [sp, #4]	@ tmp154,
	mov	lr, #0	@ tmp156,
	sub	r0, fp, #968	@ tmp158,,
	str	r1, [sp, #0]	@ tmp154,
	str	r0, [sp, #16]	@ tmp158,
	mvn	r1, #-2147483648	@,
	str	lr, [sp, #8]	@ tmp156,
	mov	r0, #1024	@,
	mov	r2, r5	@, Width
	mov	r3, r4	@, Height
	blx	ip	@ D.38533
	cmp	r0, #0	@,
	bne	.L365	@,
	add	ip, r6, #38656	@ ivtmp.1569, pstInst,
	add	r7, r6, #34816	@ ivtmp.1561, pstInst,
	add	r2, ip, #176	@ ivtmp.1569, ivtmp.1569,
	add	r3, r7, #176	@ ivtmp.1561, ivtmp.1561,
	mov	ip, r2	@ D.41400, ivtmp.1569
.L367:
	ldr	r7, [fp, #-968]	@ MemArrange.VahbStride, MemArrange.VahbStride
	add	r0, r3, #60	@ tmp194, ivtmp.1561,
	str	r5, [r3, #16]	@ Width, <variable>.FsWidth
	add	r1, r2, #60	@ tmp195, ivtmp.1569,
	str	r4, [r3, #20]	@ Height, <variable>.FsHeight
	str	r7, [r3, #0]	@ MemArrange.VahbStride, <variable>.Stride
	ldr	lr, [fp, #-432]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	lr, [r3, #24]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	ldr	r7, [fp, #-428]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	r7, [r3, #28]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	ldr	lr, [fp, #-424]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	str	lr, [r3, #32]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	ldr	r7, [fp, #-968]	@ MemArrange.VahbStride, MemArrange.VahbStride
	str	r5, [r2, #16]	@ Width, <variable>.FsWidth
	str	r4, [r2, #20]	@ Height, <variable>.FsHeight
	str	r7, [r2, #0]	@ MemArrange.VahbStride, <variable>.Stride
	ldr	lr, [fp, #-432]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	lr, [r2, #24]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	ldr	r7, [fp, #-428]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	r7, [r2, #28]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	ldr	lr, [fp, #-424]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	str	lr, [r2, #32]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	ldr	r7, [fp, #-968]	@ MemArrange.VahbStride, MemArrange.VahbStride
	str	r5, [r0, #16]	@ Width, <variable>.FsWidth
	str	r4, [r0, #20]	@ Height, <variable>.FsHeight
	str	r7, [r3, #60]	@ MemArrange.VahbStride, <variable>.Stride
	add	r3, r3, #120	@ ivtmp.1561, ivtmp.1561,
	ldr	lr, [fp, #-432]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	cmp	r3, ip	@ ivtmp.1561, D.41400
	str	lr, [r0, #24]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	ldr	r7, [fp, #-428]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	r7, [r0, #28]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	ldr	r7, [fp, #-424]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	str	r7, [r0, #32]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	ldr	lr, [fp, #-968]	@ MemArrange.VahbStride, MemArrange.VahbStride
	str	r5, [r1, #16]	@ Width, <variable>.FsWidth
	str	lr, [r2, #60]	@ MemArrange.VahbStride, <variable>.Stride
	add	r2, r2, #120	@ ivtmp.1569, ivtmp.1569,
	str	r4, [r1, #20]	@ Height, <variable>.FsHeight
	ldr	r0, [fp, #-432]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	r0, [r1, #24]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	ldr	lr, [fp, #-428]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	lr, [r1, #28]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	ldr	r0, [fp, #-424]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	str	r0, [r1, #32]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	bne	.L367	@,
	ldr	lr, [fp, #-968]	@ MemArrange.VahbStride, MemArrange.VahbStride
	movw	r2, #42688	@ tmp173,
	movw	r3, #42672	@ tmp171,
	movw	r1, #42692	@ tmp174,
	str	r5, [r6, r2]	@ Width, <variable>.FsWidth
	movw	ip, #42696	@ tmp175,
	str	lr, [r6, r3]	@ MemArrange.VahbStride, <variable>.Stride
	movw	r2, #42700	@ tmp177,
	str	r4, [r6, r1]	@ Height, <variable>.FsHeight
	movw	r3, #42704	@ tmp179,
	ldr	r0, [fp, #-432]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	r0, [r6, ip]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	movw	ip, #42772	@ tmp181,
	ldr	lr, [fp, #-428]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	mov	r0, #0	@ D.38530,
	str	lr, [r6, r2]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	movw	lr, #34948	@ tmp185,
	ldr	r1, [fp, #-424]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	str	r1, [r6, r3]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	movw	r1, #34952	@ tmp186,
	ldr	r2, [fp, #-36]	@ MemArrange.HafPmvOffset, MemArrange.HafPmvOffset
	movw	r3, #34932	@ tmp183,
	str	r2, [r6, ip]	@ MemArrange.HafPmvOffset, <variable>.s32HalfPmvOffset
	movw	r2, #34956	@ tmp187,
	ldr	ip, [fp, #-968]	@ MemArrange.VahbStride, MemArrange.VahbStride
	str	r4, [r6, r1]	@ Height, <variable>.stDummyPhyFs.FsHeight
	movw	r1, #34960	@ tmp189,
	str	r5, [r6, lr]	@ Width, <variable>.stDummyPhyFs.FsWidth
	str	ip, [r6, r3]	@ MemArrange.VahbStride, <variable>.stDummyPhyFs.Stride
	movw	r3, #34964	@ tmp191,
	ldr	lr, [fp, #-432]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	lr, [r6, r2]	@ MemArrange.ChromOffset, <variable>.stDummyPhyFs.ChromOffset
	ldr	ip, [fp, #-428]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	ip, [r6, r1]	@ MemArrange.LumaPixelOffset, <variable>.stDummyPhyFs.LumaPixelOffset
	ldr	r2, [fp, #-424]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	str	r2, [r6, r3]	@ MemArrange.ChromaPixelOffset, <variable>.stDummyPhyFs.ChromaPixelOffset
.L364:
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L371:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #106	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38530,
	b	.L364	@
.L365:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC39	@,
	movt	r1, #:upper16:.LC39	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38530,
	b	.L364	@
	.fnend
	.size	FSP_UdateInfo, .-FSP_UdateInfo
	.align	2
	.global	FSP_GetInstInfo
	.type	FSP_GetInstInfo, %function
FSP_GetInstInfo:
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
	movw	r2, #:lower16:.LANCHOR0	@ tmp136,
	movt	r2, #:upper16:.LANCHOR0	@ tmp136,
	mov	r3, r1	@ pFspInstInfo, pFspInstInfo
	ldr	ip, [r2, r0, asl #2]	@ D.39969, s_pFspInst
	cmp	ip, #0	@ D.39969,
	beq	.L376	@,
	ldrb	r4, [ip, #10]	@ zero_extendqisi2	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	movw	lr, #35044	@ tmp141,
	mov	r0, r1	@ tmp154, pFspInstInfo
	add	r1, ip, #34816	@, D.39969,
	mov	r2, #3840	@,
	add	r1, r1, #156	@,,
	strb	r4, [r3, #1]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	ldr	r4, [ip, lr]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	lr, #34984	@ tmp142,
	ldr	lr, [ip, lr]	@ <variable>.PhyAddr, <variable>.PhyAddr
	rsb	lr, lr, r4	@ tmp145, <variable>.PhyAddr, <variable>.PhyAddr
	str	lr, [r3, #3848]	@ tmp145, <variable>.s32DecFsSize
	ldrb	lr, [ip, #11]	@ zero_extendqisi2	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	strb	lr, [r3, #2]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	ldrb	lr, [ip, #12]	@ zero_extendqisi2	@ <variable>.s32TfFsNum, <variable>.s32TfFsNum
	strb	lr, [r3, #3]	@ <variable>.s32TfFsNum, <variable>.s32TfFsNum
	ldrb	lr, [ip, #0]	@ zero_extendqisi2	@ <variable>.s32InstID, <variable>.s32InstID
	strb	lr, [r3, #4]	@ <variable>.s32InstID, <variable>.s32InstID
	ldrb	r3, [ip, #13]	@ zero_extendqisi2	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	strb	r3, [r0], #8	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	bl	memcpy	@
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L376:
	mov	r0, ip	@, D.39969
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2565	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	FSP_GetInstInfo, .-FSP_GetInstInfo
	.align	2
	.global	FSP_SetDisplay
	.type	FSP_SetDisplay, %function
FSP_SetDisplay:
	.fnstart
.LFB1557:
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
	cmp	r0, #15	@ InstID,
	mov	r5, r0	@ InstID, InstID
	mov	r4, r1	@ LogicFrameID, LogicFrameID
	mov	sl, r2	@ IsWaitDisp, IsWaitDisp
	bhi	.L392	@,
	cmp	r1, #63	@ LogicFrameID,
	bhi	.L393	@,
	movw	r6, #:lower16:.LANCHOR0	@ tmp151,
	movt	r6, #:upper16:.LANCHOR0	@ tmp151,
	ldr	r0, [r6, r0, asl #2]	@ tmp152, s_pFspInst
	cmp	r0, #0	@ tmp152,
	beq	.L394	@,
	mov	r7, r1, asl #4	@ tmp281, LogicFrameID,
	ldr	r0, .L398	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r6, [r6, r5, asl #2]	@ pstInst, s_pFspInst
	add	r2, r7, r4	@ tmp164, tmp281, LogicFrameID
	rsbs	r8, sl, #1	@ D.39672, IsWaitDisp
	movcc	r8, #0	@ D.39672
	movw	r3, #:lower16:.LANCHOR1	@ tmp155,
	movt	r3, #:upper16:.LANCHOR1	@ tmp155,
	add	r2, r6, r2, asl #5	@, tmp166, pstInst, tmp164,
	add	r1, r2, #96	@ tmp167, tmp166,
	ldrsb	r0, [r1, #2]	@ <variable>.IsDummyFs, <variable>.IsDummyFs
	cmp	r0, #0	@ <variable>.IsDummyFs,
	cmpeq	sl, #0	@, IsWaitDisp,
	beq	.L395	@,
	cmp	r8, #0	@ D.39672,
	moveq	r3, #3	@ iftmp.521,
	bne	.L383	@,
.L385:
	add	r4, r7, r4	@ tmp196, tmp281, LogicFrameID
	add	r6, r6, r4, asl #5	@, tmp198, pstInst, tmp196,
	add	r1, r6, #96	@ tmp199, tmp198,
	ldrsb	r0, [r1, #2]	@ <variable>.IsDummyFs, <variable>.IsDummyFs
	strb	r3, [r1, #1]	@ iftmp.521, <variable>.s32DispState
	cmp	r0, #0	@ <variable>.IsDummyFs,
	bne	.L390	@,
	add	lr, r6, #616	@ tmp215, tmp198,
	ldr	ip, [lr, #4]	@ temp.1638, <variable>.pstDispOutFs
	cmp	ip, #0	@ temp.1638,
	beq	.L390	@,
	ldr	r2, [r6, #608]	@ D.39695, <variable>.u32Tick
	ldr	r3, [ip, #56]	@ D.39694, <variable>.u32Tick
	cmp	r3, r2	@ D.39694, D.39695
	bne	.L396	@,
	cmp	r8, #0	@ D.39672,
	strneb	r0, [r1, #1]	@ <variable>.IsDummyFs, <variable>.s32DispState
	strneb	r0, [ip, #2]	@ <variable>.IsDummyFs, <variable>.DispState
	moveq	r3, #3	@ tmp264,
	strne	r0, [lr, #4]	@ <variable>.IsDummyFs, <variable>.pstDispOutFs
	streqb	r3, [r1, #1]	@ tmp264, <variable>.s32DispState
	streqb	r3, [ip, #2]	@ tmp264, <variable>.DispState
.L390:
	ldr	r0, .L398	@,
	bl	OSAL_SpinUnLockIRQ	@
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L395:
	ldr	r2, [r2, #620]	@ D.39676, <variable>.pstDispOutFs
	cmp	r2, #0	@ D.39676,
	beq	.L383	@,
	ldrsb	r1, [r1, #1]	@ <variable>.s32DispState, <variable>.s32DispState
	cmp	r1, #0	@ <variable>.s32DispState,
	beq	.L383	@,
	ldr	ip, [r3, #-3896]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	ip, #0	@ g_IsFrameIntfValid,
	beq	.L383	@,
	ldr	r3, [r3, #-3884]	@ D.40326, g_FspFrameIntf.ReleaseFrame
	ldr	r1, [r2, #12]	@ D.39685, <variable>.PhyAddr
	cmp	r3, #0	@ D.40326,
	beq	.L397	@,
	mov	r0, r5	@, InstID
	blx	r3	@ D.40326
.L383:
	mov	r3, #0	@ iftmp.521,
	b	.L385	@
.L392:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2047	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	mov	r0, #0	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L393:
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #2048	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC33	@,
	mov	r0, #0	@,
	movt	r3, #:upper16:.LC33	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L396:
	movw	r1, #:lower16:.LC41	@,
	movt	r1, #:upper16:.LC41	@,
	bl	dprint_vfmw	@
	ldr	r0, .L398	@,
	bl	OSAL_SpinUnLockIRQ	@
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L394:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2049	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L397:
	mov	r0, r3	@, D.40326
	movw	r1, #:lower16:.LC40	@,
	movt	r1, #:upper16:.LC40	@,
	bl	dprint_vfmw	@
	mov	r3, #0	@ iftmp.521,
	b	.L385	@
.L399:
	.align	2
.L398:
	.word	.LANCHOR1-3876
	.fnend
	.size	FSP_SetDisplay, .-FSP_SetDisplay
	.align	2
	.global	FSP_ClearLogicFs
	.type	FSP_ClearLogicFs, %function
FSP_ClearLogicFs:
	.fnstart
.LFB1561:
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
	cmp	r1, #63	@ LogicFrameID,
	cmpls	r0, #15	@, InstID,
	mov	r4, r0	@ InstID, InstID
	mov	r5, r1	@ LogicFrameID, LogicFrameID
	ldmhifd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	movw	r6, #:lower16:.LANCHOR0	@ tmp144,
	movt	r6, #:upper16:.LANCHOR0	@ tmp144,
	ldr	r3, [r6, r0, asl #2]	@ tmp145, s_pFspInst
	cmp	r3, #0	@ tmp145,
	ldmeqfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	mov	r2, #0	@,
	bl	FSP_SetRef	@
	ldr	ip, [r6, r4, asl #2]	@ tmp147, s_pFspInst
	add	r2, r5, r5, asl #4	@, tmp151, LogicFrameID, LogicFrameID,
	add	r1, ip, r2, asl #5	@, tmp153, tmp147, tmp151,
	ldrsb	r0, [r1, #97]	@ <variable>.s32DispState, <variable>.s32DispState
	cmp	r0, #3	@ <variable>.s32DispState,
	ldmeqfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	mov	r0, r4	@, InstID
	mov	r1, r5	@, LogicFrameID
	mov	r2, #0	@,
	bl	FSP_SetDisplay	@
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	FSP_ClearLogicFs, .-FSP_ClearLogicFs
	.align	2
	.global	FSP_IsFsLeak
	.type	FSP_IsFsLeak, %function
FSP_IsFsLeak:
	.fnstart
.LFB1550:
	@ args = 0, pretend = 0, frame = 16
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp143,
	movt	r3, #:upper16:.LANCHOR0	@ tmp143,
	mov	r5, r0	@ InstID, InstID
	ldr	r2, [r3, r0, asl #2]	@ pstInst, s_pFspInst
	cmp	r2, #0	@ pstInst,
	beq	.L423	@,
	ldrsb	r4, [r2, #10]	@ TotalFsNum, <variable>.s32DecFsNum
	cmp	r4, #0	@ TotalFsNum,
	ble	.L406	@,
	add	r2, r2, #34816	@ ivtmp.1689, pstInst,
	mov	r3, #0	@ i,
	sub	ip, r4, #1	@ tmp159, TotalFsNum,
	ldrsb	r1, [r2, #156]!	@ <variable>.IsDecRef, <variable>.IsDecRef
	and	r0, ip, #1	@ tmp161, tmp159,
	cmp	r1, r3	@ <variable>.IsDecRef,
	beq	.L424	@,
.L413:
	mov	r3, #1	@ i,
	cmp	r4, r3	@ TotalFsNum, i
	add	r2, r2, #60	@ ivtmp.1689, ivtmp.1689,
	ble	.L406	@,
	cmp	r0, #0	@ tmp161,
	beq	.L409	@,
	ldrsb	r0, [r2, #0]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r0, #0	@ <variable>.IsDecRef,
	bne	.L415	@,
	ldrsb	r1, [r2, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #0	@ <variable>.DispState,
	beq	.L408	@,
.L415:
	add	r3, r3, #1	@ i, i,
	add	r2, r2, #60	@ ivtmp.1689, ivtmp.1689,
	cmp	r4, r3	@ TotalFsNum, i
	ble	.L406	@,
.L409:
	ldrsb	r0, [r2, #0]	@ <variable>.IsDecRef, <variable>.IsDecRef
	add	r1, r2, #60	@ tmp163, ivtmp.1689,
	cmp	r0, #0	@ <variable>.IsDecRef,
	bne	.L407	@,
	ldrsb	ip, [r2, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	ip, #0	@ <variable>.DispState,
	beq	.L408	@,
.L407:
	ldrsb	r2, [r2, #60]	@ <variable>.IsDecRef, <variable>.IsDecRef
	add	r3, r3, #1	@ i, i,
	cmp	r2, #0	@ <variable>.IsDecRef,
	mov	r2, r3	@ tmp162, i
	bne	.L418	@,
	ldrsb	ip, [r1, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	ip, #0	@ <variable>.DispState,
	beq	.L408	@,
.L418:
	add	r3, r2, #1	@ i, tmp162,
	add	r2, r1, #60	@ ivtmp.1689, tmp163,
	cmp	r4, r3	@ TotalFsNum, i
	bgt	.L409	@,
.L406:
	sub	r1, fp, #28	@ tmp151,,
	mov	r6, #0	@ tmp148,
	mov	r0, r5	@, InstID
	sub	r2, fp, #40	@,,
	str	r6, [r1, #-4]!	@ tmp148, RefNum
	sub	r3, fp, #36	@,,
	str	r6, [fp, #-36]	@ tmp148, NewNum
	str	r6, [fp, #-40]	@ tmp148, ReadNum
	bl	VCTRL_GetChanImgNum	@
	ldr	r2, [fp, #-32]	@ RefNum.496, RefNum
	ldr	r3, [fp, #-40]	@ ReadNum.495, ReadNum
	ldr	ip, [fp, #-36]	@ NewNum.494, NewNum
	add	r1, r2, r3	@ tmp154, RefNum.496, ReadNum.495
	add	r0, r1, #2	@ tmp155, tmp154,
	add	r1, r0, ip	@ tmp156, tmp155, NewNum.494
	cmp	r4, r1	@ TotalFsNum, tmp156
	bgt	.L425	@,
.L410:
	mov	r0, #0	@ D.39212,
.L405:
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L424:
	ldrsb	ip, [r2, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	ip, #0	@ <variable>.DispState,
	bne	.L413	@,
.L408:
	cmp	r4, r3	@ TotalFsNum, i
	bgt	.L410	@,
	b	.L406	@
.L425:
	mov	r0, r6	@, tmp148
	movw	r1, #:lower16:.LC43	@,
	movt	r1, #:upper16:.LC43	@,
	str	ip, [sp, #0]	@ NewNum.494,
	str	r4, [sp, #4]	@ TotalFsNum,
	bl	dprint_vfmw	@
	mov	r0, r5	@, InstID
	bl	FSP_PrintContext	@
	mov	r0, #1	@ D.39212,
	b	.L405	@
.L423:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC42	@,
	movt	r1, #:upper16:.LC42	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39212,
	b	.L405	@
	.fnend
	.size	FSP_IsFsLeak, .-FSP_IsFsLeak
	.align	2
	.global	FSP_IsNewFsAvalible
	.type	FSP_IsNewFsAvalible, %function
FSP_IsNewFsAvalible:
	.fnstart
.LFB1549:
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
	cmp	r0, #15	@ InstID,
	mov	r6, r0	@ InstID, InstID
	bhi	.L450	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp146,
	movt	r3, #:upper16:.LANCHOR0	@ tmp146,
	ldr	r5, [r3, r0, asl #2]	@ D.39173, s_pFspInst
	cmp	r5, #0	@ D.39173,
	beq	.L451	@,
	movw	r3, #:lower16:.LANCHOR1	@ tmp150,
	movt	r3, #:upper16:.LANCHOR1	@ tmp150,
	ldr	r2, [r3, #-3896]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	r2, #0	@ g_IsFrameIntfValid,
	beq	.L430	@,
	ldr	r4, [r3, #-3892]	@ D.40334, g_FspFrameIntf.IsFrameAvalible
	cmp	r4, #0	@ D.40334,
	beq	.L452	@,
	blx	r4	@ D.40334
	cmp	r0, #0	@,
	bne	.L432	@,
.L430:
	ldrb	r0, [r5, #10]	@ zero_extendqisi2	@ D.39182, <variable>.s32DecFsNum
	cmp	r0, #0	@ D.39182,
	beq	.L433	@,
	sxtb	r0, r0	@ D.39191, D.39182
	cmp	r0, #0	@ D.39191,
	ble	.L434	@,
	add	r5, r5, #34816	@ ivtmp.1718, D.39173,
	sub	r3, r0, #1	@ tmp158, D.39191,
	and	r1, r3, #1	@ tmp160, tmp158,
	mov	r3, #0	@ i,
	ldrsb	ip, [r5, #156]!	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	ip, r3	@ <variable>.IsDecRef,
	bne	.L440	@,
	ldrsb	r2, [r5, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	r2, #0	@ <variable>.DispState,
	beq	.L436	@,
.L440:
	mov	r3, #1	@ i,
	cmp	r3, r0	@ i, D.39191
	add	r5, r5, #60	@ ivtmp.1718, ivtmp.1718,
	bge	.L434	@,
	cmp	r1, #0	@ tmp160,
	beq	.L437	@,
	ldrsb	ip, [r5, #0]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	ip, #0	@ <variable>.IsDecRef,
	bne	.L442	@,
	ldrsb	r1, [r5, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #0	@ <variable>.DispState,
	beq	.L436	@,
.L442:
	add	r3, r3, #1	@ i, i,
	add	r5, r5, #60	@ ivtmp.1718, ivtmp.1718,
	cmp	r3, r0	@ i, D.39191
	bge	.L434	@,
.L437:
	ldrsb	r1, [r5, #0]	@ <variable>.IsDecRef, <variable>.IsDecRef
	add	r2, r5, #60	@ tmp162, ivtmp.1718,
	cmp	r1, #0	@ <variable>.IsDecRef,
	bne	.L435	@,
	ldrsb	ip, [r5, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	ip, #0	@ <variable>.DispState,
	beq	.L436	@,
.L435:
	ldrsb	r1, [r5, #60]	@ <variable>.IsDecRef, <variable>.IsDecRef
	add	r3, r3, #1	@ i, i,
	cmp	r1, #0	@ <variable>.IsDecRef,
	mov	r1, r3	@ tmp161, i
	bne	.L445	@,
	ldrsb	ip, [r2, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	ip, #0	@ <variable>.DispState,
	beq	.L436	@,
.L445:
	add	r3, r1, #1	@ i, tmp161,
	add	r5, r2, #60	@ ivtmp.1718, tmp162,
	cmp	r3, r0	@ i, D.39191
	blt	.L437	@,
.L434:
	mov	r0, r6	@, InstID
	bl	FSP_IsFsLeak	@
	cmp	r0, #0	@,
	mvnne	r0, #0	@ D.39171,
	ldmnefd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L432:
	mov	r0, #0	@ D.39171,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L436:
	cmp	r3, r0	@ i, D.39191
	bge	.L434	@,
.L433:
	mov	r0, #1	@ D.39171,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L452:
	mov	r0, r4	@, D.40334
	movw	r1, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC34	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.39171, D.40334
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L450:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1116	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39171,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L451:
	mov	r0, r5	@, D.39173
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1117	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39171,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	FSP_IsNewFsAvalible, .-FSP_IsNewFsAvalible
	.align	2
	.global	FSP_EmptyInstance
	.type	FSP_EmptyInstance, %function
FSP_EmptyInstance:
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
	cmp	r0, #15	@ InstID,
	mov	sl, r0	@ InstID, InstID
	bhi	.L481	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp156,
	movt	r3, #:upper16:.LANCHOR0	@ tmp156,
	ldr	r8, [r3, r0, asl #2]	@ D.38776, s_pFspInst
	cmp	r8, #0	@ D.38776,
	beq	.L482	@,
	add	r0, r8, #96	@, D.38776,
	mov	r1, #34816	@,
	bl	__memzero	@
	ldrsb	r0, [r8, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r0, #0	@ <variable>.s32DecFsNum,
	ble	.L457	@,
	movw	r7, #:lower16:.LANCHOR1	@ tmp192,
	movt	r7, #:upper16:.LANCHOR1	@ tmp192,
	add	r4, r8, #34816	@ ivtmp.1765, D.38776,
	mov	r5, #0	@ i,
	add	r4, r4, #212	@ ivtmp.1765, ivtmp.1765,
	mov	r9, r7	@ tmp193, tmp192
	mov	r6, r5	@ tmp195, i
	b	.L462	@
.L460:
	mov	r0, sl	@, InstID
	mov	r2, #0	@,
	blx	r3	@ D.40345
.L459:
	ldrsb	r1, [r4, #-54]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #0	@ <variable>.DispState,
	beq	.L458	@,
	ldr	r3, [r7, #-3884]	@ D.40351, g_FspFrameIntf.ReleaseFrame
	ldr	r1, [r4, #-44]	@ temp.1767, <variable>.PhyAddr
	cmp	r3, #0	@ D.40351,
	beq	.L483	@,
	mov	r0, sl	@, InstID
	blx	r3	@ D.40351
.L458:
	strb	r6, [r4, #-56]	@ tmp195, <variable>.IsDecRef
	add	r5, r5, #1	@ i, i,
	strb	r6, [r4, #-54]	@ tmp195, <variable>.DispState
	str	r6, [r4], #60	@ tmp195, <variable>.u32Tick
	ldrsb	lr, [r8, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	lr, r5	@ <variable>.s32DecFsNum, i
	ble	.L457	@,
.L462:
	ldr	r1, [r4, #-44]	@ D.38785, <variable>.PhyAddr
	cmp	r1, #0	@ D.38785,
	beq	.L458	@,
	ldr	r2, [r7, #-3896]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	r2, #0	@ g_IsFrameIntfValid,
	beq	.L458	@,
	ldrsb	ip, [r4, #-56]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	ip, #0	@ <variable>.IsDecRef,
	beq	.L459	@,
	ldr	r3, [r9, #-3880]	@ D.40345, g_FspFrameIntf.SetFrameRef
	cmp	r3, #0	@ D.40345,
	bne	.L460	@,
	mov	r0, r3	@, D.40345
	movw	r1, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC34	@,
	bl	dprint_vfmw	@
	b	.L459	@
.L483:
	mov	r0, r3	@, D.40351
	movw	r1, #:lower16:.LC40	@,
	movt	r1, #:upper16:.LC40	@,
	add	r5, r5, #1	@ i, i,
	bl	dprint_vfmw	@
	strb	r6, [r4, #-56]	@ tmp195, <variable>.IsDecRef
	strb	r6, [r4, #-54]	@ tmp195, <variable>.DispState
	str	r6, [r4], #60	@ tmp195, <variable>.u32Tick
	ldrsb	lr, [r8, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	lr, r5	@ <variable>.s32DecFsNum, i
	bgt	.L462	@,
.L457:
	ldrsb	ip, [r8, #11]	@ D.38800, <variable>.s32DispFsNum
	cmp	ip, #0	@ D.38800,
	ble	.L463	@,
	add	r4, r8, #38656	@ tmp178, D.38776,
	cmp	ip, #1	@ D.38800,
	add	r1, r4, #212	@ ivtmp.1757, tmp178,
	sub	r3, ip, #1	@ tmp202, D.38800,
	and	r5, r3, #1	@ tmp204, tmp202,
	mov	r0, #1	@ i.1769,
	mov	r3, #0	@ tmp191,
	add	r2, r4, #272	@ ivtmp.1757, tmp178,
	str	r3, [r1, #0]	@ tmp191, <variable>.u32Tick
	strb	r3, [r1, #-56]	@ tmp191, <variable>.IsDecRef
	strb	r3, [r1, #-54]	@ tmp191, <variable>.DispState
	ble	.L463	@,
	cmp	r5, #0	@ tmp204,
	beq	.L464	@,
	mov	r0, #2	@ i.1769,
	cmp	ip, r0	@ D.38800, i.1769
	str	r3, [r2, #0]	@ tmp191, <variable>.u32Tick
	strb	r3, [r2, #-56]	@ tmp191, <variable>.IsDecRef
	strb	r3, [r2, #-54]	@ tmp191, <variable>.DispState
	add	r2, r4, #332	@ ivtmp.1757, tmp178,
	ble	.L463	@,
.L464:
	add	r0, r0, #2	@ i.1769, i.1769,
	mov	lr, r2	@ tmp206, ivtmp.1757
	cmp	ip, r0	@ D.38800, i.1769
	str	r3, [lr], #60	@ tmp191, <variable>.u32Tick
	strb	r3, [r2, #-56]	@ tmp191, <variable>.IsDecRef
	strb	r3, [r2, #-54]	@ tmp191, <variable>.DispState
	str	r3, [r2, #60]	@ tmp191, <variable>.u32Tick
	add	r2, r2, #120	@ ivtmp.1757, ivtmp.1757,
	strb	r3, [lr, #-54]	@ tmp191, <variable>.DispState
	strb	r3, [lr, #-56]	@ tmp191, <variable>.IsDecRef
	bgt	.L464	@,
.L463:
	ldrsb	ip, [r8, #13]	@ D.38802, <variable>.s32PmvNum
	cmp	ip, #0	@ D.38802,
	ble	.L465	@,
	cmp	ip, #1	@ D.38802,
	sub	r0, ip, #1	@ tmp197, D.38802,
	and	r1, r0, #1	@ tmp199, tmp197,
	mov	r2, #1	@ i.1770,
	mov	r0, #0	@ tmp190,
	add	r3, r8, r2	@ ivtmp.1750, D.38776,
	strb	r0, [r8, #14]	@ tmp190, <variable>.IsPmvInUse
	ble	.L465	@,
	cmp	r1, #0	@ tmp199,
	beq	.L466	@,
	mov	r2, #2	@ i.1770,
	cmp	ip, r2	@ D.38802, i.1770
	strb	r0, [r3, #14]	@ tmp190, <variable>.IsPmvInUse
	add	r3, r3, #1	@ ivtmp.1750, ivtmp.1750,
	ble	.L465	@,
.L466:
	add	r2, r2, #2	@ i.1770, i.1770,
	add	r1, r3, #1	@ tmp201, ivtmp.1750,
	cmp	ip, r2	@ D.38802, i.1770
	strb	r0, [r3, #14]	@ tmp190, <variable>.IsPmvInUse
	strb	r0, [r1, #14]	@ tmp190, <variable>.IsPmvInUse
	add	r3, r1, #1	@ ivtmp.1750, tmp201,
	bgt	.L466	@,
.L465:
	mov	r0, #0	@ tmp187,
	str	r0, [r8, #36]	@ tmp187, <variable>.u32InstTick
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L481:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #438	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38774,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L482:
	mov	r0, r8	@, D.38776
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #439	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38774,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	.fnend
	.size	FSP_EmptyInstance, .-FSP_EmptyInstance
	.align	2
	.global	FSP_EnableInstance
	.type	FSP_EnableInstance, %function
FSP_EnableInstance:
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
	cmp	r0, #15	@ InstID,
	bhi	.L490	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r4, [r3, r0, asl #2]	@ D.38696, s_pFspInst
	cmp	r4, #0	@ D.38696,
	beq	.L491	@,
	ldr	r5, [r4, #4]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r5, #0	@ <variable>.eFspInstState,
	mvnne	r0, #0	@ D.38694,
	ldmnefd	sp, {r4, r5, fp, sp, pc}	@
	mov	r0, r4	@, D.38696
	movw	r1, #42864	@,
	bl	__memzero	@
	movw	r2, #42856	@ tmp144,
	mov	r1, #1	@ tmp143,
	mov	r0, r5	@ D.38694, <variable>.eFspInstState
	str	r5, [r4, r2]	@ <variable>.eFspInstState, <variable>.eFspPartitionState
	str	r1, [r4, #4]	@ tmp143, <variable>.eFspInstState
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L491:
	mov	r0, r4	@, D.38696
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #313	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38694,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L490:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #312	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38694,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	FSP_EnableInstance, .-FSP_EnableInstance
	.align	2
	.global	FSP_ClearContext
	.type	FSP_ClearContext, %function
FSP_ClearContext:
	.fnstart
.LFB1538:
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
	subs	r4, r0, #0	@ pFspInst, pFspInst
	beq	.L496	@,
	add	r5, r4, #40	@ tmp142, pFspInst,
	ldrb	r8, [r4, #0]	@ zero_extendqisi2	@ s8TmpInstID, <variable>.s32InstID
	ldrb	sl, [r4, #1]	@ zero_extendqisi2	@ s8TmpLowBufEnable, <variable>.s8LowBufEnable
	sub	r6, fp, #52	@ tmp141,,
	ldmia	r5, {r0, r1, r2, r3}	@ tmp142,,,,
	ldr	r7, [r4, #4]	@ eTmpFspInstState, <variable>.eFspInstState
	stmia	r6, {r0, r1, r2, r3}	@ tmp141,,,,
	mov	r0, r4	@, pFspInst
	movw	r1, #42864	@,
	bl	__memzero	@
	str	r7, [r4, #4]	@ eTmpFspInstState, <variable>.eFspInstState
	strb	r8, [r4, #0]	@ s8TmpInstID, <variable>.s32InstID
	mov	ip, #0	@ D.38675,
	strb	sl, [r4, #1]	@ s8TmpLowBufEnable, <variable>.s8LowBufEnable
	ldmia	r6, {r0, r1, r2, r3}	@ tmp141,,,,
	stmia	r5, {r0, r1, r2, r3}	@ tmp142,,,,
.L494:
	mov	r0, ip	@, D.38675
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L496:
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #288	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC44	@,
	movt	r3, #:upper16:.LC44	@,
	bl	dprint_vfmw	@
	mvn	ip, #0	@ D.38675,
	b	.L494	@
	.fnend
	.size	FSP_ClearContext, .-FSP_ClearContext
	.align	2
	.global	FSP_ConfigInstance
	.type	FSP_ConfigInstance, %function
FSP_ConfigInstance:
	.fnstart
.LFB1545:
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
	cmp	r0, #15	@ InstID,
	mov	r6, r1	@ pstFspInstCfg, pstFspInstCfg
	bhi	.L504	@,
	cmp	r1, #0	@ pstFspInstCfg,
	beq	.L505	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp143,
	movt	r3, #:upper16:.LANCHOR0	@ tmp143,
	ldr	r2, [r3, r0, asl #2]	@ D.38863, s_pFspInst
	cmp	r2, #0	@ D.38863,
	beq	.L501	@,
	ldr	r2, [r2, #4]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r2, #1	@ <variable>.eFspInstState,
	bne	.L501	@,
	mov	r5, #0	@ tmp147,
	strb	r5, [r1, #0]	@ tmp147, <variable>.s32DispLoopEnable
	ldr	r4, [r3, r0, asl #2]	@ pstInst, s_pFspInst
	mov	r0, r4	@, pstInst
	add	r4, r4, #56	@ tmp150, pstInst,
	bl	FSP_ClearContext	@
	ldmia	r6!, {r0, r1, r2, r3}	@ pstFspInstCfg,,,,
	mov	ip, r4	@ tmp151, tmp150
	stmia	ip!, {r0, r1, r2, r3}	@ tmp151,,,,
	ldmia	r6!, {r0, r1, r2, r3}	@ pstFspInstCfg,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp151,,,,
	ldr	r0, [r6, #0]	@ tmp153,* pstFspInstCfg
	str	r0, [ip, #0]	@ tmp153, <variable>.stInstCfg
.L499:
	mov	r0, r5	@, D.38857
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L501:
	movw	r2, #613	@,
	mvn	r5, #0	@ D.38857,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC46	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC46	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@, D.38857
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L504:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #608	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r5, #0	@ D.38857,
	b	.L499	@
.L505:
	mov	r0, r1	@, pstFspInstCfg
	movw	r2, #609	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC45	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC45	@,
	bl	dprint_vfmw	@
	mvn	r5, #0	@ D.38857,
	b	.L499	@
	.fnend
	.size	FSP_ConfigInstance, .-FSP_ConfigInstance
	.align	2
	.global	FSP_ResetInstance
	.type	FSP_ResetInstance, %function
FSP_ResetInstance:
	.fnstart
.LFB1541:
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
	cmp	r0, #15	@ InstID,
	mov	r7, r0	@ InstID, InstID
	bhi	.L527	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp147,
	movt	r3, #:upper16:.LANCHOR0	@ tmp147,
	ldr	sl, [r3, r0, asl #2]	@ D.38736, s_pFspInst
	cmp	sl, #0	@ D.38736,
	beq	.L528	@,
	movw	r6, #:lower16:.LANCHOR1	@ tmp162,
	movt	r6, #:upper16:.LANCHOR1	@ tmp162,
	add	r4, sl, #34816	@ ivtmp.1874, D.38736,
	mov	r5, #0	@ i,
	add	r4, r4, #168	@ ivtmp.1874, ivtmp.1874,
	mov	r8, r6	@ tmp163, tmp162
	b	.L514	@
.L512:
	mov	r0, r7	@, InstID
	mov	r2, #0	@,
	blx	r3	@ D.40362
.L511:
	ldrsb	r1, [r4, #-10]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #0	@ <variable>.DispState,
	beq	.L510	@,
	ldr	r3, [r6, #-3884]	@ D.40368, g_FspFrameIntf.ReleaseFrame
	ldr	r1, [r4, #0]	@ temp.1880, <variable>.PhyAddr
	cmp	r3, #0	@ D.40368,
	beq	.L529	@,
	mov	r0, r7	@, InstID
	blx	r3	@ D.40368
.L510:
	ldr	r1, [r4, #60]	@ D.38740, <variable>.PhyAddr
	add	r5, r5, #1	@ tmp167, i,
	add	r4, r4, #60	@ tmp168, ivtmp.1874,
	cmp	r1, #0	@ D.38740,
	beq	.L517	@,
	ldr	ip, [r6, #-3896]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	ip, #0	@ g_IsFrameIntfValid,
	beq	.L517	@,
	ldrsb	lr, [r4, #-12]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	lr, #0	@ <variable>.IsDecRef,
	beq	.L518	@,
	ldr	r3, [r8, #-3880]	@ D.40362, g_FspFrameIntf.SetFrameRef
	cmp	r3, #0	@ D.40362,
	beq	.L525	@,
	mov	r0, r7	@, InstID
	mov	r2, #0	@,
	blx	r3	@ D.40362
.L518:
	ldrsb	r3, [r4, #-10]	@ <variable>.DispState, <variable>.DispState
	cmp	r3, #0	@ <variable>.DispState,
	beq	.L517	@,
	ldr	r3, [r6, #-3884]	@ D.40368, g_FspFrameIntf.ReleaseFrame
	ldr	r1, [r4, #0]	@ temp.1880, <variable>.PhyAddr
	cmp	r3, #0	@ D.40368,
	beq	.L524	@,
	mov	r0, r7	@, InstID
	blx	r3	@ D.40368
.L517:
	add	r5, r5, #1	@ i, tmp167,
	add	r4, r4, #60	@ ivtmp.1874, tmp168,
	cmp	r5, #64	@ i,
	beq	.L530	@,
.L514:
	ldr	r1, [r4, #0]	@ D.38740, <variable>.PhyAddr
	cmp	r1, #0	@ D.38740,
	beq	.L510	@,
	ldr	r0, [r6, #-3896]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	r0, #0	@ g_IsFrameIntfValid,
	beq	.L510	@,
	ldrsb	r2, [r4, #-12]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r2, #0	@ <variable>.IsDecRef,
	beq	.L511	@,
	ldr	r3, [r8, #-3880]	@ D.40362, g_FspFrameIntf.SetFrameRef
	cmp	r3, #0	@ D.40362,
	bne	.L512	@,
	mov	r0, r3	@, D.40362
	movw	r1, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC34	@,
	bl	dprint_vfmw	@
	b	.L511	@
.L530:
	mov	r0, sl	@, D.38736
	bl	FSP_ClearContext	@
	mov	r0, #0	@ D.38734,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L529:
	mov	r0, r3	@, D.40368
	movw	r1, #:lower16:.LC40	@,
	movt	r1, #:upper16:.LC40	@,
	bl	dprint_vfmw	@
	b	.L510	@
.L525:
	mov	r0, r3	@, D.40362
	movw	r1, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC34	@,
	bl	dprint_vfmw	@
	b	.L518	@
.L524:
	mov	r0, r3	@, D.40368
	movw	r1, #:lower16:.LC40	@,
	movt	r1, #:upper16:.LC40	@,
	bl	dprint_vfmw	@
	b	.L517	@
.L527:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #360	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38734,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L528:
	mov	r0, sl	@, D.38736
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #361	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38734,
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	.fnend
	.size	FSP_ResetInstance, .-FSP_ResetInstance
	.align	2
	.global	FSP_Init
	.type	FSP_Init, %function
FSP_Init:
	.fnstart
.LFB1535:
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
	mov	r1, #64	@,
	mov	r0, r4	@, tmp133
	bl	__memzero	@
	add	r0, r4, #64	@, tmp133,
	mov	r1, #4224	@,
	bl	__memzero	@
	movw	ip, #4026	@ tmp196,
	mvn	r3, #0	@ tmp138,
	strh	r3, [r4, ip]	@ movhi	@ tmp138, <variable>.history
	movw	ip, #330	@ tmp140,
	movw	r2, #:lower16:.LANCHOR1	@ tmp199,
	strh	r3, [r4, ip]	@ movhi	@ tmp138, <variable>.history
	movw	ip, #594	@ tmp144,
	strh	r3, [r4, ip]	@ movhi	@ tmp138, <variable>.history
	movw	ip, #858	@ tmp148,
	strh	r3, [r4, ip]	@ movhi	@ tmp138, <variable>.history
	movw	ip, #1122	@ tmp152,
	strh	r3, [r4, ip]	@ movhi	@ tmp138, <variable>.history
	movw	ip, #1386	@ tmp156,
	strh	r3, [r4, ip]	@ movhi	@ tmp138, <variable>.history
	movw	ip, #1650	@ tmp160,
	strh	r3, [r4, ip]	@ movhi	@ tmp138, <variable>.history
	movw	ip, #1914	@ tmp164,
	strh	r3, [r4, ip]	@ movhi	@ tmp138, <variable>.history
	movw	ip, #2178	@ tmp168,
	strh	r3, [r4, ip]	@ movhi	@ tmp138, <variable>.history
	movw	ip, #2442	@ tmp172,
	strh	r3, [r4, ip]	@ movhi	@ tmp138, <variable>.history
	movw	ip, #2706	@ tmp176,
	strh	r3, [r4, ip]	@ movhi	@ tmp138, <variable>.history
	movw	ip, #2970	@ tmp180,
	strh	r3, [r4, ip]	@ movhi	@ tmp138, <variable>.history
	movw	ip, #3234	@ tmp184,
	strh	r3, [r4, ip]	@ movhi	@ tmp138, <variable>.history
	movt	r2, #:upper16:.LANCHOR1	@ tmp199,
	movw	ip, #3498	@ tmp188,
	sub	r0, r2, #3888	@, tmp199,
	strh	r3, [r4, ip]	@ movhi	@ tmp138, <variable>.history
	movw	ip, #3762	@ tmp192,
	strh	r3, [r4, ip]	@ movhi	@ tmp138, <variable>.history
	sub	r0, r0, #4	@,,
	mov	ip, #0	@ tmp200,
	mov	r1, #16	@,
	str	ip, [r2, #-3896]	@ tmp200, g_IsFrameIntfValid
	strh	r3, [r4, #66]	@ movhi	@ tmp138, <variable>.history
	bl	__memzero	@
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	FSP_Init, .-FSP_Init
	.align	2
	.global	FSP_NewLogicFs
	.type	FSP_NewLogicFs, %function
FSP_NewLogicFs:
	.fnstart
.LFB1553:
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
	cmp	r0, #15	@ InstID,
	mov	r8, r0	@ InstID, InstID
	mov	r6, r1	@ NeedPhyFs, NeedPhyFs
	bhi	.L640	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp200,
	movt	r4, #:upper16:.LANCHOR0	@ tmp200,
	ldr	r0, [r4, r0, asl #2]	@ tmp201, s_pFspInst
	cmp	r0, #0	@ tmp201,
	beq	.L641	@,
	ldr	r0, .L648	@,
	movw	r9, #:lower16:.LANCHOR1	@ tmp943,
	bl	OSAL_SpinLockIRQ	@
	ldr	r5, [r4, r8, asl #2]	@ pstInst, s_pFspInst
	movt	r9, #:upper16:.LANCHOR1	@ tmp943,
	mov	r4, #0	@ i.2020,
	mov	r3, r5	@ ivtmp.2049, pstInst
	b	.L540	@
.L537:
	ldrsb	lr, [r2, #96]	@ <variable>.s32IsRef, <variable>.s32IsRef
	add	r4, r4, #1	@ i.2020, i.2020,
	cmp	lr, #0	@ <variable>.s32IsRef,
	mov	r3, r4	@ tmp975, i.2020
	bne	.L610	@,
	ldrsb	r7, [r2, #97]	@ <variable>.s32DispState, <variable>.s32DispState
	cmp	r7, #0	@ <variable>.s32DispState,
	beq	.L630	@,
.L610:
	add	r4, r3, #1	@ i.2020, tmp975,
	add	r3, r2, #544	@ ivtmp.2049, tmp976,
	cmp	r4, #64	@ i.2020,
	beq	.L538	@,
.L540:
	ldrsb	r1, [r3, #96]	@ <variable>.s32IsRef, <variable>.s32IsRef
	add	r2, r3, #544	@ tmp976, ivtmp.2049,
	cmp	r1, #0	@ <variable>.s32IsRef,
	bne	.L537	@,
	ldrsb	r7, [r3, #97]	@ <variable>.s32DispState, <variable>.s32DispState
	cmp	r7, #0	@ <variable>.s32DispState,
	bne	.L537	@,
.L630:
	mov	sl, r4, asl #4	@ tmp945, i.2020,
	add	ip, sl, r4	@ tmp214, tmp945, i.2020
	mov	r3, ip, asl #5	@ tmp215, tmp214,
	add	r0, r3, #96	@ tmp232, tmp215,
	add	r3, r3, r5	@ tmp216, tmp215, pstInst
	add	r2, r5, r0	@ tmp233, pstInst, tmp232
	add	r1, r3, #96	@ tmp217, tmp216,
	cmp	r2, #0	@ tmp233,
	strb	r4, [r1, #3]	@ i.2020, <variable>.s32LogicFsID
	strb	r7, [r1, #2]	@ <variable>.s32DispState, <variable>.IsDummyFs
	beq	.L538	@,
	add	ip, r3, #616	@ tmp244, tmp216,
	add	r0, r3, #624	@ tmp260, tmp216,
	cmp	r6, #0	@ NeedPhyFs,
	str	r7, [r3, #616]	@ <variable>.s32DispState, <variable>.pstDecodeFs
	str	r7, [ip, #4]	@ <variable>.s32DispState, <variable>.pstDispOutFs
	str	r7, [r3, #624]	@ <variable>.s32DispState, <variable>.pstTfOutFs
	str	r7, [r0, #4]	@ <variable>.s32DispState, <variable>.PmvAddr
	beq	.L541	@,
	ldrsb	r0, [r5, #10]	@ temp.2053, <variable>.s32DecFsNum
	cmp	r0, #0	@ temp.2053,
	ble	.L543	@,
	add	r3, r5, #34816	@ ivtmp.1982, pstInst,
	sub	r2, r0, #1	@ tmp970, temp.2053,
	and	r1, r2, #1	@ tmp972, tmp970,
	ldrsb	ip, [r3, #156]!	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	ip, #0	@ <variable>.IsDecRef,
	bne	.L603	@,
	ldrsb	ip, [r3, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	ip, #0	@ <variable>.DispState,
	beq	.L628	@,
.L603:
	mov	r7, #1	@ i.2025,
	cmp	r7, r0	@ i.2025, temp.2053
	add	r3, r3, #60	@ ivtmp.1982, ivtmp.1982,
	bge	.L629	@,
	cmp	r1, #0	@ tmp972,
	beq	.L546	@,
	ldrsb	lr, [r3, #0]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	lr, #0	@ <variable>.IsDecRef,
	bne	.L605	@,
	ldrsb	r1, [r3, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #0	@ <variable>.DispState,
	beq	.L628	@,
.L605:
	add	r7, r7, #1	@ i.2025, i.2025,
	add	r3, r3, #60	@ ivtmp.1982, ivtmp.1982,
	cmp	r7, r0	@ i.2025, temp.2053
	bge	.L629	@,
.L546:
	ldrsb	r1, [r3, #0]	@ <variable>.IsDecRef, <variable>.IsDecRef
	add	r2, r3, #60	@ tmp974, ivtmp.1982,
	cmp	r1, #0	@ <variable>.IsDecRef,
	bne	.L545	@,
	ldrsb	lr, [r3, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	lr, #0	@ <variable>.DispState,
	beq	.L628	@,
.L545:
	ldrsb	lr, [r3, #60]	@ <variable>.IsDecRef, <variable>.IsDecRef
	add	r7, r7, #1	@ i.2025, i.2025,
	cmp	lr, #0	@ <variable>.IsDecRef,
	mov	r3, r7	@ tmp973, i.2025
	bne	.L608	@,
	ldrsb	ip, [r2, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	ip, #0	@ <variable>.DispState,
	beq	.L628	@,
.L608:
	add	r7, r3, #1	@ i.2025, tmp973,
	add	r3, r2, #60	@ ivtmp.1982, tmp974,
	cmp	r7, r0	@ i.2025, temp.2053
	blt	.L546	@,
.L629:
	add	r7, sl, r4	@ tmp346, tmp945, i.2020
	add	r3, r5, r7, asl #5	@, tmp348, pstInst, tmp346,
	ldr	r7, [r3, #616]	@ prephitmp.1926, <variable>.pstDecodeFs
.L543:
	cmp	r7, #0	@ prephitmp.1926,
	beq	.L642	@,
.L547:
	add	r6, sl, r4	@ tmp383, tmp945, i.2020
	add	r1, r5, #42496	@ tmp387, pstInst,
	add	r3, r1, #156	@ tmp387, tmp387,
	add	lr, r5, r6, asl #5	@, tmp385, pstInst, tmp383,
	str	r3, [lr, #624]	@ tmp387, <variable>.pstTfOutFs
	ldrsb	ip, [r5, #13]	@ temp.2003, <variable>.s32PmvNum
	cmp	ip, #0	@ temp.2003,
	ble	.L557	@,
	ldrsb	r3, [r5, #14]	@ <variable>.IsPmvInUse, <variable>.IsPmvInUse
	mov	lr, ip	@ D.39392, temp.2003
	cmp	r3, #0	@ <variable>.IsPmvInUse,
	moveq	r0, r3	@ prephitmp.1929, <variable>.IsPmvInUse
	beq	.L559	@,
	tst	ip, #1	@ temp.2003,
	mov	r2, r5	@ ivtmp.2046, pstInst
	mov	r3, #0	@ i.2005,
	bne	.L560	@,
	ldrb	r6, [r5, #15]	@ zero_extendqisi2	@ D.39387, <variable>.IsPmvInUse
	mov	r3, #1	@ i.2005,
	add	r2, r5, r3	@ ivtmp.2046, pstInst,
	cmp	r6, #0	@ D.39387,
	bne	.L560	@,
.L625:
	uxtb	r0, r3	@ prephitmp.1929, i.2005
.L559:
	add	ip, sl, r4	@ tmp394, tmp945, i.2020
	add	r2, r3, #10688	@ tmp406, i.2005,
	add	r1, r2, #6	@ tmp406, tmp406,
	movw	lr, #42772	@ tmp416,
	add	r2, r5, ip, asl #5	@, tmp396, pstInst, tmp394,
	strb	r0, [r2, #100]	@ prephitmp.1929, <variable>.PmvIdc
	ldr	r6, [r5, r1, asl #2]	@ tmp408, <variable>.PmvAddr
	str	r6, [r2, #628]	@ tmp408, <variable>.PmvAddr
	ldr	ip, [r5, lr]	@ <variable>.s32HalfPmvOffset, <variable>.s32HalfPmvOffset
	str	ip, [r2, #632]	@ <variable>.s32HalfPmvOffset, <variable>.HalfPmvOffset
	ldrsb	lr, [r5, #13]	@ D.39392, <variable>.s32PmvNum
	cmp	lr, r3	@ D.39392, i.2005
	ble	.L561	@,
.L557:
	ldrsb	r1, [r5, #56]	@ <variable>.stInstCfg.s32DispLoopEnable, <variable>.stInstCfg.s32DispLoopEnable
	cmp	r1, #0	@ <variable>.stInstCfg.s32DispLoopEnable,
	beq	.L565	@,
.L644:
	ldrsb	r6, [r5, #11]	@ D.39411, <variable>.s32DispFsNum
	cmp	r6, #0	@ D.39411,
	ble	.L643	@,
	add	r0, r5, #38656	@ tmp454, pstInst,
	cmn	r0, #156	@ tmp454,
	beq	.L568	@,
	movw	r1, #38812	@ tmp455,
	ldr	ip, [r5, r1]	@ tmp457,
	bic	lr, ip, #-16777216	@ tmp456, tmp457,
	cmp	lr, #0	@ tmp456,
	beq	.L568	@,
	tst	r6, #1	@ D.39411,
	add	r1, r0, #216	@ ivtmp.1951, tmp454,
	mov	r2, #0	@ i,
	bne	.L572	@,
	cmp	r1, #0	@ ivtmp.1951,
	mov	r2, #1	@ i,
	mov	r3, r2	@ i.1998, i
	beq	.L571	@,
	add	lr, r5, #38656	@ tmp1000, pstInst,
	add	r1, r0, #276	@ ivtmp.1951, tmp454,
	add	ip, lr, #212	@ tmp1000, tmp1000,
	ldr	lr, [ip, #4]	@ tmp1001,
	bic	r0, lr, #-16777216	@ tmp1002, tmp1001,
	cmp	r0, #0	@ tmp1002,
	bne	.L572	@,
.L571:
	add	r6, sl, r4	@ tmp492, tmp945, i.2020
	rsb	r3, r3, r3, asl #4	@, tmp484, i.1998, i.1998,
	add	lr, r5, r6, asl #5	@, tmp494, pstInst, tmp492,
	add	r1, r5, r3, asl #2	@, tmp488, pstInst, tmp484,
	add	r2, r1, #38656	@ prephitmp.2004, tmp488,
	add	r6, r2, #156	@ prephitmp.2004, prephitmp.2004,
	str	r6, [lr, #620]	@ prephitmp.2004, <variable>.pstDispOutFs
	b	.L567	@
.L541:
	add	r6, r5, #34816	@ D.39349, pstInst,
	movw	r2, #42776	@ tmp304,
	add	lr, r6, #96	@ D.39349, D.39349,
	str	lr, [r3, #624]	@ D.39349, <variable>.pstTfOutFs
	str	lr, [ip, #4]	@ D.39349, <variable>.pstDispOutFs
	mov	r8, #1	@ tmp324,
	str	lr, [r3, #616]	@ D.39349, <variable>.pstDecodeFs
	ldr	r9, [r5, r2]	@ <variable>.PmvAddr, <variable>.PmvAddr
	str	r9, [r0, #4]	@ <variable>.PmvAddr, <variable>.PmvAddr
	ldrb	r7, [r5, #13]	@ zero_extendqisi2	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	strb	r8, [r1, #2]	@ tmp324, <variable>.IsDummyFs
	sub	r6, r7, #1	@ tmp315, <variable>.s32PmvNum,
	strb	r6, [r1, #4]	@ tmp315, <variable>.PmvIdc
.L544:
	add	r7, sl, r4	@ tmp565, tmp945, i.2020
	mov	ip, #1	@ tmp569,
	mov	r1, #504	@,
	mov	r9, r7, asl #5	@ tmp566, tmp565,
	add	r6, r9, r5	@ tmp567, tmp566, pstInst
	add	sl, r9, #104	@ tmp647, tmp566,
	add	r3, r6, #616	@ tmp577, tmp567,
	add	r7, r6, #96	@ tmp568, tmp567,
	add	r8, r6, #152	@, tmp567,
	add	r0, r5, sl	@, pstInst, tmp647
	ldr	lr, [r3, #4]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	add	r2, r6, #136	@ tmp710, tmp567,
	strb	ip, [r7, #1]	@ tmp569, <variable>.s32DispState
	add	r9, r6, #208	@ tmp694, tmp567,
	str	r8, [fp, #-88]	@, %sfp
	add	sl, r6, #224	@ tmp765, tmp567,
	strb	ip, [lr, #2]	@ tmp569, <variable>.DispState
	add	lr, r6, #144	@, tmp567,
	str	lr, [fp, #-92]	@, %sfp
	add	r8, r6, #216	@ tmp803, tmp567,
	str	ip, [r6, #612]	@ tmp569, <variable>.eLfsPmvState
	ldr	r4, [r6, #616]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	ip, [r5, #36]	@ D.39443, <variable>.u32InstTick
	str	ip, [r6, #608]	@ D.39443, <variable>.u32Tick
	str	ip, [r4, #56]	@ D.39443, <variable>.u32Tick
	ldr	lr, [r3, #4]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	r4, [r6, #608]	@ <variable>.u32Tick, <variable>.u32Tick
	str	r4, [lr, #56]	@ <variable>.u32Tick, <variable>.u32Tick
	ldr	ip, [r5, #36]	@ <variable>.u32InstTick, <variable>.u32InstTick
	add	r4, ip, #1	@ tmp621, <variable>.u32InstTick,
	str	r4, [r5, #36]	@ tmp621, <variable>.u32InstTick
	ldr	lr, [r6, #624]	@ pstTfFs, <variable>.pstTfOutFs
	ldr	r4, [r6, #616]	@ pstDecFs, <variable>.pstDecodeFs
	ldr	r5, [r3, #4]	@ pstDispFs, <variable>.pstDispOutFs
	str	lr, [fp, #-96]	@,
	str	r2, [fp, #-100]	@,
	bl	__memzero	@
	ldrsb	r1, [r7, #3]	@ <variable>.s32LogicFsID, <variable>.s32LogicFsID
	str	r1, [r6, #300]	@ <variable>.s32LogicFsID, <variable>.stDispImg.image_id
	ldr	r2, [r4, #36]	@ <variable>.FsWidth, <variable>.FsWidth
	str	r2, [r6, #268]	@ <variable>.FsWidth, <variable>.stDispImg.image_width
	ldr	r3, [r4, #40]	@ <variable>.FsHeight, <variable>.FsHeight
	str	r3, [r6, #272]	@ <variable>.FsHeight, <variable>.stDispImg.image_height
	ldr	r0, [r5, #20]	@ <variable>.Stride, <variable>.Stride
	str	r0, [r6, #296]	@ <variable>.Stride, <variable>.stDispImg.image_stride
	ldr	r1, [r4, #12]	@ D.39459, <variable>.PhyAddr
	str	r1, [r6, #208]	@ D.39459, <variable>.stDispImg.luma_phy_addr
	mov	r0, r1	@, D.39459
	ldr	ip, [r4, #44]	@ <variable>.ChromOffset, <variable>.ChromOffset
	add	r2, ip, r1	@ tmp703, <variable>.ChromOffset, D.39459
	str	r2, [r9, #4]	@ tmp703, <variable>.stDispImg.chrom_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r6, #136]	@, <variable>.stDispImg.luma_vir_addr
	ldr	r0, [r9, #4]	@, <variable>.stDispImg.chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r3, [fp, #-100]	@,
	str	r0, [r3, #4]	@, <variable>.stDispImg.chrom_vir_addr
	ldr	ip, [r5, #12]	@ D.39472, <variable>.PhyAddr
	str	ip, [r6, #192]	@ D.39472, <variable>.stDispImg.top_luma_phy_addr
	ldr	r1, [r5, #44]	@ <variable>.ChromOffset, <variable>.ChromOffset
	add	r3, ip, r1	@ D.39475, D.39472, <variable>.ChromOffset
	str	r3, [r6, #196]	@ D.39475, <variable>.stDispImg.top_chrom_phy_addr
	ldr	r0, [r5, #20]	@ <variable>.Stride, <variable>.Stride
	add	r2, r0, ip	@ tmp749, <variable>.Stride, D.39472
	str	r2, [r6, #200]	@ tmp749, <variable>.stDispImg.btm_luma_phy_addr
	ldr	ip, [r5, #20]	@ <variable>.Stride, <variable>.Stride
	add	r0, r3, ip	@ tmp758, D.39475, <variable>.Stride
	str	r0, [r6, #204]	@ tmp758, <variable>.stDispImg.btm_chrom_phy_addr
	ldr	r2, [r5, #12]	@ temp.2028, <variable>.PhyAddr
	str	r2, [r6, #224]	@ temp.2028, <variable>.stDispImg.luma_2d_phy_addr
	mov	r0, r2	@, temp.2028
	ldr	r1, [r5, #44]	@ <variable>.ChromOffset, <variable>.ChromOffset
	add	ip, r1, r2	@ tmp774, <variable>.ChromOffset, temp.2028
	str	ip, [sl, #4]	@ tmp774, <variable>.stDispImg.chrom_2d_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r6, #152]	@, <variable>.stDispImg.luma_2d_vir_addr
	ldr	r0, [sl, #4]	@, <variable>.stDispImg.chrom_2d_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r3, [fp, #-88]	@, %sfp
	str	r0, [r3, #4]	@, <variable>.stDispImg.chrom_2d_vir_addr
	ldr	r0, [fp, #-96]	@,
	ldr	r1, [r0, #12]	@ D.39490, <variable>.PhyAddr
	str	r1, [r6, #216]	@ D.39490, <variable>.stDispImg.luma_tf_phy_addr
	mov	r0, r1	@, D.39490
	ldr	r2, [r4, #44]	@ <variable>.ChromOffset, <variable>.ChromOffset
	add	ip, r2, r1	@ tmp812, <variable>.ChromOffset, D.39490
	str	ip, [r8, #4]	@ tmp812, <variable>.stDispImg.chrom_tf_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r6, #144]	@, <variable>.stDispImg.luma_tf_vir_addr
	ldr	r0, [r8, #4]	@, <variable>.stDispImg.chrom_tf_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	lr, [fp, #-92]	@, %sfp
	ldr	r2, [r6, #208]	@ <variable>.stDispImg.luma_phy_addr, <variable>.stDispImg.luma_phy_addr
	ldr	ip, [r6, #136]	@ <variable>.stDispImg.luma_vir_addr, <variable>.stDispImg.luma_vir_addr
	str	r0, [lr, #4]	@, <variable>.stDispImg.chrom_tf_vir_addr
	ldr	r3, [r4, #24]	@ <variable>.Stride_2bit, <variable>.Stride_2bit
	str	r3, [r6, #248]	@ <variable>.Stride_2bit, <variable>.stDispImg.image_stride_2bit
	ldr	r1, [r4, #28]	@ <variable>.LumaOffset_2bit, <variable>.LumaOffset_2bit
	add	lr, r1, r2	@ tmp859, <variable>.LumaOffset_2bit, <variable>.stDispImg.luma_phy_addr
	str	lr, [r6, #236]	@ tmp859, <variable>.stDispImg.luma_2bit_phy_addr
	ldr	r0, [r4, #28]	@ <variable>.LumaOffset_2bit, <variable>.LumaOffset_2bit
	ldr	r3, [r4, #32]	@ <variable>.ChromOffset_2bit, <variable>.ChromOffset_2bit
	add	r1, r0, r3	@ tmp867, <variable>.LumaOffset_2bit, <variable>.ChromOffset_2bit
	add	lr, r1, r2	@ tmp878, tmp867, <variable>.stDispImg.luma_phy_addr
	str	lr, [r6, #244]	@ tmp878, <variable>.stDispImg.chrom_2bit_phy_addr
	ldr	r3, [r4, #28]	@ <variable>.LumaOffset_2bit, <variable>.LumaOffset_2bit
	add	r2, ip, r3	@ tmp895, <variable>.stDispImg.luma_vir_addr, <variable>.LumaOffset_2bit
	str	r2, [r6, #232]	@ tmp895, <variable>.stDispImg.luma_2bit_vir_addr
	ldr	r1, [r4, #32]	@ <variable>.ChromOffset_2bit, <variable>.ChromOffset_2bit
	ldr	r0, [r4, #28]	@ <variable>.LumaOffset_2bit, <variable>.LumaOffset_2bit
	add	lr, r1, r0	@ tmp910, <variable>.ChromOffset_2bit, <variable>.LumaOffset_2bit
	add	r3, ip, lr	@ tmp914, <variable>.stDispImg.luma_vir_addr, tmp910
	str	r3, [r6, #240]	@ tmp914, <variable>.stDispImg.chrom_2bit_vir_addr
	ldr	ip, [r4, #16]	@ <variable>.LineNumAddr, <variable>.LineNumAddr
	str	ip, [r6, #380]	@ <variable>.LineNumAddr, <variable>.stDispImg.line_num_phy_addr
	ldr	r0, [r4, #16]	@, <variable>.LineNumAddr
	bl	MEM_Phy2Vir	@
	str	r0, [r6, #160]	@, <variable>.stDispImg.line_num_vir_addr
	ldr	r0, .L648	@,
	bl	OSAL_SpinUnLockIRQ	@
	ldrsb	r0, [r7, #3]	@ D.39328, <variable>.s32LogicFsID
.L535:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L562:
	ldrb	r0, [r2, #15]	@ zero_extendqisi2	@ D.39387, <variable>.IsPmvInUse
	add	r2, r1, #1	@ ivtmp.2046, tmp964,
	cmp	r0, #0	@ D.39387,
	beq	.L625	@,
	ldrb	r1, [r1, #15]	@ zero_extendqisi2	@ D.39387, <variable>.IsPmvInUse
	add	r3, r3, #1	@ i.2005, i.2005,
	cmp	r1, #0	@ D.39387,
	beq	.L625	@,
.L560:
	add	r3, r3, #1	@ i.2005, i.2005,
	add	r1, r2, #1	@ tmp964, ivtmp.2046,
	cmp	r3, ip	@ i.2005, temp.2003
	blt	.L562	@,
.L561:
	cmp	lr, #0	@ D.39392,
	ble	.L563	@,
	ldrsb	ip, [r5, #13]	@ temp.2008, <variable>.s32PmvNum
	mov	r2, #1	@ i.2009,
	mov	r0, #0	@ tmp947,
	strb	r0, [r5, #14]	@ tmp947, <variable>.IsPmvInUse
	cmp	ip, r2	@ temp.2008,
	sub	r3, ip, #1	@ tmp955, temp.2008,
	and	r1, r3, r2	@ tmp957, tmp955,
	add	r3, r5, r2	@ ivtmp.1993, pstInst,
	ble	.L563	@,
	cmp	r1, #0	@ tmp957,
	beq	.L564	@,
	mov	r2, #2	@ i.2009,
	cmp	ip, r2	@ temp.2008, i.2009
	strb	r0, [r3, #14]	@ tmp947, <variable>.IsPmvInUse
	add	r3, r3, #1	@ ivtmp.1993, ivtmp.1993,
	ble	.L563	@,
.L564:
	add	r2, r2, #2	@ i.2009, i.2009,
	add	lr, r3, #1	@ tmp959, ivtmp.1993,
	cmp	ip, r2	@ temp.2008, i.2009
	strb	r0, [r3, #14]	@ tmp947, <variable>.IsPmvInUse
	strb	r0, [lr, #14]	@ tmp947, <variable>.IsPmvInUse
	add	r3, lr, #1	@ ivtmp.1993, tmp959,
	bgt	.L564	@,
.L563:
	add	r0, sl, r4	@ tmp423, tmp945, i.2020
	movw	lr, #42776	@ tmp436,
	mov	r6, #0	@ tmp427,
	movw	r1, #:lower16:.LC50	@,
	add	r3, r5, r0, asl #5	@, tmp425, pstInst, tmp423,
	mov	r0, r6	@, tmp427
	add	ip, r3, #96	@ tmp426, tmp425,
	movt	r1, #:upper16:.LC50	@,
	strb	r6, [ip, #4]	@ tmp427, <variable>.PmvIdc
	movw	ip, #42772	@ tmp445,
	ldr	r2, [r5, lr]	@ <variable>.PmvAddr, <variable>.PmvAddr
	str	r2, [r3, #628]	@ <variable>.PmvAddr, <variable>.PmvAddr
	ldr	r6, [r5, ip]	@ <variable>.s32HalfPmvOffset, <variable>.s32HalfPmvOffset
	str	r6, [r3, #632]	@ <variable>.s32HalfPmvOffset, <variable>.HalfPmvOffset
	bl	dprint_vfmw	@
	ldrsb	r1, [r5, #56]	@ <variable>.stInstCfg.s32DispLoopEnable, <variable>.stInstCfg.s32DispLoopEnable
	cmp	r1, #0	@ <variable>.stInstCfg.s32DispLoopEnable,
	bne	.L644	@,
.L565:
	add	r3, sl, r4	@ tmp461, tmp945, i.2020
	add	r0, r5, r3, asl #5	@, tmp463, pstInst, tmp461,
	ldr	r6, [r0, #616]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	str	r6, [r0, #620]	@ <variable>.pstDecodeFs, <variable>.pstDispOutFs
.L570:
	mov	r0, r8	@, InstID
	bl	VCTRL_GetImageWidth	@
	mov	r6, r0	@ uImage_width,
	mov	r0, r8	@, InstID
	bl	VCTRL_GetImageHeight	@
	ldr	r1, [r9, #-3896]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	movw	r2, #:lower16:.LANCHOR1	@ tmp524,
	movt	r2, #:upper16:.LANCHOR1	@ tmp524,
	cmp	r1, #0	@ g_IsFrameIntfValid,
	mov	r3, r0	@ uImage_height,
	beq	.L544	@,
	ldr	ip, [r2, #-3888]	@ D.40388, g_FspFrameIntf.AllocFrame
	cmp	ip, #0	@ D.40388,
	beq	.L645	@,
	mov	r0, r8	@, InstID
	mov	r2, r6	@, uImage_width
	sub	r1, fp, #84	@,,
	blx	ip	@ D.40388
	cmp	r0, #0	@,
	bne	.L576	@,
	ldr	r6, [fp, #-84]	@ D.39435, stInfo.stFrameInfo.PhyAddr
	cmp	r6, #0	@ D.39435,
	beq	.L646	@,
	add	r2, sl, r4	@ tmp540, tmp945, i.2020
	add	r7, r5, r2, asl #5	@, tmp542, pstInst, tmp540,
	ldr	r0, [r7, #616]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	str	r6, [r0, #12]	@ D.39435, <variable>.PhyAddr
	ldrsb	r6, [r7, #100]	@ <variable>.PmvIdc, <variable>.PmvIdc
	ldr	r8, [fp, #-68]	@ D.39439, stInfo.stPmvInfo.PhyAddr
	add	lr, r6, #10688	@ tmp560, <variable>.PmvIdc,
	add	r9, lr, #6	@ tmp560, tmp560,
	str	r8, [r7, #628]	@ D.39439, <variable>.PmvAddr
	str	r8, [r5, r9, asl #2]	@ D.39439, <variable>.PmvAddr
	b	.L544	@
.L573:
	rsb	ip, r2, r2, asl #4	@, tmp1004, i, i,
	cmp	r1, #0	@ ivtmp.1951,
	add	r0, r5, r0, asl #2	@, tmp478, pstInst, tmp476,
	add	r1, r1, #120	@ ivtmp.1951, ivtmp.1951,
	add	ip, r5, ip, asl #2	@, tmp1006, pstInst, tmp1004,
	add	r0, r0, #38656	@ tmp479, tmp478,
	add	ip, ip, #38656	@ tmp1007, tmp1006,
	add	r0, r0, #152	@ tmp479, tmp479,
	add	ip, ip, #152	@ tmp1007, tmp1007,
	beq	.L571	@,
	ldr	r0, [r0, #4]	@ tmp481,
	bic	r0, r0, #-16777216	@ tmp480, tmp481,
	cmp	r0, #0	@ tmp480,
	beq	.L571	@,
	cmp	lr, #0	@ tmp954,
	mov	r3, r2	@ i.1998, i
	beq	.L571	@,
	ldr	lr, [ip, #4]	@ tmp1008,
	bic	r0, lr, #-16777216	@ tmp1009, tmp1008,
	cmp	r0, #0	@ tmp1009,
	beq	.L571	@,
.L572:
	add	r3, r2, #1	@ tmp953, i,
	add	lr, r1, #60	@ tmp954, ivtmp.1951,
	cmp	r6, r3	@ D.39411, tmp953
	add	r2, r3, #1	@ i, i.1998,
	rsb	r0, r3, r3, asl #4	@, tmp476, i.1998, i.1998,
	bgt	.L573	@,
	add	r0, sl, r4	@ tmp499, tmp945, i.2020
	add	ip, r5, r0, asl #5	@, tmp501, pstInst, tmp499,
	ldr	r6, [ip, #620]	@ prephitmp.2004, <variable>.pstDispOutFs
.L567:
	cmp	r6, #0	@ prephitmp.2004,
	bne	.L570	@,
	mov	r0, r6	@, prephitmp.2004
	movw	r1, #:lower16:.LC51	@,
	movt	r1, #:upper16:.LC51	@,
	bl	dprint_vfmw	@
	sub	r1, fp, #44	@ tmp507,,
	mov	r0, r8	@, InstID
	sub	r2, fp, #56	@,,
	str	r6, [r1, #-4]!	@ prephitmp.2004, RefNum
	sub	r3, fp, #52	@,,
	str	r6, [fp, #-52]	@ prephitmp.2004, NewNum
	str	r6, [fp, #-56]	@ prephitmp.2004, ReadNum
	bl	VCTRL_GetChanImgNum	@
	ldr	r3, [fp, #-56]	@ ReadNum, ReadNum
	ldr	r2, [fp, #-48]	@ RefNum, RefNum
	ldr	ip, [fp, #-52]	@ NewNum, NewNum
	add	r0, r2, r3	@ tmp510, RefNum, ReadNum
	ldrsb	r3, [r5, #11]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	add	r1, r0, #2	@ tmp513, tmp510,
	add	r2, r1, ip	@ tmp514, tmp513, NewNum
	cmp	r2, r3	@ tmp514, <variable>.s32DispFsNum
	bge	.L574	@,
	mov	r0, r6	@, prephitmp.2004
	movw	r1, #:lower16:.LC52	@,
	movt	r1, #:upper16:.LC52	@,
	bl	dprint_vfmw	@
	ldr	r3, [fp, #-52]	@ NewNum, NewNum
	mov	r0, r6	@, prephitmp.2004
	movw	r1, #:lower16:.LC53	@,
	ldr	r2, [fp, #-48]	@, RefNum
	movt	r1, #:upper16:.LC53	@,
	str	r3, [sp, #0]	@ NewNum,
	ldrsb	ip, [r5, #11]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	ldr	r3, [fp, #-56]	@, ReadNum
	str	ip, [sp, #4]	@ <variable>.s32DispFsNum,
	bl	dprint_vfmw	@
	mov	r0, r8	@, InstID
	bl	FSP_PrintContext	@
.L574:
	ldr	r0, .L648	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.39328,
	b	.L535	@
.L628:
	rsb	r1, r7, r7, asl #4	@, tmp331, i.2025, i.2025,
	add	r2, sl, r4	@ tmp339, tmp945, i.2020
	add	ip, r5, r1, asl #2	@, tmp335, pstInst, tmp331,
	add	r3, r5, r2, asl #5	@, tmp341, pstInst, tmp339,
	add	r7, ip, #34816	@ prephitmp.1926, tmp335,
	add	r7, r7, #156	@ prephitmp.1926, prephitmp.1926,
	str	r7, [r3, #616]	@ prephitmp.1926, <variable>.pstDecodeFs
	b	.L543	@
.L645:
	movw	r1, #:lower16:.LC34	@,
	mov	r0, ip	@, D.40388
	movt	r1, #:upper16:.LC34	@,
	bl	dprint_vfmw	@
.L576:
	ldr	r0, .L648	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC54	@,
	movt	r1, #:upper16:.LC54	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39328,
	b	.L535	@
.L642:
	mov	r0, r7	@, prephitmp.1926
	movw	r1, #:lower16:.LC48	@,
	movw	r2, #:lower16:.LANCHOR2	@,
	movt	r1, #:upper16:.LC48	@,
	movt	r2, #:upper16:.LANCHOR2	@,
	bl	dprint_vfmw	@
	ldrsb	r0, [r5, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r0, #0	@ <variable>.s32DecFsNum,
	ble	.L548	@,
	add	r6, r5, #34816	@ ivtmp.1976, pstInst,
	add	r6, r6, #156	@ ivtmp.1976, ivtmp.1976,
.L549:
	ldrsb	r2, [r6, #0]	@, <variable>.IsDecRef
	mov	r0, #0	@,
	ldrsb	r3, [r6, #2]	@, <variable>.DispState
	movw	r1, #:lower16:.LC19	@,
	movt	r1, #:upper16:.LC19	@,
	add	r7, r7, #1	@ i.2001, i.2001,
	bl	dprint_vfmw	@
	ldrsb	ip, [r5, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	r6, r6, #60	@ ivtmp.1976, ivtmp.1976,
	cmp	ip, r7	@ <variable>.s32DecFsNum, i.2001
	bgt	.L549	@,
.L548:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	bl	dprint_vfmw	@
	ldrsb	r2, [r5, #9]	@ <variable>.s8TotalValidFsNum, <variable>.s8TotalValidFsNum
	cmp	r2, #0	@ <variable>.s8TotalValidFsNum,
	ble	.L550	@,
	ldrsb	lr, [r5, #10]	@ D.39380, <variable>.s32DecFsNum
	add	r1, r5, #34816	@ pstPhyFs, pstInst,
	add	r3, r1, #156	@ pstPhyFs, pstPhyFs,
	cmp	lr, #0	@ D.39380,
	movle	ip, #0	@ prephitmp.1931,
	ble	.L552	@,
	tst	lr, #1	@ D.39380,
	mov	ip, #0	@ i.1996,
	mov	r0, ip	@ i.2044, i.1996
	mvn	r1, #0	@ LeastTick.2050,
	bne	.L556	@,
	ldr	r2, [r3, #56]	@ LeastTick, <variable>.u32Tick
	mov	r0, #1	@ i.2044,
	add	r3, r3, #60	@ pstPhyFs, pstPhyFs,
	cmn	r2, #1	@ LeastTick,
	movcs	r2, r1	@, LeastTick, LeastTick.2050
	mov	r1, r2	@ LeastTick.2050, LeastTick
	b	.L556	@
.L647:
	ldr	r1, [r6, #56]	@ LeastTick, <variable>.u32Tick
	cmp	r1, r2	@ LeastTick, LeastTick
	movcs	r1, r2	@ LeastTick, LeastTick
	movcc	ip, r3	@ i.1996, tmp968
.L627:
	add	r0, r3, #1	@ i.2044, tmp968,
	add	r3, r6, #60	@ pstPhyFs, tmp969,
.L556:
	ldr	r2, [r3, #56]	@ LeastTick, <variable>.u32Tick
	add	r6, r3, #60	@ tmp969, pstPhyFs,
	add	r3, r0, #1	@ tmp968, i.2044,
	cmp	r2, r1	@ LeastTick, LeastTick.2050
	movcc	ip, r0	@ i.1996, i.2044
	movcs	r2, r1	@ LeastTick, LeastTick.2050
	cmp	lr, r3	@ D.39380, tmp968
	bgt	.L647	@,
.L552:
	rsb	ip, ip, ip, asl #4	@, tmp369, prephitmp.1931, prephitmp.1931,
	add	r2, sl, r4	@ tmp363, tmp945, i.2020
	add	r1, r5, ip, asl #2	@, tmp373, pstInst, tmp369,
	add	lr, r5, r2, asl #5	@, tmp365, pstInst, tmp363,
	add	r6, r1, #34816	@ tmp374, tmp373,
	add	r3, r6, #156	@ tmp374, tmp374,
	str	r3, [lr, #616]	@ tmp374, <variable>.pstDecodeFs
	b	.L547	@
.L640:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1510	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39328,
	b	.L535	@
.L568:
	mov	r3, #0	@ i.1998,
	b	.L571	@
.L643:
	mov	r2, #544	@ tmp451,
	mla	r3, r2, r4, r5	@ tmp452, tmp451, i.2020, pstInst
	ldr	r6, [r3, #620]	@ prephitmp.2004, <variable>.pstDispOutFs
	b	.L567	@
.L641:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1511	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39328,
	b	.L535	@
.L646:
	ldr	r0, .L648	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r6	@, D.39435
	movw	r1, #:lower16:.LC55	@,
	movt	r1, #:upper16:.LC55	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39328,
	b	.L535	@
.L538:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC47	@,
	movt	r1, #:upper16:.LC47	@,
	bl	dprint_vfmw	@
	ldr	r0, .L648	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.39328,
	b	.L535	@
.L550:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC49	@,
	movw	r2, #:lower16:.LANCHOR2	@,
	movt	r1, #:upper16:.LC49	@,
	movt	r2, #:upper16:.LANCHOR2	@,
	bl	dprint_vfmw	@
	ldr	r0, .L648	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.39328,
	b	.L535	@
.L649:
	.align	2
.L648:
	.word	.LANCHOR1-3876
	.fnend
	.size	FSP_NewLogicFs, .-FSP_NewLogicFs
	.align	2
	.global	FSP_PartitionFsMemory
	.type	FSP_PartitionFsMemory, %function
FSP_PartitionFsMemory:
	.fnstart
.LFB1546:
	@ args = 0, pretend = 0, frame = 976
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
	mov	r5, r0	@ InstID, InstID
	mov	r9, r1	@ MemPhyAddr, MemPhyAddr
	sub	r0, fp, #992	@,,
	mov	r1, #940	@,
	str	r2, [fp, #-1004]	@ MemSize, %sfp
	str	r3, [fp, #-1008]	@ UsedMemSize, %sfp
	bl	__memzero	@
	cmp	r5, #15	@ InstID,
	bhi	.L718	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp204,
	movt	r3, #:upper16:.LANCHOR0	@ tmp204,
	ldr	r4, [r3, r5, asl #2]	@ D.38908, s_pFspInst
	cmp	r4, #0	@ D.38908,
	beq	.L719	@,
	movw	r6, #:lower16:s_pstVfmwChan	@ tmp637,
	movt	r6, #:upper16:s_pstVfmwChan	@ tmp637,
	movw	r2, #:lower16:251556	@ tmp209,
	movt	r2, #:upper16:251556	@ tmp209,
	ldr	r1, [r6, r5, asl #2]	@ prephitmp.2079, s_pstVfmwChan
	ldr	r0, [r1, r2]	@ <variable>.u32DynamicFrameStoreAllocEn, <variable>.u32DynamicFrameStoreAllocEn
	cmp	r0, #0	@ <variable>.u32DynamicFrameStoreAllocEn,
	beq	.L720	@,
	ldr	r7, [r4, #68]	@ prephitmp.2077, <variable>.stInstCfg.s32DecFsWidth
	ldr	ip, [r4, #72]	@ prephitmp.2223, <variable>.stInstCfg.s32DecFsHeight
	mul	r8, r7, ip	@ prephitmp.2224, prephitmp.2077, prephitmp.2223
.L656:
	ldr	r2, [r1, #144]	@ D.38937, <variable>.stChanCfg.s32MaxWidth
	ldr	r3, [r1, #148]	@ D.38938, <variable>.stChanCfg.s32MaxHeight
	mul	r0, r2, r3	@ tmp250, D.38937, D.38938
	cmp	r0, r8	@ tmp250, prephitmp.2224
	blt	.L721	@,
	ldr	r3, [r4, #88]	@ D.38948, <variable>.stInstCfg.s32DispFsHeight
	cmp	r3, #0	@ D.38948,
	bne	.L662	@,
	ldrb	r0, [r4, #56]	@ zero_extendqisi2	@, <variable>.stInstCfg.s32DispLoopEnable
	str	r0, [fp, #-1000]	@, %sfp
.L663:
	ldr	r8, [r1, #1424]	@ <variable>.stSynExtraData.stChanOption.u32DynamicFrameStoreAllocEn, <variable>.stSynExtraData.stChanOption.u32DynamicFrameStoreAllocEn
	ldrb	sl, [r4, #61]	@ zero_extendqisi2	@ D.38955, <variable>.stInstCfg.s32ExpectedDecFsNum
	cmp	r8, #1	@ <variable>.stSynExtraData.stChanOption.u32DynamicFrameStoreAllocEn,
	beq	.L722	@,
.L665:
	movw	r8, #:lower16:249276	@ tmp265,
	movt	r8, #:upper16:249276	@ tmp265,
	sxtb	sl, sl	@ D.38956, D.38955
	movw	r7, #:lower16:249296	@ tmp267,
	ldr	lr, [r1, r8]	@ <variable>.s32RefNum, <variable>.s32RefNum
	movt	r7, #:upper16:249296	@ tmp267,
	movw	ip, #:lower16:g_vdm_hal_fun_ptr	@ tmp275,
	movt	ip, #:upper16:g_vdm_hal_fun_ptr	@ tmp275,
	cmp	sl, lr	@ D.38956, <variable>.s32RefNum
	movne	r2, #1	@ tmp268,
	moveq	r2, #0	@ tmp270,
	str	r2, [r1, r7]	@ tmp270, <variable>.s32RefNumChanged
	movw	r2, #:lower16:249276	@ tmp273,
	ldr	r0, [r6, r5, asl #2]	@ tmp272, s_pstVfmwChan
	movt	r2, #:upper16:249276	@ tmp273,
	ldrsb	r3, [r4, #61]	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.stInstCfg.s32ExpectedDecFsNum
	movw	r7, #:lower16:s_pstVfmwChan	@ tmp271,
	movt	r7, #:upper16:s_pstVfmwChan	@ tmp271,
	str	r3, [r0, r2]	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.s32RefNum
	ldr	r8, [ip, #48]	@ D.38973, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	r8, #0	@ D.38973,
	beq	.L669	@,
	ldrsb	ip, [r4, #64]	@ <variable>.stInstCfg.s32ExpectedPmvNum, <variable>.stInstCfg.s32ExpectedPmvNum
	mov	lr, #40	@ tmp279,
	ldr	r2, [r4, #68]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	mov	r0, r9	@, MemPhyAddr
	ldr	r3, [r4, #72]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	ip, [sp, #0]	@ <variable>.stInstCfg.s32ExpectedPmvNum,
	sub	ip, fp, #992	@ tmp282,,
	str	lr, [sp, #4]	@ tmp279,
	ldrsb	lr, [r4, #60]	@ <variable>.stInstCfg.s32UserDec, <variable>.stInstCfg.s32UserDec
	ldr	r1, [fp, #-1004]	@, %sfp
	str	ip, [sp, #16]	@ tmp282,
	str	r5, [sp, #12]	@ InstID,
	str	lr, [sp, #8]	@ <variable>.stInstCfg.s32UserDec,
	blx	r8	@ D.38973
	cmp	r0, #2	@ Ret,
	mov	r8, r0	@ Ret,
	bne	.L723	@,
	ldr	ip, [fp, #-444]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	mov	r1, #1	@ tmp293,
	strb	ip, [r4, #9]	@ MemArrange.ValidFrameNum, <variable>.s8TotalValidFsNum
	ldr	r3, [r7, r5, asl #2]	@ tmp292, s_pstVfmwChan
	str	r1, [r3, #1464]	@ tmp293, <variable>.stSynExtraData.s32WaitFsFlag
.L652:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L662:
	ldr	r2, [r4, #84]	@ D.38950, <variable>.stInstCfg.s32DispFsWidth
	cmp	r2, #0	@ D.38950,
	bne	.L664	@,
	ldrb	r2, [r4, #56]	@ zero_extendqisi2	@, <variable>.stInstCfg.s32DispLoopEnable
	str	r2, [fp, #-1000]	@, %sfp
	ldr	r8, [r1, #1424]	@ <variable>.stSynExtraData.stChanOption.u32DynamicFrameStoreAllocEn, <variable>.stSynExtraData.stChanOption.u32DynamicFrameStoreAllocEn
	ldrb	sl, [r4, #61]	@ zero_extendqisi2	@ D.38955, <variable>.stInstCfg.s32ExpectedDecFsNum
	cmp	r8, #1	@ <variable>.stSynExtraData.stChanOption.u32DynamicFrameStoreAllocEn,
	bne	.L665	@,
.L722:
	movw	r3, #:lower16:249264	@ tmp257,
	movt	r3, #:upper16:249264	@ tmp257,
	ldr	r2, [r1, r3]	@ D.38964, <variable>.FspInst.eFspPartitionState
	cmp	r2, #0	@ D.38964,
	cmpne	r2, #2	@, D.38964,
	movne	r8, #0	@, tmp264
	moveq	r8, #1	@, tmp264
	beq	.L665	@,
	cmp	r2, #1	@ D.38964,
	moveq	r0, r8	@ D.38906, tmp264
	beq	.L652	@,
	strb	r8, [r4, #9]	@ tmp264, <variable>.s8TotalValidFsNum
	mov	r0, #31	@,
	ldr	r2, [r6, r5, asl #2]	@ tmp287, s_pstVfmwChan
	movw	r1, #:lower16:.LC59	@,
	movt	r1, #:upper16:.LC59	@,
	ldr	r2, [r2, r3]	@, <variable>.FspInst.eFspPartitionState
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38906,
	b	.L652	@
.L720:
	mov	r0, r5	@, InstID
	bl	VCTRL_GetChanCapLevel	@
	cmp	r0, #32	@ eChanCapLevel,
	bls	.L724	@,
.L655:
	ldrsb	r1, [r4, #60]	@ <variable>.stInstCfg.s32UserDec, <variable>.stInstCfg.s32UserDec
	cmp	r1, #1	@ <variable>.stInstCfg.s32UserDec,
	bne	.L657	@,
	ldr	r7, [r4, #68]	@ prephitmp.2077, <variable>.stInstCfg.s32DecFsWidth
	ldr	ip, [r4, #72]	@ prephitmp.2223, <variable>.stInstCfg.s32DecFsHeight
	ldr	r1, [r6, r5, asl #2]	@ prephitmp.2079, s_pstVfmwChan
	mul	r8, r7, ip	@ prephitmp.2224, prephitmp.2077, prephitmp.2223
	b	.L656	@
.L669:
	mvn	r8, #0	@ Ret,
.L673:
	mov	lr, #0	@ tmp324,
	strb	lr, [r4, #9]	@ tmp324, <variable>.s8TotalValidFsNum
	ldr	ip, [r6, r5, asl #2]	@ tmp327, s_pstVfmwChan
	mov	r0, lr	@, tmp324
	mov	r2, r8	@, Ret
	movw	r1, #:lower16:.LC61	@,
	movt	r1, #:upper16:.LC61	@,
	str	lr, [ip, #1464]	@ tmp324, <variable>.stSynExtraData.s32WaitFsFlag
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38906,
	b	.L652	@
.L664:
	ldrb	r0, [r4, #56]	@ zero_extendqisi2	@, <variable>.stInstCfg.s32DispLoopEnable
	cmp	r0, #0	@,
	str	r0, [fp, #-1000]	@, %sfp
	beq	.L663	@,
	cmp	r3, ip	@ D.38948, prephitmp.2223
	beq	.L725	@,
.L661:
	mvn	r0, #0	@ D.38906,
	b	.L652	@
.L723:
	cmp	r0, #0	@ Ret,
	bne	.L673	@,
	ldr	r1, [fp, #-444]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	strb	r1, [r4, #9]	@ MemArrange.ValidFrameNum, <variable>.s8TotalValidFsNum
	ldr	r2, [r7, r5, asl #2]	@ tmp297, s_pstVfmwChan
	str	r0, [r2, #1464]	@ Ret, <variable>.stSynExtraData.s32WaitFsFlag
	ldr	lr, [r7, r5, asl #2]	@ tmp300, s_pstVfmwChan
	ldr	r0, [lr, #1424]	@ <variable>.stSynExtraData.stChanOption.u32DynamicFrameStoreAllocEn, <variable>.stSynExtraData.stChanOption.u32DynamicFrameStoreAllocEn
	cmp	r0, #1	@ <variable>.stSynExtraData.stChanOption.u32DynamicFrameStoreAllocEn,
	beq	.L726	@,
.L674:
	ldr	r0, [fp, #-1000]	@, %sfp
	movw	r1, #:lower16:.LC60	@,
	movt	r1, #:upper16:.LC60	@,
	sxtb	r3, r0	@ prephitmp.2081,
	mov	r0, #31	@,
	add	sl, sl, r3, asl #2	@, MinFsNum, D.38956, prephitmp.2081,
	bl	dprint_vfmw	@
	ldr	ip, [fp, #-444]	@ temp.2246, MemArrange.ValidFrameNum
	cmp	sl, ip	@ MinFsNum, temp.2246
	bgt	.L727	@,
	ldrsb	sl, [r4, #56]	@ <variable>.stInstCfg.s32DispLoopEnable, <variable>.stInstCfg.s32DispLoopEnable
	mov	r9, #0	@ tmp330,
	strb	r9, [r4, #12]	@ tmp330, <variable>.s32TfFsNum
	cmp	sl, r9	@ <variable>.stInstCfg.s32DispLoopEnable,
	strb	r9, [r4, #11]	@ tmp330, <variable>.s32DispFsNum
	bne	.L681	@,
	ldrsb	r7, [r4, #1]	@ <variable>.s8LowBufEnable, <variable>.s8LowBufEnable
	cmp	r7, #0	@ <variable>.s8LowBufEnable,
	beq	.L682	@,
	ldr	r8, [r6, r5, asl #2]	@ tmp337, s_pstVfmwChan
	ldr	r5, [r8, #1424]	@ <variable>.stSynExtraData.stChanOption.u32DynamicFrameStoreAllocEn, <variable>.stSynExtraData.stChanOption.u32DynamicFrameStoreAllocEn
	cmp	r5, #1	@ <variable>.stSynExtraData.stChanOption.u32DynamicFrameStoreAllocEn,
	beq	.L682	@,
	ldrsb	r1, [r4, #61]	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.stInstCfg.s32ExpectedDecFsNum
	ldr	r2, [fp, #-444]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	add	r6, r1, #4	@ tmp339, <variable>.stInstCfg.s32ExpectedDecFsNum,
	cmp	r6, r2	@ tmp339, MemArrange.ValidFrameNum
	movge	r6, r2	@ tmp653, MemArrange.ValidFrameNum
	uxtb	sl, r6	@ prephitmp.2227, tmp653
	strb	sl, [r4, #10]	@ prephitmp.2227, <variable>.s32DecFsNum
	b	.L683	@
.L681:
	ldrb	sl, [r4, #61]	@ zero_extendqisi2	@ prephitmp.2227, <variable>.stInstCfg.s32ExpectedDecFsNum
	strb	sl, [r4, #10]	@ prephitmp.2227, <variable>.s32DecFsNum
.L683:
	add	lr, r4, #34816	@, D.38908,
	mov	r0, #0	@ ivtmp.2182,
	add	r9, lr, #180	@,,
	str	lr, [fp, #-1000]	@, %sfp
	str	r9, [fp, #-1004]	@, %sfp
	add	r8, lr, #160	@ ivtmp.2180,,
	add	r7, lr, #168	@ ivtmp.2192,,
	add	r6, lr, #176	@ ivtmp.2198,,
	sub	r5, fp, #992	@ ivtmp.2326,,
	mov	r1, r0	@ i.2244, ivtmp.2182
	mov	ip, r0	@ tmp648, ivtmp.2182
	b	.L684	@
.L729:
	str	r1, [r8, #0]	@ i.2244, <variable>.PhyFsID
	ldr	lr, [r5, #8]	@ tmp353, MemArrange.FrameAddr
	str	lr, [r7, #0]	@ tmp353, <variable>.PhyAddr
	ldr	r2, [r5, #264]	@ tmp356, MemArrange.LineNumAddr
	str	r2, [r3, #172]	@ tmp356, <variable>.LineNumAddr
	ldr	lr, [fp, #-992]	@ MemArrange.VahbStride, MemArrange.VahbStride
	str	lr, [r6, #0]	@ MemArrange.VahbStride, <variable>.Stride
	ldr	r2, [fp, #-472]	@ MemArrange.VahbStride_2bit, MemArrange.VahbStride_2bit
	str	r2, [r9, #0]	@ MemArrange.VahbStride_2bit, <variable>.Stride_2bit
	ldr	lr, [fp, #-464]	@ MemArrange.LumaOffset_2bit, MemArrange.LumaOffset_2bit
	str	lr, [r3, #184]	@ MemArrange.LumaOffset_2bit, <variable>.LumaOffset_2bit
	ldr	r2, [fp, #-460]	@ MemArrange.ChromOffset_2bit, MemArrange.ChromOffset_2bit
	str	r2, [r3, #188]	@ MemArrange.ChromOffset_2bit, <variable>.ChromOffset_2bit
	ldr	lr, [r4, #68]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	str	lr, [r3, #192]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.FsWidth
	ldr	r2, [r4, #72]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	r2, [r3, #196]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.FsHeight
	ldr	lr, [fp, #-456]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	lr, [r3, #200]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	ldr	r2, [fp, #-452]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	r2, [r3, #204]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	ldr	lr, [fp, #-448]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	ip, [r3, #158]	@ tmp648, <variable>.DispState
	strb	ip, [r3, #156]	@ tmp648, <variable>.IsDecRef
	str	lr, [r3, #208]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	strb	ip, [r3, #157]	@ tmp648, <variable>.IsTfRef
.L686:
	add	r1, r1, #1	@ i.2244, i.2244,
	add	r8, r8, #60	@ ivtmp.2180, ivtmp.2180,
	cmp	r1, #64	@ i.2244,
	add	r0, r0, #60	@ ivtmp.2182, ivtmp.2182,
	add	r5, r5, #4	@ ivtmp.2326, ivtmp.2326,
	add	r7, r7, #60	@ ivtmp.2192, ivtmp.2192,
	add	r6, r6, #60	@ ivtmp.2198, ivtmp.2198,
	add	r9, r9, #60	@ ivtmp.2327, ivtmp.2327,
	beq	.L728	@,
	ldrb	sl, [r4, #10]	@ zero_extendqisi2	@ prephitmp.2227, <variable>.s32DecFsNum
.L684:
	add	r2, r4, r0	@ D.42108, D.38908, ivtmp.2182
	sxtb	sl, sl	@ prephitmp.2227, prephitmp.2227
	add	r3, r2, #34816	@ tmp355, D.42108,
	cmp	r1, sl	@ i.2244, prephitmp.2227
	mov	r2, r3	@ tmp397, tmp355
	blt	.L729	@,
	str	ip, [r8, #0]	@ tmp648, <variable>.PhyFsID
	ldr	lr, [fp, #-984]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	str	lr, [r7, #0]	@ MemArrange.FrameAddr, <variable>.PhyAddr
	ldr	r3, [fp, #-992]	@ MemArrange.VahbStride, MemArrange.VahbStride
	str	r3, [r6, #0]	@ MemArrange.VahbStride, <variable>.Stride
	ldr	lr, [fp, #-472]	@ MemArrange.VahbStride_2bit, MemArrange.VahbStride_2bit
	str	lr, [r9, #0]	@ MemArrange.VahbStride_2bit, <variable>.Stride_2bit
	ldr	r3, [fp, #-464]	@ MemArrange.LumaOffset_2bit, MemArrange.LumaOffset_2bit
	str	r3, [r2, #184]	@ MemArrange.LumaOffset_2bit, <variable>.LumaOffset_2bit
	ldr	lr, [fp, #-460]	@ MemArrange.ChromOffset_2bit, MemArrange.ChromOffset_2bit
	str	lr, [r2, #188]	@ MemArrange.ChromOffset_2bit, <variable>.ChromOffset_2bit
	ldr	r3, [r4, #68]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	str	r3, [r2, #192]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.FsWidth
	ldr	lr, [r4, #72]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	lr, [r2, #196]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.FsHeight
	ldr	r3, [fp, #-456]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	r3, [r2, #200]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	ldr	lr, [fp, #-452]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	lr, [r2, #204]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	ldr	r3, [fp, #-448]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	ip, [r2, #158]	@ tmp648, <variable>.DispState
	strb	ip, [r2, #156]	@ tmp648, <variable>.IsDecRef
	str	r3, [r2, #208]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	strb	ip, [r2, #157]	@ tmp648, <variable>.IsTfRef
	b	.L686	@
.L728:
	ldrsb	r2, [r4, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	sub	ip, fp, #44	@,,
	movw	r0, #42656	@ tmp431,
	mov	r1, #0	@ tmp432,
	mov	lr, #1	@ tmp429,
	str	r1, [r4, r0]	@ tmp432, <variable>.PhyFsID
	add	r6, ip, r2, asl #2	@, tmp438,, <variable>.s32DecFsNum,
	strb	lr, [r4, #12]	@ tmp429, <variable>.s32TfFsNum
	movw	r3, #42664	@ tmp433,
	ldr	ip, [r4, #72]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	ldr	r5, [r6, #-940]	@ tmp440, MemArrange.FrameAddr
	movw	lr, #42672	@ tmp441,
	ldr	r6, [r4, #68]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	str	r5, [r4, r3]	@ tmp440, <variable>.PhyAddr
	ldr	r0, [fp, #-992]	@ MemArrange.VahbStride, MemArrange.VahbStride
	ldrsb	r3, [r4, #56]	@ <variable>.stInstCfg.s32DispLoopEnable, <variable>.stInstCfg.s32DispLoopEnable
	str	r0, [r4, lr]	@ MemArrange.VahbStride, <variable>.Stride
	movw	r0, #34996	@ tmp443,
	ldr	r5, [fp, #-472]	@ MemArrange.VahbStride_2bit, MemArrange.VahbStride_2bit
	cmp	r3, r1	@ <variable>.stInstCfg.s32DispLoopEnable,
	str	r5, [r4, r0]	@ MemArrange.VahbStride_2bit, <variable>.Stride_2bit
	movw	r0, #35000	@ tmp445,
	ldr	lr, [fp, #-464]	@ MemArrange.LumaOffset_2bit, MemArrange.LumaOffset_2bit
	movw	r5, #42688	@ tmp449,
	str	lr, [r4, r0]	@ MemArrange.LumaOffset_2bit, <variable>.LumaOffset_2bit
	ldr	lr, [fp, #-460]	@ MemArrange.ChromOffset_2bit, MemArrange.ChromOffset_2bit
	str	r6, [r4, r5]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.FsWidth
	movw	r5, #42692	@ tmp451,
	str	ip, [r4, r5]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.FsHeight
	movw	ip, #35004	@ tmp447,
	str	lr, [r4, ip]	@ MemArrange.ChromOffset_2bit, <variable>.ChromOffset_2bit
	movw	lr, #42696	@ tmp453,
	ldr	r0, [fp, #-456]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	r0, [r4, lr]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	movw	r0, #42700	@ tmp455,
	ldr	ip, [fp, #-452]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	movw	lr, #42652	@ tmp459,
	str	ip, [r4, r0]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	movw	r0, #42653	@ tmp462,
	ldr	ip, [fp, #-448]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r1, [r4, lr]	@ tmp432, <variable>.IsDecRef
	movw	lr, #42704	@ tmp457,
	strb	r1, [r4, r0]	@ tmp432, <variable>.IsTfRef
	movw	r0, #42654	@ tmp465,
	str	ip, [r4, lr]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	strb	r1, [r4, r0]	@ tmp432, <variable>.DispState
	bne	.L688	@,
	mov	r2, r3	@ prephitmp.2086, <variable>.stInstCfg.s32DispLoopEnable
	strb	r3, [r4, #11]	@ <variable>.stInstCfg.s32DispLoopEnable, <variable>.s32DispFsNum
.L690:
	ldr	r7, [fp, #-1000]	@, %sfp
	add	r9, r4, #38656	@ tmp471, D.38908,
	mov	ip, #0	@ ivtmp.2140,
	add	sl, r9, #176	@ ivtmp.2146, tmp471,
	add	r8, r7, #184	@ ivtmp.2150,,
	add	r6, r9, #168	@ ivtmp.2144, tmp471,
	add	r7, r9, #160	@ ivtmp.2138, tmp471,
	mov	r3, ip	@ i, ivtmp.2140
	mov	r5, ip	@ tmp646, ivtmp.2140
	ldr	r0, [fp, #-1004]	@ ivtmp.2200, %sfp
	str	r2, [fp, #-1016]	@ prephitmp.2086, %sfp
	b	.L689	@
.L731:
	str	r3, [r7, #0]	@ i, <variable>.PhyFsID
	ldrsb	lr, [r4, #12]	@ <variable>.s32TfFsNum, <variable>.s32TfFsNum
	ldrsb	r9, [r4, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	r2, r3, lr	@ tmp491, i, <variable>.s32TfFsNum
	add	lr, r2, r9	@ tmp492, tmp491, <variable>.s32DecFsNum
	sub	r9, fp, #44	@,,
	add	r2, r9, lr, asl #2	@, tmp496,, tmp492,
	ldr	r9, [r2, #-940]	@ tmp498, MemArrange.FrameAddr
	str	r9, [r6, #0]	@ tmp498, <variable>.PhyAddr
	ldr	lr, [fp, #-992]	@ MemArrange.VahbStride, MemArrange.VahbStride
	str	lr, [sl, #0]	@ MemArrange.VahbStride, <variable>.Stride
	ldr	r2, [fp, #-472]	@ MemArrange.VahbStride_2bit, MemArrange.VahbStride_2bit
	str	r2, [r0, #0]	@ MemArrange.VahbStride_2bit, <variable>.Stride_2bit
	ldr	r9, [fp, #-464]	@ MemArrange.LumaOffset_2bit, MemArrange.LumaOffset_2bit
	str	r9, [r8, #0]	@ MemArrange.LumaOffset_2bit, <variable>.LumaOffset_2bit
	ldr	lr, [fp, #-460]	@ MemArrange.ChromOffset_2bit, MemArrange.ChromOffset_2bit
	ldr	r9, [fp, #-1000]	@, %sfp
	str	lr, [r9, #188]	@ MemArrange.ChromOffset_2bit, <variable>.ChromOffset_2bit
	ldr	r2, [r4, #84]	@ <variable>.stInstCfg.s32DispFsWidth, <variable>.stInstCfg.s32DispFsWidth
	str	r2, [r1, #192]	@ <variable>.stInstCfg.s32DispFsWidth, <variable>.FsWidth
	ldr	lr, [r4, #88]	@ <variable>.stInstCfg.s32DispFsHeight, <variable>.stInstCfg.s32DispFsHeight
	str	lr, [r1, #196]	@ <variable>.stInstCfg.s32DispFsHeight, <variable>.FsHeight
	ldr	r2, [fp, #-456]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	r2, [r1, #200]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	ldr	lr, [fp, #-452]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	lr, [r1, #204]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	ldr	r2, [fp, #-448]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r5, [r1, #158]	@ tmp646, <variable>.DispState
	strb	r5, [r1, #156]	@ tmp646, <variable>.IsDecRef
	str	r2, [r1, #208]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	strb	r5, [r1, #157]	@ tmp646, <variable>.IsTfRef
.L692:
	add	r3, r3, #1	@ i, i,
	add	r7, r7, #60	@ ivtmp.2138, ivtmp.2138,
	cmp	r3, #64	@ i,
	add	ip, ip, #60	@ ivtmp.2140, ivtmp.2140,
	add	r6, r6, #60	@ ivtmp.2144, ivtmp.2144,
	add	sl, sl, #60	@ ivtmp.2146, ivtmp.2146,
	add	r0, r0, #60	@ ivtmp.2200, ivtmp.2200,
	add	r8, r8, #60	@ ivtmp.2150, ivtmp.2150,
	beq	.L730	@,
	ldrsb	r1, [r4, #11]	@, <variable>.s32DispFsNum
	str	r1, [fp, #-1016]	@, %sfp
.L689:
	ldr	r9, [fp, #-1016]	@, %sfp
	add	r2, r4, ip	@ D.42016, D.38908, ivtmp.2140
	add	r1, r2, #38656	@ tmp506, D.42016,
	add	lr, r2, #34816	@, D.42016,
	cmp	r3, r9	@ i,
	str	lr, [fp, #-1000]	@, %sfp
	str	lr, [fp, #-1004]	@, %sfp
	mov	r2, r1	@ tmp549, tmp506
	blt	.L731	@,
	str	r5, [r7, #0]	@ tmp646, <variable>.PhyFsID
	ldrsb	r9, [r4, #12]	@ <variable>.s32TfFsNum, <variable>.s32TfFsNum
	ldrsb	r1, [r4, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	lr, r9, r1	@ tmp535, <variable>.s32TfFsNum, <variable>.s32DecFsNum
	sub	r9, fp, #44	@,,
	add	r1, r9, lr, asl #2	@, tmp539,, tmp535,
	ldr	r9, [r1, #-940]	@ tmp541, MemArrange.FrameAddr
	str	r9, [r6, #0]	@ tmp541, <variable>.PhyAddr
	ldr	lr, [fp, #-992]	@ MemArrange.VahbStride, MemArrange.VahbStride
	str	lr, [sl, #0]	@ MemArrange.VahbStride, <variable>.Stride
	ldr	r1, [fp, #-472]	@ MemArrange.VahbStride_2bit, MemArrange.VahbStride_2bit
	str	r1, [r0, #0]	@ MemArrange.VahbStride_2bit, <variable>.Stride_2bit
	ldr	r9, [fp, #-464]	@ MemArrange.LumaOffset_2bit, MemArrange.LumaOffset_2bit
	str	r9, [r8, #0]	@ MemArrange.LumaOffset_2bit, <variable>.LumaOffset_2bit
	ldr	lr, [fp, #-460]	@ MemArrange.ChromOffset_2bit, MemArrange.ChromOffset_2bit
	ldr	r9, [fp, #-1004]	@, %sfp
	str	lr, [r9, #188]	@ MemArrange.ChromOffset_2bit, <variable>.ChromOffset_2bit
	ldr	r1, [r4, #84]	@ <variable>.stInstCfg.s32DispFsWidth, <variable>.stInstCfg.s32DispFsWidth
	str	r1, [r2, #192]	@ <variable>.stInstCfg.s32DispFsWidth, <variable>.FsWidth
	ldr	lr, [r4, #88]	@ <variable>.stInstCfg.s32DispFsHeight, <variable>.stInstCfg.s32DispFsHeight
	str	lr, [r2, #196]	@ <variable>.stInstCfg.s32DispFsHeight, <variable>.FsHeight
	ldr	r1, [fp, #-456]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	r1, [r2, #200]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	ldr	lr, [fp, #-452]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	lr, [r2, #204]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	ldr	r1, [fp, #-448]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r5, [r2, #158]	@ tmp646, <variable>.DispState
	strb	r5, [r2, #156]	@ tmp646, <variable>.IsDecRef
	str	r1, [r2, #208]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	strb	r5, [r2, #157]	@ tmp646, <variable>.IsTfRef
	b	.L692	@
.L730:
	ldr	r3, [fp, #-56]	@ MemArrange.ValidPMVNum, MemArrange.ValidPMVNum
	add	r0, r4, #42752	@ ivtmp.2120, D.38908,
	add	r1, r0, #24	@ ivtmp.2120, ivtmp.2120,
	mov	ip, #0	@ tmp645,
	cmp	r3, #20	@ MemArrange.ValidPMVNum,
	movge	r3, #20	@ tmp575,
	uxtb	r5, r3	@ prephitmp.2308, tmp575
	strb	r5, [r4, #13]	@ prephitmp.2308, <variable>.s32PmvNum
	ldr	r2, [fp, #-180]	@ tmp670, MemArrange.PMVAddr
	sub	r5, fp, #992	@,,
	add	r0, r5, #4	@ ivtmp.2190,,
	mov	r3, #1	@ i.2278,
	strb	ip, [r4, #14]	@ tmp645, <variable>.IsPmvInUse
	str	r2, [r1, #0]	@ tmp670, <variable>.PmvAddr
	add	r1, r1, #4	@ ivtmp.2120, ivtmp.2120,
	add	r2, r4, r3	@ ivtmp.2126, D.38908,
	ldrb	r5, [r4, #13]	@ zero_extendqisi2	@ prephitmp.2308, <variable>.s32PmvNum
	b	.L697	@
.L732:
	ldr	r5, [r0, #812]	@ tmp674, MemArrange.PMVAddr
	strb	ip, [r2, #14]	@ tmp645, <variable>.IsPmvInUse
	str	r5, [r1, #0]	@ tmp674, <variable>.PmvAddr
.L715:
	ldrb	r5, [r4, #13]	@ zero_extendqisi2	@ prephitmp.2308, <variable>.s32PmvNum
	add	r3, r3, #1	@ i.2278, tmp649,
	add	r0, r0, #4	@ ivtmp.2190, tmp650,
	add	r1, r1, #4	@ ivtmp.2120, tmp651,
	add	r2, r2, #1	@ ivtmp.2126, tmp652,
.L697:
	sxtb	lr, r5	@ prephitmp.2308, prephitmp.2308
	cmp	r3, lr	@ i.2278, prephitmp.2308
	add	r3, r3, #1	@ tmp649, i.2278,
	ldrlt	lr, [r0, #812]	@ tmp580, MemArrange.PMVAddr
	add	r0, r0, #4	@ tmp650, ivtmp.2190,
	ldrge	lr, [fp, #-180]	@ MemArrange.PMVAddr, MemArrange.PMVAddr
	cmp	r3, #20	@ tmp649,
	strb	ip, [r2, #14]	@ tmp645, <variable>.IsPmvInUse
	add	r2, r2, #1	@ tmp652, ivtmp.2126,
	str	lr, [r1, #0]	@ MemArrange.PMVAddr, <variable>.PmvAddr
	add	r1, r1, #4	@ tmp651, ivtmp.2120,
	beq	.L696	@,
	ldrsb	r5, [r4, #13]	@ prephitmp.2308, <variable>.s32PmvNum
	cmp	r3, r5	@ tmp649, prephitmp.2308
	blt	.L732	@,
	ldr	lr, [fp, #-180]	@ MemArrange.PMVAddr, MemArrange.PMVAddr
	strb	ip, [r2, #14]	@ tmp645, <variable>.IsPmvInUse
	str	lr, [r1, #0]	@ MemArrange.PMVAddr, <variable>.PmvAddr
	b	.L715	@
.L696:
	movw	r5, #34984	@ tmp591,
	ldr	lr, [fp, #-60]	@ MemArrange.HafPmvOffset, MemArrange.HafPmvOffset
	ldr	r1, [r4, r5]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r3, #42772	@ tmp586,
	movw	r0, #34924	@ tmp590,
	movw	r2, #34916	@ tmp588,
	str	lr, [r4, r3]	@ MemArrange.HafPmvOffset, <variable>.s32HalfPmvOffset
	mov	r3, #0	@ tmp589,
	str	r1, [r4, r0]	@ <variable>.PhyAddr, <variable>.stDummyPhyFs.PhyAddr
	movw	r5, #34932	@ tmp593,
	str	r3, [r4, r2]	@ tmp589, <variable>.stDummyPhyFs.PhyFsID
	movw	lr, #34936	@ tmp595,
	ldr	ip, [fp, #-992]	@ MemArrange.VahbStride, MemArrange.VahbStride
	ldr	r2, [r4, #68]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	ldr	r0, [r4, #40]	@ <variable>.stPreInfo.s32PreWidth, <variable>.stPreInfo.s32PreWidth
	str	ip, [r4, r5]	@ MemArrange.VahbStride, <variable>.stDummyPhyFs.Stride
	ldr	r5, [fp, #-472]	@ MemArrange.VahbStride_2bit, MemArrange.VahbStride_2bit
	cmp	r2, r0	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stPreInfo.s32PreWidth
	ldr	r1, [r4, #72]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	movw	r0, #34948	@ tmp601,
	str	r5, [r4, lr]	@ MemArrange.VahbStride_2bit, <variable>.stDummyPhyFs.Stride_2bit
	movw	lr, #34940	@ tmp597,
	ldr	ip, [fp, #-464]	@ MemArrange.LumaOffset_2bit, MemArrange.LumaOffset_2bit
	str	ip, [r4, lr]	@ MemArrange.LumaOffset_2bit, <variable>.stDummyPhyFs.LumaOffset_2bit
	movw	lr, #34952	@ tmp603,
	ldr	ip, [fp, #-460]	@ MemArrange.ChromOffset_2bit, MemArrange.ChromOffset_2bit
	str	r2, [r4, r0]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stDummyPhyFs.FsWidth
	movw	r0, #34944	@ tmp599,
	str	r1, [r4, lr]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stDummyPhyFs.FsHeight
	str	ip, [r4, r0]	@ MemArrange.ChromOffset_2bit, <variable>.stDummyPhyFs.ChromOffset_2bit
	movw	r0, #34956	@ tmp605,
	ldr	lr, [fp, #-456]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	lr, [r4, r0]	@ MemArrange.ChromOffset, <variable>.stDummyPhyFs.ChromOffset
	movw	lr, #34960	@ tmp607,
	ldr	ip, [fp, #-452]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	movw	r0, #34914	@ tmp617,
	str	ip, [r4, lr]	@ MemArrange.LumaPixelOffset, <variable>.stDummyPhyFs.LumaPixelOffset
	movw	ip, #34912	@ tmp611,
	ldr	lr, [fp, #-448]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r3, [r4, r0]	@ tmp589, <variable>.stDummyPhyFs.DispState
	movw	r0, #34964	@ tmp609,
	strb	r3, [r4, ip]	@ tmp589, <variable>.stDummyPhyFs.IsDecRef
	movw	ip, #34913	@ tmp614,
	str	lr, [r4, r0]	@ MemArrange.ChromaPixelOffset, <variable>.stDummyPhyFs.ChromaPixelOffset
	strb	r3, [r4, ip]	@ tmp589, <variable>.stDummyPhyFs.IsTfRef
	beq	.L712	@,
.L716:
	ldrsb	r3, [r4, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
.L698:
	movw	lr, #35044	@ tmp627,
	movw	r0, #34984	@ tmp628,
	ldr	ip, [r4, lr]	@ <variable>.PhyAddr, <variable>.PhyAddr
	ldr	lr, [r4, r0]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r2, [r4, #40]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stPreInfo.s32PreWidth
	str	r1, [r4, #44]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stPreInfo.s32PreHeight
	rsb	r2, lr, ip	@ tmp631, <variable>.PhyAddr, <variable>.PhyAddr
	str	r3, [r4, #48]	@ <variable>.s32DecFsNum, <variable>.stPreInfo.s32PreDecNum
	str	r2, [r4, #52]	@ tmp631, <variable>.stPreInfo.s32PreDecSlotLen
.L699:
	ldr	r3, [fp, #-988]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	mov	r0, #0	@ D.38906,
	ldr	r1, [fp, #-1008]	@, %sfp
	str	r3, [r1, #0]	@ MemArrange.TotalMemUsed,
	b	.L652	@
.L688:
	ldr	r0, [fp, #-444]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	ldrsb	ip, [r4, #63]	@ <variable>.stInstCfg.s32ExpectedDispFsNum, <variable>.stInstCfg.s32ExpectedDispFsNum
	sub	r3, r0, #1	@ tmp476, MemArrange.ValidFrameNum,
	rsb	lr, r2, r3	@ tmp475, <variable>.s32DecFsNum, tmp476
	cmp	lr, #25	@ tmp475,
	movge	lr, #25	@ tmp654,
	uxtb	r2, lr	@ prephitmp.2086, tmp654
	strb	r2, [r4, #11]	@ prephitmp.2086, <variable>.s32DispFsNum
	sxtb	r2, r2	@ prephitmp.2086, prephitmp.2086
	cmp	ip, r2	@ <variable>.stInstCfg.s32ExpectedDispFsNum, prephitmp.2086
	ble	.L690	@,
	strb	r1, [r4, #9]	@ tmp432, <variable>.s8TotalValidFsNum
	mov	r0, r1	@, tmp432
	ldrsb	r3, [r4, #61]	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.stInstCfg.s32ExpectedDecFsNum
	movw	r1, #:lower16:.LC62	@,
	movt	r1, #:upper16:.LC62	@,
	str	ip, [sp, #0]	@ <variable>.stInstCfg.s32ExpectedDispFsNum,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38906,
	b	.L652	@
.L724:
	rsb	r2, r0, r0, asl #3	@, tmp216, eChanCapLevel, eChanCapLevel,
	movw	ip, #:lower16:CapItem	@ tmp213,
	add	r1, r2, #1	@ tmp217, tmp216,
	movt	ip, #:upper16:CapItem	@ tmp213,
	ldr	r7, [r4, #68]	@ prephitmp.2077, <variable>.stInstCfg.s32DecFsWidth
	ldr	r8, [ip, r2, asl #2]	@ tmp226, CapItem
	ldr	r3, [ip, r1, asl #2]	@ tmp225, CapItem
	ldr	ip, [r4, #72]	@ prephitmp.2223, <variable>.stInstCfg.s32DecFsHeight
	mul	lr, r8, r3	@ tmp224, tmp226, tmp225
	mul	r8, r7, ip	@ prephitmp.2224, prephitmp.2077, prephitmp.2223
	cmp	r0, #25	@ eChanCapLevel,
	cmpne	r8, lr	@, prephitmp.2224, tmp224
	ldrle	r1, [r6, r5, asl #2]	@ prephitmp.2079, s_pstVfmwChan
	ble	.L656	@,
	b	.L655	@
.L712:
	ldr	ip, [r4, #44]	@ <variable>.stPreInfo.s32PreHeight, <variable>.stPreInfo.s32PreHeight
	cmp	r1, ip	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stPreInfo.s32PreHeight
	bne	.L716	@,
	ldrsb	r3, [r4, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	ldr	r0, [r4, #48]	@ <variable>.stPreInfo.s32PreDecNum, <variable>.stPreInfo.s32PreDecNum
	cmp	r3, r0	@ <variable>.s32DecFsNum, <variable>.stPreInfo.s32PreDecNum
	bne	.L698	@,
	b	.L699	@
.L682:
	ldr	r3, [fp, #-444]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	cmp	r3, #40	@ MemArrange.ValidFrameNum,
	movge	r3, #40	@ tmp343,
	uxtb	sl, r3	@ prephitmp.2227, tmp343
	strb	sl, [r4, #10]	@ prephitmp.2227, <variable>.s32DecFsNum
	b	.L683	@
.L726:
	bl	OSAL_GetTimeInMs	@
	ldr	ip, [r7, r5, asl #2]	@ temp.2239, s_pstVfmwChan
	movw	r3, #:lower16:251532	@ tmp304,
	movt	r3, #:upper16:251532	@ tmp304,
	movw	r1, #:lower16:251552	@ tmp303,
	movt	r1, #:upper16:251552	@ tmp303,
	ldr	lr, [ip, r3]	@ <variable>.stDynamicFSTimestamp.u32StartTime, <variable>.stDynamicFSTimestamp.u32StartTime
	movw	r2, #:lower16:251536	@ tmp308,
	movt	r2, #:upper16:251536	@ tmp308,
	rsb	r0, lr, r0	@ tmp306, <variable>.stDynamicFSTimestamp.u32StartTime,
	str	r0, [ip, r1]	@ tmp306, <variable>.stDynamicFSTimestamp.u32AllTime
	ldr	r1, [r7, r5, asl #2]	@ temp.2240, s_pstVfmwChan
	movw	lr, #:lower16:251544	@ tmp310,
	movt	lr, #:upper16:251544	@ tmp310,
	ldr	ip, [r1, r2]	@ D.38997, <variable>.stDynamicFSTimestamp.u32PreEndTime
	movw	r2, #:lower16:251540	@ tmp312,
	ldr	r3, [r1, r3]	@ temp.2241, <variable>.stDynamicFSTimestamp.u32StartTime
	movt	r2, #:upper16:251540	@ tmp312,
	cmp	ip, r3	@ D.38997, temp.2241
	rsbcs	r8, r3, ip	@ iftmp.476, temp.2241, D.38997
	str	r8, [r1, lr]	@ iftmp.476, <variable>.stDynamicFSTimestamp.u32PreAllocTime
	ldr	r1, [r6, r5, asl #2]	@ temp.2242, s_pstVfmwChan
	movw	ip, #:lower16:251532	@ tmp313,
	movt	ip, #:upper16:251532	@ tmp313,
	ldr	lr, [r1, r2]	@ D.39002, <variable>.stDynamicFSTimestamp.u32MMZEndTime
	movw	r2, #:lower16:251552	@ tmp317,
	ldr	r3, [r1, ip]	@ temp.2243, <variable>.stDynamicFSTimestamp.u32StartTime
	movw	ip, #:lower16:251548	@ tmp314,
	movt	ip, #:upper16:251548	@ tmp314,
	movt	r2, #:upper16:251552	@ tmp317,
	cmp	lr, r3	@ D.39002, temp.2243
	rsbcs	r0, r3, lr	@ iftmp.477, temp.2243, D.39002
	movw	r3, #:lower16:g_u32DFSMaxAllocTime	@ tmp318,
	movcc	r0, #0	@ iftmp.477,
	str	r0, [r1, ip]	@ iftmp.477, <variable>.stDynamicFSTimestamp.u32MMZAllocTime
	ldr	r0, [r6, r5, asl #2]	@ tmp316, s_pstVfmwChan
	movt	r3, #:upper16:g_u32DFSMaxAllocTime	@ tmp318,
	ldr	lr, [r3, #0]	@ g_u32DFSMaxAllocTime, g_u32DFSMaxAllocTime
	ldr	ip, [r0, r2]	@ g_u32DFSMaxAllocTime.479, <variable>.stDynamicFSTimestamp.u32AllTime
	cmp	ip, lr	@ g_u32DFSMaxAllocTime.479, g_u32DFSMaxAllocTime
	strhi	ip, [r3, #0]	@ g_u32DFSMaxAllocTime.479, g_u32DFSMaxAllocTime
	b	.L674	@
.L657:
	cmp	r0, #32	@ eChanCapLevel,
	bls	.L658	@,
	mov	r2, r0	@, eChanCapLevel
	movw	r1, #:lower16:.LC56	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC56	@,
	bl	dprint_vfmw	@
.L659:
	mov	r3, #0	@ tmp248,
	mvn	r0, #0	@ D.38906,
	strb	r3, [r4, #9]	@ tmp248, <variable>.s8TotalValidFsNum
	b	.L652	@
.L718:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #665	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38906,
	b	.L652	@
.L721:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC58	@,
	movt	r1, #:upper16:.LC58	@,
	stmia	sp, {r7, ip}	@ phole stm
	bl	dprint_vfmw	@
	movw	r0, #:lower16:g_event_report	@ tmp252,
	movt	r0, #:upper16:g_event_report	@ tmp252,
	ldr	ip, [r0, #0]	@ g_event_report.474, g_event_report
	cmp	ip, #0	@ g_event_report.474,
	beq	.L661	@,
	mov	lr, #0	@ tmp254,
	mov	r1, #1	@ tmp253,
	mov	r0, r5	@, InstID
	str	r1, [fp, #-52]	@ tmp253, para
	str	lr, [fp, #-48]	@ tmp254, para
	mov	r1, #119	@,
	sub	r2, fp, #52	@,,
	add	r3, lr, #8	@,,
	blx	ip	@ g_event_report.474
	mvn	r0, #0	@ D.38906,
	b	.L652	@
.L658:
	mov	r2, #7	@ tmp243,
	mov	lr, #28	@ tmp239,
	mul	r1, r2, r0	@ tmp242, tmp243, eChanCapLevel
	movw	r3, #:lower16:CapItem	@ tmp237,
	mul	lr, lr, r0	@ tmp238, tmp239, eChanCapLevel
	movt	r3, #:upper16:CapItem	@ tmp237,
	mov	r2, r0	@, eChanCapLevel
	add	r0, r1, #1	@ tmp244, tmp242,
	movw	r1, #:lower16:.LC57	@,
	movt	r1, #:upper16:.LC57	@,
	ldr	ip, [r3, r0, asl #2]	@ tmp245, CapItem
	mov	r0, #0	@,
	str	ip, [sp, #0]	@ tmp245,
	ldr	ip, [r4, #68]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	ldr	r3, [lr, r3]	@, CapItem
	str	ip, [sp, #4]	@ <variable>.stInstCfg.s32DecFsWidth,
	ldr	lr, [r4, #72]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	lr, [sp, #8]	@ <variable>.stInstCfg.s32DecFsHeight,
	bl	dprint_vfmw	@
	b	.L659	@
.L727:
	mov	r0, #0	@,
	mov	r3, sl	@, MinFsNum
	movw	r1, #:lower16:.LC63	@,
	mov	r2, r0	@,
	movt	r1, #:upper16:.LC63	@,
	str	ip, [sp, #0]	@ temp.2246,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38906,
	b	.L652	@
.L719:
	mov	r0, r4	@, D.38908
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #666	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38906,
	b	.L652	@
.L725:
	cmp	r7, r2	@ prephitmp.2077, D.38950
	beq	.L663	@,
	mvn	r0, #0	@ D.38906,
	b	.L652	@
	.fnend
	.size	FSP_PartitionFsMemory, .-FSP_PartitionFsMemory
	.align	2
	.global	FSP_ClearNotInVoQueue
	.type	FSP_ClearNotInVoQueue, %function
FSP_ClearNotInVoQueue:
	.fnstart
.LFB1544:
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
	cmp	r0, #15	@ InstID,
	mov	r8, r0	@ InstID, InstID
	mov	r9, r1	@ pstVoQue, pstVoQue
	bhi	.L746	@,
	cmp	r1, #0	@ pstVoQue,
	beq	.L747	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp146,
	movt	r3, #:upper16:.LANCHOR0	@ tmp146,
	ldr	sl, [r3, r0, asl #2]	@ D.38839, s_pFspInst
	cmp	sl, #0	@ D.38839,
	movne	r6, sl	@ ivtmp.2361, D.38839
	movne	r4, #0	@ i,
	bne	.L739	@,
	b	.L751	@
.L738:
	add	r6, r5, r5, asl #4	@, tmp166, tmp160, tmp160,
	mov	r0, r8	@, InstID
	ldr	r1, [r7, #300]	@, <variable>.stDispImg.image_id
	mov	r2, #0	@,
	bl	FSP_SetRef	@
	add	r2, sl, r6, asl #5	@, tmp168, D.38839, tmp166,
	mov	r0, r9	@, pstVoQue
	add	r1, r2, #104	@, tmp168,
	bl	IsImageInVoQueue	@
	cmp	r0, #0	@,
	bne	.L749	@,
	add	r4, r5, #1	@ i, tmp160,
	add	r6, r7, #544	@ ivtmp.2361, tmp161,
	cmp	r4, #64	@ i,
	beq	.L750	@,
.L739:
	add	r5, r4, #1	@ tmp160, i,
	add	r4, r4, r4, asl #4	@, tmp153, i, i,
	ldr	r1, [r6, #300]	@, <variable>.stDispImg.image_id
	mov	r2, #0	@,
	mov	r0, r8	@, InstID
	add	r7, r6, #544	@ tmp161, ivtmp.2361,
	bl	FSP_SetRef	@
	add	r1, sl, r4, asl #5	@, tmp155, D.38839, tmp153,
	mov	r0, r9	@, pstVoQue
	add	r1, r1, #104	@, tmp155,
	bl	IsImageInVoQueue	@
	cmp	r0, #0	@,
	beq	.L738	@,
	ldr	r1, [r6, #300]	@, <variable>.stDispImg.image_id
	mov	r0, r8	@, InstID
	mov	r2, #0	@,
	bl	FSP_SetDisplay	@
	b	.L738	@
.L749:
	mov	r2, #0	@,
	mov	r0, r8	@, InstID
	ldr	r1, [r7, #300]	@, <variable>.stDispImg.image_id
	add	r4, r5, #1	@ i, tmp160,
	bl	FSP_SetDisplay	@
	cmp	r4, #64	@ i,
	add	r6, r7, #544	@ ivtmp.2361, tmp161,
	bne	.L739	@,
.L750:
	mov	r0, #0	@ D.38835,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L746:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #560	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38835,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L751:
	mov	r0, sl	@, D.38839
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #562	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38835,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L747:
	mov	r0, r1	@, pstVoQue
	movw	r2, #561	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC64	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC64	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38835,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	.fnend
	.size	FSP_ClearNotInVoQueue, .-FSP_ClearNotInVoQueue
	.global	s_pFspInst
	.global	s_FspVoQue
	.global	g_SpinLock_fsp
	.section	.rodata
	.align	2
.LANCHOR2 = . + 0
	.type	__func__.39308, %object
	.size	__func__.39308, 15
__func__.39308:
	.ascii	"FSP_NewLogicFs\000"
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"fsp.c,L%d: %s\012\000"
	.space	1
.LC1:
	.ascii	"InstID out of range\000"
.LC2:
	.ascii	"fsp is not inited\000"
	.space	2
.LC3:
	.ascii	"p_image NULL\000"
	.space	3
.LC4:
	.ascii	"Flag Invalid\000"
	.space	3
.LC5:
	.ascii	"FSP CONTEXT:\012\000"
	.space	2
.LC6:
	.ascii	"%-35s :%d\012\000"
	.space	1
.LC7:
	.ascii	"FspInstState\000"
	.space	3
.LC8:
	.ascii	"DecFsWidth\000"
	.space	1
.LC9:
	.ascii	"DecFsHeight\000"
.LC10:
	.ascii	"DispFsWidth\000"
.LC11:
	.ascii	"DispFsHeight\000"
	.space	3
.LC12:
	.ascii	"ExpectedDecFsNum\000"
	.space	3
.LC13:
	.ascii	"ExpectedDispFsNum\000"
	.space	2
.LC14:
	.ascii	"ExpectedPmvNum\000"
	.space	1
.LC15:
	.ascii	"DecFsNum\000"
	.space	3
.LC16:
	.ascii	"DispFsNum\000"
	.space	2
.LC17:
	.ascii	"PmvNum\000"
	.space	1
.LC18:
	.ascii	"logic fs: %d\012\000"
	.space	2
.LC19:
	.ascii	"%d%d \000"
	.space	2
.LC20:
	.ascii	"\012\000"
	.space	2
.LC21:
	.ascii	"\012dec fs: %d\012\000"
	.space	3
.LC22:
	.ascii	"\012disp fs: %d\012\000"
	.space	2
.LC23:
	.ascii	"\012pmv: %d\012\000"
	.space	2
.LC24:
	.ascii	"%d \000"
.LC25:
	.ascii	"\012\012\000"
	.space	1
.LC26:
	.ascii	"PmvAddrTab is NULL\012\000"
.LC27:
	.ascii	"PmvNum is NULL\012\000"
.LC28:
	.ascii	"DecFsAddrTab is NULL\012\000"
	.space	2
.LC29:
	.ascii	"DecFsNum is NULL\012\000"
	.space	2
.LC30:
	.ascii	"FSP_GetRef: InstID out of range\000"
.LC31:
	.ascii	"FSP_GetRef: LogicFrameID out of range\000"
	.space	2
.LC32:
	.ascii	"FSP_GetRef: Fsp is not inited\000"
	.space	2
.LC33:
	.ascii	"LogicFrameID out of range\000"
	.space	2
.LC34:
	.ascii	"%s : AllocFrame func null\012\000"
	.space	1
.LC35:
	.ascii	"fsp.c, line %d: pstLogicFs->PmvIdc out of range(=%d"
	.ascii	")\012\000"
	.space	2
.LC36:
	.ascii	"PhyAddr is NULL\012\000"
	.space	3
.LC37:
	.ascii	"pFsNum is NULL\012\000"
.LC38:
	.ascii	"fsp instance not in used\000"
	.space	3
.LC39:
	.ascii	"FSP_UdateInfo ArrangeMem failed!\012\000"
	.space	2
.LC40:
	.ascii	"%s : RleaseFrame func null\012\000"
.LC41:
	.ascii	"FSP_SetDisplay: LogicTick=%d, DispTick=%d!\012\000"
.LC42:
	.ascii	"FSP_IsFsLeak: fsp is not inited \012\000"
	.space	2
.LC43:
	.ascii	"No free fs: ref=%d,read=%d,new=%d,total=%d\012\000"
.LC44:
	.ascii	"pFspInst = NULL\000"
.LC45:
	.ascii	"pstFspInstCfg = NULL\000"
	.space	3
.LC46:
	.ascii	"This inst is not active\000"
.LC47:
	.ascii	"no logic frame store!!!\012\000"
	.space	3
.LC48:
	.ascii	"%s no decode phy fs\012\000"
	.space	3
.LC49:
	.ascii	"%s Not partition yet!\012\000"
	.space	1
.LC50:
	.ascii	"no pmv memory\012\000"
	.space	1
.LC51:
	.ascii	"no display phy fs\012\000"
	.space	1
.LC52:
	.ascii	"can not find disp fs\012\000"
	.space	2
.LC53:
	.ascii	"RefNum,ReadNum,NewNum,Total = %d,%d,%d,%d\012\000"
	.space	1
.LC54:
	.ascii	"FSP_AllocFrame failed\012\000"
	.space	1
.LC55:
	.ascii	"invalid stFrameInfo PhyAddr\012\000"
	.space	3
.LC56:
	.ascii	"eChanCapLevel = %d is not expected!\012\000"
	.space	3
.LC57:
	.ascii	"decode channel CapLevel is %d(w=%d,h=%d), this stre"
	.ascii	"am (w=%d,h=%d) can NOT be decoded!\012\000"
	.space	1
.LC58:
	.ascii	"user set decode channel max resolution is (w=%d,h=%"
	.ascii	"d), this stream (w=%d,h=%d) can NOT be decoded!\012"
	.ascii	"\000"
.LC59:
	.ascii	"DFS, Wrong Partition State. State: 0x%x\012\000"
	.space	3
.LC60:
	.ascii	"DFS, Mem Element Fill Successed! Ready to Decode!\012"
	.ascii	"\000"
	.space	1
.LC61:
	.ascii	"Fsp arrange failed, return %d\012\000"
	.space	1
.LC62:
	.ascii	"disp fs(=%d) less than expected(=%d+%d)!\012\000"
	.space	2
.LC63:
	.ascii	"arrange ret %d, min = %d, actual = %d\012\000"
	.space	1
.LC64:
	.ascii	"pstVoQue is NULL\000"
	.bss
	.align	2
.LANCHOR0 = . + 0
.LANCHOR1 = . + 8184
	.type	s_pFspInst, %object
	.size	s_pFspInst, 64
s_pFspInst:
	.space	64
	.type	s_FspVoQue, %object
	.size	s_FspVoQue, 4224
s_FspVoQue:
	.space	4224
	.type	g_IsFrameIntfValid, %object
	.size	g_IsFrameIntfValid, 4
g_IsFrameIntfValid:
	.space	4
	.type	g_FspFrameIntf, %object
	.size	g_FspFrameIntf, 16
g_FspFrameIntf:
	.space	16
	.type	g_SpinLock_fsp, %object
	.size	g_SpinLock_fsp, 12
g_SpinLock_fsp:
	.space	12
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
