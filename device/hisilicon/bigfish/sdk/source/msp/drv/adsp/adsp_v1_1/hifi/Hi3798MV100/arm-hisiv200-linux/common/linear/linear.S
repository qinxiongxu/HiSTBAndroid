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
	.file	"linear.c"
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
@ -DKBUILD_BASENAME=KBUILD_STR(linear) -DKBUILD_MODNAME=KBUILD_STR(hi_adsp)
@ -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD drivers/msp/adsp/adsp_v1_1/./hifi/common/linear/.linear.o.d
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/drivers/msp/adsp/adsp_v1_1/./hifi/common/linear/linear.c
@ -mlittle-endian -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -marm -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/adsp/adsp_v1_1/./hifi/common/linear/linear.o -O2 -Wall
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

	.global	__aeabi_idiv
	.text
	.align	2
	.global	LSRC_GetMaxOutputNum
	.type	LSRC_GetMaxOutputNum, %function
LSRC_GetMaxOutputNum:
	.fnstart
.LFB160:
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
	subs	r3, r0, #0	@ hLSRC, hLSRC
	mov	r2, r1	@ insamps, insamps
	mvneq	r0, #0	@ outsamps,
	ldmeqfd	sp, {fp, sp, pc}	@
	ldr	r0, [r3, #16]	@ <variable>.OutRate, <variable>.OutRate
	ldr	r1, [r3, #8]	@, <variable>.AdjustInRate
	mul	r0, r0, r2	@, <variable>.OutRate, insamps
	bl	__aeabi_idiv	@
	add	r0, r0, #1	@ outsamps,,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	LSRC_GetMaxOutputNum, .-LSRC_GetMaxOutputNum
	.global	__aeabi_idivmod
	.align	2
	.global	LSRC_GetMinInputNum
	.type	LSRC_GetMinInputNum, %function
LSRC_GetMinInputNum:
	.fnstart
.LFB161:
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
	cmp	r0, #0	@ hLSRC
	mvneq	r4, #0	@ insamps,
	beq	.L8	@,
	ldr	r6, [r0, #8]	@ <variable>.AdjustInRate, <variable>.AdjustInRate
	ldr	r5, [r0, #16]	@ D.4024, <variable>.OutRate
	mul	r6, r6, r1	@ D.4023, <variable>.AdjustInRate, outsamps
	mov	r1, r5	@, D.4024
	mov	r0, r6	@, D.4023
	bl	__aeabi_idiv	@
	mov	r1, r5	@, D.4024
	mov	r4, r0	@ insamps,
	mov	r0, r6	@, D.4023
	bl	__aeabi_idivmod	@
	cmp	r1, #0	@,
	addne	r4, r4, #1	@ insamps, insamps,
.L8:
	mov	r0, r4	@, insamps
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	LSRC_GetMinInputNum, .-LSRC_GetMinInputNum
	.align	2
	.global	LSRC_CheckUpdate
	.type	LSRC_CheckUpdate, %function
LSRC_CheckUpdate:
	.fnstart
.LFB162:
	@ args = 4, pretend = 0, frame = 0
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
	ldr	r4, [r0, #12]	@ <variable>.InRate, <variable>.InRate
	ldr	ip, [r0, #16]	@ <variable>.OutRate, <variable>.OutRate
	ldr	r5, [r0, #0]	@ <variable>.BitPerSample, <variable>.BitPerSample
	subs	r4, r4, r1	@ tmp147, <variable>.InRate, inRate
	movne	r4, #1	@ tmp147
	cmp	ip, r2	@ <variable>.OutRate, outRate
	addne	r4, r4, #1	@,, change, tmp147
	ldr	r2, [r0, #4]	@ <variable>.Channels, <variable>.Channels
	cmp	r5, r3	@ <variable>.BitPerSample, BitPerSample
	addne	r4, r4, #1	@,, change.162, change
	ldr	r5, [fp, #4]	@ Channels, Channels
	cmp	r2, r5	@ <variable>.Channels, Channels
	moveq	r1, r4	@, tmp155, change.162
	addne	r1, r4, #1	@,, tmp155, change.162
	subs	r0, r1, #0	@, tmp155,
	movne	r0, #1	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	LSRC_CheckUpdate, .-LSRC_CheckUpdate
	.align	2
	.global	LSRC_UpdateChange
	.type	LSRC_UpdateChange, %function
LSRC_UpdateChange:
	.fnstart
.LFB163:
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
	ldr	r5, [r0, #12]	@ <variable>.InRate, <variable>.InRate
	ldr	r4, [r0, #16]	@ <variable>.OutRate, <variable>.OutRate
	subs	ip, r5, r1	@ tmp179, <variable>.InRate, inRate
	movne	ip, #1	@ tmp179
	ldr	r6, [r0, #0]	@ <variable>.BitPerSample, <variable>.BitPerSample
	cmp	r4, r2	@ <variable>.OutRate, outRate
	moveq	r4, ip	@, change, tmp179
	addne	r4, ip, #1	@,, change, tmp179
	ldr	r5, [r0, #4]	@ <variable>.Channels, <variable>.Channels
	ldr	ip, [fp, #4]	@ Channels, Channels
	cmp	r6, r3	@ <variable>.BitPerSample, BitPerSample
	addne	r4, r4, #1	@,, change.195, change
	cmp	r5, ip	@ <variable>.Channels, Channels
	addne	r4, r4, #1	@,, tmp186, change.195
	cmp	r4, #0	@ tmp186,
	ldmeqfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	cmp	r2, #8000	@ outRate,
	str	r3, [r0, #0]	@ BitPerSample, <variable>.BitPerSample
	str	r1, [r0, #12]	@ inRate, <variable>.InRate
	mov	r3, #0	@ tmp187,
	str	ip, [r0, #4]	@ Channels, <variable>.Channels
	str	r1, [r0, #8]	@ inRate, <variable>.AdjustInRate
	str	r2, [r0, #16]	@ outRate, <variable>.OutRate
	str	r3, [r0, #20]	@ tmp187, <variable>.Remainder
	str	r3, [r0, #24]	@ tmp187, <variable>.DisContinuity
	str	r3, [r0, #28]	@ tmp187, <variable>.SpeedAdjust
	beq	.L15	@,
	movw	r3, #11025	@ tmp190,
	cmp	r2, r3	@ outRate, tmp190
	moveq	r3, #1	@ n,
	beq	.L15	@,
	movw	r3, #12000	@ tmp191,
	cmp	r2, r3	@ outRate, tmp191
	moveq	r3, #2	@ n,
	beq	.L15	@,
	cmp	r2, #16000	@ outRate,
	moveq	r3, #3	@ n,
	beq	.L15	@,
	movw	r3, #22050	@ tmp192,
	cmp	r2, r3	@ outRate, tmp192
	moveq	r3, #4	@ n,
	beq	.L15	@,
	movw	r3, #24000	@ tmp193,
	cmp	r2, r3	@ outRate, tmp193
	moveq	r3, #5	@ n,
	beq	.L15	@,
	cmp	r2, #32000	@ outRate,
	moveq	r3, #6	@ n,
	beq	.L15	@,
	movw	r3, #44100	@ tmp194,
	cmp	r2, r3	@ outRate, tmp194
	moveq	r3, #7	@ n,
	beq	.L15	@,
	movw	r3, #48000	@ tmp195,
	cmp	r2, r3	@ outRate, tmp195
	moveq	r3, #8	@ n,
	beq	.L15	@,
	movw	r3, #:lower16:88200	@ tmp196,
	movt	r3, #:upper16:88200	@ tmp196,
	cmp	r2, r3	@ outRate, tmp196
	moveq	r3, #9	@ n,
	beq	.L15	@,
	movw	r3, #:lower16:96000	@ tmp197,
	movt	r3, #:upper16:96000	@ tmp197,
	cmp	r2, r3	@ outRate, tmp197
	moveq	r3, #10	@ n,
	beq	.L15	@,
	movw	r3, #:lower16:176400	@ tmp198,
	movt	r3, #:upper16:176400	@ tmp198,
	cmp	r2, r3	@ outRate, tmp198
	moveq	r3, #11	@ n,
	beq	.L15	@,
	movw	r3, #:lower16:192000	@ tmp199,
	movt	r3, #:upper16:192000	@ tmp199,
	cmp	r2, r3	@ outRate, tmp199
	beq	.L36	@,
	cmp	ip, #0	@ Channels,
	ldmeqfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L37:
	mov	r3, #1	@ n.198,
	cmp	r3, ip	@ n.198, Channels
	sub	r4, ip, #1	@ tmp204, Channels,
	add	r2, r0, #4	@ ivtmp.193, hLSRC,
	and	r1, r4, r3	@ tmp206, tmp204,
	mov	r4, #0	@ tmp203,
	str	r4, [r0, #36]	@ tmp203, <variable>.PreSample
	ldmcsfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	cmp	r1, #0	@ tmp206,
	beq	.L28	@,
	mov	r3, #2	@ n.198,
	cmp	r3, ip	@ n.198, Channels
	str	r4, [r2, #36]	@ tmp203, <variable>.PreSample
	add	r2, r2, #4	@ ivtmp.193, ivtmp.193,
	ldmcsfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L28:
	add	r3, r3, #2	@ n.198, n.198,
	add	r0, r2, #4	@ tmp208, ivtmp.193,
	cmp	r3, ip	@ n.198, Channels
	str	r4, [r2, #36]	@ tmp203, <variable>.PreSample
	str	r4, [r0, #36]	@ tmp203, <variable>.PreSample
	add	r2, r0, #4	@ ivtmp.193, tmp208,
	bcc	.L28	@,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L36:
	mov	r3, #12	@ n,
.L15:
	movw	r2, #:lower16:.LANCHOR0	@ tmp200,
	movt	r2, #:upper16:.LANCHOR0	@ tmp200,
	cmp	ip, #0	@ Channels,
	ldr	r1, [r2, r3, asl #2]	@ tmp201, g_s32IvtSfTab
	str	r1, [r0, #32]	@ tmp201, <variable>.IvtSFFactor
	bne	.L37	@,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	LSRC_UpdateChange, .-LSRC_UpdateChange
	.align	2
	.global	LSRC_Flush
	.type	LSRC_Flush, %function
LSRC_Flush:
	.fnstart
.LFB164:
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
	ldr	r3, [r0, #16]	@ pretmp.223, <variable>.OutRate
	mov	r2, #0	@ tmp141,
	str	r2, [r0, #20]	@ tmp141, <variable>.Remainder
	cmp	r3, #8000	@ pretmp.223,
	str	r2, [r0, #24]	@ tmp141, <variable>.DisContinuity
	beq	.L40	@,
	movw	r2, #11025	@ tmp143,
	cmp	r3, r2	@ pretmp.223, tmp143
	moveq	r2, #1	@ n.242,
	beq	.L40	@,
	movw	r2, #12000	@ tmp144,
	cmp	r3, r2	@ pretmp.223, tmp144
	moveq	r2, #2	@ n.242,
	beq	.L40	@,
	cmp	r3, #16000	@ pretmp.223,
	moveq	r2, #3	@ n.242,
	beq	.L40	@,
	movw	r2, #22050	@ tmp145,
	cmp	r3, r2	@ pretmp.223, tmp145
	moveq	r2, #4	@ n.242,
	beq	.L40	@,
	movw	r2, #24000	@ tmp146,
	cmp	r3, r2	@ pretmp.223, tmp146
	moveq	r2, #5	@ n.242,
	beq	.L40	@,
	cmp	r3, #32000	@ pretmp.223,
	moveq	r2, #6	@ n.242,
	beq	.L40	@,
	movw	r2, #44100	@ tmp147,
	cmp	r3, r2	@ pretmp.223, tmp147
	moveq	r2, #7	@ n.242,
	beq	.L40	@,
	movw	r2, #48000	@ tmp148,
	cmp	r3, r2	@ pretmp.223, tmp148
	moveq	r2, #8	@ n.242,
	beq	.L40	@,
	movw	r2, #:lower16:88200	@ tmp149,
	movt	r2, #:upper16:88200	@ tmp149,
	cmp	r3, r2	@ pretmp.223, tmp149
	moveq	r2, #9	@ n.242,
	beq	.L40	@,
	movw	r2, #:lower16:96000	@ tmp150,
	movt	r2, #:upper16:96000	@ tmp150,
	cmp	r3, r2	@ pretmp.223, tmp150
	moveq	r2, #10	@ n.242,
	beq	.L40	@,
	movw	r2, #:lower16:176400	@ tmp151,
	movt	r2, #:upper16:176400	@ tmp151,
	cmp	r3, r2	@ pretmp.223, tmp151
	moveq	r2, #11	@ n.242,
	beq	.L40	@,
	movw	r2, #:lower16:192000	@ tmp152,
	movt	r2, #:upper16:192000	@ tmp152,
	cmp	r3, r2	@ pretmp.223, tmp152
	beq	.L62	@,
	ldr	r4, [r0, #4]	@ D.4099, <variable>.Channels
	cmp	r4, #0	@ D.4099,
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
.L63:
	cmp	r4, #1	@ D.4099,
	sub	ip, r4, #1	@ tmp157, D.4099,
	and	r1, ip, #1	@ tmp159, tmp157,
	add	r3, r0, #4	@ ivtmp.241, pLinearSrc,
	mov	ip, #0	@ tmp156,
	mov	r2, #1	@ n,
	str	ip, [r0, #36]	@ tmp156, <variable>.PreSample
	ldmlsfd	sp, {r3, r4, fp, sp, pc}	@
	cmp	r1, #0	@ tmp159,
	beq	.L54	@,
	mov	r2, #2	@ n,
	cmp	r4, r2	@ D.4099, n
	str	ip, [r3, #36]	@ tmp156, <variable>.PreSample
	add	r3, r3, #4	@ ivtmp.241, ivtmp.241,
	ldmlsfd	sp, {r3, r4, fp, sp, pc}	@
.L54:
	add	r2, r2, #2	@ n, n,
	add	r0, r3, #4	@ tmp161, ivtmp.241,
	cmp	r4, r2	@ D.4099, n
	str	ip, [r3, #36]	@ tmp156, <variable>.PreSample
	str	ip, [r0, #36]	@ tmp156, <variable>.PreSample
	add	r3, r0, #4	@ ivtmp.241, tmp161,
	bhi	.L54	@,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L62:
	mov	r2, #12	@ n.242,
.L40:
	movw	r1, #:lower16:.LANCHOR0	@ tmp153,
	movt	r1, #:upper16:.LANCHOR0	@ tmp153,
	ldr	r4, [r0, #4]	@ D.4099, <variable>.Channels
	ldr	r3, [r1, r2, asl #2]	@ tmp154, g_s32IvtSfTab
	cmp	r4, #0	@ D.4099,
	str	r3, [r0, #32]	@ tmp154, <variable>.IvtSFFactor
	bne	.L63	@,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	LSRC_Flush, .-LSRC_Flush
	.align	2
	.global	LSRC_CheckDoSRC
	.type	LSRC_CheckDoSRC, %function
LSRC_CheckDoSRC:
	.fnstart
.LFB165:
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
	ldr	r2, [r0, #8]	@ <variable>.AdjustInRate, <variable>.AdjustInRate
	ldr	r3, [r0, #16]	@ <variable>.OutRate, <variable>.OutRate
	cmp	r2, r3	@ <variable>.AdjustInRate, <variable>.OutRate
	movne	r0, #1	@ D.4111,
	ldmnefd	sp, {fp, sp, pc}	@
	ldr	r0, [r0, #24]	@ <variable>.DisContinuity, <variable>.DisContinuity
	subs	r0, r0, #0	@ D.4111, <variable>.DisContinuity,
	movne	r0, #1	@ D.4111
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	LSRC_CheckDoSRC, .-LSRC_CheckDoSRC
	.align	2
	.global	LSRC_SetSpeedAdjust
	.type	LSRC_SetSpeedAdjust, %function
LSRC_SetSpeedAdjust:
	.fnstart
.LFB166:
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
	ldr	r3, [r0, #28]	@ prephitmp.294, <variable>.SpeedAdjust
	cmp	r3, r1	@ prephitmp.294, SpeedAdjust
	ldmeqfd	sp, {fp, sp, pc}	@
	cmp	r1, #100	@ SpeedAdjust,
	ldmgtfd	sp, {fp, sp, pc}	@
	cmn	r1, #100	@ SpeedAdjust,
	ldmltfd	sp, {fp, sp, pc}	@
	subs	r2, r1, #0	@ tmp143, SpeedAdjust,
	movne	r2, #1	@ tmp143
	cmp	r3, #0	@ prephitmp.294,
	ldr	ip, [r0, #12]	@ <variable>.InRate, <variable>.InRate
	movne	r2, #0	@, tmp143,
	cmp	r2, #0	@ tmp143,
	str	r1, [r0, #28]	@ SpeedAdjust, <variable>.SpeedAdjust
	movne	r2, #1	@ tmp144,
	strne	r2, [r0, #24]	@ tmp144, <variable>.DisContinuity
	add	r2, r1, #1000	@ tmp153, SpeedAdjust,
	subs	r3, r3, #0	@ tmp151, prephitmp.294,
	movne	r3, #1	@ tmp151
	cmp	r1, #0	@ SpeedAdjust,
	mov	r1, #0	@ tmp161,
	mul	r2, ip, r2	@ tmp154, <variable>.InRate, tmp153
	movne	r3, #0	@, tmp151,
	cmp	r3, #0	@ tmp151,
	str	r1, [r0, #20]	@ tmp161, <variable>.Remainder
	movne	r3, #1	@ tmp152,
	strne	r3, [r0, #24]	@ tmp152, <variable>.DisContinuity
	movw	r3, #:lower16:274877907	@ tmp157,
	movt	r3, #:upper16:274877907	@ tmp157,
	smull	r1, ip, r3, r2	@, tmp156, tmp157, tmp154
	mov	r2, r2, asr #31	@ tmp159, tmp154,
	rsb	r3, r2, ip, asr #6	@, tmp160, tmp159, tmp156,
	str	r3, [r0, #8]	@ tmp160, <variable>.AdjustInRate
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	LSRC_SetSpeedAdjust, .-LSRC_SetSpeedAdjust
	.align	2
	.global	LSRC_ProcessFrame
	.type	LSRC_ProcessFrame, %function
LSRC_ProcessFrame:
	.fnstart
.LFB169:
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
	str	r1, [fp, #-92]	@ pInPcmBuf, %sfp
	ldr	r1, [r0, #0]	@ <variable>.BitPerSample, <variable>.BitPerSample
	str	r2, [fp, #-88]	@ pOutpcmBuf, %sfp
	cmp	r1, #16	@ <variable>.BitPerSample,
	str	r3, [fp, #-84]	@ InSamps, %sfp
	beq	.L228	@,
	ldr	r8, [r0, #24]	@ <variable>.DisContinuity, <variable>.DisContinuity
	ldr	r6, [fp, #-84]	@, %sfp
	ldr	r5, [r0, #4]	@, <variable>.Channels
	cmp	r8, #0	@ <variable>.DisContinuity,
	cmpne	r6, #0	@,,
	str	r5, [fp, #-48]	@, %sfp
	movle	r3, #0	@, tmp339
	movgt	r3, #1	@, tmp339
	bgt	.L104	@,
	str	r3, [fp, #-96]	@ tmp339, %sfp
	ldr	r7, [fp, #-96]	@, %sfp
	ldr	r3, [r0, #8]	@ <variable>.AdjustInRate, <variable>.AdjustInRate
	str	r7, [fp, #-64]	@, %sfp
	str	r7, [fp, #-68]	@, %sfp
	ldr	r8, [r0, #16]	@ temp.659, <variable>.OutRate
.L105:
	cmp	r3, r8	@ <variable>.AdjustInRate, temp.659
	beq	.L229	@,
	ldr	r2, [fp, #-84]	@, %sfp
	cmp	r2, #0	@,
	ble	.L117	@,
	ldr	r4, [r0, #20]	@ prephitmp.381, <variable>.Remainder
	cmp	r8, r4	@ temp.659, prephitmp.381
	ble	.L118	@,
	ldr	r5, [fp, #-48]	@, %sfp
	ldr	sl, [fp, #-64]	@, %sfp
	ldr	r6, [fp, #-96]	@, %sfp
	mov	r9, r5, asl #2	@,,
	str	r9, [fp, #-60]	@, %sfp
	mul	r9, r5, sl	@ tmp354,,
	ldr	r7, [fp, #-92]	@, %sfp
	mul	r2, r5, r6	@ pretmp.386,,
	ldr	ip, [fp, #-88]	@, %sfp
	movw	sl, #32767	@ tmp446,
	add	r1, r7, r2, asl #2	@,,, pretmp.386,
	add	r7, ip, r9, asl #2	@, ivtmp.580,, tmp354,
	mov	r9, r5	@ Channels,
	str	r1, [fp, #-56]	@, %sfp
	str	r7, [fp, #-52]	@ ivtmp.580, %sfp
.L119:
	cmp	r9, #0	@ Channels,
	ble	.L122	@,
	tst	r9, #1	@ Channels,
	ldr	r1, [fp, #-56]	@ ivtmp.572, %sfp
	mov	ip, r0	@ ivtmp.578, hLSRC
	ldr	r2, [fp, #-52]	@ ivtmp.655, %sfp
	mov	r7, #0	@ ch.640,
	strne	r9, [fp, #-48]	@ Channels, %sfp
	bne	.L123	@,
	ldr	r6, [r0, #32]	@ D.4753, <variable>.IvtSFFactor
	ldr	r1, [fp, #-56]	@, %sfp
	mul	ip, r6, r4	@ tmp713, D.4753, prephitmp.381
	ldr	r3, [r1, #0]	@ tmp712,
#APP
@ 641 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smull r5,ip,r3,ip	@, sum, tmp712, sum
@ 0 "" 2
	rsb	r4, r4, r8	@ tmp717, prephitmp.381, temp.659
	ldr	r5, [r0, #36]	@ tmp716, <variable>.PreSample
	mul	r2, r6, r4	@ tmp718, D.4753, tmp717
#APP
@ 641 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smull r6,r2,r5,r2	@, y, tmp716, y
@ 0 "" 2
	add	r8, r2, ip	@ tmp721, y, sum
	ldr	r2, [fp, #-52]	@ ivtmp.655, %sfp
	add	ip, r0, #4	@ ivtmp.578, hLSRC,
	mov	r7, r8, asr #31	@ sign, tmp721,
	mov	r1, r8, asr #14	@ x, tmp721,
	cmp	r7, r8, asr #29	@ sign, tmp721,
	eorne	r1, r7, sl	@ x, sign, tmp446
	mov	r7, #1	@ ch.640,
	mov	r3, r1, asl #16	@ tmp727, x,
	str	r3, [r2], #4	@ tmp727,
	ldr	r6, [fp, #-56]	@, %sfp
	ldr	r4, [r0, #20]	@ prephitmp.381, <variable>.Remainder
	ldr	r8, [r0, #16]	@ temp.659, <variable>.OutRate
	add	r1, r6, #4	@ ivtmp.572,,
	str	r9, [fp, #-48]	@ Channels, %sfp
	b	.L123	@
.L121:
	ldr	r6, [r0, #20]	@ prephitmp.381, <variable>.Remainder
	ldr	r4, [r0, #32]	@ D.4753, <variable>.IvtSFFactor
	ldr	r1, [r1, #4]	@,
	mul	r3, r4, r6	@ tmp357, D.4753, prephitmp.381
	str	r1, [fp, #-72]	@, %sfp
	ldr	r9, [r0, #16]	@ temp.659, <variable>.OutRate
#APP
@ 641 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smull r8,r3,r1,r3	@, sum,, sum
@ 0 "" 2
	rsb	r8, r6, r9	@ tmp359, prephitmp.381, temp.659
	ldr	r1, [ip, #36]	@ tmp358, <variable>.PreSample
	mul	r6, r4, r8	@ tmp361, D.4753, tmp359
#APP
@ 641 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smull r9,r6,r1,r6	@, y, tmp358, y
@ 0 "" 2
	add	r3, r6, r3	@ tmp362, y, sum
	add	r7, r7, #1	@ ch.640, tmp501,
	add	r1, r5, #4	@ ivtmp.572, tmp502,
	add	ip, ip, #4	@ ivtmp.578, tmp503,
	mov	r8, r3, asr #31	@ sign, tmp362,
	mov	r4, r3, asr #14	@ x, tmp362,
	cmp	r8, r3, asr #29	@ sign, tmp362,
	eorne	r4, r8, sl	@ x, sign, tmp446
	mov	r9, r4, asl #16	@ tmp730, x,
	str	r9, [r2], #4	@ tmp730,
	ldr	r4, [r0, #20]	@ prephitmp.381, <variable>.Remainder
	ldr	r8, [r0, #16]	@ temp.659, <variable>.OutRate
.L123:
	ldr	r5, [r0, #32]	@ D.4753, <variable>.IvtSFFactor
	ldr	r9, [r1, #0]	@,* ivtmp.572
	mul	r3, r5, r4	@ tmp610, D.4753, prephitmp.381
#APP
@ 641 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smull r6,r3,r9,r3	@, sum,, sum
@ 0 "" 2
	rsb	r4, r4, r8	@ tmp615, prephitmp.381, temp.659
	ldr	r6, [ip, #36]	@ tmp614, <variable>.PreSample
	mul	r9, r5, r4	@ tmp616, D.4753, tmp615
#APP
@ 641 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smull r5,r9,r6,r9	@, y, tmp614, y
@ 0 "" 2
	add	r5, r9, r3	@ tmp619, y, sum
	ldr	r6, [fp, #-48]	@, %sfp
	add	r7, r7, #1	@ tmp501, ch.640,
	add	ip, ip, #4	@ tmp503, ivtmp.578,
	mov	r4, r5, asr #31	@ sign, tmp619,
	mov	r8, r5, asr #14	@ x, tmp619,
	cmp	r4, r5, asr #29	@ sign, tmp619,
	add	r5, r1, #4	@ tmp502, ivtmp.572,
	eorne	r8, r4, sl	@ x, sign, tmp446
	cmp	r7, r6	@ tmp501,
	mov	r3, r8, asl #16	@ tmp366, x,
	str	r3, [r2], #4	@ tmp366,
	bne	.L121	@,
	ldr	r9, [fp, #-48]	@ Channels, %sfp
	ldr	r4, [r0, #20]	@ prephitmp.381, <variable>.Remainder
	ldr	r3, [r0, #8]	@ <variable>.AdjustInRate, <variable>.AdjustInRate
	ldr	r8, [r0, #16]	@ temp.659, <variable>.OutRate
.L122:
	ldr	ip, [fp, #-64]	@, %sfp
	add	r4, r4, r3	@ prephitmp.381, prephitmp.381, <variable>.AdjustInRate
	ldr	r7, [fp, #-68]	@, %sfp
	cmp	r4, r8	@ prephitmp.381, temp.659
	add	r5, ip, #1	@,,
	str	r5, [fp, #-64]	@, %sfp
	add	r7, r7, #1	@,,
	str	r7, [fp, #-68]	@, %sfp
	str	r4, [r0, #20]	@ prephitmp.381, <variable>.Remainder
	ldr	r1, [fp, #-52]	@, %sfp
	ldr	r2, [fp, #-60]	@, %sfp
	add	ip, r1, r2	@,,
	str	ip, [fp, #-52]	@, %sfp
	blt	.L119	@,
.L118:
	ldr	r5, [fp, #-84]	@, %sfp
	rsb	r4, r8, r4	@ prephitmp.642, temp.659, prephitmp.381
	str	r4, [r0, #20]	@ prephitmp.642, <variable>.Remainder
	cmp	r5, #1	@,
	beq	.L117	@,
	ldr	r6, [fp, #-48]	@, %sfp
	mov	r7, #0	@,
	ldr	sl, [fp, #-96]	@, %sfp
	str	r5, [fp, #-80]	@, %sfp
	mov	r9, r6, asl #2	@,,
	add	ip, sl, #1	@ tmp433,,
	mul	r1, r6, sl	@ tmp436,,
	ldr	r6, [fp, #-92]	@, %sfp
	str	r9, [fp, #-72]	@, %sfp
	str	r7, [fp, #-76]	@, %sfp
	mla	r2, ip, r9, r6	@, tmp433,,
	add	sl, r6, r1, asl #2	@,,, tmp436,
	str	sl, [fp, #-104]	@, %sfp
	str	r2, [fp, #-100]	@, %sfp
.L124:
	cmp	r4, r8	@ prephitmp.642, temp.659
	bge	.L127	@,
	ldr	sl, [fp, #-48]	@, %sfp
	ldr	r5, [fp, #-64]	@, %sfp
	ldr	r7, [fp, #-76]	@, %sfp
	ldr	r1, [fp, #-100]	@, %sfp
	mul	ip, sl, r5	@ tmp388,,
	ldr	r9, [fp, #-104]	@, %sfp
	ldr	sl, [fp, #-88]	@, %sfp
	add	r2, r1, r7	@,,
	add	r6, r9, r7	@,,
	str	r2, [fp, #-56]	@, %sfp
	str	r6, [fp, #-60]	@, %sfp
	add	r5, sl, ip, asl #2	@,,, tmp388,
	str	r5, [fp, #-52]	@, %sfp
.L130:
	ldr	r5, [fp, #-48]	@, %sfp
	cmp	r5, #0	@,
	ble	.L128	@,
	tst	r5, #1	@,
	ldr	r6, [fp, #-56]	@ ivtmp.543, %sfp
	ldr	r2, [fp, #-60]	@ ivtmp.547, %sfp
	mov	ip, #0	@ ch.653,
	ldr	r1, [fp, #-52]	@ ivtmp.663, %sfp
	movw	sl, #32767	@ tmp424,
	bne	.L129	@,
	ldr	r2, [r0, #32]	@ temp.643, <variable>.IvtSFFactor
	ldr	ip, [fp, #-56]	@, %sfp
	mul	r3, r2, r4	@ tmp693, temp.643, prephitmp.642
	ldr	r5, [ip, #0]	@ tmp692,
#APP
@ 641 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smull ip,r3,r5,r3	@, sum.645, tmp692, sum.645
@ 0 "" 2
	rsb	r7, r4, r8	@ tmp697, prephitmp.642, temp.659
	ldr	r8, [fp, #-60]	@, %sfp
	mul	r9, r2, r7	@ tmp698, temp.643, tmp697
	ldr	r1, [r8, #0]	@ tmp696,
#APP
@ 641 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smull r6,r9,r1,r9	@, y, tmp696, y
@ 0 "" 2
	add	r6, r9, r3	@ tmp701, y, sum.645
	ldr	r1, [fp, #-52]	@ ivtmp.663, %sfp
	mov	ip, r6, asr #31	@ sign, tmp701,
	mov	r4, r6, asr #14	@ x, tmp701,
	cmp	ip, r6, asr #29	@ sign, tmp701,
	eorne	r4, ip, sl	@ x, sign, tmp424
	mov	ip, #1	@ ch.653,
	mov	r7, r4, asl #16	@ tmp707, x,
	str	r7, [r1], #4	@ tmp707,
	ldr	r8, [fp, #-60]	@, %sfp
	ldr	r5, [fp, #-56]	@, %sfp
	add	r2, r8, #4	@ ivtmp.547,,
	ldr	r4, [r0, #20]	@ prephitmp.642, <variable>.Remainder
	add	r6, r5, #4	@ ivtmp.543,,
	ldr	r8, [r0, #16]	@ temp.659, <variable>.OutRate
	b	.L129	@
.L126:
	ldr	r5, [r0, #20]	@ prephitmp.642, <variable>.Remainder
	ldr	r4, [r0, #32]	@ temp.643, <variable>.IvtSFFactor
	ldr	r6, [r6, #4]	@,
	mul	r3, r4, r5	@ tmp370, temp.643, prephitmp.642
	str	r6, [fp, #-112]	@, %sfp
#APP
@ 641 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smull r9,r3,r6,r3	@, sum.645,, sum.645
@ 0 "" 2
	ldr	r6, [r0, #16]	@, <variable>.OutRate
	ldr	r2, [r2, #4]	@ tmp371,
	rsb	r9, r5, r6	@ tmp372, prephitmp.642,
	mul	r5, r4, r9	@ tmp374, temp.643, tmp372
#APP
@ 641 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smull r9,r5,r2,r5	@, y, tmp371, y
@ 0 "" 2
	add	r4, r5, r3	@ tmp375, y, sum.645
	add	r6, r8, #4	@ ivtmp.543, tmp495,
	add	ip, ip, #1	@ ch.653, tmp494,
	mov	r3, r4, asr #31	@ sign, tmp375,
	mov	r2, r4, asr #14	@ x, tmp375,
	cmp	r3, r4, asr #29	@ sign, tmp375,
	eorne	r2, r3, sl	@ x, sign, tmp424
	mov	r4, r2, asl #16	@ tmp710, x,
	str	r4, [r1], #4	@ tmp710,
	ldr	r4, [r0, #20]	@ prephitmp.642, <variable>.Remainder
	add	r2, r7, #4	@ ivtmp.547, tmp496,
	ldr	r8, [r0, #16]	@ temp.659, <variable>.OutRate
.L129:
	ldr	r5, [r0, #32]	@ temp.643, <variable>.IvtSFFactor
	ldr	r7, [r6, #0]	@ tmp629,* ivtmp.543
	mul	r3, r5, r4	@ tmp630, temp.643, prephitmp.642
#APP
@ 641 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smull r9,r3,r7,r3	@, sum.645, tmp629, sum.645
@ 0 "" 2
	rsb	r4, r4, r8	@ tmp635, prephitmp.642, temp.659
	ldr	r9, [r2, #0]	@ tmp634,* ivtmp.547
	mul	r8, r5, r4	@ tmp636, temp.643, tmp635
#APP
@ 641 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smull r5,r8,r9,r8	@, y, tmp634, y
@ 0 "" 2
	add	r7, r8, r3	@ tmp639, y, sum.645
	ldr	r9, [fp, #-48]	@, %sfp
	add	ip, ip, #1	@ tmp494, ch.653,
	add	r8, r6, #4	@ tmp495, ivtmp.543,
	mov	r5, r7, asr #31	@ sign, tmp639,
	mov	r4, r7, asr #14	@ x, tmp639,
	cmp	r5, r7, asr #29	@ sign, tmp639,
	add	r7, r2, #4	@ tmp496, ivtmp.547,
	eorne	r4, r5, sl	@ x, sign, tmp424
	cmp	ip, r9	@ tmp494,
	mov	r3, r4, asl #16	@ tmp379, x,
	str	r3, [r1], #4	@ tmp379,
	bne	.L126	@,
	ldr	r4, [r0, #20]	@ prephitmp.642, <variable>.Remainder
	ldr	r3, [r0, #8]	@ <variable>.AdjustInRate, <variable>.AdjustInRate
	ldr	r8, [r0, #16]	@ temp.659, <variable>.OutRate
.L128:
	ldr	r7, [fp, #-68]	@, %sfp
	add	r4, r4, r3	@ prephitmp.642, prephitmp.642, <variable>.AdjustInRate
	ldr	r6, [fp, #-64]	@, %sfp
	cmp	r4, r8	@ prephitmp.642, temp.659
	add	r9, r7, #1	@,,
	str	r9, [fp, #-68]	@, %sfp
	add	r2, r6, #1	@,,
	str	r2, [fp, #-64]	@, %sfp
	str	r4, [r0, #20]	@ prephitmp.642, <variable>.Remainder
	ldr	ip, [fp, #-52]	@, %sfp
	ldr	sl, [fp, #-72]	@, %sfp
	add	r1, ip, sl	@,,
	str	r1, [fp, #-52]	@, %sfp
	blt	.L130	@,
.L127:
	ldr	ip, [fp, #-80]	@, %sfp
	rsb	r4, r8, r4	@ prephitmp.642, temp.659, prephitmp.642
	sub	r6, ip, #1	@,,
	str	r6, [fp, #-80]	@, %sfp
	str	r4, [r0, #20]	@ prephitmp.642, <variable>.Remainder
	cmp	r6, #1	@,
	ldr	r1, [fp, #-76]	@, %sfp
	ldr	r9, [fp, #-72]	@, %sfp
	add	r7, r1, r9	@,,
	str	r7, [fp, #-76]	@, %sfp
	bne	.L124	@,
	ldr	r1, [fp, #-96]	@, %sfp
	ldr	sl, [fp, #-84]	@, %sfp
	add	r2, sl, r1	@ D.4886,,
	sub	r3, r2, #1	@, D.4886,
	str	r3, [fp, #-96]	@, %sfp
.L117:
	ldr	ip, [fp, #-48]	@, %sfp
	cmp	ip, #0	@,
	ble	.L86	@,
	ldr	r2, [fp, #-96]	@, %sfp
	mov	r1, #1	@ ch.657,
	ldr	r4, [fp, #-92]	@, %sfp
	cmp	r1, ip	@ ch.657,
	mul	r3, ip, r2	@ tmp390,,
	sub	ip, ip, #1	@ tmp485,,
	and	ip, ip, r1	@ tmp487, tmp485,
	add	r2, r0, #4	@ ivtmp.538, hLSRC,
	add	r3, r4, r3, asl #2	@, ivtmp.535,, tmp390,
	ldr	r4, [r3], #4	@ tmp392,
	str	r4, [r0, #36]	@ tmp392, <variable>.PreSample
	beq	.L86	@,
	cmp	ip, #0	@ tmp487,
	beq	.L223	@,
	ldr	r8, [fp, #-48]	@, %sfp
	mov	r1, #2	@ ch.657,
	ldr	r0, [r3], #4	@ tmp690,
	cmp	r1, r8	@ ch.657,
	str	r0, [r2, #36]	@ tmp690, <variable>.PreSample
	add	r2, r2, #4	@ ivtmp.538, ivtmp.538,
	beq	.L86	@,
.L223:
	ldr	r5, [fp, #-48]	@ Channels, %sfp
.L131:
	mov	r0, r3	@ tmp489, ivtmp.535
	add	r1, r1, #2	@ ch.657, ch.657,
	ldr	r4, [r0], #4	@ tmp648,
	add	ip, r2, #4	@ tmp490, ivtmp.538,
	cmp	r1, r5	@ ch.657, Channels
	str	r4, [r2, #36]	@ tmp648, <variable>.PreSample
	add	r2, ip, #4	@ ivtmp.538, tmp490,
	ldr	r4, [r3, #4]	@ tmp652,
	add	r3, r0, #4	@ ivtmp.535, tmp489,
	str	r4, [ip, #36]	@ tmp652, <variable>.PreSample
	bne	.L131	@,
.L86:
	ldr	r0, [fp, #-68]	@, %sfp
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L104:
	ldr	r3, [r0, #8]	@ <variable>.AdjustInRate, <variable>.AdjustInRate
	ldr	r8, [r0, #16]	@ temp.659, <variable>.OutRate
	cmp	r3, r8	@ <variable>.AdjustInRate, temp.659
	beq	.L106	@,
	ldr	r9, [fp, #-48]	@, %sfp
	cmp	r9, #0	@,
	ble	.L108	@,
	ldr	r7, [fp, #-92]	@, %sfp
	mov	r2, #1	@ ch.629,
	ldr	r9, [fp, #-48]	@, %sfp
	ldr	r4, [r7, #0]	@ tmp346,
	cmp	r2, r9	@ ch.629,
	sub	r1, r9, #1	@ tmp510,,
	and	ip, r1, r2	@ tmp512, tmp510,
	add	r1, r0, #4	@ ivtmp.600, hLSRC,
	str	r4, [r0, #36]	@ tmp346, <variable>.PreSample
	beq	.L108	@,
	cmp	ip, #0	@ tmp512,
	beq	.L227	@,
	ldr	r2, [fp, #-92]	@, %sfp
	ldr	r4, [fp, #-48]	@, %sfp
	ldr	ip, [r2, #4]	@ tmp734,
	mov	r2, #2	@ ch.629,
	cmp	r2, r4	@ ch.629,
	str	ip, [r1, #36]	@ tmp734, <variable>.PreSample
	add	r1, r1, #4	@ ivtmp.600, ivtmp.600,
	beq	.L108	@,
.L227:
	ldr	r5, [fp, #-92]	@ pInPcmBuf, %sfp
.L111:
	ldr	r6, [r5, r2, asl #2]	@ tmp592,* pInPcmBuf
	add	r4, r2, #1	@ tmp513, ch.629,
	ldr	sl, [fp, #-48]	@, %sfp
	add	r2, r4, #1	@ ch.629, tmp513,
	add	ip, r1, #4	@ tmp514, ivtmp.600,
	str	r6, [r1, #36]	@ tmp592, <variable>.PreSample
	cmp	r2, sl	@ ch.629,
	ldr	r4, [r5, r4, asl #2]	@ tmp596,* pInPcmBuf
	add	r1, ip, #4	@ ivtmp.600, tmp514,
	str	r4, [ip, #36]	@ tmp596, <variable>.PreSample
	bne	.L111	@,
.L108:
	ldr	r1, [fp, #-84]	@, %sfp
	mov	r2, #0	@ tmp347,
	str	r2, [fp, #-64]	@ tmp347, %sfp
	sub	ip, r1, #1	@,,
	str	r2, [fp, #-68]	@ tmp347, %sfp
	str	ip, [fp, #-84]	@, %sfp
	mov	r1, #1	@,
	str	r1, [fp, #-96]	@, %sfp
	str	r2, [r0, #24]	@ tmp347, <variable>.DisContinuity
	b	.L105	@
.L229:
	ldr	r2, [fp, #-84]	@, %sfp
	cmp	r2, #0	@,
	ble	.L86	@,
	ldr	r3, [fp, #-48]	@, %sfp
	mov	r7, r2	@ InSamps.635,
	ldr	r4, [fp, #-96]	@, %sfp
	ldr	r9, [fp, #-64]	@, %sfp
	ldr	sl, [fp, #-88]	@, %sfp
	mov	r8, r3, asl #2	@ D.5100,,
	mul	r6, r3, r4	@ tmp349,,
	mul	r0, r3, r9	@ tmp351,,
	ldr	r9, [fp, #-92]	@, %sfp
	add	r6, r9, r6, asl #2	@, ivtmp.633,, tmp349,
	add	r5, sl, r0, asl #2	@, ivtmp.662,, tmp351,
	mov	sl, r3	@ Channels,
.L113:
	cmp	sl, #0	@ Channels,
	ble	.L116	@,
	mov	r0, r6	@ ivtmp.504, ivtmp.633
	mov	ip, #1	@ ch,
	ldr	r3, [r0], #4	@ tmp353,
	cmp	ip, sl	@ ch, Channels
	sub	r2, sl, #1	@ tmp479, Channels,
	mov	r1, r5	@ ivtmp.506, ivtmp.662
	and	r2, r2, ip	@ tmp481, tmp479,
	str	r3, [r1], #4	@ tmp353,
	beq	.L116	@,
	cmp	r2, #0	@ tmp481,
	beq	.L114	@,
	ldr	r2, [r0], #4	@ tmp689,
	mov	ip, #2	@ ch,
	cmp	ip, sl	@ ch, Channels
	str	r2, [r1], #4	@ tmp689,
	beq	.L116	@,
.L114:
	mov	r2, r0	@ tmp483, ivtmp.504
	mov	r3, r1	@ tmp484, ivtmp.506
	ldr	r4, [r2], #4	@ tmp600,
	add	ip, ip, #2	@ ch, ch,
	cmp	ip, sl	@ ch, Channels
	str	r4, [r3], #4	@ tmp600,
	ldr	r4, [r0, #4]	@ tmp604,
	add	r0, r2, #4	@ ivtmp.504, tmp483,
	str	r4, [r1, #4]	@ tmp604,
	add	r1, r3, #4	@ ivtmp.506, tmp484,
	bne	.L114	@,
.L116:
	subs	r7, r7, #1	@ InSamps.635, InSamps.635,
	add	r6, r6, r8	@ ivtmp.633, ivtmp.633, D.5100
	add	r5, r5, r8	@ ivtmp.662, ivtmp.662, D.5100
	bne	.L113	@,
	ldr	r1, [fp, #-68]	@, %sfp
	ldr	r0, [fp, #-84]	@, %sfp
	add	ip, r1, r0	@,,
	str	ip, [fp, #-68]	@, %sfp
	b	.L86	@
.L228:
	ldr	r3, [r0, #24]	@ <variable>.DisContinuity, <variable>.DisContinuity
	ldr	sl, [fp, #-84]	@, %sfp
	ldr	r6, [r0, #4]	@ Channels, <variable>.Channels
	cmp	r3, #0	@ <variable>.DisContinuity,
	cmpne	sl, #0	@,,
	movle	r3, #0	@, tmp281
	movgt	r3, #1	@, tmp281
	bgt	.L75	@,
	str	r3, [fp, #-76]	@ tmp281, %sfp
	ldr	r2, [fp, #-76]	@, %sfp
	ldr	r3, [r0, #8]	@ <variable>.AdjustInRate, <variable>.AdjustInRate
	str	r2, [fp, #-64]	@, %sfp
	str	r2, [fp, #-68]	@, %sfp
	ldr	sl, [r0, #16]	@ temp.659, <variable>.OutRate
.L76:
	cmp	r3, sl	@ <variable>.AdjustInRate, temp.659
	beq	.L230	@,
	ldr	r1, [fp, #-84]	@, %sfp
	cmp	r1, #0	@,
	ble	.L89	@,
	ldr	r2, [r0, #20]	@ prephitmp.612, <variable>.Remainder
	cmp	sl, r2	@ temp.659, prephitmp.612
	ble	.L90	@,
	ldr	r4, [fp, #-76]	@, %sfp
	mov	r1, r6, asl #1	@, Channels,
	ldr	r9, [fp, #-64]	@, %sfp
	ldr	r8, [fp, #-88]	@, %sfp
	mul	ip, r6, r4	@ D.4691, Channels,
	ldr	r7, [fp, #-92]	@, %sfp
	mul	r4, r6, r9	@ tmp297, Channels,
	movw	r9, #32767	@ tmp421,
	str	r1, [fp, #-56]	@, %sfp
	add	r5, r7, ip, asl #1	@,,, D.4691,
	str	r5, [fp, #-52]	@, %sfp
	add	ip, r8, r4, asl #1	@,,, tmp297,
	mov	r8, r6	@ Channels, Channels
	str	ip, [fp, #-48]	@, %sfp
.L91:
	cmp	r8, #0	@ Channels,
	ble	.L94	@,
	tst	r8, #1	@ Channels,
	ldr	ip, [fp, #-52]	@ ivtmp.462, %sfp
	mov	r4, r0	@ ivtmp.470, hLSRC
	ldr	r1, [fp, #-48]	@ ivtmp.472, %sfp
	mov	r7, #0	@ ch.610,
	strne	r8, [fp, #-72]	@ Channels, %sfp
	bne	.L95	@,
	ldr	r6, [r0, #32]	@ D.4684, <variable>.IvtSFFactor
	ldr	r3, [fp, #-52]	@, %sfp
	mul	r7, r6, r2	@ tmp673, D.4684, prephitmp.612
	ldrsh	r1, [r3, #0]	@ tmp672,
#APP
@ 641 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smull r4,r7,r1,r7	@, sum, tmp672, sum
@ 0 "" 2
	rsb	r2, r2, sl	@ tmp677, prephitmp.612, temp.659
	ldr	ip, [r0, #36]	@ tmp676, <variable>.PreSample
	mul	r4, r6, r2	@ tmp678, D.4684, tmp677
#APP
@ 641 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smull r5,r4,ip,r4	@, y, tmp676, y
@ 0 "" 2
	add	r5, r4, r7	@ tmp681, y, sum
	mov	r7, #1	@ ch.610,
	add	r4, r0, #4	@ ivtmp.470, hLSRC,
	mov	r3, r5, asl #2	@ x, tmp681,
	mov	r1, r3, asr #31	@ sign, x,
	cmp	r1, r3, asr #15	@ sign, x,
	eorne	r3, r1, r9	@ x, sign, tmp421
	ldr	r1, [fp, #-48]	@ ivtmp.472, %sfp
	strh	r3, [r1], #2	@ movhi	@ x,
	ldr	sl, [fp, #-52]	@, %sfp
	ldr	r2, [r0, #20]	@ prephitmp.612, <variable>.Remainder
	add	ip, sl, #2	@ ivtmp.462,,
	ldr	sl, [r0, #16]	@ temp.659, <variable>.OutRate
	str	r8, [fp, #-72]	@ Channels, %sfp
	b	.L95	@
.L93:
	ldr	r6, [r0, #20]	@ prephitmp.612, <variable>.Remainder
	ldr	r5, [r0, #32]	@ D.4684, <variable>.IvtSFFactor
	ldrsh	ip, [ip, #2]	@,
	mul	r3, r5, r6	@ tmp300, D.4684, prephitmp.612
	str	ip, [fp, #-60]	@, %sfp
	ldr	r8, [r0, #16]	@ temp.659, <variable>.OutRate
#APP
@ 641 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smull sl,r3,ip,r3	@, sum,, sum
@ 0 "" 2
	rsb	r6, r6, r8	@ tmp302, prephitmp.612, temp.659
	ldr	ip, [r4, #36]	@ tmp301, <variable>.PreSample
	mul	r8, r5, r6	@ tmp304, D.4684, tmp302
#APP
@ 641 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smull r6,r8,ip,r8	@, y, tmp301, y
@ 0 "" 2
	add	sl, r8, r3	@ tmp305, y, sum
	add	ip, r2, #2	@ ivtmp.462, tmp471,
	add	r7, r7, #1	@ ch.610, tmp470,
	add	r4, r4, #4	@ ivtmp.470, tmp472,
	mov	r3, sl, asl #2	@ x, tmp305,
	mov	r6, r3, asr #31	@ sign, x,
	cmp	r6, r3, asr #15	@ sign, x,
	eorne	r3, r6, r9	@ x, sign, tmp421
	strh	r3, [r1], #2	@ movhi	@ x,
	ldr	r2, [r0, #20]	@ prephitmp.612, <variable>.Remainder
	ldr	sl, [r0, #16]	@ temp.659, <variable>.OutRate
.L95:
	ldr	r5, [r0, #32]	@ D.4684, <variable>.IvtSFFactor
	ldrsh	r8, [ip, #0]	@,* ivtmp.462
	mul	r3, r5, r2	@ tmp536, D.4684, prephitmp.612
	str	r8, [fp, #-60]	@, %sfp
#APP
@ 641 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smull r6,r3,r8,r3	@, sum,, sum
@ 0 "" 2
	rsb	r8, r2, sl	@ tmp541, prephitmp.612, temp.659
	ldr	sl, [r4, #36]	@ tmp540, <variable>.PreSample
	mul	r2, r5, r8	@ tmp542, D.4684, tmp541
#APP
@ 641 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smull r8,r2,sl,r2	@, y, tmp540, y
@ 0 "" 2
	add	r6, r2, r3	@ tmp545, y, sum
	ldr	sl, [fp, #-72]	@, %sfp
	add	r7, r7, #1	@ tmp470, ch.610,
	add	r4, r4, #4	@ tmp472, ivtmp.470,
	mov	r3, r6, asl #2	@ x, tmp545,
	add	r2, ip, #2	@ tmp471, ivtmp.462,
	mov	r5, r3, asr #31	@ sign, x,
	cmp	r5, r3, asr #15	@ sign, x,
	eorne	r3, r5, r9	@ x, sign, tmp421
	cmp	r7, sl	@ tmp470,
	strh	r3, [r1], #2	@ movhi	@ x,
	bne	.L93	@,
	ldr	r8, [fp, #-72]	@ Channels, %sfp
	ldr	r2, [r0, #20]	@ prephitmp.612, <variable>.Remainder
	ldr	r3, [r0, #8]	@ <variable>.AdjustInRate, <variable>.AdjustInRate
	ldr	sl, [r0, #16]	@ temp.659, <variable>.OutRate
.L94:
	ldr	r4, [fp, #-64]	@, %sfp
	add	r2, r2, r3	@ prephitmp.612, prephitmp.612, <variable>.AdjustInRate
	ldr	r6, [fp, #-68]	@, %sfp
	cmp	r2, sl	@ prephitmp.612, temp.659
	add	r1, r4, #1	@,,
	str	r1, [fp, #-64]	@, %sfp
	add	ip, r6, #1	@,,
	str	ip, [fp, #-68]	@, %sfp
	str	r2, [r0, #20]	@ prephitmp.612, <variable>.Remainder
	ldr	r7, [fp, #-48]	@, %sfp
	ldr	r5, [fp, #-56]	@, %sfp
	add	r4, r7, r5	@,,
	str	r4, [fp, #-48]	@, %sfp
	blt	.L91	@,
	mov	r6, r8	@ Channels, Channels
.L90:
	ldr	r7, [fp, #-84]	@, %sfp
	rsb	r2, sl, r2	@ prephitmp.613, temp.659, prephitmp.612
	str	r2, [r0, #20]	@ prephitmp.613, <variable>.Remainder
	cmp	r7, #1	@,
	beq	.L89	@,
	ldr	r8, [fp, #-76]	@, %sfp
	mov	r5, #0	@,
	str	r5, [fp, #-80]	@, %sfp
	mov	r9, r6, asl #1	@, Channels,
	ldr	r5, [fp, #-92]	@, %sfp
	add	r1, r8, #1	@ tmp408,,
	mul	ip, r6, r8	@ tmp411, Channels,
	str	r9, [fp, #-72]	@, %sfp
	mla	r4, r1, r9, r5	@, tmp408,,
	str	r7, [fp, #-96]	@, %sfp
	str	r6, [fp, #-48]	@ Channels, %sfp
	add	r1, r5, ip, asl #1	@,,, tmp411,
	str	r1, [fp, #-104]	@, %sfp
	str	r4, [fp, #-100]	@, %sfp
	mov	r4, r2	@ prephitmp.613, prephitmp.613
.L96:
	cmp	sl, r4	@ temp.659, prephitmp.613
	ble	.L99	@,
	ldr	r9, [fp, #-48]	@, %sfp
	ldr	r7, [fp, #-64]	@, %sfp
	ldr	r2, [fp, #-80]	@, %sfp
	ldr	ip, [fp, #-100]	@, %sfp
	mul	r5, r9, r7	@ tmp327,,
	ldr	r1, [fp, #-104]	@, %sfp
	ldr	r7, [fp, #-88]	@, %sfp
	add	r6, ip, r2	@,,
	add	r8, r1, r2	@,,
	str	r6, [fp, #-56]	@, %sfp
	str	r8, [fp, #-60]	@, %sfp
	add	r9, r7, r5, asl #1	@,,, tmp327,
	str	r9, [fp, #-52]	@, %sfp
.L102:
	ldr	r9, [fp, #-48]	@, %sfp
	cmp	r9, #0	@,
	ble	.L100	@,
	tst	r9, #1	@,
	ldr	r6, [fp, #-56]	@ ivtmp.433, %sfp
	ldr	r2, [fp, #-60]	@ ivtmp.437, %sfp
	mov	ip, #0	@ ch.623,
	ldr	r1, [fp, #-52]	@ ivtmp.661, %sfp
	movw	r9, #32767	@ tmp399,
	bne	.L101	@,
	ldr	r2, [r0, #32]	@ temp.614, <variable>.IvtSFFactor
	ldr	r6, [fp, #-56]	@, %sfp
	mul	r3, r2, r4	@ tmp657, temp.614, prephitmp.613
	ldrsh	r7, [r6, #0]	@ tmp656,
#APP
@ 641 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smull r5,r3,r7,r3	@, sum.616, tmp656, sum.616
@ 0 "" 2
	ldr	r8, [fp, #-60]	@, %sfp
	rsb	r4, r4, sl	@ tmp661, prephitmp.613, temp.659
	mul	r5, r2, r4	@ tmp662, temp.614, tmp661
	ldrsh	ip, [r8, #0]	@ tmp660,
#APP
@ 641 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smull r7,r5,ip,r5	@, y, tmp660, y
@ 0 "" 2
	add	sl, r5, r3	@ tmp665, y, sum.616
	mov	ip, #1	@ ch.623,
	mov	r6, sl, asl #2	@ x, tmp665,
	mov	r1, r6, asr #31	@ sign, x,
	cmp	r1, r6, asr #15	@ sign, x,
	eorne	r6, r1, r9	@ x, sign, tmp399
	ldr	r1, [fp, #-52]	@ ivtmp.661, %sfp
	strh	r6, [r1], #2	@ movhi	@ x,
	ldr	r7, [fp, #-56]	@, %sfp
	ldr	r8, [fp, #-60]	@, %sfp
	add	r6, r7, #2	@ ivtmp.433,,
	ldr	r4, [r0, #20]	@ prephitmp.613, <variable>.Remainder
	add	r2, r8, #2	@ ivtmp.437,,
	ldr	sl, [r0, #16]	@ temp.659, <variable>.OutRate
	b	.L101	@
.L98:
	ldr	r5, [r0, #20]	@ prephitmp.613, <variable>.Remainder
	ldr	r4, [r0, #32]	@ temp.614, <variable>.IvtSFFactor
	ldrsh	r6, [r6, #2]	@,
	mul	r3, r4, r5	@ tmp311, temp.614, prephitmp.613
	str	r6, [fp, #-112]	@, %sfp
#APP
@ 641 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smull sl,r3,r6,r3	@, sum.616,, sum.616
@ 0 "" 2
	ldr	r6, [r0, #16]	@, <variable>.OutRate
	ldrsh	r2, [r2, #2]	@ tmp312,
	rsb	sl, r5, r6	@ tmp313, prephitmp.613,
	mul	r6, r4, sl	@ tmp315, temp.614, tmp313
#APP
@ 641 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smull sl,r6,r2,r6	@, y, tmp312, y
@ 0 "" 2
	add	r3, r6, r3	@ tmp316, y, sum.616
	add	ip, ip, #1	@ ch.623, tmp465,
	add	r6, r8, #2	@ ivtmp.433, tmp466,
	mov	r3, r3, asl #2	@ x, tmp316,
	mov	r2, r3, asr #31	@ sign, x,
	cmp	r2, r3, asr #15	@ sign, x,
	eorne	r3, r2, r9	@ x, sign, tmp399
	strh	r3, [r1], #2	@ movhi	@ x,
	ldr	r4, [r0, #20]	@ prephitmp.613, <variable>.Remainder
	add	r2, r7, #2	@ ivtmp.437, tmp463,
	ldr	sl, [r0, #16]	@ temp.659, <variable>.OutRate
.L101:
	ldr	r5, [r0, #32]	@ temp.614, <variable>.IvtSFFactor
	ldrsh	r7, [r6, #0]	@ tmp555,* ivtmp.433
	mul	r3, r5, r4	@ tmp556, temp.614, prephitmp.613
#APP
@ 641 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smull r8,r3,r7,r3	@, sum.616, tmp555, sum.616
@ 0 "" 2
	rsb	r4, r4, sl	@ tmp561, prephitmp.613, temp.659
	ldrsh	r7, [r2, #0]	@ tmp560,* ivtmp.437
	mul	r8, r5, r4	@ tmp562, temp.614, tmp561
#APP
@ 641 "/home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smull sl,r8,r7,r8	@, y, tmp560, y
@ 0 "" 2
	add	r7, r8, r3	@ tmp565, y, sum.616
	ldr	sl, [fp, #-48]	@, %sfp
	add	ip, ip, #1	@ tmp465, ch.623,
	add	r8, r6, #2	@ tmp466, ivtmp.433,
	mov	r3, r7, asl #2	@ x, tmp565,
	add	r7, r2, #2	@ tmp463, ivtmp.437,
	mov	r4, r3, asr #31	@ sign, x,
	cmp	r4, r3, asr #15	@ sign, x,
	eorne	r3, r4, r9	@ x, sign, tmp399
	cmp	ip, sl	@ tmp465,
	strh	r3, [r1], #2	@ movhi	@ x,
	bne	.L98	@,
	ldr	r4, [r0, #20]	@ prephitmp.613, <variable>.Remainder
	ldr	r3, [r0, #8]	@ <variable>.AdjustInRate, <variable>.AdjustInRate
	ldr	sl, [r0, #16]	@ temp.659, <variable>.OutRate
.L100:
	ldr	r8, [fp, #-68]	@, %sfp
	add	r4, r4, r3	@ prephitmp.613, prephitmp.613, <variable>.AdjustInRate
	ldr	r2, [fp, #-64]	@, %sfp
	cmp	r4, sl	@ prephitmp.613, temp.659
	add	r6, r8, #1	@,,
	str	r6, [fp, #-68]	@, %sfp
	add	r1, r2, #1	@,,
	str	r1, [fp, #-64]	@, %sfp
	str	r4, [r0, #20]	@ prephitmp.613, <variable>.Remainder
	ldr	ip, [fp, #-52]	@, %sfp
	ldr	r8, [fp, #-72]	@, %sfp
	add	r7, ip, r8	@,,
	str	r7, [fp, #-52]	@, %sfp
	blt	.L102	@,
.L99:
	ldr	r6, [fp, #-96]	@, %sfp
	rsb	r4, sl, r4	@ prephitmp.613, temp.659, prephitmp.613
	sub	r2, r6, #1	@,,
	str	r2, [fp, #-96]	@, %sfp
	str	r4, [r0, #20]	@ prephitmp.613, <variable>.Remainder
	cmp	r2, #1	@,
	ldr	ip, [fp, #-80]	@, %sfp
	ldr	r1, [fp, #-72]	@, %sfp
	add	r5, ip, r1	@,,
	str	r5, [fp, #-80]	@, %sfp
	bne	.L96	@,
	ldr	r5, [fp, #-76]	@, %sfp
	ldr	r4, [fp, #-84]	@, %sfp
	ldr	r6, [fp, #-48]	@ Channels, %sfp
	add	ip, r4, r5	@ D.4882,,
	sub	r3, ip, #1	@, D.4882,
	str	r3, [fp, #-76]	@, %sfp
.L89:
	cmp	r6, #0	@ Channels,
	ble	.L86	@,
	ldr	r1, [fp, #-76]	@, %sfp
	sub	r2, r6, #1	@ tmp454, Channels,
	ldr	r4, [fp, #-92]	@, %sfp
	mul	r3, r6, r1	@ tmp329, Channels,
	mov	r1, #1	@ ch.627,
	cmp	r1, r6	@ ch.627, Channels
	and	ip, r2, r1	@ tmp456, tmp454,
	add	r2, r0, #4	@ ivtmp.428, hLSRC,
	add	r3, r4, r3, asl #1	@, ivtmp.424,, tmp329,
	ldrsh	r4, [r3], #2	@ tmp331,
	str	r4, [r0, #36]	@ tmp331, <variable>.PreSample
	beq	.L86	@,
	cmp	ip, #0	@ tmp456,
	beq	.L103	@,
	ldrsh	ip, [r3], #2	@ tmp654,
	mov	r1, #2	@ ch.627,
	cmp	r1, r6	@ ch.627, Channels
	str	ip, [r2, #36]	@ tmp654, <variable>.PreSample
	add	r2, r2, #4	@ ivtmp.428, ivtmp.428,
	beq	.L86	@,
.L103:
	mov	r0, r3	@ tmp458, ivtmp.424
	add	r1, r1, #2	@ ch.627, ch.627,
	ldrsh	r4, [r0], #2	@ tmp574,
	add	ip, r2, #4	@ tmp459, ivtmp.428,
	cmp	r1, r6	@ ch.627, Channels
	str	r4, [r2, #36]	@ tmp574, <variable>.PreSample
	add	r2, ip, #4	@ ivtmp.428, tmp459,
	ldrsh	r4, [r3, #2]	@ tmp578,
	add	r3, r0, #2	@ ivtmp.424, tmp458,
	str	r4, [ip, #36]	@ tmp578, <variable>.PreSample
	bne	.L103	@,
	b	.L86	@
.L75:
	ldr	r3, [r0, #8]	@ <variable>.AdjustInRate, <variable>.AdjustInRate
	ldr	sl, [r0, #16]	@ temp.659, <variable>.OutRate
	cmp	r3, sl	@ <variable>.AdjustInRate, temp.659
	moveq	r2, r0	@ ivtmp.489, hLSRC
	moveq	r3, #0	@ ch,
	beq	.L78	@,
	cmp	r6, #0	@ Channels,
	ble	.L80	@,
	ldr	r8, [fp, #-92]	@, %sfp
	mov	r2, #1	@ ch.601,
	cmp	r2, r6	@ ch.601, Channels
	sub	r9, r6, #1	@ tmp474, Channels,
	and	ip, r9, r2	@ tmp476, tmp474,
	add	r1, r0, #4	@ ivtmp.501, hLSRC,
	ldrsh	r4, [r8, #0]	@ tmp288,
	str	r4, [r0, #36]	@ tmp288, <variable>.PreSample
	beq	.L80	@,
	cmp	ip, #0	@ tmp476,
	beq	.L219	@,
	ldr	r7, [fp, #-92]	@, %sfp
	mov	r2, #2	@ tmp687,
	cmp	r2, r6	@ ch.601, Channels
	ldrsh	r9, [r7, r2]	@ tmp688,
	str	r9, [r1, #36]	@ tmp688, <variable>.PreSample
	add	r1, r1, #4	@ ivtmp.501, ivtmp.501,
	beq	.L80	@,
.L219:
	ldr	r5, [fp, #-92]	@ pInPcmBuf, %sfp
.L82:
	mov	r7, r2, asl #1	@ tmp517, ch.601,
	add	r9, r2, #1	@ tmp477, ch.601,
	add	r2, r9, #1	@ ch.601, tmp477,
	add	ip, r1, #4	@ tmp478, ivtmp.501,
	ldrsh	r7, [r5, r7]	@ tmp518,
	mov	r4, r9, asl #1	@ tmp521, tmp477,
	cmp	r2, r6	@ ch.601, Channels
	str	r7, [r1, #36]	@ tmp518, <variable>.PreSample
	add	r1, ip, #4	@ ivtmp.501, tmp478,
	ldrsh	r4, [r5, r4]	@ tmp522,
	str	r4, [ip, #36]	@ tmp522, <variable>.PreSample
	bne	.L82	@,
.L80:
	ldr	ip, [fp, #-84]	@, %sfp
	mov	r1, #0	@ tmp289,
	mov	r2, #1	@,
	str	r1, [fp, #-64]	@ tmp289, %sfp
	sub	r9, ip, #1	@,,
	str	r2, [fp, #-76]	@, %sfp
	str	r9, [fp, #-84]	@, %sfp
	str	r1, [fp, #-68]	@ tmp289, %sfp
	str	r1, [r0, #24]	@ tmp289, <variable>.DisContinuity
	b	.L76	@
.L78:
	cmp	r6, r3	@ Channels, ch
	mov	r1, r3, asl #1	@ tmp284, ch,
	add	r2, r2, #4	@ ivtmp.489, ivtmp.489,
	add	r3, r3, #1	@ ch, ch,
	ble	.L231	@,
	ldrh	r4, [r2, #32]	@, <variable>.PreSample
	ldr	r5, [fp, #-88]	@, %sfp
	strh	r4, [r5, r1]	@ movhi	@,
	b	.L78	@
.L106:
	ldr	sl, [fp, #-48]	@, %sfp
	cmp	sl, #0	@,
	ble	.L109	@,
	ldr	r6, [r0, #36]	@ tmp343, <variable>.PreSample
	mov	r3, #1	@ ch.628,
	ldr	r4, [fp, #-88]	@, %sfp
	cmp	r3, sl	@ ch.628,
	sub	r2, sl, #1	@ tmp505,,
	and	r1, r2, r3	@ tmp507, tmp505,
	add	r2, r0, #4	@ ivtmp.593, hLSRC,
	str	r6, [r4, #0]	@ tmp343,
	beq	.L202	@,
	cmp	r1, #0	@ tmp507,
	beq	.L225	@,
	ldr	r9, [fp, #-48]	@, %sfp
	mov	r3, #2	@ ch.628,
	ldr	r8, [r2, #36]	@ tmp732, <variable>.PreSample
	add	r2, r2, #4	@ ivtmp.593, ivtmp.593,
	ldr	sl, [fp, #-88]	@, %sfp
	cmp	r3, r9	@ ch.628,
	str	r8, [sl, #4]	@ tmp732,
	beq	.L202	@,
.L225:
	ldr	r4, [fp, #-88]	@ pOutpcmBuf, %sfp
.L110:
	ldr	r5, [r2, #36]	@ tmp584, <variable>.PreSample
	add	r8, r2, #4	@ tmp509, ivtmp.593,
	add	r1, r3, #1	@ tmp508, ch.628,
	add	r2, r8, #4	@ ivtmp.593, tmp509,
	str	r5, [r4, r3, asl #2]	@ tmp584,* pOutpcmBuf
	add	r3, r1, #1	@ ch.628, tmp508,
	ldr	r5, [fp, #-48]	@, %sfp
	ldr	ip, [r8, #36]	@ tmp588, <variable>.PreSample
	cmp	r3, r5	@ ch.628,
	str	ip, [r4, r1, asl #2]	@ tmp588,* pOutpcmBuf
	bne	.L110	@,
.L202:
	ldr	r3, [r0, #8]	@ <variable>.AdjustInRate, <variable>.AdjustInRate
	ldr	r8, [r0, #16]	@ temp.659, <variable>.OutRate
.L109:
	mov	r2, #0	@ tmp344,
	mov	r6, #1	@,
	str	r6, [fp, #-64]	@, %sfp
	str	r2, [r0, #24]	@ tmp344, <variable>.DisContinuity
	str	r2, [fp, #-96]	@ tmp344, %sfp
	str	r6, [fp, #-68]	@, %sfp
	b	.L105	@
.L230:
	ldr	r7, [fp, #-76]	@, %sfp
	mov	ip, r6, asl #1	@ D.4914, Channels,
	ldr	r3, [fp, #-64]	@, %sfp
	ldr	sl, [fp, #-92]	@, %sfp
	mul	r5, r6, r7	@ tmp291, Channels,
	ldr	r8, [fp, #-88]	@, %sfp
	mul	r0, r6, r3	@ tmp293, Channels,
	add	r5, sl, r5, asl #1	@, ivtmp.406,, tmp291,
	ldr	sl, [fp, #-68]	@ outsampls, %sfp
	add	r7, r8, r0, asl #1	@, ivtmp.660,, tmp293,
	ldr	r8, [fp, #-84]	@ InSamps, %sfp
.L84:
	cmp	r8, #0	@ InSamps,
	ble	.L207	@,
	cmp	r6, #0	@ Channels,
	ble	.L88	@,
	sub	r4, r6, #1	@ tmp448, Channels,
	mov	r2, r5	@ ivtmp.632, ivtmp.406
	mov	r1, #1	@ ch.605,
	and	r0, r4, r1	@ tmp450, tmp448,
	ldrh	r4, [r2], #2	@,
	cmp	r1, r6	@ ch.605, Channels
	mov	r3, r7	@ ivtmp.408, ivtmp.660
	strh	r4, [r3], #2	@ movhi	@,
	beq	.L88	@,
	cmp	r0, #0	@ tmp450,
	beq	.L85	@,
	ldrh	r9, [r2], #2	@,
	mov	r1, #2	@ ch.605,
	cmp	r1, r6	@ ch.605, Channels
	strh	r9, [r3], #2	@ movhi	@,
	beq	.L88	@,
.L85:
	mov	r4, r2	@ tmp452, ivtmp.632
	mov	r0, r3	@ tmp453, ivtmp.408
	ldrh	r9, [r4], #2	@,
	add	r1, r1, #2	@ ch.605, ch.605,
	cmp	r1, r6	@ ch.605, Channels
	strh	r9, [r0], #2	@ movhi	@,
	ldrh	r2, [r2, #2]	@,
	strh	r2, [r3, #2]	@ movhi	@,
	add	r2, r4, #2	@ ivtmp.632, tmp452,
	add	r3, r0, #2	@ ivtmp.408, tmp453,
	bne	.L85	@,
.L88:
	add	sl, sl, #1	@ outsampls, outsampls,
	sub	r8, r8, #1	@ InSamps, InSamps,
	add	r5, r5, ip	@ ivtmp.406, ivtmp.406, D.4914
	add	r7, r7, ip	@ ivtmp.660, ivtmp.660, D.4914
	b	.L84	@
.L207:
	str	sl, [fp, #-68]	@ outsampls, %sfp
	b	.L86	@
.L231:
	mov	ip, #0	@ tmp286,
	mov	r7, #1	@,
	str	r7, [fp, #-64]	@, %sfp
	str	ip, [r0, #24]	@ tmp286, <variable>.DisContinuity
	str	ip, [fp, #-76]	@ tmp286, %sfp
	str	r7, [fp, #-68]	@, %sfp
	ldr	r3, [r0, #8]	@ <variable>.AdjustInRate, <variable>.AdjustInRate
	ldr	sl, [r0, #16]	@ temp.659, <variable>.OutRate
	b	.L76	@
	.fnend
	.size	LSRC_ProcessFrame, .-LSRC_ProcessFrame
	.align	2
	.global	LSRC_Destroy
	.type	LSRC_Destroy, %function
LSRC_Destroy:
	.fnstart
.LFB159:
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
	subs	r1, r0, #0	@ hLSRC, hLSRC
	ldmeqfd	sp, {fp, sp, pc}	@
	mov	r0, #17	@,
	bl	HI_ADSP_FREE	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	LSRC_Destroy, .-LSRC_Destroy
	.align	2
	.global	LSRC_Create
	.type	LSRC_Create, %function
LSRC_Create:
	.fnstart
.LFB158:
	@ args = 4, pretend = 0, frame = 0
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
	movw	ip, #:lower16:191999	@ tmp146,
	sub	r5, r1, #1	@ tmp145, inRate,
	movt	ip, #:upper16:191999	@ tmp146,
	cmp	r5, ip	@ tmp145, tmp146
	mov	r7, #0	@ tmp144,
	str	r7, [r0, #0]	@ tmp144,* phLSRC
	mov	r4, r1	@ inRate, inRate
	mov	r5, r0	@ phLSRC, phLSRC
	mov	r6, r2	@ outRate, outRate
	mov	sl, r3	@ BitPerSample, BitPerSample
	ldr	r8, [fp, #4]	@ Channels, Channels
	ldmhifd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	sub	r3, r2, #1	@ tmp147, outRate,
	cmp	r3, ip	@ tmp147, tmp146
	ldmhifd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	mov	r0, r2	@, outRate
	bl	__aeabi_idiv	@
	cmp	r0, #6	@,
	ldmgtfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	mov	r0, #17	@,
	mov	r1, #76	@,
	bl	HI_ADSP_MALLOC	@
	subs	r9, r0, #0	@ pLinearSrc,
	ldmeqfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
	mov	r1, #76	@,
	bl	__memzero	@
	cmp	r6, #8000	@ outRate,
	beq	.L238	@,
	movw	r0, #11025	@ tmp153,
	cmp	r6, r0	@ outRate, tmp153
	moveq	r7, #1	@ n.718,
	beq	.L238	@,
	movw	r1, #12000	@ tmp154,
	cmp	r6, r1	@ outRate, tmp154
	moveq	r7, #2	@ n.718,
	beq	.L238	@,
	cmp	r6, #16000	@ outRate,
	moveq	r7, #3	@ n.718,
	beq	.L238	@,
	movw	r2, #22050	@ tmp155,
	cmp	r6, r2	@ outRate, tmp155
	moveq	r7, #4	@ n.718,
	beq	.L238	@,
	movw	ip, #24000	@ tmp156,
	cmp	r6, ip	@ outRate, tmp156
	moveq	r7, #5	@ n.718,
	beq	.L238	@,
	cmp	r6, #32000	@ outRate,
	moveq	r7, #6	@ n.718,
	beq	.L238	@,
	movw	lr, #44100	@ tmp157,
	cmp	r6, lr	@ outRate, tmp157
	moveq	r7, #7	@ n.718,
	beq	.L238	@,
	movw	r3, #48000	@ tmp158,
	cmp	r6, r3	@ outRate, tmp158
	moveq	r7, #8	@ n.718,
	beq	.L238	@,
	movw	r0, #:lower16:88200	@ tmp159,
	movt	r0, #:upper16:88200	@ tmp159,
	cmp	r6, r0	@ outRate, tmp159
	moveq	r7, #9	@ n.718,
	beq	.L238	@,
	movw	r1, #:lower16:96000	@ tmp160,
	movt	r1, #:upper16:96000	@ tmp160,
	cmp	r6, r1	@ outRate, tmp160
	moveq	r7, #10	@ n.718,
	beq	.L238	@,
	movw	r2, #:lower16:176400	@ tmp161,
	movt	r2, #:upper16:176400	@ tmp161,
	cmp	r6, r2	@ outRate, tmp161
	moveq	r7, #11	@ n.718,
	beq	.L238	@,
	movw	ip, #:lower16:192000	@ tmp162,
	movt	ip, #:upper16:192000	@ tmp162,
	cmp	r6, ip	@ outRate, tmp162
	beq	.L260	@,
.L250:
	cmp	r8, #0	@ Channels,
	beq	.L251	@,
	mov	r3, #1	@ n,
	cmp	r3, r8	@ n, Channels
	sub	r2, r8, #1	@ tmp167, Channels,
	mov	r0, #0	@ tmp166,
	and	r1, r2, r3	@ tmp169, tmp167,
	str	r0, [r9, #36]	@ tmp166, <variable>.PreSample
	add	r2, r9, #4	@ ivtmp.716, pLinearSrc,
	bcs	.L251	@,
	cmp	r1, #0	@ tmp169,
	beq	.L252	@,
	mov	r3, #2	@ n,
	cmp	r3, r8	@ n, Channels
	str	r0, [r2, #36]	@ tmp166, <variable>.PreSample
	add	r2, r2, #4	@ ivtmp.716, ivtmp.716,
	bcs	.L251	@,
.L252:
	add	r3, r3, #2	@ n, n,
	add	r1, r2, #4	@ tmp171, ivtmp.716,
	cmp	r3, r8	@ n, Channels
	str	r0, [r2, #36]	@ tmp166, <variable>.PreSample
	str	r0, [r1, #36]	@ tmp166, <variable>.PreSample
	add	r2, r1, #4	@ ivtmp.716, tmp171,
	bcc	.L252	@,
.L251:
	str	sl, [r9, #0]	@ BitPerSample, <variable>.BitPerSample
	str	r8, [r9, #4]	@ Channels, <variable>.Channels
	str	r4, [r9, #12]	@ inRate, <variable>.InRate
	str	r6, [r9, #16]	@ outRate, <variable>.OutRate
	str	r4, [r9, #8]	@ inRate, <variable>.AdjustInRate
	str	r9, [r5, #0]	@ pLinearSrc,* phLSRC
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}	@
.L260:
	mov	r7, #12	@ n.718,
.L238:
	movw	r3, #:lower16:.LANCHOR0	@ tmp163,
	movt	r3, #:upper16:.LANCHOR0	@ tmp163,
	ldr	lr, [r3, r7, asl #2]	@ tmp164, g_s32IvtSfTab
	str	lr, [r9, #32]	@ tmp164, <variable>.IvtSFFactor
	b	.L250	@
	.fnend
	.size	LSRC_Create, .-LSRC_Create
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	g_s32IvtSfTab, %object
	.size	g_s32IvtSfTab, 52
g_s32IvtSfTab:
	.word	134217
	.word	97391
	.word	89478
	.word	67109
	.word	48696
	.word	44739
	.word	33554
	.word	24348
	.word	22369
	.word	12174
	.word	11185
	.word	6087
	.word	5592
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
