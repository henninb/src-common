ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@scalac factorial.scala
	@jar cmf manifest.mf factorial.jar *.class
	@rm *.class
Windows_NT:
	@scalac factorial.scala
	@jar cmf manifest.mf factorial.jar *.class
#	@del *.class
clean:
	@echo clean
