ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@erlc roman.erl
Windows_NT:
	@erlc roman.erl
clean:
