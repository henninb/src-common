@echo off

set PATH=C:\Program^ Files^ (x86)\clisp-2.49
set OS=Windows_NT

clisp --quiet -i postgresql_connect.lsp

pause
