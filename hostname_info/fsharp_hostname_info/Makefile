ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@fsharpc --nologo hostname_info.fs
Windows_NT:
	@fsc /nologo hostname_info.fs /o hostname_info.exe
core:
	@dotnet
clean:
	@rm hostname_info.exe
