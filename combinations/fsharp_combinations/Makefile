ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@fsharpc --nologo combinations.fs
Windows_NT:
	@fsc /nologo combinations.fs /o combinations.exe
core:
	@dotnet
clean:
	@rm combinations.exe
