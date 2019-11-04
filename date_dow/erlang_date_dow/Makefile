ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@erlc date_dow.erl
Windows_NT:
	@erlc date_dow.erl
clean:
