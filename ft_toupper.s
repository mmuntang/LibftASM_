# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_toupper.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mmuntang <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/07/09 10:09:33 by mmuntang          #+#    #+#              #
#    Updated: 2018/07/09 10:11:08 by mmuntang         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_toupper

section .text
_ft_toupper:
	mov rax, rdi
	cmp rdi, 0x61
	jl return
	cmp rdi, 0x7a
	jg return

upper:
	sub rax, 0x20
	jmp return

return:
	ret
