ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@go build -o json_write.exe
Windows_NT:
	@go build -o json_write.exe
clean:
