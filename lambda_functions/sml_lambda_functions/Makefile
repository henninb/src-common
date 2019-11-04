ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mosml
mosml:
	@mosmlc -P full lambda_functions.sml -o lambda_functions.exe
	@rm lambda_functions.ui
	@rm lambda_functions.uo
Windows_NT:
	@mosmlc -P full lambda_functions.sml -o lambda_functions.exe
	@c:\windows\system32\cmd.exe /c copy C:\mosml\bin\camlrt.dll .
	@c:\windows\system32\cmd.exe /c del lambda_functions.ui
	@c:\windows\system32\cmd.exe /c del lambda_functions.uo
mlton:
	@mlton -output lambda_functions.exe lambda_functions.sml
smlnj:
smlsharp:
	@smlsharp -c lambda_functions.sml
clean:
	@rm lambda_functions.exe
