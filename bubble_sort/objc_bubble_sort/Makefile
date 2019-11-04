ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
#	@gcc bubble_sort.m -o bubble_sort.exe -lobjc
#	@source /usr/lib64/GNUstep/Makefiles/GNUstep.sh
#	@source /usr/share/GNUstep/Makefiles/GNUstep.sh
#	@gcc `gnustep-config --objc-flags` -lgnustep-base -lobjc bubble_sort.m -o bubble_sort.exe
	@gcc bubble_sort.m `gnustep-config --objc-flags` `gnustep-config --base-libs` -o bubble_sort.exe
	@rm bubble_sort.d
Windows_NT:
	@gcc bubble_sort.m -o bubble_sort.exe -lobjc
clean: