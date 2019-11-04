ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@scalac easter_calculator.scala
	@jar cmf manifest.mf easter_calculator.jar *.class
	@rm *.class
Windows_NT:
	@scalac easter_calculator.scala
	@jar cmf manifest.mf easter_calculator.jar *.class
#	@del *.class
clean:
	@echo clean
