ifeq ($(DEBUG), true)		
	CC = gcc -g
else
	CC = gcc
endif

all: main.o
	gcc -o testrandfile main.o

main.o: main.c
	gcc -c main.c

run:
	./testrandfile

clean:
	rm *.o
	rm testrandfile
	rm rand
	rm *~

memcheck:
	valgrind --leak-check=yes ./testrandfile
