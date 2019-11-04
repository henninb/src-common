ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mosml
mosml:
	@mosmlc -P full easter_calculator.sml -o easter_calculator.exe
	@rm easter_calculator.ui
	@rm easter_calculator.uo
Windows_NT:
	@mosmlc -P full easter_calculator.sml -o easter_calculator.exe
	@c:\windows\system32\cmd.exe /c copy C:\mosml\bin\camlrt.dll .
	@c:\windows\system32\cmd.exe /c del easter_calculator.ui
	@c:\windows\system32\cmd.exe /c del easter_calculator.uo
mlton:
	@mlton -output easter_calculator.exe easter_calculator.sml
smlnj:
smlsharp:
	@smlsharp -c easter_calculator.sml
clean:
	@rm easter_calculator.exe
