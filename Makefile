name = tictactoe

CC = cc
CFLAGS = -Wall -Wextra -Werror -g3

LDFLAGS = -lpthread

src = main.c

obj = $(src:.c=.o)

$(name): $(obj)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $(name) $(obj)

all: $(name)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(obj)

fclean: clean
	rm -f $(name)

re: fclean all

.PHONY: all clean fclean re
