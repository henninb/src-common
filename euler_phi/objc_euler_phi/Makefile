ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
#	@gcc euler_phi.m -o euler_phi.exe -lobjc
#	@source /usr/lib64/GNUstep/Makefiles/GNUstep.sh
#	@source /usr/share/GNUstep/Makefiles/GNUstep.sh
#	@gcc `gnustep-config --objc-flags` -lgnustep-base -lobjc euler_phi.m -o euler_phi.exe
	@gcc euler_phi.m `gnustep-config --objc-flags` `gnustep-config --base-libs` -o euler_phi.exe
	@rm euler_phi.d
Windows_NT:
	@gcc euler_phi.m -o euler_phi.exe -lobjc
clean: