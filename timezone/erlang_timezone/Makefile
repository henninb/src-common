ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@erlc timezone.erl
Windows_NT:
	@erlc timezone.erl
clean:
