@echo off
%systemdrive%\cygwin\bin\bash.exe --login -c "cd '%cd%' ; perl example.pl %*"
