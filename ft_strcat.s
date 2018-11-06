global _ft_strcat

section .text
_ft_strcat:
	xor rcx, rcx
	test rdi, rdi
	jz done
	test rsi, rsi
	jz done

s1:
	mov al, byte[rdi + rcx]
	test al, al
	jz s2
	inc rcx
	jmp s1

s2:
	xor r10, r10
cat:
	mov al, byte[rsi + r10]
	test al, al
	jz done

	mov byte[rdi + rcx], al

	inc rcx
	inc r10
	jmp cat

done:
	mov byte[rdi + rcx], 0
	mov rax, rdi
	ret
