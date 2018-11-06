%define MACH_SYSCALL(nb) 0x2000000 | nb
%define STDOUT 1
%define READ 3
%define WRITE 4
%define SIZE 0x200

global _ft_cat

section .bss
buffer:
	.buf resb SIZE

section .text
_ft_cat:
	push rbp
	mov rbp, rsp

init_data:
	mov rdx, SIZE
	lea rsi, [rel buffer.buf]

cat:
	push rdi
	push rdx
	push rsi

	mov rax, MACH_SYSCALL(READ)
	syscall
	jc error

	mov rdi, STDOUT
	mov rdx, rax 
	pop rsi 

	push rsi 
	push rax 

	mov rax, MACH_SYSCALL(WRITE)
	syscall
	jc error

	pop rax
	pop rsi
	pop rdx
	pop rdi

	cmp rax, 0 
	jg cat

done:
	mov rsp, rbp
	pop rbp
	ret

error:
	mov rax, -1
	jmp done

