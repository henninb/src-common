ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@g++ -std=c++11 permute_print_integer.cpp -o permute_print_integer.exe
Windows_NT:
	@g++ -std=c++11 permute_print_integer.cpp -o permute_print_integer.exe
