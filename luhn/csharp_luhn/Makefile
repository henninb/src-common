ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mono

Windows_NT:
	@csc /nologo /t:exe /out:luhn.exe luhn.cs
mono:
ifeq ($(OS),FreeBSD)
	@mcs -t:exe -out:luhn.exe luhn.cs
endif
ifeq ($(OS),Linux)
	@mcs -t:exe -out:luhn.exe luhn.cs
endif
vstudio:
	@devenv luhn.sln /build release
	@rd /S /Q obj
	-@if exist *.obj del *.obj > nul
core:
	@dotnet
clean:
	@rm luhn.exe
