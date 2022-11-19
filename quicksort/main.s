	.file	"main.c"
	.text
	.section	.rodata
	.align 4
	.type	_ZL6CUTOFF, @object
	.size	_ZL6CUTOFF, 4
_ZL6CUTOFF:
	.long	2
.LC0:
	.string	"\nTableau initial"
.LC1:
	.string	"\nQuicksort - C"
.LC2:
	.string	"\nQuicksort - ASM"
	.text
	.globl	main
	.type	main, @function
main:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movl	$3, -48(%rbp)
	movl	$7, -44(%rbp)
	movl	$8, -40(%rbp)
	movl	$5, -36(%rbp)
	movl	$2, -32(%rbp)
	movl	$1, -28(%rbp)
	movl	$9, -24(%rbp)
	movl	$5, -20(%rbp)
	movl	$4, -16(%rbp)
	movl	$3, -96(%rbp)
	movl	$7, -92(%rbp)
	movl	$8, -88(%rbp)
	movl	$5, -84(%rbp)
	movl	$2, -80(%rbp)
	movl	$1, -76(%rbp)
	movl	$9, -72(%rbp)
	movl	$5, -68(%rbp)
	movl	$4, -64(%rbp)
	movl	$.LC0, %edi
	call	puts
	leaq	-48(%rbp), %rax
	movl	$9, %esi
	movq	%rax, %rdi
	call	_Z6printTPii
	movl	$.LC1, %edi
	call	puts
	leaq	-48(%rbp), %rax
	movl	$8, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	_Z9quicksortPiii
	leaq	-48(%rbp), %rax
	movl	$9, %esi
	movq	%rax, %rdi
	call	_Z5finalPii
	leaq	-48(%rbp), %rax
	movl	$9, %esi
	movq	%rax, %rdi
	call	_Z6printTPii
	movl	$.LC2, %edi
	call	puts
	leaq	-96(%rbp), %rax
	movl	$8, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	_Z11quicksort_sPiii
	leaq	-96(%rbp), %rax
	movl	$9, %esi
	movq	%rax, %rdi
	call	_Z5finalPii
	leaq	-96(%rbp), %rax
	movl	$9, %esi
	movq	%rax, %rdi
	call	_Z6printTPii
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	main, .-main
	.globl	_Z5finalPii
	.type	_Z5finalPii, @function
_Z5finalPii:
.LFB18:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L4
.L6:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.L5
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-4(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jle	.L5
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	-4(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_Z8swapRefsPiii
.L5:
	addl	$1, -4(%rbp)
.L4:
	movl	-28(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -4(%rbp)
	jl	.L6
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	_Z5finalPii, .-_Z5finalPii
	.section	.rodata
.LC3:
	.string	"[%d, "
.LC4:
	.string	"%d]\n"
.LC5:
	.string	"%d, "
	.text
	.globl	_Z6printTPii
	.type	_Z6printTPii, @function
_Z6printTPii:
.LFB19:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L8
.L12:
	cmpl	$0, -4(%rbp)
	jne	.L9
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	jmp	.L10
.L9:
	movl	-28(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -4(%rbp)
	jne	.L11
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
	jmp	.L10
.L11:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
.L10:
	addl	$1, -4(%rbp)
.L8:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L12
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	_Z6printTPii, .-_Z6printTPii
	.globl	_Z9quicksortPiii
	.type	_Z9quicksortPiii, @function
_Z9quicksortPiii:
.LFB20:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	-28(%rbp), %eax
	addl	$1, %eax
	cmpl	%eax, -32(%rbp)
	jle	.L22
	movl	-32(%rbp), %edx
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_Z13medianOfThreePiii
	movl	%eax, -12(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-32(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -8(%rbp)
.L21:
	nop
.L16:
	movq	-24(%rbp), %rax
	addl	$1, -4(%rbp)
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -12(%rbp)
	setg	%al
	testb	%al, %al
	jne	.L16
	nop
.L17:
	movq	-24(%rbp), %rax
	subl	$1, -8(%rbp)
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -12(%rbp)
	setl	%al
	testb	%al, %al
	jne	.L17
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.L23
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_Z8swapRefsPiii
	jmp	.L21
.L23:
	nop
	movl	-32(%rbp), %eax
	leal	-1(%rax), %edx
	movl	-4(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_Z8swapRefsPiii
	movl	-4(%rbp), %eax
	leal	-1(%rax), %edx
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_Z9quicksortPiii
	movl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	movl	-32(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_Z9quicksortPiii
	jmp	.L13
.L22:
	nop
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	_Z9quicksortPiii, .-_Z9quicksortPiii
	.globl	_Z8swapRefsPiii
	.type	_Z8swapRefsPiii, @function
_Z8swapRefsPiii:
.LFB21:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, (%rdx)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	_Z8swapRefsPiii, .-_Z8swapRefsPiii
	.globl	_Z13medianOfThreePiii
	.type	_Z13medianOfThreePiii, @function
_Z13medianOfThreePiii:
.LFB22:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jge	.L26
	movl	-4(%rbp), %edx
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_Z8swapRefsPiii
.L26:
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jge	.L27
	movl	-32(%rbp), %edx
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_Z8swapRefsPiii
.L27:
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jge	.L28
	movl	-32(%rbp), %edx
	movl	-4(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_Z8swapRefsPiii
.L28:
	movl	-32(%rbp), %eax
	leal	-1(%rax), %edx
	movl	-4(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_Z8swapRefsPiii
	movl	-32(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	_Z13medianOfThreePiii, .-_Z13medianOfThreePiii
	.ident	"GCC: (GNU) 12.2.1 20220819 (Red Hat 12.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
