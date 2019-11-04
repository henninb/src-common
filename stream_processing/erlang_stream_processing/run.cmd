@echo off

set PATH=C:\Program^ Files\erl9.1\bin

erl -noshell -s stream_processing start -s init stop

pause
