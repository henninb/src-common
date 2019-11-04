ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@gfortran quadratic.f -o quadratic.exe
Windows_NT:
	@gfortran quadratic.f -o quadratic.exe
