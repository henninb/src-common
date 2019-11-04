@echo off

set PATH=C:\Program^ Files\erl9.1\bin

erl -noshell -s lambda_functions start -s init stop

pause
