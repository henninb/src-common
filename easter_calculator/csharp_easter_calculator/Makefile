ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mono

Windows_NT:
	@csc /nologo /t:exe /out:easter_calculator.exe easter_calculator.cs
mono:
ifeq ($(OS),FreeBSD)
	@mcs -t:exe -out:easter_calculator.exe easter_calculator.cs
endif
ifeq ($(OS),Linux)
	@mcs -t:exe -out:easter_calculator.exe easter_calculator.cs
endif
vstudio:
	@devenv easter_calculator.sln /build release
	@rd /S /Q obj
	-@if exist *.obj del *.obj > nul
core:
	@dotnet
clean:
	@rm easter_calculator.exe
