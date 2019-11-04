ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@fsharpc --nologo celsius_conversion.fs
Windows_NT:
	@fsc /nologo celsius_conversion.fs /o celsius_conversion.exe
core:
	@dotnet
clean:
	@rm celsius_conversion.exe
