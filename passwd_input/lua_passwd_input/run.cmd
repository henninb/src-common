@echo off

PATH=c:\lua
set OS=Windows_NT

call build N
lua passwd_input.lua

pause
