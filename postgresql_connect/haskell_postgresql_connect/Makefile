ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

Windows_NT:
	@ghc postgresql_connect.hs -o postgresql_connect.exe
	@del postgresql_connect.o postgresql_connect.hi
unix:
	@ghc postgresql_connect.hs -o postgresql_connect.exe # >&/dev/null
	@rm postgresql_connect.o postgresql_connect.hi
clean:
	@rm postgresql_connect.exe
