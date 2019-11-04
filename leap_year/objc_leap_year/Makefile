ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
#	@gcc leap_year.m -o leap_year.exe -lobjc
#	@source /usr/lib64/GNUstep/Makefiles/GNUstep.sh
#	@source /usr/share/GNUstep/Makefiles/GNUstep.sh
#	@gcc `gnustep-config --objc-flags` -lgnustep-base -lobjc leap_year.m -o leap_year.exe
	@gcc leap_year.m `gnustep-config --objc-flags` `gnustep-config --base-libs` -o leap_year.exe
	@rm leap_year.d
Windows_NT:
	@gcc leap_year.m -o leap_year.exe -lobjc
clean: