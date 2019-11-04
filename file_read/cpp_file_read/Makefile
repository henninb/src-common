ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@g++ -std=c++11 file_read.cpp -o file_read.exe
Windows_NT:
	@g++ -std=c++11 file_read.cpp -o file_read.exe
