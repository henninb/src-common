ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
ifeq ($(OS),FreeBSD)
	@luac52 -o collection_model.exe collection_model.lua
endif
ifeq ($(OS),Linux)
	@luac -o collection_model.exe collection_model.lua
endif
Windows_NT:
	@luac collection_model.lua
clean: