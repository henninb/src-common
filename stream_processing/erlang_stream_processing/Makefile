ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@erlc stream_processing.erl
Windows_NT:
	@erlc stream_processing.erl
clean:
