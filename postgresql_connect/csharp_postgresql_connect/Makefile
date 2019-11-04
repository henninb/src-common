ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mono

Windows_NT:
	@csc /nologo /t:exe /out:postgresql_connect.exe postgresql_connect.cs
mono:
ifeq ($(OS),FreeBSD)
	@mcs -t:exe -out:postgresql_connect.exe postgresql_connect.cs
endif
ifeq ($(OS),Linux)
	@mcs -t:exe -out:postgresql_connect.exe postgresql_connect.cs
endif
vstudio:
	@devenv postgresql_connect.sln /build release
	@rd /S /Q obj
	-@if exist *.obj del *.obj > nul
core:
	@dotnet
clean:
	@rm postgresql_connect.exe
