ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@erlc exception_handler.erl
Windows_NT:
	@erlc exception_handler.erl
clean:
