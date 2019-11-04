ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@g++ -std=c++11 lambda_functions.cpp -o lambda_functions.exe
Windows_NT:
	@g++ -std=c++11 lambda_functions.cpp -o lambda_functions.exe
