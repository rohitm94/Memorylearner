	.file	"mem_bw_final.cpp"
# GNU C++11 (Ubuntu 7.4.0-1ubuntu1~18.04.1) version 7.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 7.4.0, GMP version 6.1.2, MPFR version 4.0.1, MPC version 1.1.0, isl version isl-0.19-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D_GNU_SOURCE -D_REENTRANT
# mem_bw_final.cpp --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=8192 -mtune=generic -march=haswell -g -std=c++11
# -fopenmp -fverbose-asm -fstack-protector-strong -Wformat
# -Wformat-security
# options enabled:  -fPIC -fPIE -faggressive-loop-optimizations
# -fasynchronous-unwind-tables -fauto-inc-dec -fchkp-check-incomplete-type
# -fchkp-check-read -fchkp-check-write -fchkp-instrument-calls
# -fchkp-narrow-bounds -fchkp-optimize -fchkp-store-bounds
# -fchkp-use-static-bounds -fchkp-use-static-const-bounds
# -fchkp-use-wrappers -fcommon -fdelete-null-pointer-checks
# -fdwarf2-cfi-asm -fearly-inlining -feliminate-unused-debug-types
# -fexceptions -ffp-int-builtin-inexact -ffunction-cse -fgcse-lm
# -fgnu-runtime -fgnu-unique -fident -finline-atomics -fira-hoist-pressure
# -fira-share-save-slots -fira-share-spill-slots -fivopts
# -fkeep-static-consts -fleading-underscore -flifetime-dse
# -flto-odr-type-merging -fmath-errno -fmerge-debug-strings -fpeephole
# -fplt -fprefetch-loop-arrays -freg-struct-return
# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
# -fsched-stalled-insns-dep -fschedule-fusion -fsemantic-interposition
# -fshow-column -fshrink-wrap-separate -fsigned-zeros
# -fsplit-ivs-in-unroller -fssa-backprop -fstack-protector-strong
# -fstdarg-opt -fstrict-volatile-bitfields -fsync-libcalls -ftrapping-math
# -ftree-cselim -ftree-forwprop -ftree-loop-if-convert -ftree-loop-im
# -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
# -ftree-phiprop -ftree-reassoc -ftree-scev-cprop -funit-at-a-time
# -funwind-tables -fverbose-asm -fzero-initialized-in-bss
# -m128bit-long-double -m64 -m80387 -maes -malign-stringops -mavx -mavx2
# -mavx256-split-unaligned-load -mavx256-split-unaligned-store -mbmi -mbmi2
# -mcx16 -mf16c -mfancy-math-387 -mfma -mfp-ret-in-387 -mfsgsbase -mfxsr
# -mglibc -mhle -mieee-fp -mlong-double-80 -mlzcnt -mmmx -mmovbe -mpclmul
# -mpopcnt -mpush-args -mrdrnd -mred-zone -msahf -msse -msse2 -msse3 -msse4
# -msse4.1 -msse4.2 -mssse3 -mstv -mtls-direct-seg-refs -mvzeroupper
# -mxsave -mxsaveopt

	.text
.Ltext0:
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.text
	.type	_ZL10_mm_mallocmm, @function
_ZL10_mm_mallocmm:
.LFB1576:
	.file 1 "/usr/lib/gcc/x86_64-linux-gnu/7/include/mm_malloc.h"
	.loc 1 39 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# __size, __size
	movq	%rsi, -32(%rbp)	# __alignment, __alignment
# /usr/lib/gcc/x86_64-linux-gnu/7/include/mm_malloc.h:39: {
	.loc 1 39 0
	movq	%fs:40, %rax	#, tmp97
	movq	%rax, -8(%rbp)	# tmp97, D.63058
	xorl	%eax, %eax	# tmp97
# /usr/lib/gcc/x86_64-linux-gnu/7/include/mm_malloc.h:41:   if (__alignment == 1)
	.loc 1 41 0
	cmpq	$1, -32(%rbp)	#, __alignment
	jne	.L2	#,
# /usr/lib/gcc/x86_64-linux-gnu/7/include/mm_malloc.h:42:     return malloc (__size);
	.loc 1 42 0
	movq	-24(%rbp), %rax	# __size, tmp91
	movq	%rax, %rdi	# tmp91,
	call	malloc@PLT	#
	jmp	.L7	#
.L2:
# /usr/lib/gcc/x86_64-linux-gnu/7/include/mm_malloc.h:43:   if (__alignment == 2 || (sizeof (void *) == 8 && __alignment == 4))
	.loc 1 43 0
	cmpq	$2, -32(%rbp)	#, __alignment
	je	.L4	#,
# /usr/lib/gcc/x86_64-linux-gnu/7/include/mm_malloc.h:43:   if (__alignment == 2 || (sizeof (void *) == 8 && __alignment == 4))
	.loc 1 43 0 is_stmt 0 discriminator 1
	cmpq	$4, -32(%rbp)	#, __alignment
	jne	.L5	#,
.L4:
# /usr/lib/gcc/x86_64-linux-gnu/7/include/mm_malloc.h:44:     __alignment = sizeof (void *);
	.loc 1 44 0 is_stmt 1
	movq	$8, -32(%rbp)	#, __alignment
.L5:
# /usr/lib/gcc/x86_64-linux-gnu/7/include/mm_malloc.h:45:   if (posix_memalign (&__ptr, __alignment, __size) == 0)
	.loc 1 45 0
	movq	-24(%rbp), %rdx	# __size, tmp93
	movq	-32(%rbp), %rcx	# __alignment, tmp94
	leaq	-16(%rbp), %rax	#, tmp95
	movq	%rcx, %rsi	# tmp94,
	movq	%rax, %rdi	# tmp95,
	call	posix_memalign@PLT	#
	testl	%eax, %eax	# _1
	sete	%al	#, retval.16_10
	testb	%al, %al	# retval.16_10
	je	.L6	#,
# /usr/lib/gcc/x86_64-linux-gnu/7/include/mm_malloc.h:46:     return __ptr;
	.loc 1 46 0
	movq	-16(%rbp), %rax	# __ptr, _3
	jmp	.L7	#
.L6:
# /usr/lib/gcc/x86_64-linux-gnu/7/include/mm_malloc.h:48:     return NULL;
	.loc 1 48 0
	movl	$0, %eax	#, _3
.L7:
# /usr/lib/gcc/x86_64-linux-gnu/7/include/mm_malloc.h:49: }
	.loc 1 49 0 discriminator 1
	movq	-8(%rbp), %rcx	# D.63058, tmp98
	xorq	%fs:40, %rcx	#, tmp98
	je	.L8	#,
# /usr/lib/gcc/x86_64-linux-gnu/7/include/mm_malloc.h:49: }
	.loc 1 49 0 is_stmt 0
	call	__stack_chk_fail@PLT	#
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1576:
	.size	_ZL10_mm_mallocmm, .-_ZL10_mm_mallocmm
	.type	_ZL8_mm_freePv, @function
_ZL8_mm_freePv:
.LFB1577:
	.loc 1 53 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# __ptr, __ptr
# /usr/lib/gcc/x86_64-linux-gnu/7/include/mm_malloc.h:54:   free (__ptr);
	.loc 1 54 0
	movq	-8(%rbp), %rax	# __ptr, tmp87
	movq	%rax, %rdi	# tmp87,
	call	free@PLT	#
# /usr/lib/gcc/x86_64-linux-gnu/7/include/mm_malloc.h:55: }
	.loc 1 55 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1577:
	.size	_ZL8_mm_freePv, .-_ZL8_mm_freePv
	.section	.text._ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_,"axG",@progbits,_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_,comdat
	.align 2
	.weak	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_
	.type	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_, @function
_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_:
.LFB5343:
	.file 2 "/usr/include/c++/7/chrono"
	.loc 2 327 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
	movq	%rsi, -16(%rbp)	# __rep, __rep
.LBB113:
# /usr/include/c++/7/chrono:328: 	  : __r(static_cast<rep>(__rep)) { }
	.loc 2 328 0
	movq	-16(%rbp), %rax	# __rep, tmp88
	movq	(%rax), %rdx	# *__rep_5(D), _1
	movq	-8(%rbp), %rax	# this, tmp89
	movq	%rdx, (%rax)	# _1, this_3(D)->__r
.LBE113:
	nop
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5343:
	.size	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_, .-_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_
	.section	.text._ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv,"axG",@progbits,_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv,comdat
	.align 2
	.weak	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	.type	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv, @function
_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv:
.LFB5347:
	.loc 2 342 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include/c++/7/chrono:343: 	{ return __r; }
	.loc 2 343 0
	movq	-8(%rbp), %rax	# this, tmp89
	movq	(%rax), %rax	# this_2(D)->__r, _3
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5347:
	.size	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv, .-_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	.section	.text._ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv,"axG",@progbits,_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv,comdat
	.align 2
	.weak	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	.type	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv, @function
_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv:
.LFB5349:
	.loc 2 639 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include/c++/7/chrono:640: 	{ return __d; }
	.loc 2 640 0
	movq	-8(%rbp), %rax	# this, tmp89
	movq	(%rax), %rax	# this_2(D)->__d, D.62265
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5349:
	.size	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv, .-_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	.section	.text._ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_,"axG",@progbits,_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_,comdat
	.weak	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	.type	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_, @function
_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_:
.LFB5372:
	.loc 2 459 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# __lhs, __lhs
	movq	%rsi, -80(%rbp)	# __rhs, __rhs
# /usr/include/c++/7/chrono:459:       operator-(const duration<_Rep1, _Period1>& __lhs,
	.loc 2 459 0
	movq	%fs:40, %rax	#, tmp101
	movq	%rax, -24(%rbp)	# tmp101, D.63060
	xorl	%eax, %eax	# tmp101
# /usr/include/c++/7/chrono:465: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	.loc 2 465 0
	movq	-72(%rbp), %rax	# __lhs, tmp92
	movq	(%rax), %rax	# *__lhs_5(D), tmp93
	movq	%rax, -56(%rbp)	# tmp93, D.58698
	leaq	-56(%rbp), %rax	#, tmp94
	movq	%rax, %rdi	# tmp94,
	call	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv	#
	movq	%rax, %rbx	#, _1
	movq	-80(%rbp), %rax	# __rhs, tmp95
	movq	(%rax), %rax	# *__rhs_8(D), tmp96
	movq	%rax, -48(%rbp)	# tmp96, D.58699
	leaq	-48(%rbp), %rax	#, tmp97
	movq	%rax, %rdi	# tmp97,
	call	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv	#
	subq	%rax, %rbx	# _2, _1
	movq	%rbx, %rax	# _1, _3
	movq	%rax, -40(%rbp)	# _3, D.58700
	leaq	-40(%rbp), %rdx	#, tmp98
	leaq	-32(%rbp), %rax	#, tmp99
	movq	%rdx, %rsi	# tmp98,
	movq	%rax, %rdi	# tmp99,
	call	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_	#
	movq	-32(%rbp), %rax	# D.58701, D.62267
# /usr/include/c++/7/chrono:466:       }
	.loc 2 466 0
	movq	-24(%rbp), %rcx	# D.63060, tmp102
	xorq	%fs:40, %rcx	#, tmp102
	je	.L17	#,
	call	__stack_chk_fail@PLT	#
.L17:
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5372:
	.size	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_, .-_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	.section	.text._ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE,"axG",@progbits,_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE,comdat
	.weak	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.type	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE, @function
_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE:
.LFB5371:
	.loc 2 752 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# __lhs, __lhs
	movq	%rsi, -48(%rbp)	# __rhs, __rhs
# /usr/include/c++/7/chrono:752:       operator-(const time_point<_Clock, _Dur1>& __lhs,
	.loc 2 752 0
	movq	%fs:40, %rax	#, tmp98
	movq	%rax, -8(%rbp)	# tmp98, D.63061
	xorl	%eax, %eax	# tmp98
# /usr/include/c++/7/chrono:754:       { return __lhs.time_since_epoch() - __rhs.time_since_epoch(); }
	.loc 2 754 0
	movq	-48(%rbp), %rax	# __rhs, tmp89
	movq	%rax, %rdi	# tmp89,
	call	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv	#
	movq	%rax, -16(%rbp)	# tmp91, D.58689
	movq	-40(%rbp), %rax	# __lhs, tmp92
	movq	%rax, %rdi	# tmp92,
	call	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv	#
	movq	%rax, -24(%rbp)	# tmp94, D.58688
	leaq	-16(%rbp), %rdx	#, tmp95
	leaq	-24(%rbp), %rax	#, tmp96
	movq	%rdx, %rsi	# tmp95,
	movq	%rax, %rdi	# tmp96,
	call	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_	#
	movq	-8(%rbp), %rcx	# D.63061, tmp99
	xorq	%fs:40, %rcx	#, tmp99
	je	.L20	#,
	call	__stack_chk_fail@PLT	#
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5371:
	.size	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE, .-_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.section	.text._ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IdvEERKT_,"axG",@progbits,_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IdvEERKT_,comdat
	.align 2
	.weak	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IdvEERKT_
	.type	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IdvEERKT_, @function
_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IdvEERKT_:
.LFB5378:
	.loc 2 327 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
	movq	%rsi, -16(%rbp)	# __rep, __rep
.LBB114:
# /usr/include/c++/7/chrono:328: 	  : __r(static_cast<rep>(__rep)) { }
	.loc 2 328 0
	movq	-16(%rbp), %rax	# __rep, tmp88
	vmovsd	(%rax), %xmm0	# *__rep_5(D), _1
	movq	-8(%rbp), %rax	# this, tmp89
	vmovsd	%xmm0, (%rax)	# _1, this_3(D)->__r
.LBE114:
	nop
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5378:
	.size	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IdvEERKT_, .-_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IdvEERKT_
	.section	.text._ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE,"axG",@progbits,_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE,comdat
	.weak	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE
	.type	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE, @function
_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE:
.LFB5375:
	.loc 2 159 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# __d, __d
# /usr/include/c++/7/chrono:159: 	  __cast(const duration<_Rep, _Period>& __d)
	.loc 2 159 0
	movq	%fs:40, %rax	#, tmp97
	movq	%rax, -8(%rbp)	# tmp97, D.63062
	xorl	%eax, %eax	# tmp97
# /usr/include/c++/7/chrono:163: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	.loc 2 163 0
	movq	-40(%rbp), %rax	# __d, tmp92
	movq	%rax, %rdi	# tmp92,
	call	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv	#
	vcvtsi2sdq	%rax, %xmm0, %xmm0	# _1, _2
	vmovsd	.LC0(%rip), %xmm1	#, tmp93
	vdivsd	%xmm1, %xmm0, %xmm0	# tmp93, _2, _3
	vmovsd	%xmm0, -24(%rbp)	# _3, D.58966
	leaq	-24(%rbp), %rdx	#, tmp94
	leaq	-16(%rbp), %rax	#, tmp95
	movq	%rdx, %rsi	# tmp94,
	movq	%rax, %rdi	# tmp95,
	call	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IdvEERKT_	#
	vmovsd	-16(%rbp), %xmm0	# D.58967, D.62277
# /usr/include/c++/7/chrono:164: 	  }
	.loc 2 164 0
	movq	-8(%rbp), %rax	# D.63062, tmp98
	xorq	%fs:40, %rax	#, tmp98
	je	.L24	#,
	call	__stack_chk_fail@PLT	#
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5375:
	.size	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE, .-_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE
	.section	.text._ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE,"axG",@progbits,_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE,comdat
	.weak	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
	.type	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE, @function
_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE:
.LFB5374:
	.loc 2 194 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# __d, __d
# /usr/include/c++/7/chrono:203: 	return __dc::__cast(__d);
	.loc 2 203 0
	movq	-8(%rbp), %rax	# __d, tmp89
	movq	%rax, %rdi	# tmp89,
	call	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE	#
	vmovq	%xmm0, %rax	#, D.62275
	movq	%rax, -16(%rbp)	# D.62275, %sfp
	vmovsd	-16(%rbp), %xmm0	# %sfp, <retval>
# /usr/include/c++/7/chrono:204:       }
	.loc 2 204 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5374:
	.size	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE, .-_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
	.section	.text._ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE,"axG",@progbits,_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE,comdat
	.align 2
	.weak	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	.type	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE, @function
_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE:
.LFB5380:
	.loc 2 334 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# this, this
	movq	%rsi, -32(%rbp)	# __d, __d
# /usr/include/c++/7/chrono:334: 	  constexpr duration(const duration<_Rep2, _Period2>& __d)
	.loc 2 334 0
	movq	%fs:40, %rax	#, tmp93
	movq	%rax, -8(%rbp)	# tmp93, D.63064
	xorl	%eax, %eax	# tmp93
.LBB115:
# /usr/include/c++/7/chrono:335: 	  : __r(duration_cast<duration>(__d).count()) { }
	.loc 2 335 0
	movq	-32(%rbp), %rax	# __d, tmp88
	movq	%rax, %rdi	# tmp88,
	call	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE	#
	vmovq	%xmm0, %rax	#, tmp89
	movq	%rax, -40(%rbp)	# tmp89, %sfp
	vmovsd	-40(%rbp), %xmm0	# %sfp, tmp90
	vmovsd	%xmm0, -16(%rbp)	# tmp90, D.58978
	leaq	-16(%rbp), %rax	#, tmp91
	movq	%rax, %rdi	# tmp91,
	call	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv	#
	vmovq	%xmm0, %rdx	#, _1
	movq	-24(%rbp), %rax	# this, tmp92
	movq	%rdx, (%rax)	# _1, this_3(D)->__r
.LBE115:
	nop
	movq	-8(%rbp), %rax	# D.63064, tmp94
	xorq	%fs:40, %rax	#, tmp94
	je	.L28	#,
	call	__stack_chk_fail@PLT	#
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5380:
	.size	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE, .-_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	.section	.rodata
.LC4:
	.string	"\t"
.LC5:
	.string	"\t\t"
	.text
	.globl	main
	.type	main, @function
main:
.LFB5367:
	.file 3 "mem_bw_final.cpp"
	.loc 3 11 0
	.cfi_startproc
	leaq	8(%rsp), %r10	#,
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp	#,
	pushq	-8(%r10)	#
	pushq	%rbp	#
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp	#,
	pushq	%r15	#
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%r10	#
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx	#
	subq	$864, %rsp	#,
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movl	%edi, -820(%rbp)	# argc, argc
	movq	%rsi, -832(%rbp)	# argv, argv
# mem_bw_final.cpp:11: {
	.loc 3 11 0
	movq	%fs:40, %rax	#, tmp1512
	movq	%rax, -56(%rbp)	# tmp1512, D.63066
	xorl	%eax, %eax	# tmp1512
# mem_bw_final.cpp:13: 	int loop_count = 100000;
	.loc 3 13 0
	movl	$100000, -544(%rbp)	#, loop_count
# mem_bw_final.cpp:16: 	chrono::time_point<system_clock> clock_start, clock_end;
	.loc 3 16 0
	movq	$0, -536(%rbp)	#, clock_start.__d.__r
	movq	$0, -528(%rbp)	#, clock_end.__d.__r
# mem_bw_final.cpp:21: 	long data_size = atoi(argv[1]);					//input size is considered to taken in KBytes
	.loc 3 21 0
	movq	-832(%rbp), %rax	# argv, tmp412
	addq	$8, %rax	#, _1
	movq	(%rax), %rax	# *_1, _2
	movq	%rax, %rdi	# _2,
	call	atoi@PLT	#
	cltq
	movq	%rax, -504(%rbp)	# tmp413, data_size
# mem_bw_final.cpp:23: 	long data_size_in_bytes = data_size * 1024;			//convertion into bytes 
	.loc 3 23 0
	movq	-504(%rbp), %rax	# data_size, tmp417
	salq	$10, %rax	#, tmp416
	movq	%rax, -496(%rbp)	# tmp416, data_size_in_bytes
# mem_bw_final.cpp:25: 	long data_size_in_bits = 8 * data_size_in_bytes;	        //convertion into bits
	.loc 3 25 0
	movq	-496(%rbp), %rax	# data_size_in_bytes, tmp421
	salq	$3, %rax	#, tmp420
	movq	%rax, -488(%rbp)	# tmp420, data_size_in_bits
# mem_bw_final.cpp:27: 	long num_of_feeds = data_size_in_bits / 256;		        //Finding number of 256-bit data that can be feeded with give input size
	.loc 3 27 0
	movq	-488(%rbp), %rax	# data_size_in_bits, tmp423
	leaq	255(%rax), %rdx	#, tmp425
	testq	%rax, %rax	# tmp424
	cmovs	%rdx, %rax	# tmp425,, tmp424
	sarq	$8, %rax	#, tmp426
	movq	%rax, -480(%rbp)	# tmp426, num_of_feeds
.LBB116:
# mem_bw_final.cpp:29: #pragma omp parallel
	.loc 3 29 0
	movl	-540(%rbp), %eax	# thread_count, tmp427
	movl	%eax, -128(%rbp)	# tmp427, .omp_data_o.11.thread_count
	leaq	-128(%rbp), %rax	#, tmp428
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rsi	# tmp428,
	leaq	main._omp_fn.0(%rip), %rdi	#,
	call	GOMP_parallel@PLT	#
	movl	-128(%rbp), %eax	# .omp_data_o.11.thread_count, tmp429
	movl	%eax, -540(%rbp)	# tmp429, thread_count
.LBE116:
# mem_bw_final.cpp:34: 	inputs = (__m256i * *)malloc(sizeof(__m256i*) * thread_count);
	.loc 3 34 0
	movl	-540(%rbp), %eax	# thread_count, tmp430
	cltq
	salq	$3, %rax	#, _5
	movq	%rax, %rdi	# _5,
	call	malloc@PLT	#
	movq	%rax, -472(%rbp)	# tmp431, inputs
# mem_bw_final.cpp:35: 	copies = (__m256i * *)malloc(sizeof(__m256i*) * thread_count);
	.loc 3 35 0
	movl	-540(%rbp), %eax	# thread_count, tmp432
	cltq
	salq	$3, %rax	#, _7
	movq	%rax, %rdi	# _7,
	call	malloc@PLT	#
	movq	%rax, -464(%rbp)	# tmp433, copies
.LBB117:
# mem_bw_final.cpp:37: 	for (int i = 0; i < thread_count; i++)
	.loc 3 37 0
	movl	$0, -548(%rbp)	#, i
.L31:
# mem_bw_final.cpp:37: 	for (int i = 0; i < thread_count; i++)
	.loc 3 37 0 is_stmt 0 discriminator 3
	movl	-548(%rbp), %eax	# i, tmp434
	cmpl	-540(%rbp), %eax	# thread_count, tmp434
	jge	.L30	#,
# mem_bw_final.cpp:39: 		inputs[i] = (__m256i*)_mm_malloc(sizeof(__m256i) * (num_of_feeds), 256);
	.loc 3 39 0 is_stmt 1 discriminator 2
	movq	-480(%rbp), %rax	# num_of_feeds, num_of_feeds.0_8
	salq	$5, %rax	#, _9
	movl	-548(%rbp), %edx	# i, tmp435
	movslq	%edx, %rdx	# tmp435, _10
	leaq	0(,%rdx,8), %rcx	#, _11
	movq	-472(%rbp), %rdx	# inputs, tmp436
	leaq	(%rcx,%rdx), %rbx	#, _12
	movl	$256, %esi	#,
	movq	%rax, %rdi	# _9,
	call	_ZL10_mm_mallocmm	#
	movq	%rax, (%rbx)	# _13, *_12
# mem_bw_final.cpp:40: 		copies[i] = (__m256i*)_mm_malloc(sizeof(__m256i) * (num_of_feeds), 256);
	.loc 3 40 0 discriminator 2
	movq	-480(%rbp), %rax	# num_of_feeds, num_of_feeds.1_14
	salq	$5, %rax	#, _15
	movl	-548(%rbp), %edx	# i, tmp437
	movslq	%edx, %rdx	# tmp437, _16
	leaq	0(,%rdx,8), %rcx	#, _17
	movq	-464(%rbp), %rdx	# copies, tmp438
	leaq	(%rcx,%rdx), %rbx	#, _18
	movl	$256, %esi	#,
	movq	%rax, %rdi	# _15,
	call	_ZL10_mm_mallocmm	#
	movq	%rax, (%rbx)	# _19, *_18
# mem_bw_final.cpp:37: 	for (int i = 0; i < thread_count; i++)
	.loc 3 37 0 discriminator 2
	addl	$1, -548(%rbp)	#, i
	jmp	.L31	#
.L30:
.LBE117:
.LBB118:
# mem_bw_final.cpp:44: #pragma omp parallel default(shared) private(thread_id)
	.loc 3 44 0
	movq	-480(%rbp), %rax	# num_of_feeds, tmp439
	movq	%rax, -120(%rbp)	# tmp439, .omp_data_o.12.num_of_feeds
	movq	-472(%rbp), %rax	# inputs, tmp440
	movq	%rax, -128(%rbp)	# tmp440, .omp_data_o.12.inputs
	leaq	-128(%rbp), %rax	#, tmp441
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rsi	# tmp441,
	leaq	main._omp_fn.1(%rip), %rdi	#,
	call	GOMP_parallel@PLT	#
	movb	$0, -581(%rbp)	#, __A
.LBE118:
.LBB119:
.LBB120:
# /usr/lib/gcc/x86_64-linux-gnu/7/include/avxintrin.h:1334:   return _mm256_set_epi8 (__A, __A, __A, __A, __A, __A, __A, __A,
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/7/include/avxintrin.h"
	.loc 4 1334 0
	movsbl	-581(%rbp), %eax	# __A, _640
	movl	%eax, -840(%rbp)	# _640, %sfp
	movsbl	-581(%rbp), %ebx	# __A, _641
	movl	%ebx, -844(%rbp)	# _641, %sfp
	movsbl	-581(%rbp), %ecx	# __A, _642
	movl	%ecx, -848(%rbp)	# _642, %sfp
	movsbl	-581(%rbp), %esi	# __A, _643
	movl	%esi, -824(%rbp)	# _643, %sfp
	movsbl	-581(%rbp), %edi	# __A, _644
	movl	%edi, -852(%rbp)	# _644, %sfp
	movsbl	-581(%rbp), %edx	# __A, _645
	movl	%edx, -856(%rbp)	# _645, %sfp
	movsbl	-581(%rbp), %r8d	# __A, _646
	movl	%r8d, -860(%rbp)	# _646, %sfp
	movsbl	-581(%rbp), %r9d	# __A, _647
	movl	%r9d, -864(%rbp)	# _647, %sfp
	movsbl	-581(%rbp), %r10d	# __A, _648
	movl	%r10d, -868(%rbp)	# _648, %sfp
	movsbl	-581(%rbp), %r11d	# __A, _649
	movl	%r11d, -872(%rbp)	# _649, %sfp
	movsbl	-581(%rbp), %r14d	# __A, _650
	movl	%r14d, -876(%rbp)	# _650, %sfp
	movsbl	-581(%rbp), %r15d	# __A, _651
	movl	%r15d, -880(%rbp)	# _651, %sfp
	movsbl	-581(%rbp), %r12d	# __A, _652
	movl	%r12d, -884(%rbp)	# _652, %sfp
	movsbl	-581(%rbp), %r13d	# __A, _653
	movl	%r13d, -888(%rbp)	# _653, %sfp
	movsbl	-581(%rbp), %eax	# __A, _654
	movl	%eax, -892(%rbp)	# _654, %sfp
	movsbl	-581(%rbp), %ebx	# __A, _655
	movl	%ebx, -896(%rbp)	# _655, %sfp
	movsbl	-581(%rbp), %ecx	# __A, _656
	movl	%ecx, -900(%rbp)	# _656, %sfp
	movsbl	-581(%rbp), %esi	# __A, _657
	movl	%esi, -904(%rbp)	# _657, %sfp
	movsbl	-581(%rbp), %r15d	# __A, _658
	movsbl	-581(%rbp), %r14d	# __A, _659
	movsbl	-581(%rbp), %r13d	# __A, _660
	movsbl	-581(%rbp), %r12d	# __A, _661
	movsbl	-581(%rbp), %ebx	# __A, _662
	movsbl	-581(%rbp), %r11d	# __A, _663
	movsbl	-581(%rbp), %r10d	# __A, _664
	movsbl	-581(%rbp), %r9d	# __A, _665
	movsbl	-581(%rbp), %r8d	# __A, _666
	movsbl	-581(%rbp), %edi	# __A, _667
	movsbl	-581(%rbp), %esi	# __A, _668
	movsbl	-581(%rbp), %ecx	# __A, _669
	movsbl	-581(%rbp), %edx	# __A, _670
	movsbl	-581(%rbp), %eax	# __A, _671
	movb	%al, -580(%rbp)	# _671, __q31
	movb	%dl, -579(%rbp)	# _670, __q30
	movb	%cl, -578(%rbp)	# _669, __q29
	movb	%sil, -577(%rbp)	# _668, __q28
	movb	%dil, -576(%rbp)	# _667, __q27
	movb	%r8b, -575(%rbp)	# _666, __q26
	movb	%r9b, -574(%rbp)	# _665, __q25
	movb	%r10b, -573(%rbp)	# _664, __q24
	movb	%r11b, -572(%rbp)	# _663, __q23
	movb	%bl, -571(%rbp)	# _662, __q22
	movb	%r12b, -570(%rbp)	# _661, __q21
	movb	%r13b, -569(%rbp)	# _660, __q20
	movb	%r14b, -568(%rbp)	# _659, __q19
	movb	%r15b, -567(%rbp)	# _658, __q18
	movzbl	-904(%rbp), %esi	# %sfp, tmp1532
	movb	%sil, -566(%rbp)	# tmp1532, __q17
	movzbl	-900(%rbp), %ecx	# %sfp, tmp1533
	movb	%cl, -565(%rbp)	# tmp1533, __q16
	movzbl	-896(%rbp), %ebx	# %sfp, tmp1534
	movb	%bl, -564(%rbp)	# tmp1534, __q15
	movzbl	-892(%rbp), %eax	# %sfp, tmp1535
	movb	%al, -563(%rbp)	# tmp1535, __q14
	movzbl	-888(%rbp), %r13d	# %sfp, tmp1536
	movb	%r13b, -562(%rbp)	# tmp1536, __q13
	movzbl	-884(%rbp), %r12d	# %sfp, tmp1537
	movb	%r12b, -561(%rbp)	# tmp1537, __q12
	movzbl	-880(%rbp), %r15d	# %sfp, tmp1538
	movb	%r15b, -560(%rbp)	# tmp1538, __q11
	movzbl	-876(%rbp), %r14d	# %sfp, tmp1539
	movb	%r14b, -559(%rbp)	# tmp1539, __q10
	movzbl	-872(%rbp), %r11d	# %sfp, tmp1540
	movb	%r11b, -558(%rbp)	# tmp1540, __q09
	movzbl	-868(%rbp), %r10d	# %sfp, tmp1541
	movb	%r10b, -557(%rbp)	# tmp1541, __q08
	movzbl	-864(%rbp), %r9d	# %sfp, tmp1542
	movb	%r9b, -556(%rbp)	# tmp1542, __q07
	movzbl	-860(%rbp), %r8d	# %sfp, tmp1543
	movb	%r8b, -555(%rbp)	# tmp1543, __q06
	movzbl	-856(%rbp), %edx	# %sfp, tmp1544
	movb	%dl, -554(%rbp)	# tmp1544, __q05
	movzbl	-852(%rbp), %edi	# %sfp, tmp1545
	movb	%dil, -553(%rbp)	# tmp1545, __q04
	movzbl	-824(%rbp), %esi	# %sfp, tmp1546
	movb	%sil, -552(%rbp)	# tmp1546, __q03
	movzbl	-848(%rbp), %ecx	# %sfp, tmp1547
	movb	%cl, -551(%rbp)	# tmp1547, __q02
	movzbl	-844(%rbp), %ebx	# %sfp, tmp1548
	movb	%bl, -550(%rbp)	# tmp1548, __q01
	movzbl	-840(%rbp), %eax	# %sfp, tmp1549
	movb	%al, -549(%rbp)	# tmp1549, __q00
.LBB121:
.LBB122:
# /usr/lib/gcc/x86_64-linux-gnu/7/include/avxintrin.h:1286:   return __extension__ (__m256i)(__v32qi){
	.loc 4 1286 0
	movzbl	-549(%rbp), %eax	# __q00, tmp446
	movl	%eax, -840(%rbp)	# tmp446, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp447
	movzbl	-550(%rbp), %eax	# __q01, tmp449
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp449, tmp448, tmp448
	vmovdqa	%xmm0, %xmm1	# tmp448, tmp450
	movzbl	-551(%rbp), %eax	# __q02, tmp452
	movl	%eax, -840(%rbp)	# tmp452, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp453
	movzbl	-552(%rbp), %eax	# __q03, tmp455
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp455, tmp454, tmp454
	vmovdqa	%xmm0, %xmm8	# tmp454, tmp456
	movzbl	-553(%rbp), %eax	# __q04, tmp458
	movl	%eax, -840(%rbp)	# tmp458, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp459
	movzbl	-554(%rbp), %eax	# __q05, tmp461
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp461, tmp460, tmp460
	vmovdqa	%xmm0, %xmm4	# tmp460, tmp462
	movzbl	-555(%rbp), %eax	# __q06, tmp464
	movl	%eax, -840(%rbp)	# tmp464, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp465
	movzbl	-556(%rbp), %eax	# __q07, tmp467
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp467, tmp466, tmp466
	vmovdqa	%xmm0, %xmm7	# tmp466, tmp468
	movzbl	-557(%rbp), %eax	# __q08, tmp470
	movl	%eax, -840(%rbp)	# tmp470, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp471
	movzbl	-558(%rbp), %eax	# __q09, tmp473
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp473, tmp472, tmp472
	vmovdqa	%xmm0, %xmm2	# tmp472, tmp474
	movzbl	-559(%rbp), %eax	# __q10, tmp476
	movl	%eax, -840(%rbp)	# tmp476, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp477
	movzbl	-560(%rbp), %eax	# __q11, tmp479
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp479, tmp478, tmp478
	vmovdqa	%xmm0, %xmm6	# tmp478, tmp480
	movzbl	-561(%rbp), %eax	# __q12, tmp482
	movl	%eax, -840(%rbp)	# tmp482, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp483
	movzbl	-562(%rbp), %eax	# __q13, tmp485
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp485, tmp484, tmp484
	vmovdqa	%xmm0, %xmm3	# tmp484, tmp486
	movzbl	-563(%rbp), %eax	# __q14, tmp488
	movl	%eax, -840(%rbp)	# tmp488, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp489
	movzbl	-564(%rbp), %eax	# __q15, tmp491
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp491, tmp490, tmp490
	vmovdqa	%xmm0, %xmm5	# tmp490, tmp492
	vpunpcklwd	%xmm8, %xmm1, %xmm0	# tmp456, tmp450, tmp493
	vmovdqa	%xmm0, %xmm1	# tmp493, tmp494
	vpunpcklwd	%xmm7, %xmm4, %xmm0	# tmp468, tmp462, tmp495
	vmovdqa	%xmm0, %xmm4	# tmp495, tmp496
	vpunpcklwd	%xmm6, %xmm2, %xmm0	# tmp480, tmp474, tmp497
	vmovdqa	%xmm0, %xmm2	# tmp497, tmp498
	vpunpcklwd	%xmm5, %xmm3, %xmm0	# tmp492, tmp486, tmp499
	vmovdqa	%xmm0, %xmm3	# tmp499, tmp500
	vpunpckldq	%xmm4, %xmm1, %xmm0	# tmp496, tmp494, tmp501
	vmovdqa	%xmm0, %xmm1	# tmp501, tmp502
	vpunpckldq	%xmm3, %xmm2, %xmm0	# tmp500, tmp498, tmp503
	vpunpcklqdq	%xmm0, %xmm1, %xmm0	# tmp504, tmp502, tmp505
	vmovdqa	%xmm0, %xmm1	# tmp505, tmp443
	movzbl	-565(%rbp), %eax	# __q16, tmp507
	movl	%eax, -840(%rbp)	# tmp507, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp508
	movzbl	-566(%rbp), %eax	# __q17, tmp510
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp510, tmp509, tmp509
	vmovdqa	%xmm0, %xmm2	# tmp509, tmp511
	movzbl	-567(%rbp), %eax	# __q18, tmp513
	movl	%eax, -840(%rbp)	# tmp513, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp514
	movzbl	-568(%rbp), %eax	# __q19, tmp516
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp516, tmp515, tmp515
	vmovdqa	%xmm0, %xmm9	# tmp515, tmp517
	movzbl	-569(%rbp), %eax	# __q20, tmp519
	movl	%eax, -840(%rbp)	# tmp519, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp520
	movzbl	-570(%rbp), %eax	# __q21, tmp522
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp522, tmp521, tmp521
	vmovdqa	%xmm0, %xmm5	# tmp521, tmp523
	movzbl	-571(%rbp), %eax	# __q22, tmp525
	movl	%eax, -840(%rbp)	# tmp525, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp526
	movzbl	-572(%rbp), %eax	# __q23, tmp528
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp528, tmp527, tmp527
	vmovdqa	%xmm0, %xmm8	# tmp527, tmp529
	movzbl	-573(%rbp), %eax	# __q24, tmp531
	movl	%eax, -840(%rbp)	# tmp531, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp532
	movzbl	-574(%rbp), %eax	# __q25, tmp534
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp534, tmp533, tmp533
	vmovdqa	%xmm0, %xmm3	# tmp533, tmp535
	movzbl	-575(%rbp), %eax	# __q26, tmp537
	movl	%eax, -840(%rbp)	# tmp537, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp538
	movzbl	-576(%rbp), %eax	# __q27, tmp540
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp540, tmp539, tmp539
	vmovdqa	%xmm0, %xmm7	# tmp539, tmp541
	movzbl	-577(%rbp), %eax	# __q28, tmp543
	movl	%eax, -840(%rbp)	# tmp543, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp544
	movzbl	-578(%rbp), %eax	# __q29, tmp546
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp546, tmp545, tmp545
	vmovdqa	%xmm0, %xmm4	# tmp545, tmp547
	movzbl	-579(%rbp), %eax	# __q30, tmp549
	movl	%eax, -840(%rbp)	# tmp549, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp550
	movzbl	-580(%rbp), %eax	# __q31, tmp552
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp552, tmp551, tmp551
	vmovdqa	%xmm0, %xmm6	# tmp551, tmp553
	vpunpcklwd	%xmm9, %xmm2, %xmm0	# tmp517, tmp511, tmp554
	vmovdqa	%xmm0, %xmm2	# tmp554, tmp555
	vpunpcklwd	%xmm8, %xmm5, %xmm0	# tmp529, tmp523, tmp556
	vmovdqa	%xmm0, %xmm5	# tmp556, tmp557
	vpunpcklwd	%xmm7, %xmm3, %xmm0	# tmp541, tmp535, tmp558
	vmovdqa	%xmm0, %xmm3	# tmp558, tmp559
	vpunpcklwd	%xmm6, %xmm4, %xmm0	# tmp553, tmp547, tmp560
	vmovdqa	%xmm0, %xmm4	# tmp560, tmp561
	vpunpckldq	%xmm5, %xmm2, %xmm0	# tmp557, tmp555, tmp562
	vmovdqa	%xmm0, %xmm2	# tmp562, tmp563
	vpunpckldq	%xmm4, %xmm3, %xmm0	# tmp561, tmp559, tmp564
	vpunpcklqdq	%xmm0, %xmm2, %xmm0	# tmp565, tmp563, tmp566
	vinserti128	$0x1, %xmm0, %ymm1, %ymm0	# tmp444, tmp443, tmp442
.LBE122:
.LBE121:
.LBE120:
.LBE119:
# mem_bw_final.cpp:54: 	__m256i sum_res = _mm256_set1_epi8(0);
	.loc 3 54 0
	vmovdqa	%ymm0, -368(%rbp)	# D.63053, sum_res
	movb	$0, -614(%rbp)	#, __A
.LBB123:
.LBB124:
# /usr/lib/gcc/x86_64-linux-gnu/7/include/avxintrin.h:1334:   return _mm256_set_epi8 (__A, __A, __A, __A, __A, __A, __A, __A,
	.loc 4 1334 0
	movsbl	-614(%rbp), %eax	# __A, _571
	movl	%eax, -840(%rbp)	# _571, %sfp
	movsbl	-614(%rbp), %ebx	# __A, _572
	movl	%ebx, -844(%rbp)	# _572, %sfp
	movsbl	-614(%rbp), %ecx	# __A, _573
	movl	%ecx, -848(%rbp)	# _573, %sfp
	movsbl	-614(%rbp), %esi	# __A, _574
	movl	%esi, -824(%rbp)	# _574, %sfp
	movsbl	-614(%rbp), %edi	# __A, _575
	movl	%edi, -852(%rbp)	# _575, %sfp
	movsbl	-614(%rbp), %edx	# __A, _576
	movl	%edx, -856(%rbp)	# _576, %sfp
	movsbl	-614(%rbp), %r8d	# __A, _577
	movl	%r8d, -860(%rbp)	# _577, %sfp
	movsbl	-614(%rbp), %r9d	# __A, _578
	movl	%r9d, -864(%rbp)	# _578, %sfp
	movsbl	-614(%rbp), %r10d	# __A, _579
	movl	%r10d, -868(%rbp)	# _579, %sfp
	movsbl	-614(%rbp), %r11d	# __A, _580
	movl	%r11d, -872(%rbp)	# _580, %sfp
	movsbl	-614(%rbp), %r14d	# __A, _581
	movl	%r14d, -876(%rbp)	# _581, %sfp
	movsbl	-614(%rbp), %r15d	# __A, _582
	movl	%r15d, -880(%rbp)	# _582, %sfp
	movsbl	-614(%rbp), %r12d	# __A, _583
	movl	%r12d, -884(%rbp)	# _583, %sfp
	movsbl	-614(%rbp), %r13d	# __A, _584
	movl	%r13d, -888(%rbp)	# _584, %sfp
	movsbl	-614(%rbp), %eax	# __A, _585
	movl	%eax, -892(%rbp)	# _585, %sfp
	movsbl	-614(%rbp), %ebx	# __A, _586
	movl	%ebx, -896(%rbp)	# _586, %sfp
	movsbl	-614(%rbp), %ecx	# __A, _587
	movl	%ecx, -900(%rbp)	# _587, %sfp
	movsbl	-614(%rbp), %esi	# __A, _588
	movl	%esi, -904(%rbp)	# _588, %sfp
	movsbl	-614(%rbp), %r15d	# __A, _589
	movsbl	-614(%rbp), %r14d	# __A, _590
	movsbl	-614(%rbp), %r13d	# __A, _591
	movsbl	-614(%rbp), %r12d	# __A, _592
	movsbl	-614(%rbp), %ebx	# __A, _593
	movsbl	-614(%rbp), %r11d	# __A, _594
	movsbl	-614(%rbp), %r10d	# __A, _595
	movsbl	-614(%rbp), %r9d	# __A, _596
	movsbl	-614(%rbp), %r8d	# __A, _597
	movsbl	-614(%rbp), %edi	# __A, _598
	movsbl	-614(%rbp), %esi	# __A, _599
	movsbl	-614(%rbp), %ecx	# __A, _600
	movsbl	-614(%rbp), %edx	# __A, _601
	movsbl	-614(%rbp), %eax	# __A, _602
	movb	%al, -613(%rbp)	# _602, __q31
	movb	%dl, -612(%rbp)	# _601, __q30
	movb	%cl, -611(%rbp)	# _600, __q29
	movb	%sil, -610(%rbp)	# _599, __q28
	movb	%dil, -609(%rbp)	# _598, __q27
	movb	%r8b, -608(%rbp)	# _597, __q26
	movb	%r9b, -607(%rbp)	# _596, __q25
	movb	%r10b, -606(%rbp)	# _595, __q24
	movb	%r11b, -605(%rbp)	# _594, __q23
	movb	%bl, -604(%rbp)	# _593, __q22
	movb	%r12b, -603(%rbp)	# _592, __q21
	movb	%r13b, -602(%rbp)	# _591, __q20
	movb	%r14b, -601(%rbp)	# _590, __q19
	movb	%r15b, -600(%rbp)	# _589, __q18
	movzbl	-904(%rbp), %esi	# %sfp, tmp1568
	movb	%sil, -599(%rbp)	# tmp1568, __q17
	movzbl	-900(%rbp), %ecx	# %sfp, tmp1569
	movb	%cl, -598(%rbp)	# tmp1569, __q16
	movzbl	-896(%rbp), %ebx	# %sfp, tmp1570
	movb	%bl, -597(%rbp)	# tmp1570, __q15
	movzbl	-892(%rbp), %eax	# %sfp, tmp1571
	movb	%al, -596(%rbp)	# tmp1571, __q14
	movzbl	-888(%rbp), %r13d	# %sfp, tmp1572
	movb	%r13b, -595(%rbp)	# tmp1572, __q13
	movzbl	-884(%rbp), %r12d	# %sfp, tmp1573
	movb	%r12b, -594(%rbp)	# tmp1573, __q12
	movzbl	-880(%rbp), %r15d	# %sfp, tmp1574
	movb	%r15b, -593(%rbp)	# tmp1574, __q11
	movzbl	-876(%rbp), %r14d	# %sfp, tmp1575
	movb	%r14b, -592(%rbp)	# tmp1575, __q10
	movzbl	-872(%rbp), %r11d	# %sfp, tmp1576
	movb	%r11b, -591(%rbp)	# tmp1576, __q09
	movzbl	-868(%rbp), %r10d	# %sfp, tmp1577
	movb	%r10b, -590(%rbp)	# tmp1577, __q08
	movzbl	-864(%rbp), %r9d	# %sfp, tmp1578
	movb	%r9b, -589(%rbp)	# tmp1578, __q07
	movzbl	-860(%rbp), %r8d	# %sfp, tmp1579
	movb	%r8b, -588(%rbp)	# tmp1579, __q06
	movzbl	-856(%rbp), %edx	# %sfp, tmp1580
	movb	%dl, -587(%rbp)	# tmp1580, __q05
	movzbl	-852(%rbp), %edi	# %sfp, tmp1581
	movb	%dil, -586(%rbp)	# tmp1581, __q04
	movzbl	-824(%rbp), %esi	# %sfp, tmp1582
	movb	%sil, -585(%rbp)	# tmp1582, __q03
	movzbl	-848(%rbp), %ecx	# %sfp, tmp1583
	movb	%cl, -584(%rbp)	# tmp1583, __q02
	movzbl	-844(%rbp), %ebx	# %sfp, tmp1584
	movb	%bl, -583(%rbp)	# tmp1584, __q01
	movzbl	-840(%rbp), %eax	# %sfp, tmp1585
	movb	%al, -582(%rbp)	# tmp1585, __q00
.LBB125:
.LBB126:
# /usr/lib/gcc/x86_64-linux-gnu/7/include/avxintrin.h:1286:   return __extension__ (__m256i)(__v32qi){
	.loc 4 1286 0
	movzbl	-582(%rbp), %eax	# __q00, tmp571
	movl	%eax, -840(%rbp)	# tmp571, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp572
	movzbl	-583(%rbp), %eax	# __q01, tmp574
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp574, tmp573, tmp573
	vmovdqa	%xmm0, %xmm1	# tmp573, tmp575
	movzbl	-584(%rbp), %eax	# __q02, tmp577
	movl	%eax, -840(%rbp)	# tmp577, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp578
	movzbl	-585(%rbp), %eax	# __q03, tmp580
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp580, tmp579, tmp579
	vmovdqa	%xmm0, %xmm8	# tmp579, tmp581
	movzbl	-586(%rbp), %eax	# __q04, tmp583
	movl	%eax, -840(%rbp)	# tmp583, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp584
	movzbl	-587(%rbp), %eax	# __q05, tmp586
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp586, tmp585, tmp585
	vmovdqa	%xmm0, %xmm4	# tmp585, tmp587
	movzbl	-588(%rbp), %eax	# __q06, tmp589
	movl	%eax, -840(%rbp)	# tmp589, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp590
	movzbl	-589(%rbp), %eax	# __q07, tmp592
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp592, tmp591, tmp591
	vmovdqa	%xmm0, %xmm7	# tmp591, tmp593
	movzbl	-590(%rbp), %eax	# __q08, tmp595
	movl	%eax, -840(%rbp)	# tmp595, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp596
	movzbl	-591(%rbp), %eax	# __q09, tmp598
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp598, tmp597, tmp597
	vmovdqa	%xmm0, %xmm2	# tmp597, tmp599
	movzbl	-592(%rbp), %eax	# __q10, tmp601
	movl	%eax, -840(%rbp)	# tmp601, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp602
	movzbl	-593(%rbp), %eax	# __q11, tmp604
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp604, tmp603, tmp603
	vmovdqa	%xmm0, %xmm6	# tmp603, tmp605
	movzbl	-594(%rbp), %eax	# __q12, tmp607
	movl	%eax, -840(%rbp)	# tmp607, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp608
	movzbl	-595(%rbp), %eax	# __q13, tmp610
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp610, tmp609, tmp609
	vmovdqa	%xmm0, %xmm3	# tmp609, tmp611
	movzbl	-596(%rbp), %eax	# __q14, tmp613
	movl	%eax, -840(%rbp)	# tmp613, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp614
	movzbl	-597(%rbp), %eax	# __q15, tmp616
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp616, tmp615, tmp615
	vmovdqa	%xmm0, %xmm5	# tmp615, tmp617
	vpunpcklwd	%xmm8, %xmm1, %xmm0	# tmp581, tmp575, tmp618
	vmovdqa	%xmm0, %xmm1	# tmp618, tmp619
	vpunpcklwd	%xmm7, %xmm4, %xmm0	# tmp593, tmp587, tmp620
	vmovdqa	%xmm0, %xmm4	# tmp620, tmp621
	vpunpcklwd	%xmm6, %xmm2, %xmm0	# tmp605, tmp599, tmp622
	vmovdqa	%xmm0, %xmm2	# tmp622, tmp623
	vpunpcklwd	%xmm5, %xmm3, %xmm0	# tmp617, tmp611, tmp624
	vmovdqa	%xmm0, %xmm3	# tmp624, tmp625
	vpunpckldq	%xmm4, %xmm1, %xmm0	# tmp621, tmp619, tmp626
	vmovdqa	%xmm0, %xmm1	# tmp626, tmp627
	vpunpckldq	%xmm3, %xmm2, %xmm0	# tmp625, tmp623, tmp628
	vpunpcklqdq	%xmm0, %xmm1, %xmm0	# tmp629, tmp627, tmp630
	vmovdqa	%xmm0, %xmm1	# tmp630, tmp568
	movzbl	-598(%rbp), %eax	# __q16, tmp632
	movl	%eax, -840(%rbp)	# tmp632, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp633
	movzbl	-599(%rbp), %eax	# __q17, tmp635
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp635, tmp634, tmp634
	vmovdqa	%xmm0, %xmm2	# tmp634, tmp636
	movzbl	-600(%rbp), %eax	# __q18, tmp638
	movl	%eax, -840(%rbp)	# tmp638, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp639
	movzbl	-601(%rbp), %eax	# __q19, tmp641
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp641, tmp640, tmp640
	vmovdqa	%xmm0, %xmm9	# tmp640, tmp642
	movzbl	-602(%rbp), %eax	# __q20, tmp644
	movl	%eax, -840(%rbp)	# tmp644, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp645
	movzbl	-603(%rbp), %eax	# __q21, tmp647
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp647, tmp646, tmp646
	vmovdqa	%xmm0, %xmm5	# tmp646, tmp648
	movzbl	-604(%rbp), %eax	# __q22, tmp650
	movl	%eax, -840(%rbp)	# tmp650, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp651
	movzbl	-605(%rbp), %eax	# __q23, tmp653
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp653, tmp652, tmp652
	vmovdqa	%xmm0, %xmm8	# tmp652, tmp654
	movzbl	-606(%rbp), %eax	# __q24, tmp656
	movl	%eax, -840(%rbp)	# tmp656, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp657
	movzbl	-607(%rbp), %eax	# __q25, tmp659
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp659, tmp658, tmp658
	vmovdqa	%xmm0, %xmm3	# tmp658, tmp660
	movzbl	-608(%rbp), %eax	# __q26, tmp662
	movl	%eax, -840(%rbp)	# tmp662, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp663
	movzbl	-609(%rbp), %eax	# __q27, tmp665
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp665, tmp664, tmp664
	vmovdqa	%xmm0, %xmm7	# tmp664, tmp666
	movzbl	-610(%rbp), %eax	# __q28, tmp668
	movl	%eax, -840(%rbp)	# tmp668, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp669
	movzbl	-611(%rbp), %eax	# __q29, tmp671
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp671, tmp670, tmp670
	vmovdqa	%xmm0, %xmm4	# tmp670, tmp672
	movzbl	-612(%rbp), %eax	# __q30, tmp674
	movl	%eax, -840(%rbp)	# tmp674, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp675
	movzbl	-613(%rbp), %eax	# __q31, tmp677
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp677, tmp676, tmp676
	vmovdqa	%xmm0, %xmm6	# tmp676, tmp678
	vpunpcklwd	%xmm9, %xmm2, %xmm0	# tmp642, tmp636, tmp679
	vmovdqa	%xmm0, %xmm2	# tmp679, tmp680
	vpunpcklwd	%xmm8, %xmm5, %xmm0	# tmp654, tmp648, tmp681
	vmovdqa	%xmm0, %xmm5	# tmp681, tmp682
	vpunpcklwd	%xmm7, %xmm3, %xmm0	# tmp666, tmp660, tmp683
	vmovdqa	%xmm0, %xmm3	# tmp683, tmp684
	vpunpcklwd	%xmm6, %xmm4, %xmm0	# tmp678, tmp672, tmp685
	vmovdqa	%xmm0, %xmm4	# tmp685, tmp686
	vpunpckldq	%xmm5, %xmm2, %xmm0	# tmp682, tmp680, tmp687
	vmovdqa	%xmm0, %xmm2	# tmp687, tmp688
	vpunpckldq	%xmm4, %xmm3, %xmm0	# tmp686, tmp684, tmp689
	vpunpcklqdq	%xmm0, %xmm2, %xmm0	# tmp690, tmp688, tmp691
	vinserti128	$0x1, %xmm0, %ymm1, %ymm0	# tmp569, tmp568, tmp567
.LBE126:
.LBE125:
.LBE124:
.LBE123:
# mem_bw_final.cpp:55: 	__m256i sum_res1 = _mm256_set1_epi8(0);
	.loc 3 55 0
	vmovdqa	%ymm0, -336(%rbp)	# D.63014, sum_res1
	movb	$0, -647(%rbp)	#, __A
.LBB127:
.LBB128:
# /usr/lib/gcc/x86_64-linux-gnu/7/include/avxintrin.h:1334:   return _mm256_set_epi8 (__A, __A, __A, __A, __A, __A, __A, __A,
	.loc 4 1334 0
	movsbl	-647(%rbp), %eax	# __A, _502
	movl	%eax, -840(%rbp)	# _502, %sfp
	movsbl	-647(%rbp), %ebx	# __A, _503
	movl	%ebx, -844(%rbp)	# _503, %sfp
	movsbl	-647(%rbp), %ecx	# __A, _504
	movl	%ecx, -848(%rbp)	# _504, %sfp
	movsbl	-647(%rbp), %esi	# __A, _505
	movl	%esi, -824(%rbp)	# _505, %sfp
	movsbl	-647(%rbp), %edi	# __A, _506
	movl	%edi, -852(%rbp)	# _506, %sfp
	movsbl	-647(%rbp), %edx	# __A, _507
	movl	%edx, -856(%rbp)	# _507, %sfp
	movsbl	-647(%rbp), %r8d	# __A, _508
	movl	%r8d, -860(%rbp)	# _508, %sfp
	movsbl	-647(%rbp), %r9d	# __A, _509
	movl	%r9d, -864(%rbp)	# _509, %sfp
	movsbl	-647(%rbp), %r10d	# __A, _510
	movl	%r10d, -868(%rbp)	# _510, %sfp
	movsbl	-647(%rbp), %r11d	# __A, _511
	movl	%r11d, -872(%rbp)	# _511, %sfp
	movsbl	-647(%rbp), %r14d	# __A, _512
	movl	%r14d, -876(%rbp)	# _512, %sfp
	movsbl	-647(%rbp), %r15d	# __A, _513
	movl	%r15d, -880(%rbp)	# _513, %sfp
	movsbl	-647(%rbp), %r12d	# __A, _514
	movl	%r12d, -884(%rbp)	# _514, %sfp
	movsbl	-647(%rbp), %r13d	# __A, _515
	movl	%r13d, -888(%rbp)	# _515, %sfp
	movsbl	-647(%rbp), %eax	# __A, _516
	movl	%eax, -892(%rbp)	# _516, %sfp
	movsbl	-647(%rbp), %ebx	# __A, _517
	movl	%ebx, -896(%rbp)	# _517, %sfp
	movsbl	-647(%rbp), %ecx	# __A, _518
	movl	%ecx, -900(%rbp)	# _518, %sfp
	movsbl	-647(%rbp), %esi	# __A, _519
	movl	%esi, -904(%rbp)	# _519, %sfp
	movsbl	-647(%rbp), %r15d	# __A, _520
	movsbl	-647(%rbp), %r14d	# __A, _521
	movsbl	-647(%rbp), %r13d	# __A, _522
	movsbl	-647(%rbp), %r12d	# __A, _523
	movsbl	-647(%rbp), %ebx	# __A, _524
	movsbl	-647(%rbp), %r11d	# __A, _525
	movsbl	-647(%rbp), %r10d	# __A, _526
	movsbl	-647(%rbp), %r9d	# __A, _527
	movsbl	-647(%rbp), %r8d	# __A, _528
	movsbl	-647(%rbp), %edi	# __A, _529
	movsbl	-647(%rbp), %esi	# __A, _530
	movsbl	-647(%rbp), %ecx	# __A, _531
	movsbl	-647(%rbp), %edx	# __A, _532
	movsbl	-647(%rbp), %eax	# __A, _533
	movb	%al, -646(%rbp)	# _533, __q31
	movb	%dl, -645(%rbp)	# _532, __q30
	movb	%cl, -644(%rbp)	# _531, __q29
	movb	%sil, -643(%rbp)	# _530, __q28
	movb	%dil, -642(%rbp)	# _529, __q27
	movb	%r8b, -641(%rbp)	# _528, __q26
	movb	%r9b, -640(%rbp)	# _527, __q25
	movb	%r10b, -639(%rbp)	# _526, __q24
	movb	%r11b, -638(%rbp)	# _525, __q23
	movb	%bl, -637(%rbp)	# _524, __q22
	movb	%r12b, -636(%rbp)	# _523, __q21
	movb	%r13b, -635(%rbp)	# _522, __q20
	movb	%r14b, -634(%rbp)	# _521, __q19
	movb	%r15b, -633(%rbp)	# _520, __q18
	movzbl	-904(%rbp), %esi	# %sfp, tmp1604
	movb	%sil, -632(%rbp)	# tmp1604, __q17
	movzbl	-900(%rbp), %ecx	# %sfp, tmp1605
	movb	%cl, -631(%rbp)	# tmp1605, __q16
	movzbl	-896(%rbp), %ebx	# %sfp, tmp1606
	movb	%bl, -630(%rbp)	# tmp1606, __q15
	movzbl	-892(%rbp), %eax	# %sfp, tmp1607
	movb	%al, -629(%rbp)	# tmp1607, __q14
	movzbl	-888(%rbp), %r13d	# %sfp, tmp1608
	movb	%r13b, -628(%rbp)	# tmp1608, __q13
	movzbl	-884(%rbp), %r12d	# %sfp, tmp1609
	movb	%r12b, -627(%rbp)	# tmp1609, __q12
	movzbl	-880(%rbp), %r15d	# %sfp, tmp1610
	movb	%r15b, -626(%rbp)	# tmp1610, __q11
	movzbl	-876(%rbp), %r14d	# %sfp, tmp1611
	movb	%r14b, -625(%rbp)	# tmp1611, __q10
	movzbl	-872(%rbp), %r11d	# %sfp, tmp1612
	movb	%r11b, -624(%rbp)	# tmp1612, __q09
	movzbl	-868(%rbp), %r10d	# %sfp, tmp1613
	movb	%r10b, -623(%rbp)	# tmp1613, __q08
	movzbl	-864(%rbp), %r9d	# %sfp, tmp1614
	movb	%r9b, -622(%rbp)	# tmp1614, __q07
	movzbl	-860(%rbp), %r8d	# %sfp, tmp1615
	movb	%r8b, -621(%rbp)	# tmp1615, __q06
	movzbl	-856(%rbp), %edx	# %sfp, tmp1616
	movb	%dl, -620(%rbp)	# tmp1616, __q05
	movzbl	-852(%rbp), %edi	# %sfp, tmp1617
	movb	%dil, -619(%rbp)	# tmp1617, __q04
	movzbl	-824(%rbp), %esi	# %sfp, tmp1618
	movb	%sil, -618(%rbp)	# tmp1618, __q03
	movzbl	-848(%rbp), %ecx	# %sfp, tmp1619
	movb	%cl, -617(%rbp)	# tmp1619, __q02
	movzbl	-844(%rbp), %ebx	# %sfp, tmp1620
	movb	%bl, -616(%rbp)	# tmp1620, __q01
	movzbl	-840(%rbp), %eax	# %sfp, tmp1621
	movb	%al, -615(%rbp)	# tmp1621, __q00
.LBB129:
.LBB130:
# /usr/lib/gcc/x86_64-linux-gnu/7/include/avxintrin.h:1286:   return __extension__ (__m256i)(__v32qi){
	.loc 4 1286 0
	movzbl	-615(%rbp), %eax	# __q00, tmp696
	movl	%eax, -840(%rbp)	# tmp696, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp697
	movzbl	-616(%rbp), %eax	# __q01, tmp699
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp699, tmp698, tmp698
	vmovdqa	%xmm0, %xmm1	# tmp698, tmp700
	movzbl	-617(%rbp), %eax	# __q02, tmp702
	movl	%eax, -840(%rbp)	# tmp702, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp703
	movzbl	-618(%rbp), %eax	# __q03, tmp705
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp705, tmp704, tmp704
	vmovdqa	%xmm0, %xmm8	# tmp704, tmp706
	movzbl	-619(%rbp), %eax	# __q04, tmp708
	movl	%eax, -840(%rbp)	# tmp708, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp709
	movzbl	-620(%rbp), %eax	# __q05, tmp711
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp711, tmp710, tmp710
	vmovdqa	%xmm0, %xmm4	# tmp710, tmp712
	movzbl	-621(%rbp), %eax	# __q06, tmp714
	movl	%eax, -840(%rbp)	# tmp714, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp715
	movzbl	-622(%rbp), %eax	# __q07, tmp717
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp717, tmp716, tmp716
	vmovdqa	%xmm0, %xmm7	# tmp716, tmp718
	movzbl	-623(%rbp), %eax	# __q08, tmp720
	movl	%eax, -840(%rbp)	# tmp720, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp721
	movzbl	-624(%rbp), %eax	# __q09, tmp723
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp723, tmp722, tmp722
	vmovdqa	%xmm0, %xmm2	# tmp722, tmp724
	movzbl	-625(%rbp), %eax	# __q10, tmp726
	movl	%eax, -840(%rbp)	# tmp726, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp727
	movzbl	-626(%rbp), %eax	# __q11, tmp729
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp729, tmp728, tmp728
	vmovdqa	%xmm0, %xmm6	# tmp728, tmp730
	movzbl	-627(%rbp), %eax	# __q12, tmp732
	movl	%eax, -840(%rbp)	# tmp732, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp733
	movzbl	-628(%rbp), %eax	# __q13, tmp735
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp735, tmp734, tmp734
	vmovdqa	%xmm0, %xmm3	# tmp734, tmp736
	movzbl	-629(%rbp), %eax	# __q14, tmp738
	movl	%eax, -840(%rbp)	# tmp738, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp739
	movzbl	-630(%rbp), %eax	# __q15, tmp741
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp741, tmp740, tmp740
	vmovdqa	%xmm0, %xmm5	# tmp740, tmp742
	vpunpcklwd	%xmm8, %xmm1, %xmm0	# tmp706, tmp700, tmp743
	vmovdqa	%xmm0, %xmm1	# tmp743, tmp744
	vpunpcklwd	%xmm7, %xmm4, %xmm0	# tmp718, tmp712, tmp745
	vmovdqa	%xmm0, %xmm4	# tmp745, tmp746
	vpunpcklwd	%xmm6, %xmm2, %xmm0	# tmp730, tmp724, tmp747
	vmovdqa	%xmm0, %xmm2	# tmp747, tmp748
	vpunpcklwd	%xmm5, %xmm3, %xmm0	# tmp742, tmp736, tmp749
	vmovdqa	%xmm0, %xmm3	# tmp749, tmp750
	vpunpckldq	%xmm4, %xmm1, %xmm0	# tmp746, tmp744, tmp751
	vmovdqa	%xmm0, %xmm1	# tmp751, tmp752
	vpunpckldq	%xmm3, %xmm2, %xmm0	# tmp750, tmp748, tmp753
	vpunpcklqdq	%xmm0, %xmm1, %xmm0	# tmp754, tmp752, tmp755
	vmovdqa	%xmm0, %xmm1	# tmp755, tmp693
	movzbl	-631(%rbp), %eax	# __q16, tmp757
	movl	%eax, -840(%rbp)	# tmp757, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp758
	movzbl	-632(%rbp), %eax	# __q17, tmp760
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp760, tmp759, tmp759
	vmovdqa	%xmm0, %xmm2	# tmp759, tmp761
	movzbl	-633(%rbp), %eax	# __q18, tmp763
	movl	%eax, -840(%rbp)	# tmp763, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp764
	movzbl	-634(%rbp), %eax	# __q19, tmp766
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp766, tmp765, tmp765
	vmovdqa	%xmm0, %xmm9	# tmp765, tmp767
	movzbl	-635(%rbp), %eax	# __q20, tmp769
	movl	%eax, -840(%rbp)	# tmp769, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp770
	movzbl	-636(%rbp), %eax	# __q21, tmp772
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp772, tmp771, tmp771
	vmovdqa	%xmm0, %xmm5	# tmp771, tmp773
	movzbl	-637(%rbp), %eax	# __q22, tmp775
	movl	%eax, -840(%rbp)	# tmp775, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp776
	movzbl	-638(%rbp), %eax	# __q23, tmp778
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp778, tmp777, tmp777
	vmovdqa	%xmm0, %xmm8	# tmp777, tmp779
	movzbl	-639(%rbp), %eax	# __q24, tmp781
	movl	%eax, -840(%rbp)	# tmp781, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp782
	movzbl	-640(%rbp), %eax	# __q25, tmp784
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp784, tmp783, tmp783
	vmovdqa	%xmm0, %xmm3	# tmp783, tmp785
	movzbl	-641(%rbp), %eax	# __q26, tmp787
	movl	%eax, -840(%rbp)	# tmp787, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp788
	movzbl	-642(%rbp), %eax	# __q27, tmp790
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp790, tmp789, tmp789
	vmovdqa	%xmm0, %xmm7	# tmp789, tmp791
	movzbl	-643(%rbp), %eax	# __q28, tmp793
	movl	%eax, -840(%rbp)	# tmp793, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp794
	movzbl	-644(%rbp), %eax	# __q29, tmp796
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp796, tmp795, tmp795
	vmovdqa	%xmm0, %xmm4	# tmp795, tmp797
	movzbl	-645(%rbp), %eax	# __q30, tmp799
	movl	%eax, -840(%rbp)	# tmp799, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp800
	movzbl	-646(%rbp), %eax	# __q31, tmp802
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp802, tmp801, tmp801
	vmovdqa	%xmm0, %xmm6	# tmp801, tmp803
	vpunpcklwd	%xmm9, %xmm2, %xmm0	# tmp767, tmp761, tmp804
	vmovdqa	%xmm0, %xmm2	# tmp804, tmp805
	vpunpcklwd	%xmm8, %xmm5, %xmm0	# tmp779, tmp773, tmp806
	vmovdqa	%xmm0, %xmm5	# tmp806, tmp807
	vpunpcklwd	%xmm7, %xmm3, %xmm0	# tmp791, tmp785, tmp808
	vmovdqa	%xmm0, %xmm3	# tmp808, tmp809
	vpunpcklwd	%xmm6, %xmm4, %xmm0	# tmp803, tmp797, tmp810
	vmovdqa	%xmm0, %xmm4	# tmp810, tmp811
	vpunpckldq	%xmm5, %xmm2, %xmm0	# tmp807, tmp805, tmp812
	vmovdqa	%xmm0, %xmm2	# tmp812, tmp813
	vpunpckldq	%xmm4, %xmm3, %xmm0	# tmp811, tmp809, tmp814
	vpunpcklqdq	%xmm0, %xmm2, %xmm0	# tmp815, tmp813, tmp816
	vinserti128	$0x1, %xmm0, %ymm1, %ymm0	# tmp694, tmp693, tmp692
.LBE130:
.LBE129:
.LBE128:
.LBE127:
# mem_bw_final.cpp:56: 	__m256i sum_res2 = _mm256_set1_epi8(0);
	.loc 3 56 0
	vmovdqa	%ymm0, -304(%rbp)	# D.62975, sum_res2
	movb	$0, -680(%rbp)	#, __A
.LBB131:
.LBB132:
# /usr/lib/gcc/x86_64-linux-gnu/7/include/avxintrin.h:1334:   return _mm256_set_epi8 (__A, __A, __A, __A, __A, __A, __A, __A,
	.loc 4 1334 0
	movsbl	-680(%rbp), %eax	# __A, _433
	movl	%eax, -840(%rbp)	# _433, %sfp
	movsbl	-680(%rbp), %ebx	# __A, _434
	movl	%ebx, -844(%rbp)	# _434, %sfp
	movsbl	-680(%rbp), %ecx	# __A, _435
	movl	%ecx, -848(%rbp)	# _435, %sfp
	movsbl	-680(%rbp), %edi	# __A, _436
	movl	%edi, -824(%rbp)	# _436, %sfp
	movsbl	-680(%rbp), %esi	# __A, _437
	movl	%esi, -852(%rbp)	# _437, %sfp
	movsbl	-680(%rbp), %edx	# __A, _438
	movl	%edx, -856(%rbp)	# _438, %sfp
	movsbl	-680(%rbp), %r8d	# __A, _439
	movl	%r8d, -860(%rbp)	# _439, %sfp
	movsbl	-680(%rbp), %r9d	# __A, _440
	movl	%r9d, -864(%rbp)	# _440, %sfp
	movsbl	-680(%rbp), %r10d	# __A, _441
	movl	%r10d, -868(%rbp)	# _441, %sfp
	movsbl	-680(%rbp), %r11d	# __A, _442
	movl	%r11d, -872(%rbp)	# _442, %sfp
	movsbl	-680(%rbp), %r14d	# __A, _443
	movl	%r14d, -876(%rbp)	# _443, %sfp
	movsbl	-680(%rbp), %r15d	# __A, _444
	movl	%r15d, -880(%rbp)	# _444, %sfp
	movsbl	-680(%rbp), %r12d	# __A, _445
	movl	%r12d, -884(%rbp)	# _445, %sfp
	movsbl	-680(%rbp), %r13d	# __A, _446
	movl	%r13d, -888(%rbp)	# _446, %sfp
	movsbl	-680(%rbp), %eax	# __A, _447
	movl	%eax, -892(%rbp)	# _447, %sfp
	movsbl	-680(%rbp), %ebx	# __A, _448
	movl	%ebx, -896(%rbp)	# _448, %sfp
	movsbl	-680(%rbp), %ecx	# __A, _449
	movl	%ecx, -900(%rbp)	# _449, %sfp
	movsbl	-680(%rbp), %edi	# __A, _450
	movl	%edi, -904(%rbp)	# _450, %sfp
	movsbl	-680(%rbp), %r15d	# __A, _451
	movsbl	-680(%rbp), %r14d	# __A, _452
	movsbl	-680(%rbp), %r13d	# __A, _453
	movsbl	-680(%rbp), %r12d	# __A, _454
	movsbl	-680(%rbp), %ebx	# __A, _455
	movsbl	-680(%rbp), %r11d	# __A, _456
	movsbl	-680(%rbp), %r10d	# __A, _457
	movsbl	-680(%rbp), %r9d	# __A, _458
	movsbl	-680(%rbp), %r8d	# __A, _459
	movsbl	-680(%rbp), %edi	# __A, _460
	movsbl	-680(%rbp), %esi	# __A, _461
	movsbl	-680(%rbp), %ecx	# __A, _462
	movsbl	-680(%rbp), %edx	# __A, _463
	movsbl	-680(%rbp), %eax	# __A, _464
	movb	%al, -679(%rbp)	# _464, __q31
	movb	%dl, -678(%rbp)	# _463, __q30
	movb	%cl, -677(%rbp)	# _462, __q29
	movb	%sil, -676(%rbp)	# _461, __q28
	movb	%dil, -675(%rbp)	# _460, __q27
	movb	%r8b, -674(%rbp)	# _459, __q26
	movb	%r9b, -673(%rbp)	# _458, __q25
	movb	%r10b, -672(%rbp)	# _457, __q24
	movb	%r11b, -671(%rbp)	# _456, __q23
	movb	%bl, -670(%rbp)	# _455, __q22
	movb	%r12b, -669(%rbp)	# _454, __q21
	movb	%r13b, -668(%rbp)	# _453, __q20
	movb	%r14b, -667(%rbp)	# _452, __q19
	movb	%r15b, -666(%rbp)	# _451, __q18
	movzbl	-904(%rbp), %esi	# %sfp, tmp1640
	movb	%sil, -665(%rbp)	# tmp1640, __q17
	movzbl	-900(%rbp), %ecx	# %sfp, tmp1641
	movb	%cl, -664(%rbp)	# tmp1641, __q16
	movzbl	-896(%rbp), %ebx	# %sfp, tmp1642
	movb	%bl, -663(%rbp)	# tmp1642, __q15
	movzbl	-892(%rbp), %eax	# %sfp, tmp1643
	movb	%al, -662(%rbp)	# tmp1643, __q14
	movzbl	-888(%rbp), %r13d	# %sfp, tmp1644
	movb	%r13b, -661(%rbp)	# tmp1644, __q13
	movzbl	-884(%rbp), %r12d	# %sfp, tmp1645
	movb	%r12b, -660(%rbp)	# tmp1645, __q12
	movzbl	-880(%rbp), %r15d	# %sfp, tmp1646
	movb	%r15b, -659(%rbp)	# tmp1646, __q11
	movzbl	-876(%rbp), %r14d	# %sfp, tmp1647
	movb	%r14b, -658(%rbp)	# tmp1647, __q10
	movzbl	-872(%rbp), %r11d	# %sfp, tmp1648
	movb	%r11b, -657(%rbp)	# tmp1648, __q09
	movzbl	-868(%rbp), %r10d	# %sfp, tmp1649
	movb	%r10b, -656(%rbp)	# tmp1649, __q08
	movzbl	-864(%rbp), %r9d	# %sfp, tmp1650
	movb	%r9b, -655(%rbp)	# tmp1650, __q07
	movzbl	-860(%rbp), %r8d	# %sfp, tmp1651
	movb	%r8b, -654(%rbp)	# tmp1651, __q06
	movzbl	-856(%rbp), %edx	# %sfp, tmp1652
	movb	%dl, -653(%rbp)	# tmp1652, __q05
	movzbl	-852(%rbp), %esi	# %sfp, tmp1653
	movb	%sil, -652(%rbp)	# tmp1653, __q04
	movzbl	-824(%rbp), %edi	# %sfp, tmp1654
	movb	%dil, -651(%rbp)	# tmp1654, __q03
	movzbl	-848(%rbp), %ecx	# %sfp, tmp1655
	movb	%cl, -650(%rbp)	# tmp1655, __q02
	movzbl	-844(%rbp), %ebx	# %sfp, tmp1656
	movb	%bl, -649(%rbp)	# tmp1656, __q01
	movzbl	-840(%rbp), %eax	# %sfp, tmp1657
	movb	%al, -648(%rbp)	# tmp1657, __q00
.LBB133:
.LBB134:
# /usr/lib/gcc/x86_64-linux-gnu/7/include/avxintrin.h:1286:   return __extension__ (__m256i)(__v32qi){
	.loc 4 1286 0
	movzbl	-648(%rbp), %eax	# __q00, tmp821
	movl	%eax, -840(%rbp)	# tmp821, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp822
	movzbl	-649(%rbp), %eax	# __q01, tmp824
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp824, tmp823, tmp823
	vmovdqa	%xmm0, %xmm1	# tmp823, tmp825
	movzbl	-650(%rbp), %eax	# __q02, tmp827
	movl	%eax, -840(%rbp)	# tmp827, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp828
	movzbl	-651(%rbp), %eax	# __q03, tmp830
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp830, tmp829, tmp829
	vmovdqa	%xmm0, %xmm8	# tmp829, tmp831
	movzbl	-652(%rbp), %eax	# __q04, tmp833
	movl	%eax, -840(%rbp)	# tmp833, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp834
	movzbl	-653(%rbp), %eax	# __q05, tmp836
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp836, tmp835, tmp835
	vmovdqa	%xmm0, %xmm4	# tmp835, tmp837
	movzbl	-654(%rbp), %eax	# __q06, tmp839
	movl	%eax, -840(%rbp)	# tmp839, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp840
	movzbl	-655(%rbp), %eax	# __q07, tmp842
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp842, tmp841, tmp841
	vmovdqa	%xmm0, %xmm7	# tmp841, tmp843
	movzbl	-656(%rbp), %eax	# __q08, tmp845
	movl	%eax, -840(%rbp)	# tmp845, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp846
	movzbl	-657(%rbp), %eax	# __q09, tmp848
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp848, tmp847, tmp847
	vmovdqa	%xmm0, %xmm2	# tmp847, tmp849
	movzbl	-658(%rbp), %eax	# __q10, tmp851
	movl	%eax, -840(%rbp)	# tmp851, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp852
	movzbl	-659(%rbp), %eax	# __q11, tmp854
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp854, tmp853, tmp853
	vmovdqa	%xmm0, %xmm6	# tmp853, tmp855
	movzbl	-660(%rbp), %eax	# __q12, tmp857
	movl	%eax, -840(%rbp)	# tmp857, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp858
	movzbl	-661(%rbp), %eax	# __q13, tmp860
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp860, tmp859, tmp859
	vmovdqa	%xmm0, %xmm3	# tmp859, tmp861
	movzbl	-662(%rbp), %eax	# __q14, tmp863
	movl	%eax, -840(%rbp)	# tmp863, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp864
	movzbl	-663(%rbp), %eax	# __q15, tmp866
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp866, tmp865, tmp865
	vmovdqa	%xmm0, %xmm5	# tmp865, tmp867
	vpunpcklwd	%xmm8, %xmm1, %xmm0	# tmp831, tmp825, tmp868
	vmovdqa	%xmm0, %xmm1	# tmp868, tmp869
	vpunpcklwd	%xmm7, %xmm4, %xmm0	# tmp843, tmp837, tmp870
	vmovdqa	%xmm0, %xmm4	# tmp870, tmp871
	vpunpcklwd	%xmm6, %xmm2, %xmm0	# tmp855, tmp849, tmp872
	vmovdqa	%xmm0, %xmm2	# tmp872, tmp873
	vpunpcklwd	%xmm5, %xmm3, %xmm0	# tmp867, tmp861, tmp874
	vmovdqa	%xmm0, %xmm3	# tmp874, tmp875
	vpunpckldq	%xmm4, %xmm1, %xmm0	# tmp871, tmp869, tmp876
	vmovdqa	%xmm0, %xmm1	# tmp876, tmp877
	vpunpckldq	%xmm3, %xmm2, %xmm0	# tmp875, tmp873, tmp878
	vpunpcklqdq	%xmm0, %xmm1, %xmm0	# tmp879, tmp877, tmp880
	vmovdqa	%xmm0, %xmm1	# tmp880, tmp818
	movzbl	-664(%rbp), %eax	# __q16, tmp882
	movl	%eax, -840(%rbp)	# tmp882, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp883
	movzbl	-665(%rbp), %eax	# __q17, tmp885
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp885, tmp884, tmp884
	vmovdqa	%xmm0, %xmm2	# tmp884, tmp886
	movzbl	-666(%rbp), %eax	# __q18, tmp888
	movl	%eax, -840(%rbp)	# tmp888, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp889
	movzbl	-667(%rbp), %eax	# __q19, tmp891
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp891, tmp890, tmp890
	vmovdqa	%xmm0, %xmm9	# tmp890, tmp892
	movzbl	-668(%rbp), %eax	# __q20, tmp894
	movl	%eax, -840(%rbp)	# tmp894, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp895
	movzbl	-669(%rbp), %eax	# __q21, tmp897
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp897, tmp896, tmp896
	vmovdqa	%xmm0, %xmm5	# tmp896, tmp898
	movzbl	-670(%rbp), %eax	# __q22, tmp900
	movl	%eax, -840(%rbp)	# tmp900, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp901
	movzbl	-671(%rbp), %eax	# __q23, tmp903
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp903, tmp902, tmp902
	vmovdqa	%xmm0, %xmm8	# tmp902, tmp904
	movzbl	-672(%rbp), %eax	# __q24, tmp906
	movl	%eax, -840(%rbp)	# tmp906, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp907
	movzbl	-673(%rbp), %eax	# __q25, tmp909
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp909, tmp908, tmp908
	vmovdqa	%xmm0, %xmm3	# tmp908, tmp910
	movzbl	-674(%rbp), %eax	# __q26, tmp912
	movl	%eax, -840(%rbp)	# tmp912, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp913
	movzbl	-675(%rbp), %eax	# __q27, tmp915
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp915, tmp914, tmp914
	vmovdqa	%xmm0, %xmm7	# tmp914, tmp916
	movzbl	-676(%rbp), %eax	# __q28, tmp918
	movl	%eax, -840(%rbp)	# tmp918, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp919
	movzbl	-677(%rbp), %eax	# __q29, tmp921
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp921, tmp920, tmp920
	vmovdqa	%xmm0, %xmm4	# tmp920, tmp922
	movzbl	-678(%rbp), %eax	# __q30, tmp924
	movl	%eax, -840(%rbp)	# tmp924, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp925
	movzbl	-679(%rbp), %eax	# __q31, tmp927
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp927, tmp926, tmp926
	vmovdqa	%xmm0, %xmm6	# tmp926, tmp928
	vpunpcklwd	%xmm9, %xmm2, %xmm0	# tmp892, tmp886, tmp929
	vmovdqa	%xmm0, %xmm2	# tmp929, tmp930
	vpunpcklwd	%xmm8, %xmm5, %xmm0	# tmp904, tmp898, tmp931
	vmovdqa	%xmm0, %xmm5	# tmp931, tmp932
	vpunpcklwd	%xmm7, %xmm3, %xmm0	# tmp916, tmp910, tmp933
	vmovdqa	%xmm0, %xmm3	# tmp933, tmp934
	vpunpcklwd	%xmm6, %xmm4, %xmm0	# tmp928, tmp922, tmp935
	vmovdqa	%xmm0, %xmm4	# tmp935, tmp936
	vpunpckldq	%xmm5, %xmm2, %xmm0	# tmp932, tmp930, tmp937
	vmovdqa	%xmm0, %xmm2	# tmp937, tmp938
	vpunpckldq	%xmm4, %xmm3, %xmm0	# tmp936, tmp934, tmp939
	vpunpcklqdq	%xmm0, %xmm2, %xmm0	# tmp940, tmp938, tmp941
	vinserti128	$0x1, %xmm0, %ymm1, %ymm0	# tmp819, tmp818, tmp817
.LBE134:
.LBE133:
.LBE132:
.LBE131:
# mem_bw_final.cpp:57: 	__m256i sum_res3 = _mm256_set1_epi8(0);
	.loc 3 57 0
	vmovdqa	%ymm0, -272(%rbp)	# D.62936, sum_res3
	movb	$0, -713(%rbp)	#, __A
.LBB135:
.LBB136:
# /usr/lib/gcc/x86_64-linux-gnu/7/include/avxintrin.h:1334:   return _mm256_set_epi8 (__A, __A, __A, __A, __A, __A, __A, __A,
	.loc 4 1334 0
	movsbl	-713(%rbp), %eax	# __A, _364
	movl	%eax, -840(%rbp)	# _364, %sfp
	movsbl	-713(%rbp), %ebx	# __A, _365
	movl	%ebx, -844(%rbp)	# _365, %sfp
	movsbl	-713(%rbp), %ecx	# __A, _366
	movl	%ecx, -848(%rbp)	# _366, %sfp
	movsbl	-713(%rbp), %edi	# __A, _367
	movl	%edi, -824(%rbp)	# _367, %sfp
	movsbl	-713(%rbp), %esi	# __A, _368
	movl	%esi, -852(%rbp)	# _368, %sfp
	movsbl	-713(%rbp), %edx	# __A, _369
	movl	%edx, -856(%rbp)	# _369, %sfp
	movsbl	-713(%rbp), %r8d	# __A, _370
	movl	%r8d, -860(%rbp)	# _370, %sfp
	movsbl	-713(%rbp), %r9d	# __A, _371
	movl	%r9d, -864(%rbp)	# _371, %sfp
	movsbl	-713(%rbp), %r10d	# __A, _372
	movl	%r10d, -868(%rbp)	# _372, %sfp
	movsbl	-713(%rbp), %r11d	# __A, _373
	movl	%r11d, -872(%rbp)	# _373, %sfp
	movsbl	-713(%rbp), %r14d	# __A, _374
	movl	%r14d, -876(%rbp)	# _374, %sfp
	movsbl	-713(%rbp), %r15d	# __A, _375
	movl	%r15d, -880(%rbp)	# _375, %sfp
	movsbl	-713(%rbp), %r12d	# __A, _376
	movl	%r12d, -884(%rbp)	# _376, %sfp
	movsbl	-713(%rbp), %r13d	# __A, _377
	movl	%r13d, -888(%rbp)	# _377, %sfp
	movsbl	-713(%rbp), %eax	# __A, _378
	movl	%eax, -892(%rbp)	# _378, %sfp
	movsbl	-713(%rbp), %ebx	# __A, _379
	movl	%ebx, -896(%rbp)	# _379, %sfp
	movsbl	-713(%rbp), %ecx	# __A, _380
	movl	%ecx, -900(%rbp)	# _380, %sfp
	movsbl	-713(%rbp), %edi	# __A, _381
	movl	%edi, -904(%rbp)	# _381, %sfp
	movsbl	-713(%rbp), %r15d	# __A, _382
	movsbl	-713(%rbp), %r14d	# __A, _383
	movsbl	-713(%rbp), %r13d	# __A, _384
	movsbl	-713(%rbp), %r12d	# __A, _385
	movsbl	-713(%rbp), %ebx	# __A, _386
	movsbl	-713(%rbp), %r11d	# __A, _387
	movsbl	-713(%rbp), %r10d	# __A, _388
	movsbl	-713(%rbp), %r9d	# __A, _389
	movsbl	-713(%rbp), %r8d	# __A, _390
	movsbl	-713(%rbp), %edi	# __A, _391
	movsbl	-713(%rbp), %esi	# __A, _392
	movsbl	-713(%rbp), %ecx	# __A, _393
	movsbl	-713(%rbp), %edx	# __A, _394
	movsbl	-713(%rbp), %eax	# __A, _395
	movb	%al, -712(%rbp)	# _395, __q31
	movb	%dl, -711(%rbp)	# _394, __q30
	movb	%cl, -710(%rbp)	# _393, __q29
	movb	%sil, -709(%rbp)	# _392, __q28
	movb	%dil, -708(%rbp)	# _391, __q27
	movb	%r8b, -707(%rbp)	# _390, __q26
	movb	%r9b, -706(%rbp)	# _389, __q25
	movb	%r10b, -705(%rbp)	# _388, __q24
	movb	%r11b, -704(%rbp)	# _387, __q23
	movb	%bl, -703(%rbp)	# _386, __q22
	movb	%r12b, -702(%rbp)	# _385, __q21
	movb	%r13b, -701(%rbp)	# _384, __q20
	movb	%r14b, -700(%rbp)	# _383, __q19
	movb	%r15b, -699(%rbp)	# _382, __q18
	movzbl	-904(%rbp), %esi	# %sfp, tmp1676
	movb	%sil, -698(%rbp)	# tmp1676, __q17
	movzbl	-900(%rbp), %ecx	# %sfp, tmp1677
	movb	%cl, -697(%rbp)	# tmp1677, __q16
	movzbl	-896(%rbp), %ebx	# %sfp, tmp1678
	movb	%bl, -696(%rbp)	# tmp1678, __q15
	movzbl	-892(%rbp), %eax	# %sfp, tmp1679
	movb	%al, -695(%rbp)	# tmp1679, __q14
	movzbl	-888(%rbp), %r13d	# %sfp, tmp1680
	movb	%r13b, -694(%rbp)	# tmp1680, __q13
	movzbl	-884(%rbp), %r12d	# %sfp, tmp1681
	movb	%r12b, -693(%rbp)	# tmp1681, __q12
	movzbl	-880(%rbp), %r15d	# %sfp, tmp1682
	movb	%r15b, -692(%rbp)	# tmp1682, __q11
	movzbl	-876(%rbp), %r14d	# %sfp, tmp1683
	movb	%r14b, -691(%rbp)	# tmp1683, __q10
	movzbl	-872(%rbp), %r11d	# %sfp, tmp1684
	movb	%r11b, -690(%rbp)	# tmp1684, __q09
	movzbl	-868(%rbp), %r10d	# %sfp, tmp1685
	movb	%r10b, -689(%rbp)	# tmp1685, __q08
	movzbl	-864(%rbp), %r9d	# %sfp, tmp1686
	movb	%r9b, -688(%rbp)	# tmp1686, __q07
	movzbl	-860(%rbp), %r8d	# %sfp, tmp1687
	movb	%r8b, -687(%rbp)	# tmp1687, __q06
	movzbl	-856(%rbp), %edx	# %sfp, tmp1688
	movb	%dl, -686(%rbp)	# tmp1688, __q05
	movzbl	-852(%rbp), %esi	# %sfp, tmp1689
	movb	%sil, -685(%rbp)	# tmp1689, __q04
	movzbl	-824(%rbp), %edi	# %sfp, tmp1690
	movb	%dil, -684(%rbp)	# tmp1690, __q03
	movzbl	-848(%rbp), %ecx	# %sfp, tmp1691
	movb	%cl, -683(%rbp)	# tmp1691, __q02
	movzbl	-844(%rbp), %ebx	# %sfp, tmp1692
	movb	%bl, -682(%rbp)	# tmp1692, __q01
	movzbl	-840(%rbp), %eax	# %sfp, tmp1693
	movb	%al, -681(%rbp)	# tmp1693, __q00
.LBB137:
.LBB138:
# /usr/lib/gcc/x86_64-linux-gnu/7/include/avxintrin.h:1286:   return __extension__ (__m256i)(__v32qi){
	.loc 4 1286 0
	movzbl	-681(%rbp), %eax	# __q00, tmp946
	movl	%eax, -840(%rbp)	# tmp946, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp947
	movzbl	-682(%rbp), %eax	# __q01, tmp949
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp949, tmp948, tmp948
	vmovdqa	%xmm0, %xmm1	# tmp948, tmp950
	movzbl	-683(%rbp), %eax	# __q02, tmp952
	movl	%eax, -840(%rbp)	# tmp952, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp953
	movzbl	-684(%rbp), %eax	# __q03, tmp955
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp955, tmp954, tmp954
	vmovdqa	%xmm0, %xmm8	# tmp954, tmp956
	movzbl	-685(%rbp), %eax	# __q04, tmp958
	movl	%eax, -840(%rbp)	# tmp958, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp959
	movzbl	-686(%rbp), %eax	# __q05, tmp961
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp961, tmp960, tmp960
	vmovdqa	%xmm0, %xmm4	# tmp960, tmp962
	movzbl	-687(%rbp), %eax	# __q06, tmp964
	movl	%eax, -840(%rbp)	# tmp964, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp965
	movzbl	-688(%rbp), %eax	# __q07, tmp967
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp967, tmp966, tmp966
	vmovdqa	%xmm0, %xmm7	# tmp966, tmp968
	movzbl	-689(%rbp), %eax	# __q08, tmp970
	movl	%eax, -840(%rbp)	# tmp970, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp971
	movzbl	-690(%rbp), %eax	# __q09, tmp973
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp973, tmp972, tmp972
	vmovdqa	%xmm0, %xmm2	# tmp972, tmp974
	movzbl	-691(%rbp), %eax	# __q10, tmp976
	movl	%eax, -840(%rbp)	# tmp976, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp977
	movzbl	-692(%rbp), %eax	# __q11, tmp979
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp979, tmp978, tmp978
	vmovdqa	%xmm0, %xmm6	# tmp978, tmp980
	movzbl	-693(%rbp), %eax	# __q12, tmp982
	movl	%eax, -840(%rbp)	# tmp982, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp983
	movzbl	-694(%rbp), %eax	# __q13, tmp985
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp985, tmp984, tmp984
	vmovdqa	%xmm0, %xmm3	# tmp984, tmp986
	movzbl	-695(%rbp), %eax	# __q14, tmp988
	movl	%eax, -840(%rbp)	# tmp988, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp989
	movzbl	-696(%rbp), %eax	# __q15, tmp991
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp991, tmp990, tmp990
	vmovdqa	%xmm0, %xmm5	# tmp990, tmp992
	vpunpcklwd	%xmm8, %xmm1, %xmm0	# tmp956, tmp950, tmp993
	vmovdqa	%xmm0, %xmm1	# tmp993, tmp994
	vpunpcklwd	%xmm7, %xmm4, %xmm0	# tmp968, tmp962, tmp995
	vmovdqa	%xmm0, %xmm4	# tmp995, tmp996
	vpunpcklwd	%xmm6, %xmm2, %xmm0	# tmp980, tmp974, tmp997
	vmovdqa	%xmm0, %xmm2	# tmp997, tmp998
	vpunpcklwd	%xmm5, %xmm3, %xmm0	# tmp992, tmp986, tmp999
	vmovdqa	%xmm0, %xmm3	# tmp999, tmp1000
	vpunpckldq	%xmm4, %xmm1, %xmm0	# tmp996, tmp994, tmp1001
	vmovdqa	%xmm0, %xmm1	# tmp1001, tmp1002
	vpunpckldq	%xmm3, %xmm2, %xmm0	# tmp1000, tmp998, tmp1003
	vpunpcklqdq	%xmm0, %xmm1, %xmm0	# tmp1004, tmp1002, tmp1005
	vmovdqa	%xmm0, %xmm1	# tmp1005, tmp943
	movzbl	-697(%rbp), %eax	# __q16, tmp1007
	movl	%eax, -840(%rbp)	# tmp1007, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp1008
	movzbl	-698(%rbp), %eax	# __q17, tmp1010
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1010, tmp1009, tmp1009
	vmovdqa	%xmm0, %xmm2	# tmp1009, tmp1011
	movzbl	-699(%rbp), %eax	# __q18, tmp1013
	movl	%eax, -840(%rbp)	# tmp1013, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp1014
	movzbl	-700(%rbp), %eax	# __q19, tmp1016
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1016, tmp1015, tmp1015
	vmovdqa	%xmm0, %xmm9	# tmp1015, tmp1017
	movzbl	-701(%rbp), %eax	# __q20, tmp1019
	movl	%eax, -840(%rbp)	# tmp1019, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp1020
	movzbl	-702(%rbp), %eax	# __q21, tmp1022
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1022, tmp1021, tmp1021
	vmovdqa	%xmm0, %xmm5	# tmp1021, tmp1023
	movzbl	-703(%rbp), %eax	# __q22, tmp1025
	movl	%eax, -840(%rbp)	# tmp1025, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp1026
	movzbl	-704(%rbp), %eax	# __q23, tmp1028
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1028, tmp1027, tmp1027
	vmovdqa	%xmm0, %xmm8	# tmp1027, tmp1029
	movzbl	-705(%rbp), %eax	# __q24, tmp1031
	movl	%eax, -840(%rbp)	# tmp1031, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp1032
	movzbl	-706(%rbp), %eax	# __q25, tmp1034
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1034, tmp1033, tmp1033
	vmovdqa	%xmm0, %xmm3	# tmp1033, tmp1035
	movzbl	-707(%rbp), %eax	# __q26, tmp1037
	movl	%eax, -840(%rbp)	# tmp1037, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp1038
	movzbl	-708(%rbp), %eax	# __q27, tmp1040
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1040, tmp1039, tmp1039
	vmovdqa	%xmm0, %xmm7	# tmp1039, tmp1041
	movzbl	-709(%rbp), %eax	# __q28, tmp1043
	movl	%eax, -840(%rbp)	# tmp1043, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp1044
	movzbl	-710(%rbp), %eax	# __q29, tmp1046
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1046, tmp1045, tmp1045
	vmovdqa	%xmm0, %xmm4	# tmp1045, tmp1047
	movzbl	-711(%rbp), %eax	# __q30, tmp1049
	movl	%eax, -840(%rbp)	# tmp1049, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp1050
	movzbl	-712(%rbp), %eax	# __q31, tmp1052
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1052, tmp1051, tmp1051
	vmovdqa	%xmm0, %xmm6	# tmp1051, tmp1053
	vpunpcklwd	%xmm9, %xmm2, %xmm0	# tmp1017, tmp1011, tmp1054
	vmovdqa	%xmm0, %xmm2	# tmp1054, tmp1055
	vpunpcklwd	%xmm8, %xmm5, %xmm0	# tmp1029, tmp1023, tmp1056
	vmovdqa	%xmm0, %xmm5	# tmp1056, tmp1057
	vpunpcklwd	%xmm7, %xmm3, %xmm0	# tmp1041, tmp1035, tmp1058
	vmovdqa	%xmm0, %xmm3	# tmp1058, tmp1059
	vpunpcklwd	%xmm6, %xmm4, %xmm0	# tmp1053, tmp1047, tmp1060
	vmovdqa	%xmm0, %xmm4	# tmp1060, tmp1061
	vpunpckldq	%xmm5, %xmm2, %xmm0	# tmp1057, tmp1055, tmp1062
	vmovdqa	%xmm0, %xmm2	# tmp1062, tmp1063
	vpunpckldq	%xmm4, %xmm3, %xmm0	# tmp1061, tmp1059, tmp1064
	vpunpcklqdq	%xmm0, %xmm2, %xmm0	# tmp1065, tmp1063, tmp1066
	vinserti128	$0x1, %xmm0, %ymm1, %ymm0	# tmp944, tmp943, tmp942
.LBE138:
.LBE137:
.LBE136:
.LBE135:
# mem_bw_final.cpp:58: 	__m256i sum_res4 = _mm256_set1_epi8(0);
	.loc 3 58 0
	vmovdqa	%ymm0, -240(%rbp)	# D.62897, sum_res4
	movb	$0, -746(%rbp)	#, __A
.LBB139:
.LBB140:
# /usr/lib/gcc/x86_64-linux-gnu/7/include/avxintrin.h:1334:   return _mm256_set_epi8 (__A, __A, __A, __A, __A, __A, __A, __A,
	.loc 4 1334 0
	movsbl	-746(%rbp), %eax	# __A, _295
	movl	%eax, -840(%rbp)	# _295, %sfp
	movsbl	-746(%rbp), %ebx	# __A, _296
	movl	%ebx, -844(%rbp)	# _296, %sfp
	movsbl	-746(%rbp), %ecx	# __A, _297
	movl	%ecx, -848(%rbp)	# _297, %sfp
	movsbl	-746(%rbp), %edi	# __A, _298
	movl	%edi, -824(%rbp)	# _298, %sfp
	movsbl	-746(%rbp), %edx	# __A, _299
	movl	%edx, -852(%rbp)	# _299, %sfp
	movsbl	-746(%rbp), %esi	# __A, _300
	movl	%esi, -856(%rbp)	# _300, %sfp
	movsbl	-746(%rbp), %r8d	# __A, _301
	movl	%r8d, -860(%rbp)	# _301, %sfp
	movsbl	-746(%rbp), %r9d	# __A, _302
	movl	%r9d, -864(%rbp)	# _302, %sfp
	movsbl	-746(%rbp), %r10d	# __A, _303
	movl	%r10d, -868(%rbp)	# _303, %sfp
	movsbl	-746(%rbp), %r11d	# __A, _304
	movl	%r11d, -872(%rbp)	# _304, %sfp
	movsbl	-746(%rbp), %r14d	# __A, _305
	movl	%r14d, -876(%rbp)	# _305, %sfp
	movsbl	-746(%rbp), %r15d	# __A, _306
	movl	%r15d, -880(%rbp)	# _306, %sfp
	movsbl	-746(%rbp), %r12d	# __A, _307
	movl	%r12d, -884(%rbp)	# _307, %sfp
	movsbl	-746(%rbp), %r13d	# __A, _308
	movl	%r13d, -888(%rbp)	# _308, %sfp
	movsbl	-746(%rbp), %eax	# __A, _309
	movl	%eax, -892(%rbp)	# _309, %sfp
	movsbl	-746(%rbp), %ebx	# __A, _310
	movl	%ebx, -896(%rbp)	# _310, %sfp
	movsbl	-746(%rbp), %ecx	# __A, _311
	movl	%ecx, -900(%rbp)	# _311, %sfp
	movsbl	-746(%rbp), %edi	# __A, _312
	movl	%edi, -904(%rbp)	# _312, %sfp
	movsbl	-746(%rbp), %r15d	# __A, _313
	movsbl	-746(%rbp), %r14d	# __A, _314
	movsbl	-746(%rbp), %r13d	# __A, _315
	movsbl	-746(%rbp), %r12d	# __A, _316
	movsbl	-746(%rbp), %ebx	# __A, _317
	movsbl	-746(%rbp), %r11d	# __A, _318
	movsbl	-746(%rbp), %r10d	# __A, _319
	movsbl	-746(%rbp), %r9d	# __A, _320
	movsbl	-746(%rbp), %r8d	# __A, _321
	movsbl	-746(%rbp), %edi	# __A, _322
	movsbl	-746(%rbp), %esi	# __A, _323
	movsbl	-746(%rbp), %ecx	# __A, _324
	movsbl	-746(%rbp), %edx	# __A, _325
	movsbl	-746(%rbp), %eax	# __A, _326
	movb	%al, -745(%rbp)	# _326, __q31
	movb	%dl, -744(%rbp)	# _325, __q30
	movb	%cl, -743(%rbp)	# _324, __q29
	movb	%sil, -742(%rbp)	# _323, __q28
	movb	%dil, -741(%rbp)	# _322, __q27
	movb	%r8b, -740(%rbp)	# _321, __q26
	movb	%r9b, -739(%rbp)	# _320, __q25
	movb	%r10b, -738(%rbp)	# _319, __q24
	movb	%r11b, -737(%rbp)	# _318, __q23
	movb	%bl, -736(%rbp)	# _317, __q22
	movb	%r12b, -735(%rbp)	# _316, __q21
	movb	%r13b, -734(%rbp)	# _315, __q20
	movb	%r14b, -733(%rbp)	# _314, __q19
	movb	%r15b, -732(%rbp)	# _313, __q18
	movzbl	-904(%rbp), %edx	# %sfp, tmp1712
	movb	%dl, -731(%rbp)	# tmp1712, __q17
	movzbl	-900(%rbp), %ecx	# %sfp, tmp1713
	movb	%cl, -730(%rbp)	# tmp1713, __q16
	movzbl	-896(%rbp), %ebx	# %sfp, tmp1714
	movb	%bl, -729(%rbp)	# tmp1714, __q15
	movzbl	-892(%rbp), %eax	# %sfp, tmp1715
	movb	%al, -728(%rbp)	# tmp1715, __q14
	movzbl	-888(%rbp), %r13d	# %sfp, tmp1716
	movb	%r13b, -727(%rbp)	# tmp1716, __q13
	movzbl	-884(%rbp), %r12d	# %sfp, tmp1717
	movb	%r12b, -726(%rbp)	# tmp1717, __q12
	movzbl	-880(%rbp), %r15d	# %sfp, tmp1718
	movb	%r15b, -725(%rbp)	# tmp1718, __q11
	movzbl	-876(%rbp), %r14d	# %sfp, tmp1719
	movb	%r14b, -724(%rbp)	# tmp1719, __q10
	movzbl	-872(%rbp), %r11d	# %sfp, tmp1720
	movb	%r11b, -723(%rbp)	# tmp1720, __q09
	movzbl	-868(%rbp), %r10d	# %sfp, tmp1721
	movb	%r10b, -722(%rbp)	# tmp1721, __q08
	movzbl	-864(%rbp), %r9d	# %sfp, tmp1722
	movb	%r9b, -721(%rbp)	# tmp1722, __q07
	movzbl	-860(%rbp), %r8d	# %sfp, tmp1723
	movb	%r8b, -720(%rbp)	# tmp1723, __q06
	movzbl	-856(%rbp), %esi	# %sfp, tmp1724
	movb	%sil, -719(%rbp)	# tmp1724, __q05
	movzbl	-852(%rbp), %edx	# %sfp, tmp1725
	movb	%dl, -718(%rbp)	# tmp1725, __q04
	movzbl	-824(%rbp), %edi	# %sfp, tmp1726
	movb	%dil, -717(%rbp)	# tmp1726, __q03
	movzbl	-848(%rbp), %ecx	# %sfp, tmp1727
	movb	%cl, -716(%rbp)	# tmp1727, __q02
	movzbl	-844(%rbp), %ebx	# %sfp, tmp1728
	movb	%bl, -715(%rbp)	# tmp1728, __q01
	movzbl	-840(%rbp), %eax	# %sfp, tmp1729
	movb	%al, -714(%rbp)	# tmp1729, __q00
.LBB141:
.LBB142:
# /usr/lib/gcc/x86_64-linux-gnu/7/include/avxintrin.h:1286:   return __extension__ (__m256i)(__v32qi){
	.loc 4 1286 0
	movzbl	-714(%rbp), %eax	# __q00, tmp1071
	movl	%eax, -840(%rbp)	# tmp1071, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp1072
	movzbl	-715(%rbp), %eax	# __q01, tmp1074
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1074, tmp1073, tmp1073
	vmovdqa	%xmm0, %xmm1	# tmp1073, tmp1075
	movzbl	-716(%rbp), %eax	# __q02, tmp1077
	movl	%eax, -840(%rbp)	# tmp1077, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp1078
	movzbl	-717(%rbp), %eax	# __q03, tmp1080
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1080, tmp1079, tmp1079
	vmovdqa	%xmm0, %xmm8	# tmp1079, tmp1081
	movzbl	-718(%rbp), %eax	# __q04, tmp1083
	movl	%eax, -840(%rbp)	# tmp1083, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp1084
	movzbl	-719(%rbp), %eax	# __q05, tmp1086
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1086, tmp1085, tmp1085
	vmovdqa	%xmm0, %xmm4	# tmp1085, tmp1087
	movzbl	-720(%rbp), %eax	# __q06, tmp1089
	movl	%eax, -840(%rbp)	# tmp1089, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp1090
	movzbl	-721(%rbp), %eax	# __q07, tmp1092
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1092, tmp1091, tmp1091
	vmovdqa	%xmm0, %xmm7	# tmp1091, tmp1093
	movzbl	-722(%rbp), %eax	# __q08, tmp1095
	movl	%eax, -840(%rbp)	# tmp1095, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp1096
	movzbl	-723(%rbp), %eax	# __q09, tmp1098
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1098, tmp1097, tmp1097
	vmovdqa	%xmm0, %xmm2	# tmp1097, tmp1099
	movzbl	-724(%rbp), %eax	# __q10, tmp1101
	movl	%eax, -840(%rbp)	# tmp1101, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp1102
	movzbl	-725(%rbp), %eax	# __q11, tmp1104
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1104, tmp1103, tmp1103
	vmovdqa	%xmm0, %xmm6	# tmp1103, tmp1105
	movzbl	-726(%rbp), %eax	# __q12, tmp1107
	movl	%eax, -840(%rbp)	# tmp1107, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp1108
	movzbl	-727(%rbp), %eax	# __q13, tmp1110
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1110, tmp1109, tmp1109
	vmovdqa	%xmm0, %xmm3	# tmp1109, tmp1111
	movzbl	-728(%rbp), %eax	# __q14, tmp1113
	movl	%eax, -840(%rbp)	# tmp1113, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp1114
	movzbl	-729(%rbp), %eax	# __q15, tmp1116
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1116, tmp1115, tmp1115
	vmovdqa	%xmm0, %xmm5	# tmp1115, tmp1117
	vpunpcklwd	%xmm8, %xmm1, %xmm0	# tmp1081, tmp1075, tmp1118
	vmovdqa	%xmm0, %xmm1	# tmp1118, tmp1119
	vpunpcklwd	%xmm7, %xmm4, %xmm0	# tmp1093, tmp1087, tmp1120
	vmovdqa	%xmm0, %xmm4	# tmp1120, tmp1121
	vpunpcklwd	%xmm6, %xmm2, %xmm0	# tmp1105, tmp1099, tmp1122
	vmovdqa	%xmm0, %xmm2	# tmp1122, tmp1123
	vpunpcklwd	%xmm5, %xmm3, %xmm0	# tmp1117, tmp1111, tmp1124
	vmovdqa	%xmm0, %xmm3	# tmp1124, tmp1125
	vpunpckldq	%xmm4, %xmm1, %xmm0	# tmp1121, tmp1119, tmp1126
	vmovdqa	%xmm0, %xmm1	# tmp1126, tmp1127
	vpunpckldq	%xmm3, %xmm2, %xmm0	# tmp1125, tmp1123, tmp1128
	vpunpcklqdq	%xmm0, %xmm1, %xmm0	# tmp1129, tmp1127, tmp1130
	vmovdqa	%xmm0, %xmm1	# tmp1130, tmp1068
	movzbl	-730(%rbp), %eax	# __q16, tmp1132
	movl	%eax, -840(%rbp)	# tmp1132, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp1133
	movzbl	-731(%rbp), %eax	# __q17, tmp1135
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1135, tmp1134, tmp1134
	vmovdqa	%xmm0, %xmm2	# tmp1134, tmp1136
	movzbl	-732(%rbp), %eax	# __q18, tmp1138
	movl	%eax, -840(%rbp)	# tmp1138, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp1139
	movzbl	-733(%rbp), %eax	# __q19, tmp1141
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1141, tmp1140, tmp1140
	vmovdqa	%xmm0, %xmm9	# tmp1140, tmp1142
	movzbl	-734(%rbp), %eax	# __q20, tmp1144
	movl	%eax, -840(%rbp)	# tmp1144, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp1145
	movzbl	-735(%rbp), %eax	# __q21, tmp1147
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1147, tmp1146, tmp1146
	vmovdqa	%xmm0, %xmm5	# tmp1146, tmp1148
	movzbl	-736(%rbp), %eax	# __q22, tmp1150
	movl	%eax, -840(%rbp)	# tmp1150, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp1151
	movzbl	-737(%rbp), %eax	# __q23, tmp1153
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1153, tmp1152, tmp1152
	vmovdqa	%xmm0, %xmm8	# tmp1152, tmp1154
	movzbl	-738(%rbp), %eax	# __q24, tmp1156
	movl	%eax, -840(%rbp)	# tmp1156, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp1157
	movzbl	-739(%rbp), %eax	# __q25, tmp1159
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1159, tmp1158, tmp1158
	vmovdqa	%xmm0, %xmm3	# tmp1158, tmp1160
	movzbl	-740(%rbp), %eax	# __q26, tmp1162
	movl	%eax, -840(%rbp)	# tmp1162, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp1163
	movzbl	-741(%rbp), %eax	# __q27, tmp1165
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1165, tmp1164, tmp1164
	vmovdqa	%xmm0, %xmm7	# tmp1164, tmp1166
	movzbl	-742(%rbp), %eax	# __q28, tmp1168
	movl	%eax, -840(%rbp)	# tmp1168, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp1169
	movzbl	-743(%rbp), %eax	# __q29, tmp1171
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1171, tmp1170, tmp1170
	vmovdqa	%xmm0, %xmm4	# tmp1170, tmp1172
	movzbl	-744(%rbp), %eax	# __q30, tmp1174
	movl	%eax, -840(%rbp)	# tmp1174, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp1175
	movzbl	-745(%rbp), %eax	# __q31, tmp1177
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1177, tmp1176, tmp1176
	vmovdqa	%xmm0, %xmm6	# tmp1176, tmp1178
	vpunpcklwd	%xmm9, %xmm2, %xmm0	# tmp1142, tmp1136, tmp1179
	vmovdqa	%xmm0, %xmm2	# tmp1179, tmp1180
	vpunpcklwd	%xmm8, %xmm5, %xmm0	# tmp1154, tmp1148, tmp1181
	vmovdqa	%xmm0, %xmm5	# tmp1181, tmp1182
	vpunpcklwd	%xmm7, %xmm3, %xmm0	# tmp1166, tmp1160, tmp1183
	vmovdqa	%xmm0, %xmm3	# tmp1183, tmp1184
	vpunpcklwd	%xmm6, %xmm4, %xmm0	# tmp1178, tmp1172, tmp1185
	vmovdqa	%xmm0, %xmm4	# tmp1185, tmp1186
	vpunpckldq	%xmm5, %xmm2, %xmm0	# tmp1182, tmp1180, tmp1187
	vmovdqa	%xmm0, %xmm2	# tmp1187, tmp1188
	vpunpckldq	%xmm4, %xmm3, %xmm0	# tmp1186, tmp1184, tmp1189
	vpunpcklqdq	%xmm0, %xmm2, %xmm0	# tmp1190, tmp1188, tmp1191
	vinserti128	$0x1, %xmm0, %ymm1, %ymm0	# tmp1069, tmp1068, tmp1067
.LBE142:
.LBE141:
.LBE140:
.LBE139:
# mem_bw_final.cpp:59: 	__m256i sum_res5 = _mm256_set1_epi8(0);
	.loc 3 59 0
	vmovdqa	%ymm0, -208(%rbp)	# D.62858, sum_res5
	movb	$0, -779(%rbp)	#, __A
.LBB143:
.LBB144:
# /usr/lib/gcc/x86_64-linux-gnu/7/include/avxintrin.h:1334:   return _mm256_set_epi8 (__A, __A, __A, __A, __A, __A, __A, __A,
	.loc 4 1334 0
	movsbl	-779(%rbp), %eax	# __A, _226
	movl	%eax, -840(%rbp)	# _226, %sfp
	movsbl	-779(%rbp), %ebx	# __A, _227
	movl	%ebx, -844(%rbp)	# _227, %sfp
	movsbl	-779(%rbp), %esi	# __A, _228
	movl	%esi, -848(%rbp)	# _228, %sfp
	movsbl	-779(%rbp), %edi	# __A, _229
	movl	%edi, -824(%rbp)	# _229, %sfp
	movsbl	-779(%rbp), %edx	# __A, _230
	movl	%edx, -852(%rbp)	# _230, %sfp
	movsbl	-779(%rbp), %ecx	# __A, _231
	movl	%ecx, -856(%rbp)	# _231, %sfp
	movsbl	-779(%rbp), %r8d	# __A, _232
	movl	%r8d, -860(%rbp)	# _232, %sfp
	movsbl	-779(%rbp), %r9d	# __A, _233
	movl	%r9d, -864(%rbp)	# _233, %sfp
	movsbl	-779(%rbp), %r10d	# __A, _234
	movl	%r10d, -868(%rbp)	# _234, %sfp
	movsbl	-779(%rbp), %r11d	# __A, _235
	movl	%r11d, -872(%rbp)	# _235, %sfp
	movsbl	-779(%rbp), %r14d	# __A, _236
	movl	%r14d, -876(%rbp)	# _236, %sfp
	movsbl	-779(%rbp), %r15d	# __A, _237
	movl	%r15d, -880(%rbp)	# _237, %sfp
	movsbl	-779(%rbp), %r12d	# __A, _238
	movl	%r12d, -884(%rbp)	# _238, %sfp
	movsbl	-779(%rbp), %r13d	# __A, _239
	movl	%r13d, -888(%rbp)	# _239, %sfp
	movsbl	-779(%rbp), %eax	# __A, _240
	movl	%eax, -892(%rbp)	# _240, %sfp
	movsbl	-779(%rbp), %ebx	# __A, _241
	movl	%ebx, -896(%rbp)	# _241, %sfp
	movsbl	-779(%rbp), %esi	# __A, _242
	movl	%esi, -900(%rbp)	# _242, %sfp
	movsbl	-779(%rbp), %edi	# __A, _243
	movl	%edi, -904(%rbp)	# _243, %sfp
	movsbl	-779(%rbp), %r15d	# __A, _244
	movsbl	-779(%rbp), %r14d	# __A, _245
	movsbl	-779(%rbp), %r13d	# __A, _246
	movsbl	-779(%rbp), %r12d	# __A, _247
	movsbl	-779(%rbp), %ebx	# __A, _248
	movsbl	-779(%rbp), %r11d	# __A, _249
	movsbl	-779(%rbp), %r10d	# __A, _250
	movsbl	-779(%rbp), %r9d	# __A, _251
	movsbl	-779(%rbp), %r8d	# __A, _252
	movsbl	-779(%rbp), %edi	# __A, _253
	movsbl	-779(%rbp), %esi	# __A, _254
	movsbl	-779(%rbp), %ecx	# __A, _255
	movsbl	-779(%rbp), %edx	# __A, _256
	movsbl	-779(%rbp), %eax	# __A, _257
	movb	%al, -778(%rbp)	# _257, __q31
	movb	%dl, -777(%rbp)	# _256, __q30
	movb	%cl, -776(%rbp)	# _255, __q29
	movb	%sil, -775(%rbp)	# _254, __q28
	movb	%dil, -774(%rbp)	# _253, __q27
	movb	%r8b, -773(%rbp)	# _252, __q26
	movb	%r9b, -772(%rbp)	# _251, __q25
	movb	%r10b, -771(%rbp)	# _250, __q24
	movb	%r11b, -770(%rbp)	# _249, __q23
	movb	%bl, -769(%rbp)	# _248, __q22
	movb	%r12b, -768(%rbp)	# _247, __q21
	movb	%r13b, -767(%rbp)	# _246, __q20
	movb	%r14b, -766(%rbp)	# _245, __q19
	movb	%r15b, -765(%rbp)	# _244, __q18
	movzbl	-904(%rbp), %edx	# %sfp, tmp1748
	movb	%dl, -764(%rbp)	# tmp1748, __q17
	movzbl	-900(%rbp), %ecx	# %sfp, tmp1749
	movb	%cl, -763(%rbp)	# tmp1749, __q16
	movzbl	-896(%rbp), %ebx	# %sfp, tmp1750
	movb	%bl, -762(%rbp)	# tmp1750, __q15
	movzbl	-892(%rbp), %eax	# %sfp, tmp1751
	movb	%al, -761(%rbp)	# tmp1751, __q14
	movzbl	-888(%rbp), %r13d	# %sfp, tmp1752
	movb	%r13b, -760(%rbp)	# tmp1752, __q13
	movzbl	-884(%rbp), %r12d	# %sfp, tmp1753
	movb	%r12b, -759(%rbp)	# tmp1753, __q12
	movzbl	-880(%rbp), %r15d	# %sfp, tmp1754
	movb	%r15b, -758(%rbp)	# tmp1754, __q11
	movzbl	-876(%rbp), %r14d	# %sfp, tmp1755
	movb	%r14b, -757(%rbp)	# tmp1755, __q10
	movzbl	-872(%rbp), %r11d	# %sfp, tmp1756
	movb	%r11b, -756(%rbp)	# tmp1756, __q09
	movzbl	-868(%rbp), %r10d	# %sfp, tmp1757
	movb	%r10b, -755(%rbp)	# tmp1757, __q08
	movzbl	-864(%rbp), %r9d	# %sfp, tmp1758
	movb	%r9b, -754(%rbp)	# tmp1758, __q07
	movzbl	-860(%rbp), %r8d	# %sfp, tmp1759
	movb	%r8b, -753(%rbp)	# tmp1759, __q06
	movzbl	-856(%rbp), %ecx	# %sfp, tmp1760
	movb	%cl, -752(%rbp)	# tmp1760, __q05
	movzbl	-852(%rbp), %edx	# %sfp, tmp1761
	movb	%dl, -751(%rbp)	# tmp1761, __q04
	movzbl	-824(%rbp), %edi	# %sfp, tmp1762
	movb	%dil, -750(%rbp)	# tmp1762, __q03
	movzbl	-848(%rbp), %esi	# %sfp, tmp1763
	movb	%sil, -749(%rbp)	# tmp1763, __q02
	movzbl	-844(%rbp), %ebx	# %sfp, tmp1764
	movb	%bl, -748(%rbp)	# tmp1764, __q01
	movzbl	-840(%rbp), %eax	# %sfp, tmp1765
	movb	%al, -747(%rbp)	# tmp1765, __q00
.LBB145:
.LBB146:
# /usr/lib/gcc/x86_64-linux-gnu/7/include/avxintrin.h:1286:   return __extension__ (__m256i)(__v32qi){
	.loc 4 1286 0
	movzbl	-747(%rbp), %eax	# __q00, tmp1196
	movl	%eax, -840(%rbp)	# tmp1196, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp1197
	movzbl	-748(%rbp), %eax	# __q01, tmp1199
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1199, tmp1198, tmp1198
	vmovdqa	%xmm0, %xmm1	# tmp1198, tmp1200
	movzbl	-749(%rbp), %eax	# __q02, tmp1202
	movl	%eax, -840(%rbp)	# tmp1202, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp1203
	movzbl	-750(%rbp), %eax	# __q03, tmp1205
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1205, tmp1204, tmp1204
	vmovdqa	%xmm0, %xmm8	# tmp1204, tmp1206
	movzbl	-751(%rbp), %eax	# __q04, tmp1208
	movl	%eax, -840(%rbp)	# tmp1208, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp1209
	movzbl	-752(%rbp), %eax	# __q05, tmp1211
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1211, tmp1210, tmp1210
	vmovdqa	%xmm0, %xmm4	# tmp1210, tmp1212
	movzbl	-753(%rbp), %eax	# __q06, tmp1214
	movl	%eax, -840(%rbp)	# tmp1214, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp1215
	movzbl	-754(%rbp), %eax	# __q07, tmp1217
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1217, tmp1216, tmp1216
	vmovdqa	%xmm0, %xmm7	# tmp1216, tmp1218
	movzbl	-755(%rbp), %eax	# __q08, tmp1220
	movl	%eax, -840(%rbp)	# tmp1220, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp1221
	movzbl	-756(%rbp), %eax	# __q09, tmp1223
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1223, tmp1222, tmp1222
	vmovdqa	%xmm0, %xmm2	# tmp1222, tmp1224
	movzbl	-757(%rbp), %eax	# __q10, tmp1226
	movl	%eax, -840(%rbp)	# tmp1226, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp1227
	movzbl	-758(%rbp), %eax	# __q11, tmp1229
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1229, tmp1228, tmp1228
	vmovdqa	%xmm0, %xmm6	# tmp1228, tmp1230
	movzbl	-759(%rbp), %eax	# __q12, tmp1232
	movl	%eax, -840(%rbp)	# tmp1232, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp1233
	movzbl	-760(%rbp), %eax	# __q13, tmp1235
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1235, tmp1234, tmp1234
	vmovdqa	%xmm0, %xmm3	# tmp1234, tmp1236
	movzbl	-761(%rbp), %eax	# __q14, tmp1238
	movl	%eax, -840(%rbp)	# tmp1238, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp1239
	movzbl	-762(%rbp), %eax	# __q15, tmp1241
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1241, tmp1240, tmp1240
	vmovdqa	%xmm0, %xmm5	# tmp1240, tmp1242
	vpunpcklwd	%xmm8, %xmm1, %xmm0	# tmp1206, tmp1200, tmp1243
	vmovdqa	%xmm0, %xmm1	# tmp1243, tmp1244
	vpunpcklwd	%xmm7, %xmm4, %xmm0	# tmp1218, tmp1212, tmp1245
	vmovdqa	%xmm0, %xmm4	# tmp1245, tmp1246
	vpunpcklwd	%xmm6, %xmm2, %xmm0	# tmp1230, tmp1224, tmp1247
	vmovdqa	%xmm0, %xmm2	# tmp1247, tmp1248
	vpunpcklwd	%xmm5, %xmm3, %xmm0	# tmp1242, tmp1236, tmp1249
	vmovdqa	%xmm0, %xmm3	# tmp1249, tmp1250
	vpunpckldq	%xmm4, %xmm1, %xmm0	# tmp1246, tmp1244, tmp1251
	vmovdqa	%xmm0, %xmm1	# tmp1251, tmp1252
	vpunpckldq	%xmm3, %xmm2, %xmm0	# tmp1250, tmp1248, tmp1253
	vpunpcklqdq	%xmm0, %xmm1, %xmm0	# tmp1254, tmp1252, tmp1255
	vmovdqa	%xmm0, %xmm1	# tmp1255, tmp1193
	movzbl	-763(%rbp), %eax	# __q16, tmp1257
	movl	%eax, -840(%rbp)	# tmp1257, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp1258
	movzbl	-764(%rbp), %eax	# __q17, tmp1260
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1260, tmp1259, tmp1259
	vmovdqa	%xmm0, %xmm2	# tmp1259, tmp1261
	movzbl	-765(%rbp), %eax	# __q18, tmp1263
	movl	%eax, -840(%rbp)	# tmp1263, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp1264
	movzbl	-766(%rbp), %eax	# __q19, tmp1266
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1266, tmp1265, tmp1265
	vmovdqa	%xmm0, %xmm9	# tmp1265, tmp1267
	movzbl	-767(%rbp), %eax	# __q20, tmp1269
	movl	%eax, -840(%rbp)	# tmp1269, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp1270
	movzbl	-768(%rbp), %eax	# __q21, tmp1272
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1272, tmp1271, tmp1271
	vmovdqa	%xmm0, %xmm5	# tmp1271, tmp1273
	movzbl	-769(%rbp), %eax	# __q22, tmp1275
	movl	%eax, -840(%rbp)	# tmp1275, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp1276
	movzbl	-770(%rbp), %eax	# __q23, tmp1278
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1278, tmp1277, tmp1277
	vmovdqa	%xmm0, %xmm8	# tmp1277, tmp1279
	movzbl	-771(%rbp), %eax	# __q24, tmp1281
	movl	%eax, -840(%rbp)	# tmp1281, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp1282
	movzbl	-772(%rbp), %eax	# __q25, tmp1284
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1284, tmp1283, tmp1283
	vmovdqa	%xmm0, %xmm3	# tmp1283, tmp1285
	movzbl	-773(%rbp), %eax	# __q26, tmp1287
	movl	%eax, -840(%rbp)	# tmp1287, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp1288
	movzbl	-774(%rbp), %eax	# __q27, tmp1290
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1290, tmp1289, tmp1289
	vmovdqa	%xmm0, %xmm7	# tmp1289, tmp1291
	movzbl	-775(%rbp), %eax	# __q28, tmp1293
	movl	%eax, -840(%rbp)	# tmp1293, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp1294
	movzbl	-776(%rbp), %eax	# __q29, tmp1296
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1296, tmp1295, tmp1295
	vmovdqa	%xmm0, %xmm4	# tmp1295, tmp1297
	movzbl	-777(%rbp), %eax	# __q30, tmp1299
	movl	%eax, -840(%rbp)	# tmp1299, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp1300
	movzbl	-778(%rbp), %eax	# __q31, tmp1302
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1302, tmp1301, tmp1301
	vmovdqa	%xmm0, %xmm6	# tmp1301, tmp1303
	vpunpcklwd	%xmm9, %xmm2, %xmm0	# tmp1267, tmp1261, tmp1304
	vmovdqa	%xmm0, %xmm2	# tmp1304, tmp1305
	vpunpcklwd	%xmm8, %xmm5, %xmm0	# tmp1279, tmp1273, tmp1306
	vmovdqa	%xmm0, %xmm5	# tmp1306, tmp1307
	vpunpcklwd	%xmm7, %xmm3, %xmm0	# tmp1291, tmp1285, tmp1308
	vmovdqa	%xmm0, %xmm3	# tmp1308, tmp1309
	vpunpcklwd	%xmm6, %xmm4, %xmm0	# tmp1303, tmp1297, tmp1310
	vmovdqa	%xmm0, %xmm4	# tmp1310, tmp1311
	vpunpckldq	%xmm5, %xmm2, %xmm0	# tmp1307, tmp1305, tmp1312
	vmovdqa	%xmm0, %xmm2	# tmp1312, tmp1313
	vpunpckldq	%xmm4, %xmm3, %xmm0	# tmp1311, tmp1309, tmp1314
	vpunpcklqdq	%xmm0, %xmm2, %xmm0	# tmp1315, tmp1313, tmp1316
	vinserti128	$0x1, %xmm0, %ymm1, %ymm0	# tmp1194, tmp1193, tmp1192
.LBE146:
.LBE145:
.LBE144:
.LBE143:
# mem_bw_final.cpp:60: 	__m256i sum_res6 = _mm256_set1_epi8(0);
	.loc 3 60 0
	vmovdqa	%ymm0, -176(%rbp)	# D.62819, sum_res6
	movb	$0, -812(%rbp)	#, __A
.LBB147:
.LBB148:
# /usr/lib/gcc/x86_64-linux-gnu/7/include/avxintrin.h:1334:   return _mm256_set_epi8 (__A, __A, __A, __A, __A, __A, __A, __A,
	.loc 4 1334 0
	movsbl	-812(%rbp), %eax	# __A, _157
	movl	%eax, -840(%rbp)	# _157, %sfp
	movsbl	-812(%rbp), %ebx	# __A, _158
	movl	%ebx, -844(%rbp)	# _158, %sfp
	movsbl	-812(%rbp), %esi	# __A, _159
	movl	%esi, -848(%rbp)	# _159, %sfp
	movsbl	-812(%rbp), %edi	# __A, _160
	movl	%edi, -824(%rbp)	# _160, %sfp
	movsbl	-812(%rbp), %edx	# __A, _161
	movl	%edx, -852(%rbp)	# _161, %sfp
	movsbl	-812(%rbp), %ecx	# __A, _162
	movl	%ecx, -856(%rbp)	# _162, %sfp
	movsbl	-812(%rbp), %r8d	# __A, _163
	movl	%r8d, -860(%rbp)	# _163, %sfp
	movsbl	-812(%rbp), %r9d	# __A, _164
	movl	%r9d, -864(%rbp)	# _164, %sfp
	movsbl	-812(%rbp), %r10d	# __A, _165
	movl	%r10d, -868(%rbp)	# _165, %sfp
	movsbl	-812(%rbp), %r11d	# __A, _166
	movl	%r11d, -872(%rbp)	# _166, %sfp
	movsbl	-812(%rbp), %r14d	# __A, _167
	movl	%r14d, -876(%rbp)	# _167, %sfp
	movsbl	-812(%rbp), %r15d	# __A, _168
	movl	%r15d, -880(%rbp)	# _168, %sfp
	movsbl	-812(%rbp), %r12d	# __A, _169
	movl	%r12d, -884(%rbp)	# _169, %sfp
	movsbl	-812(%rbp), %r13d	# __A, _170
	movl	%r13d, -888(%rbp)	# _170, %sfp
	movsbl	-812(%rbp), %eax	# __A, _171
	movl	%eax, -892(%rbp)	# _171, %sfp
	movsbl	-812(%rbp), %ebx	# __A, _172
	movl	%ebx, -896(%rbp)	# _172, %sfp
	movsbl	-812(%rbp), %esi	# __A, _173
	movl	%esi, -900(%rbp)	# _173, %sfp
	movsbl	-812(%rbp), %edi	# __A, _174
	movl	%edi, -904(%rbp)	# _174, %sfp
	movsbl	-812(%rbp), %r15d	# __A, _175
	movsbl	-812(%rbp), %r14d	# __A, _176
	movsbl	-812(%rbp), %r13d	# __A, _177
	movsbl	-812(%rbp), %r12d	# __A, _178
	movsbl	-812(%rbp), %ebx	# __A, _179
	movsbl	-812(%rbp), %r11d	# __A, _180
	movsbl	-812(%rbp), %r10d	# __A, _181
	movsbl	-812(%rbp), %r9d	# __A, _182
	movsbl	-812(%rbp), %r8d	# __A, _183
	movsbl	-812(%rbp), %edi	# __A, _184
	movsbl	-812(%rbp), %esi	# __A, _185
	movsbl	-812(%rbp), %ecx	# __A, _186
	movsbl	-812(%rbp), %edx	# __A, _187
	movsbl	-812(%rbp), %eax	# __A, _188
	movb	%al, -811(%rbp)	# _188, __q31
	movb	%dl, -810(%rbp)	# _187, __q30
	movb	%cl, -809(%rbp)	# _186, __q29
	movb	%sil, -808(%rbp)	# _185, __q28
	movb	%dil, -807(%rbp)	# _184, __q27
	movb	%r8b, -806(%rbp)	# _183, __q26
	movb	%r9b, -805(%rbp)	# _182, __q25
	movb	%r10b, -804(%rbp)	# _181, __q24
	movb	%r11b, -803(%rbp)	# _180, __q23
	movb	%bl, -802(%rbp)	# _179, __q22
	movb	%r12b, -801(%rbp)	# _178, __q21
	movb	%r13b, -800(%rbp)	# _177, __q20
	movb	%r14b, -799(%rbp)	# _176, __q19
	movb	%r15b, -798(%rbp)	# _175, __q18
	movzbl	-904(%rbp), %edx	# %sfp, tmp1784
	movb	%dl, -797(%rbp)	# tmp1784, __q17
	movzbl	-900(%rbp), %ecx	# %sfp, tmp1785
	movb	%cl, -796(%rbp)	# tmp1785, __q16
	movzbl	-896(%rbp), %ebx	# %sfp, tmp1786
	movb	%bl, -795(%rbp)	# tmp1786, __q15
	movzbl	-892(%rbp), %eax	# %sfp, tmp1787
	movb	%al, -794(%rbp)	# tmp1787, __q14
	movzbl	-888(%rbp), %r13d	# %sfp, tmp1788
	movb	%r13b, -793(%rbp)	# tmp1788, __q13
	movzbl	-884(%rbp), %r12d	# %sfp, tmp1789
	movb	%r12b, -792(%rbp)	# tmp1789, __q12
	movzbl	-880(%rbp), %r15d	# %sfp, tmp1790
	movb	%r15b, -791(%rbp)	# tmp1790, __q11
	movzbl	-876(%rbp), %r14d	# %sfp, tmp1791
	movb	%r14b, -790(%rbp)	# tmp1791, __q10
	movzbl	-872(%rbp), %r11d	# %sfp, tmp1792
	movb	%r11b, -789(%rbp)	# tmp1792, __q09
	movzbl	-868(%rbp), %r10d	# %sfp, tmp1793
	movb	%r10b, -788(%rbp)	# tmp1793, __q08
	movzbl	-864(%rbp), %r9d	# %sfp, tmp1794
	movb	%r9b, -787(%rbp)	# tmp1794, __q07
	movzbl	-860(%rbp), %r8d	# %sfp, tmp1795
	movb	%r8b, -786(%rbp)	# tmp1795, __q06
	movzbl	-856(%rbp), %ecx	# %sfp, tmp1796
	movb	%cl, -785(%rbp)	# tmp1796, __q05
	movzbl	-852(%rbp), %edx	# %sfp, tmp1797
	movb	%dl, -784(%rbp)	# tmp1797, __q04
	movzbl	-824(%rbp), %edi	# %sfp, tmp1798
	movb	%dil, -783(%rbp)	# tmp1798, __q03
	movzbl	-848(%rbp), %esi	# %sfp, tmp1799
	movb	%sil, -782(%rbp)	# tmp1799, __q02
	movzbl	-844(%rbp), %ebx	# %sfp, tmp1800
	movb	%bl, -781(%rbp)	# tmp1800, __q01
	movzbl	-840(%rbp), %eax	# %sfp, tmp1801
	movb	%al, -780(%rbp)	# tmp1801, __q00
.LBB149:
.LBB150:
# /usr/lib/gcc/x86_64-linux-gnu/7/include/avxintrin.h:1286:   return __extension__ (__m256i)(__v32qi){
	.loc 4 1286 0
	movzbl	-780(%rbp), %eax	# __q00, tmp1321
	movl	%eax, -840(%rbp)	# tmp1321, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp1322
	movzbl	-781(%rbp), %eax	# __q01, tmp1324
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1324, tmp1323, tmp1323
	vmovdqa	%xmm0, %xmm1	# tmp1323, tmp1325
	movzbl	-782(%rbp), %eax	# __q02, tmp1327
	movl	%eax, -840(%rbp)	# tmp1327, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp1328
	movzbl	-783(%rbp), %eax	# __q03, tmp1330
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1330, tmp1329, tmp1329
	vmovdqa	%xmm0, %xmm8	# tmp1329, tmp1331
	movzbl	-784(%rbp), %eax	# __q04, tmp1333
	movl	%eax, -840(%rbp)	# tmp1333, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp1334
	movzbl	-785(%rbp), %eax	# __q05, tmp1336
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1336, tmp1335, tmp1335
	vmovdqa	%xmm0, %xmm4	# tmp1335, tmp1337
	movzbl	-786(%rbp), %eax	# __q06, tmp1339
	movl	%eax, -840(%rbp)	# tmp1339, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp1340
	movzbl	-787(%rbp), %eax	# __q07, tmp1342
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1342, tmp1341, tmp1341
	vmovdqa	%xmm0, %xmm7	# tmp1341, tmp1343
	movzbl	-788(%rbp), %eax	# __q08, tmp1345
	movl	%eax, -840(%rbp)	# tmp1345, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp1346
	movzbl	-789(%rbp), %eax	# __q09, tmp1348
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1348, tmp1347, tmp1347
	vmovdqa	%xmm0, %xmm2	# tmp1347, tmp1349
	movzbl	-790(%rbp), %eax	# __q10, tmp1351
	movl	%eax, -840(%rbp)	# tmp1351, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp1352
	movzbl	-791(%rbp), %eax	# __q11, tmp1354
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1354, tmp1353, tmp1353
	vmovdqa	%xmm0, %xmm6	# tmp1353, tmp1355
	movzbl	-792(%rbp), %eax	# __q12, tmp1357
	movl	%eax, -840(%rbp)	# tmp1357, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp1358
	movzbl	-793(%rbp), %eax	# __q13, tmp1360
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1360, tmp1359, tmp1359
	vmovdqa	%xmm0, %xmm3	# tmp1359, tmp1361
	movzbl	-794(%rbp), %eax	# __q14, tmp1363
	movl	%eax, -840(%rbp)	# tmp1363, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp1364
	movzbl	-795(%rbp), %eax	# __q15, tmp1366
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1366, tmp1365, tmp1365
	vmovdqa	%xmm0, %xmm5	# tmp1365, tmp1367
	vpunpcklwd	%xmm8, %xmm1, %xmm0	# tmp1331, tmp1325, tmp1368
	vmovdqa	%xmm0, %xmm1	# tmp1368, tmp1369
	vpunpcklwd	%xmm7, %xmm4, %xmm0	# tmp1343, tmp1337, tmp1370
	vmovdqa	%xmm0, %xmm4	# tmp1370, tmp1371
	vpunpcklwd	%xmm6, %xmm2, %xmm0	# tmp1355, tmp1349, tmp1372
	vmovdqa	%xmm0, %xmm2	# tmp1372, tmp1373
	vpunpcklwd	%xmm5, %xmm3, %xmm0	# tmp1367, tmp1361, tmp1374
	vmovdqa	%xmm0, %xmm3	# tmp1374, tmp1375
	vpunpckldq	%xmm4, %xmm1, %xmm0	# tmp1371, tmp1369, tmp1376
	vmovdqa	%xmm0, %xmm1	# tmp1376, tmp1377
	vpunpckldq	%xmm3, %xmm2, %xmm0	# tmp1375, tmp1373, tmp1378
	vpunpcklqdq	%xmm0, %xmm1, %xmm0	# tmp1379, tmp1377, tmp1380
	vmovdqa	%xmm0, %xmm1	# tmp1380, tmp1318
	movzbl	-796(%rbp), %eax	# __q16, tmp1382
	movl	%eax, -840(%rbp)	# tmp1382, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp1383
	movzbl	-797(%rbp), %eax	# __q17, tmp1385
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1385, tmp1384, tmp1384
	vmovdqa	%xmm0, %xmm2	# tmp1384, tmp1386
	movzbl	-798(%rbp), %eax	# __q18, tmp1388
	movl	%eax, -840(%rbp)	# tmp1388, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp1389
	movzbl	-799(%rbp), %eax	# __q19, tmp1391
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1391, tmp1390, tmp1390
	vmovdqa	%xmm0, %xmm9	# tmp1390, tmp1392
	movzbl	-800(%rbp), %eax	# __q20, tmp1394
	movl	%eax, -840(%rbp)	# tmp1394, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp1395
	movzbl	-801(%rbp), %eax	# __q21, tmp1397
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1397, tmp1396, tmp1396
	vmovdqa	%xmm0, %xmm5	# tmp1396, tmp1398
	movzbl	-802(%rbp), %eax	# __q22, tmp1400
	movl	%eax, -840(%rbp)	# tmp1400, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp1401
	movzbl	-803(%rbp), %eax	# __q23, tmp1403
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1403, tmp1402, tmp1402
	vmovdqa	%xmm0, %xmm8	# tmp1402, tmp1404
	movzbl	-804(%rbp), %eax	# __q24, tmp1406
	movl	%eax, -840(%rbp)	# tmp1406, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp1407
	movzbl	-805(%rbp), %eax	# __q25, tmp1409
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1409, tmp1408, tmp1408
	vmovdqa	%xmm0, %xmm3	# tmp1408, tmp1410
	movzbl	-806(%rbp), %eax	# __q26, tmp1412
	movl	%eax, -840(%rbp)	# tmp1412, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp1413
	movzbl	-807(%rbp), %eax	# __q27, tmp1415
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1415, tmp1414, tmp1414
	vmovdqa	%xmm0, %xmm7	# tmp1414, tmp1416
	movzbl	-808(%rbp), %eax	# __q28, tmp1418
	movl	%eax, -840(%rbp)	# tmp1418, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp1419
	movzbl	-809(%rbp), %eax	# __q29, tmp1421
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1421, tmp1420, tmp1420
	vmovdqa	%xmm0, %xmm4	# tmp1420, tmp1422
	movzbl	-810(%rbp), %eax	# __q30, tmp1424
	movl	%eax, -840(%rbp)	# tmp1424, %sfp
	vmovd	-840(%rbp), %xmm0	# %sfp, tmp1425
	movzbl	-811(%rbp), %eax	# __q31, tmp1427
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1427, tmp1426, tmp1426
	vmovdqa	%xmm0, %xmm6	# tmp1426, tmp1428
	vpunpcklwd	%xmm9, %xmm2, %xmm0	# tmp1392, tmp1386, tmp1429
	vmovdqa	%xmm0, %xmm2	# tmp1429, tmp1430
	vpunpcklwd	%xmm8, %xmm5, %xmm0	# tmp1404, tmp1398, tmp1431
	vmovdqa	%xmm0, %xmm5	# tmp1431, tmp1432
	vpunpcklwd	%xmm7, %xmm3, %xmm0	# tmp1416, tmp1410, tmp1433
	vmovdqa	%xmm0, %xmm3	# tmp1433, tmp1434
	vpunpcklwd	%xmm6, %xmm4, %xmm0	# tmp1428, tmp1422, tmp1435
	vmovdqa	%xmm0, %xmm4	# tmp1435, tmp1436
	vpunpckldq	%xmm5, %xmm2, %xmm0	# tmp1432, tmp1430, tmp1437
	vmovdqa	%xmm0, %xmm2	# tmp1437, tmp1438
	vpunpckldq	%xmm4, %xmm3, %xmm0	# tmp1436, tmp1434, tmp1439
	vpunpcklqdq	%xmm0, %xmm2, %xmm0	# tmp1440, tmp1438, tmp1441
	vinserti128	$0x1, %xmm0, %ymm1, %ymm0	# tmp1319, tmp1318, tmp1317
.LBE150:
.LBE149:
.LBE148:
.LBE147:
# mem_bw_final.cpp:61: 	__m256i sum_res7 = _mm256_set1_epi8(0);
	.loc 3 61 0
	vmovdqa	%ymm0, -400(%rbp)	# D.62780, sum_res7
# mem_bw_final.cpp:64: 	double run_time = 0;
	.loc 3 64 0
	vxorpd	%xmm0, %xmm0, %xmm0	# tmp1442
	vmovsd	%xmm0, -456(%rbp)	# tmp1442, run_time
# mem_bw_final.cpp:68: 	clock_start = system_clock::now();
	.loc 3 68 0
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
	movq	%rax, -536(%rbp)	# tmp1444, clock_start
.LBB151:
# mem_bw_final.cpp:69: #pragma omp parallel private(thread_id,sum_res,sum_res1,sum_res2,sum_res3,sum_res4,sum_res5,sum_res6,sum_res7)
	.loc 3 69 0
	movq	-480(%rbp), %rax	# num_of_feeds, tmp1445
	movq	%rax, -120(%rbp)	# tmp1445, .omp_data_o.13.num_of_feeds
	movq	-472(%rbp), %rax	# inputs, tmp1446
	movq	%rax, -128(%rbp)	# tmp1446, .omp_data_o.13.inputs
	movl	-544(%rbp), %eax	# loop_count, tmp1447
	movl	%eax, -112(%rbp)	# tmp1447, .omp_data_o.13.loop_count
	leaq	-128(%rbp), %rax	#, tmp1448
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rsi	# tmp1448,
	leaq	main._omp_fn.2(%rip), %rdi	#,
	call	GOMP_parallel@PLT	#
.LBE151:
# mem_bw_final.cpp:98: 	clock_end = system_clock::now();
	.loc 3 98 0
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
	movq	%rax, -528(%rbp)	# tmp1450, clock_end
# mem_bw_final.cpp:99: 	elapsed_time = clock_end - clock_start;
	.loc 3 99 0
	leaq	-536(%rbp), %rdx	#, tmp1451
	leaq	-528(%rbp), %rax	#, tmp1452
	movq	%rdx, %rsi	# tmp1451,
	movq	%rax, %rdi	# tmp1452,
	call	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE	#
	movq	%rax, -512(%rbp)	# tmp1454, D.58677
	leaq	-512(%rbp), %rdx	#, tmp1455
	leaq	-128(%rbp), %rax	#, tmp1456
	movq	%rdx, %rsi	# tmp1455,
	movq	%rax, %rdi	# tmp1456,
	call	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE	#
	vmovsd	-128(%rbp), %xmm0	# D.58709, tmp1457
	vmovsd	%xmm0, -520(%rbp)	# tmp1457, elapsed_time
# mem_bw_final.cpp:100: 	run_time = elapsed_time.count();
	.loc 3 100 0
	leaq	-520(%rbp), %rax	#, tmp1458
	movq	%rax, %rdi	# tmp1458,
	call	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv	#
	vmovq	%xmm0, %rax	#, tmp1459
	movq	%rax, -456(%rbp)	# tmp1459, run_time
# mem_bw_final.cpp:103: 	double read_bw_bits_per_sec = (num_of_feeds * thread_count * 256 * loop_count) / (1024 * 1024 * 1024 * run_time);	        //Bandwidth of read in Giga bits/second
	.loc 3 103 0
	movl	-540(%rbp), %eax	# thread_count, tmp1460
	cltq
	imulq	-480(%rbp), %rax	# num_of_feeds, _22
	salq	$8, %rax	#, _22
	movq	%rax, %rdx	# _22, _23
	movl	-544(%rbp), %eax	# loop_count, tmp1461
	cltq
	imulq	%rdx, %rax	# _23, _25
	vcvtsi2sdq	%rax, %xmm0, %xmm0	# _25, _26
	vmovsd	-456(%rbp), %xmm2	# run_time, tmp1462
	vmovsd	.LC2(%rip), %xmm1	#, tmp1463
	vmulsd	%xmm1, %xmm2, %xmm1	# tmp1463, tmp1462, _27
	vdivsd	%xmm1, %xmm0, %xmm0	# _27, _26, tmp1464
	vmovsd	%xmm0, -448(%rbp)	# tmp1464, read_bw_bits_per_sec
# mem_bw_final.cpp:107: 	double read_bw_bytes_per_sec = read_bw_bits_per_sec / 8;
	.loc 3 107 0
	vmovsd	-448(%rbp), %xmm0	# read_bw_bits_per_sec, tmp1466
	vmovsd	.LC3(%rip), %xmm1	#, tmp1467
	vdivsd	%xmm1, %xmm0, %xmm0	# tmp1467, tmp1466, tmp1465
	vmovsd	%xmm0, -440(%rbp)	# tmp1465, read_bw_bytes_per_sec
# mem_bw_final.cpp:109: 	run_time = 0;
	.loc 3 109 0
	vxorpd	%xmm0, %xmm0, %xmm0	# tmp1468
	vmovsd	%xmm0, -456(%rbp)	# tmp1468, run_time
.LBB152:
# mem_bw_final.cpp:113: #pragma omp parallel private(thread_id) reduction(max:run_time)
	.loc 3 113 0
	vmovsd	-456(%rbp), %xmm0	# run_time, tmp1469
	vmovsd	%xmm0, -88(%rbp)	# tmp1469, .omp_data_o.14.run_time
	movq	-480(%rbp), %rax	# num_of_feeds, tmp1470
	movq	%rax, -96(%rbp)	# tmp1470, .omp_data_o.14.num_of_feeds
	movq	-472(%rbp), %rax	# inputs, tmp1471
	movq	%rax, -128(%rbp)	# tmp1471, .omp_data_o.14.inputs
	movl	-544(%rbp), %eax	# loop_count, tmp1472
	movl	%eax, -80(%rbp)	# tmp1472, .omp_data_o.14.loop_count
	leaq	-536(%rbp), %rax	#, tmp1473
	movq	%rax, -120(%rbp)	# tmp1473, .omp_data_o.14.clock_start
	leaq	-528(%rbp), %rax	#, tmp1474
	movq	%rax, -112(%rbp)	# tmp1474, .omp_data_o.14.clock_end
	leaq	-520(%rbp), %rax	#, tmp1475
	movq	%rax, -104(%rbp)	# tmp1475, .omp_data_o.14.elapsed_time
	leaq	-128(%rbp), %rax	#, tmp1476
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rsi	# tmp1476,
	leaq	main._omp_fn.3(%rip), %rdi	#,
	call	GOMP_parallel@PLT	#
	vmovsd	-88(%rbp), %xmm0	# .omp_data_o.14.run_time, tmp1477
	vmovsd	%xmm0, -456(%rbp)	# tmp1477, run_time
.LBE152:
# mem_bw_final.cpp:152: 	double write_bw_bits_per_sec = (num_of_feeds * thread_count * 256 ) / (1024 * 1024 * 1024 * run_time);	        //Bandwidth of write in Giga bits/second
	.loc 3 152 0
	movl	-540(%rbp), %eax	# thread_count, tmp1478
	cltq
	imulq	-480(%rbp), %rax	# num_of_feeds, _29
	salq	$8, %rax	#, _30
	vcvtsi2sdq	%rax, %xmm0, %xmm0	# _30, _31
	vmovsd	-456(%rbp), %xmm2	# run_time, tmp1479
	vmovsd	.LC2(%rip), %xmm1	#, tmp1480
	vmulsd	%xmm1, %xmm2, %xmm1	# tmp1480, tmp1479, _32
	vdivsd	%xmm1, %xmm0, %xmm0	# _32, _31, tmp1481
	vmovsd	%xmm0, -432(%rbp)	# tmp1481, write_bw_bits_per_sec
# mem_bw_final.cpp:156: 	double write_bw_bytes_per_sec = write_bw_bits_per_sec / 8;
	.loc 3 156 0
	vmovsd	-432(%rbp), %xmm0	# write_bw_bits_per_sec, tmp1483
	vmovsd	.LC3(%rip), %xmm1	#, tmp1484
	vdivsd	%xmm1, %xmm0, %xmm0	# tmp1484, tmp1483, tmp1482
	vmovsd	%xmm0, -424(%rbp)	# tmp1482, write_bw_bytes_per_sec
# mem_bw_final.cpp:159: 	run_time = 0;
	.loc 3 159 0
	vxorpd	%xmm0, %xmm0, %xmm0	# tmp1485
	vmovsd	%xmm0, -456(%rbp)	# tmp1485, run_time
.LBB153:
# mem_bw_final.cpp:163: #pragma omp parallel private(thread_id) reduction(max:run_time)
	.loc 3 163 0
	vmovsd	-456(%rbp), %xmm0	# run_time, tmp1486
	vmovsd	%xmm0, -80(%rbp)	# tmp1486, .omp_data_o.15.run_time
	movq	-480(%rbp), %rax	# num_of_feeds, tmp1487
	movq	%rax, -88(%rbp)	# tmp1487, .omp_data_o.15.num_of_feeds
	movq	-464(%rbp), %rax	# copies, tmp1488
	movq	%rax, -120(%rbp)	# tmp1488, .omp_data_o.15.copies
	movq	-472(%rbp), %rax	# inputs, tmp1489
	movq	%rax, -128(%rbp)	# tmp1489, .omp_data_o.15.inputs
	movl	-544(%rbp), %eax	# loop_count, tmp1490
	movl	%eax, -72(%rbp)	# tmp1490, .omp_data_o.15.loop_count
	leaq	-536(%rbp), %rax	#, tmp1491
	movq	%rax, -112(%rbp)	# tmp1491, .omp_data_o.15.clock_start
	leaq	-528(%rbp), %rax	#, tmp1492
	movq	%rax, -104(%rbp)	# tmp1492, .omp_data_o.15.clock_end
	leaq	-520(%rbp), %rax	#, tmp1493
	movq	%rax, -96(%rbp)	# tmp1493, .omp_data_o.15.elapsed_time
	leaq	-128(%rbp), %rax	#, tmp1494
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rsi	# tmp1494,
	leaq	main._omp_fn.4(%rip), %rdi	#,
	call	GOMP_parallel@PLT	#
	vmovsd	-80(%rbp), %xmm0	# .omp_data_o.15.run_time, tmp1495
	vmovsd	%xmm0, -456(%rbp)	# tmp1495, run_time
.LBE153:
# mem_bw_final.cpp:196: 	double readwrite_bw_bits_per_sec = (num_of_feeds * thread_count * 256 ) / (1024 * 1024 * 1024 * run_time);	        //Bandwidth of read-write in Giga bits/second
	.loc 3 196 0
	movl	-540(%rbp), %eax	# thread_count, tmp1496
	cltq
	imulq	-480(%rbp), %rax	# num_of_feeds, _34
	salq	$8, %rax	#, _35
	vcvtsi2sdq	%rax, %xmm0, %xmm0	# _35, _36
	vmovsd	-456(%rbp), %xmm2	# run_time, tmp1497
	vmovsd	.LC2(%rip), %xmm1	#, tmp1498
	vmulsd	%xmm1, %xmm2, %xmm1	# tmp1498, tmp1497, _37
	vdivsd	%xmm1, %xmm0, %xmm0	# _37, _36, tmp1499
	vmovsd	%xmm0, -416(%rbp)	# tmp1499, readwrite_bw_bits_per_sec
# mem_bw_final.cpp:200: 	double readwrite_bw_bytes_per_sec = readwrite_bw_bits_per_sec / 8;
	.loc 3 200 0
	vmovsd	-416(%rbp), %xmm0	# readwrite_bw_bits_per_sec, tmp1501
	vmovsd	.LC3(%rip), %xmm1	#, tmp1502
	vdivsd	%xmm1, %xmm0, %xmm0	# tmp1502, tmp1501, tmp1500
	vmovsd	%xmm0, -408(%rbp)	# tmp1500, readwrite_bw_bytes_per_sec
# mem_bw_final.cpp:206: 	cout << atoi(argv[1]) << "\t" << read_bw_bytes_per_sec << "\t\t" << write_bw_bytes_per_sec<< "\t\t" << readwrite_bw_bytes_per_sec;
	.loc 3 206 0
	movq	-832(%rbp), %rax	# argv, tmp1503
	addq	$8, %rax	#, _38
	movq	(%rax), %rax	# *_38, _39
	movq	%rax, %rdi	# _39,
	call	atoi@PLT	#
	movl	%eax, %esi	# _40,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZNSolsEi@PLT	#
	leaq	.LC4(%rip), %rsi	#,
	movq	%rax, %rdi	# _41,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _42
	movq	-440(%rbp), %rax	# read_bw_bytes_per_sec, tmp1504
	movq	%rax, -840(%rbp)	# tmp1504, %sfp
	vmovsd	-840(%rbp), %xmm0	# %sfp,
	movq	%rdx, %rdi	# _42,
	call	_ZNSolsEd@PLT	#
	leaq	.LC5(%rip), %rsi	#,
	movq	%rax, %rdi	# _43,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _44
	movq	-424(%rbp), %rax	# write_bw_bytes_per_sec, tmp1505
	movq	%rax, -840(%rbp)	# tmp1505, %sfp
	vmovsd	-840(%rbp), %xmm0	# %sfp,
	movq	%rdx, %rdi	# _44,
	call	_ZNSolsEd@PLT	#
	leaq	.LC5(%rip), %rsi	#,
	movq	%rax, %rdi	# _45,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _46
	movq	-408(%rbp), %rax	# readwrite_bw_bytes_per_sec, tmp1506
	movq	%rax, -840(%rbp)	# tmp1506, %sfp
	vmovsd	-840(%rbp), %xmm0	# %sfp,
	movq	%rdx, %rdi	# _46,
	call	_ZNSolsEd@PLT	#
# mem_bw_final.cpp:208: 	_mm_free(inputs);
	.loc 3 208 0
	movq	-472(%rbp), %rax	# inputs, tmp1507
	movq	%rax, %rdi	# tmp1507,
	call	_ZL8_mm_freePv	#
# mem_bw_final.cpp:209: 	_mm_free(copies);
	.loc 3 209 0
	movq	-464(%rbp), %rax	# copies, tmp1508
	movq	%rax, %rdi	# tmp1508,
	call	_ZL8_mm_freePv	#
# mem_bw_final.cpp:211: 	cout << endl;
	.loc 3 211 0
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax	#, tmp1509
	movq	%rax, %rsi	# tmp1509,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZNSolsEPFRSoS_E@PLT	#
# mem_bw_final.cpp:213: 	return 0;
	.loc 3 213 0
	movl	$0, %eax	#, _146
# mem_bw_final.cpp:215: }
	.loc 3 215 0
	movq	-56(%rbp), %rsi	# D.63066, tmp1513
	xorq	%fs:40, %rsi	#, tmp1513
	je	.L49	#,
	call	__stack_chk_fail@PLT	#
.L49:
	addq	$864, %rsp	#,
	popq	%rbx	#
	popq	%r10	#
	.cfi_def_cfa 10, 0
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	leaq	-8(%r10), %rsp	#,
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5367:
	.size	main, .-main
	.section	.text._ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv,"axG",@progbits,_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv,comdat
	.align 2
	.weak	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv
	.type	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv, @function
_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv:
.LFB5567:
	.loc 2 342 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include/c++/7/chrono:343: 	{ return __r; }
	.loc 2 343 0
	movq	-8(%rbp), %rax	# this, tmp89
	vmovsd	(%rax), %xmm0	# this_2(D)->__r, _3
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5567:
	.size	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv, .-_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB5708:
	.loc 3 215 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# __initialize_p, __initialize_p
	movl	%esi, -8(%rbp)	# __priority, __priority
# mem_bw_final.cpp:215: }
	.loc 3 215 0
	cmpl	$1, -4(%rbp)	#, __initialize_p
	jne	.L54	#,
# mem_bw_final.cpp:215: }
	.loc 3 215 0 is_stmt 0 discriminator 1
	cmpl	$65535, -8(%rbp)	#, __priority
	jne	.L54	#,
# /usr/include/c++/7/iostream:74:   static ios_base::Init __ioinit;
	.file 5 "/usr/include/c++/7/iostream"
	.loc 5 74 0 is_stmt 1
	leaq	_ZStL8__ioinit(%rip), %rdi	#,
	call	_ZNSt8ios_base4InitC1Ev@PLT	#
	leaq	__dso_handle(%rip), %rdx	#,
	leaq	_ZStL8__ioinit(%rip), %rsi	#,
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax	#, tmp87
	movq	%rax, %rdi	# tmp87,
	call	__cxa_atexit@PLT	#
.L54:
# mem_bw_final.cpp:215: }
	.loc 3 215 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5708:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB5709:
	.loc 3 215 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# mem_bw_final.cpp:215: }
	.loc 3 215 0
	movl	$65535, %esi	#,
	movl	$1, %edi	#,
	call	_Z41__static_initialization_and_destruction_0ii	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5709:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.text
	.type	main._omp_fn.0, @function
main._omp_fn.0:
.LFB5710:
	.loc 3 29 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# .omp_data_i, .omp_data_i
# mem_bw_final.cpp:31: 		thread_count = omp_get_num_threads();
	.loc 3 31 0
	call	omp_get_num_threads@PLT	#
	movl	%eax, %edx	#, _3
	movq	-8(%rbp), %rax	# .omp_data_i, tmp88
	movl	%edx, (%rax)	# _3, .omp_data_i_4(D)->thread_count
# mem_bw_final.cpp:29: #pragma omp parallel
	.loc 3 29 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5710:
	.size	main._omp_fn.0, .-main._omp_fn.0
	.type	main._omp_fn.1, @function
main._omp_fn.1:
.LFB5711:
	.loc 3 44 0
	.cfi_startproc
	leaq	8(%rsp), %r10	#,
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp	#,
	pushq	-8(%r10)	#
	pushq	%rbp	#
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp	#,
	pushq	%r15	#
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%r10	#
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx	#
	subq	$160, %rsp	#,
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	%rdi, -120(%rbp)	# .omp_data_i, .omp_data_i
# mem_bw_final.cpp:44: #pragma omp parallel default(shared) private(thread_id)
	.loc 3 44 0
	movq	-120(%rbp), %rax	# .omp_data_i, tmp129
	movq	8(%rax), %rax	# .omp_data_i_4(D)->num_of_feeds, tmp130
	movq	%rax, -64(%rbp)	# tmp130, num_of_feeds
	movq	-120(%rbp), %rax	# .omp_data_i, tmp131
	movq	(%rax), %rax	# .omp_data_i_4(D)->inputs, tmp132
	movq	%rax, -56(%rbp)	# tmp132, inputs
.LBB154:
# mem_bw_final.cpp:46: 		thread_id = omp_get_thread_num();
	.loc 3 46 0
	call	omp_get_thread_num@PLT	#
	movl	%eax, -68(%rbp)	# tmp133, thread_id
.LBB155:
# mem_bw_final.cpp:48: 		for (int i = 0; i < num_of_feeds; i++)
	.loc 3 48 0
	movl	$0, -72(%rbp)	#, i
.L61:
# mem_bw_final.cpp:48: 		for (int i = 0; i < num_of_feeds; i++)
	.loc 3 48 0 is_stmt 0 discriminator 3
	movl	-72(%rbp), %eax	# i, tmp134
	cltq
	cmpq	-64(%rbp), %rax	# num_of_feeds, _10
	jge	.L62	#,
# mem_bw_final.cpp:50: 			inputs[thread_id][i] = _mm256_set1_epi8(1);
	.loc 3 50 0 is_stmt 1 discriminator 2
	movl	-68(%rbp), %eax	# thread_id, tmp135
	cltq
	leaq	0(,%rax,8), %rdx	#, _12
	movq	-56(%rbp), %rax	# inputs, tmp136
	addq	%rdx, %rax	# _12, _13
	movq	(%rax), %rax	# *_13, _14
	movl	-72(%rbp), %edx	# i, tmp137
	movslq	%edx, %rdx	# tmp137, _15
	salq	$5, %rdx	#, _16
	addq	%rdx, %rax	# _16, _17
	movq	%rax, -128(%rbp)	# _17, %sfp
	movb	$1, -105(%rbp)	#, __A
.LBB156:
.LBB157:
# /usr/lib/gcc/x86_64-linux-gnu/7/include/avxintrin.h:1334:   return _mm256_set_epi8 (__A, __A, __A, __A, __A, __A, __A, __A,
	.loc 4 1334 0 discriminator 2
	movsbl	-105(%rbp), %eax	# __A, _22
	movl	%eax, -132(%rbp)	# _22, %sfp
	movsbl	-105(%rbp), %ecx	# __A, _23
	movl	%ecx, -136(%rbp)	# _23, %sfp
	movsbl	-105(%rbp), %esi	# __A, _24
	movl	%esi, -140(%rbp)	# _24, %sfp
	movsbl	-105(%rbp), %ebx	# __A, _25
	movl	%ebx, -144(%rbp)	# _25, %sfp
	movsbl	-105(%rbp), %edi	# __A, _26
	movl	%edi, -148(%rbp)	# _26, %sfp
	movsbl	-105(%rbp), %edx	# __A, _27
	movl	%edx, -152(%rbp)	# _27, %sfp
	movsbl	-105(%rbp), %r8d	# __A, _28
	movl	%r8d, -156(%rbp)	# _28, %sfp
	movsbl	-105(%rbp), %r9d	# __A, _29
	movl	%r9d, -160(%rbp)	# _29, %sfp
	movsbl	-105(%rbp), %r10d	# __A, _30
	movl	%r10d, -164(%rbp)	# _30, %sfp
	movsbl	-105(%rbp), %r11d	# __A, _31
	movl	%r11d, -168(%rbp)	# _31, %sfp
	movsbl	-105(%rbp), %r14d	# __A, _32
	movl	%r14d, -172(%rbp)	# _32, %sfp
	movsbl	-105(%rbp), %r15d	# __A, _33
	movl	%r15d, -176(%rbp)	# _33, %sfp
	movsbl	-105(%rbp), %r12d	# __A, _34
	movl	%r12d, -180(%rbp)	# _34, %sfp
	movsbl	-105(%rbp), %r13d	# __A, _35
	movl	%r13d, -184(%rbp)	# _35, %sfp
	movsbl	-105(%rbp), %eax	# __A, _36
	movl	%eax, -188(%rbp)	# _36, %sfp
	movsbl	-105(%rbp), %ecx	# __A, _37
	movl	%ecx, -192(%rbp)	# _37, %sfp
	movsbl	-105(%rbp), %esi	# __A, _38
	movl	%esi, -196(%rbp)	# _38, %sfp
	movsbl	-105(%rbp), %ebx	# __A, _39
	movl	%ebx, -200(%rbp)	# _39, %sfp
	movsbl	-105(%rbp), %r15d	# __A, _40
	movsbl	-105(%rbp), %r14d	# __A, _41
	movsbl	-105(%rbp), %r13d	# __A, _42
	movsbl	-105(%rbp), %r12d	# __A, _43
	movsbl	-105(%rbp), %ebx	# __A, _44
	movsbl	-105(%rbp), %r11d	# __A, _45
	movsbl	-105(%rbp), %r10d	# __A, _46
	movsbl	-105(%rbp), %r9d	# __A, _47
	movsbl	-105(%rbp), %r8d	# __A, _48
	movsbl	-105(%rbp), %edi	# __A, _49
	movsbl	-105(%rbp), %esi	# __A, _50
	movsbl	-105(%rbp), %ecx	# __A, _51
	movsbl	-105(%rbp), %edx	# __A, _52
	movsbl	-105(%rbp), %eax	# __A, _53
	movb	%al, -104(%rbp)	# _53, __q31
	movb	%dl, -103(%rbp)	# _52, __q30
	movb	%cl, -102(%rbp)	# _51, __q29
	movb	%sil, -101(%rbp)	# _50, __q28
	movb	%dil, -100(%rbp)	# _49, __q27
	movb	%r8b, -99(%rbp)	# _48, __q26
	movb	%r9b, -98(%rbp)	# _47, __q25
	movb	%r10b, -97(%rbp)	# _46, __q24
	movb	%r11b, -96(%rbp)	# _45, __q23
	movb	%bl, -95(%rbp)	# _44, __q22
	movb	%r12b, -94(%rbp)	# _43, __q21
	movb	%r13b, -93(%rbp)	# _42, __q20
	movb	%r14b, -92(%rbp)	# _41, __q19
	movb	%r15b, -91(%rbp)	# _40, __q18
	movzbl	-200(%rbp), %edi	# %sfp, tmp283
	movb	%dil, -90(%rbp)	# tmp283, __q17
	movzbl	-196(%rbp), %esi	# %sfp, tmp284
	movb	%sil, -89(%rbp)	# tmp284, __q16
	movzbl	-192(%rbp), %ecx	# %sfp, tmp285
	movb	%cl, -88(%rbp)	# tmp285, __q15
	movzbl	-188(%rbp), %eax	# %sfp, tmp286
	movb	%al, -87(%rbp)	# tmp286, __q14
	movzbl	-184(%rbp), %r13d	# %sfp, tmp287
	movb	%r13b, -86(%rbp)	# tmp287, __q13
	movzbl	-180(%rbp), %r12d	# %sfp, tmp288
	movb	%r12b, -85(%rbp)	# tmp288, __q12
	movzbl	-176(%rbp), %r15d	# %sfp, tmp289
	movb	%r15b, -84(%rbp)	# tmp289, __q11
	movzbl	-172(%rbp), %r14d	# %sfp, tmp290
	movb	%r14b, -83(%rbp)	# tmp290, __q10
	movzbl	-168(%rbp), %r11d	# %sfp, tmp291
	movb	%r11b, -82(%rbp)	# tmp291, __q09
	movzbl	-164(%rbp), %r10d	# %sfp, tmp292
	movb	%r10b, -81(%rbp)	# tmp292, __q08
	movzbl	-160(%rbp), %r9d	# %sfp, tmp293
	movb	%r9b, -80(%rbp)	# tmp293, __q07
	movzbl	-156(%rbp), %r8d	# %sfp, tmp294
	movb	%r8b, -79(%rbp)	# tmp294, __q06
	movzbl	-152(%rbp), %edx	# %sfp, tmp295
	movb	%dl, -78(%rbp)	# tmp295, __q05
	movzbl	-148(%rbp), %edi	# %sfp, tmp296
	movb	%dil, -77(%rbp)	# tmp296, __q04
	movzbl	-144(%rbp), %ebx	# %sfp, tmp297
	movb	%bl, -76(%rbp)	# tmp297, __q03
	movzbl	-140(%rbp), %esi	# %sfp, tmp298
	movb	%sil, -75(%rbp)	# tmp298, __q02
	movzbl	-136(%rbp), %ecx	# %sfp, tmp299
	movb	%cl, -74(%rbp)	# tmp299, __q01
	movzbl	-132(%rbp), %eax	# %sfp, tmp300
	movb	%al, -73(%rbp)	# tmp300, __q00
.LBB158:
.LBB159:
# /usr/lib/gcc/x86_64-linux-gnu/7/include/avxintrin.h:1286:   return __extension__ (__m256i)(__v32qi){
	.loc 4 1286 0 discriminator 2
	movzbl	-73(%rbp), %eax	# __q00, tmp142
	movl	%eax, -132(%rbp)	# tmp142, %sfp
	vmovd	-132(%rbp), %xmm0	# %sfp, tmp143
	movzbl	-74(%rbp), %eax	# __q01, tmp145
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp145, tmp144, tmp144
	vmovdqa	%xmm0, %xmm1	# tmp144, tmp146
	movzbl	-75(%rbp), %eax	# __q02, tmp148
	movl	%eax, -132(%rbp)	# tmp148, %sfp
	vmovd	-132(%rbp), %xmm0	# %sfp, tmp149
	movzbl	-76(%rbp), %eax	# __q03, tmp151
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp151, tmp150, tmp150
	vmovdqa	%xmm0, %xmm8	# tmp150, tmp152
	movzbl	-77(%rbp), %eax	# __q04, tmp154
	movl	%eax, -132(%rbp)	# tmp154, %sfp
	vmovd	-132(%rbp), %xmm0	# %sfp, tmp155
	movzbl	-78(%rbp), %eax	# __q05, tmp157
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp157, tmp156, tmp156
	vmovdqa	%xmm0, %xmm4	# tmp156, tmp158
	movzbl	-79(%rbp), %eax	# __q06, tmp160
	movl	%eax, -132(%rbp)	# tmp160, %sfp
	vmovd	-132(%rbp), %xmm0	# %sfp, tmp161
	movzbl	-80(%rbp), %eax	# __q07, tmp163
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp163, tmp162, tmp162
	vmovdqa	%xmm0, %xmm7	# tmp162, tmp164
	movzbl	-81(%rbp), %eax	# __q08, tmp166
	movl	%eax, -132(%rbp)	# tmp166, %sfp
	vmovd	-132(%rbp), %xmm0	# %sfp, tmp167
	movzbl	-82(%rbp), %eax	# __q09, tmp169
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp169, tmp168, tmp168
	vmovdqa	%xmm0, %xmm2	# tmp168, tmp170
	movzbl	-83(%rbp), %eax	# __q10, tmp172
	movl	%eax, -132(%rbp)	# tmp172, %sfp
	vmovd	-132(%rbp), %xmm0	# %sfp, tmp173
	movzbl	-84(%rbp), %eax	# __q11, tmp175
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp175, tmp174, tmp174
	vmovdqa	%xmm0, %xmm6	# tmp174, tmp176
	movzbl	-85(%rbp), %eax	# __q12, tmp178
	movl	%eax, -132(%rbp)	# tmp178, %sfp
	vmovd	-132(%rbp), %xmm0	# %sfp, tmp179
	movzbl	-86(%rbp), %eax	# __q13, tmp181
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp181, tmp180, tmp180
	vmovdqa	%xmm0, %xmm3	# tmp180, tmp182
	movzbl	-87(%rbp), %eax	# __q14, tmp184
	movl	%eax, -132(%rbp)	# tmp184, %sfp
	vmovd	-132(%rbp), %xmm0	# %sfp, tmp185
	movzbl	-88(%rbp), %eax	# __q15, tmp187
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp187, tmp186, tmp186
	vmovdqa	%xmm0, %xmm5	# tmp186, tmp188
	vpunpcklwd	%xmm8, %xmm1, %xmm0	# tmp152, tmp146, tmp189
	vmovdqa	%xmm0, %xmm1	# tmp189, tmp190
	vpunpcklwd	%xmm7, %xmm4, %xmm0	# tmp164, tmp158, tmp191
	vmovdqa	%xmm0, %xmm4	# tmp191, tmp192
	vpunpcklwd	%xmm6, %xmm2, %xmm0	# tmp176, tmp170, tmp193
	vmovdqa	%xmm0, %xmm2	# tmp193, tmp194
	vpunpcklwd	%xmm5, %xmm3, %xmm0	# tmp188, tmp182, tmp195
	vmovdqa	%xmm0, %xmm3	# tmp195, tmp196
	vpunpckldq	%xmm4, %xmm1, %xmm0	# tmp192, tmp190, tmp197
	vmovdqa	%xmm0, %xmm1	# tmp197, tmp198
	vpunpckldq	%xmm3, %xmm2, %xmm0	# tmp196, tmp194, tmp199
	vpunpcklqdq	%xmm0, %xmm1, %xmm0	# tmp200, tmp198, tmp201
	vmovdqa	%xmm0, %xmm1	# tmp201, tmp139
	movzbl	-89(%rbp), %eax	# __q16, tmp203
	movl	%eax, -132(%rbp)	# tmp203, %sfp
	vmovd	-132(%rbp), %xmm0	# %sfp, tmp204
	movzbl	-90(%rbp), %eax	# __q17, tmp206
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp206, tmp205, tmp205
	vmovdqa	%xmm0, %xmm2	# tmp205, tmp207
	movzbl	-91(%rbp), %eax	# __q18, tmp209
	movl	%eax, -132(%rbp)	# tmp209, %sfp
	vmovd	-132(%rbp), %xmm0	# %sfp, tmp210
	movzbl	-92(%rbp), %eax	# __q19, tmp212
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp212, tmp211, tmp211
	vmovdqa	%xmm0, %xmm9	# tmp211, tmp213
	movzbl	-93(%rbp), %eax	# __q20, tmp215
	movl	%eax, -132(%rbp)	# tmp215, %sfp
	vmovd	-132(%rbp), %xmm0	# %sfp, tmp216
	movzbl	-94(%rbp), %eax	# __q21, tmp218
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp218, tmp217, tmp217
	vmovdqa	%xmm0, %xmm5	# tmp217, tmp219
	movzbl	-95(%rbp), %eax	# __q22, tmp221
	movl	%eax, -132(%rbp)	# tmp221, %sfp
	vmovd	-132(%rbp), %xmm0	# %sfp, tmp222
	movzbl	-96(%rbp), %eax	# __q23, tmp224
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp224, tmp223, tmp223
	vmovdqa	%xmm0, %xmm8	# tmp223, tmp225
	movzbl	-97(%rbp), %eax	# __q24, tmp227
	movl	%eax, -132(%rbp)	# tmp227, %sfp
	vmovd	-132(%rbp), %xmm0	# %sfp, tmp228
	movzbl	-98(%rbp), %eax	# __q25, tmp230
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp230, tmp229, tmp229
	vmovdqa	%xmm0, %xmm3	# tmp229, tmp231
	movzbl	-99(%rbp), %eax	# __q26, tmp233
	movl	%eax, -132(%rbp)	# tmp233, %sfp
	vmovd	-132(%rbp), %xmm0	# %sfp, tmp234
	movzbl	-100(%rbp), %eax	# __q27, tmp236
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp236, tmp235, tmp235
	vmovdqa	%xmm0, %xmm7	# tmp235, tmp237
	movzbl	-101(%rbp), %eax	# __q28, tmp239
	movl	%eax, -132(%rbp)	# tmp239, %sfp
	vmovd	-132(%rbp), %xmm0	# %sfp, tmp240
	movzbl	-102(%rbp), %eax	# __q29, tmp242
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp242, tmp241, tmp241
	vmovdqa	%xmm0, %xmm4	# tmp241, tmp243
	movzbl	-103(%rbp), %eax	# __q30, tmp245
	movl	%eax, -132(%rbp)	# tmp245, %sfp
	vmovd	-132(%rbp), %xmm0	# %sfp, tmp246
	movzbl	-104(%rbp), %eax	# __q31, tmp248
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp248, tmp247, tmp247
	vmovdqa	%xmm0, %xmm6	# tmp247, tmp249
	vpunpcklwd	%xmm9, %xmm2, %xmm0	# tmp213, tmp207, tmp250
	vmovdqa	%xmm0, %xmm2	# tmp250, tmp251
	vpunpcklwd	%xmm8, %xmm5, %xmm0	# tmp225, tmp219, tmp252
	vmovdqa	%xmm0, %xmm5	# tmp252, tmp253
	vpunpcklwd	%xmm7, %xmm3, %xmm0	# tmp237, tmp231, tmp254
	vmovdqa	%xmm0, %xmm3	# tmp254, tmp255
	vpunpcklwd	%xmm6, %xmm4, %xmm0	# tmp249, tmp243, tmp256
	vmovdqa	%xmm0, %xmm4	# tmp256, tmp257
	vpunpckldq	%xmm5, %xmm2, %xmm0	# tmp253, tmp251, tmp258
	vmovdqa	%xmm0, %xmm2	# tmp258, tmp259
	vpunpckldq	%xmm4, %xmm3, %xmm0	# tmp257, tmp255, tmp260
	vpunpcklqdq	%xmm0, %xmm2, %xmm0	# tmp261, tmp259, tmp262
	vinserti128	$0x1, %xmm0, %ymm1, %ymm0	# tmp140, tmp139, tmp138
.LBE159:
.LBE158:
.LBE157:
.LBE156:
# mem_bw_final.cpp:50: 			inputs[thread_id][i] = _mm256_set1_epi8(1);
	.loc 3 50 0 discriminator 2
	movq	-128(%rbp), %rax	# %sfp, _17
	vmovdqa	%ymm0, (%rax)	# D.62423, *_17
# mem_bw_final.cpp:48: 		for (int i = 0; i < num_of_feeds; i++)
	.loc 3 48 0 discriminator 2
	addl	$1, -72(%rbp)	#, i
	jmp	.L61	#
.L62:
.LBE155:
.LBE154:
# mem_bw_final.cpp:44: #pragma omp parallel default(shared) private(thread_id)
	.loc 3 44 0
	addq	$160, %rsp	#,
	popq	%rbx	#
	popq	%r10	#
	.cfi_def_cfa 10, 0
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	leaq	-8(%r10), %rsp	#,
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5711:
	.size	main._omp_fn.1, .-main._omp_fn.1
	.section	.rodata
.LC6:
	.string	"\t sum of last sum vector"
	.text
	.type	main._omp_fn.2, @function
main._omp_fn.2:
.LFB5712:
	.loc 3 69 0
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5712
	leaq	8(%rsp), %r10	#,
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp	#,
	pushq	-8(%r10)	#
	pushq	%rbp	#
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp	#,
	pushq	%r10	#
	.cfi_escape 0xf,0x3,0x76,0x78,0x6
	subq	$872, %rsp	#,
	movq	%rdi, -872(%rbp)	# .omp_data_i, .omp_data_i
# mem_bw_final.cpp:69: #pragma omp parallel private(thread_id,sum_res,sum_res1,sum_res2,sum_res3,sum_res4,sum_res5,sum_res6,sum_res7)
	.loc 3 69 0
	movq	%fs:40, %rax	#, tmp214
	movq	%rax, -24(%rbp)	# tmp214, D.63069
	xorl	%eax, %eax	# tmp214
	movq	-872(%rbp), %rax	# .omp_data_i, tmp169
	movq	8(%rax), %rax	# .omp_data_i_21(D)->num_of_feeds, tmp170
	movq	%rax, -840(%rbp)	# tmp170, num_of_feeds
	movq	-872(%rbp), %rax	# .omp_data_i, tmp171
	movq	(%rax), %rax	# .omp_data_i_21(D)->inputs, tmp172
	movq	%rax, -832(%rbp)	# tmp172, inputs
	movq	-872(%rbp), %rax	# .omp_data_i, tmp173
	movl	16(%rax), %eax	# .omp_data_i_21(D)->loop_count, tmp174
	movl	%eax, -848(%rbp)	# tmp174, loop_count
.LBB160:
# mem_bw_final.cpp:71: 		thread_id = omp_get_thread_num();
	.loc 3 71 0
	call	omp_get_thread_num@PLT	#
	movl	%eax, -844(%rbp)	# tmp175, thread_id
# mem_bw_final.cpp:73: 		auto local_input = inputs[thread_id];
	.loc 3 73 0
	movl	-844(%rbp), %eax	# thread_id, tmp176
	cltq
	leaq	0(,%rax,8), %rdx	#, _28
	movq	-832(%rbp), %rax	# inputs, tmp177
	addq	%rdx, %rax	# _28, _29
	movq	(%rax), %rax	# *_29, tmp178
	movq	%rax, -824(%rbp)	# tmp178, local_input
.LBB161:
# mem_bw_final.cpp:76: 		for (int i = 0; i < loop_count; i++)
	.loc 3 76 0
	movl	$0, -856(%rbp)	#, i
.L67:
# mem_bw_final.cpp:76: 		for (int i = 0; i < loop_count; i++)
	.loc 3 76 0 is_stmt 0 discriminator 1
	movl	-856(%rbp), %eax	# i, tmp179
	cmpl	-848(%rbp), %eax	# loop_count, tmp179
	jge	.L79	#,
.LBB162:
.LBB163:
# mem_bw_final.cpp:78: 			for (int j = 0; j < num_of_feeds - (num_of_feeds % 8); j = j + 8)
	.loc 3 78 0 is_stmt 1
	movl	$0, -852(%rbp)	#, j
.L77:
# mem_bw_final.cpp:78: 			for (int j = 0; j < num_of_feeds - (num_of_feeds % 8); j = j + 8)
	.loc 3 78 0 is_stmt 0 discriminator 3
	movl	-852(%rbp), %eax	# j, tmp180
	movslq	%eax, %rcx	# tmp180, _40
	movq	-840(%rbp), %rax	# num_of_feeds, tmp181
	cqto
	shrq	$61, %rdx	#, tmp183
	addq	%rdx, %rax	# tmp183, tmp184
	andl	$7, %eax	#, tmp185
	subq	%rdx, %rax	# tmp183, tmp186
	movq	%rax, %rdx	# tmp186, _41
	movq	-840(%rbp), %rax	# num_of_feeds, tmp187
	subq	%rdx, %rax	# _41, _42
	cmpq	%rax, %rcx	# _42, _40
	jl	.L65	#,
.LBE163:
# mem_bw_final.cpp:90: 			if (i == loop_count - 1) {
	.loc 3 90 0 is_stmt 1
	movl	-848(%rbp), %eax	# loop_count, tmp188
	subl	$1, %eax	#, _93
	cmpl	-856(%rbp), %eax	# i, _93
	je	.L66	#,
.L68:
.LBE162:
# mem_bw_final.cpp:76: 		for (int i = 0; i < loop_count; i++)
	.loc 3 76 0 discriminator 2
	addl	$1, -856(%rbp)	#, i
	jmp	.L67	#
.L66:
.LBB181:
# mem_bw_final.cpp:91: 				cout << sum_res7[0] << "\t sum of last sum vector" << endl;
	.loc 3 91 0
	movq	-816(%rbp), %rax	# sum_res7, _94
	movq	%rax, %rsi	# _94,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZNSolsEx@PLT	#
	leaq	.LC6(%rip), %rsi	#,
	movq	%rax, %rdi	# _96,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _99
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax	#, tmp189
	movq	%rax, %rsi	# tmp189,
	movq	%rdx, %rdi	# _99,
	call	_ZNSolsEPFRSoS_E@PLT	#
	jmp	.L68	#
.L65:
.LBB180:
# mem_bw_final.cpp:80: 				sum_res = _mm256_add_epi8(local_input[j], sum_res);
	.loc 3 80 0 discriminator 2
	movl	-852(%rbp), %eax	# j, tmp190
	cltq
	salq	$5, %rax	#, _43
	movq	%rax, %rdx	# _43, _44
	movq	-824(%rbp), %rax	# local_input, tmp191
	addq	%rdx, %rax	# _44, _45
	vmovdqa	(%rax), %ymm0	# *_45, _46
	vmovdqa	%ymm0, -112(%rbp)	# _46, __A
	vmovdqa	-784(%rbp), %ymm0	# sum_res, tmp192
	vmovdqa	%ymm0, -80(%rbp)	# tmp192, __B
.LBB164:
.LBB165:
# /usr/lib/gcc/x86_64-linux-gnu/7/include/avx2intrin.h:107:   return (__m256i) ((__v32qu)__A + (__v32qu)__B);
	.file 6 "/usr/lib/gcc/x86_64-linux-gnu/7/include/avx2intrin.h"
	.loc 6 107 0 discriminator 2
	vmovdqa	-112(%rbp), %ymm1	# __A, _147
	vmovdqa	-80(%rbp), %ymm0	# __B, _148
	vpaddb	%ymm0, %ymm1, %ymm0	# _148, _147, _149
.LBE165:
.LBE164:
# mem_bw_final.cpp:80: 				sum_res = _mm256_add_epi8(local_input[j], sum_res);
	.loc 3 80 0 discriminator 2
	vmovdqa	%ymm0, -784(%rbp)	# D.62386, sum_res
# mem_bw_final.cpp:81: 				sum_res1 = _mm256_add_epi8(local_input[j + 1], sum_res1);
	.loc 3 81 0 discriminator 2
	movl	-852(%rbp), %eax	# j, tmp193
	cltq
	addq	$1, %rax	#, _49
	salq	$5, %rax	#, _49
	movq	%rax, %rdx	# _49, _50
	movq	-824(%rbp), %rax	# local_input, tmp194
	addq	%rdx, %rax	# _50, _51
	vmovdqa	(%rax), %ymm0	# *_51, _52
	vmovdqa	%ymm0, -176(%rbp)	# _52, __A
	vmovdqa	-752(%rbp), %ymm0	# sum_res1, tmp195
	vmovdqa	%ymm0, -144(%rbp)	# tmp195, __B
.LBB166:
.LBB167:
# /usr/lib/gcc/x86_64-linux-gnu/7/include/avx2intrin.h:107:   return (__m256i) ((__v32qu)__A + (__v32qu)__B);
	.loc 6 107 0 discriminator 2
	vmovdqa	-176(%rbp), %ymm1	# __A, _141
	vmovdqa	-144(%rbp), %ymm0	# __B, _142
	vpaddb	%ymm0, %ymm1, %ymm0	# _142, _141, _143
.LBE167:
.LBE166:
# mem_bw_final.cpp:81: 				sum_res1 = _mm256_add_epi8(local_input[j + 1], sum_res1);
	.loc 3 81 0 discriminator 2
	vmovdqa	%ymm0, -752(%rbp)	# D.62381, sum_res1
# mem_bw_final.cpp:82: 				sum_res2 = _mm256_add_epi8(local_input[j + 2], sum_res2);
	.loc 3 82 0 discriminator 2
	movl	-852(%rbp), %eax	# j, tmp196
	cltq
	addq	$2, %rax	#, _55
	salq	$5, %rax	#, _55
	movq	%rax, %rdx	# _55, _56
	movq	-824(%rbp), %rax	# local_input, tmp197
	addq	%rdx, %rax	# _56, _57
	vmovdqa	(%rax), %ymm0	# *_57, _58
	vmovdqa	%ymm0, -240(%rbp)	# _58, __A
	vmovdqa	-720(%rbp), %ymm0	# sum_res2, tmp198
	vmovdqa	%ymm0, -208(%rbp)	# tmp198, __B
.LBB168:
.LBB169:
# /usr/lib/gcc/x86_64-linux-gnu/7/include/avx2intrin.h:107:   return (__m256i) ((__v32qu)__A + (__v32qu)__B);
	.loc 6 107 0 discriminator 2
	vmovdqa	-240(%rbp), %ymm1	# __A, _135
	vmovdqa	-208(%rbp), %ymm0	# __B, _136
	vpaddb	%ymm0, %ymm1, %ymm0	# _136, _135, _137
.LBE169:
.LBE168:
# mem_bw_final.cpp:82: 				sum_res2 = _mm256_add_epi8(local_input[j + 2], sum_res2);
	.loc 3 82 0 discriminator 2
	vmovdqa	%ymm0, -720(%rbp)	# D.62376, sum_res2
# mem_bw_final.cpp:83: 				sum_res3 = _mm256_add_epi8(local_input[j + 3], sum_res3);
	.loc 3 83 0 discriminator 2
	movl	-852(%rbp), %eax	# j, tmp199
	cltq
	addq	$3, %rax	#, _61
	salq	$5, %rax	#, _61
	movq	%rax, %rdx	# _61, _62
	movq	-824(%rbp), %rax	# local_input, tmp200
	addq	%rdx, %rax	# _62, _63
	vmovdqa	(%rax), %ymm0	# *_63, _64
	vmovdqa	%ymm0, -304(%rbp)	# _64, __A
	vmovdqa	-688(%rbp), %ymm0	# sum_res3, tmp201
	vmovdqa	%ymm0, -272(%rbp)	# tmp201, __B
.LBB170:
.LBB171:
# /usr/lib/gcc/x86_64-linux-gnu/7/include/avx2intrin.h:107:   return (__m256i) ((__v32qu)__A + (__v32qu)__B);
	.loc 6 107 0 discriminator 2
	vmovdqa	-304(%rbp), %ymm1	# __A, _129
	vmovdqa	-272(%rbp), %ymm0	# __B, _130
	vpaddb	%ymm0, %ymm1, %ymm0	# _130, _129, _131
.LBE171:
.LBE170:
# mem_bw_final.cpp:83: 				sum_res3 = _mm256_add_epi8(local_input[j + 3], sum_res3);
	.loc 3 83 0 discriminator 2
	vmovdqa	%ymm0, -688(%rbp)	# D.62371, sum_res3
# mem_bw_final.cpp:84: 				sum_res4 = _mm256_add_epi8(local_input[j + 4], sum_res4);
	.loc 3 84 0 discriminator 2
	movl	-852(%rbp), %eax	# j, tmp202
	cltq
	addq	$4, %rax	#, _67
	salq	$5, %rax	#, _67
	movq	%rax, %rdx	# _67, _68
	movq	-824(%rbp), %rax	# local_input, tmp203
	addq	%rdx, %rax	# _68, _69
	vmovdqa	(%rax), %ymm0	# *_69, _70
	vmovdqa	%ymm0, -368(%rbp)	# _70, __A
	vmovdqa	-656(%rbp), %ymm0	# sum_res4, tmp204
	vmovdqa	%ymm0, -336(%rbp)	# tmp204, __B
.LBB172:
.LBB173:
# /usr/lib/gcc/x86_64-linux-gnu/7/include/avx2intrin.h:107:   return (__m256i) ((__v32qu)__A + (__v32qu)__B);
	.loc 6 107 0 discriminator 2
	vmovdqa	-368(%rbp), %ymm1	# __A, _123
	vmovdqa	-336(%rbp), %ymm0	# __B, _124
	vpaddb	%ymm0, %ymm1, %ymm0	# _124, _123, _125
.LBE173:
.LBE172:
# mem_bw_final.cpp:84: 				sum_res4 = _mm256_add_epi8(local_input[j + 4], sum_res4);
	.loc 3 84 0 discriminator 2
	vmovdqa	%ymm0, -656(%rbp)	# D.62366, sum_res4
# mem_bw_final.cpp:85: 				sum_res5 = _mm256_add_epi8(local_input[j + 5], sum_res5);
	.loc 3 85 0 discriminator 2
	movl	-852(%rbp), %eax	# j, tmp205
	cltq
	addq	$5, %rax	#, _73
	salq	$5, %rax	#, _73
	movq	%rax, %rdx	# _73, _74
	movq	-824(%rbp), %rax	# local_input, tmp206
	addq	%rdx, %rax	# _74, _75
	vmovdqa	(%rax), %ymm0	# *_75, _76
	vmovdqa	%ymm0, -432(%rbp)	# _76, __A
	vmovdqa	-624(%rbp), %ymm0	# sum_res5, tmp207
	vmovdqa	%ymm0, -400(%rbp)	# tmp207, __B
.LBB174:
.LBB175:
# /usr/lib/gcc/x86_64-linux-gnu/7/include/avx2intrin.h:107:   return (__m256i) ((__v32qu)__A + (__v32qu)__B);
	.loc 6 107 0 discriminator 2
	vmovdqa	-432(%rbp), %ymm1	# __A, _117
	vmovdqa	-400(%rbp), %ymm0	# __B, _118
	vpaddb	%ymm0, %ymm1, %ymm0	# _118, _117, _119
.LBE175:
.LBE174:
# mem_bw_final.cpp:85: 				sum_res5 = _mm256_add_epi8(local_input[j + 5], sum_res5);
	.loc 3 85 0 discriminator 2
	vmovdqa	%ymm0, -624(%rbp)	# D.62361, sum_res5
# mem_bw_final.cpp:86: 				sum_res6 = _mm256_add_epi8(local_input[j + 6], sum_res6);
	.loc 3 86 0 discriminator 2
	movl	-852(%rbp), %eax	# j, tmp208
	cltq
	addq	$6, %rax	#, _79
	salq	$5, %rax	#, _79
	movq	%rax, %rdx	# _79, _80
	movq	-824(%rbp), %rax	# local_input, tmp209
	addq	%rdx, %rax	# _80, _81
	vmovdqa	(%rax), %ymm0	# *_81, _82
	vmovdqa	%ymm0, -496(%rbp)	# _82, __A
	vmovdqa	-592(%rbp), %ymm0	# sum_res6, tmp210
	vmovdqa	%ymm0, -464(%rbp)	# tmp210, __B
.LBB176:
.LBB177:
# /usr/lib/gcc/x86_64-linux-gnu/7/include/avx2intrin.h:107:   return (__m256i) ((__v32qu)__A + (__v32qu)__B);
	.loc 6 107 0 discriminator 2
	vmovdqa	-496(%rbp), %ymm1	# __A, _111
	vmovdqa	-464(%rbp), %ymm0	# __B, _112
	vpaddb	%ymm0, %ymm1, %ymm0	# _112, _111, _113
.LBE177:
.LBE176:
# mem_bw_final.cpp:86: 				sum_res6 = _mm256_add_epi8(local_input[j + 6], sum_res6);
	.loc 3 86 0 discriminator 2
	vmovdqa	%ymm0, -592(%rbp)	# D.62356, sum_res6
# mem_bw_final.cpp:87: 				sum_res7 = _mm256_add_epi8(local_input[j + 7], sum_res7);
	.loc 3 87 0 discriminator 2
	vmovdqa	-816(%rbp), %ymm0	# sum_res7, sum_res7.2_84
	movl	-852(%rbp), %eax	# j, tmp211
	cltq
	addq	$7, %rax	#, _86
	salq	$5, %rax	#, _86
	movq	%rax, %rdx	# _86, _87
	movq	-824(%rbp), %rax	# local_input, tmp212
	addq	%rdx, %rax	# _87, _88
	vmovdqa	(%rax), %ymm1	# *_88, _89
	vmovdqa	%ymm1, -560(%rbp)	# _89, __A
	vmovdqa	%ymm0, -528(%rbp)	# sum_res7.2_84, __B
.LBB178:
.LBB179:
# /usr/lib/gcc/x86_64-linux-gnu/7/include/avx2intrin.h:107:   return (__m256i) ((__v32qu)__A + (__v32qu)__B);
	.loc 6 107 0 discriminator 2
	vmovdqa	-560(%rbp), %ymm1	# __A, _105
	vmovdqa	-528(%rbp), %ymm0	# __B, _106
	vpaddb	%ymm0, %ymm1, %ymm0	# _106, _105, _107
.LBE179:
.LBE178:
# mem_bw_final.cpp:87: 				sum_res7 = _mm256_add_epi8(local_input[j + 7], sum_res7);
	.loc 3 87 0 discriminator 2
	vmovdqa	%ymm0, -816(%rbp)	# D.62351, sum_res7
# mem_bw_final.cpp:88: 				asm("");
	.loc 3 88 0 discriminator 2
# mem_bw_final.cpp:78: 			for (int j = 0; j < num_of_feeds - (num_of_feeds % 8); j = j + 8)
	.loc 3 78 0 discriminator 2
	addl	$8, -852(%rbp)	#, j
	jmp	.L77	#
.L79:
.LBE180:
.LBE181:
.LBE161:
.LBE160:
# mem_bw_final.cpp:69: #pragma omp parallel private(thread_id,sum_res,sum_res1,sum_res2,sum_res3,sum_res4,sum_res5,sum_res6,sum_res7)
	.loc 3 69 0
	movq	-24(%rbp), %rax	# D.63069, tmp215
	xorq	%fs:40, %rax	#, tmp215
	je	.L78	#,
	call	__stack_chk_fail@PLT	#
.L78:
	addq	$872, %rsp	#,
	popq	%r10	#
	.cfi_def_cfa 10, 0
	popq	%rbp	#
	leaq	-8(%r10), %rsp	#,
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5712:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA5712:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5712-.LLSDACSB5712
.LLSDACSB5712:
.LLSDACSE5712:
	.text
	.size	main._omp_fn.2, .-main._omp_fn.2
	.type	main._omp_fn.3, @function
main._omp_fn.3:
.LFB5713:
	.loc 3 113 0
	.cfi_startproc
	leaq	8(%rsp), %r10	#,
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp	#,
	pushq	-8(%r10)	#
	pushq	%rbp	#
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp	#,
	pushq	%r15	#
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%r10	#
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx	#
	subq	$448, %rsp	#,
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	%rdi, -392(%rbp)	# .omp_data_i, .omp_data_i
# mem_bw_final.cpp:113: #pragma omp parallel private(thread_id) reduction(max:run_time)
	.loc 3 113 0
	movq	%fs:40, %rax	#, tmp1472
	movq	%rax, -56(%rbp)	# tmp1472, D.63071
	xorl	%eax, %eax	# tmp1472
	vmovsd	.LC7(%rip), %xmm0	#, tmp415
	vmovsd	%xmm0, -88(%rbp)	# tmp415, run_time
	movq	-392(%rbp), %rax	# .omp_data_i, tmp416
	movq	32(%rax), %rax	# .omp_data_i_12(D)->num_of_feeds, tmp417
	movq	%rax, -80(%rbp)	# tmp417, num_of_feeds
	movq	-392(%rbp), %rax	# .omp_data_i, tmp418
	movq	(%rax), %rax	# .omp_data_i_12(D)->inputs, tmp419
	movq	%rax, -72(%rbp)	# tmp419, inputs
	movq	-392(%rbp), %rax	# .omp_data_i, tmp420
	movl	48(%rax), %eax	# .omp_data_i_12(D)->loop_count, tmp421
	movl	%eax, -112(%rbp)	# tmp421, loop_count
.LBB182:
# mem_bw_final.cpp:115: 		thread_id = omp_get_thread_num();
	.loc 3 115 0
	call	omp_get_thread_num@PLT	#
	movl	%eax, -108(%rbp)	# tmp422, thread_id
# mem_bw_final.cpp:117: 		auto local_input = inputs[thread_id];
	.loc 3 117 0
	movl	-108(%rbp), %eax	# thread_id, tmp423
	cltq
	leaq	0(,%rax,8), %rdx	#, _19
	movq	-72(%rbp), %rax	# inputs, tmp424
	addq	%rdx, %rax	# _19, _20
	movq	(%rax), %rax	# *_20, tmp425
	movq	%rax, -64(%rbp)	# tmp425, local_input
.LBB183:
# mem_bw_final.cpp:120: 		for (int i = 0; i < loop_count; i++)
	.loc 3 120 0
	movl	$0, -120(%rbp)	#, i
.L86:
# mem_bw_final.cpp:120: 		for (int i = 0; i < loop_count; i++)
	.loc 3 120 0 is_stmt 0 discriminator 1
	movl	-120(%rbp), %eax	# i, tmp426
	cmpl	-112(%rbp), %eax	# loop_count, tmp426
	jl	.L81	#,
.LBE183:
.LBE182:
# mem_bw_final.cpp:113: #pragma omp parallel private(thread_id) reduction(max:run_time)
	.loc 3 113 0 is_stmt 1
	movq	-392(%rbp), %rax	# .omp_data_i, tmp427
	addq	$40, %rax	#, _99
	movq	%rax, %rcx	# _99, _100
	movq	(%rcx), %rdx	#* _100, _3
.L82:
	movq	%rdx, -400(%rbp)	# _3, %sfp
	vmovsd	-400(%rbp), %xmm0	# %sfp, _104
# mem_bw_final.cpp:113: #pragma omp parallel private(thread_id) reduction(max:run_time)
	.loc 3 113 0 is_stmt 0 discriminator 1
	vmaxsd	-88(%rbp), %xmm0, %xmm0	# run_time, _104, _105
	vmovq	%xmm0, %rsi	# _105, _106
	movq	%rdx, %rax	# _3, _108
	lock cmpxchgq	%rsi, (%rcx)	#, _106,* _100
	movq	%rdx, %rsi	# _3, _109
	movq	%rax, %rdx	# _108, _3
	cmpq	%rsi, %rax	# _109, _108
	jne	.L82	#,
	jmp	.L107	#
.L81:
.LBB221:
.LBB220:
.LBB184:
# mem_bw_final.cpp:122: 			if (i == loop_count / 2) {
	.loc 3 122 0 is_stmt 1
	movl	-112(%rbp), %eax	# loop_count, tmp429
	movl	%eax, %edx	# tmp429, tmp430
	shrl	$31, %edx	#, tmp430
	addl	%edx, %eax	# tmp430, tmp431
	sarl	%eax	# tmp432
	cmpl	-120(%rbp), %eax	# i, _23
	je	.L83	#,
.L105:
.LBB185:
# mem_bw_final.cpp:125: 			for (int j = 0; j < num_of_feeds - (num_of_feeds % 8); j = j + 8)
	.loc 3 125 0
	movl	$0, -116(%rbp)	#, j
.L104:
# mem_bw_final.cpp:125: 			for (int j = 0; j < num_of_feeds - (num_of_feeds % 8); j = j + 8)
	.loc 3 125 0 is_stmt 0 discriminator 3
	movl	-116(%rbp), %eax	# j, tmp433
	movslq	%eax, %rcx	# tmp433, _28
	movq	-80(%rbp), %rax	# num_of_feeds, tmp434
	cqto
	shrq	$61, %rdx	#, tmp436
	addq	%rdx, %rax	# tmp436, tmp437
	andl	$7, %eax	#, tmp438
	subq	%rdx, %rax	# tmp436, tmp439
	movq	%rax, %rdx	# tmp439, _29
	movq	-80(%rbp), %rax	# num_of_feeds, tmp440
	subq	%rdx, %rax	# _29, _30
	cmpq	%rax, %rcx	# _30, _28
	jl	.L84	#,
.LBE185:
# mem_bw_final.cpp:137: 			if (i == loop_count / 2) {
	.loc 3 137 0 is_stmt 1
	movl	-112(%rbp), %eax	# loop_count, tmp441
	movl	%eax, %edx	# tmp441, tmp442
	shrl	$31, %edx	#, tmp442
	addl	%edx, %eax	# tmp442, tmp443
	sarl	%eax	# tmp444
	cmpl	-120(%rbp), %eax	# i, _79
	je	.L85	#,
.L87:
# mem_bw_final.cpp:140: 			elapsed_time = clock_end - clock_start;
	.loc 3 140 0 discriminator 2
	movq	-392(%rbp), %rax	# .omp_data_i, tmp445
	movq	8(%rax), %rdx	# .omp_data_i_12(D)->clock_start, _83
	movq	-392(%rbp), %rax	# .omp_data_i, tmp446
	movq	16(%rax), %rax	# .omp_data_i_12(D)->clock_end, _85
	movq	%rdx, %rsi	# _83,
	movq	%rax, %rdi	# _85,
	call	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE	#
	movq	%rax, -104(%rbp)	# D.62107, D.62108
	leaq	-104(%rbp), %rdx	#, tmp447
	leaq	-96(%rbp), %rax	#, tmp448
	movq	%rdx, %rsi	# tmp447,
	movq	%rax, %rdi	# tmp448,
	call	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE	#
	movq	-392(%rbp), %rax	# .omp_data_i, tmp449
	movq	24(%rax), %rax	# .omp_data_i_12(D)->elapsed_time, _90
	vmovsd	-96(%rbp), %xmm0	# elapsed_time.4, tmp450
	vmovsd	%xmm0, (%rax)	# tmp450, *_90
# mem_bw_final.cpp:141: 			run_time = elapsed_time.count();
	.loc 3 141 0 discriminator 2
	movq	-392(%rbp), %rax	# .omp_data_i, tmp451
	movq	24(%rax), %rax	# .omp_data_i_12(D)->elapsed_time, _94
	movq	%rax, %rdi	# _94,
	call	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv	#
	vmovq	%xmm0, %rax	#, tmp452
	movq	%rax, -88(%rbp)	# tmp452, run_time
.LBE184:
# mem_bw_final.cpp:120: 		for (int i = 0; i < loop_count; i++)
	.loc 3 120 0 discriminator 2
	addl	$1, -120(%rbp)	#, i
	jmp	.L86	#
.L85:
.LBB219:
# mem_bw_final.cpp:138: 				clock_end = system_clock::now();
	.loc 3 138 0
	movq	-392(%rbp), %rax	# .omp_data_i, tmp453
	movq	16(%rax), %rbx	# .omp_data_i_12(D)->clock_end, _80
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
	movq	%rax, (%rbx)	# D.62114, *_80
	jmp	.L87	#
.L84:
.LBB218:
# mem_bw_final.cpp:127: 				local_input[j] = _mm256_set1_epi8(0);
	.loc 3 127 0 discriminator 2
	movl	-116(%rbp), %eax	# j, tmp454
	cltq
	salq	$5, %rax	#, _31
	movq	%rax, %rdx	# _31, _32
	movq	-64(%rbp), %rax	# local_input, tmp455
	addq	%rdx, %rax	# _32, _33
	movq	%rax, -400(%rbp)	# _33, %sfp
	movb	$0, -153(%rbp)	#, __A
.LBB186:
.LBB187:
# /usr/lib/gcc/x86_64-linux-gnu/7/include/avxintrin.h:1334:   return _mm256_set_epi8 (__A, __A, __A, __A, __A, __A, __A, __A,
	.loc 4 1334 0 discriminator 2
	movsbl	-153(%rbp), %edi	# __A, _595
	movl	%edi, -404(%rbp)	# _595, %sfp
	movsbl	-153(%rbp), %ebx	# __A, _596
	movl	%ebx, -408(%rbp)	# _596, %sfp
	movsbl	-153(%rbp), %ecx	# __A, _597
	movl	%ecx, -412(%rbp)	# _597, %sfp
	movsbl	-153(%rbp), %esi	# __A, _598
	movl	%esi, -416(%rbp)	# _598, %sfp
	movsbl	-153(%rbp), %edx	# __A, _599
	movl	%edx, -420(%rbp)	# _599, %sfp
	movsbl	-153(%rbp), %r8d	# __A, _600
	movl	%r8d, -424(%rbp)	# _600, %sfp
	movsbl	-153(%rbp), %r9d	# __A, _601
	movl	%r9d, -428(%rbp)	# _601, %sfp
	movsbl	-153(%rbp), %r10d	# __A, _602
	movl	%r10d, -432(%rbp)	# _602, %sfp
	movsbl	-153(%rbp), %r11d	# __A, _603
	movl	%r11d, -436(%rbp)	# _603, %sfp
	movsbl	-153(%rbp), %r14d	# __A, _604
	movl	%r14d, -440(%rbp)	# _604, %sfp
	movsbl	-153(%rbp), %r15d	# __A, _605
	movl	%r15d, -444(%rbp)	# _605, %sfp
	movsbl	-153(%rbp), %r12d	# __A, _606
	movl	%r12d, -448(%rbp)	# _606, %sfp
	movsbl	-153(%rbp), %r13d	# __A, _607
	movl	%r13d, -452(%rbp)	# _607, %sfp
	movsbl	-153(%rbp), %edi	# __A, _608
	movl	%edi, -456(%rbp)	# _608, %sfp
	movsbl	-153(%rbp), %ebx	# __A, _609
	movl	%ebx, -460(%rbp)	# _609, %sfp
	movsbl	-153(%rbp), %ecx	# __A, _610
	movl	%ecx, -464(%rbp)	# _610, %sfp
	movsbl	-153(%rbp), %esi	# __A, _611
	movl	%esi, -468(%rbp)	# _611, %sfp
	movsbl	-153(%rbp), %edx	# __A, _612
	movl	%edx, -472(%rbp)	# _612, %sfp
	movsbl	-153(%rbp), %r15d	# __A, _613
	movsbl	-153(%rbp), %r14d	# __A, _614
	movsbl	-153(%rbp), %r13d	# __A, _615
	movsbl	-153(%rbp), %r12d	# __A, _616
	movsbl	-153(%rbp), %ebx	# __A, _617
	movsbl	-153(%rbp), %r11d	# __A, _618
	movsbl	-153(%rbp), %r10d	# __A, _619
	movsbl	-153(%rbp), %r9d	# __A, _620
	movsbl	-153(%rbp), %r8d	# __A, _621
	movsbl	-153(%rbp), %edi	# __A, _622
	movsbl	-153(%rbp), %esi	# __A, _623
	movsbl	-153(%rbp), %ecx	# __A, _624
	movsbl	-153(%rbp), %edx	# __A, _625
	movsbl	-153(%rbp), %eax	# __A, _626
	movb	%al, -152(%rbp)	# _626, __q31
	movb	%dl, -151(%rbp)	# _625, __q30
	movb	%cl, -150(%rbp)	# _624, __q29
	movb	%sil, -149(%rbp)	# _623, __q28
	movb	%dil, -148(%rbp)	# _622, __q27
	movb	%r8b, -147(%rbp)	# _621, __q26
	movb	%r9b, -146(%rbp)	# _620, __q25
	movb	%r10b, -145(%rbp)	# _619, __q24
	movb	%r11b, -144(%rbp)	# _618, __q23
	movb	%bl, -143(%rbp)	# _617, __q22
	movb	%r12b, -142(%rbp)	# _616, __q21
	movb	%r13b, -141(%rbp)	# _615, __q20
	movb	%r14b, -140(%rbp)	# _614, __q19
	movb	%r15b, -139(%rbp)	# _613, __q18
	movzbl	-472(%rbp), %edx	# %sfp, tmp1498
	movb	%dl, -138(%rbp)	# tmp1498, __q17
	movzbl	-468(%rbp), %esi	# %sfp, tmp1499
	movb	%sil, -137(%rbp)	# tmp1499, __q16
	movzbl	-464(%rbp), %ecx	# %sfp, tmp1500
	movb	%cl, -136(%rbp)	# tmp1500, __q15
	movzbl	-460(%rbp), %ebx	# %sfp, tmp1501
	movb	%bl, -135(%rbp)	# tmp1501, __q14
	movzbl	-456(%rbp), %edi	# %sfp, tmp1502
	movb	%dil, -134(%rbp)	# tmp1502, __q13
	movzbl	-452(%rbp), %r13d	# %sfp, tmp1503
	movb	%r13b, -133(%rbp)	# tmp1503, __q12
	movzbl	-448(%rbp), %r12d	# %sfp, tmp1504
	movb	%r12b, -132(%rbp)	# tmp1504, __q11
	movzbl	-444(%rbp), %r15d	# %sfp, tmp1505
	movb	%r15b, -131(%rbp)	# tmp1505, __q10
	movzbl	-440(%rbp), %r14d	# %sfp, tmp1506
	movb	%r14b, -130(%rbp)	# tmp1506, __q09
	movzbl	-436(%rbp), %r11d	# %sfp, tmp1507
	movb	%r11b, -129(%rbp)	# tmp1507, __q08
	movzbl	-432(%rbp), %r10d	# %sfp, tmp1508
	movb	%r10b, -128(%rbp)	# tmp1508, __q07
	movzbl	-428(%rbp), %r9d	# %sfp, tmp1509
	movb	%r9b, -127(%rbp)	# tmp1509, __q06
	movzbl	-424(%rbp), %r8d	# %sfp, tmp1510
	movb	%r8b, -126(%rbp)	# tmp1510, __q05
	movzbl	-420(%rbp), %edx	# %sfp, tmp1511
	movb	%dl, -125(%rbp)	# tmp1511, __q04
	movzbl	-416(%rbp), %esi	# %sfp, tmp1512
	movb	%sil, -124(%rbp)	# tmp1512, __q03
	movzbl	-412(%rbp), %ecx	# %sfp, tmp1513
	movb	%cl, -123(%rbp)	# tmp1513, __q02
	movzbl	-408(%rbp), %ebx	# %sfp, tmp1514
	movb	%bl, -122(%rbp)	# tmp1514, __q01
	movzbl	-404(%rbp), %edi	# %sfp, tmp1515
	movb	%dil, -121(%rbp)	# tmp1515, __q00
.LBB188:
.LBB189:
# /usr/lib/gcc/x86_64-linux-gnu/7/include/avxintrin.h:1286:   return __extension__ (__m256i)(__v32qi){
	.loc 4 1286 0 discriminator 2
	movzbl	-121(%rbp), %eax	# __q00, tmp460
	movl	%eax, -404(%rbp)	# tmp460, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp461
	movzbl	-122(%rbp), %eax	# __q01, tmp463
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp463, tmp462, tmp462
	vmovdqa	%xmm0, %xmm1	# tmp462, tmp464
	movzbl	-123(%rbp), %eax	# __q02, tmp466
	movl	%eax, -404(%rbp)	# tmp466, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp467
	movzbl	-124(%rbp), %eax	# __q03, tmp469
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp469, tmp468, tmp468
	vmovdqa	%xmm0, %xmm8	# tmp468, tmp470
	movzbl	-125(%rbp), %eax	# __q04, tmp472
	movl	%eax, -404(%rbp)	# tmp472, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp473
	movzbl	-126(%rbp), %eax	# __q05, tmp475
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp475, tmp474, tmp474
	vmovdqa	%xmm0, %xmm4	# tmp474, tmp476
	movzbl	-127(%rbp), %eax	# __q06, tmp478
	movl	%eax, -404(%rbp)	# tmp478, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp479
	movzbl	-128(%rbp), %eax	# __q07, tmp481
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp481, tmp480, tmp480
	vmovdqa	%xmm0, %xmm7	# tmp480, tmp482
	movzbl	-129(%rbp), %eax	# __q08, tmp484
	movl	%eax, -404(%rbp)	# tmp484, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp485
	movzbl	-130(%rbp), %eax	# __q09, tmp487
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp487, tmp486, tmp486
	vmovdqa	%xmm0, %xmm2	# tmp486, tmp488
	movzbl	-131(%rbp), %eax	# __q10, tmp490
	movl	%eax, -404(%rbp)	# tmp490, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp491
	movzbl	-132(%rbp), %eax	# __q11, tmp493
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp493, tmp492, tmp492
	vmovdqa	%xmm0, %xmm6	# tmp492, tmp494
	movzbl	-133(%rbp), %eax	# __q12, tmp496
	movl	%eax, -404(%rbp)	# tmp496, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp497
	movzbl	-134(%rbp), %eax	# __q13, tmp499
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp499, tmp498, tmp498
	vmovdqa	%xmm0, %xmm3	# tmp498, tmp500
	movzbl	-135(%rbp), %eax	# __q14, tmp502
	movl	%eax, -404(%rbp)	# tmp502, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp503
	movzbl	-136(%rbp), %eax	# __q15, tmp505
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp505, tmp504, tmp504
	vmovdqa	%xmm0, %xmm5	# tmp504, tmp506
	vpunpcklwd	%xmm8, %xmm1, %xmm0	# tmp470, tmp464, tmp507
	vmovdqa	%xmm0, %xmm1	# tmp507, tmp508
	vpunpcklwd	%xmm7, %xmm4, %xmm0	# tmp482, tmp476, tmp509
	vmovdqa	%xmm0, %xmm4	# tmp509, tmp510
	vpunpcklwd	%xmm6, %xmm2, %xmm0	# tmp494, tmp488, tmp511
	vmovdqa	%xmm0, %xmm2	# tmp511, tmp512
	vpunpcklwd	%xmm5, %xmm3, %xmm0	# tmp506, tmp500, tmp513
	vmovdqa	%xmm0, %xmm3	# tmp513, tmp514
	vpunpckldq	%xmm4, %xmm1, %xmm0	# tmp510, tmp508, tmp515
	vmovdqa	%xmm0, %xmm1	# tmp515, tmp516
	vpunpckldq	%xmm3, %xmm2, %xmm0	# tmp514, tmp512, tmp517
	vpunpcklqdq	%xmm0, %xmm1, %xmm0	# tmp518, tmp516, tmp519
	vmovdqa	%xmm0, %xmm1	# tmp519, tmp457
	movzbl	-137(%rbp), %eax	# __q16, tmp521
	movl	%eax, -404(%rbp)	# tmp521, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp522
	movzbl	-138(%rbp), %eax	# __q17, tmp524
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp524, tmp523, tmp523
	vmovdqa	%xmm0, %xmm2	# tmp523, tmp525
	movzbl	-139(%rbp), %eax	# __q18, tmp527
	movl	%eax, -404(%rbp)	# tmp527, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp528
	movzbl	-140(%rbp), %eax	# __q19, tmp530
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp530, tmp529, tmp529
	vmovdqa	%xmm0, %xmm9	# tmp529, tmp531
	movzbl	-141(%rbp), %eax	# __q20, tmp533
	movl	%eax, -404(%rbp)	# tmp533, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp534
	movzbl	-142(%rbp), %eax	# __q21, tmp536
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp536, tmp535, tmp535
	vmovdqa	%xmm0, %xmm5	# tmp535, tmp537
	movzbl	-143(%rbp), %eax	# __q22, tmp539
	movl	%eax, -404(%rbp)	# tmp539, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp540
	movzbl	-144(%rbp), %eax	# __q23, tmp542
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp542, tmp541, tmp541
	vmovdqa	%xmm0, %xmm8	# tmp541, tmp543
	movzbl	-145(%rbp), %eax	# __q24, tmp545
	movl	%eax, -404(%rbp)	# tmp545, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp546
	movzbl	-146(%rbp), %eax	# __q25, tmp548
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp548, tmp547, tmp547
	vmovdqa	%xmm0, %xmm3	# tmp547, tmp549
	movzbl	-147(%rbp), %eax	# __q26, tmp551
	movl	%eax, -404(%rbp)	# tmp551, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp552
	movzbl	-148(%rbp), %eax	# __q27, tmp554
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp554, tmp553, tmp553
	vmovdqa	%xmm0, %xmm7	# tmp553, tmp555
	movzbl	-149(%rbp), %eax	# __q28, tmp557
	movl	%eax, -404(%rbp)	# tmp557, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp558
	movzbl	-150(%rbp), %eax	# __q29, tmp560
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp560, tmp559, tmp559
	vmovdqa	%xmm0, %xmm4	# tmp559, tmp561
	movzbl	-151(%rbp), %eax	# __q30, tmp563
	movl	%eax, -404(%rbp)	# tmp563, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp564
	movzbl	-152(%rbp), %eax	# __q31, tmp566
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp566, tmp565, tmp565
	vmovdqa	%xmm0, %xmm6	# tmp565, tmp567
	vpunpcklwd	%xmm9, %xmm2, %xmm0	# tmp531, tmp525, tmp568
	vmovdqa	%xmm0, %xmm2	# tmp568, tmp569
	vpunpcklwd	%xmm8, %xmm5, %xmm0	# tmp543, tmp537, tmp570
	vmovdqa	%xmm0, %xmm5	# tmp570, tmp571
	vpunpcklwd	%xmm7, %xmm3, %xmm0	# tmp555, tmp549, tmp572
	vmovdqa	%xmm0, %xmm3	# tmp572, tmp573
	vpunpcklwd	%xmm6, %xmm4, %xmm0	# tmp567, tmp561, tmp574
	vmovdqa	%xmm0, %xmm4	# tmp574, tmp575
	vpunpckldq	%xmm5, %xmm2, %xmm0	# tmp571, tmp569, tmp576
	vmovdqa	%xmm0, %xmm2	# tmp576, tmp577
	vpunpckldq	%xmm4, %xmm3, %xmm0	# tmp575, tmp573, tmp578
	vpunpcklqdq	%xmm0, %xmm2, %xmm0	# tmp579, tmp577, tmp580
	vinserti128	$0x1, %xmm0, %ymm1, %ymm0	# tmp458, tmp457, tmp456
.LBE189:
.LBE188:
.LBE187:
.LBE186:
# mem_bw_final.cpp:127: 				local_input[j] = _mm256_set1_epi8(0);
	.loc 3 127 0 discriminator 2
	movq	-400(%rbp), %rax	# %sfp, _33
	vmovdqa	%ymm0, (%rax)	# D.62741, *_33
# mem_bw_final.cpp:128: 				local_input[j + 1] = _mm256_set1_epi8(0);
	.loc 3 128 0 discriminator 2
	movl	-116(%rbp), %eax	# j, tmp581
	cltq
	addq	$1, %rax	#, _37
	salq	$5, %rax	#, _37
	movq	%rax, %rdx	# _37, _38
	movq	-64(%rbp), %rax	# local_input, tmp582
	addq	%rdx, %rax	# _38, _39
	movq	%rax, -400(%rbp)	# _39, %sfp
	movb	$0, -186(%rbp)	#, __A
.LBB190:
.LBB191:
# /usr/lib/gcc/x86_64-linux-gnu/7/include/avxintrin.h:1334:   return _mm256_set_epi8 (__A, __A, __A, __A, __A, __A, __A, __A,
	.loc 4 1334 0 discriminator 2
	movsbl	-186(%rbp), %edi	# __A, _526
	movl	%edi, -404(%rbp)	# _526, %sfp
	movsbl	-186(%rbp), %ebx	# __A, _527
	movl	%ebx, -408(%rbp)	# _527, %sfp
	movsbl	-186(%rbp), %ecx	# __A, _528
	movl	%ecx, -412(%rbp)	# _528, %sfp
	movsbl	-186(%rbp), %esi	# __A, _529
	movl	%esi, -416(%rbp)	# _529, %sfp
	movsbl	-186(%rbp), %edx	# __A, _530
	movl	%edx, -420(%rbp)	# _530, %sfp
	movsbl	-186(%rbp), %r8d	# __A, _531
	movl	%r8d, -424(%rbp)	# _531, %sfp
	movsbl	-186(%rbp), %r9d	# __A, _532
	movl	%r9d, -428(%rbp)	# _532, %sfp
	movsbl	-186(%rbp), %r10d	# __A, _533
	movl	%r10d, -432(%rbp)	# _533, %sfp
	movsbl	-186(%rbp), %r11d	# __A, _534
	movl	%r11d, -436(%rbp)	# _534, %sfp
	movsbl	-186(%rbp), %r14d	# __A, _535
	movl	%r14d, -440(%rbp)	# _535, %sfp
	movsbl	-186(%rbp), %r15d	# __A, _536
	movl	%r15d, -444(%rbp)	# _536, %sfp
	movsbl	-186(%rbp), %r12d	# __A, _537
	movl	%r12d, -448(%rbp)	# _537, %sfp
	movsbl	-186(%rbp), %r13d	# __A, _538
	movl	%r13d, -452(%rbp)	# _538, %sfp
	movsbl	-186(%rbp), %edi	# __A, _539
	movl	%edi, -456(%rbp)	# _539, %sfp
	movsbl	-186(%rbp), %ebx	# __A, _540
	movl	%ebx, -460(%rbp)	# _540, %sfp
	movsbl	-186(%rbp), %ecx	# __A, _541
	movl	%ecx, -464(%rbp)	# _541, %sfp
	movsbl	-186(%rbp), %esi	# __A, _542
	movl	%esi, -468(%rbp)	# _542, %sfp
	movsbl	-186(%rbp), %edx	# __A, _543
	movl	%edx, -472(%rbp)	# _543, %sfp
	movsbl	-186(%rbp), %r15d	# __A, _544
	movsbl	-186(%rbp), %r14d	# __A, _545
	movsbl	-186(%rbp), %r13d	# __A, _546
	movsbl	-186(%rbp), %r12d	# __A, _547
	movsbl	-186(%rbp), %ebx	# __A, _548
	movsbl	-186(%rbp), %r11d	# __A, _549
	movsbl	-186(%rbp), %r10d	# __A, _550
	movsbl	-186(%rbp), %r9d	# __A, _551
	movsbl	-186(%rbp), %r8d	# __A, _552
	movsbl	-186(%rbp), %edi	# __A, _553
	movsbl	-186(%rbp), %esi	# __A, _554
	movsbl	-186(%rbp), %ecx	# __A, _555
	movsbl	-186(%rbp), %edx	# __A, _556
	movsbl	-186(%rbp), %eax	# __A, _557
	movb	%al, -185(%rbp)	# _557, __q31
	movb	%dl, -184(%rbp)	# _556, __q30
	movb	%cl, -183(%rbp)	# _555, __q29
	movb	%sil, -182(%rbp)	# _554, __q28
	movb	%dil, -181(%rbp)	# _553, __q27
	movb	%r8b, -180(%rbp)	# _552, __q26
	movb	%r9b, -179(%rbp)	# _551, __q25
	movb	%r10b, -178(%rbp)	# _550, __q24
	movb	%r11b, -177(%rbp)	# _549, __q23
	movb	%bl, -176(%rbp)	# _548, __q22
	movb	%r12b, -175(%rbp)	# _547, __q21
	movb	%r13b, -174(%rbp)	# _546, __q20
	movb	%r14b, -173(%rbp)	# _545, __q19
	movb	%r15b, -172(%rbp)	# _544, __q18
	movzbl	-472(%rbp), %edx	# %sfp, tmp1537
	movb	%dl, -171(%rbp)	# tmp1537, __q17
	movzbl	-468(%rbp), %esi	# %sfp, tmp1538
	movb	%sil, -170(%rbp)	# tmp1538, __q16
	movzbl	-464(%rbp), %ecx	# %sfp, tmp1539
	movb	%cl, -169(%rbp)	# tmp1539, __q15
	movzbl	-460(%rbp), %ebx	# %sfp, tmp1540
	movb	%bl, -168(%rbp)	# tmp1540, __q14
	movzbl	-456(%rbp), %edi	# %sfp, tmp1541
	movb	%dil, -167(%rbp)	# tmp1541, __q13
	movzbl	-452(%rbp), %r13d	# %sfp, tmp1542
	movb	%r13b, -166(%rbp)	# tmp1542, __q12
	movzbl	-448(%rbp), %r12d	# %sfp, tmp1543
	movb	%r12b, -165(%rbp)	# tmp1543, __q11
	movzbl	-444(%rbp), %r15d	# %sfp, tmp1544
	movb	%r15b, -164(%rbp)	# tmp1544, __q10
	movzbl	-440(%rbp), %r14d	# %sfp, tmp1545
	movb	%r14b, -163(%rbp)	# tmp1545, __q09
	movzbl	-436(%rbp), %r11d	# %sfp, tmp1546
	movb	%r11b, -162(%rbp)	# tmp1546, __q08
	movzbl	-432(%rbp), %r10d	# %sfp, tmp1547
	movb	%r10b, -161(%rbp)	# tmp1547, __q07
	movzbl	-428(%rbp), %r9d	# %sfp, tmp1548
	movb	%r9b, -160(%rbp)	# tmp1548, __q06
	movzbl	-424(%rbp), %r8d	# %sfp, tmp1549
	movb	%r8b, -159(%rbp)	# tmp1549, __q05
	movzbl	-420(%rbp), %edx	# %sfp, tmp1550
	movb	%dl, -158(%rbp)	# tmp1550, __q04
	movzbl	-416(%rbp), %esi	# %sfp, tmp1551
	movb	%sil, -157(%rbp)	# tmp1551, __q03
	movzbl	-412(%rbp), %ecx	# %sfp, tmp1552
	movb	%cl, -156(%rbp)	# tmp1552, __q02
	movzbl	-408(%rbp), %ebx	# %sfp, tmp1553
	movb	%bl, -155(%rbp)	# tmp1553, __q01
	movzbl	-404(%rbp), %edi	# %sfp, tmp1554
	movb	%dil, -154(%rbp)	# tmp1554, __q00
.LBB192:
.LBB193:
# /usr/lib/gcc/x86_64-linux-gnu/7/include/avxintrin.h:1286:   return __extension__ (__m256i)(__v32qi){
	.loc 4 1286 0 discriminator 2
	movzbl	-154(%rbp), %eax	# __q00, tmp587
	movl	%eax, -404(%rbp)	# tmp587, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp588
	movzbl	-155(%rbp), %eax	# __q01, tmp590
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp590, tmp589, tmp589
	vmovdqa	%xmm0, %xmm1	# tmp589, tmp591
	movzbl	-156(%rbp), %eax	# __q02, tmp593
	movl	%eax, -404(%rbp)	# tmp593, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp594
	movzbl	-157(%rbp), %eax	# __q03, tmp596
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp596, tmp595, tmp595
	vmovdqa	%xmm0, %xmm8	# tmp595, tmp597
	movzbl	-158(%rbp), %eax	# __q04, tmp599
	movl	%eax, -404(%rbp)	# tmp599, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp600
	movzbl	-159(%rbp), %eax	# __q05, tmp602
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp602, tmp601, tmp601
	vmovdqa	%xmm0, %xmm4	# tmp601, tmp603
	movzbl	-160(%rbp), %eax	# __q06, tmp605
	movl	%eax, -404(%rbp)	# tmp605, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp606
	movzbl	-161(%rbp), %eax	# __q07, tmp608
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp608, tmp607, tmp607
	vmovdqa	%xmm0, %xmm7	# tmp607, tmp609
	movzbl	-162(%rbp), %eax	# __q08, tmp611
	movl	%eax, -404(%rbp)	# tmp611, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp612
	movzbl	-163(%rbp), %eax	# __q09, tmp614
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp614, tmp613, tmp613
	vmovdqa	%xmm0, %xmm2	# tmp613, tmp615
	movzbl	-164(%rbp), %eax	# __q10, tmp617
	movl	%eax, -404(%rbp)	# tmp617, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp618
	movzbl	-165(%rbp), %eax	# __q11, tmp620
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp620, tmp619, tmp619
	vmovdqa	%xmm0, %xmm6	# tmp619, tmp621
	movzbl	-166(%rbp), %eax	# __q12, tmp623
	movl	%eax, -404(%rbp)	# tmp623, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp624
	movzbl	-167(%rbp), %eax	# __q13, tmp626
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp626, tmp625, tmp625
	vmovdqa	%xmm0, %xmm3	# tmp625, tmp627
	movzbl	-168(%rbp), %eax	# __q14, tmp629
	movl	%eax, -404(%rbp)	# tmp629, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp630
	movzbl	-169(%rbp), %eax	# __q15, tmp632
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp632, tmp631, tmp631
	vmovdqa	%xmm0, %xmm5	# tmp631, tmp633
	vpunpcklwd	%xmm8, %xmm1, %xmm0	# tmp597, tmp591, tmp634
	vmovdqa	%xmm0, %xmm1	# tmp634, tmp635
	vpunpcklwd	%xmm7, %xmm4, %xmm0	# tmp609, tmp603, tmp636
	vmovdqa	%xmm0, %xmm4	# tmp636, tmp637
	vpunpcklwd	%xmm6, %xmm2, %xmm0	# tmp621, tmp615, tmp638
	vmovdqa	%xmm0, %xmm2	# tmp638, tmp639
	vpunpcklwd	%xmm5, %xmm3, %xmm0	# tmp633, tmp627, tmp640
	vmovdqa	%xmm0, %xmm3	# tmp640, tmp641
	vpunpckldq	%xmm4, %xmm1, %xmm0	# tmp637, tmp635, tmp642
	vmovdqa	%xmm0, %xmm1	# tmp642, tmp643
	vpunpckldq	%xmm3, %xmm2, %xmm0	# tmp641, tmp639, tmp644
	vpunpcklqdq	%xmm0, %xmm1, %xmm0	# tmp645, tmp643, tmp646
	vmovdqa	%xmm0, %xmm1	# tmp646, tmp584
	movzbl	-170(%rbp), %eax	# __q16, tmp648
	movl	%eax, -404(%rbp)	# tmp648, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp649
	movzbl	-171(%rbp), %eax	# __q17, tmp651
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp651, tmp650, tmp650
	vmovdqa	%xmm0, %xmm2	# tmp650, tmp652
	movzbl	-172(%rbp), %eax	# __q18, tmp654
	movl	%eax, -404(%rbp)	# tmp654, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp655
	movzbl	-173(%rbp), %eax	# __q19, tmp657
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp657, tmp656, tmp656
	vmovdqa	%xmm0, %xmm9	# tmp656, tmp658
	movzbl	-174(%rbp), %eax	# __q20, tmp660
	movl	%eax, -404(%rbp)	# tmp660, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp661
	movzbl	-175(%rbp), %eax	# __q21, tmp663
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp663, tmp662, tmp662
	vmovdqa	%xmm0, %xmm5	# tmp662, tmp664
	movzbl	-176(%rbp), %eax	# __q22, tmp666
	movl	%eax, -404(%rbp)	# tmp666, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp667
	movzbl	-177(%rbp), %eax	# __q23, tmp669
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp669, tmp668, tmp668
	vmovdqa	%xmm0, %xmm8	# tmp668, tmp670
	movzbl	-178(%rbp), %eax	# __q24, tmp672
	movl	%eax, -404(%rbp)	# tmp672, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp673
	movzbl	-179(%rbp), %eax	# __q25, tmp675
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp675, tmp674, tmp674
	vmovdqa	%xmm0, %xmm3	# tmp674, tmp676
	movzbl	-180(%rbp), %eax	# __q26, tmp678
	movl	%eax, -404(%rbp)	# tmp678, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp679
	movzbl	-181(%rbp), %eax	# __q27, tmp681
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp681, tmp680, tmp680
	vmovdqa	%xmm0, %xmm7	# tmp680, tmp682
	movzbl	-182(%rbp), %eax	# __q28, tmp684
	movl	%eax, -404(%rbp)	# tmp684, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp685
	movzbl	-183(%rbp), %eax	# __q29, tmp687
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp687, tmp686, tmp686
	vmovdqa	%xmm0, %xmm4	# tmp686, tmp688
	movzbl	-184(%rbp), %eax	# __q30, tmp690
	movl	%eax, -404(%rbp)	# tmp690, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp691
	movzbl	-185(%rbp), %eax	# __q31, tmp693
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp693, tmp692, tmp692
	vmovdqa	%xmm0, %xmm6	# tmp692, tmp694
	vpunpcklwd	%xmm9, %xmm2, %xmm0	# tmp658, tmp652, tmp695
	vmovdqa	%xmm0, %xmm2	# tmp695, tmp696
	vpunpcklwd	%xmm8, %xmm5, %xmm0	# tmp670, tmp664, tmp697
	vmovdqa	%xmm0, %xmm5	# tmp697, tmp698
	vpunpcklwd	%xmm7, %xmm3, %xmm0	# tmp682, tmp676, tmp699
	vmovdqa	%xmm0, %xmm3	# tmp699, tmp700
	vpunpcklwd	%xmm6, %xmm4, %xmm0	# tmp694, tmp688, tmp701
	vmovdqa	%xmm0, %xmm4	# tmp701, tmp702
	vpunpckldq	%xmm5, %xmm2, %xmm0	# tmp698, tmp696, tmp703
	vmovdqa	%xmm0, %xmm2	# tmp703, tmp704
	vpunpckldq	%xmm4, %xmm3, %xmm0	# tmp702, tmp700, tmp705
	vpunpcklqdq	%xmm0, %xmm2, %xmm0	# tmp706, tmp704, tmp707
	vinserti128	$0x1, %xmm0, %ymm1, %ymm0	# tmp585, tmp584, tmp583
.LBE193:
.LBE192:
.LBE191:
.LBE190:
# mem_bw_final.cpp:128: 				local_input[j + 1] = _mm256_set1_epi8(0);
	.loc 3 128 0 discriminator 2
	movq	-400(%rbp), %rax	# %sfp, _39
	vmovdqa	%ymm0, (%rax)	# D.62702, *_39
# mem_bw_final.cpp:129: 				local_input[j + 2] = _mm256_set1_epi8(0);
	.loc 3 129 0 discriminator 2
	movl	-116(%rbp), %eax	# j, tmp708
	cltq
	addq	$2, %rax	#, _43
	salq	$5, %rax	#, _43
	movq	%rax, %rdx	# _43, _44
	movq	-64(%rbp), %rax	# local_input, tmp709
	addq	%rdx, %rax	# _44, _45
	movq	%rax, -400(%rbp)	# _45, %sfp
	movb	$0, -219(%rbp)	#, __A
.LBB194:
.LBB195:
# /usr/lib/gcc/x86_64-linux-gnu/7/include/avxintrin.h:1334:   return _mm256_set_epi8 (__A, __A, __A, __A, __A, __A, __A, __A,
	.loc 4 1334 0 discriminator 2
	movsbl	-219(%rbp), %edi	# __A, _457
	movl	%edi, -404(%rbp)	# _457, %sfp
	movsbl	-219(%rbp), %ebx	# __A, _458
	movl	%ebx, -408(%rbp)	# _458, %sfp
	movsbl	-219(%rbp), %ecx	# __A, _459
	movl	%ecx, -412(%rbp)	# _459, %sfp
	movsbl	-219(%rbp), %esi	# __A, _460
	movl	%esi, -416(%rbp)	# _460, %sfp
	movsbl	-219(%rbp), %edx	# __A, _461
	movl	%edx, -420(%rbp)	# _461, %sfp
	movsbl	-219(%rbp), %r8d	# __A, _462
	movl	%r8d, -424(%rbp)	# _462, %sfp
	movsbl	-219(%rbp), %r9d	# __A, _463
	movl	%r9d, -428(%rbp)	# _463, %sfp
	movsbl	-219(%rbp), %r10d	# __A, _464
	movl	%r10d, -432(%rbp)	# _464, %sfp
	movsbl	-219(%rbp), %r11d	# __A, _465
	movl	%r11d, -436(%rbp)	# _465, %sfp
	movsbl	-219(%rbp), %r14d	# __A, _466
	movl	%r14d, -440(%rbp)	# _466, %sfp
	movsbl	-219(%rbp), %r15d	# __A, _467
	movl	%r15d, -444(%rbp)	# _467, %sfp
	movsbl	-219(%rbp), %r12d	# __A, _468
	movl	%r12d, -448(%rbp)	# _468, %sfp
	movsbl	-219(%rbp), %r13d	# __A, _469
	movl	%r13d, -452(%rbp)	# _469, %sfp
	movsbl	-219(%rbp), %edi	# __A, _470
	movl	%edi, -456(%rbp)	# _470, %sfp
	movsbl	-219(%rbp), %ebx	# __A, _471
	movl	%ebx, -460(%rbp)	# _471, %sfp
	movsbl	-219(%rbp), %ecx	# __A, _472
	movl	%ecx, -464(%rbp)	# _472, %sfp
	movsbl	-219(%rbp), %esi	# __A, _473
	movl	%esi, -468(%rbp)	# _473, %sfp
	movsbl	-219(%rbp), %edx	# __A, _474
	movl	%edx, -472(%rbp)	# _474, %sfp
	movsbl	-219(%rbp), %r15d	# __A, _475
	movsbl	-219(%rbp), %r14d	# __A, _476
	movsbl	-219(%rbp), %r13d	# __A, _477
	movsbl	-219(%rbp), %r12d	# __A, _478
	movsbl	-219(%rbp), %ebx	# __A, _479
	movsbl	-219(%rbp), %r11d	# __A, _480
	movsbl	-219(%rbp), %r10d	# __A, _481
	movsbl	-219(%rbp), %r9d	# __A, _482
	movsbl	-219(%rbp), %r8d	# __A, _483
	movsbl	-219(%rbp), %edi	# __A, _484
	movsbl	-219(%rbp), %esi	# __A, _485
	movsbl	-219(%rbp), %ecx	# __A, _486
	movsbl	-219(%rbp), %edx	# __A, _487
	movsbl	-219(%rbp), %eax	# __A, _488
	movb	%al, -218(%rbp)	# _488, __q31
	movb	%dl, -217(%rbp)	# _487, __q30
	movb	%cl, -216(%rbp)	# _486, __q29
	movb	%sil, -215(%rbp)	# _485, __q28
	movb	%dil, -214(%rbp)	# _484, __q27
	movb	%r8b, -213(%rbp)	# _483, __q26
	movb	%r9b, -212(%rbp)	# _482, __q25
	movb	%r10b, -211(%rbp)	# _481, __q24
	movb	%r11b, -210(%rbp)	# _480, __q23
	movb	%bl, -209(%rbp)	# _479, __q22
	movb	%r12b, -208(%rbp)	# _478, __q21
	movb	%r13b, -207(%rbp)	# _477, __q20
	movb	%r14b, -206(%rbp)	# _476, __q19
	movb	%r15b, -205(%rbp)	# _475, __q18
	movzbl	-472(%rbp), %edx	# %sfp, tmp1576
	movb	%dl, -204(%rbp)	# tmp1576, __q17
	movzbl	-468(%rbp), %esi	# %sfp, tmp1577
	movb	%sil, -203(%rbp)	# tmp1577, __q16
	movzbl	-464(%rbp), %ecx	# %sfp, tmp1578
	movb	%cl, -202(%rbp)	# tmp1578, __q15
	movzbl	-460(%rbp), %ebx	# %sfp, tmp1579
	movb	%bl, -201(%rbp)	# tmp1579, __q14
	movzbl	-456(%rbp), %edi	# %sfp, tmp1580
	movb	%dil, -200(%rbp)	# tmp1580, __q13
	movzbl	-452(%rbp), %r13d	# %sfp, tmp1581
	movb	%r13b, -199(%rbp)	# tmp1581, __q12
	movzbl	-448(%rbp), %r12d	# %sfp, tmp1582
	movb	%r12b, -198(%rbp)	# tmp1582, __q11
	movzbl	-444(%rbp), %r15d	# %sfp, tmp1583
	movb	%r15b, -197(%rbp)	# tmp1583, __q10
	movzbl	-440(%rbp), %r14d	# %sfp, tmp1584
	movb	%r14b, -196(%rbp)	# tmp1584, __q09
	movzbl	-436(%rbp), %r11d	# %sfp, tmp1585
	movb	%r11b, -195(%rbp)	# tmp1585, __q08
	movzbl	-432(%rbp), %r10d	# %sfp, tmp1586
	movb	%r10b, -194(%rbp)	# tmp1586, __q07
	movzbl	-428(%rbp), %r9d	# %sfp, tmp1587
	movb	%r9b, -193(%rbp)	# tmp1587, __q06
	movzbl	-424(%rbp), %r8d	# %sfp, tmp1588
	movb	%r8b, -192(%rbp)	# tmp1588, __q05
	movzbl	-420(%rbp), %edx	# %sfp, tmp1589
	movb	%dl, -191(%rbp)	# tmp1589, __q04
	movzbl	-416(%rbp), %esi	# %sfp, tmp1590
	movb	%sil, -190(%rbp)	# tmp1590, __q03
	movzbl	-412(%rbp), %ecx	# %sfp, tmp1591
	movb	%cl, -189(%rbp)	# tmp1591, __q02
	movzbl	-408(%rbp), %ebx	# %sfp, tmp1592
	movb	%bl, -188(%rbp)	# tmp1592, __q01
	movzbl	-404(%rbp), %edi	# %sfp, tmp1593
	movb	%dil, -187(%rbp)	# tmp1593, __q00
.LBB196:
.LBB197:
# /usr/lib/gcc/x86_64-linux-gnu/7/include/avxintrin.h:1286:   return __extension__ (__m256i)(__v32qi){
	.loc 4 1286 0 discriminator 2
	movzbl	-187(%rbp), %eax	# __q00, tmp714
	movl	%eax, -404(%rbp)	# tmp714, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp715
	movzbl	-188(%rbp), %eax	# __q01, tmp717
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp717, tmp716, tmp716
	vmovdqa	%xmm0, %xmm1	# tmp716, tmp718
	movzbl	-189(%rbp), %eax	# __q02, tmp720
	movl	%eax, -404(%rbp)	# tmp720, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp721
	movzbl	-190(%rbp), %eax	# __q03, tmp723
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp723, tmp722, tmp722
	vmovdqa	%xmm0, %xmm8	# tmp722, tmp724
	movzbl	-191(%rbp), %eax	# __q04, tmp726
	movl	%eax, -404(%rbp)	# tmp726, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp727
	movzbl	-192(%rbp), %eax	# __q05, tmp729
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp729, tmp728, tmp728
	vmovdqa	%xmm0, %xmm4	# tmp728, tmp730
	movzbl	-193(%rbp), %eax	# __q06, tmp732
	movl	%eax, -404(%rbp)	# tmp732, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp733
	movzbl	-194(%rbp), %eax	# __q07, tmp735
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp735, tmp734, tmp734
	vmovdqa	%xmm0, %xmm7	# tmp734, tmp736
	movzbl	-195(%rbp), %eax	# __q08, tmp738
	movl	%eax, -404(%rbp)	# tmp738, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp739
	movzbl	-196(%rbp), %eax	# __q09, tmp741
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp741, tmp740, tmp740
	vmovdqa	%xmm0, %xmm2	# tmp740, tmp742
	movzbl	-197(%rbp), %eax	# __q10, tmp744
	movl	%eax, -404(%rbp)	# tmp744, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp745
	movzbl	-198(%rbp), %eax	# __q11, tmp747
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp747, tmp746, tmp746
	vmovdqa	%xmm0, %xmm6	# tmp746, tmp748
	movzbl	-199(%rbp), %eax	# __q12, tmp750
	movl	%eax, -404(%rbp)	# tmp750, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp751
	movzbl	-200(%rbp), %eax	# __q13, tmp753
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp753, tmp752, tmp752
	vmovdqa	%xmm0, %xmm3	# tmp752, tmp754
	movzbl	-201(%rbp), %eax	# __q14, tmp756
	movl	%eax, -404(%rbp)	# tmp756, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp757
	movzbl	-202(%rbp), %eax	# __q15, tmp759
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp759, tmp758, tmp758
	vmovdqa	%xmm0, %xmm5	# tmp758, tmp760
	vpunpcklwd	%xmm8, %xmm1, %xmm0	# tmp724, tmp718, tmp761
	vmovdqa	%xmm0, %xmm1	# tmp761, tmp762
	vpunpcklwd	%xmm7, %xmm4, %xmm0	# tmp736, tmp730, tmp763
	vmovdqa	%xmm0, %xmm4	# tmp763, tmp764
	vpunpcklwd	%xmm6, %xmm2, %xmm0	# tmp748, tmp742, tmp765
	vmovdqa	%xmm0, %xmm2	# tmp765, tmp766
	vpunpcklwd	%xmm5, %xmm3, %xmm0	# tmp760, tmp754, tmp767
	vmovdqa	%xmm0, %xmm3	# tmp767, tmp768
	vpunpckldq	%xmm4, %xmm1, %xmm0	# tmp764, tmp762, tmp769
	vmovdqa	%xmm0, %xmm1	# tmp769, tmp770
	vpunpckldq	%xmm3, %xmm2, %xmm0	# tmp768, tmp766, tmp771
	vpunpcklqdq	%xmm0, %xmm1, %xmm0	# tmp772, tmp770, tmp773
	vmovdqa	%xmm0, %xmm1	# tmp773, tmp711
	movzbl	-203(%rbp), %eax	# __q16, tmp775
	movl	%eax, -404(%rbp)	# tmp775, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp776
	movzbl	-204(%rbp), %eax	# __q17, tmp778
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp778, tmp777, tmp777
	vmovdqa	%xmm0, %xmm2	# tmp777, tmp779
	movzbl	-205(%rbp), %eax	# __q18, tmp781
	movl	%eax, -404(%rbp)	# tmp781, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp782
	movzbl	-206(%rbp), %eax	# __q19, tmp784
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp784, tmp783, tmp783
	vmovdqa	%xmm0, %xmm9	# tmp783, tmp785
	movzbl	-207(%rbp), %eax	# __q20, tmp787
	movl	%eax, -404(%rbp)	# tmp787, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp788
	movzbl	-208(%rbp), %eax	# __q21, tmp790
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp790, tmp789, tmp789
	vmovdqa	%xmm0, %xmm5	# tmp789, tmp791
	movzbl	-209(%rbp), %eax	# __q22, tmp793
	movl	%eax, -404(%rbp)	# tmp793, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp794
	movzbl	-210(%rbp), %eax	# __q23, tmp796
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp796, tmp795, tmp795
	vmovdqa	%xmm0, %xmm8	# tmp795, tmp797
	movzbl	-211(%rbp), %eax	# __q24, tmp799
	movl	%eax, -404(%rbp)	# tmp799, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp800
	movzbl	-212(%rbp), %eax	# __q25, tmp802
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp802, tmp801, tmp801
	vmovdqa	%xmm0, %xmm3	# tmp801, tmp803
	movzbl	-213(%rbp), %eax	# __q26, tmp805
	movl	%eax, -404(%rbp)	# tmp805, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp806
	movzbl	-214(%rbp), %eax	# __q27, tmp808
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp808, tmp807, tmp807
	vmovdqa	%xmm0, %xmm7	# tmp807, tmp809
	movzbl	-215(%rbp), %eax	# __q28, tmp811
	movl	%eax, -404(%rbp)	# tmp811, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp812
	movzbl	-216(%rbp), %eax	# __q29, tmp814
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp814, tmp813, tmp813
	vmovdqa	%xmm0, %xmm4	# tmp813, tmp815
	movzbl	-217(%rbp), %eax	# __q30, tmp817
	movl	%eax, -404(%rbp)	# tmp817, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp818
	movzbl	-218(%rbp), %eax	# __q31, tmp820
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp820, tmp819, tmp819
	vmovdqa	%xmm0, %xmm6	# tmp819, tmp821
	vpunpcklwd	%xmm9, %xmm2, %xmm0	# tmp785, tmp779, tmp822
	vmovdqa	%xmm0, %xmm2	# tmp822, tmp823
	vpunpcklwd	%xmm8, %xmm5, %xmm0	# tmp797, tmp791, tmp824
	vmovdqa	%xmm0, %xmm5	# tmp824, tmp825
	vpunpcklwd	%xmm7, %xmm3, %xmm0	# tmp809, tmp803, tmp826
	vmovdqa	%xmm0, %xmm3	# tmp826, tmp827
	vpunpcklwd	%xmm6, %xmm4, %xmm0	# tmp821, tmp815, tmp828
	vmovdqa	%xmm0, %xmm4	# tmp828, tmp829
	vpunpckldq	%xmm5, %xmm2, %xmm0	# tmp825, tmp823, tmp830
	vmovdqa	%xmm0, %xmm2	# tmp830, tmp831
	vpunpckldq	%xmm4, %xmm3, %xmm0	# tmp829, tmp827, tmp832
	vpunpcklqdq	%xmm0, %xmm2, %xmm0	# tmp833, tmp831, tmp834
	vinserti128	$0x1, %xmm0, %ymm1, %ymm0	# tmp712, tmp711, tmp710
.LBE197:
.LBE196:
.LBE195:
.LBE194:
# mem_bw_final.cpp:129: 				local_input[j + 2] = _mm256_set1_epi8(0);
	.loc 3 129 0 discriminator 2
	movq	-400(%rbp), %rax	# %sfp, _45
	vmovdqa	%ymm0, (%rax)	# D.62663, *_45
# mem_bw_final.cpp:130: 				local_input[j + 3] = _mm256_set1_epi8(0);
	.loc 3 130 0 discriminator 2
	movl	-116(%rbp), %eax	# j, tmp835
	cltq
	addq	$3, %rax	#, _49
	salq	$5, %rax	#, _49
	movq	%rax, %rdx	# _49, _50
	movq	-64(%rbp), %rax	# local_input, tmp836
	addq	%rdx, %rax	# _50, _51
	movq	%rax, -400(%rbp)	# _51, %sfp
	movb	$0, -252(%rbp)	#, __A
.LBB198:
.LBB199:
# /usr/lib/gcc/x86_64-linux-gnu/7/include/avxintrin.h:1334:   return _mm256_set_epi8 (__A, __A, __A, __A, __A, __A, __A, __A,
	.loc 4 1334 0 discriminator 2
	movsbl	-252(%rbp), %edi	# __A, _388
	movl	%edi, -404(%rbp)	# _388, %sfp
	movsbl	-252(%rbp), %ebx	# __A, _389
	movl	%ebx, -408(%rbp)	# _389, %sfp
	movsbl	-252(%rbp), %ecx	# __A, _390
	movl	%ecx, -412(%rbp)	# _390, %sfp
	movsbl	-252(%rbp), %esi	# __A, _391
	movl	%esi, -416(%rbp)	# _391, %sfp
	movsbl	-252(%rbp), %edx	# __A, _392
	movl	%edx, -420(%rbp)	# _392, %sfp
	movsbl	-252(%rbp), %r8d	# __A, _393
	movl	%r8d, -424(%rbp)	# _393, %sfp
	movsbl	-252(%rbp), %r9d	# __A, _394
	movl	%r9d, -428(%rbp)	# _394, %sfp
	movsbl	-252(%rbp), %r10d	# __A, _395
	movl	%r10d, -432(%rbp)	# _395, %sfp
	movsbl	-252(%rbp), %r11d	# __A, _396
	movl	%r11d, -436(%rbp)	# _396, %sfp
	movsbl	-252(%rbp), %r14d	# __A, _397
	movl	%r14d, -440(%rbp)	# _397, %sfp
	movsbl	-252(%rbp), %r15d	# __A, _398
	movl	%r15d, -444(%rbp)	# _398, %sfp
	movsbl	-252(%rbp), %r12d	# __A, _399
	movl	%r12d, -448(%rbp)	# _399, %sfp
	movsbl	-252(%rbp), %r13d	# __A, _400
	movl	%r13d, -452(%rbp)	# _400, %sfp
	movsbl	-252(%rbp), %edi	# __A, _401
	movl	%edi, -456(%rbp)	# _401, %sfp
	movsbl	-252(%rbp), %ebx	# __A, _402
	movl	%ebx, -460(%rbp)	# _402, %sfp
	movsbl	-252(%rbp), %ecx	# __A, _403
	movl	%ecx, -464(%rbp)	# _403, %sfp
	movsbl	-252(%rbp), %esi	# __A, _404
	movl	%esi, -468(%rbp)	# _404, %sfp
	movsbl	-252(%rbp), %edx	# __A, _405
	movl	%edx, -472(%rbp)	# _405, %sfp
	movsbl	-252(%rbp), %r15d	# __A, _406
	movsbl	-252(%rbp), %r14d	# __A, _407
	movsbl	-252(%rbp), %r13d	# __A, _408
	movsbl	-252(%rbp), %r12d	# __A, _409
	movsbl	-252(%rbp), %ebx	# __A, _410
	movsbl	-252(%rbp), %r11d	# __A, _411
	movsbl	-252(%rbp), %r10d	# __A, _412
	movsbl	-252(%rbp), %r9d	# __A, _413
	movsbl	-252(%rbp), %r8d	# __A, _414
	movsbl	-252(%rbp), %edi	# __A, _415
	movsbl	-252(%rbp), %esi	# __A, _416
	movsbl	-252(%rbp), %ecx	# __A, _417
	movsbl	-252(%rbp), %edx	# __A, _418
	movsbl	-252(%rbp), %eax	# __A, _419
	movb	%al, -251(%rbp)	# _419, __q31
	movb	%dl, -250(%rbp)	# _418, __q30
	movb	%cl, -249(%rbp)	# _417, __q29
	movb	%sil, -248(%rbp)	# _416, __q28
	movb	%dil, -247(%rbp)	# _415, __q27
	movb	%r8b, -246(%rbp)	# _414, __q26
	movb	%r9b, -245(%rbp)	# _413, __q25
	movb	%r10b, -244(%rbp)	# _412, __q24
	movb	%r11b, -243(%rbp)	# _411, __q23
	movb	%bl, -242(%rbp)	# _410, __q22
	movb	%r12b, -241(%rbp)	# _409, __q21
	movb	%r13b, -240(%rbp)	# _408, __q20
	movb	%r14b, -239(%rbp)	# _407, __q19
	movb	%r15b, -238(%rbp)	# _406, __q18
	movzbl	-472(%rbp), %edx	# %sfp, tmp1615
	movb	%dl, -237(%rbp)	# tmp1615, __q17
	movzbl	-468(%rbp), %esi	# %sfp, tmp1616
	movb	%sil, -236(%rbp)	# tmp1616, __q16
	movzbl	-464(%rbp), %ecx	# %sfp, tmp1617
	movb	%cl, -235(%rbp)	# tmp1617, __q15
	movzbl	-460(%rbp), %ebx	# %sfp, tmp1618
	movb	%bl, -234(%rbp)	# tmp1618, __q14
	movzbl	-456(%rbp), %edi	# %sfp, tmp1619
	movb	%dil, -233(%rbp)	# tmp1619, __q13
	movzbl	-452(%rbp), %r13d	# %sfp, tmp1620
	movb	%r13b, -232(%rbp)	# tmp1620, __q12
	movzbl	-448(%rbp), %r12d	# %sfp, tmp1621
	movb	%r12b, -231(%rbp)	# tmp1621, __q11
	movzbl	-444(%rbp), %r15d	# %sfp, tmp1622
	movb	%r15b, -230(%rbp)	# tmp1622, __q10
	movzbl	-440(%rbp), %r14d	# %sfp, tmp1623
	movb	%r14b, -229(%rbp)	# tmp1623, __q09
	movzbl	-436(%rbp), %r11d	# %sfp, tmp1624
	movb	%r11b, -228(%rbp)	# tmp1624, __q08
	movzbl	-432(%rbp), %r10d	# %sfp, tmp1625
	movb	%r10b, -227(%rbp)	# tmp1625, __q07
	movzbl	-428(%rbp), %r9d	# %sfp, tmp1626
	movb	%r9b, -226(%rbp)	# tmp1626, __q06
	movzbl	-424(%rbp), %r8d	# %sfp, tmp1627
	movb	%r8b, -225(%rbp)	# tmp1627, __q05
	movzbl	-420(%rbp), %edx	# %sfp, tmp1628
	movb	%dl, -224(%rbp)	# tmp1628, __q04
	movzbl	-416(%rbp), %esi	# %sfp, tmp1629
	movb	%sil, -223(%rbp)	# tmp1629, __q03
	movzbl	-412(%rbp), %ecx	# %sfp, tmp1630
	movb	%cl, -222(%rbp)	# tmp1630, __q02
	movzbl	-408(%rbp), %ebx	# %sfp, tmp1631
	movb	%bl, -221(%rbp)	# tmp1631, __q01
	movzbl	-404(%rbp), %edi	# %sfp, tmp1632
	movb	%dil, -220(%rbp)	# tmp1632, __q00
.LBB200:
.LBB201:
# /usr/lib/gcc/x86_64-linux-gnu/7/include/avxintrin.h:1286:   return __extension__ (__m256i)(__v32qi){
	.loc 4 1286 0 discriminator 2
	movzbl	-220(%rbp), %eax	# __q00, tmp841
	movl	%eax, -404(%rbp)	# tmp841, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp842
	movzbl	-221(%rbp), %eax	# __q01, tmp844
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp844, tmp843, tmp843
	vmovdqa	%xmm0, %xmm1	# tmp843, tmp845
	movzbl	-222(%rbp), %eax	# __q02, tmp847
	movl	%eax, -404(%rbp)	# tmp847, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp848
	movzbl	-223(%rbp), %eax	# __q03, tmp850
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp850, tmp849, tmp849
	vmovdqa	%xmm0, %xmm8	# tmp849, tmp851
	movzbl	-224(%rbp), %eax	# __q04, tmp853
	movl	%eax, -404(%rbp)	# tmp853, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp854
	movzbl	-225(%rbp), %eax	# __q05, tmp856
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp856, tmp855, tmp855
	vmovdqa	%xmm0, %xmm4	# tmp855, tmp857
	movzbl	-226(%rbp), %eax	# __q06, tmp859
	movl	%eax, -404(%rbp)	# tmp859, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp860
	movzbl	-227(%rbp), %eax	# __q07, tmp862
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp862, tmp861, tmp861
	vmovdqa	%xmm0, %xmm7	# tmp861, tmp863
	movzbl	-228(%rbp), %eax	# __q08, tmp865
	movl	%eax, -404(%rbp)	# tmp865, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp866
	movzbl	-229(%rbp), %eax	# __q09, tmp868
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp868, tmp867, tmp867
	vmovdqa	%xmm0, %xmm2	# tmp867, tmp869
	movzbl	-230(%rbp), %eax	# __q10, tmp871
	movl	%eax, -404(%rbp)	# tmp871, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp872
	movzbl	-231(%rbp), %eax	# __q11, tmp874
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp874, tmp873, tmp873
	vmovdqa	%xmm0, %xmm6	# tmp873, tmp875
	movzbl	-232(%rbp), %eax	# __q12, tmp877
	movl	%eax, -404(%rbp)	# tmp877, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp878
	movzbl	-233(%rbp), %eax	# __q13, tmp880
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp880, tmp879, tmp879
	vmovdqa	%xmm0, %xmm3	# tmp879, tmp881
	movzbl	-234(%rbp), %eax	# __q14, tmp883
	movl	%eax, -404(%rbp)	# tmp883, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp884
	movzbl	-235(%rbp), %eax	# __q15, tmp886
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp886, tmp885, tmp885
	vmovdqa	%xmm0, %xmm5	# tmp885, tmp887
	vpunpcklwd	%xmm8, %xmm1, %xmm0	# tmp851, tmp845, tmp888
	vmovdqa	%xmm0, %xmm1	# tmp888, tmp889
	vpunpcklwd	%xmm7, %xmm4, %xmm0	# tmp863, tmp857, tmp890
	vmovdqa	%xmm0, %xmm4	# tmp890, tmp891
	vpunpcklwd	%xmm6, %xmm2, %xmm0	# tmp875, tmp869, tmp892
	vmovdqa	%xmm0, %xmm2	# tmp892, tmp893
	vpunpcklwd	%xmm5, %xmm3, %xmm0	# tmp887, tmp881, tmp894
	vmovdqa	%xmm0, %xmm3	# tmp894, tmp895
	vpunpckldq	%xmm4, %xmm1, %xmm0	# tmp891, tmp889, tmp896
	vmovdqa	%xmm0, %xmm1	# tmp896, tmp897
	vpunpckldq	%xmm3, %xmm2, %xmm0	# tmp895, tmp893, tmp898
	vpunpcklqdq	%xmm0, %xmm1, %xmm0	# tmp899, tmp897, tmp900
	vmovdqa	%xmm0, %xmm1	# tmp900, tmp838
	movzbl	-236(%rbp), %eax	# __q16, tmp902
	movl	%eax, -404(%rbp)	# tmp902, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp903
	movzbl	-237(%rbp), %eax	# __q17, tmp905
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp905, tmp904, tmp904
	vmovdqa	%xmm0, %xmm2	# tmp904, tmp906
	movzbl	-238(%rbp), %eax	# __q18, tmp908
	movl	%eax, -404(%rbp)	# tmp908, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp909
	movzbl	-239(%rbp), %eax	# __q19, tmp911
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp911, tmp910, tmp910
	vmovdqa	%xmm0, %xmm9	# tmp910, tmp912
	movzbl	-240(%rbp), %eax	# __q20, tmp914
	movl	%eax, -404(%rbp)	# tmp914, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp915
	movzbl	-241(%rbp), %eax	# __q21, tmp917
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp917, tmp916, tmp916
	vmovdqa	%xmm0, %xmm5	# tmp916, tmp918
	movzbl	-242(%rbp), %eax	# __q22, tmp920
	movl	%eax, -404(%rbp)	# tmp920, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp921
	movzbl	-243(%rbp), %eax	# __q23, tmp923
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp923, tmp922, tmp922
	vmovdqa	%xmm0, %xmm8	# tmp922, tmp924
	movzbl	-244(%rbp), %eax	# __q24, tmp926
	movl	%eax, -404(%rbp)	# tmp926, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp927
	movzbl	-245(%rbp), %eax	# __q25, tmp929
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp929, tmp928, tmp928
	vmovdqa	%xmm0, %xmm3	# tmp928, tmp930
	movzbl	-246(%rbp), %eax	# __q26, tmp932
	movl	%eax, -404(%rbp)	# tmp932, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp933
	movzbl	-247(%rbp), %eax	# __q27, tmp935
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp935, tmp934, tmp934
	vmovdqa	%xmm0, %xmm7	# tmp934, tmp936
	movzbl	-248(%rbp), %eax	# __q28, tmp938
	movl	%eax, -404(%rbp)	# tmp938, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp939
	movzbl	-249(%rbp), %eax	# __q29, tmp941
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp941, tmp940, tmp940
	vmovdqa	%xmm0, %xmm4	# tmp940, tmp942
	movzbl	-250(%rbp), %eax	# __q30, tmp944
	movl	%eax, -404(%rbp)	# tmp944, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp945
	movzbl	-251(%rbp), %eax	# __q31, tmp947
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp947, tmp946, tmp946
	vmovdqa	%xmm0, %xmm6	# tmp946, tmp948
	vpunpcklwd	%xmm9, %xmm2, %xmm0	# tmp912, tmp906, tmp949
	vmovdqa	%xmm0, %xmm2	# tmp949, tmp950
	vpunpcklwd	%xmm8, %xmm5, %xmm0	# tmp924, tmp918, tmp951
	vmovdqa	%xmm0, %xmm5	# tmp951, tmp952
	vpunpcklwd	%xmm7, %xmm3, %xmm0	# tmp936, tmp930, tmp953
	vmovdqa	%xmm0, %xmm3	# tmp953, tmp954
	vpunpcklwd	%xmm6, %xmm4, %xmm0	# tmp948, tmp942, tmp955
	vmovdqa	%xmm0, %xmm4	# tmp955, tmp956
	vpunpckldq	%xmm5, %xmm2, %xmm0	# tmp952, tmp950, tmp957
	vmovdqa	%xmm0, %xmm2	# tmp957, tmp958
	vpunpckldq	%xmm4, %xmm3, %xmm0	# tmp956, tmp954, tmp959
	vpunpcklqdq	%xmm0, %xmm2, %xmm0	# tmp960, tmp958, tmp961
	vinserti128	$0x1, %xmm0, %ymm1, %ymm0	# tmp839, tmp838, tmp837
.LBE201:
.LBE200:
.LBE199:
.LBE198:
# mem_bw_final.cpp:130: 				local_input[j + 3] = _mm256_set1_epi8(0);
	.loc 3 130 0 discriminator 2
	movq	-400(%rbp), %rax	# %sfp, _51
	vmovdqa	%ymm0, (%rax)	# D.62624, *_51
# mem_bw_final.cpp:131: 				local_input[j + 4] = _mm256_set1_epi8(0);
	.loc 3 131 0 discriminator 2
	movl	-116(%rbp), %eax	# j, tmp962
	cltq
	addq	$4, %rax	#, _55
	salq	$5, %rax	#, _55
	movq	%rax, %rdx	# _55, _56
	movq	-64(%rbp), %rax	# local_input, tmp963
	addq	%rdx, %rax	# _56, _57
	movq	%rax, -400(%rbp)	# _57, %sfp
	movb	$0, -285(%rbp)	#, __A
.LBB202:
.LBB203:
# /usr/lib/gcc/x86_64-linux-gnu/7/include/avxintrin.h:1334:   return _mm256_set_epi8 (__A, __A, __A, __A, __A, __A, __A, __A,
	.loc 4 1334 0 discriminator 2
	movsbl	-285(%rbp), %edi	# __A, _319
	movl	%edi, -404(%rbp)	# _319, %sfp
	movsbl	-285(%rbp), %ebx	# __A, _320
	movl	%ebx, -408(%rbp)	# _320, %sfp
	movsbl	-285(%rbp), %ecx	# __A, _321
	movl	%ecx, -412(%rbp)	# _321, %sfp
	movsbl	-285(%rbp), %esi	# __A, _322
	movl	%esi, -416(%rbp)	# _322, %sfp
	movsbl	-285(%rbp), %edx	# __A, _323
	movl	%edx, -420(%rbp)	# _323, %sfp
	movsbl	-285(%rbp), %r8d	# __A, _324
	movl	%r8d, -424(%rbp)	# _324, %sfp
	movsbl	-285(%rbp), %r9d	# __A, _325
	movl	%r9d, -428(%rbp)	# _325, %sfp
	movsbl	-285(%rbp), %r10d	# __A, _326
	movl	%r10d, -432(%rbp)	# _326, %sfp
	movsbl	-285(%rbp), %r11d	# __A, _327
	movl	%r11d, -436(%rbp)	# _327, %sfp
	movsbl	-285(%rbp), %r14d	# __A, _328
	movl	%r14d, -440(%rbp)	# _328, %sfp
	movsbl	-285(%rbp), %r15d	# __A, _329
	movl	%r15d, -444(%rbp)	# _329, %sfp
	movsbl	-285(%rbp), %r12d	# __A, _330
	movl	%r12d, -448(%rbp)	# _330, %sfp
	movsbl	-285(%rbp), %r13d	# __A, _331
	movl	%r13d, -452(%rbp)	# _331, %sfp
	movsbl	-285(%rbp), %edi	# __A, _332
	movl	%edi, -456(%rbp)	# _332, %sfp
	movsbl	-285(%rbp), %ebx	# __A, _333
	movl	%ebx, -460(%rbp)	# _333, %sfp
	movsbl	-285(%rbp), %ecx	# __A, _334
	movl	%ecx, -464(%rbp)	# _334, %sfp
	movsbl	-285(%rbp), %esi	# __A, _335
	movl	%esi, -468(%rbp)	# _335, %sfp
	movsbl	-285(%rbp), %edx	# __A, _336
	movl	%edx, -472(%rbp)	# _336, %sfp
	movsbl	-285(%rbp), %r15d	# __A, _337
	movsbl	-285(%rbp), %r14d	# __A, _338
	movsbl	-285(%rbp), %r13d	# __A, _339
	movsbl	-285(%rbp), %r12d	# __A, _340
	movsbl	-285(%rbp), %ebx	# __A, _341
	movsbl	-285(%rbp), %r11d	# __A, _342
	movsbl	-285(%rbp), %r10d	# __A, _343
	movsbl	-285(%rbp), %r9d	# __A, _344
	movsbl	-285(%rbp), %r8d	# __A, _345
	movsbl	-285(%rbp), %edi	# __A, _346
	movsbl	-285(%rbp), %esi	# __A, _347
	movsbl	-285(%rbp), %ecx	# __A, _348
	movsbl	-285(%rbp), %edx	# __A, _349
	movsbl	-285(%rbp), %eax	# __A, _350
	movb	%al, -284(%rbp)	# _350, __q31
	movb	%dl, -283(%rbp)	# _349, __q30
	movb	%cl, -282(%rbp)	# _348, __q29
	movb	%sil, -281(%rbp)	# _347, __q28
	movb	%dil, -280(%rbp)	# _346, __q27
	movb	%r8b, -279(%rbp)	# _345, __q26
	movb	%r9b, -278(%rbp)	# _344, __q25
	movb	%r10b, -277(%rbp)	# _343, __q24
	movb	%r11b, -276(%rbp)	# _342, __q23
	movb	%bl, -275(%rbp)	# _341, __q22
	movb	%r12b, -274(%rbp)	# _340, __q21
	movb	%r13b, -273(%rbp)	# _339, __q20
	movb	%r14b, -272(%rbp)	# _338, __q19
	movb	%r15b, -271(%rbp)	# _337, __q18
	movzbl	-472(%rbp), %edx	# %sfp, tmp1654
	movb	%dl, -270(%rbp)	# tmp1654, __q17
	movzbl	-468(%rbp), %esi	# %sfp, tmp1655
	movb	%sil, -269(%rbp)	# tmp1655, __q16
	movzbl	-464(%rbp), %ecx	# %sfp, tmp1656
	movb	%cl, -268(%rbp)	# tmp1656, __q15
	movzbl	-460(%rbp), %ebx	# %sfp, tmp1657
	movb	%bl, -267(%rbp)	# tmp1657, __q14
	movzbl	-456(%rbp), %edi	# %sfp, tmp1658
	movb	%dil, -266(%rbp)	# tmp1658, __q13
	movzbl	-452(%rbp), %r13d	# %sfp, tmp1659
	movb	%r13b, -265(%rbp)	# tmp1659, __q12
	movzbl	-448(%rbp), %r12d	# %sfp, tmp1660
	movb	%r12b, -264(%rbp)	# tmp1660, __q11
	movzbl	-444(%rbp), %r15d	# %sfp, tmp1661
	movb	%r15b, -263(%rbp)	# tmp1661, __q10
	movzbl	-440(%rbp), %r14d	# %sfp, tmp1662
	movb	%r14b, -262(%rbp)	# tmp1662, __q09
	movzbl	-436(%rbp), %r11d	# %sfp, tmp1663
	movb	%r11b, -261(%rbp)	# tmp1663, __q08
	movzbl	-432(%rbp), %r10d	# %sfp, tmp1664
	movb	%r10b, -260(%rbp)	# tmp1664, __q07
	movzbl	-428(%rbp), %r9d	# %sfp, tmp1665
	movb	%r9b, -259(%rbp)	# tmp1665, __q06
	movzbl	-424(%rbp), %r8d	# %sfp, tmp1666
	movb	%r8b, -258(%rbp)	# tmp1666, __q05
	movzbl	-420(%rbp), %edx	# %sfp, tmp1667
	movb	%dl, -257(%rbp)	# tmp1667, __q04
	movzbl	-416(%rbp), %esi	# %sfp, tmp1668
	movb	%sil, -256(%rbp)	# tmp1668, __q03
	movzbl	-412(%rbp), %ecx	# %sfp, tmp1669
	movb	%cl, -255(%rbp)	# tmp1669, __q02
	movzbl	-408(%rbp), %ebx	# %sfp, tmp1670
	movb	%bl, -254(%rbp)	# tmp1670, __q01
	movzbl	-404(%rbp), %edi	# %sfp, tmp1671
	movb	%dil, -253(%rbp)	# tmp1671, __q00
.LBB204:
.LBB205:
# /usr/lib/gcc/x86_64-linux-gnu/7/include/avxintrin.h:1286:   return __extension__ (__m256i)(__v32qi){
	.loc 4 1286 0 discriminator 2
	movzbl	-253(%rbp), %eax	# __q00, tmp968
	movl	%eax, -404(%rbp)	# tmp968, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp969
	movzbl	-254(%rbp), %eax	# __q01, tmp971
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp971, tmp970, tmp970
	vmovdqa	%xmm0, %xmm1	# tmp970, tmp972
	movzbl	-255(%rbp), %eax	# __q02, tmp974
	movl	%eax, -404(%rbp)	# tmp974, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp975
	movzbl	-256(%rbp), %eax	# __q03, tmp977
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp977, tmp976, tmp976
	vmovdqa	%xmm0, %xmm8	# tmp976, tmp978
	movzbl	-257(%rbp), %eax	# __q04, tmp980
	movl	%eax, -404(%rbp)	# tmp980, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp981
	movzbl	-258(%rbp), %eax	# __q05, tmp983
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp983, tmp982, tmp982
	vmovdqa	%xmm0, %xmm4	# tmp982, tmp984
	movzbl	-259(%rbp), %eax	# __q06, tmp986
	movl	%eax, -404(%rbp)	# tmp986, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp987
	movzbl	-260(%rbp), %eax	# __q07, tmp989
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp989, tmp988, tmp988
	vmovdqa	%xmm0, %xmm7	# tmp988, tmp990
	movzbl	-261(%rbp), %eax	# __q08, tmp992
	movl	%eax, -404(%rbp)	# tmp992, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp993
	movzbl	-262(%rbp), %eax	# __q09, tmp995
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp995, tmp994, tmp994
	vmovdqa	%xmm0, %xmm2	# tmp994, tmp996
	movzbl	-263(%rbp), %eax	# __q10, tmp998
	movl	%eax, -404(%rbp)	# tmp998, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp999
	movzbl	-264(%rbp), %eax	# __q11, tmp1001
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1001, tmp1000, tmp1000
	vmovdqa	%xmm0, %xmm6	# tmp1000, tmp1002
	movzbl	-265(%rbp), %eax	# __q12, tmp1004
	movl	%eax, -404(%rbp)	# tmp1004, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp1005
	movzbl	-266(%rbp), %eax	# __q13, tmp1007
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1007, tmp1006, tmp1006
	vmovdqa	%xmm0, %xmm3	# tmp1006, tmp1008
	movzbl	-267(%rbp), %eax	# __q14, tmp1010
	movl	%eax, -404(%rbp)	# tmp1010, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp1011
	movzbl	-268(%rbp), %eax	# __q15, tmp1013
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1013, tmp1012, tmp1012
	vmovdqa	%xmm0, %xmm5	# tmp1012, tmp1014
	vpunpcklwd	%xmm8, %xmm1, %xmm0	# tmp978, tmp972, tmp1015
	vmovdqa	%xmm0, %xmm1	# tmp1015, tmp1016
	vpunpcklwd	%xmm7, %xmm4, %xmm0	# tmp990, tmp984, tmp1017
	vmovdqa	%xmm0, %xmm4	# tmp1017, tmp1018
	vpunpcklwd	%xmm6, %xmm2, %xmm0	# tmp1002, tmp996, tmp1019
	vmovdqa	%xmm0, %xmm2	# tmp1019, tmp1020
	vpunpcklwd	%xmm5, %xmm3, %xmm0	# tmp1014, tmp1008, tmp1021
	vmovdqa	%xmm0, %xmm3	# tmp1021, tmp1022
	vpunpckldq	%xmm4, %xmm1, %xmm0	# tmp1018, tmp1016, tmp1023
	vmovdqa	%xmm0, %xmm1	# tmp1023, tmp1024
	vpunpckldq	%xmm3, %xmm2, %xmm0	# tmp1022, tmp1020, tmp1025
	vpunpcklqdq	%xmm0, %xmm1, %xmm0	# tmp1026, tmp1024, tmp1027
	vmovdqa	%xmm0, %xmm1	# tmp1027, tmp965
	movzbl	-269(%rbp), %eax	# __q16, tmp1029
	movl	%eax, -404(%rbp)	# tmp1029, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp1030
	movzbl	-270(%rbp), %eax	# __q17, tmp1032
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1032, tmp1031, tmp1031
	vmovdqa	%xmm0, %xmm2	# tmp1031, tmp1033
	movzbl	-271(%rbp), %eax	# __q18, tmp1035
	movl	%eax, -404(%rbp)	# tmp1035, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp1036
	movzbl	-272(%rbp), %eax	# __q19, tmp1038
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1038, tmp1037, tmp1037
	vmovdqa	%xmm0, %xmm9	# tmp1037, tmp1039
	movzbl	-273(%rbp), %eax	# __q20, tmp1041
	movl	%eax, -404(%rbp)	# tmp1041, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp1042
	movzbl	-274(%rbp), %eax	# __q21, tmp1044
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1044, tmp1043, tmp1043
	vmovdqa	%xmm0, %xmm5	# tmp1043, tmp1045
	movzbl	-275(%rbp), %eax	# __q22, tmp1047
	movl	%eax, -404(%rbp)	# tmp1047, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp1048
	movzbl	-276(%rbp), %eax	# __q23, tmp1050
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1050, tmp1049, tmp1049
	vmovdqa	%xmm0, %xmm8	# tmp1049, tmp1051
	movzbl	-277(%rbp), %eax	# __q24, tmp1053
	movl	%eax, -404(%rbp)	# tmp1053, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp1054
	movzbl	-278(%rbp), %eax	# __q25, tmp1056
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1056, tmp1055, tmp1055
	vmovdqa	%xmm0, %xmm3	# tmp1055, tmp1057
	movzbl	-279(%rbp), %eax	# __q26, tmp1059
	movl	%eax, -404(%rbp)	# tmp1059, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp1060
	movzbl	-280(%rbp), %eax	# __q27, tmp1062
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1062, tmp1061, tmp1061
	vmovdqa	%xmm0, %xmm7	# tmp1061, tmp1063
	movzbl	-281(%rbp), %eax	# __q28, tmp1065
	movl	%eax, -404(%rbp)	# tmp1065, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp1066
	movzbl	-282(%rbp), %eax	# __q29, tmp1068
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1068, tmp1067, tmp1067
	vmovdqa	%xmm0, %xmm4	# tmp1067, tmp1069
	movzbl	-283(%rbp), %eax	# __q30, tmp1071
	movl	%eax, -404(%rbp)	# tmp1071, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp1072
	movzbl	-284(%rbp), %eax	# __q31, tmp1074
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1074, tmp1073, tmp1073
	vmovdqa	%xmm0, %xmm6	# tmp1073, tmp1075
	vpunpcklwd	%xmm9, %xmm2, %xmm0	# tmp1039, tmp1033, tmp1076
	vmovdqa	%xmm0, %xmm2	# tmp1076, tmp1077
	vpunpcklwd	%xmm8, %xmm5, %xmm0	# tmp1051, tmp1045, tmp1078
	vmovdqa	%xmm0, %xmm5	# tmp1078, tmp1079
	vpunpcklwd	%xmm7, %xmm3, %xmm0	# tmp1063, tmp1057, tmp1080
	vmovdqa	%xmm0, %xmm3	# tmp1080, tmp1081
	vpunpcklwd	%xmm6, %xmm4, %xmm0	# tmp1075, tmp1069, tmp1082
	vmovdqa	%xmm0, %xmm4	# tmp1082, tmp1083
	vpunpckldq	%xmm5, %xmm2, %xmm0	# tmp1079, tmp1077, tmp1084
	vmovdqa	%xmm0, %xmm2	# tmp1084, tmp1085
	vpunpckldq	%xmm4, %xmm3, %xmm0	# tmp1083, tmp1081, tmp1086
	vpunpcklqdq	%xmm0, %xmm2, %xmm0	# tmp1087, tmp1085, tmp1088
	vinserti128	$0x1, %xmm0, %ymm1, %ymm0	# tmp966, tmp965, tmp964
.LBE205:
.LBE204:
.LBE203:
.LBE202:
# mem_bw_final.cpp:131: 				local_input[j + 4] = _mm256_set1_epi8(0);
	.loc 3 131 0 discriminator 2
	movq	-400(%rbp), %rax	# %sfp, _57
	vmovdqa	%ymm0, (%rax)	# D.62585, *_57
# mem_bw_final.cpp:132: 				local_input[j + 5] = _mm256_set1_epi8(0);
	.loc 3 132 0 discriminator 2
	movl	-116(%rbp), %eax	# j, tmp1089
	cltq
	addq	$5, %rax	#, _61
	salq	$5, %rax	#, _61
	movq	%rax, %rdx	# _61, _62
	movq	-64(%rbp), %rax	# local_input, tmp1090
	addq	%rdx, %rax	# _62, _63
	movq	%rax, -400(%rbp)	# _63, %sfp
	movb	$0, -318(%rbp)	#, __A
.LBB206:
.LBB207:
# /usr/lib/gcc/x86_64-linux-gnu/7/include/avxintrin.h:1334:   return _mm256_set_epi8 (__A, __A, __A, __A, __A, __A, __A, __A,
	.loc 4 1334 0 discriminator 2
	movsbl	-318(%rbp), %edi	# __A, _250
	movl	%edi, -404(%rbp)	# _250, %sfp
	movsbl	-318(%rbp), %ebx	# __A, _251
	movl	%ebx, -408(%rbp)	# _251, %sfp
	movsbl	-318(%rbp), %ecx	# __A, _252
	movl	%ecx, -412(%rbp)	# _252, %sfp
	movsbl	-318(%rbp), %esi	# __A, _253
	movl	%esi, -416(%rbp)	# _253, %sfp
	movsbl	-318(%rbp), %edx	# __A, _254
	movl	%edx, -420(%rbp)	# _254, %sfp
	movsbl	-318(%rbp), %r8d	# __A, _255
	movl	%r8d, -424(%rbp)	# _255, %sfp
	movsbl	-318(%rbp), %r9d	# __A, _256
	movl	%r9d, -428(%rbp)	# _256, %sfp
	movsbl	-318(%rbp), %r10d	# __A, _257
	movl	%r10d, -432(%rbp)	# _257, %sfp
	movsbl	-318(%rbp), %r11d	# __A, _258
	movl	%r11d, -436(%rbp)	# _258, %sfp
	movsbl	-318(%rbp), %r14d	# __A, _259
	movl	%r14d, -440(%rbp)	# _259, %sfp
	movsbl	-318(%rbp), %r15d	# __A, _260
	movl	%r15d, -444(%rbp)	# _260, %sfp
	movsbl	-318(%rbp), %r12d	# __A, _261
	movl	%r12d, -448(%rbp)	# _261, %sfp
	movsbl	-318(%rbp), %r13d	# __A, _262
	movl	%r13d, -452(%rbp)	# _262, %sfp
	movsbl	-318(%rbp), %edi	# __A, _263
	movl	%edi, -456(%rbp)	# _263, %sfp
	movsbl	-318(%rbp), %ebx	# __A, _264
	movl	%ebx, -460(%rbp)	# _264, %sfp
	movsbl	-318(%rbp), %ecx	# __A, _265
	movl	%ecx, -464(%rbp)	# _265, %sfp
	movsbl	-318(%rbp), %esi	# __A, _266
	movl	%esi, -468(%rbp)	# _266, %sfp
	movsbl	-318(%rbp), %edx	# __A, _267
	movl	%edx, -472(%rbp)	# _267, %sfp
	movsbl	-318(%rbp), %r15d	# __A, _268
	movsbl	-318(%rbp), %r14d	# __A, _269
	movsbl	-318(%rbp), %r13d	# __A, _270
	movsbl	-318(%rbp), %r12d	# __A, _271
	movsbl	-318(%rbp), %ebx	# __A, _272
	movsbl	-318(%rbp), %r11d	# __A, _273
	movsbl	-318(%rbp), %r10d	# __A, _274
	movsbl	-318(%rbp), %r9d	# __A, _275
	movsbl	-318(%rbp), %r8d	# __A, _276
	movsbl	-318(%rbp), %edi	# __A, _277
	movsbl	-318(%rbp), %esi	# __A, _278
	movsbl	-318(%rbp), %ecx	# __A, _279
	movsbl	-318(%rbp), %edx	# __A, _280
	movsbl	-318(%rbp), %eax	# __A, _281
	movb	%al, -317(%rbp)	# _281, __q31
	movb	%dl, -316(%rbp)	# _280, __q30
	movb	%cl, -315(%rbp)	# _279, __q29
	movb	%sil, -314(%rbp)	# _278, __q28
	movb	%dil, -313(%rbp)	# _277, __q27
	movb	%r8b, -312(%rbp)	# _276, __q26
	movb	%r9b, -311(%rbp)	# _275, __q25
	movb	%r10b, -310(%rbp)	# _274, __q24
	movb	%r11b, -309(%rbp)	# _273, __q23
	movb	%bl, -308(%rbp)	# _272, __q22
	movb	%r12b, -307(%rbp)	# _271, __q21
	movb	%r13b, -306(%rbp)	# _270, __q20
	movb	%r14b, -305(%rbp)	# _269, __q19
	movb	%r15b, -304(%rbp)	# _268, __q18
	movzbl	-472(%rbp), %edx	# %sfp, tmp1693
	movb	%dl, -303(%rbp)	# tmp1693, __q17
	movzbl	-468(%rbp), %esi	# %sfp, tmp1694
	movb	%sil, -302(%rbp)	# tmp1694, __q16
	movzbl	-464(%rbp), %ecx	# %sfp, tmp1695
	movb	%cl, -301(%rbp)	# tmp1695, __q15
	movzbl	-460(%rbp), %ebx	# %sfp, tmp1696
	movb	%bl, -300(%rbp)	# tmp1696, __q14
	movzbl	-456(%rbp), %edi	# %sfp, tmp1697
	movb	%dil, -299(%rbp)	# tmp1697, __q13
	movzbl	-452(%rbp), %r13d	# %sfp, tmp1698
	movb	%r13b, -298(%rbp)	# tmp1698, __q12
	movzbl	-448(%rbp), %r12d	# %sfp, tmp1699
	movb	%r12b, -297(%rbp)	# tmp1699, __q11
	movzbl	-444(%rbp), %r15d	# %sfp, tmp1700
	movb	%r15b, -296(%rbp)	# tmp1700, __q10
	movzbl	-440(%rbp), %r14d	# %sfp, tmp1701
	movb	%r14b, -295(%rbp)	# tmp1701, __q09
	movzbl	-436(%rbp), %r11d	# %sfp, tmp1702
	movb	%r11b, -294(%rbp)	# tmp1702, __q08
	movzbl	-432(%rbp), %r10d	# %sfp, tmp1703
	movb	%r10b, -293(%rbp)	# tmp1703, __q07
	movzbl	-428(%rbp), %r9d	# %sfp, tmp1704
	movb	%r9b, -292(%rbp)	# tmp1704, __q06
	movzbl	-424(%rbp), %r8d	# %sfp, tmp1705
	movb	%r8b, -291(%rbp)	# tmp1705, __q05
	movzbl	-420(%rbp), %edx	# %sfp, tmp1706
	movb	%dl, -290(%rbp)	# tmp1706, __q04
	movzbl	-416(%rbp), %esi	# %sfp, tmp1707
	movb	%sil, -289(%rbp)	# tmp1707, __q03
	movzbl	-412(%rbp), %ecx	# %sfp, tmp1708
	movb	%cl, -288(%rbp)	# tmp1708, __q02
	movzbl	-408(%rbp), %ebx	# %sfp, tmp1709
	movb	%bl, -287(%rbp)	# tmp1709, __q01
	movzbl	-404(%rbp), %edi	# %sfp, tmp1710
	movb	%dil, -286(%rbp)	# tmp1710, __q00
.LBB208:
.LBB209:
# /usr/lib/gcc/x86_64-linux-gnu/7/include/avxintrin.h:1286:   return __extension__ (__m256i)(__v32qi){
	.loc 4 1286 0 discriminator 2
	movzbl	-286(%rbp), %eax	# __q00, tmp1095
	movl	%eax, -404(%rbp)	# tmp1095, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp1096
	movzbl	-287(%rbp), %eax	# __q01, tmp1098
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1098, tmp1097, tmp1097
	vmovdqa	%xmm0, %xmm1	# tmp1097, tmp1099
	movzbl	-288(%rbp), %eax	# __q02, tmp1101
	movl	%eax, -404(%rbp)	# tmp1101, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp1102
	movzbl	-289(%rbp), %eax	# __q03, tmp1104
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1104, tmp1103, tmp1103
	vmovdqa	%xmm0, %xmm8	# tmp1103, tmp1105
	movzbl	-290(%rbp), %eax	# __q04, tmp1107
	movl	%eax, -404(%rbp)	# tmp1107, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp1108
	movzbl	-291(%rbp), %eax	# __q05, tmp1110
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1110, tmp1109, tmp1109
	vmovdqa	%xmm0, %xmm4	# tmp1109, tmp1111
	movzbl	-292(%rbp), %eax	# __q06, tmp1113
	movl	%eax, -404(%rbp)	# tmp1113, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp1114
	movzbl	-293(%rbp), %eax	# __q07, tmp1116
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1116, tmp1115, tmp1115
	vmovdqa	%xmm0, %xmm7	# tmp1115, tmp1117
	movzbl	-294(%rbp), %eax	# __q08, tmp1119
	movl	%eax, -404(%rbp)	# tmp1119, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp1120
	movzbl	-295(%rbp), %eax	# __q09, tmp1122
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1122, tmp1121, tmp1121
	vmovdqa	%xmm0, %xmm2	# tmp1121, tmp1123
	movzbl	-296(%rbp), %eax	# __q10, tmp1125
	movl	%eax, -404(%rbp)	# tmp1125, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp1126
	movzbl	-297(%rbp), %eax	# __q11, tmp1128
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1128, tmp1127, tmp1127
	vmovdqa	%xmm0, %xmm6	# tmp1127, tmp1129
	movzbl	-298(%rbp), %eax	# __q12, tmp1131
	movl	%eax, -404(%rbp)	# tmp1131, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp1132
	movzbl	-299(%rbp), %eax	# __q13, tmp1134
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1134, tmp1133, tmp1133
	vmovdqa	%xmm0, %xmm3	# tmp1133, tmp1135
	movzbl	-300(%rbp), %eax	# __q14, tmp1137
	movl	%eax, -404(%rbp)	# tmp1137, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp1138
	movzbl	-301(%rbp), %eax	# __q15, tmp1140
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1140, tmp1139, tmp1139
	vmovdqa	%xmm0, %xmm5	# tmp1139, tmp1141
	vpunpcklwd	%xmm8, %xmm1, %xmm0	# tmp1105, tmp1099, tmp1142
	vmovdqa	%xmm0, %xmm1	# tmp1142, tmp1143
	vpunpcklwd	%xmm7, %xmm4, %xmm0	# tmp1117, tmp1111, tmp1144
	vmovdqa	%xmm0, %xmm4	# tmp1144, tmp1145
	vpunpcklwd	%xmm6, %xmm2, %xmm0	# tmp1129, tmp1123, tmp1146
	vmovdqa	%xmm0, %xmm2	# tmp1146, tmp1147
	vpunpcklwd	%xmm5, %xmm3, %xmm0	# tmp1141, tmp1135, tmp1148
	vmovdqa	%xmm0, %xmm3	# tmp1148, tmp1149
	vpunpckldq	%xmm4, %xmm1, %xmm0	# tmp1145, tmp1143, tmp1150
	vmovdqa	%xmm0, %xmm1	# tmp1150, tmp1151
	vpunpckldq	%xmm3, %xmm2, %xmm0	# tmp1149, tmp1147, tmp1152
	vpunpcklqdq	%xmm0, %xmm1, %xmm0	# tmp1153, tmp1151, tmp1154
	vmovdqa	%xmm0, %xmm1	# tmp1154, tmp1092
	movzbl	-302(%rbp), %eax	# __q16, tmp1156
	movl	%eax, -404(%rbp)	# tmp1156, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp1157
	movzbl	-303(%rbp), %eax	# __q17, tmp1159
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1159, tmp1158, tmp1158
	vmovdqa	%xmm0, %xmm2	# tmp1158, tmp1160
	movzbl	-304(%rbp), %eax	# __q18, tmp1162
	movl	%eax, -404(%rbp)	# tmp1162, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp1163
	movzbl	-305(%rbp), %eax	# __q19, tmp1165
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1165, tmp1164, tmp1164
	vmovdqa	%xmm0, %xmm9	# tmp1164, tmp1166
	movzbl	-306(%rbp), %eax	# __q20, tmp1168
	movl	%eax, -404(%rbp)	# tmp1168, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp1169
	movzbl	-307(%rbp), %eax	# __q21, tmp1171
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1171, tmp1170, tmp1170
	vmovdqa	%xmm0, %xmm5	# tmp1170, tmp1172
	movzbl	-308(%rbp), %eax	# __q22, tmp1174
	movl	%eax, -404(%rbp)	# tmp1174, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp1175
	movzbl	-309(%rbp), %eax	# __q23, tmp1177
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1177, tmp1176, tmp1176
	vmovdqa	%xmm0, %xmm8	# tmp1176, tmp1178
	movzbl	-310(%rbp), %eax	# __q24, tmp1180
	movl	%eax, -404(%rbp)	# tmp1180, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp1181
	movzbl	-311(%rbp), %eax	# __q25, tmp1183
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1183, tmp1182, tmp1182
	vmovdqa	%xmm0, %xmm3	# tmp1182, tmp1184
	movzbl	-312(%rbp), %eax	# __q26, tmp1186
	movl	%eax, -404(%rbp)	# tmp1186, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp1187
	movzbl	-313(%rbp), %eax	# __q27, tmp1189
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1189, tmp1188, tmp1188
	vmovdqa	%xmm0, %xmm7	# tmp1188, tmp1190
	movzbl	-314(%rbp), %eax	# __q28, tmp1192
	movl	%eax, -404(%rbp)	# tmp1192, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp1193
	movzbl	-315(%rbp), %eax	# __q29, tmp1195
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1195, tmp1194, tmp1194
	vmovdqa	%xmm0, %xmm4	# tmp1194, tmp1196
	movzbl	-316(%rbp), %eax	# __q30, tmp1198
	movl	%eax, -404(%rbp)	# tmp1198, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp1199
	movzbl	-317(%rbp), %eax	# __q31, tmp1201
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1201, tmp1200, tmp1200
	vmovdqa	%xmm0, %xmm6	# tmp1200, tmp1202
	vpunpcklwd	%xmm9, %xmm2, %xmm0	# tmp1166, tmp1160, tmp1203
	vmovdqa	%xmm0, %xmm2	# tmp1203, tmp1204
	vpunpcklwd	%xmm8, %xmm5, %xmm0	# tmp1178, tmp1172, tmp1205
	vmovdqa	%xmm0, %xmm5	# tmp1205, tmp1206
	vpunpcklwd	%xmm7, %xmm3, %xmm0	# tmp1190, tmp1184, tmp1207
	vmovdqa	%xmm0, %xmm3	# tmp1207, tmp1208
	vpunpcklwd	%xmm6, %xmm4, %xmm0	# tmp1202, tmp1196, tmp1209
	vmovdqa	%xmm0, %xmm4	# tmp1209, tmp1210
	vpunpckldq	%xmm5, %xmm2, %xmm0	# tmp1206, tmp1204, tmp1211
	vmovdqa	%xmm0, %xmm2	# tmp1211, tmp1212
	vpunpckldq	%xmm4, %xmm3, %xmm0	# tmp1210, tmp1208, tmp1213
	vpunpcklqdq	%xmm0, %xmm2, %xmm0	# tmp1214, tmp1212, tmp1215
	vinserti128	$0x1, %xmm0, %ymm1, %ymm0	# tmp1093, tmp1092, tmp1091
.LBE209:
.LBE208:
.LBE207:
.LBE206:
# mem_bw_final.cpp:132: 				local_input[j + 5] = _mm256_set1_epi8(0);
	.loc 3 132 0 discriminator 2
	movq	-400(%rbp), %rax	# %sfp, _63
	vmovdqa	%ymm0, (%rax)	# D.62546, *_63
# mem_bw_final.cpp:133: 				local_input[j + 6] = _mm256_set1_epi8(0);
	.loc 3 133 0 discriminator 2
	movl	-116(%rbp), %eax	# j, tmp1216
	cltq
	addq	$6, %rax	#, _67
	salq	$5, %rax	#, _67
	movq	%rax, %rdx	# _67, _68
	movq	-64(%rbp), %rax	# local_input, tmp1217
	addq	%rdx, %rax	# _68, _69
	movq	%rax, -400(%rbp)	# _69, %sfp
	movb	$0, -351(%rbp)	#, __A
.LBB210:
.LBB211:
# /usr/lib/gcc/x86_64-linux-gnu/7/include/avxintrin.h:1334:   return _mm256_set_epi8 (__A, __A, __A, __A, __A, __A, __A, __A,
	.loc 4 1334 0 discriminator 2
	movsbl	-351(%rbp), %edi	# __A, _181
	movl	%edi, -404(%rbp)	# _181, %sfp
	movsbl	-351(%rbp), %ebx	# __A, _182
	movl	%ebx, -408(%rbp)	# _182, %sfp
	movsbl	-351(%rbp), %ecx	# __A, _183
	movl	%ecx, -412(%rbp)	# _183, %sfp
	movsbl	-351(%rbp), %esi	# __A, _184
	movl	%esi, -416(%rbp)	# _184, %sfp
	movsbl	-351(%rbp), %edx	# __A, _185
	movl	%edx, -420(%rbp)	# _185, %sfp
	movsbl	-351(%rbp), %r8d	# __A, _186
	movl	%r8d, -424(%rbp)	# _186, %sfp
	movsbl	-351(%rbp), %r9d	# __A, _187
	movl	%r9d, -428(%rbp)	# _187, %sfp
	movsbl	-351(%rbp), %r10d	# __A, _188
	movl	%r10d, -432(%rbp)	# _188, %sfp
	movsbl	-351(%rbp), %r11d	# __A, _189
	movl	%r11d, -436(%rbp)	# _189, %sfp
	movsbl	-351(%rbp), %r14d	# __A, _190
	movl	%r14d, -440(%rbp)	# _190, %sfp
	movsbl	-351(%rbp), %r15d	# __A, _191
	movl	%r15d, -444(%rbp)	# _191, %sfp
	movsbl	-351(%rbp), %r12d	# __A, _192
	movl	%r12d, -448(%rbp)	# _192, %sfp
	movsbl	-351(%rbp), %r13d	# __A, _193
	movl	%r13d, -452(%rbp)	# _193, %sfp
	movsbl	-351(%rbp), %edi	# __A, _194
	movl	%edi, -456(%rbp)	# _194, %sfp
	movsbl	-351(%rbp), %ebx	# __A, _195
	movl	%ebx, -460(%rbp)	# _195, %sfp
	movsbl	-351(%rbp), %ecx	# __A, _196
	movl	%ecx, -464(%rbp)	# _196, %sfp
	movsbl	-351(%rbp), %esi	# __A, _197
	movl	%esi, -468(%rbp)	# _197, %sfp
	movsbl	-351(%rbp), %edx	# __A, _198
	movl	%edx, -472(%rbp)	# _198, %sfp
	movsbl	-351(%rbp), %r15d	# __A, _199
	movsbl	-351(%rbp), %r14d	# __A, _200
	movsbl	-351(%rbp), %r13d	# __A, _201
	movsbl	-351(%rbp), %r12d	# __A, _202
	movsbl	-351(%rbp), %ebx	# __A, _203
	movsbl	-351(%rbp), %r11d	# __A, _204
	movsbl	-351(%rbp), %r10d	# __A, _205
	movsbl	-351(%rbp), %r9d	# __A, _206
	movsbl	-351(%rbp), %r8d	# __A, _207
	movsbl	-351(%rbp), %edi	# __A, _208
	movsbl	-351(%rbp), %esi	# __A, _209
	movsbl	-351(%rbp), %ecx	# __A, _210
	movsbl	-351(%rbp), %edx	# __A, _211
	movsbl	-351(%rbp), %eax	# __A, _212
	movb	%al, -350(%rbp)	# _212, __q31
	movb	%dl, -349(%rbp)	# _211, __q30
	movb	%cl, -348(%rbp)	# _210, __q29
	movb	%sil, -347(%rbp)	# _209, __q28
	movb	%dil, -346(%rbp)	# _208, __q27
	movb	%r8b, -345(%rbp)	# _207, __q26
	movb	%r9b, -344(%rbp)	# _206, __q25
	movb	%r10b, -343(%rbp)	# _205, __q24
	movb	%r11b, -342(%rbp)	# _204, __q23
	movb	%bl, -341(%rbp)	# _203, __q22
	movb	%r12b, -340(%rbp)	# _202, __q21
	movb	%r13b, -339(%rbp)	# _201, __q20
	movb	%r14b, -338(%rbp)	# _200, __q19
	movb	%r15b, -337(%rbp)	# _199, __q18
	movzbl	-472(%rbp), %edx	# %sfp, tmp1732
	movb	%dl, -336(%rbp)	# tmp1732, __q17
	movzbl	-468(%rbp), %esi	# %sfp, tmp1733
	movb	%sil, -335(%rbp)	# tmp1733, __q16
	movzbl	-464(%rbp), %ecx	# %sfp, tmp1734
	movb	%cl, -334(%rbp)	# tmp1734, __q15
	movzbl	-460(%rbp), %ebx	# %sfp, tmp1735
	movb	%bl, -333(%rbp)	# tmp1735, __q14
	movzbl	-456(%rbp), %edi	# %sfp, tmp1736
	movb	%dil, -332(%rbp)	# tmp1736, __q13
	movzbl	-452(%rbp), %r13d	# %sfp, tmp1737
	movb	%r13b, -331(%rbp)	# tmp1737, __q12
	movzbl	-448(%rbp), %r12d	# %sfp, tmp1738
	movb	%r12b, -330(%rbp)	# tmp1738, __q11
	movzbl	-444(%rbp), %r15d	# %sfp, tmp1739
	movb	%r15b, -329(%rbp)	# tmp1739, __q10
	movzbl	-440(%rbp), %r14d	# %sfp, tmp1740
	movb	%r14b, -328(%rbp)	# tmp1740, __q09
	movzbl	-436(%rbp), %r11d	# %sfp, tmp1741
	movb	%r11b, -327(%rbp)	# tmp1741, __q08
	movzbl	-432(%rbp), %r10d	# %sfp, tmp1742
	movb	%r10b, -326(%rbp)	# tmp1742, __q07
	movzbl	-428(%rbp), %r9d	# %sfp, tmp1743
	movb	%r9b, -325(%rbp)	# tmp1743, __q06
	movzbl	-424(%rbp), %r8d	# %sfp, tmp1744
	movb	%r8b, -324(%rbp)	# tmp1744, __q05
	movzbl	-420(%rbp), %edx	# %sfp, tmp1745
	movb	%dl, -323(%rbp)	# tmp1745, __q04
	movzbl	-416(%rbp), %esi	# %sfp, tmp1746
	movb	%sil, -322(%rbp)	# tmp1746, __q03
	movzbl	-412(%rbp), %ecx	# %sfp, tmp1747
	movb	%cl, -321(%rbp)	# tmp1747, __q02
	movzbl	-408(%rbp), %ebx	# %sfp, tmp1748
	movb	%bl, -320(%rbp)	# tmp1748, __q01
	movzbl	-404(%rbp), %edi	# %sfp, tmp1749
	movb	%dil, -319(%rbp)	# tmp1749, __q00
.LBB212:
.LBB213:
# /usr/lib/gcc/x86_64-linux-gnu/7/include/avxintrin.h:1286:   return __extension__ (__m256i)(__v32qi){
	.loc 4 1286 0 discriminator 2
	movzbl	-319(%rbp), %eax	# __q00, tmp1222
	movl	%eax, -404(%rbp)	# tmp1222, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp1223
	movzbl	-320(%rbp), %eax	# __q01, tmp1225
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1225, tmp1224, tmp1224
	vmovdqa	%xmm0, %xmm1	# tmp1224, tmp1226
	movzbl	-321(%rbp), %eax	# __q02, tmp1228
	movl	%eax, -404(%rbp)	# tmp1228, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp1229
	movzbl	-322(%rbp), %eax	# __q03, tmp1231
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1231, tmp1230, tmp1230
	vmovdqa	%xmm0, %xmm8	# tmp1230, tmp1232
	movzbl	-323(%rbp), %eax	# __q04, tmp1234
	movl	%eax, -404(%rbp)	# tmp1234, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp1235
	movzbl	-324(%rbp), %eax	# __q05, tmp1237
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1237, tmp1236, tmp1236
	vmovdqa	%xmm0, %xmm4	# tmp1236, tmp1238
	movzbl	-325(%rbp), %eax	# __q06, tmp1240
	movl	%eax, -404(%rbp)	# tmp1240, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp1241
	movzbl	-326(%rbp), %eax	# __q07, tmp1243
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1243, tmp1242, tmp1242
	vmovdqa	%xmm0, %xmm7	# tmp1242, tmp1244
	movzbl	-327(%rbp), %eax	# __q08, tmp1246
	movl	%eax, -404(%rbp)	# tmp1246, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp1247
	movzbl	-328(%rbp), %eax	# __q09, tmp1249
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1249, tmp1248, tmp1248
	vmovdqa	%xmm0, %xmm2	# tmp1248, tmp1250
	movzbl	-329(%rbp), %eax	# __q10, tmp1252
	movl	%eax, -404(%rbp)	# tmp1252, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp1253
	movzbl	-330(%rbp), %eax	# __q11, tmp1255
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1255, tmp1254, tmp1254
	vmovdqa	%xmm0, %xmm6	# tmp1254, tmp1256
	movzbl	-331(%rbp), %eax	# __q12, tmp1258
	movl	%eax, -404(%rbp)	# tmp1258, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp1259
	movzbl	-332(%rbp), %eax	# __q13, tmp1261
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1261, tmp1260, tmp1260
	vmovdqa	%xmm0, %xmm3	# tmp1260, tmp1262
	movzbl	-333(%rbp), %eax	# __q14, tmp1264
	movl	%eax, -404(%rbp)	# tmp1264, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp1265
	movzbl	-334(%rbp), %eax	# __q15, tmp1267
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1267, tmp1266, tmp1266
	vmovdqa	%xmm0, %xmm5	# tmp1266, tmp1268
	vpunpcklwd	%xmm8, %xmm1, %xmm0	# tmp1232, tmp1226, tmp1269
	vmovdqa	%xmm0, %xmm1	# tmp1269, tmp1270
	vpunpcklwd	%xmm7, %xmm4, %xmm0	# tmp1244, tmp1238, tmp1271
	vmovdqa	%xmm0, %xmm4	# tmp1271, tmp1272
	vpunpcklwd	%xmm6, %xmm2, %xmm0	# tmp1256, tmp1250, tmp1273
	vmovdqa	%xmm0, %xmm2	# tmp1273, tmp1274
	vpunpcklwd	%xmm5, %xmm3, %xmm0	# tmp1268, tmp1262, tmp1275
	vmovdqa	%xmm0, %xmm3	# tmp1275, tmp1276
	vpunpckldq	%xmm4, %xmm1, %xmm0	# tmp1272, tmp1270, tmp1277
	vmovdqa	%xmm0, %xmm1	# tmp1277, tmp1278
	vpunpckldq	%xmm3, %xmm2, %xmm0	# tmp1276, tmp1274, tmp1279
	vpunpcklqdq	%xmm0, %xmm1, %xmm0	# tmp1280, tmp1278, tmp1281
	vmovdqa	%xmm0, %xmm1	# tmp1281, tmp1219
	movzbl	-335(%rbp), %eax	# __q16, tmp1283
	movl	%eax, -404(%rbp)	# tmp1283, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp1284
	movzbl	-336(%rbp), %eax	# __q17, tmp1286
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1286, tmp1285, tmp1285
	vmovdqa	%xmm0, %xmm2	# tmp1285, tmp1287
	movzbl	-337(%rbp), %eax	# __q18, tmp1289
	movl	%eax, -404(%rbp)	# tmp1289, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp1290
	movzbl	-338(%rbp), %eax	# __q19, tmp1292
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1292, tmp1291, tmp1291
	vmovdqa	%xmm0, %xmm9	# tmp1291, tmp1293
	movzbl	-339(%rbp), %eax	# __q20, tmp1295
	movl	%eax, -404(%rbp)	# tmp1295, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp1296
	movzbl	-340(%rbp), %eax	# __q21, tmp1298
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1298, tmp1297, tmp1297
	vmovdqa	%xmm0, %xmm5	# tmp1297, tmp1299
	movzbl	-341(%rbp), %eax	# __q22, tmp1301
	movl	%eax, -404(%rbp)	# tmp1301, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp1302
	movzbl	-342(%rbp), %eax	# __q23, tmp1304
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1304, tmp1303, tmp1303
	vmovdqa	%xmm0, %xmm8	# tmp1303, tmp1305
	movzbl	-343(%rbp), %eax	# __q24, tmp1307
	movl	%eax, -404(%rbp)	# tmp1307, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp1308
	movzbl	-344(%rbp), %eax	# __q25, tmp1310
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1310, tmp1309, tmp1309
	vmovdqa	%xmm0, %xmm3	# tmp1309, tmp1311
	movzbl	-345(%rbp), %eax	# __q26, tmp1313
	movl	%eax, -404(%rbp)	# tmp1313, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp1314
	movzbl	-346(%rbp), %eax	# __q27, tmp1316
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1316, tmp1315, tmp1315
	vmovdqa	%xmm0, %xmm7	# tmp1315, tmp1317
	movzbl	-347(%rbp), %eax	# __q28, tmp1319
	movl	%eax, -404(%rbp)	# tmp1319, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp1320
	movzbl	-348(%rbp), %eax	# __q29, tmp1322
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1322, tmp1321, tmp1321
	vmovdqa	%xmm0, %xmm4	# tmp1321, tmp1323
	movzbl	-349(%rbp), %eax	# __q30, tmp1325
	movl	%eax, -404(%rbp)	# tmp1325, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp1326
	movzbl	-350(%rbp), %eax	# __q31, tmp1328
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1328, tmp1327, tmp1327
	vmovdqa	%xmm0, %xmm6	# tmp1327, tmp1329
	vpunpcklwd	%xmm9, %xmm2, %xmm0	# tmp1293, tmp1287, tmp1330
	vmovdqa	%xmm0, %xmm2	# tmp1330, tmp1331
	vpunpcklwd	%xmm8, %xmm5, %xmm0	# tmp1305, tmp1299, tmp1332
	vmovdqa	%xmm0, %xmm5	# tmp1332, tmp1333
	vpunpcklwd	%xmm7, %xmm3, %xmm0	# tmp1317, tmp1311, tmp1334
	vmovdqa	%xmm0, %xmm3	# tmp1334, tmp1335
	vpunpcklwd	%xmm6, %xmm4, %xmm0	# tmp1329, tmp1323, tmp1336
	vmovdqa	%xmm0, %xmm4	# tmp1336, tmp1337
	vpunpckldq	%xmm5, %xmm2, %xmm0	# tmp1333, tmp1331, tmp1338
	vmovdqa	%xmm0, %xmm2	# tmp1338, tmp1339
	vpunpckldq	%xmm4, %xmm3, %xmm0	# tmp1337, tmp1335, tmp1340
	vpunpcklqdq	%xmm0, %xmm2, %xmm0	# tmp1341, tmp1339, tmp1342
	vinserti128	$0x1, %xmm0, %ymm1, %ymm0	# tmp1220, tmp1219, tmp1218
.LBE213:
.LBE212:
.LBE211:
.LBE210:
# mem_bw_final.cpp:133: 				local_input[j + 6] = _mm256_set1_epi8(0);
	.loc 3 133 0 discriminator 2
	movq	-400(%rbp), %rax	# %sfp, _69
	vmovdqa	%ymm0, (%rax)	# D.62507, *_69
# mem_bw_final.cpp:134: 				local_input[j + 7] = _mm256_set1_epi8(0);
	.loc 3 134 0 discriminator 2
	movl	-116(%rbp), %eax	# j, tmp1343
	cltq
	addq	$7, %rax	#, _73
	salq	$5, %rax	#, _73
	movq	%rax, %rdx	# _73, _74
	movq	-64(%rbp), %rax	# local_input, tmp1344
	addq	%rdx, %rax	# _74, _75
	movq	%rax, -400(%rbp)	# _75, %sfp
	movb	$0, -384(%rbp)	#, __A
.LBB214:
.LBB215:
# /usr/lib/gcc/x86_64-linux-gnu/7/include/avxintrin.h:1334:   return _mm256_set_epi8 (__A, __A, __A, __A, __A, __A, __A, __A,
	.loc 4 1334 0 discriminator 2
	movsbl	-384(%rbp), %eax	# __A, _112
	movl	%eax, -404(%rbp)	# _112, %sfp
	movsbl	-384(%rbp), %edi	# __A, _113
	movl	%edi, -408(%rbp)	# _113, %sfp
	movsbl	-384(%rbp), %ebx	# __A, _114
	movl	%ebx, -412(%rbp)	# _114, %sfp
	movsbl	-384(%rbp), %ecx	# __A, _115
	movl	%ecx, -416(%rbp)	# _115, %sfp
	movsbl	-384(%rbp), %esi	# __A, _116
	movl	%esi, -420(%rbp)	# _116, %sfp
	movsbl	-384(%rbp), %edx	# __A, _117
	movl	%edx, -424(%rbp)	# _117, %sfp
	movsbl	-384(%rbp), %r8d	# __A, _118
	movl	%r8d, -428(%rbp)	# _118, %sfp
	movsbl	-384(%rbp), %r9d	# __A, _119
	movl	%r9d, -432(%rbp)	# _119, %sfp
	movsbl	-384(%rbp), %r10d	# __A, _120
	movl	%r10d, -436(%rbp)	# _120, %sfp
	movsbl	-384(%rbp), %r11d	# __A, _121
	movl	%r11d, -440(%rbp)	# _121, %sfp
	movsbl	-384(%rbp), %r14d	# __A, _122
	movl	%r14d, -444(%rbp)	# _122, %sfp
	movsbl	-384(%rbp), %r15d	# __A, _123
	movl	%r15d, -448(%rbp)	# _123, %sfp
	movsbl	-384(%rbp), %r12d	# __A, _124
	movl	%r12d, -452(%rbp)	# _124, %sfp
	movsbl	-384(%rbp), %r13d	# __A, _125
	movl	%r13d, -456(%rbp)	# _125, %sfp
	movsbl	-384(%rbp), %eax	# __A, _126
	movl	%eax, -460(%rbp)	# _126, %sfp
	movsbl	-384(%rbp), %edi	# __A, _127
	movl	%edi, -464(%rbp)	# _127, %sfp
	movsbl	-384(%rbp), %ebx	# __A, _128
	movl	%ebx, -468(%rbp)	# _128, %sfp
	movsbl	-384(%rbp), %ecx	# __A, _129
	movl	%ecx, -472(%rbp)	# _129, %sfp
	movsbl	-384(%rbp), %r15d	# __A, _130
	movsbl	-384(%rbp), %r14d	# __A, _131
	movsbl	-384(%rbp), %r13d	# __A, _132
	movsbl	-384(%rbp), %r12d	# __A, _133
	movsbl	-384(%rbp), %ebx	# __A, _134
	movsbl	-384(%rbp), %r11d	# __A, _135
	movsbl	-384(%rbp), %r10d	# __A, _136
	movsbl	-384(%rbp), %r9d	# __A, _137
	movsbl	-384(%rbp), %r8d	# __A, _138
	movsbl	-384(%rbp), %edi	# __A, _139
	movsbl	-384(%rbp), %esi	# __A, _140
	movsbl	-384(%rbp), %ecx	# __A, _141
	movsbl	-384(%rbp), %edx	# __A, _142
	movsbl	-384(%rbp), %eax	# __A, _143
	movb	%al, -383(%rbp)	# _143, __q31
	movb	%dl, -382(%rbp)	# _142, __q30
	movb	%cl, -381(%rbp)	# _141, __q29
	movb	%sil, -380(%rbp)	# _140, __q28
	movb	%dil, -379(%rbp)	# _139, __q27
	movb	%r8b, -378(%rbp)	# _138, __q26
	movb	%r9b, -377(%rbp)	# _137, __q25
	movb	%r10b, -376(%rbp)	# _136, __q24
	movb	%r11b, -375(%rbp)	# _135, __q23
	movb	%bl, -374(%rbp)	# _134, __q22
	movb	%r12b, -373(%rbp)	# _133, __q21
	movb	%r13b, -372(%rbp)	# _132, __q20
	movb	%r14b, -371(%rbp)	# _131, __q19
	movb	%r15b, -370(%rbp)	# _130, __q18
	movzbl	-472(%rbp), %esi	# %sfp, tmp1771
	movb	%sil, -369(%rbp)	# tmp1771, __q17
	movzbl	-468(%rbp), %ebx	# %sfp, tmp1772
	movb	%bl, -368(%rbp)	# tmp1772, __q16
	movzbl	-464(%rbp), %edi	# %sfp, tmp1773
	movb	%dil, -367(%rbp)	# tmp1773, __q15
	movzbl	-460(%rbp), %eax	# %sfp, tmp1774
	movb	%al, -366(%rbp)	# tmp1774, __q14
	movzbl	-456(%rbp), %r13d	# %sfp, tmp1775
	movb	%r13b, -365(%rbp)	# tmp1775, __q13
	movzbl	-452(%rbp), %r12d	# %sfp, tmp1776
	movb	%r12b, -364(%rbp)	# tmp1776, __q12
	movzbl	-448(%rbp), %r15d	# %sfp, tmp1777
	movb	%r15b, -363(%rbp)	# tmp1777, __q11
	movzbl	-444(%rbp), %r14d	# %sfp, tmp1778
	movb	%r14b, -362(%rbp)	# tmp1778, __q10
	movzbl	-440(%rbp), %r11d	# %sfp, tmp1779
	movb	%r11b, -361(%rbp)	# tmp1779, __q09
	movzbl	-436(%rbp), %r10d	# %sfp, tmp1780
	movb	%r10b, -360(%rbp)	# tmp1780, __q08
	movzbl	-432(%rbp), %r9d	# %sfp, tmp1781
	movb	%r9b, -359(%rbp)	# tmp1781, __q07
	movzbl	-428(%rbp), %r8d	# %sfp, tmp1782
	movb	%r8b, -358(%rbp)	# tmp1782, __q06
	movzbl	-424(%rbp), %edx	# %sfp, tmp1783
	movb	%dl, -357(%rbp)	# tmp1783, __q05
	movzbl	-420(%rbp), %esi	# %sfp, tmp1784
	movb	%sil, -356(%rbp)	# tmp1784, __q04
	movzbl	-416(%rbp), %ecx	# %sfp, tmp1785
	movb	%cl, -355(%rbp)	# tmp1785, __q03
	movzbl	-412(%rbp), %ebx	# %sfp, tmp1786
	movb	%bl, -354(%rbp)	# tmp1786, __q02
	movzbl	-408(%rbp), %edi	# %sfp, tmp1787
	movb	%dil, -353(%rbp)	# tmp1787, __q01
	movzbl	-404(%rbp), %eax	# %sfp, tmp1788
	movb	%al, -352(%rbp)	# tmp1788, __q00
.LBB216:
.LBB217:
# /usr/lib/gcc/x86_64-linux-gnu/7/include/avxintrin.h:1286:   return __extension__ (__m256i)(__v32qi){
	.loc 4 1286 0 discriminator 2
	movzbl	-352(%rbp), %eax	# __q00, tmp1349
	movl	%eax, -404(%rbp)	# tmp1349, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp1350
	movzbl	-353(%rbp), %eax	# __q01, tmp1352
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1352, tmp1351, tmp1351
	vmovdqa	%xmm0, %xmm1	# tmp1351, tmp1353
	movzbl	-354(%rbp), %eax	# __q02, tmp1355
	movl	%eax, -404(%rbp)	# tmp1355, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp1356
	movzbl	-355(%rbp), %eax	# __q03, tmp1358
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1358, tmp1357, tmp1357
	vmovdqa	%xmm0, %xmm8	# tmp1357, tmp1359
	movzbl	-356(%rbp), %eax	# __q04, tmp1361
	movl	%eax, -404(%rbp)	# tmp1361, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp1362
	movzbl	-357(%rbp), %eax	# __q05, tmp1364
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1364, tmp1363, tmp1363
	vmovdqa	%xmm0, %xmm4	# tmp1363, tmp1365
	movzbl	-358(%rbp), %eax	# __q06, tmp1367
	movl	%eax, -404(%rbp)	# tmp1367, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp1368
	movzbl	-359(%rbp), %eax	# __q07, tmp1370
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1370, tmp1369, tmp1369
	vmovdqa	%xmm0, %xmm7	# tmp1369, tmp1371
	movzbl	-360(%rbp), %eax	# __q08, tmp1373
	movl	%eax, -404(%rbp)	# tmp1373, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp1374
	movzbl	-361(%rbp), %eax	# __q09, tmp1376
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1376, tmp1375, tmp1375
	vmovdqa	%xmm0, %xmm2	# tmp1375, tmp1377
	movzbl	-362(%rbp), %eax	# __q10, tmp1379
	movl	%eax, -404(%rbp)	# tmp1379, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp1380
	movzbl	-363(%rbp), %eax	# __q11, tmp1382
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1382, tmp1381, tmp1381
	vmovdqa	%xmm0, %xmm6	# tmp1381, tmp1383
	movzbl	-364(%rbp), %eax	# __q12, tmp1385
	movl	%eax, -404(%rbp)	# tmp1385, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp1386
	movzbl	-365(%rbp), %eax	# __q13, tmp1388
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1388, tmp1387, tmp1387
	vmovdqa	%xmm0, %xmm3	# tmp1387, tmp1389
	movzbl	-366(%rbp), %eax	# __q14, tmp1391
	movl	%eax, -404(%rbp)	# tmp1391, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp1392
	movzbl	-367(%rbp), %eax	# __q15, tmp1394
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1394, tmp1393, tmp1393
	vmovdqa	%xmm0, %xmm5	# tmp1393, tmp1395
	vpunpcklwd	%xmm8, %xmm1, %xmm0	# tmp1359, tmp1353, tmp1396
	vmovdqa	%xmm0, %xmm1	# tmp1396, tmp1397
	vpunpcklwd	%xmm7, %xmm4, %xmm0	# tmp1371, tmp1365, tmp1398
	vmovdqa	%xmm0, %xmm4	# tmp1398, tmp1399
	vpunpcklwd	%xmm6, %xmm2, %xmm0	# tmp1383, tmp1377, tmp1400
	vmovdqa	%xmm0, %xmm2	# tmp1400, tmp1401
	vpunpcklwd	%xmm5, %xmm3, %xmm0	# tmp1395, tmp1389, tmp1402
	vmovdqa	%xmm0, %xmm3	# tmp1402, tmp1403
	vpunpckldq	%xmm4, %xmm1, %xmm0	# tmp1399, tmp1397, tmp1404
	vmovdqa	%xmm0, %xmm1	# tmp1404, tmp1405
	vpunpckldq	%xmm3, %xmm2, %xmm0	# tmp1403, tmp1401, tmp1406
	vpunpcklqdq	%xmm0, %xmm1, %xmm0	# tmp1407, tmp1405, tmp1408
	vmovdqa	%xmm0, %xmm1	# tmp1408, tmp1346
	movzbl	-368(%rbp), %eax	# __q16, tmp1410
	movl	%eax, -404(%rbp)	# tmp1410, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp1411
	movzbl	-369(%rbp), %eax	# __q17, tmp1413
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1413, tmp1412, tmp1412
	vmovdqa	%xmm0, %xmm2	# tmp1412, tmp1414
	movzbl	-370(%rbp), %eax	# __q18, tmp1416
	movl	%eax, -404(%rbp)	# tmp1416, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp1417
	movzbl	-371(%rbp), %eax	# __q19, tmp1419
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1419, tmp1418, tmp1418
	vmovdqa	%xmm0, %xmm9	# tmp1418, tmp1420
	movzbl	-372(%rbp), %eax	# __q20, tmp1422
	movl	%eax, -404(%rbp)	# tmp1422, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp1423
	movzbl	-373(%rbp), %eax	# __q21, tmp1425
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1425, tmp1424, tmp1424
	vmovdqa	%xmm0, %xmm5	# tmp1424, tmp1426
	movzbl	-374(%rbp), %eax	# __q22, tmp1428
	movl	%eax, -404(%rbp)	# tmp1428, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp1429
	movzbl	-375(%rbp), %eax	# __q23, tmp1431
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1431, tmp1430, tmp1430
	vmovdqa	%xmm0, %xmm8	# tmp1430, tmp1432
	movzbl	-376(%rbp), %eax	# __q24, tmp1434
	movl	%eax, -404(%rbp)	# tmp1434, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp1435
	movzbl	-377(%rbp), %eax	# __q25, tmp1437
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1437, tmp1436, tmp1436
	vmovdqa	%xmm0, %xmm3	# tmp1436, tmp1438
	movzbl	-378(%rbp), %eax	# __q26, tmp1440
	movl	%eax, -404(%rbp)	# tmp1440, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp1441
	movzbl	-379(%rbp), %eax	# __q27, tmp1443
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1443, tmp1442, tmp1442
	vmovdqa	%xmm0, %xmm7	# tmp1442, tmp1444
	movzbl	-380(%rbp), %eax	# __q28, tmp1446
	movl	%eax, -404(%rbp)	# tmp1446, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp1447
	movzbl	-381(%rbp), %eax	# __q29, tmp1449
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1449, tmp1448, tmp1448
	vmovdqa	%xmm0, %xmm4	# tmp1448, tmp1450
	movzbl	-382(%rbp), %eax	# __q30, tmp1452
	movl	%eax, -404(%rbp)	# tmp1452, %sfp
	vmovd	-404(%rbp), %xmm0	# %sfp, tmp1453
	movzbl	-383(%rbp), %eax	# __q31, tmp1455
	vpinsrb	$1, %eax, %xmm0, %xmm0	#, tmp1455, tmp1454, tmp1454
	vmovdqa	%xmm0, %xmm6	# tmp1454, tmp1456
	vpunpcklwd	%xmm9, %xmm2, %xmm0	# tmp1420, tmp1414, tmp1457
	vmovdqa	%xmm0, %xmm2	# tmp1457, tmp1458
	vpunpcklwd	%xmm8, %xmm5, %xmm0	# tmp1432, tmp1426, tmp1459
	vmovdqa	%xmm0, %xmm5	# tmp1459, tmp1460
	vpunpcklwd	%xmm7, %xmm3, %xmm0	# tmp1444, tmp1438, tmp1461
	vmovdqa	%xmm0, %xmm3	# tmp1461, tmp1462
	vpunpcklwd	%xmm6, %xmm4, %xmm0	# tmp1456, tmp1450, tmp1463
	vmovdqa	%xmm0, %xmm4	# tmp1463, tmp1464
	vpunpckldq	%xmm5, %xmm2, %xmm0	# tmp1460, tmp1458, tmp1465
	vmovdqa	%xmm0, %xmm2	# tmp1465, tmp1466
	vpunpckldq	%xmm4, %xmm3, %xmm0	# tmp1464, tmp1462, tmp1467
	vpunpcklqdq	%xmm0, %xmm2, %xmm0	# tmp1468, tmp1466, tmp1469
	vinserti128	$0x1, %xmm0, %ymm1, %ymm0	# tmp1347, tmp1346, tmp1345
.LBE217:
.LBE216:
.LBE215:
.LBE214:
# mem_bw_final.cpp:134: 				local_input[j + 7] = _mm256_set1_epi8(0);
	.loc 3 134 0 discriminator 2
	movq	-400(%rbp), %rax	# %sfp, _75
	vmovdqa	%ymm0, (%rax)	# D.62468, *_75
# mem_bw_final.cpp:135: 				asm("");
	.loc 3 135 0 discriminator 2
# mem_bw_final.cpp:125: 			for (int j = 0; j < num_of_feeds - (num_of_feeds % 8); j = j + 8)
	.loc 3 125 0 discriminator 2
	addl	$8, -116(%rbp)	#, j
	jmp	.L104	#
.L83:
.LBE218:
# mem_bw_final.cpp:123: 				clock_start = system_clock::now();
	.loc 3 123 0
	movq	-392(%rbp), %rax	# .omp_data_i, tmp1470
	movq	8(%rax), %rbx	# .omp_data_i_12(D)->clock_start, _24
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
	movq	%rax, (%rbx)	# D.62155, *_24
	jmp	.L105	#
.L107:
.LBE219:
.LBE220:
.LBE221:
# mem_bw_final.cpp:113: #pragma omp parallel private(thread_id) reduction(max:run_time)
	.loc 3 113 0
	movq	-56(%rbp), %rax	# D.63071, tmp1473
	xorq	%fs:40, %rax	#, tmp1473
	je	.L106	#,
	call	__stack_chk_fail@PLT	#
.L106:
	addq	$448, %rsp	#,
	popq	%rbx	#
	popq	%r10	#
	.cfi_def_cfa 10, 0
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	leaq	-8(%r10), %rsp	#,
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5713:
	.size	main._omp_fn.3, .-main._omp_fn.3
	.type	main._omp_fn.4, @function
main._omp_fn.4:
.LFB5714:
	.loc 3 163 0
	.cfi_startproc
	leaq	8(%rsp), %r10	#,
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp	#,
	pushq	-8(%r10)	#
	pushq	%rbp	#
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp	#,
	pushq	%r10	#
	.cfi_escape 0xf,0x3,0x76,0x78,0x6
	pushq	%rbx	#
	subq	$224, %rsp	#,
	.cfi_escape 0x10,0x3,0x2,0x76,0x70
	movq	%rdi, -216(%rbp)	# .omp_data_i, .omp_data_i
# mem_bw_final.cpp:163: #pragma omp parallel private(thread_id) reduction(max:run_time)
	.loc 3 163 0
	movq	%fs:40, %rax	#, tmp160
	movq	%rax, -24(%rbp)	# tmp160, D.63072
	xorl	%eax, %eax	# tmp160
	vmovsd	.LC7(%rip), %xmm0	#, tmp121
	vmovsd	%xmm0, -168(%rbp)	# tmp121, run_time
	movq	-216(%rbp), %rax	# .omp_data_i, tmp122
	movq	40(%rax), %rax	# .omp_data_i_12(D)->num_of_feeds, tmp123
	movq	%rax, -160(%rbp)	# tmp123, num_of_feeds
	movq	-216(%rbp), %rax	# .omp_data_i, tmp124
	movq	8(%rax), %rax	# .omp_data_i_12(D)->copies, tmp125
	movq	%rax, -152(%rbp)	# tmp125, copies
	movq	-216(%rbp), %rax	# .omp_data_i, tmp126
	movq	(%rax), %rax	# .omp_data_i_12(D)->inputs, tmp127
	movq	%rax, -144(%rbp)	# tmp127, inputs
	movq	-216(%rbp), %rax	# .omp_data_i, tmp128
	movl	56(%rax), %eax	# .omp_data_i_12(D)->loop_count, tmp129
	movl	%eax, -192(%rbp)	# tmp129, loop_count
.LBB222:
# mem_bw_final.cpp:165: 		thread_id = omp_get_thread_num();
	.loc 3 165 0
	call	omp_get_thread_num@PLT	#
	movl	%eax, -188(%rbp)	# tmp130, thread_id
# mem_bw_final.cpp:167: 		auto local_input = inputs[thread_id];
	.loc 3 167 0
	movl	-188(%rbp), %eax	# thread_id, tmp131
	cltq
	leaq	0(,%rax,8), %rdx	#, _20
	movq	-144(%rbp), %rax	# inputs, tmp132
	addq	%rdx, %rax	# _20, _21
	movq	(%rax), %rax	# *_21, tmp133
	movq	%rax, -136(%rbp)	# tmp133, local_input
.LBB223:
# mem_bw_final.cpp:170: 		for (int i = 0; i < loop_count; i++)
	.loc 3 170 0
	movl	$0, -200(%rbp)	#, i
.L114:
# mem_bw_final.cpp:170: 		for (int i = 0; i < loop_count; i++)
	.loc 3 170 0 is_stmt 0 discriminator 1
	movl	-200(%rbp), %eax	# i, tmp134
	cmpl	-192(%rbp), %eax	# loop_count, tmp134
	jl	.L109	#,
.LBE223:
.LBE222:
# mem_bw_final.cpp:163: #pragma omp parallel private(thread_id) reduction(max:run_time)
	.loc 3 163 0 is_stmt 1
	movq	-216(%rbp), %rax	# .omp_data_i, tmp135
	addq	$48, %rax	#, _62
	movq	%rax, %rcx	# _62, _63
	movq	(%rcx), %rdx	#* _63, _3
.L110:
	movq	%rdx, -224(%rbp)	# _3, %sfp
	vmovsd	-224(%rbp), %xmm0	# %sfp, _67
# mem_bw_final.cpp:163: #pragma omp parallel private(thread_id) reduction(max:run_time)
	.loc 3 163 0 is_stmt 0 discriminator 1
	vmaxsd	-168(%rbp), %xmm0, %xmm0	# run_time, _67, _68
	vmovq	%xmm0, %rsi	# _68, _69
	movq	%rdx, %rax	# _3, _71
	lock cmpxchgq	%rsi, (%rcx)	#, _69,* _63
	movq	%rdx, %rsi	# _3, _72
	movq	%rax, %rdx	# _71, _3
	cmpq	%rsi, %rax	# _72, _71
	jne	.L110	#,
	jmp	.L120	#
.L109:
.LBB234:
.LBB233:
.LBB224:
# mem_bw_final.cpp:172: 			if (i == loop_count - 1) {
	.loc 3 172 0 is_stmt 1
	movl	-192(%rbp), %eax	# loop_count, tmp137
	subl	$1, %eax	#, _24
	cmpl	-200(%rbp), %eax	# i, _24
	je	.L111	#,
.L118:
.LBB225:
# mem_bw_final.cpp:175: 			for (int j = 0; j < num_of_feeds ; j++)
	.loc 3 175 0
	movl	$0, -196(%rbp)	#, j
.L117:
# mem_bw_final.cpp:175: 			for (int j = 0; j < num_of_feeds ; j++)
	.loc 3 175 0 is_stmt 0 discriminator 3
	movl	-196(%rbp), %eax	# j, tmp138
	cltq
	cmpq	-160(%rbp), %rax	# num_of_feeds, _29
	jl	.L112	#,
.LBE225:
# mem_bw_final.cpp:181: 			if (i == loop_count - 1) {
	.loc 3 181 0 is_stmt 1
	movl	-192(%rbp), %eax	# loop_count, tmp139
	subl	$1, %eax	#, _42
	cmpl	-200(%rbp), %eax	# i, _42
	je	.L113	#,
.L115:
# mem_bw_final.cpp:184: 			elapsed_time = clock_end - clock_start;
	.loc 3 184 0 discriminator 2
	movq	-216(%rbp), %rax	# .omp_data_i, tmp140
	movq	16(%rax), %rdx	# .omp_data_i_12(D)->clock_start, _46
	movq	-216(%rbp), %rax	# .omp_data_i, tmp141
	movq	24(%rax), %rax	# .omp_data_i_12(D)->clock_end, _48
	movq	%rdx, %rsi	# _46,
	movq	%rax, %rdi	# _48,
	call	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE	#
	movq	%rax, -184(%rbp)	# D.62048, D.62049
	leaq	-184(%rbp), %rdx	#, tmp142
	leaq	-176(%rbp), %rax	#, tmp143
	movq	%rdx, %rsi	# tmp142,
	movq	%rax, %rdi	# tmp143,
	call	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE	#
	movq	-216(%rbp), %rax	# .omp_data_i, tmp144
	movq	32(%rax), %rax	# .omp_data_i_12(D)->elapsed_time, _53
	vmovsd	-176(%rbp), %xmm0	# elapsed_time.5, tmp145
	vmovsd	%xmm0, (%rax)	# tmp145, *_53
# mem_bw_final.cpp:185: 			run_time = elapsed_time.count();
	.loc 3 185 0 discriminator 2
	movq	-216(%rbp), %rax	# .omp_data_i, tmp146
	movq	32(%rax), %rax	# .omp_data_i_12(D)->elapsed_time, _57
	movq	%rax, %rdi	# _57,
	call	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv	#
	vmovq	%xmm0, %rax	#, tmp147
	movq	%rax, -168(%rbp)	# tmp147, run_time
.LBE224:
# mem_bw_final.cpp:170: 		for (int i = 0; i < loop_count; i++)
	.loc 3 170 0 discriminator 2
	addl	$1, -200(%rbp)	#, i
	jmp	.L114	#
.L113:
.LBB232:
# mem_bw_final.cpp:182: 				clock_end = system_clock::now();
	.loc 3 182 0
	movq	-216(%rbp), %rax	# .omp_data_i, tmp148
	movq	24(%rax), %rbx	# .omp_data_i_12(D)->clock_end, _43
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
	movq	%rax, (%rbx)	# D.62055, *_43
	jmp	.L115	#
.L112:
.LBB231:
.LBB226:
# mem_bw_final.cpp:177: 				__m256i temp_var = _mm256_load_si256((const __m256i *) &local_input[j]);
	.loc 3 177 0 discriminator 2
	movl	-196(%rbp), %eax	# j, tmp149
	cltq
	salq	$5, %rax	#, _30
	movq	%rax, %rdx	# _30, _31
	movq	-136(%rbp), %rax	# local_input, tmp150
	addq	%rdx, %rax	# _31, _32
	movq	%rax, -120(%rbp)	# _32, __P
.LBB227:
.LBB228:
# /usr/lib/gcc/x86_64-linux-gnu/7/include/avxintrin.h:909:   return *__P;
	.loc 4 909 0 discriminator 2
	movq	-120(%rbp), %rax	# __P, tmp151
	vmovdqa	(%rax), %ymm0	# *__P_76, D.62431
.LBE228:
.LBE227:
# mem_bw_final.cpp:177: 				__m256i temp_var = _mm256_load_si256((const __m256i *) &local_input[j]);
	.loc 3 177 0 discriminator 2
	vmovdqa	%ymm0, -112(%rbp)	# D.62431, temp_var
# mem_bw_final.cpp:178: 				_mm256_store_si256((__m256i *)&copies[thread_id][j], temp_var);
	.loc 3 178 0 discriminator 2
	movl	-188(%rbp), %eax	# thread_id, tmp152
	cltq
	leaq	0(,%rax,8), %rdx	#, _35
	movq	-152(%rbp), %rax	# copies, tmp153
	addq	%rdx, %rax	# _35, _36
	movq	(%rax), %rax	# *_36, _37
	movl	-196(%rbp), %edx	# j, tmp154
	movslq	%edx, %rdx	# tmp154, _38
	salq	$5, %rdx	#, _39
	addq	%rdx, %rax	# _39, _40
	movq	%rax, -128(%rbp)	# _40, __P
	vmovdqa	-112(%rbp), %ymm0	# temp_var, tmp155
	vmovdqa	%ymm0, -80(%rbp)	# tmp155, __A
.LBB229:
.LBB230:
# /usr/lib/gcc/x86_64-linux-gnu/7/include/avxintrin.h:915:   *__P = __A;
	.loc 4 915 0 discriminator 2
	movq	-128(%rbp), %rax	# __P, tmp156
	vmovdqa	-80(%rbp), %ymm0	# __A, tmp157
	vmovdqa	%ymm0, (%rax)	# tmp157, *__P_74
.LBE230:
.LBE229:
# mem_bw_final.cpp:179: 				asm("");
	.loc 3 179 0 discriminator 2
.LBE226:
# mem_bw_final.cpp:175: 			for (int j = 0; j < num_of_feeds ; j++)
	.loc 3 175 0 discriminator 2
	addl	$1, -196(%rbp)	#, j
	jmp	.L117	#
.L111:
.LBE231:
# mem_bw_final.cpp:173: 				clock_start = system_clock::now();
	.loc 3 173 0
	movq	-216(%rbp), %rax	# .omp_data_i, tmp158
	movq	16(%rax), %rbx	# .omp_data_i_12(D)->clock_start, _25
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
	movq	%rax, (%rbx)	# D.62068, *_25
	jmp	.L118	#
.L120:
.LBE232:
.LBE233:
.LBE234:
# mem_bw_final.cpp:163: #pragma omp parallel private(thread_id) reduction(max:run_time)
	.loc 3 163 0
	movq	-24(%rbp), %rax	# D.63072, tmp161
	xorq	%fs:40, %rax	#, tmp161
	je	.L119	#,
	call	__stack_chk_fail@PLT	#
.L119:
	addq	$224, %rsp	#,
	popq	%rbx	#
	popq	%r10	#
	.cfi_def_cfa 10, 0
	popq	%rbp	#
	leaq	-8(%r10), %rsp	#,
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5714:
	.size	main._omp_fn.4, .-main._omp_fn.4
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1104006501
	.align 8
.LC2:
	.long	0
	.long	1104150528
	.align 8
.LC3:
	.long	0
	.long	1075838976
	.align 8
.LC7:
	.long	0
	.long	-1048576
	.text
.Letext0:
	.file 7 "/usr/include/c++/7/cwchar"
	.file 8 "/usr/include/c++/7/new"
	.file 9 "/usr/include/c++/7/bits/exception_ptr.h"
	.file 10 "/usr/include/c++/7/type_traits"
	.file 11 "/usr/include/x86_64-linux-gnu/c++/7/bits/c++config.h"
	.file 12 "/usr/include/c++/7/bits/cpp_type_traits.h"
	.file 13 "/usr/include/c++/7/bits/stl_pair.h"
	.file 14 "/usr/include/c++/7/debug/debug.h"
	.file 15 "/usr/include/c++/7/bits/char_traits.h"
	.file 16 "/usr/include/c++/7/cstdint"
	.file 17 "/usr/include/c++/7/clocale"
	.file 18 "/usr/include/c++/7/cstdlib"
	.file 19 "/usr/include/c++/7/cstdio"
	.file 20 "/usr/include/c++/7/system_error"
	.file 21 "/usr/include/c++/7/bits/ios_base.h"
	.file 22 "/usr/include/c++/7/cwctype"
	.file 23 "/usr/include/c++/7/iosfwd"
	.file 24 "/usr/include/c++/7/ctime"
	.file 25 "<built-in>"
	.file 26 "/usr/include/c++/7/ratio"
	.file 27 "/usr/include/c++/7/bits/predefined_ops.h"
	.file 28 "/usr/include/c++/7/ext/new_allocator.h"
	.file 29 "/usr/include/c++/7/ext/numeric_traits.h"
	.file 30 "/usr/lib/gcc/x86_64-linux-gnu/7/include/stddef.h"
	.file 31 "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h"
	.file 32 "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h"
	.file 33 "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h"
	.file 34 "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h"
	.file 35 "/usr/include/x86_64-linux-gnu/bits/libio.h"
	.file 36 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 37 "/usr/include/wchar.h"
	.file 38 "/usr/include/x86_64-linux-gnu/bits/types/struct_tm.h"
	.file 39 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 40 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h"
	.file 41 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 42 "/usr/include/stdint.h"
	.file 43 "/usr/include/locale.h"
	.file 44 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 45 "/usr/include/x86_64-linux-gnu/bits/types/clock_t.h"
	.file 46 "/usr/include/time.h"
	.file 47 "/usr/include/x86_64-linux-gnu/c++/7/bits/atomic_word.h"
	.file 48 "/usr/include/stdlib.h"
	.file 49 "/usr/include/x86_64-linux-gnu/bits/_G_config.h"
	.file 50 "/usr/include/stdio.h"
	.file 51 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 52 "/usr/include/errno.h"
	.file 53 "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h"
	.file 54 "/usr/include/wctype.h"
	.file 55 "/usr/include/c++/7/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x5b9f
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x65
	.long	.LASF680
	.byte	0x4
	.long	.LASF681
	.long	.LASF682
	.long	.Ldebug_ranges0+0x150
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x66
	.string	"std"
	.byte	0x19
	.byte	0
	.long	0x1800
	.uleb128 0x42
	.long	.LASF35
	.byte	0xb
	.byte	0xfd
	.uleb128 0x2c
	.byte	0xb
	.byte	0xfd
	.long	0x34
	.uleb128 0x3
	.byte	0x7
	.byte	0x40
	.long	0x1baa
	.uleb128 0x3
	.byte	0x7
	.byte	0x8b
	.long	0x1b28
	.uleb128 0x3
	.byte	0x7
	.byte	0x8d
	.long	0x1d62
	.uleb128 0x3
	.byte	0x7
	.byte	0x8e
	.long	0x1d78
	.uleb128 0x3
	.byte	0x7
	.byte	0x8f
	.long	0x1d94
	.uleb128 0x3
	.byte	0x7
	.byte	0x90
	.long	0x1dc6
	.uleb128 0x3
	.byte	0x7
	.byte	0x91
	.long	0x1de1
	.uleb128 0x3
	.byte	0x7
	.byte	0x92
	.long	0x1e02
	.uleb128 0x3
	.byte	0x7
	.byte	0x93
	.long	0x1e1d
	.uleb128 0x3
	.byte	0x7
	.byte	0x94
	.long	0x1e39
	.uleb128 0x3
	.byte	0x7
	.byte	0x95
	.long	0x1e55
	.uleb128 0x3
	.byte	0x7
	.byte	0x96
	.long	0x1e6b
	.uleb128 0x3
	.byte	0x7
	.byte	0x97
	.long	0x1e77
	.uleb128 0x3
	.byte	0x7
	.byte	0x98
	.long	0x1e9d
	.uleb128 0x3
	.byte	0x7
	.byte	0x99
	.long	0x1ec2
	.uleb128 0x3
	.byte	0x7
	.byte	0x9a
	.long	0x1ede
	.uleb128 0x3
	.byte	0x7
	.byte	0x9b
	.long	0x1f09
	.uleb128 0x3
	.byte	0x7
	.byte	0x9c
	.long	0x1f24
	.uleb128 0x3
	.byte	0x7
	.byte	0x9e
	.long	0x1f3a
	.uleb128 0x3
	.byte	0x7
	.byte	0xa0
	.long	0x1f5b
	.uleb128 0x3
	.byte	0x7
	.byte	0xa1
	.long	0x1f77
	.uleb128 0x3
	.byte	0x7
	.byte	0xa2
	.long	0x1f92
	.uleb128 0x3
	.byte	0x7
	.byte	0xa4
	.long	0x1fb8
	.uleb128 0x3
	.byte	0x7
	.byte	0xa7
	.long	0x1fd8
	.uleb128 0x3
	.byte	0x7
	.byte	0xaa
	.long	0x1ffd
	.uleb128 0x3
	.byte	0x7
	.byte	0xac
	.long	0x201d
	.uleb128 0x3
	.byte	0x7
	.byte	0xae
	.long	0x2038
	.uleb128 0x3
	.byte	0x7
	.byte	0xb0
	.long	0x2053
	.uleb128 0x3
	.byte	0x7
	.byte	0xb1
	.long	0x2079
	.uleb128 0x3
	.byte	0x7
	.byte	0xb2
	.long	0x2093
	.uleb128 0x3
	.byte	0x7
	.byte	0xb3
	.long	0x20ad
	.uleb128 0x3
	.byte	0x7
	.byte	0xb4
	.long	0x20c7
	.uleb128 0x3
	.byte	0x7
	.byte	0xb5
	.long	0x20e1
	.uleb128 0x3
	.byte	0x7
	.byte	0xb6
	.long	0x20fb
	.uleb128 0x3
	.byte	0x7
	.byte	0xb7
	.long	0x21bb
	.uleb128 0x3
	.byte	0x7
	.byte	0xb8
	.long	0x21d0
	.uleb128 0x3
	.byte	0x7
	.byte	0xb9
	.long	0x21ef
	.uleb128 0x3
	.byte	0x7
	.byte	0xba
	.long	0x220e
	.uleb128 0x3
	.byte	0x7
	.byte	0xbb
	.long	0x222d
	.uleb128 0x3
	.byte	0x7
	.byte	0xbc
	.long	0x2258
	.uleb128 0x3
	.byte	0x7
	.byte	0xbd
	.long	0x2272
	.uleb128 0x3
	.byte	0x7
	.byte	0xbf
	.long	0x2293
	.uleb128 0x3
	.byte	0x7
	.byte	0xc1
	.long	0x22ae
	.uleb128 0x3
	.byte	0x7
	.byte	0xc2
	.long	0x22cd
	.uleb128 0x3
	.byte	0x7
	.byte	0xc3
	.long	0x22f9
	.uleb128 0x3
	.byte	0x7
	.byte	0xc4
	.long	0x2319
	.uleb128 0x3
	.byte	0x7
	.byte	0xc5
	.long	0x2338
	.uleb128 0x3
	.byte	0x7
	.byte	0xc6
	.long	0x234e
	.uleb128 0x3
	.byte	0x7
	.byte	0xc7
	.long	0x236e
	.uleb128 0x3
	.byte	0x7
	.byte	0xc8
	.long	0x238e
	.uleb128 0x3
	.byte	0x7
	.byte	0xc9
	.long	0x23ae
	.uleb128 0x3
	.byte	0x7
	.byte	0xca
	.long	0x23ce
	.uleb128 0x3
	.byte	0x7
	.byte	0xcb
	.long	0x23e5
	.uleb128 0x3
	.byte	0x7
	.byte	0xcc
	.long	0x23fc
	.uleb128 0x3
	.byte	0x7
	.byte	0xcd
	.long	0x241a
	.uleb128 0x3
	.byte	0x7
	.byte	0xce
	.long	0x2438
	.uleb128 0x3
	.byte	0x7
	.byte	0xcf
	.long	0x2456
	.uleb128 0x3
	.byte	0x7
	.byte	0xd0
	.long	0x2474
	.uleb128 0x18
	.byte	0x7
	.value	0x108
	.long	0x2497
	.uleb128 0x18
	.byte	0x7
	.value	0x109
	.long	0x24b2
	.uleb128 0x18
	.byte	0x7
	.value	0x10a
	.long	0x24d9
	.uleb128 0x18
	.byte	0x7
	.value	0x118
	.long	0x2293
	.uleb128 0x18
	.byte	0x7
	.value	0x11b
	.long	0x1fb8
	.uleb128 0x18
	.byte	0x7
	.value	0x11e
	.long	0x1ffd
	.uleb128 0x18
	.byte	0x7
	.value	0x121
	.long	0x2038
	.uleb128 0x18
	.byte	0x7
	.value	0x125
	.long	0x2497
	.uleb128 0x18
	.byte	0x7
	.value	0x126
	.long	0x24b2
	.uleb128 0x18
	.byte	0x7
	.value	0x127
	.long	0x24d9
	.uleb128 0x12
	.long	.LASF1
	.byte	0x1
	.byte	0x8
	.byte	0x56
	.long	0x24b
	.uleb128 0x53
	.long	.LASF1
	.byte	0x8
	.byte	0x59
	.long	.LASF3
	.byte	0x1
	.long	0x244
	.uleb128 0x7
	.long	0x2505
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x228
	.uleb128 0x1c
	.long	.LASF43
	.byte	0x8
	.byte	0x5d
	.long	.LASF105
	.long	0x24b
	.uleb128 0x39
	.long	.LASF0
	.byte	0x9
	.byte	0x34
	.long	0x430
	.uleb128 0x67
	.long	.LASF2
	.byte	0x8
	.byte	0x9
	.byte	0x4f
	.long	0x423
	.uleb128 0x4
	.long	.LASF256
	.byte	0x9
	.byte	0x51
	.long	0x1b26
	.byte	0
	.uleb128 0x68
	.long	.LASF2
	.byte	0x9
	.byte	0x53
	.long	.LASF4
	.long	0x295
	.long	0x2a0
	.uleb128 0x7
	.long	0x250b
	.uleb128 0x2
	.long	0x1b26
	.byte	0
	.uleb128 0x54
	.long	.LASF5
	.byte	0x9
	.byte	0x55
	.long	.LASF7
	.long	0x2b3
	.long	0x2b9
	.uleb128 0x7
	.long	0x250b
	.byte	0
	.uleb128 0x54
	.long	.LASF6
	.byte	0x9
	.byte	0x56
	.long	.LASF8
	.long	0x2cc
	.long	0x2d2
	.uleb128 0x7
	.long	0x250b
	.byte	0
	.uleb128 0x2d
	.long	.LASF9
	.byte	0x9
	.byte	0x58
	.long	.LASF10
	.long	0x1b26
	.long	0x2e9
	.long	0x2ef
	.uleb128 0x7
	.long	0x2511
	.byte	0
	.uleb128 0x24
	.long	.LASF2
	.byte	0x9
	.byte	0x60
	.long	.LASF11
	.byte	0x1
	.long	0x303
	.long	0x309
	.uleb128 0x7
	.long	0x250b
	.byte	0
	.uleb128 0x24
	.long	.LASF2
	.byte	0x9
	.byte	0x62
	.long	.LASF12
	.byte	0x1
	.long	0x31d
	.long	0x328
	.uleb128 0x7
	.long	0x250b
	.uleb128 0x2
	.long	0x2517
	.byte	0
	.uleb128 0x24
	.long	.LASF2
	.byte	0x9
	.byte	0x65
	.long	.LASF13
	.byte	0x1
	.long	0x33c
	.long	0x347
	.uleb128 0x7
	.long	0x250b
	.uleb128 0x2
	.long	0x44c
	.byte	0
	.uleb128 0x24
	.long	.LASF2
	.byte	0x9
	.byte	0x69
	.long	.LASF14
	.byte	0x1
	.long	0x35b
	.long	0x366
	.uleb128 0x7
	.long	0x250b
	.uleb128 0x2
	.long	0x251d
	.byte	0
	.uleb128 0x55
	.long	.LASF15
	.byte	0x9
	.byte	0x76
	.long	.LASF16
	.long	0x2523
	.byte	0x1
	.long	0x37e
	.long	0x389
	.uleb128 0x7
	.long	0x250b
	.uleb128 0x2
	.long	0x2517
	.byte	0
	.uleb128 0x55
	.long	.LASF15
	.byte	0x9
	.byte	0x7a
	.long	.LASF17
	.long	0x2523
	.byte	0x1
	.long	0x3a1
	.long	0x3ac
	.uleb128 0x7
	.long	0x250b
	.uleb128 0x2
	.long	0x251d
	.byte	0
	.uleb128 0x24
	.long	.LASF18
	.byte	0x9
	.byte	0x81
	.long	.LASF19
	.byte	0x1
	.long	0x3c0
	.long	0x3cb
	.uleb128 0x7
	.long	0x250b
	.uleb128 0x7
	.long	0x1b93
	.byte	0
	.uleb128 0x24
	.long	.LASF20
	.byte	0x9
	.byte	0x84
	.long	.LASF21
	.byte	0x1
	.long	0x3df
	.long	0x3ea
	.uleb128 0x7
	.long	0x250b
	.uleb128 0x2
	.long	0x2523
	.byte	0
	.uleb128 0x69
	.long	.LASF683
	.byte	0x9
	.byte	0x90
	.long	.LASF684
	.long	0x2529
	.byte	0x1
	.long	0x402
	.long	0x408
	.uleb128 0x7
	.long	0x2511
	.byte	0
	.uleb128 0x6a
	.long	.LASF22
	.byte	0x9
	.byte	0x99
	.long	.LASF23
	.long	0x2535
	.byte	0x1
	.long	0x41c
	.uleb128 0x7
	.long	0x2511
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x26a
	.uleb128 0x3
	.byte	0x9
	.byte	0x49
	.long	0x437
	.byte	0
	.uleb128 0x3
	.byte	0x9
	.byte	0x39
	.long	0x26a
	.uleb128 0x6b
	.long	.LASF24
	.byte	0x9
	.byte	0x45
	.long	.LASF25
	.long	0x44c
	.uleb128 0x2
	.long	0x26a
	.byte	0
	.uleb128 0x5
	.long	.LASF27
	.byte	0xb
	.byte	0xeb
	.long	0x2500
	.uleb128 0x6c
	.long	.LASF685
	.uleb128 0xc
	.long	0x457
	.uleb128 0x12
	.long	.LASF26
	.byte	0x1
	.byte	0xa
	.byte	0x45
	.long	0x4b5
	.uleb128 0x3a
	.long	.LASF32
	.byte	0xa
	.byte	0x47
	.long	0x2530
	.uleb128 0x5
	.long	.LASF28
	.byte	0xa
	.byte	0x48
	.long	0x2529
	.uleb128 0x2d
	.long	.LASF29
	.byte	0xa
	.byte	0x4a
	.long	.LASF30
	.long	0x478
	.long	0x49a
	.long	0x4a0
	.uleb128 0x7
	.long	0x253b
	.byte	0
	.uleb128 0x19
	.string	"_Tp"
	.long	0x2529
	.uleb128 0x3b
	.string	"__v"
	.long	0x2529
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x461
	.uleb128 0x12
	.long	.LASF31
	.byte	0x1
	.byte	0xa
	.byte	0x45
	.long	0x50e
	.uleb128 0x3a
	.long	.LASF32
	.byte	0xa
	.byte	0x47
	.long	0x2530
	.uleb128 0x5
	.long	.LASF28
	.byte	0xa
	.byte	0x48
	.long	0x2529
	.uleb128 0x2d
	.long	.LASF33
	.byte	0xa
	.byte	0x4a
	.long	.LASF34
	.long	0x4d1
	.long	0x4f3
	.long	0x4f9
	.uleb128 0x7
	.long	0x2541
	.byte	0
	.uleb128 0x19
	.string	"_Tp"
	.long	0x2529
	.uleb128 0x3b
	.string	"__v"
	.long	0x2529
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.long	0x4ba
	.uleb128 0x56
	.long	.LASF36
	.byte	0xa
	.value	0xa20
	.uleb128 0x12
	.long	.LASF37
	.byte	0x1
	.byte	0xc
	.byte	0x7f
	.long	0x545
	.uleb128 0x43
	.byte	0x7
	.byte	0x4
	.long	0x1b1f
	.byte	0xc
	.byte	0x81
	.long	0x53b
	.uleb128 0x44
	.long	.LASF39
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"_Tp"
	.long	0x1ac4
	.byte	0
	.uleb128 0x12
	.long	.LASF38
	.byte	0x1
	.byte	0xc
	.byte	0x7f
	.long	0x56f
	.uleb128 0x43
	.byte	0x7
	.byte	0x4
	.long	0x1b1f
	.byte	0xc
	.byte	0x81
	.long	0x565
	.uleb128 0x44
	.long	.LASF39
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"_Tp"
	.long	0x1ab8
	.byte	0
	.uleb128 0x12
	.long	.LASF40
	.byte	0x1
	.byte	0xc
	.byte	0x7f
	.long	0x599
	.uleb128 0x43
	.byte	0x7
	.byte	0x4
	.long	0x1b1f
	.byte	0xc
	.byte	0x81
	.long	0x58f
	.uleb128 0x44
	.long	.LASF39
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"_Tp"
	.long	0x1ab1
	.byte	0
	.uleb128 0x12
	.long	.LASF41
	.byte	0x1
	.byte	0xd
	.byte	0x4c
	.long	0x5bc
	.uleb128 0x53
	.long	.LASF41
	.byte	0xd
	.byte	0x4c
	.long	.LASF42
	.byte	0x1
	.long	0x5b5
	.uleb128 0x7
	.long	0x2561
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x599
	.uleb128 0x6d
	.long	.LASF44
	.byte	0xd
	.byte	0x4f
	.long	0x5bc
	.byte	0x1
	.byte	0
	.uleb128 0x42
	.long	.LASF45
	.byte	0xe
	.byte	0x32
	.uleb128 0x1d
	.long	.LASF46
	.byte	0x1
	.byte	0xf
	.value	0x113
	.long	0x7a3
	.uleb128 0x1a
	.long	.LASF47
	.byte	0xf
	.value	0x115
	.long	0x1b87
	.uleb128 0xc
	.long	0x5e2
	.uleb128 0x1a
	.long	.LASF48
	.byte	0xf
	.value	0x116
	.long	0x1b93
	.uleb128 0xc
	.long	0x5f3
	.uleb128 0x57
	.long	.LASF61
	.byte	0xf
	.value	0x11c
	.long	.LASF70
	.long	0x61f
	.uleb128 0x2
	.long	0x257f
	.uleb128 0x2
	.long	0x2585
	.byte	0
	.uleb128 0x3c
	.string	"eq"
	.byte	0xf
	.value	0x120
	.long	.LASF49
	.long	0x2529
	.long	0x63d
	.uleb128 0x2
	.long	0x2585
	.uleb128 0x2
	.long	0x2585
	.byte	0
	.uleb128 0x3c
	.string	"lt"
	.byte	0xf
	.value	0x124
	.long	.LASF50
	.long	0x2529
	.long	0x65b
	.uleb128 0x2
	.long	0x2585
	.uleb128 0x2
	.long	0x2585
	.byte	0
	.uleb128 0x14
	.long	.LASF51
	.byte	0xf
	.value	0x12c
	.long	.LASF53
	.long	0x1b93
	.long	0x67f
	.uleb128 0x2
	.long	0x258b
	.uleb128 0x2
	.long	0x258b
	.uleb128 0x2
	.long	0x7a3
	.byte	0
	.uleb128 0x14
	.long	.LASF52
	.byte	0xf
	.value	0x13a
	.long	.LASF54
	.long	0x7a3
	.long	0x699
	.uleb128 0x2
	.long	0x258b
	.byte	0
	.uleb128 0x14
	.long	.LASF55
	.byte	0xf
	.value	0x144
	.long	.LASF56
	.long	0x258b
	.long	0x6bd
	.uleb128 0x2
	.long	0x258b
	.uleb128 0x2
	.long	0x7a3
	.uleb128 0x2
	.long	0x2585
	.byte	0
	.uleb128 0x14
	.long	.LASF57
	.byte	0xf
	.value	0x152
	.long	.LASF58
	.long	0x2591
	.long	0x6e1
	.uleb128 0x2
	.long	0x2591
	.uleb128 0x2
	.long	0x258b
	.uleb128 0x2
	.long	0x7a3
	.byte	0
	.uleb128 0x14
	.long	.LASF59
	.byte	0xf
	.value	0x15a
	.long	.LASF60
	.long	0x2591
	.long	0x705
	.uleb128 0x2
	.long	0x2591
	.uleb128 0x2
	.long	0x258b
	.uleb128 0x2
	.long	0x7a3
	.byte	0
	.uleb128 0x14
	.long	.LASF61
	.byte	0xf
	.value	0x162
	.long	.LASF62
	.long	0x2591
	.long	0x729
	.uleb128 0x2
	.long	0x2591
	.uleb128 0x2
	.long	0x7a3
	.uleb128 0x2
	.long	0x5e2
	.byte	0
	.uleb128 0x14
	.long	.LASF63
	.byte	0xf
	.value	0x16a
	.long	.LASF64
	.long	0x5e2
	.long	0x743
	.uleb128 0x2
	.long	0x2597
	.byte	0
	.uleb128 0x14
	.long	.LASF65
	.byte	0xf
	.value	0x170
	.long	.LASF66
	.long	0x5f3
	.long	0x75d
	.uleb128 0x2
	.long	0x2585
	.byte	0
	.uleb128 0x14
	.long	.LASF67
	.byte	0xf
	.value	0x174
	.long	.LASF68
	.long	0x2529
	.long	0x77c
	.uleb128 0x2
	.long	0x2597
	.uleb128 0x2
	.long	0x2597
	.byte	0
	.uleb128 0x1b
	.string	"eof"
	.byte	0xf
	.value	0x178
	.long	.LASF86
	.long	0x5f3
	.uleb128 0x3d
	.long	.LASF69
	.byte	0xf
	.value	0x17c
	.long	.LASF71
	.long	0x5f3
	.uleb128 0x2
	.long	0x2597
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	.LASF72
	.byte	0xb
	.byte	0xe7
	.long	0x1ad6
	.uleb128 0x1d
	.long	.LASF73
	.byte	0x1
	.byte	0xf
	.value	0x184
	.long	0x97c
	.uleb128 0x1a
	.long	.LASF47
	.byte	0xf
	.value	0x186
	.long	0x1dba
	.uleb128 0xc
	.long	0x7bb
	.uleb128 0x1a
	.long	.LASF48
	.byte	0xf
	.value	0x187
	.long	0x1b28
	.uleb128 0xc
	.long	0x7cc
	.uleb128 0x57
	.long	.LASF61
	.byte	0xf
	.value	0x18d
	.long	.LASF74
	.long	0x7f8
	.uleb128 0x2
	.long	0x259d
	.uleb128 0x2
	.long	0x25a3
	.byte	0
	.uleb128 0x3c
	.string	"eq"
	.byte	0xf
	.value	0x191
	.long	.LASF75
	.long	0x2529
	.long	0x816
	.uleb128 0x2
	.long	0x25a3
	.uleb128 0x2
	.long	0x25a3
	.byte	0
	.uleb128 0x3c
	.string	"lt"
	.byte	0xf
	.value	0x195
	.long	.LASF76
	.long	0x2529
	.long	0x834
	.uleb128 0x2
	.long	0x25a3
	.uleb128 0x2
	.long	0x25a3
	.byte	0
	.uleb128 0x14
	.long	.LASF51
	.byte	0xf
	.value	0x199
	.long	.LASF77
	.long	0x1b93
	.long	0x858
	.uleb128 0x2
	.long	0x25a9
	.uleb128 0x2
	.long	0x25a9
	.uleb128 0x2
	.long	0x7a3
	.byte	0
	.uleb128 0x14
	.long	.LASF52
	.byte	0xf
	.value	0x1a8
	.long	.LASF78
	.long	0x7a3
	.long	0x872
	.uleb128 0x2
	.long	0x25a9
	.byte	0
	.uleb128 0x14
	.long	.LASF55
	.byte	0xf
	.value	0x1b3
	.long	.LASF79
	.long	0x25a9
	.long	0x896
	.uleb128 0x2
	.long	0x25a9
	.uleb128 0x2
	.long	0x7a3
	.uleb128 0x2
	.long	0x25a3
	.byte	0
	.uleb128 0x14
	.long	.LASF57
	.byte	0xf
	.value	0x1c2
	.long	.LASF80
	.long	0x25af
	.long	0x8ba
	.uleb128 0x2
	.long	0x25af
	.uleb128 0x2
	.long	0x25a9
	.uleb128 0x2
	.long	0x7a3
	.byte	0
	.uleb128 0x14
	.long	.LASF59
	.byte	0xf
	.value	0x1ca
	.long	.LASF81
	.long	0x25af
	.long	0x8de
	.uleb128 0x2
	.long	0x25af
	.uleb128 0x2
	.long	0x25a9
	.uleb128 0x2
	.long	0x7a3
	.byte	0
	.uleb128 0x14
	.long	.LASF61
	.byte	0xf
	.value	0x1d2
	.long	.LASF82
	.long	0x25af
	.long	0x902
	.uleb128 0x2
	.long	0x25af
	.uleb128 0x2
	.long	0x7a3
	.uleb128 0x2
	.long	0x7bb
	.byte	0
	.uleb128 0x14
	.long	.LASF63
	.byte	0xf
	.value	0x1da
	.long	.LASF83
	.long	0x7bb
	.long	0x91c
	.uleb128 0x2
	.long	0x25b5
	.byte	0
	.uleb128 0x14
	.long	.LASF65
	.byte	0xf
	.value	0x1de
	.long	.LASF84
	.long	0x7cc
	.long	0x936
	.uleb128 0x2
	.long	0x25a3
	.byte	0
	.uleb128 0x14
	.long	.LASF67
	.byte	0xf
	.value	0x1e2
	.long	.LASF85
	.long	0x2529
	.long	0x955
	.uleb128 0x2
	.long	0x25b5
	.uleb128 0x2
	.long	0x25b5
	.byte	0
	.uleb128 0x1b
	.string	"eof"
	.byte	0xf
	.value	0x1e6
	.long	.LASF87
	.long	0x7cc
	.uleb128 0x3d
	.long	.LASF69
	.byte	0xf
	.value	0x1ea
	.long	.LASF88
	.long	0x7cc
	.uleb128 0x2
	.long	0x25b5
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x10
	.byte	0x30
	.long	0x265a
	.uleb128 0x3
	.byte	0x10
	.byte	0x31
	.long	0x2665
	.uleb128 0x3
	.byte	0x10
	.byte	0x32
	.long	0x2670
	.uleb128 0x3
	.byte	0x10
	.byte	0x33
	.long	0x267b
	.uleb128 0x3
	.byte	0x10
	.byte	0x35
	.long	0x270a
	.uleb128 0x3
	.byte	0x10
	.byte	0x36
	.long	0x2715
	.uleb128 0x3
	.byte	0x10
	.byte	0x37
	.long	0x2720
	.uleb128 0x3
	.byte	0x10
	.byte	0x38
	.long	0x272b
	.uleb128 0x3
	.byte	0x10
	.byte	0x3a
	.long	0x26b2
	.uleb128 0x3
	.byte	0x10
	.byte	0x3b
	.long	0x26bd
	.uleb128 0x3
	.byte	0x10
	.byte	0x3c
	.long	0x26c8
	.uleb128 0x3
	.byte	0x10
	.byte	0x3d
	.long	0x26d3
	.uleb128 0x3
	.byte	0x10
	.byte	0x3f
	.long	0x2778
	.uleb128 0x3
	.byte	0x10
	.byte	0x40
	.long	0x2762
	.uleb128 0x3
	.byte	0x10
	.byte	0x42
	.long	0x2686
	.uleb128 0x3
	.byte	0x10
	.byte	0x43
	.long	0x2691
	.uleb128 0x3
	.byte	0x10
	.byte	0x44
	.long	0x269c
	.uleb128 0x3
	.byte	0x10
	.byte	0x45
	.long	0x26a7
	.uleb128 0x3
	.byte	0x10
	.byte	0x47
	.long	0x2736
	.uleb128 0x3
	.byte	0x10
	.byte	0x48
	.long	0x2741
	.uleb128 0x3
	.byte	0x10
	.byte	0x49
	.long	0x274c
	.uleb128 0x3
	.byte	0x10
	.byte	0x4a
	.long	0x2757
	.uleb128 0x3
	.byte	0x10
	.byte	0x4c
	.long	0x26de
	.uleb128 0x3
	.byte	0x10
	.byte	0x4d
	.long	0x26e9
	.uleb128 0x3
	.byte	0x10
	.byte	0x4e
	.long	0x26f4
	.uleb128 0x3
	.byte	0x10
	.byte	0x4f
	.long	0x26ff
	.uleb128 0x3
	.byte	0x10
	.byte	0x51
	.long	0x2788
	.uleb128 0x3
	.byte	0x10
	.byte	0x52
	.long	0x276d
	.uleb128 0x3
	.byte	0x11
	.byte	0x35
	.long	0x27a1
	.uleb128 0x3
	.byte	0x11
	.byte	0x36
	.long	0x28ce
	.uleb128 0x3
	.byte	0x11
	.byte	0x37
	.long	0x28e8
	.uleb128 0x5
	.long	.LASF89
	.byte	0xb
	.byte	0xe8
	.long	0x22ed
	.uleb128 0x3
	.byte	0x12
	.byte	0x7f
	.long	0x29aa
	.uleb128 0x3
	.byte	0x12
	.byte	0x80
	.long	0x29da
	.uleb128 0x3
	.byte	0x12
	.byte	0x86
	.long	0x2a3c
	.uleb128 0x3
	.byte	0x12
	.byte	0x89
	.long	0x2a5a
	.uleb128 0x3
	.byte	0x12
	.byte	0x8c
	.long	0x2a74
	.uleb128 0x3
	.byte	0x12
	.byte	0x8d
	.long	0x2a89
	.uleb128 0x3
	.byte	0x12
	.byte	0x8e
	.long	0x2a9e
	.uleb128 0x3
	.byte	0x12
	.byte	0x8f
	.long	0x2ab3
	.uleb128 0x3
	.byte	0x12
	.byte	0x91
	.long	0x2add
	.uleb128 0x3
	.byte	0x12
	.byte	0x94
	.long	0x2af8
	.uleb128 0x3
	.byte	0x12
	.byte	0x96
	.long	0x2b0e
	.uleb128 0x3
	.byte	0x12
	.byte	0x99
	.long	0x2b29
	.uleb128 0x3
	.byte	0x12
	.byte	0x9a
	.long	0x2b44
	.uleb128 0x3
	.byte	0x12
	.byte	0x9b
	.long	0x2b64
	.uleb128 0x3
	.byte	0x12
	.byte	0x9d
	.long	0x2b84
	.uleb128 0x3
	.byte	0x12
	.byte	0xa0
	.long	0x2ba5
	.uleb128 0x3
	.byte	0x12
	.byte	0xa3
	.long	0x2bb8
	.uleb128 0x3
	.byte	0x12
	.byte	0xa5
	.long	0x2bc4
	.uleb128 0x3
	.byte	0x12
	.byte	0xa6
	.long	0x2bd6
	.uleb128 0x3
	.byte	0x12
	.byte	0xa7
	.long	0x2bf6
	.uleb128 0x3
	.byte	0x12
	.byte	0xa8
	.long	0x2c15
	.uleb128 0x3
	.byte	0x12
	.byte	0xa9
	.long	0x2c34
	.uleb128 0x3
	.byte	0x12
	.byte	0xab
	.long	0x2c4a
	.uleb128 0x3
	.byte	0x12
	.byte	0xac
	.long	0x2c6a
	.uleb128 0x3
	.byte	0x12
	.byte	0xf0
	.long	0x2a0a
	.uleb128 0x3
	.byte	0x12
	.byte	0xf5
	.long	0x18ba
	.uleb128 0x3
	.byte	0x12
	.byte	0xf6
	.long	0x2c85
	.uleb128 0x3
	.byte	0x12
	.byte	0xf8
	.long	0x2ca0
	.uleb128 0x3
	.byte	0x12
	.byte	0xf9
	.long	0x2cf3
	.uleb128 0x3
	.byte	0x12
	.byte	0xfa
	.long	0x2cb5
	.uleb128 0x3
	.byte	0x12
	.byte	0xfb
	.long	0x2cd4
	.uleb128 0x3
	.byte	0x12
	.byte	0xfc
	.long	0x2d0d
	.uleb128 0x3
	.byte	0x13
	.byte	0x62
	.long	0x1d45
	.uleb128 0x3
	.byte	0x13
	.byte	0x63
	.long	0x2dec
	.uleb128 0x3
	.byte	0x13
	.byte	0x65
	.long	0x2e55
	.uleb128 0x3
	.byte	0x13
	.byte	0x66
	.long	0x2e6d
	.uleb128 0x3
	.byte	0x13
	.byte	0x67
	.long	0x2e82
	.uleb128 0x3
	.byte	0x13
	.byte	0x68
	.long	0x2e98
	.uleb128 0x3
	.byte	0x13
	.byte	0x69
	.long	0x2eae
	.uleb128 0x3
	.byte	0x13
	.byte	0x6a
	.long	0x2ec3
	.uleb128 0x3
	.byte	0x13
	.byte	0x6b
	.long	0x2ed9
	.uleb128 0x3
	.byte	0x13
	.byte	0x6c
	.long	0x2efa
	.uleb128 0x3
	.byte	0x13
	.byte	0x6d
	.long	0x2f1a
	.uleb128 0x3
	.byte	0x13
	.byte	0x71
	.long	0x2f34
	.uleb128 0x3
	.byte	0x13
	.byte	0x72
	.long	0x2f59
	.uleb128 0x3
	.byte	0x13
	.byte	0x74
	.long	0x2f78
	.uleb128 0x3
	.byte	0x13
	.byte	0x75
	.long	0x2f98
	.uleb128 0x3
	.byte	0x13
	.byte	0x76
	.long	0x2fb9
	.uleb128 0x3
	.byte	0x13
	.byte	0x78
	.long	0x2fcf
	.uleb128 0x3
	.byte	0x13
	.byte	0x79
	.long	0x2fe5
	.uleb128 0x3
	.byte	0x13
	.byte	0x7c
	.long	0x2ff1
	.uleb128 0x3
	.byte	0x13
	.byte	0x7e
	.long	0x3007
	.uleb128 0x3
	.byte	0x13
	.byte	0x83
	.long	0x3019
	.uleb128 0x3
	.byte	0x13
	.byte	0x84
	.long	0x302e
	.uleb128 0x3
	.byte	0x13
	.byte	0x85
	.long	0x3048
	.uleb128 0x3
	.byte	0x13
	.byte	0x87
	.long	0x305a
	.uleb128 0x3
	.byte	0x13
	.byte	0x88
	.long	0x3071
	.uleb128 0x3
	.byte	0x13
	.byte	0x8b
	.long	0x3096
	.uleb128 0x3
	.byte	0x13
	.byte	0x8d
	.long	0x30a1
	.uleb128 0x3
	.byte	0x13
	.byte	0x8f
	.long	0x30b6
	.uleb128 0x6e
	.string	"_V2"
	.byte	0x14
	.byte	0x47
	.uleb128 0x2c
	.byte	0x14
	.byte	0x47
	.long	0xc04
	.uleb128 0x2e
	.long	.LASF95
	.long	0xc76
	.uleb128 0x6f
	.long	.LASF90
	.byte	0x1
	.byte	0x15
	.value	0x259
	.byte	0x1
	.uleb128 0x58
	.long	.LASF91
	.byte	0x15
	.value	0x261
	.long	0x2972
	.uleb128 0x58
	.long	.LASF92
	.byte	0x15
	.value	0x262
	.long	0x2529
	.uleb128 0x70
	.long	.LASF90
	.byte	0x15
	.value	0x25d
	.long	.LASF130
	.byte	0x1
	.long	0xc52
	.long	0xc58
	.uleb128 0x7
	.long	0x30e7
	.byte	0
	.uleb128 0x71
	.long	.LASF93
	.byte	0x15
	.value	0x25e
	.long	.LASF94
	.byte	0x1
	.long	0xc69
	.uleb128 0x7
	.long	0x30e7
	.uleb128 0x7
	.long	0x1b93
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x16
	.byte	0x52
	.long	0x30f8
	.uleb128 0x3
	.byte	0x16
	.byte	0x53
	.long	0x30ed
	.uleb128 0x3
	.byte	0x16
	.byte	0x54
	.long	0x1b28
	.uleb128 0x3
	.byte	0x16
	.byte	0x5c
	.long	0x3109
	.uleb128 0x3
	.byte	0x16
	.byte	0x65
	.long	0x3123
	.uleb128 0x3
	.byte	0x16
	.byte	0x68
	.long	0x313d
	.uleb128 0x3
	.byte	0x16
	.byte	0x69
	.long	0x3152
	.uleb128 0x2e
	.long	.LASF96
	.long	0xcc3
	.uleb128 0x9
	.long	.LASF97
	.long	0x1b87
	.uleb128 0x2f
	.long	.LASF99
	.long	0x5d5
	.byte	0
	.uleb128 0x2e
	.long	.LASF98
	.long	0xcdf
	.uleb128 0x9
	.long	.LASF97
	.long	0x1dba
	.uleb128 0x2f
	.long	.LASF99
	.long	0x7ae
	.byte	0
	.uleb128 0x2e
	.long	.LASF100
	.long	0xcfb
	.uleb128 0x9
	.long	.LASF97
	.long	0x1b87
	.uleb128 0x2f
	.long	.LASF99
	.long	0x5d5
	.byte	0
	.uleb128 0x2e
	.long	.LASF101
	.long	0xd17
	.uleb128 0x9
	.long	.LASF97
	.long	0x1dba
	.uleb128 0x2f
	.long	.LASF99
	.long	0x7ae
	.byte	0
	.uleb128 0x5
	.long	.LASF102
	.byte	0x17
	.byte	0x8a
	.long	0xcdf
	.uleb128 0x72
	.string	"cin"
	.byte	0x5
	.byte	0x3c
	.long	.LASF686
	.long	0xd17
	.uleb128 0x5
	.long	.LASF103
	.byte	0x17
	.byte	0x8d
	.long	0xca7
	.uleb128 0x1c
	.long	.LASF104
	.byte	0x5
	.byte	0x3d
	.long	.LASF106
	.long	0xd31
	.uleb128 0x1c
	.long	.LASF107
	.byte	0x5
	.byte	0x3e
	.long	.LASF108
	.long	0xd31
	.uleb128 0x1c
	.long	.LASF109
	.byte	0x5
	.byte	0x3f
	.long	.LASF110
	.long	0xd31
	.uleb128 0x5
	.long	.LASF111
	.byte	0x17
	.byte	0xb2
	.long	0xcfb
	.uleb128 0x1c
	.long	.LASF112
	.byte	0x5
	.byte	0x42
	.long	.LASF113
	.long	0xd69
	.uleb128 0x5
	.long	.LASF114
	.byte	0x17
	.byte	0xb5
	.long	0xcc3
	.uleb128 0x1c
	.long	.LASF115
	.byte	0x5
	.byte	0x43
	.long	.LASF116
	.long	0xd83
	.uleb128 0x1c
	.long	.LASF117
	.byte	0x5
	.byte	0x44
	.long	.LASF118
	.long	0xd83
	.uleb128 0x1c
	.long	.LASF119
	.byte	0x5
	.byte	0x45
	.long	.LASF120
	.long	0xd83
	.uleb128 0x73
	.long	.LASF561
	.byte	0x5
	.byte	0x4a
	.long	0xc1b
	.uleb128 0x3
	.byte	0x18
	.byte	0x3c
	.long	0x2909
	.uleb128 0x3
	.byte	0x18
	.byte	0x3d
	.long	0x28f9
	.uleb128 0x3
	.byte	0x18
	.byte	0x3e
	.long	0x2126
	.uleb128 0x3
	.byte	0x18
	.byte	0x40
	.long	0x326f
	.uleb128 0x3
	.byte	0x18
	.byte	0x41
	.long	0x327a
	.uleb128 0x3
	.byte	0x18
	.byte	0x42
	.long	0x3294
	.uleb128 0x3
	.byte	0x18
	.byte	0x43
	.long	0x32af
	.uleb128 0x3
	.byte	0x18
	.byte	0x44
	.long	0x32ca
	.uleb128 0x3
	.byte	0x18
	.byte	0x45
	.long	0x32df
	.uleb128 0x3
	.byte	0x18
	.byte	0x46
	.long	0x32fa
	.uleb128 0x3
	.byte	0x18
	.byte	0x47
	.long	0x330f
	.uleb128 0x39
	.long	.LASF121
	.byte	0x2
	.byte	0x3b
	.long	0x15eb
	.uleb128 0x74
	.string	"_V2"
	.byte	0x2
	.value	0x32b
	.long	0xe94
	.uleb128 0x59
	.long	.LASF229
	.byte	0x1
	.byte	0x2
	.value	0x332
	.uleb128 0x75
	.long	.LASF222
	.byte	0x2
	.value	0x33d
	.long	0x2530
	.byte	0x1
	.byte	0
	.uleb128 0x1a
	.long	.LASF122
	.byte	0x2
	.value	0x337
	.long	0x111f
	.uleb128 0xc
	.long	0xe41
	.uleb128 0x1b
	.string	"now"
	.byte	0x2
	.value	0x340
	.long	.LASF123
	.long	0xe41
	.uleb128 0x14
	.long	.LASF124
	.byte	0x2
	.value	0x344
	.long	.LASF125
	.long	0x28f9
	.long	0xe7c
	.uleb128 0x2
	.long	0x335e
	.byte	0
	.uleb128 0x3d
	.long	.LASF126
	.byte	0x2
	.value	0x34b
	.long	.LASF127
	.long	0xe41
	.uleb128 0x2
	.long	0x28f9
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5a
	.byte	0x2
	.value	0x32b
	.long	0xe1e
	.uleb128 0x1d
	.long	.LASF128
	.byte	0x8
	.byte	0x2
	.value	0x12f
	.long	0x111a
	.uleb128 0x5b
	.string	"rep"
	.byte	0x2
	.value	0x131
	.long	0x22ed
	.uleb128 0xc
	.long	0xea9
	.uleb128 0x45
	.string	"__r"
	.byte	0x2
	.value	0x1b7
	.long	0xea9
	.byte	0
	.byte	0x3
	.uleb128 0x25
	.long	.LASF129
	.byte	0x2
	.value	0x13a
	.long	.LASF131
	.byte	0x1
	.long	0xedd
	.long	0xee3
	.uleb128 0x7
	.long	0x3330
	.byte	0
	.uleb128 0x25
	.long	.LASF129
	.byte	0x2
	.value	0x13f
	.long	.LASF132
	.byte	0x1
	.long	0xef8
	.long	0xf03
	.uleb128 0x7
	.long	0x3330
	.uleb128 0x2
	.long	0x333b
	.byte	0
	.uleb128 0x25
	.long	.LASF133
	.byte	0x2
	.value	0x151
	.long	.LASF134
	.byte	0x1
	.long	0xf18
	.long	0xf23
	.uleb128 0x7
	.long	0x3330
	.uleb128 0x7
	.long	0x1b93
	.byte	0
	.uleb128 0x5c
	.long	.LASF15
	.byte	0x2
	.value	0x152
	.long	.LASF178
	.long	0x3341
	.byte	0x1
	.long	0xf3c
	.long	0xf47
	.uleb128 0x7
	.long	0x3330
	.uleb128 0x2
	.long	0x333b
	.byte	0
	.uleb128 0xf
	.long	.LASF135
	.byte	0x2
	.value	0x156
	.long	.LASF136
	.long	0xea9
	.long	0xf5f
	.long	0xf65
	.uleb128 0x7
	.long	0x3347
	.byte	0
	.uleb128 0xf
	.long	.LASF137
	.byte	0x2
	.value	0x15b
	.long	.LASF138
	.long	0xe9c
	.long	0xf7d
	.long	0xf83
	.uleb128 0x7
	.long	0x3347
	.byte	0
	.uleb128 0xf
	.long	.LASF139
	.byte	0x2
	.value	0x15f
	.long	.LASF140
	.long	0xe9c
	.long	0xf9b
	.long	0xfa1
	.uleb128 0x7
	.long	0x3347
	.byte	0
	.uleb128 0xf
	.long	.LASF141
	.byte	0x2
	.value	0x163
	.long	.LASF142
	.long	0x3341
	.long	0xfb9
	.long	0xfbf
	.uleb128 0x7
	.long	0x3330
	.byte	0
	.uleb128 0xf
	.long	.LASF141
	.byte	0x2
	.value	0x16a
	.long	.LASF143
	.long	0xe9c
	.long	0xfd7
	.long	0xfe2
	.uleb128 0x7
	.long	0x3330
	.uleb128 0x2
	.long	0x1b93
	.byte	0
	.uleb128 0xf
	.long	.LASF144
	.byte	0x2
	.value	0x16e
	.long	.LASF145
	.long	0x3341
	.long	0xffa
	.long	0x1000
	.uleb128 0x7
	.long	0x3330
	.byte	0
	.uleb128 0xf
	.long	.LASF144
	.byte	0x2
	.value	0x175
	.long	.LASF146
	.long	0xe9c
	.long	0x1018
	.long	0x1023
	.uleb128 0x7
	.long	0x3330
	.uleb128 0x2
	.long	0x1b93
	.byte	0
	.uleb128 0xf
	.long	.LASF147
	.byte	0x2
	.value	0x179
	.long	.LASF148
	.long	0x3341
	.long	0x103b
	.long	0x1046
	.uleb128 0x7
	.long	0x3330
	.uleb128 0x2
	.long	0x333b
	.byte	0
	.uleb128 0xf
	.long	.LASF149
	.byte	0x2
	.value	0x180
	.long	.LASF150
	.long	0x3341
	.long	0x105e
	.long	0x1069
	.uleb128 0x7
	.long	0x3330
	.uleb128 0x2
	.long	0x333b
	.byte	0
	.uleb128 0xf
	.long	.LASF151
	.byte	0x2
	.value	0x187
	.long	.LASF152
	.long	0x3341
	.long	0x1081
	.long	0x108c
	.uleb128 0x7
	.long	0x3330
	.uleb128 0x2
	.long	0x3352
	.byte	0
	.uleb128 0xf
	.long	.LASF153
	.byte	0x2
	.value	0x18e
	.long	.LASF154
	.long	0x3341
	.long	0x10a4
	.long	0x10af
	.uleb128 0x7
	.long	0x3330
	.uleb128 0x2
	.long	0x3352
	.byte	0
	.uleb128 0x5d
	.long	.LASF155
	.byte	0x2
	.value	0x1ab
	.long	.LASF191
	.long	0xe9c
	.uleb128 0x1b
	.string	"min"
	.byte	0x2
	.value	0x1af
	.long	.LASF156
	.long	0xe9c
	.uleb128 0x1b
	.string	"max"
	.byte	0x2
	.value	0x1b3
	.long	.LASF157
	.long	0xe9c
	.uleb128 0x46
	.long	.LASF158
	.byte	0x2
	.value	0x147
	.long	.LASF159
	.long	0x10fc
	.long	0x1107
	.uleb128 0x9
	.long	.LASF160
	.long	0x22ed
	.uleb128 0x7
	.long	0x3330
	.uleb128 0x2
	.long	0x3358
	.byte	0
	.uleb128 0x9
	.long	.LASF161
	.long	0x22ed
	.uleb128 0x9
	.long	.LASF162
	.long	0x16ab
	.byte	0
	.uleb128 0xc
	.long	0xe9c
	.uleb128 0x1d
	.long	.LASF163
	.byte	0x8
	.byte	0x2
	.value	0x268
	.long	0x121b
	.uleb128 0x1a
	.long	.LASF129
	.byte	0x2
	.value	0x26b
	.long	0xe9c
	.uleb128 0xc
	.long	0x112c
	.uleb128 0x45
	.string	"__d"
	.byte	0x2
	.value	0x29b
	.long	0x112c
	.byte	0
	.byte	0x3
	.uleb128 0x5e
	.long	.LASF122
	.byte	0x2
	.value	0x26f
	.long	.LASF164
	.long	0x115f
	.long	0x1165
	.uleb128 0x7
	.long	0x3364
	.byte	0
	.uleb128 0x46
	.long	.LASF122
	.byte	0x2
	.value	0x272
	.long	.LASF165
	.long	0x1179
	.long	0x1184
	.uleb128 0x7
	.long	0x3364
	.uleb128 0x2
	.long	0x336a
	.byte	0
	.uleb128 0xf
	.long	.LASF166
	.byte	0x2
	.value	0x27f
	.long	.LASF167
	.long	0x112c
	.long	0x119c
	.long	0x11a2
	.uleb128 0x7
	.long	0x3370
	.byte	0
	.uleb128 0xf
	.long	.LASF147
	.byte	0x2
	.value	0x284
	.long	.LASF168
	.long	0x337b
	.long	0x11ba
	.long	0x11c5
	.uleb128 0x7
	.long	0x3364
	.uleb128 0x2
	.long	0x336a
	.byte	0
	.uleb128 0xf
	.long	.LASF149
	.byte	0x2
	.value	0x28b
	.long	.LASF169
	.long	0x337b
	.long	0x11dd
	.long	0x11e8
	.uleb128 0x7
	.long	0x3364
	.uleb128 0x2
	.long	0x336a
	.byte	0
	.uleb128 0x1b
	.string	"min"
	.byte	0x2
	.value	0x293
	.long	.LASF170
	.long	0x111f
	.uleb128 0x1b
	.string	"max"
	.byte	0x2
	.value	0x297
	.long	.LASF171
	.long	0x111f
	.uleb128 0x9
	.long	.LASF172
	.long	0xe2a
	.uleb128 0x9
	.long	.LASF173
	.long	0xe9c
	.byte	0
	.uleb128 0xc
	.long	0x111f
	.uleb128 0x1d
	.long	.LASF174
	.byte	0x8
	.byte	0x2
	.value	0x12f
	.long	0x14cf
	.uleb128 0x5b
	.string	"rep"
	.byte	0x2
	.value	0x131
	.long	0x1ab8
	.uleb128 0xc
	.long	0x122d
	.uleb128 0x45
	.string	"__r"
	.byte	0x2
	.value	0x1b7
	.long	0x122d
	.byte	0
	.byte	0x3
	.uleb128 0x25
	.long	.LASF129
	.byte	0x2
	.value	0x13a
	.long	.LASF175
	.byte	0x1
	.long	0x1261
	.long	0x1267
	.uleb128 0x7
	.long	0x338f
	.byte	0
	.uleb128 0x25
	.long	.LASF129
	.byte	0x2
	.value	0x13f
	.long	.LASF176
	.byte	0x1
	.long	0x127c
	.long	0x1287
	.uleb128 0x7
	.long	0x338f
	.uleb128 0x2
	.long	0x339a
	.byte	0
	.uleb128 0x25
	.long	.LASF133
	.byte	0x2
	.value	0x151
	.long	.LASF177
	.byte	0x1
	.long	0x129c
	.long	0x12a7
	.uleb128 0x7
	.long	0x338f
	.uleb128 0x7
	.long	0x1b93
	.byte	0
	.uleb128 0x5c
	.long	.LASF15
	.byte	0x2
	.value	0x152
	.long	.LASF179
	.long	0x33a0
	.byte	0x1
	.long	0x12c0
	.long	0x12cb
	.uleb128 0x7
	.long	0x338f
	.uleb128 0x2
	.long	0x339a
	.byte	0
	.uleb128 0xf
	.long	.LASF135
	.byte	0x2
	.value	0x156
	.long	.LASF180
	.long	0x122d
	.long	0x12e3
	.long	0x12e9
	.uleb128 0x7
	.long	0x33a6
	.byte	0
	.uleb128 0xf
	.long	.LASF137
	.byte	0x2
	.value	0x15b
	.long	.LASF181
	.long	0x1220
	.long	0x1301
	.long	0x1307
	.uleb128 0x7
	.long	0x33a6
	.byte	0
	.uleb128 0xf
	.long	.LASF139
	.byte	0x2
	.value	0x15f
	.long	.LASF182
	.long	0x1220
	.long	0x131f
	.long	0x1325
	.uleb128 0x7
	.long	0x33a6
	.byte	0
	.uleb128 0xf
	.long	.LASF141
	.byte	0x2
	.value	0x163
	.long	.LASF183
	.long	0x33a0
	.long	0x133d
	.long	0x1343
	.uleb128 0x7
	.long	0x338f
	.byte	0
	.uleb128 0xf
	.long	.LASF141
	.byte	0x2
	.value	0x16a
	.long	.LASF184
	.long	0x1220
	.long	0x135b
	.long	0x1366
	.uleb128 0x7
	.long	0x338f
	.uleb128 0x2
	.long	0x1b93
	.byte	0
	.uleb128 0xf
	.long	.LASF144
	.byte	0x2
	.value	0x16e
	.long	.LASF185
	.long	0x33a0
	.long	0x137e
	.long	0x1384
	.uleb128 0x7
	.long	0x338f
	.byte	0
	.uleb128 0xf
	.long	.LASF144
	.byte	0x2
	.value	0x175
	.long	.LASF186
	.long	0x1220
	.long	0x139c
	.long	0x13a7
	.uleb128 0x7
	.long	0x338f
	.uleb128 0x2
	.long	0x1b93
	.byte	0
	.uleb128 0xf
	.long	.LASF147
	.byte	0x2
	.value	0x179
	.long	.LASF187
	.long	0x33a0
	.long	0x13bf
	.long	0x13ca
	.uleb128 0x7
	.long	0x338f
	.uleb128 0x2
	.long	0x339a
	.byte	0
	.uleb128 0xf
	.long	.LASF149
	.byte	0x2
	.value	0x180
	.long	.LASF188
	.long	0x33a0
	.long	0x13e2
	.long	0x13ed
	.uleb128 0x7
	.long	0x338f
	.uleb128 0x2
	.long	0x339a
	.byte	0
	.uleb128 0xf
	.long	.LASF151
	.byte	0x2
	.value	0x187
	.long	.LASF189
	.long	0x33a0
	.long	0x1405
	.long	0x1410
	.uleb128 0x7
	.long	0x338f
	.uleb128 0x2
	.long	0x33b1
	.byte	0
	.uleb128 0xf
	.long	.LASF153
	.byte	0x2
	.value	0x18e
	.long	.LASF190
	.long	0x33a0
	.long	0x1428
	.long	0x1433
	.uleb128 0x7
	.long	0x338f
	.uleb128 0x2
	.long	0x33b1
	.byte	0
	.uleb128 0x5d
	.long	.LASF155
	.byte	0x2
	.value	0x1ab
	.long	.LASF192
	.long	0x1220
	.uleb128 0x1b
	.string	"min"
	.byte	0x2
	.value	0x1af
	.long	.LASF193
	.long	0x1220
	.uleb128 0x1b
	.string	"max"
	.byte	0x2
	.value	0x1b3
	.long	.LASF194
	.long	0x1220
	.uleb128 0x5e
	.long	.LASF128
	.byte	0x2
	.value	0x14e
	.long	.LASF195
	.long	0x1489
	.long	0x1494
	.uleb128 0x9
	.long	.LASF160
	.long	0x22ed
	.uleb128 0x9
	.long	.LASF196
	.long	0x16ab
	.uleb128 0x7
	.long	0x338f
	.uleb128 0x2
	.long	0x333b
	.byte	0
	.uleb128 0x46
	.long	.LASF197
	.byte	0x2
	.value	0x147
	.long	.LASF198
	.long	0x14b1
	.long	0x14bc
	.uleb128 0x9
	.long	.LASF160
	.long	0x1ab8
	.uleb128 0x7
	.long	0x338f
	.uleb128 0x2
	.long	0x33b7
	.byte	0
	.uleb128 0x9
	.long	.LASF161
	.long	0x1ab8
	.uleb128 0x2f
	.long	.LASF162
	.long	0x1763
	.byte	0
	.uleb128 0xc
	.long	0x1220
	.uleb128 0x12
	.long	.LASF199
	.byte	0x1
	.byte	0x2
	.byte	0x9b
	.long	0x153d
	.uleb128 0x1f
	.long	.LASF200
	.byte	0x2
	.byte	0x9f
	.long	.LASF201
	.long	0x1220
	.long	0x150b
	.uleb128 0x9
	.long	.LASF161
	.long	0x22ed
	.uleb128 0x9
	.long	.LASF162
	.long	0x16ab
	.uleb128 0x2
	.long	0x333b
	.byte	0
	.uleb128 0x9
	.long	.LASF202
	.long	0x1220
	.uleb128 0x19
	.string	"_CF"
	.long	0x16ab
	.uleb128 0x19
	.string	"_CR"
	.long	0x1ab8
	.uleb128 0x20
	.long	.LASF203
	.long	0x2529
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.long	.LASF204
	.long	0x2529
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LASF205
	.byte	0x2
	.byte	0xc2
	.long	.LASF206
	.long	0x17e9
	.long	0x1571
	.uleb128 0x9
	.long	.LASF202
	.long	0x1220
	.uleb128 0x9
	.long	.LASF161
	.long	0x22ed
	.uleb128 0x9
	.long	.LASF162
	.long	0x16ab
	.uleb128 0x2
	.long	0x333b
	.byte	0
	.uleb128 0x14
	.long	.LASF207
	.byte	0x2
	.value	0x2f0
	.long	.LASF208
	.long	0x17cb
	.long	0x15ab
	.uleb128 0x9
	.long	.LASF172
	.long	0xe2a
	.uleb128 0x9
	.long	.LASF209
	.long	0xe9c
	.uleb128 0x9
	.long	.LASF210
	.long	0xe9c
	.uleb128 0x2
	.long	0x5760
	.uleb128 0x2
	.long	0x5760
	.byte	0
	.uleb128 0x3d
	.long	.LASF211
	.byte	0x2
	.value	0x1cb
	.long	.LASF212
	.long	0x17cb
	.uleb128 0x9
	.long	.LASF213
	.long	0x22ed
	.uleb128 0x9
	.long	.LASF214
	.long	0x16ab
	.uleb128 0x9
	.long	.LASF160
	.long	0x22ed
	.uleb128 0x9
	.long	.LASF196
	.long	0x16ab
	.uleb128 0x2
	.long	0x333b
	.uleb128 0x2
	.long	0x333b
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF215
	.byte	0x1
	.byte	0xa
	.byte	0x45
	.long	0x1646
	.uleb128 0x3a
	.long	.LASF32
	.byte	0xa
	.byte	0x47
	.long	0x22f4
	.uleb128 0x5
	.long	.LASF28
	.byte	0xa
	.byte	0x48
	.long	0x22ed
	.uleb128 0x2d
	.long	.LASF216
	.byte	0xa
	.byte	0x4a
	.long	.LASF217
	.long	0x1602
	.long	0x1624
	.long	0x162a
	.uleb128 0x7
	.long	0x3324
	.byte	0
	.uleb128 0x19
	.string	"_Tp"
	.long	0x22ed
	.uleb128 0x3b
	.string	"__v"
	.long	0x22ed
	.byte	0x8
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x15eb
	.uleb128 0x12
	.long	.LASF218
	.byte	0x1
	.byte	0xa
	.byte	0x45
	.long	0x16a6
	.uleb128 0x3a
	.long	.LASF32
	.byte	0xa
	.byte	0x47
	.long	0x22f4
	.uleb128 0x5
	.long	.LASF28
	.byte	0xa
	.byte	0x48
	.long	0x22ed
	.uleb128 0x2d
	.long	.LASF219
	.byte	0xa
	.byte	0x4a
	.long	.LASF220
	.long	0x1662
	.long	0x1684
	.long	0x168a
	.uleb128 0x7
	.long	0x332a
	.byte	0
	.uleb128 0x19
	.string	"_Tp"
	.long	0x22ed
	.uleb128 0x3b
	.string	"__v"
	.long	0x22ed
	.byte	0x8
	.byte	0
	.byte	0xca
	.byte	0x9a
	.byte	0x3b
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x164b
	.uleb128 0x1d
	.long	.LASF221
	.byte	0x1
	.byte	0x1a
	.value	0x107
	.long	0x1707
	.uleb128 0x26
	.string	"num"
	.byte	0x1a
	.value	0x10e
	.long	0x2783
	.byte	0x8
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.string	"den"
	.byte	0x1a
	.value	0x111
	.long	0x2783
	.byte	0x8
	.byte	0
	.byte	0xca
	.byte	0x9a
	.byte	0x3b
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LASF223
	.long	0x22ed
	.byte	0x8
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LASF224
	.long	0x22ed
	.byte	0x8
	.byte	0
	.byte	0xca
	.byte	0x9a
	.byte	0x3b
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	.LASF225
	.byte	0x1
	.byte	0x1a
	.value	0x107
	.long	0x1763
	.uleb128 0x26
	.string	"num"
	.byte	0x1a
	.value	0x10e
	.long	0x2783
	.byte	0x8
	.byte	0
	.byte	0xca
	.byte	0x9a
	.byte	0x3b
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.string	"den"
	.byte	0x1a
	.value	0x111
	.long	0x2783
	.byte	0x8
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LASF223
	.long	0x22ed
	.byte	0x8
	.byte	0
	.byte	0xca
	.byte	0x9a
	.byte	0x3b
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LASF224
	.long	0x22ed
	.byte	0x8
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	.LASF226
	.byte	0x1
	.byte	0x1a
	.value	0x107
	.long	0x17bf
	.uleb128 0x26
	.string	"num"
	.byte	0x1a
	.value	0x10e
	.long	0x2783
	.byte	0x8
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.string	"den"
	.byte	0x1a
	.value	0x111
	.long	0x2783
	.byte	0x8
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LASF223
	.long	0x22ed
	.byte	0x8
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x76
	.long	.LASF224
	.long	0x22ed
	.byte	0x8
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF227
	.byte	0x1
	.byte	0xa
	.byte	0xc1
	.long	0x17e0
	.uleb128 0x5
	.long	.LASF228
	.byte	0xa
	.byte	0xc2
	.long	0xe9c
	.uleb128 0x19
	.string	"_Tp"
	.long	0xe9c
	.byte	0
	.uleb128 0x59
	.long	.LASF230
	.byte	0x1
	.byte	0xa
	.value	0x86c
	.uleb128 0x1a
	.long	.LASF228
	.byte	0xa
	.value	0x86d
	.long	0x1220
	.uleb128 0x19
	.string	"_Tp"
	.long	0x1220
	.byte	0
	.byte	0
	.uleb128 0x39
	.long	.LASF231
	.byte	0xb
	.byte	0xff
	.long	0x1aa3
	.uleb128 0x56
	.long	.LASF35
	.byte	0xb
	.value	0x101
	.uleb128 0x5a
	.byte	0xb
	.value	0x101
	.long	0x180b
	.uleb128 0x3
	.byte	0x7
	.byte	0xf8
	.long	0x2497
	.uleb128 0x18
	.byte	0x7
	.value	0x101
	.long	0x24b2
	.uleb128 0x18
	.byte	0x7
	.value	0x102
	.long	0x24d9
	.uleb128 0x42
	.long	.LASF232
	.byte	0x1b
	.byte	0x23
	.uleb128 0x3
	.byte	0x1c
	.byte	0x2c
	.long	0x7a3
	.uleb128 0x3
	.byte	0x1c
	.byte	0x2d
	.long	0xa55
	.uleb128 0x12
	.long	.LASF233
	.byte	0x1
	.byte	0x1d
	.byte	0x37
	.long	0x1889
	.uleb128 0xe
	.long	.LASF234
	.byte	0x1d
	.byte	0x3a
	.long	0x1b9a
	.uleb128 0xe
	.long	.LASF235
	.byte	0x1d
	.byte	0x3b
	.long	0x1b9a
	.uleb128 0xe
	.long	.LASF236
	.byte	0x1d
	.byte	0x3f
	.long	0x2530
	.uleb128 0xe
	.long	.LASF237
	.byte	0x1d
	.byte	0x40
	.long	0x1b9a
	.uleb128 0x9
	.long	.LASF238
	.long	0x1b93
	.byte	0
	.uleb128 0x3
	.byte	0x12
	.byte	0xc8
	.long	0x2a0a
	.uleb128 0x3
	.byte	0x12
	.byte	0xd8
	.long	0x2c85
	.uleb128 0x3
	.byte	0x12
	.byte	0xe3
	.long	0x2ca0
	.uleb128 0x3
	.byte	0x12
	.byte	0xe4
	.long	0x2cb5
	.uleb128 0x3
	.byte	0x12
	.byte	0xe5
	.long	0x2cd4
	.uleb128 0x3
	.byte	0x12
	.byte	0xe7
	.long	0x2cf3
	.uleb128 0x3
	.byte	0x12
	.byte	0xe8
	.long	0x2d0d
	.uleb128 0x77
	.string	"div"
	.byte	0x12
	.byte	0xd5
	.long	.LASF687
	.long	0x2a0a
	.long	0x18d8
	.uleb128 0x2
	.long	0x24d2
	.uleb128 0x2
	.long	0x24d2
	.byte	0
	.uleb128 0x12
	.long	.LASF239
	.byte	0x1
	.byte	0x1d
	.byte	0x64
	.long	0x191a
	.uleb128 0xe
	.long	.LASF240
	.byte	0x1d
	.byte	0x67
	.long	0x1b9a
	.uleb128 0xe
	.long	.LASF236
	.byte	0x1d
	.byte	0x6a
	.long	0x2530
	.uleb128 0xe
	.long	.LASF241
	.byte	0x1d
	.byte	0x6b
	.long	0x1b9a
	.uleb128 0xe
	.long	.LASF242
	.byte	0x1d
	.byte	0x6c
	.long	0x1b9a
	.uleb128 0x9
	.long	.LASF238
	.long	0x1ab1
	.byte	0
	.uleb128 0x12
	.long	.LASF243
	.byte	0x1
	.byte	0x1d
	.byte	0x64
	.long	0x195c
	.uleb128 0xe
	.long	.LASF240
	.byte	0x1d
	.byte	0x67
	.long	0x1b9a
	.uleb128 0xe
	.long	.LASF236
	.byte	0x1d
	.byte	0x6a
	.long	0x2530
	.uleb128 0xe
	.long	.LASF241
	.byte	0x1d
	.byte	0x6b
	.long	0x1b9a
	.uleb128 0xe
	.long	.LASF242
	.byte	0x1d
	.byte	0x6c
	.long	0x1b9a
	.uleb128 0x9
	.long	.LASF238
	.long	0x1ab8
	.byte	0
	.uleb128 0x12
	.long	.LASF244
	.byte	0x1
	.byte	0x1d
	.byte	0x64
	.long	0x199e
	.uleb128 0xe
	.long	.LASF240
	.byte	0x1d
	.byte	0x67
	.long	0x1b9a
	.uleb128 0xe
	.long	.LASF236
	.byte	0x1d
	.byte	0x6a
	.long	0x2530
	.uleb128 0xe
	.long	.LASF241
	.byte	0x1d
	.byte	0x6b
	.long	0x1b9a
	.uleb128 0xe
	.long	.LASF242
	.byte	0x1d
	.byte	0x6c
	.long	0x1b9a
	.uleb128 0x9
	.long	.LASF238
	.long	0x1ac4
	.byte	0
	.uleb128 0x12
	.long	.LASF245
	.byte	0x1
	.byte	0x1d
	.byte	0x37
	.long	0x19e0
	.uleb128 0xe
	.long	.LASF234
	.byte	0x1d
	.byte	0x3a
	.long	0x1add
	.uleb128 0xe
	.long	.LASF235
	.byte	0x1d
	.byte	0x3b
	.long	0x1add
	.uleb128 0xe
	.long	.LASF236
	.byte	0x1d
	.byte	0x3f
	.long	0x2530
	.uleb128 0xe
	.long	.LASF237
	.byte	0x1d
	.byte	0x40
	.long	0x1b9a
	.uleb128 0x9
	.long	.LASF238
	.long	0x1ad6
	.byte	0
	.uleb128 0x12
	.long	.LASF246
	.byte	0x1
	.byte	0x1d
	.byte	0x37
	.long	0x1a22
	.uleb128 0xe
	.long	.LASF234
	.byte	0x1d
	.byte	0x3a
	.long	0x1b8e
	.uleb128 0xe
	.long	.LASF235
	.byte	0x1d
	.byte	0x3b
	.long	0x1b8e
	.uleb128 0xe
	.long	.LASF236
	.byte	0x1d
	.byte	0x3f
	.long	0x2530
	.uleb128 0xe
	.long	.LASF237
	.byte	0x1d
	.byte	0x40
	.long	0x1b9a
	.uleb128 0x9
	.long	.LASF238
	.long	0x1b87
	.byte	0
	.uleb128 0x12
	.long	.LASF247
	.byte	0x1
	.byte	0x1d
	.byte	0x37
	.long	0x1a64
	.uleb128 0xe
	.long	.LASF234
	.byte	0x1d
	.byte	0x3a
	.long	0x255c
	.uleb128 0xe
	.long	.LASF235
	.byte	0x1d
	.byte	0x3b
	.long	0x255c
	.uleb128 0xe
	.long	.LASF236
	.byte	0x1d
	.byte	0x3f
	.long	0x2530
	.uleb128 0xe
	.long	.LASF237
	.byte	0x1d
	.byte	0x40
	.long	0x1b9a
	.uleb128 0x9
	.long	.LASF238
	.long	0x2555
	.byte	0
	.uleb128 0x78
	.long	.LASF248
	.byte	0x1
	.byte	0x1d
	.byte	0x37
	.uleb128 0xe
	.long	.LASF234
	.byte	0x1d
	.byte	0x3a
	.long	0x22f4
	.uleb128 0xe
	.long	.LASF235
	.byte	0x1d
	.byte	0x3b
	.long	0x22f4
	.uleb128 0xe
	.long	.LASF236
	.byte	0x1d
	.byte	0x3f
	.long	0x2530
	.uleb128 0xe
	.long	.LASF237
	.byte	0x1d
	.byte	0x40
	.long	0x1b9a
	.uleb128 0x9
	.long	.LASF238
	.long	0x22ed
	.byte	0
	.byte	0
	.uleb128 0x15
	.byte	0x20
	.byte	0x3
	.long	.LASF249
	.uleb128 0x15
	.byte	0x10
	.byte	0x4
	.long	.LASF250
	.uleb128 0x15
	.byte	0x4
	.byte	0x4
	.long	.LASF251
	.uleb128 0x15
	.byte	0x8
	.byte	0x4
	.long	.LASF252
	.uleb128 0xc
	.long	0x1ab8
	.uleb128 0x15
	.byte	0x10
	.byte	0x4
	.long	.LASF253
	.uleb128 0x5
	.long	.LASF72
	.byte	0x1e
	.byte	0xd8
	.long	0x1ad6
	.uleb128 0x15
	.byte	0x8
	.byte	0x7
	.long	.LASF254
	.uleb128 0xc
	.long	0x1ad6
	.uleb128 0x12
	.long	.LASF255
	.byte	0x18
	.byte	0x19
	.byte	0
	.long	0x1b1f
	.uleb128 0x4
	.long	.LASF257
	.byte	0x19
	.byte	0
	.long	0x1b1f
	.byte	0
	.uleb128 0x4
	.long	.LASF258
	.byte	0x19
	.byte	0
	.long	0x1b1f
	.byte	0x4
	.uleb128 0x4
	.long	.LASF259
	.byte	0x19
	.byte	0
	.long	0x1b26
	.byte	0x8
	.uleb128 0x4
	.long	.LASF260
	.byte	0x19
	.byte	0
	.long	0x1b26
	.byte	0x10
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.byte	0x7
	.long	.LASF261
	.uleb128 0x79
	.byte	0x8
	.uleb128 0x5
	.long	.LASF262
	.byte	0x1f
	.byte	0x14
	.long	0x1b1f
	.uleb128 0x30
	.byte	0x8
	.byte	0x20
	.byte	0xe
	.long	.LASF462
	.long	0x1b77
	.uleb128 0x7a
	.byte	0x4
	.byte	0x20
	.byte	0x11
	.long	0x1b5e
	.uleb128 0x5f
	.long	.LASF263
	.byte	0x20
	.byte	0x12
	.long	0x1b1f
	.uleb128 0x5f
	.long	.LASF264
	.byte	0x20
	.byte	0x13
	.long	0x1b77
	.byte	0
	.uleb128 0x4
	.long	.LASF265
	.byte	0x20
	.byte	0xf
	.long	0x1b93
	.byte	0
	.uleb128 0x4
	.long	.LASF39
	.byte	0x20
	.byte	0x14
	.long	0x1b3f
	.byte	0x4
	.byte	0
	.uleb128 0x31
	.long	0x1b87
	.long	0x1b87
	.uleb128 0x3e
	.long	0x1ad6
	.byte	0x3
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.byte	0x6
	.long	.LASF266
	.uleb128 0xc
	.long	0x1b87
	.uleb128 0x7b
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xc
	.long	0x1b93
	.uleb128 0x5
	.long	.LASF267
	.byte	0x20
	.byte	0x15
	.long	0x1b33
	.uleb128 0x5
	.long	.LASF268
	.byte	0x21
	.byte	0x6
	.long	0x1b9f
	.uleb128 0xc
	.long	0x1baa
	.uleb128 0x5
	.long	.LASF269
	.byte	0x22
	.byte	0x5
	.long	0x1bc5
	.uleb128 0x12
	.long	.LASF270
	.byte	0xd8
	.byte	0x23
	.byte	0xf5
	.long	0x1d45
	.uleb128 0x4
	.long	.LASF271
	.byte	0x23
	.byte	0xf6
	.long	0x1b93
	.byte	0
	.uleb128 0x4
	.long	.LASF272
	.byte	0x23
	.byte	0xfb
	.long	0x2073
	.byte	0x8
	.uleb128 0x4
	.long	.LASF273
	.byte	0x23
	.byte	0xfc
	.long	0x2073
	.byte	0x10
	.uleb128 0x4
	.long	.LASF274
	.byte	0x23
	.byte	0xfd
	.long	0x2073
	.byte	0x18
	.uleb128 0x4
	.long	.LASF275
	.byte	0x23
	.byte	0xfe
	.long	0x2073
	.byte	0x20
	.uleb128 0x4
	.long	.LASF276
	.byte	0x23
	.byte	0xff
	.long	0x2073
	.byte	0x28
	.uleb128 0x11
	.long	.LASF277
	.byte	0x23
	.value	0x100
	.long	0x2073
	.byte	0x30
	.uleb128 0x11
	.long	.LASF278
	.byte	0x23
	.value	0x101
	.long	0x2073
	.byte	0x38
	.uleb128 0x11
	.long	.LASF279
	.byte	0x23
	.value	0x102
	.long	0x2073
	.byte	0x40
	.uleb128 0x11
	.long	.LASF280
	.byte	0x23
	.value	0x104
	.long	0x2073
	.byte	0x48
	.uleb128 0x11
	.long	.LASF281
	.byte	0x23
	.value	0x105
	.long	0x2073
	.byte	0x50
	.uleb128 0x11
	.long	.LASF282
	.byte	0x23
	.value	0x106
	.long	0x2073
	.byte	0x58
	.uleb128 0x11
	.long	.LASF283
	.byte	0x23
	.value	0x108
	.long	0x2d90
	.byte	0x60
	.uleb128 0x11
	.long	.LASF284
	.byte	0x23
	.value	0x10a
	.long	0x2d96
	.byte	0x68
	.uleb128 0x11
	.long	.LASF285
	.byte	0x23
	.value	0x10c
	.long	0x1b93
	.byte	0x70
	.uleb128 0x11
	.long	.LASF286
	.byte	0x23
	.value	0x110
	.long	0x1b93
	.byte	0x74
	.uleb128 0x11
	.long	.LASF287
	.byte	0x23
	.value	0x112
	.long	0x262e
	.byte	0x78
	.uleb128 0x11
	.long	.LASF288
	.byte	0x23
	.value	0x116
	.long	0x1d50
	.byte	0x80
	.uleb128 0x11
	.long	.LASF289
	.byte	0x23
	.value	0x117
	.long	0x254e
	.byte	0x82
	.uleb128 0x11
	.long	.LASF290
	.byte	0x23
	.value	0x118
	.long	0x2d9c
	.byte	0x83
	.uleb128 0x11
	.long	.LASF291
	.byte	0x23
	.value	0x11c
	.long	0x2dac
	.byte	0x88
	.uleb128 0x11
	.long	.LASF292
	.byte	0x23
	.value	0x125
	.long	0x2639
	.byte	0x90
	.uleb128 0x11
	.long	.LASF293
	.byte	0x23
	.value	0x12d
	.long	0x1b26
	.byte	0x98
	.uleb128 0x11
	.long	.LASF294
	.byte	0x23
	.value	0x12e
	.long	0x1b26
	.byte	0xa0
	.uleb128 0x11
	.long	.LASF295
	.byte	0x23
	.value	0x12f
	.long	0x1b26
	.byte	0xa8
	.uleb128 0x11
	.long	.LASF296
	.byte	0x23
	.value	0x130
	.long	0x1b26
	.byte	0xb0
	.uleb128 0x11
	.long	.LASF297
	.byte	0x23
	.value	0x132
	.long	0x1acb
	.byte	0xb8
	.uleb128 0x11
	.long	.LASF298
	.byte	0x23
	.value	0x133
	.long	0x1b93
	.byte	0xc0
	.uleb128 0x11
	.long	.LASF299
	.byte	0x23
	.value	0x135
	.long	0x2db2
	.byte	0xc4
	.byte	0
	.uleb128 0x5
	.long	.LASF300
	.byte	0x24
	.byte	0x7
	.long	0x1bc5
	.uleb128 0x15
	.byte	0x2
	.byte	0x7
	.long	.LASF301
	.uleb128 0xa
	.byte	0x8
	.long	0x1b8e
	.uleb128 0xc
	.long	0x1d57
	.uleb128 0x6
	.long	.LASF302
	.byte	0x25
	.value	0x11c
	.long	0x1b28
	.long	0x1d78
	.uleb128 0x2
	.long	0x1b93
	.byte	0
	.uleb128 0x6
	.long	.LASF303
	.byte	0x25
	.value	0x2d7
	.long	0x1b28
	.long	0x1d8e
	.uleb128 0x2
	.long	0x1d8e
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x1bba
	.uleb128 0x6
	.long	.LASF304
	.byte	0x25
	.value	0x2f4
	.long	0x1db4
	.long	0x1db4
	.uleb128 0x2
	.long	0x1db4
	.uleb128 0x2
	.long	0x1b93
	.uleb128 0x2
	.long	0x1d8e
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x1dba
	.uleb128 0x15
	.byte	0x4
	.byte	0x5
	.long	.LASF305
	.uleb128 0xc
	.long	0x1dba
	.uleb128 0x6
	.long	.LASF306
	.byte	0x25
	.value	0x2e5
	.long	0x1b28
	.long	0x1de1
	.uleb128 0x2
	.long	0x1dba
	.uleb128 0x2
	.long	0x1d8e
	.byte	0
	.uleb128 0x6
	.long	.LASF307
	.byte	0x25
	.value	0x2fb
	.long	0x1b93
	.long	0x1dfc
	.uleb128 0x2
	.long	0x1dfc
	.uleb128 0x2
	.long	0x1d8e
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x1dc1
	.uleb128 0x6
	.long	.LASF308
	.byte	0x25
	.value	0x23d
	.long	0x1b93
	.long	0x1e1d
	.uleb128 0x2
	.long	0x1d8e
	.uleb128 0x2
	.long	0x1b93
	.byte	0
	.uleb128 0x6
	.long	.LASF309
	.byte	0x25
	.value	0x244
	.long	0x1b93
	.long	0x1e39
	.uleb128 0x2
	.long	0x1d8e
	.uleb128 0x2
	.long	0x1dfc
	.uleb128 0x27
	.byte	0
	.uleb128 0x6
	.long	.LASF310
	.byte	0x25
	.value	0x26d
	.long	0x1b93
	.long	0x1e55
	.uleb128 0x2
	.long	0x1d8e
	.uleb128 0x2
	.long	0x1dfc
	.uleb128 0x27
	.byte	0
	.uleb128 0x6
	.long	.LASF311
	.byte	0x25
	.value	0x2d8
	.long	0x1b28
	.long	0x1e6b
	.uleb128 0x2
	.long	0x1d8e
	.byte	0
	.uleb128 0x47
	.long	.LASF450
	.byte	0x25
	.value	0x2de
	.long	0x1b28
	.uleb128 0x6
	.long	.LASF312
	.byte	0x25
	.value	0x133
	.long	0x1acb
	.long	0x1e97
	.uleb128 0x2
	.long	0x1d57
	.uleb128 0x2
	.long	0x1acb
	.uleb128 0x2
	.long	0x1e97
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x1baa
	.uleb128 0x6
	.long	.LASF313
	.byte	0x25
	.value	0x128
	.long	0x1acb
	.long	0x1ec2
	.uleb128 0x2
	.long	0x1db4
	.uleb128 0x2
	.long	0x1d57
	.uleb128 0x2
	.long	0x1acb
	.uleb128 0x2
	.long	0x1e97
	.byte	0
	.uleb128 0x6
	.long	.LASF314
	.byte	0x25
	.value	0x124
	.long	0x1b93
	.long	0x1ed8
	.uleb128 0x2
	.long	0x1ed8
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x1bb5
	.uleb128 0x6
	.long	.LASF315
	.byte	0x25
	.value	0x151
	.long	0x1acb
	.long	0x1f03
	.uleb128 0x2
	.long	0x1db4
	.uleb128 0x2
	.long	0x1f03
	.uleb128 0x2
	.long	0x1acb
	.uleb128 0x2
	.long	0x1e97
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x1d57
	.uleb128 0x6
	.long	.LASF316
	.byte	0x25
	.value	0x2e6
	.long	0x1b28
	.long	0x1f24
	.uleb128 0x2
	.long	0x1dba
	.uleb128 0x2
	.long	0x1d8e
	.byte	0
	.uleb128 0x6
	.long	.LASF317
	.byte	0x25
	.value	0x2ec
	.long	0x1b28
	.long	0x1f3a
	.uleb128 0x2
	.long	0x1dba
	.byte	0
	.uleb128 0x6
	.long	.LASF318
	.byte	0x25
	.value	0x24e
	.long	0x1b93
	.long	0x1f5b
	.uleb128 0x2
	.long	0x1db4
	.uleb128 0x2
	.long	0x1acb
	.uleb128 0x2
	.long	0x1dfc
	.uleb128 0x27
	.byte	0
	.uleb128 0x6
	.long	.LASF319
	.byte	0x25
	.value	0x277
	.long	0x1b93
	.long	0x1f77
	.uleb128 0x2
	.long	0x1dfc
	.uleb128 0x2
	.long	0x1dfc
	.uleb128 0x27
	.byte	0
	.uleb128 0x6
	.long	.LASF320
	.byte	0x25
	.value	0x303
	.long	0x1b28
	.long	0x1f92
	.uleb128 0x2
	.long	0x1b28
	.uleb128 0x2
	.long	0x1d8e
	.byte	0
	.uleb128 0x6
	.long	.LASF321
	.byte	0x25
	.value	0x256
	.long	0x1b93
	.long	0x1fb2
	.uleb128 0x2
	.long	0x1d8e
	.uleb128 0x2
	.long	0x1dfc
	.uleb128 0x2
	.long	0x1fb2
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x1ae2
	.uleb128 0x6
	.long	.LASF322
	.byte	0x25
	.value	0x2a1
	.long	0x1b93
	.long	0x1fd8
	.uleb128 0x2
	.long	0x1d8e
	.uleb128 0x2
	.long	0x1dfc
	.uleb128 0x2
	.long	0x1fb2
	.byte	0
	.uleb128 0x6
	.long	.LASF323
	.byte	0x25
	.value	0x263
	.long	0x1b93
	.long	0x1ffd
	.uleb128 0x2
	.long	0x1db4
	.uleb128 0x2
	.long	0x1acb
	.uleb128 0x2
	.long	0x1dfc
	.uleb128 0x2
	.long	0x1fb2
	.byte	0
	.uleb128 0x6
	.long	.LASF324
	.byte	0x25
	.value	0x2ad
	.long	0x1b93
	.long	0x201d
	.uleb128 0x2
	.long	0x1dfc
	.uleb128 0x2
	.long	0x1dfc
	.uleb128 0x2
	.long	0x1fb2
	.byte	0
	.uleb128 0x6
	.long	.LASF325
	.byte	0x25
	.value	0x25e
	.long	0x1b93
	.long	0x2038
	.uleb128 0x2
	.long	0x1dfc
	.uleb128 0x2
	.long	0x1fb2
	.byte	0
	.uleb128 0x6
	.long	.LASF326
	.byte	0x25
	.value	0x2a9
	.long	0x1b93
	.long	0x2053
	.uleb128 0x2
	.long	0x1dfc
	.uleb128 0x2
	.long	0x1fb2
	.byte	0
	.uleb128 0x6
	.long	.LASF327
	.byte	0x25
	.value	0x12d
	.long	0x1acb
	.long	0x2073
	.uleb128 0x2
	.long	0x2073
	.uleb128 0x2
	.long	0x1dba
	.uleb128 0x2
	.long	0x1e97
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x1b87
	.uleb128 0xb
	.long	.LASF328
	.byte	0x25
	.byte	0x61
	.long	0x1db4
	.long	0x2093
	.uleb128 0x2
	.long	0x1db4
	.uleb128 0x2
	.long	0x1dfc
	.byte	0
	.uleb128 0xb
	.long	.LASF329
	.byte	0x25
	.byte	0x6a
	.long	0x1b93
	.long	0x20ad
	.uleb128 0x2
	.long	0x1dfc
	.uleb128 0x2
	.long	0x1dfc
	.byte	0
	.uleb128 0xb
	.long	.LASF330
	.byte	0x25
	.byte	0x83
	.long	0x1b93
	.long	0x20c7
	.uleb128 0x2
	.long	0x1dfc
	.uleb128 0x2
	.long	0x1dfc
	.byte	0
	.uleb128 0xb
	.long	.LASF331
	.byte	0x25
	.byte	0x57
	.long	0x1db4
	.long	0x20e1
	.uleb128 0x2
	.long	0x1db4
	.uleb128 0x2
	.long	0x1dfc
	.byte	0
	.uleb128 0xb
	.long	.LASF332
	.byte	0x25
	.byte	0xbb
	.long	0x1acb
	.long	0x20fb
	.uleb128 0x2
	.long	0x1dfc
	.uleb128 0x2
	.long	0x1dfc
	.byte	0
	.uleb128 0x6
	.long	.LASF333
	.byte	0x25
	.value	0x343
	.long	0x1acb
	.long	0x2120
	.uleb128 0x2
	.long	0x1db4
	.uleb128 0x2
	.long	0x1acb
	.uleb128 0x2
	.long	0x1dfc
	.uleb128 0x2
	.long	0x2120
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x21b6
	.uleb128 0x7c
	.string	"tm"
	.byte	0x38
	.byte	0x26
	.byte	0x7
	.long	0x21b6
	.uleb128 0x4
	.long	.LASF334
	.byte	0x26
	.byte	0x9
	.long	0x1b93
	.byte	0
	.uleb128 0x4
	.long	.LASF335
	.byte	0x26
	.byte	0xa
	.long	0x1b93
	.byte	0x4
	.uleb128 0x4
	.long	.LASF336
	.byte	0x26
	.byte	0xb
	.long	0x1b93
	.byte	0x8
	.uleb128 0x4
	.long	.LASF337
	.byte	0x26
	.byte	0xc
	.long	0x1b93
	.byte	0xc
	.uleb128 0x4
	.long	.LASF338
	.byte	0x26
	.byte	0xd
	.long	0x1b93
	.byte	0x10
	.uleb128 0x4
	.long	.LASF339
	.byte	0x26
	.byte	0xe
	.long	0x1b93
	.byte	0x14
	.uleb128 0x4
	.long	.LASF340
	.byte	0x26
	.byte	0xf
	.long	0x1b93
	.byte	0x18
	.uleb128 0x4
	.long	.LASF341
	.byte	0x26
	.byte	0x10
	.long	0x1b93
	.byte	0x1c
	.uleb128 0x4
	.long	.LASF342
	.byte	0x26
	.byte	0x11
	.long	0x1b93
	.byte	0x20
	.uleb128 0x4
	.long	.LASF343
	.byte	0x26
	.byte	0x14
	.long	0x22ed
	.byte	0x28
	.uleb128 0x4
	.long	.LASF344
	.byte	0x26
	.byte	0x15
	.long	0x1d57
	.byte	0x30
	.byte	0
	.uleb128 0xc
	.long	0x2126
	.uleb128 0xb
	.long	.LASF345
	.byte	0x25
	.byte	0xde
	.long	0x1acb
	.long	0x21d0
	.uleb128 0x2
	.long	0x1dfc
	.byte	0
	.uleb128 0xb
	.long	.LASF346
	.byte	0x25
	.byte	0x65
	.long	0x1db4
	.long	0x21ef
	.uleb128 0x2
	.long	0x1db4
	.uleb128 0x2
	.long	0x1dfc
	.uleb128 0x2
	.long	0x1acb
	.byte	0
	.uleb128 0xb
	.long	.LASF347
	.byte	0x25
	.byte	0x6d
	.long	0x1b93
	.long	0x220e
	.uleb128 0x2
	.long	0x1dfc
	.uleb128 0x2
	.long	0x1dfc
	.uleb128 0x2
	.long	0x1acb
	.byte	0
	.uleb128 0xb
	.long	.LASF348
	.byte	0x25
	.byte	0x5c
	.long	0x1db4
	.long	0x222d
	.uleb128 0x2
	.long	0x1db4
	.uleb128 0x2
	.long	0x1dfc
	.uleb128 0x2
	.long	0x1acb
	.byte	0
	.uleb128 0x6
	.long	.LASF349
	.byte	0x25
	.value	0x157
	.long	0x1acb
	.long	0x2252
	.uleb128 0x2
	.long	0x2073
	.uleb128 0x2
	.long	0x2252
	.uleb128 0x2
	.long	0x1acb
	.uleb128 0x2
	.long	0x1e97
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x1dfc
	.uleb128 0xb
	.long	.LASF350
	.byte	0x25
	.byte	0xbf
	.long	0x1acb
	.long	0x2272
	.uleb128 0x2
	.long	0x1dfc
	.uleb128 0x2
	.long	0x1dfc
	.byte	0
	.uleb128 0x6
	.long	.LASF351
	.byte	0x25
	.value	0x179
	.long	0x1ab8
	.long	0x228d
	.uleb128 0x2
	.long	0x1dfc
	.uleb128 0x2
	.long	0x228d
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x1db4
	.uleb128 0x6
	.long	.LASF352
	.byte	0x25
	.value	0x17e
	.long	0x1ab1
	.long	0x22ae
	.uleb128 0x2
	.long	0x1dfc
	.uleb128 0x2
	.long	0x228d
	.byte	0
	.uleb128 0xb
	.long	.LASF353
	.byte	0x25
	.byte	0xd9
	.long	0x1db4
	.long	0x22cd
	.uleb128 0x2
	.long	0x1db4
	.uleb128 0x2
	.long	0x1dfc
	.uleb128 0x2
	.long	0x228d
	.byte	0
	.uleb128 0x6
	.long	.LASF354
	.byte	0x25
	.value	0x1ac
	.long	0x22ed
	.long	0x22ed
	.uleb128 0x2
	.long	0x1dfc
	.uleb128 0x2
	.long	0x228d
	.uleb128 0x2
	.long	0x1b93
	.byte	0
	.uleb128 0x15
	.byte	0x8
	.byte	0x5
	.long	.LASF355
	.uleb128 0xc
	.long	0x22ed
	.uleb128 0x6
	.long	.LASF356
	.byte	0x25
	.value	0x1b1
	.long	0x1ad6
	.long	0x2319
	.uleb128 0x2
	.long	0x1dfc
	.uleb128 0x2
	.long	0x228d
	.uleb128 0x2
	.long	0x1b93
	.byte	0
	.uleb128 0xb
	.long	.LASF357
	.byte	0x25
	.byte	0x87
	.long	0x1acb
	.long	0x2338
	.uleb128 0x2
	.long	0x1db4
	.uleb128 0x2
	.long	0x1dfc
	.uleb128 0x2
	.long	0x1acb
	.byte	0
	.uleb128 0x6
	.long	.LASF358
	.byte	0x25
	.value	0x120
	.long	0x1b93
	.long	0x234e
	.uleb128 0x2
	.long	0x1b28
	.byte	0
	.uleb128 0x6
	.long	.LASF359
	.byte	0x25
	.value	0x102
	.long	0x1b93
	.long	0x236e
	.uleb128 0x2
	.long	0x1dfc
	.uleb128 0x2
	.long	0x1dfc
	.uleb128 0x2
	.long	0x1acb
	.byte	0
	.uleb128 0x6
	.long	.LASF360
	.byte	0x25
	.value	0x106
	.long	0x1db4
	.long	0x238e
	.uleb128 0x2
	.long	0x1db4
	.uleb128 0x2
	.long	0x1dfc
	.uleb128 0x2
	.long	0x1acb
	.byte	0
	.uleb128 0x6
	.long	.LASF361
	.byte	0x25
	.value	0x10b
	.long	0x1db4
	.long	0x23ae
	.uleb128 0x2
	.long	0x1db4
	.uleb128 0x2
	.long	0x1dfc
	.uleb128 0x2
	.long	0x1acb
	.byte	0
	.uleb128 0x6
	.long	.LASF362
	.byte	0x25
	.value	0x10f
	.long	0x1db4
	.long	0x23ce
	.uleb128 0x2
	.long	0x1db4
	.uleb128 0x2
	.long	0x1dba
	.uleb128 0x2
	.long	0x1acb
	.byte	0
	.uleb128 0x6
	.long	.LASF363
	.byte	0x25
	.value	0x24b
	.long	0x1b93
	.long	0x23e5
	.uleb128 0x2
	.long	0x1dfc
	.uleb128 0x27
	.byte	0
	.uleb128 0x6
	.long	.LASF364
	.byte	0x25
	.value	0x274
	.long	0x1b93
	.long	0x23fc
	.uleb128 0x2
	.long	0x1dfc
	.uleb128 0x27
	.byte	0
	.uleb128 0x1f
	.long	.LASF365
	.byte	0x25
	.byte	0xa1
	.long	.LASF365
	.long	0x1dfc
	.long	0x241a
	.uleb128 0x2
	.long	0x1dfc
	.uleb128 0x2
	.long	0x1dba
	.byte	0
	.uleb128 0x1f
	.long	.LASF366
	.byte	0x25
	.byte	0xc5
	.long	.LASF366
	.long	0x1dfc
	.long	0x2438
	.uleb128 0x2
	.long	0x1dfc
	.uleb128 0x2
	.long	0x1dfc
	.byte	0
	.uleb128 0x1f
	.long	.LASF367
	.byte	0x25
	.byte	0xab
	.long	.LASF367
	.long	0x1dfc
	.long	0x2456
	.uleb128 0x2
	.long	0x1dfc
	.uleb128 0x2
	.long	0x1dba
	.byte	0
	.uleb128 0x1f
	.long	.LASF368
	.byte	0x25
	.byte	0xd0
	.long	.LASF368
	.long	0x1dfc
	.long	0x2474
	.uleb128 0x2
	.long	0x1dfc
	.uleb128 0x2
	.long	0x1dfc
	.byte	0
	.uleb128 0x1f
	.long	.LASF369
	.byte	0x25
	.byte	0xf9
	.long	.LASF369
	.long	0x1dfc
	.long	0x2497
	.uleb128 0x2
	.long	0x1dfc
	.uleb128 0x2
	.long	0x1dba
	.uleb128 0x2
	.long	0x1acb
	.byte	0
	.uleb128 0x6
	.long	.LASF370
	.byte	0x25
	.value	0x180
	.long	0x1ac4
	.long	0x24b2
	.uleb128 0x2
	.long	0x1dfc
	.uleb128 0x2
	.long	0x228d
	.byte	0
	.uleb128 0x6
	.long	.LASF371
	.byte	0x25
	.value	0x1b9
	.long	0x24d2
	.long	0x24d2
	.uleb128 0x2
	.long	0x1dfc
	.uleb128 0x2
	.long	0x228d
	.uleb128 0x2
	.long	0x1b93
	.byte	0
	.uleb128 0x15
	.byte	0x8
	.byte	0x5
	.long	.LASF372
	.uleb128 0x6
	.long	.LASF373
	.byte	0x25
	.value	0x1c0
	.long	0x24f9
	.long	0x24f9
	.uleb128 0x2
	.long	0x1dfc
	.uleb128 0x2
	.long	0x228d
	.uleb128 0x2
	.long	0x1b93
	.byte	0
	.uleb128 0x15
	.byte	0x8
	.byte	0x7
	.long	.LASF374
	.uleb128 0x7d
	.long	.LASF688
	.uleb128 0xa
	.byte	0x8
	.long	0x228
	.uleb128 0xa
	.byte	0x8
	.long	0x26a
	.uleb128 0xa
	.byte	0x8
	.long	0x423
	.uleb128 0x10
	.byte	0x8
	.long	0x423
	.uleb128 0x7e
	.byte	0x8
	.long	0x26a
	.uleb128 0x10
	.byte	0x8
	.long	0x26a
	.uleb128 0x15
	.byte	0x1
	.byte	0x2
	.long	.LASF375
	.uleb128 0xc
	.long	0x2529
	.uleb128 0xa
	.byte	0x8
	.long	0x45c
	.uleb128 0xa
	.byte	0x8
	.long	0x4b5
	.uleb128 0xa
	.byte	0x8
	.long	0x50e
	.uleb128 0x15
	.byte	0x1
	.byte	0x8
	.long	.LASF376
	.uleb128 0x15
	.byte	0x1
	.byte	0x6
	.long	.LASF377
	.uleb128 0x15
	.byte	0x2
	.byte	0x5
	.long	.LASF378
	.uleb128 0xc
	.long	0x2555
	.uleb128 0xa
	.byte	0x8
	.long	0x599
	.uleb128 0x7f
	.long	0x5c1
	.uleb128 0x39
	.long	.LASF379
	.byte	0xe
	.byte	0x38
	.long	0x257f
	.uleb128 0x2c
	.byte	0xe
	.byte	0x3a
	.long	0x5ce
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.long	0x5e2
	.uleb128 0x10
	.byte	0x8
	.long	0x5ee
	.uleb128 0xa
	.byte	0x8
	.long	0x5ee
	.uleb128 0xa
	.byte	0x8
	.long	0x5e2
	.uleb128 0x10
	.byte	0x8
	.long	0x5ff
	.uleb128 0x10
	.byte	0x8
	.long	0x7bb
	.uleb128 0x10
	.byte	0x8
	.long	0x7c7
	.uleb128 0xa
	.byte	0x8
	.long	0x7c7
	.uleb128 0xa
	.byte	0x8
	.long	0x7bb
	.uleb128 0x10
	.byte	0x8
	.long	0x7d8
	.uleb128 0x5
	.long	.LASF380
	.byte	0x27
	.byte	0x24
	.long	0x254e
	.uleb128 0x5
	.long	.LASF381
	.byte	0x27
	.byte	0x25
	.long	0x2547
	.uleb128 0x5
	.long	.LASF382
	.byte	0x27
	.byte	0x26
	.long	0x2555
	.uleb128 0x5
	.long	.LASF383
	.byte	0x27
	.byte	0x27
	.long	0x1d50
	.uleb128 0x5
	.long	.LASF384
	.byte	0x27
	.byte	0x28
	.long	0x1b93
	.uleb128 0xc
	.long	0x25e7
	.uleb128 0x5
	.long	.LASF385
	.byte	0x27
	.byte	0x29
	.long	0x1b1f
	.uleb128 0x5
	.long	.LASF386
	.byte	0x27
	.byte	0x2b
	.long	0x22ed
	.uleb128 0x5
	.long	.LASF387
	.byte	0x27
	.byte	0x2c
	.long	0x1ad6
	.uleb128 0x5
	.long	.LASF388
	.byte	0x27
	.byte	0x3d
	.long	0x22ed
	.uleb128 0x5
	.long	.LASF389
	.byte	0x27
	.byte	0x3e
	.long	0x1ad6
	.uleb128 0x5
	.long	.LASF390
	.byte	0x27
	.byte	0x8c
	.long	0x22ed
	.uleb128 0x5
	.long	.LASF391
	.byte	0x27
	.byte	0x8d
	.long	0x22ed
	.uleb128 0x5
	.long	.LASF392
	.byte	0x27
	.byte	0x90
	.long	0x22ed
	.uleb128 0x5
	.long	.LASF393
	.byte	0x27
	.byte	0x94
	.long	0x22ed
	.uleb128 0x5
	.long	.LASF394
	.byte	0x28
	.byte	0x18
	.long	0x25bb
	.uleb128 0x5
	.long	.LASF395
	.byte	0x28
	.byte	0x19
	.long	0x25d1
	.uleb128 0x5
	.long	.LASF396
	.byte	0x28
	.byte	0x1a
	.long	0x25e7
	.uleb128 0x5
	.long	.LASF397
	.byte	0x28
	.byte	0x1b
	.long	0x2602
	.uleb128 0x5
	.long	.LASF398
	.byte	0x29
	.byte	0x18
	.long	0x25c6
	.uleb128 0x5
	.long	.LASF399
	.byte	0x29
	.byte	0x19
	.long	0x25dc
	.uleb128 0x5
	.long	.LASF400
	.byte	0x29
	.byte	0x1a
	.long	0x25f7
	.uleb128 0x5
	.long	.LASF401
	.byte	0x29
	.byte	0x1b
	.long	0x260d
	.uleb128 0x5
	.long	.LASF402
	.byte	0x2a
	.byte	0x2b
	.long	0x254e
	.uleb128 0x5
	.long	.LASF403
	.byte	0x2a
	.byte	0x2c
	.long	0x2555
	.uleb128 0x5
	.long	.LASF404
	.byte	0x2a
	.byte	0x2d
	.long	0x1b93
	.uleb128 0x5
	.long	.LASF405
	.byte	0x2a
	.byte	0x2f
	.long	0x22ed
	.uleb128 0x5
	.long	.LASF406
	.byte	0x2a
	.byte	0x36
	.long	0x2547
	.uleb128 0x5
	.long	.LASF407
	.byte	0x2a
	.byte	0x37
	.long	0x1d50
	.uleb128 0x5
	.long	.LASF408
	.byte	0x2a
	.byte	0x38
	.long	0x1b1f
	.uleb128 0x5
	.long	.LASF409
	.byte	0x2a
	.byte	0x3a
	.long	0x1ad6
	.uleb128 0x5
	.long	.LASF410
	.byte	0x2a
	.byte	0x44
	.long	0x254e
	.uleb128 0x5
	.long	.LASF411
	.byte	0x2a
	.byte	0x46
	.long	0x22ed
	.uleb128 0x5
	.long	.LASF412
	.byte	0x2a
	.byte	0x47
	.long	0x22ed
	.uleb128 0x5
	.long	.LASF413
	.byte	0x2a
	.byte	0x48
	.long	0x22ed
	.uleb128 0x5
	.long	.LASF414
	.byte	0x2a
	.byte	0x51
	.long	0x2547
	.uleb128 0x5
	.long	.LASF415
	.byte	0x2a
	.byte	0x53
	.long	0x1ad6
	.uleb128 0x5
	.long	.LASF416
	.byte	0x2a
	.byte	0x54
	.long	0x1ad6
	.uleb128 0x5
	.long	.LASF417
	.byte	0x2a
	.byte	0x55
	.long	0x1ad6
	.uleb128 0x5
	.long	.LASF418
	.byte	0x2a
	.byte	0x61
	.long	0x22ed
	.uleb128 0x5
	.long	.LASF419
	.byte	0x2a
	.byte	0x64
	.long	0x1ad6
	.uleb128 0x5
	.long	.LASF420
	.byte	0x2a
	.byte	0x6f
	.long	0x2618
	.uleb128 0xc
	.long	0x2778
	.uleb128 0x5
	.long	.LASF421
	.byte	0x2a
	.byte	0x70
	.long	0x2623
	.uleb128 0x15
	.byte	0x2
	.byte	0x10
	.long	.LASF422
	.uleb128 0x15
	.byte	0x4
	.byte	0x10
	.long	.LASF423
	.uleb128 0x12
	.long	.LASF424
	.byte	0x60
	.byte	0x2b
	.byte	0x33
	.long	0x28ce
	.uleb128 0x4
	.long	.LASF425
	.byte	0x2b
	.byte	0x37
	.long	0x2073
	.byte	0
	.uleb128 0x4
	.long	.LASF426
	.byte	0x2b
	.byte	0x38
	.long	0x2073
	.byte	0x8
	.uleb128 0x4
	.long	.LASF427
	.byte	0x2b
	.byte	0x3e
	.long	0x2073
	.byte	0x10
	.uleb128 0x4
	.long	.LASF428
	.byte	0x2b
	.byte	0x44
	.long	0x2073
	.byte	0x18
	.uleb128 0x4
	.long	.LASF429
	.byte	0x2b
	.byte	0x45
	.long	0x2073
	.byte	0x20
	.uleb128 0x4
	.long	.LASF430
	.byte	0x2b
	.byte	0x46
	.long	0x2073
	.byte	0x28
	.uleb128 0x4
	.long	.LASF431
	.byte	0x2b
	.byte	0x47
	.long	0x2073
	.byte	0x30
	.uleb128 0x4
	.long	.LASF432
	.byte	0x2b
	.byte	0x48
	.long	0x2073
	.byte	0x38
	.uleb128 0x4
	.long	.LASF433
	.byte	0x2b
	.byte	0x49
	.long	0x2073
	.byte	0x40
	.uleb128 0x4
	.long	.LASF434
	.byte	0x2b
	.byte	0x4a
	.long	0x2073
	.byte	0x48
	.uleb128 0x4
	.long	.LASF435
	.byte	0x2b
	.byte	0x4b
	.long	0x1b87
	.byte	0x50
	.uleb128 0x4
	.long	.LASF436
	.byte	0x2b
	.byte	0x4c
	.long	0x1b87
	.byte	0x51
	.uleb128 0x4
	.long	.LASF437
	.byte	0x2b
	.byte	0x4e
	.long	0x1b87
	.byte	0x52
	.uleb128 0x4
	.long	.LASF438
	.byte	0x2b
	.byte	0x50
	.long	0x1b87
	.byte	0x53
	.uleb128 0x4
	.long	.LASF439
	.byte	0x2b
	.byte	0x52
	.long	0x1b87
	.byte	0x54
	.uleb128 0x4
	.long	.LASF440
	.byte	0x2b
	.byte	0x54
	.long	0x1b87
	.byte	0x55
	.uleb128 0x4
	.long	.LASF441
	.byte	0x2b
	.byte	0x5b
	.long	0x1b87
	.byte	0x56
	.uleb128 0x4
	.long	.LASF442
	.byte	0x2b
	.byte	0x5c
	.long	0x1b87
	.byte	0x57
	.uleb128 0x4
	.long	.LASF443
	.byte	0x2b
	.byte	0x5f
	.long	0x1b87
	.byte	0x58
	.uleb128 0x4
	.long	.LASF444
	.byte	0x2b
	.byte	0x61
	.long	0x1b87
	.byte	0x59
	.uleb128 0x4
	.long	.LASF445
	.byte	0x2b
	.byte	0x63
	.long	0x1b87
	.byte	0x5a
	.uleb128 0x4
	.long	.LASF446
	.byte	0x2b
	.byte	0x65
	.long	0x1b87
	.byte	0x5b
	.uleb128 0x4
	.long	.LASF447
	.byte	0x2b
	.byte	0x6c
	.long	0x1b87
	.byte	0x5c
	.uleb128 0x4
	.long	.LASF448
	.byte	0x2b
	.byte	0x6d
	.long	0x1b87
	.byte	0x5d
	.byte	0
	.uleb128 0xb
	.long	.LASF449
	.byte	0x2b
	.byte	0x7a
	.long	0x2073
	.long	0x28e8
	.uleb128 0x2
	.long	0x1b93
	.uleb128 0x2
	.long	0x1d57
	.byte	0
	.uleb128 0x48
	.long	.LASF451
	.byte	0x2b
	.byte	0x7d
	.long	0x28f3
	.uleb128 0xa
	.byte	0x8
	.long	0x27a1
	.uleb128 0x5
	.long	.LASF452
	.byte	0x2c
	.byte	0x7
	.long	0x264f
	.uleb128 0xc
	.long	0x28f9
	.uleb128 0x5
	.long	.LASF453
	.byte	0x2d
	.byte	0x7
	.long	0x2644
	.uleb128 0x31
	.long	0x2073
	.long	0x2924
	.uleb128 0x3e
	.long	0x1ad6
	.byte	0x1
	.byte	0
	.uleb128 0x17
	.long	.LASF454
	.byte	0x2e
	.byte	0x9f
	.long	0x2914
	.uleb128 0x17
	.long	.LASF455
	.byte	0x2e
	.byte	0xa0
	.long	0x1b93
	.uleb128 0x17
	.long	.LASF456
	.byte	0x2e
	.byte	0xa1
	.long	0x22ed
	.uleb128 0x17
	.long	.LASF457
	.byte	0x2e
	.byte	0xa6
	.long	0x2914
	.uleb128 0x17
	.long	.LASF458
	.byte	0x2e
	.byte	0xae
	.long	0x1b93
	.uleb128 0x17
	.long	.LASF459
	.byte	0x2e
	.byte	0xaf
	.long	0x22ed
	.uleb128 0x3f
	.long	.LASF460
	.byte	0x2e
	.value	0x118
	.long	0x1b93
	.uleb128 0x5
	.long	.LASF461
	.byte	0x2f
	.byte	0x20
	.long	0x1b93
	.uleb128 0xa
	.byte	0x8
	.long	0x2983
	.uleb128 0x80
	.uleb128 0x30
	.byte	0x8
	.byte	0x30
	.byte	0x3b
	.long	.LASF463
	.long	0x29aa
	.uleb128 0x4
	.long	.LASF464
	.byte	0x30
	.byte	0x3c
	.long	0x1b93
	.byte	0
	.uleb128 0x49
	.string	"rem"
	.byte	0x30
	.byte	0x3d
	.long	0x1b93
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	.LASF465
	.byte	0x30
	.byte	0x3e
	.long	0x2985
	.uleb128 0x30
	.byte	0x10
	.byte	0x30
	.byte	0x43
	.long	.LASF466
	.long	0x29da
	.uleb128 0x4
	.long	.LASF464
	.byte	0x30
	.byte	0x44
	.long	0x22ed
	.byte	0
	.uleb128 0x49
	.string	"rem"
	.byte	0x30
	.byte	0x45
	.long	0x22ed
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF467
	.byte	0x30
	.byte	0x46
	.long	0x29b5
	.uleb128 0x30
	.byte	0x10
	.byte	0x30
	.byte	0x4d
	.long	.LASF468
	.long	0x2a0a
	.uleb128 0x4
	.long	.LASF464
	.byte	0x30
	.byte	0x4e
	.long	0x24d2
	.byte	0
	.uleb128 0x49
	.string	"rem"
	.byte	0x30
	.byte	0x4f
	.long	0x24d2
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF469
	.byte	0x30
	.byte	0x50
	.long	0x29e5
	.uleb128 0x1a
	.long	.LASF470
	.byte	0x30
	.value	0x325
	.long	0x2a21
	.uleb128 0xa
	.byte	0x8
	.long	0x2a27
	.uleb128 0x81
	.long	0x1b93
	.long	0x2a3c
	.uleb128 0x2
	.long	0x297d
	.uleb128 0x2
	.long	0x297d
	.byte	0
	.uleb128 0x6
	.long	.LASF471
	.byte	0x30
	.value	0x250
	.long	0x1b93
	.long	0x2a52
	.uleb128 0x2
	.long	0x2a52
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x2a58
	.uleb128 0x82
	.uleb128 0x14
	.long	.LASF472
	.byte	0x30
	.value	0x255
	.long	.LASF472
	.long	0x1b93
	.long	0x2a74
	.uleb128 0x2
	.long	0x2a52
	.byte	0
	.uleb128 0xb
	.long	.LASF473
	.byte	0x30
	.byte	0x65
	.long	0x1ab8
	.long	0x2a89
	.uleb128 0x2
	.long	0x1d57
	.byte	0
	.uleb128 0xb
	.long	.LASF474
	.byte	0x30
	.byte	0x68
	.long	0x1b93
	.long	0x2a9e
	.uleb128 0x2
	.long	0x1d57
	.byte	0
	.uleb128 0xb
	.long	.LASF475
	.byte	0x30
	.byte	0x6b
	.long	0x22ed
	.long	0x2ab3
	.uleb128 0x2
	.long	0x1d57
	.byte	0
	.uleb128 0x6
	.long	.LASF476
	.byte	0x30
	.value	0x331
	.long	0x1b26
	.long	0x2add
	.uleb128 0x2
	.long	0x297d
	.uleb128 0x2
	.long	0x297d
	.uleb128 0x2
	.long	0x1acb
	.uleb128 0x2
	.long	0x1acb
	.uleb128 0x2
	.long	0x2a15
	.byte	0
	.uleb128 0x60
	.string	"div"
	.byte	0x30
	.value	0x351
	.long	0x29aa
	.long	0x2af8
	.uleb128 0x2
	.long	0x1b93
	.uleb128 0x2
	.long	0x1b93
	.byte	0
	.uleb128 0x6
	.long	.LASF477
	.byte	0x30
	.value	0x277
	.long	0x2073
	.long	0x2b0e
	.uleb128 0x2
	.long	0x1d57
	.byte	0
	.uleb128 0x6
	.long	.LASF478
	.byte	0x30
	.value	0x353
	.long	0x29da
	.long	0x2b29
	.uleb128 0x2
	.long	0x22ed
	.uleb128 0x2
	.long	0x22ed
	.byte	0
	.uleb128 0x6
	.long	.LASF479
	.byte	0x30
	.value	0x397
	.long	0x1b93
	.long	0x2b44
	.uleb128 0x2
	.long	0x1d57
	.uleb128 0x2
	.long	0x1acb
	.byte	0
	.uleb128 0x6
	.long	.LASF480
	.byte	0x30
	.value	0x3a2
	.long	0x1acb
	.long	0x2b64
	.uleb128 0x2
	.long	0x1db4
	.uleb128 0x2
	.long	0x1d57
	.uleb128 0x2
	.long	0x1acb
	.byte	0
	.uleb128 0x6
	.long	.LASF481
	.byte	0x30
	.value	0x39a
	.long	0x1b93
	.long	0x2b84
	.uleb128 0x2
	.long	0x1db4
	.uleb128 0x2
	.long	0x1d57
	.uleb128 0x2
	.long	0x1acb
	.byte	0
	.uleb128 0x28
	.long	.LASF484
	.byte	0x30
	.value	0x33b
	.long	0x2ba5
	.uleb128 0x2
	.long	0x1b26
	.uleb128 0x2
	.long	0x1acb
	.uleb128 0x2
	.long	0x1acb
	.uleb128 0x2
	.long	0x2a15
	.byte	0
	.uleb128 0x83
	.long	.LASF482
	.byte	0x30
	.value	0x26c
	.long	0x2bb8
	.uleb128 0x2
	.long	0x1b93
	.byte	0
	.uleb128 0x47
	.long	.LASF483
	.byte	0x30
	.value	0x1c5
	.long	0x1b93
	.uleb128 0x28
	.long	.LASF485
	.byte	0x30
	.value	0x1c7
	.long	0x2bd6
	.uleb128 0x2
	.long	0x1b1f
	.byte	0
	.uleb128 0xb
	.long	.LASF486
	.byte	0x30
	.byte	0x75
	.long	0x1ab8
	.long	0x2bf0
	.uleb128 0x2
	.long	0x1d57
	.uleb128 0x2
	.long	0x2bf0
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x2073
	.uleb128 0xb
	.long	.LASF487
	.byte	0x30
	.byte	0xb0
	.long	0x22ed
	.long	0x2c15
	.uleb128 0x2
	.long	0x1d57
	.uleb128 0x2
	.long	0x2bf0
	.uleb128 0x2
	.long	0x1b93
	.byte	0
	.uleb128 0xb
	.long	.LASF488
	.byte	0x30
	.byte	0xb4
	.long	0x1ad6
	.long	0x2c34
	.uleb128 0x2
	.long	0x1d57
	.uleb128 0x2
	.long	0x2bf0
	.uleb128 0x2
	.long	0x1b93
	.byte	0
	.uleb128 0x6
	.long	.LASF489
	.byte	0x30
	.value	0x30d
	.long	0x1b93
	.long	0x2c4a
	.uleb128 0x2
	.long	0x1d57
	.byte	0
	.uleb128 0x6
	.long	.LASF490
	.byte	0x30
	.value	0x3a5
	.long	0x1acb
	.long	0x2c6a
	.uleb128 0x2
	.long	0x2073
	.uleb128 0x2
	.long	0x1dfc
	.uleb128 0x2
	.long	0x1acb
	.byte	0
	.uleb128 0x6
	.long	.LASF491
	.byte	0x30
	.value	0x39e
	.long	0x1b93
	.long	0x2c85
	.uleb128 0x2
	.long	0x2073
	.uleb128 0x2
	.long	0x1dba
	.byte	0
	.uleb128 0x6
	.long	.LASF492
	.byte	0x30
	.value	0x357
	.long	0x2a0a
	.long	0x2ca0
	.uleb128 0x2
	.long	0x24d2
	.uleb128 0x2
	.long	0x24d2
	.byte	0
	.uleb128 0xb
	.long	.LASF493
	.byte	0x30
	.byte	0x70
	.long	0x24d2
	.long	0x2cb5
	.uleb128 0x2
	.long	0x1d57
	.byte	0
	.uleb128 0xb
	.long	.LASF494
	.byte	0x30
	.byte	0xc8
	.long	0x24d2
	.long	0x2cd4
	.uleb128 0x2
	.long	0x1d57
	.uleb128 0x2
	.long	0x2bf0
	.uleb128 0x2
	.long	0x1b93
	.byte	0
	.uleb128 0xb
	.long	.LASF495
	.byte	0x30
	.byte	0xcd
	.long	0x24f9
	.long	0x2cf3
	.uleb128 0x2
	.long	0x1d57
	.uleb128 0x2
	.long	0x2bf0
	.uleb128 0x2
	.long	0x1b93
	.byte	0
	.uleb128 0xb
	.long	.LASF496
	.byte	0x30
	.byte	0x7b
	.long	0x1ab1
	.long	0x2d0d
	.uleb128 0x2
	.long	0x1d57
	.uleb128 0x2
	.long	0x2bf0
	.byte	0
	.uleb128 0xb
	.long	.LASF497
	.byte	0x30
	.byte	0x7e
	.long	0x1ac4
	.long	0x2d27
	.uleb128 0x2
	.long	0x1d57
	.uleb128 0x2
	.long	0x2bf0
	.byte	0
	.uleb128 0x30
	.byte	0x10
	.byte	0x31
	.byte	0x1b
	.long	.LASF498
	.long	0x2d4c
	.uleb128 0x4
	.long	.LASF499
	.byte	0x31
	.byte	0x1c
	.long	0x262e
	.byte	0
	.uleb128 0x4
	.long	.LASF500
	.byte	0x31
	.byte	0x1d
	.long	0x1b9f
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF501
	.byte	0x31
	.byte	0x1e
	.long	0x2d27
	.uleb128 0x84
	.long	.LASF689
	.byte	0x23
	.byte	0x9a
	.uleb128 0x12
	.long	.LASF502
	.byte	0x18
	.byte	0x23
	.byte	0xa0
	.long	0x2d90
	.uleb128 0x4
	.long	.LASF503
	.byte	0x23
	.byte	0xa1
	.long	0x2d90
	.byte	0
	.uleb128 0x4
	.long	.LASF504
	.byte	0x23
	.byte	0xa2
	.long	0x2d96
	.byte	0x8
	.uleb128 0x4
	.long	.LASF505
	.byte	0x23
	.byte	0xa6
	.long	0x1b93
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x2d5f
	.uleb128 0xa
	.byte	0x8
	.long	0x1bc5
	.uleb128 0x31
	.long	0x1b87
	.long	0x2dac
	.uleb128 0x3e
	.long	0x1ad6
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x2d57
	.uleb128 0x31
	.long	0x1b87
	.long	0x2dc2
	.uleb128 0x3e
	.long	0x1ad6
	.byte	0x13
	.byte	0
	.uleb128 0x85
	.long	.LASF690
	.uleb128 0x3f
	.long	.LASF506
	.byte	0x23
	.value	0x13f
	.long	0x2dc2
	.uleb128 0x3f
	.long	.LASF507
	.byte	0x23
	.value	0x140
	.long	0x2dc2
	.uleb128 0x3f
	.long	.LASF508
	.byte	0x23
	.value	0x141
	.long	0x2dc2
	.uleb128 0x5
	.long	.LASF509
	.byte	0x32
	.byte	0x4e
	.long	0x2d4c
	.uleb128 0xc
	.long	0x2dec
	.uleb128 0x17
	.long	.LASF510
	.byte	0x32
	.byte	0x87
	.long	0x2d96
	.uleb128 0x17
	.long	.LASF511
	.byte	0x32
	.byte	0x88
	.long	0x2d96
	.uleb128 0x17
	.long	.LASF512
	.byte	0x32
	.byte	0x89
	.long	0x2d96
	.uleb128 0x17
	.long	.LASF513
	.byte	0x33
	.byte	0x1a
	.long	0x1b93
	.uleb128 0x31
	.long	0x1d5d
	.long	0x2e34
	.uleb128 0x86
	.byte	0
	.uleb128 0x17
	.long	.LASF514
	.byte	0x33
	.byte	0x1b
	.long	0x2e28
	.uleb128 0x17
	.long	.LASF515
	.byte	0x33
	.byte	0x1e
	.long	0x1b93
	.uleb128 0x17
	.long	.LASF516
	.byte	0x33
	.byte	0x1f
	.long	0x2e28
	.uleb128 0x28
	.long	.LASF517
	.byte	0x32
	.value	0x2f5
	.long	0x2e67
	.uleb128 0x2
	.long	0x2e67
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x1d45
	.uleb128 0xb
	.long	.LASF518
	.byte	0x32
	.byte	0xc7
	.long	0x1b93
	.long	0x2e82
	.uleb128 0x2
	.long	0x2e67
	.byte	0
	.uleb128 0x6
	.long	.LASF519
	.byte	0x32
	.value	0x2f7
	.long	0x1b93
	.long	0x2e98
	.uleb128 0x2
	.long	0x2e67
	.byte	0
	.uleb128 0x6
	.long	.LASF520
	.byte	0x32
	.value	0x2f9
	.long	0x1b93
	.long	0x2eae
	.uleb128 0x2
	.long	0x2e67
	.byte	0
	.uleb128 0xb
	.long	.LASF521
	.byte	0x32
	.byte	0xcc
	.long	0x1b93
	.long	0x2ec3
	.uleb128 0x2
	.long	0x2e67
	.byte	0
	.uleb128 0x6
	.long	.LASF522
	.byte	0x32
	.value	0x1dd
	.long	0x1b93
	.long	0x2ed9
	.uleb128 0x2
	.long	0x2e67
	.byte	0
	.uleb128 0x6
	.long	.LASF523
	.byte	0x32
	.value	0x2db
	.long	0x1b93
	.long	0x2ef4
	.uleb128 0x2
	.long	0x2e67
	.uleb128 0x2
	.long	0x2ef4
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x2dec
	.uleb128 0x6
	.long	.LASF524
	.byte	0x32
	.value	0x234
	.long	0x2073
	.long	0x2f1a
	.uleb128 0x2
	.long	0x2073
	.uleb128 0x2
	.long	0x1b93
	.uleb128 0x2
	.long	0x2e67
	.byte	0
	.uleb128 0xb
	.long	.LASF525
	.byte	0x32
	.byte	0xe8
	.long	0x2e67
	.long	0x2f34
	.uleb128 0x2
	.long	0x1d57
	.uleb128 0x2
	.long	0x1d57
	.byte	0
	.uleb128 0x6
	.long	.LASF526
	.byte	0x32
	.value	0x286
	.long	0x1acb
	.long	0x2f59
	.uleb128 0x2
	.long	0x1b26
	.uleb128 0x2
	.long	0x1acb
	.uleb128 0x2
	.long	0x1acb
	.uleb128 0x2
	.long	0x2e67
	.byte	0
	.uleb128 0xb
	.long	.LASF527
	.byte	0x32
	.byte	0xee
	.long	0x2e67
	.long	0x2f78
	.uleb128 0x2
	.long	0x1d57
	.uleb128 0x2
	.long	0x1d57
	.uleb128 0x2
	.long	0x2e67
	.byte	0
	.uleb128 0x6
	.long	.LASF528
	.byte	0x32
	.value	0x2ac
	.long	0x1b93
	.long	0x2f98
	.uleb128 0x2
	.long	0x2e67
	.uleb128 0x2
	.long	0x22ed
	.uleb128 0x2
	.long	0x1b93
	.byte	0
	.uleb128 0x6
	.long	.LASF529
	.byte	0x32
	.value	0x2e0
	.long	0x1b93
	.long	0x2fb3
	.uleb128 0x2
	.long	0x2e67
	.uleb128 0x2
	.long	0x2fb3
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x2df7
	.uleb128 0x6
	.long	.LASF530
	.byte	0x32
	.value	0x2b1
	.long	0x22ed
	.long	0x2fcf
	.uleb128 0x2
	.long	0x2e67
	.byte	0
	.uleb128 0x6
	.long	.LASF531
	.byte	0x32
	.value	0x1de
	.long	0x1b93
	.long	0x2fe5
	.uleb128 0x2
	.long	0x2e67
	.byte	0
	.uleb128 0x47
	.long	.LASF532
	.byte	0x32
	.value	0x1e4
	.long	0x1b93
	.uleb128 0x6
	.long	.LASF533
	.byte	0x32
	.value	0x241
	.long	0x2073
	.long	0x3007
	.uleb128 0x2
	.long	0x2073
	.byte	0
	.uleb128 0x28
	.long	.LASF534
	.byte	0x32
	.value	0x307
	.long	0x3019
	.uleb128 0x2
	.long	0x1d57
	.byte	0
	.uleb128 0xb
	.long	.LASF535
	.byte	0x32
	.byte	0x90
	.long	0x1b93
	.long	0x302e
	.uleb128 0x2
	.long	0x1d57
	.byte	0
	.uleb128 0xb
	.long	.LASF536
	.byte	0x32
	.byte	0x92
	.long	0x1b93
	.long	0x3048
	.uleb128 0x2
	.long	0x1d57
	.uleb128 0x2
	.long	0x1d57
	.byte	0
	.uleb128 0x28
	.long	.LASF537
	.byte	0x32
	.value	0x2b6
	.long	0x305a
	.uleb128 0x2
	.long	0x2e67
	.byte	0
	.uleb128 0x28
	.long	.LASF538
	.byte	0x32
	.value	0x122
	.long	0x3071
	.uleb128 0x2
	.long	0x2e67
	.uleb128 0x2
	.long	0x2073
	.byte	0
	.uleb128 0x6
	.long	.LASF539
	.byte	0x32
	.value	0x126
	.long	0x1b93
	.long	0x3096
	.uleb128 0x2
	.long	0x2e67
	.uleb128 0x2
	.long	0x2073
	.uleb128 0x2
	.long	0x1b93
	.uleb128 0x2
	.long	0x1acb
	.byte	0
	.uleb128 0x48
	.long	.LASF540
	.byte	0x32
	.byte	0x9f
	.long	0x2e67
	.uleb128 0xb
	.long	.LASF541
	.byte	0x32
	.byte	0xad
	.long	0x2073
	.long	0x30b6
	.uleb128 0x2
	.long	0x2073
	.byte	0
	.uleb128 0x6
	.long	.LASF542
	.byte	0x32
	.value	0x27f
	.long	0x1b93
	.long	0x30d1
	.uleb128 0x2
	.long	0x1b93
	.uleb128 0x2
	.long	0x2e67
	.byte	0
	.uleb128 0x17
	.long	.LASF543
	.byte	0x34
	.byte	0x2d
	.long	0x2073
	.uleb128 0x17
	.long	.LASF544
	.byte	0x34
	.byte	0x2e
	.long	0x2073
	.uleb128 0xa
	.byte	0x8
	.long	0xc1b
	.uleb128 0x5
	.long	.LASF545
	.byte	0x35
	.byte	0x26
	.long	0x1ad6
	.uleb128 0x5
	.long	.LASF546
	.byte	0x36
	.byte	0x30
	.long	0x3103
	.uleb128 0xa
	.byte	0x8
	.long	0x25f2
	.uleb128 0xb
	.long	.LASF547
	.byte	0x35
	.byte	0x9f
	.long	0x1b93
	.long	0x3123
	.uleb128 0x2
	.long	0x1b28
	.uleb128 0x2
	.long	0x30ed
	.byte	0
	.uleb128 0xb
	.long	.LASF548
	.byte	0x36
	.byte	0x37
	.long	0x1b28
	.long	0x313d
	.uleb128 0x2
	.long	0x1b28
	.uleb128 0x2
	.long	0x30f8
	.byte	0
	.uleb128 0xb
	.long	.LASF549
	.byte	0x36
	.byte	0x34
	.long	0x30f8
	.long	0x3152
	.uleb128 0x2
	.long	0x1d57
	.byte	0
	.uleb128 0xb
	.long	.LASF550
	.byte	0x35
	.byte	0x9b
	.long	0x30ed
	.long	0x3167
	.uleb128 0x2
	.long	0x1d57
	.byte	0
	.uleb128 0x87
	.long	0xdbb
	.uleb128 0x9
	.byte	0x3
	.quad	_ZStL8__ioinit
	.uleb128 0x3
	.byte	0x37
	.byte	0x27
	.long	0x2a3c
	.uleb128 0x3
	.byte	0x37
	.byte	0x2b
	.long	0x2a5a
	.uleb128 0x3
	.byte	0x37
	.byte	0x2e
	.long	0x2ba5
	.uleb128 0x3
	.byte	0x37
	.byte	0x33
	.long	0x29aa
	.uleb128 0x3
	.byte	0x37
	.byte	0x34
	.long	0x29da
	.uleb128 0x60
	.string	"abs"
	.byte	0x30
	.value	0x345
	.long	0x1b93
	.long	0x31b0
	.uleb128 0x2
	.long	0x1b93
	.byte	0
	.uleb128 0x3
	.byte	0x37
	.byte	0x36
	.long	0x319a
	.uleb128 0x3
	.byte	0x37
	.byte	0x37
	.long	0x2a74
	.uleb128 0x3
	.byte	0x37
	.byte	0x38
	.long	0x2a89
	.uleb128 0x3
	.byte	0x37
	.byte	0x39
	.long	0x2a9e
	.uleb128 0x3
	.byte	0x37
	.byte	0x3a
	.long	0x2ab3
	.uleb128 0x3
	.byte	0x37
	.byte	0x3c
	.long	0x18ba
	.uleb128 0x3
	.byte	0x37
	.byte	0x3e
	.long	0x2af8
	.uleb128 0x3
	.byte	0x37
	.byte	0x40
	.long	0x2b0e
	.uleb128 0x3
	.byte	0x37
	.byte	0x43
	.long	0x2b29
	.uleb128 0x3
	.byte	0x37
	.byte	0x44
	.long	0x2b44
	.uleb128 0x3
	.byte	0x37
	.byte	0x45
	.long	0x2b64
	.uleb128 0x3
	.byte	0x37
	.byte	0x47
	.long	0x2b84
	.uleb128 0x3
	.byte	0x37
	.byte	0x48
	.long	0x2bb8
	.uleb128 0x3
	.byte	0x37
	.byte	0x4a
	.long	0x2bc4
	.uleb128 0x3
	.byte	0x37
	.byte	0x4b
	.long	0x2bd6
	.uleb128 0x3
	.byte	0x37
	.byte	0x4c
	.long	0x2bf6
	.uleb128 0x3
	.byte	0x37
	.byte	0x4d
	.long	0x2c15
	.uleb128 0x3
	.byte	0x37
	.byte	0x4e
	.long	0x2c34
	.uleb128 0x3
	.byte	0x37
	.byte	0x50
	.long	0x2c4a
	.uleb128 0x3
	.byte	0x37
	.byte	0x51
	.long	0x2c6a
	.uleb128 0x5
	.long	.LASF551
	.byte	0x4
	.byte	0x32
	.long	0x3247
	.uleb128 0x4a
	.long	0x2547
	.long	0x3253
	.uleb128 0x4b
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.long	.LASF552
	.byte	0x4
	.byte	0x38
	.long	0x3263
	.uleb128 0xc
	.long	0x3253
	.uleb128 0x4a
	.long	0x24d2
	.long	0x326f
	.uleb128 0x4b
	.byte	0x3
	.byte	0
	.uleb128 0x48
	.long	.LASF553
	.byte	0x2e
	.byte	0x48
	.long	0x2909
	.uleb128 0xb
	.long	.LASF554
	.byte	0x2e
	.byte	0x4e
	.long	0x1ab8
	.long	0x3294
	.uleb128 0x2
	.long	0x28f9
	.uleb128 0x2
	.long	0x28f9
	.byte	0
	.uleb128 0xb
	.long	.LASF555
	.byte	0x2e
	.byte	0x52
	.long	0x28f9
	.long	0x32a9
	.uleb128 0x2
	.long	0x32a9
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x2126
	.uleb128 0xb
	.long	.LASF556
	.byte	0x2e
	.byte	0x4b
	.long	0x28f9
	.long	0x32c4
	.uleb128 0x2
	.long	0x32c4
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x28f9
	.uleb128 0xb
	.long	.LASF557
	.byte	0x2e
	.byte	0x8b
	.long	0x2073
	.long	0x32df
	.uleb128 0x2
	.long	0x2120
	.byte	0
	.uleb128 0xb
	.long	.LASF558
	.byte	0x2e
	.byte	0x8e
	.long	0x2073
	.long	0x32f4
	.uleb128 0x2
	.long	0x32f4
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x2904
	.uleb128 0xb
	.long	.LASF559
	.byte	0x2e
	.byte	0x77
	.long	0x32a9
	.long	0x330f
	.uleb128 0x2
	.long	0x32f4
	.byte	0
	.uleb128 0xb
	.long	.LASF560
	.byte	0x2e
	.byte	0x7b
	.long	0x32a9
	.long	0x3324
	.uleb128 0x2
	.long	0x32f4
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x1646
	.uleb128 0xa
	.byte	0x8
	.long	0x16a6
	.uleb128 0xa
	.byte	0x8
	.long	0xe9c
	.uleb128 0xc
	.long	0x3330
	.uleb128 0x10
	.byte	0x8
	.long	0x111a
	.uleb128 0x10
	.byte	0x8
	.long	0xe9c
	.uleb128 0xa
	.byte	0x8
	.long	0x111a
	.uleb128 0xc
	.long	0x3347
	.uleb128 0x10
	.byte	0x8
	.long	0xeb5
	.uleb128 0x10
	.byte	0x8
	.long	0x22f4
	.uleb128 0x10
	.byte	0x8
	.long	0xe4d
	.uleb128 0xa
	.byte	0x8
	.long	0x111f
	.uleb128 0x10
	.byte	0x8
	.long	0x1138
	.uleb128 0xa
	.byte	0x8
	.long	0x121b
	.uleb128 0xc
	.long	0x3370
	.uleb128 0x10
	.byte	0x8
	.long	0x111f
	.uleb128 0x2c
	.byte	0x3
	.byte	0x6
	.long	0x29
	.uleb128 0x2c
	.byte	0x3
	.byte	0x7
	.long	0xe13
	.uleb128 0xa
	.byte	0x8
	.long	0x1220
	.uleb128 0xc
	.long	0x338f
	.uleb128 0x10
	.byte	0x8
	.long	0x14cf
	.uleb128 0x10
	.byte	0x8
	.long	0x1220
	.uleb128 0xa
	.byte	0x8
	.long	0x14cf
	.uleb128 0xc
	.long	0x33a6
	.uleb128 0x10
	.byte	0x8
	.long	0x1239
	.uleb128 0x10
	.byte	0x8
	.long	0x1abf
	.uleb128 0x88
	.long	.LASF562
	.long	0x1b26
	.uleb128 0x29
	.long	.LASF563
	.long	0x46d
	.byte	0
	.uleb128 0x29
	.long	.LASF564
	.long	0x4c6
	.byte	0x1
	.uleb128 0x4c
	.long	.LASF565
	.long	0x1853
	.sleb128 -2147483648
	.uleb128 0x61
	.long	.LASF566
	.long	0x185e
	.long	0x7fffffff
	.uleb128 0x29
	.long	.LASF567
	.long	0x1905
	.byte	0x26
	.uleb128 0x4d
	.long	.LASF568
	.long	0x1947
	.value	0x134
	.uleb128 0x4d
	.long	.LASF569
	.long	0x1989
	.value	0x1344
	.uleb128 0x29
	.long	.LASF570
	.long	0x19cb
	.byte	0x40
	.uleb128 0x29
	.long	.LASF571
	.long	0x19f7
	.byte	0x7f
	.uleb128 0x4c
	.long	.LASF572
	.long	0x1a2e
	.sleb128 -32768
	.uleb128 0x4d
	.long	.LASF573
	.long	0x1a39
	.value	0x7fff
	.uleb128 0x4c
	.long	.LASF574
	.long	0x1a6c
	.sleb128 -9223372036854775808
	.uleb128 0x89
	.long	.LASF575
	.long	0x1a77
	.quad	0x7fffffffffffffff
	.uleb128 0x2a
	.long	.LASF576
	.long	0x16b8
	.uleb128 0x2a
	.long	.LASF577
	.long	0x16cd
	.uleb128 0x29
	.long	.LASF578
	.long	0x15f7
	.byte	0x1
	.uleb128 0x61
	.long	.LASF579
	.long	0x1657
	.long	0x3b9aca00
	.uleb128 0x2a
	.long	.LASF580
	.long	0x1714
	.uleb128 0x2a
	.long	.LASF581
	.long	0x1729
	.uleb128 0x2a
	.long	.LASF582
	.long	0x1770
	.uleb128 0x2a
	.long	.LASF583
	.long	0x1785
	.uleb128 0x8a
	.long	.LASF584
	.byte	0x3
	.byte	0xa
	.long	0x1b93
	.quad	.LFB5367
	.quad	.LFE5367-.LFB5367
	.uleb128 0x1
	.byte	0x9c
	.long	0x5134
	.uleb128 0x21
	.long	.LASF585
	.byte	0x3
	.byte	0xa
	.long	0x1b93
	.uleb128 0x3
	.byte	0x76
	.sleb128 -820
	.uleb128 0x21
	.long	.LASF586
	.byte	0x3
	.byte	0xa
	.long	0x2bf0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -832
	.uleb128 0x8
	.long	.LASF587
	.byte	0x3
	.byte	0xd
	.long	0x1b93
	.uleb128 0x3
	.byte	0x76
	.sleb128 -544
	.uleb128 0x8
	.long	.LASF588
	.byte	0x3
	.byte	0xe
	.long	0x5134
	.uleb128 0x3
	.byte	0x76
	.sleb128 -472
	.uleb128 0x8
	.long	.LASF589
	.byte	0x3
	.byte	0xe
	.long	0x5134
	.uleb128 0x3
	.byte	0x76
	.sleb128 -464
	.uleb128 0x8
	.long	.LASF590
	.byte	0x3
	.byte	0x10
	.long	0x111f
	.uleb128 0x3
	.byte	0x76
	.sleb128 -536
	.uleb128 0x8
	.long	.LASF591
	.byte	0x3
	.byte	0x10
	.long	0x111f
	.uleb128 0x3
	.byte	0x76
	.sleb128 -528
	.uleb128 0x8
	.long	.LASF592
	.byte	0x3
	.byte	0x11
	.long	0x1220
	.uleb128 0x3
	.byte	0x76
	.sleb128 -520
	.uleb128 0x8
	.long	.LASF593
	.byte	0x3
	.byte	0x13
	.long	0x1b93
	.uleb128 0x3
	.byte	0x76
	.sleb128 -540
	.uleb128 0x32
	.long	.LASF613
	.byte	0x3
	.byte	0x13
	.long	0x1b93
	.uleb128 0x8
	.long	.LASF594
	.byte	0x3
	.byte	0x15
	.long	0x22ed
	.uleb128 0x3
	.byte	0x76
	.sleb128 -504
	.uleb128 0x8
	.long	.LASF595
	.byte	0x3
	.byte	0x17
	.long	0x22ed
	.uleb128 0x3
	.byte	0x76
	.sleb128 -496
	.uleb128 0x8
	.long	.LASF596
	.byte	0x3
	.byte	0x19
	.long	0x22ed
	.uleb128 0x3
	.byte	0x76
	.sleb128 -488
	.uleb128 0x8
	.long	.LASF597
	.byte	0x3
	.byte	0x1b
	.long	0x22ed
	.uleb128 0x3
	.byte	0x76
	.sleb128 -480
	.uleb128 0x8
	.long	.LASF598
	.byte	0x3
	.byte	0x36
	.long	0x3253
	.uleb128 0x3
	.byte	0x76
	.sleb128 -368
	.uleb128 0x8
	.long	.LASF599
	.byte	0x3
	.byte	0x37
	.long	0x3253
	.uleb128 0x3
	.byte	0x76
	.sleb128 -336
	.uleb128 0x8
	.long	.LASF600
	.byte	0x3
	.byte	0x38
	.long	0x3253
	.uleb128 0x3
	.byte	0x76
	.sleb128 -304
	.uleb128 0x8
	.long	.LASF601
	.byte	0x3
	.byte	0x39
	.long	0x3253
	.uleb128 0x3
	.byte	0x76
	.sleb128 -272
	.uleb128 0x8
	.long	.LASF602
	.byte	0x3
	.byte	0x3a
	.long	0x3253
	.uleb128 0x3
	.byte	0x76
	.sleb128 -240
	.uleb128 0x8
	.long	.LASF603
	.byte	0x3
	.byte	0x3b
	.long	0x3253
	.uleb128 0x3
	.byte	0x76
	.sleb128 -208
	.uleb128 0x8
	.long	.LASF604
	.byte	0x3
	.byte	0x3c
	.long	0x3253
	.uleb128 0x3
	.byte	0x76
	.sleb128 -176
	.uleb128 0x8
	.long	.LASF605
	.byte	0x3
	.byte	0x3d
	.long	0x3253
	.uleb128 0x3
	.byte	0x76
	.sleb128 -400
	.uleb128 0x8
	.long	.LASF606
	.byte	0x3
	.byte	0x40
	.long	0x1ab8
	.uleb128 0x3
	.byte	0x76
	.sleb128 -456
	.uleb128 0x8
	.long	.LASF607
	.byte	0x3
	.byte	0x67
	.long	0x1ab8
	.uleb128 0x3
	.byte	0x76
	.sleb128 -448
	.uleb128 0x8
	.long	.LASF608
	.byte	0x3
	.byte	0x6b
	.long	0x1ab8
	.uleb128 0x3
	.byte	0x76
	.sleb128 -440
	.uleb128 0x8
	.long	.LASF609
	.byte	0x3
	.byte	0x98
	.long	0x1ab8
	.uleb128 0x3
	.byte	0x76
	.sleb128 -432
	.uleb128 0x8
	.long	.LASF610
	.byte	0x3
	.byte	0x9c
	.long	0x1ab8
	.uleb128 0x3
	.byte	0x76
	.sleb128 -424
	.uleb128 0x8
	.long	.LASF611
	.byte	0x3
	.byte	0xc4
	.long	0x1ab8
	.uleb128 0x3
	.byte	0x76
	.sleb128 -416
	.uleb128 0x8
	.long	.LASF612
	.byte	0x3
	.byte	0xc8
	.long	0x1ab8
	.uleb128 0x3
	.byte	0x76
	.sleb128 -408
	.uleb128 0x33
	.quad	.LBB117
	.quad	.LBE117-.LBB117
	.long	0x36a7
	.uleb128 0x1e
	.string	"i"
	.byte	0x3
	.byte	0x25
	.long	0x1b93
	.uleb128 0x3
	.byte	0x76
	.sleb128 -548
	.byte	0
	.uleb128 0x33
	.quad	.LBB155
	.quad	.LBE155-.LBB155
	.long	0x382d
	.uleb128 0x22
	.string	"i"
	.byte	0x3
	.byte	0x30
	.long	0x1b93
	.uleb128 0x1e
	.string	"i"
	.byte	0x3
	.byte	0x30
	.long	0x1b93
	.uleb128 0x3
	.byte	0x76
	.sleb128 -72
	.uleb128 0x34
	.long	0x5921
	.quad	.LBB156
	.quad	.LBE156-.LBB156
	.byte	0x3
	.byte	0x32
	.uleb128 0x1
	.long	0x5936
	.uleb128 0x3
	.byte	0x76
	.sleb128 -105
	.uleb128 0x16
	.long	0x5943
	.quad	.LBB158
	.quad	.LBE158-.LBB158
	.byte	0x4
	.value	0x539
	.uleb128 0x1
	.long	0x5acc
	.uleb128 0x3
	.byte	0x76
	.sleb128 -73
	.uleb128 0x1
	.long	0x5ac0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -74
	.uleb128 0x1
	.long	0x5ab4
	.uleb128 0x3
	.byte	0x76
	.sleb128 -75
	.uleb128 0x1
	.long	0x5aa8
	.uleb128 0x3
	.byte	0x76
	.sleb128 -76
	.uleb128 0x1
	.long	0x5a9c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -77
	.uleb128 0x1
	.long	0x5a90
	.uleb128 0x3
	.byte	0x76
	.sleb128 -78
	.uleb128 0x1
	.long	0x5a84
	.uleb128 0x3
	.byte	0x76
	.sleb128 -79
	.uleb128 0x1
	.long	0x5a78
	.uleb128 0x3
	.byte	0x76
	.sleb128 -80
	.uleb128 0x1
	.long	0x5a6c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -81
	.uleb128 0x1
	.long	0x5a60
	.uleb128 0x3
	.byte	0x76
	.sleb128 -82
	.uleb128 0x1
	.long	0x5a54
	.uleb128 0x3
	.byte	0x76
	.sleb128 -83
	.uleb128 0x1
	.long	0x5a48
	.uleb128 0x3
	.byte	0x76
	.sleb128 -84
	.uleb128 0x1
	.long	0x5a3c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -85
	.uleb128 0x1
	.long	0x5a30
	.uleb128 0x3
	.byte	0x76
	.sleb128 -86
	.uleb128 0x1
	.long	0x5a24
	.uleb128 0x3
	.byte	0x76
	.sleb128 -87
	.uleb128 0x1
	.long	0x5a18
	.uleb128 0x3
	.byte	0x76
	.sleb128 -88
	.uleb128 0x1
	.long	0x5a0c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -89
	.uleb128 0x1
	.long	0x5a00
	.uleb128 0x3
	.byte	0x76
	.sleb128 -90
	.uleb128 0x1
	.long	0x59f4
	.uleb128 0x3
	.byte	0x76
	.sleb128 -91
	.uleb128 0x1
	.long	0x59e8
	.uleb128 0x3
	.byte	0x76
	.sleb128 -92
	.uleb128 0x1
	.long	0x59dc
	.uleb128 0x3
	.byte	0x76
	.sleb128 -93
	.uleb128 0x1
	.long	0x59d0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -94
	.uleb128 0x1
	.long	0x59c4
	.uleb128 0x3
	.byte	0x76
	.sleb128 -95
	.uleb128 0x1
	.long	0x59b8
	.uleb128 0x3
	.byte	0x76
	.sleb128 -96
	.uleb128 0x1
	.long	0x59ac
	.uleb128 0x3
	.byte	0x76
	.sleb128 -97
	.uleb128 0x1
	.long	0x59a0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -98
	.uleb128 0x1
	.long	0x5994
	.uleb128 0x3
	.byte	0x76
	.sleb128 -99
	.uleb128 0x1
	.long	0x5988
	.uleb128 0x3
	.byte	0x76
	.sleb128 -100
	.uleb128 0x1
	.long	0x597c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -101
	.uleb128 0x1
	.long	0x5970
	.uleb128 0x3
	.byte	0x76
	.sleb128 -102
	.uleb128 0x1
	.long	0x5964
	.uleb128 0x3
	.byte	0x76
	.sleb128 -103
	.uleb128 0x1
	.long	0x5958
	.uleb128 0x3
	.byte	0x76
	.sleb128 -104
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.quad	.LBB160
	.quad	.LBE160-.LBB160
	.long	0x3a15
	.uleb128 0x32
	.long	.LASF614
	.byte	0x3
	.byte	0x49
	.long	0x514c
	.uleb128 0x33
	.quad	.LBB161
	.quad	.LBE161-.LBB161
	.long	0x3a05
	.uleb128 0x22
	.string	"i"
	.byte	0x3
	.byte	0x4c
	.long	0x1b93
	.uleb128 0x23
	.long	.Ldebug_ranges0+0
	.long	0x39f7
	.uleb128 0x22
	.string	"j"
	.byte	0x3
	.byte	0x4e
	.long	0x1b93
	.uleb128 0x1e
	.string	"j"
	.byte	0x3
	.byte	0x4e
	.long	0x1b93
	.uleb128 0x3
	.byte	0x76
	.sleb128 -852
	.uleb128 0x13
	.long	0x58f5
	.quad	.LBB164
	.quad	.LBE164-.LBB164
	.byte	0x3
	.byte	0x50
	.long	0x38b8
	.uleb128 0x1
	.long	0x5915
	.uleb128 0x3
	.byte	0x76
	.sleb128 -80
	.uleb128 0x1
	.long	0x590a
	.uleb128 0x3
	.byte	0x76
	.sleb128 -112
	.byte	0
	.uleb128 0x13
	.long	0x58f5
	.quad	.LBB166
	.quad	.LBE166-.LBB166
	.byte	0x3
	.byte	0x51
	.long	0x38e6
	.uleb128 0x1
	.long	0x5915
	.uleb128 0x3
	.byte	0x76
	.sleb128 -144
	.uleb128 0x1
	.long	0x590a
	.uleb128 0x3
	.byte	0x76
	.sleb128 -176
	.byte	0
	.uleb128 0x13
	.long	0x58f5
	.quad	.LBB168
	.quad	.LBE168-.LBB168
	.byte	0x3
	.byte	0x52
	.long	0x3914
	.uleb128 0x1
	.long	0x5915
	.uleb128 0x3
	.byte	0x76
	.sleb128 -208
	.uleb128 0x1
	.long	0x590a
	.uleb128 0x3
	.byte	0x76
	.sleb128 -240
	.byte	0
	.uleb128 0x13
	.long	0x58f5
	.quad	.LBB170
	.quad	.LBE170-.LBB170
	.byte	0x3
	.byte	0x53
	.long	0x3942
	.uleb128 0x1
	.long	0x5915
	.uleb128 0x3
	.byte	0x76
	.sleb128 -272
	.uleb128 0x1
	.long	0x590a
	.uleb128 0x3
	.byte	0x76
	.sleb128 -304
	.byte	0
	.uleb128 0x13
	.long	0x58f5
	.quad	.LBB172
	.quad	.LBE172-.LBB172
	.byte	0x3
	.byte	0x54
	.long	0x3970
	.uleb128 0x1
	.long	0x5915
	.uleb128 0x3
	.byte	0x76
	.sleb128 -336
	.uleb128 0x1
	.long	0x590a
	.uleb128 0x3
	.byte	0x76
	.sleb128 -368
	.byte	0
	.uleb128 0x13
	.long	0x58f5
	.quad	.LBB174
	.quad	.LBE174-.LBB174
	.byte	0x3
	.byte	0x55
	.long	0x399e
	.uleb128 0x1
	.long	0x5915
	.uleb128 0x3
	.byte	0x76
	.sleb128 -400
	.uleb128 0x1
	.long	0x590a
	.uleb128 0x3
	.byte	0x76
	.sleb128 -432
	.byte	0
	.uleb128 0x13
	.long	0x58f5
	.quad	.LBB176
	.quad	.LBE176-.LBB176
	.byte	0x3
	.byte	0x56
	.long	0x39cc
	.uleb128 0x1
	.long	0x5915
	.uleb128 0x3
	.byte	0x76
	.sleb128 -464
	.uleb128 0x1
	.long	0x590a
	.uleb128 0x3
	.byte	0x76
	.sleb128 -496
	.byte	0
	.uleb128 0x34
	.long	0x58f5
	.quad	.LBB178
	.quad	.LBE178-.LBB178
	.byte	0x3
	.byte	0x57
	.uleb128 0x1
	.long	0x5915
	.uleb128 0x3
	.byte	0x76
	.sleb128 -528
	.uleb128 0x1
	.long	0x590a
	.uleb128 0x3
	.byte	0x76
	.sleb128 -560
	.byte	0
	.byte	0
	.uleb128 0x1e
	.string	"i"
	.byte	0x3
	.byte	0x4c
	.long	0x1b93
	.uleb128 0x3
	.byte	0x76
	.sleb128 -856
	.byte	0
	.uleb128 0x8
	.long	.LASF614
	.byte	0x3
	.byte	0x49
	.long	0x514c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -824
	.byte	0
	.uleb128 0x23
	.long	.Ldebug_ranges0+0x30
	.long	0x4564
	.uleb128 0x32
	.long	.LASF614
	.byte	0x3
	.byte	0x75
	.long	0x514c
	.uleb128 0x23
	.long	.Ldebug_ranges0+0x60
	.long	0x4555
	.uleb128 0x22
	.string	"i"
	.byte	0x3
	.byte	0x78
	.long	0x1b93
	.uleb128 0x23
	.long	.Ldebug_ranges0+0x90
	.long	0x4547
	.uleb128 0x22
	.string	"j"
	.byte	0x3
	.byte	0x7d
	.long	0x1b93
	.uleb128 0x1e
	.string	"j"
	.byte	0x3
	.byte	0x7d
	.long	0x1b93
	.uleb128 0x3
	.byte	0x76
	.sleb128 -116
	.uleb128 0x13
	.long	0x5921
	.quad	.LBB186
	.quad	.LBE186-.LBB186
	.byte	0x3
	.byte	0x7f
	.long	0x3bb8
	.uleb128 0x1
	.long	0x5936
	.uleb128 0x3
	.byte	0x76
	.sleb128 -153
	.uleb128 0x16
	.long	0x5943
	.quad	.LBB188
	.quad	.LBE188-.LBB188
	.byte	0x4
	.value	0x539
	.uleb128 0x1
	.long	0x5acc
	.uleb128 0x3
	.byte	0x76
	.sleb128 -121
	.uleb128 0x1
	.long	0x5ac0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -122
	.uleb128 0x1
	.long	0x5ab4
	.uleb128 0x3
	.byte	0x76
	.sleb128 -123
	.uleb128 0x1
	.long	0x5aa8
	.uleb128 0x3
	.byte	0x76
	.sleb128 -124
	.uleb128 0x1
	.long	0x5a9c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -125
	.uleb128 0x1
	.long	0x5a90
	.uleb128 0x3
	.byte	0x76
	.sleb128 -126
	.uleb128 0x1
	.long	0x5a84
	.uleb128 0x3
	.byte	0x76
	.sleb128 -127
	.uleb128 0x1
	.long	0x5a78
	.uleb128 0x3
	.byte	0x76
	.sleb128 -128
	.uleb128 0x1
	.long	0x5a6c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -129
	.uleb128 0x1
	.long	0x5a60
	.uleb128 0x3
	.byte	0x76
	.sleb128 -130
	.uleb128 0x1
	.long	0x5a54
	.uleb128 0x3
	.byte	0x76
	.sleb128 -131
	.uleb128 0x1
	.long	0x5a48
	.uleb128 0x3
	.byte	0x76
	.sleb128 -132
	.uleb128 0x1
	.long	0x5a3c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -133
	.uleb128 0x1
	.long	0x5a30
	.uleb128 0x3
	.byte	0x76
	.sleb128 -134
	.uleb128 0x1
	.long	0x5a24
	.uleb128 0x3
	.byte	0x76
	.sleb128 -135
	.uleb128 0x1
	.long	0x5a18
	.uleb128 0x3
	.byte	0x76
	.sleb128 -136
	.uleb128 0x1
	.long	0x5a0c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -137
	.uleb128 0x1
	.long	0x5a00
	.uleb128 0x3
	.byte	0x76
	.sleb128 -138
	.uleb128 0x1
	.long	0x59f4
	.uleb128 0x3
	.byte	0x76
	.sleb128 -139
	.uleb128 0x1
	.long	0x59e8
	.uleb128 0x3
	.byte	0x76
	.sleb128 -140
	.uleb128 0x1
	.long	0x59dc
	.uleb128 0x3
	.byte	0x76
	.sleb128 -141
	.uleb128 0x1
	.long	0x59d0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -142
	.uleb128 0x1
	.long	0x59c4
	.uleb128 0x3
	.byte	0x76
	.sleb128 -143
	.uleb128 0x1
	.long	0x59b8
	.uleb128 0x3
	.byte	0x76
	.sleb128 -144
	.uleb128 0x1
	.long	0x59ac
	.uleb128 0x3
	.byte	0x76
	.sleb128 -145
	.uleb128 0x1
	.long	0x59a0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -146
	.uleb128 0x1
	.long	0x5994
	.uleb128 0x3
	.byte	0x76
	.sleb128 -147
	.uleb128 0x1
	.long	0x5988
	.uleb128 0x3
	.byte	0x76
	.sleb128 -148
	.uleb128 0x1
	.long	0x597c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -149
	.uleb128 0x1
	.long	0x5970
	.uleb128 0x3
	.byte	0x76
	.sleb128 -150
	.uleb128 0x1
	.long	0x5964
	.uleb128 0x3
	.byte	0x76
	.sleb128 -151
	.uleb128 0x1
	.long	0x5958
	.uleb128 0x3
	.byte	0x76
	.sleb128 -152
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x5921
	.quad	.LBB190
	.quad	.LBE190-.LBB190
	.byte	0x3
	.byte	0x80
	.long	0x3d16
	.uleb128 0x1
	.long	0x5936
	.uleb128 0x3
	.byte	0x76
	.sleb128 -186
	.uleb128 0x16
	.long	0x5943
	.quad	.LBB192
	.quad	.LBE192-.LBB192
	.byte	0x4
	.value	0x539
	.uleb128 0x1
	.long	0x5acc
	.uleb128 0x3
	.byte	0x76
	.sleb128 -154
	.uleb128 0x1
	.long	0x5ac0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -155
	.uleb128 0x1
	.long	0x5ab4
	.uleb128 0x3
	.byte	0x76
	.sleb128 -156
	.uleb128 0x1
	.long	0x5aa8
	.uleb128 0x3
	.byte	0x76
	.sleb128 -157
	.uleb128 0x1
	.long	0x5a9c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -158
	.uleb128 0x1
	.long	0x5a90
	.uleb128 0x3
	.byte	0x76
	.sleb128 -159
	.uleb128 0x1
	.long	0x5a84
	.uleb128 0x3
	.byte	0x76
	.sleb128 -160
	.uleb128 0x1
	.long	0x5a78
	.uleb128 0x3
	.byte	0x76
	.sleb128 -161
	.uleb128 0x1
	.long	0x5a6c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -162
	.uleb128 0x1
	.long	0x5a60
	.uleb128 0x3
	.byte	0x76
	.sleb128 -163
	.uleb128 0x1
	.long	0x5a54
	.uleb128 0x3
	.byte	0x76
	.sleb128 -164
	.uleb128 0x1
	.long	0x5a48
	.uleb128 0x3
	.byte	0x76
	.sleb128 -165
	.uleb128 0x1
	.long	0x5a3c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -166
	.uleb128 0x1
	.long	0x5a30
	.uleb128 0x3
	.byte	0x76
	.sleb128 -167
	.uleb128 0x1
	.long	0x5a24
	.uleb128 0x3
	.byte	0x76
	.sleb128 -168
	.uleb128 0x1
	.long	0x5a18
	.uleb128 0x3
	.byte	0x76
	.sleb128 -169
	.uleb128 0x1
	.long	0x5a0c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -170
	.uleb128 0x1
	.long	0x5a00
	.uleb128 0x3
	.byte	0x76
	.sleb128 -171
	.uleb128 0x1
	.long	0x59f4
	.uleb128 0x3
	.byte	0x76
	.sleb128 -172
	.uleb128 0x1
	.long	0x59e8
	.uleb128 0x3
	.byte	0x76
	.sleb128 -173
	.uleb128 0x1
	.long	0x59dc
	.uleb128 0x3
	.byte	0x76
	.sleb128 -174
	.uleb128 0x1
	.long	0x59d0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -175
	.uleb128 0x1
	.long	0x59c4
	.uleb128 0x3
	.byte	0x76
	.sleb128 -176
	.uleb128 0x1
	.long	0x59b8
	.uleb128 0x3
	.byte	0x76
	.sleb128 -177
	.uleb128 0x1
	.long	0x59ac
	.uleb128 0x3
	.byte	0x76
	.sleb128 -178
	.uleb128 0x1
	.long	0x59a0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -179
	.uleb128 0x1
	.long	0x5994
	.uleb128 0x3
	.byte	0x76
	.sleb128 -180
	.uleb128 0x1
	.long	0x5988
	.uleb128 0x3
	.byte	0x76
	.sleb128 -181
	.uleb128 0x1
	.long	0x597c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -182
	.uleb128 0x1
	.long	0x5970
	.uleb128 0x3
	.byte	0x76
	.sleb128 -183
	.uleb128 0x1
	.long	0x5964
	.uleb128 0x3
	.byte	0x76
	.sleb128 -184
	.uleb128 0x1
	.long	0x5958
	.uleb128 0x3
	.byte	0x76
	.sleb128 -185
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x5921
	.quad	.LBB194
	.quad	.LBE194-.LBB194
	.byte	0x3
	.byte	0x81
	.long	0x3e74
	.uleb128 0x1
	.long	0x5936
	.uleb128 0x3
	.byte	0x76
	.sleb128 -219
	.uleb128 0x16
	.long	0x5943
	.quad	.LBB196
	.quad	.LBE196-.LBB196
	.byte	0x4
	.value	0x539
	.uleb128 0x1
	.long	0x5acc
	.uleb128 0x3
	.byte	0x76
	.sleb128 -187
	.uleb128 0x1
	.long	0x5ac0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -188
	.uleb128 0x1
	.long	0x5ab4
	.uleb128 0x3
	.byte	0x76
	.sleb128 -189
	.uleb128 0x1
	.long	0x5aa8
	.uleb128 0x3
	.byte	0x76
	.sleb128 -190
	.uleb128 0x1
	.long	0x5a9c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -191
	.uleb128 0x1
	.long	0x5a90
	.uleb128 0x3
	.byte	0x76
	.sleb128 -192
	.uleb128 0x1
	.long	0x5a84
	.uleb128 0x3
	.byte	0x76
	.sleb128 -193
	.uleb128 0x1
	.long	0x5a78
	.uleb128 0x3
	.byte	0x76
	.sleb128 -194
	.uleb128 0x1
	.long	0x5a6c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -195
	.uleb128 0x1
	.long	0x5a60
	.uleb128 0x3
	.byte	0x76
	.sleb128 -196
	.uleb128 0x1
	.long	0x5a54
	.uleb128 0x3
	.byte	0x76
	.sleb128 -197
	.uleb128 0x1
	.long	0x5a48
	.uleb128 0x3
	.byte	0x76
	.sleb128 -198
	.uleb128 0x1
	.long	0x5a3c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -199
	.uleb128 0x1
	.long	0x5a30
	.uleb128 0x3
	.byte	0x76
	.sleb128 -200
	.uleb128 0x1
	.long	0x5a24
	.uleb128 0x3
	.byte	0x76
	.sleb128 -201
	.uleb128 0x1
	.long	0x5a18
	.uleb128 0x3
	.byte	0x76
	.sleb128 -202
	.uleb128 0x1
	.long	0x5a0c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -203
	.uleb128 0x1
	.long	0x5a00
	.uleb128 0x3
	.byte	0x76
	.sleb128 -204
	.uleb128 0x1
	.long	0x59f4
	.uleb128 0x3
	.byte	0x76
	.sleb128 -205
	.uleb128 0x1
	.long	0x59e8
	.uleb128 0x3
	.byte	0x76
	.sleb128 -206
	.uleb128 0x1
	.long	0x59dc
	.uleb128 0x3
	.byte	0x76
	.sleb128 -207
	.uleb128 0x1
	.long	0x59d0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -208
	.uleb128 0x1
	.long	0x59c4
	.uleb128 0x3
	.byte	0x76
	.sleb128 -209
	.uleb128 0x1
	.long	0x59b8
	.uleb128 0x3
	.byte	0x76
	.sleb128 -210
	.uleb128 0x1
	.long	0x59ac
	.uleb128 0x3
	.byte	0x76
	.sleb128 -211
	.uleb128 0x1
	.long	0x59a0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -212
	.uleb128 0x1
	.long	0x5994
	.uleb128 0x3
	.byte	0x76
	.sleb128 -213
	.uleb128 0x1
	.long	0x5988
	.uleb128 0x3
	.byte	0x76
	.sleb128 -214
	.uleb128 0x1
	.long	0x597c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -215
	.uleb128 0x1
	.long	0x5970
	.uleb128 0x3
	.byte	0x76
	.sleb128 -216
	.uleb128 0x1
	.long	0x5964
	.uleb128 0x3
	.byte	0x76
	.sleb128 -217
	.uleb128 0x1
	.long	0x5958
	.uleb128 0x3
	.byte	0x76
	.sleb128 -218
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x5921
	.quad	.LBB198
	.quad	.LBE198-.LBB198
	.byte	0x3
	.byte	0x82
	.long	0x3fd2
	.uleb128 0x1
	.long	0x5936
	.uleb128 0x3
	.byte	0x76
	.sleb128 -252
	.uleb128 0x16
	.long	0x5943
	.quad	.LBB200
	.quad	.LBE200-.LBB200
	.byte	0x4
	.value	0x539
	.uleb128 0x1
	.long	0x5acc
	.uleb128 0x3
	.byte	0x76
	.sleb128 -220
	.uleb128 0x1
	.long	0x5ac0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -221
	.uleb128 0x1
	.long	0x5ab4
	.uleb128 0x3
	.byte	0x76
	.sleb128 -222
	.uleb128 0x1
	.long	0x5aa8
	.uleb128 0x3
	.byte	0x76
	.sleb128 -223
	.uleb128 0x1
	.long	0x5a9c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -224
	.uleb128 0x1
	.long	0x5a90
	.uleb128 0x3
	.byte	0x76
	.sleb128 -225
	.uleb128 0x1
	.long	0x5a84
	.uleb128 0x3
	.byte	0x76
	.sleb128 -226
	.uleb128 0x1
	.long	0x5a78
	.uleb128 0x3
	.byte	0x76
	.sleb128 -227
	.uleb128 0x1
	.long	0x5a6c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -228
	.uleb128 0x1
	.long	0x5a60
	.uleb128 0x3
	.byte	0x76
	.sleb128 -229
	.uleb128 0x1
	.long	0x5a54
	.uleb128 0x3
	.byte	0x76
	.sleb128 -230
	.uleb128 0x1
	.long	0x5a48
	.uleb128 0x3
	.byte	0x76
	.sleb128 -231
	.uleb128 0x1
	.long	0x5a3c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -232
	.uleb128 0x1
	.long	0x5a30
	.uleb128 0x3
	.byte	0x76
	.sleb128 -233
	.uleb128 0x1
	.long	0x5a24
	.uleb128 0x3
	.byte	0x76
	.sleb128 -234
	.uleb128 0x1
	.long	0x5a18
	.uleb128 0x3
	.byte	0x76
	.sleb128 -235
	.uleb128 0x1
	.long	0x5a0c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -236
	.uleb128 0x1
	.long	0x5a00
	.uleb128 0x3
	.byte	0x76
	.sleb128 -237
	.uleb128 0x1
	.long	0x59f4
	.uleb128 0x3
	.byte	0x76
	.sleb128 -238
	.uleb128 0x1
	.long	0x59e8
	.uleb128 0x3
	.byte	0x76
	.sleb128 -239
	.uleb128 0x1
	.long	0x59dc
	.uleb128 0x3
	.byte	0x76
	.sleb128 -240
	.uleb128 0x1
	.long	0x59d0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -241
	.uleb128 0x1
	.long	0x59c4
	.uleb128 0x3
	.byte	0x76
	.sleb128 -242
	.uleb128 0x1
	.long	0x59b8
	.uleb128 0x3
	.byte	0x76
	.sleb128 -243
	.uleb128 0x1
	.long	0x59ac
	.uleb128 0x3
	.byte	0x76
	.sleb128 -244
	.uleb128 0x1
	.long	0x59a0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -245
	.uleb128 0x1
	.long	0x5994
	.uleb128 0x3
	.byte	0x76
	.sleb128 -246
	.uleb128 0x1
	.long	0x5988
	.uleb128 0x3
	.byte	0x76
	.sleb128 -247
	.uleb128 0x1
	.long	0x597c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -248
	.uleb128 0x1
	.long	0x5970
	.uleb128 0x3
	.byte	0x76
	.sleb128 -249
	.uleb128 0x1
	.long	0x5964
	.uleb128 0x3
	.byte	0x76
	.sleb128 -250
	.uleb128 0x1
	.long	0x5958
	.uleb128 0x3
	.byte	0x76
	.sleb128 -251
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x5921
	.quad	.LBB202
	.quad	.LBE202-.LBB202
	.byte	0x3
	.byte	0x83
	.long	0x4130
	.uleb128 0x1
	.long	0x5936
	.uleb128 0x3
	.byte	0x76
	.sleb128 -285
	.uleb128 0x16
	.long	0x5943
	.quad	.LBB204
	.quad	.LBE204-.LBB204
	.byte	0x4
	.value	0x539
	.uleb128 0x1
	.long	0x5acc
	.uleb128 0x3
	.byte	0x76
	.sleb128 -253
	.uleb128 0x1
	.long	0x5ac0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -254
	.uleb128 0x1
	.long	0x5ab4
	.uleb128 0x3
	.byte	0x76
	.sleb128 -255
	.uleb128 0x1
	.long	0x5aa8
	.uleb128 0x3
	.byte	0x76
	.sleb128 -256
	.uleb128 0x1
	.long	0x5a9c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -257
	.uleb128 0x1
	.long	0x5a90
	.uleb128 0x3
	.byte	0x76
	.sleb128 -258
	.uleb128 0x1
	.long	0x5a84
	.uleb128 0x3
	.byte	0x76
	.sleb128 -259
	.uleb128 0x1
	.long	0x5a78
	.uleb128 0x3
	.byte	0x76
	.sleb128 -260
	.uleb128 0x1
	.long	0x5a6c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -261
	.uleb128 0x1
	.long	0x5a60
	.uleb128 0x3
	.byte	0x76
	.sleb128 -262
	.uleb128 0x1
	.long	0x5a54
	.uleb128 0x3
	.byte	0x76
	.sleb128 -263
	.uleb128 0x1
	.long	0x5a48
	.uleb128 0x3
	.byte	0x76
	.sleb128 -264
	.uleb128 0x1
	.long	0x5a3c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -265
	.uleb128 0x1
	.long	0x5a30
	.uleb128 0x3
	.byte	0x76
	.sleb128 -266
	.uleb128 0x1
	.long	0x5a24
	.uleb128 0x3
	.byte	0x76
	.sleb128 -267
	.uleb128 0x1
	.long	0x5a18
	.uleb128 0x3
	.byte	0x76
	.sleb128 -268
	.uleb128 0x1
	.long	0x5a0c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -269
	.uleb128 0x1
	.long	0x5a00
	.uleb128 0x3
	.byte	0x76
	.sleb128 -270
	.uleb128 0x1
	.long	0x59f4
	.uleb128 0x3
	.byte	0x76
	.sleb128 -271
	.uleb128 0x1
	.long	0x59e8
	.uleb128 0x3
	.byte	0x76
	.sleb128 -272
	.uleb128 0x1
	.long	0x59dc
	.uleb128 0x3
	.byte	0x76
	.sleb128 -273
	.uleb128 0x1
	.long	0x59d0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -274
	.uleb128 0x1
	.long	0x59c4
	.uleb128 0x3
	.byte	0x76
	.sleb128 -275
	.uleb128 0x1
	.long	0x59b8
	.uleb128 0x3
	.byte	0x76
	.sleb128 -276
	.uleb128 0x1
	.long	0x59ac
	.uleb128 0x3
	.byte	0x76
	.sleb128 -277
	.uleb128 0x1
	.long	0x59a0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -278
	.uleb128 0x1
	.long	0x5994
	.uleb128 0x3
	.byte	0x76
	.sleb128 -279
	.uleb128 0x1
	.long	0x5988
	.uleb128 0x3
	.byte	0x76
	.sleb128 -280
	.uleb128 0x1
	.long	0x597c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -281
	.uleb128 0x1
	.long	0x5970
	.uleb128 0x3
	.byte	0x76
	.sleb128 -282
	.uleb128 0x1
	.long	0x5964
	.uleb128 0x3
	.byte	0x76
	.sleb128 -283
	.uleb128 0x1
	.long	0x5958
	.uleb128 0x3
	.byte	0x76
	.sleb128 -284
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x5921
	.quad	.LBB206
	.quad	.LBE206-.LBB206
	.byte	0x3
	.byte	0x84
	.long	0x428e
	.uleb128 0x1
	.long	0x5936
	.uleb128 0x3
	.byte	0x76
	.sleb128 -318
	.uleb128 0x16
	.long	0x5943
	.quad	.LBB208
	.quad	.LBE208-.LBB208
	.byte	0x4
	.value	0x539
	.uleb128 0x1
	.long	0x5acc
	.uleb128 0x3
	.byte	0x76
	.sleb128 -286
	.uleb128 0x1
	.long	0x5ac0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -287
	.uleb128 0x1
	.long	0x5ab4
	.uleb128 0x3
	.byte	0x76
	.sleb128 -288
	.uleb128 0x1
	.long	0x5aa8
	.uleb128 0x3
	.byte	0x76
	.sleb128 -289
	.uleb128 0x1
	.long	0x5a9c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -290
	.uleb128 0x1
	.long	0x5a90
	.uleb128 0x3
	.byte	0x76
	.sleb128 -291
	.uleb128 0x1
	.long	0x5a84
	.uleb128 0x3
	.byte	0x76
	.sleb128 -292
	.uleb128 0x1
	.long	0x5a78
	.uleb128 0x3
	.byte	0x76
	.sleb128 -293
	.uleb128 0x1
	.long	0x5a6c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -294
	.uleb128 0x1
	.long	0x5a60
	.uleb128 0x3
	.byte	0x76
	.sleb128 -295
	.uleb128 0x1
	.long	0x5a54
	.uleb128 0x3
	.byte	0x76
	.sleb128 -296
	.uleb128 0x1
	.long	0x5a48
	.uleb128 0x3
	.byte	0x76
	.sleb128 -297
	.uleb128 0x1
	.long	0x5a3c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -298
	.uleb128 0x1
	.long	0x5a30
	.uleb128 0x3
	.byte	0x76
	.sleb128 -299
	.uleb128 0x1
	.long	0x5a24
	.uleb128 0x3
	.byte	0x76
	.sleb128 -300
	.uleb128 0x1
	.long	0x5a18
	.uleb128 0x3
	.byte	0x76
	.sleb128 -301
	.uleb128 0x1
	.long	0x5a0c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -302
	.uleb128 0x1
	.long	0x5a00
	.uleb128 0x3
	.byte	0x76
	.sleb128 -303
	.uleb128 0x1
	.long	0x59f4
	.uleb128 0x3
	.byte	0x76
	.sleb128 -304
	.uleb128 0x1
	.long	0x59e8
	.uleb128 0x3
	.byte	0x76
	.sleb128 -305
	.uleb128 0x1
	.long	0x59dc
	.uleb128 0x3
	.byte	0x76
	.sleb128 -306
	.uleb128 0x1
	.long	0x59d0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -307
	.uleb128 0x1
	.long	0x59c4
	.uleb128 0x3
	.byte	0x76
	.sleb128 -308
	.uleb128 0x1
	.long	0x59b8
	.uleb128 0x3
	.byte	0x76
	.sleb128 -309
	.uleb128 0x1
	.long	0x59ac
	.uleb128 0x3
	.byte	0x76
	.sleb128 -310
	.uleb128 0x1
	.long	0x59a0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -311
	.uleb128 0x1
	.long	0x5994
	.uleb128 0x3
	.byte	0x76
	.sleb128 -312
	.uleb128 0x1
	.long	0x5988
	.uleb128 0x3
	.byte	0x76
	.sleb128 -313
	.uleb128 0x1
	.long	0x597c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -314
	.uleb128 0x1
	.long	0x5970
	.uleb128 0x3
	.byte	0x76
	.sleb128 -315
	.uleb128 0x1
	.long	0x5964
	.uleb128 0x3
	.byte	0x76
	.sleb128 -316
	.uleb128 0x1
	.long	0x5958
	.uleb128 0x3
	.byte	0x76
	.sleb128 -317
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x5921
	.quad	.LBB210
	.quad	.LBE210-.LBB210
	.byte	0x3
	.byte	0x85
	.long	0x43ec
	.uleb128 0x1
	.long	0x5936
	.uleb128 0x3
	.byte	0x76
	.sleb128 -351
	.uleb128 0x16
	.long	0x5943
	.quad	.LBB212
	.quad	.LBE212-.LBB212
	.byte	0x4
	.value	0x539
	.uleb128 0x1
	.long	0x5acc
	.uleb128 0x3
	.byte	0x76
	.sleb128 -319
	.uleb128 0x1
	.long	0x5ac0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -320
	.uleb128 0x1
	.long	0x5ab4
	.uleb128 0x3
	.byte	0x76
	.sleb128 -321
	.uleb128 0x1
	.long	0x5aa8
	.uleb128 0x3
	.byte	0x76
	.sleb128 -322
	.uleb128 0x1
	.long	0x5a9c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -323
	.uleb128 0x1
	.long	0x5a90
	.uleb128 0x3
	.byte	0x76
	.sleb128 -324
	.uleb128 0x1
	.long	0x5a84
	.uleb128 0x3
	.byte	0x76
	.sleb128 -325
	.uleb128 0x1
	.long	0x5a78
	.uleb128 0x3
	.byte	0x76
	.sleb128 -326
	.uleb128 0x1
	.long	0x5a6c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -327
	.uleb128 0x1
	.long	0x5a60
	.uleb128 0x3
	.byte	0x76
	.sleb128 -328
	.uleb128 0x1
	.long	0x5a54
	.uleb128 0x3
	.byte	0x76
	.sleb128 -329
	.uleb128 0x1
	.long	0x5a48
	.uleb128 0x3
	.byte	0x76
	.sleb128 -330
	.uleb128 0x1
	.long	0x5a3c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -331
	.uleb128 0x1
	.long	0x5a30
	.uleb128 0x3
	.byte	0x76
	.sleb128 -332
	.uleb128 0x1
	.long	0x5a24
	.uleb128 0x3
	.byte	0x76
	.sleb128 -333
	.uleb128 0x1
	.long	0x5a18
	.uleb128 0x3
	.byte	0x76
	.sleb128 -334
	.uleb128 0x1
	.long	0x5a0c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -335
	.uleb128 0x1
	.long	0x5a00
	.uleb128 0x3
	.byte	0x76
	.sleb128 -336
	.uleb128 0x1
	.long	0x59f4
	.uleb128 0x3
	.byte	0x76
	.sleb128 -337
	.uleb128 0x1
	.long	0x59e8
	.uleb128 0x3
	.byte	0x76
	.sleb128 -338
	.uleb128 0x1
	.long	0x59dc
	.uleb128 0x3
	.byte	0x76
	.sleb128 -339
	.uleb128 0x1
	.long	0x59d0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -340
	.uleb128 0x1
	.long	0x59c4
	.uleb128 0x3
	.byte	0x76
	.sleb128 -341
	.uleb128 0x1
	.long	0x59b8
	.uleb128 0x3
	.byte	0x76
	.sleb128 -342
	.uleb128 0x1
	.long	0x59ac
	.uleb128 0x3
	.byte	0x76
	.sleb128 -343
	.uleb128 0x1
	.long	0x59a0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -344
	.uleb128 0x1
	.long	0x5994
	.uleb128 0x3
	.byte	0x76
	.sleb128 -345
	.uleb128 0x1
	.long	0x5988
	.uleb128 0x3
	.byte	0x76
	.sleb128 -346
	.uleb128 0x1
	.long	0x597c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -347
	.uleb128 0x1
	.long	0x5970
	.uleb128 0x3
	.byte	0x76
	.sleb128 -348
	.uleb128 0x1
	.long	0x5964
	.uleb128 0x3
	.byte	0x76
	.sleb128 -349
	.uleb128 0x1
	.long	0x5958
	.uleb128 0x3
	.byte	0x76
	.sleb128 -350
	.byte	0
	.byte	0
	.uleb128 0x34
	.long	0x5921
	.quad	.LBB214
	.quad	.LBE214-.LBB214
	.byte	0x3
	.byte	0x86
	.uleb128 0x1
	.long	0x5936
	.uleb128 0x3
	.byte	0x76
	.sleb128 -384
	.uleb128 0x16
	.long	0x5943
	.quad	.LBB216
	.quad	.LBE216-.LBB216
	.byte	0x4
	.value	0x539
	.uleb128 0x1
	.long	0x5acc
	.uleb128 0x3
	.byte	0x76
	.sleb128 -352
	.uleb128 0x1
	.long	0x5ac0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -353
	.uleb128 0x1
	.long	0x5ab4
	.uleb128 0x3
	.byte	0x76
	.sleb128 -354
	.uleb128 0x1
	.long	0x5aa8
	.uleb128 0x3
	.byte	0x76
	.sleb128 -355
	.uleb128 0x1
	.long	0x5a9c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -356
	.uleb128 0x1
	.long	0x5a90
	.uleb128 0x3
	.byte	0x76
	.sleb128 -357
	.uleb128 0x1
	.long	0x5a84
	.uleb128 0x3
	.byte	0x76
	.sleb128 -358
	.uleb128 0x1
	.long	0x5a78
	.uleb128 0x3
	.byte	0x76
	.sleb128 -359
	.uleb128 0x1
	.long	0x5a6c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -360
	.uleb128 0x1
	.long	0x5a60
	.uleb128 0x3
	.byte	0x76
	.sleb128 -361
	.uleb128 0x1
	.long	0x5a54
	.uleb128 0x3
	.byte	0x76
	.sleb128 -362
	.uleb128 0x1
	.long	0x5a48
	.uleb128 0x3
	.byte	0x76
	.sleb128 -363
	.uleb128 0x1
	.long	0x5a3c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -364
	.uleb128 0x1
	.long	0x5a30
	.uleb128 0x3
	.byte	0x76
	.sleb128 -365
	.uleb128 0x1
	.long	0x5a24
	.uleb128 0x3
	.byte	0x76
	.sleb128 -366
	.uleb128 0x1
	.long	0x5a18
	.uleb128 0x3
	.byte	0x76
	.sleb128 -367
	.uleb128 0x1
	.long	0x5a0c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -368
	.uleb128 0x1
	.long	0x5a00
	.uleb128 0x3
	.byte	0x76
	.sleb128 -369
	.uleb128 0x1
	.long	0x59f4
	.uleb128 0x3
	.byte	0x76
	.sleb128 -370
	.uleb128 0x1
	.long	0x59e8
	.uleb128 0x3
	.byte	0x76
	.sleb128 -371
	.uleb128 0x1
	.long	0x59dc
	.uleb128 0x3
	.byte	0x76
	.sleb128 -372
	.uleb128 0x1
	.long	0x59d0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -373
	.uleb128 0x1
	.long	0x59c4
	.uleb128 0x3
	.byte	0x76
	.sleb128 -374
	.uleb128 0x1
	.long	0x59b8
	.uleb128 0x3
	.byte	0x76
	.sleb128 -375
	.uleb128 0x1
	.long	0x59ac
	.uleb128 0x3
	.byte	0x76
	.sleb128 -376
	.uleb128 0x1
	.long	0x59a0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -377
	.uleb128 0x1
	.long	0x5994
	.uleb128 0x3
	.byte	0x76
	.sleb128 -378
	.uleb128 0x1
	.long	0x5988
	.uleb128 0x3
	.byte	0x76
	.sleb128 -379
	.uleb128 0x1
	.long	0x597c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -380
	.uleb128 0x1
	.long	0x5970
	.uleb128 0x3
	.byte	0x76
	.sleb128 -381
	.uleb128 0x1
	.long	0x5964
	.uleb128 0x3
	.byte	0x76
	.sleb128 -382
	.uleb128 0x1
	.long	0x5958
	.uleb128 0x3
	.byte	0x76
	.sleb128 -383
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.string	"i"
	.byte	0x3
	.byte	0x78
	.long	0x1b93
	.uleb128 0x3
	.byte	0x76
	.sleb128 -120
	.byte	0
	.uleb128 0x8
	.long	.LASF614
	.byte	0x3
	.byte	0x75
	.long	0x514c
	.uleb128 0x2
	.byte	0x76
	.sleb128 -64
	.byte	0
	.uleb128 0x23
	.long	.Ldebug_ranges0+0xc0
	.long	0x4647
	.uleb128 0x32
	.long	.LASF614
	.byte	0x3
	.byte	0xa7
	.long	0x514c
	.uleb128 0x23
	.long	.Ldebug_ranges0+0xf0
	.long	0x4637
	.uleb128 0x22
	.string	"i"
	.byte	0x3
	.byte	0xaa
	.long	0x1b93
	.uleb128 0x23
	.long	.Ldebug_ranges0+0x120
	.long	0x4629
	.uleb128 0x22
	.string	"j"
	.byte	0x3
	.byte	0xaf
	.long	0x1b93
	.uleb128 0x33
	.quad	.LBB226
	.quad	.LBE226-.LBB226
	.long	0x461b
	.uleb128 0x32
	.long	.LASF615
	.byte	0x3
	.byte	0xb1
	.long	0x3253
	.uleb128 0x8
	.long	.LASF615
	.byte	0x3
	.byte	0xb1
	.long	0x3253
	.uleb128 0x3
	.byte	0x76
	.sleb128 -112
	.uleb128 0x13
	.long	0x5b04
	.quad	.LBB227
	.quad	.LBE227-.LBB227
	.byte	0x3
	.byte	0xb1
	.long	0x45f0
	.uleb128 0x1
	.long	0x5b19
	.uleb128 0x3
	.byte	0x76
	.sleb128 -120
	.byte	0
	.uleb128 0x34
	.long	0x5ad9
	.quad	.LBB229
	.quad	.LBE229-.LBB229
	.byte	0x3
	.byte	0xb2
	.uleb128 0x1
	.long	0x5af7
	.uleb128 0x3
	.byte	0x76
	.sleb128 -80
	.uleb128 0x1
	.long	0x5aeb
	.uleb128 0x3
	.byte	0x76
	.sleb128 -128
	.byte	0
	.byte	0
	.uleb128 0x1e
	.string	"j"
	.byte	0x3
	.byte	0xaf
	.long	0x1b93
	.uleb128 0x3
	.byte	0x76
	.sleb128 -196
	.byte	0
	.uleb128 0x1e
	.string	"i"
	.byte	0x3
	.byte	0xaa
	.long	0x1b93
	.uleb128 0x3
	.byte	0x76
	.sleb128 -200
	.byte	0
	.uleb128 0x8
	.long	.LASF614
	.byte	0x3
	.byte	0xa7
	.long	0x514c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -136
	.byte	0
	.uleb128 0x13
	.long	0x5921
	.quad	.LBB119
	.quad	.LBE119-.LBB119
	.byte	0x3
	.byte	0x36
	.long	0x47a5
	.uleb128 0x1
	.long	0x5936
	.uleb128 0x3
	.byte	0x76
	.sleb128 -581
	.uleb128 0x16
	.long	0x5943
	.quad	.LBB121
	.quad	.LBE121-.LBB121
	.byte	0x4
	.value	0x539
	.uleb128 0x1
	.long	0x5acc
	.uleb128 0x3
	.byte	0x76
	.sleb128 -549
	.uleb128 0x1
	.long	0x5ac0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -550
	.uleb128 0x1
	.long	0x5ab4
	.uleb128 0x3
	.byte	0x76
	.sleb128 -551
	.uleb128 0x1
	.long	0x5aa8
	.uleb128 0x3
	.byte	0x76
	.sleb128 -552
	.uleb128 0x1
	.long	0x5a9c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -553
	.uleb128 0x1
	.long	0x5a90
	.uleb128 0x3
	.byte	0x76
	.sleb128 -554
	.uleb128 0x1
	.long	0x5a84
	.uleb128 0x3
	.byte	0x76
	.sleb128 -555
	.uleb128 0x1
	.long	0x5a78
	.uleb128 0x3
	.byte	0x76
	.sleb128 -556
	.uleb128 0x1
	.long	0x5a6c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -557
	.uleb128 0x1
	.long	0x5a60
	.uleb128 0x3
	.byte	0x76
	.sleb128 -558
	.uleb128 0x1
	.long	0x5a54
	.uleb128 0x3
	.byte	0x76
	.sleb128 -559
	.uleb128 0x1
	.long	0x5a48
	.uleb128 0x3
	.byte	0x76
	.sleb128 -560
	.uleb128 0x1
	.long	0x5a3c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -561
	.uleb128 0x1
	.long	0x5a30
	.uleb128 0x3
	.byte	0x76
	.sleb128 -562
	.uleb128 0x1
	.long	0x5a24
	.uleb128 0x3
	.byte	0x76
	.sleb128 -563
	.uleb128 0x1
	.long	0x5a18
	.uleb128 0x3
	.byte	0x76
	.sleb128 -564
	.uleb128 0x1
	.long	0x5a0c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -565
	.uleb128 0x1
	.long	0x5a00
	.uleb128 0x3
	.byte	0x76
	.sleb128 -566
	.uleb128 0x1
	.long	0x59f4
	.uleb128 0x3
	.byte	0x76
	.sleb128 -567
	.uleb128 0x1
	.long	0x59e8
	.uleb128 0x3
	.byte	0x76
	.sleb128 -568
	.uleb128 0x1
	.long	0x59dc
	.uleb128 0x3
	.byte	0x76
	.sleb128 -569
	.uleb128 0x1
	.long	0x59d0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -570
	.uleb128 0x1
	.long	0x59c4
	.uleb128 0x3
	.byte	0x76
	.sleb128 -571
	.uleb128 0x1
	.long	0x59b8
	.uleb128 0x3
	.byte	0x76
	.sleb128 -572
	.uleb128 0x1
	.long	0x59ac
	.uleb128 0x3
	.byte	0x76
	.sleb128 -573
	.uleb128 0x1
	.long	0x59a0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -574
	.uleb128 0x1
	.long	0x5994
	.uleb128 0x3
	.byte	0x76
	.sleb128 -575
	.uleb128 0x1
	.long	0x5988
	.uleb128 0x3
	.byte	0x76
	.sleb128 -576
	.uleb128 0x1
	.long	0x597c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -577
	.uleb128 0x1
	.long	0x5970
	.uleb128 0x3
	.byte	0x76
	.sleb128 -578
	.uleb128 0x1
	.long	0x5964
	.uleb128 0x3
	.byte	0x76
	.sleb128 -579
	.uleb128 0x1
	.long	0x5958
	.uleb128 0x3
	.byte	0x76
	.sleb128 -580
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x5921
	.quad	.LBB123
	.quad	.LBE123-.LBB123
	.byte	0x3
	.byte	0x37
	.long	0x4903
	.uleb128 0x1
	.long	0x5936
	.uleb128 0x3
	.byte	0x76
	.sleb128 -614
	.uleb128 0x16
	.long	0x5943
	.quad	.LBB125
	.quad	.LBE125-.LBB125
	.byte	0x4
	.value	0x539
	.uleb128 0x1
	.long	0x5acc
	.uleb128 0x3
	.byte	0x76
	.sleb128 -582
	.uleb128 0x1
	.long	0x5ac0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -583
	.uleb128 0x1
	.long	0x5ab4
	.uleb128 0x3
	.byte	0x76
	.sleb128 -584
	.uleb128 0x1
	.long	0x5aa8
	.uleb128 0x3
	.byte	0x76
	.sleb128 -585
	.uleb128 0x1
	.long	0x5a9c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -586
	.uleb128 0x1
	.long	0x5a90
	.uleb128 0x3
	.byte	0x76
	.sleb128 -587
	.uleb128 0x1
	.long	0x5a84
	.uleb128 0x3
	.byte	0x76
	.sleb128 -588
	.uleb128 0x1
	.long	0x5a78
	.uleb128 0x3
	.byte	0x76
	.sleb128 -589
	.uleb128 0x1
	.long	0x5a6c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -590
	.uleb128 0x1
	.long	0x5a60
	.uleb128 0x3
	.byte	0x76
	.sleb128 -591
	.uleb128 0x1
	.long	0x5a54
	.uleb128 0x3
	.byte	0x76
	.sleb128 -592
	.uleb128 0x1
	.long	0x5a48
	.uleb128 0x3
	.byte	0x76
	.sleb128 -593
	.uleb128 0x1
	.long	0x5a3c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -594
	.uleb128 0x1
	.long	0x5a30
	.uleb128 0x3
	.byte	0x76
	.sleb128 -595
	.uleb128 0x1
	.long	0x5a24
	.uleb128 0x3
	.byte	0x76
	.sleb128 -596
	.uleb128 0x1
	.long	0x5a18
	.uleb128 0x3
	.byte	0x76
	.sleb128 -597
	.uleb128 0x1
	.long	0x5a0c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -598
	.uleb128 0x1
	.long	0x5a00
	.uleb128 0x3
	.byte	0x76
	.sleb128 -599
	.uleb128 0x1
	.long	0x59f4
	.uleb128 0x3
	.byte	0x76
	.sleb128 -600
	.uleb128 0x1
	.long	0x59e8
	.uleb128 0x3
	.byte	0x76
	.sleb128 -601
	.uleb128 0x1
	.long	0x59dc
	.uleb128 0x3
	.byte	0x76
	.sleb128 -602
	.uleb128 0x1
	.long	0x59d0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -603
	.uleb128 0x1
	.long	0x59c4
	.uleb128 0x3
	.byte	0x76
	.sleb128 -604
	.uleb128 0x1
	.long	0x59b8
	.uleb128 0x3
	.byte	0x76
	.sleb128 -605
	.uleb128 0x1
	.long	0x59ac
	.uleb128 0x3
	.byte	0x76
	.sleb128 -606
	.uleb128 0x1
	.long	0x59a0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -607
	.uleb128 0x1
	.long	0x5994
	.uleb128 0x3
	.byte	0x76
	.sleb128 -608
	.uleb128 0x1
	.long	0x5988
	.uleb128 0x3
	.byte	0x76
	.sleb128 -609
	.uleb128 0x1
	.long	0x597c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -610
	.uleb128 0x1
	.long	0x5970
	.uleb128 0x3
	.byte	0x76
	.sleb128 -611
	.uleb128 0x1
	.long	0x5964
	.uleb128 0x3
	.byte	0x76
	.sleb128 -612
	.uleb128 0x1
	.long	0x5958
	.uleb128 0x3
	.byte	0x76
	.sleb128 -613
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x5921
	.quad	.LBB127
	.quad	.LBE127-.LBB127
	.byte	0x3
	.byte	0x38
	.long	0x4a61
	.uleb128 0x1
	.long	0x5936
	.uleb128 0x3
	.byte	0x76
	.sleb128 -647
	.uleb128 0x16
	.long	0x5943
	.quad	.LBB129
	.quad	.LBE129-.LBB129
	.byte	0x4
	.value	0x539
	.uleb128 0x1
	.long	0x5acc
	.uleb128 0x3
	.byte	0x76
	.sleb128 -615
	.uleb128 0x1
	.long	0x5ac0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -616
	.uleb128 0x1
	.long	0x5ab4
	.uleb128 0x3
	.byte	0x76
	.sleb128 -617
	.uleb128 0x1
	.long	0x5aa8
	.uleb128 0x3
	.byte	0x76
	.sleb128 -618
	.uleb128 0x1
	.long	0x5a9c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -619
	.uleb128 0x1
	.long	0x5a90
	.uleb128 0x3
	.byte	0x76
	.sleb128 -620
	.uleb128 0x1
	.long	0x5a84
	.uleb128 0x3
	.byte	0x76
	.sleb128 -621
	.uleb128 0x1
	.long	0x5a78
	.uleb128 0x3
	.byte	0x76
	.sleb128 -622
	.uleb128 0x1
	.long	0x5a6c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -623
	.uleb128 0x1
	.long	0x5a60
	.uleb128 0x3
	.byte	0x76
	.sleb128 -624
	.uleb128 0x1
	.long	0x5a54
	.uleb128 0x3
	.byte	0x76
	.sleb128 -625
	.uleb128 0x1
	.long	0x5a48
	.uleb128 0x3
	.byte	0x76
	.sleb128 -626
	.uleb128 0x1
	.long	0x5a3c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -627
	.uleb128 0x1
	.long	0x5a30
	.uleb128 0x3
	.byte	0x76
	.sleb128 -628
	.uleb128 0x1
	.long	0x5a24
	.uleb128 0x3
	.byte	0x76
	.sleb128 -629
	.uleb128 0x1
	.long	0x5a18
	.uleb128 0x3
	.byte	0x76
	.sleb128 -630
	.uleb128 0x1
	.long	0x5a0c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -631
	.uleb128 0x1
	.long	0x5a00
	.uleb128 0x3
	.byte	0x76
	.sleb128 -632
	.uleb128 0x1
	.long	0x59f4
	.uleb128 0x3
	.byte	0x76
	.sleb128 -633
	.uleb128 0x1
	.long	0x59e8
	.uleb128 0x3
	.byte	0x76
	.sleb128 -634
	.uleb128 0x1
	.long	0x59dc
	.uleb128 0x3
	.byte	0x76
	.sleb128 -635
	.uleb128 0x1
	.long	0x59d0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -636
	.uleb128 0x1
	.long	0x59c4
	.uleb128 0x3
	.byte	0x76
	.sleb128 -637
	.uleb128 0x1
	.long	0x59b8
	.uleb128 0x3
	.byte	0x76
	.sleb128 -638
	.uleb128 0x1
	.long	0x59ac
	.uleb128 0x3
	.byte	0x76
	.sleb128 -639
	.uleb128 0x1
	.long	0x59a0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -640
	.uleb128 0x1
	.long	0x5994
	.uleb128 0x3
	.byte	0x76
	.sleb128 -641
	.uleb128 0x1
	.long	0x5988
	.uleb128 0x3
	.byte	0x76
	.sleb128 -642
	.uleb128 0x1
	.long	0x597c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -643
	.uleb128 0x1
	.long	0x5970
	.uleb128 0x3
	.byte	0x76
	.sleb128 -644
	.uleb128 0x1
	.long	0x5964
	.uleb128 0x3
	.byte	0x76
	.sleb128 -645
	.uleb128 0x1
	.long	0x5958
	.uleb128 0x3
	.byte	0x76
	.sleb128 -646
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x5921
	.quad	.LBB131
	.quad	.LBE131-.LBB131
	.byte	0x3
	.byte	0x39
	.long	0x4bbf
	.uleb128 0x1
	.long	0x5936
	.uleb128 0x3
	.byte	0x76
	.sleb128 -680
	.uleb128 0x16
	.long	0x5943
	.quad	.LBB133
	.quad	.LBE133-.LBB133
	.byte	0x4
	.value	0x539
	.uleb128 0x1
	.long	0x5acc
	.uleb128 0x3
	.byte	0x76
	.sleb128 -648
	.uleb128 0x1
	.long	0x5ac0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -649
	.uleb128 0x1
	.long	0x5ab4
	.uleb128 0x3
	.byte	0x76
	.sleb128 -650
	.uleb128 0x1
	.long	0x5aa8
	.uleb128 0x3
	.byte	0x76
	.sleb128 -651
	.uleb128 0x1
	.long	0x5a9c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -652
	.uleb128 0x1
	.long	0x5a90
	.uleb128 0x3
	.byte	0x76
	.sleb128 -653
	.uleb128 0x1
	.long	0x5a84
	.uleb128 0x3
	.byte	0x76
	.sleb128 -654
	.uleb128 0x1
	.long	0x5a78
	.uleb128 0x3
	.byte	0x76
	.sleb128 -655
	.uleb128 0x1
	.long	0x5a6c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -656
	.uleb128 0x1
	.long	0x5a60
	.uleb128 0x3
	.byte	0x76
	.sleb128 -657
	.uleb128 0x1
	.long	0x5a54
	.uleb128 0x3
	.byte	0x76
	.sleb128 -658
	.uleb128 0x1
	.long	0x5a48
	.uleb128 0x3
	.byte	0x76
	.sleb128 -659
	.uleb128 0x1
	.long	0x5a3c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -660
	.uleb128 0x1
	.long	0x5a30
	.uleb128 0x3
	.byte	0x76
	.sleb128 -661
	.uleb128 0x1
	.long	0x5a24
	.uleb128 0x3
	.byte	0x76
	.sleb128 -662
	.uleb128 0x1
	.long	0x5a18
	.uleb128 0x3
	.byte	0x76
	.sleb128 -663
	.uleb128 0x1
	.long	0x5a0c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -664
	.uleb128 0x1
	.long	0x5a00
	.uleb128 0x3
	.byte	0x76
	.sleb128 -665
	.uleb128 0x1
	.long	0x59f4
	.uleb128 0x3
	.byte	0x76
	.sleb128 -666
	.uleb128 0x1
	.long	0x59e8
	.uleb128 0x3
	.byte	0x76
	.sleb128 -667
	.uleb128 0x1
	.long	0x59dc
	.uleb128 0x3
	.byte	0x76
	.sleb128 -668
	.uleb128 0x1
	.long	0x59d0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -669
	.uleb128 0x1
	.long	0x59c4
	.uleb128 0x3
	.byte	0x76
	.sleb128 -670
	.uleb128 0x1
	.long	0x59b8
	.uleb128 0x3
	.byte	0x76
	.sleb128 -671
	.uleb128 0x1
	.long	0x59ac
	.uleb128 0x3
	.byte	0x76
	.sleb128 -672
	.uleb128 0x1
	.long	0x59a0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -673
	.uleb128 0x1
	.long	0x5994
	.uleb128 0x3
	.byte	0x76
	.sleb128 -674
	.uleb128 0x1
	.long	0x5988
	.uleb128 0x3
	.byte	0x76
	.sleb128 -675
	.uleb128 0x1
	.long	0x597c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -676
	.uleb128 0x1
	.long	0x5970
	.uleb128 0x3
	.byte	0x76
	.sleb128 -677
	.uleb128 0x1
	.long	0x5964
	.uleb128 0x3
	.byte	0x76
	.sleb128 -678
	.uleb128 0x1
	.long	0x5958
	.uleb128 0x3
	.byte	0x76
	.sleb128 -679
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x5921
	.quad	.LBB135
	.quad	.LBE135-.LBB135
	.byte	0x3
	.byte	0x3a
	.long	0x4d1d
	.uleb128 0x1
	.long	0x5936
	.uleb128 0x3
	.byte	0x76
	.sleb128 -713
	.uleb128 0x16
	.long	0x5943
	.quad	.LBB137
	.quad	.LBE137-.LBB137
	.byte	0x4
	.value	0x539
	.uleb128 0x1
	.long	0x5acc
	.uleb128 0x3
	.byte	0x76
	.sleb128 -681
	.uleb128 0x1
	.long	0x5ac0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -682
	.uleb128 0x1
	.long	0x5ab4
	.uleb128 0x3
	.byte	0x76
	.sleb128 -683
	.uleb128 0x1
	.long	0x5aa8
	.uleb128 0x3
	.byte	0x76
	.sleb128 -684
	.uleb128 0x1
	.long	0x5a9c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -685
	.uleb128 0x1
	.long	0x5a90
	.uleb128 0x3
	.byte	0x76
	.sleb128 -686
	.uleb128 0x1
	.long	0x5a84
	.uleb128 0x3
	.byte	0x76
	.sleb128 -687
	.uleb128 0x1
	.long	0x5a78
	.uleb128 0x3
	.byte	0x76
	.sleb128 -688
	.uleb128 0x1
	.long	0x5a6c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -689
	.uleb128 0x1
	.long	0x5a60
	.uleb128 0x3
	.byte	0x76
	.sleb128 -690
	.uleb128 0x1
	.long	0x5a54
	.uleb128 0x3
	.byte	0x76
	.sleb128 -691
	.uleb128 0x1
	.long	0x5a48
	.uleb128 0x3
	.byte	0x76
	.sleb128 -692
	.uleb128 0x1
	.long	0x5a3c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -693
	.uleb128 0x1
	.long	0x5a30
	.uleb128 0x3
	.byte	0x76
	.sleb128 -694
	.uleb128 0x1
	.long	0x5a24
	.uleb128 0x3
	.byte	0x76
	.sleb128 -695
	.uleb128 0x1
	.long	0x5a18
	.uleb128 0x3
	.byte	0x76
	.sleb128 -696
	.uleb128 0x1
	.long	0x5a0c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -697
	.uleb128 0x1
	.long	0x5a00
	.uleb128 0x3
	.byte	0x76
	.sleb128 -698
	.uleb128 0x1
	.long	0x59f4
	.uleb128 0x3
	.byte	0x76
	.sleb128 -699
	.uleb128 0x1
	.long	0x59e8
	.uleb128 0x3
	.byte	0x76
	.sleb128 -700
	.uleb128 0x1
	.long	0x59dc
	.uleb128 0x3
	.byte	0x76
	.sleb128 -701
	.uleb128 0x1
	.long	0x59d0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -702
	.uleb128 0x1
	.long	0x59c4
	.uleb128 0x3
	.byte	0x76
	.sleb128 -703
	.uleb128 0x1
	.long	0x59b8
	.uleb128 0x3
	.byte	0x76
	.sleb128 -704
	.uleb128 0x1
	.long	0x59ac
	.uleb128 0x3
	.byte	0x76
	.sleb128 -705
	.uleb128 0x1
	.long	0x59a0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -706
	.uleb128 0x1
	.long	0x5994
	.uleb128 0x3
	.byte	0x76
	.sleb128 -707
	.uleb128 0x1
	.long	0x5988
	.uleb128 0x3
	.byte	0x76
	.sleb128 -708
	.uleb128 0x1
	.long	0x597c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -709
	.uleb128 0x1
	.long	0x5970
	.uleb128 0x3
	.byte	0x76
	.sleb128 -710
	.uleb128 0x1
	.long	0x5964
	.uleb128 0x3
	.byte	0x76
	.sleb128 -711
	.uleb128 0x1
	.long	0x5958
	.uleb128 0x3
	.byte	0x76
	.sleb128 -712
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x5921
	.quad	.LBB139
	.quad	.LBE139-.LBB139
	.byte	0x3
	.byte	0x3b
	.long	0x4e7b
	.uleb128 0x1
	.long	0x5936
	.uleb128 0x3
	.byte	0x76
	.sleb128 -746
	.uleb128 0x16
	.long	0x5943
	.quad	.LBB141
	.quad	.LBE141-.LBB141
	.byte	0x4
	.value	0x539
	.uleb128 0x1
	.long	0x5acc
	.uleb128 0x3
	.byte	0x76
	.sleb128 -714
	.uleb128 0x1
	.long	0x5ac0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -715
	.uleb128 0x1
	.long	0x5ab4
	.uleb128 0x3
	.byte	0x76
	.sleb128 -716
	.uleb128 0x1
	.long	0x5aa8
	.uleb128 0x3
	.byte	0x76
	.sleb128 -717
	.uleb128 0x1
	.long	0x5a9c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -718
	.uleb128 0x1
	.long	0x5a90
	.uleb128 0x3
	.byte	0x76
	.sleb128 -719
	.uleb128 0x1
	.long	0x5a84
	.uleb128 0x3
	.byte	0x76
	.sleb128 -720
	.uleb128 0x1
	.long	0x5a78
	.uleb128 0x3
	.byte	0x76
	.sleb128 -721
	.uleb128 0x1
	.long	0x5a6c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -722
	.uleb128 0x1
	.long	0x5a60
	.uleb128 0x3
	.byte	0x76
	.sleb128 -723
	.uleb128 0x1
	.long	0x5a54
	.uleb128 0x3
	.byte	0x76
	.sleb128 -724
	.uleb128 0x1
	.long	0x5a48
	.uleb128 0x3
	.byte	0x76
	.sleb128 -725
	.uleb128 0x1
	.long	0x5a3c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -726
	.uleb128 0x1
	.long	0x5a30
	.uleb128 0x3
	.byte	0x76
	.sleb128 -727
	.uleb128 0x1
	.long	0x5a24
	.uleb128 0x3
	.byte	0x76
	.sleb128 -728
	.uleb128 0x1
	.long	0x5a18
	.uleb128 0x3
	.byte	0x76
	.sleb128 -729
	.uleb128 0x1
	.long	0x5a0c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -730
	.uleb128 0x1
	.long	0x5a00
	.uleb128 0x3
	.byte	0x76
	.sleb128 -731
	.uleb128 0x1
	.long	0x59f4
	.uleb128 0x3
	.byte	0x76
	.sleb128 -732
	.uleb128 0x1
	.long	0x59e8
	.uleb128 0x3
	.byte	0x76
	.sleb128 -733
	.uleb128 0x1
	.long	0x59dc
	.uleb128 0x3
	.byte	0x76
	.sleb128 -734
	.uleb128 0x1
	.long	0x59d0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -735
	.uleb128 0x1
	.long	0x59c4
	.uleb128 0x3
	.byte	0x76
	.sleb128 -736
	.uleb128 0x1
	.long	0x59b8
	.uleb128 0x3
	.byte	0x76
	.sleb128 -737
	.uleb128 0x1
	.long	0x59ac
	.uleb128 0x3
	.byte	0x76
	.sleb128 -738
	.uleb128 0x1
	.long	0x59a0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -739
	.uleb128 0x1
	.long	0x5994
	.uleb128 0x3
	.byte	0x76
	.sleb128 -740
	.uleb128 0x1
	.long	0x5988
	.uleb128 0x3
	.byte	0x76
	.sleb128 -741
	.uleb128 0x1
	.long	0x597c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -742
	.uleb128 0x1
	.long	0x5970
	.uleb128 0x3
	.byte	0x76
	.sleb128 -743
	.uleb128 0x1
	.long	0x5964
	.uleb128 0x3
	.byte	0x76
	.sleb128 -744
	.uleb128 0x1
	.long	0x5958
	.uleb128 0x3
	.byte	0x76
	.sleb128 -745
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x5921
	.quad	.LBB143
	.quad	.LBE143-.LBB143
	.byte	0x3
	.byte	0x3c
	.long	0x4fd9
	.uleb128 0x1
	.long	0x5936
	.uleb128 0x3
	.byte	0x76
	.sleb128 -779
	.uleb128 0x16
	.long	0x5943
	.quad	.LBB145
	.quad	.LBE145-.LBB145
	.byte	0x4
	.value	0x539
	.uleb128 0x1
	.long	0x5acc
	.uleb128 0x3
	.byte	0x76
	.sleb128 -747
	.uleb128 0x1
	.long	0x5ac0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -748
	.uleb128 0x1
	.long	0x5ab4
	.uleb128 0x3
	.byte	0x76
	.sleb128 -749
	.uleb128 0x1
	.long	0x5aa8
	.uleb128 0x3
	.byte	0x76
	.sleb128 -750
	.uleb128 0x1
	.long	0x5a9c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -751
	.uleb128 0x1
	.long	0x5a90
	.uleb128 0x3
	.byte	0x76
	.sleb128 -752
	.uleb128 0x1
	.long	0x5a84
	.uleb128 0x3
	.byte	0x76
	.sleb128 -753
	.uleb128 0x1
	.long	0x5a78
	.uleb128 0x3
	.byte	0x76
	.sleb128 -754
	.uleb128 0x1
	.long	0x5a6c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -755
	.uleb128 0x1
	.long	0x5a60
	.uleb128 0x3
	.byte	0x76
	.sleb128 -756
	.uleb128 0x1
	.long	0x5a54
	.uleb128 0x3
	.byte	0x76
	.sleb128 -757
	.uleb128 0x1
	.long	0x5a48
	.uleb128 0x3
	.byte	0x76
	.sleb128 -758
	.uleb128 0x1
	.long	0x5a3c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -759
	.uleb128 0x1
	.long	0x5a30
	.uleb128 0x3
	.byte	0x76
	.sleb128 -760
	.uleb128 0x1
	.long	0x5a24
	.uleb128 0x3
	.byte	0x76
	.sleb128 -761
	.uleb128 0x1
	.long	0x5a18
	.uleb128 0x3
	.byte	0x76
	.sleb128 -762
	.uleb128 0x1
	.long	0x5a0c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -763
	.uleb128 0x1
	.long	0x5a00
	.uleb128 0x3
	.byte	0x76
	.sleb128 -764
	.uleb128 0x1
	.long	0x59f4
	.uleb128 0x3
	.byte	0x76
	.sleb128 -765
	.uleb128 0x1
	.long	0x59e8
	.uleb128 0x3
	.byte	0x76
	.sleb128 -766
	.uleb128 0x1
	.long	0x59dc
	.uleb128 0x3
	.byte	0x76
	.sleb128 -767
	.uleb128 0x1
	.long	0x59d0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -768
	.uleb128 0x1
	.long	0x59c4
	.uleb128 0x3
	.byte	0x76
	.sleb128 -769
	.uleb128 0x1
	.long	0x59b8
	.uleb128 0x3
	.byte	0x76
	.sleb128 -770
	.uleb128 0x1
	.long	0x59ac
	.uleb128 0x3
	.byte	0x76
	.sleb128 -771
	.uleb128 0x1
	.long	0x59a0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -772
	.uleb128 0x1
	.long	0x5994
	.uleb128 0x3
	.byte	0x76
	.sleb128 -773
	.uleb128 0x1
	.long	0x5988
	.uleb128 0x3
	.byte	0x76
	.sleb128 -774
	.uleb128 0x1
	.long	0x597c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -775
	.uleb128 0x1
	.long	0x5970
	.uleb128 0x3
	.byte	0x76
	.sleb128 -776
	.uleb128 0x1
	.long	0x5964
	.uleb128 0x3
	.byte	0x76
	.sleb128 -777
	.uleb128 0x1
	.long	0x5958
	.uleb128 0x3
	.byte	0x76
	.sleb128 -778
	.byte	0
	.byte	0
	.uleb128 0x34
	.long	0x5921
	.quad	.LBB147
	.quad	.LBE147-.LBB147
	.byte	0x3
	.byte	0x3d
	.uleb128 0x1
	.long	0x5936
	.uleb128 0x3
	.byte	0x76
	.sleb128 -812
	.uleb128 0x16
	.long	0x5943
	.quad	.LBB149
	.quad	.LBE149-.LBB149
	.byte	0x4
	.value	0x539
	.uleb128 0x1
	.long	0x5acc
	.uleb128 0x3
	.byte	0x76
	.sleb128 -780
	.uleb128 0x1
	.long	0x5ac0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -781
	.uleb128 0x1
	.long	0x5ab4
	.uleb128 0x3
	.byte	0x76
	.sleb128 -782
	.uleb128 0x1
	.long	0x5aa8
	.uleb128 0x3
	.byte	0x76
	.sleb128 -783
	.uleb128 0x1
	.long	0x5a9c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -784
	.uleb128 0x1
	.long	0x5a90
	.uleb128 0x3
	.byte	0x76
	.sleb128 -785
	.uleb128 0x1
	.long	0x5a84
	.uleb128 0x3
	.byte	0x76
	.sleb128 -786
	.uleb128 0x1
	.long	0x5a78
	.uleb128 0x3
	.byte	0x76
	.sleb128 -787
	.uleb128 0x1
	.long	0x5a6c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -788
	.uleb128 0x1
	.long	0x5a60
	.uleb128 0x3
	.byte	0x76
	.sleb128 -789
	.uleb128 0x1
	.long	0x5a54
	.uleb128 0x3
	.byte	0x76
	.sleb128 -790
	.uleb128 0x1
	.long	0x5a48
	.uleb128 0x3
	.byte	0x76
	.sleb128 -791
	.uleb128 0x1
	.long	0x5a3c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -792
	.uleb128 0x1
	.long	0x5a30
	.uleb128 0x3
	.byte	0x76
	.sleb128 -793
	.uleb128 0x1
	.long	0x5a24
	.uleb128 0x3
	.byte	0x76
	.sleb128 -794
	.uleb128 0x1
	.long	0x5a18
	.uleb128 0x3
	.byte	0x76
	.sleb128 -795
	.uleb128 0x1
	.long	0x5a0c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -796
	.uleb128 0x1
	.long	0x5a00
	.uleb128 0x3
	.byte	0x76
	.sleb128 -797
	.uleb128 0x1
	.long	0x59f4
	.uleb128 0x3
	.byte	0x76
	.sleb128 -798
	.uleb128 0x1
	.long	0x59e8
	.uleb128 0x3
	.byte	0x76
	.sleb128 -799
	.uleb128 0x1
	.long	0x59dc
	.uleb128 0x3
	.byte	0x76
	.sleb128 -800
	.uleb128 0x1
	.long	0x59d0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -801
	.uleb128 0x1
	.long	0x59c4
	.uleb128 0x3
	.byte	0x76
	.sleb128 -802
	.uleb128 0x1
	.long	0x59b8
	.uleb128 0x3
	.byte	0x76
	.sleb128 -803
	.uleb128 0x1
	.long	0x59ac
	.uleb128 0x3
	.byte	0x76
	.sleb128 -804
	.uleb128 0x1
	.long	0x59a0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -805
	.uleb128 0x1
	.long	0x5994
	.uleb128 0x3
	.byte	0x76
	.sleb128 -806
	.uleb128 0x1
	.long	0x5988
	.uleb128 0x3
	.byte	0x76
	.sleb128 -807
	.uleb128 0x1
	.long	0x597c
	.uleb128 0x3
	.byte	0x76
	.sleb128 -808
	.uleb128 0x1
	.long	0x5970
	.uleb128 0x3
	.byte	0x76
	.sleb128 -809
	.uleb128 0x1
	.long	0x5964
	.uleb128 0x3
	.byte	0x76
	.sleb128 -810
	.uleb128 0x1
	.long	0x5958
	.uleb128 0x3
	.byte	0x76
	.sleb128 -811
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x513a
	.uleb128 0xa
	.byte	0x8
	.long	0x3253
	.uleb128 0x4a
	.long	0x24d2
	.long	0x514c
	.uleb128 0x4b
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x5140
	.uleb128 0x2b
	.long	.LASF616
	.quad	.LFB5714
	.quad	.LFE5714-.LFB5714
	.uleb128 0x1
	.byte	0x9c
	.long	0x520a
	.uleb128 0x35
	.long	0x5277
	.uleb128 0x3
	.byte	0x76
	.sleb128 -216
	.uleb128 0x8
	.long	.LASF587
	.byte	0x3
	.byte	0xd
	.long	0x1b93
	.uleb128 0x3
	.byte	0x76
	.sleb128 -192
	.uleb128 0x8
	.long	.LASF588
	.byte	0x3
	.byte	0xe
	.long	0x5134
	.uleb128 0x3
	.byte	0x76
	.sleb128 -144
	.uleb128 0x8
	.long	.LASF589
	.byte	0x3
	.byte	0xe
	.long	0x5134
	.uleb128 0x3
	.byte	0x76
	.sleb128 -152
	.uleb128 0x8
	.long	.LASF590
	.byte	0x3
	.byte	0x10
	.long	0x111f
	.uleb128 0x7
	.byte	0x76
	.sleb128 -216
	.byte	0x6
	.byte	0x23
	.uleb128 0x10
	.byte	0x6
	.uleb128 0x8
	.long	.LASF591
	.byte	0x3
	.byte	0x10
	.long	0x111f
	.uleb128 0x7
	.byte	0x76
	.sleb128 -216
	.byte	0x6
	.byte	0x23
	.uleb128 0x18
	.byte	0x6
	.uleb128 0x8
	.long	.LASF592
	.byte	0x3
	.byte	0x11
	.long	0x1220
	.uleb128 0x7
	.byte	0x76
	.sleb128 -216
	.byte	0x6
	.byte	0x23
	.uleb128 0x20
	.byte	0x6
	.uleb128 0x8
	.long	.LASF597
	.byte	0x3
	.byte	0x1b
	.long	0x22ed
	.uleb128 0x3
	.byte	0x76
	.sleb128 -160
	.uleb128 0x8
	.long	.LASF613
	.byte	0x3
	.byte	0x13
	.long	0x1b93
	.uleb128 0x3
	.byte	0x76
	.sleb128 -188
	.uleb128 0x8
	.long	.LASF606
	.byte	0x3
	.byte	0x40
	.long	0x1ab8
	.uleb128 0x3
	.byte	0x76
	.sleb128 -168
	.byte	0
	.uleb128 0x36
	.byte	0x40
	.long	0x5271
	.uleb128 0x4
	.long	.LASF588
	.byte	0x3
	.byte	0xe
	.long	0x5134
	.byte	0
	.uleb128 0x4
	.long	.LASF589
	.byte	0x3
	.byte	0xe
	.long	0x5134
	.byte	0x8
	.uleb128 0x4
	.long	.LASF590
	.byte	0x3
	.byte	0x10
	.long	0x3364
	.byte	0x10
	.uleb128 0x4
	.long	.LASF591
	.byte	0x3
	.byte	0x10
	.long	0x3364
	.byte	0x18
	.uleb128 0x4
	.long	.LASF592
	.byte	0x3
	.byte	0x11
	.long	0x338f
	.byte	0x20
	.uleb128 0x4
	.long	.LASF597
	.byte	0x3
	.byte	0x1b
	.long	0x22ed
	.byte	0x28
	.uleb128 0x4
	.long	.LASF606
	.byte	0x3
	.byte	0x40
	.long	0x1ab8
	.byte	0x30
	.uleb128 0x4
	.long	.LASF587
	.byte	0x3
	.byte	0xd
	.long	0x1b93
	.byte	0x38
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.long	0x520a
	.uleb128 0x37
	.long	0x5271
	.uleb128 0x2b
	.long	.LASF617
	.quad	.LFB5713
	.quad	.LFE5713-.LFB5713
	.uleb128 0x1
	.byte	0x9c
	.long	0x5325
	.uleb128 0x35
	.long	0x5386
	.uleb128 0x3
	.byte	0x76
	.sleb128 -392
	.uleb128 0x8
	.long	.LASF587
	.byte	0x3
	.byte	0xd
	.long	0x1b93
	.uleb128 0x3
	.byte	0x76
	.sleb128 -112
	.uleb128 0x8
	.long	.LASF588
	.byte	0x3
	.byte	0xe
	.long	0x5134
	.uleb128 0x3
	.byte	0x76
	.sleb128 -72
	.uleb128 0x8
	.long	.LASF590
	.byte	0x3
	.byte	0x10
	.long	0x111f
	.uleb128 0x7
	.byte	0x76
	.sleb128 -392
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.byte	0x6
	.uleb128 0x8
	.long	.LASF591
	.byte	0x3
	.byte	0x10
	.long	0x111f
	.uleb128 0x7
	.byte	0x76
	.sleb128 -392
	.byte	0x6
	.byte	0x23
	.uleb128 0x10
	.byte	0x6
	.uleb128 0x8
	.long	.LASF592
	.byte	0x3
	.byte	0x11
	.long	0x1220
	.uleb128 0x7
	.byte	0x76
	.sleb128 -392
	.byte	0x6
	.byte	0x23
	.uleb128 0x18
	.byte	0x6
	.uleb128 0x8
	.long	.LASF597
	.byte	0x3
	.byte	0x1b
	.long	0x22ed
	.uleb128 0x3
	.byte	0x76
	.sleb128 -80
	.uleb128 0x8
	.long	.LASF613
	.byte	0x3
	.byte	0x13
	.long	0x1b93
	.uleb128 0x3
	.byte	0x76
	.sleb128 -108
	.uleb128 0x8
	.long	.LASF606
	.byte	0x3
	.byte	0x40
	.long	0x1ab8
	.uleb128 0x3
	.byte	0x76
	.sleb128 -88
	.byte	0
	.uleb128 0x36
	.byte	0x38
	.long	0x5380
	.uleb128 0x4
	.long	.LASF588
	.byte	0x3
	.byte	0xe
	.long	0x5134
	.byte	0
	.uleb128 0x4
	.long	.LASF590
	.byte	0x3
	.byte	0x10
	.long	0x3364
	.byte	0x8
	.uleb128 0x4
	.long	.LASF591
	.byte	0x3
	.byte	0x10
	.long	0x3364
	.byte	0x10
	.uleb128 0x4
	.long	.LASF592
	.byte	0x3
	.byte	0x11
	.long	0x338f
	.byte	0x18
	.uleb128 0x4
	.long	.LASF597
	.byte	0x3
	.byte	0x1b
	.long	0x22ed
	.byte	0x20
	.uleb128 0x4
	.long	.LASF606
	.byte	0x3
	.byte	0x40
	.long	0x1ab8
	.byte	0x28
	.uleb128 0x4
	.long	.LASF587
	.byte	0x3
	.byte	0xd
	.long	0x1b93
	.byte	0x30
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.long	0x5325
	.uleb128 0x37
	.long	0x5380
	.uleb128 0x2b
	.long	.LASF618
	.quad	.LFB5712
	.quad	.LFE5712-.LFB5712
	.uleb128 0x1
	.byte	0x9c
	.long	0x5464
	.uleb128 0x35
	.long	0x5495
	.uleb128 0x3
	.byte	0x76
	.sleb128 -872
	.uleb128 0x8
	.long	.LASF587
	.byte	0x3
	.byte	0xd
	.long	0x1b93
	.uleb128 0x3
	.byte	0x76
	.sleb128 -848
	.uleb128 0x8
	.long	.LASF588
	.byte	0x3
	.byte	0xe
	.long	0x5134
	.uleb128 0x3
	.byte	0x76
	.sleb128 -832
	.uleb128 0x8
	.long	.LASF597
	.byte	0x3
	.byte	0x1b
	.long	0x22ed
	.uleb128 0x3
	.byte	0x76
	.sleb128 -840
	.uleb128 0x8
	.long	.LASF613
	.byte	0x3
	.byte	0x13
	.long	0x1b93
	.uleb128 0x3
	.byte	0x76
	.sleb128 -844
	.uleb128 0x8
	.long	.LASF598
	.byte	0x3
	.byte	0x36
	.long	0x3253
	.uleb128 0x3
	.byte	0x76
	.sleb128 -784
	.uleb128 0x8
	.long	.LASF599
	.byte	0x3
	.byte	0x37
	.long	0x3253
	.uleb128 0x3
	.byte	0x76
	.sleb128 -752
	.uleb128 0x8
	.long	.LASF600
	.byte	0x3
	.byte	0x38
	.long	0x3253
	.uleb128 0x3
	.byte	0x76
	.sleb128 -720
	.uleb128 0x8
	.long	.LASF601
	.byte	0x3
	.byte	0x39
	.long	0x3253
	.uleb128 0x3
	.byte	0x76
	.sleb128 -688
	.uleb128 0x8
	.long	.LASF602
	.byte	0x3
	.byte	0x3a
	.long	0x3253
	.uleb128 0x3
	.byte	0x76
	.sleb128 -656
	.uleb128 0x8
	.long	.LASF603
	.byte	0x3
	.byte	0x3b
	.long	0x3253
	.uleb128 0x3
	.byte	0x76
	.sleb128 -624
	.uleb128 0x8
	.long	.LASF604
	.byte	0x3
	.byte	0x3c
	.long	0x3253
	.uleb128 0x3
	.byte	0x76
	.sleb128 -592
	.uleb128 0x8
	.long	.LASF605
	.byte	0x3
	.byte	0x3d
	.long	0x3253
	.uleb128 0x3
	.byte	0x76
	.sleb128 -816
	.byte	0
	.uleb128 0x36
	.byte	0x18
	.long	0x548f
	.uleb128 0x4
	.long	.LASF588
	.byte	0x3
	.byte	0xe
	.long	0x5134
	.byte	0
	.uleb128 0x4
	.long	.LASF597
	.byte	0x3
	.byte	0x1b
	.long	0x22ed
	.byte	0x8
	.uleb128 0x4
	.long	.LASF587
	.byte	0x3
	.byte	0xd
	.long	0x1b93
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.long	0x5464
	.uleb128 0x37
	.long	0x548f
	.uleb128 0x2b
	.long	.LASF619
	.quad	.LFB5711
	.quad	.LFE5711-.LFB5711
	.uleb128 0x1
	.byte	0x9c
	.long	0x54ea
	.uleb128 0x35
	.long	0x550f
	.uleb128 0x3
	.byte	0x76
	.sleb128 -120
	.uleb128 0x8
	.long	.LASF588
	.byte	0x3
	.byte	0xe
	.long	0x5134
	.uleb128 0x2
	.byte	0x76
	.sleb128 -56
	.uleb128 0x8
	.long	.LASF597
	.byte	0x3
	.byte	0x1b
	.long	0x22ed
	.uleb128 0x2
	.byte	0x76
	.sleb128 -64
	.uleb128 0x8
	.long	.LASF613
	.byte	0x3
	.byte	0x13
	.long	0x1b93
	.uleb128 0x3
	.byte	0x76
	.sleb128 -68
	.byte	0
	.uleb128 0x36
	.byte	0x10
	.long	0x5509
	.uleb128 0x4
	.long	.LASF588
	.byte	0x3
	.byte	0xe
	.long	0x5134
	.byte	0
	.uleb128 0x4
	.long	.LASF597
	.byte	0x3
	.byte	0x1b
	.long	0x22ed
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.long	0x54ea
	.uleb128 0x37
	.long	0x5509
	.uleb128 0x2b
	.long	.LASF620
	.quad	.LFB5710
	.quad	.LFE5710-.LFB5710
	.uleb128 0x1
	.byte	0x9c
	.long	0x5547
	.uleb128 0x35
	.long	0x5560
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.long	.LASF593
	.byte	0x3
	.byte	0x13
	.long	0x1b93
	.uleb128 0x3
	.byte	0x91
	.sleb128 -24
	.byte	0x6
	.byte	0
	.uleb128 0x36
	.byte	0x4
	.long	0x555a
	.uleb128 0x4
	.long	.LASF593
	.byte	0x3
	.byte	0x13
	.long	0x1b93
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.long	0x5547
	.uleb128 0x37
	.long	0x555a
	.uleb128 0x8b
	.long	.LASF691
	.quad	.LFB5709
	.quad	.LFE5709-.LFB5709
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2b
	.long	.LASF621
	.quad	.LFB5708
	.quad	.LFE5708-.LFB5708
	.uleb128 0x1
	.byte	0x9c
	.long	0x55b5
	.uleb128 0x21
	.long	.LASF622
	.byte	0x3
	.byte	0xd7
	.long	0x1b93
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x21
	.long	.LASF623
	.byte	0x3
	.byte	0xd7
	.long	0x1b93
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4e
	.long	0x12cb
	.long	0x55d8
	.quad	.LFB5567
	.quad	.LFE5567-.LFB5567
	.uleb128 0x1
	.byte	0x9c
	.long	0x55d8
	.long	0x55e5
	.uleb128 0x4f
	.long	.LASF624
	.long	0x33ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x50
	.long	0x1463
	.byte	0x2
	.long	0x5605
	.long	0x561b
	.uleb128 0x9
	.long	.LASF160
	.long	0x22ed
	.uleb128 0x9
	.long	.LASF196
	.long	0x16ab
	.uleb128 0x51
	.long	.LASF624
	.long	0x3395
	.uleb128 0x38
	.string	"__d"
	.byte	0x2
	.value	0x14e
	.long	0x333b
	.byte	0
	.uleb128 0x8c
	.long	0x55e5
	.long	.LASF627
	.long	0x5655
	.quad	.LFB5380
	.quad	.LFE5380-.LFB5380
	.uleb128 0x1
	.byte	0x9c
	.long	0x5655
	.long	0x5666
	.uleb128 0x9
	.long	.LASF160
	.long	0x22ed
	.uleb128 0x9
	.long	.LASF196
	.long	0x16ab
	.uleb128 0x1
	.long	0x5605
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.long	0x560e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x40
	.long	0x153d
	.quad	.LFB5374
	.quad	.LFE5374-.LFB5374
	.uleb128 0x1
	.byte	0x9c
	.long	0x56ab
	.uleb128 0x9
	.long	.LASF202
	.long	0x1220
	.uleb128 0x9
	.long	.LASF161
	.long	0x22ed
	.uleb128 0x9
	.long	.LASF162
	.long	0x16ab
	.uleb128 0x62
	.string	"__d"
	.byte	0x2
	.byte	0xc2
	.long	0x333b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x40
	.long	0x14e0
	.quad	.LFB5375
	.quad	.LFE5375-.LFB5375
	.uleb128 0x1
	.byte	0x9c
	.long	0x56f2
	.uleb128 0x9
	.long	.LASF161
	.long	0x22ed
	.uleb128 0x9
	.long	.LASF162
	.long	0x16ab
	.uleb128 0x62
	.string	"__d"
	.byte	0x2
	.byte	0x9f
	.long	0x333b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.long	.LASF625
	.byte	0x2
	.byte	0xa1
	.long	0x122d
	.byte	0
	.uleb128 0x50
	.long	0x1494
	.byte	0x2
	.long	0x5709
	.long	0x571f
	.uleb128 0x9
	.long	.LASF160
	.long	0x1ab8
	.uleb128 0x51
	.long	.LASF624
	.long	0x3395
	.uleb128 0xd
	.long	.LASF626
	.byte	0x2
	.value	0x147
	.long	0x33b7
	.byte	0
	.uleb128 0x63
	.long	0x56f2
	.long	.LASF628
	.long	0x574f
	.quad	.LFB5378
	.quad	.LFE5378-.LFB5378
	.uleb128 0x1
	.byte	0x9c
	.long	0x574f
	.long	0x5760
	.uleb128 0x9
	.long	.LASF160
	.long	0x1ab8
	.uleb128 0x1
	.long	0x5709
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.long	0x5712
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.long	0x121b
	.uleb128 0x40
	.long	0x1571
	.quad	.LFB5371
	.quad	.LFE5371-.LFB5371
	.uleb128 0x1
	.byte	0x9c
	.long	0x57bb
	.uleb128 0x9
	.long	.LASF172
	.long	0xe2a
	.uleb128 0x9
	.long	.LASF209
	.long	0xe9c
	.uleb128 0x9
	.long	.LASF210
	.long	0xe9c
	.uleb128 0x41
	.long	.LASF629
	.byte	0x2
	.value	0x2f0
	.long	0x5760
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x41
	.long	.LASF630
	.byte	0x2
	.value	0x2f1
	.long	0x5760
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x40
	.long	0x15ab
	.quad	.LFB5372
	.quad	.LFE5372-.LFB5372
	.uleb128 0x1
	.byte	0x9c
	.long	0x5827
	.uleb128 0x9
	.long	.LASF213
	.long	0x22ed
	.uleb128 0x9
	.long	.LASF214
	.long	0x16ab
	.uleb128 0x9
	.long	.LASF160
	.long	0x22ed
	.uleb128 0x9
	.long	.LASF196
	.long	0x16ab
	.uleb128 0x41
	.long	.LASF629
	.byte	0x2
	.value	0x1cb
	.long	0x333b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x41
	.long	.LASF630
	.byte	0x2
	.value	0x1cc
	.long	0x333b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1a
	.long	.LASF631
	.byte	0x2
	.value	0x1d0
	.long	0x17cb
	.byte	0
	.uleb128 0x4e
	.long	0x1184
	.long	0x584a
	.quad	.LFB5349
	.quad	.LFE5349-.LFB5349
	.uleb128 0x1
	.byte	0x9c
	.long	0x584a
	.long	0x5857
	.uleb128 0x4f
	.long	.LASF624
	.long	0x3376
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4e
	.long	0xf47
	.long	0x587a
	.quad	.LFB5347
	.quad	.LFE5347-.LFB5347
	.uleb128 0x1
	.byte	0x9c
	.long	0x587a
	.long	0x5887
	.uleb128 0x4f
	.long	.LASF624
	.long	0x334d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x50
	.long	0x10df
	.byte	0x2
	.long	0x589e
	.long	0x58b4
	.uleb128 0x9
	.long	.LASF160
	.long	0x22ed
	.uleb128 0x51
	.long	.LASF624
	.long	0x3336
	.uleb128 0xd
	.long	.LASF626
	.byte	0x2
	.value	0x147
	.long	0x3358
	.byte	0
	.uleb128 0x63
	.long	0x5887
	.long	.LASF632
	.long	0x58e4
	.quad	.LFB5343
	.quad	.LFE5343-.LFB5343
	.uleb128 0x1
	.byte	0x9c
	.long	0x58e4
	.long	0x58f5
	.uleb128 0x9
	.long	.LASF160
	.long	0x22ed
	.uleb128 0x1
	.long	0x589e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.long	0x58a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x8d
	.long	.LASF633
	.byte	0x6
	.byte	0x69
	.long	.LASF634
	.long	0x3253
	.byte	0x3
	.long	0x5921
	.uleb128 0x64
	.string	"__A"
	.byte	0x6
	.byte	0x69
	.long	0x3253
	.uleb128 0x64
	.string	"__B"
	.byte	0x6
	.byte	0x69
	.long	0x3253
	.byte	0
	.uleb128 0x52
	.long	.LASF635
	.byte	0x4
	.value	0x534
	.long	.LASF636
	.long	0x3253
	.byte	0x3
	.long	0x5943
	.uleb128 0x38
	.string	"__A"
	.byte	0x4
	.value	0x534
	.long	0x1b87
	.byte	0
	.uleb128 0x52
	.long	.LASF637
	.byte	0x4
	.value	0x4fd
	.long	.LASF638
	.long	0x3253
	.byte	0x3
	.long	0x5ad9
	.uleb128 0xd
	.long	.LASF639
	.byte	0x4
	.value	0x4fd
	.long	0x1b87
	.uleb128 0xd
	.long	.LASF640
	.byte	0x4
	.value	0x4fd
	.long	0x1b87
	.uleb128 0xd
	.long	.LASF641
	.byte	0x4
	.value	0x4fd
	.long	0x1b87
	.uleb128 0xd
	.long	.LASF642
	.byte	0x4
	.value	0x4fd
	.long	0x1b87
	.uleb128 0xd
	.long	.LASF643
	.byte	0x4
	.value	0x4fe
	.long	0x1b87
	.uleb128 0xd
	.long	.LASF644
	.byte	0x4
	.value	0x4fe
	.long	0x1b87
	.uleb128 0xd
	.long	.LASF645
	.byte	0x4
	.value	0x4fe
	.long	0x1b87
	.uleb128 0xd
	.long	.LASF646
	.byte	0x4
	.value	0x4fe
	.long	0x1b87
	.uleb128 0xd
	.long	.LASF647
	.byte	0x4
	.value	0x4ff
	.long	0x1b87
	.uleb128 0xd
	.long	.LASF648
	.byte	0x4
	.value	0x4ff
	.long	0x1b87
	.uleb128 0xd
	.long	.LASF649
	.byte	0x4
	.value	0x4ff
	.long	0x1b87
	.uleb128 0xd
	.long	.LASF650
	.byte	0x4
	.value	0x4ff
	.long	0x1b87
	.uleb128 0xd
	.long	.LASF651
	.byte	0x4
	.value	0x500
	.long	0x1b87
	.uleb128 0xd
	.long	.LASF652
	.byte	0x4
	.value	0x500
	.long	0x1b87
	.uleb128 0xd
	.long	.LASF653
	.byte	0x4
	.value	0x500
	.long	0x1b87
	.uleb128 0xd
	.long	.LASF654
	.byte	0x4
	.value	0x500
	.long	0x1b87
	.uleb128 0xd
	.long	.LASF655
	.byte	0x4
	.value	0x501
	.long	0x1b87
	.uleb128 0xd
	.long	.LASF656
	.byte	0x4
	.value	0x501
	.long	0x1b87
	.uleb128 0xd
	.long	.LASF657
	.byte	0x4
	.value	0x501
	.long	0x1b87
	.uleb128 0xd
	.long	.LASF658
	.byte	0x4
	.value	0x501
	.long	0x1b87
	.uleb128 0xd
	.long	.LASF659
	.byte	0x4
	.value	0x502
	.long	0x1b87
	.uleb128 0xd
	.long	.LASF660
	.byte	0x4
	.value	0x502
	.long	0x1b87
	.uleb128 0xd
	.long	.LASF661
	.byte	0x4
	.value	0x502
	.long	0x1b87
	.uleb128 0xd
	.long	.LASF662
	.byte	0x4
	.value	0x502
	.long	0x1b87
	.uleb128 0xd
	.long	.LASF663
	.byte	0x4
	.value	0x503
	.long	0x1b87
	.uleb128 0xd
	.long	.LASF664
	.byte	0x4
	.value	0x503
	.long	0x1b87
	.uleb128 0xd
	.long	.LASF665
	.byte	0x4
	.value	0x503
	.long	0x1b87
	.uleb128 0xd
	.long	.LASF666
	.byte	0x4
	.value	0x503
	.long	0x1b87
	.uleb128 0xd
	.long	.LASF667
	.byte	0x4
	.value	0x504
	.long	0x1b87
	.uleb128 0xd
	.long	.LASF668
	.byte	0x4
	.value	0x504
	.long	0x1b87
	.uleb128 0xd
	.long	.LASF669
	.byte	0x4
	.value	0x504
	.long	0x1b87
	.uleb128 0xd
	.long	.LASF670
	.byte	0x4
	.value	0x504
	.long	0x1b87
	.byte	0
	.uleb128 0x8e
	.long	.LASF671
	.byte	0x4
	.value	0x391
	.long	.LASF672
	.byte	0x3
	.long	0x5b04
	.uleb128 0x38
	.string	"__P"
	.byte	0x4
	.value	0x391
	.long	0x513a
	.uleb128 0x38
	.string	"__A"
	.byte	0x4
	.value	0x391
	.long	0x3253
	.byte	0
	.uleb128 0x52
	.long	.LASF673
	.byte	0x4
	.value	0x38b
	.long	.LASF674
	.long	0x3253
	.byte	0x3
	.long	0x5b26
	.uleb128 0x38
	.string	"__P"
	.byte	0x4
	.value	0x38b
	.long	0x5b26
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x325e
	.uleb128 0x8f
	.long	.LASF676
	.byte	0x1
	.byte	0x34
	.quad	.LFB1577
	.quad	.LFE1577-.LFB1577
	.uleb128 0x1
	.byte	0x9c
	.long	0x5b59
	.uleb128 0x21
	.long	.LASF675
	.byte	0x1
	.byte	0x34
	.long	0x1b26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x90
	.long	.LASF677
	.byte	0x1
	.byte	0x26
	.long	0x1b26
	.quad	.LFB1576
	.quad	.LFE1576-.LFB1576
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x21
	.long	.LASF678
	.byte	0x1
	.byte	0x26
	.long	0x1acb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.long	.LASF679
	.byte	0x1
	.byte	0x26
	.long	0x1acb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x8
	.long	.LASF675
	.byte	0x1
	.byte	0x28
	.long	0x1b26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x2f
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x8
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2f
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x30
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x8b
	.uleb128 0xb
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0xa
	.uleb128 0x6c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x47
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x3a
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x2f
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1e
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x30
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0x39
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x43
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x45
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.uleb128 0x32
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x46
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x63
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x47
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x48
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x49
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4a
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x2107
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4b
	.uleb128 0x21
	.byte	0
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4c
	.uleb128 0x34
	.byte	0
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x4d
	.uleb128 0x34
	.byte	0
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x4e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4f
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x50
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x51
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x52
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x53
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x63
	.uleb128 0x19
	.uleb128 0x8b
	.uleb128 0xb
	.uleb128 0x64
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x54
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x55
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x56
	.uleb128 0x39
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x57
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x58
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x59
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x5a
	.uleb128 0x3a
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5b
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x8b
	.uleb128 0xb
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5d
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x5e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5f
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x60
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x61
	.uleb128 0x34
	.byte	0
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x62
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x63
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x64
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x65
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x66
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x67
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x68
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x63
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x69
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x63
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6c
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x6d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0xa
	.uleb128 0x6c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x6e
	.uleb128 0x39
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6f
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x32
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x70
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x71
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x72
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x73
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x74
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x75
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0xa
	.uleb128 0x6c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x76
	.uleb128 0x30
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1e
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x77
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x78
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x79
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7a
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7b
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x7c
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7d
	.uleb128 0x3b
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x7e
	.uleb128 0x42
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7f
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x80
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x81
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x82
	.uleb128 0x15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x83
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x84
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x85
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x86
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x87
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x88
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x89
	.uleb128 0x34
	.byte	0
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x8a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8b
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x8c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x90
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0xcc
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	.LFB5343
	.quad	.LFE5343-.LFB5343
	.quad	.LFB5347
	.quad	.LFE5347-.LFB5347
	.quad	.LFB5349
	.quad	.LFE5349-.LFB5349
	.quad	.LFB5372
	.quad	.LFE5372-.LFB5372
	.quad	.LFB5371
	.quad	.LFE5371-.LFB5371
	.quad	.LFB5378
	.quad	.LFE5378-.LFB5378
	.quad	.LFB5375
	.quad	.LFE5375-.LFB5375
	.quad	.LFB5374
	.quad	.LFE5374-.LFB5374
	.quad	.LFB5380
	.quad	.LFE5380-.LFB5380
	.quad	.LFB5567
	.quad	.LFE5567-.LFB5567
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB163
	.quad	.LBE163
	.quad	.LBB180
	.quad	.LBE180
	.quad	0
	.quad	0
	.quad	.LBB182
	.quad	.LBE182
	.quad	.LBB221
	.quad	.LBE221
	.quad	0
	.quad	0
	.quad	.LBB183
	.quad	.LBE183
	.quad	.LBB220
	.quad	.LBE220
	.quad	0
	.quad	0
	.quad	.LBB185
	.quad	.LBE185
	.quad	.LBB218
	.quad	.LBE218
	.quad	0
	.quad	0
	.quad	.LBB222
	.quad	.LBE222
	.quad	.LBB234
	.quad	.LBE234
	.quad	0
	.quad	0
	.quad	.LBB223
	.quad	.LBE223
	.quad	.LBB233
	.quad	.LBE233
	.quad	0
	.quad	0
	.quad	.LBB225
	.quad	.LBE225
	.quad	.LBB231
	.quad	.LBE231
	.quad	0
	.quad	0
	.quad	.Ltext0
	.quad	.Letext0
	.quad	.LFB5343
	.quad	.LFE5343
	.quad	.LFB5347
	.quad	.LFE5347
	.quad	.LFB5349
	.quad	.LFE5349
	.quad	.LFB5372
	.quad	.LFE5372
	.quad	.LFB5371
	.quad	.LFE5371
	.quad	.LFB5378
	.quad	.LFE5378
	.quad	.LFB5375
	.quad	.LFE5375
	.quad	.LFB5374
	.quad	.LFE5374
	.quad	.LFB5380
	.quad	.LFE5380
	.quad	.LFB5567
	.quad	.LFE5567
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF691:
	.string	"_GLOBAL__sub_I_main"
.LASF444:
	.string	"int_p_sep_by_space"
.LASF266:
	.string	"char"
.LASF145:
	.string	"_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEmmEv"
.LASF522:
	.string	"fgetc"
.LASF394:
	.string	"int8_t"
.LASF192:
	.string	"_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEE4zeroEv"
.LASF97:
	.string	"_CharT"
.LASF72:
	.string	"size_t"
.LASF171:
	.string	"_ZNSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE3maxEv"
.LASF156:
	.string	"_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE3minEv"
.LASF524:
	.string	"fgets"
.LASF336:
	.string	"tm_hour"
.LASF369:
	.string	"wmemchr"
.LASF39:
	.string	"__value"
.LASF40:
	.string	"__is_integer<float>"
.LASF186:
	.string	"_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEmmEi"
.LASF233:
	.string	"__numeric_traits_integer<int>"
.LASF185:
	.string	"_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEmmEv"
.LASF509:
	.string	"fpos_t"
.LASF566:
	.string	"_ZN9__gnu_cxx24__numeric_traits_integerIiE5__maxE"
.LASF508:
	.string	"_IO_2_1_stderr_"
.LASF417:
	.string	"uint_fast64_t"
.LASF377:
	.string	"signed char"
.LASF167:
	.string	"_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv"
.LASF170:
	.string	"_ZNSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE3minEv"
.LASF199:
	.string	"__duration_cast_impl<std::chrono::duration<double, std::ratio<1, 1> >, std::ratio<1, 1000000000>, double, true, false>"
.LASF282:
	.string	"_IO_save_end"
.LASF410:
	.string	"int_fast8_t"
.LASF198:
	.string	"_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC4IdvEERKT_"
.LASF578:
	.string	"_ZNSt17integral_constantIlLl1EE5valueE"
.LASF557:
	.string	"asctime"
.LASF235:
	.string	"__max"
.LASF332:
	.string	"wcscspn"
.LASF451:
	.string	"localeconv"
.LASF201:
	.string	"_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE"
.LASF5:
	.string	"_M_addref"
.LASF9:
	.string	"_M_get"
.LASF497:
	.string	"strtold"
.LASF498:
	.string	"9_G_fpos_t"
.LASF452:
	.string	"time_t"
.LASF632:
	.string	"_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_"
.LASF494:
	.string	"strtoll"
.LASF275:
	.string	"_IO_write_base"
.LASF541:
	.string	"tmpnam"
.LASF465:
	.string	"div_t"
.LASF244:
	.string	"__numeric_traits_floating<long double>"
.LASF629:
	.string	"__lhs"
.LASF291:
	.string	"_lock"
.LASF472:
	.string	"at_quick_exit"
.LASF428:
	.string	"int_curr_symbol"
.LASF150:
	.string	"_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEmIERKS3_"
.LASF365:
	.string	"wcschr"
.LASF554:
	.string	"difftime"
.LASF190:
	.string	"_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEdVERKd"
.LASF228:
	.string	"type"
.LASF439:
	.string	"n_cs_precedes"
.LASF470:
	.string	"__compar_fn_t"
.LASF118:
	.string	"_ZSt5wcerr"
.LASF280:
	.string	"_IO_save_base"
.LASF313:
	.string	"mbrtowc"
.LASF582:
	.string	"_ZNSt5ratioILl1ELl1EE3numE"
.LASF474:
	.string	"atoi"
.LASF357:
	.string	"wcsxfrm"
.LASF81:
	.string	"_ZNSt11char_traitsIwE4copyEPwPKwm"
.LASF493:
	.string	"atoll"
.LASF435:
	.string	"int_frac_digits"
.LASF4:
	.string	"_ZNSt15__exception_ptr13exception_ptrC4EPv"
.LASF217:
	.string	"_ZNKSt17integral_constantIlLl1EEcvlEv"
.LASF523:
	.string	"fgetpos"
.LASF499:
	.string	"__pos"
.LASF284:
	.string	"_chain"
.LASF330:
	.string	"wcscoll"
.LASF517:
	.string	"clearerr"
.LASF34:
	.string	"_ZNKSt17integral_constantIbLb1EEcvbEv"
.LASF135:
	.string	"count"
.LASF288:
	.string	"_cur_column"
.LASF416:
	.string	"uint_fast32_t"
.LASF513:
	.string	"sys_nerr"
.LASF143:
	.string	"_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEppEi"
.LASF433:
	.string	"positive_sign"
.LASF224:
	.string	"_Den"
.LASF263:
	.string	"__wch"
.LASF58:
	.string	"_ZNSt11char_traitsIcE4moveEPcPKcm"
.LASF215:
	.string	"integral_constant<long int, 1>"
.LASF381:
	.string	"__uint8_t"
.LASF142:
	.string	"_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEppEv"
.LASF440:
	.string	"n_sep_by_space"
.LASF596:
	.string	"data_size_in_bits"
.LASF487:
	.string	"strtol"
.LASF473:
	.string	"atof"
.LASF568:
	.string	"_ZN9__gnu_cxx25__numeric_traits_floatingIdE16__max_exponent10E"
.LASF475:
	.string	"atol"
.LASF515:
	.string	"_sys_nerr"
.LASF193:
	.string	"_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEE3minEv"
.LASF184:
	.string	"_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEppEi"
.LASF367:
	.string	"wcsrchr"
.LASF430:
	.string	"mon_decimal_point"
.LASF183:
	.string	"_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEppEv"
.LASF477:
	.string	"getenv"
.LASF134:
	.string	"_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEED4Ev"
.LASF189:
	.string	"_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEmLERKd"
.LASF16:
	.string	"_ZNSt15__exception_ptr13exception_ptraSERKS0_"
.LASF342:
	.string	"tm_isdst"
.LASF544:
	.string	"program_invocation_short_name"
.LASF1:
	.string	"nothrow_t"
.LASF612:
	.string	"readwrite_bw_bytes_per_sec"
.LASF246:
	.string	"__numeric_traits_integer<char>"
.LASF325:
	.string	"vwprintf"
.LASF155:
	.string	"zero"
.LASF165:
	.string	"_ZNSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEC4ERKS6_"
.LASF121:
	.string	"chrono"
.LASF413:
	.string	"int_fast64_t"
.LASF491:
	.string	"wctomb"
.LASF241:
	.string	"__digits10"
.LASF502:
	.string	"_IO_marker"
.LASF195:
	.string	"_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC4IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE"
.LASF584:
	.string	"main"
.LASF445:
	.string	"int_n_cs_precedes"
.LASF93:
	.string	"~Init"
.LASF548:
	.string	"towctrans"
.LASF114:
	.string	"wostream"
.LASF75:
	.string	"_ZNSt11char_traitsIwE2eqERKwS2_"
.LASF59:
	.string	"copy"
.LASF483:
	.string	"rand"
.LASF50:
	.string	"_ZNSt11char_traitsIcE2ltERKcS2_"
.LASF626:
	.string	"__rep"
.LASF561:
	.string	"__ioinit"
.LASF27:
	.string	"nullptr_t"
.LASF92:
	.string	"_S_synced_with_stdio"
.LASF238:
	.string	"_Value"
.LASF83:
	.string	"_ZNSt11char_traitsIwE12to_char_typeERKj"
.LASF409:
	.string	"uint_least64_t"
.LASF110:
	.string	"_ZSt4clog"
.LASF341:
	.string	"tm_yday"
.LASF495:
	.string	"strtoull"
.LASF398:
	.string	"uint8_t"
.LASF137:
	.string	"operator+"
.LASF116:
	.string	"_ZSt5wcout"
.LASF139:
	.string	"operator-"
.LASF670:
	.string	"__q00"
.LASF669:
	.string	"__q01"
.LASF668:
	.string	"__q02"
.LASF456:
	.string	"__timezone"
.LASF666:
	.string	"__q04"
.LASF665:
	.string	"__q05"
.LASF535:
	.string	"remove"
.LASF663:
	.string	"__q07"
.LASF662:
	.string	"__q08"
.LASF96:
	.string	"basic_ostream<char, std::char_traits<char> >"
.LASF129:
	.string	"duration"
.LASF545:
	.string	"wctype_t"
.LASF15:
	.string	"operator="
.LASF303:
	.string	"fgetwc"
.LASF450:
	.string	"getwchar"
.LASF107:
	.string	"cerr"
.LASF598:
	.string	"sum_res"
.LASF304:
	.string	"fgetws"
.LASF176:
	.string	"_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC4ERKS3_"
.LASF47:
	.string	"char_type"
.LASF376:
	.string	"unsigned char"
.LASF124:
	.string	"to_time_t"
.LASF577:
	.string	"_ZNSt5ratioILl1ELl1000000000EE3denE"
.LASF11:
	.string	"_ZNSt15__exception_ptr13exception_ptrC4Ev"
.LASF518:
	.string	"fclose"
.LASF620:
	.string	"main._omp_fn.0"
.LASF619:
	.string	"main._omp_fn.1"
.LASF618:
	.string	"main._omp_fn.2"
.LASF617:
	.string	"main._omp_fn.3"
.LASF616:
	.string	"main._omp_fn.4"
.LASF660:
	.string	"__q10"
.LASF659:
	.string	"__q11"
.LASF658:
	.string	"__q12"
.LASF657:
	.string	"__q13"
.LASF656:
	.string	"__q14"
.LASF655:
	.string	"__q15"
.LASF573:
	.string	"_ZN9__gnu_cxx24__numeric_traits_integerIsE5__maxE"
.LASF653:
	.string	"__q17"
.LASF652:
	.string	"__q18"
.LASF651:
	.string	"__q19"
.LASF468:
	.string	"7lldiv_t"
.LASF329:
	.string	"wcscmp"
.LASF485:
	.string	"srand"
.LASF69:
	.string	"not_eof"
.LASF318:
	.string	"swprintf"
.LASF671:
	.string	"_mm256_store_si256"
.LASF454:
	.string	"__tzname"
.LASF366:
	.string	"wcspbrk"
.LASF24:
	.string	"rethrow_exception"
.LASF168:
	.string	"_ZNSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEpLERKS6_"
.LASF690:
	.string	"_IO_FILE_plus"
.LASF236:
	.string	"__is_signed"
.LASF32:
	.string	"value"
.LASF87:
	.string	"_ZNSt11char_traitsIwE3eofEv"
.LASF634:
	.string	"_Z15_mm256_add_epi8Dv4_xS_"
.LASF98:
	.string	"basic_ostream<wchar_t, std::char_traits<wchar_t> >"
.LASF225:
	.string	"ratio<1000000000, 1>"
.LASF478:
	.string	"ldiv"
.LASF675:
	.string	"__ptr"
.LASF650:
	.string	"__q20"
.LASF29:
	.string	"operator std::integral_constant<bool, false>::value_type"
.LASF648:
	.string	"__q22"
.LASF647:
	.string	"__q23"
.LASF646:
	.string	"__q24"
.LASF77:
	.string	"_ZNSt11char_traitsIwE7compareEPKwS2_m"
.LASF644:
	.string	"__q26"
.LASF643:
	.string	"__q27"
.LASF642:
	.string	"__q28"
.LASF641:
	.string	"__q29"
.LASF550:
	.string	"wctype"
.LASF257:
	.string	"gp_offset"
.LASF408:
	.string	"uint_least32_t"
.LASF630:
	.string	"__rhs"
.LASF347:
	.string	"wcsncmp"
.LASF689:
	.string	"_IO_lock_t"
.LASF383:
	.string	"__uint16_t"
.LASF564:
	.string	"_ZNSt17integral_constantIbLb1EE5valueE"
.LASF442:
	.string	"n_sign_posn"
.LASF94:
	.string	"_ZNSt8ios_base4InitD4Ev"
.LASF361:
	.string	"wmemmove"
.LASF131:
	.string	"_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC4Ev"
.LASF667:
	.string	"__q03"
.LASF463:
	.string	"5div_t"
.LASF459:
	.string	"timezone"
.LASF531:
	.string	"getc"
.LASF664:
	.string	"__q06"
.LASF661:
	.string	"__q09"
.LASF234:
	.string	"__min"
.LASF335:
	.string	"tm_min"
.LASF640:
	.string	"__q30"
.LASF311:
	.string	"getwc"
.LASF533:
	.string	"gets"
.LASF272:
	.string	"_IO_read_ptr"
.LASF364:
	.string	"wscanf"
.LASF608:
	.string	"read_bw_bytes_per_sec"
.LASF122:
	.string	"time_point"
.LASF320:
	.string	"ungetwc"
.LASF258:
	.string	"fp_offset"
.LASF530:
	.string	"ftell"
.LASF556:
	.string	"time"
.LASF89:
	.string	"ptrdiff_t"
.LASF565:
	.string	"_ZN9__gnu_cxx24__numeric_traits_integerIiE5__minE"
.LASF546:
	.string	"wctrans_t"
.LASF312:
	.string	"mbrlen"
.LASF505:
	.string	"_pos"
.LASF175:
	.string	"_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC4Ev"
.LASF164:
	.string	"_ZNSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEC4Ev"
.LASF213:
	.string	"_Rep1"
.LASF160:
	.string	"_Rep2"
.LASF514:
	.string	"sys_errlist"
.LASF595:
	.string	"data_size_in_bytes"
.LASF443:
	.string	"int_p_cs_precedes"
.LASF638:
	.string	"_Z15_mm256_set_epi8cccccccccccccccccccccccccccccccc"
.LASF309:
	.string	"fwprintf"
.LASF182:
	.string	"_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEEngEv"
.LASF637:
	.string	"_mm256_set_epi8"
.LASF74:
	.string	"_ZNSt11char_traitsIwE6assignERwRKw"
.LASF104:
	.string	"cout"
.LASF283:
	.string	"_markers"
.LASF373:
	.string	"wcstoull"
.LASF569:
	.string	"_ZN9__gnu_cxx25__numeric_traits_floatingIeE16__max_exponent10E"
.LASF51:
	.string	"compare"
.LASF501:
	.string	"_G_fpos_t"
.LASF560:
	.string	"localtime"
.LASF331:
	.string	"wcscpy"
.LASF679:
	.string	"__alignment"
.LASF323:
	.string	"vswprintf"
.LASF31:
	.string	"integral_constant<bool, true>"
.LASF488:
	.string	"strtoul"
.LASF33:
	.string	"operator std::integral_constant<bool, true>::value_type"
.LASF216:
	.string	"operator std::integral_constant<long int, 1>::value_type"
.LASF362:
	.string	"wmemset"
.LASF21:
	.string	"_ZNSt15__exception_ptr13exception_ptr4swapERS0_"
.LASF654:
	.string	"__q16"
.LASF132:
	.string	"_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC4ERKS3_"
.LASF136:
	.string	"_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv"
.LASF268:
	.string	"mbstate_t"
.LASF308:
	.string	"fwide"
.LASF222:
	.string	"is_steady"
.LASF672:
	.string	"_Z18_mm256_store_si256PDv4_xS_"
.LASF138:
	.string	"_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEpsEv"
.LASF194:
	.string	"_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEE3maxEv"
.LASF591:
	.string	"clock_end"
.LASF543:
	.string	"program_invocation_name"
.LASF22:
	.string	"__cxa_exception_type"
.LASF292:
	.string	"_offset"
.LASF457:
	.string	"tzname"
.LASF348:
	.string	"wcsncpy"
.LASF299:
	.string	"_unused2"
.LASF317:
	.string	"putwchar"
.LASF567:
	.string	"_ZN9__gnu_cxx25__numeric_traits_floatingIfE16__max_exponent10E"
.LASF17:
	.string	"_ZNSt15__exception_ptr13exception_ptraSEOS0_"
.LASF359:
	.string	"wmemcmp"
.LASF120:
	.string	"_ZSt5wclog"
.LASF60:
	.string	"_ZNSt11char_traitsIcE4copyEPcPKcm"
.LASF55:
	.string	"find"
.LASF387:
	.string	"__uint64_t"
.LASF536:
	.string	"rename"
.LASF623:
	.string	"__priority"
.LASF407:
	.string	"uint_least16_t"
.LASF434:
	.string	"negative_sign"
.LASF57:
	.string	"move"
.LASF254:
	.string	"long unsigned int"
.LASF469:
	.string	"lldiv_t"
.LASF681:
	.string	"mem_bw_final.cpp"
.LASF680:
	.string	"GNU C++11 7.4.0 --param l1-cache-size=32 --param l1-cache-line-size=64 --param l2-cache-size=8192 -mtune=generic -march=haswell -g -std=c++11 -fopenmp -fstack-protector-strong"
.LASF86:
	.string	"_ZNSt11char_traitsIcE3eofEv"
.LASF6:
	.string	"_M_release"
.LASF140:
	.string	"_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEngEv"
.LASF43:
	.string	"nothrow"
.LASF286:
	.string	"_flags2"
.LASF404:
	.string	"int_least32_t"
.LASF379:
	.string	"__gnu_debug"
.LASF649:
	.string	"__q21"
.LASF466:
	.string	"6ldiv_t"
.LASF274:
	.string	"_IO_read_base"
.LASF645:
	.string	"__q25"
.LASF405:
	.string	"int_least64_t"
.LASF108:
	.string	"_ZSt4cerr"
.LASF396:
	.string	"int32_t"
.LASF624:
	.string	"this"
.LASF423:
	.string	"char32_t"
.LASF79:
	.string	"_ZNSt11char_traitsIwE4findEPKwmRS1_"
.LASF674:
	.string	"_Z17_mm256_load_si256PKDv4_x"
.LASF490:
	.string	"wcstombs"
.LASF343:
	.string	"tm_gmtoff"
.LASF28:
	.string	"value_type"
.LASF419:
	.string	"uintptr_t"
.LASF678:
	.string	"__size"
.LASF41:
	.string	"piecewise_construct_t"
.LASF594:
	.string	"data_size"
.LASF510:
	.string	"stdin"
.LASF78:
	.string	"_ZNSt11char_traitsIwE6lengthEPKw"
.LASF10:
	.string	"_ZNKSt15__exception_ptr13exception_ptr6_M_getEv"
.LASF553:
	.string	"clock"
.LASF250:
	.string	"__float128"
.LASF609:
	.string	"write_bw_bits_per_sec"
.LASF585:
	.string	"argc"
.LASF148:
	.string	"_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEpLERKS3_"
.LASF91:
	.string	"_S_refcount"
.LASF287:
	.string	"_old_offset"
.LASF563:
	.string	"_ZNSt17integral_constantIbLb0EE5valueE"
.LASF529:
	.string	"fsetpos"
.LASF152:
	.string	"_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEmLERKl"
.LASF221:
	.string	"ratio<1, 1000000000>"
.LASF446:
	.string	"int_n_sep_by_space"
.LASF99:
	.string	"_Traits"
.LASF576:
	.string	"_ZNSt5ratioILl1ELl1000000000EE3numE"
.LASF30:
	.string	"_ZNKSt17integral_constantIbLb0EEcvbEv"
.LASF179:
	.string	"_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEaSERKS3_"
.LASF622:
	.string	"__initialize_p"
.LASF163:
	.string	"time_point<std::chrono::_V2::system_clock, std::chrono::duration<long int, std::ratio<1, 1000000000> > >"
.LASF259:
	.string	"overflow_arg_area"
.LASF230:
	.string	"enable_if<true, std::chrono::duration<double, std::ratio<1, 1> > >"
.LASF385:
	.string	"__uint32_t"
.LASF631:
	.string	"__cd"
.LASF197:
	.string	"duration<double>"
.LASF639:
	.string	"__q31"
.LASF372:
	.string	"long long int"
.LASF267:
	.string	"__mbstate_t"
.LASF242:
	.string	"__max_exponent10"
.LASF360:
	.string	"wmemcpy"
.LASF338:
	.string	"tm_mon"
.LASF211:
	.string	"operator-<long int, std::ratio<1, 1000000000>, long int, std::ratio<1, 1000000000> >"
.LASF219:
	.string	"operator std::integral_constant<long int, 1000000000>::value_type"
.LASF12:
	.string	"_ZNSt15__exception_ptr13exception_ptrC4ERKS0_"
.LASF606:
	.string	"run_time"
.LASF212:
	.string	"_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_"
.LASF552:
	.string	"__m256i"
.LASF37:
	.string	"__is_integer<long double>"
.LASF354:
	.string	"wcstol"
.LASF181:
	.string	"_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEEpsEv"
.LASF252:
	.string	"double"
.LASF56:
	.string	"_ZNSt11char_traitsIcE4findEPKcmRS1_"
.LASF481:
	.string	"mbtowc"
.LASF277:
	.string	"_IO_write_end"
.LASF202:
	.string	"_ToDur"
.LASF572:
	.string	"_ZN9__gnu_cxx24__numeric_traits_integerIsE5__minE"
.LASF109:
	.string	"clog"
.LASF421:
	.string	"uintmax_t"
.LASF44:
	.string	"piecewise_construct"
.LASF358:
	.string	"wctob"
.LASF214:
	.string	"_Period1"
.LASF100:
	.string	"basic_istream<char, std::char_traits<char> >"
.LASF570:
	.string	"_ZN9__gnu_cxx24__numeric_traits_integerImE8__digitsE"
.LASF251:
	.string	"float"
.LASF209:
	.string	"_Dur1"
.LASF210:
	.string	"_Dur2"
.LASF688:
	.string	"decltype(nullptr)"
.LASF2:
	.string	"exception_ptr"
.LASF441:
	.string	"p_sign_posn"
.LASF625:
	.string	"__to_rep"
.LASF106:
	.string	"_ZSt4cout"
.LASF321:
	.string	"vfwprintf"
.LASF388:
	.string	"__intmax_t"
.LASF278:
	.string	"_IO_buf_base"
.LASF261:
	.string	"unsigned int"
.LASF133:
	.string	"~duration"
.LASF574:
	.string	"_ZN9__gnu_cxx24__numeric_traits_integerIlE5__minE"
.LASF589:
	.string	"copies"
.LASF46:
	.string	"char_traits<char>"
.LASF534:
	.string	"perror"
.LASF418:
	.string	"intptr_t"
.LASF350:
	.string	"wcsspn"
.LASF453:
	.string	"clock_t"
.LASF683:
	.string	"operator bool"
.LASF68:
	.string	"_ZNSt11char_traitsIcE11eq_int_typeERKiS2_"
.LASF293:
	.string	"__pad1"
.LASF294:
	.string	"__pad2"
.LASF295:
	.string	"__pad3"
.LASF296:
	.string	"__pad4"
.LASF297:
	.string	"__pad5"
.LASF539:
	.string	"setvbuf"
.LASF504:
	.string	"_sbuf"
.LASF682:
	.string	"/home/student/Documents/gitrepo-5182/assignment3"
.LASF590:
	.string	"clock_start"
.LASF555:
	.string	"mktime"
.LASF64:
	.string	"_ZNSt11char_traitsIcE12to_char_typeERKi"
.LASF489:
	.string	"system"
.LASF166:
	.string	"time_since_epoch"
.LASF411:
	.string	"int_fast16_t"
.LASF85:
	.string	"_ZNSt11char_traitsIwE11eq_int_typeERKjS2_"
.LASF461:
	.string	"_Atomic_word"
.LASF599:
	.string	"sum_res1"
.LASF600:
	.string	"sum_res2"
.LASF601:
	.string	"sum_res3"
.LASF602:
	.string	"sum_res4"
.LASF603:
	.string	"sum_res5"
.LASF604:
	.string	"sum_res6"
.LASF605:
	.string	"sum_res7"
.LASF126:
	.string	"from_time_t"
.LASF220:
	.string	"_ZNKSt17integral_constantIlLl1000000000EEcvlEv"
.LASF685:
	.string	"type_info"
.LASF271:
	.string	"_flags"
.LASF204:
	.string	"_DenIsOne"
.LASF90:
	.string	"Init"
.LASF355:
	.string	"long int"
.LASF392:
	.string	"__clock_t"
.LASF298:
	.string	"_mode"
.LASF117:
	.string	"wcerr"
.LASF18:
	.string	"~exception_ptr"
.LASF558:
	.string	"ctime"
.LASF206:
	.string	"_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE"
.LASF103:
	.string	"ostream"
.LASF425:
	.string	"decimal_point"
.LASF345:
	.string	"wcslen"
.LASF532:
	.string	"getchar"
.LASF42:
	.string	"_ZNSt21piecewise_construct_tC4Ev"
.LASF265:
	.string	"__count"
.LASF231:
	.string	"__gnu_cxx"
.LASF676:
	.string	"_mm_free"
.LASF375:
	.string	"bool"
.LASF76:
	.string	"_ZNSt11char_traitsIwE2ltERKwS2_"
.LASF406:
	.string	"uint_least8_t"
.LASF519:
	.string	"feof"
.LASF402:
	.string	"int_least8_t"
.LASF249:
	.string	"__unknown__"
.LASF62:
	.string	"_ZNSt11char_traitsIcE6assignEPcmc"
.LASF597:
	.string	"num_of_feeds"
.LASF302:
	.string	"btowc"
.LASF484:
	.string	"qsort"
.LASF125:
	.string	"_ZNSt6chrono3_V212system_clock9to_time_tERKNS_10time_pointIS1_NS_8durationIlSt5ratioILl1ELl1000000000EEEEEE"
.LASF289:
	.string	"_vtable_offset"
.LASF253:
	.string	"long double"
.LASF173:
	.string	"_Dur"
.LASF316:
	.string	"putwc"
.LASF581:
	.string	"_ZNSt5ratioILl1000000000ELl1EE3denE"
.LASF636:
	.string	"_Z16_mm256_set1_epi8c"
.LASF300:
	.string	"FILE"
.LASF248:
	.string	"__numeric_traits_integer<long int>"
.LASF673:
	.string	"_mm256_load_si256"
.LASF223:
	.string	"_Num"
.LASF412:
	.string	"int_fast32_t"
.LASF243:
	.string	"__numeric_traits_floating<double>"
.LASF607:
	.string	"read_bw_bits_per_sec"
.LASF467:
	.string	"ldiv_t"
.LASF337:
	.string	"tm_mday"
.LASF127:
	.string	"_ZNSt6chrono3_V212system_clock11from_time_tEl"
.LASF264:
	.string	"__wchb"
.LASF476:
	.string	"bsearch"
.LASF460:
	.string	"getdate_err"
.LASF677:
	.string	"_mm_malloc"
.LASF380:
	.string	"__int8_t"
.LASF38:
	.string	"__is_integer<double>"
.LASF621:
	.string	"__static_initialization_and_destruction_0"
.LASF270:
	.string	"_IO_FILE"
.LASF53:
	.string	"_ZNSt11char_traitsIcE7compareEPKcS2_m"
.LASF374:
	.string	"long long unsigned int"
.LASF105:
	.string	"_ZSt7nothrow"
.LASF20:
	.string	"swap"
.LASF260:
	.string	"reg_save_area"
.LASF370:
	.string	"wcstold"
.LASF575:
	.string	"_ZN9__gnu_cxx24__numeric_traits_integerIlE5__maxE"
.LASF52:
	.string	"length"
.LASF399:
	.string	"uint16_t"
.LASF371:
	.string	"wcstoll"
.LASF390:
	.string	"__off_t"
.LASF227:
	.string	"__success_type<std::chrono::duration<long int, std::ratio<1, 1000000000> > >"
.LASF368:
	.string	"wcsstr"
.LASF571:
	.string	"_ZN9__gnu_cxx24__numeric_traits_integerIcE5__maxE"
.LASF13:
	.string	"_ZNSt15__exception_ptr13exception_ptrC4EDn"
.LASF25:
	.string	"_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE"
.LASF538:
	.string	"setbuf"
.LASF334:
	.string	"tm_sec"
.LASF172:
	.string	"_Clock"
.LASF633:
	.string	"_mm256_add_epi8"
.LASF349:
	.string	"wcsrtombs"
.LASF438:
	.string	"p_sep_by_space"
.LASF593:
	.string	"thread_count"
.LASF340:
	.string	"tm_wday"
.LASF49:
	.string	"_ZNSt11char_traitsIcE2eqERKcS2_"
.LASF141:
	.string	"operator++"
.LASF115:
	.string	"wcout"
.LASF314:
	.string	"mbsinit"
.LASF319:
	.string	"swscanf"
.LASF205:
	.string	"duration_cast<std::chrono::duration<double>, long int, std::ratio<1, 1000000000> >"
.LASF237:
	.string	"__digits"
.LASF351:
	.string	"wcstod"
.LASF352:
	.string	"wcstof"
.LASF26:
	.string	"integral_constant<bool, false>"
.LASF162:
	.string	"_Period"
.LASF353:
	.string	"wcstok"
.LASF35:
	.string	"__cxx11"
.LASF403:
	.string	"int_least16_t"
.LASF464:
	.string	"quot"
.LASF147:
	.string	"operator+="
.LASF269:
	.string	"__FILE"
.LASF615:
	.string	"temp_var"
.LASF101:
	.string	"basic_istream<wchar_t, std::char_traits<wchar_t> >"
.LASF506:
	.string	"_IO_2_1_stdin_"
.LASF382:
	.string	"__int16_t"
.LASF281:
	.string	"_IO_backup_base"
.LASF449:
	.string	"setlocale"
.LASF290:
	.string	"_shortbuf"
.LASF614:
	.string	"local_input"
.LASF507:
	.string	"_IO_2_1_stdout_"
.LASF310:
	.string	"fwscanf"
.LASF262:
	.string	"wint_t"
.LASF191:
	.string	"_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE4zeroEv"
.LASF503:
	.string	"_next"
.LASF95:
	.string	"ios_base"
.LASF391:
	.string	"__off64_t"
.LASF635:
	.string	"_mm256_set1_epi8"
.LASF159:
	.string	"_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC4IlvEERKT_"
.LASF23:
	.string	"_ZNKSt15__exception_ptr13exception_ptr20__cxa_exception_typeEv"
.LASF525:
	.string	"fopen"
.LASF586:
	.string	"argv"
.LASF549:
	.string	"wctrans"
.LASF426:
	.string	"thousands_sep"
.LASF130:
	.string	"_ZNSt8ios_base4InitC4Ev"
.LASF36:
	.string	"__swappable_details"
.LASF479:
	.string	"mblen"
.LASF537:
	.string	"rewind"
.LASF279:
	.string	"_IO_buf_end"
.LASF218:
	.string	"integral_constant<long int, 1000000000>"
.LASF3:
	.string	"_ZNSt9nothrow_tC4Ev"
.LASF203:
	.string	"_NumIsOne"
.LASF88:
	.string	"_ZNSt11char_traitsIwE7not_eofERKj"
.LASF486:
	.string	"strtod"
.LASF151:
	.string	"operator*="
.LASF496:
	.string	"strtof"
.LASF414:
	.string	"uint_fast8_t"
.LASF63:
	.string	"to_char_type"
.LASF527:
	.string	"freopen"
.LASF45:
	.string	"__debug"
.LASF436:
	.string	"frac_digits"
.LASF520:
	.string	"ferror"
.LASF226:
	.string	"ratio<1, 1>"
.LASF429:
	.string	"currency_symbol"
.LASF512:
	.string	"stderr"
.LASF378:
	.string	"short int"
.LASF256:
	.string	"_M_exception_object"
.LASF54:
	.string	"_ZNSt11char_traitsIcE6lengthEPKc"
.LASF401:
	.string	"uint64_t"
.LASF82:
	.string	"_ZNSt11char_traitsIwE6assignEPwmw"
.LASF333:
	.string	"wcsftime"
.LASF80:
	.string	"_ZNSt11char_traitsIwE4moveEPwPKwm"
.LASF177:
	.string	"_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEED4Ev"
.LASF174:
	.string	"duration<double, std::ratio<1, 1> >"
.LASF500:
	.string	"__state"
.LASF128:
	.string	"duration<long int, std::ratio<1, 1000000000> >"
.LASF528:
	.string	"fseek"
.LASF395:
	.string	"int16_t"
.LASF471:
	.string	"atexit"
.LASF592:
	.string	"elapsed_time"
.LASF684:
	.string	"_ZNKSt15__exception_ptr13exception_ptrcvbEv"
.LASF113:
	.string	"_ZSt4wcin"
.LASF158:
	.string	"duration<long int>"
.LASF432:
	.string	"mon_grouping"
.LASF516:
	.string	"_sys_errlist"
.LASF65:
	.string	"to_int_type"
.LASF389:
	.string	"__uintmax_t"
.LASF687:
	.string	"_ZN9__gnu_cxx3divExx"
.LASF70:
	.string	"_ZNSt11char_traitsIcE6assignERcRKc"
.LASF686:
	.string	"_ZSt3cin"
.LASF207:
	.string	"operator-<std::chrono::_V2::system_clock, std::chrono::duration<long int, std::ratio<1, 1000000000> >, std::chrono::duration<long int, std::ratio<1, 1000000000> > >"
.LASF583:
	.string	"_ZNSt5ratioILl1ELl1EE3denE"
.LASF328:
	.string	"wcscat"
.LASF540:
	.string	"tmpfile"
.LASF462:
	.string	"11__mbstate_t"
.LASF144:
	.string	"operator--"
.LASF200:
	.string	"__cast<long int, std::ratio<1, 1000000000> >"
.LASF208:
	.string	"_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE"
.LASF447:
	.string	"int_p_sign_posn"
.LASF196:
	.string	"_Period2"
.LASF627:
	.string	"_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE"
.LASF455:
	.string	"__daylight"
.LASF344:
	.string	"tm_zone"
.LASF386:
	.string	"__int64_t"
.LASF611:
	.string	"readwrite_bw_bits_per_sec"
.LASF542:
	.string	"ungetc"
.LASF169:
	.string	"_ZNSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEmIERKS6_"
.LASF67:
	.string	"eq_int_type"
.LASF579:
	.string	"_ZNSt17integral_constantIlLl1000000000EE5valueE"
.LASF326:
	.string	"vwscanf"
.LASF327:
	.string	"wcrtomb"
.LASF424:
	.string	"lconv"
.LASF273:
	.string	"_IO_read_end"
.LASF480:
	.string	"mbstowcs"
.LASF346:
	.string	"wcsncat"
.LASF247:
	.string	"__numeric_traits_integer<short int>"
.LASF580:
	.string	"_ZNSt5ratioILl1000000000ELl1EE3numE"
.LASF123:
	.string	"_ZNSt6chrono3_V212system_clock3nowEv"
.LASF73:
	.string	"char_traits<wchar_t>"
.LASF431:
	.string	"mon_thousands_sep"
.LASF562:
	.string	"__dso_handle"
.LASF400:
	.string	"uint32_t"
.LASF448:
	.string	"int_n_sign_posn"
.LASF149:
	.string	"operator-="
.LASF628:
	.string	"_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IdvEERKT_"
.LASF285:
	.string	"_fileno"
.LASF415:
	.string	"uint_fast16_t"
.LASF307:
	.string	"fputws"
.LASF324:
	.string	"vswscanf"
.LASF315:
	.string	"mbsrtowcs"
.LASF239:
	.string	"__numeric_traits_floating<float>"
.LASF8:
	.string	"_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv"
.LASF119:
	.string	"wclog"
.LASF111:
	.string	"wistream"
.LASF19:
	.string	"_ZNSt15__exception_ptr13exception_ptrD4Ev"
.LASF229:
	.string	"system_clock"
.LASF240:
	.string	"__max_digits10"
.LASF422:
	.string	"char16_t"
.LASF102:
	.string	"istream"
.LASF306:
	.string	"fputwc"
.LASF437:
	.string	"p_cs_precedes"
.LASF245:
	.string	"__numeric_traits_integer<long unsigned int>"
.LASF339:
	.string	"tm_year"
.LASF14:
	.string	"_ZNSt15__exception_ptr13exception_ptrC4EOS0_"
.LASF301:
	.string	"short unsigned int"
.LASF511:
	.string	"stdout"
.LASF559:
	.string	"gmtime"
.LASF48:
	.string	"int_type"
.LASF526:
	.string	"fread"
.LASF188:
	.string	"_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEmIERKS3_"
.LASF232:
	.string	"__ops"
.LASF322:
	.string	"vfwscanf"
.LASF276:
	.string	"_IO_write_ptr"
.LASF161:
	.string	"_Rep"
.LASF178:
	.string	"_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEaSERKS3_"
.LASF112:
	.string	"wcin"
.LASF84:
	.string	"_ZNSt11char_traitsIwE11to_int_typeERKw"
.LASF610:
	.string	"write_bw_bytes_per_sec"
.LASF0:
	.string	"__exception_ptr"
.LASF384:
	.string	"__int32_t"
.LASF180:
	.string	"_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv"
.LASF397:
	.string	"int64_t"
.LASF458:
	.string	"daylight"
.LASF7:
	.string	"_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv"
.LASF551:
	.string	"__v32qu"
.LASF154:
	.string	"_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEdVERKl"
.LASF547:
	.string	"iswctype"
.LASF393:
	.string	"__time_t"
.LASF61:
	.string	"assign"
.LASF427:
	.string	"grouping"
.LASF588:
	.string	"inputs"
.LASF153:
	.string	"operator/="
.LASF492:
	.string	"lldiv"
.LASF363:
	.string	"wprintf"
.LASF71:
	.string	"_ZNSt11char_traitsIcE7not_eofERKi"
.LASF521:
	.string	"fflush"
.LASF587:
	.string	"loop_count"
.LASF482:
	.string	"quick_exit"
.LASF157:
	.string	"_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE3maxEv"
.LASF305:
	.string	"wchar_t"
.LASF255:
	.string	"typedef __va_list_tag __va_list_tag"
.LASF420:
	.string	"intmax_t"
.LASF356:
	.string	"wcstoul"
.LASF66:
	.string	"_ZNSt11char_traitsIcE11to_int_typeERKc"
.LASF613:
	.string	"thread_id"
.LASF146:
	.string	"_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEmmEi"
.LASF187:
	.string	"_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEpLERKS3_"
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
