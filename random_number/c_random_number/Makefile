ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

#CFLAGS += -D UNIT_TEST

all: unix
Windows_NT:
	@gcc random_number.c -o random_number.exe -O2 -Wall
unix:
	@gcc -D UNIT_TEST random_number.c random_number_test.c -o random_number_test.exe -O2 -Wall -lm -lcunit
	@gcc random_number.c -o random_number.exe -O2 -Wall -lm
mingw64:
	@x86_64-w64-mingw32-gcc random_number.c -o random_number.exe -O2 -Wall
vstudio:
	@SET LIB=lib;%LIB%
	@SET INCLUDE=include;%INCLUDE%
	@cl.exe /nologo /Od /D "WIN32" /D "_CONSOLE" /D "_MBCS" /Gm /EHsc /RTC1 /MLd /Fo"random_number" /Fd"vc70.pdb" /W3 /c /Wp64 /ZI /TC random_number.c
	@link.exe /nologo /OUT:random_number.exe /INCREMENTAL /SUBSYSTEM:CONSOLE /MACHINE:X86 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib random_number.obj
#	@devenv random_number.2003.sln /build debug
#	@rd /S /Q Debug
	@del *.suo *.ncb *.ilk *.pdb *.obj *.idb 2> nul
clean:
	rm random_number.exe
