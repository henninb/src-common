ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: Windows_NT
Windows_NT:
	@nasm -f Windows_NT example.asm -o example.o
	@gcc example.c example.o -o example.exe -O2 -Wall
	@del example.o
unix:
clean:
