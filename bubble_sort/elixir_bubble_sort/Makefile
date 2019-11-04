ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@elixirc --ignore-module-conflict bubble_sort.ex
Windows_NT:
	@elixirc --ignore-module-conflict bubble_sort.ex -o .
