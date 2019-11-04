ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@kotlinc LeapYear.kt -include-runtime -d LeapYearManifest.jar
gradle:
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\LeapYear.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/LeapYear.jar .
	@rm -rf build .gradle
endif
clean:
	@rm LeapYear.jar
