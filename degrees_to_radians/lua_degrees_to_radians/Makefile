ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
ifeq ($(OS),FreeBSD)
	@luac52 -o degrees_to_radians.exe degrees_to_radians.lua
endif
ifeq ($(OS),Linux)
	@luac -o degrees_to_radians.exe degrees_to_radians.lua
endif
Windows_NT:
	@luac degrees_to_radians.lua
clean: