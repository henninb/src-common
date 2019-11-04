ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
ifeq ($(OS),FreeBSD)
	@luac52 -o bubble_sort.exe bubble_sort.lua
endif
ifeq ($(OS),Linux)
	@luac -o bubble_sort.exe bubble_sort.lua
endif
Windows_NT:
	@luac bubble_sort.lua
clean: