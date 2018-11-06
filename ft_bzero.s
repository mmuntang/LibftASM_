global _ft_bzero

section .text
_ft_bzero:
	mov  r10, rsi
	xor	 rcx, rcx

next:
	cmp   rcx, r10
	jge	  done
	mov  [rdi + rcx],byte 0
	inc	  rcx
	jmp   next

done:
	ret
