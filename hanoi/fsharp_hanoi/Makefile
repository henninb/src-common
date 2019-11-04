ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@fsharpc --nologo hanoi.fs
Windows_NT:
	@fsc /nologo hanoi.fs /o hanoi.exe
core:
	@dotnet
clean:
	@rm hanoi.exe
