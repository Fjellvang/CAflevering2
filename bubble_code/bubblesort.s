	.file	"bubblesort.c"
	.text
	.globl	bubblesort
	.type	bubblesort, @function
bubblesort:
.LFB23:
	.cfi_startproc
	movl	$0, %r11d
	jmp	.L2
.L4:
	leaq	(%rsi,%rax,8), %r8
	movq	(%r8), %rcx
	leaq	8(%rsi,%rax,8), %rdx
	movq	(%rdx), %r9
	cmpq	%r9, %rcx
	jle	.L3
	movq	%r9, (%r8)
	movq	%rcx, (%rdx)
.L3:
	addq	$1, %rax
	jmp	.L5
.L6:
	movl	$0, %eax
.L5:
	cmpq	%r10, %rax
	jl	.L4
	addq	$1, %r11
.L2:
	leaq	-1(%rdi), %r10
	cmpq	%r10, %r11
	jl	.L6
	movl	$5, %eax
	ret
	.cfi_endproc
.LFE23:
	.size	bubblesort, .-bubblesort
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.2) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
