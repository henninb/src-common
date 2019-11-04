ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@tsc example.ts
Windows_NT:
	@echo Windows_NT
clean:
	@echo clean