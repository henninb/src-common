ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@gfortran magic_squares.f -o magic_squares.exe
Windows_NT:
	@gfortran magic_squares.f -o magic_squares.exe
