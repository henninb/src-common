ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@scalac random_number.scala
	@jar cmf manifest.mf random_number.jar *.class
	@rm *.class
Windows_NT:
	@scalac random_number.scala
	@jar cmf manifest.mf random_number.jar *.class
#	@del *.class
clean:
	@echo clean
