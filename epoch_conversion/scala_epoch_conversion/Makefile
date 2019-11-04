ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@scalac epoch_conversion.scala
	@jar cmf manifest.mf epoch_conversion.jar *.class
	@rm *.class
Windows_NT:
	@scalac epoch_conversion.scala
	@jar cmf manifest.mf epoch_conversion.jar *.class
#	@del *.class
clean:
	@echo clean
