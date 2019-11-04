ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@fsharpc --nologo prime.fs
Windows_NT:
	@fsc /nologo prime.fs /o prime.exe
core:
	@dotnet
clean:
	@rm prime.exe
