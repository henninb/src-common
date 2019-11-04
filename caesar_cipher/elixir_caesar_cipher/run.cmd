@echo off

set PATH=C:\ProgramData\chocolatey\lib\Elixir\bin
set PATH=C:\ProgramData\chocolatey\bin;%PATH%

call build N
rem call elixir caesar_cipher.exs
call elixir -e CaesarCipher.main

pause