%define MACH_SYSCALL(nb) 0x2000000 | nb
%define STDOUT 1
%define WRITE 4

global _ft_putchar

section .text
_ft_putchar:
	push rbp
	mov rbp, rsp

putchar:
	push rdi
	lea rsi, [rel rsp]
	mov rdi, STDOUT
	mov rdx, 1
	mov rax, MACH_SYSCALL(WRITE)
	syscall
	pop rdi

done:
	mov al, dil
	mov rsp, rbp
	pop rbp
	ret
