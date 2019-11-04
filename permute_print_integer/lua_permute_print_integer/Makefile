ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
ifeq ($(OS),FreeBSD)
	@luac52 -o permute_print_integer.exe permute_print_integer.lua
endif
ifeq ($(OS),Linux)
	@luac -o permute_print_integer.exe permute_print_integer.lua
endif
Windows_NT:
	@luac permute_print_integer.lua
clean: