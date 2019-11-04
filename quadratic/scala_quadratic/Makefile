ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@scalac quadratic.scala
	@jar cmf manifest.mf quadratic.jar *.class
	@rm *.class
Windows_NT:
	@scalac quadratic.scala
	@jar cmf manifest.mf quadratic.jar *.class
#	@del *.class
clean:
	@echo clean
