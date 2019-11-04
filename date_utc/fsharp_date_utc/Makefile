ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@fsharpc --nologo date_utc.fs
Windows_NT:
	@fsc /nologo date_utc.fs /o date_utc.exe
core:
	@dotnet
clean:
	@rm date_utc.exe
