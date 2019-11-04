ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@fsharpc --nologo file_write.fs
Windows_NT:
	@fsc /nologo file_write.fs /o file_write.exe
core:
	@dotnet
clean:
	@rm file_write.exe
