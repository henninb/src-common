ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mono

Windows_NT:
	@csc /nologo /t:exe /out:degrees_to_radians.exe degrees_to_radians.cs
mono:
ifeq ($(OS),FreeBSD)
	@mcs -t:exe -out:degrees_to_radians.exe degrees_to_radians.cs
endif
ifeq ($(OS),Linux)
	@mcs -t:exe -out:degrees_to_radians.exe degrees_to_radians.cs
endif
vstudio:
	@devenv degrees_to_radians.sln /build release
	@rd /S /Q obj
	-@if exist *.obj del *.obj > nul
core:
	@dotnet
clean:
	@rm degrees_to_radians.exe
