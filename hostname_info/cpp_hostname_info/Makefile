ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@g++ -std=c++11 hostname_info.cpp -o hostname_info.exe
Windows_NT:
	@g++ -std=c++11 hostname_info.cpp -o hostname_info.exe
