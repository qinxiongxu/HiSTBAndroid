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
	.file	"resample.c"
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
@ -DKBUILD_BASENAME=KBUILD_STR(resample)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_adsp) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD drivers/msp/adsp/adsp_v1_1/./hifi/common/resampler/.resample.o.d
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/drivers/msp/adsp/adsp_v1_1/./hifi/common/resampler/resample.c
@ -mlittle-endian -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -marm -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/adsp/adsp_v1_1/./hifi/common/resampler/resample.o -O2 -Wall
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
	.type	cvtShortShort, %function
cvtShortShort:
	.fnstart
.LFB38:
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
	ldr	ip, [fp, #4]	@ chans, chans
	cmp	ip, #2	@ chans,
	movne	r4, #0	@, D.2218
	moveq	r4, #1	@, D.2218
	cmp	r3, #0	@ bInterleaved,
	cmpeq	ip, #2	@, chans,
	mov	r3, r0	@ dst, d
	bne	.L2	@,
	add	r2, r1, r2, asl #1	@, srcEnd, s, n,
	cmp	r1, r2	@ s, srcEnd
	beq	.L3	@,
	mov	ip, r1	@ tmp193, s
	rsb	r5, r1, r2	@ tmp215, s, srcEnd
	ldrh	r4, [ip], #2	@,
	sub	r3, r5, #2	@ tmp216, tmp215,
	cmp	r2, ip	@ srcEnd, tmp193
	mov	ip, #2	@ ivtmp.128,
	strh	r4, [r0, #0]	@ movhi	@,* d
	ubfx	r4, r3, #1, #1	@ tmp217, tmp216,,
	ldrh	r5, [r2, #0]	@,* srcEnd
	add	r3, r0, #4	@ dst.146, d,
	strh	r5, [r0, #2]	@ movhi	@,
	beq	.L20	@,
	cmp	r4, #0	@ tmp217,
	beq	.L4	@,
	ldrh	r4, [r1, #2]	@,
	mov	ip, #4	@ ivtmp.128,
	add	r5, ip, r1	@ tmp244, ivtmp.128, s
	cmp	r2, r5	@ srcEnd, tmp244
	strh	r4, [r3, #0]	@ movhi	@,* dst.146
	ldrh	r5, [r2, #2]	@,
	strh	r5, [r3, #2]	@ movhi	@,
	add	r3, r3, ip	@ dst.146, dst.146,
	beq	.L20	@,
.L4:
	ldrh	r4, [r1, ip]	@,* ivtmp.128
	strh	r4, [r3, #0]	@ movhi	@,* dst.146
	add	r4, ip, #2	@ tmp219, ivtmp.128,
	ldrh	r5, [r2, ip]	@,* ivtmp.128
	add	ip, r4, #2	@ ivtmp.128, tmp219,
	add	r6, ip, r1	@ tmp235, ivtmp.128, s
	cmp	r2, r6	@ srcEnd, tmp235
	strh	r5, [r3, #2]	@ movhi	@,
	add	r5, r3, #4	@ tmp218, dst.146,
	ldrh	r6, [r1, r4]	@,
	strh	r6, [r3, #4]	@ movhi	@,
	add	r3, r5, #4	@ dst.146, tmp218,
	ldrh	r4, [r2, r4]	@,
	strh	r4, [r5, #2]	@ movhi	@,
	bne	.L4	@,
.L20:
	add	ip, r1, #2	@ tmp194, s,
	rsb	r3, ip, r2	@ tmp195, tmp194, srcEnd
	mov	r2, r3, lsr #1	@ tmp197, tmp195,
	add	r1, r2, #1	@ tmp198, tmp197,
	add	r3, r0, r1, asl #2	@, dst, d, tmp198,
.L3:
	rsb	r0, r0, r3	@ tmp211, d, dst
	mov	r0, r0, asr #1	@, tmp211,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L2:
	cmp	r4, #0	@ D.2218,
	movne	r2, r2, asl #1	@ n, n,
	add	r2, r1, r2, asl #1	@, srcEnd, s, n,
	cmp	r1, r2	@ s, srcEnd
	beq	.L3	@,
	mov	r3, r1	@ tmp203, s
	rsb	ip, r1, r2	@ tmp222, s, srcEnd
	ldrh	r4, [r3], #2	@,
	sub	ip, ip, #2	@ tmp223, tmp222,
	ubfx	ip, ip, #1, #1	@ tmp224, tmp223,,
	cmp	r2, r3	@ srcEnd, tmp203
	mov	r3, #2	@ ivtmp.139,
	strh	r4, [r0, #0]	@ movhi	@,* d
	beq	.L21	@,
	cmp	ip, #0	@ tmp224,
	beq	.L6	@,
	mov	r3, #4	@ ivtmp.139,
	add	r6, r3, r1	@ tmp246, ivtmp.139, s
	cmp	r2, r6	@ srcEnd, tmp246
	ldrh	r6, [r1, #2]	@,
	strh	r6, [r0, #2]	@ movhi	@,
	beq	.L21	@,
.L6:
	ldrh	r5, [r1, r3]	@,* ivtmp.139
	add	ip, r3, #2	@ tmp225, ivtmp.139,
	strh	r5, [r0, r3]	@ movhi	@,* ivtmp.139
	add	r3, ip, #2	@ ivtmp.139, tmp225,
	add	r4, r3, r1	@ tmp241, ivtmp.139, s
	ldrh	r6, [r1, ip]	@,
	cmp	r2, r4	@ srcEnd, tmp241
	strh	r6, [r0, ip]	@ movhi	@,
	bne	.L6	@,
.L21:
	add	ip, r1, #2	@ tmp204, s,
	rsb	r3, ip, r2	@ tmp205, tmp204, srcEnd
	bic	r2, r3, #1	@ tmp208, tmp205,
	add	r1, r2, #2	@ tmp209, tmp208,
	add	r3, r0, r1	@ dst, d, tmp209
	rsb	r0, r0, r3	@ tmp211, d, dst
	mov	r0, r0, asr #1	@, tmp211,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	cvtShortShort, .-cvtShortShort
	.align	2
	.type	cvt2int, %function
cvt2int:
	.fnstart
.LFB39:
	@ args = 8, pretend = 0, frame = 0
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
	ldmib	fp, {r5, ip}	@ phole ldm
	cmp	ip, #2	@ chans,
	movne	r4, #0	@, D.2266
	moveq	r4, #1	@, D.2266
	cmp	r5, #0	@ bInterleaved,
	cmpeq	ip, #2	@, chans,
	mov	ip, r0	@ dst, d
	bne	.L24	@,
	cmp	r3, #16	@ bitdepth,
	beq	.L62	@,
	add	r2, r1, r2, asl #2	@, srcEnd, s, n,
	cmp	r1, r2	@ s, srcEnd
	beq	.L26	@,
	mov	ip, r1	@ tmp208, s
	rsb	r5, r1, r2	@ tmp247, s, srcEnd
	ldr	r4, [ip], #4	@ tmp206,
	sub	r3, r5, #4	@ tmp248, tmp247,
	ubfx	r5, r3, #2, #1	@ tmp249, tmp248,,
	add	r3, r0, #8	@ dst.221, d,
	cmp	r2, ip	@ srcEnd, tmp208
	mov	ip, #4	@ ivtmp.193,
	str	r4, [r0, #0]	@ tmp206,* d
	ldr	r4, [r2, #0]	@ tmp207,* srcEnd
	str	r4, [r0, #4]	@ tmp207,
	beq	.L59	@,
	cmp	r5, #0	@ tmp249,
	beq	.L28	@,
	ldr	r4, [r1, #4]	@ tmp309,
	mov	ip, #8	@ ivtmp.193,
	add	r5, ip, r1	@ tmp311, ivtmp.193, s
	cmp	r2, r5	@ srcEnd, tmp311
	str	r4, [r3, #0]	@ tmp309,* dst.221
	ldr	r4, [r2, #4]	@ tmp310,
	str	r4, [r3, #4]	@ tmp310,
	add	r3, r3, ip	@ dst.221, dst.221,
	beq	.L59	@,
.L28:
	ldr	r7, [r1, ip]	@ tmp280,* ivtmp.193
	add	r4, ip, #4	@ tmp250, ivtmp.193,
	add	r5, r3, #8	@ tmp251, dst.221,
	str	r7, [r3, #0]	@ tmp280,* dst.221
	ldr	r6, [r2, ip]	@ tmp281,* ivtmp.193
	add	ip, r4, #4	@ ivtmp.193, tmp250,
	add	r7, ip, r1	@ tmp287, ivtmp.193, s
	cmp	r2, r7	@ srcEnd, tmp287
	str	r6, [r3, #4]	@ tmp281,
	ldr	r6, [r1, r4]	@ tmp285,
	str	r6, [r3, #8]	@ tmp285,
	add	r3, r5, #8	@ dst.221, tmp251,
	ldr	r4, [r2, r4]	@ tmp286,
	str	r4, [r5, #4]	@ tmp286,
	bne	.L28	@,
.L59:
	add	r3, r1, #4	@ tmp209, s,
	rsb	r2, r3, r2	@ tmp210, tmp209, srcEnd
	mov	ip, r2, lsr #2	@ tmp212, tmp210,
	add	r1, ip, #1	@ tmp213, tmp212,
	add	ip, r0, r1, asl #3	@, dst, d, tmp213,
.L26:
	rsb	r0, r0, ip	@ tmp236, d, dst
	mov	r0, r0, asr #2	@, tmp236,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L24:
	cmp	r4, #0	@ D.2266,
	movne	r2, r2, asl #1	@ n, n,
	cmp	r3, #16	@ bitdepth,
	beq	.L63	@,
	add	r2, r1, r2, asl #2	@, srcEnd, s, n,
	cmp	r1, r2	@ s, srcEnd
	beq	.L26	@,
	mov	ip, r1	@ tmp228, s
	rsb	r5, r1, r2	@ tmp260, s, srcEnd
	ldr	r4, [ip], #4	@ tmp227,
	sub	r3, r5, #4	@ tmp261, tmp260,
	ubfx	r5, r3, #2, #1	@ tmp262, tmp261,,
	mov	r3, #4	@ ivtmp.210,
	cmp	r2, ip	@ srcEnd, tmp228
	str	r4, [r0, #0]	@ tmp227,* d
	beq	.L61	@,
	cmp	r5, #0	@ tmp262,
	beq	.L32	@,
	ldr	ip, [r1, #4]	@ tmp316,
	mov	r3, #8	@ ivtmp.210,
	add	r4, r3, r1	@ tmp317, ivtmp.210, s
	cmp	r2, r4	@ srcEnd, tmp317
	str	ip, [r0, #4]	@ tmp316,
	beq	.L61	@,
.L32:
	ldr	r4, [r1, r3]	@ tmp299,* ivtmp.210
	add	ip, r3, #4	@ tmp263, ivtmp.210,
	str	r4, [r0, r3]	@ tmp299,* ivtmp.210
	add	r3, ip, #4	@ ivtmp.210, tmp263,
	ldr	r4, [r1, ip]	@ tmp302,
	add	r5, r3, r1	@ tmp303, ivtmp.210, s
	cmp	r2, r5	@ srcEnd, tmp303
	str	r4, [r0, ip]	@ tmp302,
	bne	.L32	@,
.L61:
	add	ip, r1, #4	@ tmp229, s,
	rsb	r2, ip, r2	@ tmp230, tmp229, srcEnd
	bic	r3, r2, #3	@ tmp233, tmp230,
	add	r1, r3, #4	@ tmp234, tmp233,
	add	ip, r0, r1	@ dst, d, tmp234
	rsb	r0, r0, ip	@ tmp236, d, dst
	mov	r0, r0, asr #2	@, tmp236,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L62:
	add	r2, r1, r2, asl #1	@, srcEnd, s, n,
	cmp	r1, r2	@ s, srcEnd
	beq	.L26	@,
	mov	ip, r1	@ tmp198, s
	rsb	r5, r1, r2	@ tmp240, s, srcEnd
	ldrsh	r4, [ip], #2	@ tmp194,
	sub	r3, r5, #2	@ tmp241, tmp240,
	ubfx	r5, r3, #1, #1	@ tmp242, tmp241,,
	add	r3, r0, #8	@ dst.220, d,
	cmp	r2, ip	@ srcEnd, tmp198
	mov	ip, #2	@ ivtmp.183,
	mov	r4, r4, asl #16	@ tmp195, tmp194,
	str	r4, [r0, #0]	@ tmp195,* d
	ldrsh	r4, [r2, #0]	@ tmp196,* srcEnd
	mov	r4, r4, asl #16	@ tmp197, tmp196,
	str	r4, [r0, #4]	@ tmp197,
	beq	.L58	@,
	cmp	r5, #0	@ tmp242,
	beq	.L27	@,
	ldrsh	r4, [r1, #2]	@ tmp304,
	mov	ip, #4	@ ivtmp.183,
	add	r5, ip, r1	@ tmp308, ivtmp.183, s
	cmp	r2, r5	@ srcEnd, tmp308
	mov	r4, r4, asl #16	@ tmp305, tmp304,
	str	r4, [r3, #0]	@ tmp305,* dst.220
	ldrsh	r4, [r2, #2]	@ tmp306,
	mov	r4, r4, asl #16	@ tmp307, tmp306,
	str	r4, [r3, #4]	@ tmp307,
	add	r3, r3, #8	@ dst.220, dst.220,
	beq	.L58	@,
.L27:
	ldrsh	r6, [r1, ip]	@ tmp266,* ivtmp.183
	add	r4, ip, #2	@ tmp244, ivtmp.183,
	add	r5, r3, #8	@ tmp243, dst.220,
	mov	r7, r6, asl #16	@ tmp267, tmp266,
	str	r7, [r3, #0]	@ tmp267,* dst.220
	ldrsh	r6, [r2, ip]	@ tmp268,* ivtmp.183
	add	ip, r4, #2	@ ivtmp.183, tmp244,
	add	r7, ip, r1	@ tmp277, ivtmp.183, s
	cmp	r2, r7	@ srcEnd, tmp277
	mov	r6, r6, asl #16	@ tmp269, tmp268,
	str	r6, [r3, #4]	@ tmp269,
	ldrsh	r6, [r1, r4]	@ tmp273,
	mov	r6, r6, asl #16	@ tmp274, tmp273,
	str	r6, [r3, #8]	@ tmp274,
	ldrsh	r4, [r2, r4]	@ tmp275,
	add	r3, r5, #8	@ dst.220, tmp243,
	mov	r4, r4, asl #16	@ tmp276, tmp275,
	str	r4, [r5, #4]	@ tmp276,
	bne	.L27	@,
.L58:
	add	r3, r1, #2	@ tmp199, s,
	rsb	r2, r3, r2	@ tmp200, tmp199, srcEnd
	mov	ip, r2, lsr #1	@ tmp202, tmp200,
	add	r1, ip, #1	@ tmp203, tmp202,
	add	ip, r0, r1, asl #3	@, dst, d, tmp203,
	rsb	r0, r0, ip	@ tmp236, d, dst
	mov	r0, r0, asr #2	@, tmp236,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L63:
	add	r2, r1, r2, asl #1	@, srcEnd, s, n,
	cmp	r1, r2	@ s, srcEnd
	beq	.L26	@,
	mov	ip, r1	@ tmp219, s
	rsb	r5, r1, r2	@ tmp254, s, srcEnd
	ldrsh	r4, [ip], #2	@ tmp217,
	sub	r3, r5, #2	@ tmp255, tmp254,
	ubfx	r5, r3, #1, #1	@ tmp256, tmp255,,
	mov	r3, #2	@ ivtmp.203,
	cmp	r2, ip	@ srcEnd, tmp219
	mov	ip, r4, asl #16	@ tmp218, tmp217,
	str	ip, [r0, #0]	@ tmp218,* d
	beq	.L60	@,
	cmp	r5, #0	@ tmp256,
	beq	.L31	@,
	mov	ip, #4	@ tmp312,
	ldrsh	r4, [r1, #2]	@ tmp313,
	add	r5, ip, r1	@ tmp315, ivtmp.203, s
	mov	r3, ip	@ ivtmp.203, tmp312
	cmp	r2, r5	@ srcEnd, tmp315
	mov	r4, r4, asl #16	@ tmp314, tmp313,
	str	r4, [r0, ip]	@ tmp314,
	beq	.L60	@,
.L31:
	ldrsh	r4, [r1, r3]	@ tmp290,* ivtmp.203
	add	ip, r3, #2	@ tmp257, ivtmp.203,
	mov	r5, r4, asl #16	@ tmp291, tmp290,
	str	r5, [r0, r3, asl #1]	@ tmp291,* d
	add	r3, ip, #2	@ ivtmp.203, tmp257,
	ldrsh	r4, [r1, ip]	@ tmp295,
	add	r5, r3, r1	@ tmp297, ivtmp.203, s
	cmp	r2, r5	@ srcEnd, tmp297
	mov	r4, r4, asl #16	@ tmp296, tmp295,
	str	r4, [r0, ip, asl #1]	@ tmp296,* d
	bne	.L31	@,
.L60:
	add	ip, r1, #2	@ tmp220, s,
	rsb	r2, ip, r2	@ tmp221, tmp220, srcEnd
	mov	r3, r2, lsr #1	@ tmp223, tmp221,
	add	r1, r3, #1	@ tmp224, tmp223,
	add	ip, r0, r1, asl #2	@, dst, d, tmp224,
	rsb	r0, r0, ip	@ tmp236, d, dst
	mov	r0, r0, asr #2	@, tmp236,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	cvt2int, .-cvt2int
	.global	__aeabi_idiv
	.align	2
	.global	ResampleConfig
	.type	ResampleConfig, %function
ResampleConfig:
	.fnstart
.LFB48:
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
	cmp	r1, r2	@ inrate, outrate
	mov	r4, r1	@ inrate, inrate
	mov	r5, r2	@ outrate, outrate
	mov	r7, r0	@ s, s
	moveq	r8, r1	@ outrate.266, inrate
	beq	.L66	@,
	mov	r3, r2	@ outrate.272, outrate
	mov	r8, r1	@ divisor, inrate
.L69:
	cmp	r3, r8	@ outrate.272, divisor
	rsblt	r8, r3, r8	@ divisor, outrate.272, divisor
	rsbge	r3, r8, r3	@ outrate.272, divisor, outrate.272
	cmp	r8, r3	@ divisor, outrate.272
	bne	.L69	@,
.L66:
	mov	r0, r5	@, outrate
	mov	r1, r8	@, outrate.266
	bl	__aeabi_idiv	@
	cmp	r0, #1280	@ up,
	mov	r6, r0	@ up,
	ble	.L88	@,
.L70:
	mvn	r0, #0	@ D.2970,
.L79:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L88:
	mov	r1, r8	@, outrate.266
	mov	r0, r4	@, inrate
	bl	__aeabi_idiv	@
	mov	r1, r6	@, up
	ldr	sl, [r7, #16]	@ D.2971, <variable>.nchans
	add	r2, r6, r0	@ tmp168, up, dn
	mov	r8, r0	@ dn,
	sub	r0, r2, #1	@, tmp168,
	bl	__aeabi_idiv	@
	mul	r0, sl, r0	@ tmp174, D.2971,
	cmp	r0, #255	@ tmp174,
	bgt	.L70	@,
	cmp	r4, #0	@ inrate,
	add	r0, r4, #3	@ tmp182, inrate,
	add	r9, r5, #3	@ tmp185, outrate,
	add	lr, r4, r4, lsr #31	@, tmp176, inrate, inrate,
	movge	r0, r4	@ inrate, inrate
	cmp	r5, #0	@ outrate,
	add	r1, r5, r5, lsr #31	@, tmp179, outrate, outrate,
	mov	ip, lr, asr #1	@, tmp176,
	movge	r9, r5	@ outrate, outrate
	mov	r0, r0, asr #2	@ D.2988, inrate,
	mov	r3, r1, asr #1	@, tmp179,
	mov	r9, r9, asr #2	@ D.2991, outrate,
	str	r3, [fp, #-48]	@, %sfp
	mov	r2, #0	@ i,
	movw	r3, #:lower16:.LANCHOR0	@ srcinfoptr,
	str	ip, [fp, #-52]	@, %sfp
	movt	r3, #:upper16:.LANCHOR0	@ srcinfoptr,
	str	r6, [fp, #-64]	@ up, %sfp
	b	.L75	@
.L71:
	ldr	r6, [fp, #-52]	@, %sfp
	cmp	r1, r6	@ D.2980,
	beq	.L89	@,
.L73:
	cmp	r1, r0	@ D.2980, D.2988
	beq	.L90	@,
.L74:
	add	r3, r3, #24	@ srcinfoptr, srcinfoptr,
	add	r2, r2, #1	@, i,
	str	r2, [fp, #-56]	@, %sfp
	ldr	r2, [r3, #0]	@ D.2980, <variable>.inrate
	mov	r1, r3	@ tmp218, srcinfoptr
	cmp	r2, r4	@ D.2980, inrate
	beq	.L91	@,
.L83:
	ldr	ip, [fp, #-52]	@, %sfp
	cmp	r2, ip	@ D.2980,
	beq	.L92	@,
.L84:
	cmp	r2, r0	@ D.2980, D.2988
	beq	.L93	@,
.L85:
	ldr	r3, [fp, #-56]	@, %sfp
	add	r2, r3, #1	@ i,,
	add	r3, r1, #24	@ srcinfoptr, tmp218,
	cmp	r2, #40	@ i,
	beq	.L70	@,
.L75:
	ldr	r1, [r3, #0]	@ D.2980, <variable>.inrate
	cmp	r1, r4	@ D.2980, inrate
	bne	.L71	@,
	ldr	r6, [r3, #4]	@ <variable>.outrate, <variable>.outrate
	cmp	r6, r5	@ <variable>.outrate, outrate
	bne	.L71	@,
.L72:
	ldr	r1, [r3, #12]	@ nwing, <variable>.nwing
	mov	lr, #0	@ tmp194,
	ldr	r0, [r3, #20]	@ <variable>.filter, <variable>.filter
	ldr	r2, [r7, #40]	@ D.2997, <variable>.bitwidth
	mul	sl, r1, sl	@ tmp191, nwing, D.2971
	ldr	r6, [fp, #-64]	@ up, %sfp
	str	r0, [r7, #68]	@ <variable>.filter, <variable>.filter
	cmp	r2, #16	@ D.2997,
	ldr	r3, [r3, #16]	@ <variable>.nextphase, <variable>.nextphase
	str	lr, [r7, #36]	@ tmp194, <variable>.isCloned
	str	r3, [r7, #72]	@ <variable>.nextphase, <variable>.nextphase
	mov	ip, sl, asl #1	@ nhist, tmp191,
	beq	.L94	@,
	cmp	r2, #24	@ D.2997,
	cmpne	r2, #20	@, D.2997,
	beq	.L78	@,
	cmp	r2, #18	@ D.2997,
	beq	.L78	@,
.L77:
	sub	r0, r6, #1	@ tmp211, up,
	str	r4, [r7, #8]	@ inrate, <variable>.inrate
	ldr	r2, [r7, #68]	@ <variable>.filter, <variable>.filter
	mov	r3, #0	@ tmp208,
	mul	r4, r1, r0	@ tmp212, nwing, tmp211
	str	ip, [r7, #24]	@ nhist, <variable>.nhist
	str	r5, [r7, #12]	@ outrate, <variable>.outrate
	mov	r0, r3	@ D.2970, tmp208
	stmia	r7, {r6, r8}	@ phole stm
	str	r1, [r7, #20]	@ nwing, <variable>.nwing
	add	ip, r2, r4, asl #1	@, tmp215, <variable>.filter, tmp212,
	str	r3, [r7, #28]	@ tmp208, <variable>.phase
	str	ip, [r7, #60]	@ tmp215, <variable>.lwingptr
	str	r3, [r7, #32]	@ tmp208, <variable>.offset
	str	r2, [r7, #64]	@ <variable>.filter, <variable>.rwingptr
	b	.L79	@
.L90:
	ldr	r1, [r3, #4]	@ <variable>.outrate, <variable>.outrate
	cmp	r1, r9	@ <variable>.outrate, D.2991
	bne	.L74	@,
	b	.L72	@
.L89:
	ldr	ip, [r3, #4]	@, <variable>.outrate
	ldr	r6, [fp, #-48]	@, %sfp
	cmp	ip, r6	@,
	bne	.L73	@,
	b	.L72	@
.L93:
	ldr	r2, [r1, #4]	@ <variable>.outrate, <variable>.outrate
	cmp	r2, r9	@ <variable>.outrate, D.2991
	bne	.L85	@,
	b	.L72	@
.L92:
	ldr	r6, [r1, #4]	@, <variable>.outrate
	ldr	lr, [fp, #-48]	@, %sfp
	cmp	r6, lr	@,
	bne	.L84	@,
	b	.L72	@
.L91:
	ldr	lr, [r3, #4]	@ <variable>.outrate, <variable>.outrate
	cmp	lr, r5	@ <variable>.outrate, outrate
	bne	.L83	@,
	b	.L72	@
.L78:
	ldr	lr, [r7, #52]	@ <variable>.histbuf32, <variable>.histbuf32
	add	r3, lr, ip, asl #2	@, tmp207, <variable>.histbuf32, nhist,
	str	r3, [r7, #56]	@ tmp207, <variable>.pcmbuf32
	b	.L77	@
.L94:
	ldr	r2, [r7, #52]	@ <variable>.histbuf32, <variable>.histbuf32
	add	sl, r2, sl, asl #3	@, tmp197, <variable>.histbuf32, tmp191,
	str	sl, [r7, #56]	@ tmp197, <variable>.pcmbuf32
	b	.L77	@
	.fnend
	.size	ResampleConfig, .-ResampleConfig
	.align	2
	.type	ResamplerStereoProcess24, %function
ResamplerStereoProcess24:
	.fnstart
.LFB46:
	@ args = 4, pretend = 0, frame = 48
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
	str	r0, [fp, #-72]	@ inst, %sfp
	ldr	ip, [fp, #-72]	@, %sfp
	ldr	r0, [r0, #56]	@ <variable>.pcmbuf32, <variable>.pcmbuf32
	str	r3, [fp, #-88]	@ outbuf, %sfp
	ldr	lr, [ip, #20]	@, <variable>.nwing
	ldr	r3, [ip, #40]	@ <variable>.bitwidth, <variable>.bitwidth
	str	lr, [fp, #-48]	@, %sfp
	ldr	lr, [ip, #28]	@, <variable>.phase
	ldr	ip, [fp, #-72]	@, %sfp
	str	lr, [fp, #-56]	@, %sfp
	ldr	lr, [ip, #72]	@, <variable>.nextphase
	ldr	ip, [fp, #4]	@ bInterleaved, bInterleaved
	str	lr, [fp, #-80]	@, %sfp
	mov	lr, #2	@ tmp201,
	stmia	sp, {ip, lr}	@ phole stm
	bl	cvt2int	@
	ldr	r2, [fp, #-72]	@, %sfp
	ldr	r3, [fp, #-48]	@, %sfp
	ldr	lr, [fp, #-72]	@, %sfp
	ldr	r1, [r2, #56]	@ <variable>.pcmbuf32, <variable>.pcmbuf32
	rsb	ip, r3, #1	@ tmp202,,
	ldr	r2, [r2, #32]	@ <variable>.offset, <variable>.offset
	add	ip, r1, ip, asl #3	@, pcmptr32, <variable>.pcmbuf32, tmp202,
	ldr	lr, [lr, #68]	@, <variable>.filter
	ldr	r3, [fp, #-72]	@, %sfp
	add	r2, ip, r2, asl #2	@, pcmptr32.336, pcmptr32, <variable>.offset,
	ldr	r1, [r3, #64]	@ rwingptr, <variable>.rwingptr
	ldr	r3, [r3, #60]	@ lwingptr, <variable>.lwingptr
	str	lr, [fp, #-60]	@, %sfp
	mov	r0, r0, asl #2	@,,
	str	r0, [fp, #-84]	@, %sfp
	add	ip, ip, r0	@, pcmptr32,
	str	ip, [fp, #-76]	@, %sfp
	cmp	ip, r2	@, pcmptr32.336
	movls	r4, #0	@ prephitmp.295,
	bls	.L97	@,
	ldr	r4, [fp, #-88]	@, %sfp
	movw	r0, #:lower16:8388607	@,
	movt	r0, #:upper16:8388607	@,
	str	r0, [fp, #-64]	@, %sfp
	str	r4, [fp, #-52]	@, %sfp
.L104:
	ldr	lr, [fp, #-48]	@, %sfp
	cmp	lr, #0	@,
	ble	.L98	@,
	sub	r7, lr, #1	@ tmp248,,
	ldr	r6, [r1, #0]	@ cx,* rwingptr
	ubfx	r7, r7, #1, #1	@ tmp249, tmp248,,
	ldr	lr, [r3, #0]	@ cy,* lwingptr
	ldr	r4, [r2, #-4]	@ tmp207,
	mov	r0, #0	@,
#APP
@ 714 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawb sl, r4, r6, r0	@ acc1, tmp207, cx,
@ 0 "" 2
	ldr	r8, [r2, #0]	@ tmp208,* pcmptr32.336
#APP
@ 714 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawb r5, r8, lr, r0	@ acc0.337, tmp208, cy,
@ 0 "" 2
	ldr	r0, [r2, #-8]	@ tmp209,
#APP
@ 714 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawb r8, r0, r6, r5	@ acc0.340, tmp209, cx, acc0.337
@ 0 "" 2
	ldr	ip, [r2, #4]	@ tmp210,
#APP
@ 714 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawb r4, ip, lr, sl	@ acc1.341, tmp210, cy, acc1
@ 0 "" 2
	ldr	r0, [r2, #-12]	@ tmp211,
#APP
@ 704 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawt r4, r0, r6, r4	@ acc1.344, tmp211, cx, acc1.341
@ 0 "" 2
	ldr	ip, [r2, #8]	@ tmp212,
#APP
@ 704 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawt r5, ip, lr, r8	@ acc0.345, tmp212, cy, acc0.340
@ 0 "" 2
	mov	r0, r2	@ ivtmp.322, pcmptr32.336
	ldr	r8, [r2, #12]	@ y.347,
	add	ip, r2, #16	@ pcmptr32.353, pcmptr32.336,
	ldr	sl, [r0, #-16]!	@ tmp213,
#APP
@ 704 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawt r5, sl, r6, r5	@ acc0, tmp213, cx, acc0.345
@ 0 "" 2
@ 704 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawt r4, r8, lr, r4	@ acc1.348, y.347, cy, acc1.344
@ 0 "" 2
	ldr	lr, [fp, #-48]	@, %sfp
	mov	sl, #2	@ i,
	cmp	lr, sl	@, i
	mov	lr, #4	@ ivtmp.310,
	ble	.L113	@,
	cmp	r7, #0	@ tmp249,
	beq	.L115	@,
	ldr	r7, [r1, lr]	@ cx,* ivtmp.310
	ldr	r6, [r3, lr]	@ cy,* ivtmp.310
	ldr	sl, [r0, #-4]	@ tmp300,
#APP
@ 714 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawb r4, sl, r7, r4	@ acc1, tmp300, cx, acc1.348
@ 0 "" 2
	ldr	r8, [ip, #0]	@ tmp302,* pcmptr32.353
#APP
@ 714 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawb r5, r8, r6, r5	@ acc0.337, tmp302, cy, acc0
@ 0 "" 2
	ldr	sl, [r0, #-8]	@ tmp304,
#APP
@ 714 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawb r5, sl, r7, r5	@ acc0.340, tmp304, cx, acc0.337
@ 0 "" 2
	ldr	r8, [ip, #4]	@ tmp306,
#APP
@ 714 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawb r4, r8, r6, r4	@ acc1.341, tmp306, cy, acc1
@ 0 "" 2
	ldr	sl, [r0, #-12]	@ tmp308,
#APP
@ 704 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawt r4, sl, r7, r4	@ acc1.344, tmp308, cx, acc1.341
@ 0 "" 2
	ldr	r8, [ip, #8]	@ tmp310,
#APP
@ 704 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawt r5, r8, r6, r5	@ acc0.345, tmp310, cy, acc0.340
@ 0 "" 2
	ldr	r8, [ip, #12]	@ y.347,
	add	ip, ip, #16	@ pcmptr32.353, pcmptr32.353,
	ldr	sl, [r0, #-16]!	@ tmp313,
#APP
@ 704 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawt r5, sl, r7, r5	@ acc0, tmp313, cx, acc0.345
@ 0 "" 2
@ 704 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawt r4, r8, r6, r4	@ acc1.348, y.347, cy, acc1.344
@ 0 "" 2
	mov	sl, lr	@ i, ivtmp.310
	ldr	lr, [fp, #-48]	@, %sfp
	cmp	lr, sl	@, i
	mov	lr, #8	@ ivtmp.310,
	ble	.L113	@,
.L115:
	str	r2, [fp, #-68]	@ pcmptr32.336, %sfp
.L99:
	ldr	r7, [r1, lr]	@ cx,* ivtmp.310
	ldr	r6, [r3, lr]	@ cy,* ivtmp.310
	ldr	r8, [r0, #-4]	@ tmp262,
#APP
@ 714 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawb r2, r8, r7, r4	@ acc1, tmp262, cx, acc1.348
@ 0 "" 2
	ldr	r9, [ip, #0]	@ tmp264,* pcmptr32.353
#APP
@ 714 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawb r5, r9, r6, r5	@ acc0.337, tmp264, cy, acc0
@ 0 "" 2
	ldr	r8, [r0, #-8]	@ tmp266,
#APP
@ 714 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawb r5, r8, r7, r5	@ acc0.340, tmp266, cx, acc0.337
@ 0 "" 2
	ldr	r9, [ip, #4]	@ tmp268,
#APP
@ 714 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawb r4, r9, r6, r2	@ acc1.341, tmp268, cy, acc1
@ 0 "" 2
	ldr	r8, [r0, #-12]	@ tmp270,
#APP
@ 704 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawt r4, r8, r7, r4	@ acc1.344, tmp270, cx, acc1.341
@ 0 "" 2
	ldr	r2, [ip, #8]	@ tmp272,
#APP
@ 704 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawt r8, r2, r6, r5	@ acc0.345, tmp272, cy, acc0.340
@ 0 "" 2
	ldr	r5, [ip, #12]	@ y.347,
	add	r2, ip, #16	@ tmp253, pcmptr32.353,
	ldr	r9, [r0, #-16]!	@ tmp276,
#APP
@ 704 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawt r7, r9, r7, r8	@ acc0, tmp276, cx, acc0.345
@ 0 "" 2
@ 704 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawt r6, r5, r6, r4	@ acc1.348, y.347, cy, acc1.344
@ 0 "" 2
	add	lr, lr, #4	@ tmp251, ivtmp.310,
	add	sl, sl, #2	@ tmp250, i,
	ldr	r4, [r0, #-4]	@ tmp284,
	ldr	r8, [r1, lr]	@ cx,
	ldr	r9, [r3, lr]	@ cy,
#APP
@ 714 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawb r6, r4, r8, r6	@ acc1, tmp284, cx, acc1.348
@ 0 "" 2
	ldr	r5, [ip, #16]	@ tmp286,
#APP
@ 714 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawb r7, r5, r9, r7	@ acc0.337, tmp286, cy, acc0
@ 0 "" 2
	ldr	ip, [r0, #-8]	@ tmp288,
#APP
@ 714 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawb r7, ip, r8, r7	@ acc0.340, tmp288, cx, acc0.337
@ 0 "" 2
	ldr	r4, [r2, #4]	@ tmp290,
#APP
@ 714 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawb r5, r4, r9, r6	@ acc1.341, tmp290, cy, acc1
@ 0 "" 2
	ldr	ip, [r0, #-12]	@ tmp292,
#APP
@ 704 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawt r4, ip, r8, r5	@ acc1.344, tmp292, cx, acc1.341
@ 0 "" 2
	ldr	r6, [r2, #8]	@ tmp294,
#APP
@ 704 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawt r5, r6, r9, r7	@ acc0.345, tmp294, cy, acc0.340
@ 0 "" 2
	add	ip, r2, #16	@ pcmptr32.353, tmp253,
	ldr	r6, [r0, #-16]!	@ tmp297,
	ldr	r2, [r2, #12]	@ y.347,
#APP
@ 704 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawt r5, r6, r8, r5	@ acc0, tmp297, cx, acc0.345
@ 0 "" 2
@ 704 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawt r4, r2, r9, r4	@ acc1.348, y.347, cy, acc1.344
@ 0 "" 2
	ldr	r2, [fp, #-48]	@, %sfp
	add	sl, sl, #2	@ i, tmp250,
	add	lr, lr, #4	@ ivtmp.310, tmp251,
	cmp	r2, sl	@, i
	bgt	.L99	@,
	ldr	r2, [fp, #-68]	@ pcmptr32.336, %sfp
.L113:
	add	r5, r5, #64	@ D.3499, acc0,
	add	lr, r4, #64	@ tmp216, acc1.348,
	mov	r3, r5, asr #31	@ sign, D.3499,
	mov	r1, r5, asr #7	@ acc0.349, D.3499,
	cmp	r3, r5, asr #30	@ sign, D.3499,
	mov	r0, lr, asr #7	@ prephitmp.360, tmp219,
	moveq	r3, r1, asl #8	@ prephitmp.297, acc0.349,
	movne	r1, lr, asr #30	@ prephitmp.362, tmp219,
	ldrne	ip, [fp, #-64]	@, %sfp
	moveq	r1, lr, asr #30	@ prephitmp.362, tmp216,
	mov	r4, lr, asr #31	@ prephitmp.361, tmp219,
	eorne	r3, r3, ip	@ tmp217, sign,
	movne	r3, r3, asl #8	@ prephitmp.297, tmp217,
.L101:
	ldr	ip, [fp, #-52]	@, %sfp
	cmp	r4, r1	@ prephitmp.361, prephitmp.362
	biceq	r4, r0, #-16777216	@ acc1.351, prephitmp.360,
	str	r3, [ip, #0]	@ prephitmp.297,
	ldrne	r0, [fp, #-64]	@, %sfp
	ldr	r1, [fp, #-52]	@, %sfp
	eorne	r4, r4, r0	@ acc1.351, prephitmp.361,
	mov	r3, r4, asl #8	@ tmp221, acc1.351,
	str	r3, [r1, #4]	@ tmp221,
	ldr	r0, [fp, #-56]	@, %sfp
	add	r4, r1, #8	@,,
	ldr	lr, [fp, #-80]	@, %sfp
	ldr	ip, [lr, r0, asl #2]	@ phase.352,
	ldr	lr, [fp, #-48]	@, %sfp
	ubfx	r0, ip, #8, #12	@ tmp224, phase.352,,
	and	r1, ip, #255	@ tmp231, phase.352,
	str	r4, [fp, #-52]	@, %sfp
	mov	r4, ip, lsr #20	@ tmp228, phase.352,
	mov	r3, ip, asr #20	@, phase.352,
	add	r2, r2, r1, asl #2	@, pcmptr32.336, pcmptr32.336, tmp231,
	str	r3, [fp, #-56]	@, %sfp
	mul	r1, lr, r4	@ tmp229,, tmp228
	ldr	ip, [fp, #-76]	@, %sfp
	mul	r3, lr, r0	@ tmp226,, tmp224
	cmp	ip, r2	@, pcmptr32.336
	ldr	r0, [fp, #-60]	@, %sfp
	add	r1, r0, r1, asl #1	@, rwingptr,, tmp229,
	add	r3, r0, r3, asl #1	@, lwingptr,, tmp226,
	bhi	.L104	@,
	ldr	lr, [fp, #-52]	@, %sfp
	ldr	ip, [fp, #-88]	@, %sfp
	rsb	r0, ip, lr	@ pretmp.356,,
	mov	r4, r0, asr #2	@ tmp234, pretmp.356,
	add	r2, r4, r4, lsr #31	@, tmp236, tmp234, tmp234,
	mov	r4, r2, asr #1	@ prephitmp.295, tmp236,
.L97:
	ldr	lr, [fp, #-72]	@, %sfp
	ldr	ip, [fp, #-56]	@, %sfp
	ldr	r2, [lr, #24]	@ <variable>.nhist, <variable>.nhist
	str	ip, [lr, #28]	@, <variable>.phase
	mov	ip, #0	@ tmp238,
	str	r1, [lr, #64]	@ rwingptr, <variable>.rwingptr
	str	ip, [lr, #32]	@ tmp238, <variable>.offset
	mov	r2, r2, asl #2	@, <variable>.nhist,
	str	r3, [lr, #60]	@ lwingptr, <variable>.lwingptr
	ldr	r0, [lr, #52]	@ D.2828, <variable>.histbuf32
	ldr	r3, [fp, #-84]	@, %sfp
	add	r1, r0, r3	@,,
	bl	memmove	@
	mov	r0, r4	@, prephitmp.295
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L98:
	mov	r1, #0	@ prephitmp.362,
	mov	r4, r1	@ prephitmp.361, prephitmp.362
	mov	r0, r1	@ prephitmp.360, prephitmp.362
	mov	r3, r1	@ prephitmp.297, prephitmp.362
	b	.L101	@
	.fnend
	.size	ResamplerStereoProcess24, .-ResamplerStereoProcess24
	.align	2
	.type	ResamplerMonoProcess24, %function
ResamplerMonoProcess24:
	.fnstart
.LFB47:
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
	str	r0, [fp, #-56]	@ inst, %sfp
	ldr	r4, [fp, #-56]	@, %sfp
	mov	ip, #1	@ tmp190,
	str	r3, [fp, #-92]	@ outbuf, %sfp
	ldr	r0, [r0, #56]	@ <variable>.pcmbuf32, <variable>.pcmbuf32
	ldr	r5, [r4, #20]	@, <variable>.nwing
	ldr	r3, [r4, #40]	@ <variable>.bitwidth, <variable>.bitwidth
	str	r5, [fp, #-48]	@, %sfp
	ldr	lr, [r4, #28]	@, <variable>.phase
	str	lr, [fp, #-60]	@, %sfp
	ldr	r4, [r4, #72]	@, <variable>.nextphase
	str	ip, [sp, #4]	@ tmp190,
	str	ip, [sp, #0]	@ tmp190,
	str	r4, [fp, #-72]	@, %sfp
	bl	cvt2int	@
	rsb	r1, r5, #1	@ tmp192,,
	ldr	r5, [fp, #-56]	@, %sfp
	ldr	r3, [r5, #56]	@ <variable>.pcmbuf32, <variable>.pcmbuf32
	ldr	ip, [r5, #32]	@ <variable>.offset, <variable>.offset
	add	r2, r3, r1, asl #2	@, pcmptr32, <variable>.pcmbuf32, tmp192,
	ldr	r1, [r5, #64]	@ rwingptr, <variable>.rwingptr
	ldr	r3, [r5, #60]	@ lwingptr, <variable>.lwingptr
	add	ip, r2, ip, asl #2	@, pcmptr32.454, pcmptr32, <variable>.offset,
	mov	r0, r0, asl #2	@,,
	str	r0, [fp, #-88]	@, %sfp
	add	r2, r2, r0	@, pcmptr32,
	str	r2, [fp, #-68]	@, %sfp
	cmp	r2, ip	@, pcmptr32.454
	movls	r4, #0	@ prephitmp.418,
	bls	.L118	@,
	ldr	r5, [fp, #-92]	@, %sfp
	movw	r0, #:lower16:8388607	@,
	movw	r4, #:lower16:131071	@,
	movt	r0, #:upper16:8388607	@,
	movt	r4, #:upper16:131071	@,
	str	r0, [fp, #-76]	@, %sfp
	add	r2, r5, #4	@,,
	movw	r0, #:lower16:524287	@,
	str	r4, [fp, #-80]	@, %sfp
	movt	r0, #:upper16:524287	@,
	str	r2, [fp, #-52]	@, %sfp
	str	r0, [fp, #-84]	@, %sfp
.L133:
	ldr	r5, [fp, #-48]	@, %sfp
	cmp	r5, #0	@,
	movle	r5, #0	@ prephitmp.469,
	ble	.L120	@,
	ldr	r2, [fp, #-48]	@, %sfp
	mov	r0, #0	@,
	ldr	r4, [r1, #0]	@ cx,* rwingptr
	sub	r7, r2, #1	@ tmp242,,
	ldr	lr, [r3, #0]	@ cy,* lwingptr
	ubfx	r7, r7, #1, #1	@ tmp243, tmp242,,
	ldr	sl, [ip, #-4]	@ tmp197,
#APP
@ 714 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawb r6, sl, r4, r0	@ acc0.464, tmp197, cx,
@ 0 "" 2
	ldr	r8, [ip, #0]	@ tmp198,* pcmptr32.454
#APP
@ 714 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawb r5, r8, lr, r0	@ acc1, tmp198, cy,
@ 0 "" 2
	mov	r2, ip	@ ivtmp.443, pcmptr32.454
	ldr	sl, [ip, #4]	@ y.456,
	add	r0, ip, #8	@ yptr32, pcmptr32.454,
	ldr	r8, [r2, #-8]!	@ tmp199,
#APP
@ 704 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawt r6, r8, r4, r6	@ acc0.465, tmp199, cx, acc0.464
@ 0 "" 2
@ 704 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawt r5, sl, lr, r5	@ acc1.466, y.456, cy, acc1
@ 0 "" 2
	ldr	lr, [fp, #-48]	@, %sfp
	mov	r4, #2	@ i,
	cmp	lr, r4	@, i
	mov	lr, #4	@ ivtmp.431,
	ble	.L142	@,
	cmp	r7, #0	@ tmp243,
	beq	.L144	@,
	ldr	r7, [r1, lr]	@ cx,* ivtmp.431
	ldr	r4, [r3, lr]	@ cy,* ivtmp.431
	ldr	sl, [r2, #-4]	@ tmp278,
#APP
@ 714 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawb r6, sl, r7, r6	@ acc0.464, tmp278, cx, acc0.465
@ 0 "" 2
	ldr	r8, [r0, #0]	@ tmp280,* yptr32
#APP
@ 714 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawb r5, r8, r4, r5	@ acc1, tmp280, cy, acc1.466
@ 0 "" 2
	ldr	r8, [r0, #4]	@ y.456,
	add	r0, r0, #8	@ yptr32, yptr32,
	ldr	sl, [r2, #-8]!	@ tmp283,
#APP
@ 704 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawt r6, sl, r7, r6	@ acc0.465, tmp283, cx, acc0.464
@ 0 "" 2
@ 704 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawt r5, r8, r4, r5	@ acc1.466, y.456, cy, acc1
@ 0 "" 2
	mov	r4, lr	@ i, ivtmp.431
	ldr	lr, [fp, #-48]	@, %sfp
	cmp	lr, r4	@, i
	mov	lr, #8	@ ivtmp.431,
	ble	.L142	@,
.L144:
	str	ip, [fp, #-64]	@ pcmptr32.454, %sfp
.L121:
	ldr	r8, [r1, lr]	@ cx,* ivtmp.431
	ldr	r7, [r3, lr]	@ cy,* ivtmp.431
	ldr	sl, [r2, #-4]	@ tmp256,
#APP
@ 714 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawb r6, sl, r8, r6	@ acc0.464, tmp256, cx, acc0.465
@ 0 "" 2
	ldr	ip, [r0, #0]	@ tmp258,* yptr32
#APP
@ 714 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawb r5, ip, r7, r5	@ acc1, tmp258, cy, acc1.466
@ 0 "" 2
	ldr	sl, [r0, #4]	@ y.456,
	add	ip, r0, #8	@ tmp246, yptr32,
	ldr	r9, [r2, #-8]!	@ tmp262,
#APP
@ 704 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawt r8, r9, r8, r6	@ acc0.465, tmp262, cx, acc0.464
@ 0 "" 2
@ 704 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawt r7, sl, r7, r5	@ acc1.466, y.456, cy, acc1
@ 0 "" 2
	add	lr, lr, #4	@ tmp244, ivtmp.431,
	add	r4, r4, #2	@ tmp247, i,
	ldr	r6, [r2, #-4]	@ tmp270,
	ldr	sl, [r1, lr]	@ cx,
	ldr	r9, [r3, lr]	@ cy,
#APP
@ 714 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawb r8, r6, sl, r8	@ acc0.464, tmp270, cx, acc0.465
@ 0 "" 2
	ldr	r5, [r0, #8]	@ tmp272,
#APP
@ 714 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawb r7, r5, r9, r7	@ acc1, tmp272, cy, acc1.466
@ 0 "" 2
	add	r0, ip, #8	@ yptr32, tmp246,
	ldr	r5, [ip, #4]	@ y.456,
	ldr	r6, [r2, #-8]!	@ tmp275,
#APP
@ 704 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawt r6, r6, sl, r8	@ acc0.465, tmp275, cx, acc0.464
@ 0 "" 2
@ 704 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawt r5, r5, r9, r7	@ acc1.466, y.456, cy, acc1
@ 0 "" 2
	ldr	ip, [fp, #-48]	@, %sfp
	add	r4, r4, #2	@ i, tmp247,
	add	lr, lr, #4	@ ivtmp.431, tmp244,
	cmp	ip, r4	@, i
	bgt	.L121	@,
	ldr	ip, [fp, #-64]	@ pcmptr32.454, %sfp
.L142:
	add	r5, r5, r6	@ prephitmp.469, acc1.466, acc0.465
.L120:
	ldr	r1, [fp, #-56]	@, %sfp
	ldr	r2, [r1, #40]	@ temp.457, <variable>.bitwidth
	cmp	r2, #16	@ temp.457,
	beq	.L145	@,
	cmp	r2, #18	@ temp.457,
	beq	.L146	@,
	cmp	r2, #20	@ temp.457,
	beq	.L147	@,
	add	r5, r5, #64	@ acc0.460, prephitmp.469,
	mov	r3, r5, asr #31	@ sign, acc0.460,
	mov	r2, r5, asr #7	@ acc0.461, acc0.460,
	cmp	r3, r5, asr #30	@ sign, acc0.460,
	biceq	r3, r2, #-16777216	@ acc0.451, acc0.461,
	ldrne	r0, [fp, #-76]	@, %sfp
	eorne	r3, r3, r0	@ acc0.451, sign,
	ldr	r0, [fp, #-52]	@ outptr, %sfp
	str	r3, [r0, #-4]	@ acc0.451,
.L124:
	ldr	lr, [fp, #-60]	@, %sfp
	ldr	r3, [fp, #-72]	@, %sfp
	ldr	r5, [fp, #-52]	@, %sfp
	ldr	r1, [fp, #-56]	@, %sfp
	ldr	r4, [r3, lr, asl #2]	@ phase.462,
	add	r2, r5, #4	@,,
	ldr	r5, [fp, #-48]	@, %sfp
	ubfx	lr, r4, #1, #7	@ tmp216, phase.462,,
	ubfx	r3, r4, #8, #12	@ tmp219, phase.462,,
	str	r2, [fp, #-52]	@, %sfp
	ldr	r2, [r1, #68]	@ D.2924, <variable>.filter
	mov	r1, r4, lsr #20	@ tmp223, phase.462,
	add	ip, ip, lr, asl #2	@, pcmptr32.454, pcmptr32.454, tmp216,
	mov	r4, r4, asr #20	@, phase.462,
	mul	r3, r5, r3	@ tmp221,, tmp219
	str	r4, [fp, #-60]	@, %sfp
	mul	lr, r5, r1	@ tmp224,, tmp223
	ldr	r4, [fp, #-68]	@, %sfp
	cmp	r4, ip	@, pcmptr32.454
	add	r3, r2, r3, asl #1	@, lwingptr, D.2924, tmp221,
	add	r1, r2, lr, asl #1	@, rwingptr, D.2924, tmp224,
	bhi	.L133	@,
	ldr	r4, [fp, #-92]	@, %sfp
	rsb	r0, r4, r0	@ tmp226,, outptr
	mov	r4, r0, asr #2	@ prephitmp.418, tmp226,
.L118:
	ldr	r5, [fp, #-68]	@, %sfp
	ldr	r0, [fp, #-56]	@, %sfp
	ldr	lr, [fp, #-60]	@, %sfp
	rsb	ip, r5, ip	@ tmp228,, pcmptr32.454
	ldr	r5, [fp, #-56]	@, %sfp
	ldr	r2, [r0, #24]	@ <variable>.nhist, <variable>.nhist
	ldr	r0, [r0, #52]	@ D.2941, <variable>.histbuf32
	str	lr, [r5, #28]	@, <variable>.phase
	mov	lr, ip, asr #2	@ tmp229, tmp228,
	str	r1, [r5, #64]	@ rwingptr, <variable>.rwingptr
	mov	r2, r2, asl #2	@, <variable>.nhist,
	str	lr, [r5, #32]	@ tmp229, <variable>.offset
	str	r3, [r5, #60]	@ lwingptr, <variable>.lwingptr
	ldr	ip, [fp, #-88]	@, %sfp
	add	r1, r0, ip	@,,
	bl	memmove	@
	mov	r0, r4	@, prephitmp.418
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L145:
	add	r4, r5, #16384	@ tmp200, prephitmp.469,
	mov	r2, r4, asr #31	@ sign, tmp200,
	mov	lr, r4, asr #15	@ x, tmp200,
	cmp	r2, r4, asr #30	@ sign, tmp200,
	movwne	r0, #32767	@,
	eorne	lr, r2, r0	@ x, sign,
	ldr	r0, [fp, #-52]	@, %sfp
	sxth	r3, lr	@ x, x
	str	r3, [r0, #-4]	@ x,
	ldr	r0, [fp, #-52]	@ outptr, %sfp
	b	.L124	@
.L146:
	add	r3, r5, #4096	@ tmp204, prephitmp.469,
	ldr	r5, [fp, #-52]	@, %sfp
	mov	r1, r3, asr #31	@ sign, tmp204,
	mov	r0, r3, asr #13	@ acc0.458, tmp204,
	cmp	r1, r3, asr #30	@ sign, tmp204,
	biceq	r1, r0, #-16777216	@ acc0, acc0.458,
	ldrne	r0, [fp, #-80]	@, %sfp
	biceq	r1, r1, #16515072	@ acc0, acc0,
	eorne	r1, r1, r0	@ acc0, sign,
	str	r1, [r5, #-4]	@ acc0,
	ldr	r0, [fp, #-52]	@ outptr, %sfp
	b	.L124	@
.L147:
	add	r1, r5, #1024	@ tmp208, prephitmp.469,
	ldr	lr, [fp, #-52]	@, %sfp
	mov	r2, r1, asr #31	@ sign, tmp208,
	mov	r4, r1, asr #11	@ acc0.459, tmp208,
	cmp	r2, r1, asr #30	@ sign, tmp208,
	biceq	r2, r4, #-16777216	@ acc0.450, acc0.459,
	ldrne	r5, [fp, #-84]	@, %sfp
	biceq	r2, r2, #15728640	@ acc0.450, acc0.450,
	eorne	r2, r2, r5	@ acc0.450, sign,
	str	r2, [lr, #-4]	@ acc0.450,
	ldr	r0, [fp, #-52]	@ outptr, %sfp
	b	.L124	@
	.fnend
	.size	ResamplerMonoProcess24, .-ResamplerMonoProcess24
	.global	__aeabi_idivmod
	.align	2
	.global	ResamplerGetMinInputNum
	.type	ResamplerGetMinInputNum, %function
ResamplerGetMinInputNum:
	.fnstart
.LFB59:
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
	subs	r4, r0, #0	@ inst, inst
	mov	r0, r1	@ OutSamps, OutSamps
	ldmeqfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	ldr	r3, [r4, #80]	@ <variable>.isLinearMode, <variable>.isLinearMode
	cmp	r3, #0	@ <variable>.isLinearMode,
	bne	.L150	@,
	ldr	r7, [r4, #8]	@ <variable>.inrate, <variable>.inrate
	ldr	r6, [r4, #12]	@ D.3552, <variable>.outrate
	mul	r7, r7, r1	@ D.3553, <variable>.inrate, OutSamps
	mov	r1, r6	@, D.3552
	mov	r0, r7	@, D.3553
	bl	__aeabi_idiv	@
	mov	r1, r6	@, D.3552
	mov	r5, r0	@ OutSamps,
	mov	r0, r7	@, D.3553
	bl	__aeabi_idivmod	@
	ldr	r2, [r4, #16]	@ <variable>.nchans, <variable>.nchans
	cmp	r1, #0	@,
	addne	r5, r5, #1	@ OutSamps, OutSamps,
	mul	r1, r2, r5	@ tmp150, <variable>.nchans, OutSamps
	tst	r1, #1	@ tmp150,
	addne	r5, r5, #1	@ OutSamps, OutSamps,
	cmp	r5, #2048	@ OutSamps,
	movle	r0, r5	@ OutSamps, OutSamps
	movgt	r0, #-2147483645	@ OutSamps,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L150:
	ldr	r0, [r4, #84]	@, <variable>.hLSRC
	bl	LSRC_GetMinInputNum	@
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	ResamplerGetMinInputNum, .-ResamplerGetMinInputNum
	.align	2
	.global	ResamplerGetMaxOutputNum
	.type	ResamplerGetMaxOutputNum, %function
ResamplerGetMaxOutputNum:
	.fnstart
.LFB58:
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
	cmp	r0, #0	@ inst
	mov	r3, r1	@ insamps, insamps
	moveq	r0, #-2147483647	@ outsamps,
	ldmeqfd	sp, {fp, sp, pc}	@
	ldr	r2, [r0, #80]	@ <variable>.isLinearMode, <variable>.isLinearMode
	cmp	r2, #0	@ <variable>.isLinearMode,
	bne	.L157	@,
	cmp	r1, #2048	@ insamps,
	bgt	.L158	@,
	tst	r1, #1	@ insamps,
	bne	.L158	@,
	ldr	r1, [r0, #16]	@ <variable>.nchans, <variable>.nchans
	ldr	lr, [r0, #12]	@ <variable>.outrate, <variable>.outrate
	sub	ip, r1, #1	@ tmp140, <variable>.nchans,
	ldr	r1, [r0, #8]	@, <variable>.inrate
	add	r3, ip, r3	@ tmp142, tmp140, insamps
	mul	r0, lr, r3	@, <variable>.outrate, tmp142
	bl	__aeabi_idiv	@
	add	r0, r0, #1	@ outsamps,,
	ldmfd	sp, {fp, sp, pc}	@
.L158:
	mov	r0, #-2147483645	@ outsamps,
	ldmfd	sp, {fp, sp, pc}	@
.L157:
	ldr	r0, [r0, #84]	@, <variable>.hLSRC
	bl	LSRC_GetMaxOutputNum	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	ResamplerGetMaxOutputNum, .-ResamplerGetMaxOutputNum
	.align	2
	.global	ResamplerProcessFrame
	.type	ResamplerProcessFrame, %function
ResamplerProcessFrame:
	.fnstart
.LFB60:
	@ args = 12, pretend = 0, frame = 40
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
	subs	r4, r0, #0	@ inst, inst
	mov	r5, r1	@ inbuf, inbuf
	mov	r7, r2	@ pOutpcm, pOutpcm
	mov	r6, r3	@ insamps, insamps
	ldr	ip, [fp, #4]	@ inrate, inrate
	ldr	sl, [fp, #8]	@ outrate, outrate
	moveq	r0, #-2147483647	@ nsamps,
	ldr	r8, [fp, #12]	@ bInterleaved, bInterleaved
	beq	.L162	@,
	ldr	r0, [r4, #80]	@ <variable>.isLinearMode, <variable>.isLinearMode
	cmp	r0, #0	@ <variable>.isLinearMode,
	beq	.L194	@,
	ldr	r0, [r4, #84]	@, <variable>.hLSRC
	bl	LSRC_ProcessFrame	@
.L162:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L194:
	cmp	r1, #0	@ inbuf,
	bne	.L164	@,
.L193:
	mov	r0, #-2147483646	@ nsamps,
	b	.L162	@
.L164:
	cmp	r3, #2048	@ insamps,
	ble	.L195	@,
.L165:
	mov	r0, #-2147483645	@ nsamps,
	b	.L162	@
.L195:
	tst	r3, #1	@ insamps,
	bne	.L165	@,
	cmp	r2, #0	@ pOutpcm,
	beq	.L193	@,
	ldr	r3, [r4, #8]	@ <variable>.inrate, <variable>.inrate
	cmp	ip, r3	@ inrate, <variable>.inrate
	bne	.L167	@,
	ldr	r1, [r4, #12]	@ <variable>.outrate, <variable>.outrate
	cmp	sl, r1	@ outrate, <variable>.outrate
	beq	.L168	@,
.L167:
	mov	r1, ip	@, inrate
	mov	r2, sl	@, outrate
	mov	r0, r4	@, inst
	bl	ResampleConfig	@
.L168:
	mov	r0, r4	@, inst
	mov	r1, r6	@, insamps
	bl	ResamplerGetMaxOutputNum	@
	cmp	r0, #0	@ maxout
	blt	.L196	@,
	ldr	r0, [r4, #16]	@ D.4190, <variable>.nchans
	cmp	r0, #2	@ D.4190,
	bne	.L172	@,
	ldr	r3, [r4, #40]	@ D.4189, <variable>.bitwidth
	cmp	r3, #16	@ D.4189,
	beq	.L197	@,
	cmp	r3, #24	@ D.4189,
	cmpne	r3, #20	@, D.4189,
	bne	.L198	@,
.L181:
	mov	r0, r4	@, inst
	mov	r1, r5	@, inbuf
	mov	r2, r6	@, insamps
	mov	r3, r7	@, pOutpcm
	str	r8, [sp, #0]	@ bInterleaved,
	bl	ResamplerStereoProcess24	@
	b	.L162	@
.L196:
	cmp	r0, #-2147483647	@ maxout,
	beq	.L162	@,
	cmp	r0, #-2147483645	@ maxout,
	moveq	r0, #-2147483645	@ nsamps,
	movne	r0, #-2147483640	@ nsamps,
	b	.L162	@
.L198:
	cmp	r3, #18	@ D.4189,
	beq	.L181	@,
.L192:
	mov	r0, #-2147483642	@ nsamps,
	b	.L162	@
.L197:
	ldr	r2, [r4, #76]	@ <variable>.isForec2Out32bit, <variable>.isForec2Out32bit
	cmp	r2, #0	@ <variable>.isForec2Out32bit,
	bne	.L181	@,
	mov	r1, r5	@, inbuf
	ldr	r5, [r4, #28]	@, <variable>.phase
	mov	r2, r6	@, insamps
	ldr	r6, [r4, #20]	@ nwing, <variable>.nwing
	mov	r3, r8	@, bInterleaved
	str	r5, [fp, #-56]	@, %sfp
	mov	r5, r7	@ outptr.618, pOutpcm
	ldr	lr, [r4, #72]	@, <variable>.nextphase
	str	r0, [sp, #0]	@ D.4190,
	str	lr, [fp, #-72]	@, %sfp
	ldr	r0, [r4, #48]	@, <variable>.pcmbuf
	bl	cvtShortShort	@
	ldr	r3, [r4, #48]	@ <variable>.pcmbuf, <variable>.pcmbuf
	ldr	r1, [r4, #32]	@ <variable>.offset, <variable>.offset
	rsb	ip, r6, #1	@ tmp222, nwing,
	add	r2, r3, ip, asl #2	@, pcmptr.620, <variable>.pcmbuf, tmp222,
	ldr	ip, [r4, #64]	@ rwingptr, <variable>.rwingptr
	add	r1, r2, r1, asl #1	@, pcmptr, pcmptr.620, <variable>.offset,
	ldr	r3, [r4, #60]	@ lwingptr, <variable>.lwingptr
	str	r7, [fp, #-76]	@ pOutpcm, %sfp
	mov	r0, r0, asl #1	@,,
	str	r0, [fp, #-64]	@, %sfp
	add	r9, r2, r0	@, pcmptr.620,
	str	r9, [fp, #-68]	@, %sfp
.L175:
	ldr	r9, [fp, #-68]	@, %sfp
	cmp	r9, r1	@, pcmptr
	bls	.L199	@,
	mov	r2, #0	@ ivtmp.545,
	mov	r0, r1	@ ivtmp.556, pcmptr
	mov	r9, r1	@ ivtmp.642, pcmptr
	mov	sl, r2	@ i, ivtmp.545
	str	r2, [fp, #-48]	@ ivtmp.545, %sfp
	mov	r8, r2	@ acc0.621, ivtmp.545
	str	r1, [fp, #-80]	@ pcmptr, %sfp
	str	r4, [fp, #-84]	@ inst, %sfp
	b	.L176	@
.L177:
	ldr	r7, [ip, r2]	@ cx,* ivtmp.545
	ldr	lr, [r3, r2]	@ cy,* ivtmp.545
	ldr	r1, [r9, #-4]	@,
#APP
@ 808 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlabb r8, r1, r7, r8	@ acc0,, cx, acc0.621
@ 0 "" 2
	ldr	r4, [fp, #-48]	@, %sfp
#APP
@ 828 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlatb r4, r1, r7, r4	@,, cx,
@ 0 "" 2
	str	r4, [fp, #-48]	@, %sfp
	ldr	r1, [r0, #-8]	@,
#APP
@ 808 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlabb r1, r1, lr, r8	@,, cy, acc0
@ 0 "" 2
	str	r1, [fp, #-52]	@, %sfp
	ldr	r1, [r0, #-8]	@,
#APP
@ 828 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlatb r4, r1, lr, r4	@,, cy,
@ 0 "" 2
	str	r4, [fp, #-60]	@, %sfp
	ldr	r4, [fp, #-52]	@, %sfp
	ldr	r8, [r9, #-8]!	@ x.625,
#APP
@ 818 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlabt r4, r8, r7, r4	@, x.625, cx,
@ 0 "" 2
	str	r4, [fp, #-52]	@, %sfp
	ldr	r1, [fp, #-60]	@, %sfp
#APP
@ 838 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlatt r7, r8, r7, r1	@ acc1.628, x.625, cx,
@ 0 "" 2
	ldr	r1, [r0, #-4]	@,
#APP
@ 818 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlabt r8, r1, lr, r4	@ acc0.621,, cy,
@ 0 "" 2
@ 838 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlatt r4, r1, lr, r7	@,, cy, acc1.628
@ 0 "" 2
	add	sl, sl, #2	@ i, i,
	add	r2, r2, #4	@ ivtmp.545, ivtmp.545,
	str	r4, [fp, #-48]	@, %sfp
.L176:
	cmp	r6, sl	@ nwing, i
	add	r0, r0, #8	@ ivtmp.556, ivtmp.556,
	bgt	.L177	@,
	ldr	ip, [fp, #-48]	@, %sfp
	add	r8, r8, #16384	@ tmp227, acc0.621,
	ldr	r1, [fp, #-80]	@ pcmptr, %sfp
	add	r3, ip, #16384	@ tmp230,,
	mov	r2, r8, asr #31	@ sign, tmp227,
	cmp	r2, r8, asr #30	@ sign, tmp227,
	mov	r0, r8, asr #15	@ x, tmp227,
	mov	r7, r3, asr #31	@ sign, tmp230,
	ldr	r4, [fp, #-84]	@ inst, %sfp
	movwne	r9, #32767	@,
	eorne	r0, r2, r9	@ x, sign,
	cmp	r7, r3, asr #30	@ sign, tmp230,
	strh	r0, [r5, #0]	@ movhi	@ x,* outptr.618
	mov	r2, r3, asr #15	@ x, tmp230,
	movwne	lr, #32767	@,
	eorne	r2, r7, lr	@ x, sign,
	strh	r2, [r5, #2]	@ movhi	@ x,
	add	r5, r5, #4	@ outptr.618, outptr.618,
	ldr	lr, [fp, #-56]	@, %sfp
	ldr	r0, [fp, #-72]	@, %sfp
	ldr	r7, [r0, lr, asl #2]	@ phase.629,
	ldr	r0, [r4, #68]	@ D.4253, <variable>.filter
	ubfx	r9, r7, #8, #12	@ tmp239, phase.629,,
	mov	ip, r7, lsr #20	@ tmp243, phase.629,
	uxtb	lr, r7	@ tmp236, phase.629
	mul	r3, r6, r9	@ tmp241, nwing, tmp239
	mov	r2, r7, asr #20	@, phase.629,
	mul	r9, r6, ip	@ tmp244, nwing, tmp243
	add	r1, r1, lr, asl #1	@, pcmptr, pcmptr, tmp236,
	str	r2, [fp, #-56]	@, %sfp
	add	r3, r0, r3, asl #1	@, lwingptr, D.4253, tmp241,
	add	ip, r0, r9, asl #1	@, rwingptr, D.4253, tmp244,
	b	.L175	@
.L172:
	cmp	r0, #1	@ D.4190,
	movne	r0, #-2147483643	@ nsamps,
	bne	.L162	@,
	ldr	r3, [r4, #40]	@ temp.615, <variable>.bitwidth
	cmp	r3, #16	@ temp.615,
	beq	.L200	@,
	cmp	r3, #24	@ temp.615,
	cmpne	r3, #20	@, temp.615,
	bne	.L201	@,
.L190:
	mov	r0, r4	@, inst
	mov	r1, r5	@, inbuf
	mov	r2, r6	@, insamps
	mov	r3, r7	@, pOutpcm
	bl	ResamplerMonoProcess24	@
	b	.L162	@
.L199:
	ldr	lr, [fp, #-56]	@, %sfp
	rsb	r1, r9, r1	@ tmp246,, pcmptr
	ldr	r7, [fp, #-76]	@ pOutpcm, %sfp
	ldr	r2, [r4, #24]	@ <variable>.nhist, <variable>.nhist
	mov	r1, r1, asr #1	@ tmp247, tmp246,
	str	r3, [r4, #60]	@ lwingptr, <variable>.lwingptr
	str	r1, [r4, #32]	@ tmp247, <variable>.offset
	str	lr, [r4, #28]	@, <variable>.phase
	mov	r2, r2, asl #1	@, <variable>.nhist,
	str	ip, [r4, #64]	@ rwingptr, <variable>.rwingptr
	ldr	r0, [r4, #44]	@ D.4236, <variable>.histbuf
	ldr	lr, [fp, #-64]	@, %sfp
	add	r1, r0, lr	@,,
	bl	memmove	@
	rsb	r0, r7, r5	@ tmp251, pOutpcm, outptr.618
	mov	r3, r0, asr #1	@ tmp253, tmp251,
	add	r1, r3, r3, lsr #31	@, tmp255, tmp253, tmp253,
	mov	r0, r1, asr #1	@ nsamps, tmp255,
	b	.L162	@
.L201:
	cmp	r3, #18	@ temp.615,
	bne	.L192	@,
	b	.L190	@
.L200:
	ldr	ip, [r4, #76]	@ <variable>.isForec2Out32bit, <variable>.isForec2Out32bit
	cmp	ip, #0	@ <variable>.isForec2Out32bit,
	bne	.L190	@,
	ldr	r9, [r4, #28]	@, <variable>.phase
	mov	r1, r5	@, inbuf
	ldr	r5, [r4, #20]	@ nwing, <variable>.nwing
	mov	r2, r6	@, insamps
	str	r7, [fp, #-48]	@ pOutpcm, %sfp
	mov	r3, r8	@, bInterleaved
	str	r9, [fp, #-56]	@, %sfp
	ldr	lr, [r4, #72]	@, <variable>.nextphase
	str	r0, [sp, #0]	@ D.4190,
	str	lr, [fp, #-76]	@, %sfp
	ldr	r0, [r4, #48]	@, <variable>.pcmbuf
	bl	cvtShortShort	@
	ldr	r3, [r4, #48]	@ <variable>.pcmbuf, <variable>.pcmbuf
	ldr	r1, [r4, #32]	@ <variable>.offset, <variable>.offset
	rsb	ip, r5, #1	@ tmp266, nwing,
	add	r2, r3, ip, asl #1	@, pcmptr, <variable>.pcmbuf, tmp266,
	ldr	ip, [r4, #64]	@ rwingptr, <variable>.rwingptr
	ldr	r3, [r4, #60]	@ lwingptr, <variable>.lwingptr
	add	r1, r2, r1, asl #1	@, yptr, pcmptr, <variable>.offset,
	mov	r0, r0, asl #1	@,,
	str	r0, [fp, #-64]	@, %sfp
	add	r2, r2, r0	@, pcmptr,
	str	r2, [fp, #-68]	@, %sfp
.L185:
	ldr	r2, [fp, #-68]	@, %sfp
	cmp	r2, r1	@, yptr
	bls	.L202	@,
	mov	r2, #0	@ ivtmp.584,
	mov	sl, r1	@ ivtmp.606, yptr
	mov	r8, r1	@ yptr.632, yptr
	mov	r6, r2	@ i, ivtmp.584
	mov	lr, r2	@ acc1, ivtmp.584
	mov	r0, r2	@ acc0.633, ivtmp.584
	str	r4, [fp, #-52]	@ inst, %sfp
.L186:
	cmp	r5, r6	@ nwing, i
	ble	.L203	@,
	ldrsh	r9, [sl, #-2]	@ tmp271,
	ldr	r4, [ip, r2]	@,* ivtmp.584
#APP
@ 808 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlabb r9, r9, r4, r0	@ acc0, tmp271,, acc0.633
@ 0 "" 2
	ldrsh	r0, [r1, r2]	@ tmp272,* ivtmp.584
	ldr	r4, [r3, r2]	@,* ivtmp.584
#APP
@ 808 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlabb r4, r0, r4, lr	@, tmp272,, acc1
@ 0 "" 2
	str	r4, [fp, #-72]	@, %sfp
	ldrsh	lr, [r8, #2]	@ y.638,
	add	r8, r8, #4	@ yptr.632, yptr.632,
	ldrsh	r0, [sl, #-4]!	@ tmp273,
	ldr	r4, [ip, r2]	@,* ivtmp.584
#APP
@ 818 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlabt r0, r0, r4, r9	@ acc0.633, tmp273,, acc0
@ 0 "" 2
	ldr	r9, [fp, #-72]	@, %sfp
	ldr	r4, [r3, r2]	@,* ivtmp.584
#APP
@ 818 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlabt lr, lr, r4, r9	@ acc1, y.638,,
@ 0 "" 2
	add	r6, r6, #2	@ i, i,
	add	r2, r2, #4	@ ivtmp.584, ivtmp.584,
	b	.L186	@
.L202:
	ldr	r9, [fp, #-68]	@, %sfp
	ldr	lr, [fp, #-56]	@, %sfp
	rsb	r1, r9, r1	@ tmp290,, yptr
	ldr	r2, [r4, #24]	@ <variable>.nhist, <variable>.nhist
	str	ip, [r4, #64]	@ rwingptr, <variable>.rwingptr
	str	lr, [r4, #28]	@, <variable>.phase
	mov	lr, r1, asr #1	@ tmp291, tmp290,
	str	r3, [r4, #60]	@ lwingptr, <variable>.lwingptr
	mov	r2, r2, asl #1	@, <variable>.nhist,
	str	lr, [r4, #32]	@ tmp291, <variable>.offset
	ldr	r0, [r4, #44]	@ D.4312, <variable>.histbuf
	ldr	r4, [fp, #-64]	@, %sfp
	add	r1, r0, r4	@,,
	bl	memmove	@
	ldr	r4, [fp, #-48]	@, %sfp
	rsb	r1, r7, r4	@ tmp295, pOutpcm,
	mov	r0, r1, asr #1	@ nsamps, tmp295,
	b	.L162	@
.L203:
	add	ip, lr, r0	@ tmp274, acc1, acc0.633
	ldr	r3, [fp, #-48]	@, %sfp
	add	r0, ip, #16384	@ tmp275, tmp274,
	ldr	r4, [fp, #-52]	@ inst, %sfp
	mov	lr, r0, asr #31	@ sign, tmp275,
	mov	r2, r0, asr #15	@ x, tmp275,
	cmp	lr, r0, asr #30	@ sign, tmp275,
	movwne	r9, #32767	@,
	eorne	r2, lr, r9	@ x, sign,
	strh	r2, [r3], #2	@ movhi	@ x,
	ldr	ip, [fp, #-56]	@, %sfp
	ldr	r0, [fp, #-76]	@, %sfp
	str	r3, [fp, #-48]	@, %sfp
	ldr	r2, [r0, ip, asl #2]	@ phase.640,
	ldr	r0, [r4, #68]	@ D.4329, <variable>.filter
	ubfx	r3, r2, #8, #12	@ tmp283, phase.640,,
	and	lr, r2, #254	@ tmp281, phase.640,
	mov	ip, r2, lsr #20	@ tmp287, phase.640,
	add	r1, r1, lr	@ yptr, yptr, tmp281
	mul	r3, r5, r3	@ tmp285, nwing, tmp283
	mov	lr, r2, asr #20	@, phase.640,
	mul	r2, r5, ip	@ tmp288, nwing, tmp287
	str	lr, [fp, #-56]	@, %sfp
	add	r3, r0, r3, asl #1	@, lwingptr, D.4329, tmp285,
	add	ip, r0, r2, asl #1	@, rwingptr, D.4329, tmp288,
	b	.L185	@
	.fnend
	.size	ResamplerProcessFrame, .-ResamplerProcessFrame
	.align	2
	.global	NEW_ResamplerCheck
	.type	NEW_ResamplerCheck, %function
NEW_ResamplerCheck:
	.fnstart
.LFB57:
	@ args = 4, pretend = 0, frame = 0
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
	cmp	r0, #0	@ inst
	mov	ip, r3	@ chans, chans
	mov	r4, r1	@ inrate, inrate
	mov	r6, r2	@ outrate, outrate
	ldr	r3, [fp, #4]	@ SampleFormat, SampleFormat
	moveq	r0, #-2147483647	@ D.3576,
	beq	.L206	@,
	ldr	r5, [r0, #80]	@ <variable>.isLinearMode, <variable>.isLinearMode
	cmp	r5, #0	@ <variable>.isLinearMode,
	bne	.L207	@,
	ldr	r2, [r0, #8]	@ <variable>.inrate, <variable>.inrate
	cmp	r1, r2	@ inrate, <variable>.inrate
	beq	.L210	@,
.L208:
	mov	r0, #1	@ D.3576,
.L206:
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L207:
	ldr	r0, [r0, #84]	@ <variable>.hLSRC, <variable>.hLSRC
	str	ip, [sp, #0]	@ chans,
	bl	LSRC_CheckUpdate	@
	b	.L206	@
.L210:
	ldr	r1, [r0, #12]	@ <variable>.outrate, <variable>.outrate
	cmp	r6, r1	@ outrate, <variable>.outrate
	bne	.L208	@,
	ldr	r2, [r0, #16]	@ <variable>.nchans, <variable>.nchans
	cmp	ip, r2	@ chans, <variable>.nchans
	bne	.L208	@,
	ldr	r0, [r0, #40]	@ <variable>.bitwidth, <variable>.bitwidth
	subs	r0, r3, r0	@ D.3576, SampleFormat, <variable>.bitwidth
	movne	r0, #1	@ D.3576
	b	.L206	@
	.fnend
	.size	NEW_ResamplerCheck, .-NEW_ResamplerCheck
	.align	2
	.global	ResampleFlush
	.type	ResampleFlush, %function
ResampleFlush:
	.fnstart
.LFB56:
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
	subs	r4, r0, #0	@ inst, inst
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	ldr	r3, [r4, #80]	@ <variable>.isLinearMode, <variable>.isLinearMode
	cmp	r3, #0	@ <variable>.isLinearMode,
	ldmnefd	sp, {r3, r4, fp, sp, pc}	@
	ldr	r2, [r4, #0]	@ <variable>.up, <variable>.up
	ldr	ip, [r4, #20]	@ <variable>.nwing, <variable>.nwing
	sub	r0, r2, #1	@ tmp152, <variable>.up,
	ldr	r2, [r4, #40]	@ D.4534, <variable>.bitwidth
	ldr	r1, [r4, #68]	@ <variable>.filter, <variable>.filter
	mul	r0, ip, r0	@ tmp154, <variable>.nwing, tmp152
	cmp	r2, #16	@ D.4534,
	str	r1, [r4, #64]	@ <variable>.filter, <variable>.rwingptr
	str	r3, [r4, #36]	@ <variable>.isLinearMode, <variable>.isCloned
	str	r3, [r4, #28]	@ <variable>.isLinearMode, <variable>.phase
	str	r3, [r4, #32]	@ <variable>.isLinearMode, <variable>.offset
	add	r1, r1, r0, asl #1	@, tmp158, <variable>.filter, tmp154,
	str	r1, [r4, #60]	@ tmp158, <variable>.lwingptr
	beq	.L225	@,
	cmp	r2, #24	@ D.4534,
	cmpne	r2, #20	@, D.4534,
	beq	.L219	@,
	cmp	r2, #18	@ D.4534,
	ldmnefd	sp, {r3, r4, fp, sp, pc}	@
.L219:
	ldr	r3, [r4, #24]	@ prephitmp.694, <variable>.nhist
	ldr	r0, [r4, #52]	@ __p, <variable>.histbuf32
	add	r2, r3, #4096	@ tmp174, prephitmp.694,
	movs	r1, r2, asl #2	@ __n, tmp174,
	bne	.L226	@,
.L221:
	add	r3, r0, r3, asl #2	@, tmp176, prephitmp.692, prephitmp.694,
	str	r3, [r4, #56]	@ tmp176, <variable>.pcmbuf32
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L225:
	ldr	r3, [r4, #76]	@ <variable>.isForec2Out32bit, <variable>.isForec2Out32bit
	cmp	r3, #0	@ <variable>.isForec2Out32bit,
	bne	.L219	@,
	ldr	r3, [r4, #24]	@ prephitmp.698, <variable>.nhist
	ldr	r0, [r4, #44]	@ __p, <variable>.histbuf
	add	r1, r3, #4096	@ tmp164, prephitmp.698,
	movs	r1, r1, asl #1	@ __n, tmp164,
	beq	.L218	@,
	bl	__memzero	@
	ldr	r0, [r4, #44]	@ prephitmp.696, <variable>.histbuf
	ldr	r3, [r4, #24]	@ prephitmp.698, <variable>.nhist
.L218:
	add	ip, r0, r3, asl #1	@, tmp166, prephitmp.696, prephitmp.698,
	str	ip, [r4, #48]	@ tmp166, <variable>.pcmbuf
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L226:
	bl	__memzero	@
	ldr	r0, [r4, #52]	@ prephitmp.692, <variable>.histbuf32
	ldr	r3, [r4, #24]	@ prephitmp.694, <variable>.nhist
	b	.L221	@
	.fnend
	.size	ResampleFlush, .-ResampleFlush
	.align	2
	.global	ResamplerFree
	.type	ResamplerFree, %function
ResamplerFree:
	.fnstart
.LFB55:
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
	subs	r4, r0, #0	@ inst, inst
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	ldr	r3, [r4, #80]	@ <variable>.isLinearMode, <variable>.isLinearMode
	cmp	r3, #0	@ <variable>.isLinearMode,
	beq	.L238	@,
	ldr	r0, [r4, #84]	@, <variable>.hLSRC
	bl	LSRC_Destroy	@
.L236:
	mov	r1, r4	@, inst
	mov	r0, #17	@,
	bl	HI_ADSP_FREE	@
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L238:
	ldr	r3, [r4, #40]	@ D.4615, <variable>.bitwidth
	cmp	r3, #16	@ D.4615,
	beq	.L239	@,
	cmp	r3, #24	@ D.4615,
	cmpne	r3, #20	@, D.4615,
	beq	.L233	@,
	cmp	r3, #18	@ D.4615,
	bne	.L236	@,
.L233:
	ldr	r1, [r4, #52]	@ temp.744, <variable>.histbuf32
	cmp	r1, #0	@ temp.744,
	beq	.L236	@,
.L235:
	mov	r0, #17	@,
	bl	HI_ADSP_FREE	@
	mov	r1, r4	@, inst
	mov	r0, #17	@,
	bl	HI_ADSP_FREE	@
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L239:
	ldr	r0, [r4, #76]	@ <variable>.isForec2Out32bit, <variable>.isForec2Out32bit
	cmp	r0, #0	@ <variable>.isForec2Out32bit,
	bne	.L233	@,
	ldr	r1, [r4, #44]	@ D.4612, <variable>.histbuf
	cmp	r1, #0	@ D.4612,
	bne	.L235	@,
	b	.L236	@
	.fnend
	.size	ResamplerFree, .-ResamplerFree
	.align	2
	.global	ResamplerCreate
	.type	ResamplerCreate, %function
ResamplerCreate:
	.fnstart
.LFB54:
	@ args = 4, pretend = 0, frame = 24
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
	cmp	r0, #32000	@ inrate,
	mov	r4, r0	@ inrate, inrate
	mov	r5, r1	@ outrate, outrate
	mov	r6, r2	@ chans, chans
	beq	.L242	@,
	ble	.L286	@,
	movw	lr, #:lower16:88200	@ tmp171,
	movt	lr, #:upper16:88200	@ tmp171,
	cmp	r0, lr	@ inrate, tmp171
	beq	.L242	@,
	ble	.L287	@,
	movw	r1, #:lower16:176400	@ tmp175,
	movt	r1, #:upper16:176400	@ tmp175,
	cmp	r0, r1	@ inrate, tmp175
	beq	.L242	@,
	movw	ip, #:lower16:192000	@ tmp176,
	movt	ip, #:upper16:192000	@ tmp176,
	cmp	r0, ip	@ inrate, tmp176
	beq	.L242	@,
	movw	lr, #:lower16:96000	@ tmp177,
	movt	lr, #:upper16:96000	@ tmp177,
	cmp	r0, lr	@ inrate, tmp177
	beq	.L242	@,
.L241:
	sub	r0, fp, #48	@,,
	mov	r1, r4	@, inrate
	mov	r2, r5	@, outrate
	str	r6, [sp, #0]	@ chans,
	bl	LSRC_Create	@
	ldr	r0, [fp, #-48]	@ hLSRC, hLSRC
	cmp	r0, #0	@ hLSRC,
	bne	.L288	@,
.L269:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L286:
	movw	r2, #12000	@ tmp166,
	cmp	r0, r2	@ inrate, tmp166
	beq	.L242	@,
	ble	.L289	@,
	movw	r1, #22050	@ tmp169,
	cmp	r0, r1	@ inrate, tmp169
	beq	.L242	@,
	movw	ip, #24000	@ tmp170,
	cmp	r0, ip	@ inrate, tmp170
	beq	.L242	@,
	cmp	r0, #16000	@ inrate,
	bne	.L241	@,
.L242:
	cmp	r5, #32000	@ outrate,
	beq	.L246	@,
	bgt	.L247	@,
	movw	r2, #12000	@ tmp178,
	cmp	r5, r2	@ outrate, tmp178
	beq	.L246	@,
	bgt	.L248	@,
	cmp	r5, #8000	@ outrate,
	beq	.L246	@,
	movw	r0, #11025	@ tmp180,
	cmp	r5, r0	@ outrate, tmp180
	bne	.L241	@,
.L246:
	cmp	r4, r5	@ inrate, outrate
	bge	.L241	@,
	sub	r2, r6, #1	@ tmp190, chans,
	cmp	r2, #1	@ tmp190,
	bhi	.L241	@,
	cmp	r3, #24	@ SampleFormat,
	cmpne	r3, #16	@, SampleFormat,
	beq	.L250	@,
	cmp	r3, #18	@ SampleFormat,
	cmpne	r3, #20	@, SampleFormat,
	bne	.L241	@,
.L250:
	mov	r7, r5	@ outrate.793, outrate
	mov	r2, r4	@ inrate.802, inrate
.L253:
	cmp	r7, r2	@ outrate.793, inrate.802
	rsblt	r2, r7, r2	@ inrate.802, outrate.793, inrate.802
	rsbge	r7, r2, r7	@ outrate.793, inrate.802, outrate.793
	cmp	r7, r2	@ outrate.793, inrate.802
	bne	.L253	@,
	mov	r0, r5	@, outrate
	mov	r1, r7	@, outrate.793
	str	r3, [fp, #-64]	@,
	bl	__aeabi_idiv	@
	ldr	r3, [fp, #-64]	@,
	cmp	r0, #1280	@,
	str	r0, [fp, #-56]	@, %sfp
	bgt	.L241	@,
	mov	r1, r7	@, outrate.793
	mov	r0, r4	@, inrate
	bl	__aeabi_idiv	@
	ldr	r1, [fp, #-56]	@, %sfp
	str	r0, [fp, #-60]	@, %sfp
	add	r0, r1, r0	@ tmp211,,
	sub	r0, r0, #1	@, tmp211,
	bl	__aeabi_idiv	@
	mul	r3, r6, r0	@ tmp217, chans,
	cmp	r3, #255	@ tmp217,
	ldr	r3, [fp, #-64]	@,
	bgt	.L241	@,
	movw	r7, #:lower16:.LANCHOR0	@ srcinfoptr,
	mov	ip, r4, asr #1	@ D.4697, inrate,
	movt	r7, #:upper16:.LANCHOR0	@ srcinfoptr,
	mov	sl, r5, asr #1	@ D.4698, outrate,
	mov	r0, r4, asr #2	@ D.4699, inrate,
	mov	r8, r5, asr #2	@ D.4700, outrate,
	mov	lr, #0	@ i,
	b	.L258	@
.L254:
	cmp	r2, ip	@ D.4694, D.4697
	beq	.L290	@,
.L256:
	cmp	r2, r0	@ D.4694, D.4699
	beq	.L291	@,
.L257:
	add	r7, r7, #24	@ srcinfoptr, srcinfoptr,
	add	lr, lr, #1	@ tmp258, i,
	ldr	r2, [r7, #0]	@ D.4694, <variable>.inrate
	mov	r1, r7	@ tmp257, srcinfoptr
	cmp	r4, r2	@ inrate, D.4694
	beq	.L292	@,
.L275:
	cmp	r2, ip	@ D.4694, D.4697
	beq	.L293	@,
.L276:
	cmp	r2, r0	@ D.4694, D.4699
	beq	.L294	@,
.L277:
	add	lr, lr, #1	@ i, tmp258,
	add	r7, r1, #24	@ srcinfoptr, tmp257,
	cmp	lr, #40	@ i,
	beq	.L241	@,
.L258:
	ldr	r2, [r7, #0]	@ D.4694, <variable>.inrate
	cmp	r4, r2	@ inrate, D.4694
	bne	.L254	@,
	ldr	r1, [r7, #4]	@ <variable>.outrate, <variable>.outrate
	cmp	r5, r1	@ outrate, <variable>.outrate
	bne	.L254	@,
	ldr	r1, [r7, #8]	@ <variable>.quality, <variable>.quality
	cmp	r1, #2	@ <variable>.quality,
	bne	.L254	@,
.L255:
	mov	r0, #17	@,
	mov	r1, #88	@,
	ldr	sl, [r7, #12]	@ nwing, <variable>.nwing
	str	r3, [fp, #-64]	@,
	bl	HI_ADSP_MALLOC	@
	ldr	r3, [fp, #-64]	@,
	subs	r8, r0, #0	@ s,
	beq	.L241	@,
	ldr	r0, [r7, #20]	@ <variable>.filter, <variable>.filter
	mov	lr, sl, asl #1	@ tmp225, nwing,
	cmp	r3, #16	@ SampleFormat,
	str	r0, [r8, #68]	@ <variable>.filter, <variable>.filter
	mov	r0, #0	@ tmp228,
	ldr	ip, [r7, #16]	@ <variable>.nextphase, <variable>.nextphase
	str	r0, [r8, #36]	@ tmp228, <variable>.isCloned
	mul	r7, r6, lr	@ nhist, chans, tmp225
	str	ip, [r8, #72]	@ <variable>.nextphase, <variable>.nextphase
	str	r3, [r8, #40]	@ SampleFormat, <variable>.bitwidth
	beq	.L295	@,
	cmp	r3, #24	@ SampleFormat,
	cmpne	r3, #20	@, SampleFormat,
	beq	.L266	@,
	cmp	r3, #18	@ SampleFormat,
	beq	.L266	@,
.L263:
	ldr	r0, [fp, #-56]	@, %sfp
	str	r4, [r8, #8]	@ inrate, <variable>.inrate
	str	r5, [r8, #12]	@ outrate, <variable>.outrate
	sub	r2, r0, #1	@ tmp244,,
	ldr	lr, [fp, #-60]	@, %sfp
	mov	r0, r8	@ inst, s
	mul	r2, sl, r2	@ tmp245, nwing, tmp244
	str	r6, [r8, #16]	@ chans, <variable>.nchans
	str	lr, [r8, #4]	@, <variable>.dn
	mov	lr, #0	@ tmp241,
	str	r7, [r8, #24]	@ nhist, <variable>.nhist
	ldr	ip, [fp, #4]	@, isForec2Out32bit
	ldr	r1, [r8, #68]	@ <variable>.filter, <variable>.filter
	str	lr, [r8, #84]	@ tmp241, <variable>.hLSRC
	add	r3, r1, r2, asl #1	@, tmp248, <variable>.filter, tmp245,
	str	ip, [r8, #76]	@, <variable>.isForec2Out32bit
	str	r3, [r8, #60]	@ tmp248, <variable>.lwingptr
	ldr	r2, [fp, #-56]	@, %sfp
	str	sl, [r8, #20]	@ nwing, <variable>.nwing
	str	lr, [r8, #28]	@ tmp241, <variable>.phase
	str	r2, [r8, #0]	@, <variable>.up
	str	lr, [r8, #32]	@ tmp241, <variable>.offset
	str	r1, [r8, #64]	@ <variable>.filter, <variable>.rwingptr
	str	lr, [r8, #80]	@ tmp241, <variable>.isLinearMode
	b	.L269	@
.L247:
	movw	lr, #:lower16:88200	@ tmp183,
	movt	lr, #:upper16:88200	@ tmp183,
	cmp	r5, lr	@ outrate, tmp183
	beq	.L246	@,
	bgt	.L249	@,
	movw	r2, #44100	@ tmp185,
	cmp	r5, r2	@ outrate, tmp185
	beq	.L246	@,
	movw	r0, #48000	@ tmp186,
	cmp	r5, r0	@ outrate, tmp186
	bne	.L241	@,
	b	.L246	@
.L287:
	movw	r2, #44100	@ tmp173,
	cmp	r0, r2	@ inrate, tmp173
	beq	.L242	@,
	movw	r0, #48000	@ tmp174,
	cmp	r4, r0	@ inrate, tmp174
	bne	.L241	@,
	b	.L242	@
.L289:
	cmp	r0, #8000	@ inrate,
	beq	.L242	@,
	movw	r0, #11025	@ tmp168,
	cmp	r4, r0	@ inrate, tmp168
	bne	.L241	@,
	b	.L242	@
.L288:
	mov	r0, #17	@,
	mov	r1, #88	@,
	bl	HI_ADSP_MALLOC	@
	subs	r4, r0, #0	@ D.3253,
	beq	.L296	@,
	mov	r3, #1	@ tmp254,
	str	r3, [r4, #80]	@ tmp254, <variable>.isLinearMode
	ldr	r1, [fp, #-48]	@ hLSRC, hLSRC
	mov	r0, r4	@ inst, D.3253
	str	r1, [r4, #84]	@ hLSRC, <variable>.hLSRC
	b	.L269	@
.L248:
	movw	r1, #22050	@ tmp181,
	cmp	r5, r1	@ outrate, tmp181
	beq	.L246	@,
	movw	ip, #24000	@ tmp182,
	cmp	r5, ip	@ outrate, tmp182
	beq	.L246	@,
	cmp	r5, #16000	@ outrate,
	bne	.L241	@,
	b	.L246	@
.L249:
	movw	r1, #:lower16:176400	@ tmp187,
	movt	r1, #:upper16:176400	@ tmp187,
	cmp	r5, r1	@ outrate, tmp187
	beq	.L246	@,
	movw	ip, #:lower16:192000	@ tmp188,
	movt	ip, #:upper16:192000	@ tmp188,
	cmp	r5, ip	@ outrate, tmp188
	beq	.L246	@,
	movw	lr, #:lower16:96000	@ tmp189,
	movt	lr, #:upper16:96000	@ tmp189,
	cmp	r5, lr	@ outrate, tmp189
	bne	.L241	@,
	b	.L246	@
.L291:
	ldr	r2, [r7, #4]	@ <variable>.outrate, <variable>.outrate
	cmp	r2, r8	@ <variable>.outrate, D.4700
	bne	.L257	@,
	ldr	r1, [r7, #8]	@ <variable>.quality, <variable>.quality
	cmp	r1, #2	@ <variable>.quality,
	bne	.L257	@,
	b	.L255	@
.L290:
	ldr	r1, [r7, #4]	@ <variable>.outrate, <variable>.outrate
	cmp	r1, sl	@ <variable>.outrate, D.4698
	bne	.L256	@,
	ldr	r1, [r7, #8]	@ <variable>.quality, <variable>.quality
	cmp	r1, #2	@ <variable>.quality,
	bne	.L256	@,
	b	.L255	@
.L293:
	ldr	r9, [r1, #4]	@ <variable>.outrate, <variable>.outrate
	cmp	r9, sl	@ <variable>.outrate, D.4698
	bne	.L276	@,
	ldr	r9, [r1, #8]	@ <variable>.quality, <variable>.quality
	cmp	r9, #2	@ <variable>.quality,
	bne	.L276	@,
	b	.L255	@
.L292:
	ldr	r9, [r7, #4]	@ <variable>.outrate, <variable>.outrate
	cmp	r5, r9	@ outrate, <variable>.outrate
	bne	.L275	@,
	ldr	r9, [r7, #8]	@ <variable>.quality, <variable>.quality
	cmp	r9, #2	@ <variable>.quality,
	bne	.L275	@,
	b	.L255	@
.L294:
	ldr	r2, [r1, #4]	@ <variable>.outrate, <variable>.outrate
	cmp	r2, r8	@ <variable>.outrate, D.4700
	bne	.L277	@,
	ldr	r2, [r1, #8]	@ <variable>.quality, <variable>.quality
	cmp	r2, #2	@ <variable>.quality,
	bne	.L277	@,
	b	.L255	@
.L296:
	ldr	r0, [fp, #-48]	@, hLSRC
	bl	LSRC_Destroy	@
	mov	r0, r4	@ inst, D.3253
	b	.L269	@
.L266:
	mov	r0, #17	@,
.L285:
	mov	r1, #16640	@,
	str	r3, [fp, #-64]	@,
	bl	HI_ADSP_MALLOC	@
	cmp	r0, #0	@ prephitmp.764,
	mov	r2, r0	@ prephitmp.764,
	str	r0, [r8, #52]	@ prephitmp.764, <variable>.histbuf32
	beq	.L281	@,
	movs	r9, r7, asl #2	@ __n, nhist,
	bne	.L297	@,
.L268:
	add	ip, r2, r9	@ tmp240, prephitmp.764, __n
	str	ip, [r8, #56]	@ tmp240, <variable>.pcmbuf32
	b	.L263	@
.L295:
	ldr	r2, [fp, #4]	@, isForec2Out32bit
	cmp	r2, r0	@,
	addne	r0, r0, #17	@,,
	bne	.L285	@,
	add	r1, r7, #4096	@ tmp230, nhist,
	mov	r0, #17	@,
	str	r3, [fp, #-64]	@,
	mov	r1, r1, asl #1	@, tmp230,
	bl	HI_ADSP_MALLOC	@
	cmp	r0, #0	@ prephitmp.766,
	mov	r2, r0	@ prephitmp.766,
	str	r0, [r8, #44]	@ prephitmp.766, <variable>.histbuf
	beq	.L281	@,
	movs	r9, r7, asl #1	@ __n, nhist,
	beq	.L265	@,
	mov	r1, r9	@, __n
	bl	__memzero	@
	ldr	r2, [r8, #44]	@ prephitmp.766, <variable>.histbuf
.L265:
	add	r3, r2, r9	@ tmp232, prephitmp.766, __n
	str	r3, [r8, #48]	@ tmp232, <variable>.pcmbuf
	b	.L263	@
.L297:
	mov	r1, r9	@, __n
	bl	__memzero	@
	ldr	r2, [r8, #52]	@ prephitmp.764, <variable>.histbuf32
	b	.L268	@
.L281:
	mov	r1, r8	@, s
	mov	r0, #17	@,
	bl	HI_ADSP_FREE	@
	ldr	r3, [fp, #-64]	@,
	b	.L241	@
	.fnend
	.size	ResamplerCreate, .-ResamplerCreate
	.data
	.align	2
.LANCHOR0 = . + 0
	.type	resampler_info, %object
	.size	resampler_info, 960
resampler_info:
@ inrate:
	.word	32000
@ outrate:
	.word	48000
@ quality:
	.word	1
@ nwing:
	.word	8
@ nextphase:
	.word	SRC_res_32_48_mid_nextphasetab
@ filter:
	.word	SRC_res_32_48_mid_filttab
@ inrate:
	.word	44100
@ outrate:
	.word	48000
@ quality:
	.word	1
@ nwing:
	.word	8
@ nextphase:
	.word	SRC_res_44_48_mid_nextphasetab
@ filter:
	.word	SRC_res_44_48_mid_filttab
@ inrate:
	.word	48000
@ outrate:
	.word	48000
@ quality:
	.word	1
@ nwing:
	.word	8
@ nextphase:
	.word	res_48_48_nextphasetab
@ filter:
	.word	res_48_48_good_filttab
@ inrate:
	.word	8000
@ outrate:
	.word	11025
@ quality:
	.word	2
@ nwing:
	.word	8
@ nextphase:
	.word	SRC_res_8_11_good_nextphasetab
@ filter:
	.word	SRC_res_8_11_mid_filttab
@ inrate:
	.word	16000
@ outrate:
	.word	22050
@ quality:
	.word	2
@ nwing:
	.word	8
@ nextphase:
	.word	SRC_res_8_11_good_nextphasetab
@ filter:
	.word	SRC_res_8_11_mid_filttab
@ inrate:
	.word	8000
@ outrate:
	.word	22050
@ quality:
	.word	2
@ nwing:
	.word	8
@ nextphase:
	.word	SRC_res_8_22_good_nextphasetab
@ filter:
	.word	SRC_res_8_22_mid_filttab
@ inrate:
	.word	16000
@ outrate:
	.word	44100
@ quality:
	.word	2
@ nwing:
	.word	8
@ nextphase:
	.word	SRC_res_8_22_good_nextphasetab
@ filter:
	.word	SRC_res_8_22_mid_filttab
@ inrate:
	.word	8000
@ outrate:
	.word	44100
@ quality:
	.word	2
@ nwing:
	.word	8
@ nextphase:
	.word	SRC_res_8_44_good_nextphasetab
@ filter:
	.word	SRC_res_8_44_mid_filttab
@ inrate:
	.word	11025
@ outrate:
	.word	12000
@ quality:
	.word	2
@ nwing:
	.word	8
@ nextphase:
	.word	SRC_res_11_12_good_nextphasetab
@ filter:
	.word	SRC_res_11_12_mid_filttab
@ inrate:
	.word	22050
@ outrate:
	.word	24000
@ quality:
	.word	2
@ nwing:
	.word	8
@ nextphase:
	.word	SRC_res_11_12_good_nextphasetab
@ filter:
	.word	SRC_res_11_12_mid_filttab
@ inrate:
	.word	11025
@ outrate:
	.word	16000
@ quality:
	.word	2
@ nwing:
	.word	8
@ nextphase:
	.word	SRC_res_11_16_good_nextphasetab
@ filter:
	.word	SRC_res_11_16_mid_filttab
@ inrate:
	.word	22050
@ outrate:
	.word	32000
@ quality:
	.word	2
@ nwing:
	.word	8
@ nextphase:
	.word	SRC_res_11_16_good_nextphasetab
@ filter:
	.word	SRC_res_11_16_mid_filttab
@ inrate:
	.word	11025
@ outrate:
	.word	24000
@ quality:
	.word	2
@ nwing:
	.word	8
@ nextphase:
	.word	SRC_res_11_24_good_nextphasetab
@ filter:
	.word	SRC_res_11_24_mid_filttab
@ inrate:
	.word	22050
@ outrate:
	.word	48000
@ quality:
	.word	2
@ nwing:
	.word	8
@ nextphase:
	.word	SRC_res_11_24_good_nextphasetab
@ filter:
	.word	SRC_res_11_24_mid_filttab
@ inrate:
	.word	11025
@ outrate:
	.word	32000
@ quality:
	.word	2
@ nwing:
	.word	8
@ nextphase:
	.word	SRC_res_11_32_good_nextphasetab
@ filter:
	.word	SRC_res_11_32_mid_filttab
@ inrate:
	.word	11025
@ outrate:
	.word	48000
@ quality:
	.word	2
@ nwing:
	.word	8
@ nextphase:
	.word	SRC_res_11_48_good_nextphasetab
@ filter:
	.word	SRC_res_11_48_mid_filttab
@ inrate:
	.word	12000
@ outrate:
	.word	22050
@ quality:
	.word	2
@ nwing:
	.word	8
@ nextphase:
	.word	SRC_res_12_22_good_nextphasetab
@ filter:
	.word	SRC_res_12_22_mid_filttab
@ inrate:
	.word	24000
@ outrate:
	.word	44100
@ quality:
	.word	2
@ nwing:
	.word	8
@ nextphase:
	.word	SRC_res_12_22_good_nextphasetab
@ filter:
	.word	SRC_res_12_22_mid_filttab
@ inrate:
	.word	12000
@ outrate:
	.word	44100
@ quality:
	.word	2
@ nwing:
	.word	8
@ nextphase:
	.word	SRC_res_12_44_good_nextphasetab
@ filter:
	.word	SRC_res_12_44_mid_filttab
@ inrate:
	.word	8000
@ outrate:
	.word	12000
@ quality:
	.word	2
@ nwing:
	.word	16
@ nextphase:
	.word	SRC_res_8_12_good_nextphasetab
@ filter:
	.word	SRC_res_8_12_good_filttab
@ inrate:
	.word	8000
@ outrate:
	.word	16000
@ quality:
	.word	2
@ nwing:
	.word	16
@ nextphase:
	.word	SRC_res_8_16_good_nextphasetab
@ filter:
	.word	SRC_res_8_16_good_filttab
@ inrate:
	.word	8000
@ outrate:
	.word	24000
@ quality:
	.word	2
@ nwing:
	.word	16
@ nextphase:
	.word	SRC_res_8_24_good_nextphasetab
@ filter:
	.word	SRC_res_8_24_good_filttab
@ inrate:
	.word	8000
@ outrate:
	.word	32000
@ quality:
	.word	2
@ nwing:
	.word	16
@ nextphase:
	.word	SRC_res_8_32_good_nextphasetab
@ filter:
	.word	SRC_res_8_32_good_filttab
@ inrate:
	.word	8000
@ outrate:
	.word	48000
@ quality:
	.word	2
@ nwing:
	.word	16
@ nextphase:
	.word	SRC_res_8_48_good_nextphasetab
@ filter:
	.word	SRC_res_8_48_good_filttab
@ inrate:
	.word	11025
@ outrate:
	.word	22050
@ quality:
	.word	2
@ nwing:
	.word	16
@ nextphase:
	.word	SRC_res_8_16_good_nextphasetab
@ filter:
	.word	SRC_res_8_16_good_filttab
@ inrate:
	.word	11025
@ outrate:
	.word	44100
@ quality:
	.word	2
@ nwing:
	.word	16
@ nextphase:
	.word	SRC_res_8_32_good_nextphasetab
@ filter:
	.word	SRC_res_8_32_good_filttab
@ inrate:
	.word	12000
@ outrate:
	.word	16000
@ quality:
	.word	2
@ nwing:
	.word	16
@ nextphase:
	.word	SRC_res_12_16_good_nextphasetab
@ filter:
	.word	SRC_res_12_16_good_filttab
@ inrate:
	.word	12000
@ outrate:
	.word	24000
@ quality:
	.word	2
@ nwing:
	.word	16
@ nextphase:
	.word	SRC_res_8_16_good_nextphasetab
@ filter:
	.word	SRC_res_8_16_good_filttab
@ inrate:
	.word	12000
@ outrate:
	.word	32000
@ quality:
	.word	2
@ nwing:
	.word	16
@ nextphase:
	.word	SRC_res_12_32_good_nextphasetab
@ filter:
	.word	SRC_res_12_32_good_filttab
@ inrate:
	.word	12000
@ outrate:
	.word	48000
@ quality:
	.word	2
@ nwing:
	.word	16
@ nextphase:
	.word	SRC_res_8_32_good_nextphasetab
@ filter:
	.word	SRC_res_8_32_good_filttab
@ inrate:
	.word	16000
@ outrate:
	.word	24000
@ quality:
	.word	2
@ nwing:
	.word	16
@ nextphase:
	.word	SRC_res_8_12_good_nextphasetab
@ filter:
	.word	SRC_res_8_12_good_filttab
@ inrate:
	.word	16000
@ outrate:
	.word	32000
@ quality:
	.word	2
@ nwing:
	.word	16
@ nextphase:
	.word	SRC_res_8_16_good_nextphasetab
@ filter:
	.word	SRC_res_8_16_good_filttab
@ inrate:
	.word	16000
@ outrate:
	.word	48000
@ quality:
	.word	2
@ nwing:
	.word	16
@ nextphase:
	.word	SRC_res_8_24_good_nextphasetab
@ filter:
	.word	SRC_res_8_24_good_filttab
@ inrate:
	.word	22050
@ outrate:
	.word	44100
@ quality:
	.word	2
@ nwing:
	.word	16
@ nextphase:
	.word	SRC_res_8_16_good_nextphasetab
@ filter:
	.word	SRC_res_8_16_good_filttab
@ inrate:
	.word	24000
@ outrate:
	.word	32000
@ quality:
	.word	2
@ nwing:
	.word	16
@ nextphase:
	.word	SRC_res_12_16_good_nextphasetab
@ filter:
	.word	SRC_res_12_16_good_filttab
@ inrate:
	.word	24000
@ outrate:
	.word	48000
@ quality:
	.word	2
@ nwing:
	.word	16
@ nextphase:
	.word	SRC_res_8_16_good_nextphasetab
@ filter:
	.word	SRC_res_8_16_good_filttab
@ inrate:
	.word	32000
@ outrate:
	.word	44100
@ quality:
	.word	2
@ nwing:
	.word	16
@ nextphase:
	.word	SRC_res_8_11_good_nextphasetab
@ filter:
	.word	SRC_res_8_11_good_filttab
@ inrate:
	.word	32000
@ outrate:
	.word	48000
@ quality:
	.word	2
@ nwing:
	.word	16
@ nextphase:
	.word	SRC_res_8_12_good_nextphasetab
@ filter:
	.word	SRC_res_8_12_good_filttab
@ inrate:
	.word	44100
@ outrate:
	.word	48000
@ quality:
	.word	2
@ nwing:
	.word	36
@ nextphase:
	.word	SRC_res_11_12_good_nextphasetab
@ filter:
	.word	SRC_res_11_12_good_filttab
@ inrate:
	.word	48000
@ outrate:
	.word	48000
@ quality:
	.word	2
@ nwing:
	.word	8
@ nextphase:
	.word	res_48_48_nextphasetab
@ filter:
	.word	res_48_48_good_filttab
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
