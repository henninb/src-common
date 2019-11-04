ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@scalac pi_calculate.scala
	@jar cmf manifest.mf pi_calculate.jar *.class
	@rm *.class
Windows_NT:
	@scalac pi_calculate.scala
	@jar cmf manifest.mf pi_calculate.jar *.class
#	@del *.class
clean:
	@echo clean
