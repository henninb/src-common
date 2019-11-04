@echo off

PATH=c:\lua
set OS=Windows_NT

call build N
lua julian_date.lua

pause
