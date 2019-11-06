ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest
manifest:
	@kotlinc DateUtc.kt -include-runtime -d DateUtc.jar
	@rm -rf DateUtc
gradle:
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\DateUtc.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/DateUtc.jar .
	@rm -rf build .gradle
endif
clean:
	@rm DateUtc.jar
