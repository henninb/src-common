ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
ifeq ($(OS),FreeBSD)
	@luac52 -o epoch_conversion.exe epoch_conversion.lua
endif
ifeq ($(OS),Linux)
	@luac -o epoch_conversion.exe epoch_conversion.lua
endif
Windows_NT:
	@luac epoch_conversion.lua
clean: