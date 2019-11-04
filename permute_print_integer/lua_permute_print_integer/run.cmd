@echo off

PATH=c:\lua
set OS=Windows_NT

call build N
lua permute_print_integer.lua

pause
