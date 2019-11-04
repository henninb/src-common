ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@gfortran anagram.f -o anagram.exe
Windows_NT:
	@gfortran anagram.f -o anagram.exe
