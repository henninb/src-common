ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@scalac euler_phi.scala
	@jar cmf manifest.mf euler_phi.jar *.class
	@rm *.class
Windows_NT:
	@scalac euler_phi.scala
	@jar cmf manifest.mf euler_phi.jar *.class
#	@del *.class
clean:
	@echo clean
