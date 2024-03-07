all: sum-test

sum-test: sum.o main.o
	g++ -o sum-test sum.o main.o

main.o: sum.h main.cpp
	g++ -g -c -o main.o main.cpp

sum.o: sum.h sum.cpp
	g++ -g -c -o sum.o sum.cpp

clean:
	rm -f sum-test
	rm -f *.o


