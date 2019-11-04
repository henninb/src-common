ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@kotlinc DateDow.kt -include-runtime -d DateDowManifest.jar
gradle:
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\DateDow.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/DateDow.jar .
	@rm -rf build .gradle
endif
clean:
	@rm DateDow.jar
