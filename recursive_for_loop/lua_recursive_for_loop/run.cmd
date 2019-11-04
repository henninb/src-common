@echo off

PATH=c:\lua
set OS=Windows_NT

call build N
lua recursive_for_loop.lua

pause
