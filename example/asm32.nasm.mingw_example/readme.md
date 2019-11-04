djgpp
-----
nasm -f coff -d COFF_TYPE first.asm
gcc first.o main.c -o first.exe

borland
-------
; Using Borland C/C++
; nasm -f obj -d OBJ_TYPE first.asm
; bcc32 first.obj driver.c asm_io.obj

mingw
-----
win32

freebsd gcc
-----------
 elf

# create a listing file
@nasm -f win32 example.asm -o example.o -l example.txt

eax yields the return value of a function

disassemble code
----------------
compile binary with -g

# gdb <binary.exe>
(gdb) disassemble main
