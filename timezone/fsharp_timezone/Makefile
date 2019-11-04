ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@fsharpc --nologo timezone.fs
Windows_NT:
	@fsc /nologo timezone.fs /o timezone.exe
core:
	@dotnet
clean:
	@rm timezone.exe
