ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@scalac anagram.scala
	@jar cmf manifest.mf anagram.jar *.class
	@rm *.class
Windows_NT:
	@scalac anagram.scala
	@jar cmf manifest.mf anagram.jar *.class
#	@del *.class
clean:
	@echo clean
