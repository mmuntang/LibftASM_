global _ft_strlen

section .text
_ft_strlen:
	xor rcx, rcx
	test rdi, rdi
	jz done

next:
	mov rcx, -1
	mov al, 0x0
	cld
	repne scasb
	not rcx
	dec rcx

done:
	mov rax, rcx
	ret
