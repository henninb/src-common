ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: gradle manifest
manifest:
#	@rd /s /q build
	@javac Hanoi.java
	@jar cmf manifest.mf HanoiManifest.jar Hanoi.class
ifeq ($(OS),Windows_NT)
	@del Hanoi.class
else
	@rm Hanoi.class
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
	@rm Hanoi.jar
