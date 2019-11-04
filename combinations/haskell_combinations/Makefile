ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

Windows_NT:
	@ghc combinations.hs -o combinations.exe
	@del combinations.o combinations.hi
unix:
	@ghc combinations.hs -o combinations.exe # >&/dev/null
	@rm combinations.o combinations.hi
clean:
	@rm combinations.exe
