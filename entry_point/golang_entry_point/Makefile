ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@go build -o entry_point.exe
Windows_NT:
	@go build -o entry_point.exe
clean:
