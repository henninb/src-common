ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
#	@gcc fibonacci.m -o fibonacci.exe -lobjc
#	@source /usr/lib64/GNUstep/Makefiles/GNUstep.sh
#	@source /usr/share/GNUstep/Makefiles/GNUstep.sh
#	@gcc `gnustep-config --objc-flags` -lgnustep-base -lobjc fibonacci.m -o fibonacci.exe
	@gcc fibonacci.m `gnustep-config --objc-flags` `gnustep-config --base-libs` -o fibonacci.exe
	@rm fibonacci.d
Windows_NT:
	@gcc fibonacci.m -o fibonacci.exe -lobjc
clean: