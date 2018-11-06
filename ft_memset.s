global _ft_memset

section .text
_ft_memset:
	test rdi, rdi
	jz done
	mov rcx, rdx
memset:
	cld
	mov r10, rdi
	mov al, sil
	rep stosb
	mov rdi, r10
done:
	mov rax, rdi
	ret
