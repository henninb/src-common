@echo off

PATH=c:\lua
set OS=Windows_NT

call build N
lua base64_encode.lua

pause
