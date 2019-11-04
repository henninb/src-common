ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
ifeq ($(OS),FreeBSD)
	@luac52 -o luhn.exe luhn.lua
endif
ifeq ($(OS),Linux)
	@luac -o luhn.exe luhn.lua
endif
Windows_NT:
	@luac luhn.lua
clean: