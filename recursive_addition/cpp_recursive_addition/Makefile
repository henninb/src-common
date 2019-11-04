ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@g++ -std=c++11 recursive_addition.cpp -o recursive_addition.exe
Windows_NT:
	@g++ -std=c++11 recursive_addition.cpp -o recursive_addition.exe
