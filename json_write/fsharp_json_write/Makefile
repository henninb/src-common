ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@fsharpc --nologo json_write.fs
Windows_NT:
	@fsc /nologo json_write.fs /o json_write.exe
core:
	@dotnet
clean:
	@rm json_write.exe
