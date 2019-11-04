ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mosml
mosml:
	@mosmlc -P full quadratic.sml -o quadratic.exe
	@rm quadratic.ui
	@rm quadratic.uo
Windows_NT:
	@mosmlc -P full quadratic.sml -o quadratic.exe
	@c:\windows\system32\cmd.exe /c copy C:\mosml\bin\camlrt.dll .
	@c:\windows\system32\cmd.exe /c del quadratic.ui
	@c:\windows\system32\cmd.exe /c del quadratic.uo
mlton:
	@mlton -output quadratic.exe quadratic.sml
smlnj:
smlsharp:
	@smlsharp -c quadratic.sml
clean:
	@rm quadratic.exe
