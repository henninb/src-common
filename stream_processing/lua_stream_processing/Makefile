ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
ifeq ($(OS),FreeBSD)
	@luac52 -o stream_processing.exe stream_processing.lua
endif
ifeq ($(OS),Linux)
	@luac -o stream_processing.exe stream_processing.lua
endif
Windows_NT:
	@luac stream_processing.lua
clean: