ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@erlc julian_date.erl
Windows_NT:
	@erlc julian_date.erl
clean:
