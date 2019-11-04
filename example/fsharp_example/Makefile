ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@fsharpc --nologo example.fs
Windows_NT:
	@fsc /nologo example.fs /o example.exe
core:
	@dotnet
clean:
	@rm example.exe
