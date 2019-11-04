ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

Windows_NT:
	@ghc random_number.hs -o random_number.exe
	@del random_number.o random_number.hi
unix:
	@ghc random_number.hs -o random_number.exe # >&/dev/null
	@rm random_number.o random_number.hi
clean:
	@rm random_number.exe
