ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
#	@gcc network_tcp_client_server.m -o network_tcp_client_server.exe -lobjc
#	@source /usr/lib64/GNUstep/Makefiles/GNUstep.sh
#	@source /usr/share/GNUstep/Makefiles/GNUstep.sh
#	@gcc `gnustep-config --objc-flags` -lgnustep-base -lobjc network_tcp_client_server.m -o network_tcp_client_server.exe
	@gcc network_tcp_client_server.m `gnustep-config --objc-flags` `gnustep-config --base-libs` -o network_tcp_client_server.exe
	@rm network_tcp_client_server.d
Windows_NT:
	@gcc network_tcp_client_server.m -o network_tcp_client_server.exe -lobjc
clean: