ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
ifeq ($(OS),FreeBSD)
	@luac52 -o lambda_functions.exe lambda_functions.lua
endif
ifeq ($(OS),Linux)
	@luac -o lambda_functions.exe lambda_functions.lua
endif
Windows_NT:
	@luac lambda_functions.lua
clean: