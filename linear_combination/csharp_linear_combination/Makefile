ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mono

Windows_NT:
	@csc /nologo /t:exe /out:linear_combination.exe linear_combination.cs
mono:
ifeq ($(OS),FreeBSD)
	@mcs -t:exe -out:linear_combination.exe linear_combination.cs
endif
ifeq ($(OS),Linux)
	@mcs -t:exe -out:linear_combination.exe linear_combination.cs
endif
vstudio:
	@devenv linear_combination.sln /build release
	@rd /S /Q obj
	-@if exist *.obj del *.obj > nul
core:
	@dotnet
clean:
	@rm linear_combination.exe
