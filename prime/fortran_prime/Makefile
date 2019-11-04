ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@gfortran prime.f -o prime.exe
Windows_NT:
	@gfortran prime.f -o prime.exe
