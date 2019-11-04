ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@scalac permute_print_integer.scala
	@jar cmf manifest.mf permute_print_integer.jar *.class
	@rm *.class
Windows_NT:
	@scalac permute_print_integer.scala
	@jar cmf manifest.mf permute_print_integer.jar *.class
#	@del *.class
clean:
	@echo clean
