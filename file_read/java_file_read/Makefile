ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: gradle manifest
manifest:
#	@rd /s /q build
	@javac FileRead.java
	@jar cmf manifest.mf FileReadManifest.jar FileRead.class
ifeq ($(OS),Windows_NT)
	@del FileRead.class
else
	@rm FileRead.class
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
	@rm FileRead.jar
