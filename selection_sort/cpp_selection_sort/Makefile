ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@g++ -std=c++11 selection_sort.cpp -o selection_sort.exe
Windows_NT:
	@g++ -std=c++11 selection_sort.cpp -o selection_sort.exe
