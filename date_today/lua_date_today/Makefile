ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
ifeq ($(OS),FreeBSD)
	@luac52 -o date_today.exe date_today.lua
endif
ifeq ($(OS),Linux)
	@luac -o date_today.exe date_today.lua
endif
Windows_NT:
	@luac date_today.lua
clean: