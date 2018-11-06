# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isalpha.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mmuntang <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/07/09 09:17:53 by mmuntang          #+#    #+#              #
#    Updated: 2018/07/09 09:24:06 by mmuntang         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_isalpha

section .text
_ft_isalpha:
	cmp rdi, 0x41
	jl not_alpha

	cmp rdi, 0x7a
	jg not_alpha

	cmp rdi, 0x5a
	jle is_alpha

	cmp rdi, 0x61
	jge is_alpha

	jmp not_alpha

is_alpha:
	mov rax, 1
	jmp return

not_alpha:
	mov rax, 0
	jmp return

return:
	ret
