# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_memcpy.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mmuntang <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/07/09 10:33:33 by mmuntang          #+#    #+#              #
#    Updated: 2018/07/09 10:35:09 by mmuntang         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_memcpy

section .text
_ft_memcpy:
	mov  rax, rdi
	test rdi, rdi
	jz done
	test rsi, rsi
	jz done
memcpy:
	movsx rcx, edx
	cld
	rep movsb
done:
	ret
