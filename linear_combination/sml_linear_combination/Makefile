ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mosml
mosml:
	@mosmlc -P full linear_combination.sml -o linear_combination.exe
	@rm linear_combination.ui
	@rm linear_combination.uo
Windows_NT:
	@mosmlc -P full linear_combination.sml -o linear_combination.exe
	@c:\windows\system32\cmd.exe /c copy C:\mosml\bin\camlrt.dll .
	@c:\windows\system32\cmd.exe /c del linear_combination.ui
	@c:\windows\system32\cmd.exe /c del linear_combination.uo
mlton:
	@mlton -output linear_combination.exe linear_combination.sml
smlnj:
smlsharp:
	@smlsharp -c linear_combination.sml
clean:
	@rm linear_combination.exe
