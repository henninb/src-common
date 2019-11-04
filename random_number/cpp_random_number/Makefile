ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@g++ -std=c++11 random_number.cpp -o random_number.exe
Windows_NT:
	@g++ -std=c++11 random_number.cpp -o random_number.exe
