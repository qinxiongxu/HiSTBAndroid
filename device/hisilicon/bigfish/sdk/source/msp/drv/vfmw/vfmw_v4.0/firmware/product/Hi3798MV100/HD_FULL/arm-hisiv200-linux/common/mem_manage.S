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
	.file	"mem_manage.c"
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
@ -DKBUILD_BASENAME=KBUILD_STR(mem_manage)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD drivers/msp/vfmw/vfmw_v4.0/firmware/common/.mem_manage.o.d
@ /home/tangxiaodi/HiSTBAndroidV5/images_and_tools/release/hi3798mv100/verify/maintain_spc062/HiSTBAndroidV5_release/HiSTBAndroidV600R001C00SPC064/device/hisilicon/bigfish/sdk/source/kernel/linux-3.10.y/drivers/msp/vfmw/vfmw_v4.0/firmware/common/mem_manage.c
@ -mlittle-endian -mapcs -mno-sched-prolog -mabi=aapcs-linux
@ -mno-thumb-interwork -marm -march=armv7-a -msoft-float -auxbase-strip
@ drivers/msp/vfmw/vfmw_v4.0/firmware/common/mem_manage.o -O2 -Wall -Wundef
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
	.global	MEM_ManagerWithOperation
	.type	MEM_ManagerWithOperation, %function
MEM_ManagerWithOperation:
	.fnstart
.LFB1525:
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
	ldr	r1, [r0, #8]	@ <variable>.mem_malloc, <variable>.mem_malloc
	movw	r3, #:lower16:.LANCHOR0	@ tmp134,
	movt	r3, #:upper16:.LANCHOR0	@ tmp134,
	str	r1, [r3, #0]	@ <variable>.mem_malloc, mem_malloc
	ldr	r2, [r0, #12]	@ <variable>.mem_free, <variable>.mem_free
	str	r2, [r3, #4]	@ <variable>.mem_free, mem_free
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	MEM_ManagerWithOperation, .-MEM_ManagerWithOperation
	.align	2
	.global	MEM_ManagerClearOperation
	.type	MEM_ManagerClearOperation, %function
MEM_ManagerClearOperation:
	.fnstart
.LFB1526:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp133,
	movt	r3, #:upper16:.LANCHOR0	@ tmp133,
	mov	r2, #0	@ tmp134,
	str	r2, [r3, #4]	@ tmp134, mem_free
	str	r2, [r3, #0]	@ tmp134, mem_malloc
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	MEM_ManagerClearOperation, .-MEM_ManagerClearOperation
	.align	2
	.global	MEM_Phy2Vir
	.type	MEM_Phy2Vir, %function
MEM_Phy2Vir:
	.fnstart
.LFB1529:
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
	movw	r2, #:lower16:.LANCHOR0	@ tmp184,
	movt	r2, #:upper16:.LANCHOR0	@ tmp184,
	mov	r1, #0	@ i,
	add	r3, r2, #8	@ ivtmp.540, tmp184,
	b	.L8	@
.L6:
	ldr	r4, [ip, #12]	@ D.30331, <variable>.Length
	add	r1, r1, #1	@ i, i,
	cmp	r4, #0	@ D.30331,
	mov	r5, r1	@ tmp185, i
	beq	.L11	@,
	ldr	r3, [ip, #8]	@ D.30334, <variable>.PhyAddr
	cmp	r3, r0	@ D.30334, PhyAddr
	add	r4, r3, r4	@ tmp189, D.30334, D.30331
	bgt	.L11	@,
	cmp	r0, r4	@ PhyAddr, tmp189
	blt	.L14	@,
.L11:
	add	r1, r5, #1	@ i, tmp185,
	add	r3, ip, #16	@ ivtmp.540, tmp186,
	cmp	r1, #512	@ i,
	beq	.L17	@,
.L8:
	ldr	r4, [r3, #12]	@ D.30331, <variable>.Length
	add	ip, r3, #16	@ tmp186, ivtmp.540,
	cmp	r4, #0	@ D.30331,
	beq	.L6	@,
	ldr	r3, [r3, #8]	@ D.30334, <variable>.PhyAddr
	cmp	r3, r0	@ D.30334, PhyAddr
	add	r4, r3, r4	@ tmp175, D.30334, D.30331
	bgt	.L6	@,
	cmp	r0, r4	@ PhyAddr, tmp175
	bge	.L6	@,
.L14:
	add	ip, r2, r1, asl #4	@, tmp179, tmp184, i,
	rsb	r0, r3, r0	@ tmp181, D.30334, PhyAddr
	ldr	r2, [ip, #12]	@ <variable>.VirAddr, <variable>.VirAddr
	add	r0, r0, r2	@ VirAddr, tmp181, <variable>.VirAddr
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L17:
	mov	r0, #0	@ VirAddr,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	MEM_Phy2Vir, .-MEM_Phy2Vir
	.align	2
	.global	MEM_Vir2Phy
	.type	MEM_Vir2Phy, %function
MEM_Vir2Phy:
	.fnstart
.LFB1530:
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
	movw	r2, #:lower16:.LANCHOR0	@ tmp153,
	movt	r2, #:upper16:.LANCHOR0	@ tmp153,
	mov	r1, #0	@ i,
	add	r3, r2, #20	@ ivtmp.571, tmp153,
	b	.L21	@
.L19:
	ldr	r3, [r3, #16]	@ D.30354, <variable>.Length
	add	r1, r1, #1	@ i, i,
	cmp	r3, #0	@ D.30354,
	mov	r4, r1	@ tmp154, i
	beq	.L24	@,
	ldr	ip, [r5, #-8]	@ D.30357, <variable>.VirAddr
	cmp	ip, r0	@ D.30357, VirAddr
	add	r3, ip, r3	@ tmp158, D.30357, D.30354
	bhi	.L24	@,
	cmp	r0, r3	@ VirAddr, tmp158
	bcc	.L27	@,
.L24:
	add	r1, r4, #1	@ i, tmp154,
	add	r3, r5, #16	@ ivtmp.571, tmp155,
	cmp	r1, #512	@ i,
	beq	.L29	@,
.L21:
	ldr	r4, [r3, #0]	@ D.30354, <variable>.Length
	add	r5, r3, #16	@ tmp155, ivtmp.571,
	cmp	r4, #0	@ D.30354,
	beq	.L19	@,
	ldr	ip, [r3, #-8]	@ D.30357, <variable>.VirAddr
	cmp	ip, r0	@ D.30357, VirAddr
	add	r4, ip, r4	@ tmp142, D.30357, D.30354
	bhi	.L19	@,
	cmp	r0, r4	@ VirAddr, tmp142
	bcs	.L19	@,
.L27:
	add	r2, r2, r1, asl #4	@, tmp147, tmp153, i,
	ldr	r3, [r2, #16]	@ <variable>.PhyAddr, <variable>.PhyAddr
	add	r0, r0, r3	@ tmp150, VirAddr, <variable>.PhyAddr
	rsb	r0, ip, r0	@ PhyAddr, D.30357, tmp150
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
.L29:
	mov	r0, #0	@ PhyAddr,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	MEM_Vir2Phy, .-MEM_Vir2Phy
	.align	2
	.global	MEM_WritePhyWord
	.type	MEM_WritePhyWord, %function
MEM_WritePhyWord:
	.fnstart
.LFB1531:
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
	movw	r2, #:lower16:.LANCHOR0	@ tmp149,
	movt	r2, #:upper16:.LANCHOR0	@ tmp149,
	mov	ip, #0	@ i,
	add	r3, r2, #8	@ ivtmp.606, tmp149,
	b	.L34	@
.L31:
	ldr	r5, [r4, #12]	@ D.30576, <variable>.Length
	add	ip, ip, #1	@ i, i,
	cmp	r5, #0	@ D.30576,
	mov	r6, ip	@ tmp151, i
	beq	.L37	@,
	ldr	r3, [r4, #8]	@ D.30575, <variable>.PhyAddr
	cmp	r0, r3	@ PhyAddr, D.30575
	add	r5, r3, r5	@ tmp155, D.30575, D.30576
	blt	.L37	@,
	cmp	r0, r5	@ PhyAddr, tmp155
	blt	.L40	@,
.L37:
	add	ip, r6, #1	@ i, tmp151,
	add	r3, r4, #16	@ ivtmp.606, tmp152,
	cmp	ip, #512	@ i,
	beq	.L41	@,
.L34:
	ldr	r5, [r3, #12]	@ D.30576, <variable>.Length
	add	r4, r3, #16	@ tmp152, ivtmp.606,
	cmp	r5, #0	@ D.30576,
	beq	.L31	@,
	ldr	r3, [r3, #8]	@ D.30575, <variable>.PhyAddr
	cmp	r0, r3	@ PhyAddr, D.30575
	add	r5, r3, r5	@ tmp141, D.30575, D.30576
	blt	.L31	@,
	cmp	r0, r5	@ PhyAddr, tmp141
	bge	.L31	@,
.L40:
	add	r2, r2, ip, asl #4	@, tmp145, tmp149, i,
	rsb	r3, r3, r0	@ tmp147, D.30575, PhyAddr
	ldr	r2, [r2, #12]	@ <variable>.VirAddr, <variable>.VirAddr
	add	r0, r3, r2	@ pDst, tmp147, <variable>.VirAddr
	cmp	r0, #0	@ pDst,
	strne	r1, [r3, r2]	@ Data32,* <variable>.VirAddr
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L41:
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
	.fnend
	.size	MEM_WritePhyWord, .-MEM_WritePhyWord
	.align	2
	.global	MEM_ReadPhyWord
	.type	MEM_ReadPhyWord, %function
MEM_ReadPhyWord:
	.fnstart
.LFB1532:
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
	movw	r2, #:lower16:.LANCHOR0	@ tmp152,
	movt	r2, #:upper16:.LANCHOR0	@ tmp152,
	mov	r1, #0	@ i,
	add	r3, r2, #8	@ ivtmp.639, tmp152,
	b	.L46	@
.L43:
	ldr	r4, [ip, #12]	@ D.30587, <variable>.Length
	add	r1, r1, #1	@ i, i,
	cmp	r4, #0	@ D.30587,
	mov	r5, r1	@ tmp153, i
	beq	.L50	@,
	ldr	r3, [ip, #8]	@ D.30586, <variable>.PhyAddr
	cmp	r0, r3	@ PhyAddr, D.30586
	add	r4, r3, r4	@ tmp157, D.30586, D.30587
	blt	.L50	@,
	cmp	r0, r4	@ PhyAddr, tmp157
	blt	.L53	@,
.L50:
	add	r1, r5, #1	@ i, tmp153,
	add	r3, ip, #16	@ ivtmp.639, tmp154,
	cmp	r1, #512	@ i,
	beq	.L45	@,
.L46:
	ldr	r4, [r3, #12]	@ D.30587, <variable>.Length
	add	ip, r3, #16	@ tmp154, ivtmp.639,
	cmp	r4, #0	@ D.30587,
	beq	.L43	@,
	ldr	r3, [r3, #8]	@ D.30586, <variable>.PhyAddr
	cmp	r0, r3	@ PhyAddr, D.30586
	add	r4, r3, r4	@ tmp143, D.30586, D.30587
	blt	.L43	@,
	cmp	r0, r4	@ PhyAddr, tmp143
	bge	.L43	@,
.L53:
	add	ip, r2, r1, asl #4	@, tmp147, tmp152, i,
	rsb	r3, r3, r0	@ tmp149, D.30586, PhyAddr
	ldr	r2, [ip, #12]	@ <variable>.VirAddr, <variable>.VirAddr
	add	r1, r3, r2	@ pDst, tmp149, <variable>.VirAddr
	cmp	r1, #0	@ pDst,
	ldrne	r0, [r3, r2]	@ Data32,* <variable>.VirAddr
	ldmnefd	sp, {r4, r5, fp, sp, pc}	@
.L45:
	mov	r0, #0	@ Data32,
	ldmfd	sp, {r4, r5, fp, sp, pc}	@
	.fnend
	.size	MEM_ReadPhyWord, .-MEM_ReadPhyWord
	.align	2
	.global	MEM_ReleaseMemBlock
	.type	MEM_ReleaseMemBlock, %function
MEM_ReleaseMemBlock:
	.fnstart
.LFB1539:
	@ args = 0, pretend = 0, frame = 16
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
	cmp	r0, #0	@ PhyAddr,
	cmpne	r1, #0	@, VirAddr,
	mov	r5, r1	@ VirAddr, VirAddr
	mov	r4, r0	@ PhyAddr, PhyAddr
	bne	.L65	@,
.L59:
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L65:
	sub	r6, fp, #44	@ tmp150,,
	mov	r1, #16	@,
	mov	r0, r6	@, tmp150
	bl	__memzero	@
	ldr	r2, .L66	@ ivtmp.671,
	str	r5, [fp, #-40]	@ VirAddr, FreeMem.VirAddr
	add	r0, r2, #8192	@ D.30843, ivtmp.671,
	str	r4, [fp, #-44]	@ PhyAddr, FreeMem.PhyAddr
	b	.L58	@
.L56:
	ldr	r3, [r1, #12]	@ D.30532, <variable>.Length
	cmp	r3, #0	@ D.30532,
	beq	.L61	@,
	ldr	lr, [r1, #8]	@ D.30535, <variable>.PhyAddr
	cmp	r4, lr	@ PhyAddr, D.30535
	add	ip, lr, r3	@ tmp154, D.30535, D.30532
	blt	.L61	@,
	cmp	r4, ip	@ PhyAddr, tmp154
	blt	.L64	@,
.L61:
	add	r2, r1, #16	@ ivtmp.671, tmp151,
	cmp	r2, r0	@ ivtmp.671, D.30843
	beq	.L57	@,
.L58:
	ldr	r3, [r2, #12]	@ D.30532, <variable>.Length
	add	r1, r2, #16	@ tmp151, ivtmp.671,
	cmp	r3, #0	@ D.30532,
	beq	.L56	@,
	ldr	r2, [r2, #8]	@ D.30535, <variable>.PhyAddr
	cmp	r4, r2	@ PhyAddr, D.30535
	add	ip, r2, r3	@ tmp148, D.30535, D.30532
	blt	.L56	@,
	cmp	r4, ip	@ PhyAddr, tmp148
	bge	.L56	@,
.L64:
	str	r3, [fp, #-36]	@ D.30532, FreeMem.Length
.L57:
	mov	r0, r6	@, tmp150
	bl	KernelMemFree	@
	b	.L59	@
.L67:
	.align	2
.L66:
	.word	.LANCHOR0+8
	.fnend
	.size	MEM_ReleaseMemBlock, .-MEM_ReleaseMemBlock
	.align	2
	.global	MEM_UnmapRegisterAddr
	.type	MEM_UnmapRegisterAddr, %function
MEM_UnmapRegisterAddr:
	.fnstart
.LFB1538:
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
	cmp	r0, #0	@ PhyAddr,
	cmpne	r1, #0	@, VirAddr,
	ldmeqfd	sp, {fp, sp, pc}	@
	mov	r0, r1	@, VirAddr
	bl	KernelRegisterUnMap	@
	ldmfd	sp, {fp, sp, pc}	@
	.fnend
	.size	MEM_UnmapRegisterAddr, .-MEM_UnmapRegisterAddr
	.align	2
	.global	MEM_MapRegisterAddr
	.type	MEM_MapRegisterAddr, %function
MEM_MapRegisterAddr:
	.fnstart
.LFB1537:
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
	cmp	r0, #0	@ RegStartPhyAddr,
	cmpne	r2, #0	@, pMemRecord,
	mov	r4, r0	@ RegStartPhyAddr, RegStartPhyAddr
	mov	r6, r1	@ RegByteLen, RegByteLen
	movne	r5, #0	@, tmp145
	moveq	r5, #1	@, tmp145
	bne	.L75	@,
.L72:
	mvn	r0, #0	@ D.30488,
.L73:
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
.L75:
	mov	r0, r2	@, pMemRecord
	mov	r1, #16	@,
	str	r2, [fp, #-32]	@,
	bl	__memzero	@
	mov	r0, r4	@, RegStartPhyAddr
	bl	KernelRegisterMap	@
	ldr	r2, [fp, #-32]	@,
	subs	r3, r0, #0	@ ptr,
	beq	.L72	@,
	str	r6, [r2, #12]	@ RegByteLen, <variable>.Length
	mov	r0, r5	@ D.30488, tmp145
	stmib	r2, {r3, r4}	@ phole stm
	b	.L73	@
	.fnend
	.size	MEM_MapRegisterAddr, .-MEM_MapRegisterAddr
	.align	2
	.global	MEM_AllocMemBlock
	.type	MEM_AllocMemBlock, %function
MEM_AllocMemBlock:
	.fnstart
.LFB1536:
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	.movsp ip
	mov	ip, sp	@,
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}	@,
	.pad #4
	.save {r4, r5, r6, r7, fp, ip, lr}
	.setfp fp, ip, #-4
	sub	fp, ip, #4	@,,
	.pad #32
	sub	sp, sp, #32	@,,
	push	{lr}
	bl	__gnu_mcount_nc
	cmp	r2, #0	@ ExpectedLen,
	cmpne	r3, #0	@, pMemRecord,
	mov	r4, r3	@ pMemRecord, pMemRecord
	mov	r7, r0	@ MemName, MemName
	movne	r5, #0	@, tmp148
	moveq	r5, #1	@, tmp148
	bne	.L80	@,
.L77:
	mvn	r0, #0	@ D.30448,
.L78:
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L80:
	sub	r6, fp, #44	@ tmp149,,
	mov	r0, r3	@, pMemRecord
	mov	r1, #16	@,
	str	r2, [fp, #-48]	@,
	bl	__memzero	@
	mov	r0, r6	@, tmp149
	mov	r1, #16	@,
	bl	__memzero	@
	ldr	r2, [fp, #-48]	@,
	ldr	r3, [fp, #4]	@, IsCached
	mov	r0, r7	@, MemName
	str	r6, [sp, #0]	@ tmp149,
	mov	r1, r2	@, ExpectedLen
	mov	r2, #4	@,
	bl	KernelMemMalloc	@
	ldr	r3, [fp, #-40]	@ D.30462, AllocMem.VirAddr
	cmp	r3, #0	@ D.30462,
	beq	.L77	@,
	ldr	r2, [fp, #-44]	@ ExpectedPhyAddr, AllocMem.PhyAddr
	ldr	ip, [fp, #-36]	@ ExpectedLen.743, AllocMem.Length
	cmp	r2, #0	@ ExpectedPhyAddr,
	beq	.L77	@,
	movw	r1, #:lower16:.LANCHOR1	@ tmp151,
	movt	r1, #:upper16:.LANCHOR1	@ tmp151,
	str	r3, [r4, #4]	@ D.30462, <variable>.VirAddr
	mov	r0, r5	@ D.30448, tmp148
	str	ip, [r4, #12]	@ ExpectedLen.743, <variable>.Length
	str	r2, [r4, #8]	@ ExpectedPhyAddr, <variable>.PhyAddr
	ldr	r2, [r1, #16]	@ s_MemOffset, s_MemOffset
	add	lr, ip, r2	@ tmp153, ExpectedLen.743, s_MemOffset
	add	ip, lr, #3	@ tmp155, tmp153,
	bic	r3, ip, #3	@ tmp156, tmp155,
	str	r3, [r1, #16]	@ tmp156, s_MemOffset
	b	.L78	@
	.fnend
	.size	MEM_AllocMemBlock, .-MEM_AllocMemBlock
	.align	2
	.global	MEM_CopyVir2Phy
	.type	MEM_CopyVir2Phy, %function
MEM_CopyVir2Phy:
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
	movw	ip, #:lower16:.LANCHOR0	@ tmp161,
	movt	ip, #:upper16:.LANCHOR0	@ tmp161,
	mov	r4, #0	@ i,
	add	r3, ip, #8	@ ivtmp.775, tmp161,
	b	.L85	@
.L82:
	ldr	r6, [r5, #12]	@ D.30598, <variable>.Length
	add	r4, r4, #1	@ i, i,
	cmp	r6, #0	@ D.30598,
	mov	r7, r4	@ tmp162, i
	beq	.L88	@,
	ldr	r3, [r5, #8]	@ D.30597, <variable>.PhyAddr
	cmp	r0, r3	@ DstPhyAddr, D.30597
	add	r6, r3, r6	@ tmp166, D.30597, D.30598
	blt	.L88	@,
	cmp	r0, r6	@ DstPhyAddr, tmp166
	blt	.L91	@,
.L88:
	add	r4, r7, #1	@ i, tmp162,
	add	r3, r5, #16	@ ivtmp.775, tmp163,
	cmp	r4, #512	@ i,
	beq	.L92	@,
.L85:
	ldr	r6, [r3, #12]	@ D.30598, <variable>.Length
	add	r5, r3, #16	@ tmp163, ivtmp.775,
	cmp	r6, #0	@ D.30598,
	beq	.L82	@,
	ldr	r3, [r3, #8]	@ D.30597, <variable>.PhyAddr
	cmp	r0, r3	@ DstPhyAddr, D.30597
	add	r6, r3, r6	@ tmp142, D.30597, D.30598
	blt	.L82	@,
	cmp	r0, r6	@ DstPhyAddr, tmp142
	bge	.L82	@,
.L91:
	add	ip, ip, r4, asl #4	@, tmp146, tmp161, i,
	rsb	r3, r3, r0	@ tmp148, D.30597, DstPhyAddr
	ldr	ip, [ip, #12]	@ <variable>.VirAddr, <variable>.VirAddr
	adds	r0, r3, ip	@ pDst, tmp148, <variable>.VirAddr
	moveq	r4, #0	@, tmp151
	movne	r4, #1	@, tmp151
	cmp	r1, #0	@ SrcVirAddr,
	moveq	r4, #0	@, tmp156
	andne	r4, r4, #1	@,, tmp156, tmp151
	cmp	r4, #0	@ tmp156,
	ldmeqfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	bl	memcpy	@
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L92:
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	MEM_CopyVir2Phy, .-MEM_CopyVir2Phy
	.align	2
	.global	MEM_CopyPhy2Vir
	.type	MEM_CopyPhy2Vir, %function
MEM_CopyPhy2Vir:
	.fnstart
.LFB1534:
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
	movw	ip, #:lower16:.LANCHOR0	@ tmp161,
	movt	ip, #:upper16:.LANCHOR0	@ tmp161,
	mov	r4, #0	@ i,
	add	r3, ip, #8	@ ivtmp.808, tmp161,
	b	.L97	@
.L94:
	ldr	r6, [r5, #12]	@ D.30609, <variable>.Length
	add	r4, r4, #1	@ i, i,
	cmp	r6, #0	@ D.30609,
	mov	r7, r4	@ tmp162, i
	beq	.L100	@,
	ldr	r3, [r5, #8]	@ D.30608, <variable>.PhyAddr
	cmp	r1, r3	@ SrcPhyAddr, D.30608
	add	r6, r3, r6	@ tmp166, D.30608, D.30609
	blt	.L100	@,
	cmp	r1, r6	@ SrcPhyAddr, tmp166
	blt	.L103	@,
.L100:
	add	r4, r7, #1	@ i, tmp162,
	add	r3, r5, #16	@ ivtmp.808, tmp163,
	cmp	r4, #512	@ i,
	beq	.L104	@,
.L97:
	ldr	r6, [r3, #12]	@ D.30609, <variable>.Length
	add	r5, r3, #16	@ tmp163, ivtmp.808,
	cmp	r6, #0	@ D.30609,
	beq	.L94	@,
	ldr	r3, [r3, #8]	@ D.30608, <variable>.PhyAddr
	cmp	r1, r3	@ SrcPhyAddr, D.30608
	add	r6, r3, r6	@ tmp142, D.30608, D.30609
	blt	.L94	@,
	cmp	r1, r6	@ SrcPhyAddr, tmp142
	bge	.L94	@,
.L103:
	add	ip, ip, r4, asl #4	@, tmp146, tmp161, i,
	rsb	r1, r3, r1	@ tmp148, D.30608, SrcPhyAddr
	ldr	ip, [ip, #12]	@ <variable>.VirAddr, <variable>.VirAddr
	adds	r1, r1, ip	@ pSrc, tmp148, <variable>.VirAddr
	moveq	r3, #0	@, tmp151
	movne	r3, #1	@, tmp151
	cmp	r0, #0	@ DstVirAddr,
	moveq	r3, #0	@, tmp156
	andne	r3, r3, #1	@,, tmp156, tmp151
	cmp	r3, #0	@ tmp156,
	ldmeqfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	bl	memcpy	@
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L104:
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
	.fnend
	.size	MEM_CopyPhy2Vir, .-MEM_CopyPhy2Vir
	.align	2
	.global	MEM_CopyPhy2Phy
	.type	MEM_CopyPhy2Phy, %function
MEM_CopyPhy2Phy:
	.fnstart
.LFB1533:
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
	movw	ip, #:lower16:.LANCHOR0	@ tmp174,
	movt	ip, #:upper16:.LANCHOR0	@ tmp174,
	mov	r4, #0	@ i,
	add	r3, ip, #8	@ ivtmp.853, tmp174,
	mov	r5, r3	@ ivtmp.851, ivtmp.853
	b	.L108	@
.L106:
	ldr	r7, [r6, #12]	@ D.30620, <variable>.Length
	add	r4, r4, #1	@ i, i,
	cmp	r7, #0	@ D.30620,
	mov	r8, r4	@ tmp177, i
	beq	.L118	@,
	ldr	r5, [r6, #8]	@ D.30619, <variable>.PhyAddr
	cmp	r0, r5	@ DstPhyAddr, D.30619
	add	r7, r5, r7	@ tmp184, D.30619, D.30620
	blt	.L118	@,
	cmp	r0, r7	@ DstPhyAddr, tmp184
	blt	.L123	@,
.L118:
	add	r4, r8, #1	@ i, tmp177,
	add	r5, r6, #16	@ ivtmp.851, tmp178,
	cmp	r4, #512	@ i,
	beq	.L125	@,
.L108:
	ldr	r7, [r5, #12]	@ D.30620, <variable>.Length
	add	r6, r5, #16	@ tmp178, ivtmp.851,
	cmp	r7, #0	@ D.30620,
	beq	.L106	@,
	ldr	r5, [r5, #8]	@ D.30619, <variable>.PhyAddr
	cmp	r0, r5	@ DstPhyAddr, D.30619
	add	r7, r5, r7	@ tmp147, D.30619, D.30620
	blt	.L106	@,
	cmp	r0, r7	@ DstPhyAddr, tmp147
	bge	.L106	@,
.L123:
	add	r6, ip, r4, asl #4	@, tmp151, tmp174, i,
	rsb	r0, r5, r0	@ tmp153, D.30619, DstPhyAddr
	ldr	r4, [r6, #12]	@ <variable>.VirAddr, <variable>.VirAddr
	add	r0, r0, r4	@ pDst, tmp153, <variable>.VirAddr
.L107:
	mov	r4, #0	@ i,
	b	.L112	@
.L109:
	ldr	r6, [r5, #12]	@ D.30631, <variable>.Length
	add	r4, r4, #1	@ i, i,
	cmp	r6, #0	@ D.30631,
	mov	r7, r4	@ tmp175, i
	beq	.L116	@,
	ldr	r3, [r5, #8]	@ D.30630, <variable>.PhyAddr
	cmp	r1, r3	@ SrcPhyAddr, D.30630
	add	r6, r3, r6	@ tmp183, D.30630, D.30631
	blt	.L116	@,
	cmp	r1, r6	@ SrcPhyAddr, tmp183
	blt	.L122	@,
.L116:
	add	r4, r7, #1	@ i, tmp175,
	add	r3, r5, #16	@ ivtmp.853, tmp176,
	cmp	r4, #512	@ i,
	beq	.L126	@,
.L112:
	ldr	r6, [r3, #12]	@ D.30631, <variable>.Length
	add	r5, r3, #16	@ tmp176, ivtmp.853,
	cmp	r6, #0	@ D.30631,
	beq	.L109	@,
	ldr	r3, [r3, #8]	@ D.30630, <variable>.PhyAddr
	cmp	r1, r3	@ SrcPhyAddr, D.30630
	add	r6, r3, r6	@ tmp155, D.30630, D.30631
	blt	.L109	@,
	cmp	r1, r6	@ SrcPhyAddr, tmp155
	bge	.L109	@,
.L122:
	add	ip, ip, r4, asl #4	@, tmp159, tmp174, i,
	rsb	r1, r3, r1	@ tmp161, D.30630, SrcPhyAddr
	ldr	ip, [ip, #12]	@ <variable>.VirAddr, <variable>.VirAddr
	adds	r1, r1, ip	@ pSrc, tmp161, <variable>.VirAddr
	moveq	r3, #0	@, tmp164
	movne	r3, #1	@, tmp164
	cmp	r0, #0	@ pDst,
	moveq	r3, #0	@, tmp169
	andne	r3, r3, #1	@,, tmp169, tmp164
	cmp	r3, #0	@ tmp169,
	ldmeqfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	bl	memcpy	@
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
.L125:
	mov	r0, #0	@ pDst,
	b	.L107	@
.L126:
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, fp, sp, pc}	@
	.fnend
	.size	MEM_CopyPhy2Phy, .-MEM_CopyPhy2Phy
	.align	2
	.global	MEM_DelMemRecord
	.type	MEM_DelMemRecord, %function
MEM_DelMemRecord:
	.fnstart
.LFB1528:
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
	mov	r4, r0	@ PhyAddr, PhyAddr
	ldr	r0, .L140	@,
	mov	r6, r2	@ Length, Length
	mov	r5, r1	@ VirAddr, VirAddr
	bl	OSAL_SpinLockIRQ	@
	movw	lr, #:lower16:.LANCHOR0	@ tmp173,
	movt	lr, #:upper16:.LANCHOR0	@ tmp173,
	mov	r2, #0	@ i,
	add	r3, lr, #8	@ ivtmp.884, tmp173,
	b	.L130	@
.L128:
	ldr	r3, [r1, #12]	@ D.30309, <variable>.Length
	add	r2, r2, #1	@ i, i,
	cmp	r3, #0	@ D.30309,
	mov	r0, r2	@ tmp176, i
	beq	.L133	@,
	ldr	ip, [r1, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	ip, r4	@ <variable>.PhyAddr, PhyAddr
	beq	.L138	@,
.L133:
	add	r2, r0, #1	@ i, tmp176,
	add	r3, r1, #16	@ ivtmp.884, tmp177,
	cmp	r2, #512	@ i,
	beq	.L139	@,
.L130:
	ldr	r0, [r3, #12]	@ D.30309, <variable>.Length
	add	r1, r3, #16	@ tmp177, ivtmp.884,
	cmp	r0, #0	@ D.30309,
	beq	.L128	@,
	ldr	ip, [r3, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	ip, r4	@ <variable>.PhyAddr, PhyAddr
	bne	.L128	@,
	ldr	r3, [r3, #4]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	r3, r5	@ <variable>.VirAddr, VirAddr
	bne	.L128	@,
	cmp	r0, r6	@ D.30309, Length
	bne	.L128	@,
.L136:
	add	r0, lr, r2, asl #4	@, tmp150, tmp173, i,
	mov	r4, #0	@ tmp153,
	add	r1, r0, #8	@ tmp151, tmp150,
	mov	r2, r0	@ tmp165, tmp150
	ldr	r0, .L140	@,
	str	r4, [r1, #8]	@ tmp153, <variable>.PhyAddr
	str	r4, [r2, #12]	@ tmp153, <variable>.VirAddr
	str	r4, [r1, #12]	@ tmp153, <variable>.Length
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r4	@ D.30320, tmp153
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L138:
	ldr	ip, [r1, #4]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	ip, r5	@ <variable>.VirAddr, VirAddr
	bne	.L133	@,
	cmp	r3, r6	@ D.30309, Length
	beq	.L136	@,
	add	r2, r0, #1	@ i, tmp176,
	add	r3, r1, #16	@ ivtmp.884, tmp177,
	cmp	r2, #512	@ i,
	bne	.L130	@,
.L139:
	ldr	r0, .L140	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.30320,
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L141:
	.align	2
.L140:
	.word	.LANCHOR1+20
	.fnend
	.size	MEM_DelMemRecord, .-MEM_DelMemRecord
	.align	2
	.global	MEM_AddMemRecord
	.type	MEM_AddMemRecord, %function
MEM_AddMemRecord:
	.fnstart
.LFB1527:
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
	mov	r4, r0	@ PhyAddr, PhyAddr
	ldr	r0, .L154	@,
	mov	r7, r2	@ Length, Length
	mov	r5, r1	@ VirAddr, VirAddr
	bl	OSAL_SpinLockIRQ	@
	movw	r0, #:lower16:.LANCHOR0	@ tmp169,
	movt	r0, #:upper16:.LANCHOR0	@ tmp169,
	mov	r2, #0	@ i,
	add	r3, r0, #8	@ ivtmp.918, tmp169,
	b	.L144	@
.L153:
	ldr	r6, [r1, #12]	@ <variable>.Length, <variable>.Length
	add	r2, r2, #1	@ i, i,
	cmp	r6, #0	@ <variable>.Length,
	beq	.L143	@,
	add	r2, r2, #1	@ i, i,
	cmp	r2, #512	@ i,
	beq	.L152	@,
.L144:
	ldr	r6, [r3, #12]	@ <variable>.Length, <variable>.Length
	add	r1, r3, #16	@ tmp172, ivtmp.918,
	add	r3, r1, #16	@ ivtmp.918, tmp172,
	cmp	r6, #0	@ <variable>.Length,
	bne	.L153	@,
.L143:
	add	r1, r0, r2, asl #4	@, tmp148, tmp169, i,
	ldr	r0, .L154	@,
	add	r3, r1, #8	@ tmp149, tmp148,
	str	r5, [r1, #12]	@ VirAddr, <variable>.VirAddr
	str	r7, [r3, #12]	@ Length, <variable>.Length
	str	r4, [r3, #8]	@ PhyAddr, <variable>.PhyAddr
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r6	@ D.30297, <variable>.Length
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L152:
	ldr	r0, .L154	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.30297,
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}	@
.L155:
	.align	2
.L154:
	.word	.LANCHOR1+20
	.fnend
	.size	MEM_AddMemRecord, .-MEM_AddMemRecord
	.align	2
	.global	MEM_InitMemManager
	.type	MEM_InitMemManager, %function
MEM_InitMemManager:
	.fnstart
.LFB1524:
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
	movw	r4, #:lower16:.LANCHOR1	@ tmp134,
	movt	r4, #:upper16:.LANCHOR1	@ tmp134,
	mov	r5, r0	@ pMemInit, pMemInit
	add	r6, r4, #20	@ tmp135, tmp134,
	mov	r0, r6	@, tmp135
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, .L158	@,
	mov	r1, #8192	@,
	bl	__memzero	@
	ldr	r1, [r5, #0]	@ <variable>.MemBaseAddr, <variable>.MemBaseAddr
	mov	r0, r6	@, tmp135
	mov	r2, #0	@ tmp143,
	str	r1, [r4, #32]	@ <variable>.MemBaseAddr, s_MemBaseAddr
	ldr	r3, [r5, #4]	@ <variable>.MemSize, <variable>.MemSize
	str	r2, [r4, #16]	@ tmp143, s_MemOffset
	str	r3, [r4, #36]	@ <variable>.MemSize, s_MemSize
	bl	OSAL_SpinUnLockIRQ	@
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}	@
.L159:
	.align	2
.L158:
	.word	.LANCHOR0+8
	.fnend
	.size	MEM_InitMemManager, .-MEM_InitMemManager
	.global	g_RecordLock
	.global	s_MemRecord
	.global	mem_malloc
	.global	mem_free
	.section	__ksymtab_strings,"a",%progbits
	.type	__kstrtab_MEM_DelMemRecord, %object
	.size	__kstrtab_MEM_DelMemRecord, 17
__kstrtab_MEM_DelMemRecord:
	.ascii	"MEM_DelMemRecord\000"
	.type	__kstrtab_MEM_AddMemRecord, %object
	.size	__kstrtab_MEM_AddMemRecord, 17
__kstrtab_MEM_AddMemRecord:
	.ascii	"MEM_AddMemRecord\000"
	.type	__kstrtab_MEM_ReleaseMemBlock, %object
	.size	__kstrtab_MEM_ReleaseMemBlock, 20
__kstrtab_MEM_ReleaseMemBlock:
	.ascii	"MEM_ReleaseMemBlock\000"
	.type	__kstrtab_MEM_AllocMemBlock, %object
	.size	__kstrtab_MEM_AllocMemBlock, 18
__kstrtab_MEM_AllocMemBlock:
	.ascii	"MEM_AllocMemBlock\000"
	.section	___ksymtab+MEM_ReleaseMemBlock,"a",%progbits
	.align	2
	.type	__ksymtab_MEM_ReleaseMemBlock, %object
	.size	__ksymtab_MEM_ReleaseMemBlock, 8
__ksymtab_MEM_ReleaseMemBlock:
@ value:
	.word	MEM_ReleaseMemBlock
@ name:
	.word	__kstrtab_MEM_ReleaseMemBlock
	.section	___ksymtab+MEM_AddMemRecord,"a",%progbits
	.align	2
	.type	__ksymtab_MEM_AddMemRecord, %object
	.size	__ksymtab_MEM_AddMemRecord, 8
__ksymtab_MEM_AddMemRecord:
@ value:
	.word	MEM_AddMemRecord
@ name:
	.word	__kstrtab_MEM_AddMemRecord
	.section	___ksymtab+MEM_DelMemRecord,"a",%progbits
	.align	2
	.type	__ksymtab_MEM_DelMemRecord, %object
	.size	__ksymtab_MEM_DelMemRecord, 8
__ksymtab_MEM_DelMemRecord:
@ value:
	.word	MEM_DelMemRecord
@ name:
	.word	__kstrtab_MEM_DelMemRecord
	.bss
	.align	2
.LANCHOR0 = . + 0
.LANCHOR1 = . + 8184
	.type	mem_malloc, %object
	.size	mem_malloc, 4
mem_malloc:
	.space	4
	.type	mem_free, %object
	.size	mem_free, 4
mem_free:
	.space	4
	.type	s_MemRecord, %object
	.size	s_MemRecord, 8192
s_MemRecord:
	.space	8192
	.type	s_MemOffset, %object
	.size	s_MemOffset, 4
s_MemOffset:
	.space	4
	.type	g_RecordLock, %object
	.size	g_RecordLock, 12
g_RecordLock:
	.space	12
	.type	s_MemBaseAddr, %object
	.size	s_MemBaseAddr, 4
s_MemBaseAddr:
	.space	4
	.type	s_MemSize, %object
	.size	s_MemSize, 4
s_MemSize:
	.space	4
	.section	___ksymtab+MEM_AllocMemBlock,"a",%progbits
	.align	2
	.type	__ksymtab_MEM_AllocMemBlock, %object
	.size	__ksymtab_MEM_AllocMemBlock, 8
__ksymtab_MEM_AllocMemBlock:
@ value:
	.word	MEM_AllocMemBlock
@ name:
	.word	__kstrtab_MEM_AllocMemBlock
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
