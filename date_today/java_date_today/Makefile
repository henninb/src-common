ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: gradle manifest
manifest:
#	@rd /s /q build
	@javac DateToday.java
	@jar cmf manifest.mf DateTodayManifest.jar DateToday.class
ifeq ($(OS),Windows_NT)
	@del DateToday.class
else
	@rm DateToday.class
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
	@rm DateToday.jar
