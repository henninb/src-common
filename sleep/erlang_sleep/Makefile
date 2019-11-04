ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@erlc sleep.erl
Windows_NT:
	@erlc sleep.erl
clean:
