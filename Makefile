CFLAGS := -m32 -g -std=c99 -Wall -Wextra -Wpedantic
CFLAGS += -O1 -fno-pic -fno-omit-frame-pointer -no-pie
ASFLAGS = $(CFLAGS)


ASMS := $(wildcard *.S)
SRCS := $(wildcard *.c)

# Como en este lab el código de cada programa reside en un
# único archivo, los wildcard transformarán prog.c o prog.S
# directamente a "prog", sin usar compilación intermedia; esto
# es, sin que make llegue a recibir prog.o como objetivo.
PROG := $(patsubst %.S, %, $(ASMS))
PROG += $(patsubst %.c, %, $(SRCS))

all: $(PROG)

hello: hello.c lib/exit.c
sys_%: sys_%.S
	$(CC) $(ASFLAGS) $(CPPFLAGS) -nostartfiles $< -o $@
clean:
	rm -f $(PROG) *.o core

.PHONY: clean all
