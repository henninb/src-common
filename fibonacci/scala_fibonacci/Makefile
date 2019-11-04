ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@scalac fibonacci.scala
	@jar cmf manifest.mf fibonacci.jar *.class
	@rm *.class
Windows_NT:
	@scalac fibonacci.scala
	@jar cmf manifest.mf fibonacci.jar *.class
#	@del *.class
clean:
	@echo clean
