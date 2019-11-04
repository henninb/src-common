ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mosml
mosml:
	@mosmlc -P full linked_list.sml -o linked_list.exe
	@rm linked_list.ui
	@rm linked_list.uo
Windows_NT:
	@mosmlc -P full linked_list.sml -o linked_list.exe
	@c:\windows\system32\cmd.exe /c copy C:\mosml\bin\camlrt.dll .
	@c:\windows\system32\cmd.exe /c del linked_list.ui
	@c:\windows\system32\cmd.exe /c del linked_list.uo
mlton:
	@mlton -output linked_list.exe linked_list.sml
smlnj:
smlsharp:
	@smlsharp -c linked_list.sml
clean:
	@rm linked_list.exe
