global _ft_memcmp

section .text
_ft_memcmp:
	mov rax, -1
	test rdi, rdi
	jz done
	test rsi,rsi
	jz done

strcmp:
	mov r8, rdi
	mov r9, rsi

	xor rcx, rcx
	xor rax, rax
	xor rbx, rbx
	sub rdx, 1
next:
	mov al, byte[rdi + rcx]
	mov bl, byte[rsi + rcx]
	
	cmp rcx, rdx
	jge end
	add rcx, 1

	cmp al, bl
	je next

end:
	sub rax, rbx
	mov rdi, r8
	mov rsi, r9
done:
	ret
