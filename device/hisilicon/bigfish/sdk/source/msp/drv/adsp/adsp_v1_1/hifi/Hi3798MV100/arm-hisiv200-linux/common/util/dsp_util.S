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
	.file	"dsp_util.c"
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
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/drivers/msp/adsp/adsp_v1_1
@ -Idrivers/msp/adsp/adsp_v1_1
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/arch/arm/mach-hi3798mx/include
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/common/include
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/common/api/include
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/common/drv/include
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/include
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/api/include
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/include
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/include
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/include/comp
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/aoe/include
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/aflt/include
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/aoe/src/include
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/component/codec/iapcm_dec
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/component/codec/iamp3_dec
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/component/effect/base_effect
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1
@ -imultilib armv7a_soft -iprefix
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/
@ -isysroot /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../target
@ -D__KERNEL__ -D__LINUX_ARM_ARCH__=7 -Uarm -DCHIP_TYPE_hi3796mv100
@ -DSDK_VERSION=HiSTBAndroidV600R001C00SPC064_v2016061301 -DHI_MCE_SUPPORT
@ -DHI_GPIOI2C_SUPPORT -DHI_LOG_SUPPORT=1 -DHI_LOG_LEVEL=4
@ -DHI_PROC_SUPPORT=1 -DHI_HDMI_SUPPORT_1_4 -DHI_KEYLED_SUPPORT
@ -DHI_HDCP_SUPPORT -DHI_SCI_SUPPORT -DHI_PVR_SUPPORT -DHI_VI_SUPPORT
@ -DHI_VENC_SUPPORT -DHI_AENC_SUPPORT -DHI_PQ_V3_0
@ -DHI_SND_AOE_SWSIMULATE_SUPPORT -DINTERLEAVED_OUTPUT
@ -DPCM_DECODER_SUPPORT -DHI_SND_TIMER_CAST -DKBUILD_STR(s)=#s
@ -DKBUILD_BASENAME=KBUILD_STR(dsp_util)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_adsp) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD drivers/msp/adsp/adsp_v1_1/./hifi/common/util/.dsp_util.o.d
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/drivers/msp/adsp/adsp_v1_1/./hifi/common/util/dsp_util.c
@ -mlittle-endian -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -marm -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/adsp/adsp_v1_1/./hifi/common/util/dsp_util.o -O2 -Wall
@ -Wundef -Wstrict-prototypes -Wno-trigraphs
@ -Werror-implicit-function-declaration -Wno-format-security
@ -Wframe-larger-than=1024 -Wdeclaration-after-statement -Wno-pointer-sign
@ -p -fno-strict-aliasing -fno-common -fno-delete-null-pointer-checks
@ -fno-dwarf2-cfi-asm -funwind-tables -fno-stack-protector
@ -fno-omit-frame-pointer -fno-optimize-sibling-calls -fno-strict-overflow
@ -fconserve-stack -fverbose-asm
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
	.global	UTIL_CalcFrameSize
	.type	UTIL_CalcFrameSize, %function
UTIL_CalcFrameSize:
	.fnstart
.LFB894:
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
	cmp	r1, #16	@ uBitDepth,
	moveq	r0, r0, asl #1	@ uFrameSize, uCh,
	ldmeqfd	sp, {fp, sp, pc}	@
	cmp	r1, #24	@ uBitDepth,
	moveq	r0, r0, asl #2	@ uFrameSize, uCh,
	movne	r0, #0	@ uFrameSize,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	UTIL_CalcFrameSize, .-UTIL_CalcFrameSize
	.align	2
	.global	UTIL_LatencyMs2ByteSize
	.type	UTIL_LatencyMs2ByteSize, %function
UTIL_LatencyMs2ByteSize:
	.fnstart
.LFB895:
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
	mul	ip, r0, r1	@ tmp138, u32LatencyMs, u32FrameSize
	movw	r0, #:lower16:274877907	@ tmp142,
	movt	r0, #:upper16:274877907	@ tmp142,
	mul	r1, r2, ip	@ tmp139, u32SampleRate, tmp138
	umull	r2, r3, r0, r1	@, tmp140, tmp142, tmp139
	mov	r0, r3, lsr #6	@, tmp140,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	UTIL_LatencyMs2ByteSize, .-UTIL_LatencyMs2ByteSize
	.global	__aeabi_uidiv
	.align	2
	.global	UTIL_LatencyMs
	.type	UTIL_LatencyMs, %function
UTIL_LatencyMs:
	.fnstart
.LFB896:
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
	mov	r3, #1000	@ tmp139,
	mul	r0, r3, r0	@, tmp139, u32DataBytes
	mul	r1, r1, r2	@, u32FrameSize, u32SampleRate
	bl	__aeabi_uidiv	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	UTIL_LatencyMs, .-UTIL_LatencyMs
	.align	2
	.global	UTIL_LRLinearGainProcess
	.type	UTIL_LRLinearGainProcess, %function
UTIL_LRLinearGainProcess:
	.fnstart
.LFB899:
	@ args = 4, pretend = 0, frame = 0
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
	ldrsh	ip, [fp, #4]	@ s16VolumeR, s16VolumeR
	cmp	r3, ip	@ s16VolumeL, s16VolumeR
	beq	.L13	@,
	cmp	r2, #0	@ InSamps,
	ldmlefd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	sub	r5, r2, #1	@ tmp191, InSamps,
	ldrsh	r4, [r0, #0]	@ tmp215,* pSrcPcmBuf
	and	r6, r5, #1	@ tmp193, tmp191,
#APP
@ 694 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  r4, r4, r3	@ ret, tmp215, s16VolumeL
@ 0 "" 2
@ 695 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    r5, r4, r4	@ sum, ret, ret
@ 0 "" 2
	mov	r4, #1	@ n.384,
	cmp	r4, r2	@ n.384, InSamps
	strh	r5, [r1, #0]	@ movhi	@ sum,* pDestPcmBuf
	mov	r5, #2	@ ivtmp.376,
	ldmeqfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	cmp	r6, #0	@ tmp193,
	beq	.L19	@,
	ldrsh	r6, [r0, r5]	@ tmp224,* ivtmp.376
#APP
@ 694 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  r6, r6, ip	@ ret, tmp224, s16VolumeR
@ 0 "" 2
@ 695 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    r6, r6, r6	@ sum, ret, ret
@ 0 "" 2
	add	r4, r4, #1	@ n.384, n.384,
	strh	r6, [r1, r5]	@ movhi	@ sum,* ivtmp.376
	cmp	r4, r2	@ n.384, InSamps
	add	r5, r5, #2	@ ivtmp.376, ivtmp.376,
	bne	.L19	@,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L39:
	ldrsh	r6, [r0, r5]	@ tmp184,* ivtmp.376
#APP
@ 694 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  r6, r6, ip	@ ret, tmp184, s16VolumeR
@ 0 "" 2
@ 695 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    r6, r6, r6	@ sum, ret, ret
@ 0 "" 2
	add	r4, r4, #1	@ tmp194, n.384,
	strh	r6, [r1, r5]	@ movhi	@ sum,* ivtmp.376
	tst	r4, #1	@ tmp194,
	add	r5, r5, #2	@ tmp195, ivtmp.376,
	beq	.L32	@,
.L40:
	ldrsh	r6, [r0, r5]	@ tmp229,
#APP
@ 694 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  r6, r6, ip	@ ret, tmp229, s16VolumeR
@ 0 "" 2
@ 695 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    r6, r6, r6	@ sum, ret, ret
@ 0 "" 2
	add	r4, r4, #1	@ n.384, tmp194,
	strh	r6, [r1, r5]	@ movhi	@ sum,
	cmp	r4, r2	@ n.384, InSamps
	add	r5, r5, #2	@ ivtmp.376, tmp195,
	beq	.L38	@,
.L19:
	tst	r4, #1	@ n.384,
	bne	.L39	@,
	ldrsh	r6, [r0, r5]	@ tmp185,* ivtmp.376
#APP
@ 694 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  r6, r6, r3	@ ret, tmp185, s16VolumeL
@ 0 "" 2
@ 695 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    r6, r6, r6	@ sum, ret, ret
@ 0 "" 2
	add	r4, r4, #1	@ tmp194, n.384,
	strh	r6, [r1, r5]	@ movhi	@ sum,* ivtmp.376
	tst	r4, #1	@ tmp194,
	add	r5, r5, #2	@ tmp195, ivtmp.376,
	bne	.L40	@,
.L32:
	ldrsh	r6, [r0, r5]	@ tmp226,
#APP
@ 694 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  r6, r6, r3	@ ret, tmp226, s16VolumeL
@ 0 "" 2
@ 695 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    r6, r6, r6	@ sum, ret, ret
@ 0 "" 2
	add	r4, r4, #1	@ n.384, tmp194,
	strh	r6, [r1, r5]	@ movhi	@ sum,
	cmp	r4, r2	@ n.384, InSamps
	add	r5, r5, #2	@ ivtmp.376, tmp195,
	bne	.L19	@,
.L38:
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L13:
	cmp	r2, #0	@ InSamps,
	ldmlefd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	sub	r4, r2, #1	@ tmp186, InSamps,
	ldrsh	ip, [r0, #0]	@ tmp182,* pSrcPcmBuf
	and	r4, r4, #1	@ tmp188, tmp186,
#APP
@ 694 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  r5, ip, r3	@ ret, tmp182, s16VolumeL
@ 0 "" 2
@ 695 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    ip, r5, r5	@ sum.385, ret, ret
@ 0 "" 2
	mov	r5, #1	@ n,
	cmp	r5, r2	@ n, InSamps
	strh	ip, [r1, #0]	@ movhi	@ sum.385,* pDestPcmBuf
	mov	ip, #2	@ ivtmp.371,
	ldmeqfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	cmp	r4, #0	@ tmp188,
	beq	.L16	@,
	ldrsh	r5, [r0, #2]	@ tmp212,
#APP
@ 694 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  r4, r5, r3	@ ret, tmp212, s16VolumeL
@ 0 "" 2
@ 695 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    r4, r4, r4	@ sum.385, ret, ret
@ 0 "" 2
	cmp	ip, r2	@ n, InSamps
	mov	r5, ip	@ n, ivtmp.371
	strh	r4, [r1, #2]	@ movhi	@ sum.385,
	mov	ip, #4	@ ivtmp.371,
	ldmeqfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L16:
	ldrsh	r6, [r0, ip]	@ tmp198,* ivtmp.371
#APP
@ 694 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  r4, r6, r3	@ ret, tmp198, s16VolumeL
@ 0 "" 2
@ 695 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    r6, r4, r4	@ sum.385, ret, ret
@ 0 "" 2
	add	r4, ip, #2	@ tmp190, ivtmp.371,
	strh	r6, [r1, ip]	@ movhi	@ sum.385,* ivtmp.371
	add	r5, r5, #1	@ tmp189, n,
	ldrsh	ip, [r0, r4]	@ tmp203,
#APP
@ 694 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  ip, ip, r3	@ ret, tmp203, s16VolumeL
@ 0 "" 2
@ 695 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    ip, ip, ip	@ sum.385, ret, ret
@ 0 "" 2
	add	r5, r5, #1	@ n, tmp189,
	strh	ip, [r1, r4]	@ movhi	@ sum.385,
	cmp	r5, r2	@ n, InSamps
	add	ip, r4, #2	@ ivtmp.371, tmp190,
	bne	.L16	@,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	UTIL_LRLinearGainProcess, .-UTIL_LRLinearGainProcess
	.align	2
	.global	UTIL_UpmixPcmData
	.type	UTIL_UpmixPcmData, %function
UTIL_UpmixPcmData:
	.fnstart
.LFB902:
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
	ldr	r3, [r2, #16]	@ <variable>.u32BitPerSample, <variable>.u32BitPerSample
	cmp	r3, #24	@ <variable>.u32BitPerSample,
	beq	.L105	@,
	cmp	r3, #16	@ <variable>.u32BitPerSample,
	ldmnefd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	ldr	ip, [r2, #12]	@ <variable>.u32SamplesPerFrame, <variable>.u32SamplesPerFrame
	ldr	r5, [r2, #0]	@ temp.427, <variable>.pDataBuf
	cmp	ip, #0	@ <variable>.u32SamplesPerFrame,
	movne	r7, #0	@ i.431,
	movne	r6, r1	@ pu16Dst, WkBuf
	movne	r4, r7	@ Data, i.431
	beq	.L54	@,
.L55:
	cmp	r0, #0	@ dstCh,
	beq	.L59	@,
	ldr	r3, [r2, #20]	@ <variable>.u32Channels, <variable>.u32Channels
	add	ip, r6, #2	@ ivtmp.420, pu16Dst,
	sub	r8, r0, #1	@ tmp206, dstCh,
	cmp	r3, #0	@ <variable>.u32Channels,
	and	r8, r8, #1	@ tmp208, tmp206,
	strlsh	r4, [ip, #-2]	@ movhi	@ Data,
	movls	r6, ip	@ pu16Dst, ivtmp.420
	ldrhih	r4, [r5], #2	@ Data,
	movhi	r6, ip	@ pu16Dst, ivtmp.420
	strhih	r4, [ip, #-2]	@ movhi	@ Data,
.L94:
	mov	r3, #1	@ ch.430,
	cmp	r0, r3	@ dstCh, ch.430
	add	ip, ip, #2	@ ivtmp.420, ivtmp.420,
	bls	.L95	@,
	cmp	r8, #0	@ tmp208,
	beq	.L58	@,
	ldr	r6, [r2, #20]	@ <variable>.u32Channels, <variable>.u32Channels
	cmp	r6, r3	@ <variable>.u32Channels, ch.430
	add	r3, r3, #1	@ ch.430, tmp210,
	strlsh	r4, [ip, #-2]	@ movhi	@ Data,
	ldrhih	r4, [r5], #2	@ Data,
	movls	r6, ip	@ pu16Dst, ivtmp.420
	movhi	r6, ip	@ pu16Dst, ivtmp.420
	strhih	r4, [ip, #-2]	@ movhi	@ Data,
	cmp	r0, r3	@ dstCh, ch.430
	add	ip, ip, #2	@ ivtmp.420, tmp209,
	bls	.L95	@,
.L58:
	ldr	r6, [r2, #20]	@ <variable>.u32Channels, <variable>.u32Channels
	cmp	r6, r3	@ <variable>.u32Channels, ch.430
	add	r3, r3, #1	@ tmp210, ch.430,
	ldrhih	r4, [r5], #2	@ Data,
	strh	r4, [ip, #-2]	@ movhi	@ Data,
	add	ip, ip, #2	@ tmp209, ivtmp.420,
	ldr	r8, [r2, #20]	@ <variable>.u32Channels, <variable>.u32Channels
	mov	r6, ip	@ pu16Dst, tmp209
	cmp	r8, r3	@ <variable>.u32Channels, tmp210
	ldrhih	r4, [r5], #2	@ Data,
	movhi	r6, ip	@ pu16Dst, tmp209
.L100:
	add	r3, r3, #1	@ ch.430, tmp210,
	strh	r4, [ip, #-2]	@ movhi	@ Data,
	cmp	r0, r3	@ dstCh, ch.430
	add	ip, ip, #2	@ ivtmp.420, tmp209,
	bhi	.L58	@,
.L95:
	ldr	ip, [r2, #12]	@ <variable>.u32SamplesPerFrame, <variable>.u32SamplesPerFrame
.L59:
	add	r7, r7, #1	@ i.431, i.431,
	cmp	ip, r7	@ <variable>.u32SamplesPerFrame, i.431
	bhi	.L55	@,
.L104:
	ldr	r3, [r2, #16]	@ <variable>.u32BitPerSample, <variable>.u32BitPerSample
.L54:
	cmp	r3, #16	@ <variable>.u32BitPerSample,
	str	r0, [r2, #20]	@ dstCh, <variable>.u32Channels
	moveq	ip, ip, asl #1	@ tmp193, <variable>.u32SamplesPerFrame,
	str	r1, [r2, #0]	@ WkBuf, <variable>.pDataBuf
	muleq	r0, r0, ip	@ prephitmp.437, dstCh, tmp193
	beq	.L63	@,
	cmp	r3, #24	@ <variable>.u32BitPerSample,
	movne	r0, #0	@ prephitmp.437,
	moveq	ip, ip, asl #2	@ tmp195, <variable>.u32SamplesPerFrame,
	muleq	r0, r0, ip	@ prephitmp.437, dstCh, tmp195
.L63:
	str	r0, [r2, #8]	@ prephitmp.437, <variable>.u32DataBytes
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L105:
	ldr	ip, [r2, #12]	@ <variable>.u32SamplesPerFrame, <variable>.u32SamplesPerFrame
	ldr	r5, [r2, #0]	@ D.14661, <variable>.pDataBuf
	cmp	ip, #0	@ <variable>.u32SamplesPerFrame,
	movne	r7, #0	@ i,
	movne	r6, r1	@ pu32Dst, WkBuf
	movne	r4, r7	@ Data, i
	beq	.L54	@,
.L44:
	cmp	r0, #0	@ dstCh,
	beq	.L48	@,
	ldr	r3, [r2, #20]	@ <variable>.u32Channels, <variable>.u32Channels
	add	ip, r6, #4	@ ivtmp.413, pu32Dst,
	sub	r8, r0, #1	@ tmp201, dstCh,
	cmp	r3, #0	@ <variable>.u32Channels,
	and	r8, r8, #1	@ tmp203, tmp201,
	strls	r4, [ip, #-4]	@ Data,
	movls	r6, ip	@ pu32Dst, ivtmp.413
	ldrhi	r4, [r5], #4	@ Data,
	movhi	r6, ip	@ pu32Dst, ivtmp.413
	strhi	r4, [ip, #-4]	@ Data,
.L89:
	mov	r3, #1	@ ch,
	cmp	r0, r3	@ dstCh, ch
	add	ip, ip, #4	@ ivtmp.413, ivtmp.413,
	bls	.L90	@,
	cmp	r8, #0	@ tmp203,
	beq	.L47	@,
	ldr	r6, [r2, #20]	@ <variable>.u32Channels, <variable>.u32Channels
	cmp	r6, r3	@ <variable>.u32Channels, ch
	add	r3, r3, #1	@ ch, tmp204,
	strls	r4, [ip, #-4]	@ Data,
	ldrhi	r4, [r5], #4	@ Data,
	movls	r6, ip	@ pu32Dst, ivtmp.413
	movhi	r6, ip	@ pu32Dst, ivtmp.413
	strhi	r4, [ip, #-4]	@ Data,
	cmp	r0, r3	@ dstCh, ch
	add	ip, ip, #4	@ ivtmp.413, tmp205,
	bls	.L90	@,
.L47:
	ldr	r6, [r2, #20]	@ <variable>.u32Channels, <variable>.u32Channels
	cmp	r6, r3	@ <variable>.u32Channels, ch
	add	r3, r3, #1	@ tmp204, ch,
	ldrhi	r4, [r5], #4	@ Data,
	str	r4, [ip, #-4]	@ Data,
	add	ip, ip, #4	@ tmp205, ivtmp.413,
	ldr	r8, [r2, #20]	@ <variable>.u32Channels, <variable>.u32Channels
	mov	r6, ip	@ pu32Dst, tmp205
	cmp	r8, r3	@ <variable>.u32Channels, tmp204
	ldrhi	r4, [r5], #4	@ Data,
	movhi	r6, ip	@ pu32Dst, tmp205
.L99:
	add	r3, r3, #1	@ ch, tmp204,
	str	r4, [ip, #-4]	@ Data,
	cmp	r0, r3	@ dstCh, ch
	add	ip, ip, #4	@ ivtmp.413, tmp205,
	bhi	.L47	@,
.L90:
	ldr	ip, [r2, #12]	@ <variable>.u32SamplesPerFrame, <variable>.u32SamplesPerFrame
.L48:
	add	r7, r7, #1	@ i, i,
	cmp	ip, r7	@ <variable>.u32SamplesPerFrame, i
	bhi	.L44	@,
	b	.L104	@
	.fnend
	.size	UTIL_UpmixPcmData, .-UTIL_UpmixPcmData
	.align	2
	.global	UTIL_DownmixPcmData
	.type	UTIL_DownmixPcmData, %function
UTIL_DownmixPcmData:
	.fnstart
.LFB903:
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
	ldr	r3, [r2, #16]	@ <variable>.u32BitPerSample, <variable>.u32BitPerSample
	cmp	r3, #24	@ <variable>.u32BitPerSample,
	beq	.L138	@,
	cmp	r3, #16	@ <variable>.u32BitPerSample,
	ldmnefd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	ldr	ip, [r2, #12]	@ <variable>.u32SamplesPerFrame, <variable>.u32SamplesPerFrame
	ldr	r5, [r2, #0]	@ temp.480, <variable>.pDataBuf
	cmp	ip, #0	@ <variable>.u32SamplesPerFrame,
	beq	.L119	@,
	ldr	r4, [r2, #20]	@ <variable>.u32Channels, <variable>.u32Channels
	mov	r6, r1	@ pu16Dst, WkBuf
	mov	r7, #0	@ i.484,
.L120:
	cmp	r4, #0	@ <variable>.u32Channels,
	addne	ip, r5, #2	@ ivtmp.474, pu16Src,
	movne	r3, #0	@ ch.483,
	beq	.L124	@,
.L123:
	cmp	r0, r3	@ dstCh, ch.483
	add	r3, r3, #1	@ ch.483, ch.483,
	mov	r5, ip	@ pu16Src, ivtmp.474
	ldrhih	r4, [ip, #-2]	@,
	movls	r5, ip	@ pu16Src, ivtmp.474
	add	ip, ip, #2	@ ivtmp.474, ivtmp.474,
	strhih	r4, [r6], #2	@ movhi	@,
	ldrhi	r4, [r2, #20]	@ <variable>.u32Channels, <variable>.u32Channels
	cmp	r4, r3	@ <variable>.u32Channels, ch.483
	bhi	.L123	@,
	ldr	ip, [r2, #12]	@ <variable>.u32SamplesPerFrame, <variable>.u32SamplesPerFrame
.L124:
	add	r7, r7, #1	@ i.484, i.484,
	cmp	ip, r7	@ <variable>.u32SamplesPerFrame, i.484
	bhi	.L120	@,
.L137:
	ldr	r3, [r2, #16]	@ <variable>.u32BitPerSample, <variable>.u32BitPerSample
.L119:
	cmp	r3, #16	@ <variable>.u32BitPerSample,
	str	r0, [r2, #20]	@ dstCh, <variable>.u32Channels
	moveq	ip, ip, asl #1	@ tmp168, <variable>.u32SamplesPerFrame,
	str	r1, [r2, #0]	@ WkBuf, <variable>.pDataBuf
	muleq	r0, r0, ip	@ prephitmp.488, dstCh, tmp168
	beq	.L128	@,
	cmp	r3, #24	@ <variable>.u32BitPerSample,
	moveq	ip, ip, asl #2	@ tmp170, <variable>.u32SamplesPerFrame,
	movne	r0, #0	@ prephitmp.488,
	muleq	r0, r0, ip	@ prephitmp.488, dstCh, tmp170
.L128:
	str	r0, [r2, #8]	@ prephitmp.488, <variable>.u32DataBytes
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L138:
	ldr	ip, [r2, #12]	@ <variable>.u32SamplesPerFrame, <variable>.u32SamplesPerFrame
	ldr	r5, [r2, #0]	@ D.14705, <variable>.pDataBuf
	cmp	ip, #0	@ <variable>.u32SamplesPerFrame,
	beq	.L119	@,
	ldr	r4, [r2, #20]	@ <variable>.u32Channels, <variable>.u32Channels
	mov	r6, r1	@ pu32Dst, WkBuf
	mov	r7, #0	@ i,
.L109:
	cmp	r4, #0	@ <variable>.u32Channels,
	addne	ip, r5, #4	@ ivtmp.467, pu32Src,
	movne	r3, #0	@ ch,
	beq	.L113	@,
.L112:
	cmp	r0, r3	@ dstCh, ch
	add	r3, r3, #1	@ ch, ch,
	mov	r5, ip	@ pu32Src, ivtmp.467
	ldrhi	r4, [ip, #-4]	@ tmp152,
	movls	r5, ip	@ pu32Src, ivtmp.467
	add	ip, ip, #4	@ ivtmp.467, ivtmp.467,
	strhi	r4, [r6], #4	@ tmp152,
	ldrhi	r4, [r2, #20]	@ <variable>.u32Channels, <variable>.u32Channels
	cmp	r4, r3	@ <variable>.u32Channels, ch
	bhi	.L112	@,
	ldr	ip, [r2, #12]	@ <variable>.u32SamplesPerFrame, <variable>.u32SamplesPerFrame
.L113:
	add	r7, r7, #1	@ i, i,
	cmp	ip, r7	@ <variable>.u32SamplesPerFrame, i
	bhi	.L109	@,
	b	.L137	@
	.fnend
	.size	UTIL_DownmixPcmData, .-UTIL_DownmixPcmData
	.align	2
	.global	UTIL_UnifyBitDepthPcmData
	.type	UTIL_UnifyBitDepthPcmData, %function
UTIL_UnifyBitDepthPcmData:
	.fnstart
.LFB904:
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
	ldr	r3, [r2, #20]	@ <variable>.u32Channels, <variable>.u32Channels
	ldr	ip, [r2, #12]	@ <variable>.u32SamplesPerFrame, <variable>.u32SamplesPerFrame
	cmp	r0, #16	@ dstBitDepth,
	mul	r3, ip, r3	@ Samples, <variable>.u32SamplesPerFrame, <variable>.u32Channels
	beq	.L168	@,
	cmp	r0, #24	@ dstBitDepth,
	ldmnefd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	ldr	r0, [r2, #16]	@ <variable>.u32BitPerSample, <variable>.u32BitPerSample
	cmp	r0, #16	@ <variable>.u32BitPerSample,
	ldmnefd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	cmp	r3, #0	@ Samples,
	ldr	r4, [r2, #0]	@ temp.579, <variable>.pDataBuf
	beq	.L146	@,
	ldrh	ip, [r4, #0]	@ Data,* temp.579
	cmp	r3, #1	@ Samples,
	sub	r5, r3, #1	@ tmp209, Samples,
	mov	r0, #1	@ i.581,
	and	r5, r5, r0	@ tmp211, tmp209,
	mov	ip, ip, asl #16	@ tmp196, Data,
	str	ip, [r1, #0]	@ tmp196,* WkBuf
	bls	.L146	@,
	cmp	r5, #0	@ tmp211,
	beq	.L147	@,
	mov	r0, #2	@ tmp278,
	cmp	r3, r0	@ Samples, i.581
	ldrh	ip, [r4, r0]	@ Data,
	mov	ip, ip, asl #16	@ tmp281, Data,
	str	ip, [r1, #4]	@ tmp281,
	bls	.L146	@,
.L147:
	mov	r5, r0, asl #1	@ tmp254, i.581,
	add	ip, r0, #1	@ tmp212, i.581,
	ldrh	r6, [r4, r5]	@ Data,
	mov	r5, ip, asl #1	@ tmp259, tmp212,
	mov	r6, r6, asl #16	@ tmp257, Data,
	str	r6, [r1, r0, asl #2]	@ tmp257,* WkBuf
	add	r0, ip, #1	@ i.581, tmp212,
	ldrh	r5, [r4, r5]	@ Data,
	cmp	r3, r0	@ Samples, i.581
	mov	r5, r5, asl #16	@ tmp262, Data,
	str	r5, [r1, ip, asl #2]	@ tmp262,* WkBuf
	bhi	.L147	@,
.L146:
	ldr	r3, [r2, #8]	@ <variable>.u32DataBytes, <variable>.u32DataBytes
	mov	r0, #24	@ tmp197,
	str	r1, [r2, #0]	@ WkBuf, <variable>.pDataBuf
	str	r0, [r2, #16]	@ tmp197, <variable>.u32BitPerSample
	mov	r1, r3, asl #1	@ tmp199, <variable>.u32DataBytes,
	str	r1, [r2, #8]	@ tmp199, <variable>.u32DataBytes
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
.L168:
	ldr	r0, [r2, #16]	@ <variable>.u32BitPerSample, <variable>.u32BitPerSample
	cmp	r0, #24	@ <variable>.u32BitPerSample,
	ldmnefd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	movs	r8, r3, lsr #3	@ i, Samples,
	ldr	ip, [r2, #0]	@ pu32Src, <variable>.pDataBuf
	mov	r5, r1	@ pu32Data, WkBuf
	beq	.L142	@,
	sub	r7, r8, #1	@ tmp204, i,
	ldmia	ip, {r4, r5}	@ phole ldm
	and	r6, r7, #1	@ tmp205, tmp204,
#APP
@ 631 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	pkhtb r0, r5, r4, asr #16	@ y, tmp180, tmp181
@ 0 "" 2
	str	r0, [r1, #0]	@ y,* WkBuf
	ldr	r5, [ip, #12]	@ tmp182,
	ldr	r4, [ip, #8]	@ tmp183,
#APP
@ 631 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	pkhtb r0, r5, r4, asr #16	@ y, tmp182, tmp183
@ 0 "" 2
	str	r0, [r1, #4]	@ y,
	ldr	r5, [ip, #20]	@ tmp184,
	ldr	r4, [ip, #16]	@ tmp185,
#APP
@ 631 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	pkhtb r0, r5, r4, asr #16	@ y, tmp184, tmp185
@ 0 "" 2
	str	r0, [r1, #8]	@ y,
	add	r0, ip, #32	@ pu32Src.577, pu32Src,
	ldr	r5, [ip, #24]	@ Data.571,
	ldr	r4, [ip, #28]	@ Data1.572,
#APP
@ 631 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	pkhtb r4, r4, r5, asr #16	@ y, Data1.572, Data.571
@ 0 "" 2
	cmp	r7, #0	@ i.573
	str	r4, [r1, #12]	@ y,
	add	r5, r1, #16	@ pu32Data.583, WkBuf,
	beq	.L167	@,
	cmp	r6, #0	@ tmp205,
	beq	.L143	@,
	ldr	r4, [r0, #4]	@ tmp266,
	ldr	r6, [r0, #0]	@ tmp267,* pu32Src.577
#APP
@ 631 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	pkhtb r4, r4, r6, asr #16	@ y, tmp266, tmp267
@ 0 "" 2
	str	r4, [r5, #0]	@ y,* pu32Data.583
	ldr	r4, [r0, #12]	@ tmp269,
	ldr	r6, [r0, #8]	@ tmp270,
#APP
@ 631 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	pkhtb r4, r4, r6, asr #16	@ y, tmp269, tmp270
@ 0 "" 2
	str	r4, [r5, #4]	@ y,
	ldr	r4, [r0, #20]	@ tmp272,
	ldr	r6, [r0, #16]	@ tmp273,
#APP
@ 631 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	pkhtb r4, r4, r6, asr #16	@ y, tmp272, tmp273
@ 0 "" 2
	str	r4, [r5, #8]	@ y,
	ldr	r6, [r0, #24]	@ Data.571,
	ldr	r4, [r0, #28]	@ Data1.572,
	add	r0, r0, #32	@ pu32Src.577, pu32Src.577,
#APP
@ 631 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	pkhtb r4, r4, r6, asr #16	@ y, Data1.572, Data.571
@ 0 "" 2
	subs	r7, r7, #1	@ i.573, i.573,
	str	r4, [r5, #12]	@ y,
	add	r5, r5, #16	@ pu32Data.583, pu32Data.583,
	beq	.L167	@,
.L143:
	ldmia	r0, {r6, sl}	@ phole ldm
#APP
@ 631 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	pkhtb r4, sl, r6, asr #16	@ y, tmp216, tmp217
@ 0 "" 2
	str	r4, [r5, #0]	@ y,* pu32Data.583
	ldr	sl, [r0, #12]	@ tmp219,
	ldr	r6, [r0, #8]	@ tmp220,
#APP
@ 631 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	pkhtb r4, sl, r6, asr #16	@ y, tmp219, tmp220
@ 0 "" 2
	str	r4, [r5, #4]	@ y,
	ldr	sl, [r0, #20]	@ tmp222,
	ldr	r6, [r0, #16]	@ tmp223,
#APP
@ 631 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	pkhtb r4, sl, r6, asr #16	@ y, tmp222, tmp223
@ 0 "" 2
	str	r4, [r5, #8]	@ y,
	add	r4, r0, #32	@ tmp208, pu32Src.577,
	ldr	sl, [r0, #24]	@ Data.571,
	ldr	r6, [r0, #28]	@ Data1.572,
#APP
@ 631 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	pkhtb r6, r6, sl, asr #16	@ y, Data1.572, Data.571
@ 0 "" 2
	str	r6, [r5, #12]	@ y,
	sub	r7, r7, #1	@ tmp207, i.573,
	ldr	sl, [r0, #32]	@ tmp232,
	add	r6, r5, #16	@ tmp206, pu32Data.583,
	ldr	r0, [r4, #4]	@ tmp231,
#APP
@ 631 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	pkhtb r0, r0, sl, asr #16	@ y, tmp231, tmp232
@ 0 "" 2
	str	r0, [r5, #16]	@ y,
	ldr	r0, [r4, #12]	@ tmp234,
	ldr	r5, [r4, #8]	@ tmp235,
#APP
@ 631 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	pkhtb r0, r0, r5, asr #16	@ y, tmp234, tmp235
@ 0 "" 2
	str	r0, [r6, #4]	@ y,
	ldr	r0, [r4, #20]	@ tmp237,
	ldr	r5, [r4, #16]	@ tmp238,
#APP
@ 631 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	pkhtb r0, r0, r5, asr #16	@ y, tmp237, tmp238
@ 0 "" 2
	str	r0, [r6, #8]	@ y,
	add	r0, r4, #32	@ pu32Src.577, tmp208,
	ldr	r5, [r4, #24]	@ Data.571,
	ldr	r4, [r4, #28]	@ Data1.572,
#APP
@ 631 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	pkhtb r4, r4, r5, asr #16	@ y, Data1.572, Data.571
@ 0 "" 2
	subs	r7, r7, #1	@ i.573, tmp207,
	str	r4, [r6, #12]	@ y,
	add	r5, r6, #16	@ pu32Data.583, tmp206,
	bne	.L143	@,
.L167:
	add	ip, ip, r8, asl #5	@, pu32Src, pu32Src, i,
	add	r5, r1, r8, asl #4	@, pu32Data, WkBuf, i,
.L142:
	ands	r3, r3, #7	@ i.574, Samples,
	beq	.L144	@,
	sub	r3, r3, #1	@ tmp200, i.574,
	ldrh	r0, [ip, #2]	@,
	subs	r4, r3, #0	@ i.574, tmp200
	strh	r0, [r5, #0]	@ movhi	@,* pu32Data
	and	r0, r3, #1	@ tmp201, tmp200,
	mov	r3, #2	@ ivtmp.531,
	beq	.L144	@,
	cmp	r0, #0	@ tmp201,
	beq	.L145	@,
	ldrh	r3, [ip, #6]	@,
	subs	r4, r4, #1	@ i.574, i.574,
	strh	r3, [r5, #2]	@ movhi	@,
	mov	r3, #4	@ ivtmp.531,
	beq	.L144	@,
.L145:
	add	r7, ip, r3, asl #1	@, tmp247, pu32Src, ivtmp.531,
	add	r0, r3, #2	@ tmp203, ivtmp.531,
	subs	r4, r4, #2	@ i.574, i.574,
	ldrh	r7, [r7, #2]	@,
	add	r6, ip, r0, asl #1	@, tmp252, pu32Src, tmp203,
	strh	r7, [r5, r3]	@ movhi	@,* ivtmp.531
	add	r3, r0, #2	@ ivtmp.531, tmp203,
	ldrh	r6, [r6, #2]	@,
	strh	r6, [r5, r0]	@ movhi	@,
	bne	.L145	@,
.L144:
	ldr	ip, [r2, #8]	@ <variable>.u32DataBytes, <variable>.u32DataBytes
	mov	r3, #16	@ tmp190,
	str	r1, [r2, #0]	@ WkBuf, <variable>.pDataBuf
	str	r3, [r2, #16]	@ tmp190, <variable>.u32BitPerSample
	mov	r1, ip, lsr #1	@ tmp192, <variable>.u32DataBytes,
	str	r1, [r2, #8]	@ tmp192, <variable>.u32DataBytes
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	.fnend
	.size	UTIL_UnifyBitDepthPcmData, .-UTIL_UnifyBitDepthPcmData
	.align	2
	.global	UTIL_GainProcess
	.type	UTIL_GainProcess, %function
UTIL_GainProcess:
	.fnstart
.LFB911:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	ldr	r3, [r0, #20]	@ <variable>.u32Channels, <variable>.u32Channels
	ldr	ip, [r0, #12]	@ <variable>.u32SamplesPerFrame, <variable>.u32SamplesPerFrame
	cmp	r1, #1	@ bLinearMode,
	mul	ip, ip, r3	@ samples, <variable>.u32SamplesPerFrame, <variable>.u32Channels
	beq	.L266	@,
	ldr	r3, [r0, #16]	@ <variable>.u32BitPerSample, <variable>.u32BitPerSample
	cmp	r3, #16	@ <variable>.u32BitPerSample,
	beq	.L182	@,
	cmp	r3, #24	@ <variable>.u32BitPerSample,
	ldmnefd	sp, {r4, r5, r6, r7, r8, r9, fp, sp, pc}	@
	uxtb	r1, r2	@ tmp193, Volume
	movw	r3, #:lower16:.LANCHOR0	@ tmp194,
	rsb	r2, r1, #139	@ idx, tmp193,
	movt	r3, #:upper16:.LANCHOR0	@ tmp194,
	cmp	r2, #99	@ idx,
	movge	r2, #99	@ tmp195,
	cmp	ip, #0	@ samples,
	ldr	r0, [r0, #0]	@ temp.675, <variable>.pDataBuf
	ldr	r1, [r3, r2, asl #2]	@ realVol, g_u32VolCoef
	ldmeqfd	sp, {r4, r5, r6, r7, r8, r9, fp, sp, pc}	@
	cmp	r1, #0	@ realVol,
	sub	r8, ip, #1	@ tmp244, samples,
	movw	r6, #:lower16:8388607	@ tmp220,
	and	r8, r8, #1	@ tmp245, tmp244,
	movt	r6, #:upper16:8388607	@ tmp220,
	mov	r2, r1	@ D.15771, realVol
	mov	r3, r2, asr #31	@ D.15771
	ldr	r4, [r0, #0]	@ data,* temp.675
	beq	.L267	@,
	mov	r5, r4, asr #31	@ data
	cmp	r1, #8388608	@ realVol,
	mul	r7, r2, r5	@ tmp326, D.15771, data
	mla	r7, r4, r3, r7	@ tmp327, data, D.15771, tmp326
	umull	r4, r5, r2, r4	@ tmp328, D.15771, data
	add	r5, r7, r5	@, tmp327,
	mov	r7, r4, lsr #23	@ tmp331, tmp328,
	orr	r5, r7, r5, asl #9	@, tmp332, tmp331,,
	mov	r4, r5	@ var.680, tmp332
	bls	.L230	@,
	mov	r4, r5, asr #8	@ tmp334, tmp332,
	mov	r5, r4, asr #31	@ tmp335
	mul	r7, r4, r3	@ tmp337, tmp335, D.15771
	mla	r7, r2, r5, r7	@ tmp338, D.15771,, tmp337
	umull	r4, r5, r4, r2	@ tmp339, tmp335, D.15771
	add	r5, r7, r5	@, tmp338,
	mov	r7, r4, lsr #23	@ D.15769, tmp339,
	orr	r4, r7, r5, asl #9	@, var, D.15769,,
	mov	r5, r4, asr #31	@ sign, var,
	cmp	r5, r4, asr #23	@ sign, var,
	eorne	r4, r5, r6	@ var, sign, tmp220
	mov	r4, r4, asl #8	@ var.680, var,
.L230:
	subs	r5, ip, #1	@ ivtmp.653, samples,
	str	r4, [r0, #0]	@ var.680,* temp.675
	mov	ip, #4	@ ivtmp.659,
	ldmeqfd	sp, {r4, r5, r6, r7, r8, r9, fp, sp, pc}	@
.L271:
	cmp	r8, #0	@ tmp245,
	beq	.L192	@,
	cmp	r1, #0	@ realVol,
	ldr	r8, [r0, ip]	@ data,* ivtmp.659
	moveq	r4, r1	@ var.680, realVol
	beq	.L234	@,
	mov	r9, r8, asr #31	@ data
	cmp	r1, #8388608	@ realVol,
	mul	r4, r2, r9	@ tmp351, D.15771, data
	mla	r7, r8, r3, r4	@ tmp352, data, D.15771, tmp351
	umull	r8, r9, r2, r8	@ tmp353, D.15771, data
	add	r9, r7, r9	@, tmp352,
	mov	r4, r8, lsr #23	@ tmp356, tmp353,
	orr	r7, r4, r9, asl #9	@, tmp357, tmp356,,
	mov	r4, r7	@ var.680, tmp357
	bls	.L234	@,
	mov	r8, r7, asr #8	@ tmp359, tmp357,
	mov	r9, r8, asr #31	@ tmp360
	mul	r7, r8, r3	@ tmp362, tmp360, D.15771
	mla	r4, r2, r9, r7	@ tmp363, D.15771,, tmp362
	umull	r8, r9, r8, r2	@ tmp364, tmp360, D.15771
	add	r9, r4, r9	@, tmp363,
	mov	r7, r8, lsr #23	@ D.15769, tmp364,
	orr	r4, r7, r9, asl #9	@, var, D.15769,,
	mov	r7, r4, asr #31	@ sign, var,
	cmp	r7, r4, asr #23	@ sign, var,
	eorne	r4, r7, r6	@ var, sign, tmp220
	mov	r4, r4, asl #8	@ var.680, var,
.L234:
	subs	r5, r5, #1	@ ivtmp.653, ivtmp.653,
	str	r4, [r0, ip]	@ var.680,* ivtmp.659
	add	ip, ip, #4	@ ivtmp.659, ivtmp.659,
	bne	.L192	@,
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, fp, sp, pc}	@
.L266:
	ldr	r3, [r0, #16]	@ <variable>.u32BitPerSample, <variable>.u32BitPerSample
	cmp	r3, #16	@ <variable>.u32BitPerSample,
	beq	.L172	@,
	cmp	r3, #24	@ <variable>.u32BitPerSample,
	ldmnefd	sp, {r4, r5, r6, r7, r8, r9, fp, sp, pc}	@
	uxth	r2, r2	@ temp.672, Volume
	ldr	r3, [r0, #0]	@ temp.671, <variable>.pDataBuf
	cmp	r2, #0	@ temp.672,
	bne	.L268	@,
	cmp	ip, #0	@ samples,
	ldmlefd	sp, {r4, r5, r6, r7, r8, r9, fp, sp, pc}	@
	cmp	ip, #1	@ samples,
	sub	r0, ip, #1	@ tmp231, samples,
	and	r0, r0, #1	@ tmp233, tmp231,
	str	r2, [r3, #0]	@ tmp216,* temp.671
	ldmeqfd	sp, {r4, r5, r6, r7, r8, r9, fp, sp, pc}	@
	cmp	r0, #0	@ tmp233,
	beq	.L180	@,
	mov	r1, #2	@ n,
	cmp	ip, r1	@ samples, n
	str	r2, [r3, #4]	@ tmp216,
	ldmeqfd	sp, {r4, r5, r6, r7, r8, r9, fp, sp, pc}	@
.L180:
	add	r0, r1, #1	@ tmp234, n,
	str	r2, [r3, r1, asl #2]	@ tmp216,* temp.671
	add	r1, r0, #1	@ n, tmp234,
	cmp	ip, r1	@ samples, n
	str	r2, [r3, r0, asl #2]	@ tmp216,* temp.671
	bne	.L180	@,
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, fp, sp, pc}	@
.L182:
	uxtb	r1, r2	@ tmp186, Volume
	movw	r3, #:lower16:.LANCHOR0	@ tmp187,
	rsb	r2, r1, #139	@ idx, tmp186,
	movt	r3, #:upper16:.LANCHOR0	@ tmp187,
	cmp	r2, #99	@ idx,
	movge	r2, #99	@ tmp188,
	cmp	ip, #0	@ samples,
	ldr	r1, [r0, #0]	@ temp.674, <variable>.pDataBuf
	ldr	r2, [r3, r2, asl #2]	@ realVol, g_u32VolCoef
	ldmeqfd	sp, {r4, r5, r6, r7, r8, r9, fp, sp, pc}	@
	cmp	r2, #0	@ realVol,
	sub	r0, ip, #1	@ tmp240, samples,
	and	r4, r0, #1	@ tmp241, tmp240,
	movw	r5, #32767	@ tmp217,
	ldrh	r3, [r1, #0]	@ D.15745,* temp.674
	bne	.L216	@,
	subs	ip, ip, #1	@ ivtmp.653, samples,
	mov	r3, r2	@ D.15746, realVol
	mov	r0, #2	@ ivtmp.643,
	strh	r3, [r1, #0]	@ movhi	@ D.15746,* temp.674
	ldmeqfd	sp, {r4, r5, r6, r7, r8, r9, fp, sp, pc}	@
.L272:
	cmp	r4, #0	@ tmp241,
	beq	.L188	@,
	cmp	r2, #0	@ realVol,
	ldrh	r3, [r1, r0]	@ D.15745,* ivtmp.643
	moveq	r3, r2	@ D.15746, realVol
	beq	.L258	@,
#APP
@ 622 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb r3, r2, r3	@ y, realVol, D.15745
@ 0 "" 2
@ 623 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	ASR    r3, r3, #7	@ var, y
@ 0 "" 2
	cmp	r2, #8388608	@ realVol,
	bls	.L256	@,
	mov	r4, r3, asr #31	@ sign, var,
	cmp	r4, r3, asr #15	@ sign, var,
	eorne	r3, r4, r5	@ var, sign, tmp217
.L256:
	uxth	r3, r3	@ D.15746, var
.L258:
	subs	ip, ip, #1	@ ivtmp.653, ivtmp.653,
	strh	r3, [r1, r0]	@ movhi	@ D.15746,* ivtmp.643
	add	r0, r0, #2	@ ivtmp.643, ivtmp.643,
	ldmeqfd	sp, {r4, r5, r6, r7, r8, r9, fp, sp, pc}	@
.L188:
	cmp	r2, #0	@ realVol,
	ldrh	r3, [r1, r0]	@ D.15745,* ivtmp.643
	moveq	r3, r2	@ D.15746, realVol
	beq	.L185	@,
#APP
@ 622 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb r4, r2, r3	@ y, realVol, D.15745
@ 0 "" 2
@ 623 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	ASR    r3, r4, #7	@ var, y
@ 0 "" 2
	cmp	r2, #8388608	@ realVol,
	bls	.L187	@,
	mov	r4, r3, asr #31	@ sign, var,
	cmp	r4, r3, asr #15	@ sign, var,
	eorne	r3, r4, r5	@ var, sign, tmp217
.L187:
	uxth	r3, r3	@ D.15746, var
.L185:
	add	r4, r0, #2	@ tmp242, ivtmp.643,
	cmp	r2, #0	@ realVol,
	strh	r3, [r1, r0]	@ movhi	@ D.15746,* ivtmp.643
	sub	ip, ip, #1	@ tmp243, ivtmp.653,
	ldrh	r3, [r1, r4]	@ D.15745,
	bne	.L225	@,
	mov	r3, r2	@ D.15746, realVol
.L261:
	subs	ip, ip, #1	@ ivtmp.653, tmp243,
	strh	r3, [r1, r4]	@ movhi	@ D.15746,
	add	r0, r4, #2	@ ivtmp.643, tmp242,
	bne	.L188	@,
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, fp, sp, pc}	@
.L270:
	mov	r8, r1	@ var.680, realVol
.L239:
	subs	r5, ip, #1	@ ivtmp.653, tmp247,
	str	r8, [r0, r4]	@ var.680,
	add	ip, r4, #4	@ ivtmp.659, tmp246,
	beq	.L269	@,
.L192:
	cmp	r1, #0	@ realVol,
	ldr	r8, [r0, ip]	@ data,* ivtmp.659
	moveq	r8, r1	@ var.680, realVol
	beq	.L190	@,
	mov	r9, r8, asr #31	@ data
	cmp	r1, #8388608	@ realVol,
	mul	r4, r2, r9	@ tmp198, D.15771, data
	mla	r4, r8, r3, r4	@ tmp286, data, D.15771, tmp198
	umull	r8, r9, r2, r8	@ tmp199, D.15771, data
	add	r9, r4, r9	@, tmp286,
	mov	r4, r8, lsr #23	@ tmp213, tmp199,
	orr	r4, r4, r9, asl #9	@, tmp288, tmp213,,
	mov	r8, r4	@ var.680, tmp288
	bls	.L190	@,
	mov	r8, r4, asr #8	@ tmp203, tmp288,
	mov	r9, r8, asr #31	@ tmp204
	mul	r4, r8, r3	@ tmp206, tmp204, D.15771
	mla	r4, r2, r9, r4	@ tmp289, D.15771,, tmp206
	umull	r8, r9, r8, r2	@ tmp207, tmp204, D.15771
	add	r9, r4, r9	@, tmp289,
	mov	r4, r8, lsr #23	@ D.15769, tmp207,
	orr	r8, r4, r9, asl #9	@, var, D.15769,,
	mov	r4, r8, asr #31	@ sign, var,
	cmp	r4, r8, asr #23	@ sign, var,
	eorne	r8, r4, r6	@ var, sign, tmp220
	mov	r8, r8, asl #8	@ var.680, var,
.L190:
	add	r4, ip, #4	@ tmp246, ivtmp.659,
	cmp	r1, #0	@ realVol,
	str	r8, [r0, ip]	@ var.680,* ivtmp.659
	sub	ip, r5, #1	@ tmp247, ivtmp.653,
	ldr	r8, [r0, r4]	@ data,
	beq	.L270	@,
	mov	r9, r8, asr #31	@ data
	cmp	r1, #8388608	@ realVol,
	mul	r5, r2, r9	@ tmp375, D.15771, data
	mla	r5, r8, r3, r5	@ tmp376, data, D.15771, tmp375
	umull	r8, r9, r2, r8	@ tmp377, D.15771, data
	add	r9, r5, r9	@, tmp376,
	mov	r5, r8, lsr #23	@ tmp380, tmp377,
	orr	r5, r5, r9, asl #9	@, tmp381, tmp380,,
	mov	r8, r5	@ var.680, tmp381
	bls	.L239	@,
	mov	r8, r5, asr #8	@ tmp383, tmp381,
	mov	r9, r8, asr #31	@ tmp384
	mul	r5, r8, r3	@ tmp386, tmp384, D.15771
	mla	r5, r2, r9, r5	@ tmp387, D.15771,, tmp386
	umull	r8, r9, r8, r2	@ tmp388, tmp384, D.15771
	add	r9, r5, r9	@, tmp387,
	mov	r5, r8, lsr #23	@ D.15769, tmp388,
	orr	r8, r5, r9, asl #9	@, var, D.15769,,
	mov	r5, r8, asr #31	@ sign, var,
	cmp	r5, r8, asr #23	@ sign, var,
	eorne	r8, r5, r6	@ var, sign, tmp220
	mov	r8, r8, asl #8	@ var.680, var,
	b	.L239	@
.L267:
	subs	r5, ip, #1	@ ivtmp.653, samples,
	mov	r4, r1	@ var.680, realVol
	mov	ip, #4	@ ivtmp.659,
	str	r4, [r0, #0]	@ var.680,* temp.675
	bne	.L271	@,
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, fp, sp, pc}	@
.L216:
#APP
@ 622 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb r3, r2, r3	@ y, realVol, D.15745
@ 0 "" 2
@ 623 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	ASR    r3, r3, #7	@ var, y
@ 0 "" 2
	cmp	r2, #8388608	@ realVol,
	bls	.L252	@,
	mov	r0, r3, asr #31	@ sign, var,
	cmp	r0, r3, asr #15	@ sign, var,
	eorne	r3, r0, r5	@ var, sign, tmp217
.L252:
	subs	ip, ip, #1	@ ivtmp.653, samples,
	uxth	r3, r3	@ D.15746, var
	mov	r0, #2	@ ivtmp.643,
	strh	r3, [r1, #0]	@ movhi	@ D.15746,* temp.674
	bne	.L272	@,
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, fp, sp, pc}	@
.L172:
	uxth	r2, r2	@ D.14900, Volume
	ldr	r3, [r0, #0]	@ D.14898, <variable>.pDataBuf
	cmp	r2, #0	@ D.14900,
	bne	.L273	@,
	cmp	ip, #0	@ samples,
	ldmlefd	sp, {r4, r5, r6, r7, r8, r9, fp, sp, pc}	@
	cmp	ip, #1	@ samples,
	sub	r0, ip, #1	@ tmp222, samples,
	and	r0, r0, #1	@ tmp224, tmp222,
	strh	r2, [r3, #0]	@ movhi	@ D.14900,* D.14898
	ldmeqfd	sp, {r4, r5, r6, r7, r8, r9, fp, sp, pc}	@
	cmp	r0, #0	@ tmp224,
	beq	.L176	@,
	mov	r0, #2	@ tmp295,
	cmp	ip, r0	@ samples, n
	mov	r1, r0	@ n, tmp295
	strh	r2, [r3, r0]	@ movhi	@ D.14900,
	ldmeqfd	sp, {r4, r5, r6, r7, r8, r9, fp, sp, pc}	@
.L176:
	add	r4, r1, #1	@ tmp225, n,
	mov	r0, r1, asl #1	@ tmp249, n,
	add	r1, r4, #1	@ n, tmp225,
	mov	r2, r4, asl #1	@ tmp251, tmp225,
	cmp	ip, r1	@ samples, n
	mov	r4, #0	@ movhi	@,
	strh	r4, [r3, r0]	@ movhi	@,
	strh	r4, [r3, r2]	@ movhi	@,
	bne	.L176	@,
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, fp, sp, pc}	@
.L225:
#APP
@ 622 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb r0, r2, r3	@ y, realVol, D.15745
@ 0 "" 2
@ 623 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	ASR    r3, r0, #7	@ var, y
@ 0 "" 2
	cmp	r2, #8388608	@ realVol,
	bls	.L259	@,
	mov	r0, r3, asr #31	@ sign, var,
	cmp	r0, r3, asr #15	@ sign, var,
	eorne	r3, r0, r5	@ var, sign, tmp217
.L259:
	uxth	r3, r3	@ D.15746, var
	b	.L261	@
.L269:
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, fp, sp, pc}	@
.L273:
	cmp	ip, #0	@ samples,
	ldmlefd	sp, {r4, r5, r6, r7, r8, r9, fp, sp, pc}	@
	sub	r0, ip, #1	@ tmp226, samples,
	sxth	r4, r2	@ pretmp.612, D.14900
	and	r0, r0, #1	@ tmp228, tmp226,
	ldrsh	r2, [r3, #0]	@ tmp178,* D.14898
#APP
@ 694 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  r2, r2, r4	@ ret, tmp178, pretmp.612
@ 0 "" 2
@ 695 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    r2, r2, r2	@ sum, ret, ret
@ 0 "" 2
	cmp	ip, #1	@ samples,
	strh	r2, [r3, #0]	@ movhi	@ sum,* D.14898
	mov	r2, #2	@ ivtmp.630,
	ldmeqfd	sp, {r4, r5, r6, r7, r8, r9, fp, sp, pc}	@
	cmp	r0, #0	@ tmp228,
	beq	.L177	@,
	ldrsh	r0, [r3, #2]	@ tmp296,
#APP
@ 694 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  r1, r0, r4	@ ret, tmp296, pretmp.612
@ 0 "" 2
@ 695 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    r0, r1, r1	@ sum, ret, ret
@ 0 "" 2
	cmp	ip, r2	@ samples, n.676
	mov	r1, r2	@ n.676, ivtmp.630
	strh	r0, [r3, #2]	@ movhi	@ sum,
	mov	r2, #4	@ ivtmp.630,
	ldmeqfd	sp, {r4, r5, r6, r7, r8, r9, fp, sp, pc}	@
.L177:
	ldrsh	r5, [r3, r2]	@ tmp254,* ivtmp.630
#APP
@ 694 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  r0, r5, r4	@ ret, tmp254, pretmp.612
@ 0 "" 2
@ 695 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    r5, r0, r0	@ sum, ret, ret
@ 0 "" 2
	add	r0, r2, #2	@ tmp230, ivtmp.630,
	strh	r5, [r3, r2]	@ movhi	@ sum,* ivtmp.630
	add	r1, r1, #1	@ tmp229, n.676,
	ldrsh	r2, [r3, r0]	@ tmp259,
#APP
@ 694 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  r2, r2, r4	@ ret, tmp259, pretmp.612
@ 0 "" 2
@ 695 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    r2, r2, r2	@ sum, ret, ret
@ 0 "" 2
	add	r1, r1, #1	@ n.676, tmp229,
	strh	r2, [r3, r0]	@ movhi	@ sum,
	cmp	ip, r1	@ samples, n.676
	add	r2, r0, #2	@ ivtmp.630, tmp230,
	bne	.L177	@,
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, fp, sp, pc}	@
.L268:
	cmp	ip, #0	@ samples,
	ldmlefd	sp, {r4, r5, r6, r7, r8, r9, fp, sp, pc}	@
	sub	r0, ip, #1	@ tmp235, samples,
	sxth	r4, r2	@ temp.672, temp.672
	and	r0, r0, #1	@ tmp237, tmp235,
	ldr	r2, [r3, #0]	@ tmp181,* temp.671
#APP
@ 694 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  r2, r2, r4	@ ret, tmp181, temp.672
@ 0 "" 2
@ 695 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    r2, r2, r2	@ sum, ret, ret
@ 0 "" 2
	cmp	ip, #1	@ samples,
	str	r2, [r3, #0]	@ sum,* temp.671
	mov	r2, #4	@ ivtmp.638,
	ldmeqfd	sp, {r4, r5, r6, r7, r8, r9, fp, sp, pc}	@
	cmp	r0, #0	@ tmp237,
	beq	.L181	@,
	ldr	r0, [r3, #4]	@ tmp301,
#APP
@ 694 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  r1, r0, r4	@ ret, tmp301, temp.672
@ 0 "" 2
@ 695 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    r2, r1, r1	@ sum, ret, ret
@ 0 "" 2
	mov	r1, #2	@ n.677,
	cmp	ip, r1	@ samples, n.677
	str	r2, [r3, #4]	@ sum,
	mov	r2, #8	@ ivtmp.638,
	ldmeqfd	sp, {r4, r5, r6, r7, r8, r9, fp, sp, pc}	@
.L181:
	ldr	r5, [r3, r2]	@ tmp270,* ivtmp.638
#APP
@ 694 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  r0, r5, r4	@ ret, tmp270, temp.672
@ 0 "" 2
@ 695 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    r5, r0, r0	@ sum, ret, ret
@ 0 "" 2
	add	r0, r2, #4	@ tmp239, ivtmp.638,
	str	r5, [r3, r2]	@ sum,* ivtmp.638
	add	r1, r1, #1	@ tmp238, n.677,
	ldr	r2, [r3, r0]	@ tmp275,
#APP
@ 694 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  r2, r2, r4	@ ret, tmp275, temp.672
@ 0 "" 2
@ 695 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    r2, r2, r2	@ sum, ret, ret
@ 0 "" 2
	add	r1, r1, #1	@ n.677, tmp238,
	str	r2, [r3, r0]	@ sum,
	cmp	ip, r1	@ samples, n.677
	add	r2, r0, #4	@ ivtmp.638, tmp239,
	bne	.L181	@,
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, fp, sp, pc}	@
	.fnend
	.size	UTIL_GainProcess, .-UTIL_GainProcess
	.align	2
	.global	UTIL_LRGainProcess
	.type	UTIL_LRGainProcess, %function
UTIL_LRGainProcess:
	.fnstart
.LFB912:
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
	ldr	ip, [r0, #20]	@ <variable>.u32Channels, <variable>.u32Channels
	ldr	r4, [r0, #12]	@ <variable>.u32SamplesPerFrame, <variable>.u32SamplesPerFrame
	cmp	r1, #1	@ bLinearMode,
	mul	r4, r4, ip	@ samples, <variable>.u32SamplesPerFrame, <variable>.u32Channels
	beq	.L421	@,
	ldr	r1, [r0, #16]	@ <variable>.u32BitPerSample, <variable>.u32BitPerSample
	cmp	r1, #16	@ <variable>.u32BitPerSample,
	beq	.L291	@,
	cmp	r1, #24	@ <variable>.u32BitPerSample,
	beq	.L422	@,
.L326:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L422:
	uxtb	r1, r3	@ tmp258, VolumeR
	uxtb	r6, r2	@ tmp253, VolumeL
	rsb	ip, r1, #139	@ idx.832, tmp258,
	rsb	r6, r6, #139	@ idx, tmp253,
	cmp	r6, #99	@ idx,
	movge	r6, #99	@ tmp255,
	cmp	ip, #99	@ idx.832,
	movge	ip, #99	@ tmp260,
	cmp	r2, r3	@ VolumeL, VolumeR
	movw	r3, #:lower16:.LANCHOR0	@ tmp254,
	movt	r3, #:upper16:.LANCHOR0	@ tmp254,
	ldr	r1, [r0, #0]	@ temp.816, <variable>.pDataBuf
	ldr	ip, [r3, ip, asl #2]	@ realVolR, g_u32VolCoef
	ldr	r0, [r3, r6, asl #2]	@ realVolL, g_u32VolCoef
	beq	.L311	@,
	cmp	r4, #0	@ samples,
	beq	.L326	@,
	sub	r2, r4, #1	@ samples.839, samples,
	movw	sl, #:lower16:8388607	@ tmp332,
	tst	r2, #1	@ samples.839,
	movt	sl, #:upper16:8388607	@ tmp332,
	mov	r3, #0	@ ivtmp.803,
	mov	r4, ip	@, realVolR
	mov	r5, r4, asr #31	@
	mov	r6, r0	@ D.15882, realVolL
	mov	r7, r6, asr #31	@ D.15882
	strd	r4, [fp, #-52]	@,,
	mov	r9, sl	@ tmp332, tmp332
	ldr	r4, [r1, r3]	@ data.834,* ivtmp.803
	beq	.L317	@,
.L423:
	cmp	ip, #0	@ realVolR,
	moveq	sl, ip	@ var.835, realVolR
	beq	.L319	@,
	ldr	sl, [fp, #-52]	@, %sfp
	mov	r5, r4, asr #31	@ data.834
	cmp	ip, #8388608	@ realVolR,
	mul	r8, sl, r5	@ tmp279,, data.834
	ldr	r5, [fp, #-48]	@, %sfp
	ldr	sl, [fp, #-52]	@, %sfp
	mla	r8, r4, r5, r8	@ tmp413, data.834,, tmp279
	umull	r4, r5, sl, r4	@ tmp280,, data.834
	add	r5, r8, r5	@, tmp413,
	mov	r8, r4, lsr #23	@ tmp315, tmp280,
	orr	r8, r8, r5, asl #9	@, tmp415, tmp315,,
	mov	sl, r8	@ var.835, tmp415
	bls	.L319	@,
	mov	r4, r8, asr #8	@ tmp284, tmp415,
	ldr	r8, [fp, #-48]	@, %sfp
	mov	r5, r4, asr #31	@ tmp285
	mul	sl, r4, r8	@ tmp287, tmp285,
	ldr	r8, [fp, #-52]	@, %sfp
	mla	sl, r8, r5, sl	@ tmp416,,, tmp287
	umull	r4, r5, r4, r8	@ tmp288, tmp285,
	add	r5, sl, r5	@, tmp416,
	mov	r8, r4, lsr #23	@ D.15896, tmp288,
	orr	r8, r8, r5, asl #9	@, var, D.15896,,
	mov	r4, r8, asr #31	@ sign, var,
	cmp	r4, r8, asr #23	@ sign, var,
	eorne	r8, r4, r9	@ var, sign, tmp332
	mov	sl, r8, asl #8	@ var.835, var,
.L319:
	str	sl, [r1, r3]	@ var.835,* ivtmp.803
	sub	r2, r2, #1	@ samples.839, samples.839,
	add	r3, r3, #4	@ ivtmp.803, ivtmp.803,
.L424:
	tst	r2, #1	@ samples.839,
	ldr	r4, [r1, r3]	@ data.834,* ivtmp.803
	bne	.L423	@,
.L317:
	cmp	r0, #0	@ realVolL,
	moveq	sl, r0	@ var.836, realVolL
	beq	.L323	@,
	mov	r5, r4, asr #31	@ data.834
	cmp	r0, #8388608	@ realVolL,
	mul	sl, r6, r5	@ tmp294, D.15882, data.834
	mla	r8, r4, r7, sl	@ tmp418, data.834, D.15882, tmp294
	umull	r4, r5, r6, r4	@ tmp295, D.15882, data.834
	add	r5, r8, r5	@, tmp418,
	mov	sl, r4, lsr #23	@ tmp317, tmp295,
	orr	r8, sl, r5, asl #9	@, tmp420, tmp317,,
	mov	sl, r8	@ var.836, tmp420
	bls	.L323	@,
	mov	r4, r8, asr #8	@ tmp299, tmp420,
	mov	r5, r4, asr #31	@ tmp300
	mul	r8, r4, r7	@ tmp302, tmp300, D.15882
	mla	sl, r6, r5, r8	@ tmp421, D.15882,, tmp302
	umull	r4, r5, r4, r6	@ tmp303, tmp300, D.15882
	add	r5, sl, r5	@, tmp421,
	mov	r8, r4, lsr #23	@ D.15884, tmp303,
	orr	r8, r8, r5, asl #9	@, var, D.15884,,
	mov	r4, r8, asr #31	@ sign, var,
	cmp	r4, r8, asr #23	@ sign, var,
	eorne	r8, r4, r9	@ var, sign, tmp332
	mov	sl, r8, asl #8	@ var.836, var,
.L323:
	cmp	r2, #0	@ samples.839,
	str	sl, [r1, r3]	@ var.836,* ivtmp.803
	add	r3, r3, #4	@ ivtmp.803, ivtmp.803,
	beq	.L326	@,
	sub	r2, r2, #1	@ samples.839, samples.839,
	b	.L424	@
.L421:
	ldr	ip, [r0, #16]	@ <variable>.u32BitPerSample, <variable>.u32BitPerSample
	cmp	ip, #16	@ <variable>.u32BitPerSample,
	beq	.L277	@,
	cmp	ip, #24	@ <variable>.u32BitPerSample,
	bne	.L326	@,
	sxth	r2, r2	@ temp.812, VolumeL
	sxth	r3, r3	@ temp.813, VolumeR
	cmp	r2, r3	@ temp.812, temp.813
	ldr	r0, [r0, #0]	@ temp.811, <variable>.pDataBuf
	beq	.L285	@,
	cmp	r4, #0	@ samples,
	ble	.L326	@,
	sub	r6, r4, #1	@ tmp351, samples,
	ldr	ip, [r0, #0]	@ tmp445,* temp.811
	and	r6, r6, #1	@ tmp353, tmp351,
#APP
@ 694 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  ip, ip, r2	@ ret, tmp445, temp.812
@ 0 "" 2
@ 695 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    ip, ip, ip	@ sum.825, ret, ret
@ 0 "" 2
	cmp	r4, r1	@ samples, n.828
	str	ip, [r0], #4	@ sum.825,
	beq	.L326	@,
	cmp	r6, #0	@ tmp353,
	beq	.L290	@,
	ldr	ip, [r0, #0]	@ tmp454,* ivtmp.745
#APP
@ 694 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  ip, ip, r3	@ ret, tmp454, temp.813
@ 0 "" 2
@ 695 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    ip, ip, ip	@ sum.825, ret, ret
@ 0 "" 2
	add	r1, r1, #1	@ n.828, n.828,
	str	ip, [r0], #4	@ sum.825,
	cmp	r4, r1	@ samples, n.828
	bne	.L290	@,
	b	.L326	@
.L425:
	ldr	r6, [r0, #0]	@ tmp229,* ivtmp.745
#APP
@ 694 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  ip, r6, r3	@ ret, tmp229, temp.813
@ 0 "" 2
@ 695 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    r6, ip, ip	@ sum.825, ret, ret
@ 0 "" 2
	add	r1, r1, #1	@ tmp354, n.828,
	mov	ip, r0	@ tmp355, ivtmp.745
	tst	r1, #1	@ tmp354,
	str	r6, [ip], #4	@ sum.825,
	beq	.L353	@,
.L426:
	ldr	r6, [r0, #4]	@ tmp459,
#APP
@ 694 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  r0, r6, r3	@ ret, tmp459, temp.813
@ 0 "" 2
@ 695 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    r6, r0, r0	@ sum.825, ret, ret
@ 0 "" 2
.L394:
	add	r1, r1, #1	@ n.828, tmp354,
	mov	r0, ip	@ ivtmp.745, tmp355
	cmp	r4, r1	@ samples, n.828
	str	r6, [r0], #4	@ sum.825,
	beq	.L326	@,
.L290:
	tst	r1, #1	@ n.828,
	bne	.L425	@,
	ldr	r6, [r0, #0]	@ tmp231,* ivtmp.745
#APP
@ 694 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  ip, r6, r2	@ ret, tmp231, temp.812
@ 0 "" 2
@ 695 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    r6, ip, ip	@ sum.825, ret, ret
@ 0 "" 2
	add	r1, r1, #1	@ tmp354, n.828,
	mov	ip, r0	@ tmp355, ivtmp.745
	tst	r1, #1	@ tmp354,
	str	r6, [ip], #4	@ sum.825,
	bne	.L426	@,
.L353:
	ldr	r6, [r0, #4]	@ tmp456,
#APP
@ 694 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  r0, r6, r2	@ ret, tmp456, temp.812
@ 0 "" 2
@ 695 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    r6, r0, r0	@ sum.825, ret, ret
@ 0 "" 2
	b	.L394	@
.L291:
	uxtb	r1, r3	@ tmp241, VolumeR
	uxtb	ip, r2	@ tmp236, VolumeL
	rsb	r6, r1, #139	@ idx.830, tmp241,
	rsb	ip, ip, #139	@ idx.829, tmp236,
	cmp	ip, #99	@ idx.829,
	movge	ip, #99	@ tmp238,
	cmp	r6, #99	@ idx.830,
	movge	r6, #99	@ tmp243,
	cmp	r2, r3	@ VolumeL, VolumeR
	movw	r3, #:lower16:.LANCHOR0	@ tmp237,
	movt	r3, #:upper16:.LANCHOR0	@ tmp237,
	ldr	r1, [r0, #0]	@ temp.815, <variable>.pDataBuf
	ldr	r6, [r3, r6, asl #2]	@ realVolR, g_u32VolCoef
	ldr	r0, [r3, ip, asl #2]	@ realVolL, g_u32VolCoef
	beq	.L293	@,
	cmp	r4, #0	@ samples,
	subne	r2, r4, #1	@ samples.838, samples,
	movne	r3, #0	@ ivtmp.771,
	movwne	r4, #32767	@ tmp325,
	beq	.L326	@,
	tst	r2, #1	@ samples.838,
	ldrh	ip, [r1, r3]	@ temp.831,* ivtmp.771
	beq	.L300	@,
.L427:
	cmp	r0, #0	@ realVolL,
	moveq	ip, r0	@ D.15844, realVolL
	beq	.L302	@,
#APP
@ 622 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb ip, r0, ip	@ y, realVolL, temp.831
@ 0 "" 2
@ 623 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	ASR    ip, ip, #7	@ var, y
@ 0 "" 2
	cmp	r0, #8388608	@ realVolL,
	bls	.L304	@,
	mov	r8, ip, asr #31	@ sign, var,
	cmp	r8, ip, asr #15	@ sign, var,
	eorne	ip, r8, r4	@ var, sign, tmp325
.L304:
	uxth	ip, ip	@ D.15844, var
.L302:
	strh	ip, [r1, r3]	@ movhi	@ D.15844,* ivtmp.771
	sub	r2, r2, #1	@ samples.838, samples.838,
	add	r3, r3, #2	@ ivtmp.771, ivtmp.771,
.L428:
	tst	r2, #1	@ samples.838,
	ldrh	ip, [r1, r3]	@ temp.831,* ivtmp.771
	bne	.L427	@,
.L300:
	cmp	r6, #0	@ realVolR,
	moveq	ip, r6	@ D.15839, realVolR
	beq	.L307	@,
#APP
@ 622 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb ip, r6, ip	@ y, realVolR, temp.831
@ 0 "" 2
@ 623 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	ASR    ip, ip, #7	@ var, y
@ 0 "" 2
	cmp	r6, #8388608	@ realVolR,
	bls	.L309	@,
	mov	r8, ip, asr #31	@ sign, var,
	cmp	r8, ip, asr #15	@ sign, var,
	eorne	ip, r8, r4	@ var, sign, tmp325
.L309:
	uxth	ip, ip	@ D.15839, var
.L307:
	cmp	r2, #0	@ samples.838,
	strh	ip, [r1, r3]	@ movhi	@ D.15839,* ivtmp.771
	add	r3, r3, #2	@ ivtmp.771, ivtmp.771,
	beq	.L326	@,
	sub	r2, r2, #1	@ samples.838, samples.838,
	b	.L428	@
.L277:
	sxth	r2, r2	@ D.14926, VolumeL
	sxth	r3, r3	@ D.14927, VolumeR
	cmp	r2, r3	@ D.14926, D.14927
	ldr	r0, [r0, #0]	@ D.14924, <variable>.pDataBuf
	beq	.L279	@,
	cmp	r4, #0	@ samples,
	ble	.L326	@,
	sub	r6, r4, #1	@ tmp341, samples,
	ldrsh	ip, [r0, #0]	@ tmp426,* D.14924
	and	r6, r6, #1	@ tmp343, tmp341,
#APP
@ 694 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  ip, ip, r2	@ ret, tmp426, D.14926
@ 0 "" 2
@ 695 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    ip, ip, ip	@ sum.819, ret, ret
@ 0 "" 2
	cmp	r4, r1	@ samples, n.823
	strh	ip, [r0], #2	@ movhi	@ sum.819,
	beq	.L326	@,
	cmp	r6, #0	@ tmp343,
	beq	.L284	@,
	ldrsh	ip, [r0, #0]	@ tmp435,* ivtmp.737
#APP
@ 694 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  ip, ip, r3	@ ret, tmp435, D.14927
@ 0 "" 2
@ 695 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    ip, ip, ip	@ sum.819, ret, ret
@ 0 "" 2
	add	r1, r1, #1	@ n.823, n.823,
	strh	ip, [r0], #2	@ movhi	@ sum.819,
	cmp	r4, r1	@ samples, n.823
	bne	.L284	@,
	b	.L326	@
.L429:
	ldrsh	r6, [r0, #0]	@ tmp220,* ivtmp.737
#APP
@ 694 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  ip, r6, r3	@ ret, tmp220, D.14927
@ 0 "" 2
@ 695 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    r6, ip, ip	@ sum.819, ret, ret
@ 0 "" 2
	add	r1, r1, #1	@ tmp344, n.823,
	mov	ip, r0	@ tmp345, ivtmp.737
	tst	r1, #1	@ tmp344,
	strh	r6, [ip], #2	@ movhi	@ sum.819,
	beq	.L342	@,
.L430:
	ldrsh	r6, [r0, #2]	@ tmp440,
#APP
@ 694 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  r0, r6, r3	@ ret, tmp440, D.14927
@ 0 "" 2
@ 695 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    r6, r0, r0	@ sum.819, ret, ret
@ 0 "" 2
.L393:
	add	r1, r1, #1	@ n.823, tmp344,
	mov	r0, ip	@ ivtmp.737, tmp345
	cmp	r4, r1	@ samples, n.823
	strh	r6, [r0], #2	@ movhi	@ sum.819,
	beq	.L326	@,
.L284:
	tst	r1, #1	@ n.823,
	bne	.L429	@,
	ldrsh	r6, [r0, #0]	@ tmp222,* ivtmp.737
#APP
@ 694 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  ip, r6, r2	@ ret, tmp222, D.14926
@ 0 "" 2
@ 695 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    r6, ip, ip	@ sum.819, ret, ret
@ 0 "" 2
	add	r1, r1, #1	@ tmp344, n.823,
	mov	ip, r0	@ tmp345, ivtmp.737
	tst	r1, #1	@ tmp344,
	strh	r6, [ip], #2	@ movhi	@ sum.819,
	bne	.L430	@,
.L342:
	ldrsh	r6, [r0, #2]	@ tmp437,
#APP
@ 694 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  r0, r6, r2	@ ret, tmp437, D.14926
@ 0 "" 2
@ 695 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    r6, r0, r0	@ sum.819, ret, ret
@ 0 "" 2
	b	.L393	@
.L311:
	cmp	r4, #0	@ samples,
	beq	.L326	@,
	cmp	r0, #0	@ realVolL,
	sub	r7, r4, #1	@ tmp360, samples,
	and	ip, r7, #1	@ tmp361, tmp360,
	movw	r2, #:lower16:8388607	@ tmp329,
	mov	r6, r0	@ D.15906, realVolL
	mov	r7, r6, asr #31	@ D.15906
	movt	r2, #:upper16:8388607	@ tmp329,
	ldr	r8, [r1, #0]	@ data,* temp.816
	beq	.L431	@,
	mov	r9, r8, asr #31	@ data
	cmp	r0, #8388608	@ realVolL,
	mul	r3, r6, r9	@ tmp483, D.15906, data
	mla	r3, r8, r7, r3	@ tmp484, data, D.15906, tmp483
	umull	r8, r9, r6, r8	@ tmp485, D.15906, data
	add	r9, r3, r9	@, tmp484,
	mov	r3, r8, lsr #23	@ tmp488, tmp485,
	orr	r8, r3, r9, asl #9	@, tmp489, tmp488,,
	mov	r3, r8	@ var.833, tmp489
	bls	.L369	@,
	mov	r8, r8, asr #8	@ tmp491, tmp489,
	mov	r9, r8, asr #31	@ tmp492
	mul	r3, r8, r7	@ tmp494, tmp492, D.15906
	mla	r3, r6, r9, r3	@ tmp495, D.15906,, tmp494
	umull	r8, r9, r8, r6	@ tmp496, tmp492, D.15906
	add	r9, r3, r9	@, tmp495,
	mov	r3, r8, lsr #23	@ D.15908, tmp496,
	orr	r3, r3, r9, asl #9	@, var, D.15908,,
	mov	r8, r3, asr #31	@ sign, var,
	cmp	r8, r3, asr #23	@ sign, var,
	eorne	r3, r8, r2	@ var, sign, tmp329
	mov	r3, r3, asl #8	@ var.833, var,
.L369:
	subs	r4, r4, #1	@ ivtmp.761, samples,
	str	r3, [r1, #0]	@ var.833,* temp.816
	mov	r3, #4	@ ivtmp.783,
	beq	.L326	@,
	cmp	ip, #0	@ tmp361,
	beq	.L316	@,
	cmp	r0, #0	@ realVolL,
	ldr	r8, [r1, r3]	@ data,* ivtmp.783
	moveq	ip, r0	@ var.833, realVolL
	beq	.L373	@,
	mov	r9, r8, asr #31	@ data
	cmp	r0, #8388608	@ realVolL,
	mul	ip, r6, r9	@ tmp508, D.15906, data
	mla	ip, r8, r7, ip	@ tmp509, data, D.15906, tmp508
	umull	r8, r9, r6, r8	@ tmp510, D.15906, data
	add	r9, ip, r9	@, tmp509,
	mov	ip, r8, lsr #23	@ tmp513, tmp510,
	orr	r8, ip, r9, asl #9	@, tmp514, tmp513,,
	mov	ip, r8	@ var.833, tmp514
	bls	.L373	@,
	mov	r8, r8, asr #8	@ tmp516, tmp514,
	mov	r9, r8, asr #31	@ tmp517
	mul	ip, r8, r7	@ tmp519, tmp517, D.15906
	mla	ip, r6, r9, ip	@ tmp520, D.15906,, tmp519
	umull	r8, r9, r8, r6	@ tmp521, tmp517, D.15906
	add	r9, ip, r9	@, tmp520,
	mov	ip, r8, lsr #23	@ D.15908, tmp521,
	orr	ip, ip, r9, asl #9	@, var, D.15908,,
	mov	r8, ip, asr #31	@ sign, var,
	cmp	r8, ip, asr #23	@ sign, var,
	eorne	ip, r8, r2	@ var, sign, tmp329
	mov	ip, ip, asl #8	@ var.833, var,
.L373:
	subs	r4, r4, #1	@ ivtmp.761, ivtmp.761,
	str	ip, [r1, r3]	@ var.833,* ivtmp.783
	add	r3, r3, #4	@ ivtmp.783, ivtmp.783,
	bne	.L316	@,
	b	.L326	@
.L432:
	mov	r3, r0	@ var.833, realVolL
.L378:
	subs	r4, r4, #1	@ ivtmp.761, tmp363,
	str	r3, [r1, ip]	@ var.833,
	add	r3, ip, #4	@ ivtmp.783, tmp362,
	beq	.L326	@,
.L316:
	cmp	r0, #0	@ realVolL,
	ldr	r8, [r1, r3]	@ data,* ivtmp.783
	moveq	r8, r0	@ var.833, realVolL
	beq	.L314	@,
	mov	r9, r8, asr #31	@ data
	cmp	r0, #8388608	@ realVolL,
	mul	ip, r6, r9	@ tmp263, D.15906, data
	mla	ip, r8, r7, ip	@ tmp404, data, D.15906, tmp263
	umull	r8, r9, r6, r8	@ tmp264, D.15906, data
	add	r9, ip, r9	@, tmp404,
	mov	ip, r8, lsr #23	@ tmp313, tmp264,
	orr	ip, ip, r9, asl #9	@, tmp406, tmp313,,
	mov	r8, ip	@ var.833, tmp406
	bls	.L314	@,
	mov	r8, ip, asr #8	@ tmp268, tmp406,
	mov	r9, r8, asr #31	@ tmp269
	mul	sl, r8, r7	@ tmp271, tmp269, D.15906
	mla	sl, r6, r9, sl	@ tmp407, D.15906,, tmp271
	umull	r8, r9, r8, r6	@ tmp272, tmp269, D.15906
	add	r9, sl, r9	@, tmp407,
	mov	ip, r8, lsr #23	@ D.15908, tmp272,
	orr	r8, ip, r9, asl #9	@, var, D.15908,,
	mov	ip, r8, asr #31	@ sign, var,
	cmp	ip, r8, asr #23	@ sign, var,
	eorne	r8, ip, r2	@ var, sign, tmp329
	mov	r8, r8, asl #8	@ var.833, var,
.L314:
	add	ip, r3, #4	@ tmp362, ivtmp.783,
	cmp	r0, #0	@ realVolL,
	str	r8, [r1, r3]	@ var.833,* ivtmp.783
	sub	r4, r4, #1	@ tmp363, ivtmp.761,
	ldr	r8, [r1, ip]	@ data,
	beq	.L432	@,
	mov	r9, r8, asr #31	@ data
	cmp	r0, #8388608	@ realVolL,
	mul	r3, r6, r9	@ tmp532, D.15906, data
	mla	r3, r8, r7, r3	@ tmp533, data, D.15906, tmp532
	umull	r8, r9, r6, r8	@ tmp534, D.15906, data
	add	r9, r3, r9	@, tmp533,
	mov	r3, r8, lsr #23	@ tmp537, tmp534,
	orr	r8, r3, r9, asl #9	@, tmp538, tmp537,,
	mov	r3, r8	@ var.833, tmp538
	bls	.L378	@,
	mov	r8, r8, asr #8	@ tmp540, tmp538,
	mov	r9, r8, asr #31	@ tmp541
	mul	r3, r8, r7	@ tmp543, tmp541, D.15906
	mla	r3, r6, r9, r3	@ tmp544, D.15906,, tmp543
	umull	r8, r9, r8, r6	@ tmp545, tmp541, D.15906
	add	r9, r3, r9	@, tmp544,
	mov	r3, r8, lsr #23	@ D.15908, tmp545,
	orr	r3, r3, r9, asl #9	@, var, D.15908,,
	mov	r8, r3, asr #31	@ sign, var,
	cmp	r8, r3, asr #23	@ sign, var,
	eorne	r3, r8, r2	@ var, sign, tmp329
	mov	r3, r3, asl #8	@ var.833, var,
	b	.L378	@
.L293:
	cmp	r4, #0	@ samples,
	beq	.L326	@,
	cmp	r0, #0	@ realVolL,
	sub	r3, r4, #1	@ tmp356, samples,
	and	r2, r3, #1	@ tmp357, tmp356,
	movw	ip, #32767	@ tmp323,
	ldrh	r3, [r1, #0]	@ D.15856,* temp.815
	bne	.L355	@,
	mov	r3, r0	@ D.15849, realVolL
.L397:
	subs	r4, r4, #1	@ ivtmp.761, samples,
	strh	r3, [r1, #0]	@ movhi	@ D.15849,* temp.815
	mov	r3, #2	@ ivtmp.751,
	beq	.L326	@,
	cmp	r2, #0	@ tmp357,
	beq	.L299	@,
	cmp	r0, #0	@ realVolL,
	ldrh	r2, [r1, r3]	@ D.15856,* ivtmp.751
	moveq	r2, r0	@ D.15849, realVolL
	beq	.L401	@,
#APP
@ 622 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb r2, r0, r2	@ y, realVolL, D.15856
@ 0 "" 2
@ 623 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	ASR    r2, r2, #7	@ var, y
@ 0 "" 2
	cmp	r0, #8388608	@ realVolL,
	bls	.L399	@,
	mov	r6, r2, asr #31	@ sign, var,
	cmp	r6, r2, asr #15	@ sign, var,
	eorne	r2, r6, ip	@ var, sign, tmp323
.L399:
	uxth	r2, r2	@ D.15849, var
.L401:
	subs	r4, r4, #1	@ ivtmp.761, ivtmp.761,
	strh	r2, [r1, r3]	@ movhi	@ D.15849,* ivtmp.751
	add	r3, r3, #2	@ ivtmp.751, ivtmp.751,
	beq	.L326	@,
.L299:
	cmp	r0, #0	@ realVolL,
	ldrh	r6, [r1, r3]	@ D.15856,* ivtmp.751
	moveq	r6, r0	@ D.15849, realVolL
	beq	.L296	@,
#APP
@ 622 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb r2, r0, r6	@ y, realVolL, D.15856
@ 0 "" 2
@ 623 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	ASR    r6, r2, #7	@ var, y
@ 0 "" 2
	cmp	r0, #8388608	@ realVolL,
	bls	.L298	@,
	mov	r2, r6, asr #31	@ sign, var,
	cmp	r2, r6, asr #15	@ sign, var,
	eorne	r6, r2, ip	@ var, sign, tmp323
.L298:
	uxth	r6, r6	@ D.15849, var
.L296:
	add	r2, r3, #2	@ tmp358, ivtmp.751,
	cmp	r0, #0	@ realVolL,
	strh	r6, [r1, r3]	@ movhi	@ D.15849,* ivtmp.751
	sub	r4, r4, #1	@ tmp359, ivtmp.761,
	ldrh	r3, [r1, r2]	@ D.15856,
	bne	.L364	@,
	mov	r3, r0	@ D.15849, realVolL
.L404:
	subs	r4, r4, #1	@ ivtmp.761, tmp359,
	strh	r3, [r1, r2]	@ movhi	@ D.15849,
	add	r3, r2, #2	@ ivtmp.751, tmp358,
	bne	.L299	@,
	b	.L326	@
.L355:
#APP
@ 622 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb r3, r0, r3	@ y, realVolL, D.15856
@ 0 "" 2
@ 623 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	ASR    r3, r3, #7	@ var, y
@ 0 "" 2
	cmp	r0, #8388608	@ realVolL,
	bls	.L395	@,
	mov	r6, r3, asr #31	@ sign, var,
	cmp	r6, r3, asr #15	@ sign, var,
	eorne	r3, r6, ip	@ var, sign, tmp323
.L395:
	uxth	r3, r3	@ D.15849, var
	b	.L397	@
.L431:
	mov	r3, r0	@ var.833, realVolL
	b	.L369	@
.L364:
#APP
@ 622 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb r3, r0, r3	@ y, realVolL, D.15856
@ 0 "" 2
@ 623 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	ASR    r3, r3, #7	@ var, y
@ 0 "" 2
	cmp	r0, #8388608	@ realVolL,
	bls	.L402	@,
	mov	r6, r3, asr #31	@ sign, var,
	cmp	r6, r3, asr #15	@ sign, var,
	eorne	r3, r6, ip	@ var, sign, tmp323
.L402:
	uxth	r3, r3	@ D.15849, var
	b	.L404	@
.L279:
	cmp	r4, #0	@ samples,
	ble	.L326	@,
	sub	ip, r4, #1	@ tmp336, samples,
	ldrsh	r3, [r0, #0]	@ tmp218,* D.14924
	and	ip, ip, #1	@ tmp338, tmp336,
#APP
@ 694 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  r3, r3, r2	@ ret, tmp218, D.14926
@ 0 "" 2
@ 695 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    r3, r3, r3	@ sum, ret, ret
@ 0 "" 2
	cmp	r4, #1	@ samples,
	strh	r3, [r0, #0]	@ movhi	@ sum,* D.14924
	mov	r3, #2	@ ivtmp.734,
	beq	.L326	@,
	cmp	ip, #0	@ tmp338,
	beq	.L281	@,
	ldrsh	ip, [r0, #2]	@ tmp423,
#APP
@ 694 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  r1, ip, r2	@ ret, tmp423, D.14926
@ 0 "" 2
@ 695 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    ip, r1, r1	@ sum, ret, ret
@ 0 "" 2
	cmp	r4, r3	@ samples, n
	mov	r1, r3	@ n, ivtmp.734
	strh	ip, [r0, #2]	@ movhi	@ sum,
	mov	r3, #4	@ ivtmp.734,
	beq	.L326	@,
.L281:
	ldrsh	r6, [r0, r3]	@ tmp366,* ivtmp.734
#APP
@ 694 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  ip, r6, r2	@ ret, tmp366, D.14926
@ 0 "" 2
@ 695 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    r6, ip, ip	@ sum, ret, ret
@ 0 "" 2
	add	ip, r3, #2	@ tmp339, ivtmp.734,
	strh	r6, [r0, r3]	@ movhi	@ sum,* ivtmp.734
	add	r1, r1, #1	@ tmp340, n,
	ldrsh	r3, [r0, ip]	@ tmp371,
#APP
@ 694 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  r3, r3, r2	@ ret, tmp371, D.14926
@ 0 "" 2
@ 695 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    r3, r3, r3	@ sum, ret, ret
@ 0 "" 2
	add	r1, r1, #1	@ n, tmp340,
	strh	r3, [r0, ip]	@ movhi	@ sum,
	cmp	r4, r1	@ samples, n
	add	r3, ip, #2	@ ivtmp.734, tmp339,
	bne	.L281	@,
	b	.L326	@
.L285:
	cmp	r4, #0	@ samples,
	ble	.L326	@,
	sub	ip, r4, #1	@ tmp346, samples,
	ldr	r3, [r0, #0]	@ tmp226,* temp.811
	and	ip, ip, #1	@ tmp348, tmp346,
#APP
@ 694 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  r3, r3, r2	@ ret, tmp226, temp.812
@ 0 "" 2
@ 695 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    r3, r3, r3	@ sum, ret, ret
@ 0 "" 2
	cmp	r4, #1	@ samples,
	str	r3, [r0, #0]	@ sum,* temp.811
	mov	r3, #4	@ ivtmp.742,
	beq	.L326	@,
	cmp	ip, #0	@ tmp348,
	beq	.L287	@,
	ldr	ip, [r0, #4]	@ tmp442,
#APP
@ 694 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  r1, ip, r2	@ ret, tmp442, temp.812
@ 0 "" 2
@ 695 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    r3, r1, r1	@ sum, ret, ret
@ 0 "" 2
	mov	r1, #2	@ n,
	cmp	r4, r1	@ samples, n
	str	r3, [r0, #4]	@ sum,
	mov	r3, #8	@ ivtmp.742,
	beq	.L326	@,
.L287:
	ldr	r6, [r0, r3]	@ tmp382,* ivtmp.742
#APP
@ 694 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  ip, r6, r2	@ ret, tmp382, temp.812
@ 0 "" 2
@ 695 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    r6, ip, ip	@ sum, ret, ret
@ 0 "" 2
	add	ip, r3, #4	@ tmp350, ivtmp.742,
	str	r6, [r0, r3]	@ sum,* ivtmp.742
	add	r1, r1, #1	@ tmp349, n,
	ldr	r3, [r0, ip]	@ tmp387,
#APP
@ 694 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  r3, r3, r2	@ ret, tmp387, temp.812
@ 0 "" 2
@ 695 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    r3, r3, r3	@ sum, ret, ret
@ 0 "" 2
	add	r1, r1, #1	@ n, tmp349,
	str	r3, [r0, ip]	@ sum,
	cmp	r4, r1	@ samples, n
	add	r3, ip, #4	@ ivtmp.742, tmp350,
	bne	.L287	@,
	b	.L326	@
	.fnend
	.size	UTIL_LRGainProcess, .-UTIL_LRGainProcess
	.align	2
	.global	UTIL_MixerPro
	.type	UTIL_MixerPro, %function
UTIL_MixerPro:
	.fnstart
.LFB913:
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
	cmp	r2, #0	@ samples
	ldmeqfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	cmp	r3, #16	@ uBitDepth,
	beq	.L466	@,
	cmp	r3, #24	@ uBitDepth,
	ldmnefd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	sub	r4, r2, #1	@ tmp181, samples,
	ldr	r3, [r0, #0]	@ tmp169,* pMixBuf
	ldr	ip, [r1, #0]	@ tmp170,* pInBuf
	and	r5, r4, #1	@ tmp183, tmp181,
#APP
@ 744 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd r4, r3, ip	@ Lvar1, tmp169, tmp170
@ 0 "" 2
	cmp	r2, #1	@ samples,
	str	r4, [r0, #0]	@ Lvar1,* pMixBuf
	mov	r3, #4	@ ivtmp.906,
	mov	r4, #1	@ i.920,
	ldmlsfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	cmp	r5, #0	@ tmp183,
	beq	.L440	@,
	ldr	r4, [r0, #4]	@ tmp260,
	ldr	ip, [r1, #4]	@ tmp261,
#APP
@ 744 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd r3, r4, ip	@ Lvar1, tmp260, tmp261
@ 0 "" 2
	mov	r4, #2	@ i.920,
	cmp	r2, r4	@ samples, i.920
	str	r3, [r0, #4]	@ Lvar1,
	mov	r3, #8	@ ivtmp.906,
	ldmlsfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L440:
	ldr	ip, [r0, r3]	@ tmp232,* ivtmp.906
	ldr	r5, [r1, r3]	@ tmp233,* ivtmp.906
#APP
@ 744 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd r5, ip, r5	@ Lvar1, tmp232, tmp233
@ 0 "" 2
	add	ip, r3, #4	@ tmp185, ivtmp.906,
	str	r5, [r0, r3]	@ Lvar1,* ivtmp.906
	add	r4, r4, #1	@ tmp184, i.920,
	ldr	r3, [r0, ip]	@ tmp237,
	ldr	r5, [r1, ip]	@ tmp238,
#APP
@ 744 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd r3, r3, r5	@ Lvar1, tmp237, tmp238
@ 0 "" 2
	add	r4, r4, #1	@ i.920, tmp184,
	str	r3, [r0, ip]	@ Lvar1,
	cmp	r2, r4	@ samples, i.920
	add	r3, ip, #4	@ ivtmp.906, tmp185,
	bhi	.L440	@,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L466:
	movs	r6, r2, lsr #3	@ i, samples,
	mov	r4, r1	@ ps32In, pInBuf
	mov	ip, r0	@ ps32Out, pMixBuf
	beq	.L436	@,
	sub	r5, r6, #1	@ tmp176, i,
	ldr	ip, [r1, #0]	@ tmp158,* pInBuf
	ldr	r3, [r0, #0]	@ tmp157,* pMixBuf
	and	r4, r5, #1	@ tmp177, tmp176,
#APP
@ 612 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd16 r3, r3, ip	@ ret, tmp157, tmp158
@ 0 "" 2
	str	r3, [r0, #0]	@ ret,* pMixBuf
	ldr	r3, [r0, #4]	@ tmp159,
	ldr	ip, [r1, #4]	@ tmp160,
#APP
@ 612 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd16 r3, r3, ip	@ ret, tmp159, tmp160
@ 0 "" 2
	str	r3, [r0, #4]	@ ret,
	ldr	r3, [r0, #8]	@ tmp161,
	ldr	ip, [r1, #8]	@ tmp162,
#APP
@ 612 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd16 r3, r3, ip	@ ret, tmp161, tmp162
@ 0 "" 2
	str	r3, [r0, #8]	@ ret,
	ldr	r3, [r0, #12]	@ tmp163,
	ldr	ip, [r1, #12]	@ tmp164,
#APP
@ 612 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd16 r3, r3, ip	@ ret, tmp163, tmp164
@ 0 "" 2
	cmp	r5, #0	@ i.917
	str	r3, [r0, #12]	@ ret,
	add	ip, r1, #16	@ ps32In.919, pInBuf,
	add	r3, r0, #16	@ ps32Out.921, pMixBuf,
	beq	.L463	@,
	cmp	r4, #0	@ tmp177,
	beq	.L437	@,
	ldr	r7, [ip, #0]	@ tmp249,* ps32In.919
	ldr	r4, [r3, #0]	@ tmp248,* ps32Out.921
#APP
@ 612 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd16 r4, r4, r7	@ ret, tmp248, tmp249
@ 0 "" 2
	str	r4, [r3, #0]	@ ret,* ps32Out.921
	ldr	r4, [r3, #4]	@ tmp251,
	ldr	r7, [ip, #4]	@ tmp252,
#APP
@ 612 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd16 r4, r4, r7	@ ret, tmp251, tmp252
@ 0 "" 2
	str	r4, [r3, #4]	@ ret,
	ldr	r4, [r3, #8]	@ tmp254,
	ldr	r7, [ip, #8]	@ tmp255,
#APP
@ 612 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd16 r4, r4, r7	@ ret, tmp254, tmp255
@ 0 "" 2
	str	r4, [r3, #8]	@ ret,
	ldr	r4, [r3, #12]	@ tmp257,
	ldr	r7, [ip, #12]	@ tmp258,
#APP
@ 612 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd16 r4, r4, r7	@ ret, tmp257, tmp258
@ 0 "" 2
	subs	r5, r5, #1	@ i.917, i.917,
	str	r4, [r3, #12]	@ ret,
	add	ip, ip, #16	@ ps32In.919, ps32In.919,
	add	r3, r3, #16	@ ps32Out.921, ps32Out.921,
	beq	.L463	@,
.L437:
	ldr	r7, [ip, #0]	@ tmp190,* ps32In.919
	ldr	r4, [r3, #0]	@ tmp189,* ps32Out.921
#APP
@ 612 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd16 r8, r4, r7	@ ret, tmp189, tmp190
@ 0 "" 2
	str	r8, [r3, #0]	@ ret,* ps32Out.921
	ldr	r4, [r3, #4]	@ tmp192,
	ldr	r7, [ip, #4]	@ tmp193,
#APP
@ 612 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd16 r8, r4, r7	@ ret, tmp192, tmp193
@ 0 "" 2
	str	r8, [r3, #4]	@ ret,
	ldr	r4, [r3, #8]	@ tmp195,
	ldr	r7, [ip, #8]	@ tmp196,
#APP
@ 612 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd16 r8, r4, r7	@ ret, tmp195, tmp196
@ 0 "" 2
	str	r8, [r3, #8]	@ ret,
	ldr	r4, [r3, #12]	@ tmp198,
	ldr	r7, [ip, #12]	@ tmp199,
#APP
@ 612 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd16 r8, r4, r7	@ ret, tmp198, tmp199
@ 0 "" 2
	str	r8, [r3, #12]	@ ret,
	sub	r5, r5, #1	@ tmp180, i.917,
	ldr	r8, [ip, #16]	@ tmp205,
	add	r4, r3, #16	@ tmp179, ps32Out.921,
	ldr	r7, [r3, #16]	@ tmp204,
	add	ip, ip, #16	@ tmp178, ps32In.919,
#APP
@ 612 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd16 r7, r7, r8	@ ret, tmp204, tmp205
@ 0 "" 2
	str	r7, [r3, #16]	@ ret,
	ldr	r7, [ip, #4]	@ tmp208,
	ldr	r3, [r4, #4]	@ tmp207,
#APP
@ 612 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd16 r3, r3, r7	@ ret, tmp207, tmp208
@ 0 "" 2
	str	r3, [r4, #4]	@ ret,
	ldr	r3, [r4, #8]	@ tmp210,
	ldr	r7, [ip, #8]	@ tmp211,
#APP
@ 612 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd16 r3, r3, r7	@ ret, tmp210, tmp211
@ 0 "" 2
	str	r3, [r4, #8]	@ ret,
	ldr	r3, [r4, #12]	@ tmp213,
	ldr	r7, [ip, #12]	@ tmp214,
#APP
@ 612 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd16 r3, r3, r7	@ ret, tmp213, tmp214
@ 0 "" 2
	subs	r5, r5, #1	@ i.917, tmp180,
	str	r3, [r4, #12]	@ ret,
	add	ip, ip, #16	@ ps32In.919, tmp178,
	add	r3, r4, #16	@ ps32Out.921, tmp179,
	bne	.L437	@,
.L463:
	mov	r3, r6, asl #4	@ D.16767, i,
	add	ip, r0, r3	@ ps32Out, pMixBuf, D.16767
	add	r4, r1, r3	@ ps32In, pInBuf, D.16767
.L436:
	ands	r2, r2, #7	@ i.918, samples,
	ldmeqfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	ldrsh	r1, [r4, #0]	@ tmp165,* ps32In
	sub	r0, r2, #1	@ tmp172, i.918,
	ldrsh	r3, [ip, #0]	@ tmp166,* ps32Out
	movw	r6, #32767	@ tmp171,
	and	r0, r0, #1	@ tmp173, tmp172,
	add	r3, r1, r3	@ x, tmp165, tmp166
	mov	r1, r3, asr #31	@ sign, x,
	cmp	r1, r3, asr #15	@ sign, x,
	eorne	r3, r1, r6	@ x, sign, tmp171
	subs	r2, r2, #1	@ i.918, i.918,
	strh	r3, [ip, #0]	@ movhi	@ x,* ps32Out
	mov	r3, #2	@ ivtmp.875,
	ldmeqfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	cmp	r0, #0	@ tmp173,
	beq	.L439	@,
	ldrsh	r0, [r4, r3]	@ tmp241,* ivtmp.875
	ldrsh	r1, [ip, r3]	@ tmp242,* ivtmp.875
	add	r1, r0, r1	@ x, tmp241, tmp242
	mov	r0, r1, asr #31	@ sign, x,
	cmp	r0, r1, asr #15	@ sign, x,
	eorne	r1, r0, r6	@ x, sign, tmp171
	subs	r2, r2, #1	@ i.918, i.918,
	strh	r1, [ip, r3]	@ movhi	@ x,* ivtmp.875
	add	r3, r3, #2	@ ivtmp.875, ivtmp.875,
	ldmeqfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L439:
	ldrsh	r5, [r4, r3]	@ tmp217,* ivtmp.875
	add	r1, r3, #2	@ tmp175, ivtmp.875,
	ldrsh	r0, [ip, r3]	@ tmp218,* ivtmp.875
	sub	r2, r2, #1	@ tmp174, i.918,
	add	r0, r5, r0	@ x, tmp217, tmp218
	mov	r5, r0, asr #31	@ sign, x,
	cmp	r5, r0, asr #15	@ sign, x,
	eorne	r0, r5, r6	@ x, sign, tmp171
	strh	r0, [ip, r3]	@ movhi	@ x,* ivtmp.875
	ldrsh	r0, [r4, r1]	@ tmp225,
	ldrsh	r3, [ip, r1]	@ tmp226,
	add	r3, r0, r3	@ x, tmp225, tmp226
	mov	r0, r3, asr #31	@ sign, x,
	cmp	r0, r3, asr #15	@ sign, x,
	eorne	r3, r0, r6	@ x, sign, tmp171
	subs	r2, r2, #1	@ i.918, tmp174,
	strh	r3, [ip, r1]	@ movhi	@ x,
	add	r3, r1, #2	@ ivtmp.875, tmp175,
	bne	.L439	@,
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	UTIL_MixerPro, .-UTIL_MixerPro
	.align	2
	.global	UTIL_ChannelModeProcess
	.type	UTIL_ChannelModeProcess, %function
UTIL_ChannelModeProcess:
	.fnstart
.LFB921:
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
	ldr	r3, [r0, #20]	@ <variable>.u32Channels, <variable>.u32Channels
	ldr	ip, [r0, #12]	@ <variable>.u32SamplesPerFrame, <variable>.u32SamplesPerFrame
	sub	r1, r1, #1	@ tmp189, u32ChannelMode,
	mul	r3, ip, r3	@ D.15168, <variable>.u32SamplesPerFrame, <variable>.u32Channels
	cmp	r1, #6	@ tmp189,
	ldrls	pc, [pc, r1, asl #2]	@ tmp189
	b	.L499	@
.L476:
	.word	.L469
	.word	.L470
	.word	.L471
	.word	.L472
	.word	.L473
	.word	.L474
	.word	.L475
.L475:
	cmp	r3, #0	@ D.15168,
	ldr	r1, [r0, #0]	@ temp.1051, <variable>.pDataBuf
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	cmp	r2, #16	@ dstBitDepth,
	beq	.L586	@,
	cmp	r2, #24	@ dstBitDepth,
	ldmnefd	sp, {r4, r5, fp, sp, pc}	@
	cmp	r3, #1	@ D.15168,
	sub	r2, r3, #1	@ tmp284, D.15168,
	and	r0, r2, #1	@ tmp286, tmp284,
	mov	ip, #0	@ tmp221,
	mov	r2, #1	@ i.1058,
	str	ip, [r1, #0]	@ tmp221,* temp.1051
	ldmlsfd	sp, {r4, r5, fp, sp, pc}	@
	cmp	r0, #0	@ tmp286,
	beq	.L498	@,
	mov	r2, #2	@ i.1058,
	cmp	r3, r2	@ D.15168, i.1058
	str	ip, [r1, #4]	@ tmp221,
	ldmlsfd	sp, {r4, r5, fp, sp, pc}	@
.L498:
	add	r0, r2, #1	@ tmp287, i.1058,
	str	ip, [r1, r2, asl #2]	@ tmp221,* temp.1051
	add	r2, r0, #1	@ i.1058, tmp287,
	cmp	r3, r2	@ D.15168, i.1058
	str	ip, [r1, r0, asl #2]	@ tmp221,* temp.1051
	bhi	.L498	@,
.L499:
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L469:
	cmp	r3, #0	@ D.15168,
	ldr	r1, [r0, #0]	@ D.15169, <variable>.pDataBuf
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	cmp	r2, #16	@ dstBitDepth,
	beq	.L587	@,
	cmp	r2, #24	@ dstBitDepth,
	ldmnefd	sp, {r4, r5, fp, sp, pc}	@
	movs	r3, r3, lsr #1	@ temp.1059, D.15168,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	sub	ip, r3, #1	@ tmp227, temp.1059,
	ldr	r2, [r1, #0]	@ tmp194,* D.15169
	ldr	r0, [r1, #4]	@ tmp195,
	and	r4, ip, #1	@ tmp229, tmp227,
#APP
@ 744 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd ip, r2, r0	@ mix, tmp194, tmp195
@ 0 "" 2
	mov	r0, #1	@ i.1052,
	cmp	r0, r3	@ i.1052, temp.1059
	str	ip, [r1, #4]	@ mix,
	add	r2, r1, #8	@ ps32In, D.15169,
	str	ip, [r1, #0]	@ mix,* D.15169
	ldmcsfd	sp, {r4, r5, fp, sp, pc}	@
	cmp	r4, #0	@ tmp229,
	beq	.L480	@,
	ldr	r1, [r2, #0]	@ tmp384,* ps32In
	ldr	r0, [r2, #4]	@ tmp385,
#APP
@ 744 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd ip, r1, r0	@ mix, tmp384, tmp385
@ 0 "" 2
	mov	r0, #2	@ i.1052,
	cmp	r0, r3	@ i.1052, temp.1059
	str	ip, [r2, #4]	@ mix,
	str	ip, [r2, #0]	@ mix,* ps32In
	add	r2, r2, #8	@ ps32In, ps32In,
	ldmcsfd	sp, {r4, r5, fp, sp, pc}	@
.L480:
	ldmia	r2, {r1, ip}	@ phole ldm
#APP
@ 744 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd r4, r1, ip	@ mix, tmp297, tmp298
@ 0 "" 2
	add	r1, r2, #8	@ tmp230, ps32In,
	str	r4, [r2, #4]	@ mix,
	str	r4, [r2, #0]	@ mix,* ps32In
	add	r0, r0, #1	@ tmp231, i.1052,
	ldr	ip, [r2, #8]	@ tmp302,
	ldr	r4, [r1, #4]	@ tmp303,
#APP
@ 744 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd ip, ip, r4	@ mix, tmp302, tmp303
@ 0 "" 2
	add	r0, r0, #1	@ i.1052, tmp231,
	str	ip, [r2, #8]	@ mix,
	cmp	r0, r3	@ i.1052, temp.1059
	str	ip, [r1, #4]	@ mix,
	add	r2, r1, #8	@ ps32In, tmp230,
	bcc	.L480	@,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L470:
	cmp	r3, #0	@ D.15168,
	ldr	ip, [r0, #0]	@ temp.1046, <variable>.pDataBuf
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	cmp	r2, #16	@ dstBitDepth,
	beq	.L588	@,
	cmp	r2, #24	@ dstBitDepth,
	ldmnefd	sp, {r4, r5, fp, sp, pc}	@
	movs	r3, r3, lsr #1	@ temp.1060, D.15168,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	ldr	r2, [ip, #0]	@ tmp198,* temp.1046
	mov	r0, #1	@ i.1053,
	cmp	r0, r3	@ i.1053, temp.1060
	sub	r1, r3, #1	@ tmp237, temp.1060,
	and	r4, r1, r0	@ tmp239, tmp237,
	add	r1, ip, #8	@ ps32In, temp.1046,
	str	r2, [ip, #4]	@ tmp198,
	ldmcsfd	sp, {r4, r5, fp, sp, pc}	@
	cmp	r4, #0	@ tmp239,
	beq	.L483	@,
	ldr	r2, [r1, #0]	@ tmp388,* ps32In
	mov	r0, #2	@ i.1053,
	cmp	r0, r3	@ i.1053, temp.1060
	str	r2, [r1, #4]	@ tmp388,
	add	r1, r1, #8	@ ps32In, ps32In,
	ldmcsfd	sp, {r4, r5, fp, sp, pc}	@
.L483:
	ldr	r4, [r1, #0]	@ tmp313,* ps32In
	add	r0, r0, #2	@ i.1053, i.1053,
	ldr	ip, [r1, #8]	@ tmp316,
	add	r2, r1, #8	@ tmp240, ps32In,
	cmp	r0, r3	@ i.1053, temp.1060
	str	r4, [r1, #4]	@ tmp313,
	add	r1, r2, #8	@ ps32In, tmp240,
	str	ip, [r2, #4]	@ tmp316,
	bcc	.L483	@,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L471:
	cmp	r3, #0	@ D.15168,
	ldr	r1, [r0, #0]	@ temp.1047, <variable>.pDataBuf
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	cmp	r2, #16	@ dstBitDepth,
	beq	.L589	@,
	cmp	r2, #24	@ dstBitDepth,
	ldmnefd	sp, {r4, r5, fp, sp, pc}	@
	movs	r3, r3, lsr #1	@ temp.1061, D.15168,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	ldr	ip, [r1, #4]	@ tmp201,
	mov	r0, #1	@ i.1054,
	cmp	r0, r3	@ i.1054, temp.1061
	mov	r2, r1	@ ps32In, temp.1047
	sub	r1, r3, #1	@ tmp247, temp.1061,
	str	ip, [r2], #8	@ tmp201,
	and	r1, r1, r0	@ tmp249, tmp247,
	ldmcsfd	sp, {r4, r5, fp, sp, pc}	@
	cmp	r1, #0	@ tmp249,
	beq	.L486	@,
	ldr	r1, [r2, #4]	@ tmp390,
	mov	r0, #2	@ i.1054,
	cmp	r0, r3	@ i.1054, temp.1061
	str	r1, [r2], #8	@ tmp390,
	ldmcsfd	sp, {r4, r5, fp, sp, pc}	@
.L486:
	ldr	ip, [r2, #4]	@ tmp325,
	mov	r1, r2	@ tmp250, ps32In
	add	r0, r0, #2	@ i.1054, i.1054,
	cmp	r0, r3	@ i.1054, temp.1061
	str	ip, [r1], #8	@ tmp325,
	ldr	ip, [r1, #4]	@ tmp328,
	str	ip, [r2, #8]	@ tmp328,
	add	r2, r1, #8	@ ps32In, tmp250,
	bcc	.L486	@,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L472:
	cmp	r3, #0	@ D.15168,
	ldr	ip, [r0, #0]	@ temp.1048, <variable>.pDataBuf
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	cmp	r2, #16	@ dstBitDepth,
	beq	.L590	@,
	cmp	r2, #24	@ dstBitDepth,
	ldmnefd	sp, {r4, r5, fp, sp, pc}	@
	movs	r3, r3, lsr #1	@ temp.1062, D.15168,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	ldr	r5, [ip, #0]	@ data,* temp.1048
	mov	r0, #1	@ i.1055,
	ldr	r2, [ip, #4]	@ tmp204,
	cmp	r0, r3	@ i.1055, temp.1062
	sub	r4, r3, #1	@ tmp257, temp.1062,
	add	r1, ip, #8	@ ps32In, temp.1048,
	str	r5, [ip, #4]	@ data,
	and	r4, r4, r0	@ tmp259, tmp257,
	str	r2, [ip, #0]	@ tmp204,* temp.1048
	ldmcsfd	sp, {r4, r5, fp, sp, pc}	@
	cmp	r4, #0	@ tmp259,
	beq	.L489	@,
	ldr	ip, [r1, #0]	@ data,* ps32In
	mov	r0, #2	@ i.1055,
	ldr	r2, [r1, #4]	@ tmp394,
	cmp	r0, r3	@ i.1055, temp.1062
	stmia	r1, {r2, ip}	@ phole stm
	add	r1, r1, #8	@ ps32In, ps32In,
	ldmcsfd	sp, {r4, r5, fp, sp, pc}	@
.L489:
	ldr	r4, [r1, #4]	@ tmp340,
	add	r2, r1, #8	@ tmp260, ps32In,
	ldr	r5, [r1, #0]	@ data,* ps32In
	add	r0, r0, #2	@ i.1055, i.1055,
	ldr	ip, [r1, #8]	@ data,
	cmp	r0, r3	@ i.1055, temp.1062
	stmia	r1, {r4, r5}	@ phole stm
	ldr	r4, [r2, #4]	@ tmp344,
	str	r4, [r1, #8]	@ tmp344,
	add	r1, r2, #8	@ ps32In, tmp260,
	str	ip, [r2, #4]	@ data,
	bcc	.L489	@,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L473:
	cmp	r3, #0	@ D.15168,
	ldr	r1, [r0, #0]	@ temp.1049, <variable>.pDataBuf
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	cmp	r2, #16	@ dstBitDepth,
	beq	.L591	@,
	cmp	r2, #24	@ dstBitDepth,
	ldmnefd	sp, {r4, r5, fp, sp, pc}	@
	movs	r3, r3, lsr #1	@ temp.1063, D.15168,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	mov	r2, #1	@ i.1056,
	cmp	r2, r3	@ i.1056, temp.1063
	sub	r0, r3, #1	@ tmp266, temp.1063,
	mov	ip, #0	@ tmp219,
	and	r0, r0, r2	@ tmp268, tmp266,
	str	ip, [r1, #0]	@ tmp219,* temp.1049
	ldmcsfd	sp, {r4, r5, fp, sp, pc}	@
	cmp	r0, #0	@ tmp268,
	beq	.L492	@,
	mov	r2, #2	@ i.1056,
	cmp	r2, r3	@ i.1056, temp.1063
	str	ip, [r1, #8]	@ tmp219,
	ldmcsfd	sp, {r4, r5, fp, sp, pc}	@
.L492:
	add	r0, r2, #1	@ tmp269, i.1056,
	str	ip, [r1, r2, asl #3]	@ tmp219,* temp.1049
	add	r2, r0, #1	@ i.1056, tmp269,
	cmp	r2, r3	@ i.1056, temp.1063
	str	ip, [r1, r0, asl #3]	@ tmp219,* temp.1049
	bcc	.L492	@,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L474:
	cmp	r3, #0	@ D.15168,
	ldr	r1, [r0, #0]	@ temp.1050, <variable>.pDataBuf
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	cmp	r2, #16	@ dstBitDepth,
	beq	.L592	@,
	cmp	r2, #24	@ dstBitDepth,
	ldmnefd	sp, {r4, r5, fp, sp, pc}	@
	movs	r3, r3, lsr #1	@ temp.1064, D.15168,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	mov	r2, #1	@ i.1057,
	cmp	r2, r3	@ i.1057, temp.1064
	sub	ip, r3, #1	@ tmp275, temp.1064,
	add	r0, r1, #8	@ ps32In, temp.1050,
	and	r4, ip, r2	@ tmp277, tmp275,
	mov	ip, #0	@ tmp220,
	str	ip, [r1, #4]	@ tmp220,
	ldmcsfd	sp, {r4, r5, fp, sp, pc}	@
	cmp	r4, #0	@ tmp277,
	beq	.L495	@,
	mov	r2, #2	@ i.1057,
	cmp	r2, r3	@ i.1057, temp.1064
	str	ip, [r0, #4]	@ tmp220,
	add	r0, r0, #8	@ ps32In, ps32In,
	ldmcsfd	sp, {r4, r5, fp, sp, pc}	@
.L495:
	add	r2, r2, #2	@ i.1057, i.1057,
	add	r1, r0, #8	@ tmp278, ps32In,
	cmp	r2, r3	@ i.1057, temp.1064
	str	ip, [r0, #4]	@ tmp220,
	str	ip, [r1, #4]	@ tmp220,
	add	r0, r1, #8	@ ps32In, tmp278,
	bcc	.L495	@,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L586:
	cmp	r3, #1	@ D.15168,
	sub	ip, r3, #1	@ tmp280, D.15168,
	mov	r2, #0	@ movhi	@,
	and	r0, ip, #1	@ tmp282, tmp280,
	strh	r2, [r1, #0]	@ movhi	@,* temp.1051
	mov	r2, #1	@ i,
	ldmlsfd	sp, {r4, r5, fp, sp, pc}	@
	cmp	r0, #0	@ tmp282,
	beq	.L497	@,
	mov	ip, #2	@ tmp399,
	cmp	r3, ip	@ D.15168, i
	mov	r5, #0	@ movhi	@,
	mov	r2, ip	@ i, tmp399
	strh	r5, [r1, ip]	@ movhi	@,
	ldmlsfd	sp, {r4, r5, fp, sp, pc}	@
.L497:
	add	r4, r2, #1	@ tmp283, i,
	mov	ip, r2, asl #1	@ tmp366, i,
	add	r2, r4, #1	@ i, tmp283,
	mov	r0, r4, asl #1	@ tmp368, tmp283,
	cmp	r3, r2	@ D.15168, i
	mov	r4, #0	@ movhi	@,
	strh	r4, [r1, ip]	@ movhi	@,
	strh	r4, [r1, r0]	@ movhi	@,
	bhi	.L497	@,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L588:
	movs	r3, r3, lsr #1	@ D.15981, D.15168,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	ldrh	r2, [ip, #0]	@,* temp.1046
	cmp	r3, #1	@ D.15981,
	sub	r1, r3, #1	@ tmp232, D.15981,
	and	r0, r1, #1	@ tmp234, tmp232,
	mov	r1, #1	@ i,
	strh	r2, [ip, #2]	@ movhi	@,
	add	r2, ip, #4	@ ps16In, temp.1046,
	ldmlsfd	sp, {r4, r5, fp, sp, pc}	@
	cmp	r0, #0	@ tmp234,
	beq	.L482	@,
	ldrh	r5, [r2, #0]	@,* ps16In
	mov	r1, #2	@ i,
	cmp	r3, r1	@ D.15981, i
	strh	r5, [r2, #2]	@ movhi	@,
	add	r2, r2, #4	@ ps16In, ps16In,
	ldmlsfd	sp, {r4, r5, fp, sp, pc}	@
.L482:
	ldrh	r4, [r2, #0]	@,* ps16In
	add	r1, r1, #2	@ i, i,
	ldrh	ip, [r2, #4]	@,
	add	r0, r2, #4	@ tmp235, ps16In,
	cmp	r3, r1	@ D.15981, i
	strh	r4, [r2, #2]	@ movhi	@,
	add	r2, r0, #4	@ ps16In, tmp235,
	strh	ip, [r0, #2]	@ movhi	@,
	bhi	.L482	@,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L587:
	movs	r5, r3, lsr #1	@ D.15969, D.15168,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	tst	r5, #1	@ D.15969,
	mov	r2, r1	@ ps16In, D.15169
	mov	ip, #0	@ i,
	movw	r4, #32767	@ tmp218,
	bne	.L479	@,
	ldrsh	r3, [r1, #2]	@ tmp375,
	ldrsh	r0, [r1, #0]	@ tmp376,* D.15169
	add	ip, r3, r0	@ x, tmp375, tmp376
	mov	r2, ip, asr #31	@ sign, x,
	cmp	r2, ip, asr #15	@ sign, x,
	eorne	ip, r2, r4	@ x, sign, tmp218
	add	r2, r1, #4	@ ps16In, D.15169,
	uxth	r3, ip	@ mix, x
	mov	ip, #1	@ i,
	strh	r3, [r1, #2]	@ movhi	@ mix,
	strh	r3, [r1, #0]	@ movhi	@ mix,* D.15169
.L479:
	ldrsh	r3, [r2, #0]	@ tmp191,* ps16In
	add	ip, ip, #1	@ tmp225, i,
	ldrsh	r1, [r2, #2]	@ tmp190,
	add	r0, r2, #4	@ tmp226, ps16In,
	add	r1, r1, r3	@ x, tmp190, tmp191
	mov	r3, r1, asr #31	@ sign, x,
	cmp	r3, r1, asr #15	@ sign, x,
	eorne	r1, r3, r4	@ x, sign, tmp218
	cmp	r5, ip	@ D.15969, tmp225
	uxth	r1, r1	@ mix, x
	strh	r1, [r2, #2]	@ movhi	@ mix,
	strh	r1, [r2, #0]	@ movhi	@ mix,* ps16In
	ldmlsfd	sp, {r4, r5, fp, sp, pc}	@
	ldrsh	r3, [r2, #4]	@ tmp291,
	add	ip, ip, #1	@ i, tmp225,
	ldrsh	r1, [r0, #2]	@ tmp290,
	add	r1, r1, r3	@ x, tmp290, tmp291
	mov	r2, r1, asr #31	@ sign, x,
	cmp	r2, r1, asr #15	@ sign, x,
	eorne	r1, r2, r4	@ x, sign, tmp218
	add	r2, r0, #4	@ ps16In, tmp226,
	uxth	r1, r1	@ mix, x
	strh	r1, [r0, #2]	@ movhi	@ mix,
	strh	r1, [r0, #0]	@ movhi	@ mix,
	b	.L479	@
.L592:
	movs	r3, r3, lsr #1	@ D.16022, D.15168,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	mov	r2, #1	@ i,
	cmp	r2, r3	@ i, D.16022
	sub	ip, r3, #1	@ tmp270, D.16022,
	mov	r5, #0	@ movhi	@,
	and	r0, ip, r2	@ tmp272, tmp270,
	strh	r5, [r1, #2]	@ movhi	@,
	add	r1, r1, #4	@ ps16In, temp.1050,
	ldmcsfd	sp, {r4, r5, fp, sp, pc}	@
	cmp	r0, #0	@ tmp272,
	beq	.L494	@,
	mov	r2, #2	@ i,
	cmp	r2, r3	@ i, D.16022
	mov	r4, #0	@ movhi	@,
	strh	r4, [r1, #2]	@ movhi	@,
	add	r1, r1, #4	@ ps16In, ps16In,
	ldmcsfd	sp, {r4, r5, fp, sp, pc}	@
.L494:
	add	r2, r2, #2	@ i, i,
	add	r0, r1, #4	@ tmp274, ps16In,
	cmp	r2, r3	@ i, D.16022
	mov	ip, #0	@ movhi	@,
	strh	ip, [r1, #2]	@ movhi	@,
	add	r1, r0, #4	@ ps16In, tmp274,
	strh	ip, [r0, #2]	@ movhi	@,
	bcc	.L494	@,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L591:
	movs	r3, r3, lsr #1	@ D.16014, D.15168,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	mov	r2, #1	@ i,
	cmp	r2, r3	@ i, D.16014
	sub	r0, r3, #1	@ tmp262, D.16014,
	mov	r5, #0	@ movhi	@,
	and	r0, r0, r2	@ tmp264, tmp262,
	strh	r5, [r1, #0]	@ movhi	@,* temp.1049
	ldmcsfd	sp, {r4, r5, fp, sp, pc}	@
	cmp	r0, #0	@ tmp264,
	beq	.L491	@,
	mov	r2, #2	@ i,
	cmp	r2, r3	@ i, D.16014
	mov	r0, #0	@ movhi	@,
	strh	r0, [r1, #4]	@ movhi	@,
	ldmcsfd	sp, {r4, r5, fp, sp, pc}	@
.L491:
	add	r4, r2, #1	@ tmp265, i,
	mov	ip, r2, asl #2	@ tmp346, i,
	add	r2, r4, #1	@ i, tmp265,
	mov	r0, r4, asl #2	@ tmp348, tmp265,
	cmp	r2, r3	@ i, D.16014
	mov	r4, #0	@ movhi	@,
	strh	r4, [r1, ip]	@ movhi	@,
	strh	r4, [r1, r0]	@ movhi	@,
	bcc	.L491	@,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L590:
	movs	r3, r3, lsr #1	@ D.16005, D.15168,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	ldrh	r2, [ip, #0]	@ data,* temp.1048
	mov	r0, #1	@ i,
	ldrh	r4, [ip, #2]	@,
	cmp	r0, r3	@ i, D.16005
	sub	r1, r3, #1	@ tmp252, D.16005,
	strh	r2, [ip, #2]	@ movhi	@ data,
	and	r1, r1, r0	@ tmp254, tmp252,
	strh	r4, [ip, #0]	@ movhi	@,* temp.1048
	add	r2, ip, #4	@ ps16In, temp.1048,
	ldmcsfd	sp, {r4, r5, fp, sp, pc}	@
	cmp	r1, #0	@ tmp254,
	beq	.L488	@,
	ldrh	r1, [r2, #0]	@ data,* ps16In
	mov	r0, #2	@ i,
	ldrh	ip, [r2, #2]	@,
	cmp	r0, r3	@ i, D.16005
	strh	r1, [r2, #2]	@ movhi	@ data,
	strh	ip, [r2, #0]	@ movhi	@,* ps16In
	add	r2, r2, #4	@ ps16In, ps16In,
	ldmcsfd	sp, {r4, r5, fp, sp, pc}	@
.L488:
	ldrh	r4, [r2, #0]	@ data,* ps16In
	add	r1, r2, #4	@ tmp255, ps16In,
	ldrh	r5, [r2, #2]	@,
	add	r0, r0, #2	@ i, i,
	ldrh	ip, [r2, #4]	@ data,
	cmp	r0, r3	@ i, D.16005
	strh	r4, [r2, #2]	@ movhi	@ data,
	strh	r5, [r2, #0]	@ movhi	@,* ps16In
	ldrh	r4, [r1, #2]	@,
	strh	r4, [r2, #4]	@ movhi	@,
	add	r2, r1, #4	@ ps16In, tmp255,
	strh	ip, [r1, #2]	@ movhi	@ data,
	bcc	.L488	@,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L589:
	movs	r3, r3, lsr #1	@ D.15992, D.15168,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	mov	r2, r1	@ ps16In, temp.1047
	ldrh	r1, [r1, #2]	@,
	mov	r0, #1	@ i,
	cmp	r0, r3	@ i, D.15992
	sub	ip, r3, #1	@ tmp242, D.15992,
	strh	r1, [r2], #4	@ movhi	@,
	and	ip, ip, r0	@ tmp244, tmp242,
	ldmcsfd	sp, {r4, r5, fp, sp, pc}	@
	cmp	ip, #0	@ tmp244,
	beq	.L485	@,
	ldrh	ip, [r2, #2]	@ tmp389,
	mov	r0, #2	@ i,
	cmp	r0, r3	@ i, D.15992
	strh	ip, [r2], #4	@ movhi	@ tmp389,
	ldmcsfd	sp, {r4, r5, fp, sp, pc}	@
.L485:
	ldrh	r5, [r2, #2]	@,
	mov	r1, r2	@ tmp245, ps16In
	add	r0, r0, #2	@ i, i,
	cmp	r0, r3	@ i, D.15992
	strh	r5, [r1], #4	@ movhi	@,
	ldrh	ip, [r1, #2]	@,
	strh	ip, [r2, #4]	@ movhi	@,
	add	r2, r1, #4	@ ps16In, tmp245,
	bcc	.L485	@,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	UTIL_ChannelModeProcess, .-UTIL_ChannelModeProcess
	.align	2
	.global	FADE_Active
	.type	FADE_Active, %function
FADE_Active:
	.fnstart
.LFB926:
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
	cmp	r0, #0	@ hFade
	ldmeqfd	sp, {fp, sp, pc}	@
	cmp	r2, #0	@ u32FadeMs,
	str	r2, [r0, #12]	@ u32FadeMs, <variable>.u32FadeMs
	mov	r3, #0	@ tmp137,
	str	r3, [r0, #20]	@ tmp137, <variable>.u32FadeCnt
	ldrne	ip, [r0, #8]	@ <variable>.u32InRate, <variable>.u32InRate
	movwne	r3, #:lower16:-819967583	@ tmp143,
	movtne	r3, #:upper16:-819967583	@ tmp143,
	streq	r2, [r0, #24]	@ u32FadeMs, <variable>.u32FadeStep
	str	r1, [r0, #32]	@ enUserFadeStauts, <variable>.enCurnFadeStauts
	mulne	r2, ip, r2	@ tmp139, <variable>.u32InRate, u32FadeMs
	umullne	ip, r3, r3, r2	@, tmp142, tmp143, tmp139
	movne	r3, r3, lsr #16	@ tmp141, tmp142,
	addne	r3, r3, #1	@ tmp144, tmp141,
	strne	r3, [r0, #24]	@ tmp144, <variable>.u32FadeStep
	cmp	r1, #1	@ enUserFadeStauts,
	beq	.L599	@,
	cmp	r1, #2	@ enUserFadeStauts,
	moveq	r3, #18	@ tmp147,
	streq	r3, [r0, #16]	@ tmp147, <variable>.u32FadeCurnCoefIdx
	ldmfd	sp, {fp, sp, pc}	@
.L599:
	mov	r1, #99	@ tmp145,
	mov	r3, #0	@ tmp146,
	str	r1, [r0, #16]	@ tmp145, <variable>.u32FadeCurnCoefIdx
	str	r3, [r0, #28]	@ tmp146, <variable>.bStartFade
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	FADE_Active, .-FADE_Active
	.align	2
	.global	FADE_Flush
	.type	FADE_Flush, %function
FADE_Flush:
	.fnstart
.LFB924:
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
	movw	ip, #:lower16:191999	@ tmp142,
	sub	r4, r1, #1	@ tmp141, inRate,
	movt	ip, #:upper16:191999	@ tmp142,
	cmp	r4, ip	@ tmp141, tmp142
	mov	ip, r0	@ hFade, hFade
	ldmhifd	sp, {r3, r4, fp, sp, pc}	@
	cmp	r2, #24	@ BitPerSample,
	cmpne	r2, #16	@, BitPerSample,
	ldmnefd	sp, {r3, r4, fp, sp, pc}	@
	sub	r0, r3, #1	@ tmp150, Channels,
	cmp	r3, #8	@ Channels,
	cmpne	r0, #1	@, tmp150,
	ldmhifd	sp, {r3, r4, fp, sp, pc}	@
	cmp	ip, #0	@ hFade,
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	ldr	r0, [ip, #4]	@ <variable>.u32Channels, <variable>.u32Channels
	ldr	r4, [ip, #0]	@ D.15264, <variable>.u32BitPerSample
	cmp	r3, r0	@ Channels, <variable>.u32Channels
	movne	r4, #1	@ isChange,
	beq	.L606	@,
.L603:
	ldr	r0, [ip, #8]	@ <variable>.u32InRate, <variable>.u32InRate
	cmp	r0, r1	@ <variable>.u32InRate, inRate
	beq	.L607	@,
.L604:
	str	r2, [ip, #0]	@ BitPerSample, <variable>.u32BitPerSample
	mov	r0, ip	@, hFade
	str	r1, [ip, #8]	@ inRate, <variable>.u32InRate
	str	r3, [ip, #4]	@ Channels, <variable>.u32Channels
	ldr	r1, [ip, #32]	@, <variable>.enCurnFadeStauts
	ldr	r2, [ip, #12]	@, <variable>.u32FadeMs
	bl	FADE_Active	@
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L606:
	subs	r4, r2, r4	@ isChange, BitPerSample, D.15264
	movne	r4, #1	@ isChange
	b	.L603	@
.L607:
	cmp	r4, #0	@ isChange,
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	b	.L604	@
	.fnend
	.size	FADE_Flush, .-FADE_Flush
	.align	2
	.global	FADE_InProcess
	.type	FADE_InProcess, %function
FADE_InProcess:
	.fnstart
.LFB927:
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
	cmp	r0, #0	@ hFade
	beq	.L635	@,
	ldr	r3, [r0, #32]	@ <variable>.enCurnFadeStauts, <variable>.enCurnFadeStauts
	cmp	r3, #0	@ <variable>.enCurnFadeStauts,
	beq	.L635	@,
	cmp	r2, #0	@ samples,
	ldr	sl, [r0, #4]	@ ivtmp.1150, <variable>.u32Channels
	beq	.L635	@,
	sub	ip, r2, #1	@ ivtmp.1171, samples,
	movw	r4, #:lower16:8388607	@,
	movw	r2, #:lower16:.LANCHOR0	@,
	movt	r4, #:upper16:8388607	@,
	movt	r2, #:upper16:.LANCHOR0	@,
	str	r4, [fp, #-48]	@, %sfp
	mov	r5, sl, asl #2	@, ivtmp.1150,
	mov	r4, sl, asl #1	@, ivtmp.1150,
	str	r2, [fp, #-52]	@, %sfp
	str	r4, [fp, #-60]	@, %sfp
	str	r5, [fp, #-56]	@, %sfp
.L634:
	ldr	r3, [r0, #28]	@ <variable>.bStartFade, <variable>.bStartFade
	cmp	r3, #0	@ <variable>.bStartFade,
	ldrne	r2, [r0, #0]	@ <variable>.u32BitPerSample, <variable>.u32BitPerSample
	beq	.L713	@,
	ldr	r3, [r0, #16]	@ <variable>.u32FadeCurnCoefIdx, <variable>.u32FadeCurnCoefIdx
	cmp	r2, #16	@ <variable>.u32BitPerSample,
	ldr	r8, [fp, #-52]	@, %sfp
	ldr	r3, [r8, r3, asl #2]	@ Volume, g_u32VolCoef
	beq	.L618	@,
.L723:
	cmp	r2, #24	@ <variable>.u32BitPerSample,
	beq	.L714	@,
.L617:
	ldr	r3, [r0, #20]	@ <variable>.u32FadeCnt, <variable>.u32FadeCnt
	ldr	r2, [r0, #24]	@ <variable>.u32FadeStep, <variable>.u32FadeStep
	add	r3, r3, #1	@ D.15339, <variable>.u32FadeCnt,
	str	r3, [r0, #20]	@ D.15339, <variable>.u32FadeCnt
	cmp	r3, r2	@ D.15339, <variable>.u32FadeStep
	beq	.L715	@,
.L621:
	cmp	ip, #0	@ ivtmp.1171,
	sub	ip, ip, #1	@ ivtmp.1179, ivtmp.1171,
	bne	.L634	@,
.L635:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L714:
	cmp	sl, #0	@ ivtmp.1150,
	beq	.L629	@,
	cmp	r3, #0	@ Volume,
	sub	r5, sl, #1	@ tmp218, ivtmp.1150,
	and	r6, r5, #1	@ tmp219, tmp218,
	ldr	r8, [r1, #0]	@ data,* pInBuf
	mov	r4, r3	@ D.16070, Volume
	mov	r5, r4, asr #31	@ D.16070
	bne	.L653	@,
	mov	r8, r3	@ var.1178, Volume
.L654:
	subs	r7, sl, #1	@ ivtmp.1177, ivtmp.1150,
	str	r8, [r1, #0]	@ var.1178,* pInBuf
	mov	r2, #4	@ ivtmp.1156,
	beq	.L629	@,
	cmp	r6, #0	@ tmp219,
	beq	.L704	@,
	cmp	r3, #0	@ Volume,
	ldr	r8, [r1, r2]	@ data,* ivtmp.1156
	moveq	r8, r3	@ var.1178, Volume
	beq	.L658	@,
	mov	r9, r8, asr #31	@ data
	cmp	r3, #8388608	@ Volume,
	mul	r6, r4, r9	@ tmp292, D.16070, data
	mla	r6, r8, r5, r6	@ tmp293, data, D.16070, tmp292
	umull	r8, r9, r4, r8	@ tmp294, D.16070, data
	add	r9, r6, r9	@, tmp293,
	mov	r6, r8, lsr #23	@ tmp297, tmp294,
	orr	r6, r6, r9, asl #9	@, tmp298, tmp297,,
	mov	r8, r6	@ var.1178, tmp298
	bhi	.L716	@,
.L658:
	subs	r7, r7, #1	@ ivtmp.1177, ivtmp.1177,
	str	r8, [r1, r2]	@ var.1178,* ivtmp.1156
	add	r2, r2, #4	@ ivtmp.1156, ivtmp.1156,
	beq	.L629	@,
.L704:
	str	ip, [fp, #-64]	@ ivtmp.1171, %sfp
	mov	r8, r7	@ ivtmp.1177, ivtmp.1177
	b	.L633	@
.L718:
	mov	r6, r3	@ var.1178, Volume
.L663:
	subs	r8, r7, #1	@ ivtmp.1177, tmp220,
	str	r6, [r1, ip]	@ var.1178,
	add	r2, ip, #4	@ ivtmp.1156, tmp221,
	beq	.L717	@,
.L633:
	cmp	r3, #0	@ Volume,
	ldr	r6, [r1, r2]	@ data,* ivtmp.1156
	moveq	r7, r3	@ var.1178, Volume
	beq	.L631	@,
	mov	r7, r6, asr #31	@ data
	cmp	r3, #8388608	@ Volume,
	mul	ip, r4, r7	@ tmp176, D.16070, data
	mla	ip, r6, r5, ip	@ tmp236, data, D.16070, tmp176
	umull	r6, r7, r4, r6	@ tmp177, D.16070, data
	add	r7, ip, r7	@, tmp236,
	mov	ip, r6, lsr #23	@ tmp197, tmp177,
	orr	ip, ip, r7, asl #9	@, tmp238, tmp197,,
	mov	r7, ip	@ var.1178, tmp238
	bls	.L631	@,
	mov	ip, ip, asr #8	@ tmp181, tmp238,
	mov	r6, ip	@ tmp182, tmp181
	mov	r7, r6, asr #31	@ tmp182
	mul	ip, r6, r5	@ tmp184, tmp182, D.16070
	mla	ip, r4, r7, ip	@ tmp239, D.16070,, tmp184
	umull	r6, r7, r6, r4	@ tmp185, tmp182, D.16070
	add	r7, ip, r7	@, tmp239,
	mov	ip, r6, lsr #23	@ D.16072, tmp185,
	orr	ip, ip, r7, asl #9	@, var, D.16072,,
	mov	r6, ip, asr #31	@ sign, var,
	cmp	r6, ip, asr #23	@ sign, var,
	ldrne	r9, [fp, #-48]	@, %sfp
	eorne	ip, r6, r9	@ var, sign,
	mov	r7, ip, asl #8	@ var.1178, var,
.L631:
	add	ip, r2, #4	@ tmp221, ivtmp.1156,
	cmp	r3, #0	@ Volume,
	str	r7, [r1, r2]	@ var.1178,* ivtmp.1156
	sub	r7, r8, #1	@ tmp220, ivtmp.1177,
	ldr	r8, [r1, ip]	@ data,
	beq	.L718	@,
	mov	r9, r8, asr #31	@ data
	cmp	r3, #8388608	@ Volume,
	mul	r2, r4, r9	@ tmp316, D.16070, data
	mla	r6, r8, r5, r2	@ tmp317, data, D.16070, tmp316
	umull	r8, r9, r4, r8	@ tmp318, D.16070, data
	add	r9, r6, r9	@, tmp317,
	mov	r2, r8, lsr #23	@ tmp321, tmp318,
	orr	r2, r2, r9, asl #9	@, tmp322, tmp321,,
	mov	r6, r2	@ var.1178, tmp322
	bls	.L663	@,
	mov	r2, r2, asr #8	@ tmp324, tmp322,
	mov	r8, r2	@ tmp325, tmp324
	mov	r9, r8, asr #31	@ tmp325
	mul	r6, r8, r5	@ tmp327, tmp325, D.16070
	mla	r2, r4, r9, r6	@ tmp328, D.16070,, tmp327
	umull	r8, r9, r8, r4	@ tmp329, tmp325, D.16070
	add	r9, r2, r9	@, tmp328,
	mov	r6, r8, lsr #23	@ D.16072, tmp329,
	orr	r2, r6, r9, asl #9	@, var, D.16072,,
	mov	r6, r2, asr #31	@ sign, var,
	cmp	r6, r2, asr #23	@ sign, var,
	ldrne	r8, [fp, #-48]	@, %sfp
	eorne	r2, r6, r8	@ var, sign,
.L664:
	subs	r8, r7, #1	@ ivtmp.1177, tmp220,
	mov	r6, r2, asl #8	@ var.1178, var,
	add	r2, ip, #4	@ ivtmp.1156, tmp221,
	str	r6, [r1, ip]	@ var.1178,
	bne	.L633	@,
.L717:
	ldr	ip, [fp, #-64]	@ ivtmp.1171, %sfp
.L629:
	ldr	r3, [fp, #-56]	@, %sfp
	ldr	r2, [r0, #24]	@ <variable>.u32FadeStep, <variable>.u32FadeStep
	add	r1, r1, r3	@ pInBuf, pInBuf,
	ldr	r3, [r0, #20]	@ <variable>.u32FadeCnt, <variable>.u32FadeCnt
	add	r3, r3, #1	@ D.15339, <variable>.u32FadeCnt,
	str	r3, [r0, #20]	@ D.15339, <variable>.u32FadeCnt
	cmp	r3, r2	@ D.15339, <variable>.u32FadeStep
	bne	.L621	@,
.L715:
	ldr	r3, [r0, #32]	@ <variable>.enCurnFadeStauts, <variable>.enCurnFadeStauts
	mov	r4, #0	@,
	str	r4, [r0, #20]	@, <variable>.u32FadeCnt
	cmp	r3, #1	@ <variable>.enCurnFadeStauts,
	bne	.L621	@,
	ldr	r3, [r0, #16]	@ <variable>.u32FadeCurnCoefIdx, <variable>.u32FadeCurnCoefIdx
	sub	r3, r3, #1	@ D.15345, <variable>.u32FadeCurnCoefIdx,
	str	r3, [r0, #16]	@ D.15345, <variable>.u32FadeCurnCoefIdx
	cmp	r3, #18	@ D.15345,
	streq	r4, [r0, #32]	@, <variable>.enCurnFadeStauts
	b	.L621	@
.L713:
	ldr	r4, [r0, #4]	@ D.16033, <variable>.u32Channels
	cmp	r4, #0	@ D.16033,
	beq	.L611	@,
	ldr	r2, [r0, #0]	@ <variable>.u32BitPerSample, <variable>.u32BitPerSample
	sub	r6, r4, #1	@ tmp222, D.16033,
	and	r6, r6, #1	@ tmp224, tmp222,
	cmp	r2, #16	@ <variable>.u32BitPerSample,
	beq	.L719	@,
	cmp	r2, #24	@ <variable>.u32BitPerSample,
	beq	.L720	@,
.L667:
	mov	r3, #1	@ i,
	cmp	r3, r4	@ i, D.16033
	bcs	.L616	@,
	cmp	r6, #0	@ tmp224,
	beq	.L615	@,
.L712:
	cmp	r2, #16	@ <variable>.u32BitPerSample,
	beq	.L681	@,
	cmp	r2, #24	@ <variable>.u32BitPerSample,
	beq	.L721	@,
.L674:
	add	r3, r3, #1	@ i, tmp225,
	cmp	r3, r4	@ i, D.16033
	bcs	.L616	@,
.L615:
	cmp	r2, #16	@ <variable>.u32BitPerSample,
	add	r3, r3, #1	@ tmp225, i,
	beq	.L722	@,
	cmp	r2, #24	@ <variable>.u32BitPerSample,
	bne	.L712	@,
	ldr	r6, [r1, #0]	@ tmp167,* pInBuf
	cmp	r6, #0	@ tmp167,
	beq	.L712	@,
.L613:
	mov	r7, #1	@,
	str	r7, [r0, #28]	@, <variable>.bStartFade
.L725:
	ldr	r3, [r0, #16]	@ <variable>.u32FadeCurnCoefIdx, <variable>.u32FadeCurnCoefIdx
	cmp	r2, #16	@ <variable>.u32BitPerSample,
	ldr	r8, [fp, #-52]	@, %sfp
	ldr	r3, [r8, r3, asl #2]	@ Volume, g_u32VolCoef
	bne	.L723	@,
.L618:
	cmp	sl, #0	@ ivtmp.1150,
	beq	.L623	@,
	cmp	r3, #0	@ Volume,
	sub	r2, sl, #1	@ tmp214, ivtmp.1150,
	and	r4, r2, #1	@ tmp215, tmp214,
	ldrh	r2, [r1, #0]	@ D.16056,* pInBuf
	bne	.L640	@,
	mov	r2, r3	@ D.16054, Volume
.L688:
	subs	r6, sl, #1	@ ivtmp.1176, ivtmp.1150,
	strh	r2, [r1, #0]	@ movhi	@ D.16054,* pInBuf
	mov	r2, #2	@ ivtmp.1140,
	beq	.L623	@,
	cmp	r4, #0	@ tmp215,
	beq	.L628	@,
	cmp	r3, #0	@ Volume,
	ldrh	r4, [r1, r2]	@ D.16056,* ivtmp.1140
	moveq	r4, r3	@ D.16054, Volume
	beq	.L692	@,
#APP
@ 622 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb r4, r3, r4	@ y, Volume, D.16056
@ 0 "" 2
@ 623 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	ASR    r4, r4, #7	@ var, y
@ 0 "" 2
	cmp	r3, #8388608	@ Volume,
	bhi	.L724	@,
.L690:
	uxth	r4, r4	@ D.16054, var
.L692:
	subs	r6, r6, #1	@ ivtmp.1176, ivtmp.1176,
	strh	r4, [r1, r2]	@ movhi	@ D.16054,* ivtmp.1140
	add	r2, r2, #2	@ ivtmp.1140, ivtmp.1140,
	beq	.L623	@,
.L628:
	cmp	r3, #0	@ Volume,
	ldrh	r7, [r1, r2]	@ D.16056,* ivtmp.1140
	moveq	r7, r3	@ D.16054, Volume
	beq	.L625	@,
#APP
@ 622 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb r7, r3, r7	@ y, Volume, D.16056
@ 0 "" 2
@ 623 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	ASR    r7, r7, #7	@ var, y
@ 0 "" 2
	cmp	r3, #8388608	@ Volume,
	bls	.L627	@,
	mov	r4, r7, asr #31	@ sign, var,
	cmp	r4, r7, asr #15	@ sign, var,
	movwne	r5, #32767	@,
	eorne	r7, r4, r5	@ var, sign,
.L627:
	uxth	r7, r7	@ D.16054, var
.L625:
	add	r4, r2, #2	@ tmp216, ivtmp.1140,
	cmp	r3, #0	@ Volume,
	strh	r7, [r1, r2]	@ movhi	@ D.16054,* ivtmp.1140
	sub	r6, r6, #1	@ tmp217, ivtmp.1176,
	ldrh	r2, [r1, r4]	@ D.16056,
	bne	.L649	@,
	mov	r2, r3	@ D.16054, Volume
.L695:
	subs	r6, r6, #1	@ ivtmp.1176, tmp217,
	strh	r2, [r1, r4]	@ movhi	@ D.16054,
	add	r2, r4, #2	@ ivtmp.1140, tmp216,
	bne	.L628	@,
.L623:
	ldr	r7, [fp, #-60]	@, %sfp
	add	r1, r1, r7	@ pInBuf, pInBuf,
	b	.L617	@
.L681:
	ldrsh	r6, [r1, #0]	@ tmp342,* pInBuf
	cmp	r6, #0	@ tmp342,
	bne	.L613	@,
	add	r3, r3, #1	@ i, tmp225,
	cmp	r3, r4	@ i, D.16033
	bcc	.L615	@,
.L616:
	cmp	r2, #16	@ <variable>.u32BitPerSample,
	beq	.L620	@,
	cmp	r2, #24	@ <variable>.u32BitPerSample,
	ldreq	r2, [fp, #-56]	@, %sfp
	addeq	r1, r1, r2	@ pInBuf, pInBuf,
	b	.L621	@
.L721:
	ldr	r6, [r1, #0]	@ tmp341,* pInBuf
	cmp	r6, #0	@ tmp341,
	beq	.L674	@,
	mov	r7, #1	@,
	str	r7, [r0, #28]	@, <variable>.bStartFade
	b	.L725	@
.L722:
	ldrsh	r6, [r1, #0]	@ tmp166,* pInBuf
	cmp	r6, #0	@ tmp166,
	beq	.L712	@,
	mov	r7, #1	@,
	str	r7, [r0, #28]	@, <variable>.bStartFade
	b	.L725	@
.L620:
	ldr	r9, [fp, #-60]	@, %sfp
	add	r1, r1, r9	@ pInBuf, pInBuf,
	b	.L621	@
.L719:
	ldrsh	r3, [r1, #0]	@ tmp338,* pInBuf
	cmp	r3, #0	@ tmp338,
	beq	.L667	@,
	b	.L613	@
.L720:
	ldr	r3, [r1, #0]	@ tmp337,* pInBuf
	cmp	r3, #0	@ tmp337,
	beq	.L667	@,
	b	.L613	@
.L640:
#APP
@ 622 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb r2, r3, r2	@ y, Volume, D.16056
@ 0 "" 2
@ 623 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	ASR    r2, r2, #7	@ var, y
@ 0 "" 2
	cmp	r3, #8388608	@ Volume,
	bls	.L686	@,
	mov	r6, r2, asr #31	@ sign, var,
	cmp	r6, r2, asr #15	@ sign, var,
	movwne	r5, #32767	@,
	eorne	r2, r6, r5	@ var, sign,
.L686:
	uxth	r2, r2	@ D.16054, var
	b	.L688	@
.L653:
	mov	r9, r8, asr #31	@ data
	cmp	r3, #8388608	@ Volume,
	mul	r2, r4, r9	@ tmp267, D.16070, data
	mla	r7, r8, r5, r2	@ tmp268, data, D.16070, tmp267
	umull	r8, r9, r4, r8	@ tmp269, D.16070, data
	add	r9, r7, r9	@, tmp268,
	mov	r2, r8, lsr #23	@ tmp272, tmp269,
	orr	r2, r2, r9, asl #9	@, tmp273, tmp272,,
	mov	r8, r2	@ var.1178, tmp273
	bls	.L654	@,
	mov	r2, r2, asr #8	@ tmp275, tmp273,
	mov	r8, r2	@ tmp276, tmp275
	mov	r9, r8, asr #31	@ tmp276
	mul	r7, r8, r5	@ tmp278, tmp276, D.16070
	mla	r2, r4, r9, r7	@ tmp279, D.16070,, tmp278
	umull	r8, r9, r8, r4	@ tmp280, tmp276, D.16070
	add	r9, r2, r9	@, tmp279,
	mov	r7, r8, lsr #23	@ D.16072, tmp280,
	orr	r2, r7, r9, asl #9	@, var, D.16072,,
	mov	r7, r2, asr #31	@ sign, var,
	cmp	r7, r2, asr #23	@ sign, var,
	ldrne	r8, [fp, #-48]	@, %sfp
	eorne	r2, r7, r8	@ var, sign,
.L655:
	mov	r8, r2, asl #8	@ var.1178, var,
	b	.L654	@
.L649:
#APP
@ 622 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb r2, r3, r2	@ y, Volume, D.16056
@ 0 "" 2
@ 623 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	ASR    r2, r2, #7	@ var, y
@ 0 "" 2
	cmp	r3, #8388608	@ Volume,
	bls	.L693	@,
	mov	r7, r2, asr #31	@ sign, var,
	cmp	r7, r2, asr #15	@ sign, var,
	movwne	r9, #32767	@,
	eorne	r2, r7, r9	@ var, sign,
.L693:
	uxth	r2, r2	@ D.16054, var
	b	.L695	@
.L716:
	mov	r6, r6, asr #8	@ tmp300, tmp298,
	mov	r8, r6	@ tmp301, tmp300
	mov	r9, r8, asr #31	@ tmp301
	mul	r6, r8, r5	@ tmp303, tmp301, D.16070
	mla	r6, r4, r9, r6	@ tmp304, D.16070,, tmp303
	umull	r8, r9, r8, r4	@ tmp305, tmp301, D.16070
	add	r9, r6, r9	@, tmp304,
	mov	r6, r8, lsr #23	@ D.16072, tmp305,
	orr	r6, r6, r9, asl #9	@, var, D.16072,,
	mov	r8, r6, asr #31	@ sign, var,
	cmp	r8, r6, asr #23	@ sign, var,
	ldrne	r9, [fp, #-48]	@, %sfp
	eorne	r6, r8, r9	@ var, sign,
.L659:
	mov	r8, r6, asl #8	@ var.1178, var,
	b	.L658	@
.L724:
	mov	r7, r4, asr #31	@ sign, var,
	cmp	r7, r4, asr #15	@ sign, var,
	movwne	r8, #32767	@,
	eorne	r4, r7, r8	@ var, sign,
	b	.L690	@
.L611:
	ldr	r2, [r0, #0]	@ <variable>.u32BitPerSample, <variable>.u32BitPerSample
	b	.L616	@
	.fnend
	.size	FADE_InProcess, .-FADE_InProcess
	.align	2
	.global	FADE_OutProcess
	.type	FADE_OutProcess, %function
FADE_OutProcess:
	.fnstart
.LFB928:
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
	cmp	r0, #0	@ hFade
	beq	.L744	@,
	cmp	r2, #0	@ samples,
	ldr	sl, [r0, #4]	@ ivtmp.1218, <variable>.u32Channels
	beq	.L744	@,
	movw	r3, #:lower16:.LANCHOR0	@,
	movw	r4, #:lower16:8388607	@,
	movt	r3, #:upper16:.LANCHOR0	@,
	movt	r4, #:upper16:8388607	@,
	mov	r5, sl, asl #1	@, ivtmp.1218,
	mov	r7, sl, asl #2	@, ivtmp.1218,
	str	r3, [fp, #-48]	@, %sfp
	str	r4, [fp, #-52]	@, %sfp
	str	r5, [fp, #-64]	@, %sfp
	str	r7, [fp, #-60]	@, %sfp
	b	.L743	@
.L800:
	cmp	ip, #24	@ <variable>.u32BitPerSample,
	beq	.L798	@,
.L728:
	ldr	r3, [r0, #20]	@ <variable>.u32FadeCnt, <variable>.u32FadeCnt
	sub	r2, r2, #1	@ samples, samples,
	ldr	ip, [r0, #24]	@ <variable>.u32FadeStep, <variable>.u32FadeStep
	add	r3, r3, #1	@ D.15372, <variable>.u32FadeCnt,
	str	r3, [r0, #20]	@ D.15372, <variable>.u32FadeCnt
	cmp	r3, ip	@ D.15372, <variable>.u32FadeStep
	beq	.L799	@,
.L742:
	cmp	r2, #0	@ samples,
	beq	.L744	@,
.L743:
	ldr	ip, [r0, #0]	@ <variable>.u32BitPerSample, <variable>.u32BitPerSample
	ldr	r3, [r0, #16]	@ <variable>.u32FadeCurnCoefIdx, <variable>.u32FadeCurnCoefIdx
	ldr	r8, [fp, #-48]	@, %sfp
	cmp	ip, #16	@ <variable>.u32BitPerSample,
	ldr	r3, [r8, r3, asl #2]	@ Volume, g_u32VolCoef
	bne	.L800	@,
	cmp	sl, #0	@ ivtmp.1218,
	beq	.L731	@,
	cmp	r3, #0	@ Volume,
	sub	r4, sl, #1	@ tmp202, ivtmp.1218,
	and	r4, r4, #1	@ tmp203, tmp202,
	ldrh	ip, [r1, #0]	@ D.16096,* pInBuf
	bne	.L748	@,
	mov	ip, r3	@ D.16094, Volume
.L782:
	subs	r6, sl, #1	@ ivtmp.1243, ivtmp.1218,
	strh	ip, [r1, #0]	@ movhi	@ D.16094,* pInBuf
	mov	ip, #2	@ ivtmp.1208,
	beq	.L731	@,
	cmp	r4, #0	@ tmp203,
	beq	.L736	@,
	cmp	r3, #0	@ Volume,
	ldrh	r4, [r1, ip]	@ D.16096,* ivtmp.1208
	moveq	r4, r3	@ D.16094, Volume
	beq	.L786	@,
#APP
@ 622 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb r4, r3, r4	@ y, Volume, D.16096
@ 0 "" 2
@ 623 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	ASR    r4, r4, #7	@ var, y
@ 0 "" 2
	cmp	r3, #8388608	@ Volume,
	bls	.L784	@,
	mov	r7, r4, asr #31	@ sign, var,
	cmp	r7, r4, asr #15	@ sign, var,
	movwne	r8, #32767	@,
	eorne	r4, r7, r8	@ var, sign,
.L784:
	uxth	r4, r4	@ D.16094, var
.L786:
	subs	r6, r6, #1	@ ivtmp.1243, ivtmp.1243,
	strh	r4, [r1, ip]	@ movhi	@ D.16094,* ivtmp.1208
	add	ip, ip, #2	@ ivtmp.1208, ivtmp.1208,
	beq	.L731	@,
.L736:
	cmp	r3, #0	@ Volume,
	ldrh	r7, [r1, ip]	@ D.16096,* ivtmp.1208
	moveq	r7, r3	@ D.16094, Volume
	beq	.L733	@,
#APP
@ 622 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb r7, r3, r7	@ y, Volume, D.16096
@ 0 "" 2
@ 623 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	ASR    r7, r7, #7	@ var, y
@ 0 "" 2
	cmp	r3, #8388608	@ Volume,
	bls	.L735	@,
	mov	r4, r7, asr #31	@ sign, var,
	cmp	r4, r7, asr #15	@ sign, var,
	movwne	r9, #32767	@,
	eorne	r7, r4, r9	@ var, sign,
.L735:
	uxth	r7, r7	@ D.16094, var
.L733:
	add	r4, ip, #2	@ tmp204, ivtmp.1208,
	cmp	r3, #0	@ Volume,
	strh	r7, [r1, ip]	@ movhi	@ D.16094,* ivtmp.1208
	sub	r6, r6, #1	@ tmp205, ivtmp.1243,
	ldrh	ip, [r1, r4]	@ D.16096,
	bne	.L757	@,
	mov	ip, r3	@ D.16094, Volume
.L789:
	subs	r6, r6, #1	@ ivtmp.1243, tmp205,
	strh	ip, [r1, r4]	@ movhi	@ D.16094,
	add	ip, r4, #2	@ ivtmp.1208, tmp204,
	bne	.L736	@,
.L731:
	ldr	ip, [fp, #-64]	@, %sfp
	sub	r2, r2, #1	@ samples, samples,
	ldr	r3, [r0, #20]	@ <variable>.u32FadeCnt, <variable>.u32FadeCnt
	add	r1, r1, ip	@ pInBuf, pInBuf,
	ldr	ip, [r0, #24]	@ <variable>.u32FadeStep, <variable>.u32FadeStep
	add	r3, r3, #1	@ D.15372, <variable>.u32FadeCnt,
	str	r3, [r0, #20]	@ D.15372, <variable>.u32FadeCnt
	cmp	r3, ip	@ D.15372, <variable>.u32FadeStep
	bne	.L742	@,
.L799:
	ldr	ip, [r0, #32]	@ <variable>.enCurnFadeStauts, <variable>.enCurnFadeStauts
	mov	r9, #0	@,
	str	r9, [r0, #20]	@, <variable>.u32FadeCnt
	cmp	ip, #2	@ <variable>.enCurnFadeStauts,
	bne	.L742	@,
	ldr	ip, [r0, #16]	@ <variable>.u32FadeCurnCoefIdx, <variable>.u32FadeCurnCoefIdx
	add	r3, ip, #1	@ D.15379, <variable>.u32FadeCurnCoefIdx,
	str	r3, [r0, #16]	@ D.15379, <variable>.u32FadeCurnCoefIdx
	cmp	r3, #99	@ D.15379,
	streq	r9, [r0, #32]	@, <variable>.enCurnFadeStauts
	cmp	r2, #0	@ samples,
	bne	.L743	@,
.L744:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L757:
#APP
@ 622 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb ip, r3, ip	@ y, Volume, D.16096
@ 0 "" 2
@ 623 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	ASR    ip, ip, #7	@ var, y
@ 0 "" 2
	cmp	r3, #8388608	@ Volume,
	bls	.L787	@,
	mov	r7, ip, asr #31	@ sign, var,
	cmp	r7, ip, asr #15	@ sign, var,
	movwne	r9, #32767	@,
	eorne	ip, r7, r9	@ var, sign,
.L787:
	uxth	ip, ip	@ D.16094, var
	b	.L789	@
.L798:
	cmp	sl, #0	@ ivtmp.1218,
	beq	.L737	@,
	cmp	r3, #0	@ Volume,
	sub	r6, sl, #1	@ tmp206, ivtmp.1218,
	and	r6, r6, #1	@ tmp207, tmp206,
	mov	r4, r3	@ D.16110, Volume
	mov	r5, r4, asr #31	@ D.16110
	ldr	r8, [r1, #0]	@ data,* pInBuf
	bne	.L761	@,
	mov	r8, r3	@ var.1242, Volume
.L762:
	subs	r7, sl, #1	@ ivtmp.1241, ivtmp.1218,
	str	r8, [r1, #0]	@ var.1242,* pInBuf
	mov	ip, #4	@ ivtmp.1224,
	beq	.L737	@,
	cmp	r6, #0	@ tmp207,
	beq	.L797	@,
	cmp	r3, #0	@ Volume,
	ldr	r8, [r1, ip]	@ data,* ivtmp.1224
	moveq	r8, r3	@ var.1242, Volume
	beq	.L766	@,
	mov	r9, r8, asr #31	@ data
	cmp	r3, #8388608	@ Volume,
	mul	r6, r4, r9	@ tmp274, D.16110, data
	mla	r6, r8, r5, r6	@ tmp275, data, D.16110, tmp274
	umull	r8, r9, r4, r8	@ tmp276, D.16110, data
	add	r9, r6, r9	@, tmp275,
	mov	r6, r8, lsr #23	@ tmp279, tmp276,
	orr	r6, r6, r9, asl #9	@, tmp280, tmp279,,
	mov	r8, r6	@ var.1242, tmp280
	bls	.L766	@,
	mov	r6, r6, asr #8	@ tmp282, tmp280,
	mov	r8, r6	@ tmp283, tmp282
	mov	r9, r8, asr #31	@ tmp283
	mul	r6, r8, r5	@ tmp285, tmp283, D.16110
	mla	r6, r4, r9, r6	@ tmp286, D.16110,, tmp285
	umull	r8, r9, r8, r4	@ tmp287, tmp283, D.16110
	add	r9, r6, r9	@, tmp286,
	mov	r6, r8, lsr #23	@ D.16112, tmp287,
	orr	r6, r6, r9, asl #9	@, var, D.16112,,
	mov	r8, r6, asr #31	@ sign, var,
	cmp	r8, r6, asr #23	@ sign, var,
	ldrne	r9, [fp, #-52]	@, %sfp
	eorne	r6, r8, r9	@ var, sign,
.L767:
	mov	r8, r6, asl #8	@ var.1242, var,
.L766:
	subs	r7, r7, #1	@ ivtmp.1241, ivtmp.1241,
	str	r8, [r1, ip]	@ var.1242,* ivtmp.1224
	add	ip, ip, #4	@ ivtmp.1224, ivtmp.1224,
	beq	.L737	@,
.L797:
	str	sl, [fp, #-56]	@ ivtmp.1218, %sfp
	mov	r8, r7	@ ivtmp.1241, ivtmp.1241
	b	.L741	@
.L802:
	mov	sl, r3	@ var.1242, Volume
.L771:
	subs	r8, r7, #1	@ ivtmp.1241, tmp209,
	str	sl, [r1, r6]	@ var.1242,
	add	ip, r6, #4	@ ivtmp.1224, tmp208,
	beq	.L801	@,
.L741:
	cmp	r3, #0	@ Volume,
	ldr	r6, [r1, ip]	@ data,* ivtmp.1224
	moveq	r7, r3	@ var.1242, Volume
	beq	.L739	@,
	mov	r7, r6, asr #31	@ data
	cmp	r3, #8388608	@ Volume,
	mul	sl, r4, r7	@ tmp166, D.16110, data
	mla	sl, r6, r5, sl	@ tmp218, data, D.16110, tmp166
	umull	r6, r7, r4, r6	@ tmp167, D.16110, data
	add	r7, sl, r7	@, tmp218,
	mov	sl, r6, lsr #23	@ tmp187, tmp167,
	orr	sl, sl, r7, asl #9	@, tmp220, tmp187,,
	mov	r7, sl	@ var.1242, tmp220
	bls	.L739	@,
	mov	r6, sl, asr #8	@ tmp171, tmp220,
	mov	r7, r6, asr #31	@ tmp172
	mul	sl, r6, r5	@ tmp174, tmp172, D.16110
	mla	sl, r4, r7, sl	@ tmp221, D.16110,, tmp174
	umull	r6, r7, r6, r4	@ tmp175, tmp172, D.16110
	add	r7, sl, r7	@, tmp221,
	mov	sl, r6, lsr #23	@ D.16112, tmp175,
	orr	sl, sl, r7, asl #9	@, var, D.16112,,
	mov	r6, sl, asr #31	@ sign, var,
	cmp	r6, sl, asr #23	@ sign, var,
	ldrne	r7, [fp, #-52]	@, %sfp
	eorne	sl, r6, r7	@ var, sign,
	mov	r7, sl, asl #8	@ var.1242, var,
.L739:
	add	r6, ip, #4	@ tmp208, ivtmp.1224,
	cmp	r3, #0	@ Volume,
	str	r7, [r1, ip]	@ var.1242,* ivtmp.1224
	sub	r7, r8, #1	@ tmp209, ivtmp.1241,
	ldr	r8, [r1, r6]	@ data,
	beq	.L802	@,
	mov	r9, r8, asr #31	@ data
	cmp	r3, #8388608	@ Volume,
	mul	sl, r4, r9	@ tmp298, D.16110, data
	mla	ip, r8, r5, sl	@ tmp299, data, D.16110, tmp298
	umull	r8, r9, r4, r8	@ tmp300, D.16110, data
	add	r9, ip, r9	@, tmp299,
	mov	sl, r8, lsr #23	@ tmp303, tmp300,
	orr	ip, sl, r9, asl #9	@, tmp304, tmp303,,
	mov	sl, ip	@ var.1242, tmp304
	bls	.L771	@,
	mov	r8, ip, asr #8	@ tmp306, tmp304,
	mov	r9, r8, asr #31	@ tmp307
	mul	ip, r8, r5	@ tmp309, tmp307, D.16110
	mla	sl, r4, r9, ip	@ tmp310, D.16110,, tmp309
	umull	r8, r9, r8, r4	@ tmp311, tmp307, D.16110
	add	r9, sl, r9	@, tmp310,
	mov	ip, r8, lsr #23	@ D.16112, tmp311,
	orr	ip, ip, r9, asl #9	@, var, D.16112,,
	mov	r8, ip, asr #31	@ sign, var,
	cmp	r8, ip, asr #23	@ sign, var,
	ldrne	sl, [fp, #-52]	@, %sfp
	eorne	ip, r8, sl	@ var, sign,
.L772:
	subs	r8, r7, #1	@ ivtmp.1241, tmp209,
	mov	sl, ip, asl #8	@ var.1242, var,
	add	ip, r6, #4	@ ivtmp.1224, tmp208,
	str	sl, [r1, r6]	@ var.1242,
	bne	.L741	@,
.L801:
	ldr	sl, [fp, #-56]	@ ivtmp.1218, %sfp
.L737:
	ldr	r8, [fp, #-60]	@, %sfp
	add	r1, r1, r8	@ pInBuf, pInBuf,
	b	.L728	@
.L761:
	mov	r9, r8, asr #31	@ data
	cmp	r3, #8388608	@ Volume,
	mul	r7, r4, r9	@ tmp249, D.16110, data
	mla	ip, r8, r5, r7	@ tmp250, data, D.16110, tmp249
	umull	r8, r9, r4, r8	@ tmp251, D.16110, data
	add	r9, ip, r9	@, tmp250,
	mov	r7, r8, lsr #23	@ tmp254, tmp251,
	orr	ip, r7, r9, asl #9	@, tmp255, tmp254,,
	mov	r8, ip	@ var.1242, tmp255
	bls	.L762	@,
	mov	r7, ip, asr #8	@ tmp257, tmp255,
	mov	r8, r7	@ tmp258, tmp257
	mov	r9, r8, asr #31	@ tmp258
	mul	ip, r8, r5	@ tmp260, tmp258, D.16110
	mla	r7, r4, r9, ip	@ tmp261, D.16110,, tmp260
	umull	r8, r9, r8, r4	@ tmp262, tmp258, D.16110
	add	r9, r7, r9	@, tmp261,
	mov	ip, r8, lsr #23	@ D.16112, tmp262,
	orr	ip, ip, r9, asl #9	@, var, D.16112,,
	mov	r7, ip, asr #31	@ sign, var,
	cmp	r7, ip, asr #23	@ sign, var,
	ldrne	r8, [fp, #-52]	@, %sfp
	eorne	ip, r7, r8	@ var, sign,
.L763:
	mov	r8, ip, asl #8	@ var.1242, var,
	b	.L762	@
.L748:
#APP
@ 622 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb r6, r3, ip	@ y, Volume, D.16096
@ 0 "" 2
@ 623 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	ASR    ip, r6, #7	@ var, y
@ 0 "" 2
	cmp	r3, #8388608	@ Volume,
	bls	.L780	@,
	mov	r6, ip, asr #31	@ sign, var,
	cmp	r6, ip, asr #15	@ sign, var,
	movwne	r5, #32767	@,
	eorne	ip, r6, r5	@ var, sign,
.L780:
	uxth	ip, ip	@ D.16094, var
	b	.L782	@
	.fnend
	.size	FADE_OutProcess, .-FADE_OutProcess
	.align	2
	.global	FADE_Destroy
	.type	FADE_Destroy, %function
FADE_Destroy:
	.fnstart
.LFB925:
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
	subs	r1, r0, #0	@ hFade, hFade
	ldmeqfd	sp, {fp, sp, pc}	@
	mov	r0, #17	@,
	bl	HI_ADSP_FREE	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	FADE_Destroy, .-FADE_Destroy
	.align	2
	.global	FADE_Create
	.type	FADE_Create, %function
FADE_Create:
	.fnstart
.LFB923:
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
	mov	r5, r1	@ inRate, inRate
	movw	r1, #:lower16:191999	@ tmp142,
	sub	ip, r5, #1	@ tmp141, inRate,
	movt	r1, #:upper16:191999	@ tmp142,
	mov	r7, r3	@ Channels, Channels
	cmp	ip, r1	@ tmp141, tmp142
	mov	r3, #0	@ tmp140,
	mov	r4, r0	@ phFade, phFade
	mov	r6, r2	@ BitPerSample, BitPerSample
	str	r3, [r0, #0]	@ tmp140,* phFade
	ldmhifd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	cmp	r2, #24	@ BitPerSample,
	cmpne	r2, #16	@, BitPerSample,
	ldmnefd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	sub	sl, r7, #1	@ tmp150, Channels,
	cmp	r7, #8	@ Channels,
	cmpne	sl, #1	@, tmp150,
	movls	sl, #0	@, tmp157
	movhi	sl, #1	@, tmp157
	ldmhifd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	mov	r0, #17	@,
	mov	r1, #36	@,
	bl	HI_ADSP_MALLOC	@
	subs	r8, r0, #0	@ D.15229,
	ldmeqfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	mov	r1, #36	@,
	bl	__memzero	@
	stmia	r8, {r6, r7}	@ phole stm
	str	r5, [r8, #8]	@ inRate, <variable>.u32InRate
	str	sl, [r8, #32]	@ tmp157, <variable>.enCurnFadeStauts
	str	r8, [r4, #0]	@ D.15229,* phFade
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}	@
	.fnend
	.size	FADE_Create, .-FADE_Create
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	g_u32VolCoef, %object
	.size	g_u32VolCoef, 400
g_u32VolCoef:
	.word	66633081
	.word	59386796
	.word	52928538
	.word	47172609
	.word	42042632
	.word	37470535
	.word	33395649
	.word	29763904
	.word	26527107
	.word	23642309
	.word	21071230
	.word	18779754
	.word	16737473
	.word	14917288
	.word	13295047
	.word	11849223
	.word	10560631
	.word	9412172
	.word	8388608
	.word	7476354
	.word	6663308
	.word	5938679
	.word	5292853
	.word	4717260
	.word	4204263
	.word	3747053
	.word	3339564
	.word	2976390
	.word	2652710
	.word	2364230
	.word	2107123
	.word	1877975
	.word	1673747
	.word	1491728
	.word	1329504
	.word	1184922
	.word	1056063
	.word	941217
	.word	838860
	.word	747635
	.word	666330
	.word	593867
	.word	529285
	.word	471726
	.word	420426
	.word	374705
	.word	333956
	.word	297639
	.word	265271
	.word	236423
	.word	210712
	.word	187797
	.word	167374
	.word	149172
	.word	132950
	.word	118492
	.word	105606
	.word	94121
	.word	83886
	.word	74763
	.word	66633
	.word	59386
	.word	52928
	.word	47172
	.word	42042
	.word	37470
	.word	33395
	.word	29763
	.word	26527
	.word	23642
	.word	21071
	.word	18779
	.word	16737
	.word	14917
	.word	13295
	.word	11849
	.word	10560
	.word	9412
	.word	8388
	.word	7476
	.word	6663
	.word	5938
	.word	5292
	.word	4717
	.word	4204
	.word	3747
	.word	3339
	.word	2976
	.word	2652
	.word	2364
	.word	2107
	.word	1877
	.word	1673
	.word	1491
	.word	1329
	.word	1184
	.word	1056
	.word	941
	.word	838
	.word	0
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
