ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
#	@gcc recursive_addition.m -o recursive_addition.exe -lobjc
#	@source /usr/lib64/GNUstep/Makefiles/GNUstep.sh
#	@source /usr/share/GNUstep/Makefiles/GNUstep.sh
#	@gcc `gnustep-config --objc-flags` -lgnustep-base -lobjc recursive_addition.m -o recursive_addition.exe
	@gcc recursive_addition.m `gnustep-config --objc-flags` `gnustep-config --base-libs` -o recursive_addition.exe
	@rm recursive_addition.d
Windows_NT:
	@gcc recursive_addition.m -o recursive_addition.exe -lobjc
clean: