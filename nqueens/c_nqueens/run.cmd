@echo off

set OS=Windows_NT

call build N
if exist nqueens.exe (
    nqueens.exe
) else (
    if NOT exist nqueens.c (
        echo copy nqueens.
        copy "..\..\nqueens\c_nqueens\nqueens.c" "nqueens.c"
    )
)

pause
