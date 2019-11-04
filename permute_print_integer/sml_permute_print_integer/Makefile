ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mosml
mosml:
	@mosmlc -P full permute_print_integer.sml -o permute_print_integer.exe
	@rm permute_print_integer.ui
	@rm permute_print_integer.uo
Windows_NT:
	@mosmlc -P full permute_print_integer.sml -o permute_print_integer.exe
	@c:\windows\system32\cmd.exe /c copy C:\mosml\bin\camlrt.dll .
	@c:\windows\system32\cmd.exe /c del permute_print_integer.ui
	@c:\windows\system32\cmd.exe /c del permute_print_integer.uo
mlton:
	@mlton -output permute_print_integer.exe permute_print_integer.sml
smlnj:
smlsharp:
	@smlsharp -c permute_print_integer.sml
clean:
	@rm permute_print_integer.exe
