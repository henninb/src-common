ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@g++ -std=c++11 stream_processing.cpp -o stream_processing.exe
Windows_NT:
	@g++ -std=c++11 stream_processing.cpp -o stream_processing.exe
