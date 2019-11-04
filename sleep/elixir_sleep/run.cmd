@echo off

set PATH=C:\ProgramData\chocolatey\lib\Elixir\bin
set PATH=C:\ProgramData\chocolatey\bin;%PATH%

call build N
rem call elixir sleep.exs
call elixir -e Sleep.main

pause