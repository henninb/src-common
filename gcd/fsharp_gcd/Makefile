ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@fsharpc --nologo gcd.fs
Windows_NT:
	@fsc /nologo gcd.fs /o gcd.exe
core:
	@dotnet
clean:
	@rm gcd.exe
