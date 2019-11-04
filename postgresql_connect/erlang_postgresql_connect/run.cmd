@echo off

set PATH=C:\Program^ Files\erl9.1\bin

erl -noshell -s postgresql_connect start -s init stop

pause
