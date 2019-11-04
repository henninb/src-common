ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@gfortran recursive_for_loop.f -o recursive_for_loop.exe
Windows_NT:
	@gfortran recursive_for_loop.f -o recursive_for_loop.exe
