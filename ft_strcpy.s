global _ft_strcpy

section .text
_ft_strcpy:
	mov rax, rdi
	test rdi, rdi
	jz done
	test rsi, rsi
	jz done

	mov r8, rdi
	mov r9, rsi
	xor rcx, rcx

next:
	cmp byte[rsi + rcx], 0x0
	mov al, byte[rsi + rcx]
	mov byte[rdi + rcx], al
	je end
	inc rcx
	jmp next

end:
	mov rdi, r8
	mov rsi, r9
	mov rax, rdi

done:
	ret
