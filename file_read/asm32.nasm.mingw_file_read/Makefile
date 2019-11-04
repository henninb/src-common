all: win32
win32:
	@nasm -f win32 file_read.asm -o file_read.o
	@gcc file_read.c file_read.o -o file_read.exe -O2 -Wall
	@del file_read.o
