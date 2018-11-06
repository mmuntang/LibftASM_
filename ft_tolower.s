# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_tolower.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mmuntang <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/07/09 10:11:38 by mmuntang          #+#    #+#              #
#    Updated: 2018/07/09 10:13:29 by mmuntang         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_tolower

section .text
_ft_tolower:
	mov rax, rdi
	cmp rdi, 0x41
	jl return
	cmp rdi, 0x5a
	jg return

lower:
	add rax, 0x20
	jg return

return:
	ret
