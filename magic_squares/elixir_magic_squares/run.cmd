@echo off

set PATH=C:\ProgramData\chocolatey\lib\Elixir\bin
set PATH=C:\ProgramData\chocolatey\bin;%PATH%

call build N
rem call elixir magic_squares.exs
call elixir -e MagicSquares.main

pause