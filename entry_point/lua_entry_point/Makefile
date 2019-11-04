ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
ifeq ($(OS),FreeBSD)
	@luac52 -o entry_point.exe entry_point.lua
endif
ifeq ($(OS),Linux)
	@luac -o entry_point.exe entry_point.lua
endif
Windows_NT:
	@luac entry_point.lua
clean: