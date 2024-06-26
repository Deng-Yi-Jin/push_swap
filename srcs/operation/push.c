/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   push.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: geibo <geibo@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/14 14:52:19 by djin              #+#    #+#             */
/*   Updated: 2024/04/01 16:16:44 by geibo            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "push_swap.h"

void	pa(t_stack *stack_a, t_stack *stack_b, bool print)
{
	if (print)
		ft_printf("pa\n");
	push(stack_b, stack_a);
}

void	pb(t_stack *stack_a, t_stack *stack_b, bool print)
{
	if (print)
		ft_printf("pb\n");
	push(stack_a, stack_b);
}
