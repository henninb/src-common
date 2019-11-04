ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@erlc anagram.erl
Windows_NT:
	@erlc anagram.erl
clean:
