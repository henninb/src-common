ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@fsharpc --nologo nqueens.fs
Windows_NT:
	@fsc /nologo nqueens.fs /o nqueens.exe
core:
	@dotnet
clean:
	@rm nqueens.exe
