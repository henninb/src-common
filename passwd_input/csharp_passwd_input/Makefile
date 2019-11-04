ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mono

Windows_NT:
	@csc /nologo /t:exe /out:passwd_input.exe passwd_input.cs
mono:
ifeq ($(OS),FreeBSD)
	@mcs -t:exe -out:passwd_input.exe passwd_input.cs
endif
ifeq ($(OS),Linux)
	@mcs -t:exe -out:passwd_input.exe passwd_input.cs
endif
vstudio:
	@devenv passwd_input.sln /build release
	@rd /S /Q obj
	-@if exist *.obj del *.obj > nul
core:
	@dotnet
clean:
	@rm passwd_input.exe
