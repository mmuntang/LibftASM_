# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isdigit.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mmuntang <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/07/09 09:40:27 by mmuntang          #+#    #+#              #
#    Updated: 2018/07/09 09:42:36 by mmuntang         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_isdigit

section .text
_ft_isdigit:
	cmp rdi, 0x30
	jl  not_digit

	cmp rdi, 0x39
	jg not_digit

is_digit:
	mov rax, 1
	jmp return

not_digit:
	mov rax, 0
	jmp return

return:
	ret
