	.file	"1-last_digit.c"
	.text
	.section	.rodata
.LC0:
	.string	"Last digit of %d is %d an is"
.LC1:
	.string	"grater than 5"
.LC2:
	.string	"0"
.LC3:
	.string	"less than 6 and not 0"
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, %edi
	call	time@PLT
	movl	%eax, %edi
	call	srand@PLT
	call	rand@PLT
	subl	$1073741823, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %edx
	movslq	%edx, %rax
	imulq	$1717986919, %rax, %rax
	shrq	$32, %rax
	movl	%eax, %ecx
	sarl	$2, %ecx
	movl	%edx, %eax
	sarl	$31, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	%eax, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	cmpl	$5, -4(%rbp)
	jle	.L2
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
	jmp	.L3
.L2:
	cmpl	$0, -4(%rbp)
	jne	.L4
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	jmp	.L3
.L4:
	cmpl	$5, -4(%rbp)
	jg	.L3
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
.L3:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
