ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
ifeq ($(OS),FreeBSD)
	@luac52 -o hanoi.exe hanoi.lua
endif
ifeq ($(OS),Linux)
	@luac -o hanoi.exe hanoi.lua
endif
Windows_NT:
	@luac hanoi.lua
clean: