ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@erlc epoch_conversion.erl
Windows_NT:
	@erlc epoch_conversion.erl
clean:
