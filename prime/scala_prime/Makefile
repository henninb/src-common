ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@scalac prime.scala
	@jar cmf manifest.mf prime.jar *.class
	@rm *.class
Windows_NT:
	@scalac prime.scala
	@jar cmf manifest.mf prime.jar *.class
#	@del *.class
clean:
	@echo clean
