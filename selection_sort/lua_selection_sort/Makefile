ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
ifeq ($(OS),FreeBSD)
	@luac52 -o selection_sort.exe selection_sort.lua
endif
ifeq ($(OS),Linux)
	@luac -o selection_sort.exe selection_sort.lua
endif
Windows_NT:
	@luac selection_sort.lua
clean: