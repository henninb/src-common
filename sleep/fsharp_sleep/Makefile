ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@fsharpc --nologo sleep.fs
Windows_NT:
	@fsc /nologo sleep.fs /o sleep.exe
core:
	@dotnet
clean:
	@rm sleep.exe
