
global _ft_strdup
extern _ft_strlen
extern _malloc

section .text
_ft_strdup:	
	push rbp
	mov rbp, rsp

	mov rax, rdi
	test rdi, rdi
	jz done

len:
	push rdi
	call _ft_strlen
	pop rdi

memory_alloc:

	inc rax
	mov r10, rdi

	mov rdi, rax

	push r10
	push rdi

	sub rsp, 16
	call _malloc
	add rsp, 16

duplicate:

	pop rcx
	pop rsi

	mov rdi, rax

	cld
	rep movsb

done:
	mov rsp, rbp
	pop rbp
	ret
