ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@fsharpc --nologo linked_list.fs
Windows_NT:
	@fsc /nologo linked_list.fs /o linked_list.exe
core:
	@dotnet
clean:
	@rm linked_list.exe
