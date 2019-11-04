@echo off

PATH=c:\lua
set OS=Windows_NT

call build N
lua postgresql_connect.lua

pause
