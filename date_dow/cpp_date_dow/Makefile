ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@g++ -std=c++11 date_dow.cpp -o date_dow.exe
Windows_NT:
	@g++ -std=c++11 date_dow.cpp -o date_dow.exe
