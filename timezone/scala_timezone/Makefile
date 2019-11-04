ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@scalac timezone.scala
	@jar cmf manifest.mf timezone.jar *.class
	@rm *.class
Windows_NT:
	@scalac timezone.scala
	@jar cmf manifest.mf timezone.jar *.class
#	@del *.class
clean:
	@echo clean
