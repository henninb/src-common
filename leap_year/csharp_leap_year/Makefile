ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mono

Windows_NT:
	@csc /nologo /t:exe /out:leap_year.exe leap_year.cs
mono:
ifeq ($(OS),FreeBSD)
	@mcs -t:exe -out:leap_year.exe leap_year.cs
endif
ifeq ($(OS),Linux)
	@mcs -t:exe -out:leap_year.exe leap_year.cs
endif
vstudio:
	@devenv leap_year.sln /build release
	@rd /S /Q obj
	-@if exist *.obj del *.obj > nul
core:
	@dotnet
clean:
	@rm leap_year.exe
