
NAME = push_swap
CC = gcc
RM = rm -rf
CFLAGS = -Wall -Werror -Wextra #-ggdb -fsanitize=address
INCLUDES = -Iincludes -Ilib/libft -Ilib/ft_printf

# Source files
SRCS_DIR = srcs
OPERATION_DIR = operation
MAIN_DIR = main
CHECK_DIR = check
LINKEDLIST_DIR = linkedlist
SORTING_DIR = sorting
CHECKER_DIR = checker
GNL_DIR = GetNextLine
SRCS_FILES = $(addprefix $(MAIN_DIR)/, main.c) \
						 $(addprefix $(CHECK_DIR)/, checks.c checks2.c checks3.c check_numbers.c) \
						 $(addprefix $(LINKEDLIST_DIR)/, lst_create.c lst_count_num.c) \
						 $(addprefix $(OPERATION_DIR)/, operation_utils.c operation.c push.c reverse_rotate.c rotate.c swap.c) \
						 $(addprefix $(SORTING_DIR)/, count_steps.c lets_sort_acending.c lets_sort_decending.c run_steps_utils.c sort_big_utils.c sort_big.c sort_decending.c sorting_utils.c sorting_utils2.c sorting.c) \

SRCS = $(addprefix $(SRCS_DIR)/,$(SRCS_FILES))

SRCS_FILES_BONUS = $(addprefix $(CHECKER_DIR)/, checker.c checker_utils.c) \
								$(addprefix $(GNL_DIR)/, get_next_line.c) \
								$(addprefix $(CHECK_DIR)/, checks.c checks2.c checks3.c check_numbers.c) \
								$(addprefix $(OPERATION_DIR)/, operation_utils.c operation.c push.c reverse_rotate.c rotate.c swap.c) \
								$(addprefix $(LINKEDLIST_DIR)/, lst_create.c lst_count_num.c) \
								$(addprefix $(SORTING_DIR)/, count_steps.c lets_sort_acending.c lets_sort_decending.c run_steps_utils.c sort_big_utils.c sort_big.c sort_decending.c sorting_utils.c sorting_utils2.c sorting.c) \

SRCS_BONUS = $(addprefix $(SRCS_DIR)/,$(SRCS_FILES_BONUS))

# Object files
OBJS_DIR = objs
OBJS_DIRS = $(OBJS_DIR) $(OBJS_DIR)/$(MAIN_DIR) $(OBJS_DIR)/$(OPERATION_DIR) $(OBJS_DIR)/$(CHECK_DIR) $(OBJS_DIR)/$(LINKEDLIST_DIR) $(OBJS_DIR)/$(SORTING_DIR)
OBJS_FILES = $(patsubst %.c,%.o,$(SRCS_FILES))
OBJS = $(addprefix $(OBJS_DIR)/,$(OBJS_FILES))

# Bonus object files
OBJS_DIR_BONUS = objs_bonus
OBJS_DIRS_BONUS = $(OBJS_DIR_BONUS) $(OBJS_DIR_BONUS)/$(CHECKER_DIR) $(OBJS_DIR_BONUS)/$(OPERATION_DIR) $(OBJS_DIR_BONUS)/$(CHECK_DIR) $(OBJS_DIR_BONUS)/$(LINKEDLIST_DIR) $(OBJS_DIR_BONUS)/$(SORTING_DIR) $(OBJS_DIR_BONUS)/$(GNL_DIR)
OBJS_FILES_BONUS = $(patsubst %.c,%.o,$(SRCS_FILES_BONUS))
OBJS_BONUS = $(addprefix $(OBJS_DIR_BONUS)/,$(OBJS_FILES_BONUS))

# Librairies
LIBFT_DIR = lib/libft
LIBFT = $(LIBFT_DIR)/libft.a

PRINTF_DIR = lib/ft_printf
PRINTF = $(PRINTF_DIR)/libftprintf.a

LIBS = -L$(LIBFT_DIR) -L$(PRINTF_DIR) -lft -lftprintf

# Colors and text formatting
RESET = \033[0m
BOLD = \033[1m
DIM = \033[2m
UNDERLINE = \033[4m
BLINK = \033[5m
INVERT = \033[7m
CYAN = \033[36m
YELLOW = \033[93m
MAGENTA = \033[35m
GREEN = \033[92m
PURPLE = \033[91m
LMAGENTA = \033[95m

# Makefile rules
all: $(NAME)

$(NAME): $(OBJS) $(LIBFT) $(PRINTF)
	@echo "$(BOLD)$(LMAGENTA)Linking objects...$(RESET)"
	@$(CC) $(CFLAGS) $(INCLUDES) $(OBJS) $(LIBS) -o $(NAME)
	@echo "$(BOLD)$(LMAGENTA)$(NAME)$(RESET)$(BOLD) has been created$(RESET)"
	@echo " /\_/\ "
	@echo "( o.o )"
	@echo " > ^ <"
	@echo "$(MAGENTA)created by: $(BOLD)$(YELLOW)Lucas$(RESET)"

$(OBJS_DIR)/%.o: $(SRCS_DIR)/%.c
	@mkdir -p $(OBJS_DIRS)
	@echo "$(BOLD)$(MAGENTA)Compiling $<...$(RESET)"
	@$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

bonus: $(OBJS_BONUS) $(LIBFT) $(PRINTF)
	@echo "$(BOLD)$(LMAGENTA)Linking objects...$(RESET)"
	@$(CC) $(CFLAGS) $(INCLUDES) $(OBJS_BONUS) $(LIBS) -o checker
	@echo "$(BOLD)$(LMAGENTA)$(NAME)$(RESET)$(BOLD) has been created$(RESET)"
	@echo " /\_/\ "
	@echo "( o.o )"
	@echo " > ^ <"
	@echo "$(MAGENTA)created by: $(BOLD)$(YELLOW)Lucas$(RESET)"

$(OBJS_DIR_BONUS)/%.o: $(SRCS_DIR)/%.c
	@mkdir -p $(OBJS_DIRS_BONUS)
	@echo "$(BOLD)$(MAGENTA)Compiling $<...$(RESET)"
	@$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

$(LIBFT):
	@echo "$(BOLD)$(GREEN)Compiling libft...$(RESET)"
	@make -C $(LIBFT_DIR) -s

$(PRINTF):
	@echo "$(BOLD)$(PURPLE)Compiling ft_printf...$(RESET)"
	@make -C $(PRINTF_DIR) -s

clean:
	@echo "$(BOLD)$(CYAN)Cleaning objects files...$(RESET)"
	@$(RM) $(OBJS_DIR) $(OBJS_DIR_BONUS)
	@make -C $(LIBFT_DIR) clean -s
	@make -C $(PRINTF_DIR) clean -s

fclean: clean
	@echo "$(BOLD)$(CYAN)Cleaning $(NAME)...$(RESET)"
	@$(RM) $(NAME) checker
	@make -C $(LIBFT_DIR) fclean -s
	@make -C $(PRINTF_DIR) fclean -s
	@echo "$(BOLD)$(CYAN)Cleaning $(NAME) done$(RESET)"
	@echo " /\_/\ "
	@echo "( o.o )"
	@echo " > ^ <"
	@echo "$(MAGENTA)Thanks for using$(RESET)"

re: fclean all

re_bonus: fclean bonus

PHONY: all clean fclean re re_bonus bonus