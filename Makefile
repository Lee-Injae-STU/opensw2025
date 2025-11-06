SRCS=$(wildcard src/*.c)
OBJS=$(subst obj, src, $(SRCS:.c=.o))
CFLAGS=-Iinclude

bin/myapp: $(OBJS)
	gcc $^ -o $@

obj/%.o: src/%.c
	gcc -c $< -o$@ $(CFLAGS)

clean:
	rm -rf obj/*.o bin/myapp