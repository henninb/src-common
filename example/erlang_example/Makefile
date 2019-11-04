ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@erlc example.erl
Windows_NT:
	@erlc example.erl
clean:
