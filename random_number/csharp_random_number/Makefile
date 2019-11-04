ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mono

Windows_NT:
	@csc /nologo /t:exe /out:random_number.exe random_number.cs
mono:
ifeq ($(OS),FreeBSD)
	@mcs -t:exe -out:random_number.exe random_number.cs
endif
ifeq ($(OS),Linux)
	@mcs -t:exe -out:random_number.exe random_number.cs
endif
vstudio:
	@devenv random_number.sln /build release
	@rd /S /Q obj
	-@if exist *.obj del *.obj > nul
core:
	@dotnet
clean:
	@rm random_number.exe
