ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@gfortran recursive_addition.f -o recursive_addition.exe
Windows_NT:
	@gfortran recursive_addition.f -o recursive_addition.exe
