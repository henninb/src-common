ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
ifeq ($(OS),FreeBSD)
	@luac52 -o pi_calculate.exe pi_calculate.lua
endif
ifeq ($(OS),Linux)
	@luac -o pi_calculate.exe pi_calculate.lua
endif
Windows_NT:
	@luac pi_calculate.lua
clean: