/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: djin <djin@student.42.fr>                  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/14 15:44:51 by djin              #+#    #+#             */
/*   Updated: 2024/02/14 16:06:32 by djin             ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "push_swap.h"

int	main(int argc, char **argv)
{
	int		i;
	t_node	*stack_a;
	t_node	*stack_b;

	i = 0;
	stack_a = NULL;
	stack_b = NULL;
	if (argc == 1)
		return (0);
	if (argc == 2)
		argv = ft_split(argv[1], ' ');
	if (argc == 2)
		i = -1;
	if (argc > 1)
		add_node(&stack_a, &i, argv);
	push_swap(&stack_a, &stack_b);
	print_stack(stack_a, stack_b);
}
