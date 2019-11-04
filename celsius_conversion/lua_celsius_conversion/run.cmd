@echo off

PATH=c:\lua
set OS=Windows_NT

call build N
lua celsius_conversion.lua

pause
