ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
ifeq ($(OS),FreeBSD)
	@luac52 -o postgresql_connect.exe postgresql_connect.lua
endif
ifeq ($(OS),Linux)
	@luac -o postgresql_connect.exe postgresql_connect.lua
endif
Windows_NT:
	@luac postgresql_connect.lua
clean: