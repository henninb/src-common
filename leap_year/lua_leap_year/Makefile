ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
ifeq ($(OS),FreeBSD)
	@luac52 -o leap_year.exe leap_year.lua
endif
ifeq ($(OS),Linux)
	@luac -o leap_year.exe leap_year.lua
endif
Windows_NT:
	@luac leap_year.lua
clean: