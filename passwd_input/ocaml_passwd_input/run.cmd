@echo off

set PATH=C:\OCaml\bin
set OS=Windows_NT

call build N
ocamlrun passwd_input.exe

pause
