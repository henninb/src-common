ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@scalac combinations.scala
	@jar cmf manifest.mf combinations.jar *.class
	@rm *.class
Windows_NT:
	@scalac combinations.scala
	@jar cmf manifest.mf combinations.jar *.class
#	@del *.class
clean:
	@echo clean
