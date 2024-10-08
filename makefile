CC=gcc
CFLAGS=-I. -g
DEPS = *.h
OBJ = Question1.o testCases.o

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

Lab0: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)

#testCompile: AllTests.c testCases.c CuTest.c Question1.c
#	gcc -o testLab0 AllTests.c testCases.c CuTest.c Question1.c

test:	testLab0
testLab0:
# next line must start with a real TAB (ASCII 9)
	./run.sh

.PHONY: clean

clean:
	$(RM) *.o *.exe Lab0
