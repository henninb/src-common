@echo off

rem set PATH=%SystemRoot%\system32\WindowsPowerShell\v1.0;%PATH%

rem powershell "%~dp0%\linked_list.ps1"
rem powershell.exe -noprofile linked_list.ps1
rem powershell.exe –noexit linked_list.ps1
set OS=Windows_NT

powershell  -executionpolicy bypass -File linked_list.ps1

pause
