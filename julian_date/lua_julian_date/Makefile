ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
ifeq ($(OS),FreeBSD)
	@luac52 -o julian_date.exe julian_date.lua
endif
ifeq ($(OS),Linux)
	@luac -o julian_date.exe julian_date.lua
endif
Windows_NT:
	@luac julian_date.lua
clean: