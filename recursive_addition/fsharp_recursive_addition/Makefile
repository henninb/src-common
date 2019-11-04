ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@fsharpc --nologo recursive_addition.fs
Windows_NT:
	@fsc /nologo recursive_addition.fs /o recursive_addition.exe
core:
	@dotnet
clean:
	@rm recursive_addition.exe
