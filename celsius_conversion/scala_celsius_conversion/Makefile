ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@scalac celsius_conversion.scala
	@jar cmf manifest.mf celsius_conversion.jar *.class
	@rm *.class
Windows_NT:
	@scalac celsius_conversion.scala
	@jar cmf manifest.mf celsius_conversion.jar *.class
#	@del *.class
clean:
	@echo clean
