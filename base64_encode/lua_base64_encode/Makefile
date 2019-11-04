ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
ifeq ($(OS),FreeBSD)
	@luac52 -o base64_encode.exe base64_encode.lua
endif
ifeq ($(OS),Linux)
	@luac -o base64_encode.exe base64_encode.lua
endif
Windows_NT:
	@luac base64_encode.lua
clean: