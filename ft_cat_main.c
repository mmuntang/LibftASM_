/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_cat_main.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ldamulel <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/07/13 09:50:00 by ldamulel          #+#    #+#             */
/*   Updated: 2018/07/20 12:13:51 by mmuntang         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <stdlib.h>
#include <strings.h>
#include <ctype.h>
#include <unistd.h>
#include <assert.h>
#include "libfts.h"

int		main(int c, char **v)
{
	int fd = open(v[1], O_RDONLY);

	ft_cat(fd);
	return (0);
}
