
global _ft_isalnum
extern _ft_isalpha
extern	_ft_isdigit

section .text
_ft_isalnum:
	call _ft_isalpha
	mov r12, rax

	push r12
	call _ft_isdigit
	pop r12

	mov r13, rax
	or r12, r13, 
	cmp r12, 0
	je not_alnum
	mov rax, 1
	jmp return

not_alnum:
	mov rax, 0
	jmp return

return:
	ret
