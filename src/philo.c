/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   philo.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nadesjar <dracken24@gmail.com>             +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/07/06 14:55:57 by nadesjar          #+#    #+#             */
/*   Updated: 2022/07/06 15:37:31 by nadesjar         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/philo.h"

int	main(int argc, char **argv)
{
	t_all	all;
	
	all.argc = argc;
	all.argv = argv;
	if (argc == 6)
	{
		check_entry(&all);
	}
	return (0);
}

// number_of_philosophers    time_to_die     time_to_eat    time_to_sleep    [number_of_times_each_philosopher_must_eat]

void	check_entry(t_all *all)
{
	all->ct.i = 0;
	while (all->argv[++all->ct.i])
	{
		if (!ft_isdigit(all->argv[all->ct.i][0]))
			exit(-1);
	}
}

int ft_isdigit(int c)
{
	if (!(c >= '0' && c <= '9'))
		return (0);
	return (1);
}
