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
	.file	"aoe_aip.c"
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
@ -DKBUILD_BASENAME=KBUILD_STR(aoe_aip)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_adsp) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD drivers/msp/adsp/adsp_v1_1/./hifi/aoe/src/aip/.aoe_aip.o.d
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/drivers/msp/adsp/adsp_v1_1/./hifi/aoe/src/aip/aoe_aip.c
@ -mlittle-endian -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -marm -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/adsp/adsp_v1_1/./hifi/aoe/src/aip/aoe_aip.o -O2 -Wall -Wundef
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
	.global	AIPGetCunrStatus
	.type	AIPGetCunrStatus, %function
AIPGetCunrStatus:
	.fnstart
.LFB857:
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
	movw	r1, #:lower16:.LANCHOR0	@ tmp137,
	add	r0, r0, #8	@ tmp138, Id,
	movt	r1, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r1, r0, asl #2]	@ state, g_stAipRm.hAip
	cmp	r3, #0	@ state,
	moveq	r0, #3	@ D.14899,
	ldrne	r0, [r3, #208]	@ D.14899, <variable>.CurStatus
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	AIPGetCunrStatus, .-AIPGetCunrStatus
	.align	2
	.global	AIPRouteResampler
	.type	AIPRouteResampler, %function
AIPRouteResampler:
	.fnstart
.LFB858:
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
	cmp	r0, #32000	@ u32InSampleRate,
	beq	.L6	@,
	bhi	.L8	@,
	movw	r3, #12000	@ tmp136,
	cmp	r0, r3	@ u32InSampleRate, tmp136
.L6:
	mov	r0, #1	@ tmp149,
	str	r0, [r1, #0]	@ tmp149,* pu32Resampler
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
.L8:
	mov	r0, #1	@ tmp149,
	str	r0, [r1, #0]	@ tmp149,* pu32Resampler
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	AIPRouteResampler, .-AIPRouteResampler
	.align	2
	.global	AIPIsChnAttrChange
	.type	AIPIsChnAttrChange, %function
AIPIsChnAttrChange:
	.fnstart
.LFB875:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp174,
	add	r2, r0, #8	@ tmp176, Id,
	movt	r3, #:upper16:.LANCHOR0	@ tmp174,
	ldr	r2, [r3, r2, asl #2]	@ state, g_stAipRm.hAip
	ldr	r3, [r3, r0, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	ldr	r4, [r2, #124]	@ tmp177,
	ldr	ip, [r3, #0]	@ tmp179,* pAipReg
	and	r1, r4, #3	@ D.15421, tmp177,
	ldr	r5, [r2, #124]	@ tmp181,
	and	r0, ip, #3	@ D.15422, tmp179,
	ldr	r7, [r3, #0]	@ tmp183,* pAipReg
	subs	r4, r1, r0	@ tmp188, D.15421, D.15422
	movne	r4, #1	@ tmp188
	ldr	ip, [r2, #124]	@ tmp189,
	ldr	r0, [r3, #0]	@ tmp191,* pAipReg
	ubfx	r6, r5, #2, #2	@ D.15424, tmp181,,
	ubfx	r1, r7, #2, #2	@ D.15425, tmp183,,
	ldr	r5, [r2, #124]	@ tmp195,
	cmp	r6, r1	@ D.15424, D.15425
	moveq	r1, r4	@, isChange, tmp188
	addne	r1, r4, #1	@,, isChange, tmp188
	ldr	r7, [r3, #0]	@ tmp197,* pAipReg
	ubfx	r6, ip, #4, #4	@ D.15427, tmp189,,
	ubfx	r0, r0, #4, #4	@ D.15428, tmp191,,
	ldr	r4, [r2, #124]	@ tmp201,
	cmp	r6, r0	@ D.15427, D.15428
	moveq	ip, r1	@, isChange.372, isChange
	addne	ip, r1, #1	@,, isChange.372, isChange
	ldr	r6, [r3, #0]	@ tmp203,* pAipReg
	ubfx	r5, r5, #8, #2	@ D.15430, tmp195,,
	ubfx	r0, r7, #8, #2	@ D.15431, tmp197,,
	ubfx	r4, r4, #10, #1	@ D.15433, tmp201,,
	cmp	r5, r0	@ D.15430, D.15431
	moveq	r0, ip	@, isChange.373, isChange.372
	addne	r0, ip, #1	@,, isChange.373, isChange.372
	ubfx	r1, r6, #10, #1	@ D.15434, tmp203,,
	ldr	ip, [r2, #136]	@ D.15436, <variable>.stBackRegs.AIP_SRC_ATTR_EXT.u32
	cmp	r4, r1	@ D.15433, D.15434
	moveq	r6, r0	@, isChange.374, isChange.373
	addne	r6, r0, #1	@,, isChange.374, isChange.373
	ldr	r7, [r3, #12]	@ D.15437, <variable>.AIP_SRC_ATTR_EXT.u32
	ldr	r0, [r2, #140]	@ D.15439, <variable>.stBackRegs.AIP_BUF_ADDR
	ldr	r5, [r3, #16]	@ D.15440, <variable>.AIP_BUF_ADDR
	cmp	ip, r7	@ D.15436, D.15437
	moveq	r1, r6	@, isChange.375, isChange.374
	addne	r1, r6, #1	@,, isChange.375, isChange.374
	ldr	r7, [r2, #144]	@ D.15442, <variable>.stBackRegs.AIP_BUF_SIZE.u32
	cmp	r0, r5	@ D.15439, D.15440
	moveq	r4, r1	@, isChange.376, isChange.375
	addne	r4, r1, #1	@,, isChange.376, isChange.375
	ldr	r6, [r3, #20]	@ D.15443, <variable>.AIP_BUF_SIZE.u32
	ldr	r0, [r2, #128]	@ tmp213,
	ldr	r1, [r3, #4]	@ tmp215,
	cmp	r7, r6	@ D.15442, D.15443
	moveq	ip, r4	@, isChange.377, isChange.376
	addne	ip, r4, #1	@,, isChange.377, isChange.376
	and	r5, r0, #3	@ D.15445, tmp213,
	ldr	r7, [r2, #128]	@ tmp219,
	and	r1, r1, #3	@ D.15446, tmp215,
	ldr	r4, [r3, #4]	@ tmp221,
	cmp	r5, r1	@ D.15445, D.15446
	moveq	r0, ip	@, isChange.378, isChange.377
	addne	r0, ip, #1	@,, isChange.378, isChange.377
	ldr	r6, [r2, #128]	@ tmp225,
	ldr	r1, [r3, #4]	@ tmp227,
	ubfx	r7, r7, #2, #2	@ D.15448, tmp219,,
	ldr	ip, [r2, #128]	@ tmp231,
	ubfx	r5, r4, #2, #2	@ D.15449, tmp221,,
	ldr	r4, [r3, #4]	@ tmp233,
	cmp	r7, r5	@ D.15448, D.15449
	moveq	r5, r0	@, isChange.379, isChange.378
	addne	r5, r0, #1	@,, isChange.379, isChange.378
	ubfx	r6, r6, #4, #4	@ D.15451, tmp225,,
	ldr	r0, [r2, #128]	@ tmp237,
	ubfx	r1, r1, #4, #4	@ D.15452, tmp227,,
	ldr	r2, [r3, #4]	@ tmp239,
	cmp	r6, r1	@ D.15451, D.15452
	moveq	r1, r5	@, isChange.380, isChange.379
	addne	r1, r5, #1	@,, isChange.380, isChange.379
	ubfx	ip, ip, #8, #2	@ D.15454, tmp231,,
	ubfx	r3, r4, #8, #2	@ D.15455, tmp233,,
	ubfx	r2, r2, #10, #6	@ D.15458, tmp239,,
	cmp	ip, r3	@ D.15454, D.15455
	moveq	r3, r1	@, isChange.381, isChange.380
	addne	r3, r1, #1	@,, isChange.381, isChange.380
	ubfx	r0, r0, #10, #6	@ D.15457, tmp237,,
	cmp	r0, r2	@ D.15457, D.15458
	moveq	r0, r3	@,, isChange.381
	addne	r0, r3, #1	@,,, isChange.381
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	AIPIsChnAttrChange, .-AIPIsChnAttrChange
	.align	2
	.global	AIPGetChnCmd
	.type	AIPGetChnCmd, %function
AIPGetChnCmd:
	.fnstart
.LFB886:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r3, [r3, r0, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	ldr	r2, [r3, #8]	@ D.15716,
	tst	r2, #8	@ D.15716,
	movne	r0, #4	@ eNewCmd,
	bne	.L18	@,
	ldr	r0, [r3, #8]	@ tmp142,
	and	r0, r0, #3	@ D.15720, tmp142,
	cmp	r0, #2	@ D.15720,
	beq	.L18	@,
	cmp	r0, #3	@ D.15720,
	beq	.L18	@,
	cmp	r0, #1	@ D.15720,
	movne	r0, #0	@, eNewCmd,
.L18:
	str	r0, [r1, #0]	@ eNewCmd,* newcmd
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	AIPGetChnCmd, .-AIPGetChnCmd
	.align	2
	.global	AIPAckChnCmd
	.type	AIPAckChnCmd, %function
AIPAckChnCmd:
	.fnstart
.LFB887:
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
	ldr	r3, [r3, r0, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	ldr	r2, [r3, #8]	@ D.15729,
	tst	r2, #8	@ D.15729,
	ldmnefd	sp, {fp, sp, pc}	@
	ldr	ip, [r3, #8]	@ tmp142,
	bfi	ip, r1, #4, #4	@ tmp142, Ack,,
	str	ip, [r3, #8]	@ tmp142,
	ldr	r1, [r3, #8]	@ tmp143,
	orr	r0, r1, #8	@ tmp145, tmp143,
	str	r0, [r3, #8]	@ tmp145,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	AIPAckChnCmd, .-AIPAckChnCmd
	.align	2
	.global	AIPUpdateChnState
	.type	AIPUpdateChnState, %function
AIPUpdateChnState:
	.fnstart
.LFB893:
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
	movw	r2, #:lower16:.LANCHOR0	@ tmp145,
	add	r3, r0, #8	@ tmp147, Id,
	movt	r2, #:upper16:.LANCHOR0	@ tmp145,
	ldr	r3, [r2, r3, asl #2]	@ state, g_stAipRm.hAip
	ldr	r2, [r2, r0, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	cmp	r3, #0	@ state,
	ldmeqfd	sp, {fp, sp, pc}	@
	mov	r0, #0	@ tmp148,
	str	r0, [r3, #212]	@ tmp148, <variable>.stGain.bLinearMode
	ldrb	r1, [r2, #36]	@ zero_extendqisi2	@ <variable>.AIP_EXT_CTRL.bits.volume_l, <variable>.AIP_EXT_CTRL.bits.volume_l
	strh	r1, [r3, #216]	@ movhi	@ <variable>.AIP_EXT_CTRL.bits.volume_l, <variable>.stGain.u16LGain
	ldrb	ip, [r2, #37]	@ zero_extendqisi2	@ <variable>.AIP_EXT_CTRL.bits.volume_r, <variable>.AIP_EXT_CTRL.bits.volume_r
	strh	ip, [r3, #218]	@ movhi	@ <variable>.AIP_EXT_CTRL.bits.volume_r, <variable>.stGain.u16RGain
	ldr	r0, [r2, #36]	@ D.15822,
	ubfx	r1, r0, #16, #1	@ tmp154, D.15822,,
	str	r1, [r3, #220]	@ tmp154, <variable>.bMute
	ldr	ip, [r2, #36]	@ tmp155,
	ubfx	r0, ip, #17, #3	@ D.15825, tmp155,,
	str	r0, [r3, #228]	@ D.15825, <variable>.u32ChannelMode
	ldr	r1, [r2, #8]	@ D.15827,
	tst	r1, #1610612736	@ D.15827,
	beq	.L32	@,
	ldr	ip, [r2, #8]	@ D.15834,
	and	r0, ip, #1610612736	@ tmp160, D.15834,
	cmp	r0, #536870912	@ tmp160,
	ldreq	r0, [r2, #8]	@ tmp161,
	ubfxeq	r0, r0, #24, #5	@ D.15838, tmp161,,
	rsbeq	r0, r0, #0	@ tmp163, D.15838
	streq	r0, [r3, #244]	@ tmp163, <variable>.s32UserSpeedAdjust
	ldr	r1, [r2, #0]	@ D.15841,* pAipReg
	ubfx	r2, r1, #11, #1	@ tmp165, D.15841,,
	str	r2, [r3, #28]	@ tmp165, <variable>.stAttr.Priority
	ldmfd	sp, {fp, sp, pc}	@
.L32:
	ldr	r1, [r2, #8]	@ tmp158,
	ubfx	ip, r1, #24, #5	@ D.15831, tmp158,,
	str	ip, [r3, #244]	@ D.15831, <variable>.s32UserSpeedAdjust
	ldr	r1, [r2, #0]	@ D.15841,* pAipReg
	ubfx	r2, r1, #11, #1	@ tmp165, D.15841,,
	str	r2, [r3, #28]	@ tmp165, <variable>.stAttr.Priority
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	AIPUpdateChnState, .-AIPUpdateChnState
	.align	2
	.global	AIP_GetChnStatus
	.type	AIP_GetChnStatus, %function
AIP_GetChnStatus:
	.fnstart
.LFB899:
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
	movw	ip, #:lower16:.LANCHOR0	@ tmp137,
	add	r0, r0, #8	@ tmp138, Id,
	movt	ip, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [ip, r0, asl #2]	@ D.15915, g_stAipRm.hAip
	cmp	r3, #0	@ D.15915,
	streq	r3, [r1, #0]	@ D.15915, <variable>.CurnStatus
	ldrne	r2, [r3, #208]	@ <variable>.CurStatus, <variable>.CurStatus
	strne	r2, [r1, #0]	@ <variable>.CurStatus, <variable>.CurnStatus
	ldrne	r3, [r3, #28]	@ <variable>.stAttr.Priority, <variable>.stAttr.Priority
	strne	r3, [r1, #4]	@ <variable>.stAttr.Priority, <variable>.Priority
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	AIP_GetChnStatus, .-AIP_GetChnStatus
	.align	2
	.global	AIP_UnderFlowCalc
	.type	AIP_UnderFlowCalc, %function
AIP_UnderFlowCalc:
	.fnstart
.LFB904:
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
	movw	r1, #:lower16:.LANCHOR0	@ tmp137,
	add	ip, r0, #8	@ tmp139, Id,
	movt	r1, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r2, [r1, ip, asl #2]	@ tmp140, g_stAipRm.hAip
	ldr	r3, [r1, r0, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	cmp	r2, #0	@ tmp140,
	ldrneh	r2, [r3, #54]	@ <variable>.AIP_FIFO_SIZE.bits.aip_fifo_underflow_cnt, <variable>.AIP_FIFO_SIZE.bits.aip_fifo_underflow_cnt
	addne	r2, r2, #1	@ tmp143, <variable>.AIP_FIFO_SIZE.bits.aip_fifo_underflow_cnt,
	uxthne	r2, r2	@ D.16029, tmp143
	strneh	r2, [r3, #54]	@ movhi	@ D.16029, <variable>.AIP_FIFO_SIZE.bits.aip_fifo_underflow_cnt
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	AIP_UnderFlowCalc, .-AIP_UnderFlowCalc
	.align	2
	.global	AIPFlushUnderFlowCalc
	.type	AIPFlushUnderFlowCalc, %function
AIPFlushUnderFlowCalc:
	.fnstart
.LFB905:
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
	movw	r1, #:lower16:.LANCHOR0	@ tmp135,
	movt	r1, #:upper16:.LANCHOR0	@ tmp135,
	mov	r2, #0	@ movhi	@,
	ldr	r3, [r1, r0, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	strh	r2, [r3, #54]	@ movhi	@, <variable>.AIP_FIFO_SIZE.bits.aip_fifo_underflow_cnt
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	AIPFlushUnderFlowCalc, .-AIPFlushUnderFlowCalc
	.align	2
	.global	AIPFlushChnFifo
	.type	AIPFlushChnFifo, %function
AIPFlushChnFifo:
	.fnstart
.LFB880:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #44
	sub	sp, sp, #44	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r4, r0	@ state, state
	ldr	r0, [r0, #192]	@ D.15600, <variable>.hRingOut
	cmp	r0, #0	@ D.15600,
	beq	.L44	@,
	sub	r1, fp, #56	@,,
	bl	RBUF_QueryInfo	@
	ldr	r0, [r4, #192]	@, <variable>.hRingOut
	ldr	r1, [fp, #-36]	@, stRbfFifoInfo.u32TotalDataSize
	bl	RBUF_ReadDataComplete	@
.L44:
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
	.fnend
	.size	AIPFlushChnFifo, .-AIPFlushChnFifo
	.align	2
	.global	AIPFlushChnRufIn
	.type	AIPFlushChnRufIn, %function
AIPFlushChnRufIn:
	.fnstart
.LFB879:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #44
	sub	sp, sp, #44	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r4, r0	@ state, state
	ldr	r0, [r0, #188]	@ D.15592, <variable>.hRingIn
	cmp	r0, #0	@ D.15592,
	beq	.L47	@,
	sub	r1, fp, #56	@,,
	bl	RBUF_QueryInfo	@
	ldr	r0, [r4, #188]	@, <variable>.hRingIn
	ldr	r1, [fp, #-36]	@, stRbfIn.u32TotalDataSize
	bl	RBUF_ReadDataComplete	@
.L47:
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
	.fnend
	.size	AIPFlushChnRufIn, .-AIPFlushChnRufIn
	.align	2
	.global	AIPCheckRbfOutFree
	.type	AIPCheckRbfOutFree, %function
AIPCheckRbfOutFree:
	.fnstart
.LFB864:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #44
	sub	sp, sp, #44	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r4, r1	@ blocksize, blocksize
	ldr	r0, [r0, #192]	@, <variable>.hRingOut
	sub	r1, fp, #56	@,,
	bl	RBUF_QueryInfo	@
	ldr	r3, [fp, #-28]	@ stRbfOut.u32TotalFreeSize, stRbfOut.u32TotalFreeSize
	cmp	r3, r4	@ stRbfOut.u32TotalFreeSize, blocksize
	bls	.L49	@,
	ldr	r1, [fp, #-36]	@ stRbfOut.u32TotalDataSize, stRbfOut.u32TotalDataSize
	ldr	r0, [fp, #-24]	@ stRbfOut.u32LatencySize, stRbfOut.u32LatencySize
	add	r2, r4, r1	@ tmp139, blocksize, stRbfOut.u32TotalDataSize
	cmp	r2, r0	@ tmp139, stRbfOut.u32LatencySize
	bhi	.L49	@,
.L50:
	mov	r0, r4	@, blocksize
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L49:
	mov	r4, #0	@ blocksize,
	b	.L50	@
	.fnend
	.size	AIPCheckRbfOutFree, .-AIPCheckRbfOutFree
	.align	2
	.global	AIP_ReadFiFoComplete
	.type	AIP_ReadFiFoComplete, %function
AIP_ReadFiFoComplete:
	.fnstart
.LFB903:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #40
	sub	sp, sp, #40	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r3, #:lower16:.LANCHOR0	@ tmp141,
	add	r2, r0, #8	@ tmp143, Id,
	movt	r3, #:upper16:.LANCHOR0	@ tmp141,
	ldr	r4, [r3, r2, asl #2]	@ D.16001, g_stAipRm.hAip
	ldr	r5, [r3, r0, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	cmp	r4, #0	@ D.16001,
	beq	.L55	@,
	ldr	r0, [r5, #4]	@ D.16004,
	tst	r0, #4194304	@ D.16004,
	beq	.L56	@,
	ldr	r0, [r4, #188]	@, <variable>.hRingIn
	bl	RBUF_ReadDataComplete	@
.L55:
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L56:
	ldr	r0, [r4, #192]	@, <variable>.hRingOut
	bl	RBUF_ReadDataComplete	@
	ldr	r0, [r4, #192]	@, <variable>.hRingOut
	sub	r1, fp, #56	@,,
	bl	RBUF_QueryInfo	@
	ldr	r1, [r4, #1024]	@, <variable>.OutFrameSize
	ldr	r2, [r4, #76]	@, <variable>.stAttr.u32OutSampleRate
	ldr	r0, [fp, #-36]	@, stBufInfo.u32TotalDataSize
	bl	UTIL_LatencyMs	@
	ldr	r1, [r5, #4]	@ tmp153,
	bfi	r1, r0, #16, #6	@ tmp153,,,
	str	r1, [r5, #4]	@ tmp153,
	b	.L55	@
	.fnend
	.size	AIP_ReadFiFoComplete, .-AIP_ReadFiFoComplete
	.align	2
	.global	AIP_QueryFiFoInfo
	.type	AIP_QueryFiFoInfo, %function
AIP_QueryFiFoInfo:
	.fnstart
.LFB902:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	add	r2, r0, #8	@ tmp141, Id,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	mov	ip, r1	@ pstBufInfo, pstBufInfo
	ldr	r2, [r3, r2, asl #2]	@ D.15968, g_stAipRm.hAip
	ldr	r3, [r3, r0, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	cmp	r2, #0	@ D.15968,
	beq	.L61	@,
	ldr	r0, [r3, #4]	@ D.15976,
	tst	r0, #4194304	@ D.15976,
	beq	.L63	@,
	ldr	lr, [r2, #208]	@ <variable>.CurStatus, <variable>.CurStatus
	cmp	lr, #1	@ <variable>.CurStatus,
	beq	.L64	@,
.L61:
	mov	r0, ip	@, pstBufInfo
	mov	r1, #36	@,
	bl	__memzero	@
	ldmfd	sp, {fp, sp, pc}	@
.L64:
	ldr	r0, [r2, #188]	@, <variable>.hRingIn
	bl	RBUF_QueryInfo	@
	ldmfd	sp, {fp, sp, pc}	@
.L63:
	ldr	r0, [r2, #192]	@, <variable>.hRingOut
	bl	RBUF_QueryInfo	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	AIP_QueryFiFoInfo, .-AIP_QueryFiFoInfo
	.align	2
	.global	AIPSwResetReg
	.type	AIPSwResetReg, %function
AIPSwResetReg:
	.fnstart
.LFB895:
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
	mov	r1, #64	@,
	mov	r4, r0	@ pAipReg, pAipReg
	bl	__memzero	@
	ldr	ip, [r4, #8]	@ tmp134,
	mov	r2, #121	@ tmp137,
	orr	r1, ip, #8	@ tmp139, tmp134,
	str	r1, [r4, #8]	@ tmp139,
	ldr	r0, [r4, #8]	@ tmp136,
	bfi	r0, r2, #8, #7	@ tmp136, tmp137,,
	str	r0, [r4, #8]	@ tmp136,
	ldr	r3, [r4, #0]	@ tmp138,* pAipReg
	bfc	r3, #10, #1	@ tmp138,,
	str	r3, [r4, #0]	@ tmp138,* pAipReg
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	AIPSwResetReg, .-AIPSwResetReg
	.align	2
	.global	AIP_Init
	.type	AIP_Init, %function
AIP_Init:
	.fnstart
.LFB896:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp142,
	movt	r4, #:upper16:.LANCHOR0	@ tmp142,
	mov	r6, r0	@ u32AipRegBase, u32AipRegBase
	mov	r5, #0	@ tmp144,
	str	r0, [r4, #0]	@ u32AipRegBase, g_stAipRm.hwAipReg
	bl	AIPSwResetReg	@
	add	r0, r6, #64	@ temp.689, u32AipRegBase,
	str	r5, [r4, #32]	@ tmp144, g_stAipRm.hAip
	str	r0, [r4, #4]	@ temp.689, g_stAipRm.hwAipReg
	bl	AIPSwResetReg	@
	add	r3, r6, #128	@ temp.691, u32AipRegBase,
	str	r5, [r4, #36]	@ tmp144, g_stAipRm.hAip
	str	r3, [r4, #8]	@ temp.691, g_stAipRm.hwAipReg
	mov	r0, r3	@, temp.691
	bl	AIPSwResetReg	@
	add	ip, r6, #192	@ temp.693, u32AipRegBase,
	str	r5, [r4, #40]	@ tmp144, g_stAipRm.hAip
	mov	r0, ip	@, temp.693
	str	ip, [r4, #12]	@ temp.693, g_stAipRm.hwAipReg
	bl	AIPSwResetReg	@
	add	r2, r6, #256	@ temp.695, u32AipRegBase,
	str	r5, [r4, #44]	@ tmp144, g_stAipRm.hAip
	mov	r0, r2	@, temp.695
	str	r2, [r4, #16]	@ temp.695, g_stAipRm.hwAipReg
	bl	AIPSwResetReg	@
	add	r1, r6, #320	@ temp.697, u32AipRegBase,
	str	r5, [r4, #48]	@ tmp144, g_stAipRm.hAip
	mov	r0, r1	@, temp.697
	str	r1, [r4, #20]	@ temp.697, g_stAipRm.hwAipReg
	bl	AIPSwResetReg	@
	add	r3, r6, #384	@ temp.699, u32AipRegBase,
	add	r6, r6, #448	@ D.15891, u32AipRegBase,
	str	r3, [r4, #24]	@ temp.699, g_stAipRm.hwAipReg
	mov	r0, r3	@, temp.699
	str	r5, [r4, #52]	@ tmp144, g_stAipRm.hAip
	bl	AIPSwResetReg	@
	mov	r0, r6	@, D.15891
	str	r5, [r4, #56]	@ tmp144, g_stAipRm.hAip
	str	r6, [r4, #28]	@ D.15891, g_stAipRm.hwAipReg
	bl	AIPSwResetReg	@
	str	r5, [r4, #60]	@ tmp144, g_stAipRm.hAip
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	AIP_Init, .-AIP_Init
	.align	2
	.global	AIP_ReadFiFoData
	.type	AIP_ReadFiFoData, %function
AIP_ReadFiFoData:
	.fnstart
.LFB901:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #40
	sub	sp, sp, #40	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r4, #:lower16:.LANCHOR0	@ tmp143,
	add	r3, r0, #8	@ tmp144, Id,
	movt	r4, #:upper16:.LANCHOR0	@ tmp143,
	mov	r6, r0	@ Id, Id
	ldr	r5, [r4, r3, asl #2]	@ D.15941, g_stAipRm.hAip
	cmp	r5, #0	@ D.15941,
	moveq	r7, r5	@ ReadBytes, D.15941
	beq	.L71	@,
	ldr	r0, [r5, #192]	@, <variable>.hRingOut
	bl	RBUF_ReadData	@
	sub	r1, fp, #64	@,,
	ldr	r4, [r4, r6, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	mov	r7, r0	@ ReadBytes,
	ldr	r0, [r5, #192]	@, <variable>.hRingOut
	bl	RBUF_QueryInfo	@
	ldr	r1, [r5, #1024]	@, <variable>.OutFrameSize
	ldr	r2, [r5, #76]	@, <variable>.stAttr.u32OutSampleRate
	ldr	r0, [fp, #-44]	@, stBufInfo.u32TotalDataSize
	bl	UTIL_LatencyMs	@
	ldr	r1, [r4, #4]	@ tmp154,
	bfi	r1, r0, #16, #6	@ tmp154,,,
	str	r1, [r4, #4]	@ tmp154,
.L71:
	mov	r0, r7	@, ReadBytes
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
	.fnend
	.size	AIP_ReadFiFoData, .-AIP_ReadFiFoData
	.align	2
	.global	AIP_GetChnAttr
	.type	AIP_GetChnAttr, %function
AIP_GetChnAttr:
	.fnstart
.LFB900:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp136,
	add	r2, r0, #8	@ tmp137, Id,
	movt	r3, #:upper16:.LANCHOR0	@ tmp136,
	ldr	r3, [r3, r2, asl #2]	@ D.15926, g_stAipRm.hAip
	cmp	r3, #0	@ D.15926,
	ldmeqfd	sp, {fp, sp, pc}	@
	mov	r0, r1	@, pstAttr
	mov	r2, #124	@,
	mov	r1, r3	@, D.15926
	bl	memcpy	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	AIP_GetChnAttr, .-AIP_GetChnAttr
	.align	2
	.global	AIPSpeedAdjProc
	.type	AIPSpeedAdjProc, %function
AIPSpeedAdjProc:
	.fnstart
.LFB885:
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
	mov	r7, r0	@ state, state
	ldr	r0, [r0, #196]	@ D.15687, <variable>.hADJ
	mov	r4, r1	@ pstFrame, pstFrame
	cmp	r0, #0	@ D.15687,
	ldmeqfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	bl	LSRC_CheckDoSRC	@
	cmp	r0, #0	@,
	ldmeqfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	ldr	r6, [r4, #12]	@ uPcmSamplesPerFrame, <variable>.u32SamplesPerFrame
	bl	AOE_GetWKBuf	@
	ldr	r1, [r4, #0]	@, <variable>.pDataBuf
	mov	r3, r6	@, uPcmSamplesPerFrame
	mov	r5, r0	@ D.15694,
	ldr	r0, [r7, #196]	@, <variable>.hADJ
	mov	r2, r5	@, D.15694
	bl	LSRC_ProcessFrame	@
	ldr	r1, [r4, #16]	@, <variable>.u32BitPerSample
	str	r5, [r4, #0]	@ D.15694, <variable>.pDataBuf
	str	r0, [r4, #12]	@, <variable>.u32SamplesPerFrame
	ldr	r0, [r4, #20]	@, <variable>.u32Channels
	bl	UTIL_CalcFrameSize	@
	ldr	r1, [r4, #12]	@ <variable>.u32SamplesPerFrame, <variable>.u32SamplesPerFrame
	mul	r3, r1, r0	@ tmp147, <variable>.u32SamplesPerFrame,
	str	r3, [r4, #8]	@ tmp147, <variable>.u32DataBytes
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	AIPSpeedAdjProc, .-AIPSpeedAdjProc
	.align	2
	.global	AIPCalcOutLatencyThdSize
	.type	AIPCalcOutLatencyThdSize, %function
AIPCalcOutLatencyThdSize:
	.fnstart
.LFB863:
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
	mov	r4, r0	@ state, state
	ldr	r1, [r4, #68]	@, <variable>.stAttr.u32OutBitPerSample
	ldr	r0, [r0, #72]	@, <variable>.stAttr.u32OutChannels
	bl	UTIL_CalcFrameSize	@
	ldr	r1, [r4, #76]	@ <variable>.stAttr.u32OutSampleRate, <variable>.stAttr.u32OutSampleRate
	ldr	ip, [r4, #84]	@ <variable>.stAttr.u32OutLatencyThdMs, <variable>.stAttr.u32OutLatencyThdMs
	movw	r3, #:lower16:274877907	@ tmp145,
	movt	r3, #:upper16:274877907	@ tmp145,
	mul	r2, r1, ip	@ tmp139, <variable>.stAttr.u32OutSampleRate, <variable>.stAttr.u32OutLatencyThdMs
	umull	r1, ip, r3, r2	@, tmp143, tmp145, tmp139
	mov	r3, ip, lsr #6	@ tmp142, tmp143,
	mul	r0, r3, r0	@, tmp142,
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	AIPCalcOutLatencyThdSize, .-AIPCalcOutLatencyThdSize
	.align	2
	.global	AIPCalcProcBlockSize
	.type	AIPCalcProcBlockSize, %function
AIPCalcProcBlockSize:
	.fnstart
.LFB862:
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
	mov	r4, r0	@ state, state
	ldr	r1, [r4, #68]	@, <variable>.stAttr.u32OutBitPerSample
	ldr	r0, [r0, #72]	@, <variable>.stAttr.u32OutChannels
	bl	UTIL_CalcFrameSize	@
	ldr	r1, [r4, #76]	@ <variable>.stAttr.u32OutSampleRate, <variable>.stAttr.u32OutSampleRate
	movw	r2, #:lower16:274877907	@ tmp145,
	movt	r2, #:upper16:274877907	@ tmp145,
	add	r3, r1, r1, asl #2	@, tmp143, <variable>.stAttr.u32OutSampleRate, <variable>.stAttr.u32OutSampleRate,
	umull	r1, ip, r2, r3	@, tmp144, tmp145, tmp143
	mov	r3, ip, lsr #6	@ samples, tmp144,
	tst	r3, #3	@ samples,
	addne	r3, r3, #3	@ tmp147, samples,
	movne	r3, r3, lsr #2	@ D.14978, tmp147,
	movne	r3, r3, asl #2	@ samples, D.14978,
	mul	r0, r0, r3	@, framesize, samples
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	AIPCalcProcBlockSize, .-AIPCalcProcBlockSize
	.align	2
	.global	AIPResamplePcmData
	.type	AIPResamplePcmData, %function
AIPResamplePcmData:
	.fnstart
.LFB884:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #20
	sub	sp, sp, #20	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r5, r0	@ state, state
	mov	r4, r1	@ pstFrame, pstFrame
	bl	AOE_GetWKBuf	@
	mov	r6, r0	@ pu32ResampeOutBuf,
	ldr	r0, [r5, #200]	@ D.15663, <variable>.hSRC
	ldr	r5, [r5, #76]	@ outRate, <variable>.stAttr.u32OutSampleRate
	cmp	r0, #0	@ D.15663,
	beq	.L86	@,
	ldr	ip, [r4, #24]	@ <variable>.u32SampleRate, <variable>.u32SampleRate
	mov	r2, r6	@, pu32ResampeOutBuf
	ldr	r1, [r4, #0]	@ <variable>.pDataBuf, <variable>.pDataBuf
	mov	lr, #1	@ tmp145,
	ldr	r3, [r4, #12]	@ <variable>.u32SamplesPerFrame, <variable>.u32SamplesPerFrame
	stmib	sp, {r5, lr}	@ phole stm
	str	ip, [sp, #0]	@ <variable>.u32SampleRate,
	bl	ResamplerProcessFrame	@
.L86:
	str	r0, [r4, #12]	@ prephitmp.832, <variable>.u32SamplesPerFrame
	ldr	r1, [r4, #16]	@, <variable>.u32BitPerSample
	str	r6, [r4, #0]	@ pu32ResampeOutBuf, <variable>.pDataBuf
	str	r5, [r4, #24]	@ outRate, <variable>.u32SampleRate
	ldr	r0, [r4, #20]	@, <variable>.u32Channels
	bl	UTIL_CalcFrameSize	@
	ldr	r1, [r4, #12]	@ <variable>.u32SamplesPerFrame, <variable>.u32SamplesPerFrame
	mul	r3, r1, r0	@ tmp149, <variable>.u32SamplesPerFrame,
	str	r3, [r4, #8]	@ tmp149, <variable>.u32DataBytes
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
	.fnend
	.size	AIPResamplePcmData, .-AIPResamplePcmData
	.align	2
	.global	AIPFadePcmData
	.type	AIPFadePcmData, %function
AIPFadePcmData:
	.fnstart
.LFB883:
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
	mov	r5, r0	@ state, state
	ldr	r0, [r0, #204]	@ D.15646, <variable>.hFADE
	mov	r4, r1	@ pstFrame, pstFrame
	cmp	r0, #0	@ D.15646,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	ldr	r2, [r4, #16]	@, <variable>.u32BitPerSample
	ldr	r1, [r1, #24]	@, <variable>.u32SampleRate
	ldr	r3, [r4, #20]	@, <variable>.u32Channels
	bl	FADE_Flush	@
	ldr	r0, [r5, #204]	@, <variable>.hFADE
	ldr	r2, [r4, #12]	@, <variable>.u32SamplesPerFrame
	ldr	r1, [r4, #0]	@, <variable>.pDataBuf
	bl	FADE_InProcess	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	AIPFadePcmData, .-AIPFadePcmData
	.align	2
	.global	AIPWriteMuteFrame
	.type	AIPWriteMuteFrame, %function
AIPWriteMuteFrame:
	.fnstart
.LFB882:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #44
	sub	sp, sp, #44	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	ldr	r5, [r0, #1024]	@ <variable>.OutFrameSize, <variable>.OutFrameSize
	ldr	r3, [r0, #1020]	@ <variable>.OutBlockSize, <variable>.OutBlockSize
	mov	r4, r0	@ state, state
	add	r5, r5, r3	@ u32Size, <variable>.OutFrameSize, <variable>.OutBlockSize
	bl	AOE_GetWKBuf	@
	cmp	r5, #0	@ u32Size,
	mov	r6, r0	@ u8Data,
	bne	.L95	@,
.L92:
	ldr	r0, [r4, #192]	@ D.15636, <variable>.hRingOut
	cmp	r0, #0	@ D.15636,
	bne	.L96	@,
.L94:
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L96:
	sub	r1, fp, #64	@,,
	bl	RBUF_QueryInfo	@
	ldr	r0, [fp, #-36]	@ stRbfFifoInfo.u32TotalFreeSize, stRbfFifoInfo.u32TotalFreeSize
	cmp	r5, r0	@ u32Size, stRbfFifoInfo.u32TotalFreeSize
	bcs	.L94	@,
	ldr	r0, [r4, #192]	@, <variable>.hRingOut
	mov	r1, r6	@, u8Data
	mov	r2, r5	@, u32Size
	bl	RBUF_WriteData	@
	b	.L94	@
.L95:
	mov	r1, r5	@, u32Size
	bl	__memzero	@
	b	.L92	@
	.fnend
	.size	AIPWriteMuteFrame, .-AIPWriteMuteFrame
	.global	__aeabi_uidiv
	.align	2
	.global	AIPDmaLeftFrame
	.type	AIPDmaLeftFrame, %function
AIPDmaLeftFrame:
	.fnstart
.LFB869:
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
	ldr	r1, [r0, #1020]	@, <variable>.OutBlockSize
	mov	r4, r0	@ state, state
	bl	AIPCheckRbfOutFree	@
	cmp	r0, #0	@,
	ldmeqfd	sp, {r3, r4, fp, sp, pc}	@
	add	r1, r4, #252	@, state,
	ldr	r2, [r4, #1020]	@, <variable>.OutBlockSize
	ldr	r0, [r4, #192]	@, <variable>.hRingOut
	bl	RBUF_WriteData	@
	ldr	r1, [r4, #1024]	@, <variable>.OutFrameSize
	ldr	r0, [r4, #1020]	@, <variable>.OutBlockSize
	bl	__aeabi_uidiv	@
	ldr	r1, [r4, #248]	@ <variable>.OutputLeftSamples, <variable>.OutputLeftSamples
	rsb	r3, r0, r1	@ tmp144,, <variable>.OutputLeftSamples
	str	r3, [r4, #248]	@ tmp144, <variable>.OutputLeftSamples
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	AIPDmaLeftFrame, .-AIPDmaLeftFrame
	.align	2
	.global	AIPDmaFrame2FiFo
	.type	AIPDmaFrame2FiFo, %function
AIPDmaFrame2FiFo:
	.fnstart
.LFB867:
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
	ldr	r3, [r0, #1024]	@ <variable>.OutFrameSize, <variable>.OutFrameSize
	ldr	r2, [r0, #248]	@ <variable>.OutputLeftSamples, <variable>.OutputLeftSamples
	mov	r4, r0	@ state, state
	mov	r7, r1	@ pstFrame, pstFrame
	ldr	r6, [r0, #1020]	@ block_size, <variable>.OutBlockSize
	mul	r3, r2, r3	@ left_size, <variable>.OutputLeftSamples, <variable>.OutFrameSize
	cmp	r3, #0	@ left_size,
	bne	.L109	@,
.L101:
	cmp	r6, #0	@ block_size,
	moveq	r5, r6	@ block_size.941, block_size
	beq	.L103	@,
	ldr	r5, [r7, #8]	@ block_size.941, <variable>.u32DataBytes
	cmp	r6, r5	@ block_size, block_size.941
	movls	r5, r6	@ block_size.941, block_size
	bhi	.L110	@,
.L105:
	ldr	r0, [r4, #192]	@, <variable>.hRingOut
	mov	r2, r5	@, block_size.941
	ldr	r1, [r7, #0]	@, <variable>.pDataBuf
	bl	RBUF_WriteData	@
.L103:
	ldr	r6, [r7, #8]	@ <variable>.u32DataBytes, <variable>.u32DataBytes
	subs	r6, r6, r5	@ left_size.943, <variable>.u32DataBytes, block_size.941
	bne	.L111	@,
	mov	r0, r6	@, left_size.943
	ldr	r1, [r4, #1024]	@, <variable>.OutFrameSize
	bl	__aeabi_uidiv	@
	str	r0, [r4, #248]	@, <variable>.OutputLeftSamples
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L111:
	ldr	r1, [r7, #0]	@ <variable>.pDataBuf, <variable>.pDataBuf
	mov	r2, r6	@, left_size.943
	add	r0, r4, #252	@, state,
	add	r1, r5, r1	@, block_size.941, <variable>.pDataBuf
	bl	memcpy	@
	mov	r0, r6	@, left_size.943
	ldr	r1, [r4, #1024]	@, <variable>.OutFrameSize
	bl	__aeabi_uidiv	@
	str	r0, [r4, #248]	@, <variable>.OutputLeftSamples
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L110:
	cmp	r5, #0	@ block_size.941,
	moveq	r6, r5	@ left_size.943, block_size.941
	bne	.L105	@,
	mov	r0, r6	@, left_size.943
	ldr	r1, [r4, #1024]	@, <variable>.OutFrameSize
	bl	__aeabi_uidiv	@
	str	r0, [r4, #248]	@, <variable>.OutputLeftSamples
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L109:
	add	r1, r4, #252	@, state,
	mov	r2, r3	@, left_size
	ldr	r0, [r0, #192]	@, <variable>.hRingOut
	rsb	r6, r3, r6	@ block_size, left_size, block_size
	bl	RBUF_WriteData	@
	b	.L101	@
	.fnend
	.size	AIPDmaFrame2FiFo, .-AIPDmaFrame2FiFo
	.align	2
	.global	AIPFlushChnCtx
	.type	AIPFlushChnCtx, %function
AIPFlushChnCtx:
	.fnstart
.LFB878:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #44
	sub	sp, sp, #44	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r4, r0	@ state, state
	ldr	r0, [r0, #200]	@ D.15573, <variable>.hSRC
	cmp	r0, #0	@ D.15573,
	bne	.L118	@,
.L113:
	ldr	r0, [r4, #196]	@ D.15576, <variable>.hADJ
	cmp	r0, #0	@ D.15576,
	bne	.L119	@,
.L114:
	ldr	r0, [r4, #204]	@ D.15579, <variable>.hFADE
	mov	r3, #0	@ tmp138,
	str	r3, [r4, #248]	@ tmp138, <variable>.OutputLeftSamples
	cmp	r0, r3	@ D.15579,
	bne	.L120	@,
.L115:
	ldr	r0, [r4, #1036]	@ <variable>.bAlsa, <variable>.bAlsa
	cmp	r0, #0	@ <variable>.bAlsa,
	beq	.L116	@,
	ldr	r0, [r4, #192]	@, <variable>.hRingOut
	sub	r1, fp, #56	@,,
	bl	RBUF_QueryInfo	@
	ldr	r0, [r4, #192]	@, <variable>.hRingOut
	ldr	r1, [fp, #-36]	@, stRbfFiFoInfo.u32TotalDataSize
	bl	RBUF_ReadDataComplete	@
.L116:
	ldr	r3, [r4, #1040]	@ <variable>.Id, <variable>.Id
	movw	ip, #:lower16:.LANCHOR0	@ tmp144,
	movt	ip, #:upper16:.LANCHOR0	@ tmp144,
	mov	r2, #0	@ movhi	@,
	ldr	r1, [ip, r3, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	strh	r2, [r1, #54]	@ movhi	@, <variable>.AIP_FIFO_SIZE.bits.aip_fifo_underflow_cnt
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L120:
	mov	r1, #1	@,
	mov	r2, #8	@,
	bl	FADE_Active	@
	b	.L115	@
.L119:
	bl	LSRC_Flush	@
	b	.L114	@
.L118:
	bl	ResampleFlush	@
	b	.L113	@
	.fnend
	.size	AIPFlushChnCtx, .-AIPFlushChnCtx
	.align	2
	.global	AIPFlushChn
	.type	AIPFlushChn, %function
AIPFlushChn:
	.fnstart
.LFB881:
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
	tst	r1, #1	@ type,
	mov	r4, r1	@ type, type
	mov	r5, r0	@ state, state
	bne	.L126	@,
.L122:
	tst	r4, #2	@ type,
	bne	.L127	@,
	tst	r4, #4	@ type,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
.L128:
	mov	r0, r5	@, state
	bl	AIPFlushChnFifo	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L127:
	mov	r0, r5	@, state
	bl	AIPFlushChnRufIn	@
	tst	r4, #4	@ type,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	b	.L128	@
.L126:
	bl	AIPFlushChnCtx	@
	b	.L122	@
	.fnend
	.size	AIPFlushChn, .-AIPFlushChn
	.align	2
	.global	AIPDestroyChn
	.type	AIPDestroyChn, %function
AIPDestroyChn:
	.fnstart
.LFB877:
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
	ldr	r0, [r4, #188]	@ D.15554, <variable>.hRingIn
	mov	r3, #0	@ tmp140,
	str	r3, [r4, #208]	@ tmp140, <variable>.CurStatus
	cmp	r0, r3	@ D.15554,
	bne	.L137	@,
	ldr	r0, [r4, #192]	@ D.15557, <variable>.hRingOut
	cmp	r0, #0	@ D.15557,
	bne	.L138	@,
.L132:
	ldr	r0, [r4, #204]	@ D.15560, <variable>.hFADE
	cmp	r0, #0	@ D.15560,
	bne	.L139	@,
.L133:
	ldr	r0, [r4, #196]	@ D.15563, <variable>.hADJ
	cmp	r0, #0	@ D.15563,
	bne	.L140	@,
.L134:
	ldr	r0, [r4, #200]	@ D.15566, <variable>.hSRC
	cmp	r0, #0	@ D.15566,
	bne	.L141	@,
.L135:
	mov	r1, r4	@, inst
	mov	r0, #17	@,
	bl	HI_ADSP_FREE	@
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L141:
	bl	ResamplerFree	@
	mov	r1, r4	@, inst
	mov	r0, #17	@,
	bl	HI_ADSP_FREE	@
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
.L137:
	bl	RBUF_Destroy	@
	ldr	r0, [r4, #192]	@ D.15557, <variable>.hRingOut
	cmp	r0, #0	@ D.15557,
	beq	.L132	@,
.L138:
	bl	RBUF_Destroy	@
	ldr	r0, [r4, #204]	@ D.15560, <variable>.hFADE
	cmp	r0, #0	@ D.15560,
	beq	.L133	@,
.L139:
	bl	FADE_Destroy	@
	ldr	r0, [r4, #196]	@ D.15563, <variable>.hADJ
	cmp	r0, #0	@ D.15563,
	beq	.L134	@,
.L140:
	bl	LSRC_Destroy	@
	ldr	r0, [r4, #200]	@ D.15566, <variable>.hSRC
	cmp	r0, #0	@ D.15566,
	beq	.L135	@,
	b	.L141	@
	.fnend
	.size	AIPDestroyChn, .-AIPDestroyChn
	.align	2
	.global	AIP_DeInit
	.type	AIP_DeInit, %function
AIP_DeInit:
	.fnstart
.LFB897:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp133,
	movt	r4, #:upper16:.LANCHOR0	@ tmp133,
	mov	r5, #0	@ tmp136,
	ldr	r0, [r4, #32]	@, g_stAipRm.hAip
	bl	AIPDestroyChn	@
	ldr	r0, [r4, #36]	@, g_stAipRm.hAip
	str	r5, [r4, #32]	@ tmp136, g_stAipRm.hAip
	bl	AIPDestroyChn	@
	ldr	r0, [r4, #40]	@, g_stAipRm.hAip
	str	r5, [r4, #36]	@ tmp136, g_stAipRm.hAip
	bl	AIPDestroyChn	@
	ldr	r0, [r4, #44]	@, g_stAipRm.hAip
	str	r5, [r4, #40]	@ tmp136, g_stAipRm.hAip
	bl	AIPDestroyChn	@
	ldr	r0, [r4, #48]	@, g_stAipRm.hAip
	str	r5, [r4, #44]	@ tmp136, g_stAipRm.hAip
	bl	AIPDestroyChn	@
	ldr	r0, [r4, #52]	@, g_stAipRm.hAip
	str	r5, [r4, #48]	@ tmp136, g_stAipRm.hAip
	bl	AIPDestroyChn	@
	ldr	r0, [r4, #56]	@, g_stAipRm.hAip
	str	r5, [r4, #52]	@ tmp136, g_stAipRm.hAip
	bl	AIPDestroyChn	@
	ldr	r0, [r4, #60]	@, g_stAipRm.hAip
	str	r5, [r4, #56]	@ tmp136, g_stAipRm.hAip
	bl	AIPDestroyChn	@
	str	r5, [r4, #60]	@ tmp136, g_stAipRm.hAip
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	AIP_DeInit, .-AIP_DeInit
	.align	2
	.global	AIPGetRbfInAttr
	.type	AIPGetRbfInAttr, %function
AIPGetRbfInAttr:
	.fnstart
.LFB873:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp159,
	movt	r3, #:upper16:.LANCHOR0	@ tmp159,
	mov	r4, r1	@ pstChnAttr, pstChnAttr
	ldr	r5, [r3, r0, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	add	r0, r1, #8	@, pstChnAttr,
	ldr	r1, [r5, #0]	@ tmp160,* pAipReg
	and	r1, r1, #3	@, tmp160,
	bl	AOE_REG_ReadBitDepth	@
	cmp	r0, #0	@,
	beq	.L151	@,
.L145:
	mvn	r0, #0	@ D.15347,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L151:
	ldr	r2, [r5, #0]	@ tmp163,* pAipReg
	add	r0, r4, #12	@, pstChnAttr,
	ubfx	r1, r2, #2, #2	@, tmp163,,
	bl	AOE_REG_ReadChannel	@
	cmp	r0, #0	@,
	bne	.L145	@,
	ldr	ip, [r5, #0]	@ tmp166,* pAipReg
	add	r0, r4, #16	@, pstChnAttr,
	ubfx	r1, ip, #4, #4	@, tmp166,,
	bl	AOE_REG_ReadSampelRate	@
	cmp	r0, #0	@,
	beq	.L146	@,
	ldr	lr, [r5, #0]	@ D.15360,* pAipReg
	and	r0, lr, #240	@ tmp169, D.15360,
	cmp	r0, #240	@ tmp169,
	beq	.L152	@,
.L146:
	ldr	r1, [r5, #0]	@ tmp176,* pAipReg
	add	r0, r4, #20	@, pstChnAttr,
	ubfx	r1, r1, #8, #2	@, tmp176,,
	bl	AOE_REG_ReadDataFormat	@
	cmp	r0, #0	@,
	bne	.L145	@,
	ldr	ip, [r5, #0]	@ tmp179,* pAipReg
	ldr	r1, [r4, #8]	@, <variable>.u32InBitPerSample
	ubfx	lr, ip, #11, #1	@ D.15381, tmp179,,
	ldr	r0, [r4, #12]	@, <variable>.u32InChannels
	str	lr, [r4, #28]	@ D.15381, <variable>.Priority
	bl	UTIL_CalcFrameSize	@
	mov	ip, r0	@ u32FrameSize,
	mov	r0, #1	@ tmp183,
	str	r0, [r4, #32]	@ tmp183, <variable>.stRbfInAttr.bExtMem
	ldr	r1, [r5, #16]	@ D.15384, <variable>.AIP_BUF_ADDR
	str	r1, [r4, #36]	@ D.15384, <variable>.stRbfInAttr.uBufAddr
	ldr	r2, [r5, #20]	@ tmp184,
	ubfx	r3, r2, #0, #24	@ D.15385, tmp184,,
	str	r3, [r4, #40]	@ D.15385, <variable>.stRbfInAttr.uBufSize
	ldr	r0, [r5, #20]	@ D.15387,
	mov	r3, #0	@ tmp188,
	ldr	r1, [r4, #40]	@ <variable>.stRbfInAttr.uBufSize, <variable>.stRbfInAttr.uBufSize
	tst	r0, #16777216	@ D.15387,
	addeq	r0, r5, #24	@ D.15394, pAipReg,
	streq	r0, [r4, #44]	@ D.15394, <variable>.stRbfInAttr.uBufWptr
	ldrne	r0, [r5, #24]	@ D.15391, <variable>.AIP_BUF_WPTR
	addeq	r0, r5, #28	@ D.15396, pAipReg,
	strne	r0, [r4, #44]	@ D.15391, <variable>.stRbfInAttr.uBufWptr
	ldrne	r0, [r5, #28]	@ D.15392, <variable>.AIP_BUF_RPTR
	str	r0, [r4, #48]	@ D.15396, <variable>.stRbfInAttr.uBufRptr
	mov	r0, r3	@ D.15347, tmp188
	ldr	r2, [r5, #20]	@ tmp186,
	str	ip, [r4, #56]	@ u32FrameSize, <variable>.stRbfInAttr.uFrameSize
	str	r1, [r4, #60]	@ <variable>.stRbfInAttr.uBufSize, <variable>.stRbfInAttr.uLatencySize
	ubfx	ip, r2, #24, #1	@ D.15398, tmp186,,
	mov	r1, #16	@ tmp190,
	mov	r2, #8	@ tmp191,
	str	r1, [r4, #0]	@ tmp190, <variable>.u32FadeinMs
	str	ip, [r4, #52]	@ D.15398, <variable>.stRbfInAttr.uBufFlag
	str	r2, [r4, #4]	@ tmp191, <variable>.u32FadeoutMs
	str	r3, [r4, #24]	@ tmp188, <variable>.u32InPeriondSize
	str	r3, [r4, #64]	@ tmp188, <variable>.stRbfInAttr.uLatencyMs
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L152:
	ldr	ip, [r5, #12]	@ tmp170,
	movw	r3, #:lower16:188000	@ tmp173,
	movt	r3, #:upper16:188000	@ tmp173,
	ubfx	r2, ip, #0, #24	@ D.15364, tmp170,,
	str	r2, [r4, #16]	@ D.15364, <variable>.u32InSampleRate
	sub	r1, r2, #4000	@ tmp171, D.15364,
	cmp	r1, r3	@ tmp171, tmp173
	bhi	.L145	@,
	ldr	r0, [r4, #12]	@ <variable>.u32InChannels, <variable>.u32InChannels
	cmp	r0, #2	@ <variable>.u32InChannels,
	bhi	.L145	@,
	ldr	lr, [r4, #8]	@ <variable>.u32InBitPerSample, <variable>.u32InBitPerSample
	cmp	lr, #16	@ <variable>.u32InBitPerSample,
	bne	.L145	@,
	b	.L146	@
	.fnend
	.size	AIPGetRbfInAttr, .-AIPGetRbfInAttr
	.align	2
	.global	AIPGetRbfFiFoAttr
	.type	AIPGetRbfFiFoAttr, %function
AIPGetRbfFiFoAttr:
	.fnstart
.LFB872:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp152,
	movt	r3, #:upper16:.LANCHOR0	@ tmp152,
	mov	r4, r1	@ pstChnAttr, pstChnAttr
	ldr	r5, [r3, r0, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	add	r0, r1, #68	@, pstChnAttr,
	ldr	r1, [r5, #4]	@ tmp153,
	and	r1, r1, #3	@, tmp153,
	bl	AOE_REG_ReadBitDepth	@
	cmp	r0, #0	@,
	beq	.L157	@,
.L154:
	mvn	r0, #0	@ D.15299,
.L155:
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L157:
	ldr	r2, [r5, #4]	@ tmp156,
	add	r0, r4, #72	@, pstChnAttr,
	ubfx	r1, r2, #2, #2	@, tmp156,,
	bl	AOE_REG_ReadChannel	@
	cmp	r0, #0	@,
	bne	.L154	@,
	ldr	ip, [r5, #4]	@ tmp159,
	add	r0, r4, #76	@, pstChnAttr,
	ubfx	r1, ip, #4, #4	@, tmp159,,
	bl	AOE_REG_ReadSampelRate	@
	cmp	r0, #0	@,
	bne	.L154	@,
	ldr	lr, [r5, #4]	@ tmp162,
	add	r0, r4, #80	@, pstChnAttr,
	ubfx	r1, lr, #8, #2	@, tmp162,,
	bl	AOE_REG_ReadDataFormat	@
	cmp	r0, #0	@,
	bne	.L154	@,
	ldr	r6, [r5, #4]	@ tmp165,
	sub	r0, fp, #32	@,,
	ubfx	r1, r6, #10, #6	@, tmp165,,
	bl	AOE_REG_ReadBufLatencyMs	@
	subs	r6, r0, #0	@ D.15320,
	bne	.L154	@,
	ldr	r1, [r4, #68]	@, <variable>.u32OutBitPerSample
	ldr	r0, [r4, #72]	@, <variable>.u32OutChannels
	bl	UTIL_CalcFrameSize	@
	ldr	r2, [r4, #76]	@, <variable>.u32OutSampleRate
	mov	r1, r0	@, u32FrameSize
	mov	r7, r0	@ u32FrameSize,
	ldr	r0, [fp, #-32]	@, uLatencyMs
	bl	UTIL_LatencyMs2ByteSize	@
	ldr	r3, [fp, #-32]	@ uLatencyMs, uLatencyMs
	add	r1, r5, #60	@ D.15331, pAipReg,
	str	r7, [r4, #112]	@ u32FrameSize, <variable>.stRbfOutAttr.uFrameSize
	add	r5, r5, #56	@ D.15329, pAipReg,
	str	r1, [r4, #104]	@ D.15331, <variable>.stRbfOutAttr.uBufRptr
	str	r3, [r4, #84]	@ uLatencyMs, <variable>.u32OutLatencyThdMs
	str	r5, [r4, #100]	@ D.15329, <variable>.stRbfOutAttr.uBufWptr
	str	r6, [r4, #88]	@ D.15320, <variable>.stRbfOutAttr.bExtMem
	str	r6, [r4, #108]	@ D.15320, <variable>.stRbfOutAttr.uBufFlag
	str	r3, [r4, #120]	@ uLatencyMs, <variable>.stRbfOutAttr.uLatencyMs
	mov	r2, r0	@ uLatencySize,
	mov	r0, r6	@ D.15299, D.15320
	str	r2, [r4, #116]	@ uLatencySize, <variable>.stRbfOutAttr.uLatencySize
	str	r2, [r4, #96]	@ uLatencySize, <variable>.stRbfOutAttr.uBufSize
	b	.L155	@
	.fnend
	.size	AIPGetRbfFiFoAttr, .-AIPGetRbfFiFoAttr
	.align	2
	.global	AIPGetChnCreateAttr
	.type	AIPGetChnCreateAttr, %function
AIPGetChnCreateAttr:
	.fnstart
.LFB874:
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
	mov	r5, r0	@ Id, Id
	mov	r4, r1	@ pstChnAttr, pstChnAttr
	bl	AIPGetRbfInAttr	@
	cmp	r0, #0	@,
	beq	.L162	@,
.L159:
	mvn	r0, #0	@ D.15409,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L162:
	mov	r0, r5	@, Id
	mov	r1, r4	@, pstChnAttr
	bl	AIPGetRbfFiFoAttr	@
	cmp	r0, #0	@ Ret.1122
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	b	.L159	@
	.fnend
	.size	AIPGetChnCreateAttr, .-AIPGetChnCreateAttr
	.align	2
	.global	AIPCreateChn
	.type	AIPCreateChn, %function
AIPCreateChn:
	.fnstart
.LFB876:
	@ args = 0, pretend = 0, frame = 176
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #188
	sub	sp, sp, #188	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	sub	r7, fp, #220	@ tmp221,,
	movw	r4, #:lower16:.LANCHOR0	@ tmp222,
	movt	r4, #:upper16:.LANCHOR0	@ tmp222,
	mov	r1, r7	@, tmp221
	mov	r6, #0	@ tmp156,
	mov	r5, r0	@ Id, Id
	str	r6, [fp, #-48]	@ tmp156, hADJ
	str	r6, [fp, #-52]	@ tmp156, hFade
	str	r6, [fp, #-56]	@ tmp156, hRingIn
	str	r6, [fp, #-60]	@ tmp156, hRingOut
	ldr	r8, [r4, r0, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	bl	AIPGetChnCreateAttr	@
	cmp	r0, r6	@,
	beq	.L164	@,
.L173:
	mov	r0, r6	@ D.15483, state
.L165:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L164:
	mov	r0, #17	@,
	movw	r1, #1048	@,
	bl	HI_ADSP_MALLOC	@
	subs	r6, r0, #0	@ state,
	beq	.L166	@,
	movw	r1, #1048	@,
	bl	__memzero	@
	mov	r0, r6	@, state
	mov	r1, r7	@, tmp221
	mov	r2, #124	@,
	bl	memcpy	@
	str	r5, [r6, #1040]	@ Id, <variable>.Id
	ldr	sl, [r8, #0]	@ D.15492,* pAipReg
	ands	sl, sl, #1024	@ tmp166, D.15492,
	bne	.L174	@,
	ldr	r9, [r8, #20]	@ D.15498,
	ands	r9, r9, #16777216	@ tmp170, D.15498,
	bne	.L175	@,
	sub	r0, fp, #56	@,,
	add	r1, r7, #32	@, tmp221,
	bl	RBUF_Create_EXT	@
	mov	sl, r9	@ bAlsa, tmp170
.L168:
	ldr	r3, [fp, #-56]	@ hRingIn, hRingIn
	cmp	r3, #0	@ hRingIn,
	beq	.L166	@,
	str	sl, [r6, #1036]	@ bAlsa, <variable>.bAlsa
	add	r1, r7, #88	@, tmp221,
	ldr	r2, [fp, #-56]	@ hRingIn, hRingIn
	sub	r0, fp, #60	@,,
	str	r2, [r6, #188]	@ hRingIn, <variable>.hRingIn
	bl	RBUF_Create	@
	ldr	r3, [fp, #-60]	@ hRingOut.269, hRingOut
	cmp	r3, #0	@ hRingOut.269,
	bne	.L176	@,
.L166:
	mov	r0, r6	@, state
	bl	AIPDestroyChn	@
	mov	r0, #0	@ D.15483,
	b	.L165	@
.L175:
	sub	r0, fp, #56	@,,
	add	r1, r7, #32	@, tmp221,
	bl	RBUF_Create_EXT	@
	b	.L168	@
.L174:
	sub	r0, fp, #56	@,,
	add	r1, r7, #32	@, tmp221,
	bl	RBUF_Create_EXT	@
	mov	sl, #1	@ bAlsa,
	b	.L168	@
.L176:
	str	r3, [r6, #192]	@ hRingOut.269, <variable>.hRingOut
	sub	r1, fp, #96	@,,
	ldr	r0, [fp, #-60]	@, hRingOut
	bl	RBUF_QueryInfo	@
	ldr	ip, [fp, #-96]	@ D.15508, stRbfOut.u32BasePtr
	str	ip, [r8, #48]	@ D.15508, <variable>.AIP_FIFO_ADDR
	ldrh	r1, [fp, #-84]	@ D.15510, stRbfOut.u32BufSize
	strh	r1, [r8, #52]	@ movhi	@ D.15510, <variable>.AIP_FIFO_SIZE.bits.aip_fifo_size
	ldr	r0, [fp, #-200]	@ stAttr.u32InDataFormat, stAttr.u32InDataFormat
	cmp	r0, #0	@ stAttr.u32InDataFormat,
	bne	.L170	@,
	ldr	r0, [fp, #-204]	@ prephitmp.1149, stAttr.u32InSampleRate
	ldr	lr, [fp, #-144]	@ stAttr.u32OutSampleRate, stAttr.u32OutSampleRate
	cmp	r0, lr	@ prephitmp.1149, stAttr.u32OutSampleRate
	beq	.L171	@,
	add	r3, r6, #1040	@, state,
	add	r1, r3, #4	@,,
	bl	AIPRouteResampler	@
	subs	r3, r0, #0	@ D.15519,
	bne	.L166	@,
	str	r3, [sp, #0]	@ D.15519,
	ldr	r0, [fp, #-204]	@, stAttr.u32InSampleRate
	ldr	r1, [fp, #-144]	@, stAttr.u32OutSampleRate
	ldr	r2, [fp, #-148]	@, stAttr.u32OutChannels
	ldr	r3, [fp, #-152]	@, stAttr.u32OutBitPerSample
	bl	ResamplerCreate	@
	cmp	r0, #0	@ hSRC
	beq	.L166	@,
	str	r0, [r6, #200]	@ hSRC, <variable>.hSRC
	ldr	r0, [fp, #-144]	@ prephitmp.1149, stAttr.u32OutSampleRate
.L171:
	ldr	ip, [fp, #-148]	@ stAttr.u32OutChannels, stAttr.u32OutChannels
	mov	r1, r0	@, prephitmp.1149
	ldr	r3, [fp, #-152]	@, stAttr.u32OutBitPerSample
	sub	r0, fp, #48	@,,
	mov	r2, r1	@,
	str	ip, [sp, #0]	@ stAttr.u32OutChannels,
	bl	LSRC_Create	@
	ldr	r3, [fp, #-48]	@ hADJ.271, hADJ
	cmp	r3, #0	@ hADJ.271,
	beq	.L166	@,
	str	r3, [r6, #196]	@ hADJ.271, <variable>.hADJ
	sub	r0, fp, #52	@,,
	ldr	r3, [fp, #-208]	@, stAttr.u32InChannels
	ldr	r1, [fp, #-204]	@, stAttr.u32InSampleRate
	ldr	r2, [fp, #-212]	@, stAttr.u32InBitPerSample
	bl	FADE_Create	@
	ldr	r3, [fp, #-52]	@ hFade.272, hFade
	cmp	r3, #0	@ hFade.272,
	beq	.L166	@,
	mov	r2, #0	@ tmp201,
	str	r3, [r6, #204]	@ hFade.272, <variable>.hFADE
	str	r2, [r6, #240]	@ tmp201, <variable>.s32FadeState
.L170:
	ldr	lr, [r4, r5, asl #2]	@ tmp203, g_stAipRm.hwAipReg
	add	ip, r6, #124	@ tmp204, state,
	mov	r5, #0	@ tmp206,
	mov	r4, ip	@ tmp223, tmp204
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp205,,,,
	stmia	r4!, {r0, r1, r2, r3}	@ tmp223,,,,
	mov	ip, r4	@ tmp225, tmp223
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp224,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp225,,,,
	mov	r4, ip	@ tmp227, tmp225
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp226,,,,
	stmia	r4!, {r0, r1, r2, r3}	@ tmp227,,,,
	ldmia	lr, {r0, r1, r2, r3}	@ tmp226,,,,
	stmia	r4, {r0, r1, r2, r3}	@ tmp227,,,,
	str	r5, [r6, #212]	@ tmp206, <variable>.stGain.bLinearMode
	mvn	r0, #32768	@ tmp212,
	str	r5, [r6, #228]	@ tmp206, <variable>.u32ChannelMode
	strh	r0, [r6, #224]	@ movhi	@ tmp212, <variable>.s16LinearGainFrac
	mov	r0, r6	@, state
	strh	r5, [r6, #216]	@ movhi	@ tmp206, <variable>.stGain.u16LGain
	strh	r5, [r6, #218]	@ movhi	@ tmp206, <variable>.stGain.u16RGain
	bl	AIPCalcProcBlockSize	@
	str	r0, [r6, #1020]	@, <variable>.OutBlockSize
	mov	r0, r6	@, state
	bl	AIPCalcOutLatencyThdSize	@
	ldr	r1, [r6, #68]	@, <variable>.stAttr.u32OutBitPerSample
	str	r0, [r6, #1032]	@, <variable>.OutLatencySize
	ldr	r0, [r6, #72]	@, <variable>.stAttr.u32OutChannels
	bl	UTIL_CalcFrameSize	@
	ldr	r1, [r6, #8]	@, <variable>.stAttr.u32InBitPerSample
	str	r0, [r6, #1024]	@, <variable>.OutFrameSize
	ldr	r0, [r6, #12]	@, <variable>.stAttr.u32InChannels
	bl	UTIL_CalcFrameSize	@
	mov	r3, #1	@ tmp218,
	mov	r1, r3	@, tmp218
	str	r3, [r6, #208]	@ tmp218, <variable>.CurStatus
	mov	r2, #8	@,
	str	r0, [r6, #1028]	@, <variable>.InFrameSize
	ldr	r0, [r6, #204]	@, <variable>.hFADE
	bl	FADE_Active	@
	b	.L173	@
	.fnend
	.size	AIPCreateChn, .-AIPCreateChn
	.align	2
	.global	AIPStartChnCmdProc
	.type	AIPStartChnCmdProc, %function
AIPStartChnCmdProc:
	.fnstart
.LFB891:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp170,
	add	r6, r0, #8	@ tmp143, Id,
	movt	r4, #:upper16:.LANCHOR0	@ tmp170,
	mov	r5, r0	@ Id, Id
	ldr	r7, [r4, r6, asl #2]	@ prephitmp.1183, g_stAipRm.hAip
	cmp	r7, #0	@ prephitmp.1183,
	beq	.L185	@,
	ldr	r3, [r7, #208]	@ D.15780, <variable>.CurStatus
	cmp	r3, #0	@ D.15780,
	beq	.L187	@,
	cmp	r3, #2	@ D.15780,
	beq	.L186	@,
.L179:
	cmp	r7, #0	@ prephitmp.1183,
	bne	.L182	@,
	ldr	r3, [r4, r5, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	ldr	r2, [r3, #8]	@ D.16083,
	tst	r2, #8	@ D.16083,
	ldmnefd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	ldr	ip, [r3, #8]	@ tmp161,
	mov	r2, #1	@ tmp162,
	bfi	ip, r2, #4, #4	@ tmp161, tmp162,,
	str	ip, [r3, #8]	@ tmp161,
	ldr	r1, [r3, #8]	@ tmp163,
	orr	r0, r1, #8	@ tmp171, tmp163,
	str	r0, [r3, #8]	@ tmp171,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L182:
	ldr	r3, [r4, r5, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	ldr	r0, [r3, #8]	@ D.16090,
	ands	r2, r0, #8	@ tmp166, D.16090,
	ldmnefd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	ldr	r0, [r3, #8]	@ tmp167,
	bfi	r0, r2, #4, #4	@ tmp167, tmp166,,
	str	r0, [r3, #8]	@ tmp167,
	ldr	ip, [r3, #8]	@ tmp168,
	orr	r1, ip, #8	@ tmp172, tmp168,
	str	r1, [r3, #8]	@ tmp172,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L187:
	bl	AIPIsChnAttrChange	@
	cmp	r0, #0	@,
	beq	.L186	@,
	ldr	r0, [r4, r6, asl #2]	@, g_stAipRm.hAip
	bl	AIPDestroyChn	@
	mov	r0, r5	@, Id
.L185:
	bl	AIPCreateChn	@
	mov	r7, r0	@ prephitmp.1183,
	str	r0, [r4, r6, asl #2]	@ prephitmp.1183, g_stAipRm.hAip
	b	.L179	@
.L186:
	mov	r1, #1	@ tmp155,
	ldr	r0, [r7, #204]	@, <variable>.hFADE
	str	r1, [r7, #208]	@ tmp155, <variable>.CurStatus
	mov	r2, #8	@,
	bl	FADE_Active	@
	ldr	r7, [r4, r6, asl #2]	@ prephitmp.1183, g_stAipRm.hAip
	b	.L179	@
	.fnend
	.size	AIPStartChnCmdProc, .-AIPStartChnCmdProc
	.align	2
	.global	AIPFadeoutChnData
	.type	AIPFadeoutChnData, %function
AIPFadeoutChnData:
	.fnstart
.LFB871:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #44
	sub	sp, sp, #44	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r4, r0	@ state, state
	sub	r1, fp, #64	@,,
	ldr	r0, [r0, #192]	@, <variable>.hRingOut
	bl	RBUF_QueryInfo	@
	ldr	r6, [r4, #112]	@ D.15270, <variable>.stAttr.stRbfOutAttr.uFrameSize
	ldr	r0, [fp, #-48]	@, stRbfFifoInfo.u32ContiguousDataSize
	mov	r1, r6	@, D.15270
	bl	__aeabi_uidiv	@
	mov	r1, r6	@, D.15270
	mov	r5, r0	@ tmp141,
	ldr	r0, [fp, #-44]	@, stRbfFifoInfo.u32TotalDataSize
	bl	__aeabi_uidiv	@
	mov	r1, #2	@,
	mov	r2, #8	@,
	mov	r6, r0	@ tmp144,
	ldr	r0, [r4, #204]	@, <variable>.hFADE
	bl	FADE_Active	@
	ldr	r0, [r4, #204]	@, <variable>.hFADE
	ldr	r1, [r4, #76]	@, <variable>.stAttr.u32OutSampleRate
	ldr	r2, [r4, #68]	@, <variable>.stAttr.u32OutBitPerSample
	ldr	r3, [r4, #72]	@, <variable>.stAttr.u32OutChannels
	bl	FADE_Flush	@
	ldr	r3, [fp, #-64]	@ stRbfFifoInfo.u32BasePtr, stRbfFifoInfo.u32BasePtr
	ldr	r1, [fp, #-60]	@ stRbfFifoInfo.u32ReadPtr, stRbfFifoInfo.u32ReadPtr
	mov	r2, r5	@, tmp141
	ldr	r0, [r4, #204]	@, <variable>.hFADE
	add	r1, r1, r3	@, stRbfFifoInfo.u32ReadPtr, stRbfFifoInfo.u32BasePtr
	bl	FADE_OutProcess	@
	rsb	r2, r5, r6	@, tmp141, tmp144
	ldr	r0, [r4, #204]	@, <variable>.hFADE
	ldr	r1, [fp, #-64]	@, stRbfFifoInfo.u32BasePtr
	bl	FADE_OutProcess	@
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
	.fnend
	.size	AIPFadeoutChnData, .-AIPFadeoutChnData
	.align	2
	.global	AIPPauseChnCmdProc
	.type	AIPPauseChnCmdProc, %function
AIPPauseChnCmdProc:
	.fnstart
.LFB890:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp153,
	add	r3, r0, #8	@ tmp140, Id,
	movt	r4, #:upper16:.LANCHOR0	@ tmp153,
	mov	r6, r0	@ Id, Id
	ldr	r5, [r4, r3, asl #2]	@ state, g_stAipRm.hAip
	cmp	r5, #0	@ state,
	beq	.L193	@,
	ldr	r7, [r5, #208]	@ <variable>.CurStatus, <variable>.CurStatus
	cmp	r7, #1	@ <variable>.CurStatus,
	beq	.L197	@,
.L193:
	ldr	r3, [r4, r6, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	ldr	r2, [r3, #8]	@ D.16104,
	ands	r2, r2, #8	@ tmp149, D.16104,
	ldmnefd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L198:
	ldr	r0, [r3, #8]	@ tmp150,
	bfi	r0, r2, #4, #4	@ tmp150, tmp149,,
	str	r0, [r3, #8]	@ tmp150,
	ldr	ip, [r3, #8]	@ tmp151,
	orr	r1, ip, #8	@ tmp155, tmp151,
	str	r1, [r3, #8]	@ tmp155,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L197:
	mov	r0, r5	@, state
	bl	AIPFadeoutChnData	@
	mov	r0, r5	@, state
	mov	r1, r7	@, <variable>.CurStatus
	bl	AIPFlushChn	@
	mov	r0, #2	@ tmp147,
	str	r0, [r5, #208]	@ tmp147, <variable>.CurStatus
	ldr	r3, [r4, r6, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	ldr	r2, [r3, #8]	@ D.16104,
	ands	r2, r2, #8	@ tmp149, D.16104,
	beq	.L198	@,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	AIPPauseChnCmdProc, .-AIPPauseChnCmdProc
	.align	2
	.global	AIFlushChnCmdProc
	.type	AIFlushChnCmdProc, %function
AIFlushChnCmdProc:
	.fnstart
.LFB889:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp153,
	add	r3, r0, #8	@ tmp140, Id,
	movt	r4, #:upper16:.LANCHOR0	@ tmp153,
	mov	r5, r0	@ Id, Id
	ldr	r6, [r4, r3, asl #2]	@ state, g_stAipRm.hAip
	cmp	r6, #0	@ state,
	beq	.L202	@,
	ldr	r7, [r6, #208]	@ <variable>.CurStatus, <variable>.CurStatus
	cmp	r7, #1	@ <variable>.CurStatus,
	beq	.L206	@,
.L202:
	ldr	r3, [r4, r5, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	ldr	r2, [r3, #8]	@ D.16118,
	ands	r2, r2, #8	@ tmp149, D.16118,
	ldmnefd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L207:
	ldr	ip, [r3, #8]	@ tmp150,
	bfi	ip, r2, #4, #4	@ tmp150, tmp149,,
	str	ip, [r3, #8]	@ tmp150,
	ldr	r1, [r3, #8]	@ tmp151,
	orr	r0, r1, #8	@ tmp155, tmp151,
	str	r0, [r3, #8]	@ tmp155,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L206:
	mov	r0, r6	@, state
	bl	AIPFadeoutChnData	@
	mov	r1, #3	@,
	mov	r0, r6	@, state
	bl	AIPFlushChn	@
	mov	r0, r6	@, state
	bl	AIPWriteMuteFrame	@
	mov	r2, #8	@,
	ldr	r0, [r6, #204]	@, <variable>.hFADE
	mov	r1, r7	@, <variable>.CurStatus
	bl	FADE_Active	@
	ldr	r3, [r4, r5, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	ldr	r2, [r3, #8]	@ D.16118,
	ands	r2, r2, #8	@ tmp149, D.16118,
	beq	.L207	@,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	AIFlushChnCmdProc, .-AIFlushChnCmdProc
	.align	2
	.global	AIPStopChnCmdProc
	.type	AIPStopChnCmdProc, %function
AIPStopChnCmdProc:
	.fnstart
.LFB888:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp154,
	add	r3, r0, #8	@ tmp140, Id,
	movt	r4, #:upper16:.LANCHOR0	@ tmp154,
	mov	r6, r0	@ Id, Id
	ldr	r5, [r4, r3, asl #2]	@ state, g_stAipRm.hAip
	cmp	r5, #0	@ state,
	beq	.L211	@,
	ldr	r1, [r5, #208]	@ <variable>.CurStatus, <variable>.CurStatus
	sub	r0, r1, #1	@ tmp146, <variable>.CurStatus,
	cmp	r0, #1	@ tmp146,
	bls	.L215	@,
.L211:
	ldr	r3, [r4, r6, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	ldr	ip, [r3, #8]	@ D.16132,
	ands	r2, ip, #8	@ tmp150, D.16132,
	ldmnefd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L216:
	ldr	ip, [r3, #8]	@ tmp151,
	bfi	ip, r2, #4, #4	@ tmp151, tmp150,,
	str	ip, [r3, #8]	@ tmp151,
	ldr	r1, [r3, #8]	@ tmp152,
	orr	r0, r1, #8	@ tmp156, tmp152,
	str	r0, [r3, #8]	@ tmp156,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L215:
	mov	r0, r5	@, state
	bl	AIPFadeoutChnData	@
	mov	r0, r5	@, state
	mov	r1, #3	@,
	bl	AIPFlushChn	@
	mov	r0, r5	@, state
	bl	AIPWriteMuteFrame	@
	mov	r2, #0	@ tmp148,
	str	r2, [r5, #208]	@ tmp148, <variable>.CurStatus
	ldr	r3, [r4, r6, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	ldr	ip, [r3, #8]	@ D.16132,
	ands	r2, ip, #8	@ tmp150, D.16132,
	beq	.L216	@,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	AIPStopChnCmdProc, .-AIPStopChnCmdProc
	.align	2
	.global	AIPProcChnCmd
	.type	AIPProcChnCmd, %function
AIPProcChnCmd:
	.fnstart
.LFB892:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #12
	sub	sp, sp, #12	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	sub	r1, fp, #24	@,,
	mov	r4, r0	@ Id, Id
	bl	AIPGetChnCmd	@
	cmp	r0, #4	@,
	beq	.L224	@,
	ldr	r3, [fp, #-24]	@ newcmd, newcmd
	cmp	r3, #3	@ newcmd,
	ldrls	pc, [pc, r3, asl #2]	@ newcmd
	b	.L224	@
.L223:
	.word	.L219
	.word	.L220
	.word	.L221
	.word	.L222
.L220:
	mov	r0, r4	@, Id
	bl	AIPStopChnCmdProc	@
.L224:
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L222:
	mov	r0, r4	@, Id
	bl	AIFlushChnCmdProc	@
	b	.L224	@
.L219:
	mov	r0, r4	@, Id
	bl	AIPStartChnCmdProc	@
	b	.L224	@
.L221:
	mov	r0, r4	@, Id
	bl	AIPPauseChnCmdProc	@
	b	.L224	@
	.fnend
	.size	AIPProcChnCmd, .-AIPProcChnCmd
	.align	2
	.global	AIPCalcRbfInNeedBytes
	.type	AIPCalcRbfInNeedBytes, %function
AIPCalcRbfInNeedBytes:
	.fnstart
.LFB865:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #52
	sub	sp, sp, #52	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	ldr	r3, [r0, #20]	@ <variable>.stAttr.u32InDataFormat, <variable>.stAttr.u32InDataFormat
	ldr	r6, [r0, #72]	@ Channel, <variable>.stAttr.u32OutChannels
	mov	r4, r0	@ state, state
	cmp	r3, #0	@ <variable>.stAttr.u32InDataFormat,
	mov	r5, r2	@ pNeedInBytes, pNeedInBytes
	ldr	r8, [r0, #76]	@ SampleRate, <variable>.stAttr.u32OutSampleRate
	ldr	r7, [r0, #68]	@ BitWidth, <variable>.stAttr.u32OutBitPerSample
	movne	r6, r1	@ NeedInBytes, blocksize
	beq	.L234	@,
.L227:
	ldr	r0, [r4, #188]	@, <variable>.hRingIn
	sub	r1, fp, #72	@,,
	bl	RBUF_QueryInfo	@
	ldr	r1, [fp, #-52]	@ stRbfIn.u32TotalDataSize, stRbfIn.u32TotalDataSize
	cmp	r6, r1	@ NeedInBytes, stRbfIn.u32TotalDataSize
	strcc	r6, [r5, #0]	@ NeedInBytes,* pNeedInBytes
	movcs	r6, #0	@ NeedInBytes,
	mov	r0, r6	@, NeedInBytes
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L234:
	mov	r0, r1	@, blocksize
	ldr	r1, [r4, #1024]	@, <variable>.OutFrameSize
	bl	__aeabi_uidiv	@
	ldr	ip, [r4, #196]	@ <variable>.hADJ, <variable>.hADJ
	ldr	lr, [r4, #248]	@ <variable>.OutputLeftSamples, <variable>.OutputLeftSamples
	mov	r3, r7	@, BitWidth
	mov	r2, r8	@, tmp1
	mov	r1, r8	@, SampleRate
	str	r6, [sp, #0]	@ Channel,
	rsb	r6, lr, r0	@ NeedSampels.1337, <variable>.OutputLeftSamples,
	mov	r0, ip	@, <variable>.hADJ
	bl	LSRC_UpdateChange	@
	ldr	r0, [r4, #196]	@, <variable>.hADJ
	ldr	r1, [r4, #244]	@, <variable>.s32UserSpeedAdjust
	bl	LSRC_SetSpeedAdjust	@
	mov	r1, r6	@, NeedSampels.1337
	ldr	r0, [r4, #196]	@, <variable>.hADJ
	bl	LSRC_GetMinInputNum	@
	mov	r1, r0	@ D.15045,
	ldr	r0, [r4, #200]	@ D.15056, <variable>.hSRC
	cmp	r0, #0	@ D.15056,
	bne	.L235	@,
.L229:
	tst	r1, #3	@ NeedSampels,
	ldr	r0, [r4, #1028]	@ <variable>.InFrameSize, <variable>.InFrameSize
	addne	r1, r1, #3	@ tmp159, NeedSampels,
	bicne	r1, r1, #3	@ NeedSampels, tmp159,
	mul	r6, r0, r1	@ NeedInBytes, <variable>.InFrameSize, NeedSampels
	b	.L227	@
.L235:
	bl	ResamplerGetMinInputNum	@
	mov	r1, r0	@ NeedSampels,
	b	.L229	@
	.fnend
	.size	AIPCalcRbfInNeedBytes, .-AIPCalcRbfInNeedBytes
	.align	2
	.global	AIPDmaFrame
	.type	AIPDmaFrame, %function
AIPDmaFrame:
	.fnstart
.LFB866:
	@ args = 0, pretend = 0, frame = 8
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
	ldr	r5, [r0, #1020]	@ blocksize, <variable>.OutBlockSize
	sub	r2, fp, #28	@ tmp143,,
	mov	r3, #0	@ tmp142,
	mov	r6, r1	@ pstInFrame, pstInFrame
	mov	r4, r0	@ state, state
	str	r3, [r2, #-4]!	@ tmp142, needsize
	mov	r1, r5	@, blocksize
	bl	AIPCalcRbfInNeedBytes	@
	cmp	r0, #0	@,
	bne	.L240	@,
.L237:
	mov	r0, #0	@ D.15103,
.L238:
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L240:
	mov	r1, r5	@, blocksize
	mov	r0, r4	@, state
	bl	AIPCheckRbfOutFree	@
	cmp	r0, #0	@,
	beq	.L237	@,
	bl	AOE_GetWKBuf	@
	cmp	r0, #0	@ uWkAddr
	beq	.L237	@,
	str	r0, [r6, #0]	@ uWkAddr, <variable>.pDataBuf
	bl	AOE_GetWKBufSize	@
	ldr	r5, [fp, #-32]	@ needsize, needsize
	stmib	r6, {r0, r5}	@ phole stm
	mov	r0, r5	@, needsize
	ldr	r1, [r4, #1028]	@, <variable>.InFrameSize
	bl	__aeabi_uidiv	@
	ldr	r1, [r6, #0]	@, <variable>.pDataBuf
	mov	r2, r5	@, needsize
	str	r0, [r6, #12]	@, <variable>.u32SamplesPerFrame
	ldr	r0, [r4, #12]	@ <variable>.stAttr.u32InChannels, <variable>.stAttr.u32InChannels
	str	r0, [r6, #20]	@ <variable>.stAttr.u32InChannels, <variable>.u32Channels
	ldr	r3, [r4, #8]	@ <variable>.stAttr.u32InBitPerSample, <variable>.stAttr.u32InBitPerSample
	str	r3, [r6, #16]	@ <variable>.stAttr.u32InBitPerSample, <variable>.u32BitPerSample
	ldr	ip, [r4, #16]	@ <variable>.stAttr.u32InSampleRate, <variable>.stAttr.u32InSampleRate
	str	ip, [r6, #24]	@ <variable>.stAttr.u32InSampleRate, <variable>.u32SampleRate
	ldr	r0, [r4, #20]	@ <variable>.stAttr.u32InDataFormat, <variable>.stAttr.u32InDataFormat
	str	r0, [r6, #28]	@ <variable>.stAttr.u32InDataFormat, <variable>.u32DataFormat
	ldr	r0, [r4, #188]	@, <variable>.hRingIn
	bl	RBUF_ReadDataDma	@
	ldr	r0, [fp, #-32]	@ D.15103, needsize
	b	.L238	@
	.fnend
	.size	AIPDmaFrame, .-AIPDmaFrame
	.align	2
	.global	AIPChannelModePcmData
	.type	AIPChannelModePcmData, %function
AIPChannelModePcmData:
	.fnstart
.LFB861:
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
	ldr	r3, [r0, #228]	@ D.14957, <variable>.u32ChannelMode
	ldr	r2, [r0, #68]	@ dstBitDepth, <variable>.stAttr.u32OutBitPerSample
	cmp	r3, #0	@ D.14957,
	ldmeqfd	sp, {fp, sp, pc}	@
	cmp	r3, #7	@ D.14957,
	ldmhifd	sp, {fp, sp, pc}	@
	mov	r0, r1	@, pstFrame
	mov	r1, r3	@, D.14957
	bl	UTIL_ChannelModeProcess	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	AIPChannelModePcmData, .-AIPChannelModePcmData
	.align	2
	.global	AIPGainPcmData
	.type	AIPGainPcmData, %function
AIPGainPcmData:
	.fnstart
.LFB860:
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
	mov	r2, r0	@ state, state
	mov	r0, r1	@ pstFrame, pstFrame
	ldr	r1, [r2, #212]	@ bLinearMode, <variable>.stGain.bLinearMode
	cmp	r1, #1	@ bLinearMode,
	ldreqh	r2, [r2, #224]	@ VolumeL, <variable>.s16LinearGainFrac
	ldrneh	r3, [r2, #218]	@ VolumeR, <variable>.stGain.u16RGain
	ldrneh	r2, [r2, #216]	@ VolumeL, <variable>.stGain.u16LGain
	moveq	r3, r2	@ VolumeR, VolumeL
	bl	UTIL_LRGainProcess	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	AIPGainPcmData, .-AIPGainPcmData
	.align	2
	.global	AIPUnifyPcmData
	.type	AIPUnifyPcmData, %function
AIPUnifyPcmData:
	.fnstart
.LFB859:
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
	ldr	r6, [r0, #72]	@ dstCh, <variable>.stAttr.u32OutChannels
	ldr	r3, [r1, #20]	@ D.14927, <variable>.u32Channels
	mov	r4, r1	@ pstFrame, pstFrame
	ldr	r5, [r0, #68]	@ dstBitDepth, <variable>.stAttr.u32OutBitPerSample
	cmp	r3, r6	@ D.14927, dstCh
	beq	.L249	@,
	cmp	r6, r3	@ dstCh, D.14927
	bls	.L250	@,
	bl	AOE_GetWKBuf	@
	mov	r2, r4	@, pstFrame
	mov	r1, r0	@ D.14932,
	mov	r0, r6	@, dstCh
	bl	UTIL_UpmixPcmData	@
.L249:
	ldr	r3, [r4, #16]	@ <variable>.u32BitPerSample, <variable>.u32BitPerSample
	cmp	r3, r5	@ <variable>.u32BitPerSample, dstBitDepth
	ldmeqfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L253:
	bl	AOE_GetWKBuf	@
	mov	r2, r4	@, pstFrame
	mov	r1, r0	@ D.14938,
	mov	r0, r5	@, dstBitDepth
	bl	UTIL_UnifyBitDepthPcmData	@
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L250:
	bl	AOE_GetWKBuf	@
	mov	r2, r4	@, pstFrame
	mov	r1, r0	@ D.14934,
	mov	r0, r6	@, dstCh
	bl	UTIL_DownmixPcmData	@
	ldr	r3, [r4, #16]	@ <variable>.u32BitPerSample, <variable>.u32BitPerSample
	cmp	r3, r5	@ <variable>.u32BitPerSample, dstBitDepth
	bne	.L253	@,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	AIPUnifyPcmData, .-AIPUnifyPcmData
	.align	2
	.global	AIPProcFrame
	.type	AIPProcFrame, %function
AIPProcFrame:
	.fnstart
.LFB868:
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
	ldr	r3, [r0, #220]	@ <variable>.bMute, <variable>.bMute
	mov	r4, r0	@ state, state
	mov	r5, r1	@ pstInFrame, pstInFrame
	cmp	r3, #1	@ <variable>.bMute,
	beq	.L259	@,
.L255:
	ldr	r0, [r4, #20]	@ <variable>.stAttr.u32InDataFormat, <variable>.stAttr.u32InDataFormat
	cmp	r0, #0	@ <variable>.stAttr.u32InDataFormat,
	beq	.L260	@,
.L256:
	mov	r0, r4	@, state
	mov	r1, r5	@, pstInFrame
	bl	AIPDmaFrame2FiFo	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L260:
	mov	r0, r4	@, state
	mov	r1, r5	@, pstInFrame
	bl	AIPUnifyPcmData	@
	mov	r0, r4	@, state
	mov	r1, r5	@, pstInFrame
	bl	AIPGainPcmData	@
	mov	r0, r4	@, state
	mov	r1, r5	@, pstInFrame
	bl	AIPChannelModePcmData	@
	mov	r1, r5	@, pstInFrame
	mov	r0, r4	@, state
	bl	AIPFadePcmData	@
	ldr	r1, [r4, #200]	@ <variable>.hSRC, <variable>.hSRC
	cmp	r1, #0	@ <variable>.hSRC,
	bne	.L261	@,
.L257:
	ldr	r2, [r4, #196]	@ <variable>.hADJ, <variable>.hADJ
	cmp	r2, #0	@ <variable>.hADJ,
	beq	.L256	@,
	mov	r0, r4	@, state
	mov	r1, r5	@, pstInFrame
	bl	AIPSpeedAdjProc	@
	mov	r0, r4	@, state
	mov	r1, r5	@, pstInFrame
	bl	AIPDmaFrame2FiFo	@
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L259:
	ldr	r1, [r1, #8]	@ __n, <variable>.u32DataBytes
	ldr	r0, [r5, #0]	@ __p, <variable>.pDataBuf
	cmp	r1, #0	@ __n,
	beq	.L255	@,
	bl	__memzero	@
	b	.L255	@
.L261:
	mov	r0, r4	@, state
	mov	r1, r5	@, pstInFrame
	bl	AIPResamplePcmData	@
	b	.L257	@
	.fnend
	.size	AIPProcFrame, .-AIPProcFrame
	.align	2
	.global	AIPProcChnData
	.type	AIPProcChnData, %function
AIPProcChnData:
	.fnstart
.LFB870:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #32
	sub	sp, sp, #32	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r4, r0	@ state, state
	bl	AOE_FlushWKBuf	@
	ldr	r0, [r4, #1024]	@ <variable>.OutFrameSize, <variable>.OutFrameSize
	ldr	r1, [r4, #248]	@ <variable>.OutputLeftSamples, <variable>.OutputLeftSamples
	ldr	r3, [r4, #1020]	@ <variable>.OutBlockSize, <variable>.OutBlockSize
	mul	r2, r1, r0	@ tmp135, <variable>.OutputLeftSamples, <variable>.OutFrameSize
	cmp	r2, r3	@ tmp135, <variable>.OutBlockSize
	bcs	.L267	@,
	sub	r5, fp, #52	@ tmp139,,
	mov	r0, r4	@, state
	mov	r1, r5	@, tmp139
	bl	AIPDmaFrame	@
	cmp	r0, #0	@,
	bne	.L268	@,
.L265:
	bl	AOE_FlushWKBuf	@
.L266:
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L267:
	mov	r0, r4	@, state
	bl	AIPDmaLeftFrame	@
	b	.L266	@
.L268:
	mov	r0, r4	@, state
	mov	r1, r5	@, tmp139
	bl	AIPProcFrame	@
	b	.L265	@
	.fnend
	.size	AIPProcChnData, .-AIPProcChnData
	.align	2
	.global	AIPProcChn
	.type	AIPProcChn, %function
AIPProcChn:
	.fnstart
.LFB894:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #44
	sub	sp, sp, #44	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r4, #:lower16:.LANCHOR0	@ tmp140,
	movt	r4, #:upper16:.LANCHOR0	@ tmp140,
	mov	r6, r0	@ Id, Id
	ldr	r5, [r4, r0, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	bl	AIPProcChnCmd	@
	mov	r0, r6	@, Id
	add	r6, r6, #8	@ tmp142, Id,
	bl	AIPUpdateChnState	@
	ldr	r4, [r4, r6, asl #2]	@ state, g_stAipRm.hAip
	cmp	r4, #0	@ state,
	beq	.L270	@,
	ldr	r3, [r4, #208]	@ <variable>.CurStatus, <variable>.CurStatus
	cmp	r3, #1	@ <variable>.CurStatus,
	beq	.L272	@,
.L270:
	mov	r0, #0	@,
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L272:
	ldr	r0, [r5, #4]	@ D.15855,
	tst	r0, #4194304	@ D.15855,
	bne	.L270	@,
	mov	r0, r4	@, state
	bl	AIPProcChnData	@
	ldr	r0, [r4, #192]	@, <variable>.hRingOut
	sub	r1, fp, #64	@,,
	bl	RBUF_QueryInfo	@
	ldr	r1, [r4, #1024]	@, <variable>.OutFrameSize
	ldr	r2, [r4, #76]	@, <variable>.stAttr.u32OutSampleRate
	ldr	r0, [fp, #-44]	@, stBufInfo.u32TotalDataSize
	bl	UTIL_LatencyMs	@
	ldr	r1, [r5, #4]	@ tmp152,
	bfi	r1, r0, #16, #6	@ tmp152,,,
	str	r1, [r5, #4]	@ tmp152,
	b	.L270	@
	.fnend
	.size	AIPProcChn, .-AIPProcChn
	.align	2
	.global	AIP_Process
	.type	AIP_Process, %function
AIP_Process:
	.fnstart
.LFB898:
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
	bl	AIPProcChn	@
	mov	r0, #1	@,
	bl	AIPProcChn	@
	mov	r0, #2	@,
	bl	AIPProcChn	@
	mov	r0, #3	@,
	bl	AIPProcChn	@
	mov	r0, #4	@,
	bl	AIPProcChn	@
	mov	r0, #5	@,
	bl	AIPProcChn	@
	mov	r0, #6	@,
	bl	AIPProcChn	@
	mov	r0, #7	@,
	bl	AIPProcChn	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	AIP_Process, .-AIP_Process
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	g_stAipRm, %object
	.size	g_stAipRm, 64
g_stAipRm:
	.space	64
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
