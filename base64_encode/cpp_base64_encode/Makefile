ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@g++ -std=c++11 base64_encode.cpp -o base64_encode.exe
Windows_NT:
	@g++ -std=c++11 base64_encode.cpp -o base64_encode.exe
