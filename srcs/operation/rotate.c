/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   rotate.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: codespace <codespace@student.42.fr>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/14 15:29:26 by djin              #+#    #+#             */
/*   Updated: 2024/02/23 06:51:49 by codespace        ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "push_swap.h"

void	ra(t_stack *stack_a)
{
	ft_printf("ra\n");
	rotate(stack_a);
}

void	rb(t_stack *stack_b)
{
	ft_printf("rb\n");
	rotate(stack_b);
}

void	rr(t_stack *stack_a, t_stack *stack_b)
{
	ft_printf("rr\n");
	rotate(stack_a);
	rotate(stack_b);
}
