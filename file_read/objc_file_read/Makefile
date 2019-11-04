ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
#	@gcc file_read.m -o file_read.exe -lobjc
#	@source /usr/lib64/GNUstep/Makefiles/GNUstep.sh
#	@source /usr/share/GNUstep/Makefiles/GNUstep.sh
#	@gcc `gnustep-config --objc-flags` -lgnustep-base -lobjc file_read.m -o file_read.exe
	@gcc file_read.m `gnustep-config --objc-flags` `gnustep-config --base-libs` -o file_read.exe
	@rm file_read.d
Windows_NT:
	@gcc file_read.m -o file_read.exe -lobjc
clean: