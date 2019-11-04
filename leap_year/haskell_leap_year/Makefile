ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

Windows_NT:
	@ghc leap_year.hs -o leap_year.exe
	@del leap_year.o leap_year.hi
unix:
	@ghc leap_year.hs -o leap_year.exe # >&/dev/null
	@rm leap_year.o leap_year.hi
clean:
	@rm leap_year.exe
