ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
ifeq ($(OS),FreeBSD)
	@luac52 -o factorial.exe factorial.lua
endif
ifeq ($(OS),Linux)
	@luac -o factorial.exe factorial.lua
endif
Windows_NT:
	@luac factorial.lua
clean: