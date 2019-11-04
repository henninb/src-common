ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
ifeq ($(OS),FreeBSD)
	@luac52 -o timezone.exe timezone.lua
endif
ifeq ($(OS),Linux)
	@luac -o timezone.exe timezone.lua
endif
Windows_NT:
	@luac timezone.lua
clean: