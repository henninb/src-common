ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
ifeq ($(OS),FreeBSD)
	@luac52 -o hostname_info.exe hostname_info.lua
endif
ifeq ($(OS),Linux)
	@luac -o hostname_info.exe hostname_info.lua
endif
Windows_NT:
	@luac hostname_info.lua
clean: