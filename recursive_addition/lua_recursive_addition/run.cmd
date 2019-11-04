@echo off

PATH=c:\lua
set OS=Windows_NT

call build N
lua recursive_addition.lua

pause
