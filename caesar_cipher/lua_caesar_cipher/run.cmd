@echo off

PATH=c:\lua
set OS=Windows_NT

call build N
lua caesar_cipher.lua

pause
