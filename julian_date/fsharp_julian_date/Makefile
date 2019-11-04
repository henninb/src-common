ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@fsharpc --nologo julian_date.fs
Windows_NT:
	@fsc /nologo julian_date.fs /o julian_date.exe
core:
	@dotnet
clean:
	@rm julian_date.exe
