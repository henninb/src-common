@echo off

rem set PATH=%SystemRoot%\system32\WindowsPowerShell\v1.0;%PATH%

rem powershell "%~dp0%\sierpinski_triangle.ps1"
rem powershell.exe -noprofile sierpinski_triangle.ps1
rem powershell.exe –noexit sierpinski_triangle.ps1
set OS=Windows_NT

powershell  -executionpolicy bypass -File sierpinski_triangle.ps1

pause
