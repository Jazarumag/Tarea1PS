	.file	"datos.c"
	.text
	.section	.rodata
.LC0:
	.string	"Ingrese su usuario: "
.LC1:
	.string	"%s"
	.text
	.globl	pedir_user
	.type	pedir_user, @function
pedir_user:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	usuario.1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	usuario.1(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	pedir_user, .-pedir_user
	.section	.rodata
.LC2:
	.string	"Ingrese su clave: "
	.text
	.globl	pedir_con
	.type	pedir_con, @function
pedir_con:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	clave.0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	clave.0(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	pedir_con, .-pedir_con
	.section	.rodata
	.align 8
.LC3:
	.string	"\nCalculadora Linux\nEscoge que figura quieres calcular:"
	.align 8
.LC4:
	.string	"1. Tri\303\241ngulo\n2. Paralelogramo\n3. Cuadrado\n4. Rect\303\241ngulo\n5. Rombo\n6. Trapecio\n7. C\303\255rculo\n8. Pol\303\255gono Regular"
	.align 8
.LC5:
	.string	"\n9. Cubo\n10. Cuboide\n11. Cilindro Recto\n12. Esfera\n13. Cono Circular Recto\n14. SALIR"
	.text
	.globl	mostrar_menu_figuras
	.type	mostrar_menu_figuras, @function
mostrar_menu_figuras:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	mostrar_menu_figuras, .-mostrar_menu_figuras
	.section	.rodata
.LC6:
	.string	"\nIngrese su opci\303\263n: "
.LC7:
	.string	"%d"
	.text
	.globl	pedir_opcion
	.type	pedir_opcion, @function
pedir_opcion:
.LFB9:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -12(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L8
	call	__stack_chk_fail@PLT
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	pedir_opcion, .-pedir_opcion
	.section	.rodata
.LC8:
	.string	"Pon algo coherente"
	.text
	.globl	repito
	.type	repito, @function
repito:
.LFB10:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	repito, .-repito
	.section	.rodata
	.align 8
.LC9:
	.string	"\nTRI\303\201NGULO\nIngrese longitud del lado 1: "
.LC10:
	.string	"%f"
.LC11:
	.string	"Ingrese longitud del lado 2: "
.LC12:
	.string	"Ingrese longitud del lado 3: "
.LC13:
	.string	"Ingrese Base: "
.LC14:
	.string	"Ingrese Altura: "
	.align 8
.LC15:
	.string	"\n\303\201rea: %.2f\nPer\303\255metro: %.2f\n"
	.text
	.globl	triangulo
	.type	triangulo, @function
triangulo:
.LFB11:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-28(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-20(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movss	-20(%rbp), %xmm1
	movss	-24(%rbp), %xmm0
	movl	-28(%rbp), %eax
	movaps	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
	movd	%eax, %xmm0
	call	perimetro_triangulo@PLT
	pxor	%xmm3, %xmm3
	cvtss2sd	%xmm0, %xmm3
	movsd	%xmm3, -40(%rbp)
	movss	-12(%rbp), %xmm0
	movl	-16(%rbp), %eax
	movaps	%xmm0, %xmm1
	movd	%eax, %xmm0
	call	area_triangulo@PLT
	pxor	%xmm4, %xmm4
	cvtss2sd	%xmm0, %xmm4
	movq	%xmm4, %rax
	movsd	-40(%rbp), %xmm1
	movq	%rax, %xmm0
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	movl	$2, %eax
	call	printf@PLT
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L11
	call	__stack_chk_fail@PLT
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	triangulo, .-triangulo
	.section	.rodata
	.align 8
.LC16:
	.string	"\nPARALELOGRAMO\nIngrese longitud del lado 1: "
	.text
	.globl	paralelogramo
	.type	paralelogramo, @function
paralelogramo:
.LFB12:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-20(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movss	-20(%rbp), %xmm0
	movl	-24(%rbp), %eax
	movaps	%xmm0, %xmm1
	movd	%eax, %xmm0
	call	perimetro_cuadrilatero@PLT
	pxor	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	movsd	%xmm2, -40(%rbp)
	movss	-12(%rbp), %xmm0
	movl	-16(%rbp), %eax
	movaps	%xmm0, %xmm1
	movd	%eax, %xmm0
	call	area_cuadrilatero@PLT
	pxor	%xmm3, %xmm3
	cvtss2sd	%xmm0, %xmm3
	movq	%xmm3, %rax
	movsd	-40(%rbp), %xmm1
	movq	%rax, %xmm0
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	movl	$2, %eax
	call	printf@PLT
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L13
	call	__stack_chk_fail@PLT
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	paralelogramo, .-paralelogramo
	.section	.rodata
	.align 8
.LC17:
	.string	"\nCUADRADO\nIngrese longitud de los lados: "
	.text
	.globl	cuadrado
	.type	cuadrado, @function
cuadrado:
.LFB13:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movss	-12(%rbp), %xmm0
	movl	-12(%rbp), %eax
	movaps	%xmm0, %xmm1
	movd	%eax, %xmm0
	call	perimetro_cuadrilatero@PLT
	pxor	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	movsd	%xmm2, -24(%rbp)
	movss	-12(%rbp), %xmm0
	movl	-12(%rbp), %eax
	movaps	%xmm0, %xmm1
	movd	%eax, %xmm0
	call	area_cuadrilatero@PLT
	pxor	%xmm3, %xmm3
	cvtss2sd	%xmm0, %xmm3
	movq	%xmm3, %rax
	movsd	-24(%rbp), %xmm1
	movq	%rax, %xmm0
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	movl	$2, %eax
	call	printf@PLT
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L15
	call	__stack_chk_fail@PLT
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	cuadrado, .-cuadrado
	.section	.rodata
.LC18:
	.string	"\nRECT\303\201NGULO\nIngrese Base: "
	.text
	.globl	rectangulo
	.type	rectangulo, @function
rectangulo:
.LFB14:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movss	-12(%rbp), %xmm0
	movl	-16(%rbp), %eax
	movaps	%xmm0, %xmm1
	movd	%eax, %xmm0
	call	perimetro_cuadrilatero@PLT
	pxor	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	movsd	%xmm2, -24(%rbp)
	movss	-12(%rbp), %xmm0
	movl	-16(%rbp), %eax
	movaps	%xmm0, %xmm1
	movd	%eax, %xmm0
	call	area_cuadrilatero@PLT
	pxor	%xmm3, %xmm3
	cvtss2sd	%xmm0, %xmm3
	movq	%xmm3, %rax
	movsd	-24(%rbp), %xmm1
	movq	%rax, %xmm0
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	movl	$2, %eax
	call	printf@PLT
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L17
	call	__stack_chk_fail@PLT
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	rectangulo, .-rectangulo
	.section	.rodata
	.align 8
.LC19:
	.string	"\nROMBO\nIngrese longitud de los lados: "
.LC20:
	.string	"Ingrese Diagonal Mayor: "
.LC21:
	.string	"Ingrese Diagonal Menor: "
	.text
	.globl	rombo
	.type	rombo, @function
rombo:
.LFB15:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-20(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movss	-12(%rbp), %xmm0
	movl	-12(%rbp), %eax
	movaps	%xmm0, %xmm1
	movd	%eax, %xmm0
	call	perimetro_cuadrilatero@PLT
	pxor	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	movsd	%xmm2, -40(%rbp)
	movss	-16(%rbp), %xmm0
	movl	-20(%rbp), %eax
	movaps	%xmm0, %xmm1
	movd	%eax, %xmm0
	call	area_triangulo@PLT
	pxor	%xmm3, %xmm3
	cvtss2sd	%xmm0, %xmm3
	movq	%xmm3, %rax
	movsd	-40(%rbp), %xmm1
	movq	%rax, %xmm0
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	movl	$2, %eax
	call	printf@PLT
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L19
	call	__stack_chk_fail@PLT
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	rombo, .-rombo
	.section	.rodata
	.align 8
.LC22:
	.string	"\nTRAPECIO\nIngrese longitud del lado Izquierdo: "
	.align 8
.LC23:
	.string	"Ingrese longitud del lado Derecho: "
.LC24:
	.string	"Ingrese Base Menor: "
.LC25:
	.string	"Ingrese Base Mayor: "
	.text
	.globl	trapecio
	.type	trapecio, @function
trapecio:
.LFB16:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-28(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-20(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movss	-24(%rbp), %xmm2
	movss	-28(%rbp), %xmm1
	movss	-16(%rbp), %xmm0
	movl	-20(%rbp), %eax
	movaps	%xmm2, %xmm3
	movaps	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
	movd	%eax, %xmm0
	call	perimetro_trapecio@PLT
	pxor	%xmm4, %xmm4
	cvtss2sd	%xmm0, %xmm4
	movsd	%xmm4, -40(%rbp)
	movss	-12(%rbp), %xmm1
	movss	-16(%rbp), %xmm0
	movl	-20(%rbp), %eax
	movaps	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
	movd	%eax, %xmm0
	call	area_trapecio@PLT
	pxor	%xmm5, %xmm5
	cvtss2sd	%xmm0, %xmm5
	movq	%xmm5, %rax
	movsd	-40(%rbp), %xmm1
	movq	%rax, %xmm0
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	movl	$2, %eax
	call	printf@PLT
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L21
	call	__stack_chk_fail@PLT
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	trapecio, .-trapecio
	.section	.rodata
	.align 8
.LC26:
	.string	"\nC\303\215RCULO\nIngrese longitud del radio: "
	.text
	.globl	circulo
	.type	circulo, @function
circulo:
.LFB17:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-12(%rbp), %eax
	movd	%eax, %xmm0
	call	perimetro_circulo@PLT
	pxor	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	movsd	%xmm2, -24(%rbp)
	movl	-12(%rbp), %eax
	movd	%eax, %xmm0
	call	area_circulo@PLT
	pxor	%xmm3, %xmm3
	cvtss2sd	%xmm0, %xmm3
	movq	%xmm3, %rax
	movsd	-24(%rbp), %xmm1
	movq	%rax, %xmm0
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	movl	$2, %eax
	call	printf@PLT
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L23
	call	__stack_chk_fail@PLT
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	circulo, .-circulo
	.section	.rodata
	.align 8
.LC27:
	.string	"\nPOL\303\215GONO REGULAR\nIngrese longitud de los lados: "
.LC28:
	.string	"Ingrese n\303\272mero de lados: "
	.text
	.globl	poligono_regular
	.type	poligono_regular, @function
poligono_regular:
.LFB18:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC28(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movss	-12(%rbp), %xmm0
	movl	-16(%rbp), %eax
	movaps	%xmm0, %xmm1
	movd	%eax, %xmm0
	call	perimetro_poligonor@PLT
	pxor	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	movsd	%xmm2, -24(%rbp)
	movss	-12(%rbp), %xmm0
	movl	-16(%rbp), %eax
	movaps	%xmm0, %xmm1
	movd	%eax, %xmm0
	call	area_poligonor@PLT
	pxor	%xmm3, %xmm3
	cvtss2sd	%xmm0, %xmm3
	movq	%xmm3, %rax
	movsd	-24(%rbp), %xmm1
	movq	%rax, %xmm0
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	movl	$2, %eax
	call	printf@PLT
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L25
	call	__stack_chk_fail@PLT
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	poligono_regular, .-poligono_regular
	.section	.rodata
	.align 8
.LC29:
	.string	"\nCUBO\nIngrese la longitud de los lados: "
	.align 8
.LC30:
	.string	"\nVolumen: %.2f\n\303\201rea de la Superficie: %.2f \n"
	.text
	.globl	cubo
	.type	cubo, @function
cubo:
.LFB19:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC29(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-12(%rbp), %eax
	movd	%eax, %xmm0
	call	superficie_cubo@PLT
	pxor	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	movsd	%xmm2, -24(%rbp)
	movl	-12(%rbp), %eax
	movd	%eax, %xmm0
	call	volumen_cubo@PLT
	pxor	%xmm3, %xmm3
	cvtss2sd	%xmm0, %xmm3
	movq	%xmm3, %rax
	movsd	-24(%rbp), %xmm1
	movq	%rax, %xmm0
	leaq	.LC30(%rip), %rax
	movq	%rax, %rdi
	movl	$2, %eax
	call	printf@PLT
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L27
	call	__stack_chk_fail@PLT
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	cubo, .-cubo
	.section	.rodata
	.align 8
.LC31:
	.string	"\nCUBOIDE\nIngrese la longitud de altura: "
	.align 8
.LC32:
	.string	"\nIngrese la longitud de anchura: "
	.align 8
.LC33:
	.string	"\nIngrese la longitud de prufundidad: "
	.text
	.globl	cuboide
	.type	cuboide, @function
cuboide:
.LFB20:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC31(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-20(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC32(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC33(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movss	-12(%rbp), %xmm1
	movss	-16(%rbp), %xmm0
	movl	-20(%rbp), %eax
	movaps	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
	movd	%eax, %xmm0
	call	superficie_cuboide@PLT
	pxor	%xmm3, %xmm3
	cvtss2sd	%xmm0, %xmm3
	movsd	%xmm3, -40(%rbp)
	movss	-12(%rbp), %xmm1
	movss	-16(%rbp), %xmm0
	movl	-20(%rbp), %eax
	movaps	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
	movd	%eax, %xmm0
	call	volumen_cuboide@PLT
	pxor	%xmm4, %xmm4
	cvtss2sd	%xmm0, %xmm4
	movq	%xmm4, %rax
	movsd	-40(%rbp), %xmm1
	movq	%rax, %xmm0
	leaq	.LC30(%rip), %rax
	movq	%rax, %rdi
	movl	$2, %eax
	call	printf@PLT
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L29
	call	__stack_chk_fail@PLT
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	cuboide, .-cuboide
	.section	.rodata
	.align 8
.LC34:
	.string	"\nCILINDRO RECTO\nIngrese la longitud de altura: "
	.align 8
.LC35:
	.string	"\nIngrese el radio de la base: "
	.text
	.globl	cilindro
	.type	cilindro, @function
cilindro:
.LFB21:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC35(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movss	-12(%rbp), %xmm0
	movl	-16(%rbp), %eax
	movaps	%xmm0, %xmm1
	movd	%eax, %xmm0
	call	superficie_cilindro@PLT
	pxor	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	movsd	%xmm2, -24(%rbp)
	movss	-12(%rbp), %xmm0
	movl	-16(%rbp), %eax
	movaps	%xmm0, %xmm1
	movd	%eax, %xmm0
	call	volumen_cilindro@PLT
	pxor	%xmm3, %xmm3
	cvtss2sd	%xmm0, %xmm3
	movq	%xmm3, %rax
	movsd	-24(%rbp), %xmm1
	movq	%rax, %xmm0
	leaq	.LC30(%rip), %rax
	movq	%rax, %rdi
	movl	$2, %eax
	call	printf@PLT
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L31
	call	__stack_chk_fail@PLT
.L31:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	cilindro, .-cilindro
	.section	.rodata
	.align 8
.LC36:
	.string	"\nESFERA\nIngrese la longitud del radio: "
	.text
	.globl	esfera
	.type	esfera, @function
esfera:
.LFB22:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC36(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-12(%rbp), %eax
	movd	%eax, %xmm0
	call	superficie_esfera@PLT
	pxor	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	movsd	%xmm2, -24(%rbp)
	movl	-12(%rbp), %eax
	movd	%eax, %xmm0
	call	volumen_esfera@PLT
	pxor	%xmm3, %xmm3
	cvtss2sd	%xmm0, %xmm3
	movq	%xmm3, %rax
	movsd	-24(%rbp), %xmm1
	movq	%rax, %xmm0
	leaq	.LC30(%rip), %rax
	movq	%rax, %rdi
	movl	$2, %eax
	call	printf@PLT
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L33
	call	__stack_chk_fail@PLT
.L33:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	esfera, .-esfera
	.section	.rodata
	.align 8
.LC37:
	.string	"\nCONO C\303\215RCULAR RECTO\nIngrese la longitud de altura: "
	.align 8
.LC38:
	.string	"\nIngrese la longitud de la generatriz: "
	.text
	.globl	cono
	.type	cono, @function
cono:
.LFB23:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC37(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC35(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-20(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC38(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movss	-12(%rbp), %xmm0
	movl	-20(%rbp), %eax
	movaps	%xmm0, %xmm1
	movd	%eax, %xmm0
	call	superficie_cono@PLT
	pxor	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	movsd	%xmm2, -40(%rbp)
	movss	-16(%rbp), %xmm0
	movl	-20(%rbp), %eax
	movaps	%xmm0, %xmm1
	movd	%eax, %xmm0
	call	volumen_cono@PLT
	pxor	%xmm3, %xmm3
	cvtss2sd	%xmm0, %xmm3
	movq	%xmm3, %rax
	movsd	-40(%rbp), %xmm1
	movq	%rax, %xmm0
	leaq	.LC30(%rip), %rax
	movq	%rax, %rdi
	movl	$2, %eax
	call	printf@PLT
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L35
	call	__stack_chk_fail@PLT
.L35:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	cono, .-cono
	.local	usuario.1
	.comm	usuario.1,50,32
	.local	clave.0
	.comm	clave.0,50,32
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
