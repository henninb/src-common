ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@erlc easter_calculator.erl
Windows_NT:
	@erlc easter_calculator.erl
clean:
