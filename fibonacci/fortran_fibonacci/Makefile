ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@gfortran fibonacci.f -o fibonacci.exe
Windows_NT:
	@gfortran fibonacci.f -o fibonacci.exe
