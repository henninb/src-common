ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@rm -f example.exe
	@gsc -exe example.scm
	@mv example example.exe
Windows_NT:
	echo Windows_NT
clean:
	@rm example.exe
