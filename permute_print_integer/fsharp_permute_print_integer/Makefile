ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@fsharpc --nologo permute_print_integer.fs
Windows_NT:
	@fsc /nologo permute_print_integer.fs /o permute_print_integer.exe
core:
	@dotnet
clean:
	@rm permute_print_integer.exe
