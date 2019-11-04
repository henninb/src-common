ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@scalac linear_combination.scala
	@jar cmf manifest.mf linear_combination.jar *.class
	@rm *.class
Windows_NT:
	@scalac linear_combination.scala
	@jar cmf manifest.mf linear_combination.jar *.class
#	@del *.class
clean:
	@echo clean
