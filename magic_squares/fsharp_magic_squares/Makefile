ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@fsharpc --nologo magic_squares.fs
Windows_NT:
	@fsc /nologo magic_squares.fs /o magic_squares.exe
core:
	@dotnet
clean:
	@rm magic_squares.exe
