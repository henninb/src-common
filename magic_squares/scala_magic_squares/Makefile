ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@scalac magic_squares.scala
	@jar cmf manifest.mf magic_squares.jar *.class
	@rm *.class
Windows_NT:
	@scalac magic_squares.scala
	@jar cmf manifest.mf magic_squares.jar *.class
#	@del *.class
clean:
	@echo clean
