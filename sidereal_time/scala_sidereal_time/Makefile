ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@scalac sidereal_time.scala
	@jar cmf manifest.mf sidereal_time.jar *.class
	@rm *.class
Windows_NT:
	@scalac sidereal_time.scala
	@jar cmf manifest.mf sidereal_time.jar *.class
#	@del *.class
clean:
	@echo clean
