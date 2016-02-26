CC=gdc
CFLAGS=-g

SRC=problem1.d problem2.d
OBJ=$(SRC:.d=.o)

all: problem1 problem2 problem3

problem1: problem1.o

problem2: problem2.o

problem3: problem3.o

%.o: %.d
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f *.o *.out
