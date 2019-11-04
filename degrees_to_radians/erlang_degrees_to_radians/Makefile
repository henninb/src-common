ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@erlc degrees_to_radians.erl
Windows_NT:
	@erlc degrees_to_radians.erl
clean:
