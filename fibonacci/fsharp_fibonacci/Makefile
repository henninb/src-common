ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@fsharpc --nologo fibonacci.fs
Windows_NT:
	@fsc /nologo fibonacci.fs /o fibonacci.exe
core:
	@dotnet
clean:
	@rm fibonacci.exe
