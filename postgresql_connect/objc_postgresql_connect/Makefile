ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
#	@gcc postgresql_connect.m -o postgresql_connect.exe -lobjc
#	@source /usr/lib64/GNUstep/Makefiles/GNUstep.sh
#	@source /usr/share/GNUstep/Makefiles/GNUstep.sh
#	@gcc `gnustep-config --objc-flags` -lgnustep-base -lobjc postgresql_connect.m -o postgresql_connect.exe
	@gcc postgresql_connect.m `gnustep-config --objc-flags` `gnustep-config --base-libs` -o postgresql_connect.exe
	@rm postgresql_connect.d
Windows_NT:
	@gcc postgresql_connect.m -o postgresql_connect.exe -lobjc
clean: