@echo off

set PATH=C:\Program^ Files\erl9.1\bin

erl -noshell -s hostname_info start -s init stop

pause
