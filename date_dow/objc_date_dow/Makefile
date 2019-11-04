ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
#	@gcc date_dow.m -o date_dow.exe -lobjc
#	@source /usr/lib64/GNUstep/Makefiles/GNUstep.sh
#	@source /usr/share/GNUstep/Makefiles/GNUstep.sh
#	@gcc `gnustep-config --objc-flags` -lgnustep-base -lobjc date_dow.m -o date_dow.exe
	@gcc date_dow.m `gnustep-config --objc-flags` `gnustep-config --base-libs` -o date_dow.exe
	@rm date_dow.d
Windows_NT:
	@gcc date_dow.m -o date_dow.exe -lobjc
clean: