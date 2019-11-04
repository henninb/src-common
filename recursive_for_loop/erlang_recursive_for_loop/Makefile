ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@erlc recursive_for_loop.erl
Windows_NT:
	@erlc recursive_for_loop.erl
clean:
