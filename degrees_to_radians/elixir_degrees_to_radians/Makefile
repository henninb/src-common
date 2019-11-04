ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@elixirc --ignore-module-conflict degrees_to_radians.ex
Windows_NT:
	@elixirc --ignore-module-conflict degrees_to_radians.ex -o .
