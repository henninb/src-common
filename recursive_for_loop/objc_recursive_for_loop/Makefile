ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
#	@gcc recursive_for_loop.m -o recursive_for_loop.exe -lobjc
#	@source /usr/lib64/GNUstep/Makefiles/GNUstep.sh
#	@source /usr/share/GNUstep/Makefiles/GNUstep.sh
#	@gcc `gnustep-config --objc-flags` -lgnustep-base -lobjc recursive_for_loop.m -o recursive_for_loop.exe
	@gcc recursive_for_loop.m `gnustep-config --objc-flags` `gnustep-config --base-libs` -o recursive_for_loop.exe
	@rm recursive_for_loop.d
Windows_NT:
	@gcc recursive_for_loop.m -o recursive_for_loop.exe -lobjc
clean: