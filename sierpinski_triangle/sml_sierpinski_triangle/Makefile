ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mosml
mosml:
	@mosmlc -P full sierpinski_triangle.sml -o sierpinski_triangle.exe
	@rm sierpinski_triangle.ui
	@rm sierpinski_triangle.uo
Windows_NT:
	@mosmlc -P full sierpinski_triangle.sml -o sierpinski_triangle.exe
	@c:\windows\system32\cmd.exe /c copy C:\mosml\bin\camlrt.dll .
	@c:\windows\system32\cmd.exe /c del sierpinski_triangle.ui
	@c:\windows\system32\cmd.exe /c del sierpinski_triangle.uo
mlton:
	@mlton -output sierpinski_triangle.exe sierpinski_triangle.sml
smlnj:
smlsharp:
	@smlsharp -c sierpinski_triangle.sml
clean:
	@rm sierpinski_triangle.exe
