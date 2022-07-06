/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   philo.h                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nadesjar <dracken24@gmail.com>             +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/07/06 14:56:17 by nadesjar          #+#    #+#             */
/*   Updated: 2022/07/06 15:38:30 by nadesjar         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef PHILO_H
# define PHILO_H

# include <pthread.h>
# include <stdlib.h>
# include <stdio.h>

typedef struct s_ct{
	int		i;
	int		k;
	int		ii;
	int		kk;
}	t_ct;

typedef struct s_all{
	int		argc;
	char	**argv;
	t_ct	ct;
}	t_all;

void	check_entry(t_all *all);

int		ft_isdigit(int c);

#endif