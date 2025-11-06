SRCS=$(wildcard src/*.c)
OBJS=$(subst obj, src, $(SRCS:.c=.o))
CC=gcc

CFLAGS=-Iinclude

bin/myapp: $(OBJS)
	$(CC) $^ -o $@

obj/%.o: src/%.c
	$(CC) -c $< -o$@ $(CFLAGS)

clean:
	rm -rf obj/*.o bin/myapp