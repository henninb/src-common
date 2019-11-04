ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@scalac lambda_functions.scala
	@jar cmf manifest.mf lambda_functions.jar *.class
	@rm *.class
Windows_NT:
	@scalac lambda_functions.scala
	@jar cmf manifest.mf lambda_functions.jar *.class
#	@del *.class
clean:
	@echo clean
