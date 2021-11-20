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
	.file	"pq_mng_pq_table.c"
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
@ -DKBUILD_BASENAME=KBUILD_STR(pq_mng_pq_table)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_pq) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD drivers/msp/pq/pq_v3_0/mng/.pq_mng_pq_table.o.d
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/drivers/msp/pq/pq_v3_0/mng/pq_mng_pq_table.c
@ -mlittle-endian -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -marm -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/pq/pq_v3_0/mng/pq_mng_pq_table.o -O2 -Wall -Wundef
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
	.global	PQ_MNG_DeInitPQTable
	.type	PQ_MNG_DeInitPQTable, %function
PQ_MNG_DeInitPQTable:
	.fnstart
.LFB696:
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
	ldr	r2, [r3, #0]	@ sg_bPqTableInitial, sg_bPqTableInitial
	cmp	r2, #0	@ sg_bPqTableInitial,
	movne	r2, #0	@ tmp137,
	strne	r2, [r3, #0]	@ tmp137, sg_bPqTableInitial
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	PQ_MNG_DeInitPQTable, .-PQ_MNG_DeInitPQTable
	.align	2
	.global	PQ_MNG_CheckSourceMode
	.type	PQ_MNG_CheckSourceMode, %function
PQ_MNG_CheckSourceMode:
	.fnstart
.LFB698:
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
	cmp	r1, #720	@ u32Height,
	movcc	r0, #1	@ D.24133,
	ldmccfd	sp, {fp, sp, pc}	@
	cmp	r1, #1920	@ u32Height,
	movls	r0, #2	@ D.24133,
	movhi	r0, #3	@ D.24133,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	PQ_MNG_CheckSourceMode, .-PQ_MNG_CheckSourceMode
	.align	2
	.global	PQ_MNG_CheckOutputMode
	.type	PQ_MNG_CheckOutputMode, %function
PQ_MNG_CheckOutputMode:
	.fnstart
.LFB699:
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
	cmp	r0, #1	@ bSRState,
	moveq	r0, #3	@,
	movne	r0, #2	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	PQ_MNG_CheckOutputMode, .-PQ_MNG_CheckOutputMode
	.align	2
	.global	PQ_MNG_GetReg
	.type	PQ_MNG_GetReg, %function
PQ_MNG_GetReg:
	.fnstart
.LFB710:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, r8, sl, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #24
	sub	sp, sp, #24	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r2, #:lower16:.LANCHOR0	@ tmp207,
	movt	r2, #:upper16:.LANCHOR0	@ tmp207,
	mov	r3, r0	@ pstAttr, pstAttr
	ldr	r2, [r2, #4]	@ sg_pstPhyReg.255, sg_pstPhyReg
	cmp	r2, #0	@ sg_pstPhyReg.255,
	beq	.L30	@,
	ldr	ip, [r0, #0]	@ pretmp.338, <variable>.u32RegAddr
	add	r6, r2, #32768	@ D.24758, ivtmp.360,
	ldrb	r4, [r0, #4]	@ zero_extendqisi2	@ pretmp.340, <variable>.u8Lsb
	ldrb	r5, [r0, #5]	@ zero_extendqisi2	@ pretmp.367, <variable>.u8Msb
	b	.L20	@
.L17:
	ldr	r1, [r2, #16]	@ <variable>.u32RegAddr, <variable>.u32RegAddr
	add	r2, r2, #16	@ tmp219, ivtmp.360,
	cmp	r1, ip	@ <variable>.u32RegAddr, pretmp.338
	ldrb	r0, [r2, #4]	@ zero_extendqisi2	@ u8Lsb, <variable>.u8Lsb
	ldr	r1, [r2, #12]	@ u32Value, <variable>.u32Value
	ldrb	r7, [r2, #5]	@ zero_extendqisi2	@ u8Msb, <variable>.u8Msb
	ldrb	r8, [r2, #6]	@ zero_extendqisi2	@ u8SourceMode, <variable>.u8SourceMode
	ldrb	sl, [r2, #7]	@ zero_extendqisi2	@ u8OutputMode, <variable>.u8OutputMode
	beq	.L31	@,
.L23:
	add	r2, r2, #16	@ ivtmp.360, tmp219,
	cmp	r2, r6	@ ivtmp.360, D.24758
	beq	.L32	@,
.L20:
	ldr	r0, [r2, #0]	@ <variable>.u32RegAddr, <variable>.u32RegAddr
	ldr	r1, [r2, #12]	@ u32Value, <variable>.u32Value
	cmp	r0, ip	@ <variable>.u32RegAddr, pretmp.338
	ldrb	r7, [r2, #5]	@ zero_extendqisi2	@ u8Msb, <variable>.u8Msb
	ldrb	r0, [r2, #4]	@ zero_extendqisi2	@ u8Lsb, <variable>.u8Lsb
	ldrb	r8, [r2, #6]	@ zero_extendqisi2	@ u8SourceMode, <variable>.u8SourceMode
	ldrb	sl, [r2, #7]	@ zero_extendqisi2	@ u8OutputMode, <variable>.u8OutputMode
	bne	.L17	@,
	cmp	r0, r4	@ u8Lsb, pretmp.340
	bne	.L17	@,
	cmp	r7, r5	@ u8Msb, pretmp.367
	bne	.L17	@,
	cmp	r8, #0	@ u8SourceMode,
	bne	.L33	@,
.L18:
	cmp	sl, #0	@ u8OutputMode,
	beq	.L19	@,
	ldrb	r0, [r3, #7]	@ zero_extendqisi2	@ <variable>.u8OutputMode, <variable>.u8OutputMode
	cmp	r0, sl	@ <variable>.u8OutputMode, u8OutputMode
	bne	.L17	@,
.L19:
	str	r1, [r3, #12]	@ u32Value, <variable>.u32Value
	mov	r0, #0	@ D.24604,
	b	.L16	@
.L31:
	cmp	r0, r4	@ u8Lsb, pretmp.340
	bne	.L23	@,
	cmp	r7, r5	@ u8Msb, pretmp.367
	bne	.L23	@,
	cmp	r8, #0	@ u8SourceMode,
	bne	.L27	@,
.L24:
	cmp	sl, #0	@ u8OutputMode,
	beq	.L19	@,
	ldrb	r0, [r3, #7]	@ zero_extendqisi2	@ <variable>.u8OutputMode, <variable>.u8OutputMode
	cmp	r0, sl	@ <variable>.u8OutputMode, u8OutputMode
	beq	.L19	@,
	add	r2, r2, #16	@ ivtmp.360, tmp219,
	cmp	r2, r6	@ ivtmp.360, D.24758
	bne	.L20	@,
.L32:
	ldrb	lr, [r3, #7]	@ zero_extendqisi2	@ <variable>.u8OutputMode, <variable>.u8OutputMode
	mov	r0, #1	@,
	ldrb	r6, [r3, #6]	@ zero_extendqisi2	@ <variable>.u8SourceMode, <variable>.u8SourceMode
	mov	r1, #41	@,
	movw	r2, #:lower16:.LANCHOR1	@,
	mov	r3, #640	@,
	movt	r2, #:upper16:.LANCHOR1	@,
	str	ip, [sp, #4]	@ pretmp.338,
	str	r4, [sp, #8]	@ pretmp.340,
	movw	ip, #:lower16:.LC1	@ tmp215,
	str	r5, [sp, #12]	@ pretmp.367,
	movt	ip, #:upper16:.LC1	@ tmp215,
	str	r6, [sp, #16]	@ <variable>.u8SourceMode,
	str	ip, [sp, #0]	@ tmp215,
	str	lr, [sp, #20]	@ <variable>.u8OutputMode,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.24604,
.L16:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L33:
	ldrb	r0, [r3, #6]	@ zero_extendqisi2	@ <variable>.u8SourceMode, <variable>.u8SourceMode
	cmp	r0, r8	@ <variable>.u8SourceMode, u8SourceMode
	bne	.L17	@,
	b	.L18	@
.L27:
	ldrb	r0, [r3, #6]	@ zero_extendqisi2	@ <variable>.u8SourceMode, <variable>.u8SourceMode
	cmp	r0, r8	@ <variable>.u8SourceMode, u8SourceMode
	bne	.L23	@,
	b	.L24	@
.L30:
	mov	r0, #1	@,
	mov	r1, #41	@,
	movw	r2, #:lower16:.LANCHOR1	@,
	movw	r3, #598	@,
	movt	r2, #:upper16:.LANCHOR1	@,
	movw	ip, #:lower16:.LC0	@ tmp210,
	movt	ip, #:upper16:.LC0	@ tmp210,
	str	ip, [sp, #0]	@ tmp210,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.24604,
	b	.L16	@
	.fnend
	.size	PQ_MNG_GetReg, .-PQ_MNG_GetReg
	.align	2
	.global	PQ_MNG_SetSoftTable
	.type	PQ_MNG_SetSoftTable, %function
PQ_MNG_SetSoftTable:
	.fnstart
.LFB707:
	@ args = 0, pretend = 0, frame = 0
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
	movw	ip, #:lower16:.LANCHOR0	@ tmp146,
	movt	ip, #:upper16:.LANCHOR0	@ tmp146,
	ldr	ip, [ip, #4]	@ sg_pstPhyReg.241, sg_pstPhyReg
	cmp	ip, #0	@ sg_pstPhyReg.241,
	beq	.L60	@,
	movw	r4, #:lower16:.LANCHOR2	@ tmp150,
	movt	r4, #:upper16:.LANCHOR2	@ tmp150,
	ldr	r5, [r4, #0]	@ sg_u32PhyListNum.242, sg_u32PhyListNum
	sub	r4, r5, #1	@ i, sg_u32PhyListNum.242,
	cmp	r4, #0	@ i,
	ble	.L37	@,
	sub	r6, r5, #-268435455	@ tmp151, sg_u32PhyListNum.242,
	sub	r7, r4, #1	@ tmp155, i,
	and	r7, r7, #1	@ tmp156, tmp155,
	add	ip, ip, r6, asl #4	@, ivtmp.401, sg_pstPhyReg.241, tmp151,
	ldr	r5, [ip, #0]	@ <variable>.u32RegAddr, <variable>.u32RegAddr
	ldrb	r6, [ip, #6]	@ zero_extendqisi2	@ u8SourceMode, <variable>.u8SourceMode
	cmp	r5, r0	@ <variable>.u32RegAddr, u32Lut
	ldrb	r5, [ip, #7]	@ zero_extendqisi2	@ u8OutputMode, <variable>.u8OutputMode
	bne	.L44	@,
	cmp	r6, #0	@ u8SourceMode,
	bne	.L57	@,
.L45:
	cmp	r5, #0	@ u8OutputMode,
	beq	.L40	@,
	cmp	r5, r2	@ u8OutputMode, enOutputMode
	bne	.L44	@,
.L40:
	mov	r0, #0	@ D.24451,
	str	r3, [ip, #12]	@ u32Value, <variable>.u32Value
.L36:
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L57:
	cmp	r6, r1	@ u8SourceMode, enSourceMode
	beq	.L45	@,
.L44:
	sub	r4, r4, #1	@ i, i,
	sub	ip, ip, #16	@ ivtmp.401, ivtmp.401,
	cmp	r4, #0	@ i,
	ble	.L37	@,
	cmp	r7, #0	@ tmp156,
	beq	.L41	@,
	ldr	r5, [ip, #0]	@ <variable>.u32RegAddr, <variable>.u32RegAddr
	ldrb	r6, [ip, #6]	@ zero_extendqisi2	@ u8SourceMode, <variable>.u8SourceMode
	cmp	r5, r0	@ <variable>.u32RegAddr, u32Lut
	ldrb	r5, [ip, #7]	@ zero_extendqisi2	@ u8OutputMode, <variable>.u8OutputMode
	bne	.L47	@,
	cmp	r6, #0	@ u8SourceMode,
	beq	.L48	@,
	cmp	r6, r1	@ u8SourceMode, enSourceMode
	bne	.L47	@,
.L48:
	cmp	r5, #0	@ u8OutputMode,
	beq	.L40	@,
	cmp	r5, r2	@ u8OutputMode, enOutputMode
	beq	.L40	@,
.L47:
	sub	r4, r4, #1	@ i, i,
	sub	ip, ip, #16	@ ivtmp.401, ivtmp.401,
	cmp	r4, #0	@ i,
	ble	.L37	@,
.L41:
	ldr	r5, [ip, #0]	@ <variable>.u32RegAddr, <variable>.u32RegAddr
	ldrb	r6, [ip, #6]	@ zero_extendqisi2	@ u8SourceMode, <variable>.u8SourceMode
	cmp	r5, r0	@ <variable>.u32RegAddr, u32Lut
	ldrb	r5, [ip, #7]	@ zero_extendqisi2	@ u8OutputMode, <variable>.u8OutputMode
	bne	.L38	@,
	cmp	r6, #0	@ u8SourceMode,
	beq	.L39	@,
	cmp	r6, r1	@ u8SourceMode, enSourceMode
	bne	.L38	@,
.L39:
	cmp	r5, #0	@ u8OutputMode,
	beq	.L40	@,
	cmp	r5, r2	@ u8OutputMode, enOutputMode
	beq	.L40	@,
.L38:
	sub	ip, ip, #16	@ ivtmp.401, ivtmp.401,
	sub	r4, r4, #1	@ tmp157, i,
	ldr	r5, [ip, #0]	@ <variable>.u32RegAddr, <variable>.u32RegAddr
	mov	r7, ip	@ tmp158, ivtmp.401
	ldrb	r6, [ip, #6]	@ zero_extendqisi2	@ u8SourceMode, <variable>.u8SourceMode
	cmp	r5, r0	@ <variable>.u32RegAddr, u32Lut
	ldrb	r5, [ip, #7]	@ zero_extendqisi2	@ u8OutputMode, <variable>.u8OutputMode
	bne	.L51	@,
	cmp	r6, #0	@ u8SourceMode,
	beq	.L52	@,
	cmp	r6, r1	@ u8SourceMode, enSourceMode
	bne	.L51	@,
.L52:
	cmp	r5, #0	@ u8OutputMode,
	beq	.L40	@,
	cmp	r5, r2	@ u8OutputMode, enOutputMode
	beq	.L40	@,
.L51:
	sub	r4, r4, #1	@ i, tmp157,
	sub	ip, r7, #16	@ ivtmp.401, tmp158,
	cmp	r4, #0	@ i,
	bgt	.L41	@,
.L37:
	mvn	r0, #0	@ D.24451,
	b	.L36	@
.L60:
	mov	r0, #1	@,
	mov	r1, #41	@,
	ldr	r2, .L61	@,
	movw	r3, #438	@,
	movw	lr, #:lower16:.LC0	@ tmp149,
	movt	lr, #:upper16:.LC0	@ tmp149,
	str	lr, [sp, #0]	@ tmp149,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.24451,
	b	.L36	@
.L62:
	.align	2
.L61:
	.word	.LANCHOR1+16
	.fnend
	.size	PQ_MNG_SetSoftTable, .-PQ_MNG_SetSoftTable
	.align	2
	.global	PQ_MNG_UpdatePhyList
	.type	PQ_MNG_UpdatePhyList, %function
PQ_MNG_UpdatePhyList:
	.fnstart
.LFB700:
	@ args = 8, pretend = 0, frame = 0
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
	movw	ip, #:lower16:.LANCHOR0	@ tmp150,
	movt	ip, #:upper16:.LANCHOR0	@ tmp150,
	ldrb	r7, [fp, #4]	@ zero_extendqisi2	@ u8OutputMode, u8OutputMode
	ldr	ip, [ip, #4]	@ sg_pstPhyReg.214, sg_pstPhyReg
	cmp	ip, #0	@ sg_pstPhyReg.214,
	beq	.L64	@,
	movw	r4, #:lower16:.LANCHOR2	@ tmp151,
	movt	r4, #:upper16:.LANCHOR2	@ tmp151,
	ldr	r5, [r4, #0]	@ sg_u32PhyListNum.215, sg_u32PhyListNum
	cmp	r5, #0	@ sg_u32PhyListNum.215,
	beq	.L66	@,
	ldr	r6, [ip, #0]	@ <variable>.u32RegAddr, <variable>.u32RegAddr
	sub	sl, r5, #1	@ tmp159, sg_u32PhyListNum.215,
	and	sl, sl, #1	@ tmp161, tmp159,
	mov	r4, ip	@ ivtmp.438, sg_pstPhyReg.214
	cmp	r6, r0	@ <variable>.u32RegAddr, u32Addr
	mov	r6, #0	@ i,
	bne	.L74	@,
	ldrb	r8, [ip, #4]	@ zero_extendqisi2	@ <variable>.u8Lsb, <variable>.u8Lsb
	cmp	r8, r1	@ <variable>.u8Lsb, u8Lsb
	bne	.L74	@,
	ldrb	r8, [ip, #5]	@ zero_extendqisi2	@ <variable>.u8Msb, <variable>.u8Msb
	cmp	r8, r2	@ <variable>.u8Msb, u8Msb
	bne	.L74	@,
	ldrb	r8, [ip, #6]	@ zero_extendqisi2	@ D.24171, <variable>.u8SourceMode
	cmp	r8, #0	@ D.24171,
	bne	.L87	@,
.L75:
	ldrb	r8, [ip, #7]	@ zero_extendqisi2	@ D.24176, <variable>.u8OutputMode
	cmp	r8, #0	@ D.24176,
	beq	.L70	@,
	cmp	r8, r7	@ D.24176, u8OutputMode
	bne	.L74	@,
.L70:
	ldr	r3, [fp, #8]	@ u32Value, u32Value
	mov	r0, r6	@ D.24159, i
	str	r3, [r4, #12]	@ u32Value, <variable>.u32Value
.L67:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L87:
	cmp	r8, r3	@ D.24171, u8SourceMode
	beq	.L75	@,
.L74:
	mov	r6, #1	@ i,
	cmp	r5, r6	@ sg_u32PhyListNum.215, i
	add	r4, ip, #16	@ ivtmp.438, sg_pstPhyReg.214,
	bls	.L66	@,
	cmp	sl, #0	@ tmp161,
	beq	.L71	@,
	ldr	ip, [r4, #0]	@ <variable>.u32RegAddr, <variable>.u32RegAddr
	cmp	ip, r0	@ <variable>.u32RegAddr, u32Addr
	bne	.L77	@,
	ldrb	ip, [r4, #4]	@ zero_extendqisi2	@ <variable>.u8Lsb, <variable>.u8Lsb
	cmp	ip, r1	@ <variable>.u8Lsb, u8Lsb
	bne	.L77	@,
	ldrb	ip, [r4, #5]	@ zero_extendqisi2	@ <variable>.u8Msb, <variable>.u8Msb
	cmp	ip, r2	@ <variable>.u8Msb, u8Msb
	bne	.L77	@,
	ldrb	ip, [r4, #6]	@ zero_extendqisi2	@ D.24171, <variable>.u8SourceMode
	cmp	ip, #0	@ D.24171,
	bne	.L88	@,
.L78:
	ldrb	ip, [r4, #7]	@ zero_extendqisi2	@ D.24176, <variable>.u8OutputMode
	cmp	ip, #0	@ D.24176,
	beq	.L70	@,
	cmp	ip, r7	@ D.24176, u8OutputMode
	beq	.L70	@,
.L77:
	add	r6, r6, #1	@ i, i,
	add	r4, r4, #16	@ ivtmp.438, ivtmp.438,
	cmp	r5, r6	@ sg_u32PhyListNum.215, i
	bls	.L66	@,
.L71:
	ldr	ip, [r4, #0]	@ <variable>.u32RegAddr, <variable>.u32RegAddr
	cmp	ip, r0	@ <variable>.u32RegAddr, u32Addr
	bne	.L68	@,
	ldrb	ip, [r4, #4]	@ zero_extendqisi2	@ <variable>.u8Lsb, <variable>.u8Lsb
	cmp	ip, r1	@ <variable>.u8Lsb, u8Lsb
	bne	.L68	@,
	ldrb	ip, [r4, #5]	@ zero_extendqisi2	@ <variable>.u8Msb, <variable>.u8Msb
	cmp	ip, r2	@ <variable>.u8Msb, u8Msb
	bne	.L68	@,
	ldrb	ip, [r4, #6]	@ zero_extendqisi2	@ D.24171, <variable>.u8SourceMode
	cmp	ip, #0	@ D.24171,
	beq	.L69	@,
	cmp	ip, r3	@ D.24171, u8SourceMode
	beq	.L69	@,
.L68:
	add	r4, r4, #16	@ ivtmp.438, ivtmp.438,
	add	r6, r6, #1	@ i, i,
	ldr	ip, [r4, #0]	@ <variable>.u32RegAddr, <variable>.u32RegAddr
	mov	sl, r6	@ tmp162, i
	mov	r8, r4	@ tmp163, ivtmp.438
	cmp	ip, r0	@ <variable>.u32RegAddr, u32Addr
	bne	.L81	@,
	ldrb	ip, [r4, #4]	@ zero_extendqisi2	@ <variable>.u8Lsb, <variable>.u8Lsb
	cmp	ip, r1	@ <variable>.u8Lsb, u8Lsb
	bne	.L81	@,
	ldrb	ip, [r4, #5]	@ zero_extendqisi2	@ <variable>.u8Msb, <variable>.u8Msb
	cmp	ip, r2	@ <variable>.u8Msb, u8Msb
	bne	.L81	@,
	ldrb	ip, [r4, #6]	@ zero_extendqisi2	@ D.24171, <variable>.u8SourceMode
	cmp	ip, #0	@ D.24171,
	beq	.L82	@,
	cmp	ip, r3	@ D.24171, u8SourceMode
	bne	.L81	@,
.L82:
	ldrb	ip, [r8, #7]	@ zero_extendqisi2	@ D.24176, <variable>.u8OutputMode
	cmp	ip, #0	@ D.24176,
	beq	.L70	@,
	cmp	ip, r7	@ D.24176, u8OutputMode
	beq	.L70	@,
.L81:
	add	r6, sl, #1	@ i, tmp162,
	add	r4, r8, #16	@ ivtmp.438, tmp163,
	cmp	r5, r6	@ sg_u32PhyListNum.215, i
	bhi	.L71	@,
.L66:
	mvn	r0, #0	@ D.24159,
	b	.L67	@
.L88:
	cmp	ip, r3	@ D.24171, u8SourceMode
	beq	.L78	@,
	b	.L77	@
.L69:
	ldrb	ip, [r4, #7]	@ zero_extendqisi2	@ D.24176, <variable>.u8OutputMode
	cmp	ip, #0	@ D.24176,
	beq	.L70	@,
	cmp	ip, r7	@ D.24176, u8OutputMode
	beq	.L70	@,
	b	.L68	@
.L64:
	mov	r0, #1	@,
	mov	r1, #41	@,
	ldr	r2, .L90	@,
	mov	r3, #125	@,
	movw	lr, #:lower16:.LC0	@ tmp154,
	movt	lr, #:upper16:.LC0	@ tmp154,
	str	lr, [sp, #0]	@ tmp154,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.24159,
	b	.L67	@
.L91:
	.align	2
.L90:
	.word	.LANCHOR1+36
	.fnend
	.size	PQ_MNG_UpdatePhyList, .-PQ_MNG_UpdatePhyList
	.align	2
	.global	PQ_MNG_GetSoftTable
	.type	PQ_MNG_GetSoftTable, %function
PQ_MNG_GetSoftTable:
	.fnstart
.LFB706:
	@ args = 0, pretend = 0, frame = 16
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp156,
	movt	r4, #:upper16:.LANCHOR0	@ tmp156,
	str	r1, [fp, #-56]	@ enSourceMode, %sfp
	mov	r5, r0	@ u32Lut, u32Lut
	mov	r6, r2	@ enOutputMode, enOutputMode
	ldr	r1, [r4, #4]	@ prephitmp.462, sg_pstPhyReg
	str	r3, [fp, #-60]	@ u32DefaultValue, %sfp
	cmp	r1, #0	@ prephitmp.462,
	beq	.L111	@,
	movw	r3, #:lower16:.LANCHOR2	@ tmp152,
	movt	r3, #:upper16:.LANCHOR2	@ tmp152,
	ldr	r7, [r3, #0]	@ sg_u32PhyListNum.239, sg_u32PhyListNum
	sub	sl, r7, #1	@ i, sg_u32PhyListNum.239,
	cmp	sl, #0	@ i,
	ble	.L95	@,
	sub	r7, r7, #-268435455	@ tmp153, sg_u32PhyListNum.239,
	tst	sl, #1	@ i,
	mov	r7, r7, asl #4	@ ivtmp.481, tmp153,
	beq	.L106	@,
.L98:
	add	lr, r1, r7	@ D.24418, prephitmp.462, ivtmp.481
	ldr	r8, [r1, r7]	@ u32Addr, <variable>.u32RegAddr
	ldrb	r2, [lr, #7]	@ zero_extendqisi2	@, <variable>.u8OutputMode
	mov	r0, r8	@, u32Addr
	str	r2, [fp, #-52]	@, %sfp
	ldrb	r1, [lr, #6]	@ zero_extendqisi2	@, <variable>.u8SourceMode
	ldr	r9, [lr, #12]	@ u32Value, <variable>.u32Value
	str	r1, [fp, #-48]	@, %sfp
	bl	PQ_HAL_IsSpecialReg	@
	cmp	r0, #0	@,
	beq	.L95	@,
	cmp	r8, r5	@ u32Addr, u32Lut
	beq	.L112	@,
.L96:
	sub	sl, sl, #1	@ tmp159, i,
	sub	r7, r7, #16	@ tmp160, ivtmp.481,
	cmp	sl, #0	@ tmp159,
	ble	.L95	@,
	ldr	r1, [r4, #4]	@ prephitmp.462, sg_pstPhyReg
	add	r3, r1, r7	@ D.24418, prephitmp.462, tmp160
	ldr	r8, [r1, r7]	@ u32Addr, <variable>.u32RegAddr
	ldrb	r9, [r3, #7]	@ zero_extendqisi2	@, <variable>.u8OutputMode
	mov	r0, r8	@, u32Addr
	str	r9, [fp, #-52]	@, %sfp
	ldrb	ip, [r3, #6]	@ zero_extendqisi2	@, <variable>.u8SourceMode
	ldr	r9, [r3, #12]	@ u32Value, <variable>.u32Value
	str	ip, [fp, #-48]	@, %sfp
	bl	PQ_HAL_IsSpecialReg	@
	cmp	r0, #0	@,
	beq	.L95	@,
	cmp	r8, r5	@ u32Addr, u32Lut
	beq	.L113	@,
.L103:
	sub	sl, sl, #1	@ i, tmp159,
	sub	r7, r7, #16	@ ivtmp.481, tmp160,
.L110:
	ldr	r1, [r4, #4]	@ prephitmp.462, sg_pstPhyReg
	b	.L98	@
.L106:
	add	r2, r1, r7	@ D.24418, prephitmp.462, ivtmp.481
	ldrb	r0, [r2, #7]	@ zero_extendqisi2	@, <variable>.u8OutputMode
	ldr	r8, [r2, #0]	@ u32Addr, <variable>.u32RegAddr
	str	r0, [fp, #-52]	@, %sfp
	ldrb	lr, [r2, #6]	@ zero_extendqisi2	@, <variable>.u8SourceMode
	mov	r0, r8	@, u32Addr
	ldr	r9, [r2, #12]	@ u32Value, <variable>.u32Value
	str	lr, [fp, #-48]	@, %sfp
	bl	PQ_HAL_IsSpecialReg	@
	cmp	r0, #0	@,
	beq	.L95	@,
	cmp	r8, r5	@ u32Addr, u32Lut
	beq	.L114	@,
.L100:
	sub	sl, sl, #1	@ i, i,
	sub	r7, r7, #16	@ ivtmp.481, ivtmp.481,
	cmp	sl, #0	@ i,
	bgt	.L110	@,
.L95:
	ldr	r9, [fp, #-60]	@ u32Value, %sfp
.L94:
	mov	r0, r9	@, u32Value
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L112:
	ldr	r3, [fp, #-48]	@, %sfp
	cmp	r3, #0	@,
	beq	.L97	@,
	ldr	r0, [fp, #-56]	@, %sfp
	cmp	r3, r0	@,
	bne	.L96	@,
.L97:
	ldr	r3, [fp, #-52]	@, %sfp
	cmp	r3, #0	@,
	beq	.L94	@,
	cmp	r3, r6	@, enOutputMode
	bne	.L96	@,
	b	.L94	@
.L113:
	ldr	lr, [fp, #-48]	@, %sfp
	cmp	lr, #0	@,
	beq	.L104	@,
	ldr	r2, [fp, #-48]	@, %sfp
	ldr	r0, [fp, #-56]	@, %sfp
	cmp	r2, r0	@,
	bne	.L103	@,
.L104:
	ldr	r3, [fp, #-52]	@, %sfp
	cmp	r3, #0	@,
	beq	.L94	@,
	cmp	r3, r6	@, enOutputMode
	bne	.L103	@,
	b	.L94	@
.L114:
	ldr	ip, [fp, #-48]	@, %sfp
	cmp	ip, #0	@,
	bne	.L108	@,
.L101:
	ldr	r3, [fp, #-52]	@, %sfp
	cmp	r3, #0	@,
	beq	.L94	@,
	cmp	r3, r6	@, enOutputMode
	bne	.L100	@,
	b	.L94	@
.L108:
	ldr	r1, [fp, #-48]	@, %sfp
	ldr	r3, [fp, #-56]	@, %sfp
	cmp	r1, r3	@,
	bne	.L100	@,
	b	.L101	@
.L111:
	mov	r0, #1	@,
	mov	r1, #41	@,
	ldr	r2, .L115	@,
	movw	r3, #397	@,
	movw	ip, #:lower16:.LC0	@ tmp151,
	mvn	r9, #0	@ u32Value,
	movt	ip, #:upper16:.LC0	@ tmp151,
	str	ip, [sp, #0]	@ tmp151,
	bl	HI_LogOut	@
	b	.L94	@
.L116:
	.align	2
.L115:
	.word	.LANCHOR1+60
	.fnend
	.size	PQ_MNG_GetSoftTable, .-PQ_MNG_GetSoftTable
	.align	2
	.global	PQ_MNG_GetArraySoftTable
	.type	PQ_MNG_GetArraySoftTable, %function
PQ_MNG_GetArraySoftTable:
	.fnstart
.LFB708:
	@ args = 8, pretend = 0, frame = 24
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp171,
	movt	r4, #:upper16:.LANCHOR0	@ tmp171,
	str	r1, [fp, #-60]	@ Array, %sfp
	mov	r5, r0	@ u32Lut, u32Lut
	str	r2, [fp, #-56]	@ u32Num, %sfp
	ldr	r1, [r4, #4]	@ prephitmp.506, sg_pstPhyReg
	str	r3, [fp, #-64]	@ enSourceMode, %sfp
	cmp	r1, #0	@ prephitmp.506,
	beq	.L144	@,
	ldr	r2, [fp, #-56]	@, %sfp
	cmp	r2, #1	@,
	mvnhi	r0, #0	@ D.24492,
	bls	.L145	@,
.L119:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L145:
	movw	r3, #:lower16:.LANCHOR2	@ tmp158,
	movt	r3, #:upper16:.LANCHOR2	@ tmp158,
	ldr	r6, [r3, #0]	@ sg_u32PhyListNum.245, sg_u32PhyListNum
	sub	r8, r6, #1	@ i, sg_u32PhyListNum.245,
	cmp	r8, #0	@ i,
	ble	.L121	@,
	sub	r6, r6, #-268435455	@ tmp159, sg_u32PhyListNum.245,
	ldr	r7, [fp, #-56]	@, %sfp
	tst	r8, #1	@ i,
	sub	r0, r7, #1	@,,
	mov	r6, r6, asl #4	@ ivtmp.525, tmp159,
	str	r0, [fp, #-68]	@, %sfp
	beq	.L135	@,
.L125:
	ldr	r7, [r1, r6]	@ u32Addr, <variable>.u32RegAddr
	add	r1, r1, r6	@ D.24499, prephitmp.506, ivtmp.525
	ldr	lr, [r1, #12]	@, <variable>.u32Value
	ldrb	r9, [r1, #7]	@ zero_extendqisi2	@ u8OutputMode, <variable>.u8OutputMode
	mov	r0, r7	@, u32Addr
	str	lr, [fp, #-52]	@, %sfp
	ldrb	sl, [r1, #4]	@ zero_extendqisi2	@, <variable>.u8Lsb
	str	sl, [fp, #-48]	@, %sfp
	ldrb	sl, [r1, #6]	@ zero_extendqisi2	@ u8SourceMode, <variable>.u8SourceMode
	bl	PQ_HAL_IsSpecialReg	@
	cmp	r0, #0	@,
	beq	.L121	@,
	cmp	r7, r5	@ u32Addr, u32Lut
	beq	.L146	@,
.L122:
	sub	r8, r8, #1	@ tmp175, i,
	sub	r6, r6, #16	@ tmp176, ivtmp.525,
	cmp	r8, #0	@ tmp175,
	ble	.L121	@,
	ldr	r9, [r4, #4]	@ prephitmp.506, sg_pstPhyReg
	add	r3, r9, r6	@ D.24499, prephitmp.506, tmp176
	ldr	r7, [r9, r6]	@ u32Addr, <variable>.u32RegAddr
	ldr	r0, [r3, #12]	@, <variable>.u32Value
	ldrb	r9, [r3, #7]	@ zero_extendqisi2	@ u8OutputMode, <variable>.u8OutputMode
	str	r0, [fp, #-52]	@, %sfp
	mov	r0, r7	@, u32Addr
	ldrb	sl, [r3, #4]	@ zero_extendqisi2	@, <variable>.u8Lsb
	str	sl, [fp, #-48]	@, %sfp
	ldrb	sl, [r3, #6]	@ zero_extendqisi2	@ u8SourceMode, <variable>.u8SourceMode
	bl	PQ_HAL_IsSpecialReg	@
	cmp	r0, #0	@,
	beq	.L121	@,
	cmp	r7, r5	@ u32Addr, u32Lut
	beq	.L147	@,
.L131:
	sub	r8, r8, #1	@ i, tmp175,
	sub	r6, r6, #16	@ ivtmp.525, tmp176,
.L142:
	ldr	r1, [r4, #4]	@ prephitmp.506, sg_pstPhyReg
	b	.L125	@
.L135:
	add	r1, r1, r6	@ D.24499, prephitmp.506, ivtmp.525
	ldr	r2, [r1, #12]	@, <variable>.u32Value
	ldr	r7, [r1, #0]	@ u32Addr, <variable>.u32RegAddr
	ldrb	r9, [r1, #7]	@ zero_extendqisi2	@ u8OutputMode, <variable>.u8OutputMode
	str	r2, [fp, #-52]	@, %sfp
	ldrb	ip, [r1, #4]	@ zero_extendqisi2	@, <variable>.u8Lsb
	mov	r0, r7	@, u32Addr
	str	ip, [fp, #-48]	@, %sfp
	ldrb	sl, [r1, #6]	@ zero_extendqisi2	@ u8SourceMode, <variable>.u8SourceMode
	bl	PQ_HAL_IsSpecialReg	@
	cmp	r0, #0	@,
	beq	.L121	@,
	cmp	r7, r5	@ u32Addr, u32Lut
	beq	.L148	@,
.L127:
	sub	r8, r8, #1	@ i, i,
	sub	r6, r6, #16	@ ivtmp.525, ivtmp.525,
	cmp	r8, #0	@ i,
	bgt	.L142	@,
.L121:
	ldr	lr, [fp, #-56]	@, %sfp
	ldr	r0, [fp, #-60]	@, %sfp
	ldr	r1, [fp, #8]	@, u32DefaultArray
	mov	r2, lr, asl #2	@,,
	bl	memcpy	@
	mov	r0, #0	@ D.24492,
	b	.L119	@
.L146:
	cmp	sl, #0	@ u8SourceMode,
	beq	.L123	@,
	ldr	ip, [fp, #-64]	@, %sfp
	cmp	sl, ip	@ u8SourceMode,
	bne	.L122	@,
.L123:
	cmp	r9, #0	@ u8OutputMode,
	beq	.L124	@,
	ldr	r2, [fp, #4]	@, enOutputMode
	cmp	r9, r2	@ u8OutputMode,
	bne	.L122	@,
.L124:
	ldr	r3, [fp, #-48]	@, %sfp
	ldr	r0, [fp, #-68]	@, %sfp
	cmp	r3, r0	@,
	bhi	.L121	@,
	ldr	r2, [fp, #-52]	@, %sfp
	ldr	ip, [fp, #-60]	@, %sfp
	str	r2, [ip, r3, asl #2]	@,
	ldr	lr, [r4, #8]	@ u32ArrayNum, u32ArrayNum
	ldr	r1, [fp, #-56]	@, %sfp
	add	r3, lr, #1	@ u32ArrayNum.248, u32ArrayNum,
	str	r3, [r4, #8]	@ u32ArrayNum.248, u32ArrayNum
	cmp	r1, r3	@, u32ArrayNum.248
	bne	.L122	@,
	mov	r0, #0	@ D.24492,
	b	.L119	@
.L147:
	cmp	sl, #0	@ u8SourceMode,
	beq	.L132	@,
	ldr	r1, [fp, #-64]	@, %sfp
	cmp	sl, r1	@ u8SourceMode,
	bne	.L131	@,
.L132:
	cmp	r9, #0	@ u8OutputMode,
	beq	.L133	@,
	ldr	lr, [fp, #4]	@, enOutputMode
	cmp	r9, lr	@ u8OutputMode,
	bne	.L131	@,
.L133:
	ldr	r1, [fp, #-48]	@, %sfp
	ldr	lr, [fp, #-68]	@, %sfp
	cmp	r1, lr	@,
	bhi	.L121	@,
	ldr	r3, [fp, #-52]	@, %sfp
	ldr	r0, [fp, #-60]	@, %sfp
	str	r3, [r0, r1, asl #2]	@,
	ldr	r2, [r4, #8]	@ u32ArrayNum, u32ArrayNum
	ldr	r1, [fp, #-56]	@, %sfp
	add	ip, r2, #1	@ u32ArrayNum.248, u32ArrayNum,
	str	ip, [r4, #8]	@ u32ArrayNum.248, u32ArrayNum
	cmp	r1, ip	@, u32ArrayNum.248
	bne	.L131	@,
	mov	r0, #0	@ D.24492,
	b	.L119	@
.L148:
	cmp	sl, #0	@ u8SourceMode,
	beq	.L128	@,
	ldr	r0, [fp, #-64]	@, %sfp
	cmp	sl, r0	@ u8SourceMode,
	bne	.L127	@,
.L128:
	cmp	r9, #0	@ u8OutputMode,
	bne	.L138	@,
.L129:
	ldr	r1, [fp, #-48]	@, %sfp
	ldr	r3, [fp, #-68]	@, %sfp
	cmp	r1, r3	@,
	bhi	.L121	@,
	ldr	r2, [fp, #-52]	@, %sfp
	ldr	ip, [fp, #-60]	@, %sfp
	str	r2, [ip, r1, asl #2]	@,
	ldr	r1, [r4, #8]	@ u32ArrayNum, u32ArrayNum
	ldr	r0, [fp, #-56]	@, %sfp
	add	lr, r1, #1	@ u32ArrayNum.248, u32ArrayNum,
	str	lr, [r4, #8]	@ u32ArrayNum.248, u32ArrayNum
	cmp	r0, lr	@, u32ArrayNum.248
	bne	.L127	@,
	mov	r0, #0	@ D.24492,
	b	.L119	@
.L144:
	mov	r0, #1	@,
	mov	r1, #41	@,
	ldr	r2, .L149	@,
	movw	r3, #475	@,
	movw	ip, #:lower16:.LC0	@ tmp157,
	movt	ip, #:upper16:.LC0	@ tmp157,
	str	ip, [sp, #0]	@ tmp157,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.24492,
	b	.L119	@
.L138:
	ldr	r3, [fp, #4]	@, enOutputMode
	cmp	r9, r3	@ u8OutputMode,
	bne	.L127	@,
	b	.L129	@
.L150:
	.align	2
.L149:
	.word	.LANCHOR1+80
	.fnend
	.size	PQ_MNG_GetArraySoftTable, .-PQ_MNG_GetArraySoftTable
	.align	2
	.global	PQ_MNG_PrintTable
	.type	PQ_MNG_PrintTable, %function
PQ_MNG_PrintTable:
	.fnstart
.LFB705:
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
	movw	r6, #:lower16:.LANCHOR0	@ tmp181,
	movt	r6, #:upper16:.LANCHOR0	@ tmp181,
	mov	r4, r0	@ bIsAll, bIsAll
	mov	r9, r1	@ u32PriAddr, u32PriAddr
	ldr	r3, [r6, #4]	@ sg_pstPhyReg, sg_pstPhyReg
	cmp	r3, #0	@ sg_pstPhyReg,
	beq	.L156	@,
	movw	r0, #:lower16:.LC2	@,
	movt	r0, #:upper16:.LC2	@,
	bl	HI_DRV_PROC_EchoHelper	@
	movw	r0, #:lower16:.LC3	@,
	movt	r0, #:upper16:.LC3	@,
	movw	r7, #:lower16:.LANCHOR2	@ tmp182,
	bl	HI_DRV_PROC_EchoHelper	@
	movw	r0, #:lower16:.LC4	@,
	movt	r0, #:upper16:.LC4	@,
	movt	r7, #:upper16:.LANCHOR2	@ tmp182,
	bl	HI_DRV_PROC_EchoHelper	@
	movw	r0, #:lower16:.LC5	@,
	movt	r0, #:upper16:.LC5	@,
	bl	HI_DRV_PROC_EchoHelper	@
	movw	r0, #:lower16:.LC6	@,
	movt	r0, #:upper16:.LC6	@,
	bl	HI_DRV_PROC_EchoHelper	@
	movw	r0, #:lower16:.LC7	@,
	movt	r0, #:upper16:.LC7	@,
	bl	HI_DRV_PROC_EchoHelper	@
	movw	r0, #:lower16:.LC8	@,
	movt	r0, #:upper16:.LC8	@,
	bl	HI_DRV_PROC_EchoHelper	@
	movw	r0, #:lower16:.LC9	@,
	movt	r0, #:upper16:.LC9	@,
	bl	HI_DRV_PROC_EchoHelper	@
	movw	r0, #:lower16:.LC10	@,
	movt	r0, #:upper16:.LC10	@,
	bl	HI_DRV_PROC_EchoHelper	@
	ldr	r0, [r7, #0]	@ sg_u32PhyListNum, sg_u32PhyListNum
	cmp	r0, #0	@ sg_u32PhyListNum,
	beq	.L153	@,
	subs	r4, r4, #1	@, bIsAll,
	movne	r4, #1	@
	str	r9, [fp, #-52]	@ u32PriAddr, %sfp
	str	r4, [fp, #-48]	@, %sfp
	mov	r4, #0	@ i,
	b	.L155	@
.L154:
	ldr	lr, [r7, #0]	@ sg_u32PhyListNum, sg_u32PhyListNum
	add	r4, r4, #1	@ i, i,
	cmp	lr, r4	@ sg_u32PhyListNum, i
	bls	.L153	@,
.L155:
	ldr	r9, [r6, #4]	@ sg_pstPhyReg, sg_pstPhyReg
	ldr	r8, [fp, #-52]	@, %sfp
	ldr	r2, [fp, #-48]	@ tmp167, %sfp
	add	r1, r9, r4, asl #4	@, D.24383, sg_pstPhyReg, i,
	ldr	r5, [r9, r4, asl #4]	@ u32Addr, <variable>.u32RegAddr
	ldrb	r3, [r1, #7]	@ zero_extendqisi2	@ u8OutputMode, <variable>.u8OutputMode
	cmp	r8, r5	@, u32Addr
	moveq	r2, #0	@, tmp167
	andne	r2, r2, #1	@,, tmp167, tmp167
	ldr	ip, [r1, #12]	@ u32Value, <variable>.u32Value
	cmp	r2, #0	@ tmp167,
	ldrb	r9, [r1, #4]	@ zero_extendqisi2	@ u8Lsb, <variable>.u8Lsb
	ldr	r2, [r1, #8]	@ u32Module, <variable>.u32Module
	ldrb	sl, [r1, #5]	@ zero_extendqisi2	@ u8Msb, <variable>.u8Msb
	ldrb	r8, [r1, #6]	@ zero_extendqisi2	@ u8SourceMode, <variable>.u8SourceMode
	bne	.L154	@,
	movw	r0, #:lower16:.LC2	@,
	movt	r0, #:upper16:.LC2	@,
	str	r2, [fp, #-60]	@,
	str	ip, [fp, #-56]	@,
	str	r3, [fp, #-64]	@,
	bl	HI_DRV_PROC_EchoHelper	@
	mov	r1, r4	@, i
	movw	r0, #:lower16:.LC11	@,
	movt	r0, #:upper16:.LC11	@,
	add	r4, r4, #1	@ i, i,
	bl	HI_DRV_PROC_EchoHelper	@
	mov	r1, r5	@, u32Addr
	movw	r0, #:lower16:.LC12	@,
	movt	r0, #:upper16:.LC12	@,
	bl	HI_DRV_PROC_EchoHelper	@
	mov	r1, r9	@, u8Lsb
	movw	r0, #:lower16:.LC13	@,
	movt	r0, #:upper16:.LC13	@,
	bl	HI_DRV_PROC_EchoHelper	@
	mov	r1, sl	@, u8Msb
	movw	r0, #:lower16:.LC13	@,
	movt	r0, #:upper16:.LC13	@,
	bl	HI_DRV_PROC_EchoHelper	@
	mov	r1, r8	@, u8SourceMode
	movw	r0, #:lower16:.LC14	@,
	movt	r0, #:upper16:.LC14	@,
	bl	HI_DRV_PROC_EchoHelper	@
	ldr	r0, [fp, #-64]	@,
	mov	r1, r0	@, u8OutputMode
	movw	r0, #:lower16:.LC14	@,
	movt	r0, #:upper16:.LC14	@,
	bl	HI_DRV_PROC_EchoHelper	@
	ldr	r3, [fp, #-60]	@,
	movw	r0, #:lower16:.LC12	@,
	movt	r0, #:upper16:.LC12	@,
	mov	r1, r3	@, u32Module
	bl	HI_DRV_PROC_EchoHelper	@
	ldr	ip, [fp, #-56]	@,
	movw	r0, #:lower16:.LC13	@,
	movt	r0, #:upper16:.LC13	@,
	mov	r1, ip	@, u32Value
	bl	HI_DRV_PROC_EchoHelper	@
	ldr	lr, [r7, #0]	@ sg_u32PhyListNum, sg_u32PhyListNum
	cmp	lr, r4	@ sg_u32PhyListNum, i
	bhi	.L155	@,
.L153:
	movw	r0, #:lower16:.LC2	@,
	movt	r0, #:upper16:.LC2	@,
	bl	HI_DRV_PROC_EchoHelper	@
	movw	r0, #:lower16:.LC2	@,
	movt	r0, #:upper16:.LC2	@,
	bl	HI_DRV_PROC_EchoHelper	@
.L156:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
	.fnend
	.size	PQ_MNG_PrintTable, .-PQ_MNG_PrintTable
	.align	2
	.global	PQ_MNG_InitPhyList
	.type	PQ_MNG_InitPhyList, %function
PQ_MNG_InitPhyList:
	.fnstart
.LFB704:
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
	movw	ip, #:lower16:.LANCHOR0	@,
	movt	ip, #:upper16:.LANCHOR0	@,
	mov	r8, r1	@ enRegType, enRegType
	mov	r4, #0	@ tmp159,
	str	ip, [fp, #-56]	@, %sfp
	ldr	r1, [ip, #4]	@ prephitmp.590, sg_pstPhyReg
	str	r0, [fp, #-84]	@ u32ID, %sfp
	cmp	r1, r4	@ prephitmp.590,
	str	r2, [fp, #-72]	@ enSourceMode, %sfp
	str	r3, [fp, #-76]	@ enOutputMode, %sfp
	str	r4, [fp, #-48]	@ tmp159, u32RegValue
	beq	.L159	@,
	movw	r6, #:lower16:.LANCHOR2	@ tmp189,
	movt	r6, #:upper16:.LANCHOR2	@ tmp189,
	ldr	r3, [r6, #0]	@ sg_u32PhyListNum, sg_u32PhyListNum
	cmp	r3, r4	@ sg_u32PhyListNum,
	bne	.L172	@,
	b	.L161	@
.L163:
	cmp	r8, #1	@ enRegType,
	beq	.L176	@,
.L165:
	ldr	ip, [fp, #4]	@, enModule
	tst	ip, r5	@, u32Module
	beq	.L164	@,
	cmp	sl, #0	@ u8SourceMode,
	beq	.L166	@,
	ldr	r3, [fp, #-72]	@, %sfp
	cmp	sl, r3	@ u8SourceMode,
	beq	.L166	@,
.L164:
	ldr	ip, [r6, #0]	@ sg_u32PhyListNum, sg_u32PhyListNum
	add	r4, r4, #1	@ i, i,
	cmp	ip, r4	@ sg_u32PhyListNum, i
	bls	.L161	@,
.L177:
	ldr	r5, [fp, #-56]	@, %sfp
	ldr	r1, [r5, #4]	@ prephitmp.590, sg_pstPhyReg
.L172:
	add	r3, r1, r4, asl #4	@, D.24315, prephitmp.590, i,
	ldr	r7, [r1, r4, asl #4]	@ u32Addr, <variable>.u32RegAddr
	cmp	r8, #0	@ enRegType,
	ldr	r1, [r3, #12]	@, <variable>.u32Value
	ldrb	r9, [r3, #7]	@ zero_extendqisi2	@ u8OutputMode, <variable>.u8OutputMode
	str	r1, [fp, #-68]	@, %sfp
	ldrb	r2, [r3, #4]	@ zero_extendqisi2	@, <variable>.u8Lsb
	ldr	r5, [r3, #8]	@ u32Module, <variable>.u32Module
	str	r2, [fp, #-64]	@, %sfp
	ldrb	r0, [r3, #5]	@ zero_extendqisi2	@, <variable>.u8Msb
	str	r0, [fp, #-60]	@, %sfp
	ldrb	sl, [r3, #6]	@ zero_extendqisi2	@ u8SourceMode, <variable>.u8SourceMode
	bne	.L163	@,
	mov	r0, r7	@, u32Addr
	bl	PQ_HAL_IsVpssReg	@
	cmp	r0, #1	@,
	beq	.L165	@,
	ldr	ip, [r6, #0]	@ sg_u32PhyListNum, sg_u32PhyListNum
	add	r4, r4, #1	@ i, i,
	cmp	ip, r4	@ sg_u32PhyListNum, i
	bhi	.L177	@,
.L161:
	mov	r0, #0	@ D.24313,
.L162:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L166:
	cmp	r9, #0	@ u8OutputMode,
	beq	.L167	@,
	ldr	r0, [fp, #-76]	@, %sfp
	cmp	r9, r0	@ u8OutputMode,
	bne	.L164	@,
.L167:
	mov	r0, r7	@, u32Addr
	mov	lr, r7, asl #16	@, u32Addr,
	str	lr, [fp, #-80]	@, %sfp
	bl	PQ_HAL_IsVpssReg	@
	cmp	r0, #1	@ D.24339,
	mov	r3, r0	@ D.24339,
	beq	.L178	@,
	mov	r0, r7	@, u32Addr
	bl	PQ_HAL_IsVdpReg	@
	cmp	r0, #1	@ D.24350,
	beq	.L179	@,
.L170:
	mov	r2, r7	@, u32Addr
	mov	r3, sl	@, u8SourceMode
	movw	r1, #:lower16:.LC15	@,
	mov	r0, #128	@,
	movt	r1, #:upper16:.LC15	@,
	str	r9, [sp, #0]	@ u8OutputMode,
	str	r5, [sp, #4]	@ u32Module,
	bl	PQ_HAL_PrintMsg	@
	b	.L164	@
.L176:
	mov	r0, r7	@, u32Addr
	bl	PQ_HAL_IsVdpReg	@
	cmp	r0, #1	@,
	bne	.L164	@,
	b	.L165	@
.L178:
	ldr	r0, [fp, #-84]	@, %sfp
	str	r3, [fp, #-88]	@,
	bl	PQ_HAL_GetVpssReg	@
	ldr	r3, [fp, #-88]	@,
	subs	ip, r0, #0	@ pstVpssVirReg,
	beq	.L180	@,
	ldr	r3, [fp, #-80]	@, %sfp
	sub	r0, fp, #48	@,,
	ldr	r1, [fp, #-60]	@, %sfp
	ldr	r2, [fp, #-64]	@, %sfp
	ldr	lr, [ip, r3, lsr #16]	@ tmp173,* pstVpssVirReg
	ldr	r3, [fp, #-68]	@, %sfp
	str	ip, [fp, #-88]	@,
	str	lr, [fp, #-48]	@ tmp173, u32RegValue
	bl	PQ_HAL_SetU32ByBit	@
	ldr	r1, [fp, #-48]	@ u32RegValue, u32RegValue
	ldr	ip, [fp, #-88]	@,
	ldr	r2, [fp, #-80]	@, %sfp
	str	r1, [ip, r2, lsr #16]	@ u32RegValue,* pstVpssVirReg
	b	.L170	@
.L179:
	str	r0, [fp, #-88]	@ tmp3,
	bl	PQ_HAL_GetVdpReg	@
	ldr	r3, [fp, #-88]	@,
	subs	ip, r0, #0	@ pVdpVirReg,
	beq	.L181	@,
	ldr	r3, [fp, #-80]	@, %sfp
	sub	r0, fp, #48	@,,
	ldr	r1, [fp, #-60]	@, %sfp
	ldr	r2, [fp, #-64]	@, %sfp
	ldr	lr, [ip, r3, lsr #16]	@ tmp180,* pVdpVirReg
	ldr	r3, [fp, #-68]	@, %sfp
	str	ip, [fp, #-88]	@,
	str	lr, [fp, #-48]	@ tmp180, u32RegValue
	bl	PQ_HAL_SetU32ByBit	@
	ldr	r2, [fp, #-48]	@ u32RegValue, u32RegValue
	ldr	r1, [fp, #-88]	@,
	ldr	r0, [fp, #-80]	@, %sfp
	str	r2, [r1, r0, lsr #16]	@ u32RegValue,* pVdpVirReg
	b	.L170	@
.L180:
	ldr	r2, .L182	@,
	mov	r0, r3	@, D.24339
	mov	r1, #41	@,
	mov	r3, #312	@,
.L174:
	movw	ip, #:lower16:.LC0	@ tmp179,
	movt	ip, #:upper16:.LC0	@ tmp179,
	str	ip, [sp, #0]	@ tmp179,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.24313,
	b	.L162	@
.L181:
	mov	r0, r3	@, D.24350
	mov	r1, #41	@,
	ldr	r2, .L182	@,
	movw	r3, #321	@,
	b	.L174	@
.L159:
	mov	r0, #1	@,
	mov	r1, #41	@,
	ldr	r2, .L182	@,
	movw	r3, #271	@,
	b	.L174	@
.L183:
	.align	2
.L182:
	.word	.LANCHOR1+108
	.fnend
	.size	PQ_MNG_InitPhyList, .-PQ_MNG_InitPhyList
	.align	2
	.global	PQ_MNG_SetVpssReg
	.type	PQ_MNG_SetVpssReg, %function
PQ_MNG_SetVpssReg:
	.fnstart
.LFB702:
	@ args = 0, pretend = 0, frame = 8
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
	mov	r4, #0	@ tmp171,
	mov	r5, r0	@ u32Addr, u32Addr
	mov	r0, r4	@, tmp171
	str	r4, [fp, #-40]	@ tmp171, u32RegValue
	mov	r6, r1	@ u8Lsb, u8Lsb
	mov	r8, r2	@ u8Msb, u8Msb
	mov	r7, r3	@ u32Value, u32Value
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, r4	@,
	mvneq	r4, #0	@ s32Ret.637,
	bne	.L204	@,
.L186:
	mov	r0, #1	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #0	@,
	bne	.L205	@,
.L188:
	mov	r0, #2	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #0	@,
	bne	.L206	@,
.L189:
	mov	r0, #3	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #0	@,
	bne	.L207	@,
.L190:
	mov	r0, #4	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #0	@,
	bne	.L208	@,
.L191:
	mov	r0, #5	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #0	@,
	bne	.L209	@,
.L192:
	mov	r0, #6	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #0	@,
	bne	.L210	@,
.L193:
	mov	r0, #7	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #0	@,
	bne	.L211	@,
.L194:
	mov	r0, #8	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #0	@,
	bne	.L212	@,
.L195:
	mov	r0, #9	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #0	@,
	bne	.L213	@,
.L196:
	mov	r0, #10	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #0	@,
	bne	.L214	@,
.L197:
	mov	r0, #11	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #0	@,
	bne	.L215	@,
.L198:
	mov	r0, #12	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #0	@,
	bne	.L216	@,
.L199:
	mov	r0, #13	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #0	@,
	bne	.L217	@,
.L200:
	mov	r0, #14	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #0	@,
	bne	.L218	@,
.L201:
	mov	r0, #15	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #0	@,
	bne	.L219	@,
.L202:
	mov	r0, r4	@, s32Ret.637
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L204:
	sub	sl, fp, #40	@ tmp172,,
	mov	r0, r4	@, tmp171
	mov	r1, r5	@, u32Addr
	mov	r2, sl	@, tmp172
	bl	PQ_HAL_ReadRegister	@
	subs	r4, r0, #0	@ s32Ret.635,
	bne	.L187	@,
	mov	r0, sl	@, tmp172
	mov	r2, r6	@, u8Lsb
	mov	r3, r7	@, u32Value
	mov	r1, r8	@, u8Msb
	bl	PQ_HAL_SetU32ByBit	@
	mov	r0, r4	@, s32Ret.635
	mov	r1, r5	@, u32Addr
	ldr	r2, [fp, #-40]	@, u32RegValue
	bl	PQ_HAL_WriteRegister	@
	mov	r4, r0	@ s32Ret.637,
	b	.L186	@
.L219:
	sub	sl, fp, #40	@ tmp202,,
	mov	r0, #0	@,
	mov	r1, r5	@, u32Addr
	mov	r2, sl	@, tmp202
	bl	PQ_HAL_ReadRegister	@
	subs	r4, r0, #0	@ s32Ret,
	bne	.L187	@,
	mov	r2, r6	@, u8Lsb
	mov	r3, r7	@, u32Value
	mov	r0, sl	@, tmp202
	mov	r1, r8	@, u8Msb
	bl	PQ_HAL_SetU32ByBit	@
	mov	r0, r4	@, s32Ret
	mov	r1, r5	@, u32Addr
	ldr	r2, [fp, #-40]	@, u32RegValue
	bl	PQ_HAL_WriteRegister	@
	mov	r4, r0	@ s32Ret.637,
	b	.L202	@
.L218:
	sub	sl, fp, #40	@ tmp200,,
	mov	r0, #0	@,
	mov	r1, r5	@, u32Addr
	mov	r2, sl	@, tmp200
	bl	PQ_HAL_ReadRegister	@
	subs	r4, r0, #0	@ s32Ret.678,
	bne	.L187	@,
	mov	r0, sl	@, tmp200
	mov	r2, r6	@, u8Lsb
	mov	r3, r7	@, u32Value
	mov	r1, r8	@, u8Msb
	bl	PQ_HAL_SetU32ByBit	@
	mov	r0, r4	@, s32Ret.678
	mov	r1, r5	@, u32Addr
	ldr	r2, [fp, #-40]	@, u32RegValue
	bl	PQ_HAL_WriteRegister	@
	mov	r4, r0	@ s32Ret.637,
	b	.L201	@
.L217:
	sub	sl, fp, #40	@ tmp198,,
	mov	r0, #0	@,
	mov	r1, r5	@, u32Addr
	mov	r2, sl	@, tmp198
	bl	PQ_HAL_ReadRegister	@
	subs	r4, r0, #0	@ s32Ret.675,
	bne	.L187	@,
	mov	r0, sl	@, tmp198
	mov	r2, r6	@, u8Lsb
	mov	r3, r7	@, u32Value
	mov	r1, r8	@, u8Msb
	bl	PQ_HAL_SetU32ByBit	@
	mov	r0, r4	@, s32Ret.675
	mov	r1, r5	@, u32Addr
	ldr	r2, [fp, #-40]	@, u32RegValue
	bl	PQ_HAL_WriteRegister	@
	mov	r4, r0	@ s32Ret.637,
	b	.L200	@
.L216:
	sub	sl, fp, #40	@ tmp196,,
	mov	r0, #0	@,
	mov	r1, r5	@, u32Addr
	mov	r2, sl	@, tmp196
	bl	PQ_HAL_ReadRegister	@
	subs	r4, r0, #0	@ s32Ret.672,
	bne	.L187	@,
	mov	r0, sl	@, tmp196
	mov	r2, r6	@, u8Lsb
	mov	r3, r7	@, u32Value
	mov	r1, r8	@, u8Msb
	bl	PQ_HAL_SetU32ByBit	@
	mov	r0, r4	@, s32Ret.672
	mov	r1, r5	@, u32Addr
	ldr	r2, [fp, #-40]	@, u32RegValue
	bl	PQ_HAL_WriteRegister	@
	mov	r4, r0	@ s32Ret.637,
	b	.L199	@
.L215:
	sub	sl, fp, #40	@ tmp194,,
	mov	r0, #0	@,
	mov	r1, r5	@, u32Addr
	mov	r2, sl	@, tmp194
	bl	PQ_HAL_ReadRegister	@
	subs	r4, r0, #0	@ s32Ret.669,
	bne	.L187	@,
	mov	r0, sl	@, tmp194
	mov	r2, r6	@, u8Lsb
	mov	r3, r7	@, u32Value
	mov	r1, r8	@, u8Msb
	bl	PQ_HAL_SetU32ByBit	@
	mov	r0, r4	@, s32Ret.669
	mov	r1, r5	@, u32Addr
	ldr	r2, [fp, #-40]	@, u32RegValue
	bl	PQ_HAL_WriteRegister	@
	mov	r4, r0	@ s32Ret.637,
	b	.L198	@
.L214:
	sub	sl, fp, #40	@ tmp192,,
	mov	r0, #0	@,
	mov	r1, r5	@, u32Addr
	mov	r2, sl	@, tmp192
	bl	PQ_HAL_ReadRegister	@
	subs	r4, r0, #0	@ s32Ret.666,
	bne	.L187	@,
	mov	r0, sl	@, tmp192
	mov	r2, r6	@, u8Lsb
	mov	r3, r7	@, u32Value
	mov	r1, r8	@, u8Msb
	bl	PQ_HAL_SetU32ByBit	@
	mov	r0, r4	@, s32Ret.666
	mov	r1, r5	@, u32Addr
	ldr	r2, [fp, #-40]	@, u32RegValue
	bl	PQ_HAL_WriteRegister	@
	mov	r4, r0	@ s32Ret.637,
	b	.L197	@
.L213:
	sub	sl, fp, #40	@ tmp190,,
	mov	r0, #0	@,
	mov	r1, r5	@, u32Addr
	mov	r2, sl	@, tmp190
	bl	PQ_HAL_ReadRegister	@
	subs	r4, r0, #0	@ s32Ret.663,
	bne	.L187	@,
	mov	r0, sl	@, tmp190
	mov	r2, r6	@, u8Lsb
	mov	r3, r7	@, u32Value
	mov	r1, r8	@, u8Msb
	bl	PQ_HAL_SetU32ByBit	@
	mov	r0, r4	@, s32Ret.663
	mov	r1, r5	@, u32Addr
	ldr	r2, [fp, #-40]	@, u32RegValue
	bl	PQ_HAL_WriteRegister	@
	mov	r4, r0	@ s32Ret.637,
	b	.L196	@
.L212:
	sub	sl, fp, #40	@ tmp188,,
	mov	r0, #0	@,
	mov	r1, r5	@, u32Addr
	mov	r2, sl	@, tmp188
	bl	PQ_HAL_ReadRegister	@
	subs	r4, r0, #0	@ s32Ret.660,
	bne	.L187	@,
	mov	r0, sl	@, tmp188
	mov	r2, r6	@, u8Lsb
	mov	r3, r7	@, u32Value
	mov	r1, r8	@, u8Msb
	bl	PQ_HAL_SetU32ByBit	@
	mov	r0, r4	@, s32Ret.660
	mov	r1, r5	@, u32Addr
	ldr	r2, [fp, #-40]	@, u32RegValue
	bl	PQ_HAL_WriteRegister	@
	mov	r4, r0	@ s32Ret.637,
	b	.L195	@
.L211:
	sub	sl, fp, #40	@ tmp186,,
	mov	r0, #0	@,
	mov	r1, r5	@, u32Addr
	mov	r2, sl	@, tmp186
	bl	PQ_HAL_ReadRegister	@
	subs	r4, r0, #0	@ s32Ret.657,
	bne	.L187	@,
	mov	r0, sl	@, tmp186
	mov	r2, r6	@, u8Lsb
	mov	r3, r7	@, u32Value
	mov	r1, r8	@, u8Msb
	bl	PQ_HAL_SetU32ByBit	@
	mov	r0, r4	@, s32Ret.657
	mov	r1, r5	@, u32Addr
	ldr	r2, [fp, #-40]	@, u32RegValue
	bl	PQ_HAL_WriteRegister	@
	mov	r4, r0	@ s32Ret.637,
	b	.L194	@
.L210:
	sub	sl, fp, #40	@ tmp184,,
	mov	r0, #0	@,
	mov	r1, r5	@, u32Addr
	mov	r2, sl	@, tmp184
	bl	PQ_HAL_ReadRegister	@
	subs	r4, r0, #0	@ s32Ret.654,
	bne	.L187	@,
	mov	r0, sl	@, tmp184
	mov	r2, r6	@, u8Lsb
	mov	r3, r7	@, u32Value
	mov	r1, r8	@, u8Msb
	bl	PQ_HAL_SetU32ByBit	@
	mov	r0, r4	@, s32Ret.654
	mov	r1, r5	@, u32Addr
	ldr	r2, [fp, #-40]	@, u32RegValue
	bl	PQ_HAL_WriteRegister	@
	mov	r4, r0	@ s32Ret.637,
	b	.L193	@
.L209:
	sub	sl, fp, #40	@ tmp182,,
	mov	r0, #0	@,
	mov	r1, r5	@, u32Addr
	mov	r2, sl	@, tmp182
	bl	PQ_HAL_ReadRegister	@
	subs	r4, r0, #0	@ s32Ret.651,
	bne	.L187	@,
	mov	r0, sl	@, tmp182
	mov	r2, r6	@, u8Lsb
	mov	r3, r7	@, u32Value
	mov	r1, r8	@, u8Msb
	bl	PQ_HAL_SetU32ByBit	@
	mov	r0, r4	@, s32Ret.651
	mov	r1, r5	@, u32Addr
	ldr	r2, [fp, #-40]	@, u32RegValue
	bl	PQ_HAL_WriteRegister	@
	mov	r4, r0	@ s32Ret.637,
	b	.L192	@
.L208:
	sub	sl, fp, #40	@ tmp180,,
	mov	r0, #0	@,
	mov	r1, r5	@, u32Addr
	mov	r2, sl	@, tmp180
	bl	PQ_HAL_ReadRegister	@
	subs	r4, r0, #0	@ s32Ret.648,
	bne	.L187	@,
	mov	r0, sl	@, tmp180
	mov	r2, r6	@, u8Lsb
	mov	r3, r7	@, u32Value
	mov	r1, r8	@, u8Msb
	bl	PQ_HAL_SetU32ByBit	@
	mov	r0, r4	@, s32Ret.648
	mov	r1, r5	@, u32Addr
	ldr	r2, [fp, #-40]	@, u32RegValue
	bl	PQ_HAL_WriteRegister	@
	mov	r4, r0	@ s32Ret.637,
	b	.L191	@
.L207:
	sub	sl, fp, #40	@ tmp178,,
	mov	r0, #0	@,
	mov	r1, r5	@, u32Addr
	mov	r2, sl	@, tmp178
	bl	PQ_HAL_ReadRegister	@
	subs	r4, r0, #0	@ s32Ret.645,
	bne	.L187	@,
	mov	r0, sl	@, tmp178
	mov	r2, r6	@, u8Lsb
	mov	r3, r7	@, u32Value
	mov	r1, r8	@, u8Msb
	bl	PQ_HAL_SetU32ByBit	@
	mov	r0, r4	@, s32Ret.645
	mov	r1, r5	@, u32Addr
	ldr	r2, [fp, #-40]	@, u32RegValue
	bl	PQ_HAL_WriteRegister	@
	mov	r4, r0	@ s32Ret.637,
	b	.L190	@
.L206:
	sub	sl, fp, #40	@ tmp176,,
	mov	r0, #0	@,
	mov	r1, r5	@, u32Addr
	mov	r2, sl	@, tmp176
	bl	PQ_HAL_ReadRegister	@
	subs	r4, r0, #0	@ s32Ret.642,
	bne	.L187	@,
	mov	r0, sl	@, tmp176
	mov	r2, r6	@, u8Lsb
	mov	r3, r7	@, u32Value
	mov	r1, r8	@, u8Msb
	bl	PQ_HAL_SetU32ByBit	@
	mov	r0, r4	@, s32Ret.642
	mov	r1, r5	@, u32Addr
	ldr	r2, [fp, #-40]	@, u32RegValue
	bl	PQ_HAL_WriteRegister	@
	mov	r4, r0	@ s32Ret.637,
	b	.L189	@
.L205:
	sub	sl, fp, #40	@ tmp174,,
	mov	r0, #0	@,
	mov	r1, r5	@, u32Addr
	mov	r2, sl	@, tmp174
	bl	PQ_HAL_ReadRegister	@
	subs	r4, r0, #0	@ s32Ret.639,
	bne	.L187	@,
	mov	r0, sl	@, tmp174
	mov	r2, r6	@, u8Lsb
	mov	r3, r7	@, u32Value
	mov	r1, r8	@, u8Msb
	bl	PQ_HAL_SetU32ByBit	@
	mov	r0, r4	@, s32Ret.639
	mov	r1, r5	@, u32Addr
	ldr	r2, [fp, #-40]	@, u32RegValue
	bl	PQ_HAL_WriteRegister	@
	mov	r4, r0	@ s32Ret.637,
	b	.L188	@
.L187:
	mvn	r4, #0	@ s32Ret.637,
	b	.L202	@
	.fnend
	.size	PQ_MNG_SetVpssReg, .-PQ_MNG_SetVpssReg
	.align	2
	.global	PQ_MNG_SetVdpReg
	.type	PQ_MNG_SetVdpReg, %function
PQ_MNG_SetVdpReg:
	.fnstart
.LFB701:
	@ args = 0, pretend = 0, frame = 8
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
	mov	r6, #0	@ tmp141,
	mov	r4, r0	@ u32Addr, u32Addr
	mov	r5, r1	@ u8Lsb, u8Lsb
	mov	r7, r2	@ u8Msb, u8Msb
	mov	r8, r3	@ u32Value, u32Value
	str	r6, [fp, #-40]	@ tmp141, u32RegValue
	bl	PQ_HAL_CheckVdpValid	@
	cmp	r0, #1	@,
	beq	.L226	@,
	mov	r0, #1	@,
	mov	r1, #41	@,
	ldr	r2, .L227	@,
	mov	r3, #174	@,
	movw	ip, #:lower16:.LC16	@ tmp147,
	movt	ip, #:upper16:.LC16	@ tmp147,
	str	ip, [sp, #0]	@ tmp147,
	bl	HI_LogOut	@
.L225:
	mvn	r0, #0	@ s32Ret,
.L223:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L226:
	sub	sl, fp, #40	@ tmp142,,
	mov	r0, r6	@, tmp141
	mov	r1, r4	@, u32Addr
	mov	r2, sl	@, tmp142
	bl	PQ_HAL_ReadRegister	@
	subs	r6, r0, #0	@ s32Ret.702,
	bne	.L225	@,
	mov	r2, r5	@, u8Lsb
	mov	r0, sl	@, tmp142
	mov	r1, r7	@, u8Msb
	mov	r3, r8	@, u32Value
	bl	PQ_HAL_SetU32ByBit	@
	mov	r0, r6	@, s32Ret.702
	mov	r1, r4	@, u32Addr
	ldr	r2, [fp, #-40]	@, u32RegValue
	bl	PQ_HAL_WriteRegister	@
	b	.L223	@
.L228:
	.align	2
.L227:
	.word	.LANCHOR1+128
	.fnend
	.size	PQ_MNG_SetVdpReg, .-PQ_MNG_SetVdpReg
	.align	2
	.global	PQ_MNG_SetReg
	.type	PQ_MNG_SetReg, %function
PQ_MNG_SetReg:
	.fnstart
.LFB709:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #16
	sub	sp, sp, #16	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	movw	r5, #:lower16:.LANCHOR0	@ tmp145,
	movt	r5, #:upper16:.LANCHOR0	@ tmp145,
	mov	r4, r0	@ pstAttr, pstAttr
	mov	r6, r1	@ enSourceMode, enSourceMode
	mov	r7, r2	@ enOutputMode, enOutputMode
	ldr	r3, [r5, #4]	@ sg_pstPhyReg, sg_pstPhyReg
	cmp	r3, #0	@ sg_pstPhyReg,
	beq	.L239	@,
	ldrb	ip, [r4, #7]	@ zero_extendqisi2	@ <variable>.u8OutputMode, <variable>.u8OutputMode
	ldr	lr, [r4, #12]	@ <variable>.u32Value, <variable>.u32Value
	ldr	r0, [r0, #0]	@ <variable>.u32RegAddr, <variable>.u32RegAddr
	ldrb	r1, [r4, #4]	@ zero_extendqisi2	@ <variable>.u8Lsb, <variable>.u8Lsb
	ldrb	r2, [r4, #5]	@ zero_extendqisi2	@ <variable>.u8Msb, <variable>.u8Msb
	ldrb	r3, [r4, #6]	@ zero_extendqisi2	@ <variable>.u8SourceMode, <variable>.u8SourceMode
	stmia	sp, {ip, lr}	@ phole stm
	bl	PQ_MNG_UpdatePhyList	@
	cmn	r0, #1	@ s32Num,
	beq	.L240	@,
	ldr	r2, [r5, #4]	@ sg_pstPhyReg, sg_pstPhyReg
	add	r0, r2, r0, asl #4	@, D.24556, sg_pstPhyReg, s32Num,
	ldrb	r1, [r0, #6]	@ zero_extendqisi2	@ <variable>.u8SourceMode, <variable>.u8SourceMode
	cmp	r1, #0	@ <variable>.u8SourceMode,
	beq	.L234	@,
	ldrb	ip, [r4, #6]	@ zero_extendqisi2	@ temp.732, <variable>.u8SourceMode
	cmp	ip, r6	@ temp.732, enSourceMode
	bne	.L241	@,
.L234:
	ldrb	r3, [r0, #7]	@ zero_extendqisi2	@ <variable>.u8OutputMode, <variable>.u8OutputMode
	cmp	r3, #0	@ <variable>.u8OutputMode,
	beq	.L233	@,
	ldrb	ip, [r4, #7]	@ zero_extendqisi2	@ temp.734, <variable>.u8OutputMode
	cmp	ip, r7	@ temp.734, enOutputMode
	bne	.L242	@,
.L233:
	ldr	r0, [r4, #0]	@, <variable>.u32RegAddr
	bl	PQ_HAL_IsVpssReg	@
	cmp	r0, #1	@,
	beq	.L243	@,
.L235:
	ldr	r0, [r4, #0]	@, <variable>.u32RegAddr
	bl	PQ_HAL_IsVdpReg	@
	cmp	r0, #1	@,
	beq	.L244	@,
	ldr	r0, [r4, #0]	@, <variable>.u32RegAddr
	bl	PQ_HAL_IsSpecialReg	@
	cmp	r0, #1	@,
	bne	.L237	@,
	ldr	r3, [r4, #12]	@, <variable>.u32Value
	ldr	r0, [r4, #0]	@, <variable>.u32RegAddr
	ldrb	r1, [r4, #6]	@ zero_extendqisi2	@, <variable>.u8SourceMode
	ldrb	r2, [r4, #7]	@ zero_extendqisi2	@, <variable>.u8OutputMode
	bl	PQ_MNG_SetSoftTable	@
.L231:
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L243:
	ldr	r3, [r4, #12]	@, <variable>.u32Value
	ldr	r0, [r4, #0]	@, <variable>.u32RegAddr
	ldrb	r1, [r4, #4]	@ zero_extendqisi2	@, <variable>.u8Lsb
	ldrb	r2, [r4, #5]	@ zero_extendqisi2	@, <variable>.u8Msb
	bl	PQ_MNG_SetVpssReg	@
	b	.L231	@
.L241:
	mov	r0, #1	@,
	mov	r1, #41	@,
	ldr	r2, .L245	@,
	movw	r3, #555	@,
	str	r6, [sp, #4]	@ enSourceMode,
	movw	lr, #:lower16:.LC18	@ tmp168,
	str	ip, [sp, #8]	@ temp.732,
	movt	lr, #:upper16:.LC18	@ tmp168,
	str	lr, [sp, #0]	@ tmp168,
	bl	HI_LogOut	@
	mov	r0, #0	@ s32Ret,
	b	.L231	@
.L242:
	mov	r0, #1	@,
	mov	r1, #41	@,
	ldr	r2, .L245	@,
	movw	r3, #563	@,
	str	r7, [sp, #4]	@ enOutputMode,
	movw	lr, #:lower16:.LC19	@ tmp172,
	str	ip, [sp, #8]	@ temp.734,
	movt	lr, #:upper16:.LC19	@ tmp172,
	str	lr, [sp, #0]	@ tmp172,
	bl	HI_LogOut	@
	mov	r0, #0	@ s32Ret,
	b	.L231	@
.L244:
	ldr	r3, [r4, #12]	@, <variable>.u32Value
	ldr	r0, [r4, #0]	@, <variable>.u32RegAddr
	ldrb	r1, [r4, #4]	@ zero_extendqisi2	@, <variable>.u8Lsb
	ldrb	r2, [r4, #5]	@ zero_extendqisi2	@, <variable>.u8Msb
	bl	PQ_MNG_SetVdpReg	@
	b	.L231	@
.L240:
	ldrb	lr, [r4, #6]	@ zero_extendqisi2	@ <variable>.u8SourceMode, <variable>.u8SourceMode
	movw	r1, #:lower16:.LC17	@,
	ldrb	ip, [r4, #7]	@ zero_extendqisi2	@ <variable>.u8OutputMode, <variable>.u8OutputMode
	movt	r1, #:upper16:.LC17	@,
	ldrb	r5, [r4, #5]	@ zero_extendqisi2	@ <variable>.u8Msb, <variable>.u8Msb
	mov	r0, #128	@,
	ldr	r2, [r4, #0]	@ <variable>.u32RegAddr, <variable>.u32RegAddr
	ldrb	r3, [r4, #4]	@ zero_extendqisi2	@ <variable>.u8Lsb, <variable>.u8Lsb
	str	lr, [sp, #4]	@ <variable>.u8SourceMode,
	str	ip, [sp, #8]	@ <variable>.u8OutputMode,
	str	r5, [sp, #0]	@ <variable>.u8Msb,
	bl	PQ_HAL_PrintMsg	@
	ldr	r0, [r4, #0]	@, <variable>.u32RegAddr
	bl	PQ_HAL_IsVpssReg	@
	cmp	r0, #1	@,
	bne	.L235	@,
	b	.L243	@
.L237:
	mov	r0, #1	@,
	mov	r1, #41	@,
	ldr	r2, .L245	@,
	movw	r3, #585	@,
	movw	ip, #:lower16:.LC20	@ tmp190,
	movt	ip, #:upper16:.LC20	@ tmp190,
	str	ip, [sp, #0]	@ tmp190,
	bl	HI_LogOut	@
	mvn	r0, #0	@ s32Ret,
	b	.L231	@
.L239:
	mov	r0, #1	@,
	mov	r1, #41	@,
	ldr	r2, .L245	@,
	movw	r3, #541	@,
	movw	ip, #:lower16:.LC0	@ tmp149,
	movt	ip, #:upper16:.LC0	@ tmp149,
	str	ip, [sp, #0]	@ tmp149,
	bl	HI_LogOut	@
	mvn	r0, #0	@ s32Ret,
	b	.L231	@
.L246:
	.align	2
.L245:
	.word	.LANCHOR1+148
	.fnend
	.size	PQ_MNG_SetReg, .-PQ_MNG_SetReg
	.align	2
	.global	PQ_MNG_LoadPhyList
	.type	PQ_MNG_LoadPhyList, %function
PQ_MNG_LoadPhyList:
	.fnstart
.LFB703:
	@ args = 0, pretend = 0, frame = 32
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
	movw	ip, #:lower16:.LANCHOR0	@,
	movt	ip, #:upper16:.LANCHOR0	@,
	str	r1, [fp, #-64]	@ enSourceMode, %sfp
	str	ip, [fp, #-48]	@, %sfp
	mov	r7, r0	@ enRegType, enRegType
	ldr	r1, [ip, #4]	@ prephitmp.767, sg_pstPhyReg
	str	r2, [fp, #-72]	@ enOutputMode, %sfp
	cmp	r1, #0	@ prephitmp.767,
	str	r3, [fp, #-68]	@ enModule, %sfp
	beq	.L248	@,
	movw	r6, #:lower16:.LANCHOR2	@ tmp167,
	movt	r6, #:upper16:.LANCHOR2	@ tmp167,
	ldr	r3, [r6, #0]	@ sg_u32PhyListNum, sg_u32PhyListNum
	cmp	r3, #0	@ sg_u32PhyListNum,
	mvnne	r2, #0	@,
	movne	r4, #0	@ i,
	strne	r2, [fp, #-76]	@, %sfp
	bne	.L259	@,
	b	.L269	@
.L265:
	ldr	ip, [fp, #-64]	@, %sfp
	cmp	r5, ip	@ u8SourceMode,
	beq	.L255	@,
.L253:
	ldr	r2, [r6, #0]	@ sg_u32PhyListNum, sg_u32PhyListNum
	add	r4, r4, #1	@ i, i,
	cmp	r2, r4	@ sg_u32PhyListNum, i
	bls	.L251	@,
.L268:
	ldr	r8, [fp, #-48]	@, %sfp
	ldr	r1, [r8, #4]	@ prephitmp.767, sg_pstPhyReg
.L259:
	add	r3, r1, r4, asl #4	@, D.24249, prephitmp.767, i,
	ldr	sl, [r1, r4, asl #4]	@ u32Addr, <variable>.u32RegAddr
	cmp	r7, #0	@ enRegType,
	ldr	r5, [r3, #12]	@, <variable>.u32Value
	ldrb	r8, [r3, #7]	@ zero_extendqisi2	@ u8OutputMode, <variable>.u8OutputMode
	str	r5, [fp, #-60]	@, %sfp
	ldrb	r1, [r3, #4]	@ zero_extendqisi2	@, <variable>.u8Lsb
	ldr	r9, [r3, #8]	@ u32Module, <variable>.u32Module
	str	r1, [fp, #-56]	@, %sfp
	ldrb	r2, [r3, #5]	@ zero_extendqisi2	@, <variable>.u8Msb
	str	r2, [fp, #-52]	@, %sfp
	ldrb	r5, [r3, #6]	@ zero_extendqisi2	@ u8SourceMode, <variable>.u8SourceMode
	beq	.L263	@,
	cmp	r7, #1	@ enRegType,
	beq	.L264	@,
.L254:
	cmp	r5, #0	@ u8SourceMode,
	bne	.L265	@,
.L255:
	cmp	r8, #0	@ u8OutputMode,
	beq	.L256	@,
	ldr	r0, [fp, #-72]	@, %sfp
	cmp	r8, r0	@ u8OutputMode,
	bne	.L253	@,
.L256:
	ldr	r3, [fp, #-68]	@, %sfp
	tst	r3, r9	@, u32Module
	beq	.L253	@,
	mov	r0, sl	@, u32Addr
	bl	PQ_HAL_IsVpssReg	@
	cmp	r0, #1	@,
	beq	.L266	@,
	mov	r0, sl	@, u32Addr
	bl	PQ_HAL_IsVdpReg	@
	cmp	r0, #1	@,
	beq	.L267	@,
.L258:
	mov	r2, sl	@, u32Addr
	mov	r3, r5	@, u8SourceMode
	movw	r1, #:lower16:.LC21	@,
	mov	r0, #128	@,
	movt	r1, #:upper16:.LC21	@,
	stmia	sp, {r8, r9}	@ phole stm
	bl	PQ_HAL_PrintMsg	@
	ldr	r2, [r6, #0]	@ sg_u32PhyListNum, sg_u32PhyListNum
	add	r4, r4, #1	@ i, i,
	cmp	r2, r4	@ sg_u32PhyListNum, i
	bhi	.L268	@,
.L251:
	ldr	r0, [fp, #-76]	@, %sfp
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L263:
	mov	r0, sl	@, u32Addr
	bl	PQ_HAL_IsVpssReg	@
	cmp	r0, #1	@,
	bne	.L253	@,
	b	.L254	@
.L264:
	mov	r0, sl	@, u32Addr
	bl	PQ_HAL_IsVdpReg	@
	cmp	r0, #1	@,
	bne	.L253	@,
	b	.L254	@
.L266:
	ldr	r1, [fp, #-56]	@, %sfp
	mov	r0, sl	@, u32Addr
	ldr	r2, [fp, #-52]	@, %sfp
	ldr	r3, [fp, #-60]	@, %sfp
	bl	PQ_MNG_SetVpssReg	@
	str	r0, [fp, #-76]	@, %sfp
	b	.L258	@
.L269:
	mvn	r1, #0	@,
	str	r1, [fp, #-76]	@, %sfp
	b	.L251	@
.L267:
	ldr	r1, [fp, #-56]	@, %sfp
	mov	r0, sl	@, u32Addr
	ldr	r2, [fp, #-52]	@, %sfp
	ldr	r3, [fp, #-60]	@, %sfp
	bl	PQ_MNG_SetVdpReg	@
	str	r0, [fp, #-76]	@, %sfp
	b	.L258	@
.L248:
	mov	r0, #1	@,
	mov	r1, #41	@,
	ldr	r2, .L270	@,
	mov	r3, #209	@,
	movw	lr, #:lower16:.LC0	@ tmp158,
	movt	lr, #:upper16:.LC0	@ tmp158,
	str	lr, [sp, #0]	@ tmp158,
	bl	HI_LogOut	@
	mvn	r0, #0	@,
	str	r0, [fp, #-76]	@, %sfp
	b	.L251	@
.L271:
	.align	2
.L270:
	.word	.LANCHOR1+164
	.fnend
	.size	PQ_MNG_LoadPhyList, .-PQ_MNG_LoadPhyList
	.align	2
	.global	PQ_MNG_InitPQTable
	.type	PQ_MNG_InitPQTable, %function
PQ_MNG_InitPQTable:
	.fnstart
.LFB697:
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
	movw	sl, #:lower16:.LANCHOR0	@ tmp188,
	movt	sl, #:upper16:.LANCHOR0	@ tmp188,
	ldr	r3, [sl, #0]	@ sg_bPqTableInitial, sg_bPqTableInitial
	cmp	r3, #1	@ sg_bPqTableInitial,
	moveq	r0, #0	@ D.24109,
	beq	.L274	@,
	cmp	r0, #0	@ pstPqParam,
	beq	.L285	@,
	cmp	r1, #1	@ bDefault,
	movw	r4, #:lower16:.LANCHOR2	@ tmp176,
	movt	r4, #:upper16:.LANCHOR2	@ tmp176,
	add	r1, r0, #37888	@ sg_pstPhyReg.210, pstPqParam,
	add	r3, r1, #232	@ sg_pstPhyReg.210, sg_pstPhyReg.210,
	mov	r2, #552	@ tmp177,
	str	r3, [sl, #4]	@ sg_pstPhyReg.210, sg_pstPhyReg
	str	r2, [r4, #0]	@ tmp177, sg_u32PhyListNum
	beq	.L286	@,
.L276:
	mov	r0, #0	@ D.24109,
	mov	r2, #1	@ tmp186,
	str	r2, [sl, #0]	@ tmp186, sg_bPqTableInitial
.L274:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L286:
	str	r2, [r0, #1240]	@ tmp177, <variable>.stPQFileHeader.u32PhyRegNum
	mov	r1, #32768	@,
	mov	r0, r3	@, sg_pstPhyReg.210
	bl	__memzero	@
	ldr	r9, [r4, #0]	@ sg_u32PhyListNum.211, sg_u32PhyListNum
	cmp	r9, #0	@ sg_u32PhyListNum.211,
	beq	.L276	@,
	ldr	r5, .L287	@ tmp190,
	mov	r9, r9, asl #4	@ D.25223, sg_u32PhyListNum.211,
	ldr	r8, [sl, #4]	@ pretmp.800, sg_pstPhyReg
	mov	ip, #16	@ ivtmp.816,
	cmp	ip, r9	@ ivtmp.816, D.25223
	sub	r4, r9, #16	@ tmp193, D.25223,
	ldmia	r5, {r0, r1, r2, r3}	@ tmp190,,,,
	ubfx	r4, r4, #4, #1	@ tmp194, tmp193,,
	stmia	r8, {r0, r1, r2, r3}	@ pretmp.800,,,,
	beq	.L276	@,
	cmp	r4, #0	@ tmp194,
	beq	.L277	@,
	add	lr, r5, #16	@ tmp203, tmp190,
	add	r4, r8, #16	@ tmp202, pretmp.800,
	mov	ip, #32	@ ivtmp.816,
	cmp	ip, r9	@ ivtmp.816, D.25223
	ldmia	lr, {r0, r1, r2, r3}	@ tmp203,,,,
	stmia	r4, {r0, r1, r2, r3}	@ tmp202,,,,
	beq	.L276	@,
.L277:
	add	r3, r5, ip	@ tmp198, tmp190, ivtmp.816
	add	lr, ip, #16	@ tmp195, ivtmp.816,
	add	r6, r8, ip	@ tmp197, pretmp.800, ivtmp.816
	add	r7, r5, lr	@ tmp201, tmp190, tmp195
	ldmia	r3, {r0, r1, r2, r3}	@ tmp198,,,,
	add	ip, lr, #16	@ ivtmp.816, tmp195,
	add	r4, r8, lr	@ tmp200, pretmp.800, tmp195
	cmp	ip, r9	@ ivtmp.816, D.25223
	stmia	r6, {r0, r1, r2, r3}	@ tmp197,,,,
	ldmia	r7, {r0, r1, r2, r3}	@ tmp201,,,,
	stmia	r4, {r0, r1, r2, r3}	@ tmp200,,,,
	bne	.L277	@,
	b	.L276	@
.L285:
	add	r0, r0, #1	@,,
	mov	r1, #41	@,
	ldr	r2, .L287+4	@,
	mov	r3, #66	@,
	movw	ip, #:lower16:.LC0	@ tmp173,
	movt	ip, #:upper16:.LC0	@ tmp173,
	str	ip, [sp, #0]	@ tmp173,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.24109,
	b	.L274	@
.L288:
	.align	2
.L287:
	.word	.LANCHOR1+204
	.word	.LANCHOR1+184
	.fnend
	.size	PQ_MNG_InitPQTable, .-PQ_MNG_InitPQTable
	.section	.rodata
	.align	2
.LANCHOR1 = . + 0
	.type	__func__.24596, %object
	.size	__func__.24596, 14
__func__.24596:
	.ascii	"PQ_MNG_GetReg\000"
	.space	2
	.type	__func__.24443, %object
	.size	__func__.24443, 20
__func__.24443:
	.ascii	"PQ_MNG_SetSoftTable\000"
	.type	__func__.24151, %object
	.size	__func__.24151, 21
__func__.24151:
	.ascii	"PQ_MNG_UpdatePhyList\000"
	.space	3
	.type	__func__.24405, %object
	.size	__func__.24405, 20
__func__.24405:
	.ascii	"PQ_MNG_GetSoftTable\000"
	.type	__func__.24484, %object
	.size	__func__.24484, 25
__func__.24484:
	.ascii	"PQ_MNG_GetArraySoftTable\000"
	.space	3
	.type	__func__.24305, %object
	.size	__func__.24305, 19
__func__.24305:
	.ascii	"PQ_MNG_InitPhyList\000"
	.space	1
	.type	__func__.24190, %object
	.size	__func__.24190, 17
__func__.24190:
	.ascii	"PQ_MNG_SetVdpReg\000"
	.space	3
	.type	__func__.24534, %object
	.size	__func__.24534, 14
__func__.24534:
	.ascii	"PQ_MNG_SetReg\000"
	.space	2
	.type	__func__.24239, %object
	.size	__func__.24239, 19
__func__.24239:
	.ascii	"PQ_MNG_LoadPhyList\000"
	.space	1
	.type	__func__.24099, %object
	.size	__func__.24099, 19
__func__.24099:
	.ascii	"PQ_MNG_InitPQTable\000"
	.space	1
	.type	sg_stPhyReg, %object
	.size	sg_stPhyReg, 8832
sg_stPhyReg:
@ u32RegAddr:
	.word	-120909824
@ u8Lsb:
	.byte	29
@ u8Msb:
	.byte	29
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120909824
@ u8Lsb:
	.byte	28
@ u8Msb:
	.byte	28
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120909820
@ u8Lsb:
	.byte	7
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	1
@ u32RegAddr:
	.word	-120909820
@ u8Lsb:
	.byte	6
@ u8Msb:
	.byte	6
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120909820
@ u8Lsb:
	.byte	5
@ u8Msb:
	.byte	5
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120909820
@ u8Lsb:
	.byte	4
@ u8Msb:
	.byte	4
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	1
@ u32RegAddr:
	.word	-120909820
@ u8Lsb:
	.byte	2
@ u8Msb:
	.byte	2
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120909820
@ u8Lsb:
	.byte	1
@ u8Msb:
	.byte	1
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	1
@ u32RegAddr:
	.word	-120909820
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	0
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120909808
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	19
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	8
@ u32RegAddr:
	.word	-120909808
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	11
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	2
@ u32RegAddr:
	.word	-120909808
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	30
@ u32RegAddr:
	.word	-120909804
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	19
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	8
@ u32RegAddr:
	.word	-120909804
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	11
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	2
@ u32RegAddr:
	.word	-120909804
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	30
@ u32RegAddr:
	.word	-120909788
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	21
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	3
@ u32RegAddr:
	.word	-120909788
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	13
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	5
@ u32RegAddr:
	.word	-120909788
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	5
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	5
@ u32RegAddr:
	.word	-120909792
@ u8Lsb:
	.byte	24
@ u8Msb:
	.byte	29
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	6
@ u32RegAddr:
	.word	-120909792
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	21
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	7
@ u32RegAddr:
	.word	-120909792
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	13
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	8
@ u32RegAddr:
	.word	-120909792
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	5
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	9
@ u32RegAddr:
	.word	-120909796
@ u8Lsb:
	.byte	24
@ u8Msb:
	.byte	29
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	11
@ u32RegAddr:
	.word	-120909796
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	21
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	12
@ u32RegAddr:
	.word	-120909796
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	13
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	15
@ u32RegAddr:
	.word	-120909796
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	5
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	18
@ u32RegAddr:
	.word	-120909800
@ u8Lsb:
	.byte	24
@ u8Msb:
	.byte	29
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	27
@ u32RegAddr:
	.word	-120909800
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	21
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	32
@ u32RegAddr:
	.word	-120909800
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	13
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	24
@ u32RegAddr:
	.word	-120909800
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	5
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	40
@ u32RegAddr:
	.word	-120909768
@ u8Lsb:
	.byte	24
@ u8Msb:
	.byte	27
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	8
@ u32RegAddr:
	.word	-120909768
@ u8Lsb:
	.byte	20
@ u8Msb:
	.byte	23
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	8
@ u32RegAddr:
	.word	-120909768
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	19
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	8
@ u32RegAddr:
	.word	-120909768
@ u8Lsb:
	.byte	12
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	8
@ u32RegAddr:
	.word	-120909768
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	11
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	8
@ u32RegAddr:
	.word	-120909768
@ u8Lsb:
	.byte	4
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	8
@ u32RegAddr:
	.word	-120909768
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	3
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	8
@ u32RegAddr:
	.word	-120909772
@ u8Lsb:
	.byte	28
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	8
@ u32RegAddr:
	.word	-120909772
@ u8Lsb:
	.byte	24
@ u8Msb:
	.byte	27
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	7
@ u32RegAddr:
	.word	-120909772
@ u8Lsb:
	.byte	20
@ u8Msb:
	.byte	23
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	7
@ u32RegAddr:
	.word	-120909772
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	19
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	6
@ u32RegAddr:
	.word	-120909772
@ u8Lsb:
	.byte	12
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	6
@ u32RegAddr:
	.word	-120909772
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	11
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	5
@ u32RegAddr:
	.word	-120909772
@ u8Lsb:
	.byte	4
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	5
@ u32RegAddr:
	.word	-120909772
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	3
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	6
@ u32RegAddr:
	.word	-120909764
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	5000
@ u32RegAddr:
	.word	-120909764
@ u8Lsb:
	.byte	13
@ u8Msb:
	.byte	13
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120909764
@ u8Lsb:
	.byte	12
@ u8Msb:
	.byte	12
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120909764
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	11
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	4
@ u32RegAddr:
	.word	-120909764
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	6
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	32
@ u32RegAddr:
	.word	-120909816
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	-320
@ u32RegAddr:
	.word	-120909816
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	11
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	2
@ u32RegAddr:
	.word	-120909812
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	2
@ u32RegAddr:
	.word	-120909760
@ u8Lsb:
	.byte	4
@ u8Msb:
	.byte	11
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120909760
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	3
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120909760
@ u8Lsb:
	.byte	12
@ u8Msb:
	.byte	19
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120909756
@ u8Lsb:
	.byte	24
@ u8Msb:
	.byte	27
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	8
@ u32RegAddr:
	.word	-120909756
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	21
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	-2
@ u32RegAddr:
	.word	-120909756
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	255
@ u32RegAddr:
	.word	-120909756
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120909748
@ u8Lsb:
	.byte	24
@ u8Msb:
	.byte	30
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	64
@ u32RegAddr:
	.word	-120909748
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	22
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	32
@ u32RegAddr:
	.word	-120909748
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	255
@ u32RegAddr:
	.word	-120909748
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	255
@ u32RegAddr:
	.word	-120909752
@ u8Lsb:
	.byte	24
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	255
@ u32RegAddr:
	.word	-120909752
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	23
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	208
@ u32RegAddr:
	.word	-120909752
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	144
@ u32RegAddr:
	.word	-120909752
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	16
@ u32RegAddr:
	.word	-120909744
@ u8Lsb:
	.byte	18
@ u8Msb:
	.byte	23
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120909744
@ u8Lsb:
	.byte	12
@ u8Msb:
	.byte	17
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120909744
@ u8Lsb:
	.byte	6
@ u8Msb:
	.byte	11
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	2
@ u32RegAddr:
	.word	-120909744
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	5
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	1
@ u32RegAddr:
	.word	-120909740
@ u8Lsb:
	.byte	24
@ u8Msb:
	.byte	30
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	64
@ u32RegAddr:
	.word	-120909740
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	22
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	64
@ u32RegAddr:
	.word	-120909740
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	14
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	64
@ u32RegAddr:
	.word	-120909740
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	6
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	48
@ u32RegAddr:
	.word	-120909744
@ u8Lsb:
	.byte	24
@ u8Msb:
	.byte	30
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	32
@ u32RegAddr:
	.word	-120909736
@ u8Lsb:
	.byte	21
@ u8Msb:
	.byte	21
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120909736
@ u8Lsb:
	.byte	20
@ u8Msb:
	.byte	20
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120909736
@ u8Lsb:
	.byte	19
@ u8Msb:
	.byte	19
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	1
@ u32RegAddr:
	.word	-120909736
@ u8Lsb:
	.byte	18
@ u8Msb:
	.byte	18
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	1
@ u32RegAddr:
	.word	-120909736
@ u8Lsb:
	.byte	17
@ u8Msb:
	.byte	17
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120909736
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	16
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	1
@ u32RegAddr:
	.word	-120909736
@ u8Lsb:
	.byte	12
@ u8Msb:
	.byte	13
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120909736
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	9
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120909736
@ u8Lsb:
	.byte	4
@ u8Msb:
	.byte	6
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	1
@ u32RegAddr:
	.word	-120909736
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	2
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	1
@ u32RegAddr:
	.word	-120909732
@ u8Lsb:
	.byte	26
@ u8Msb:
	.byte	26
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120909732
@ u8Lsb:
	.byte	25
@ u8Msb:
	.byte	25
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120909732
@ u8Lsb:
	.byte	24
@ u8Msb:
	.byte	24
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	1
@ u32RegAddr:
	.word	-120909732
@ u8Lsb:
	.byte	10
@ u8Msb:
	.byte	23
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120909732
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	9
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120909732
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120909724
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	16
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120909724
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	12
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	30
@ u32RegAddr:
	.word	-120909724
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	6
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	64
@ u32RegAddr:
	.word	-120909728
@ u8Lsb:
	.byte	24
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	160
@ u32RegAddr:
	.word	-120909728
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	23
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	10
@ u32RegAddr:
	.word	-120909728
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	15
@ u32RegAddr:
	.word	-120909728
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	255
@ u32RegAddr:
	.word	-120909716
@ u8Lsb:
	.byte	24
@ u8Msb:
	.byte	30
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	64
@ u32RegAddr:
	.word	-120909716
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	22
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120909716
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	255
@ u32RegAddr:
	.word	-120909716
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	255
@ u32RegAddr:
	.word	-120909720
@ u8Lsb:
	.byte	24
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	255
@ u32RegAddr:
	.word	-120909720
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	23
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	255
@ u32RegAddr:
	.word	-120909720
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	72
@ u32RegAddr:
	.word	-120909720
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	8
@ u32RegAddr:
	.word	-120909712
@ u8Lsb:
	.byte	18
@ u8Msb:
	.byte	23
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120909712
@ u8Lsb:
	.byte	12
@ u8Msb:
	.byte	17
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120909712
@ u8Lsb:
	.byte	6
@ u8Msb:
	.byte	11
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120909712
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	5
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	8
@ u32RegAddr:
	.word	-120909708
@ u8Lsb:
	.byte	24
@ u8Msb:
	.byte	30
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	64
@ u32RegAddr:
	.word	-120909708
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	22
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	64
@ u32RegAddr:
	.word	-120909708
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	14
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	64
@ u32RegAddr:
	.word	-120909708
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	6
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	64
@ u32RegAddr:
	.word	-120909712
@ u8Lsb:
	.byte	24
@ u8Msb:
	.byte	30
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120909700
@ u8Lsb:
	.byte	24
@ u8Msb:
	.byte	30
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	64
@ u32RegAddr:
	.word	-120909700
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	22
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120909700
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	255
@ u32RegAddr:
	.word	-120909700
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	255
@ u32RegAddr:
	.word	-120909704
@ u8Lsb:
	.byte	24
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	255
@ u32RegAddr:
	.word	-120909704
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	23
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	255
@ u32RegAddr:
	.word	-120909704
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	72
@ u32RegAddr:
	.word	-120909704
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	8
@ u32RegAddr:
	.word	-120909696
@ u8Lsb:
	.byte	18
@ u8Msb:
	.byte	23
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120909696
@ u8Lsb:
	.byte	12
@ u8Msb:
	.byte	17
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120909696
@ u8Lsb:
	.byte	6
@ u8Msb:
	.byte	11
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120909696
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	5
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	8
@ u32RegAddr:
	.word	-120909692
@ u8Lsb:
	.byte	24
@ u8Msb:
	.byte	30
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	64
@ u32RegAddr:
	.word	-120909692
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	22
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	64
@ u32RegAddr:
	.word	-120909692
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	14
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	64
@ u32RegAddr:
	.word	-120909692
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	6
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	64
@ u32RegAddr:
	.word	-120909696
@ u8Lsb:
	.byte	24
@ u8Msb:
	.byte	30
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120909688
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	23
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	128
@ u32RegAddr:
	.word	-120909688
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	13
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120909688
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	128
@ u32RegAddr:
	.word	-120909680
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	25
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	16
@ u32RegAddr:
	.word	-120909680
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	9
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	16
@ u32RegAddr:
	.word	-120909684
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	25
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	16
@ u32RegAddr:
	.word	-120909684
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	9
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	16
@ u32RegAddr:
	.word	-120909676
@ u8Lsb:
	.byte	30
@ u8Msb:
	.byte	30
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	1
@ u32RegAddr:
	.word	-120909676
@ u8Lsb:
	.byte	20
@ u8Msb:
	.byte	29
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	4
@ u32RegAddr:
	.word	-120909676
@ u8Lsb:
	.byte	10
@ u8Msb:
	.byte	19
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	8
@ u32RegAddr:
	.word	-120909676
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	9
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	4
@ u32RegAddr:
	.word	-120909672
@ u8Lsb:
	.byte	23
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	8
@ u32RegAddr:
	.word	-120909672
@ u8Lsb:
	.byte	14
@ u8Msb:
	.byte	22
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	4
@ u32RegAddr:
	.word	-120909672
@ u8Lsb:
	.byte	10
@ u8Msb:
	.byte	13
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	6
@ u32RegAddr:
	.word	-120909672
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	9
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	1
@ u32Value:
	.word	192
@ u32RegAddr:
	.word	-120909488
@ u8Lsb:
	.byte	30
@ u8Msb:
	.byte	30
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	2
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120909488
@ u8Lsb:
	.byte	20
@ u8Msb:
	.byte	27
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	2
@ u32Value:
	.word	32
@ u32RegAddr:
	.word	-120909488
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	2
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	2
@ u32Value:
	.word	6
@ u32RegAddr:
	.word	-120909500
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	2
@ u32Value:
	.word	8
@ u32RegAddr:
	.word	-120909500
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	2
@ u32Value:
	.word	16
@ u32RegAddr:
	.word	-120909500
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	23
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	2
@ u32Value:
	.word	32
@ u32RegAddr:
	.word	-120909480
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	11
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	2
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120909480
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	2
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120909484
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	2
@ u32Value:
	.word	30
@ u32RegAddr:
	.word	-120909484
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	2
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120909496
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	23
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	2
@ u32Value:
	.word	20
@ u32RegAddr:
	.word	-120909496
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	2
@ u32Value:
	.word	50
@ u32RegAddr:
	.word	-120909496
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	2
@ u32Value:
	.word	20
@ u32RegAddr:
	.word	-120909472
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	23
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	2
@ u32Value:
	.word	16
@ u32RegAddr:
	.word	-120909472
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	2
@ u32Value:
	.word	16
@ u32RegAddr:
	.word	-120909472
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	2
@ u32Value:
	.word	90
@ u32RegAddr:
	.word	-120909468
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	2
@ u32Value:
	.word	16
@ u32RegAddr:
	.word	-120909464
@ u8Lsb:
	.byte	24
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	2
@ u32Value:
	.word	128
@ u32RegAddr:
	.word	-120909464
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	23
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	2
@ u32Value:
	.word	64
@ u32RegAddr:
	.word	-120909464
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	2
@ u32Value:
	.word	32
@ u32RegAddr:
	.word	-120909464
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	2
@ u32Value:
	.word	16
@ u32RegAddr:
	.word	-120909460
@ u8Lsb:
	.byte	24
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	2
@ u32Value:
	.word	32
@ u32RegAddr:
	.word	-120909460
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	23
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	2
@ u32Value:
	.word	16
@ u32RegAddr:
	.word	-120909460
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	2
@ u32Value:
	.word	8
@ u32RegAddr:
	.word	-120909460
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	2
@ u32Value:
	.word	4
@ u32RegAddr:
	.word	-120909476
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	23
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	2
@ u32Value:
	.word	64
@ u32RegAddr:
	.word	-120909476
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	2
@ u32Value:
	.word	32
@ u32RegAddr:
	.word	-120909476
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	2
@ u32Value:
	.word	8
@ u32RegAddr:
	.word	-120909488
@ u8Lsb:
	.byte	19
@ u8Msb:
	.byte	19
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	2
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120909456
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	2
@ u32Value:
	.word	20
@ u32RegAddr:
	.word	-120909456
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	2
@ u32Value:
	.word	15
@ u32RegAddr:
	.word	-120909456
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	23
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	2
@ u32Value:
	.word	32
@ u32RegAddr:
	.word	-120909452
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	2
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120909452
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	2
@ u32Value:
	.word	32
@ u32RegAddr:
	.word	-120909448
@ u8Lsb:
	.byte	24
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	2
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120909448
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	23
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	2
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120909448
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	2
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120909448
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	2
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120909444
@ u8Lsb:
	.byte	12
@ u8Msb:
	.byte	23
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	2
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120909444
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	11
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	2
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120913536
@ u8Lsb:
	.byte	31
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	1
@ u32RegAddr:
	.word	-120913536
@ u8Lsb:
	.byte	30
@ u8Msb:
	.byte	30
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120913536
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	27
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	180
@ u32RegAddr:
	.word	-120913536
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	127
@ u32RegAddr:
	.word	-120913532
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	-19
@ u32RegAddr:
	.word	-120913532
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	-8
@ u32RegAddr:
	.word	-120913532
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	23
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	-2
@ u32RegAddr:
	.word	-120913532
@ u8Lsb:
	.byte	24
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	-1
@ u32RegAddr:
	.word	-120913536
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	-1
@ u32RegAddr:
	.word	-120913528
@ u8Lsb:
	.byte	20
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	2
@ u32RegAddr:
	.word	-120913528
@ u8Lsb:
	.byte	10
@ u8Msb:
	.byte	19
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	3
@ u32RegAddr:
	.word	-120913528
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	9
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	3
@ u32RegAddr:
	.word	-120913524
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	50
@ u32RegAddr:
	.word	-120913524
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	51
@ u32RegAddr:
	.word	-120913520
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	128
@ u32RegAddr:
	.word	-120913520
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	128
@ u32RegAddr:
	.word	-120913520
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	23
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	128
@ u32RegAddr:
	.word	-120913516
@ u8Lsb:
	.byte	31
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	1
@ u32RegAddr:
	.word	-120913516
@ u8Lsb:
	.byte	30
@ u8Msb:
	.byte	30
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120913516
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	27
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	256
@ u32RegAddr:
	.word	-120913516
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	127
@ u32RegAddr:
	.word	-120913512
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	-21
@ u32RegAddr:
	.word	-120913512
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	-21
@ u32RegAddr:
	.word	-120913512
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	23
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	-11
@ u32RegAddr:
	.word	-120913508
@ u8Lsb:
	.byte	20
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	4
@ u32RegAddr:
	.word	-120913508
@ u8Lsb:
	.byte	10
@ u8Msb:
	.byte	19
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	4
@ u32RegAddr:
	.word	-120913508
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	9
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	4
@ u32RegAddr:
	.word	-120913536
@ u8Lsb:
	.byte	31
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	1
@ u32RegAddr:
	.word	-120913536
@ u8Lsb:
	.byte	30
@ u8Msb:
	.byte	30
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120913536
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	27
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	180
@ u32RegAddr:
	.word	-120913536
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	127
@ u32RegAddr:
	.word	-120913532
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	-19
@ u32RegAddr:
	.word	-120913532
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	-8
@ u32RegAddr:
	.word	-120913532
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	23
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	-2
@ u32RegAddr:
	.word	-120913532
@ u8Lsb:
	.byte	24
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	-1
@ u32RegAddr:
	.word	-120913536
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	-1
@ u32RegAddr:
	.word	-120913528
@ u8Lsb:
	.byte	20
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	2
@ u32RegAddr:
	.word	-120913528
@ u8Lsb:
	.byte	10
@ u8Msb:
	.byte	19
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	3
@ u32RegAddr:
	.word	-120913528
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	9
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	3
@ u32RegAddr:
	.word	-120913524
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	50
@ u32RegAddr:
	.word	-120913524
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	51
@ u32RegAddr:
	.word	-120913520
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	128
@ u32RegAddr:
	.word	-120913520
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	128
@ u32RegAddr:
	.word	-120913520
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	23
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	128
@ u32RegAddr:
	.word	-120913516
@ u8Lsb:
	.byte	31
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	1
@ u32RegAddr:
	.word	-120913516
@ u8Lsb:
	.byte	30
@ u8Msb:
	.byte	30
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120913516
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	27
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	256
@ u32RegAddr:
	.word	-120913516
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	127
@ u32RegAddr:
	.word	-120913512
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	-21
@ u32RegAddr:
	.word	-120913512
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	-21
@ u32RegAddr:
	.word	-120913512
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	23
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	-11
@ u32RegAddr:
	.word	-120913508
@ u8Lsb:
	.byte	20
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	4
@ u32RegAddr:
	.word	-120913508
@ u8Lsb:
	.byte	10
@ u8Msb:
	.byte	19
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	4
@ u32RegAddr:
	.word	-120913508
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	9
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	4
@ u32RegAddr:
	.word	-120913536
@ u8Lsb:
	.byte	31
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	1
@ u32RegAddr:
	.word	-120913536
@ u8Lsb:
	.byte	30
@ u8Msb:
	.byte	30
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120913536
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	27
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	180
@ u32RegAddr:
	.word	-120913536
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	127
@ u32RegAddr:
	.word	-120913532
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	-19
@ u32RegAddr:
	.word	-120913532
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	-8
@ u32RegAddr:
	.word	-120913532
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	23
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	-2
@ u32RegAddr:
	.word	-120913532
@ u8Lsb:
	.byte	24
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	-1
@ u32RegAddr:
	.word	-120913536
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	-1
@ u32RegAddr:
	.word	-120913528
@ u8Lsb:
	.byte	20
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	2
@ u32RegAddr:
	.word	-120913528
@ u8Lsb:
	.byte	10
@ u8Msb:
	.byte	19
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	3
@ u32RegAddr:
	.word	-120913528
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	9
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	3
@ u32RegAddr:
	.word	-120913524
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	50
@ u32RegAddr:
	.word	-120913524
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	51
@ u32RegAddr:
	.word	-120913520
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	128
@ u32RegAddr:
	.word	-120913520
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	128
@ u32RegAddr:
	.word	-120913520
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	23
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	128
@ u32RegAddr:
	.word	-120913516
@ u8Lsb:
	.byte	31
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	1
@ u32RegAddr:
	.word	-120913516
@ u8Lsb:
	.byte	30
@ u8Msb:
	.byte	30
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120913516
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	27
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	256
@ u32RegAddr:
	.word	-120913516
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	127
@ u32RegAddr:
	.word	-120913512
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	-21
@ u32RegAddr:
	.word	-120913512
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	-21
@ u32RegAddr:
	.word	-120913512
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	23
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	-11
@ u32RegAddr:
	.word	-120913508
@ u8Lsb:
	.byte	20
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	4
@ u32RegAddr:
	.word	-120913508
@ u8Lsb:
	.byte	10
@ u8Msb:
	.byte	19
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	4
@ u32RegAddr:
	.word	-120913508
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	9
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	2
@ u32Module:
	.word	4
@ u32Value:
	.word	4
@ u32RegAddr:
	.word	-120913536
@ u8Lsb:
	.byte	31
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	1
@ u32RegAddr:
	.word	-120913536
@ u8Lsb:
	.byte	30
@ u8Msb:
	.byte	30
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120913536
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	27
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	180
@ u32RegAddr:
	.word	-120913536
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	127
@ u32RegAddr:
	.word	-120913532
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	-19
@ u32RegAddr:
	.word	-120913532
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	-8
@ u32RegAddr:
	.word	-120913532
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	23
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	-2
@ u32RegAddr:
	.word	-120913532
@ u8Lsb:
	.byte	24
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	-1
@ u32RegAddr:
	.word	-120913536
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	-1
@ u32RegAddr:
	.word	-120913528
@ u8Lsb:
	.byte	20
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	2
@ u32RegAddr:
	.word	-120913528
@ u8Lsb:
	.byte	10
@ u8Msb:
	.byte	19
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	3
@ u32RegAddr:
	.word	-120913528
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	9
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	3
@ u32RegAddr:
	.word	-120913524
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	50
@ u32RegAddr:
	.word	-120913524
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	51
@ u32RegAddr:
	.word	-120913520
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	128
@ u32RegAddr:
	.word	-120913520
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	128
@ u32RegAddr:
	.word	-120913520
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	23
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	128
@ u32RegAddr:
	.word	-120913516
@ u8Lsb:
	.byte	31
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	1
@ u32RegAddr:
	.word	-120913516
@ u8Lsb:
	.byte	30
@ u8Msb:
	.byte	30
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120913516
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	27
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	256
@ u32RegAddr:
	.word	-120913516
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	127
@ u32RegAddr:
	.word	-120913512
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	-21
@ u32RegAddr:
	.word	-120913512
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	-21
@ u32RegAddr:
	.word	-120913512
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	23
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	-11
@ u32RegAddr:
	.word	-120913508
@ u8Lsb:
	.byte	20
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	4
@ u32RegAddr:
	.word	-120913508
@ u8Lsb:
	.byte	10
@ u8Msb:
	.byte	19
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	4
@ u32RegAddr:
	.word	-120913508
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	9
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	4
@ u32RegAddr:
	.word	-120913536
@ u8Lsb:
	.byte	31
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	1
@ u32RegAddr:
	.word	-120913536
@ u8Lsb:
	.byte	30
@ u8Msb:
	.byte	30
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120913536
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	27
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	180
@ u32RegAddr:
	.word	-120913536
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	127
@ u32RegAddr:
	.word	-120913532
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	-19
@ u32RegAddr:
	.word	-120913532
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	-8
@ u32RegAddr:
	.word	-120913532
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	23
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	-2
@ u32RegAddr:
	.word	-120913532
@ u8Lsb:
	.byte	24
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	-1
@ u32RegAddr:
	.word	-120913536
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	-1
@ u32RegAddr:
	.word	-120913528
@ u8Lsb:
	.byte	20
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	2
@ u32RegAddr:
	.word	-120913528
@ u8Lsb:
	.byte	10
@ u8Msb:
	.byte	19
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	3
@ u32RegAddr:
	.word	-120913528
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	9
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	3
@ u32RegAddr:
	.word	-120913524
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	50
@ u32RegAddr:
	.word	-120913524
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	51
@ u32RegAddr:
	.word	-120913520
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	128
@ u32RegAddr:
	.word	-120913520
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	128
@ u32RegAddr:
	.word	-120913520
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	23
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	128
@ u32RegAddr:
	.word	-120913516
@ u8Lsb:
	.byte	31
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	1
@ u32RegAddr:
	.word	-120913516
@ u8Lsb:
	.byte	30
@ u8Msb:
	.byte	30
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120913516
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	27
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	256
@ u32RegAddr:
	.word	-120913516
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	127
@ u32RegAddr:
	.word	-120913512
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	-21
@ u32RegAddr:
	.word	-120913512
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	-21
@ u32RegAddr:
	.word	-120913512
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	23
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	-11
@ u32RegAddr:
	.word	-120913508
@ u8Lsb:
	.byte	20
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	4
@ u32RegAddr:
	.word	-120913508
@ u8Lsb:
	.byte	10
@ u8Msb:
	.byte	19
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	4
@ u32RegAddr:
	.word	-120913508
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	9
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	4
@ u32RegAddr:
	.word	-120913536
@ u8Lsb:
	.byte	31
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	1
@ u32RegAddr:
	.word	-120913536
@ u8Lsb:
	.byte	30
@ u8Msb:
	.byte	30
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120913536
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	27
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	180
@ u32RegAddr:
	.word	-120913536
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	127
@ u32RegAddr:
	.word	-120913532
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	-19
@ u32RegAddr:
	.word	-120913532
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	-8
@ u32RegAddr:
	.word	-120913532
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	23
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	-2
@ u32RegAddr:
	.word	-120913532
@ u8Lsb:
	.byte	24
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	-1
@ u32RegAddr:
	.word	-120913536
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	-1
@ u32RegAddr:
	.word	-120913528
@ u8Lsb:
	.byte	20
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	2
@ u32RegAddr:
	.word	-120913528
@ u8Lsb:
	.byte	10
@ u8Msb:
	.byte	19
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	3
@ u32RegAddr:
	.word	-120913528
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	9
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	3
@ u32RegAddr:
	.word	-120913524
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	50
@ u32RegAddr:
	.word	-120913524
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	51
@ u32RegAddr:
	.word	-120913520
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	128
@ u32RegAddr:
	.word	-120913520
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	128
@ u32RegAddr:
	.word	-120913520
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	23
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	128
@ u32RegAddr:
	.word	-120913516
@ u8Lsb:
	.byte	31
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	1
@ u32RegAddr:
	.word	-120913516
@ u8Lsb:
	.byte	30
@ u8Msb:
	.byte	30
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120913516
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	27
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	256
@ u32RegAddr:
	.word	-120913516
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	127
@ u32RegAddr:
	.word	-120913512
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	-21
@ u32RegAddr:
	.word	-120913512
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	-21
@ u32RegAddr:
	.word	-120913512
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	23
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	-11
@ u32RegAddr:
	.word	-120913508
@ u8Lsb:
	.byte	20
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	4
@ u32RegAddr:
	.word	-120913508
@ u8Lsb:
	.byte	10
@ u8Msb:
	.byte	19
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	4
@ u32RegAddr:
	.word	-120913508
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	9
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	3
@ u32Module:
	.word	4
@ u32Value:
	.word	4
@ u32RegAddr:
	.word	-120913920
@ u8Lsb:
	.byte	11
@ u8Msb:
	.byte	11
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	8
@ u32Value:
	.word	1
@ u32RegAddr:
	.word	-120913476
@ u8Lsb:
	.byte	24
@ u8Msb:
	.byte	24
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	8
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120913480
@ u8Lsb:
	.byte	24
@ u8Msb:
	.byte	28
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	8
@ u32Value:
	.word	8
@ u32RegAddr:
	.word	-120913480
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	20
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	8
@ u32Value:
	.word	16
@ u32RegAddr:
	.word	-120913476
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	20
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	8
@ u32Value:
	.word	8
@ u32RegAddr:
	.word	-120913476
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	4
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	8
@ u32Value:
	.word	8
@ u32RegAddr:
	.word	-120913460
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	23
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	8
@ u32Value:
	.word	64
@ u32RegAddr:
	.word	-120913460
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	8
@ u32Value:
	.word	40
@ u32RegAddr:
	.word	-120913460
@ u8Lsb:
	.byte	4
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	8
@ u32Value:
	.word	4
@ u32RegAddr:
	.word	-120913460
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	3
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	8
@ u32Value:
	.word	1
@ u32RegAddr:
	.word	-120831744
@ u8Lsb:
	.byte	31
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	1
@ u32RegAddr:
	.word	-120831744
@ u8Lsb:
	.byte	30
@ u8Msb:
	.byte	30
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120831744
@ u8Lsb:
	.byte	28
@ u8Msb:
	.byte	28
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120831744
@ u8Lsb:
	.byte	27
@ u8Msb:
	.byte	27
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120831744
@ u8Lsb:
	.byte	26
@ u8Msb:
	.byte	26
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120831744
@ u8Lsb:
	.byte	25
@ u8Msb:
	.byte	25
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	1
@ u32RegAddr:
	.word	-120831744
@ u8Lsb:
	.byte	24
@ u8Msb:
	.byte	24
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120831744
@ u8Lsb:
	.byte	23
@ u8Msb:
	.byte	23
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	1
@ u32RegAddr:
	.word	-120831744
@ u8Lsb:
	.byte	22
@ u8Msb:
	.byte	22
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	1
@ u32RegAddr:
	.word	-120831744
@ u8Lsb:
	.byte	20
@ u8Msb:
	.byte	21
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	2
@ u32RegAddr:
	.word	-120831744
@ u8Lsb:
	.byte	19
@ u8Msb:
	.byte	19
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	1
@ u32RegAddr:
	.word	-120831744
@ u8Lsb:
	.byte	18
@ u8Msb:
	.byte	18
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120831744
@ u8Lsb:
	.byte	17
@ u8Msb:
	.byte	17
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120831732
@ u8Lsb:
	.byte	24
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	64
@ u32RegAddr:
	.word	-120831732
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	23
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120831732
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120831728
@ u8Lsb:
	.byte	23
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120831724
@ u8Lsb:
	.byte	24
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120831724
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	23
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120831724
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120831720
@ u8Lsb:
	.byte	26
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	18
@ u32RegAddr:
	.word	-120831720
@ u8Lsb:
	.byte	20
@ u8Msb:
	.byte	25
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	18
@ u32RegAddr:
	.word	-120831720
@ u8Lsb:
	.byte	14
@ u8Msb:
	.byte	19
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	18
@ u32RegAddr:
	.word	-120831720
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	13
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	16
@ u32RegAddr:
	.word	-120831720
@ u8Lsb:
	.byte	2
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	17
@ u32RegAddr:
	.word	-120831716
@ u8Lsb:
	.byte	24
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	50
@ u32RegAddr:
	.word	-120831716
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	23
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	60
@ u32RegAddr:
	.word	-120831716
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	70
@ u32RegAddr:
	.word	-120831712
@ u8Lsb:
	.byte	24
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120831712
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	23
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	255
@ u32RegAddr:
	.word	-120831708
@ u8Lsb:
	.byte	24
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120831708
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	23
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	255
@ u32RegAddr:
	.word	-120831704
@ u8Lsb:
	.byte	24
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120831704
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	23
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	255
@ u32RegAddr:
	.word	-120831700
@ u8Lsb:
	.byte	26
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	32
@ u32RegAddr:
	.word	-120831700
@ u8Lsb:
	.byte	20
@ u8Msb:
	.byte	25
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	32
@ u32RegAddr:
	.word	-120831700
@ u8Lsb:
	.byte	14
@ u8Msb:
	.byte	19
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	32
@ u32RegAddr:
	.word	-120831700
@ u8Lsb:
	.byte	26
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	42
@ u32RegAddr:
	.word	-120831700
@ u8Lsb:
	.byte	20
@ u8Msb:
	.byte	25
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	42
@ u32RegAddr:
	.word	-120831700
@ u8Lsb:
	.byte	14
@ u8Msb:
	.byte	19
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	42
@ u32RegAddr:
	.word	-120831700
@ u8Lsb:
	.byte	26
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	48
@ u32RegAddr:
	.word	-120831700
@ u8Lsb:
	.byte	20
@ u8Msb:
	.byte	25
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	48
@ u32RegAddr:
	.word	-120831700
@ u8Lsb:
	.byte	14
@ u8Msb:
	.byte	19
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	42
@ u32RegAddr:
	.word	-120831696
@ u8Lsb:
	.byte	24
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	20
@ u32RegAddr:
	.word	-120831696
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	23
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	30
@ u32RegAddr:
	.word	-120831696
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	40
@ u32RegAddr:
	.word	-120831696
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	50
@ u32RegAddr:
	.word	-120831692
@ u8Lsb:
	.byte	24
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	60
@ u32RegAddr:
	.word	-120831692
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	23
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	70
@ u32RegAddr:
	.word	-120831692
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	115
@ u32RegAddr:
	.word	-120831688
@ u8Lsb:
	.byte	28
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120831688
@ u8Lsb:
	.byte	24
@ u8Msb:
	.byte	27
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	2
@ u32RegAddr:
	.word	-120831688
@ u8Lsb:
	.byte	20
@ u8Msb:
	.byte	23
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	4
@ u32RegAddr:
	.word	-120831688
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	19
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	6
@ u32RegAddr:
	.word	-120831688
@ u8Lsb:
	.byte	12
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	7
@ u32RegAddr:
	.word	-120831688
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	11
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	8
@ u32RegAddr:
	.word	-120831688
@ u8Lsb:
	.byte	4
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	9
@ u32RegAddr:
	.word	-120831688
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	3
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	10
@ u32RegAddr:
	.word	-120831684
@ u8Lsb:
	.byte	28
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	10
@ u32RegAddr:
	.word	-120831680
@ u8Lsb:
	.byte	22
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	25
@ u32RegAddr:
	.word	-120831680
@ u8Lsb:
	.byte	12
@ u8Msb:
	.byte	21
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	51
@ u32RegAddr:
	.word	-120831680
@ u8Lsb:
	.byte	2
@ u8Msb:
	.byte	11
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	51
@ u32RegAddr:
	.word	-120831676
@ u8Lsb:
	.byte	22
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	25
@ u32RegAddr:
	.word	-120831676
@ u8Lsb:
	.byte	12
@ u8Msb:
	.byte	21
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	25
@ u32RegAddr:
	.word	-120831676
@ u8Lsb:
	.byte	2
@ u8Msb:
	.byte	11
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	25
@ u32RegAddr:
	.word	-120831672
@ u8Lsb:
	.byte	22
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	5
@ u32RegAddr:
	.word	-120831672
@ u8Lsb:
	.byte	12
@ u8Msb:
	.byte	21
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120831668
@ u8Lsb:
	.byte	24
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	30
@ u32RegAddr:
	.word	-120831668
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	23
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	50
@ u32RegAddr:
	.word	-120831668
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	70
@ u32RegAddr:
	.word	-120831668
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	90
@ u32RegAddr:
	.word	-120831664
@ u8Lsb:
	.byte	24
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	130
@ u32RegAddr:
	.word	-120831664
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	23
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	150
@ u32RegAddr:
	.word	-120831664
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	170
@ u32RegAddr:
	.word	-120831660
@ u8Lsb:
	.byte	28
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120831660
@ u8Lsb:
	.byte	24
@ u8Msb:
	.byte	27
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	1
@ u32RegAddr:
	.word	-120831660
@ u8Lsb:
	.byte	20
@ u8Msb:
	.byte	23
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	2
@ u32RegAddr:
	.word	-120831660
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	19
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	2
@ u32RegAddr:
	.word	-120831660
@ u8Lsb:
	.byte	12
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	2
@ u32RegAddr:
	.word	-120831660
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	11
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	2
@ u32RegAddr:
	.word	-120831660
@ u8Lsb:
	.byte	4
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	2
@ u32RegAddr:
	.word	-120831660
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	3
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	2
@ u32RegAddr:
	.word	-120831656
@ u8Lsb:
	.byte	28
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	2
@ u32RegAddr:
	.word	-120831652
@ u8Lsb:
	.byte	22
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	8
@ u32RegAddr:
	.word	-120831652
@ u8Lsb:
	.byte	12
@ u8Msb:
	.byte	21
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	12
@ u32RegAddr:
	.word	-120831652
@ u8Lsb:
	.byte	2
@ u8Msb:
	.byte	11
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120831648
@ u8Lsb:
	.byte	22
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120831648
@ u8Lsb:
	.byte	12
@ u8Msb:
	.byte	21
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120831648
@ u8Lsb:
	.byte	2
@ u8Msb:
	.byte	11
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120831644
@ u8Lsb:
	.byte	22
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120831644
@ u8Lsb:
	.byte	12
@ u8Msb:
	.byte	21
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120831640
@ u8Lsb:
	.byte	22
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120831640
@ u8Lsb:
	.byte	12
@ u8Msb:
	.byte	21
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120831640
@ u8Lsb:
	.byte	2
@ u8Msb:
	.byte	11
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120831636
@ u8Lsb:
	.byte	22
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	-16
@ u32RegAddr:
	.word	-120831636
@ u8Lsb:
	.byte	12
@ u8Msb:
	.byte	21
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	-30
@ u32RegAddr:
	.word	-120831636
@ u8Lsb:
	.byte	2
@ u8Msb:
	.byte	11
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	-41
@ u32RegAddr:
	.word	-120831632
@ u8Lsb:
	.byte	22
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	-49
@ u32RegAddr:
	.word	-120831632
@ u8Lsb:
	.byte	12
@ u8Msb:
	.byte	21
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	-45
@ u32RegAddr:
	.word	-120831632
@ u8Lsb:
	.byte	2
@ u8Msb:
	.byte	11
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	-38
@ u32RegAddr:
	.word	-120831628
@ u8Lsb:
	.byte	22
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	-32
@ u32RegAddr:
	.word	-120831628
@ u8Lsb:
	.byte	12
@ u8Msb:
	.byte	21
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	-26
@ u32RegAddr:
	.word	-120831628
@ u8Lsb:
	.byte	2
@ u8Msb:
	.byte	11
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	-12
@ u32RegAddr:
	.word	-120831624
@ u8Lsb:
	.byte	22
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	-6
@ u32RegAddr:
	.word	-120831624
@ u8Lsb:
	.byte	12
@ u8Msb:
	.byte	21
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	13
@ u32RegAddr:
	.word	-120831624
@ u8Lsb:
	.byte	2
@ u8Msb:
	.byte	11
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	28
@ u32RegAddr:
	.word	-120831620
@ u8Lsb:
	.byte	22
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	38
@ u32RegAddr:
	.word	-120831620
@ u8Lsb:
	.byte	12
@ u8Msb:
	.byte	21
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	53
@ u32RegAddr:
	.word	-120831620
@ u8Lsb:
	.byte	2
@ u8Msb:
	.byte	11
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	62
@ u32RegAddr:
	.word	-120831616
@ u8Lsb:
	.byte	22
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	69
@ u32RegAddr:
	.word	-120831616
@ u8Lsb:
	.byte	12
@ u8Msb:
	.byte	21
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	70
@ u32RegAddr:
	.word	-120831616
@ u8Lsb:
	.byte	2
@ u8Msb:
	.byte	11
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	72
@ u32RegAddr:
	.word	-120831612
@ u8Lsb:
	.byte	22
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	73
@ u32RegAddr:
	.word	-120831612
@ u8Lsb:
	.byte	12
@ u8Msb:
	.byte	21
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	70
@ u32RegAddr:
	.word	-120831612
@ u8Lsb:
	.byte	2
@ u8Msb:
	.byte	11
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	66
@ u32RegAddr:
	.word	-120831608
@ u8Lsb:
	.byte	22
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	58
@ u32RegAddr:
	.word	-120831608
@ u8Lsb:
	.byte	12
@ u8Msb:
	.byte	21
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	52
@ u32RegAddr:
	.word	-120831608
@ u8Lsb:
	.byte	2
@ u8Msb:
	.byte	11
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	44
@ u32RegAddr:
	.word	-120831604
@ u8Lsb:
	.byte	22
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	34
@ u32RegAddr:
	.word	-120831604
@ u8Lsb:
	.byte	12
@ u8Msb:
	.byte	21
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	10
@ u32RegAddr:
	.word	-120831604
@ u8Lsb:
	.byte	2
@ u8Msb:
	.byte	11
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120831600
@ u8Lsb:
	.byte	22
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120831600
@ u8Lsb:
	.byte	12
@ u8Msb:
	.byte	21
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120831600
@ u8Lsb:
	.byte	2
@ u8Msb:
	.byte	11
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	16
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120831584
@ u8Lsb:
	.byte	31
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	32
@ u32Value:
	.word	1
@ u32RegAddr:
	.word	-120831584
@ u8Lsb:
	.byte	30
@ u8Msb:
	.byte	30
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	32
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120831584
@ u8Lsb:
	.byte	29
@ u8Msb:
	.byte	29
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	32
@ u32Value:
	.word	1
@ u32RegAddr:
	.word	-120831584
@ u8Lsb:
	.byte	28
@ u8Msb:
	.byte	28
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	32
@ u32Value:
	.word	1
@ u32RegAddr:
	.word	-120831584
@ u8Lsb:
	.byte	27
@ u8Msb:
	.byte	27
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	32
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120831584
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	8
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	32
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120831580
@ u8Lsb:
	.byte	20
@ u8Msb:
	.byte	29
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	32
@ u32Value:
	.word	80
@ u32RegAddr:
	.word	-120831580
@ u8Lsb:
	.byte	10
@ u8Msb:
	.byte	19
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	32
@ u32Value:
	.word	80
@ u32RegAddr:
	.word	-120831580
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	9
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	32
@ u32Value:
	.word	80
@ u32RegAddr:
	.word	-120831580
@ u8Lsb:
	.byte	20
@ u8Msb:
	.byte	29
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	32
@ u32Value:
	.word	80
@ u32RegAddr:
	.word	-120831580
@ u8Lsb:
	.byte	10
@ u8Msb:
	.byte	19
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	32
@ u32Value:
	.word	80
@ u32RegAddr:
	.word	-120831580
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	9
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	32
@ u32Value:
	.word	80
@ u32RegAddr:
	.word	-120831580
@ u8Lsb:
	.byte	20
@ u8Msb:
	.byte	29
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	32
@ u32Value:
	.word	80
@ u32RegAddr:
	.word	-120831580
@ u8Lsb:
	.byte	10
@ u8Msb:
	.byte	19
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	32
@ u32Value:
	.word	80
@ u32RegAddr:
	.word	-120831580
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	9
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	32
@ u32Value:
	.word	80
@ u32RegAddr:
	.word	-120844928
@ u8Lsb:
	.byte	29
@ u8Msb:
	.byte	30
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	256
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120844908
@ u8Lsb:
	.byte	31
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	256
@ u32Value:
	.word	1
@ u32RegAddr:
	.word	-120844908
@ u8Lsb:
	.byte	30
@ u8Msb:
	.byte	30
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	256
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120844908
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	11
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	256
@ u32Value:
	.word	128
@ u32RegAddr:
	.word	-120844904
@ u8Lsb:
	.byte	28
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	256
@ u32Value:
	.word	4
@ u32RegAddr:
	.word	-120844904
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	25
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	256
@ u32Value:
	.word	128
@ u32RegAddr:
	.word	-120844924
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	5
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	256
@ u32Value:
	.word	14
@ u32RegAddr:
	.word	-120844920
@ u8Lsb:
	.byte	24
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	256
@ u32Value:
	.word	4
@ u32RegAddr:
	.word	-120844920
@ u8Lsb:
	.byte	12
@ u8Msb:
	.byte	22
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	256
@ u32Value:
	.word	16
@ u32RegAddr:
	.word	-120844920
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	10
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	256
@ u32Value:
	.word	-48
@ u32RegAddr:
	.word	-120844916
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	256
@ u32Value:
	.word	8
@ u32RegAddr:
	.word	-120844912
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	11
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	256
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120844904
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	256
@ u32Value:
	.word	80
@ u32RegAddr:
	.word	-120844904
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	256
@ u32Value:
	.word	80
@ u32RegAddr:
	.word	-120844900
@ u8Lsb:
	.byte	31
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	256
@ u32Value:
	.word	1
@ u32RegAddr:
	.word	-120844900
@ u8Lsb:
	.byte	30
@ u8Msb:
	.byte	30
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	256
@ u32Value:
	.word	1
@ u32RegAddr:
	.word	-120844900
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	9
@ u8SourceMode:
	.byte	1
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	256
@ u32Value:
	.word	140
@ u32RegAddr:
	.word	-120844928
@ u8Lsb:
	.byte	29
@ u8Msb:
	.byte	30
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	256
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120844908
@ u8Lsb:
	.byte	31
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	256
@ u32Value:
	.word	1
@ u32RegAddr:
	.word	-120844908
@ u8Lsb:
	.byte	30
@ u8Msb:
	.byte	30
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	256
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120844908
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	11
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	256
@ u32Value:
	.word	128
@ u32RegAddr:
	.word	-120844904
@ u8Lsb:
	.byte	28
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	256
@ u32Value:
	.word	4
@ u32RegAddr:
	.word	-120844904
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	25
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	256
@ u32Value:
	.word	80
@ u32RegAddr:
	.word	-120844924
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	5
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	256
@ u32Value:
	.word	14
@ u32RegAddr:
	.word	-120844920
@ u8Lsb:
	.byte	24
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	256
@ u32Value:
	.word	4
@ u32RegAddr:
	.word	-120844920
@ u8Lsb:
	.byte	12
@ u8Msb:
	.byte	22
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	256
@ u32Value:
	.word	16
@ u32RegAddr:
	.word	-120844920
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	10
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	256
@ u32Value:
	.word	-48
@ u32RegAddr:
	.word	-120844916
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	256
@ u32Value:
	.word	8
@ u32RegAddr:
	.word	-120844912
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	11
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	256
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120844904
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	256
@ u32Value:
	.word	80
@ u32RegAddr:
	.word	-120844904
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	256
@ u32Value:
	.word	80
@ u32RegAddr:
	.word	-120844900
@ u8Lsb:
	.byte	31
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	256
@ u32Value:
	.word	1
@ u32RegAddr:
	.word	-120844900
@ u8Lsb:
	.byte	30
@ u8Msb:
	.byte	30
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	256
@ u32Value:
	.word	1
@ u32RegAddr:
	.word	-120844900
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	9
@ u8SourceMode:
	.byte	2
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	256
@ u32Value:
	.word	140
@ u32RegAddr:
	.word	-120844928
@ u8Lsb:
	.byte	29
@ u8Msb:
	.byte	30
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	256
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120844908
@ u8Lsb:
	.byte	31
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	256
@ u32Value:
	.word	1
@ u32RegAddr:
	.word	-120844908
@ u8Lsb:
	.byte	30
@ u8Msb:
	.byte	30
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	256
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120844908
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	11
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	256
@ u32Value:
	.word	128
@ u32RegAddr:
	.word	-120844904
@ u8Lsb:
	.byte	28
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	256
@ u32Value:
	.word	4
@ u32RegAddr:
	.word	-120844904
@ u8Lsb:
	.byte	16
@ u8Msb:
	.byte	25
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	256
@ u32Value:
	.word	80
@ u32RegAddr:
	.word	-120844924
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	5
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	256
@ u32Value:
	.word	14
@ u32RegAddr:
	.word	-120844920
@ u8Lsb:
	.byte	24
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	256
@ u32Value:
	.word	4
@ u32RegAddr:
	.word	-120844920
@ u8Lsb:
	.byte	12
@ u8Msb:
	.byte	22
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	256
@ u32Value:
	.word	16
@ u32RegAddr:
	.word	-120844920
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	10
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	256
@ u32Value:
	.word	-48
@ u32RegAddr:
	.word	-120844916
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	256
@ u32Value:
	.word	8
@ u32RegAddr:
	.word	-120844912
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	11
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	256
@ u32Value:
	.word	0
@ u32RegAddr:
	.word	-120844904
@ u8Lsb:
	.byte	8
@ u8Msb:
	.byte	15
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	256
@ u32Value:
	.word	80
@ u32RegAddr:
	.word	-120844904
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	7
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	256
@ u32Value:
	.word	80
@ u32RegAddr:
	.word	-120844900
@ u8Lsb:
	.byte	31
@ u8Msb:
	.byte	31
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	256
@ u32Value:
	.word	1
@ u32RegAddr:
	.word	-120844900
@ u8Lsb:
	.byte	30
@ u8Msb:
	.byte	30
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	256
@ u32Value:
	.word	1
@ u32RegAddr:
	.word	-120844900
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	9
@ u8SourceMode:
	.byte	3
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	256
@ u32Value:
	.word	140
@ u32RegAddr:
	.word	-131071
@ u8Lsb:
	.byte	0
@ u8Msb:
	.byte	1
@ u8SourceMode:
	.byte	0
@ u8OutputMode:
	.byte	0
@ u32Module:
	.word	0
@ u32Value:
	.word	0
	.data
	.align	2
.LANCHOR2 = . + 0
	.type	sg_u32PhyListNum, %object
	.size	sg_u32PhyListNum, 4
sg_u32PhyListNum:
	.word	2048
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"pointer is NULL!\012\000"
	.space	2
.LC1:
	.ascii	"Error! not find Phy Register List[Address:0x%x, Bit"
	.ascii	":%d~%d],SourceMode:[%d], OutputMode:[%d]\012\000"
	.space	3
.LC2:
	.ascii	"\012\000"
	.space	2
.LC3:
	.ascii	"List\011\000"
	.space	2
.LC4:
	.ascii	"Addr\011\011\000"
	.space	1
.LC5:
	.ascii	"Lsb\011\000"
	.space	3
.LC6:
	.ascii	"Msb\011\000"
	.space	3
.LC7:
	.ascii	"SourceMode\011\000"
.LC8:
	.ascii	"OutputMode\011\000"
.LC9:
	.ascii	"Module\011\000"
.LC10:
	.ascii	"Value\011\000"
	.space	1
.LC11:
	.ascii	"[%d]\011\000"
	.space	2
.LC12:
	.ascii	"0x%x\011\000"
	.space	2
.LC13:
	.ascii	"%d\011\000"
.LC14:
	.ascii	"%d\011\011\000"
	.space	3
.LC15:
	.ascii	"InitPhyList,Load Addr:0x%x, SourceMode:%d, OutputMo"
	.ascii	"de:%d, Module:%d\012\000"
	.space	3
.LC16:
	.ascii	"PQ_HAL_CheckVdpValid false\012\000"
.LC17:
	.ascii	"Warning! not find Register[Address:0x%x, Bit:%d~%d]"
	.ascii	",SourceMode:[%d],OutputMode:[%d]\012\000"
	.space	3
.LC18:
	.ascii	"Current Source Mode:[%d], Set Source Mode:[%d],Not "
	.ascii	"Set Physical Reg\012\000"
	.space	3
.LC19:
	.ascii	"Current Output Mode:[%d], Set Output Mode:[%d],Not "
	.ascii	"Set Physical Reg\012\000"
	.space	3
.LC20:
	.ascii	"not VPSS/VDP/Special Register!\012\000"
.LC21:
	.ascii	"LoadPhyList,Load Addr:0x%x, SourceMode:%d, OutputMo"
	.ascii	"de:%d, Module:%d\012\000"
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	sg_bPqTableInitial, %object
	.size	sg_bPqTableInitial, 4
sg_bPqTableInitial:
	.space	4
	.type	sg_pstPhyReg, %object
	.size	sg_pstPhyReg, 4
sg_pstPhyReg:
	.space	4
	.type	u32ArrayNum.24483, %object
	.size	u32ArrayNum.24483, 4
u32ArrayNum.24483:
	.space	4
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
