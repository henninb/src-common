ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@fsharpc --nologo easter_calculator.fs
Windows_NT:
	@fsc /nologo easter_calculator.fs /o easter_calculator.exe
core:
	@dotnet
clean:
	@rm easter_calculator.exe
