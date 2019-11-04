ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
#	@gcc quadratic.m -o quadratic.exe -lobjc
#	@source /usr/lib64/GNUstep/Makefiles/GNUstep.sh
#	@source /usr/share/GNUstep/Makefiles/GNUstep.sh
#	@gcc `gnustep-config --objc-flags` -lgnustep-base -lobjc quadratic.m -o quadratic.exe
	@gcc quadratic.m `gnustep-config --objc-flags` `gnustep-config --base-libs` -o quadratic.exe
	@rm quadratic.d
Windows_NT:
	@gcc quadratic.m -o quadratic.exe -lobjc
clean: