@echo off

set PATH=C:\OCaml\bin
set OS=Windows_NT

call build N
ocamlrun network_tcp_client_server.exe

pause
