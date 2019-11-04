@echo off

PATH=%ProgramData%\chocolatey
echo In the choco.exe Properties window -> Compatibility tab checkbox "Run this program as an administrator".

choco install python --pre -y

wget https://bootstrap.pypa.io/get-pip.py
python get-php.py

pause
