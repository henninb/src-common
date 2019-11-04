ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
ifeq ($(OS),FreeBSD)
	@luac52 -o file_read.exe file_read.lua
endif
ifeq ($(OS),Linux)
	@luac -o file_read.exe file_read.lua
endif
Windows_NT:
	@luac file_read.lua
clean: