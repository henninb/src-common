ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
ifeq ($(OS),FreeBSD)
	@luac52 -o sidereal_time.exe sidereal_time.lua
endif
ifeq ($(OS),Linux)
	@luac -o sidereal_time.exe sidereal_time.lua
endif
Windows_NT:
	@luac sidereal_time.lua
clean: