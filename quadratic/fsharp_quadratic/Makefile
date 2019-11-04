ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@fsharpc --nologo quadratic.fs
Windows_NT:
	@fsc /nologo quadratic.fs /o quadratic.exe
core:
	@dotnet
clean:
	@rm quadratic.exe
