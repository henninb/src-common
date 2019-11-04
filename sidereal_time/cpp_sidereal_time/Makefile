ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@g++ -std=c++11 sidereal_time.cpp -o sidereal_time.exe
Windows_NT:
	@g++ -std=c++11 sidereal_time.cpp -o sidereal_time.exe
