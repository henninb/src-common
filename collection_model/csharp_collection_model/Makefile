ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mono

Windows_NT:
	@csc /nologo /t:exe /out:collection_model.exe collection_model.cs
mono:
ifeq ($(OS),FreeBSD)
	@mcs -t:exe -out:collection_model.exe collection_model.cs
endif
ifeq ($(OS),Linux)
	@mcs -t:exe -out:collection_model.exe collection_model.cs
endif
vstudio:
	@devenv collection_model.sln /build release
	@rd /S /Q obj
	-@if exist *.obj del *.obj > nul
core:
	@dotnet
clean:
	@rm collection_model.exe
