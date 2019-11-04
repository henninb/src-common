@echo off

PATH=c:\lua
set OS=Windows_NT

call build N
lua linear_combination.lua

pause
