ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@fsharpc --nologo entry_point.fs
Windows_NT:
	@fsc /nologo entry_point.fs /o entry_point.exe
core:
	@dotnet
clean:
	@rm entry_point.exe
