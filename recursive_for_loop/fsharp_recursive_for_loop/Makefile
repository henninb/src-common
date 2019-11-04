ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@fsharpc --nologo recursive_for_loop.fs
Windows_NT:
	@fsc /nologo recursive_for_loop.fs /o recursive_for_loop.exe
core:
	@dotnet
clean:
	@rm recursive_for_loop.exe
