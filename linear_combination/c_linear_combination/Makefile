ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

#CFLAGS += -D UNIT_TEST

all: unix
Windows_NT:
	@gcc linear_combination.c -o linear_combination.exe -O2 -Wall
unix:
	@gcc -D UNIT_TEST linear_combination.c linear_combination_test.c -o linear_combination_test.exe -O2 -Wall -lm -lcunit
	@gcc linear_combination.c -o linear_combination.exe -O2 -Wall -lm
mingw64:
	@x86_64-w64-mingw32-gcc linear_combination.c -o linear_combination.exe -O2 -Wall
vstudio:
	@SET LIB=lib;%LIB%
	@SET INCLUDE=include;%INCLUDE%
	@cl.exe /nologo /Od /D "WIN32" /D "_CONSOLE" /D "_MBCS" /Gm /EHsc /RTC1 /MLd /Fo"linear_combination" /Fd"vc70.pdb" /W3 /c /Wp64 /ZI /TC linear_combination.c
	@link.exe /nologo /OUT:linear_combination.exe /INCREMENTAL /SUBSYSTEM:CONSOLE /MACHINE:X86 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib linear_combination.obj
#	@devenv linear_combination.2003.sln /build debug
#	@rd /S /Q Debug
	@del *.suo *.ncb *.ilk *.pdb *.obj *.idb 2> nul
clean:
	rm linear_combination.exe
