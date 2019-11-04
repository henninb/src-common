@echo off

set OS=Windows_NT

call build N
postgresql_connect.exe

pause