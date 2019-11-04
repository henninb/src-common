ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@gfortran nqueens.f -o nqueens.exe
Windows_NT:
	@gfortran nqueens.f -o nqueens.exe
