ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
  ifeq ($(OS),Linux)
    ifneq ($(wildcard /etc/lsb-release),)
      DISTRO := $(shell lsb_release -si)
    endif
  endif
endif

all: unix
Windows_NT:
	@gcc -c sierpinski_triangle.adb
	@gnatbind -x sierpinski_triangle.ali
	@gnatlink sierpinski_triangle.ali
	@del sierpinski_triangle.o
	@del sierpinski_triangle.ali
unix:
ifeq ($(DISTRO),LinuxMint)
	@gnat make sierpinski_triangle.adb
	@mv sierpinski_triangle sierpinski_triangle.exe
	@rm sierpinski_triangle.o
	@rm sierpinski_triangle.ali
else ifeq ($(OS),Linux)
	@gcc -c sierpinski_triangle.adb
	@gnatbind -x sierpinski_triangle.ali
	@gnatlink sierpinski_triangle.ali
	@mv sierpinski_triangle sierpinski_triangle.exe
	@rm sierpinski_triangle.o
	@rm sierpinski_triangle.ali
else
	@/usr/local/gcc6-aux/bin/gnat make sierpinski_triangle.adb
	@/usr/local/gcc6-aux/bin/gnatbind -x sierpinski_triangle.ali
	@/usr/local/gcc6-aux/bin/gnatlink sierpinski_triangle.ali
	@mv sierpinski_triangle sierpinski_triangle.exe
	@rm sierpinski_triangle.o
	@rm sierpinski_triangle.ali
endif
clean:
	@rm sierpinski_triangle.exe
