@echo off

PATH=%ProgramData%\chocolatey
echo In the choco.exe Properties window -> Compatibility tab checkbox "Run this program as an administrator".

rem wget https://github.com/boot-clj/boot-bin/releases/download/latest/boot.exe
rem move boot.exe %SystemRoot%
choco install lein
rem choco install clojure

pause
