ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@erlc celsius_conversion.erl
Windows_NT:
	@erlc celsius_conversion.erl
clean:
