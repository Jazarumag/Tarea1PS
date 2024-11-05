	.file	"main.c"
	.text
	.section	.rodata
.LC0:
	.string	"Ingreso exitoso al sistema"
	.align 8
.LC1:
	.string	"Ingreso fallido usuario/clave err\303\263neo"
.LC2:
	.string	"Tri\303\241ngulo"
.LC3:
	.string	"Paralelogramo"
.LC4:
	.string	"Cuadrado"
.LC5:
	.string	"Rect\303\241ngulo"
.LC6:
	.string	"Rombo"
.LC7:
	.string	"Trapecio"
.LC8:
	.string	"C\303\255rculo"
.LC9:
	.string	"Pol\303\255gono Regular"
.LC10:
	.string	"Cubo"
.LC11:
	.string	"Cuboide"
.LC12:
	.string	"Cilindro"
.LC13:
	.string	"Esfera"
.LC14:
	.string	"Cono"
.LC15:
	.string	"Salida exitosa"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -132(%rbp)
	movl	$1, -136(%rbp)
	movl	$0, %eax
	call	pedir_user@PLT
	movq	%rax, %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	movl	$0, %eax
	call	pedir_con@PLT
	movq	%rax, %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	leaq	-64(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	validar@PLT
	testl	%eax, %eax
	je	.L2
	leaq	-128(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	bitacora@PLT
	jmp	.L5
.L2:
	leaq	-128(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	bitacora@PLT
	movl	$0, %eax
	jmp	.L4
.L23:
	movl	$0, %eax
	call	mostrar_menu_figuras@PLT
	movl	$0, %eax
	call	pedir_opcion@PLT
	movl	%eax, -132(%rbp)
	cmpl	$14, -132(%rbp)
	ja	.L6
	movl	-132(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L8(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L8(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L8:
	.long	.L6-.L8
	.long	.L21-.L8
	.long	.L20-.L8
	.long	.L19-.L8
	.long	.L18-.L8
	.long	.L17-.L8
	.long	.L16-.L8
	.long	.L15-.L8
	.long	.L14-.L8
	.long	.L13-.L8
	.long	.L12-.L8
	.long	.L11-.L8
	.long	.L10-.L8
	.long	.L9-.L8
	.long	.L7-.L8
	.text
.L21:
	movl	$0, %eax
	call	triangulo@PLT
	leaq	-128(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	bitacora@PLT
	jmp	.L5
.L20:
	movl	$0, %eax
	call	paralelogramo@PLT
	leaq	-128(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	bitacora@PLT
	jmp	.L5
.L19:
	movl	$0, %eax
	call	cuadrado@PLT
	leaq	-128(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	bitacora@PLT
	jmp	.L5
.L18:
	movl	$0, %eax
	call	rectangulo@PLT
	leaq	-128(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	bitacora@PLT
	jmp	.L5
.L17:
	movl	$0, %eax
	call	rombo@PLT
	leaq	-128(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	bitacora@PLT
	jmp	.L5
.L16:
	movl	$0, %eax
	call	trapecio@PLT
	leaq	-128(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	bitacora@PLT
	jmp	.L5
.L15:
	movl	$0, %eax
	call	circulo@PLT
	leaq	-128(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	bitacora@PLT
	jmp	.L5
.L14:
	movl	$0, %eax
	call	poligono_regular@PLT
	leaq	-128(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	bitacora@PLT
	jmp	.L5
.L13:
	movl	$0, %eax
	call	cubo@PLT
	leaq	-128(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	bitacora@PLT
	jmp	.L5
.L12:
	movl	$0, %eax
	call	cuboide@PLT
	leaq	-128(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	bitacora@PLT
	jmp	.L5
.L11:
	movl	$0, %eax
	call	cilindro@PLT
	leaq	-128(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	bitacora@PLT
	jmp	.L5
.L10:
	movl	$0, %eax
	call	esfera@PLT
	leaq	-128(%rbp), %rax
	leaq	.LC13(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	bitacora@PLT
	jmp	.L5
.L9:
	movl	$0, %eax
	call	cono@PLT
	leaq	-128(%rbp), %rax
	leaq	.LC14(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	bitacora@PLT
	jmp	.L5
.L7:
	movl	$0, -136(%rbp)
	leaq	-128(%rbp), %rax
	leaq	.LC15(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	bitacora@PLT
	jmp	.L5
.L6:
	movl	$0, %eax
	call	repito@PLT
	nop
.L5:
	cmpl	$0, -136(%rbp)
	jne	.L23
	movl	$0, %eax
.L4:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L24
	call	__stack_chk_fail@PLT
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.2.0-23ubuntu4) 13.2.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
