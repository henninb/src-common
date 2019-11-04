ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@go build -o linear_combination.exe
Windows_NT:
	@go build -o linear_combination.exe
clean:
