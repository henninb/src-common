ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@fsharpc --nologo date_today.fs
Windows_NT:
	@fsc /nologo date_today.fs /o date_today.exe
core:
	@dotnet
clean:
	@rm date_today.exe
