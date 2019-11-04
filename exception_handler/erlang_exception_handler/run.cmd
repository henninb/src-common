@echo off

set PATH=C:\Program^ Files\erl9.1\bin

erl -noshell -s exception_handler start -s init stop

pause
