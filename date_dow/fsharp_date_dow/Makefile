ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@fsharpc --nologo date_dow.fs
Windows_NT:
	@fsc /nologo date_dow.fs /o date_dow.exe
core:
	@dotnet
clean:
	@rm date_dow.exe
