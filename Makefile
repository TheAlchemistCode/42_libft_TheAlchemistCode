
NAME	= libft.a

# List of source files (add all your mandatory functions here)
SRC	= 	\
		ft_atoi.c \
		ft_bzero.c \
		ft_calloc.c \
		ft_isalnum.c \
		ft_isalpha.c \
		ft_isascii.c \
		ft_isdigit.c \
		ft_isprint.c \
		ft_itoa.c \
		ft_memchr.c \
		ft_memcmp.c \
		ft_memcpy.c \
		ft_memmove.c \
		ft_memset.c \
		ft_putnbr_fd.c \
		ft_putstr_fd.c \
		ft_putchar_fd.c \
		ft_putendl_fd.c \
		ft_split.c \
		ft_strchr.c \
		ft_strdup.c \
		ft_striteri.c \
		ft_strjoin.c \
		ft_strlcat.c \
		ft_strlcpy.c \
		ft_strlen.c \
		ft_strmapi.c \
		ft_strncmp.c \
		ft_strnstr.c \
		ft_strrchr.c \
		ft_strtrim.c \
		ft_substr.c \
		ft_tolower.c \
		ft_toupper.c

OBJ	= $(SRC:.c=.o)

CC	= cc
CFLAGS	= -Wall -Wextra -Werror
AR	= ar rcs
RM	= rm -f

# Default target$(RM) $(NAME) 
all: $(NAME)

$(NAME): $(OBJ)
	$(AR) $(NAME) $(OBJ)

# Clean object files
clean:
	$(RM) $(OBJ)

# Clean object files and library
fclean: clean
	$(RM) $(NAME)

# Rebuild everything
re: fclean all

# Rule for object files
%.o: %.c libft.h
	$(CC) $(CFLAGS) -c $< -o $@

.PHONY: all clean fclean re

so:
	$(CC) -fPIC $(CFLAGS) -nostartfiles $(SRC)
	$(CC) -shared -o libft.so $(OBJ)
