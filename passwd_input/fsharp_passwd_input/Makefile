ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@fsharpc --nologo passwd_input.fs
Windows_NT:
	@fsc /nologo passwd_input.fs /o passwd_input.exe
core:
	@dotnet
clean:
	@rm passwd_input.exe
