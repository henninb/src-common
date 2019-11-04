ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
ifeq ($(OS),FreeBSD)
	@luac52 -o linear_combination.exe linear_combination.lua
endif
ifeq ($(OS),Linux)
	@luac -o linear_combination.exe linear_combination.lua
endif
Windows_NT:
	@luac linear_combination.lua
clean: