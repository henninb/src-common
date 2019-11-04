ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@scalac recursive_addition.scala
	@jar cmf manifest.mf recursive_addition.jar *.class
	@rm *.class
Windows_NT:
	@scalac recursive_addition.scala
	@jar cmf manifest.mf recursive_addition.jar *.class
#	@del *.class
clean:
	@echo clean
