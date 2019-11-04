ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@scalac julian_date.scala
	@jar cmf manifest.mf julian_date.jar *.class
	@rm *.class
Windows_NT:
	@scalac julian_date.scala
	@jar cmf manifest.mf julian_date.jar *.class
#	@del *.class
clean:
	@echo clean
