ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@scalac degrees_to_radians.scala
	@jar cmf manifest.mf degrees_to_radians.jar *.class
	@rm *.class
Windows_NT:
	@scalac degrees_to_radians.scala
	@jar cmf manifest.mf degrees_to_radians.jar *.class
#	@del *.class
clean:
	@echo clean
