ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
ifeq ($(OS),FreeBSD)
	@luac52 -o euler_phi.exe euler_phi.lua
endif
ifeq ($(OS),Linux)
	@luac -o euler_phi.exe euler_phi.lua
endif
Windows_NT:
	@luac euler_phi.lua
clean: