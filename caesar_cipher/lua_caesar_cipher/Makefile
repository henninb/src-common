ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
ifeq ($(OS),FreeBSD)
	@luac52 -o caesar_cipher.exe caesar_cipher.lua
endif
ifeq ($(OS),Linux)
	@luac -o caesar_cipher.exe caesar_cipher.lua
endif
Windows_NT:
	@luac caesar_cipher.lua
clean: