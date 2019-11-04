ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mosml
mosml:
	@mosmlc -P full network_tcp_client_server.sml -o network_tcp_client_server.exe
	@rm network_tcp_client_server.ui
	@rm network_tcp_client_server.uo
Windows_NT:
	@mosmlc -P full network_tcp_client_server.sml -o network_tcp_client_server.exe
	@c:\windows\system32\cmd.exe /c copy C:\mosml\bin\camlrt.dll .
	@c:\windows\system32\cmd.exe /c del network_tcp_client_server.ui
	@c:\windows\system32\cmd.exe /c del network_tcp_client_server.uo
mlton:
	@mlton -output network_tcp_client_server.exe network_tcp_client_server.sml
smlnj:
smlsharp:
	@smlsharp -c network_tcp_client_server.sml
clean:
	@rm network_tcp_client_server.exe
