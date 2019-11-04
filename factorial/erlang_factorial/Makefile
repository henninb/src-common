ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@erlc factorial.erl
Windows_NT:
	@erlc factorial.erl
clean:
