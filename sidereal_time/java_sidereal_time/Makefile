ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: gradle manifest
manifest:
#	@rd /s /q build
	@javac SiderealTime.java
	@jar cmf manifest.mf SiderealTimeManifest.jar SiderealTime.class
ifeq ($(OS),Windows_NT)
	@del SiderealTime.class
else
	@rm SiderealTime.class
endif
gradle:
#	@gradle -q build
	@./gradlew -q standalone
ifeq ($(OS),Windows_NT)
	@rd /s /q build
	@rd /s /q .gradle
else
	@rm -rf build .gradle
endif
clean:
	@rm SiderealTime.jar
