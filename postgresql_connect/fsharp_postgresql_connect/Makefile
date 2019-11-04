ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@fsharpc --nologo postgresql_connect.fs
Windows_NT:
	@fsc /nologo postgresql_connect.fs /o postgresql_connect.exe
core:
	@dotnet
clean:
	@rm postgresql_connect.exe
