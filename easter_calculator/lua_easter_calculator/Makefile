ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
ifeq ($(OS),FreeBSD)
	@luac52 -o easter_calculator.exe easter_calculator.lua
endif
ifeq ($(OS),Linux)
	@luac -o easter_calculator.exe easter_calculator.lua
endif
Windows_NT:
	@luac easter_calculator.lua
clean: