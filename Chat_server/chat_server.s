	.file	"Main.cpp"
	.text
	.section	.text._ZNKSt9type_infoeqERKS_,"axG",@progbits,_ZNKSt9type_infoeqERKS_,comdat
	.align 2
	.weak	_ZNKSt9type_infoeqERKS_
	.type	_ZNKSt9type_infoeqERKS_, @function
_ZNKSt9type_infoeqERKS_:
.LFB20:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	je	.L2
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$42, %al
	je	.L3
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L3
.L2:
	movl	$1, %eax
	jmp	.L4
.L3:
	movl	$0, %eax
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	_ZNKSt9type_infoeqERKS_, .-_ZNKSt9type_infoeqERKS_
	.section	.text._ZnwmPv,"axG",@progbits,_ZnwmPv,comdat
	.weak	_ZnwmPv
	.type	_ZnwmPv, @function
_ZnwmPv:
.LFB38:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	_ZnwmPv, .-_ZnwmPv
	.section	.text._ZdlPvS_,"axG",@progbits,_ZdlPvS_,comdat
	.weak	_ZdlPvS_
	.type	_ZdlPvS_, @function
_ZdlPvS_:
.LFB40:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	_ZdlPvS_, .-_ZdlPvS_
	.section	.text._ZNSt11char_traitsIcE2ltERKcS2_,"axG",@progbits,_ZNSt11char_traitsIcE2ltERKcS2_,comdat
	.weak	_ZNSt11char_traitsIcE2ltERKcS2_
	.type	_ZNSt11char_traitsIcE2ltERKcS2_, @function
_ZNSt11char_traitsIcE2ltERKcS2_:
.LFB447:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	setb	%al
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE447:
	.size	_ZNSt11char_traitsIcE2ltERKcS2_, .-_ZNSt11char_traitsIcE2ltERKcS2_
	.section	.text._ZNSt11char_traitsIcE7compareEPKcS2_m,"axG",@progbits,_ZNSt11char_traitsIcE7compareEPKcS2_m,comdat
	.weak	_ZNSt11char_traitsIcE7compareEPKcS2_m
	.type	_ZNSt11char_traitsIcE7compareEPKcS2_m, @function
_ZNSt11char_traitsIcE7compareEPKcS2_m:
.LFB448:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L12
	movl	$0, %eax
	jmp	.L13
.L12:
	movl	$0, %eax
	testb	%al, %al
	je	.L14
	movq	$0, -8(%rbp)
	jmp	.L15
.L18:
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11char_traitsIcE2ltERKcS2_
	testb	%al, %al
	je	.L16
	movl	$-1, %eax
	jmp	.L13
.L16:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11char_traitsIcE2ltERKcS2_
	testb	%al, %al
	je	.L17
	movl	$1, %eax
	jmp	.L13
.L17:
	addq	$1, -8(%rbp)
.L15:
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L18
	movl	$0, %eax
	jmp	.L13
.L14:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	nop
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE448:
	.size	_ZNSt11char_traitsIcE7compareEPKcS2_m, .-_ZNSt11char_traitsIcE7compareEPKcS2_m
	.section	.text._ZNSt11char_traitsIcE6lengthEPKc,"axG",@progbits,_ZNSt11char_traitsIcE6lengthEPKc,comdat
	.weak	_ZNSt11char_traitsIcE6lengthEPKc
	.type	_ZNSt11char_traitsIcE6lengthEPKc, @function
_ZNSt11char_traitsIcE6lengthEPKc:
.LFB450:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$0, %eax
	testb	%al, %al
	je	.L21
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	jmp	.L22
.L21:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	nop
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE450:
	.size	_ZNSt11char_traitsIcE6lengthEPKc, .-_ZNSt11char_traitsIcE6lengthEPKc
	.section	.rodata
.LC0:
	.string	"stoi"
	.section	.text._ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi,"axG",@progbits,_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi,comdat
	.weak	_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi
	.type	_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi, @function
_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi:
.LFB1133:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv@PLT
	movq	%rax, %rdx
	movl	-20(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, %r8d
	movq	%rax, %rcx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	movq	strtol@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1133:
	.size	_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi, .-_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.text._ZSt3minImERKT_S2_S2_,"axG",@progbits,_ZSt3minImERKT_S2_S2_,comdat
	.weak	_ZSt3minImERKT_S2_S2_
	.type	_ZSt3minImERKT_S2_S2_, @function
_ZSt3minImERKT_S2_S2_:
.LFB2704:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L26
	movq	-16(%rbp), %rax
	jmp	.L27
.L26:
	movq	-8(%rbp), %rax
.L27:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2704:
	.size	_ZSt3minImERKT_S2_S2_, .-_ZSt3minImERKT_S2_S2_
	.section	.rodata
	.type	_ZN6__pstl9execution2v1L3seqE, @object
	.size	_ZN6__pstl9execution2v1L3seqE, 1
_ZN6__pstl9execution2v1L3seqE:
	.zero	1
	.type	_ZN6__pstl9execution2v1L3parE, @object
	.size	_ZN6__pstl9execution2v1L3parE, 1
_ZN6__pstl9execution2v1L3parE:
	.zero	1
	.type	_ZN6__pstl9execution2v1L9par_unseqE, @object
	.size	_ZN6__pstl9execution2v1L9par_unseqE, 1
_ZN6__pstl9execution2v1L9par_unseqE:
	.zero	1
	.type	_ZN6__pstl9execution2v1L5unseqE, @object
	.size	_ZN6__pstl9execution2v1L5unseqE, 1
_ZN6__pstl9execution2v1L5unseqE:
	.zero	1
	.align 4
	.type	_ZN9__gnu_cxxL21__default_lock_policyE, @object
	.size	_ZN9__gnu_cxxL21__default_lock_policyE, 4
_ZN9__gnu_cxxL21__default_lock_policyE:
	.long	2
	.weak	_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
	.section	.rodata._ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag,"aG",@progbits,_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag,comdat
	.align 8
	.type	_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag, @gnu_unique_object
	.size	_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag, 16
_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag:
	.zero	16
	.section	.text._ZNSt19_Sp_make_shared_tag5_S_tiEv,"axG",@progbits,_ZNSt19_Sp_make_shared_tag5_S_tiEv,comdat
	.weak	_ZNSt19_Sp_make_shared_tag5_S_tiEv
	.type	_ZNSt19_Sp_make_shared_tag5_S_tiEv, @function
_ZNSt19_Sp_make_shared_tag5_S_tiEv:
.LFB3372:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3372:
	.size	_ZNSt19_Sp_make_shared_tag5_S_tiEv, .-_ZNSt19_Sp_make_shared_tag5_S_tiEv
	.section	.text._ZNSt10filesystem7__cxx114path5_ListD2Ev,"axG",@progbits,_ZNSt10filesystem7__cxx114path5_ListD5Ev,comdat
	.align 2
	.weak	_ZNSt10filesystem7__cxx114path5_ListD2Ev
	.type	_ZNSt10filesystem7__cxx114path5_ListD2Ev, @function
_ZNSt10filesystem7__cxx114path5_ListD2Ev:
.LFB4360:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEED1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4360:
	.size	_ZNSt10filesystem7__cxx114path5_ListD2Ev, .-_ZNSt10filesystem7__cxx114path5_ListD2Ev
	.weak	_ZNSt10filesystem7__cxx114path5_ListD1Ev
	.set	_ZNSt10filesystem7__cxx114path5_ListD1Ev,_ZNSt10filesystem7__cxx114path5_ListD2Ev
	.section	.text._ZNSt10filesystem7__cxx114pathD2Ev,"axG",@progbits,_ZNSt10filesystem7__cxx114pathD5Ev,comdat
	.align 2
	.weak	_ZNSt10filesystem7__cxx114pathD2Ev
	.type	_ZNSt10filesystem7__cxx114pathD2Ev, @function
_ZNSt10filesystem7__cxx114pathD2Ev:
.LFB4362:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	call	_ZNSt10filesystem7__cxx114path5_ListD1Ev
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4362:
	.size	_ZNSt10filesystem7__cxx114pathD2Ev, .-_ZNSt10filesystem7__cxx114pathD2Ev
	.weak	_ZNSt10filesystem7__cxx114pathD1Ev
	.set	_ZNSt10filesystem7__cxx114pathD1Ev,_ZNSt10filesystem7__cxx114pathD2Ev
	.section	.text._ZNSt12_Vector_baseI4UserSaIS0_EE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseI4UserSaIS0_EE12_Vector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI4UserSaIS0_EE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseI4UserSaIS0_EE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseI4UserSaIS0_EE12_Vector_implD2Ev:
.LFB4779:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaI4UserED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4779:
	.size	_ZNSt12_Vector_baseI4UserSaIS0_EE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseI4UserSaIS0_EE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseI4UserSaIS0_EE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseI4UserSaIS0_EE12_Vector_implD1Ev,_ZNSt12_Vector_baseI4UserSaIS0_EE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseI4UserSaIS0_EEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseI4UserSaIS0_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI4UserSaIS0_EEC2Ev
	.type	_ZNSt12_Vector_baseI4UserSaIS0_EEC2Ev, @function
_ZNSt12_Vector_baseI4UserSaIS0_EEC2Ev:
.LFB4781:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI4UserSaIS0_EE12_Vector_implC1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4781:
	.size	_ZNSt12_Vector_baseI4UserSaIS0_EEC2Ev, .-_ZNSt12_Vector_baseI4UserSaIS0_EEC2Ev
	.weak	_ZNSt12_Vector_baseI4UserSaIS0_EEC1Ev
	.set	_ZNSt12_Vector_baseI4UserSaIS0_EEC1Ev,_ZNSt12_Vector_baseI4UserSaIS0_EEC2Ev
	.section	.text._ZNSt6vectorI4UserSaIS0_EEC2Ev,"axG",@progbits,_ZNSt6vectorI4UserSaIS0_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorI4UserSaIS0_EEC2Ev
	.type	_ZNSt6vectorI4UserSaIS0_EEC2Ev, @function
_ZNSt6vectorI4UserSaIS0_EEC2Ev:
.LFB4783:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI4UserSaIS0_EEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4783:
	.size	_ZNSt6vectorI4UserSaIS0_EEC2Ev, .-_ZNSt6vectorI4UserSaIS0_EEC2Ev
	.weak	_ZNSt6vectorI4UserSaIS0_EEC1Ev
	.set	_ZNSt6vectorI4UserSaIS0_EEC1Ev,_ZNSt6vectorI4UserSaIS0_EEC2Ev
	.section	.text._ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE12_Vector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE12_Vector_implD2Ev:
.LFB4789:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaISt10shared_ptrI4ChatEED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4789:
	.size	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE12_Vector_implD1Ev,_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EEC2Ev
	.type	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EEC2Ev, @function
_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EEC2Ev:
.LFB4791:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE12_Vector_implC1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4791:
	.size	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EEC2Ev, .-_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EEC2Ev
	.weak	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EEC1Ev
	.set	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EEC1Ev,_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EEC2Ev
	.section	.text._ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EEC2Ev,"axG",@progbits,_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EEC2Ev
	.type	_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EEC2Ev, @function
_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EEC2Ev:
.LFB4793:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4793:
	.size	_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EEC2Ev, .-_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EEC2Ev
	.weak	_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EEC1Ev
	.set	_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EEC1Ev,_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EEC2Ev
	.section	.text._ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EED2Ev,"axG",@progbits,_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EED5Ev,comdat
	.align 2
	.weak	_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EED2Ev
	.type	_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EED2Ev, @function
_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EED2Ev:
.LFB4797:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4797:
	.size	_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EED2Ev, .-_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EED2Ev
	.weak	_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EED1Ev
	.set	_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EED1Ev,_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EED2Ev
	.section	.text._ZNSt10shared_ptrI4UserED2Ev,"axG",@progbits,_ZNSt10shared_ptrI4UserED5Ev,comdat
	.align 2
	.weak	_ZNSt10shared_ptrI4UserED2Ev
	.type	_ZNSt10shared_ptrI4UserED2Ev, @function
_ZNSt10shared_ptrI4UserED2Ev:
.LFB4799:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4799:
	.size	_ZNSt10shared_ptrI4UserED2Ev, .-_ZNSt10shared_ptrI4UserED2Ev
	.weak	_ZNSt10shared_ptrI4UserED1Ev
	.set	_ZNSt10shared_ptrI4UserED1Ev,_ZNSt10shared_ptrI4UserED2Ev
	.section	.text._ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EED2Ev,"axG",@progbits,_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EED5Ev,comdat
	.align 2
	.weak	_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EED2Ev
	.type	_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EED2Ev, @function
_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EED2Ev:
.LFB4803:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4803:
	.size	_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EED2Ev, .-_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EED2Ev
	.weak	_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EED1Ev
	.set	_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EED1Ev,_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EED2Ev
	.section	.text._ZNSt10shared_ptrI4ChatED2Ev,"axG",@progbits,_ZNSt10shared_ptrI4ChatED5Ev,comdat
	.align 2
	.weak	_ZNSt10shared_ptrI4ChatED2Ev
	.type	_ZNSt10shared_ptrI4ChatED2Ev, @function
_ZNSt10shared_ptrI4ChatED2Ev:
.LFB4805:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4805:
	.size	_ZNSt10shared_ptrI4ChatED2Ev, .-_ZNSt10shared_ptrI4ChatED2Ev
	.weak	_ZNSt10shared_ptrI4ChatED1Ev
	.set	_ZNSt10shared_ptrI4ChatED1Ev,_ZNSt10shared_ptrI4ChatED2Ev
	.section	.text._ZN5ChatsC2Ev,"axG",@progbits,_ZN5ChatsC5Ev,comdat
	.align 2
	.weak	_ZN5ChatsC2Ev
	.type	_ZN5ChatsC2Ev, @function
_ZN5ChatsC2Ev:
.LFB4807:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4807
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@PLT
	movq	-24(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@PLT
	movq	-24(%rbp), %rax
	movl	$0, 72(%rax)
	movq	-24(%rbp), %rax
	addq	$80, %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@PLT
	movq	-24(%rbp), %rax
	movb	$110, 112(%rax)
	movq	-24(%rbp), %rax
	addq	$120, %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorI4UserSaIS0_EEC1Ev
	movq	-24(%rbp), %rax
	addq	$144, %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EEC1Ev
	movq	-24(%rbp), %rax
	addq	$168, %rax
	movq	%rax, %rdi
.LEHB0:
	call	_ZN7MessageC1Ev@PLT
.LEHE0:
	movq	-24(%rbp), %rax
	addq	$296, %rax
	movq	%rax, %rdi
.LEHB1:
	call	_ZN4UserC1Ev@PLT
.LEHE1:
	movq	-24(%rbp), %rax
	addq	$416, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNSt10shared_ptrI4UserEC1EDn
	movq	-24(%rbp), %rax
	addq	$432, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNSt10shared_ptrI4ChatEC1EDn
	jmp	.L47
.L46:
	endbr64
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	addq	$168, %rax
	movq	%rax, %rdi
	call	_ZN7MessageD1Ev@PLT
	jmp	.L44
.L45:
	endbr64
	movq	%rax, %rbx
.L44:
	movq	-24(%rbp), %rax
	addq	$144, %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EED1Ev
	movq	-24(%rbp), %rax
	addq	$120, %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorI4UserSaIS0_EED1Ev
	movq	-24(%rbp), %rax
	addq	$80, %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	-24(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB2:
	call	_Unwind_Resume@PLT
.LEHE2:
.L47:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4807:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZN5ChatsC2Ev,"aG",@progbits,_ZN5ChatsC5Ev,comdat
.LLSDA4807:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4807-.LLSDACSB4807
.LLSDACSB4807:
	.uleb128 .LEHB0-.LFB4807
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L45-.LFB4807
	.uleb128 0
	.uleb128 .LEHB1-.LFB4807
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L46-.LFB4807
	.uleb128 0
	.uleb128 .LEHB2-.LFB4807
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE4807:
	.section	.text._ZN5ChatsC2Ev,"axG",@progbits,_ZN5ChatsC5Ev,comdat
	.size	_ZN5ChatsC2Ev, .-_ZN5ChatsC2Ev
	.weak	_ZN5ChatsC1Ev
	.set	_ZN5ChatsC1Ev,_ZN5ChatsC2Ev
	.section	.text._ZN5ChatsD2Ev,"axG",@progbits,_ZN5ChatsD5Ev,comdat
	.align 2
	.weak	_ZN5ChatsD2Ev
	.type	_ZN5ChatsD2Ev, @function
_ZN5ChatsD2Ev:
.LFB4810:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$432, %rax
	movq	%rax, %rdi
	call	_ZNSt10shared_ptrI4ChatED1Ev
	movq	-8(%rbp), %rax
	addq	$416, %rax
	movq	%rax, %rdi
	call	_ZNSt10shared_ptrI4UserED1Ev
	movq	-8(%rbp), %rax
	addq	$296, %rax
	movq	%rax, %rdi
	call	_ZN4UserD1Ev@PLT
	movq	-8(%rbp), %rax
	addq	$168, %rax
	movq	%rax, %rdi
	call	_ZN7MessageD1Ev@PLT
	movq	-8(%rbp), %rax
	addq	$144, %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EED1Ev
	movq	-8(%rbp), %rax
	addq	$120, %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorI4UserSaIS0_EED1Ev
	movq	-8(%rbp), %rax
	addq	$80, %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	-8(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4810:
	.size	_ZN5ChatsD2Ev, .-_ZN5ChatsD2Ev
	.weak	_ZN5ChatsD1Ev
	.set	_ZN5ChatsD1Ev,_ZN5ChatsD2Ev
	.section	.rodata
.LC1:
	.string	"/tmp/Chat_Yevgeniy"
.LC2:
	.string	"/tmp"
.LC3:
	.string	"/tmp/Chat_Yevgeniy/Chats"
	.section	.text._ZN5Chats10restordataEv,"axG",@progbits,_ZN5Chats10restordataEv,comdat
	.align 2
	.weak	_ZN5Chats10restordataEv
	.type	_ZN5Chats10restordataEv, @function
_ZN5Chats10restordataEv:
.LFB4812:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4812
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$472, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -472(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-368(%rbp), %rax
	movq	%rax, %rdi
.LEHB3:
	call	_ZN10SaveRestorC1Ev@PLT
.LEHE3:
	leaq	-416(%rbp), %rax
	movl	$2, %edx
	leaq	.LC1(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB4:
	call	_ZNSt10filesystem7__cxx114pathC1IA19_cS1_EERKT_NS1_6formatE
.LEHE4:
	leaq	-464(%rbp), %rax
	movl	$2, %edx
	leaq	.LC2(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB5:
	call	_ZNSt10filesystem7__cxx114pathC1IA5_cS1_EERKT_NS1_6formatE
.LEHE5:
	leaq	-416(%rbp), %rdx
	leaq	-464(%rbp), %rcx
	leaq	-368(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB6:
	call	_ZN10SaveRestor10createPathERKNSt10filesystem7__cxx114pathES4_@PLT
.LEHE6:
	leaq	-464(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10filesystem7__cxx114pathD1Ev
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10filesystem7__cxx114pathD1Ev
	leaq	-416(%rbp), %rax
	movl	$2, %edx
	leaq	.LC3(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB7:
	call	_ZNSt10filesystem7__cxx114pathC1IA25_cS1_EERKT_NS1_6formatE
.LEHE7:
	leaq	-464(%rbp), %rax
	movl	$2, %edx
	leaq	.LC2(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB8:
	call	_ZNSt10filesystem7__cxx114pathC1IA5_cS1_EERKT_NS1_6formatE
.LEHE8:
	leaq	-416(%rbp), %rdx
	leaq	-464(%rbp), %rcx
	leaq	-368(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB9:
	call	_ZN10SaveRestor10createPathERKNSt10filesystem7__cxx114pathES4_@PLT
.LEHE9:
	leaq	-464(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10filesystem7__cxx114pathD1Ev
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10filesystem7__cxx114pathD1Ev
	movq	-472(%rbp), %rax
	leaq	120(%rax), %rdx
	leaq	-368(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB10:
	call	_ZN10SaveRestor11restorUsersERSt6vectorI4UserSaIS1_EE@PLT
	movq	-472(%rbp), %rax
	leaq	144(%rax), %rdx
	leaq	-368(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN10SaveRestor11restorChatsERSt6vectorISt10shared_ptrI4ChatESaIS3_EE@PLT
.LEHE10:
	leaq	-368(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN10SaveRestorD1Ev@PLT
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L55
	jmp	.L61
.L58:
	endbr64
	movq	%rax, %rbx
	leaq	-464(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10filesystem7__cxx114pathD1Ev
	jmp	.L51
.L57:
	endbr64
	movq	%rax, %rbx
.L51:
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10filesystem7__cxx114pathD1Ev
	jmp	.L52
.L60:
	endbr64
	movq	%rax, %rbx
	leaq	-464(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10filesystem7__cxx114pathD1Ev
	jmp	.L54
.L59:
	endbr64
	movq	%rax, %rbx
.L54:
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10filesystem7__cxx114pathD1Ev
	jmp	.L52
.L56:
	endbr64
	movq	%rax, %rbx
.L52:
	leaq	-368(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN10SaveRestorD1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB11:
	call	_Unwind_Resume@PLT
.LEHE11:
.L61:
	call	__stack_chk_fail@PLT
.L55:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4812:
	.section	.gcc_except_table._ZN5Chats10restordataEv,"aG",@progbits,_ZN5Chats10restordataEv,comdat
.LLSDA4812:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4812-.LLSDACSB4812
.LLSDACSB4812:
	.uleb128 .LEHB3-.LFB4812
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB4812
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L56-.LFB4812
	.uleb128 0
	.uleb128 .LEHB5-.LFB4812
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L57-.LFB4812
	.uleb128 0
	.uleb128 .LEHB6-.LFB4812
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L58-.LFB4812
	.uleb128 0
	.uleb128 .LEHB7-.LFB4812
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L56-.LFB4812
	.uleb128 0
	.uleb128 .LEHB8-.LFB4812
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L59-.LFB4812
	.uleb128 0
	.uleb128 .LEHB9-.LFB4812
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L60-.LFB4812
	.uleb128 0
	.uleb128 .LEHB10-.LFB4812
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L56-.LFB4812
	.uleb128 0
	.uleb128 .LEHB11-.LFB4812
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
.LLSDACSE4812:
	.section	.text._ZN5Chats10restordataEv,"axG",@progbits,_ZN5Chats10restordataEv,comdat
	.size	_ZN5Chats10restordataEv, .-_ZN5Chats10restordataEv
	.section	.text._ZN5Chats8savedataEv,"axG",@progbits,_ZN5Chats8savedataEv,comdat
	.align 2
	.weak	_ZN5Chats8savedataEv
	.type	_ZN5Chats8savedataEv, @function
_ZN5Chats8savedataEv:
.LFB4813:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4813
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$504, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -504(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-368(%rbp), %rax
	movq	%rax, %rdi
.LEHB12:
	call	_ZN10SaveRestorC1Ev@PLT
.LEHE12:
	leaq	-416(%rbp), %rax
	movl	$2, %edx
	leaq	.LC1(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB13:
	call	_ZNSt10filesystem7__cxx114pathC1IA19_cS1_EERKT_NS1_6formatE
.LEHE13:
	leaq	-464(%rbp), %rax
	movl	$2, %edx
	leaq	.LC2(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB14:
	call	_ZNSt10filesystem7__cxx114pathC1IA5_cS1_EERKT_NS1_6formatE
.LEHE14:
	leaq	-416(%rbp), %rdx
	leaq	-464(%rbp), %rcx
	leaq	-368(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB15:
	call	_ZN10SaveRestor10createPathERKNSt10filesystem7__cxx114pathES4_@PLT
.LEHE15:
	leaq	-464(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10filesystem7__cxx114pathD1Ev
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10filesystem7__cxx114pathD1Ev
	movq	-504(%rbp), %rax
	leaq	120(%rax), %rdx
	leaq	-368(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB16:
	call	_ZN10SaveRestor9saveUsersERSt6vectorI4UserSaIS1_EE@PLT
	movq	-504(%rbp), %rax
	leaq	144(%rax), %rdx
	leaq	-496(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EEC1ERKS4_
.LEHE16:
	leaq	-496(%rbp), %rdx
	leaq	-368(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB17:
	call	_ZN10SaveRestor9saveChatsESt6vectorISt10shared_ptrI4ChatESaIS3_EE@PLT
.LEHE17:
	leaq	-496(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EED1Ev
	leaq	-368(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN10SaveRestorD1Ev@PLT
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L67
	jmp	.L72
.L70:
	endbr64
	movq	%rax, %rbx
	leaq	-464(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10filesystem7__cxx114pathD1Ev
	jmp	.L64
.L69:
	endbr64
	movq	%rax, %rbx
.L64:
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10filesystem7__cxx114pathD1Ev
	jmp	.L65
.L71:
	endbr64
	movq	%rax, %rbx
	leaq	-496(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EED1Ev
	jmp	.L65
.L68:
	endbr64
	movq	%rax, %rbx
.L65:
	leaq	-368(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN10SaveRestorD1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB18:
	call	_Unwind_Resume@PLT
.LEHE18:
.L72:
	call	__stack_chk_fail@PLT
.L67:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4813:
	.section	.gcc_except_table._ZN5Chats8savedataEv,"aG",@progbits,_ZN5Chats8savedataEv,comdat
.LLSDA4813:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4813-.LLSDACSB4813
.LLSDACSB4813:
	.uleb128 .LEHB12-.LFB4813
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB13-.LFB4813
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L68-.LFB4813
	.uleb128 0
	.uleb128 .LEHB14-.LFB4813
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L69-.LFB4813
	.uleb128 0
	.uleb128 .LEHB15-.LFB4813
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L70-.LFB4813
	.uleb128 0
	.uleb128 .LEHB16-.LFB4813
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L68-.LFB4813
	.uleb128 0
	.uleb128 .LEHB17-.LFB4813
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L71-.LFB4813
	.uleb128 0
	.uleb128 .LEHB18-.LFB4813
	.uleb128 .LEHE18-.LEHB18
	.uleb128 0
	.uleb128 0
.LLSDACSE4813:
	.section	.text._ZN5Chats8savedataEv,"axG",@progbits,_ZN5Chats8savedataEv,comdat
	.size	_ZN5Chats8savedataEv, .-_ZN5Chats8savedataEv
	.section	.text._ZN4UserC2ERKS_,"axG",@progbits,_ZN4UserC5ERKS_,comdat
	.align 2
	.weak	_ZN4UserC2ERKS_
	.type	_ZN4UserC2ERKS_, @function
_ZN4UserC2ERKS_:
.LFB4816:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4816
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB19:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_@PLT
.LEHE19:
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movq	-32(%rbp), %rdx
	addq	$32, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB20:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_@PLT
.LEHE20:
	movq	-32(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 64(%rax)
	movq	-24(%rbp), %rax
	addq	$72, %rax
	movq	-32(%rbp), %rdx
	addq	$72, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB21:
	call	_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EEC1ERKS4_
.LEHE21:
	movq	-24(%rbp), %rax
	addq	$96, %rax
	movq	-32(%rbp), %rdx
	addq	$96, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB22:
	call	_ZNSt6vectorIiSaIiEEC1ERKS1_
.LEHE22:
	jmp	.L80
.L79:
	endbr64
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	addq	$72, %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EED1Ev
	jmp	.L75
.L78:
	endbr64
	movq	%rax, %rbx
.L75:
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L76
.L77:
	endbr64
	movq	%rax, %rbx
.L76:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB23:
	call	_Unwind_Resume@PLT
.LEHE23:
.L80:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4816:
	.section	.gcc_except_table._ZN4UserC2ERKS_,"aG",@progbits,_ZN4UserC5ERKS_,comdat
.LLSDA4816:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4816-.LLSDACSB4816
.LLSDACSB4816:
	.uleb128 .LEHB19-.LFB4816
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB20-.LFB4816
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L77-.LFB4816
	.uleb128 0
	.uleb128 .LEHB21-.LFB4816
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L78-.LFB4816
	.uleb128 0
	.uleb128 .LEHB22-.LFB4816
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L79-.LFB4816
	.uleb128 0
	.uleb128 .LEHB23-.LFB4816
	.uleb128 .LEHE23-.LEHB23
	.uleb128 0
	.uleb128 0
.LLSDACSE4816:
	.section	.text._ZN4UserC2ERKS_,"axG",@progbits,_ZN4UserC5ERKS_,comdat
	.size	_ZN4UserC2ERKS_, .-_ZN4UserC2ERKS_
	.weak	_ZN4UserC1ERKS_
	.set	_ZN4UserC1ERKS_,_ZN4UserC2ERKS_
	.section	.rodata
.LC4:
	.string	"\320\236\320\261\321\211\320\270\320\271"
.LC5:
	.string	"_"
	.align 8
.LC6:
	.string	"\320\220\320\272\321\202\320\270\320\262\320\275\321\213\320\271 \320\277\320\276\320\273\321\214\320\267\320\276\320\262\320\260\321\202\320\265\320\273\321\214: "
	.align 8
.LC7:
	.string	"\320\222\320\262\320\265\320\264\320\270\321\202\320\265 \320\272\320\276\320\274\320\274\320\260\320\275\320\264\321\203 (0 - \320\277\320\276\320\274\320\276\321\211)"
.LC8:
	.string	"0 - \320\277\320\276\320\274\320\276\321\211\321\214"
	.align 8
.LC9:
	.string	"1 - \320\262\321\213\320\262\320\265\321\201\321\202\320\270 \320\264\320\260\320\275\320\275\321\213\320\265 \321\202\320\265\320\272\321\203\321\211\320\265\320\263\320\276 \320\277\320\276\320\273\321\214\320\267\320\276\320\262\320\260\321\202\320\265\320\273\321\217"
	.align 8
.LC10:
	.string	"2 - \320\260\320\262\321\202\320\276\321\200\320\270\320\267\320\276\320\262\320\260\321\202\321\214\321\201\321\217"
	.align 8
.LC11:
	.string	"3 - \320\275\320\260\320\277\320\270\321\201\320\260\321\202\321\214 \321\201\320\276\320\276\320\261\321\211\320\265\320\275\320\270\320\265"
	.align 8
.LC12:
	.string	"8 - \320\262\321\213\320\271\321\202\320\270 \320\270\320\267 \321\203\321\207\321\221\321\202\320\275\320\276\320\271 \320\267\320\260\320\277\320\270\321\201\320\270"
	.align 8
.LC13:
	.string	"9 - \320\262\321\213\320\271\321\202\320\270 \320\270\320\267 \320\277\321\200\320\276\320\263\321\200\320\260\320\274\320\274\321\213"
	.align 8
.LC14:
	.string	"\320\230\320\274\321\217 \320\277\320\276\320\273\321\214\320\267\320\276\320\262\320\260\321\202\320\265\320\273\321\217 \320\264\320\276\320\273\320\266\320\275\320\276 \321\201\320\276\321\201\321\202\320\276\321\217\321\202\321\214 \320\270\320\267 \320\276\320\264\320\275\320\276\320\263\320\276 \321\201\320\273\320\276\320\262\320\260"
	.align 8
.LC15:
	.string	"\320\235\320\265\321\202 \321\202\320\260\320\272\320\276\320\271 \320\272\320\276\320\274\320\260\320\275\320\264\321\213: "
	.section	.text._ZN5Chats8mainmenuEv,"axG",@progbits,_ZN5Chats8mainmenuEv,comdat
	.align 2
	.weak	_ZN5Chats8mainmenuEv
	.type	_ZN5Chats8mainmenuEv, @function
_ZN5Chats8mainmenuEv:
.LFB4814:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4814
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$248, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -248(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movb	$0, -225(%rbp)
	movq	-248(%rbp), %rax
	addq	$120, %rax
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorI4UserSaIS0_EE5beginEv
	movq	%rax, -224(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorI4UserSaIS0_EE3endEv
	movq	%rax, -192(%rbp)
	jmp	.L82
.L84:
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4UserSt6vectorIS1_SaIS1_EEEdeEv
	movq	%rax, %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB24:
	call	_ZN4UserC1ERKS_
.LEHE24:
	leaq	-176(%rbp), %rax
	leaq	-144(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB25:
	call	_ZNK4User8getLoginB5cxx11Ev@PLT
.LEHE25:
	leaq	-176(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	movl	%eax, %ebx
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	testb	%bl, %bl
	je	.L83
	movb	$1, -225(%rbp)
.L83:
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4UserD1Ev@PLT
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIP4UserSt6vectorIS1_SaIS1_EEEppEv
.L82:
	leaq	-192(%rbp), %rdx
	leaq	-224(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxneIP4UserSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	testb	%al, %al
	jne	.L84
	movzbl	-225(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L86
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev@PLT
	leaq	-224(%rbp), %rdx
	leaq	-176(%rbp), %rax
	leaq	.LC4(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB26:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE26:
	leaq	-176(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB27:
	call	_ZN4ChatC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.LEHE27:
	leaq	-192(%rbp), %rax
	leaq	-144(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB28:
	call	_ZSt11make_sharedI4ChatJS0_EESt10shared_ptrIT_EDpOT0_
.LEHE28:
	movq	-248(%rbp), %rax
	leaq	432(%rax), %rdx
	leaq	-192(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt10shared_ptrI4ChatEaSEOS1_
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10shared_ptrI4ChatED1Ev
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4ChatD1Ev@PLT
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	movq	-248(%rbp), %rax
	leaq	296(%rax), %rbx
	movq	-248(%rbp), %rax
	addq	$120, %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI4UserSaIS0_EE4sizeEv
	addq	$1, %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB29:
	call	_ZN4User5setIDEy@PLT
.LEHE29:
	movq	-248(%rbp), %rax
	leaq	296(%rax), %rbx
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev@PLT
	leaq	-192(%rbp), %rdx
	leaq	-144(%rbp), %rax
	leaq	.LC4(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB30:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE30:
	leaq	-144(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB31:
	call	_ZN4User8setLoginERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.LEHE31:
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	movq	-248(%rbp), %rax
	leaq	296(%rax), %rbx
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev@PLT
	leaq	-192(%rbp), %rdx
	leaq	-144(%rbp), %rax
	leaq	.LC5(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB32:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE32:
	leaq	-144(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB33:
	call	_ZN4User7setPassERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.LEHE33:
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	movq	-248(%rbp), %rax
	addq	$120, %rax
	movq	-248(%rbp), %rdx
	addq	$296, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB34:
	call	_ZNSt6vectorI4UserSaIS0_EE9push_backERKS0_
	jmp	.L86
.L96:
	movq	-248(%rbp), %rax
	addq	$416, %rax
	movq	%rax, %rdi
	call	_ZNKSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEcvbEv
	testb	%al, %al
	je	.L87
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	-248(%rbp), %rax
	addq	$416, %rax
	movq	%rax, %rdi
	call	_ZNKSt19__shared_ptr_accessI4UserLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	movq	%rax, %rdi
	call	_ZNK4User9printUserEv@PLT
.L87:
	leaq	.LC7(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movq	-248(%rbp), %rax
	addq	$80, %rax
	movq	%rax, %rsi
	leaq	_ZSt3cin(%rip), %rax
	movq	%rax, %rdi
	call	_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
.LEHE34:
	movq	-248(%rbp), %rax
	addq	$80, %rax
	movl	$10, %edx
	movl	$0, %esi
	movq	%rax, %rdi
.LEHB35:
	call	_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi
.LEHE35:
	movq	-248(%rbp), %rdx
	movl	%eax, 72(%rdx)
.L107:
	movq	-248(%rbp), %rax
	movl	72(%rax), %eax
	cmpl	$9, %eax
	ja	.L88
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L90(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L90(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata._ZN5Chats8mainmenuEv,"aG",@progbits,_ZN5Chats8mainmenuEv,comdat
	.align 4
	.align 4
.L90:
	.long	.L95-.L90
	.long	.L94-.L90
	.long	.L93-.L90
	.long	.L92-.L90
	.long	.L88-.L90
	.long	.L88-.L90
	.long	.L88-.L90
	.long	.L88-.L90
	.long	.L91-.L90
	.long	.L89-.L90
	.section	.text._ZN5Chats8mainmenuEv,"axG",@progbits,_ZN5Chats8mainmenuEv,comdat
.L95:
	leaq	.LC8(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
.LEHB36:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	.LC9(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	.LC10(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	.LC11(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	.LC12(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	.LC13(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	.LC14(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	jmp	.L86
.L94:
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Chats8userinfoEv
	jmp	.L86
.L93:
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Chats5logonEv
	jmp	.L86
.L92:
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Chats5writeEv
	jmp	.L86
.L91:
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Chats6logoffEv
	jmp	.L86
.L89:
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Chats4exitEv
	jmp	.L86
.L88:
	leaq	.LC15(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	-248(%rbp), %rax
	movl	72(%rax), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEi@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
.LEHE36:
	nop
.L86:
	movq	-248(%rbp), %rax
	movzbl	(%rax), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L96
	jmp	.L125
.L113:
	endbr64
	movq	%rax, %rbx
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4UserD1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB37:
	call	_Unwind_Resume@PLT
.L116:
	endbr64
	movq	%rax, %rbx
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4ChatD1Ev@PLT
	jmp	.L99
.L115:
	endbr64
	movq	%rax, %rbx
.L99:
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L100
.L114:
	endbr64
	movq	%rax, %rbx
.L100:
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.L118:
	endbr64
	movq	%rax, %rbx
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L102
.L117:
	endbr64
	movq	%rax, %rbx
.L102:
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.L120:
	endbr64
	movq	%rax, %rbx
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L104
.L119:
	endbr64
	movq	%rax, %rbx
.L104:
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.L121:
	endbr64
	cmpq	$1, %rdx
	je	.L106
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE37:
.L106:
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	movq	%rax, -208(%rbp)
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
.LEHB38:
	call	_ZNSolsEPFRSoS_E@PLT
	movq	%rax, %rbx
	movq	-208(%rbp), %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movq	(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
.LEHE38:
	movq	-248(%rbp), %rax
	movl	$0, 72(%rax)
	call	__cxa_end_catch@PLT
	jmp	.L107
.L122:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB39:
	call	_Unwind_Resume@PLT
.L123:
	endbr64
	cmpq	$1, %rdx
	je	.L110
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE39:
.L110:
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	movq	%rax, -200(%rbp)
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
.LEHB40:
	call	_ZNSolsEPFRSoS_E@PLT
	movq	%rax, %rbx
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movq	(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
.LEHE40:
	call	__cxa_end_catch@PLT
	jmp	.L86
.L124:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB41:
	call	_Unwind_Resume@PLT
.LEHE41:
.L125:
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L112
	call	__stack_chk_fail@PLT
.L112:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4814:
	.section	.gcc_except_table._ZN5Chats8mainmenuEv,"aG",@progbits,_ZN5Chats8mainmenuEv,comdat
	.align 4
.LLSDA4814:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT4814-.LLSDATTD4814
.LLSDATTD4814:
	.byte	0x1
	.uleb128 .LLSDACSE4814-.LLSDACSB4814
.LLSDACSB4814:
	.uleb128 .LEHB24-.LFB4814
	.uleb128 .LEHE24-.LEHB24
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB25-.LFB4814
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L113-.LFB4814
	.uleb128 0
	.uleb128 .LEHB26-.LFB4814
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L114-.LFB4814
	.uleb128 0
	.uleb128 .LEHB27-.LFB4814
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L115-.LFB4814
	.uleb128 0
	.uleb128 .LEHB28-.LFB4814
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L116-.LFB4814
	.uleb128 0
	.uleb128 .LEHB29-.LFB4814
	.uleb128 .LEHE29-.LEHB29
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB30-.LFB4814
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L117-.LFB4814
	.uleb128 0
	.uleb128 .LEHB31-.LFB4814
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L118-.LFB4814
	.uleb128 0
	.uleb128 .LEHB32-.LFB4814
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L119-.LFB4814
	.uleb128 0
	.uleb128 .LEHB33-.LFB4814
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L120-.LFB4814
	.uleb128 0
	.uleb128 .LEHB34-.LFB4814
	.uleb128 .LEHE34-.LEHB34
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB35-.LFB4814
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L121-.LFB4814
	.uleb128 0x1
	.uleb128 .LEHB36-.LFB4814
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L123-.LFB4814
	.uleb128 0x1
	.uleb128 .LEHB37-.LFB4814
	.uleb128 .LEHE37-.LEHB37
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB38-.LFB4814
	.uleb128 .LEHE38-.LEHB38
	.uleb128 .L122-.LFB4814
	.uleb128 0
	.uleb128 .LEHB39-.LFB4814
	.uleb128 .LEHE39-.LEHB39
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB40-.LFB4814
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L124-.LFB4814
	.uleb128 0
	.uleb128 .LEHB41-.LFB4814
	.uleb128 .LEHE41-.LEHB41
	.uleb128 0
	.uleb128 0
.LLSDACSE4814:
	.byte	0x1
	.byte	0
	.align 4
	.long	DW.ref._ZTISt9exception-.
.LLSDATT4814:
	.section	.text._ZN5Chats8mainmenuEv,"axG",@progbits,_ZN5Chats8mainmenuEv,comdat
	.size	_ZN5Chats8mainmenuEv, .-_ZN5Chats8mainmenuEv
	.section	.rodata
	.align 8
.LC16:
	.string	"\320\247\320\260\321\202\321\213 \320\260\320\272\321\202\320\270\320\262\320\275\320\276\320\263\320\276 \320\277\320\276\320\273\321\214\320\267\320\276\320\262\320\260\321\202\320\265\320\273\321\217: "
	.align 8
.LC17:
	.string	"\320\227\320\260\321\200\320\265\320\263\320\270\321\201\321\202\321\200\320\270\321\200\320\276\320\262\320\260\320\275\320\275\321\213\320\265 \320\277\320\276\320\273\321\214\320\267\320\276\320\262\320\260\321\202\320\265\320\273\320\270: "
	.align 8
.LC18:
	.string	"\320\235\320\265\321\202 \320\267\320\260\321\200\320\265\320\263\320\270\321\201\321\202\321\200\320\270\321\200\320\276\320\262\320\260\320\275\320\275\321\213\321\205 \320\277\320\276\320\273\321\214\320\267\320\276\320\262\320\260\321\202\320\265\320\273\320\265\320\271! "
	.section	.text._ZN5Chats8userinfoEv,"axG",@progbits,_ZN5Chats8userinfoEv,comdat
	.align 2
	.weak	_ZN5Chats8userinfoEv
	.type	_ZN5Chats8userinfoEv, @function
_ZN5Chats8userinfoEv:
.LFB4818:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	addq	$416, %rax
	movq	%rax, %rdi
	call	_ZNKSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEcvbEv
	testb	%al, %al
	je	.L127
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	-56(%rbp), %rax
	addq	$416, %rax
	movq	%rax, %rdi
	call	_ZNKSt19__shared_ptr_accessI4UserLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	movq	%rax, %rdi
	call	_ZNK4User9printUserEv@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	.LC16(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movq	-56(%rbp), %rax
	addq	$416, %rax
	movq	%rax, %rdi
	call	_ZNKSt19__shared_ptr_accessI4UserLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	movq	%rax, %rdi
	call	_ZN4User14printChatNamesEv@PLT
.L127:
	movq	-56(%rbp), %rax
	addq	$120, %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI4UserSaIS0_EE4sizeEv
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	je	.L128
	leaq	.LC17(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movq	-56(%rbp), %rax
	addq	$120, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorI4UserSaIS0_EE5beginEv
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorI4UserSaIS0_EE3endEv
	movq	%rax, -32(%rbp)
	jmp	.L129
.L130:
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4UserSt6vectorIS1_SaIS1_EEEdeEv
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK4User9printUserEv@PLT
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIP4UserSt6vectorIS1_SaIS1_EEEppEv
.L129:
	leaq	-32(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxneIP4UserSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	testb	%al, %al
	jne	.L130
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	jmp	.L133
.L128:
	leaq	.LC18(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
.L133:
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L132
	call	__stack_chk_fail@PLT
.L132:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4818:
	.size	_ZN5Chats8userinfoEv, .-_ZN5Chats8userinfoEv
	.section	.rodata
.LC19:
	.string	"\320\220\320\272\321\202\320\270\320\262\320\275\321\213\320\271 \321\207\320\260\321\202: "
	.align 8
.LC20:
	.string	"\320\222\320\262\320\265\320\264\320\270\321\202\320\265 \320\262\320\260\321\210\320\265 \320\270\320\274\321\217"
.LC21:
	.string	"\320\222\320\262\320\265\320\264\320\270\321\202\320\265 \320\277\320\260\321\200\320\276\320\273\321\214: "
.LC22:
	.string	"\320\222\321\213 \320\262\320\276\321\210\320\273\320\270 \320\272\320\260\320\272: "
	.align 8
.LC23:
	.string	"\320\222\321\213 \320\262\320\262\320\265\320\273\320\270 \320\275\320\265\320\262\320\265\321\200\320\275\321\213\320\271 \320\277\320\260\321\200\320\276\320\273\321\214: "
	.align 8
.LC24:
	.string	"\320\235\320\265\321\202 \321\202\320\260\320\272\320\276\320\263\320\276 \320\277\320\276\320\273\321\214\320\267\320\276\320\262\320\260\321\202\320\265\320\273\321\217"
	.align 8
.LC25:
	.string	"\320\227\320\260\321\200\320\265\320\263\320\270\321\201\321\202\321\200\320\270\321\200\320\276\320\262\320\260\321\202\321\214 \320\277\320\276\320\273\321\214\320\267\320\276\320\262\320\260\321\202\320\265\320\273\321\217 "
.LC26:
	.string	"? (y/n)"
	.align 8
.LC27:
	.string	"\320\222\320\262\320\265\320\264\320\270\321\202\320\265 \320\262\320\260\321\210 \320\277\320\260\321\200\320\276\320\273\321\214: "
	.section	.text._ZN5Chats5logonEv,"axG",@progbits,_ZN5Chats5logonEv,comdat
	.align 2
	.weak	_ZN5Chats5logonEv
	.type	_ZN5Chats5logonEv, @function
_ZN5Chats5logonEv:
.LFB4819:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4819
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$152, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -152(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-152(%rbp), %rax
	addq	$416, %rax
	movq	%rax, %rdi
	call	_ZNKSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEcvbEv
	testb	%al, %al
	je	.L135
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
.LEHB42:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	-152(%rbp), %rax
	addq	$416, %rax
	movq	%rax, %rdi
	call	_ZNKSt19__shared_ptr_accessI4UserLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	movq	%rax, %rdi
	call	_ZNK4User9printUserEv@PLT
.L135:
	movq	-152(%rbp), %rax
	addq	$432, %rax
	movq	%rax, %rdi
	call	_ZNKSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEcvbEv
	testb	%al, %al
	je	.L136
	leaq	.LC19(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	-152(%rbp), %rax
	addq	$432, %rax
	movq	%rax, %rdi
	call	_ZNKSt19__shared_ptr_accessI4ChatLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	movq	%rax, %rdi
	call	_ZNK4Chat13printChatNameEv@PLT
.L136:
	leaq	.LC20(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movq	-152(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rsi
	leaq	_ZSt3cin(%rip), %rax
	movq	%rax, %rdi
	call	_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
	movq	-152(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movq	-152(%rbp), %rax
	addq	$296, %rax
	movq	-152(%rbp), %rdx
	addq	$8, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN4User8setLoginERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
	movl	$-1, -132(%rbp)
	movq	$0, -128(%rbp)
	jmp	.L137
.L140:
	movq	-152(%rbp), %rax
	leaq	296(%rax), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNK4User8getLoginB5cxx11Ev@PLT
.LEHE42:
	movq	-152(%rbp), %rax
	leaq	120(%rax), %rdx
	movq	-128(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorI4UserSaIS0_EEixEm
	movq	%rax, %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB43:
	call	_ZNK4User8getLoginB5cxx11Ev@PLT
.LEHE43:
	leaq	-64(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSteqIcEN9__gnu_cxx11__enable_ifIXsrSt9__is_charIT_E7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS3_St11char_traitsIS3_ESaIS3_EEESE_
	movl	%eax, %ebx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	testb	%bl, %bl
	je	.L138
	movq	-128(%rbp), %rax
	movl	%eax, -132(%rbp)
	jmp	.L139
.L138:
	addq	$1, -128(%rbp)
.L137:
	movq	-152(%rbp), %rax
	addq	$120, %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI4UserSaIS0_EE4sizeEv
	cmpq	%rax, -128(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L140
.L139:
	cmpl	$0, -132(%rbp)
	js	.L141
	leaq	.LC21(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
.LEHB44:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
.LEHE44:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@PLT
	leaq	-96(%rbp), %rax
	movq	%rax, %rsi
	leaq	_ZSt3cin(%rip), %rax
	movq	%rax, %rdi
.LEHB45:
	call	_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
	movq	-152(%rbp), %rax
	leaq	120(%rax), %rdx
	movl	-132(%rbp), %eax
	cltq
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorI4UserSaIS0_EEixEm
	movq	%rax, %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNK4User7getPassB5cxx11Ev@PLT
	leaq	-96(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSteqIcEN9__gnu_cxx11__enable_ifIXsrSt9__is_charIT_E7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS3_St11char_traitsIS3_ESaIS3_EEESE_
	movl	%eax, %ebx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	testb	%bl, %bl
	je	.L142
	movq	-152(%rbp), %rax
	leaq	120(%rax), %rdx
	movl	-132(%rbp), %eax
	cltq
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorI4UserSaIS0_EEixEm
	movq	%rax, %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt11make_sharedI4UserJRS0_EESt10shared_ptrIT_EDpOT0_
	movq	-152(%rbp), %rax
	leaq	416(%rax), %rdx
	leaq	-112(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt10shared_ptrI4UserEaSEOS1_
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10shared_ptrI4UserED1Ev
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	-152(%rbp), %rax
	addq	$416, %rax
	movq	%rax, %rdi
	call	_ZNKSt19__shared_ptr_accessI4UserLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	movq	%rax, %rdi
	call	_ZNK4User9printUserEv@PLT
	jmp	.L143
.L142:
	leaq	.LC23(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
.LEHE45:
.L143:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L159
.L141:
	leaq	.LC24(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
.LEHB46:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	.LC25(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rbx
	movq	-152(%rbp), %rax
	leaq	296(%rax), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNK4User8getLoginB5cxx11Ev@PLT
.LEHE46:
	leaq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB47:
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
	movq	%rax, %rdx
	leaq	.LC26(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
.LEHE47:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	-152(%rbp), %rax
	addq	$112, %rax
	movq	%rax, %rsi
	leaq	_ZSt3cin(%rip), %rax
	movq	%rax, %rdi
.LEHB48:
	call	_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_@PLT
	movq	-152(%rbp), %rax
	movzbl	112(%rax), %eax
	cmpb	$121, %al
	je	.L145
	movq	-152(%rbp), %rax
	movzbl	112(%rax), %eax
	cmpb	$89, %al
	jne	.L159
.L145:
	leaq	.LC27(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movq	-152(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rsi
	leaq	_ZSt3cin(%rip), %rax
	movq	%rax, %rdi
	call	_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
	movq	-152(%rbp), %rax
	addq	$296, %rax
	movq	-152(%rbp), %rdx
	addq	$40, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN4User7setPassERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
	movq	-152(%rbp), %rax
	leaq	296(%rax), %rbx
	movq	-152(%rbp), %rax
	addq	$120, %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI4UserSaIS0_EE4sizeEv
	addq	$1, %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN4User5setIDEy@PLT
	movq	-152(%rbp), %rax
	addq	$120, %rax
	movq	-152(%rbp), %rdx
	addq	$296, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorI4UserSaIS0_EE9push_backERKS0_
	movl	$-1, -132(%rbp)
	movq	$0, -120(%rbp)
	jmp	.L146
.L149:
	movq	-152(%rbp), %rax
	leaq	296(%rax), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNK4User8getLoginB5cxx11Ev@PLT
.LEHE48:
	movq	-152(%rbp), %rax
	leaq	120(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorI4UserSaIS0_EEixEm
	movq	%rax, %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB49:
	call	_ZNK4User8getLoginB5cxx11Ev@PLT
.LEHE49:
	leaq	-64(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSteqIcEN9__gnu_cxx11__enable_ifIXsrSt9__is_charIT_E7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS3_St11char_traitsIS3_ESaIS3_EEESE_
	movl	%eax, %ebx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	testb	%bl, %bl
	je	.L147
	movq	-120(%rbp), %rax
	movl	%eax, -132(%rbp)
	jmp	.L148
.L147:
	addq	$1, -120(%rbp)
.L146:
	movq	-152(%rbp), %rax
	addq	$120, %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI4UserSaIS0_EE4sizeEv
	cmpq	%rax, -120(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L149
.L148:
	cmpl	$0, -132(%rbp)
	js	.L159
	movq	-152(%rbp), %rax
	leaq	120(%rax), %rdx
	movl	-132(%rbp), %eax
	cltq
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorI4UserSaIS0_EEixEm
	movq	%rax, %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB50:
	call	_ZSt11make_sharedI4UserJRS0_EESt10shared_ptrIT_EDpOT0_
	movq	-152(%rbp), %rax
	leaq	416(%rax), %rdx
	leaq	-112(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt10shared_ptrI4UserEaSEOS1_
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10shared_ptrI4UserED1Ev
	jmp	.L159
.L155:
	endbr64
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.L156:
	endbr64
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.L157:
	endbr64
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.L158:
	endbr64
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE50:
.L159:
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L154
	call	__stack_chk_fail@PLT
.L154:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4819:
	.section	.gcc_except_table._ZN5Chats5logonEv,"aG",@progbits,_ZN5Chats5logonEv,comdat
.LLSDA4819:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4819-.LLSDACSB4819
.LLSDACSB4819:
	.uleb128 .LEHB42-.LFB4819
	.uleb128 .LEHE42-.LEHB42
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB43-.LFB4819
	.uleb128 .LEHE43-.LEHB43
	.uleb128 .L155-.LFB4819
	.uleb128 0
	.uleb128 .LEHB44-.LFB4819
	.uleb128 .LEHE44-.LEHB44
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB45-.LFB4819
	.uleb128 .LEHE45-.LEHB45
	.uleb128 .L156-.LFB4819
	.uleb128 0
	.uleb128 .LEHB46-.LFB4819
	.uleb128 .LEHE46-.LEHB46
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB47-.LFB4819
	.uleb128 .LEHE47-.LEHB47
	.uleb128 .L157-.LFB4819
	.uleb128 0
	.uleb128 .LEHB48-.LFB4819
	.uleb128 .LEHE48-.LEHB48
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB49-.LFB4819
	.uleb128 .LEHE49-.LEHB49
	.uleb128 .L158-.LFB4819
	.uleb128 0
	.uleb128 .LEHB50-.LFB4819
	.uleb128 .LEHE50-.LEHB50
	.uleb128 0
	.uleb128 0
.LLSDACSE4819:
	.section	.text._ZN5Chats5logonEv,"axG",@progbits,_ZN5Chats5logonEv,comdat
	.size	_ZN5Chats5logonEv, .-_ZN5Chats5logonEv
	.section	.text._ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEaSERKS3_,"axG",@progbits,_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEaSERKS3_,comdat
	.align 2
	.weak	_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEaSERKS3_
	.type	_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEaSERKS3_, @function
_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEaSERKS3_:
.LFB4823:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4823:
	.size	_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEaSERKS3_, .-_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEaSERKS3_
	.section	.text._ZNSt10shared_ptrI4ChatEaSERKS1_,"axG",@progbits,_ZNSt10shared_ptrI4ChatEaSERKS1_,comdat
	.align 2
	.weak	_ZNSt10shared_ptrI4ChatEaSERKS1_
	.type	_ZNSt10shared_ptrI4ChatEaSERKS1_, @function
_ZNSt10shared_ptrI4ChatEaSERKS1_:
.LFB4822:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEaSERKS3_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4822:
	.size	_ZNSt10shared_ptrI4ChatEaSERKS1_, .-_ZNSt10shared_ptrI4ChatEaSERKS1_
	.section	.text._ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEC2ERKS3_,"axG",@progbits,_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEC5ERKS3_,comdat
	.align 2
	.weak	_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEC2ERKS3_
	.type	_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEC2ERKS3_, @function
_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEC2ERKS3_:
.LFB4827:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	-16(%rbp), %rdx
	addq	$8, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1ERKS2_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4827:
	.size	_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEC2ERKS3_, .-_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEC2ERKS3_
	.weak	_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEC1ERKS3_
	.set	_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEC1ERKS3_,_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEC2ERKS3_
	.section	.text._ZNSt10shared_ptrI4ChatEC2ERKS1_,"axG",@progbits,_ZNSt10shared_ptrI4ChatEC5ERKS1_,comdat
	.align 2
	.weak	_ZNSt10shared_ptrI4ChatEC2ERKS1_
	.type	_ZNSt10shared_ptrI4ChatEC2ERKS1_, @function
_ZNSt10shared_ptrI4ChatEC2ERKS1_:
.LFB4829:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEC2ERKS3_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4829:
	.size	_ZNSt10shared_ptrI4ChatEC2ERKS1_, .-_ZNSt10shared_ptrI4ChatEC2ERKS1_
	.weak	_ZNSt10shared_ptrI4ChatEC1ERKS1_
	.set	_ZNSt10shared_ptrI4ChatEC1ERKS1_,_ZNSt10shared_ptrI4ChatEC2ERKS1_
	.section	.rodata
	.align 8
.LC28:
	.string	"\320\222\321\213\320\261\320\265\321\200\320\270\321\202\320\265 \320\277\320\276\320\273\321\214\320\267\320\276\320\262\320\260\321\202\320\265\320\273\321\217 \320\264\320\273\321\217 \321\207\320\260\321\202\320\260 (\320\262\320\262\320\265\320\264\320\270\321\202\320\265 \320\275\320\276\320\274\320\265\321\200) "
	.align 8
.LC29:
	.string	"\320\237\320\276\320\273\321\214\320\267\320\276\320\262\320\260\321\202\320\265\320\273\321\214 \320\275\320\260\320\271\320\264\320\265\320\275: "
	.align 8
.LC30:
	.string	"\320\235\320\265\321\202 \321\202\320\260\320\272\320\276\320\263\320\276 \320\277\320\276\320\273\321\214\320\267\320\276\320\262\320\260\321\202\320\265\320\273\321\217! "
	.align 8
.LC31:
	.string	"\320\242\320\260\320\272\320\276\320\271 \321\207\320\260\321\202 \321\203\320\266\320\265 \321\201\321\203\321\211\320\265\321\201\321\202\320\262\321\203\320\265\321\202: "
	.align 8
.LC32:
	.string	"\320\222\320\262\320\265\320\264\320\270\321\202\320\265 \320\262\320\260\321\210\320\265 \321\201\320\276\320\276\320\261\321\211\320\265\320\275\320\270\320\265: "
	.align 8
.LC33:
	.string	"\320\222\321\213 \320\275\320\265 \320\267\320\260\321\200\320\265\320\263\320\270\321\201\321\202\321\200\320\270\321\200\320\276\320\262\320\260\320\275\321\213! "
	.section	.text._ZN5Chats5writeEv,"axG",@progbits,_ZN5Chats5writeEv,comdat
	.align 2
	.weak	_ZN5Chats5writeEv
	.type	_ZN5Chats5writeEv, @function
_ZN5Chats5writeEv:
.LFB4820:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4820
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$552, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -552(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-552(%rbp), %rax
	addq	$416, %rax
	movq	%rax, %rdi
	call	_ZNKSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEcvbEv
	testb	%al, %al
	je	.L167
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
.LEHB51:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	-552(%rbp), %rax
	addq	$416, %rax
	movq	%rax, %rdi
	call	_ZNKSt19__shared_ptr_accessI4UserLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	movq	%rax, %rdi
	call	_ZNK4User9printUserEv@PLT
	leaq	.LC17(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movq	-552(%rbp), %rax
	addq	$120, %rax
	movq	%rax, -488(%rbp)
	movq	-488(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorI4UserSaIS0_EE5beginEv
	movq	%rax, -520(%rbp)
	movq	-488(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorI4UserSaIS0_EE3endEv
	movq	%rax, -464(%rbp)
	jmp	.L168
.L169:
	leaq	-520(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4UserSt6vectorIS1_SaIS1_EEEdeEv
	movq	%rax, -472(%rbp)
	movq	-472(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK4User9printUserEv@PLT
.LEHE51:
	leaq	-520(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIP4UserSt6vectorIS1_SaIS1_EEEppEv
.L168:
	leaq	-464(%rbp), %rdx
	leaq	-520(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxneIP4UserSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	testb	%al, %al
	jne	.L169
	movl	$0, -536(%rbp)
	leaq	-448(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@PLT
	leaq	.LC28(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
.LEHB52:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	-448(%rbp), %rax
	movq	%rax, %rsi
	leaq	_ZSt3cin(%rip), %rax
	movq	%rax, %rdi
	call	_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
.LEHE52:
	leaq	-448(%rbp), %rax
	movl	$10, %edx
	movl	$0, %esi
	movq	%rax, %rdi
.LEHB53:
	call	_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi
.LEHE53:
	movl	%eax, -532(%rbp)
.L195:
	movq	$0, -512(%rbp)
	jmp	.L170
.L173:
	movq	-552(%rbp), %rax
	leaq	120(%rax), %rdx
	movq	-512(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorI4UserSaIS0_EEixEm
	movq	%rax, %rdi
.LEHB54:
	call	_ZNK4User5getIDEv@PLT
	movl	-532(%rbp), %edx
	movslq	%edx, %rdx
	cmpq	%rdx, %rax
	sete	%al
	testb	%al, %al
	je	.L171
	movq	-512(%rbp), %rax
	movl	%eax, -536(%rbp)
	jmp	.L172
.L171:
	addq	$1, -512(%rbp)
.L170:
	movq	-552(%rbp), %rax
	addq	$120, %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI4UserSaIS0_EE4sizeEv
	cmpq	%rax, -512(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L173
.L172:
	cmpl	$-1, -536(%rbp)
	je	.L174
	leaq	.LC29(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	-552(%rbp), %rax
	leaq	120(%rax), %rdx
	movl	-536(%rbp), %eax
	cltq
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorI4UserSaIS0_EEixEm
	movq	%rax, %rdi
	call	_ZNK4User9printUserEv@PLT
	jmp	.L175
.L174:
	leaq	.LC30(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
.LEHE54:
.L175:
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@PLT
	leaq	-384(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@PLT
	movq	-552(%rbp), %rax
	addq	$416, %rax
	movq	%rax, %rdi
	call	_ZNKSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEcvbEv
	testb	%al, %al
	je	.L176
	movq	-552(%rbp), %rax
	leaq	120(%rax), %rdx
	movl	-536(%rbp), %eax
	cltq
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorI4UserSaIS0_EEixEm
	movq	%rax, %rdx
	leaq	-352(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB55:
	call	_ZNK4User8getLoginB5cxx11Ev@PLT
	leaq	-352(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	movl	%eax, %ebx
	leaq	-352(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	testb	%bl, %bl
	je	.L177
	leaq	-416(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc@PLT
	jmp	.L178
.L177:
	movq	-552(%rbp), %rax
	addq	$416, %rax
	movq	%rax, %rdi
	call	_ZNKSt19__shared_ptr_accessI4UserLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	movq	%rax, %rdx
	leaq	-320(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNK4User8getLoginB5cxx11Ev@PLT
	leaq	-320(%rbp), %rdx
	leaq	-416(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_@PLT
	leaq	-320(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	-552(%rbp), %rax
	leaq	120(%rax), %rdx
	movl	-536(%rbp), %eax
	cltq
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorI4UserSaIS0_EEixEm
	movq	%rax, %rdx
	leaq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNK4User8getLoginB5cxx11Ev@PLT
.LEHE55:
	leaq	-192(%rbp), %rdx
	leaq	-416(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB56:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_@PLT
.LEHE56:
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.L178:
	movq	-552(%rbp), %rax
	leaq	120(%rax), %rdx
	movl	-536(%rbp), %eax
	cltq
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorI4UserSaIS0_EEixEm
	movq	%rax, %rdx
	leaq	-288(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB57:
	call	_ZNK4User8getLoginB5cxx11Ev@PLT
	leaq	-288(%rbp), %rdx
	leaq	-384(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_@PLT
	leaq	-288(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	-552(%rbp), %rax
	addq	$416, %rax
	movq	%rax, %rdi
	call	_ZNKSt19__shared_ptr_accessI4UserLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	movq	%rax, %rdx
	leaq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNK4User8getLoginB5cxx11Ev@PLT
.LEHE57:
	leaq	-192(%rbp), %rdx
	leaq	-384(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB58:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_@PLT
.LEHE58:
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.L176:
	movl	$-1, -528(%rbp)
	movq	$0, -504(%rbp)
	jmp	.L179
.L182:
	movq	-552(%rbp), %rax
	leaq	144(%rax), %rdx
	movq	-504(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EEixEm
	movq	%rax, %rdi
	call	_ZNKSt19__shared_ptr_accessI4ChatLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	movq	%rax, %rdx
	leaq	-256(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB59:
	call	_ZNK4Chat11getChatNameB5cxx11Ev@PLT
	leaq	-416(%rbp), %rdx
	leaq	-256(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSteqIcEN9__gnu_cxx11__enable_ifIXsrSt9__is_charIT_E7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS3_St11char_traitsIS3_ESaIS3_EEESE_
	movl	%eax, %ebx
	leaq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	testb	%bl, %bl
	je	.L180
	movq	-504(%rbp), %rax
	movl	%eax, -528(%rbp)
	jmp	.L181
.L180:
	addq	$1, -504(%rbp)
.L179:
	movq	-552(%rbp), %rax
	addq	$144, %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorISt10shared_ptrI4ChatESaIS2_EE4sizeEv
	cmpq	%rax, -504(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L182
.L181:
	movl	$-1, -524(%rbp)
	movq	$0, -496(%rbp)
	jmp	.L183
.L186:
	movq	-552(%rbp), %rax
	leaq	144(%rax), %rdx
	movq	-496(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EEixEm
	movq	%rax, %rdi
	call	_ZNKSt19__shared_ptr_accessI4ChatLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	movq	%rax, %rdx
	leaq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNK4Chat11getChatNameB5cxx11Ev@PLT
	leaq	-384(%rbp), %rdx
	leaq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSteqIcEN9__gnu_cxx11__enable_ifIXsrSt9__is_charIT_E7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS3_St11char_traitsIS3_ESaIS3_EEESE_
	movl	%eax, %ebx
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	testb	%bl, %bl
	je	.L184
	movq	-496(%rbp), %rax
	movl	%eax, -524(%rbp)
	jmp	.L185
.L184:
	addq	$1, -496(%rbp)
.L183:
	movq	-552(%rbp), %rax
	addq	$144, %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorISt10shared_ptrI4ChatESaIS2_EE4sizeEv
	cmpq	%rax, -496(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L186
.L185:
	cmpl	$-1, -528(%rbp)
	je	.L187
	movq	-552(%rbp), %rax
	leaq	144(%rax), %rdx
	movl	-528(%rbp), %eax
	cltq
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EEixEm
	movq	%rax, %rdx
	movq	-552(%rbp), %rax
	addq	$432, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt10shared_ptrI4ChatEaSERKS1_
	leaq	.LC31(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rbx
	movq	-552(%rbp), %rax
	addq	$432, %rax
	movq	%rax, %rdi
	call	_ZNKSt19__shared_ptr_accessI4ChatLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	movq	%rax, %rdx
	leaq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNK4Chat11getChatNameB5cxx11Ev@PLT
.LEHE59:
	leaq	-192(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB60:
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
.LEHE60:
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	-552(%rbp), %rax
	addq	$432, %rax
	movq	%rax, %rdi
	call	_ZNKSt19__shared_ptr_accessI4ChatLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	movq	%rax, %rdi
.LEHB61:
	call	_ZN4Chat12printMessageEv@PLT
	jmp	.L188
.L187:
	cmpl	$-1, -524(%rbp)
	je	.L189
	movq	-552(%rbp), %rax
	leaq	144(%rax), %rdx
	movl	-524(%rbp), %eax
	cltq
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EEixEm
	movq	%rax, %rdx
	movq	-552(%rbp), %rax
	addq	$432, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt10shared_ptrI4ChatEaSERKS1_
	leaq	.LC31(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rbx
	movq	-552(%rbp), %rax
	addq	$432, %rax
	movq	%rax, %rdi
	call	_ZNKSt19__shared_ptr_accessI4ChatLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	movq	%rax, %rdx
	leaq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNK4Chat11getChatNameB5cxx11Ev@PLT
.LEHE61:
	leaq	-192(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB62:
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
.LEHE62:
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	-552(%rbp), %rax
	addq	$432, %rax
	movq	%rax, %rdi
	call	_ZNKSt19__shared_ptr_accessI4ChatLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	movq	%rax, %rdi
.LEHB63:
	call	_ZN4Chat12printMessageEv@PLT
	jmp	.L188
.L189:
	leaq	-464(%rbp), %rax
	leaq	-416(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt11make_sharedI4ChatJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt10shared_ptrIT_EDpOT0_
	movq	-552(%rbp), %rax
	leaq	432(%rax), %rdx
	leaq	-464(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt10shared_ptrI4ChatEaSEOS1_
	leaq	-464(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10shared_ptrI4ChatED1Ev
	movq	-552(%rbp), %rax
	addq	$144, %rax
	movq	-552(%rbp), %rdx
	addq	$432, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EE9push_backERKS2_
.LEHE63:
	movq	-552(%rbp), %rax
	addq	$416, %rax
	movq	%rax, %rdi
	call	_ZNKSt19__shared_ptr_accessI4UserLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	movq	%rax, %rbx
	movq	-552(%rbp), %rax
	leaq	432(%rax), %rdx
	leaq	-464(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt10shared_ptrI4ChatEC1ERKS1_
	leaq	-464(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB64:
	call	_ZN4User7addChatESt10shared_ptrI4ChatE@PLT
.LEHE64:
	leaq	-464(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10shared_ptrI4ChatED1Ev
	movq	-552(%rbp), %rax
	leaq	120(%rax), %rdx
	movl	-536(%rbp), %eax
	cltq
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorI4UserSaIS0_EEixEm
	movq	%rax, %rdx
	leaq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB65:
	call	_ZNK4User8getLoginB5cxx11Ev@PLT
.LEHE65:
	movq	-552(%rbp), %rax
	addq	$416, %rax
	movq	%rax, %rdi
	call	_ZNKSt19__shared_ptr_accessI4UserLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	movq	%rax, %rdx
	leaq	-224(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB66:
	call	_ZNK4User8getLoginB5cxx11Ev@PLT
.LEHE66:
	leaq	-192(%rbp), %rdx
	leaq	-224(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_
	movl	%eax, %ebx
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	testb	%bl, %bl
	je	.L188
	movq	-552(%rbp), %rax
	leaq	120(%rax), %rdx
	movl	-536(%rbp), %eax
	cltq
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorI4UserSaIS0_EEixEm
	movq	%rax, %rbx
	movq	-552(%rbp), %rax
	leaq	432(%rax), %rdx
	leaq	-464(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt10shared_ptrI4ChatEC1ERKS1_
	leaq	-464(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB67:
	call	_ZN4User7addChatESt10shared_ptrI4ChatE@PLT
.LEHE67:
	leaq	-464(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10shared_ptrI4ChatED1Ev
.L188:
	leaq	-288(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@PLT
	leaq	.LC32(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
.LEHB68:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	_ZSt3cin(%rip), %rax
	movq	%rax, %rdi
	call	_ZNSi6ignoreEv@PLT
	leaq	-288(%rbp), %rax
	movq	%rax, %rsi
	leaq	_ZSt3cin(%rip), %rax
	movq	%rax, %rdi
	call	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
.LEHE68:
	movl	$0, %edi
	call	time@PLT
	movq	%rax, -464(%rbp)
	leaq	-64(%rbp), %rdx
	leaq	-464(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ctime_r@PLT
	movb	$32, -40(%rbp)
	leaq	-520(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev@PLT
	leaq	-520(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	leaq	-256(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB69:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE69:
	leaq	-520(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
.LEHB70:
	call	_ZN7MessageC1Ev@PLT
.LEHE70:
	leaq	-288(%rbp), %rdx
	leaq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB71:
	call	_ZN7Message10setMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
	leaq	-256(%rbp), %rdx
	leaq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN7Message11setTimeSendERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
	movq	-552(%rbp), %rax
	addq	$416, %rax
	movq	%rax, %rdi
	call	_ZNKSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEcvbEv
	testb	%al, %al
	je	.L190
	movq	-552(%rbp), %rax
	addq	$416, %rax
	movq	%rax, %rdi
	call	_ZNKSt19__shared_ptr_accessI4UserLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	movq	%rax, %rdx
	leaq	-224(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNK4User8getLoginB5cxx11Ev@PLT
.LEHE71:
	leaq	-224(%rbp), %rdx
	leaq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB72:
	call	_ZN7Message8userNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.LEHE72:
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.L190:
	movq	-552(%rbp), %rax
	addq	$432, %rax
	movq	%rax, %rdi
	call	_ZNKSt19__shared_ptr_accessI4ChatLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	movq	%rax, %rdx
	leaq	-192(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
.LEHB73:
	call	_ZN4Chat10addMessageERK7Message@PLT
	movq	-552(%rbp), %rax
	addq	$432, %rax
	movq	%rax, %rdi
	call	_ZNKSt19__shared_ptr_accessI4ChatLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	movq	%rax, %rdi
	call	_ZN4Chat12printMessageEv@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
.LEHE73:
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN7MessageD1Ev@PLT
	leaq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-288(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-384(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-448(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L166
.L167:
	leaq	.LC33(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
.LEHB74:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
.LEHE74:
	jmp	.L166
.L212:
	endbr64
	cmpq	$1, %rdx
	je	.L193
	movq	%rax, %rbx
	jmp	.L194
.L193:
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	movq	%rax, -480(%rbp)
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
.LEHB75:
	call	_ZNSolsEPFRSoS_E@PLT
	movq	%rax, %rbx
	movq	-480(%rbp), %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movq	(%rax), %rdx
	movq	-480(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
.LEHE75:
	movl	$-1, -532(%rbp)
	call	__cxa_end_catch@PLT
	jmp	.L195
.L213:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	jmp	.L194
.L215:
	endbr64
	movq	%rax, %rbx
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L198
.L216:
	endbr64
	movq	%rax, %rbx
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L198
.L217:
	endbr64
	movq	%rax, %rbx
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L198
.L218:
	endbr64
	movq	%rax, %rbx
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L198
.L219:
	endbr64
	movq	%rax, %rbx
	leaq	-464(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10shared_ptrI4ChatED1Ev
	jmp	.L198
.L220:
	endbr64
	movq	%rax, %rbx
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L198
.L221:
	endbr64
	movq	%rax, %rbx
	leaq	-464(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10shared_ptrI4ChatED1Ev
	jmp	.L198
.L223:
	endbr64
	movq	%rax, %rbx
	leaq	-520(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	jmp	.L206
.L226:
	endbr64
	movq	%rax, %rbx
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L208
.L225:
	endbr64
	movq	%rax, %rbx
.L208:
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN7MessageD1Ev@PLT
	jmp	.L209
.L224:
	endbr64
	movq	%rax, %rbx
.L209:
	leaq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L206
.L222:
	endbr64
	movq	%rax, %rbx
.L206:
	leaq	-288(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L198
.L214:
	endbr64
	movq	%rax, %rbx
.L198:
	leaq	-384(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L194
.L211:
	endbr64
	movq	%rax, %rbx
.L194:
	leaq	-448(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB76:
	call	_Unwind_Resume@PLT
.LEHE76:
.L166:
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L210
	call	__stack_chk_fail@PLT
.L210:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4820:
	.section	.gcc_except_table._ZN5Chats5writeEv,"aG",@progbits,_ZN5Chats5writeEv,comdat
	.align 4
.LLSDA4820:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT4820-.LLSDATTD4820
.LLSDATTD4820:
	.byte	0x1
	.uleb128 .LLSDACSE4820-.LLSDACSB4820
.LLSDACSB4820:
	.uleb128 .LEHB51-.LFB4820
	.uleb128 .LEHE51-.LEHB51
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB52-.LFB4820
	.uleb128 .LEHE52-.LEHB52
	.uleb128 .L211-.LFB4820
	.uleb128 0
	.uleb128 .LEHB53-.LFB4820
	.uleb128 .LEHE53-.LEHB53
	.uleb128 .L212-.LFB4820
	.uleb128 0x3
	.uleb128 .LEHB54-.LFB4820
	.uleb128 .LEHE54-.LEHB54
	.uleb128 .L211-.LFB4820
	.uleb128 0
	.uleb128 .LEHB55-.LFB4820
	.uleb128 .LEHE55-.LEHB55
	.uleb128 .L214-.LFB4820
	.uleb128 0
	.uleb128 .LEHB56-.LFB4820
	.uleb128 .LEHE56-.LEHB56
	.uleb128 .L215-.LFB4820
	.uleb128 0
	.uleb128 .LEHB57-.LFB4820
	.uleb128 .LEHE57-.LEHB57
	.uleb128 .L214-.LFB4820
	.uleb128 0
	.uleb128 .LEHB58-.LFB4820
	.uleb128 .LEHE58-.LEHB58
	.uleb128 .L216-.LFB4820
	.uleb128 0
	.uleb128 .LEHB59-.LFB4820
	.uleb128 .LEHE59-.LEHB59
	.uleb128 .L214-.LFB4820
	.uleb128 0
	.uleb128 .LEHB60-.LFB4820
	.uleb128 .LEHE60-.LEHB60
	.uleb128 .L217-.LFB4820
	.uleb128 0
	.uleb128 .LEHB61-.LFB4820
	.uleb128 .LEHE61-.LEHB61
	.uleb128 .L214-.LFB4820
	.uleb128 0
	.uleb128 .LEHB62-.LFB4820
	.uleb128 .LEHE62-.LEHB62
	.uleb128 .L218-.LFB4820
	.uleb128 0
	.uleb128 .LEHB63-.LFB4820
	.uleb128 .LEHE63-.LEHB63
	.uleb128 .L214-.LFB4820
	.uleb128 0
	.uleb128 .LEHB64-.LFB4820
	.uleb128 .LEHE64-.LEHB64
	.uleb128 .L219-.LFB4820
	.uleb128 0
	.uleb128 .LEHB65-.LFB4820
	.uleb128 .LEHE65-.LEHB65
	.uleb128 .L214-.LFB4820
	.uleb128 0
	.uleb128 .LEHB66-.LFB4820
	.uleb128 .LEHE66-.LEHB66
	.uleb128 .L220-.LFB4820
	.uleb128 0
	.uleb128 .LEHB67-.LFB4820
	.uleb128 .LEHE67-.LEHB67
	.uleb128 .L221-.LFB4820
	.uleb128 0
	.uleb128 .LEHB68-.LFB4820
	.uleb128 .LEHE68-.LEHB68
	.uleb128 .L222-.LFB4820
	.uleb128 0
	.uleb128 .LEHB69-.LFB4820
	.uleb128 .LEHE69-.LEHB69
	.uleb128 .L223-.LFB4820
	.uleb128 0
	.uleb128 .LEHB70-.LFB4820
	.uleb128 .LEHE70-.LEHB70
	.uleb128 .L224-.LFB4820
	.uleb128 0
	.uleb128 .LEHB71-.LFB4820
	.uleb128 .LEHE71-.LEHB71
	.uleb128 .L225-.LFB4820
	.uleb128 0
	.uleb128 .LEHB72-.LFB4820
	.uleb128 .LEHE72-.LEHB72
	.uleb128 .L226-.LFB4820
	.uleb128 0
	.uleb128 .LEHB73-.LFB4820
	.uleb128 .LEHE73-.LEHB73
	.uleb128 .L225-.LFB4820
	.uleb128 0
	.uleb128 .LEHB74-.LFB4820
	.uleb128 .LEHE74-.LEHB74
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB75-.LFB4820
	.uleb128 .LEHE75-.LEHB75
	.uleb128 .L213-.LFB4820
	.uleb128 0
	.uleb128 .LEHB76-.LFB4820
	.uleb128 .LEHE76-.LEHB76
	.uleb128 0
	.uleb128 0
.LLSDACSE4820:
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0x7d
	.align 4
	.long	DW.ref._ZTISt9exception-.
.LLSDATT4820:
	.section	.text._ZN5Chats5writeEv,"axG",@progbits,_ZN5Chats5writeEv,comdat
	.size	_ZN5Chats5writeEv, .-_ZN5Chats5writeEv
	.section	.rodata
	.align 8
.LC34:
	.string	"\320\222\321\213 \320\262\321\213\321\210\320\273\320\270 \320\270\320\267 \321\203\321\207\321\221\321\202\320\275\320\276\320\271 \320\267\320\260\320\277\320\270\321\201\320\270"
	.align 8
.LC35:
	.string	"\320\237\321\200\320\265\320\266\320\264\320\265 \321\207\320\265\320\274 \320\262\321\213\320\271\321\202\320\270 \320\270\320\267 \321\203\321\207\321\221\321\202\320\275\320\276\320\271 \320\267\320\260\320\277\320\270\321\201\320\270 \320\275\320\265\320\276\320\261\321\205\320\276\320\264\320\270\320\274\320\276 \320\262 \320\275\320\265\321\221 \320\262\320\276\320\271\321\202\320\270. \320\222\321\213 \320\275\320\265 \320\262\320\276\321\210\320\273\320\270 \320\262 \321\203\321\207\321\221\321\202\321\203\321\216 \320\267\320\260\320\277\320\270\321\201\321\214."
	.section	.text._ZN5Chats6logoffEv,"axG",@progbits,_ZN5Chats6logoffEv,comdat
	.align 2
	.weak	_ZN5Chats6logoffEv
	.type	_ZN5Chats6logoffEv, @function
_ZN5Chats6logoffEv:
.LFB4831:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	addq	$416, %rax
	movq	%rax, %rdi
	call	_ZNKSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEcvbEv
	testb	%al, %al
	je	.L228
	leaq	.LC34(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	-40(%rbp), %rax
	addq	$416, %rax
	movq	%rax, %rdi
	call	_ZNKSt19__shared_ptr_accessI4UserLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	movq	%rax, %rdi
	call	_ZNK4User9printUserEv@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNSt10shared_ptrI4UserEC1EDn
	movq	-40(%rbp), %rax
	leaq	416(%rax), %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt10shared_ptrI4UserEaSEOS1_
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10shared_ptrI4UserED1Ev
	jmp	.L231
.L228:
	leaq	.LC35(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
.L231:
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L230
	call	__stack_chk_fail@PLT
.L230:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4831:
	.size	_ZN5Chats6logoffEv, .-_ZN5Chats6logoffEv
	.section	.text._ZN5Chats4exitEv,"axG",@progbits,_ZN5Chats4exitEv,comdat
	.align 2
	.weak	_ZN5Chats4exitEv
	.type	_ZN5Chats4exitEv, @function
_ZN5Chats4exitEv:
.LFB4832:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movb	$1, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4832:
	.size	_ZN5Chats4exitEv, .-_ZN5Chats4exitEv
	.text
	.globl	main
	.type	main, @function
main:
.LFB4833:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4833
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$472, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-480(%rbp), %rax
	movq	%rax, %rdi
.LEHB77:
	call	_ZN5ChatsC1Ev
.LEHE77:
	leaq	-480(%rbp), %rax
	movq	%rax, %rdi
.LEHB78:
	call	_ZN5Chats10restordataEv
	leaq	-480(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Chats8mainmenuEv
	leaq	-480(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Chats8savedataEv
.LEHE78:
	movl	$0, %ebx
	leaq	-480(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5ChatsD1Ev
	movl	%ebx, %eax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L236
	jmp	.L238
.L237:
	endbr64
	movq	%rax, %rbx
	leaq	-480(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5ChatsD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB79:
	call	_Unwind_Resume@PLT
.LEHE79:
.L238:
	call	__stack_chk_fail@PLT
.L236:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4833:
	.section	.gcc_except_table,"a",@progbits
.LLSDA4833:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4833-.LLSDACSB4833
.LLSDACSB4833:
	.uleb128 .LEHB77-.LFB4833
	.uleb128 .LEHE77-.LEHB77
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB78-.LFB4833
	.uleb128 .LEHE78-.LEHB78
	.uleb128 .L237-.LFB4833
	.uleb128 0
	.uleb128 .LEHB79-.LFB4833
	.uleb128 .LEHE79-.LEHB79
	.uleb128 0
	.uleb128 0
.LLSDACSE4833:
	.text
	.size	main, .-main
	.section	.text._ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_,"axG",@progbits,_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_,comdat
	.weak	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	.type	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_, @function
_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_:
.LFB4835:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	sete	%al
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4835:
	.size	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_, .-_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	.section	.text._ZN9__gnu_cxx11char_traitsIcE6lengthEPKc,"axG",@progbits,_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc,comdat
	.align 2
	.weak	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	.type	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc, @function
_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc:
.LFB4834:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$0, -16(%rbp)
	jmp	.L242
.L243:
	addq	$1, -16(%rbp)
.L242:
	movb	$0, -17(%rbp)
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	leaq	-17(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	xorl	$1, %eax
	testb	%al, %al
	jne	.L243
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L245
	call	__stack_chk_fail@PLT
.L245:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4834:
	.size	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc, .-_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	.section	.text._ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev,"axG",@progbits,_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC5Ev,comdat
	.align 2
	.weak	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev
	.type	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev, @function
_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev:
.LFB4864:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	__errno_location@PLT
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	call	__errno_location@PLT
	movl	$0, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4864:
	.size	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev, .-_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev
	.weak	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC1Ev
	.set	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC1Ev,_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev
	.section	.text._ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev,"axG",@progbits,_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD5Ev,comdat
	.align 2
	.weak	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev
	.type	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev, @function
_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev:
.LFB4867:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	__errno_location@PLT
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L249
	call	__errno_location@PLT
	movq	-8(%rbp), %rdx
	movl	(%rdx), %edx
	movl	%edx, (%rax)
.L249:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4867:
	.size	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev, .-_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev
	.weak	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev
	.set	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev,_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev
	.section	.text._ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE,"axG",@progbits,_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE,comdat
	.weak	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE
	.type	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE, @function
_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE:
.LFB4870:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movabsq	$-2147483649, %rax
	cmpq	%rax, -8(%rbp)
	jle	.L251
	movl	$2147483648, %eax
	cmpq	%rax, -8(%rbp)
	jl	.L252
.L251:
	movl	$1, %eax
	jmp	.L253
.L252:
	movl	$0, %eax
.L253:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4870:
	.size	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE, .-_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE
	.section	.text._ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"axG",@progbits,_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
	.weak	_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.type	_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_, @function
_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_:
.LFB4862:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4862
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movl	%r8d, -100(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC1Ev
	movq	-72(%rbp), %r8
	movl	-100(%rbp), %edx
	leaq	-40(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB80:
	call	*%r8
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	cmpq	%rax, -88(%rbp)
	jne	.L256
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt24__throw_invalid_argumentPKc@PLT
.L256:
	call	__errno_location@PLT
	movl	(%rax), %eax
	cmpl	$34, %eax
	je	.L257
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE
	testb	%al, %al
	je	.L258
.L257:
	movl	$1, %eax
	jmp	.L259
.L258:
	movl	$0, %eax
.L259:
	testb	%al, %al
	je	.L260
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt20__throw_out_of_rangePKc@PLT
.LEHE80:
.L260:
	movq	-32(%rbp), %rax
	movl	%eax, -44(%rbp)
	cmpq	$0, -96(%rbp)
	je	.L261
	movq	-40(%rbp), %rax
	subq	-88(%rbp), %rax
	movq	%rax, %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, (%rax)
.L261:
	movl	-44(%rbp), %ebx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev
	movl	%ebx, %eax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L264
	jmp	.L266
.L265:
	endbr64
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB81:
	call	_Unwind_Resume@PLT
.LEHE81:
.L266:
	call	__stack_chk_fail@PLT
.L264:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4862:
	.section	.gcc_except_table
.LLSDA4862:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4862-.LLSDACSB4862
.LLSDACSB4862:
	.uleb128 .LEHB80-.LFB4862
	.uleb128 .LEHE80-.LEHB80
	.uleb128 .L265-.LFB4862
	.uleb128 0
	.uleb128 .LEHB81-.LFB4862
	.uleb128 .LEHE81-.LEHB81
	.uleb128 0
	.uleb128 0
.LLSDACSE4862:
	.section	.text._ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"axG",@progbits,_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
	.size	_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_, .-_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD5Ev,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev:
.LFB4942:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED2Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4942:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.section	.text._ZSt3maxImERKT_S2_S2_,"axG",@progbits,_ZSt3maxImERKT_S2_S2_,comdat
	.weak	_ZSt3maxImERKT_S2_S2_
	.type	_ZSt3maxImERKT_S2_S2_, @function
_ZSt3maxImERKT_S2_S2_:
.LFB5094:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L269
	movq	-16(%rbp), %rax
	jmp	.L270
.L269:
	movq	-8(%rbp), %rax
.L270:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5094:
	.size	_ZSt3maxImERKT_S2_S2_, .-_ZSt3maxImERKT_S2_S2_
	.section	.text._ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEED2Ev,"axG",@progbits,_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEED5Ev,comdat
	.align 2
	.weak	_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEED2Ev
	.type	_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEED2Ev, @function
_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEED2Ev:
.LFB5146:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE6_M_ptrEv
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L272
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE11get_deleterEv
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRPNSt10filesystem7__cxx114path5_List5_ImplEEONSt16remove_referenceIT_E4typeEOS8_
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@PLT
.L272:
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5146:
	.size	_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEED2Ev, .-_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEED2Ev
	.weak	_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEED1Ev
	.set	_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEED1Ev,_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEED2Ev
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5ISt17basic_string_viewIcS2_EvEERKT_RKS3_,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_:
.LFB5168:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-64(%rbp), %rax
	movq	(%rax), %rdx
	movq	8(%rax), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17_S_to_string_viewESt17basic_string_viewIcS2_E@PLT
	movq	%rax, %rcx
	movq	%rdx, %rbx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12__sv_wrapperC1ESt17basic_string_viewIcS2_E@PLT
	movq	-72(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ENS4_12__sv_wrapperERKS3_@PLT
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L274
	call	__stack_chk_fail@PLT
.L274:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5168:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ISt17basic_string_viewIcS2_EvEERKT_RKS3_
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ISt17basic_string_viewIcS2_EvEERKT_RKS3_,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5IS3_EEPKcRKS3_,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:
.LFB5173:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5173
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
.LEHB82:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv@PLT
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_@PLT
.LEHE82:
	cmpq	$0, -64(%rbp)
	je	.L276
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
.LEHB83:
	call	_ZNSt11char_traitsIcE6lengthEPKc
	movq	-64(%rbp), %rdx
	addq	%rdx, %rax
	jmp	.L277
.L276:
	movl	$1, %eax
.L277:
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
.LEHE83:
	jmp	.L281
.L280:
	endbr64
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB84:
	call	_Unwind_Resume@PLT
.LEHE84:
.L281:
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L279
	call	__stack_chk_fail@PLT
.L279:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5173:
	.section	.gcc_except_table
.LLSDA5173:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5173-.LLSDACSB5173
.LLSDACSB5173:
	.uleb128 .LEHB82-.LFB5173
	.uleb128 .LEHE82-.LEHB82
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB83-.LFB5173
	.uleb128 .LEHE83-.LEHB83
	.uleb128 .L280-.LFB5173
	.uleb128 0
	.uleb128 .LEHB84-.LFB5173
	.uleb128 .LEHE84-.LEHB84
	.uleb128 0
	.uleb128 0
.LLSDACSE5173:
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5IS3_EEPKcRKS3_,comdat
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.section	.text._ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKc,"axG",@progbits,_ZNSt17basic_string_viewIcSt11char_traitsIcEEC5EPKc,comdat
	.align 2
	.weak	_ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKc
	.type	_ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKc, @function
_ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKc:
.LFB5182:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5182
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11char_traitsIcE6lengthEPKc
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5182:
	.section	.gcc_except_table
.LLSDA5182:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5182-.LLSDACSB5182
.LLSDACSB5182:
.LLSDACSE5182:
	.section	.text._ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKc,"axG",@progbits,_ZNSt17basic_string_viewIcSt11char_traitsIcEEC5EPKc,comdat
	.size	_ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKc, .-_ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKc
	.weak	_ZNSt17basic_string_viewIcSt11char_traitsIcEEC1EPKc
	.set	_ZNSt17basic_string_viewIcSt11char_traitsIcEEC1EPKc,_ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKc
	.section	.text._ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev,"axG",@progbits,_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED5Ev,comdat
	.align 2
	.weak	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev
	.type	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, @function
_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev:
.LFB5196:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L285
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv
.L285:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5196:
	.size	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, .-_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev
	.weak	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED1Ev
	.set	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED1Ev,_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev
	.section	.text._ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2Ev,"axG",@progbits,_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC5Ev,comdat
	.align 2
	.weak	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2Ev
	.type	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2Ev, @function
_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2Ev:
.LFB5203:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5203:
	.size	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2Ev, .-_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2Ev
	.weak	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1Ev
	.set	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1Ev,_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2Ev
	.section	.text._ZNSt10filesystem7__cxx118__detail17__effective_rangeIA5_cEEDaRKT_,"axG",@progbits,_ZNSt10filesystem7__cxx118__detail17__effective_rangeIA5_cEEDaRKT_,comdat
	.weak	_ZNSt10filesystem7__cxx118__detail17__effective_rangeIA5_cEEDaRKT_
	.type	_ZNSt10filesystem7__cxx118__detail17__effective_rangeIA5_cEEDaRKT_, @function
_ZNSt10filesystem7__cxx118__detail17__effective_rangeIA5_cEEDaRKT_:
.LFB5214:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt17basic_string_viewIcSt11char_traitsIcEEC1EPKc
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rcx
	subq	%fs:40, %rcx
	je	.L289
	call	__stack_chk_fail@PLT
.L289:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5214:
	.size	_ZNSt10filesystem7__cxx118__detail17__effective_rangeIA5_cEEDaRKT_, .-_ZNSt10filesystem7__cxx118__detail17__effective_rangeIA5_cEEDaRKT_
	.section	.text._ZNSt10filesystem7__cxx114path10_S_convertISt17basic_string_viewIcSt11char_traitsIcEEEEDaRKT_,"axG",@progbits,_ZNSt10filesystem7__cxx114path10_S_convertISt17basic_string_viewIcSt11char_traitsIcEEEEDaRKT_,comdat
	.weak	_ZNSt10filesystem7__cxx114path10_S_convertISt17basic_string_viewIcSt11char_traitsIcEEEEDaRKT_
	.type	_ZNSt10filesystem7__cxx114path10_S_convertISt17basic_string_viewIcSt11char_traitsIcEEEEDaRKT_, @function
_ZNSt10filesystem7__cxx114path10_S_convertISt17basic_string_viewIcSt11char_traitsIcEEEEDaRKT_:
.LFB5215:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5215:
	.size	_ZNSt10filesystem7__cxx114path10_S_convertISt17basic_string_viewIcSt11char_traitsIcEEEEDaRKT_, .-_ZNSt10filesystem7__cxx114path10_S_convertISt17basic_string_viewIcSt11char_traitsIcEEEEDaRKT_
	.section	.text._ZNSt10filesystem7__cxx114pathC2IA5_cS1_EERKT_NS1_6formatE,"axG",@progbits,_ZNSt10filesystem7__cxx114pathC5IA5_cS1_EERKT_NS1_6formatE,comdat
	.align 2
	.weak	_ZNSt10filesystem7__cxx114pathC2IA5_cS1_EERKT_NS1_6formatE
	.type	_ZNSt10filesystem7__cxx114pathC2IA5_cS1_EERKT_NS1_6formatE, @function
_ZNSt10filesystem7__cxx114pathC2IA5_cS1_EERKT_NS1_6formatE:
.LFB5216:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5216
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movl	%edx, %eax
	movb	%al, -100(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-88(%rbp), %rbx
	leaq	-65(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev@PLT
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10filesystem7__cxx118__detail17__effective_rangeIA5_cEEDaRKT_
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10filesystem7__cxx114path10_S_convertISt17basic_string_viewIcSt11char_traitsIcEEEEDaRKT_
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	leaq	-65(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB85:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ISt17basic_string_viewIcS2_EvEERKT_RKS3_
.LEHE85:
	leaq	-65(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	movq	-88(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
.LEHB86:
	call	_ZNSt10filesystem7__cxx114path5_ListC1Ev@PLT
.LEHE86:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
.LEHB87:
	call	_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv@PLT
.LEHE87:
	jmp	.L300
.L297:
	endbr64
	movq	%rax, %rbx
	leaq	-65(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB88:
	call	_Unwind_Resume@PLT
.L299:
	endbr64
	movq	%rax, %rbx
	movq	-88(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	call	_ZNSt10filesystem7__cxx114path5_ListD1Ev
	jmp	.L295
.L298:
	endbr64
	movq	%rax, %rbx
.L295:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE88:
.L300:
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L296
	call	__stack_chk_fail@PLT
.L296:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5216:
	.section	.gcc_except_table
.LLSDA5216:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5216-.LLSDACSB5216
.LLSDACSB5216:
	.uleb128 .LEHB85-.LFB5216
	.uleb128 .LEHE85-.LEHB85
	.uleb128 .L297-.LFB5216
	.uleb128 0
	.uleb128 .LEHB86-.LFB5216
	.uleb128 .LEHE86-.LEHB86
	.uleb128 .L298-.LFB5216
	.uleb128 0
	.uleb128 .LEHB87-.LFB5216
	.uleb128 .LEHE87-.LEHB87
	.uleb128 .L299-.LFB5216
	.uleb128 0
	.uleb128 .LEHB88-.LFB5216
	.uleb128 .LEHE88-.LEHB88
	.uleb128 0
	.uleb128 0
.LLSDACSE5216:
	.section	.text._ZNSt10filesystem7__cxx114pathC2IA5_cS1_EERKT_NS1_6formatE,"axG",@progbits,_ZNSt10filesystem7__cxx114pathC5IA5_cS1_EERKT_NS1_6formatE,comdat
	.size	_ZNSt10filesystem7__cxx114pathC2IA5_cS1_EERKT_NS1_6formatE, .-_ZNSt10filesystem7__cxx114pathC2IA5_cS1_EERKT_NS1_6formatE
	.weak	_ZNSt10filesystem7__cxx114pathC1IA5_cS1_EERKT_NS1_6formatE
	.set	_ZNSt10filesystem7__cxx114pathC1IA5_cS1_EERKT_NS1_6formatE,_ZNSt10filesystem7__cxx114pathC2IA5_cS1_EERKT_NS1_6formatE
	.section	.text._ZNSt10filesystem7__cxx118__detail17__effective_rangeIA19_cEEDaRKT_,"axG",@progbits,_ZNSt10filesystem7__cxx118__detail17__effective_rangeIA19_cEEDaRKT_,comdat
	.weak	_ZNSt10filesystem7__cxx118__detail17__effective_rangeIA19_cEEDaRKT_
	.type	_ZNSt10filesystem7__cxx118__detail17__effective_rangeIA19_cEEDaRKT_, @function
_ZNSt10filesystem7__cxx118__detail17__effective_rangeIA19_cEEDaRKT_:
.LFB5219:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt17basic_string_viewIcSt11char_traitsIcEEC1EPKc
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rcx
	subq	%fs:40, %rcx
	je	.L303
	call	__stack_chk_fail@PLT
.L303:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5219:
	.size	_ZNSt10filesystem7__cxx118__detail17__effective_rangeIA19_cEEDaRKT_, .-_ZNSt10filesystem7__cxx118__detail17__effective_rangeIA19_cEEDaRKT_
	.section	.text._ZNSt10filesystem7__cxx114pathC2IA19_cS1_EERKT_NS1_6formatE,"axG",@progbits,_ZNSt10filesystem7__cxx114pathC5IA19_cS1_EERKT_NS1_6formatE,comdat
	.align 2
	.weak	_ZNSt10filesystem7__cxx114pathC2IA19_cS1_EERKT_NS1_6formatE
	.type	_ZNSt10filesystem7__cxx114pathC2IA19_cS1_EERKT_NS1_6formatE, @function
_ZNSt10filesystem7__cxx114pathC2IA19_cS1_EERKT_NS1_6formatE:
.LFB5220:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5220
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movl	%edx, %eax
	movb	%al, -100(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-88(%rbp), %rbx
	leaq	-65(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev@PLT
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10filesystem7__cxx118__detail17__effective_rangeIA19_cEEDaRKT_
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10filesystem7__cxx114path10_S_convertISt17basic_string_viewIcSt11char_traitsIcEEEEDaRKT_
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	leaq	-65(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB89:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ISt17basic_string_viewIcS2_EvEERKT_RKS3_
.LEHE89:
	leaq	-65(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	movq	-88(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
.LEHB90:
	call	_ZNSt10filesystem7__cxx114path5_ListC1Ev@PLT
.LEHE90:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
.LEHB91:
	call	_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv@PLT
.LEHE91:
	jmp	.L312
.L309:
	endbr64
	movq	%rax, %rbx
	leaq	-65(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB92:
	call	_Unwind_Resume@PLT
.L311:
	endbr64
	movq	%rax, %rbx
	movq	-88(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	call	_ZNSt10filesystem7__cxx114path5_ListD1Ev
	jmp	.L307
.L310:
	endbr64
	movq	%rax, %rbx
.L307:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE92:
.L312:
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L308
	call	__stack_chk_fail@PLT
.L308:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5220:
	.section	.gcc_except_table
.LLSDA5220:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5220-.LLSDACSB5220
.LLSDACSB5220:
	.uleb128 .LEHB89-.LFB5220
	.uleb128 .LEHE89-.LEHB89
	.uleb128 .L309-.LFB5220
	.uleb128 0
	.uleb128 .LEHB90-.LFB5220
	.uleb128 .LEHE90-.LEHB90
	.uleb128 .L310-.LFB5220
	.uleb128 0
	.uleb128 .LEHB91-.LFB5220
	.uleb128 .LEHE91-.LEHB91
	.uleb128 .L311-.LFB5220
	.uleb128 0
	.uleb128 .LEHB92-.LFB5220
	.uleb128 .LEHE92-.LEHB92
	.uleb128 0
	.uleb128 0
.LLSDACSE5220:
	.section	.text._ZNSt10filesystem7__cxx114pathC2IA19_cS1_EERKT_NS1_6formatE,"axG",@progbits,_ZNSt10filesystem7__cxx114pathC5IA19_cS1_EERKT_NS1_6formatE,comdat
	.size	_ZNSt10filesystem7__cxx114pathC2IA19_cS1_EERKT_NS1_6formatE, .-_ZNSt10filesystem7__cxx114pathC2IA19_cS1_EERKT_NS1_6formatE
	.weak	_ZNSt10filesystem7__cxx114pathC1IA19_cS1_EERKT_NS1_6formatE
	.set	_ZNSt10filesystem7__cxx114pathC1IA19_cS1_EERKT_NS1_6formatE,_ZNSt10filesystem7__cxx114pathC2IA19_cS1_EERKT_NS1_6formatE
	.section	.text._ZNSt10shared_ptrI4UserEC2Ev,"axG",@progbits,_ZNSt10shared_ptrI4UserEC5Ev,comdat
	.align 2
	.weak	_ZNSt10shared_ptrI4UserEC2Ev
	.type	_ZNSt10shared_ptrI4UserEC2Ev, @function
_ZNSt10shared_ptrI4UserEC2Ev:
.LFB5228:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5228:
	.size	_ZNSt10shared_ptrI4UserEC2Ev, .-_ZNSt10shared_ptrI4UserEC2Ev
	.weak	_ZNSt10shared_ptrI4UserEC1Ev
	.set	_ZNSt10shared_ptrI4UserEC1Ev,_ZNSt10shared_ptrI4UserEC2Ev
	.section	.text._ZNSt10shared_ptrI4UserEC2EDn,"axG",@progbits,_ZNSt10shared_ptrI4UserEC5EDn,comdat
	.align 2
	.weak	_ZNSt10shared_ptrI4UserEC2EDn
	.type	_ZNSt10shared_ptrI4UserEC2EDn, @function
_ZNSt10shared_ptrI4UserEC2EDn:
.LFB5230:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10shared_ptrI4UserEC1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5230:
	.size	_ZNSt10shared_ptrI4UserEC2EDn, .-_ZNSt10shared_ptrI4UserEC2EDn
	.weak	_ZNSt10shared_ptrI4UserEC1EDn
	.set	_ZNSt10shared_ptrI4UserEC1EDn,_ZNSt10shared_ptrI4UserEC2EDn
	.section	.text._ZNSt10shared_ptrI4ChatEC2Ev,"axG",@progbits,_ZNSt10shared_ptrI4ChatEC5Ev,comdat
	.align 2
	.weak	_ZNSt10shared_ptrI4ChatEC2Ev
	.type	_ZNSt10shared_ptrI4ChatEC2Ev, @function
_ZNSt10shared_ptrI4ChatEC2Ev:
.LFB5234:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5234:
	.size	_ZNSt10shared_ptrI4ChatEC2Ev, .-_ZNSt10shared_ptrI4ChatEC2Ev
	.weak	_ZNSt10shared_ptrI4ChatEC1Ev
	.set	_ZNSt10shared_ptrI4ChatEC1Ev,_ZNSt10shared_ptrI4ChatEC2Ev
	.section	.text._ZNSt10shared_ptrI4ChatEC2EDn,"axG",@progbits,_ZNSt10shared_ptrI4ChatEC5EDn,comdat
	.align 2
	.weak	_ZNSt10shared_ptrI4ChatEC2EDn
	.type	_ZNSt10shared_ptrI4ChatEC2EDn, @function
_ZNSt10shared_ptrI4ChatEC2EDn:
.LFB5236:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10shared_ptrI4ChatEC1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5236:
	.size	_ZNSt10shared_ptrI4ChatEC2EDn, .-_ZNSt10shared_ptrI4ChatEC2EDn
	.weak	_ZNSt10shared_ptrI4ChatEC1EDn
	.set	_ZNSt10shared_ptrI4ChatEC1EDn,_ZNSt10shared_ptrI4ChatEC2EDn
	.section	.text._ZNSt12_Vector_baseI4UserSaIS0_EE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseI4UserSaIS0_EE12_Vector_implC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI4UserSaIS0_EE12_Vector_implC2Ev
	.type	_ZNSt12_Vector_baseI4UserSaIS0_EE12_Vector_implC2Ev, @function
_ZNSt12_Vector_baseI4UserSaIS0_EE12_Vector_implC2Ev:
.LFB5239:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaI4UserEC2Ev
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI4UserSaIS0_EE17_Vector_impl_dataC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5239:
	.size	_ZNSt12_Vector_baseI4UserSaIS0_EE12_Vector_implC2Ev, .-_ZNSt12_Vector_baseI4UserSaIS0_EE12_Vector_implC2Ev
	.weak	_ZNSt12_Vector_baseI4UserSaIS0_EE12_Vector_implC1Ev
	.set	_ZNSt12_Vector_baseI4UserSaIS0_EE12_Vector_implC1Ev,_ZNSt12_Vector_baseI4UserSaIS0_EE12_Vector_implC2Ev
	.section	.text._ZNSaI4UserED2Ev,"axG",@progbits,_ZNSaI4UserED5Ev,comdat
	.align 2
	.weak	_ZNSaI4UserED2Ev
	.type	_ZNSaI4UserED2Ev, @function
_ZNSaI4UserED2Ev:
.LFB5242:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorI4UserED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5242:
	.size	_ZNSaI4UserED2Ev, .-_ZNSaI4UserED2Ev
	.weak	_ZNSaI4UserED1Ev
	.set	_ZNSaI4UserED1Ev,_ZNSaI4UserED2Ev
	.section	.text._ZNSt12_Vector_baseI4UserSaIS0_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseI4UserSaIS0_EED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI4UserSaIS0_EED2Ev
	.type	_ZNSt12_Vector_baseI4UserSaIS0_EED2Ev, @function
_ZNSt12_Vector_baseI4UserSaIS0_EED2Ev:
.LFB5245:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5245
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rdx, %rax
	subq	%rcx, %rax
	sarq	$3, %rax
	movq	%rax, %rdx
	movabsq	$-1229782938247303441, %rax
	imulq	%rdx, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI4UserSaIS0_EE13_M_deallocateEPS0_m
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI4UserSaIS0_EE12_Vector_implD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5245:
	.section	.gcc_except_table
.LLSDA5245:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5245-.LLSDACSB5245
.LLSDACSB5245:
.LLSDACSE5245:
	.section	.text._ZNSt12_Vector_baseI4UserSaIS0_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseI4UserSaIS0_EED5Ev,comdat
	.size	_ZNSt12_Vector_baseI4UserSaIS0_EED2Ev, .-_ZNSt12_Vector_baseI4UserSaIS0_EED2Ev
	.weak	_ZNSt12_Vector_baseI4UserSaIS0_EED1Ev
	.set	_ZNSt12_Vector_baseI4UserSaIS0_EED1Ev,_ZNSt12_Vector_baseI4UserSaIS0_EED2Ev
	.section	.text._ZNSt6vectorI4UserSaIS0_EED2Ev,"axG",@progbits,_ZNSt6vectorI4UserSaIS0_EED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorI4UserSaIS0_EED2Ev
	.type	_ZNSt6vectorI4UserSaIS0_EED2Ev, @function
_ZNSt6vectorI4UserSaIS0_EED2Ev:
.LFB5248:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5248
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI4UserSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIP4UserS0_EvT_S2_RSaIT0_E
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI4UserSaIS0_EED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5248:
	.section	.gcc_except_table
.LLSDA5248:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5248-.LLSDACSB5248
.LLSDACSB5248:
.LLSDACSE5248:
	.section	.text._ZNSt6vectorI4UserSaIS0_EED2Ev,"axG",@progbits,_ZNSt6vectorI4UserSaIS0_EED5Ev,comdat
	.size	_ZNSt6vectorI4UserSaIS0_EED2Ev, .-_ZNSt6vectorI4UserSaIS0_EED2Ev
	.weak	_ZNSt6vectorI4UserSaIS0_EED1Ev
	.set	_ZNSt6vectorI4UserSaIS0_EED1Ev,_ZNSt6vectorI4UserSaIS0_EED2Ev
	.section	.text._ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE12_Vector_implC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE12_Vector_implC2Ev
	.type	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE12_Vector_implC2Ev, @function
_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE12_Vector_implC2Ev:
.LFB5251:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaISt10shared_ptrI4ChatEEC2Ev
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE17_Vector_impl_dataC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5251:
	.size	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE12_Vector_implC2Ev, .-_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE12_Vector_implC2Ev
	.weak	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE12_Vector_implC1Ev
	.set	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE12_Vector_implC1Ev,_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE12_Vector_implC2Ev
	.section	.text._ZNSaISt10shared_ptrI4ChatEED2Ev,"axG",@progbits,_ZNSaISt10shared_ptrI4ChatEED5Ev,comdat
	.align 2
	.weak	_ZNSaISt10shared_ptrI4ChatEED2Ev
	.type	_ZNSaISt10shared_ptrI4ChatEED2Ev, @function
_ZNSaISt10shared_ptrI4ChatEED2Ev:
.LFB5254:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5254:
	.size	_ZNSaISt10shared_ptrI4ChatEED2Ev, .-_ZNSaISt10shared_ptrI4ChatEED2Ev
	.weak	_ZNSaISt10shared_ptrI4ChatEED1Ev
	.set	_ZNSaISt10shared_ptrI4ChatEED1Ev,_ZNSaISt10shared_ptrI4ChatEED2Ev
	.section	.text._ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EED2Ev
	.type	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EED2Ev, @function
_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EED2Ev:
.LFB5257:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5257
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rdx, %rax
	subq	%rcx, %rax
	sarq	$4, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE13_M_deallocateEPS2_m
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE12_Vector_implD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5257:
	.section	.gcc_except_table
.LLSDA5257:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5257-.LLSDACSB5257
.LLSDACSB5257:
.LLSDACSE5257:
	.section	.text._ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EED5Ev,comdat
	.size	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EED2Ev, .-_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EED2Ev
	.weak	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EED1Ev
	.set	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EED1Ev,_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EED2Ev
	.section	.text._ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EED2Ev,"axG",@progbits,_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EED2Ev
	.type	_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EED2Ev, @function
_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EED2Ev:
.LFB5260:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5260
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPSt10shared_ptrI4ChatES2_EvT_S4_RSaIT0_E
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5260:
	.section	.gcc_except_table
.LLSDA5260:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5260-.LLSDACSB5260
.LLSDACSB5260:
.LLSDACSE5260:
	.section	.text._ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EED2Ev,"axG",@progbits,_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EED5Ev,comdat
	.size	_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EED2Ev, .-_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EED2Ev
	.weak	_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EED1Ev
	.set	_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EED1Ev,_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EED2Ev
	.section	.text._ZNSt10filesystem7__cxx118__detail17__effective_rangeIA25_cEEDaRKT_,"axG",@progbits,_ZNSt10filesystem7__cxx118__detail17__effective_rangeIA25_cEEDaRKT_,comdat
	.weak	_ZNSt10filesystem7__cxx118__detail17__effective_rangeIA25_cEEDaRKT_
	.type	_ZNSt10filesystem7__cxx118__detail17__effective_rangeIA25_cEEDaRKT_, @function
_ZNSt10filesystem7__cxx118__detail17__effective_rangeIA25_cEEDaRKT_:
.LFB5263:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt17basic_string_viewIcSt11char_traitsIcEEC1EPKc
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rcx
	subq	%fs:40, %rcx
	je	.L327
	call	__stack_chk_fail@PLT
.L327:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5263:
	.size	_ZNSt10filesystem7__cxx118__detail17__effective_rangeIA25_cEEDaRKT_, .-_ZNSt10filesystem7__cxx118__detail17__effective_rangeIA25_cEEDaRKT_
	.section	.text._ZNSt10filesystem7__cxx114pathC2IA25_cS1_EERKT_NS1_6formatE,"axG",@progbits,_ZNSt10filesystem7__cxx114pathC5IA25_cS1_EERKT_NS1_6formatE,comdat
	.align 2
	.weak	_ZNSt10filesystem7__cxx114pathC2IA25_cS1_EERKT_NS1_6formatE
	.type	_ZNSt10filesystem7__cxx114pathC2IA25_cS1_EERKT_NS1_6formatE, @function
_ZNSt10filesystem7__cxx114pathC2IA25_cS1_EERKT_NS1_6formatE:
.LFB5264:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5264
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movl	%edx, %eax
	movb	%al, -100(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-88(%rbp), %rbx
	leaq	-65(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev@PLT
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10filesystem7__cxx118__detail17__effective_rangeIA25_cEEDaRKT_
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10filesystem7__cxx114path10_S_convertISt17basic_string_viewIcSt11char_traitsIcEEEEDaRKT_
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	leaq	-65(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB93:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ISt17basic_string_viewIcS2_EvEERKT_RKS3_
.LEHE93:
	leaq	-65(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	movq	-88(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
.LEHB94:
	call	_ZNSt10filesystem7__cxx114path5_ListC1Ev@PLT
.LEHE94:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
.LEHB95:
	call	_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv@PLT
.LEHE95:
	jmp	.L336
.L333:
	endbr64
	movq	%rax, %rbx
	leaq	-65(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB96:
	call	_Unwind_Resume@PLT
.L335:
	endbr64
	movq	%rax, %rbx
	movq	-88(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	call	_ZNSt10filesystem7__cxx114path5_ListD1Ev
	jmp	.L331
.L334:
	endbr64
	movq	%rax, %rbx
.L331:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE96:
.L336:
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L332
	call	__stack_chk_fail@PLT
.L332:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5264:
	.section	.gcc_except_table
.LLSDA5264:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5264-.LLSDACSB5264
.LLSDACSB5264:
	.uleb128 .LEHB93-.LFB5264
	.uleb128 .LEHE93-.LEHB93
	.uleb128 .L333-.LFB5264
	.uleb128 0
	.uleb128 .LEHB94-.LFB5264
	.uleb128 .LEHE94-.LEHB94
	.uleb128 .L334-.LFB5264
	.uleb128 0
	.uleb128 .LEHB95-.LFB5264
	.uleb128 .LEHE95-.LEHB95
	.uleb128 .L335-.LFB5264
	.uleb128 0
	.uleb128 .LEHB96-.LFB5264
	.uleb128 .LEHE96-.LEHB96
	.uleb128 0
	.uleb128 0
.LLSDACSE5264:
	.section	.text._ZNSt10filesystem7__cxx114pathC2IA25_cS1_EERKT_NS1_6formatE,"axG",@progbits,_ZNSt10filesystem7__cxx114pathC5IA25_cS1_EERKT_NS1_6formatE,comdat
	.size	_ZNSt10filesystem7__cxx114pathC2IA25_cS1_EERKT_NS1_6formatE, .-_ZNSt10filesystem7__cxx114pathC2IA25_cS1_EERKT_NS1_6formatE
	.weak	_ZNSt10filesystem7__cxx114pathC1IA25_cS1_EERKT_NS1_6formatE
	.set	_ZNSt10filesystem7__cxx114pathC1IA25_cS1_EERKT_NS1_6formatE,_ZNSt10filesystem7__cxx114pathC2IA25_cS1_EERKT_NS1_6formatE
	.section	.text._ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EEC2ERKS4_,"axG",@progbits,_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EEC5ERKS4_,comdat
	.align 2
	.weak	_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EEC2ERKS4_
	.type	_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EEC2ERKS4_, @function
_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EEC2ERKS4_:
.LFB5267:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5267
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	leaq	-41(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB97:
	call	_ZN9__gnu_cxx14__alloc_traitsISaISt10shared_ptrI4ChatEES3_E17_S_select_on_copyERKS4_
.LEHE97:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorISt10shared_ptrI4ChatESaIS2_EE4sizeEv
	movq	%rax, %rcx
	leaq	-41(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movq	%rbx, %rdi
.LEHB98:
	call	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EEC2EmRKS3_
.LEHE98:
	leaq	-41(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaISt10shared_ptrI4ChatEED1Ev
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE19_M_get_Tp_allocatorEv
	movq	%rax, %r13
	movq	-56(%rbp), %rax
	movq	(%rax), %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorISt10shared_ptrI4ChatESaIS2_EE3endEv
	movq	%rax, %r12
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorISt10shared_ptrI4ChatESaIS2_EE5beginEv
	movq	%r13, %rcx
	movq	%rbx, %rdx
	movq	%r12, %rsi
	movq	%rax, %rdi
.LEHB99:
	call	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E
.LEHE99:
	movq	-56(%rbp), %rdx
	movq	%rax, 8(%rdx)
	nop
	movq	-40(%rbp), %rax
	subq	%fs:40, %rax
	je	.L340
	jmp	.L343
.L341:
	endbr64
	movq	%rax, %rbx
	leaq	-41(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaISt10shared_ptrI4ChatEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB100:
	call	_Unwind_Resume@PLT
.L342:
	endbr64
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EED2Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE100:
.L343:
	call	__stack_chk_fail@PLT
.L340:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5267:
	.section	.gcc_except_table
.LLSDA5267:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5267-.LLSDACSB5267
.LLSDACSB5267:
	.uleb128 .LEHB97-.LFB5267
	.uleb128 .LEHE97-.LEHB97
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB98-.LFB5267
	.uleb128 .LEHE98-.LEHB98
	.uleb128 .L341-.LFB5267
	.uleb128 0
	.uleb128 .LEHB99-.LFB5267
	.uleb128 .LEHE99-.LEHB99
	.uleb128 .L342-.LFB5267
	.uleb128 0
	.uleb128 .LEHB100-.LFB5267
	.uleb128 .LEHE100-.LEHB100
	.uleb128 0
	.uleb128 0
.LLSDACSE5267:
	.section	.text._ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EEC2ERKS4_,"axG",@progbits,_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EEC5ERKS4_,comdat
	.size	_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EEC2ERKS4_, .-_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EEC2ERKS4_
	.weak	_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EEC1ERKS4_
	.set	_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EEC1ERKS4_,_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EEC2ERKS4_
	.section	.text._ZNSt6vectorI4UserSaIS0_EE5beginEv,"axG",@progbits,_ZNSt6vectorI4UserSaIS0_EE5beginEv,comdat
	.align 2
	.weak	_ZNSt6vectorI4UserSaIS0_EE5beginEv
	.type	_ZNSt6vectorI4UserSaIS0_EE5beginEv, @function
_ZNSt6vectorI4UserSaIS0_EE5beginEv:
.LFB5269:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIP4UserSt6vectorIS1_SaIS1_EEEC1ERKS2_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L346
	call	__stack_chk_fail@PLT
.L346:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5269:
	.size	_ZNSt6vectorI4UserSaIS0_EE5beginEv, .-_ZNSt6vectorI4UserSaIS0_EE5beginEv
	.section	.text._ZNSt6vectorI4UserSaIS0_EE3endEv,"axG",@progbits,_ZNSt6vectorI4UserSaIS0_EE3endEv,comdat
	.align 2
	.weak	_ZNSt6vectorI4UserSaIS0_EE3endEv
	.type	_ZNSt6vectorI4UserSaIS0_EE3endEv, @function
_ZNSt6vectorI4UserSaIS0_EE3endEv:
.LFB5270:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIP4UserSt6vectorIS1_SaIS1_EEEC1ERKS2_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L349
	call	__stack_chk_fail@PLT
.L349:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5270:
	.size	_ZNSt6vectorI4UserSaIS0_EE3endEv, .-_ZNSt6vectorI4UserSaIS0_EE3endEv
	.section	.text._ZN9__gnu_cxxneIP4UserSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_,"axG",@progbits,_ZN9__gnu_cxxneIP4UserSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_,comdat
	.weak	_ZN9__gnu_cxxneIP4UserSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	.type	_ZN9__gnu_cxxneIP4UserSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_, @function
_ZN9__gnu_cxxneIP4UserSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_:
.LFB5271:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4UserSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4UserSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rax
	cmpq	%rax, %rbx
	setne	%al
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5271:
	.size	_ZN9__gnu_cxxneIP4UserSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_, .-_ZN9__gnu_cxxneIP4UserSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIP4UserSt6vectorIS1_SaIS1_EEEppEv,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIP4UserSt6vectorIS1_SaIS1_EEEppEv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIP4UserSt6vectorIS1_SaIS1_EEEppEv
	.type	_ZN9__gnu_cxx17__normal_iteratorIP4UserSt6vectorIS1_SaIS1_EEEppEv, @function
_ZN9__gnu_cxx17__normal_iteratorIP4UserSt6vectorIS1_SaIS1_EEEppEv:
.LFB5272:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	120(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5272:
	.size	_ZN9__gnu_cxx17__normal_iteratorIP4UserSt6vectorIS1_SaIS1_EEEppEv, .-_ZN9__gnu_cxx17__normal_iteratorIP4UserSt6vectorIS1_SaIS1_EEEppEv
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIP4UserSt6vectorIS1_SaIS1_EEEdeEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIP4UserSt6vectorIS1_SaIS1_EEEdeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIP4UserSt6vectorIS1_SaIS1_EEEdeEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIP4UserSt6vectorIS1_SaIS1_EEEdeEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIP4UserSt6vectorIS1_SaIS1_EEEdeEv:
.LFB5273:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5273:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIP4UserSt6vectorIS1_SaIS1_EEEdeEv, .-_ZNK9__gnu_cxx17__normal_iteratorIP4UserSt6vectorIS1_SaIS1_EEEdeEv
	.section	.text._ZNSt6vectorIiSaIiEEC2ERKS1_,"axG",@progbits,_ZNSt6vectorIiSaIiEEC5ERKS1_,comdat
	.align 2
	.weak	_ZNSt6vectorIiSaIiEEC2ERKS1_
	.type	_ZNSt6vectorIiSaIiEEC2ERKS1_, @function
_ZNSt6vectorIiSaIiEEC2ERKS1_:
.LFB5275:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5275
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	leaq	-41(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB101:
	call	_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_
.LEHE101:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIiSaIiEE4sizeEv
	movq	%rax, %rcx
	leaq	-41(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movq	%rbx, %rdi
.LEHB102:
	call	_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_
.LEHE102:
	leaq	-41(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIiED1Ev
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	movq	%rax, %r13
	movq	-56(%rbp), %rax
	movq	(%rax), %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIiSaIiEE3endEv
	movq	%rax, %r12
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIiSaIiEE5beginEv
	movq	%r13, %rcx
	movq	%rbx, %rdx
	movq	%r12, %rsi
	movq	%rax, %rdi
.LEHB103:
	call	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E
.LEHE103:
	movq	-56(%rbp), %rdx
	movq	%rax, 8(%rdx)
	nop
	movq	-40(%rbp), %rax
	subq	%fs:40, %rax
	je	.L359
	jmp	.L362
.L360:
	endbr64
	movq	%rax, %rbx
	leaq	-41(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIiED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB104:
	call	_Unwind_Resume@PLT
.L361:
	endbr64
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIiSaIiEED2Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE104:
.L362:
	call	__stack_chk_fail@PLT
.L359:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5275:
	.section	.gcc_except_table
.LLSDA5275:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5275-.LLSDACSB5275
.LLSDACSB5275:
	.uleb128 .LEHB101-.LFB5275
	.uleb128 .LEHE101-.LEHB101
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB102-.LFB5275
	.uleb128 .LEHE102-.LEHB102
	.uleb128 .L360-.LFB5275
	.uleb128 0
	.uleb128 .LEHB103-.LFB5275
	.uleb128 .LEHE103-.LEHB103
	.uleb128 .L361-.LFB5275
	.uleb128 0
	.uleb128 .LEHB104-.LFB5275
	.uleb128 .LEHE104-.LEHB104
	.uleb128 0
	.uleb128 0
.LLSDACSE5275:
	.section	.text._ZNSt6vectorIiSaIiEEC2ERKS1_,"axG",@progbits,_ZNSt6vectorIiSaIiEEC5ERKS1_,comdat
	.size	_ZNSt6vectorIiSaIiEEC2ERKS1_, .-_ZNSt6vectorIiSaIiEEC2ERKS1_
	.weak	_ZNSt6vectorIiSaIiEEC1ERKS1_
	.set	_ZNSt6vectorIiSaIiEEC1ERKS1_,_ZNSt6vectorIiSaIiEEC2ERKS1_
	.section	.text._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_,"axG",@progbits,_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_,comdat
	.weak	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	.type	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_, @function
_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_:
.LFB5280:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@PLT
	testl	%eax, %eax
	sete	%al
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5280:
	.size	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_, .-_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	.section	.text._ZSt11make_sharedI4ChatJS0_EESt10shared_ptrIT_EDpOT0_,"axG",@progbits,_ZSt11make_sharedI4ChatJS0_EESt10shared_ptrIT_EDpOT0_,comdat
	.weak	_ZSt11make_sharedI4ChatJS0_EESt10shared_ptrIT_EDpOT0_
	.type	_ZSt11make_sharedI4ChatJS0_EESt10shared_ptrIT_EDpOT0_, @function
_ZSt11make_sharedI4ChatJS0_EESt10shared_ptrIT_EDpOT0_:
.LFB5281:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5281
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardI4ChatEOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %rbx
	leaq	-25(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaI4ChatEC1Ev
	movq	-40(%rbp), %rax
	leaq	-25(%rbp), %rcx
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB105:
	call	_ZSt15allocate_sharedI4ChatSaIS0_EJS0_EESt10shared_ptrIT_ERKT0_DpOT1_
.LEHE105:
	nop
	leaq	-25(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaI4ChatED1Ev
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L368
	jmp	.L370
.L369:
	endbr64
	movq	%rax, %rbx
	leaq	-25(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaI4ChatED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB106:
	call	_Unwind_Resume@PLT
.LEHE106:
.L370:
	call	__stack_chk_fail@PLT
.L368:
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5281:
	.section	.gcc_except_table
.LLSDA5281:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5281-.LLSDACSB5281
.LLSDACSB5281:
	.uleb128 .LEHB105-.LFB5281
	.uleb128 .LEHE105-.LEHB105
	.uleb128 .L369-.LFB5281
	.uleb128 0
	.uleb128 .LEHB106-.LFB5281
	.uleb128 .LEHE106-.LEHB106
	.uleb128 0
	.uleb128 0
.LLSDACSE5281:
	.section	.text._ZSt11make_sharedI4ChatJS0_EESt10shared_ptrIT_EDpOT0_,"axG",@progbits,_ZSt11make_sharedI4ChatJS0_EESt10shared_ptrIT_EDpOT0_,comdat
	.size	_ZSt11make_sharedI4ChatJS0_EESt10shared_ptrIT_EDpOT0_, .-_ZSt11make_sharedI4ChatJS0_EESt10shared_ptrIT_EDpOT0_
	.section	.text._ZNSt10shared_ptrI4ChatEaSEOS1_,"axG",@progbits,_ZNSt10shared_ptrI4ChatEaSEOS1_,comdat
	.align 2
	.weak	_ZNSt10shared_ptrI4ChatEaSEOS1_
	.type	_ZNSt10shared_ptrI4ChatEaSEOS1_, @function
_ZNSt10shared_ptrI4ChatEaSEOS1_:
.LFB5282:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRSt10shared_ptrI4ChatEEONSt16remove_referenceIT_E4typeEOS5_
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEaSEOS3_
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5282:
	.size	_ZNSt10shared_ptrI4ChatEaSEOS1_, .-_ZNSt10shared_ptrI4ChatEaSEOS1_
	.section	.text._ZNKSt6vectorI4UserSaIS0_EE4sizeEv,"axG",@progbits,_ZNKSt6vectorI4UserSaIS0_EE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorI4UserSaIS0_EE4sizeEv
	.type	_ZNKSt6vectorI4UserSaIS0_EE4sizeEv, @function
_ZNKSt6vectorI4UserSaIS0_EE4sizeEv:
.LFB5283:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rdx, %rax
	subq	%rcx, %rax
	sarq	$3, %rax
	movq	%rax, %rdx
	movabsq	$-1229782938247303441, %rax
	imulq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5283:
	.size	_ZNKSt6vectorI4UserSaIS0_EE4sizeEv, .-_ZNKSt6vectorI4UserSaIS0_EE4sizeEv
	.section	.text._ZNSt6vectorI4UserSaIS0_EE9push_backERKS0_,"axG",@progbits,_ZNSt6vectorI4UserSaIS0_EE9push_backERKS0_,comdat
	.align 2
	.weak	_ZNSt6vectorI4UserSaIS0_EE9push_backERKS0_
	.type	_ZNSt6vectorI4UserSaIS0_EE9push_backERKS0_, @function
_ZNSt6vectorI4UserSaIS0_EE9push_backERKS0_:
.LFB5284:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	je	.L376
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaI4UserEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	120(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L378
.L376:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorI4UserSaIS0_EE3endEv
	movq	%rax, %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorI4UserSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_
.L378:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5284:
	.size	_ZNSt6vectorI4UserSaIS0_EE9push_backERKS0_, .-_ZNSt6vectorI4UserSaIS0_EE9push_backERKS0_
	.section	.text._ZNKSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEcvbEv,"axG",@progbits,_ZNKSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEcvbEv,comdat
	.align 2
	.weak	_ZNKSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEcvbEv
	.type	_ZNKSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEcvbEv, @function
_ZNKSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEcvbEv:
.LFB5286:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	setne	%al
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5286:
	.size	_ZNKSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEcvbEv, .-_ZNKSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEcvbEv
	.section	.text._ZNKSt19__shared_ptr_accessI4UserLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv,"axG",@progbits,_ZNKSt19__shared_ptr_accessI4UserLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv,comdat
	.align 2
	.weak	_ZNKSt19__shared_ptr_accessI4UserLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	.type	_ZNKSt19__shared_ptr_accessI4UserLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv, @function
_ZNKSt19__shared_ptr_accessI4UserLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv:
.LFB5288:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt19__shared_ptr_accessI4UserLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5288:
	.size	_ZNKSt19__shared_ptr_accessI4UserLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv, .-_ZNKSt19__shared_ptr_accessI4UserLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	.section	.text._ZNKSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEcvbEv,"axG",@progbits,_ZNKSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEcvbEv,comdat
	.align 2
	.weak	_ZNKSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEcvbEv
	.type	_ZNKSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEcvbEv, @function
_ZNKSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEcvbEv:
.LFB5291:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	setne	%al
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5291:
	.size	_ZNKSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEcvbEv, .-_ZNKSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEcvbEv
	.section	.text._ZNKSt19__shared_ptr_accessI4ChatLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv,"axG",@progbits,_ZNKSt19__shared_ptr_accessI4ChatLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv,comdat
	.align 2
	.weak	_ZNKSt19__shared_ptr_accessI4ChatLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	.type	_ZNKSt19__shared_ptr_accessI4ChatLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv, @function
_ZNKSt19__shared_ptr_accessI4ChatLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv:
.LFB5292:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt19__shared_ptr_accessI4ChatLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5292:
	.size	_ZNKSt19__shared_ptr_accessI4ChatLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv, .-_ZNKSt19__shared_ptr_accessI4ChatLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	.section	.text._ZNSt6vectorI4UserSaIS0_EEixEm,"axG",@progbits,_ZNSt6vectorI4UserSaIS0_EEixEm,comdat
	.align 2
	.weak	_ZNSt6vectorI4UserSaIS0_EEixEm
	.type	_ZNSt6vectorI4UserSaIS0_EEixEm, @function
_ZNSt6vectorI4UserSaIS0_EEixEm:
.LFB5294:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$4, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5294:
	.size	_ZNSt6vectorI4UserSaIS0_EEixEm, .-_ZNSt6vectorI4UserSaIS0_EEixEm
	.section	.text._ZSteqIcEN9__gnu_cxx11__enable_ifIXsrSt9__is_charIT_E7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS3_St11char_traitsIS3_ESaIS3_EEESE_,"axG",@progbits,_ZSteqIcEN9__gnu_cxx11__enable_ifIXsrSt9__is_charIT_E7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS3_St11char_traitsIS3_ESaIS3_EEESE_,comdat
	.weak	_ZSteqIcEN9__gnu_cxx11__enable_ifIXsrSt9__is_charIT_E7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS3_St11char_traitsIS3_ESaIS3_EEESE_
	.type	_ZSteqIcEN9__gnu_cxx11__enable_ifIXsrSt9__is_charIT_E7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS3_St11char_traitsIS3_ESaIS3_EEESE_, @function
_ZSteqIcEN9__gnu_cxx11__enable_ifIXsrSt9__is_charIT_E7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS3_St11char_traitsIS3_ESaIS3_EEESE_:
.LFB5295:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv@PLT
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv@PLT
	cmpq	%rax, %rbx
	jne	.L390
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv@PLT
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4dataEv@PLT
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4dataEv@PLT
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11char_traitsIcE7compareEPKcS2_m
	testl	%eax, %eax
	jne	.L390
	movl	$1, %eax
	jmp	.L391
.L390:
	movl	$0, %eax
.L391:
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5295:
	.size	_ZSteqIcEN9__gnu_cxx11__enable_ifIXsrSt9__is_charIT_E7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS3_St11char_traitsIS3_ESaIS3_EEESE_, .-_ZSteqIcEN9__gnu_cxx11__enable_ifIXsrSt9__is_charIT_E7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS3_St11char_traitsIS3_ESaIS3_EEESE_
	.section	.text._ZSt11make_sharedI4UserJRS0_EESt10shared_ptrIT_EDpOT0_,"axG",@progbits,_ZSt11make_sharedI4UserJRS0_EESt10shared_ptrIT_EDpOT0_,comdat
	.weak	_ZSt11make_sharedI4UserJRS0_EESt10shared_ptrIT_EDpOT0_
	.type	_ZSt11make_sharedI4UserJRS0_EESt10shared_ptrIT_EDpOT0_, @function
_ZSt11make_sharedI4UserJRS0_EESt10shared_ptrIT_EDpOT0_:
.LFB5296:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5296
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIR4UserEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %rbx
	leaq	-25(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaI4UserEC1Ev
	movq	-40(%rbp), %rax
	leaq	-25(%rbp), %rcx
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB107:
	call	_ZSt15allocate_sharedI4UserSaIS0_EJRS0_EESt10shared_ptrIT_ERKT0_DpOT1_
.LEHE107:
	nop
	leaq	-25(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaI4UserED1Ev
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L396
	jmp	.L398
.L397:
	endbr64
	movq	%rax, %rbx
	leaq	-25(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaI4UserED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB108:
	call	_Unwind_Resume@PLT
.LEHE108:
.L398:
	call	__stack_chk_fail@PLT
.L396:
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5296:
	.section	.gcc_except_table
.LLSDA5296:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5296-.LLSDACSB5296
.LLSDACSB5296:
	.uleb128 .LEHB107-.LFB5296
	.uleb128 .LEHE107-.LEHB107
	.uleb128 .L397-.LFB5296
	.uleb128 0
	.uleb128 .LEHB108-.LFB5296
	.uleb128 .LEHE108-.LEHB108
	.uleb128 0
	.uleb128 0
.LLSDACSE5296:
	.section	.text._ZSt11make_sharedI4UserJRS0_EESt10shared_ptrIT_EDpOT0_,"axG",@progbits,_ZSt11make_sharedI4UserJRS0_EESt10shared_ptrIT_EDpOT0_,comdat
	.size	_ZSt11make_sharedI4UserJRS0_EESt10shared_ptrIT_EDpOT0_, .-_ZSt11make_sharedI4UserJRS0_EESt10shared_ptrIT_EDpOT0_
	.section	.text._ZNSt10shared_ptrI4UserEaSEOS1_,"axG",@progbits,_ZNSt10shared_ptrI4UserEaSEOS1_,comdat
	.align 2
	.weak	_ZNSt10shared_ptrI4UserEaSEOS1_
	.type	_ZNSt10shared_ptrI4UserEaSEOS1_, @function
_ZNSt10shared_ptrI4UserEaSEOS1_:
.LFB5297:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRSt10shared_ptrI4UserEEONSt16remove_referenceIT_E4typeEOS5_
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEaSEOS3_
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5297:
	.size	_ZNSt10shared_ptrI4UserEaSEOS1_, .-_ZNSt10shared_ptrI4UserEaSEOS1_
	.section	.text._ZNKSt6vectorISt10shared_ptrI4ChatESaIS2_EE4sizeEv,"axG",@progbits,_ZNKSt6vectorISt10shared_ptrI4ChatESaIS2_EE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorISt10shared_ptrI4ChatESaIS2_EE4sizeEv
	.type	_ZNKSt6vectorISt10shared_ptrI4ChatESaIS2_EE4sizeEv, @function
_ZNKSt6vectorISt10shared_ptrI4ChatESaIS2_EE4sizeEv:
.LFB5300:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rdx, %rax
	subq	%rcx, %rax
	sarq	$4, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5300:
	.size	_ZNKSt6vectorISt10shared_ptrI4ChatESaIS2_EE4sizeEv, .-_ZNKSt6vectorISt10shared_ptrI4ChatESaIS2_EE4sizeEv
	.section	.text._ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EEixEm,"axG",@progbits,_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EEixEm,comdat
	.align 2
	.weak	_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EEixEm
	.type	_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EEixEm, @function
_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EEixEm:
.LFB5301:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	salq	$4, %rax
	addq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5301:
	.size	_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EEixEm, .-_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EEixEm
	.section	.text._ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_,"axG",@progbits,_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_,comdat
	.align 2
	.weak	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_
	.type	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_, @function
_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_:
.LFB5302:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -8(%rbp)
	je	.L406
	cmpq	$0, -8(%rbp)
	je	.L407
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv
.L407:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L408
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv
.L408:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L406:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5302:
	.size	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_, .-_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_
	.section	.text._ZSt11make_sharedI4ChatJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt10shared_ptrIT_EDpOT0_,"axG",@progbits,_ZSt11make_sharedI4ChatJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt10shared_ptrIT_EDpOT0_,comdat
	.weak	_ZSt11make_sharedI4ChatJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt10shared_ptrIT_EDpOT0_
	.type	_ZSt11make_sharedI4ChatJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt10shared_ptrIT_EDpOT0_, @function
_ZSt11make_sharedI4ChatJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt10shared_ptrIT_EDpOT0_:
.LFB5303:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5303
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS7_E4typeE
	movq	%rax, %rbx
	leaq	-25(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaI4ChatEC1Ev
	movq	-40(%rbp), %rax
	leaq	-25(%rbp), %rcx
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB109:
	call	_ZSt15allocate_sharedI4ChatSaIS0_EJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt10shared_ptrIT_ERKT0_DpOT1_
.LEHE109:
	nop
	leaq	-25(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaI4ChatED1Ev
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L413
	jmp	.L415
.L414:
	endbr64
	movq	%rax, %rbx
	leaq	-25(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaI4ChatED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB110:
	call	_Unwind_Resume@PLT
.LEHE110:
.L415:
	call	__stack_chk_fail@PLT
.L413:
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5303:
	.section	.gcc_except_table
.LLSDA5303:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5303-.LLSDACSB5303
.LLSDACSB5303:
	.uleb128 .LEHB109-.LFB5303
	.uleb128 .LEHE109-.LEHB109
	.uleb128 .L414-.LFB5303
	.uleb128 0
	.uleb128 .LEHB110-.LFB5303
	.uleb128 .LEHE110-.LEHB110
	.uleb128 0
	.uleb128 0
.LLSDACSE5303:
	.section	.text._ZSt11make_sharedI4ChatJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt10shared_ptrIT_EDpOT0_,"axG",@progbits,_ZSt11make_sharedI4ChatJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt10shared_ptrIT_EDpOT0_,comdat
	.size	_ZSt11make_sharedI4ChatJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt10shared_ptrIT_EDpOT0_, .-_ZSt11make_sharedI4ChatJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt10shared_ptrIT_EDpOT0_
	.section	.text._ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EE9push_backERKS2_,"axG",@progbits,_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EE9push_backERKS2_,comdat
	.align 2
	.weak	_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EE9push_backERKS2_
	.type	_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EE9push_backERKS2_, @function
_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EE9push_backERKS2_:
.LFB5304:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	je	.L417
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaISt10shared_ptrI4ChatEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L419
.L417:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EE3endEv
	movq	%rax, %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_
.L419:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5304:
	.size	_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EE9push_backERKS2_, .-_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EE9push_backERKS2_
	.section	.text._ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKS2_,"axG",@progbits,_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC5ERKS2_,comdat
	.align 2
	.weak	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKS2_
	.type	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKS2_, @function
_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKS2_:
.LFB5307:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L422
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv
.L422:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5307:
	.size	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKS2_, .-_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKS2_
	.weak	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1ERKS2_
	.set	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1ERKS2_,_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKS2_
	.section	.text._ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_,"axG",@progbits,_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_,comdat
	.weak	_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_
	.type	_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_, @function
_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_:
.LFB5309:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSteqIcEN9__gnu_cxx11__enable_ifIXsrSt9__is_charIT_E7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS3_St11char_traitsIS3_ESaIS3_EEESE_
	xorl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5309:
	.size	_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_, .-_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_
	.section	.text._ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE6_M_ptrEv,"axG",@progbits,_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE6_M_ptrEv,comdat
	.align 2
	.weak	_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE6_M_ptrEv
	.type	_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE6_M_ptrEv, @function
_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE6_M_ptrEv:
.LFB5400:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt3getILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5400:
	.size	_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE6_M_ptrEv, .-_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE6_M_ptrEv
	.section	.text._ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE11get_deleterEv,"axG",@progbits,_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE11get_deleterEv,comdat
	.align 2
	.weak	_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE11get_deleterEv
	.type	_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE11get_deleterEv, @function
_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE11get_deleterEv:
.LFB5401:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE10_M_deleterEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5401:
	.size	_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE11get_deleterEv, .-_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE11get_deleterEv
	.section	.text._ZSt4moveIRPNSt10filesystem7__cxx114path5_List5_ImplEEONSt16remove_referenceIT_E4typeEOS8_,"axG",@progbits,_ZSt4moveIRPNSt10filesystem7__cxx114path5_List5_ImplEEONSt16remove_referenceIT_E4typeEOS8_,comdat
	.weak	_ZSt4moveIRPNSt10filesystem7__cxx114path5_List5_ImplEEONSt16remove_referenceIT_E4typeEOS8_
	.type	_ZSt4moveIRPNSt10filesystem7__cxx114path5_List5_ImplEEONSt16remove_referenceIT_E4typeEOS8_, @function
_ZSt4moveIRPNSt10filesystem7__cxx114path5_List5_ImplEEONSt16remove_referenceIT_E4typeEOS8_:
.LFB5402:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5402:
	.size	_ZSt4moveIRPNSt10filesystem7__cxx114path5_List5_ImplEEONSt16remove_referenceIT_E4typeEOS8_, .-_ZSt4moveIRPNSt10filesystem7__cxx114path5_List5_ImplEEONSt16remove_referenceIT_E4typeEOS8_
	.section	.text._ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_,"axG",@progbits,_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_,comdat
	.weak	_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_
	.type	_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, @function
_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_:
.LFB5420:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5420:
	.size	_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, .-_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_
	.section	.rodata
	.align 8
.LC36:
	.string	"basic_string::_M_construct null not valid"
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag:
.LFB5419:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5419
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_
	testb	%al, %al
	je	.L434
	movq	-48(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.L434
	movl	$1, %eax
	jmp	.L435
.L434:
	movl	$0, %eax
.L435:
	testb	%al, %al
	je	.L436
	leaq	.LC36(%rip), %rax
	movq	%rax, %rdi
.LEHB111:
	call	_ZSt19__throw_logic_errorPKc@PLT
.L436:
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$15, %rax
	jbe	.L437
	leaq	-32(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc@PLT
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm@PLT
.LEHE111:
.L437:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
.LEHB112:
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv@PLT
.LEHE112:
	movq	%rax, %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_@PLT
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB113:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm@PLT
.LEHE113:
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L440
	jmp	.L443
.L441:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
.LEHB114:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	call	__cxa_rethrow@PLT
.LEHE114:
.L442:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB115:
	call	_Unwind_Resume@PLT
.LEHE115:
.L443:
	call	__stack_chk_fail@PLT
.L440:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5419:
	.section	.gcc_except_table
	.align 4
.LLSDA5419:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT5419-.LLSDATTD5419
.LLSDATTD5419:
	.byte	0x1
	.uleb128 .LLSDACSE5419-.LLSDACSB5419
.LLSDACSB5419:
	.uleb128 .LEHB111-.LFB5419
	.uleb128 .LEHE111-.LEHB111
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB112-.LFB5419
	.uleb128 .LEHE112-.LEHB112
	.uleb128 .L441-.LFB5419
	.uleb128 0x1
	.uleb128 .LEHB113-.LFB5419
	.uleb128 .LEHE113-.LEHB113
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB114-.LFB5419
	.uleb128 .LEHE114-.LEHB114
	.uleb128 .L442-.LFB5419
	.uleb128 0
	.uleb128 .LEHB115-.LFB5419
	.uleb128 .LEHE115-.LEHB115
	.uleb128 0
	.uleb128 0
.LLSDACSE5419:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT5419:
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,comdat
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
	.section	.text._ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE10_M_deleterEv,"axG",@progbits,_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE10_M_deleterEv,comdat
	.align 2
	.weak	_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE10_M_deleterEv
	.type	_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE10_M_deleterEv, @function
_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE10_M_deleterEv:
.LFB5432:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt3getILm1EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5432:
	.size	_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE10_M_deleterEv, .-_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE10_M_deleterEv
	.section	.text._ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv,"axG",@progbits,_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv,comdat
	.align 2
	.weak	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv
	.type	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv, @function
_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv:
.LFB5479:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	-88(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -48(%rbp)
	movl	$-1, -80(%rbp)
	movzbl	__libc_single_threaded(%rip), %eax
	testb	%al, %al
	setne	%al
	testb	%al, %al
	je	.L448
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	-80(%rbp), %eax
	movl	%eax, -76(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -72(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	movl	-76(%rbp), %eax
	addl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movl	-72(%rbp), %eax
	jmp	.L450
.L448:
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	-80(%rbp), %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %edx
	movq	-32(%rbp), %rax
	lock xaddl	%edx, (%rax)
	movl	%edx, %eax
	nop
.L450:
	cmpl	$1, %eax
	sete	%al
	testb	%al, %al
	je	.L458
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movq	(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	-88(%rbp), %rax
	addq	$12, %rax
	movq	%rax, -24(%rbp)
	movl	$-1, -64(%rbp)
	movzbl	__libc_single_threaded(%rip), %eax
	testb	%al, %al
	setne	%al
	testb	%al, %al
	je	.L454
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, -60(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -56(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movl	-60(%rbp), %eax
	addl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	-56(%rbp), %eax
	jmp	.L456
.L454:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %edx
	movq	-8(%rbp), %rax
	lock xaddl	%edx, (%rax)
	movl	%edx, %eax
	nop
.L456:
	cmpl	$1, %eax
	sete	%al
	testb	%al, %al
	je	.L458
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	addq	$24, %rax
	movq	(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L458:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5479:
	.size	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv, .-_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv
	.section	.text._ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_swapERS2_,"axG",@progbits,_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_swapERS2_,comdat
	.align 2
	.weak	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_swapERS2_
	.type	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_swapERS2_, @function
_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_swapERS2_:
.LFB5481:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5481:
	.size	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_swapERS2_, .-_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_swapERS2_
	.section	.text._ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEC2Ev,"axG",@progbits,_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEC5Ev,comdat
	.align 2
	.weak	_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEC2Ev
	.type	_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEC2Ev, @function
_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEC2Ev:
.LFB5483:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5483:
	.size	_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEC2Ev, .-_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEC2Ev
	.weak	_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEC1Ev
	.set	_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEC1Ev,_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEC2Ev
	.section	.text._ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEC2Ev,"axG",@progbits,_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEC5Ev,comdat
	.align 2
	.weak	_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEC2Ev
	.type	_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEC2Ev, @function
_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEC2Ev:
.LFB5486:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5486:
	.size	_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEC2Ev, .-_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEC2Ev
	.weak	_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEC1Ev
	.set	_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEC1Ev,_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEC2Ev
	.section	.text._ZNSaI4UserEC2Ev,"axG",@progbits,_ZNSaI4UserEC5Ev,comdat
	.align 2
	.weak	_ZNSaI4UserEC2Ev
	.type	_ZNSaI4UserEC2Ev, @function
_ZNSaI4UserEC2Ev:
.LFB5489:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorI4UserEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5489:
	.size	_ZNSaI4UserEC2Ev, .-_ZNSaI4UserEC2Ev
	.weak	_ZNSaI4UserEC1Ev
	.set	_ZNSaI4UserEC1Ev,_ZNSaI4UserEC2Ev
	.section	.text._ZNSt12_Vector_baseI4UserSaIS0_EE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseI4UserSaIS0_EE17_Vector_impl_dataC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI4UserSaIS0_EE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseI4UserSaIS0_EE17_Vector_impl_dataC2Ev, @function
_ZNSt12_Vector_baseI4UserSaIS0_EE17_Vector_impl_dataC2Ev:
.LFB5492:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5492:
	.size	_ZNSt12_Vector_baseI4UserSaIS0_EE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseI4UserSaIS0_EE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseI4UserSaIS0_EE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseI4UserSaIS0_EE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseI4UserSaIS0_EE17_Vector_impl_dataC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorI4UserED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI4UserED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI4UserED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorI4UserED2Ev, @function
_ZN9__gnu_cxx13new_allocatorI4UserED2Ev:
.LFB5495:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5495:
	.size	_ZN9__gnu_cxx13new_allocatorI4UserED2Ev, .-_ZN9__gnu_cxx13new_allocatorI4UserED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorI4UserED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorI4UserED1Ev,_ZN9__gnu_cxx13new_allocatorI4UserED2Ev
	.section	.text._ZNSt12_Vector_baseI4UserSaIS0_EE13_M_deallocateEPS0_m,"axG",@progbits,_ZNSt12_Vector_baseI4UserSaIS0_EE13_M_deallocateEPS0_m,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI4UserSaIS0_EE13_M_deallocateEPS0_m
	.type	_ZNSt12_Vector_baseI4UserSaIS0_EE13_M_deallocateEPS0_m, @function
_ZNSt12_Vector_baseI4UserSaIS0_EE13_M_deallocateEPS0_m:
.LFB5497:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L467
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaI4UserEE10deallocateERS1_PS0_m
.L467:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5497:
	.size	_ZNSt12_Vector_baseI4UserSaIS0_EE13_M_deallocateEPS0_m, .-_ZNSt12_Vector_baseI4UserSaIS0_EE13_M_deallocateEPS0_m
	.section	.text._ZNSt12_Vector_baseI4UserSaIS0_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseI4UserSaIS0_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI4UserSaIS0_EE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseI4UserSaIS0_EE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseI4UserSaIS0_EE19_M_get_Tp_allocatorEv:
.LFB5498:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5498:
	.size	_ZNSt12_Vector_baseI4UserSaIS0_EE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseI4UserSaIS0_EE19_M_get_Tp_allocatorEv
	.section	.text._ZSt8_DestroyIP4UserS0_EvT_S2_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIP4UserS0_EvT_S2_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIP4UserS0_EvT_S2_RSaIT0_E
	.type	_ZSt8_DestroyIP4UserS0_EvT_S2_RSaIT0_E, @function
_ZSt8_DestroyIP4UserS0_EvT_S2_RSaIT0_E:
.LFB5499:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIP4UserEvT_S2_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5499:
	.size	_ZSt8_DestroyIP4UserS0_EvT_S2_RSaIT0_E, .-_ZSt8_DestroyIP4UserS0_EvT_S2_RSaIT0_E
	.section	.text._ZNSaISt10shared_ptrI4ChatEEC2Ev,"axG",@progbits,_ZNSaISt10shared_ptrI4ChatEEC5Ev,comdat
	.align 2
	.weak	_ZNSaISt10shared_ptrI4ChatEEC2Ev
	.type	_ZNSaISt10shared_ptrI4ChatEEC2Ev, @function
_ZNSaISt10shared_ptrI4ChatEEC2Ev:
.LFB5501:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5501:
	.size	_ZNSaISt10shared_ptrI4ChatEEC2Ev, .-_ZNSaISt10shared_ptrI4ChatEEC2Ev
	.weak	_ZNSaISt10shared_ptrI4ChatEEC1Ev
	.set	_ZNSaISt10shared_ptrI4ChatEEC1Ev,_ZNSaISt10shared_ptrI4ChatEEC2Ev
	.section	.text._ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE17_Vector_impl_dataC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE17_Vector_impl_dataC2Ev, @function
_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE17_Vector_impl_dataC2Ev:
.LFB5504:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5504:
	.size	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE17_Vector_impl_dataC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEED2Ev, @function
_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEED2Ev:
.LFB5507:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5507:
	.size	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEED2Ev, .-_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEED1Ev,_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEED2Ev
	.section	.text._ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE13_M_deallocateEPS2_m,"axG",@progbits,_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE13_M_deallocateEPS2_m,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE13_M_deallocateEPS2_m
	.type	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE13_M_deallocateEPS2_m, @function
_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE13_M_deallocateEPS2_m:
.LFB5509:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L476
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaISt10shared_ptrI4ChatEEE10deallocateERS3_PS2_m
.L476:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5509:
	.size	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE13_M_deallocateEPS2_m, .-_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE13_M_deallocateEPS2_m
	.section	.text._ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE19_M_get_Tp_allocatorEv:
.LFB5510:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5510:
	.size	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE19_M_get_Tp_allocatorEv
	.section	.text._ZSt8_DestroyIPSt10shared_ptrI4ChatES2_EvT_S4_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIPSt10shared_ptrI4ChatES2_EvT_S4_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIPSt10shared_ptrI4ChatES2_EvT_S4_RSaIT0_E
	.type	_ZSt8_DestroyIPSt10shared_ptrI4ChatES2_EvT_S4_RSaIT0_E, @function
_ZSt8_DestroyIPSt10shared_ptrI4ChatES2_EvT_S4_RSaIT0_E:
.LFB5511:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPSt10shared_ptrI4ChatEEvT_S4_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5511:
	.size	_ZSt8_DestroyIPSt10shared_ptrI4ChatES2_EvT_S4_RSaIT0_E, .-_ZSt8_DestroyIPSt10shared_ptrI4ChatES2_EvT_S4_RSaIT0_E
	.section	.text._ZN9__gnu_cxx14__alloc_traitsISaISt10shared_ptrI4ChatEES3_E17_S_select_on_copyERKS4_,"axG",@progbits,_ZN9__gnu_cxx14__alloc_traitsISaISt10shared_ptrI4ChatEES3_E17_S_select_on_copyERKS4_,comdat
	.weak	_ZN9__gnu_cxx14__alloc_traitsISaISt10shared_ptrI4ChatEES3_E17_S_select_on_copyERKS4_
	.type	_ZN9__gnu_cxx14__alloc_traitsISaISt10shared_ptrI4ChatEES3_E17_S_select_on_copyERKS4_, @function
_ZN9__gnu_cxx14__alloc_traitsISaISt10shared_ptrI4ChatEES3_E17_S_select_on_copyERKS4_:
.LFB5512:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaISt10shared_ptrI4ChatEEE37select_on_container_copy_constructionERKS3_
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L482
	call	__stack_chk_fail@PLT
.L482:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5512:
	.size	_ZN9__gnu_cxx14__alloc_traitsISaISt10shared_ptrI4ChatEES3_E17_S_select_on_copyERKS4_, .-_ZN9__gnu_cxx14__alloc_traitsISaISt10shared_ptrI4ChatEES3_E17_S_select_on_copyERKS4_
	.section	.text._ZNKSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE19_M_get_Tp_allocatorEv
	.type	_ZNKSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE19_M_get_Tp_allocatorEv, @function
_ZNKSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE19_M_get_Tp_allocatorEv:
.LFB5513:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5513:
	.size	_ZNKSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE19_M_get_Tp_allocatorEv, .-_ZNKSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE19_M_get_Tp_allocatorEv
	.section	.text._ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EEC2EmRKS3_,"axG",@progbits,_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EEC5EmRKS3_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EEC2EmRKS3_
	.type	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EEC2EmRKS3_, @function
_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EEC2EmRKS3_:
.LFB5515:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5515
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE12_Vector_implC1ERKS3_
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB116:
	call	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE17_M_create_storageEm
.LEHE116:
	jmp	.L488
.L487:
	endbr64
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE12_Vector_implD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB117:
	call	_Unwind_Resume@PLT
.LEHE117:
.L488:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5515:
	.section	.gcc_except_table
.LLSDA5515:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5515-.LLSDACSB5515
.LLSDACSB5515:
	.uleb128 .LEHB116-.LFB5515
	.uleb128 .LEHE116-.LEHB116
	.uleb128 .L487-.LFB5515
	.uleb128 0
	.uleb128 .LEHB117-.LFB5515
	.uleb128 .LEHE117-.LEHB117
	.uleb128 0
	.uleb128 0
.LLSDACSE5515:
	.section	.text._ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EEC2EmRKS3_,"axG",@progbits,_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EEC5EmRKS3_,comdat
	.size	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EEC2EmRKS3_, .-_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EEC2EmRKS3_
	.weak	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EEC1EmRKS3_
	.set	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EEC1EmRKS3_,_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EEC2EmRKS3_
	.section	.text._ZNKSt6vectorISt10shared_ptrI4ChatESaIS2_EE5beginEv,"axG",@progbits,_ZNKSt6vectorISt10shared_ptrI4ChatESaIS2_EE5beginEv,comdat
	.align 2
	.weak	_ZNKSt6vectorISt10shared_ptrI4ChatESaIS2_EE5beginEv
	.type	_ZNKSt6vectorISt10shared_ptrI4ChatESaIS2_EE5beginEv, @function
_ZNKSt6vectorISt10shared_ptrI4ChatESaIS2_EE5beginEv:
.LFB5517:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEEC1ERKS5_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L491
	call	__stack_chk_fail@PLT
.L491:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5517:
	.size	_ZNKSt6vectorISt10shared_ptrI4ChatESaIS2_EE5beginEv, .-_ZNKSt6vectorISt10shared_ptrI4ChatESaIS2_EE5beginEv
	.section	.text._ZNKSt6vectorISt10shared_ptrI4ChatESaIS2_EE3endEv,"axG",@progbits,_ZNKSt6vectorISt10shared_ptrI4ChatESaIS2_EE3endEv,comdat
	.align 2
	.weak	_ZNKSt6vectorISt10shared_ptrI4ChatESaIS2_EE3endEv
	.type	_ZNKSt6vectorISt10shared_ptrI4ChatESaIS2_EE3endEv, @function
_ZNKSt6vectorISt10shared_ptrI4ChatESaIS2_EE3endEv:
.LFB5518:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEEC1ERKS5_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L494
	call	__stack_chk_fail@PLT
.L494:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5518:
	.size	_ZNKSt6vectorISt10shared_ptrI4ChatESaIS2_EE3endEv, .-_ZNKSt6vectorISt10shared_ptrI4ChatESaIS2_EE3endEv
	.section	.text._ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E,"axG",@progbits,_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E,comdat
	.weak	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E
	.type	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E, @function
_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E:
.LFB5519:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5519:
	.size	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E, .-_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIP4UserSt6vectorIS1_SaIS1_EEEC2ERKS2_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIP4UserSt6vectorIS1_SaIS1_EEEC5ERKS2_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIP4UserSt6vectorIS1_SaIS1_EEEC2ERKS2_
	.type	_ZN9__gnu_cxx17__normal_iteratorIP4UserSt6vectorIS1_SaIS1_EEEC2ERKS2_, @function
_ZN9__gnu_cxx17__normal_iteratorIP4UserSt6vectorIS1_SaIS1_EEEC2ERKS2_:
.LFB5521:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5521:
	.size	_ZN9__gnu_cxx17__normal_iteratorIP4UserSt6vectorIS1_SaIS1_EEEC2ERKS2_, .-_ZN9__gnu_cxx17__normal_iteratorIP4UserSt6vectorIS1_SaIS1_EEEC2ERKS2_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIP4UserSt6vectorIS1_SaIS1_EEEC1ERKS2_
	.set	_ZN9__gnu_cxx17__normal_iteratorIP4UserSt6vectorIS1_SaIS1_EEEC1ERKS2_,_ZN9__gnu_cxx17__normal_iteratorIP4UserSt6vectorIS1_SaIS1_EEEC2ERKS2_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIP4UserSt6vectorIS1_SaIS1_EEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIP4UserSt6vectorIS1_SaIS1_EEE4baseEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIP4UserSt6vectorIS1_SaIS1_EEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIP4UserSt6vectorIS1_SaIS1_EEE4baseEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIP4UserSt6vectorIS1_SaIS1_EEE4baseEv:
.LFB5523:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5523:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIP4UserSt6vectorIS1_SaIS1_EEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIP4UserSt6vectorIS1_SaIS1_EEE4baseEv
	.section	.text._ZNKSt6vectorIiSaIiEE4sizeEv,"axG",@progbits,_ZNKSt6vectorIiSaIiEE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIiSaIiEE4sizeEv
	.type	_ZNKSt6vectorIiSaIiEE4sizeEv, @function
_ZNKSt6vectorIiSaIiEE4sizeEv:
.LFB5524:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rdx, %rax
	subq	%rcx, %rax
	sarq	$2, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5524:
	.size	_ZNKSt6vectorIiSaIiEE4sizeEv, .-_ZNKSt6vectorIiSaIiEE4sizeEv
	.section	.text._ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_,"axG",@progbits,_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_,comdat
	.weak	_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_
	.type	_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_, @function
_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_:
.LFB5525:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L504
	call	__stack_chk_fail@PLT
.L504:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5525:
	.size	_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_, .-_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_
	.section	.text._ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.type	_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, @function
_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv:
.LFB5526:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5526:
	.size	_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, .-_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.section	.text._ZNSaIiED2Ev,"axG",@progbits,_ZNSaIiED5Ev,comdat
	.align 2
	.weak	_ZNSaIiED2Ev
	.type	_ZNSaIiED2Ev, @function
_ZNSaIiED2Ev:
.LFB5528:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIiED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5528:
	.size	_ZNSaIiED2Ev, .-_ZNSaIiED2Ev
	.weak	_ZNSaIiED1Ev
	.set	_ZNSaIiED1Ev,_ZNSaIiED2Ev
	.section	.text._ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev:
.LFB5532:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIiED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5532:
	.size	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev,_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEEC5EmRKS0_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_
	.type	_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_, @function
_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_:
.LFB5534:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5534
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1ERKS0_
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB118:
	call	_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm
.LEHE118:
	jmp	.L512
.L511:
	endbr64
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB119:
	call	_Unwind_Resume@PLT
.LEHE119:
.L512:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5534:
	.section	.gcc_except_table
.LLSDA5534:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5534-.LLSDACSB5534
.LLSDACSB5534:
	.uleb128 .LEHB118-.LFB5534
	.uleb128 .LEHE118-.LEHB118
	.uleb128 .L511-.LFB5534
	.uleb128 0
	.uleb128 .LEHB119-.LFB5534
	.uleb128 .LEHE119-.LEHB119
	.uleb128 0
	.uleb128 0
.LLSDACSE5534:
	.section	.text._ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEEC5EmRKS0_,comdat
	.size	_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_, .-_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_
	.weak	_ZNSt12_Vector_baseIiSaIiEEC1EmRKS0_
	.set	_ZNSt12_Vector_baseIiSaIiEEC1EmRKS0_,_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_
	.section	.text._ZNSt12_Vector_baseIiSaIiEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIiSaIiEED2Ev
	.type	_ZNSt12_Vector_baseIiSaIiEED2Ev, @function
_ZNSt12_Vector_baseIiSaIiEED2Ev:
.LFB5537:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5537
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rdx, %rax
	subq	%rcx, %rax
	sarq	$2, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5537:
	.section	.gcc_except_table
.LLSDA5537:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5537-.LLSDACSB5537
.LLSDACSB5537:
.LLSDACSE5537:
	.section	.text._ZNSt12_Vector_baseIiSaIiEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEED5Ev,comdat
	.size	_ZNSt12_Vector_baseIiSaIiEED2Ev, .-_ZNSt12_Vector_baseIiSaIiEED2Ev
	.weak	_ZNSt12_Vector_baseIiSaIiEED1Ev
	.set	_ZNSt12_Vector_baseIiSaIiEED1Ev,_ZNSt12_Vector_baseIiSaIiEED2Ev
	.section	.text._ZNKSt6vectorIiSaIiEE5beginEv,"axG",@progbits,_ZNKSt6vectorIiSaIiEE5beginEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIiSaIiEE5beginEv
	.type	_ZNKSt6vectorIiSaIiEE5beginEv, @function
_ZNKSt6vectorIiSaIiEE5beginEv:
.LFB5539:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC1ERKS2_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L516
	call	__stack_chk_fail@PLT
.L516:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5539:
	.size	_ZNKSt6vectorIiSaIiEE5beginEv, .-_ZNKSt6vectorIiSaIiEE5beginEv
	.section	.text._ZNKSt6vectorIiSaIiEE3endEv,"axG",@progbits,_ZNKSt6vectorIiSaIiEE3endEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIiSaIiEE3endEv
	.type	_ZNKSt6vectorIiSaIiEE3endEv, @function
_ZNKSt6vectorIiSaIiEE3endEv:
.LFB5540:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC1ERKS2_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L519
	call	__stack_chk_fail@PLT
.L519:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5540:
	.size	_ZNKSt6vectorIiSaIiEE3endEv, .-_ZNKSt6vectorIiSaIiEE3endEv
	.section	.text._ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv:
.LFB5541:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5541:
	.size	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.section	.text._ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E,"axG",@progbits,_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E,comdat
	.weak	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E
	.type	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E, @function
_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E:
.LFB5542:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5542:
	.size	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E, .-_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E
	.section	.text._ZNSaI4ChatEC2Ev,"axG",@progbits,_ZNSaI4ChatEC5Ev,comdat
	.align 2
	.weak	_ZNSaI4ChatEC2Ev
	.type	_ZNSaI4ChatEC2Ev, @function
_ZNSaI4ChatEC2Ev:
.LFB5545:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorI4ChatEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5545:
	.size	_ZNSaI4ChatEC2Ev, .-_ZNSaI4ChatEC2Ev
	.weak	_ZNSaI4ChatEC1Ev
	.set	_ZNSaI4ChatEC1Ev,_ZNSaI4ChatEC2Ev
	.section	.text._ZNSaI4ChatED2Ev,"axG",@progbits,_ZNSaI4ChatED5Ev,comdat
	.align 2
	.weak	_ZNSaI4ChatED2Ev
	.type	_ZNSaI4ChatED2Ev, @function
_ZNSaI4ChatED2Ev:
.LFB5548:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorI4ChatED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5548:
	.size	_ZNSaI4ChatED2Ev, .-_ZNSaI4ChatED2Ev
	.weak	_ZNSaI4ChatED1Ev
	.set	_ZNSaI4ChatED1Ev,_ZNSaI4ChatED2Ev
	.section	.text._ZSt7forwardI4ChatEOT_RNSt16remove_referenceIS1_E4typeE,"axG",@progbits,_ZSt7forwardI4ChatEOT_RNSt16remove_referenceIS1_E4typeE,comdat
	.weak	_ZSt7forwardI4ChatEOT_RNSt16remove_referenceIS1_E4typeE
	.type	_ZSt7forwardI4ChatEOT_RNSt16remove_referenceIS1_E4typeE, @function
_ZSt7forwardI4ChatEOT_RNSt16remove_referenceIS1_E4typeE:
.LFB5550:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5550:
	.size	_ZSt7forwardI4ChatEOT_RNSt16remove_referenceIS1_E4typeE, .-_ZSt7forwardI4ChatEOT_RNSt16remove_referenceIS1_E4typeE
	.section	.text._ZSt15allocate_sharedI4ChatSaIS0_EJS0_EESt10shared_ptrIT_ERKT0_DpOT1_,"axG",@progbits,_ZSt15allocate_sharedI4ChatSaIS0_EJS0_EESt10shared_ptrIT_ERKT0_DpOT1_,comdat
	.weak	_ZSt15allocate_sharedI4ChatSaIS0_EJS0_EESt10shared_ptrIT_ERKT0_DpOT1_
	.type	_ZSt15allocate_sharedI4ChatSaIS0_EJS0_EESt10shared_ptrIT_ERKT0_DpOT1_, @function
_ZSt15allocate_sharedI4ChatSaIS0_EJS0_EESt10shared_ptrIT_ERKT0_DpOT1_:
.LFB5551:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardI4ChatEOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt10shared_ptrI4ChatEC1ISaIS0_EJS0_EEESt20_Sp_alloc_shared_tagIT_EDpOT0_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5551:
	.size	_ZSt15allocate_sharedI4ChatSaIS0_EJS0_EESt10shared_ptrIT_ERKT0_DpOT1_, .-_ZSt15allocate_sharedI4ChatSaIS0_EJS0_EESt10shared_ptrIT_ERKT0_DpOT1_
	.section	.text._ZSt4moveIRSt10shared_ptrI4ChatEEONSt16remove_referenceIT_E4typeEOS5_,"axG",@progbits,_ZSt4moveIRSt10shared_ptrI4ChatEEONSt16remove_referenceIT_E4typeEOS5_,comdat
	.weak	_ZSt4moveIRSt10shared_ptrI4ChatEEONSt16remove_referenceIT_E4typeEOS5_
	.type	_ZSt4moveIRSt10shared_ptrI4ChatEEONSt16remove_referenceIT_E4typeEOS5_, @function
_ZSt4moveIRSt10shared_ptrI4ChatEEONSt16remove_referenceIT_E4typeEOS5_:
.LFB5552:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5552:
	.size	_ZSt4moveIRSt10shared_ptrI4ChatEEONSt16remove_referenceIT_E4typeEOS5_, .-_ZSt4moveIRSt10shared_ptrI4ChatEEONSt16remove_referenceIT_E4typeEOS5_
	.section	.text._ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEaSEOS3_,"axG",@progbits,_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEaSEOS3_,comdat
	.align 2
	.weak	_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEaSEOS3_
	.type	_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEaSEOS3_, @function
_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEaSEOS3_:
.LFB5553:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEEONSt16remove_referenceIT_E4typeEOS7_
	movq	%rax, %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEC1EOS3_
	movq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EE4swapERS3_
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EED1Ev
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L534
	call	__stack_chk_fail@PLT
.L534:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5553:
	.size	_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEaSEOS3_, .-_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEaSEOS3_
	.section	.text._ZNSt16allocator_traitsISaI4UserEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_,"axG",@progbits,_ZNSt16allocator_traitsISaI4UserEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_,comdat
	.weak	_ZNSt16allocator_traitsISaI4UserEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_
	.type	_ZNSt16allocator_traitsISaI4UserEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_, @function
_ZNSt16allocator_traitsISaI4UserEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_:
.LFB5554:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRK4UserEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorI4UserE9constructIS1_JRKS1_EEEvPT_DpOT0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5554:
	.size	_ZNSt16allocator_traitsISaI4UserEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_, .-_ZNSt16allocator_traitsISaI4UserEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_
	.section	.rodata
.LC37:
	.string	"vector::_M_realloc_insert"
	.section	.text._ZNSt6vectorI4UserSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_,"axG",@progbits,_ZNSt6vectorI4UserSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_,comdat
	.align 2
	.weak	_ZNSt6vectorI4UserSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_
	.type	_ZNSt6vectorI4UserSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_, @function
_ZNSt6vectorI4UserSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_:
.LFB5555:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5555
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-88(%rbp), %rax
	leaq	.LC37(%rip), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
.LEHB120:
	call	_ZNKSt6vectorI4UserSaIS0_EE12_M_check_lenEmPKc
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorI4UserSaIS0_EE5beginEv
	movq	%rax, -80(%rbp)
	leaq	-80(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxmiIP4UserSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	movq	%rax, -40(%rbp)
	movq	-88(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI4UserSaIS0_EE11_M_allocateEm
.LEHE120:
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRK4UserEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rsi
	movq	-40(%rbp), %rdx
	movq	%rdx, %rax
	salq	$4, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-88(%rbp), %rax
	movq	%rsi, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB121:
	call	_ZNSt16allocator_traitsISaI4UserEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_
	movq	$0, -72(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI4UserSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4UserSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rsi
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	_ZSt34__uninitialized_move_if_noexcept_aIP4UserS1_SaIS0_EET0_T_S4_S3_RT1_
	movq	%rax, -72(%rbp)
	addq	$120, -72(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI4UserSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4UserSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	_ZSt34__uninitialized_move_if_noexcept_aIP4UserS1_SaIS0_EET0_T_S4_S3_RT1_
.LEHE121:
	movq	%rax, -72(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI4UserSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB122:
	call	_ZSt8_DestroyIP4UserS0_EvT_S2_RSaIT0_E
	movq	-88(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	16(%rdx), %rdx
	subq	-56(%rbp), %rdx
	movq	%rdx, %rcx
	sarq	$3, %rcx
	movabsq	$-1229782938247303441, %rdx
	imulq	%rcx, %rdx
	movq	-56(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI4UserSaIS0_EE13_M_deallocateEPS0_m
.LEHE122:
	movq	-88(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-64(%rbp), %rdx
	movq	%rdx, %rax
	salq	$4, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L541
	jmp	.L544
.L542:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	cmpq	$0, -72(%rbp)
	jne	.L538
	movq	-40(%rbp), %rdx
	movq	%rdx, %rax
	salq	$4, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaI4UserEE7destroyIS0_EEvRS1_PT_
	jmp	.L539
.L538:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI4UserSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-72(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB123:
	call	_ZSt8_DestroyIP4UserS0_EvT_S2_RSaIT0_E
.L539:
	movq	-88(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI4UserSaIS0_EE13_M_deallocateEPS0_m
	call	__cxa_rethrow@PLT
.LEHE123:
.L543:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB124:
	call	_Unwind_Resume@PLT
.LEHE124:
.L544:
	call	__stack_chk_fail@PLT
.L541:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5555:
	.section	.gcc_except_table
	.align 4
.LLSDA5555:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT5555-.LLSDATTD5555
.LLSDATTD5555:
	.byte	0x1
	.uleb128 .LLSDACSE5555-.LLSDACSB5555
.LLSDACSB5555:
	.uleb128 .LEHB120-.LFB5555
	.uleb128 .LEHE120-.LEHB120
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB121-.LFB5555
	.uleb128 .LEHE121-.LEHB121
	.uleb128 .L542-.LFB5555
	.uleb128 0x1
	.uleb128 .LEHB122-.LFB5555
	.uleb128 .LEHE122-.LEHB122
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB123-.LFB5555
	.uleb128 .LEHE123-.LEHB123
	.uleb128 .L543-.LFB5555
	.uleb128 0
	.uleb128 .LEHB124-.LFB5555
	.uleb128 .LEHE124-.LEHB124
	.uleb128 0
	.uleb128 0
.LLSDACSE5555:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT5555:
	.section	.text._ZNSt6vectorI4UserSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_,"axG",@progbits,_ZNSt6vectorI4UserSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_,comdat
	.size	_ZNSt6vectorI4UserSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_, .-_ZNSt6vectorI4UserSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_
	.section	.text._ZNKSt19__shared_ptr_accessI4UserLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv,"axG",@progbits,_ZNKSt19__shared_ptr_accessI4UserLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv,comdat
	.align 2
	.weak	_ZNKSt19__shared_ptr_accessI4UserLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv
	.type	_ZNKSt19__shared_ptr_accessI4UserLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv, @function
_ZNKSt19__shared_ptr_accessI4UserLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv:
.LFB5560:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EE3getEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5560:
	.size	_ZNKSt19__shared_ptr_accessI4UserLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv, .-_ZNKSt19__shared_ptr_accessI4UserLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv
	.section	.text._ZNKSt19__shared_ptr_accessI4ChatLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv,"axG",@progbits,_ZNKSt19__shared_ptr_accessI4ChatLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv,comdat
	.align 2
	.weak	_ZNKSt19__shared_ptr_accessI4ChatLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv
	.type	_ZNKSt19__shared_ptr_accessI4ChatLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv, @function
_ZNKSt19__shared_ptr_accessI4ChatLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv:
.LFB5563:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EE3getEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5563:
	.size	_ZNKSt19__shared_ptr_accessI4ChatLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv, .-_ZNKSt19__shared_ptr_accessI4ChatLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv
	.section	.text._ZSt7forwardIR4UserEOT_RNSt16remove_referenceIS2_E4typeE,"axG",@progbits,_ZSt7forwardIR4UserEOT_RNSt16remove_referenceIS2_E4typeE,comdat
	.weak	_ZSt7forwardIR4UserEOT_RNSt16remove_referenceIS2_E4typeE
	.type	_ZSt7forwardIR4UserEOT_RNSt16remove_referenceIS2_E4typeE, @function
_ZSt7forwardIR4UserEOT_RNSt16remove_referenceIS2_E4typeE:
.LFB5564:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5564:
	.size	_ZSt7forwardIR4UserEOT_RNSt16remove_referenceIS2_E4typeE, .-_ZSt7forwardIR4UserEOT_RNSt16remove_referenceIS2_E4typeE
	.section	.text._ZSt15allocate_sharedI4UserSaIS0_EJRS0_EESt10shared_ptrIT_ERKT0_DpOT1_,"axG",@progbits,_ZSt15allocate_sharedI4UserSaIS0_EJRS0_EESt10shared_ptrIT_ERKT0_DpOT1_,comdat
	.weak	_ZSt15allocate_sharedI4UserSaIS0_EJRS0_EESt10shared_ptrIT_ERKT0_DpOT1_
	.type	_ZSt15allocate_sharedI4UserSaIS0_EJRS0_EESt10shared_ptrIT_ERKT0_DpOT1_, @function
_ZSt15allocate_sharedI4UserSaIS0_EJRS0_EESt10shared_ptrIT_ERKT0_DpOT1_:
.LFB5565:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIR4UserEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt10shared_ptrI4UserEC1ISaIS0_EJRS0_EEESt20_Sp_alloc_shared_tagIT_EDpOT0_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5565:
	.size	_ZSt15allocate_sharedI4UserSaIS0_EJRS0_EESt10shared_ptrIT_ERKT0_DpOT1_, .-_ZSt15allocate_sharedI4UserSaIS0_EJRS0_EESt10shared_ptrIT_ERKT0_DpOT1_
	.section	.text._ZSt4moveIRSt10shared_ptrI4UserEEONSt16remove_referenceIT_E4typeEOS5_,"axG",@progbits,_ZSt4moveIRSt10shared_ptrI4UserEEONSt16remove_referenceIT_E4typeEOS5_,comdat
	.weak	_ZSt4moveIRSt10shared_ptrI4UserEEONSt16remove_referenceIT_E4typeEOS5_
	.type	_ZSt4moveIRSt10shared_ptrI4UserEEONSt16remove_referenceIT_E4typeEOS5_, @function
_ZSt4moveIRSt10shared_ptrI4UserEEONSt16remove_referenceIT_E4typeEOS5_:
.LFB5566:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5566:
	.size	_ZSt4moveIRSt10shared_ptrI4UserEEONSt16remove_referenceIT_E4typeEOS5_, .-_ZSt4moveIRSt10shared_ptrI4UserEEONSt16remove_referenceIT_E4typeEOS5_
	.section	.text._ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEaSEOS3_,"axG",@progbits,_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEaSEOS3_,comdat
	.align 2
	.weak	_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEaSEOS3_
	.type	_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEaSEOS3_, @function
_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEaSEOS3_:
.LFB5567:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEEONSt16remove_referenceIT_E4typeEOS7_
	movq	%rax, %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEC1EOS3_
	movq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EE4swapERS3_
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EED1Ev
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L557
	call	__stack_chk_fail@PLT
.L557:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5567:
	.size	_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEaSEOS3_, .-_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEaSEOS3_
	.section	.text._ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv,"axG",@progbits,_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv,comdat
	.align 2
	.weak	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv
	.type	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv, @function
_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv:
.LFB5569:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	movl	$1, -36(%rbp)
	movzbl	__libc_single_threaded(%rip), %eax
	testb	%al, %al
	setne	%al
	testb	%al, %al
	je	.L560
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movl	-32(%rbp), %eax
	addl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L561
.L560:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %edx
	movq	-8(%rbp), %rax
	lock addl	%edx, (%rax)
	nop
.L561:
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5569:
	.size	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv, .-_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv
	.section	.text._ZSt7forwardIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS7_E4typeE,"axG",@progbits,_ZSt7forwardIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS7_E4typeE,comdat
	.weak	_ZSt7forwardIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS7_E4typeE
	.type	_ZSt7forwardIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS7_E4typeE, @function
_ZSt7forwardIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS7_E4typeE:
.LFB5570:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5570:
	.size	_ZSt7forwardIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS7_E4typeE, .-_ZSt7forwardIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS7_E4typeE
	.section	.text._ZSt15allocate_sharedI4ChatSaIS0_EJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt10shared_ptrIT_ERKT0_DpOT1_,"axG",@progbits,_ZSt15allocate_sharedI4ChatSaIS0_EJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt10shared_ptrIT_ERKT0_DpOT1_,comdat
	.weak	_ZSt15allocate_sharedI4ChatSaIS0_EJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt10shared_ptrIT_ERKT0_DpOT1_
	.type	_ZSt15allocate_sharedI4ChatSaIS0_EJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt10shared_ptrIT_ERKT0_DpOT1_, @function
_ZSt15allocate_sharedI4ChatSaIS0_EJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt10shared_ptrIT_ERKT0_DpOT1_:
.LFB5571:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS7_E4typeE
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt10shared_ptrI4ChatEC1ISaIS0_EJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESt20_Sp_alloc_shared_tagIT_EDpOT0_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5571:
	.size	_ZSt15allocate_sharedI4ChatSaIS0_EJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt10shared_ptrIT_ERKT0_DpOT1_, .-_ZSt15allocate_sharedI4ChatSaIS0_EJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt10shared_ptrIT_ERKT0_DpOT1_
	.section	.text._ZNSt16allocator_traitsISaISt10shared_ptrI4ChatEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_,"axG",@progbits,_ZNSt16allocator_traitsISaISt10shared_ptrI4ChatEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_,comdat
	.weak	_ZNSt16allocator_traitsISaISt10shared_ptrI4ChatEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_
	.type	_ZNSt16allocator_traitsISaISt10shared_ptrI4ChatEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_, @function
_ZNSt16allocator_traitsISaISt10shared_ptrI4ChatEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_:
.LFB5572:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRKSt10shared_ptrI4ChatEEOT_RNSt16remove_referenceIS5_E4typeE
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEE9constructIS3_JRKS3_EEEvPT_DpOT0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5572:
	.size	_ZNSt16allocator_traitsISaISt10shared_ptrI4ChatEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_, .-_ZNSt16allocator_traitsISaISt10shared_ptrI4ChatEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_
	.section	.text._ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EE3endEv,"axG",@progbits,_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EE3endEv,comdat
	.align 2
	.weak	_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EE3endEv
	.type	_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EE3endEv, @function
_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EE3endEv:
.LFB5573:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEEC1ERKS4_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L569
	call	__stack_chk_fail@PLT
.L569:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5573:
	.size	_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EE3endEv, .-_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EE3endEv
	.section	.text._ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_,"axG",@progbits,_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_,comdat
	.align 2
	.weak	_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_
	.type	_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_, @function
_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_:
.LFB5574:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-88(%rbp), %rax
	leaq	.LC37(%rip), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNKSt6vectorISt10shared_ptrI4ChatESaIS2_EE12_M_check_lenEmPKc
	movq	%rax, -72(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EE5beginEv
	movq	%rax, -80(%rbp)
	leaq	-80(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxmiIPSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_
	movq	%rax, -48(%rbp)
	movq	-88(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE11_M_allocateEm
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRKSt10shared_ptrI4ChatEEOT_RNSt16remove_referenceIS5_E4typeE
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	addq	%rax, %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaISt10shared_ptrI4ChatEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_
	movq	$0, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEE4baseEv
	movq	(%rax), %rsi
	movq	-40(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_
	movq	%rax, -32(%rbp)
	addq	$16, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEE4baseEv
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_
	movq	%rax, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	16(%rdx), %rdx
	subq	-64(%rbp), %rdx
	sarq	$4, %rdx
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE13_M_deallocateEPS2_m
	movq	-88(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-72(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L571
	call	__stack_chk_fail@PLT
.L571:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5574:
	.size	_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_, .-_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_
	.section	.text._ZSt3getILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_,"axG",@progbits,_ZSt3getILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_,comdat
	.weak	_ZSt3getILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_
	.type	_ZSt3getILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_, @function
_ZSt3getILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_:
.LFB5611:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__get_helperILm0EPNSt10filesystem7__cxx114path5_List5_ImplEJNS3_13_Impl_deleterEEERT0_RSt11_Tuple_implIXT_EJS7_DpT1_EE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5611:
	.size	_ZSt3getILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_, .-_ZSt3getILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_
	.section	.text._ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_,"axG",@progbits,_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_,comdat
	.weak	_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_
	.type	_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_, @function
_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_:
.LFB5618:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	sete	%al
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5618:
	.size	_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_, .-_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_
	.section	.text._ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_,"axG",@progbits,_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_,comdat
	.weak	_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	.type	_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_, @function
_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_:
.LFB5619:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5619:
	.size	_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_, .-_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	.section	.text._ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag,"axG",@progbits,_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag,comdat
	.weak	_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag
	.type	_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, @function
_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag:
.LFB5620:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	subq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5620:
	.size	_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, .-_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag
	.section	.text._ZSt3getILm1EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_,"axG",@progbits,_ZSt3getILm1EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_,comdat
	.weak	_ZSt3getILm1EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_
	.type	_ZSt3getILm1EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_, @function
_ZSt3getILm1EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_:
.LFB5625:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__get_helperILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterEJEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5625:
	.size	_ZSt3getILm1EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_, .-_ZSt3getILm1EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_
	.section	.text._ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv,"axG",@progbits,_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv,comdat
	.align 2
	.weak	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv
	.type	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, @function
_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv:
.LFB5650:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L584
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L584:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5650:
	.size	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, .-_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv
	.section	.text._ZN9__gnu_cxx13new_allocatorI4UserEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI4UserEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI4UserEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorI4UserEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorI4UserEC2Ev:
.LFB5653:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5653:
	.size	_ZN9__gnu_cxx13new_allocatorI4UserEC2Ev, .-_ZN9__gnu_cxx13new_allocatorI4UserEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorI4UserEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorI4UserEC1Ev,_ZN9__gnu_cxx13new_allocatorI4UserEC2Ev
	.section	.text._ZNSt16allocator_traitsISaI4UserEE10deallocateERS1_PS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaI4UserEE10deallocateERS1_PS0_m,comdat
	.weak	_ZNSt16allocator_traitsISaI4UserEE10deallocateERS1_PS0_m
	.type	_ZNSt16allocator_traitsISaI4UserEE10deallocateERS1_PS0_m, @function
_ZNSt16allocator_traitsISaI4UserEE10deallocateERS1_PS0_m:
.LFB5655:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorI4UserE10deallocateEPS1_m
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5655:
	.size	_ZNSt16allocator_traitsISaI4UserEE10deallocateERS1_PS0_m, .-_ZNSt16allocator_traitsISaI4UserEE10deallocateERS1_PS0_m
	.section	.text._ZSt8_DestroyIP4UserEvT_S2_,"axG",@progbits,_ZSt8_DestroyIP4UserEvT_S2_,comdat
	.weak	_ZSt8_DestroyIP4UserEvT_S2_
	.type	_ZSt8_DestroyIP4UserEvT_S2_, @function
_ZSt8_DestroyIP4UserEvT_S2_:
.LFB5656:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Destroy_auxILb0EE9__destroyIP4UserEEvT_S4_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5656:
	.size	_ZSt8_DestroyIP4UserEvT_S2_, .-_ZSt8_DestroyIP4UserEvT_S2_
	.section	.text._ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEEC2Ev:
.LFB5658:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5658:
	.size	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEEC2Ev, .-_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEEC1Ev,_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEEC2Ev
	.section	.text._ZNSt16allocator_traitsISaISt10shared_ptrI4ChatEEE10deallocateERS3_PS2_m,"axG",@progbits,_ZNSt16allocator_traitsISaISt10shared_ptrI4ChatEEE10deallocateERS3_PS2_m,comdat
	.weak	_ZNSt16allocator_traitsISaISt10shared_ptrI4ChatEEE10deallocateERS3_PS2_m
	.type	_ZNSt16allocator_traitsISaISt10shared_ptrI4ChatEEE10deallocateERS3_PS2_m, @function
_ZNSt16allocator_traitsISaISt10shared_ptrI4ChatEEE10deallocateERS3_PS2_m:
.LFB5660:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEE10deallocateEPS3_m
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5660:
	.size	_ZNSt16allocator_traitsISaISt10shared_ptrI4ChatEEE10deallocateERS3_PS2_m, .-_ZNSt16allocator_traitsISaISt10shared_ptrI4ChatEEE10deallocateERS3_PS2_m
	.section	.text._ZSt8_DestroyIPSt10shared_ptrI4ChatEEvT_S4_,"axG",@progbits,_ZSt8_DestroyIPSt10shared_ptrI4ChatEEvT_S4_,comdat
	.weak	_ZSt8_DestroyIPSt10shared_ptrI4ChatEEvT_S4_
	.type	_ZSt8_DestroyIPSt10shared_ptrI4ChatEEvT_S4_, @function
_ZSt8_DestroyIPSt10shared_ptrI4ChatEEvT_S4_:
.LFB5661:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt10shared_ptrI4ChatEEEvT_S6_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5661:
	.size	_ZSt8_DestroyIPSt10shared_ptrI4ChatEEvT_S4_, .-_ZSt8_DestroyIPSt10shared_ptrI4ChatEEvT_S4_
	.section	.text._ZNSt16allocator_traitsISaISt10shared_ptrI4ChatEEE37select_on_container_copy_constructionERKS3_,"axG",@progbits,_ZNSt16allocator_traitsISaISt10shared_ptrI4ChatEEE37select_on_container_copy_constructionERKS3_,comdat
	.weak	_ZNSt16allocator_traitsISaISt10shared_ptrI4ChatEEE37select_on_container_copy_constructionERKS3_
	.type	_ZNSt16allocator_traitsISaISt10shared_ptrI4ChatEEE37select_on_container_copy_constructionERKS3_, @function
_ZNSt16allocator_traitsISaISt10shared_ptrI4ChatEEE37select_on_container_copy_constructionERKS3_:
.LFB5662:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSaISt10shared_ptrI4ChatEEC1ERKS2_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5662:
	.size	_ZNSt16allocator_traitsISaISt10shared_ptrI4ChatEEE37select_on_container_copy_constructionERKS3_, .-_ZNSt16allocator_traitsISaISt10shared_ptrI4ChatEEE37select_on_container_copy_constructionERKS3_
	.section	.text._ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE12_Vector_implC2ERKS3_,"axG",@progbits,_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE12_Vector_implC5ERKS3_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE12_Vector_implC2ERKS3_
	.type	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE12_Vector_implC2ERKS3_, @function
_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE12_Vector_implC2ERKS3_:
.LFB5664:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSaISt10shared_ptrI4ChatEEC2ERKS2_
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE17_Vector_impl_dataC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5664:
	.size	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE12_Vector_implC2ERKS3_, .-_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE12_Vector_implC2ERKS3_
	.weak	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE12_Vector_implC1ERKS3_
	.set	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE12_Vector_implC1ERKS3_,_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE12_Vector_implC2ERKS3_
	.section	.text._ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE17_M_create_storageEm,"axG",@progbits,_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE17_M_create_storageEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE17_M_create_storageEm
	.type	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE17_M_create_storageEm, @function
_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE17_M_create_storageEm:
.LFB5666:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE11_M_allocateEm
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	salq	$4, %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5666:
	.size	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE17_M_create_storageEm, .-_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE17_M_create_storageEm
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEEC2ERKS5_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEEC5ERKS5_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEEC2ERKS5_
	.type	_ZN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEEC2ERKS5_, @function
_ZN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEEC2ERKS5_:
.LFB5668:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5668:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEEC2ERKS5_, .-_ZN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEEC2ERKS5_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEEC1ERKS5_
	.set	_ZN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEEC1ERKS5_,_ZN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEEC2ERKS5_
	.section	.text._ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_,"axG",@progbits,_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_,comdat
	.weak	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_
	.type	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_, @function
_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_:
.LFB5670:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movb	$1, -1(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS6_SaIS6_EEEEPS6_EET0_T_SF_SE_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5670:
	.size	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_, .-_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_
	.section	.text._ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_,"axG",@progbits,_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_,comdat
	.weak	_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_
	.type	_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_, @function
_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_:
.LFB5672:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSaIiEC1ERKS_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5672:
	.size	_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_, .-_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_
	.section	.text._ZN9__gnu_cxx13new_allocatorIiED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIiED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIiED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIiED2Ev, @function
_ZN9__gnu_cxx13new_allocatorIiED2Ev:
.LFB5674:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5674:
	.size	_ZN9__gnu_cxx13new_allocatorIiED2Ev, .-_ZN9__gnu_cxx13new_allocatorIiED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIiED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIiED1Ev,_ZN9__gnu_cxx13new_allocatorIiED2Ev
	.section	.text._ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC5ERKS0_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_
	.type	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_, @function
_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_:
.LFB5677:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSaIiEC2ERKS_
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5677:
	.size	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_, .-_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_
	.weak	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1ERKS0_
	.set	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1ERKS0_,_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_
	.section	.text._ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm
	.type	_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm, @function
_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm:
.LFB5679:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	salq	$2, %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5679:
	.size	_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm, .-_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm
	.section	.text._ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim
	.type	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim, @function
_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim:
.LFB5680:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L605
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim
.L605:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5680:
	.size	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim, .-_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC5ERKS2_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_
	.type	_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_, @function
_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_:
.LFB5682:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5682:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_, .-_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC1ERKS2_
	.set	_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC1ERKS2_,_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_
	.section	.text._ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_,"axG",@progbits,_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_,comdat
	.weak	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_
	.type	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_, @function
_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_:
.LFB5684:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movb	$1, -1(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5684:
	.size	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_, .-_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_
	.section	.text._ZN9__gnu_cxx13new_allocatorI4ChatEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI4ChatEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI4ChatEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorI4ChatEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorI4ChatEC2Ev:
.LFB5689:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5689:
	.size	_ZN9__gnu_cxx13new_allocatorI4ChatEC2Ev, .-_ZN9__gnu_cxx13new_allocatorI4ChatEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorI4ChatEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorI4ChatEC1Ev,_ZN9__gnu_cxx13new_allocatorI4ChatEC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorI4ChatED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI4ChatED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI4ChatED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorI4ChatED2Ev, @function
_ZN9__gnu_cxx13new_allocatorI4ChatED2Ev:
.LFB5692:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5692:
	.size	_ZN9__gnu_cxx13new_allocatorI4ChatED2Ev, .-_ZN9__gnu_cxx13new_allocatorI4ChatED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorI4ChatED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorI4ChatED1Ev,_ZN9__gnu_cxx13new_allocatorI4ChatED2Ev
	.section	.text._ZNSt10shared_ptrI4ChatEC2ISaIS0_EJS0_EEESt20_Sp_alloc_shared_tagIT_EDpOT0_,"axG",@progbits,_ZNSt10shared_ptrI4ChatEC5ISaIS0_EJS0_EEESt20_Sp_alloc_shared_tagIT_EDpOT0_,comdat
	.align 2
	.weak	_ZNSt10shared_ptrI4ChatEC2ISaIS0_EJS0_EEESt20_Sp_alloc_shared_tagIT_EDpOT0_
	.type	_ZNSt10shared_ptrI4ChatEC2ISaIS0_EJS0_EEESt20_Sp_alloc_shared_tagIT_EDpOT0_, @function
_ZNSt10shared_ptrI4ChatEC2ISaIS0_EJS0_EEESt20_Sp_alloc_shared_tagIT_EDpOT0_:
.LFB5695:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardI4ChatEOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEC2ISaIS0_EJS0_EEESt20_Sp_alloc_shared_tagIT_EDpOT0_
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5695:
	.size	_ZNSt10shared_ptrI4ChatEC2ISaIS0_EJS0_EEESt20_Sp_alloc_shared_tagIT_EDpOT0_, .-_ZNSt10shared_ptrI4ChatEC2ISaIS0_EJS0_EEESt20_Sp_alloc_shared_tagIT_EDpOT0_
	.weak	_ZNSt10shared_ptrI4ChatEC1ISaIS0_EJS0_EEESt20_Sp_alloc_shared_tagIT_EDpOT0_
	.set	_ZNSt10shared_ptrI4ChatEC1ISaIS0_EJS0_EEESt20_Sp_alloc_shared_tagIT_EDpOT0_,_ZNSt10shared_ptrI4ChatEC2ISaIS0_EJS0_EEESt20_Sp_alloc_shared_tagIT_EDpOT0_
	.section	.text._ZSt4moveIRSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEEONSt16remove_referenceIT_E4typeEOS7_,"axG",@progbits,_ZSt4moveIRSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEEONSt16remove_referenceIT_E4typeEOS7_,comdat
	.weak	_ZSt4moveIRSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEEONSt16remove_referenceIT_E4typeEOS7_
	.type	_ZSt4moveIRSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEEONSt16remove_referenceIT_E4typeEOS7_, @function
_ZSt4moveIRSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEEONSt16remove_referenceIT_E4typeEOS7_:
.LFB5697:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5697:
	.size	_ZSt4moveIRSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEEONSt16remove_referenceIT_E4typeEOS7_, .-_ZSt4moveIRSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEEONSt16remove_referenceIT_E4typeEOS7_
	.section	.text._ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEC2EOS3_,"axG",@progbits,_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEC5EOS3_,comdat
	.align 2
	.weak	_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEC2EOS3_
	.type	_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEC2EOS3_, @function
_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEC2EOS3_:
.LFB5699:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1Ev
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	-16(%rbp), %rdx
	addq	$8, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_swapERS2_
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5699:
	.size	_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEC2EOS3_, .-_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEC2EOS3_
	.weak	_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEC1EOS3_
	.set	_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEC1EOS3_,_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEC2EOS3_
	.section	.text._ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EE4swapERS3_,"axG",@progbits,_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EE4swapERS3_,comdat
	.align 2
	.weak	_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EE4swapERS3_
	.type	_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EE4swapERS3_, @function
_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EE4swapERS3_:
.LFB5701:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt4swapIP4ChatENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SG_
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	-16(%rbp), %rdx
	addq	$8, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_swapERS2_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5701:
	.size	_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EE4swapERS3_, .-_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EE4swapERS3_
	.section	.text._ZSt7forwardIRK4UserEOT_RNSt16remove_referenceIS3_E4typeE,"axG",@progbits,_ZSt7forwardIRK4UserEOT_RNSt16remove_referenceIS3_E4typeE,comdat
	.weak	_ZSt7forwardIRK4UserEOT_RNSt16remove_referenceIS3_E4typeE
	.type	_ZSt7forwardIRK4UserEOT_RNSt16remove_referenceIS3_E4typeE, @function
_ZSt7forwardIRK4UserEOT_RNSt16remove_referenceIS3_E4typeE:
.LFB5703:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5703:
	.size	_ZSt7forwardIRK4UserEOT_RNSt16remove_referenceIS3_E4typeE, .-_ZSt7forwardIRK4UserEOT_RNSt16remove_referenceIS3_E4typeE
	.section	.text._ZN9__gnu_cxx13new_allocatorI4UserE9constructIS1_JRKS1_EEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI4UserE9constructIS1_JRKS1_EEEvPT_DpOT0_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI4UserE9constructIS1_JRKS1_EEEvPT_DpOT0_
	.type	_ZN9__gnu_cxx13new_allocatorI4UserE9constructIS1_JRKS1_EEEvPT_DpOT0_, @function
_ZN9__gnu_cxx13new_allocatorI4UserE9constructIS1_JRKS1_EEEvPT_DpOT0_:
.LFB5704:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5704
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRK4UserEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %r13
	movq	-48(%rbp), %rbx
	movq	%rbx, %rsi
	movl	$120, %edi
	call	_ZnwmPv
	movq	%rax, %r12
	movq	%r13, %rsi
	movq	%r12, %rdi
.LEHB125:
	call	_ZN4UserC1ERKS_
.LEHE125:
	jmp	.L621
.L620:
	endbr64
	movq	%rax, %r13
	movq	%rbx, %rsi
	movq	%r12, %rdi
	call	_ZdlPvS_
	movq	%r13, %rax
	movq	%rax, %rdi
.LEHB126:
	call	_Unwind_Resume@PLT
.LEHE126:
.L621:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5704:
	.section	.gcc_except_table
.LLSDA5704:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5704-.LLSDACSB5704
.LLSDACSB5704:
	.uleb128 .LEHB125-.LFB5704
	.uleb128 .LEHE125-.LEHB125
	.uleb128 .L620-.LFB5704
	.uleb128 0
	.uleb128 .LEHB126-.LFB5704
	.uleb128 .LEHE126-.LEHB126
	.uleb128 0
	.uleb128 0
.LLSDACSE5704:
	.section	.text._ZN9__gnu_cxx13new_allocatorI4UserE9constructIS1_JRKS1_EEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI4UserE9constructIS1_JRKS1_EEEvPT_DpOT0_,comdat
	.size	_ZN9__gnu_cxx13new_allocatorI4UserE9constructIS1_JRKS1_EEEvPT_DpOT0_, .-_ZN9__gnu_cxx13new_allocatorI4UserE9constructIS1_JRKS1_EEEvPT_DpOT0_
	.section	.text._ZNKSt6vectorI4UserSaIS0_EE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorI4UserSaIS0_EE12_M_check_lenEmPKc,comdat
	.align 2
	.weak	_ZNKSt6vectorI4UserSaIS0_EE12_M_check_lenEmPKc
	.type	_ZNKSt6vectorI4UserSaIS0_EE12_M_check_lenEmPKc, @function
_ZNKSt6vectorI4UserSaIS0_EE12_M_check_lenEmPKc:
.LFB5705:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI4UserSaIS0_EE8max_sizeEv
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI4UserSaIS0_EE4sizeEv
	subq	%rax, %rbx
	movq	%rbx, %rdx
	movq	-64(%rbp), %rax
	cmpq	%rax, %rdx
	setb	%al
	testb	%al, %al
	je	.L623
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.L623:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI4UserSaIS0_EE4sizeEv
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI4UserSaIS0_EE4sizeEv
	movq	%rax, -40(%rbp)
	leaq	-64(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3maxImERKT_S2_S2_
	movq	(%rax), %rax
	addq	%rbx, %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI4UserSaIS0_EE4sizeEv
	cmpq	%rax, -32(%rbp)
	jb	.L624
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI4UserSaIS0_EE8max_sizeEv
	cmpq	%rax, -32(%rbp)
	jbe	.L625
.L624:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI4UserSaIS0_EE8max_sizeEv
	jmp	.L626
.L625:
	movq	-32(%rbp), %rax
.L626:
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L628
	call	__stack_chk_fail@PLT
.L628:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5705:
	.size	_ZNKSt6vectorI4UserSaIS0_EE12_M_check_lenEmPKc, .-_ZNKSt6vectorI4UserSaIS0_EE12_M_check_lenEmPKc
	.section	.text._ZN9__gnu_cxxmiIP4UserSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_,"axG",@progbits,_ZN9__gnu_cxxmiIP4UserSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_,comdat
	.weak	_ZN9__gnu_cxxmiIP4UserSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	.type	_ZN9__gnu_cxxmiIP4UserSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_, @function
_ZN9__gnu_cxxmiIP4UserSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_:
.LFB5706:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4UserSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4UserSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rdx
	movq	%rbx, %rax
	subq	%rdx, %rax
	sarq	$3, %rax
	movq	%rax, %rdx
	movabsq	$-1229782938247303441, %rax
	imulq	%rdx, %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5706:
	.size	_ZN9__gnu_cxxmiIP4UserSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_, .-_ZN9__gnu_cxxmiIP4UserSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	.section	.text._ZNSt12_Vector_baseI4UserSaIS0_EE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseI4UserSaIS0_EE11_M_allocateEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI4UserSaIS0_EE11_M_allocateEm
	.type	_ZNSt12_Vector_baseI4UserSaIS0_EE11_M_allocateEm, @function
_ZNSt12_Vector_baseI4UserSaIS0_EE11_M_allocateEm:
.LFB5707:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L632
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaI4UserEE8allocateERS1_m
	jmp	.L634
.L632:
	movl	$0, %eax
.L634:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5707:
	.size	_ZNSt12_Vector_baseI4UserSaIS0_EE11_M_allocateEm, .-_ZNSt12_Vector_baseI4UserSaIS0_EE11_M_allocateEm
	.section	.text._ZSt34__uninitialized_move_if_noexcept_aIP4UserS1_SaIS0_EET0_T_S4_S3_RT1_,"axG",@progbits,_ZSt34__uninitialized_move_if_noexcept_aIP4UserS1_SaIS0_EET0_T_S4_S3_RT1_,comdat
	.weak	_ZSt34__uninitialized_move_if_noexcept_aIP4UserS1_SaIS0_EET0_T_S4_S3_RT1_
	.type	_ZSt34__uninitialized_move_if_noexcept_aIP4UserS1_SaIS0_EET0_T_S4_S3_RT1_, @function
_ZSt34__uninitialized_move_if_noexcept_aIP4UserS1_SaIS0_EET0_T_S4_S3_RT1_:
.LFB5708:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt32__make_move_if_noexcept_iteratorI4UserPKS0_ET0_PT_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt32__make_move_if_noexcept_iteratorI4UserPKS0_ET0_PT_
	movq	%rax, %rdi
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%rbx, %rsi
	call	_ZSt22__uninitialized_copy_aIPK4UserPS0_S0_ET0_T_S5_S4_RSaIT1_E
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5708:
	.size	_ZSt34__uninitialized_move_if_noexcept_aIP4UserS1_SaIS0_EET0_T_S4_S3_RT1_, .-_ZSt34__uninitialized_move_if_noexcept_aIP4UserS1_SaIS0_EET0_T_S4_S3_RT1_
	.section	.text._ZNSt16allocator_traitsISaI4UserEE7destroyIS0_EEvRS1_PT_,"axG",@progbits,_ZNSt16allocator_traitsISaI4UserEE7destroyIS0_EEvRS1_PT_,comdat
	.weak	_ZNSt16allocator_traitsISaI4UserEE7destroyIS0_EEvRS1_PT_
	.type	_ZNSt16allocator_traitsISaI4UserEE7destroyIS0_EEvRS1_PT_, @function
_ZNSt16allocator_traitsISaI4UserEE7destroyIS0_EEvRS1_PT_:
.LFB5709:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorI4UserE7destroyIS1_EEvPT_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5709:
	.size	_ZNSt16allocator_traitsISaI4UserEE7destroyIS0_EEvRS1_PT_, .-_ZNSt16allocator_traitsISaI4UserEE7destroyIS0_EEvRS1_PT_
	.section	.text._ZNKSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EE3getEv,"axG",@progbits,_ZNKSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EE3getEv,comdat
	.align 2
	.weak	_ZNKSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EE3getEv
	.type	_ZNKSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EE3getEv, @function
_ZNKSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EE3getEv:
.LFB5711:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5711:
	.size	_ZNKSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EE3getEv, .-_ZNKSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EE3getEv
	.section	.text._ZNKSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EE3getEv,"axG",@progbits,_ZNKSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EE3getEv,comdat
	.align 2
	.weak	_ZNKSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EE3getEv
	.type	_ZNKSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EE3getEv, @function
_ZNKSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EE3getEv:
.LFB5713:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5713:
	.size	_ZNKSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EE3getEv, .-_ZNKSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EE3getEv
	.section	.text._ZNSt10shared_ptrI4UserEC2ISaIS0_EJRS0_EEESt20_Sp_alloc_shared_tagIT_EDpOT0_,"axG",@progbits,_ZNSt10shared_ptrI4UserEC5ISaIS0_EJRS0_EEESt20_Sp_alloc_shared_tagIT_EDpOT0_,comdat
	.align 2
	.weak	_ZNSt10shared_ptrI4UserEC2ISaIS0_EJRS0_EEESt20_Sp_alloc_shared_tagIT_EDpOT0_
	.type	_ZNSt10shared_ptrI4UserEC2ISaIS0_EJRS0_EEESt20_Sp_alloc_shared_tagIT_EDpOT0_, @function
_ZNSt10shared_ptrI4UserEC2ISaIS0_EJRS0_EEESt20_Sp_alloc_shared_tagIT_EDpOT0_:
.LFB5715:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIR4UserEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEC2ISaIS0_EJRS0_EEESt20_Sp_alloc_shared_tagIT_EDpOT0_
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5715:
	.size	_ZNSt10shared_ptrI4UserEC2ISaIS0_EJRS0_EEESt20_Sp_alloc_shared_tagIT_EDpOT0_, .-_ZNSt10shared_ptrI4UserEC2ISaIS0_EJRS0_EEESt20_Sp_alloc_shared_tagIT_EDpOT0_
	.weak	_ZNSt10shared_ptrI4UserEC1ISaIS0_EJRS0_EEESt20_Sp_alloc_shared_tagIT_EDpOT0_
	.set	_ZNSt10shared_ptrI4UserEC1ISaIS0_EJRS0_EEESt20_Sp_alloc_shared_tagIT_EDpOT0_,_ZNSt10shared_ptrI4UserEC2ISaIS0_EJRS0_EEESt20_Sp_alloc_shared_tagIT_EDpOT0_
	.section	.text._ZSt4moveIRSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEEONSt16remove_referenceIT_E4typeEOS7_,"axG",@progbits,_ZSt4moveIRSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEEONSt16remove_referenceIT_E4typeEOS7_,comdat
	.weak	_ZSt4moveIRSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEEONSt16remove_referenceIT_E4typeEOS7_
	.type	_ZSt4moveIRSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEEONSt16remove_referenceIT_E4typeEOS7_, @function
_ZSt4moveIRSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEEONSt16remove_referenceIT_E4typeEOS7_:
.LFB5717:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5717:
	.size	_ZSt4moveIRSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEEONSt16remove_referenceIT_E4typeEOS7_, .-_ZSt4moveIRSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEEONSt16remove_referenceIT_E4typeEOS7_
	.section	.text._ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEC2EOS3_,"axG",@progbits,_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEC5EOS3_,comdat
	.align 2
	.weak	_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEC2EOS3_
	.type	_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEC2EOS3_, @function
_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEC2EOS3_:
.LFB5719:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1Ev
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	-16(%rbp), %rdx
	addq	$8, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_swapERS2_
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5719:
	.size	_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEC2EOS3_, .-_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEC2EOS3_
	.weak	_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEC1EOS3_
	.set	_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEC1EOS3_,_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEC2EOS3_
	.section	.text._ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EE4swapERS3_,"axG",@progbits,_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EE4swapERS3_,comdat
	.align 2
	.weak	_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EE4swapERS3_
	.type	_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EE4swapERS3_, @function
_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EE4swapERS3_:
.LFB5721:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt4swapIP4UserENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SG_
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	-16(%rbp), %rdx
	addq	$8, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_swapERS2_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5721:
	.size	_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EE4swapERS3_, .-_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EE4swapERS3_
	.section	.text._ZNSt10shared_ptrI4ChatEC2ISaIS0_EJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESt20_Sp_alloc_shared_tagIT_EDpOT0_,"axG",@progbits,_ZNSt10shared_ptrI4ChatEC5ISaIS0_EJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESt20_Sp_alloc_shared_tagIT_EDpOT0_,comdat
	.align 2
	.weak	_ZNSt10shared_ptrI4ChatEC2ISaIS0_EJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESt20_Sp_alloc_shared_tagIT_EDpOT0_
	.type	_ZNSt10shared_ptrI4ChatEC2ISaIS0_EJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESt20_Sp_alloc_shared_tagIT_EDpOT0_, @function
_ZNSt10shared_ptrI4ChatEC2ISaIS0_EJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESt20_Sp_alloc_shared_tagIT_EDpOT0_:
.LFB5723:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS7_E4typeE
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEC2ISaIS0_EJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESt20_Sp_alloc_shared_tagIT_EDpOT0_
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5723:
	.size	_ZNSt10shared_ptrI4ChatEC2ISaIS0_EJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESt20_Sp_alloc_shared_tagIT_EDpOT0_, .-_ZNSt10shared_ptrI4ChatEC2ISaIS0_EJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESt20_Sp_alloc_shared_tagIT_EDpOT0_
	.weak	_ZNSt10shared_ptrI4ChatEC1ISaIS0_EJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESt20_Sp_alloc_shared_tagIT_EDpOT0_
	.set	_ZNSt10shared_ptrI4ChatEC1ISaIS0_EJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESt20_Sp_alloc_shared_tagIT_EDpOT0_,_ZNSt10shared_ptrI4ChatEC2ISaIS0_EJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESt20_Sp_alloc_shared_tagIT_EDpOT0_
	.section	.text._ZSt7forwardIRKSt10shared_ptrI4ChatEEOT_RNSt16remove_referenceIS5_E4typeE,"axG",@progbits,_ZSt7forwardIRKSt10shared_ptrI4ChatEEOT_RNSt16remove_referenceIS5_E4typeE,comdat
	.weak	_ZSt7forwardIRKSt10shared_ptrI4ChatEEOT_RNSt16remove_referenceIS5_E4typeE
	.type	_ZSt7forwardIRKSt10shared_ptrI4ChatEEOT_RNSt16remove_referenceIS5_E4typeE, @function
_ZSt7forwardIRKSt10shared_ptrI4ChatEEOT_RNSt16remove_referenceIS5_E4typeE:
.LFB5725:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5725:
	.size	_ZSt7forwardIRKSt10shared_ptrI4ChatEEOT_RNSt16remove_referenceIS5_E4typeE, .-_ZSt7forwardIRKSt10shared_ptrI4ChatEEOT_RNSt16remove_referenceIS5_E4typeE
	.section	.text._ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEE9constructIS3_JRKS3_EEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEE9constructIS3_JRKS3_EEEvPT_DpOT0_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEE9constructIS3_JRKS3_EEEvPT_DpOT0_
	.type	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEE9constructIS3_JRKS3_EEEvPT_DpOT0_, @function
_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEE9constructIS3_JRKS3_EEEvPT_DpOT0_:
.LFB5726:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRKSt10shared_ptrI4ChatEEOT_RNSt16remove_referenceIS5_E4typeE
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$16, %edi
	call	_ZnwmPv
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZNSt10shared_ptrI4ChatEC1ERKS1_
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5726:
	.size	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEE9constructIS3_JRKS3_EEEvPT_DpOT0_, .-_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEE9constructIS3_JRKS3_EEEvPT_DpOT0_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEEC2ERKS4_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEEC5ERKS4_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEEC2ERKS4_
	.type	_ZN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEEC2ERKS4_, @function
_ZN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEEC2ERKS4_:
.LFB5728:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5728:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEEC2ERKS4_, .-_ZN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEEC2ERKS4_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEEC1ERKS4_
	.set	_ZN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEEC1ERKS4_,_ZN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEEC2ERKS4_
	.section	.text._ZNKSt6vectorISt10shared_ptrI4ChatESaIS2_EE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorISt10shared_ptrI4ChatESaIS2_EE12_M_check_lenEmPKc,comdat
	.align 2
	.weak	_ZNKSt6vectorISt10shared_ptrI4ChatESaIS2_EE12_M_check_lenEmPKc
	.type	_ZNKSt6vectorISt10shared_ptrI4ChatESaIS2_EE12_M_check_lenEmPKc, @function
_ZNKSt6vectorISt10shared_ptrI4ChatESaIS2_EE12_M_check_lenEmPKc:
.LFB5730:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorISt10shared_ptrI4ChatESaIS2_EE8max_sizeEv
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorISt10shared_ptrI4ChatESaIS2_EE4sizeEv
	subq	%rax, %rbx
	movq	%rbx, %rdx
	movq	-64(%rbp), %rax
	cmpq	%rax, %rdx
	setb	%al
	testb	%al, %al
	je	.L653
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.L653:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorISt10shared_ptrI4ChatESaIS2_EE4sizeEv
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorISt10shared_ptrI4ChatESaIS2_EE4sizeEv
	movq	%rax, -40(%rbp)
	leaq	-64(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3maxImERKT_S2_S2_
	movq	(%rax), %rax
	addq	%rbx, %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorISt10shared_ptrI4ChatESaIS2_EE4sizeEv
	cmpq	%rax, -32(%rbp)
	jb	.L654
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorISt10shared_ptrI4ChatESaIS2_EE8max_sizeEv
	cmpq	%rax, -32(%rbp)
	jbe	.L655
.L654:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorISt10shared_ptrI4ChatESaIS2_EE8max_sizeEv
	jmp	.L656
.L655:
	movq	-32(%rbp), %rax
.L656:
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L658
	call	__stack_chk_fail@PLT
.L658:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5730:
	.size	_ZNKSt6vectorISt10shared_ptrI4ChatESaIS2_EE12_M_check_lenEmPKc, .-_ZNKSt6vectorISt10shared_ptrI4ChatESaIS2_EE12_M_check_lenEmPKc
	.section	.text._ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EE5beginEv,"axG",@progbits,_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EE5beginEv,comdat
	.align 2
	.weak	_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EE5beginEv
	.type	_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EE5beginEv, @function
_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EE5beginEv:
.LFB5731:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEEC1ERKS4_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L661
	call	__stack_chk_fail@PLT
.L661:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5731:
	.size	_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EE5beginEv, .-_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EE5beginEv
	.section	.text._ZN9__gnu_cxxmiIPSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_,"axG",@progbits,_ZN9__gnu_cxxmiIPSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_,comdat
	.weak	_ZN9__gnu_cxxmiIPSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_
	.type	_ZN9__gnu_cxxmiIPSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_, @function
_ZN9__gnu_cxxmiIPSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_:
.LFB5732:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEE4baseEv
	movq	(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEE4baseEv
	movq	(%rax), %rdx
	movq	%rbx, %rax
	subq	%rdx, %rax
	sarq	$4, %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5732:
	.size	_ZN9__gnu_cxxmiIPSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_, .-_ZN9__gnu_cxxmiIPSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_
	.section	.text._ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE11_M_allocateEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE11_M_allocateEm
	.type	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE11_M_allocateEm, @function
_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE11_M_allocateEm:
.LFB5733:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L665
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaISt10shared_ptrI4ChatEEE8allocateERS3_m
	jmp	.L667
.L665:
	movl	$0, %eax
.L667:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5733:
	.size	_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE11_M_allocateEm, .-_ZNSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE11_M_allocateEm
	.section	.text._ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_,"axG",@progbits,_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_,comdat
	.weak	_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_
	.type	_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_, @function
_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_:
.LFB5734:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EE14_S_do_relocateEPS2_S5_S5_RS3_St17integral_constantIbLb1EE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5734:
	.size	_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_, .-_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEE4baseEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEE4baseEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEE4baseEv:
.LFB5735:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5735:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEE4baseEv
	.section	.text._ZNSt16allocator_traitsISaISt10shared_ptrI4ChatEEE7destroyIS2_EEvRS3_PT_,"axG",@progbits,_ZNSt16allocator_traitsISaISt10shared_ptrI4ChatEEE7destroyIS2_EEvRS3_PT_,comdat
	.weak	_ZNSt16allocator_traitsISaISt10shared_ptrI4ChatEEE7destroyIS2_EEvRS3_PT_
	.type	_ZNSt16allocator_traitsISaISt10shared_ptrI4ChatEEE7destroyIS2_EEvRS3_PT_, @function
_ZNSt16allocator_traitsISaISt10shared_ptrI4ChatEEE7destroyIS2_EEvRS3_PT_:
.LFB5736:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEE7destroyIS3_EEvPT_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5736:
	.size	_ZNSt16allocator_traitsISaISt10shared_ptrI4ChatEEE7destroyIS2_EEvRS3_PT_, .-_ZNSt16allocator_traitsISaISt10shared_ptrI4ChatEEE7destroyIS2_EEvRS3_PT_
	.section	.text._ZSt12__get_helperILm0EPNSt10filesystem7__cxx114path5_List5_ImplEJNS3_13_Impl_deleterEEERT0_RSt11_Tuple_implIXT_EJS7_DpT1_EE,"axG",@progbits,_ZSt12__get_helperILm0EPNSt10filesystem7__cxx114path5_List5_ImplEJNS3_13_Impl_deleterEEERT0_RSt11_Tuple_implIXT_EJS7_DpT1_EE,comdat
	.weak	_ZSt12__get_helperILm0EPNSt10filesystem7__cxx114path5_List5_ImplEJNS3_13_Impl_deleterEEERT0_RSt11_Tuple_implIXT_EJS7_DpT1_EE
	.type	_ZSt12__get_helperILm0EPNSt10filesystem7__cxx114path5_List5_ImplEJNS3_13_Impl_deleterEEERT0_RSt11_Tuple_implIXT_EJS7_DpT1_EE, @function
_ZSt12__get_helperILm0EPNSt10filesystem7__cxx114path5_List5_ImplEJNS3_13_Impl_deleterEEERT0_RSt11_Tuple_implIXT_EJS7_DpT1_EE:
.LFB5774:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEE7_M_headERS7_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5774:
	.size	_ZSt12__get_helperILm0EPNSt10filesystem7__cxx114path5_List5_ImplEJNS3_13_Impl_deleterEEERT0_RSt11_Tuple_implIXT_EJS7_DpT1_EE, .-_ZSt12__get_helperILm0EPNSt10filesystem7__cxx114path5_List5_ImplEJNS3_13_Impl_deleterEEERT0_RSt11_Tuple_implIXT_EJS7_DpT1_EE
	.section	.text._ZSt12__get_helperILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterEJEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE,"axG",@progbits,_ZSt12__get_helperILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterEJEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE,comdat
	.weak	_ZSt12__get_helperILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterEJEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE
	.type	_ZSt12__get_helperILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterEJEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE, @function
_ZSt12__get_helperILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterEJEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE:
.LFB5781:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm1EJNSt10filesystem7__cxx114path5_List13_Impl_deleterEEE7_M_headERS5_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5781:
	.size	_ZSt12__get_helperILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterEJEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE, .-_ZSt12__get_helperILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterEJEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE
	.section	.text._ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev,"axG",@progbits,_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED5Ev,comdat
	.align 2
	.weak	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev
	.type	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, @function
_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev:
.LFB5811:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	16+_ZTVSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5811:
	.size	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, .-_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev
	.weak	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED1Ev
	.set	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED1Ev,_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev
	.section	.text._ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED0Ev,"axG",@progbits,_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED5Ev,comdat
	.align 2
	.weak	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED0Ev
	.type	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED0Ev, @function
_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED0Ev:
.LFB5813:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED1Ev
	movq	-8(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5813:
	.size	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED0Ev, .-_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED0Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorI4UserE10deallocateEPS1_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI4UserE10deallocateEPS1_m,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI4UserE10deallocateEPS1_m
	.type	_ZN9__gnu_cxx13new_allocatorI4UserE10deallocateEPS1_m, @function
_ZN9__gnu_cxx13new_allocatorI4UserE10deallocateEPS1_m:
.LFB5814:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	salq	$4, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5814:
	.size	_ZN9__gnu_cxx13new_allocatorI4UserE10deallocateEPS1_m, .-_ZN9__gnu_cxx13new_allocatorI4UserE10deallocateEPS1_m
	.section	.text._ZNSt12_Destroy_auxILb0EE9__destroyIP4UserEEvT_S4_,"axG",@progbits,_ZNSt12_Destroy_auxILb0EE9__destroyIP4UserEEvT_S4_,comdat
	.weak	_ZNSt12_Destroy_auxILb0EE9__destroyIP4UserEEvT_S4_
	.type	_ZNSt12_Destroy_auxILb0EE9__destroyIP4UserEEvT_S4_, @function
_ZNSt12_Destroy_auxILb0EE9__destroyIP4UserEEvT_S4_:
.LFB5815:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	jmp	.L682
.L683:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofI4UserEPT_RS1_
	movq	%rax, %rdi
	call	_ZSt8_DestroyI4UserEvPT_
	addq	$120, -8(%rbp)
.L682:
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.L683
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5815:
	.size	_ZNSt12_Destroy_auxILb0EE9__destroyIP4UserEEvT_S4_, .-_ZNSt12_Destroy_auxILb0EE9__destroyIP4UserEEvT_S4_
	.section	.text._ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEE10deallocateEPS3_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEE10deallocateEPS3_m,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEE10deallocateEPS3_m
	.type	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEE10deallocateEPS3_m, @function
_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEE10deallocateEPS3_m:
.LFB5816:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5816:
	.size	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEE10deallocateEPS3_m, .-_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEE10deallocateEPS3_m
	.section	.text._ZNSt12_Destroy_auxILb0EE9__destroyIPSt10shared_ptrI4ChatEEEvT_S6_,"axG",@progbits,_ZNSt12_Destroy_auxILb0EE9__destroyIPSt10shared_ptrI4ChatEEEvT_S6_,comdat
	.weak	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt10shared_ptrI4ChatEEEvT_S6_
	.type	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt10shared_ptrI4ChatEEEvT_S6_, @function
_ZNSt12_Destroy_auxILb0EE9__destroyIPSt10shared_ptrI4ChatEEEvT_S6_:
.LFB5817:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	jmp	.L687
.L688:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofISt10shared_ptrI4ChatEEPT_RS3_
	movq	%rax, %rdi
	call	_ZSt8_DestroyISt10shared_ptrI4ChatEEvPT_
	addq	$16, -8(%rbp)
.L687:
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.L688
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5817:
	.size	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt10shared_ptrI4ChatEEEvT_S6_, .-_ZNSt12_Destroy_auxILb0EE9__destroyIPSt10shared_ptrI4ChatEEEvT_S6_
	.section	.text._ZNSaISt10shared_ptrI4ChatEEC2ERKS2_,"axG",@progbits,_ZNSaISt10shared_ptrI4ChatEEC5ERKS2_,comdat
	.align 2
	.weak	_ZNSaISt10shared_ptrI4ChatEEC2ERKS2_
	.type	_ZNSaISt10shared_ptrI4ChatEEC2ERKS2_, @function
_ZNSaISt10shared_ptrI4ChatEEC2ERKS2_:
.LFB5819:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEEC2ERKS4_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5819:
	.size	_ZNSaISt10shared_ptrI4ChatEEC2ERKS2_, .-_ZNSaISt10shared_ptrI4ChatEEC2ERKS2_
	.weak	_ZNSaISt10shared_ptrI4ChatEEC1ERKS2_
	.set	_ZNSaISt10shared_ptrI4ChatEEC1ERKS2_,_ZNSaISt10shared_ptrI4ChatEEC2ERKS2_
	.section	.text._ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS6_SaIS6_EEEEPS6_EET0_T_SF_SE_,"axG",@progbits,_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS6_SaIS6_EEEEPS6_EET0_T_SF_SE_,comdat
	.weak	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS6_SaIS6_EEEEPS6_EET0_T_SF_SE_
	.type	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS6_SaIS6_EEEEPS6_EET0_T_SF_SE_, @function
_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS6_SaIS6_EEEEPS6_EET0_T_SF_SE_:
.LFB5821:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L691
.L692:
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEEdeEv
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofISt10shared_ptrI4ChatEEPT_RS3_
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt10_ConstructISt10shared_ptrI4ChatEJRKS2_EEvPT_DpOT0_
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEEppEv
	addq	$16, -24(%rbp)
.L691:
	leaq	-48(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxneIPKSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_
	testb	%al, %al
	jne	.L692
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5821:
	.size	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS6_SaIS6_EEEEPS6_EET0_T_SF_SE_, .-_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS6_SaIS6_EEEEPS6_EET0_T_SF_SE_
	.section	.text._ZNSaIiEC2ERKS_,"axG",@progbits,_ZNSaIiEC5ERKS_,comdat
	.align 2
	.weak	_ZNSaIiEC2ERKS_
	.type	_ZNSaIiEC2ERKS_, @function
_ZNSaIiEC2ERKS_:
.LFB5823:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5823:
	.size	_ZNSaIiEC2ERKS_, .-_ZNSaIiEC2ERKS_
	.weak	_ZNSaIiEC1ERKS_
	.set	_ZNSaIiEC1ERKS_,_ZNSaIiEC2ERKS_
	.section	.text._ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev, @function
_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev:
.LFB5826:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5826:
	.size	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev
	.section	.text._ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm
	.type	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm, @function
_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm:
.LFB5828:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L697
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIiEE8allocateERS0_m
	jmp	.L699
.L697:
	movl	$0, %eax
.L699:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5828:
	.size	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm, .-_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm
	.section	.text._ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim,"axG",@progbits,_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim,comdat
	.weak	_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim
	.type	_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim, @function
_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim:
.LFB5829:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5829:
	.size	_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim, .-_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim
	.section	.text._ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_,"axG",@progbits,_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_,comdat
	.weak	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_
	.type	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_, @function
_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_:
.LFB5830:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5830:
	.size	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_, .-_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_
	.section	.text._ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEC2ISaIS0_EJS0_EEESt20_Sp_alloc_shared_tagIT_EDpOT0_,"axG",@progbits,_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEC5ISaIS0_EJS0_EEESt20_Sp_alloc_shared_tagIT_EDpOT0_,comdat
	.align 2
	.weak	_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEC2ISaIS0_EJS0_EEESt20_Sp_alloc_shared_tagIT_EDpOT0_
	.type	_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEC2ISaIS0_EJS0_EEESt20_Sp_alloc_shared_tagIT_EDpOT0_, @function
_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEC2ISaIS0_EJS0_EEESt20_Sp_alloc_shared_tagIT_EDpOT0_:
.LFB5833:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardI4ChatEOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I4ChatSaIS4_EJS4_EEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS0_S0_EENSt9enable_ifIXntsrNS3_15__has_esft_baseIT0_vEE5valueEvE4typeEPT_
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5833:
	.size	_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEC2ISaIS0_EJS0_EEESt20_Sp_alloc_shared_tagIT_EDpOT0_, .-_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEC2ISaIS0_EJS0_EEESt20_Sp_alloc_shared_tagIT_EDpOT0_
	.weak	_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEC1ISaIS0_EJS0_EEESt20_Sp_alloc_shared_tagIT_EDpOT0_
	.set	_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEC1ISaIS0_EJS0_EEESt20_Sp_alloc_shared_tagIT_EDpOT0_,_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEC2ISaIS0_EJS0_EEESt20_Sp_alloc_shared_tagIT_EDpOT0_
	.section	.text._ZSt4moveIRP4ChatEONSt16remove_referenceIT_E4typeEOS4_,"axG",@progbits,_ZSt4moveIRP4ChatEONSt16remove_referenceIT_E4typeEOS4_,comdat
	.weak	_ZSt4moveIRP4ChatEONSt16remove_referenceIT_E4typeEOS4_
	.type	_ZSt4moveIRP4ChatEONSt16remove_referenceIT_E4typeEOS4_, @function
_ZSt4moveIRP4ChatEONSt16remove_referenceIT_E4typeEOS4_:
.LFB5836:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5836:
	.size	_ZSt4moveIRP4ChatEONSt16remove_referenceIT_E4typeEOS4_, .-_ZSt4moveIRP4ChatEONSt16remove_referenceIT_E4typeEOS4_
	.section	.text._ZSt4swapIP4ChatENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SG_,"axG",@progbits,_ZSt4swapIP4ChatENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SG_,comdat
	.weak	_ZSt4swapIP4ChatENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SG_
	.type	_ZSt4swapIP4ChatENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SG_, @function
_ZSt4swapIP4ChatENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SG_:
.LFB5835:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRP4ChatEONSt16remove_referenceIT_E4typeEOS4_
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRP4ChatEONSt16remove_referenceIT_E4typeEOS4_
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRP4ChatEONSt16remove_referenceIT_E4typeEOS4_
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L707
	call	__stack_chk_fail@PLT
.L707:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5835:
	.size	_ZSt4swapIP4ChatENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SG_, .-_ZSt4swapIP4ChatENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SG_
	.section	.text._ZNKSt6vectorI4UserSaIS0_EE8max_sizeEv,"axG",@progbits,_ZNKSt6vectorI4UserSaIS0_EE8max_sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorI4UserSaIS0_EE8max_sizeEv
	.type	_ZNKSt6vectorI4UserSaIS0_EE8max_sizeEv, @function
_ZNKSt6vectorI4UserSaIS0_EE8max_sizeEv:
.LFB5837:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt12_Vector_baseI4UserSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdi
	call	_ZNSt6vectorI4UserSaIS0_EE11_S_max_sizeERKS1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5837:
	.size	_ZNKSt6vectorI4UserSaIS0_EE8max_sizeEv, .-_ZNKSt6vectorI4UserSaIS0_EE8max_sizeEv
	.section	.text._ZNSt16allocator_traitsISaI4UserEE8allocateERS1_m,"axG",@progbits,_ZNSt16allocator_traitsISaI4UserEE8allocateERS1_m,comdat
	.weak	_ZNSt16allocator_traitsISaI4UserEE8allocateERS1_m
	.type	_ZNSt16allocator_traitsISaI4UserEE8allocateERS1_m, @function
_ZNSt16allocator_traitsISaI4UserEE8allocateERS1_m:
.LFB5838:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorI4UserE8allocateEmPKv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5838:
	.size	_ZNSt16allocator_traitsISaI4UserEE8allocateERS1_m, .-_ZNSt16allocator_traitsISaI4UserEE8allocateERS1_m
	.section	.text._ZSt32__make_move_if_noexcept_iteratorI4UserPKS0_ET0_PT_,"axG",@progbits,_ZSt32__make_move_if_noexcept_iteratorI4UserPKS0_ET0_PT_,comdat
	.weak	_ZSt32__make_move_if_noexcept_iteratorI4UserPKS0_ET0_PT_
	.type	_ZSt32__make_move_if_noexcept_iteratorI4UserPKS0_ET0_PT_, @function
_ZSt32__make_move_if_noexcept_iteratorI4UserPKS0_ET0_PT_:
.LFB5839:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5839:
	.size	_ZSt32__make_move_if_noexcept_iteratorI4UserPKS0_ET0_PT_, .-_ZSt32__make_move_if_noexcept_iteratorI4UserPKS0_ET0_PT_
	.section	.text._ZSt22__uninitialized_copy_aIPK4UserPS0_S0_ET0_T_S5_S4_RSaIT1_E,"axG",@progbits,_ZSt22__uninitialized_copy_aIPK4UserPS0_S0_ET0_T_S5_S4_RSaIT1_E,comdat
	.weak	_ZSt22__uninitialized_copy_aIPK4UserPS0_S0_ET0_T_S5_S4_RSaIT1_E
	.type	_ZSt22__uninitialized_copy_aIPK4UserPS0_S0_ET0_T_S5_S4_RSaIT1_E, @function
_ZSt22__uninitialized_copy_aIPK4UserPS0_S0_ET0_T_S5_S4_RSaIT1_E:
.LFB5840:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt18uninitialized_copyIPK4UserPS0_ET0_T_S5_S4_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5840:
	.size	_ZSt22__uninitialized_copy_aIPK4UserPS0_S0_ET0_T_S5_S4_RSaIT1_E, .-_ZSt22__uninitialized_copy_aIPK4UserPS0_S0_ET0_T_S5_S4_RSaIT1_E
	.section	.text._ZN9__gnu_cxx13new_allocatorI4UserE7destroyIS1_EEvPT_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI4UserE7destroyIS1_EEvPT_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI4UserE7destroyIS1_EEvPT_
	.type	_ZN9__gnu_cxx13new_allocatorI4UserE7destroyIS1_EEvPT_, @function
_ZN9__gnu_cxx13new_allocatorI4UserE7destroyIS1_EEvPT_:
.LFB5841:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4UserD1Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5841:
	.size	_ZN9__gnu_cxx13new_allocatorI4UserE7destroyIS1_EEvPT_, .-_ZN9__gnu_cxx13new_allocatorI4UserE7destroyIS1_EEvPT_
	.section	.text._ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEC2ISaIS0_EJRS0_EEESt20_Sp_alloc_shared_tagIT_EDpOT0_,"axG",@progbits,_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEC5ISaIS0_EJRS0_EEESt20_Sp_alloc_shared_tagIT_EDpOT0_,comdat
	.align 2
	.weak	_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEC2ISaIS0_EJRS0_EEESt20_Sp_alloc_shared_tagIT_EDpOT0_
	.type	_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEC2ISaIS0_EJRS0_EEESt20_Sp_alloc_shared_tagIT_EDpOT0_, @function
_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEC2ISaIS0_EJRS0_EEESt20_Sp_alloc_shared_tagIT_EDpOT0_:
.LFB5843:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIR4UserEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I4UserSaIS4_EJRS4_EEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS0_S0_EENSt9enable_ifIXntsrNS3_15__has_esft_baseIT0_vEE5valueEvE4typeEPT_
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5843:
	.size	_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEC2ISaIS0_EJRS0_EEESt20_Sp_alloc_shared_tagIT_EDpOT0_, .-_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEC2ISaIS0_EJRS0_EEESt20_Sp_alloc_shared_tagIT_EDpOT0_
	.weak	_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEC1ISaIS0_EJRS0_EEESt20_Sp_alloc_shared_tagIT_EDpOT0_
	.set	_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEC1ISaIS0_EJRS0_EEESt20_Sp_alloc_shared_tagIT_EDpOT0_,_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EEC2ISaIS0_EJRS0_EEESt20_Sp_alloc_shared_tagIT_EDpOT0_
	.section	.text._ZSt4moveIRP4UserEONSt16remove_referenceIT_E4typeEOS4_,"axG",@progbits,_ZSt4moveIRP4UserEONSt16remove_referenceIT_E4typeEOS4_,comdat
	.weak	_ZSt4moveIRP4UserEONSt16remove_referenceIT_E4typeEOS4_
	.type	_ZSt4moveIRP4UserEONSt16remove_referenceIT_E4typeEOS4_, @function
_ZSt4moveIRP4UserEONSt16remove_referenceIT_E4typeEOS4_:
.LFB5846:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5846:
	.size	_ZSt4moveIRP4UserEONSt16remove_referenceIT_E4typeEOS4_, .-_ZSt4moveIRP4UserEONSt16remove_referenceIT_E4typeEOS4_
	.section	.text._ZSt4swapIP4UserENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SG_,"axG",@progbits,_ZSt4swapIP4UserENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SG_,comdat
	.weak	_ZSt4swapIP4UserENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SG_
	.type	_ZSt4swapIP4UserENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SG_, @function
_ZSt4swapIP4UserENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SG_:
.LFB5845:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRP4UserEONSt16remove_referenceIT_E4typeEOS4_
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRP4UserEONSt16remove_referenceIT_E4typeEOS4_
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRP4UserEONSt16remove_referenceIT_E4typeEOS4_
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L721
	call	__stack_chk_fail@PLT
.L721:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5845:
	.size	_ZSt4swapIP4UserENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SG_, .-_ZSt4swapIP4UserENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SG_
	.section	.text._ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEC2ISaIS0_EJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESt20_Sp_alloc_shared_tagIT_EDpOT0_,"axG",@progbits,_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEC5ISaIS0_EJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESt20_Sp_alloc_shared_tagIT_EDpOT0_,comdat
	.align 2
	.weak	_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEC2ISaIS0_EJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESt20_Sp_alloc_shared_tagIT_EDpOT0_
	.type	_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEC2ISaIS0_EJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESt20_Sp_alloc_shared_tagIT_EDpOT0_, @function
_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEC2ISaIS0_EJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESt20_Sp_alloc_shared_tagIT_EDpOT0_:
.LFB5848:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS7_E4typeE
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I4ChatSaIS4_EJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS0_S0_EENSt9enable_ifIXntsrNS3_15__has_esft_baseIT0_vEE5valueEvE4typeEPT_
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5848:
	.size	_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEC2ISaIS0_EJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESt20_Sp_alloc_shared_tagIT_EDpOT0_, .-_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEC2ISaIS0_EJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESt20_Sp_alloc_shared_tagIT_EDpOT0_
	.weak	_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEC1ISaIS0_EJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESt20_Sp_alloc_shared_tagIT_EDpOT0_
	.set	_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEC1ISaIS0_EJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESt20_Sp_alloc_shared_tagIT_EDpOT0_,_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEC2ISaIS0_EJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESt20_Sp_alloc_shared_tagIT_EDpOT0_
	.section	.text._ZNKSt6vectorISt10shared_ptrI4ChatESaIS2_EE8max_sizeEv,"axG",@progbits,_ZNKSt6vectorISt10shared_ptrI4ChatESaIS2_EE8max_sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorISt10shared_ptrI4ChatESaIS2_EE8max_sizeEv
	.type	_ZNKSt6vectorISt10shared_ptrI4ChatESaIS2_EE8max_sizeEv, @function
_ZNKSt6vectorISt10shared_ptrI4ChatESaIS2_EE8max_sizeEv:
.LFB5850:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt12_Vector_baseISt10shared_ptrI4ChatESaIS2_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdi
	call	_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EE11_S_max_sizeERKS3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5850:
	.size	_ZNKSt6vectorISt10shared_ptrI4ChatESaIS2_EE8max_sizeEv, .-_ZNKSt6vectorISt10shared_ptrI4ChatESaIS2_EE8max_sizeEv
	.section	.text._ZNSt16allocator_traitsISaISt10shared_ptrI4ChatEEE8allocateERS3_m,"axG",@progbits,_ZNSt16allocator_traitsISaISt10shared_ptrI4ChatEEE8allocateERS3_m,comdat
	.weak	_ZNSt16allocator_traitsISaISt10shared_ptrI4ChatEEE8allocateERS3_m
	.type	_ZNSt16allocator_traitsISaISt10shared_ptrI4ChatEEE8allocateERS3_m, @function
_ZNSt16allocator_traitsISaISt10shared_ptrI4ChatEEE8allocateERS3_m:
.LFB5851:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEE8allocateEmPKv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5851:
	.size	_ZNSt16allocator_traitsISaISt10shared_ptrI4ChatEEE8allocateERS3_m, .-_ZNSt16allocator_traitsISaISt10shared_ptrI4ChatEEE8allocateERS3_m
	.section	.text._ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EE14_S_do_relocateEPS2_S5_S5_RS3_St17integral_constantIbLb1EE,"axG",@progbits,_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EE14_S_do_relocateEPS2_S5_S5_RS3_St17integral_constantIbLb1EE,comdat
	.weak	_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EE14_S_do_relocateEPS2_S5_S5_RS3_St17integral_constantIbLb1EE
	.type	_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EE14_S_do_relocateEPS2_S5_S5_RS3_St17integral_constantIbLb1EE, @function
_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EE14_S_do_relocateEPS2_S5_S5_RS3_St17integral_constantIbLb1EE:
.LFB5852:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__relocate_aIPSt10shared_ptrI4ChatES3_SaIS2_EET0_T_S6_S5_RT1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5852:
	.size	_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EE14_S_do_relocateEPS2_S5_S5_RS3_St17integral_constantIbLb1EE, .-_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EE14_S_do_relocateEPS2_S5_S5_RS3_St17integral_constantIbLb1EE
	.section	.text._ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEE7destroyIS3_EEvPT_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEE7destroyIS3_EEvPT_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEE7destroyIS3_EEvPT_
	.type	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEE7destroyIS3_EEvPT_, @function
_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEE7destroyIS3_EEvPT_:
.LFB5853:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10shared_ptrI4ChatED1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5853:
	.size	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEE7destroyIS3_EEvPT_, .-_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEE7destroyIS3_EEvPT_
	.section	.text._ZNSt11_Tuple_implILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEE7_M_headERS7_,"axG",@progbits,_ZNSt11_Tuple_implILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEE7_M_headERS7_,comdat
	.weak	_ZNSt11_Tuple_implILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEE7_M_headERS7_
	.type	_ZNSt11_Tuple_implILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEE7_M_headERS7_, @function
_ZNSt11_Tuple_implILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEE7_M_headERS7_:
.LFB5882:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10_Head_baseILm0EPNSt10filesystem7__cxx114path5_List5_ImplELb0EE7_M_headERS6_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5882:
	.size	_ZNSt11_Tuple_implILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEE7_M_headERS7_, .-_ZNSt11_Tuple_implILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEE7_M_headERS7_
	.section	.text._ZNSt11_Tuple_implILm1EJNSt10filesystem7__cxx114path5_List13_Impl_deleterEEE7_M_headERS5_,"axG",@progbits,_ZNSt11_Tuple_implILm1EJNSt10filesystem7__cxx114path5_List13_Impl_deleterEEE7_M_headERS5_,comdat
	.weak	_ZNSt11_Tuple_implILm1EJNSt10filesystem7__cxx114path5_List13_Impl_deleterEEE7_M_headERS5_
	.type	_ZNSt11_Tuple_implILm1EJNSt10filesystem7__cxx114path5_List13_Impl_deleterEEE7_M_headERS5_, @function
_ZNSt11_Tuple_implILm1EJNSt10filesystem7__cxx114path5_List13_Impl_deleterEEE7_M_headERS5_:
.LFB5888:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10_Head_baseILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterELb1EE7_M_headERS5_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5888:
	.size	_ZNSt11_Tuple_implILm1EJNSt10filesystem7__cxx114path5_List13_Impl_deleterEEE7_M_headERS5_, .-_ZNSt11_Tuple_implILm1EJNSt10filesystem7__cxx114path5_List13_Impl_deleterEEE7_M_headERS5_
	.section	.text._ZSt11__addressofI4UserEPT_RS1_,"axG",@progbits,_ZSt11__addressofI4UserEPT_RS1_,comdat
	.weak	_ZSt11__addressofI4UserEPT_RS1_
	.type	_ZSt11__addressofI4UserEPT_RS1_, @function
_ZSt11__addressofI4UserEPT_RS1_:
.LFB5896:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5896:
	.size	_ZSt11__addressofI4UserEPT_RS1_, .-_ZSt11__addressofI4UserEPT_RS1_
	.section	.text._ZSt8_DestroyI4UserEvPT_,"axG",@progbits,_ZSt8_DestroyI4UserEvPT_,comdat
	.weak	_ZSt8_DestroyI4UserEvPT_
	.type	_ZSt8_DestroyI4UserEvPT_, @function
_ZSt8_DestroyI4UserEvPT_:
.LFB5897:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4UserD1Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5897:
	.size	_ZSt8_DestroyI4UserEvPT_, .-_ZSt8_DestroyI4UserEvPT_
	.section	.text._ZSt11__addressofISt10shared_ptrI4ChatEEPT_RS3_,"axG",@progbits,_ZSt11__addressofISt10shared_ptrI4ChatEEPT_RS3_,comdat
	.weak	_ZSt11__addressofISt10shared_ptrI4ChatEEPT_RS3_
	.type	_ZSt11__addressofISt10shared_ptrI4ChatEEPT_RS3_, @function
_ZSt11__addressofISt10shared_ptrI4ChatEEPT_RS3_:
.LFB5898:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5898:
	.size	_ZSt11__addressofISt10shared_ptrI4ChatEEPT_RS3_, .-_ZSt11__addressofISt10shared_ptrI4ChatEEPT_RS3_
	.section	.text._ZSt8_DestroyISt10shared_ptrI4ChatEEvPT_,"axG",@progbits,_ZSt8_DestroyISt10shared_ptrI4ChatEEvPT_,comdat
	.weak	_ZSt8_DestroyISt10shared_ptrI4ChatEEvPT_
	.type	_ZSt8_DestroyISt10shared_ptrI4ChatEEvPT_, @function
_ZSt8_DestroyISt10shared_ptrI4ChatEEvPT_:
.LFB5899:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10shared_ptrI4ChatED1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5899:
	.size	_ZSt8_DestroyISt10shared_ptrI4ChatEEvPT_, .-_ZSt8_DestroyISt10shared_ptrI4ChatEEvPT_
	.section	.text._ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEEC2ERKS4_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEEC5ERKS4_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEEC2ERKS4_
	.type	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEEC2ERKS4_, @function
_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEEC2ERKS4_:
.LFB5901:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5901:
	.size	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEEC2ERKS4_, .-_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEEC2ERKS4_
	.weak	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEEC1ERKS4_
	.set	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEEC1ERKS4_,_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEEC2ERKS4_
	.section	.text._ZN9__gnu_cxxneIPKSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_,"axG",@progbits,_ZN9__gnu_cxxneIPKSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_,comdat
	.weak	_ZN9__gnu_cxxneIPKSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_
	.type	_ZN9__gnu_cxxneIPKSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_, @function
_ZN9__gnu_cxxneIPKSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_:
.LFB5903:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEE4baseEv
	movq	(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEE4baseEv
	movq	(%rax), %rax
	cmpq	%rax, %rbx
	setne	%al
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5903:
	.size	_ZN9__gnu_cxxneIPKSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_, .-_ZN9__gnu_cxxneIPKSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEEppEv,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEEppEv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEEppEv
	.type	_ZN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEEppEv, @function
_ZN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEEppEv:
.LFB5904:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5904:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEEppEv, .-_ZN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEEppEv
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEEdeEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEEdeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEEdeEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEEdeEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEEdeEv:
.LFB5905:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5905:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEEdeEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEEdeEv
	.section	.text._ZSt10_ConstructISt10shared_ptrI4ChatEJRKS2_EEvPT_DpOT0_,"axG",@progbits,_ZSt10_ConstructISt10shared_ptrI4ChatEJRKS2_EEvPT_DpOT0_,comdat
	.weak	_ZSt10_ConstructISt10shared_ptrI4ChatEJRKS2_EEvPT_DpOT0_
	.type	_ZSt10_ConstructISt10shared_ptrI4ChatEJRKS2_EEvPT_DpOT0_, @function
_ZSt10_ConstructISt10shared_ptrI4ChatEJRKS2_EEvPT_DpOT0_:
.LFB5906:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRKSt10shared_ptrI4ChatEEOT_RNSt16remove_referenceIS5_E4typeE
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$16, %edi
	call	_ZnwmPv
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZNSt10shared_ptrI4ChatEC1ERKS1_
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5906:
	.size	_ZSt10_ConstructISt10shared_ptrI4ChatEJRKS2_EEvPT_DpOT0_, .-_ZSt10_ConstructISt10shared_ptrI4ChatEJRKS2_EEvPT_DpOT0_
	.section	.text._ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIiEC5ERKS1_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_
	.type	_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_, @function
_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_:
.LFB5908:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5908:
	.size	_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_, .-_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_
	.weak	_ZN9__gnu_cxx13new_allocatorIiEC1ERKS1_
	.set	_ZN9__gnu_cxx13new_allocatorIiEC1ERKS1_,_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_
	.section	.text._ZNSt16allocator_traitsISaIiEE8allocateERS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaIiEE8allocateERS0_m,comdat
	.weak	_ZNSt16allocator_traitsISaIiEE8allocateERS0_m
	.type	_ZNSt16allocator_traitsISaIiEE8allocateERS0_m, @function
_ZNSt16allocator_traitsISaIiEE8allocateERS0_m:
.LFB5910:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5910:
	.size	_ZNSt16allocator_traitsISaIiEE8allocateERS0_m, .-_ZNSt16allocator_traitsISaIiEE8allocateERS0_m
	.section	.text._ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim
	.type	_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim, @function
_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim:
.LFB5911:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5911:
	.size	_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim, .-_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim
	.section	.text._ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_,"axG",@progbits,_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_,comdat
	.weak	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_
	.type	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_, @function
_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_:
.LFB5912:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5912:
	.size	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_, .-_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_
	.section	.text._ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2I4ChatSaIS4_EJS4_EEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_,"axG",@progbits,_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC5I4ChatSaIS4_EJS4_EEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_,comdat
	.align 2
	.weak	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2I4ChatSaIS4_EJS4_EEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_
	.type	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2I4ChatSaIS4_EJS4_EEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_, @function
_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2I4ChatSaIS4_EJS4_EEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_:
.LFB5914:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5914
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$96, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	movq	-120(%rbp), %rdx
	leaq	-82(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSaISt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEEC1IS0_EERKSaIT_E
	leaq	-64(%rbp), %rax
	leaq	-82(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB127:
	call	_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS8_
.LEHE127:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE3getEv
	movq	%rax, -80(%rbp)
	movq	-120(%rbp), %rdx
	leaq	-81(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSaI4ChatEC1ERKS0_
	leaq	-81(%rbp), %r13
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardI4ChatEOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %r14
	movq	-80(%rbp), %r12
	movq	%r12, %rsi
	movl	$88, %edi
	call	_ZnwmPv
	movq	%rax, %rbx
	movq	%r14, %rdx
	movq	%r13, %rsi
	movq	%rbx, %rdi
.LEHB128:
	call	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC1IJS0_EEES1_DpOT_
.LEHE128:
	movq	%rbx, -72(%rbp)
	leaq	-81(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaI4ChatED1Ev
	leaq	-64(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEaSEDn
	movq	-104(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE6_M_ptrEv
	movq	-112(%rbp), %rdx
	movq	%rax, (%rdx)
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEED1Ev
	leaq	-82(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaISt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEED1Ev
	nop
	movq	-40(%rbp), %rax
	subq	%fs:40, %rax
	je	.L758
	jmp	.L761
.L760:
	endbr64
	movq	%rax, %r13
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	_ZdlPvS_
	movq	%r13, %rbx
	leaq	-81(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaI4ChatED1Ev
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEED1Ev
	jmp	.L757
.L759:
	endbr64
	movq	%rax, %rbx
.L757:
	leaq	-82(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaISt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB129:
	call	_Unwind_Resume@PLT
.LEHE129:
.L761:
	call	__stack_chk_fail@PLT
.L758:
	addq	$96, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5914:
	.section	.gcc_except_table
.LLSDA5914:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5914-.LLSDACSB5914
.LLSDACSB5914:
	.uleb128 .LEHB127-.LFB5914
	.uleb128 .LEHE127-.LEHB127
	.uleb128 .L759-.LFB5914
	.uleb128 0
	.uleb128 .LEHB128-.LFB5914
	.uleb128 .LEHE128-.LEHB128
	.uleb128 .L760-.LFB5914
	.uleb128 0
	.uleb128 .LEHB129-.LFB5914
	.uleb128 .LEHE129-.LEHB129
	.uleb128 0
	.uleb128 0
.LLSDACSE5914:
	.section	.text._ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2I4ChatSaIS4_EJS4_EEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_,"axG",@progbits,_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC5I4ChatSaIS4_EJS4_EEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_,comdat
	.size	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2I4ChatSaIS4_EJS4_EEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_, .-_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2I4ChatSaIS4_EJS4_EEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_
	.weak	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I4ChatSaIS4_EJS4_EEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_
	.set	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I4ChatSaIS4_EJS4_EEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_,_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2I4ChatSaIS4_EJS4_EEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_
	.section	.text._ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS0_S0_EENSt9enable_ifIXntsrNS3_15__has_esft_baseIT0_vEE5valueEvE4typeEPT_,"axG",@progbits,_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS0_S0_EENSt9enable_ifIXntsrNS3_15__has_esft_baseIT0_vEE5valueEvE4typeEPT_,comdat
	.align 2
	.weak	_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS0_S0_EENSt9enable_ifIXntsrNS3_15__has_esft_baseIT0_vEE5valueEvE4typeEPT_
	.type	_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS0_S0_EENSt9enable_ifIXntsrNS3_15__has_esft_baseIT0_vEE5valueEvE4typeEPT_, @function
_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS0_S0_EENSt9enable_ifIXntsrNS3_15__has_esft_baseIT0_vEE5valueEvE4typeEPT_:
.LFB5916:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5916:
	.size	_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS0_S0_EENSt9enable_ifIXntsrNS3_15__has_esft_baseIT0_vEE5valueEvE4typeEPT_, .-_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS0_S0_EENSt9enable_ifIXntsrNS3_15__has_esft_baseIT0_vEE5valueEvE4typeEPT_
	.section	.text._ZNSt6vectorI4UserSaIS0_EE11_S_max_sizeERKS1_,"axG",@progbits,_ZNSt6vectorI4UserSaIS0_EE11_S_max_sizeERKS1_,comdat
	.weak	_ZNSt6vectorI4UserSaIS0_EE11_S_max_sizeERKS1_
	.type	_ZNSt6vectorI4UserSaIS0_EE11_S_max_sizeERKS1_, @function
_ZNSt6vectorI4UserSaIS0_EE11_S_max_sizeERKS1_:
.LFB5917:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movabsq	$76861433640456465, %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaI4UserEE8max_sizeERKS1_
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3minImERKT_S2_S2_
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L765
	call	__stack_chk_fail@PLT
.L765:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5917:
	.size	_ZNSt6vectorI4UserSaIS0_EE11_S_max_sizeERKS1_, .-_ZNSt6vectorI4UserSaIS0_EE11_S_max_sizeERKS1_
	.section	.text._ZNKSt12_Vector_baseI4UserSaIS0_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseI4UserSaIS0_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt12_Vector_baseI4UserSaIS0_EE19_M_get_Tp_allocatorEv
	.type	_ZNKSt12_Vector_baseI4UserSaIS0_EE19_M_get_Tp_allocatorEv, @function
_ZNKSt12_Vector_baseI4UserSaIS0_EE19_M_get_Tp_allocatorEv:
.LFB5918:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5918:
	.size	_ZNKSt12_Vector_baseI4UserSaIS0_EE19_M_get_Tp_allocatorEv, .-_ZNKSt12_Vector_baseI4UserSaIS0_EE19_M_get_Tp_allocatorEv
	.section	.text._ZNK9__gnu_cxx13new_allocatorI4UserE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorI4UserE11_M_max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorI4UserE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorI4UserE11_M_max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorI4UserE11_M_max_sizeEv:
.LFB5920:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movabsq	$76861433640456465, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5920:
	.size	_ZNK9__gnu_cxx13new_allocatorI4UserE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorI4UserE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorI4UserE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI4UserE8allocateEmPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI4UserE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorI4UserE8allocateEmPKv, @function
_ZN9__gnu_cxx13new_allocatorI4UserE8allocateEmPKv:
.LFB5919:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx13new_allocatorI4UserE11_M_max_sizeEv
	cmpq	%rax, -16(%rbp)
	seta	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	je	.L771
	movabsq	$153722867280912930, %rax
	cmpq	%rax, -16(%rbp)
	jbe	.L772
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L772:
	call	_ZSt17__throw_bad_allocv@PLT
.L771:
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$4, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	_Znwm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5919:
	.size	_ZN9__gnu_cxx13new_allocatorI4UserE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorI4UserE8allocateEmPKv
	.section	.text._ZSt18uninitialized_copyIPK4UserPS0_ET0_T_S5_S4_,"axG",@progbits,_ZSt18uninitialized_copyIPK4UserPS0_ET0_T_S5_S4_,comdat
	.weak	_ZSt18uninitialized_copyIPK4UserPS0_ET0_T_S5_S4_
	.type	_ZSt18uninitialized_copyIPK4UserPS0_ET0_T_S5_S4_, @function
_ZSt18uninitialized_copyIPK4UserPS0_ET0_T_S5_S4_:
.LFB5921:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movb	$1, -1(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPK4UserPS2_EET0_T_S7_S6_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5921:
	.size	_ZSt18uninitialized_copyIPK4UserPS0_ET0_T_S5_S4_, .-_ZSt18uninitialized_copyIPK4UserPS0_ET0_T_S5_S4_
	.section	.text._ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2I4UserSaIS4_EJRS4_EEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_,"axG",@progbits,_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC5I4UserSaIS4_EJRS4_EEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_,comdat
	.align 2
	.weak	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2I4UserSaIS4_EJRS4_EEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_
	.type	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2I4UserSaIS4_EJRS4_EEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_, @function
_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2I4UserSaIS4_EJRS4_EEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_:
.LFB5924:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5924
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$96, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	movq	-120(%rbp), %rdx
	leaq	-82(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSaISt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEEC1IS0_EERKSaIT_E
	leaq	-64(%rbp), %rax
	leaq	-82(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB130:
	call	_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS8_
.LEHE130:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE3getEv
	movq	%rax, -80(%rbp)
	movq	-120(%rbp), %rdx
	leaq	-81(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSaI4UserEC1ERKS0_
	leaq	-81(%rbp), %r13
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIR4UserEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %r14
	movq	-80(%rbp), %r12
	movq	%r12, %rsi
	movl	$136, %edi
	call	_ZnwmPv
	movq	%rax, %rbx
	movq	%r14, %rdx
	movq	%r13, %rsi
	movq	%rbx, %rdi
.LEHB131:
	call	_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC1IJRS0_EEES1_DpOT_
.LEHE131:
	movq	%rbx, -72(%rbp)
	leaq	-81(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaI4UserED1Ev
	leaq	-64(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEaSEDn
	movq	-104(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE6_M_ptrEv
	movq	-112(%rbp), %rdx
	movq	%rax, (%rdx)
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEED1Ev
	leaq	-82(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaISt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEED1Ev
	nop
	movq	-40(%rbp), %rax
	subq	%fs:40, %rax
	je	.L779
	jmp	.L782
.L781:
	endbr64
	movq	%rax, %r13
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	_ZdlPvS_
	movq	%r13, %rbx
	leaq	-81(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaI4UserED1Ev
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEED1Ev
	jmp	.L778
.L780:
	endbr64
	movq	%rax, %rbx
.L778:
	leaq	-82(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaISt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB132:
	call	_Unwind_Resume@PLT
.LEHE132:
.L782:
	call	__stack_chk_fail@PLT
.L779:
	addq	$96, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5924:
	.section	.gcc_except_table
.LLSDA5924:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5924-.LLSDACSB5924
.LLSDACSB5924:
	.uleb128 .LEHB130-.LFB5924
	.uleb128 .LEHE130-.LEHB130
	.uleb128 .L780-.LFB5924
	.uleb128 0
	.uleb128 .LEHB131-.LFB5924
	.uleb128 .LEHE131-.LEHB131
	.uleb128 .L781-.LFB5924
	.uleb128 0
	.uleb128 .LEHB132-.LFB5924
	.uleb128 .LEHE132-.LEHB132
	.uleb128 0
	.uleb128 0
.LLSDACSE5924:
	.section	.text._ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2I4UserSaIS4_EJRS4_EEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_,"axG",@progbits,_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC5I4UserSaIS4_EJRS4_EEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_,comdat
	.size	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2I4UserSaIS4_EJRS4_EEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_, .-_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2I4UserSaIS4_EJRS4_EEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_
	.weak	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I4UserSaIS4_EJRS4_EEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_
	.set	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I4UserSaIS4_EJRS4_EEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_,_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2I4UserSaIS4_EJRS4_EEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_
	.section	.text._ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS0_S0_EENSt9enable_ifIXntsrNS3_15__has_esft_baseIT0_vEE5valueEvE4typeEPT_,"axG",@progbits,_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS0_S0_EENSt9enable_ifIXntsrNS3_15__has_esft_baseIT0_vEE5valueEvE4typeEPT_,comdat
	.align 2
	.weak	_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS0_S0_EENSt9enable_ifIXntsrNS3_15__has_esft_baseIT0_vEE5valueEvE4typeEPT_
	.type	_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS0_S0_EENSt9enable_ifIXntsrNS3_15__has_esft_baseIT0_vEE5valueEvE4typeEPT_, @function
_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS0_S0_EENSt9enable_ifIXntsrNS3_15__has_esft_baseIT0_vEE5valueEvE4typeEPT_:
.LFB5926:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5926:
	.size	_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS0_S0_EENSt9enable_ifIXntsrNS3_15__has_esft_baseIT0_vEE5valueEvE4typeEPT_, .-_ZNSt12__shared_ptrI4UserLN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS0_S0_EENSt9enable_ifIXntsrNS3_15__has_esft_baseIT0_vEE5valueEvE4typeEPT_
	.section	.text._ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2I4ChatSaIS4_EJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_,"axG",@progbits,_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC5I4ChatSaIS4_EJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_,comdat
	.align 2
	.weak	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2I4ChatSaIS4_EJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_
	.type	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2I4ChatSaIS4_EJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_, @function
_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2I4ChatSaIS4_EJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_:
.LFB5928:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5928
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$96, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	movq	-120(%rbp), %rdx
	leaq	-82(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSaISt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEEC1IS0_EERKSaIT_E
	leaq	-64(%rbp), %rax
	leaq	-82(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB133:
	call	_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS8_
.LEHE133:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE3getEv
	movq	%rax, -80(%rbp)
	movq	-120(%rbp), %rdx
	leaq	-81(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSaI4ChatEC1ERKS0_
	leaq	-81(%rbp), %r13
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS7_E4typeE
	movq	%rax, %r14
	movq	-80(%rbp), %r12
	movq	%r12, %rsi
	movl	$88, %edi
	call	_ZnwmPv
	movq	%rax, %rbx
	movq	%r14, %rdx
	movq	%r13, %rsi
	movq	%rbx, %rdi
.LEHB134:
	call	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC1IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES1_DpOT_
.LEHE134:
	movq	%rbx, -72(%rbp)
	leaq	-81(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaI4ChatED1Ev
	leaq	-64(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEaSEDn
	movq	-104(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE6_M_ptrEv
	movq	-112(%rbp), %rdx
	movq	%rax, (%rdx)
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEED1Ev
	leaq	-82(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaISt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEED1Ev
	nop
	movq	-40(%rbp), %rax
	subq	%fs:40, %rax
	je	.L787
	jmp	.L790
.L789:
	endbr64
	movq	%rax, %r13
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	_ZdlPvS_
	movq	%r13, %rbx
	leaq	-81(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaI4ChatED1Ev
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEED1Ev
	jmp	.L786
.L788:
	endbr64
	movq	%rax, %rbx
.L786:
	leaq	-82(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaISt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB135:
	call	_Unwind_Resume@PLT
.LEHE135:
.L790:
	call	__stack_chk_fail@PLT
.L787:
	addq	$96, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5928:
	.section	.gcc_except_table
.LLSDA5928:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5928-.LLSDACSB5928
.LLSDACSB5928:
	.uleb128 .LEHB133-.LFB5928
	.uleb128 .LEHE133-.LEHB133
	.uleb128 .L788-.LFB5928
	.uleb128 0
	.uleb128 .LEHB134-.LFB5928
	.uleb128 .LEHE134-.LEHB134
	.uleb128 .L789-.LFB5928
	.uleb128 0
	.uleb128 .LEHB135-.LFB5928
	.uleb128 .LEHE135-.LEHB135
	.uleb128 0
	.uleb128 0
.LLSDACSE5928:
	.section	.text._ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2I4ChatSaIS4_EJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_,"axG",@progbits,_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC5I4ChatSaIS4_EJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_,comdat
	.size	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2I4ChatSaIS4_EJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_, .-_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2I4ChatSaIS4_EJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_
	.weak	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I4ChatSaIS4_EJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_
	.set	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1I4ChatSaIS4_EJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_,_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2I4ChatSaIS4_EJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_
	.section	.text._ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EE11_S_max_sizeERKS3_,"axG",@progbits,_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EE11_S_max_sizeERKS3_,comdat
	.weak	_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EE11_S_max_sizeERKS3_
	.type	_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EE11_S_max_sizeERKS3_, @function
_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EE11_S_max_sizeERKS3_:
.LFB5930:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movabsq	$576460752303423487, %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaISt10shared_ptrI4ChatEEE8max_sizeERKS3_
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3minImERKT_S2_S2_
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L793
	call	__stack_chk_fail@PLT
.L793:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5930:
	.size	_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EE11_S_max_sizeERKS3_, .-_ZNSt6vectorISt10shared_ptrI4ChatESaIS2_EE11_S_max_sizeERKS3_
	.section	.text._ZNK9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEE11_M_max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEE11_M_max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEE11_M_max_sizeEv:
.LFB5932:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movabsq	$576460752303423487, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5932:
	.size	_ZNK9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEE8allocateEmPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEE8allocateEmPKv, @function
_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEE8allocateEmPKv:
.LFB5931:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEE11_M_max_sizeEv
	cmpq	%rax, -16(%rbp)
	seta	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	je	.L797
	movabsq	$1152921504606846975, %rax
	cmpq	%rax, -16(%rbp)
	jbe	.L798
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L798:
	call	_ZSt17__throw_bad_allocv@PLT
.L797:
	movq	-16(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdi
	call	_Znwm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5931:
	.size	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEE8allocateEmPKv
	.section	.text._ZSt12__relocate_aIPSt10shared_ptrI4ChatES3_SaIS2_EET0_T_S6_S5_RT1_,"axG",@progbits,_ZSt12__relocate_aIPSt10shared_ptrI4ChatES3_SaIS2_EET0_T_S6_S5_RT1_,comdat
	.weak	_ZSt12__relocate_aIPSt10shared_ptrI4ChatES3_SaIS2_EET0_T_S6_S5_RT1_
	.type	_ZSt12__relocate_aIPSt10shared_ptrI4ChatES3_SaIS2_EET0_T_S6_S5_RT1_, @function
_ZSt12__relocate_aIPSt10shared_ptrI4ChatES3_SaIS2_EET0_T_S6_S5_RT1_:
.LFB5933:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPSt10shared_ptrI4ChatEET_S4_
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPSt10shared_ptrI4ChatEET_S4_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPSt10shared_ptrI4ChatEET_S4_
	movq	%rax, %rdi
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	call	_ZSt14__relocate_a_1IPSt10shared_ptrI4ChatES3_SaIS2_EET0_T_S6_S5_RT1_
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5933:
	.size	_ZSt12__relocate_aIPSt10shared_ptrI4ChatES3_SaIS2_EET0_T_S6_S5_RT1_, .-_ZSt12__relocate_aIPSt10shared_ptrI4ChatES3_SaIS2_EET0_T_S6_S5_RT1_
	.section	.text._ZNSt10_Head_baseILm0EPNSt10filesystem7__cxx114path5_List5_ImplELb0EE7_M_headERS6_,"axG",@progbits,_ZNSt10_Head_baseILm0EPNSt10filesystem7__cxx114path5_List5_ImplELb0EE7_M_headERS6_,comdat
	.weak	_ZNSt10_Head_baseILm0EPNSt10filesystem7__cxx114path5_List5_ImplELb0EE7_M_headERS6_
	.type	_ZNSt10_Head_baseILm0EPNSt10filesystem7__cxx114path5_List5_ImplELb0EE7_M_headERS6_, @function
_ZNSt10_Head_baseILm0EPNSt10filesystem7__cxx114path5_List5_ImplELb0EE7_M_headERS6_:
.LFB5950:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5950:
	.size	_ZNSt10_Head_baseILm0EPNSt10filesystem7__cxx114path5_List5_ImplELb0EE7_M_headERS6_, .-_ZNSt10_Head_baseILm0EPNSt10filesystem7__cxx114path5_List5_ImplELb0EE7_M_headERS6_
	.section	.text._ZNSt10_Head_baseILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterELb1EE7_M_headERS5_,"axG",@progbits,_ZNSt10_Head_baseILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterELb1EE7_M_headERS5_,comdat
	.weak	_ZNSt10_Head_baseILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterELb1EE7_M_headERS5_
	.type	_ZNSt10_Head_baseILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterELb1EE7_M_headERS5_, @function
_ZNSt10_Head_baseILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterELb1EE7_M_headERS5_:
.LFB5952:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5952:
	.size	_ZNSt10_Head_baseILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterELb1EE7_M_headERS5_, .-_ZNSt10_Head_baseILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterELb1EE7_M_headERS5_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEE4baseEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEE4baseEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEE4baseEv:
.LFB5971:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5971:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrI4ChatESt6vectorIS3_SaIS3_EEE4baseEv
	.section	.text._ZNK9__gnu_cxx13new_allocatorIiE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIiE11_M_max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorIiE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIiE11_M_max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorIiE11_M_max_sizeEv:
.LFB5973:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movabsq	$2305843009213693951, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5973:
	.size	_ZNK9__gnu_cxx13new_allocatorIiE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIiE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv, @function
_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv:
.LFB5972:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx13new_allocatorIiE11_M_max_sizeEv
	cmpq	%rax, -16(%rbp)
	seta	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	je	.L811
	movabsq	$4611686018427387903, %rax
	cmpq	%rax, -16(%rbp)
	jbe	.L812
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L812:
	call	_ZSt17__throw_bad_allocv@PLT
.L811:
	movq	-16(%rbp), %rax
	salq	$2, %rax
	movq	%rax, %rdi
	call	_Znwm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5972:
	.size	_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv
	.section	.text._ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_,"axG",@progbits,_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_,comdat
	.weak	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_
	.type	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_, @function
_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_:
.LFB5974:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5974:
	.size	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_, .-_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_
	.section	.text._ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_,"axG",@progbits,_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_,comdat
	.weak	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_
	.type	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_, @function
_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_:
.LFB5975:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPiET_S1_
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_
	movq	%rax, %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt12__niter_wrapIPiET_RKS1_S1_
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5975:
	.size	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_, .-_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_
	.section	.text._ZNSaISt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEEC2IS0_EERKSaIT_E,"axG",@progbits,_ZNSaISt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEEC5IS0_EERKSaIT_E,comdat
	.align 2
	.weak	_ZNSaISt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEEC2IS0_EERKSaIT_E
	.type	_ZNSaISt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEEC2IS0_EERKSaIT_E, @function
_ZNSaISt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEEC2IS0_EERKSaIT_E:
.LFB5979:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4ChatSaIS2_ELNS_12_Lock_policyE2EEEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5979:
	.size	_ZNSaISt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEEC2IS0_EERKSaIT_E, .-_ZNSaISt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEEC2IS0_EERKSaIT_E
	.weak	_ZNSaISt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEEC1IS0_EERKSaIT_E
	.set	_ZNSaISt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEEC1IS0_EERKSaIT_E,_ZNSaISt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEEC2IS0_EERKSaIT_E
	.section	.text._ZNSaISt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEED2Ev,"axG",@progbits,_ZNSaISt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEED5Ev,comdat
	.align 2
	.weak	_ZNSaISt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEED2Ev
	.type	_ZNSaISt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEED2Ev, @function
_ZNSaISt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEED2Ev:
.LFB5982:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4ChatSaIS2_ELNS_12_Lock_policyE2EEED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5982:
	.size	_ZNSaISt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEED2Ev, .-_ZNSaISt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEED2Ev
	.weak	_ZNSaISt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEED1Ev
	.set	_ZNSaISt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEED1Ev,_ZNSaISt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEED2Ev
	.section	.text._ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS8_,"axG",@progbits,_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS8_,comdat
	.weak	_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS8_
	.type	_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS8_, @function
_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS8_:
.LFB5984:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERS6_m
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEC1ERS6_PS5_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5984:
	.size	_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS8_, .-_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS8_
	.section	.text._ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEED2Ev,"axG",@progbits,_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEED5Ev,comdat
	.align 2
	.weak	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEED2Ev
	.type	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEED2Ev, @function
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEED2Ev:
.LFB5986:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5986
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L824
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE10deallocateERS6_PS5_m
.L824:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5986:
	.section	.gcc_except_table
.LLSDA5986:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5986-.LLSDACSB5986
.LLSDACSB5986:
.LLSDACSE5986:
	.section	.text._ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEED2Ev,"axG",@progbits,_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEED5Ev,comdat
	.size	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEED2Ev, .-_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEED2Ev
	.weak	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEED1Ev
	.set	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEED1Ev,_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEED2Ev
	.section	.text._ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE3getEv,"axG",@progbits,_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE3getEv,comdat
	.align 2
	.weak	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE3getEv
	.type	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE3getEv, @function
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE3getEv:
.LFB5988:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	_ZSt12__to_addressISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEPT_S7_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5988:
	.size	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE3getEv, .-_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE3getEv
	.section	.text._ZNSaI4ChatEC2ERKS0_,"axG",@progbits,_ZNSaI4ChatEC5ERKS0_,comdat
	.align 2
	.weak	_ZNSaI4ChatEC2ERKS0_
	.type	_ZNSaI4ChatEC2ERKS0_, @function
_ZNSaI4ChatEC2ERKS0_:
.LFB5990:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorI4ChatEC2ERKS2_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5990:
	.size	_ZNSaI4ChatEC2ERKS0_, .-_ZNSaI4ChatEC2ERKS0_
	.weak	_ZNSaI4ChatEC1ERKS0_
	.set	_ZNSaI4ChatEC1ERKS0_,_ZNSaI4ChatEC2ERKS0_
	.section	.text._ZNSt14_Sp_ebo_helperILi0ESaI4ChatELb1EED2Ev,"axG",@progbits,_ZNSt14_Sp_ebo_helperILi0ESaI4ChatELb1EED5Ev,comdat
	.align 2
	.weak	_ZNSt14_Sp_ebo_helperILi0ESaI4ChatELb1EED2Ev
	.type	_ZNSt14_Sp_ebo_helperILi0ESaI4ChatELb1EED2Ev, @function
_ZNSt14_Sp_ebo_helperILi0ESaI4ChatELb1EED2Ev:
.LFB5995:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaI4ChatED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5995:
	.size	_ZNSt14_Sp_ebo_helperILi0ESaI4ChatELb1EED2Ev, .-_ZNSt14_Sp_ebo_helperILi0ESaI4ChatELb1EED2Ev
	.weak	_ZNSt14_Sp_ebo_helperILi0ESaI4ChatELb1EED1Ev
	.set	_ZNSt14_Sp_ebo_helperILi0ESaI4ChatELb1EED1Ev,_ZNSt14_Sp_ebo_helperILi0ESaI4ChatELb1EED2Ev
	.section	.text._ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplD2Ev,"axG",@progbits,_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplD5Ev,comdat
	.align 2
	.weak	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplD2Ev
	.type	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplD2Ev, @function
_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplD2Ev:
.LFB5997:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14_Sp_ebo_helperILi0ESaI4ChatELb1EED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5997:
	.size	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplD2Ev, .-_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplD2Ev
	.weak	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplD1Ev
	.set	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplD1Ev,_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplD2Ev
	.section	.text._ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC2IJS0_EEES1_DpOT_,"axG",@progbits,_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC5IJS0_EEES1_DpOT_,comdat
	.align 2
	.weak	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC2IJS0_EEES1_DpOT_
	.type	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC2IJS0_EEES1_DpOT_, @function
_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC2IJS0_EEES1_DpOT_:
.LFB6000:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6000
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEC2Ev
	leaq	16+_ZTVSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	leaq	16(%rax), %rbx
	movq	-48(%rbp), %rdx
	leaq	-25(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSaI4ChatEC1ERKS0_
	leaq	-25(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplC1ES1_
	leaq	-25(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaI4ChatED1Ev
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardI4ChatEOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE6_M_ptrEv
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB136:
	call	_ZNSt16allocator_traitsISaI4ChatEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_
.LEHE136:
	jmp	.L834
.L833:
	endbr64
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplD1Ev
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB137:
	call	_Unwind_Resume@PLT
.LEHE137:
.L834:
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L832
	call	__stack_chk_fail@PLT
.L832:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6000:
	.section	.gcc_except_table
.LLSDA6000:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6000-.LLSDACSB6000
.LLSDACSB6000:
	.uleb128 .LEHB136-.LFB6000
	.uleb128 .LEHE136-.LEHB136
	.uleb128 .L833-.LFB6000
	.uleb128 0
	.uleb128 .LEHB137-.LFB6000
	.uleb128 .LEHE137-.LEHB137
	.uleb128 0
	.uleb128 0
.LLSDACSE6000:
	.section	.text._ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC2IJS0_EEES1_DpOT_,"axG",@progbits,_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC5IJS0_EEES1_DpOT_,comdat
	.size	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC2IJS0_EEES1_DpOT_, .-_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC2IJS0_EEES1_DpOT_
	.weak	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC1IJS0_EEES1_DpOT_
	.set	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC1IJS0_EEES1_DpOT_,_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC2IJS0_EEES1_DpOT_
	.section	.text._ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEaSEDn,"axG",@progbits,_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEaSEDn,comdat
	.align 2
	.weak	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEaSEDn
	.type	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEaSEDn, @function
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEaSEDn:
.LFB6002:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6002:
	.size	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEaSEDn, .-_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEaSEDn
	.section	.text._ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE6_M_ptrEv,"axG",@progbits,_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE6_M_ptrEv,comdat
	.align 2
	.weak	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE6_M_ptrEv
	.type	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE6_M_ptrEv, @function
_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE6_M_ptrEv:
.LFB6003:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx16__aligned_bufferI4ChatE6_M_ptrEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6003:
	.size	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE6_M_ptrEv, .-_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE6_M_ptrEv
	.section	.text._ZNSt16allocator_traitsISaI4UserEE8max_sizeERKS1_,"axG",@progbits,_ZNSt16allocator_traitsISaI4UserEE8max_sizeERKS1_,comdat
	.weak	_ZNSt16allocator_traitsISaI4UserEE8max_sizeERKS1_
	.type	_ZNSt16allocator_traitsISaI4UserEE8max_sizeERKS1_, @function
_ZNSt16allocator_traitsISaI4UserEE8max_sizeERKS1_:
.LFB6004:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx13new_allocatorI4UserE8max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6004:
	.size	_ZNSt16allocator_traitsISaI4UserEE8max_sizeERKS1_, .-_ZNSt16allocator_traitsISaI4UserEE8max_sizeERKS1_
	.section	.text._ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPK4UserPS2_EET0_T_S7_S6_,"axG",@progbits,_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPK4UserPS2_EET0_T_S7_S6_,comdat
	.weak	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPK4UserPS2_EET0_T_S7_S6_
	.type	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPK4UserPS2_EET0_T_S7_S6_, @function
_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPK4UserPS2_EET0_T_S7_S6_:
.LFB6005:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6005
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L842
.L843:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofI4UserEPT_RS1_
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
.LEHB138:
	call	_ZSt10_ConstructI4UserJRKS0_EEvPT_DpOT0_
.LEHE138:
	addq	$120, -40(%rbp)
	addq	$120, -24(%rbp)
.L842:
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jne	.L843
	movq	-24(%rbp), %rax
	jmp	.L849
.L847:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB139:
	call	_ZSt8_DestroyIP4UserEvT_S2_
	call	__cxa_rethrow@PLT
.LEHE139:
.L848:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB140:
	call	_Unwind_Resume@PLT
.LEHE140:
.L849:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6005:
	.section	.gcc_except_table
	.align 4
.LLSDA6005:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT6005-.LLSDATTD6005
.LLSDATTD6005:
	.byte	0x1
	.uleb128 .LLSDACSE6005-.LLSDACSB6005
.LLSDACSB6005:
	.uleb128 .LEHB138-.LFB6005
	.uleb128 .LEHE138-.LEHB138
	.uleb128 .L847-.LFB6005
	.uleb128 0x1
	.uleb128 .LEHB139-.LFB6005
	.uleb128 .LEHE139-.LEHB139
	.uleb128 .L848-.LFB6005
	.uleb128 0
	.uleb128 .LEHB140-.LFB6005
	.uleb128 .LEHE140-.LEHB140
	.uleb128 0
	.uleb128 0
.LLSDACSE6005:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT6005:
	.section	.text._ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPK4UserPS2_EET0_T_S7_S6_,"axG",@progbits,_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPK4UserPS2_EET0_T_S7_S6_,comdat
	.size	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPK4UserPS2_EET0_T_S7_S6_, .-_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPK4UserPS2_EET0_T_S7_S6_
	.section	.text._ZNSaISt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEEC2IS0_EERKSaIT_E,"axG",@progbits,_ZNSaISt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEEC5IS0_EERKSaIT_E,comdat
	.align 2
	.weak	_ZNSaISt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEEC2IS0_EERKSaIT_E
	.type	_ZNSaISt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEEC2IS0_EERKSaIT_E, @function
_ZNSaISt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEEC2IS0_EERKSaIT_E:
.LFB6007:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4UserSaIS2_ELNS_12_Lock_policyE2EEEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6007:
	.size	_ZNSaISt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEEC2IS0_EERKSaIT_E, .-_ZNSaISt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEEC2IS0_EERKSaIT_E
	.weak	_ZNSaISt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEEC1IS0_EERKSaIT_E
	.set	_ZNSaISt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEEC1IS0_EERKSaIT_E,_ZNSaISt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEEC2IS0_EERKSaIT_E
	.section	.text._ZNSaISt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEED2Ev,"axG",@progbits,_ZNSaISt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEED5Ev,comdat
	.align 2
	.weak	_ZNSaISt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEED2Ev
	.type	_ZNSaISt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEED2Ev, @function
_ZNSaISt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEED2Ev:
.LFB6010:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4UserSaIS2_ELNS_12_Lock_policyE2EEED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6010:
	.size	_ZNSaISt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEED2Ev, .-_ZNSaISt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEED2Ev
	.weak	_ZNSaISt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEED1Ev
	.set	_ZNSaISt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEED1Ev,_ZNSaISt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEED2Ev
	.section	.text._ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS8_,"axG",@progbits,_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS8_,comdat
	.weak	_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS8_
	.type	_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS8_, @function
_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS8_:
.LFB6012:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERS6_m
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEC1ERS6_PS5_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6012:
	.size	_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS8_, .-_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS8_
	.section	.text._ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEED2Ev,"axG",@progbits,_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEED5Ev,comdat
	.align 2
	.weak	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEED2Ev
	.type	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEED2Ev, @function
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEED2Ev:
.LFB6014:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6014
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L856
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE10deallocateERS6_PS5_m
.L856:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6014:
	.section	.gcc_except_table
.LLSDA6014:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6014-.LLSDACSB6014
.LLSDACSB6014:
.LLSDACSE6014:
	.section	.text._ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEED2Ev,"axG",@progbits,_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEED5Ev,comdat
	.size	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEED2Ev, .-_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEED2Ev
	.weak	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEED1Ev
	.set	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEED1Ev,_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEED2Ev
	.section	.text._ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE3getEv,"axG",@progbits,_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE3getEv,comdat
	.align 2
	.weak	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE3getEv
	.type	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE3getEv, @function
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE3getEv:
.LFB6016:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	_ZSt12__to_addressISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEPT_S7_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6016:
	.size	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE3getEv, .-_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE3getEv
	.section	.text._ZNSaI4UserEC2ERKS0_,"axG",@progbits,_ZNSaI4UserEC5ERKS0_,comdat
	.align 2
	.weak	_ZNSaI4UserEC2ERKS0_
	.type	_ZNSaI4UserEC2ERKS0_, @function
_ZNSaI4UserEC2ERKS0_:
.LFB6018:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorI4UserEC2ERKS2_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6018:
	.size	_ZNSaI4UserEC2ERKS0_, .-_ZNSaI4UserEC2ERKS0_
	.weak	_ZNSaI4UserEC1ERKS0_
	.set	_ZNSaI4UserEC1ERKS0_,_ZNSaI4UserEC2ERKS0_
	.section	.text._ZNSt14_Sp_ebo_helperILi0ESaI4UserELb1EED2Ev,"axG",@progbits,_ZNSt14_Sp_ebo_helperILi0ESaI4UserELb1EED5Ev,comdat
	.align 2
	.weak	_ZNSt14_Sp_ebo_helperILi0ESaI4UserELb1EED2Ev
	.type	_ZNSt14_Sp_ebo_helperILi0ESaI4UserELb1EED2Ev, @function
_ZNSt14_Sp_ebo_helperILi0ESaI4UserELb1EED2Ev:
.LFB6023:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaI4UserED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6023:
	.size	_ZNSt14_Sp_ebo_helperILi0ESaI4UserELb1EED2Ev, .-_ZNSt14_Sp_ebo_helperILi0ESaI4UserELb1EED2Ev
	.weak	_ZNSt14_Sp_ebo_helperILi0ESaI4UserELb1EED1Ev
	.set	_ZNSt14_Sp_ebo_helperILi0ESaI4UserELb1EED1Ev,_ZNSt14_Sp_ebo_helperILi0ESaI4UserELb1EED2Ev
	.section	.text._ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplD2Ev,"axG",@progbits,_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplD5Ev,comdat
	.align 2
	.weak	_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplD2Ev
	.type	_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplD2Ev, @function
_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplD2Ev:
.LFB6025:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14_Sp_ebo_helperILi0ESaI4UserELb1EED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6025:
	.size	_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplD2Ev, .-_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplD2Ev
	.weak	_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplD1Ev
	.set	_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplD1Ev,_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplD2Ev
	.section	.text._ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC2IJRS0_EEES1_DpOT_,"axG",@progbits,_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC5IJRS0_EEES1_DpOT_,comdat
	.align 2
	.weak	_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC2IJRS0_EEES1_DpOT_
	.type	_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC2IJRS0_EEES1_DpOT_, @function
_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC2IJRS0_EEES1_DpOT_:
.LFB6027:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6027
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEC2Ev
	leaq	16+_ZTVSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	leaq	16(%rax), %rbx
	movq	-48(%rbp), %rdx
	leaq	-25(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSaI4UserEC1ERKS0_
	leaq	-25(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplC1ES1_
	leaq	-25(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaI4UserED1Ev
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIR4UserEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE6_M_ptrEv
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB141:
	call	_ZNSt16allocator_traitsISaI4UserEE9constructIS0_JRS0_EEEvRS1_PT_DpOT0_
.LEHE141:
	jmp	.L866
.L865:
	endbr64
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplD1Ev
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB142:
	call	_Unwind_Resume@PLT
.LEHE142:
.L866:
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L864
	call	__stack_chk_fail@PLT
.L864:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6027:
	.section	.gcc_except_table
.LLSDA6027:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6027-.LLSDACSB6027
.LLSDACSB6027:
	.uleb128 .LEHB141-.LFB6027
	.uleb128 .LEHE141-.LEHB141
	.uleb128 .L865-.LFB6027
	.uleb128 0
	.uleb128 .LEHB142-.LFB6027
	.uleb128 .LEHE142-.LEHB142
	.uleb128 0
	.uleb128 0
.LLSDACSE6027:
	.section	.text._ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC2IJRS0_EEES1_DpOT_,"axG",@progbits,_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC5IJRS0_EEES1_DpOT_,comdat
	.size	_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC2IJRS0_EEES1_DpOT_, .-_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC2IJRS0_EEES1_DpOT_
	.weak	_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC1IJRS0_EEES1_DpOT_
	.set	_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC1IJRS0_EEES1_DpOT_,_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC2IJRS0_EEES1_DpOT_
	.section	.text._ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEaSEDn,"axG",@progbits,_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEaSEDn,comdat
	.align 2
	.weak	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEaSEDn
	.type	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEaSEDn, @function
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEaSEDn:
.LFB6029:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6029:
	.size	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEaSEDn, .-_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEaSEDn
	.section	.text._ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE6_M_ptrEv,"axG",@progbits,_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE6_M_ptrEv,comdat
	.align 2
	.weak	_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE6_M_ptrEv
	.type	_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE6_M_ptrEv, @function
_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE6_M_ptrEv:
.LFB6030:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx16__aligned_bufferI4UserE6_M_ptrEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6030:
	.size	_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE6_M_ptrEv, .-_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE6_M_ptrEv
	.section	.text._ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES1_DpOT_,"axG",@progbits,_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC5IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES1_DpOT_,comdat
	.align 2
	.weak	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES1_DpOT_
	.type	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES1_DpOT_, @function
_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES1_DpOT_:
.LFB6032:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6032
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEC2Ev
	leaq	16+_ZTVSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	leaq	16(%rax), %rbx
	movq	-48(%rbp), %rdx
	leaq	-25(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSaI4ChatEC1ERKS0_
	leaq	-25(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplC1ES1_
	leaq	-25(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaI4ChatED1Ev
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS7_E4typeE
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE6_M_ptrEv
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB143:
	call	_ZNSt16allocator_traitsISaI4ChatEE9constructIS0_JRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRS1_PT_DpOT0_
.LEHE143:
	jmp	.L875
.L874:
	endbr64
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplD1Ev
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB144:
	call	_Unwind_Resume@PLT
.LEHE144:
.L875:
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L873
	call	__stack_chk_fail@PLT
.L873:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6032:
	.section	.gcc_except_table
.LLSDA6032:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6032-.LLSDACSB6032
.LLSDACSB6032:
	.uleb128 .LEHB143-.LFB6032
	.uleb128 .LEHE143-.LEHB143
	.uleb128 .L874-.LFB6032
	.uleb128 0
	.uleb128 .LEHB144-.LFB6032
	.uleb128 .LEHE144-.LEHB144
	.uleb128 0
	.uleb128 0
.LLSDACSE6032:
	.section	.text._ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES1_DpOT_,"axG",@progbits,_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC5IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES1_DpOT_,comdat
	.size	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES1_DpOT_, .-_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES1_DpOT_
	.weak	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC1IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES1_DpOT_
	.set	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC1IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES1_DpOT_,_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES1_DpOT_
	.section	.text._ZNSt16allocator_traitsISaISt10shared_ptrI4ChatEEE8max_sizeERKS3_,"axG",@progbits,_ZNSt16allocator_traitsISaISt10shared_ptrI4ChatEEE8max_sizeERKS3_,comdat
	.weak	_ZNSt16allocator_traitsISaISt10shared_ptrI4ChatEEE8max_sizeERKS3_
	.type	_ZNSt16allocator_traitsISaISt10shared_ptrI4ChatEEE8max_sizeERKS3_, @function
_ZNSt16allocator_traitsISaISt10shared_ptrI4ChatEEE8max_sizeERKS3_:
.LFB6034:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEE8max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6034:
	.size	_ZNSt16allocator_traitsISaISt10shared_ptrI4ChatEEE8max_sizeERKS3_, .-_ZNSt16allocator_traitsISaISt10shared_ptrI4ChatEEE8max_sizeERKS3_
	.section	.text._ZSt12__niter_baseIPSt10shared_ptrI4ChatEET_S4_,"axG",@progbits,_ZSt12__niter_baseIPSt10shared_ptrI4ChatEET_S4_,comdat
	.weak	_ZSt12__niter_baseIPSt10shared_ptrI4ChatEET_S4_
	.type	_ZSt12__niter_baseIPSt10shared_ptrI4ChatEET_S4_, @function
_ZSt12__niter_baseIPSt10shared_ptrI4ChatEET_S4_:
.LFB6035:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6035:
	.size	_ZSt12__niter_baseIPSt10shared_ptrI4ChatEET_S4_, .-_ZSt12__niter_baseIPSt10shared_ptrI4ChatEET_S4_
	.section	.text._ZSt14__relocate_a_1IPSt10shared_ptrI4ChatES3_SaIS2_EET0_T_S6_S5_RT1_,"axG",@progbits,_ZSt14__relocate_a_1IPSt10shared_ptrI4ChatES3_SaIS2_EET0_T_S6_S5_RT1_,comdat
	.weak	_ZSt14__relocate_a_1IPSt10shared_ptrI4ChatES3_SaIS2_EET0_T_S6_S5_RT1_
	.type	_ZSt14__relocate_a_1IPSt10shared_ptrI4ChatES3_SaIS2_EET0_T_S6_S5_RT1_, @function
_ZSt14__relocate_a_1IPSt10shared_ptrI4ChatES3_SaIS2_EET0_T_S6_S5_RT1_:
.LFB6036:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L881
.L882:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofISt10shared_ptrI4ChatEEPT_RS3_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofISt10shared_ptrI4ChatEEPT_RS3_
	movq	%rax, %rcx
	movq	-64(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	_ZSt19__relocate_object_aISt10shared_ptrI4ChatES2_SaIS2_EEvPT_PT0_RT1_
	addq	$16, -40(%rbp)
	addq	$16, -24(%rbp)
.L881:
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jne	.L882
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6036:
	.size	_ZSt14__relocate_a_1IPSt10shared_ptrI4ChatES3_SaIS2_EET0_T_S6_S5_RT1_, .-_ZSt14__relocate_a_1IPSt10shared_ptrI4ChatES3_SaIS2_EET0_T_S6_S5_RT1_
	.section	.text._ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE,"axG",@progbits,_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE,comdat
	.weak	_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	.type	_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, @function
_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE:
.LFB6056:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv
	movq	(%rax), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6056:
	.size	_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, .-_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	.section	.text._ZSt12__niter_baseIPiET_S1_,"axG",@progbits,_ZSt12__niter_baseIPiET_S1_,comdat
	.weak	_ZSt12__niter_baseIPiET_S1_
	.type	_ZSt12__niter_baseIPiET_S1_, @function
_ZSt12__niter_baseIPiET_S1_:
.LFB6057:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6057:
	.size	_ZSt12__niter_baseIPiET_S1_, .-_ZSt12__niter_baseIPiET_S1_
	.section	.text._ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_,"axG",@progbits,_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_,comdat
	.weak	_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_
	.type	_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_, @function
_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_:
.LFB6058:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6058:
	.size	_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_, .-_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_
	.section	.text._ZSt12__niter_wrapIPiET_RKS1_S1_,"axG",@progbits,_ZSt12__niter_wrapIPiET_RKS1_S1_,comdat
	.weak	_ZSt12__niter_wrapIPiET_RKS1_S1_
	.type	_ZSt12__niter_wrapIPiET_RKS1_S1_, @function
_ZSt12__niter_wrapIPiET_RKS1_S1_:
.LFB6059:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6059:
	.size	_ZSt12__niter_wrapIPiET_RKS1_S1_, .-_ZSt12__niter_wrapIPiET_RKS1_S1_
	.section	.text._ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4ChatSaIS2_ELNS_12_Lock_policyE2EEEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4ChatSaIS2_ELNS_12_Lock_policyE2EEEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4ChatSaIS2_ELNS_12_Lock_policyE2EEEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4ChatSaIS2_ELNS_12_Lock_policyE2EEEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4ChatSaIS2_ELNS_12_Lock_policyE2EEEC2Ev:
.LFB6061:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6061:
	.size	_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4ChatSaIS2_ELNS_12_Lock_policyE2EEEC2Ev, .-_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4ChatSaIS2_ELNS_12_Lock_policyE2EEEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4ChatSaIS2_ELNS_12_Lock_policyE2EEEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4ChatSaIS2_ELNS_12_Lock_policyE2EEEC1Ev,_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4ChatSaIS2_ELNS_12_Lock_policyE2EEEC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4ChatSaIS2_ELNS_12_Lock_policyE2EEED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4ChatSaIS2_ELNS_12_Lock_policyE2EEED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4ChatSaIS2_ELNS_12_Lock_policyE2EEED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4ChatSaIS2_ELNS_12_Lock_policyE2EEED2Ev, @function
_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4ChatSaIS2_ELNS_12_Lock_policyE2EEED2Ev:
.LFB6064:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6064:
	.size	_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4ChatSaIS2_ELNS_12_Lock_policyE2EEED2Ev, .-_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4ChatSaIS2_ELNS_12_Lock_policyE2EEED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4ChatSaIS2_ELNS_12_Lock_policyE2EEED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4ChatSaIS2_ELNS_12_Lock_policyE2EEED1Ev,_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4ChatSaIS2_ELNS_12_Lock_policyE2EEED2Ev
	.section	.text._ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERS6_m,"axG",@progbits,_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERS6_m,comdat
	.weak	_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERS6_m
	.type	_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERS6_m, @function
_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERS6_m:
.LFB6066:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4ChatSaIS2_ELNS_12_Lock_policyE2EEE8allocateEmPKv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6066:
	.size	_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERS6_m, .-_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERS6_m
	.section	.text._ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEC2ERS6_PS5_,"axG",@progbits,_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEC5ERS6_PS5_,comdat
	.align 2
	.weak	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEC2ERS6_PS5_
	.type	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEC2ERS6_PS5_, @function
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEC2ERS6_PS5_:
.LFB6068:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEPT_RS7_
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6068:
	.size	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEC2ERS6_PS5_, .-_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEC2ERS6_PS5_
	.weak	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEC1ERS6_PS5_
	.set	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEC1ERS6_PS5_,_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEC2ERS6_PS5_
	.section	.text._ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE10deallocateERS6_PS5_m,"axG",@progbits,_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE10deallocateERS6_PS5_m,comdat
	.weak	_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE10deallocateERS6_PS5_m
	.type	_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE10deallocateERS6_PS5_m, @function
_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE10deallocateERS6_PS5_m:
.LFB6070:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4ChatSaIS2_ELNS_12_Lock_policyE2EEE10deallocateEPS5_m
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6070:
	.size	_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE10deallocateERS6_PS5_m, .-_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE10deallocateERS6_PS5_m
	.section	.text._ZSt12__to_addressISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEPT_S7_,"axG",@progbits,_ZSt12__to_addressISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEPT_S7_,comdat
	.weak	_ZSt12__to_addressISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEPT_S7_
	.type	_ZSt12__to_addressISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEPT_S7_, @function
_ZSt12__to_addressISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEPT_S7_:
.LFB6071:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6071:
	.size	_ZSt12__to_addressISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEPT_S7_, .-_ZSt12__to_addressISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEPT_S7_
	.section	.text._ZN9__gnu_cxx13new_allocatorI4ChatEC2ERKS2_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI4ChatEC5ERKS2_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI4ChatEC2ERKS2_
	.type	_ZN9__gnu_cxx13new_allocatorI4ChatEC2ERKS2_, @function
_ZN9__gnu_cxx13new_allocatorI4ChatEC2ERKS2_:
.LFB6073:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6073:
	.size	_ZN9__gnu_cxx13new_allocatorI4ChatEC2ERKS2_, .-_ZN9__gnu_cxx13new_allocatorI4ChatEC2ERKS2_
	.weak	_ZN9__gnu_cxx13new_allocatorI4ChatEC1ERKS2_
	.set	_ZN9__gnu_cxx13new_allocatorI4ChatEC1ERKS2_,_ZN9__gnu_cxx13new_allocatorI4ChatEC2ERKS2_
	.section	.text._ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEC2Ev,"axG",@progbits,_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEC5Ev,comdat
	.align 2
	.weak	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEC2Ev
	.type	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEC2Ev, @function
_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEC2Ev:
.LFB6076:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	16+_ZTVSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movl	$1, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 12(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6076:
	.size	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEC2Ev, .-_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEC2Ev
	.weak	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEC1Ev
	.set	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEC1Ev,_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEC2Ev
	.section	.text._ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplC2ES1_,"axG",@progbits,_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplC5ES1_,comdat
	.align 2
	.weak	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplC2ES1_
	.type	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplC2ES1_, @function
_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplC2ES1_:
.LFB6079:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt14_Sp_ebo_helperILi0ESaI4ChatELb1EEC2ERKS1_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6079:
	.size	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplC2ES1_, .-_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplC2ES1_
	.weak	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplC1ES1_
	.set	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplC1ES1_,_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplC2ES1_
	.section	.text._ZNSt16allocator_traitsISaI4ChatEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_,"axG",@progbits,_ZNSt16allocator_traitsISaI4ChatEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_,comdat
	.weak	_ZNSt16allocator_traitsISaI4ChatEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_
	.type	_ZNSt16allocator_traitsISaI4ChatEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_, @function
_ZNSt16allocator_traitsISaI4ChatEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_:
.LFB6081:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardI4ChatEOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorI4ChatE9constructIS1_JS1_EEEvPT_DpOT0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6081:
	.size	_ZNSt16allocator_traitsISaI4ChatEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_, .-_ZNSt16allocator_traitsISaI4ChatEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_
	.section	.text._ZN9__gnu_cxx16__aligned_bufferI4ChatE6_M_ptrEv,"axG",@progbits,_ZN9__gnu_cxx16__aligned_bufferI4ChatE6_M_ptrEv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx16__aligned_bufferI4ChatE6_M_ptrEv
	.type	_ZN9__gnu_cxx16__aligned_bufferI4ChatE6_M_ptrEv, @function
_ZN9__gnu_cxx16__aligned_bufferI4ChatE6_M_ptrEv:
.LFB6082:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx16__aligned_bufferI4ChatE7_M_addrEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6082:
	.size	_ZN9__gnu_cxx16__aligned_bufferI4ChatE6_M_ptrEv, .-_ZN9__gnu_cxx16__aligned_bufferI4ChatE6_M_ptrEv
	.section	.text._ZNK9__gnu_cxx13new_allocatorI4UserE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorI4UserE8max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorI4UserE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorI4UserE8max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorI4UserE8max_sizeEv:
.LFB6083:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx13new_allocatorI4UserE11_M_max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6083:
	.size	_ZNK9__gnu_cxx13new_allocatorI4UserE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorI4UserE8max_sizeEv
	.section	.text._ZSt10_ConstructI4UserJRKS0_EEvPT_DpOT0_,"axG",@progbits,_ZSt10_ConstructI4UserJRKS0_EEvPT_DpOT0_,comdat
	.weak	_ZSt10_ConstructI4UserJRKS0_EEvPT_DpOT0_
	.type	_ZSt10_ConstructI4UserJRKS0_EEvPT_DpOT0_, @function
_ZSt10_ConstructI4UserJRKS0_EEvPT_DpOT0_:
.LFB6084:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6084
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRK4UserEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %r13
	movq	-40(%rbp), %rbx
	movq	%rbx, %rsi
	movl	$120, %edi
	call	_ZnwmPv
	movq	%rax, %r12
	movq	%r13, %rsi
	movq	%r12, %rdi
.LEHB145:
	call	_ZN4UserC1ERKS_
.LEHE145:
	jmp	.L911
.L910:
	endbr64
	movq	%rax, %r13
	movq	%rbx, %rsi
	movq	%r12, %rdi
	call	_ZdlPvS_
	movq	%r13, %rax
	movq	%rax, %rdi
.LEHB146:
	call	_Unwind_Resume@PLT
.LEHE146:
.L911:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6084:
	.section	.gcc_except_table
.LLSDA6084:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6084-.LLSDACSB6084
.LLSDACSB6084:
	.uleb128 .LEHB145-.LFB6084
	.uleb128 .LEHE145-.LEHB145
	.uleb128 .L910-.LFB6084
	.uleb128 0
	.uleb128 .LEHB146-.LFB6084
	.uleb128 .LEHE146-.LEHB146
	.uleb128 0
	.uleb128 0
.LLSDACSE6084:
	.section	.text._ZSt10_ConstructI4UserJRKS0_EEvPT_DpOT0_,"axG",@progbits,_ZSt10_ConstructI4UserJRKS0_EEvPT_DpOT0_,comdat
	.size	_ZSt10_ConstructI4UserJRKS0_EEvPT_DpOT0_, .-_ZSt10_ConstructI4UserJRKS0_EEvPT_DpOT0_
	.section	.text._ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4UserSaIS2_ELNS_12_Lock_policyE2EEEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4UserSaIS2_ELNS_12_Lock_policyE2EEEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4UserSaIS2_ELNS_12_Lock_policyE2EEEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4UserSaIS2_ELNS_12_Lock_policyE2EEEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4UserSaIS2_ELNS_12_Lock_policyE2EEEC2Ev:
.LFB6086:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6086:
	.size	_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4UserSaIS2_ELNS_12_Lock_policyE2EEEC2Ev, .-_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4UserSaIS2_ELNS_12_Lock_policyE2EEEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4UserSaIS2_ELNS_12_Lock_policyE2EEEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4UserSaIS2_ELNS_12_Lock_policyE2EEEC1Ev,_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4UserSaIS2_ELNS_12_Lock_policyE2EEEC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4UserSaIS2_ELNS_12_Lock_policyE2EEED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4UserSaIS2_ELNS_12_Lock_policyE2EEED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4UserSaIS2_ELNS_12_Lock_policyE2EEED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4UserSaIS2_ELNS_12_Lock_policyE2EEED2Ev, @function
_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4UserSaIS2_ELNS_12_Lock_policyE2EEED2Ev:
.LFB6089:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6089:
	.size	_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4UserSaIS2_ELNS_12_Lock_policyE2EEED2Ev, .-_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4UserSaIS2_ELNS_12_Lock_policyE2EEED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4UserSaIS2_ELNS_12_Lock_policyE2EEED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4UserSaIS2_ELNS_12_Lock_policyE2EEED1Ev,_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4UserSaIS2_ELNS_12_Lock_policyE2EEED2Ev
	.section	.text._ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERS6_m,"axG",@progbits,_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERS6_m,comdat
	.weak	_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERS6_m
	.type	_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERS6_m, @function
_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERS6_m:
.LFB6091:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4UserSaIS2_ELNS_12_Lock_policyE2EEE8allocateEmPKv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6091:
	.size	_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERS6_m, .-_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERS6_m
	.section	.text._ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEC2ERS6_PS5_,"axG",@progbits,_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEC5ERS6_PS5_,comdat
	.align 2
	.weak	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEC2ERS6_PS5_
	.type	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEC2ERS6_PS5_, @function
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEC2ERS6_PS5_:
.LFB6093:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEPT_RS7_
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6093:
	.size	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEC2ERS6_PS5_, .-_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEC2ERS6_PS5_
	.weak	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEC1ERS6_PS5_
	.set	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEC1ERS6_PS5_,_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEC2ERS6_PS5_
	.section	.text._ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE10deallocateERS6_PS5_m,"axG",@progbits,_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE10deallocateERS6_PS5_m,comdat
	.weak	_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE10deallocateERS6_PS5_m
	.type	_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE10deallocateERS6_PS5_m, @function
_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE10deallocateERS6_PS5_m:
.LFB6095:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4UserSaIS2_ELNS_12_Lock_policyE2EEE10deallocateEPS5_m
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6095:
	.size	_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE10deallocateERS6_PS5_m, .-_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEE10deallocateERS6_PS5_m
	.section	.text._ZSt12__to_addressISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEPT_S7_,"axG",@progbits,_ZSt12__to_addressISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEPT_S7_,comdat
	.weak	_ZSt12__to_addressISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEPT_S7_
	.type	_ZSt12__to_addressISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEPT_S7_, @function
_ZSt12__to_addressISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEPT_S7_:
.LFB6096:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6096:
	.size	_ZSt12__to_addressISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEPT_S7_, .-_ZSt12__to_addressISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEPT_S7_
	.section	.text._ZN9__gnu_cxx13new_allocatorI4UserEC2ERKS2_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI4UserEC5ERKS2_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI4UserEC2ERKS2_
	.type	_ZN9__gnu_cxx13new_allocatorI4UserEC2ERKS2_, @function
_ZN9__gnu_cxx13new_allocatorI4UserEC2ERKS2_:
.LFB6098:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6098:
	.size	_ZN9__gnu_cxx13new_allocatorI4UserEC2ERKS2_, .-_ZN9__gnu_cxx13new_allocatorI4UserEC2ERKS2_
	.weak	_ZN9__gnu_cxx13new_allocatorI4UserEC1ERKS2_
	.set	_ZN9__gnu_cxx13new_allocatorI4UserEC1ERKS2_,_ZN9__gnu_cxx13new_allocatorI4UserEC2ERKS2_
	.section	.text._ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplC2ES1_,"axG",@progbits,_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplC5ES1_,comdat
	.align 2
	.weak	_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplC2ES1_
	.type	_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplC2ES1_, @function
_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplC2ES1_:
.LFB6101:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt14_Sp_ebo_helperILi0ESaI4UserELb1EEC2ERKS1_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6101:
	.size	_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplC2ES1_, .-_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplC2ES1_
	.weak	_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplC1ES1_
	.set	_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplC1ES1_,_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplC2ES1_
	.section	.text._ZNSt16allocator_traitsISaI4UserEE9constructIS0_JRS0_EEEvRS1_PT_DpOT0_,"axG",@progbits,_ZNSt16allocator_traitsISaI4UserEE9constructIS0_JRS0_EEEvRS1_PT_DpOT0_,comdat
	.weak	_ZNSt16allocator_traitsISaI4UserEE9constructIS0_JRS0_EEEvRS1_PT_DpOT0_
	.type	_ZNSt16allocator_traitsISaI4UserEE9constructIS0_JRS0_EEEvRS1_PT_DpOT0_, @function
_ZNSt16allocator_traitsISaI4UserEE9constructIS0_JRS0_EEEvRS1_PT_DpOT0_:
.LFB6103:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIR4UserEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorI4UserE9constructIS1_JRS1_EEEvPT_DpOT0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6103:
	.size	_ZNSt16allocator_traitsISaI4UserEE9constructIS0_JRS0_EEEvRS1_PT_DpOT0_, .-_ZNSt16allocator_traitsISaI4UserEE9constructIS0_JRS0_EEEvRS1_PT_DpOT0_
	.section	.text._ZN9__gnu_cxx16__aligned_bufferI4UserE6_M_ptrEv,"axG",@progbits,_ZN9__gnu_cxx16__aligned_bufferI4UserE6_M_ptrEv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx16__aligned_bufferI4UserE6_M_ptrEv
	.type	_ZN9__gnu_cxx16__aligned_bufferI4UserE6_M_ptrEv, @function
_ZN9__gnu_cxx16__aligned_bufferI4UserE6_M_ptrEv:
.LFB6104:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx16__aligned_bufferI4UserE7_M_addrEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6104:
	.size	_ZN9__gnu_cxx16__aligned_bufferI4UserE6_M_ptrEv, .-_ZN9__gnu_cxx16__aligned_bufferI4UserE6_M_ptrEv
	.section	.text._ZNSt16allocator_traitsISaI4ChatEE9constructIS0_JRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRS1_PT_DpOT0_,"axG",@progbits,_ZNSt16allocator_traitsISaI4ChatEE9constructIS0_JRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRS1_PT_DpOT0_,comdat
	.weak	_ZNSt16allocator_traitsISaI4ChatEE9constructIS0_JRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRS1_PT_DpOT0_
	.type	_ZNSt16allocator_traitsISaI4ChatEE9constructIS0_JRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRS1_PT_DpOT0_, @function
_ZNSt16allocator_traitsISaI4ChatEE9constructIS0_JRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRS1_PT_DpOT0_:
.LFB6105:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS7_E4typeE
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorI4ChatE9constructIS1_JRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPT_DpOT0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6105:
	.size	_ZNSt16allocator_traitsISaI4ChatEE9constructIS0_JRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRS1_PT_DpOT0_, .-_ZNSt16allocator_traitsISaI4ChatEE9constructIS0_JRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRS1_PT_DpOT0_
	.section	.text._ZNK9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEE8max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEE8max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEE8max_sizeEv:
.LFB6106:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEE11_M_max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6106:
	.size	_ZNK9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEE8max_sizeEv
	.section	.text._ZSt19__relocate_object_aISt10shared_ptrI4ChatES2_SaIS2_EEvPT_PT0_RT1_,"axG",@progbits,_ZSt19__relocate_object_aISt10shared_ptrI4ChatES2_SaIS2_EEvPT_PT0_RT1_,comdat
	.weak	_ZSt19__relocate_object_aISt10shared_ptrI4ChatES2_SaIS2_EEvPT_PT0_RT1_
	.type	_ZSt19__relocate_object_aISt10shared_ptrI4ChatES2_SaIS2_EEvPT_PT0_RT1_, @function
_ZSt19__relocate_object_aISt10shared_ptrI4ChatES2_SaIS2_EEvPT_PT0_RT1_:
.LFB6107:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRSt10shared_ptrI4ChatEEONSt16remove_referenceIT_E4typeEOS5_
	movq	%rax, %rdx
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaISt10shared_ptrI4ChatEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofISt10shared_ptrI4ChatEEPT_RS3_
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaISt10shared_ptrI4ChatEEE7destroyIS2_EEvRS3_PT_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6107:
	.size	_ZSt19__relocate_object_aISt10shared_ptrI4ChatES2_SaIS2_EEvPT_PT0_RT1_, .-_ZSt19__relocate_object_aISt10shared_ptrI4ChatES2_SaIS2_EEvPT_PT0_RT1_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv:
.LFB6112:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6112:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv
	.section	.text._ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_,comdat
	.weak	_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_
	.type	_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_, @function
_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_:
.LFB6113:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6113:
	.size	_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_, .-_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_
	.section	.text._ZNK9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4ChatSaIS2_ELNS_12_Lock_policyE2EEE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4ChatSaIS2_ELNS_12_Lock_policyE2EEE11_M_max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4ChatSaIS2_ELNS_12_Lock_policyE2EEE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4ChatSaIS2_ELNS_12_Lock_policyE2EEE11_M_max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4ChatSaIS2_ELNS_12_Lock_policyE2EEE11_M_max_sizeEv:
.LFB6115:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movabsq	$104811045873349725, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6115:
	.size	_ZNK9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4ChatSaIS2_ELNS_12_Lock_policyE2EEE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4ChatSaIS2_ELNS_12_Lock_policyE2EEE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4ChatSaIS2_ELNS_12_Lock_policyE2EEE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4ChatSaIS2_ELNS_12_Lock_policyE2EEE8allocateEmPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4ChatSaIS2_ELNS_12_Lock_policyE2EEE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4ChatSaIS2_ELNS_12_Lock_policyE2EEE8allocateEmPKv, @function
_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4ChatSaIS2_ELNS_12_Lock_policyE2EEE8allocateEmPKv:
.LFB6114:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4ChatSaIS2_ELNS_12_Lock_policyE2EEE11_M_max_sizeEv
	cmpq	%rax, -16(%rbp)
	seta	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	je	.L936
	movabsq	$209622091746699450, %rax
	cmpq	%rax, -16(%rbp)
	jbe	.L937
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L937:
	call	_ZSt17__throw_bad_allocv@PLT
.L936:
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	_Znwm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6114:
	.size	_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4ChatSaIS2_ELNS_12_Lock_policyE2EEE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4ChatSaIS2_ELNS_12_Lock_policyE2EEE8allocateEmPKv
	.section	.text._ZSt11__addressofISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEPT_RS7_,"axG",@progbits,_ZSt11__addressofISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEPT_RS7_,comdat
	.weak	_ZSt11__addressofISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEPT_RS7_
	.type	_ZSt11__addressofISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEPT_RS7_, @function
_ZSt11__addressofISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEPT_RS7_:
.LFB6116:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6116:
	.size	_ZSt11__addressofISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEPT_RS7_, .-_ZSt11__addressofISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEPT_RS7_
	.section	.text._ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4ChatSaIS2_ELNS_12_Lock_policyE2EEE10deallocateEPS5_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4ChatSaIS2_ELNS_12_Lock_policyE2EEE10deallocateEPS5_m,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4ChatSaIS2_ELNS_12_Lock_policyE2EEE10deallocateEPS5_m
	.type	_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4ChatSaIS2_ELNS_12_Lock_policyE2EEE10deallocateEPS5_m, @function
_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4ChatSaIS2_ELNS_12_Lock_policyE2EEE10deallocateEPS5_m:
.LFB6117:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6117:
	.size	_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4ChatSaIS2_ELNS_12_Lock_policyE2EEE10deallocateEPS5_m, .-_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4ChatSaIS2_ELNS_12_Lock_policyE2EEE10deallocateEPS5_m
	.section	.text._ZNSt14_Sp_ebo_helperILi0ESaI4ChatELb1EEC2ERKS1_,"axG",@progbits,_ZNSt14_Sp_ebo_helperILi0ESaI4ChatELb1EEC5ERKS1_,comdat
	.align 2
	.weak	_ZNSt14_Sp_ebo_helperILi0ESaI4ChatELb1EEC2ERKS1_
	.type	_ZNSt14_Sp_ebo_helperILi0ESaI4ChatELb1EEC2ERKS1_, @function
_ZNSt14_Sp_ebo_helperILi0ESaI4ChatELb1EEC2ERKS1_:
.LFB6119:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSaI4ChatEC2ERKS0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6119:
	.size	_ZNSt14_Sp_ebo_helperILi0ESaI4ChatELb1EEC2ERKS1_, .-_ZNSt14_Sp_ebo_helperILi0ESaI4ChatELb1EEC2ERKS1_
	.weak	_ZNSt14_Sp_ebo_helperILi0ESaI4ChatELb1EEC1ERKS1_
	.set	_ZNSt14_Sp_ebo_helperILi0ESaI4ChatELb1EEC1ERKS1_,_ZNSt14_Sp_ebo_helperILi0ESaI4ChatELb1EEC2ERKS1_
	.section	.text._ZN4ChatC2ERKS_,"axG",@progbits,_ZN4ChatC5ERKS_,comdat
	.align 2
	.weak	_ZN4ChatC2ERKS_
	.type	_ZN4ChatC2ERKS_, @function
_ZN4ChatC2ERKS_:
.LFB6123:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6123
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB147:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_@PLT
.LEHE147:
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, 32(%rax)
	movq	-32(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-24(%rbp), %rax
	addq	$48, %rax
	movq	-32(%rbp), %rdx
	addq	$48, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB148:
	call	_ZNSt6vectorI7MessageSaIS0_EEC1ERKS2_
.LEHE148:
	jmp	.L947
.L946:
	endbr64
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB149:
	call	_Unwind_Resume@PLT
.LEHE149:
.L947:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6123:
	.section	.gcc_except_table
.LLSDA6123:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6123-.LLSDACSB6123
.LLSDACSB6123:
	.uleb128 .LEHB147-.LFB6123
	.uleb128 .LEHE147-.LEHB147
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB148-.LFB6123
	.uleb128 .LEHE148-.LEHB148
	.uleb128 .L946-.LFB6123
	.uleb128 0
	.uleb128 .LEHB149-.LFB6123
	.uleb128 .LEHE149-.LEHB149
	.uleb128 0
	.uleb128 0
.LLSDACSE6123:
	.section	.text._ZN4ChatC2ERKS_,"axG",@progbits,_ZN4ChatC5ERKS_,comdat
	.size	_ZN4ChatC2ERKS_, .-_ZN4ChatC2ERKS_
	.weak	_ZN4ChatC1ERKS_
	.set	_ZN4ChatC1ERKS_,_ZN4ChatC2ERKS_
	.section	.text._ZN9__gnu_cxx13new_allocatorI4ChatE9constructIS1_JS1_EEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI4ChatE9constructIS1_JS1_EEEvPT_DpOT0_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI4ChatE9constructIS1_JS1_EEEvPT_DpOT0_
	.type	_ZN9__gnu_cxx13new_allocatorI4ChatE9constructIS1_JS1_EEEvPT_DpOT0_, @function
_ZN9__gnu_cxx13new_allocatorI4ChatE9constructIS1_JS1_EEEvPT_DpOT0_:
.LFB6121:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6121
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardI4ChatEOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %r13
	movq	-48(%rbp), %rbx
	movq	%rbx, %rsi
	movl	$72, %edi
	call	_ZnwmPv
	movq	%rax, %r12
	movq	%r13, %rsi
	movq	%r12, %rdi
.LEHB150:
	call	_ZN4ChatC1ERKS_
.LEHE150:
	jmp	.L951
.L950:
	endbr64
	movq	%rax, %r13
	movq	%rbx, %rsi
	movq	%r12, %rdi
	call	_ZdlPvS_
	movq	%r13, %rax
	movq	%rax, %rdi
.LEHB151:
	call	_Unwind_Resume@PLT
.LEHE151:
.L951:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6121:
	.section	.gcc_except_table
.LLSDA6121:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6121-.LLSDACSB6121
.LLSDACSB6121:
	.uleb128 .LEHB150-.LFB6121
	.uleb128 .LEHE150-.LEHB150
	.uleb128 .L950-.LFB6121
	.uleb128 0
	.uleb128 .LEHB151-.LFB6121
	.uleb128 .LEHE151-.LEHB151
	.uleb128 0
	.uleb128 0
.LLSDACSE6121:
	.section	.text._ZN9__gnu_cxx13new_allocatorI4ChatE9constructIS1_JS1_EEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI4ChatE9constructIS1_JS1_EEEvPT_DpOT0_,comdat
	.size	_ZN9__gnu_cxx13new_allocatorI4ChatE9constructIS1_JS1_EEEvPT_DpOT0_, .-_ZN9__gnu_cxx13new_allocatorI4ChatE9constructIS1_JS1_EEEvPT_DpOT0_
	.section	.text._ZN9__gnu_cxx16__aligned_bufferI4ChatE7_M_addrEv,"axG",@progbits,_ZN9__gnu_cxx16__aligned_bufferI4ChatE7_M_addrEv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx16__aligned_bufferI4ChatE7_M_addrEv
	.type	_ZN9__gnu_cxx16__aligned_bufferI4ChatE7_M_addrEv, @function
_ZN9__gnu_cxx16__aligned_bufferI4ChatE7_M_addrEv:
.LFB6125:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6125:
	.size	_ZN9__gnu_cxx16__aligned_bufferI4ChatE7_M_addrEv, .-_ZN9__gnu_cxx16__aligned_bufferI4ChatE7_M_addrEv
	.section	.text._ZNK9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4UserSaIS2_ELNS_12_Lock_policyE2EEE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4UserSaIS2_ELNS_12_Lock_policyE2EEE11_M_max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4UserSaIS2_ELNS_12_Lock_policyE2EEE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4UserSaIS2_ELNS_12_Lock_policyE2EEE11_M_max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4UserSaIS2_ELNS_12_Lock_policyE2EEE11_M_max_sizeEv:
.LFB6127:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movabsq	$67818912035696880, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6127:
	.size	_ZNK9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4UserSaIS2_ELNS_12_Lock_policyE2EEE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4UserSaIS2_ELNS_12_Lock_policyE2EEE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4UserSaIS2_ELNS_12_Lock_policyE2EEE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4UserSaIS2_ELNS_12_Lock_policyE2EEE8allocateEmPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4UserSaIS2_ELNS_12_Lock_policyE2EEE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4UserSaIS2_ELNS_12_Lock_policyE2EEE8allocateEmPKv, @function
_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4UserSaIS2_ELNS_12_Lock_policyE2EEE8allocateEmPKv:
.LFB6126:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4UserSaIS2_ELNS_12_Lock_policyE2EEE11_M_max_sizeEv
	cmpq	%rax, -16(%rbp)
	seta	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	je	.L957
	movabsq	$135637824071393761, %rax
	cmpq	%rax, -16(%rbp)
	jbe	.L958
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L958:
	call	_ZSt17__throw_bad_allocv@PLT
.L957:
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$4, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	_Znwm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6126:
	.size	_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4UserSaIS2_ELNS_12_Lock_policyE2EEE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4UserSaIS2_ELNS_12_Lock_policyE2EEE8allocateEmPKv
	.section	.text._ZSt11__addressofISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEPT_RS7_,"axG",@progbits,_ZSt11__addressofISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEPT_RS7_,comdat
	.weak	_ZSt11__addressofISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEPT_RS7_
	.type	_ZSt11__addressofISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEPT_RS7_, @function
_ZSt11__addressofISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEPT_RS7_:
.LFB6128:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6128:
	.size	_ZSt11__addressofISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEPT_RS7_, .-_ZSt11__addressofISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEPT_RS7_
	.section	.text._ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4UserSaIS2_ELNS_12_Lock_policyE2EEE10deallocateEPS5_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4UserSaIS2_ELNS_12_Lock_policyE2EEE10deallocateEPS5_m,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4UserSaIS2_ELNS_12_Lock_policyE2EEE10deallocateEPS5_m
	.type	_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4UserSaIS2_ELNS_12_Lock_policyE2EEE10deallocateEPS5_m, @function
_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4UserSaIS2_ELNS_12_Lock_policyE2EEE10deallocateEPS5_m:
.LFB6129:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	salq	$4, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6129:
	.size	_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4UserSaIS2_ELNS_12_Lock_policyE2EEE10deallocateEPS5_m, .-_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceI4UserSaIS2_ELNS_12_Lock_policyE2EEE10deallocateEPS5_m
	.section	.text._ZNSt14_Sp_ebo_helperILi0ESaI4UserELb1EEC2ERKS1_,"axG",@progbits,_ZNSt14_Sp_ebo_helperILi0ESaI4UserELb1EEC5ERKS1_,comdat
	.align 2
	.weak	_ZNSt14_Sp_ebo_helperILi0ESaI4UserELb1EEC2ERKS1_
	.type	_ZNSt14_Sp_ebo_helperILi0ESaI4UserELb1EEC2ERKS1_, @function
_ZNSt14_Sp_ebo_helperILi0ESaI4UserELb1EEC2ERKS1_:
.LFB6131:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSaI4UserEC2ERKS0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6131:
	.size	_ZNSt14_Sp_ebo_helperILi0ESaI4UserELb1EEC2ERKS1_, .-_ZNSt14_Sp_ebo_helperILi0ESaI4UserELb1EEC2ERKS1_
	.weak	_ZNSt14_Sp_ebo_helperILi0ESaI4UserELb1EEC1ERKS1_
	.set	_ZNSt14_Sp_ebo_helperILi0ESaI4UserELb1EEC1ERKS1_,_ZNSt14_Sp_ebo_helperILi0ESaI4UserELb1EEC2ERKS1_
	.section	.text._ZN9__gnu_cxx13new_allocatorI4UserE9constructIS1_JRS1_EEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI4UserE9constructIS1_JRS1_EEEvPT_DpOT0_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI4UserE9constructIS1_JRS1_EEEvPT_DpOT0_
	.type	_ZN9__gnu_cxx13new_allocatorI4UserE9constructIS1_JRS1_EEEvPT_DpOT0_, @function
_ZN9__gnu_cxx13new_allocatorI4UserE9constructIS1_JRS1_EEEvPT_DpOT0_:
.LFB6133:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6133
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIR4UserEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %r13
	movq	-48(%rbp), %rbx
	movq	%rbx, %rsi
	movl	$120, %edi
	call	_ZnwmPv
	movq	%rax, %r12
	movq	%r13, %rsi
	movq	%r12, %rdi
.LEHB152:
	call	_ZN4UserC1ERKS_
.LEHE152:
	jmp	.L968
.L967:
	endbr64
	movq	%rax, %r13
	movq	%rbx, %rsi
	movq	%r12, %rdi
	call	_ZdlPvS_
	movq	%r13, %rax
	movq	%rax, %rdi
.LEHB153:
	call	_Unwind_Resume@PLT
.LEHE153:
.L968:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6133:
	.section	.gcc_except_table
.LLSDA6133:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6133-.LLSDACSB6133
.LLSDACSB6133:
	.uleb128 .LEHB152-.LFB6133
	.uleb128 .LEHE152-.LEHB152
	.uleb128 .L967-.LFB6133
	.uleb128 0
	.uleb128 .LEHB153-.LFB6133
	.uleb128 .LEHE153-.LEHB153
	.uleb128 0
	.uleb128 0
.LLSDACSE6133:
	.section	.text._ZN9__gnu_cxx13new_allocatorI4UserE9constructIS1_JRS1_EEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI4UserE9constructIS1_JRS1_EEEvPT_DpOT0_,comdat
	.size	_ZN9__gnu_cxx13new_allocatorI4UserE9constructIS1_JRS1_EEEvPT_DpOT0_, .-_ZN9__gnu_cxx13new_allocatorI4UserE9constructIS1_JRS1_EEEvPT_DpOT0_
	.section	.text._ZN9__gnu_cxx16__aligned_bufferI4UserE7_M_addrEv,"axG",@progbits,_ZN9__gnu_cxx16__aligned_bufferI4UserE7_M_addrEv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx16__aligned_bufferI4UserE7_M_addrEv
	.type	_ZN9__gnu_cxx16__aligned_bufferI4UserE7_M_addrEv, @function
_ZN9__gnu_cxx16__aligned_bufferI4UserE7_M_addrEv:
.LFB6134:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6134:
	.size	_ZN9__gnu_cxx16__aligned_bufferI4UserE7_M_addrEv, .-_ZN9__gnu_cxx16__aligned_bufferI4UserE7_M_addrEv
	.section	.text._ZN9__gnu_cxx13new_allocatorI4ChatE9constructIS1_JRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI4ChatE9constructIS1_JRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPT_DpOT0_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI4ChatE9constructIS1_JRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPT_DpOT0_
	.type	_ZN9__gnu_cxx13new_allocatorI4ChatE9constructIS1_JRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPT_DpOT0_, @function
_ZN9__gnu_cxx13new_allocatorI4ChatE9constructIS1_JRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPT_DpOT0_:
.LFB6135:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6135
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS7_E4typeE
	movq	%rax, %r13
	movq	-48(%rbp), %rbx
	movq	%rbx, %rsi
	movl	$72, %edi
	call	_ZnwmPv
	movq	%rax, %r12
	movq	%r13, %rsi
	movq	%r12, %rdi
.LEHB154:
	call	_ZN4ChatC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.LEHE154:
	jmp	.L974
.L973:
	endbr64
	movq	%rax, %r13
	movq	%rbx, %rsi
	movq	%r12, %rdi
	call	_ZdlPvS_
	movq	%r13, %rax
	movq	%rax, %rdi
.LEHB155:
	call	_Unwind_Resume@PLT
.LEHE155:
.L974:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6135:
	.section	.gcc_except_table
.LLSDA6135:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6135-.LLSDACSB6135
.LLSDACSB6135:
	.uleb128 .LEHB154-.LFB6135
	.uleb128 .LEHE154-.LEHB154
	.uleb128 .L973-.LFB6135
	.uleb128 0
	.uleb128 .LEHB155-.LFB6135
	.uleb128 .LEHE155-.LEHB155
	.uleb128 0
	.uleb128 0
.LLSDACSE6135:
	.section	.text._ZN9__gnu_cxx13new_allocatorI4ChatE9constructIS1_JRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI4ChatE9constructIS1_JRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPT_DpOT0_,comdat
	.size	_ZN9__gnu_cxx13new_allocatorI4ChatE9constructIS1_JRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPT_DpOT0_, .-_ZN9__gnu_cxx13new_allocatorI4ChatE9constructIS1_JRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPT_DpOT0_
	.section	.text._ZNSt16allocator_traitsISaISt10shared_ptrI4ChatEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_,"axG",@progbits,_ZNSt16allocator_traitsISaISt10shared_ptrI4ChatEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_,comdat
	.weak	_ZNSt16allocator_traitsISaISt10shared_ptrI4ChatEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_
	.type	_ZNSt16allocator_traitsISaISt10shared_ptrI4ChatEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_, @function
_ZNSt16allocator_traitsISaISt10shared_ptrI4ChatEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_:
.LFB6136:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt10shared_ptrI4ChatEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEE9constructIS3_JS3_EEEvPT_DpOT0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6136:
	.size	_ZNSt16allocator_traitsISaISt10shared_ptrI4ChatEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_, .-_ZNSt16allocator_traitsISaISt10shared_ptrI4ChatEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_
	.section	.text._ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_,comdat
	.weak	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_
	.type	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_, @function
_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_:
.LFB6139:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	subq	-24(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L977
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
.L977:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6139:
	.size	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_, .-_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_
	.section	.text._ZNSt6vectorI7MessageSaIS0_EEC2ERKS2_,"axG",@progbits,_ZNSt6vectorI7MessageSaIS0_EEC5ERKS2_,comdat
	.align 2
	.weak	_ZNSt6vectorI7MessageSaIS0_EEC2ERKS2_
	.type	_ZNSt6vectorI7MessageSaIS0_EEC2ERKS2_, @function
_ZNSt6vectorI7MessageSaIS0_EEC2ERKS2_:
.LFB6141:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6141
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt12_Vector_baseI7MessageSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	leaq	-41(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB156:
	call	_ZN9__gnu_cxx14__alloc_traitsISaI7MessageES1_E17_S_select_on_copyERKS2_
.LEHE156:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI7MessageSaIS0_EE4sizeEv
	movq	%rax, %rcx
	leaq	-41(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movq	%rbx, %rdi
.LEHB157:
	call	_ZNSt12_Vector_baseI7MessageSaIS0_EEC2EmRKS1_
.LEHE157:
	leaq	-41(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaI7MessageED1Ev
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI7MessageSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %r13
	movq	-56(%rbp), %rax
	movq	(%rax), %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI7MessageSaIS0_EE3endEv
	movq	%rax, %r12
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI7MessageSaIS0_EE5beginEv
	movq	%r13, %rcx
	movq	%rbx, %rdx
	movq	%r12, %rsi
	movq	%rax, %rdi
.LEHB158:
	call	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E
.LEHE158:
	movq	-56(%rbp), %rdx
	movq	%rax, 8(%rdx)
	nop
	movq	-40(%rbp), %rax
	subq	%fs:40, %rax
	je	.L982
	jmp	.L985
.L983:
	endbr64
	movq	%rax, %rbx
	leaq	-41(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaI7MessageED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB159:
	call	_Unwind_Resume@PLT
.L984:
	endbr64
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI7MessageSaIS0_EED2Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE159:
.L985:
	call	__stack_chk_fail@PLT
.L982:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6141:
	.section	.gcc_except_table
.LLSDA6141:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6141-.LLSDACSB6141
.LLSDACSB6141:
	.uleb128 .LEHB156-.LFB6141
	.uleb128 .LEHE156-.LEHB156
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB157-.LFB6141
	.uleb128 .LEHE157-.LEHB157
	.uleb128 .L983-.LFB6141
	.uleb128 0
	.uleb128 .LEHB158-.LFB6141
	.uleb128 .LEHE158-.LEHB158
	.uleb128 .L984-.LFB6141
	.uleb128 0
	.uleb128 .LEHB159-.LFB6141
	.uleb128 .LEHE159-.LEHB159
	.uleb128 0
	.uleb128 0
.LLSDACSE6141:
	.section	.text._ZNSt6vectorI7MessageSaIS0_EEC2ERKS2_,"axG",@progbits,_ZNSt6vectorI7MessageSaIS0_EEC5ERKS2_,comdat
	.size	_ZNSt6vectorI7MessageSaIS0_EEC2ERKS2_, .-_ZNSt6vectorI7MessageSaIS0_EEC2ERKS2_
	.weak	_ZNSt6vectorI7MessageSaIS0_EEC1ERKS2_
	.set	_ZNSt6vectorI7MessageSaIS0_EEC1ERKS2_,_ZNSt6vectorI7MessageSaIS0_EEC2ERKS2_
	.section	.text._ZSt7forwardISt10shared_ptrI4ChatEEOT_RNSt16remove_referenceIS3_E4typeE,"axG",@progbits,_ZSt7forwardISt10shared_ptrI4ChatEEOT_RNSt16remove_referenceIS3_E4typeE,comdat
	.weak	_ZSt7forwardISt10shared_ptrI4ChatEEOT_RNSt16remove_referenceIS3_E4typeE
	.type	_ZSt7forwardISt10shared_ptrI4ChatEEOT_RNSt16remove_referenceIS3_E4typeE, @function
_ZSt7forwardISt10shared_ptrI4ChatEEOT_RNSt16remove_referenceIS3_E4typeE:
.LFB6146:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6146:
	.size	_ZSt7forwardISt10shared_ptrI4ChatEEOT_RNSt16remove_referenceIS3_E4typeE, .-_ZSt7forwardISt10shared_ptrI4ChatEEOT_RNSt16remove_referenceIS3_E4typeE
	.section	.text._ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEE9constructIS3_JS3_EEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEE9constructIS3_JS3_EEEvPT_DpOT0_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEE9constructIS3_JS3_EEEvPT_DpOT0_
	.type	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEE9constructIS3_JS3_EEEvPT_DpOT0_, @function
_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEE9constructIS3_JS3_EEEvPT_DpOT0_:
.LFB6147:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt10shared_ptrI4ChatEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$16, %edi
	call	_ZnwmPv
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZNSt10shared_ptrI4ChatEC1EOS1_
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6147:
	.size	_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEE9constructIS3_JS3_EEEvPT_DpOT0_, .-_ZN9__gnu_cxx13new_allocatorISt10shared_ptrI4ChatEE9constructIS3_JS3_EEEvPT_DpOT0_
	.section	.text._ZNKSt6vectorI7MessageSaIS0_EE4sizeEv,"axG",@progbits,_ZNKSt6vectorI7MessageSaIS0_EE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorI7MessageSaIS0_EE4sizeEv
	.type	_ZNKSt6vectorI7MessageSaIS0_EE4sizeEv, @function
_ZNKSt6vectorI7MessageSaIS0_EE4sizeEv:
.LFB6158:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rdx, %rax
	subq	%rcx, %rax
	sarq	$7, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6158:
	.size	_ZNKSt6vectorI7MessageSaIS0_EE4sizeEv, .-_ZNKSt6vectorI7MessageSaIS0_EE4sizeEv
	.section	.text._ZN9__gnu_cxx14__alloc_traitsISaI7MessageES1_E17_S_select_on_copyERKS2_,"axG",@progbits,_ZN9__gnu_cxx14__alloc_traitsISaI7MessageES1_E17_S_select_on_copyERKS2_,comdat
	.weak	_ZN9__gnu_cxx14__alloc_traitsISaI7MessageES1_E17_S_select_on_copyERKS2_
	.type	_ZN9__gnu_cxx14__alloc_traitsISaI7MessageES1_E17_S_select_on_copyERKS2_, @function
_ZN9__gnu_cxx14__alloc_traitsISaI7MessageES1_E17_S_select_on_copyERKS2_:
.LFB6159:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaI7MessageEE37select_on_container_copy_constructionERKS1_
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L993
	call	__stack_chk_fail@PLT
.L993:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6159:
	.size	_ZN9__gnu_cxx14__alloc_traitsISaI7MessageES1_E17_S_select_on_copyERKS2_, .-_ZN9__gnu_cxx14__alloc_traitsISaI7MessageES1_E17_S_select_on_copyERKS2_
	.section	.text._ZNKSt12_Vector_baseI7MessageSaIS0_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseI7MessageSaIS0_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt12_Vector_baseI7MessageSaIS0_EE19_M_get_Tp_allocatorEv
	.type	_ZNKSt12_Vector_baseI7MessageSaIS0_EE19_M_get_Tp_allocatorEv, @function
_ZNKSt12_Vector_baseI7MessageSaIS0_EE19_M_get_Tp_allocatorEv:
.LFB6160:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6160:
	.size	_ZNKSt12_Vector_baseI7MessageSaIS0_EE19_M_get_Tp_allocatorEv, .-_ZNKSt12_Vector_baseI7MessageSaIS0_EE19_M_get_Tp_allocatorEv
	.section	.text._ZNSaI7MessageED2Ev,"axG",@progbits,_ZNSaI7MessageED5Ev,comdat
	.align 2
	.weak	_ZNSaI7MessageED2Ev
	.type	_ZNSaI7MessageED2Ev, @function
_ZNSaI7MessageED2Ev:
.LFB6162:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorI7MessageED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6162:
	.size	_ZNSaI7MessageED2Ev, .-_ZNSaI7MessageED2Ev
	.weak	_ZNSaI7MessageED1Ev
	.set	_ZNSaI7MessageED1Ev,_ZNSaI7MessageED2Ev
	.section	.text._ZNSt12_Vector_baseI7MessageSaIS0_EE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseI7MessageSaIS0_EE12_Vector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI7MessageSaIS0_EE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseI7MessageSaIS0_EE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseI7MessageSaIS0_EE12_Vector_implD2Ev:
.LFB6166:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaI7MessageED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6166:
	.size	_ZNSt12_Vector_baseI7MessageSaIS0_EE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseI7MessageSaIS0_EE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseI7MessageSaIS0_EE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseI7MessageSaIS0_EE12_Vector_implD1Ev,_ZNSt12_Vector_baseI7MessageSaIS0_EE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseI7MessageSaIS0_EEC2EmRKS1_,"axG",@progbits,_ZNSt12_Vector_baseI7MessageSaIS0_EEC5EmRKS1_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI7MessageSaIS0_EEC2EmRKS1_
	.type	_ZNSt12_Vector_baseI7MessageSaIS0_EEC2EmRKS1_, @function
_ZNSt12_Vector_baseI7MessageSaIS0_EEC2EmRKS1_:
.LFB6168:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6168
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI7MessageSaIS0_EE12_Vector_implC1ERKS1_
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB160:
	call	_ZNSt12_Vector_baseI7MessageSaIS0_EE17_M_create_storageEm
.LEHE160:
	jmp	.L1001
.L1000:
	endbr64
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI7MessageSaIS0_EE12_Vector_implD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB161:
	call	_Unwind_Resume@PLT
.LEHE161:
.L1001:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6168:
	.section	.gcc_except_table
.LLSDA6168:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6168-.LLSDACSB6168
.LLSDACSB6168:
	.uleb128 .LEHB160-.LFB6168
	.uleb128 .LEHE160-.LEHB160
	.uleb128 .L1000-.LFB6168
	.uleb128 0
	.uleb128 .LEHB161-.LFB6168
	.uleb128 .LEHE161-.LEHB161
	.uleb128 0
	.uleb128 0
.LLSDACSE6168:
	.section	.text._ZNSt12_Vector_baseI7MessageSaIS0_EEC2EmRKS1_,"axG",@progbits,_ZNSt12_Vector_baseI7MessageSaIS0_EEC5EmRKS1_,comdat
	.size	_ZNSt12_Vector_baseI7MessageSaIS0_EEC2EmRKS1_, .-_ZNSt12_Vector_baseI7MessageSaIS0_EEC2EmRKS1_
	.weak	_ZNSt12_Vector_baseI7MessageSaIS0_EEC1EmRKS1_
	.set	_ZNSt12_Vector_baseI7MessageSaIS0_EEC1EmRKS1_,_ZNSt12_Vector_baseI7MessageSaIS0_EEC2EmRKS1_
	.section	.text._ZNSt12_Vector_baseI7MessageSaIS0_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseI7MessageSaIS0_EED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI7MessageSaIS0_EED2Ev
	.type	_ZNSt12_Vector_baseI7MessageSaIS0_EED2Ev, @function
_ZNSt12_Vector_baseI7MessageSaIS0_EED2Ev:
.LFB6171:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6171
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rdx, %rax
	subq	%rcx, %rax
	sarq	$7, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI7MessageSaIS0_EE13_M_deallocateEPS0_m
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI7MessageSaIS0_EE12_Vector_implD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6171:
	.section	.gcc_except_table
.LLSDA6171:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6171-.LLSDACSB6171
.LLSDACSB6171:
.LLSDACSE6171:
	.section	.text._ZNSt12_Vector_baseI7MessageSaIS0_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseI7MessageSaIS0_EED5Ev,comdat
	.size	_ZNSt12_Vector_baseI7MessageSaIS0_EED2Ev, .-_ZNSt12_Vector_baseI7MessageSaIS0_EED2Ev
	.weak	_ZNSt12_Vector_baseI7MessageSaIS0_EED1Ev
	.set	_ZNSt12_Vector_baseI7MessageSaIS0_EED1Ev,_ZNSt12_Vector_baseI7MessageSaIS0_EED2Ev
	.section	.text._ZNKSt6vectorI7MessageSaIS0_EE5beginEv,"axG",@progbits,_ZNKSt6vectorI7MessageSaIS0_EE5beginEv,comdat
	.align 2
	.weak	_ZNKSt6vectorI7MessageSaIS0_EE5beginEv
	.type	_ZNKSt6vectorI7MessageSaIS0_EE5beginEv, @function
_ZNKSt6vectorI7MessageSaIS0_EE5beginEv:
.LFB6173:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS1_SaIS1_EEEC1ERKS3_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L1005
	call	__stack_chk_fail@PLT
.L1005:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6173:
	.size	_ZNKSt6vectorI7MessageSaIS0_EE5beginEv, .-_ZNKSt6vectorI7MessageSaIS0_EE5beginEv
	.section	.text._ZNKSt6vectorI7MessageSaIS0_EE3endEv,"axG",@progbits,_ZNKSt6vectorI7MessageSaIS0_EE3endEv,comdat
	.align 2
	.weak	_ZNKSt6vectorI7MessageSaIS0_EE3endEv
	.type	_ZNKSt6vectorI7MessageSaIS0_EE3endEv, @function
_ZNKSt6vectorI7MessageSaIS0_EE3endEv:
.LFB6174:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS1_SaIS1_EEEC1ERKS3_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L1008
	call	__stack_chk_fail@PLT
.L1008:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6174:
	.size	_ZNKSt6vectorI7MessageSaIS0_EE3endEv, .-_ZNKSt6vectorI7MessageSaIS0_EE3endEv
	.section	.text._ZNSt12_Vector_baseI7MessageSaIS0_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseI7MessageSaIS0_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI7MessageSaIS0_EE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseI7MessageSaIS0_EE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseI7MessageSaIS0_EE19_M_get_Tp_allocatorEv:
.LFB6175:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6175:
	.size	_ZNSt12_Vector_baseI7MessageSaIS0_EE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseI7MessageSaIS0_EE19_M_get_Tp_allocatorEv
	.section	.text._ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E,"axG",@progbits,_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E,comdat
	.weak	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E
	.type	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E, @function
_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E:
.LFB6176:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6176:
	.size	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E, .-_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E
	.section	.text._ZNSt10shared_ptrI4ChatEC2EOS1_,"axG",@progbits,_ZNSt10shared_ptrI4ChatEC5EOS1_,comdat
	.align 2
	.weak	_ZNSt10shared_ptrI4ChatEC2EOS1_
	.type	_ZNSt10shared_ptrI4ChatEC2EOS1_, @function
_ZNSt10shared_ptrI4ChatEC2EOS1_:
.LFB6179:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRSt10shared_ptrI4ChatEEONSt16remove_referenceIT_E4typeEOS5_
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt12__shared_ptrI4ChatLN9__gnu_cxx12_Lock_policyE2EEC2EOS3_
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6179:
	.size	_ZNSt10shared_ptrI4ChatEC2EOS1_, .-_ZNSt10shared_ptrI4ChatEC2EOS1_
	.weak	_ZNSt10shared_ptrI4ChatEC1EOS1_
	.set	_ZNSt10shared_ptrI4ChatEC1EOS1_,_ZNSt10shared_ptrI4ChatEC2EOS1_
	.section	.text._ZNSt16allocator_traitsISaI7MessageEE37select_on_container_copy_constructionERKS1_,"axG",@progbits,_ZNSt16allocator_traitsISaI7MessageEE37select_on_container_copy_constructionERKS1_,comdat
	.weak	_ZNSt16allocator_traitsISaI7MessageEE37select_on_container_copy_constructionERKS1_
	.type	_ZNSt16allocator_traitsISaI7MessageEE37select_on_container_copy_constructionERKS1_, @function
_ZNSt16allocator_traitsISaI7MessageEE37select_on_container_copy_constructionERKS1_:
.LFB6181:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSaI7MessageEC1ERKS0_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6181:
	.size	_ZNSt16allocator_traitsISaI7MessageEE37select_on_container_copy_constructionERKS1_, .-_ZNSt16allocator_traitsISaI7MessageEE37select_on_container_copy_constructionERKS1_
	.section	.text._ZN9__gnu_cxx13new_allocatorI7MessageED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI7MessageED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI7MessageED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorI7MessageED2Ev, @function
_ZN9__gnu_cxx13new_allocatorI7MessageED2Ev:
.LFB6183:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6183:
	.size	_ZN9__gnu_cxx13new_allocatorI7MessageED2Ev, .-_ZN9__gnu_cxx13new_allocatorI7MessageED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorI7MessageED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorI7MessageED1Ev,_ZN9__gnu_cxx13new_allocatorI7MessageED2Ev
	.section	.text._ZNSt12_Vector_baseI7MessageSaIS0_EE12_Vector_implC2ERKS1_,"axG",@progbits,_ZNSt12_Vector_baseI7MessageSaIS0_EE12_Vector_implC5ERKS1_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI7MessageSaIS0_EE12_Vector_implC2ERKS1_
	.type	_ZNSt12_Vector_baseI7MessageSaIS0_EE12_Vector_implC2ERKS1_, @function
_ZNSt12_Vector_baseI7MessageSaIS0_EE12_Vector_implC2ERKS1_:
.LFB6186:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSaI7MessageEC2ERKS0_
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI7MessageSaIS0_EE17_Vector_impl_dataC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6186:
	.size	_ZNSt12_Vector_baseI7MessageSaIS0_EE12_Vector_implC2ERKS1_, .-_ZNSt12_Vector_baseI7MessageSaIS0_EE12_Vector_implC2ERKS1_
	.weak	_ZNSt12_Vector_baseI7MessageSaIS0_EE12_Vector_implC1ERKS1_
	.set	_ZNSt12_Vector_baseI7MessageSaIS0_EE12_Vector_implC1ERKS1_,_ZNSt12_Vector_baseI7MessageSaIS0_EE12_Vector_implC2ERKS1_
	.section	.text._ZNSt12_Vector_baseI7MessageSaIS0_EE17_M_create_storageEm,"axG",@progbits,_ZNSt12_Vector_baseI7MessageSaIS0_EE17_M_create_storageEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI7MessageSaIS0_EE17_M_create_storageEm
	.type	_ZNSt12_Vector_baseI7MessageSaIS0_EE17_M_create_storageEm, @function
_ZNSt12_Vector_baseI7MessageSaIS0_EE17_M_create_storageEm:
.LFB6188:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI7MessageSaIS0_EE11_M_allocateEm
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	salq	$7, %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6188:
	.size	_ZNSt12_Vector_baseI7MessageSaIS0_EE17_M_create_storageEm, .-_ZNSt12_Vector_baseI7MessageSaIS0_EE17_M_create_storageEm
	.section	.text._ZNSt12_Vector_baseI7MessageSaIS0_EE13_M_deallocateEPS0_m,"axG",@progbits,_ZNSt12_Vector_baseI7MessageSaIS0_EE13_M_deallocateEPS0_m,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI7MessageSaIS0_EE13_M_deallocateEPS0_m
	.type	_ZNSt12_Vector_baseI7MessageSaIS0_EE13_M_deallocateEPS0_m, @function
_ZNSt12_Vector_baseI7MessageSaIS0_EE13_M_deallocateEPS0_m:
.LFB6189:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L1021
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaI7MessageEE10deallocateERS1_PS0_m
.L1021:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6189:
	.size	_ZNSt12_Vector_baseI7MessageSaIS0_EE13_M_deallocateEPS0_m, .-_ZNSt12_Vector_baseI7MessageSaIS0_EE13_M_deallocateEPS0_m
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS1_SaIS1_EEEC2ERKS3_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS1_SaIS1_EEEC5ERKS3_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS1_SaIS1_EEEC2ERKS3_
	.type	_ZN9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS1_SaIS1_EEEC2ERKS3_, @function
_ZN9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS1_SaIS1_EEEC2ERKS3_:
.LFB6191:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6191:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS1_SaIS1_EEEC2ERKS3_, .-_ZN9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS1_SaIS1_EEEC2ERKS3_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS1_SaIS1_EEEC1ERKS3_
	.set	_ZN9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS1_SaIS1_EEEC1ERKS3_,_ZN9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS1_SaIS1_EEEC2ERKS3_
	.section	.text._ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_,"axG",@progbits,_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_,comdat
	.weak	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_
	.type	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_, @function
_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_:
.LFB6193:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movb	$1, -1(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6193:
	.size	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_, .-_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_
	.section	.text._ZSt8_DestroyIP7MessageEvT_S2_,"axG",@progbits,_ZSt8_DestroyIP7MessageEvT_S2_,comdat
	.weak	_ZSt8_DestroyIP7MessageEvT_S2_
	.type	_ZSt8_DestroyIP7MessageEvT_S2_, @function
_ZSt8_DestroyIP7MessageEvT_S2_:
.LFB6196:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Destroy_auxILb0EE9__destroyIP7MessageEEvT_S4_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6196:
	.size	_ZSt8_DestroyIP7MessageEvT_S2_, .-_ZSt8_DestroyIP7MessageEvT_S2_
	.section	.text._ZNSaI7MessageEC2ERKS0_,"axG",@progbits,_ZNSaI7MessageEC5ERKS0_,comdat
	.align 2
	.weak	_ZNSaI7MessageEC2ERKS0_
	.type	_ZNSaI7MessageEC2ERKS0_, @function
_ZNSaI7MessageEC2ERKS0_:
.LFB6198:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorI7MessageEC2ERKS2_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6198:
	.size	_ZNSaI7MessageEC2ERKS0_, .-_ZNSaI7MessageEC2ERKS0_
	.weak	_ZNSaI7MessageEC1ERKS0_
	.set	_ZNSaI7MessageEC1ERKS0_,_ZNSaI7MessageEC2ERKS0_
	.section	.text._ZNSt12_Vector_baseI7MessageSaIS0_EE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseI7MessageSaIS0_EE17_Vector_impl_dataC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI7MessageSaIS0_EE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseI7MessageSaIS0_EE17_Vector_impl_dataC2Ev, @function
_ZNSt12_Vector_baseI7MessageSaIS0_EE17_Vector_impl_dataC2Ev:
.LFB6201:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6201:
	.size	_ZNSt12_Vector_baseI7MessageSaIS0_EE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseI7MessageSaIS0_EE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseI7MessageSaIS0_EE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseI7MessageSaIS0_EE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseI7MessageSaIS0_EE17_Vector_impl_dataC2Ev
	.section	.text._ZNSt12_Vector_baseI7MessageSaIS0_EE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseI7MessageSaIS0_EE11_M_allocateEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI7MessageSaIS0_EE11_M_allocateEm
	.type	_ZNSt12_Vector_baseI7MessageSaIS0_EE11_M_allocateEm, @function
_ZNSt12_Vector_baseI7MessageSaIS0_EE11_M_allocateEm:
.LFB6203:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L1029
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaI7MessageEE8allocateERS1_m
	jmp	.L1031
.L1029:
	movl	$0, %eax
.L1031:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6203:
	.size	_ZNSt12_Vector_baseI7MessageSaIS0_EE11_M_allocateEm, .-_ZNSt12_Vector_baseI7MessageSaIS0_EE11_M_allocateEm
	.section	.text._ZNSt16allocator_traitsISaI7MessageEE10deallocateERS1_PS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaI7MessageEE10deallocateERS1_PS0_m,comdat
	.weak	_ZNSt16allocator_traitsISaI7MessageEE10deallocateERS1_PS0_m
	.type	_ZNSt16allocator_traitsISaI7MessageEE10deallocateERS1_PS0_m, @function
_ZNSt16allocator_traitsISaI7MessageEE10deallocateERS1_PS0_m:
.LFB6204:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorI7MessageE10deallocateEPS1_m
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6204:
	.size	_ZNSt16allocator_traitsISaI7MessageEE10deallocateERS1_PS0_m, .-_ZNSt16allocator_traitsISaI7MessageEE10deallocateERS1_PS0_m
	.section	.text._ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_,"axG",@progbits,_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_,comdat
	.weak	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_
	.type	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_, @function
_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_:
.LFB6205:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6205
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1034
.L1035:
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS1_SaIS1_EEEdeEv
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofI7MessageEPT_RS1_
	movq	%rbx, %rsi
	movq	%rax, %rdi
.LEHB162:
	call	_ZSt10_ConstructI7MessageJRKS0_EEvPT_DpOT0_
.LEHE162:
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS1_SaIS1_EEEppEv
	subq	$-128, -24(%rbp)
.L1034:
	leaq	-48(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxneIPK7MessageSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_
	testb	%al, %al
	jne	.L1035
	movq	-24(%rbp), %rax
	jmp	.L1041
.L1039:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB163:
	call	_ZSt8_DestroyIP7MessageEvT_S2_
	call	__cxa_rethrow@PLT
.LEHE163:
.L1040:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB164:
	call	_Unwind_Resume@PLT
.LEHE164:
.L1041:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6205:
	.section	.gcc_except_table
	.align 4
.LLSDA6205:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT6205-.LLSDATTD6205
.LLSDATTD6205:
	.byte	0x1
	.uleb128 .LLSDACSE6205-.LLSDACSB6205
.LLSDACSB6205:
	.uleb128 .LEHB162-.LFB6205
	.uleb128 .LEHE162-.LEHB162
	.uleb128 .L1039-.LFB6205
	.uleb128 0x1
	.uleb128 .LEHB163-.LFB6205
	.uleb128 .LEHE163-.LEHB163
	.uleb128 .L1040-.LFB6205
	.uleb128 0
	.uleb128 .LEHB164-.LFB6205
	.uleb128 .LEHE164-.LEHB164
	.uleb128 0
	.uleb128 0
.LLSDACSE6205:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT6205:
	.section	.text._ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_,"axG",@progbits,_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_,comdat
	.size	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_, .-_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_
	.section	.text._ZNSt12_Destroy_auxILb0EE9__destroyIP7MessageEEvT_S4_,"axG",@progbits,_ZNSt12_Destroy_auxILb0EE9__destroyIP7MessageEEvT_S4_,comdat
	.weak	_ZNSt12_Destroy_auxILb0EE9__destroyIP7MessageEEvT_S4_
	.type	_ZNSt12_Destroy_auxILb0EE9__destroyIP7MessageEEvT_S4_, @function
_ZNSt12_Destroy_auxILb0EE9__destroyIP7MessageEEvT_S4_:
.LFB6206:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	jmp	.L1043
.L1044:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofI7MessageEPT_RS1_
	movq	%rax, %rdi
	call	_ZSt8_DestroyI7MessageEvPT_
	subq	$-128, -8(%rbp)
.L1043:
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.L1044
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6206:
	.size	_ZNSt12_Destroy_auxILb0EE9__destroyIP7MessageEEvT_S4_, .-_ZNSt12_Destroy_auxILb0EE9__destroyIP7MessageEEvT_S4_
	.section	.text._ZN9__gnu_cxx13new_allocatorI7MessageEC2ERKS2_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI7MessageEC5ERKS2_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI7MessageEC2ERKS2_
	.type	_ZN9__gnu_cxx13new_allocatorI7MessageEC2ERKS2_, @function
_ZN9__gnu_cxx13new_allocatorI7MessageEC2ERKS2_:
.LFB6208:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6208:
	.size	_ZN9__gnu_cxx13new_allocatorI7MessageEC2ERKS2_, .-_ZN9__gnu_cxx13new_allocatorI7MessageEC2ERKS2_
	.weak	_ZN9__gnu_cxx13new_allocatorI7MessageEC1ERKS2_
	.set	_ZN9__gnu_cxx13new_allocatorI7MessageEC1ERKS2_,_ZN9__gnu_cxx13new_allocatorI7MessageEC2ERKS2_
	.section	.text._ZNSt16allocator_traitsISaI7MessageEE8allocateERS1_m,"axG",@progbits,_ZNSt16allocator_traitsISaI7MessageEE8allocateERS1_m,comdat
	.weak	_ZNSt16allocator_traitsISaI7MessageEE8allocateERS1_m
	.type	_ZNSt16allocator_traitsISaI7MessageEE8allocateERS1_m, @function
_ZNSt16allocator_traitsISaI7MessageEE8allocateERS1_m:
.LFB6210:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorI7MessageE8allocateEmPKv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6210:
	.size	_ZNSt16allocator_traitsISaI7MessageEE8allocateERS1_m, .-_ZNSt16allocator_traitsISaI7MessageEE8allocateERS1_m
	.section	.text._ZN9__gnu_cxx13new_allocatorI7MessageE10deallocateEPS1_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI7MessageE10deallocateEPS1_m,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI7MessageE10deallocateEPS1_m
	.type	_ZN9__gnu_cxx13new_allocatorI7MessageE10deallocateEPS1_m, @function
_ZN9__gnu_cxx13new_allocatorI7MessageE10deallocateEPS1_m:
.LFB6211:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	salq	$7, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6211:
	.size	_ZN9__gnu_cxx13new_allocatorI7MessageE10deallocateEPS1_m, .-_ZN9__gnu_cxx13new_allocatorI7MessageE10deallocateEPS1_m
	.section	.text._ZN9__gnu_cxxneIPK7MessageSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_,"axG",@progbits,_ZN9__gnu_cxxneIPK7MessageSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_,comdat
	.weak	_ZN9__gnu_cxxneIPK7MessageSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_
	.type	_ZN9__gnu_cxxneIPK7MessageSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_, @function
_ZN9__gnu_cxxneIPK7MessageSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_:
.LFB6212:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rax
	cmpq	%rax, %rbx
	setne	%al
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6212:
	.size	_ZN9__gnu_cxxneIPK7MessageSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_, .-_ZN9__gnu_cxxneIPK7MessageSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS1_SaIS1_EEEppEv,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS1_SaIS1_EEEppEv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS1_SaIS1_EEEppEv
	.type	_ZN9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS1_SaIS1_EEEppEv, @function
_ZN9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS1_SaIS1_EEEppEv:
.LFB6213:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	128(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6213:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS1_SaIS1_EEEppEv, .-_ZN9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS1_SaIS1_EEEppEv
	.section	.text._ZSt11__addressofI7MessageEPT_RS1_,"axG",@progbits,_ZSt11__addressofI7MessageEPT_RS1_,comdat
	.weak	_ZSt11__addressofI7MessageEPT_RS1_
	.type	_ZSt11__addressofI7MessageEPT_RS1_, @function
_ZSt11__addressofI7MessageEPT_RS1_:
.LFB6214:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6214:
	.size	_ZSt11__addressofI7MessageEPT_RS1_, .-_ZSt11__addressofI7MessageEPT_RS1_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS1_SaIS1_EEEdeEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS1_SaIS1_EEEdeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS1_SaIS1_EEEdeEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS1_SaIS1_EEEdeEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS1_SaIS1_EEEdeEv:
.LFB6215:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6215:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS1_SaIS1_EEEdeEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS1_SaIS1_EEEdeEv
	.section	.text._ZN7MessageC2ERKS_,"axG",@progbits,_ZN7MessageC5ERKS_,comdat
	.align 2
	.weak	_ZN7MessageC2ERKS_
	.type	_ZN7MessageC2ERKS_, @function
_ZN7MessageC2ERKS_:
.LFB6218:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6218
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB165:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_@PLT
.LEHE165:
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movq	-32(%rbp), %rdx
	addq	$32, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB166:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_@PLT
.LEHE166:
	movq	-24(%rbp), %rax
	addq	$64, %rax
	movq	-32(%rbp), %rdx
	addq	$64, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB167:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_@PLT
.LEHE167:
	movq	-24(%rbp), %rax
	addq	$96, %rax
	movq	-32(%rbp), %rdx
	addq	$96, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB168:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_@PLT
.LEHE168:
	jmp	.L1065
.L1064:
	endbr64
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	addq	$64, %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L1060
.L1063:
	endbr64
	movq	%rax, %rbx
.L1060:
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L1061
.L1062:
	endbr64
	movq	%rax, %rbx
.L1061:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB169:
	call	_Unwind_Resume@PLT
.LEHE169:
.L1065:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6218:
	.section	.gcc_except_table
.LLSDA6218:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6218-.LLSDACSB6218
.LLSDACSB6218:
	.uleb128 .LEHB165-.LFB6218
	.uleb128 .LEHE165-.LEHB165
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB166-.LFB6218
	.uleb128 .LEHE166-.LEHB166
	.uleb128 .L1062-.LFB6218
	.uleb128 0
	.uleb128 .LEHB167-.LFB6218
	.uleb128 .LEHE167-.LEHB167
	.uleb128 .L1063-.LFB6218
	.uleb128 0
	.uleb128 .LEHB168-.LFB6218
	.uleb128 .LEHE168-.LEHB168
	.uleb128 .L1064-.LFB6218
	.uleb128 0
	.uleb128 .LEHB169-.LFB6218
	.uleb128 .LEHE169-.LEHB169
	.uleb128 0
	.uleb128 0
.LLSDACSE6218:
	.section	.text._ZN7MessageC2ERKS_,"axG",@progbits,_ZN7MessageC5ERKS_,comdat
	.size	_ZN7MessageC2ERKS_, .-_ZN7MessageC2ERKS_
	.weak	_ZN7MessageC1ERKS_
	.set	_ZN7MessageC1ERKS_,_ZN7MessageC2ERKS_
	.section	.text._ZSt10_ConstructI7MessageJRKS0_EEvPT_DpOT0_,"axG",@progbits,_ZSt10_ConstructI7MessageJRKS0_EEvPT_DpOT0_,comdat
	.weak	_ZSt10_ConstructI7MessageJRKS0_EEvPT_DpOT0_
	.type	_ZSt10_ConstructI7MessageJRKS0_EEvPT_DpOT0_, @function
_ZSt10_ConstructI7MessageJRKS0_EEvPT_DpOT0_:
.LFB6216:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6216
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRK7MessageEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %r13
	movq	-40(%rbp), %rbx
	movq	%rbx, %rsi
	movl	$128, %edi
	call	_ZnwmPv
	movq	%rax, %r12
	movq	%r13, %rsi
	movq	%r12, %rdi
.LEHB170:
	call	_ZN7MessageC1ERKS_
.LEHE170:
	jmp	.L1069
.L1068:
	endbr64
	movq	%rax, %r13
	movq	%rbx, %rsi
	movq	%r12, %rdi
	call	_ZdlPvS_
	movq	%r13, %rax
	movq	%rax, %rdi
.LEHB171:
	call	_Unwind_Resume@PLT
.LEHE171:
.L1069:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6216:
	.section	.gcc_except_table
.LLSDA6216:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6216-.LLSDACSB6216
.LLSDACSB6216:
	.uleb128 .LEHB170-.LFB6216
	.uleb128 .LEHE170-.LEHB170
	.uleb128 .L1068-.LFB6216
	.uleb128 0
	.uleb128 .LEHB171-.LFB6216
	.uleb128 .LEHE171-.LEHB171
	.uleb128 0
	.uleb128 0
.LLSDACSE6216:
	.section	.text._ZSt10_ConstructI7MessageJRKS0_EEvPT_DpOT0_,"axG",@progbits,_ZSt10_ConstructI7MessageJRKS0_EEvPT_DpOT0_,comdat
	.size	_ZSt10_ConstructI7MessageJRKS0_EEvPT_DpOT0_, .-_ZSt10_ConstructI7MessageJRKS0_EEvPT_DpOT0_
	.section	.text._ZSt8_DestroyI7MessageEvPT_,"axG",@progbits,_ZSt8_DestroyI7MessageEvPT_,comdat
	.weak	_ZSt8_DestroyI7MessageEvPT_
	.type	_ZSt8_DestroyI7MessageEvPT_, @function
_ZSt8_DestroyI7MessageEvPT_:
.LFB6220:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN7MessageD1Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6220:
	.size	_ZSt8_DestroyI7MessageEvPT_, .-_ZSt8_DestroyI7MessageEvPT_
	.section	.text._ZNK9__gnu_cxx13new_allocatorI7MessageE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorI7MessageE11_M_max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorI7MessageE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorI7MessageE11_M_max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorI7MessageE11_M_max_sizeEv:
.LFB6222:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movabsq	$72057594037927935, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6222:
	.size	_ZNK9__gnu_cxx13new_allocatorI7MessageE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorI7MessageE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorI7MessageE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI7MessageE8allocateEmPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI7MessageE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorI7MessageE8allocateEmPKv, @function
_ZN9__gnu_cxx13new_allocatorI7MessageE8allocateEmPKv:
.LFB6221:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx13new_allocatorI7MessageE11_M_max_sizeEv
	cmpq	%rax, -16(%rbp)
	seta	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	je	.L1074
	movabsq	$144115188075855871, %rax
	cmpq	%rax, -16(%rbp)
	jbe	.L1075
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L1075:
	call	_ZSt17__throw_bad_allocv@PLT
.L1074:
	movq	-16(%rbp), %rax
	salq	$7, %rax
	movq	%rax, %rdi
	call	_Znwm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6221:
	.size	_ZN9__gnu_cxx13new_allocatorI7MessageE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorI7MessageE8allocateEmPKv
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS1_SaIS1_EEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS1_SaIS1_EEE4baseEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS1_SaIS1_EEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS1_SaIS1_EEE4baseEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS1_SaIS1_EEE4baseEv:
.LFB6223:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6223:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS1_SaIS1_EEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPK7MessageSt6vectorIS1_SaIS1_EEE4baseEv
	.section	.text._ZSt7forwardIRK7MessageEOT_RNSt16remove_referenceIS3_E4typeE,"axG",@progbits,_ZSt7forwardIRK7MessageEOT_RNSt16remove_referenceIS3_E4typeE,comdat
	.weak	_ZSt7forwardIRK7MessageEOT_RNSt16remove_referenceIS3_E4typeE
	.type	_ZSt7forwardIRK7MessageEOT_RNSt16remove_referenceIS3_E4typeE, @function
_ZSt7forwardIRK7MessageEOT_RNSt16remove_referenceIS3_E4typeE:
.LFB6224:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6224:
	.size	_ZSt7forwardIRK7MessageEOT_RNSt16remove_referenceIS3_E4typeE, .-_ZSt7forwardIRK7MessageEOT_RNSt16remove_referenceIS3_E4typeE
	.weak	_ZTVSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE
	.section	.data.rel.ro.local._ZTVSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE,"awG",@progbits,_ZTVSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE,comdat
	.align 8
	.type	_ZTVSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE, @object
	.size	_ZTVSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE, 56
_ZTVSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE:
	.quad	0
	.quad	_ZTISt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE
	.quad	_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED1Ev
	.quad	_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED0Ev
	.quad	_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv
	.quad	_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv
	.quad	_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info
	.weak	_ZTVSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE
	.section	.data.rel.ro.local._ZTVSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE,"awG",@progbits,_ZTVSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE,comdat
	.align 8
	.type	_ZTVSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE, @object
	.size	_ZTVSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE, 56
_ZTVSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE:
	.quad	0
	.quad	_ZTISt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE
	.quad	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED1Ev
	.quad	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED0Ev
	.quad	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv
	.quad	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv
	.quad	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info
	.weak	_ZTVSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE
	.section	.data.rel.ro._ZTVSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE,"awG",@progbits,_ZTVSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE,comdat
	.align 8
	.type	_ZTVSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, @object
	.size	_ZTVSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, 56
_ZTVSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE:
	.quad	0
	.quad	_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE
	.quad	0
	.quad	0
	.quad	__cxa_pure_virtual
	.quad	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv
	.quad	__cxa_pure_virtual
	.weak	_ZTISt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE
	.section	.data.rel.ro._ZTISt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE,"awG",@progbits,_ZTISt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE,comdat
	.align 8
	.type	_ZTISt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE, @object
	.size	_ZTISt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE, 24
_ZTISt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE
	.quad	_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE
	.weak	_ZTSSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE
	.section	.rodata._ZTSSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE,"aG",@progbits,_ZTSSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE,comdat
	.align 32
	.type	_ZTSSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE, @object
	.size	_ZTSSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE, 71
_ZTSSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE:
	.string	"St23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE"
	.weak	_ZTISt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE
	.section	.data.rel.ro._ZTISt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE,"awG",@progbits,_ZTISt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE,comdat
	.align 8
	.type	_ZTISt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE, @object
	.size	_ZTISt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE, 24
_ZTISt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE
	.quad	_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE
	.weak	_ZTSSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE
	.section	.rodata._ZTSSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE,"aG",@progbits,_ZTSSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE,comdat
	.align 32
	.type	_ZTSSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE, @object
	.size	_ZTSSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE, 71
_ZTSSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE:
	.string	"St23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE"
	.weak	_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE
	.section	.data.rel.ro._ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE,"awG",@progbits,_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE,comdat
	.align 8
	.type	_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, @object
	.size	_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, 24
_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE
	.quad	_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE
	.weak	_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE
	.section	.rodata._ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE,"aG",@progbits,_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE,comdat
	.align 32
	.type	_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, @object
	.size	_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, 52
_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE:
	.string	"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE"
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB6241:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L1083
	cmpl	$65535, -8(%rbp)
	jne	.L1083
	leaq	_ZStL8__ioinit(%rip), %rax
	movq	%rax, %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	leaq	__dso_handle(%rip), %rax
	movq	%rax, %rdx
	leaq	_ZStL8__ioinit(%rip), %rax
	movq	%rax, %rsi
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	__cxa_atexit@PLT
.L1083:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6241:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.section	.text._ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED2Ev,"axG",@progbits,_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED5Ev,comdat
	.align 2
	.weak	_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED2Ev
	.type	_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED2Ev, @function
_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED2Ev:
.LFB6243:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	16+_ZTVSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplD1Ev
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6243:
	.size	_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED2Ev, .-_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED2Ev
	.weak	_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED1Ev
	.set	_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED1Ev,_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED2Ev
	.section	.text._ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED0Ev,"axG",@progbits,_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED5Ev,comdat
	.align 2
	.weak	_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED0Ev
	.type	_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED0Ev, @function
_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED0Ev:
.LFB6245:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED1Ev
	movq	-8(%rbp), %rax
	movl	$136, %esi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6245:
	.size	_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED0Ev, .-_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED0Ev
	.section	.text._ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv,"axG",@progbits,_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv,comdat
	.align 2
	.weak	_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv
	.type	_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, @function
_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv:
.LFB6246:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE6_M_ptrEv
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_Impl8_M_allocEv
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaI4UserEE7destroyIS0_EEvRS1_PT_
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6246:
	.size	_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, .-_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv
	.section	.text._ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv,"axG",@progbits,_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv,comdat
	.align 2
	.weak	_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv
	.type	_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, @function
_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv:
.LFB6247:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_Impl8_M_allocEv
	movq	%rax, %rdx
	leaq	-33(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSaISt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEEC1IS0_EERKSaIT_E
	movq	-56(%rbp), %rdx
	leaq	-33(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEC1ERS6_PS5_
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED1Ev
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4UserSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEED1Ev
	leaq	-33(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaISt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEED1Ev
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L1088
	call	__stack_chk_fail@PLT
.L1088:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6247:
	.size	_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, .-_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv
	.section	.text._ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info,"axG",@progbits,_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info,comdat
	.align 2
	.weak	_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info
	.type	_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info, @function
_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info:
.LFB6248:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE6_M_ptrEv
	movq	%rax, -8(%rbp)
	call	_ZNSt19_Sp_make_shared_tag5_S_tiEv
	cmpq	%rax, -32(%rbp)
	je	.L1090
	movq	-32(%rbp), %rax
	leaq	_ZTISt19_Sp_make_shared_tag(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNKSt9type_infoeqERKS_
	testb	%al, %al
	je	.L1091
.L1090:
	movl	$1, %eax
	jmp	.L1092
.L1091:
	movl	$0, %eax
.L1092:
	testb	%al, %al
	je	.L1093
	movq	-8(%rbp), %rax
	jmp	.L1094
.L1093:
	movl	$0, %eax
.L1094:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6248:
	.size	_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info, .-_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info
	.section	.text._ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED2Ev,"axG",@progbits,_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED5Ev,comdat
	.align 2
	.weak	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED2Ev
	.type	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED2Ev, @function
_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED2Ev:
.LFB6250:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	16+_ZTVSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplD1Ev
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6250:
	.size	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED2Ev, .-_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED2Ev
	.weak	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED1Ev
	.set	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED1Ev,_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED2Ev
	.section	.text._ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED0Ev,"axG",@progbits,_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED5Ev,comdat
	.align 2
	.weak	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED0Ev
	.type	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED0Ev, @function
_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED0Ev:
.LFB6252:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED1Ev
	movq	-8(%rbp), %rax
	movl	$88, %esi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6252:
	.size	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED0Ev, .-_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED0Ev
	.section	.text._ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv,"axG",@progbits,_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv,comdat
	.align 2
	.weak	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv
	.type	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, @function
_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv:
.LFB6253:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE6_M_ptrEv
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_Impl8_M_allocEv
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaI4ChatEE7destroyIS0_EEvRS1_PT_
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6253:
	.size	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, .-_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv
	.section	.text._ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv,"axG",@progbits,_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv,comdat
	.align 2
	.weak	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv
	.type	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, @function
_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv:
.LFB6254:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_Impl8_M_allocEv
	movq	%rax, %rdx
	leaq	-33(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSaISt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEEC1IS0_EERKSaIT_E
	movq	-56(%rbp), %rdx
	leaq	-33(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEEC1ERS6_PS5_
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EED1Ev
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI4ChatSaIS1_ELN9__gnu_cxx12_Lock_policyE2EEEED1Ev
	leaq	-33(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaISt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EEED1Ev
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L1099
	call	__stack_chk_fail@PLT
.L1099:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6254:
	.size	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, .-_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv
	.section	.text._ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info,"axG",@progbits,_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info,comdat
	.align 2
	.weak	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info
	.type	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info, @function
_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info:
.LFB6255:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE6_M_ptrEv
	movq	%rax, -8(%rbp)
	call	_ZNSt19_Sp_make_shared_tag5_S_tiEv
	cmpq	%rax, -32(%rbp)
	je	.L1101
	movq	-32(%rbp), %rax
	leaq	_ZTISt19_Sp_make_shared_tag(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNKSt9type_infoeqERKS_
	testb	%al, %al
	je	.L1102
.L1101:
	movl	$1, %eax
	jmp	.L1103
.L1102:
	movl	$0, %eax
.L1103:
	testb	%al, %al
	je	.L1104
	movq	-8(%rbp), %rax
	jmp	.L1105
.L1104:
	movl	$0, %eax
.L1105:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6255:
	.size	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info, .-_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info
	.section	.text._ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_Impl8_M_allocEv,"axG",@progbits,_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_Impl8_M_allocEv,comdat
	.align 2
	.weak	_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_Impl8_M_allocEv
	.type	_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_Impl8_M_allocEv, @function
_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_Impl8_M_allocEv:
.LFB6256:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14_Sp_ebo_helperILi0ESaI4UserELb1EE6_S_getERS2_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6256:
	.size	_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_Impl8_M_allocEv, .-_ZNSt23_Sp_counted_ptr_inplaceI4UserSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_Impl8_M_allocEv
	.section	.text._ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_Impl8_M_allocEv,"axG",@progbits,_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_Impl8_M_allocEv,comdat
	.align 2
	.weak	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_Impl8_M_allocEv
	.type	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_Impl8_M_allocEv, @function
_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_Impl8_M_allocEv:
.LFB6257:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14_Sp_ebo_helperILi0ESaI4ChatELb1EE6_S_getERS2_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6257:
	.size	_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_Impl8_M_allocEv, .-_ZNSt23_Sp_counted_ptr_inplaceI4ChatSaIS0_ELN9__gnu_cxx12_Lock_policyE2EE5_Impl8_M_allocEv
	.section	.text._ZNSt16allocator_traitsISaI4ChatEE7destroyIS0_EEvRS1_PT_,"axG",@progbits,_ZNSt16allocator_traitsISaI4ChatEE7destroyIS0_EEvRS1_PT_,comdat
	.weak	_ZNSt16allocator_traitsISaI4ChatEE7destroyIS0_EEvRS1_PT_
	.type	_ZNSt16allocator_traitsISaI4ChatEE7destroyIS0_EEvRS1_PT_, @function
_ZNSt16allocator_traitsISaI4ChatEE7destroyIS0_EEvRS1_PT_:
.LFB6258:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorI4ChatE7destroyIS1_EEvPT_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6258:
	.size	_ZNSt16allocator_traitsISaI4ChatEE7destroyIS0_EEvRS1_PT_, .-_ZNSt16allocator_traitsISaI4ChatEE7destroyIS0_EEvRS1_PT_
	.section	.text._ZNSt14_Sp_ebo_helperILi0ESaI4UserELb1EE6_S_getERS2_,"axG",@progbits,_ZNSt14_Sp_ebo_helperILi0ESaI4UserELb1EE6_S_getERS2_,comdat
	.weak	_ZNSt14_Sp_ebo_helperILi0ESaI4UserELb1EE6_S_getERS2_
	.type	_ZNSt14_Sp_ebo_helperILi0ESaI4UserELb1EE6_S_getERS2_, @function
_ZNSt14_Sp_ebo_helperILi0ESaI4UserELb1EE6_S_getERS2_:
.LFB6259:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6259:
	.size	_ZNSt14_Sp_ebo_helperILi0ESaI4UserELb1EE6_S_getERS2_, .-_ZNSt14_Sp_ebo_helperILi0ESaI4UserELb1EE6_S_getERS2_
	.section	.text._ZNSt14_Sp_ebo_helperILi0ESaI4ChatELb1EE6_S_getERS2_,"axG",@progbits,_ZNSt14_Sp_ebo_helperILi0ESaI4ChatELb1EE6_S_getERS2_,comdat
	.weak	_ZNSt14_Sp_ebo_helperILi0ESaI4ChatELb1EE6_S_getERS2_
	.type	_ZNSt14_Sp_ebo_helperILi0ESaI4ChatELb1EE6_S_getERS2_, @function
_ZNSt14_Sp_ebo_helperILi0ESaI4ChatELb1EE6_S_getERS2_:
.LFB6260:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6260:
	.size	_ZNSt14_Sp_ebo_helperILi0ESaI4ChatELb1EE6_S_getERS2_, .-_ZNSt14_Sp_ebo_helperILi0ESaI4ChatELb1EE6_S_getERS2_
	.section	.text._ZN9__gnu_cxx13new_allocatorI4ChatE7destroyIS1_EEvPT_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI4ChatE7destroyIS1_EEvPT_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI4ChatE7destroyIS1_EEvPT_
	.type	_ZN9__gnu_cxx13new_allocatorI4ChatE7destroyIS1_EEvPT_, @function
_ZN9__gnu_cxx13new_allocatorI4ChatE7destroyIS1_EEvPT_:
.LFB6261:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4ChatD1Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6261:
	.size	_ZN9__gnu_cxx13new_allocatorI4ChatE7destroyIS1_EEvPT_, .-_ZN9__gnu_cxx13new_allocatorI4ChatE7destroyIS1_EEvPT_
	.weak	_ZTISt19_Sp_make_shared_tag
	.section	.data.rel.ro._ZTISt19_Sp_make_shared_tag,"awG",@progbits,_ZTISt19_Sp_make_shared_tag,comdat
	.align 8
	.type	_ZTISt19_Sp_make_shared_tag, @object
	.size	_ZTISt19_Sp_make_shared_tag, 16
_ZTISt19_Sp_make_shared_tag:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSSt19_Sp_make_shared_tag
	.weak	_ZTSSt19_Sp_make_shared_tag
	.section	.rodata._ZTSSt19_Sp_make_shared_tag,"aG",@progbits,_ZTSSt19_Sp_make_shared_tag,comdat
	.align 16
	.type	_ZTSSt19_Sp_make_shared_tag, @object
	.size	_ZTSSt19_Sp_make_shared_tag, 24
_ZTSSt19_Sp_make_shared_tag:
	.string	"St19_Sp_make_shared_tag"
	.weak	_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE
	.section	.data.rel.ro._ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE,"awG",@progbits,_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE,comdat
	.align 8
	.type	_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE, @object
	.size	_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE, 16
_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE
	.weak	_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE
	.section	.rodata._ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE,"aG",@progbits,_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE,comdat
	.align 32
	.type	_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE, @object
	.size	_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE, 47
_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE:
	.string	"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE"
	.text
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB6262:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6262:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.weak	__cxa_pure_virtual
	.hidden	DW.ref._ZTISt9exception
	.weak	DW.ref._ZTISt9exception
	.section	.data.rel.local.DW.ref._ZTISt9exception,"awG",@progbits,DW.ref._ZTISt9exception,comdat
	.align 8
	.type	DW.ref._ZTISt9exception, @object
	.size	DW.ref._ZTISt9exception, 8
DW.ref._ZTISt9exception:
	.quad	_ZTISt9exception
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04.1) 11.3.0"
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
