ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mosml
mosml:
	@mosmlc -P full selection_sort.sml -o selection_sort.exe
	@rm selection_sort.ui
	@rm selection_sort.uo
Windows_NT:
	@mosmlc -P full selection_sort.sml -o selection_sort.exe
	@c:\windows\system32\cmd.exe /c copy C:\mosml\bin\camlrt.dll .
	@c:\windows\system32\cmd.exe /c del selection_sort.ui
	@c:\windows\system32\cmd.exe /c del selection_sort.uo
mlton:
	@mlton -output selection_sort.exe selection_sort.sml
smlnj:
smlsharp:
	@smlsharp -c selection_sort.sml
clean:
	@rm selection_sort.exe
