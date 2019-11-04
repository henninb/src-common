ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
ifeq ($(OS),FreeBSD)
	@luac52 -o linked_list.exe linked_list.lua
endif
ifeq ($(OS),Linux)
	@luac -o linked_list.exe linked_list.lua
endif
Windows_NT:
	@luac linked_list.lua
clean: