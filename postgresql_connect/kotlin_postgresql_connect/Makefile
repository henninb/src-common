ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest
manifest:
	@kotlinc PostgresqlConnect.kt -include-runtime -d PostgresqlConnect.jar
	@rm -rf PostgresqlConnect
gradle:
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\PostgresqlConnect.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/PostgresqlConnect.jar .
	@rm -rf build .gradle
endif
clean:
	@rm PostgresqlConnect.jar
