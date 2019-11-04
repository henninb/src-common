ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
ifeq ($(OS),FreeBSD)
	@luac52 -o exception_handler.exe exception_handler.lua
endif
ifeq ($(OS),Linux)
	@luac -o exception_handler.exe exception_handler.lua
endif
Windows_NT:
	@luac exception_handler.lua
clean: