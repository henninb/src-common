@echo off

set PATH=C:\Program^ Files\erl9.1\bin

erl -noshell -s entry_point start -s init stop

pause
