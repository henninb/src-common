ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@fsharpc --nologo factors.fs
Windows_NT:
	@fsc /nologo factors.fs /o factors.exe
core:
	@dotnet
clean:
	@rm factors.exe
