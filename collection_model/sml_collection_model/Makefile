ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mosml
mosml:
	@mosmlc -P full collection_model.sml -o collection_model.exe
	@rm collection_model.ui
	@rm collection_model.uo
Windows_NT:
	@mosmlc -P full collection_model.sml -o collection_model.exe
	@c:\windows\system32\cmd.exe /c copy C:\mosml\bin\camlrt.dll .
	@c:\windows\system32\cmd.exe /c del collection_model.ui
	@c:\windows\system32\cmd.exe /c del collection_model.uo
mlton:
	@mlton -output collection_model.exe collection_model.sml
smlnj:
smlsharp:
	@smlsharp -c collection_model.sml
clean:
	@rm collection_model.exe
