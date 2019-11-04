ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
#	@gcc stream_processing.m -o stream_processing.exe -lobjc
#	@source /usr/lib64/GNUstep/Makefiles/GNUstep.sh
#	@source /usr/share/GNUstep/Makefiles/GNUstep.sh
#	@gcc `gnustep-config --objc-flags` -lgnustep-base -lobjc stream_processing.m -o stream_processing.exe
	@gcc stream_processing.m `gnustep-config --objc-flags` `gnustep-config --base-libs` -o stream_processing.exe
	@rm stream_processing.d
Windows_NT:
	@gcc stream_processing.m -o stream_processing.exe -lobjc
clean: