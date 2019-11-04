ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@scalac sierpinski_triangle.scala
	@jar cmf manifest.mf sierpinski_triangle.jar *.class
	@rm *.class
Windows_NT:
	@scalac sierpinski_triangle.scala
	@jar cmf manifest.mf sierpinski_triangle.jar *.class
#	@del *.class
clean:
	@echo clean
