	.text
	.def	 @feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"main.c"
	.def	 sprintf;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,sprintf
	.globl	sprintf                         # -- Begin function sprintf
	.p2align	4, 0x90
sprintf:                                # @sprintf
.seh_proc sprintf
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%r9, 104(%rsp)
	movq	%r8, 96(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%rcx, 56(%rsp)
	leaq	96(%rsp), %rax
	movq	%rax, 40(%rsp)
	movq	40(%rsp), %r9
	movq	64(%rsp), %rdx
	movq	56(%rsp), %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	callq	_vsprintf_l
	movl	%eax, 52(%rsp)
	movl	52(%rsp), %eax
	addq	$72, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	 vsprintf;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,vsprintf
	.globl	vsprintf                        # -- Begin function vsprintf
	.p2align	4, 0x90
vsprintf:                               # @vsprintf
.seh_proc vsprintf
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%r8, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%rcx, 48(%rsp)
	movq	64(%rsp), %rax
	movq	56(%rsp), %r8
	movq	48(%rsp), %rcx
	movq	$-1, %rdx
	xorl	%r9d, %r9d
                                        # kill: def $r9 killed $r9d
	movq	%rax, 32(%rsp)
	callq	_vsnprintf_l
	nop
	addq	$72, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	 _snprintf;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_snprintf
	.globl	_snprintf                       # -- Begin function _snprintf
	.p2align	4, 0x90
_snprintf:                              # @_snprintf
.seh_proc _snprintf
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%r9, 104(%rsp)
	movq	%r8, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%rcx, 48(%rsp)
	leaq	104(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	32(%rsp), %r9
	movq	64(%rsp), %r8
	movq	56(%rsp), %rdx
	movq	48(%rsp), %rcx
	callq	_vsnprintf
	movl	%eax, 44(%rsp)
	movl	44(%rsp), %eax
	addq	$72, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	 _vsnprintf;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_vsnprintf
	.globl	_vsnprintf                      # -- Begin function _vsnprintf
	.p2align	4, 0x90
_vsnprintf:                             # @_vsnprintf
.seh_proc _vsnprintf
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%r9, 64(%rsp)
	movq	%r8, 56(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rcx, 40(%rsp)
	movq	64(%rsp), %rax
	movq	56(%rsp), %r8
	movq	48(%rsp), %rdx
	movq	40(%rsp), %rcx
	xorl	%r9d, %r9d
                                        # kill: def $r9 killed $r9d
	movq	%rax, 32(%rsp)
	callq	_vsnprintf_l
	nop
	addq	$72, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	 main;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
main:                                   # @main
.seh_proc main
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movl	$0, 52(%rsp)
	leaq	"??_C@_0BF@PNKAKABK@Enter?5first?5number?3?5?$AA@"(%rip), %rcx
	callq	printf
	leaq	"??_C@_02DPKJAMEF@?$CFd?$AA@"(%rip), %rcx
	leaq	48(%rsp), %rdx
	callq	scanf
	leaq	"??_C@_0BG@JDAKAGEJ@Enter?5second?5number?3?5?$AA@"(%rip), %rcx
	callq	printf
	leaq	"??_C@_02DPKJAMEF@?$CFd?$AA@"(%rip), %rcx
	leaq	44(%rsp), %rdx
	callq	scanf
	movl	48(%rsp), %eax
	cmpl	44(%rsp), %eax
	jle	.LBB4_2
# %bb.1:
	movl	48(%rsp), %edx
	leaq	"??_C@_0BA@LHOFAHLF@?$CFd?5is?5greater?4?6?$AA@"(%rip), %rcx
	callq	printf
	jmp	.LBB4_6
.LBB4_2:
	movl	48(%rsp), %eax
	cmpl	44(%rsp), %eax
	jne	.LBB4_4
# %bb.3:
	movl	44(%rsp), %r8d
	movl	48(%rsp), %edx
	leaq	"??_C@_0BE@FOFCFJDK@?$CFd?5is?5equal?5to?5?$CFd?4?6?$AA@"(%rip), %rcx
	callq	printf
	jmp	.LBB4_5
.LBB4_4:
	movl	44(%rsp), %edx
	leaq	"??_C@_0BA@LHOFAHLF@?$CFd?5is?5greater?4?6?$AA@"(%rip), %rcx
	callq	printf
.LBB4_5:
	jmp	.LBB4_6
.LBB4_6:
	xorl	%eax, %eax
	addq	$56, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	 printf;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,printf
	.globl	printf                          # -- Begin function printf
	.p2align	4, 0x90
printf:                                 # @printf
.seh_proc printf
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%r9, 104(%rsp)
	movq	%r8, 96(%rsp)
	movq	%rdx, 88(%rsp)
	movq	%rcx, 64(%rsp)
	leaq	88(%rsp), %rax
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	64(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movl	$1, %ecx
	callq	__acrt_iob_func
	movq	32(%rsp), %rdx                  # 8-byte Reload
	movq	40(%rsp), %r9                   # 8-byte Reload
	movq	%rax, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	callq	_vfprintf_l
	movl	%eax, 60(%rsp)
	movl	60(%rsp), %eax
	addq	$72, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	 scanf;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,scanf
	.globl	scanf                           # -- Begin function scanf
	.p2align	4, 0x90
scanf:                                  # @scanf
.seh_proc scanf
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%r9, 120(%rsp)
	movq	%r8, 112(%rsp)
	movq	%rdx, 104(%rsp)
	movq	%rcx, 80(%rsp)
	leaq	104(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	80(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	xorl	%ecx, %ecx
	movl	%ecx, 60(%rsp)                  # 4-byte Spill
	callq	__acrt_iob_func
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movq	48(%rsp), %r9                   # 8-byte Reload
	movq	%rax, %rcx
	movl	60(%rsp), %eax                  # 4-byte Reload
	movl	%eax, %r8d
	callq	_vfscanf_l
	movl	%eax, 76(%rsp)
	movl	76(%rsp), %eax
	addq	$88, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	 _vsprintf_l;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_vsprintf_l
	.globl	_vsprintf_l                     # -- Begin function _vsprintf_l
	.p2align	4, 0x90
_vsprintf_l:                            # @_vsprintf_l
.seh_proc _vsprintf_l
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%r9, 64(%rsp)
	movq	%r8, 56(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rcx, 40(%rsp)
	movq	64(%rsp), %rax
	movq	56(%rsp), %r9
	movq	48(%rsp), %r8
	movq	40(%rsp), %rcx
	movq	$-1, %rdx
	movq	%rax, 32(%rsp)
	callq	_vsnprintf_l
	nop
	addq	$72, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	 _vsnprintf_l;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_vsnprintf_l
	.globl	_vsnprintf_l                    # -- Begin function _vsnprintf_l
	.p2align	4, 0x90
_vsnprintf_l:                           # @_vsnprintf_l
.seh_proc _vsnprintf_l
# %bb.0:
	subq	$136, %rsp
	.seh_stackalloc 136
	.seh_endprologue
	movq	176(%rsp), %rax
	movq	%r9, 128(%rsp)
	movq	%r8, 120(%rsp)
	movq	%rdx, 112(%rsp)
	movq	%rcx, 104(%rsp)
	movq	176(%rsp), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movq	128(%rsp), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movq	120(%rsp), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	112(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	__local_stdio_printf_options
	movq	56(%rsp), %rdx                  # 8-byte Reload
	movq	64(%rsp), %r8                   # 8-byte Reload
	movq	72(%rsp), %r9                   # 8-byte Reload
	movq	80(%rsp), %r10                  # 8-byte Reload
	movq	%rax, %rcx
	movq	88(%rsp), %rax                  # 8-byte Reload
	movq	(%rcx), %rcx
	orq	$1, %rcx
	movq	%r10, 32(%rsp)
	movq	%rax, 40(%rsp)
	callq	__stdio_common_vsprintf
	movl	%eax, 100(%rsp)
	cmpl	$0, 100(%rsp)
	jge	.LBB8_2
# %bb.1:
	movl	$4294967295, %eax               # imm = 0xFFFFFFFF
	movl	%eax, 52(%rsp)                  # 4-byte Spill
	jmp	.LBB8_3
.LBB8_2:
	movl	100(%rsp), %eax
	movl	%eax, 52(%rsp)                  # 4-byte Spill
.LBB8_3:
	movl	52(%rsp), %eax                  # 4-byte Reload
	addq	$136, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	 __local_stdio_printf_options;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,__local_stdio_printf_options
	.globl	__local_stdio_printf_options    # -- Begin function __local_stdio_printf_options
	.p2align	4, 0x90
__local_stdio_printf_options:           # @__local_stdio_printf_options
# %bb.0:
	leaq	__local_stdio_printf_options._OptionsStorage(%rip), %rax
	retq
                                        # -- End function
	.def	 _vfprintf_l;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_vfprintf_l
	.globl	_vfprintf_l                     # -- Begin function _vfprintf_l
	.p2align	4, 0x90
_vfprintf_l:                            # @_vfprintf_l
.seh_proc _vfprintf_l
# %bb.0:
	subq	$104, %rsp
	.seh_stackalloc 104
	.seh_endprologue
	movq	%r9, 96(%rsp)
	movq	%r8, 88(%rsp)
	movq	%rdx, 80(%rsp)
	movq	%rcx, 72(%rsp)
	movq	96(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	88(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	80(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	72(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	__local_stdio_printf_options
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movq	48(%rsp), %r8                   # 8-byte Reload
	movq	56(%rsp), %r9                   # 8-byte Reload
	movq	%rax, %rcx
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	(%rcx), %rcx
	movq	%rax, 32(%rsp)
	callq	__stdio_common_vfprintf
	nop
	addq	$104, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	 _vfscanf_l;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_vfscanf_l
	.globl	_vfscanf_l                      # -- Begin function _vfscanf_l
	.p2align	4, 0x90
_vfscanf_l:                             # @_vfscanf_l
.seh_proc _vfscanf_l
# %bb.0:
	subq	$104, %rsp
	.seh_stackalloc 104
	.seh_endprologue
	movq	%r9, 96(%rsp)
	movq	%r8, 88(%rsp)
	movq	%rdx, 80(%rsp)
	movq	%rcx, 72(%rsp)
	movq	96(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	88(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	80(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	72(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	__local_stdio_scanf_options
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movq	48(%rsp), %r8                   # 8-byte Reload
	movq	56(%rsp), %r9                   # 8-byte Reload
	movq	%rax, %rcx
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	(%rcx), %rcx
	movq	%rax, 32(%rsp)
	callq	__stdio_common_vfscanf
	nop
	addq	$104, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	 __local_stdio_scanf_options;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,__local_stdio_scanf_options
	.globl	__local_stdio_scanf_options     # -- Begin function __local_stdio_scanf_options
	.p2align	4, 0x90
__local_stdio_scanf_options:            # @__local_stdio_scanf_options
# %bb.0:
	leaq	__local_stdio_scanf_options._OptionsStorage(%rip), %rax
	retq
                                        # -- End function
	.section	.rdata,"dr",discard,"??_C@_0BF@PNKAKABK@Enter?5first?5number?3?5?$AA@"
	.globl	"??_C@_0BF@PNKAKABK@Enter?5first?5number?3?5?$AA@" # @"??_C@_0BF@PNKAKABK@Enter?5first?5number?3?5?$AA@"
"??_C@_0BF@PNKAKABK@Enter?5first?5number?3?5?$AA@":
	.asciz	"Enter first number: "

	.section	.rdata,"dr",discard,"??_C@_02DPKJAMEF@?$CFd?$AA@"
	.globl	"??_C@_02DPKJAMEF@?$CFd?$AA@"   # @"??_C@_02DPKJAMEF@?$CFd?$AA@"
"??_C@_02DPKJAMEF@?$CFd?$AA@":
	.asciz	"%d"

	.section	.rdata,"dr",discard,"??_C@_0BG@JDAKAGEJ@Enter?5second?5number?3?5?$AA@"
	.globl	"??_C@_0BG@JDAKAGEJ@Enter?5second?5number?3?5?$AA@" # @"??_C@_0BG@JDAKAGEJ@Enter?5second?5number?3?5?$AA@"
"??_C@_0BG@JDAKAGEJ@Enter?5second?5number?3?5?$AA@":
	.asciz	"Enter second number: "

	.section	.rdata,"dr",discard,"??_C@_0BA@LHOFAHLF@?$CFd?5is?5greater?4?6?$AA@"
	.globl	"??_C@_0BA@LHOFAHLF@?$CFd?5is?5greater?4?6?$AA@" # @"??_C@_0BA@LHOFAHLF@?$CFd?5is?5greater?4?6?$AA@"
"??_C@_0BA@LHOFAHLF@?$CFd?5is?5greater?4?6?$AA@":
	.asciz	"%d is greater.\n"

	.section	.rdata,"dr",discard,"??_C@_0BE@FOFCFJDK@?$CFd?5is?5equal?5to?5?$CFd?4?6?$AA@"
	.globl	"??_C@_0BE@FOFCFJDK@?$CFd?5is?5equal?5to?5?$CFd?4?6?$AA@" # @"??_C@_0BE@FOFCFJDK@?$CFd?5is?5equal?5to?5?$CFd?4?6?$AA@"
"??_C@_0BE@FOFCFJDK@?$CFd?5is?5equal?5to?5?$CFd?4?6?$AA@":
	.asciz	"%d is equal to %d.\n"

	.lcomm	__local_stdio_printf_options._OptionsStorage,8,8 # @__local_stdio_printf_options._OptionsStorage
	.lcomm	__local_stdio_scanf_options._OptionsStorage,8,8 # @__local_stdio_scanf_options._OptionsStorage
	.addrsig
	.addrsig_sym _vsnprintf
	.addrsig_sym printf
	.addrsig_sym scanf
	.addrsig_sym _vsprintf_l
	.addrsig_sym _vsnprintf_l
	.addrsig_sym __stdio_common_vsprintf
	.addrsig_sym __local_stdio_printf_options
	.addrsig_sym _vfprintf_l
	.addrsig_sym __acrt_iob_func
	.addrsig_sym __stdio_common_vfprintf
	.addrsig_sym _vfscanf_l
	.addrsig_sym __stdio_common_vfscanf
	.addrsig_sym __local_stdio_scanf_options
	.addrsig_sym __local_stdio_printf_options._OptionsStorage
	.addrsig_sym __local_stdio_scanf_options._OptionsStorage
