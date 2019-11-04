ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: gradle manifest
manifest:
#	@rd /s /q build
	@javac EntryPoint.java
	@jar cmf manifest.mf EntryPointManifest.jar EntryPoint.class
ifeq ($(OS),Windows_NT)
	@del EntryPoint.class
else
	@rm EntryPoint.class
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
	@rm EntryPoint.jar
