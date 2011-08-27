	.section	__TEXT,__text,regular,pure_instructions
	.section	__DWARF,__debug_frame,regular,debug
Lsection_debug_frame:
	.section	__DWARF,__debug_info,regular,debug
Lsection_info:
	.section	__DWARF,__debug_abbrev,regular,debug
Lsection_abbrev:
	.section	__DWARF,__debug_aranges,regular,debug
Lsection_aranges:
	.section	__DWARF,__debug_macinfo,regular,debug
Lsection_macinfo:
Lsection_line:
	.section	__DWARF,__debug_loc,regular,debug
Lsection_loc:
	.section	__DWARF,__debug_pubnames,regular,debug
Lsection_pubnames:
	.section	__DWARF,__debug_pubtypes,regular,debug
Lsection_pubtypes:
	.section	__DWARF,__debug_str,regular,debug
Lsection_str:
	.section	__DWARF,__debug_ranges,regular,debug
Lsection_ranges:
	.section	__TEXT,__text,regular,pure_instructions
Ltext_begin:
	.section	__DATA,__data
Ldata_begin:
	.section	__TEXT,__text,regular,pure_instructions
.private_extern _Inc
	.globl	_Inc
_Inc:
Leh_func_begin1:
Lfunc_begin1:
Ltmp3:
	pushq	%rbp
Ltmp0:
	movq	%rsp, %rbp
Ltmp1:
Ltmp4:
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
Ltmp2:
Ltmp5:
Ltmp6:
	movq	%rdi, %rbx
Ltmp7:
Ltmp8:
	movq	$0, -24(%rbp)
	leaq	L_.str2(%rip), %rdi
	movq	%rbx, %rsi
	xorb	%al, %al
Ltmp9:
	callq	_printf
Ltmp10:
	callq	_mach_absolute_time
	movq	%rax, %r14
Ltmp11:
	xorb	%al, %al
Ltmp12:
	callq	_Increment
	movq	%rax, -24(%rbp)
Ltmp13:
	callq	_mach_absolute_time
Ltmp14:
	movq	%rax, %rdx
	subq	%r14, %rdx
Ltmp15:
Ltmp16:
	movq	-24(%rbp), %rsi
	leaq	L_.str3(%rip), %rdi
	movq	%rbx, %rcx
	xorb	%al, %al
	callq	_printf
	xorl	%edi, %edi
Ltmp17:
	callq	_pthread_exit
Ltmp18:
Lfunc_end1:
Leh_func_end1:

.private_extern _main
	.globl	_main
_main:
Leh_func_begin2:
Lfunc_begin2:
Ltmp22:
	pushq	%rbp
Ltmp19:
	movq	%rsp, %rbp
Ltmp20:
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
Ltmp21:
	leaq	L_.str(%rip), %rdi
Ltmp23:
	callq	_puts
Ltmp24:
	callq	_mach_absolute_time
	movq	%rax, %rbx
	leaq	-24(%rbp), %rdi
	leaq	_Inc(%rip), %r14
	movl	$1, %ecx
Ltmp25:
	xorl	%esi, %esi
	movq	%r14, %rdx
Ltmp26:
	callq	_pthread_create
	leaq	-32(%rbp), %rdi
	movl	$2, %ecx
	xorl	%esi, %esi
	movq	%r14, %rdx
Ltmp27:
	callq	_pthread_create
Ltmp28:
	movq	-24(%rbp), %rdi
	xorl	%esi, %esi
	callq	_pthread_join
Ltmp29:
	movq	-32(%rbp), %rdi
	xorl	%esi, %esi
	callq	_pthread_join
Ltmp30:
	callq	_mach_absolute_time
Ltmp31:
	movq	%rax, %rsi
	subq	%rbx, %rsi
Ltmp32:
	leaq	L_.str1(%rip), %rdi
	xorb	%al, %al
Ltmp33:
	callq	_printf
	xorl	%edi, %edi
Ltmp34:
	callq	_exit
Ltmp35:
Lfunc_end2:
Leh_func_end2:

	.section	__TEXT,__cstring,cstring_literals
L_.str:
	.asciz	 "starting testing ..."

L_.str1:
	.asciz	 "All done in %llu exit now\n"

L_.str2:
	.asciz	 "starting thread %ld ...\n"

L_.str3:
	.asciz	 "result %llu test done in %llu for thread %ld\n"

	.section	__TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame0:
Lsection_eh_frame:
Leh_frame_common:
Lset0 = Leh_frame_common_end-Leh_frame_common_begin
	.long	Lset0
Leh_frame_common_begin:
	.long	0
	.byte	1
	.asciz	 "zR"
	.byte	1
	.byte	120
	.byte	16
	.byte	1
	.byte	16
	.byte	12
	.byte	7
	.byte	8
	.byte	144
	.byte	1
	.align	3
Leh_frame_common_end:
	.globl	_Inc.eh
.private_extern _Inc.eh
_Inc.eh:
Lset1 = Leh_frame_end1-Leh_frame_begin1
	.long	Lset1
Leh_frame_begin1:
Lset2 = Leh_frame_begin1-Leh_frame_common
	.long	Lset2
Ltmp36:
	.quad	Leh_func_begin1-Ltmp36
Lset3 = Leh_func_end1-Leh_func_begin1
	.quad	Lset3
	.byte	0
	.byte	4
Lset4 = Ltmp0-Leh_func_begin1
	.long	Lset4
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset5 = Ltmp1-Ltmp0
	.long	Lset5
	.byte	13
	.byte	6
	.byte	4
Lset6 = Ltmp2-Ltmp1
	.long	Lset6
	.byte	131
	.byte	4
	.byte	142
	.byte	3
	.align	3
Leh_frame_end1:

	.globl	_main.eh
.private_extern _main.eh
_main.eh:
Lset7 = Leh_frame_end2-Leh_frame_begin2
	.long	Lset7
Leh_frame_begin2:
Lset8 = Leh_frame_begin2-Leh_frame_common
	.long	Lset8
Ltmp37:
	.quad	Leh_func_begin2-Ltmp37
Lset9 = Leh_func_end2-Leh_func_begin2
	.quad	Lset9
	.byte	0
	.byte	4
Lset10 = Ltmp19-Leh_func_begin2
	.long	Lset10
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset11 = Ltmp20-Ltmp19
	.long	Lset11
	.byte	13
	.byte	6
	.byte	4
Lset12 = Ltmp21-Ltmp20
	.long	Lset12
	.byte	131
	.byte	4
	.byte	142
	.byte	3
	.align	3
Leh_frame_end2:

	.section	__TEXT,__text,regular,pure_instructions
Ltext_end:
	.section	__DATA,__data
Ldata_end:
	.section	__TEXT,__text,regular,pure_instructions
Lsection_end1:
	.section	__DWARF,__debug_frame,regular,debug
Ldebug_frame_common:
Lset13 = Ldebug_frame_common_end-Ldebug_frame_common_begin
	.long	Lset13
Ldebug_frame_common_begin:
	.long	4294967295
	.byte	1
	.byte	0
	.byte	1
	.byte	120
	.byte	16
	.byte	12
	.byte	7
	.byte	8
	.byte	144
	.byte	1
	.align	2
Ldebug_frame_common_end:
Lset14 = Ldebug_frame_end1-Ldebug_frame_begin1
	.long	Lset14
Ldebug_frame_begin1:
Lset15 = Ldebug_frame_common-Lsection_debug_frame
	.long	Lset15
	.quad	Lfunc_begin1
Lset16 = Lfunc_end1-Lfunc_begin1
	.quad	Lset16
	.byte	4
Lset17 = Ltmp0-Lfunc_begin1
	.long	Lset17
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset18 = Ltmp1-Ltmp0
	.long	Lset18
	.byte	13
	.byte	6
	.byte	4
Lset19 = Ltmp2-Ltmp1
	.long	Lset19
	.byte	131
	.byte	4
	.byte	142
	.byte	3
	.align	2
Ldebug_frame_end1:
Lset20 = Ldebug_frame_end2-Ldebug_frame_begin2
	.long	Lset20
Ldebug_frame_begin2:
Lset21 = Ldebug_frame_common-Lsection_debug_frame
	.long	Lset21
	.quad	Lfunc_begin2
Lset22 = Lfunc_end2-Lfunc_begin2
	.quad	Lset22
	.byte	4
Lset23 = Ltmp19-Lfunc_begin2
	.long	Lset23
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset24 = Ltmp20-Ltmp19
	.long	Lset24
	.byte	13
	.byte	6
	.byte	4
Lset25 = Ltmp21-Ltmp20
	.long	Lset25
	.byte	131
	.byte	4
	.byte	142
	.byte	3
	.align	2
Ldebug_frame_end2:
	.section	__DWARF,__debug_info,regular,debug
Linfo_begin1:
	.long	780
	.short	2
Lset26 = Labbrev_begin-Lsection_abbrev
	.long	Lset26
	.byte	8
	.byte	1
	.ascii	 "4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2335.15.00)"
	.byte	0
	.byte	1
	.ascii	 "main.c"
	.byte	0
	.quad	0
	.long	0
	.ascii	 "/Users/guyvo/Documents/PerformanceTest/PerformanceTest"
	.byte	0
	.byte	1
	.byte	2
	.byte	8
	.byte	1
	.byte	0
	.byte	3
	.long	275
	.ascii	 "Inc"
	.byte	0
	.ascii	 "Inc"
	.byte	0
	.byte	1
	.byte	23
	.byte	1
	.long	151
	.byte	1
	.quad	Lfunc_begin1
	.quad	Lfunc_end1
	.byte	1
	.byte	86
	.byte	4
	.ascii	 "id"
	.byte	0
	.byte	1
	.byte	23
	.long	151
Lset27 = Ldebug_loc-Lsection_loc
	.long	Lset27
	.byte	5
	.long	0
	.byte	6
	.ascii	 "Count"
	.byte	0
	.byte	1
	.byte	26
	.long	466
	.byte	2
	.byte	145
	.byte	104
	.byte	7
	.ascii	 "start"
	.byte	0
	.byte	1
	.byte	25
	.long	466
	.byte	1
	.byte	94
	.quad	Ltmp11
	.byte	7
	.ascii	 "end"
	.byte	0
	.byte	1
	.byte	25
	.long	466
	.byte	1
	.byte	80
	.quad	Ltmp15
	.byte	0
	.byte	0
	.byte	8
	.byte	5
	.ascii	 "int"
	.byte	0
	.byte	4
	.byte	3
	.long	440
	.ascii	 "main"
	.byte	0
	.ascii	 "main"
	.byte	0
	.byte	1
	.byte	45
	.byte	1
	.long	275
	.byte	1
	.quad	Lfunc_begin2
	.quad	Lfunc_end2
	.byte	1
	.byte	86
	.byte	9
	.ascii	 "argc"
	.byte	0
	.byte	1
	.byte	44
	.long	275
	.byte	1
	.byte	85
	.byte	9
	.ascii	 "argv"
	.byte	0
	.byte	1
	.byte	44
	.long	506
	.byte	1
	.byte	84
	.byte	10
	.quad	Lfunc_begin2
	.quad	Ltmp35
	.byte	6
	.ascii	 "t1"
	.byte	0
	.byte	1
	.byte	46
	.long	762
	.byte	2
	.byte	145
	.byte	104
	.byte	6
	.ascii	 "t2"
	.byte	0
	.byte	1
	.byte	46
	.long	762
	.byte	2
	.byte	145
	.byte	96
	.byte	7
	.ascii	 "start"
	.byte	0
	.byte	1
	.byte	47
	.long	466
	.byte	1
	.byte	83
	.quad	Ltmp25
	.byte	7
	.ascii	 "end"
	.byte	0
	.byte	1
	.byte	47
	.long	466
	.byte	1
	.byte	80
	.quad	Ltmp32
	.byte	0
	.byte	0
	.byte	8
	.byte	7
	.ascii	 "long long unsigned int"
	.byte	0
	.byte	8
	.byte	11
	.long	440
	.ascii	 "uint64_t"
	.byte	0
	.byte	1
	.byte	59
	.byte	8
	.byte	6
	.ascii	 "char"
	.byte	0
	.byte	1
	.byte	12
	.long	482
	.byte	1
	.byte	1
	.byte	0
	.byte	13
	.long	490
	.byte	8
	.byte	1
	.byte	0
	.byte	13
	.long	498
	.byte	8
	.byte	1
	.byte	0
	.byte	8
	.byte	5
	.ascii	 "long int"
	.byte	0
	.byte	8
	.byte	14
	.long	538
	.byte	1
	.byte	15
	.long	151
	.byte	0
	.byte	13
	.long	526
	.byte	8
	.byte	1
	.byte	0
	.byte	16
	.long	637
	.ascii	 "__darwin_pthread_handler_rec"
	.byte	0
	.byte	24
	.byte	1
	.byte	59
	.byte	17
	.ascii	 "__routine"
	.byte	0
	.long	538
	.byte	1
	.byte	60
	.byte	2
	.byte	35
	.byte	0
	.byte	17
	.ascii	 "__arg"
	.byte	0
	.long	151
	.byte	1
	.byte	61
	.byte	2
	.byte	35
	.byte	8
	.byte	17
	.ascii	 "__next"
	.byte	0
	.long	637
	.byte	1
	.byte	62
	.byte	2
	.byte	35
	.byte	16
	.byte	0
	.byte	13
	.long	546
	.byte	8
	.byte	1
	.byte	0
	.byte	18
	.byte	4
	.byte	5
	.byte	19
	.long	665
	.long	482
	.byte	20
	.long	645
	.short	1167
	.byte	0
	.byte	21
	.long	754
	.ascii	 "_opaque_pthread_t"
	.byte	0
	.short	1184
	.byte	1
	.byte	72
	.byte	17
	.ascii	 "__sig"
	.byte	0
	.long	514
	.byte	1
	.byte	72
	.byte	2
	.byte	35
	.byte	0
	.byte	17
	.ascii	 "__cleanup_stack"
	.byte	0
	.long	637
	.byte	1
	.byte	72
	.byte	2
	.byte	35
	.byte	8
	.byte	17
	.ascii	 "__opaque"
	.byte	0
	.long	648
	.byte	1
	.byte	72
	.byte	2
	.byte	35
	.byte	16
	.byte	0
	.byte	13
	.long	665
	.byte	8
	.byte	1
	.byte	0
	.byte	11
	.long	754
	.ascii	 "pthread_t"
	.byte	0
	.byte	1
	.byte	116
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
Linfo_end1:
	.section	__DWARF,__debug_abbrev,regular,debug
Labbrev_begin:
	.byte	1
	.byte	17
	.byte	1
	.byte	37
	.byte	8
	.byte	19
	.byte	11
	.byte	3
	.byte	8
	.byte	82
	.byte	1
	.byte	16
	.byte	6
	.byte	27
	.byte	8
	.byte	225
	.byte	127
	.byte	12
	.byte	0
	.byte	0
	.byte	2
	.byte	15
	.byte	0
	.byte	11
	.byte	11
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	0
	.byte	0
	.byte	3
	.byte	46
	.byte	1
	.byte	1
	.byte	19
	.byte	3
	.byte	8
	.byte	135
	.byte	64
	.byte	8
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	39
	.byte	12
	.byte	73
	.byte	19
	.byte	63
	.byte	12
	.byte	17
	.byte	1
	.byte	18
	.byte	1
	.byte	64
	.byte	10
	.byte	0
	.byte	0
	.byte	4
	.byte	5
	.byte	0
	.byte	3
	.byte	8
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	73
	.byte	19
	.byte	2
	.byte	6
	.byte	0
	.byte	0
	.byte	5
	.byte	11
	.byte	1
	.byte	85
	.byte	6
	.byte	0
	.byte	0
	.byte	6
	.byte	52
	.byte	0
	.byte	3
	.byte	8
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	73
	.byte	19
	.byte	2
	.byte	10
	.byte	0
	.byte	0
	.byte	7
	.byte	52
	.byte	0
	.byte	3
	.byte	8
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	73
	.byte	19
	.byte	2
	.byte	10
	.byte	44
	.byte	1
	.byte	0
	.byte	0
	.byte	8
	.byte	36
	.byte	0
	.byte	62
	.byte	11
	.byte	3
	.byte	8
	.byte	11
	.byte	11
	.byte	0
	.byte	0
	.byte	9
	.byte	5
	.byte	0
	.byte	3
	.byte	8
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	73
	.byte	19
	.byte	2
	.byte	10
	.byte	0
	.byte	0
	.byte	10
	.byte	11
	.byte	1
	.byte	17
	.byte	1
	.byte	18
	.byte	1
	.byte	0
	.byte	0
	.byte	11
	.byte	22
	.byte	0
	.byte	73
	.byte	19
	.byte	3
	.byte	8
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	0
	.byte	0
	.byte	12
	.byte	38
	.byte	0
	.byte	73
	.byte	19
	.byte	11
	.byte	11
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	0
	.byte	0
	.byte	13
	.byte	15
	.byte	0
	.byte	73
	.byte	19
	.byte	11
	.byte	11
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	0
	.byte	0
	.byte	14
	.byte	21
	.byte	1
	.byte	1
	.byte	19
	.byte	39
	.byte	12
	.byte	0
	.byte	0
	.byte	15
	.byte	5
	.byte	0
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	16
	.byte	19
	.byte	1
	.byte	1
	.byte	19
	.byte	3
	.byte	8
	.byte	11
	.byte	11
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	0
	.byte	0
	.byte	17
	.byte	13
	.byte	0
	.byte	3
	.byte	8
	.byte	73
	.byte	19
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	56
	.byte	10
	.byte	0
	.byte	0
	.byte	18
	.byte	36
	.byte	0
	.byte	11
	.byte	11
	.byte	62
	.byte	11
	.byte	0
	.byte	0
	.byte	19
	.byte	1
	.byte	1
	.byte	1
	.byte	19
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	20
	.byte	33
	.byte	0
	.byte	73
	.byte	19
	.byte	47
	.byte	5
	.byte	0
	.byte	0
	.byte	21
	.byte	19
	.byte	1
	.byte	1
	.byte	19
	.byte	3
	.byte	8
	.byte	11
	.byte	5
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	0
	.byte	0
	.byte	0
Labbrev_end:
	.section	__DWARF,__debug_line,regular,debug
Lset28 = Lline_end-Lline_begin
	.long	Lset28
Lline_begin:
	.short	2
Lset29 = Lline_prolog_end-Lline_prolog_begin
	.long	Lset29
Lline_prolog_begin:
	.byte	1
	.byte	1
	.byte	246
	.byte	245
	.byte	10
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.asciz	 "/Users/guyvo/Documents/PerformanceTest/PerformanceTest"
	.byte	0
	.asciz	 "main.c"
	.byte	1
	.byte	0
	.byte	0
	.byte	0
Lline_prolog_end:
	.byte	0
	.byte	9
	.byte	2
	.quad	Ltmp3
	.byte	42
	.byte	0
	.byte	9
	.byte	2
	.quad	Ltmp4
	.byte	23
	.byte	0
	.byte	9
	.byte	2
	.quad	Ltmp6
	.byte	1
	.byte	0
	.byte	9
	.byte	2
	.quad	Ltmp8
	.byte	17
	.byte	0
	.byte	9
	.byte	2
	.quad	Ltmp9
	.byte	25
	.byte	0
	.byte	9
	.byte	2
	.quad	Ltmp10
	.byte	22
	.byte	0
	.byte	9
	.byte	2
	.quad	Ltmp11
	.byte	1
	.byte	0
	.byte	9
	.byte	2
	.quad	Ltmp12
	.byte	24
	.byte	0
	.byte	9
	.byte	2
	.quad	Ltmp13
	.byte	22
	.byte	0
	.byte	9
	.byte	2
	.quad	Ltmp14
	.byte	22
	.byte	0
	.byte	9
	.byte	2
	.quad	Ltmp15
	.byte	18
	.byte	0
	.byte	9
	.byte	2
	.quad	Ltmp16
	.byte	22
	.byte	0
	.byte	9
	.byte	2
	.quad	Ltmp17
	.byte	22
	.byte	0
	.byte	9
	.byte	2
	.quad	Ltmp22
	.byte	25
	.byte	0
	.byte	9
	.byte	2
	.quad	Ltmp23
	.byte	25
	.byte	0
	.byte	9
	.byte	2
	.quad	Ltmp24
	.byte	22
	.byte	0
	.byte	9
	.byte	2
	.quad	Ltmp25
	.byte	1
	.byte	0
	.byte	9
	.byte	2
	.quad	Ltmp26
	.byte	21
	.byte	0
	.byte	9
	.byte	2
	.quad	Ltmp27
	.byte	21
	.byte	0
	.byte	9
	.byte	2
	.quad	Ltmp28
	.byte	22
	.byte	0
	.byte	9
	.byte	2
	.quad	Ltmp29
	.byte	21
	.byte	0
	.byte	9
	.byte	2
	.quad	Ltmp30
	.byte	22
	.byte	0
	.byte	9
	.byte	2
	.quad	Ltmp31
	.byte	22
	.byte	0
	.byte	9
	.byte	2
	.quad	Ltmp32
	.byte	18
	.byte	0
	.byte	9
	.byte	2
	.quad	Ltmp33
	.byte	22
	.byte	0
	.byte	9
	.byte	2
	.quad	Ltmp34
	.byte	32
	.byte	0
	.byte	9
	.byte	2
	.quad	Lsection_end1
	.byte	0
	.byte	1
	.byte	1
Lline_end:
	.section	__DWARF,__debug_pubnames,regular,debug
Lset30 = Lpubnames_end1-Lpubnames_begin1
	.long	Lset30
Lpubnames_begin1:
	.short	2
Lset31 = Linfo_begin1-Lsection_info
	.long	Lset31
Lset32 = Linfo_end1-Linfo_begin1
	.long	Lset32
	.long	282
	.asciz	 "main"
	.long	155
	.asciz	 "Inc"
	.long	0
Lpubnames_end1:
	.section	__DWARF,__debug_pubtypes,regular,debug
Lset33 = Lpubtypes_end1-Lpubtypes_begin1
	.long	Lset33
Lpubtypes_begin1:
	.short	2
Lset34 = Linfo_begin1-Lsection_info
	.long	Lset34
Lset35 = Linfo_end1-Linfo_begin1
	.long	Lset35
	.long	0
Lpubtypes_end1:
	.section	__DWARF,__debug_loc,regular,debug
Ldebug_loc:
	.quad	Ltmp4
	.quad	Ltmp8
	.short	1
	.byte	85
	.quad	Ltmp8
	.quad	Lfunc_end1
	.short	1
	.byte	83
	.quad	0
	.quad	0
Ldebug_loc3:
	.section	__DWARF,__debug_aranges,regular,debug
	.section	__DWARF,__debug_ranges,regular,debug
	.quad	Ltmp4
	.quad	Ltmp5
	.quad	Ltmp6
	.quad	Ltmp7
	.quad	Ltmp8
	.quad	Ltmp18
	.quad	0
	.quad	0
	.section	__DWARF,__debug_macinfo,regular,debug
	.section	__DWARF,__debug_inlined,regular,debug
Lset36 = Ldebug_inlined_end1-Ldebug_inlined_begin1
	.long	Lset36
Ldebug_inlined_begin1:
	.short	2
	.byte	8
Ldebug_inlined_end1:

.subsections_via_symbols
