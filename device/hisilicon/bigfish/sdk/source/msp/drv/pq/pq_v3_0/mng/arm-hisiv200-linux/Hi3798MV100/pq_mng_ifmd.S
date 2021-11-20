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
	.file	"pq_mng_ifmd.c"
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
@ -DKBUILD_BASENAME=KBUILD_STR(pq_mng_ifmd)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_pq) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD drivers/msp/pq/pq_v3_0/mng/.pq_mng_ifmd.o.d
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/drivers/msp/pq/pq_v3_0/mng/pq_mng_ifmd.c
@ -mlittle-endian -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -marm -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/pq/pq_v3_0/mng/pq_mng_ifmd.o -O2 -Wall -Wundef
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
	.global	PQ_MNG_DeInitIfmd
	.type	PQ_MNG_DeInitIfmd, %function
PQ_MNG_DeInitIfmd:
	.fnstart
.LFB658:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp134,
	movt	r3, #:upper16:.LANCHOR0	@ tmp134,
	mov	r0, #0	@,
	ldr	r2, [r3, #0]	@ sg_bIFmdInitFlag, sg_bIFmdInitFlag
	cmp	r2, #0	@ sg_bIFmdInitFlag,
	movne	r2, #0	@ tmp137,
	strne	r2, [r3, #0]	@ tmp137, sg_bIFmdInitFlag
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	PQ_MNG_DeInitIfmd, .-PQ_MNG_DeInitIfmd
	.align	2
	.type	Check32PdPattern, %function
Check32PdPattern:
	.fnstart
.LFB663:
	@ args = 4, pretend = 0, frame = 104
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #108
	sub	sp, sp, #108	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	sub	r4, fp, #136	@ tmp147,,
	mov	r5, r0	@ Phase, Phase
	mov	r6, r1	@ Sads, Sads
	mov	r8, r2	@ MaxSad, MaxSad
	mov	r0, r4	@, tmp147
	movw	r1, #:lower16:.LANCHOR1	@,
	mov	r2, #100	@,
	movt	r1, #:upper16:.LANCHOR1	@,
	mov	r7, r3	@ MinSad, MinSad
	bl	memcpy	@
	ldr	r3, [fp, #4]	@ MinSad2nd, MinSad2nd
	add	r5, r5, r5, asl #2	@, tmp154, Phase, Phase,
	cmp	r3, r7, asl #1	@ MinSad2nd, MinSad,
	add	r3, r4, r5, asl #2	@, pMask, tmp147, tmp154,
	movlt	r0, #0	@ RetFlag,
	blt	.L6	@,
	ldr	r2, [r4, r5, asl #2]	@ tmp157,
	cmp	r2, #0	@ tmp157,
	beq	.L7	@,
	ldr	r0, [r6, #0]	@ tmp159,* Sads
	ldr	ip, [r3, #4]	@ tmp163,
	cmp	r8, r0, asl #5	@ MaxSad, tmp159,
	movge	r2, #0	@, PatCnt.349
	movlt	r2, #1	@, PatCnt.349
	cmp	ip, #0	@ tmp163,
	beq	.L9	@,
.L19:
	ldr	r0, [r6, #4]	@ tmp165,
	mov	lr, r0, asl #5	@ tmp167, tmp165,
	cmp	lr, r8	@ tmp167, MaxSad
	movle	r0, r2	@, PatCnt.357, PatCnt.349
	addgt	r0, r2, #1	@,, PatCnt.357, PatCnt.349
	ldr	r2, [r3, #8]	@ tmp171,
	cmp	r2, #0	@ tmp171,
	beq	.L11	@,
.L20:
	ldr	lr, [r6, #8]	@ tmp173,
	mov	ip, lr, asl #5	@ tmp175, tmp173,
	cmp	ip, r8	@ tmp175, MaxSad
	movle	r1, r0	@, PatCnt.367, PatCnt.357
	addgt	r1, r0, #1	@,, PatCnt.367, PatCnt.357
	ldr	r0, [r3, #12]	@ tmp179,
	cmp	r0, #0	@ tmp179,
	beq	.L13	@,
.L21:
	ldr	ip, [r6, #12]	@ tmp181,
	ldr	r3, [r3, #16]	@ tmp187,
	mov	r2, ip, asl #5	@ tmp183, tmp181,
	cmp	r2, r8	@ tmp183, MaxSad
	movle	r2, r1	@, PatCnt.377, PatCnt.367
	addgt	r2, r1, #1	@,, PatCnt.377, PatCnt.367
	cmp	r3, #0	@ tmp187,
	bne	.L15	@,
.L22:
	ldr	r1, [r6, #16]	@ tmp189,
	cmp	r1, r7	@ tmp189, MinSad
	movne	r0, r2	@, PatCnt, PatCnt.377
	addeq	r0, r2, #1	@,, PatCnt, PatCnt.377
.L16:
	cmp	r0, #4	@ PatCnt,
	movle	r0, #0	@, RetFlag
	movgt	r0, #1	@, RetFlag
.L6:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L7:
	ldr	r1, [r6, #0]	@ tmp161,* Sads
	ldr	ip, [r3, #4]	@ tmp163,
	cmp	r1, r7	@ tmp161, MinSad
	movne	r2, #0	@, PatCnt.349
	moveq	r2, #1	@, PatCnt.349
	cmp	ip, #0	@ tmp163,
	bne	.L19	@,
.L9:
	ldr	r1, [r6, #4]	@ tmp169,
	cmp	r1, r7	@ tmp169, MinSad
	movne	r0, r2	@, PatCnt.357, PatCnt.349
	addeq	r0, r2, #1	@,, PatCnt.357, PatCnt.349
	ldr	r2, [r3, #8]	@ tmp171,
	cmp	r2, #0	@ tmp171,
	bne	.L20	@,
.L11:
	ldr	r1, [r6, #8]	@ tmp177,
	cmp	r1, r7	@ tmp177, MinSad
	movne	r1, r0	@, PatCnt.367, PatCnt.357
	addeq	r1, r0, #1	@,, PatCnt.367, PatCnt.357
	ldr	r0, [r3, #12]	@ tmp179,
	cmp	r0, #0	@ tmp179,
	bne	.L21	@,
.L13:
	ldr	lr, [r6, #12]	@ tmp185,
	ldr	r3, [r3, #16]	@ tmp187,
	cmp	lr, r7	@ tmp185, MinSad
	movne	r2, r1	@, PatCnt.377, PatCnt.367
	addeq	r2, r1, #1	@,, PatCnt.377, PatCnt.367
	cmp	r3, #0	@ tmp187,
	beq	.L22	@,
.L15:
	ldr	ip, [r6, #16]	@ tmp192,
	mov	r0, ip, asl #5	@ tmp194, tmp192,
	cmp	r0, r8	@ tmp194, MaxSad
	movle	r0, r2	@, PatCnt, PatCnt.377
	addgt	r0, r2, #1	@,, PatCnt, PatCnt.377
	b	.L16	@
	.fnend
	.size	Check32PdPattern, .-Check32PdPattern
	.global	__aeabi_idiv
	.align	2
	.type	Detect22Pld, %function
Detect22Pld:
	.fnstart
.LFB668:
	@ args = 4, pretend = 0, frame = 152
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #156
	sub	sp, sp, #156	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r6, r3	@ Pld22LockState, Pld22LockState
	ldr	r3, [fp, #4]	@ s32DeiMdLum, s32DeiMdLum
	mov	r7, r0	@ Is2ndFld, Is2ndFld
	ldr	ip, [r6, #4]	@ tmp214,
	mov	r5, r1	@ pstFmdStatInfo, pstFmdStatInfo
	ldr	r0, [r6, #8]	@ tmp215,
	cmp	r3, #1	@ s32DeiMdLum,
	mov	r4, r2	@ pCntxt22, pCntxt22
	str	ip, [r6, #0]	@ tmp214,* Pld22LockState
	str	r0, [r6, #4]	@ tmp215,
	beq	.L137	@,
	ldr	r9, [r1, #124]	@, <variable>.frmHstBin.HISTOGRAM_BIN_2
	rsbs	r7, r7, #1	@ phase, Is2ndFld
	movcc	r7, #0	@ phase
	ldr	r8, [r2, #92]	@ lstLock, <variable>.pld22Lock
	cmp	r7, #1	@ phase,
	str	r9, [fp, #-168]	@, %sfp
	ldr	sl, [r1, #132]	@, <variable>.frmHstBin.HISTOGRAM_BIN_4
	str	sl, [fp, #-164]	@, %sfp
	ldr	r0, [r1, #128]	@, <variable>.frmHstBin.HISTOGRAM_BIN_3
	str	r0, [fp, #-160]	@, %sfp
	mov	r0, r8	@ lstLock, lstLock
	ldr	r2, [r1, #120]	@, <variable>.frmHstBin.HISTOGRAM_BIN_1
	str	r2, [fp, #-172]	@, %sfp
	ldr	ip, [r1, #0]	@, <variable>.frmITDiff
	str	ip, [fp, #-152]	@, %sfp
	beq	.L138	@,
	cmp	r3, #0	@ s32DeiMdLum,
	bne	.L65	@,
	ldr	r9, [r1, #24]	@ <variable>.frmPcc.PCC_FWD, <variable>.frmPcc.PCC_FWD
	ldr	r3, [r4, #48]	@ <variable>.field_match_weave, <variable>.field_match_weave
	ldr	sl, [r4, #52]	@ <variable>.field_nonmatch_weave, <variable>.field_nonmatch_weave
	add	r3, r9, r3	@ prephitmp.635, <variable>.frmPcc.PCC_FWD, <variable>.field_match_weave
	str	r3, [r4, #68]	@ prephitmp.635, <variable>.frame_match_weave
	ldr	r2, [r1, #28]	@ <variable>.frmPcc.PCC_BWD, <variable>.frmPcc.PCC_BWD
	ldr	r0, [r4, #56]	@ <variable>.field_pcc_crss, <variable>.field_pcc_crss
	add	r2, r2, sl	@ prephitmp.634, <variable>.frmPcc.PCC_BWD, <variable>.field_nonmatch_weave
	str	r2, [r4, #72]	@ prephitmp.634, <variable>.frame_nonmatch_weave
	ldr	r1, [r1, #32]	@ <variable>.frmPcc.PCC_CRSS, <variable>.frmPcc.PCC_CRSS
	add	r1, r1, r0	@ prephitmp.426, <variable>.frmPcc.PCC_CRSS, <variable>.field_pcc_crss
	str	r1, [r4, #76]	@ prephitmp.426, <variable>.frame_pcc_crss
	ldr	r9, [r5, #24]	@ <variable>.frmPcc.PCC_FWD, <variable>.frmPcc.PCC_FWD
	ldr	ip, [r5, #40]	@, <variable>.frmPcc.PCC_FWD_TKR
	str	ip, [fp, #-156]	@, %sfp
	str	r9, [r4, #48]	@ <variable>.frmPcc.PCC_FWD, <variable>.field_match_weave
	ldr	sl, [r5, #28]	@ <variable>.frmPcc.PCC_BWD, <variable>.frmPcc.PCC_BWD
	str	sl, [r4, #52]	@ <variable>.frmPcc.PCC_BWD, <variable>.field_nonmatch_weave
	ldr	r0, [r5, #32]	@ <variable>.frmPcc.PCC_CRSS, <variable>.frmPcc.PCC_CRSS
	str	r0, [r4, #56]	@ <variable>.frmPcc.PCC_CRSS, <variable>.field_pcc_crss
.L67:
	ldr	ip, [r5, #16]	@, <variable>.frmUm.nonmatch_UM2
	cmp	r2, r1	@ prephitmp.634, prephitmp.426
	movge	r0, r2	@ max_crss_nonmatch, prephitmp.634
	movlt	r0, r1	@ max_crss_nonmatch, prephitmp.426
	str	ip, [fp, #-196]	@, %sfp
	ldr	r9, [r5, #8]	@, <variable>.frmUm.nonmatch_UM
	ldr	ip, [r5, #4]	@ match_UM, <variable>.frmUm.match_UM
	ldr	sl, [fp, #-196]	@, %sfp
	str	r9, [fp, #-192]	@, %sfp
	cmp	r9, ip	@, match_UM
	movlt	r9, ip	@, match_UM
	ldr	r5, [r5, #12]	@ match_UM2, <variable>.frmUm.match_UM2
	str	r9, [fp, #-176]	@, %sfp
	cmp	sl, r5	@, match_UM2
	movlt	sl, r5	@, match_UM2
	cmp	r0, #4	@ max_crss_nonmatch,
	cmple	r3, #4	@, prephitmp.635,
	str	sl, [fp, #-180]	@, %sfp
	bgt	.L68	@,
	cmp	sl, #500	@,
	cmplt	r9, #500	@,,
	bge	.L69	@,
	ldr	r9, [fp, #-160]	@, %sfp
	cmp	r9, #1	@,
	ble	.L139	@,
.L69:
	cmp	r3, #120	@ prephitmp.635,
	cmple	r0, #120	@, max_crss_nonmatch,
	ble	.L71	@,
	cmp	r3, #10	@ prephitmp.635,
	movge	sl, r3	@ match_weave, prephitmp.635
	movlt	sl, #10	@ match_weave,
	cmp	r2, r1	@ prephitmp.634, prephitmp.426
	movlt	ip, r2	@ min_crss_nonmatch, prephitmp.634
	movge	ip, r1	@ min_crss_nonmatch, prephitmp.426
	mov	r5, sl, asl #2	@ tmp1165, match_weave,
	mov	r3, ip, asl #1	@ tmp1166, min_crss_nonmatch,
	cmp	r5, r3	@ tmp1165, tmp1166
	bge	.L72	@,
	cmp	ip, #120	@ min_crss_nonmatch,
	ble	.L73	@,
	cmp	r0, #800	@ max_crss_nonmatch,
	ble	.L74	@,
	add	r2, sl, sl, asl #1	@, tmp556, match_weave, match_weave,
	cmp	r3, r2	@ tmp1166, tmp556
	ble	.L74	@,
	cmp	r0, r3	@ max_crss_nonmatch, tmp1166
	bgt	.L128	@,
	mov	r1, ip, asl #2	@ tmp563, min_crss_nonmatch,
	add	r5, r1, ip	@ tmp564, tmp563, min_crss_nonmatch
	cmp	r5, r0, asl #2	@ tmp564, max_crss_nonmatch,
	ble	.L76	@,
	cmp	ip, r2	@ min_crss_nonmatch, tmp556
	ble	.L77	@,
.L129:
	add	r0, r7, r4	@ tmp689, phase, pCntxt22
	mov	r3, #0	@ anomalFlg,
	ldrb	r9, [r0, #88]	@ zero_extendqisi2	@ tmp695, <variable>.phaseCnt
	add	r2, r9, #1	@ tmp696, tmp695,
	strb	r2, [r0, #88]	@ tmp696, <variable>.phaseCnt
	b	.L70	@
.L57:
	cmp	r3, #19	@ iftmp.633,
	bgt	.L140	@,
.L60:
	mov	r9, #0	@ tmp479,
	str	r9, [r4, #92]	@ tmp479, <variable>.pld22Lock
.L59:
	ldr	r5, [r4, #12]	@ D.25655, <variable>.histFrmITDiff
	movw	sl, #:lower16:1717986919	@ tmp485,
	ldr	ip, [r4, #8]	@ D.25654, <variable>.histFrmITDiff
	movt	sl, #:upper16:1717986919	@ tmp485,
	ldr	r0, [r4, #4]	@ D.25653, <variable>.histFrmITDiff
	add	lr, r5, r1	@ tmp480, D.25655, Frame_IT_diff
	add	r9, lr, ip	@ tmp481, tmp480, D.25654
	ldr	r2, [r4, #0]	@ D.25652, <variable>.histFrmITDiff
	add	r3, r9, r0	@ tmp482, tmp481, D.25653
	ldr	r7, [r4, #20]	@ <variable>.lstFrmITDiffMean, <variable>.lstFrmITDiffMean
	add	r8, r3, r2	@ tmp483, tmp482, D.25652
	movw	r3, #:lower16:-2999	@ tmp491,
	movt	r3, #:upper16:-2999	@ tmp491,
	str	r5, [r4, #16]	@ D.25655, <variable>.histFrmITDiff
	smull	r9, lr, sl, r8	@, tmp484, tmp485, tmp483
	mov	r8, r8, asr #31	@ tmp487, tmp483,
	ldr	r9, [r4, #28]	@, <variable>.meanFrmITDiffAcc
	str	ip, [r4, #12]	@ D.25654, <variable>.histFrmITDiff
	rsb	r7, r7, r9	@ tmp488, <variable>.lstFrmITDiffMean,
	str	r0, [r4, #8]	@ D.25653, <variable>.histFrmITDiff
	str	r2, [r4, #4]	@ D.25652, <variable>.histFrmITDiff
	rsb	r8, r8, lr, asr #1	@, D.25646, tmp487, tmp484,
	str	r1, [r4, #0]	@ Frame_IT_diff, <variable>.histFrmITDiff
	add	r7, r7, r8	@ D.25641, tmp488, D.25646
	str	r8, [r4, #24]	@ D.25646, <variable>.curFrmITDiffMean
	cmp	r7, r3	@ D.25641, tmp491
	movwlt	r7, #:lower16:-3000	@ iftmp.237,
	movtlt	r7, #:upper16:-3000	@ iftmp.237,
	blt	.L62	@,
	movw	r3, #3000	@ tmp492,
	cmp	r7, r3	@ D.25641, tmp492
	movge	r7, r3	@ iftmp.237, tmp492
.L62:
	ldr	r0, [r4, #92]	@ lstLock, <variable>.pld22Lock
	str	r7, [r4, #28]	@ iftmp.237, <variable>.meanFrmITDiffAcc
	cmp	r0, #0	@ lstLock,
	str	r8, [r4, #20]	@ D.25646, <variable>.lstFrmITDiffMean
	streq	r0, [r4, #28]	@ lstLock, <variable>.meanFrmITDiffAcc
	beq	.L64	@,
	cmp	r7, #1000	@ iftmp.237,
	movge	r3, #0	@ tmp496,
	strgeb	r3, [r4, #88]	@ tmp496, <variable>.phaseCnt
	movge	r0, r3	@ lstLock, tmp496
	strgeb	r3, [r4, #89]	@ tmp496, <variable>.phaseCnt
	strge	r3, [r4, #92]	@ tmp496, <variable>.pld22Lock
.L64:
	ldr	r1, [fp, #-152]	@, %sfp
	ldr	sl, [fp, #-164]	@, %sfp
	ldr	lr, [fp, #-160]	@, %sfp
	add	r3, sl, r1, asl #1	@, tmp502,,,
	ldr	r2, [fp, #-168]	@, %sfp
	add	ip, lr, r3, asl #1	@, tmp504,, tmp502,
	add	r1, r2, ip, asl #1	@, tmp506,, tmp504,
	str	r1, [r4, #32]	@ tmp506, <variable>.lstRepfMotion
.L65:
	str	r0, [r6, #8]	@ lstLock,
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L68:
	cmp	r3, #800	@ prephitmp.635,
	ble	.L69	@,
	add	r0, r7, r4	@ tmp538, phase, pCntxt22
	mov	r3, #1	@ anomalFlg,
	ldrb	r1, [r0, #88]	@ zero_extendqisi2	@ tmp544, <variable>.phaseCnt
	sub	r5, r1, #15	@ tmp545, tmp544,
	strb	r5, [r0, #88]	@ tmp545, <variable>.phaseCnt
.L70:
	ldr	r0, [fp, #-156]	@, %sfp
	mov	r2, r0, asl #5	@ tmp1089,,
	cmp	r2, #127	@ tmp1089,
	addgt	r7, r7, r4	@ tmp1091, phase, pCntxt22
	ldrgtb	r2, [r7, #88]	@ zero_extendqisi2	@ tmp1097, <variable>.phaseCnt
	subgt	r2, r2, #5	@ tmp1098, tmp1097,
	strgtb	r2, [r7, #88]	@ tmp1098, <variable>.phaseCnt
	cmp	r3, #1	@ anomalFlg,
	ldrsb	ip, [r4, #88]	@ <variable>.phaseCnt, <variable>.phaseCnt
	ldreq	r0, [r4, #36]	@ <variable>.anomalCnt, <variable>.anomalCnt
	movne	r0, #0	@ iftmp.239,
	ldrsb	sl, [r4, #89]	@ <variable>.phaseCnt, <variable>.phaseCnt
	addeq	r0, r0, #1	@ iftmp.239, <variable>.anomalCnt,
	cmp	ip, #32	@ <variable>.phaseCnt,
	movge	ip, #32	@ iftmp.629,
	bic	r1, ip, ip, asr #31	@ tmp1106, iftmp.629
	cmp	sl, #32	@ <variable>.phaseCnt,
	movge	sl, #32	@ iftmp.630,
	bic	r5, sl, sl, asr #31	@ tmp1113, iftmp.630
	str	r0, [r4, #36]	@ iftmp.239, <variable>.anomalCnt
	uxtb	r7, r1	@ iftmp.240, tmp1106
	strb	r7, [r4, #88]	@ iftmp.240, <variable>.phaseCnt
	uxtb	r2, r5	@ iftmp.241, tmp1113
	strb	r2, [r4, #89]	@ iftmp.241, <variable>.phaseCnt
	sxtb	r1, r7	@ iftmp.240, iftmp.240
	cmp	r1, #24	@ iftmp.240,
	ble	.L119	@,
	sxtb	r2, r2	@ iftmp.241, iftmp.241
	cmp	r2, #24	@ iftmp.241,
	movgt	r2, #1	@ tmp1117,
	strgt	r2, [r4, #92]	@ tmp1117, <variable>.pld22Lock
	ble	.L120	@,
.L121:
	ldr	r1, [fp, #-152]	@, %sfp
	movw	sl, #:lower16:1717986919	@ tmp1126,
	ldr	ip, [r4, #12]	@ D.25782, <variable>.histFrmITDiff
	movt	sl, #:upper16:1717986919	@ tmp1126,
	ldr	r0, [r4, #8]	@ D.25781, <variable>.histFrmITDiff
	add	r7, ip, r1	@ tmp1121, D.25782,
	ldr	r9, [r4, #4]	@, <variable>.histFrmITDiff
	add	r5, r7, r0	@ tmp1122, tmp1121, D.25781
	ldr	r2, [r4, #0]	@, <variable>.histFrmITDiff
	add	r1, r5, r9	@ tmp1123, tmp1122,
	str	ip, [r4, #16]	@ D.25782, <variable>.histFrmITDiff
	add	r7, r1, r2	@ tmp1124, tmp1123,
	ldr	r1, [r4, #28]	@, <variable>.meanFrmITDiffAcc
	str	r0, [r4, #12]	@ D.25781, <variable>.histFrmITDiff
	movw	r2, #:lower16:-3000	@ tmp1132,
	smull	r9, sl, sl, r7	@, tmp1125, tmp1126, tmp1124
	mov	r7, r7, asr #31	@ tmp1128, tmp1124,
	ldr	r9, [r4, #20]	@, <variable>.lstFrmITDiffMean
	movt	r2, #:upper16:-3000	@ tmp1132,
	ldr	r0, [r4, #4]	@, <variable>.histFrmITDiff
	ldr	ip, [r4, #0]	@, <variable>.histFrmITDiff
	rsb	r5, r9, r1	@ tmp1129,,
	movw	r1, #3000	@ tmp1133,
	rsb	r7, r7, sl, asr #1	@, D.25773, tmp1128, tmp1125,
	str	r0, [r4, #8]	@, <variable>.histFrmITDiff
	add	r5, r5, r7	@ iftmp.631, tmp1129, D.25773
	str	r7, [r4, #20]	@ D.25773, <variable>.lstFrmITDiffMean
	cmp	r5, r2	@ iftmp.631, tmp1132
	movlt	r5, r2	@ iftmp.631, tmp1132
	str	ip, [r4, #4]	@, <variable>.histFrmITDiff
	ldr	sl, [fp, #-152]	@, %sfp
	cmp	r5, r1	@ iftmp.631, tmp1133
	movge	r5, r1	@ iftmp.242, tmp1133
	cmp	r5, #1000	@ iftmp.242,
	cmpge	r8, #1	@, lstLock,
	str	r7, [r4, #24]	@ D.25773, <variable>.curFrmITDiffMean
	str	r5, [r4, #28]	@ iftmp.242, <variable>.meanFrmITDiffAcc
	str	sl, [r4, #0]	@, <variable>.histFrmITDiff
	bne	.L123	@,
	cmp	r3, #0	@ anomalFlg,
	bne	.L141	@,
.L123:
	ldr	r0, [r4, #92]	@ lstLock, <variable>.pld22Lock
	cmp	r0, #1	@ lstLock,
	cmpeq	r8, #0	@, lstLock,
	moveq	r3, #0	@ tmp1155,
	streq	r3, [r4, #28]	@ tmp1155, <variable>.meanFrmITDiffAcc
.L124:
	ldr	r5, [fp, #-164]	@, %sfp
	ldr	r9, [fp, #-160]	@, %sfp
	add	sl, r9, r5, asl #1	@, tmp1157,,,
	ldr	r9, [fp, #-168]	@, %sfp
	add	r2, r9, sl, asl #1	@, tmp1159,, tmp1157,
	ldr	sl, [fp, #-172]	@, %sfp
	add	ip, sl, r2, asl #1	@, tmp1161,, tmp1159,
	str	ip, [r4, #32]	@ tmp1161, <variable>.lstRepfMotion
	b	.L65	@
.L119:
	cmp	r1, #19	@ iftmp.240,
	ble	.L122	@,
	sxtb	r2, r2	@ iftmp.241, iftmp.241
.L120:
	cmp	r2, #19	@ iftmp.241,
	bgt	.L121	@,
.L122:
	mov	r9, #0	@ tmp1120,
	str	r9, [r4, #92]	@ tmp1120, <variable>.pld22Lock
	b	.L121	@
.L138:
	cmp	r3, #0	@ s32DeiMdLum,
	bne	.L65	@,
	ldr	r1, [r1, #20]	@ <variable>.frmPcc.PCC_FFWD, <variable>.frmPcc.PCC_FFWD
	ldr	r3, [r4, #68]	@ prephitmp.635, <variable>.frame_match_weave
	ldr	r2, [r4, #72]	@ prephitmp.634, <variable>.frame_nonmatch_weave
	str	r1, [r4, #48]	@ <variable>.frmPcc.PCC_FFWD, <variable>.field_match_weave
	ldr	ip, [r5, #24]	@ <variable>.frmPcc.PCC_FWD, <variable>.frmPcc.PCC_FWD
	ldr	r1, [r4, #76]	@ prephitmp.426, <variable>.frame_pcc_crss
	str	ip, [r4, #52]	@ <variable>.frmPcc.PCC_FWD, <variable>.field_nonmatch_weave
	ldr	r9, [r5, #32]	@ <variable>.frmPcc.PCC_CRSS, <variable>.frmPcc.PCC_CRSS
	str	r9, [r4, #56]	@ <variable>.frmPcc.PCC_CRSS, <variable>.field_pcc_crss
	ldr	sl, [r5, #44]	@, <variable>.frmPcc.PCC_BWD_TKR
	str	sl, [fp, #-156]	@, %sfp
	b	.L67	@
.L141:
	mov	r3, #0	@ tmp1142,
	strb	r3, [r4, #88]	@ tmp1142, <variable>.phaseCnt
	strb	r3, [r4, #89]	@ tmp1142, <variable>.phaseCnt
	mov	r0, r3	@ lstLock, tmp1142
	str	r3, [r4, #92]	@ tmp1142, <variable>.pld22Lock
	b	.L124	@
.L71:
	movw	r1, #5499	@ tmp722,
	cmp	ip, r1	@ match_UM, tmp722
	cmple	r5, r1	@, match_UM2, tmp722
	bgt	.L128	@,
	cmp	r3, #39	@ prephitmp.635,
	ble	.L88	@,
	cmp	r3, r2, asl #1	@ prephitmp.635, prephitmp.634,
	bge	.L128	@,
.L88:
	ldr	r9, [fp, #-192]	@, %sfp
	add	sl, ip, ip, asl #2	@, tmp741, match_UM, match_UM,
	ldr	r0, [fp, #-176]	@, %sfp
	movw	r3, #2500	@ tmp737,
	mov	r2, r9, asl #2	@ tmp742,,
	cmp	r0, r3	@, tmp737
	cmpgt	sl, r2	@, tmp741, tmp742
	movle	r1, #0	@, tmp747
	movgt	r1, #1	@, tmp747
	bgt	.L128	@,
	ldr	r9, [fp, #-196]	@, %sfp
	add	sl, r5, r5, asl #2	@,, match_UM2, match_UM2,
	str	sl, [fp, #-184]	@, %sfp
	mov	r0, r9, asl #2	@ tmp759,,
	ldr	r9, [fp, #-180]	@, %sfp
	cmp	r9, r3	@, tmp737
	cmpgt	sl, r0	@,, tmp759
	addgt	r2, r7, r4	@ tmp766, phase, pCntxt22
	movle	r3, #0	@, tmp764
	movgt	r3, #1	@, tmp764
	movgt	r3, #1	@ anomalFlg,
	strgtb	r1, [r2, #88]	@ tmp747, <variable>.phaseCnt
	bgt	.L70	@,
	ldr	sl, [fp, #-176]	@, %sfp
	movw	r1, #10000	@ tmp770,
	cmp	sl, r1	@, tmp770
	ble	.L91	@,
	ldr	r9, [fp, #-192]	@, %sfp
	mov	r2, r9, asl #1	@ tmp771,,
	cmp	r2, ip, asl #4	@ tmp771, match_UM,
	ble	.L92	@,
	ldr	r2, [fp, #-180]	@, %sfp
	cmp	r2, r1	@, tmp770
	ble	.L93	@,
	ldr	r0, [fp, #-196]	@, %sfp
	mov	r1, r5, asl #4	@ tmp775, match_UM2,
	cmp	r1, r0, asl #1	@ tmp775,,
	blt	.L130	@,
.L114:
	cmp	r8, #1	@ lstLock,
	beq	.L142	@,
.L110:
	add	ip, r7, r4	@ tmp1080, phase, pCntxt22
	mov	r3, #1	@ anomalFlg,
	ldrb	r9, [ip, #88]	@ zero_extendqisi2	@ tmp1086, <variable>.phaseCnt
	sub	r2, r9, #1	@ tmp1087, tmp1086,
	strb	r2, [ip, #88]	@ tmp1087, <variable>.phaseCnt
	b	.L70	@
.L72:
	add	r3, r3, ip	@ tmp705, tmp1166, min_crss_nonmatch
	cmp	r5, r3	@ tmp1165, tmp705
	ble	.L109	@,
.L128:
	add	r5, r7, r4	@ tmp749, phase, pCntxt22
	mov	ip, #0	@ tmp751,
	mov	r3, #1	@ anomalFlg,
	strb	ip, [r5, #88]	@ tmp751, <variable>.phaseCnt
	b	.L70	@
.L137:
	add	r1, r1, #20	@, pstFmdStatInfo,
	mov	r2, #100	@,
	sub	r0, fp, #144	@,,
	rsbs	r7, r7, #1	@ phase, Is2ndFld
	movcc	r7, #0	@ phase
	bl	memcpy	@
	ldr	r8, [fp, #-120]	@, pcc_stat.PCC_BWD_TKR
	ldr	r1, [r5, #0]	@ Frame_IT_diff, <variable>.frmITDiff
	cmp	r7, #1	@ phase,
	ldr	r9, [fp, #-136]	@ pcc_stat$PCC_BWD.632, pcc_stat.PCC_BWD
	str	r8, [fp, #-156]	@, %sfp
	ldr	r2, [r5, #124]	@, <variable>.frmHstBin.HISTOGRAM_BIN_2
	ldmib	r5, {r8, sl}	@ phole ldm
	str	r2, [fp, #-160]	@, %sfp
	ldr	r2, [r5, #132]	@, <variable>.frmHstBin.HISTOGRAM_BIN_4
	ldr	r0, [fp, #-132]	@ pcc_stat$PCC_CRSS, pcc_stat.PCC_CRSS
	ldr	r3, [fp, #-140]	@ pcc_stat$PCC_FWD, pcc_stat.PCC_FWD
	moveq	r3, r9	@ pcc_stat$PCC_FWD, pcc_stat$PCC_BWD.632
	str	r2, [fp, #-152]	@, %sfp
	ldr	r2, [r5, #128]	@, <variable>.frmHstBin.HISTOGRAM_BIN_3
	ldr	ip, [fp, #-124]	@ pcc_stat$PCC_FWD_TKR, pcc_stat.PCC_FWD_TKR
	ldreq	ip, [fp, #-156]	@ pcc_stat$PCC_FWD_TKR, %sfp
	str	r2, [fp, #-164]	@, %sfp
	movne	r2, r9	@ pcc_stat$PCC_BWD, pcc_stat$PCC_BWD.632
	ldr	r5, [r5, #120]	@, <variable>.frmHstBin.HISTOGRAM_BIN_1
	str	r5, [fp, #-168]	@, %sfp
	ldreq	r0, [r4, #40]	@ pcc_stat$PCC_CRSS, <variable>.lstPcc_Crss
	ldreq	r2, [r4, #44]	@ pcc_stat$PCC_BWD, <variable>.lstnonmatch_weave
	strne	r0, [r4, #40]	@ pcc_stat$PCC_CRSS, <variable>.lstPcc_Crss
	strne	r9, [r4, #44]	@ pcc_stat$PCC_BWD.632, <variable>.lstnonmatch_weave
	cmp	r0, r2	@ pcc_stat$PCC_CRSS, pcc_stat$PCC_BWD
	movlt	r5, r0	@ tmp221, pcc_stat$PCC_CRSS
	movge	r5, r2	@ tmp221, pcc_stat$PCC_BWD
	cmp	r3, #80	@ pcc_stat$PCC_FWD,
	cmple	r2, #80	@, pcc_stat$PCC_BWD,
	mov	r5, r5, asl #1	@, tmp221,
	str	r5, [fp, #-172]	@, %sfp
	ble	.L27	@,
	add	sl, r3, r3, asl #1	@, tmp231, pcc_stat$PCC_FWD, pcc_stat$PCC_FWD,
	mov	r8, r2, asl #1	@ tmp1164, pcc_stat$PCC_BWD,
	cmp	sl, r8	@ tmp231, tmp1164
	bgt	.L143	@,
	add	lr, r2, r2, asl #2	@, tmp240, pcc_stat$PCC_BWD, pcc_stat$PCC_BWD,
	add	r5, lr, lr, lsr #31	@, tmp243, tmp240, tmp240,
	cmp	r0, r5, asr #1	@ pcc_stat$PCC_CRSS, tmp243,
	bgt	.L49	@,
	cmp	r0, #1000	@ pcc_stat$PCC_CRSS,
	ble	.L31	@,
	add	sl, r0, r0, asl #2	@, tmp247, pcc_stat$PCC_CRSS, pcc_stat$PCC_CRSS,
	rsb	r5, r2, r2, asl #3	@, tmp250, pcc_stat$PCC_BWD, pcc_stat$PCC_BWD,
	cmp	sl, r5	@ tmp247, tmp250
	bge	.L49	@,
.L31:
	cmp	r3, #99	@ pcc_stat$PCC_FWD,
	ble	.L32	@,
	cmp	r3, #500	@ pcc_stat$PCC_FWD,
	add	r2, r7, r4	@ tmp1167, phase, pCntxt22
	movlt	r8, r3, asr #31	@ tmp269, pcc_stat$PCC_FWD,
	movwlt	r5, #:lower16:1374389535	@ tmp267,
	movtlt	r5, #:upper16:1374389535	@ tmp267,
	ldrb	r0, [r2, #88]	@ zero_extendqisi2	@ temp.438, <variable>.phaseCnt
	movge	r3, #5	@ iftmp.230,
	smulllt	r9, r3, r5, r3	@, tmp266, tmp267, pcc_stat$PCC_FWD
	rsblt	r3, r8, r3, asr #5	@, tmp265, tmp269, tmp266,
	uxtblt	r3, r3	@ iftmp.230, tmp265
	rsb	r3, r3, r0	@ tmp274, iftmp.230, temp.438
	strb	r3, [r2, #88]	@ tmp274, <variable>.phaseCnt
	mov	r3, #1	@ anomalFlg,
	b	.L29	@
.L27:
	movw	r5, #5499	@ tmp342,
	cmp	r8, r5	@ um_stat$match_UM, tmp342
	bgt	.L43	@,
	cmp	sl, #0	@ nonmatch_UM,
	movne	r5, sl	@ nonmatch_UM.452, nonmatch_UM
	moveq	r5, #20	@ nonmatch_UM.452,
	cmp	r8, r5	@ um_stat$match_UM, nonmatch_UM.452
	bgt	.L43	@,
	cmp	r3, #39	@ pcc_stat$PCC_FWD,
	ble	.L46	@,
	cmp	r3, r2, asl #1	@ pcc_stat$PCC_FWD, pcc_stat$PCC_BWD,
	bge	.L43	@,
.L46:
	cmp	r0, #80	@ pcc_stat$PCC_CRSS,
	ble	.L47	@,
	rsb	r3, r0, r2	@ tmp349, pcc_stat$PCC_CRSS, pcc_stat$PCC_BWD
	ldr	r0, [fp, #-172]	@, %sfp
	cmp	r3, #0	@ tmp349,
	add	r2, r0, #50	@ tmp351,,
	rsblt	r3, r3, #0	@ tmp350, tmp349
	cmp	r3, r2	@ tmp350, tmp351
	ble	.L47	@,
	ldr	r2, [r4, #32]	@ temp.456, <variable>.lstRepfMotion
	cmp	r2, #10	@ temp.456,
	ble	.L47	@,
	ldr	r3, [r4, #92]	@ <variable>.pld22Lock, <variable>.pld22Lock
	cmp	r3, #1	@ <variable>.pld22Lock,
	beq	.L144	@,
	movw	r8, #5000	@ tmp367,
	cmp	r2, r8	@ temp.456, tmp367
	ble	.L41	@,
	add	r0, r7, r4	@ tmp369, phase, pCntxt22
	ldr	sl, [r4, #36]	@ <variable>.anomalCnt, <variable>.anomalCnt
	mov	r3, #1	@ anomalFlg,
	ldrb	lr, [r0, #88]	@ zero_extendqisi2	@ tmp378, <variable>.phaseCnt
	mvn	r2, sl	@ tmp376, <variable>.anomalCnt
	add	r2, lr, r2	@ tmp380, tmp378, tmp376
	strb	r2, [r0, #88]	@ tmp380, <variable>.phaseCnt
	b	.L29	@
.L43:
	add	r2, r7, r4	@ tmp345, phase, pCntxt22
	mov	r3, #1	@ anomalFlg,
	mov	r0, #0	@ tmp347,
	strb	r0, [r2, #88]	@ tmp347, <variable>.phaseCnt
.L29:
	mov	ip, ip, asl #5	@ tmp448, pcc_stat$PCC_FWD_TKR,
	cmp	ip, #127	@ tmp448,
	addgt	r7, r7, r4	@ tmp450, phase, pCntxt22
	ldrgtb	r2, [r7, #88]	@ zero_extendqisi2	@ tmp456, <variable>.phaseCnt
	subgt	r2, r2, #5	@ tmp457, tmp456,
	strgtb	r2, [r7, #88]	@ tmp457, <variable>.phaseCnt
	cmp	r3, #1	@ anomalFlg,
	movne	r0, #0	@ tmp1163,
	strne	r0, [r4, #36]	@ tmp1163, <variable>.anomalCnt
	beq	.L145	@,
.L56:
	ldrsb	r3, [r4, #88]	@ <variable>.phaseCnt, <variable>.phaseCnt
	ldrsb	r5, [r4, #89]	@ <variable>.phaseCnt, <variable>.phaseCnt
	cmp	r3, #32	@ <variable>.phaseCnt,
	movge	r3, #32	@ iftmp.235,
	str	r0, [r4, #36]	@ iftmp.234, <variable>.anomalCnt
	bic	sl, r3, r3, asr #31	@ tmp465, iftmp.235
	cmp	r5, #32	@ <variable>.phaseCnt,
	movge	r5, #32	@ iftmp.488,
	bic	lr, r5, r5, asr #31	@ tmp472, iftmp.488
	uxtb	r0, sl	@ iftmp.633, tmp465
	strb	r0, [r4, #88]	@ iftmp.633, <variable>.phaseCnt
	uxtb	r2, lr	@ iftmp.236, tmp472
	strb	r2, [r4, #89]	@ iftmp.236, <variable>.phaseCnt
	sxtb	r3, r0	@ iftmp.633, iftmp.633
	cmp	r3, #24	@ iftmp.633,
	ble	.L57	@,
	sxtb	r2, r2	@ iftmp.236, iftmp.236
	cmp	r2, #24	@ iftmp.236,
	movgt	r3, #1	@ tmp476,
	strgt	r3, [r4, #92]	@ tmp476, <variable>.pld22Lock
	bgt	.L59	@,
.L58:
	cmp	r2, #19	@ iftmp.236,
	bgt	.L59	@,
	b	.L60	@
.L139:
	ldr	sl, [fp, #-164]	@, %sfp
	cmp	sl, #1	@,
	movle	r0, #1	@ tmp536,
	strle	r0, [r4, #92]	@ tmp536, <variable>.pld22Lock
	bgt	.L69	@,
	b	.L65	@
.L143:
	add	r0, r7, r4	@ tmp234, phase, pCntxt22
	mov	r2, #0	@ tmp236,
	mov	r3, #1	@ anomalFlg,
	strb	r2, [r0, #88]	@ tmp236, <variable>.phaseCnt
	b	.L29	@
.L92:
	ldr	r9, [fp, #-192]	@, %sfp
	cmp	r9, r5, asl #1	@, match_UM2,
	bgt	.L70	@,
	mov	r0, #3	@ tmp866,
	mul	r1, r0, r5	@ tmp865, tmp866, match_UM2
	cmp	r2, r1	@ tmp771, tmp865
	bgt	.L110	@,
.L109:
	add	sl, r7, r4	@ tmp993, phase, pCntxt22
	mov	r3, #1	@ anomalFlg,
	ldrb	ip, [sl, #88]	@ zero_extendqisi2	@ tmp999, <variable>.phaseCnt
	sub	r2, ip, #5	@ tmp1000, tmp999,
	strb	r2, [sl, #88]	@ tmp1000, <variable>.phaseCnt
	b	.L70	@
.L73:
	cmp	r0, #119	@ max_crss_nonmatch,
	ble	.L128	@,
	add	r5, r3, ip	@ tmp665, tmp1166, min_crss_nonmatch
	cmp	r0, r5	@ max_crss_nonmatch, tmp665
	bgt	.L128	@,
	rsb	r3, r2, r1	@ tmp671, prephitmp.634, prephitmp.426
	cmp	r3, #0	@ tmp671,
	rsblt	r3, r3, #0	@ diff_crss_nonmatch, tmp671
	cmp	r3, #40	@ diff_crss_nonmatch,
	ble	.L85	@,
	cmp	ip, #1	@ min_crss_nonmatch,
	movge	r1, ip	@, min_crss_nonmatch
	movlt	r1, #1	@,
	bl	__aeabi_idiv	@
	add	ip, r7, r4	@ tmp673, phase, pCntxt22
	mov	r3, #1	@ anomalFlg,
	ldrb	sl, [ip, #88]	@ zero_extendqisi2	@ tmp684, <variable>.phaseCnt
	rsb	r1, r0, sl	@ tmp686,, tmp684
	strb	r1, [ip, #88]	@ tmp686, <variable>.phaseCnt
	b	.L70	@
.L140:
	sxtb	r2, r2	@ iftmp.236, iftmp.236
	b	.L58	@
.L93:
	ldr	ip, [fp, #-180]	@, %sfp
	cmp	ip, #1000	@,
	ble	.L130	@,
	cmp	r0, r5, asl #4	@ tmp759, match_UM2,
	bgt	.L130	@,
	mov	sl, #3	@ tmp826,
	mul	r3, sl, r5	@ tmp825, tmp826, match_UM2
	ldr	r5, [fp, #-196]	@, %sfp
	cmp	r3, r5, asl #1	@ tmp825,,
	bge	.L114	@,
.L77:
	mov	r3, #1	@ anomalFlg,
	b	.L70	@
.L145:
	ldr	r7, [r4, #36]	@ <variable>.anomalCnt, <variable>.anomalCnt
	add	r0, r7, #1	@ iftmp.233, <variable>.anomalCnt,
	str	r0, [r4, #36]	@ iftmp.233, <variable>.anomalCnt
	cmp	r0, #0	@ iftmp.233,
	movle	r0, #0	@ iftmp.234,
	ble	.L56	@,
	cmp	r0, #50	@ iftmp.233,
	movge	r0, #50	@ iftmp.234,
	b	.L56	@
.L49:
	add	r0, r7, r4	@ tmp439, phase, pCntxt22
	mov	r3, #1	@ anomalFlg,
	ldrb	r2, [r0, #88]	@ zero_extendqisi2	@ tmp445, <variable>.phaseCnt
	sub	r2, r2, #1	@ tmp446, tmp445,
	strb	r2, [r0, #88]	@ tmp446, <variable>.phaseCnt
	b	.L29	@
.L74:
	cmp	r0, r3	@ max_crss_nonmatch, tmp1166
	bgt	.L128	@,
	mov	r2, r0, asl #1	@ tmp624, max_crss_nonmatch,
	add	r0, r2, r0	@ tmp625, tmp624, max_crss_nonmatch
	cmp	r0, ip, asl #2	@ tmp625, min_crss_nonmatch,
	bge	.L81	@,
	add	r1, r5, sl	@ tmp628, tmp1165, match_weave
	cmp	r3, r1	@ tmp1166, tmp628
	bgt	.L129	@,
	mov	r3, #1	@ anomalFlg,
	b	.L70	@
.L47:
	cmp	sl, #1000	@ nonmatch_UM,
	ble	.L49	@,
	mov	r8, r8, asl #4	@ D.25672, um_stat$match_UM,
	mov	r3, sl, asl #1	@ D.25673, nonmatch_UM,
	cmp	r3, r8	@ D.25673, D.25672
	ble	.L50	@,
	movw	r3, #9000	@ tmp387,
	cmp	sl, r3	@ nonmatch_UM, tmp387
	ble	.L41	@,
.L126:
	add	r0, r7, r4	@ tmp389, phase, pCntxt22
	mov	r3, #0	@ anomalFlg,
	ldrb	r5, [r0, #88]	@ zero_extendqisi2	@ tmp395, <variable>.phaseCnt
	add	r2, r5, #1	@ tmp396, tmp395,
	strb	r2, [r0, #88]	@ tmp396, <variable>.phaseCnt
	b	.L29	@
.L32:
	mov	r5, r3, asl #3	@, pcc_stat$PCC_FWD,
	str	r5, [fp, #-180]	@, %sfp
	cmp	r2, r5	@ pcc_stat$PCC_BWD,
	blt	.L35	@,
	cmp	r3, #10	@ pcc_stat$PCC_FWD,
	movge	lr, r3	@, pcc_stat$PCC_FWD
	movlt	lr, #10	@,
	mov	sl, r0, asl #1	@, pcc_stat$PCC_CRSS,
	cmp	sl, lr, asl #3	@,,
	bge	.L36	@,
.L35:
	ldr	sl, [fp, #-172]	@ tmp281, %sfp
	rsb	r5, r0, r2	@ tmp279, pcc_stat$PCC_CRSS, pcc_stat$PCC_BWD
	cmp	sl, #150	@ tmp281,
	movlt	sl, #150	@ tmp281,
	cmp	r5, #0	@ tmp279,
	rsblt	r5, r5, #0	@, tmp279
	add	lr, sl, #50	@, tmp281,
	cmp	r5, lr	@,
	ble	.L36	@,
	ldr	r5, [r4, #32]	@ <variable>.lstRepfMotion, <variable>.lstRepfMotion
	cmp	r5, #10	@ <variable>.lstRepfMotion,
	ble	.L36	@,
	add	r0, r7, r4	@ tmp285, phase, pCntxt22
	mov	r3, #1	@ anomalFlg,
	ldrb	r9, [r0, #88]	@ zero_extendqisi2	@ tmp291, <variable>.phaseCnt
	sub	r2, r9, #5	@ tmp292, tmp291,
	strb	r2, [r0, #88]	@ tmp292, <variable>.phaseCnt
	b	.L29	@
.L81:
	add	r3, r3, ip	@ tmp641, tmp1166, min_crss_nonmatch
	cmp	r3, r2	@ tmp641, tmp624
	bgt	.L110	@,
	add	sl, r7, r4	@ tmp654, phase, pCntxt22
	mov	r3, #1	@ anomalFlg,
	ldrb	r9, [sl, #88]	@ zero_extendqisi2	@ tmp660, <variable>.phaseCnt
	sub	r2, r9, #2	@ tmp661, tmp660,
	strb	r2, [sl, #88]	@ tmp661, <variable>.phaseCnt
	b	.L70	@
.L36:
	ldr	r5, [fp, #-180]	@, %sfp
	cmp	r5, r8	@, tmp1164
	bge	.L37	@,
	cmp	r5, r0, asl #1	@, pcc_stat$PCC_CRSS,
	blt	.L38	@,
	ldr	r0, [r4, #32]	@ <variable>.lstRepfMotion, <variable>.lstRepfMotion
	cmp	r0, #9	@ <variable>.lstRepfMotion,
	bgt	.L37	@,
.L38:
	ldr	r2, [fp, #-152]	@, %sfp
	add	r0, r2, #100	@ tmp298,,
	cmp	r0, r3, asl #2	@ tmp298, pcc_stat$PCC_FWD,
	bge	.L126	@,
	add	r0, r7, r4	@ tmp300, phase, pCntxt22
	mov	r3, #1	@ anomalFlg,
	ldrb	r8, [r0, #88]	@ zero_extendqisi2	@ tmp306, <variable>.phaseCnt
	sub	r2, r8, #15	@ tmp307, tmp306,
	strb	r2, [r0, #88]	@ tmp307, <variable>.phaseCnt
	b	.L29	@
.L85:
	cmp	r3, #19	@ diff_crss_nonmatch,
	ble	.L129	@,
	mov	r3, #1	@ anomalFlg,
	b	.L70	@
.L37:
	add	r2, r2, #150	@ tmp319, pcc_stat$PCC_BWD,
	cmp	r3, r2	@ pcc_stat$PCC_FWD, tmp319
	bgt	.L40	@,
	add	lr, r9, #150	@ tmp320, pcc_stat$PCC_BWD.632,
	cmp	r3, lr	@ pcc_stat$PCC_FWD, tmp320
	ble	.L41	@,
.L40:
	ldr	r3, [r4, #92]	@ <variable>.pld22Lock, <variable>.pld22Lock
	add	r0, r7, r4	@ tmp323, phase, pCntxt22
	cmp	r3, #1	@ <variable>.pld22Lock,
	ldreqb	r2, [r0, #88]	@ zero_extendqisi2	@ tmp329, <variable>.phaseCnt
	movne	r3, #1	@ anomalFlg,
	ldrneb	r2, [r0, #88]	@ zero_extendqisi2	@ tmp339, <variable>.phaseCnt
	subeq	r2, r2, #1	@ tmp330, tmp329,
	subne	r2, r2, #3	@ tmp340, tmp339,
	strb	r2, [r0, #88]	@ tmp340, <variable>.phaseCnt
	b	.L29	@
.L41:
	mov	r3, #1	@ anomalFlg,
	b	.L29	@
.L91:
	ldr	sl, [fp, #-176]	@, %sfp
	cmp	sl, #1000	@,
	ble	.L101	@,
	cmp	r2, ip, asl #4	@ tmp742, match_UM,
	ble	.L102	@,
	ldr	r2, [fp, #-180]	@, %sfp
	cmp	r2, r1	@, tmp770
	ble	.L103	@,
	ldr	ip, [fp, #-196]	@, %sfp
	mov	r5, r5, asl #4	@ tmp891, match_UM2,
	cmp	r5, ip, asl #1	@ tmp891,,
	bge	.L114	@,
.L130:
	add	r0, r7, r4	@ tmp1044, phase, pCntxt22
	ldrb	ip, [r0, #88]	@ zero_extendqisi2	@ tmp1050, <variable>.phaseCnt
	add	r2, ip, #1	@ tmp1051, tmp1050,
	strb	r2, [r0, #88]	@ tmp1051, <variable>.phaseCnt
	b	.L70	@
.L50:
	ldr	r2, [r4, #92]	@ <variable>.pld22Lock, <variable>.pld22Lock
	cmp	r2, #1	@ <variable>.pld22Lock,
	bne	.L49	@,
	cmp	r3, r8	@ D.25673, D.25672
	add	r0, r7, r4	@ tmp400, phase, pCntxt22
	ldr	r8, [r4, #36]	@ <variable>.anomalCnt, <variable>.anomalCnt
	mov	r3, r2	@ anomalFlg, <variable>.pld22Lock
	ldrb	r9, [r0, #88]	@ zero_extendqisi2	@ tmp410, <variable>.phaseCnt
	mvn	r2, r8	@ tmp405, <variable>.anomalCnt
	addge	r2, r9, r2	@ tmp426, tmp424, tmp422
	addlt	r2, r9, r2, asl #1	@, tmp412, tmp410, tmp405,
	strb	r2, [r0, #88]	@ tmp426, <variable>.phaseCnt
	b	.L29	@
.L76:
	add	r2, r0, r0, asl #1	@, tmp579, max_crss_nonmatch, max_crss_nonmatch,
	cmp	r1, r2	@ tmp563, tmp579
	bgt	.L110	@,
	rsb	sl, r0, r0, asl #3	@, tmp596, max_crss_nonmatch, max_crss_nonmatch,
	cmp	sl, r5, asl #1	@ tmp596, tmp564,
	blt	.L109	@,
	add	r9, r7, r4	@ tmp608, phase, pCntxt22
	mov	r3, #1	@ anomalFlg,
	ldrb	r5, [r9, #88]	@ zero_extendqisi2	@ tmp614, <variable>.phaseCnt
	sub	ip, r5, #15	@ tmp615, tmp614,
	strb	ip, [r9, #88]	@ tmp615, <variable>.phaseCnt
	b	.L70	@
.L101:
	beq	.L110	@,
	ldr	r9, [fp, #-180]	@, %sfp
	cmp	r9, r1	@, tmp770
	ble	.L111	@,
	ldr	r1, [fp, #-196]	@, %sfp
	mov	r5, r5, asl #4	@ tmp1004, match_UM2,
	cmp	r5, r1, asl #1	@ tmp1004,,
	bge	.L114	@,
	b	.L130	@
.L102:
	mov	r3, #3	@ tmp981,
	ldr	r0, [fp, #-192]	@, %sfp
	mul	r1, r3, r5	@ tmp980, tmp981, match_UM2
	cmp	r1, r0, asl #1	@ tmp980,,
	bge	.L109	@,
	b	.L110	@
.L111:
	ldr	sl, [fp, #-180]	@, %sfp
	cmp	sl, #1000	@,
	ble	.L77	@,
	cmp	r0, r5, asl #4	@ tmp759, match_UM2,
	ble	.L114	@,
	b	.L130	@
.L103:
	ldr	r9, [fp, #-180]	@, %sfp
	cmp	r9, #1000	@,
	ble	.L130	@,
	cmp	r0, r5, asl #4	@ tmp759, match_UM2,
	bgt	.L130	@,
	mov	r0, #3	@ tmp942,
	ldr	r1, [fp, #-196]	@, %sfp
	mul	r3, r0, r5	@ tmp941, tmp942, match_UM2
	cmp	r3, r1, asl #1	@ tmp941,,
	blt	.L77	@,
	cmp	r8, #1	@ lstLock,
	bne	.L110	@,
	add	sl, r7, r4	@ tmp945, phase, pCntxt22
	ldr	r9, [r4, #36]	@ <variable>.anomalCnt, <variable>.anomalCnt
	mov	r3, #1	@ anomalFlg,
	ldrb	r5, [sl, #88]	@ zero_extendqisi2	@ tmp955, <variable>.phaseCnt
	mvn	ip, r9	@ tmp950, <variable>.anomalCnt
	add	r2, r5, ip, asl #1	@, tmp957, tmp955, tmp950,
	strb	r2, [sl, #88]	@ tmp957, <variable>.phaseCnt
	b	.L70	@
.L144:
	add	r0, r7, r4	@ tmp354, phase, pCntxt22
	ldr	r9, [r4, #36]	@ <variable>.anomalCnt, <variable>.anomalCnt
	ldrb	r5, [r0, #88]	@ zero_extendqisi2	@ tmp363, <variable>.phaseCnt
	mvn	sl, r9	@ tmp361, <variable>.anomalCnt
	add	r2, r5, sl	@ tmp365, tmp363, tmp361
	strb	r2, [r0, #88]	@ tmp365, <variable>.phaseCnt
	b	.L29	@
.L142:
	add	r9, r7, r4	@ tmp1055, phase, pCntxt22
	ldr	r0, [r4, #36]	@ <variable>.anomalCnt, <variable>.anomalCnt
	mov	r3, r8	@ anomalFlg, lstLock
	ldrb	sl, [r9, #88]	@ zero_extendqisi2	@ tmp1065, <variable>.phaseCnt
	mvn	r1, r0	@ tmp1060, <variable>.anomalCnt
	add	r5, sl, r1, asl #1	@, tmp1067, tmp1065, tmp1060,
	strb	r5, [r9, #88]	@ tmp1067, <variable>.phaseCnt
	b	.L70	@
	.fnend
	.size	Detect22Pld, .-Detect22Pld
	.align	2
	.global	PQ_MNG_GetIfmdDectInfo
	.type	PQ_MNG_GetIfmdDectInfo, %function
PQ_MNG_GetIfmdDectInfo:
	.fnstart
.LFB679:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp135,
	movt	r3, #:upper16:.LANCHOR0	@ tmp135,
	mov	r2, r0	@ pstIfmdInfo, pstIfmdInfo
	mov	r0, #0	@,
	ldr	r4, [r3, #40]	@ sg_FmdDectInfo.u32EdgeSmoothEn, sg_FmdDectInfo.u32EdgeSmoothEn
	ldr	ip, [r3, #16]	@ sg_FmdDectInfo.die_out_sel, sg_FmdDectInfo.die_out_sel
	ldr	r1, [r3, #12]	@ sg_FmdDectInfo.dir_mch, sg_FmdDectInfo.dir_mch
	ldr	r3, [r3, #24]	@ sg_FmdDectInfo.s32FieldOrder, sg_FmdDectInfo.s32FieldOrder
	str	r4, [r2, #36]	@ sg_FmdDectInfo.u32EdgeSmoothEn, <variable>.u32EdgeSmoothEn
	str	ip, [r2, #12]	@ sg_FmdDectInfo.die_out_sel, <variable>.die_out_sel
	str	r1, [r2, #8]	@ sg_FmdDectInfo.dir_mch, <variable>.dir_mch
	str	r3, [r2, #20]	@ sg_FmdDectInfo.s32FieldOrder, <variable>.s32FieldOrder
	ldmfd	sp, {r3, r4, fp, sp, pc}	@
	.fnend
	.size	PQ_MNG_GetIfmdDectInfo, .-PQ_MNG_GetIfmdDectInfo
	.align	2
	.global	PQ_MNG_SetDieOutMode
	.type	PQ_MNG_SetDieOutMode, %function
PQ_MNG_SetDieOutMode:
	.fnstart
.LFB680:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp135,
	cmp	r0, #1	@ enMode,
	movt	r3, #:upper16:.LANCHOR0	@ tmp135,
	moveq	r2, #0	@ tmp137,
	str	r0, [r3, #44]	@ enMode, sg_enDieOutMode
	streq	r2, [r3, #16]	@ tmp137, sg_FmdDectInfo.die_out_sel
	beq	.L150	@,
	cmp	r0, #2	@ enMode,
	moveq	r2, #1	@ tmp139,
	streq	r2, [r3, #16]	@ tmp139, sg_FmdDectInfo.die_out_sel
.L150:
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	PQ_MNG_SetDieOutMode, .-PQ_MNG_SetDieOutMode
	.align	2
	.global	PQ_MNG_SetFodMode
	.type	PQ_MNG_SetFodMode, %function
PQ_MNG_SetFodMode:
	.fnstart
.LFB681:
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
	movw	r3, #:lower16:.LANCHOR2	@ tmp135,
	movt	r3, #:upper16:.LANCHOR2	@ tmp135,
	str	r0, [r3, #0]	@ enMode, sg_enFodMode
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	PQ_MNG_SetFodMode, .-PQ_MNG_SetFodMode
	.align	2
	.global	PQ_MNG_GetDeiMdLum
	.type	PQ_MNG_GetDeiMdLum, %function
PQ_MNG_GetDeiMdLum:
	.fnstart
.LFB682:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp135,
	movt	r3, #:upper16:.LANCHOR0	@ tmp135,
	ldr	r0, [r3, #48]	@, sg_s32DeiMdLum
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	PQ_MNG_GetDeiMdLum, .-PQ_MNG_GetDeiMdLum
	.align	2
	.global	PQ_MNG_SetEdgeSmoothEn
	.type	PQ_MNG_SetEdgeSmoothEn, %function
PQ_MNG_SetEdgeSmoothEn:
	.fnstart
.LFB677:
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
	bl	PQ_HAL_SetEdgeSmoothEn	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	PQ_MNG_SetEdgeSmoothEn, .-PQ_MNG_SetEdgeSmoothEn
	.align	2
	.global	PQ_MNG_SetIFmdInfo
	.type	PQ_MNG_SetIFmdInfo, %function
PQ_MNG_SetIFmdInfo:
	.fnstart
.LFB676:
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
	mov	r4, r1	@ pstCfg, pstCfg
	mov	r5, r0	@ u32HandleNo, u32HandleNo
	sub	ip, fp, #68	@ tmp145,,
	ldmia	r4!, {r0, r1, r2, r3}	@ pstCfg,,,,
	movw	lr, #:lower16:.LANCHOR0	@ tmp140,
	movt	lr, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r6, [lr, #44]	@ sg_enDieOutMode.269, sg_enDieOutMode
	mov	lr, ip	@ tmp138, tmp145
	stmia	lr!, {r0, r1, r2, r3}	@ tmp138,,,,
	cmp	r6, #1	@ sg_enDieOutMode.269,
	ldmia	r4!, {r0, r1, r2, r3}	@ pstCfg,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp138,,,,
	ldmia	r4, {r0, r1}	@ pstCfg,,
	mov	r3, lr	@ tmp147, tmp138
	moveq	r3, #0	@ tmp141,
	streq	r3, [fp, #-56]	@ tmp141, stNewCfg.die_out_sel
	stmia	lr, {r0, r1}	@ tmp147,,
	beq	.L160	@,
	cmp	r6, #2	@ sg_enDieOutMode.269,
	moveq	r3, #1	@ tmp142,
	streq	r3, [fp, #-56]	@ tmp142, stNewCfg.die_out_sel
.L160:
	mov	r0, r5	@, u32HandleNo
	mov	r1, ip	@, tmp145
	bl	PQ_HAL_SetIFmdInfo	@
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
	.fnend
	.size	PQ_MNG_SetIFmdInfo, .-PQ_MNG_SetIFmdInfo
	.align	2
	.global	PQ_MNG_SetIFmdEn
	.type	PQ_MNG_SetIFmdEn, %function
PQ_MNG_SetIFmdEn:
	.fnstart
.LFB674:
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
	bl	PQ_HAL_SetIFmdEn	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	PQ_MNG_SetIFmdEn, .-PQ_MNG_SetIFmdEn
	.align	2
	.global	PQ_MNG_IFMD_SofewareParaInitByHandleNo
	.type	PQ_MNG_IFMD_SofewareParaInitByHandleNo, %function
PQ_MNG_IFMD_SofewareParaInitByHandleNo:
	.fnstart
.LFB654:
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
	mov	r3, #500	@ tmp141,
	mul	r3, r3, r0	@ tmp140, tmp141, u32HandleNo
	ldr	r2, .L168	@ tmp139,
	adds	r4, r2, r3	@ pstFmdSoftInfo, tmp139, tmp140
	mvneq	r0, #0	@ D.23803,
	ldmeqfd	sp, {r4, r5, fp, sp, pc}	@
	mov	r5, #0	@ tmp142,
	add	r0, r4, #12	@, pstFmdSoftInfo,
	str	r5, [r2, r3]	@ tmp142, <variable>.u32InitFlag
	mov	r1, #456	@,
	bl	__memzero	@
	mvn	ip, #0	@ tmp145,
	add	r2, r4, #36	@ D.23809, pstFmdSoftInfo,
	mov	r3, #2	@ tmp148,
	mov	r1, #1	@ tmp149,
	mov	r0, r5	@ D.23803, tmp142
	str	r5, [r4, #468]	@ tmp142, <variable>.StillBlkCtrl.STILLBLK_THR
	strb	ip, [r4, #9]	@ tmp145, <variable>.stBtMode.g_nxtbtmode
	str	r2, [r4, #100]	@ D.23809, <variable>.stFmdCtx.pSadRd
	str	r3, [r4, #120]	@ tmp148, <variable>.stFmdCtx.FieldOrder
	strb	r1, [r4, #110]	@ tmp149, <variable>.stFmdCtx.init_symbol
	str	r2, [r4, #104]	@ D.23809, <variable>.stFmdCtx.pSadWt
	str	r5, [r4, #32]	@ tmp142, <variable>.stFmdCtx.SadCnt
	strb	ip, [r4, #113]	@ tmp145, <variable>.stFmdCtx.Last32Phase
	str	r5, [r4, #116]	@ tmp142, <variable>.stFmdCtx.SADDiffAcc
	str	r5, [r4, #444]	@ tmp142, <variable>.stFmdCtx.stRepeatHist.lst_repeat
	str	r5, [r4, #448]	@ tmp142, <variable>.stFmdCtx.stRepeatHist.cur_repeat
	str	r5, [r4, #452]	@ tmp142, <variable>.stFmdCtx.stRepeatHist.nxt_repeat
	str	r5, [r4, #456]	@ tmp142, <variable>.stFmdCtx.stDropHist.lst_drop
	str	r5, [r4, #460]	@ tmp142, <variable>.stFmdCtx.stDropHist.cur_drop
	str	r5, [r4, #464]	@ tmp142, <variable>.stFmdCtx.stDropHist.nxt_drop
	strb	ip, [r4, #4]	@ tmp145, <variable>.stRefFld.g_lstreffld
	strb	ip, [r4, #5]	@ tmp145, <variable>.stRefFld.g_curreffld
	strb	ip, [r4, #6]	@ tmp145, <variable>.stRefFld.g_nxtreffld
	strb	ip, [r4, #7]	@ tmp145, <variable>.stBtMode.g_lstbtmode
	strb	ip, [r4, #8]	@ tmp145, <variable>.stBtMode.g_curbtmode
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L169:
	.align	2
.L168:
	.word	.LANCHOR0+52
	.fnend
	.size	PQ_MNG_IFMD_SofewareParaInitByHandleNo, .-PQ_MNG_IFMD_SofewareParaInitByHandleNo
	.align	2
	.global	PQ_MNG_IFMD_GetPlayBackConfig
	.type	PQ_MNG_IFMD_GetPlayBackConfig, %function
PQ_MNG_IFMD_GetPlayBackConfig:
	.fnstart
.LFB673:
	@ args = 0, pretend = 0, frame = 784
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #796
	sub	sp, sp, #796	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r8, r1	@ tmp314, pstIfmdCalc
	sub	r5, fp, #96	@,,
	str	r5, [fp, #-812]	@, %sfp
	ldr	r3, [r8], #28	@ <variable>.u32HandleNo, <variable>.u32HandleNo
	mov	lr, #500	@ tmp298,
	mov	r7, r1	@ pstIfmdCalc, pstIfmdCalc
	mov	r4, r0	@ pIfmdTotalHardPara, pIfmdTotalHardPara
	mov	r1, #28	@,
	sub	r0, fp, #96	@,,
	mul	r9, lr, r3	@, tmp298, <variable>.u32HandleNo
	mov	r5, r2	@ pstIfmdResult, pstIfmdResult
	movw	r6, #:lower16:.LANCHOR0	@ tmp1056,
	movt	r6, #:upper16:.LANCHOR0	@ tmp1056,
	str	r9, [fp, #-760]	@, %sfp
	bl	__memzero	@
	sub	r0, fp, #748	@,,
	mov	r1, #584	@,
	bl	__memzero	@
	mov	r1, r4	@, pIfmdTotalHardPara
	mov	r2, #332	@,
	sub	r0, fp, #664	@,,
	bl	memcpy	@
	add	r1, r4, #332	@, pIfmdTotalHardPara,
	mov	r2, #168	@,
	sub	r0, fp, #332	@,,
	ldr	sl, [fp, #-760]	@, %sfp
	bl	memcpy	@
	movw	r3, #:lower16:.LANCHOR2	@ tmp324,
	movt	r3, #:upper16:.LANCHOR2	@ tmp324,
	ldr	ip, [r7, #24]	@, <variable>.bPreInfo
	add	r9, r6, #52	@ tmp295, tmp1056,
	ldr	r2, [fp, #-760]	@, %sfp
	add	r4, r9, sl	@ pstFmdSoftInfo, tmp295,
	ldr	r3, [r3, #0]	@, sg_enFodMode
	ldr	sl, [r9, r2]	@ <variable>.u32InitFlag, <variable>.u32InitFlag
	ldmia	r8, {r0, r1, r2}	@ tmp314,,,
	str	ip, [fp, #-768]	@, %sfp
	str	r3, [fp, #-772]	@, %sfp
	sub	r8, fp, #676	@,,
	str	r8, [fp, #-808]	@, %sfp
	cmp	sl, #0	@ <variable>.u32InitFlag,
	ldr	ip, [r7, #4]	@, <variable>.u32WidthY
	str	ip, [fp, #-756]	@, %sfp
	mov	ip, #1	@ tmp317,
	ldr	r3, [r7, #8]	@, <variable>.u32HeightY
	str	r3, [fp, #-764]	@, %sfp
	mov	r3, #0	@ tmp328,
	ldr	r8, [r7, #12]	@, <variable>.s32FieldOrder
	str	r8, [fp, #-776]	@, %sfp
	ldr	r8, [r7, #20]	@, <variable>.u32FrameRate
	mov	r8, r8, lsr ip	@,,
	str	r8, [fp, #-752]	@, %sfp
	ldr	r8, [fp, #-808]	@, %sfp
	ldr	r7, [r7, #16]	@ <variable>.s32FieldMode, <variable>.s32FieldMode
	stmia	r8, {r0, r1, r2}	@,,,
	str	r7, [fp, #-684]	@ <variable>.s32FieldMode, stDeiDrvPara.RefFld
	ldr	r0, [fp, #-756]	@, %sfp
	ldr	r1, [fp, #-752]	@, %sfp
	ldr	r2, [fp, #-764]	@, %sfp
	ldr	r7, [fp, #-768]	@, %sfp
	ldr	r8, [fp, #-772]	@, %sfp
	str	r0, [fp, #-704]	@, stDeiDrvPara.s32FrmWidth
	str	r1, [fp, #-668]	@, stDeiDrvPara.stVdecInfo.RealFrmRate
	str	r2, [fp, #-708]	@, stDeiDrvPara.s32FrmHeight
	str	r7, [fp, #-680]	@, stDeiDrvPara.bPreInfo
	str	r8, [fp, #-728]	@, stDeiDrvPara.FodEnable
	ldr	r0, [fp, #-776]	@, %sfp
	str	r3, [fp, #-696]	@ tmp328, stDeiDrvPara.s32Repeat
	str	ip, [fp, #-740]	@ tmp317, stDeiDrvPara.s32DeiMdLum
	str	ip, [fp, #-736]	@ tmp317, stDeiDrvPara.s32DeiMdChr
	str	r0, [fp, #-688]	@, stDeiDrvPara.BtMode
	str	ip, [fp, #-700]	@ tmp317, stDeiDrvPara.bOfflineMode
	str	ip, [fp, #-724]	@ tmp317, stDeiDrvPara.Pld22Enable
	str	ip, [fp, #-720]	@ tmp317, stDeiDrvPara.Pld32Enable
	str	r3, [fp, #-692]	@ tmp328, stDeiDrvPara.s32Drop
	beq	.L388	@,
	sub	r0, fp, #96	@,,
	mov	r1, #28	@,
	bl	__memzero	@
	ldr	r0, [fp, #-680]	@ stDeiDrvPara.bPreInfo, stDeiDrvPara.bPreInfo
	cmp	r0, #1	@ stDeiDrvPara.bPreInfo,
	beq	.L389	@,
	ldrb	sl, [r4, #7]	@ zero_extendqisi2	@ <variable>.stBtMode.g_lstbtmode, <variable>.stBtMode.g_lstbtmode
	cmp	sl, #255	@ <variable>.stBtMode.g_lstbtmode,
	beq	.L174	@,
	ldrb	r9, [r4, #8]	@ zero_extendqisi2	@ <variable>.stBtMode.g_curbtmode, <variable>.stBtMode.g_curbtmode
	cmp	r9, #255	@ <variable>.stBtMode.g_curbtmode,
	beq	.L174	@,
	ldrb	r3, [r4, #9]	@ zero_extendqisi2	@ <variable>.stBtMode.g_nxtbtmode, <variable>.stBtMode.g_nxtbtmode
	cmp	r3, #255	@ <variable>.stBtMode.g_nxtbtmode,
	beq	.L174	@,
	ldrb	ip, [r4, #4]	@ zero_extendqisi2	@ <variable>.stRefFld.g_lstreffld, <variable>.stRefFld.g_lstreffld
	cmp	ip, #255	@ <variable>.stRefFld.g_lstreffld,
	beq	.L176	@,
.L411:
	ldrb	r3, [r4, #5]	@ zero_extendqisi2	@ <variable>.stRefFld.g_curreffld, <variable>.stRefFld.g_curreffld
	cmp	r3, #255	@ <variable>.stRefFld.g_curreffld,
	ldrne	r3, [fp, #-700]	@ stDeiDrvPara.bOfflineMode, stDeiDrvPara.bOfflineMode
	beq	.L176	@,
.L177:
	cmp	r3, #0	@ stDeiDrvPara.bOfflineMode,
	ldrneb	r1, [r4, #9]	@ zero_extendqisi2	@ iftmp.258, <variable>.stBtMode.g_nxtbtmode
	ldreqb	r1, [r4, #8]	@ zero_extendqisi2	@ iftmp.258, <variable>.stBtMode.g_curbtmode
	cmp	r3, #0	@ stDeiDrvPara.bOfflineMode,
	ldrneb	r0, [r4, #6]	@ zero_extendqisi2	@ iftmp.259, <variable>.stRefFld.g_nxtreffld
	ldreqb	r0, [r4, #5]	@ zero_extendqisi2	@ iftmp.259, <variable>.stRefFld.g_curreffld
	cmp	r3, #0	@ stDeiDrvPara.bOfflineMode,
	str	r1, [r4, #20]	@ iftmp.258, <variable>.stFmdCtx.BtMode
	movne	r3, #1	@, iftmp.260,
	moveq	r3, #2	@, iftmp.260,
	ldreqb	r2, [r4, #6]	@ zero_extendqisi2	@ nxt_ref_fld, <variable>.stRefFld.g_nxtreffld
	str	r3, [r4, #28]	@ iftmp.260, <variable>.stFmdCtx.s32PbDelay
	str	r0, [r4, #24]	@ iftmp.259, <variable>.stFmdCtx.RefFld
	ldreqb	r3, [r4, #9]	@ zero_extendqisi2	@ nxt_btmode, <variable>.stBtMode.g_nxtbtmode
	ldrne	r2, [fp, #-684]	@ nxt_ref_fld, stDeiDrvPara.RefFld
	ldrne	r3, [fp, #-688]	@ nxt_btmode, stDeiDrvPara.BtMode
	cmp	r1, #0	@ iftmp.258,
	bne	.L192	@,
	subs	r8, r0, #0	@, iftmp.259,
	movne	r8, #1	@
	str	r8, [fp, #-760]	@, %sfp
.L193:
	orrs	ip, r2, r3	@ tmp379, nxt_ref_fld, nxt_btmode
	beq	.L196	@,
	cmp	r2, #1	@ nxt_ref_fld,
	cmpeq	r3, #1	@, nxt_btmode,
	movne	r0, #0	@, tmp384
	moveq	r0, #1	@, tmp384
	eor	ip, r0, #1	@ NxtIs2ndFld, tmp384,
.L196:
	ldr	r8, [fp, #-708]	@, stDeiDrvPara.s32FrmHeight
	sub	lr, fp, #56	@,,
	ldr	sl, [fp, #-704]	@, stDeiDrvPara.s32FrmWidth
	str	lr, [fp, #-816]	@, %sfp
	add	lr, lr, #4	@ tmp1068,,
	str	r8, [fp, #-788]	@, %sfp
	str	sl, [fp, #-792]	@, %sfp
	ldrh	r1, [r4, #156]	@, <variable>.stFmdCtx.sadReg
	ldrh	r2, [r4, #162]	@, <variable>.stFmdCtx.sadReg
	ldrh	r9, [r4, #168]	@, <variable>.stFmdCtx.sadReg
	strh	r1, [r4, #158]	@ movhi	@, <variable>.stFmdCtx.sadReg
	strh	r2, [r4, #164]	@ movhi	@, <variable>.stFmdCtx.sadReg
	mov	r2, #0	@ tmp394,
	ldr	r7, [fp, #-792]	@, %sfp
	ldrh	sl, [r4, #166]	@, <variable>.stFmdCtx.sadReg
	strh	r9, [r4, #170]	@ movhi	@, <variable>.stFmdCtx.sadReg
	ldrh	r0, [r4, #150]	@ <variable>.stFmdCtx.sadReg, <variable>.stFmdCtx.sadReg
	ldrh	r9, [r4, #160]	@ <variable>.stFmdCtx.sadReg, <variable>.stFmdCtx.sadReg
	mul	r3, r7, r8	@ tmp397,,
	ldrh	r8, [r4, #148]	@ <variable>.stFmdCtx.sadReg, <variable>.stFmdCtx.sadReg
	ldrh	r7, [r4, #154]	@ <variable>.stFmdCtx.sadReg, <variable>.stFmdCtx.sadReg
	str	sl, [fp, #-752]	@, %sfp
	ldr	r1, [r4, #448]	@, <variable>.stFmdCtx.stRepeatHist.cur_repeat
	ldr	sl, [r4, #452]	@, <variable>.stFmdCtx.stRepeatHist.nxt_repeat
	str	ip, [r4, #16]	@ NxtIs2ndFld, <variable>.stFmdCtx.NxtIs2ndFld
	mov	r3, r3, asr #11	@ D.26467, tmp397,
	str	r1, [r4, #444]	@, <variable>.stFmdCtx.stRepeatHist.lst_repeat
	cmp	r3, r0	@ D.26467, <variable>.stFmdCtx.sadReg
	str	sl, [r4, #448]	@, <variable>.stFmdCtx.stRepeatHist.cur_repeat
	ldr	ip, [fp, #-696]	@ stDeiDrvPara.s32Repeat, stDeiDrvPara.s32Repeat
	ldr	r1, [r4, #460]	@, <variable>.stFmdCtx.stDropHist.cur_drop
	ldr	sl, [r4, #464]	@, <variable>.stFmdCtx.stDropHist.nxt_drop
	str	ip, [r4, #452]	@ stDeiDrvPara.s32Repeat, <variable>.stFmdCtx.stRepeatHist.nxt_repeat
	str	r1, [r4, #456]	@, <variable>.stFmdCtx.stDropHist.lst_drop
	str	sl, [r4, #460]	@, <variable>.stFmdCtx.stDropHist.cur_drop
	ldr	ip, [fp, #-692]	@ stDeiDrvPara.s32Drop, stDeiDrvPara.s32Drop
	str	ip, [r4, #464]	@ stDeiDrvPara.s32Drop, <variable>.stFmdCtx.stDropHist.nxt_drop
	ldr	r1, [fp, #-760]	@, %sfp
	str	r2, [lr], #4	@ tmp394, Pld32Info
	str	r2, [lr, #0]	@ tmp394, Pld32Info
	sub	lr, fp, #512	@,,
	str	r1, [r4, #12]	@, <variable>.stFmdCtx.Is2ndFld
	str	r2, [fp, #-56]	@ tmp394, Pld32Info
	strh	r0, [r4, #152]	@ movhi	@ <variable>.stFmdCtx.sadReg, <variable>.stFmdCtx.sadReg
	str	r3, [r4, #468]	@ D.26467, <variable>.StillBlkCtrl.STILLBLK_THR
	strh	r8, [r4, #150]	@ movhi	@ <variable>.stFmdCtx.sadReg, <variable>.stFmdCtx.sadReg
	strh	r7, [r4, #156]	@ movhi	@ <variable>.stFmdCtx.sadReg, <variable>.stFmdCtx.sadReg
	strh	r9, [r4, #162]	@ movhi	@ <variable>.stFmdCtx.sadReg, <variable>.stFmdCtx.sadReg
	ldrh	sl, [lr, #-240]	@, %sfp
	ldrh	ip, [r4, #174]	@, <variable>.stFmdCtx.sadReg
	ldrh	r0, [r4, #180]	@, <variable>.stFmdCtx.sadReg
	ldrh	r1, [r4, #186]	@, <variable>.stFmdCtx.sadReg
	ldrh	r2, [r4, #192]	@, <variable>.stFmdCtx.sadReg
	ldrh	lr, [r4, #198]	@, <variable>.stFmdCtx.sadReg
	strh	sl, [r4, #168]	@ movhi	@, <variable>.stFmdCtx.sadReg
	ldrh	sl, [r4, #196]	@, <variable>.stFmdCtx.sadReg
	strh	ip, [r4, #176]	@ movhi	@, <variable>.stFmdCtx.sadReg
	strh	r0, [r4, #182]	@ movhi	@, <variable>.stFmdCtx.sadReg
	ldrh	ip, [r4, #172]	@ <variable>.stFmdCtx.sadReg, <variable>.stFmdCtx.sadReg
	ldrh	r0, [r4, #178]	@ <variable>.stFmdCtx.sadReg, <variable>.stFmdCtx.sadReg
	strh	r1, [r4, #188]	@ movhi	@, <variable>.stFmdCtx.sadReg
	strh	r2, [r4, #194]	@ movhi	@, <variable>.stFmdCtx.sadReg
	ldrh	r1, [r4, #184]	@ <variable>.stFmdCtx.sadReg, <variable>.stFmdCtx.sadReg
	ldrh	r2, [r4, #190]	@ <variable>.stFmdCtx.sadReg, <variable>.stFmdCtx.sadReg
	strh	lr, [r4, #200]	@ movhi	@, <variable>.stFmdCtx.sadReg
	str	sl, [fp, #-828]	@, %sfp
	ldrh	lr, [r4, #204]	@, <variable>.stFmdCtx.sadReg
	ldrh	sl, [r4, #202]	@, <variable>.stFmdCtx.sadReg
	strh	lr, [r4, #206]	@ movhi	@, <variable>.stFmdCtx.sadReg
	str	sl, [fp, #-756]	@, %sfp
	ldrh	lr, [r4, #210]	@, <variable>.stFmdCtx.sadReg
	ldrh	sl, [r4, #208]	@, <variable>.stFmdCtx.sadReg
	strh	lr, [r4, #212]	@ movhi	@, <variable>.stFmdCtx.sadReg
	str	sl, [fp, #-764]	@, %sfp
	ldrh	lr, [r4, #216]	@, <variable>.stFmdCtx.sadReg
	strh	lr, [r4, #218]	@ movhi	@, <variable>.stFmdCtx.sadReg
	ldrh	sl, [r4, #214]	@, <variable>.stFmdCtx.sadReg
	str	sl, [fp, #-768]	@, %sfp
	ldrh	lr, [r4, #222]	@, <variable>.stFmdCtx.sadReg
	ldrh	sl, [r4, #220]	@, <variable>.stFmdCtx.sadReg
	strh	lr, [r4, #224]	@ movhi	@, <variable>.stFmdCtx.sadReg
	sub	lr, fp, #768	@,,
	str	sl, [fp, #-772]	@, %sfp
	strh	ip, [r4, #174]	@ movhi	@ <variable>.stFmdCtx.sadReg, <variable>.stFmdCtx.sadReg
	strh	r0, [r4, #180]	@ movhi	@ <variable>.stFmdCtx.sadReg, <variable>.stFmdCtx.sadReg
	strh	r1, [r4, #186]	@ movhi	@ <variable>.stFmdCtx.sadReg, <variable>.stFmdCtx.sadReg
	strh	r2, [r4, #192]	@ movhi	@ <variable>.stFmdCtx.sadReg, <variable>.stFmdCtx.sadReg
	ldrh	sl, [lr, #-60]	@, %sfp
	sub	lr, fp, #512	@,,
	strh	sl, [r4, #198]	@ movhi	@, <variable>.stFmdCtx.sadReg
	ldrh	sl, [lr, #-244]	@, %sfp
	sub	lr, fp, #512	@,,
	strh	sl, [r4, #204]	@ movhi	@, <variable>.stFmdCtx.sadReg
	ldrh	sl, [lr, #-252]	@, %sfp
	sub	lr, fp, #768	@,,
	strh	sl, [r4, #210]	@ movhi	@, <variable>.stFmdCtx.sadReg
	ldrh	sl, [lr, #0]	@, %sfp
	sub	lr, fp, #768	@,,
	strh	sl, [r4, #216]	@ movhi	@, <variable>.stFmdCtx.sadReg
	ldrh	sl, [lr, #-4]	@, %sfp
	ldrh	lr, [r4, #228]	@, <variable>.stFmdCtx.sadReg
	strh	sl, [r4, #222]	@ movhi	@, <variable>.stFmdCtx.sadReg
	ldrh	sl, [r4, #226]	@, <variable>.stFmdCtx.sadReg
	strh	lr, [r4, #230]	@ movhi	@, <variable>.stFmdCtx.sadReg
	str	sl, [fp, #-780]	@, %sfp
	ldrh	lr, [r4, #234]	@, <variable>.stFmdCtx.sadReg
	ldrh	sl, [r4, #232]	@, <variable>.stFmdCtx.sadReg
	strh	lr, [r4, #236]	@ movhi	@, <variable>.stFmdCtx.sadReg
	str	sl, [fp, #-776]	@, %sfp
	ldrh	lr, [r4, #240]	@, <variable>.stFmdCtx.sadReg
	ldrh	sl, [r4, #238]	@, <variable>.stFmdCtx.sadReg
	strh	lr, [r4, #242]	@ movhi	@, <variable>.stFmdCtx.sadReg
	sub	lr, fp, #768	@,,
	str	sl, [fp, #-784]	@, %sfp
	ldrh	sl, [lr, #-12]	@, %sfp
	sub	lr, fp, #768	@,,
	strh	sl, [r4, #228]	@ movhi	@, <variable>.stFmdCtx.sadReg
	ldrh	sl, [lr, #-8]	@, %sfp
	sub	lr, fp, #768	@,,
	strh	sl, [r4, #234]	@ movhi	@, <variable>.stFmdCtx.sadReg
	ldrh	sl, [lr, #-16]	@, %sfp
	strh	sl, [r4, #240]	@ movhi	@, <variable>.stFmdCtx.sadReg
	ble	.L197	@,
	cmp	r3, r8	@ D.26467, <variable>.stFmdCtx.sadReg
	bgt	.L390	@,
.L197:
	mov	r8, #0	@,
	str	r8, [fp, #-796]	@, %sfp
.L198:
	ldrh	lr, [r4, #158]	@ <variable>.stFmdCtx.sadReg, <variable>.stFmdCtx.sadReg
	ldr	r8, [fp, #-512]	@ stDeiDrvPara.stFmdRtlStatPara.StillBlkInfo.BlkSad, stDeiDrvPara.stFmdRtlStatPara.StillBlkInfo.BlkSad
	cmp	r3, lr	@ D.26467, <variable>.stFmdCtx.sadReg
	strh	r8, [r4, #148]	@ movhi	@ stDeiDrvPara.stFmdRtlStatPara.StillBlkInfo.BlkSad, <variable>.stFmdCtx.sadReg
	ble	.L199	@,
	cmp	r3, r7	@ D.26467, <variable>.stFmdCtx.sadReg
	bgt	.L391	@,
.L199:
	ldrh	r7, [r4, #164]	@ <variable>.stFmdCtx.sadReg, <variable>.stFmdCtx.sadReg
	ldr	lr, [fp, #-508]	@ stDeiDrvPara.stFmdRtlStatPara.StillBlkInfo.BlkSad, stDeiDrvPara.stFmdRtlStatPara.StillBlkInfo.BlkSad
	cmp	r3, r7	@ D.26467, <variable>.stFmdCtx.sadReg
	strh	lr, [r4, #154]	@ movhi	@ stDeiDrvPara.stFmdRtlStatPara.StillBlkInfo.BlkSad, <variable>.stFmdCtx.sadReg
	ble	.L200	@,
	cmp	r3, r9	@ D.26467, <variable>.stFmdCtx.sadReg
	bgt	.L392	@,
.L200:
	ldrh	lr, [r4, #170]	@ <variable>.stFmdCtx.sadReg, <variable>.stFmdCtx.sadReg
	ldr	r7, [fp, #-504]	@ stDeiDrvPara.stFmdRtlStatPara.StillBlkInfo.BlkSad, stDeiDrvPara.stFmdRtlStatPara.StillBlkInfo.BlkSad
	cmp	r3, lr	@ D.26467, <variable>.stFmdCtx.sadReg
	strh	r7, [r4, #160]	@ movhi	@ stDeiDrvPara.stFmdRtlStatPara.StillBlkInfo.BlkSad, <variable>.stFmdCtx.sadReg
	ble	.L201	@,
	ldr	r8, [fp, #-752]	@, %sfp
	cmp	r3, r8	@ D.26467,
	bgt	.L393	@,
.L201:
	ldrh	lr, [r4, #176]	@ <variable>.stFmdCtx.sadReg, <variable>.stFmdCtx.sadReg
	ldr	r7, [fp, #-500]	@ stDeiDrvPara.stFmdRtlStatPara.StillBlkInfo.BlkSad, stDeiDrvPara.stFmdRtlStatPara.StillBlkInfo.BlkSad
	cmp	r3, lr	@ D.26467, <variable>.stFmdCtx.sadReg
	strh	r7, [r4, #166]	@ movhi	@ stDeiDrvPara.stFmdRtlStatPara.StillBlkInfo.BlkSad, <variable>.stFmdCtx.sadReg
	ble	.L202	@,
	cmp	r3, ip	@ D.26467, <variable>.stFmdCtx.sadReg
	bgt	.L394	@,
.L202:
	ldrh	lr, [r4, #182]	@ <variable>.stFmdCtx.sadReg, <variable>.stFmdCtx.sadReg
	ldr	ip, [fp, #-496]	@ stDeiDrvPara.stFmdRtlStatPara.StillBlkInfo.BlkSad, stDeiDrvPara.stFmdRtlStatPara.StillBlkInfo.BlkSad
	cmp	r3, lr	@ D.26467, <variable>.stFmdCtx.sadReg
	strh	ip, [r4, #172]	@ movhi	@ stDeiDrvPara.stFmdRtlStatPara.StillBlkInfo.BlkSad, <variable>.stFmdCtx.sadReg
	ble	.L203	@,
	cmp	r3, r0	@ D.26467, <variable>.stFmdCtx.sadReg
	bgt	.L395	@,
.L203:
	ldrh	lr, [r4, #188]	@ <variable>.stFmdCtx.sadReg, <variable>.stFmdCtx.sadReg
	ldr	r0, [fp, #-492]	@ stDeiDrvPara.stFmdRtlStatPara.StillBlkInfo.BlkSad, stDeiDrvPara.stFmdRtlStatPara.StillBlkInfo.BlkSad
	cmp	r3, lr	@ D.26467, <variable>.stFmdCtx.sadReg
	strh	r0, [r4, #178]	@ movhi	@ stDeiDrvPara.stFmdRtlStatPara.StillBlkInfo.BlkSad, <variable>.stFmdCtx.sadReg
	ble	.L204	@,
	cmp	r3, r1	@ D.26467, <variable>.stFmdCtx.sadReg
	bgt	.L396	@,
.L204:
	ldrh	r0, [r4, #194]	@ <variable>.stFmdCtx.sadReg, <variable>.stFmdCtx.sadReg
	ldr	r1, [fp, #-488]	@ stDeiDrvPara.stFmdRtlStatPara.StillBlkInfo.BlkSad, stDeiDrvPara.stFmdRtlStatPara.StillBlkInfo.BlkSad
	cmp	r3, r0	@ D.26467, <variable>.stFmdCtx.sadReg
	strh	r1, [r4, #184]	@ movhi	@ stDeiDrvPara.stFmdRtlStatPara.StillBlkInfo.BlkSad, <variable>.stFmdCtx.sadReg
	ble	.L205	@,
	cmp	r3, r2	@ D.26467, <variable>.stFmdCtx.sadReg
	bgt	.L397	@,
.L205:
	ldrh	r0, [r4, #200]	@ <variable>.stFmdCtx.sadReg, <variable>.stFmdCtx.sadReg
	ldr	lr, [fp, #-484]	@ stDeiDrvPara.stFmdRtlStatPara.StillBlkInfo.BlkSad, stDeiDrvPara.stFmdRtlStatPara.StillBlkInfo.BlkSad
	cmp	r3, r0	@ D.26467, <variable>.stFmdCtx.sadReg
	strh	lr, [r4, #190]	@ movhi	@ stDeiDrvPara.stFmdRtlStatPara.StillBlkInfo.BlkSad, <variable>.stFmdCtx.sadReg
	ble	.L206	@,
	ldr	r2, [fp, #-828]	@, %sfp
	cmp	r3, r2	@ D.26467,
	bgt	.L398	@,
.L206:
	ldrh	r2, [r4, #206]	@ <variable>.stFmdCtx.sadReg, <variable>.stFmdCtx.sadReg
	ldr	r0, [fp, #-480]	@ stDeiDrvPara.stFmdRtlStatPara.StillBlkInfo.BlkSad, stDeiDrvPara.stFmdRtlStatPara.StillBlkInfo.BlkSad
	cmp	r3, r2	@ D.26467, <variable>.stFmdCtx.sadReg
	strh	r0, [r4, #196]	@ movhi	@ stDeiDrvPara.stFmdRtlStatPara.StillBlkInfo.BlkSad, <variable>.stFmdCtx.sadReg
	ble	.L207	@,
	ldr	r8, [fp, #-756]	@, %sfp
	cmp	r3, r8	@ D.26467,
	bgt	.L399	@,
.L207:
	ldrh	r2, [r4, #212]	@ <variable>.stFmdCtx.sadReg, <variable>.stFmdCtx.sadReg
	ldr	r0, [fp, #-476]	@ stDeiDrvPara.stFmdRtlStatPara.StillBlkInfo.BlkSad, stDeiDrvPara.stFmdRtlStatPara.StillBlkInfo.BlkSad
	cmp	r3, r2	@ D.26467, <variable>.stFmdCtx.sadReg
	strh	r0, [r4, #202]	@ movhi	@ stDeiDrvPara.stFmdRtlStatPara.StillBlkInfo.BlkSad, <variable>.stFmdCtx.sadReg
	ble	.L208	@,
	ldr	sl, [fp, #-764]	@, %sfp
	cmp	r3, sl	@ D.26467,
	bgt	.L400	@,
.L208:
	ldrh	r2, [r4, #218]	@ <variable>.stFmdCtx.sadReg, <variable>.stFmdCtx.sadReg
	ldr	r0, [fp, #-472]	@ stDeiDrvPara.stFmdRtlStatPara.StillBlkInfo.BlkSad, stDeiDrvPara.stFmdRtlStatPara.StillBlkInfo.BlkSad
	cmp	r3, r2	@ D.26467, <variable>.stFmdCtx.sadReg
	strh	r0, [r4, #208]	@ movhi	@ stDeiDrvPara.stFmdRtlStatPara.StillBlkInfo.BlkSad, <variable>.stFmdCtx.sadReg
	ble	.L209	@,
	ldr	lr, [fp, #-768]	@, %sfp
	cmp	r3, lr	@ D.26467,
	bgt	.L401	@,
.L209:
	ldrh	lr, [r4, #224]	@ <variable>.stFmdCtx.sadReg, <variable>.stFmdCtx.sadReg
	ldr	r2, [fp, #-468]	@ stDeiDrvPara.stFmdRtlStatPara.StillBlkInfo.BlkSad, stDeiDrvPara.stFmdRtlStatPara.StillBlkInfo.BlkSad
	cmp	r3, lr	@ D.26467, <variable>.stFmdCtx.sadReg
	strh	r2, [r4, #214]	@ movhi	@ stDeiDrvPara.stFmdRtlStatPara.StillBlkInfo.BlkSad, <variable>.stFmdCtx.sadReg
	ble	.L210	@,
	ldr	r0, [fp, #-772]	@, %sfp
	cmp	r3, r0	@ D.26467,
	bgt	.L402	@,
.L210:
	ldrh	r0, [r4, #230]	@ <variable>.stFmdCtx.sadReg, <variable>.stFmdCtx.sadReg
	ldr	lr, [fp, #-464]	@ stDeiDrvPara.stFmdRtlStatPara.StillBlkInfo.BlkSad, stDeiDrvPara.stFmdRtlStatPara.StillBlkInfo.BlkSad
	cmp	r3, r0	@ D.26467, <variable>.stFmdCtx.sadReg
	strh	lr, [r4, #220]	@ movhi	@ stDeiDrvPara.stFmdRtlStatPara.StillBlkInfo.BlkSad, <variable>.stFmdCtx.sadReg
	ble	.L211	@,
	ldr	r8, [fp, #-780]	@, %sfp
	cmp	r3, r8	@ D.26467,
	bgt	.L403	@,
.L211:
	ldrh	r0, [r4, #236]	@ <variable>.stFmdCtx.sadReg, <variable>.stFmdCtx.sadReg
	ldr	lr, [fp, #-460]	@ stDeiDrvPara.stFmdRtlStatPara.StillBlkInfo.BlkSad, stDeiDrvPara.stFmdRtlStatPara.StillBlkInfo.BlkSad
	cmp	r3, r0	@ D.26467, <variable>.stFmdCtx.sadReg
	strh	lr, [r4, #226]	@ movhi	@ stDeiDrvPara.stFmdRtlStatPara.StillBlkInfo.BlkSad, <variable>.stFmdCtx.sadReg
	ble	.L212	@,
	ldr	sl, [fp, #-776]	@, %sfp
	cmp	r3, sl	@ D.26467,
	bgt	.L404	@,
.L212:
	ldrh	r0, [r4, #242]	@ <variable>.stFmdCtx.sadReg, <variable>.stFmdCtx.sadReg
	ldr	lr, [fp, #-456]	@ stDeiDrvPara.stFmdRtlStatPara.StillBlkInfo.BlkSad, stDeiDrvPara.stFmdRtlStatPara.StillBlkInfo.BlkSad
	cmp	r3, r0	@ D.26467, <variable>.stFmdCtx.sadReg
	strh	lr, [r4, #232]	@ movhi	@ stDeiDrvPara.stFmdRtlStatPara.StillBlkInfo.BlkSad, <variable>.stFmdCtx.sadReg
	ble	.L213	@,
	ldr	r2, [fp, #-784]	@, %sfp
	cmp	r3, r2	@ D.26467,
	bgt	.L405	@,
.L213:
	ldr	r3, [fp, #-728]	@ D.26466, stDeiDrvPara.FodEnable
	ldr	r0, [fp, #-796]	@, %sfp
	ldr	r1, [fp, #-452]	@ stDeiDrvPara.stFmdRtlStatPara.StillBlkInfo.BlkSad, stDeiDrvPara.stFmdRtlStatPara.StillBlkInfo.BlkSad
	cmp	r3, #1	@ D.26466,
	str	r0, [fp, #-516]	@, stDeiDrvPara.stFmdRtlStatPara.StillBlkInfo.StillBlkCnt
	strh	r1, [r4, #238]	@ movhi	@ stDeiDrvPara.stFmdRtlStatPara.StillBlkInfo.BlkSad, <variable>.stFmdCtx.sadReg
	beq	.L406	@,
	cmp	r3, #2	@ D.26466,
	moveq	sl, #0	@,
	streq	sl, [fp, #-764]	@, %sfp
	beq	.L217	@,
	cmp	r3, #3	@ D.26466,
	moveq	ip, #1	@,
	streq	ip, [fp, #-764]	@, %sfp
	beq	.L217	@,
.L215:
	mov	ip, #2	@,
	str	ip, [fp, #-764]	@, %sfp
.L217:
	ldr	r0, [r4, #128]	@ <variable>.stFmdCtx.ScSadBuf, <variable>.stFmdCtx.ScSadBuf
	movw	r9, #:lower16:200000	@ tmp667,
	ldr	lr, [fp, #-760]	@, %sfp
	movt	r9, #:upper16:200000	@ tmp667,
	ldr	ip, [r4, #124]	@ MaxSad, <variable>.stFmdCtx.ScSadBuf
	ldr	r1, [r4, #132]	@ <variable>.stFmdCtx.ScSadBuf, <variable>.stFmdCtx.ScSadBuf
	add	sl, lr, r4	@,, pstFmdSoftInfo
	cmp	r0, ip	@ <variable>.stFmdCtx.ScSadBuf, MaxSad
	movlt	r7, r0	@ MaxSad.1181, <variable>.stFmdCtx.ScSadBuf
	movge	r7, ip	@ MaxSad.1181, MaxSad
	str	sl, [fp, #-756]	@, %sfp
	add	r2, r0, ip	@ SadMean.1183, <variable>.stFmdCtx.ScSadBuf, MaxSad
	ldr	sl, [r4, #136]	@ <variable>.stFmdCtx.ScSadBuf, <variable>.stFmdCtx.ScSadBuf
	cmp	r1, r7	@ <variable>.stFmdCtx.ScSadBuf, MaxSad.1181
	movlt	r3, r1	@ MaxSad.1186, <variable>.stFmdCtx.ScSadBuf
	movge	r3, r7	@ MaxSad.1186, MaxSad.1181
	add	lr, r1, r2	@ SadMean.1188, <variable>.stFmdCtx.ScSadBuf, SadMean.1183
	cmp	r0, ip	@ <variable>.stFmdCtx.ScSadBuf, MaxSad
	movge	r8, r0	@ MaxSad.1182, <variable>.stFmdCtx.ScSadBuf
	movlt	r8, ip	@ MaxSad.1182, MaxSad
	ldr	r2, [r4, #140]	@ <variable>.stFmdCtx.ScSadBuf, <variable>.stFmdCtx.ScSadBuf
	cmp	r1, r8	@ <variable>.stFmdCtx.ScSadBuf, MaxSad.1182
	movge	ip, r1	@ MaxSad.1187, <variable>.stFmdCtx.ScSadBuf
	movlt	ip, r8	@ MaxSad.1187, MaxSad.1182
	add	r7, sl, lr	@ SadMean.1193, <variable>.stFmdCtx.ScSadBuf, SadMean.1188
	cmp	sl, r3	@ <variable>.stFmdCtx.ScSadBuf, MaxSad.1186
	movlt	r8, sl	@ MaxSad.1191, <variable>.stFmdCtx.ScSadBuf
	movge	r8, r3	@ MaxSad.1191, MaxSad.1186
	ldr	lr, [r4, #144]	@ <variable>.stFmdCtx.ScSadBuf, <variable>.stFmdCtx.ScSadBuf
	cmp	sl, ip	@ <variable>.stFmdCtx.ScSadBuf, MaxSad.1187
	movge	ip, sl	@ MaxSad.1192, <variable>.stFmdCtx.ScSadBuf
	movlt	ip, ip	@ MaxSad.1192, MaxSad.1187
	cmp	r2, r8	@ <variable>.stFmdCtx.ScSadBuf, MaxSad.1191
	movlt	r3, r2	@ MaxSad.1196, <variable>.stFmdCtx.ScSadBuf
	movge	r3, r8	@ MaxSad.1196, MaxSad.1191
	add	r7, r2, r7	@ SadMean.1198, <variable>.stFmdCtx.ScSadBuf, SadMean.1193
	cmp	lr, r3	@ <variable>.stFmdCtx.ScSadBuf, MaxSad.1196
	movlt	r8, lr	@ tmp653, <variable>.stFmdCtx.ScSadBuf
	movge	r8, r3	@ tmp653, MaxSad.1196
	cmp	r2, ip	@ <variable>.stFmdCtx.ScSadBuf, MaxSad.1192
	movge	ip, r2	@ MaxSad.1197, <variable>.stFmdCtx.ScSadBuf
	movlt	ip, ip	@ MaxSad.1197, MaxSad.1192
	add	r3, lr, r7	@ tmp652, <variable>.stFmdCtx.ScSadBuf, SadMean.1198
	cmp	lr, ip	@ <variable>.stFmdCtx.ScSadBuf, MaxSad.1197
	movge	ip, lr	@ tmp655, <variable>.stFmdCtx.ScSadBuf
	movlt	ip, ip	@ tmp655, MaxSad.1197
	rsb	r7, r8, r3	@ tmp654, tmp653, tmp652
	rsb	r3, ip, r7	@ D.26432, tmp655, tmp654
	ldr	r7, [fp, #-532]	@, stDeiDrvPara.stFmdRtlStatPara.frmHstBin.HISTOGRAM_BIN_4
	add	r8, r3, #3	@, D.26432,
	str	r8, [fp, #-768]	@, %sfp
	ldr	r8, [fp, #-536]	@, stDeiDrvPara.stFmdRtlStatPara.frmHstBin.HISTOGRAM_BIN_3
	cmp	r3, #0	@ D.26432,
	add	r8, r8, r7, asl #1	@,,,,
	ldr	r7, [fp, #-768]	@, %sfp
	str	r8, [fp, #-752]	@, %sfp
	str	r0, [r4, #124]	@ <variable>.stFmdCtx.ScSadBuf, <variable>.stFmdCtx.ScSadBuf
	ldr	r8, [fp, #-752]	@, %sfp
	movlt	r3, r7	@ D.26432,
	ldr	r0, [fp, #-540]	@ stDeiDrvPara.stFmdRtlStatPara.frmHstBin.HISTOGRAM_BIN_2, stDeiDrvPara.stFmdRtlStatPara.frmHstBin.HISTOGRAM_BIN_2
	mov	ip, r3, asr #2	@ tmp662, D.26432,
	str	sl, [r4, #132]	@ <variable>.stFmdCtx.ScSadBuf, <variable>.stFmdCtx.ScSadBuf
	add	r7, r0, r8, asl #1	@, tmp645, stDeiDrvPara.stFmdRtlStatPara.frmHstBin.HISTOGRAM_BIN_2,,
	str	r1, [r4, #128]	@ <variable>.stFmdCtx.ScSadBuf, <variable>.stFmdCtx.ScSadBuf
	str	r2, [r4, #136]	@ <variable>.stFmdCtx.ScSadBuf, <variable>.stFmdCtx.ScSadBuf
	mov	r3, r7, asl #1	@ CurSad, tmp645,
	str	r3, [r4, #144]	@ CurSad,
	cmp	r3, ip, asl #1	@ CurSad, tmp662,
	ldr	r1, [fp, #-760]	@, %sfp
	ldr	r8, [fp, #-756]	@, %sfp
	movle	sl, #0	@, tmp665
	movgt	sl, #1	@, tmp665
	cmp	r3, r9	@ CurSad, tmp667
	movle	r7, #0	@, tmp670
	andgt	r7, sl, #1	@,, tmp670, tmp665
	cmp	r1, #0	@,
	str	lr, [r4, #140]	@ <variable>.stFmdCtx.ScSadBuf, <variable>.stFmdCtx.ScSadBuf
	strb	r7, [r8, #111]	@ tmp670, <variable>.stFmdCtx.SceneChange
	bne	.L407	@,
.L253:
	mov	r8, #0	@,
	str	r8, [fp, #-752]	@, %sfp
.L254:
	ldr	r8, [fp, #-724]	@ stDeiDrvPara.Pld22Enable, stDeiDrvPara.Pld22Enable
	cmp	r8, #0	@ stDeiDrvPara.Pld22Enable,
	bne	.L408	@,
.L256:
	ldr	r2, [fp, #-720]	@ stDeiDrvPara.Pld32Enable, stDeiDrvPara.Pld32Enable
	cmp	r2, #0	@ stDeiDrvPara.Pld32Enable,
	bne	.L266	@,
.L381:
	mov	r7, r2	@ Pld32Info$Pd32Det.1008, Pld32Info$Pd32Det
.L267:
	ldrb	r3, [r4, #108]	@ zero_extendqisi2	@ D.26414, <variable>.stFmdCtx.MainState
	ldrb	sl, [r4, #109]	@ zero_extendqisi2	@ D.26415, <variable>.stFmdCtx.PrevMainState
	sxtb	ip, r3	@ D.26414, D.26414
	cmp	ip, #1	@ D.26414,
	beq	.L341	@,
	cmp	ip, #2	@ D.26414,
	beq	.L409	@,
	cmp	r7, #1	@ Pld32Info$Pd32Det.1008,
	beq	.L350	@,
	cmp	r8, #1	@ IsProgressive,
	beq	.L351	@,
	ldr	r9, [fp, #-816]	@, %sfp
	sub	r8, fp, #164	@,,
	str	r2, [fp, #-56]	@ Pld32Info$Pd32Det, Pld32Info.Pd32Det
	cmp	ip, #1	@ D.26414,
	str	r8, [fp, #-820]	@, %sfp
	movw	r7, #:lower16:.LANCHOR1	@ tmp1057,
	ldmia	r9, {r0, r1, r2}	@,,,
	sub	r9, fp, #68	@ tmp910,,
	strb	r3, [r4, #108]	@ D.26414, <variable>.stFmdCtx.MainState
	movt	r7, #:upper16:.LANCHOR1	@ tmp1057,
	mov	r8, ip	@ PbState, D.26414
	stmia	r9, {r0, r1, r2}	@ tmp910,,,
	ldr	r9, .L427	@,
	strb	sl, [r4, #109]	@ D.26415, <variable>.stFmdCtx.PrevMainState
	ldmia	r9!, {r0, r1, r2, r3}	@,,,,
	str	r9, [fp, #-760]	@, %sfp
	ldr	sl, [r4, #16]	@, <variable>.stFmdCtx.NxtIs2ndFld
	ldr	r9, [fp, #-740]	@, stDeiDrvPara.s32DeiMdLum
	str	sl, [fp, #-776]	@, %sfp
	ldrb	sl, [fp, #-58]	@ zero_extendqisi2	@, PdInfo.PdSubState
	str	r9, [fp, #-756]	@, %sfp
	ldr	r9, [r4, #28]	@ temp.983, <variable>.stFmdCtx.s32PbDelay
	str	sl, [fp, #-772]	@, %sfp
	ldr	sl, [fp, #-820]	@, %sfp
	stmia	sl!, {r0, r1, r2, r3}	@,,,,
	str	sl, [fp, #-768]	@, %sfp
	ldr	sl, [fp, #-760]	@, %sfp
	ldmia	sl!, {r0, r1, r2, r3}	@,,,,
	str	sl, [fp, #-760]	@, %sfp
	ldr	sl, [fp, #-768]	@, %sfp
	stmia	sl!, {r0, r1, r2, r3}	@,,,,
	ldr	r2, [fp, #-760]	@, %sfp
	ldmia	r2, {r0, r1}	@,,
	stmia	sl, {r0, r1}	@ tmp1085,,
	beq	.L354	@,
	cmp	ip, #2	@ D.26414,
	beq	.L355	@,
	cmp	ip, #0	@ D.26414,
	bne	.L378	@,
.L353:
	tst	r9, #1	@ temp.983,
	mov	r2, #0	@ tmp916,
	str	r2, [fp, #-88]	@ tmp916, stFmdRtlOutPara.DieOutSelChr
	str	r2, [fp, #-92]	@ tmp916, stFmdRtlOutPara.DieOutSelLum
	beq	.L356	@,
	ldr	ip, [fp, #-776]	@, %sfp
	rsbs	sl, ip, #1	@ tmp919,
	movcc	sl, #0	@ tmp919
	str	sl, [fp, #-96]	@ tmp919, stFmdRtlOutPara.DirMch
.L360:
	ldr	r3, [fp, #-764]	@, %sfp
	mov	ip, #0	@ tmp957,
	ldr	r1, [fp, #-752]	@, %sfp
	str	ip, [fp, #-84]	@ tmp957, stFmdRtlOutPara.EdgeSmoothEn
	str	r3, [fp, #-76]	@, stFmdRtlOutPara.s32FieldOrder
	str	r1, [fp, #-80]	@, stFmdRtlOutPara.SceneChange
.L366:
	cmp	r8, #1	@ PbState,
	mvnne	r0, #0	@ s32FilmType.989,
	beq	.L410	@,
.L368:
	ldr	ip, [fp, #-728]	@ stDeiDrvPara.FodEnable, stDeiDrvPara.FodEnable
	ldrb	r2, [r4, #8]	@ zero_extendqisi2	@ <variable>.stBtMode.g_curbtmode, <variable>.stBtMode.g_curbtmode
	ldrb	r3, [r4, #9]	@ zero_extendqisi2	@ <variable>.stBtMode.g_nxtbtmode, <variable>.stBtMode.g_nxtbtmode
	cmp	ip, #1	@ stDeiDrvPara.FodEnable,
	str	r0, [fp, #-72]	@ s32FilmType.989, stFmdRtlOutPara.s32FilmType
	strb	r2, [r4, #7]	@ <variable>.stBtMode.g_curbtmode, <variable>.stBtMode.g_lstbtmode
	strb	r3, [r4, #8]	@ <variable>.stBtMode.g_nxtbtmode, <variable>.stBtMode.g_curbtmode
	ldrne	r7, [fp, #-76]	@ stFmdRtlOutPara.s32FieldOrder, stFmdRtlOutPara.s32FieldOrder
	bne	.L369	@,
	ldr	r7, [fp, #-76]	@ stFmdRtlOutPara.s32FieldOrder, stFmdRtlOutPara.s32FieldOrder
	cmp	r7, #2	@ stFmdRtlOutPara.s32FieldOrder,
	strneb	r7, [r4, #9]	@ stFmdRtlOutPara.s32FieldOrder, <variable>.stBtMode.g_nxtbtmode
.L369:
	ldr	r8, [fp, #-812]	@ tmp980, %sfp
	add	ip, r4, #472	@ tmp979, pstFmdSoftInfo,
	ldmia	r8!, {r0, r1, r2, r3}	@ tmp980,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp979,,,,
	ldmia	r8, {r0, r1, r2}	@ tmp980,,,
	stmia	ip, {r0, r1, r2}	@ tmp1086,,,
	ldr	r1, [fp, #-684]	@ stDeiDrvPara.RefFld, stDeiDrvPara.RefFld
	ldrb	r3, [r4, #5]	@ zero_extendqisi2	@ <variable>.stRefFld.g_curreffld, <variable>.stRefFld.g_curreffld
	ldrb	r0, [r4, #6]	@ zero_extendqisi2	@ <variable>.stRefFld.g_nxtreffld, <variable>.stRefFld.g_nxtreffld
	strb	r1, [r4, #6]	@ stDeiDrvPara.RefFld, <variable>.stRefFld.g_nxtreffld
	strb	r3, [r4, #4]	@ <variable>.stRefFld.g_curreffld, <variable>.stRefFld.g_lstreffld
	strb	r0, [r4, #5]	@ <variable>.stRefFld.g_nxtreffld, <variable>.stRefFld.g_curreffld
	b	.L172	@
.L174:
	ldrb	ip, [r4, #4]	@ zero_extendqisi2	@ <variable>.stRefFld.g_lstreffld, <variable>.stRefFld.g_lstreffld
	ldr	r7, [fp, #-688]	@ stDeiDrvPara.BtMode, stDeiDrvPara.BtMode
	cmp	ip, #255	@ <variable>.stRefFld.g_lstreffld,
	strb	r7, [r4, #9]	@ stDeiDrvPara.BtMode, <variable>.stBtMode.g_nxtbtmode
	strb	r7, [r4, #7]	@ stDeiDrvPara.BtMode, <variable>.stBtMode.g_lstbtmode
	strb	r7, [r4, #8]	@ stDeiDrvPara.BtMode, <variable>.stBtMode.g_curbtmode
	bne	.L411	@,
.L176:
	ldr	r3, [fp, #-700]	@ stDeiDrvPara.bOfflineMode, stDeiDrvPara.bOfflineMode
	cmp	r3, #0	@ stDeiDrvPara.bOfflineMode,
	bne	.L412	@,
	ldr	r2, [fp, #-688]	@ stDeiDrvPara.BtMode, stDeiDrvPara.BtMode
	uxtb	r1, r2	@ iftmp.255, stDeiDrvPara.BtMode
.L179:
	cmp	r3, #0	@ stDeiDrvPara.bOfflineMode,
	strb	r1, [r4, #4]	@ iftmp.255, <variable>.stRefFld.g_lstreffld
	uxtbne	r1, r2	@ iftmp.256, stDeiDrvPara.BtMode
	bne	.L181	@,
	rsbs	r1, r2, #1	@ iftmp.256, stDeiDrvPara.BtMode
	movcc	r1, #0	@ iftmp.256
.L181:
	cmp	r3, #0	@ stDeiDrvPara.bOfflineMode,
	strb	r1, [r4, #5]	@ iftmp.256, <variable>.stRefFld.g_curreffld
	uxtbeq	r2, r2	@ iftmp.257, stDeiDrvPara.BtMode
	beq	.L183	@,
	rsbs	r2, r2, #1	@ iftmp.257, stDeiDrvPara.BtMode
	movcc	r2, #0	@ iftmp.257
.L183:
	strb	r2, [r4, #6]	@ iftmp.257, <variable>.stRefFld.g_nxtreffld
	b	.L177	@
.L388:
	add	r1, r4, #472	@, pstFmdSoftInfo,
	ldr	r4, [fp, #-812]	@ tmp338, %sfp
	ldr	r8, [fp, #-760]	@, %sfp
	mov	r7, r0	@ stFmdRtlOutPara.s32FieldOrder,
	str	sl, [fp, #-84]	@ <variable>.u32InitFlag, stFmdRtlOutPara.EdgeSmoothEn
	str	r1, [fp, #-752]	@, %sfp
	str	sl, [fp, #-96]	@ <variable>.u32InitFlag, stFmdRtlOutPara.DirMch
	str	sl, [fp, #-88]	@ <variable>.u32InitFlag, stFmdRtlOutPara.DieOutSelChr
	str	sl, [fp, #-92]	@ <variable>.u32InitFlag, stFmdRtlOutPara.DieOutSelLum
	ldmia	r4!, {r0, r1, r2, r3}	@ tmp338,,,,
	str	ip, [fp, #-756]	@ tmp317, %sfp
	str	ip, [r9, r8]	@ tmp317, <variable>.u32InitFlag
	ldr	r9, [fp, #-776]	@, %sfp
	ldr	sl, [fp, #-752]	@, %sfp
	str	r9, [fp, #-76]	@, stFmdRtlOutPara.s32FieldOrder
	stmia	sl!, {r0, r1, r2, r3}	@,,,,
	ldmia	r4, {r0, r1, r2}	@ tmp338,,,
	stmia	sl, {r0, r1, r2}	@ tmp1064,,,
.L172:
	ldr	r3, [fp, #-96]	@ stFmdRtlOutPara.DirMch, stFmdRtlOutPara.DirMch
	ldr	r1, [fp, #-92]	@ stFmdRtlOutPara.DieOutSelLum, stFmdRtlOutPara.DieOutSelLum
	ldr	r0, [fp, #-84]	@ stFmdRtlOutPara.EdgeSmoothEn, stFmdRtlOutPara.EdgeSmoothEn
	str	r3, [r5, #8]	@ stFmdRtlOutPara.DirMch, <variable>.dir_mch
	str	r1, [r5, #12]	@ stFmdRtlOutPara.DieOutSelLum, <variable>.die_out_sel
	str	r7, [r5, #20]	@ stFmdRtlOutPara.s32FieldOrder, <variable>.s32FieldOrder
	str	r0, [r5, #36]	@ stFmdRtlOutPara.EdgeSmoothEn, <variable>.u32EdgeSmoothEn
	ldr	r3, [r6, #44]	@ sg_enDieOutMode.267, sg_enDieOutMode
	ldr	r2, [fp, #-756]	@, %sfp
	cmp	r3, #1	@ sg_enDieOutMode.267,
	str	r2, [r6, #48]	@, sg_s32DeiMdLum
	moveq	r1, #0	@ tmp994,
	streq	r1, [r5, #12]	@ tmp994, <variable>.die_out_sel
	beq	.L371	@,
	cmp	r3, #2	@ sg_enDieOutMode.267,
	ldrne	r1, [r5, #12]	@ prephitmp.904, <variable>.die_out_sel
	moveq	r1, #1	@ tmp995,
	streq	r1, [r5, #12]	@ tmp995, <variable>.die_out_sel
.L371:
	ldr	ip, [r5, #36]	@ <variable>.u32EdgeSmoothEn, <variable>.u32EdgeSmoothEn
	mov	r0, #0	@,
	ldr	r2, [r5, #8]	@ <variable>.dir_mch, <variable>.dir_mch
	ldr	r3, [r5, #20]	@ <variable>.s32FieldOrder, <variable>.s32FieldOrder
	str	ip, [r6, #40]	@ <variable>.u32EdgeSmoothEn, sg_FmdDectInfo.u32EdgeSmoothEn
	str	r1, [r6, #16]	@ prephitmp.904, sg_FmdDectInfo.die_out_sel
	str	r2, [r6, #12]	@ <variable>.dir_mch, sg_FmdDectInfo.dir_mch
	str	r3, [r6, #24]	@ <variable>.s32FieldOrder, sg_FmdDectInfo.s32FieldOrder
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L192:
	cmp	r1, #1	@ iftmp.258,
	movne	r8, #1	@,
	strne	r8, [fp, #-760]	@, %sfp
	bne	.L193	@,
	subs	r1, r0, #1	@, iftmp.259,
	movne	r1, #1	@
	str	r1, [fp, #-760]	@, %sfp
	b	.L193	@
.L412:
	ldr	r2, [fp, #-688]	@ stDeiDrvPara.BtMode, stDeiDrvPara.BtMode
	rsbs	r1, r2, #1	@ iftmp.255, stDeiDrvPara.BtMode
	movcc	r1, #0	@ iftmp.255
	b	.L179	@
.L389:
	add	lr, r4, #472	@ tmp342, pstFmdSoftInfo,
	sub	ip, fp, #124	@ tmp341,,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp1065,,,,
	mov	r4, ip	@ tmp1066, tmp341
	stmia	r4!, {r0, r1, r2, r3}	@ tmp1066,,,,
	ldmia	lr, {r0, r1, r2}	@ tmp1065,,,
	stmia	r4, {r0, r1, r2}	@ tmp1066,,,
	ldr	r2, [fp, #-740]	@, stDeiDrvPara.s32DeiMdLum
	ldr	r7, [fp, #-812]	@, %sfp
	str	r2, [fp, #-756]	@, %sfp
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp1067,,,,
	stmia	r7!, {r0, r1, r2, r3}	@,,,,
	mov	lr, r7	@ tmp343,
	ldmia	r4, {r0, r1, r2}	@ tmp1066,,,
	stmia	r7, {r0, r1, r2}	@ tmp343,,,
	ldr	r7, [fp, #-76]	@ stFmdRtlOutPara.s32FieldOrder, stFmdRtlOutPara.s32FieldOrder
	b	.L172	@
.L407:
	ldrsb	r9, [r4, #111]	@ <variable>.stFmdCtx.SceneChange, <variable>.stFmdCtx.SceneChange
	cmp	r9, #0	@ <variable>.stFmdCtx.SceneChange,
	beq	.L253	@,
	ldrsb	r3, [r4, #112]	@ <variable>.stFmdCtx.SceneChange, <variable>.stFmdCtx.SceneChange
	subs	r1, r3, #0	@, <variable>.stFmdCtx.SceneChange,
	movne	r1, #1	@
	str	r1, [fp, #-752]	@, %sfp
	b	.L254	@
.L405:
	ldrh	lr, [r4, #240]	@ <variable>.stFmdCtx.sadReg, <variable>.stFmdCtx.sadReg
	cmp	r3, lr	@ D.26467, <variable>.stFmdCtx.sadReg
	ldrgt	r1, [fp, #-796]	@, %sfp
	addgt	r1, r1, #1	@,,
	strgt	r1, [fp, #-796]	@, %sfp
	b	.L213	@
.L404:
	ldrh	r2, [r4, #234]	@ <variable>.stFmdCtx.sadReg, <variable>.stFmdCtx.sadReg
	cmp	r3, r2	@ D.26467, <variable>.stFmdCtx.sadReg
	ldrgt	ip, [fp, #-796]	@, %sfp
	addgt	ip, ip, #1	@,,
	strgt	ip, [fp, #-796]	@, %sfp
	b	.L212	@
.L403:
	ldrh	r2, [r4, #228]	@ <variable>.stFmdCtx.sadReg, <variable>.stFmdCtx.sadReg
	cmp	r3, r2	@ D.26467, <variable>.stFmdCtx.sadReg
	ldrgt	r9, [fp, #-796]	@, %sfp
	addgt	r9, r9, #1	@,,
	strgt	r9, [fp, #-796]	@, %sfp
	b	.L211	@
.L402:
	ldrh	r2, [r4, #222]	@ <variable>.stFmdCtx.sadReg, <variable>.stFmdCtx.sadReg
	cmp	r3, r2	@ D.26467, <variable>.stFmdCtx.sadReg
	ldrgt	r7, [fp, #-796]	@, %sfp
	addgt	r7, r7, #1	@,,
	strgt	r7, [fp, #-796]	@, %sfp
	b	.L210	@
.L401:
	ldrh	r0, [r4, #216]	@ <variable>.stFmdCtx.sadReg, <variable>.stFmdCtx.sadReg
	cmp	r3, r0	@ D.26467, <variable>.stFmdCtx.sadReg
	ldrgt	r1, [fp, #-796]	@, %sfp
	addgt	r1, r1, #1	@,,
	strgt	r1, [fp, #-796]	@, %sfp
	b	.L209	@
.L400:
	ldrh	lr, [r4, #210]	@ <variable>.stFmdCtx.sadReg, <variable>.stFmdCtx.sadReg
	cmp	r3, lr	@ D.26467, <variable>.stFmdCtx.sadReg
	ldrgt	ip, [fp, #-796]	@, %sfp
	addgt	ip, ip, #1	@,,
	strgt	ip, [fp, #-796]	@, %sfp
	b	.L208	@
.L390:
	ldrh	lr, [r4, #150]	@ <variable>.stFmdCtx.sadReg, <variable>.stFmdCtx.sadReg
	cmp	r3, lr	@ D.26467, <variable>.stFmdCtx.sadReg
	movle	r8, #0	@,
	movgt	r8, #1	@,
	str	r8, [fp, #-796]	@, %sfp
	b	.L198	@
.L391:
	ldrh	r7, [r4, #156]	@ <variable>.stFmdCtx.sadReg, <variable>.stFmdCtx.sadReg
	cmp	r3, r7	@ D.26467, <variable>.stFmdCtx.sadReg
	ldrgt	sl, [fp, #-796]	@, %sfp
	addgt	sl, sl, #1	@,,
	strgt	sl, [fp, #-796]	@, %sfp
	b	.L199	@
.L399:
	ldrh	lr, [r4, #204]	@ <variable>.stFmdCtx.sadReg, <variable>.stFmdCtx.sadReg
	cmp	r3, lr	@ D.26467, <variable>.stFmdCtx.sadReg
	ldrgt	r9, [fp, #-796]	@, %sfp
	addgt	r9, r9, #1	@,,
	strgt	r9, [fp, #-796]	@, %sfp
	b	.L207	@
.L398:
	ldrh	lr, [r4, #198]	@ <variable>.stFmdCtx.sadReg, <variable>.stFmdCtx.sadReg
	cmp	r3, lr	@ D.26467, <variable>.stFmdCtx.sadReg
	ldrgt	r7, [fp, #-796]	@, %sfp
	addgt	r7, r7, #1	@,,
	strgt	r7, [fp, #-796]	@, %sfp
	b	.L206	@
.L397:
	ldrh	r2, [r4, #192]	@ <variable>.stFmdCtx.sadReg, <variable>.stFmdCtx.sadReg
	cmp	r3, r2	@ D.26467, <variable>.stFmdCtx.sadReg
	ldrgt	r1, [fp, #-796]	@, %sfp
	addgt	r1, r1, #1	@,,
	strgt	r1, [fp, #-796]	@, %sfp
	b	.L205	@
.L396:
	ldrh	r1, [r4, #186]	@ <variable>.stFmdCtx.sadReg, <variable>.stFmdCtx.sadReg
	cmp	r3, r1	@ D.26467, <variable>.stFmdCtx.sadReg
	ldrgt	r0, [fp, #-796]	@, %sfp
	addgt	r0, r0, #1	@,,
	strgt	r0, [fp, #-796]	@, %sfp
	b	.L204	@
.L395:
	ldrh	r0, [r4, #180]	@ <variable>.stFmdCtx.sadReg, <variable>.stFmdCtx.sadReg
	cmp	r3, r0	@ D.26467, <variable>.stFmdCtx.sadReg
	ldrgt	ip, [fp, #-796]	@, %sfp
	addgt	ip, ip, #1	@,,
	strgt	ip, [fp, #-796]	@, %sfp
	b	.L203	@
.L394:
	ldrh	ip, [r4, #174]	@ <variable>.stFmdCtx.sadReg, <variable>.stFmdCtx.sadReg
	cmp	r3, ip	@ D.26467, <variable>.stFmdCtx.sadReg
	ldrgt	sl, [fp, #-796]	@, %sfp
	addgt	sl, sl, #1	@,,
	strgt	sl, [fp, #-796]	@, %sfp
	b	.L202	@
.L393:
	ldrh	r7, [r4, #168]	@ <variable>.stFmdCtx.sadReg, <variable>.stFmdCtx.sadReg
	cmp	r3, r7	@ D.26467, <variable>.stFmdCtx.sadReg
	ldrgt	r9, [fp, #-796]	@, %sfp
	addgt	r9, r9, #1	@,,
	strgt	r9, [fp, #-796]	@, %sfp
	b	.L201	@
.L392:
	ldrh	lr, [r4, #162]	@ <variable>.stFmdCtx.sadReg, <variable>.stFmdCtx.sadReg
	cmp	r3, lr	@ D.26467, <variable>.stFmdCtx.sadReg
	ldrgt	lr, [fp, #-796]	@, %sfp
	addgt	lr, lr, #1	@,,
	strgt	lr, [fp, #-796]	@, %sfp
	b	.L200	@
.L266:
	ldr	sl, [r4, #444]	@ <variable>.stFmdCtx.stRepeatHist.lst_repeat, <variable>.stFmdCtx.stRepeatHist.lst_repeat
	ldr	r9, [r4, #28]	@ D.26449, <variable>.stFmdCtx.s32PbDelay
	cmp	sl, #0	@ <variable>.stFmdCtx.stRepeatHist.lst_repeat,
	sub	r0, fp, #540
	ldmia	r0, {r0, r1, r3}	@ phole ldm
	bne	.L268	@,
	ldr	ip, [r4, #456]	@ <variable>.stFmdCtx.stDropHist.lst_drop, <variable>.stFmdCtx.stDropHist.lst_drop
	cmp	ip, #1	@ <variable>.stFmdCtx.stDropHist.lst_drop,
	ble	.L269	@,
	add	r7, r4, #364	@ tmp703, pstFmdSoftInfo,
	mov	r1, #60	@,
	mov	r0, r7	@, tmp703
	bl	__memzero	@
	ldmia	r7, {r0, r1, r2}	@ tmp703,,,
	ldr	r3, [fp, #-816]	@, %sfp
	stmia	r3, {r0, r1, r2}	@,,,
	add	r0, r4, #424	@, pstFmdSoftInfo,
	mov	r1, #20	@,
	bl	__memzero	@
	mov	r2, sl	@ Pld32Info$Pd32Det, <variable>.stFmdCtx.stRepeatHist.lst_repeat
	b	.L381	@
.L409:
	cmp	r8, #1	@ IsProgressive,
	beq	.L347	@,
	cmp	r7, #1	@ Pld32Info$Pd32Det.1008,
	moveq	r8, ip	@ prephitmp.1017, D.26414
	beq	.L349	@,
.L345:
	strb	ip, [r4, #109]	@ D.26414, <variable>.stFmdCtx.PrevMainState
	mov	r8, #0	@ tmp1016,
	strb	r8, [r4, #108]	@ tmp1016, <variable>.stFmdCtx.MainState
	ldr	sl, [r4, #16]	@, <variable>.stFmdCtx.NxtIs2ndFld
	ldr	r2, [fp, #-740]	@, stDeiDrvPara.s32DeiMdLum
	str	sl, [fp, #-776]	@, %sfp
	ldr	r9, [r4, #28]	@ temp.983, <variable>.stFmdCtx.s32PbDelay
	str	r2, [fp, #-756]	@, %sfp
	b	.L353	@
.L341:
	cmp	r7, #1	@ Pld32Info$Pd32Det.1008,
	beq	.L343	@,
	cmp	r8, #1	@ IsProgressive,
	bne	.L345	@,
.L346:
	strb	r8, [r4, #109]	@ prephitmp.1018, <variable>.stFmdCtx.PrevMainState
	mov	r7, #2	@ tmp1005,
	strb	r7, [r4, #108]	@ tmp1005, <variable>.stFmdCtx.MainState
	movw	r7, #:lower16:.LANCHOR1	@ tmp1057,
	ldr	r9, [r4, #16]	@, <variable>.stFmdCtx.NxtIs2ndFld
	movt	r7, #:upper16:.LANCHOR1	@ tmp1057,
	ldr	r8, [fp, #-740]	@, stDeiDrvPara.s32DeiMdLum
	str	r9, [fp, #-776]	@, %sfp
	ldr	r9, [r4, #28]	@ temp.983, <variable>.stFmdCtx.s32PbDelay
	str	r8, [fp, #-756]	@, %sfp
.L355:
	tst	r9, #1	@ temp.983,
	mov	r8, #1	@ tmp958,
	str	r8, [fp, #-88]	@ tmp958, stFmdRtlOutPara.DieOutSelChr
	str	r8, [fp, #-92]	@ tmp958, stFmdRtlOutPara.DieOutSelLum
	beq	.L361	@,
	ldr	r0, [fp, #-776]	@, %sfp
	rsbs	sl, r0, #1	@ tmp961,
	movcc	sl, #0	@ tmp961
	str	sl, [fp, #-96]	@ tmp961, stFmdRtlOutPara.DirMch
.L362:
	ldr	ip, [fp, #-764]	@, %sfp
	mov	r3, #1	@ tmp962,
	ldr	r1, [fp, #-752]	@, %sfp
	mov	r2, r3	@ s32FilmType, tmp962
	str	r3, [fp, #-84]	@ tmp962, stFmdRtlOutPara.EdgeSmoothEn
	str	ip, [fp, #-76]	@, stFmdRtlOutPara.s32FieldOrder
	str	r1, [fp, #-80]	@, stFmdRtlOutPara.SceneChange
.L363:
	add	r8, r7, r2, asl #2	@, tmp971, tmp1057, s32FilmType,
	ldr	r0, [r8, #140]	@ s32FilmType.989, g_u32PDTypeNum
	b	.L368	@
.L408:
	mov	r1, #0	@,
	movw	r0, #:lower16:-131071	@,
	mov	r2, r1	@,
	movt	r0, #:upper16:-131071	@,
	mov	r3, r1	@,
	bl	PQ_MNG_GetSoftTable	@
	cmp	r0, #1	@,
	beq	.L413	@,
	ldr	r7, [fp, #-672]	@ stDeiDrvPara.stVdecInfo.IsProgressiveFrm, stDeiDrvPara.stVdecInfo.IsProgressiveFrm
	cmp	r7, #1	@ stDeiDrvPara.stVdecInfo.IsProgressiveFrm,
	beq	.L414	@,
.L263:
	ldr	r9, [fp, #-708]	@ stDeiDrvPara.s32FrmHeight, stDeiDrvPara.s32FrmHeight
	cmp	r9, #288	@ stDeiDrvPara.s32FrmHeight,
	bgt	.L264	@,
.L386:
	ldr	r3, [fp, #-676]	@ stDeiDrvPara.stVdecInfo.IsProgressiveSeq, stDeiDrvPara.stVdecInfo.IsProgressiveSeq
.L385:
	cmp	r3, #1	@ stDeiDrvPara.stVdecInfo.IsProgressiveSeq,
	beq	.L261	@,
.L264:
	ldr	r1, [r4, #444]	@ <variable>.stFmdCtx.stRepeatHist.lst_repeat, <variable>.stFmdCtx.stRepeatHist.lst_repeat
	cmp	r1, #0	@ <variable>.stFmdCtx.stRepeatHist.lst_repeat,
	ldrne	r8, [r4, #252]	@ IsProgressive, <variable>.stFmdCtx.Pld22LockState
	bne	.L256	@,
	ldr	r8, [fp, #-740]	@ stDeiDrvPara.s32DeiMdLum, stDeiDrvPara.s32DeiMdLum
	sub	r1, fp, #664	@,,
	ldr	r0, [fp, #-760]	@, %sfp
	add	r2, r4, #256	@, pstFmdSoftInfo,
	add	r3, r4, #244	@, pstFmdSoftInfo,
	str	r8, [sp, #0]	@ stDeiDrvPara.s32DeiMdLum,
	bl	Detect22Pld	@
	mov	r8, r0	@ IsProgressive,
	b	.L256	@
.L413:
	ldr	ip, [fp, #-672]	@ stDeiDrvPara.stVdecInfo.IsProgressiveFrm, stDeiDrvPara.stVdecInfo.IsProgressiveFrm
	cmp	ip, #1	@ stDeiDrvPara.stVdecInfo.IsProgressiveFrm,
	bne	.L386	@,
	ldr	r3, [fp, #-676]	@ prephitmp.915, stDeiDrvPara.stVdecInfo.IsProgressiveSeq
	cmp	r3, #0	@ prephitmp.915,
	bne	.L385	@,
	ldr	r3, [fp, #-668]	@ D.26454, stDeiDrvPara.stVdecInfo.RealFrmRate
	movw	r2, #23799	@ tmp679,
	cmp	r3, r2	@ D.26454, tmp679
	ble	.L264	@,
	add	r2, r2, #400	@ tmp680, tmp680,
	cmp	r3, r2	@ D.26454, tmp680
	bgt	.L264	@,
.L261:
	mov	r8, #1	@ IsProgressive,
	b	.L256	@
.L406:
	ldr	r3, [r4, #444]	@ <variable>.stFmdCtx.stRepeatHist.lst_repeat, <variable>.stFmdCtx.stRepeatHist.lst_repeat
	cmp	r3, #0	@ <variable>.stFmdCtx.stRepeatHist.lst_repeat,
	bne	.L215	@,
	ldr	r3, [fp, #-740]	@ stDeiDrvPara.s32DeiMdLum, stDeiDrvPara.s32DeiMdLum
	cmp	r3, #2	@ stDeiDrvPara.s32DeiMdLum,
	streq	r3, [r4, #120]	@ stDeiDrvPara.s32DeiMdLum, <variable>.stFmdCtx.FieldOrder
	streq	r3, [fp, #-764]	@ stDeiDrvPara.s32DeiMdLum, %sfp
	beq	.L217	@,
	cmp	r3, #1	@ stDeiDrvPara.s32DeiMdLum,
	beq	.L415	@,
.L218:
	ldr	r2, [r4, #12]	@ <variable>.stFmdCtx.Is2ndFld, <variable>.stFmdCtx.Is2ndFld
	cmp	r2, #0	@ <variable>.stFmdCtx.Is2ndFld,
	beq	.L416	@,
	ldr	r1, [r4, #20]	@ <variable>.stFmdCtx.BtMode, <variable>.stFmdCtx.BtMode
	mov	r0, #1024	@,
	ldr	sl, [fp, #-520]	@ z34, stDeiDrvPara.stFmdRtlStatPara.lasiStat.lasiCnt34
	cmp	r1, #1	@ <variable>.stFmdCtx.BtMode,
	movw	r1, #:lower16:.LC0	@,
	movt	r1, #:upper16:.LC0	@,
	ldreq	r7, [fp, #-524]	@ z14, stDeiDrvPara.stFmdRtlStatPara.lasiStat.lasiCnt32
	ldrne	r7, [fp, #-528]	@ z14, stDeiDrvPara.stFmdRtlStatPara.lasiStat.lasiCnt14
	ldreq	r8, [fp, #-528]	@ z32, stDeiDrvPara.stFmdRtlStatPara.lasiStat.lasiCnt14
	ldrne	r8, [fp, #-524]	@ z32, stDeiDrvPara.stFmdRtlStatPara.lasiStat.lasiCnt32
	mov	r2, r7	@, z14
	str	sl, [sp, #0]	@ z34,
	mov	r3, r8	@, z32
	bl	PQ_HAL_PrintMsg	@
	cmp	sl, r8	@ z34, z32
	movge	r3, sl	@ biggerintwo, z34
	movlt	r3, r8	@ biggerintwo, z32
	cmp	r3, #254	@ biggerintwo,
	movgt	r1, r3, asr #31	@ tmp540, biggerintwo,
	movwgt	r2, #:lower16:1717986919	@ tmp538,
	movle	r2, #50	@ iftmp.201,
	movtgt	r2, #:upper16:1717986919	@ tmp538,
	smullgt	r9, r2, r2, r3	@, tmp537, tmp538, biggerintwo
	rsbgt	r2, r1, r2, asr #1	@, iftmp.201, tmp540, tmp537,
	add	ip, r2, r3	@ tmp541, iftmp.201, biggerintwo
	cmp	sl, r7	@ z34, z14
	movge	r3, sl	@ biggerintwo.992, z34
	movlt	r3, r7	@ biggerintwo.992, z14
	cmp	r7, ip	@ z14, tmp541
	movle	r2, #0	@,
	movgt	r2, #1	@,
	cmp	r3, #254	@ biggerintwo.992,
	str	r2, [fp, #-752]	@, %sfp
	movgt	r1, r3, asr #31	@ tmp546, biggerintwo.992,
	movwgt	r2, #:lower16:1717986919	@ tmp544,
	movtgt	r2, #:upper16:1717986919	@ tmp544,
	movle	r2, #50	@ iftmp.202,
	smullgt	ip, r2, r2, r3	@, tmp543, tmp544, biggerintwo.992
	rsbgt	r2, r1, r2, asr #1	@, iftmp.202, tmp546, tmp543,
	cmp	r8, r7	@ z32, z14
	movge	r1, r8	@ biggerintwo.993, z32
	movlt	r1, r7	@ biggerintwo.993, z14
	add	r3, r2, r3	@ tmp547, iftmp.202, biggerintwo.992
	cmp	r8, r3	@ z32, tmp547
	movle	ip, #0	@,
	movgt	ip, #1	@,
	cmp	r1, #254	@ biggerintwo.993,
	str	ip, [fp, #-756]	@, %sfp
	movgt	r2, r1, asr #31	@ tmp552, biggerintwo.993,
	movwgt	ip, #:lower16:1717986919	@ tmp550,
	movtgt	ip, #:upper16:1717986919	@ tmp550,
	movle	ip, #50	@ iftmp.203,
	smullgt	lr, ip, ip, r1	@, tmp549, tmp550, biggerintwo.993
	rsbgt	ip, r2, ip, asr #1	@, iftmp.203, tmp552, tmp549,
	cmp	sl, r8	@ z34, z32
	movlt	r2, sl	@ smallerintwo, z34
	movge	r2, r8	@ smallerintwo, z32
	add	r3, ip, r1	@ tmp553, iftmp.203, biggerintwo.993
	cmp	sl, r3	@ z34, tmp553
	movle	ip, #0	@,
	movgt	ip, #1	@,
	cmp	r2, #254	@ smallerintwo,
	str	ip, [fp, #-764]	@, %sfp
	movgt	r0, r2, asr #31	@ tmp558, smallerintwo,
	movwgt	ip, #:lower16:1717986919	@ tmp556,
	movtgt	ip, #:upper16:1717986919	@ tmp556,
	movle	ip, #50	@ iftmp.204,
	smullgt	r9, ip, ip, r2	@, tmp555, tmp556, smallerintwo
	rsbgt	ip, r0, ip, asr #1	@, iftmp.204, tmp558, tmp555,
	rsb	r9, ip, r2	@ tmp559, iftmp.204, smallerintwo
	cmp	sl, r7	@ z34, z14
	movlt	r2, sl	@ smallerintwo.994, z34
	movge	r2, r7	@ smallerintwo.994, z14
	cmp	r7, r9	@ z14, tmp559
	movge	ip, #0	@, islasi14smallest
	movlt	ip, #1	@, islasi14smallest
	cmp	r2, #254	@ smallerintwo.994,
	movgt	r0, r2, asr #31	@ tmp564, smallerintwo.994,
	movwgt	r9, #:lower16:1717986919	@ tmp562,
	movtgt	r9, #:upper16:1717986919	@ tmp562,
	movle	r9, #50	@ iftmp.205,
	smullgt	lr, r9, r9, r2	@, tmp561, tmp562, smallerintwo.994
	rsbgt	r9, r0, r9, asr #1	@, iftmp.205, tmp564, tmp561,
	rsb	r3, r9, r2	@ tmp565, iftmp.205, smallerintwo.994
	cmp	r8, r7	@ z32, z14
	movlt	r2, r8	@ smallerintwo.995, z32
	movge	r2, r7	@ smallerintwo.995, z14
	cmp	r8, r3	@ z32, tmp565
	movge	r9, #0	@, islasi32smallest
	movlt	r9, #1	@, islasi32smallest
	cmp	r2, #254	@ smallerintwo.995,
	movgt	r0, r2, asr #31	@ tmp570, smallerintwo.995,
	movwgt	r3, #:lower16:1717986919	@ tmp568,
	movtgt	r3, #:upper16:1717986919	@ tmp568,
	movle	r0, #50	@,
	smullgt	lr, r3, r3, r2	@, tmp567, tmp568, smallerintwo.995
	ldr	lr, [fp, #-788]	@, %sfp
	rsbgt	r0, r0, r3, asr #1	@,, tmp570, tmp567,
	ldr	r3, [fp, #-792]	@, %sfp
	str	r0, [fp, #-768]	@, %sfp
	mul	r0, r3, lr	@ tmp574,,
	ldr	lr, [fp, #-796]	@, %sfp
	rsb	r3, lr, #16	@,,
	ldr	lr, [fp, #-768]	@, %sfp
	str	r3, [fp, #-772]	@, %sfp
	rsb	r3, lr, r2	@ tmp571,, smallerintwo.995
	mov	lr, r0, asr #9	@ tmp575, tmp574,
	cmp	sl, r3	@ z34, tmp571
	movge	sl, #0	@, islasi34smallest
	movlt	sl, #1	@, islasi34smallest
	add	r3, lr, #31	@ tmp578, tmp575,
	cmp	lr, #0	@ tmp575,
	ldr	r0, [fp, #-772]	@, %sfp
	movlt	lr, r3	@ tmp577, tmp578
	mov	r3, lr, asr #5	@ tmp579, tmp577,
	mul	lr, r3, r0	@ tmp580, tmp579,
	cmp	lr, #0	@ tmp580,
	add	r0, lr, #15	@ tmp583, tmp580,
	movlt	lr, r0	@ tmp582, tmp583
	mov	r3, lr, asr #4	@ tmp584, tmp582,
	add	r0, r3, r3, asl #1	@, tmp587, tmp584, tmp584,
	add	lr, r0, r0, lsr #31	@, tmp589, tmp587, tmp587,
	mov	r3, lr, asr #1	@ zthr.996, tmp589,
	cmp	r3, #6	@ zthr.996,
	movlt	r3, #6	@ zthr.996,
	cmp	r1, #100	@ biggerintwo.993,
	ble	.L237	@,
	rsb	lr, r2, r1	@ tmp591, smallerintwo.995, biggerintwo.993
	mov	r0, #100	@ tmp593,
	str	r3, [fp, #-804]	@,
	mul	r0, r0, lr	@, tmp593, tmp591
	str	ip, [fp, #-800]	@,
	bl	__aeabi_idiv	@
	ldr	r3, [fp, #-804]	@,
	ldr	ip, [fp, #-800]	@,
	cmp	r0, #19	@,
	ble	.L238	@,
.L237:
	rsb	r0, r8, r7	@, z32, z14
	mov	r1, r3	@, zthr.996
	str	ip, [fp, #-800]	@,
	bl	__aeabi_idiv	@
	ldr	ip, [fp, #-800]	@,
	add	r7, r0, #49	@ tmp602, tmp601,
	cmp	r7, #98	@ tmp602,
	bls	.L238	@,
	cmp	r0, #500	@ tmp601,
	movgt	r2, #500	@ fac.997,
	ble	.L417	@,
.L240:
	ldr	r0, [fp, #-752]	@, %sfp
	eor	r1, r9, #1	@ tmp605, islasi32smallest,
	uxtb	r3, r0	@ D.26520,
	tst	r3, r1	@ D.26520, tmp605
	beq	.L241	@,
	cmp	r2, #50	@ fac.997,
	movlt	r2, #50	@ fac.997,
.L242:
	cmp	sl, #0	@ islasi34smallest,
	bne	.L243	@,
	ldr	r1, [fp, #-764]	@, %sfp
	cmp	r1, #0	@,
	bne	.L244	@,
	tst	r3, r9	@ D.26520, islasi32smallest
	bne	.L243	@,
	ldr	r3, [fp, #-756]	@, %sfp
	tst	ip, r3	@ islasi14smallest,
	bne	.L243	@,
	orrs	r0, r9, ip	@, islasi32smallest, islasi14smallest
	bne	.L244	@,
.L243:
	ldr	r8, [fp, #-756]	@, %sfp
	ldr	r1, [fp, #-752]	@, %sfp
	ldr	r7, [fp, #-764]	@, %sfp
	orr	lr, r8, r1	@ tmp626,,
	orr	r0, lr, r7	@ tmp627, tmp626,
	orr	ip, r0, ip	@ tmp628, tmp627, islasi14smallest
	orr	r9, ip, r9	@ tmp629, tmp628, islasi32smallest
	orrs	r9, r9, sl	@, tmp629, islasi34smallest
	bne	.L245	@,
	cmp	r2, #50	@ fac.997,
	movge	r2, #50	@ fac.1000,
	mvn	sl, #49	@ tmp631,
	cmp	r2, sl	@ fac.1000, tmp631
	movlt	r2, sl	@ fac.997, tmp631
.L245:
	ldr	r3, [r4, #116]	@ <variable>.stFmdCtx.SADDiffAcc, <variable>.stFmdCtx.SADDiffAcc
	add	r3, r2, r3	@ <variable>.stFmdCtx.SADDiffAcc, fac.997, <variable>.stFmdCtx.SADDiffAcc
	str	r3, [r4, #116]	@ <variable>.stFmdCtx.SADDiffAcc, <variable>.stFmdCtx.SADDiffAcc
	cmp	r3, #1000	@ <variable>.stFmdCtx.SADDiffAcc,
	movgt	r3, #1000	@ tmp633,
	strgt	r3, [r4, #116]	@ tmp633, <variable>.stFmdCtx.SADDiffAcc
	bgt	.L247	@,
	cmn	r3, #1000	@ <variable>.stFmdCtx.SADDiffAcc,
	movw	r9, #:lower16:-1000	@ tmp634,
	movt	r9, #:upper16:-1000	@ tmp634,
	strlt	r9, [r4, #116]	@ tmp634, <variable>.stFmdCtx.SADDiffAcc
	movlt	r3, r9	@ <variable>.stFmdCtx.SADDiffAcc, tmp634
	bge	.L418	@,
.L249:
	mov	ip, #1	@ tmp637,
	str	ip, [r4, #120]	@ tmp637, <variable>.stFmdCtx.FieldOrder
.L251:
	mov	r0, #1024	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	str	ip, [sp, #0]	@ prephitmp.1019,
	bl	PQ_HAL_PrintMsg	@
	ldr	r2, [r4, #120]	@, <variable>.stFmdCtx.FieldOrder
	str	r2, [fp, #-764]	@, %sfp
	b	.L217	@
.L238:
	mov	r2, #0	@ fac.997,
	b	.L240	@
.L244:
	mov	r2, #0	@ fac.997,
	b	.L243	@
.L378:
	tst	r9, #1	@ temp.983,
	mov	sl, #0	@ tmp963,
	str	sl, [fp, #-88]	@ tmp963, stFmdRtlOutPara.DieOutSelChr
	str	sl, [fp, #-92]	@ tmp963, stFmdRtlOutPara.DieOutSelLum
	beq	.L364	@,
	ldr	r3, [fp, #-776]	@, %sfp
	rsbs	r1, r3, #1	@ tmp966,
	movcc	r1, #0	@ tmp966
	str	r1, [fp, #-96]	@ tmp966, stFmdRtlOutPara.DirMch
.L365:
	ldr	sl, [fp, #-764]	@, %sfp
	cmp	ip, #2	@ D.26414,
	ldr	r1, [fp, #-752]	@, %sfp
	mov	ip, #0	@ tmp967,
	moveq	r2, #1	@ s32FilmType,
	str	ip, [fp, #-84]	@ tmp967, stFmdRtlOutPara.EdgeSmoothEn
	str	sl, [fp, #-76]	@, stFmdRtlOutPara.s32FieldOrder
	str	r1, [fp, #-80]	@, stFmdRtlOutPara.SceneChange
	bne	.L366	@,
	b	.L363	@
.L350:
	mov	r8, #0	@ prephitmp.1017,
.L349:
	ldr	sl, [fp, #-816]	@, %sfp
	sub	ip, fp, #68	@ tmp1011,,
	str	r2, [fp, #-56]	@ Pld32Info$Pd32Det, Pld32Info.Pd32Det
	mov	r3, #1	@ tmp1008,
	ldr	r7, .L427	@ tmp1015,
	ldmia	sl, {r0, r1, r2}	@,,,
	strb	r8, [r4, #109]	@ prephitmp.1017, <variable>.stFmdCtx.PrevMainState
	strb	r3, [r4, #108]	@ tmp1008, <variable>.stFmdCtx.MainState
	mov	r8, r3	@ PbState, tmp1008
	sub	sl, fp, #164	@ tmp1014,,
	stmia	ip, {r0, r1, r2}	@ tmp1011,,,
	ldr	r0, [fp, #-740]	@, stDeiDrvPara.s32DeiMdLum
	ldrb	ip, [fp, #-58]	@ zero_extendqisi2	@, PdInfo.PdSubState
	str	r0, [fp, #-756]	@, %sfp
	ldmia	r7!, {r0, r1, r2, r3}	@ tmp1087,,,,
	str	ip, [fp, #-772]	@, %sfp
	mov	ip, sl	@ tmp1088, tmp1014
.L382:
	stmia	ip!, {r0, r1, r2, r3}	@ tmp1092,,,,
	ldmia	r7!, {r0, r1, r2, r3}	@ tmp1093,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp1092,,,,
	ldmia	r7, {r0, r1}	@ tmp1093,,
	stmia	ip, {r0, r1}	@ tmp1094,,
.L354:
	ldr	r9, [fp, #-756]	@, %sfp
	mov	r3, #1	@ tmp921,
	mov	r1, #0	@ tmp922,
	str	r3, [fp, #-92]	@ tmp921, stFmdRtlOutPara.DieOutSelLum
	cmp	r9, #0	@,
	str	r1, [fp, #-88]	@ tmp922, stFmdRtlOutPara.DieOutSelChr
	bne	.L359	@,
	ldr	sl, [fp, #-772]	@, %sfp
	movw	r2, #:lower16:1717986919	@ tmp927,
	movt	r2, #:upper16:1717986919	@ tmp927,
	sxtb	r3, sl	@ PdInfo$PdSubState,
	add	r0, r3, #1	@ tmp924, PdInfo$PdSubState,
	smull	ip, r2, r2, r0	@, tmp926, tmp927, tmp924
	mov	r1, r0, asr #31	@ tmp929, tmp924,
	rsb	ip, r1, r2, asr #2	@, tmp925, tmp929, tmp926,
	add	r2, ip, ip, asl #2	@, tmp932, tmp925, tmp925,
	sub	r1, r0, r2, asl #1	@ tmp934, tmp924, tmp932,
	sub	r0, fp, #44	@,,
	add	ip, r0, r1, asl #2	@, tmp937,, tmp934,
	ldr	r2, [ip, #-120]	@ tmp939, MchTab
	str	r2, [fp, #-96]	@ tmp939, stFmdRtlOutPara.DirMch
	b	.L360	@
.L410:
	movw	r7, #:lower16:.LANCHOR1	@ tmp1057,
	mov	r2, #0	@ s32FilmType,
	movt	r7, #:upper16:.LANCHOR1	@ tmp1057,
	b	.L363	@
.L269:
	add	lr, r1, r3, asl #1	@, tmp709, D.26576, D.26578,
	ldr	ip, [r4, #104]	@ <variable>.stFmdCtx.pSadWt, <variable>.stFmdCtx.pSadWt
	ldr	r2, [r4, #100]	@ pRd, <variable>.stFmdCtx.pSadRd
	add	sl, r4, #96	@ temp.1005, pstFmdSoftInfo,
	add	r7, r0, lr, asl #1	@, tmp711, D.26579, tmp709,
	mov	r3, r7, asl #1	@ tmp712, tmp711,
	str	r3, [ip, #0]	@ tmp712,* <variable>.stFmdCtx.pSadWt
	ldr	r1, [r4, #104]	@ <variable>.stFmdCtx.pSadWt, <variable>.stFmdCtx.pSadWt
	ldr	r0, [r4, #32]	@ <variable>.stFmdCtx.SadCnt, <variable>.stFmdCtx.SadCnt
	add	lr, r1, #4	@ iftmp.214, <variable>.stFmdCtx.pSadWt,
	cmp	lr, sl	@ iftmp.214, temp.1005
	add	r7, r0, #1	@ D.26635, <variable>.stFmdCtx.SadCnt,
	addhi	lr, r4, #36	@ iftmp.214, pstFmdSoftInfo,
	cmp	r7, #4	@ D.26635,
	str	lr, [r4, #104]	@ iftmp.214, <variable>.stFmdCtx.pSadWt
	str	r7, [r4, #32]	@ D.26635, <variable>.stFmdCtx.SadCnt
	ble	.L419	@,
	ldr	r1, [r2, #0]	@ MinSad2nd,* pRd
	mov	r3, r2	@ pRd.1202, pRd
	add	ip, r4, #36	@, pstFmdSoftInfo,
	str	ip, [fp, #-780]	@, %sfp
	sub	r7, r7, #1	@, D.26635,
	str	r1, [fp, #-164]	@ MinSad2nd, Sads
	ldr	r2, [r3], #4	@ MinSad2nd.1200,
	cmp	sl, r3	@ temp.1005, pRd.1202
	movcc	r3, ip	@ pRd.1202,
	cmp	r1, r2	@ MinSad2nd, MinSad2nd.1200
	movlt	lr, r1	@, MinSad2nd
	movge	lr, r2	@, MinSad2nd.1200
	str	lr, [fp, #-760]	@, %sfp
	cmp	r2, r1	@ MinSad2nd.1200, MinSad2nd
	movge	r1, r2	@ MinSad2nd.1201, MinSad2nd.1200
	movlt	r1, r1	@ MinSad2nd.1201, MinSad2nd
	ldr	r0, [r3, #0]	@ tmp724,* pRd.1202
	str	r0, [fp, #-160]	@ tmp724, Sads
	ldr	r2, [r3, #0]	@ MinSad2nd.1203,* pRd.1202
	add	r3, r3, #4	@ pRd.1206, pRd.1202,
	ldr	r0, [fp, #-780]	@, %sfp
	cmp	r2, lr	@ MinSad2nd.1203,
	strlt	r2, [fp, #-760]	@ MinSad2nd.1203, %sfp
	movlt	ip, #1	@ MinPos,
	movge	ip, #0	@ MinPos,
	cmp	r1, r2	@ MinSad2nd.1201, MinSad2nd.1203
	movlt	r1, r2	@ MinSad2nd.1205, MinSad2nd.1203
	cmp	sl, r3	@ temp.1005, pRd.1206
	ldr	lr, [fp, #-760]	@, %sfp
	movcc	r3, r0	@ pRd.1206,
	ldr	r2, [r3, #0]	@ tmp725,* pRd.1206
	str	r2, [fp, #-156]	@ tmp725, Sads
	ldr	r0, [r3, #0]	@ MinSad2nd.1208,* pRd.1206
	add	r3, r3, #4	@ pRd.1210, pRd.1206,
	ldr	r2, [fp, #-780]	@, %sfp
	cmp	lr, r0	@, MinSad2nd.1208
	strgt	r0, [fp, #-760]	@ MinSad2nd.1208, %sfp
	movgt	ip, #2	@ MinPos,
	cmp	r1, r0	@ MinSad2nd.1205, MinSad2nd.1208
	movlt	r1, r0	@ MinSad2nd.1209, MinSad2nd.1208
	cmp	sl, r3	@ temp.1005, pRd.1210
	ldr	r0, [fp, #-760]	@, %sfp
	movcc	r3, r2	@ pRd.1210,
	ldr	lr, [r3, #0]	@ tmp726,* pRd.1210
	str	lr, [fp, #-152]	@ tmp726, Sads
	ldr	r2, [r3, #0]	@ MinSad2nd.1212,* pRd.1210
	add	r3, r3, #4	@ pRd.1214, pRd.1210,
	cmp	r0, r2	@, MinSad2nd.1212
	strgt	r2, [fp, #-760]	@ MinSad2nd.1212, %sfp
	movgt	ip, #3	@ MinPos,
	cmp	r1, r2	@ MinSad2nd.1209, MinSad2nd.1212
	movge	r2, r1	@ MinSad2nd.1213, MinSad2nd.1209
	movlt	r2, r2	@ MinSad2nd.1213, MinSad2nd.1212
	ldr	r1, [fp, #-780]	@, %sfp
	cmp	sl, r3	@ temp.1005, pRd.1214
	ldr	r0, [fp, #-760]	@, %sfp
	movcc	r3, r1	@ pRd.1214,
	ldr	r1, [fp, #-164]	@ MinSad2nd.1215, Sads
	ldr	lr, [r3, #0]	@,* pRd.1214
	str	lr, [fp, #-768]	@, %sfp
	str	lr, [fp, #-148]	@, Sads
	ldr	r3, [r3, #0]	@ MinSad2nd.1004,* pRd.1214
	cmp	r3, r0	@ MinSad2nd.1004,
	mov	r0, #0	@,
	strlt	r3, [fp, #-760]	@ MinSad2nd.1004, %sfp
	movlt	ip, #4	@ MinPos,
	cmp	r3, r2	@ MinSad2nd.1004, MinSad2nd.1213
	movlt	r3, r2	@ MinSad2nd.1004, MinSad2nd.1213
	cmp	ip, #0	@ MinPos,
	cmpne	r3, r1	@, MinSad2nd.1004, MinSad2nd.1215
	ldr	r2, [fp, #-160]	@ MinSad2nd.1220, Sads
	str	r3, [fp, #-756]	@ MinSad2nd.1004, %sfp
	movgt	r3, r1	@, MinSad2nd.1215, MinSad2nd.1215
	cmp	ip, #1	@ MinPos,
	cmpne	r3, r2	@, MinSad2nd.1215, MinSad2nd.1220
	ldr	lr, [r4, #100]	@ <variable>.stFmdCtx.pSadRd, <variable>.stFmdCtx.pSadRd
	sub	r1, fp, #164	@,,
	movgt	r3, r2	@, MinSad2nd.1220, MinSad2nd.1220
	ldr	r2, [fp, #-156]	@, Sads
	add	lr, lr, #4	@, <variable>.stFmdCtx.pSadRd,
	str	lr, [fp, #-776]	@, %sfp
	cmp	ip, #2	@ MinPos,
	cmpne	r3, r2	@, MinSad2nd.1220,
	mov	lr, r2	@ MinSad2nd.1224,
	ldr	r2, [fp, #-756]	@, %sfp
	movle	lr, r3	@, MinSad2nd.1224, MinSad2nd.1220
	ldr	r3, [fp, #-152]	@, Sads
	cmp	ip, #3	@ MinPos,
	cmpne	lr, r3	@, MinSad2nd.1224,
	movle	r3, lr	@,, MinSad2nd.1224
	ldr	lr, [fp, #-768]	@, %sfp
	str	r3, [fp, #-772]	@, %sfp
	cmp	ip, #4	@ MinPos,
	cmpne	lr, r3	@,,
	ldr	r3, [fp, #-760]	@, %sfp
	str	r7, [r4, #32]	@, <variable>.stFmdCtx.SadCnt
	ldr	ip, [fp, #-772]	@, %sfp
	ldr	r7, [fp, #-624]	@ stDeiDrvPara.stFmdRtlStatPara.frmPcc.PCC_FWD_TKR, stDeiDrvPara.stFmdRtlStatPara.frmPcc.PCC_FWD_TKR
	movge	lr, ip	@,,
	str	lr, [fp, #-768]	@, %sfp
	ldr	lr, [fp, #-620]	@ stDeiDrvPara.stFmdRtlStatPara.frmPcc.PCC_BWD_TKR, stDeiDrvPara.stFmdRtlStatPara.frmPcc.PCC_BWD_TKR
	ldr	ip, [fp, #-780]	@, %sfp
	cmp	lr, r7	@ stDeiDrvPara.stFmdRtlStatPara.frmPcc.PCC_BWD_TKR, stDeiDrvPara.stFmdRtlStatPara.frmPcc.PCC_FWD_TKR
	movge	lr, r7	@ stDeiDrvPara.stFmdRtlStatPara.frmPcc.PCC_BWD_TKR, stDeiDrvPara.stFmdRtlStatPara.frmPcc.PCC_FWD_TKR
	str	lr, [fp, #-772]	@ stDeiDrvPara.stFmdRtlStatPara.frmPcc.PCC_BWD_TKR, %sfp
	ldr	lr, [fp, #-776]	@ iftmp.217, %sfp
	cmp	sl, lr	@ temp.1005, tmp7
	ldr	sl, [fp, #-772]	@, %sfp
	mov	r7, lr	@, iftmp.217
	movcc	lr, ip	@ iftmp.217,
	cmp	sl, #64	@,
	movle	sl, #0	@,
	movgt	sl, #1	@,
	str	sl, [fp, #-772]	@, %sfp
	str	lr, [r4, #100]	@ iftmp.217, <variable>.stFmdCtx.pSadRd
	str	sl, [r4, #356]	@, <variable>.stFmdCtx.PdInfo.WithOvlpTitle
	ldr	lr, [fp, #-768]	@, %sfp
	str	lr, [sp, #0]	@,
	bl	Check32PdPattern	@
	cmp	r0, #0	@ ValidFlag.1236
	mvneq	r7, #0	@ HitPhase,
	beq	.L289	@,
	cmp	r0, #1	@ ValidFlag.1236,
	bne	.L291	@,
	ldrsb	r3, [r4, #113]	@ temp.1234, <variable>.stFmdCtx.Last32Phase
	cmn	r3, #1	@ temp.1234,
	beq	.L295	@,
	cmp	r3, #4	@ temp.1234,
	beq	.L295	@,
.L291:
	mov	r7, #0	@ HitPhase,
.L289:
	mvn	sl, #0	@ HitPhase.1031,
	mov	ip, #1	@ InValidCnt,
.L290:
	ldr	lr, [fp, #-768]	@, %sfp
	mov	r0, #1	@,
	sub	r1, fp, #164	@,,
	ldr	r2, [fp, #-756]	@, %sfp
	ldr	r3, [fp, #-760]	@, %sfp
	str	ip, [fp, #-800]	@,
	str	lr, [sp, #0]	@,
	bl	Check32PdPattern	@
	ldr	ip, [fp, #-800]	@,
	cmp	r0, #0	@ ValidFlag.1170
	beq	.L297	@,
	cmp	r0, #1	@ ValidFlag.1170,
	bne	.L299	@,
	ldrsb	r3, [r4, #113]	@ temp.1160, <variable>.stFmdCtx.Last32Phase
	cmp	r3, #0	@ temp.1160,
	beq	.L303	@,
	cmp	r3, #5	@ temp.1160,
	beq	.L303	@,
.L299:
	mov	r7, #1	@ HitPhase,
.L297:
	add	ip, ip, #1	@ InValidCnt, InValidCnt,
.L298:
	ldr	lr, [fp, #-768]	@, %sfp
	mov	r0, #2	@,
	sub	r1, fp, #164	@,,
	ldr	r2, [fp, #-756]	@, %sfp
	ldr	r3, [fp, #-760]	@, %sfp
	str	ip, [fp, #-800]	@,
	str	lr, [sp, #0]	@,
	bl	Check32PdPattern	@
	ldr	ip, [fp, #-800]	@,
	cmp	r0, #0	@ ValidFlag.1244
	beq	.L305	@,
	cmp	r0, #1	@ ValidFlag.1244,
	bne	.L307	@,
	ldrsb	r3, [r4, #113]	@ temp.1242, <variable>.stFmdCtx.Last32Phase
	cmp	r3, #1	@ temp.1242,
	beq	.L311	@,
	cmp	r3, #6	@ temp.1242,
	beq	.L311	@,
.L307:
	mov	r7, #2	@ HitPhase,
.L305:
	add	ip, ip, #1	@ InValidCnt, InValidCnt,
.L306:
	ldr	lr, [fp, #-768]	@, %sfp
	mov	r0, #3	@,
	sub	r1, fp, #164	@,,
	ldr	r2, [fp, #-756]	@, %sfp
	ldr	r3, [fp, #-760]	@, %sfp
	str	ip, [fp, #-800]	@,
	str	lr, [sp, #0]	@,
	bl	Check32PdPattern	@
	ldr	ip, [fp, #-800]	@,
	cmp	r0, #0	@ ValidFlag.1024
	beq	.L313	@,
	cmp	r0, #1	@ ValidFlag.1024,
	bne	.L315	@,
	ldrsb	r3, [r4, #113]	@ temp.1238, <variable>.stFmdCtx.Last32Phase
	cmp	r3, #2	@ temp.1238,
	beq	.L319	@,
	cmp	r3, #7	@ temp.1238,
	beq	.L319	@,
.L315:
	mov	r7, #3	@ HitPhase,
.L313:
	add	ip, ip, #1	@ InValidCnt, InValidCnt,
.L314:
	ldr	lr, [fp, #-768]	@, %sfp
	sub	r1, fp, #164	@,,
	ldr	r2, [fp, #-756]	@, %sfp
	mov	r0, #4	@,
	ldr	r3, [fp, #-760]	@, %sfp
	str	ip, [fp, #-800]	@,
	str	lr, [sp, #0]	@,
	bl	Check32PdPattern	@
	ldr	ip, [fp, #-800]	@,
	cmp	r0, #0	@ ValidFlag
	beq	.L320	@,
	cmp	r0, #1	@ ValidFlag,
	bne	.L321	@,
	ldrsb	r3, [r4, #113]	@ D.26624, <variable>.stFmdCtx.Last32Phase
	cmp	r3, #3	@ D.26624,
	beq	.L322	@,
	cmp	r3, #8	@ D.26624,
	beq	.L322	@,
.L321:
	mov	r7, #4	@ HitPhase,
.L320:
	add	ip, ip, #1	@ InValidCnt, InValidCnt,
.L325:
	ldr	r3, [fp, #-772]	@ tmp808, %sfp
	cmp	ip, #4	@ InValidCnt,
	orrgt	r3, r3, #1	@,, tmp808, tmp808
	cmp	r3, #0	@ tmp808,
	beq	.L420	@,
	ldr	r0, [fp, #-772]	@, %sfp
	cmp	r0, #0	@,
	beq	.L327	@,
	mov	r1, #0	@ tmp809,
	strb	r1, [r4, #360]	@ tmp809, <variable>.stFmdCtx.PdInfo.PdState
.L330:
	ldrb	r3, [r4, #360]	@ zero_extendqisi2	@, <variable>.stFmdCtx.PdInfo.PdState
	mov	sl, #0	@ tmp813,
	strb	sl, [r4, #361]	@ tmp813, <variable>.stFmdCtx.PdInfo.RptFlag
	str	sl, [r4, #352]	@ tmp813, <variable>.stFmdCtx.PdInfo.Pd32Det
	sxtb	r2, r3	@ D.26612, <variable>.stFmdCtx.PdInfo.PdState
	strb	sl, [r4, #362]	@ tmp813, <variable>.stFmdCtx.PdInfo.PdSubState
	str	r2, [r4, #440]	@ D.26612, <variable>.Count
	str	r2, [r4, #424]	@ D.26612, <variable>.Count
	str	r2, [r4, #428]	@ D.26612, <variable>.Count
	str	r2, [r4, #432]	@ D.26612, <variable>.Count
	str	r2, [r4, #436]	@ D.26612, <variable>.Count
.L329:
	uxtb	r7, r7	@ iftmp.1011, HitPhase
.L334:
	add	sl, r4, #352	@ tmp852, pstFmdSoftInfo,
	sub	r0, fp, #68	@,,
	str	r0, [fp, #-756]	@, %sfp
	ldmia	sl, {r0, r1, r2}	@ tmp852,,,
	strb	r7, [r4, #113]	@ iftmp.1011, <variable>.stFmdCtx.Last32Phase
	ldr	r7, [fp, #-756]	@, %sfp
	stmia	r7, {r0, r1, r2}	@,,,
	ldr	ip, [fp, #-68]	@ NewPdInf$Pd32Det, NewPdInf.Pd32Det
.L272:
	ldr	r3, [r4, #400]	@ <variable>.Pd32Det, <variable>.Pd32Det
	cmp	r3, #1	@ <variable>.Pd32Det,
	beq	.L421	@,
.L335:
	add	r7, r4, #376	@ tmp867, pstFmdSoftInfo,
	add	r0, r4, #364	@, pstFmdSoftInfo,
	add	r1, r4, #400	@, pstFmdSoftInfo,
	str	r0, [fp, #-768]	@, %sfp
	str	r1, [fp, #-760]	@, %sfp
	add	sl, r4, #388	@ tmp869, pstFmdSoftInfo,
	ldmia	r7, {r0, r1, r2}	@ tmp867,,,
	str	ip, [fp, #-68]	@ NewPdInf$Pd32Det, NewPdInf.Pd32Det
	ldr	ip, [fp, #-768]	@, %sfp
	add	r3, r4, #412	@ tmp873, pstFmdSoftInfo,
	stmia	ip, {r0, r1, r2}	@,,,
	ldmia	sl, {r0, r1, r2}	@ tmp869,,,
	stmia	r7, {r0, r1, r2}	@ tmp867,,,
	ldr	r7, [fp, #-760]	@, %sfp
	ldmia	r7, {r0, r1, r2}	@,,,
	stmia	sl, {r0, r1, r2}	@ tmp869,,,
	ldmia	r3, {r0, r1, r2}	@ tmp873,,,
	stmia	r7, {r0, r1, r2}	@,,,
	ldr	ip, [fp, #-756]	@, %sfp
	ldmia	ip, {r0, r1, r2}	@,,,
	stmia	r3, {r0, r1, r2}	@ tmp873,,,
.L268:
	ldr	r2, [r4, #452]	@ <variable>.stFmdCtx.stRepeatHist.nxt_repeat, <variable>.stFmdCtx.stRepeatHist.nxt_repeat
	cmp	r2, #0	@ <variable>.stFmdCtx.stRepeatHist.nxt_repeat,
	bne	.L422	@,
	ldr	r1, [r4, #448]	@ <variable>.stFmdCtx.stRepeatHist.cur_repeat, <variable>.stFmdCtx.stRepeatHist.cur_repeat
	cmp	r1, #0	@ <variable>.stFmdCtx.stRepeatHist.cur_repeat,
	bne	.L337	@,
	add	r3, r9, r9, asl #1	@, tmp901, D.26449, D.26449,
	ldr	r7, [fp, #-816]	@, %sfp
	add	r1, r4, r3, asl #2	@, tmp903, pstFmdSoftInfo, tmp901,
	add	ip, r1, #364	@ tmp906, tmp903,
	ldmia	ip, {r0, r1, r2}	@ tmp906,,,
	stmia	r7, {r0, r1, r2}	@,,,
	ldr	r7, [fp, #-56]	@ Pld32Info$Pd32Det.1008, Pld32Info.Pd32Det
	mov	r2, r7	@ Pld32Info$Pd32Det, Pld32Info$Pd32Det.1008
	b	.L267	@
.L356:
	ldr	r7, [fp, #-776]	@, %sfp
	str	r7, [fp, #-96]	@, stFmdRtlOutPara.DirMch
	b	.L360	@
.L361:
	ldr	r2, [fp, #-776]	@, %sfp
	str	r2, [fp, #-96]	@, stFmdRtlOutPara.DirMch
	b	.L362	@
.L428:
	.align	2
.L427:
	.word	.LANCHOR1+100
.L364:
	ldr	r9, [fp, #-776]	@, %sfp
	str	r9, [fp, #-96]	@, stFmdRtlOutPara.DirMch
	b	.L365	@
.L359:
	ldr	ip, [fp, #-756]	@, %sfp
	cmp	ip, #1	@,
	bne	.L360	@,
	ldr	r9, [fp, #-772]	@, %sfp
	movw	r1, #:lower16:1717986919	@ tmp944,
	movt	r1, #:upper16:1717986919	@ tmp944,
	sxtb	r3, r9	@ PdInfo$PdSubState,
	add	r9, r3, #2	@ tmp941, PdInfo$PdSubState,
	smull	r7, r2, r1, r9	@, tmp943, tmp944, tmp941
	mov	r7, r9, asr #31	@ tmp946, tmp941,
	rsb	ip, r7, r2, asr #2	@, tmp942, tmp946, tmp943,
	add	r2, ip, ip, asl #2	@, tmp949, tmp942, tmp942,
	sub	r3, r9, r2, asl #1	@ tmp951, tmp941, tmp949,
	sub	r9, fp, #44	@,,
	add	r1, r9, r3, asl #2	@, tmp954,, tmp951,
	ldr	r7, [r1, #-120]	@ tmp956, MchTab
	str	r7, [fp, #-96]	@ tmp956, stFmdRtlOutPara.DirMch
	b	.L360	@
.L337:
	sub	sl, r9, #1	@ tmp888, D.26449,
	ldr	r3, [fp, #-816]	@, %sfp
	add	r2, sl, sl, asl #1	@, tmp892, tmp888, tmp888,
	add	r0, r4, r2, asl #2	@, tmp894, pstFmdSoftInfo, tmp892,
	add	r9, r0, #364	@ tmp897, tmp894,
	ldmia	r9, {r0, r1, r2}	@ tmp897,,,
	stmia	r3, {r0, r1, r2}	@,,,
	ldr	r7, [fp, #-56]	@ Pld32Info$Pd32Det.1008, Pld32Info.Pd32Det
	mov	r2, r7	@ Pld32Info$Pd32Det, Pld32Info$Pd32Det.1008
	b	.L267	@
.L422:
	ldr	r3, [r4, #448]	@ <variable>.stFmdCtx.stRepeatHist.cur_repeat, <variable>.stFmdCtx.stRepeatHist.cur_repeat
	cmp	r3, #0	@ <variable>.stFmdCtx.stRepeatHist.cur_repeat,
	beq	.L337	@,
	add	ip, r9, r9, asl #1	@, tmp881, D.26449, D.26449,
	ldr	r9, [fp, #-816]	@, %sfp
	add	r7, r4, ip, asl #2	@, tmp883, pstFmdSoftInfo, tmp881,
	add	sl, r7, #340	@ tmp886, tmp883,
	ldmia	sl, {r0, r1, r2}	@ tmp886,,,
	stmia	r9, {r0, r1, r2}	@,,,
	ldr	r7, [fp, #-56]	@ Pld32Info$Pd32Det.1008, Pld32Info.Pd32Det
	mov	r2, r7	@ Pld32Info$Pd32Det, Pld32Info$Pd32Det.1008
	b	.L267	@
.L347:
	strb	r3, [r4, #108]	@ D.26414, <variable>.stFmdCtx.MainState
	movw	r7, #:lower16:.LANCHOR1	@ tmp1057,
	strb	sl, [r4, #109]	@ D.26415, <variable>.stFmdCtx.PrevMainState
	movt	r7, #:upper16:.LANCHOR1	@ tmp1057,
	ldr	r8, [r4, #16]	@, <variable>.stFmdCtx.NxtIs2ndFld
	ldr	r1, [fp, #-740]	@, stDeiDrvPara.s32DeiMdLum
	str	r8, [fp, #-776]	@, %sfp
	ldr	r9, [r4, #28]	@ temp.983, <variable>.stFmdCtx.s32PbDelay
	str	r1, [fp, #-756]	@, %sfp
	b	.L355	@
.L343:
	ldr	r9, [fp, #-816]	@, %sfp
	sub	ip, fp, #68	@ tmp1023,,
	str	r2, [fp, #-56]	@ Pld32Info$Pd32Det, Pld32Info.Pd32Det
	sub	r8, fp, #164	@,,
	str	r8, [fp, #-824]	@, %sfp
	mov	r8, r7	@ PbState, Pld32Info$Pd32Det.1008
	ldmia	r9, {r0, r1, r2}	@,,,
	strb	r3, [r4, #108]	@ D.26414, <variable>.stFmdCtx.MainState
	strb	sl, [r4, #109]	@ D.26415, <variable>.stFmdCtx.PrevMainState
	ldr	r9, .L427	@ tmp1027,
	ldr	sl, [fp, #-740]	@, stDeiDrvPara.s32DeiMdLum
	stmia	ip, {r0, r1, r2}	@ tmp1023,,,
	ldrb	r7, [fp, #-58]	@ zero_extendqisi2	@, PdInfo.PdSubState
	str	sl, [fp, #-756]	@, %sfp
	ldr	ip, [fp, #-824]	@ tmp1092, %sfp
	str	r7, [fp, #-772]	@, %sfp
	mov	r7, r9	@ tmp1091, tmp1027
	ldmia	r7!, {r0, r1, r2, r3}	@ tmp1091,,,,
	b	.L382	@
.L351:
	mov	r8, #0	@ prephitmp.1018,
	b	.L346	@
.L414:
	ldr	r3, [fp, #-668]	@ temp.976, stDeiDrvPara.stVdecInfo.RealFrmRate
	movw	sl, #23799	@ tmp689,
	cmp	r3, sl	@ temp.976, tmp689
	ble	.L263	@,
	movw	lr, #24199	@ tmp690,
	cmp	r3, lr	@ temp.976, tmp690
	bgt	.L263	@,
	mov	r8, #1	@ IsProgressive,
	b	.L256	@
.L322:
	ldr	r7, [r4, #440]	@ <variable>.Count, <variable>.Count
	add	r3, r7, #1	@ D.26620, <variable>.Count,
	str	r3, [r4, #440]	@ D.26620, <variable>.Count
	cmp	r3, #0	@ D.26620,
	ble	.L323	@,
	cmp	r3, #5	@ D.26620,
	movge	r3, #5	@ iftmp.222,
	mov	r7, #4	@ HitPhase,
	cmp	r3, #3	@ iftmp.222,
	str	r3, [r4, #440]	@ iftmp.222, <variable>.Count
	movle	sl, r7	@ HitPhase.1031, HitPhase
	movgt	r3, #3	@ tmp799,
	movgt	sl, r7	@ HitPhase.1031, HitPhase
	strgt	r3, [r4, #436]	@ tmp799, <variable>.Count
	strgt	r3, [r4, #424]	@ tmp799, <variable>.Count
	strgt	r3, [r4, #428]	@ tmp799, <variable>.Count
	strgt	r3, [r4, #432]	@ tmp799, <variable>.Count
	b	.L325	@
.L319:
	ldr	r1, [r4, #436]	@ <variable>.Count, <variable>.Count
	add	r3, r1, #1	@ temp.1016, <variable>.Count,
	str	r3, [r4, #436]	@ temp.1016, <variable>.Count
	cmp	r3, #0	@ temp.1016,
	ble	.L423	@,
	cmp	r3, #5	@ temp.1016,
	movge	r3, #5	@ iftmp.1199,
	str	r3, [r4, #436]	@ iftmp.1199, <variable>.Count
	cmp	r3, #3	@ iftmp.1199,
	movle	r7, #3	@ HitPhase,
	movle	sl, r7	@ HitPhase.1031, HitPhase
	ble	.L314	@,
	mov	r2, #3	@ tmp793,
	str	r2, [r4, #424]	@ tmp793, <variable>.Count
	mov	r7, r2	@ HitPhase, tmp793
	str	r2, [r4, #428]	@ tmp793, <variable>.Count
	str	r2, [r4, #432]	@ tmp793, <variable>.Count
	mov	sl, r2	@ HitPhase.1031, HitPhase
	str	r2, [r4, #440]	@ tmp793, <variable>.Count
	b	.L314	@
.L303:
	ldr	r0, [r4, #428]	@ <variable>.Count, <variable>.Count
	add	r3, r0, #1	@ temp.1150, <variable>.Count,
	str	r3, [r4, #428]	@ temp.1150, <variable>.Count
	cmp	r3, #0	@ temp.1150,
	ble	.L424	@,
	cmp	r3, #5	@ temp.1150,
	movge	r3, #5	@ iftmp.1141,
	str	r3, [r4, #428]	@ iftmp.1141, <variable>.Count
	cmp	r3, #3	@ iftmp.1141,
	movle	r7, #1	@ HitPhase,
	movle	sl, r7	@ HitPhase.1031, HitPhase
	ble	.L298	@,
	mov	r7, #1	@ HitPhase,
	mov	r1, #3	@ tmp779,
	mov	sl, r7	@ HitPhase.1031, HitPhase
	str	r1, [r4, #440]	@ tmp779, <variable>.Count
	str	r1, [r4, #424]	@ tmp779, <variable>.Count
	str	r1, [r4, #432]	@ tmp779, <variable>.Count
	str	r1, [r4, #436]	@ tmp779, <variable>.Count
	b	.L298	@
.L311:
	ldr	r2, [r4, #432]	@ <variable>.Count, <variable>.Count
	add	r3, r2, #1	@ temp.1240, <variable>.Count,
	str	r3, [r4, #432]	@ temp.1240, <variable>.Count
	cmp	r3, #0	@ temp.1240,
	ble	.L425	@,
	cmp	r3, #5	@ temp.1240,
	movge	r3, #5	@ iftmp.1052,
	str	r3, [r4, #432]	@ iftmp.1052, <variable>.Count
	cmp	r3, #3	@ iftmp.1052,
	movle	r7, #2	@ HitPhase,
	movle	sl, r7	@ HitPhase.1031, HitPhase
	ble	.L306	@,
	mov	r7, #2	@ HitPhase,
	mov	r0, #3	@ tmp786,
	mov	sl, r7	@ HitPhase.1031, HitPhase
	str	r0, [r4, #440]	@ tmp786, <variable>.Count
	str	r0, [r4, #424]	@ tmp786, <variable>.Count
	str	r0, [r4, #428]	@ tmp786, <variable>.Count
	str	r0, [r4, #436]	@ tmp786, <variable>.Count
	b	.L306	@
.L295:
	ldr	r3, [r4, #424]	@ <variable>.Count, <variable>.Count
	add	r3, r3, #1	@ temp.1228, <variable>.Count,
	str	r3, [r4, #424]	@ temp.1228, <variable>.Count
	cmp	r3, #0	@ temp.1228,
	ble	.L426	@,
	cmp	r3, #5	@ temp.1228,
	movge	r3, #5	@ iftmp.1219,
	str	r3, [r4, #424]	@ iftmp.1219, <variable>.Count
	cmp	r3, #3	@ iftmp.1219,
	movle	r7, #0	@ HitPhase,
	movle	sl, r7	@ HitPhase.1031, HitPhase
	movle	ip, r7	@ InValidCnt, HitPhase
	ble	.L290	@,
	mov	r7, #0	@ HitPhase,
	mov	lr, #3	@ tmp772,
	mov	sl, r7	@ HitPhase.1031, HitPhase
	str	lr, [r4, #440]	@ tmp772, <variable>.Count
	str	lr, [r4, #428]	@ tmp772, <variable>.Count
	mov	ip, r7	@ InValidCnt, HitPhase
	str	lr, [r4, #432]	@ tmp772, <variable>.Count
	str	lr, [r4, #436]	@ tmp772, <variable>.Count
	b	.L290	@
.L416:
	ldr	r8, [r4, #120]	@, <variable>.stFmdCtx.FieldOrder
	str	r8, [fp, #-764]	@, %sfp
	b	.L217	@
.L419:
	add	r2, r4, #352	@ tmp723, pstFmdSoftInfo,
	mov	r1, #0	@ tmp715,
	sub	r0, fp, #68	@,,
	strb	r1, [r4, #361]	@ tmp715, <variable>.stFmdCtx.PdInfo.RptFlag
	str	r0, [fp, #-756]	@, %sfp
	mvn	ip, #0	@ tmp720,
	str	r1, [r4, #352]	@ tmp715, <variable>.stFmdCtx.PdInfo.Pd32Det
	strb	r1, [r4, #360]	@ tmp715, <variable>.stFmdCtx.PdInfo.PdState
	ldmia	r2, {r0, r1, r2}	@ tmp723,,,
	strb	ip, [r4, #113]	@ tmp720, <variable>.stFmdCtx.Last32Phase
	ldr	sl, [fp, #-756]	@, %sfp
	stmia	sl, {r0, r1, r2}	@,,,
	ldr	ip, [fp, #-68]	@ NewPdInf$Pd32Det, NewPdInf.Pd32Det
	b	.L272	@
.L415:
	ldr	r3, [r4, #20]	@ D.26545, <variable>.stFmdCtx.BtMode
	cmp	r3, #0	@ D.26545,
	bne	.L219	@,
	ldr	sl, [r4, #24]	@ <variable>.stFmdCtx.RefFld, <variable>.stFmdCtx.RefFld
	cmp	sl, #0	@ <variable>.stFmdCtx.RefFld,
	bne	.L218	@,
.L220:
	ldr	r9, [r4, #120]	@, <variable>.stFmdCtx.FieldOrder
	str	r9, [fp, #-764]	@, %sfp
	b	.L217	@
.L247:
	mov	ip, #0	@ tmp636,
	str	ip, [r4, #120]	@ tmp636, <variable>.stFmdCtx.FieldOrder
	b	.L251	@
.L241:
	ldr	r7, [fp, #-756]	@, %sfp
	eor	lr, ip, #1	@ tmp610, islasi14smallest,
	tst	lr, r7	@ tmp610,
	beq	.L242	@,
	mvn	r8, #49	@ tmp615,
	cmp	r2, r8	@ fac.997, tmp615
	movge	r2, r8	@ fac.997, tmp615
	b	.L242	@
.L420:
	ldr	ip, [fp, #-752]	@, %sfp
	cmp	ip, #0	@,
	bne	.L327	@,
	cmp	sl, #4	@ HitPhase.1031,
	bhi	.L331	@,
	add	r3, sl, #104	@ tmp827, HitPhase.1031,
	ldr	ip, [r4, #12]	@ <variable>.stFmdCtx.Is2ndFld, <variable>.stFmdCtx.Is2ndFld
	and	r0, sl, #1	@ tmp841, HitPhase.1031,
	add	r2, r4, r3, asl #2	@, tmp830, pstFmdSoftInfo, tmp827,
	ldr	r1, [r2, #8]	@ <variable>.Count, <variable>.Count
	strb	r1, [r4, #360]	@ <variable>.Count, <variable>.stFmdCtx.PdInfo.PdState
	ldr	r1, [r2, #8]	@ <variable>.Count, <variable>.Count
	cmp	r1, #3	@ <variable>.Count,
	movle	r3, #0	@, tmp840
	movgt	r3, #1	@, tmp840
	cmp	ip, r0	@ <variable>.stFmdCtx.Is2ndFld, tmp841
	str	r3, [r4, #352]	@ tmp840, <variable>.stFmdCtx.PdInfo.Pd32Det
	addne	r3, sl, #5	@ tmp844, HitPhase.1031,
	uxtbeq	r3, sl	@ iftmp.226, HitPhase.1031
	uxtbne	r7, sl	@ iftmp.1011, HitPhase.1031
	uxtbne	r3, r3	@ iftmp.226, tmp844
	strb	r3, [r4, #362]	@ iftmp.226, <variable>.stFmdCtx.PdInfo.PdSubState
	uxtbeq	r7, r3	@ iftmp.1011, iftmp.226
	rsbs	r2, sl, #1	@ tmp846, HitPhase.1031
	movcc	r2, #0	@ tmp846
	strb	r2, [r4, #361]	@ tmp846, <variable>.stFmdCtx.PdInfo.RptFlag
	b	.L334	@
.L421:
	cmp	ip, #0	@ NewPdInf$Pd32Det,
	bne	.L335	@,
	add	r2, r3, #1	@ tmp854, tmp854,
	str	ip, [r4, #412]	@ NewPdInf$Pd32Det, <variable>.Pd32Det
	strb	r2, [r4, #384]	@ tmp854, <variable>.PdState
	strb	r2, [r4, #420]	@ tmp854, <variable>.PdState
	strb	r2, [r4, #408]	@ tmp854, <variable>.PdState
	str	ip, [r4, #400]	@ NewPdInf$Pd32Det, <variable>.Pd32Det
	strb	r2, [r4, #396]	@ tmp854, <variable>.PdState
	str	ip, [r4, #388]	@ NewPdInf$Pd32Det, <variable>.Pd32Det
	str	ip, [r4, #376]	@ NewPdInf$Pd32Det, <variable>.Pd32Det
	b	.L335	@
.L327:
	ldrb	sl, [r4, #360]	@ zero_extendqisi2	@ <variable>.stFmdCtx.PdInfo.PdState, <variable>.stFmdCtx.PdInfo.PdState
	sub	r1, sl, #1	@ tmp821, <variable>.stFmdCtx.PdInfo.PdState,
	sxtb	r0, r1	@ tmp822, tmp821
	cmp	r0, #4	@ tmp822,
	movge	r0, #4	@ iftmp.223,
	bic	ip, r0, r0, asr #31	@ tmp825, iftmp.223
	strb	ip, [r4, #360]	@ tmp825, <variable>.stFmdCtx.PdInfo.PdState
	b	.L330	@
.L418:
	cmp	r3, #200	@ <variable>.stFmdCtx.SADDiffAcc,
	bgt	.L247	@,
	cmn	r3, #200	@ <variable>.stFmdCtx.SADDiffAcc,
	ldrge	ip, [r4, #120]	@ prephitmp.1019, <variable>.stFmdCtx.FieldOrder
	bge	.L251	@,
	b	.L249	@
.L219:
	cmp	r3, #1	@ D.26545,
	bne	.L218	@,
	ldr	ip, [r4, #24]	@ <variable>.stFmdCtx.RefFld, <variable>.stFmdCtx.RefFld
	cmp	ip, #1	@ <variable>.stFmdCtx.RefFld,
	bne	.L218	@,
	b	.L220	@
.L331:
	rsbs	ip, sl, #1	@ tmp848, HitPhase.1031
	movcc	ip, #0	@ tmp848
	cmn	sl, #1	@ HitPhase.1031,
	strb	ip, [r4, #361]	@ tmp848, <variable>.stFmdCtx.PdInfo.RptFlag
	uxtbne	r7, sl	@ iftmp.1011, HitPhase.1031
	bne	.L334	@,
	b	.L329	@
.L423:
	mov	r7, #3	@ HitPhase,
	mov	sl, #0	@ tmp792,
	str	sl, [r4, #436]	@ tmp792, <variable>.Count
	mov	sl, r7	@ HitPhase.1031, HitPhase
	b	.L314	@
.L424:
	mov	r7, #1	@ HitPhase,
	mov	sl, #0	@ tmp778,
	str	sl, [r4, #428]	@ tmp778, <variable>.Count
	mov	sl, r7	@ HitPhase.1031, HitPhase
	b	.L298	@
.L323:
	mov	r7, #4	@ HitPhase,
	mov	sl, #0	@ tmp1004,
	str	sl, [r4, #440]	@ tmp1004, <variable>.Count
	mov	sl, r7	@ HitPhase.1031, HitPhase
	b	.L325	@
.L425:
	mov	r7, #2	@ HitPhase,
	mov	r3, #0	@ tmp785,
	mov	sl, r7	@ HitPhase.1031, HitPhase
	str	r3, [r4, #432]	@ tmp785, <variable>.Count
	b	.L306	@
.L426:
	mov	r7, #0	@ tmp771,
	str	r7, [r4, #424]	@ tmp771, <variable>.Count
	mov	sl, r7	@ HitPhase.1031, HitPhase
	mov	ip, r7	@ InValidCnt, HitPhase
	b	.L290	@
.L417:
	movw	r8, #:lower16:-500	@ tmp603,
	movt	r8, #:upper16:-500	@ tmp603,
	cmp	r0, r8	@ tmp601, tmp603
	movge	r2, r0	@ fac.997, tmp601
	movlt	r2, r8	@ fac.997, tmp603
	b	.L240	@
	.fnend
	.size	PQ_MNG_IFMD_GetPlayBackConfig, .-PQ_MNG_IFMD_GetPlayBackConfig
	.align	2
	.global	PQ_MNG_IfmdDect
	.type	PQ_MNG_IfmdDect, %function
PQ_MNG_IfmdDect:
	.fnstart
.LFB678:
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
	subs	r5, r1, #0	@ pstIfmdResult, pstIfmdResult
	mov	r4, r0	@ pstIfmdCalc, pstIfmdCalc
	beq	.L435	@,
	cmp	r0, #0	@ pstIfmdCalc,
	beq	.L436	@,
	ldr	r1, .L437	@,
	bl	PQ_HAL_GetIFmdStatInfo	@
	mov	r2, r5	@, pstIfmdResult
	mov	r1, r4	@, pstIfmdCalc
	ldr	r0, .L437	@,
	bl	PQ_MNG_IFMD_GetPlayBackConfig	@
	mov	r1, r5	@, pstIfmdResult
	ldr	r0, [r4, #0]	@, <variable>.u32HandleNo
	bl	PQ_MNG_SetIFmdInfo	@
	ldr	r0, [r4, #0]	@, <variable>.u32HandleNo
	ldr	r1, [r5, #36]	@, <variable>.u32EdgeSmoothEn
	bl	PQ_MNG_SetEdgeSmoothEn	@
	mov	r0, #0	@ D.25337,
.L431:
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L436:
	ldr	r2, .L437+4	@,
	mov	r0, #1	@,
	mov	r1, #41	@,
	movw	r3, #2087	@,
.L434:
	movw	ip, #:lower16:.LC2	@ tmp142,
	movt	ip, #:upper16:.LC2	@ tmp142,
	str	ip, [sp, #0]	@ tmp142,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.25337,
	b	.L431	@
.L435:
	mov	r0, #1	@,
	mov	r1, #41	@,
	ldr	r2, .L437+4	@,
	movw	r3, #2086	@,
	b	.L434	@
.L438:
	.align	2
.L437:
	.word	.LANCHOR3-132
	.word	.LANCHOR1+148
	.fnend
	.size	PQ_MNG_IfmdDect, .-PQ_MNG_IfmdDect
	.align	2
	.global	PQ_MNG_InitIfmd
	.type	PQ_MNG_InitIfmd, %function
PQ_MNG_InitIfmd:
	.fnstart
.LFB657:
	@ args = 0, pretend = 0, frame = 0
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp137,
	movt	r4, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r4, #0]	@ sg_bIFmdInitFlag, sg_bIFmdInitFlag
	cmp	r3, #1	@ sg_bIFmdInitFlag,
	moveq	r0, #0	@ D.23832,
	beq	.L441	@,
	mov	r0, #0	@,
	bl	PQ_MNG_IFMD_SofewareParaInitByHandleNo	@
	mov	r0, #1	@,
	bl	PQ_MNG_IFMD_SofewareParaInitByHandleNo	@
	mov	r0, #2	@,
	bl	PQ_MNG_IFMD_SofewareParaInitByHandleNo	@
	mov	r0, #3	@,
	bl	PQ_MNG_IFMD_SofewareParaInitByHandleNo	@
	mov	r0, #4	@,
	bl	PQ_MNG_IFMD_SofewareParaInitByHandleNo	@
	mov	r0, #5	@,
	bl	PQ_MNG_IFMD_SofewareParaInitByHandleNo	@
	mov	r0, #6	@,
	bl	PQ_MNG_IFMD_SofewareParaInitByHandleNo	@
	mov	r0, #7	@,
	bl	PQ_MNG_IFMD_SofewareParaInitByHandleNo	@
	mov	r0, #8	@,
	bl	PQ_MNG_IFMD_SofewareParaInitByHandleNo	@
	mov	r0, #9	@,
	bl	PQ_MNG_IFMD_SofewareParaInitByHandleNo	@
	mov	r0, #10	@,
	bl	PQ_MNG_IFMD_SofewareParaInitByHandleNo	@
	mov	r0, #11	@,
	bl	PQ_MNG_IFMD_SofewareParaInitByHandleNo	@
	mov	r0, #12	@,
	bl	PQ_MNG_IFMD_SofewareParaInitByHandleNo	@
	mov	r0, #13	@,
	bl	PQ_MNG_IFMD_SofewareParaInitByHandleNo	@
	mov	r0, #14	@,
	bl	PQ_MNG_IFMD_SofewareParaInitByHandleNo	@
	mov	r0, #15	@,
	bl	PQ_MNG_IFMD_SofewareParaInitByHandleNo	@
	mov	r1, #1	@,
	mov	r0, #0	@,
	bl	PQ_HAL_SetIFmdEn	@
	mov	r0, #0	@,
	mov	r3, r0	@,
	mov	r1, r0	@,
	mov	r2, r0	@,
	mov	ip, #2	@ tmp139,
	str	ip, [sp, #0]	@ tmp139,
	bl	PQ_MNG_InitPhyList	@
	cmp	r0, #0	@ s32Ret
	moveq	r3, #1	@ tmp144,
	streq	r3, [r4, #0]	@ tmp144, sg_bIFmdInitFlag
	bne	.L444	@,
.L441:
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L444:
	mov	r0, #1	@,
	mov	r1, #41	@,
	ldr	r2, .L445	@,
	mov	r3, #193	@,
	movw	lr, #:lower16:.LC3	@ tmp142,
	movt	lr, #:upper16:.LC3	@ tmp142,
	str	lr, [sp, #0]	@ tmp142,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.23832,
	b	.L441	@
.L446:
	.align	2
.L445:
	.word	.LANCHOR1+164
	.fnend
	.size	PQ_MNG_InitIfmd, .-PQ_MNG_InitIfmd
	.section	.rodata
	.align	2
.LANCHOR1 = . + 0
	.type	C.210.24092, %object
	.size	C.210.24092, 100
C.210.24092:
	.word	1
	.word	1
	.word	1
	.word	1
	.word	0
	.word	1
	.word	1
	.word	1
	.word	0
	.word	1
	.word	1
	.word	1
	.word	0
	.word	1
	.word	1
	.word	1
	.word	0
	.word	1
	.word	1
	.word	1
	.word	0
	.word	1
	.word	1
	.word	1
	.word	1
	.type	C.228.24260, %object
	.size	C.228.24260, 40
C.228.24260:
	.word	0
	.word	1
	.word	0
	.word	1
	.word	0
	.word	0
	.word	1
	.word	0
	.word	1
	.word	0
	.type	g_u32PDTypeNum, %object
	.size	g_u32PDTypeNum, 8
g_u32PDTypeNum:
	.word	32
	.word	22
	.type	__func__.25334, %object
	.size	__func__.25334, 16
__func__.25334:
	.ascii	"PQ_MNG_IfmdDect\000"
	.type	__func__.23828, %object
	.size	__func__.23828, 16
__func__.23828:
	.ascii	"PQ_MNG_InitIfmd\000"
	.data
	.align	2
.LANCHOR2 = . + 0
	.type	sg_enFodMode, %object
	.size	sg_enFodMode, 4
sg_enFodMode:
	.word	1
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"lasi(%d, %d, %d,)\012\000"
	.space	1
.LC1:
	.ascii	"fac:%d, saddiff:%d, order:%d\012\000"
	.space	2
.LC2:
	.ascii	"pointer is NULL!\012\000"
	.space	2
.LC3:
	.ascii	"ifmd InitPhyList error\012\000"
	.bss
	.align	2
.LANCHOR0 = . + 0
.LANCHOR3 = . + 8184
	.type	sg_bIFmdInitFlag, %object
	.size	sg_bIFmdInitFlag, 4
sg_bIFmdInitFlag:
	.space	4
	.type	sg_FmdDectInfo, %object
	.size	sg_FmdDectInfo, 40
sg_FmdDectInfo:
	.space	40
	.type	sg_enDieOutMode, %object
	.size	sg_enDieOutMode, 4
sg_enDieOutMode:
	.space	4
	.type	sg_s32DeiMdLum, %object
	.size	sg_s32DeiMdLum, 4
sg_s32DeiMdLum:
	.space	4
	.type	sgIfmdTotalSoftParaN, %object
	.size	sgIfmdTotalSoftParaN, 8000
sgIfmdTotalSoftParaN:
	.space	8000
	.type	IfmdTotalHardPara.25333, %object
	.size	IfmdTotalHardPara.25333, 500
IfmdTotalHardPara.25333:
	.space	500
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
