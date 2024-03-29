ifeq ($(DEBUG), true)
	CC = gcc -g
else
	CC = gcc
endif


all: main.o
	$(CC) -o prog.out main.o

main.o: main.c
	$(CC) -c main.c

run:
	./prog
	make clean

clean:
	rm *.o *.out
