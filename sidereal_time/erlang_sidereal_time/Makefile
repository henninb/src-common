ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@erlc sidereal_time.erl
Windows_NT:
	@erlc sidereal_time.erl
clean:
