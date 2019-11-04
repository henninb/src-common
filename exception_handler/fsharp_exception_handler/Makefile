ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@fsharpc --nologo exception_handler.fs
Windows_NT:
	@fsc /nologo exception_handler.fs /o exception_handler.exe
core:
	@dotnet
clean:
	@rm exception_handler.exe
