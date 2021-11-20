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
	.file	"pq_mng_csc.c"
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
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/drivers/msp/pq/pq_v3_0
@ -Idrivers/msp/pq/pq_v3_0
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/arch/arm/mach-hi3798mx/include
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/common/include
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/common/api/include
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/common/drv/include
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/include
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/api/include
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/include
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/api/pq/include
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/api/higo/include
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/pq/pq_v3_0/mng
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/pq/pq_v3_0/hal/hi3798mv100
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/pq/pq_v3_0/hal/common
@ -I/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/pq/pq_v3_0
@ -imultilib armv7a_soft -iprefix
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/
@ -isysroot /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../target
@ -D__KERNEL__ -D__LINUX_ARM_ARCH__=7 -Uarm -DCHIP_TYPE_hi3796mv100
@ -DSDK_VERSION=HiSTBAndroidV600R001C00SPC064_v2016061301 -DHI_MCE_SUPPORT
@ -DHI_GPIOI2C_SUPPORT -DHI_LOG_SUPPORT=1 -DHI_LOG_LEVEL=4
@ -DHI_PROC_SUPPORT=1 -DHI_HDMI_SUPPORT_1_4 -DHI_KEYLED_SUPPORT
@ -DHI_HDCP_SUPPORT -DHI_SCI_SUPPORT -DHI_PVR_SUPPORT -DHI_VI_SUPPORT
@ -DHI_VENC_SUPPORT -DHI_AENC_SUPPORT -DHI_PQ_V3_0 -DKBUILD_STR(s)=#s
@ -DKBUILD_BASENAME=KBUILD_STR(pq_mng_csc)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_pq) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD drivers/msp/pq/pq_v3_0/mng/.pq_mng_csc.o.d
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/drivers/msp/pq/pq_v3_0/mng/pq_mng_csc.c
@ -mlittle-endian -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -marm -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/pq/pq_v3_0/mng/pq_mng_csc.o -O2 -Wall -Wundef
@ -Wstrict-prototypes -Wno-trigraphs -Werror-implicit-function-declaration
@ -Wno-format-security -Wframe-larger-than=1024
@ -Wdeclaration-after-statement -Wno-pointer-sign -p -fno-strict-aliasing
@ -fno-common -fno-delete-null-pointer-checks -fno-dwarf2-cfi-asm
@ -funwind-tables -fno-stack-protector -fno-omit-frame-pointer
@ -fno-optimize-sibling-calls -fno-strict-overflow -fconserve-stack
@ -fverbose-asm
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
	.type	PQ_MNG_CalCSCCoefTprtYCbCrtoYCbCr, %function
PQ_MNG_CalCSCCoefTprtYCbCrtoYCbCr:
	.fnstart
.LFB658:
	@ args = 16, pretend = 0, frame = 96
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #100
	sub	sp, sp, #100	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	rsb	r5, r2, r2, asl #4	@, tmp174, Hue, Hue,
	movw	r9, #:lower16:-2139062143	@ tmp575,
	movt	r9, #:upper16:-2139062143	@ tmp575,
	mov	r8, r5, asl #2	@ tmp175, tmp174,
	add	sl, r0, r0, asl #2	@, tmp168, Contrast, Contrast,
	add	ip, r1, r1, asl #2	@, tmp198, Saturation, Saturation,
	ldr	r4, [fp, #12]	@ pCSCTable, pCSCTable
	umull	r5, r7, r9, r8	@, tmp176, tmp575, tmp175
	mov	r1, ip, asl #3	@ tmp199, tmp198,
	mov	r9, sl, asl #3	@ tmp169, tmp168,
	movw	ip, #:lower16:-1600085855	@ tmp574,
	movt	ip, #:upper16:-1600085855	@ tmp574,
	movw	r6, #:lower16:.LANCHOR0	@ tmp203,
	movt	r6, #:upper16:.LANCHOR0	@ tmp203,
	ldr	r5, [r4, #12]	@ <variable>.csc_coef10, <variable>.csc_coef10
	ldr	sl, [r4, #16]	@ <variable>.csc_coef11, <variable>.csc_coef11
	mov	r2, r7, lsr #7	@ Hue.236, tmp176,
	umull	r7, r8, ip, r9	@, tmp170, tmp574, tmp169
	add	r0, r6, r2, asl #2	@, tmp215, tmp203, Hue.236,
	umull	r9, r1, ip, r1	@, tmp201, tmp574, tmp199
	ldr	r7, [r6, r2, asl #2]	@ tmp205, COS_TABLE
	movw	r2, #:lower16:274877907	@ tmp577,
	ldr	r6, [r0, #244]	@ tmp218, SIN_TABLE
	mov	r9, r8, lsr #5	@, tmp170,
	str	r9, [fp, #-68]	@, %sfp
	movw	r0, #:lower16:1759218605	@,
	ldr	r8, [r4, #24]	@, <variable>.csc_coef20
	movt	r2, #:upper16:274877907	@ tmp577,
	mul	r5, r5, r7	@ tmp204, <variable>.csc_coef10, tmp205
	str	r0, [fp, #-64]	@, %sfp
	mul	r9, r8, r6	@ tmp217,, tmp218
	mov	r8, r1, lsr #5	@, tmp201,
	str	r8, [fp, #-56]	@, %sfp
	ldr	r0, [r4, #28]	@, <variable>.csc_coef21
	mov	r1, r5, asr #31	@, tmp204,
	str	r1, [fp, #-48]	@, %sfp
	smull	r1, r5, r2, r5	@, tmp208, tmp577, tmp204
	mul	r8, r0, r6	@ tmp245,, tmp218
	mov	r0, r9, asr #31	@, tmp217,
	str	r0, [fp, #-84]	@, %sfp
	smull	r0, r1, r2, r9	@,, tmp577, tmp217
	mul	sl, sl, r7	@ tmp232, <variable>.csc_coef11, tmp205
	str	r1, [fp, #-52]	@, %sfp
	ldr	r1, [fp, #-48]	@, %sfp
	mov	r0, sl, asr #31	@, tmp232,
	str	r0, [fp, #-88]	@, %sfp
	ldr	r9, [r4, #20]	@, <variable>.csc_coef12
	mul	r0, r9, r7	@ tmp260,, tmp205
	rsb	r9, r1, r5, asr #6	@,,, tmp208,
	str	r9, [fp, #-48]	@, %sfp
	mov	r9, r8, asr #31	@, tmp245,
	ldr	r5, [r4, #32]	@, <variable>.csc_coef22
	str	r9, [fp, #-60]	@, %sfp
	mul	r1, r5, r6	@ tmp273,, tmp218
	smull	r9, r5, r2, sl	@,, tmp577, tmp232
	ldr	sl, [fp, #-84]	@, %sfp
	str	r5, [fp, #-72]	@, %sfp
	ldr	r5, [fp, #-52]	@, %sfp
	rsb	r9, sl, r5, asr #6	@, tmp220,,,
	ldr	r5, [fp, #-48]	@, %sfp
	smull	sl, r8, r2, r8	@, tmp249, tmp577, tmp245
	add	r9, r5, r9	@,, tmp220
	ldr	sl, [fp, #-56]	@, %sfp
	str	r9, [fp, #-48]	@, %sfp
	ldr	r9, [fp, #-68]	@, %sfp
	mul	r5, r9, sl	@,,
	ldr	r9, [fp, #-72]	@, %sfp
	str	r5, [fp, #-56]	@, %sfp
	ldr	r5, [fp, #-88]	@, %sfp
	rsb	sl, r5, r9, asr #6	@, tmp235,,,
	smull	r9, r5, r2, r0	@,, tmp577, tmp260
	str	r5, [fp, #-52]	@, %sfp
	ldr	r5, [fp, #-60]	@, %sfp
	rsb	r8, r5, r8, asr #6	@, tmp248,, tmp249,
	smull	r5, r9, r2, r1	@,, tmp577, tmp273
	add	r8, sl, r8	@ tmp253, tmp235, tmp248
	ldr	sl, [fp, #-48]	@, %sfp
	mov	r1, r1, asr #31	@ tmp280, tmp273,
	str	r9, [fp, #-84]	@, %sfp
	ldr	r9, [fp, #-56]	@, %sfp
	mul	r5, r9, sl	@ tmp226,,
	mov	sl, r0, asr #31	@ tmp267, tmp260,
	mul	r8, r9, r8	@ tmp254,, tmp253
	ldr	r9, [fp, #-52]	@, %sfp
	rsb	r0, sl, r9, asr #6	@, tmp263, tmp267,,
	ldr	r9, [fp, #-84]	@, %sfp
	mov	sl, r5, asr #31	@, tmp226,
	rsb	r1, r1, r9, asr #6	@, tmp276, tmp280,,
	movw	r9, #:lower16:1759218605	@,
	movt	r9, #:upper16:1759218605	@,
	str	r9, [fp, #-64]	@, %sfp
	str	sl, [fp, #-84]	@, %sfp
	add	r0, r0, r1	@ tmp281, tmp263, tmp276
	smull	sl, r9, r9, r5	@,,, tmp226
	ldr	r5, [fp, #-64]	@, %sfp
	ldr	sl, [fp, #-56]	@, %sfp
	ldr	r1, [fp, #16]	@ pDstCSCTable, pDstCSCTable
	str	r9, [fp, #-52]	@, %sfp
	add	r9, r3, r3, asl #2	@, tmp373, Kr, Kr,
	smull	r3, r5, r5, r8	@,,, tmp254
	mov	r8, r8, asr #31	@ tmp258, tmp254,
	ldr	r3, [fp, #-52]	@, %sfp
	mov	r9, r9, asl #3	@, tmp373,
	mul	r0, sl, r0	@ tmp282,, tmp281
	ldr	sl, [fp, #4]	@ Kg, Kg
	str	r5, [fp, #-48]	@, %sfp
	ldr	r5, [fp, #-84]	@, %sfp
	add	sl, sl, sl, asl #2	@, tmp379, Kg, Kg,
	rsb	r5, r5, r3, asr #12	@,,,,
	str	r5, [fp, #-88]	@, %sfp
	str	r5, [r1, #12]	@, <variable>.csc_coef10
	ldr	r5, [fp, #-64]	@, %sfp
	smull	r3, r5, r5, r0	@,,, tmp282
	str	r5, [fp, #-60]	@, %sfp
	ldr	r5, [fp, #-48]	@, %sfp
	str	r9, [fp, #-48]	@, %sfp
	rsb	r3, r8, r5, asr #12	@,, tmp258,,
	mov	r8, sl, asl #3	@, tmp379,
	str	r3, [fp, #-84]	@, %sfp
	str	r3, [r1, #16]	@, <variable>.csc_coef11
	str	r8, [fp, #-72]	@, %sfp
	ldr	r5, [r4, #24]	@, <variable>.csc_coef20
	ldr	sl, [r4, #12]	@, <variable>.csc_coef10
	ldr	r3, [fp, #8]	@ Kb, Kb
	mul	r8, r5, r7	@ tmp288,, tmp205
	mul	r5, sl, r6	@ tmp301,, tmp218
	mov	sl, r0, asr #31	@ tmp286, tmp282,
	ldr	r0, [fp, #-48]	@, %sfp
	add	r3, r3, r3, asl #2	@, tmp385, Kb, Kb,
	umull	r9, r0, ip, r0	@,, tmp574,
	str	r0, [fp, #-52]	@, %sfp
	ldr	r9, [r4, #28]	@, <variable>.csc_coef21
	mul	r0, r9, r7	@,, tmp205
	ldr	r9, [fp, #-60]	@, %sfp
	rsb	sl, sl, r9, asr #12	@,, tmp286,,
	str	sl, [fp, #-92]	@, %sfp
	ldr	r9, [fp, #-92]	@, %sfp
	str	r0, [fp, #-104]	@, %sfp
	ldr	r0, [r4, #16]	@, <variable>.csc_coef11
	str	r9, [r1, #20]	@, <variable>.csc_coef12
	mul	sl, r0, r6	@ tmp329,, tmp218
	ldr	r0, [fp, #-72]	@, %sfp
	umull	r9, r0, ip, r0	@,, tmp574,
	mov	r9, r3, asl #3	@, tmp385,
	str	r9, [fp, #-76]	@, %sfp
	str	r0, [fp, #-48]	@, %sfp
	ldr	r0, [fp, #-52]	@, %sfp
	mov	r9, r0, lsr #5	@ rGain,,
	smull	r0, r3, r2, r8	@,, tmp577, tmp288
	mov	r8, r8, asr #31	@ tmp295, tmp288,
	str	r3, [fp, #-60]	@, %sfp
	smull	r0, r3, r2, r5	@,, tmp577, tmp301
	mov	r5, r5, asr #31	@ tmp308, tmp301,
	str	r3, [fp, #-80]	@, %sfp
	ldr	r3, [fp, #-48]	@, %sfp
	mov	r0, r3, lsr #5	@ gGain,,
	ldr	r3, [r4, #32]	@, <variable>.csc_coef22
	mul	r7, r3, r7	@,, tmp205
	str	r7, [fp, #-48]	@, %sfp
	ldr	r3, [r4, #20]	@, <variable>.csc_coef12
	ldr	r7, [fp, #-76]	@, %sfp
	mul	r6, r3, r6	@,, tmp218
	str	r6, [fp, #-52]	@, %sfp
	umull	r6, r3, ip, r7	@,, tmp574,
	ldr	r6, [fp, #-104]	@, %sfp
	smull	ip, r7, r2, r6	@,, tmp577,
	str	r3, [fp, #-100]	@, %sfp
	smull	r6, ip, r2, sl	@,, tmp577, tmp329
	movw	r3, #299	@,
	movw	r6, #587	@ tmp390,
	mov	sl, sl, asr #31	@ tmp336, tmp329,
	str	r7, [fp, #-76]	@, %sfp
	rsb	r7, r0, r0, asl #23	@, tmp451, gGain, gGain,
	rsb	r7, r0, r7, asl #7	@, tmp453, gGain, tmp451,
	str	ip, [fp, #-96]	@, %sfp
	mul	ip, r3, r9	@ tmp391,, rGain
	mla	r3, r6, r0, ip	@, tmp390, gGain, tmp391
	ldr	r6, [fp, #-60]	@, %sfp
	mvn	ip, #146	@ tmp422,
	mul	ip, ip, r9	@ tmp421, tmp422, rGain
	rsb	r8, r8, r6, asr #6	@, tmp291, tmp295,,
	mvn	r6, #288	@ tmp420,
	str	r3, [fp, #-112]	@, %sfp
	ldr	r3, [fp, #-80]	@, %sfp
	rsb	r5, r5, r3, asr #6	@, tmp304, tmp308,,
	mla	r3, r6, r0, ip	@, tmp420, gGain, tmp421
	ldr	r6, [fp, #-104]	@, %sfp
	ldr	ip, [fp, #-48]	@, %sfp
	rsb	r8, r5, r8	@ tmp309, tmp304, tmp291
	str	r3, [fp, #-116]	@, %sfp
	mov	r3, r6, asr #31	@ tmp323,,
	smull	r5, r6, r2, ip	@,, tmp577,
	ldr	r5, [fp, #-76]	@, %sfp
	ldr	ip, [fp, #-52]	@, %sfp
	rsb	r3, r3, r5, asr #6	@, tmp319, tmp323,,
	str	r6, [fp, #-108]	@, %sfp
	smull	r5, r6, r2, ip	@,, tmp577,
	ldr	ip, [fp, #-96]	@, %sfp
	ldr	r5, [fp, #-100]	@, %sfp
	rsb	sl, sl, ip, asr #6	@, tmp332, tmp336,,
	str	r6, [fp, #-76]	@, %sfp
	mov	ip, r5, lsr #5	@ bGain,,
	ldr	r6, [r4, #4]	@, <variable>.csc_coef01
	rsb	sl, sl, r3	@, tmp332, tmp319
	mvn	r3, #231	@ tmp404,
	add	r5, r0, r7, asl #2	@,, gGain, tmp453,
	str	sl, [fp, #-104]	@, %sfp
	mov	r7, #232	@ tmp402,
	mul	sl, r3, r0	@ tmp403, tmp404, gGain
	str	r6, [fp, #-100]	@, %sfp
	movw	r6, #341	@ tmp413,
	str	r5, [fp, #-120]	@, %sfp
	mul	r6, r6, r9	@ tmp412, tmp413, rGain
	mov	r3, #114	@ tmp395,
	mla	r5, r7, ip, sl	@, tmp402, bGain, tmp403
	mvn	sl, #340	@ tmp411,
	mla	r6, sl, r0, r6	@, tmp411, gGain, tmp412
	str	r5, [fp, #-60]	@, %sfp
	ldr	r5, [fp, #-68]	@, %sfp
	str	r6, [fp, #-80]	@, %sfp
	ldr	r7, [r4, #0]	@, <variable>.csc_coef00
	ldr	r6, [fp, #-56]	@, %sfp
	mul	sl, r7, r5	@ tmp178,,
	ldr	r7, [fp, #-112]	@, %sfp
	ldr	r5, [fp, #-48]	@, %sfp
	mul	r8, r6, r8	@ tmp310,, tmp309
	mla	r6, r3, ip, r7	@ tmp396, tmp395, bGain,
	mov	r7, r5, asr #31	@ tmp351,,
	mul	r5, r3, r0	@, tmp395, gGain
	str	r5, [fp, #-48]	@, %sfp
	ldr	r3, [fp, #-52]	@, %sfp
	mov	r5, r3, asr #31	@ tmp364,,
	mvn	r3, #167	@ tmp443,
	mul	r3, r3, r9	@, tmp443, rGain
	str	r3, [fp, #-96]	@, %sfp
	ldr	r3, [fp, #-108]	@, %sfp
	rsb	r7, r7, r3, asr #6	@,, tmp351,,
	str	r7, [fp, #-52]	@, %sfp
	ldr	r7, [fp, #-116]	@, %sfp
	mov	r3, #436	@ tmp425,
	mla	r3, r3, ip, r7	@, tmp425, bGain,
	ldr	r7, [fp, #-48]	@, %sfp
	str	r3, [fp, #-72]	@, %sfp
	ldr	r3, [fp, #-76]	@, %sfp
	rsb	r5, r5, r3, asr #6	@, tmp360, tmp364,,
	movw	r3, #886	@ tmp432,
	mla	r3, r3, ip, r7	@, tmp432, bGain,
	mov	r7, #168	@ tmp441,
	str	r3, [fp, #-76]	@, %sfp
	ldr	r3, [r4, #8]	@, <variable>.csc_coef02
	ldr	r4, [fp, #-96]	@, %sfp
	str	r3, [fp, #-108]	@, %sfp
	mla	r3, r7, r0, r4	@, tmp441, gGain,
	ldr	r4, [fp, #-120]	@, %sfp
	movw	r7, #615	@ tmp457,
	mla	r7, r7, r9, r4	@, tmp457, rGain,
	ldr	r4, [fp, #-68]	@, %sfp
	str	r3, [fp, #-96]	@, %sfp
	movw	r3, #:lower16:1374389535	@ tmp576,
	movt	r3, #:upper16:1374389535	@ tmp576,
	str	r7, [fp, #-132]	@, %sfp
	ldr	r7, [fp, #-100]	@, %sfp
	mul	r7, r7, r4	@,,
	str	r7, [fp, #-48]	@, %sfp
	ldr	r7, [fp, #-52]	@, %sfp
	rsb	r4, r5, r7	@, tmp360,
	ldr	r5, [fp, #-104]	@, %sfp
	str	r4, [fp, #-112]	@, %sfp
	ldr	r4, [fp, #-56]	@, %sfp
	mul	r7, r4, r5	@,,
	movw	r4, #701	@ tmp478,
	mul	r5, r4, r9	@, tmp478, rGain
	str	r7, [fp, #-52]	@, %sfp
	mov	r7, #203	@ tmp469,
	mul	r4, r7, r0	@, tmp469, gGain
	str	r5, [fp, #-104]	@, %sfp
	smull	r9, r7, r3, sl	@, tmp180, tmp576, tmp178
	mov	r5, r8, asr #31	@, tmp310,
	str	r5, [fp, #-140]	@, %sfp
	str	r4, [fp, #-100]	@, %sfp
	mov	r4, sl, asr #31	@ tmp183, tmp178,
	ldr	sl, [fp, #-64]	@, %sfp
	smull	r5, r8, sl, r8	@, tmp311,, tmp310
	mov	sl, r6, asr #31	@ tmp400, tmp396,
	smull	r9, r6, r3, r6	@, tmp397, tmp576, tmp396
	ldr	r9, [fp, #-60]	@, %sfp
	mov	r5, r9, asr #31	@,,
	ldr	r9, [fp, #-60]	@, %sfp
	str	r5, [fp, #-120]	@, %sfp
	rsb	r6, sl, r6, asr #5	@, D.24753, tmp400, tmp397,
	smull	r5, r9, r3, r9	@,, tmp576,
	ldr	r5, [fp, #-80]	@, %sfp
	str	r9, [fp, #-116]	@, %sfp
	mov	r9, r5, asr #31	@,,
	ldr	r5, [fp, #-80]	@, %sfp
	str	r9, [fp, #-128]	@, %sfp
	smull	r9, r5, r3, r5	@,, tmp576,
	str	r5, [fp, #-124]	@, %sfp
	rsb	r5, r4, r7, asr #5	@,, tmp183, tmp180,
	ldr	r9, [fp, #-100]	@, %sfp
	mvn	r4, #202	@ tmp467,
	str	r5, [fp, #-136]	@, %sfp
	ldr	r5, [fp, #-140]	@, %sfp
	mla	r7, r4, ip, r9	@, tmp467, bGain,
	rsb	r8, r5, r8, asr #12	@, D.24078,, tmp311,
	ldr	r4, [fp, #-104]	@, %sfp
	movw	r9, #299	@,
	ldr	r5, [fp, #-56]	@, %sfp
	mla	r0, r9, r0, r4	@,, gGain,
	str	r7, [fp, #-100]	@, %sfp
	ldr	r7, [fp, #-112]	@, %sfp
	ldr	r4, [fp, #-116]	@, %sfp
	ldr	r9, [fp, #-120]	@, %sfp
	mul	sl, r5, r7	@,,
	ldr	r5, [fp, #-132]	@, %sfp
	mvn	r7, #99	@ tmp460,
	str	r0, [fp, #-104]	@, %sfp
	rsb	r0, r9, r4, asr #5	@,,,,
	ldr	r9, [fp, #-68]	@, %sfp
	str	r0, [fp, #-120]	@, %sfp
	ldr	r0, [fp, #-108]	@, %sfp
	str	sl, [fp, #-60]	@, %sfp
	mla	sl, r7, ip, r5	@, tmp460, bGain,
	ldr	r4, [fp, #-124]	@, %sfp
	mul	r5, r0, r9	@,,
	ldr	ip, [fp, #-128]	@, %sfp
	ldr	r7, [fp, #-48]	@, %sfp
	ldr	r9, [fp, #-52]	@, %sfp
	str	sl, [fp, #-80]	@, %sfp
	rsb	sl, ip, r4, asr #5	@, D.24745,,,
	ldr	ip, [fp, #-64]	@, %sfp
	mov	r4, r7	@,
	smull	r4, r0, r3, r4	@, tmp186, tmp576,
	str	r5, [fp, #-56]	@, %sfp
	mov	r5, r7, asr #31	@ tmp189,,
	mov	r7, r9, asr #31	@ tmp342,,
	smull	r9, r4, ip, r9	@, tmp339,,
	ldr	ip, [fp, #-72]	@, %sfp
	mov	r9, ip, asr #31	@,,
	ldr	ip, [fp, #-72]	@, %sfp
	str	r9, [fp, #-52]	@, %sfp
	smull	r9, ip, r3, ip	@,, tmp576,
	ldr	r9, [fp, #-76]	@, %sfp
	str	ip, [fp, #-68]	@, %sfp
	mov	ip, r9, asr #31	@,,
	ldr	r9, [fp, #-76]	@, %sfp
	str	ip, [fp, #-108]	@, %sfp
	smull	ip, r9, r3, r9	@,, tmp576,
	ldr	ip, [fp, #-96]	@, %sfp
	str	r9, [fp, #-72]	@, %sfp
	mov	r9, ip, asr #31	@,,
	ldr	ip, [fp, #-96]	@, %sfp
	str	r9, [fp, #-112]	@, %sfp
	smull	r9, ip, r3, ip	@,, tmp576,
	str	ip, [fp, #-76]	@, %sfp
	rsb	ip, r5, r0, asr #5	@,, tmp189, tmp186,
	ldr	r9, [fp, #-64]	@, %sfp
	ldr	r5, [fp, #-60]	@, %sfp
	str	ip, [fp, #-124]	@, %sfp
	smull	r0, ip, r9, r5	@,,,
	ldr	r0, [fp, #-104]	@, %sfp
	smull	r5, r9, r3, r0	@,, tmp576,
	str	ip, [fp, #-48]	@, %sfp
	ldr	r5, [fp, #-68]	@, %sfp
	rsb	ip, r7, r4, asr #12	@, D.24088, tmp342, tmp339,
	ldr	r7, [fp, #-56]	@, %sfp
	ldr	r4, [fp, #-52]	@, %sfp
	str	r9, [fp, #-96]	@, %sfp
	rsb	r9, r4, r5, asr #5	@, D.24739,,,
	smull	r5, r0, r3, r7	@,, tmp576,
	ldr	r4, [fp, #-72]	@, %sfp
	ldr	r7, [fp, #-108]	@, %sfp
	rsb	r5, r7, r4, asr #5	@,,,,
	str	r5, [fp, #-64]	@, %sfp
	str	r0, [fp, #-68]	@, %sfp
	ldr	r0, [fp, #-80]	@, %sfp
	ldr	r7, [fp, #-112]	@, %sfp
	smull	r5, r4, r3, r0	@,, tmp576,
	ldr	r0, [fp, #-76]	@, %sfp
	ldr	r5, [fp, #-100]	@, %sfp
	str	r4, [fp, #-52]	@, %sfp
	rsb	r4, r7, r0, asr #5	@, D.24731,,,
	smull	r7, r0, r3, r5	@,, tmp576,
	ldr	r5, [fp, #-56]	@, %sfp
	ldr	r7, [fp, #-60]	@, %sfp
	mov	r3, r5, asr #31	@ tmp195,,
	str	r0, [fp, #-72]	@, %sfp
	mov	r5, r7, asr #31	@,,
	mul	r0, sl, r8	@, D.24745, D.24078
	str	r5, [fp, #-56]	@, %sfp
	ldr	r5, [fp, #-80]	@, %sfp
	str	r0, [fp, #-116]	@, %sfp
	ldr	r0, [fp, #-136]	@, %sfp
	mul	r7, r0, sl	@,, D.24745
	ldr	r0, [fp, #-88]	@, %sfp
	str	r7, [fp, #-108]	@, %sfp
	mov	r7, r5, asr #31	@ tmp465,,
	mul	r5, sl, r0	@, D.24745,
	ldr	sl, [fp, #-100]	@, %sfp
	mov	r0, sl, asr #31	@ tmp474,,
	ldr	sl, [fp, #-104]	@, %sfp
	str	r5, [fp, #-112]	@, %sfp
	mul	r5, r8, r6	@, D.24078, D.24753
	str	r5, [fp, #-100]	@, %sfp
	mov	r5, sl, asr #31	@,,
	ldr	sl, [fp, #-120]	@, %sfp
	str	r5, [fp, #-76]	@, %sfp
	mul	r8, r8, sl	@, D.24078,
	str	r8, [fp, #-104]	@, %sfp
	ldr	r5, [fp, #-68]	@, %sfp
	rsb	r8, r3, r5, asr #5	@, D.24029, tmp195,,
	ldr	r3, [fp, #-136]	@, %sfp
	ldr	r5, [fp, #-48]	@, %sfp
	mul	sl, r3, r6	@,, D.24753
	ldr	r3, [fp, #-56]	@, %sfp
	str	sl, [fp, #-68]	@, %sfp
	rsb	sl, r3, r5, asr #12	@, D.24098,,,
	ldr	r5, [fp, #-120]	@, %sfp
	ldr	r3, [fp, #-136]	@, %sfp
	mul	r3, r3, r5	@,,
	ldr	r5, [fp, #-52]	@, %sfp
	rsb	r7, r7, r5, asr #5	@, D.24725, tmp465,,
	ldr	r5, [fp, #-88]	@, %sfp
	str	r3, [fp, #-48]	@, %sfp
	mul	r3, r5, r6	@,, D.24753
	ldr	r6, [fp, #-72]	@, %sfp
	str	r3, [fp, #-52]	@, %sfp
	rsb	r3, r0, r6, asr #5	@, D.24721, tmp474,,
	ldr	r6, [fp, #-120]	@, %sfp
	mul	r0, r5, r6	@,,
	ldr	r6, [fp, #-76]	@, %sfp
	str	r0, [fp, #-120]	@, %sfp
	ldr	r0, [fp, #-96]	@, %sfp
	rsb	r5, r6, r0, asr #5	@, D.24717,,,
	ldr	r6, [fp, #-116]	@, %sfp
	mla	r0, r4, ip, r6	@, D.24731, D.24088,
	ldr	r6, [fp, #-108]	@, %sfp
	str	r0, [fp, #-76]	@, %sfp
	ldr	r0, [fp, #-124]	@, %sfp
	mla	r0, r0, r4, r6	@,, D.24731,
	ldr	r6, [fp, #-112]	@, %sfp
	str	r0, [fp, #-88]	@, %sfp
	ldr	r0, [fp, #-84]	@, %sfp
	mla	r4, r4, r0, r6	@, D.24731,,
	ldr	r0, [fp, #-100]	@, %sfp
	ldr	r6, [fp, #-104]	@, %sfp
	str	r4, [fp, #-60]	@, %sfp
	mla	r4, ip, r9, r0	@, D.24088, D.24739,
	ldr	r0, [fp, #-68]	@, %sfp
	str	r4, [fp, #-80]	@, %sfp
	ldr	r4, [fp, #-64]	@, %sfp
	mla	ip, ip, r4, r6	@, D.24088,,
	str	ip, [fp, #-72]	@, %sfp
	ldr	ip, [fp, #-124]	@, %sfp
	mla	r6, ip, r9, r0	@,, D.24739,
	ldr	ip, [fp, #-48]	@, %sfp
	str	r6, [fp, #-56]	@, %sfp
	ldr	r6, [fp, #-124]	@, %sfp
	mla	r0, r6, r4, ip	@,,,
	str	r0, [fp, #-68]	@, %sfp
	ldr	r0, [fp, #-84]	@, %sfp
	ldr	r4, [fp, #-52]	@, %sfp
	ldr	r6, [fp, #-64]	@, %sfp
	ldr	ip, [fp, #-120]	@, %sfp
	mla	r9, r0, r9, r4	@,, D.24739,
	mla	r4, r0, r6, ip	@,,,
	ldr	ip, [fp, #-88]	@, %sfp
	ldr	r0, [fp, #-92]	@, %sfp
	ldr	r6, [fp, #-60]	@, %sfp
	str	r9, [fp, #-48]	@, %sfp
	ldr	r9, [fp, #-76]	@, %sfp
	str	r4, [fp, #-64]	@, %sfp
	mla	r4, r5, sl, r9	@ tmp568, D.24717, D.24098,
	mla	r9, r8, r5, ip	@ tmp508, D.24029, D.24717,
	ldr	ip, [fp, #-80]	@, %sfp
	mla	r5, r5, r0, r6	@ tmp538, D.24717,,
	mla	r6, sl, r7, ip	@, D.24098, D.24725,
	mov	r0, r4, asr #31	@, tmp568,
	ldr	ip, [fp, #-72]	@, %sfp
	str	r0, [fp, #-52]	@, %sfp
	ldr	r0, [fp, #-56]	@, %sfp
	mla	sl, sl, r3, ip	@ tmp558, D.24098, D.24721,
	str	r6, [fp, #-76]	@, %sfp
	mov	ip, r5, asr #31	@, tmp538,
	mov	r6, r9, asr #31	@, tmp508,
	str	ip, [fp, #-88]	@, %sfp
	str	r6, [fp, #-84]	@, %sfp
	ldr	ip, [fp, #-76]	@, %sfp
	mla	r6, r8, r7, r0	@ tmp488, D.24029, D.24725,
	ldr	r0, [fp, #-68]	@, %sfp
	mla	r8, r8, r3, r0	@ tmp498, D.24029, D.24721,
	mov	r0, ip, asr #31	@,,
	ldr	ip, [fp, #-92]	@, %sfp
	str	r0, [fp, #-68]	@, %sfp
	ldr	r0, [fp, #-48]	@, %sfp
	mla	r7, ip, r7, r0	@ tmp518,, D.24725,
	mov	r0, sl, asr #31	@, tmp558,
	ldr	ip, [fp, #-64]	@, %sfp
	str	r0, [fp, #-48]	@, %sfp
	ldr	r0, [fp, #-92]	@, %sfp
	mla	r3, r0, r3, ip	@ tmp528,, D.24721,
	mov	r0, r6, asr #31	@, tmp488,
	str	r0, [fp, #-60]	@, %sfp
	smull	r0, ip, r2, r4	@,, tmp577, tmp568
	smull	r4, r6, r2, r6	@, tmp489, tmp577, tmp488
	mov	r4, r7, asr #31	@, tmp518,
	str	r4, [fp, #-56]	@, %sfp
	str	ip, [fp, #-92]	@, %sfp
	mov	ip, r8, asr #31	@ tmp502, tmp498,
	smull	r4, r8, r2, r8	@, tmp499, tmp577, tmp498
	mov	r4, r3, asr #31	@ tmp532, tmp528,
	smull	r0, r9, r2, r9	@, tmp509, tmp577, tmp508
	ldr	r0, [fp, #-60]	@, %sfp
	rsb	r8, ip, r8, asr #6	@, tmp503, tmp502, tmp499,
	rsb	r6, r0, r6, asr #6	@, tmp493,, tmp489,
	smull	ip, r3, r2, r3	@, tmp529, tmp577, tmp528
	smull	r0, r7, r2, r7	@, tmp519, tmp577, tmp518
	ldr	r0, [fp, #-84]	@, %sfp
	smull	ip, r5, r2, r5	@, tmp539, tmp577, tmp538
	rsb	r9, r0, r9, asr #6	@, tmp513,, tmp509,
	ldr	r0, [fp, #-76]	@, %sfp
	rsb	r3, r4, r3, asr #6	@, tmp533, tmp532, tmp529,
	ldr	ip, [fp, #-56]	@, %sfp
	smull	r4, sl, r2, sl	@, tmp559, tmp577, tmp558
	rsb	r7, ip, r7, asr #6	@, tmp523,, tmp519,
	smull	r0, ip, r2, r0	@, tmp549, tmp577,
	ldr	r0, [fp, #-92]	@, %sfp
	ldr	r4, [fp, #-88]	@, %sfp
	ldr	r2, [fp, #-52]	@, %sfp
	rsb	r5, r4, r5, asr #6	@, tmp543,, tmp539,
	rsb	r4, r2, r0, asr #6	@, tmp573,,,
	str	r4, [r1, #32]	@ tmp573, <variable>.csc_coef22
	ldr	r2, [fp, #-68]	@, %sfp
	stmia	r1, {r6, r8}	@ phole stm
	rsb	ip, r2, ip, asr #6	@, tmp553,, tmp549,
	str	r9, [r1, #8]	@ tmp513, <variable>.csc_coef02
	ldr	r4, [fp, #-48]	@, %sfp
	str	r7, [r1, #12]	@ tmp523, <variable>.csc_coef10
	rsb	sl, r4, sl, asr #6	@, tmp563,, tmp559,
	str	r3, [r1, #16]	@ tmp533, <variable>.csc_coef11
	str	r5, [r1, #20]	@ tmp543, <variable>.csc_coef12
	str	ip, [r1, #24]	@ tmp553, <variable>.csc_coef20
	str	sl, [r1, #28]	@ tmp563, <variable>.csc_coef21
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
	.fnend
	.size	PQ_MNG_CalCSCCoefTprtYCbCrtoYCbCr, .-PQ_MNG_CalCSCCoefTprtYCbCrtoYCbCr
	.align	2
	.global	PQ_MNG_GetSDPictureSetting
	.type	PQ_MNG_GetSDPictureSetting, %function
PQ_MNG_GetSDPictureSetting:
	.fnstart
.LFB667:
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
	movw	ip, #:lower16:.LANCHOR1	@ tmp136,
	movt	ip, #:upper16:.LANCHOR1	@ tmp136,
	ldrh	r2, [ip, #6]	@, sg_stSDPictureSetting.u16Saturation
	ldrh	r3, [ip, #0]	@, sg_stSDPictureSetting.u16Brightness
	strh	r2, [r0, #6]	@ movhi	@, <variable>.u16Saturation
	strh	r3, [r0, #0]	@ movhi	@, <variable>.u16Brightness
	ldrh	r2, [ip, #2]	@, sg_stSDPictureSetting.u16Contrast
	ldrh	r3, [ip, #4]	@, sg_stSDPictureSetting.u16Hue
	strh	r2, [r0, #2]	@ movhi	@, <variable>.u16Contrast
	strh	r3, [r0, #4]	@ movhi	@, <variable>.u16Hue
	ldrh	r0, [ip, #18]	@, sg_stColorTemp.s16BlueOffset
	ldrh	r2, [ip, #8]	@, sg_stColorTemp.s16RedGain
	ldrh	r3, [ip, #10]	@, sg_stColorTemp.s16GreenGain
	strh	r0, [r1, #10]	@ movhi	@, <variable>.s16BlueOffset
	strh	r2, [r1, #0]	@ movhi	@, <variable>.s16RedGain
	ldrh	r0, [ip, #12]	@, sg_stColorTemp.s16BlueGain
	strh	r3, [r1, #2]	@ movhi	@, <variable>.s16GreenGain
	ldrh	r2, [ip, #14]	@, sg_stColorTemp.s16RedOffset
	ldrh	r3, [ip, #16]	@, sg_stColorTemp.s16GreenOffset
	strh	r0, [r1, #4]	@ movhi	@, <variable>.s16BlueGain
	mov	r0, #0	@,
	strh	r2, [r1, #6]	@ movhi	@, <variable>.s16RedOffset
	strh	r3, [r1, #8]	@ movhi	@, <variable>.s16GreenOffset
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	PQ_MNG_GetSDPictureSetting, .-PQ_MNG_GetSDPictureSetting
	.align	2
	.global	PQ_MNG_GetHDPictureSetting
	.type	PQ_MNG_GetHDPictureSetting, %function
PQ_MNG_GetHDPictureSetting:
	.fnstart
.LFB668:
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
	movw	ip, #:lower16:.LANCHOR1	@ tmp136,
	movt	ip, #:upper16:.LANCHOR1	@ tmp136,
	ldrh	r2, [ip, #26]	@, sg_stHDPictureSetting.u16Saturation
	ldrh	r3, [ip, #20]	@, sg_stHDPictureSetting.u16Brightness
	strh	r2, [r0, #6]	@ movhi	@, <variable>.u16Saturation
	strh	r3, [r0, #0]	@ movhi	@, <variable>.u16Brightness
	ldrh	r2, [ip, #22]	@, sg_stHDPictureSetting.u16Contrast
	ldrh	r3, [ip, #24]	@, sg_stHDPictureSetting.u16Hue
	strh	r2, [r0, #2]	@ movhi	@, <variable>.u16Contrast
	strh	r3, [r0, #4]	@ movhi	@, <variable>.u16Hue
	ldrh	r0, [ip, #18]	@, sg_stColorTemp.s16BlueOffset
	ldrh	r2, [ip, #8]	@, sg_stColorTemp.s16RedGain
	ldrh	r3, [ip, #10]	@, sg_stColorTemp.s16GreenGain
	strh	r0, [r1, #10]	@ movhi	@, <variable>.s16BlueOffset
	strh	r2, [r1, #0]	@ movhi	@, <variable>.s16RedGain
	ldrh	r0, [ip, #12]	@, sg_stColorTemp.s16BlueGain
	strh	r3, [r1, #2]	@ movhi	@, <variable>.s16GreenGain
	ldrh	r2, [ip, #14]	@, sg_stColorTemp.s16RedOffset
	ldrh	r3, [ip, #16]	@, sg_stColorTemp.s16GreenOffset
	strh	r0, [r1, #4]	@ movhi	@, <variable>.s16BlueGain
	mov	r0, #0	@,
	strh	r2, [r1, #6]	@ movhi	@, <variable>.s16RedOffset
	strh	r3, [r1, #8]	@ movhi	@, <variable>.s16GreenOffset
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	PQ_MNG_GetHDPictureSetting, .-PQ_MNG_GetHDPictureSetting
	.align	2
	.global	PQ_MNG_Get8BitCscCoef
	.type	PQ_MNG_Get8BitCscCoef, %function
PQ_MNG_Get8BitCscCoef:
	.fnstart
.LFB670:
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
	cmp	r1, #0	@ pstCscCoef,
	cmpne	r2, #0	@, pstCscDCCoef,
	movne	r3, #0	@, tmp144
	moveq	r3, #1	@, tmp144
	beq	.L28	@,
	cmp	r0, #2	@ enCscMode,
	beq	.L29	@,
	cmp	r0, #0	@ enCscMode,
	beq	.L30	@,
	cmp	r0, #3	@ enCscMode,
	beq	.L31	@,
	cmp	r0, #1	@ enCscMode,
	beq	.L32	@,
	cmp	r0, #4	@ enCscMode,
	beq	.L33	@,
	cmp	r0, #5	@ enCscMode,
	beq	.L34	@,
	cmp	r0, #6	@ enCscMode,
	beq	.L35	@,
	cmp	r0, #7	@ enCscMode,
	beq	.L36	@,
	cmp	r0, #8	@ enCscMode,
	beq	.L37	@,
	cmp	r0, #9	@ enCscMode,
	beq	.L38	@,
	cmp	r0, #10	@ enCscMode,
	beq	.L39	@,
	cmp	r0, #11	@ enCscMode,
	beq	.L40	@,
	mov	r3, #0	@ tmp329,
	mvn	r5, #127	@ tmp338,
	mov	ip, r3	@ D.24563, tmp329
	mov	r4, #128	@ tmp341,
	mov	r0, #1024	@ tmp328,
	str	r3, [r1, #4]	@ tmp329, <variable>.csc_coef01
	str	r3, [r1, #8]	@ tmp329, <variable>.csc_coef02
	str	r3, [r1, #12]	@ tmp329, <variable>.csc_coef10
	str	r0, [r1, #32]	@ tmp328, <variable>.csc_coef22
	str	r0, [r1, #0]	@ tmp328, <variable>.csc_coef00
.L25:
	str	r0, [r1, #16]	@ tmp328, <variable>.csc_coef11
	mvn	r0, #15	@ tmp337,
	str	r3, [r1, #20]	@ tmp329, <variable>.csc_coef12
	str	r3, [r1, #24]	@ tmp329, <variable>.csc_coef20
	str	r3, [r1, #28]	@ tmp329, <variable>.csc_coef21
	mov	r1, #16	@ tmp340,
	str	r4, [r2, #12]	@ tmp341, <variable>.csc_out_dc0
	str	r0, [r2, #8]	@ tmp337, <variable>.csc_in_dc2
	str	r5, [r2, #0]	@ tmp338, <variable>.csc_in_dc0
	str	r1, [r2, #20]	@ tmp340, <variable>.csc_out_dc2
	str	r5, [r2, #4]	@ tmp338, <variable>.csc_in_dc1
	str	r4, [r2, #16]	@ tmp341, <variable>.csc_out_dc1
	b	.L9	@
.L30:
	mov	ip, r0	@ D.24563, enCscMode
	str	r0, [r1, #32]	@ enCscMode, <variable>.csc_coef22
	str	r0, [r1, #4]	@ enCscMode, <variable>.csc_coef01
	movw	r4, #1192	@ tmp163,
	mvn	r5, #127	@ tmp173,
	str	r4, [r1, #24]	@ tmp163, <variable>.csc_coef20
	str	r4, [r1, #0]	@ tmp163, <variable>.csc_coef00
	movw	r3, #1634	@ tmp165,
	str	r4, [r1, #12]	@ tmp163, <variable>.csc_coef10
	str	r3, [r1, #8]	@ tmp165, <variable>.csc_coef02
	movw	r3, #:lower16:-400	@ tmp167,
	movt	r3, #:upper16:-400	@ tmp167,
	str	r3, [r1, #16]	@ tmp167, <variable>.csc_coef11
	mvn	r3, #832	@ tmp168,
	str	r3, [r1, #20]	@ tmp168, <variable>.csc_coef12
	movw	r3, #2066	@ tmp170,
	str	r3, [r1, #28]	@ tmp170, <variable>.csc_coef21
	mvn	r3, #15	@ tmp172,
	str	r5, [r2, #0]	@ tmp173, <variable>.csc_in_dc0
	str	r3, [r2, #8]	@ tmp172, <variable>.csc_in_dc2
	str	r0, [r2, #12]	@ enCscMode, <variable>.csc_out_dc0
	str	r5, [r2, #4]	@ tmp173, <variable>.csc_in_dc1
	str	r0, [r2, #20]	@ enCscMode, <variable>.csc_out_dc2
	str	r0, [r2, #16]	@ enCscMode, <variable>.csc_out_dc1
.L9:
	mov	r0, ip	@, D.24563
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L29:
	movw	r0, #450	@ tmp153,
	mov	ip, r3	@ D.24563, tmp144
	str	r0, [r1, #24]	@ tmp153, <variable>.csc_coef20
	mov	r4, #128	@ tmp161,
	str	r0, [r1, #20]	@ tmp153, <variable>.csc_coef12
	mov	r0, #264	@ tmp148,
	str	r0, [r1, #0]	@ tmp148, <variable>.csc_coef00
	mov	r0, #516	@ tmp149,
	str	r0, [r1, #4]	@ tmp149, <variable>.csc_coef01
	mov	r0, #100	@ tmp150,
	str	r0, [r1, #8]	@ tmp150, <variable>.csc_coef02
	mvn	r0, #151	@ tmp151,
	str	r0, [r1, #12]	@ tmp151, <variable>.csc_coef10
	movw	r0, #:lower16:-298	@ tmp152,
	movt	r0, #:upper16:-298	@ tmp152,
	str	r0, [r1, #16]	@ tmp152, <variable>.csc_coef11
	mvn	r0, #376	@ tmp155,
	str	r0, [r1, #28]	@ tmp155, <variable>.csc_coef21
	mvn	r0, #72	@ tmp156,
.L23:
	str	r0, [r1, #32]	@ tmp186, <variable>.csc_coef22
	mov	r1, #16	@ tmp190,
	str	r4, [r2, #12]	@ tmp191, <variable>.csc_out_dc0
	str	r1, [r2, #20]	@ tmp190, <variable>.csc_out_dc2
	str	r3, [r2, #8]	@ tmp144, <variable>.csc_in_dc2
	str	r3, [r2, #4]	@ tmp144, <variable>.csc_in_dc1
	str	r3, [r2, #0]	@ tmp144, <variable>.csc_in_dc0
	str	r4, [r2, #16]	@ tmp191, <variable>.csc_out_dc1
	b	.L9	@
.L31:
	movw	r0, #450	@ tmp183,
	mov	ip, r3	@ D.24563, tmp144
	str	r0, [r1, #24]	@ tmp183, <variable>.csc_coef20
	mov	r4, #128	@ tmp191,
	str	r0, [r1, #20]	@ tmp183, <variable>.csc_coef12
	mov	r0, #188	@ tmp178,
	str	r0, [r1, #0]	@ tmp178, <variable>.csc_coef00
	movw	r0, #629	@ tmp179,
	str	r0, [r1, #4]	@ tmp179, <variable>.csc_coef01
	mov	r0, #63	@ tmp180,
	str	r0, [r1, #8]	@ tmp180, <variable>.csc_coef02
	mvn	r0, #102	@ tmp181,
	str	r0, [r1, #12]	@ tmp181, <variable>.csc_coef10
	movw	r0, #:lower16:-347	@ tmp182,
	movt	r0, #:upper16:-347	@ tmp182,
	str	r0, [r1, #16]	@ tmp182, <variable>.csc_coef11
	mvn	r0, #408	@ tmp185,
	str	r0, [r1, #28]	@ tmp185, <variable>.csc_coef21
	mvn	r0, #40	@ tmp186,
	b	.L23	@
.L32:
	str	r3, [r1, #32]	@ tmp144, <variable>.csc_coef22
	movw	r4, #1192	@ tmp193,
	str	r3, [r1, #4]	@ tmp144, <variable>.csc_coef01
	mvn	r5, #127	@ tmp203,
	str	r4, [r1, #24]	@ tmp193, <variable>.csc_coef20
	movw	r0, #1836	@ tmp195,
	str	r4, [r1, #0]	@ tmp193, <variable>.csc_coef00
	mov	ip, r3	@ D.24563, tmp144
	str	r0, [r1, #8]	@ tmp195, <variable>.csc_coef02
	mvn	r0, #217	@ tmp197,
	str	r4, [r1, #12]	@ tmp193, <variable>.csc_coef10
	str	r0, [r1, #16]	@ tmp197, <variable>.csc_coef11
	movw	r0, #:lower16:-547	@ tmp198,
	movt	r0, #:upper16:-547	@ tmp198,
	str	r0, [r1, #20]	@ tmp198, <variable>.csc_coef12
	movw	r0, #2166	@ tmp200,
	str	r0, [r1, #28]	@ tmp200, <variable>.csc_coef21
	mvn	r0, #15	@ tmp202,
	str	r5, [r2, #0]	@ tmp203, <variable>.csc_in_dc0
	str	r0, [r2, #8]	@ tmp202, <variable>.csc_in_dc2
	str	r3, [r2, #12]	@ tmp144, <variable>.csc_out_dc0
	str	r5, [r2, #4]	@ tmp203, <variable>.csc_in_dc1
	str	r3, [r2, #20]	@ tmp144, <variable>.csc_out_dc2
	str	r3, [r2, #16]	@ tmp144, <variable>.csc_out_dc1
	b	.L9	@
.L33:
	mov	r4, #1024	@ tmp208,
	str	r3, [r1, #12]	@ tmp144, <variable>.csc_coef10
	mov	ip, r3	@ D.24563, tmp144
	str	r3, [r1, #24]	@ tmp144, <variable>.csc_coef20
	str	r4, [r1, #0]	@ tmp208, <variable>.csc_coef00
	mvn	r0, #127	@ tmp218,
	mov	r4, #102	@ tmp209,
	mov	r3, #128	@ tmp221,
	str	r4, [r1, #4]	@ tmp209, <variable>.csc_coef01
	mov	r4, #196	@ tmp210,
	str	r4, [r1, #8]	@ tmp210, <variable>.csc_coef02
	movw	r4, #1014	@ tmp212,
	str	r4, [r1, #16]	@ tmp212, <variable>.csc_coef11
	mvn	r4, #112	@ tmp213,
	str	r4, [r1, #20]	@ tmp213, <variable>.csc_coef12
	mvn	r4, #73	@ tmp215,
	str	r4, [r1, #28]	@ tmp215, <variable>.csc_coef21
	movw	r4, #1007	@ tmp216,
.L26:
	str	r4, [r1, #32]	@ tmp231, <variable>.csc_coef22
	mvn	r1, #15	@ tmp232,
	str	r3, [r2, #12]	@ tmp236, <variable>.csc_out_dc0
	str	r1, [r2, #8]	@ tmp232, <variable>.csc_in_dc2
	mov	r1, #16	@ tmp235,
	str	r0, [r2, #0]	@ tmp233, <variable>.csc_in_dc0
	str	r1, [r2, #20]	@ tmp235, <variable>.csc_out_dc2
	str	r0, [r2, #4]	@ tmp233, <variable>.csc_in_dc1
	str	r3, [r2, #16]	@ tmp236, <variable>.csc_out_dc1
	b	.L9	@
.L34:
	mov	r4, #1024	@ tmp223,
	str	r3, [r1, #12]	@ tmp144, <variable>.csc_coef10
	mov	ip, r3	@ D.24563, tmp144
	str	r3, [r1, #24]	@ tmp144, <variable>.csc_coef20
	str	r4, [r1, #0]	@ tmp223, <variable>.csc_coef00
	mvn	r0, #127	@ tmp233,
	mvn	r4, #117	@ tmp224,
	mov	r3, #128	@ tmp236,
	str	r4, [r1, #4]	@ tmp224, <variable>.csc_coef01
	mvn	r4, #212	@ tmp225,
	str	r4, [r1, #8]	@ tmp225, <variable>.csc_coef02
	movw	r4, #1043	@ tmp227,
	str	r4, [r1, #16]	@ tmp227, <variable>.csc_coef11
	mov	r4, #117	@ tmp228,
	str	r4, [r1, #20]	@ tmp228, <variable>.csc_coef12
	mov	r4, #77	@ tmp230,
	str	r4, [r1, #28]	@ tmp230, <variable>.csc_coef21
	movw	r4, #1050	@ tmp231,
	b	.L26	@
.L35:
	mov	r0, #1024	@ tmp238,
	str	r3, [r1, #4]	@ tmp144, <variable>.csc_coef01
	mov	ip, r3	@ D.24563, tmp144
	str	r3, [r1, #8]	@ tmp144, <variable>.csc_coef02
	str	r0, [r1, #32]	@ tmp238, <variable>.csc_coef22
	mvn	r5, #127	@ tmp248,
	str	r0, [r1, #0]	@ tmp238, <variable>.csc_coef00
	mov	r4, #128	@ tmp251,
	str	r3, [r1, #12]	@ tmp144, <variable>.csc_coef10
	b	.L25	@
.L36:
	str	r3, [r1, #32]	@ tmp144, <variable>.csc_coef22
	mov	r4, #1024	@ tmp253,
	str	r3, [r1, #4]	@ tmp144, <variable>.csc_coef01
	mvn	r5, #127	@ tmp263,
	str	r4, [r1, #24]	@ tmp253, <variable>.csc_coef20
	movw	r0, #1436	@ tmp255,
	str	r4, [r1, #0]	@ tmp253, <variable>.csc_coef00
	mov	ip, r3	@ D.24563, tmp144
	str	r0, [r1, #8]	@ tmp255, <variable>.csc_coef02
	movw	r0, #:lower16:-352	@ tmp257,
	str	r4, [r1, #12]	@ tmp253, <variable>.csc_coef10
	movt	r0, #:upper16:-352	@ tmp257,
	str	r0, [r1, #16]	@ tmp257, <variable>.csc_coef11
	movw	r0, #:lower16:-731	@ tmp258,
	movt	r0, #:upper16:-731	@ tmp258,
	str	r0, [r1, #20]	@ tmp258, <variable>.csc_coef12
	movw	r0, #1815	@ tmp260,
	str	r0, [r1, #28]	@ tmp260, <variable>.csc_coef21
	str	r5, [r2, #0]	@ tmp263, <variable>.csc_in_dc0
	str	r3, [r2, #12]	@ tmp144, <variable>.csc_out_dc0
	str	r3, [r2, #8]	@ tmp144, <variable>.csc_in_dc2
	str	r5, [r2, #4]	@ tmp263, <variable>.csc_in_dc1
	str	r3, [r2, #20]	@ tmp144, <variable>.csc_out_dc2
	str	r3, [r2, #16]	@ tmp144, <variable>.csc_out_dc1
	b	.L9	@
.L37:
	mov	r3, #0	@ tmp269,
	mov	r0, #1024	@ tmp268,
	str	r3, [r1, #32]	@ tmp269, <variable>.csc_coef22
	mvn	r4, #127	@ tmp278,
	str	r0, [r1, #24]	@ tmp268, <variable>.csc_coef20
	mov	ip, r3	@ D.24563, tmp269
	str	r0, [r1, #0]	@ tmp268, <variable>.csc_coef00
	str	r0, [r1, #12]	@ tmp268, <variable>.csc_coef10
	movw	r0, #1613	@ tmp270,
	str	r3, [r1, #4]	@ tmp269, <variable>.csc_coef01
	str	r0, [r1, #8]	@ tmp270, <variable>.csc_coef02
	mvn	r0, #190	@ tmp272,
	str	r0, [r1, #16]	@ tmp272, <variable>.csc_coef11
	movw	r0, #:lower16:-479	@ tmp273,
	movt	r0, #:upper16:-479	@ tmp273,
	str	r0, [r1, #20]	@ tmp273, <variable>.csc_coef12
	movw	r0, #1901	@ tmp275,
	str	r0, [r1, #28]	@ tmp275, <variable>.csc_coef21
	str	r4, [r2, #0]	@ tmp278, <variable>.csc_in_dc0
	str	r3, [r2, #12]	@ tmp269, <variable>.csc_out_dc0
	str	r3, [r2, #8]	@ tmp269, <variable>.csc_in_dc2
	str	r4, [r2, #4]	@ tmp278, <variable>.csc_in_dc1
	str	r3, [r2, #20]	@ tmp269, <variable>.csc_out_dc2
	str	r3, [r2, #16]	@ tmp269, <variable>.csc_out_dc1
	b	.L9	@
.L38:
	mov	r3, #0	@ tmp292,
	mov	r4, #512	@ tmp288,
	movw	r0, #306	@ tmp283,
	str	r4, [r1, #24]	@ tmp288, <variable>.csc_coef20
	str	r4, [r1, #20]	@ tmp288, <variable>.csc_coef12
	mov	ip, r3	@ D.24563, tmp292
	str	r0, [r1, #0]	@ tmp283, <variable>.csc_coef00
	mov	r4, #128	@ tmp296,
	movw	r0, #601	@ tmp284,
	str	r0, [r1, #4]	@ tmp284, <variable>.csc_coef01
	mov	r0, #117	@ tmp285,
	str	r0, [r1, #8]	@ tmp285, <variable>.csc_coef02
	mvn	r0, #172	@ tmp286,
	str	r0, [r1, #12]	@ tmp286, <variable>.csc_coef10
	movw	r0, #:lower16:-339	@ tmp287,
	movt	r0, #:upper16:-339	@ tmp287,
	str	r0, [r1, #16]	@ tmp287, <variable>.csc_coef11
	mvn	r0, #428	@ tmp290,
	str	r0, [r1, #28]	@ tmp290, <variable>.csc_coef21
	mvn	r0, #82	@ tmp291,
.L24:
	str	r0, [r1, #32]	@ tmp306, <variable>.csc_coef22
	str	r4, [r2, #12]	@ tmp311, <variable>.csc_out_dc0
	str	r3, [r2, #8]	@ tmp307, <variable>.csc_in_dc2
	str	r3, [r2, #4]	@ tmp307, <variable>.csc_in_dc1
	str	r3, [r2, #0]	@ tmp307, <variable>.csc_in_dc0
	str	r3, [r2, #20]	@ tmp307, <variable>.csc_out_dc2
	str	r4, [r2, #16]	@ tmp311, <variable>.csc_out_dc1
	b	.L9	@
.L28:
	mov	r0, #1	@,
	mov	r1, #41	@,
	ldr	r2, .L41	@,
	movw	r3, #1876	@,
	movw	ip, #:lower16:.LC0	@ tmp147,
	movt	ip, #:upper16:.LC0	@ tmp147,
	str	ip, [sp, #0]	@ tmp147,
	bl	HI_LogOut	@
	mvn	ip, #0	@ D.24563,
	b	.L9	@
.L39:
	mov	r3, #0	@ tmp307,
	mov	r4, #512	@ tmp303,
	mov	r0, #218	@ tmp298,
	str	r4, [r1, #24]	@ tmp303, <variable>.csc_coef20
	str	r4, [r1, #20]	@ tmp303, <variable>.csc_coef12
	mov	ip, r3	@ D.24563, tmp307
	str	r0, [r1, #0]	@ tmp298, <variable>.csc_coef00
	mov	r4, #128	@ tmp311,
	mov	r0, #732	@ tmp299,
	str	r0, [r1, #4]	@ tmp299, <variable>.csc_coef01
	mov	r0, #74	@ tmp300,
	str	r0, [r1, #8]	@ tmp300, <variable>.csc_coef02
	mvn	r0, #117	@ tmp301,
	str	r0, [r1, #12]	@ tmp301, <variable>.csc_coef10
	movw	r0, #:lower16:-394	@ tmp302,
	movt	r0, #:upper16:-394	@ tmp302,
	str	r0, [r1, #16]	@ tmp302, <variable>.csc_coef11
	mvn	r0, #464	@ tmp305,
	str	r0, [r1, #28]	@ tmp305, <variable>.csc_coef21
	mvn	r0, #46	@ tmp306,
	b	.L24	@
.L40:
	mov	r3, #0	@ tmp314,
	mov	r4, #1024	@ tmp313,
	str	r3, [r1, #4]	@ tmp314, <variable>.csc_coef01
	mov	r0, #2	@ tmp325,
	str	r3, [r1, #8]	@ tmp314, <variable>.csc_coef02
	mov	ip, r3	@ D.24563, tmp314
	str	r3, [r1, #12]	@ tmp314, <variable>.csc_coef10
	str	r4, [r1, #32]	@ tmp313, <variable>.csc_coef22
	str	r4, [r1, #0]	@ tmp313, <variable>.csc_coef00
	str	r4, [r1, #16]	@ tmp313, <variable>.csc_coef11
	str	r3, [r1, #20]	@ tmp314, <variable>.csc_coef12
	str	r3, [r1, #24]	@ tmp314, <variable>.csc_coef20
	str	r3, [r1, #28]	@ tmp314, <variable>.csc_coef21
	str	r0, [r2, #12]	@ tmp325, <variable>.csc_out_dc0
	str	r3, [r2, #8]	@ tmp314, <variable>.csc_in_dc2
	str	r3, [r2, #4]	@ tmp314, <variable>.csc_in_dc1
	str	r3, [r2, #0]	@ tmp314, <variable>.csc_in_dc0
	str	r0, [r2, #20]	@ tmp325, <variable>.csc_out_dc2
	str	r0, [r2, #16]	@ tmp325, <variable>.csc_out_dc1
	b	.L9	@
.L42:
	.align	2
.L41:
	.word	.LANCHOR0+488
	.fnend
	.size	PQ_MNG_Get8BitCscCoef, .-PQ_MNG_Get8BitCscCoef
	.align	2
	.global	PQ_MNG_GetCscCoef
	.type	PQ_MNG_GetCscCoef, %function
PQ_MNG_GetCscCoef:
	.fnstart
.LFB669:
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
	cmp	r1, #0	@ pstCscCoef,
	cmpne	r2, #0	@, pstCscDCCoef,
	movne	r3, #0	@, tmp144
	moveq	r3, #1	@, tmp144
	beq	.L63	@,
	cmp	r0, #2	@ enCscMode,
	beq	.L64	@,
	cmp	r0, #0	@ enCscMode,
	beq	.L65	@,
	cmp	r0, #3	@ enCscMode,
	beq	.L66	@,
	cmp	r0, #1	@ enCscMode,
	beq	.L67	@,
	cmp	r0, #4	@ enCscMode,
	beq	.L68	@,
	cmp	r0, #5	@ enCscMode,
	beq	.L69	@,
	cmp	r0, #6	@ enCscMode,
	beq	.L70	@,
	cmp	r0, #7	@ enCscMode,
	beq	.L71	@,
	cmp	r0, #8	@ enCscMode,
	beq	.L72	@,
	cmp	r0, #9	@ enCscMode,
	beq	.L73	@,
	cmp	r0, #10	@ enCscMode,
	beq	.L74	@,
	cmp	r0, #11	@ enCscMode,
	beq	.L75	@,
	mov	r3, #0	@ tmp329,
	mov	r0, #1024	@ tmp328,
	str	r3, [r1, #4]	@ tmp329, <variable>.csc_coef01
	mov	r4, #512	@ tmp341,
	str	r3, [r1, #8]	@ tmp329, <variable>.csc_coef02
	mov	ip, r3	@ D.24515, tmp329
	str	r3, [r1, #12]	@ tmp329, <variable>.csc_coef10
	str	r0, [r1, #32]	@ tmp328, <variable>.csc_coef22
	str	r0, [r1, #0]	@ tmp328, <variable>.csc_coef00
	str	r0, [r1, #16]	@ tmp328, <variable>.csc_coef11
	movw	r0, #:lower16:-512	@ tmp338,
	str	r3, [r1, #20]	@ tmp329, <variable>.csc_coef12
	movt	r0, #:upper16:-512	@ tmp338,
	str	r3, [r1, #24]	@ tmp329, <variable>.csc_coef20
	str	r3, [r1, #28]	@ tmp329, <variable>.csc_coef21
	mvn	r3, #63	@ tmp337,
	mov	r1, #64	@ tmp340,
	str	r4, [r2, #12]	@ tmp341, <variable>.csc_out_dc0
	str	r3, [r2, #8]	@ tmp337, <variable>.csc_in_dc2
	str	r0, [r2, #0]	@ tmp338, <variable>.csc_in_dc0
	str	r1, [r2, #20]	@ tmp340, <variable>.csc_out_dc2
	str	r0, [r2, #4]	@ tmp338, <variable>.csc_in_dc1
	str	r4, [r2, #16]	@ tmp341, <variable>.csc_out_dc1
	b	.L45	@
.L65:
	mov	ip, r0	@ D.24515, enCscMode
	str	r0, [r1, #32]	@ enCscMode, <variable>.csc_coef22
	str	r0, [r1, #4]	@ enCscMode, <variable>.csc_coef01
	movw	r3, #1192	@ tmp163,
	movw	r4, #1634	@ tmp165,
	str	r3, [r1, #24]	@ tmp163, <variable>.csc_coef20
	str	r4, [r1, #8]	@ tmp165, <variable>.csc_coef02
	movw	r4, #:lower16:-400	@ tmp167,
	str	r3, [r1, #0]	@ tmp163, <variable>.csc_coef00
	movt	r4, #:upper16:-400	@ tmp167,
	str	r3, [r1, #12]	@ tmp163, <variable>.csc_coef10
	movw	r3, #:lower16:-512	@ tmp173,
	str	r4, [r1, #16]	@ tmp167, <variable>.csc_coef11
	movt	r3, #:upper16:-512	@ tmp173,
	mvn	r4, #832	@ tmp168,
	str	r4, [r1, #20]	@ tmp168, <variable>.csc_coef12
	movw	r4, #2066	@ tmp170,
	str	r4, [r1, #28]	@ tmp170, <variable>.csc_coef21
	mvn	r1, #63	@ tmp172,
	str	r0, [r2, #12]	@ enCscMode, <variable>.csc_out_dc0
	str	r1, [r2, #8]	@ tmp172, <variable>.csc_in_dc2
	str	r3, [r2, #0]	@ tmp173, <variable>.csc_in_dc0
	str	r3, [r2, #4]	@ tmp173, <variable>.csc_in_dc1
	str	r0, [r2, #20]	@ enCscMode, <variable>.csc_out_dc2
	str	r0, [r2, #16]	@ enCscMode, <variable>.csc_out_dc1
.L45:
	mov	r0, ip	@, D.24515
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L64:
	movw	r0, #450	@ tmp153,
	mov	ip, r3	@ D.24515, tmp144
	str	r0, [r1, #24]	@ tmp153, <variable>.csc_coef20
	mov	r4, #512	@ tmp161,
	str	r0, [r1, #20]	@ tmp153, <variable>.csc_coef12
	mov	r0, #264	@ tmp148,
	str	r0, [r1, #0]	@ tmp148, <variable>.csc_coef00
	mov	r0, #516	@ tmp149,
	str	r0, [r1, #4]	@ tmp149, <variable>.csc_coef01
	mov	r0, #100	@ tmp150,
	str	r0, [r1, #8]	@ tmp150, <variable>.csc_coef02
	mvn	r0, #151	@ tmp151,
	str	r0, [r1, #12]	@ tmp151, <variable>.csc_coef10
	movw	r0, #:lower16:-298	@ tmp152,
	movt	r0, #:upper16:-298	@ tmp152,
	str	r0, [r1, #16]	@ tmp152, <variable>.csc_coef11
	mvn	r0, #376	@ tmp155,
	str	r0, [r1, #28]	@ tmp155, <variable>.csc_coef21
	mvn	r0, #72	@ tmp156,
.L59:
	str	r0, [r1, #32]	@ tmp186, <variable>.csc_coef22
	mov	r1, #64	@ tmp190,
	str	r4, [r2, #12]	@ tmp191, <variable>.csc_out_dc0
	str	r1, [r2, #20]	@ tmp190, <variable>.csc_out_dc2
	str	r3, [r2, #8]	@ tmp144, <variable>.csc_in_dc2
	str	r3, [r2, #4]	@ tmp144, <variable>.csc_in_dc1
	str	r3, [r2, #0]	@ tmp144, <variable>.csc_in_dc0
	str	r4, [r2, #16]	@ tmp191, <variable>.csc_out_dc1
	b	.L45	@
.L66:
	movw	r0, #450	@ tmp183,
	mov	ip, r3	@ D.24515, tmp144
	str	r0, [r1, #24]	@ tmp183, <variable>.csc_coef20
	mov	r4, #512	@ tmp191,
	str	r0, [r1, #20]	@ tmp183, <variable>.csc_coef12
	mov	r0, #188	@ tmp178,
	str	r0, [r1, #0]	@ tmp178, <variable>.csc_coef00
	movw	r0, #629	@ tmp179,
	str	r0, [r1, #4]	@ tmp179, <variable>.csc_coef01
	mov	r0, #63	@ tmp180,
	str	r0, [r1, #8]	@ tmp180, <variable>.csc_coef02
	mvn	r0, #102	@ tmp181,
	str	r0, [r1, #12]	@ tmp181, <variable>.csc_coef10
	movw	r0, #:lower16:-347	@ tmp182,
	movt	r0, #:upper16:-347	@ tmp182,
	str	r0, [r1, #16]	@ tmp182, <variable>.csc_coef11
	mvn	r0, #408	@ tmp185,
	str	r0, [r1, #28]	@ tmp185, <variable>.csc_coef21
	mvn	r0, #40	@ tmp186,
	b	.L59	@
.L67:
	str	r3, [r1, #32]	@ tmp144, <variable>.csc_coef22
	movw	r0, #1192	@ tmp193,
	str	r3, [r1, #4]	@ tmp144, <variable>.csc_coef01
	movw	r4, #1836	@ tmp195,
	str	r0, [r1, #24]	@ tmp193, <variable>.csc_coef20
	mov	ip, r3	@ D.24515, tmp144
	str	r4, [r1, #8]	@ tmp195, <variable>.csc_coef02
	mvn	r4, #217	@ tmp197,
	str	r0, [r1, #0]	@ tmp193, <variable>.csc_coef00
	str	r4, [r1, #16]	@ tmp197, <variable>.csc_coef11
	movw	r4, #:lower16:-547	@ tmp198,
	str	r0, [r1, #12]	@ tmp193, <variable>.csc_coef10
	movt	r4, #:upper16:-547	@ tmp198,
	mvn	r0, #63	@ tmp202,
	str	r4, [r1, #20]	@ tmp198, <variable>.csc_coef12
	movw	r4, #2166	@ tmp200,
	str	r4, [r1, #28]	@ tmp200, <variable>.csc_coef21
	movw	r1, #:lower16:-512	@ tmp203,
	str	r0, [r2, #8]	@ tmp202, <variable>.csc_in_dc2
	movt	r1, #:upper16:-512	@ tmp203,
	str	r3, [r2, #12]	@ tmp144, <variable>.csc_out_dc0
	str	r1, [r2, #0]	@ tmp203, <variable>.csc_in_dc0
	str	r1, [r2, #4]	@ tmp203, <variable>.csc_in_dc1
	str	r3, [r2, #20]	@ tmp144, <variable>.csc_out_dc2
	str	r3, [r2, #16]	@ tmp144, <variable>.csc_out_dc1
	b	.L45	@
.L68:
	str	r3, [r1, #12]	@ tmp144, <variable>.csc_coef10
	mov	ip, r3	@ D.24515, tmp144
	str	r3, [r1, #24]	@ tmp144, <variable>.csc_coef20
	mov	r0, #512	@ tmp221,
	mov	r3, #1024	@ tmp208,
	str	r3, [r1, #0]	@ tmp208, <variable>.csc_coef00
	mov	r3, #102	@ tmp209,
	str	r3, [r1, #4]	@ tmp209, <variable>.csc_coef01
	mov	r3, #196	@ tmp210,
	str	r3, [r1, #8]	@ tmp210, <variable>.csc_coef02
	movw	r3, #1014	@ tmp212,
	str	r3, [r1, #16]	@ tmp212, <variable>.csc_coef11
	mvn	r3, #112	@ tmp213,
	str	r3, [r1, #20]	@ tmp213, <variable>.csc_coef12
	mvn	r3, #73	@ tmp215,
	str	r3, [r1, #28]	@ tmp215, <variable>.csc_coef21
	movw	r3, #1007	@ tmp216,
.L62:
	str	r3, [r1, #32]	@ tmp231, <variable>.csc_coef22
	mvn	r3, #63	@ tmp232,
	mov	r1, #64	@ tmp235,
	str	r3, [r2, #8]	@ tmp232, <variable>.csc_in_dc2
	str	r0, [r2, #12]	@ tmp236, <variable>.csc_out_dc0
	movw	r3, #:lower16:-512	@ tmp233,
	str	r0, [r2, #16]	@ tmp236, <variable>.csc_out_dc1
	movt	r3, #:upper16:-512	@ tmp233,
	str	r1, [r2, #20]	@ tmp235, <variable>.csc_out_dc2
	str	r3, [r2, #0]	@ tmp233, <variable>.csc_in_dc0
	str	r3, [r2, #4]	@ tmp233, <variable>.csc_in_dc1
	b	.L45	@
.L69:
	str	r3, [r1, #12]	@ tmp144, <variable>.csc_coef10
	mov	ip, r3	@ D.24515, tmp144
	str	r3, [r1, #24]	@ tmp144, <variable>.csc_coef20
	mov	r0, #512	@ tmp236,
	mov	r3, #1024	@ tmp223,
	str	r3, [r1, #0]	@ tmp223, <variable>.csc_coef00
	mvn	r3, #117	@ tmp224,
	str	r3, [r1, #4]	@ tmp224, <variable>.csc_coef01
	mvn	r3, #212	@ tmp225,
	str	r3, [r1, #8]	@ tmp225, <variable>.csc_coef02
	movw	r3, #1043	@ tmp227,
	str	r3, [r1, #16]	@ tmp227, <variable>.csc_coef11
	mov	r3, #117	@ tmp228,
	str	r3, [r1, #20]	@ tmp228, <variable>.csc_coef12
	mov	r3, #77	@ tmp230,
	str	r3, [r1, #28]	@ tmp230, <variable>.csc_coef21
	movw	r3, #1050	@ tmp231,
	b	.L62	@
.L70:
	str	r3, [r1, #4]	@ tmp144, <variable>.csc_coef01
	mov	r4, #1024	@ tmp238,
	str	r3, [r1, #8]	@ tmp144, <variable>.csc_coef02
	mov	r5, #512	@ tmp251,
	str	r3, [r1, #12]	@ tmp144, <variable>.csc_coef10
	mov	ip, r3	@ D.24515, tmp144
	str	r3, [r1, #20]	@ tmp144, <variable>.csc_coef12
	movw	r0, #:lower16:-512	@ tmp248,
	str	r3, [r1, #24]	@ tmp144, <variable>.csc_coef20
	movt	r0, #:upper16:-512	@ tmp248,
	str	r3, [r1, #28]	@ tmp144, <variable>.csc_coef21
	mvn	r3, #63	@ tmp247,
	str	r4, [r1, #32]	@ tmp238, <variable>.csc_coef22
	str	r4, [r1, #0]	@ tmp238, <variable>.csc_coef00
	str	r4, [r1, #16]	@ tmp238, <variable>.csc_coef11
	mov	r1, #64	@ tmp250,
	str	r5, [r2, #12]	@ tmp251, <variable>.csc_out_dc0
	str	r3, [r2, #8]	@ tmp247, <variable>.csc_in_dc2
	str	r0, [r2, #0]	@ tmp248, <variable>.csc_in_dc0
	str	r1, [r2, #20]	@ tmp250, <variable>.csc_out_dc2
	str	r0, [r2, #4]	@ tmp248, <variable>.csc_in_dc1
	str	r5, [r2, #16]	@ tmp251, <variable>.csc_out_dc1
	b	.L45	@
.L71:
	movw	r0, #1436	@ tmp255,
	mov	ip, r3	@ D.24515, tmp144
	str	r0, [r1, #8]	@ tmp255, <variable>.csc_coef02
	movw	r0, #:lower16:-352	@ tmp257,
	movt	r0, #:upper16:-352	@ tmp257,
	str	r0, [r1, #16]	@ tmp257, <variable>.csc_coef11
	movw	r0, #:lower16:-731	@ tmp258,
	movt	r0, #:upper16:-731	@ tmp258,
	str	r0, [r1, #20]	@ tmp258, <variable>.csc_coef12
	movw	r0, #1815	@ tmp260,
	mov	r4, #1024	@ tmp253,
	str	r3, [r1, #32]	@ tmp144, <variable>.csc_coef22
	str	r3, [r1, #4]	@ tmp144, <variable>.csc_coef01
	str	r4, [r1, #24]	@ tmp253, <variable>.csc_coef20
	str	r4, [r1, #0]	@ tmp253, <variable>.csc_coef00
	str	r4, [r1, #12]	@ tmp253, <variable>.csc_coef10
.L61:
	str	r0, [r1, #28]	@ tmp275, <variable>.csc_coef21
	movw	r1, #:lower16:-512	@ tmp278,
	str	r3, [r2, #12]	@ tmp269, <variable>.csc_out_dc0
	movt	r1, #:upper16:-512	@ tmp278,
	str	r3, [r2, #8]	@ tmp269, <variable>.csc_in_dc2
	str	r1, [r2, #0]	@ tmp278, <variable>.csc_in_dc0
	str	r1, [r2, #4]	@ tmp278, <variable>.csc_in_dc1
	str	r3, [r2, #20]	@ tmp269, <variable>.csc_out_dc2
	str	r3, [r2, #16]	@ tmp269, <variable>.csc_out_dc1
	b	.L45	@
.L72:
	mov	r3, #0	@ tmp269,
	mov	r4, #1024	@ tmp268,
	movw	r0, #1613	@ tmp270,
	str	r3, [r1, #32]	@ tmp269, <variable>.csc_coef22
	str	r0, [r1, #8]	@ tmp270, <variable>.csc_coef02
	mov	ip, r3	@ D.24515, tmp269
	mvn	r0, #190	@ tmp272,
	str	r3, [r1, #4]	@ tmp269, <variable>.csc_coef01
	str	r0, [r1, #16]	@ tmp272, <variable>.csc_coef11
	movw	r0, #:lower16:-479	@ tmp273,
	str	r4, [r1, #24]	@ tmp268, <variable>.csc_coef20
	movt	r0, #:upper16:-479	@ tmp273,
	str	r4, [r1, #0]	@ tmp268, <variable>.csc_coef00
	str	r0, [r1, #20]	@ tmp273, <variable>.csc_coef12
	movw	r0, #1901	@ tmp275,
	str	r4, [r1, #12]	@ tmp268, <variable>.csc_coef10
	b	.L61	@
.L73:
	mov	r3, #0	@ tmp292,
	movw	r4, #306	@ tmp283,
	mov	ip, r3	@ D.24515, tmp292
	str	r4, [r1, #0]	@ tmp283, <variable>.csc_coef00
	movw	r4, #601	@ tmp284,
	str	r4, [r1, #4]	@ tmp284, <variable>.csc_coef01
	mov	r4, #117	@ tmp285,
	str	r4, [r1, #8]	@ tmp285, <variable>.csc_coef02
	mvn	r4, #172	@ tmp286,
	str	r4, [r1, #12]	@ tmp286, <variable>.csc_coef10
	movw	r4, #:lower16:-339	@ tmp287,
	movt	r4, #:upper16:-339	@ tmp287,
	str	r4, [r1, #16]	@ tmp287, <variable>.csc_coef11
	mvn	r4, #428	@ tmp290,
	str	r4, [r1, #28]	@ tmp290, <variable>.csc_coef21
	mvn	r4, #82	@ tmp291,
	mov	r0, #512	@ tmp288,
	str	r0, [r1, #20]	@ tmp288, <variable>.csc_coef12
	str	r0, [r1, #24]	@ tmp288, <variable>.csc_coef20
.L60:
	str	r4, [r1, #32]	@ tmp306, <variable>.csc_coef22
	str	r0, [r2, #12]	@ tmp303, <variable>.csc_out_dc0
	str	r3, [r2, #8]	@ tmp307, <variable>.csc_in_dc2
	str	r3, [r2, #4]	@ tmp307, <variable>.csc_in_dc1
	str	r3, [r2, #0]	@ tmp307, <variable>.csc_in_dc0
	str	r3, [r2, #20]	@ tmp307, <variable>.csc_out_dc2
	str	r0, [r2, #16]	@ tmp303, <variable>.csc_out_dc1
	b	.L45	@
.L63:
	mov	r0, #1	@,
	mov	r1, #41	@,
	ldr	r2, .L76	@,
	movw	r3, #1579	@,
	movw	ip, #:lower16:.LC0	@ tmp147,
	movt	ip, #:upper16:.LC0	@ tmp147,
	str	ip, [sp, #0]	@ tmp147,
	bl	HI_LogOut	@
	mvn	ip, #0	@ D.24515,
	b	.L45	@
.L74:
	mov	r3, #0	@ tmp307,
	mov	r0, #512	@ tmp303,
	mov	r4, #218	@ tmp298,
	mov	ip, r3	@ D.24515, tmp307
	str	r4, [r1, #0]	@ tmp298, <variable>.csc_coef00
	mov	r4, #732	@ tmp299,
	str	r0, [r1, #20]	@ tmp303, <variable>.csc_coef12
	str	r4, [r1, #4]	@ tmp299, <variable>.csc_coef01
	mov	r4, #74	@ tmp300,
	str	r0, [r1, #24]	@ tmp303, <variable>.csc_coef20
	str	r4, [r1, #8]	@ tmp300, <variable>.csc_coef02
	mvn	r4, #117	@ tmp301,
	str	r4, [r1, #12]	@ tmp301, <variable>.csc_coef10
	movw	r4, #:lower16:-394	@ tmp302,
	movt	r4, #:upper16:-394	@ tmp302,
	str	r4, [r1, #16]	@ tmp302, <variable>.csc_coef11
	mvn	r4, #464	@ tmp305,
	str	r4, [r1, #28]	@ tmp305, <variable>.csc_coef21
	mvn	r4, #46	@ tmp306,
	b	.L60	@
.L75:
	mov	r3, #0	@ tmp314,
	mov	r4, #1024	@ tmp313,
	str	r3, [r1, #4]	@ tmp314, <variable>.csc_coef01
	mov	r0, #2	@ tmp325,
	str	r3, [r1, #8]	@ tmp314, <variable>.csc_coef02
	mov	ip, r3	@ D.24515, tmp314
	str	r3, [r1, #12]	@ tmp314, <variable>.csc_coef10
	str	r4, [r1, #32]	@ tmp313, <variable>.csc_coef22
	str	r4, [r1, #0]	@ tmp313, <variable>.csc_coef00
	str	r4, [r1, #16]	@ tmp313, <variable>.csc_coef11
	str	r3, [r1, #20]	@ tmp314, <variable>.csc_coef12
	str	r3, [r1, #24]	@ tmp314, <variable>.csc_coef20
	str	r3, [r1, #28]	@ tmp314, <variable>.csc_coef21
	str	r0, [r2, #12]	@ tmp325, <variable>.csc_out_dc0
	str	r3, [r2, #8]	@ tmp314, <variable>.csc_in_dc2
	str	r3, [r2, #4]	@ tmp314, <variable>.csc_in_dc1
	str	r3, [r2, #0]	@ tmp314, <variable>.csc_in_dc0
	str	r0, [r2, #20]	@ tmp325, <variable>.csc_out_dc2
	str	r0, [r2, #16]	@ tmp325, <variable>.csc_out_dc1
	b	.L45	@
.L77:
	.align	2
.L76:
	.word	.LANCHOR0+512
	.fnend
	.size	PQ_MNG_GetCscCoef, .-PQ_MNG_GetCscCoef
	.align	2
	.global	PQ_MNG_GetCSCMode
	.type	PQ_MNG_GetCSCMode, %function
PQ_MNG_GetCSCMode:
	.fnstart
.LFB664:
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
	cmp	r1, #0	@ pstCscMode
	beq	.L82	@,
	movw	r3, #:lower16:.LANCHOR1	@ tmp140,
	movt	r3, #:upper16:.LANCHOR1	@ tmp140,
	add	ip, r3, r0, asl #3	@, tmp143, tmp140, enDisplayId,
	mov	r0, #0	@ D.24378,
	ldr	r2, [ip, #32]	@ <variable>.enCSC, <variable>.enCSC
	ldr	r3, [ip, #28]	@ <variable>.bCSCEn, <variable>.bCSCEn
	str	r2, [r1, #4]	@ <variable>.enCSC, <variable>.enCSC
	str	r3, [r1, #0]	@ <variable>.bCSCEn, <variable>.bCSCEn
.L80:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L82:
	mov	r0, #1	@,
	mov	r1, #41	@,
	ldr	r2, .L83	@,
	movw	r3, #1358	@,
	movw	ip, #:lower16:.LC1	@ tmp139,
	movt	ip, #:upper16:.LC1	@ tmp139,
	str	ip, [sp, #0]	@ tmp139,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.24378,
	b	.L80	@
.L84:
	.align	2
.L83:
	.word	.LANCHOR0+532
	.fnend
	.size	PQ_MNG_GetCSCMode, .-PQ_MNG_GetCSCMode
	.align	2
	.type	PQ_MNG_SetCSCPictureParam, %function
PQ_MNG_SetCSCPictureParam:
	.fnstart
.LFB662:
	@ args = 0, pretend = 0, frame = 208
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #228
	sub	sp, sp, #228	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r0, #4	@ enDisplayId,
	movls	r3, #0	@, tmp192
	movhi	r3, #1	@, tmp192
	cmp	r1, #0	@ pstCSCParameter,
	orreq	r3, r3, #1	@,, tmp195, tmp192
	mov	r5, r0	@ enDisplayId, enDisplayId
	cmp	r3, #0	@ tmp195,
	mov	r4, r1	@ pstCSCParameter, pstCSCParameter
	bne	.L105	@,
	ldrh	r2, [r1, #40]	@ <variable>.u16InputColorSpace, <variable>.u16InputColorSpace
	cmp	r2, #0	@ <variable>.u16InputColorSpace,
	beq	.L88	@,
	ldrh	r3, [r1, #42]	@ <variable>.u16OutputColorSpace, <variable>.u16OutputColorSpace
	cmp	r3, #0	@ <variable>.u16OutputColorSpace,
	beq	.L88	@,
	cmp	r2, #9	@ <variable>.u16InputColorSpace,
	beq	.L106	@,
	cmp	r3, #9	@ <variable>.u16OutputColorSpace,
	beq	.L107	@,
	ldr	r8, [r1, #20]	@ <variable>.as16ColorTempGain, <variable>.as16ColorTempGain
	movw	r6, #:lower16:.LANCHOR0	@ tmp876,
	movt	r6, #:upper16:.LANCHOR0	@ tmp876,
	cmp	r3, #1	@ <variable>.u16OutputColorSpace,
	add	sl, r6, r2, asl #3	@, tmp879, tmp876, <variable>.u16InputColorSpace,
	ldr	r0, [r1, #4]	@ <variable>.u16Contrast, <variable>.u16Contrast
	ldr	r2, [r4, #8]	@ <variable>.u16Hue, <variable>.u16Hue
	ldr	r1, [r1, #12]	@ <variable>.u16Saturation, <variable>.u16Saturation
	ldr	r3, [r4, #16]	@ <variable>.as16ColorTempGain, <variable>.as16ColorTempGain
	ldreq	lr, [sl, #668]	@ pCSCMatrix.412, CSC_YCbCr_MatrixTbl
	ldrne	lr, [sl, #672]	@ pCSCMatrix.412, CSC_YCbCr_MatrixTbl
	str	r8, [sp, #0]	@ <variable>.as16ColorTempGain,
	ldr	ip, [r4, #24]	@ <variable>.as16ColorTempGain, <variable>.as16ColorTempGain
	str	lr, [sp, #8]	@ pCSCMatrix.412,
	sub	lr, fp, #140	@ tmp894,,
	str	lr, [sp, #12]	@ tmp894,
	str	ip, [sp, #4]	@ <variable>.as16ColorTempGain,
	bl	PQ_MNG_CalCSCCoefTprtYCbCrtoYCbCr	@
	ldr	r3, [fp, #-136]	@, stCSCMatrix.csc_coef01
	ldr	r2, [fp, #-124]	@, stCSCMatrix.csc_coef11
	ldr	sl, [fp, #-140]	@ prephitmp.411, stCSCMatrix.csc_coef00
	str	r3, [fp, #-224]	@, %sfp
	str	r2, [fp, #-220]	@, %sfp
	ldr	r7, [fp, #-132]	@ prephitmp.421, stCSCMatrix.csc_coef02
	ldr	ip, [fp, #-128]	@ prephitmp.422, stCSCMatrix.csc_coef10
	sub	r1, fp, #120
	ldmia	r1, {r1, r8, lr}	@ phole ldm
	ldr	r9, [fp, #-108]	@ prephitmp.426, stCSCMatrix.csc_coef22
	ldrh	r2, [r4, #40]	@ <variable>.u16InputColorSpace, <variable>.u16InputColorSpace
	ldrh	r3, [r4, #42]	@ <variable>.u16OutputColorSpace, <variable>.u16OutputColorSpace
.L92:
	str	sl, [fp, #-104]	@ prephitmp.411, st_csc_coef.csc_coef00
	cmp	r2, #9	@ <variable>.u16InputColorSpace,
	ldr	r0, [fp, #-220]	@, %sfp
	movw	r6, #:lower16:-2139062143	@ tmp900,
	ldr	sl, [fp, #-224]	@, %sfp
	movt	r6, #:upper16:-2139062143	@ tmp900,
	str	r1, [fp, #-84]	@ prephitmp.424, st_csc_coef.csc_coef12
	str	r0, [fp, #-88]	@, st_csc_coef.csc_coef11
	str	lr, [fp, #-76]	@ prephitmp.425, st_csc_coef.csc_coef21
	mov	lr, #100	@ tmp897,
	str	sl, [fp, #-100]	@, st_csc_coef.csc_coef01
	str	r7, [fp, #-96]	@ prephitmp.421, st_csc_coef.csc_coef02
	str	ip, [fp, #-92]	@ prephitmp.422, st_csc_coef.csc_coef10
	str	r8, [fp, #-80]	@ prephitmp.384, st_csc_coef.csc_coef20
	str	r9, [fp, #-72]	@ prephitmp.426, st_csc_coef.csc_coef22
	ldr	ip, [r4, #0]	@ <variable>.u16Brightness, <variable>.u16Brightness
	mul	r2, lr, ip	@ tmp895, tmp897, <variable>.u16Brightness
	smull	lr, r6, r6, r2	@, tmp899, tmp900, tmp895
	mov	r1, r2, asr #31	@ tmp903, tmp895,
	add	r0, r6, r2	@ tmp901, tmp899, tmp895
	rsb	r2, r1, r0, asr #7	@, tmp898, tmp903, tmp901,
	sub	r1, r2, #50	@ s32Brightness, tmp898,
	beq	.L108	@,
	cmp	r3, #9	@ <variable>.u16OutputColorSpace,
	beq	.L109	@,
	sub	r2, r2, #34	@ tmp945, tmp898,
	mov	r1, #512	@ tmp947,
	mvn	lr, #63	@ tmp942,
	movw	r3, #:lower16:-512	@ tmp943,
	mov	ip, r2, asl #2	@ tmp946, tmp945,
	movt	r3, #:upper16:-512	@ tmp943,
	str	r1, [fp, #-56]	@ tmp947, stDcCoef.csc_out_dc0
	str	lr, [fp, #-60]	@ tmp942, stDcCoef.csc_in_dc2
	str	ip, [fp, #-48]	@ tmp946, stDcCoef.csc_out_dc2
	str	r1, [fp, #-52]	@ tmp947, stDcCoef.csc_out_dc1
	str	r3, [fp, #-68]	@ tmp943, stDcCoef.csc_in_dc0
	str	r3, [fp, #-64]	@ tmp943, stDcCoef.csc_in_dc1
.L102:
	sub	r1, fp, #68	@,,
	mov	r0, r5	@, enDisplayId
	bl	PQ_HAL_SetCscDcCoef	@
	mov	r0, r5	@, enDisplayId
	sub	r1, fp, #104	@,,
	bl	PQ_HAL_SetCscCoef	@
	mov	r0, #0	@ D.24322,
.L87:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L106:
	cmp	r3, #9	@ <variable>.u16OutputColorSpace,
	beq	.L110	@,
	ldr	r6, [r4, #8]	@ <variable>.u16Hue, <variable>.u16Hue
	movw	r0, #:lower16:.LANCHOR0	@ tmp953,
	ldr	sl, [r4, #4]	@ <variable>.u16Contrast, <variable>.u16Contrast
	movt	r0, #:upper16:.LANCHOR0	@ tmp953,
	ldr	lr, [r1, #44]	@ <variable>.bFullRange, <variable>.bFullRange
	cmp	r3, #1	@ <variable>.u16OutputColorSpace,
	rsb	r9, r6, r6, asl #4	@, tmp494, <variable>.u16Hue, <variable>.u16Hue,
	ldr	r7, [r4, #12]	@ <variable>.u16Saturation, <variable>.u16Saturation
	add	ip, sl, sl, asl #2	@, tmp480, <variable>.u16Contrast, <variable>.u16Contrast,
	ldr	sl, [r4, #16]	@ <variable>.as16ColorTempGain, <variable>.as16ColorTempGain
	add	r1, r0, lr, asl #3	@, tmp467, tmp953, <variable>.bFullRange,
	mov	r9, r9, asl #2	@ tmp495, tmp494,
	movw	lr, #:lower16:-2139062143	@ tmp497,
	movt	lr, #:upper16:-2139062143	@ tmp497,
	mov	r6, ip, asl #3	@, tmp480,
	str	r6, [fp, #-144]	@, %sfp
	umull	ip, r9, lr, r9	@, tmp496, tmp497, tmp495
	add	ip, sl, sl, asl #2	@,, <variable>.as16ColorTempGain, <variable>.as16ColorTempGain,
	ldr	sl, [fp, #-144]	@, %sfp
	add	r7, r7, r7, asl #2	@, tmp487, <variable>.u16Saturation, <variable>.u16Saturation,
	ldreq	r8, [r1, #580]	@ pCSCMatrix, CSC_RGBPrim_to_YCbCr_MatrixTbl
	ldrne	r8, [r1, #584]	@ pCSCMatrix, CSC_RGBPrim_to_YCbCr_MatrixTbl
	movw	r1, #:lower16:-1600085855	@ tmp483,
	movt	r1, #:upper16:-1600085855	@ tmp483,
	ldr	r6, [r4, #20]	@ <variable>.as16ColorTempGain, <variable>.as16ColorTempGain
	ldr	lr, [r4, #24]	@ <variable>.as16ColorTempGain, <variable>.as16ColorTempGain
	mov	r7, r7, asl #3	@ tmp488, tmp487,
	str	ip, [fp, #-156]	@, %sfp
	mov	r9, r9, lsr #7	@ Hue, tmp496,
	umull	ip, sl, r1, sl	@,, tmp483,
	add	lr, lr, lr, asl #2	@,, <variable>.as16ColorTempGain, <variable>.as16ColorTempGain,
	str	lr, [fp, #-152]	@, %sfp
	add	lr, r0, r9, asl #2	@, tmp544, tmp953, Hue,
	ldr	r9, [r0, r9, asl #2]	@ D.25169, COS_TABLE
	add	r6, r6, r6, asl #2	@, tmp508, <variable>.as16ColorTempGain, <variable>.as16ColorTempGain,
	ldr	r0, [fp, #-156]	@, %sfp
	mov	r6, r6, asl #3	@, tmp508,
	str	r6, [fp, #-164]	@, %sfp
	str	sl, [fp, #-144]	@, %sfp
	umull	sl, ip, r1, r7	@,, tmp483, tmp488
	mov	sl, r0, asl #3	@,,
	ldr	r7, [fp, #-152]	@, %sfp
	str	sl, [fp, #-156]	@, %sfp
	ldr	r6, [fp, #-144]	@, %sfp
	ldr	sl, [lr, #244]	@ D.25164, SIN_TABLE
	mov	lr, r7, asl #3	@,,
	str	ip, [fp, #-148]	@, %sfp
	ldr	ip, [r8, #24]	@, <variable>.csc_coef20
	ldr	r7, [fp, #-148]	@, %sfp
	str	lr, [fp, #-192]	@, %sfp
	str	ip, [fp, #-160]	@, %sfp
	mov	ip, r6, lsr #5	@,,
	ldr	r0, [r8, #28]	@, <variable>.csc_coef21
	mov	lr, r7, lsr #5	@,,
	str	ip, [fp, #-152]	@, %sfp
	movw	r7, #:lower16:274877907	@ tmp550,
	str	lr, [fp, #-176]	@, %sfp
	movt	r7, #:upper16:274877907	@ tmp550,
	str	r0, [fp, #-168]	@, %sfp
	movw	lr, #:lower16:1125899907	@ tmp563,
	ldr	r0, [r8, #12]	@ <variable>.csc_coef10, <variable>.csc_coef10
	movt	lr, #:upper16:1125899907	@ tmp563,
	ldr	ip, [r8, #16]	@ <variable>.csc_coef11, <variable>.csc_coef11
	mul	r6, r0, r9	@, <variable>.csc_coef10, D.25169
	mul	r0, ip, r9	@, <variable>.csc_coef11, D.25169
	str	r6, [fp, #-180]	@, %sfp
	str	r0, [fp, #-204]	@, %sfp
	ldr	ip, [r8, #0]	@, <variable>.csc_coef00
	str	ip, [fp, #-200]	@, %sfp
	ldr	r6, [r8, #20]	@, <variable>.csc_coef12
	mul	r0, r6, r9	@,, D.25169
	ldr	r6, [fp, #-160]	@, %sfp
	str	r0, [fp, #-144]	@, %sfp
	ldr	r0, [fp, #-180]	@, %sfp
	ldr	ip, [r8, #4]	@, <variable>.csc_coef01
	str	ip, [fp, #-212]	@, %sfp
	mul	ip, r6, sl	@ tmp553,, D.25164
	mov	r6, r0, asr #31	@,,
	ldr	r0, [fp, #-168]	@, %sfp
	str	r6, [fp, #-184]	@, %sfp
	mul	r6, r0, sl	@,, D.25164
	ldr	r0, [fp, #-204]	@, %sfp
	str	r6, [fp, #-148]	@, %sfp
	mov	r6, r0, asr #31	@,,
	str	r6, [fp, #-208]	@, %sfp
	ldr	r0, [r8, #32]	@, <variable>.csc_coef22
	mul	r6, r0, sl	@,, D.25164
	ldr	r0, [fp, #-144]	@, %sfp
	str	r6, [fp, #-172]	@, %sfp
	mov	r6, r0, asr #31	@,,
	ldr	r0, [fp, #-192]	@, %sfp
	str	r6, [fp, #-220]	@, %sfp
	umull	r6, r0, r1, r0	@,, tmp483,
	ldr	r6, [fp, #-156]	@, %sfp
	str	r0, [fp, #-196]	@, %sfp
	mov	r0, ip, asr #31	@, tmp553,
	str	r0, [fp, #-188]	@, %sfp
	umull	r0, r6, r1, r6	@,, tmp483,
	ldr	r0, [fp, #-148]	@, %sfp
	str	r6, [fp, #-156]	@, %sfp
	mov	r6, r0, asr #31	@,,
	ldr	r0, [fp, #-164]	@, %sfp
	str	r6, [fp, #-216]	@, %sfp
	umull	r6, r0, r1, r0	@,, tmp483,
	ldr	r6, [fp, #-152]	@, %sfp
	str	r0, [fp, #-192]	@, %sfp
	ldr	r0, [fp, #-196]	@, %sfp
	mov	r1, r0, lsr #5	@,,
	ldr	r0, [fp, #-176]	@, %sfp
	str	r1, [fp, #-164]	@, %sfp
	mul	r1, r6, r0	@ D.25160,,
	ldr	r0, [fp, #-156]	@, %sfp
	mov	r6, r0, lsr #5	@,,
	ldr	r0, [fp, #-180]	@, %sfp
	str	r6, [fp, #-176]	@, %sfp
	smull	r6, r0, r7, r0	@,, tmp550,
	str	r0, [fp, #-196]	@, %sfp
	ldr	r6, [fp, #-192]	@, %sfp
	mov	r0, r6, lsr #5	@,,
	str	r0, [fp, #-156]	@, %sfp
	smull	r0, r6, r7, ip	@,, tmp550, tmp553
	ldr	ip, [fp, #-204]	@, %sfp
	str	r6, [fp, #-180]	@, %sfp
	ldr	r6, [fp, #-172]	@, %sfp
	mov	r0, r6, asr #31	@,,
	str	r0, [fp, #-224]	@, %sfp
	smull	r0, r6, r7, ip	@,, tmp550,
	ldr	ip, [fp, #-196]	@, %sfp
	ldr	r0, [fp, #-184]	@, %sfp
	str	r6, [fp, #-204]	@, %sfp
	rsb	r6, r0, ip, asr #6	@,,,,
	ldr	r0, [fp, #-148]	@, %sfp
	str	r6, [fp, #-192]	@, %sfp
	smull	r6, ip, r7, r0	@,, tmp550,
	ldr	r0, [fp, #-180]	@, %sfp
	ldr	r6, [fp, #-188]	@, %sfp
	str	ip, [fp, #-148]	@, %sfp
	rsb	ip, r6, r0, asr #6	@,,,,
	ldr	r0, [fp, #-144]	@, %sfp
	str	ip, [fp, #-196]	@, %sfp
	smull	r6, ip, r7, r0	@, tmp589, tmp550,
	ldr	r6, [fp, #-204]	@, %sfp
	ldr	r0, [fp, #-208]	@, %sfp
	rsb	r0, r0, r6, asr #6	@,,,,
	str	r0, [fp, #-188]	@, %sfp
	ldr	r0, [fp, #-172]	@, %sfp
	smull	r6, r0, r7, r0	@,, tmp550,
	ldr	r6, [fp, #-148]	@, %sfp
	str	r0, [fp, #-204]	@, %sfp
	ldr	r0, [fp, #-216]	@, %sfp
	rsb	r0, r0, r6, asr #6	@,,,,
	ldr	r6, [fp, #-164]	@, %sfp
	str	r0, [fp, #-180]	@, %sfp
	mul	r0, r6, r1	@,, D.25160
	ldr	r6, [fp, #-220]	@, %sfp
	rsb	ip, r6, ip, asr #6	@, tmp588,, tmp589,
	str	r0, [fp, #-172]	@, %sfp
	ldr	r0, [fp, #-176]	@, %sfp
	mul	r6, r0, r1	@,, D.25160
	ldr	r0, [fp, #-196]	@, %sfp
	str	r6, [fp, #-148]	@, %sfp
	ldr	r6, [fp, #-192]	@, %sfp
	add	r6, r6, r0	@,,
	ldr	r0, [fp, #-156]	@, %sfp
	str	r6, [fp, #-184]	@, %sfp
	mul	r1, r0, r1	@,, D.25160
	str	r1, [fp, #-144]	@, %sfp
	ldr	r6, [fp, #-204]	@, %sfp
	ldr	r0, [fp, #-224]	@, %sfp
	rsb	r1, r0, r6, asr #6	@, tmp595,,,
	ldr	r0, [fp, #-188]	@, %sfp
	ldr	r6, [fp, #-180]	@, %sfp
	add	r1, ip, r1	@, tmp588, tmp595
	str	r1, [fp, #-180]	@, %sfp
	add	r0, r0, r6	@,,
	str	r0, [fp, #-188]	@, %sfp
	ldr	r0, [r8, #32]	@, <variable>.csc_coef22
	ldr	r1, [fp, #-184]	@, %sfp
	mul	r6, r0, r9	@,, D.25169
	ldr	r0, [fp, #-148]	@, %sfp
	str	r6, [fp, #-192]	@, %sfp
	ldr	ip, [r8, #8]	@, <variable>.csc_coef02
	ldr	r6, [fp, #-188]	@, %sfp
	str	ip, [fp, #-196]	@, %sfp
	mul	ip, r0, r1	@ tmp561,,
	ldr	r1, [fp, #-144]	@, %sfp
	movw	r0, #:lower16:1759218605	@,
	movt	r0, #:upper16:1759218605	@,
	str	r0, [fp, #-228]	@, %sfp
	mul	r1, r1, r6	@,,
	ldr	r6, [fp, #-172]	@, %sfp
	str	r1, [fp, #-188]	@, %sfp
	ldr	r1, [fp, #-180]	@, %sfp
	mul	r0, r6, r1	@,,
	ldr	r6, [fp, #-192]	@, %sfp
	mov	r1, r6, asr #31	@,,
	str	r1, [fp, #-204]	@, %sfp
	ldr	r6, [fp, #-188]	@, %sfp
	str	r0, [fp, #-216]	@, %sfp
	smull	r1, r0, lr, ip	@,, tmp563, tmp561
	mov	ip, ip, asr #31	@ tmp565, tmp561,
	str	r0, [fp, #-180]	@, %sfp
	smull	r0, r1, lr, r6	@,, tmp563,
	ldr	r6, [fp, #-188]	@, %sfp
	mov	r0, r6, asr #31	@,,
	str	r0, [fp, #-208]	@, %sfp
	str	r1, [fp, #-184]	@, %sfp
	ldr	r1, [fp, #-216]	@, %sfp
	smull	r0, r6, lr, r1	@,, tmp563,
	ldr	r1, [fp, #-216]	@, %sfp
	mov	r0, r1, asr #31	@,,
	ldr	r1, [fp, #-184]	@, %sfp
	str	r6, [fp, #-188]	@, %sfp
	ldr	r6, [fp, #-180]	@, %sfp
	str	r0, [fp, #-216]	@, %sfp
	ldr	r0, [fp, #-208]	@, %sfp
	rsb	ip, ip, r6, asr #18	@, prephitmp.422, tmp565,,
	str	ip, [fp, #-128]	@ prephitmp.422, stCSCMatrix.csc_coef10
	rsb	r6, r0, r1, asr #18	@,,,,
	str	r6, [fp, #-220]	@, %sfp
	ldr	r0, [r8, #12]	@, <variable>.csc_coef10
	str	r6, [fp, #-124]	@, stCSCMatrix.csc_coef11
	ldr	r6, [fp, #-216]	@, %sfp
	str	r0, [fp, #-180]	@, %sfp
	ldr	r0, [fp, #-188]	@, %sfp
	ldr	r1, [r8, #16]	@, <variable>.csc_coef11
	str	r1, [fp, #-184]	@, %sfp
	rsb	r1, r6, r0, asr #18	@, prephitmp.424,,,
	ldr	r0, [fp, #-160]	@, %sfp
	str	r1, [fp, #-120]	@ prephitmp.424, stCSCMatrix.csc_coef12
	ldr	r8, [r8, #20]	@ <variable>.csc_coef12, <variable>.csc_coef12
	mul	r6, r0, r9	@,, D.25169
	ldr	r0, [fp, #-180]	@, %sfp
	mul	r8, r8, sl	@ tmp653, <variable>.csc_coef12, D.25164
	str	r6, [fp, #-160]	@, %sfp
	mul	r6, r0, sl	@,, D.25164
	ldr	r0, [fp, #-168]	@, %sfp
	mul	r9, r0, r9	@ tmp626,, D.25169
	str	r6, [fp, #-180]	@, %sfp
	ldr	r6, [fp, #-160]	@, %sfp
	mov	r0, r6, asr #31	@,,
	ldr	r6, [fp, #-184]	@, %sfp
	str	r0, [fp, #-168]	@, %sfp
	mul	r0, r6, sl	@,, D.25164
	mov	r6, r8, asr #31	@, tmp653,
	str	r6, [fp, #-216]	@, %sfp
	smull	r6, sl, r7, r8	@,, tmp550, tmp653
	ldr	r6, [fp, #-160]	@, %sfp
	ldr	r8, [fp, #-180]	@, %sfp
	str	r0, [fp, #-224]	@, %sfp
	str	sl, [fp, #-208]	@, %sfp
	mov	r0, r8, asr #31	@,,
	str	r0, [fp, #-184]	@, %sfp
	mov	r8, r9, asr #31	@, tmp626,
	smull	r0, sl, r7, r6	@,, tmp550,
	ldr	r0, [fp, #-180]	@, %sfp
	ldr	r6, [fp, #-224]	@, %sfp
	str	r8, [fp, #-188]	@, %sfp
	str	sl, [fp, #-160]	@, %sfp
	smull	sl, r8, r7, r0	@, tmp616, tmp550,
	mov	sl, r6, asr #31	@,,
	ldr	r0, [fp, #-160]	@, %sfp
	smull	r6, r9, r7, r9	@, tmp629, tmp550, tmp626
	ldr	r6, [fp, #-168]	@, %sfp
	str	sl, [fp, #-180]	@, %sfp
	rsb	sl, r6, r0, asr #6	@,,,,
	ldr	r6, [fp, #-224]	@, %sfp
	ldr	r0, [fp, #-184]	@, %sfp
	str	sl, [fp, #-160]	@, %sfp
	smull	r6, sl, r7, r6	@, tmp636, tmp550,
	rsb	r6, r0, r8, asr #6	@,,, tmp616,
	str	r6, [fp, #-168]	@, %sfp
	ldr	r8, [fp, #-192]	@, %sfp
	smull	r6, r7, r7, r8	@, tmp649, tmp550,
	ldr	r6, [fp, #-188]	@, %sfp
	rsb	r0, r6, r9, asr #6	@,,, tmp629,
	ldr	r9, [fp, #-176]	@, %sfp
	str	r0, [fp, #-184]	@, %sfp
	ldr	r0, [fp, #-152]	@, %sfp
	ldr	r6, [fp, #-180]	@, %sfp
	mul	r8, r9, r0	@,,
	ldr	r9, [fp, #-156]	@, %sfp
	rsb	sl, r6, sl, asr #6	@, tmp635,, tmp636,
	ldr	r6, [fp, #-216]	@, %sfp
	str	r8, [fp, #-176]	@, %sfp
	mul	r8, r9, r0	@,,
	ldr	r0, [fp, #-208]	@, %sfp
	ldr	r9, [fp, #-152]	@, %sfp
	str	r8, [fp, #-156]	@, %sfp
	rsb	r8, r6, r0, asr #6	@, tmp655,,,
	ldr	r6, [fp, #-164]	@, %sfp
	mul	r0, r6, r9	@,,
	ldr	r9, [fp, #-168]	@, %sfp
	ldr	r6, [fp, #-204]	@, %sfp
	rsb	r7, r6, r7, asr #6	@, tmp648,, tmp649,
	str	r0, [fp, #-152]	@, %sfp
	ldr	r0, [fp, #-160]	@, %sfp
	rsb	r6, r9, r0	@,,
	ldr	r0, [fp, #-184]	@, %sfp
	str	r6, [fp, #-164]	@, %sfp
	rsb	r9, sl, r0	@, tmp635,
	rsb	sl, r8, r7	@, tmp655, tmp648
	str	r9, [fp, #-160]	@, %sfp
	ldr	r8, [fp, #-212]	@, %sfp
	ldr	r9, [fp, #-156]	@, %sfp
	ldr	r6, [fp, #-176]	@, %sfp
	ldr	r0, [fp, #-200]	@, %sfp
	mul	r7, r8, r9	@,,
	str	sl, [fp, #-168]	@, %sfp
	ldr	r8, [fp, #-164]	@, %sfp
	mul	sl, r0, r6	@ tmp520,,
	ldr	r6, [fp, #-152]	@, %sfp
	ldr	r0, [fp, #-196]	@, %sfp
	str	r7, [fp, #-184]	@, %sfp
	ldr	r7, [fp, #-148]	@, %sfp
	mul	r9, r0, r6	@ tmp534,,
	mov	r6, sl, asr #31	@, tmp520,
	mul	r0, r7, r8	@,,
	ldr	r8, [fp, #-144]	@, %sfp
	ldr	r7, [fp, #-160]	@, %sfp
	str	r6, [fp, #-176]	@, %sfp
	str	r0, [fp, #-152]	@, %sfp
	mul	r0, r8, r7	@,,
	str	r0, [fp, #-148]	@, %sfp
	ldr	r0, [fp, #-172]	@, %sfp
	ldr	r7, [fp, #-168]	@, %sfp
	ldr	r6, [fp, #-184]	@, %sfp
	mov	r8, r6, asr #31	@,,
	str	r8, [fp, #-144]	@, %sfp
	mul	r8, r0, r7	@ tmp661,,
	ldr	r7, [fp, #-228]	@, %sfp
	mov	r6, r9, asr #31	@, tmp534,
	str	r6, [fp, #-172]	@, %sfp
	smull	r6, r0, r7, r9	@,,, tmp534
	ldr	r6, [fp, #-228]	@, %sfp
	ldr	r7, [fp, #-152]	@, %sfp
	smull	r9, sl, r6, sl	@, tmp522,, tmp520
	str	r0, [fp, #-180]	@, %sfp
	ldr	r9, [fp, #-148]	@, %sfp
	mov	r0, r7, asr #31	@,,
	str	r0, [fp, #-156]	@, %sfp
	mov	r6, r8, asr #31	@, tmp661,
	str	r6, [fp, #-168]	@, %sfp
	mov	r7, r9, asr #31	@,,
	str	r7, [fp, #-164]	@, %sfp
	smull	r7, r0, lr, r8	@,, tmp563, tmp661
	ldr	r9, [fp, #-228]	@, %sfp
	ldr	r7, [fp, #-152]	@, %sfp
	str	r0, [fp, #-160]	@, %sfp
	ldr	r0, [fp, #-184]	@, %sfp
	smull	r8, r6, r9, r0	@, tmp529,,
	sub	r0, fp, #180
	ldmia	r0, {r0, r8, r9}	@ phole ldm
	rsb	sl, r8, sl, asr #12	@, prephitmp.411,, tmp522,
	str	sl, [fp, #-140]	@ prephitmp.411, stCSCMatrix.csc_coef00
	smull	r7, r8, lr, r7	@, tmp622, tmp563,
	rsb	r7, r9, r0, asr #12	@, prephitmp.421,,,
	ldr	r9, [fp, #-148]	@, %sfp
	str	r7, [fp, #-132]	@ prephitmp.421, stCSCMatrix.csc_coef02
	smull	r0, r9, lr, r9	@,, tmp563,
	ldr	lr, [fp, #-168]	@, %sfp
	str	r9, [fp, #-148]	@, %sfp
	ldr	r9, [fp, #-144]	@, %sfp
	rsb	r0, r9, r6, asr #12	@,,, tmp529,
	ldr	r6, [fp, #-160]	@, %sfp
	str	r0, [fp, #-224]	@, %sfp
	ldr	r0, [fp, #-156]	@, %sfp
	rsb	r9, lr, r6, asr #18	@, prephitmp.426,,,
	ldr	lr, [fp, #-224]	@, %sfp
	ldr	r6, [fp, #-148]	@, %sfp
	rsb	r8, r0, r8, asr #18	@, prephitmp.384,, tmp622,
	ldr	r0, [fp, #-164]	@, %sfp
	str	lr, [fp, #-136]	@, stCSCMatrix.csc_coef01
	str	r8, [fp, #-116]	@ prephitmp.384, stCSCMatrix.csc_coef20
	rsb	lr, r0, r6, asr #18	@, prephitmp.425,,,
	str	r9, [fp, #-108]	@ prephitmp.426, stCSCMatrix.csc_coef22
	str	lr, [fp, #-112]	@ prephitmp.425, stCSCMatrix.csc_coef21
	b	.L92	@
.L108:
	cmp	r3, #9	@ <variable>.u16OutputColorSpace,
	beq	.L111	@,
	sub	ip, r2, #34	@ tmp927, tmp898,
	mov	r3, #0	@ tmp924,
	mov	r0, #512	@ tmp929,
	str	r3, [fp, #-68]	@ tmp924, stDcCoef.csc_in_dc0
	mov	r1, ip, asl #2	@ tmp928, tmp927,
	str	r0, [fp, #-56]	@ tmp929, stDcCoef.csc_out_dc0
	str	r1, [fp, #-48]	@ tmp928, stDcCoef.csc_out_dc2
	str	r3, [fp, #-60]	@ tmp924, stDcCoef.csc_in_dc2
	str	r3, [fp, #-64]	@ tmp924, stDcCoef.csc_in_dc1
	str	r0, [fp, #-52]	@ tmp929, stDcCoef.csc_out_dc1
	b	.L102	@
.L107:
	ldr	r9, [r4, #8]	@ <variable>.u16Hue, <variable>.u16Hue
	movw	ip, #:lower16:-2139062143	@ tmp705,
	ldr	r8, [r4, #4]	@ <variable>.u16Contrast, <variable>.u16Contrast
	movt	ip, #:upper16:-2139062143	@ tmp705,
	ldr	r7, [r4, #12]	@ <variable>.u16Saturation, <variable>.u16Saturation
	movw	lr, #:lower16:.LANCHOR0	@ tmp956,
	rsb	r6, r9, r9, asl #4	@, tmp702, <variable>.u16Hue, <variable>.u16Hue,
	ldr	r0, [r1, #44]	@ <variable>.bFullRange, <variable>.bFullRange
	movt	lr, #:upper16:.LANCHOR0	@ tmp956,
	cmp	r2, #1	@ <variable>.u16InputColorSpace,
	mov	r9, r6, asl #2	@ tmp703, tmp702,
	add	sl, r7, r7, asl #2	@, tmp695, <variable>.u16Saturation, <variable>.u16Saturation,
	add	r7, r8, r8, asl #2	@, tmp688, <variable>.u16Contrast, <variable>.u16Contrast,
	ldr	r6, [r4, #20]	@ <variable>.as16ColorTempGain, <variable>.as16ColorTempGain
	umull	r8, r9, ip, r9	@, tmp704, tmp705, tmp703
	add	r1, r0, r0, asl #3	@, tmp670, <variable>.bFullRange, <variable>.bFullRange,
	mov	r7, r7, asl #3	@ tmp689, tmp688,
	movw	r0, #:lower16:-1600085855	@ tmp691,
	mov	sl, sl, asl #3	@ tmp696, tmp695,
	movt	r0, #:upper16:-1600085855	@ tmp691,
	add	r1, lr, r1, asl #2	@, tmp674, tmp956, tmp670,
	umull	ip, sl, r0, sl	@, tmp697, tmp691, tmp696
	mov	r9, r9, lsr #7	@ Hue, tmp704,
	add	ip, r6, r6, asl #2	@,, <variable>.as16ColorTempGain, <variable>.as16ColorTempGain,
	ldreq	r1, [r1, #600]	@ pCSCMatrix.403, CSC_YCbCr_to_RGBPrim_MatrixTbl
	umull	r8, r6, r0, r7	@,, tmp691, tmp689
	add	r7, lr, r9, asl #2	@, tmp738, tmp956, Hue,
	ldrne	r1, [r1, #628]	@ pCSCMatrix.403, CSC_YCbCr_to_RGBPrim_MatrixTbl
	mov	sl, sl, lsr #5	@, tmp697,
	ldr	r8, [r7, #244]	@, SIN_TABLE
	str	ip, [fp, #-144]	@, %sfp
	movw	ip, #:lower16:274877907	@ tmp744,
	str	sl, [fp, #-148]	@, %sfp
	movt	ip, #:upper16:274877907	@ tmp744,
	str	r8, [fp, #-192]	@, %sfp
	str	r6, [fp, #-152]	@, %sfp
	ldr	r9, [lr, r9, asl #2]	@ D.25287, COS_TABLE
	ldr	sl, [r1, #28]	@, <variable>.csc_coef21
	ldr	r6, [r4, #24]	@, <variable>.as16ColorTempGain
	ldr	lr, [r4, #16]	@, <variable>.as16ColorTempGain
	ldr	r7, [r1, #20]	@, <variable>.csc_coef12
	add	r8, r6, r6, asl #2	@, tmp716,,,
	add	r6, lr, lr, asl #2	@, tmp723,,,
	str	r7, [fp, #-180]	@, %sfp
	mul	lr, sl, r9	@ tmp835,, D.25287
	ldr	r7, [fp, #-148]	@, %sfp
	ldr	sl, [fp, #-192]	@, %sfp
	mul	r7, r7, sl	@,,
	ldr	sl, [fp, #-144]	@, %sfp
	mov	sl, sl, asl #3	@,,
	str	r7, [fp, #-156]	@, %sfp
	ldr	r7, [r1, #4]	@ <variable>.csc_coef01, <variable>.csc_coef01
	str	sl, [fp, #-164]	@, %sfp
	mov	sl, r8, asl #3	@, tmp716,
	mov	r8, r6, asl #3	@, tmp723,
	str	sl, [fp, #-160]	@, %sfp
	str	r8, [fp, #-196]	@, %sfp
	ldr	sl, [fp, #-152]	@, %sfp
	ldr	r8, [fp, #-148]	@, %sfp
	mul	r7, r7, r9	@ tmp740, <variable>.csc_coef01, D.25287
	mov	r6, sl, lsr #5	@,,
	mul	sl, r8, lr	@,, tmp835
	str	r6, [fp, #-152]	@, %sfp
	ldr	r8, [fp, #-192]	@, %sfp
	str	sl, [fp, #-172]	@, %sfp
	movw	sl, #:lower16:351843721	@ tmp751,
	ldr	r6, [r1, #16]	@, <variable>.csc_coef11
	movt	sl, #:upper16:351843721	@ tmp751,
	mul	lr, r6, r9	@,, D.25287
	str	lr, [fp, #-168]	@, %sfp
	ldr	r6, [r1, #32]	@, <variable>.csc_coef22
	mul	lr, r6, r8	@,,
	str	lr, [fp, #-176]	@, %sfp
	ldr	r8, [fp, #-172]	@, %sfp
	ldr	lr, [fp, #-156]	@, %sfp
	mov	r6, r8, asr #31	@,,
	str	r6, [fp, #-208]	@, %sfp
	ldr	r8, [r1, #8]	@, <variable>.csc_coef02
	mul	r6, r8, lr	@ tmp747,,
	mov	lr, r7, asr #31	@, tmp740,
	ldr	r8, [fp, #-192]	@, %sfp
	str	lr, [fp, #-200]	@, %sfp
	ldr	lr, [fp, #-180]	@, %sfp
	mul	lr, lr, r8	@,,
	ldr	r8, [fp, #-168]	@, %sfp
	str	lr, [fp, #-144]	@, %sfp
	mov	lr, r8, asr #31	@,,
	ldr	r8, [fp, #-196]	@, %sfp
	str	lr, [fp, #-188]	@, %sfp
	umull	lr, r8, r0, r8	@,, tmp691,
	ldr	lr, [fp, #-164]	@, %sfp
	str	r8, [fp, #-196]	@, %sfp
	mov	r8, r6, asr #31	@, tmp747,
	str	r8, [fp, #-212]	@, %sfp
	umull	r8, lr, r0, lr	@,, tmp691,
	ldr	r8, [fp, #-144]	@, %sfp
	str	lr, [fp, #-164]	@, %sfp
	mov	lr, r8, asr #31	@,,
	ldr	r8, [fp, #-160]	@, %sfp
	str	lr, [fp, #-204]	@, %sfp
	ldr	lr, [fp, #-196]	@, %sfp
	umull	r8, r0, r0, r8	@, tmp718, tmp691,
	mov	r8, lr, lsr #5	@,,
	ldr	lr, [fp, #-148]	@, %sfp
	str	r8, [fp, #-196]	@, %sfp
	ldr	r8, [fp, #-152]	@, %sfp
	mov	r0, r0, lsr #5	@, tmp718,
	mul	r8, r8, lr	@,,
	ldr	lr, [fp, #-164]	@, %sfp
	str	r0, [fp, #-164]	@, %sfp
	smull	r0, r6, sl, r6	@, tmp750, tmp751, tmp747
	str	r8, [fp, #-184]	@, %sfp
	mov	r8, lr, lsr #5	@,,
	str	r8, [fp, #-160]	@, %sfp
	smull	lr, r8, ip, r7	@, tmp743, tmp744, tmp740
	ldr	r7, [fp, #-176]	@, %sfp
	ldr	r0, [fp, #-168]	@, %sfp
	mov	lr, r7, asr #31	@,,
	ldr	r7, [fp, #-200]	@, %sfp
	str	lr, [fp, #-216]	@, %sfp
	smull	r0, lr, ip, r0	@, tmp792, tmp744,
	rsb	r0, r7, r8, asr #6	@,,, tmp743,
	ldr	r7, [fp, #-144]	@, %sfp
	str	r0, [fp, #-200]	@, %sfp
	smull	r8, r0, ip, r7	@, tmp799, tmp744,
	ldr	r8, [fp, #-212]	@, %sfp
	rsb	r6, r8, r6, asr #13	@,,, tmp750,
	str	r6, [fp, #-144]	@, %sfp
	ldr	r7, [fp, #-172]	@, %sfp
	smull	r8, r6, sl, r7	@, tmp839, tmp751,
	ldr	r8, [fp, #-188]	@, %sfp
	rsb	r7, r8, lr, asr #6	@, tmp791,, tmp792,
	ldr	r8, [fp, #-176]	@, %sfp
	smull	r8, lr, ip, r8	@, tmp846, tmp744,
	ldr	r8, [fp, #-204]	@, %sfp
	rsb	r0, r8, r0, asr #6	@,,, tmp799,
	ldr	r8, [fp, #-164]	@, %sfp
	str	r0, [fp, #-168]	@, %sfp
	ldr	r0, [fp, #-152]	@, %sfp
	mul	r0, r0, r8	@,,
	ldr	r8, [fp, #-208]	@, %sfp
	rsb	r6, r8, r6, asr #13	@, tmp838,, tmp839,
	ldr	r8, [fp, #-160]	@, %sfp
	str	r0, [fp, #-176]	@, %sfp
	ldr	r0, [fp, #-184]	@, %sfp
	mul	r8, r8, r0	@,,
	ldr	r0, [fp, #-144]	@, %sfp
	str	r8, [fp, #-164]	@, %sfp
	ldr	r8, [fp, #-200]	@, %sfp
	rsb	r8, r0, r8	@,,
	ldr	r0, [fp, #-196]	@, %sfp
	str	r8, [fp, #-200]	@, %sfp
	ldr	r8, [fp, #-152]	@, %sfp
	mul	r8, r8, r0	@,,
	ldr	r0, [fp, #-216]	@, %sfp
	rsb	lr, r0, lr, asr #6	@, tmp845,, tmp846,
	str	r8, [fp, #-172]	@, %sfp
	ldr	r8, [fp, #-168]	@, %sfp
	rsb	r0, r8, r7	@ tmp803,, tmp791
	rsb	r8, lr, r6	@, tmp845, tmp838
	ldr	r6, [fp, #-164]	@, %sfp
	ldr	lr, [fp, #-172]	@, %sfp
	str	r8, [fp, #-168]	@, %sfp
	movw	r8, #:lower16:1759218605	@ tmp731,
	mul	r7, r6, r0	@ tmp804,, tmp803
	ldr	r0, [fp, #-200]	@, %sfp
	movt	r8, #:upper16:1759218605	@ tmp731,
	mul	r6, lr, r0	@ tmp755,,
	ldr	lr, [fp, #-168]	@, %sfp
	movw	r0, #:lower16:1125899907	@,
	movt	r0, #:upper16:1125899907	@,
	str	r0, [fp, #-144]	@, %sfp
	ldr	r0, [fp, #-176]	@, %sfp
	mul	r0, r0, lr	@,,
	ldr	lr, [fp, #-144]	@, %sfp
	str	r0, [fp, #-168]	@, %sfp
	ldr	r0, [r1, #0]	@, <variable>.csc_coef00
	str	r0, [fp, #-196]	@, %sfp
	smull	r0, lr, lr, r7	@,,, tmp804
	mov	r0, r6, asr #31	@, tmp755,
	str	r0, [fp, #-200]	@, %sfp
	mov	r7, r7, asr #31	@ tmp808, tmp804,
	smull	r0, r6, r8, r6	@, tmp756, tmp731, tmp755
	str	lr, [fp, #-184]	@, %sfp
	ldr	lr, [fp, #-168]	@, %sfp
	smull	r0, lr, r8, lr	@,, tmp731,
	str	lr, [fp, #-188]	@, %sfp
	ldr	r0, [fp, #-168]	@, %sfp
	mov	lr, r0, asr #31	@ tmp855,,
	ldr	r0, [r1, #8]	@, <variable>.csc_coef02
	mul	r0, r0, r9	@,, D.25287
	str	r0, [fp, #-212]	@, %sfp
	ldr	r0, [fp, #-200]	@, %sfp
	rsb	r6, r0, r6, asr #12	@,,, tmp756,
	str	r6, [fp, #-224]	@, %sfp
	ldr	r6, [fp, #-184]	@, %sfp
	ldr	r0, [fp, #-224]	@, %sfp
	rsb	r7, r7, r6, asr #18	@,, tmp808,,
	str	r7, [fp, #-220]	@, %sfp
	ldr	r6, [fp, #-220]	@, %sfp
	str	r0, [fp, #-136]	@, stCSCMatrix.csc_coef01
	ldr	r0, [r1, #4]	@, <variable>.csc_coef01
	ldr	r7, [fp, #-188]	@, %sfp
	str	r6, [fp, #-124]	@, stCSCMatrix.csc_coef11
	str	r0, [fp, #-200]	@, %sfp
	ldr	r6, [r1, #16]	@, <variable>.csc_coef11
	rsb	lr, lr, r7, asr #12	@, prephitmp.425, tmp855,,
	ldr	r7, [fp, #-156]	@, %sfp
	str	lr, [fp, #-112]	@ prephitmp.425, stCSCMatrix.csc_coef21
	str	r6, [fp, #-188]	@, %sfp
	ldr	r0, [r1, #28]	@, <variable>.csc_coef21
	mul	r6, r0, r7	@,,
	str	r6, [fp, #-156]	@, %sfp
	ldr	r0, [r1, #12]	@, <variable>.csc_coef10
	str	r0, [fp, #-184]	@, %sfp
	ldr	r6, [r1, #32]	@, <variable>.csc_coef22
	ldr	r0, [fp, #-148]	@, %sfp
	mul	r7, r6, r9	@,, D.25287
	ldr	r6, [fp, #-212]	@, %sfp
	str	r7, [fp, #-168]	@, %sfp
	ldr	r1, [r1, #24]	@, <variable>.csc_coef20
	ldr	r7, [fp, #-192]	@, %sfp
	str	r1, [fp, #-204]	@, %sfp
	mul	r1, r0, r6	@ tmp762,,
	ldr	r0, [fp, #-200]	@, %sfp
	mul	r6, r0, r7	@,,
	ldr	r7, [fp, #-156]	@, %sfp
	mov	r0, r7, asr #31	@,,
	ldr	r7, [fp, #-168]	@, %sfp
	str	r0, [fp, #-212]	@, %sfp
	str	r6, [fp, #-148]	@, %sfp
	ldr	r6, [fp, #-180]	@, %sfp
	mov	r0, r7, asr #31	@,,
	str	r0, [fp, #-208]	@, %sfp
	ldr	r7, [fp, #-188]	@, %sfp
	mul	r9, r6, r9	@ tmp809,, D.25287
	ldr	r6, [fp, #-192]	@, %sfp
	mul	r0, r7, r6	@,,
	ldr	r7, [fp, #-156]	@, %sfp
	mov	r6, r1, asr #31	@, tmp762,
	str	r6, [fp, #-180]	@, %sfp
	str	r0, [fp, #-216]	@, %sfp
	smull	r6, r0, sl, r7	@,, tmp751,
	ldr	r7, [fp, #-148]	@, %sfp
	mov	r6, r7, asr #31	@,,
	str	r6, [fp, #-156]	@, %sfp
	str	r0, [fp, #-200]	@, %sfp
	ldr	r0, [fp, #-168]	@, %sfp
	smull	r6, r7, ip, r0	@,, tmp744,
	mov	r0, r9, asr #31	@, tmp809,
	ldr	r6, [fp, #-216]	@, %sfp
	str	r0, [fp, #-168]	@, %sfp
	smull	r0, sl, sl, r1	@, tmp764, tmp751, tmp762
	str	r7, [fp, #-188]	@, %sfp
	ldr	r7, [fp, #-148]	@, %sfp
	mov	r1, r6, asr #31	@,,
	ldr	r0, [fp, #-200]	@, %sfp
	str	r1, [fp, #-192]	@, %sfp
	smull	r6, r1, ip, r7	@, tmp771, tmp744,
	ldr	r6, [fp, #-212]	@, %sfp
	rsb	r7, r6, r0, asr #13	@,,,,
	ldr	r0, [fp, #-216]	@, %sfp
	smull	r6, r9, ip, r9	@, tmp812, tmp744, tmp809
	ldr	r6, [fp, #-180]	@, %sfp
	str	r7, [fp, #-148]	@, %sfp
	rsb	sl, r6, sl, asr #13	@, tmp763,, tmp764,
	smull	r6, r7, ip, r0	@,, tmp744,
	ldr	r0, [fp, #-156]	@, %sfp
	ldr	ip, [fp, #-160]	@, %sfp
	str	r7, [fp, #-180]	@, %sfp
	rsb	r7, r0, r1, asr #6	@, tmp770,, tmp771,
	ldr	r1, [fp, #-152]	@, %sfp
	add	r7, sl, r7	@ tmp775, tmp763, tmp770
	ldr	r0, [fp, #-168]	@, %sfp
	ldr	sl, [fp, #-192]	@, %sfp
	mul	r6, ip, r1	@,,
	ldr	ip, [fp, #-208]	@, %sfp
	rsb	r1, r0, r9, asr #6	@, tmp811,, tmp812,
	ldr	r0, [fp, #-148]	@, %sfp
	str	r6, [fp, #-152]	@, %sfp
	ldr	r6, [fp, #-188]	@, %sfp
	rsb	r9, ip, r6, asr #6	@, tmp865,,,
	ldr	ip, [fp, #-180]	@, %sfp
	rsb	r9, r9, r0	@ tmp870, tmp865,
	ldr	r0, [fp, #-172]	@, %sfp
	rsb	r6, sl, ip, asr #6	@, tmp818,,,
	ldr	ip, [fp, #-152]	@, %sfp
	add	r1, r1, r6	@ tmp823, tmp811, tmp818
	ldr	r6, [fp, #-184]	@, %sfp
	mul	r7, r0, r7	@ tmp776,, tmp775
	mul	sl, r6, ip	@,,
	str	sl, [fp, #-160]	@, %sfp
	mov	sl, r7, asr #31	@, tmp776,
	ldr	r0, [fp, #-164]	@, %sfp
	ldr	r6, [fp, #-176]	@, %sfp
	ldr	ip, [fp, #-196]	@, %sfp
	mul	r1, r0, r1	@ tmp824,, tmp823
	ldr	r0, [fp, #-172]	@, %sfp
	mul	r9, r6, r9	@ tmp871,, tmp870
	ldr	r6, [fp, #-160]	@, %sfp
	str	sl, [fp, #-156]	@, %sfp
	mul	sl, ip, r0	@ tmp728,,
	mov	ip, r6, asr #31	@,,
	ldr	r0, [fp, #-176]	@, %sfp
	ldr	r6, [fp, #-204]	@, %sfp
	str	ip, [fp, #-172]	@, %sfp
	mul	ip, r6, r0	@,,
	ldr	r0, [fp, #-144]	@, %sfp
	mov	r6, r1, asr #31	@, tmp824,
	str	r6, [fp, #-176]	@, %sfp
	str	ip, [fp, #-152]	@, %sfp
	smull	ip, r1, r0, r1	@, tmp825,, tmp824
	mov	ip, sl, asr #31	@, tmp728,
	str	ip, [fp, #-148]	@, %sfp
	smull	ip, r6, r8, r9	@,, tmp731, tmp871
	mov	r9, r9, asr #31	@ tmp875, tmp871,
	ldr	r0, [fp, #-152]	@, %sfp
	smull	ip, r7, r8, r7	@, tmp777, tmp731, tmp776
	str	r6, [fp, #-164]	@, %sfp
	mov	r6, r0, asr #31	@,,
	str	r6, [fp, #-144]	@, %sfp
	smull	r6, sl, r8, sl	@, tmp730, tmp731, tmp728
	ldr	r0, [fp, #-160]	@, %sfp
	ldr	ip, [fp, #-176]	@, %sfp
	rsb	r1, ip, r1, asr #18	@, prephitmp.424,, tmp825,
	str	r1, [fp, #-120]	@ prephitmp.424, stCSCMatrix.csc_coef12
	smull	r6, ip, r8, r0	@, tmp784, tmp731,
	ldr	r0, [fp, #-152]	@, %sfp
	ldr	r6, [fp, #-148]	@, %sfp
	rsb	sl, r6, sl, asr #12	@, prephitmp.411,, tmp730,
	str	sl, [fp, #-140]	@ prephitmp.411, stCSCMatrix.csc_coef00
	smull	r6, r8, r8, r0	@, tmp831, tmp731,
	ldr	r0, [fp, #-164]	@, %sfp
	ldr	r6, [fp, #-156]	@, %sfp
	rsb	r9, r9, r0, asr #12	@, prephitmp.426, tmp875,,
	rsb	r7, r6, r7, asr #12	@, prephitmp.421,, tmp777,
	ldr	r0, [fp, #-144]	@, %sfp
	ldr	r6, [fp, #-172]	@, %sfp
	rsb	r8, r0, r8, asr #12	@, prephitmp.384,, tmp831,
	str	r7, [fp, #-132]	@ prephitmp.421, stCSCMatrix.csc_coef02
	rsb	ip, r6, ip, asr #12	@, prephitmp.422,, tmp784,
	str	r9, [fp, #-108]	@ prephitmp.426, stCSCMatrix.csc_coef22
	str	ip, [fp, #-128]	@ prephitmp.422, stCSCMatrix.csc_coef10
	str	r8, [fp, #-116]	@ prephitmp.384, stCSCMatrix.csc_coef20
	b	.L92	@
.L111:
	movw	lr, #4768	@ tmp910,
	mov	r2, #0	@ tmp906,
	mul	ip, lr, r1	@ tmp909, tmp910, s32Brightness
	str	r2, [fp, #-68]	@ tmp906, stDcCoef.csc_in_dc0
	str	r2, [fp, #-60]	@ tmp906, stDcCoef.csc_in_dc2
	str	r2, [fp, #-64]	@ tmp906, stDcCoef.csc_in_dc1
	add	r3, ip, #512	@ tmp911, tmp909,
	ldr	r0, [r4, #28]	@ <variable>.as16ColorTempOffset, <variable>.as16ColorTempOffset
	add	r1, r3, #255	@ tmp913, tmp911,
	cmp	r3, #0	@ tmp911,
	sub	lr, r0, #128	@ tmp915, <variable>.as16ColorTempOffset,
	movlt	r3, r1	@ tmp912, tmp913
	mov	r1, r3, asr #8	@ tmp914, tmp912,
	add	ip, lr, r1	@ tmp917, tmp915, tmp914
	str	ip, [fp, #-48]	@ tmp917, stDcCoef.csc_out_dc2
	ldr	r2, [r4, #32]	@ <variable>.as16ColorTempOffset, <variable>.as16ColorTempOffset
	sub	r0, r2, #128	@ tmp918, <variable>.as16ColorTempOffset,
	add	lr, r0, r1	@ tmp920, tmp918, tmp914
	str	lr, [fp, #-52]	@ tmp920, stDcCoef.csc_out_dc1
	ldr	ip, [r4, #36]	@ <variable>.as16ColorTempOffset, <variable>.as16ColorTempOffset
	sub	r2, ip, #128	@ tmp921, <variable>.as16ColorTempOffset,
	add	r3, r2, r1	@ tmp923, tmp921, tmp914
	str	r3, [fp, #-56]	@ tmp923, stDcCoef.csc_out_dc0
	b	.L102	@
.L109:
	sub	lr, r2, #66	@ tmp932, tmp898,
	movw	r0, #:lower16:-512	@ tmp934,
	movt	r0, #:upper16:-512	@ tmp934,
	str	r0, [fp, #-68]	@ tmp934, stDcCoef.csc_in_dc0
	str	r0, [fp, #-64]	@ tmp934, stDcCoef.csc_in_dc1
	mov	r2, lr, asl #2	@ tmp933, tmp932,
	str	r2, [fp, #-60]	@ tmp933, stDcCoef.csc_in_dc2
	ldr	ip, [r4, #28]	@ <variable>.as16ColorTempOffset, <variable>.as16ColorTempOffset
	sub	r1, ip, #128	@ tmp937, <variable>.as16ColorTempOffset,
	str	r1, [fp, #-48]	@ tmp937, stDcCoef.csc_out_dc2
	ldr	r3, [r4, #32]	@ <variable>.as16ColorTempOffset, <variable>.as16ColorTempOffset
	sub	r0, r3, #128	@ tmp939, <variable>.as16ColorTempOffset,
	str	r0, [fp, #-52]	@ tmp939, stDcCoef.csc_out_dc1
	ldr	lr, [r4, #36]	@ <variable>.as16ColorTempOffset, <variable>.as16ColorTempOffset
	sub	r2, lr, #128	@ tmp941, <variable>.as16ColorTempOffset,
	str	r2, [fp, #-56]	@ tmp941, stDcCoef.csc_out_dc0
	b	.L102	@
.L88:
	mov	r0, #1	@,
	mov	r1, #41	@,
	ldr	r2, .L112	@,
	movw	r3, #1229	@,
	movw	lr, #:lower16:.LC3	@ tmp201,
	movt	lr, #:upper16:.LC3	@ tmp201,
	str	lr, [sp, #0]	@ tmp201,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.24322,
	b	.L87	@
.L110:
	ldr	r1, [r1, #8]	@ <variable>.u16Hue, <variable>.u16Hue
	movw	sl, #:lower16:-2139062143	@ tmp222,
	ldr	r8, [r4, #12]	@ <variable>.u16Saturation, <variable>.u16Saturation
	movt	sl, #:upper16:-2139062143	@ tmp222,
	ldr	r9, [r4, #4]	@ <variable>.u16Contrast, <variable>.u16Contrast
	movw	lr, #:lower16:-1600085855	@ tmp208,
	rsb	ip, r1, r1, asl #4	@, tmp219, <variable>.u16Hue, <variable>.u16Hue,
	movt	lr, #:upper16:-1600085855	@ tmp208,
	add	r7, r8, r8, asl #2	@, tmp212, <variable>.u16Saturation, <variable>.u16Saturation,
	movw	r1, #:lower16:.LANCHOR0	@ tmp237,
	mov	r6, ip, asl #2	@ tmp220, tmp219,
	movt	r1, #:upper16:.LANCHOR0	@ tmp237,
	mov	r0, r7, asl #3	@ tmp213, tmp212,
	ldr	r8, [r4, #20]	@ <variable>.as16ColorTempGain, <variable>.as16ColorTempGain
	umull	r7, ip, sl, r6	@, tmp221, tmp222, tmp220
	add	sl, r9, r9, asl #2	@, tmp205, <variable>.u16Contrast, <variable>.u16Contrast,
	umull	r9, r0, lr, r0	@, tmp214, tmp208, tmp213
	mov	sl, sl, asl #3	@, tmp205,
	ldr	r9, [r4, #16]	@ <variable>.as16ColorTempGain, <variable>.as16ColorTempGain
	add	r7, r8, r8, asl #2	@, tmp226, <variable>.as16ColorTempGain, <variable>.as16ColorTempGain,
	mov	ip, ip, lsr #7	@ Hue, tmp221,
	ldr	r6, [r4, #24]	@ <variable>.as16ColorTempGain, <variable>.as16ColorTempGain
	str	sl, [fp, #-152]	@, %sfp
	mov	r8, r7, asl #3	@, tmp226,
	add	sl, r1, ip, asl #2	@, tmp240, tmp237, Hue,
	ldr	ip, [r1, ip, asl #2]	@ tmp244, COS_TABLE
	mov	r1, r0, lsr #5	@ D.25081, tmp214,
	str	r8, [fp, #-148]	@, %sfp
	ldr	r0, [sl, #244]	@ tmp242, SIN_TABLE
	add	sl, r9, r9, asl #2	@, tmp248, <variable>.as16ColorTempGain, <variable>.as16ColorTempGain,
	mul	ip, ip, r1	@ D.25066, tmp244, D.25081
	add	r6, r6, r6, asl #2	@, tmp233, <variable>.as16ColorTempGain, <variable>.as16ColorTempGain,
	mul	r0, r0, r1	@ D.25072, tmp242, D.25081
	mov	r1, sl, asl #3	@, tmp248,
	mov	sl, #227	@ tmp403,
	mov	r9, #179	@,
	mov	r7, r6, asl #3	@, tmp233,
	str	r1, [fp, #-156]	@, %sfp
	mul	r8, sl, ip	@, tmp403, D.25066
	str	r7, [fp, #-200]	@, %sfp
	mul	r6, r9, r0	@,, D.25072
	mov	r9, #190	@ tmp418,
	mul	sl, sl, r0	@, tmp403, D.25072
	movw	r1, #:lower16:351843721	@ tmp260,
	str	r8, [fp, #-180]	@, %sfp
	mov	r8, r0, asl #3	@ tmp285, D.25072,
	add	r7, r8, r0	@, tmp285, D.25072
	str	r7, [fp, #-144]	@, %sfp
	ldr	r7, [fp, #-156]	@, %sfp
	rsb	r8, r0, r8	@ tmp286, D.25072, tmp285
	str	r6, [fp, #-172]	@, %sfp
	movt	r1, #:upper16:351843721	@ tmp260,
	mul	r6, r9, r0	@, tmp418, D.25072
	str	sl, [fp, #-164]	@, %sfp
	umull	r9, r7, lr, r7	@,, tmp208,
	add	sl, r0, r0, asl #2	@, tmp338, D.25072, D.25072,
	add	r8, r8, r8, asl #4	@, tmp288, tmp286, tmp286,
	rsb	sl, sl, sl, asl #4	@,, tmp338, tmp338,
	str	sl, [fp, #-220]	@, %sfp
	ldr	sl, [fp, #-152]	@, %sfp
	str	r6, [fp, #-160]	@, %sfp
	add	r6, r0, r0, asl #1	@, tmp359, D.25072, D.25072,
	str	r7, [fp, #-212]	@, %sfp
	ldr	r7, [fp, #-144]	@, %sfp
	add	r9, r0, r7, asl #2	@,, D.25072,,
	mov	r7, #150	@ tmp278,
	str	r9, [fp, #-168]	@, %sfp
	rsb	r0, r0, r0, asl #4	@, tmp256, D.25072, D.25072,
	mul	r9, r7, ip	@, tmp278, D.25066
	mov	r7, #77	@ tmp331,
	str	r9, [fp, #-144]	@, %sfp
	mul	r9, r7, ip	@, tmp331, D.25066
	mov	r7, #106	@ tmp371,
	str	r9, [fp, #-176]	@, %sfp
	mul	r9, r7, ip	@, tmp371, D.25066
	umull	r7, sl, lr, sl	@,, tmp208,
	str	r9, [fp, #-156]	@, %sfp
	mov	r9, r6, asl #3	@ tmp360, tmp359,
	str	sl, [fp, #-192]	@, %sfp
	ldr	sl, [fp, #-148]	@, %sfp
	umull	r7, sl, lr, sl	@,, tmp208,
	str	sl, [fp, #-196]	@, %sfp
	ldr	sl, [fp, #-200]	@, %sfp
	umull	r7, sl, lr, sl	@,, tmp208,
	rsb	r7, ip, ip, asl #3	@, tmp304, D.25066, D.25066,
	str	sl, [fp, #-200]	@, %sfp
	mov	sl, #179	@,
	mul	lr, sl, ip	@,, D.25066
	add	sl, r6, r6, asl #5	@,, tmp359, tmp359,
	mov	r6, r0, asl #2	@, tmp256,
	str	sl, [fp, #-248]	@, %sfp
	add	sl, ip, r7, asl #2	@,, D.25066, tmp304,
	str	lr, [fp, #-148]	@, %sfp
	str	r6, [fp, #-152]	@, %sfp
	ldr	r0, [fp, #-172]	@, %sfp
	ldr	ip, [fp, #-220]	@, %sfp
	str	sl, [fp, #-240]	@, %sfp
	smull	r6, lr, r1, r0	@,, tmp260,
	smull	sl, r0, r1, ip	@,, tmp260,
	ldr	r6, [fp, #-192]	@, %sfp
	ldr	r7, [fp, #-196]	@, %sfp
	ldr	sl, [fp, #-160]	@, %sfp
	str	lr, [fp, #-188]	@, %sfp
	str	r0, [fp, #-204]	@, %sfp
	mov	r0, r6, lsr #5	@ ContrastAdjust,,
	smull	r6, lr, r1, r9	@,, tmp260, tmp360
	mov	ip, r7, lsr #5	@,,
	str	ip, [fp, #-192]	@, %sfp
	smull	ip, r6, r1, sl	@,, tmp260,
	str	lr, [fp, #-208]	@, %sfp
	ldr	sl, [fp, #-168]	@, %sfp
	ldr	lr, [fp, #-200]	@, %sfp
	str	r6, [fp, #-224]	@, %sfp
	mov	r7, lr, lsr #5	@,,
	ldr	r6, [fp, #-212]	@, %sfp
	str	r7, [fp, #-196]	@, %sfp
	smull	r7, ip, r1, sl	@,, tmp260,
	mov	lr, r6, lsr #5	@,,
	str	lr, [fp, #-200]	@, %sfp
	smull	lr, sl, r1, r8	@,, tmp260, tmp288
	mov	r8, r8, asr #31	@ tmp293, tmp288,
	str	ip, [fp, #-228]	@, %sfp
	ldr	ip, [fp, #-248]	@, %sfp
	ldr	r7, [fp, #-172]	@, %sfp
	str	sl, [fp, #-184]	@, %sfp
	smull	sl, r6, r1, ip	@,, tmp260,
	mov	lr, r7, asr #31	@ tmp318,,
	ldr	sl, [fp, #-220]	@, %sfp
	ldr	r7, [fp, #-164]	@, %sfp
	str	r6, [fp, #-216]	@, %sfp
	mov	r6, sl, asr #31	@ tmp345,,
	smull	sl, ip, r1, r7	@,, tmp260,
	mov	r7, r9, asr #31	@, tmp360,
	str	r7, [fp, #-244]	@, %sfp
	ldr	sl, [fp, #-160]	@, %sfp
	str	ip, [fp, #-220]	@, %sfp
	ldr	ip, [fp, #-180]	@, %sfp
	smull	r7, r9, r1, ip	@,, tmp260,
	mov	ip, sl, asr #31	@,,
	str	ip, [fp, #-252]	@, %sfp
	ldr	sl, [fp, #-168]	@, %sfp
	str	r9, [fp, #-232]	@, %sfp
	ldr	r9, [fp, #-152]	@, %sfp
	smull	ip, r7, r1, r9	@,, tmp260,
	mov	r9, sl, asr #31	@,,
	str	r9, [fp, #-172]	@, %sfp
	str	r7, [fp, #-160]	@, %sfp
	ldr	r7, [fp, #-144]	@, %sfp
	smull	sl, ip, r1, r7	@,, tmp260,
	str	ip, [fp, #-212]	@, %sfp
	ldr	sl, [fp, #-188]	@, %sfp
	ldr	r7, [fp, #-204]	@, %sfp
	ldr	r9, [fp, #-240]	@, %sfp
	rsb	ip, lr, sl, asr #13	@, tmp314, tmp318,,
	smull	sl, lr, r1, r9	@,, tmp260,
	rsb	sl, r6, r7, asr #13	@, tmp341, tmp345,,
	ldr	r6, [fp, #-176]	@, %sfp
	rsb	ip, ip, ip, asl #30	@,, tmp314, tmp314,
	smull	r7, r9, r1, r6	@,, tmp260,
	str	lr, [fp, #-188]	@, %sfp
	ldr	r7, [fp, #-208]	@, %sfp
	ldr	r6, [fp, #-156]	@, %sfp
	ldr	lr, [fp, #-244]	@, %sfp
	str	r9, [fp, #-204]	@, %sfp
	rsb	r9, lr, r7, asr #13	@, tmp361,,,
	smull	lr, r7, r1, r6	@,, tmp260,
	rsb	r9, r9, r9, asl #30	@, tmp368, tmp361, tmp361,
	ldr	lr, [fp, #-224]	@, %sfp
	ldr	r6, [fp, #-252]	@, %sfp
	str	r7, [fp, #-208]	@, %sfp
	rsb	r7, r6, lr, asr #13	@, tmp419,,,
	ldr	r6, [fp, #-148]	@, %sfp
	rsb	r7, r7, r7, asl #30	@,, tmp419, tmp419,
	smull	lr, r6, r1, r6	@,, tmp260,
	ldr	lr, [fp, #-228]	@, %sfp
	str	r6, [fp, #-168]	@, %sfp
	ldr	r6, [fp, #-172]	@, %sfp
	rsb	r1, r6, lr, asr #13	@, tmp440,,,
	ldr	lr, [fp, #-196]	@, %sfp
	mul	r6, lr, r0	@,, ContrastAdjust
	ldr	lr, [fp, #-200]	@, %sfp
	str	r6, [fp, #-196]	@, %sfp
	mul	r6, lr, r0	@,, ContrastAdjust
	ldr	lr, [fp, #-248]	@, %sfp
	str	r6, [fp, #-172]	@, %sfp
	mov	r6, lr, asr #31	@ tmp393,,
	ldr	lr, [fp, #-192]	@, %sfp
	mul	r0, lr, r0	@,, ContrastAdjust
	ldr	lr, [fp, #-164]	@, %sfp
	str	r0, [fp, #-192]	@, %sfp
	mov	r0, lr, asr #31	@ tmp408,,
	ldr	lr, [fp, #-184]	@, %sfp
	rsb	r8, r8, lr, asr #13	@,, tmp293,,
	ldr	lr, [fp, #-220]	@, %sfp
	str	r8, [fp, #-164]	@, %sfp
	ldr	r8, [fp, #-216]	@, %sfp
	rsb	r6, r6, r8, asr #13	@,, tmp393,,
	rsb	r8, r0, lr, asr #13	@,, tmp408,,
	ldr	r0, [fp, #-152]	@, %sfp
	ldr	lr, [fp, #-144]	@, %sfp
	str	r6, [fp, #-200]	@, %sfp
	str	r8, [fp, #-184]	@, %sfp
	mov	r6, r0, asr #31	@,,
	ldr	r8, [fp, #-240]	@, %sfp
	str	r6, [fp, #-216]	@, %sfp
	mov	r6, lr, asr #31	@ tmp282,,
	str	ip, [fp, #-152]	@, %sfp
	ldr	r0, [fp, #-176]	@, %sfp
	mov	lr, r8, asr #31	@ tmp310,,
	rsb	r8, sl, sl, asl #30	@,, tmp341, tmp341,
	str	r8, [fp, #-144]	@, %sfp
	rsb	sl, r1, r1, asl #30	@,, tmp440, tmp440,
	ldr	r1, [fp, #-188]	@, %sfp
	mov	ip, r0, asr #31	@ tmp335,,
	ldr	r0, [fp, #-156]	@, %sfp
	str	sl, [fp, #-176]	@, %sfp
	str	r7, [fp, #-156]	@, %sfp
	rsb	lr, lr, r1, asr #13	@, D.25037, tmp310,,
	mov	r8, r0, asr #31	@ tmp376,,
	ldr	r0, [fp, #-180]	@, %sfp
	ldr	r7, [fp, #-212]	@, %sfp
	mov	sl, r0, asr #31	@ tmp455,,
	ldr	r0, [fp, #-204]	@, %sfp
	rsb	r6, r6, r7, asr #13	@, D.25050, tmp282,,
	ldr	r7, [fp, #-216]	@, %sfp
	rsb	r1, ip, r0, asr #13	@, D.25024, tmp335,,
	ldr	ip, [fp, #-160]	@, %sfp
	rsb	r0, r7, ip, asr #13	@, tmp258,,,
	ldr	r7, [fp, #-208]	@, %sfp
	ldr	ip, [fp, #-232]	@, %sfp
	add	r0, r0, #77	@ tmp263, tmp258,
	rsb	r8, r8, r7, asr #13	@, tmp372, tmp376,,
	ldr	r7, [fp, #-148]	@, %sfp
	rsb	sl, sl, ip, asr #13	@, tmp451, tmp455,,
	mov	ip, r7, asr #31	@ tmp270,,
	add	r7, r8, r9, asl #2	@,, tmp372, tmp368,
	ldr	r8, [fp, #-168]	@, %sfp
	str	r7, [fp, #-148]	@, %sfp
	ldr	r9, [fp, #-184]	@, %sfp
	ldr	r7, [fp, #-200]	@, %sfp
	rsb	ip, ip, r8, asr #13	@, tmp266, tmp270,,
	add	ip, r0, ip	@, tmp263, tmp266
	ldr	r0, [fp, #-172]	@, %sfp
	rsb	r8, lr, r7, asl #2	@, tmp395, D.25037,,
	rsb	r7, r1, r9, asl #2	@,, D.25024,,
	ldr	r9, [fp, #-156]	@, %sfp
	str	r7, [fp, #-160]	@, %sfp
	rsb	r7, r6, r9, asl #2	@, tmp428, D.25050,,
	ldr	r9, [fp, #-176]	@, %sfp
	add	r7, r7, #150	@ tmp429, tmp428,
	add	sl, sl, r9, asl #2	@,, tmp451,,
	str	sl, [fp, #-168]	@, %sfp
	ldr	sl, [fp, #-164]	@, %sfp
	ldr	r9, [fp, #-152]	@, %sfp
	str	ip, [fp, #-164]	@, %sfp
	mov	ip, r0, asl #2	@ D.25060,,
	rsb	r6, r6, sl, asl #2	@, tmp295, D.25050,,
	ldr	sl, [fp, #-144]	@, %sfp
	rsb	lr, lr, r9, asl #2	@, tmp323, D.25037,,
	add	r6, r6, #150	@ tmp296, tmp295,
	add	lr, lr, #29	@, tmp323,
	str	lr, [fp, #-144]	@, %sfp
	rsb	r9, r1, sl, asl #2	@, tmp350, D.25024,,
	ldr	r1, [fp, #-192]	@, %sfp
	ldr	sl, [fp, #-196]	@, %sfp
	mov	r0, r1, asl #2	@ D.25047,,
	mov	r1, sl, asl #2	@ D.25034,,
	add	sl, r9, #77	@, tmp350,
	ldr	r9, [fp, #-148]	@, %sfp
	str	sl, [fp, #-172]	@, %sfp
	add	sl, r8, #29	@, tmp395,
	add	lr, r9, #150	@,,
	str	lr, [fp, #-176]	@, %sfp
	str	sl, [fp, #-156]	@, %sfp
	ldr	r9, [fp, #-160]	@, %sfp
	mul	sl, r0, r7	@, D.25047, tmp429
	add	r8, r9, #77	@ tmp411,,
	ldr	lr, [fp, #-168]	@, %sfp
	mul	r8, ip, r8	@, D.25060, tmp411
	ldr	r7, [fp, #-164]	@, %sfp
	add	r9, lr, #29	@ tmp457,,
	movw	lr, #:lower16:1759218605	@ tmp274,
	str	sl, [fp, #-148]	@, %sfp
	movt	lr, #:upper16:1759218605	@ tmp274,
	mul	r9, r1, r9	@ tmp458, D.25034, tmp457
	mul	sl, ip, r7	@ tmp272, D.25060,
	str	r8, [fp, #-152]	@, %sfp
	mov	r7, r8, asr #31	@,,
	ldr	r8, [fp, #-148]	@, %sfp
	str	r7, [fp, #-164]	@, %sfp
	mul	r6, r0, r6	@ tmp297, D.25047, tmp296
	mov	r7, r8, asr #31	@,,
	ldr	r8, [fp, #-144]	@, %sfp
	str	r7, [fp, #-160]	@, %sfp
	mul	r7, r1, r8	@ tmp325, D.25034,
	mov	r8, r9, asr #31	@, tmp458,
	str	r8, [fp, #-180]	@, %sfp
	ldr	r8, [fp, #-172]	@, %sfp
	mul	ip, ip, r8	@ tmp352, D.25060,
	mov	r8, sl, asr #31	@, tmp272,
	str	r8, [fp, #-184]	@, %sfp
	ldr	r8, [fp, #-176]	@, %sfp
	mul	r0, r0, r8	@ tmp379, D.25047,
	mov	r8, r6, asr #31	@, tmp297,
	str	r8, [fp, #-144]	@, %sfp
	ldr	r8, [fp, #-156]	@, %sfp
	mul	r1, r1, r8	@, D.25034,
	str	r1, [fp, #-188]	@, %sfp
	mov	r1, r7, asr #31	@, tmp325,
	str	r1, [fp, #-172]	@, %sfp
	smull	r1, r8, lr, r9	@,, tmp274, tmp458
	mov	r1, r0, asr #31	@, tmp379,
	str	r1, [fp, #-176]	@, %sfp
	mov	r9, ip, asr #31	@ tmp356, tmp352,
	str	r8, [fp, #-168]	@, %sfp
	smull	r8, sl, lr, sl	@, tmp273, tmp274, tmp272
	smull	r8, r6, lr, r6	@, tmp298, tmp274, tmp297
	ldr	r8, [fp, #-188]	@, %sfp
	mov	r1, r8, asr #31	@,,
	str	r1, [fp, #-156]	@, %sfp
	smull	r8, r7, lr, r7	@, tmp326, tmp274, tmp325
	ldr	r8, [fp, #-184]	@, %sfp
	ldr	r1, [fp, #-144]	@, %sfp
	rsb	sl, r8, sl, asr #12	@, prephitmp.411,, tmp273,
	smull	r8, ip, lr, ip	@, tmp353, tmp274, tmp352
	rsb	r8, r1, r6, asr #12	@,,, tmp298,
	smull	r6, r0, lr, r0	@, tmp380, tmp274, tmp379
	str	r8, [fp, #-224]	@, %sfp
	ldr	r6, [fp, #-188]	@, %sfp
	rsb	ip, r9, ip, asr #12	@, prephitmp.422, tmp356, tmp353,
	ldr	r8, [fp, #-152]	@, %sfp
	ldr	r1, [fp, #-172]	@, %sfp
	rsb	r7, r1, r7, asr #12	@, prephitmp.421,, tmp326,
	smull	r6, r1, lr, r6	@, tmp398, tmp274,
	smull	r9, r6, lr, r8	@,, tmp274,
	ldr	r9, [fp, #-176]	@, %sfp
	rsb	r8, r9, r0, asr #12	@,,, tmp380,
	str	r8, [fp, #-220]	@, %sfp
	ldr	r8, [fp, #-180]	@, %sfp
	str	r6, [fp, #-144]	@, %sfp
	ldr	r6, [fp, #-148]	@, %sfp
	smull	r9, r0, lr, r6	@,, tmp274,
	ldr	r9, [fp, #-156]	@, %sfp
	ldr	lr, [fp, #-168]	@, %sfp
	rsb	r1, r9, r1, asr #12	@, prephitmp.424,, tmp398,
	str	r0, [fp, #-148]	@, %sfp
	rsb	r9, r8, lr, asr #12	@, prephitmp.426,,,
	str	sl, [fp, #-140]	@ prephitmp.411, stCSCMatrix.csc_coef00
	ldr	r0, [fp, #-144]	@, %sfp
	ldr	r6, [fp, #-164]	@, %sfp
	ldr	lr, [fp, #-224]	@, %sfp
	rsb	r8, r6, r0, asr #12	@, prephitmp.384,,,
	ldr	r6, [fp, #-148]	@, %sfp
	ldr	r0, [fp, #-160]	@, %sfp
	str	lr, [fp, #-136]	@, stCSCMatrix.csc_coef01
	rsb	lr, r0, r6, asr #12	@, prephitmp.425,,,
	ldr	r0, [fp, #-220]	@, %sfp
	str	r7, [fp, #-132]	@ prephitmp.421, stCSCMatrix.csc_coef02
	str	ip, [fp, #-128]	@ prephitmp.422, stCSCMatrix.csc_coef10
	str	r0, [fp, #-124]	@, stCSCMatrix.csc_coef11
	str	r1, [fp, #-120]	@ prephitmp.424, stCSCMatrix.csc_coef12
	str	r8, [fp, #-116]	@ prephitmp.384, stCSCMatrix.csc_coef20
	str	lr, [fp, #-112]	@ prephitmp.425, stCSCMatrix.csc_coef21
	str	r9, [fp, #-108]	@ prephitmp.426, stCSCMatrix.csc_coef22
	b	.L92	@
.L105:
	mov	r0, #1	@,
	mov	r1, #41	@,
	ldr	r2, .L112	@,
	movw	r3, #1223	@,
	movw	ip, #:lower16:.LC2	@ tmp198,
	movt	ip, #:upper16:.LC2	@ tmp198,
	str	ip, [sp, #0]	@ tmp198,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.24322,
	b	.L87	@
.L113:
	.align	2
.L112:
	.word	.LANCHOR0+552
	.fnend
	.size	PQ_MNG_SetCSCPictureParam, .-PQ_MNG_SetCSCPictureParam
	.align	2
	.global	PQ_MNG_SetHDPictureSetting
	.type	PQ_MNG_SetHDPictureSetting, %function
PQ_MNG_SetHDPictureSetting:
	.fnstart
.LFB666:
	@ args = 0, pretend = 0, frame = 96
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #108
	sub	sp, sp, #108	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r0, #0	@ pstPictureSetting,
	cmpne	r1, #0	@, pstColorTemp,
	mov	r4, r1	@ pstColorTemp, pstColorTemp
	mov	r3, r0	@ pstPictureSetting, pstPictureSetting
	movne	sl, #0	@, tmp151
	moveq	sl, #1	@, tmp151
	beq	.L118	@,
	ldrh	r8, [r0, #4]	@ D.24444, <variable>.u16Hue
	movw	ip, #:lower16:.LANCHOR1	@ tmp155,
	ldrh	r6, [r0, #0]	@ D.24441, <variable>.u16Brightness
	movt	ip, #:upper16:.LANCHOR1	@ tmp155,
	ldrh	r7, [r3, #6]	@ D.24443, <variable>.u16Saturation
	mov	lr, #128	@ tmp177,
	ldrh	r5, [r3, #2]	@ D.24442, <variable>.u16Contrast
	mov	r0, #2097152	@,
	strh	r6, [ip, #20]	@ movhi	@ D.24441, sg_stHDPictureSetting.u16Brightness
	mov	r2, r6	@, D.24441
	strh	r7, [ip, #26]	@ movhi	@ D.24443, sg_stHDPictureSetting.u16Saturation
	movw	r1, #:lower16:.LC5	@,
	strh	r5, [ip, #22]	@ movhi	@ D.24442, sg_stHDPictureSetting.u16Contrast
	mov	r3, r5	@, D.24442
	strh	r8, [ip, #24]	@ movhi	@ D.24444, sg_stHDPictureSetting.u16Hue
	movt	r1, #:upper16:.LC5	@,
	ldrh	r9, [r4, #10]	@, <variable>.s16BlueOffset
	strh	r9, [ip, #18]	@ movhi	@, sg_stColorTemp.s16BlueOffset
	ldrh	r9, [r4, #0]	@, <variable>.s16RedGain
	strh	r9, [ip, #8]	@ movhi	@, sg_stColorTemp.s16RedGain
	ldrh	r9, [r4, #2]	@, <variable>.s16GreenGain
	strh	r9, [ip, #10]	@ movhi	@, sg_stColorTemp.s16GreenGain
	ldrh	r9, [r4, #4]	@, <variable>.s16BlueGain
	strh	r9, [ip, #12]	@ movhi	@, sg_stColorTemp.s16BlueGain
	ldrh	r9, [r4, #6]	@, <variable>.s16RedOffset
	strh	r9, [ip, #14]	@ movhi	@, sg_stColorTemp.s16RedOffset
	ldrh	r9, [r4, #8]	@, <variable>.s16GreenOffset
	str	r6, [fp, #-92]	@ D.24441, stV0CSCParameter.u16Brightness
	str	r5, [fp, #-88]	@ D.24442, stV0CSCParameter.u16Contrast
	ldrh	r4, [ip, #68]	@, <variable>.u16InputColorSpace
	strh	r9, [ip, #16]	@ movhi	@, sg_stColorTemp.s16GreenOffset
	str	r7, [fp, #-80]	@ D.24443, stV0CSCParameter.u16Saturation
	strh	r4, [fp, #-52]	@ movhi	@, stV0CSCParameter.u16InputColorSpace
	ldrh	r9, [ip, #72]	@, <variable>.u16OutputColorSpace
	str	lr, [fp, #-76]	@ tmp177, stV0CSCParameter.as16ColorTempGain
	str	lr, [fp, #-72]	@ tmp177, stV0CSCParameter.as16ColorTempGain
	str	lr, [fp, #-68]	@ tmp177, stV0CSCParameter.as16ColorTempGain
	str	lr, [fp, #-64]	@ tmp177, stV0CSCParameter.as16ColorTempOffset
	str	lr, [fp, #-60]	@ tmp177, stV0CSCParameter.as16ColorTempOffset
	strh	r9, [fp, #-50]	@ movhi	@, stV0CSCParameter.u16OutputColorSpace
	str	r8, [fp, #-84]	@ D.24444, stV0CSCParameter.u16Hue
	str	lr, [fp, #-56]	@ tmp177, stV0CSCParameter.as16ColorTempOffset
	ldr	r4, [ip, #76]	@, <variable>.bFullRange
	str	r4, [fp, #-48]	@, stV0CSCParameter.bFullRange
	ldrh	r9, [ip, #80]	@, <variable>.u16InputColorSpace
	strh	r9, [fp, #-100]	@ movhi	@, stV1CSCParameter.u16InputColorSpace
	ldr	r4, [ip, #88]	@ <variable>.bFullRange, <variable>.bFullRange
	ldrh	ip, [ip, #84]	@, <variable>.u16OutputColorSpace
	str	lr, [fp, #-104]	@ tmp177, stV1CSCParameter.as16ColorTempOffset
	str	lr, [fp, #-124]	@ tmp177, stV1CSCParameter.as16ColorTempGain
	strh	ip, [fp, #-98]	@ movhi	@, stV1CSCParameter.u16OutputColorSpace
	str	lr, [fp, #-120]	@ tmp177, stV1CSCParameter.as16ColorTempGain
	str	lr, [fp, #-116]	@ tmp177, stV1CSCParameter.as16ColorTempGain
	str	lr, [fp, #-112]	@ tmp177, stV1CSCParameter.as16ColorTempOffset
	str	lr, [fp, #-108]	@ tmp177, stV1CSCParameter.as16ColorTempOffset
	str	r7, [sp, #0]	@ D.24443,
	str	r4, [fp, #-96]	@ <variable>.bFullRange, stV1CSCParameter.bFullRange
	str	r8, [sp, #4]	@ D.24444,
	str	r6, [fp, #-140]	@ D.24441, stV1CSCParameter.u16Brightness
	str	r5, [fp, #-136]	@ D.24442, stV1CSCParameter.u16Contrast
	str	r7, [fp, #-128]	@ D.24443, stV1CSCParameter.u16Saturation
	str	r8, [fp, #-132]	@ D.24444, stV1CSCParameter.u16Hue
	bl	PQ_HAL_PrintMsg	@
	sub	r1, fp, #92	@,,
	mov	r0, sl	@, tmp151
	bl	PQ_MNG_SetCSCPictureParam	@
	mov	r0, #1	@,
	sub	r1, fp, #140	@,,
	bl	PQ_MNG_SetCSCPictureParam	@
	mov	r0, sl	@ D.24440, tmp151
.L116:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L118:
	mov	r0, #1	@,
	mov	r1, #41	@,
	ldr	r2, .L119	@,
	movw	r3, #1460	@,
	movw	ip, #:lower16:.LC4	@ tmp154,
	movt	ip, #:upper16:.LC4	@ tmp154,
	str	ip, [sp, #0]	@ tmp154,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.24440,
	b	.L116	@
.L120:
	.align	2
.L119:
	.word	.LANCHOR0+740
	.fnend
	.size	PQ_MNG_SetHDPictureSetting, .-PQ_MNG_SetHDPictureSetting
	.align	2
	.global	PQ_MNG_SetSDPictureSetting
	.type	PQ_MNG_SetSDPictureSetting, %function
PQ_MNG_SetSDPictureSetting:
	.fnstart
.LFB665:
	@ args = 0, pretend = 0, frame = 96
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #108
	sub	sp, sp, #108	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r0, #0	@ pstPictureSetting,
	cmpne	r1, #0	@, pstColorTemp,
	mov	r4, r1	@ pstColorTemp, pstColorTemp
	mov	r3, r0	@ pstPictureSetting, pstPictureSetting
	movne	sl, #0	@, tmp151
	moveq	sl, #1	@, tmp151
	beq	.L125	@,
	ldrh	r8, [r0, #4]	@ D.24398, <variable>.u16Hue
	movw	ip, #:lower16:.LANCHOR1	@ tmp155,
	ldrh	r6, [r0, #0]	@ D.24395, <variable>.u16Brightness
	movt	ip, #:upper16:.LANCHOR1	@ tmp155,
	ldrh	r7, [r3, #6]	@ D.24397, <variable>.u16Saturation
	mov	lr, #128	@ tmp177,
	ldrh	r5, [r3, #2]	@ D.24396, <variable>.u16Contrast
	mov	r0, #2097152	@,
	strh	r6, [ip, #0]	@ movhi	@ D.24395, sg_stSDPictureSetting.u16Brightness
	mov	r2, r6	@, D.24395
	strh	r7, [ip, #6]	@ movhi	@ D.24397, sg_stSDPictureSetting.u16Saturation
	movw	r1, #:lower16:.LC6	@,
	strh	r5, [ip, #2]	@ movhi	@ D.24396, sg_stSDPictureSetting.u16Contrast
	mov	r3, r5	@, D.24396
	strh	r8, [ip, #4]	@ movhi	@ D.24398, sg_stSDPictureSetting.u16Hue
	movt	r1, #:upper16:.LC6	@,
	ldrh	r9, [r4, #10]	@, <variable>.s16BlueOffset
	strh	r9, [ip, #18]	@ movhi	@, sg_stColorTemp.s16BlueOffset
	ldrh	r9, [r4, #0]	@, <variable>.s16RedGain
	strh	r9, [ip, #8]	@ movhi	@, sg_stColorTemp.s16RedGain
	ldrh	r9, [r4, #2]	@, <variable>.s16GreenGain
	strh	r9, [ip, #10]	@ movhi	@, sg_stColorTemp.s16GreenGain
	ldrh	r9, [r4, #4]	@, <variable>.s16BlueGain
	strh	r9, [ip, #12]	@ movhi	@, sg_stColorTemp.s16BlueGain
	ldrh	r9, [r4, #6]	@, <variable>.s16RedOffset
	strh	r9, [ip, #14]	@ movhi	@, sg_stColorTemp.s16RedOffset
	ldrh	r9, [r4, #8]	@, <variable>.s16GreenOffset
	str	r6, [fp, #-92]	@ D.24395, stV3CSCParameter.u16Brightness
	str	r5, [fp, #-88]	@ D.24396, stV3CSCParameter.u16Contrast
	ldrh	r4, [ip, #104]	@, <variable>.u16InputColorSpace
	strh	r9, [ip, #16]	@ movhi	@, sg_stColorTemp.s16GreenOffset
	str	r7, [fp, #-80]	@ D.24397, stV3CSCParameter.u16Saturation
	strh	r4, [fp, #-52]	@ movhi	@, stV3CSCParameter.u16InputColorSpace
	ldrh	r9, [ip, #108]	@, <variable>.u16OutputColorSpace
	str	lr, [fp, #-76]	@ tmp177, stV3CSCParameter.as16ColorTempGain
	str	lr, [fp, #-72]	@ tmp177, stV3CSCParameter.as16ColorTempGain
	str	lr, [fp, #-68]	@ tmp177, stV3CSCParameter.as16ColorTempGain
	str	lr, [fp, #-64]	@ tmp177, stV3CSCParameter.as16ColorTempOffset
	str	lr, [fp, #-60]	@ tmp177, stV3CSCParameter.as16ColorTempOffset
	strh	r9, [fp, #-50]	@ movhi	@, stV3CSCParameter.u16OutputColorSpace
	str	r8, [fp, #-84]	@ D.24398, stV3CSCParameter.u16Hue
	str	lr, [fp, #-56]	@ tmp177, stV3CSCParameter.as16ColorTempOffset
	ldr	r4, [ip, #112]	@, <variable>.bFullRange
	str	r4, [fp, #-48]	@, stV3CSCParameter.bFullRange
	ldrh	r9, [ip, #116]	@, <variable>.u16InputColorSpace
	strh	r9, [fp, #-100]	@ movhi	@, stV4CSCParameter.u16InputColorSpace
	ldr	r4, [ip, #124]	@ <variable>.bFullRange, <variable>.bFullRange
	ldrh	ip, [ip, #120]	@, <variable>.u16OutputColorSpace
	str	lr, [fp, #-104]	@ tmp177, stV4CSCParameter.as16ColorTempOffset
	str	lr, [fp, #-124]	@ tmp177, stV4CSCParameter.as16ColorTempGain
	strh	ip, [fp, #-98]	@ movhi	@, stV4CSCParameter.u16OutputColorSpace
	str	lr, [fp, #-120]	@ tmp177, stV4CSCParameter.as16ColorTempGain
	str	lr, [fp, #-116]	@ tmp177, stV4CSCParameter.as16ColorTempGain
	str	lr, [fp, #-112]	@ tmp177, stV4CSCParameter.as16ColorTempOffset
	str	lr, [fp, #-108]	@ tmp177, stV4CSCParameter.as16ColorTempOffset
	str	r7, [sp, #0]	@ D.24397,
	str	r4, [fp, #-96]	@ <variable>.bFullRange, stV4CSCParameter.bFullRange
	str	r8, [sp, #4]	@ D.24398,
	str	r6, [fp, #-140]	@ D.24395, stV4CSCParameter.u16Brightness
	str	r5, [fp, #-136]	@ D.24396, stV4CSCParameter.u16Contrast
	str	r7, [fp, #-128]	@ D.24397, stV4CSCParameter.u16Saturation
	str	r8, [fp, #-132]	@ D.24398, stV4CSCParameter.u16Hue
	bl	PQ_HAL_PrintMsg	@
	sub	r1, fp, #92	@,,
	mov	r0, #3	@,
	bl	PQ_MNG_SetCSCPictureParam	@
	mov	r0, #4	@,
	sub	r1, fp, #140	@,,
	bl	PQ_MNG_SetCSCPictureParam	@
	mov	r0, sl	@ D.24394, tmp151
.L123:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L125:
	mov	r0, #1	@,
	mov	r1, #41	@,
	ldr	r2, .L126	@,
	movw	r3, #1386	@,
	movw	ip, #:lower16:.LC4	@ tmp154,
	movt	ip, #:upper16:.LC4	@ tmp154,
	str	ip, [sp, #0]	@ tmp154,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.24394,
	b	.L123	@
.L127:
	.align	2
.L126:
	.word	.LANCHOR0+768
	.fnend
	.size	PQ_MNG_SetSDPictureSetting, .-PQ_MNG_SetSDPictureSetting
	.align	2
	.global	PQ_MNG_SetCSCMode
	.type	PQ_MNG_SetCSCMode, %function
PQ_MNG_SetCSCMode:
	.fnstart
.LFB663:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #72
	sub	sp, sp, #72	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	subs	r6, r1, #0	@ pstCscMode, pstCscMode
	mov	r4, r0	@ enDisplayId, enDisplayId
	beq	.L159	@,
	cmp	r0, #4	@ enDisplayId,
	bhi	.L160	@,
	ldr	r3, [r6, #4]	@ D.24338, <variable>.enCSC
	cmp	r3, #1	@ D.24338,
	beq	.L161	@,
	cmp	r3, #0	@ D.24338,
	bne	.L134	@,
	mov	r2, r0, asl #1	@ tmp548, enDisplayId,
	movw	r5, #:lower16:.LANCHOR1	@ tmp550,
	add	r1, r2, r0	@ tmp166, tmp548, enDisplayId
	movt	r5, #:upper16:.LANCHOR1	@ tmp550,
	mov	r0, #9	@ tmp179,
	mov	ip, #8	@ tmp170,
	add	lr, r5, r1, asl #2	@, tmp168, tmp550, tmp166,
	str	r0, [lr, #72]	@ tmp179, <variable>.u16OutputColorSpace
	str	ip, [lr, #68]	@ tmp170, <variable>.u16InputColorSpace
.L133:
	add	r1, r2, r4	@ tmp325, tmp548, enDisplayId
	mov	r7, r4, asl #3	@ tmp549, enDisplayId,
	add	lr, r7, r5	@ tmp333, tmp549, tmp550
	cmp	r3, #2	@ D.24338,
	add	r0, r5, r1, asl #2	@, tmp327, tmp550, tmp325,
	mov	r1, #0	@ tmp329,
	str	r1, [r0, #76]	@ tmp329, <variable>.bFullRange
	str	r3, [lr, #32]	@ D.24338, <variable>.enCSC
	bne	.L141	@,
	movw	r0, #450	@ tmp340,
	mov	r2, #512	@ tmp348,
	mov	ip, #264	@ tmp335,
	mov	r3, #516	@ tmp336,
	mov	lr, #100	@ tmp337,
	str	ip, [fp, #-88]	@ tmp335, st_csc_coef.csc_coef00
	str	r3, [fp, #-84]	@ tmp336, st_csc_coef.csc_coef01
	mvn	ip, #151	@ tmp338,
	str	lr, [fp, #-80]	@ tmp337, st_csc_coef.csc_coef02
	movw	r3, #:lower16:-298	@ tmp339,
	str	ip, [fp, #-76]	@ tmp338, st_csc_coef.csc_coef10
	movt	r3, #:upper16:-298	@ tmp339,
	mvn	lr, #376	@ tmp342,
	str	r3, [fp, #-72]	@ tmp339, st_csc_coef.csc_coef11
	mvn	ip, #72	@ tmp343,
	mov	r3, #64	@ tmp347,
	str	r1, [fp, #-52]	@ tmp329, stDcCoef.csc_in_dc0
	str	r0, [fp, #-64]	@ tmp340, st_csc_coef.csc_coef20
	str	r2, [fp, #-40]	@ tmp348, stDcCoef.csc_out_dc0
	str	r0, [fp, #-68]	@ tmp340, st_csc_coef.csc_coef12
	str	lr, [fp, #-60]	@ tmp342, st_csc_coef.csc_coef21
	str	ip, [fp, #-56]	@ tmp343, st_csc_coef.csc_coef22
	str	r3, [fp, #-32]	@ tmp347, stDcCoef.csc_out_dc2
	str	r1, [fp, #-44]	@ tmp329, stDcCoef.csc_in_dc2
	str	r1, [fp, #-48]	@ tmp329, stDcCoef.csc_in_dc1
	str	r2, [fp, #-36]	@ tmp348, stDcCoef.csc_out_dc1
.L142:
	sub	r1, fp, #88	@,,
	mov	r0, r4	@, enDisplayId
	bl	PQ_HAL_SetCscCoef	@
	sub	r1, fp, #52	@,,
	mov	r0, r4	@, enDisplayId
	add	r5, r7, r5	@ tmp536, tmp549, tmp550
	bl	PQ_HAL_SetCscDcCoef	@
	mov	r0, r4	@, enDisplayId
	ldr	r1, [r6, #0]	@, <variable>.bCSCEn
	bl	PQ_HAL_EnableCSC	@
	ldr	r2, [r6, #0]	@ <variable>.bCSCEn, <variable>.bCSCEn
	str	r2, [r5, #28]	@ <variable>.bCSCEn, <variable>.bCSCEn
	ldr	r0, [r6, #0]	@ <variable>.bCSCEn, <variable>.bCSCEn
	cmp	r0, #1	@ <variable>.bCSCEn,
	beq	.L154	@,
.L158:
	mov	r0, #0	@ D.24335,
.L130:
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L134:
	cmp	r3, #11	@ D.24338,
	beq	.L162	@,
	cmp	r3, #3	@ D.24338,
	beq	.L163	@,
	cmp	r3, #2	@ D.24338,
	beq	.L164	@,
	cmp	r3, #6	@ D.24338,
	beq	.L165	@,
	cmp	r3, #4	@ D.24338,
	beq	.L166	@,
	cmp	r3, #5	@ D.24338,
	beq	.L167	@,
	mov	r2, r0, asl #1	@ tmp548, enDisplayId,
	movw	r5, #:lower16:.LANCHOR1	@ tmp550,
	add	r0, r2, r0	@ tmp292, tmp548, enDisplayId
	movt	r5, #:upper16:.LANCHOR1	@ tmp550,
	sub	r1, r3, #7	@ tmp306, D.24338,
	mov	lr, #0	@ tmp296,
	add	r0, r5, r0, asl #2	@, tmp294, tmp550, tmp292,
	cmp	r1, #3	@ tmp306,
	str	lr, [r0, #72]	@ tmp296, <variable>.u16OutputColorSpace
	str	lr, [r0, #68]	@ tmp296, <variable>.u16InputColorSpace
	bhi	.L133	@,
	mov	r7, r4, asl #3	@ tmp549, enDisplayId,
	mov	ip, #1	@ tmp315,
	add	r2, r7, r5	@ tmp319, tmp549, tmp550
	str	ip, [r0, #76]	@ tmp315, <variable>.bFullRange
	str	r3, [r2, #32]	@ D.24338, <variable>.enCSC
.L141:
	cmp	r3, #0	@ D.24338,
	bne	.L143	@,
	movw	r1, #1192	@ tmp350,
	movw	r0, #1634	@ tmp352,
	movw	r2, #:lower16:-400	@ tmp354,
	str	r0, [fp, #-80]	@ tmp352, st_csc_coef.csc_coef02
	movt	r2, #:upper16:-400	@ tmp354,
	mvn	ip, #832	@ tmp355,
	str	r2, [fp, #-72]	@ tmp354, st_csc_coef.csc_coef11
	movw	lr, #2066	@ tmp357,
	mvn	r0, #63	@ tmp359,
	movw	r2, #:lower16:-512	@ tmp360,
	str	r3, [fp, #-40]	@ D.24338, stDcCoef.csc_out_dc0
	movt	r2, #:upper16:-512	@ tmp360,
	str	r1, [fp, #-64]	@ tmp350, st_csc_coef.csc_coef20
	str	r1, [fp, #-88]	@ tmp350, st_csc_coef.csc_coef00
	str	ip, [fp, #-68]	@ tmp355, st_csc_coef.csc_coef12
	str	lr, [fp, #-60]	@ tmp357, st_csc_coef.csc_coef21
	str	r0, [fp, #-44]	@ tmp359, stDcCoef.csc_in_dc2
	str	r3, [fp, #-84]	@ D.24338, st_csc_coef.csc_coef01
	str	r2, [fp, #-52]	@ tmp360, stDcCoef.csc_in_dc0
	str	r1, [fp, #-76]	@ tmp350, st_csc_coef.csc_coef10
	str	r3, [fp, #-56]	@ D.24338, st_csc_coef.csc_coef22
	str	r2, [fp, #-48]	@ tmp360, stDcCoef.csc_in_dc1
	str	r3, [fp, #-32]	@ D.24338, stDcCoef.csc_out_dc2
	str	r3, [fp, #-36]	@ D.24338, stDcCoef.csc_out_dc1
	b	.L142	@
.L143:
	cmp	r3, #3	@ D.24338,
	beq	.L168	@,
	cmp	r3, #1	@ D.24338,
	beq	.L169	@,
	cmp	r3, #4	@ D.24338,
	beq	.L170	@,
	cmp	r3, #5	@ D.24338,
	beq	.L171	@,
	cmp	r3, #6	@ D.24338,
	beq	.L153	@,
	cmp	r3, #7	@ D.24338,
	beq	.L172	@,
	cmp	r3, #8	@ D.24338,
	beq	.L173	@,
	cmp	r3, #9	@ D.24338,
	beq	.L174	@,
	cmp	r3, #10	@ D.24338,
	beq	.L175	@,
	cmp	r3, #11	@ D.24338,
	beq	.L176	@,
.L153:
	mov	r3, #0	@ tmp516,
	mov	r1, #1024	@ tmp515,
	mov	r0, #512	@ tmp528,
	mvn	lr, #63	@ tmp524,
	movw	r2, #:lower16:-512	@ tmp525,
	mov	ip, #64	@ tmp527,
	movt	r2, #:upper16:-512	@ tmp525,
	str	r3, [fp, #-60]	@ tmp516, st_csc_coef.csc_coef21
	str	r3, [fp, #-84]	@ tmp516, st_csc_coef.csc_coef01
	str	r1, [fp, #-56]	@ tmp515, st_csc_coef.csc_coef22
	str	r0, [fp, #-40]	@ tmp528, stDcCoef.csc_out_dc0
	str	lr, [fp, #-44]	@ tmp524, stDcCoef.csc_in_dc2
	str	r1, [fp, #-88]	@ tmp515, st_csc_coef.csc_coef00
	str	r2, [fp, #-52]	@ tmp525, stDcCoef.csc_in_dc0
	str	ip, [fp, #-32]	@ tmp527, stDcCoef.csc_out_dc2
	str	r3, [fp, #-80]	@ tmp516, st_csc_coef.csc_coef02
	str	r3, [fp, #-76]	@ tmp516, st_csc_coef.csc_coef10
	str	r1, [fp, #-72]	@ tmp515, st_csc_coef.csc_coef11
	str	r3, [fp, #-68]	@ tmp516, st_csc_coef.csc_coef12
	str	r3, [fp, #-64]	@ tmp516, st_csc_coef.csc_coef20
	str	r2, [fp, #-48]	@ tmp525, stDcCoef.csc_in_dc1
	str	r0, [fp, #-36]	@ tmp528, stDcCoef.csc_out_dc1
	b	.L142	@
.L161:
	mov	r2, r0, asl #1	@ tmp548, enDisplayId,
	movw	r5, #:lower16:.LANCHOR1	@ tmp550,
	add	r7, r2, r0	@ tmp148, tmp548, enDisplayId
	movt	r5, #:upper16:.LANCHOR1	@ tmp550,
	mov	r0, #9	@ tmp161,
	add	r1, r5, r7, asl #2	@, tmp150, tmp550, tmp148,
	str	r0, [r1, #72]	@ tmp161, <variable>.u16OutputColorSpace
	str	r3, [r1, #68]	@ D.24338, <variable>.u16InputColorSpace
	b	.L133	@
.L154:
	movw	r0, #:lower16:.LANCHOR1	@,
	movt	r0, #:upper16:.LANCHOR1	@,
	add	r1, r0, #8	@,,
	bl	PQ_MNG_SetSDPictureSetting	@
	ldr	r0, .L177	@,
	sub	r1, r0, #12	@,,
	bl	PQ_MNG_SetHDPictureSetting	@
	b	.L158	@
.L163:
	mov	r2, r0, asl #1	@ tmp548, enDisplayId,
	movw	r5, #:lower16:.LANCHOR1	@ tmp550,
	add	ip, r2, r0	@ tmp202, tmp548, enDisplayId
	movt	r5, #:upper16:.LANCHOR1	@ tmp550,
	mov	r7, #1	@ tmp215,
	mov	r0, #9	@ tmp206,
	add	r1, r5, ip, asl #2	@, tmp204, tmp550, tmp202,
	str	r7, [r1, #72]	@ tmp215, <variable>.u16OutputColorSpace
	str	r0, [r1, #68]	@ tmp206, <variable>.u16InputColorSpace
	b	.L133	@
.L169:
	mov	r3, #0	@ tmp381,
	movw	r1, #1192	@ tmp380,
	movw	r2, #1836	@ tmp382,
	mvn	r0, #217	@ tmp384,
	str	r2, [fp, #-80]	@ tmp382, st_csc_coef.csc_coef02
	movw	ip, #:lower16:-547	@ tmp385,
	str	r0, [fp, #-72]	@ tmp384, st_csc_coef.csc_coef11
	movt	ip, #:upper16:-547	@ tmp385,
	movw	lr, #2166	@ tmp387,
	mvn	r2, #63	@ tmp389,
	movw	r0, #:lower16:-512	@ tmp390,
	str	r3, [fp, #-40]	@ tmp381, stDcCoef.csc_out_dc0
	movt	r0, #:upper16:-512	@ tmp390,
	str	r3, [fp, #-84]	@ tmp381, st_csc_coef.csc_coef01
	str	r1, [fp, #-64]	@ tmp380, st_csc_coef.csc_coef20
	str	r1, [fp, #-88]	@ tmp380, st_csc_coef.csc_coef00
	str	ip, [fp, #-68]	@ tmp385, st_csc_coef.csc_coef12
	str	lr, [fp, #-60]	@ tmp387, st_csc_coef.csc_coef21
	str	r2, [fp, #-44]	@ tmp389, stDcCoef.csc_in_dc2
	str	r1, [fp, #-76]	@ tmp380, st_csc_coef.csc_coef10
	str	r0, [fp, #-52]	@ tmp390, stDcCoef.csc_in_dc0
	str	r3, [fp, #-56]	@ tmp381, st_csc_coef.csc_coef22
	str	r0, [fp, #-48]	@ tmp390, stDcCoef.csc_in_dc1
	str	r3, [fp, #-32]	@ tmp381, stDcCoef.csc_out_dc2
	str	r3, [fp, #-36]	@ tmp381, stDcCoef.csc_out_dc1
	b	.L142	@
.L162:
	mov	r2, r0, asl #1	@ tmp548, enDisplayId,
	movw	r5, #:lower16:.LANCHOR1	@ tmp550,
	add	lr, r2, r0	@ tmp184, tmp548, enDisplayId
	movt	r5, #:upper16:.LANCHOR1	@ tmp550,
	mov	r7, #9	@ tmp188,
	add	ip, r5, lr, asl #2	@, tmp186, tmp550, tmp184,
	str	r7, [ip, #72]	@ tmp188, <variable>.u16OutputColorSpace
	str	r7, [ip, #68]	@ tmp188, <variable>.u16InputColorSpace
	b	.L133	@
.L168:
	mov	r3, #0	@ tmp374,
	movw	r0, #450	@ tmp370,
	mov	r1, #512	@ tmp378,
	mov	ip, #188	@ tmp365,
	movw	lr, #629	@ tmp366,
	mov	r2, #63	@ tmp367,
	str	ip, [fp, #-88]	@ tmp365, st_csc_coef.csc_coef00
	mvn	ip, #102	@ tmp368,
	str	lr, [fp, #-84]	@ tmp366, st_csc_coef.csc_coef01
	movw	lr, #:lower16:-347	@ tmp369,
	str	r2, [fp, #-80]	@ tmp367, st_csc_coef.csc_coef02
	movt	lr, #:upper16:-347	@ tmp369,
	str	ip, [fp, #-76]	@ tmp368, st_csc_coef.csc_coef10
	mvn	r2, #408	@ tmp372,
	str	lr, [fp, #-72]	@ tmp369, st_csc_coef.csc_coef11
	mvn	ip, #40	@ tmp373,
	mov	lr, #64	@ tmp377,
	str	r3, [fp, #-52]	@ tmp374, stDcCoef.csc_in_dc0
	str	r3, [fp, #-44]	@ tmp374, stDcCoef.csc_in_dc2
	str	r0, [fp, #-64]	@ tmp370, st_csc_coef.csc_coef20
	str	r1, [fp, #-40]	@ tmp378, stDcCoef.csc_out_dc0
	str	r0, [fp, #-68]	@ tmp370, st_csc_coef.csc_coef12
	str	r2, [fp, #-60]	@ tmp372, st_csc_coef.csc_coef21
	str	ip, [fp, #-56]	@ tmp373, st_csc_coef.csc_coef22
	str	lr, [fp, #-32]	@ tmp377, stDcCoef.csc_out_dc2
	str	r3, [fp, #-48]	@ tmp374, stDcCoef.csc_in_dc1
	str	r1, [fp, #-36]	@ tmp378, stDcCoef.csc_out_dc1
	b	.L142	@
.L164:
	mov	r2, r0, asl #1	@ tmp548, enDisplayId,
	movw	r5, #:lower16:.LANCHOR1	@ tmp550,
	add	r7, r2, r0	@ tmp220, tmp548, enDisplayId
	movt	r5, #:upper16:.LANCHOR1	@ tmp550,
	mov	r0, #8	@ tmp233,
	mov	lr, #9	@ tmp224,
	add	r1, r5, r7, asl #2	@, tmp222, tmp550, tmp220,
	str	r0, [r1, #72]	@ tmp233, <variable>.u16OutputColorSpace
	str	lr, [r1, #68]	@ tmp224, <variable>.u16InputColorSpace
	b	.L133	@
.L170:
	mov	r3, #1024	@ tmp395,
	str	r3, [fp, #-88]	@ tmp395, st_csc_coef.csc_coef00
	mvn	r3, #73	@ tmp402,
	str	r3, [fp, #-60]	@ tmp402, st_csc_coef.csc_coef21
	movw	r3, #1007	@ tmp403,
	mov	r2, #0	@ tmp398,
	mov	r0, #102	@ tmp396,
	str	r2, [fp, #-64]	@ tmp398, st_csc_coef.csc_coef20
	str	r2, [fp, #-76]	@ tmp398, st_csc_coef.csc_coef10
	mov	ip, #196	@ tmp397,
	mov	r2, #512	@ tmp408,
	movw	lr, #1014	@ tmp399,
	mvn	r1, #112	@ tmp400,
	str	r2, [fp, #-40]	@ tmp408, stDcCoef.csc_out_dc0
	str	r0, [fp, #-84]	@ tmp396, st_csc_coef.csc_coef01
	str	ip, [fp, #-80]	@ tmp397, st_csc_coef.csc_coef02
	str	lr, [fp, #-72]	@ tmp399, st_csc_coef.csc_coef11
	str	r1, [fp, #-68]	@ tmp400, st_csc_coef.csc_coef12
.L156:
	mvn	r0, #63	@ tmp419,
	movw	lr, #:lower16:-512	@ tmp420,
	mov	ip, #64	@ tmp422,
	movt	lr, #:upper16:-512	@ tmp420,
	str	r3, [fp, #-56]	@ tmp418, st_csc_coef.csc_coef22
	str	r0, [fp, #-44]	@ tmp419, stDcCoef.csc_in_dc2
	str	r2, [fp, #-36]	@ tmp423, stDcCoef.csc_out_dc1
	str	lr, [fp, #-52]	@ tmp420, stDcCoef.csc_in_dc0
	str	ip, [fp, #-32]	@ tmp422, stDcCoef.csc_out_dc2
	str	lr, [fp, #-48]	@ tmp420, stDcCoef.csc_in_dc1
	b	.L142	@
.L167:
	mov	r2, r0, asl #1	@ tmp548, enDisplayId,
	movw	r5, #:lower16:.LANCHOR1	@ tmp550,
	add	ip, r2, r0	@ tmp274, tmp548, enDisplayId
	movt	r5, #:upper16:.LANCHOR1	@ tmp550,
	mov	r7, #1	@ tmp287,
	mov	r0, #8	@ tmp278,
	add	r1, r5, ip, asl #2	@, tmp276, tmp550, tmp274,
	str	r7, [r1, #72]	@ tmp287, <variable>.u16OutputColorSpace
	str	r0, [r1, #68]	@ tmp278, <variable>.u16InputColorSpace
	b	.L133	@
.L172:
	mov	r3, #0	@ tmp441,
	mov	ip, #1024	@ tmp440,
	movw	r1, #1436	@ tmp442,
	movw	r0, #:lower16:-352	@ tmp444,
	str	r1, [fp, #-80]	@ tmp442, st_csc_coef.csc_coef02
	movt	r0, #:upper16:-352	@ tmp444,
	movw	lr, #:lower16:-731	@ tmp445,
	movw	r2, #1815	@ tmp447,
	movt	lr, #:upper16:-731	@ tmp445,
	movw	r1, #:lower16:-512	@ tmp450,
	str	r3, [fp, #-40]	@ tmp441, stDcCoef.csc_out_dc0
	movt	r1, #:upper16:-512	@ tmp450,
	str	r3, [fp, #-84]	@ tmp441, st_csc_coef.csc_coef01
	str	ip, [fp, #-64]	@ tmp440, st_csc_coef.csc_coef20
	str	ip, [fp, #-88]	@ tmp440, st_csc_coef.csc_coef00
	str	r0, [fp, #-72]	@ tmp444, st_csc_coef.csc_coef11
	str	ip, [fp, #-76]	@ tmp440, st_csc_coef.csc_coef10
	str	lr, [fp, #-68]	@ tmp445, st_csc_coef.csc_coef12
	str	r2, [fp, #-60]	@ tmp447, st_csc_coef.csc_coef21
	str	r3, [fp, #-56]	@ tmp441, st_csc_coef.csc_coef22
	str	r1, [fp, #-52]	@ tmp450, stDcCoef.csc_in_dc0
	str	r3, [fp, #-44]	@ tmp441, stDcCoef.csc_in_dc2
	str	r1, [fp, #-48]	@ tmp450, stDcCoef.csc_in_dc1
	str	r3, [fp, #-32]	@ tmp441, stDcCoef.csc_out_dc2
	str	r3, [fp, #-36]	@ tmp441, stDcCoef.csc_out_dc1
	b	.L142	@
.L165:
	mov	r2, r0, asl #1	@ tmp548, enDisplayId,
	movw	r5, #:lower16:.LANCHOR1	@ tmp550,
	add	r1, r2, r0	@ tmp238, tmp548, enDisplayId
	movt	r5, #:upper16:.LANCHOR1	@ tmp550,
	mov	ip, #1	@ tmp242,
	add	lr, r5, r1, asl #2	@, tmp240, tmp550, tmp238,
	str	ip, [lr, #72]	@ tmp242, <variable>.u16OutputColorSpace
	str	ip, [lr, #68]	@ tmp242, <variable>.u16InputColorSpace
	b	.L133	@
.L171:
	mov	r2, #0	@ tmp413,
	mov	r1, #1024	@ tmp410,
	mvn	r3, #117	@ tmp411,
	str	r2, [fp, #-64]	@ tmp413, st_csc_coef.csc_coef20
	str	r2, [fp, #-76]	@ tmp413, st_csc_coef.csc_coef10
	mvn	r0, #212	@ tmp412,
	mov	r2, #512	@ tmp423,
	str	r1, [fp, #-88]	@ tmp410, st_csc_coef.csc_coef00
	str	r3, [fp, #-84]	@ tmp411, st_csc_coef.csc_coef01
	movw	ip, #1043	@ tmp414,
	mov	lr, #117	@ tmp415,
	mov	r1, #77	@ tmp417,
	str	r2, [fp, #-40]	@ tmp423, stDcCoef.csc_out_dc0
	movw	r3, #1050	@ tmp418,
	str	r0, [fp, #-80]	@ tmp412, st_csc_coef.csc_coef02
	str	ip, [fp, #-72]	@ tmp414, st_csc_coef.csc_coef11
	str	lr, [fp, #-68]	@ tmp415, st_csc_coef.csc_coef12
	str	r1, [fp, #-60]	@ tmp417, st_csc_coef.csc_coef21
	b	.L156	@
.L166:
	mov	r2, r0, asl #1	@ tmp548, enDisplayId,
	movw	r5, #:lower16:.LANCHOR1	@ tmp550,
	add	lr, r2, r0	@ tmp256, tmp548, enDisplayId
	movt	r5, #:upper16:.LANCHOR1	@ tmp550,
	mov	ip, #8	@ tmp269,
	mov	r0, #1	@ tmp260,
	add	r7, r5, lr, asl #2	@, tmp258, tmp550, tmp256,
	str	ip, [r7, #72]	@ tmp269, <variable>.u16OutputColorSpace
	str	r0, [r7, #68]	@ tmp260, <variable>.u16InputColorSpace
	b	.L133	@
.L160:
	mov	r0, #1	@,
	mov	r1, #41	@,
	ldr	r2, .L177+4	@,
	movw	r3, #1265	@,
	movw	lr, #:lower16:.LC8	@ tmp143,
	movt	lr, #:upper16:.LC8	@ tmp143,
	str	lr, [sp, #0]	@ tmp143,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.24335,
	b	.L130	@
.L173:
	mov	r3, #0	@ tmp456,
	mov	lr, #1024	@ tmp455,
	movw	r2, #1613	@ tmp457,
	mvn	r1, #190	@ tmp459,
	str	r2, [fp, #-80]	@ tmp457, st_csc_coef.csc_coef02
	movw	r0, #:lower16:-479	@ tmp460,
	movw	ip, #1901	@ tmp462,
	movt	r0, #:upper16:-479	@ tmp460,
	movw	r2, #:lower16:-512	@ tmp465,
	str	r3, [fp, #-40]	@ tmp456, stDcCoef.csc_out_dc0
	movt	r2, #:upper16:-512	@ tmp465,
	str	r3, [fp, #-84]	@ tmp456, st_csc_coef.csc_coef01
	str	lr, [fp, #-64]	@ tmp455, st_csc_coef.csc_coef20
	str	r1, [fp, #-72]	@ tmp459, st_csc_coef.csc_coef11
	str	lr, [fp, #-88]	@ tmp455, st_csc_coef.csc_coef00
	str	r0, [fp, #-68]	@ tmp460, st_csc_coef.csc_coef12
	str	ip, [fp, #-60]	@ tmp462, st_csc_coef.csc_coef21
	str	lr, [fp, #-76]	@ tmp455, st_csc_coef.csc_coef10
	str	r2, [fp, #-52]	@ tmp465, stDcCoef.csc_in_dc0
	str	r3, [fp, #-56]	@ tmp456, st_csc_coef.csc_coef22
	str	r3, [fp, #-44]	@ tmp456, stDcCoef.csc_in_dc2
	str	r2, [fp, #-48]	@ tmp465, stDcCoef.csc_in_dc1
	str	r3, [fp, #-32]	@ tmp456, stDcCoef.csc_out_dc2
	str	r3, [fp, #-36]	@ tmp456, stDcCoef.csc_out_dc1
	b	.L142	@
.L174:
	mov	r1, #117	@ tmp472,
	str	r1, [fp, #-80]	@ tmp472, st_csc_coef.csc_coef02
	mvn	r1, #82	@ tmp478,
	mov	r3, #512	@ tmp475,
	movw	ip, #306	@ tmp470,
	movw	lr, #601	@ tmp471,
	mov	r2, #0	@ tmp479,
	str	ip, [fp, #-88]	@ tmp470, st_csc_coef.csc_coef00
	str	lr, [fp, #-84]	@ tmp471, st_csc_coef.csc_coef01
	mvn	r0, #172	@ tmp473,
	movw	ip, #:lower16:-339	@ tmp474,
	mvn	lr, #428	@ tmp477,
	movt	ip, #:upper16:-339	@ tmp474,
	str	r3, [fp, #-40]	@ tmp475, stDcCoef.csc_out_dc0
	str	r3, [fp, #-68]	@ tmp475, st_csc_coef.csc_coef12
	str	r2, [fp, #-32]	@ tmp479, stDcCoef.csc_out_dc2
	str	r0, [fp, #-76]	@ tmp473, st_csc_coef.csc_coef10
	str	r3, [fp, #-64]	@ tmp475, st_csc_coef.csc_coef20
	str	ip, [fp, #-72]	@ tmp474, st_csc_coef.csc_coef11
	str	lr, [fp, #-60]	@ tmp477, st_csc_coef.csc_coef21
.L157:
	str	r1, [fp, #-56]	@ tmp493, st_csc_coef.csc_coef22
	str	r2, [fp, #-44]	@ tmp494, stDcCoef.csc_in_dc2
	str	r2, [fp, #-48]	@ tmp494, stDcCoef.csc_in_dc1
	str	r2, [fp, #-52]	@ tmp494, stDcCoef.csc_in_dc0
	str	r3, [fp, #-36]	@ tmp490, stDcCoef.csc_out_dc1
	b	.L142	@
.L175:
	mov	r3, #512	@ tmp490,
	mov	r1, #218	@ tmp485,
	mov	r0, #732	@ tmp486,
	mov	r2, #0	@ tmp494,
	str	r1, [fp, #-88]	@ tmp485, st_csc_coef.csc_coef00
	mov	ip, #74	@ tmp487,
	str	r0, [fp, #-84]	@ tmp486, st_csc_coef.csc_coef01
	mvn	lr, #117	@ tmp488,
	movw	r1, #:lower16:-394	@ tmp489,
	mvn	r0, #464	@ tmp492,
	movt	r1, #:upper16:-394	@ tmp489,
	str	r3, [fp, #-40]	@ tmp490, stDcCoef.csc_out_dc0
	str	r1, [fp, #-72]	@ tmp489, st_csc_coef.csc_coef11
	mvn	r1, #46	@ tmp493,
	str	r3, [fp, #-68]	@ tmp490, st_csc_coef.csc_coef12
	str	r2, [fp, #-32]	@ tmp494, stDcCoef.csc_out_dc2
	str	ip, [fp, #-80]	@ tmp487, st_csc_coef.csc_coef02
	str	lr, [fp, #-76]	@ tmp488, st_csc_coef.csc_coef10
	str	r3, [fp, #-64]	@ tmp490, st_csc_coef.csc_coef20
	str	r0, [fp, #-60]	@ tmp492, st_csc_coef.csc_coef21
	b	.L157	@
.L176:
	mov	r3, #0	@ tmp501,
	mov	lr, #1024	@ tmp500,
	mov	r2, #2	@ tmp512,
	str	r3, [fp, #-52]	@ tmp501, stDcCoef.csc_in_dc0
	str	r3, [fp, #-84]	@ tmp501, st_csc_coef.csc_coef01
	str	lr, [fp, #-56]	@ tmp500, st_csc_coef.csc_coef22
	str	r2, [fp, #-40]	@ tmp512, stDcCoef.csc_out_dc0
	str	lr, [fp, #-88]	@ tmp500, st_csc_coef.csc_coef00
	str	r3, [fp, #-80]	@ tmp501, st_csc_coef.csc_coef02
	str	r3, [fp, #-76]	@ tmp501, st_csc_coef.csc_coef10
	str	lr, [fp, #-72]	@ tmp500, st_csc_coef.csc_coef11
	str	r3, [fp, #-68]	@ tmp501, st_csc_coef.csc_coef12
	str	r3, [fp, #-64]	@ tmp501, st_csc_coef.csc_coef20
	str	r3, [fp, #-60]	@ tmp501, st_csc_coef.csc_coef21
	str	r3, [fp, #-44]	@ tmp501, stDcCoef.csc_in_dc2
	str	r3, [fp, #-48]	@ tmp501, stDcCoef.csc_in_dc1
	str	r2, [fp, #-32]	@ tmp512, stDcCoef.csc_out_dc2
	str	r2, [fp, #-36]	@ tmp512, stDcCoef.csc_out_dc1
	b	.L142	@
.L159:
	mov	r0, #1	@,
	mov	r1, #41	@,
	ldr	r2, .L177+4	@,
	movw	r3, #1259	@,
	movw	ip, #:lower16:.LC7	@ tmp140,
	movt	ip, #:upper16:.LC7	@ tmp140,
	str	ip, [sp, #0]	@ tmp140,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.24335,
	b	.L130	@
.L178:
	.align	2
.L177:
	.word	.LANCHOR1+20
	.word	.LANCHOR0+796
	.fnend
	.size	PQ_MNG_SetCSCMode, .-PQ_MNG_SetCSCMode
	.global	SIN_TABLE
	.global	COS_TABLE
	.global	CSCTable_NtscSDYCbCr_to_HDYCbCr
	.global	CSCTable_PalSDYCbCr_to_HDYCbCr
	.global	CSCTable_240MHDYCbCr_to_HDYCbCr
	.global	CSCTable_FccSDYCbCr_to_HDYCbCr
	.global	CSCTable_XvYCCSDYCbCr_to_HDYCbCr
	.global	CSCTable_HDYCbCr_to_XvYCCSDYCbCr
	.global	CSCTable_FccSDYCbCr_to_XvYCCSDYCbCr
	.global	CSCTable_PalSDYCbCr_to_XvYCCSDYCbCr
	.global	CSCTable_NtscSDYCbCr_to_XvYCCSDYCbCr
	.global	CSCTable_240MHDYCbCr_to_XvYCCSDYCbCr
	.global	CSCTable_Identity_YCbCr_to_YCbCr
	.global	CSCTable_RGB_to_HDYCbCr
	.global	CSCTable_RGB_to_XvYCCSDYCbCr
	.global	CSCTable_RGB_to_HDYCbCr_Full
	.global	CSCTable_RGB_to_XvYCCSDYCbCr_Full
	.global	CSCTable_HDYCbCr_to_RGB
	.global	CSCTable_XvYCCSDYCbCr_to_RGB
	.global	CSCTable_HDYCbCr_to_RGB_Full
	.global	CSCTable_XvYCCSDYCbCr_to_RGB_Full
	.global	CSCTable_Identity_RGB_to_RGB
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	COS_TABLE, %object
	.size	COS_TABLE, 244
COS_TABLE:
	.word	866
	.word	875
	.word	883
	.word	891
	.word	899
	.word	906
	.word	914
	.word	921
	.word	927
	.word	934
	.word	940
	.word	946
	.word	951
	.word	956
	.word	961
	.word	966
	.word	970
	.word	974
	.word	978
	.word	982
	.word	985
	.word	988
	.word	990
	.word	993
	.word	995
	.word	996
	.word	998
	.word	999
	.word	999
	.word	1000
	.word	1000
	.word	1000
	.word	999
	.word	999
	.word	998
	.word	996
	.word	995
	.word	993
	.word	990
	.word	988
	.word	985
	.word	982
	.word	978
	.word	974
	.word	970
	.word	966
	.word	961
	.word	956
	.word	951
	.word	946
	.word	940
	.word	934
	.word	927
	.word	921
	.word	914
	.word	906
	.word	899
	.word	891
	.word	883
	.word	875
	.word	866
	.type	SIN_TABLE, %object
	.size	SIN_TABLE, 244
SIN_TABLE:
	.word	-500
	.word	-485
	.word	-469
	.word	-454
	.word	-438
	.word	-422
	.word	-407
	.word	-391
	.word	-374
	.word	-358
	.word	-342
	.word	-325
	.word	-309
	.word	-292
	.word	-276
	.word	-259
	.word	-242
	.word	-225
	.word	-208
	.word	-191
	.word	-174
	.word	-156
	.word	-139
	.word	-122
	.word	-104
	.word	-87
	.word	-70
	.word	-52
	.word	-35
	.word	-17
	.word	0
	.word	17
	.word	35
	.word	52
	.word	70
	.word	87
	.word	104
	.word	122
	.word	139
	.word	156
	.word	174
	.word	191
	.word	208
	.word	225
	.word	242
	.word	259
	.word	276
	.word	292
	.word	309
	.word	325
	.word	342
	.word	358
	.word	374
	.word	391
	.word	407
	.word	422
	.word	438
	.word	454
	.word	469
	.word	485
	.word	500
	.type	__func__.24557, %object
	.size	__func__.24557, 22
__func__.24557:
	.ascii	"PQ_MNG_Get8BitCscCoef\000"
	.space	2
	.type	__func__.24509, %object
	.size	__func__.24509, 18
__func__.24509:
	.ascii	"PQ_MNG_GetCscCoef\000"
	.space	2
	.type	__func__.24375, %object
	.size	__func__.24375, 18
__func__.24375:
	.ascii	"PQ_MNG_GetCSCMode\000"
	.space	2
	.type	__func__.24316, %object
	.size	__func__.24316, 26
__func__.24316:
	.ascii	"PQ_MNG_SetCSCPictureParam\000"
	.space	2
	.type	CSC_RGBPrim_to_YCbCr_MatrixTbl, %object
	.size	CSC_RGBPrim_to_YCbCr_MatrixTbl, 16
CSC_RGBPrim_to_YCbCr_MatrixTbl:
	.word	CSCTable_RGB_to_HDYCbCr
	.word	CSCTable_RGB_to_XvYCCSDYCbCr
	.word	CSCTable_RGB_to_HDYCbCr_Full
	.word	CSCTable_RGB_to_XvYCCSDYCbCr_Full
	.type	CSC_YCbCr_to_RGBPrim_MatrixTbl, %object
	.size	CSC_YCbCr_to_RGBPrim_MatrixTbl, 72
CSC_YCbCr_to_RGBPrim_MatrixTbl:
	.word	0
	.word	CSCTable_HDYCbCr_to_RGB
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	CSCTable_XvYCCSDYCbCr_to_RGB
	.word	0
	.word	CSCTable_HDYCbCr_to_RGB_Full
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	CSCTable_XvYCCSDYCbCr_to_RGB_Full
	.type	CSC_YCbCr_MatrixTbl, %object
	.size	CSC_YCbCr_MatrixTbl, 72
CSC_YCbCr_MatrixTbl:
	.word	0
	.space	4
	.word	CSCTable_Identity_YCbCr_to_YCbCr
	.word	CSCTable_HDYCbCr_to_XvYCCSDYCbCr
	.word	CSCTable_Identity_YCbCr_to_YCbCr
	.word	CSCTable_Identity_YCbCr_to_YCbCr
	.word	0
	.space	4
	.word	CSCTable_FccSDYCbCr_to_HDYCbCr
	.word	CSCTable_FccSDYCbCr_to_XvYCCSDYCbCr
	.word	CSCTable_PalSDYCbCr_to_HDYCbCr
	.word	CSCTable_PalSDYCbCr_to_XvYCCSDYCbCr
	.word	CSCTable_NtscSDYCbCr_to_HDYCbCr
	.word	CSCTable_NtscSDYCbCr_to_XvYCCSDYCbCr
	.word	CSCTable_240MHDYCbCr_to_HDYCbCr
	.word	CSCTable_240MHDYCbCr_to_XvYCCSDYCbCr
	.word	CSCTable_XvYCCSDYCbCr_to_HDYCbCr
	.word	CSCTable_Identity_YCbCr_to_YCbCr
	.type	__func__.24434, %object
	.size	__func__.24434, 27
__func__.24434:
	.ascii	"PQ_MNG_SetHDPictureSetting\000"
	.space	1
	.type	__func__.24388, %object
	.size	__func__.24388, 27
__func__.24388:
	.ascii	"PQ_MNG_SetSDPictureSetting\000"
	.space	1
	.type	__func__.24332, %object
	.size	__func__.24332, 18
__func__.24332:
	.ascii	"PQ_MNG_SetCSCMode\000"
	.data
	.align	2
.LANCHOR1 = . + 0
	.type	sg_stSDPictureSetting, %object
	.size	sg_stSDPictureSetting, 8
sg_stSDPictureSetting:
@ u16Brightness:
	.short	128
@ u16Contrast:
	.short	128
@ u16Hue:
	.short	128
@ u16Saturation:
	.short	128
	.type	sg_stColorTemp, %object
	.size	sg_stColorTemp, 12
sg_stColorTemp:
@ s16RedGain:
	.short	128
@ s16GreenGain:
	.short	128
@ s16BlueGain:
	.short	128
@ s16RedOffset:
	.short	128
@ s16GreenOffset:
	.short	128
@ s16BlueOffset:
	.short	128
	.type	sg_stHDPictureSetting, %object
	.size	sg_stHDPictureSetting, 8
sg_stHDPictureSetting:
@ u16Brightness:
	.short	128
@ u16Contrast:
	.short	128
@ u16Hue:
	.short	128
@ u16Saturation:
	.short	128
	.type	sg_stCscModeStat, %object
	.size	sg_stCscModeStat, 40
sg_stCscModeStat:
@ bCSCEn:
	.word	0
@ enCSC:
	.word	12
@ bCSCEn:
	.word	0
@ enCSC:
	.word	12
@ bCSCEn:
	.word	0
@ enCSC:
	.word	12
@ bCSCEn:
	.word	0
@ enCSC:
	.word	12
@ bCSCEn:
	.word	0
@ enCSC:
	.word	12
	.type	sg_stCSCMode, %object
	.size	sg_stCSCMode, 60
sg_stCSCMode:
@ u16InputColorSpace:
	.word	8
@ u16OutputColorSpace:
	.word	8
@ bFullRange:
	.word	0
@ u16InputColorSpace:
	.word	8
@ u16OutputColorSpace:
	.word	8
@ bFullRange:
	.word	0
@ u16InputColorSpace:
	.word	8
@ u16OutputColorSpace:
	.word	8
@ bFullRange:
	.word	0
@ u16InputColorSpace:
	.word	8
@ u16OutputColorSpace:
	.word	8
@ bFullRange:
	.word	0
@ u16InputColorSpace:
	.word	8
@ u16OutputColorSpace:
	.word	8
@ bFullRange:
	.word	0
	.type	CSCTable_NtscSDYCbCr_to_HDYCbCr, %object
	.size	CSCTable_NtscSDYCbCr_to_HDYCbCr, 36
CSCTable_NtscSDYCbCr_to_HDYCbCr:
@ csc_coef00:
	.word	1024
@ csc_coef01:
	.word	-88
@ csc_coef02:
	.word	-204
@ csc_coef10:
	.word	0
@ csc_coef11:
	.word	1032
@ csc_coef12:
	.word	114
@ csc_coef20:
	.word	0
@ csc_coef21:
	.word	60
@ csc_coef22:
	.word	964
	.type	CSCTable_PalSDYCbCr_to_HDYCbCr, %object
	.size	CSCTable_PalSDYCbCr_to_HDYCbCr, 36
CSCTable_PalSDYCbCr_to_HDYCbCr:
@ csc_coef00:
	.word	1024
@ csc_coef01:
	.word	-116
@ csc_coef02:
	.word	-192
@ csc_coef10:
	.word	0
@ csc_coef11:
	.word	1028
@ csc_coef12:
	.word	104
@ csc_coef20:
	.word	0
@ csc_coef21:
	.word	88
@ csc_coef22:
	.word	1100
	.type	CSCTable_240MHDYCbCr_to_HDYCbCr, %object
	.size	CSCTable_240MHDYCbCr_to_HDYCbCr, 36
CSCTable_240MHDYCbCr_to_HDYCbCr:
@ csc_coef00:
	.word	1024
@ csc_coef01:
	.word	0
@ csc_coef02:
	.word	0
@ csc_coef10:
	.word	0
@ csc_coef11:
	.word	1016
@ csc_coef12:
	.word	0
@ csc_coef20:
	.word	0
@ csc_coef21:
	.word	1
@ csc_coef22:
	.word	948
	.type	CSCTable_FccSDYCbCr_to_HDYCbCr, %object
	.size	CSCTable_FccSDYCbCr_to_HDYCbCr, 36
CSCTable_FccSDYCbCr_to_HDYCbCr:
@ csc_coef00:
	.word	1024
@ csc_coef01:
	.word	0
@ csc_coef02:
	.word	0
@ csc_coef10:
	.word	56
@ csc_coef11:
	.word	1148
@ csc_coef12:
	.word	-4
@ csc_coef20:
	.word	36
@ csc_coef21:
	.word	-12
@ csc_coef22:
	.word	1148
	.type	CSCTable_XvYCCSDYCbCr_to_HDYCbCr, %object
	.size	CSCTable_XvYCCSDYCbCr_to_HDYCbCr, 36
CSCTable_XvYCCSDYCbCr_to_HDYCbCr:
@ csc_coef00:
	.word	1024
@ csc_coef01:
	.word	-118
@ csc_coef02:
	.word	-213
@ csc_coef10:
	.word	0
@ csc_coef11:
	.word	1043
@ csc_coef12:
	.word	117
@ csc_coef20:
	.word	0
@ csc_coef21:
	.word	77
@ csc_coef22:
	.word	1050
	.type	CSCTable_HDYCbCr_to_XvYCCSDYCbCr, %object
	.size	CSCTable_HDYCbCr_to_XvYCCSDYCbCr, 36
CSCTable_HDYCbCr_to_XvYCCSDYCbCr:
@ csc_coef00:
	.word	1024
@ csc_coef01:
	.word	102
@ csc_coef02:
	.word	196
@ csc_coef10:
	.word	0
@ csc_coef11:
	.word	1014
@ csc_coef12:
	.word	-113
@ csc_coef20:
	.word	0
@ csc_coef21:
	.word	-74
@ csc_coef22:
	.word	1007
	.type	CSCTable_FccSDYCbCr_to_XvYCCSDYCbCr, %object
	.size	CSCTable_FccSDYCbCr_to_XvYCCSDYCbCr, 36
CSCTable_FccSDYCbCr_to_XvYCCSDYCbCr:
@ csc_coef00:
	.word	1036
@ csc_coef01:
	.word	112
@ csc_coef02:
	.word	292
@ csc_coef10:
	.word	52
@ csc_coef11:
	.word	1140
@ csc_coef12:
	.word	-176
@ csc_coef20:
	.word	28
@ csc_coef21:
	.word	-96
@ csc_coef22:
	.word	1444
	.type	CSCTable_PalSDYCbCr_to_XvYCCSDYCbCr, %object
	.size	CSCTable_PalSDYCbCr_to_XvYCCSDYCbCr, 36
CSCTable_PalSDYCbCr_to_XvYCCSDYCbCr:
@ csc_coef00:
	.word	1024
@ csc_coef01:
	.word	0
@ csc_coef02:
	.word	28
@ csc_coef10:
	.word	0
@ csc_coef11:
	.word	1004
@ csc_coef12:
	.word	-20
@ csc_coef20:
	.word	0
@ csc_coef21:
	.word	4
@ csc_coef22:
	.word	1072
	.type	CSCTable_NtscSDYCbCr_to_XvYCCSDYCbCr, %object
	.size	CSCTable_NtscSDYCbCr_to_XvYCCSDYCbCr, 36
CSCTable_NtscSDYCbCr_to_XvYCCSDYCbCr:
@ csc_coef00:
	.word	1024
@ csc_coef01:
	.word	24
@ csc_coef02:
	.word	-8
@ csc_coef10:
	.word	0
@ csc_coef11:
	.word	1016
@ csc_coef12:
	.word	4
@ csc_coef20:
	.word	0
@ csc_coef21:
	.word	-20
@ csc_coef22:
	.word	940
	.type	CSCTable_240MHDYCbCr_to_XvYCCSDYCbCr, %object
	.size	CSCTable_240MHDYCbCr_to_XvYCCSDYCbCr, 36
CSCTable_240MHDYCbCr_to_XvYCCSDYCbCr:
@ csc_coef00:
	.word	1024
@ csc_coef01:
	.word	104
@ csc_coef02:
	.word	180
@ csc_coef10:
	.word	0
@ csc_coef11:
	.word	1004
@ csc_coef12:
	.word	-104
@ csc_coef20:
	.word	0
@ csc_coef21:
	.word	-68
@ csc_coef22:
	.word	932
	.type	CSCTable_Identity_YCbCr_to_YCbCr, %object
	.size	CSCTable_Identity_YCbCr_to_YCbCr, 36
CSCTable_Identity_YCbCr_to_YCbCr:
@ csc_coef00:
	.word	1024
@ csc_coef01:
	.word	0
@ csc_coef02:
	.word	0
@ csc_coef10:
	.word	0
@ csc_coef11:
	.word	1024
@ csc_coef12:
	.word	0
@ csc_coef20:
	.word	0
@ csc_coef21:
	.word	0
@ csc_coef22:
	.word	1024
	.type	CSCTable_RGB_to_HDYCbCr, %object
	.size	CSCTable_RGB_to_HDYCbCr, 36
CSCTable_RGB_to_HDYCbCr:
@ csc_coef00:
	.word	188
@ csc_coef01:
	.word	629
@ csc_coef02:
	.word	63
@ csc_coef10:
	.word	-103
@ csc_coef11:
	.word	-347
@ csc_coef12:
	.word	450
@ csc_coef20:
	.word	450
@ csc_coef21:
	.word	-409
@ csc_coef22:
	.word	-41
	.type	CSCTable_RGB_to_XvYCCSDYCbCr, %object
	.size	CSCTable_RGB_to_XvYCCSDYCbCr, 36
CSCTable_RGB_to_XvYCCSDYCbCr:
@ csc_coef00:
	.word	264
@ csc_coef01:
	.word	516
@ csc_coef02:
	.word	100
@ csc_coef10:
	.word	-152
@ csc_coef11:
	.word	-298
@ csc_coef12:
	.word	450
@ csc_coef20:
	.word	450
@ csc_coef21:
	.word	-377
@ csc_coef22:
	.word	-73
	.type	CSCTable_RGB_to_HDYCbCr_Full, %object
	.size	CSCTable_RGB_to_HDYCbCr_Full, 36
CSCTable_RGB_to_HDYCbCr_Full:
@ csc_coef00:
	.word	218
@ csc_coef01:
	.word	732
@ csc_coef02:
	.word	74
@ csc_coef10:
	.word	-118
@ csc_coef11:
	.word	-394
@ csc_coef12:
	.word	512
@ csc_coef20:
	.word	512
@ csc_coef21:
	.word	-465
@ csc_coef22:
	.word	-47
	.type	CSCTable_RGB_to_XvYCCSDYCbCr_Full, %object
	.size	CSCTable_RGB_to_XvYCCSDYCbCr_Full, 36
CSCTable_RGB_to_XvYCCSDYCbCr_Full:
@ csc_coef00:
	.word	306
@ csc_coef01:
	.word	601
@ csc_coef02:
	.word	117
@ csc_coef10:
	.word	-173
@ csc_coef11:
	.word	-339
@ csc_coef12:
	.word	512
@ csc_coef20:
	.word	512
@ csc_coef21:
	.word	-429
@ csc_coef22:
	.word	-83
	.type	CSCTable_HDYCbCr_to_RGB, %object
	.size	CSCTable_HDYCbCr_to_RGB, 36
CSCTable_HDYCbCr_to_RGB:
@ csc_coef00:
	.word	1192
@ csc_coef01:
	.word	0
@ csc_coef02:
	.word	1836
@ csc_coef10:
	.word	1192
@ csc_coef11:
	.word	-218
@ csc_coef12:
	.word	-547
@ csc_coef20:
	.word	1192
@ csc_coef21:
	.word	2166
@ csc_coef22:
	.word	0
	.type	CSCTable_XvYCCSDYCbCr_to_RGB, %object
	.size	CSCTable_XvYCCSDYCbCr_to_RGB, 36
CSCTable_XvYCCSDYCbCr_to_RGB:
@ csc_coef00:
	.word	1192
@ csc_coef01:
	.word	0
@ csc_coef02:
	.word	1634
@ csc_coef10:
	.word	1192
@ csc_coef11:
	.word	-400
@ csc_coef12:
	.word	-833
@ csc_coef20:
	.word	1192
@ csc_coef21:
	.word	2066
@ csc_coef22:
	.word	0
	.type	CSCTable_HDYCbCr_to_RGB_Full, %object
	.size	CSCTable_HDYCbCr_to_RGB_Full, 36
CSCTable_HDYCbCr_to_RGB_Full:
@ csc_coef00:
	.word	1024
@ csc_coef01:
	.word	0
@ csc_coef02:
	.word	1613
@ csc_coef10:
	.word	1024
@ csc_coef11:
	.word	-191
@ csc_coef12:
	.word	-479
@ csc_coef20:
	.word	1024
@ csc_coef21:
	.word	1901
@ csc_coef22:
	.word	0
	.type	CSCTable_XvYCCSDYCbCr_to_RGB_Full, %object
	.size	CSCTable_XvYCCSDYCbCr_to_RGB_Full, 36
CSCTable_XvYCCSDYCbCr_to_RGB_Full:
@ csc_coef00:
	.word	1024
@ csc_coef01:
	.word	0
@ csc_coef02:
	.word	1436
@ csc_coef10:
	.word	1024
@ csc_coef11:
	.word	-352
@ csc_coef12:
	.word	-731
@ csc_coef20:
	.word	1024
@ csc_coef21:
	.word	1815
@ csc_coef22:
	.word	0
	.type	CSCTable_Identity_RGB_to_RGB, %object
	.size	CSCTable_Identity_RGB_to_RGB, 36
CSCTable_Identity_RGB_to_RGB:
@ csc_coef00:
	.word	1024
@ csc_coef01:
	.word	0
@ csc_coef02:
	.word	0
@ csc_coef10:
	.word	0
@ csc_coef11:
	.word	1024
@ csc_coef12:
	.word	0
@ csc_coef20:
	.word	0
@ csc_coef21:
	.word	0
@ csc_coef22:
	.word	1024
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"pstCscCoef is NULL!\012\000"
	.space	3
.LC1:
	.ascii	"pstCscMode is NULL!\012\000"
	.space	3
.LC2:
	.ascii	"pstCSCParameter is invalid!\012\000"
	.space	3
.LC3:
	.ascii	"unknow color space!\012\000"
	.space	3
.LC4:
	.ascii	"pstPictureSetting is Null poniter!\012\000"
.LC5:
	.ascii	"set MNG HD Brightness=%d,Contrast=%d,Saturation=%d,"
	.ascii	"Hue=%d\012\000"
	.space	1
.LC6:
	.ascii	"set MNG SD Brightness=%d,Contrast=%d,Saturation=%d,"
	.ascii	"Hue=%d\012\000"
	.space	1
.LC7:
	.ascii	"pstCscMode is Null poniter!\012\000"
	.space	3
.LC8:
	.ascii	"Error, Select Wrong CSC ID!\012\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
