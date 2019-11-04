ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
#	@gcc sierpinski_triangle.m -o sierpinski_triangle.exe -lobjc
#	@source /usr/lib64/GNUstep/Makefiles/GNUstep.sh
#	@source /usr/share/GNUstep/Makefiles/GNUstep.sh
#	@gcc `gnustep-config --objc-flags` -lgnustep-base -lobjc sierpinski_triangle.m -o sierpinski_triangle.exe
	@gcc sierpinski_triangle.m `gnustep-config --objc-flags` `gnustep-config --base-libs` -o sierpinski_triangle.exe
	@rm sierpinski_triangle.d
Windows_NT:
	@gcc sierpinski_triangle.m -o sierpinski_triangle.exe -lobjc
clean: