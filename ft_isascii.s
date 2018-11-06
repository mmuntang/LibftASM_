# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isascii.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mmuntang <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/07/09 09:51:54 by mmuntang          #+#    #+#              #
#    Updated: 2018/07/09 09:54:11 by mmuntang         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_isascii

section .text
_ft_isascii:
	cmp rdi, 0x0
	jl not_ascii
	cmp rdi, 0x7f
	jg not_ascii

is_ascii:
	mov rax, 1
	jmp return

not_ascii:
	mov rax, 0
	jmp return

return:
	ret
