ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mosml
mosml:
	@mosmlc -P full magic_squares.sml -o magic_squares.exe
	@rm magic_squares.ui
	@rm magic_squares.uo
Windows_NT:
	@mosmlc -P full magic_squares.sml -o magic_squares.exe
	@c:\windows\system32\cmd.exe /c copy C:\mosml\bin\camlrt.dll .
	@c:\windows\system32\cmd.exe /c del magic_squares.ui
	@c:\windows\system32\cmd.exe /c del magic_squares.uo
mlton:
	@mlton -output magic_squares.exe magic_squares.sml
smlnj:
smlsharp:
	@smlsharp -c magic_squares.sml
clean:
	@rm magic_squares.exe
