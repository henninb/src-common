ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@scalac luhn.scala
	@jar cmf manifest.mf luhn.jar *.class
	@rm *.class
Windows_NT:
	@scalac luhn.scala
	@jar cmf manifest.mf luhn.jar *.class
#	@del *.class
clean:
	@echo clean
