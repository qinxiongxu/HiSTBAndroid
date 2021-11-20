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
	.file	"pq_mng_dei.c"
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
@ -DKBUILD_BASENAME=KBUILD_STR(pq_mng_dei)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_pq) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD drivers/msp/pq/pq_v3_0/mng/.pq_mng_dei.o.d
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/drivers/msp/pq/pq_v3_0/mng/pq_mng_dei.c
@ -mlittle-endian -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -marm -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/pq/pq_v3_0/mng/pq_mng_dei.o -O2 -Wall -Wundef
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
	.global	PQ_MNG_DeInitDei
	.type	PQ_MNG_DeInitDei, %function
PQ_MNG_DeInitDei:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp134,
	movt	r3, #:upper16:.LANCHOR0	@ tmp134,
	mov	r0, #0	@,
	ldr	r2, [r3, #0]	@ sg_bDeiInitFlag, sg_bDeiInitFlag
	cmp	r2, #0	@ sg_bDeiInitFlag,
	movne	r2, #0	@ tmp137,
	strne	r2, [r3, #0]	@ tmp137, sg_bDeiInitFlag
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	PQ_MNG_DeInitDei, .-PQ_MNG_DeInitDei
	.align	2
	.global	PQ_MNG_GetGlobMotiGain
	.type	PQ_MNG_GetGlobMotiGain, %function
PQ_MNG_GetGlobMotiGain:
	.fnstart
.LFB673:
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
	movw	r1, #:lower16:.LANCHOR1	@ tmp135,
	movt	r1, #:upper16:.LANCHOR1	@ tmp135,
	ldr	r3, [r1, #0]	@ sg_u32gain, sg_u32gain
	str	r3, [r0, #0]	@ sg_u32gain,* pu32Gain
	mov	r0, #0	@,
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	PQ_MNG_GetGlobMotiGain, .-PQ_MNG_GetGlobMotiGain
	.align	2
	.global	PQ_MNG_SetVpssMktCoordinate
	.type	PQ_MNG_SetVpssMktCoordinate, %function
PQ_MNG_SetVpssMktCoordinate:
	.fnstart
.LFB672:
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
	mov	r4, r0	@ u32DbgPos, u32DbgPos
	mov	r0, #0	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	mvnne	r5, #0	@ s32Ret,
	beq	.L28	@,
	mov	r0, #1	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L29	@,
.L9:
	mov	r0, #2	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L30	@,
.L10:
	mov	r0, #3	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L31	@,
.L11:
	mov	r0, #4	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L32	@,
.L12:
	mov	r0, #5	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L33	@,
.L13:
	mov	r0, #6	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L34	@,
.L14:
	mov	r0, #7	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L35	@,
.L15:
	mov	r0, #8	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L36	@,
.L16:
	mov	r0, #9	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L37	@,
.L17:
	mov	r0, #10	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L38	@,
.L18:
	mov	r0, #11	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L39	@,
.L19:
	mov	r0, #12	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L40	@,
.L20:
	mov	r0, #13	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L41	@,
.L21:
	mov	r0, #14	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L42	@,
.L22:
	mov	r0, #15	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L43	@,
.L23:
	cmp	r5, #0	@ s32Ret,
	moveq	r0, r5	@,, s32Ret
	mvnne	r0, #0	@,,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L28:
	mov	r1, r4	@, u32DbgPos
	mov	r0, #0	@,
	bl	PQ_HAL_SetVpssMktCoordinate	@
	mov	r5, r0	@ s32Ret,
	mov	r0, #1	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	bne	.L9	@,
.L29:
	mov	r1, r4	@, u32DbgPos
	bl	PQ_HAL_SetVpssMktCoordinate	@
	mov	r5, r0	@ s32Ret,
	mov	r0, #2	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	bne	.L10	@,
.L30:
	mov	r1, r4	@, u32DbgPos
	mov	r0, #2	@,
	bl	PQ_HAL_SetVpssMktCoordinate	@
	mov	r5, r0	@ s32Ret,
	mov	r0, #3	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	bne	.L11	@,
.L31:
	mov	r1, r4	@, u32DbgPos
	mov	r0, #3	@,
	bl	PQ_HAL_SetVpssMktCoordinate	@
	mov	r5, r0	@ s32Ret,
	mov	r0, #4	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	bne	.L12	@,
.L32:
	mov	r1, r4	@, u32DbgPos
	mov	r0, #4	@,
	bl	PQ_HAL_SetVpssMktCoordinate	@
	mov	r5, r0	@ s32Ret,
	mov	r0, #5	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	bne	.L13	@,
.L33:
	mov	r1, r4	@, u32DbgPos
	mov	r0, #5	@,
	bl	PQ_HAL_SetVpssMktCoordinate	@
	mov	r5, r0	@ s32Ret,
	mov	r0, #6	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	bne	.L14	@,
.L34:
	mov	r1, r4	@, u32DbgPos
	mov	r0, #6	@,
	bl	PQ_HAL_SetVpssMktCoordinate	@
	mov	r5, r0	@ s32Ret,
	mov	r0, #7	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	bne	.L15	@,
.L35:
	mov	r1, r4	@, u32DbgPos
	mov	r0, #7	@,
	bl	PQ_HAL_SetVpssMktCoordinate	@
	mov	r5, r0	@ s32Ret,
	mov	r0, #8	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	bne	.L16	@,
.L36:
	mov	r1, r4	@, u32DbgPos
	mov	r0, #8	@,
	bl	PQ_HAL_SetVpssMktCoordinate	@
	mov	r5, r0	@ s32Ret,
	mov	r0, #9	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	bne	.L17	@,
.L37:
	mov	r1, r4	@, u32DbgPos
	mov	r0, #9	@,
	bl	PQ_HAL_SetVpssMktCoordinate	@
	mov	r5, r0	@ s32Ret,
	mov	r0, #10	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	bne	.L18	@,
.L38:
	mov	r1, r4	@, u32DbgPos
	mov	r0, #10	@,
	bl	PQ_HAL_SetVpssMktCoordinate	@
	mov	r5, r0	@ s32Ret,
	mov	r0, #11	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	bne	.L19	@,
.L39:
	mov	r1, r4	@, u32DbgPos
	mov	r0, #11	@,
	bl	PQ_HAL_SetVpssMktCoordinate	@
	mov	r5, r0	@ s32Ret,
	mov	r0, #12	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	bne	.L20	@,
.L40:
	mov	r1, r4	@, u32DbgPos
	mov	r0, #12	@,
	bl	PQ_HAL_SetVpssMktCoordinate	@
	mov	r5, r0	@ s32Ret,
	mov	r0, #13	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	bne	.L21	@,
.L41:
	mov	r1, r4	@, u32DbgPos
	mov	r0, #13	@,
	bl	PQ_HAL_SetVpssMktCoordinate	@
	mov	r5, r0	@ s32Ret,
	mov	r0, #14	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	bne	.L22	@,
.L42:
	mov	r1, r4	@, u32DbgPos
	mov	r0, #14	@,
	bl	PQ_HAL_SetVpssMktCoordinate	@
	mov	r5, r0	@ s32Ret,
	mov	r0, #15	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	bne	.L23	@,
.L43:
	mov	r1, r4	@, u32DbgPos
	mov	r0, #15	@,
	bl	PQ_HAL_SetVpssMktCoordinate	@
	mov	r5, r0	@ s32Ret,
	cmp	r5, #0	@ s32Ret,
	moveq	r0, r5	@,, s32Ret
	mvnne	r0, #0	@,,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	PQ_MNG_SetVpssMktCoordinate, .-PQ_MNG_SetVpssMktCoordinate
	.align	2
	.global	PQ_MNG_GetDeiDemoMode
	.type	PQ_MNG_GetDeiDemoMode, %function
PQ_MNG_GetDeiDemoMode:
	.fnstart
.LFB671:
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
	subs	r4, r0, #0	@ penMode, penMode
	beq	.L49	@,
	mov	r0, #0	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L47	@,
	mov	r0, #1	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L47	@,
	mov	r0, #2	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L47	@,
	mov	r0, #3	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L47	@,
	mov	r0, #4	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L47	@,
	mov	r0, #5	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L47	@,
	mov	r0, #6	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L47	@,
	mov	r0, #7	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L47	@,
	mov	r0, #8	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L47	@,
	mov	r0, #9	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L47	@,
	mov	r0, #10	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L47	@,
	mov	r0, #11	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L47	@,
	mov	r0, #12	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L47	@,
	mov	r0, #13	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L47	@,
	mov	r0, #14	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L47	@,
	mov	r0, #15	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L47	@,
	mov	r0, #1	@,
	mov	r1, #41	@,
	movw	r2, #:lower16:.LANCHOR2	@,
	movw	r3, #354	@,
	movt	r2, #:upper16:.LANCHOR2	@,
	movw	lr, #:lower16:.LC1	@ tmp156,
	movt	lr, #:upper16:.LC1	@ tmp156,
	str	lr, [sp, #0]	@ tmp156,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.23996,
.L46:
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
.L47:
	movw	r1, #:lower16:.LANCHOR0	@ tmp157,
	movt	r1, #:upper16:.LANCHOR0	@ tmp157,
	mov	r0, #0	@ D.23996,
	ldr	r3, [r1, #4]	@ sg_enMode, sg_enMode
	str	r3, [r4, #0]	@ sg_enMode,* penMode
	b	.L46	@
.L49:
	add	r0, r0, #1	@,,
	mov	r1, #41	@,
	movw	r2, #:lower16:.LANCHOR2	@,
	movw	r3, #342	@,
	movt	r2, #:upper16:.LANCHOR2	@,
	movw	ip, #:lower16:.LC0	@ tmp154,
	movt	ip, #:upper16:.LC0	@ tmp154,
	str	ip, [sp, #0]	@ tmp154,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.23996,
	b	.L46	@
	.fnend
	.size	PQ_MNG_GetDeiDemoMode, .-PQ_MNG_GetDeiDemoMode
	.align	2
	.global	PQ_MNG_SetDeiDemoMode
	.type	PQ_MNG_SetDeiDemoMode, %function
PQ_MNG_SetDeiDemoMode:
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
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r4, r0	@ enMode, enMode
	mov	r0, #0	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	mvnne	r5, #0	@ s32Ret,
	beq	.L71	@,
	mov	r0, #1	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L72	@,
.L53:
	mov	r0, #2	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L73	@,
.L54:
	mov	r0, #3	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L74	@,
.L55:
	mov	r0, #4	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L75	@,
.L56:
	mov	r0, #5	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L76	@,
.L57:
	mov	r0, #6	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L77	@,
.L58:
	mov	r0, #7	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L78	@,
.L59:
	mov	r0, #8	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L79	@,
.L60:
	mov	r0, #9	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L80	@,
.L61:
	mov	r0, #10	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L81	@,
.L62:
	mov	r0, #11	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L82	@,
.L63:
	mov	r0, #12	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L83	@,
.L64:
	mov	r0, #13	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L84	@,
.L65:
	mov	r0, #14	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L85	@,
.L66:
	mov	r0, #15	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L86	@,
.L67:
	cmp	r5, #0	@ s32Ret,
	movweq	r3, #:lower16:.LANCHOR0	@ tmp153,
	movteq	r3, #:upper16:.LANCHOR0	@ tmp153,
	mvnne	r0, #0	@ D.23984,
	moveq	r0, r5	@ D.23984, s32Ret
	streq	r4, [r3, #4]	@ enMode, sg_enMode
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L71:
	mov	r1, r4	@, enMode
	mov	r0, #0	@,
	bl	PQ_HAL_SetDeiDemoMode	@
	mov	r5, r0	@ s32Ret,
	mov	r0, #1	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	bne	.L53	@,
.L72:
	mov	r1, r4	@, enMode
	bl	PQ_HAL_SetDeiDemoMode	@
	mov	r5, r0	@ s32Ret,
	mov	r0, #2	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	bne	.L54	@,
.L73:
	mov	r1, r4	@, enMode
	mov	r0, #2	@,
	bl	PQ_HAL_SetDeiDemoMode	@
	mov	r5, r0	@ s32Ret,
	mov	r0, #3	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	bne	.L55	@,
.L74:
	mov	r1, r4	@, enMode
	mov	r0, #3	@,
	bl	PQ_HAL_SetDeiDemoMode	@
	mov	r5, r0	@ s32Ret,
	mov	r0, #4	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	bne	.L56	@,
.L75:
	mov	r1, r4	@, enMode
	mov	r0, #4	@,
	bl	PQ_HAL_SetDeiDemoMode	@
	mov	r5, r0	@ s32Ret,
	mov	r0, #5	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	bne	.L57	@,
.L76:
	mov	r1, r4	@, enMode
	mov	r0, #5	@,
	bl	PQ_HAL_SetDeiDemoMode	@
	mov	r5, r0	@ s32Ret,
	mov	r0, #6	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	bne	.L58	@,
.L77:
	mov	r1, r4	@, enMode
	mov	r0, #6	@,
	bl	PQ_HAL_SetDeiDemoMode	@
	mov	r5, r0	@ s32Ret,
	mov	r0, #7	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	bne	.L59	@,
.L78:
	mov	r1, r4	@, enMode
	mov	r0, #7	@,
	bl	PQ_HAL_SetDeiDemoMode	@
	mov	r5, r0	@ s32Ret,
	mov	r0, #8	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	bne	.L60	@,
.L79:
	mov	r1, r4	@, enMode
	mov	r0, #8	@,
	bl	PQ_HAL_SetDeiDemoMode	@
	mov	r5, r0	@ s32Ret,
	mov	r0, #9	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	bne	.L61	@,
.L80:
	mov	r1, r4	@, enMode
	mov	r0, #9	@,
	bl	PQ_HAL_SetDeiDemoMode	@
	mov	r5, r0	@ s32Ret,
	mov	r0, #10	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	bne	.L62	@,
.L81:
	mov	r1, r4	@, enMode
	mov	r0, #10	@,
	bl	PQ_HAL_SetDeiDemoMode	@
	mov	r5, r0	@ s32Ret,
	mov	r0, #11	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	bne	.L63	@,
.L82:
	mov	r1, r4	@, enMode
	mov	r0, #11	@,
	bl	PQ_HAL_SetDeiDemoMode	@
	mov	r5, r0	@ s32Ret,
	mov	r0, #12	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	bne	.L64	@,
.L83:
	mov	r1, r4	@, enMode
	mov	r0, #12	@,
	bl	PQ_HAL_SetDeiDemoMode	@
	mov	r5, r0	@ s32Ret,
	mov	r0, #13	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	bne	.L65	@,
.L84:
	mov	r1, r4	@, enMode
	mov	r0, #13	@,
	bl	PQ_HAL_SetDeiDemoMode	@
	mov	r5, r0	@ s32Ret,
	mov	r0, #14	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	bne	.L66	@,
.L85:
	mov	r1, r4	@, enMode
	mov	r0, #14	@,
	bl	PQ_HAL_SetDeiDemoMode	@
	mov	r5, r0	@ s32Ret,
	mov	r0, #15	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	bne	.L67	@,
.L86:
	mov	r0, #15	@,
	mov	r1, r4	@, enMode
	bl	PQ_HAL_SetDeiDemoMode	@
	mov	r5, r0	@ s32Ret,
	b	.L67	@
	.fnend
	.size	PQ_MNG_SetDeiDemoMode, .-PQ_MNG_SetDeiDemoMode
	.align	2
	.global	PQ_MNG_EnableDeiDemo
	.type	PQ_MNG_EnableDeiDemo, %function
PQ_MNG_EnableDeiDemo:
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
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r4, r0	@ bOnOff, bOnOff
	mov	r0, #0	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	mvnne	r5, #0	@ s32Ret,
	beq	.L108	@,
	mov	r0, #1	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L109	@,
.L90:
	mov	r0, #2	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L110	@,
.L91:
	mov	r0, #3	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L111	@,
.L92:
	mov	r0, #4	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L112	@,
.L93:
	mov	r0, #5	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L113	@,
.L94:
	mov	r0, #6	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L114	@,
.L95:
	mov	r0, #7	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L115	@,
.L96:
	mov	r0, #8	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L116	@,
.L97:
	mov	r0, #9	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L117	@,
.L98:
	mov	r0, #10	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L118	@,
.L99:
	mov	r0, #11	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L119	@,
.L100:
	mov	r0, #12	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L120	@,
.L101:
	mov	r0, #13	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L121	@,
.L102:
	mov	r0, #14	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L122	@,
.L103:
	mov	r0, #15	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	beq	.L123	@,
.L104:
	cmp	r5, #0	@ s32Ret,
	moveq	r0, r5	@,, s32Ret
	mvnne	r0, #0	@,,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L108:
	mov	r1, r4	@, bOnOff
	mov	r0, #0	@,
	bl	PQ_HAL_EnableDeiDemo	@
	mov	r5, r0	@ s32Ret,
	mov	r0, #1	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	bne	.L90	@,
.L109:
	mov	r1, r4	@, bOnOff
	bl	PQ_HAL_EnableDeiDemo	@
	mov	r5, r0	@ s32Ret,
	mov	r0, #2	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	bne	.L91	@,
.L110:
	mov	r1, r4	@, bOnOff
	mov	r0, #2	@,
	bl	PQ_HAL_EnableDeiDemo	@
	mov	r5, r0	@ s32Ret,
	mov	r0, #3	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	bne	.L92	@,
.L111:
	mov	r1, r4	@, bOnOff
	mov	r0, #3	@,
	bl	PQ_HAL_EnableDeiDemo	@
	mov	r5, r0	@ s32Ret,
	mov	r0, #4	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	bne	.L93	@,
.L112:
	mov	r1, r4	@, bOnOff
	mov	r0, #4	@,
	bl	PQ_HAL_EnableDeiDemo	@
	mov	r5, r0	@ s32Ret,
	mov	r0, #5	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	bne	.L94	@,
.L113:
	mov	r1, r4	@, bOnOff
	mov	r0, #5	@,
	bl	PQ_HAL_EnableDeiDemo	@
	mov	r5, r0	@ s32Ret,
	mov	r0, #6	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	bne	.L95	@,
.L114:
	mov	r1, r4	@, bOnOff
	mov	r0, #6	@,
	bl	PQ_HAL_EnableDeiDemo	@
	mov	r5, r0	@ s32Ret,
	mov	r0, #7	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	bne	.L96	@,
.L115:
	mov	r1, r4	@, bOnOff
	mov	r0, #7	@,
	bl	PQ_HAL_EnableDeiDemo	@
	mov	r5, r0	@ s32Ret,
	mov	r0, #8	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	bne	.L97	@,
.L116:
	mov	r1, r4	@, bOnOff
	mov	r0, #8	@,
	bl	PQ_HAL_EnableDeiDemo	@
	mov	r5, r0	@ s32Ret,
	mov	r0, #9	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	bne	.L98	@,
.L117:
	mov	r1, r4	@, bOnOff
	mov	r0, #9	@,
	bl	PQ_HAL_EnableDeiDemo	@
	mov	r5, r0	@ s32Ret,
	mov	r0, #10	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	bne	.L99	@,
.L118:
	mov	r1, r4	@, bOnOff
	mov	r0, #10	@,
	bl	PQ_HAL_EnableDeiDemo	@
	mov	r5, r0	@ s32Ret,
	mov	r0, #11	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	bne	.L100	@,
.L119:
	mov	r1, r4	@, bOnOff
	mov	r0, #11	@,
	bl	PQ_HAL_EnableDeiDemo	@
	mov	r5, r0	@ s32Ret,
	mov	r0, #12	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	bne	.L101	@,
.L120:
	mov	r1, r4	@, bOnOff
	mov	r0, #12	@,
	bl	PQ_HAL_EnableDeiDemo	@
	mov	r5, r0	@ s32Ret,
	mov	r0, #13	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	bne	.L102	@,
.L121:
	mov	r1, r4	@, bOnOff
	mov	r0, #13	@,
	bl	PQ_HAL_EnableDeiDemo	@
	mov	r5, r0	@ s32Ret,
	mov	r0, #14	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	bne	.L103	@,
.L122:
	mov	r1, r4	@, bOnOff
	mov	r0, #14	@,
	bl	PQ_HAL_EnableDeiDemo	@
	mov	r5, r0	@ s32Ret,
	mov	r0, #15	@,
	bl	PQ_HAL_CheckVpssValid	@
	cmp	r0, #1	@,
	bne	.L104	@,
.L123:
	mov	r1, r4	@, bOnOff
	mov	r0, #15	@,
	bl	PQ_HAL_EnableDeiDemo	@
	mov	r5, r0	@ s32Ret,
	cmp	r5, #0	@ s32Ret,
	moveq	r0, r5	@,, s32Ret
	mvnne	r0, #0	@,,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	PQ_MNG_EnableDeiDemo, .-PQ_MNG_EnableDeiDemo
	.align	2
	.global	PQ_MNG_InitDei
	.type	PQ_MNG_InitDei, %function
PQ_MNG_InitDei:
	.fnstart
.LFB667:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp137,
	movt	r4, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r4, #0]	@ sg_bDeiInitFlag, sg_bDeiInitFlag
	cmp	r3, #1	@ sg_bDeiInitFlag,
	moveq	r0, #0	@ D.23941,
	beq	.L126	@,
	mov	r1, #1	@,
	mov	r0, #0	@,
	bl	PQ_HAL_SetInterlaceMotionEn	@
	subs	r1, r0, #0	@ s32Ret,
	bne	.L130	@,
	mov	r2, r1	@,
	mov	r3, r1	@,
	mov	r5, #1	@ tmp142,
	str	r5, [sp, #0]	@ tmp142,
	bl	PQ_MNG_InitPhyList	@
	cmp	r0, #0	@ s32Ret.442
	streq	r5, [r4, #0]	@ tmp142, sg_bDeiInitFlag
	bne	.L131	@,
.L126:
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L130:
	mov	r0, #1	@,
	mov	r1, #41	@,
	ldr	r2, .L132	@,
	mov	r3, #264	@,
	movw	ip, #:lower16:.LC2	@ tmp141,
	movt	ip, #:upper16:.LC2	@ tmp141,
	str	ip, [sp, #0]	@ tmp141,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.23941,
	b	.L126	@
.L131:
	mov	r0, r5	@, tmp142
	mov	r1, #41	@,
	ldr	r2, .L132	@,
	movw	r3, #271	@,
	movw	lr, #:lower16:.LC3	@ tmp145,
	movt	lr, #:upper16:.LC3	@ tmp145,
	str	lr, [sp, #0]	@ tmp145,
	bl	HI_LogOut	@
	mvn	r0, #0	@ D.23941,
	b	.L126	@
.L133:
	.align	2
.L132:
	.word	.LANCHOR2+24
	.fnend
	.size	PQ_MNG_InitDei, .-PQ_MNG_InitDei
	.align	2
	.global	PQ_MNG_GetGlobalMotion
	.type	PQ_MNG_GetGlobalMotion, %function
PQ_MNG_GetGlobalMotion:
	.fnstart
.LFB666:
	@ args = 0, pretend = 0, frame = 200
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #212
	sub	sp, sp, #212	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	mov	r4, r0	@ pstMotionInput, pstMotionInput
	mov	r0, #1	@ movhi	@,
	strh	r0, [fp, #-64]	@ movhi	@, stMotionHist.GLOBAL_MOTION_EN
	ldr	r0, [r4, #8]	@, <variable>.u32HandleNo
	mov	r1, #255	@ movhi	@,
	mov	lr, #0	@ movhi	@,
	mov	r2, #192	@ movhi	@,
	strh	r1, [fp, #-58]	@ movhi	@, stMotionHist.GLOBAL_MOTION_THD
	mov	r3, #3	@ movhi	@,
	strh	r2, [fp, #-60]	@ movhi	@, stMotionHist.GLOBAL_MOTION_THD
	mov	ip, #128	@ movhi	@,
	mov	r2, #32	@ movhi	@,
	strh	r1, [fp, #-56]	@ movhi	@, stMotionHist.GLOBAL_MOTION_THD
	strh	r1, [fp, #-54]	@ movhi	@, stMotionHist.GLOBAL_MOTION_THD
	strh	r1, [fp, #-52]	@ movhi	@, stMotionHist.GLOBAL_MOTION_THD
	mov	r1, #98	@ movhi	@,
	strh	r3, [fp, #-40]	@ movhi	@, stMotionHist.GLOBAL_MOTION_SLOPE
	mov	r3, #16	@ tmp147,
	strh	lr, [fp, #-38]	@ movhi	@, stMotionHist.GLOBAL_MOTION_SLOPE
	strh	lr, [fp, #-36]	@ movhi	@, stMotionHist.GLOBAL_MOTION_SLOPE
	strh	lr, [fp, #-34]	@ movhi	@, stMotionHist.GLOBAL_MOTION_SLOPE
	strh	ip, [fp, #-32]	@ movhi	@, stMotionHist.MAX_GLOBAL_MOTION_RATIO
	strh	r2, [fp, #-30]	@ movhi	@, stMotionHist.MIN_GLOBAL_MOTION_RATIO
	strh	r2, [fp, #-50]	@ movhi	@, stMotionHist.GLOBAL_MOTION_RATIO
	strh	r1, [fp, #-48]	@ movhi	@, stMotionHist.GLOBAL_MOTION_RATIO
	strh	r1, [fp, #-46]	@ movhi	@, stMotionHist.GLOBAL_MOTION_RATIO
	strh	r1, [fp, #-44]	@ movhi	@, stMotionHist.GLOBAL_MOTION_RATIO
	strh	r1, [fp, #-42]	@ movhi	@, stMotionHist.GLOBAL_MOTION_RATIO
	strh	r3, [fp, #-62]	@ movhi	@ tmp147, stMotionHist.GLOBAL_MOTION_THD
	str	r3, [fp, #-224]	@ tmp147, stMotionHist.SMALL_MOTION_THD
	str	r3, [fp, #-220]	@ tmp147, stMotionHist.LARGE_MOTION_THD
	bl	PQ_HAL_GetInterlaceMotionEn	@
	cmp	r0, #0	@,
	bne	.L135	@,
	mov	r1, #64	@,
	ldr	r0, [r4, #8]	@, <variable>.u32HandleNo
	bl	PQ_HAL_SetDeiAdjustGain	@
	ldr	r0, [r4, #8]	@, <variable>.u32HandleNo
	mov	r1, #1	@,
	bl	PQ_HAL_SetInterlaceMotionEn	@
	cmp	r0, #0	@,
	bne	.L147	@,
.L136:
	mov	r0, #0	@,
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L135:
	sub	r6, fp, #224	@ tmp191,,
	mov	r0, r4	@, pstMotionInput
	mov	r1, r6	@, tmp191
	bl	PQ_HAL_GetMotionHistReg	@
	ldrh	r3, [fp, #-64]	@ stMotionHist.GLOBAL_MOTION_EN, stMotionHist.GLOBAL_MOTION_EN
	cmp	r3, #0	@ stMotionHist.GLOBAL_MOTION_EN,
	bne	.L137	@,
	movw	lr, #:lower16:.LANCHOR1	@ tmp193,
	movt	lr, #:upper16:.LANCHOR1	@ tmp193,
	ldr	r5, [lr, #0]	@ gain, sg_u32gain
.L138:
	mov	r1, r5	@, gain
	ldr	r0, [r4, #8]	@, <variable>.u32HandleNo
	bl	PQ_HAL_SetDeiAdjustGain	@
	mov	r3, r5	@, gain
	movw	r1, #:lower16:.LC4	@,
	ldr	r2, .L149	@,
	movt	r1, #:upper16:.LC4	@,
	mov	r0, #256	@,
	bl	PQ_HAL_PrintMsg	@
	b	.L136	@
.L137:
	ldrh	r3, [fp, #-62]	@ D.24177, stMotionHist.GLOBAL_MOTION_THD
	ldrh	r1, [fp, #-32]	@ D.24239, stMotionHist.MAX_GLOBAL_MOTION_RATIO
	cmp	r3, #254	@ D.24177,
	ldrh	r2, [fp, #-30]	@ D.24238, stMotionHist.MIN_GLOBAL_MOTION_RATIO
	ldrhih	r5, [fp, #-50]	@ DataOut, stMotionHist.GLOBAL_MOTION_RATIO
	bhi	.L140	@,
	ldrh	r0, [fp, #-60]	@ D.24180, stMotionHist.GLOBAL_MOTION_THD
	add	ip, r6, #184	@ D.24240, tmp191,
	cmp	r0, #254	@ D.24180,
	bhi	.L148	@,
	ldrh	lr, [fp, #-58]	@ D.24191, stMotionHist.GLOBAL_MOTION_THD
	cmp	lr, #254	@ D.24191,
	bls	.L142	@,
	ldrh	r3, [ip, #2]	@ tmp202,
	rsb	r0, r0, #255	@ tmp201, D.24180,
	ldrh	ip, [fp, #-48]	@ stMotionHist.GLOBAL_MOTION_RATIO, stMotionHist.GLOBAL_MOTION_RATIO
	mul	lr, r3, r0	@ tmp203, tmp202, tmp201
	add	r5, lr, #4	@ tmp204, tmp203,
	add	r5, ip, r5, asr #3	@, DataOut, stMotionHist.GLOBAL_MOTION_RATIO, tmp204,
.L140:
	movw	ip, #:lower16:.LANCHOR1	@ tmp221,
	movt	ip, #:upper16:.LANCHOR1	@ tmp221,
	cmp	r5, r1	@ DataOut, D.24239
	movge	r5, r1	@ D.24235, D.24239
	cmp	r5, r2	@ D.24235, D.24238
	movlt	r5, r2	@ gain, D.24238
	str	r5, [ip, #0]	@ gain, sg_u32gain
	b	.L138	@
.L147:
	mov	r0, #1	@,
	mov	r1, #41	@,
	ldr	r2, .L149+4	@,
	mov	r3, #49	@,
	movw	ip, #:lower16:.LC2	@ tmp190,
	movt	ip, #:upper16:.LC2	@ tmp190,
	str	ip, [sp, #0]	@ tmp190,
	bl	HI_LogOut	@
	b	.L136	@
.L148:
	ldrh	lr, [r6, #184]	@ tmp196,
	rsb	r3, r3, #255	@ tmp195, D.24177,
	ldrh	r0, [fp, #-50]	@ stMotionHist.GLOBAL_MOTION_RATIO, stMotionHist.GLOBAL_MOTION_RATIO
	mul	ip, lr, r3	@ tmp197, tmp196, tmp195
	add	r5, ip, #4	@ tmp198, tmp197,
	add	r5, r0, r5, asr #3	@, DataOut, stMotionHist.GLOBAL_MOTION_RATIO, tmp198,
	b	.L140	@
.L142:
	ldrh	r3, [fp, #-56]	@ D.24204, stMotionHist.GLOBAL_MOTION_THD
	cmp	r3, #254	@ D.24204,
	bls	.L143	@,
	ldrh	r0, [ip, #4]	@ tmp208,
	rsb	lr, lr, #255	@ tmp207, D.24191,
	ldrh	ip, [fp, #-46]	@ stMotionHist.GLOBAL_MOTION_RATIO, stMotionHist.GLOBAL_MOTION_RATIO
	mul	r3, r0, lr	@ tmp209, tmp208, tmp207
	add	r5, r3, #4	@ tmp210, tmp209,
	add	r5, ip, r5, asr #3	@, DataOut, stMotionHist.GLOBAL_MOTION_RATIO, tmp210,
	b	.L140	@
.L143:
	ldrh	r0, [fp, #-54]	@ stMotionHist.GLOBAL_MOTION_THD, stMotionHist.GLOBAL_MOTION_THD
	cmp	r0, #254	@ stMotionHist.GLOBAL_MOTION_THD,
	rsbhi	r3, r3, #255	@ tmp214, D.24204,
	ldrhih	r5, [ip, #6]	@ tmp215,
	ldrhih	r0, [fp, #-44]	@ stMotionHist.GLOBAL_MOTION_RATIO, stMotionHist.GLOBAL_MOTION_RATIO
	ldrlsh	r5, [fp, #-42]	@ DataOut, stMotionHist.GLOBAL_MOTION_RATIO
	mulhi	r5, r5, r3	@ tmp216, tmp215, tmp214
	addhi	r5, r5, #4	@ tmp217, tmp216,
	addhi	r5, r0, r5, asr #3	@, DataOut, stMotionHist.GLOBAL_MOTION_RATIO, tmp217,
	b	.L140	@
.L150:
	.align	2
.L149:
	.word	.LANCHOR2+68
	.word	.LANCHOR2+40
	.fnend
	.size	PQ_MNG_GetGlobalMotion, .-PQ_MNG_GetGlobalMotion
	.section	.rodata
	.align	2
.LANCHOR2 = . + 0
	.type	__func__.23990, %object
	.size	__func__.23990, 22
__func__.23990:
	.ascii	"PQ_MNG_GetDeiDemoMode\000"
	.space	2
	.type	__func__.23937, %object
	.size	__func__.23937, 15
__func__.23937:
	.ascii	"PQ_MNG_InitDei\000"
	.space	1
	.type	__func__.23719, %object
	.size	__func__.23719, 28
__func__.23719:
	.ascii	"PQ_MNG_SetInterlaceMotionEn\000"
	.type	__func__.23920, %object
	.size	__func__.23920, 23
__func__.23920:
	.ascii	"PQ_MNG_GetGlobalMotion\000"
	.data
	.align	2
.LANCHOR1 = . + 0
	.type	sg_u32gain, %object
	.size	sg_u32gain, 4
sg_u32gain:
	.word	64
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"pointer is NULL!\012\000"
	.space	2
.LC1:
	.ascii	"error in get tnr demo mode!\012\000"
	.space	3
.LC2:
	.ascii	"PQ_HAL_SetInterlaceMotionEn error\012\000"
	.space	1
.LC3:
	.ascii	"dei InitPhyList error\012\000"
	.space	1
.LC4:
	.ascii	"[%s]: GloGain:%d\012\000"
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	sg_bDeiInitFlag, %object
	.size	sg_bDeiInitFlag, 4
sg_bDeiInitFlag:
	.space	4
	.type	sg_enMode, %object
	.size	sg_enMode, 4
sg_enMode:
	.space	4
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
