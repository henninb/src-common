@echo off

PATH=c:\lua
set OS=Windows_NT

call build N
lua collection_model.lua

pause
