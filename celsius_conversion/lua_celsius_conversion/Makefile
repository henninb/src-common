ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
ifeq ($(OS),FreeBSD)
	@luac52 -o celsius_conversion.exe celsius_conversion.lua
endif
ifeq ($(OS),Linux)
	@luac -o celsius_conversion.exe celsius_conversion.lua
endif
Windows_NT:
	@luac celsius_conversion.lua
clean: