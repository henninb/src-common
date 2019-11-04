@echo off

PATH=c:\lua
set OS=Windows_NT

call build N
lua sidereal_time.lua

pause
