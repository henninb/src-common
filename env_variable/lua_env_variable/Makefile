ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
ifeq ($(OS),FreeBSD)
	@luac52 -o env_variable.exe env_variable.lua
endif
ifeq ($(OS),Linux)
	@luac -o env_variable.exe env_variable.lua
endif
Windows_NT:
	@luac env_variable.lua
clean: