ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@g++ -std=c++11 epoch_conversion.cpp -o epoch_conversion.exe
Windows_NT:
	@g++ -std=c++11 epoch_conversion.cpp -o epoch_conversion.exe
