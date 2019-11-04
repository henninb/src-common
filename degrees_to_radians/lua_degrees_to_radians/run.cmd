@echo off

PATH=c:\lua
set OS=Windows_NT

call build N
lua degrees_to_radians.lua

pause
