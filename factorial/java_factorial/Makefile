ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: gradle manifest
manifest:
#	@rd /s /q build
	@javac Factorial.java
	@jar cmf manifest.mf FactorialManifest.jar Factorial.class
ifeq ($(OS),Windows_NT)
	@del Factorial.class
else
	@rm Factorial.class
endif
gradle:
#	@gradle -q build
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@rd /s /q build
	@rd /s /q .gradle
else
	@rm -rf build .gradle
endif
clean:
	@rm Factorial.jar
