ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
ifeq ($(OS),FreeBSD)
	@luac52 -o random_number.exe random_number.lua
endif
ifeq ($(OS),Linux)
	@luac -o random_number.exe random_number.lua
endif
Windows_NT:
	@luac random_number.lua
clean: