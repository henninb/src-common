ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
#	@gcc exception_handler.m -o exception_handler.exe -lobjc
#	@source /usr/lib64/GNUstep/Makefiles/GNUstep.sh
#	@source /usr/share/GNUstep/Makefiles/GNUstep.sh
#	@gcc `gnustep-config --objc-flags` -lgnustep-base -lobjc exception_handler.m -o exception_handler.exe
	@gcc exception_handler.m `gnustep-config --objc-flags` `gnustep-config --base-libs` -o exception_handler.exe
	@rm exception_handler.d
Windows_NT:
	@gcc exception_handler.m -o exception_handler.exe -lobjc
clean: