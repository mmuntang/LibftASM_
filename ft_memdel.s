global _ft_memdel
extern _free

section .text

_ft_memdel:
	push rbp
	mov rbp, rsp

	sub rsp, 16

	test rdi, rdi
	jz done

memory_free:
	mov [rbp - 8], rdi
	mov rax, [rbp - 8]
	mov rdi, [rax]
	call _free
	mov rax, [rbp - 8]
	mov qword[rax], 0

done:
	add rsp, 16
	pop rbp
	ret
