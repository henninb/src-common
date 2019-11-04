ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mono

Windows_NT:
	@csc /nologo /t:exe /out:datatypes.exe datatypes.cs
mono:
ifeq ($(OS),FreeBSD)
	@mcs -t:exe -out:datatypes.exe datatypes.cs
endif
ifeq ($(OS),Linux)
	@mcs -t:exe -out:datatypes.exe datatypes.cs
endif
vstudio:
	@devenv datatypes.sln /build release
	@rd /S /Q obj
	-@if exist *.obj del *.obj > nul
core:
	@dotnet
clean:
	@rm datatypes.exe
