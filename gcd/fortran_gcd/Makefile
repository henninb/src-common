ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@gfortran gcd.f -o gcd.exe
Windows_NT:
	@gfortran gcd.f -o gcd.exe
