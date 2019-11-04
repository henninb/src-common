ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@scalac roman.scala
	@jar cmf manifest.mf roman.jar *.class
	@rm *.class
Windows_NT:
	@scalac roman.scala
	@jar cmf manifest.mf roman.jar *.class
#	@del *.class
clean:
	@echo clean
