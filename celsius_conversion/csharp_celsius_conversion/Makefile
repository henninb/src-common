ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mono

Windows_NT:
	@csc /nologo /t:exe /out:celsius_conversion.exe celsius_conversion.cs
mono:
ifeq ($(OS),FreeBSD)
	@mcs -t:exe -out:celsius_conversion.exe celsius_conversion.cs
endif
ifeq ($(OS),Linux)
	@mcs -t:exe -out:celsius_conversion.exe celsius_conversion.cs
endif
vstudio:
	@devenv celsius_conversion.sln /build release
	@rd /S /Q obj
	-@if exist *.obj del *.obj > nul
core:
	@dotnet
clean:
	@rm celsius_conversion.exe
