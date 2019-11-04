ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@gfortran permute_print_integer.f -o permute_print_integer.exe
Windows_NT:
	@gfortran permute_print_integer.f -o permute_print_integer.exe
