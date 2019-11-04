@echo off

PATH=c:\lua
set OS=Windows_NT

call build N
lua bubble_sort.lua

pause
