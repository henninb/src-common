ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
  ifeq ($(OS),Linux)
    ifneq ($(wildcard /etc/lsb-release),)
      DISTRO := $(shell lsb_release -si)
    endif
  endif
endif

all: unix
Windows_NT:
	@gcc -c network_tcp_client_server.adb
	@gnatbind -x network_tcp_client_server.ali
	@gnatlink network_tcp_client_server.ali
	@del network_tcp_client_server.o
	@del network_tcp_client_server.ali
unix:
ifeq ($(DISTRO),LinuxMint)
	@gnat make network_tcp_client_server.adb
	@mv network_tcp_client_server network_tcp_client_server.exe
	@rm network_tcp_client_server.o
	@rm network_tcp_client_server.ali
else ifeq ($(OS),Linux)
	@gcc -c network_tcp_client_server.adb
	@gnatbind -x network_tcp_client_server.ali
	@gnatlink network_tcp_client_server.ali
	@mv network_tcp_client_server network_tcp_client_server.exe
	@rm network_tcp_client_server.o
	@rm network_tcp_client_server.ali
else
	@/usr/local/gcc6-aux/bin/gnat make network_tcp_client_server.adb
	@/usr/local/gcc6-aux/bin/gnatbind -x network_tcp_client_server.ali
	@/usr/local/gcc6-aux/bin/gnatlink network_tcp_client_server.ali
	@mv network_tcp_client_server network_tcp_client_server.exe
	@rm network_tcp_client_server.o
	@rm network_tcp_client_server.ali
endif
clean:
	@rm network_tcp_client_server.exe
