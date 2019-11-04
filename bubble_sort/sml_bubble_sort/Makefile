ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mosml
mosml:
	@mosmlc -P full bubble_sort.sml -o bubble_sort.exe
	@rm bubble_sort.ui
	@rm bubble_sort.uo
Windows_NT:
	@mosmlc -P full bubble_sort.sml -o bubble_sort.exe
	@c:\windows\system32\cmd.exe /c copy C:\mosml\bin\camlrt.dll .
	@c:\windows\system32\cmd.exe /c del bubble_sort.ui
	@c:\windows\system32\cmd.exe /c del bubble_sort.uo
mlton:
	@mlton -output bubble_sort.exe bubble_sort.sml
smlnj:
smlsharp:
	@smlsharp -c bubble_sort.sml
clean:
	@rm bubble_sort.exe
