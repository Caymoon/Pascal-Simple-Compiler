.section .bss
.lcomm	zjh,	4
.lcomm	a,	4
.lcomm	b,	4
.lcomm	l,	4
.lcomm	sub,	4
.lcomm	x1,	4
.lcomm	c,	4
.lcomm	T0,	4
.lcomm	T1,	4
.lcomm	T2,	4
.lcomm	T3,	4
.lcomm	T4,	4
.lcomm	T5,	4
.lcomm	T6,	4
.lcomm	T7,	4
.lcomm	T8,	4
.lcomm	T9,	4
.lcomm	T10,	4
.section .text
movl	$40,	%eax
movl	%eax,	$x1
movl	$10,	%eax
addl	$20,	%eax
movl	%eax,	$T0
movl	$T0,	%eax
movl	%eax,	$a
movl	$12.3,	%eax
movl	%eax,	$b
movl	$a,	%eax
mull	$x1,	%eax
movl	%eax,	$T1
movl	$T1,	%eax
addl	$2,	%eax
movl	%eax,	$T2
movl	$T2,	%eax
movl	%eax,	$c
movl	$a,	%eax
divl	$x1,	%eax
movl	%eax,	$T3
movl	$2,	%eax
mull	$T3,	%eax
movl	%eax,	$T4
movl	$T4,	%eax
movl	%eax,	$a
movl	0,	%eax
cmpl   a, %eax
jnz	.tr0
jmp	.fal0
.tr0:
movl	$a,	%eax
addl	$c,	%eax
movl	%eax,	$T5
movl	$T5,	%eax
movl	%eax,	$a
jmp	.next0
.fal0:
movl	$a,	%eax
mull	$c,	%eax
movl	%eax,	$T6
movl	$T6,	%eax
movl	%eax,	$a
.next0:
.L0:
movl	$a,	%eax
subl	$100,	%eax
movl	%eax,	$T7
movl	0,	%eax
cmpl   T7, %eax
jnz	.w_tr0
jmp	.w_fal0
.w_tr0:
movl	$a,	%eax
addl	$5,	%eax
movl	%eax,	$T8
movl	$T8,	%eax
movl	%eax,	$a
jnz .L0
.w_fal0:
.L1:
movl	0,	%eax
cmpl   b, %eax
jnz	.w_tr1
jmp	.w_fal1
.w_tr1:
movl	0,	%eax
cmpl   b, %eax
jnz	.tr1
jmp	.fal1
.tr1:
movl	$b,	%eax
subl	$1,	%eax
movl	%eax,	$T9
movl	$T9,	%eax
movl	%eax,	$b
.fal1:
jnz .L1
.w_fal1:
movl	0,	%eax
cmpl   c, %eax
jnz	.tr2
jmp	.fal2
.tr2:
.L2:
movl	0,	%eax
cmpl   a, %eax
jnz	.w_tr2
jmp	.w_fal2
.w_tr2:
movl	$a,	%eax
subl	$1,	%eax
movl	%eax,	$T10
movl	$T10,	%eax
movl	%eax,	$a
jnz .L2
.w_fal2:
.fal2:
