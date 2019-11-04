ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@erlc prime.erl
Windows_NT:
	@erlc prime.erl
clean:
