@echo off

rem set PATH=%SystemRoot%\system32\WindowsPowerShell\v1.0;%PATH%

rem powershell "%~dp0%\anagram.ps1"
rem powershell.exe -noprofile anagram.ps1
rem powershell.exe –noexit anagram.ps1
set OS=Windows_NT

powershell  -executionpolicy bypass -File anagram.ps1

pause
