SRCS=$(wildcard src/*.c)
OBJS=$(subst obj, src, $(SRCS):.c=.o)
CFLAGS=-Iinclude

.PHONY: clean

bin/myapp: $(OBJS)
	gcc $^ -o $@

obj/%.o: src/%.c
	gcc -c $< -o$@ $(CFLAGS)

clean:
	rm -rf obj/*.o bin/myapp