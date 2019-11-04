ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: linux
linux:
	@cargo build  #>&/dev/null
	@mv target/debug/env_variable env_variable.exe
	@rm -rf target
	@rm -f Cargo.lock
Windows_NT:
	@cargo build
	@move "target\debug\env_variable.exe" .
clean:
