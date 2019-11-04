ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mono

Windows_NT:
	@csc /nologo /t:exe /out:euler_phi.exe euler_phi.cs
mono:
ifeq ($(OS),FreeBSD)
	@mcs -t:exe -out:euler_phi.exe euler_phi.cs
endif
ifeq ($(OS),Linux)
	@mcs -t:exe -out:euler_phi.exe euler_phi.cs
endif
vstudio:
	@devenv euler_phi.sln /build release
	@rd /S /Q obj
	-@if exist *.obj del *.obj > nul
core:
	@dotnet
clean:
	@rm euler_phi.exe
