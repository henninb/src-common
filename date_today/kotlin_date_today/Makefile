ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@kotlinc DateToday.kt -include-runtime -d DateTodayManifest.jar
gradle:
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\DateToday.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/DateToday.jar .
	@rm -rf build .gradle
endif
clean:
	@rm DateToday.jar
