ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@fsharpc --nologo random_number.fs
Windows_NT:
	@fsc /nologo random_number.fs /o random_number.exe
core:
	@dotnet
clean:
	@rm random_number.exe
