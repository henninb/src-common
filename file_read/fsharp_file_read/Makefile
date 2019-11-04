ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@fsharpc --nologo file_read.fs
Windows_NT:
	@fsc /nologo file_read.fs /o file_read.exe
core:
	@dotnet
clean:
	@rm file_read.exe
