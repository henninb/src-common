ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mono

Windows_NT:
	@csc /nologo /t:exe /out:julian_date.exe julian_date.cs
mono:
ifeq ($(OS),FreeBSD)
	@mcs -t:exe -out:julian_date.exe julian_date.cs
endif
ifeq ($(OS),Linux)
	@mcs -t:exe -out:julian_date.exe julian_date.cs
endif
vstudio:
	@devenv julian_date.sln /build release
	@rd /S /Q obj
	-@if exist *.obj del *.obj > nul
core:
	@dotnet
clean:
	@rm julian_date.exe
