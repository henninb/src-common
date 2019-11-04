ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@g++ -std=c++11 exception_handler.cpp -o exception_handler.exe
Windows_NT:
	@g++ -std=c++11 exception_handler.cpp -o exception_handler.exe
