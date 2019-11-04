ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mono

Windows_NT:
	@csc /nologo /t:exe /out:network_tcp_client_server.exe network_tcp_client_server.cs
mono:
ifeq ($(OS),FreeBSD)
	@mcs -t:exe -out:network_tcp_client_server.exe network_tcp_client_server.cs
endif
ifeq ($(OS),Linux)
	@mcs -t:exe -out:network_tcp_client_server.exe network_tcp_client_server.cs
endif
vstudio:
	@devenv network_tcp_client_server.sln /build release
	@rd /S /Q obj
	-@if exist *.obj del *.obj > nul
core:
	@dotnet
clean:
	@rm network_tcp_client_server.exe
