ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@scalac leap_year.scala
	@jar cmf manifest.mf leap_year.jar *.class
	@rm *.class
Windows_NT:
	@scalac leap_year.scala
	@jar cmf manifest.mf leap_year.jar *.class
#	@del *.class
clean:
	@echo clean
