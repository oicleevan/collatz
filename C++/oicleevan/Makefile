CC := g++
CCFLAGS := -std=c++11

SRCDIR := src
BUILDDIR := build
BINDIR := bin

TARGET := ${BINDIR}/collatz

make: compile link

compile:
	mkdir -p ${BUILDDIR}
	${CC} ${SRCDIR}/collatz.cpp ${BUILDDIR}/collatz.o
	
link:
	mkdir -p ${BINDIR}
	${CC} ${BUILDDIR}/collatz -o ${TARGET}

clean:
	rm -r ${BUILDDIR}
