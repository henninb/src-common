ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@fsharpc --nologo roman.fs
Windows_NT:
	@fsc /nologo roman.fs /o roman.exe
core:
	@dotnet
clean:
	@rm roman.exe
