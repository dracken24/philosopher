# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nadesjar <dracken24@gmail.com>             +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/04/11 12:00:19 by nadesjar          #+#    #+#              #
#    Updated: 2022/07/06 15:40:01 by nadesjar         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

LIGHT_RED		=$(shell tput -Txterm setaf 1)
LIGHT_GREEN		=$(shell tput -Txterm setaf 2)
LIGHT_BROWN		=$(shell tput -Txterm setaf 3)
CYAN			=$(shell tput -Txterm setaf 4)
LILAS			=$(shell tput -Txterm setaf 5)
LIGHT_CYAN		=$(shell tput -Txterm setaf 6)
WHITE			=$(shell tput -Txterm setaf 7)
RESET			="\033[0m"

PATH_OBJS 		= ./objs/
PATH_SRC		= ./src/

FILES	 		= $(PATH_SRC)philo.c \

OBJS 			= $(patsubst $(PATH_SRC)%.c, $(PATH_OBJS)%.o, $(FILES)) \

CC 				= gcc
FLAGS 			= -Wall -Wextra -Werror

NAME 			= philo

# REMOVE			= ./src/*.o \

all: $(NAME)

$(NAME): $(OBJS)
	@echo $(LILAS)"COMPILING PHILOSOPHER..."$(RESET)
	gcc $(NAME) $(OBJS) $(FLAGS) -o $(NAME)
	@echo $(LIGHT_GREEN)"PHILOSOPHER READY :)"$(RESET)

$(PATH_OBJS)%.o:	$(PATH_SRC)%.c
	@mkdir -p $(PATH_OBJS)
	$(CC) $(FLAGS) -I. -c $< -o $@

push:
	@(git add .)
	@(git commit -m "nadesjar42")
	@(git push)

pull:
	@(git pull)

clean:
	@rm -f $(OBJS)
	@rm -fr ./objs
	@echo $(LIGHT_GREEN)"BYE BYE"$(RESET)

fclean: clean
	@rm -f $(NAME)

re:	fclean all

.Phony: all push pull clean fclean re
