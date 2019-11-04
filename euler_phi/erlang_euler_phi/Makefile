ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@erlc euler_phi.erl
Windows_NT:
	@erlc euler_phi.erl
clean:
