ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@fsharpc --nologo anagram.fs
Windows_NT:
	@fsc /nologo anagram.fs /o anagram.exe
core:
	@dotnet
clean:
	@rm anagram.exe
