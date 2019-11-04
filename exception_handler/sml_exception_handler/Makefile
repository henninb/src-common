ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mosml
mosml:
	@mosmlc -P full exception_handler.sml -o exception_handler.exe
	@rm exception_handler.ui
	@rm exception_handler.uo
Windows_NT:
	@mosmlc -P full exception_handler.sml -o exception_handler.exe
	@c:\windows\system32\cmd.exe /c copy C:\mosml\bin\camlrt.dll .
	@c:\windows\system32\cmd.exe /c del exception_handler.ui
	@c:\windows\system32\cmd.exe /c del exception_handler.uo
mlton:
	@mlton -output exception_handler.exe exception_handler.sml
smlnj:
smlsharp:
	@smlsharp -c exception_handler.sml
clean:
	@rm exception_handler.exe
