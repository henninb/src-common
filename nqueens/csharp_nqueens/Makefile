ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mono

Windows_NT:
	@csc /nologo /t:exe /out:nqueens.exe nqueens.cs
mono:
ifeq ($(OS),FreeBSD)
	@mcs -t:exe -out:nqueens.exe nqueens.cs
endif
ifeq ($(OS),Linux)
	@mcs -t:exe -out:nqueens.exe nqueens.cs
endif
vstudio:
	@devenv nqueens.sln /build release
	@rd /S /Q obj
	-@if exist *.obj del *.obj > nul
core:
	@dotnet
clean:
	@rm nqueens.exe
