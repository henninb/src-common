ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest
manifest:
	@kotlinc SiderealTime.kt -include-runtime -d SiderealTime.jar
	@rm -rf SiderealTime
gradle:
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\SiderealTime.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/SiderealTime.jar .
	@rm -rf build .gradle
endif
clean:
	@rm SiderealTime.jar
