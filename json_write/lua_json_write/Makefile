ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
ifeq ($(OS),FreeBSD)
	@luac52 -o json_write.exe json_write.lua
endif
ifeq ($(OS),Linux)
	@luac -o json_write.exe json_write.lua
endif
Windows_NT:
	@luac json_write.lua
clean: