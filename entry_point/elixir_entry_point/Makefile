ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@elixirc --ignore-module-conflict entry_point.ex
Windows_NT:
	@elixirc --ignore-module-conflict entry_point.ex -o .
