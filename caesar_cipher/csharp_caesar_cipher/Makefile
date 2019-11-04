ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mono

Windows_NT:
	@csc /nologo /t:exe /out:caesar_cipher.exe caesar_cipher.cs
mono:
ifeq ($(OS),FreeBSD)
	@mcs -t:exe -out:caesar_cipher.exe caesar_cipher.cs
endif
ifeq ($(OS),Linux)
	@mcs -t:exe -out:caesar_cipher.exe caesar_cipher.cs
endif
vstudio:
	@devenv caesar_cipher.sln /build release
	@rd /S /Q obj
	-@if exist *.obj del *.obj > nul
core:
	@dotnet
clean:
	@rm caesar_cipher.exe
