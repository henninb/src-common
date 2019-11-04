ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mono

Windows_NT:
	@csc /nologo /t:exe /out:env_variable.exe env_variable.cs
mono:
ifeq ($(OS),FreeBSD)
	@mcs -t:exe -out:env_variable.exe env_variable.cs
endif
ifeq ($(OS),Linux)
	@mcs -t:exe -out:env_variable.exe env_variable.cs
endif
vstudio:
	@devenv env_variable.sln /build release
	@rd /S /Q obj
	-@if exist *.obj del *.obj > nul
core:
	@dotnet
clean:
	@rm env_variable.exe
