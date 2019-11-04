ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mono

Windows_NT:
	@csc /nologo /t:exe /out:sidereal_time.exe sidereal_time.cs
mono:
ifeq ($(OS),FreeBSD)
	@mcs -t:exe -out:sidereal_time.exe sidereal_time.cs
endif
ifeq ($(OS),Linux)
	@mcs -t:exe -out:sidereal_time.exe sidereal_time.cs
endif
vstudio:
	@devenv sidereal_time.sln /build release
	@rd /S /Q obj
	-@if exist *.obj del *.obj > nul
core:
	@dotnet
clean:
	@rm sidereal_time.exe
