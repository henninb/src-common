@echo off

set PATH=C:\Program^ Files\erl9.1\bin

erl -noshell -s network_tcp_client_server start -s init stop

pause
