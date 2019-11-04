ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@scalac nqueens.scala
	@jar cmf manifest.mf nqueens.jar *.class
	@rm *.class
Windows_NT:
	@scalac nqueens.scala
	@jar cmf manifest.mf nqueens.jar *.class
#	@del *.class
clean:
	@echo clean
