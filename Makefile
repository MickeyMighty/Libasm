NAME=libasm.a

SRC=ft_strlen.s\
    ft_strcpy.s\
    ft_strcmp.s

OBJ=$(SRC:.s=.o)

all: $(NAME)

$(NAME): $(OBJ)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

%.o: %.s
	nasm -f elf64 -o $@ $<

clean:
	rm -rf $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

