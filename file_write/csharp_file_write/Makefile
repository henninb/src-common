ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mono

Windows_NT:
	@csc /nologo /t:exe /out:file_write.exe file_write.cs
mono:
ifeq ($(OS),FreeBSD)
	@mcs -t:exe -out:file_write.exe file_write.cs
endif
ifeq ($(OS),Linux)
	@mcs -t:exe -out:file_write.exe file_write.cs
endif
vstudio:
	@devenv file_write.sln /build release
	@rd /S /Q obj
	-@if exist *.obj del *.obj > nul
core:
	@dotnet
clean:
	@rm file_write.exe
