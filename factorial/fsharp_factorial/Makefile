ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@fsharpc --nologo factorial.fs
Windows_NT:
	@fsc /nologo factorial.fs /o factorial.exe
core:
	@dotnet
clean:
	@rm factorial.exe
