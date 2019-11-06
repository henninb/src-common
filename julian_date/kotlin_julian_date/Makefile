ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest
manifest:
	@kotlinc JulianDate.kt -include-runtime -d JulianDate.jar
	@rm -rf JulianDate
gradle:
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\JulianDate.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/JulianDate.jar .
	@rm -rf build .gradle
endif
clean:
	@rm JulianDate.jar
